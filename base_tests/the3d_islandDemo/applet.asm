
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
d005001e:	f008 fe7d 	bl	d0058d1c <setbuf>
d0050022:	6833      	ldr	r3, [r6, #0]
d0050024:	2100      	movs	r1, #0
d0050026:	68d8      	ldr	r0, [r3, #12]
d0050028:	f008 fe78 	bl	d0058d1c <setbuf>
d005002c:	4629      	mov	r1, r5
d005002e:	4620      	mov	r0, r4
d0050030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050034:	f001 b906 	b.w	d0051244 <main>
d0050038:	d005af4c 	.word	0xd005af4c

d005003c <initMalloc>:
d005003c:	4902      	ldr	r1, [pc, #8]	; (d0050048 <initMalloc+0xc>)
d005003e:	4b03      	ldr	r3, [pc, #12]	; (d005004c <initMalloc+0x10>)
d0050040:	4a03      	ldr	r2, [pc, #12]	; (d0050050 <initMalloc+0x14>)
d0050042:	1a5b      	subs	r3, r3, r1
d0050044:	6013      	str	r3, [r2, #0]
d0050046:	4770      	bx	lr
d0050048:	d0148350 	.word	0xd0148350
d005004c:	d0600000 	.word	0xd0600000
d0050050:	d0140288 	.word	0xd0140288

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
d005009c:	f008 fb2a 	bl	d00586f4 <__errno>
d00500a0:	2209      	movs	r2, #9
d00500a2:	4603      	mov	r3, r0
d00500a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00500a8:	601a      	str	r2, [r3, #0]
d00500aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00500ac:	d005afc4 	.word	0xd005afc4
d00500b0:	2001f000 	.word	0x2001f000

d00500b4 <_read>:
d00500b4:	b508      	push	{r3, lr}
d00500b6:	f008 fb1d 	bl	d00586f4 <__errno>
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
d0050102:	f008 faf7 	bl	d00586f4 <__errno>
d0050106:	220c      	movs	r2, #12
d0050108:	4603      	mov	r3, r0
d005010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005010e:	601a      	str	r2, [r3, #0]
d0050110:	bd10      	pop	{r4, pc}
d0050112:	bf00      	nop
d0050114:	d005afc0 	.word	0xd005afc0
d0050118:	d0148350 	.word	0xd0148350
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
d0050170:	f008 fd06 	bl	d0058b80 <memcmp>
d0050174:	b950      	cbnz	r0, d005018c <LoadSFX+0x6c>
d0050176:	2204      	movs	r2, #4
d0050178:	492c      	ldr	r1, [pc, #176]	; (d005022c <LoadSFX+0x10c>)
d005017a:	a805      	add	r0, sp, #20
d005017c:	f008 fd00 	bl	d0058b80 <memcmp>
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
d00501b4:	f008 fcd4 	bl	d0058b60 <malloc>
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
d0050228:	d005a350 	.word	0xd005a350
d005022c:	d005a358 	.word	0xd005a358

d0050230 <sr_steer_camera_to_tangent>:
d0050230:	b510      	push	{r4, lr}
d0050232:	ed2d 8b06 	vpush	{d8-d10}
d0050236:	ee20 9a00 	vmul.f32	s18, s0, s0
d005023a:	ed9f 6a4e 	vldr	s12, [pc, #312]	; d0050374 <sr_steer_camera_to_tangent+0x144>
d005023e:	ee61 aa01 	vmul.f32	s21, s2, s2
d0050242:	4604      	mov	r4, r0
d0050244:	eeb0 8a61 	vmov.f32	s16, s3
d0050248:	b084      	sub	sp, #16
d005024a:	eef0 7a49 	vmov.f32	s15, s18
d005024e:	4608      	mov	r0, r1
d0050250:	eef0 8a42 	vmov.f32	s17, s4
d0050254:	eee0 7aa0 	vfma.f32	s15, s1, s1
d0050258:	ee77 7aaa 	vadd.f32	s15, s15, s21
d005025c:	eef4 7ac6 	vcmpe.f32	s15, s12
d0050260:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050264:	f240 8081 	bls.w	d005036a <sr_steer_camera_to_tangent+0x13a>
d0050268:	ed9f 6a43 	vldr	s12, [pc, #268]	; d0050378 <sr_steer_camera_to_tangent+0x148>
d005026c:	eef4 7ac6 	vcmpe.f32	s15, s12
d0050270:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050274:	d468      	bmi.n	d0050348 <sr_steer_camera_to_tangent+0x118>
d0050276:	ed9f 6a41 	vldr	s12, [pc, #260]	; d005037c <sr_steer_camera_to_tangent+0x14c>
d005027a:	eeb0 7a40 	vmov.f32	s14, s0
d005027e:	eeb0 aa60 	vmov.f32	s20, s1
d0050282:	eef4 7a46 	vcmp.f32	s15, s12
d0050286:	eef0 6a41 	vmov.f32	s13, s2
d005028a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005028e:	dc5b      	bgt.n	d0050348 <sr_steer_camera_to_tangent+0x118>
d0050290:	ee39 9a2a 	vadd.f32	s18, s18, s21
d0050294:	9000      	str	r0, [sp, #0]
d0050296:	eef0 0a66 	vmov.f32	s1, s13
d005029a:	eeb0 0a47 	vmov.f32	s0, s14
d005029e:	f009 fd1f 	bl	d0059ce0 <atan2f>
d00502a2:	eef1 0ac9 	vsqrt.f32	s1, s18
d00502a6:	eddf 7a36 	vldr	s15, [pc, #216]	; d0050380 <sr_steer_camera_to_tangent+0x150>
d00502aa:	eef0 9a40 	vmov.f32	s19, s0
d00502ae:	eeb1 0a4a 	vneg.f32	s0, s20
d00502b2:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d00502b6:	f009 fd13 	bl	d0059ce0 <atan2f>
d00502ba:	eef1 0a40 	vneg.f32	s1, s0
d00502be:	9800      	ldr	r0, [sp, #0]
d00502c0:	ed94 7a0e 	vldr	s14, [r4, #56]	; 0x38
d00502c4:	edd4 7a10 	vldr	s15, [r4, #64]	; 0x40
d00502c8:	ee28 7a87 	vmul.f32	s14, s17, s14
d00502cc:	ee38 6a67 	vsub.f32	s12, s16, s15
d00502d0:	eef1 6a47 	vneg.f32	s13, s14
d00502d4:	eef4 6ac6 	vcmpe.f32	s13, s12
d00502d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502dc:	dc01      	bgt.n	d00502e2 <sr_steer_camera_to_tangent+0xb2>
d00502de:	fec6 6a47 	vminnm.f32	s13, s12, s14
d00502e2:	eeb0 8ac8 	vabs.f32	s16, s16
d00502e6:	ed9f 7a26 	vldr	s14, [pc, #152]	; d0050380 <sr_steer_camera_to_tangent+0x150>
d00502ea:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00502ee:	eeb4 8ac7 	vcmpe.f32	s16, s14
d00502f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502f6:	d50f      	bpl.n	d0050318 <sr_steer_camera_to_tangent+0xe8>
d00502f8:	ed94 2a11 	vldr	s4, [r4, #68]	; 0x44
d00502fc:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0050300:	eddf 6a20 	vldr	s13, [pc, #128]	; d0050384 <sr_steer_camera_to_tangent+0x154>
d0050304:	ee28 2a82 	vmul.f32	s4, s17, s4
d0050308:	fe82 2a47 	vminnm.f32	s4, s4, s14
d005030c:	fe82 2a26 	vmaxnm.f32	s4, s4, s13
d0050310:	ee37 2a42 	vsub.f32	s4, s14, s4
d0050314:	ee67 7a82 	vmul.f32	s15, s15, s4
d0050318:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d005031c:	eeb1 7a41 	vneg.f32	s14, s2
d0050320:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0050324:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050328:	dc03      	bgt.n	d0050332 <sr_steer_camera_to_tangent+0x102>
d005032a:	fe81 7a67 	vminnm.f32	s14, s2, s15
d005032e:	eeb1 1a47 	vneg.f32	s2, s14
d0050332:	eeb0 0a69 	vmov.f32	s0, s19
d0050336:	ed84 7a10 	vstr	s14, [r4, #64]	; 0x40
d005033a:	b004      	add	sp, #16
d005033c:	ecbd 8b06 	vpop	{d8-d10}
d0050340:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0050344:	f004 be10 	b.w	d0054f68 <cameraRotate>
d0050348:	eeb1 7ae7 	vsqrt.f32	s14, s15
d005034c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0050350:	ee87 aa87 	vdiv.f32	s20, s15, s14
d0050354:	ee20 7a0a 	vmul.f32	s14, s0, s20
d0050358:	ee61 6a0a 	vmul.f32	s13, s2, s20
d005035c:	ee20 aa8a 	vmul.f32	s20, s1, s20
d0050360:	ee27 9a07 	vmul.f32	s18, s14, s14
d0050364:	ee66 aaa6 	vmul.f32	s21, s13, s13
d0050368:	e792      	b.n	d0050290 <sr_steer_camera_to_tangent+0x60>
d005036a:	eddf 0a06 	vldr	s1, [pc, #24]	; d0050384 <sr_steer_camera_to_tangent+0x154>
d005036e:	eef0 9a60 	vmov.f32	s19, s1
d0050372:	e7a5      	b.n	d00502c0 <sr_steer_camera_to_tangent+0x90>
d0050374:	358637bd 	.word	0x358637bd
d0050378:	3f7fbe77 	.word	0x3f7fbe77
d005037c:	3f8020c5 	.word	0x3f8020c5
d0050380:	38d1b717 	.word	0x38d1b717
d0050384:	00000000 	.word	0x00000000

d0050388 <sr_segment_dir>:
d0050388:	b088      	sub	sp, #32
d005038a:	2800      	cmp	r0, #0
d005038c:	d050      	beq.n	d0050430 <sr_segment_dir+0xa8>
d005038e:	6802      	ldr	r2, [r0, #0]
d0050390:	2a00      	cmp	r2, #0
d0050392:	d04d      	beq.n	d0050430 <sr_segment_dir+0xa8>
d0050394:	6843      	ldr	r3, [r0, #4]
d0050396:	2b01      	cmp	r3, #1
d0050398:	dd4a      	ble.n	d0050430 <sr_segment_dir+0xa8>
d005039a:	7c00      	ldrb	r0, [r0, #16]
d005039c:	2800      	cmp	r0, #0
d005039e:	d055      	beq.n	d005044c <sr_segment_dir+0xc4>
d00503a0:	2900      	cmp	r1, #0
d00503a2:	da01      	bge.n	d00503a8 <sr_segment_dir+0x20>
d00503a4:	18c9      	adds	r1, r1, r3
d00503a6:	d4fd      	bmi.n	d00503a4 <sr_segment_dir+0x1c>
d00503a8:	428b      	cmp	r3, r1
d00503aa:	dc02      	bgt.n	d00503b2 <sr_segment_dir+0x2a>
d00503ac:	1ac9      	subs	r1, r1, r3
d00503ae:	428b      	cmp	r3, r1
d00503b0:	ddfc      	ble.n	d00503ac <sr_segment_dir+0x24>
d00503b2:	1c48      	adds	r0, r1, #1
d00503b4:	4283      	cmp	r3, r0
d00503b6:	dd52      	ble.n	d005045e <sr_segment_dir+0xd6>
d00503b8:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d00503bc:	eb02 0380 	add.w	r3, r2, r0, lsl #2
d00503c0:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d00503c4:	ed93 7a01 	vldr	s14, [r3, #4]
d00503c8:	ed93 6a00 	vldr	s12, [r3]
d00503cc:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d00503d0:	edd3 6a02 	vldr	s13, [r3, #8]
d00503d4:	eddf 5a33 	vldr	s11, [pc, #204]	; d00504a4 <sr_segment_dir+0x11c>
d00503d8:	edd1 7a01 	vldr	s15, [r1, #4]
d00503dc:	ed91 5a00 	vldr	s10, [r1]
d00503e0:	ee37 7a67 	vsub.f32	s14, s14, s15
d00503e4:	edd1 7a02 	vldr	s15, [r1, #8]
d00503e8:	ee36 6a45 	vsub.f32	s12, s12, s10
d00503ec:	ee76 6ae7 	vsub.f32	s13, s13, s15
d00503f0:	ee67 7a07 	vmul.f32	s15, s14, s14
d00503f4:	eee6 7a06 	vfma.f32	s15, s12, s12
d00503f8:	eee6 7aa6 	vfma.f32	s15, s13, s13
d00503fc:	eef4 7ae5 	vcmpe.f32	s15, s11
d0050400:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050404:	d940      	bls.n	d0050488 <sr_segment_dir+0x100>
d0050406:	eddf 5a28 	vldr	s11, [pc, #160]	; d00504a8 <sr_segment_dir+0x120>
d005040a:	eef4 7ae5 	vcmpe.f32	s15, s11
d005040e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050412:	d426      	bmi.n	d0050462 <sr_segment_dir+0xda>
d0050414:	eddf 5a25 	vldr	s11, [pc, #148]	; d00504ac <sr_segment_dir+0x124>
d0050418:	eef4 7a65 	vcmp.f32	s15, s11
d005041c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050420:	dc1f      	bgt.n	d0050462 <sr_segment_dir+0xda>
d0050422:	ed8d 6a05 	vstr	s12, [sp, #20]
d0050426:	ed8d 7a06 	vstr	s14, [sp, #24]
d005042a:	edcd 6a07 	vstr	s13, [sp, #28]
d005042e:	e005      	b.n	d005043c <sr_segment_dir+0xb4>
d0050430:	2300      	movs	r3, #0
d0050432:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0050436:	9305      	str	r3, [sp, #20]
d0050438:	9207      	str	r2, [sp, #28]
d005043a:	9306      	str	r3, [sp, #24]
d005043c:	ed9d 0a05 	vldr	s0, [sp, #20]
d0050440:	eddd 0a06 	vldr	s1, [sp, #24]
d0050444:	ed9d 1a07 	vldr	s2, [sp, #28]
d0050448:	b008      	add	sp, #32
d005044a:	4770      	bx	lr
d005044c:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0050450:	1e58      	subs	r0, r3, #1
d0050452:	4288      	cmp	r0, r1
d0050454:	dc01      	bgt.n	d005045a <sr_segment_dir+0xd2>
d0050456:	1e99      	subs	r1, r3, #2
d0050458:	e7ae      	b.n	d00503b8 <sr_segment_dir+0x30>
d005045a:	1c48      	adds	r0, r1, #1
d005045c:	e7ac      	b.n	d00503b8 <sr_segment_dir+0x30>
d005045e:	4613      	mov	r3, r2
d0050460:	e7ae      	b.n	d00503c0 <sr_segment_dir+0x38>
d0050462:	eef1 5ae7 	vsqrt.f32	s11, s15
d0050466:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d005046a:	eec5 7a25 	vdiv.f32	s15, s10, s11
d005046e:	ee26 6a27 	vmul.f32	s12, s12, s15
d0050472:	ee27 7a27 	vmul.f32	s14, s14, s15
d0050476:	ee66 6aa7 	vmul.f32	s13, s13, s15
d005047a:	ed8d 6a05 	vstr	s12, [sp, #20]
d005047e:	ed8d 7a06 	vstr	s14, [sp, #24]
d0050482:	edcd 6a07 	vstr	s13, [sp, #28]
d0050486:	e7d9      	b.n	d005043c <sr_segment_dir+0xb4>
d0050488:	ed9f 7a09 	vldr	s14, [pc, #36]	; d00504b0 <sr_segment_dir+0x128>
d005048c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050490:	eeb0 6a47 	vmov.f32	s12, s14
d0050494:	ed8d 7a06 	vstr	s14, [sp, #24]
d0050498:	edcd 6a07 	vstr	s13, [sp, #28]
d005049c:	ed8d 6a05 	vstr	s12, [sp, #20]
d00504a0:	e7cc      	b.n	d005043c <sr_segment_dir+0xb4>
d00504a2:	bf00      	nop
d00504a4:	358637bd 	.word	0x358637bd
d00504a8:	3f7fbe77 	.word	0x3f7fbe77
d00504ac:	3f8020c5 	.word	0x3f8020c5
d00504b0:	00000000 	.word	0x00000000

d00504b4 <splineRailBuildTable>:
d00504b4:	2800      	cmp	r0, #0
d00504b6:	d05d      	beq.n	d0050574 <splineRailBuildTable+0xc0>
d00504b8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00504ba:	6807      	ldr	r7, [r0, #0]
d00504bc:	2f00      	cmp	r7, #0
d00504be:	d054      	beq.n	d005056a <splineRailBuildTable+0xb6>
d00504c0:	6846      	ldr	r6, [r0, #4]
d00504c2:	2e01      	cmp	r6, #1
d00504c4:	dd51      	ble.n	d005056a <splineRailBuildTable+0xb6>
d00504c6:	7c03      	ldrb	r3, [r0, #16]
d00504c8:	2b00      	cmp	r3, #0
d00504ca:	d04f      	beq.n	d005056c <splineRailBuildTable+0xb8>
d00504cc:	1c72      	adds	r2, r6, #1
d00504ce:	46b6      	mov	lr, r6
d00504d0:	f242 0154 	movw	r1, #8276	; 0x2054
d00504d4:	eddf 7a28 	vldr	s15, [pc, #160]	; d0050578 <splineRailBuildTable+0xc4>
d00504d8:	f1b3 0c00 	subs.w	ip, r3, #0
d00504dc:	f242 0458 	movw	r4, #8280	; 0x2058
d00504e0:	4401      	add	r1, r0
d00504e2:	6502      	str	r2, [r0, #80]	; 0x50
d00504e4:	edc0 7a15 	vstr	s15, [r0, #84]	; 0x54
d00504e8:	eef0 5a67 	vmov.f32	s11, s15
d00504ec:	bf18      	it	ne
d00504ee:	f04f 0c01 	movne.w	ip, #1
d00504f2:	4404      	add	r4, r0
d00504f4:	f107 0314 	add.w	r3, r7, #20
d00504f8:	f100 0558 	add.w	r5, r0, #88	; 0x58
d00504fc:	2200      	movs	r2, #0
d00504fe:	edc1 7a00 	vstr	s15, [r1]
d0050502:	e02a      	b.n	d005055a <splineRailBuildTable+0xa6>
d0050504:	f1bc 0f00 	cmp.w	ip, #0
d0050508:	d02b      	beq.n	d0050562 <splineRailBuildTable+0xae>
d005050a:	ed13 7a04 	vldr	s14, [r3, #-16]
d005050e:	4596      	cmp	lr, r2
d0050510:	edd1 7a01 	vldr	s15, [r1, #4]
d0050514:	f103 0314 	add.w	r3, r3, #20
d0050518:	ed13 6a0a 	vldr	s12, [r3, #-40]	; 0xffffffd8
d005051c:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0050520:	edd1 6a00 	vldr	s13, [r1]
d0050524:	ed91 7a02 	vldr	s14, [r1, #8]
d0050528:	ee76 6ac6 	vsub.f32	s13, s13, s12
d005052c:	ed13 6a08 	vldr	s12, [r3, #-32]	; 0xffffffe0
d0050530:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0050534:	ee37 7a46 	vsub.f32	s14, s14, s12
d0050538:	ee06 2a10 	vmov	s12, r2
d005053c:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0050540:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d0050544:	eca5 6a01 	vstmia	r5!, {s12}
d0050548:	eee7 7a07 	vfma.f32	s15, s14, s14
d005054c:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0050550:	ee75 5a87 	vadd.f32	s11, s11, s14
d0050554:	ece4 5a01 	vstmia	r4!, {s11}
d0050558:	d005      	beq.n	d0050566 <splineRailBuildTable+0xb2>
d005055a:	3201      	adds	r2, #1
d005055c:	4639      	mov	r1, r7
d005055e:	4296      	cmp	r6, r2
d0050560:	ddd0      	ble.n	d0050504 <splineRailBuildTable+0x50>
d0050562:	4619      	mov	r1, r3
d0050564:	e7d1      	b.n	d005050a <splineRailBuildTable+0x56>
d0050566:	edc0 5a13 	vstr	s11, [r0, #76]	; 0x4c
d005056a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005056c:	f106 3eff 	add.w	lr, r6, #4294967295	; 0xffffffff
d0050570:	4632      	mov	r2, r6
d0050572:	e7ad      	b.n	d00504d0 <splineRailBuildTable+0x1c>
d0050574:	4770      	bx	lr
d0050576:	bf00      	nop
d0050578:	00000000 	.word	0x00000000

d005057c <splineRailDistanceToT>:
d005057c:	2800      	cmp	r0, #0
d005057e:	d053      	beq.n	d0050628 <splineRailDistanceToT+0xac>
d0050580:	b430      	push	{r4, r5}
d0050582:	6844      	ldr	r4, [r0, #4]
d0050584:	2c01      	cmp	r4, #1
d0050586:	dd4b      	ble.n	d0050620 <splineRailDistanceToT+0xa4>
d0050588:	7c03      	ldrb	r3, [r0, #16]
d005058a:	6d05      	ldr	r5, [r0, #80]	; 0x50
d005058c:	b3c3      	cbz	r3, d0050600 <splineRailDistanceToT+0x84>
d005058e:	2d01      	cmp	r5, #1
d0050590:	dd46      	ble.n	d0050620 <splineRailDistanceToT+0xa4>
d0050592:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050596:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d005059a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005059e:	d506      	bpl.n	d00505ae <splineRailDistanceToT+0x32>
d00505a0:	ee30 0a27 	vadd.f32	s0, s0, s15
d00505a4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00505a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505ac:	d4f8      	bmi.n	d00505a0 <splineRailDistanceToT+0x24>
d00505ae:	eef4 7ac0 	vcmpe.f32	s15, s0
d00505b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505b6:	d806      	bhi.n	d00505c6 <splineRailDistanceToT+0x4a>
d00505b8:	ee30 0a67 	vsub.f32	s0, s0, s15
d00505bc:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00505c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505c4:	daf8      	bge.n	d00505b8 <splineRailDistanceToT+0x3c>
d00505c6:	f242 0154 	movw	r1, #8276	; 0x2054
d00505ca:	f242 0258 	movw	r2, #8280	; 0x2058
d00505ce:	2300      	movs	r3, #0
d00505d0:	4401      	add	r1, r0
d00505d2:	4402      	add	r2, r0
d00505d4:	ed91 7a00 	vldr	s14, [r1]
d00505d8:	eef0 7a47 	vmov.f32	s15, s14
d00505dc:	ecb2 7a01 	vldmia	r2!, {s14}
d00505e0:	1c98      	adds	r0, r3, #2
d00505e2:	1c59      	adds	r1, r3, #1
d00505e4:	eeb4 0ac7 	vcmpe.f32	s0, s14
d00505e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505ec:	d91f      	bls.n	d005062e <splineRailDistanceToT+0xb2>
d00505ee:	4285      	cmp	r5, r0
d00505f0:	460b      	mov	r3, r1
d00505f2:	dcf1      	bgt.n	d00505d8 <splineRailDistanceToT+0x5c>
d00505f4:	ee07 4a90 	vmov	s15, r4
d00505f8:	bc30      	pop	{r4, r5}
d00505fa:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
d00505fe:	4770      	bx	lr
d0050600:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050604:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050608:	d90a      	bls.n	d0050620 <splineRailDistanceToT+0xa4>
d005060a:	2d01      	cmp	r5, #1
d005060c:	dd08      	ble.n	d0050620 <splineRailDistanceToT+0xa4>
d005060e:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d0050612:	3c01      	subs	r4, #1
d0050614:	eef4 7ac0 	vcmpe.f32	s15, s0
d0050618:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005061c:	d8d3      	bhi.n	d00505c6 <splineRailDistanceToT+0x4a>
d005061e:	e7e9      	b.n	d00505f4 <splineRailDistanceToT+0x78>
d0050620:	ed9f 0a0f 	vldr	s0, [pc, #60]	; d0050660 <splineRailDistanceToT+0xe4>
d0050624:	bc30      	pop	{r4, r5}
d0050626:	4770      	bx	lr
d0050628:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0050660 <splineRailDistanceToT+0xe4>
d005062c:	4770      	bx	lr
d005062e:	ee37 7a67 	vsub.f32	s14, s14, s15
d0050632:	eddf 6a0c 	vldr	s13, [pc, #48]	; d0050664 <splineRailDistanceToT+0xe8>
d0050636:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005063a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005063e:	dd0b      	ble.n	d0050658 <splineRailDistanceToT+0xdc>
d0050640:	ee70 7a67 	vsub.f32	s15, s0, s15
d0050644:	eec7 6a87 	vdiv.f32	s13, s15, s14
d0050648:	ee07 3a90 	vmov	s15, r3
d005064c:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
d0050650:	bc30      	pop	{r4, r5}
d0050652:	ee30 0a26 	vadd.f32	s0, s0, s13
d0050656:	4770      	bx	lr
d0050658:	eddf 6a01 	vldr	s13, [pc, #4]	; d0050660 <splineRailDistanceToT+0xe4>
d005065c:	e7f4      	b.n	d0050648 <splineRailDistanceToT+0xcc>
d005065e:	bf00      	nop
d0050660:	00000000 	.word	0x00000000
d0050664:	358637bd 	.word	0x358637bd

d0050668 <splineRailSamplePos>:
d0050668:	b088      	sub	sp, #32
d005066a:	2800      	cmp	r0, #0
d005066c:	d049      	beq.n	d0050702 <splineRailSamplePos+0x9a>
d005066e:	6803      	ldr	r3, [r0, #0]
d0050670:	2b00      	cmp	r3, #0
d0050672:	d046      	beq.n	d0050702 <splineRailSamplePos+0x9a>
d0050674:	6842      	ldr	r2, [r0, #4]
d0050676:	2a00      	cmp	r2, #0
d0050678:	dd43      	ble.n	d0050702 <splineRailSamplePos+0x9a>
d005067a:	2a01      	cmp	r2, #1
d005067c:	d052      	beq.n	d0050724 <splineRailSamplePos+0xbc>
d005067e:	7c01      	ldrb	r1, [r0, #16]
d0050680:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050684:	2900      	cmp	r1, #0
d0050686:	d153      	bne.n	d0050730 <splineRailSamplePos+0xc8>
d0050688:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005068c:	d94a      	bls.n	d0050724 <splineRailSamplePos+0xbc>
d005068e:	1e51      	subs	r1, r2, #1
d0050690:	ee07 1a90 	vmov	s15, r1
d0050694:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050698:	eef4 7ac0 	vcmpe.f32	s15, s0
d005069c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00506a0:	d93b      	bls.n	d005071a <splineRailSamplePos+0xb2>
d00506a2:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d00506a6:	ee17 0a90 	vmov	r0, s15
d00506aa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00506ae:	1c42      	adds	r2, r0, #1
d00506b0:	ee30 0a67 	vsub.f32	s0, s0, s15
d00506b4:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d00506b8:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d00506bc:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d00506c0:	ed92 5a00 	vldr	s10, [r2]
d00506c4:	edd2 5a01 	vldr	s11, [r2, #4]
d00506c8:	eb03 0380 	add.w	r3, r3, r0, lsl #2
d00506cc:	ed92 6a02 	vldr	s12, [r2, #8]
d00506d0:	edd3 6a00 	vldr	s13, [r3]
d00506d4:	ed93 7a01 	vldr	s14, [r3, #4]
d00506d8:	edd3 7a02 	vldr	s15, [r3, #8]
d00506dc:	ee35 5a66 	vsub.f32	s10, s10, s13
d00506e0:	ee75 5ac7 	vsub.f32	s11, s11, s14
d00506e4:	ee36 6a67 	vsub.f32	s12, s12, s15
d00506e8:	eee5 6a00 	vfma.f32	s13, s10, s0
d00506ec:	eea5 7a80 	vfma.f32	s14, s11, s0
d00506f0:	eee6 7a00 	vfma.f32	s15, s12, s0
d00506f4:	edcd 6a05 	vstr	s13, [sp, #20]
d00506f8:	ed8d 7a06 	vstr	s14, [sp, #24]
d00506fc:	edcd 7a07 	vstr	s15, [sp, #28]
d0050700:	e003      	b.n	d005070a <splineRailSamplePos+0xa2>
d0050702:	2300      	movs	r3, #0
d0050704:	9305      	str	r3, [sp, #20]
d0050706:	9306      	str	r3, [sp, #24]
d0050708:	9307      	str	r3, [sp, #28]
d005070a:	ed9d 0a05 	vldr	s0, [sp, #20]
d005070e:	eddd 0a06 	vldr	s1, [sp, #24]
d0050712:	ed9d 1a07 	vldr	s2, [sp, #28]
d0050716:	b008      	add	sp, #32
d0050718:	4770      	bx	lr
d005071a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d005071e:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0050722:	3b14      	subs	r3, #20
d0050724:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050728:	ab08      	add	r3, sp, #32
d005072a:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005072e:	e7ec      	b.n	d005070a <splineRailSamplePos+0xa2>
d0050730:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050734:	d528      	bpl.n	d0050788 <splineRailSamplePos+0x120>
d0050736:	ee07 2a90 	vmov	s15, r2
d005073a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005073e:	ee30 0a27 	vadd.f32	s0, s0, s15
d0050742:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050746:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005074a:	d4f8      	bmi.n	d005073e <splineRailSamplePos+0xd6>
d005074c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050750:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050754:	db06      	blt.n	d0050764 <splineRailSamplePos+0xfc>
d0050756:	ee30 0a67 	vsub.f32	s0, s0, s15
d005075a:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005075e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050762:	daf8      	bge.n	d0050756 <splineRailSamplePos+0xee>
d0050764:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d0050768:	ee17 0a90 	vmov	r0, s15
d005076c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050770:	1c41      	adds	r1, r0, #1
d0050772:	ee30 0a67 	vsub.f32	s0, s0, s15
d0050776:	428a      	cmp	r2, r1
d0050778:	dc01      	bgt.n	d005077e <splineRailSamplePos+0x116>
d005077a:	461a      	mov	r2, r3
d005077c:	e79e      	b.n	d00506bc <splineRailSamplePos+0x54>
d005077e:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0050782:	eb03 0281 	add.w	r2, r3, r1, lsl #2
d0050786:	e799      	b.n	d00506bc <splineRailSamplePos+0x54>
d0050788:	ee07 2a90 	vmov	s15, r2
d005078c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050790:	e7dc      	b.n	d005074c <splineRailSamplePos+0xe4>
d0050792:	bf00      	nop

d0050794 <splineRailSampleTangent>:
d0050794:	b510      	push	{r4, lr}
d0050796:	b08a      	sub	sp, #40	; 0x28
d0050798:	2800      	cmp	r0, #0
d005079a:	f000 8097 	beq.w	d00508cc <splineRailSampleTangent+0x138>
d005079e:	6803      	ldr	r3, [r0, #0]
d00507a0:	4604      	mov	r4, r0
d00507a2:	2b00      	cmp	r3, #0
d00507a4:	f000 8092 	beq.w	d00508cc <splineRailSampleTangent+0x138>
d00507a8:	6843      	ldr	r3, [r0, #4]
d00507aa:	2b01      	cmp	r3, #1
d00507ac:	f340 80a9 	ble.w	d0050902 <splineRailSampleTangent+0x16e>
d00507b0:	7c02      	ldrb	r2, [r0, #16]
d00507b2:	2a00      	cmp	r2, #0
d00507b4:	f000 8091 	beq.w	d00508da <splineRailSampleTangent+0x146>
d00507b8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00507bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00507c0:	f140 80ba 	bpl.w	d0050938 <splineRailSampleTangent+0x1a4>
d00507c4:	ee07 3a90 	vmov	s15, r3
d00507c8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00507cc:	ee30 0a27 	vadd.f32	s0, s0, s15
d00507d0:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00507d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00507d8:	d4f8      	bmi.n	d00507cc <splineRailSampleTangent+0x38>
d00507da:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00507de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00507e2:	db06      	blt.n	d00507f2 <splineRailSampleTangent+0x5e>
d00507e4:	ee30 0a67 	vsub.f32	s0, s0, s15
d00507e8:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00507ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00507f0:	daf8      	bge.n	d00507e4 <splineRailSampleTangent+0x50>
d00507f2:	eebd 3ac0 	vcvt.s32.f32	s6, s0
d00507f6:	4620      	mov	r0, r4
d00507f8:	eef8 4ac3 	vcvt.f32.s32	s9, s6
d00507fc:	ee13 1a10 	vmov	r1, s6
d0050800:	ee70 4a64 	vsub.f32	s9, s0, s9
d0050804:	f7ff fdc0 	bl	d0050388 <sr_segment_dir>
d0050808:	ee13 1a10 	vmov	r1, s6
d005080c:	4620      	mov	r0, r4
d005080e:	eeb0 3a40 	vmov.f32	s6, s0
d0050812:	3101      	adds	r1, #1
d0050814:	eeb0 4a60 	vmov.f32	s8, s1
d0050818:	eef0 3a41 	vmov.f32	s7, s2
d005081c:	f7ff fdb4 	bl	d0050388 <sr_segment_dir>
d0050820:	eddf 7a48 	vldr	s15, [pc, #288]	; d0050944 <splineRailSampleTangent+0x1b0>
d0050824:	eeb0 7a40 	vmov.f32	s14, s0
d0050828:	eef4 4ae7 	vcmpe.f32	s9, s15
d005082c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050830:	d93e      	bls.n	d00508b0 <splineRailSampleTangent+0x11c>
d0050832:	ee74 7ae7 	vsub.f32	s15, s9, s15
d0050836:	ed9f 0a44 	vldr	s0, [pc, #272]	; d0050948 <splineRailSampleTangent+0x1b4>
d005083a:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d005083e:	eddf 5a43 	vldr	s11, [pc, #268]	; d005094c <splineRailSampleTangent+0x1b8>
d0050842:	eef0 4a00 	vmov.f32	s9, #0	; 0x40000000  2.0
d0050846:	ed9f 5a42 	vldr	s10, [pc, #264]	; d0050950 <splineRailSampleTangent+0x1bc>
d005084a:	ee67 7a80 	vmul.f32	s15, s15, s0
d005084e:	eef0 6a08 	vmov.f32	s13, #8	; 0x40400000  3.0
d0050852:	ee70 0ac4 	vsub.f32	s1, s1, s8
d0050856:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d005085a:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d005085e:	eee7 6ae4 	vfms.f32	s13, s15, s9
d0050862:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0050866:	ee37 7a43 	vsub.f32	s14, s14, s6
d005086a:	ee31 1a63 	vsub.f32	s2, s2, s7
d005086e:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0050872:	eea7 4aa0 	vfma.f32	s8, s15, s1
d0050876:	eea7 3a87 	vfma.f32	s6, s15, s14
d005087a:	eee7 3a81 	vfma.f32	s7, s15, s2
d005087e:	ee64 7a04 	vmul.f32	s15, s8, s8
d0050882:	eee3 7a03 	vfma.f32	s15, s6, s6
d0050886:	eee3 7aa3 	vfma.f32	s15, s7, s7
d005088a:	eef4 7ac5 	vcmpe.f32	s15, s10
d005088e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050892:	d93d      	bls.n	d0050910 <splineRailSampleTangent+0x17c>
d0050894:	ed9f 7a2f 	vldr	s14, [pc, #188]	; d0050954 <splineRailSampleTangent+0x1c0>
d0050898:	eef4 7ac7 	vcmpe.f32	s15, s14
d005089c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508a0:	d43d      	bmi.n	d005091e <splineRailSampleTangent+0x18a>
d00508a2:	ed9f 7a2d 	vldr	s14, [pc, #180]	; d0050958 <splineRailSampleTangent+0x1c4>
d00508a6:	eef4 7a47 	vcmp.f32	s15, s14
d00508aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508ae:	dc36      	bgt.n	d005091e <splineRailSampleTangent+0x18a>
d00508b0:	ed8d 3a07 	vstr	s6, [sp, #28]
d00508b4:	ed8d 4a08 	vstr	s8, [sp, #32]
d00508b8:	edcd 3a09 	vstr	s7, [sp, #36]	; 0x24
d00508bc:	ed9d 0a07 	vldr	s0, [sp, #28]
d00508c0:	eddd 0a08 	vldr	s1, [sp, #32]
d00508c4:	ed9d 1a09 	vldr	s2, [sp, #36]	; 0x24
d00508c8:	b00a      	add	sp, #40	; 0x28
d00508ca:	bd10      	pop	{r4, pc}
d00508cc:	2300      	movs	r3, #0
d00508ce:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00508d2:	9307      	str	r3, [sp, #28]
d00508d4:	9209      	str	r2, [sp, #36]	; 0x24
d00508d6:	9308      	str	r3, [sp, #32]
d00508d8:	e7f0      	b.n	d00508bc <splineRailSampleTangent+0x128>
d00508da:	3b01      	subs	r3, #1
d00508dc:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d005094c <splineRailSampleTangent+0x1b8>
d00508e0:	ee07 3a90 	vmov	s15, r3
d00508e4:	fe80 0a07 	vmaxnm.f32	s0, s0, s14
d00508e8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00508ec:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00508f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508f4:	f6ff af7d 	blt.w	d00507f2 <splineRailSampleTangent+0x5e>
d00508f8:	ed9f 0a18 	vldr	s0, [pc, #96]	; d005095c <splineRailSampleTangent+0x1c8>
d00508fc:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0050900:	e777      	b.n	d00507f2 <splineRailSampleTangent+0x5e>
d0050902:	ed9f 4a12 	vldr	s8, [pc, #72]	; d005094c <splineRailSampleTangent+0x1b8>
d0050906:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d005090a:	eeb0 3a44 	vmov.f32	s6, s8
d005090e:	e7cf      	b.n	d00508b0 <splineRailSampleTangent+0x11c>
d0050910:	eeb0 4a65 	vmov.f32	s8, s11
d0050914:	eef0 3a46 	vmov.f32	s7, s12
d0050918:	eeb0 3a65 	vmov.f32	s6, s11
d005091c:	e7c8      	b.n	d00508b0 <splineRailSampleTangent+0x11c>
d005091e:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0050922:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050926:	eec6 7a87 	vdiv.f32	s15, s13, s14
d005092a:	ee23 3a27 	vmul.f32	s6, s6, s15
d005092e:	ee24 4a27 	vmul.f32	s8, s8, s15
d0050932:	ee63 3aa7 	vmul.f32	s7, s7, s15
d0050936:	e7bb      	b.n	d00508b0 <splineRailSampleTangent+0x11c>
d0050938:	ee07 3a90 	vmov	s15, r3
d005093c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050940:	e74b      	b.n	d00507da <splineRailSampleTangent+0x46>
d0050942:	bf00      	nop
d0050944:	3f333333 	.word	0x3f333333
d0050948:	40555555 	.word	0x40555555
d005094c:	00000000 	.word	0x00000000
d0050950:	358637bd 	.word	0x358637bd
d0050954:	3f7fbe77 	.word	0x3f7fbe77
d0050958:	3f8020c5 	.word	0x3f8020c5
d005095c:	38d1b717 	.word	0x38d1b717

d0050960 <splineRailInit>:
d0050960:	b338      	cbz	r0, d00509b2 <splineRailInit+0x52>
d0050962:	3b00      	subs	r3, #0
d0050964:	6001      	str	r1, [r0, #0]
d0050966:	f04f 4181 	mov.w	r1, #1082130432	; 0x40800000
d005096a:	6042      	str	r2, [r0, #4]
d005096c:	bf18      	it	ne
d005096e:	2301      	movne	r3, #1
d0050970:	2200      	movs	r2, #0
d0050972:	6381      	str	r1, [r0, #56]	; 0x38
d0050974:	7403      	strb	r3, [r0, #16]
d0050976:	2300      	movs	r3, #0
d0050978:	490e      	ldr	r1, [pc, #56]	; (d00509b4 <splineRailInit+0x54>)
d005097a:	ed80 0a03 	vstr	s0, [r0, #12]
d005097e:	6083      	str	r3, [r0, #8]
d0050980:	6143      	str	r3, [r0, #20]
d0050982:	6183      	str	r3, [r0, #24]
d0050984:	61c3      	str	r3, [r0, #28]
d0050986:	6243      	str	r3, [r0, #36]	; 0x24
d0050988:	6403      	str	r3, [r0, #64]	; 0x40
d005098a:	6483      	str	r3, [r0, #72]	; 0x48
d005098c:	64c3      	str	r3, [r0, #76]	; 0x4c
d005098e:	f880 2020 	strb.w	r2, [r0, #32]
d0050992:	6502      	str	r2, [r0, #80]	; 0x50
d0050994:	63c1      	str	r1, [r0, #60]	; 0x3c
d0050996:	b4f0      	push	{r4, r5, r6, r7}
d0050998:	4e07      	ldr	r6, [pc, #28]	; (d00509b8 <splineRailInit+0x58>)
d005099a:	f04f 4580 	mov.w	r5, #1073741824	; 0x40000000
d005099e:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00509a2:	62c6      	str	r6, [r0, #44]	; 0x2c
d00509a4:	6306      	str	r6, [r0, #48]	; 0x30
d00509a6:	6345      	str	r5, [r0, #52]	; 0x34
d00509a8:	6445      	str	r5, [r0, #68]	; 0x44
d00509aa:	6287      	str	r7, [r0, #40]	; 0x28
d00509ac:	bcf0      	pop	{r4, r5, r6, r7}
d00509ae:	f7ff bd81 	b.w	d00504b4 <splineRailBuildTable>
d00509b2:	4770      	bx	lr
d00509b4:	3f4ccccd 	.word	0x3f4ccccd
d00509b8:	40200000 	.word	0x40200000

d00509bc <splineRailSetTuning>:
d00509bc:	b128      	cbz	r0, d00509ca <splineRailSetTuning+0xe>
d00509be:	ed80 0a0b 	vstr	s0, [r0, #44]	; 0x2c
d00509c2:	edc0 0a0c 	vstr	s1, [r0, #48]	; 0x30
d00509c6:	ed80 1a11 	vstr	s2, [r0, #68]	; 0x44
d00509ca:	4770      	bx	lr

d00509cc <splineRailSetBanking>:
d00509cc:	b128      	cbz	r0, d00509da <splineRailSetBanking+0xe>
d00509ce:	ed80 0a0d 	vstr	s0, [r0, #52]	; 0x34
d00509d2:	edc0 0a0e 	vstr	s1, [r0, #56]	; 0x38
d00509d6:	ed80 1a0f 	vstr	s2, [r0, #60]	; 0x3c
d00509da:	4770      	bx	lr

d00509dc <splineRailUpdate>:
d00509dc:	2800      	cmp	r0, #0
d00509de:	f000 8128 	beq.w	d0050c32 <splineRailUpdate+0x256>
d00509e2:	b5f0      	push	{r4, r5, r6, r7, lr}
d00509e4:	460d      	mov	r5, r1
d00509e6:	b08d      	sub	sp, #52	; 0x34
d00509e8:	2900      	cmp	r1, #0
d00509ea:	f000 8120 	beq.w	d0050c2e <splineRailUpdate+0x252>
d00509ee:	6807      	ldr	r7, [r0, #0]
d00509f0:	4604      	mov	r4, r0
d00509f2:	2f00      	cmp	r7, #0
d00509f4:	f000 811b 	beq.w	d0050c2e <splineRailUpdate+0x252>
d00509f8:	6846      	ldr	r6, [r0, #4]
d00509fa:	2e01      	cmp	r6, #1
d00509fc:	f340 8117 	ble.w	d0050c2e <splineRailUpdate+0x252>
d0050a00:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050a04:	eeb0 2a40 	vmov.f32	s4, s0
d0050a08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a0c:	f240 810f 	bls.w	d0050c2e <splineRailUpdate+0x252>
d0050a10:	6d03      	ldr	r3, [r0, #80]	; 0x50
d0050a12:	2b01      	cmp	r3, #1
d0050a14:	f340 810b 	ble.w	d0050c2e <splineRailUpdate+0x252>
d0050a18:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d0050a1c:	ed9f 7adc 	vldr	s14, [pc, #880]	; d0050d90 <splineRailUpdate+0x3b4>
d0050a20:	eef4 7ac7 	vcmpe.f32	s15, s14
d0050a24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a28:	f240 8101 	bls.w	d0050c2e <splineRailUpdate+0x252>
d0050a2c:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0050a30:	2300      	movs	r3, #0
d0050a32:	ed90 6a02 	vldr	s12, [r0, #8]
d0050a36:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0050a3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a3e:	f340 80f9 	ble.w	d0050c34 <splineRailUpdate+0x258>
d0050a42:	ee37 7a40 	vsub.f32	s14, s14, s0
d0050a46:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0050a4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a4e:	f100 8115 	bmi.w	d0050c7c <splineRailUpdate+0x2a0>
d0050a52:	eeb0 0a46 	vmov.f32	s0, s12
d0050a56:	ed80 7a09 	vstr	s14, [r0, #36]	; 0x24
d0050a5a:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d0050a5e:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d0050a62:	ee16 2a10 	vmov	r2, s12
d0050a66:	ee17 3a90 	vmov	r3, s15
d0050a6a:	429a      	cmp	r2, r3
d0050a6c:	f040 814b 	bne.w	d0050d06 <splineRailUpdate+0x32a>
d0050a70:	4620      	mov	r0, r4
d0050a72:	f7ff fdf9 	bl	d0050668 <splineRailSamplePos>
d0050a76:	eef0 7a40 	vmov.f32	s15, s0
d0050a7a:	4620      	mov	r0, r4
d0050a7c:	ed94 0a02 	vldr	s0, [r4, #8]
d0050a80:	edcd 0a01 	vstr	s1, [sp, #4]
d0050a84:	edcd 7a00 	vstr	s15, [sp]
d0050a88:	ed8d 1a02 	vstr	s2, [sp, #8]
d0050a8c:	f7ff fe82 	bl	d0050794 <splineRailSampleTangent>
d0050a90:	ee20 7aa0 	vmul.f32	s14, s1, s1
d0050a94:	eddf 6abf 	vldr	s13, [pc, #764]	; d0050d94 <splineRailUpdate+0x3b8>
d0050a98:	eef0 7a60 	vmov.f32	s15, s1
d0050a9c:	edcd 0a07 	vstr	s1, [sp, #28]
d0050aa0:	eef0 2a41 	vmov.f32	s5, s2
d0050aa4:	ed8d 0a06 	vstr	s0, [sp, #24]
d0050aa8:	eea0 7a00 	vfma.f32	s14, s0, s0
d0050aac:	ed8d 1a08 	vstr	s2, [sp, #32]
d0050ab0:	eef0 1a40 	vmov.f32	s3, s0
d0050ab4:	eea1 7a01 	vfma.f32	s14, s2, s2
d0050ab8:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050abc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ac0:	f240 8102 	bls.w	d0050cc8 <splineRailUpdate+0x2ec>
d0050ac4:	eddf 6ab4 	vldr	s13, [pc, #720]	; d0050d98 <splineRailUpdate+0x3bc>
d0050ac8:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050acc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ad0:	f100 810c 	bmi.w	d0050cec <splineRailUpdate+0x310>
d0050ad4:	eddf 6ab1 	vldr	s13, [pc, #708]	; d0050d9c <splineRailUpdate+0x3c0>
d0050ad8:	eeb4 7a66 	vcmp.f32	s14, s13
d0050adc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ae0:	f300 8104 	bgt.w	d0050cec <splineRailUpdate+0x310>
d0050ae4:	ed9f 7aae 	vldr	s14, [pc, #696]	; d0050da0 <splineRailUpdate+0x3c4>
d0050ae8:	4620      	mov	r0, r4
d0050aea:	ed94 0a02 	vldr	s0, [r4, #8]
d0050aee:	edcd 7a04 	vstr	s15, [sp, #16]
d0050af2:	ee30 0a07 	vadd.f32	s0, s0, s14
d0050af6:	edcd 1a03 	vstr	s3, [sp, #12]
d0050afa:	edcd 2a05 	vstr	s5, [sp, #20]
d0050afe:	f7ff fe49 	bl	d0050794 <splineRailSampleTangent>
d0050b02:	ee20 7aa0 	vmul.f32	s14, s1, s1
d0050b06:	eddf 6aa3 	vldr	s13, [pc, #652]	; d0050d94 <splineRailUpdate+0x3b8>
d0050b0a:	eef0 7a41 	vmov.f32	s15, s2
d0050b0e:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d0050b12:	eeb0 5a40 	vmov.f32	s10, s0
d0050b16:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0050b1a:	eea0 7a00 	vfma.f32	s14, s0, s0
d0050b1e:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d0050b22:	eea1 7a01 	vfma.f32	s14, s2, s2
d0050b26:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050b2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b2e:	f240 80c6 	bls.w	d0050cbe <splineRailUpdate+0x2e2>
d0050b32:	eddf 6a99 	vldr	s13, [pc, #612]	; d0050d98 <splineRailUpdate+0x3bc>
d0050b36:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050b3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b3e:	f100 80ca 	bmi.w	d0050cd6 <splineRailUpdate+0x2fa>
d0050b42:	eddf 6a96 	vldr	s13, [pc, #600]	; d0050d9c <splineRailUpdate+0x3c0>
d0050b46:	eeb4 7a66 	vcmp.f32	s14, s13
d0050b4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b4e:	f300 80c2 	bgt.w	d0050cd6 <splineRailUpdate+0x2fa>
d0050b52:	f894 3020 	ldrb.w	r3, [r4, #32]
d0050b56:	2b00      	cmp	r3, #0
d0050b58:	f000 80f7 	beq.w	d0050d4a <splineRailUpdate+0x36e>
d0050b5c:	ed95 7a00 	vldr	s14, [r5]
d0050b60:	4626      	mov	r6, r4
d0050b62:	ed9d 6a00 	vldr	s12, [sp]
d0050b66:	ee61 1aa7 	vmul.f32	s3, s3, s15
d0050b6a:	edd5 6a01 	vldr	s13, [r5, #4]
d0050b6e:	ee62 7a85 	vmul.f32	s15, s5, s10
d0050b72:	ee36 6a07 	vadd.f32	s12, s12, s14
d0050b76:	ed94 7a02 	vldr	s14, [r4, #8]
d0050b7a:	eddd 5a01 	vldr	s11, [sp, #4]
d0050b7e:	3614      	adds	r6, #20
d0050b80:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0050b84:	ed95 5a02 	vldr	s10, [r5, #8]
d0050b88:	ee75 5aa6 	vadd.f32	s11, s11, s13
d0050b8c:	eddd 6a02 	vldr	s13, [sp, #8]
d0050b90:	6867      	ldr	r7, [r4, #4]
d0050b92:	466a      	mov	r2, sp
d0050b94:	ee17 3a10 	vmov	r3, s14
d0050b98:	ee76 6a85 	vadd.f32	s13, s13, s10
d0050b9c:	edd4 4a06 	vldr	s9, [r4, #24]
d0050ba0:	ee77 7ae1 	vsub.f32	s15, s15, s3
d0050ba4:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0050ba8:	ed96 5a00 	vldr	s10, [r6]
d0050bac:	ed94 7a07 	vldr	s14, [r4, #28]
d0050bb0:	ee75 5ae4 	vsub.f32	s11, s11, s9
d0050bb4:	429f      	cmp	r7, r3
d0050bb6:	ee36 6a45 	vsub.f32	s12, s12, s10
d0050bba:	ee36 7ac7 	vsub.f32	s14, s13, s14
d0050bbe:	edd4 2a0d 	vldr	s5, [r4, #52]	; 0x34
d0050bc2:	bfd8      	it	le
d0050bc4:	f107 33ff 	addle.w	r3, r7, #4294967295	; 0xffffffff
d0050bc8:	edc5 5a01 	vstr	s11, [r5, #4]
d0050bcc:	ed85 6a00 	vstr	s12, [r5]
d0050bd0:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0050bd4:	ed85 7a02 	vstr	s14, [r5, #8]
d0050bd8:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0050bdc:	edd4 6a0f 	vldr	s13, [r4, #60]	; 0x3c
d0050be0:	ca07      	ldmia	r2, {r0, r1, r2}
d0050be2:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050be6:	6822      	ldr	r2, [r4, #0]
d0050be8:	eef1 1a66 	vneg.f32	s3, s13
d0050bec:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0050bf0:	ed93 7a04 	vldr	s14, [r3, #16]
d0050bf4:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0050bf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050bfc:	bfd8      	it	le
d0050bfe:	eeb7 7a00 	vmovle.f32	s14, #112	; 0x3f800000  1.0
d0050c02:	ee67 7a87 	vmul.f32	s15, s15, s14
d0050c06:	eef4 1ae7 	vcmpe.f32	s3, s15
d0050c0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c0e:	dc01      	bgt.n	d0050c14 <splineRailUpdate+0x238>
d0050c10:	fec6 1ae7 	vminnm.f32	s3, s13, s15
d0050c14:	4629      	mov	r1, r5
d0050c16:	4620      	mov	r0, r4
d0050c18:	ed9d 0a03 	vldr	s0, [sp, #12]
d0050c1c:	eddd 0a04 	vldr	s1, [sp, #16]
d0050c20:	ed9d 1a05 	vldr	s2, [sp, #20]
d0050c24:	b00d      	add	sp, #52	; 0x34
d0050c26:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0050c2a:	f7ff bb01 	b.w	d0050230 <sr_steer_camera_to_tangent>
d0050c2e:	b00d      	add	sp, #52	; 0x34
d0050c30:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0050c32:	4770      	bx	lr
d0050c34:	ed90 0a12 	vldr	s0, [r0, #72]	; 0x48
d0050c38:	ed90 7a03 	vldr	s14, [r0, #12]
d0050c3c:	7c03      	ldrb	r3, [r0, #16]
d0050c3e:	eea7 0a02 	vfma.f32	s0, s14, s4
d0050c42:	ed80 0a12 	vstr	s0, [r0, #72]	; 0x48
d0050c46:	b9eb      	cbnz	r3, d0050c84 <splineRailUpdate+0x2a8>
d0050c48:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050c4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c50:	d505      	bpl.n	d0050c5e <splineRailUpdate+0x282>
d0050c52:	ed9f 7a54 	vldr	s14, [pc, #336]	; d0050da4 <splineRailUpdate+0x3c8>
d0050c56:	eeb0 0a47 	vmov.f32	s0, s14
d0050c5a:	ed80 7a12 	vstr	s14, [r0, #72]	; 0x48
d0050c5e:	eef4 7ac0 	vcmpe.f32	s15, s0
d0050c62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c66:	d503      	bpl.n	d0050c70 <splineRailUpdate+0x294>
d0050c68:	eeb0 0a67 	vmov.f32	s0, s15
d0050c6c:	edc4 7a12 	vstr	s15, [r4, #72]	; 0x48
d0050c70:	4620      	mov	r0, r4
d0050c72:	f7ff fc83 	bl	d005057c <splineRailDistanceToT>
d0050c76:	ed84 0a02 	vstr	s0, [r4, #8]
d0050c7a:	e6ee      	b.n	d0050a5a <splineRailUpdate+0x7e>
d0050c7c:	eeb0 0a46 	vmov.f32	s0, s12
d0050c80:	6243      	str	r3, [r0, #36]	; 0x24
d0050c82:	e6ea      	b.n	d0050a5a <splineRailUpdate+0x7e>
d0050c84:	eef4 7ac0 	vcmpe.f32	s15, s0
d0050c88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c8c:	d808      	bhi.n	d0050ca0 <splineRailUpdate+0x2c4>
d0050c8e:	ee30 0a67 	vsub.f32	s0, s0, s15
d0050c92:	eef4 7ac0 	vcmpe.f32	s15, s0
d0050c96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c9a:	d9f8      	bls.n	d0050c8e <splineRailUpdate+0x2b2>
d0050c9c:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0050ca0:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050ca4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ca8:	d5e2      	bpl.n	d0050c70 <splineRailUpdate+0x294>
d0050caa:	ee30 0a27 	vadd.f32	s0, s0, s15
d0050cae:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050cb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050cb6:	d4f8      	bmi.n	d0050caa <splineRailUpdate+0x2ce>
d0050cb8:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0050cbc:	e7d8      	b.n	d0050c70 <splineRailUpdate+0x294>
d0050cbe:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0050cc2:	ed9f 5a38 	vldr	s10, [pc, #224]	; d0050da4 <splineRailUpdate+0x3c8>
d0050cc6:	e744      	b.n	d0050b52 <splineRailUpdate+0x176>
d0050cc8:	eddf 7a36 	vldr	s15, [pc, #216]	; d0050da4 <splineRailUpdate+0x3c8>
d0050ccc:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d0050cd0:	eef0 1a67 	vmov.f32	s3, s15
d0050cd4:	e706      	b.n	d0050ae4 <splineRailUpdate+0x108>
d0050cd6:	eef1 7ac7 	vsqrt.f32	s15, s14
d0050cda:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050cde:	ee86 7aa7 	vdiv.f32	s14, s13, s15
d0050ce2:	ee20 5a07 	vmul.f32	s10, s0, s14
d0050ce6:	ee61 7a07 	vmul.f32	s15, s2, s14
d0050cea:	e732      	b.n	d0050b52 <splineRailUpdate+0x176>
d0050cec:	eef1 7ac7 	vsqrt.f32	s15, s14
d0050cf0:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0050cf4:	eec7 2a27 	vdiv.f32	s5, s14, s15
d0050cf8:	ee60 1a22 	vmul.f32	s3, s0, s5
d0050cfc:	ee60 7aa2 	vmul.f32	s15, s1, s5
d0050d00:	ee61 2a22 	vmul.f32	s5, s2, s5
d0050d04:	e6ee      	b.n	d0050ae4 <splineRailUpdate+0x108>
d0050d06:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0050d0a:	7c22      	ldrb	r2, [r4, #16]
d0050d0c:	ee70 7a27 	vadd.f32	s15, s0, s15
d0050d10:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0050d14:	ee17 3a90 	vmov	r3, s15
d0050d18:	b372      	cbz	r2, d0050d78 <splineRailUpdate+0x39c>
d0050d1a:	429e      	cmp	r6, r3
d0050d1c:	dc33      	bgt.n	d0050d86 <splineRailUpdate+0x3aa>
d0050d1e:	1b9b      	subs	r3, r3, r6
d0050d20:	429e      	cmp	r6, r3
d0050d22:	ddfc      	ble.n	d0050d1e <splineRailUpdate+0x342>
d0050d24:	6aa2      	ldr	r2, [r4, #40]	; 0x28
d0050d26:	429a      	cmp	r2, r3
d0050d28:	f43f aea2 	beq.w	d0050a70 <splineRailUpdate+0x94>
d0050d2c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0050d30:	62a3      	str	r3, [r4, #40]	; 0x28
d0050d32:	eb07 0782 	add.w	r7, r7, r2, lsl #2
d0050d36:	edd7 7a03 	vldr	s15, [r7, #12]
d0050d3a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050d3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050d42:	bfc8      	it	gt
d0050d44:	edc4 7a09 	vstrgt	s15, [r4, #36]	; 0x24
d0050d48:	e692      	b.n	d0050a70 <splineRailUpdate+0x94>
d0050d4a:	466b      	mov	r3, sp
d0050d4c:	f104 0614 	add.w	r6, r4, #20
d0050d50:	eddf 1a14 	vldr	s3, [pc, #80]	; d0050da4 <splineRailUpdate+0x3c8>
d0050d54:	ed9d 0a03 	vldr	s0, [sp, #12]
d0050d58:	eddd 0a04 	vldr	s1, [sp, #16]
d0050d5c:	ed9d 1a05 	vldr	s2, [sp, #20]
d0050d60:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050d64:	2301      	movs	r3, #1
d0050d66:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0050d6a:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050d6e:	4629      	mov	r1, r5
d0050d70:	4620      	mov	r0, r4
d0050d72:	f884 3020 	strb.w	r3, [r4, #32]
d0050d76:	e755      	b.n	d0050c24 <splineRailUpdate+0x248>
d0050d78:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0050d7c:	429e      	cmp	r6, r3
d0050d7e:	bfd8      	it	le
d0050d80:	f106 33ff 	addle.w	r3, r6, #4294967295	; 0xffffffff
d0050d84:	e7ce      	b.n	d0050d24 <splineRailUpdate+0x348>
d0050d86:	2b00      	cmp	r3, #0
d0050d88:	dacc      	bge.n	d0050d24 <splineRailUpdate+0x348>
d0050d8a:	199b      	adds	r3, r3, r6
d0050d8c:	d4fd      	bmi.n	d0050d8a <splineRailUpdate+0x3ae>
d0050d8e:	e7c9      	b.n	d0050d24 <splineRailUpdate+0x348>
d0050d90:	38d1b717 	.word	0x38d1b717
d0050d94:	358637bd 	.word	0x358637bd
d0050d98:	3f7fbe77 	.word	0x3f7fbe77
d0050d9c:	3f8020c5 	.word	0x3f8020c5
d0050da0:	3e19999a 	.word	0x3e19999a
d0050da4:	00000000 	.word	0x00000000

d0050da8 <splineRailGetCurrentNode>:
d0050da8:	b188      	cbz	r0, d0050dce <splineRailGetCurrentNode+0x26>
d0050daa:	6803      	ldr	r3, [r0, #0]
d0050dac:	b173      	cbz	r3, d0050dcc <splineRailGetCurrentNode+0x24>
d0050dae:	6843      	ldr	r3, [r0, #4]
d0050db0:	2b01      	cmp	r3, #1
d0050db2:	dd0b      	ble.n	d0050dcc <splineRailGetCurrentNode+0x24>
d0050db4:	edd0 7a02 	vldr	s15, [r0, #8]
d0050db8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0050dbc:	ee17 0a90 	vmov	r0, s15
d0050dc0:	2800      	cmp	r0, #0
d0050dc2:	db03      	blt.n	d0050dcc <splineRailGetCurrentNode+0x24>
d0050dc4:	4283      	cmp	r3, r0
d0050dc6:	dc02      	bgt.n	d0050dce <splineRailGetCurrentNode+0x26>
d0050dc8:	1e58      	subs	r0, r3, #1
d0050dca:	4770      	bx	lr
d0050dcc:	2000      	movs	r0, #0
d0050dce:	4770      	bx	lr

d0050dd0 <initSystem>:
d0050dd0:	b570      	push	{r4, r5, r6, lr}
d0050dd2:	4c48      	ldr	r4, [pc, #288]	; (d0050ef4 <initSystem+0x124>)
d0050dd4:	b082      	sub	sp, #8
d0050dd6:	2000      	movs	r0, #0
d0050dd8:	2600      	movs	r6, #0
d0050dda:	7823      	ldrb	r3, [r4, #0]
d0050ddc:	7862      	ldrb	r2, [r4, #1]
d0050dde:	78a1      	ldrb	r1, [r4, #2]
d0050de0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050de4:	78e2      	ldrb	r2, [r4, #3]
d0050de6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050dea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050dee:	681b      	ldr	r3, [r3, #0]
d0050df0:	4798      	blx	r3
d0050df2:	f7ff f923 	bl	d005003c <initMalloc>
d0050df6:	7b23      	ldrb	r3, [r4, #12]
d0050df8:	7b62      	ldrb	r2, [r4, #13]
d0050dfa:	2190      	movs	r1, #144	; 0x90
d0050dfc:	7ba5      	ldrb	r5, [r4, #14]
d0050dfe:	20dc      	movs	r0, #220	; 0xdc
d0050e00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e04:	7be2      	ldrb	r2, [r4, #15]
d0050e06:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050e0a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e0e:	681b      	ldr	r3, [r3, #0]
d0050e10:	691b      	ldr	r3, [r3, #16]
d0050e12:	4798      	blx	r3
d0050e14:	7b23      	ldrb	r3, [r4, #12]
d0050e16:	7b62      	ldrb	r2, [r4, #13]
d0050e18:	2000      	movs	r0, #0
d0050e1a:	7ba1      	ldrb	r1, [r4, #14]
d0050e1c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e20:	7be2      	ldrb	r2, [r4, #15]
d0050e22:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e2a:	681b      	ldr	r3, [r3, #0]
d0050e2c:	689b      	ldr	r3, [r3, #8]
d0050e2e:	4798      	blx	r3
d0050e30:	7b25      	ldrb	r5, [r4, #12]
d0050e32:	7b62      	ldrb	r2, [r4, #13]
d0050e34:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0050e38:	7ba1      	ldrb	r1, [r4, #14]
d0050e3a:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0050e3e:	7be0      	ldrb	r0, [r4, #15]
d0050e40:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0050e44:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0050e48:	4619      	mov	r1, r3
d0050e4a:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0050e4e:	4610      	mov	r0, r2
d0050e50:	682d      	ldr	r5, [r5, #0]
d0050e52:	9600      	str	r6, [sp, #0]
d0050e54:	696d      	ldr	r5, [r5, #20]
d0050e56:	47a8      	blx	r5
d0050e58:	7c23      	ldrb	r3, [r4, #16]
d0050e5a:	7c62      	ldrb	r2, [r4, #17]
d0050e5c:	f44f 7000 	mov.w	r0, #512	; 0x200
d0050e60:	7ca1      	ldrb	r1, [r4, #18]
d0050e62:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e66:	7ce2      	ldrb	r2, [r4, #19]
d0050e68:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e70:	681b      	ldr	r3, [r3, #0]
d0050e72:	681b      	ldr	r3, [r3, #0]
d0050e74:	4798      	blx	r3
d0050e76:	7c22      	ldrb	r2, [r4, #16]
d0050e78:	7c63      	ldrb	r3, [r4, #17]
d0050e7a:	2101      	movs	r1, #1
d0050e7c:	7ca5      	ldrb	r5, [r4, #18]
d0050e7e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0050e82:	7ce0      	ldrb	r0, [r4, #19]
d0050e84:	7b23      	ldrb	r3, [r4, #12]
d0050e86:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d0050e8a:	7b66      	ldrb	r6, [r4, #13]
d0050e8c:	7ba5      	ldrb	r5, [r4, #14]
d0050e8e:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0050e92:	7be0      	ldrb	r0, [r4, #15]
d0050e94:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0050e98:	6812      	ldr	r2, [r2, #0]
d0050e9a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050e9e:	6852      	ldr	r2, [r2, #4]
d0050ea0:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0050ea4:	7011      	strb	r1, [r2, #0]
d0050ea6:	681b      	ldr	r3, [r3, #0]
d0050ea8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0050eaa:	4798      	blx	r3
d0050eac:	7b23      	ldrb	r3, [r4, #12]
d0050eae:	7b62      	ldrb	r2, [r4, #13]
d0050eb0:	7ba5      	ldrb	r5, [r4, #14]
d0050eb2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050eb6:	7be2      	ldrb	r2, [r4, #15]
d0050eb8:	490f      	ldr	r1, [pc, #60]	; (d0050ef8 <initSystem+0x128>)
d0050eba:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050ebe:	6008      	str	r0, [r1, #0]
d0050ec0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050ec4:	681b      	ldr	r3, [r3, #0]
d0050ec6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0050ec8:	4798      	blx	r3
d0050eca:	7b23      	ldrb	r3, [r4, #12]
d0050ecc:	7b62      	ldrb	r2, [r4, #13]
d0050ece:	4605      	mov	r5, r0
d0050ed0:	7ba6      	ldrb	r6, [r4, #14]
d0050ed2:	2064      	movs	r0, #100	; 0x64
d0050ed4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050ed8:	7be2      	ldrb	r2, [r4, #15]
d0050eda:	4908      	ldr	r1, [pc, #32]	; (d0050efc <initSystem+0x12c>)
d0050edc:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0050ee0:	600d      	str	r5, [r1, #0]
d0050ee2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050ee6:	681b      	ldr	r3, [r3, #0]
d0050ee8:	689b      	ldr	r3, [r3, #8]
d0050eea:	b002      	add	sp, #8
d0050eec:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050ef0:	4718      	bx	r3
d0050ef2:	bf00      	nop
d0050ef4:	2001f000 	.word	0x2001f000
d0050ef8:	d0140320 	.word	0xd0140320
d0050efc:	d0140300 	.word	0xd0140300

d0050f00 <weatherLightning>:
d0050f00:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050f04:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0050f08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f0c:	4605      	mov	r5, r0
d0050f0e:	d930      	bls.n	d0050f72 <weatherLightning+0x72>
d0050f10:	eddf 7ab6 	vldr	s15, [pc, #728]	; d00511ec <weatherLightning+0x2ec>
d0050f14:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0050f18:	4eb5      	ldr	r6, [pc, #724]	; (d00511f0 <weatherLightning+0x2f0>)
d0050f1a:	4fb6      	ldr	r7, [pc, #728]	; (d00511f4 <weatherLightning+0x2f4>)
d0050f1c:	6833      	ldr	r3, [r6, #0]
d0050f1e:	683a      	ldr	r2, [r7, #0]
d0050f20:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050f24:	2a01      	cmp	r2, #1
d0050f26:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0050f2a:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0050f2e:	6033      	str	r3, [r6, #0]
d0050f30:	d022      	beq.n	d0050f78 <weatherLightning+0x78>
d0050f32:	2a02      	cmp	r2, #2
d0050f34:	f000 8087 	beq.w	d0051046 <weatherLightning+0x146>
d0050f38:	4caf      	ldr	r4, [pc, #700]	; (d00511f8 <weatherLightning+0x2f8>)
d0050f3a:	2100      	movs	r1, #0
d0050f3c:	b2e8      	uxtb	r0, r5
d0050f3e:	edd4 7a00 	vldr	s15, [r4]
d0050f42:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0050f46:	ed84 0a00 	vstr	s0, [r4]
d0050f4a:	f005 fa2b 	bl	d00563a4 <lightEnable>
d0050f4e:	4628      	mov	r0, r5
d0050f50:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d00511fc <weatherLightning+0x2fc>
d0050f54:	f005 fabc 	bl	d00564d0 <lightSetIntensity>
d0050f58:	edd4 7a00 	vldr	s15, [r4]
d0050f5c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050f60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f64:	f240 80d6 	bls.w	d0051114 <weatherLightning+0x214>
d0050f68:	f04f 0800 	mov.w	r8, #0
d0050f6c:	4640      	mov	r0, r8
d0050f6e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0050f72:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d0051200 <weatherLightning+0x300>
d0050f76:	e7cf      	b.n	d0050f18 <weatherLightning+0x18>
d0050f78:	4aa2      	ldr	r2, [pc, #648]	; (d0051204 <weatherLightning+0x304>)
d0050f7a:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d0050f7e:	f8df a2b4 	ldr.w	sl, [pc, #692]	; d0051234 <weatherLightning+0x334>
d0050f82:	ed92 7a00 	vldr	s14, [r2]
d0050f86:	2200      	movs	r2, #0
d0050f88:	edda 7a00 	vldr	s15, [sl]
d0050f8c:	ee66 6ac7 	vnmul.f32	s13, s13, s14
d0050f90:	f8df 9284 	ldr.w	r9, [pc, #644]	; d0051218 <weatherLightning+0x318>
d0050f94:	ed99 7a00 	vldr	s14, [r9]
d0050f98:	eee6 7a80 	vfma.f32	s15, s13, s0
d0050f9c:	ee37 0a40 	vsub.f32	s0, s14, s0
d0050fa0:	ed89 0a00 	vstr	s0, [r9]
d0050fa4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050fa8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050fac:	f100 80ad 	bmi.w	d005110a <weatherLightning+0x20a>
d0050fb0:	bfcc      	ite	gt
d0050fb2:	f04f 0801 	movgt.w	r8, #1
d0050fb6:	f04f 0800 	movle.w	r8, #0
d0050fba:	edca 7a00 	vstr	s15, [sl]
d0050fbe:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050fc2:	2101      	movs	r1, #1
d0050fc4:	fa5f fb85 	uxtb.w	fp, r5
d0050fc8:	ea83 4453 	eor.w	r4, r3, r3, lsr #17
d0050fcc:	4658      	mov	r0, fp
d0050fce:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d0050fd2:	6034      	str	r4, [r6, #0]
d0050fd4:	b2e4      	uxtb	r4, r4
d0050fd6:	f005 f9e5 	bl	d00563a4 <lightEnable>
d0050fda:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d0051208 <weatherLightning+0x308>
d0050fde:	ee07 4a90 	vmov	s15, r4
d0050fe2:	ed9a 0a00 	vldr	s0, [sl]
d0050fe6:	4628      	mov	r0, r5
d0050fe8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050fec:	eea7 0a87 	vfma.f32	s0, s15, s14
d0050ff0:	f005 fa6e 	bl	d00564d0 <lightSetIntensity>
d0050ff4:	edd9 7a00 	vldr	s15, [r9]
d0050ff8:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050ffc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051000:	d8b4      	bhi.n	d0050f6c <weatherLightning+0x6c>
d0051002:	4a82      	ldr	r2, [pc, #520]	; (d005120c <weatherLightning+0x30c>)
d0051004:	6813      	ldr	r3, [r2, #0]
d0051006:	3b01      	subs	r3, #1
d0051008:	2b00      	cmp	r3, #0
d005100a:	6013      	str	r3, [r2, #0]
d005100c:	6833      	ldr	r3, [r6, #0]
d005100e:	f340 80ca 	ble.w	d00511a6 <weatherLightning+0x2a6>
d0051012:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0051016:	2202      	movs	r2, #2
d0051018:	eddf 6a7d 	vldr	s13, [pc, #500]	; d0051210 <weatherLightning+0x310>
d005101c:	4640      	mov	r0, r8
d005101e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0051022:	603a      	str	r2, [r7, #0]
d0051024:	eddf 7a7b 	vldr	s15, [pc, #492]	; d0051214 <weatherLightning+0x314>
d0051028:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d005102c:	f3c3 0209 	ubfx	r2, r3, #0, #10
d0051030:	6033      	str	r3, [r6, #0]
d0051032:	ee07 2a10 	vmov	s14, r2
d0051036:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005103a:	eee7 7a26 	vfma.f32	s15, s14, s13
d005103e:	edc9 7a00 	vstr	s15, [r9]
d0051042:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051046:	4c74      	ldr	r4, [pc, #464]	; (d0051218 <weatherLightning+0x318>)
d0051048:	2100      	movs	r1, #0
d005104a:	b2e8      	uxtb	r0, r5
d005104c:	edd4 7a00 	vldr	s15, [r4]
d0051050:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0051054:	ed84 0a00 	vstr	s0, [r4]
d0051058:	f005 f9a4 	bl	d00563a4 <lightEnable>
d005105c:	4628      	mov	r0, r5
d005105e:	ed9f 0a67 	vldr	s0, [pc, #412]	; d00511fc <weatherLightning+0x2fc>
d0051062:	f005 fa35 	bl	d00564d0 <lightSetIntensity>
d0051066:	edd4 7a00 	vldr	s15, [r4]
d005106a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d005106e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051072:	f63f af79 	bhi.w	d0050f68 <weatherLightning+0x68>
d0051076:	6833      	ldr	r3, [r6, #0]
d0051078:	2201      	movs	r2, #1
d005107a:	eddf 4a68 	vldr	s9, [pc, #416]	; d005121c <weatherLightning+0x31c>
d005107e:	f04f 0800 	mov.w	r8, #0
d0051082:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0051086:	603a      	str	r2, [r7, #0]
d0051088:	ed9f 7a65 	vldr	s14, [pc, #404]	; d0051220 <weatherLightning+0x320>
d005108c:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0051090:	ed9f 5a64 	vldr	s10, [pc, #400]	; d0051224 <weatherLightning+0x324>
d0051094:	ed9f 6a64 	vldr	s12, [pc, #400]	; d0051228 <weatherLightning+0x328>
d0051098:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d005109c:	eddf 5a63 	vldr	s11, [pc, #396]	; d005122c <weatherLightning+0x32c>
d00510a0:	eddf 6a63 	vldr	s13, [pc, #396]	; d0051230 <weatherLightning+0x330>
d00510a4:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d00510a8:	f3c3 0309 	ubfx	r3, r3, #0, #10
d00510ac:	4855      	ldr	r0, [pc, #340]	; (d0051204 <weatherLightning+0x304>)
d00510ae:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00510b2:	ee07 3a90 	vmov	s15, r3
d00510b6:	495f      	ldr	r1, [pc, #380]	; (d0051234 <weatherLightning+0x334>)
d00510b8:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d00510bc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00510c0:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d00510c4:	b2db      	uxtb	r3, r3
d00510c6:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00510ca:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00510ce:	ee07 3a90 	vmov	s15, r3
d00510d2:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d00510d6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00510da:	f3c3 0209 	ubfx	r2, r3, #0, #10
d00510de:	6033      	str	r3, [r6, #0]
d00510e0:	eea7 6a85 	vfma.f32	s12, s15, s10
d00510e4:	eef0 7a46 	vmov.f32	s15, s12
d00510e8:	ee06 2a10 	vmov	s12, r2
d00510ec:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d00510f0:	ee67 7a27 	vmul.f32	s15, s14, s15
d00510f4:	eee6 6a25 	vfma.f32	s13, s12, s11
d00510f8:	edc0 7a00 	vstr	s15, [r0]
d00510fc:	4640      	mov	r0, r8
d00510fe:	edc1 7a00 	vstr	s15, [r1]
d0051102:	edc4 6a00 	vstr	s13, [r4]
d0051106:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005110a:	f04f 0800 	mov.w	r8, #0
d005110e:	f8ca 2000 	str.w	r2, [sl]
d0051112:	e754      	b.n	d0050fbe <weatherLightning+0xbe>
d0051114:	6833      	ldr	r3, [r6, #0]
d0051116:	2201      	movs	r2, #1
d0051118:	4947      	ldr	r1, [pc, #284]	; (d0051238 <weatherLightning+0x338>)
d005111a:	f04f 0800 	mov.w	r8, #0
d005111e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0051122:	603a      	str	r2, [r7, #0]
d0051124:	eddf 5a3d 	vldr	s11, [pc, #244]	; d005121c <weatherLightning+0x31c>
d0051128:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d005112c:	ed9f 7a3c 	vldr	s14, [pc, #240]	; d0051220 <weatherLightning+0x320>
d0051130:	ed9f 6a3e 	vldr	s12, [pc, #248]	; d005122c <weatherLightning+0x32c>
d0051134:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0051138:	eddf 6a3d 	vldr	s13, [pc, #244]	; d0051230 <weatherLightning+0x330>
d005113c:	4c31      	ldr	r4, [pc, #196]	; (d0051204 <weatherLightning+0x304>)
d005113e:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d0051142:	fba1 0103 	umull	r0, r1, r1, r3
d0051146:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d005114a:	f021 0003 	bic.w	r0, r1, #3
d005114e:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d0051152:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d0051156:	ea82 3142 	eor.w	r1, r2, r2, lsl #13
d005115a:	f3c2 0209 	ubfx	r2, r2, #0, #10
d005115e:	1a1b      	subs	r3, r3, r0
d0051160:	482d      	ldr	r0, [pc, #180]	; (d0051218 <weatherLightning+0x318>)
d0051162:	ee07 2a90 	vmov	s15, r2
d0051166:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d005116a:	3302      	adds	r3, #2
d005116c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051170:	ea81 1241 	eor.w	r2, r1, r1, lsl #5
d0051174:	492f      	ldr	r1, [pc, #188]	; (d0051234 <weatherLightning+0x334>)
d0051176:	f3c2 0509 	ubfx	r5, r2, #0, #10
d005117a:	6032      	str	r2, [r6, #0]
d005117c:	eea7 7aa5 	vfma.f32	s14, s15, s11
d0051180:	4a22      	ldr	r2, [pc, #136]	; (d005120c <weatherLightning+0x30c>)
d0051182:	6013      	str	r3, [r2, #0]
d0051184:	eef0 7a47 	vmov.f32	s15, s14
d0051188:	ee07 5a10 	vmov	s14, r5
d005118c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0051190:	edc4 7a00 	vstr	s15, [r4]
d0051194:	edc1 7a00 	vstr	s15, [r1]
d0051198:	eee7 6a06 	vfma.f32	s13, s14, s12
d005119c:	edc0 6a00 	vstr	s13, [r0]
d00511a0:	4640      	mov	r0, r8
d00511a2:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00511a6:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00511aa:	eddf 6a24 	vldr	s13, [pc, #144]	; d005123c <weatherLightning+0x33c>
d00511ae:	eddf 7a24 	vldr	s15, [pc, #144]	; d0051240 <weatherLightning+0x340>
d00511b2:	4658      	mov	r0, fp
d00511b4:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00511b8:	4a0f      	ldr	r2, [pc, #60]	; (d00511f8 <weatherLightning+0x2f8>)
d00511ba:	2100      	movs	r1, #0
d00511bc:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00511c0:	f3c3 040a 	ubfx	r4, r3, #0, #11
d00511c4:	6033      	str	r3, [r6, #0]
d00511c6:	ee07 4a10 	vmov	s14, r4
d00511ca:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00511ce:	eee7 7a26 	vfma.f32	s15, s14, s13
d00511d2:	edc2 7a00 	vstr	s15, [r2]
d00511d6:	f005 f8e5 	bl	d00563a4 <lightEnable>
d00511da:	4628      	mov	r0, r5
d00511dc:	ed9f 0a07 	vldr	s0, [pc, #28]	; d00511fc <weatherLightning+0x2fc>
d00511e0:	f005 f976 	bl	d00564d0 <lightSetIntensity>
d00511e4:	2300      	movs	r3, #0
d00511e6:	603b      	str	r3, [r7, #0]
d00511e8:	e6c0      	b.n	d0050f6c <weatherLightning+0x6c>
d00511ea:	bf00      	nop
d00511ec:	3dcccccd 	.word	0x3dcccccd
d00511f0:	d005af08 	.word	0xd005af08
d00511f4:	d005afec 	.word	0xd005afec
d00511f8:	d005af00 	.word	0xd005af00
d00511fc:	00000000 	.word	0x00000000
d0051200:	3c83126f 	.word	0x3c83126f
d0051204:	d005afd0 	.word	0xd005afd0
d0051208:	3ab3e71b 	.word	0x3ab3e71b
d005120c:	d005afd4 	.word	0xd005afd4
d0051210:	38cd000c 	.word	0x38cd000c
d0051214:	3ca3d70a 	.word	0x3ca3d70a
d0051218:	d005aff0 	.word	0xd005aff0
d005121c:	3ad9d00e 	.word	0x3ad9d00e
d0051220:	3e99999a 	.word	0x3e99999a
d0051224:	3b33e71b 	.word	0x3b33e71b
d0051228:	3f266666 	.word	0x3f266666
d005122c:	3776000e 	.word	0x3776000e
d0051230:	3ccccccd 	.word	0x3ccccccd
d0051234:	d005afcc 	.word	0xd005afcc
d0051238:	cccccccd 	.word	0xcccccccd
d005123c:	3aace269 	.word	0x3aace269
d0051240:	3f4ccccd 	.word	0x3f4ccccd

d0051244 <main>:
d0051244:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051248:	ed2d 8b0e 	vpush	{d8-d14}
d005124c:	f5ad 4d88 	sub.w	sp, sp, #17408	; 0x4400
d0051250:	f244 13df 	movw	r3, #16863	; 0x41df
d0051254:	f8df a364 	ldr.w	sl, [pc, #868]	; d00515bc <main+0x378>
d0051258:	b099      	sub	sp, #100	; 0x64
d005125a:	f8df b364 	ldr.w	fp, [pc, #868]	; d00515c0 <main+0x37c>
d005125e:	4cc7      	ldr	r4, [pc, #796]	; (d005157c <main+0x338>)
d0051260:	446b      	add	r3, sp
d0051262:	ad22      	add	r5, sp, #136	; 0x88
d0051264:	ae46      	add	r6, sp, #280	; 0x118
d0051266:	eddf 9ac6 	vldr	s19, [pc, #792]	; d0051580 <main+0x33c>
d005126a:	f023 081f 	bic.w	r8, r3, #31
d005126e:	f7ff fdaf 	bl	d0050dd0 <initSystem>
d0051272:	f003 fe01 	bl	d0054e78 <worldClear>
d0051276:	ed9f 9ac3 	vldr	s18, [pc, #780]	; d0051584 <main+0x340>
d005127a:	f005 f88d 	bl	d0056398 <lightsClear>
d005127e:	f108 07c0 	add.w	r7, r8, #192	; 0xc0
d0051282:	f003 fafd 	bl	d0054880 <sb3dParticlesClear>
d0051286:	f508 7308 	add.w	r3, r8, #544	; 0x220
d005128a:	f508 79d0 	add.w	r9, r8, #416	; 0x1a0
d005128e:	eddf 8abe 	vldr	s17, [pc, #760]	; d0051588 <main+0x344>
d0051292:	9307      	str	r3, [sp, #28]
d0051294:	f005 f92c 	bl	d00564f0 <setDefaultRenderMode>
d0051298:	4638      	mov	r0, r7
d005129a:	f003 fe4b 	bl	d0054f34 <cameraCreate>
d005129e:	f508 72f0 	add.w	r2, r8, #480	; 0x1e0
d00512a2:	4638      	mov	r0, r7
d00512a4:	eddf 0ab9 	vldr	s1, [pc, #740]	; d005158c <main+0x348>
d00512a8:	ed9f 0ab9 	vldr	s0, [pc, #740]	; d0051590 <main+0x34c>
d00512ac:	9208      	str	r2, [sp, #32]
d00512ae:	f004 f8e7 	bl	d0055480 <cameraSetRange>
d00512b2:	ed9f 1ab8 	vldr	s2, [pc, #736]	; d0051594 <main+0x350>
d00512b6:	f508 71b0 	add.w	r1, r8, #352	; 0x160
d00512ba:	eddf 0ac2 	vldr	s1, [pc, #776]	; d00515c4 <main+0x380>
d00512be:	eeb0 0a41 	vmov.f32	s0, s2
d00512c2:	9109      	str	r1, [sp, #36]	; 0x24
d00512c4:	f003 fa56 	bl	d0054774 <vec3>
d00512c8:	9504      	str	r5, [sp, #16]
d00512ca:	2500      	movs	r5, #0
d00512cc:	4638      	mov	r0, r7
d00512ce:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d00512d2:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d00512d6:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d00512da:	f8cd 8014 	str.w	r8, [sp, #20]
d00512de:	9506      	str	r5, [sp, #24]
d00512e0:	f003 fe32 	bl	d0054f48 <cameraSetPosition>
d00512e4:	4638      	mov	r0, r7
d00512e6:	f003 fdcf 	bl	d0054e88 <cameraNormalize>
d00512ea:	a84b      	add	r0, sp, #300	; 0x12c
d00512ec:	f04f 4c7f 	mov.w	ip, #4278190080	; 0xff000000
d00512f0:	4605      	mov	r5, r0
d00512f2:	e8ba 000f 	ldmia.w	sl!, {r0, r1, r2, r3}
d00512f6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00512f8:	e8ba 000f 	ldmia.w	sl!, {r0, r1, r2, r3}
d00512fc:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00512fe:	e8ba 000f 	ldmia.w	sl!, {r0, r1, r2, r3}
d0051302:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051304:	e89a 000f 	ldmia.w	sl, {r0, r1, r2, r3}
d0051308:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d005130c:	f10a 0510 	add.w	r5, sl, #16
d0051310:	f8cb c000 	str.w	ip, [fp]
d0051314:	9600      	str	r6, [sp, #0]
d0051316:	f8cb c040 	str.w	ip, [fp, #64]	; 0x40
d005131a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d005131c:	682d      	ldr	r5, [r5, #0]
d005131e:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d0051320:	4663      	mov	r3, ip
d0051322:	4658      	mov	r0, fp
d0051324:	6035      	str	r5, [r6, #0]
d0051326:	a94b      	add	r1, sp, #300	; 0x12c
d0051328:	2210      	movs	r2, #16
d005132a:	2664      	movs	r6, #100	; 0x64
d005132c:	f004 fde0 	bl	d0055ef0 <buildLightingCLUT>
d0051330:	7b23      	ldrb	r3, [r4, #12]
d0051332:	7b62      	ldrb	r2, [r4, #13]
d0051334:	4658      	mov	r0, fp
d0051336:	7ba1      	ldrb	r1, [r4, #14]
d0051338:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005133c:	7be2      	ldrb	r2, [r4, #15]
d005133e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051342:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051346:	681b      	ldr	r3, [r3, #0]
d0051348:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d005134a:	4798      	blx	r3
d005134c:	7c23      	ldrb	r3, [r4, #16]
d005134e:	7c62      	ldrb	r2, [r4, #17]
d0051350:	2100      	movs	r1, #0
d0051352:	7ca5      	ldrb	r5, [r4, #18]
d0051354:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051358:	7ce2      	ldrb	r2, [r4, #19]
d005135a:	488f      	ldr	r0, [pc, #572]	; (d0051598 <main+0x354>)
d005135c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051360:	ad1f      	add	r5, sp, #124	; 0x7c
d0051362:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051366:	685b      	ldr	r3, [r3, #4]
d0051368:	681b      	ldr	r3, [r3, #0]
d005136a:	4798      	blx	r3
d005136c:	ed9f 1a89 	vldr	s2, [pc, #548]	; d0051594 <main+0x350>
d0051370:	eef0 0a41 	vmov.f32	s1, s2
d0051374:	eeb0 0a41 	vmov.f32	s0, s2
d0051378:	f003 f9fc 	bl	d0054774 <vec3>
d005137c:	eddf 1a84 	vldr	s3, [pc, #528]	; d0051590 <main+0x34c>
d0051380:	2001      	movs	r0, #1
d0051382:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0051386:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d005138a:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d005138e:	f005 f817 	bl	d00563c0 <addPointLight>
d0051392:	f10a 0324 	add.w	r3, sl, #36	; 0x24
d0051396:	4682      	mov	sl, r0
d0051398:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d005139c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00513a0:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00513a4:	2001      	movs	r0, #1
d00513a6:	edd5 0a01 	vldr	s1, [r5, #4]
d00513aa:	ed95 1a02 	vldr	s2, [r5, #8]
d00513ae:	ed95 0a00 	vldr	s0, [r5]
d00513b2:	f005 f841 	bl	d0056438 <addDirectionalLight>
d00513b6:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00513ba:	b2c3      	uxtb	r3, r0
d00513bc:	ee0e 3a90 	vmov	s29, r3
d00513c0:	4618      	mov	r0, r3
d00513c2:	f005 f885 	bl	d00564d0 <lightSetIntensity>
d00513c6:	2100      	movs	r1, #0
d00513c8:	ee1e 0a90 	vmov	r0, s29
d00513cc:	f004 ffea 	bl	d00563a4 <lightEnable>
d00513d0:	f508 7120 	add.w	r1, r8, #640	; 0x280
d00513d4:	4871      	ldr	r0, [pc, #452]	; (d005159c <main+0x358>)
d00513d6:	f7fe fea3 	bl	d0050120 <LoadSFX>
d00513da:	7c21      	ldrb	r1, [r4, #16]
d00513dc:	7c65      	ldrb	r5, [r4, #17]
d00513de:	4602      	mov	r2, r0
d00513e0:	f894 c012 	ldrb.w	ip, [r4, #18]
d00513e4:	2300      	movs	r3, #0
d00513e6:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d00513ea:	7ce0      	ldrb	r0, [r4, #19]
d00513ec:	f8d8 1280 	ldr.w	r1, [r8, #640]	; 0x280
d00513f0:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00513f4:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00513f8:	4618      	mov	r0, r3
d00513fa:	68ad      	ldr	r5, [r5, #8]
d00513fc:	68ed      	ldr	r5, [r5, #12]
d00513fe:	47a8      	blx	r5
d0051400:	7c23      	ldrb	r3, [r4, #16]
d0051402:	7c62      	ldrb	r2, [r4, #17]
d0051404:	f644 6184 	movw	r1, #20100	; 0x4e84
d0051408:	7ca5      	ldrb	r5, [r4, #18]
d005140a:	2000      	movs	r0, #0
d005140c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051410:	7ce2      	ldrb	r2, [r4, #19]
d0051412:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051416:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005141a:	689b      	ldr	r3, [r3, #8]
d005141c:	691b      	ldr	r3, [r3, #16]
d005141e:	4798      	blx	r3
d0051420:	7c23      	ldrb	r3, [r4, #16]
d0051422:	7c62      	ldrb	r2, [r4, #17]
d0051424:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d0051428:	7ca5      	ldrb	r5, [r4, #18]
d005142a:	2000      	movs	r0, #0
d005142c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051430:	7ce2      	ldrb	r2, [r4, #19]
d0051432:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051436:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005143a:	689b      	ldr	r3, [r3, #8]
d005143c:	695b      	ldr	r3, [r3, #20]
d005143e:	4798      	blx	r3
d0051440:	7c23      	ldrb	r3, [r4, #16]
d0051442:	7c62      	ldrb	r2, [r4, #17]
d0051444:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d0051448:	7ca5      	ldrb	r5, [r4, #18]
d005144a:	2000      	movs	r0, #0
d005144c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051450:	7ce2      	ldrb	r2, [r4, #19]
d0051452:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051456:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005145a:	689b      	ldr	r3, [r3, #8]
d005145c:	699b      	ldr	r3, [r3, #24]
d005145e:	4798      	blx	r3
d0051460:	7c23      	ldrb	r3, [r4, #16]
d0051462:	7c62      	ldrb	r2, [r4, #17]
d0051464:	2100      	movs	r1, #0
d0051466:	7ca5      	ldrb	r5, [r4, #18]
d0051468:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005146c:	7ce2      	ldrb	r2, [r4, #19]
d005146e:	4608      	mov	r0, r1
d0051470:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051474:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051478:	689b      	ldr	r3, [r3, #8]
d005147a:	6a1b      	ldr	r3, [r3, #32]
d005147c:	4798      	blx	r3
d005147e:	f508 7118 	add.w	r1, r8, #608	; 0x260
d0051482:	4847      	ldr	r0, [pc, #284]	; (d00515a0 <main+0x35c>)
d0051484:	f7fe fe4c 	bl	d0050120 <LoadSFX>
d0051488:	7c21      	ldrb	r1, [r4, #16]
d005148a:	7c65      	ldrb	r5, [r4, #17]
d005148c:	4602      	mov	r2, r0
d005148e:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051492:	2300      	movs	r3, #0
d0051494:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d0051498:	7ce0      	ldrb	r0, [r4, #19]
d005149a:	f8d8 1260 	ldr.w	r1, [r8, #608]	; 0x260
d005149e:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00514a2:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00514a6:	2001      	movs	r0, #1
d00514a8:	68ad      	ldr	r5, [r5, #8]
d00514aa:	68ed      	ldr	r5, [r5, #12]
d00514ac:	47a8      	blx	r5
d00514ae:	7c23      	ldrb	r3, [r4, #16]
d00514b0:	7c62      	ldrb	r2, [r4, #17]
d00514b2:	f244 21cc 	movw	r1, #17100	; 0x42cc
d00514b6:	7ca0      	ldrb	r0, [r4, #18]
d00514b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00514bc:	7ce2      	ldrb	r2, [r4, #19]
d00514be:	4d39      	ldr	r5, [pc, #228]	; (d00515a4 <main+0x360>)
d00514c0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00514c4:	2001      	movs	r0, #1
d00514c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00514ca:	689b      	ldr	r3, [r3, #8]
d00514cc:	691b      	ldr	r3, [r3, #16]
d00514ce:	4798      	blx	r3
d00514d0:	7c23      	ldrb	r3, [r4, #16]
d00514d2:	7c62      	ldrb	r2, [r4, #17]
d00514d4:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d00514d8:	2001      	movs	r0, #1
d00514da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00514de:	7ca2      	ldrb	r2, [r4, #18]
d00514e0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00514e4:	7ce2      	ldrb	r2, [r4, #19]
d00514e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00514ea:	689b      	ldr	r3, [r3, #8]
d00514ec:	695b      	ldr	r3, [r3, #20]
d00514ee:	4798      	blx	r3
d00514f0:	7c23      	ldrb	r3, [r4, #16]
d00514f2:	7c62      	ldrb	r2, [r4, #17]
d00514f4:	2140      	movs	r1, #64	; 0x40
d00514f6:	2001      	movs	r0, #1
d00514f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00514fc:	7ca2      	ldrb	r2, [r4, #18]
d00514fe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051502:	7ce2      	ldrb	r2, [r4, #19]
d0051504:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051508:	689b      	ldr	r3, [r3, #8]
d005150a:	699b      	ldr	r3, [r3, #24]
d005150c:	4798      	blx	r3
d005150e:	7c23      	ldrb	r3, [r4, #16]
d0051510:	7c62      	ldrb	r2, [r4, #17]
d0051512:	2100      	movs	r1, #0
d0051514:	2001      	movs	r0, #1
d0051516:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005151a:	7ca2      	ldrb	r2, [r4, #18]
d005151c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051520:	7ce2      	ldrb	r2, [r4, #19]
d0051522:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051526:	689b      	ldr	r3, [r3, #8]
d0051528:	6a1b      	ldr	r3, [r3, #32]
d005152a:	4798      	blx	r3
d005152c:	2313      	movs	r3, #19
d005152e:	2012      	movs	r0, #18
d0051530:	2215      	movs	r2, #21
d0051532:	702b      	strb	r3, [r5, #0]
d0051534:	2317      	movs	r3, #23
d0051536:	4d1c      	ldr	r5, [pc, #112]	; (d00515a8 <main+0x364>)
d0051538:	eddd aa07 	vldr	s21, [sp, #28]
d005153c:	7028      	strb	r0, [r5, #0]
d005153e:	481b      	ldr	r0, [pc, #108]	; (d00515ac <main+0x368>)
d0051540:	ee1a 1a90 	vmov	r1, s21
d0051544:	ed9f 0a1a 	vldr	s0, [pc, #104]	; d00515b0 <main+0x36c>
d0051548:	7002      	strb	r2, [r0, #0]
d005154a:	4a1a      	ldr	r2, [pc, #104]	; (d00515b4 <main+0x370>)
d005154c:	481a      	ldr	r0, [pc, #104]	; (d00515b8 <main+0x374>)
d005154e:	7013      	strb	r3, [r2, #0]
d0051550:	f006 ff1c 	bl	d005838c <loadMeshSB3D>
d0051554:	ed9f 1a0f 	vldr	s2, [pc, #60]	; d0051594 <main+0x350>
d0051558:	eef0 0a41 	vmov.f32	s1, s2
d005155c:	eeb0 0a41 	vmov.f32	s0, s2
d0051560:	f003 f908 	bl	d0054774 <vec3>
d0051564:	ee1a 0a90 	vmov	r0, s21
d0051568:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d005156c:	ed8d 1a30 	vstr	s2, [sp, #192]	; 0xc0
d0051570:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d0051574:	f004 fa94 	bl	d0055aa0 <entityWorldSpawn>
d0051578:	e026      	b.n	d00515c8 <main+0x384>
d005157a:	bf00      	nop
d005157c:	2001f000 	.word	0x2001f000
d0051580:	42280000 	.word	0x42280000
d0051584:	c3750000 	.word	0xc3750000
d0051588:	42b40000 	.word	0x42b40000
d005158c:	459c4000 	.word	0x459c4000
d0051590:	3c23d70a 	.word	0x3c23d70a
d0051594:	00000000 	.word	0x00000000
d0051598:	d005a360 	.word	0xd005a360
d005159c:	d005a36c 	.word	0xd005a36c
d00515a0:	d005a37c 	.word	0xd005a37c
d00515a4:	d01402e1 	.word	0xd01402e1
d00515a8:	d01402a0 	.word	0xd01402a0
d00515ac:	d01402e2 	.word	0xd01402e2
d00515b0:	43480000 	.word	0x43480000
d00515b4:	d01402e0 	.word	0xd01402e0
d00515b8:	d005a38c 	.word	0xd005a38c
d00515bc:	d005a3f4 	.word	0xd005a3f4
d00515c0:	d005ab00 	.word	0xd005ab00
d00515c4:	42480000 	.word	0x42480000
d00515c8:	ed9d aa08 	vldr	s20, [sp, #32]
d00515cc:	ed1f 0a03 	vldr	s0, [pc, #-12]	; d00515c4 <main+0x380>
d00515d0:	ee1a 1a10 	vmov	r1, s20
d00515d4:	48b5      	ldr	r0, [pc, #724]	; (d00518ac <main+0x668>)
d00515d6:	f006 fed9 	bl	d005838c <loadMeshSB3D>
d00515da:	ed9f 1ab5 	vldr	s2, [pc, #724]	; d00518b0 <main+0x66c>
d00515de:	eddf 0ab5 	vldr	s1, [pc, #724]	; d00518b4 <main+0x670>
d00515e2:	ed9f 0ab5 	vldr	s0, [pc, #724]	; d00518b8 <main+0x674>
d00515e6:	f003 f8c5 	bl	d0054774 <vec3>
d00515ea:	ee1a 0a10 	vmov	r0, s20
d00515ee:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d00515f2:	ed8d 1a33 	vstr	s2, [sp, #204]	; 0xcc
d00515f6:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d00515fa:	f004 fa51 	bl	d0055aa0 <entityWorldSpawn>
d00515fe:	4603      	mov	r3, r0
d0051600:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d0051604:	4649      	mov	r1, r9
d0051606:	48ad      	ldr	r0, [pc, #692]	; (d00518bc <main+0x678>)
d0051608:	ee0d 3a90 	vmov	s27, r3
d005160c:	f006 febe 	bl	d005838c <loadMeshSB3D>
d0051610:	ed9d 8a09 	vldr	s16, [sp, #36]	; 0x24
d0051614:	4649      	mov	r1, r9
d0051616:	ee18 0a10 	vmov	r0, s16
d005161a:	f004 fbd9 	bl	d0055dd0 <copyMesh>
d005161e:	ed9f 1aa8 	vldr	s2, [pc, #672]	; d00518c0 <main+0x67c>
d0051622:	eddf 0aa8 	vldr	s1, [pc, #672]	; d00518c4 <main+0x680>
d0051626:	ed9f 0aa8 	vldr	s0, [pc, #672]	; d00518c8 <main+0x684>
d005162a:	f003 f8a3 	bl	d0054774 <vec3>
d005162e:	ee18 0a10 	vmov	r0, s16
d0051632:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d0051636:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d005163a:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d005163e:	f004 fa2f 	bl	d0055aa0 <entityWorldSpawn>
d0051642:	ed9f 1a9c 	vldr	s2, [pc, #624]	; d00518b4 <main+0x670>
d0051646:	ee0c 0a90 	vmov	s25, r0
d005164a:	eef0 0a41 	vmov.f32	s1, s2
d005164e:	eeb0 0a41 	vmov.f32	s0, s2
d0051652:	eeb0 8a41 	vmov.f32	s16, s2
d0051656:	f003 f88d 	bl	d0054774 <vec3>
d005165a:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d005165e:	2001      	movs	r0, #1
d0051660:	ed8d 0a37 	vstr	s0, [sp, #220]	; 0xdc
d0051664:	edcd 0a38 	vstr	s1, [sp, #224]	; 0xe0
d0051668:	ed8d 1a39 	vstr	s2, [sp, #228]	; 0xe4
d005166c:	f004 fea8 	bl	d00563c0 <addPointLight>
d0051670:	b2c3      	uxtb	r3, r0
d0051672:	ed9f 1a96 	vldr	s2, [pc, #600]	; d00518cc <main+0x688>
d0051676:	eddf 0a96 	vldr	s1, [pc, #600]	; d00518d0 <main+0x68c>
d005167a:	4618      	mov	r0, r3
d005167c:	ed9f 0a95 	vldr	s0, [pc, #596]	; d00518d4 <main+0x690>
d0051680:	ee0d 3a10 	vmov	s26, r3
d0051684:	f004 fe6a 	bl	d005635c <lightSetRanges>
d0051688:	4643      	mov	r3, r8
d005168a:	f8dd b018 	ldr.w	fp, [sp, #24]
d005168e:	46d0      	mov	r8, sl
d0051690:	469a      	mov	sl, r3
d0051692:	eb0a 158b 	add.w	r5, sl, fp, lsl #6
d0051696:	f10b 0b01 	add.w	fp, fp, #1
d005169a:	4649      	mov	r1, r9
d005169c:	a80a      	add	r0, sp, #40	; 0x28
d005169e:	f004 fb97 	bl	d0055dd0 <copyMesh>
d00516a2:	fb06 f30b 	mul.w	r3, r6, fp
d00516a6:	f10d 0c28 	add.w	ip, sp, #40	; 0x28
d00516aa:	eef0 0a69 	vmov.f32	s1, s19
d00516ae:	ee01 3a10 	vmov	s2, r3
d00516b2:	eeb0 0a49 	vmov.f32	s0, s18
d00516b6:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d00516ba:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00516bc:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d00516c0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00516c2:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d00516c6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00516c8:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d00516cc:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d00516d0:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d00516d4:	f003 f84e 	bl	d0054774 <vec3>
d00516d8:	9b05      	ldr	r3, [sp, #20]
d00516da:	edcd 0a3b 	vstr	s1, [sp, #236]	; 0xec
d00516de:	4618      	mov	r0, r3
d00516e0:	3340      	adds	r3, #64	; 0x40
d00516e2:	ed8d 1a3c 	vstr	s2, [sp, #240]	; 0xf0
d00516e6:	ed8d 0a3a 	vstr	s0, [sp, #232]	; 0xe8
d00516ea:	9305      	str	r3, [sp, #20]
d00516ec:	f004 f9d8 	bl	d0055aa0 <entityWorldSpawn>
d00516f0:	9b04      	ldr	r3, [sp, #16]
d00516f2:	4605      	mov	r5, r0
d00516f4:	eeb0 0a68 	vmov.f32	s0, s17
d00516f8:	f843 0b04 	str.w	r0, [r3], #4
d00516fc:	9304      	str	r3, [sp, #16]
d00516fe:	f003 f83d 	bl	d005477c <degrees>
d0051702:	eeb0 1a48 	vmov.f32	s2, s16
d0051706:	4628      	mov	r0, r5
d0051708:	2101      	movs	r1, #1
d005170a:	eddf 0a6a 	vldr	s1, [pc, #424]	; d00518b4 <main+0x670>
d005170e:	f004 fb4d 	bl	d0055dac <entityRotation>
d0051712:	f1bb 0f03 	cmp.w	fp, #3
d0051716:	d1bc      	bne.n	d0051692 <main+0x44e>
d0051718:	4653      	mov	r3, sl
d005171a:	9823      	ldr	r0, [sp, #140]	; 0x8c
d005171c:	46c2      	mov	sl, r8
d005171e:	ed9f 1a6e 	vldr	s2, [pc, #440]	; d00518d8 <main+0x694>
d0051722:	f503 7590 	add.w	r5, r3, #288	; 0x120
d0051726:	4698      	mov	r8, r3
d0051728:	2300      	movs	r3, #0
d005172a:	eddf 0a6c 	vldr	s1, [pc, #432]	; d00518dc <main+0x698>
d005172e:	ed9f 0a6c 	vldr	s0, [pc, #432]	; d00518e0 <main+0x69c>
d0051732:	fa5f fa8a 	uxtb.w	sl, sl
d0051736:	9304      	str	r3, [sp, #16]
d0051738:	46c1      	mov	r9, r8
d005173a:	9005      	str	r0, [sp, #20]
d005173c:	f003 f81a 	bl	d0054774 <vec3>
d0051740:	9805      	ldr	r0, [sp, #20]
d0051742:	edcd 0a3e 	vstr	s1, [sp, #248]	; 0xf8
d0051746:	ed8d 1a3f 	vstr	s2, [sp, #252]	; 0xfc
d005174a:	ed8d 0a3d 	vstr	s0, [sp, #244]	; 0xf4
d005174e:	f004 f9ed 	bl	d0055b2c <entitySetPosition>
d0051752:	4629      	mov	r1, r5
d0051754:	ed9f 0a5b 	vldr	s0, [pc, #364]	; d00518c4 <main+0x680>
d0051758:	4862      	ldr	r0, [pc, #392]	; (d00518e4 <main+0x6a0>)
d005175a:	f006 fe17 	bl	d005838c <loadMeshSB3D>
d005175e:	ed9f 1a5e 	vldr	s2, [pc, #376]	; d00518d8 <main+0x694>
d0051762:	eddf 0a61 	vldr	s1, [pc, #388]	; d00518e8 <main+0x6a4>
d0051766:	ed9f 0a61 	vldr	s0, [pc, #388]	; d00518ec <main+0x6a8>
d005176a:	f003 f803 	bl	d0054774 <vec3>
d005176e:	4628      	mov	r0, r5
d0051770:	ed8d 0a40 	vstr	s0, [sp, #256]	; 0x100
d0051774:	edcd 0a41 	vstr	s1, [sp, #260]	; 0x104
d0051778:	ed8d 1a42 	vstr	s2, [sp, #264]	; 0x108
d005177c:	f004 f990 	bl	d0055aa0 <entityWorldSpawn>
d0051780:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d00518b4 <main+0x670>
d0051784:	4603      	mov	r3, r0
d0051786:	eef7 1a08 	vmov.f32	s3, #120	; 0x3fc00000  1.5
d005178a:	ed9f 2a59 	vldr	s4, [pc, #356]	; d00518f0 <main+0x6ac>
d005178e:	eeb0 0a41 	vmov.f32	s0, s2
d0051792:	4628      	mov	r0, r5
d0051794:	eddf 0a57 	vldr	s1, [pc, #348]	; d00518f4 <main+0x6b0>
d0051798:	ee0e 3a10 	vmov	s28, r3
d005179c:	f000 fc0a 	bl	d0051fb4 <meshSetMaterial>
d00517a0:	2301      	movs	r3, #1
d00517a2:	2215      	movs	r2, #21
d00517a4:	4954      	ldr	r1, [pc, #336]	; (d00518f8 <main+0x6b4>)
d00517a6:	a85b      	add	r0, sp, #364	; 0x16c
d00517a8:	ed9f 0a54 	vldr	s0, [pc, #336]	; d00518fc <main+0x6b8>
d00517ac:	f7ff f8d8 	bl	d0050960 <splineRailInit>
d00517b0:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d00517b4:	a85b      	add	r0, sp, #364	; 0x16c
d00517b6:	eddf 0a52 	vldr	s1, [pc, #328]	; d0051900 <main+0x6bc>
d00517ba:	ed9f 0a52 	vldr	s0, [pc, #328]	; d0051904 <main+0x6c0>
d00517be:	f7ff f8fd 	bl	d00509bc <splineRailSetTuning>
d00517c2:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d00517c6:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d00517ca:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d0051908 <main+0x6c4>
d00517ce:	a85b      	add	r0, sp, #364	; 0x16c
d00517d0:	4d4e      	ldr	r5, [pc, #312]	; (d005190c <main+0x6c8>)
d00517d2:	f7ff f8fb 	bl	d00509cc <splineRailSetBanking>
d00517d6:	2000      	movs	r0, #0
d00517d8:	f004 fe98 	bl	d005650c <enableFlatMode>
d00517dc:	7b23      	ldrb	r3, [r4, #12]
d00517de:	7b62      	ldrb	r2, [r4, #13]
d00517e0:	7ba1      	ldrb	r1, [r4, #14]
d00517e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00517e6:	7be2      	ldrb	r2, [r4, #15]
d00517e8:	6828      	ldr	r0, [r5, #0]
d00517ea:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00517ee:	ed9f 9a48 	vldr	s18, [pc, #288]	; d0051910 <main+0x6cc>
d00517f2:	eddf 9a48 	vldr	s19, [pc, #288]	; d0051914 <main+0x6d0>
d00517f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00517fa:	eddf 8a2e 	vldr	s17, [pc, #184]	; d00518b4 <main+0x670>
d00517fe:	681b      	ldr	r3, [r3, #0]
d0051800:	69db      	ldr	r3, [r3, #28]
d0051802:	4798      	blx	r3
d0051804:	7b23      	ldrb	r3, [r4, #12]
d0051806:	7b62      	ldrb	r2, [r4, #13]
d0051808:	7ba1      	ldrb	r1, [r4, #14]
d005180a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005180e:	7be2      	ldrb	r2, [r4, #15]
d0051810:	6828      	ldr	r0, [r5, #0]
d0051812:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051816:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005181a:	681b      	ldr	r3, [r3, #0]
d005181c:	699b      	ldr	r3, [r3, #24]
d005181e:	4798      	blx	r3
d0051820:	7b23      	ldrb	r3, [r4, #12]
d0051822:	7b62      	ldrb	r2, [r4, #13]
d0051824:	2001      	movs	r0, #1
d0051826:	7ba1      	ldrb	r1, [r4, #14]
d0051828:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005182c:	7be2      	ldrb	r2, [r4, #15]
d005182e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051832:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051836:	685b      	ldr	r3, [r3, #4]
d0051838:	68db      	ldr	r3, [r3, #12]
d005183a:	4798      	blx	r3
d005183c:	7b23      	ldrb	r3, [r4, #12]
d005183e:	7b62      	ldrb	r2, [r4, #13]
d0051840:	211e      	movs	r1, #30
d0051842:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051846:	7ba2      	ldrb	r2, [r4, #14]
d0051848:	4608      	mov	r0, r1
d005184a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d005184e:	7be2      	ldrb	r2, [r4, #15]
d0051850:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051854:	685b      	ldr	r3, [r3, #4]
d0051856:	689b      	ldr	r3, [r3, #8]
d0051858:	4798      	blx	r3
d005185a:	7823      	ldrb	r3, [r4, #0]
d005185c:	7862      	ldrb	r2, [r4, #1]
d005185e:	a91c      	add	r1, sp, #112	; 0x70
d0051860:	a81b      	add	r0, sp, #108	; 0x6c
d0051862:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051866:	78a2      	ldrb	r2, [r4, #2]
d0051868:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d005186c:	78e2      	ldrb	r2, [r4, #3]
d005186e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051872:	691b      	ldr	r3, [r3, #16]
d0051874:	4798      	blx	r3
d0051876:	7823      	ldrb	r3, [r4, #0]
d0051878:	7862      	ldrb	r2, [r4, #1]
d005187a:	78a1      	ldrb	r1, [r4, #2]
d005187c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051880:	78e2      	ldrb	r2, [r4, #3]
d0051882:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051886:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005188a:	69db      	ldr	r3, [r3, #28]
d005188c:	4798      	blx	r3
d005188e:	7823      	ldrb	r3, [r4, #0]
d0051890:	7862      	ldrb	r2, [r4, #1]
d0051892:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051896:	78a2      	ldrb	r2, [r4, #2]
d0051898:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d005189c:	78e2      	ldrb	r2, [r4, #3]
d005189e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00518a2:	689b      	ldr	r3, [r3, #8]
d00518a4:	4798      	blx	r3
d00518a6:	4605      	mov	r5, r0
d00518a8:	e120      	b.n	d0051aec <main+0x8a8>
d00518aa:	bf00      	nop
d00518ac:	d005a39c 	.word	0xd005a39c
d00518b0:	c2c80000 	.word	0xc2c80000
d00518b4:	00000000 	.word	0x00000000
d00518b8:	44f3c000 	.word	0x44f3c000
d00518bc:	d005a3ac 	.word	0xd005a3ac
d00518c0:	c3480000 	.word	0xc3480000
d00518c4:	42480000 	.word	0x42480000
d00518c8:	c3070000 	.word	0xc3070000
d00518cc:	44048000 	.word	0x44048000
d00518d0:	43a00000 	.word	0x43a00000
d00518d4:	42c80000 	.word	0x42c80000
d00518d8:	43480000 	.word	0x43480000
d00518dc:	42a40000 	.word	0x42a40000
d00518e0:	c3750000 	.word	0xc3750000
d00518e4:	d005a3b8 	.word	0xd005a3b8
d00518e8:	43aa0000 	.word	0x43aa0000
d00518ec:	44fa0000 	.word	0x44fa0000
d00518f0:	42800000 	.word	0x42800000
d00518f4:	3f0ccccd 	.word	0x3f0ccccd
d00518f8:	d005a454 	.word	0xd005a454
d00518fc:	43340000 	.word	0x43340000
d0051900:	3fe66666 	.word	0x3fe66666
d0051904:	3fb33333 	.word	0x3fb33333
d0051908:	3f59999a 	.word	0x3f59999a
d005190c:	d0140320 	.word	0xd0140320
d0051910:	4d7bc521 	.word	0x4d7bc521
d0051914:	42f20000 	.word	0x42f20000
d0051918:	eeb0 0a48 	vmov.f32	s0, s16
d005191c:	ee1a 1a10 	vmov	r1, s20
d0051920:	a85b      	add	r0, sp, #364	; 0x16c
d0051922:	46c8      	mov	r8, r9
d0051924:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0051928:	f7ff f858 	bl	d00509dc <splineRailUpdate>
d005192c:	9b04      	ldr	r3, [sp, #16]
d005192e:	ee1a 7a10 	vmov	r7, s20
d0051932:	2b00      	cmp	r3, #0
d0051934:	f040 82c4 	bne.w	d0051ec0 <main+0xc7c>
d0051938:	eeb0 0a68 	vmov.f32	s0, s17
d005193c:	f1b8 0f00 	cmp.w	r8, #0
d0051940:	f000 8295 	beq.w	d0051e6e <main+0xc2a>
d0051944:	49be      	ldr	r1, [pc, #760]	; (d0051c40 <main+0x9fc>)
d0051946:	2305      	movs	r3, #5
d0051948:	2215      	movs	r2, #21
d005194a:	ee1a 0a10 	vmov	r0, s20
d005194e:	7809      	ldrb	r1, [r1, #0]
d0051950:	f005 fc4a 	bl	d00571e8 <drawFakeHorizon>
d0051954:	49bb      	ldr	r1, [pc, #748]	; (d0051c44 <main+0xa00>)
d0051956:	780b      	ldrb	r3, [r1, #0]
d0051958:	2b00      	cmp	r3, #0
d005195a:	f040 82ee 	bne.w	d0051f3a <main+0xcf6>
d005195e:	48ba      	ldr	r0, [pc, #744]	; (d0051c48 <main+0xa04>)
d0051960:	2205      	movs	r2, #5
d0051962:	7803      	ldrb	r3, [r0, #0]
d0051964:	700a      	strb	r2, [r1, #0]
d0051966:	f1c3 0301 	rsb	r3, r3, #1
d005196a:	49b8      	ldr	r1, [pc, #736]	; (d0051c4c <main+0xa08>)
d005196c:	b2db      	uxtb	r3, r3
d005196e:	5cca      	ldrb	r2, [r1, r3]
d0051970:	7003      	strb	r3, [r0, #0]
d0051972:	b922      	cbnz	r2, d005197e <main+0x73a>
d0051974:	2278      	movs	r2, #120	; 0x78
d0051976:	54cd      	strb	r5, [r1, r3]
d0051978:	49b5      	ldr	r1, [pc, #724]	; (d0051c50 <main+0xa0c>)
d005197a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d005197e:	49b5      	ldr	r1, [pc, #724]	; (d0051c54 <main+0xa10>)
d0051980:	eeb0 0a68 	vmov.f32	s0, s17
d0051984:	236e      	movs	r3, #110	; 0x6e
d0051986:	2280      	movs	r2, #128	; 0x80
d0051988:	7809      	ldrb	r1, [r1, #0]
d005198a:	4638      	mov	r0, r7
d005198c:	f005 fb14 	bl	d0056fb8 <drawFakeHorizonDots>
d0051990:	7820      	ldrb	r0, [r4, #0]
d0051992:	7861      	ldrb	r1, [r4, #1]
d0051994:	78a2      	ldrb	r2, [r4, #2]
d0051996:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d005199a:	78e3      	ldrb	r3, [r4, #3]
d005199c:	4dae      	ldr	r5, [pc, #696]	; (d0051c58 <main+0xa14>)
d005199e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00519a2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00519a6:	689b      	ldr	r3, [r3, #8]
d00519a8:	4798      	blx	r3
d00519aa:	4603      	mov	r3, r0
d00519ac:	4638      	mov	r0, r7
d00519ae:	602b      	str	r3, [r5, #0]
d00519b0:	f006 fbdc 	bl	d005816c <Render3D>
d00519b4:	7820      	ldrb	r0, [r4, #0]
d00519b6:	7861      	ldrb	r1, [r4, #1]
d00519b8:	78a2      	ldrb	r2, [r4, #2]
d00519ba:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00519be:	78e3      	ldrb	r3, [r4, #3]
d00519c0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00519c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00519c8:	689b      	ldr	r3, [r3, #8]
d00519ca:	4798      	blx	r3
d00519cc:	49a3      	ldr	r1, [pc, #652]	; (d0051c5c <main+0xa18>)
d00519ce:	eef5 7a00 	vmov.f32	s15, #80	; 0x3e800000  0.250
d00519d2:	682a      	ldr	r2, [r5, #0]
d00519d4:	ed91 7a00 	vldr	s14, [r1]
d00519d8:	4da1      	ldr	r5, [pc, #644]	; (d0051c60 <main+0xa1c>)
d00519da:	1a80      	subs	r0, r0, r2
d00519dc:	ee38 8a07 	vadd.f32	s16, s16, s14
d00519e0:	4aa0      	ldr	r2, [pc, #640]	; (d0051c64 <main+0xa20>)
d00519e2:	682b      	ldr	r3, [r5, #0]
d00519e4:	6010      	str	r0, [r2, #0]
d00519e6:	eeb4 8ae7 	vcmpe.f32	s16, s15
d00519ea:	3301      	adds	r3, #1
d00519ec:	ed81 8a00 	vstr	s16, [r1]
d00519f0:	602b      	str	r3, [r5, #0]
d00519f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00519f6:	db26      	blt.n	d0051a46 <main+0x802>
d00519f8:	eddf 7a9b 	vldr	s15, [pc, #620]	; d0051c68 <main+0xa24>
d00519fc:	eeb4 8ae7 	vcmpe.f32	s16, s15
d0051a00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051a04:	f340 828e 	ble.w	d0051f24 <main+0xce0>
d0051a08:	ee07 3a90 	vmov	s15, r3
d0051a0c:	ed9f 7aab 	vldr	s14, [pc, #684]	; d0051cbc <main+0xa78>
d0051a10:	4b96      	ldr	r3, [pc, #600]	; (d0051c6c <main+0xa28>)
d0051a12:	2164      	movs	r1, #100	; 0x64
d0051a14:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0051a18:	ee67 7a87 	vmul.f32	s15, s15, s14
d0051a1c:	ee87 7a88 	vdiv.f32	s14, s15, s16
d0051a20:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d0051a24:	ee17 2a90 	vmov	r2, s15
d0051a28:	fba3 0302 	umull	r0, r3, r3, r2
d0051a2c:	095b      	lsrs	r3, r3, #5
d0051a2e:	fb01 2213 	mls	r2, r1, r3, r2
d0051a32:	498f      	ldr	r1, [pc, #572]	; (d0051c70 <main+0xa2c>)
d0051a34:	600b      	str	r3, [r1, #0]
d0051a36:	4b8f      	ldr	r3, [pc, #572]	; (d0051c74 <main+0xa30>)
d0051a38:	601a      	str	r2, [r3, #0]
d0051a3a:	2200      	movs	r2, #0
d0051a3c:	4b88      	ldr	r3, [pc, #544]	; (d0051c60 <main+0xa1c>)
d0051a3e:	601a      	str	r2, [r3, #0]
d0051a40:	4b86      	ldr	r3, [pc, #536]	; (d0051c5c <main+0xa18>)
d0051a42:	edc3 8a00 	vstr	s17, [r3]
d0051a46:	a85b      	add	r0, sp, #364	; 0x16c
d0051a48:	f44f 757a 	mov.w	r5, #1000	; 0x3e8
d0051a4c:	f7ff f9ac 	bl	d0050da8 <splineRailGetCurrentNode>
d0051a50:	4b84      	ldr	r3, [pc, #528]	; (d0051c64 <main+0xa20>)
d0051a52:	b2c6      	uxtb	r6, r0
d0051a54:	f8d3 8000 	ldr.w	r8, [r3]
d0051a58:	4b85      	ldr	r3, [pc, #532]	; (d0051c70 <main+0xa2c>)
d0051a5a:	681a      	ldr	r2, [r3, #0]
d0051a5c:	4b85      	ldr	r3, [pc, #532]	; (d0051c74 <main+0xa30>)
d0051a5e:	9207      	str	r2, [sp, #28]
d0051a60:	681b      	ldr	r3, [r3, #0]
d0051a62:	9306      	str	r3, [sp, #24]
d0051a64:	f005 faa2 	bl	d0056fac <getRenderTriCount>
d0051a68:	f8df e240 	ldr.w	lr, [pc, #576]	; d0051cac <main+0xa68>
d0051a6c:	f8df c240 	ldr.w	ip, [pc, #576]	; d0051cb0 <main+0xa6c>
d0051a70:	fbae 3108 	umull	r3, r1, lr, r8
d0051a74:	9a07      	ldr	r2, [sp, #28]
d0051a76:	9b06      	ldr	r3, [sp, #24]
d0051a78:	ea4f 4b51 	mov.w	fp, r1, lsr #17
d0051a7c:	9003      	str	r0, [sp, #12]
d0051a7e:	497e      	ldr	r1, [pc, #504]	; (d0051c78 <main+0xa34>)
d0051a80:	fb0c 8c1b 	mls	ip, ip, fp, r8
d0051a84:	487d      	ldr	r0, [pc, #500]	; (d0051c7c <main+0xa38>)
d0051a86:	9602      	str	r6, [sp, #8]
d0051a88:	fb05 f50c 	mul.w	r5, r5, ip
d0051a8c:	f8cd b000 	str.w	fp, [sp]
d0051a90:	fbae c505 	umull	ip, r5, lr, r5
d0051a94:	0c6d      	lsrs	r5, r5, #17
d0051a96:	9501      	str	r5, [sp, #4]
d0051a98:	f007 fa0e 	bl	d0058eb8 <siprintf>
d0051a9c:	4b78      	ldr	r3, [pc, #480]	; (d0051c80 <main+0xa3c>)
d0051a9e:	781b      	ldrb	r3, [r3, #0]
d0051aa0:	42b3      	cmp	r3, r6
d0051aa2:	d002      	beq.n	d0051aaa <main+0x866>
d0051aa4:	2e14      	cmp	r6, #20
d0051aa6:	f000 8240 	beq.w	d0051f2a <main+0xce6>
d0051aaa:	7b20      	ldrb	r0, [r4, #12]
d0051aac:	2100      	movs	r1, #0
d0051aae:	7b62      	ldrb	r2, [r4, #13]
d0051ab0:	7ba3      	ldrb	r3, [r4, #14]
d0051ab2:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d0051ab6:	4872      	ldr	r0, [pc, #456]	; (d0051c80 <main+0xa3c>)
d0051ab8:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0051abc:	7006      	strb	r6, [r0, #0]
d0051abe:	ea42 4603 	orr.w	r6, r2, r3, lsl #16
d0051ac2:	4608      	mov	r0, r1
d0051ac4:	4a6d      	ldr	r2, [pc, #436]	; (d0051c7c <main+0xa38>)
d0051ac6:	ea46 630c 	orr.w	r3, r6, ip, lsl #24
d0051aca:	9d05      	ldr	r5, [sp, #20]
d0051acc:	685b      	ldr	r3, [r3, #4]
d0051ace:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0051ad0:	4798      	blx	r3
d0051ad2:	7b20      	ldrb	r0, [r4, #12]
d0051ad4:	7b61      	ldrb	r1, [r4, #13]
d0051ad6:	7ba2      	ldrb	r2, [r4, #14]
d0051ad8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051adc:	7be3      	ldrb	r3, [r4, #15]
d0051ade:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051ae2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051ae6:	681b      	ldr	r3, [r3, #0]
d0051ae8:	681b      	ldr	r3, [r3, #0]
d0051aea:	4798      	blx	r3
d0051aec:	7820      	ldrb	r0, [r4, #0]
d0051aee:	7861      	ldrb	r1, [r4, #1]
d0051af0:	78a2      	ldrb	r2, [r4, #2]
d0051af2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051af6:	78e3      	ldrb	r3, [r4, #3]
d0051af8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051afc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051b00:	689b      	ldr	r3, [r3, #8]
d0051b02:	4798      	blx	r3
d0051b04:	1b43      	subs	r3, r0, r5
d0051b06:	9005      	str	r0, [sp, #20]
d0051b08:	ee08 3a10 	vmov	s16, r3
d0051b0c:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d0051b10:	eeb4 8ac9 	vcmpe.f32	s16, s18
d0051b14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b18:	f300 8195 	bgt.w	d0051e46 <main+0xc02>
d0051b1c:	eddf 7a59 	vldr	s15, [pc, #356]	; d0051c84 <main+0xa40>
d0051b20:	eeb2 aa04 	vmov.f32	s20, #36	; 0x41200000  10.0
d0051b24:	ed9f ca58 	vldr	s24, [pc, #352]	; d0051c88 <main+0xa44>
d0051b28:	ee28 8a27 	vmul.f32	s16, s16, s15
d0051b2c:	eddf ba57 	vldr	s23, [pc, #348]	; d0051c8c <main+0xa48>
d0051b30:	eddf 7a57 	vldr	s15, [pc, #348]	; d0051c90 <main+0xa4c>
d0051b34:	eddf aa57 	vldr	s21, [pc, #348]	; d0051c94 <main+0xa50>
d0051b38:	ee28 aa0a 	vmul.f32	s20, s16, s20
d0051b3c:	ed9f ba56 	vldr	s22, [pc, #344]	; d0051c98 <main+0xa54>
d0051b40:	ee68 ba2b 	vmul.f32	s23, s16, s23
d0051b44:	ee68 aa2a 	vmul.f32	s21, s16, s21
d0051b48:	ee2a ca0c 	vmul.f32	s24, s20, s24
d0051b4c:	ee28 ba0b 	vmul.f32	s22, s16, s22
d0051b50:	ee2a aa27 	vmul.f32	s20, s20, s15
d0051b54:	7820      	ldrb	r0, [r4, #0]
d0051b56:	7861      	ldrb	r1, [r4, #1]
d0051b58:	78a2      	ldrb	r2, [r4, #2]
d0051b5a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051b5e:	78e3      	ldrb	r3, [r4, #3]
d0051b60:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051b64:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051b68:	6a1b      	ldr	r3, [r3, #32]
d0051b6a:	4798      	blx	r3
d0051b6c:	7826      	ldrb	r6, [r4, #0]
d0051b6e:	7863      	ldrb	r3, [r4, #1]
d0051b70:	a91e      	add	r1, sp, #120	; 0x78
d0051b72:	78a2      	ldrb	r2, [r4, #2]
d0051b74:	4605      	mov	r5, r0
d0051b76:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d0051b7a:	78e3      	ldrb	r3, [r4, #3]
d0051b7c:	a81d      	add	r0, sp, #116	; 0x74
d0051b7e:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d0051b82:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051b86:	699b      	ldr	r3, [r3, #24]
d0051b88:	4798      	blx	r3
d0051b8a:	9a1d      	ldr	r2, [sp, #116]	; 0x74
d0051b8c:	9b1e      	ldr	r3, [sp, #120]	; 0x78
d0051b8e:	eef0 0a68 	vmov.f32	s1, s17
d0051b92:	4252      	negs	r2, r2
d0051b94:	ed9f 1a41 	vldr	s2, [pc, #260]	; d0051c9c <main+0xa58>
d0051b98:	425b      	negs	r3, r3
d0051b9a:	ed9f 0a41 	vldr	s0, [pc, #260]	; d0051ca0 <main+0xa5c>
d0051b9e:	ee07 2a90 	vmov	s15, r2
d0051ba2:	2100      	movs	r1, #0
d0051ba4:	4638      	mov	r0, r7
d0051ba6:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0051baa:	ee07 3a90 	vmov	s15, r3
d0051bae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051bb2:	ee27 1a01 	vmul.f32	s2, s14, s2
d0051bb6:	ee27 0a80 	vmul.f32	s0, s15, s0
d0051bba:	f003 fab1 	bl	d0055120 <cameraTurn>
d0051bbe:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d0051bc2:	edd9 0a37 	vldr	s1, [r9, #220]	; 0xdc
d0051bc6:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0051bca:	ee60 0a88 	vmul.f32	s1, s1, s16
d0051bce:	eef5 0a40 	vcmp.f32	s1, #0.0
d0051bd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051bd6:	f040 8168 	bne.w	d0051eaa <main+0xc66>
d0051bda:	eeb0 1a68 	vmov.f32	s2, s17
d0051bde:	eddf 0a31 	vldr	s1, [pc, #196]	; d0051ca4 <main+0xa60>
d0051be2:	eeb0 0a4c 	vmov.f32	s0, s24
d0051be6:	ee1d 0a90 	vmov	r0, s27
d0051bea:	f004 f80d 	bl	d0055c08 <entityTurnLocal>
d0051bee:	eeb0 0a4a 	vmov.f32	s0, s20
d0051bf2:	ee1d 0a90 	vmov	r0, s27
d0051bf6:	f003 ffd5 	bl	d0055ba4 <entityMoveForward>
d0051bfa:	eeb0 1a68 	vmov.f32	s2, s17
d0051bfe:	eddf 0a29 	vldr	s1, [pc, #164]	; d0051ca4 <main+0xa60>
d0051c02:	eeb0 0a6b 	vmov.f32	s0, s23
d0051c06:	ee1e 0a10 	vmov	r0, s28
d0051c0a:	f003 fffd 	bl	d0055c08 <entityTurnLocal>
d0051c0e:	eeb0 0a6a 	vmov.f32	s0, s21
d0051c12:	ee1c 0a90 	vmov	r0, s25
d0051c16:	f003 ffc5 	bl	d0055ba4 <entityMoveForward>
d0051c1a:	ee1c 0a90 	vmov	r0, s25
d0051c1e:	f003 ffa1 	bl	d0055b64 <entityGetPosition>
d0051c22:	eddf 7a21 	vldr	s15, [pc, #132]	; d0051ca8 <main+0xa64>
d0051c26:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0051c2a:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0051c2e:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0051c32:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0051c36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051c3a:	f300 8123 	bgt.w	d0051e84 <main+0xc40>
d0051c3e:	e03f      	b.n	d0051cc0 <main+0xa7c>
d0051c40:	d01402e1 	.word	0xd01402e1
d0051c44:	d005af04 	.word	0xd005af04
d0051c48:	d005afc8 	.word	0xd005afc8
d0051c4c:	d005aff4 	.word	0xd005aff4
d0051c50:	d005aff8 	.word	0xd005aff8
d0051c54:	d01402e0 	.word	0xd01402e0
d0051c58:	d005b000 	.word	0xd005b000
d0051c5c:	d005afe0 	.word	0xd005afe0
d0051c60:	d005afdc 	.word	0xd005afdc
d0051c64:	d005b004 	.word	0xd005b004
d0051c68:	3727c5ac 	.word	0x3727c5ac
d0051c6c:	51eb851f 	.word	0x51eb851f
d0051c70:	d005afe4 	.word	0xd005afe4
d0051c74:	d005afd8 	.word	0xd005afd8
d0051c78:	d005a3c4 	.word	0xd005a3c4
d0051c7c:	d005af0c 	.word	0xd005af0c
d0051c80:	d005afe9 	.word	0xd005afe9
d0051c84:	310f2a63 	.word	0x310f2a63
d0051c88:	bb449ba6 	.word	0xbb449ba6
d0051c8c:	3f99999a 	.word	0x3f99999a
d0051c90:	40d9999a 	.word	0x40d9999a
d0051c94:	43264ccd 	.word	0x43264ccd
d0051c98:	435c0000 	.word	0x435c0000
d0051c9c:	3ba3d70a 	.word	0x3ba3d70a
d0051ca0:	3c088889 	.word	0x3c088889
d0051ca4:	00000000 	.word	0x00000000
d0051ca8:	451c4000 	.word	0x451c4000
d0051cac:	45e7b273 	.word	0x45e7b273
d0051cb0:	00075300 	.word	0x00075300
d0051cb4:	44048000 	.word	0x44048000
d0051cb8:	43a00000 	.word	0x43a00000
d0051cbc:	42c80000 	.word	0x42c80000
d0051cc0:	ed9d 0a25 	vldr	s0, [sp, #148]	; 0x94
d0051cc4:	ee1d 0a10 	vmov	r0, s26
d0051cc8:	eddd 0a26 	vldr	s1, [sp, #152]	; 0x98
d0051ccc:	ed9d 1a27 	vldr	s2, [sp, #156]	; 0x9c
d0051cd0:	f004 fbe2 	bl	d0056498 <lightSetPosition>
d0051cd4:	edd9 0a31 	vldr	s1, [r9, #196]	; 0xc4
d0051cd8:	ed99 1a32 	vldr	s2, [r9, #200]	; 0xc8
d0051cdc:	4650      	mov	r0, sl
d0051cde:	ed99 0a30 	vldr	s0, [r9, #192]	; 0xc0
d0051ce2:	f004 fbd9 	bl	d0056498 <lightSetPosition>
d0051ce6:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0051cea:	4650      	mov	r0, sl
d0051cec:	f004 fbf0 	bl	d00564d0 <lightSetIntensity>
d0051cf0:	ed1f 1a10 	vldr	s2, [pc, #-64]	; d0051cb4 <main+0xa70>
d0051cf4:	ed5f 0a10 	vldr	s1, [pc, #-64]	; d0051cb8 <main+0xa74>
d0051cf8:	4650      	mov	r0, sl
d0051cfa:	ed1f 0a10 	vldr	s0, [pc, #-64]	; d0051cbc <main+0xa78>
d0051cfe:	f004 fb2d 	bl	d005635c <lightSetRanges>
d0051d02:	9b04      	ldr	r3, [sp, #16]
d0051d04:	2b00      	cmp	r3, #0
d0051d06:	f000 8105 	beq.w	d0051f14 <main+0xcd0>
d0051d0a:	f04f 0800 	mov.w	r8, #0
d0051d0e:	7820      	ldrb	r0, [r4, #0]
d0051d10:	7861      	ldrb	r1, [r4, #1]
d0051d12:	78a2      	ldrb	r2, [r4, #2]
d0051d14:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051d18:	78e3      	ldrb	r3, [r4, #3]
d0051d1a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051d1e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051d22:	69db      	ldr	r3, [r3, #28]
d0051d24:	4798      	blx	r3
d0051d26:	07ea      	lsls	r2, r5, #31
d0051d28:	f100 80ea 	bmi.w	d0051f00 <main+0xcbc>
d0051d2c:	07ab      	lsls	r3, r5, #30
d0051d2e:	f100 80dd 	bmi.w	d0051eec <main+0xca8>
d0051d32:	7b20      	ldrb	r0, [r4, #12]
d0051d34:	f005 0503 	and.w	r5, r5, #3
d0051d38:	7b61      	ldrb	r1, [r4, #13]
d0051d3a:	7ba2      	ldrb	r2, [r4, #14]
d0051d3c:	2d03      	cmp	r5, #3
d0051d3e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051d42:	7be3      	ldrb	r3, [r4, #15]
d0051d44:	bf08      	it	eq
d0051d46:	edc9 8a37 	vstreq	s17, [r9, #220]	; 0xdc
d0051d4a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051d4e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051d52:	681b      	ldr	r3, [r3, #0]
d0051d54:	68db      	ldr	r3, [r3, #12]
d0051d56:	4798      	blx	r3
d0051d58:	4a7d      	ldr	r2, [pc, #500]	; (d0051f50 <main+0xd0c>)
d0051d5a:	7813      	ldrb	r3, [r2, #0]
d0051d5c:	f1c3 0301 	rsb	r3, r3, #1
d0051d60:	b2db      	uxtb	r3, r3
d0051d62:	7013      	strb	r3, [r2, #0]
d0051d64:	7813      	ldrb	r3, [r2, #0]
d0051d66:	7b21      	ldrb	r1, [r4, #12]
d0051d68:	7b60      	ldrb	r0, [r4, #13]
d0051d6a:	7ba2      	ldrb	r2, [r4, #14]
d0051d6c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0051d70:	2b00      	cmp	r3, #0
d0051d72:	d075      	beq.n	d0051e60 <main+0xc1c>
d0051d74:	4d77      	ldr	r5, [pc, #476]	; (d0051f54 <main+0xd10>)
d0051d76:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0051d7a:	7be3      	ldrb	r3, [r4, #15]
d0051d7c:	6829      	ldr	r1, [r5, #0]
d0051d7e:	4876      	ldr	r0, [pc, #472]	; (d0051f58 <main+0xd14>)
d0051d80:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051d84:	6800      	ldr	r0, [r0, #0]
d0051d86:	f8df b210 	ldr.w	fp, [pc, #528]	; d0051f98 <main+0xd54>
d0051d8a:	ee0a 7a10 	vmov	s20, r7
d0051d8e:	681b      	ldr	r3, [r3, #0]
d0051d90:	4e72      	ldr	r6, [pc, #456]	; (d0051f5c <main+0xd18>)
d0051d92:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0051d94:	4798      	blx	r3
d0051d96:	682b      	ldr	r3, [r5, #0]
d0051d98:	2500      	movs	r5, #0
d0051d9a:	6818      	ldr	r0, [r3, #0]
d0051d9c:	f000 f91e 	bl	d0051fdc <set3DRenderBuffer>
d0051da0:	f8cd 9018 	str.w	r9, [sp, #24]
d0051da4:	46c1      	mov	r9, r8
d0051da6:	f81b 3b01 	ldrb.w	r3, [fp], #1
d0051daa:	b333      	cbz	r3, d0051dfa <main+0xbb6>
d0051dac:	f8d6 8000 	ldr.w	r8, [r6]
d0051db0:	4628      	mov	r0, r5
d0051db2:	f108 37ff 	add.w	r7, r8, #4294967295	; 0xffffffff
d0051db6:	f1b8 0f00 	cmp.w	r8, #0
d0051dba:	d024      	beq.n	d0051e06 <main+0xbc2>
d0051dbc:	6037      	str	r7, [r6, #0]
d0051dbe:	b9e7      	cbnz	r7, d0051dfa <main+0xbb6>
d0051dc0:	7c21      	ldrb	r1, [r4, #16]
d0051dc2:	7c63      	ldrb	r3, [r4, #17]
d0051dc4:	7ca2      	ldrb	r2, [r4, #18]
d0051dc6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051dca:	7ce3      	ldrb	r3, [r4, #19]
d0051dcc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051dd0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051dd4:	689b      	ldr	r3, [r3, #8]
d0051dd6:	689b      	ldr	r3, [r3, #8]
d0051dd8:	4798      	blx	r3
d0051dda:	7c21      	ldrb	r1, [r4, #16]
d0051ddc:	7c63      	ldrb	r3, [r4, #17]
d0051dde:	4628      	mov	r0, r5
d0051de0:	7ca2      	ldrb	r2, [r4, #18]
d0051de2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051de6:	7ce3      	ldrb	r3, [r4, #19]
d0051de8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051dec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051df0:	689b      	ldr	r3, [r3, #8]
d0051df2:	685b      	ldr	r3, [r3, #4]
d0051df4:	4798      	blx	r3
d0051df6:	f80b 7c01 	strb.w	r7, [fp, #-1]
d0051dfa:	3604      	adds	r6, #4
d0051dfc:	2d00      	cmp	r5, #0
d0051dfe:	f47f ad8b 	bne.w	d0051918 <main+0x6d4>
d0051e02:	2501      	movs	r5, #1
d0051e04:	e7cf      	b.n	d0051da6 <main+0xb62>
d0051e06:	f894 c010 	ldrb.w	ip, [r4, #16]
d0051e0a:	7c61      	ldrb	r1, [r4, #17]
d0051e0c:	7ca2      	ldrb	r2, [r4, #18]
d0051e0e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0051e12:	7ce3      	ldrb	r3, [r4, #19]
d0051e14:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051e18:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051e1c:	689b      	ldr	r3, [r3, #8]
d0051e1e:	689b      	ldr	r3, [r3, #8]
d0051e20:	4798      	blx	r3
d0051e22:	f894 c010 	ldrb.w	ip, [r4, #16]
d0051e26:	7c61      	ldrb	r1, [r4, #17]
d0051e28:	4628      	mov	r0, r5
d0051e2a:	7ca2      	ldrb	r2, [r4, #18]
d0051e2c:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0051e30:	7ce3      	ldrb	r3, [r4, #19]
d0051e32:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051e36:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051e3a:	689b      	ldr	r3, [r3, #8]
d0051e3c:	685b      	ldr	r3, [r3, #4]
d0051e3e:	4798      	blx	r3
d0051e40:	f80b 8c01 	strb.w	r8, [fp, #-1]
d0051e44:	e7d9      	b.n	d0051dfa <main+0xbb6>
d0051e46:	eeb0 ba69 	vmov.f32	s22, s19
d0051e4a:	eddf aa45 	vldr	s21, [pc, #276]	; d0051f60 <main+0xd1c>
d0051e4e:	eddf ba45 	vldr	s23, [pc, #276]	; d0051f64 <main+0xd20>
d0051e52:	ed9f aa45 	vldr	s20, [pc, #276]	; d0051f68 <main+0xd24>
d0051e56:	ed9f ca45 	vldr	s24, [pc, #276]	; d0051f6c <main+0xd28>
d0051e5a:	ed9f 8a45 	vldr	s16, [pc, #276]	; d0051f70 <main+0xd2c>
d0051e5e:	e679      	b.n	d0051b54 <main+0x910>
d0051e60:	4d3d      	ldr	r5, [pc, #244]	; (d0051f58 <main+0xd14>)
d0051e62:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0051e66:	7be3      	ldrb	r3, [r4, #15]
d0051e68:	6829      	ldr	r1, [r5, #0]
d0051e6a:	483a      	ldr	r0, [pc, #232]	; (d0051f54 <main+0xd10>)
d0051e6c:	e788      	b.n	d0051d80 <main+0xb3c>
d0051e6e:	4b41      	ldr	r3, [pc, #260]	; (d0051f74 <main+0xd30>)
d0051e70:	ee1a 0a10 	vmov	r0, s20
d0051e74:	4a40      	ldr	r2, [pc, #256]	; (d0051f78 <main+0xd34>)
d0051e76:	4941      	ldr	r1, [pc, #260]	; (d0051f7c <main+0xd38>)
d0051e78:	781b      	ldrb	r3, [r3, #0]
d0051e7a:	7812      	ldrb	r2, [r2, #0]
d0051e7c:	7809      	ldrb	r1, [r1, #0]
d0051e7e:	f005 f9b3 	bl	d00571e8 <drawFakeHorizon>
d0051e82:	e57c      	b.n	d005197e <main+0x73a>
d0051e84:	ed9f 1a3e 	vldr	s2, [pc, #248]	; d0051f80 <main+0xd3c>
d0051e88:	eddf 0a3e 	vldr	s1, [pc, #248]	; d0051f84 <main+0xd40>
d0051e8c:	ed9f 0a3e 	vldr	s0, [pc, #248]	; d0051f88 <main+0xd44>
d0051e90:	f002 fc70 	bl	d0054774 <vec3>
d0051e94:	ee1c 0a90 	vmov	r0, s25
d0051e98:	ed8d 0a43 	vstr	s0, [sp, #268]	; 0x10c
d0051e9c:	edcd 0a44 	vstr	s1, [sp, #272]	; 0x110
d0051ea0:	ed8d 1a45 	vstr	s2, [sp, #276]	; 0x114
d0051ea4:	f003 fe42 	bl	d0055b2c <entitySetPosition>
d0051ea8:	e70a      	b.n	d0051cc0 <main+0xa7c>
d0051eaa:	eef1 0a60 	vneg.f32	s1, s1
d0051eae:	2101      	movs	r1, #1
d0051eb0:	eeb0 1a68 	vmov.f32	s2, s17
d0051eb4:	ed9f 0a35 	vldr	s0, [pc, #212]	; d0051f8c <main+0xd48>
d0051eb8:	4638      	mov	r0, r7
d0051eba:	f003 f931 	bl	d0055120 <cameraTurn>
d0051ebe:	e68c      	b.n	d0051bda <main+0x996>
d0051ec0:	4629      	mov	r1, r5
d0051ec2:	ee1e 0a90 	vmov	r0, s29
d0051ec6:	f004 fa6d 	bl	d00563a4 <lightEnable>
d0051eca:	ee1e 0a90 	vmov	r0, s29
d0051ece:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051ed2:	f004 fafd 	bl	d00564d0 <lightSetIntensity>
d0051ed6:	4b27      	ldr	r3, [pc, #156]	; (d0051f74 <main+0xd30>)
d0051ed8:	eeb0 0a68 	vmov.f32	s0, s17
d0051edc:	2224      	movs	r2, #36	; 0x24
d0051ede:	781b      	ldrb	r3, [r3, #0]
d0051ee0:	212b      	movs	r1, #43	; 0x2b
d0051ee2:	ee1a 0a10 	vmov	r0, s20
d0051ee6:	f005 f97f 	bl	d00571e8 <drawFakeHorizon>
d0051eea:	e548      	b.n	d005197e <main+0x73a>
d0051eec:	eeb1 1a4b 	vneg.f32	s2, s22
d0051ef0:	ed9f 0a26 	vldr	s0, [pc, #152]	; d0051f8c <main+0xd48>
d0051ef4:	eef0 0a68 	vmov.f32	s1, s17
d0051ef8:	4638      	mov	r0, r7
d0051efa:	f003 faed 	bl	d00554d8 <cameraMove>
d0051efe:	e718      	b.n	d0051d32 <main+0xaee>
d0051f00:	eeb0 1a4b 	vmov.f32	s2, s22
d0051f04:	ed9f 0a21 	vldr	s0, [pc, #132]	; d0051f8c <main+0xd48>
d0051f08:	eef0 0a68 	vmov.f32	s1, s17
d0051f0c:	4638      	mov	r0, r7
d0051f0e:	f003 fae3 	bl	d00554d8 <cameraMove>
d0051f12:	e70b      	b.n	d0051d2c <main+0xae8>
d0051f14:	eeb0 0a48 	vmov.f32	s0, s16
d0051f18:	ee1e 0a90 	vmov	r0, s29
d0051f1c:	f7fe fff0 	bl	d0050f00 <weatherLightning>
d0051f20:	4680      	mov	r8, r0
d0051f22:	e6f4      	b.n	d0051d0e <main+0xaca>
d0051f24:	2200      	movs	r2, #0
d0051f26:	4613      	mov	r3, r2
d0051f28:	e583      	b.n	d0051a32 <main+0x7ee>
d0051f2a:	9b04      	ldr	r3, [sp, #16]
d0051f2c:	b14b      	cbz	r3, d0051f42 <main+0xcfe>
d0051f2e:	2200      	movs	r2, #0
d0051f30:	2317      	movs	r3, #23
d0051f32:	9204      	str	r2, [sp, #16]
d0051f34:	4a16      	ldr	r2, [pc, #88]	; (d0051f90 <main+0xd4c>)
d0051f36:	7013      	strb	r3, [r2, #0]
d0051f38:	e5b7      	b.n	d0051aaa <main+0x866>
d0051f3a:	3b01      	subs	r3, #1
d0051f3c:	4a15      	ldr	r2, [pc, #84]	; (d0051f94 <main+0xd50>)
d0051f3e:	7013      	strb	r3, [r2, #0]
d0051f40:	e51d      	b.n	d005197e <main+0x73a>
d0051f42:	2201      	movs	r2, #1
d0051f44:	2302      	movs	r3, #2
d0051f46:	9204      	str	r2, [sp, #16]
d0051f48:	4a11      	ldr	r2, [pc, #68]	; (d0051f90 <main+0xd4c>)
d0051f4a:	7013      	strb	r3, [r2, #0]
d0051f4c:	e5ad      	b.n	d0051aaa <main+0x866>
d0051f4e:	bf00      	nop
d0051f50:	d005afe8 	.word	0xd005afe8
d0051f54:	d0140300 	.word	0xd0140300
d0051f58:	d0140320 	.word	0xd0140320
d0051f5c:	d005aff8 	.word	0xd005aff8
d0051f60:	42b6ee15 	.word	0x42b6ee15
d0051f64:	3f28f5c3 	.word	0x3f28f5c3
d0051f68:	4215999a 	.word	0x4215999a
d0051f6c:	bc872b02 	.word	0xbc872b02
d0051f70:	3f0ccccd 	.word	0x3f0ccccd
d0051f74:	d01402e2 	.word	0xd01402e2
d0051f78:	d01402a0 	.word	0xd01402a0
d0051f7c:	d01402e1 	.word	0xd01402e1
d0051f80:	c3c80000 	.word	0xc3c80000
d0051f84:	42480000 	.word	0x42480000
d0051f88:	c3070000 	.word	0xc3070000
d0051f8c:	00000000 	.word	0x00000000
d0051f90:	d01402e0 	.word	0xd01402e0
d0051f94:	d005af04 	.word	0xd005af04
d0051f98:	d005aff4 	.word	0xd005aff4

d0051f9c <meshSetDefaultMaterial>:
d0051f9c:	b148      	cbz	r0, d0051fb2 <meshSetDefaultMaterial+0x16>
d0051f9e:	2300      	movs	r3, #0
d0051fa0:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0051fa4:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d0051fa8:	6203      	str	r3, [r0, #32]
d0051faa:	6241      	str	r1, [r0, #36]	; 0x24
d0051fac:	62c2      	str	r2, [r0, #44]	; 0x2c
d0051fae:	6303      	str	r3, [r0, #48]	; 0x30
d0051fb0:	6283      	str	r3, [r0, #40]	; 0x28
d0051fb2:	4770      	bx	lr

d0051fb4 <meshSetMaterial>:
d0051fb4:	b148      	cbz	r0, d0051fca <meshSetMaterial+0x16>
d0051fb6:	ed80 0a08 	vstr	s0, [r0, #32]
d0051fba:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0051fbe:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d0051fc2:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d0051fc6:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d0051fca:	4770      	bx	lr

d0051fcc <resetDepthBuffer>:
d0051fcc:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d0051fd0:	21ff      	movs	r1, #255	; 0xff
d0051fd2:	4801      	ldr	r0, [pc, #4]	; (d0051fd8 <resetDepthBuffer+0xc>)
d0051fd4:	f006 bdf0 	b.w	d0058bb8 <memset>
d0051fd8:	d005b020 	.word	0xd005b020

d0051fdc <set3DRenderBuffer>:
d0051fdc:	4b01      	ldr	r3, [pc, #4]	; (d0051fe4 <set3DRenderBuffer+0x8>)
d0051fde:	6018      	str	r0, [r3, #0]
d0051fe0:	4770      	bx	lr
d0051fe2:	bf00      	nop
d0051fe4:	d0140324 	.word	0xd0140324

d0051fe8 <putPixel>:
d0051fe8:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0051fec:	d209      	bcs.n	d0052002 <putPixel+0x1a>
d0051fee:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0051ff2:	d206      	bcs.n	d0052002 <putPixel+0x1a>
d0051ff4:	4b03      	ldr	r3, [pc, #12]	; (d0052004 <putPixel+0x1c>)
d0051ff6:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0051ffa:	681b      	ldr	r3, [r3, #0]
d0051ffc:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0052000:	5442      	strb	r2, [r0, r1]
d0052002:	4770      	bx	lr
d0052004:	d0140324 	.word	0xd0140324

d0052008 <drawLine>:
d0052008:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005200c:	b085      	sub	sp, #20
d005200e:	eba2 0c00 	sub.w	ip, r2, r0
d0052012:	eba3 0901 	sub.w	r9, r3, r1
d0052016:	f240 1edf 	movw	lr, #479	; 0x1df
d005201a:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d005201e:	f240 1a3f 	movw	sl, #319	; 0x13f
d0052022:	f8df b07c 	ldr.w	fp, [pc, #124]	; d00520a0 <drawLine+0x98>
d0052026:	9401      	str	r4, [sp, #4]
d0052028:	4282      	cmp	r2, r0
d005202a:	bfcc      	ite	gt
d005202c:	2401      	movgt	r4, #1
d005202e:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0052032:	9402      	str	r4, [sp, #8]
d0052034:	428b      	cmp	r3, r1
d0052036:	bfcc      	ite	gt
d0052038:	2401      	movgt	r4, #1
d005203a:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d005203e:	f1bc 0f00 	cmp.w	ip, #0
d0052042:	9403      	str	r4, [sp, #12]
d0052044:	bfb8      	it	lt
d0052046:	f1cc 0c00 	rsblt	ip, ip, #0
d005204a:	f1b9 0f00 	cmp.w	r9, #0
d005204e:	bfb8      	it	lt
d0052050:	f1c9 0900 	rsblt	r9, r9, #0
d0052054:	ebac 0409 	sub.w	r4, ip, r9
d0052058:	f1c9 0800 	rsb	r8, r9, #0
d005205c:	4570      	cmp	r0, lr
d005205e:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d0052062:	ea4f 0644 	mov.w	r6, r4, lsl #1
d0052066:	d807      	bhi.n	d0052078 <drawLine+0x70>
d0052068:	4551      	cmp	r1, sl
d005206a:	d805      	bhi.n	d0052078 <drawLine+0x70>
d005206c:	f8db 5000 	ldr.w	r5, [fp]
d0052070:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d0052074:	9f01      	ldr	r7, [sp, #4]
d0052076:	546f      	strb	r7, [r5, r1]
d0052078:	4290      	cmp	r0, r2
d005207a:	d101      	bne.n	d0052080 <drawLine+0x78>
d005207c:	4299      	cmp	r1, r3
d005207e:	d00c      	beq.n	d005209a <drawLine+0x92>
d0052080:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d0052084:	dc05      	bgt.n	d0052092 <drawLine+0x8a>
d0052086:	9d02      	ldr	r5, [sp, #8]
d0052088:	45b4      	cmp	ip, r6
d005208a:	eba4 0409 	sub.w	r4, r4, r9
d005208e:	4428      	add	r0, r5
d0052090:	dbe4      	blt.n	d005205c <drawLine+0x54>
d0052092:	9d03      	ldr	r5, [sp, #12]
d0052094:	4464      	add	r4, ip
d0052096:	4429      	add	r1, r5
d0052098:	e7e0      	b.n	d005205c <drawLine+0x54>
d005209a:	b005      	add	sp, #20
d005209c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00520a0:	d0140324 	.word	0xd0140324

d00520a4 <shadeColor>:
d00520a4:	2900      	cmp	r1, #0
d00520a6:	db09      	blt.n	d00520bc <shadeColor+0x18>
d00520a8:	2904      	cmp	r1, #4
d00520aa:	dc09      	bgt.n	d00520c0 <shadeColor+0x1c>
d00520ac:	0109      	lsls	r1, r1, #4
d00520ae:	b2c9      	uxtb	r1, r1
d00520b0:	f000 000f 	and.w	r0, r0, #15
d00520b4:	3020      	adds	r0, #32
d00520b6:	4408      	add	r0, r1
d00520b8:	b2c0      	uxtb	r0, r0
d00520ba:	4770      	bx	lr
d00520bc:	2100      	movs	r1, #0
d00520be:	e7f7      	b.n	d00520b0 <shadeColor+0xc>
d00520c0:	2010      	movs	r0, #16
d00520c2:	4770      	bx	lr

d00520c4 <fillTriangleFlat>:
d00520c4:	eddf 7ad1 	vldr	s15, [pc, #836]	; d005240c <fillTriangleFlat+0x348>
d00520c8:	eef4 0ae7 	vcmpe.f32	s1, s15
d00520cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00520d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00520d4:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00520d8:	ed2d 8b10 	vpush	{d8-d15}
d00520dc:	b089      	sub	sp, #36	; 0x24
d00520de:	9304      	str	r3, [sp, #16]
d00520e0:	bf94      	ite	ls
d00520e2:	2301      	movls	r3, #1
d00520e4:	2300      	movhi	r3, #0
d00520e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00520ea:	9001      	str	r0, [sp, #4]
d00520ec:	9102      	str	r1, [sp, #8]
d00520ee:	bf98      	it	ls
d00520f0:	f043 0301 	orrls.w	r3, r3, #1
d00520f4:	9203      	str	r2, [sp, #12]
d00520f6:	f8bd 4090 	ldrh.w	r4, [sp, #144]	; 0x90
d00520fa:	f8bd 0094 	ldrh.w	r0, [sp, #148]	; 0x94
d00520fe:	f8bd 1098 	ldrh.w	r1, [sp, #152]	; 0x98
d0052102:	f89d 209c 	ldrb.w	r2, [sp, #156]	; 0x9c
d0052106:	2b00      	cmp	r3, #0
d0052108:	f040 8154 	bne.w	d00523b4 <fillTriangleFlat+0x2f0>
d005210c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0052110:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052114:	bf94      	ite	ls
d0052116:	2701      	movls	r7, #1
d0052118:	2700      	movhi	r7, #0
d005211a:	f240 814b 	bls.w	d00523b4 <fillTriangleFlat+0x2f0>
d005211e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052122:	ee07 4a10 	vmov	s14, r4
d0052126:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005212a:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d005212e:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0052132:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0052136:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d005213a:	ee07 0a90 	vmov	s15, r0
d005213e:	ee71 1aa6 	vadd.f32	s3, s3, s13
d0052142:	eef8 5a67 	vcvt.f32.u32	s11, s15
d0052146:	ee07 1a90 	vmov	s15, r1
d005214a:	ee27 7a08 	vmul.f32	s14, s14, s16
d005214e:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d0052152:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d0052156:	ee23 3a02 	vmul.f32	s6, s6, s4
d005215a:	ee17 3a90 	vmov	r3, s15
d005215e:	2b00      	cmp	r3, #0
d0052160:	ee65 5a80 	vmul.f32	s11, s11, s0
d0052164:	f2c0 812d 	blt.w	d00523c2 <fillTriangleFlat+0x2fe>
d0052168:	2b04      	cmp	r3, #4
d005216a:	f340 8128 	ble.w	d00523be <fillTriangleFlat+0x2fa>
d005216e:	2710      	movs	r7, #16
d0052170:	eddd 7a02 	vldr	s15, [sp, #8]
d0052174:	eddd 6a23 	vldr	s13, [sp, #140]	; 0x8c
d0052178:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d005217c:	eddd 7a04 	vldr	s15, [sp, #16]
d0052180:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0052184:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0052188:	eddd 7a01 	vldr	s15, [sp, #4]
d005218c:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0052190:	eddd 7a03 	vldr	s15, [sp, #12]
d0052194:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0052198:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d005219c:	eddd 7a22 	vldr	s15, [sp, #136]	; 0x88
d00521a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00521a4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00521a8:	f300 8111 	bgt.w	d00523ce <fillTriangleFlat+0x30a>
d00521ac:	eeb4 5ae6 	vcmpe.f32	s10, s13
d00521b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00521b4:	f300 81ee 	bgt.w	d0052594 <fillTriangleFlat+0x4d0>
d00521b8:	eef4 3ae6 	vcmpe.f32	s7, s13
d00521bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00521c0:	dd17      	ble.n	d00521f2 <fillTriangleFlat+0x12e>
d00521c2:	eeb0 1a65 	vmov.f32	s2, s11
d00521c6:	eef0 1a40 	vmov.f32	s3, s0
d00521ca:	eef0 2a63 	vmov.f32	s5, s7
d00521ce:	eeb0 4a64 	vmov.f32	s8, s9
d00521d2:	eef0 5a43 	vmov.f32	s11, s6
d00521d6:	eeb0 0a42 	vmov.f32	s0, s4
d00521da:	eef0 3a66 	vmov.f32	s7, s13
d00521de:	eef0 4a67 	vmov.f32	s9, s15
d00521e2:	eeb0 3a41 	vmov.f32	s6, s2
d00521e6:	eeb0 2a61 	vmov.f32	s4, s3
d00521ea:	eef0 6a62 	vmov.f32	s13, s5
d00521ee:	eef0 7a44 	vmov.f32	s15, s8
d00521f2:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00521f6:	ee75 2a04 	vadd.f32	s5, s10, s8
d00521fa:	ee36 4a84 	vadd.f32	s8, s13, s8
d00521fe:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0052202:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0052206:	ee12 3a90 	vmov	r3, s5
d005220a:	ee14 2a10 	vmov	r2, s8
d005220e:	4293      	cmp	r3, r2
d0052210:	f000 80d0 	beq.w	d00523b4 <fillTriangleFlat+0x2f0>
d0052214:	ee76 2ac5 	vsub.f32	s5, s13, s10
d0052218:	ed9f 9a7c 	vldr	s18, [pc, #496]	; d005240c <fillTriangleFlat+0x348>
d005221c:	eef4 2ac9 	vcmpe.f32	s5, s18
d0052220:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052224:	f240 80c6 	bls.w	d00523b4 <fillTriangleFlat+0x2f0>
d0052228:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d005222c:	ee37 1ac6 	vsub.f32	s2, s15, s12
d0052230:	ee72 0a48 	vsub.f32	s1, s4, s16
d0052234:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0052238:	ee73 2ac5 	vsub.f32	s5, s7, s10
d005223c:	ee73 8a47 	vsub.f32	s17, s6, s14
d0052240:	eef4 2ac9 	vcmpe.f32	s5, s18
d0052244:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052248:	ee21 1a04 	vmul.f32	s2, s2, s8
d005224c:	ee60 0a84 	vmul.f32	s1, s1, s8
d0052250:	ee68 8a84 	vmul.f32	s17, s17, s8
d0052254:	f300 80e2 	bgt.w	d005241c <fillTriangleFlat+0x358>
d0052258:	ee36 4ae3 	vsub.f32	s8, s13, s7
d005225c:	eeb4 4ac9 	vcmpe.f32	s8, s18
d0052260:	ed8d 4a01 	vstr	s8, [sp, #4]
d0052264:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052268:	f340 80a4 	ble.w	d00523b4 <fillTriangleFlat+0x2f0>
d005226c:	eec1 9a84 	vdiv.f32	s19, s3, s8
d0052270:	eef4 2ac9 	vcmpe.f32	s5, s18
d0052274:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0052278:	ee32 4a40 	vsub.f32	s8, s4, s0
d005227c:	ee33 3a65 	vsub.f32	s6, s6, s11
d0052280:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052284:	ee67 eaa9 	vmul.f32	s29, s15, s19
d0052288:	ee64 fa29 	vmul.f32	s31, s8, s19
d005228c:	ee23 fa29 	vmul.f32	s30, s6, s19
d0052290:	f300 8315 	bgt.w	d00528be <fillTriangleFlat+0x7fa>
d0052294:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0052298:	edcd 7a02 	vstr	s15, [sp, #8]
d005229c:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00522a0:	f240 133f 	movw	r3, #319	; 0x13f
d00522a4:	9a02      	ldr	r2, [sp, #8]
d00522a6:	ee17 ea90 	vmov	lr, s15
d00522aa:	ea22 7be2 	bic.w	fp, r2, r2, asr #31
d00522ae:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d00522b2:	459e      	cmp	lr, r3
d00522b4:	bfa8      	it	ge
d00522b6:	469e      	movge	lr, r3
d00522b8:	45f3      	cmp	fp, lr
d00522ba:	dc7b      	bgt.n	d00523b4 <fillTriangleFlat+0x2f0>
d00522bc:	ee07 ba90 	vmov	s15, fp
d00522c0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00522c4:	f10e 0e01 	add.w	lr, lr, #1
d00522c8:	ed9f 9a50 	vldr	s18, [pc, #320]	; d005240c <fillTriangleFlat+0x348>
d00522cc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00522d0:	eddf 1a4f 	vldr	s3, [pc, #316]	; d0052410 <fillTriangleFlat+0x34c>
d00522d4:	ed9f 2a4f 	vldr	s4, [pc, #316]	; d0052414 <fillTriangleFlat+0x350>
d00522d8:	eddf 9a4f 	vldr	s19, [pc, #316]	; d0052418 <fillTriangleFlat+0x354>
d00522dc:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00522e0:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00522e4:	ee77 3ae3 	vsub.f32	s7, s15, s7
d00522e8:	eea1 6a05 	vfma.f32	s12, s2, s10
d00522ec:	eea0 8a85 	vfma.f32	s16, s1, s10
d00522f0:	eea8 7a85 	vfma.f32	s14, s17, s10
d00522f4:	eee3 4aae 	vfma.f32	s9, s7, s29
d00522f8:	eea3 0aaf 	vfma.f32	s0, s7, s31
d00522fc:	eeef 5a23 	vfma.f32	s11, s30, s7
d0052300:	e032      	b.n	d0052368 <fillTriangleFlat+0x2a4>
d0052302:	eef0 3a47 	vmov.f32	s7, s14
d0052306:	eef0 2a48 	vmov.f32	s5, s16
d005230a:	eef0 6a46 	vmov.f32	s13, s12
d005230e:	eeb0 3a65 	vmov.f32	s6, s11
d0052312:	eeb0 5a40 	vmov.f32	s10, s0
d0052316:	eeb0 4a64 	vmov.f32	s8, s9
d005231a:	fefa 7a66 	vrintp.f32	s15, s13
d005231e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052322:	f240 13df 	movw	r3, #479	; 0x1df
d0052326:	ee17 6a90 	vmov	r6, s15
d005232a:	fefa 7a44 	vrintp.f32	s15, s8
d005232e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052332:	3e01      	subs	r6, #1
d0052334:	ee17 4a90 	vmov	r4, s15
d0052338:	429e      	cmp	r6, r3
d005233a:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d005233e:	bfa8      	it	ge
d0052340:	461e      	movge	r6, r3
d0052342:	42a6      	cmp	r6, r4
d0052344:	f280 8158 	bge.w	d00525f8 <fillTriangleFlat+0x534>
d0052348:	f10b 0b01 	add.w	fp, fp, #1
d005234c:	ee36 6a01 	vadd.f32	s12, s12, s2
d0052350:	ee38 8a20 	vadd.f32	s16, s16, s1
d0052354:	45f3      	cmp	fp, lr
d0052356:	ee37 7a28 	vadd.f32	s14, s14, s17
d005235a:	ee74 4aae 	vadd.f32	s9, s9, s29
d005235e:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0052362:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0052366:	d025      	beq.n	d00523b4 <fillTriangleFlat+0x2f0>
d0052368:	eeb4 6ae4 	vcmpe.f32	s12, s9
d005236c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052370:	dcc7      	bgt.n	d0052302 <fillTriangleFlat+0x23e>
d0052372:	eef0 3a65 	vmov.f32	s7, s11
d0052376:	eef0 2a40 	vmov.f32	s5, s0
d005237a:	eef0 6a64 	vmov.f32	s13, s9
d005237e:	eeb0 3a47 	vmov.f32	s6, s14
d0052382:	eeb0 5a48 	vmov.f32	s10, s16
d0052386:	eeb0 4a46 	vmov.f32	s8, s12
d005238a:	e7c6      	b.n	d005231a <fillTriangleFlat+0x256>
d005238c:	eddd 6a03 	vldr	s13, [sp, #12]
d0052390:	eddd 4a04 	vldr	s9, [sp, #16]
d0052394:	ed9d 7a05 	vldr	s14, [sp, #20]
d0052398:	ed9d 8a06 	vldr	s16, [sp, #24]
d005239c:	ed9d 5a07 	vldr	s10, [sp, #28]
d00523a0:	eddf 7a1a 	vldr	s15, [pc, #104]	; d005240c <fillTriangleFlat+0x348>
d00523a4:	ed9d 4a01 	vldr	s8, [sp, #4]
d00523a8:	eeb4 4ae7 	vcmpe.f32	s8, s15
d00523ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00523b0:	f73f af74 	bgt.w	d005229c <fillTriangleFlat+0x1d8>
d00523b4:	b009      	add	sp, #36	; 0x24
d00523b6:	ecbd 8b10 	vpop	{d8-d15}
d00523ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00523be:	011b      	lsls	r3, r3, #4
d00523c0:	b2df      	uxtb	r7, r3
d00523c2:	f002 020f 	and.w	r2, r2, #15
d00523c6:	3220      	adds	r2, #32
d00523c8:	4417      	add	r7, r2
d00523ca:	b2ff      	uxtb	r7, r7
d00523cc:	e6d0      	b.n	d0052170 <fillTriangleFlat+0xac>
d00523ce:	eef4 3ae6 	vcmpe.f32	s7, s13
d00523d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00523d6:	f340 80f6 	ble.w	d00525c6 <fillTriangleFlat+0x502>
d00523da:	eeb0 1a43 	vmov.f32	s2, s6
d00523de:	eef0 1a42 	vmov.f32	s3, s4
d00523e2:	eef0 2a66 	vmov.f32	s5, s13
d00523e6:	eeb0 4a67 	vmov.f32	s8, s15
d00523ea:	eeb0 3a47 	vmov.f32	s6, s14
d00523ee:	eeb0 2a48 	vmov.f32	s4, s16
d00523f2:	eef0 6a45 	vmov.f32	s13, s10
d00523f6:	eef0 7a46 	vmov.f32	s15, s12
d00523fa:	eeb0 7a41 	vmov.f32	s14, s2
d00523fe:	eeb0 8a61 	vmov.f32	s16, s3
d0052402:	eeb0 5a62 	vmov.f32	s10, s5
d0052406:	eeb0 6a44 	vmov.f32	s12, s8
d005240a:	e6f2      	b.n	d00521f2 <fillTriangleFlat+0x12e>
d005240c:	38d1b717 	.word	0x38d1b717
d0052410:	33d6bf95 	.word	0x33d6bf95
d0052414:	00000000 	.word	0x00000000
d0052418:	477fff00 	.word	0x477fff00
d005241c:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0052420:	ee76 aae3 	vsub.f32	s21, s13, s7
d0052424:	ee34 aac6 	vsub.f32	s20, s9, s12
d0052428:	ee70 9a48 	vsub.f32	s19, s0, s16
d005242c:	ee75 2ac7 	vsub.f32	s5, s11, s14
d0052430:	edcd aa01 	vstr	s21, [sp, #4]
d0052434:	eef4 aac9 	vcmpe.f32	s21, s18
d0052438:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005243c:	ee2a aa04 	vmul.f32	s20, s20, s8
d0052440:	ee69 9a84 	vmul.f32	s19, s19, s8
d0052444:	ee22 4a84 	vmul.f32	s8, s5, s8
d0052448:	eeb0 ba4a 	vmov.f32	s22, s20
d005244c:	eef0 da44 	vmov.f32	s27, s8
d0052450:	f340 822e 	ble.w	d00528b0 <fillTriangleFlat+0x7ec>
d0052454:	eec1 2aaa 	vdiv.f32	s5, s3, s21
d0052458:	ee77 7ae4 	vsub.f32	s15, s15, s9
d005245c:	ee32 4a40 	vsub.f32	s8, s4, s0
d0052460:	ee33 3a65 	vsub.f32	s6, s6, s11
d0052464:	ee67 eaa2 	vmul.f32	s29, s15, s5
d0052468:	ee64 fa22 	vmul.f32	s31, s8, s5
d005246c:	ee23 fa22 	vmul.f32	s30, s6, s5
d0052470:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0052474:	f240 133f 	movw	r3, #319	; 0x13f
d0052478:	ee17 2a90 	vmov	r2, s15
d005247c:	edcd 7a02 	vstr	s15, [sp, #8]
d0052480:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0052484:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d0052488:	ee17 aa90 	vmov	sl, s15
d005248c:	459b      	cmp	fp, r3
d005248e:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d0052492:	bfa8      	it	ge
d0052494:	469b      	movge	fp, r3
d0052496:	45d3      	cmp	fp, sl
d0052498:	db82      	blt.n	d00523a0 <fillTriangleFlat+0x2dc>
d005249a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005249e:	f10b 0b01 	add.w	fp, fp, #1
d00524a2:	eeb0 aa46 	vmov.f32	s20, s12
d00524a6:	ed1f da26 	vldr	s26, [pc, #-152]	; d0052410 <fillTriangleFlat+0x34c>
d00524aa:	eef0 aa46 	vmov.f32	s21, s12
d00524ae:	ed1f 3a27 	vldr	s6, [pc, #-156]	; d0052414 <fillTriangleFlat+0x350>
d00524b2:	ee37 4ac5 	vsub.f32	s8, s15, s10
d00524b6:	ee07 aa90 	vmov	s15, sl
d00524ba:	eef0 ca48 	vmov.f32	s25, s16
d00524be:	ed1f 2a2a 	vldr	s4, [pc, #-168]	; d0052418 <fillTriangleFlat+0x354>
d00524c2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00524c6:	edcd 6a03 	vstr	s13, [sp, #12]
d00524ca:	eeb0 ca47 	vmov.f32	s24, s14
d00524ce:	edcd 4a04 	vstr	s9, [sp, #16]
d00524d2:	eeb0 9a4b 	vmov.f32	s18, s22
d00524d6:	ed8d 7a05 	vstr	s14, [sp, #20]
d00524da:	ee77 7a84 	vadd.f32	s15, s15, s8
d00524de:	ed8d 8a06 	vstr	s16, [sp, #24]
d00524e2:	eef0 ba48 	vmov.f32	s23, s16
d00524e6:	ed8d 5a07 	vstr	s10, [sp, #28]
d00524ea:	eea7 aa8b 	vfma.f32	s20, s15, s22
d00524ee:	eeb0 ba47 	vmov.f32	s22, s14
d00524f2:	eee1 aa27 	vfma.f32	s21, s2, s15
d00524f6:	eee0 caa7 	vfma.f32	s25, s1, s15
d00524fa:	eea8 caa7 	vfma.f32	s24, s17, s15
d00524fe:	eee7 baa9 	vfma.f32	s23, s15, s19
d0052502:	eea7 baad 	vfma.f32	s22, s15, s27
d0052506:	e033      	b.n	d0052570 <fillTriangleFlat+0x4ac>
d0052508:	eeb0 4a4c 	vmov.f32	s8, s24
d005250c:	eef0 4a6c 	vmov.f32	s9, s25
d0052510:	eef0 7a6a 	vmov.f32	s15, s21
d0052514:	eeb0 5a4b 	vmov.f32	s10, s22
d0052518:	eeb0 7a6b 	vmov.f32	s14, s23
d005251c:	eef0 6a4a 	vmov.f32	s13, s20
d0052520:	fefa 2a67 	vrintp.f32	s5, s15
d0052524:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0052528:	f240 13df 	movw	r3, #479	; 0x1df
d005252c:	ee12 6a90 	vmov	r6, s5
d0052530:	fefa 2a66 	vrintp.f32	s5, s13
d0052534:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0052538:	3e01      	subs	r6, #1
d005253a:	ee12 4a90 	vmov	r4, s5
d005253e:	429e      	cmp	r6, r3
d0052540:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0052544:	bfa8      	it	ge
d0052546:	461e      	movge	r6, r3
d0052548:	42a6      	cmp	r6, r4
d005254a:	f280 80fd 	bge.w	d0052748 <fillTriangleFlat+0x684>
d005254e:	f10a 0a01 	add.w	sl, sl, #1
d0052552:	ee7a aa81 	vadd.f32	s21, s21, s2
d0052556:	ee7c caa0 	vadd.f32	s25, s25, s1
d005255a:	45da      	cmp	sl, fp
d005255c:	ee3c ca28 	vadd.f32	s24, s24, s17
d0052560:	ee3a aa09 	vadd.f32	s20, s20, s18
d0052564:	ee7b baa9 	vadd.f32	s23, s23, s19
d0052568:	ee3b ba2d 	vadd.f32	s22, s22, s27
d005256c:	f43f af0e 	beq.w	d005238c <fillTriangleFlat+0x2c8>
d0052570:	eef4 aaca 	vcmpe.f32	s21, s20
d0052574:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052578:	dcc6      	bgt.n	d0052508 <fillTriangleFlat+0x444>
d005257a:	eeb0 4a4b 	vmov.f32	s8, s22
d005257e:	eef0 4a6b 	vmov.f32	s9, s23
d0052582:	eef0 7a4a 	vmov.f32	s15, s20
d0052586:	eeb0 5a4c 	vmov.f32	s10, s24
d005258a:	eeb0 7a6c 	vmov.f32	s14, s25
d005258e:	eef0 6a6a 	vmov.f32	s13, s21
d0052592:	e7c5      	b.n	d0052520 <fillTriangleFlat+0x45c>
d0052594:	eeb0 1a47 	vmov.f32	s2, s14
d0052598:	eef0 1a48 	vmov.f32	s3, s16
d005259c:	eef0 2a45 	vmov.f32	s5, s10
d00525a0:	eeb0 4a46 	vmov.f32	s8, s12
d00525a4:	eeb0 7a43 	vmov.f32	s14, s6
d00525a8:	eeb0 8a42 	vmov.f32	s16, s4
d00525ac:	eeb0 5a66 	vmov.f32	s10, s13
d00525b0:	eeb0 6a67 	vmov.f32	s12, s15
d00525b4:	eeb0 3a41 	vmov.f32	s6, s2
d00525b8:	eeb0 2a61 	vmov.f32	s4, s3
d00525bc:	eef0 6a62 	vmov.f32	s13, s5
d00525c0:	eef0 7a44 	vmov.f32	s15, s8
d00525c4:	e5f8      	b.n	d00521b8 <fillTriangleFlat+0xf4>
d00525c6:	eeb0 1a47 	vmov.f32	s2, s14
d00525ca:	eef0 1a48 	vmov.f32	s3, s16
d00525ce:	eef0 2a45 	vmov.f32	s5, s10
d00525d2:	eeb0 4a46 	vmov.f32	s8, s12
d00525d6:	eeb0 7a65 	vmov.f32	s14, s11
d00525da:	eeb0 8a40 	vmov.f32	s16, s0
d00525de:	eeb0 5a63 	vmov.f32	s10, s7
d00525e2:	eeb0 6a64 	vmov.f32	s12, s9
d00525e6:	eef0 5a41 	vmov.f32	s11, s2
d00525ea:	eeb0 0a61 	vmov.f32	s0, s3
d00525ee:	eef0 3a62 	vmov.f32	s7, s5
d00525f2:	eef0 4a44 	vmov.f32	s9, s8
d00525f6:	e5df      	b.n	d00521b8 <fillTriangleFlat+0xf4>
d00525f8:	ee76 6ac4 	vsub.f32	s13, s13, s8
d00525fc:	eef4 6ac9 	vcmpe.f32	s13, s18
d0052600:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052604:	f340 814f 	ble.w	d00528a6 <fillTriangleFlat+0x7e2>
d0052608:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005260c:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0052610:	ee73 3ac3 	vsub.f32	s7, s7, s6
d0052614:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0052618:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005261c:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0052620:	ee07 4a90 	vmov	s15, r4
d0052624:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052628:	ee77 7a84 	vadd.f32	s15, s15, s8
d005262c:	ee62 2a8a 	vmul.f32	s5, s5, s20
d0052630:	ee23 aa8a 	vmul.f32	s20, s7, s20
d0052634:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0052638:	eea7 3a8a 	vfma.f32	s6, s15, s20
d005263c:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0052640:	4ba3      	ldr	r3, [pc, #652]	; (d00528d0 <fillTriangleFlat+0x80c>)
d0052642:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0052646:	4aa3      	ldr	r2, [pc, #652]	; (d00528d4 <fillTriangleFlat+0x810>)
d0052648:	681b      	ldr	r3, [r3, #0]
d005264a:	eb04 1848 	add.w	r8, r4, r8, lsl #5
d005264e:	eb0b 1c8c 	add.w	ip, fp, ip, lsl #6
d0052652:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d0052656:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d005265a:	449c      	add	ip, r3
d005265c:	e011      	b.n	d0052682 <fillTriangleFlat+0x5be>
d005265e:	ee07 1a90 	vmov	s15, r1
d0052662:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052666:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d005266a:	440c      	add	r4, r1
d005266c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052670:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0052674:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0052678:	eea7 3a8a 	vfma.f32	s6, s15, s20
d005267c:	42a6      	cmp	r6, r4
d005267e:	f6ff ae63 	blt.w	d0052348 <fillTriangleFlat+0x284>
d0052682:	eba6 0904 	sub.w	r9, r6, r4
d0052686:	eeb4 5ae1 	vcmpe.f32	s10, s3
d005268a:	f109 0101 	add.w	r1, r9, #1
d005268e:	2930      	cmp	r1, #48	; 0x30
d0052690:	bfa8      	it	ge
d0052692:	2130      	movge	r1, #48	; 0x30
d0052694:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052698:	d9e1      	bls.n	d005265e <fillTriangleFlat+0x59a>
d005269a:	f1b9 0f00 	cmp.w	r9, #0
d005269e:	eec3 6a05 	vdiv.f32	s13, s6, s10
d00526a2:	dd4d      	ble.n	d0052740 <fillTriangleFlat+0x67c>
d00526a4:	1e4b      	subs	r3, r1, #1
d00526a6:	ee07 3a90 	vmov	s15, r3
d00526aa:	eeb0 4a45 	vmov.f32	s8, s10
d00526ae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00526b2:	eea7 4aa2 	vfma.f32	s8, s15, s5
d00526b6:	eeb4 4ae1 	vcmpe.f32	s8, s3
d00526ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00526be:	dd40      	ble.n	d0052742 <fillTriangleFlat+0x67e>
d00526c0:	eeb0 ba43 	vmov.f32	s22, s6
d00526c4:	eea7 ba8a 	vfma.f32	s22, s15, s20
d00526c8:	eecb aa04 	vdiv.f32	s21, s22, s8
d00526cc:	ee7a aae6 	vsub.f32	s21, s21, s13
d00526d0:	ee8a 4aa7 	vdiv.f32	s8, s21, s15
d00526d4:	f1a8 0002 	sub.w	r0, r8, #2
d00526d8:	2300      	movs	r3, #0
d00526da:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d00526de:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d00526e2:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00526e6:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d00526ea:	3301      	adds	r3, #1
d00526ec:	ee77 7aa3 	vadd.f32	s15, s15, s7
d00526f0:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d00526f4:	ee76 6a84 	vadd.f32	s13, s13, s8
d00526f8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00526fc:	ee17 2a90 	vmov	r2, s15
d0052700:	b292      	uxth	r2, r2
d0052702:	4295      	cmp	r5, r2
d0052704:	d902      	bls.n	d005270c <fillTriangleFlat+0x648>
d0052706:	8002      	strh	r2, [r0, #0]
d0052708:	f80c 700a 	strb.w	r7, [ip, sl]
d005270c:	4299      	cmp	r1, r3
d005270e:	dce4      	bgt.n	d00526da <fillTriangleFlat+0x616>
d0052710:	f1b9 0f00 	cmp.w	r9, #0
d0052714:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052718:	ea4f 0241 	mov.w	r2, r1, lsl #1
d005271c:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0052720:	bfbc      	itt	lt
d0052722:	2202      	movlt	r2, #2
d0052724:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0052728:	4490      	add	r8, r2
d005272a:	449c      	add	ip, r3
d005272c:	ee07 1a90 	vmov	s15, r1
d0052730:	440c      	add	r4, r1
d0052732:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052736:	eea7 5aa2 	vfma.f32	s10, s15, s5
d005273a:	eea7 3a8a 	vfma.f32	s6, s15, s20
d005273e:	e79d      	b.n	d005267c <fillTriangleFlat+0x5b8>
d0052740:	d1f4      	bne.n	d005272c <fillTriangleFlat+0x668>
d0052742:	eeb0 4a42 	vmov.f32	s8, s4
d0052746:	e7c5      	b.n	d00526d4 <fillTriangleFlat+0x610>
d0052748:	ee77 7ae6 	vsub.f32	s15, s15, s13
d005274c:	eddf 2a62 	vldr	s5, [pc, #392]	; d00528d8 <fillTriangleFlat+0x814>
d0052750:	eef4 7ae2 	vcmpe.f32	s15, s5
d0052754:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052758:	f340 80a0 	ble.w	d005289c <fillTriangleFlat+0x7d8>
d005275c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0052760:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0052764:	ee34 4a45 	vsub.f32	s8, s8, s10
d0052768:	eec1 2aa7 	vdiv.f32	s5, s3, s15
d005276c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0052770:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0052774:	ee07 4a90 	vmov	s15, r4
d0052778:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005277c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0052780:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0052784:	ee24 4a22 	vmul.f32	s8, s8, s5
d0052788:	eea7 7aa4 	vfma.f32	s14, s15, s9
d005278c:	eea7 5a84 	vfma.f32	s10, s15, s8
d0052790:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d0052794:	4b4e      	ldr	r3, [pc, #312]	; (d00528d0 <fillTriangleFlat+0x80c>)
d0052796:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d005279a:	4a4e      	ldr	r2, [pc, #312]	; (d00528d4 <fillTriangleFlat+0x810>)
d005279c:	681b      	ldr	r3, [r3, #0]
d005279e:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d00527a2:	eb0a 1c8c 	add.w	ip, sl, ip, lsl #6
d00527a6:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00527aa:	eb02 0e4e 	add.w	lr, r2, lr, lsl #1
d00527ae:	449c      	add	ip, r3
d00527b0:	e011      	b.n	d00527d6 <fillTriangleFlat+0x712>
d00527b2:	ee07 1a90 	vmov	s15, r1
d00527b6:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00527ba:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d00527be:	440c      	add	r4, r1
d00527c0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00527c4:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d00527c8:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00527cc:	eea7 5a84 	vfma.f32	s10, s15, s8
d00527d0:	42b4      	cmp	r4, r6
d00527d2:	f73f aebc 	bgt.w	d005254e <fillTriangleFlat+0x48a>
d00527d6:	eba6 0804 	sub.w	r8, r6, r4
d00527da:	eeb4 7acd 	vcmpe.f32	s14, s26
d00527de:	f108 0101 	add.w	r1, r8, #1
d00527e2:	2930      	cmp	r1, #48	; 0x30
d00527e4:	bfa8      	it	ge
d00527e6:	2130      	movge	r1, #48	; 0x30
d00527e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00527ec:	d9e1      	bls.n	d00527b2 <fillTriangleFlat+0x6ee>
d00527ee:	f1b8 0f00 	cmp.w	r8, #0
d00527f2:	eec5 2a07 	vdiv.f32	s5, s10, s14
d00527f6:	dd4d      	ble.n	d0052894 <fillTriangleFlat+0x7d0>
d00527f8:	1e4b      	subs	r3, r1, #1
d00527fa:	ee07 3a90 	vmov	s15, r3
d00527fe:	eef0 1a47 	vmov.f32	s3, s14
d0052802:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052806:	eee7 1aa4 	vfma.f32	s3, s15, s9
d005280a:	eef4 1acd 	vcmpe.f32	s3, s26
d005280e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052812:	dd40      	ble.n	d0052896 <fillTriangleFlat+0x7d2>
d0052814:	eeb0 ea45 	vmov.f32	s28, s10
d0052818:	eea7 ea84 	vfma.f32	s28, s15, s8
d005281c:	ee8e 8a21 	vdiv.f32	s16, s28, s3
d0052820:	ee38 8a62 	vsub.f32	s16, s16, s5
d0052824:	eec8 1a27 	vdiv.f32	s3, s16, s15
d0052828:	f1ae 0002 	sub.w	r0, lr, #2
d005282c:	2200      	movs	r2, #0
d005282e:	fec2 7a83 	vmaxnm.f32	s15, s5, s6
d0052832:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0052836:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d005283a:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d005283e:	3201      	adds	r2, #1
d0052840:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0052844:	ea4f 1983 	mov.w	r9, r3, lsl #6
d0052848:	ee72 2aa1 	vadd.f32	s5, s5, s3
d005284c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052850:	ee17 3a90 	vmov	r3, s15
d0052854:	b29b      	uxth	r3, r3
d0052856:	429d      	cmp	r5, r3
d0052858:	d902      	bls.n	d0052860 <fillTriangleFlat+0x79c>
d005285a:	8003      	strh	r3, [r0, #0]
d005285c:	f80c 7009 	strb.w	r7, [ip, r9]
d0052860:	428a      	cmp	r2, r1
d0052862:	dbe4      	blt.n	d005282e <fillTriangleFlat+0x76a>
d0052864:	f1b8 0f00 	cmp.w	r8, #0
d0052868:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d005286c:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0052870:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0052874:	bfbc      	itt	lt
d0052876:	2202      	movlt	r2, #2
d0052878:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d005287c:	4496      	add	lr, r2
d005287e:	449c      	add	ip, r3
d0052880:	ee07 1a90 	vmov	s15, r1
d0052884:	440c      	add	r4, r1
d0052886:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005288a:	eea7 7aa4 	vfma.f32	s14, s15, s9
d005288e:	eea7 5a84 	vfma.f32	s10, s15, s8
d0052892:	e79d      	b.n	d00527d0 <fillTriangleFlat+0x70c>
d0052894:	d1f4      	bne.n	d0052880 <fillTriangleFlat+0x7bc>
d0052896:	eef0 1a43 	vmov.f32	s3, s6
d005289a:	e7c5      	b.n	d0052828 <fillTriangleFlat+0x764>
d005289c:	eeb0 4a43 	vmov.f32	s8, s6
d00528a0:	eef0 4a43 	vmov.f32	s9, s6
d00528a4:	e774      	b.n	d0052790 <fillTriangleFlat+0x6cc>
d00528a6:	eeb0 aa42 	vmov.f32	s20, s4
d00528aa:	eef0 2a42 	vmov.f32	s5, s4
d00528ae:	e6c5      	b.n	d005263c <fillTriangleFlat+0x578>
d00528b0:	ed9f fa0a 	vldr	s30, [pc, #40]	; d00528dc <fillTriangleFlat+0x818>
d00528b4:	eef0 fa4f 	vmov.f32	s31, s30
d00528b8:	eef0 ea4f 	vmov.f32	s29, s30
d00528bc:	e5d8      	b.n	d0052470 <fillTriangleFlat+0x3ac>
d00528be:	eddf 7a07 	vldr	s15, [pc, #28]	; d00528dc <fillTriangleFlat+0x818>
d00528c2:	eef0 da67 	vmov.f32	s27, s15
d00528c6:	eef0 9a67 	vmov.f32	s19, s15
d00528ca:	eeb0 ba67 	vmov.f32	s22, s15
d00528ce:	e5cf      	b.n	d0052470 <fillTriangleFlat+0x3ac>
d00528d0:	d0140324 	.word	0xd0140324
d00528d4:	d005b020 	.word	0xd005b020
d00528d8:	38d1b717 	.word	0x38d1b717
d00528dc:	00000000 	.word	0x00000000

d00528e0 <fillTriangleDitherBayer>:
d00528e0:	eddf 7ae7 	vldr	s15, [pc, #924]	; d0052c80 <fillTriangleDitherBayer+0x3a0>
d00528e4:	eef4 0ae7 	vcmpe.f32	s1, s15
d00528e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00528ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00528f0:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00528f4:	ed2d 8b10 	vpush	{d8-d15}
d00528f8:	b08f      	sub	sp, #60	; 0x3c
d00528fa:	9202      	str	r2, [sp, #8]
d00528fc:	bf94      	ite	ls
d00528fe:	2201      	movls	r2, #1
d0052900:	2200      	movhi	r2, #0
d0052902:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052906:	9303      	str	r3, [sp, #12]
d0052908:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d005290c:	bf98      	it	ls
d005290e:	f042 0201 	orrls.w	r2, r2, #1
d0052912:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d0052916:	e9cd 0100 	strd	r0, r1, [sp]
d005291a:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d005291e:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d0052922:	2a00      	cmp	r2, #0
d0052924:	f040 8187 	bne.w	d0052c36 <fillTriangleDitherBayer+0x356>
d0052928:	eeb4 0a67 	vcmp.f32	s0, s15
d005292c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052930:	f240 8181 	bls.w	d0052c36 <fillTriangleDitherBayer+0x356>
d0052934:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0052938:	eddf 7ad3 	vldr	s15, [pc, #844]	; d0052c88 <fillTriangleDitherBayer+0x3a8>
d005293c:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d0052940:	ee07 4a10 	vmov	s14, r4
d0052944:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d0052948:	ee86 3a81 	vdiv.f32	s6, s13, s2
d005294c:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0052950:	eec6 1a80 	vdiv.f32	s3, s13, s0
d0052954:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d0052958:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d005295c:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0052960:	ee16 2a90 	vmov	r2, s13
d0052964:	ee06 0a90 	vmov	s13, r0
d0052968:	eef8 5a66 	vcvt.f32.u32	s11, s13
d005296c:	ee06 1a90 	vmov	s13, r1
d0052970:	1c51      	adds	r1, r2, #1
d0052972:	ee27 7a21 	vmul.f32	s14, s14, s3
d0052976:	eef8 6a66 	vcvt.f32.u32	s13, s13
d005297a:	2905      	cmp	r1, #5
d005297c:	bfa8      	it	ge
d005297e:	2105      	movge	r1, #5
d0052980:	2a04      	cmp	r2, #4
d0052982:	ee65 5a80 	vmul.f32	s11, s11, s0
d0052986:	ee26 2a83 	vmul.f32	s4, s13, s6
d005298a:	f300 8457 	bgt.w	d005323c <fillTriangleDitherBayer+0x95c>
d005298e:	f003 030f 	and.w	r3, r3, #15
d0052992:	2a03      	cmp	r2, #3
d0052994:	f103 0320 	add.w	r3, r3, #32
d0052998:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d005299c:	fa5f fa80 	uxtb.w	sl, r0
d00529a0:	f300 844e 	bgt.w	d0053240 <fillTriangleDitherBayer+0x960>
d00529a4:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d00529a8:	b2db      	uxtb	r3, r3
d00529aa:	9304      	str	r3, [sp, #16]
d00529ac:	eddd 6a01 	vldr	s13, [sp, #4]
d00529b0:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d00529b4:	eddd 6a03 	vldr	s13, [sp, #12]
d00529b8:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d00529bc:	eddd 6a00 	vldr	s13, [sp]
d00529c0:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00529c4:	eddd 6a02 	vldr	s13, [sp, #8]
d00529c8:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00529cc:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d00529d0:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d00529d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00529d8:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d00529dc:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d00529e0:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00529e4:	f300 812c 	bgt.w	d0052c40 <fillTriangleDitherBayer+0x360>
d00529e8:	eeb4 5ae6 	vcmpe.f32	s10, s13
d00529ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00529f0:	f300 8231 	bgt.w	d0052e56 <fillTriangleDitherBayer+0x576>
d00529f4:	eef4 3ae6 	vcmpe.f32	s7, s13
d00529f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00529fc:	dd17      	ble.n	d0052a2e <fillTriangleDitherBayer+0x14e>
d00529fe:	eeb0 8a65 	vmov.f32	s16, s11
d0052a02:	eef0 0a40 	vmov.f32	s1, s0
d0052a06:	eef0 2a63 	vmov.f32	s5, s7
d0052a0a:	eeb0 4a64 	vmov.f32	s8, s9
d0052a0e:	eef0 5a42 	vmov.f32	s11, s4
d0052a12:	eeb0 0a43 	vmov.f32	s0, s6
d0052a16:	eef0 3a66 	vmov.f32	s7, s13
d0052a1a:	eef0 4a41 	vmov.f32	s9, s2
d0052a1e:	eeb0 2a48 	vmov.f32	s4, s16
d0052a22:	eeb0 3a60 	vmov.f32	s6, s1
d0052a26:	eef0 6a62 	vmov.f32	s13, s5
d0052a2a:	eeb0 1a44 	vmov.f32	s2, s8
d0052a2e:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0052a32:	ee75 2a04 	vadd.f32	s5, s10, s8
d0052a36:	ee36 4a84 	vadd.f32	s8, s13, s8
d0052a3a:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0052a3e:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0052a42:	ee12 3a90 	vmov	r3, s5
d0052a46:	ee14 1a10 	vmov	r1, s8
d0052a4a:	428b      	cmp	r3, r1
d0052a4c:	f000 80f3 	beq.w	d0052c36 <fillTriangleDitherBayer+0x356>
d0052a50:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0052a54:	eddf 2a8a 	vldr	s5, [pc, #552]	; d0052c80 <fillTriangleDitherBayer+0x3a0>
d0052a58:	eef4 8ae2 	vcmpe.f32	s17, s5
d0052a5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052a60:	f240 80e9 	bls.w	d0052c36 <fillTriangleDitherBayer+0x356>
d0052a64:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0052a68:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0052a6c:	ee71 0a46 	vsub.f32	s1, s2, s12
d0052a70:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d0052a74:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0052a78:	ee33 8a61 	vsub.f32	s16, s6, s3
d0052a7c:	ee72 8a47 	vsub.f32	s17, s4, s14
d0052a80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052a84:	ee60 0a84 	vmul.f32	s1, s1, s8
d0052a88:	ee28 8a04 	vmul.f32	s16, s16, s8
d0052a8c:	ee68 8a84 	vmul.f32	s17, s17, s8
d0052a90:	f300 80fe 	bgt.w	d0052c90 <fillTriangleDitherBayer+0x3b0>
d0052a94:	ee04 2a10 	vmov	s8, r2
d0052a98:	ee76 fae3 	vsub.f32	s31, s13, s7
d0052a9c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052aa0:	eef4 fae2 	vcmpe.f32	s31, s5
d0052aa4:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0052aa8:	eeb0 4a67 	vmov.f32	s8, s15
d0052aac:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0052ab0:	ee14 3a10 	vmov	r3, s8
d0052ab4:	f383 0204 	usat	r2, #4, r3
d0052ab8:	9201      	str	r2, [sp, #4]
d0052aba:	9a04      	ldr	r2, [sp, #16]
d0052abc:	4592      	cmp	sl, r2
d0052abe:	bf18      	it	ne
d0052ac0:	2b00      	cmpne	r3, #0
d0052ac2:	bfd4      	ite	le
d0052ac4:	2301      	movle	r3, #1
d0052ac6:	2300      	movgt	r3, #0
d0052ac8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052acc:	9300      	str	r3, [sp, #0]
d0052ace:	f340 80b2 	ble.w	d0052c36 <fillTriangleDitherBayer+0x356>
d0052ad2:	ed9f ea6d 	vldr	s28, [pc, #436]	; d0052c88 <fillTriangleDitherBayer+0x3a8>
d0052ad6:	eef0 9a4e 	vmov.f32	s19, s28
d0052ada:	eeb0 ba4e 	vmov.f32	s22, s28
d0052ade:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d0052ae2:	ed9f 4a67 	vldr	s8, [pc, #412]	; d0052c80 <fillTriangleDitherBayer+0x3a0>
d0052ae6:	ee31 1a64 	vsub.f32	s2, s2, s9
d0052aea:	ee33 3a40 	vsub.f32	s6, s6, s0
d0052aee:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d0052af2:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0052af6:	ee32 2a65 	vsub.f32	s4, s4, s11
d0052afa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052afe:	ee61 2a27 	vmul.f32	s5, s2, s15
d0052b02:	ee23 3a27 	vmul.f32	s6, s6, s15
d0052b06:	ee22 fa27 	vmul.f32	s30, s4, s15
d0052b0a:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d0052b0e:	ed8d 3a08 	vstr	s6, [sp, #32]
d0052b12:	f300 80f4 	bgt.w	d0052cfe <fillTriangleDitherBayer+0x41e>
d0052b16:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0052b1a:	edcd 7a06 	vstr	s15, [sp, #24]
d0052b1e:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0052b22:	f240 123f 	movw	r2, #319	; 0x13f
d0052b26:	9906      	ldr	r1, [sp, #24]
d0052b28:	ee17 3a90 	vmov	r3, s15
d0052b2c:	ea21 7be1 	bic.w	fp, r1, r1, asr #31
d0052b30:	3b01      	subs	r3, #1
d0052b32:	4293      	cmp	r3, r2
d0052b34:	bfa8      	it	ge
d0052b36:	4613      	movge	r3, r2
d0052b38:	459b      	cmp	fp, r3
d0052b3a:	dc7c      	bgt.n	d0052c36 <fillTriangleDitherBayer+0x356>
d0052b3c:	ee07 ba90 	vmov	s15, fp
d0052b40:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0052b44:	3301      	adds	r3, #1
d0052b46:	eddd aa09 	vldr	s21, [sp, #36]	; 0x24
d0052b4a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052b4e:	ed9d aa08 	vldr	s20, [sp, #32]
d0052b52:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d0052c80 <fillTriangleDitherBayer+0x3a0>
d0052b56:	ed9f 2a4b 	vldr	s4, [pc, #300]	; d0052c84 <fillTriangleDitherBayer+0x3a4>
d0052b5a:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0052b5e:	ed9f 3a4a 	vldr	s6, [pc, #296]	; d0052c88 <fillTriangleDitherBayer+0x3a8>
d0052b62:	9302      	str	r3, [sp, #8]
d0052b64:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0052b68:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0052b6c:	eddf 3a47 	vldr	s7, [pc, #284]	; d0052c8c <fillTriangleDitherBayer+0x3ac>
d0052b70:	eea0 6a85 	vfma.f32	s12, s1, s10
d0052b74:	eee8 1a05 	vfma.f32	s3, s16, s10
d0052b78:	eea8 7a85 	vfma.f32	s14, s17, s10
d0052b7c:	eeea 4aa7 	vfma.f32	s9, s21, s15
d0052b80:	eeaa 0a27 	vfma.f32	s0, s20, s15
d0052b84:	eeef 5a27 	vfma.f32	s11, s30, s15
d0052b88:	e033      	b.n	d0052bf2 <fillTriangleDitherBayer+0x312>
d0052b8a:	eef0 2a47 	vmov.f32	s5, s14
d0052b8e:	eef0 9a61 	vmov.f32	s19, s3
d0052b92:	eef0 6a46 	vmov.f32	s13, s12
d0052b96:	eeb0 9a65 	vmov.f32	s18, s11
d0052b9a:	eeb0 5a40 	vmov.f32	s10, s0
d0052b9e:	eeb0 4a64 	vmov.f32	s8, s9
d0052ba2:	fefa 7a66 	vrintp.f32	s15, s13
d0052ba6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052baa:	f240 13df 	movw	r3, #479	; 0x1df
d0052bae:	ee17 6a90 	vmov	r6, s15
d0052bb2:	fefa 7a44 	vrintp.f32	s15, s8
d0052bb6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052bba:	3e01      	subs	r6, #1
d0052bbc:	ee17 0a90 	vmov	r0, s15
d0052bc0:	429e      	cmp	r6, r3
d0052bc2:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0052bc6:	bfa8      	it	ge
d0052bc8:	461e      	movge	r6, r3
d0052bca:	4286      	cmp	r6, r0
d0052bcc:	f280 815c 	bge.w	d0052e88 <fillTriangleDitherBayer+0x5a8>
d0052bd0:	f10b 0b01 	add.w	fp, fp, #1
d0052bd4:	9b02      	ldr	r3, [sp, #8]
d0052bd6:	ee36 6a20 	vadd.f32	s12, s12, s1
d0052bda:	459b      	cmp	fp, r3
d0052bdc:	ee71 1a88 	vadd.f32	s3, s3, s16
d0052be0:	ee37 7a28 	vadd.f32	s14, s14, s17
d0052be4:	ee74 4aaa 	vadd.f32	s9, s9, s21
d0052be8:	ee30 0a0a 	vadd.f32	s0, s0, s20
d0052bec:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0052bf0:	d021      	beq.n	d0052c36 <fillTriangleDitherBayer+0x356>
d0052bf2:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0052bf6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bfa:	dcc6      	bgt.n	d0052b8a <fillTriangleDitherBayer+0x2aa>
d0052bfc:	eef0 2a65 	vmov.f32	s5, s11
d0052c00:	eef0 9a40 	vmov.f32	s19, s0
d0052c04:	eef0 6a64 	vmov.f32	s13, s9
d0052c08:	eeb0 9a47 	vmov.f32	s18, s14
d0052c0c:	eeb0 5a61 	vmov.f32	s10, s3
d0052c10:	eeb0 4a46 	vmov.f32	s8, s12
d0052c14:	e7c5      	b.n	d0052ba2 <fillTriangleDitherBayer+0x2c2>
d0052c16:	eddd 6a0a 	vldr	s13, [sp, #40]	; 0x28
d0052c1a:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d0052c1e:	ed9d 6a0c 	vldr	s12, [sp, #48]	; 0x30
d0052c22:	ed9d fa0d 	vldr	s30, [sp, #52]	; 0x34
d0052c26:	eddf 7a16 	vldr	s15, [pc, #88]	; d0052c80 <fillTriangleDitherBayer+0x3a0>
d0052c2a:	eef4 fae7 	vcmpe.f32	s31, s15
d0052c2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c32:	f73f af74 	bgt.w	d0052b1e <fillTriangleDitherBayer+0x23e>
d0052c36:	b00f      	add	sp, #60	; 0x3c
d0052c38:	ecbd 8b10 	vpop	{d8-d15}
d0052c3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052c40:	eef4 3ae6 	vcmpe.f32	s7, s13
d0052c44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c48:	f340 80ec 	ble.w	d0052e24 <fillTriangleDitherBayer+0x544>
d0052c4c:	eeb0 8a42 	vmov.f32	s16, s4
d0052c50:	eef0 0a43 	vmov.f32	s1, s6
d0052c54:	eef0 2a66 	vmov.f32	s5, s13
d0052c58:	eeb0 4a41 	vmov.f32	s8, s2
d0052c5c:	eeb0 2a47 	vmov.f32	s4, s14
d0052c60:	eeb0 3a61 	vmov.f32	s6, s3
d0052c64:	eef0 6a45 	vmov.f32	s13, s10
d0052c68:	eeb0 1a46 	vmov.f32	s2, s12
d0052c6c:	eeb0 7a48 	vmov.f32	s14, s16
d0052c70:	eef0 1a60 	vmov.f32	s3, s1
d0052c74:	eeb0 5a62 	vmov.f32	s10, s5
d0052c78:	eeb0 6a44 	vmov.f32	s12, s8
d0052c7c:	e6d7      	b.n	d0052a2e <fillTriangleDitherBayer+0x14e>
d0052c7e:	bf00      	nop
d0052c80:	38d1b717 	.word	0x38d1b717
d0052c84:	33d6bf95 	.word	0x33d6bf95
d0052c88:	00000000 	.word	0x00000000
d0052c8c:	477fff00 	.word	0x477fff00
d0052c90:	ee04 2a10 	vmov	s8, r2
d0052c94:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0052c98:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052c9c:	ee74 aac6 	vsub.f32	s21, s9, s12
d0052ca0:	ee76 fae3 	vsub.f32	s31, s13, s7
d0052ca4:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0052ca8:	ee70 9a61 	vsub.f32	s19, s0, s3
d0052cac:	eef4 fae2 	vcmpe.f32	s31, s5
d0052cb0:	eeb0 4a67 	vmov.f32	s8, s15
d0052cb4:	ee35 eac7 	vsub.f32	s28, s11, s14
d0052cb8:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0052cbc:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0052cc0:	ee14 3a10 	vmov	r3, s8
d0052cc4:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0052cc8:	f383 0204 	usat	r2, #4, r3
d0052ccc:	eeb0 ba67 	vmov.f32	s22, s15
d0052cd0:	ee69 7a8a 	vmul.f32	s15, s19, s20
d0052cd4:	9201      	str	r2, [sp, #4]
d0052cd6:	9a04      	ldr	r2, [sp, #16]
d0052cd8:	eef0 9a67 	vmov.f32	s19, s15
d0052cdc:	4592      	cmp	sl, r2
d0052cde:	bf18      	it	ne
d0052ce0:	2b00      	cmpne	r3, #0
d0052ce2:	bfd4      	ite	le
d0052ce4:	2301      	movle	r3, #1
d0052ce6:	2300      	movgt	r3, #0
d0052ce8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052cec:	9300      	str	r3, [sp, #0]
d0052cee:	f73f aef6 	bgt.w	d0052ade <fillTriangleDitherBayer+0x1fe>
d0052cf2:	ed1f fa1b 	vldr	s30, [pc, #-108]	; d0052c88 <fillTriangleDitherBayer+0x3a8>
d0052cf6:	ed8d fa08 	vstr	s30, [sp, #32]
d0052cfa:	ed8d fa09 	vstr	s30, [sp, #36]	; 0x24
d0052cfe:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0052d02:	f240 123f 	movw	r2, #319	; 0x13f
d0052d06:	ee17 3a90 	vmov	r3, s15
d0052d0a:	edcd 7a06 	vstr	s15, [sp, #24]
d0052d0e:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0052d12:	3b01      	subs	r3, #1
d0052d14:	ee17 ba90 	vmov	fp, s15
d0052d18:	4293      	cmp	r3, r2
d0052d1a:	ea2b 7beb 	bic.w	fp, fp, fp, asr #31
d0052d1e:	bfa8      	it	ge
d0052d20:	4613      	movge	r3, r2
d0052d22:	455b      	cmp	r3, fp
d0052d24:	f6ff af7f 	blt.w	d0052c26 <fillTriangleDitherBayer+0x346>
d0052d28:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0052d2c:	3301      	adds	r3, #1
d0052d2e:	eeb0 aa46 	vmov.f32	s20, s12
d0052d32:	ed1f da2c 	vldr	s26, [pc, #-176]	; d0052c84 <fillTriangleDitherBayer+0x3a4>
d0052d36:	eef0 aa46 	vmov.f32	s21, s12
d0052d3a:	ed1f 3a2d 	vldr	s6, [pc, #-180]	; d0052c88 <fillTriangleDitherBayer+0x3a8>
d0052d3e:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0052d42:	ee07 ba90 	vmov	s15, fp
d0052d46:	eef0 ca61 	vmov.f32	s25, s3
d0052d4a:	ed1f 2a30 	vldr	s4, [pc, #-192]	; d0052c8c <fillTriangleDitherBayer+0x3ac>
d0052d4e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052d52:	9302      	str	r3, [sp, #8]
d0052d54:	eeb0 ca47 	vmov.f32	s24, s14
d0052d58:	edcd 6a0a 	vstr	s13, [sp, #40]	; 0x28
d0052d5c:	eef0 da4b 	vmov.f32	s27, s22
d0052d60:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d0052d64:	ee77 7a84 	vadd.f32	s15, s15, s8
d0052d68:	ed8d 6a0c 	vstr	s12, [sp, #48]	; 0x30
d0052d6c:	eef0 ba61 	vmov.f32	s23, s3
d0052d70:	ed8d fa0d 	vstr	s30, [sp, #52]	; 0x34
d0052d74:	eef0 ea69 	vmov.f32	s29, s19
d0052d78:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0052d7c:	eeb0 ba47 	vmov.f32	s22, s14
d0052d80:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0052d84:	eee8 ca27 	vfma.f32	s25, s16, s15
d0052d88:	eea8 caa7 	vfma.f32	s24, s17, s15
d0052d8c:	eee7 baa9 	vfma.f32	s23, s15, s19
d0052d90:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0052d94:	e034      	b.n	d0052e00 <fillTriangleDitherBayer+0x520>
d0052d96:	eef0 2a4c 	vmov.f32	s5, s24
d0052d9a:	eeb0 4a6c 	vmov.f32	s8, s25
d0052d9e:	eef0 7a6a 	vmov.f32	s15, s21
d0052da2:	eeb0 5a4b 	vmov.f32	s10, s22
d0052da6:	eef0 6a6b 	vmov.f32	s13, s23
d0052daa:	eeb0 6a4a 	vmov.f32	s12, s20
d0052dae:	feba 1a67 	vrintp.f32	s2, s15
d0052db2:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0052db6:	feba 9a46 	vrintp.f32	s18, s12
d0052dba:	f240 13df 	movw	r3, #479	; 0x1df
d0052dbe:	ee11 6a10 	vmov	r6, s2
d0052dc2:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0052dc6:	3e01      	subs	r6, #1
d0052dc8:	ee11 0a10 	vmov	r0, s2
d0052dcc:	429e      	cmp	r6, r3
d0052dce:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0052dd2:	bfa8      	it	ge
d0052dd4:	461e      	movge	r6, r3
d0052dd6:	4286      	cmp	r6, r0
d0052dd8:	f280 813e 	bge.w	d0053058 <fillTriangleDitherBayer+0x778>
d0052ddc:	f10b 0b01 	add.w	fp, fp, #1
d0052de0:	9b02      	ldr	r3, [sp, #8]
d0052de2:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0052de6:	459b      	cmp	fp, r3
d0052de8:	ee7c ca88 	vadd.f32	s25, s25, s16
d0052dec:	ee3c ca28 	vadd.f32	s24, s24, s17
d0052df0:	ee3a aa2d 	vadd.f32	s20, s20, s27
d0052df4:	ee7b baae 	vadd.f32	s23, s23, s29
d0052df8:	ee3b ba0e 	vadd.f32	s22, s22, s28
d0052dfc:	f43f af0b 	beq.w	d0052c16 <fillTriangleDitherBayer+0x336>
d0052e00:	eef4 aaca 	vcmpe.f32	s21, s20
d0052e04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e08:	dcc5      	bgt.n	d0052d96 <fillTriangleDitherBayer+0x4b6>
d0052e0a:	eef0 2a4b 	vmov.f32	s5, s22
d0052e0e:	eeb0 4a6b 	vmov.f32	s8, s23
d0052e12:	eef0 7a4a 	vmov.f32	s15, s20
d0052e16:	eeb0 5a4c 	vmov.f32	s10, s24
d0052e1a:	eef0 6a6c 	vmov.f32	s13, s25
d0052e1e:	eeb0 6a6a 	vmov.f32	s12, s21
d0052e22:	e7c4      	b.n	d0052dae <fillTriangleDitherBayer+0x4ce>
d0052e24:	eeb0 8a47 	vmov.f32	s16, s14
d0052e28:	eef0 0a61 	vmov.f32	s1, s3
d0052e2c:	eef0 2a45 	vmov.f32	s5, s10
d0052e30:	eeb0 4a46 	vmov.f32	s8, s12
d0052e34:	eeb0 7a65 	vmov.f32	s14, s11
d0052e38:	eef0 1a40 	vmov.f32	s3, s0
d0052e3c:	eeb0 5a63 	vmov.f32	s10, s7
d0052e40:	eeb0 6a64 	vmov.f32	s12, s9
d0052e44:	eef0 5a48 	vmov.f32	s11, s16
d0052e48:	eeb0 0a60 	vmov.f32	s0, s1
d0052e4c:	eef0 3a62 	vmov.f32	s7, s5
d0052e50:	eef0 4a44 	vmov.f32	s9, s8
d0052e54:	e5ce      	b.n	d00529f4 <fillTriangleDitherBayer+0x114>
d0052e56:	eeb0 8a47 	vmov.f32	s16, s14
d0052e5a:	eef0 0a61 	vmov.f32	s1, s3
d0052e5e:	eef0 2a45 	vmov.f32	s5, s10
d0052e62:	eeb0 4a46 	vmov.f32	s8, s12
d0052e66:	eeb0 7a42 	vmov.f32	s14, s4
d0052e6a:	eef0 1a43 	vmov.f32	s3, s6
d0052e6e:	eeb0 5a66 	vmov.f32	s10, s13
d0052e72:	eeb0 6a41 	vmov.f32	s12, s2
d0052e76:	eeb0 2a48 	vmov.f32	s4, s16
d0052e7a:	eeb0 3a60 	vmov.f32	s6, s1
d0052e7e:	eef0 6a62 	vmov.f32	s13, s5
d0052e82:	eeb0 1a44 	vmov.f32	s2, s8
d0052e86:	e5b5      	b.n	d00529f4 <fillTriangleDitherBayer+0x114>
d0052e88:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0052e8c:	eef4 6ac1 	vcmpe.f32	s13, s2
d0052e90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e94:	f340 81d8 	ble.w	d0053248 <fillTriangleDitherBayer+0x968>
d0052e98:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052e9c:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0052ea0:	ee72 2ac9 	vsub.f32	s5, s5, s18
d0052ea4:	ee87 baa6 	vdiv.f32	s22, s15, s13
d0052ea8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0052eac:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0052eb0:	ee07 0a90 	vmov	s15, r0
d0052eb4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052eb8:	ee77 7a84 	vadd.f32	s15, s15, s8
d0052ebc:	ee69 9a8b 	vmul.f32	s19, s19, s22
d0052ec0:	ee22 ba8b 	vmul.f32	s22, s5, s22
d0052ec4:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0052ec8:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0052ecc:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0052ed0:	49d6      	ldr	r1, [pc, #856]	; (d005322c <fillTriangleDitherBayer+0x94c>)
d0052ed2:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0052ed6:	4cd6      	ldr	r4, [pc, #856]	; (d0053230 <fillTriangleDitherBayer+0x950>)
d0052ed8:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0052edc:	6809      	ldr	r1, [r1, #0]
d0052ede:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0052ee2:	f8cd b018 	str.w	fp, [sp, #24]
d0052ee6:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d0052eea:	f00b 0203 	and.w	r2, fp, #3
d0052eee:	eb01 0c03 	add.w	ip, r1, r3
d0052ef2:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d0052ef6:	4613      	mov	r3, r2
d0052ef8:	4ace      	ldr	r2, [pc, #824]	; (d0053234 <fillTriangleDitherBayer+0x954>)
d0052efa:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0052efe:	469b      	mov	fp, r3
d0052f00:	e010      	b.n	d0052f24 <fillTriangleDitherBayer+0x644>
d0052f02:	ee07 3a90 	vmov	s15, r3
d0052f06:	4418      	add	r0, r3
d0052f08:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0052f0c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052f10:	42b0      	cmp	r0, r6
d0052f12:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d0052f16:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d0052f1a:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0052f1e:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0052f22:	dc72      	bgt.n	d005300a <fillTriangleDitherBayer+0x72a>
d0052f24:	eba6 0800 	sub.w	r8, r6, r0
d0052f28:	eeb4 5ac2 	vcmpe.f32	s10, s4
d0052f2c:	f108 0301 	add.w	r3, r8, #1
d0052f30:	2b30      	cmp	r3, #48	; 0x30
d0052f32:	bfa8      	it	ge
d0052f34:	2330      	movge	r3, #48	; 0x30
d0052f36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f3a:	d9e2      	bls.n	d0052f02 <fillTriangleDitherBayer+0x622>
d0052f3c:	f1b8 0f00 	cmp.w	r8, #0
d0052f40:	eec9 6a05 	vdiv.f32	s13, s18, s10
d0052f44:	dd64      	ble.n	d0053010 <fillTriangleDitherBayer+0x730>
d0052f46:	1e5a      	subs	r2, r3, #1
d0052f48:	ee07 2a90 	vmov	s15, r2
d0052f4c:	eeb0 4a45 	vmov.f32	s8, s10
d0052f50:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052f54:	eea7 4aa9 	vfma.f32	s8, s15, s19
d0052f58:	eeb4 4ac2 	vcmpe.f32	s8, s4
d0052f5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f60:	dd57      	ble.n	d0053012 <fillTriangleDitherBayer+0x732>
d0052f62:	eeb0 ca49 	vmov.f32	s24, s18
d0052f66:	9a00      	ldr	r2, [sp, #0]
d0052f68:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0052f6c:	eecc ba04 	vdiv.f32	s23, s24, s8
d0052f70:	ee7b bae6 	vsub.f32	s23, s23, s13
d0052f74:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d0052f78:	2a00      	cmp	r2, #0
d0052f7a:	d14f      	bne.n	d005301c <fillTriangleDitherBayer+0x73c>
d0052f7c:	f8cd 800c 	str.w	r8, [sp, #12]
d0052f80:	f1a9 0702 	sub.w	r7, r9, #2
d0052f84:	9605      	str	r6, [sp, #20]
d0052f86:	f8dd 8004 	ldr.w	r8, [sp, #4]
d0052f8a:	9e04      	ldr	r6, [sp, #16]
d0052f8c:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d0052f90:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0052f94:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0052f98:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0052f9c:	1885      	adds	r5, r0, r2
d0052f9e:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d0052fa2:	ee76 6a84 	vadd.f32	s13, s13, s8
d0052fa6:	3201      	adds	r2, #1
d0052fa8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052fac:	f005 0503 	and.w	r5, r5, #3
d0052fb0:	01a4      	lsls	r4, r4, #6
d0052fb2:	ee17 1a90 	vmov	r1, s15
d0052fb6:	b289      	uxth	r1, r1
d0052fb8:	458e      	cmp	lr, r1
d0052fba:	d908      	bls.n	d0052fce <fillTriangleDitherBayer+0x6ee>
d0052fbc:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0052fc0:	8039      	strh	r1, [r7, #0]
d0052fc2:	45a8      	cmp	r8, r5
d0052fc4:	bfd4      	ite	le
d0052fc6:	4655      	movle	r5, sl
d0052fc8:	4635      	movgt	r5, r6
d0052fca:	f80c 5004 	strb.w	r5, [ip, r4]
d0052fce:	4293      	cmp	r3, r2
d0052fd0:	dcdc      	bgt.n	d0052f8c <fillTriangleDitherBayer+0x6ac>
d0052fd2:	f8dd 800c 	ldr.w	r8, [sp, #12]
d0052fd6:	9e05      	ldr	r6, [sp, #20]
d0052fd8:	f1b8 0f00 	cmp.w	r8, #0
d0052fdc:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0052fe0:	ea4f 0143 	mov.w	r1, r3, lsl #1
d0052fe4:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0052fe8:	bfbc      	itt	lt
d0052fea:	2102      	movlt	r1, #2
d0052fec:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0052ff0:	4489      	add	r9, r1
d0052ff2:	4494      	add	ip, r2
d0052ff4:	ee07 3a90 	vmov	s15, r3
d0052ff8:	4418      	add	r0, r3
d0052ffa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052ffe:	42b0      	cmp	r0, r6
d0053000:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0053004:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0053008:	dd8c      	ble.n	d0052f24 <fillTriangleDitherBayer+0x644>
d005300a:	f8dd b018 	ldr.w	fp, [sp, #24]
d005300e:	e5df      	b.n	d0052bd0 <fillTriangleDitherBayer+0x2f0>
d0053010:	d1f0      	bne.n	d0052ff4 <fillTriangleDitherBayer+0x714>
d0053012:	9a00      	ldr	r2, [sp, #0]
d0053014:	eeb0 4a43 	vmov.f32	s8, s6
d0053018:	2a00      	cmp	r2, #0
d005301a:	d0af      	beq.n	d0052f7c <fillTriangleDitherBayer+0x69c>
d005301c:	f1a9 0502 	sub.w	r5, r9, #2
d0053020:	2200      	movs	r2, #0
d0053022:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d0053026:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d005302a:	ee77 7aa2 	vadd.f32	s15, s15, s5
d005302e:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d0053032:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d0053036:	ee76 6a84 	vadd.f32	s13, s13, s8
d005303a:	018c      	lsls	r4, r1, #6
d005303c:	3201      	adds	r2, #1
d005303e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053042:	ee17 1a90 	vmov	r1, s15
d0053046:	b289      	uxth	r1, r1
d0053048:	428f      	cmp	r7, r1
d005304a:	d902      	bls.n	d0053052 <fillTriangleDitherBayer+0x772>
d005304c:	8029      	strh	r1, [r5, #0]
d005304e:	f80c a004 	strb.w	sl, [ip, r4]
d0053052:	4293      	cmp	r3, r2
d0053054:	dce5      	bgt.n	d0053022 <fillTriangleDitherBayer+0x742>
d0053056:	e7bf      	b.n	d0052fd8 <fillTriangleDitherBayer+0x6f8>
d0053058:	ee77 7ac6 	vsub.f32	s15, s15, s12
d005305c:	ed9f 1a76 	vldr	s2, [pc, #472]	; d0053238 <fillTriangleDitherBayer+0x958>
d0053060:	eef4 7ac1 	vcmpe.f32	s15, s2
d0053064:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053068:	f340 80f3 	ble.w	d0053252 <fillTriangleDitherBayer+0x972>
d005306c:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0053070:	ee34 4a66 	vsub.f32	s8, s8, s13
d0053074:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0053078:	ee89 1a27 	vdiv.f32	s2, s18, s15
d005307c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053080:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0053084:	ee07 0a90 	vmov	s15, r0
d0053088:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005308c:	ee77 7a86 	vadd.f32	s15, s15, s12
d0053090:	ee24 4a01 	vmul.f32	s8, s8, s2
d0053094:	ee62 2a81 	vmul.f32	s5, s5, s2
d0053098:	eee7 6a84 	vfma.f32	s13, s15, s8
d005309c:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00530a0:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d00530a4:	4961      	ldr	r1, [pc, #388]	; (d005322c <fillTriangleDitherBayer+0x94c>)
d00530a6:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00530aa:	4c61      	ldr	r4, [pc, #388]	; (d0053230 <fillTriangleDitherBayer+0x950>)
d00530ac:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d00530b0:	6809      	ldr	r1, [r1, #0]
d00530b2:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d00530b6:	f8cd b01c 	str.w	fp, [sp, #28]
d00530ba:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d00530be:	f00b 0203 	and.w	r2, fp, #3
d00530c2:	eb01 0c03 	add.w	ip, r1, r3
d00530c6:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00530ca:	4613      	mov	r3, r2
d00530cc:	4a59      	ldr	r2, [pc, #356]	; (d0053234 <fillTriangleDitherBayer+0x954>)
d00530ce:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d00530d2:	469b      	mov	fp, r3
d00530d4:	e010      	b.n	d00530f8 <fillTriangleDitherBayer+0x818>
d00530d6:	ee07 2a90 	vmov	s15, r2
d00530da:	4410      	add	r0, r2
d00530dc:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00530e0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00530e4:	42b0      	cmp	r0, r6
d00530e6:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d00530ea:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d00530ee:	eee7 6a84 	vfma.f32	s13, s15, s8
d00530f2:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00530f6:	dc72      	bgt.n	d00531de <fillTriangleDitherBayer+0x8fe>
d00530f8:	eba6 0800 	sub.w	r8, r6, r0
d00530fc:	eef4 6acd 	vcmpe.f32	s13, s26
d0053100:	f108 0201 	add.w	r2, r8, #1
d0053104:	2a30      	cmp	r2, #48	; 0x30
d0053106:	bfa8      	it	ge
d0053108:	2230      	movge	r2, #48	; 0x30
d005310a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005310e:	d9e2      	bls.n	d00530d6 <fillTriangleDitherBayer+0x7f6>
d0053110:	f1b8 0f00 	cmp.w	r8, #0
d0053114:	ee85 1a26 	vdiv.f32	s2, s10, s13
d0053118:	dd64      	ble.n	d00531e4 <fillTriangleDitherBayer+0x904>
d005311a:	1e53      	subs	r3, r2, #1
d005311c:	ee07 3a90 	vmov	s15, r3
d0053120:	eeb0 9a66 	vmov.f32	s18, s13
d0053124:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053128:	eea7 9a84 	vfma.f32	s18, s15, s8
d005312c:	eeb4 9acd 	vcmpe.f32	s18, s26
d0053130:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053134:	dd57      	ble.n	d00531e6 <fillTriangleDitherBayer+0x906>
d0053136:	eeb0 fa45 	vmov.f32	s30, s10
d005313a:	9900      	ldr	r1, [sp, #0]
d005313c:	eea7 faa2 	vfma.f32	s30, s15, s5
d0053140:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0053144:	ee79 9ac1 	vsub.f32	s19, s19, s2
d0053148:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d005314c:	2900      	cmp	r1, #0
d005314e:	d14f      	bne.n	d00531f0 <fillTriangleDitherBayer+0x910>
d0053150:	9603      	str	r6, [sp, #12]
d0053152:	f1a9 0702 	sub.w	r7, r9, #2
d0053156:	f8cd 8014 	str.w	r8, [sp, #20]
d005315a:	9e04      	ldr	r6, [sp, #16]
d005315c:	f8dd 8004 	ldr.w	r8, [sp, #4]
d0053160:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0053164:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0053168:	ee77 7a86 	vadd.f32	s15, s15, s12
d005316c:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0053170:	1845      	adds	r5, r0, r1
d0053172:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0053176:	ee31 1a09 	vadd.f32	s2, s2, s18
d005317a:	3101      	adds	r1, #1
d005317c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053180:	f005 0503 	and.w	r5, r5, #3
d0053184:	01a4      	lsls	r4, r4, #6
d0053186:	ee17 3a90 	vmov	r3, s15
d005318a:	b29b      	uxth	r3, r3
d005318c:	459e      	cmp	lr, r3
d005318e:	d908      	bls.n	d00531a2 <fillTriangleDitherBayer+0x8c2>
d0053190:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0053194:	803b      	strh	r3, [r7, #0]
d0053196:	45a8      	cmp	r8, r5
d0053198:	bfcc      	ite	gt
d005319a:	4635      	movgt	r5, r6
d005319c:	4655      	movle	r5, sl
d005319e:	f80c 5004 	strb.w	r5, [ip, r4]
d00531a2:	428a      	cmp	r2, r1
d00531a4:	dcdc      	bgt.n	d0053160 <fillTriangleDitherBayer+0x880>
d00531a6:	9e03      	ldr	r6, [sp, #12]
d00531a8:	f8dd 8014 	ldr.w	r8, [sp, #20]
d00531ac:	f1b8 0f00 	cmp.w	r8, #0
d00531b0:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00531b4:	ea4f 0142 	mov.w	r1, r2, lsl #1
d00531b8:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00531bc:	bfbc      	itt	lt
d00531be:	2102      	movlt	r1, #2
d00531c0:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00531c4:	4489      	add	r9, r1
d00531c6:	449c      	add	ip, r3
d00531c8:	ee07 2a90 	vmov	s15, r2
d00531cc:	4410      	add	r0, r2
d00531ce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00531d2:	42b0      	cmp	r0, r6
d00531d4:	eee7 6a84 	vfma.f32	s13, s15, s8
d00531d8:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00531dc:	dd8c      	ble.n	d00530f8 <fillTriangleDitherBayer+0x818>
d00531de:	f8dd b01c 	ldr.w	fp, [sp, #28]
d00531e2:	e5fb      	b.n	d0052ddc <fillTriangleDitherBayer+0x4fc>
d00531e4:	d1f0      	bne.n	d00531c8 <fillTriangleDitherBayer+0x8e8>
d00531e6:	9900      	ldr	r1, [sp, #0]
d00531e8:	eeb0 9a43 	vmov.f32	s18, s6
d00531ec:	2900      	cmp	r1, #0
d00531ee:	d0af      	beq.n	d0053150 <fillTriangleDitherBayer+0x870>
d00531f0:	f1a9 0502 	sub.w	r5, r9, #2
d00531f4:	2100      	movs	r1, #0
d00531f6:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d00531fa:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d00531fe:	ee77 7a86 	vadd.f32	s15, s15, s12
d0053202:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053206:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d005320a:	ee31 1a09 	vadd.f32	s2, s2, s18
d005320e:	019c      	lsls	r4, r3, #6
d0053210:	3101      	adds	r1, #1
d0053212:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053216:	ee17 3a90 	vmov	r3, s15
d005321a:	b29b      	uxth	r3, r3
d005321c:	429f      	cmp	r7, r3
d005321e:	d902      	bls.n	d0053226 <fillTriangleDitherBayer+0x946>
d0053220:	802b      	strh	r3, [r5, #0]
d0053222:	f80c a004 	strb.w	sl, [ip, r4]
d0053226:	428a      	cmp	r2, r1
d0053228:	dce5      	bgt.n	d00531f6 <fillTriangleDitherBayer+0x916>
d005322a:	e7bf      	b.n	d00531ac <fillTriangleDitherBayer+0x8cc>
d005322c:	d0140324 	.word	0xd0140324
d0053230:	d005b020 	.word	0xd005b020
d0053234:	d005a5f8 	.word	0xd005a5f8
d0053238:	38d1b717 	.word	0x38d1b717
d005323c:	f04f 0a10 	mov.w	sl, #16
d0053240:	2310      	movs	r3, #16
d0053242:	9304      	str	r3, [sp, #16]
d0053244:	f7ff bbb2 	b.w	d00529ac <fillTriangleDitherBayer+0xcc>
d0053248:	eeb0 ba43 	vmov.f32	s22, s6
d005324c:	eef0 9a43 	vmov.f32	s19, s6
d0053250:	e63c      	b.n	d0052ecc <fillTriangleDitherBayer+0x5ec>
d0053252:	eef0 2a43 	vmov.f32	s5, s6
d0053256:	eeb0 4a43 	vmov.f32	s8, s6
d005325a:	e721      	b.n	d00530a0 <fillTriangleDitherBayer+0x7c0>

d005325c <fillTriangleDitherBayerT>:
d005325c:	eddf 7aea 	vldr	s15, [pc, #936]	; d0053608 <fillTriangleDitherBayerT+0x3ac>
d0053260:	eef4 0ae7 	vcmpe.f32	s1, s15
d0053264:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053268:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005326c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0053270:	ed2d 8b10 	vpush	{d8-d15}
d0053274:	b08f      	sub	sp, #60	; 0x3c
d0053276:	9203      	str	r2, [sp, #12]
d0053278:	bf94      	ite	ls
d005327a:	2201      	movls	r2, #1
d005327c:	2200      	movhi	r2, #0
d005327e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053282:	9001      	str	r0, [sp, #4]
d0053284:	9102      	str	r1, [sp, #8]
d0053286:	bf98      	it	ls
d0053288:	f042 0201 	orrls.w	r2, r2, #1
d005328c:	9304      	str	r3, [sp, #16]
d005328e:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d0053292:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d0053296:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d005329a:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d005329e:	f89d c0b8 	ldrb.w	ip, [sp, #184]	; 0xb8
d00532a2:	2a00      	cmp	r2, #0
d00532a4:	f040 818c 	bne.w	d00535c0 <fillTriangleDitherBayerT+0x364>
d00532a8:	eeb4 0a67 	vcmp.f32	s0, s15
d00532ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00532b0:	f240 8186 	bls.w	d00535c0 <fillTriangleDitherBayerT+0x364>
d00532b4:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00532b8:	eddf 7ad4 	vldr	s15, [pc, #848]	; d005360c <fillTriangleDitherBayerT+0x3b0>
d00532bc:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d00532c0:	ee07 4a10 	vmov	s14, r4
d00532c4:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d00532c8:	ee86 9a81 	vdiv.f32	s18, s13, s2
d00532cc:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00532d0:	eec6 1a80 	vdiv.f32	s3, s13, s0
d00532d4:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d00532d8:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d00532dc:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00532e0:	ee16 2a90 	vmov	r2, s13
d00532e4:	ee06 0a90 	vmov	s13, r0
d00532e8:	eef8 5a66 	vcvt.f32.u32	s11, s13
d00532ec:	ee06 1a90 	vmov	s13, r1
d00532f0:	1c51      	adds	r1, r2, #1
d00532f2:	ee27 7a21 	vmul.f32	s14, s14, s3
d00532f6:	eeb8 5a66 	vcvt.f32.u32	s10, s13
d00532fa:	2905      	cmp	r1, #5
d00532fc:	bfa8      	it	ge
d00532fe:	2105      	movge	r1, #5
d0053300:	2a04      	cmp	r2, #4
d0053302:	ee65 5a80 	vmul.f32	s11, s11, s0
d0053306:	ee25 5a09 	vmul.f32	s10, s10, s18
d005330a:	f300 8410 	bgt.w	d0053b2e <fillTriangleDitherBayerT+0x8d2>
d005330e:	f003 030f 	and.w	r3, r3, #15
d0053312:	2a03      	cmp	r2, #3
d0053314:	f103 0320 	add.w	r3, r3, #32
d0053318:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d005331c:	b2c0      	uxtb	r0, r0
d005331e:	9005      	str	r0, [sp, #20]
d0053320:	f300 8407 	bgt.w	d0053b32 <fillTriangleDitherBayerT+0x8d6>
d0053324:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0053328:	b2db      	uxtb	r3, r3
d005332a:	9306      	str	r3, [sp, #24]
d005332c:	eddd 6a02 	vldr	s13, [sp, #8]
d0053330:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0053334:	eddd 6a04 	vldr	s13, [sp, #16]
d0053338:	eeb8 3ae6 	vcvt.f32.s32	s6, s13
d005333c:	eddd 6a01 	vldr	s13, [sp, #4]
d0053340:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0053344:	eddd 6a03 	vldr	s13, [sp, #12]
d0053348:	eef4 4ac3 	vcmpe.f32	s9, s6
d005334c:	eeb8 4ae6 	vcvt.f32.s32	s8, s13
d0053350:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d0053354:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053358:	eef8 2ae6 	vcvt.f32.s32	s5, s13
d005335c:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d0053360:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0053364:	f300 8131 	bgt.w	d00535ca <fillTriangleDitherBayerT+0x36e>
d0053368:	eef4 4ae6 	vcmpe.f32	s9, s13
d005336c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053370:	f300 8238 	bgt.w	d00537e4 <fillTriangleDitherBayerT+0x588>
d0053374:	eef4 6ac3 	vcmpe.f32	s13, s6
d0053378:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005337c:	d517      	bpl.n	d00533ae <fillTriangleDitherBayerT+0x152>
d005337e:	eef0 0a65 	vmov.f32	s1, s11
d0053382:	eeb0 1a40 	vmov.f32	s2, s0
d0053386:	eeb0 2a43 	vmov.f32	s4, s6
d005338a:	eef0 3a44 	vmov.f32	s7, s8
d005338e:	eef0 5a45 	vmov.f32	s11, s10
d0053392:	eeb0 0a49 	vmov.f32	s0, s18
d0053396:	eeb0 3a66 	vmov.f32	s6, s13
d005339a:	eeb0 4a62 	vmov.f32	s8, s5
d005339e:	eeb0 5a60 	vmov.f32	s10, s1
d00533a2:	eeb0 9a41 	vmov.f32	s18, s2
d00533a6:	eef0 6a42 	vmov.f32	s13, s4
d00533aa:	eef0 2a63 	vmov.f32	s5, s7
d00533ae:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d00533b2:	ee34 2aa3 	vadd.f32	s4, s9, s7
d00533b6:	ee76 3aa3 	vadd.f32	s7, s13, s7
d00533ba:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d00533be:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d00533c2:	ee12 3a10 	vmov	r3, s4
d00533c6:	ee13 1a90 	vmov	r1, s7
d00533ca:	428b      	cmp	r3, r1
d00533cc:	f000 80f8 	beq.w	d00535c0 <fillTriangleDitherBayerT+0x364>
d00533d0:	ee36 1ae4 	vsub.f32	s2, s13, s9
d00533d4:	ed9f 2a8c 	vldr	s4, [pc, #560]	; d0053608 <fillTriangleDitherBayerT+0x3ac>
d00533d8:	eeb4 1ac2 	vcmpe.f32	s2, s4
d00533dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533e0:	f240 80ee 	bls.w	d00535c0 <fillTriangleDitherBayerT+0x364>
d00533e4:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00533e8:	ee72 0ac6 	vsub.f32	s1, s5, s12
d00533ec:	ee39 8a61 	vsub.f32	s16, s18, s3
d00533f0:	eec9 3a81 	vdiv.f32	s7, s19, s2
d00533f4:	ee33 1a64 	vsub.f32	s2, s6, s9
d00533f8:	ee75 8a47 	vsub.f32	s17, s10, s14
d00533fc:	eeb4 1ac2 	vcmpe.f32	s2, s4
d0053400:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053404:	ee60 0aa3 	vmul.f32	s1, s1, s7
d0053408:	ee28 8a23 	vmul.f32	s16, s16, s7
d005340c:	ee68 8aa3 	vmul.f32	s17, s17, s7
d0053410:	f300 8100 	bgt.w	d0053614 <fillTriangleDitherBayerT+0x3b8>
d0053414:	ee03 2a90 	vmov	s7, r2
d0053418:	ee76 fac3 	vsub.f32	s31, s13, s6
d005341c:	9905      	ldr	r1, [sp, #20]
d005341e:	eb0c 1c0c 	add.w	ip, ip, ip, lsl #4
d0053422:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d0053426:	eef4 fac2 	vcmpe.f32	s31, s4
d005342a:	ea4f 2c2c 	mov.w	ip, ip, asr #8
d005342e:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0053432:	eef0 3a67 	vmov.f32	s7, s15
d0053436:	eefe 3ace 	vcvt.s32.f32	s7, s7, #4
d005343a:	ee13 3a90 	vmov	r3, s7
d005343e:	f383 0204 	usat	r2, #4, r3
d0053442:	9201      	str	r2, [sp, #4]
d0053444:	9a06      	ldr	r2, [sp, #24]
d0053446:	428a      	cmp	r2, r1
d0053448:	bf18      	it	ne
d005344a:	2b00      	cmpne	r3, #0
d005344c:	bfd4      	ite	le
d005344e:	2301      	movle	r3, #1
d0053450:	2300      	movgt	r3, #0
d0053452:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053456:	9304      	str	r3, [sp, #16]
d0053458:	f340 80b2 	ble.w	d00535c0 <fillTriangleDitherBayerT+0x364>
d005345c:	ed9f ea6b 	vldr	s28, [pc, #428]	; d005360c <fillTriangleDitherBayerT+0x3b0>
d0053460:	eef0 9a4e 	vmov.f32	s19, s28
d0053464:	eeb0 ba4e 	vmov.f32	s22, s28
d0053468:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d005346c:	eddf 3a66 	vldr	s7, [pc, #408]	; d0053608 <fillTriangleDitherBayerT+0x3ac>
d0053470:	ee72 2ac4 	vsub.f32	s5, s5, s8
d0053474:	ee39 9a40 	vsub.f32	s18, s18, s0
d0053478:	eec2 7a2f 	vdiv.f32	s15, s4, s31
d005347c:	eeb4 1ae3 	vcmpe.f32	s2, s7
d0053480:	ee35 5a65 	vsub.f32	s10, s10, s11
d0053484:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053488:	ee62 2aa7 	vmul.f32	s5, s5, s15
d005348c:	ee25 5a27 	vmul.f32	s10, s10, s15
d0053490:	edcd 2a0a 	vstr	s5, [sp, #40]	; 0x28
d0053494:	ee69 2a27 	vmul.f32	s5, s18, s15
d0053498:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d005349c:	f300 80f6 	bgt.w	d005368c <fillTriangleDitherBayerT+0x430>
d00534a0:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d00534a4:	edcd 7a07 	vstr	s15, [sp, #28]
d00534a8:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00534ac:	f240 123f 	movw	r2, #319	; 0x13f
d00534b0:	9907      	ldr	r1, [sp, #28]
d00534b2:	ee17 3a90 	vmov	r3, s15
d00534b6:	ea21 7ae1 	bic.w	sl, r1, r1, asr #31
d00534ba:	3b01      	subs	r3, #1
d00534bc:	4293      	cmp	r3, r2
d00534be:	bfa8      	it	ge
d00534c0:	4613      	movge	r3, r2
d00534c2:	459a      	cmp	sl, r3
d00534c4:	dc7c      	bgt.n	d00535c0 <fillTriangleDitherBayerT+0x364>
d00534c6:	ee07 aa90 	vmov	s15, sl
d00534ca:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00534ce:	3301      	adds	r3, #1
d00534d0:	eddd ba0a 	vldr	s23, [sp, #40]	; 0x28
d00534d4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00534d8:	ed9d ba09 	vldr	s22, [sp, #36]	; 0x24
d00534dc:	9303      	str	r3, [sp, #12]
d00534de:	9b04      	ldr	r3, [sp, #16]
d00534e0:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00534e4:	eddf 9a48 	vldr	s19, [pc, #288]	; d0053608 <fillTriangleDitherBayerT+0x3ac>
d00534e8:	f083 0301 	eor.w	r3, r3, #1
d00534ec:	ed9f 1a47 	vldr	s2, [pc, #284]	; d005360c <fillTriangleDitherBayerT+0x3b0>
d00534f0:	ed9f 9a47 	vldr	s18, [pc, #284]	; d0053610 <fillTriangleDitherBayerT+0x3b4>
d00534f4:	ee77 4ae4 	vsub.f32	s9, s15, s9
d00534f8:	9302      	str	r3, [sp, #8]
d00534fa:	ee37 3ac3 	vsub.f32	s6, s15, s6
d00534fe:	eea0 6aa4 	vfma.f32	s12, s1, s9
d0053502:	eee8 1a24 	vfma.f32	s3, s16, s9
d0053506:	eea8 7aa4 	vfma.f32	s14, s17, s9
d005350a:	eeab 4a83 	vfma.f32	s8, s23, s6
d005350e:	eeab 0a03 	vfma.f32	s0, s22, s6
d0053512:	eee5 5a03 	vfma.f32	s11, s10, s6
d0053516:	e033      	b.n	d0053580 <fillTriangleDitherBayerT+0x324>
d0053518:	eeb0 3a47 	vmov.f32	s6, s14
d005351c:	eeb0 2a61 	vmov.f32	s4, s3
d0053520:	eef0 6a46 	vmov.f32	s13, s12
d0053524:	eef0 2a65 	vmov.f32	s5, s11
d0053528:	eef0 4a40 	vmov.f32	s9, s0
d005352c:	eef0 3a44 	vmov.f32	s7, s8
d0053530:	fefa 7a66 	vrintp.f32	s15, s13
d0053534:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053538:	f240 13df 	movw	r3, #479	; 0x1df
d005353c:	ee17 7a90 	vmov	r7, s15
d0053540:	fefa 7a63 	vrintp.f32	s15, s7
d0053544:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053548:	3f01      	subs	r7, #1
d005354a:	ee17 4a90 	vmov	r4, s15
d005354e:	429f      	cmp	r7, r3
d0053550:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0053554:	bfa8      	it	ge
d0053556:	461f      	movge	r7, r3
d0053558:	42a7      	cmp	r7, r4
d005355a:	f280 815c 	bge.w	d0053816 <fillTriangleDitherBayerT+0x5ba>
d005355e:	f10a 0a01 	add.w	sl, sl, #1
d0053562:	9b03      	ldr	r3, [sp, #12]
d0053564:	ee36 6a20 	vadd.f32	s12, s12, s1
d0053568:	459a      	cmp	sl, r3
d005356a:	ee71 1a88 	vadd.f32	s3, s3, s16
d005356e:	ee37 7a28 	vadd.f32	s14, s14, s17
d0053572:	ee34 4a2b 	vadd.f32	s8, s8, s23
d0053576:	ee30 0a0b 	vadd.f32	s0, s0, s22
d005357a:	ee75 5a85 	vadd.f32	s11, s11, s10
d005357e:	d01f      	beq.n	d00535c0 <fillTriangleDitherBayerT+0x364>
d0053580:	eeb4 6ac4 	vcmpe.f32	s12, s8
d0053584:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053588:	dcc6      	bgt.n	d0053518 <fillTriangleDitherBayerT+0x2bc>
d005358a:	eeb0 3a65 	vmov.f32	s6, s11
d005358e:	eeb0 2a40 	vmov.f32	s4, s0
d0053592:	eef0 6a44 	vmov.f32	s13, s8
d0053596:	eef0 2a47 	vmov.f32	s5, s14
d005359a:	eef0 4a61 	vmov.f32	s9, s3
d005359e:	eef0 3a46 	vmov.f32	s7, s12
d00535a2:	e7c5      	b.n	d0053530 <fillTriangleDitherBayerT+0x2d4>
d00535a4:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d00535a8:	eddd 4a0c 	vldr	s9, [sp, #48]	; 0x30
d00535ac:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d00535b0:	eddf 7a15 	vldr	s15, [pc, #84]	; d0053608 <fillTriangleDitherBayerT+0x3ac>
d00535b4:	eef4 fae7 	vcmpe.f32	s31, s15
d00535b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00535bc:	f73f af74 	bgt.w	d00534a8 <fillTriangleDitherBayerT+0x24c>
d00535c0:	b00f      	add	sp, #60	; 0x3c
d00535c2:	ecbd 8b10 	vpop	{d8-d15}
d00535c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00535ca:	eeb4 3ae6 	vcmpe.f32	s6, s13
d00535ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00535d2:	f340 80ee 	ble.w	d00537b2 <fillTriangleDitherBayerT+0x556>
d00535d6:	eef0 0a45 	vmov.f32	s1, s10
d00535da:	eeb0 1a49 	vmov.f32	s2, s18
d00535de:	eeb0 2a66 	vmov.f32	s4, s13
d00535e2:	eef0 3a62 	vmov.f32	s7, s5
d00535e6:	eeb0 5a47 	vmov.f32	s10, s14
d00535ea:	eeb0 9a61 	vmov.f32	s18, s3
d00535ee:	eef0 6a64 	vmov.f32	s13, s9
d00535f2:	eef0 2a46 	vmov.f32	s5, s12
d00535f6:	eeb0 7a60 	vmov.f32	s14, s1
d00535fa:	eef0 1a41 	vmov.f32	s3, s2
d00535fe:	eef0 4a42 	vmov.f32	s9, s4
d0053602:	eeb0 6a63 	vmov.f32	s12, s7
d0053606:	e6d2      	b.n	d00533ae <fillTriangleDitherBayerT+0x152>
d0053608:	38d1b717 	.word	0x38d1b717
d005360c:	00000000 	.word	0x00000000
d0053610:	477fff00 	.word	0x477fff00
d0053614:	ee03 2a90 	vmov	s7, r2
d0053618:	ee89 aa81 	vdiv.f32	s20, s19, s2
d005361c:	9905      	ldr	r1, [sp, #20]
d005361e:	eb0c 1c0c 	add.w	ip, ip, ip, lsl #4
d0053622:	ea4f 2c2c 	mov.w	ip, ip, asr #8
d0053626:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d005362a:	ee74 aa46 	vsub.f32	s21, s8, s12
d005362e:	ee76 fac3 	vsub.f32	s31, s13, s6
d0053632:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0053636:	ee70 9a61 	vsub.f32	s19, s0, s3
d005363a:	eef4 fac2 	vcmpe.f32	s31, s4
d005363e:	eef0 3a67 	vmov.f32	s7, s15
d0053642:	ee35 eac7 	vsub.f32	s28, s11, s14
d0053646:	eefe 3ace 	vcvt.s32.f32	s7, s7, #4
d005364a:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d005364e:	ee13 3a90 	vmov	r3, s7
d0053652:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0053656:	f383 0204 	usat	r2, #4, r3
d005365a:	eeb0 ba67 	vmov.f32	s22, s15
d005365e:	ee69 7a8a 	vmul.f32	s15, s19, s20
d0053662:	9201      	str	r2, [sp, #4]
d0053664:	9a06      	ldr	r2, [sp, #24]
d0053666:	eef0 9a67 	vmov.f32	s19, s15
d005366a:	428a      	cmp	r2, r1
d005366c:	bf18      	it	ne
d005366e:	2b00      	cmpne	r3, #0
d0053670:	bfd4      	ite	le
d0053672:	2301      	movle	r3, #1
d0053674:	2300      	movgt	r3, #0
d0053676:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005367a:	9304      	str	r3, [sp, #16]
d005367c:	f73f aef4 	bgt.w	d0053468 <fillTriangleDitherBayerT+0x20c>
d0053680:	ed1f 5a1e 	vldr	s10, [pc, #-120]	; d005360c <fillTriangleDitherBayerT+0x3b0>
d0053684:	ed8d 5a09 	vstr	s10, [sp, #36]	; 0x24
d0053688:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d005368c:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0053690:	f240 123f 	movw	r2, #319	; 0x13f
d0053694:	ee17 3a90 	vmov	r3, s15
d0053698:	edcd 7a07 	vstr	s15, [sp, #28]
d005369c:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d00536a0:	3b01      	subs	r3, #1
d00536a2:	ee17 aa90 	vmov	sl, s15
d00536a6:	4293      	cmp	r3, r2
d00536a8:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d00536ac:	bfa8      	it	ge
d00536ae:	4613      	movge	r3, r2
d00536b0:	4553      	cmp	r3, sl
d00536b2:	f6ff af7d 	blt.w	d00535b0 <fillTriangleDitherBayerT+0x354>
d00536b6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00536ba:	3301      	adds	r3, #1
d00536bc:	eeb0 aa46 	vmov.f32	s20, s12
d00536c0:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d005360c <fillTriangleDitherBayerT+0x3b0>
d00536c4:	9303      	str	r3, [sp, #12]
d00536c6:	eef0 aa46 	vmov.f32	s21, s12
d00536ca:	ee77 3ae4 	vsub.f32	s7, s15, s9
d00536ce:	ee07 aa90 	vmov	s15, sl
d00536d2:	9b04      	ldr	r3, [sp, #16]
d00536d4:	eef0 ca61 	vmov.f32	s25, s3
d00536d8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00536dc:	ed1f 2a34 	vldr	s4, [pc, #-208]	; d0053610 <fillTriangleDitherBayerT+0x3b4>
d00536e0:	eeb0 ca47 	vmov.f32	s24, s14
d00536e4:	f083 0301 	eor.w	r3, r3, #1
d00536e8:	eef0 da4b 	vmov.f32	s27, s22
d00536ec:	edcd 6a0b 	vstr	s13, [sp, #44]	; 0x2c
d00536f0:	ee77 7aa3 	vadd.f32	s15, s15, s7
d00536f4:	9302      	str	r3, [sp, #8]
d00536f6:	eef0 ba61 	vmov.f32	s23, s3
d00536fa:	edcd 4a0c 	vstr	s9, [sp, #48]	; 0x30
d00536fe:	eef0 ea69 	vmov.f32	s29, s19
d0053702:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d0053706:	eea7 aa8b 	vfma.f32	s20, s15, s22
d005370a:	eeb0 ba47 	vmov.f32	s22, s14
d005370e:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0053712:	eee8 ca27 	vfma.f32	s25, s16, s15
d0053716:	eea8 caa7 	vfma.f32	s24, s17, s15
d005371a:	eee7 baa9 	vfma.f32	s23, s15, s19
d005371e:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0053722:	e034      	b.n	d005378e <fillTriangleDitherBayerT+0x532>
d0053724:	eef0 3a4c 	vmov.f32	s7, s24
d0053728:	eef0 4a6c 	vmov.f32	s9, s25
d005372c:	eef0 7a6a 	vmov.f32	s15, s21
d0053730:	eeb0 6a4b 	vmov.f32	s12, s22
d0053734:	eef0 6a6b 	vmov.f32	s13, s23
d0053738:	eeb0 1a4a 	vmov.f32	s2, s20
d005373c:	feba 9a67 	vrintp.f32	s18, s15
d0053740:	eebd 9ac9 	vcvt.s32.f32	s18, s18
d0053744:	fefa 9a41 	vrintp.f32	s19, s2
d0053748:	f240 13df 	movw	r3, #479	; 0x1df
d005374c:	ee19 7a10 	vmov	r7, s18
d0053750:	eebd 9ae9 	vcvt.s32.f32	s18, s19
d0053754:	3f01      	subs	r7, #1
d0053756:	ee19 4a10 	vmov	r4, s18
d005375a:	429f      	cmp	r7, r3
d005375c:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0053760:	bfa8      	it	ge
d0053762:	461f      	movge	r7, r3
d0053764:	42a7      	cmp	r7, r4
d0053766:	f280 811b 	bge.w	d00539a0 <fillTriangleDitherBayerT+0x744>
d005376a:	f10a 0a01 	add.w	sl, sl, #1
d005376e:	9b03      	ldr	r3, [sp, #12]
d0053770:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0053774:	459a      	cmp	sl, r3
d0053776:	ee7c ca88 	vadd.f32	s25, s25, s16
d005377a:	ee3c ca28 	vadd.f32	s24, s24, s17
d005377e:	ee3a aa2d 	vadd.f32	s20, s20, s27
d0053782:	ee7b baae 	vadd.f32	s23, s23, s29
d0053786:	ee3b ba0e 	vadd.f32	s22, s22, s28
d005378a:	f43f af0b 	beq.w	d00535a4 <fillTriangleDitherBayerT+0x348>
d005378e:	eef4 aaca 	vcmpe.f32	s21, s20
d0053792:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053796:	dcc5      	bgt.n	d0053724 <fillTriangleDitherBayerT+0x4c8>
d0053798:	eef0 3a4b 	vmov.f32	s7, s22
d005379c:	eef0 4a6b 	vmov.f32	s9, s23
d00537a0:	eef0 7a4a 	vmov.f32	s15, s20
d00537a4:	eeb0 6a4c 	vmov.f32	s12, s24
d00537a8:	eef0 6a6c 	vmov.f32	s13, s25
d00537ac:	eeb0 1a6a 	vmov.f32	s2, s21
d00537b0:	e7c4      	b.n	d005373c <fillTriangleDitherBayerT+0x4e0>
d00537b2:	eef0 0a47 	vmov.f32	s1, s14
d00537b6:	eeb0 1a61 	vmov.f32	s2, s3
d00537ba:	eeb0 2a64 	vmov.f32	s4, s9
d00537be:	eef0 3a46 	vmov.f32	s7, s12
d00537c2:	eeb0 7a65 	vmov.f32	s14, s11
d00537c6:	eef0 1a40 	vmov.f32	s3, s0
d00537ca:	eef0 4a43 	vmov.f32	s9, s6
d00537ce:	eeb0 6a44 	vmov.f32	s12, s8
d00537d2:	eef0 5a60 	vmov.f32	s11, s1
d00537d6:	eeb0 0a41 	vmov.f32	s0, s2
d00537da:	eeb0 3a42 	vmov.f32	s6, s4
d00537de:	eeb0 4a63 	vmov.f32	s8, s7
d00537e2:	e5c7      	b.n	d0053374 <fillTriangleDitherBayerT+0x118>
d00537e4:	eef0 0a47 	vmov.f32	s1, s14
d00537e8:	eeb0 1a61 	vmov.f32	s2, s3
d00537ec:	eeb0 2a64 	vmov.f32	s4, s9
d00537f0:	eef0 3a46 	vmov.f32	s7, s12
d00537f4:	eeb0 7a45 	vmov.f32	s14, s10
d00537f8:	eef0 1a49 	vmov.f32	s3, s18
d00537fc:	eef0 4a66 	vmov.f32	s9, s13
d0053800:	eeb0 6a62 	vmov.f32	s12, s5
d0053804:	eeb0 5a60 	vmov.f32	s10, s1
d0053808:	eeb0 9a41 	vmov.f32	s18, s2
d005380c:	eef0 6a42 	vmov.f32	s13, s4
d0053810:	eef0 2a63 	vmov.f32	s5, s7
d0053814:	e5ae      	b.n	d0053374 <fillTriangleDitherBayerT+0x118>
d0053816:	ee76 6ae3 	vsub.f32	s13, s13, s7
d005381a:	eef4 6ae9 	vcmpe.f32	s13, s19
d005381e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053822:	f340 818a 	ble.w	d0053b3a <fillTriangleDitherBayerT+0x8de>
d0053826:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005382a:	ee32 2a64 	vsub.f32	s4, s4, s9
d005382e:	ee33 3a62 	vsub.f32	s6, s6, s5
d0053832:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0053836:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005383a:	ee77 3ae3 	vsub.f32	s7, s15, s7
d005383e:	ee07 4a90 	vmov	s15, r4
d0053842:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053846:	ee77 7aa3 	vadd.f32	s15, s15, s7
d005384a:	ee22 2a0a 	vmul.f32	s4, s4, s20
d005384e:	ee23 aa0a 	vmul.f32	s20, s6, s20
d0053852:	eee7 4a82 	vfma.f32	s9, s15, s4
d0053856:	eee7 2a8a 	vfma.f32	s5, s15, s20
d005385a:	ebca 190a 	rsb	r9, sl, sl, lsl #4
d005385e:	4bbc      	ldr	r3, [pc, #752]	; (d0053b50 <fillTriangleDitherBayerT+0x8f4>)
d0053860:	eb04 0e84 	add.w	lr, r4, r4, lsl #2
d0053864:	48bb      	ldr	r0, [pc, #748]	; (d0053b54 <fillTriangleDitherBayerT+0x8f8>)
d0053866:	eb04 1249 	add.w	r2, r4, r9, lsl #5
d005386a:	6819      	ldr	r1, [r3, #0]
d005386c:	f00a 0b03 	and.w	fp, sl, #3
d0053870:	eb0a 138e 	add.w	r3, sl, lr, lsl #6
d0053874:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0053878:	4ab7      	ldr	r2, [pc, #732]	; (d0053b58 <fillTriangleDitherBayerT+0x8fc>)
d005387a:	f8cd a010 	str.w	sl, [sp, #16]
d005387e:	eb01 0e03 	add.w	lr, r1, r3
d0053882:	eddf aab6 	vldr	s21, [pc, #728]	; d0053b5c <fillTriangleDitherBayerT+0x900>
d0053886:	eb02 0b8b 	add.w	fp, r2, fp, lsl #2
d005388a:	f8dd a018 	ldr.w	sl, [sp, #24]
d005388e:	e010      	b.n	d00538b2 <fillTriangleDitherBayerT+0x656>
d0053890:	ee07 0a90 	vmov	s15, r0
d0053894:	4404      	add	r4, r0
d0053896:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d005389a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005389e:	42bc      	cmp	r4, r7
d00538a0:	eb09 0940 	add.w	r9, r9, r0, lsl #1
d00538a4:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d00538a8:	eee7 4a82 	vfma.f32	s9, s15, s4
d00538ac:	eee7 2a8a 	vfma.f32	s5, s15, s20
d00538b0:	dc6d      	bgt.n	d005398e <fillTriangleDitherBayerT+0x732>
d00538b2:	eba7 0804 	sub.w	r8, r7, r4
d00538b6:	eef4 4aea 	vcmpe.f32	s9, s21
d00538ba:	f108 0001 	add.w	r0, r8, #1
d00538be:	2830      	cmp	r0, #48	; 0x30
d00538c0:	bfa8      	it	ge
d00538c2:	2030      	movge	r0, #48	; 0x30
d00538c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538c8:	d9e2      	bls.n	d0053890 <fillTriangleDitherBayerT+0x634>
d00538ca:	f1b8 0f00 	cmp.w	r8, #0
d00538ce:	eec2 6aa4 	vdiv.f32	s13, s5, s9
d00538d2:	dd5f      	ble.n	d0053994 <fillTriangleDitherBayerT+0x738>
d00538d4:	1e43      	subs	r3, r0, #1
d00538d6:	ee07 3a90 	vmov	s15, r3
d00538da:	eef0 3a64 	vmov.f32	s7, s9
d00538de:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00538e2:	eee7 3a82 	vfma.f32	s7, s15, s4
d00538e6:	eef4 3aea 	vcmpe.f32	s7, s21
d00538ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538ee:	dd52      	ble.n	d0053996 <fillTriangleDitherBayerT+0x73a>
d00538f0:	eeb0 ca62 	vmov.f32	s24, s5
d00538f4:	eea7 ca8a 	vfma.f32	s24, s15, s20
d00538f8:	ee8c 3a23 	vdiv.f32	s6, s24, s7
d00538fc:	ee33 3a66 	vsub.f32	s6, s6, s13
d0053900:	eec3 3a27 	vdiv.f32	s7, s6, s15
d0053904:	f1a9 0502 	sub.w	r5, r9, #2
d0053908:	2200      	movs	r2, #0
d005390a:	eeb6 3a00 	vmov.f32	s6, #96	; 0x3f000000  0.5
d005390e:	fec6 7a81 	vmaxnm.f32	s15, s13, s2
d0053912:	fec7 7ac9 	vminnm.f32	s15, s15, s18
d0053916:	ee77 7a83 	vadd.f32	s15, s15, s6
d005391a:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d005391e:	18a3      	adds	r3, r4, r2
d0053920:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053924:	f003 0303 	and.w	r3, r3, #3
d0053928:	ee17 1a90 	vmov	r1, s15
d005392c:	b289      	uxth	r1, r1
d005392e:	428e      	cmp	r6, r1
d0053930:	d90f      	bls.n	d0053952 <fillTriangleDitherBayerT+0x6f6>
d0053932:	f81b 3003 	ldrb.w	r3, [fp, r3]
d0053936:	4563      	cmp	r3, ip
d0053938:	db0b      	blt.n	d0053952 <fillTriangleDitherBayerT+0x6f6>
d005393a:	8029      	strh	r1, [r5, #0]
d005393c:	4656      	mov	r6, sl
d005393e:	9902      	ldr	r1, [sp, #8]
d0053940:	b361      	cbz	r1, d005399c <fillTriangleDitherBayerT+0x740>
d0053942:	9901      	ldr	r1, [sp, #4]
d0053944:	428b      	cmp	r3, r1
d0053946:	da29      	bge.n	d005399c <fillTriangleDitherBayerT+0x740>
d0053948:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d005394c:	019b      	lsls	r3, r3, #6
d005394e:	f80e 6003 	strb.w	r6, [lr, r3]
d0053952:	3201      	adds	r2, #1
d0053954:	ee76 6aa3 	vadd.f32	s13, s13, s7
d0053958:	4290      	cmp	r0, r2
d005395a:	dcd8      	bgt.n	d005390e <fillTriangleDitherBayerT+0x6b2>
d005395c:	f1b8 0f00 	cmp.w	r8, #0
d0053960:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053964:	ea4f 0240 	mov.w	r2, r0, lsl #1
d0053968:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005396c:	bfbc      	itt	lt
d005396e:	2202      	movlt	r2, #2
d0053970:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053974:	4491      	add	r9, r2
d0053976:	449e      	add	lr, r3
d0053978:	ee07 0a90 	vmov	s15, r0
d005397c:	4404      	add	r4, r0
d005397e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053982:	42bc      	cmp	r4, r7
d0053984:	eee7 4a82 	vfma.f32	s9, s15, s4
d0053988:	eee7 2a8a 	vfma.f32	s5, s15, s20
d005398c:	dd91      	ble.n	d00538b2 <fillTriangleDitherBayerT+0x656>
d005398e:	f8dd a010 	ldr.w	sl, [sp, #16]
d0053992:	e5e4      	b.n	d005355e <fillTriangleDitherBayerT+0x302>
d0053994:	d1f0      	bne.n	d0053978 <fillTriangleDitherBayerT+0x71c>
d0053996:	eef0 3a41 	vmov.f32	s7, s2
d005399a:	e7b3      	b.n	d0053904 <fillTriangleDitherBayerT+0x6a8>
d005399c:	9e05      	ldr	r6, [sp, #20]
d005399e:	e7d3      	b.n	d0053948 <fillTriangleDitherBayerT+0x6ec>
d00539a0:	ee77 7ac1 	vsub.f32	s15, s15, s2
d00539a4:	ed9f 9a6e 	vldr	s18, [pc, #440]	; d0053b60 <fillTriangleDitherBayerT+0x904>
d00539a8:	eef4 7ac9 	vcmpe.f32	s15, s18
d00539ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539b0:	f340 80c8 	ble.w	d0053b44 <fillTriangleDitherBayerT+0x8e8>
d00539b4:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00539b8:	ee74 4ae6 	vsub.f32	s9, s9, s13
d00539bc:	ee73 3ac6 	vsub.f32	s7, s7, s12
d00539c0:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d00539c4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00539c8:	ee37 1ac1 	vsub.f32	s2, s15, s2
d00539cc:	ee07 4a90 	vmov	s15, r4
d00539d0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00539d4:	ee77 7a81 	vadd.f32	s15, s15, s2
d00539d8:	ee64 4a89 	vmul.f32	s9, s9, s18
d00539dc:	ee63 3a89 	vmul.f32	s7, s7, s18
d00539e0:	eee7 6aa4 	vfma.f32	s13, s15, s9
d00539e4:	eea7 6aa3 	vfma.f32	s12, s15, s7
d00539e8:	ebca 190a 	rsb	r9, sl, sl, lsl #4
d00539ec:	4b58      	ldr	r3, [pc, #352]	; (d0053b50 <fillTriangleDitherBayerT+0x8f4>)
d00539ee:	eb04 0e84 	add.w	lr, r4, r4, lsl #2
d00539f2:	4858      	ldr	r0, [pc, #352]	; (d0053b54 <fillTriangleDitherBayerT+0x8f8>)
d00539f4:	eb04 1249 	add.w	r2, r4, r9, lsl #5
d00539f8:	6819      	ldr	r1, [r3, #0]
d00539fa:	f00a 0b03 	and.w	fp, sl, #3
d00539fe:	eb0a 138e 	add.w	r3, sl, lr, lsl #6
d0053a02:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0053a06:	4a54      	ldr	r2, [pc, #336]	; (d0053b58 <fillTriangleDitherBayerT+0x8fc>)
d0053a08:	f8cd a020 	str.w	sl, [sp, #32]
d0053a0c:	eb01 0e03 	add.w	lr, r1, r3
d0053a10:	ed9f 1a52 	vldr	s2, [pc, #328]	; d0053b5c <fillTriangleDitherBayerT+0x900>
d0053a14:	eb02 0b8b 	add.w	fp, r2, fp, lsl #2
d0053a18:	f8dd a018 	ldr.w	sl, [sp, #24]
d0053a1c:	e010      	b.n	d0053a40 <fillTriangleDitherBayerT+0x7e4>
d0053a1e:	ee07 0a90 	vmov	s15, r0
d0053a22:	4404      	add	r4, r0
d0053a24:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053a28:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053a2c:	42bc      	cmp	r4, r7
d0053a2e:	eb09 0940 	add.w	r9, r9, r0, lsl #1
d0053a32:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0053a36:	eee7 6aa4 	vfma.f32	s13, s15, s9
d0053a3a:	eea7 6aa3 	vfma.f32	s12, s15, s7
d0053a3e:	dc6d      	bgt.n	d0053b1c <fillTriangleDitherBayerT+0x8c0>
d0053a40:	eba7 0804 	sub.w	r8, r7, r4
d0053a44:	eef4 6ac1 	vcmpe.f32	s13, s2
d0053a48:	f108 0001 	add.w	r0, r8, #1
d0053a4c:	2830      	cmp	r0, #48	; 0x30
d0053a4e:	bfa8      	it	ge
d0053a50:	2030      	movge	r0, #48	; 0x30
d0053a52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a56:	d9e2      	bls.n	d0053a1e <fillTriangleDitherBayerT+0x7c2>
d0053a58:	f1b8 0f00 	cmp.w	r8, #0
d0053a5c:	ee86 9a26 	vdiv.f32	s18, s12, s13
d0053a60:	dd5f      	ble.n	d0053b22 <fillTriangleDitherBayerT+0x8c6>
d0053a62:	1e43      	subs	r3, r0, #1
d0053a64:	ee07 3a90 	vmov	s15, r3
d0053a68:	eef0 9a66 	vmov.f32	s19, s13
d0053a6c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053a70:	eee7 9aa4 	vfma.f32	s19, s15, s9
d0053a74:	eef4 9ac1 	vcmpe.f32	s19, s2
d0053a78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a7c:	dd52      	ble.n	d0053b24 <fillTriangleDitherBayerT+0x8c8>
d0053a7e:	eeb0 fa46 	vmov.f32	s30, s12
d0053a82:	eea7 faa3 	vfma.f32	s30, s15, s7
d0053a86:	ee8f da29 	vdiv.f32	s26, s30, s19
d0053a8a:	ee3d da49 	vsub.f32	s26, s26, s18
d0053a8e:	eecd 9a27 	vdiv.f32	s19, s26, s15
d0053a92:	f1a9 0502 	sub.w	r5, r9, #2
d0053a96:	2100      	movs	r1, #0
d0053a98:	eeb6 da00 	vmov.f32	s26, #96	; 0x3f000000  0.5
d0053a9c:	fec9 7a22 	vmaxnm.f32	s15, s18, s5
d0053aa0:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0053aa4:	ee77 7a8d 	vadd.f32	s15, s15, s26
d0053aa8:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0053aac:	1862      	adds	r2, r4, r1
d0053aae:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053ab2:	f002 0203 	and.w	r2, r2, #3
d0053ab6:	ee17 3a90 	vmov	r3, s15
d0053aba:	b29b      	uxth	r3, r3
d0053abc:	429e      	cmp	r6, r3
d0053abe:	d90f      	bls.n	d0053ae0 <fillTriangleDitherBayerT+0x884>
d0053ac0:	f81b 2002 	ldrb.w	r2, [fp, r2]
d0053ac4:	4562      	cmp	r2, ip
d0053ac6:	db0b      	blt.n	d0053ae0 <fillTriangleDitherBayerT+0x884>
d0053ac8:	802b      	strh	r3, [r5, #0]
d0053aca:	4656      	mov	r6, sl
d0053acc:	9b02      	ldr	r3, [sp, #8]
d0053ace:	b363      	cbz	r3, d0053b2a <fillTriangleDitherBayerT+0x8ce>
d0053ad0:	9b01      	ldr	r3, [sp, #4]
d0053ad2:	429a      	cmp	r2, r3
d0053ad4:	da29      	bge.n	d0053b2a <fillTriangleDitherBayerT+0x8ce>
d0053ad6:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053ada:	019b      	lsls	r3, r3, #6
d0053adc:	f80e 6003 	strb.w	r6, [lr, r3]
d0053ae0:	3101      	adds	r1, #1
d0053ae2:	ee39 9a29 	vadd.f32	s18, s18, s19
d0053ae6:	4288      	cmp	r0, r1
d0053ae8:	dcd8      	bgt.n	d0053a9c <fillTriangleDitherBayerT+0x840>
d0053aea:	f1b8 0f00 	cmp.w	r8, #0
d0053aee:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053af2:	ea4f 0240 	mov.w	r2, r0, lsl #1
d0053af6:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053afa:	bfbc      	itt	lt
d0053afc:	2202      	movlt	r2, #2
d0053afe:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053b02:	4491      	add	r9, r2
d0053b04:	449e      	add	lr, r3
d0053b06:	ee07 0a90 	vmov	s15, r0
d0053b0a:	4404      	add	r4, r0
d0053b0c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053b10:	42bc      	cmp	r4, r7
d0053b12:	eee7 6aa4 	vfma.f32	s13, s15, s9
d0053b16:	eea7 6aa3 	vfma.f32	s12, s15, s7
d0053b1a:	dd91      	ble.n	d0053a40 <fillTriangleDitherBayerT+0x7e4>
d0053b1c:	f8dd a020 	ldr.w	sl, [sp, #32]
d0053b20:	e623      	b.n	d005376a <fillTriangleDitherBayerT+0x50e>
d0053b22:	d1f0      	bne.n	d0053b06 <fillTriangleDitherBayerT+0x8aa>
d0053b24:	eef0 9a62 	vmov.f32	s19, s5
d0053b28:	e7b3      	b.n	d0053a92 <fillTriangleDitherBayerT+0x836>
d0053b2a:	9e05      	ldr	r6, [sp, #20]
d0053b2c:	e7d3      	b.n	d0053ad6 <fillTriangleDitherBayerT+0x87a>
d0053b2e:	2310      	movs	r3, #16
d0053b30:	9305      	str	r3, [sp, #20]
d0053b32:	2310      	movs	r3, #16
d0053b34:	9306      	str	r3, [sp, #24]
d0053b36:	f7ff bbf9 	b.w	d005332c <fillTriangleDitherBayerT+0xd0>
d0053b3a:	eeb0 aa41 	vmov.f32	s20, s2
d0053b3e:	eeb0 2a41 	vmov.f32	s4, s2
d0053b42:	e68a      	b.n	d005385a <fillTriangleDitherBayerT+0x5fe>
d0053b44:	eef0 3a62 	vmov.f32	s7, s5
d0053b48:	eef0 4a62 	vmov.f32	s9, s5
d0053b4c:	e74c      	b.n	d00539e8 <fillTriangleDitherBayerT+0x78c>
d0053b4e:	bf00      	nop
d0053b50:	d0140324 	.word	0xd0140324
d0053b54:	d005b020 	.word	0xd005b020
d0053b58:	d005a5f8 	.word	0xd005a5f8
d0053b5c:	33d6bf95 	.word	0x33d6bf95
d0053b60:	38d1b717 	.word	0x38d1b717

d0053b64 <fillTriangleDitherBayer2Mode>:
d0053b64:	eddf 7aca 	vldr	s15, [pc, #808]	; d0053e90 <fillTriangleDitherBayer2Mode+0x32c>
d0053b68:	eef4 0ae7 	vcmpe.f32	s1, s15
d0053b6c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053b70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b74:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0053b78:	ed2d 8b10 	vpush	{d8-d15}
d0053b7c:	b08d      	sub	sp, #52	; 0x34
d0053b7e:	9303      	str	r3, [sp, #12]
d0053b80:	bf94      	ite	ls
d0053b82:	2301      	movls	r3, #1
d0053b84:	2300      	movhi	r3, #0
d0053b86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b8a:	9202      	str	r2, [sp, #8]
d0053b8c:	f89d b0ac 	ldrb.w	fp, [sp, #172]	; 0xac
d0053b90:	bf98      	it	ls
d0053b92:	f043 0301 	orrls.w	r3, r3, #1
d0053b96:	f8bd 20a8 	ldrh.w	r2, [sp, #168]	; 0xa8
d0053b9a:	e9cd 0100 	strd	r0, r1, [sp]
d0053b9e:	f8bd 00a0 	ldrh.w	r0, [sp, #160]	; 0xa0
d0053ba2:	f8bd 10a4 	ldrh.w	r1, [sp, #164]	; 0xa4
d0053ba6:	2b00      	cmp	r3, #0
d0053ba8:	f040 814d 	bne.w	d0053e46 <fillTriangleDitherBayer2Mode+0x2e2>
d0053bac:	eeb4 0a67 	vcmp.f32	s0, s15
d0053bb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bb4:	f240 8147 	bls.w	d0053e46 <fillTriangleDitherBayer2Mode+0x2e2>
d0053bb8:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053bbc:	ee06 1a90 	vmov	s13, r1
d0053bc0:	ee07 0a10 	vmov	s14, r0
d0053bc4:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0053bc8:	ee87 3a80 	vdiv.f32	s6, s15, s0
d0053bcc:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0053bd0:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0053bd4:	ee07 2a90 	vmov	s15, r2
d0053bd8:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0053bdc:	eddd 7a01 	vldr	s15, [sp, #4]
d0053be0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0053be4:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0053be8:	eddd 7a03 	vldr	s15, [sp, #12]
d0053bec:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0053bf0:	eddd 7a00 	vldr	s15, [sp]
d0053bf4:	ee27 7a03 	vmul.f32	s14, s14, s6
d0053bf8:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0053bfc:	eddd 7a02 	vldr	s15, [sp, #8]
d0053c00:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0053c04:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0053c08:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0053c0c:	ee24 4a02 	vmul.f32	s8, s8, s4
d0053c10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c14:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0053c18:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0053c1c:	ee65 5a80 	vmul.f32	s11, s11, s0
d0053c20:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0053c24:	f300 8114 	bgt.w	d0053e50 <fillTriangleDitherBayer2Mode+0x2ec>
d0053c28:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0053c2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c30:	f300 8201 	bgt.w	d0054036 <fillTriangleDitherBayer2Mode+0x4d2>
d0053c34:	eef4 3ae6 	vcmpe.f32	s7, s13
d0053c38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c3c:	f300 8219 	bgt.w	d0054072 <fillTriangleDitherBayer2Mode+0x50e>
d0053c40:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053c44:	ee35 1a27 	vadd.f32	s2, s10, s15
d0053c48:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0053c4c:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0053c50:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053c54:	ee11 3a10 	vmov	r3, s2
d0053c58:	ee17 2a90 	vmov	r2, s15
d0053c5c:	4293      	cmp	r3, r2
d0053c5e:	f000 80f2 	beq.w	d0053e46 <fillTriangleDitherBayer2Mode+0x2e2>
d0053c62:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0053c66:	ed9f 1a8a 	vldr	s2, [pc, #552]	; d0053e90 <fillTriangleDitherBayer2Mode+0x32c>
d0053c6a:	eef4 8ac1 	vcmpe.f32	s17, s2
d0053c6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c72:	f240 80e8 	bls.w	d0053e46 <fillTriangleDitherBayer2Mode+0x2e2>
d0053c76:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0053c7a:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0053c7e:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0053c82:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d0053c86:	eeb4 9ac1 	vcmpe.f32	s18, s2
d0053c8a:	ee32 8a43 	vsub.f32	s16, s4, s6
d0053c8e:	ee74 8a47 	vsub.f32	s17, s8, s14
d0053c92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c96:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0053c9a:	ee28 8a27 	vmul.f32	s16, s16, s15
d0053c9e:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0053ca2:	f300 80ff 	bgt.w	d0053ea4 <fillTriangleDitherBayer2Mode+0x340>
d0053ca6:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0053caa:	ed9f ba7c 	vldr	s22, [pc, #496]	; d0053e9c <fillTriangleDitherBayer2Mode+0x338>
d0053cae:	eddf 9a79 	vldr	s19, [pc, #484]	; d0053e94 <fillTriangleDitherBayer2Mode+0x330>
d0053cb2:	ee76 fae3 	vsub.f32	s31, s13, s7
d0053cb6:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d0053cba:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0053cbe:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0053cc2:	eef4 fac1 	vcmpe.f32	s31, s2
d0053cc6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053cca:	ee17 3a90 	vmov	r3, s15
d0053cce:	edcd 7a00 	vstr	s15, [sp]
d0053cd2:	2b10      	cmp	r3, #16
d0053cd4:	bfa8      	it	ge
d0053cd6:	2310      	movge	r3, #16
d0053cd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053cdc:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0053ce0:	9302      	str	r3, [sp, #8]
d0053ce2:	f340 80b0 	ble.w	d0053e46 <fillTriangleDitherBayer2Mode+0x2e2>
d0053ce6:	eef0 ea4b 	vmov.f32	s29, s22
d0053cea:	eef0 ba4b 	vmov.f32	s23, s22
d0053cee:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0053cf2:	eddf 1a67 	vldr	s3, [pc, #412]	; d0053e90 <fillTriangleDitherBayer2Mode+0x32c>
d0053cf6:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0053cfa:	ee32 2a40 	vsub.f32	s4, s4, s0
d0053cfe:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d0053d02:	eeb4 9ae1 	vcmpe.f32	s18, s3
d0053d06:	ee34 4a65 	vsub.f32	s8, s8, s11
d0053d0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d0e:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0053d12:	ee24 fa27 	vmul.f32	s30, s8, s15
d0053d16:	edcd 2a06 	vstr	s5, [sp, #24]
d0053d1a:	ee62 2a27 	vmul.f32	s5, s4, s15
d0053d1e:	edcd 2a05 	vstr	s5, [sp, #20]
d0053d22:	f300 80f7 	bgt.w	d0053f14 <fillTriangleDitherBayer2Mode+0x3b0>
d0053d26:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0053d2a:	edcd 7a03 	vstr	s15, [sp, #12]
d0053d2e:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0053d32:	f240 123f 	movw	r2, #319	; 0x13f
d0053d36:	9903      	ldr	r1, [sp, #12]
d0053d38:	ee17 3a90 	vmov	r3, s15
d0053d3c:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
d0053d40:	3b01      	subs	r3, #1
d0053d42:	4293      	cmp	r3, r2
d0053d44:	bfa8      	it	ge
d0053d46:	4613      	movge	r3, r2
d0053d48:	4543      	cmp	r3, r8
d0053d4a:	db7c      	blt.n	d0053e46 <fillTriangleDitherBayer2Mode+0x2e2>
d0053d4c:	ee07 8a90 	vmov	s15, r8
d0053d50:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0053d54:	3301      	adds	r3, #1
d0053d56:	ed9d ba06 	vldr	s22, [sp, #24]
d0053d5a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053d5e:	eddd aa05 	vldr	s21, [sp, #20]
d0053d62:	ed9f 9a4b 	vldr	s18, [pc, #300]	; d0053e90 <fillTriangleDitherBayer2Mode+0x32c>
d0053d66:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0053e98 <fillTriangleDitherBayer2Mode+0x334>
d0053d6a:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0053d6e:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d0053e9c <fillTriangleDitherBayer2Mode+0x338>
d0053d72:	eddf 1a4b 	vldr	s3, [pc, #300]	; d0053ea0 <fillTriangleDitherBayer2Mode+0x33c>
d0053d76:	9301      	str	r3, [sp, #4]
d0053d78:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0053d7c:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0053d80:	eea0 6a85 	vfma.f32	s12, s1, s10
d0053d84:	eea8 3a05 	vfma.f32	s6, s16, s10
d0053d88:	eea8 7a85 	vfma.f32	s14, s17, s10
d0053d8c:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0053d90:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d0053d94:	eeef 5a23 	vfma.f32	s11, s30, s7
d0053d98:	e033      	b.n	d0053e02 <fillTriangleDitherBayer2Mode+0x29e>
d0053d9a:	eeb0 2a47 	vmov.f32	s4, s14
d0053d9e:	eef0 9a43 	vmov.f32	s19, s6
d0053da2:	eef0 6a46 	vmov.f32	s13, s12
d0053da6:	eef0 3a65 	vmov.f32	s7, s11
d0053daa:	eeb0 5a40 	vmov.f32	s10, s0
d0053dae:	eef0 2a64 	vmov.f32	s5, s9
d0053db2:	fefa 7a66 	vrintp.f32	s15, s13
d0053db6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053dba:	f240 13df 	movw	r3, #479	; 0x1df
d0053dbe:	ee17 4a90 	vmov	r4, s15
d0053dc2:	fefa 7a62 	vrintp.f32	s15, s5
d0053dc6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053dca:	3c01      	subs	r4, #1
d0053dcc:	ee17 1a90 	vmov	r1, s15
d0053dd0:	429c      	cmp	r4, r3
d0053dd2:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0053dd6:	bfa8      	it	ge
d0053dd8:	461c      	movge	r4, r3
d0053dda:	42a1      	cmp	r1, r4
d0053ddc:	f340 817b 	ble.w	d00540d6 <fillTriangleDitherBayer2Mode+0x572>
d0053de0:	f108 0801 	add.w	r8, r8, #1
d0053de4:	9b01      	ldr	r3, [sp, #4]
d0053de6:	ee36 6a20 	vadd.f32	s12, s12, s1
d0053dea:	4598      	cmp	r8, r3
d0053dec:	ee33 3a08 	vadd.f32	s6, s6, s16
d0053df0:	ee37 7a28 	vadd.f32	s14, s14, s17
d0053df4:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0053df8:	ee30 0a2a 	vadd.f32	s0, s0, s21
d0053dfc:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0053e00:	d021      	beq.n	d0053e46 <fillTriangleDitherBayer2Mode+0x2e2>
d0053e02:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0053e06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e0a:	dcc6      	bgt.n	d0053d9a <fillTriangleDitherBayer2Mode+0x236>
d0053e0c:	eeb0 2a65 	vmov.f32	s4, s11
d0053e10:	eef0 9a40 	vmov.f32	s19, s0
d0053e14:	eef0 6a64 	vmov.f32	s13, s9
d0053e18:	eef0 3a47 	vmov.f32	s7, s14
d0053e1c:	eeb0 5a43 	vmov.f32	s10, s6
d0053e20:	eef0 2a46 	vmov.f32	s5, s12
d0053e24:	e7c5      	b.n	d0053db2 <fillTriangleDitherBayer2Mode+0x24e>
d0053e26:	eddd 6a08 	vldr	s13, [sp, #32]
d0053e2a:	ed9d 6a09 	vldr	s12, [sp, #36]	; 0x24
d0053e2e:	ed9d fa0a 	vldr	s30, [sp, #40]	; 0x28
d0053e32:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0053e36:	eddf 7a16 	vldr	s15, [pc, #88]	; d0053e90 <fillTriangleDitherBayer2Mode+0x32c>
d0053e3a:	eef4 fae7 	vcmpe.f32	s31, s15
d0053e3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e42:	f73f af74 	bgt.w	d0053d2e <fillTriangleDitherBayer2Mode+0x1ca>
d0053e46:	b00d      	add	sp, #52	; 0x34
d0053e48:	ecbd 8b10 	vpop	{d8-d15}
d0053e4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053e50:	eef4 3ae6 	vcmpe.f32	s7, s13
d0053e54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e58:	f340 8124 	ble.w	d00540a4 <fillTriangleDitherBayer2Mode+0x540>
d0053e5c:	eeb0 8a44 	vmov.f32	s16, s8
d0053e60:	eef0 0a42 	vmov.f32	s1, s4
d0053e64:	eeb0 1a66 	vmov.f32	s2, s13
d0053e68:	eef0 7a62 	vmov.f32	s15, s5
d0053e6c:	eeb0 4a47 	vmov.f32	s8, s14
d0053e70:	eeb0 2a43 	vmov.f32	s4, s6
d0053e74:	eef0 6a45 	vmov.f32	s13, s10
d0053e78:	eef0 2a46 	vmov.f32	s5, s12
d0053e7c:	eeb0 7a48 	vmov.f32	s14, s16
d0053e80:	eeb0 3a60 	vmov.f32	s6, s1
d0053e84:	eeb0 5a41 	vmov.f32	s10, s2
d0053e88:	eeb0 6a67 	vmov.f32	s12, s15
d0053e8c:	e6d8      	b.n	d0053c40 <fillTriangleDitherBayer2Mode+0xdc>
d0053e8e:	bf00      	nop
d0053e90:	38d1b717 	.word	0x38d1b717
d0053e94:	404ccccd 	.word	0x404ccccd
d0053e98:	33d6bf95 	.word	0x33d6bf95
d0053e9c:	00000000 	.word	0x00000000
d0053ea0:	477fff00 	.word	0x477fff00
d0053ea4:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0053ea8:	ed1f ba06 	vldr	s22, [pc, #-24]	; d0053e94 <fillTriangleDitherBayer2Mode+0x330>
d0053eac:	ed5f 9a05 	vldr	s19, [pc, #-20]	; d0053e9c <fillTriangleDitherBayer2Mode+0x338>
d0053eb0:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d0053eb4:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0053eb8:	ee74 aac6 	vsub.f32	s21, s9, s12
d0053ebc:	ee76 fae3 	vsub.f32	s31, s13, s7
d0053ec0:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0053ec4:	ee67 7a8b 	vmul.f32	s15, s15, s22
d0053ec8:	ee70 1a43 	vsub.f32	s3, s0, s6
d0053ecc:	eef4 fac1 	vcmpe.f32	s31, s2
d0053ed0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053ed4:	ee35 bac7 	vsub.f32	s22, s11, s14
d0053ed8:	ee17 3a90 	vmov	r3, s15
d0053edc:	edcd 7a00 	vstr	s15, [sp]
d0053ee0:	2b10      	cmp	r3, #16
d0053ee2:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0053ee6:	ee2b ba0a 	vmul.f32	s22, s22, s20
d0053eea:	bfa8      	it	ge
d0053eec:	2310      	movge	r3, #16
d0053eee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ef2:	eef0 ba67 	vmov.f32	s23, s15
d0053ef6:	ee61 7a8a 	vmul.f32	s15, s3, s20
d0053efa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0053efe:	9302      	str	r3, [sp, #8]
d0053f00:	eef0 ea67 	vmov.f32	s29, s15
d0053f04:	f73f aef3 	bgt.w	d0053cee <fillTriangleDitherBayer2Mode+0x18a>
d0053f08:	eeb0 fa69 	vmov.f32	s30, s19
d0053f0c:	edcd 9a05 	vstr	s19, [sp, #20]
d0053f10:	edcd 9a06 	vstr	s19, [sp, #24]
d0053f14:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0053f18:	f240 123f 	movw	r2, #319	; 0x13f
d0053f1c:	ee17 3a90 	vmov	r3, s15
d0053f20:	edcd 7a03 	vstr	s15, [sp, #12]
d0053f24:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0053f28:	3b01      	subs	r3, #1
d0053f2a:	ee17 8a90 	vmov	r8, s15
d0053f2e:	4293      	cmp	r3, r2
d0053f30:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d0053f34:	bfa8      	it	ge
d0053f36:	4613      	movge	r3, r2
d0053f38:	4543      	cmp	r3, r8
d0053f3a:	f6ff af7c 	blt.w	d0053e36 <fillTriangleDitherBayer2Mode+0x2d2>
d0053f3e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053f42:	3301      	adds	r3, #1
d0053f44:	eeb0 aa46 	vmov.f32	s20, s12
d0053f48:	ed5f da2d 	vldr	s27, [pc, #-180]	; d0053e98 <fillTriangleDitherBayer2Mode+0x334>
d0053f4c:	eef0 aa46 	vmov.f32	s21, s12
d0053f50:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d0053e9c <fillTriangleDitherBayer2Mode+0x338>
d0053f54:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0053f58:	ee07 8a90 	vmov	s15, r8
d0053f5c:	eeb0 da43 	vmov.f32	s26, s6
d0053f60:	ed1f 1a31 	vldr	s2, [pc, #-196]	; d0053ea0 <fillTriangleDitherBayer2Mode+0x33c>
d0053f64:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053f68:	9301      	str	r3, [sp, #4]
d0053f6a:	eef0 ca47 	vmov.f32	s25, s14
d0053f6e:	edcd 6a08 	vstr	s13, [sp, #32]
d0053f72:	eeb0 ea6b 	vmov.f32	s28, s23
d0053f76:	ed8d 6a09 	vstr	s12, [sp, #36]	; 0x24
d0053f7a:	ee77 7a84 	vadd.f32	s15, s15, s8
d0053f7e:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d0053f82:	eeb0 ca43 	vmov.f32	s24, s6
d0053f86:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d0053f8a:	eea7 aaab 	vfma.f32	s20, s15, s23
d0053f8e:	eef0 ba47 	vmov.f32	s23, s14
d0053f92:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0053f96:	eea8 da27 	vfma.f32	s26, s16, s15
d0053f9a:	eee8 caa7 	vfma.f32	s25, s17, s15
d0053f9e:	eea7 caae 	vfma.f32	s24, s15, s29
d0053fa2:	eee7 ba8b 	vfma.f32	s23, s15, s22
d0053fa6:	e034      	b.n	d0054012 <fillTriangleDitherBayer2Mode+0x4ae>
d0053fa8:	eef0 1a6c 	vmov.f32	s3, s25
d0053fac:	eeb0 2a4d 	vmov.f32	s4, s26
d0053fb0:	eef0 7a6a 	vmov.f32	s15, s21
d0053fb4:	eeb0 6a6b 	vmov.f32	s12, s23
d0053fb8:	eef0 6a4c 	vmov.f32	s13, s24
d0053fbc:	eeb0 4a4a 	vmov.f32	s8, s20
d0053fc0:	feba 0a67 	vrintp.f32	s0, s15
d0053fc4:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d0053fc8:	feba 9a44 	vrintp.f32	s18, s8
d0053fcc:	f240 13df 	movw	r3, #479	; 0x1df
d0053fd0:	ee10 4a10 	vmov	r4, s0
d0053fd4:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d0053fd8:	3c01      	subs	r4, #1
d0053fda:	ee10 1a10 	vmov	r1, s0
d0053fde:	429c      	cmp	r4, r3
d0053fe0:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0053fe4:	bfa8      	it	ge
d0053fe6:	461c      	movge	r4, r3
d0053fe8:	428c      	cmp	r4, r1
d0053fea:	f280 8159 	bge.w	d00542a0 <fillTriangleDitherBayer2Mode+0x73c>
d0053fee:	f108 0801 	add.w	r8, r8, #1
d0053ff2:	9b01      	ldr	r3, [sp, #4]
d0053ff4:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0053ff8:	4598      	cmp	r8, r3
d0053ffa:	ee3d da08 	vadd.f32	s26, s26, s16
d0053ffe:	ee7c caa8 	vadd.f32	s25, s25, s17
d0054002:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0054006:	ee3c ca2e 	vadd.f32	s24, s24, s29
d005400a:	ee7b ba8b 	vadd.f32	s23, s23, s22
d005400e:	f43f af0a 	beq.w	d0053e26 <fillTriangleDitherBayer2Mode+0x2c2>
d0054012:	eef4 aaca 	vcmpe.f32	s21, s20
d0054016:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005401a:	dcc5      	bgt.n	d0053fa8 <fillTriangleDitherBayer2Mode+0x444>
d005401c:	eef0 1a6b 	vmov.f32	s3, s23
d0054020:	eeb0 2a4c 	vmov.f32	s4, s24
d0054024:	eef0 7a4a 	vmov.f32	s15, s20
d0054028:	eeb0 6a6c 	vmov.f32	s12, s25
d005402c:	eef0 6a4d 	vmov.f32	s13, s26
d0054030:	eeb0 4a6a 	vmov.f32	s8, s21
d0054034:	e7c4      	b.n	d0053fc0 <fillTriangleDitherBayer2Mode+0x45c>
d0054036:	eeb0 1a45 	vmov.f32	s2, s10
d005403a:	eeb0 5a66 	vmov.f32	s10, s13
d005403e:	eeb0 8a47 	vmov.f32	s16, s14
d0054042:	eef0 6a41 	vmov.f32	s13, s2
d0054046:	eef0 0a43 	vmov.f32	s1, s6
d005404a:	eef0 7a46 	vmov.f32	s15, s12
d005404e:	eef4 3ae6 	vcmpe.f32	s7, s13
d0054052:	eeb0 7a44 	vmov.f32	s14, s8
d0054056:	eeb0 3a42 	vmov.f32	s6, s4
d005405a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005405e:	eeb0 6a62 	vmov.f32	s12, s5
d0054062:	eeb0 4a48 	vmov.f32	s8, s16
d0054066:	eeb0 2a60 	vmov.f32	s4, s1
d005406a:	eef0 2a67 	vmov.f32	s5, s15
d005406e:	f77f ade7 	ble.w	d0053c40 <fillTriangleDitherBayer2Mode+0xdc>
d0054072:	eeb0 8a65 	vmov.f32	s16, s11
d0054076:	eef0 0a40 	vmov.f32	s1, s0
d005407a:	eeb0 1a63 	vmov.f32	s2, s7
d005407e:	eef0 7a64 	vmov.f32	s15, s9
d0054082:	eef0 5a44 	vmov.f32	s11, s8
d0054086:	eeb0 0a42 	vmov.f32	s0, s4
d005408a:	eef0 3a66 	vmov.f32	s7, s13
d005408e:	eef0 4a62 	vmov.f32	s9, s5
d0054092:	eeb0 4a48 	vmov.f32	s8, s16
d0054096:	eeb0 2a60 	vmov.f32	s4, s1
d005409a:	eef0 6a41 	vmov.f32	s13, s2
d005409e:	eef0 2a67 	vmov.f32	s5, s15
d00540a2:	e5cd      	b.n	d0053c40 <fillTriangleDitherBayer2Mode+0xdc>
d00540a4:	eeb0 8a47 	vmov.f32	s16, s14
d00540a8:	eef0 0a43 	vmov.f32	s1, s6
d00540ac:	eeb0 1a45 	vmov.f32	s2, s10
d00540b0:	eef0 7a46 	vmov.f32	s15, s12
d00540b4:	eeb0 7a65 	vmov.f32	s14, s11
d00540b8:	eeb0 3a40 	vmov.f32	s6, s0
d00540bc:	eeb0 5a63 	vmov.f32	s10, s7
d00540c0:	eeb0 6a64 	vmov.f32	s12, s9
d00540c4:	eef0 5a48 	vmov.f32	s11, s16
d00540c8:	eeb0 0a60 	vmov.f32	s0, s1
d00540cc:	eef0 3a41 	vmov.f32	s7, s2
d00540d0:	eef0 4a67 	vmov.f32	s9, s15
d00540d4:	e5ae      	b.n	d0053c34 <fillTriangleDitherBayer2Mode+0xd0>
d00540d6:	ee76 6ae2 	vsub.f32	s13, s13, s5
d00540da:	eef4 6ac9 	vcmpe.f32	s13, s18
d00540de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540e2:	f340 8207 	ble.w	d00544f4 <fillTriangleDitherBayer2Mode+0x990>
d00540e6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00540ea:	ee79 9ac5 	vsub.f32	s19, s19, s10
d00540ee:	ee32 2a63 	vsub.f32	s4, s4, s7
d00540f2:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d00540f6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00540fa:	ee77 2ae2 	vsub.f32	s5, s15, s5
d00540fe:	ee07 1a90 	vmov	s15, r1
d0054102:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054106:	ee77 7aa2 	vadd.f32	s15, s15, s5
d005410a:	ee69 9a8a 	vmul.f32	s19, s19, s20
d005410e:	ee22 aa0a 	vmul.f32	s20, s4, s20
d0054112:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0054116:	eee7 3a8a 	vfma.f32	s7, s15, s20
d005411a:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d005411e:	4dd3      	ldr	r5, [pc, #844]	; (d005446c <fillTriangleDitherBayer2Mode+0x908>)
d0054120:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0054124:	48d2      	ldr	r0, [pc, #840]	; (d0054470 <fillTriangleDitherBayer2Mode+0x90c>)
d0054126:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d005412a:	682f      	ldr	r7, [r5, #0]
d005412c:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0054130:	f008 0503 	and.w	r5, r8, #3
d0054134:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0054138:	4ace      	ldr	r2, [pc, #824]	; (d0054474 <fillTriangleDitherBayer2Mode+0x910>)
d005413a:	441f      	add	r7, r3
d005413c:	f8cd 800c 	str.w	r8, [sp, #12]
d0054140:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0054144:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0054148:	4698      	mov	r8, r3
d005414a:	e010      	b.n	d005416e <fillTriangleDitherBayer2Mode+0x60a>
d005414c:	ee07 3a90 	vmov	s15, r3
d0054150:	4419      	add	r1, r3
d0054152:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0054156:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005415a:	428c      	cmp	r4, r1
d005415c:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d0054160:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0054164:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0054168:	eee7 3a8a 	vfma.f32	s7, s15, s20
d005416c:	db62      	blt.n	d0054234 <fillTriangleDitherBayer2Mode+0x6d0>
d005416e:	eba4 0c01 	sub.w	ip, r4, r1
d0054172:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0054176:	f10c 0301 	add.w	r3, ip, #1
d005417a:	2b30      	cmp	r3, #48	; 0x30
d005417c:	bfa8      	it	ge
d005417e:	2330      	movge	r3, #48	; 0x30
d0054180:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054184:	d9e2      	bls.n	d005414c <fillTriangleDitherBayer2Mode+0x5e8>
d0054186:	f1bc 0f00 	cmp.w	ip, #0
d005418a:	eec3 7a85 	vdiv.f32	s15, s7, s10
d005418e:	dd54      	ble.n	d005423a <fillTriangleDitherBayer2Mode+0x6d6>
d0054190:	1e5a      	subs	r2, r3, #1
d0054192:	ee06 2a90 	vmov	s13, r2
d0054196:	eef0 2a45 	vmov.f32	s5, s10
d005419a:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d005419e:	eee6 2aa9 	vfma.f32	s5, s13, s19
d00541a2:	eef4 2ac1 	vcmpe.f32	s5, s2
d00541a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541aa:	dd47      	ble.n	d005423c <fillTriangleDitherBayer2Mode+0x6d8>
d00541ac:	eeb0 ca63 	vmov.f32	s24, s7
d00541b0:	9a00      	ldr	r2, [sp, #0]
d00541b2:	2a0f      	cmp	r2, #15
d00541b4:	eea6 ca8a 	vfma.f32	s24, s13, s20
d00541b8:	eecc ba22 	vdiv.f32	s23, s24, s5
d00541bc:	ee7b bae7 	vsub.f32	s23, s23, s15
d00541c0:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d00541c4:	dd3f      	ble.n	d0054246 <fillTriangleDitherBayer2Mode+0x6e2>
d00541c6:	f1a9 0602 	sub.w	r6, r9, #2
d00541ca:	2200      	movs	r2, #0
d00541cc:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00541d0:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00541d4:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00541d8:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00541dc:	3201      	adds	r2, #1
d00541de:	ee76 6a82 	vadd.f32	s13, s13, s4
d00541e2:	0185      	lsls	r5, r0, #6
d00541e4:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00541e8:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00541ec:	ee16 0a90 	vmov	r0, s13
d00541f0:	b280      	uxth	r0, r0
d00541f2:	4586      	cmp	lr, r0
d00541f4:	d903      	bls.n	d00541fe <fillTriangleDitherBayer2Mode+0x69a>
d00541f6:	8030      	strh	r0, [r6, #0]
d00541f8:	f04f 0010 	mov.w	r0, #16
d00541fc:	5578      	strb	r0, [r7, r5]
d00541fe:	4293      	cmp	r3, r2
d0054200:	dce4      	bgt.n	d00541cc <fillTriangleDitherBayer2Mode+0x668>
d0054202:	f1bc 0f00 	cmp.w	ip, #0
d0054206:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d005420a:	ea4f 0043 	mov.w	r0, r3, lsl #1
d005420e:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0054212:	bfbc      	itt	lt
d0054214:	2002      	movlt	r0, #2
d0054216:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d005421a:	4481      	add	r9, r0
d005421c:	4417      	add	r7, r2
d005421e:	ee07 3a90 	vmov	s15, r3
d0054222:	4419      	add	r1, r3
d0054224:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054228:	428c      	cmp	r4, r1
d005422a:	eea7 5aa9 	vfma.f32	s10, s15, s19
d005422e:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0054232:	da9c      	bge.n	d005416e <fillTriangleDitherBayer2Mode+0x60a>
d0054234:	f8dd 800c 	ldr.w	r8, [sp, #12]
d0054238:	e5d2      	b.n	d0053de0 <fillTriangleDitherBayer2Mode+0x27c>
d005423a:	d1f0      	bne.n	d005421e <fillTriangleDitherBayer2Mode+0x6ba>
d005423c:	9a00      	ldr	r2, [sp, #0]
d005423e:	eef0 2a44 	vmov.f32	s5, s8
d0054242:	2a0f      	cmp	r2, #15
d0054244:	dcbf      	bgt.n	d00541c6 <fillTriangleDitherBayer2Mode+0x662>
d0054246:	2a00      	cmp	r2, #0
d0054248:	f340 8136 	ble.w	d00544b8 <fillTriangleDitherBayer2Mode+0x954>
d005424c:	9404      	str	r4, [sp, #16]
d005424e:	f1a9 0e02 	sub.w	lr, r9, #2
d0054252:	2200      	movs	r2, #0
d0054254:	9c02      	ldr	r4, [sp, #8]
d0054256:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d005425a:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d005425e:	ee76 6a82 	vadd.f32	s13, s13, s4
d0054262:	f83e af02 	ldrh.w	sl, [lr, #2]!
d0054266:	188e      	adds	r6, r1, r2
d0054268:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d005426c:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0054270:	3201      	adds	r2, #1
d0054272:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0054276:	f006 0603 	and.w	r6, r6, #3
d005427a:	01ad      	lsls	r5, r5, #6
d005427c:	ee16 0a90 	vmov	r0, s13
d0054280:	b280      	uxth	r0, r0
d0054282:	4582      	cmp	sl, r0
d0054284:	d908      	bls.n	d0054298 <fillTriangleDitherBayer2Mode+0x734>
d0054286:	f818 6006 	ldrb.w	r6, [r8, r6]
d005428a:	f8ae 0000 	strh.w	r0, [lr]
d005428e:	42a6      	cmp	r6, r4
d0054290:	bfac      	ite	ge
d0054292:	4658      	movge	r0, fp
d0054294:	2010      	movlt	r0, #16
d0054296:	5578      	strb	r0, [r7, r5]
d0054298:	4293      	cmp	r3, r2
d005429a:	dcdc      	bgt.n	d0054256 <fillTriangleDitherBayer2Mode+0x6f2>
d005429c:	9c04      	ldr	r4, [sp, #16]
d005429e:	e7b0      	b.n	d0054202 <fillTriangleDitherBayer2Mode+0x69e>
d00542a0:	ee77 7ac4 	vsub.f32	s15, s15, s8
d00542a4:	ed9f 0a74 	vldr	s0, [pc, #464]	; d0054478 <fillTriangleDitherBayer2Mode+0x914>
d00542a8:	eef4 7ac0 	vcmpe.f32	s15, s0
d00542ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542b0:	f340 8125 	ble.w	d00544fe <fillTriangleDitherBayer2Mode+0x99a>
d00542b4:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00542b8:	ee32 2a66 	vsub.f32	s4, s4, s13
d00542bc:	ee71 1ac6 	vsub.f32	s3, s3, s12
d00542c0:	ee89 0a27 	vdiv.f32	s0, s18, s15
d00542c4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00542c8:	ee37 4ac4 	vsub.f32	s8, s15, s8
d00542cc:	ee07 1a90 	vmov	s15, r1
d00542d0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00542d4:	ee77 7a84 	vadd.f32	s15, s15, s8
d00542d8:	ee22 2a00 	vmul.f32	s4, s4, s0
d00542dc:	ee61 1a80 	vmul.f32	s3, s3, s0
d00542e0:	eee7 6a82 	vfma.f32	s13, s15, s4
d00542e4:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00542e8:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d00542ec:	4d5f      	ldr	r5, [pc, #380]	; (d005446c <fillTriangleDitherBayer2Mode+0x908>)
d00542ee:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00542f2:	485f      	ldr	r0, [pc, #380]	; (d0054470 <fillTriangleDitherBayer2Mode+0x90c>)
d00542f4:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d00542f8:	682f      	ldr	r7, [r5, #0]
d00542fa:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d00542fe:	f008 0503 	and.w	r5, r8, #3
d0054302:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0054306:	4a5b      	ldr	r2, [pc, #364]	; (d0054474 <fillTriangleDitherBayer2Mode+0x910>)
d0054308:	441f      	add	r7, r3
d005430a:	f8cd 8010 	str.w	r8, [sp, #16]
d005430e:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0054312:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0054316:	4698      	mov	r8, r3
d0054318:	e010      	b.n	d005433c <fillTriangleDitherBayer2Mode+0x7d8>
d005431a:	ee07 2a90 	vmov	s15, r2
d005431e:	4411      	add	r1, r2
d0054320:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0054324:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054328:	428c      	cmp	r4, r1
d005432a:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d005432e:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0054332:	eee7 6a82 	vfma.f32	s13, s15, s4
d0054336:	eea7 6aa1 	vfma.f32	s12, s15, s3
d005433a:	db62      	blt.n	d0054402 <fillTriangleDitherBayer2Mode+0x89e>
d005433c:	eba4 0c01 	sub.w	ip, r4, r1
d0054340:	eef4 6aed 	vcmpe.f32	s13, s27
d0054344:	f10c 0201 	add.w	r2, ip, #1
d0054348:	2a30      	cmp	r2, #48	; 0x30
d005434a:	bfa8      	it	ge
d005434c:	2230      	movge	r2, #48	; 0x30
d005434e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054352:	d9e2      	bls.n	d005431a <fillTriangleDitherBayer2Mode+0x7b6>
d0054354:	f1bc 0f00 	cmp.w	ip, #0
d0054358:	eec6 7a26 	vdiv.f32	s15, s12, s13
d005435c:	dd54      	ble.n	d0054408 <fillTriangleDitherBayer2Mode+0x8a4>
d005435e:	1e53      	subs	r3, r2, #1
d0054360:	ee00 3a10 	vmov	s0, r3
d0054364:	eeb0 9a66 	vmov.f32	s18, s13
d0054368:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d005436c:	eea0 9a02 	vfma.f32	s18, s0, s4
d0054370:	eeb4 9aed 	vcmpe.f32	s18, s27
d0054374:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054378:	dd47      	ble.n	d005440a <fillTriangleDitherBayer2Mode+0x8a6>
d005437a:	eeb0 fa46 	vmov.f32	s30, s12
d005437e:	9b00      	ldr	r3, [sp, #0]
d0054380:	2b0f      	cmp	r3, #15
d0054382:	eea0 fa21 	vfma.f32	s30, s0, s3
d0054386:	eecf 9a09 	vdiv.f32	s19, s30, s18
d005438a:	ee79 9ae7 	vsub.f32	s19, s19, s15
d005438e:	ee89 9a80 	vdiv.f32	s18, s19, s0
d0054392:	dd3f      	ble.n	d0054414 <fillTriangleDitherBayer2Mode+0x8b0>
d0054394:	f1a9 0602 	sub.w	r6, r9, #2
d0054398:	2000      	movs	r0, #0
d005439a:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d005439e:	fe80 0a41 	vminnm.f32	s0, s0, s2
d00543a2:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00543a6:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00543aa:	3001      	adds	r0, #1
d00543ac:	ee30 0a04 	vadd.f32	s0, s0, s8
d00543b0:	019d      	lsls	r5, r3, #6
d00543b2:	ee77 7a89 	vadd.f32	s15, s15, s18
d00543b6:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d00543ba:	ee10 3a10 	vmov	r3, s0
d00543be:	b29b      	uxth	r3, r3
d00543c0:	459e      	cmp	lr, r3
d00543c2:	d903      	bls.n	d00543cc <fillTriangleDitherBayer2Mode+0x868>
d00543c4:	8033      	strh	r3, [r6, #0]
d00543c6:	f04f 0310 	mov.w	r3, #16
d00543ca:	557b      	strb	r3, [r7, r5]
d00543cc:	4282      	cmp	r2, r0
d00543ce:	dce4      	bgt.n	d005439a <fillTriangleDitherBayer2Mode+0x836>
d00543d0:	f1bc 0f00 	cmp.w	ip, #0
d00543d4:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00543d8:	ea4f 0042 	mov.w	r0, r2, lsl #1
d00543dc:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00543e0:	bfbc      	itt	lt
d00543e2:	2002      	movlt	r0, #2
d00543e4:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00543e8:	4481      	add	r9, r0
d00543ea:	441f      	add	r7, r3
d00543ec:	ee07 2a90 	vmov	s15, r2
d00543f0:	4411      	add	r1, r2
d00543f2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00543f6:	428c      	cmp	r4, r1
d00543f8:	eee7 6a82 	vfma.f32	s13, s15, s4
d00543fc:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0054400:	da9c      	bge.n	d005433c <fillTriangleDitherBayer2Mode+0x7d8>
d0054402:	f8dd 8010 	ldr.w	r8, [sp, #16]
d0054406:	e5f2      	b.n	d0053fee <fillTriangleDitherBayer2Mode+0x48a>
d0054408:	d1f0      	bne.n	d00543ec <fillTriangleDitherBayer2Mode+0x888>
d005440a:	9b00      	ldr	r3, [sp, #0]
d005440c:	eeb0 9a62 	vmov.f32	s18, s5
d0054410:	2b0f      	cmp	r3, #15
d0054412:	dcbf      	bgt.n	d0054394 <fillTriangleDitherBayer2Mode+0x830>
d0054414:	2b00      	cmp	r3, #0
d0054416:	dd31      	ble.n	d005447c <fillTriangleDitherBayer2Mode+0x918>
d0054418:	9407      	str	r4, [sp, #28]
d005441a:	f1a9 0e02 	sub.w	lr, r9, #2
d005441e:	2000      	movs	r0, #0
d0054420:	9c02      	ldr	r4, [sp, #8]
d0054422:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0054426:	fe80 0a41 	vminnm.f32	s0, s0, s2
d005442a:	ee30 0a04 	vadd.f32	s0, s0, s8
d005442e:	f83e af02 	ldrh.w	sl, [lr, #2]!
d0054432:	180e      	adds	r6, r1, r0
d0054434:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d0054438:	ee77 7a89 	vadd.f32	s15, s15, s18
d005443c:	3001      	adds	r0, #1
d005443e:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0054442:	f006 0603 	and.w	r6, r6, #3
d0054446:	01ad      	lsls	r5, r5, #6
d0054448:	ee10 3a10 	vmov	r3, s0
d005444c:	b29b      	uxth	r3, r3
d005444e:	459a      	cmp	sl, r3
d0054450:	d908      	bls.n	d0054464 <fillTriangleDitherBayer2Mode+0x900>
d0054452:	f818 6006 	ldrb.w	r6, [r8, r6]
d0054456:	f8ae 3000 	strh.w	r3, [lr]
d005445a:	42a6      	cmp	r6, r4
d005445c:	bfac      	ite	ge
d005445e:	465b      	movge	r3, fp
d0054460:	2310      	movlt	r3, #16
d0054462:	557b      	strb	r3, [r7, r5]
d0054464:	4282      	cmp	r2, r0
d0054466:	dcdc      	bgt.n	d0054422 <fillTriangleDitherBayer2Mode+0x8be>
d0054468:	9c07      	ldr	r4, [sp, #28]
d005446a:	e7b1      	b.n	d00543d0 <fillTriangleDitherBayer2Mode+0x86c>
d005446c:	d0140324 	.word	0xd0140324
d0054470:	d005b020 	.word	0xd005b020
d0054474:	d005a5f8 	.word	0xd005a5f8
d0054478:	38d1b717 	.word	0x38d1b717
d005447c:	f1a9 0602 	sub.w	r6, r9, #2
d0054480:	2000      	movs	r0, #0
d0054482:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0054486:	fe80 0a41 	vminnm.f32	s0, s0, s2
d005448a:	ee30 0a04 	vadd.f32	s0, s0, s8
d005448e:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0054492:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0054496:	ee77 7a89 	vadd.f32	s15, s15, s18
d005449a:	019d      	lsls	r5, r3, #6
d005449c:	3001      	adds	r0, #1
d005449e:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d00544a2:	ee10 3a10 	vmov	r3, s0
d00544a6:	b29b      	uxth	r3, r3
d00544a8:	459e      	cmp	lr, r3
d00544aa:	d902      	bls.n	d00544b2 <fillTriangleDitherBayer2Mode+0x94e>
d00544ac:	8033      	strh	r3, [r6, #0]
d00544ae:	f807 b005 	strb.w	fp, [r7, r5]
d00544b2:	4282      	cmp	r2, r0
d00544b4:	dce5      	bgt.n	d0054482 <fillTriangleDitherBayer2Mode+0x91e>
d00544b6:	e78b      	b.n	d00543d0 <fillTriangleDitherBayer2Mode+0x86c>
d00544b8:	f1a9 0602 	sub.w	r6, r9, #2
d00544bc:	2200      	movs	r2, #0
d00544be:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00544c2:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00544c6:	ee76 6a82 	vadd.f32	s13, s13, s4
d00544ca:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00544ce:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00544d2:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00544d6:	0185      	lsls	r5, r0, #6
d00544d8:	3201      	adds	r2, #1
d00544da:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00544de:	ee16 0a90 	vmov	r0, s13
d00544e2:	b280      	uxth	r0, r0
d00544e4:	4586      	cmp	lr, r0
d00544e6:	d902      	bls.n	d00544ee <fillTriangleDitherBayer2Mode+0x98a>
d00544e8:	8030      	strh	r0, [r6, #0]
d00544ea:	f807 b005 	strb.w	fp, [r7, r5]
d00544ee:	4293      	cmp	r3, r2
d00544f0:	dce5      	bgt.n	d00544be <fillTriangleDitherBayer2Mode+0x95a>
d00544f2:	e686      	b.n	d0054202 <fillTriangleDitherBayer2Mode+0x69e>
d00544f4:	eeb0 aa44 	vmov.f32	s20, s8
d00544f8:	eef0 9a44 	vmov.f32	s19, s8
d00544fc:	e60d      	b.n	d005411a <fillTriangleDitherBayer2Mode+0x5b6>
d00544fe:	eef0 1a62 	vmov.f32	s3, s5
d0054502:	eeb0 2a62 	vmov.f32	s4, s5
d0054506:	e6ef      	b.n	d00542e8 <fillTriangleDitherBayer2Mode+0x784>

d0054508 <vec3Add>:
d0054508:	ee30 0a21 	vadd.f32	s0, s0, s3
d005450c:	b08e      	sub	sp, #56	; 0x38
d005450e:	ee70 0a82 	vadd.f32	s1, s1, s4
d0054512:	ee31 1a22 	vadd.f32	s2, s2, s5
d0054516:	b00e      	add	sp, #56	; 0x38
d0054518:	4770      	bx	lr
d005451a:	bf00      	nop

d005451c <vec3Scale>:
d005451c:	ee20 0a21 	vmul.f32	s0, s0, s3
d0054520:	b08c      	sub	sp, #48	; 0x30
d0054522:	ee61 0aa0 	vmul.f32	s1, s3, s1
d0054526:	ee21 1a81 	vmul.f32	s2, s3, s2
d005452a:	b00c      	add	sp, #48	; 0x30
d005452c:	4770      	bx	lr
d005452e:	bf00      	nop

d0054530 <vec3Dot>:
d0054530:	ee20 2a82 	vmul.f32	s4, s1, s4
d0054534:	b086      	sub	sp, #24
d0054536:	eea0 2a21 	vfma.f32	s4, s0, s3
d005453a:	eea1 2a22 	vfma.f32	s4, s2, s5
d005453e:	eeb0 0a42 	vmov.f32	s0, s4
d0054542:	b006      	add	sp, #24
d0054544:	4770      	bx	lr
d0054546:	bf00      	nop

d0054548 <vec3Cross>:
d0054548:	eeb0 7a60 	vmov.f32	s14, s1
d005454c:	b08e      	sub	sp, #56	; 0x38
d005454e:	eef0 7a40 	vmov.f32	s15, s0
d0054552:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d0054556:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d005455a:	ee22 0a41 	vnmul.f32	s0, s4, s2
d005455e:	eee1 0a21 	vfma.f32	s1, s2, s3
d0054562:	eee7 6a82 	vfma.f32	s13, s15, s4
d0054566:	eea7 0a22 	vfma.f32	s0, s14, s5
d005456a:	eeb0 1a66 	vmov.f32	s2, s13
d005456e:	b00e      	add	sp, #56	; 0x38
d0054570:	4770      	bx	lr
d0054572:	bf00      	nop

d0054574 <vec3Normalize>:
d0054574:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0054578:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0054604 <vec3Normalize+0x90>
d005457c:	b08c      	sub	sp, #48	; 0x30
d005457e:	eee0 7a00 	vfma.f32	s15, s0, s0
d0054582:	eee1 7a01 	vfma.f32	s15, s2, s2
d0054586:	eef4 7ac7 	vcmpe.f32	s15, s14
d005458a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005458e:	d934      	bls.n	d00545fa <vec3Normalize+0x86>
d0054590:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0054608 <vec3Normalize+0x94>
d0054594:	eef4 7a47 	vcmp.f32	s15, s14
d0054598:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005459c:	dd06      	ble.n	d00545ac <vec3Normalize+0x38>
d005459e:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d005460c <vec3Normalize+0x98>
d00545a2:	eef4 7a47 	vcmp.f32	s15, s14
d00545a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545aa:	d418      	bmi.n	d00545de <vec3Normalize+0x6a>
d00545ac:	ee17 2a90 	vmov	r2, s15
d00545b0:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00545b4:	4b16      	ldr	r3, [pc, #88]	; (d0054610 <vec3Normalize+0x9c>)
d00545b6:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d00545ba:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00545be:	ee67 7a86 	vmul.f32	s15, s15, s12
d00545c2:	ee06 3a90 	vmov	s13, r3
d00545c6:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00545ca:	eea6 7ae7 	vfms.f32	s14, s13, s15
d00545ce:	ee67 7a26 	vmul.f32	s15, s14, s13
d00545d2:	ee27 0a80 	vmul.f32	s0, s15, s0
d00545d6:	ee67 0aa0 	vmul.f32	s1, s15, s1
d00545da:	ee27 1a81 	vmul.f32	s2, s15, s2
d00545de:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d00545e2:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d00545e6:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d00545ea:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d00545ee:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d00545f2:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d00545f6:	b00c      	add	sp, #48	; 0x30
d00545f8:	4770      	bx	lr
d00545fa:	2300      	movs	r3, #0
d00545fc:	9309      	str	r3, [sp, #36]	; 0x24
d00545fe:	930a      	str	r3, [sp, #40]	; 0x28
d0054600:	930b      	str	r3, [sp, #44]	; 0x2c
d0054602:	e7f2      	b.n	d00545ea <vec3Normalize+0x76>
d0054604:	358637bd 	.word	0x358637bd
d0054608:	3f7fbe77 	.word	0x3f7fbe77
d005460c:	3f8020c5 	.word	0x3f8020c5
d0054610:	5f3759df 	.word	0x5f3759df

d0054614 <rotateAroundAxis>:
d0054614:	ee62 7a02 	vmul.f32	s15, s4, s4
d0054618:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0054760 <rotateAroundAxis+0x14c>
d005461c:	b500      	push	{lr}
d005461e:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0054622:	ed2d 8b0c 	vpush	{d8-d13}
d0054626:	eef0 ca40 	vmov.f32	s25, s0
d005462a:	b08f      	sub	sp, #60	; 0x3c
d005462c:	eeb0 ca60 	vmov.f32	s24, s1
d0054630:	eef0 ba41 	vmov.f32	s23, s2
d0054634:	eee2 7aa2 	vfma.f32	s15, s5, s5
d0054638:	eeb0 da43 	vmov.f32	s26, s6
d005463c:	eef4 7ac7 	vcmpe.f32	s15, s14
d0054640:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054644:	d97c      	bls.n	d0054740 <rotateAroundAxis+0x12c>
d0054646:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0054764 <rotateAroundAxis+0x150>
d005464a:	eef4 7a47 	vcmp.f32	s15, s14
d005464e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054652:	dd55      	ble.n	d0054700 <rotateAroundAxis+0xec>
d0054654:	ed9f 7a44 	vldr	s14, [pc, #272]	; d0054768 <rotateAroundAxis+0x154>
d0054658:	eef4 7a47 	vcmp.f32	s15, s14
d005465c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054660:	d54e      	bpl.n	d0054700 <rotateAroundAxis+0xec>
d0054662:	eef0 da42 	vmov.f32	s27, s4
d0054666:	eeb0 9a61 	vmov.f32	s18, s3
d005466a:	eeb0 8a62 	vmov.f32	s16, s5
d005466e:	ee60 8a82 	vmul.f32	s17, s1, s4
d0054672:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d0054676:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d005467a:	eeec 8a89 	vfma.f32	s17, s25, s18
d005467e:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d0054682:	eeeb 5aad 	vfma.f32	s11, s23, s27
d0054686:	eeac 6a88 	vfma.f32	s12, s25, s16
d005468a:	eeec 7a09 	vfma.f32	s15, s24, s18
d005468e:	eeeb 8a88 	vfma.f32	s17, s23, s16
d0054692:	eeb0 ba65 	vmov.f32	s22, s11
d0054696:	eeb0 aa46 	vmov.f32	s20, s12
d005469a:	eef0 aa67 	vmov.f32	s21, s15
d005469e:	eeb0 0a4d 	vmov.f32	s0, s26
d00546a2:	f005 f899 	bl	d00597d8 <cosf>
d00546a6:	eef0 9a40 	vmov.f32	s19, s0
d00546aa:	eeb0 0a4d 	vmov.f32	s0, s26
d00546ae:	f005 fa77 	bl	d0059ba0 <sinf>
d00546b2:	ee60 5a0b 	vmul.f32	s11, s0, s22
d00546b6:	ee20 6a0a 	vmul.f32	s12, s0, s20
d00546ba:	ee60 7a2a 	vmul.f32	s15, s0, s21
d00546be:	eee9 5aac 	vfma.f32	s11, s19, s25
d00546c2:	eea9 6a8c 	vfma.f32	s12, s19, s24
d00546c6:	eee9 7aab 	vfma.f32	s15, s19, s23
d00546ca:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00546ce:	ee29 9a28 	vmul.f32	s18, s18, s17
d00546d2:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d00546d6:	ee76 9ae9 	vsub.f32	s19, s13, s19
d00546da:	ee28 8a28 	vmul.f32	s16, s16, s17
d00546de:	eeb0 0a65 	vmov.f32	s0, s11
d00546e2:	eef0 0a46 	vmov.f32	s1, s12
d00546e6:	eeb0 1a67 	vmov.f32	s2, s15
d00546ea:	eea9 0a89 	vfma.f32	s0, s19, s18
d00546ee:	eee9 0a87 	vfma.f32	s1, s19, s14
d00546f2:	eea9 1a88 	vfma.f32	s2, s19, s16
d00546f6:	b00f      	add	sp, #60	; 0x3c
d00546f8:	ecbd 8b0c 	vpop	{d8-d13}
d00546fc:	f85d fb04 	ldr.w	pc, [sp], #4
d0054700:	ee17 2a90 	vmov	r2, s15
d0054704:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054708:	4b18      	ldr	r3, [pc, #96]	; (d005476c <rotateAroundAxis+0x158>)
d005470a:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d005470e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0054712:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0054716:	ee07 3a10 	vmov	s14, r3
d005471a:	ee67 7a87 	vmul.f32	s15, s15, s14
d005471e:	eea7 8a67 	vfms.f32	s16, s14, s15
d0054722:	ee27 8a08 	vmul.f32	s16, s14, s16
d0054726:	ee62 da08 	vmul.f32	s27, s4, s16
d005472a:	ee21 9a88 	vmul.f32	s18, s3, s16
d005472e:	ee22 8a88 	vmul.f32	s16, s5, s16
d0054732:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d0054736:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d005473a:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d005473e:	e79c      	b.n	d005467a <rotateAroundAxis+0x66>
d0054740:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0054770 <rotateAroundAxis+0x15c>
d0054744:	eef0 aa68 	vmov.f32	s21, s17
d0054748:	eeb0 aa68 	vmov.f32	s20, s17
d005474c:	eeb0 ba68 	vmov.f32	s22, s17
d0054750:	eeb0 8a68 	vmov.f32	s16, s17
d0054754:	eef0 da68 	vmov.f32	s27, s17
d0054758:	eeb0 9a68 	vmov.f32	s18, s17
d005475c:	e79f      	b.n	d005469e <rotateAroundAxis+0x8a>
d005475e:	bf00      	nop
d0054760:	358637bd 	.word	0x358637bd
d0054764:	3f7fbe77 	.word	0x3f7fbe77
d0054768:	3f8020c5 	.word	0x3f8020c5
d005476c:	5f3759df 	.word	0x5f3759df
d0054770:	00000000 	.word	0x00000000

d0054774 <vec3>:
d0054774:	b088      	sub	sp, #32
d0054776:	b008      	add	sp, #32
d0054778:	4770      	bx	lr
d005477a:	bf00      	nop

d005477c <degrees>:
d005477c:	eddf 7a02 	vldr	s15, [pc, #8]	; d0054788 <degrees+0xc>
d0054780:	ee20 0a27 	vmul.f32	s0, s0, s15
d0054784:	4770      	bx	lr
d0054786:	bf00      	nop
d0054788:	3c8efa35 	.word	0x3c8efa35

d005478c <powfxt>:
d005478c:	eef5 0a40 	vcmp.f32	s1, #0.0
d0054790:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054794:	d040      	beq.n	d0054818 <powfxt+0x8c>
d0054796:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005479a:	eef0 7a40 	vmov.f32	s15, s0
d005479e:	eef4 0a47 	vcmp.f32	s1, s14
d00547a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547a6:	d034      	beq.n	d0054812 <powfxt+0x86>
d00547a8:	eeb4 0a47 	vcmp.f32	s0, s14
d00547ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547b0:	d02f      	beq.n	d0054812 <powfxt+0x86>
d00547b2:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00547b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547ba:	d030      	beq.n	d005481e <powfxt+0x92>
d00547bc:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00547c0:	eef4 0a66 	vcmp.f32	s1, s13
d00547c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547c8:	d042      	beq.n	d0054850 <powfxt+0xc4>
d00547ca:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d00547ce:	eef4 0a66 	vcmp.f32	s1, s13
d00547d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547d6:	d03e      	beq.n	d0054856 <powfxt+0xca>
d00547d8:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d00547dc:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00547e0:	eeb4 6a60 	vcmp.f32	s12, s1
d00547e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547e8:	d022      	beq.n	d0054830 <powfxt+0xa4>
d00547ea:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00547ee:	b500      	push	{lr}
d00547f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547f4:	b083      	sub	sp, #12
d00547f6:	edcd 0a01 	vstr	s1, [sp, #4]
d00547fa:	d431      	bmi.n	d0054860 <powfxt+0xd4>
d00547fc:	f005 f93e 	bl	d0059a7c <logf>
d0054800:	eddd 0a01 	vldr	s1, [sp, #4]
d0054804:	ee20 0a20 	vmul.f32	s0, s0, s1
d0054808:	b003      	add	sp, #12
d005480a:	f85d eb04 	ldr.w	lr, [sp], #4
d005480e:	f005 b8bf 	b.w	d0059990 <expf>
d0054812:	eeb0 0a67 	vmov.f32	s0, s15
d0054816:	4770      	bx	lr
d0054818:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005481c:	4770      	bx	lr
d005481e:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0054822:	ed9f 0a15 	vldr	s0, [pc, #84]	; d0054878 <powfxt+0xec>
d0054826:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005482a:	fe37 0a80 	vselgt.f32	s0, s15, s0
d005482e:	4770      	bx	lr
d0054830:	ee16 3a90 	vmov	r3, s13
d0054834:	2b00      	cmp	r3, #0
d0054836:	db18      	blt.n	d005486a <powfxt+0xde>
d0054838:	d01b      	beq.n	d0054872 <powfxt+0xe6>
d005483a:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005483e:	07da      	lsls	r2, r3, #31
d0054840:	bf48      	it	mi
d0054842:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d0054846:	085b      	lsrs	r3, r3, #1
d0054848:	ee67 7aa7 	vmul.f32	s15, s15, s15
d005484c:	d1f7      	bne.n	d005483e <powfxt+0xb2>
d005484e:	4770      	bx	lr
d0054850:	eeb1 0ae7 	vsqrt.f32	s0, s15
d0054854:	4770      	bx	lr
d0054856:	eef1 6ac0 	vsqrt.f32	s13, s0
d005485a:	ee87 0a26 	vdiv.f32	s0, s14, s13
d005485e:	4770      	bx	lr
d0054860:	ed9f 0a06 	vldr	s0, [pc, #24]	; d005487c <powfxt+0xf0>
d0054864:	b003      	add	sp, #12
d0054866:	f85d fb04 	ldr.w	pc, [sp], #4
d005486a:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005486e:	425b      	negs	r3, r3
d0054870:	e7e3      	b.n	d005483a <powfxt+0xae>
d0054872:	eeb0 0a47 	vmov.f32	s0, s14
d0054876:	4770      	bx	lr
d0054878:	7f800000 	.word	0x7f800000
d005487c:	7fc00000 	.word	0x7fc00000

d0054880 <sb3dParticlesClear>:
d0054880:	4b0f      	ldr	r3, [pc, #60]	; (d00548c0 <sb3dParticlesClear+0x40>)
d0054882:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d0054886:	2100      	movs	r1, #0
d0054888:	2200      	movs	r2, #0
d005488a:	b430      	push	{r4, r5}
d005488c:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0054890:	2421      	movs	r4, #33	; 0x21
d0054892:	7699      	strb	r1, [r3, #26]
d0054894:	3320      	adds	r3, #32
d0054896:	f843 2c20 	str.w	r2, [r3, #-32]
d005489a:	f843 2c1c 	str.w	r2, [r3, #-28]
d005489e:	f843 2c18 	str.w	r2, [r3, #-24]
d00548a2:	f843 0c14 	str.w	r0, [r3, #-20]
d00548a6:	f843 2c10 	str.w	r2, [r3, #-16]
d00548aa:	f843 0c0c 	str.w	r0, [r3, #-12]
d00548ae:	f803 4c08 	strb.w	r4, [r3, #-8]
d00548b2:	f803 1c07 	strb.w	r1, [r3, #-7]
d00548b6:	42ab      	cmp	r3, r5
d00548b8:	d1eb      	bne.n	d0054892 <sb3dParticlesClear+0x12>
d00548ba:	bc30      	pop	{r4, r5}
d00548bc:	4770      	bx	lr
d00548be:	bf00      	nop
d00548c0:	d00a6020 	.word	0xd00a6020

d00548c4 <sb3dParticlesRender>:
d00548c4:	2800      	cmp	r0, #0
d00548c6:	f000 82d5 	beq.w	d0054e74 <sb3dParticlesRender+0x5b0>
d00548ca:	edd0 7a02 	vldr	s15, [r0, #8]
d00548ce:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00548d2:	ed2d 8b10 	vpush	{d8-d15}
d00548d6:	b0c7      	sub	sp, #284	; 0x11c
d00548d8:	4605      	mov	r5, r0
d00548da:	ed90 ea00 	vldr	s28, [r0]
d00548de:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d00548e2:	edd0 da01 	vldr	s27, [r0, #4]
d00548e6:	edd0 ca06 	vldr	s25, [r0, #24]
d00548ea:	ed90 ca07 	vldr	s24, [r0, #28]
d00548ee:	edd0 ba08 	vldr	s23, [r0, #32]
d00548f2:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d00548f6:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d00548fa:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d00548fe:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d0054902:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d0054906:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d005490a:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d005490e:	f001 fd39 	bl	d0056384 <lightsGet>
d0054912:	4cae      	ldr	r4, [pc, #696]	; (d0054bcc <sb3dParticlesRender+0x308>)
d0054914:	4682      	mov	sl, r0
d0054916:	f001 fd39 	bl	d005638c <lightsGetCount>
d005491a:	4681      	mov	r9, r0
d005491c:	f504 5700 	add.w	r7, r4, #8192	; 0x2000
d0054920:	eb0a 1880 	add.w	r8, sl, r0, lsl #6
d0054924:	e115      	b.n	d0054b52 <sb3dParticlesRender+0x28e>
d0054926:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d005492a:	edd4 ea04 	vldr	s29, [r4, #16]
d005492e:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0054be0 <sb3dParticlesRender+0x31c>
d0054932:	fece ea85 	vmaxnm.f32	s29, s29, s10
d0054936:	fece eac7 	vminnm.f32	s29, s29, s14
d005493a:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d005493e:	f105 0610 	add.w	r6, r5, #16
d0054942:	eeb0 4a46 	vmov.f32	s8, s12
d0054946:	2250      	movs	r2, #80	; 0x50
d0054948:	eef0 4a66 	vmov.f32	s9, s13
d005494c:	4631      	mov	r1, r6
d005494e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054952:	4668      	mov	r0, sp
d0054954:	eeb0 5a65 	vmov.f32	s10, s11
d0054958:	eeb0 7a65 	vmov.f32	s14, s11
d005495c:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0054960:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0054964:	eeec 4a67 	vfms.f32	s9, s24, s15
d0054968:	eeec 6a27 	vfma.f32	s13, s24, s15
d005496c:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0054970:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0054974:	eef0 3a46 	vmov.f32	s7, s12
d0054978:	eea9 6a67 	vfms.f32	s12, s18, s15
d005497c:	eeb0 da44 	vmov.f32	s26, s8
d0054980:	eef0 fa64 	vmov.f32	s31, s9
d0054984:	eef0 5a66 	vmov.f32	s11, s13
d0054988:	eeb0 fa45 	vmov.f32	s30, s10
d005498c:	eea9 da27 	vfma.f32	s26, s18, s15
d0054990:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d0054994:	eeb0 6a47 	vmov.f32	s12, s14
d0054998:	eee8 faa7 	vfma.f32	s31, s17, s15
d005499c:	eea8 fa27 	vfma.f32	s30, s16, s15
d00549a0:	eea9 4a67 	vfms.f32	s8, s18, s15
d00549a4:	eee9 3a27 	vfma.f32	s7, s18, s15
d00549a8:	eee8 4ae7 	vfms.f32	s9, s17, s15
d00549ac:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d00549b0:	eee8 5aa7 	vfma.f32	s11, s17, s15
d00549b4:	eee8 6ae7 	vfms.f32	s13, s17, s15
d00549b8:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d00549bc:	eea8 5a67 	vfms.f32	s10, s16, s15
d00549c0:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d00549c4:	eea8 6a27 	vfma.f32	s12, s16, s15
d00549c8:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d00549cc:	eea8 7a67 	vfms.f32	s14, s16, s15
d00549d0:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d00549d4:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d00549d8:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d00549dc:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d00549e0:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d00549e4:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d00549e8:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d00549ec:	f004 f8d6 	bl	d0058b9c <memcpy>
d00549f0:	eeb0 0a4d 	vmov.f32	s0, s26
d00549f4:	eef0 0a6f 	vmov.f32	s1, s31
d00549f8:	eeb0 1a4f 	vmov.f32	s2, s30
d00549fc:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054a00:	f000 fcd8 	bl	d00553b4 <worldToCamera>
d0054a04:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0054a08:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d0054a0c:	4631      	mov	r1, r6
d0054a0e:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d0054a12:	2250      	movs	r2, #80	; 0x50
d0054a14:	4668      	mov	r0, sp
d0054a16:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d0054a1a:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d0054a1e:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0054a22:	f004 f8bb 	bl	d0058b9c <memcpy>
d0054a26:	eeb0 0a4d 	vmov.f32	s0, s26
d0054a2a:	eef0 0a6f 	vmov.f32	s1, s31
d0054a2e:	eeb0 1a4f 	vmov.f32	s2, s30
d0054a32:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054a36:	f000 fcbd 	bl	d00553b4 <worldToCamera>
d0054a3a:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d0054a3e:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d0054a42:	4631      	mov	r1, r6
d0054a44:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0054a48:	2250      	movs	r2, #80	; 0x50
d0054a4a:	4668      	mov	r0, sp
d0054a4c:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0054a50:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0054a54:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0054a58:	f004 f8a0 	bl	d0058b9c <memcpy>
d0054a5c:	eeb0 0a4d 	vmov.f32	s0, s26
d0054a60:	eef0 0a6f 	vmov.f32	s1, s31
d0054a64:	eeb0 1a4f 	vmov.f32	s2, s30
d0054a68:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054a6c:	f000 fca2 	bl	d00553b4 <worldToCamera>
d0054a70:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0054a74:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0054a78:	4631      	mov	r1, r6
d0054a7a:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0054a7e:	2250      	movs	r2, #80	; 0x50
d0054a80:	4668      	mov	r0, sp
d0054a82:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d0054a86:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0054a8a:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0054a8e:	f004 f885 	bl	d0058b9c <memcpy>
d0054a92:	eeb0 0a4d 	vmov.f32	s0, s26
d0054a96:	eef0 0a6f 	vmov.f32	s1, s31
d0054a9a:	eeb0 1a4f 	vmov.f32	s2, s30
d0054a9e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054aa2:	f000 fc87 	bl	d00553b4 <worldToCamera>
d0054aa6:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d0054aaa:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0054aae:	eef4 7acb 	vcmpe.f32	s15, s22
d0054ab2:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0054ab6:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0054aba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054abe:	d812      	bhi.n	d0054ae6 <sb3dParticlesRender+0x222>
d0054ac0:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0054ac4:	eef4 7acb 	vcmpe.f32	s15, s22
d0054ac8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054acc:	d80b      	bhi.n	d0054ae6 <sb3dParticlesRender+0x222>
d0054ace:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d0054ad2:	eef4 7acb 	vcmpe.f32	s15, s22
d0054ad6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ada:	d804      	bhi.n	d0054ae6 <sb3dParticlesRender+0x222>
d0054adc:	eeb4 1acb 	vcmpe.f32	s2, s22
d0054ae0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ae4:	d931      	bls.n	d0054b4a <sb3dParticlesRender+0x286>
d0054ae6:	4629      	mov	r1, r5
d0054ae8:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d0054aec:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0054af0:	a82e      	add	r0, sp, #184	; 0xb8
d0054af2:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d0054af6:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d0054afa:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0054afe:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0054b02:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0054b06:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0054b0a:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0054b0e:	f001 fd03 	bl	d0056518 <clipTriangleToFrustum>
d0054b12:	2802      	cmp	r0, #2
d0054b14:	f300 8155 	bgt.w	d0054dc2 <sb3dParticlesRender+0x4fe>
d0054b18:	a82e      	add	r0, sp, #184	; 0xb8
d0054b1a:	4629      	mov	r1, r5
d0054b1c:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0054b20:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0054b24:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0054b28:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0054b2c:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0054b30:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0054b34:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0054b38:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0054b3c:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0054b40:	f001 fcea 	bl	d0056518 <clipTriangleToFrustum>
d0054b44:	2802      	cmp	r0, #2
d0054b46:	f300 8105 	bgt.w	d0054d54 <sb3dParticlesRender+0x490>
d0054b4a:	3420      	adds	r4, #32
d0054b4c:	42a7      	cmp	r7, r4
d0054b4e:	f000 8133 	beq.w	d0054db8 <sb3dParticlesRender+0x4f4>
d0054b52:	7ea3      	ldrb	r3, [r4, #26]
d0054b54:	2b00      	cmp	r3, #0
d0054b56:	d0f8      	beq.n	d0054b4a <sb3dParticlesRender+0x286>
d0054b58:	edd4 7a03 	vldr	s15, [r4, #12]
d0054b5c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0054b60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b64:	d9f1      	bls.n	d0054b4a <sb3dParticlesRender+0x286>
d0054b66:	edd4 6a01 	vldr	s13, [r4, #4]
d0054b6a:	eeb1 5a67 	vneg.f32	s10, s15
d0054b6e:	ed94 6a00 	vldr	s12, [r4]
d0054b72:	ee36 7aed 	vsub.f32	s14, s13, s27
d0054b76:	edd4 5a02 	vldr	s11, [r4, #8]
d0054b7a:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0054b7e:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0054b82:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0054b86:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0054b8a:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0054b8e:	eea9 7aa4 	vfma.f32	s14, s19, s9
d0054b92:	eeb4 5ac7 	vcmpe.f32	s10, s14
d0054b96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b9a:	dad6      	bge.n	d0054b4a <sb3dParticlesRender+0x286>
d0054b9c:	ed94 7a05 	vldr	s14, [r4, #20]
d0054ba0:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0054bd0 <sb3dParticlesRender+0x30c>
d0054ba4:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0054ba8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bac:	f67f aebb 	bls.w	d0054926 <sb3dParticlesRender+0x62>
d0054bb0:	f1b9 0f00 	cmp.w	r9, #0
d0054bb4:	f340 809e 	ble.w	d0054cf4 <sb3dParticlesRender+0x430>
d0054bb8:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0054bbc:	4653      	mov	r3, sl
d0054bbe:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0054bc2:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0054bd8 <sb3dParticlesRender+0x314>
d0054bc6:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0054bca:	e07e      	b.n	d0054cca <sb3dParticlesRender+0x406>
d0054bcc:	d00a6020 	.word	0xd00a6020
d0054bd0:	38d1b717 	.word	0x38d1b717
d0054bd4:	358637bd 	.word	0x358637bd
d0054bd8:	3dcccccd 	.word	0x3dcccccd
d0054bdc:	3b808081 	.word	0x3b808081
d0054be0:	00000000 	.word	0x00000000
d0054be4:	edd3 7a02 	vldr	s15, [r3, #8]
d0054be8:	edd3 4a01 	vldr	s9, [r3, #4]
d0054bec:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0054bf0:	ed93 7a03 	vldr	s14, [r3, #12]
d0054bf4:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0054bf8:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0054bfc:	ee37 7a65 	vsub.f32	s14, s14, s11
d0054c00:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0054c04:	ee62 2a02 	vmul.f32	s5, s4, s4
d0054c08:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0054c0c:	eea7 5a07 	vfma.f32	s10, s14, s14
d0054c10:	eeb4 5a62 	vcmp.f32	s10, s5
d0054c14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c18:	d554      	bpl.n	d0054cc4 <sb3dParticlesRender+0x400>
d0054c1a:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0054bd4 <sb3dParticlesRender+0x310>
d0054c1e:	eeb4 5a62 	vcmp.f32	s10, s5
d0054c22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c26:	dd4d      	ble.n	d0054cc4 <sb3dParticlesRender+0x400>
d0054c28:	eef1 0ac5 	vsqrt.f32	s1, s10
d0054c2c:	edd3 1a08 	vldr	s3, [r3, #32]
d0054c30:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0054c34:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0054c38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c3c:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0054c40:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0054c44:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0054c48:	ee27 7a22 	vmul.f32	s14, s14, s5
d0054c4c:	f240 80e8 	bls.w	d0054e20 <sb3dParticlesRender+0x55c>
d0054c50:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0054c54:	eef4 1ac1 	vcmpe.f32	s3, s2
d0054c58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c5c:	da32      	bge.n	d0054cc4 <sb3dParticlesRender+0x400>
d0054c5e:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0054c62:	ee25 5a22 	vmul.f32	s10, s10, s5
d0054c66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c6a:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0054c6e:	f200 80da 	bhi.w	d0054e26 <sb3dParticlesRender+0x562>
d0054c72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c76:	d925      	bls.n	d0054cc4 <sb3dParticlesRender+0x400>
d0054c78:	ee75 2a61 	vsub.f32	s5, s10, s3
d0054c7c:	ee31 2a61 	vsub.f32	s4, s2, s3
d0054c80:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0054c84:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0054be0 <sb3dParticlesRender+0x31c>
d0054c88:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0054c8c:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0054c90:	ee34 5a45 	vsub.f32	s10, s8, s10
d0054c94:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0054c98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c9c:	d912      	bls.n	d0054cc4 <sb3dParticlesRender+0x400>
d0054c9e:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0054ca2:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0054ca6:	eee7 7a29 	vfma.f32	s15, s14, s19
d0054caa:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0054cae:	eeb1 7a67 	vneg.f32	s14, s15
d0054cb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054cb6:	da05      	bge.n	d0054cc4 <sb3dParticlesRender+0x400>
d0054cb8:	edd3 7a07 	vldr	s15, [r3, #28]
d0054cbc:	ee25 5a27 	vmul.f32	s10, s10, s15
d0054cc0:	eea5 0a07 	vfma.f32	s0, s10, s14
d0054cc4:	3340      	adds	r3, #64	; 0x40
d0054cc6:	4598      	cmp	r8, r3
d0054cc8:	d016      	beq.n	d0054cf8 <sb3dParticlesRender+0x434>
d0054cca:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0054ccc:	2a00      	cmp	r2, #0
d0054cce:	d0f9      	beq.n	d0054cc4 <sb3dParticlesRender+0x400>
d0054cd0:	781a      	ldrb	r2, [r3, #0]
d0054cd2:	2a00      	cmp	r2, #0
d0054cd4:	d086      	beq.n	d0054be4 <sb3dParticlesRender+0x320>
d0054cd6:	edd3 4a04 	vldr	s9, [r3, #16]
d0054cda:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0054cde:	edd3 7a05 	vldr	s15, [r3, #20]
d0054ce2:	ed93 7a06 	vldr	s14, [r3, #24]
d0054ce6:	eef1 4a64 	vneg.f32	s9, s9
d0054cea:	eef1 7a67 	vneg.f32	s15, s15
d0054cee:	eeb1 7a47 	vneg.f32	s14, s14
d0054cf2:	e7d4      	b.n	d0054c9e <sb3dParticlesRender+0x3da>
d0054cf4:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0054bd8 <sb3dParticlesRender+0x314>
d0054cf8:	7e63      	ldrb	r3, [r4, #25]
d0054cfa:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0054cfe:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0054bdc <sb3dParticlesRender+0x318>
d0054d02:	ee07 3a90 	vmov	s15, r3
d0054d06:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0054be0 <sb3dParticlesRender+0x31c>
d0054d0a:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0054d0e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054d12:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0054d16:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0054d1a:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0054d1e:	f001 fb05 	bl	d005632c <brightnessToShadeF>
d0054d22:	edd4 ea05 	vldr	s29, [r4, #20]
d0054d26:	ed94 5a04 	vldr	s10, [r4, #16]
d0054d2a:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0054d2e:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0054d32:	edd4 7a03 	vldr	s15, [r4, #12]
d0054d36:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0054d3a:	ed94 6a00 	vldr	s12, [r4]
d0054d3e:	edd4 6a01 	vldr	s13, [r4, #4]
d0054d42:	edd4 5a02 	vldr	s11, [r4, #8]
d0054d46:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0054d4a:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0054d4e:	fece eac7 	vminnm.f32	s29, s29, s14
d0054d52:	e5f2      	b.n	d005493a <sb3dParticlesRender+0x76>
d0054d54:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0054d58:	2601      	movs	r6, #1
d0054d5a:	4631      	mov	r1, r6
d0054d5c:	3601      	adds	r6, #1
d0054d5e:	aa46      	add	r2, sp, #280	; 0x118
d0054d60:	eef0 4a6e 	vmov.f32	s9, s29
d0054d64:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0054d68:	2380      	movs	r3, #128	; 0x80
d0054d6a:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0054d6e:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0054d72:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0054d76:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0054d7a:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0054d7e:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0054d82:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0054d86:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0054d8a:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0054d8e:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0054d92:	7e62      	ldrb	r2, [r4, #25]
d0054d94:	4628      	mov	r0, r5
d0054d96:	edd1 3a01 	vldr	s7, [r1, #4]
d0054d9a:	ed91 4a02 	vldr	s8, [r1, #8]
d0054d9e:	ed9c 2a01 	vldr	s4, [ip, #4]
d0054da2:	7e21      	ldrb	r1, [r4, #24]
d0054da4:	eddc 2a02 	vldr	s5, [ip, #8]
d0054da8:	f002 f802 	bl	d0056db0 <submitClippedTri>
d0054dac:	455e      	cmp	r6, fp
d0054dae:	d1d4      	bne.n	d0054d5a <sb3dParticlesRender+0x496>
d0054db0:	3420      	adds	r4, #32
d0054db2:	42a7      	cmp	r7, r4
d0054db4:	f47f aecd 	bne.w	d0054b52 <sb3dParticlesRender+0x28e>
d0054db8:	b047      	add	sp, #284	; 0x11c
d0054dba:	ecbd 8b10 	vpop	{d8-d15}
d0054dbe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0054dc2:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0054dc6:	2601      	movs	r6, #1
d0054dc8:	4631      	mov	r1, r6
d0054dca:	3601      	adds	r6, #1
d0054dcc:	aa46      	add	r2, sp, #280	; 0x118
d0054dce:	eef0 4a6e 	vmov.f32	s9, s29
d0054dd2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0054dd6:	2380      	movs	r3, #128	; 0x80
d0054dd8:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0054ddc:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0054de0:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0054de4:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0054de8:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0054dec:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0054df0:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0054df4:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0054df8:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0054dfc:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0054e00:	7e62      	ldrb	r2, [r4, #25]
d0054e02:	4628      	mov	r0, r5
d0054e04:	edd1 3a01 	vldr	s7, [r1, #4]
d0054e08:	ed91 4a02 	vldr	s8, [r1, #8]
d0054e0c:	ed9c 2a01 	vldr	s4, [ip, #4]
d0054e10:	7e21      	ldrb	r1, [r4, #24]
d0054e12:	eddc 2a02 	vldr	s5, [ip, #8]
d0054e16:	f001 ffcb 	bl	d0056db0 <submitClippedTri>
d0054e1a:	455e      	cmp	r6, fp
d0054e1c:	d1d4      	bne.n	d0054dc8 <sb3dParticlesRender+0x504>
d0054e1e:	e67b      	b.n	d0054b18 <sb3dParticlesRender+0x254>
d0054e20:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0054e24:	e73b      	b.n	d0054c9e <sb3dParticlesRender+0x3da>
d0054e26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e2a:	db12      	blt.n	d0054e52 <sb3dParticlesRender+0x58e>
d0054e2c:	ee35 5a61 	vsub.f32	s10, s10, s3
d0054e30:	ee31 2a61 	vsub.f32	s4, s2, s3
d0054e34:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0054e38:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0054be0 <sb3dParticlesRender+0x31c>
d0054e3c:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0054e40:	eef0 2a44 	vmov.f32	s5, s8
d0054e44:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0054e48:	eee5 2a63 	vfms.f32	s5, s10, s7
d0054e4c:	eeb0 5a62 	vmov.f32	s10, s5
d0054e50:	e720      	b.n	d0054c94 <sb3dParticlesRender+0x3d0>
d0054e52:	ee75 2a41 	vsub.f32	s5, s10, s2
d0054e56:	ee32 2a41 	vsub.f32	s4, s4, s2
d0054e5a:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0054e5e:	ed5f 2aa0 	vldr	s5, [pc, #-640]	; d0054be0 <sb3dParticlesRender+0x31c>
d0054e62:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0054e66:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0054e6a:	ee34 5a45 	vsub.f32	s10, s8, s10
d0054e6e:	ee25 5a03 	vmul.f32	s10, s10, s6
d0054e72:	e70f      	b.n	d0054c94 <sb3dParticlesRender+0x3d0>
d0054e74:	4770      	bx	lr
d0054e76:	bf00      	nop

d0054e78 <worldClear>:
d0054e78:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0054e7c:	2100      	movs	r1, #0
d0054e7e:	4801      	ldr	r0, [pc, #4]	; (d0054e84 <worldClear+0xc>)
d0054e80:	f003 be9a 	b.w	d0058bb8 <memset>
d0054e84:	d0140340 	.word	0xd0140340

d0054e88 <cameraNormalize>:
d0054e88:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0054e8c:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0054e90:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0054e94:	b510      	push	{r4, lr}
d0054e96:	4604      	mov	r4, r0
d0054e98:	f7ff fb6c 	bl	d0054574 <vec3Normalize>
d0054e9c:	eeb0 7a60 	vmov.f32	s14, s1
d0054ea0:	eef0 7a41 	vmov.f32	s15, s2
d0054ea4:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054ea8:	ed94 0a06 	vldr	s0, [r4, #24]
d0054eac:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0054eb0:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0054eb4:	edd4 0a07 	vldr	s1, [r4, #28]
d0054eb8:	ed94 1a08 	vldr	s2, [r4, #32]
d0054ebc:	f7ff fb5a 	bl	d0054574 <vec3Normalize>
d0054ec0:	eef0 1a40 	vmov.f32	s3, s0
d0054ec4:	eeb0 2a60 	vmov.f32	s4, s1
d0054ec8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0054ecc:	eef0 2a41 	vmov.f32	s5, s2
d0054ed0:	edc4 0a07 	vstr	s1, [r4, #28]
d0054ed4:	ed84 1a08 	vstr	s2, [r4, #32]
d0054ed8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0054edc:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054ee0:	edc4 1a06 	vstr	s3, [r4, #24]
d0054ee4:	f7ff fb30 	bl	d0054548 <vec3Cross>
d0054ee8:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054eec:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054ef0:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054ef4:	f7ff fb3e 	bl	d0054574 <vec3Normalize>
d0054ef8:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0054efc:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0054f00:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0054f04:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054f08:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054f0c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054f10:	f7ff fb1a 	bl	d0054548 <vec3Cross>
d0054f14:	ed84 0a06 	vstr	s0, [r4, #24]
d0054f18:	edc4 0a07 	vstr	s1, [r4, #28]
d0054f1c:	ed84 1a08 	vstr	s2, [r4, #32]
d0054f20:	f7ff fb28 	bl	d0054574 <vec3Normalize>
d0054f24:	ed84 0a06 	vstr	s0, [r4, #24]
d0054f28:	edc4 0a07 	vstr	s1, [r4, #28]
d0054f2c:	ed84 1a08 	vstr	s2, [r4, #32]
d0054f30:	bd10      	pop	{r4, pc}
d0054f32:	bf00      	nop

d0054f34 <cameraCreate>:
d0054f34:	b510      	push	{r4, lr}
d0054f36:	4604      	mov	r4, r0
d0054f38:	2260      	movs	r2, #96	; 0x60
d0054f3a:	4902      	ldr	r1, [pc, #8]	; (d0054f44 <cameraCreate+0x10>)
d0054f3c:	f003 fe2e 	bl	d0058b9c <memcpy>
d0054f40:	4620      	mov	r0, r4
d0054f42:	bd10      	pop	{r4, pc}
d0054f44:	d005a620 	.word	0xd005a620

d0054f48 <cameraSetPosition>:
d0054f48:	b084      	sub	sp, #16
d0054f4a:	ed8d 0a01 	vstr	s0, [sp, #4]
d0054f4e:	edcd 0a02 	vstr	s1, [sp, #8]
d0054f52:	ed8d 1a03 	vstr	s2, [sp, #12]
d0054f56:	b128      	cbz	r0, d0054f64 <cameraSetPosition+0x1c>
d0054f58:	aa04      	add	r2, sp, #16
d0054f5a:	4603      	mov	r3, r0
d0054f5c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0054f60:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0054f64:	b004      	add	sp, #16
d0054f66:	4770      	bx	lr

d0054f68 <cameraRotate>:
d0054f68:	2800      	cmp	r0, #0
d0054f6a:	f000 80a8 	beq.w	d00550be <cameraRotate+0x156>
d0054f6e:	b510      	push	{r4, lr}
d0054f70:	ed2d 8b04 	vpush	{d8-d9}
d0054f74:	edc0 0a04 	vstr	s1, [r0, #16]
d0054f78:	b084      	sub	sp, #16
d0054f7a:	ed80 1a05 	vstr	s2, [r0, #20]
d0054f7e:	eef0 8a40 	vmov.f32	s17, s0
d0054f82:	ed80 0a03 	vstr	s0, [r0, #12]
d0054f86:	4604      	mov	r4, r0
d0054f88:	eeb0 8a60 	vmov.f32	s16, s1
d0054f8c:	f004 fc24 	bl	d00597d8 <cosf>
d0054f90:	eeb0 1a40 	vmov.f32	s2, s0
d0054f94:	eeb0 0a68 	vmov.f32	s0, s17
d0054f98:	eef0 8a41 	vmov.f32	s17, s2
d0054f9c:	f004 fe00 	bl	d0059ba0 <sinf>
d0054fa0:	eeb0 9a40 	vmov.f32	s18, s0
d0054fa4:	eeb0 0a48 	vmov.f32	s0, s16
d0054fa8:	f004 fc16 	bl	d00597d8 <cosf>
d0054fac:	eeb0 1a40 	vmov.f32	s2, s0
d0054fb0:	eeb0 0a48 	vmov.f32	s0, s16
d0054fb4:	eeb0 8a41 	vmov.f32	s16, s2
d0054fb8:	f004 fdf2 	bl	d0059ba0 <sinf>
d0054fbc:	eef0 0a40 	vmov.f32	s1, s0
d0054fc0:	ee28 1a88 	vmul.f32	s2, s17, s16
d0054fc4:	ee29 9a08 	vmul.f32	s18, s18, s16
d0054fc8:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0054fcc:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0054fd0:	eeb0 0a49 	vmov.f32	s0, s18
d0054fd4:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d0054fd8:	f7ff facc 	bl	d0054574 <vec3Normalize>
d0054fdc:	eef0 7a41 	vmov.f32	s15, s2
d0054fe0:	eeb0 7a60 	vmov.f32	s14, s1
d0054fe4:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0055118 <cameraRotate+0x1b0>
d0054fe8:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0054fec:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054ff0:	eeb0 0a41 	vmov.f32	s0, s2
d0054ff4:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0054ff8:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0054ffc:	f7ff fbba 	bl	d0054774 <vec3>
d0055000:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0055004:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055008:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005500c:	f7ff fa9c 	bl	d0054548 <vec3Cross>
d0055010:	eef0 1a40 	vmov.f32	s3, s0
d0055014:	eeb0 2a60 	vmov.f32	s4, s1
d0055018:	ed84 0a06 	vstr	s0, [r4, #24]
d005501c:	eef0 2a41 	vmov.f32	s5, s2
d0055020:	edc4 0a07 	vstr	s1, [r4, #28]
d0055024:	ed84 1a08 	vstr	s2, [r4, #32]
d0055028:	f7ff fa82 	bl	d0054530 <vec3Dot>
d005502c:	eddf 7a3b 	vldr	s15, [pc, #236]	; d005511c <cameraRotate+0x1b4>
d0055030:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0055034:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055038:	d438      	bmi.n	d00550ac <cameraRotate+0x144>
d005503a:	ed94 0a06 	vldr	s0, [r4, #24]
d005503e:	edd4 0a07 	vldr	s1, [r4, #28]
d0055042:	ed94 1a08 	vldr	s2, [r4, #32]
d0055046:	f7ff fa95 	bl	d0054574 <vec3Normalize>
d005504a:	eef0 1a40 	vmov.f32	s3, s0
d005504e:	ed84 0a06 	vstr	s0, [r4, #24]
d0055052:	eeb0 2a60 	vmov.f32	s4, s1
d0055056:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005505a:	eef0 2a41 	vmov.f32	s5, s2
d005505e:	edc4 0a07 	vstr	s1, [r4, #28]
d0055062:	ed84 1a08 	vstr	s2, [r4, #32]
d0055066:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d005506a:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d005506e:	f7ff fa6b 	bl	d0054548 <vec3Cross>
d0055072:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055076:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005507a:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005507e:	f7ff fa79 	bl	d0054574 <vec3Normalize>
d0055082:	ed94 3a05 	vldr	s6, [r4, #20]
d0055086:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005508a:	eeb5 3a40 	vcmp.f32	s6, #0.0
d005508e:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055092:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055096:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005509a:	d111      	bne.n	d00550c0 <cameraRotate+0x158>
d005509c:	4620      	mov	r0, r4
d005509e:	b004      	add	sp, #16
d00550a0:	ecbd 8b04 	vpop	{d8-d9}
d00550a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00550a8:	f7ff beee 	b.w	d0054e88 <cameraNormalize>
d00550ac:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d0055118 <cameraRotate+0x1b0>
d00550b0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00550b4:	eef0 0a41 	vmov.f32	s1, s2
d00550b8:	f7ff fb5c 	bl	d0054774 <vec3>
d00550bc:	e7c5      	b.n	d005504a <cameraRotate+0xe2>
d00550be:	4770      	bx	lr
d00550c0:	ed94 0a06 	vldr	s0, [r4, #24]
d00550c4:	edd4 0a07 	vldr	s1, [r4, #28]
d00550c8:	ed94 1a08 	vldr	s2, [r4, #32]
d00550cc:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00550d0:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00550d4:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00550d8:	f7ff fa9c 	bl	d0054614 <rotateAroundAxis>
d00550dc:	ed84 0a06 	vstr	s0, [r4, #24]
d00550e0:	edc4 0a07 	vstr	s1, [r4, #28]
d00550e4:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00550e8:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00550ec:	ed84 1a08 	vstr	s2, [r4, #32]
d00550f0:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00550f4:	ed94 3a05 	vldr	s6, [r4, #20]
d00550f8:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00550fc:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055100:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055104:	f7ff fa86 	bl	d0054614 <rotateAroundAxis>
d0055108:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005510c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055110:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055114:	e7c2      	b.n	d005509c <cameraRotate+0x134>
d0055116:	bf00      	nop
d0055118:	00000000 	.word	0x00000000
d005511c:	322bcc77 	.word	0x322bcc77

d0055120 <cameraTurn>:
d0055120:	2800      	cmp	r0, #0
d0055122:	f000 8144 	beq.w	d00553ae <cameraTurn+0x28e>
d0055126:	b570      	push	{r4, r5, r6, lr}
d0055128:	4604      	mov	r4, r0
d005512a:	ed2d 8b04 	vpush	{d8-d9}
d005512e:	eef0 8a40 	vmov.f32	s17, s0
d0055132:	b08a      	sub	sp, #40	; 0x28
d0055134:	eeb0 9a60 	vmov.f32	s18, s1
d0055138:	eeb0 8a41 	vmov.f32	s16, s2
d005513c:	bb69      	cbnz	r1, d005519a <cameraTurn+0x7a>
d005513e:	f100 0318 	add.w	r3, r0, #24
d0055142:	ae01      	add	r6, sp, #4
d0055144:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0055148:	eeb5 9a40 	vcmp.f32	s18, #0.0
d005514c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0055150:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0055154:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055158:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d005515c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0055160:	ae04      	add	r6, sp, #16
d0055162:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0055166:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005516a:	ab0a      	add	r3, sp, #40	; 0x28
d005516c:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0055170:	d14a      	bne.n	d0055208 <cameraTurn+0xe8>
d0055172:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055176:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005517a:	f040 808d 	bne.w	d0055298 <cameraTurn+0x178>
d005517e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055182:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055186:	f040 80cf 	bne.w	d0055328 <cameraTurn+0x208>
d005518a:	4620      	mov	r0, r4
d005518c:	b00a      	add	sp, #40	; 0x28
d005518e:	ecbd 8b04 	vpop	{d8-d9}
d0055192:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0055196:	f7ff be77 	b.w	d0054e88 <cameraNormalize>
d005519a:	ed9f 1a85 	vldr	s2, [pc, #532]	; d00553b0 <cameraTurn+0x290>
d005519e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00551a2:	eef0 0a41 	vmov.f32	s1, s2
d00551a6:	f7ff fae5 	bl	d0054774 <vec3>
d00551aa:	eef0 7a41 	vmov.f32	s15, s2
d00551ae:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00553b0 <cameraTurn+0x290>
d00551b2:	eeb0 7a60 	vmov.f32	s14, s1
d00551b6:	ed8d 0a01 	vstr	s0, [sp, #4]
d00551ba:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00551be:	edcd 7a03 	vstr	s15, [sp, #12]
d00551c2:	eeb0 0a41 	vmov.f32	s0, s2
d00551c6:	ed8d 7a02 	vstr	s14, [sp, #8]
d00551ca:	f7ff fad3 	bl	d0054774 <vec3>
d00551ce:	eeb0 7a60 	vmov.f32	s14, s1
d00551d2:	eddf 0a77 	vldr	s1, [pc, #476]	; d00553b0 <cameraTurn+0x290>
d00551d6:	eef0 7a41 	vmov.f32	s15, s2
d00551da:	ed8d 0a04 	vstr	s0, [sp, #16]
d00551de:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d00551e2:	eeb0 0a60 	vmov.f32	s0, s1
d00551e6:	ed8d 7a05 	vstr	s14, [sp, #20]
d00551ea:	edcd 7a06 	vstr	s15, [sp, #24]
d00551ee:	f7ff fac1 	bl	d0054774 <vec3>
d00551f2:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00551f6:	edcd 0a08 	vstr	s1, [sp, #32]
d00551fa:	ed8d 0a07 	vstr	s0, [sp, #28]
d00551fe:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0055202:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055206:	d0b4      	beq.n	d0055172 <cameraTurn+0x52>
d0055208:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005520c:	eeb0 3a49 	vmov.f32	s6, s18
d0055210:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0055214:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0055218:	eddd 1a04 	vldr	s3, [sp, #16]
d005521c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055220:	eddd 2a06 	vldr	s5, [sp, #24]
d0055224:	f7ff f9f6 	bl	d0054614 <rotateAroundAxis>
d0055228:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d005522c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0055230:	eeb0 3a49 	vmov.f32	s6, s18
d0055234:	ed94 0a06 	vldr	s0, [r4, #24]
d0055238:	edd4 0a07 	vldr	s1, [r4, #28]
d005523c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0055240:	ed94 1a08 	vldr	s2, [r4, #32]
d0055244:	eddd 1a04 	vldr	s3, [sp, #16]
d0055248:	ed9d 2a05 	vldr	s4, [sp, #20]
d005524c:	eddd 2a06 	vldr	s5, [sp, #24]
d0055250:	f7ff f9e0 	bl	d0054614 <rotateAroundAxis>
d0055254:	eeb0 3a49 	vmov.f32	s6, s18
d0055258:	ed84 0a06 	vstr	s0, [r4, #24]
d005525c:	edc4 0a07 	vstr	s1, [r4, #28]
d0055260:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0055264:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0055268:	ed84 1a08 	vstr	s2, [r4, #32]
d005526c:	eddd 1a04 	vldr	s3, [sp, #16]
d0055270:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0055274:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055278:	eddd 2a06 	vldr	s5, [sp, #24]
d005527c:	f7ff f9ca 	bl	d0054614 <rotateAroundAxis>
d0055280:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055284:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055288:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005528c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055290:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055294:	f43f af73 	beq.w	d005517e <cameraTurn+0x5e>
d0055298:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005529c:	eeb0 3a68 	vmov.f32	s6, s17
d00552a0:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00552a4:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00552a8:	eddd 1a01 	vldr	s3, [sp, #4]
d00552ac:	ed9d 2a02 	vldr	s4, [sp, #8]
d00552b0:	eddd 2a03 	vldr	s5, [sp, #12]
d00552b4:	f7ff f9ae 	bl	d0054614 <rotateAroundAxis>
d00552b8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00552bc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00552c0:	eeb0 3a68 	vmov.f32	s6, s17
d00552c4:	ed94 0a06 	vldr	s0, [r4, #24]
d00552c8:	edd4 0a07 	vldr	s1, [r4, #28]
d00552cc:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00552d0:	ed94 1a08 	vldr	s2, [r4, #32]
d00552d4:	eddd 1a01 	vldr	s3, [sp, #4]
d00552d8:	ed9d 2a02 	vldr	s4, [sp, #8]
d00552dc:	eddd 2a03 	vldr	s5, [sp, #12]
d00552e0:	f7ff f998 	bl	d0054614 <rotateAroundAxis>
d00552e4:	eeb0 3a68 	vmov.f32	s6, s17
d00552e8:	ed84 0a06 	vstr	s0, [r4, #24]
d00552ec:	edc4 0a07 	vstr	s1, [r4, #28]
d00552f0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00552f4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00552f8:	ed84 1a08 	vstr	s2, [r4, #32]
d00552fc:	eddd 1a01 	vldr	s3, [sp, #4]
d0055300:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0055304:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055308:	eddd 2a03 	vldr	s5, [sp, #12]
d005530c:	f7ff f982 	bl	d0054614 <rotateAroundAxis>
d0055310:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055314:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055318:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005531c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055320:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055324:	f43f af31 	beq.w	d005518a <cameraTurn+0x6a>
d0055328:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005532c:	eeb0 3a48 	vmov.f32	s6, s16
d0055330:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0055334:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0055338:	eddd 1a07 	vldr	s3, [sp, #28]
d005533c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055340:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055344:	f7ff f966 	bl	d0054614 <rotateAroundAxis>
d0055348:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d005534c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0055350:	eeb0 3a48 	vmov.f32	s6, s16
d0055354:	ed94 0a06 	vldr	s0, [r4, #24]
d0055358:	edd4 0a07 	vldr	s1, [r4, #28]
d005535c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0055360:	ed94 1a08 	vldr	s2, [r4, #32]
d0055364:	eddd 1a07 	vldr	s3, [sp, #28]
d0055368:	ed9d 2a08 	vldr	s4, [sp, #32]
d005536c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055370:	f7ff f950 	bl	d0054614 <rotateAroundAxis>
d0055374:	ed84 0a06 	vstr	s0, [r4, #24]
d0055378:	edc4 0a07 	vstr	s1, [r4, #28]
d005537c:	eeb0 3a48 	vmov.f32	s6, s16
d0055380:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0055384:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0055388:	ed84 1a08 	vstr	s2, [r4, #32]
d005538c:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0055390:	eddd 1a07 	vldr	s3, [sp, #28]
d0055394:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055398:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d005539c:	f7ff f93a 	bl	d0054614 <rotateAroundAxis>
d00553a0:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00553a4:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00553a8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00553ac:	e6ed      	b.n	d005518a <cameraTurn+0x6a>
d00553ae:	4770      	bx	lr
d00553b0:	00000000 	.word	0x00000000

d00553b4 <worldToCamera>:
d00553b4:	b084      	sub	sp, #16
d00553b6:	b510      	push	{r4, lr}
d00553b8:	ed2d 8b02 	vpush	{d8}
d00553bc:	b0ac      	sub	sp, #176	; 0xb0
d00553be:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d00553c2:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d00553c6:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00553ca:	f024 041f 	bic.w	r4, r4, #31
d00553ce:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d00553d2:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d00553d6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d00553da:	2260      	movs	r2, #96	; 0x60
d00553dc:	4661      	mov	r1, ip
d00553de:	4620      	mov	r0, r4
d00553e0:	f003 fbdc 	bl	d0058b9c <memcpy>
d00553e4:	edd4 7a00 	vldr	s15, [r4]
d00553e8:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d00553ec:	ed94 7a01 	vldr	s14, [r4, #4]
d00553f0:	ee30 0a67 	vsub.f32	s0, s0, s15
d00553f4:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d00553f8:	edd4 7a02 	vldr	s15, [r4, #8]
d00553fc:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0055400:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0055404:	edd4 1a06 	vldr	s3, [r4, #24]
d0055408:	ee31 1a67 	vsub.f32	s2, s2, s15
d005540c:	ed94 2a07 	vldr	s4, [r4, #28]
d0055410:	edd4 2a08 	vldr	s5, [r4, #32]
d0055414:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0055418:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d005541c:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0055420:	f7ff f886 	bl	d0054530 <vec3Dot>
d0055424:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0055428:	eef0 8a40 	vmov.f32	s17, s0
d005542c:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0055430:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0055434:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0055438:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d005543c:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0055440:	f7ff f876 	bl	d0054530 <vec3Dot>
d0055444:	eeb0 8a40 	vmov.f32	s16, s0
d0055448:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d005544c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0055450:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0055454:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0055458:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d005545c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055460:	f7ff f866 	bl	d0054530 <vec3Dot>
d0055464:	eef0 0a48 	vmov.f32	s1, s16
d0055468:	eeb0 1a40 	vmov.f32	s2, s0
d005546c:	eeb0 0a68 	vmov.f32	s0, s17
d0055470:	b02c      	add	sp, #176	; 0xb0
d0055472:	ecbd 8b02 	vpop	{d8}
d0055476:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005547a:	b004      	add	sp, #16
d005547c:	4770      	bx	lr
d005547e:	bf00      	nop

d0055480 <cameraSetRange>:
d0055480:	b1d8      	cbz	r0, d00554ba <cameraSetRange+0x3a>
d0055482:	eddf 7a11 	vldr	s15, [pc, #68]	; d00554c8 <cameraSetRange+0x48>
d0055486:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d005548a:	eeb4 0ae0 	vcmpe.f32	s0, s1
d005548e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055492:	da13      	bge.n	d00554bc <cameraSetRange+0x3c>
d0055494:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0055498:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d005549c:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00554a0:	4b0a      	ldr	r3, [pc, #40]	; (d00554cc <cameraSetRange+0x4c>)
d00554a2:	490b      	ldr	r1, [pc, #44]	; (d00554d0 <cameraSetRange+0x50>)
d00554a4:	4a0b      	ldr	r2, [pc, #44]	; (d00554d4 <cameraSetRange+0x54>)
d00554a6:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d00554aa:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d00554ae:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d00554b2:	6483      	str	r3, [r0, #72]	; 0x48
d00554b4:	64c3      	str	r3, [r0, #76]	; 0x4c
d00554b6:	6501      	str	r1, [r0, #80]	; 0x50
d00554b8:	6542      	str	r2, [r0, #84]	; 0x54
d00554ba:	4770      	bx	lr
d00554bc:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00554c0:	ee70 0a27 	vadd.f32	s1, s0, s15
d00554c4:	e7ec      	b.n	d00554a0 <cameraSetRange+0x20>
d00554c6:	bf00      	nop
d00554c8:	3a83126f 	.word	0x3a83126f
d00554cc:	43700000 	.word	0x43700000
d00554d0:	43200000 	.word	0x43200000
d00554d4:	3f2aaaab 	.word	0x3f2aaaab

d00554d8 <cameraMove>:
d00554d8:	b3a8      	cbz	r0, d0055546 <cameraMove+0x6e>
d00554da:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d00554de:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d00554e2:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d00554e6:	ee20 7a87 	vmul.f32	s14, s1, s14
d00554ea:	edd0 5a06 	vldr	s11, [r0, #24]
d00554ee:	ee60 7aa7 	vmul.f32	s15, s1, s15
d00554f2:	ed90 6a08 	vldr	s12, [r0, #32]
d00554f6:	ee60 0aa6 	vmul.f32	s1, s1, s13
d00554fa:	edd0 6a07 	vldr	s13, [r0, #28]
d00554fe:	eea5 7a80 	vfma.f32	s14, s11, s0
d0055502:	edd0 4a01 	vldr	s9, [r0, #4]
d0055506:	eee6 7a80 	vfma.f32	s15, s13, s0
d005550a:	ed90 5a02 	vldr	s10, [r0, #8]
d005550e:	eee6 0a00 	vfma.f32	s1, s12, s0
d0055512:	edd0 6a00 	vldr	s13, [r0]
d0055516:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d005551a:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d005551e:	ee37 7a26 	vadd.f32	s14, s14, s13
d0055522:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0055526:	ee77 7aa4 	vadd.f32	s15, s15, s9
d005552a:	ee70 0a85 	vadd.f32	s1, s1, s10
d005552e:	eea5 7a81 	vfma.f32	s14, s11, s2
d0055532:	eee6 7a01 	vfma.f32	s15, s12, s2
d0055536:	eee6 0a81 	vfma.f32	s1, s13, s2
d005553a:	ed80 7a00 	vstr	s14, [r0]
d005553e:	edc0 7a01 	vstr	s15, [r0, #4]
d0055542:	edc0 0a02 	vstr	s1, [r0, #8]
d0055546:	4770      	bx	lr

d0055548 <normalizeEntity.part.0>:
d0055548:	edd0 0a05 	vldr	s1, [r0, #20]
d005554c:	ed90 1a06 	vldr	s2, [r0, #24]
d0055550:	ed90 0a04 	vldr	s0, [r0, #16]
d0055554:	b510      	push	{r4, lr}
d0055556:	4604      	mov	r4, r0
d0055558:	f7ff f80c 	bl	d0054574 <vec3Normalize>
d005555c:	eeb0 7a60 	vmov.f32	s14, s1
d0055560:	eef0 7a41 	vmov.f32	s15, s2
d0055564:	ed84 0a04 	vstr	s0, [r4, #16]
d0055568:	ed94 0a07 	vldr	s0, [r4, #28]
d005556c:	ed84 7a05 	vstr	s14, [r4, #20]
d0055570:	edc4 7a06 	vstr	s15, [r4, #24]
d0055574:	edd4 0a08 	vldr	s1, [r4, #32]
d0055578:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005557c:	f7fe fffa 	bl	d0054574 <vec3Normalize>
d0055580:	eef0 1a40 	vmov.f32	s3, s0
d0055584:	eeb0 2a60 	vmov.f32	s4, s1
d0055588:	ed94 0a04 	vldr	s0, [r4, #16]
d005558c:	eef0 2a41 	vmov.f32	s5, s2
d0055590:	edc4 0a08 	vstr	s1, [r4, #32]
d0055594:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0055598:	edd4 0a05 	vldr	s1, [r4, #20]
d005559c:	ed94 1a06 	vldr	s2, [r4, #24]
d00555a0:	edc4 1a07 	vstr	s3, [r4, #28]
d00555a4:	f7fe ffd0 	bl	d0054548 <vec3Cross>
d00555a8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00555ac:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00555b0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00555b4:	f7fe ffde 	bl	d0054574 <vec3Normalize>
d00555b8:	edd4 1a04 	vldr	s3, [r4, #16]
d00555bc:	ed94 2a05 	vldr	s4, [r4, #20]
d00555c0:	edd4 2a06 	vldr	s5, [r4, #24]
d00555c4:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00555c8:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00555cc:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00555d0:	f7fe ffba 	bl	d0054548 <vec3Cross>
d00555d4:	ed84 0a07 	vstr	s0, [r4, #28]
d00555d8:	edc4 0a08 	vstr	s1, [r4, #32]
d00555dc:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00555e0:	f7fe ffc8 	bl	d0054574 <vec3Normalize>
d00555e4:	ed84 0a07 	vstr	s0, [r4, #28]
d00555e8:	edc4 0a08 	vstr	s1, [r4, #32]
d00555ec:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00555f0:	bd10      	pop	{r4, pc}
d00555f2:	bf00      	nop

d00555f4 <entityRotation.part.0>:
d00555f4:	b5f0      	push	{r4, r5, r6, r7, lr}
d00555f6:	4eb7      	ldr	r6, [pc, #732]	; (d00558d4 <entityRotation.part.0+0x2e0>)
d00555f8:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d00555fc:	ed2d 8b04 	vpush	{d8-d9}
d0055600:	eb06 1444 	add.w	r4, r6, r4, lsl #5
d0055604:	eeb0 9a40 	vmov.f32	s18, s0
d0055608:	eef0 8a60 	vmov.f32	s17, s1
d005560c:	b08b      	sub	sp, #44	; 0x2c
d005560e:	eeb0 8a41 	vmov.f32	s16, s2
d0055612:	2900      	cmp	r1, #0
d0055614:	d040      	beq.n	d0055698 <entityRotation.part.0+0xa4>
d0055616:	eddf 1ab0 	vldr	s3, [pc, #704]	; d00558d8 <entityRotation.part.0+0x2e4>
d005561a:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d005561e:	eeb4 0a61 	vcmp.f32	s0, s3
d0055622:	edc4 1a08 	vstr	s3, [r4, #32]
d0055626:	ed84 2a07 	vstr	s4, [r4, #28]
d005562a:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d005562e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055632:	ed84 2a06 	vstr	s4, [r4, #24]
d0055636:	ed8d 2a02 	vstr	s4, [sp, #8]
d005563a:	ed8d 2a04 	vstr	s4, [sp, #16]
d005563e:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0055642:	edc4 1a09 	vstr	s3, [r4, #36]	; 0x24
d0055646:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d005564a:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d005564e:	edc4 1a04 	vstr	s3, [r4, #16]
d0055652:	edc4 1a05 	vstr	s3, [r4, #20]
d0055656:	edcd 1a01 	vstr	s3, [sp, #4]
d005565a:	edcd 1a03 	vstr	s3, [sp, #12]
d005565e:	edcd 1a05 	vstr	s3, [sp, #20]
d0055662:	edcd 1a06 	vstr	s3, [sp, #24]
d0055666:	edcd 1a07 	vstr	s3, [sp, #28]
d005566a:	edcd 1a08 	vstr	s3, [sp, #32]
d005566e:	d17e      	bne.n	d005576e <entityRotation.part.0+0x17a>
d0055670:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055674:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055678:	f040 80c9 	bne.w	d005580e <entityRotation.part.0+0x21a>
d005567c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055680:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055684:	f040 8117 	bne.w	d00558b6 <entityRotation.part.0+0x2c2>
d0055688:	4620      	mov	r0, r4
d005568a:	b00b      	add	sp, #44	; 0x2c
d005568c:	ecbd 8b04 	vpop	{d8-d9}
d0055690:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0055694:	f7ff bf58 	b.w	d0055548 <normalizeEntity.part.0>
d0055698:	eeb5 0a40 	vcmp.f32	s0, #0.0
d005569c:	4605      	mov	r5, r0
d005569e:	0047      	lsls	r7, r0, #1
d00556a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00556a4:	f040 811a 	bne.w	d00558dc <entityRotation.part.0+0x2e8>
d00556a8:	eef5 8a40 	vcmp.f32	s17, #0.0
d00556ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00556b0:	f040 8170 	bne.w	d0055994 <entityRotation.part.0+0x3a0>
d00556b4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00556b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00556bc:	d0e4      	beq.n	d0055688 <entityRotation.part.0+0x94>
d00556be:	443d      	add	r5, r7
d00556c0:	ab0a      	add	r3, sp, #40	; 0x28
d00556c2:	eeb0 3a48 	vmov.f32	s6, s16
d00556c6:	ed94 0a04 	vldr	s0, [r4, #16]
d00556ca:	eb06 1545 	add.w	r5, r6, r5, lsl #5
d00556ce:	edd4 0a05 	vldr	s1, [r4, #20]
d00556d2:	ed94 1a06 	vldr	s2, [r4, #24]
d00556d6:	3510      	adds	r5, #16
d00556d8:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d00556dc:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00556e0:	eddd 1a07 	vldr	s3, [sp, #28]
d00556e4:	ed9d 2a08 	vldr	s4, [sp, #32]
d00556e8:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00556ec:	f7fe ff92 	bl	d0054614 <rotateAroundAxis>
d00556f0:	eef0 6a40 	vmov.f32	s13, s0
d00556f4:	eeb0 7a60 	vmov.f32	s14, s1
d00556f8:	ed94 0a07 	vldr	s0, [r4, #28]
d00556fc:	eef0 7a41 	vmov.f32	s15, s2
d0055700:	edd4 0a08 	vldr	s1, [r4, #32]
d0055704:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055708:	eeb0 3a48 	vmov.f32	s6, s16
d005570c:	eddd 1a07 	vldr	s3, [sp, #28]
d0055710:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055714:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055718:	edc4 6a04 	vstr	s13, [r4, #16]
d005571c:	ed84 7a05 	vstr	s14, [r4, #20]
d0055720:	edc4 7a06 	vstr	s15, [r4, #24]
d0055724:	f7fe ff76 	bl	d0054614 <rotateAroundAxis>
d0055728:	eef0 6a40 	vmov.f32	s13, s0
d005572c:	eeb0 7a60 	vmov.f32	s14, s1
d0055730:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055734:	eef0 7a41 	vmov.f32	s15, s2
d0055738:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005573c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055740:	eeb0 3a48 	vmov.f32	s6, s16
d0055744:	eddd 1a07 	vldr	s3, [sp, #28]
d0055748:	ed9d 2a08 	vldr	s4, [sp, #32]
d005574c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055750:	edc4 6a07 	vstr	s13, [r4, #28]
d0055754:	ed84 7a08 	vstr	s14, [r4, #32]
d0055758:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005575c:	f7fe ff5a 	bl	d0054614 <rotateAroundAxis>
d0055760:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055764:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055768:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005576c:	e78c      	b.n	d0055688 <entityRotation.part.0+0x94>
d005576e:	eeb0 1a42 	vmov.f32	s2, s4
d0055772:	eef0 0a61 	vmov.f32	s1, s3
d0055776:	eeb0 3a40 	vmov.f32	s6, s0
d005577a:	eeb0 0a61 	vmov.f32	s0, s3
d005577e:	eef0 2a61 	vmov.f32	s5, s3
d0055782:	f7fe ff47 	bl	d0054614 <rotateAroundAxis>
d0055786:	eeb0 7a60 	vmov.f32	s14, s1
d005578a:	eef0 6a40 	vmov.f32	s13, s0
d005578e:	edd4 0a08 	vldr	s1, [r4, #32]
d0055792:	eef0 7a41 	vmov.f32	s15, s2
d0055796:	ed94 0a07 	vldr	s0, [r4, #28]
d005579a:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005579e:	eeb0 3a49 	vmov.f32	s6, s18
d00557a2:	eddd 1a01 	vldr	s3, [sp, #4]
d00557a6:	ed9d 2a02 	vldr	s4, [sp, #8]
d00557aa:	eddd 2a03 	vldr	s5, [sp, #12]
d00557ae:	edc4 6a04 	vstr	s13, [r4, #16]
d00557b2:	ed84 7a05 	vstr	s14, [r4, #20]
d00557b6:	edc4 7a06 	vstr	s15, [r4, #24]
d00557ba:	f7fe ff2b 	bl	d0054614 <rotateAroundAxis>
d00557be:	eef0 6a40 	vmov.f32	s13, s0
d00557c2:	eeb0 7a60 	vmov.f32	s14, s1
d00557c6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00557ca:	eef0 7a41 	vmov.f32	s15, s2
d00557ce:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00557d2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00557d6:	eeb0 3a49 	vmov.f32	s6, s18
d00557da:	eddd 1a01 	vldr	s3, [sp, #4]
d00557de:	ed9d 2a02 	vldr	s4, [sp, #8]
d00557e2:	eddd 2a03 	vldr	s5, [sp, #12]
d00557e6:	edc4 6a07 	vstr	s13, [r4, #28]
d00557ea:	ed84 7a08 	vstr	s14, [r4, #32]
d00557ee:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00557f2:	f7fe ff0f 	bl	d0054614 <rotateAroundAxis>
d00557f6:	eef5 8a40 	vcmp.f32	s17, #0.0
d00557fa:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00557fe:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055802:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055806:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005580a:	f43f af37 	beq.w	d005567c <entityRotation.part.0+0x88>
d005580e:	ed94 0a04 	vldr	s0, [r4, #16]
d0055812:	eeb0 3a68 	vmov.f32	s6, s17
d0055816:	edd4 0a05 	vldr	s1, [r4, #20]
d005581a:	ed94 1a06 	vldr	s2, [r4, #24]
d005581e:	eddd 1a04 	vldr	s3, [sp, #16]
d0055822:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055826:	eddd 2a06 	vldr	s5, [sp, #24]
d005582a:	f7fe fef3 	bl	d0054614 <rotateAroundAxis>
d005582e:	eef0 6a40 	vmov.f32	s13, s0
d0055832:	eeb0 7a60 	vmov.f32	s14, s1
d0055836:	ed94 0a07 	vldr	s0, [r4, #28]
d005583a:	eef0 7a41 	vmov.f32	s15, s2
d005583e:	edd4 0a08 	vldr	s1, [r4, #32]
d0055842:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055846:	eeb0 3a68 	vmov.f32	s6, s17
d005584a:	eddd 1a04 	vldr	s3, [sp, #16]
d005584e:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055852:	eddd 2a06 	vldr	s5, [sp, #24]
d0055856:	edc4 6a04 	vstr	s13, [r4, #16]
d005585a:	ed84 7a05 	vstr	s14, [r4, #20]
d005585e:	edc4 7a06 	vstr	s15, [r4, #24]
d0055862:	f7fe fed7 	bl	d0054614 <rotateAroundAxis>
d0055866:	eef0 6a40 	vmov.f32	s13, s0
d005586a:	eeb0 7a60 	vmov.f32	s14, s1
d005586e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055872:	eef0 7a41 	vmov.f32	s15, s2
d0055876:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005587a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005587e:	eeb0 3a68 	vmov.f32	s6, s17
d0055882:	eddd 1a04 	vldr	s3, [sp, #16]
d0055886:	ed9d 2a05 	vldr	s4, [sp, #20]
d005588a:	eddd 2a06 	vldr	s5, [sp, #24]
d005588e:	edc4 6a07 	vstr	s13, [r4, #28]
d0055892:	ed84 7a08 	vstr	s14, [r4, #32]
d0055896:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005589a:	f7fe febb 	bl	d0054614 <rotateAroundAxis>
d005589e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00558a2:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00558a6:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00558aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558ae:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00558b2:	f43f aee9 	beq.w	d0055688 <entityRotation.part.0+0x94>
d00558b6:	eeb0 3a48 	vmov.f32	s6, s16
d00558ba:	eddd 1a07 	vldr	s3, [sp, #28]
d00558be:	ed9d 2a08 	vldr	s4, [sp, #32]
d00558c2:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00558c6:	ed94 0a04 	vldr	s0, [r4, #16]
d00558ca:	edd4 0a05 	vldr	s1, [r4, #20]
d00558ce:	ed94 1a06 	vldr	s2, [r4, #24]
d00558d2:	e70b      	b.n	d00556ec <entityRotation.part.0+0xf8>
d00558d4:	d0140340 	.word	0xd0140340
d00558d8:	00000000 	.word	0x00000000
d00558dc:	f104 0328 	add.w	r3, r4, #40	; 0x28
d00558e0:	f10d 0c04 	add.w	ip, sp, #4
d00558e4:	eeb0 3a40 	vmov.f32	s6, s0
d00558e8:	edd4 0a05 	vldr	s1, [r4, #20]
d00558ec:	ed94 0a04 	vldr	s0, [r4, #16]
d00558f0:	ed94 1a06 	vldr	s2, [r4, #24]
d00558f4:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00558f8:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d00558fc:	eddd 1a01 	vldr	s3, [sp, #4]
d0055900:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055904:	eddd 2a03 	vldr	s5, [sp, #12]
d0055908:	f7fe fe84 	bl	d0054614 <rotateAroundAxis>
d005590c:	eef0 6a40 	vmov.f32	s13, s0
d0055910:	eeb0 7a60 	vmov.f32	s14, s1
d0055914:	ed94 0a07 	vldr	s0, [r4, #28]
d0055918:	eef0 7a41 	vmov.f32	s15, s2
d005591c:	edd4 0a08 	vldr	s1, [r4, #32]
d0055920:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055924:	eeb0 3a49 	vmov.f32	s6, s18
d0055928:	eddd 1a01 	vldr	s3, [sp, #4]
d005592c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055930:	eddd 2a03 	vldr	s5, [sp, #12]
d0055934:	edc4 6a04 	vstr	s13, [r4, #16]
d0055938:	ed84 7a05 	vstr	s14, [r4, #20]
d005593c:	edc4 7a06 	vstr	s15, [r4, #24]
d0055940:	f7fe fe68 	bl	d0054614 <rotateAroundAxis>
d0055944:	eef0 6a40 	vmov.f32	s13, s0
d0055948:	eeb0 7a60 	vmov.f32	s14, s1
d005594c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055950:	eef0 7a41 	vmov.f32	s15, s2
d0055954:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055958:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005595c:	eeb0 3a49 	vmov.f32	s6, s18
d0055960:	eddd 1a01 	vldr	s3, [sp, #4]
d0055964:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055968:	eddd 2a03 	vldr	s5, [sp, #12]
d005596c:	edc4 6a07 	vstr	s13, [r4, #28]
d0055970:	ed84 7a08 	vstr	s14, [r4, #32]
d0055974:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055978:	f7fe fe4c 	bl	d0054614 <rotateAroundAxis>
d005597c:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055980:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055984:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055988:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005598c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055990:	f43f ae90 	beq.w	d00556b4 <entityRotation.part.0+0xc0>
d0055994:	197b      	adds	r3, r7, r5
d0055996:	f10d 0c10 	add.w	ip, sp, #16
d005599a:	ed94 0a04 	vldr	s0, [r4, #16]
d005599e:	eeb0 3a68 	vmov.f32	s6, s17
d00559a2:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d00559a6:	edd4 0a05 	vldr	s1, [r4, #20]
d00559aa:	ed94 1a06 	vldr	s2, [r4, #24]
d00559ae:	331c      	adds	r3, #28
d00559b0:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00559b4:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d00559b8:	eddd 1a04 	vldr	s3, [sp, #16]
d00559bc:	ed9d 2a05 	vldr	s4, [sp, #20]
d00559c0:	eddd 2a06 	vldr	s5, [sp, #24]
d00559c4:	f7fe fe26 	bl	d0054614 <rotateAroundAxis>
d00559c8:	eef0 6a40 	vmov.f32	s13, s0
d00559cc:	eeb0 7a60 	vmov.f32	s14, s1
d00559d0:	ed94 0a07 	vldr	s0, [r4, #28]
d00559d4:	eef0 7a41 	vmov.f32	s15, s2
d00559d8:	edd4 0a08 	vldr	s1, [r4, #32]
d00559dc:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00559e0:	eeb0 3a68 	vmov.f32	s6, s17
d00559e4:	eddd 1a04 	vldr	s3, [sp, #16]
d00559e8:	ed9d 2a05 	vldr	s4, [sp, #20]
d00559ec:	eddd 2a06 	vldr	s5, [sp, #24]
d00559f0:	edc4 6a04 	vstr	s13, [r4, #16]
d00559f4:	ed84 7a05 	vstr	s14, [r4, #20]
d00559f8:	edc4 7a06 	vstr	s15, [r4, #24]
d00559fc:	f7fe fe0a 	bl	d0054614 <rotateAroundAxis>
d0055a00:	eef0 6a40 	vmov.f32	s13, s0
d0055a04:	eeb0 7a60 	vmov.f32	s14, s1
d0055a08:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055a0c:	eef0 7a41 	vmov.f32	s15, s2
d0055a10:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055a14:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055a18:	eeb0 3a68 	vmov.f32	s6, s17
d0055a1c:	eddd 1a04 	vldr	s3, [sp, #16]
d0055a20:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055a24:	eddd 2a06 	vldr	s5, [sp, #24]
d0055a28:	edc4 6a07 	vstr	s13, [r4, #28]
d0055a2c:	ed84 7a08 	vstr	s14, [r4, #32]
d0055a30:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055a34:	f7fe fdee 	bl	d0054614 <rotateAroundAxis>
d0055a38:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055a3c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055a40:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055a44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a48:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055a4c:	f43f ae1c 	beq.w	d0055688 <entityRotation.part.0+0x94>
d0055a50:	e635      	b.n	d00556be <entityRotation.part.0+0xca>
d0055a52:	bf00      	nop

d0055a54 <meshComputeBoundsRadius>:
d0055a54:	b1f0      	cbz	r0, d0055a94 <meshComputeBoundsRadius+0x40>
d0055a56:	6803      	ldr	r3, [r0, #0]
d0055a58:	b1e3      	cbz	r3, d0055a94 <meshComputeBoundsRadius+0x40>
d0055a5a:	6842      	ldr	r2, [r0, #4]
d0055a5c:	2a00      	cmp	r2, #0
d0055a5e:	dd19      	ble.n	d0055a94 <meshComputeBoundsRadius+0x40>
d0055a60:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0055a64:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0055a9c <meshComputeBoundsRadius+0x48>
d0055a68:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0055a6c:	edd3 7a01 	vldr	s15, [r3, #4]
d0055a70:	330c      	adds	r3, #12
d0055a72:	ed53 6a03 	vldr	s13, [r3, #-12]
d0055a76:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0055a7a:	ed13 7a01 	vldr	s14, [r3, #-4]
d0055a7e:	429a      	cmp	r2, r3
d0055a80:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0055a84:	eee7 7a07 	vfma.f32	s15, s14, s14
d0055a88:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0055a8c:	d1ee      	bne.n	d0055a6c <meshComputeBoundsRadius+0x18>
d0055a8e:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0055a92:	4770      	bx	lr
d0055a94:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0055a9c <meshComputeBoundsRadius+0x48>
d0055a98:	4770      	bx	lr
d0055a9a:	bf00      	nop
d0055a9c:	00000000 	.word	0x00000000

d0055aa0 <entityWorldSpawn>:
d0055aa0:	b4f0      	push	{r4, r5, r6, r7}
d0055aa2:	4d20      	ldr	r5, [pc, #128]	; (d0055b24 <entityWorldSpawn+0x84>)
d0055aa4:	b084      	sub	sp, #16
d0055aa6:	2300      	movs	r3, #0
d0055aa8:	462a      	mov	r2, r5
d0055aaa:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055aae:	edcd 0a02 	vstr	s1, [sp, #8]
d0055ab2:	ed8d 1a03 	vstr	s2, [sp, #12]
d0055ab6:	e003      	b.n	d0055ac0 <entityWorldSpawn+0x20>
d0055ab8:	3301      	adds	r3, #1
d0055aba:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0055abe:	d02b      	beq.n	d0055b18 <entityWorldSpawn+0x78>
d0055ac0:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d0055ac4:	3260      	adds	r2, #96	; 0x60
d0055ac6:	2c00      	cmp	r4, #0
d0055ac8:	d1f6      	bne.n	d0055ab8 <entityWorldSpawn+0x18>
d0055aca:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0055ace:	4f16      	ldr	r7, [pc, #88]	; (d0055b28 <entityWorldSpawn+0x88>)
d0055ad0:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0055ad4:	2600      	movs	r6, #0
d0055ad6:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d0055ada:	f240 1c01 	movw	ip, #257	; 0x101
d0055ade:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d0055ae2:	aa04      	add	r2, sp, #16
d0055ae4:	60e8      	str	r0, [r5, #12]
d0055ae6:	61e9      	str	r1, [r5, #28]
d0055ae8:	62e9      	str	r1, [r5, #44]	; 0x2c
d0055aea:	61a9      	str	r1, [r5, #24]
d0055aec:	622e      	str	r6, [r5, #32]
d0055aee:	626e      	str	r6, [r5, #36]	; 0x24
d0055af0:	62ae      	str	r6, [r5, #40]	; 0x28
d0055af2:	632e      	str	r6, [r5, #48]	; 0x30
d0055af4:	612e      	str	r6, [r5, #16]
d0055af6:	616e      	str	r6, [r5, #20]
d0055af8:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0055afc:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0055b00:	4618      	mov	r0, r3
d0055b02:	f8a7 c014 	strh.w	ip, [r7, #20]
d0055b06:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d0055b0a:	63ee      	str	r6, [r5, #60]	; 0x3c
d0055b0c:	642e      	str	r6, [r5, #64]	; 0x40
d0055b0e:	646e      	str	r6, [r5, #68]	; 0x44
d0055b10:	63ae      	str	r6, [r5, #56]	; 0x38
d0055b12:	b004      	add	sp, #16
d0055b14:	bcf0      	pop	{r4, r5, r6, r7}
d0055b16:	4770      	bx	lr
d0055b18:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0055b1c:	4618      	mov	r0, r3
d0055b1e:	b004      	add	sp, #16
d0055b20:	bcf0      	pop	{r4, r5, r6, r7}
d0055b22:	4770      	bx	lr
d0055b24:	d0140340 	.word	0xd0140340
d0055b28:	d0140360 	.word	0xd0140360

d0055b2c <entitySetPosition>:
d0055b2c:	b084      	sub	sp, #16
d0055b2e:	28ff      	cmp	r0, #255	; 0xff
d0055b30:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055b34:	edcd 0a02 	vstr	s1, [sp, #8]
d0055b38:	ed8d 1a03 	vstr	s2, [sp, #12]
d0055b3c:	d80e      	bhi.n	d0055b5c <entitySetPosition+0x30>
d0055b3e:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055b42:	4b07      	ldr	r3, [pc, #28]	; (d0055b60 <entitySetPosition+0x34>)
d0055b44:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d0055b48:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0055b4c:	b132      	cbz	r2, d0055b5c <entitySetPosition+0x30>
d0055b4e:	68da      	ldr	r2, [r3, #12]
d0055b50:	b122      	cbz	r2, d0055b5c <entitySetPosition+0x30>
d0055b52:	aa04      	add	r2, sp, #16
d0055b54:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0055b58:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0055b5c:	b004      	add	sp, #16
d0055b5e:	4770      	bx	lr
d0055b60:	d0140340 	.word	0xd0140340

d0055b64 <entityGetPosition>:
d0055b64:	28ff      	cmp	r0, #255	; 0xff
d0055b66:	b088      	sub	sp, #32
d0055b68:	d80e      	bhi.n	d0055b88 <entityGetPosition+0x24>
d0055b6a:	4b0d      	ldr	r3, [pc, #52]	; (d0055ba0 <entityGetPosition+0x3c>)
d0055b6c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055b70:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0055b74:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0055b78:	b133      	cbz	r3, d0055b88 <entityGetPosition+0x24>
d0055b7a:	68c3      	ldr	r3, [r0, #12]
d0055b7c:	b123      	cbz	r3, d0055b88 <entityGetPosition+0x24>
d0055b7e:	ab08      	add	r3, sp, #32
d0055b80:	c807      	ldmia	r0, {r0, r1, r2}
d0055b82:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0055b86:	e003      	b.n	d0055b90 <entityGetPosition+0x2c>
d0055b88:	2300      	movs	r3, #0
d0055b8a:	9305      	str	r3, [sp, #20]
d0055b8c:	9306      	str	r3, [sp, #24]
d0055b8e:	9307      	str	r3, [sp, #28]
d0055b90:	ed9d 0a05 	vldr	s0, [sp, #20]
d0055b94:	eddd 0a06 	vldr	s1, [sp, #24]
d0055b98:	ed9d 1a07 	vldr	s2, [sp, #28]
d0055b9c:	b008      	add	sp, #32
d0055b9e:	4770      	bx	lr
d0055ba0:	d0140340 	.word	0xd0140340

d0055ba4 <entityMoveForward>:
d0055ba4:	28ff      	cmp	r0, #255	; 0xff
d0055ba6:	d82b      	bhi.n	d0055c00 <entityMoveForward+0x5c>
d0055ba8:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055bac:	b510      	push	{r4, lr}
d0055bae:	4c15      	ldr	r4, [pc, #84]	; (d0055c04 <entityMoveForward+0x60>)
d0055bb0:	b084      	sub	sp, #16
d0055bb2:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0055bb6:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0055bba:	b1fb      	cbz	r3, d0055bfc <entityMoveForward+0x58>
d0055bbc:	68e3      	ldr	r3, [r4, #12]
d0055bbe:	b1eb      	cbz	r3, d0055bfc <entityMoveForward+0x58>
d0055bc0:	eef0 1a40 	vmov.f32	s3, s0
d0055bc4:	edd4 0a05 	vldr	s1, [r4, #20]
d0055bc8:	ed94 0a04 	vldr	s0, [r4, #16]
d0055bcc:	ed94 1a06 	vldr	s2, [r4, #24]
d0055bd0:	f7fe fca4 	bl	d005451c <vec3Scale>
d0055bd4:	eef0 1a40 	vmov.f32	s3, s0
d0055bd8:	eeb0 2a60 	vmov.f32	s4, s1
d0055bdc:	ed94 0a00 	vldr	s0, [r4]
d0055be0:	eef0 2a41 	vmov.f32	s5, s2
d0055be4:	edd4 0a01 	vldr	s1, [r4, #4]
d0055be8:	ed94 1a02 	vldr	s2, [r4, #8]
d0055bec:	f7fe fc8c 	bl	d0054508 <vec3Add>
d0055bf0:	ed84 0a00 	vstr	s0, [r4]
d0055bf4:	edc4 0a01 	vstr	s1, [r4, #4]
d0055bf8:	ed84 1a02 	vstr	s2, [r4, #8]
d0055bfc:	b004      	add	sp, #16
d0055bfe:	bd10      	pop	{r4, pc}
d0055c00:	4770      	bx	lr
d0055c02:	bf00      	nop
d0055c04:	d0140340 	.word	0xd0140340

d0055c08 <entityTurnLocal>:
d0055c08:	28ff      	cmp	r0, #255	; 0xff
d0055c0a:	d82c      	bhi.n	d0055c66 <entityTurnLocal+0x5e>
d0055c0c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055c10:	b510      	push	{r4, lr}
d0055c12:	4c65      	ldr	r4, [pc, #404]	; (d0055da8 <entityTurnLocal+0x1a0>)
d0055c14:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0055c18:	ed2d 8b04 	vpush	{d8-d9}
d0055c1c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0055c20:	b1f3      	cbz	r3, d0055c60 <entityTurnLocal+0x58>
d0055c22:	68e3      	ldr	r3, [r4, #12]
d0055c24:	b1e3      	cbz	r3, d0055c60 <entityTurnLocal+0x58>
d0055c26:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0055c2a:	eeb0 9a40 	vmov.f32	s18, s0
d0055c2e:	eef0 8a60 	vmov.f32	s17, s1
d0055c32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055c36:	eeb0 8a41 	vmov.f32	s16, s2
d0055c3a:	f040 8081 	bne.w	d0055d40 <entityTurnLocal+0x138>
d0055c3e:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055c42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055c46:	d148      	bne.n	d0055cda <entityTurnLocal+0xd2>
d0055c48:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055c4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055c50:	d10a      	bne.n	d0055c68 <entityTurnLocal+0x60>
d0055c52:	4620      	mov	r0, r4
d0055c54:	ecbd 8b04 	vpop	{d8-d9}
d0055c58:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0055c5c:	f7ff bc74 	b.w	d0055548 <normalizeEntity.part.0>
d0055c60:	ecbd 8b04 	vpop	{d8-d9}
d0055c64:	bd10      	pop	{r4, pc}
d0055c66:	4770      	bx	lr
d0055c68:	ed94 0a07 	vldr	s0, [r4, #28]
d0055c6c:	eeb0 3a48 	vmov.f32	s6, s16
d0055c70:	edd4 0a08 	vldr	s1, [r4, #32]
d0055c74:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055c78:	edd4 1a04 	vldr	s3, [r4, #16]
d0055c7c:	ed94 2a05 	vldr	s4, [r4, #20]
d0055c80:	edd4 2a06 	vldr	s5, [r4, #24]
d0055c84:	f7fe fcc6 	bl	d0054614 <rotateAroundAxis>
d0055c88:	eef0 6a40 	vmov.f32	s13, s0
d0055c8c:	eeb0 7a60 	vmov.f32	s14, s1
d0055c90:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055c94:	eef0 7a41 	vmov.f32	s15, s2
d0055c98:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055c9c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055ca0:	eeb0 3a48 	vmov.f32	s6, s16
d0055ca4:	edd4 1a04 	vldr	s3, [r4, #16]
d0055ca8:	ed94 2a05 	vldr	s4, [r4, #20]
d0055cac:	edd4 2a06 	vldr	s5, [r4, #24]
d0055cb0:	edc4 6a07 	vstr	s13, [r4, #28]
d0055cb4:	ed84 7a08 	vstr	s14, [r4, #32]
d0055cb8:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055cbc:	f7fe fcaa 	bl	d0054614 <rotateAroundAxis>
d0055cc0:	4620      	mov	r0, r4
d0055cc2:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055cc6:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055cca:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055cce:	ecbd 8b04 	vpop	{d8-d9}
d0055cd2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0055cd6:	f7ff bc37 	b.w	d0055548 <normalizeEntity.part.0>
d0055cda:	ed94 0a04 	vldr	s0, [r4, #16]
d0055cde:	eeb0 3a68 	vmov.f32	s6, s17
d0055ce2:	edd4 0a05 	vldr	s1, [r4, #20]
d0055ce6:	ed94 1a06 	vldr	s2, [r4, #24]
d0055cea:	edd4 1a07 	vldr	s3, [r4, #28]
d0055cee:	ed94 2a08 	vldr	s4, [r4, #32]
d0055cf2:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0055cf6:	f7fe fc8d 	bl	d0054614 <rotateAroundAxis>
d0055cfa:	eef0 6a40 	vmov.f32	s13, s0
d0055cfe:	eeb0 7a60 	vmov.f32	s14, s1
d0055d02:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055d06:	eef0 7a41 	vmov.f32	s15, s2
d0055d0a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055d0e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055d12:	eeb0 3a68 	vmov.f32	s6, s17
d0055d16:	edd4 1a07 	vldr	s3, [r4, #28]
d0055d1a:	ed94 2a08 	vldr	s4, [r4, #32]
d0055d1e:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0055d22:	edc4 6a04 	vstr	s13, [r4, #16]
d0055d26:	ed84 7a05 	vstr	s14, [r4, #20]
d0055d2a:	edc4 7a06 	vstr	s15, [r4, #24]
d0055d2e:	f7fe fc71 	bl	d0054614 <rotateAroundAxis>
d0055d32:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055d36:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055d3a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055d3e:	e783      	b.n	d0055c48 <entityTurnLocal+0x40>
d0055d40:	eeb0 3a40 	vmov.f32	s6, s0
d0055d44:	edd4 0a05 	vldr	s1, [r4, #20]
d0055d48:	ed94 0a04 	vldr	s0, [r4, #16]
d0055d4c:	ed94 1a06 	vldr	s2, [r4, #24]
d0055d50:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0055d54:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0055d58:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0055d5c:	f7fe fc5a 	bl	d0054614 <rotateAroundAxis>
d0055d60:	eef0 6a40 	vmov.f32	s13, s0
d0055d64:	eeb0 7a60 	vmov.f32	s14, s1
d0055d68:	ed94 0a07 	vldr	s0, [r4, #28]
d0055d6c:	eef0 7a41 	vmov.f32	s15, s2
d0055d70:	edd4 0a08 	vldr	s1, [r4, #32]
d0055d74:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055d78:	eeb0 3a49 	vmov.f32	s6, s18
d0055d7c:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0055d80:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0055d84:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0055d88:	edc4 6a04 	vstr	s13, [r4, #16]
d0055d8c:	ed84 7a05 	vstr	s14, [r4, #20]
d0055d90:	edc4 7a06 	vstr	s15, [r4, #24]
d0055d94:	f7fe fc3e 	bl	d0054614 <rotateAroundAxis>
d0055d98:	ed84 0a07 	vstr	s0, [r4, #28]
d0055d9c:	edc4 0a08 	vstr	s1, [r4, #32]
d0055da0:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0055da4:	e74b      	b.n	d0055c3e <entityTurnLocal+0x36>
d0055da6:	bf00      	nop
d0055da8:	d0140340 	.word	0xd0140340

d0055dac <entityRotation>:
d0055dac:	28ff      	cmp	r0, #255	; 0xff
d0055dae:	d80b      	bhi.n	d0055dc8 <entityRotation+0x1c>
d0055db0:	4a06      	ldr	r2, [pc, #24]	; (d0055dcc <entityRotation+0x20>)
d0055db2:	eb00 0340 	add.w	r3, r0, r0, lsl #1
d0055db6:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d0055dba:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0055dbe:	b11a      	cbz	r2, d0055dc8 <entityRotation+0x1c>
d0055dc0:	68db      	ldr	r3, [r3, #12]
d0055dc2:	b10b      	cbz	r3, d0055dc8 <entityRotation+0x1c>
d0055dc4:	f7ff bc16 	b.w	d00555f4 <entityRotation.part.0>
d0055dc8:	4770      	bx	lr
d0055dca:	bf00      	nop
d0055dcc:	d0140340 	.word	0xd0140340

d0055dd0 <copyMesh>:
d0055dd0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055dd4:	460f      	mov	r7, r1
d0055dd6:	b083      	sub	sp, #12
d0055dd8:	2240      	movs	r2, #64	; 0x40
d0055dda:	2100      	movs	r1, #0
d0055ddc:	4606      	mov	r6, r0
d0055dde:	f002 feeb 	bl	d0058bb8 <memset>
d0055de2:	2f00      	cmp	r7, #0
d0055de4:	d077      	beq.n	d0055ed6 <copyMesh+0x106>
d0055de6:	687b      	ldr	r3, [r7, #4]
d0055de8:	697a      	ldr	r2, [r7, #20]
d0055dea:	2b00      	cmp	r3, #0
d0055dec:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0055df0:	9301      	str	r3, [sp, #4]
d0055df2:	9200      	str	r2, [sp, #0]
d0055df4:	dc59      	bgt.n	d0055eaa <copyMesh+0xda>
d0055df6:	f1b8 0f00 	cmp.w	r8, #0
d0055dfa:	f04f 0900 	mov.w	r9, #0
d0055dfe:	dc5d      	bgt.n	d0055ebc <copyMesh+0xec>
d0055e00:	9b00      	ldr	r3, [sp, #0]
d0055e02:	f04f 0a00 	mov.w	sl, #0
d0055e06:	2b00      	cmp	r3, #0
d0055e08:	dc60      	bgt.n	d0055ecc <copyMesh+0xfc>
d0055e0a:	f04f 0c00 	mov.w	ip, #0
d0055e0e:	9b01      	ldr	r3, [sp, #4]
d0055e10:	2b00      	cmp	r3, #0
d0055e12:	dd0f      	ble.n	d0055e34 <copyMesh+0x64>
d0055e14:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0055e18:	f8d7 e000 	ldr.w	lr, [r7]
d0055e1c:	2300      	movs	r3, #0
d0055e1e:	00ad      	lsls	r5, r5, #2
d0055e20:	eb0e 0203 	add.w	r2, lr, r3
d0055e24:	eb09 0403 	add.w	r4, r9, r3
d0055e28:	330c      	adds	r3, #12
d0055e2a:	ca07      	ldmia	r2, {r0, r1, r2}
d0055e2c:	429d      	cmp	r5, r3
d0055e2e:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0055e32:	d1f5      	bne.n	d0055e20 <copyMesh+0x50>
d0055e34:	f1b8 0f00 	cmp.w	r8, #0
d0055e38:	dd0b      	ble.n	d0055e52 <copyMesh+0x82>
d0055e3a:	68bc      	ldr	r4, [r7, #8]
d0055e3c:	2300      	movs	r3, #0
d0055e3e:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0055e42:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0055e46:	3301      	adds	r3, #1
d0055e48:	c903      	ldmia	r1, {r0, r1}
d0055e4a:	4598      	cmp	r8, r3
d0055e4c:	e882 0003 	stmia.w	r2, {r0, r1}
d0055e50:	d1f5      	bne.n	d0055e3e <copyMesh+0x6e>
d0055e52:	9b00      	ldr	r3, [sp, #0]
d0055e54:	2b00      	cmp	r3, #0
d0055e56:	dd0e      	ble.n	d0055e76 <copyMesh+0xa6>
d0055e58:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0055e5c:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0055e60:	2400      	movs	r4, #0
d0055e62:	eb0b 0304 	add.w	r3, fp, r4
d0055e66:	eb0c 0504 	add.w	r5, ip, r4
d0055e6a:	3410      	adds	r4, #16
d0055e6c:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0055e6e:	4574      	cmp	r4, lr
d0055e70:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0055e74:	d1f5      	bne.n	d0055e62 <copyMesh+0x92>
d0055e76:	9a01      	ldr	r2, [sp, #4]
d0055e78:	f107 0520 	add.w	r5, r7, #32
d0055e7c:	69bb      	ldr	r3, [r7, #24]
d0055e7e:	f106 0420 	add.w	r4, r6, #32
d0055e82:	6072      	str	r2, [r6, #4]
d0055e84:	9a00      	ldr	r2, [sp, #0]
d0055e86:	61b3      	str	r3, [r6, #24]
d0055e88:	6172      	str	r2, [r6, #20]
d0055e8a:	f8c6 9000 	str.w	r9, [r6]
d0055e8e:	f8c6 c010 	str.w	ip, [r6, #16]
d0055e92:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0055e94:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0055e96:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055e9a:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0055e9e:	4630      	mov	r0, r6
d0055ea0:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0055ea4:	b003      	add	sp, #12
d0055ea6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055eaa:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0055eae:	0080      	lsls	r0, r0, #2
d0055eb0:	f002 fe56 	bl	d0058b60 <malloc>
d0055eb4:	f1b8 0f00 	cmp.w	r8, #0
d0055eb8:	4681      	mov	r9, r0
d0055eba:	dda1      	ble.n	d0055e00 <copyMesh+0x30>
d0055ebc:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0055ec0:	f002 fe4e 	bl	d0058b60 <malloc>
d0055ec4:	9b00      	ldr	r3, [sp, #0]
d0055ec6:	4682      	mov	sl, r0
d0055ec8:	2b00      	cmp	r3, #0
d0055eca:	dd9e      	ble.n	d0055e0a <copyMesh+0x3a>
d0055ecc:	0118      	lsls	r0, r3, #4
d0055ece:	f002 fe47 	bl	d0058b60 <malloc>
d0055ed2:	4684      	mov	ip, r0
d0055ed4:	e79b      	b.n	d0055e0e <copyMesh+0x3e>
d0055ed6:	2300      	movs	r3, #0
d0055ed8:	4630      	mov	r0, r6
d0055eda:	e9c6 7700 	strd	r7, r7, [r6]
d0055ede:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0055ee2:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0055ee6:	61b3      	str	r3, [r6, #24]
d0055ee8:	b003      	add	sp, #12
d0055eea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055eee:	bf00      	nop

d0055ef0 <buildLightingCLUT>:
d0055ef0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055ef4:	f1b2 0900 	subs.w	r9, r2, #0
d0055ef8:	b085      	sub	sp, #20
d0055efa:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0055efc:	f340 8212 	ble.w	d0056324 <buildLightingCLUT+0x434>
d0055f00:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0055f04:	4f24      	ldr	r7, [pc, #144]	; (d0055f98 <buildLightingCLUT+0xa8>)
d0055f06:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0055f0a:	edd4 4a00 	vldr	s9, [r4]
d0055f0e:	ed94 5a01 	vldr	s10, [r4, #4]
d0055f12:	eb09 0807 	add.w	r8, r9, r7
d0055f16:	edd4 5a02 	vldr	s11, [r4, #8]
d0055f1a:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d0055f1e:	ed94 6a03 	vldr	s12, [r4, #12]
d0055f22:	44bc      	add	ip, r7
d0055f24:	edd4 6a04 	vldr	s13, [r4, #16]
d0055f28:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0055f2c:	3904      	subs	r1, #4
d0055f2e:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0055f32:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0055f36:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0055f9c <buildLightingCLUT+0xac>
d0055f3a:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0055f3e:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0055f42:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0055f46:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0055f4a:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0055f4e:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0055f52:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0055f56:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0055f5a:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0055f5e:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0055f62:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0055f66:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0055f6a:	0e1c      	lsrs	r4, r3, #24
d0055f6c:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0055f70:	b2da      	uxtb	r2, r3
d0055f72:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0055f76:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0055f7a:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0055f7e:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0055f82:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0055f86:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0055f8a:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0055f8e:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0055f92:	9601      	str	r6, [sp, #4]
d0055f94:	e004      	b.n	d0055fa0 <buildLightingCLUT+0xb0>
d0055f96:	bf00      	nop
d0055f98:	4000001f 	.word	0x4000001f
d0055f9c:	00000000 	.word	0x00000000
d0055fa0:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0055fa4:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055fa8:	0e1e      	lsrs	r6, r3, #24
d0055faa:	fa5f fa83 	uxtb.w	sl, r3
d0055fae:	4549      	cmp	r1, r9
d0055fb0:	ee07 6a10 	vmov	s14, r6
d0055fb4:	eba5 060b 	sub.w	r6, r5, fp
d0055fb8:	ee04 ba10 	vmov	s8, fp
d0055fbc:	ee07 6a90 	vmov	s15, r6
d0055fc0:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055fc4:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055fc8:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055fcc:	ee02 6a10 	vmov	s4, r6
d0055fd0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055fd4:	eba2 060a 	sub.w	r6, r2, sl
d0055fd8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055fdc:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055fe0:	ee04 aa10 	vmov	s8, sl
d0055fe4:	ee02 6a90 	vmov	s5, r6
d0055fe8:	eba0 0603 	sub.w	r6, r0, r3
d0055fec:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0055ff0:	ee07 3a90 	vmov	s15, r3
d0055ff4:	eea4 7a82 	vfma.f32	s14, s9, s4
d0055ff8:	ee03 6a10 	vmov	s6, r6
d0055ffc:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0056000:	9e01      	ldr	r6, [sp, #4]
d0056002:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0056006:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005600a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005600e:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0056012:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0056016:	eee4 7a83 	vfma.f32	s15, s9, s6
d005601a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005601e:	edcd 3a02 	vstr	s7, [sp, #8]
d0056022:	f89d a008 	ldrb.w	sl, [sp, #8]
d0056026:	ee17 3a10 	vmov	r3, s14
d005602a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d005602e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0056032:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0056036:	ed8d 7a02 	vstr	s14, [sp, #8]
d005603a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d005603e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0056042:	edcd 7a03 	vstr	s15, [sp, #12]
d0056046:	ea43 030b 	orr.w	r3, r3, fp
d005604a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d005604e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0056052:	f846 3f04 	str.w	r3, [r6, #4]!
d0056056:	680b      	ldr	r3, [r1, #0]
d0056058:	9601      	str	r6, [sp, #4]
d005605a:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d005605e:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0056062:	fa5f fa83 	uxtb.w	sl, r3
d0056066:	ee07 6a10 	vmov	s14, r6
d005606a:	eba5 060b 	sub.w	r6, r5, fp
d005606e:	ee04 ba10 	vmov	s8, fp
d0056072:	ee07 6a90 	vmov	s15, r6
d0056076:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005607a:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005607e:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0056082:	ee02 6a10 	vmov	s4, r6
d0056086:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005608a:	eba2 060a 	sub.w	r6, r2, sl
d005608e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0056092:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0056096:	ee04 aa10 	vmov	s8, sl
d005609a:	ee02 6a90 	vmov	s5, r6
d005609e:	eba0 0603 	sub.w	r6, r0, r3
d00560a2:	eee5 3a27 	vfma.f32	s7, s10, s15
d00560a6:	ee07 3a90 	vmov	s15, r3
d00560aa:	eea5 7a02 	vfma.f32	s14, s10, s4
d00560ae:	ee03 6a10 	vmov	s6, r6
d00560b2:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00560b6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00560ba:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00560be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00560c2:	eea5 4a22 	vfma.f32	s8, s10, s5
d00560c6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00560ca:	eee5 7a03 	vfma.f32	s15, s10, s6
d00560ce:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00560d2:	edcd 3a02 	vstr	s7, [sp, #8]
d00560d6:	f89d a008 	ldrb.w	sl, [sp, #8]
d00560da:	ee17 3a10 	vmov	r3, s14
d00560de:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00560e2:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00560e6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00560ea:	ed8d 7a02 	vstr	s14, [sp, #8]
d00560ee:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00560f2:	f89d b008 	ldrb.w	fp, [sp, #8]
d00560f6:	edcd 7a03 	vstr	s15, [sp, #12]
d00560fa:	ea43 030b 	orr.w	r3, r3, fp
d00560fe:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0056102:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0056106:	f848 3f04 	str.w	r3, [r8, #4]!
d005610a:	680b      	ldr	r3, [r1, #0]
d005610c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0056110:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0056114:	fa5f fa83 	uxtb.w	sl, r3
d0056118:	ee07 6a10 	vmov	s14, r6
d005611c:	eba5 060b 	sub.w	r6, r5, fp
d0056120:	ee04 ba10 	vmov	s8, fp
d0056124:	ee07 6a90 	vmov	s15, r6
d0056128:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005612c:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0056130:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0056134:	ee02 6a10 	vmov	s4, r6
d0056138:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005613c:	eba2 060a 	sub.w	r6, r2, sl
d0056140:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0056144:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0056148:	ee04 aa10 	vmov	s8, sl
d005614c:	ee02 6a90 	vmov	s5, r6
d0056150:	eba0 0603 	sub.w	r6, r0, r3
d0056154:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0056158:	ee07 3a90 	vmov	s15, r3
d005615c:	eea5 7a82 	vfma.f32	s14, s11, s4
d0056160:	ee03 6a10 	vmov	s6, r6
d0056164:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0056168:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005616c:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0056170:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056174:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0056178:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005617c:	eee5 7a83 	vfma.f32	s15, s11, s6
d0056180:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056184:	edcd 3a02 	vstr	s7, [sp, #8]
d0056188:	f89d a008 	ldrb.w	sl, [sp, #8]
d005618c:	ee17 3a10 	vmov	r3, s14
d0056190:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0056194:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0056198:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005619c:	ed8d 7a02 	vstr	s14, [sp, #8]
d00561a0:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00561a4:	f89d b008 	ldrb.w	fp, [sp, #8]
d00561a8:	edcd 7a03 	vstr	s15, [sp, #12]
d00561ac:	ea43 030b 	orr.w	r3, r3, fp
d00561b0:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00561b4:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00561b8:	f84e 3f04 	str.w	r3, [lr, #4]!
d00561bc:	680b      	ldr	r3, [r1, #0]
d00561be:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00561c2:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00561c6:	fa5f fa83 	uxtb.w	sl, r3
d00561ca:	ee07 6a10 	vmov	s14, r6
d00561ce:	eba5 060b 	sub.w	r6, r5, fp
d00561d2:	ee04 ba10 	vmov	s8, fp
d00561d6:	ee07 6a90 	vmov	s15, r6
d00561da:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00561de:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00561e2:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00561e6:	ee02 6a10 	vmov	s4, r6
d00561ea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00561ee:	eba2 060a 	sub.w	r6, r2, sl
d00561f2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00561f6:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00561fa:	ee04 aa10 	vmov	s8, sl
d00561fe:	ee02 6a90 	vmov	s5, r6
d0056202:	eba0 0603 	sub.w	r6, r0, r3
d0056206:	eee6 3a27 	vfma.f32	s7, s12, s15
d005620a:	ee07 3a90 	vmov	s15, r3
d005620e:	eea6 7a02 	vfma.f32	s14, s12, s4
d0056212:	ee03 6a10 	vmov	s6, r6
d0056216:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005621a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005621e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0056222:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056226:	eea6 4a22 	vfma.f32	s8, s12, s5
d005622a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005622e:	eee6 7a03 	vfma.f32	s15, s12, s6
d0056232:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056236:	edcd 3a02 	vstr	s7, [sp, #8]
d005623a:	f89d a008 	ldrb.w	sl, [sp, #8]
d005623e:	ee17 3a10 	vmov	r3, s14
d0056242:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0056246:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005624a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005624e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0056252:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0056256:	f89d b008 	ldrb.w	fp, [sp, #8]
d005625a:	edcd 7a03 	vstr	s15, [sp, #12]
d005625e:	ea43 030b 	orr.w	r3, r3, fp
d0056262:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0056266:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005626a:	f84c 3f04 	str.w	r3, [ip, #4]!
d005626e:	680b      	ldr	r3, [r1, #0]
d0056270:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0056274:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0056278:	fa5f fa83 	uxtb.w	sl, r3
d005627c:	ee07 6a10 	vmov	s14, r6
d0056280:	eba5 060b 	sub.w	r6, r5, fp
d0056284:	ee04 ba10 	vmov	s8, fp
d0056288:	ee07 6a90 	vmov	s15, r6
d005628c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0056290:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0056294:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0056298:	ee02 6a10 	vmov	s4, r6
d005629c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00562a0:	eba2 060a 	sub.w	r6, r2, sl
d00562a4:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00562a8:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00562ac:	ee04 aa10 	vmov	s8, sl
d00562b0:	ee02 6a90 	vmov	s5, r6
d00562b4:	eba0 0603 	sub.w	r6, r0, r3
d00562b8:	eee6 3aa7 	vfma.f32	s7, s13, s15
d00562bc:	ee07 3a90 	vmov	s15, r3
d00562c0:	eea6 7a82 	vfma.f32	s14, s13, s4
d00562c4:	ee03 6a10 	vmov	s6, r6
d00562c8:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00562cc:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00562d0:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00562d4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00562d8:	eea6 4aa2 	vfma.f32	s8, s13, s5
d00562dc:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00562e0:	eee6 7a83 	vfma.f32	s15, s13, s6
d00562e4:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00562e8:	edcd 3a02 	vstr	s7, [sp, #8]
d00562ec:	f89d a008 	ldrb.w	sl, [sp, #8]
d00562f0:	ee17 3a10 	vmov	r3, s14
d00562f4:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00562f8:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00562fc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0056300:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0056304:	ed8d 7a02 	vstr	s14, [sp, #8]
d0056308:	f89d b008 	ldrb.w	fp, [sp, #8]
d005630c:	edcd 7a03 	vstr	s15, [sp, #12]
d0056310:	ea43 030b 	orr.w	r3, r3, fp
d0056314:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0056318:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005631c:	f847 3f04 	str.w	r3, [r7, #4]!
d0056320:	f47f ae3e 	bne.w	d0055fa0 <buildLightingCLUT+0xb0>
d0056324:	b005      	add	sp, #20
d0056326:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005632a:	bf00      	nop

d005632c <brightnessToShadeF>:
d005632c:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0056330:	eddf 7a09 	vldr	s15, [pc, #36]	; d0056358 <brightnessToShadeF+0x2c>
d0056334:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0056338:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d005633c:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0056340:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0056344:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0056348:	eee7 6ac6 	vfms.f32	s13, s15, s12
d005634c:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0056350:	ee27 0a00 	vmul.f32	s0, s14, s0
d0056354:	4770      	bx	lr
d0056356:	bf00      	nop
d0056358:	00000000 	.word	0x00000000

d005635c <lightSetRanges>:
d005635c:	2800      	cmp	r0, #0
d005635e:	db0c      	blt.n	d005637a <lightSetRanges+0x1e>
d0056360:	4b06      	ldr	r3, [pc, #24]	; (d005637c <lightSetRanges+0x20>)
d0056362:	681b      	ldr	r3, [r3, #0]
d0056364:	4283      	cmp	r3, r0
d0056366:	dd08      	ble.n	d005637a <lightSetRanges+0x1e>
d0056368:	4b05      	ldr	r3, [pc, #20]	; (d0056380 <lightSetRanges+0x24>)
d005636a:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005636e:	ed80 0a08 	vstr	s0, [r0, #32]
d0056372:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0056376:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d005637a:	4770      	bx	lr
d005637c:	d00a8020 	.word	0xd00a8020
d0056380:	d00a8040 	.word	0xd00a8040

d0056384 <lightsGet>:
d0056384:	4800      	ldr	r0, [pc, #0]	; (d0056388 <lightsGet+0x4>)
d0056386:	4770      	bx	lr
d0056388:	d00a8040 	.word	0xd00a8040

d005638c <lightsGetCount>:
d005638c:	4b01      	ldr	r3, [pc, #4]	; (d0056394 <lightsGetCount+0x8>)
d005638e:	6818      	ldr	r0, [r3, #0]
d0056390:	4770      	bx	lr
d0056392:	bf00      	nop
d0056394:	d00a8020 	.word	0xd00a8020

d0056398 <lightsClear>:
d0056398:	4b01      	ldr	r3, [pc, #4]	; (d00563a0 <lightsClear+0x8>)
d005639a:	2200      	movs	r2, #0
d005639c:	601a      	str	r2, [r3, #0]
d005639e:	4770      	bx	lr
d00563a0:	d00a8020 	.word	0xd00a8020

d00563a4 <lightEnable>:
d00563a4:	4b04      	ldr	r3, [pc, #16]	; (d00563b8 <lightEnable+0x14>)
d00563a6:	681b      	ldr	r3, [r3, #0]
d00563a8:	4298      	cmp	r0, r3
d00563aa:	da03      	bge.n	d00563b4 <lightEnable+0x10>
d00563ac:	4b03      	ldr	r3, [pc, #12]	; (d00563bc <lightEnable+0x18>)
d00563ae:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00563b2:	62c1      	str	r1, [r0, #44]	; 0x2c
d00563b4:	4770      	bx	lr
d00563b6:	bf00      	nop
d00563b8:	d00a8020 	.word	0xd00a8020
d00563bc:	d00a8040 	.word	0xd00a8040

d00563c0 <addPointLight>:
d00563c0:	4918      	ldr	r1, [pc, #96]	; (d0056424 <addPointLight+0x64>)
d00563c2:	b5f0      	push	{r4, r5, r6, r7, lr}
d00563c4:	680c      	ldr	r4, [r1, #0]
d00563c6:	b085      	sub	sp, #20
d00563c8:	2c07      	cmp	r4, #7
d00563ca:	ed8d 0a01 	vstr	s0, [sp, #4]
d00563ce:	edcd 0a02 	vstr	s1, [sp, #8]
d00563d2:	ed8d 1a03 	vstr	s2, [sp, #12]
d00563d6:	dc21      	bgt.n	d005641c <addPointLight+0x5c>
d00563d8:	4d13      	ldr	r5, [pc, #76]	; (d0056428 <addPointLight+0x68>)
d00563da:	01a2      	lsls	r2, r4, #6
d00563dc:	2600      	movs	r6, #0
d00563de:	f8df e050 	ldr.w	lr, [pc, #80]	; d0056430 <addPointLight+0x70>
d00563e2:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d00563e6:	f8df c04c 	ldr.w	ip, [pc, #76]	; d0056434 <addPointLight+0x74>
d00563ea:	54ae      	strb	r6, [r5, r2]
d00563ec:	2200      	movs	r2, #0
d00563ee:	4f0f      	ldr	r7, [pc, #60]	; (d005642c <addPointLight+0x6c>)
d00563f0:	1d1d      	adds	r5, r3, #4
d00563f2:	62d8      	str	r0, [r3, #44]	; 0x2c
d00563f4:	1c66      	adds	r6, r4, #1
d00563f6:	611a      	str	r2, [r3, #16]
d00563f8:	615a      	str	r2, [r3, #20]
d00563fa:	619a      	str	r2, [r3, #24]
d00563fc:	edc3 1a07 	vstr	s3, [r3, #28]
d0056400:	f8c3 e020 	str.w	lr, [r3, #32]
d0056404:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d0056408:	629f      	str	r7, [r3, #40]	; 0x28
d005640a:	ab04      	add	r3, sp, #16
d005640c:	600e      	str	r6, [r1, #0]
d005640e:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d0056412:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0056416:	4620      	mov	r0, r4
d0056418:	b005      	add	sp, #20
d005641a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005641c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0056420:	e7f9      	b.n	d0056416 <addPointLight+0x56>
d0056422:	bf00      	nop
d0056424:	d00a8020 	.word	0xd00a8020
d0056428:	d00a8040 	.word	0xd00a8040
d005642c:	44020000 	.word	0x44020000
d0056430:	42c80000 	.word	0x42c80000
d0056434:	43660000 	.word	0x43660000

d0056438 <addDirectionalLight>:
d0056438:	b5f0      	push	{r4, r5, r6, r7, lr}
d005643a:	4f15      	ldr	r7, [pc, #84]	; (d0056490 <addDirectionalLight+0x58>)
d005643c:	683d      	ldr	r5, [r7, #0]
d005643e:	2d07      	cmp	r5, #7
d0056440:	ed2d 8b02 	vpush	{d8}
d0056444:	b085      	sub	sp, #20
d0056446:	dc1f      	bgt.n	d0056488 <addDirectionalLight+0x50>
d0056448:	4912      	ldr	r1, [pc, #72]	; (d0056494 <addDirectionalLight+0x5c>)
d005644a:	2300      	movs	r3, #0
d005644c:	4606      	mov	r6, r0
d005644e:	01aa      	lsls	r2, r5, #6
d0056450:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0056454:	2001      	movs	r0, #1
d0056456:	eeb0 8a61 	vmov.f32	s16, s3
d005645a:	6063      	str	r3, [r4, #4]
d005645c:	60a3      	str	r3, [r4, #8]
d005645e:	60e3      	str	r3, [r4, #12]
d0056460:	5488      	strb	r0, [r1, r2]
d0056462:	f7fe f887 	bl	d0054574 <vec3Normalize>
d0056466:	683b      	ldr	r3, [r7, #0]
d0056468:	ed84 8a07 	vstr	s16, [r4, #28]
d005646c:	3301      	adds	r3, #1
d005646e:	62e6      	str	r6, [r4, #44]	; 0x2c
d0056470:	ed84 0a04 	vstr	s0, [r4, #16]
d0056474:	edc4 0a05 	vstr	s1, [r4, #20]
d0056478:	ed84 1a06 	vstr	s2, [r4, #24]
d005647c:	603b      	str	r3, [r7, #0]
d005647e:	4628      	mov	r0, r5
d0056480:	b005      	add	sp, #20
d0056482:	ecbd 8b02 	vpop	{d8}
d0056486:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056488:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d005648c:	e7f7      	b.n	d005647e <addDirectionalLight+0x46>
d005648e:	bf00      	nop
d0056490:	d00a8020 	.word	0xd00a8020
d0056494:	d00a8040 	.word	0xd00a8040

d0056498 <lightSetPosition>:
d0056498:	b084      	sub	sp, #16
d005649a:	2800      	cmp	r0, #0
d005649c:	ed8d 0a01 	vstr	s0, [sp, #4]
d00564a0:	edcd 0a02 	vstr	s1, [sp, #8]
d00564a4:	ed8d 1a03 	vstr	s2, [sp, #12]
d00564a8:	db0c      	blt.n	d00564c4 <lightSetPosition+0x2c>
d00564aa:	4b07      	ldr	r3, [pc, #28]	; (d00564c8 <lightSetPosition+0x30>)
d00564ac:	681b      	ldr	r3, [r3, #0]
d00564ae:	4283      	cmp	r3, r0
d00564b0:	dd08      	ble.n	d00564c4 <lightSetPosition+0x2c>
d00564b2:	4b06      	ldr	r3, [pc, #24]	; (d00564cc <lightSetPosition+0x34>)
d00564b4:	aa04      	add	r2, sp, #16
d00564b6:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d00564ba:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00564be:	3304      	adds	r3, #4
d00564c0:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00564c4:	b004      	add	sp, #16
d00564c6:	4770      	bx	lr
d00564c8:	d00a8020 	.word	0xd00a8020
d00564cc:	d00a8040 	.word	0xd00a8040

d00564d0 <lightSetIntensity>:
d00564d0:	2800      	cmp	r0, #0
d00564d2:	db08      	blt.n	d00564e6 <lightSetIntensity+0x16>
d00564d4:	4b04      	ldr	r3, [pc, #16]	; (d00564e8 <lightSetIntensity+0x18>)
d00564d6:	681b      	ldr	r3, [r3, #0]
d00564d8:	4283      	cmp	r3, r0
d00564da:	dd04      	ble.n	d00564e6 <lightSetIntensity+0x16>
d00564dc:	4b03      	ldr	r3, [pc, #12]	; (d00564ec <lightSetIntensity+0x1c>)
d00564de:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00564e2:	ed80 0a07 	vstr	s0, [r0, #28]
d00564e6:	4770      	bx	lr
d00564e8:	d00a8020 	.word	0xd00a8020
d00564ec:	d00a8040 	.word	0xd00a8040

d00564f0 <setDefaultRenderMode>:
d00564f0:	2300      	movs	r3, #0
d00564f2:	4803      	ldr	r0, [pc, #12]	; (d0056500 <setDefaultRenderMode+0x10>)
d00564f4:	4903      	ldr	r1, [pc, #12]	; (d0056504 <setDefaultRenderMode+0x14>)
d00564f6:	4a04      	ldr	r2, [pc, #16]	; (d0056508 <setDefaultRenderMode+0x18>)
d00564f8:	6003      	str	r3, [r0, #0]
d00564fa:	600b      	str	r3, [r1, #0]
d00564fc:	6013      	str	r3, [r2, #0]
d00564fe:	4770      	bx	lr
d0056500:	d00b4240 	.word	0xd00b4240
d0056504:	d0134260 	.word	0xd0134260
d0056508:	d0134264 	.word	0xd0134264

d005650c <enableFlatMode>:
d005650c:	4b01      	ldr	r3, [pc, #4]	; (d0056514 <enableFlatMode+0x8>)
d005650e:	6018      	str	r0, [r3, #0]
d0056510:	4770      	bx	lr
d0056512:	bf00      	nop
d0056514:	d00b4240 	.word	0xd00b4240

d0056518 <clipTriangleToFrustum>:
d0056518:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005651c:	ed2d 8b04 	vpush	{d8-d9}
d0056520:	b0ba      	sub	sp, #232	; 0xe8
d0056522:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d0056526:	4605      	mov	r5, r0
d0056528:	aa07      	add	r2, sp, #28
d005652a:	edcd 2a06 	vstr	s5, [sp, #24]
d005652e:	ab04      	add	r3, sp, #16
d0056530:	edd1 2a15 	vldr	s5, [r1, #84]	; 0x54
d0056534:	ed8d 0a07 	vstr	s0, [sp, #28]
d0056538:	ac0a      	add	r4, sp, #40	; 0x28
d005653a:	edcd 0a08 	vstr	s1, [sp, #32]
d005653e:	af0d      	add	r7, sp, #52	; 0x34
d0056540:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0056544:	ae01      	add	r6, sp, #4
d0056546:	edcd 1a04 	vstr	s3, [sp, #16]
d005654a:	ed8d 2a05 	vstr	s4, [sp, #20]
d005654e:	ed8d 3a01 	vstr	s6, [sp, #4]
d0056552:	edcd 3a02 	vstr	s7, [sp, #8]
d0056556:	ed8d 4a03 	vstr	s8, [sp, #12]
d005655a:	ca07      	ldmia	r2, {r0, r1, r2}
d005655c:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0056560:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0056564:	ab10      	add	r3, sp, #64	; 0x40
d0056566:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d005656a:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d005656e:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0056572:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0056576:	ed9d 2a10 	vldr	s4, [sp, #64]	; 0x40
d005657a:	ee31 4ac7 	vsub.f32	s8, s3, s14
d005657e:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0056582:	ed9d 3a11 	vldr	s6, [sp, #68]	; 0x44
d0056586:	ee77 3ac7 	vsub.f32	s7, s15, s14
d005658a:	eddd 4a0a 	vldr	s9, [sp, #40]	; 0x28
d005658e:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d0056592:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d0056596:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005659a:	eef5 3ac0 	vcmpe.f32	s7, #0.0
d005659e:	bfac      	ite	ge
d00565a0:	2101      	movge	r1, #1
d00565a2:	2100      	movlt	r1, #0
d00565a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00565a8:	bfac      	ite	ge
d00565aa:	2001      	movge	r0, #1
d00565ac:	2000      	movlt	r0, #0
d00565ae:	2900      	cmp	r1, #0
d00565b0:	f000 8251 	beq.w	d0056a56 <clipTriangleToFrustum+0x53e>
d00565b4:	2800      	cmp	r0, #0
d00565b6:	f000 824e 	beq.w	d0056a56 <clipTriangleToFrustum+0x53e>
d00565ba:	2301      	movs	r3, #1
d00565bc:	edcd 4a22 	vstr	s9, [sp, #136]	; 0x88
d00565c0:	ed8d 5a23 	vstr	s10, [sp, #140]	; 0x8c
d00565c4:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d00565c8:	ed9d 1a0f 	vldr	s2, [sp, #60]	; 0x3c
d00565cc:	f000 0201 	and.w	r2, r0, #1
d00565d0:	eddd 5a0d 	vldr	s11, [sp, #52]	; 0x34
d00565d4:	ee71 6a47 	vsub.f32	s13, s2, s14
d00565d8:	ed9d 6a0e 	vldr	s12, [sp, #56]	; 0x38
d00565dc:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00565e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00565e4:	bfb6      	itet	lt
d00565e6:	2200      	movlt	r2, #0
d00565e8:	2601      	movge	r6, #1
d00565ea:	2600      	movlt	r6, #0
d00565ec:	2a00      	cmp	r2, #0
d00565ee:	f000 826b 	beq.w	d0056ac8 <clipTriangleToFrustum+0x5b0>
d00565f2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00565f6:	ae22      	add	r6, sp, #136	; 0x88
d00565f8:	3301      	adds	r3, #1
d00565fa:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d00565fe:	edc0 5a00 	vstr	s11, [r0]
d0056602:	ed80 6a01 	vstr	s12, [r0, #4]
d0056606:	ed80 1a02 	vstr	s2, [r0, #8]
d005660a:	2a00      	cmp	r2, #0
d005660c:	f000 8282 	beq.w	d0056b14 <clipTriangleToFrustum+0x5fc>
d0056610:	2900      	cmp	r1, #0
d0056612:	f000 827f 	beq.w	d0056b14 <clipTriangleToFrustum+0x5fc>
d0056616:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d005661a:	a922      	add	r1, sp, #136	; 0x88
d005661c:	3301      	adds	r3, #1
d005661e:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0056622:	ed82 2a00 	vstr	s4, [r2]
d0056626:	ed82 3a01 	vstr	s6, [r2, #4]
d005662a:	edc2 1a02 	vstr	s3, [r2, #8]
d005662e:	2b02      	cmp	r3, #2
d0056630:	f340 820a 	ble.w	d0056a48 <clipTriangleToFrustum+0x530>
d0056634:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0056638:	a822      	add	r0, sp, #136	; 0x88
d005663a:	2300      	movs	r3, #0
d005663c:	00b6      	lsls	r6, r6, #2
d005663e:	4601      	mov	r1, r0
d0056640:	4607      	mov	r7, r0
d0056642:	f1a6 020c 	sub.w	r2, r6, #12
d0056646:	4406      	add	r6, r0
d0056648:	4402      	add	r2, r0
d005664a:	ed92 7a00 	vldr	s14, [r2]
d005664e:	edd2 7a02 	vldr	s15, [r2, #8]
d0056652:	ed92 6a01 	vldr	s12, [r2, #4]
d0056656:	ee77 6a27 	vadd.f32	s13, s14, s15
d005665a:	e009      	b.n	d0056670 <clipTriangleToFrustum+0x158>
d005665c:	3301      	adds	r3, #1
d005665e:	ed82 7a00 	vstr	s14, [r2]
d0056662:	ed82 6a01 	vstr	s12, [r2, #4]
d0056666:	edc2 7a02 	vstr	s15, [r2, #8]
d005666a:	310c      	adds	r1, #12
d005666c:	428e      	cmp	r6, r1
d005666e:	d04e      	beq.n	d005670e <clipTriangleToFrustum+0x1f6>
d0056670:	eeb0 4a47 	vmov.f32	s8, s14
d0056674:	ed91 7a00 	vldr	s14, [r1]
d0056678:	eeb0 5a67 	vmov.f32	s10, s15
d005667c:	edd1 7a02 	vldr	s15, [r1, #8]
d0056680:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056684:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0056688:	eef0 5a66 	vmov.f32	s11, s13
d005668c:	ee77 6a27 	vadd.f32	s13, s14, s15
d0056690:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0056694:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056698:	eef0 4a46 	vmov.f32	s9, s12
d005669c:	ed91 6a01 	vldr	s12, [r1, #4]
d00566a0:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00566a4:	bfac      	ite	ge
d00566a6:	2701      	movge	r7, #1
d00566a8:	2700      	movlt	r7, #0
d00566aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00566ae:	bfac      	ite	ge
d00566b0:	f04f 0c01 	movge.w	ip, #1
d00566b4:	f04f 0c00 	movlt.w	ip, #0
d00566b8:	b117      	cbz	r7, d00566c0 <clipTriangleToFrustum+0x1a8>
d00566ba:	f1bc 0f00 	cmp.w	ip, #0
d00566be:	d1cd      	bne.n	d005665c <clipTriangleToFrustum+0x144>
d00566c0:	eef5 6a40 	vcmp.f32	s13, #0.0
d00566c4:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00566c8:	ee35 1ae6 	vsub.f32	s2, s11, s13
d00566cc:	ee77 1a44 	vsub.f32	s3, s14, s8
d00566d0:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d00566d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00566d8:	ee36 2a64 	vsub.f32	s4, s12, s9
d00566dc:	ee37 3ac5 	vsub.f32	s6, s15, s10
d00566e0:	f140 8183 	bpl.w	d00569ea <clipTriangleToFrustum+0x4d2>
d00566e4:	2f00      	cmp	r7, #0
d00566e6:	f000 8180 	beq.w	d00569ea <clipTriangleToFrustum+0x4d2>
d00566ea:	eec5 3a81 	vdiv.f32	s7, s11, s2
d00566ee:	310c      	adds	r1, #12
d00566f0:	3301      	adds	r3, #1
d00566f2:	428e      	cmp	r6, r1
d00566f4:	eea1 4aa3 	vfma.f32	s8, s3, s7
d00566f8:	eee2 4a23 	vfma.f32	s9, s4, s7
d00566fc:	eea3 5a23 	vfma.f32	s10, s6, s7
d0056700:	ed82 4a00 	vstr	s8, [r2]
d0056704:	edc2 4a01 	vstr	s9, [r2, #4]
d0056708:	ed82 5a02 	vstr	s10, [r2, #8]
d005670c:	d1b0      	bne.n	d0056670 <clipTriangleToFrustum+0x158>
d005670e:	2b02      	cmp	r3, #2
d0056710:	f340 819a 	ble.w	d0056a48 <clipTriangleToFrustum+0x530>
d0056714:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0056718:	4626      	mov	r6, r4
d005671a:	4627      	mov	r7, r4
d005671c:	2200      	movs	r2, #0
d005671e:	009b      	lsls	r3, r3, #2
d0056720:	f1a3 010c 	sub.w	r1, r3, #12
d0056724:	4423      	add	r3, r4
d0056726:	4421      	add	r1, r4
d0056728:	edd1 7a00 	vldr	s15, [r1]
d005672c:	ed91 7a02 	vldr	s14, [r1, #8]
d0056730:	ed91 6a01 	vldr	s12, [r1, #4]
d0056734:	ee77 6a67 	vsub.f32	s13, s14, s15
d0056738:	e009      	b.n	d005674e <clipTriangleToFrustum+0x236>
d005673a:	3201      	adds	r2, #1
d005673c:	edc1 7a00 	vstr	s15, [r1]
d0056740:	ed81 6a01 	vstr	s12, [r1, #4]
d0056744:	ed81 7a02 	vstr	s14, [r1, #8]
d0056748:	370c      	adds	r7, #12
d005674a:	42bb      	cmp	r3, r7
d005674c:	d059      	beq.n	d0056802 <clipTriangleToFrustum+0x2ea>
d005674e:	eeb0 4a67 	vmov.f32	s8, s15
d0056752:	edd7 7a00 	vldr	s15, [r7]
d0056756:	eeb0 5a47 	vmov.f32	s10, s14
d005675a:	ed97 7a02 	vldr	s14, [r7, #8]
d005675e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056762:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0056766:	eef0 5a66 	vmov.f32	s11, s13
d005676a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d005676e:	ee77 6a67 	vsub.f32	s13, s14, s15
d0056772:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056776:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d005677a:	eef0 4a46 	vmov.f32	s9, s12
d005677e:	ed97 6a01 	vldr	s12, [r7, #4]
d0056782:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056786:	bfac      	ite	ge
d0056788:	f04f 0c01 	movge.w	ip, #1
d005678c:	f04f 0c00 	movlt.w	ip, #0
d0056790:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056794:	bfac      	ite	ge
d0056796:	f04f 0e01 	movge.w	lr, #1
d005679a:	f04f 0e00 	movlt.w	lr, #0
d005679e:	f1bc 0f00 	cmp.w	ip, #0
d00567a2:	d002      	beq.n	d00567aa <clipTriangleToFrustum+0x292>
d00567a4:	f1be 0f00 	cmp.w	lr, #0
d00567a8:	d1c7      	bne.n	d005673a <clipTriangleToFrustum+0x222>
d00567aa:	eef5 6a40 	vcmp.f32	s13, #0.0
d00567ae:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00567b2:	ee77 3aa5 	vadd.f32	s7, s15, s11
d00567b6:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d00567ba:	ee37 1ac4 	vsub.f32	s2, s15, s8
d00567be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00567c2:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d00567c6:	ee76 1a64 	vsub.f32	s3, s12, s9
d00567ca:	ee73 3ac7 	vsub.f32	s7, s7, s14
d00567ce:	ee37 2a45 	vsub.f32	s4, s14, s10
d00567d2:	f140 8255 	bpl.w	d0056c80 <clipTriangleToFrustum+0x768>
d00567d6:	f1bc 0f00 	cmp.w	ip, #0
d00567da:	f000 8251 	beq.w	d0056c80 <clipTriangleToFrustum+0x768>
d00567de:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d00567e2:	370c      	adds	r7, #12
d00567e4:	3201      	adds	r2, #1
d00567e6:	42bb      	cmp	r3, r7
d00567e8:	eea1 4a03 	vfma.f32	s8, s2, s6
d00567ec:	eee1 4a83 	vfma.f32	s9, s3, s6
d00567f0:	eea2 5a03 	vfma.f32	s10, s4, s6
d00567f4:	ed81 4a00 	vstr	s8, [r1]
d00567f8:	edc1 4a01 	vstr	s9, [r1, #4]
d00567fc:	ed81 5a02 	vstr	s10, [r1, #8]
d0056800:	d1a5      	bne.n	d005674e <clipTriangleToFrustum+0x236>
d0056802:	2a02      	cmp	r2, #2
d0056804:	f340 8120 	ble.w	d0056a48 <clipTriangleToFrustum+0x530>
d0056808:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d005680c:	af22      	add	r7, sp, #136	; 0x88
d005680e:	2200      	movs	r2, #0
d0056810:	009b      	lsls	r3, r3, #2
d0056812:	f1a3 010c 	sub.w	r1, r3, #12
d0056816:	443b      	add	r3, r7
d0056818:	4439      	add	r1, r7
d005681a:	edd1 7a01 	vldr	s15, [r1, #4]
d005681e:	ed91 7a02 	vldr	s14, [r1, #8]
d0056822:	eef0 6a67 	vmov.f32	s13, s15
d0056826:	ed91 6a00 	vldr	s12, [r1]
d005682a:	eed2 6a87 	vfnms.f32	s13, s5, s14
d005682e:	e00c      	b.n	d005684a <clipTriangleToFrustum+0x332>
d0056830:	f1bc 0f00 	cmp.w	ip, #0
d0056834:	d031      	beq.n	d005689a <clipTriangleToFrustum+0x382>
d0056836:	3201      	adds	r2, #1
d0056838:	ed81 6a00 	vstr	s12, [r1]
d005683c:	edc1 7a01 	vstr	s15, [r1, #4]
d0056840:	ed81 7a02 	vstr	s14, [r1, #8]
d0056844:	300c      	adds	r0, #12
d0056846:	4298      	cmp	r0, r3
d0056848:	d050      	beq.n	d00568ec <clipTriangleToFrustum+0x3d4>
d005684a:	eeb0 5a47 	vmov.f32	s10, s14
d005684e:	ed90 7a02 	vldr	s14, [r0, #8]
d0056852:	eef0 4a67 	vmov.f32	s9, s15
d0056856:	edd0 7a01 	vldr	s15, [r0, #4]
d005685a:	ee62 3a87 	vmul.f32	s7, s5, s14
d005685e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056862:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056866:	eef0 5a66 	vmov.f32	s11, s13
d005686a:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d005686e:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0056872:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056876:	eeb0 4a46 	vmov.f32	s8, s12
d005687a:	ed90 6a00 	vldr	s12, [r0]
d005687e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056882:	bfac      	ite	ge
d0056884:	2701      	movge	r7, #1
d0056886:	2700      	movlt	r7, #0
d0056888:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005688c:	bfac      	ite	ge
d005688e:	f04f 0c01 	movge.w	ip, #1
d0056892:	f04f 0c00 	movlt.w	ip, #0
d0056896:	2f00      	cmp	r7, #0
d0056898:	d1ca      	bne.n	d0056830 <clipTriangleToFrustum+0x318>
d005689a:	eef5 6a40 	vcmp.f32	s13, #0.0
d005689e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00568a2:	ee37 3aa5 	vadd.f32	s6, s15, s11
d00568a6:	ee36 1a44 	vsub.f32	s2, s12, s8
d00568aa:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d00568ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00568b2:	ee77 1ae4 	vsub.f32	s3, s15, s9
d00568b6:	ee33 3a63 	vsub.f32	s6, s6, s7
d00568ba:	ee37 2a45 	vsub.f32	s4, s14, s10
d00568be:	f140 8212 	bpl.w	d0056ce6 <clipTriangleToFrustum+0x7ce>
d00568c2:	2f00      	cmp	r7, #0
d00568c4:	f000 820f 	beq.w	d0056ce6 <clipTriangleToFrustum+0x7ce>
d00568c8:	eec5 3a83 	vdiv.f32	s7, s11, s6
d00568cc:	300c      	adds	r0, #12
d00568ce:	3201      	adds	r2, #1
d00568d0:	4298      	cmp	r0, r3
d00568d2:	eea1 4a23 	vfma.f32	s8, s2, s7
d00568d6:	eee1 4aa3 	vfma.f32	s9, s3, s7
d00568da:	eea2 5a23 	vfma.f32	s10, s4, s7
d00568de:	ed81 4a00 	vstr	s8, [r1]
d00568e2:	edc1 4a01 	vstr	s9, [r1, #4]
d00568e6:	ed81 5a02 	vstr	s10, [r1, #8]
d00568ea:	d1ae      	bne.n	d005684a <clipTriangleToFrustum+0x332>
d00568ec:	2a02      	cmp	r2, #2
d00568ee:	f340 80ab 	ble.w	d0056a48 <clipTriangleToFrustum+0x530>
d00568f2:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d00568f6:	2700      	movs	r7, #0
d00568f8:	009b      	lsls	r3, r3, #2
d00568fa:	f1a3 020c 	sub.w	r2, r3, #12
d00568fe:	4423      	add	r3, r4
d0056900:	4414      	add	r4, r2
d0056902:	edd4 7a01 	vldr	s15, [r4, #4]
d0056906:	ed94 7a02 	vldr	s14, [r4, #8]
d005690a:	eef0 6a67 	vmov.f32	s13, s15
d005690e:	ed94 6a00 	vldr	s12, [r4]
d0056912:	eee2 6a87 	vfma.f32	s13, s5, s14
d0056916:	e00a      	b.n	d005692e <clipTriangleToFrustum+0x416>
d0056918:	b380      	cbz	r0, d005697c <clipTriangleToFrustum+0x464>
d005691a:	3701      	adds	r7, #1
d005691c:	ed82 6a00 	vstr	s12, [r2]
d0056920:	edc2 7a01 	vstr	s15, [r2, #4]
d0056924:	ed82 7a02 	vstr	s14, [r2, #8]
d0056928:	360c      	adds	r6, #12
d005692a:	429e      	cmp	r6, r3
d005692c:	d04e      	beq.n	d00569cc <clipTriangleToFrustum+0x4b4>
d005692e:	eef0 4a67 	vmov.f32	s9, s15
d0056932:	edd6 7a01 	vldr	s15, [r6, #4]
d0056936:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d005693a:	a922      	add	r1, sp, #136	; 0x88
d005693c:	eef0 5a66 	vmov.f32	s11, s13
d0056940:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0056944:	eef0 6a67 	vmov.f32	s13, s15
d0056948:	eeb0 5a47 	vmov.f32	s10, s14
d005694c:	ed96 7a02 	vldr	s14, [r6, #8]
d0056950:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056954:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0056958:	eee2 6a87 	vfma.f32	s13, s5, s14
d005695c:	eeb0 4a46 	vmov.f32	s8, s12
d0056960:	ed96 6a00 	vldr	s12, [r6]
d0056964:	bfac      	ite	ge
d0056966:	2101      	movge	r1, #1
d0056968:	2100      	movlt	r1, #0
d005696a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d005696e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056972:	bfac      	ite	ge
d0056974:	2001      	movge	r0, #1
d0056976:	2000      	movlt	r0, #0
d0056978:	2900      	cmp	r1, #0
d005697a:	d1cd      	bne.n	d0056918 <clipTriangleToFrustum+0x400>
d005697c:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056980:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0056984:	ac22      	add	r4, sp, #136	; 0x88
d0056986:	ee35 1ae6 	vsub.f32	s2, s11, s13
d005698a:	ee76 1a44 	vsub.f32	s3, s12, s8
d005698e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056992:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0056996:	ee37 2ae4 	vsub.f32	s4, s15, s9
d005699a:	ee37 3a45 	vsub.f32	s6, s14, s10
d005699e:	f140 81d7 	bpl.w	d0056d50 <clipTriangleToFrustum+0x838>
d00569a2:	2900      	cmp	r1, #0
d00569a4:	f000 81d4 	beq.w	d0056d50 <clipTriangleToFrustum+0x838>
d00569a8:	eec5 3a81 	vdiv.f32	s7, s11, s2
d00569ac:	360c      	adds	r6, #12
d00569ae:	3701      	adds	r7, #1
d00569b0:	429e      	cmp	r6, r3
d00569b2:	eea1 4aa3 	vfma.f32	s8, s3, s7
d00569b6:	eee2 4a23 	vfma.f32	s9, s4, s7
d00569ba:	eea3 5a23 	vfma.f32	s10, s6, s7
d00569be:	ed82 4a00 	vstr	s8, [r2]
d00569c2:	edc2 4a01 	vstr	s9, [r2, #4]
d00569c6:	ed82 5a02 	vstr	s10, [r2, #8]
d00569ca:	d1b0      	bne.n	d005692e <clipTriangleToFrustum+0x416>
d00569cc:	2f02      	cmp	r7, #2
d00569ce:	dd3b      	ble.n	d0056a48 <clipTriangleToFrustum+0x530>
d00569d0:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d00569d4:	a922      	add	r1, sp, #136	; 0x88
d00569d6:	4628      	mov	r0, r5
d00569d8:	0092      	lsls	r2, r2, #2
d00569da:	f002 f8df 	bl	d0058b9c <memcpy>
d00569de:	4638      	mov	r0, r7
d00569e0:	b03a      	add	sp, #232	; 0xe8
d00569e2:	ecbd 8b04 	vpop	{d8-d9}
d00569e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00569ea:	eef5 5a40 	vcmp.f32	s11, #0.0
d00569ee:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00569f2:	ee35 1ae6 	vsub.f32	s2, s11, s13
d00569f6:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d00569fa:	ee77 1a44 	vsub.f32	s3, s14, s8
d00569fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a02:	463a      	mov	r2, r7
d0056a04:	ee36 2a64 	vsub.f32	s4, s12, s9
d0056a08:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0056a0c:	f107 070c 	add.w	r7, r7, #12
d0056a10:	f57f ae2b 	bpl.w	d005666a <clipTriangleToFrustum+0x152>
d0056a14:	f1bc 0f00 	cmp.w	ip, #0
d0056a18:	f43f ae27 	beq.w	d005666a <clipTriangleToFrustum+0x152>
d0056a1c:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0056a20:	3302      	adds	r3, #2
d0056a22:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0056a26:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056a2a:	eea3 5a23 	vfma.f32	s10, s6, s7
d0056a2e:	ed82 4a00 	vstr	s8, [r2]
d0056a32:	edc2 4a01 	vstr	s9, [r2, #4]
d0056a36:	ed82 5a02 	vstr	s10, [r2, #8]
d0056a3a:	ed87 7a00 	vstr	s14, [r7]
d0056a3e:	ed87 6a01 	vstr	s12, [r7, #4]
d0056a42:	edc7 7a02 	vstr	s15, [r7, #8]
d0056a46:	e610      	b.n	d005666a <clipTriangleToFrustum+0x152>
d0056a48:	2700      	movs	r7, #0
d0056a4a:	4638      	mov	r0, r7
d0056a4c:	b03a      	add	sp, #232	; 0xe8
d0056a4e:	ecbd 8b04 	vpop	{d8-d9}
d0056a52:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0056a56:	eef5 3a40 	vcmp.f32	s7, #0.0
d0056a5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a5e:	f140 80b0 	bpl.w	d0056bc2 <clipTriangleToFrustum+0x6aa>
d0056a62:	2900      	cmp	r1, #0
d0056a64:	f000 80ad 	beq.w	d0056bc2 <clipTriangleToFrustum+0x6aa>
d0056a68:	ee31 0ae7 	vsub.f32	s0, s3, s15
d0056a6c:	ed9d 1a0f 	vldr	s2, [sp, #60]	; 0x3c
d0056a70:	ee74 8ac2 	vsub.f32	s17, s9, s4
d0056a74:	2301      	movs	r3, #1
d0056a76:	eeb0 9a42 	vmov.f32	s18, s4
d0056a7a:	eddd 5a0d 	vldr	s11, [sp, #52]	; 0x34
d0056a7e:	eec4 0a00 	vdiv.f32	s1, s8, s0
d0056a82:	ed9d 6a0e 	vldr	s12, [sp, #56]	; 0x38
d0056a86:	ee35 8a43 	vsub.f32	s16, s10, s6
d0056a8a:	ee71 6a47 	vsub.f32	s13, s2, s14
d0056a8e:	ee37 0ae1 	vsub.f32	s0, s15, s3
d0056a92:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056a96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a9a:	bfac      	ite	ge
d0056a9c:	461e      	movge	r6, r3
d0056a9e:	2600      	movlt	r6, #0
d0056aa0:	eea0 9aa8 	vfma.f32	s18, s1, s17
d0056aa4:	eef0 8a49 	vmov.f32	s17, s18
d0056aa8:	eeb0 9a43 	vmov.f32	s18, s6
d0056aac:	edcd 8a22 	vstr	s17, [sp, #136]	; 0x88
d0056ab0:	eea0 9a88 	vfma.f32	s18, s1, s16
d0056ab4:	eeb0 8a49 	vmov.f32	s16, s18
d0056ab8:	eeb0 9a61 	vmov.f32	s18, s3
d0056abc:	ed8d 8a23 	vstr	s16, [sp, #140]	; 0x8c
d0056ac0:	eea0 9a20 	vfma.f32	s18, s0, s1
d0056ac4:	ed8d 9a24 	vstr	s18, [sp, #144]	; 0x90
d0056ac8:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056acc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056ad0:	f140 80a8 	bpl.w	d0056c24 <clipTriangleToFrustum+0x70c>
d0056ad4:	2800      	cmp	r0, #0
d0056ad6:	f000 80a5 	beq.w	d0056c24 <clipTriangleToFrustum+0x70c>
d0056ada:	ee37 0ac1 	vsub.f32	s0, s15, s2
d0056ade:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0056ae2:	ee35 8ae4 	vsub.f32	s16, s11, s9
d0056ae6:	4632      	mov	r2, r6
d0056ae8:	ae22      	add	r6, sp, #136	; 0x88
d0056aea:	3301      	adds	r3, #1
d0056aec:	eec3 0a80 	vdiv.f32	s1, s7, s0
d0056af0:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0056af4:	ee36 0a45 	vsub.f32	s0, s12, s10
d0056af8:	ee71 3a67 	vsub.f32	s7, s2, s15
d0056afc:	eee8 4a20 	vfma.f32	s9, s16, s1
d0056b00:	eea0 5a20 	vfma.f32	s10, s0, s1
d0056b04:	eee3 7aa0 	vfma.f32	s15, s7, s1
d0056b08:	edc0 4a00 	vstr	s9, [r0]
d0056b0c:	ed80 5a01 	vstr	s10, [r0, #4]
d0056b10:	edc0 7a02 	vstr	s15, [r0, #8]
d0056b14:	eeb5 4a40 	vcmp.f32	s8, #0.0
d0056b18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056b1c:	d521      	bpl.n	d0056b62 <clipTriangleToFrustum+0x64a>
d0056b1e:	b302      	cbz	r2, d0056b62 <clipTriangleToFrustum+0x64a>
d0056b20:	ee37 7a61 	vsub.f32	s14, s14, s3
d0056b24:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0056b28:	ee32 2a65 	vsub.f32	s4, s4, s11
d0056b2c:	a922      	add	r1, sp, #136	; 0x88
d0056b2e:	ee33 3a46 	vsub.f32	s6, s6, s12
d0056b32:	3301      	adds	r3, #1
d0056b34:	ee37 7a26 	vadd.f32	s14, s14, s13
d0056b38:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0056b3c:	ee71 1ac1 	vsub.f32	s3, s3, s2
d0056b40:	eef0 7a41 	vmov.f32	s15, s2
d0056b44:	ee86 5a87 	vdiv.f32	s10, s13, s14
d0056b48:	eee2 5a05 	vfma.f32	s11, s4, s10
d0056b4c:	eea3 6a05 	vfma.f32	s12, s6, s10
d0056b50:	eee1 7a85 	vfma.f32	s15, s3, s10
d0056b54:	edc2 5a00 	vstr	s11, [r2]
d0056b58:	ed82 6a01 	vstr	s12, [r2, #4]
d0056b5c:	edc2 7a02 	vstr	s15, [r2, #8]
d0056b60:	e565      	b.n	d005662e <clipTriangleToFrustum+0x116>
d0056b62:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056b66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056b6a:	f57f ad60 	bpl.w	d005662e <clipTriangleToFrustum+0x116>
d0056b6e:	2900      	cmp	r1, #0
d0056b70:	f43f ad5d 	beq.w	d005662e <clipTriangleToFrustum+0x116>
d0056b74:	ee77 7a61 	vsub.f32	s15, s14, s3
d0056b78:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0056b7c:	ee32 4a65 	vsub.f32	s8, s4, s11
d0056b80:	a922      	add	r1, sp, #136	; 0x88
d0056b82:	ee73 4a46 	vsub.f32	s9, s6, s12
d0056b86:	3302      	adds	r3, #2
d0056b88:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0056b8c:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0056b90:	ee31 5ac1 	vsub.f32	s10, s3, s2
d0056b94:	ed81 2a03 	vstr	s4, [r1, #12]
d0056b98:	ee86 7aa7 	vdiv.f32	s14, s13, s15
d0056b9c:	ed81 3a04 	vstr	s6, [r1, #16]
d0056ba0:	edc1 1a05 	vstr	s3, [r1, #20]
d0056ba4:	eef0 7a41 	vmov.f32	s15, s2
d0056ba8:	eee4 5a07 	vfma.f32	s11, s8, s14
d0056bac:	eea4 6a87 	vfma.f32	s12, s9, s14
d0056bb0:	eee5 7a07 	vfma.f32	s15, s10, s14
d0056bb4:	edc1 5a00 	vstr	s11, [r1]
d0056bb8:	ed81 6a01 	vstr	s12, [r1, #4]
d0056bbc:	edc1 7a02 	vstr	s15, [r1, #8]
d0056bc0:	e535      	b.n	d005662e <clipTriangleToFrustum+0x116>
d0056bc2:	eeb5 4a40 	vcmp.f32	s8, #0.0
d0056bc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056bca:	f140 80bf 	bpl.w	d0056d4c <clipTriangleToFrustum+0x834>
d0056bce:	2800      	cmp	r0, #0
d0056bd0:	f000 80bc 	beq.w	d0056d4c <clipTriangleToFrustum+0x834>
d0056bd4:	ee71 6ae7 	vsub.f32	s13, s3, s15
d0056bd8:	2302      	movs	r3, #2
d0056bda:	ee34 1ac2 	vsub.f32	s2, s9, s4
d0056bde:	edcd 4a25 	vstr	s9, [sp, #148]	; 0x94
d0056be2:	eef0 0a42 	vmov.f32	s1, s4
d0056be6:	ed8d 5a26 	vstr	s10, [sp, #152]	; 0x98
d0056bea:	ee84 6a26 	vdiv.f32	s12, s8, s13
d0056bee:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d0056bf2:	ee75 5a43 	vsub.f32	s11, s10, s6
d0056bf6:	ee77 6ae1 	vsub.f32	s13, s15, s3
d0056bfa:	eee6 0a01 	vfma.f32	s1, s12, s2
d0056bfe:	eeb0 1a60 	vmov.f32	s2, s1
d0056c02:	eef0 0a43 	vmov.f32	s1, s6
d0056c06:	ed8d 1a22 	vstr	s2, [sp, #136]	; 0x88
d0056c0a:	eee6 0a25 	vfma.f32	s1, s12, s11
d0056c0e:	eef0 5a60 	vmov.f32	s11, s1
d0056c12:	eef0 0a61 	vmov.f32	s1, s3
d0056c16:	edcd 5a23 	vstr	s11, [sp, #140]	; 0x8c
d0056c1a:	eee6 0a26 	vfma.f32	s1, s12, s13
d0056c1e:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0056c22:	e4d1      	b.n	d00565c8 <clipTriangleToFrustum+0xb0>
d0056c24:	eef5 3ac0 	vcmpe.f32	s7, #0.0
d0056c28:	f006 0201 	and.w	r2, r6, #1
d0056c2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056c30:	bf58      	it	pl
d0056c32:	2200      	movpl	r2, #0
d0056c34:	2a00      	cmp	r2, #0
d0056c36:	f000 8087 	beq.w	d0056d48 <clipTriangleToFrustum+0x830>
d0056c3a:	ee77 8ac1 	vsub.f32	s17, s15, s2
d0056c3e:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0056c42:	ee35 8ae4 	vsub.f32	s16, s11, s9
d0056c46:	ae22      	add	r6, sp, #136	; 0x88
d0056c48:	ee36 0a45 	vsub.f32	s0, s12, s10
d0056c4c:	3302      	adds	r3, #2
d0056c4e:	eec3 0aa8 	vdiv.f32	s1, s7, s17
d0056c52:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d0056c56:	edc6 5a03 	vstr	s11, [r6, #12]
d0056c5a:	ed86 6a04 	vstr	s12, [r6, #16]
d0056c5e:	ed86 1a05 	vstr	s2, [r6, #20]
d0056c62:	ee71 3a67 	vsub.f32	s7, s2, s15
d0056c66:	eee8 4a20 	vfma.f32	s9, s16, s1
d0056c6a:	eea0 5a20 	vfma.f32	s10, s0, s1
d0056c6e:	eee3 7aa0 	vfma.f32	s15, s7, s1
d0056c72:	edc6 4a00 	vstr	s9, [r6]
d0056c76:	ed86 5a01 	vstr	s10, [r6, #4]
d0056c7a:	edc6 7a02 	vstr	s15, [r6, #8]
d0056c7e:	e4c4      	b.n	d005660a <clipTriangleToFrustum+0xf2>
d0056c80:	eef5 5a40 	vcmp.f32	s11, #0.0
d0056c84:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056c88:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0056c8c:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0056c90:	ee37 1ac4 	vsub.f32	s2, s15, s8
d0056c94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056c98:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d0056c9c:	ee76 1a64 	vsub.f32	s3, s12, s9
d0056ca0:	4661      	mov	r1, ip
d0056ca2:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0056ca6:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056caa:	f10c 0c0c 	add.w	ip, ip, #12
d0056cae:	f57f ad4b 	bpl.w	d0056748 <clipTriangleToFrustum+0x230>
d0056cb2:	f1be 0f00 	cmp.w	lr, #0
d0056cb6:	f43f ad47 	beq.w	d0056748 <clipTriangleToFrustum+0x230>
d0056cba:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0056cbe:	3202      	adds	r2, #2
d0056cc0:	eea1 4a03 	vfma.f32	s8, s2, s6
d0056cc4:	eee1 4a83 	vfma.f32	s9, s3, s6
d0056cc8:	eea2 5a03 	vfma.f32	s10, s4, s6
d0056ccc:	ed81 4a00 	vstr	s8, [r1]
d0056cd0:	edc1 4a01 	vstr	s9, [r1, #4]
d0056cd4:	ed81 5a02 	vstr	s10, [r1, #8]
d0056cd8:	edcc 7a00 	vstr	s15, [ip]
d0056cdc:	ed8c 6a01 	vstr	s12, [ip, #4]
d0056ce0:	ed8c 7a02 	vstr	s14, [ip, #8]
d0056ce4:	e530      	b.n	d0056748 <clipTriangleToFrustum+0x230>
d0056ce6:	eef5 5a40 	vcmp.f32	s11, #0.0
d0056cea:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056cee:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0056cf2:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d0056cf6:	ee36 1a44 	vsub.f32	s2, s12, s8
d0056cfa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056cfe:	4639      	mov	r1, r7
d0056d00:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0056d04:	ee73 3a63 	vsub.f32	s7, s6, s7
d0056d08:	f107 070c 	add.w	r7, r7, #12
d0056d0c:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056d10:	f57f ad98 	bpl.w	d0056844 <clipTriangleToFrustum+0x32c>
d0056d14:	f1bc 0f00 	cmp.w	ip, #0
d0056d18:	f43f ad94 	beq.w	d0056844 <clipTriangleToFrustum+0x32c>
d0056d1c:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0056d20:	3202      	adds	r2, #2
d0056d22:	eea1 4a03 	vfma.f32	s8, s2, s6
d0056d26:	eee1 4a83 	vfma.f32	s9, s3, s6
d0056d2a:	eea2 5a03 	vfma.f32	s10, s4, s6
d0056d2e:	ed81 4a00 	vstr	s8, [r1]
d0056d32:	edc1 4a01 	vstr	s9, [r1, #4]
d0056d36:	ed81 5a02 	vstr	s10, [r1, #8]
d0056d3a:	ed87 6a00 	vstr	s12, [r7]
d0056d3e:	edc7 7a01 	vstr	s15, [r7, #4]
d0056d42:	ed87 7a02 	vstr	s14, [r7, #8]
d0056d46:	e57d      	b.n	d0056844 <clipTriangleToFrustum+0x32c>
d0056d48:	4632      	mov	r2, r6
d0056d4a:	e45e      	b.n	d005660a <clipTriangleToFrustum+0xf2>
d0056d4c:	2300      	movs	r3, #0
d0056d4e:	e43b      	b.n	d00565c8 <clipTriangleToFrustum+0xb0>
d0056d50:	eef5 5a40 	vcmp.f32	s11, #0.0
d0056d54:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0056d58:	a922      	add	r1, sp, #136	; 0x88
d0056d5a:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056d5e:	ee76 1a44 	vsub.f32	s3, s12, s8
d0056d62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056d66:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0056d6a:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0056d6e:	460a      	mov	r2, r1
d0056d70:	ee37 3a45 	vsub.f32	s6, s14, s10
d0056d74:	f101 010c 	add.w	r1, r1, #12
d0056d78:	f57f add6 	bpl.w	d0056928 <clipTriangleToFrustum+0x410>
d0056d7c:	2800      	cmp	r0, #0
d0056d7e:	f43f add3 	beq.w	d0056928 <clipTriangleToFrustum+0x410>
d0056d82:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0056d86:	3702      	adds	r7, #2
d0056d88:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0056d8c:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056d90:	eea3 5a23 	vfma.f32	s10, s6, s7
d0056d94:	ed82 4a00 	vstr	s8, [r2]
d0056d98:	edc2 4a01 	vstr	s9, [r2, #4]
d0056d9c:	ed82 5a02 	vstr	s10, [r2, #8]
d0056da0:	ed81 6a00 	vstr	s12, [r1]
d0056da4:	edc1 7a01 	vstr	s15, [r1, #4]
d0056da8:	ed81 7a02 	vstr	s14, [r1, #8]
d0056dac:	e5bc      	b.n	d0056928 <clipTriangleToFrustum+0x410>
d0056dae:	bf00      	nop

d0056db0 <submitClippedTri>:
d0056db0:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0056db4:	eef4 7ae2 	vcmpe.f32	s15, s5
d0056db8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056dbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056dc0:	eef4 7ac1 	vcmpe.f32	s15, s2
d0056dc4:	bfac      	ite	ge
d0056dc6:	2401      	movge	r4, #1
d0056dc8:	2400      	movlt	r4, #0
d0056dca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056dce:	ed2d 8b02 	vpush	{d8}
d0056dd2:	bfa8      	it	ge
d0056dd4:	f044 0401 	orrge.w	r4, r4, #1
d0056dd8:	b08b      	sub	sp, #44	; 0x2c
d0056dda:	b924      	cbnz	r4, d0056de6 <submitClippedTri+0x36>
d0056ddc:	eef4 7ac4 	vcmpe.f32	s15, s8
d0056de0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056de4:	db04      	blt.n	d0056df0 <submitClippedTri+0x40>
d0056de6:	b00b      	add	sp, #44	; 0x2c
d0056de8:	ecbd 8b02 	vpop	{d8}
d0056dec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056df0:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0056df4:	edd0 7a14 	vldr	s15, [r0, #80]	; 0x50
d0056df8:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0056dfc:	edd0 6a12 	vldr	s13, [r0, #72]	; 0x48
d0056e00:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d0056e04:	ee86 8a01 	vdiv.f32	s16, s12, s2
d0056e08:	ee86 5a22 	vdiv.f32	s10, s12, s5
d0056e0c:	ee77 7aa8 	vadd.f32	s15, s15, s17
d0056e10:	eec6 5a04 	vdiv.f32	s11, s12, s8
d0056e14:	ee68 0a20 	vmul.f32	s1, s16, s1
d0056e18:	ee37 7a28 	vadd.f32	s14, s14, s17
d0056e1c:	ee28 0a00 	vmul.f32	s0, s16, s0
d0056e20:	eeb0 8a47 	vmov.f32	s16, s14
d0056e24:	ee65 1a21 	vmul.f32	s3, s10, s3
d0056e28:	ee25 2a02 	vmul.f32	s4, s10, s4
d0056e2c:	eeb0 5a67 	vmov.f32	s10, s15
d0056e30:	eea6 8a80 	vfma.f32	s16, s13, s0
d0056e34:	eea6 5ae0 	vfms.f32	s10, s13, s1
d0056e38:	ee65 3aa3 	vmul.f32	s7, s11, s7
d0056e3c:	ee25 3a83 	vmul.f32	s6, s11, s6
d0056e40:	eefd 5ac8 	vcvt.s32.f32	s11, s16
d0056e44:	eef0 0a45 	vmov.f32	s1, s10
d0056e48:	eeb0 5a47 	vmov.f32	s10, s14
d0056e4c:	ee15 7a90 	vmov	r7, s11
d0056e50:	eea6 7a83 	vfma.f32	s14, s13, s6
d0056e54:	eea6 5aa1 	vfma.f32	s10, s13, s3
d0056e58:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0056e5c:	eef0 1a45 	vmov.f32	s3, s10
d0056e60:	eeb0 5a67 	vmov.f32	s10, s15
d0056e64:	ee17 ea10 	vmov	lr, s14
d0056e68:	eee6 7ae3 	vfms.f32	s15, s13, s7
d0056e6c:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d0056e70:	ebae 0e07 	sub.w	lr, lr, r7
d0056e74:	eea6 5ac2 	vfms.f32	s10, s13, s4
d0056e78:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0056e7c:	ee11 4a90 	vmov	r4, s3
d0056e80:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0056e84:	ee16 6a90 	vmov	r6, s13
d0056e88:	eba4 0807 	sub.w	r8, r4, r7
d0056e8c:	eefd 6ac5 	vcvt.s32.f32	s13, s10
d0056e90:	ee17 4a90 	vmov	r4, s15
d0056e94:	ee16 5a90 	vmov	r5, s13
d0056e98:	eba4 0c06 	sub.w	ip, r4, r6
d0056e9c:	1bad      	subs	r5, r5, r6
d0056e9e:	fb0c fc08 	mul.w	ip, ip, r8
d0056ea2:	fb0e c515 	mls	r5, lr, r5, ip
d0056ea6:	2d00      	cmp	r5, #0
d0056ea8:	dd9d      	ble.n	d0056de6 <submitClippedTri+0x36>
d0056eaa:	f8df e0f8 	ldr.w	lr, [pc, #248]	; d0056fa4 <submitClippedTri+0x1f4>
d0056eae:	f8de 5000 	ldr.w	r5, [lr]
d0056eb2:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0056eb6:	da96      	bge.n	d0056de6 <submitClippedTri+0x36>
d0056eb8:	f8df c0ec 	ldr.w	ip, [pc, #236]	; d0056fa8 <submitClippedTri+0x1f8>
d0056ebc:	ea4f 1885 	mov.w	r8, r5, lsl #6
d0056ec0:	f105 0b01 	add.w	fp, r5, #1
d0056ec4:	ed9f 5a35 	vldr	s10, [pc, #212]	; d0056f9c <submitClippedTri+0x1ec>
d0056ec8:	eb0c 1585 	add.w	r5, ip, r5, lsl #6
d0056ecc:	f108 0a08 	add.w	sl, r8, #8
d0056ed0:	f848 700c 	str.w	r7, [r8, ip]
d0056ed4:	f108 0910 	add.w	r9, r8, #16
d0056ed8:	606e      	str	r6, [r5, #4]
d0056eda:	ee11 7a90 	vmov	r7, s3
d0056ede:	eb0a 060c 	add.w	r6, sl, ip
d0056ee2:	f8ce b000 	str.w	fp, [lr]
d0056ee6:	f84a 700c 	str.w	r7, [sl, ip]
d0056eea:	eb09 070c 	add.w	r7, r9, ip
d0056eee:	edc6 6a01 	vstr	s13, [r6, #4]
d0056ef2:	ee17 6a10 	vmov	r6, s14
d0056ef6:	eddf 6a2a 	vldr	s13, [pc, #168]	; d0056fa0 <submitClippedTri+0x1f0>
d0056efa:	f849 600c 	str.w	r6, [r9, ip]
d0056efe:	edc7 7a01 	vstr	s15, [r7, #4]
d0056f02:	f885 3036 	strb.w	r3, [r5, #54]	; 0x36
d0056f06:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d0056f0a:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d0056f0e:	edc5 4a07 	vstr	s9, [r5, #28]
d0056f12:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0056f16:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0056f1a:	ee31 7a47 	vsub.f32	s14, s2, s14
d0056f1e:	ee27 7a27 	vmul.f32	s14, s14, s15
d0056f22:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0056f26:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0056f2a:	ee27 7a26 	vmul.f32	s14, s14, s13
d0056f2e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056f32:	ee17 3a10 	vmov	r3, s14
d0056f36:	842b      	strh	r3, [r5, #32]
d0056f38:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0056f3c:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0056f40:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0056f44:	ee27 7a27 	vmul.f32	s14, s14, s15
d0056f48:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0056f4c:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0056f50:	ee27 7a26 	vmul.f32	s14, s14, s13
d0056f54:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056f58:	ee17 3a10 	vmov	r3, s14
d0056f5c:	846b      	strh	r3, [r5, #34]	; 0x22
d0056f5e:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0056f62:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0056f66:	ee74 7a67 	vsub.f32	s15, s8, s15
d0056f6a:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0056f6e:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0056f72:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d0056f76:	ee67 7a87 	vmul.f32	s15, s15, s14
d0056f7a:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0056f7e:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0056f82:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0056f86:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0056f8a:	ee17 3a90 	vmov	r3, s15
d0056f8e:	84ab      	strh	r3, [r5, #36]	; 0x24
d0056f90:	b00b      	add	sp, #44	; 0x2c
d0056f92:	ecbd 8b02 	vpop	{d8}
d0056f96:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056f9a:	bf00      	nop
d0056f9c:	00000000 	.word	0x00000000
d0056fa0:	477fff00 	.word	0x477fff00
d0056fa4:	d00b4244 	.word	0xd00b4244
d0056fa8:	d00b4260 	.word	0xd00b4260

d0056fac <getRenderTriCount>:
d0056fac:	4b01      	ldr	r3, [pc, #4]	; (d0056fb4 <getRenderTriCount+0x8>)
d0056fae:	6818      	ldr	r0, [r3, #0]
d0056fb0:	4770      	bx	lr
d0056fb2:	bf00      	nop
d0056fb4:	d00b4244 	.word	0xd00b4244

d0056fb8 <drawFakeHorizonDots>:
d0056fb8:	2800      	cmp	r0, #0
d0056fba:	f000 8107 	beq.w	d00571cc <drawFakeHorizonDots+0x214>
d0056fbe:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056fc2:	4699      	mov	r9, r3
d0056fc4:	ed2d 8b10 	vpush	{d8-d15}
d0056fc8:	b085      	sub	sp, #20
d0056fca:	2b00      	cmp	r3, #0
d0056fcc:	f000 80f9 	beq.w	d00571c2 <drawFakeHorizonDots+0x20a>
d0056fd0:	4617      	mov	r7, r2
d0056fd2:	ed90 9a02 	vldr	s18, [r0, #8]
d0056fd6:	edd0 8a00 	vldr	s17, [r0]
d0056fda:	4606      	mov	r6, r0
d0056fdc:	2f02      	cmp	r7, #2
d0056fde:	ed90 6a01 	vldr	s12, [r0, #4]
d0056fe2:	ed90 da07 	vldr	s26, [r0, #28]
d0056fe6:	460a      	mov	r2, r1
d0056fe8:	bfb8      	it	lt
d0056fea:	2702      	movlt	r7, #2
d0056fec:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d0056ff0:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0056ff4:	ee30 ba46 	vsub.f32	s22, s0, s12
d0056ff8:	ee07 7a90 	vmov	s15, r7
d0056ffc:	ed90 fa06 	vldr	s30, [r0, #24]
d0057000:	edd0 ea08 	vldr	s29, [r0, #32]
d0057004:	f06f 0311 	mvn.w	r3, #17
d0057008:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d005700c:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d0057010:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d0057014:	ee2b da0d 	vmul.f32	s26, s22, s26
d0057018:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d005701c:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0057020:	ee89 7a08 	vdiv.f32	s14, s18, s16
d0057024:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d0057028:	eddf 5a69 	vldr	s11, [pc, #420]	; d00571d0 <drawFakeHorizonDots+0x218>
d005702c:	4d69      	ldr	r5, [pc, #420]	; (d00571d4 <drawFakeHorizonDots+0x21c>)
d005702e:	4c6a      	ldr	r4, [pc, #424]	; (d00571d8 <drawFakeHorizonDots+0x220>)
d0057030:	eddf 9a6a 	vldr	s19, [pc, #424]	; d00571dc <drawFakeHorizonDots+0x224>
d0057034:	eec8 7a88 	vdiv.f32	s15, s17, s16
d0057038:	9302      	str	r3, [sp, #8]
d005703a:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d00571e4 <drawFakeHorizonDots+0x22c>
d005703e:	4623      	mov	r3, r4
d0057040:	ee28 8a25 	vmul.f32	s16, s16, s11
d0057044:	ee2b ba26 	vmul.f32	s22, s22, s13
d0057048:	ee68 9a29 	vmul.f32	s19, s16, s19
d005704c:	febb 7a47 	vrintm.f32	s14, s14
d0057050:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0057054:	ee17 0a10 	vmov	r0, s14
d0057058:	fefb 7a67 	vrintm.f32	s15, s15
d005705c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0057060:	3812      	subs	r0, #18
d0057062:	ee17 1a90 	vmov	r1, s15
d0057066:	fb05 f500 	mul.w	r5, r5, r0
d005706a:	fb00 f007 	mul.w	r0, r0, r7
d005706e:	fb04 5a01 	mla	sl, r4, r1, r5
d0057072:	3912      	subs	r1, #18
d0057074:	9001      	str	r0, [sp, #4]
d0057076:	fb07 f101 	mul.w	r1, r7, r1
d005707a:	9103      	str	r1, [sp, #12]
d005707c:	eddd 7a01 	vldr	s15, [sp, #4]
d0057080:	ee39 aa08 	vadd.f32	s20, s18, s16
d0057084:	9902      	ldr	r1, [sp, #8]
d0057086:	ee78 aa88 	vadd.f32	s21, s17, s16
d005708a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005708e:	9d03      	ldr	r5, [sp, #12]
d0057090:	fb01 f801 	mul.w	r8, r1, r1
d0057094:	f06f 0411 	mvn.w	r4, #17
d0057098:	ee37 aaca 	vsub.f32	s20, s15, s20
d005709c:	e078      	b.n	d0057190 <drawFakeHorizonDots+0x1d8>
d005709e:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d00570a2:	fb09 f000 	mul.w	r0, r9, r0
d00570a6:	2850      	cmp	r0, #80	; 0x50
d00570a8:	dd6e      	ble.n	d0057188 <drawFakeHorizonDots+0x1d0>
d00570aa:	494d      	ldr	r1, [pc, #308]	; (d00571e0 <drawFakeHorizonDots+0x228>)
d00570ac:	fba1 1000 	umull	r1, r0, r1, r0
d00570b0:	f3c0 1087 	ubfx	r0, r0, #6, #8
d00570b4:	fb03 a104 	mla	r1, r3, r4, sl
d00570b8:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d00570bc:	fb0b f101 	mul.w	r1, fp, r1
d00570c0:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d00570c4:	fa5f fc81 	uxtb.w	ip, r1
d00570c8:	4584      	cmp	ip, r0
d00570ca:	d85d      	bhi.n	d0057188 <drawFakeHorizonDots+0x1d0>
d00570cc:	ee07 5a10 	vmov	s14, r5
d00570d0:	f3c1 4007 	ubfx	r0, r1, #16, #8
d00570d4:	f3c1 2107 	ubfx	r1, r1, #8, #8
d00570d8:	eef0 4a4a 	vmov.f32	s9, s20
d00570dc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00570e0:	ee06 0a90 	vmov	s13, r0
d00570e4:	ee07 1a90 	vmov	s15, r1
d00570e8:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d00570ec:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00570f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00570f4:	ee37 7a6a 	vsub.f32	s14, s14, s21
d00570f8:	eee6 4aa9 	vfma.f32	s9, s13, s19
d00570fc:	eea7 7aa9 	vfma.f32	s14, s15, s19
d0057100:	eef0 7a47 	vmov.f32	s15, s14
d0057104:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d0057108:	eeac 7a27 	vfma.f32	s14, s24, s15
d005710c:	ee3b 7a07 	vadd.f32	s14, s22, s14
d0057110:	eeb4 6ac7 	vcmpe.f32	s12, s14
d0057114:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057118:	da36      	bge.n	d0057188 <drawFakeHorizonDots+0x1d0>
d005711a:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d005711e:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d0057122:	ee2f 6a27 	vmul.f32	s12, s30, s15
d0057126:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d005712a:	ee6e 7a27 	vmul.f32	s15, s28, s15
d005712e:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d0057132:	ee83 4a87 	vdiv.f32	s8, s7, s14
d0057136:	eeae 6aa4 	vfma.f32	s12, s29, s9
d005713a:	eeed 7aa4 	vfma.f32	s15, s27, s9
d005713e:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d0057142:	ee36 7aa4 	vadd.f32	s14, s13, s9
d0057146:	ee7d 6a06 	vadd.f32	s13, s26, s12
d005714a:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d005714e:	ee35 6aa4 	vadd.f32	s12, s11, s9
d0057152:	ee66 6a85 	vmul.f32	s13, s13, s10
d0057156:	ee65 7a67 	vnmul.f32	s15, s10, s15
d005715a:	eea6 7a84 	vfma.f32	s14, s13, s8
d005715e:	eea7 6a84 	vfma.f32	s12, s15, s8
d0057162:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0057166:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d005716a:	ee17 0a10 	vmov	r0, s14
d005716e:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0057172:	d209      	bcs.n	d0057188 <drawFakeHorizonDots+0x1d0>
d0057174:	ee17 1a90 	vmov	r1, s15
d0057178:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d005717c:	d204      	bcs.n	d0057188 <drawFakeHorizonDots+0x1d0>
d005717e:	9200      	str	r2, [sp, #0]
d0057180:	f7fa ff32 	bl	d0051fe8 <putPixel>
d0057184:	4b14      	ldr	r3, [pc, #80]	; (d00571d8 <drawFakeHorizonDots+0x220>)
d0057186:	9a00      	ldr	r2, [sp, #0]
d0057188:	3401      	adds	r4, #1
d005718a:	443d      	add	r5, r7
d005718c:	2c13      	cmp	r4, #19
d005718e:	d009      	beq.n	d00571a4 <drawFakeHorizonDots+0x1ec>
d0057190:	fb04 8004 	mla	r0, r4, r4, r8
d0057194:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0057198:	dcf6      	bgt.n	d0057188 <drawFakeHorizonDots+0x1d0>
d005719a:	28f3      	cmp	r0, #243	; 0xf3
d005719c:	f73f af7f 	bgt.w	d005709e <drawFakeHorizonDots+0xe6>
d00571a0:	4648      	mov	r0, r9
d00571a2:	e787      	b.n	d00570b4 <drawFakeHorizonDots+0xfc>
d00571a4:	9902      	ldr	r1, [sp, #8]
d00571a6:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d00571aa:	9801      	ldr	r0, [sp, #4]
d00571ac:	3101      	adds	r1, #1
d00571ae:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d00571b2:	4438      	add	r0, r7
d00571b4:	2913      	cmp	r1, #19
d00571b6:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d00571ba:	9102      	str	r1, [sp, #8]
d00571bc:	9001      	str	r0, [sp, #4]
d00571be:	f47f af5d 	bne.w	d005707c <drawFakeHorizonDots+0xc4>
d00571c2:	b005      	add	sp, #20
d00571c4:	ecbd 8b10 	vpop	{d8-d15}
d00571c8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00571cc:	4770      	bx	lr
d00571ce:	bf00      	nop
d00571d0:	3eb33333 	.word	0x3eb33333
d00571d4:	27d4eb2f 	.word	0x27d4eb2f
d00571d8:	165667b1 	.word	0x165667b1
d00571dc:	3c008081 	.word	0x3c008081
d00571e0:	ca4587e7 	.word	0xca4587e7
d00571e4:	4bf19f61 	.word	0x4bf19f61

d00571e8 <drawFakeHorizon>:
d00571e8:	2800      	cmp	r0, #0
d00571ea:	f000 813e 	beq.w	d005746a <drawFakeHorizon+0x282>
d00571ee:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00571f2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00571f6:	ed2d 8b0e 	vpush	{d8-d14}
d00571fa:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d00571fe:	b083      	sub	sp, #12
d0057200:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d0057204:	460f      	mov	r7, r1
d0057206:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d005720a:	eddf 7a9c 	vldr	s15, [pc, #624]	; d005747c <drawFakeHorizon+0x294>
d005720e:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d0057212:	4690      	mov	r8, r2
d0057214:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d0057218:	4699      	mov	r9, r3
d005721a:	ed90 ea07 	vldr	s28, [r0, #28]
d005721e:	2400      	movs	r4, #0
d0057220:	ed90 9a01 	vldr	s18, [r0, #4]
d0057224:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d0057228:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d005722c:	ee2b 7aad 	vmul.f32	s14, s23, s27
d0057230:	4e93      	ldr	r6, [pc, #588]	; (d0057480 <drawFakeHorizon+0x298>)
d0057232:	eef0 aa4c 	vmov.f32	s21, s24
d0057236:	ed9f 8a93 	vldr	s16, [pc, #588]	; d0057484 <drawFakeHorizon+0x29c>
d005723a:	eeb0 aa4c 	vmov.f32	s20, s24
d005723e:	eecd ca2d 	vdiv.f32	s25, s26, s27
d0057242:	eeb0 baed 	vabs.f32	s22, s27
d0057246:	ee30 9a49 	vsub.f32	s18, s0, s18
d005724a:	ee67 7aa8 	vmul.f32	s15, s15, s17
d005724e:	eee7 aa28 	vfma.f32	s21, s14, s17
d0057252:	ee6e 8a28 	vmul.f32	s17, s28, s17
d0057256:	eea7 aaad 	vfma.f32	s20, s15, s27
d005725a:	e056      	b.n	d005730a <drawFakeHorizon+0x122>
d005725c:	ee89 6a26 	vdiv.f32	s12, s18, s13
d0057260:	eef0 6ac7 	vabs.f32	s13, s14
d0057264:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0057268:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005726c:	eef4 6ac8 	vcmpe.f32	s13, s16
d0057270:	bfcc      	ite	gt
d0057272:	2201      	movgt	r2, #1
d0057274:	2200      	movle	r2, #0
d0057276:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005727a:	da61      	bge.n	d0057340 <drawFakeHorizon+0x158>
d005727c:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0057280:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0057284:	6833      	ldr	r3, [r6, #0]
d0057286:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005728a:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d005728e:	f240 80a8 	bls.w	d00573e2 <drawFakeHorizon+0x1fa>
d0057292:	eeb4 bac8 	vcmpe.f32	s22, s16
d0057296:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005729a:	f100 809a 	bmi.w	d00573d2 <drawFakeHorizon+0x1ea>
d005729e:	ee7c 7a27 	vadd.f32	s15, s24, s15
d00572a2:	eeb0 7a6b 	vmov.f32	s14, s23
d00572a6:	eeac 7aa7 	vfma.f32	s14, s25, s15
d00572aa:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00572ae:	ee17 ba90 	vmov	fp, s15
d00572b2:	f1bb 0f00 	cmp.w	fp, #0
d00572b6:	f2c0 80aa 	blt.w	d005740e <drawFakeHorizon+0x226>
d00572ba:	2201      	movs	r2, #1
d00572bc:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00572c0:	46da      	mov	sl, fp
d00572c2:	bfa8      	it	ge
d00572c4:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d00572c8:	2a00      	cmp	r2, #0
d00572ca:	f000 8091 	beq.w	d00573f0 <drawFakeHorizon+0x208>
d00572ce:	f1bb 0f00 	cmp.w	fp, #0
d00572d2:	d009      	beq.n	d00572e8 <drawFakeHorizon+0x100>
d00572d4:	f1ba 0f00 	cmp.w	sl, #0
d00572d8:	4628      	mov	r0, r5
d00572da:	4641      	mov	r1, r8
d00572dc:	bfcc      	ite	gt
d00572de:	4652      	movgt	r2, sl
d00572e0:	2201      	movle	r2, #1
d00572e2:	4415      	add	r5, r2
d00572e4:	f001 fc68 	bl	d0058bb8 <memset>
d00572e8:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00572ec:	d009      	beq.n	d0057302 <drawFakeHorizon+0x11a>
d00572ee:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00572f2:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00572f6:	4628      	mov	r0, r5
d00572f8:	4639      	mov	r1, r7
d00572fa:	bfa8      	it	ge
d00572fc:	2201      	movge	r2, #1
d00572fe:	f001 fc5b 	bl	d0058bb8 <memset>
d0057302:	3401      	adds	r4, #1
d0057304:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0057308:	d04e      	beq.n	d00573a8 <drawFakeHorizon+0x1c0>
d005730a:	ee07 4a90 	vmov	s15, r4
d005730e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057312:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0057316:	ee67 7aa8 	vmul.f32	s15, s15, s17
d005731a:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d005731e:	ee3a 7a27 	vadd.f32	s14, s20, s15
d0057322:	eeb0 6ae6 	vabs.f32	s12, s13
d0057326:	eeb4 6ac8 	vcmpe.f32	s12, s16
d005732a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005732e:	da95      	bge.n	d005725c <drawFakeHorizon+0x74>
d0057330:	eef0 6ac7 	vabs.f32	s13, s14
d0057334:	eef4 6ac8 	vcmpe.f32	s13, s16
d0057338:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005733c:	db4c      	blt.n	d00573d8 <drawFakeHorizon+0x1f0>
d005733e:	2200      	movs	r2, #0
d0057340:	eec9 6a07 	vdiv.f32	s13, s18, s14
d0057344:	6833      	ldr	r3, [r6, #0]
d0057346:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d005734a:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d005734e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057352:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057356:	bfcc      	ite	gt
d0057358:	2301      	movgt	r3, #1
d005735a:	2300      	movle	r3, #0
d005735c:	4293      	cmp	r3, r2
d005735e:	f000 8085 	beq.w	d005746c <drawFakeHorizon+0x284>
d0057362:	eeb4 bac8 	vcmpe.f32	s22, s16
d0057366:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005736a:	d429      	bmi.n	d00573c0 <drawFakeHorizon+0x1d8>
d005736c:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0057370:	eeb0 7a6b 	vmov.f32	s14, s23
d0057374:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0057378:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d005737c:	ee17 ba90 	vmov	fp, s15
d0057380:	f1bb 0f00 	cmp.w	fp, #0
d0057384:	da9a      	bge.n	d00572bc <drawFakeHorizon+0xd4>
d0057386:	2a00      	cmp	r2, #0
d0057388:	d141      	bne.n	d005740e <drawFakeHorizon+0x226>
d005738a:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d005738e:	f104 0401 	add.w	r4, r4, #1
d0057392:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0057396:	4628      	mov	r0, r5
d0057398:	bfa8      	it	ge
d005739a:	2201      	movge	r2, #1
d005739c:	4641      	mov	r1, r8
d005739e:	f001 fc0b 	bl	d0058bb8 <memset>
d00573a2:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00573a6:	d1b0      	bne.n	d005730a <drawFakeHorizon+0x122>
d00573a8:	eddf 7a36 	vldr	s15, [pc, #216]	; d0057484 <drawFakeHorizon+0x29c>
d00573ac:	eeb4 bae7 	vcmpe.f32	s22, s15
d00573b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00573b4:	da31      	bge.n	d005741a <drawFakeHorizon+0x232>
d00573b6:	b003      	add	sp, #12
d00573b8:	ecbd 8b0e 	vpop	{d8-d14}
d00573bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00573c0:	b93a      	cbnz	r2, d00573d2 <drawFakeHorizon+0x1ea>
d00573c2:	22a0      	movs	r2, #160	; 0xa0
d00573c4:	4628      	mov	r0, r5
d00573c6:	4639      	mov	r1, r7
d00573c8:	4415      	add	r5, r2
d00573ca:	f001 fbf5 	bl	d0058bb8 <memset>
d00573ce:	22a0      	movs	r2, #160	; 0xa0
d00573d0:	e7db      	b.n	d005738a <drawFakeHorizon+0x1a2>
d00573d2:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d00573d6:	e77d      	b.n	d00572d4 <drawFakeHorizon+0xec>
d00573d8:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00573dc:	6832      	ldr	r2, [r6, #0]
d00573de:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d00573e2:	4639      	mov	r1, r7
d00573e4:	4628      	mov	r0, r5
d00573e6:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00573ea:	f001 fbe5 	bl	d0058bb8 <memset>
d00573ee:	e788      	b.n	d0057302 <drawFakeHorizon+0x11a>
d00573f0:	f1bb 0f00 	cmp.w	fp, #0
d00573f4:	d00e      	beq.n	d0057414 <drawFakeHorizon+0x22c>
d00573f6:	4628      	mov	r0, r5
d00573f8:	4652      	mov	r2, sl
d00573fa:	4639      	mov	r1, r7
d00573fc:	4455      	add	r5, sl
d00573fe:	f001 fbdb 	bl	d0058bb8 <memset>
d0057402:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0057406:	f6bf af7c 	bge.w	d0057302 <drawFakeHorizon+0x11a>
d005740a:	4652      	mov	r2, sl
d005740c:	e7bd      	b.n	d005738a <drawFakeHorizon+0x1a2>
d005740e:	f04f 0a00 	mov.w	sl, #0
d0057412:	e76c      	b.n	d00572ee <drawFakeHorizon+0x106>
d0057414:	46da      	mov	sl, fp
d0057416:	4652      	mov	r2, sl
d0057418:	e7b7      	b.n	d005738a <drawFakeHorizon+0x1a2>
d005741a:	ee2d ca0c 	vmul.f32	s24, s26, s24
d005741e:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0057488 <drawFakeHorizon+0x2a0>
d0057422:	f240 12df 	movw	r2, #479	; 0x1df
d0057426:	2000      	movs	r0, #0
d0057428:	ee77 7ae9 	vsub.f32	s15, s15, s19
d005742c:	f8cd 9000 	str.w	r9, [sp]
d0057430:	eef0 6a4c 	vmov.f32	s13, s24
d0057434:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0057438:	eee9 6ace 	vfms.f32	s13, s19, s28
d005743c:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d0057440:	ee86 7aad 	vdiv.f32	s14, s13, s27
d0057444:	ee37 7a2b 	vadd.f32	s14, s14, s23
d0057448:	ee77 baab 	vadd.f32	s23, s15, s23
d005744c:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0057450:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d0057454:	ee17 1a10 	vmov	r1, s14
d0057458:	ee17 3a90 	vmov	r3, s15
d005745c:	f7fa fdd4 	bl	d0052008 <drawLine>
d0057460:	b003      	add	sp, #12
d0057462:	ecbd 8b0e 	vpop	{d8-d14}
d0057466:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005746a:	4770      	bx	lr
d005746c:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057470:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057474:	ddb5      	ble.n	d00573e2 <drawFakeHorizon+0x1fa>
d0057476:	4641      	mov	r1, r8
d0057478:	e7b4      	b.n	d00573e4 <drawFakeHorizon+0x1fc>
d005747a:	bf00      	nop
d005747c:	439f8000 	.word	0x439f8000
d0057480:	d0140324 	.word	0xd0140324
d0057484:	38d1b717 	.word	0x38d1b717
d0057488:	43ef8000 	.word	0x43ef8000

d005748c <submitEntitySolid>:
d005748c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0057490:	ed2d 8b10 	vpush	{d8-d15}
d0057494:	b0bb      	sub	sp, #236	; 0xec
d0057496:	f10d 038f 	add.w	r3, sp, #143	; 0x8f
d005749a:	9102      	str	r1, [sp, #8]
d005749c:	f023 031f 	bic.w	r3, r3, #31
d00574a0:	9303      	str	r3, [sp, #12]
d00574a2:	2800      	cmp	r0, #0
d00574a4:	f000 832e 	beq.w	d0057b04 <submitEntitySolid+0x678>
d00574a8:	f8d0 a00c 	ldr.w	sl, [r0, #12]
d00574ac:	4604      	mov	r4, r0
d00574ae:	f1ba 0f00 	cmp.w	sl, #0
d00574b2:	f000 8327 	beq.w	d0057b04 <submitEntitySolid+0x678>
d00574b6:	f8da 3000 	ldr.w	r3, [sl]
d00574ba:	2b00      	cmp	r3, #0
d00574bc:	f000 8322 	beq.w	d0057b04 <submitEntitySolid+0x678>
d00574c0:	f8da 3010 	ldr.w	r3, [sl, #16]
d00574c4:	2b00      	cmp	r3, #0
d00574c6:	f000 831d 	beq.w	d0057b04 <submitEntitySolid+0x678>
d00574ca:	f8da 3004 	ldr.w	r3, [sl, #4]
d00574ce:	3b01      	subs	r3, #1
d00574d0:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d00574d4:	f080 8316 	bcs.w	d0057b04 <submitEntitySolid+0x678>
d00574d8:	f8da 3014 	ldr.w	r3, [sl, #20]
d00574dc:	2b00      	cmp	r3, #0
d00574de:	f340 8311 	ble.w	d0057b04 <submitEntitySolid+0x678>
d00574e2:	460e      	mov	r6, r1
d00574e4:	edd1 fa11 	vldr	s31, [r1, #68]	; 0x44
d00574e8:	ed91 ba10 	vldr	s22, [r1, #64]	; 0x40
d00574ec:	f7fe ff4a 	bl	d0056384 <lightsGet>
d00574f0:	4605      	mov	r5, r0
d00574f2:	f7fe ff4b 	bl	d005638c <lightsGetCount>
d00574f6:	edda 7a09 	vldr	s15, [sl, #36]	; 0x24
d00574fa:	ed9a 7a0a 	vldr	s14, [sl, #40]	; 0x28
d00574fe:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0057502:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0057506:	edda 7a08 	vldr	s15, [sl, #32]
d005750a:	edd4 3a00 	vldr	s7, [r4]
d005750e:	edcd 7a05 	vstr	s15, [sp, #20]
d0057512:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057516:	edda 7a0c 	vldr	s15, [sl, #48]	; 0x30
d005751a:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d005751e:	edd4 1a02 	vldr	s3, [r4, #8]
d0057522:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0057526:	bfc8      	it	gt
d0057528:	2301      	movgt	r3, #1
d005752a:	edda 7a0b 	vldr	s15, [sl, #44]	; 0x2c
d005752e:	bfd8      	it	le
d0057530:	2300      	movle	r3, #0
d0057532:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057536:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d005753a:	edcd 7a0d 	vstr	s15, [sp, #52]	; 0x34
d005753e:	edd6 7a00 	vldr	s15, [r6]
d0057542:	bfc8      	it	gt
d0057544:	f043 0301 	orrgt.w	r3, r3, #1
d0057548:	ed94 fa01 	vldr	s30, [r4, #4]
d005754c:	edcd 7a07 	vstr	s15, [sp, #28]
d0057550:	edd6 7a01 	vldr	s15, [r6, #4]
d0057554:	ed94 aa07 	vldr	s20, [r4, #28]
d0057558:	edcd 7a08 	vstr	s15, [sp, #32]
d005755c:	edd6 7a02 	vldr	s15, [r6, #8]
d0057560:	edd4 aa08 	vldr	s21, [r4, #32]
d0057564:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0057568:	edd4 ea09 	vldr	s29, [r4, #36]	; 0x24
d005756c:	edd4 ba0a 	vldr	s23, [r4, #40]	; 0x28
d0057570:	ed94 ca0b 	vldr	s24, [r4, #44]	; 0x2c
d0057574:	edd4 ca0c 	vldr	s25, [r4, #48]	; 0x30
d0057578:	ed94 da04 	vldr	s26, [r4, #16]
d005757c:	edd4 da05 	vldr	s27, [r4, #20]
d0057580:	ed94 ea06 	vldr	s28, [r4, #24]
d0057584:	ed96 5a06 	vldr	s10, [r6, #24]
d0057588:	ed96 3a07 	vldr	s6, [r6, #28]
d005758c:	edcd 3a01 	vstr	s7, [sp, #4]
d0057590:	edcd 1a06 	vstr	s3, [sp, #24]
d0057594:	edd6 6a08 	vldr	s13, [r6, #32]
d0057598:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d005759c:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d00575a0:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d00575a4:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d00575a8:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d00575ac:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d00575b0:	b113      	cbz	r3, d00575b8 <submitEntitySolid+0x12c>
d00575b2:	2800      	cmp	r0, #0
d00575b4:	f300 844e 	bgt.w	d0057e54 <submitEntitySolid+0x9c8>
d00575b8:	2300      	movs	r3, #0
d00575ba:	9304      	str	r3, [sp, #16]
d00575bc:	eddd 4a08 	vldr	s9, [sp, #32]
d00575c0:	ee6a 1a83 	vmul.f32	s3, s21, s6
d00575c4:	ed9d 4a07 	vldr	s8, [sp, #28]
d00575c8:	ee2c 1a03 	vmul.f32	s2, s24, s6
d00575cc:	ee7f 3a64 	vsub.f32	s7, s30, s9
d00575d0:	eddd 4a01 	vldr	s9, [sp, #4]
d00575d4:	ee6a 0aa2 	vmul.f32	s1, s21, s5
d00575d8:	f8da 0004 	ldr.w	r0, [sl, #4]
d00575dc:	ee74 4ac4 	vsub.f32	s9, s9, s8
d00575e0:	ee23 9a23 	vmul.f32	s18, s6, s7
d00575e4:	2800      	cmp	r0, #0
d00575e6:	ee62 9aa3 	vmul.f32	s19, s5, s7
d00575ea:	ee2c 0a22 	vmul.f32	s0, s24, s5
d00575ee:	ee62 3a23 	vmul.f32	s7, s4, s7
d00575f2:	ee2a 8a82 	vmul.f32	s16, s21, s4
d00575f6:	ee6c 8a02 	vmul.f32	s17, s24, s4
d00575fa:	ee2d 3a83 	vmul.f32	s6, s27, s6
d00575fe:	ee6d 2aa2 	vmul.f32	s5, s27, s5
d0057602:	ee2d 2a82 	vmul.f32	s4, s27, s4
d0057606:	eee5 9aa4 	vfma.f32	s19, s11, s9
d005760a:	eee6 3a24 	vfma.f32	s7, s12, s9
d005760e:	eeea 0a25 	vfma.f32	s1, s20, s11
d0057612:	eeab 0aa5 	vfma.f32	s0, s23, s11
d0057616:	eeed 2a25 	vfma.f32	s5, s26, s11
d005761a:	eddd 5a09 	vldr	s11, [sp, #36]	; 0x24
d005761e:	eeaa 8a06 	vfma.f32	s16, s20, s12
d0057622:	eeeb 8a86 	vfma.f32	s17, s23, s12
d0057626:	eead 2a06 	vfma.f32	s4, s26, s12
d005762a:	ed9d 6a06 	vldr	s12, [sp, #24]
d005762e:	eea5 9a24 	vfma.f32	s18, s10, s9
d0057632:	eeea 1a05 	vfma.f32	s3, s20, s10
d0057636:	eeab 1a85 	vfma.f32	s2, s23, s10
d005763a:	eead 3a05 	vfma.f32	s6, s26, s10
d005763e:	ee36 6a65 	vsub.f32	s12, s12, s11
d0057642:	eeee 0a87 	vfma.f32	s1, s29, s14
d0057646:	eeac 0a87 	vfma.f32	s0, s25, s14
d005764a:	eeee 1aa6 	vfma.f32	s3, s29, s13
d005764e:	eeac 1aa6 	vfma.f32	s2, s25, s13
d0057652:	eea6 9a86 	vfma.f32	s18, s13, s12
d0057656:	eee7 9a06 	vfma.f32	s19, s14, s12
d005765a:	eee7 3a86 	vfma.f32	s7, s15, s12
d005765e:	eeae 3a26 	vfma.f32	s6, s28, s13
d0057662:	eeee 2a07 	vfma.f32	s5, s28, s14
d0057666:	eeae 8aa7 	vfma.f32	s16, s29, s15
d005766a:	eeec 8aa7 	vfma.f32	s17, s25, s15
d005766e:	eeae 2a27 	vfma.f32	s4, s28, s15
d0057672:	dd5b      	ble.n	d005772c <submitEntitySolid+0x2a0>
d0057674:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0057678:	f8da 3000 	ldr.w	r3, [sl]
d005767c:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0057680:	ed8d ba0f 	vstr	s22, [sp, #60]	; 0x3c
d0057684:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0057688:	49ef      	ldr	r1, [pc, #956]	; (d0057a48 <submitEntitySolid+0x5bc>)
d005768a:	4af0      	ldr	r2, [pc, #960]	; (d0057a4c <submitEntitySolid+0x5c0>)
d005768c:	ed9d ba01 	vldr	s22, [sp, #4]
d0057690:	eddd fa06 	vldr	s31, [sp, #24]
d0057694:	edd3 7a01 	vldr	s15, [r3, #4]
d0057698:	330c      	adds	r3, #12
d005769a:	ed13 4a03 	vldr	s8, [r3, #-12]
d005769e:	310c      	adds	r1, #12
d00576a0:	ee2b 5aa7 	vmul.f32	s10, s23, s15
d00576a4:	ed53 4a01 	vldr	s9, [r3, #-4]
d00576a8:	ee6c 5a27 	vmul.f32	s11, s24, s15
d00576ac:	4298      	cmp	r0, r3
d00576ae:	ee2c 6aa7 	vmul.f32	s12, s25, s15
d00576b2:	f102 020c 	add.w	r2, r2, #12
d00576b6:	ee61 6a27 	vmul.f32	s13, s2, s15
d00576ba:	ee20 7a27 	vmul.f32	s14, s0, s15
d00576be:	ee68 7aa7 	vmul.f32	s15, s17, s15
d00576c2:	eeaa 5a04 	vfma.f32	s10, s20, s8
d00576c6:	eeea 5a84 	vfma.f32	s11, s21, s8
d00576ca:	eeae 6a84 	vfma.f32	s12, s29, s8
d00576ce:	eee1 6a84 	vfma.f32	s13, s3, s8
d00576d2:	eea0 7a84 	vfma.f32	s14, s1, s8
d00576d6:	eee8 7a04 	vfma.f32	s15, s16, s8
d00576da:	ee3b 5a05 	vadd.f32	s10, s22, s10
d00576de:	ee7f 5a25 	vadd.f32	s11, s30, s11
d00576e2:	ee3f 6a86 	vadd.f32	s12, s31, s12
d00576e6:	ee76 6a89 	vadd.f32	s13, s13, s18
d00576ea:	ee37 7a29 	vadd.f32	s14, s14, s19
d00576ee:	ee77 7aa3 	vadd.f32	s15, s15, s7
d00576f2:	eead 5a24 	vfma.f32	s10, s26, s9
d00576f6:	eeed 5aa4 	vfma.f32	s11, s27, s9
d00576fa:	eeae 6a24 	vfma.f32	s12, s28, s9
d00576fe:	eee3 6a24 	vfma.f32	s13, s6, s9
d0057702:	eea2 7aa4 	vfma.f32	s14, s5, s9
d0057706:	eee2 7a24 	vfma.f32	s15, s4, s9
d005770a:	ed01 5a03 	vstr	s10, [r1, #-12]
d005770e:	ed41 5a02 	vstr	s11, [r1, #-8]
d0057712:	ed01 6a01 	vstr	s12, [r1, #-4]
d0057716:	ed42 6a03 	vstr	s13, [r2, #-12]
d005771a:	ed02 7a02 	vstr	s14, [r2, #-8]
d005771e:	ed42 7a01 	vstr	s15, [r2, #-4]
d0057722:	d1b7      	bne.n	d0057694 <submitEntitySolid+0x208>
d0057724:	eddd fa0e 	vldr	s31, [sp, #56]	; 0x38
d0057728:	ed9d ba0f 	vldr	s22, [sp, #60]	; 0x3c
d005772c:	f8da 3014 	ldr.w	r3, [sl, #20]
d0057730:	2b00      	cmp	r3, #0
d0057732:	9301      	str	r3, [sp, #4]
d0057734:	f340 81e6 	ble.w	d0057b04 <submitEntitySolid+0x678>
d0057738:	f04f 0900 	mov.w	r9, #0
d005773c:	f8df 830c 	ldr.w	r8, [pc, #780]	; d0057a4c <submitEntitySolid+0x5c0>
d0057740:	ed9f aac3 	vldr	s20, [pc, #780]	; d0057a50 <submitEntitySolid+0x5c4>
d0057744:	eddf aac3 	vldr	s21, [pc, #780]	; d0057a54 <submitEntitySolid+0x5c8>
d0057748:	ed9d da0a 	vldr	s26, [sp, #40]	; 0x28
d005774c:	eddd ba0b 	vldr	s23, [sp, #44]	; 0x2c
d0057750:	ed9d ca0c 	vldr	s24, [sp, #48]	; 0x30
d0057754:	eddd ca0d 	vldr	s25, [sp, #52]	; 0x34
d0057758:	f8da 4010 	ldr.w	r4, [sl, #16]
d005775c:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0057760:	58e3      	ldr	r3, [r4, r3]
d0057762:	eb04 1409 	add.w	r4, r4, r9, lsl #4
d0057766:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d005776a:	6862      	ldr	r2, [r4, #4]
d005776c:	68a1      	ldr	r1, [r4, #8]
d005776e:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0057772:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d0057776:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d005777a:	edd5 6a02 	vldr	s13, [r5, #8]
d005777e:	eb01 0741 	add.w	r7, r1, r1, lsl #1
d0057782:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d0057786:	eef4 6aef 	vcmpe.f32	s13, s31
d005778a:	eb08 0787 	add.w	r7, r8, r7, lsl #2
d005778e:	ea4f 0c42 	mov.w	ip, r2, lsl #1
d0057792:	ea4f 0e41 	mov.w	lr, r1, lsl #1
d0057796:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005779a:	dd0e      	ble.n	d00577ba <submitEntitySolid+0x32e>
d005779c:	edd6 7a02 	vldr	s15, [r6, #8]
d00577a0:	eef4 7aef 	vcmpe.f32	s15, s31
d00577a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577a8:	dd07      	ble.n	d00577ba <submitEntitySolid+0x32e>
d00577aa:	edd7 7a02 	vldr	s15, [r7, #8]
d00577ae:	eef4 7aef 	vcmpe.f32	s15, s31
d00577b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577b6:	f300 819f 	bgt.w	d0057af8 <submitEntitySolid+0x66c>
d00577ba:	eef4 6acb 	vcmpe.f32	s13, s22
d00577be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577c2:	d516      	bpl.n	d00577f2 <submitEntitySolid+0x366>
d00577c4:	eb0c 0002 	add.w	r0, ip, r2
d00577c8:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00577cc:	edd0 7a02 	vldr	s15, [r0, #8]
d00577d0:	eef4 7acb 	vcmpe.f32	s15, s22
d00577d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577d8:	d50b      	bpl.n	d00577f2 <submitEntitySolid+0x366>
d00577da:	eb0e 0001 	add.w	r0, lr, r1
d00577de:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00577e2:	edd0 7a02 	vldr	s15, [r0, #8]
d00577e6:	eef4 7acb 	vcmpe.f32	s15, s22
d00577ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577ee:	f100 8183 	bmi.w	d0057af8 <submitEntitySolid+0x66c>
d00577f2:	ed95 6a00 	vldr	s12, [r5]
d00577f6:	edd5 3a02 	vldr	s7, [r5, #8]
d00577fa:	ed96 2a00 	vldr	s4, [r6]
d00577fe:	ed97 5a02 	vldr	s10, [r7, #8]
d0057802:	ee72 1a46 	vsub.f32	s3, s4, s12
d0057806:	edd5 7a01 	vldr	s15, [r5, #4]
d005780a:	ee35 5a63 	vsub.f32	s10, s10, s7
d005780e:	ed96 4a02 	vldr	s8, [r6, #8]
d0057812:	edd7 5a01 	vldr	s11, [r7, #4]
d0057816:	ed97 1a00 	vldr	s2, [r7]
d005781a:	ee34 4a63 	vsub.f32	s8, s8, s7
d005781e:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0057822:	edd6 4a01 	vldr	s9, [r6, #4]
d0057826:	ee31 7a46 	vsub.f32	s14, s2, s12
d005782a:	ee65 2a61 	vnmul.f32	s5, s10, s3
d005782e:	ee74 4ae7 	vsub.f32	s9, s9, s15
d0057832:	ee25 3ac4 	vnmul.f32	s6, s11, s8
d0057836:	eee4 2a07 	vfma.f32	s5, s8, s14
d005783a:	ee27 7a64 	vnmul.f32	s14, s14, s9
d005783e:	eea4 3a85 	vfma.f32	s6, s9, s10
d0057842:	eea1 7aa5 	vfma.f32	s14, s3, s11
d0057846:	ee67 7aa2 	vmul.f32	s15, s15, s5
d005784a:	eee6 7a03 	vfma.f32	s15, s12, s6
d005784e:	eee3 7a87 	vfma.f32	s15, s7, s14
d0057852:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0057856:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005785a:	f280 814d 	bge.w	d0057af8 <submitEntitySolid+0x66c>
d005785e:	eef1 5a66 	vneg.f32	s11, s13
d0057862:	eef4 5ac6 	vcmpe.f32	s11, s12
d0057866:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005786a:	dd1a      	ble.n	d00578a2 <submitEntitySolid+0x416>
d005786c:	eb0c 0002 	add.w	r0, ip, r2
d0057870:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057874:	edd0 7a02 	vldr	s15, [r0, #8]
d0057878:	eef1 7a67 	vneg.f32	s15, s15
d005787c:	eef4 7ac2 	vcmpe.f32	s15, s4
d0057880:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057884:	dd0d      	ble.n	d00578a2 <submitEntitySolid+0x416>
d0057886:	eb0e 0001 	add.w	r0, lr, r1
d005788a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005788e:	edd0 7a02 	vldr	s15, [r0, #8]
d0057892:	eef1 7a67 	vneg.f32	s15, s15
d0057896:	eef4 7ac1 	vcmpe.f32	s15, s2
d005789a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005789e:	f300 812b 	bgt.w	d0057af8 <submitEntitySolid+0x66c>
d00578a2:	eef4 6ac6 	vcmpe.f32	s13, s12
d00578a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578aa:	d516      	bpl.n	d00578da <submitEntitySolid+0x44e>
d00578ac:	eb0c 0002 	add.w	r0, ip, r2
d00578b0:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00578b4:	edd0 7a02 	vldr	s15, [r0, #8]
d00578b8:	eef4 7ac2 	vcmpe.f32	s15, s4
d00578bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578c0:	d50b      	bpl.n	d00578da <submitEntitySolid+0x44e>
d00578c2:	eb0e 0001 	add.w	r0, lr, r1
d00578c6:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00578ca:	edd0 7a02 	vldr	s15, [r0, #8]
d00578ce:	eef4 7ac1 	vcmpe.f32	s15, s2
d00578d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578d6:	f100 810f 	bmi.w	d0057af8 <submitEntitySolid+0x66c>
d00578da:	ee26 7a8a 	vmul.f32	s14, s13, s20
d00578de:	eb0b 0003 	add.w	r0, fp, r3
d00578e2:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00578e6:	eeb1 5a47 	vneg.f32	s10, s14
d00578ea:	edd0 7a01 	vldr	s15, [r0, #4]
d00578ee:	eef4 7ac5 	vcmpe.f32	s15, s10
d00578f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578f6:	d51e      	bpl.n	d0057936 <submitEntitySolid+0x4aa>
d00578f8:	eb0c 0002 	add.w	r0, ip, r2
d00578fc:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057900:	edd0 4a02 	vldr	s9, [r0, #8]
d0057904:	ed90 4a01 	vldr	s8, [r0, #4]
d0057908:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d005790c:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057910:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057914:	d50f      	bpl.n	d0057936 <submitEntitySolid+0x4aa>
d0057916:	eb0e 0001 	add.w	r0, lr, r1
d005791a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005791e:	edd0 4a02 	vldr	s9, [r0, #8]
d0057922:	ed90 4a01 	vldr	s8, [r0, #4]
d0057926:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d005792a:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005792e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057932:	f100 80e1 	bmi.w	d0057af8 <submitEntitySolid+0x66c>
d0057936:	eef4 7ac7 	vcmpe.f32	s15, s14
d005793a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005793e:	dd1e      	ble.n	d005797e <submitEntitySolid+0x4f2>
d0057940:	eb0c 0002 	add.w	r0, ip, r2
d0057944:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057948:	edd0 4a02 	vldr	s9, [r0, #8]
d005794c:	ed90 4a01 	vldr	s8, [r0, #4]
d0057950:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0057954:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057958:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005795c:	dd0f      	ble.n	d005797e <submitEntitySolid+0x4f2>
d005795e:	eb0e 0001 	add.w	r0, lr, r1
d0057962:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057966:	edd0 4a02 	vldr	s9, [r0, #8]
d005796a:	ed90 4a01 	vldr	s8, [r0, #4]
d005796e:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0057972:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057976:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005797a:	f300 80bd 	bgt.w	d0057af8 <submitEntitySolid+0x66c>
d005797e:	eef4 6acb 	vcmpe.f32	s13, s22
d0057982:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057986:	db26      	blt.n	d00579d6 <submitEntitySolid+0x54a>
d0057988:	eb0c 0002 	add.w	r0, ip, r2
d005798c:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057990:	edd0 4a02 	vldr	s9, [r0, #8]
d0057994:	eef4 4acb 	vcmpe.f32	s9, s22
d0057998:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005799c:	db1b      	blt.n	d00579d6 <submitEntitySolid+0x54a>
d005799e:	eb0e 0001 	add.w	r0, lr, r1
d00579a2:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00579a6:	ed90 4a02 	vldr	s8, [r0, #8]
d00579aa:	eeb4 4acb 	vcmpe.f32	s8, s22
d00579ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00579b2:	eef4 5ac6 	vcmpe.f32	s11, s12
d00579b6:	bfac      	ite	ge
d00579b8:	2001      	movge	r0, #1
d00579ba:	2000      	movlt	r0, #0
d00579bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00579c0:	f000 0001 	and.w	r0, r0, #1
d00579c4:	bf88      	it	hi
d00579c6:	2000      	movhi	r0, #0
d00579c8:	b128      	cbz	r0, d00579d6 <submitEntitySolid+0x54a>
d00579ca:	eef4 6a46 	vcmp.f32	s13, s12
d00579ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00579d2:	f280 82a8 	bge.w	d0057f26 <submitEntitySolid+0xa9a>
d00579d6:	2000      	movs	r0, #0
d00579d8:	448e      	add	lr, r1
d00579da:	4462      	add	r2, ip
d00579dc:	491a      	ldr	r1, [pc, #104]	; (d0057a48 <submitEntitySolid+0x5bc>)
d00579de:	445b      	add	r3, fp
d00579e0:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d00579e4:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d00579e8:	eb01 018e 	add.w	r1, r1, lr, lsl #2
d00579ec:	edd2 4a00 	vldr	s9, [r2]
d00579f0:	ed93 6a00 	vldr	s12, [r3]
d00579f4:	ed93 7a02 	vldr	s14, [r3, #8]
d00579f8:	ed91 4a02 	vldr	s8, [r1, #8]
d00579fc:	ee74 2ac6 	vsub.f32	s5, s9, s12
d0057a00:	edd3 6a01 	vldr	s13, [r3, #4]
d0057a04:	ee34 2a47 	vsub.f32	s4, s8, s14
d0057a08:	edd2 5a02 	vldr	s11, [r2, #8]
d0057a0c:	edd1 3a01 	vldr	s7, [r1, #4]
d0057a10:	ed91 3a00 	vldr	s6, [r1]
d0057a14:	ee35 1ac7 	vsub.f32	s2, s11, s14
d0057a18:	ee73 7ae6 	vsub.f32	s15, s7, s13
d0057a1c:	ed92 5a01 	vldr	s10, [r2, #4]
d0057a20:	ee33 8a46 	vsub.f32	s16, s6, s12
d0057a24:	ee62 8a62 	vnmul.f32	s17, s4, s5
d0057a28:	ee75 1a66 	vsub.f32	s3, s10, s13
d0057a2c:	ee27 9ac1 	vnmul.f32	s18, s15, s2
d0057a30:	eee1 8a08 	vfma.f32	s17, s2, s16
d0057a34:	ee28 8a61 	vnmul.f32	s16, s16, s3
d0057a38:	eea1 9a82 	vfma.f32	s18, s3, s4
d0057a3c:	eea2 8aa7 	vfma.f32	s16, s5, s15
d0057a40:	ee68 7aa8 	vmul.f32	s15, s17, s17
d0057a44:	e00e      	b.n	d0057a64 <submitEntitySolid+0x5d8>
d0057a46:	bf00      	nop
d0057a48:	d0134280 	.word	0xd0134280
d0057a4c:	d00a8240 	.word	0xd00a8240
d0057a50:	3f2aaaab 	.word	0x3f2aaaab
d0057a54:	358637bd 	.word	0x358637bd
d0057a58:	3b808081 	.word	0x3b808081
d0057a5c:	3eaaaaab 	.word	0x3eaaaaab
d0057a60:	00000000 	.word	0x00000000
d0057a64:	eee9 7a09 	vfma.f32	s15, s18, s18
d0057a68:	eee8 7a08 	vfma.f32	s15, s16, s16
d0057a6c:	eef4 7aea 	vcmpe.f32	s15, s21
d0057a70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a74:	d940      	bls.n	d0057af8 <submitEntitySolid+0x66c>
d0057a76:	7b63      	ldrb	r3, [r4, #13]
d0057a78:	eddd 2a05 	vldr	s5, [sp, #20]
d0057a7c:	ee0f 3a10 	vmov	s30, r3
d0057a80:	9b04      	ldr	r3, [sp, #16]
d0057a82:	ee72 9a8d 	vadd.f32	s19, s5, s26
d0057a86:	ed5f 2a0c 	vldr	s5, [pc, #-48]	; d0057a58 <submitEntitySolid+0x5cc>
d0057a8a:	eeb8 fa4f 	vcvt.f32.u32	s30, s30
d0057a8e:	ee2f fa22 	vmul.f32	s30, s30, s5
d0057a92:	2b00      	cmp	r3, #0
d0057a94:	d158      	bne.n	d0057b48 <submitEntitySolid+0x6bc>
d0057a96:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0057a9a:	fec9 9a8f 	vmaxnm.f32	s19, s19, s30
d0057a9e:	9001      	str	r0, [sp, #4]
d0057aa0:	fe89 0ac0 	vminnm.f32	s0, s19, s0
d0057aa4:	f7fe fc42 	bl	d005632c <brightnessToShadeF>
d0057aa8:	f894 b00c 	ldrb.w	fp, [r4, #12]
d0057aac:	7ba3      	ldrb	r3, [r4, #14]
d0057aae:	eeb0 8a40 	vmov.f32	s16, s0
d0057ab2:	f00b 0b0f 	and.w	fp, fp, #15
d0057ab6:	9801      	ldr	r0, [sp, #4]
d0057ab8:	b10b      	cbz	r3, d0057abe <submitEntitySolid+0x632>
d0057aba:	f04b 0b10 	orr.w	fp, fp, #16
d0057abe:	b330      	cbz	r0, d0057b0e <submitEntitySolid+0x682>
d0057ac0:	eef0 4a48 	vmov.f32	s9, s16
d0057ac4:	7b62      	ldrb	r2, [r4, #13]
d0057ac6:	4659      	mov	r1, fp
d0057ac8:	9802      	ldr	r0, [sp, #8]
d0057aca:	ed97 3a00 	vldr	s6, [r7]
d0057ace:	edd7 3a01 	vldr	s7, [r7, #4]
d0057ad2:	ed97 4a02 	vldr	s8, [r7, #8]
d0057ad6:	edd6 1a00 	vldr	s3, [r6]
d0057ada:	ed96 2a01 	vldr	s4, [r6, #4]
d0057ade:	edd6 2a02 	vldr	s5, [r6, #8]
d0057ae2:	ed95 0a00 	vldr	s0, [r5]
d0057ae6:	edd5 0a01 	vldr	s1, [r5, #4]
d0057aea:	ed95 1a02 	vldr	s2, [r5, #8]
d0057aee:	f7ff f95f 	bl	d0056db0 <submitClippedTri>
d0057af2:	f8da 3014 	ldr.w	r3, [sl, #20]
d0057af6:	9301      	str	r3, [sp, #4]
d0057af8:	f109 0901 	add.w	r9, r9, #1
d0057afc:	9b01      	ldr	r3, [sp, #4]
d0057afe:	4599      	cmp	r9, r3
d0057b00:	f6ff ae2a 	blt.w	d0057758 <submitEntitySolid+0x2cc>
d0057b04:	b03b      	add	sp, #236	; 0xec
d0057b06:	ecbd 8b10 	vpop	{d8-d15}
d0057b0a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057b0e:	9902      	ldr	r1, [sp, #8]
d0057b10:	9803      	ldr	r0, [sp, #12]
d0057b12:	ed97 3a00 	vldr	s6, [r7]
d0057b16:	edd7 3a01 	vldr	s7, [r7, #4]
d0057b1a:	ed97 4a02 	vldr	s8, [r7, #8]
d0057b1e:	edd6 1a00 	vldr	s3, [r6]
d0057b22:	ed96 2a01 	vldr	s4, [r6, #4]
d0057b26:	edd6 2a02 	vldr	s5, [r6, #8]
d0057b2a:	ed95 0a00 	vldr	s0, [r5]
d0057b2e:	edd5 0a01 	vldr	s1, [r5, #4]
d0057b32:	ed95 1a02 	vldr	s2, [r5, #8]
d0057b36:	f7fe fcef 	bl	d0056518 <clipTriangleToFrustum>
d0057b3a:	2802      	cmp	r0, #2
d0057b3c:	f300 815e 	bgt.w	d0057dfc <submitEntitySolid+0x970>
d0057b40:	f8da 3014 	ldr.w	r3, [sl, #20]
d0057b44:	9301      	str	r3, [sp, #4]
d0057b46:	e7d7      	b.n	d0057af8 <submitEntitySolid+0x66c>
d0057b48:	ee74 da86 	vadd.f32	s27, s9, s12
d0057b4c:	ed1f 6a3d 	vldr	s12, [pc, #-244]	; d0057a5c <submitEntitySolid+0x5d0>
d0057b50:	ee35 ea26 	vadd.f32	s28, s10, s13
d0057b54:	ee75 ea87 	vadd.f32	s29, s11, s14
d0057b58:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0057b5c:	ee7d da83 	vadd.f32	s27, s27, s6
d0057b60:	ee3e ea23 	vadd.f32	s28, s28, s7
d0057b64:	ee7e ea84 	vadd.f32	s29, s29, s8
d0057b68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b6c:	ee6d da86 	vmul.f32	s27, s27, s12
d0057b70:	ee2e ea06 	vmul.f32	s28, s28, s12
d0057b74:	ee6e ea86 	vmul.f32	s29, s29, s12
d0057b78:	dd17      	ble.n	d0057baa <submitEntitySolid+0x71e>
d0057b7a:	ed9d 7a08 	vldr	s14, [sp, #32]
d0057b7e:	ee77 2a4e 	vsub.f32	s5, s14, s28
d0057b82:	ed9d 7a07 	vldr	s14, [sp, #28]
d0057b86:	ee37 3a6d 	vsub.f32	s6, s14, s27
d0057b8a:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0057b8e:	ee37 4a6e 	vsub.f32	s8, s14, s29
d0057b92:	ee22 7aa2 	vmul.f32	s14, s5, s5
d0057b96:	eea3 7a03 	vfma.f32	s14, s6, s6
d0057b9a:	eea4 7a04 	vfma.f32	s14, s8, s8
d0057b9e:	eeb4 7aea 	vcmpe.f32	s14, s21
d0057ba2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ba6:	f300 81a2 	bgt.w	d0057eee <submitEntitySolid+0xa62>
d0057baa:	ed1f 4a53 	vldr	s8, [pc, #-332]	; d0057a60 <submitEntitySolid+0x5d4>
d0057bae:	eef0 2a44 	vmov.f32	s5, s8
d0057bb2:	eeb0 3a44 	vmov.f32	s6, s8
d0057bb6:	eef1 6ae7 	vsqrt.f32	s13, s15
d0057bba:	aa13      	add	r2, sp, #76	; 0x4c
d0057bbc:	4639      	mov	r1, r7
d0057bbe:	9501      	str	r5, [sp, #4]
d0057bc0:	f04f 0b00 	mov.w	fp, #0
d0057bc4:	4615      	mov	r5, r2
d0057bc6:	4627      	mov	r7, r4
d0057bc8:	4632      	mov	r2, r6
d0057bca:	9e04      	ldr	r6, [sp, #16]
d0057bcc:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0057bd0:	eef0 0a6c 	vmov.f32	s1, s25
d0057bd4:	eeb0 6a4f 	vmov.f32	s12, s30
d0057bd8:	eeb0 5a47 	vmov.f32	s10, s14
d0057bdc:	eef0 ca43 	vmov.f32	s25, s6
d0057be0:	eeb0 fa44 	vmov.f32	s30, s8
d0057be4:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0057be8:	eeb0 7a4b 	vmov.f32	s14, s22
d0057bec:	eef0 6a4d 	vmov.f32	s13, s26
d0057bf0:	eeb0 ba6e 	vmov.f32	s22, s29
d0057bf4:	eeb0 da62 	vmov.f32	s26, s5
d0057bf8:	eef0 ea4e 	vmov.f32	s29, s28
d0057bfc:	eeb0 ea6d 	vmov.f32	s28, s27
d0057c00:	ee28 8a27 	vmul.f32	s16, s16, s15
d0057c04:	ee29 9a27 	vmul.f32	s18, s18, s15
d0057c08:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0057c0c:	ee38 2a08 	vadd.f32	s4, s16, s16
d0057c10:	eef0 7a6f 	vmov.f32	s15, s31
d0057c14:	ee39 1a09 	vadd.f32	s2, s18, s18
d0057c18:	ee78 1aa8 	vadd.f32	s3, s17, s17
d0057c1c:	eef0 da48 	vmov.f32	s27, s16
d0057c20:	eef0 fa42 	vmov.f32	s31, s4
d0057c24:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0057c28:	7823      	ldrb	r3, [r4, #0]
d0057c2a:	2b00      	cmp	r3, #0
d0057c2c:	d172      	bne.n	d0057d14 <submitEntitySolid+0x888>
d0057c2e:	ed94 0a02 	vldr	s0, [r4, #8]
d0057c32:	ed94 4a01 	vldr	s8, [r4, #4]
d0057c36:	ee30 0a6e 	vsub.f32	s0, s0, s29
d0057c3a:	edd4 4a03 	vldr	s9, [r4, #12]
d0057c3e:	ee34 4a4e 	vsub.f32	s8, s8, s28
d0057c42:	edd4 3a0a 	vldr	s7, [r4, #40]	; 0x28
d0057c46:	ee74 4acb 	vsub.f32	s9, s9, s22
d0057c4a:	ee60 5a00 	vmul.f32	s11, s0, s0
d0057c4e:	ee23 3aa3 	vmul.f32	s6, s7, s7
d0057c52:	eee4 5a04 	vfma.f32	s11, s8, s8
d0057c56:	eee4 5aa4 	vfma.f32	s11, s9, s9
d0057c5a:	eef4 5a6a 	vcmp.f32	s11, s21
d0057c5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c62:	dd44      	ble.n	d0057cee <submitEntitySolid+0x862>
d0057c64:	eeb4 3a65 	vcmp.f32	s6, s11
d0057c68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c6c:	dd3f      	ble.n	d0057cee <submitEntitySolid+0x862>
d0057c6e:	eeb1 8ae5 	vsqrt.f32	s16, s11
d0057c72:	edd4 2a08 	vldr	s5, [r4, #32]
d0057c76:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0057c7a:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0057c7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c82:	ee85 3a08 	vdiv.f32	s6, s10, s16
d0057c86:	ee24 4a03 	vmul.f32	s8, s8, s6
d0057c8a:	ee20 0a03 	vmul.f32	s0, s0, s6
d0057c8e:	ee64 4a83 	vmul.f32	s9, s9, s6
d0057c92:	f140 80b0 	bpl.w	d0057df6 <submitEntitySolid+0x96a>
d0057c96:	ed94 2a09 	vldr	s4, [r4, #36]	; 0x24
d0057c9a:	eef4 2ac2 	vcmpe.f32	s5, s4
d0057c9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ca2:	da24      	bge.n	d0057cee <submitEntitySolid+0x862>
d0057ca4:	eef4 3ac2 	vcmpe.f32	s7, s4
d0057ca8:	ee65 5a83 	vmul.f32	s11, s11, s6
d0057cac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057cb0:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0057cb4:	f240 8108 	bls.w	d0057ec8 <submitEntitySolid+0xa3c>
d0057cb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057cbc:	f2c0 81bd 	blt.w	d005803a <submitEntitySolid+0xbae>
d0057cc0:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0057cc4:	ee72 2a62 	vsub.f32	s5, s4, s5
d0057cc8:	eeb6 3a08 	vmov.f32	s6, #104	; 0x3f400000  0.750
d0057ccc:	eeb0 8a45 	vmov.f32	s16, s10
d0057cd0:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0057cd4:	ed5f 5a9e 	vldr	s11, [pc, #-632]	; d0057a60 <submitEntitySolid+0x5d4>
d0057cd8:	fec3 5aa5 	vmaxnm.f32	s11, s7, s11
d0057cdc:	fec5 5ac5 	vminnm.f32	s11, s11, s10
d0057ce0:	eea5 8ac3 	vfms.f32	s16, s11, s6
d0057ce4:	eeb5 8ac0 	vcmpe.f32	s16, #0.0
d0057ce8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057cec:	d820      	bhi.n	d0057d30 <submitEntitySolid+0x8a4>
d0057cee:	f10b 0b01 	add.w	fp, fp, #1
d0057cf2:	455e      	cmp	r6, fp
d0057cf4:	d196      	bne.n	d0057c24 <submitEntitySolid+0x798>
d0057cf6:	463c      	mov	r4, r7
d0057cf8:	eef0 fa67 	vmov.f32	s31, s15
d0057cfc:	eeb0 ba47 	vmov.f32	s22, s14
d0057d00:	9d01      	ldr	r5, [sp, #4]
d0057d02:	eeb0 da66 	vmov.f32	s26, s13
d0057d06:	4616      	mov	r6, r2
d0057d08:	eef0 ca60 	vmov.f32	s25, s1
d0057d0c:	460f      	mov	r7, r1
d0057d0e:	eeb0 fa46 	vmov.f32	s30, s12
d0057d12:	e6c0      	b.n	d0057a96 <submitEntitySolid+0x60a>
d0057d14:	ed94 4a04 	vldr	s8, [r4, #16]
d0057d18:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0057d1c:	ed94 0a05 	vldr	s0, [r4, #20]
d0057d20:	edd4 4a06 	vldr	s9, [r4, #24]
d0057d24:	eeb1 4a44 	vneg.f32	s8, s8
d0057d28:	eeb1 0a40 	vneg.f32	s0, s0
d0057d2c:	eef1 4a64 	vneg.f32	s9, s9
d0057d30:	ee60 5a28 	vmul.f32	s11, s0, s17
d0057d34:	eee4 5a09 	vfma.f32	s11, s8, s18
d0057d38:	eee4 5aad 	vfma.f32	s11, s9, s27
d0057d3c:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0057d40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d44:	d9d3      	bls.n	d0057cee <submitEntitySolid+0x862>
d0057d46:	eef5 bac0 	vcmpe.f32	s23, #0.0
d0057d4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d4e:	dd07      	ble.n	d0057d60 <submitEntitySolid+0x8d4>
d0057d50:	edd4 3a07 	vldr	s7, [r4, #28]
d0057d54:	ee6b 3aa3 	vmul.f32	s7, s23, s7
d0057d58:	ee63 3a88 	vmul.f32	s7, s7, s16
d0057d5c:	eee5 9aa3 	vfma.f32	s19, s11, s7
d0057d60:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0057d64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d68:	dd2f      	ble.n	d0057dca <submitEntitySolid+0x93e>
d0057d6a:	ee95 0aa1 	vfnms.f32	s0, s11, s3
d0057d6e:	ee95 4a81 	vfnms.f32	s8, s11, s2
d0057d72:	eed5 4aaf 	vfnms.f32	s9, s11, s31
d0057d76:	ee2d 0a00 	vmul.f32	s0, s26, s0
d0057d7a:	eeac 0a84 	vfma.f32	s0, s25, s8
d0057d7e:	eeaf 0a24 	vfma.f32	s0, s30, s9
d0057d82:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0057d86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d8a:	dd1e      	ble.n	d0057dca <submitEntitySolid+0x93e>
d0057d8c:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d0057d90:	eef4 0a65 	vcmp.f32	s1, s11
d0057d94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d98:	d009      	beq.n	d0057dae <submitEntitySolid+0x922>
d0057d9a:	eef3 5a00 	vmov.f32	s11, #48	; 0x41800000  16.0
d0057d9e:	eef4 0a65 	vcmp.f32	s1, s11
d0057da2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057da6:	f040 811f 	bne.w	d0057fe8 <submitEntitySolid+0xb5c>
d0057daa:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057dae:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057db2:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057db6:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057dba:	edd4 5a07 	vldr	s11, [r4, #28]
d0057dbe:	ee6c 5a25 	vmul.f32	s11, s24, s11
d0057dc2:	ee25 8a88 	vmul.f32	s16, s11, s16
d0057dc6:	eee0 9a08 	vfma.f32	s19, s0, s16
d0057dca:	eef4 9ac5 	vcmpe.f32	s19, s10
d0057dce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057dd2:	db8c      	blt.n	d0057cee <submitEntitySolid+0x862>
d0057dd4:	463c      	mov	r4, r7
d0057dd6:	eef0 fa67 	vmov.f32	s31, s15
d0057dda:	eeb0 ba47 	vmov.f32	s22, s14
d0057dde:	9d01      	ldr	r5, [sp, #4]
d0057de0:	eeb0 da66 	vmov.f32	s26, s13
d0057de4:	4616      	mov	r6, r2
d0057de6:	eef0 ca60 	vmov.f32	s25, s1
d0057dea:	460f      	mov	r7, r1
d0057dec:	eeb0 fa46 	vmov.f32	s30, s12
d0057df0:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0057df4:	e64f      	b.n	d0057a96 <submitEntitySolid+0x60a>
d0057df6:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0057dfa:	e799      	b.n	d0057d30 <submitEntitySolid+0x8a4>
d0057dfc:	1e46      	subs	r6, r0, #1
d0057dfe:	eef0 4a48 	vmov.f32	s9, s16
d0057e02:	4659      	mov	r1, fp
d0057e04:	2501      	movs	r5, #1
d0057e06:	46b3      	mov	fp, r6
d0057e08:	9802      	ldr	r0, [sp, #8]
d0057e0a:	4626      	mov	r6, r4
d0057e0c:	9c03      	ldr	r4, [sp, #12]
d0057e0e:	462f      	mov	r7, r5
d0057e10:	3501      	adds	r5, #1
d0057e12:	7bb3      	ldrb	r3, [r6, #14]
d0057e14:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0057e18:	7b72      	ldrb	r2, [r6, #13]
d0057e1a:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0057e1e:	ed94 0a00 	vldr	s0, [r4]
d0057e22:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d0057e26:	edd4 0a01 	vldr	s1, [r4, #4]
d0057e2a:	eb04 0c8c 	add.w	ip, r4, ip, lsl #2
d0057e2e:	ed94 1a02 	vldr	s2, [r4, #8]
d0057e32:	edd7 1a00 	vldr	s3, [r7]
d0057e36:	ed97 2a01 	vldr	s4, [r7, #4]
d0057e3a:	edd7 2a02 	vldr	s5, [r7, #8]
d0057e3e:	ed9c 3a00 	vldr	s6, [ip]
d0057e42:	eddc 3a01 	vldr	s7, [ip, #4]
d0057e46:	ed9c 4a02 	vldr	s8, [ip, #8]
d0057e4a:	f7fe ffb1 	bl	d0056db0 <submitClippedTri>
d0057e4e:	455d      	cmp	r5, fp
d0057e50:	d1dd      	bne.n	d0057e0e <submitEntitySolid+0x982>
d0057e52:	e675      	b.n	d0057b40 <submitEntitySolid+0x6b4>
d0057e54:	2200      	movs	r2, #0
d0057e56:	ed9a 1a06 	vldr	s2, [sl, #24]
d0057e5a:	4611      	mov	r1, r2
d0057e5c:	e027      	b.n	d0057eae <submitEntitySolid+0xa22>
d0057e5e:	edd5 4a02 	vldr	s9, [r5, #8]
d0057e62:	ab3a      	add	r3, sp, #232	; 0xe8
d0057e64:	ed95 0a01 	vldr	s0, [r5, #4]
d0057e68:	ee74 4acf 	vsub.f32	s9, s9, s30
d0057e6c:	edd5 0a03 	vldr	s1, [r5, #12]
d0057e70:	ee30 0a63 	vsub.f32	s0, s0, s7
d0057e74:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d0057e78:	ee70 0ae1 	vsub.f32	s1, s1, s3
d0057e7c:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0057e80:	ee64 4aa4 	vmul.f32	s9, s9, s9
d0057e84:	ee31 4a04 	vadd.f32	s8, s2, s8
d0057e88:	eee0 4a00 	vfma.f32	s9, s0, s0
d0057e8c:	ee24 4a04 	vmul.f32	s8, s8, s8
d0057e90:	eee0 4aa0 	vfma.f32	s9, s1, s1
d0057e94:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057e98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e9c:	db02      	blt.n	d0057ea4 <submitEntitySolid+0xa18>
d0057e9e:	3101      	adds	r1, #1
d0057ea0:	f843 5c98 	str.w	r5, [r3, #-152]
d0057ea4:	3201      	adds	r2, #1
d0057ea6:	3540      	adds	r5, #64	; 0x40
d0057ea8:	4290      	cmp	r0, r2
d0057eaa:	f340 809a 	ble.w	d0057fe2 <submitEntitySolid+0xb56>
d0057eae:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d0057eb0:	2b00      	cmp	r3, #0
d0057eb2:	d0f7      	beq.n	d0057ea4 <submitEntitySolid+0xa18>
d0057eb4:	782b      	ldrb	r3, [r5, #0]
d0057eb6:	2b01      	cmp	r3, #1
d0057eb8:	d1d1      	bne.n	d0057e5e <submitEntitySolid+0x9d2>
d0057eba:	ab3a      	add	r3, sp, #232	; 0xe8
d0057ebc:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0057ec0:	3101      	adds	r1, #1
d0057ec2:	f843 5c98 	str.w	r5, [r3, #-152]
d0057ec6:	e7ed      	b.n	d0057ea4 <submitEntitySolid+0xa18>
d0057ec8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ecc:	f67f af0f 	bls.w	d0057cee <submitEntitySolid+0x862>
d0057ed0:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0057ed4:	ee72 2a62 	vsub.f32	s5, s4, s5
d0057ed8:	ee85 8aa2 	vdiv.f32	s16, s11, s5
d0057edc:	eddf 5a60 	vldr	s11, [pc, #384]	; d0058060 <submitEntitySolid+0xbd4>
d0057ee0:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0057ee4:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0057ee8:	ee35 8a48 	vsub.f32	s16, s10, s16
d0057eec:	e6fa      	b.n	d0057ce4 <submitEntitySolid+0x858>
d0057eee:	eddf 6a5d 	vldr	s13, [pc, #372]	; d0058064 <submitEntitySolid+0xbd8>
d0057ef2:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0057ef6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057efa:	d407      	bmi.n	d0057f0c <submitEntitySolid+0xa80>
d0057efc:	eddf 6a5a 	vldr	s13, [pc, #360]	; d0058068 <submitEntitySolid+0xbdc>
d0057f00:	eeb4 7a66 	vcmp.f32	s14, s13
d0057f04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f08:	f77f ae55 	ble.w	d0057bb6 <submitEntitySolid+0x72a>
d0057f0c:	eef1 6ac7 	vsqrt.f32	s13, s14
d0057f10:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0057f14:	ee86 7a26 	vdiv.f32	s14, s12, s13
d0057f18:	ee23 3a07 	vmul.f32	s6, s6, s14
d0057f1c:	ee62 2a87 	vmul.f32	s5, s5, s14
d0057f20:	ee24 4a07 	vmul.f32	s8, s8, s14
d0057f24:	e647      	b.n	d0057bb6 <submitEntitySolid+0x72a>
d0057f26:	eef1 6a64 	vneg.f32	s13, s9
d0057f2a:	eef4 6a42 	vcmp.f32	s13, s4
d0057f2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f32:	f63f ad50 	bhi.w	d00579d6 <submitEntitySolid+0x54a>
d0057f36:	eef4 4a42 	vcmp.f32	s9, s4
d0057f3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f3e:	f6ff ad4a 	blt.w	d00579d6 <submitEntitySolid+0x54a>
d0057f42:	eef1 6a44 	vneg.f32	s13, s8
d0057f46:	eef4 6ac1 	vcmpe.f32	s13, s2
d0057f4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f4e:	eeb4 4ac1 	vcmpe.f32	s8, s2
d0057f52:	bf94      	ite	ls
d0057f54:	2001      	movls	r0, #1
d0057f56:	2000      	movhi	r0, #0
d0057f58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f5c:	eef4 7ac5 	vcmpe.f32	s15, s10
d0057f60:	f000 0001 	and.w	r0, r0, #1
d0057f64:	bfb8      	it	lt
d0057f66:	2000      	movlt	r0, #0
d0057f68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f6c:	f000 0001 	and.w	r0, r0, #1
d0057f70:	bfb8      	it	lt
d0057f72:	2000      	movlt	r0, #0
d0057f74:	2800      	cmp	r0, #0
d0057f76:	f43f ad2e 	beq.w	d00579d6 <submitEntitySolid+0x54a>
d0057f7a:	eef4 7a47 	vcmp.f32	s15, s14
d0057f7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f82:	f63f ad28 	bhi.w	d00579d6 <submitEntitySolid+0x54a>
d0057f86:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0057f8a:	200c      	movs	r0, #12
d0057f8c:	fb00 8002 	mla	r0, r0, r2, r8
d0057f90:	eeb1 7a64 	vneg.f32	s14, s9
d0057f94:	edd0 7a01 	vldr	s15, [r0, #4]
d0057f98:	eef4 7a47 	vcmp.f32	s15, s14
d0057f9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fa0:	f6ff ad19 	blt.w	d00579d6 <submitEntitySolid+0x54a>
d0057fa4:	eef4 7a64 	vcmp.f32	s15, s9
d0057fa8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fac:	f63f ad13 	bhi.w	d00579d6 <submitEntitySolid+0x54a>
d0057fb0:	ee24 4a0a 	vmul.f32	s8, s8, s20
d0057fb4:	200c      	movs	r0, #12
d0057fb6:	fb00 8001 	mla	r0, r0, r1, r8
d0057fba:	eeb1 7a44 	vneg.f32	s14, s8
d0057fbe:	edd0 7a01 	vldr	s15, [r0, #4]
d0057fc2:	eef4 7ac7 	vcmpe.f32	s15, s14
d0057fc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fca:	eef4 7ac4 	vcmpe.f32	s15, s8
d0057fce:	bfac      	ite	ge
d0057fd0:	2001      	movge	r0, #1
d0057fd2:	2000      	movlt	r0, #0
d0057fd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fd8:	f000 0001 	and.w	r0, r0, #1
d0057fdc:	bf88      	it	hi
d0057fde:	2000      	movhi	r0, #0
d0057fe0:	e4fa      	b.n	d00579d8 <submitEntitySolid+0x54c>
d0057fe2:	9104      	str	r1, [sp, #16]
d0057fe4:	f7ff baea 	b.w	d00575bc <submitEntitySolid+0x130>
d0057fe8:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0057fec:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d0057ff0:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d0057ff4:	9110      	str	r1, [sp, #64]	; 0x40
d0057ff6:	920f      	str	r2, [sp, #60]	; 0x3c
d0057ff8:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d0057ffc:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d0058000:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d0058004:	900b      	str	r0, [sp, #44]	; 0x2c
d0058006:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d005800a:	edcd 0a06 	vstr	s1, [sp, #24]
d005800e:	f7fc fbbd 	bl	d005478c <powfxt>
d0058012:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0058016:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d005801a:	ed9d 6a11 	vldr	s12, [sp, #68]	; 0x44
d005801e:	9910      	ldr	r1, [sp, #64]	; 0x40
d0058020:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0058022:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d0058026:	ed9d 7a0d 	vldr	s14, [sp, #52]	; 0x34
d005802a:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d005802e:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0058030:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d0058034:	eddd 0a06 	vldr	s1, [sp, #24]
d0058038:	e6bf      	b.n	d0057dba <submitEntitySolid+0x92e>
d005803a:	ee75 5ac2 	vsub.f32	s11, s11, s4
d005803e:	ee73 3ac2 	vsub.f32	s7, s7, s4
d0058042:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0058046:	ee85 8aa3 	vdiv.f32	s16, s11, s7
d005804a:	eddf 5a05 	vldr	s11, [pc, #20]	; d0058060 <submitEntitySolid+0xbd4>
d005804e:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0058052:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0058056:	ee35 8a48 	vsub.f32	s16, s10, s16
d005805a:	ee28 8a03 	vmul.f32	s16, s16, s6
d005805e:	e641      	b.n	d0057ce4 <submitEntitySolid+0x858>
d0058060:	00000000 	.word	0x00000000
d0058064:	3f7fbe77 	.word	0x3f7fbe77
d0058068:	3f8020c5 	.word	0x3f8020c5

d005806c <submitWorldEntities>:
d005806c:	b570      	push	{r4, r5, r6, lr}
d005806e:	4c3e      	ldr	r4, [pc, #248]	; (d0058168 <submitWorldEntities+0xfc>)
d0058070:	4605      	mov	r5, r0
d0058072:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d0058076:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d005807a:	2b00      	cmp	r3, #0
d005807c:	d070      	beq.n	d0058160 <submitWorldEntities+0xf4>
d005807e:	68e3      	ldr	r3, [r4, #12]
d0058080:	2b00      	cmp	r3, #0
d0058082:	d06d      	beq.n	d0058160 <submitWorldEntities+0xf4>
d0058084:	f894 2035 	ldrb.w	r2, [r4, #53]	; 0x35
d0058088:	07d2      	lsls	r2, r2, #31
d005808a:	d569      	bpl.n	d0058160 <submitWorldEntities+0xf4>
d005808c:	edd5 6a01 	vldr	s13, [r5, #4]
d0058090:	ed94 7a01 	vldr	s14, [r4, #4]
d0058094:	ed95 5a00 	vldr	s10, [r5]
d0058098:	ee37 7a66 	vsub.f32	s14, s14, s13
d005809c:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d00580a0:	edd4 6a00 	vldr	s13, [r4]
d00580a4:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d00580a8:	ee76 6ac5 	vsub.f32	s13, s13, s10
d00580ac:	ed94 6a02 	vldr	s12, [r4, #8]
d00580b0:	ee67 7a27 	vmul.f32	s15, s14, s15
d00580b4:	ed95 5a02 	vldr	s10, [r5, #8]
d00580b8:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d00580bc:	ee36 6a45 	vsub.f32	s12, s12, s10
d00580c0:	ed93 5a06 	vldr	s10, [r3, #24]
d00580c4:	eee6 7aa5 	vfma.f32	s15, s13, s11
d00580c8:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d00580cc:	eee6 7a24 	vfma.f32	s15, s12, s9
d00580d0:	ee77 4ac5 	vsub.f32	s9, s15, s10
d00580d4:	eef4 4ae5 	vcmpe.f32	s9, s11
d00580d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00580dc:	dc40      	bgt.n	d0058160 <submitWorldEntities+0xf4>
d00580de:	ee75 4a27 	vadd.f32	s9, s10, s15
d00580e2:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d00580e6:	eef4 4ae5 	vcmpe.f32	s9, s11
d00580ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00580ee:	d437      	bmi.n	d0058160 <submitWorldEntities+0xf4>
d00580f0:	edd5 5a07 	vldr	s11, [r5, #28]
d00580f4:	eeb1 4a64 	vneg.f32	s8, s9
d00580f8:	ed95 3a08 	vldr	s6, [r5, #32]
d00580fc:	ee67 5a25 	vmul.f32	s11, s14, s11
d0058100:	edd5 3a06 	vldr	s7, [r5, #24]
d0058104:	eee6 5a03 	vfma.f32	s11, s12, s6
d0058108:	eee6 5aa3 	vfma.f32	s11, s13, s7
d005810c:	eef4 5ac4 	vcmpe.f32	s11, s8
d0058110:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058114:	d424      	bmi.n	d0058160 <submitWorldEntities+0xf4>
d0058116:	eef4 5ae4 	vcmpe.f32	s11, s9
d005811a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005811e:	dc1f      	bgt.n	d0058160 <submitWorldEntities+0xf4>
d0058120:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d0058124:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d0058128:	ee27 7a25 	vmul.f32	s14, s14, s11
d005812c:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d0058130:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d0058134:	eea7 5a84 	vfma.f32	s10, s15, s8
d0058138:	eea6 7a24 	vfma.f32	s14, s12, s9
d005813c:	eef1 7a45 	vneg.f32	s15, s10
d0058140:	eea6 7aa5 	vfma.f32	s14, s13, s11
d0058144:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0058148:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005814c:	d408      	bmi.n	d0058160 <submitWorldEntities+0xf4>
d005814e:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0058152:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058156:	dc03      	bgt.n	d0058160 <submitWorldEntities+0xf4>
d0058158:	4629      	mov	r1, r5
d005815a:	4620      	mov	r0, r4
d005815c:	f7ff f996 	bl	d005748c <submitEntitySolid>
d0058160:	3460      	adds	r4, #96	; 0x60
d0058162:	42a6      	cmp	r6, r4
d0058164:	d187      	bne.n	d0058076 <submitWorldEntities+0xa>
d0058166:	bd70      	pop	{r4, r5, r6, pc}
d0058168:	d0140340 	.word	0xd0140340

d005816c <Render3D>:
d005816c:	b5f0      	push	{r4, r5, r6, r7, lr}
d005816e:	4604      	mov	r4, r0
d0058170:	4e80      	ldr	r6, [pc, #512]	; (d0058374 <Render3D+0x208>)
d0058172:	2700      	movs	r7, #0
d0058174:	ed2d 8b02 	vpush	{d8}
d0058178:	b089      	sub	sp, #36	; 0x24
d005817a:	6037      	str	r7, [r6, #0]
d005817c:	f7ff ff76 	bl	d005806c <submitWorldEntities>
d0058180:	4620      	mov	r0, r4
d0058182:	f7fc fb9f 	bl	d00548c4 <sb3dParticlesRender>
d0058186:	4b7c      	ldr	r3, [pc, #496]	; (d0058378 <Render3D+0x20c>)
d0058188:	681d      	ldr	r5, [r3, #0]
d005818a:	2d00      	cmp	r5, #0
d005818c:	d04d      	beq.n	d005822a <Render3D+0xbe>
d005818e:	6833      	ldr	r3, [r6, #0]
d0058190:	42bb      	cmp	r3, r7
d0058192:	dd46      	ble.n	d0058222 <Render3D+0xb6>
d0058194:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0058198:	4c78      	ldr	r4, [pc, #480]	; (d005837c <Render3D+0x210>)
d005819a:	eddf 8a79 	vldr	s17, [pc, #484]	; d0058380 <Render3D+0x214>
d005819e:	edd4 7a07 	vldr	s15, [r4, #28]
d00581a2:	3701      	adds	r7, #1
d00581a4:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d00581a8:	ee77 7a88 	vadd.f32	s15, s15, s16
d00581ac:	ee07 3a10 	vmov	s14, r3
d00581b0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00581b4:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00581b8:	ee17 1a90 	vmov	r1, s15
d00581bc:	eef0 7a48 	vmov.f32	s15, s16
d00581c0:	2904      	cmp	r1, #4
d00581c2:	eee7 7a28 	vfma.f32	s15, s14, s17
d00581c6:	bfa8      	it	ge
d00581c8:	2104      	movge	r1, #4
d00581ca:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d00581ce:	b153      	cbz	r3, d00581e6 <Render3D+0x7a>
d00581d0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00581d4:	ee17 3a90 	vmov	r3, s15
d00581d8:	f1c3 0305 	rsb	r3, r3, #5
d00581dc:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00581e0:	4299      	cmp	r1, r3
d00581e2:	bfa8      	it	ge
d00581e4:	4619      	movge	r1, r3
d00581e6:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d00581ea:	f7f9 ff5b 	bl	d00520a4 <shadeColor>
d00581ee:	4605      	mov	r5, r0
d00581f0:	68e3      	ldr	r3, [r4, #12]
d00581f2:	68a2      	ldr	r2, [r4, #8]
d00581f4:	6861      	ldr	r1, [r4, #4]
d00581f6:	9000      	str	r0, [sp, #0]
d00581f8:	6820      	ldr	r0, [r4, #0]
d00581fa:	f7f9 ff05 	bl	d0052008 <drawLine>
d00581fe:	9500      	str	r5, [sp, #0]
d0058200:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0058204:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0058208:	f7f9 fefe 	bl	d0052008 <drawLine>
d005820c:	9500      	str	r5, [sp, #0]
d005820e:	e9d4 2300 	ldrd	r2, r3, [r4]
d0058212:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0058216:	f7f9 fef7 	bl	d0052008 <drawLine>
d005821a:	6833      	ldr	r3, [r6, #0]
d005821c:	3440      	adds	r4, #64	; 0x40
d005821e:	42bb      	cmp	r3, r7
d0058220:	dcbd      	bgt.n	d005819e <Render3D+0x32>
d0058222:	b009      	add	sp, #36	; 0x24
d0058224:	ecbd 8b02 	vpop	{d8}
d0058228:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005822a:	f7f9 fecf 	bl	d0051fcc <resetDepthBuffer>
d005822e:	4b55      	ldr	r3, [pc, #340]	; (d0058384 <Render3D+0x218>)
d0058230:	681f      	ldr	r7, [r3, #0]
d0058232:	b33f      	cbz	r7, d0058284 <Render3D+0x118>
d0058234:	6833      	ldr	r3, [r6, #0]
d0058236:	2b00      	cmp	r3, #0
d0058238:	ddf3      	ble.n	d0058222 <Render3D+0xb6>
d005823a:	4c50      	ldr	r4, [pc, #320]	; (d005837c <Render3D+0x210>)
d005823c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0058240:	3501      	adds	r5, #1
d0058242:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0058244:	8c21      	ldrh	r1, [r4, #32]
d0058246:	6962      	ldr	r2, [r4, #20]
d0058248:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d005824a:	9305      	str	r3, [sp, #20]
d005824c:	9704      	str	r7, [sp, #16]
d005824e:	9003      	str	r0, [sp, #12]
d0058250:	9102      	str	r1, [sp, #8]
d0058252:	9201      	str	r2, [sp, #4]
d0058254:	6923      	ldr	r3, [r4, #16]
d0058256:	9300      	str	r3, [sp, #0]
d0058258:	edd4 1a07 	vldr	s3, [r4, #28]
d005825c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0058260:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0058264:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0058268:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d005826c:	e9d4 0100 	ldrd	r0, r1, [r4]
d0058270:	f7f9 ff28 	bl	d00520c4 <fillTriangleFlat>
d0058274:	6833      	ldr	r3, [r6, #0]
d0058276:	3440      	adds	r4, #64	; 0x40
d0058278:	42ab      	cmp	r3, r5
d005827a:	dcdf      	bgt.n	d005823c <Render3D+0xd0>
d005827c:	b009      	add	sp, #36	; 0x24
d005827e:	ecbd 8b02 	vpop	{d8}
d0058282:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0058284:	4b40      	ldr	r3, [pc, #256]	; (d0058388 <Render3D+0x21c>)
d0058286:	681d      	ldr	r5, [r3, #0]
d0058288:	6833      	ldr	r3, [r6, #0]
d005828a:	2d00      	cmp	r5, #0
d005828c:	d14a      	bne.n	d0058324 <Render3D+0x1b8>
d005828e:	2b00      	cmp	r3, #0
d0058290:	ddc7      	ble.n	d0058222 <Render3D+0xb6>
d0058292:	4c3a      	ldr	r4, [pc, #232]	; (d005837c <Render3D+0x210>)
d0058294:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0058298:	06da      	lsls	r2, r3, #27
d005829a:	d524      	bpl.n	d00582e6 <Render3D+0x17a>
d005829c:	f894 2036 	ldrb.w	r2, [r4, #54]	; 0x36
d00582a0:	3501      	adds	r5, #1
d00582a2:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00582a4:	8c21      	ldrh	r1, [r4, #32]
d00582a6:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d00582a8:	9305      	str	r3, [sp, #20]
d00582aa:	9206      	str	r2, [sp, #24]
d00582ac:	6923      	ldr	r3, [r4, #16]
d00582ae:	9704      	str	r7, [sp, #16]
d00582b0:	9003      	str	r0, [sp, #12]
d00582b2:	9102      	str	r1, [sp, #8]
d00582b4:	6962      	ldr	r2, [r4, #20]
d00582b6:	9300      	str	r3, [sp, #0]
d00582b8:	9201      	str	r2, [sp, #4]
d00582ba:	edd4 1a07 	vldr	s3, [r4, #28]
d00582be:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00582c2:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00582c6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00582ca:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00582ce:	e9d4 0100 	ldrd	r0, r1, [r4]
d00582d2:	f7fa ffc3 	bl	d005325c <fillTriangleDitherBayerT>
d00582d6:	6833      	ldr	r3, [r6, #0]
d00582d8:	3440      	adds	r4, #64	; 0x40
d00582da:	429d      	cmp	r5, r3
d00582dc:	daa1      	bge.n	d0058222 <Render3D+0xb6>
d00582de:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00582e2:	06da      	lsls	r2, r3, #27
d00582e4:	d4da      	bmi.n	d005829c <Render3D+0x130>
d00582e6:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00582e8:	3501      	adds	r5, #1
d00582ea:	8c21      	ldrh	r1, [r4, #32]
d00582ec:	6962      	ldr	r2, [r4, #20]
d00582ee:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d00582f0:	9305      	str	r3, [sp, #20]
d00582f2:	6923      	ldr	r3, [r4, #16]
d00582f4:	9704      	str	r7, [sp, #16]
d00582f6:	9003      	str	r0, [sp, #12]
d00582f8:	9102      	str	r1, [sp, #8]
d00582fa:	9201      	str	r2, [sp, #4]
d00582fc:	9300      	str	r3, [sp, #0]
d00582fe:	edd4 1a07 	vldr	s3, [r4, #28]
d0058302:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0058306:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005830a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005830e:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0058312:	e9d4 0100 	ldrd	r0, r1, [r4]
d0058316:	f7fa fae3 	bl	d00528e0 <fillTriangleDitherBayer>
d005831a:	6833      	ldr	r3, [r6, #0]
d005831c:	3440      	adds	r4, #64	; 0x40
d005831e:	42ab      	cmp	r3, r5
d0058320:	dcb8      	bgt.n	d0058294 <Render3D+0x128>
d0058322:	e77e      	b.n	d0058222 <Render3D+0xb6>
d0058324:	2b00      	cmp	r3, #0
d0058326:	f77f af7c 	ble.w	d0058222 <Render3D+0xb6>
d005832a:	4c14      	ldr	r4, [pc, #80]	; (d005837c <Render3D+0x210>)
d005832c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0058330:	3701      	adds	r7, #1
d0058332:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0058334:	8c21      	ldrh	r1, [r4, #32]
d0058336:	6962      	ldr	r2, [r4, #20]
d0058338:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
d005833a:	9305      	str	r3, [sp, #20]
d005833c:	6923      	ldr	r3, [r4, #16]
d005833e:	9504      	str	r5, [sp, #16]
d0058340:	9003      	str	r0, [sp, #12]
d0058342:	9102      	str	r1, [sp, #8]
d0058344:	9201      	str	r2, [sp, #4]
d0058346:	9300      	str	r3, [sp, #0]
d0058348:	edd4 1a07 	vldr	s3, [r4, #28]
d005834c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0058350:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0058354:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0058358:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d005835c:	e9d4 0100 	ldrd	r0, r1, [r4]
d0058360:	f7fb fc00 	bl	d0053b64 <fillTriangleDitherBayer2Mode>
d0058364:	6833      	ldr	r3, [r6, #0]
d0058366:	3440      	adds	r4, #64	; 0x40
d0058368:	42bb      	cmp	r3, r7
d005836a:	dcdf      	bgt.n	d005832c <Render3D+0x1c0>
d005836c:	b009      	add	sp, #36	; 0x24
d005836e:	ecbd 8b02 	vpop	{d8}
d0058372:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0058374:	d00b4244 	.word	0xd00b4244
d0058378:	d0134264 	.word	0xd0134264
d005837c:	d00b4260 	.word	0xd00b4260
d0058380:	3ca0a0a1 	.word	0x3ca0a0a1
d0058384:	d00b4240 	.word	0xd00b4240
d0058388:	d0134260 	.word	0xd0134260

d005838c <loadMeshSB3D>:
d005838c:	2800      	cmp	r0, #0
d005838e:	d07c      	beq.n	d005848a <loadMeshSB3D+0xfe>
d0058390:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0058394:	460d      	mov	r5, r1
d0058396:	4601      	mov	r1, r0
d0058398:	fab5 f085 	clz	r0, r5
d005839c:	ed2d 8b02 	vpush	{d8}
d00583a0:	0940      	lsrs	r0, r0, #5
d00583a2:	b08c      	sub	sp, #48	; 0x30
d00583a4:	2d00      	cmp	r5, #0
d00583a6:	d06a      	beq.n	d005847e <loadMeshSB3D+0xf2>
d00583a8:	4c6e      	ldr	r4, [pc, #440]	; (d0058564 <loadMeshSB3D+0x1d8>)
d00583aa:	2201      	movs	r2, #1
d00583ac:	eeb0 8a40 	vmov.f32	s16, s0
d00583b0:	7923      	ldrb	r3, [r4, #4]
d00583b2:	7966      	ldrb	r6, [r4, #5]
d00583b4:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00583b8:	79a6      	ldrb	r6, [r4, #6]
d00583ba:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d00583be:	79e6      	ldrb	r6, [r4, #7]
d00583c0:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d00583c4:	681b      	ldr	r3, [r3, #0]
d00583c6:	681b      	ldr	r3, [r3, #0]
d00583c8:	4798      	blx	r3
d00583ca:	2800      	cmp	r0, #0
d00583cc:	d157      	bne.n	d005847e <loadMeshSB3D+0xf2>
d00583ce:	f894 c004 	ldrb.w	ip, [r4, #4]
d00583d2:	2204      	movs	r2, #4
d00583d4:	7961      	ldrb	r1, [r4, #5]
d00583d6:	ab02      	add	r3, sp, #8
d00583d8:	79a7      	ldrb	r7, [r4, #6]
d00583da:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00583de:	79e6      	ldrb	r6, [r4, #7]
d00583e0:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00583e4:	a903      	add	r1, sp, #12
d00583e6:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00583ea:	6836      	ldr	r6, [r6, #0]
d00583ec:	68b6      	ldr	r6, [r6, #8]
d00583ee:	47b0      	blx	r6
d00583f0:	2800      	cmp	r0, #0
d00583f2:	d141      	bne.n	d0058478 <loadMeshSB3D+0xec>
d00583f4:	4b5c      	ldr	r3, [pc, #368]	; (d0058568 <loadMeshSB3D+0x1dc>)
d00583f6:	9a03      	ldr	r2, [sp, #12]
d00583f8:	429a      	cmp	r2, r3
d00583fa:	d13d      	bne.n	d0058478 <loadMeshSB3D+0xec>
d00583fc:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058400:	ab02      	add	r3, sp, #8
d0058402:	7961      	ldrb	r1, [r4, #5]
d0058404:	2204      	movs	r2, #4
d0058406:	79a7      	ldrb	r7, [r4, #6]
d0058408:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d005840c:	79e6      	ldrb	r6, [r4, #7]
d005840e:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058412:	a904      	add	r1, sp, #16
d0058414:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058418:	6836      	ldr	r6, [r6, #0]
d005841a:	68b6      	ldr	r6, [r6, #8]
d005841c:	47b0      	blx	r6
d005841e:	bb58      	cbnz	r0, d0058478 <loadMeshSB3D+0xec>
d0058420:	9b04      	ldr	r3, [sp, #16]
d0058422:	3b02      	subs	r3, #2
d0058424:	2b01      	cmp	r3, #1
d0058426:	d827      	bhi.n	d0058478 <loadMeshSB3D+0xec>
d0058428:	f894 c004 	ldrb.w	ip, [r4, #4]
d005842c:	ab02      	add	r3, sp, #8
d005842e:	7961      	ldrb	r1, [r4, #5]
d0058430:	2204      	movs	r2, #4
d0058432:	79a7      	ldrb	r7, [r4, #6]
d0058434:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058438:	79e6      	ldrb	r6, [r4, #7]
d005843a:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d005843e:	a905      	add	r1, sp, #20
d0058440:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058444:	6836      	ldr	r6, [r6, #0]
d0058446:	68b6      	ldr	r6, [r6, #8]
d0058448:	47b0      	blx	r6
d005844a:	b9a8      	cbnz	r0, d0058478 <loadMeshSB3D+0xec>
d005844c:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058450:	ab02      	add	r3, sp, #8
d0058452:	7961      	ldrb	r1, [r4, #5]
d0058454:	2204      	movs	r2, #4
d0058456:	79a7      	ldrb	r7, [r4, #6]
d0058458:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d005845c:	79e6      	ldrb	r6, [r4, #7]
d005845e:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058462:	a906      	add	r1, sp, #24
d0058464:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058468:	6836      	ldr	r6, [r6, #0]
d005846a:	68b6      	ldr	r6, [r6, #8]
d005846c:	47b0      	blx	r6
d005846e:	b918      	cbnz	r0, d0058478 <loadMeshSB3D+0xec>
d0058470:	9b05      	ldr	r3, [sp, #20]
d0058472:	b10b      	cbz	r3, d0058478 <loadMeshSB3D+0xec>
d0058474:	9e06      	ldr	r6, [sp, #24]
d0058476:	b956      	cbnz	r6, d005848e <loadMeshSB3D+0x102>
d0058478:	2000      	movs	r0, #0
d005847a:	f000 f9ad 	bl	d00587d8 <fclose>
d005847e:	2000      	movs	r0, #0
d0058480:	b00c      	add	sp, #48	; 0x30
d0058482:	ecbd 8b02 	vpop	{d8}
d0058486:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d005848a:	2000      	movs	r0, #0
d005848c:	4770      	bx	lr
d005848e:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0058492:	2700      	movs	r7, #0
d0058494:	606b      	str	r3, [r5, #4]
d0058496:	616e      	str	r6, [r5, #20]
d0058498:	0080      	lsls	r0, r0, #2
d005849a:	60ef      	str	r7, [r5, #12]
d005849c:	f000 fb60 	bl	d0058b60 <malloc>
d00584a0:	4603      	mov	r3, r0
d00584a2:	0130      	lsls	r0, r6, #4
d00584a4:	461e      	mov	r6, r3
d00584a6:	602b      	str	r3, [r5, #0]
d00584a8:	f000 fb5a 	bl	d0058b60 <malloc>
d00584ac:	60af      	str	r7, [r5, #8]
d00584ae:	6128      	str	r0, [r5, #16]
d00584b0:	2e00      	cmp	r6, #0
d00584b2:	f000 8119 	beq.w	d00586e8 <loadMeshSB3D+0x35c>
d00584b6:	2800      	cmp	r0, #0
d00584b8:	f000 8109 	beq.w	d00586ce <loadMeshSB3D+0x342>
d00584bc:	46b8      	mov	r8, r7
d00584be:	e017      	b.n	d00584f0 <loadMeshSB3D+0x164>
d00584c0:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d00584c4:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d00584c8:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d00584cc:	ee66 6a88 	vmul.f32	s13, s13, s16
d00584d0:	682b      	ldr	r3, [r5, #0]
d00584d2:	ee27 7a08 	vmul.f32	s14, s14, s16
d00584d6:	9905      	ldr	r1, [sp, #20]
d00584d8:	ee67 7a88 	vmul.f32	s15, s15, s16
d00584dc:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d00584e0:	4541      	cmp	r1, r8
d00584e2:	edc3 6a00 	vstr	s13, [r3]
d00584e6:	ed83 7a01 	vstr	s14, [r3, #4]
d00584ea:	edc3 7a02 	vstr	s15, [r3, #8]
d00584ee:	d931      	bls.n	d0058554 <loadMeshSB3D+0x1c8>
d00584f0:	f894 c004 	ldrb.w	ip, [r4, #4]
d00584f4:	220c      	movs	r2, #12
d00584f6:	7960      	ldrb	r0, [r4, #5]
d00584f8:	ab02      	add	r3, sp, #8
d00584fa:	79a7      	ldrb	r7, [r4, #6]
d00584fc:	a909      	add	r1, sp, #36	; 0x24
d00584fe:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0058502:	79e6      	ldrb	r6, [r4, #7]
d0058504:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0058508:	2000      	movs	r0, #0
d005850a:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d005850e:	6836      	ldr	r6, [r6, #0]
d0058510:	68b6      	ldr	r6, [r6, #8]
d0058512:	47b0      	blx	r6
d0058514:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0058518:	f108 0801 	add.w	r8, r8, #1
d005851c:	2800      	cmp	r0, #0
d005851e:	d0cf      	beq.n	d00584c0 <loadMeshSB3D+0x134>
d0058520:	6828      	ldr	r0, [r5, #0]
d0058522:	b108      	cbz	r0, d0058528 <loadMeshSB3D+0x19c>
d0058524:	f000 fb24 	bl	d0058b70 <free>
d0058528:	6928      	ldr	r0, [r5, #16]
d005852a:	b108      	cbz	r0, d0058530 <loadMeshSB3D+0x1a4>
d005852c:	f000 fb20 	bl	d0058b70 <free>
d0058530:	68a8      	ldr	r0, [r5, #8]
d0058532:	b108      	cbz	r0, d0058538 <loadMeshSB3D+0x1ac>
d0058534:	f000 fb1c 	bl	d0058b70 <free>
d0058538:	2400      	movs	r4, #0
d005853a:	2300      	movs	r3, #0
d005853c:	4620      	mov	r0, r4
d005853e:	602c      	str	r4, [r5, #0]
d0058540:	612c      	str	r4, [r5, #16]
d0058542:	60ac      	str	r4, [r5, #8]
d0058544:	606c      	str	r4, [r5, #4]
d0058546:	616c      	str	r4, [r5, #20]
d0058548:	60ec      	str	r4, [r5, #12]
d005854a:	61ab      	str	r3, [r5, #24]
d005854c:	f000 f944 	bl	d00587d8 <fclose>
d0058550:	4620      	mov	r0, r4
d0058552:	e795      	b.n	d0058480 <loadMeshSB3D+0xf4>
d0058554:	9b06      	ldr	r3, [sp, #24]
d0058556:	2b00      	cmp	r3, #0
d0058558:	f000 80ac 	beq.w	d00586b4 <loadMeshSB3D+0x328>
d005855c:	4606      	mov	r6, r0
d005855e:	4680      	mov	r8, r0
d0058560:	e090      	b.n	d0058684 <loadMeshSB3D+0x2f8>
d0058562:	bf00      	nop
d0058564:	2001f000 	.word	0x2001f000
d0058568:	44334253 	.word	0x44334253
d005856c:	7921      	ldrb	r1, [r4, #4]
d005856e:	ab02      	add	r3, sp, #8
d0058570:	7967      	ldrb	r7, [r4, #5]
d0058572:	2204      	movs	r2, #4
d0058574:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058578:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d005857c:	79e7      	ldrb	r7, [r4, #7]
d005857e:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058582:	a908      	add	r1, sp, #32
d0058584:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058588:	683f      	ldr	r7, [r7, #0]
d005858a:	68bf      	ldr	r7, [r7, #8]
d005858c:	47b8      	blx	r7
d005858e:	2800      	cmp	r0, #0
d0058590:	d1c6      	bne.n	d0058520 <loadMeshSB3D+0x194>
d0058592:	7921      	ldrb	r1, [r4, #4]
d0058594:	ab02      	add	r3, sp, #8
d0058596:	7967      	ldrb	r7, [r4, #5]
d0058598:	2204      	movs	r2, #4
d005859a:	f894 c006 	ldrb.w	ip, [r4, #6]
d005859e:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d00585a2:	79e7      	ldrb	r7, [r4, #7]
d00585a4:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d00585a8:	a909      	add	r1, sp, #36	; 0x24
d00585aa:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00585ae:	683f      	ldr	r7, [r7, #0]
d00585b0:	68bf      	ldr	r7, [r7, #8]
d00585b2:	47b8      	blx	r7
d00585b4:	2800      	cmp	r0, #0
d00585b6:	d1b3      	bne.n	d0058520 <loadMeshSB3D+0x194>
d00585b8:	7921      	ldrb	r1, [r4, #4]
d00585ba:	ab02      	add	r3, sp, #8
d00585bc:	7967      	ldrb	r7, [r4, #5]
d00585be:	2201      	movs	r2, #1
d00585c0:	f894 c006 	ldrb.w	ip, [r4, #6]
d00585c4:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d00585c8:	79e7      	ldrb	r7, [r4, #7]
d00585ca:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d00585ce:	f10d 0105 	add.w	r1, sp, #5
d00585d2:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00585d6:	683f      	ldr	r7, [r7, #0]
d00585d8:	68bf      	ldr	r7, [r7, #8]
d00585da:	47b8      	blx	r7
d00585dc:	2800      	cmp	r0, #0
d00585de:	d19f      	bne.n	d0058520 <loadMeshSB3D+0x194>
d00585e0:	7921      	ldrb	r1, [r4, #4]
d00585e2:	ab02      	add	r3, sp, #8
d00585e4:	7967      	ldrb	r7, [r4, #5]
d00585e6:	2201      	movs	r2, #1
d00585e8:	f894 c006 	ldrb.w	ip, [r4, #6]
d00585ec:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d00585f0:	79e7      	ldrb	r7, [r4, #7]
d00585f2:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d00585f6:	f10d 0106 	add.w	r1, sp, #6
d00585fa:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00585fe:	683f      	ldr	r7, [r7, #0]
d0058600:	68bf      	ldr	r7, [r7, #8]
d0058602:	47b8      	blx	r7
d0058604:	2800      	cmp	r0, #0
d0058606:	d18b      	bne.n	d0058520 <loadMeshSB3D+0x194>
d0058608:	9b04      	ldr	r3, [sp, #16]
d005860a:	2b02      	cmp	r3, #2
d005860c:	d914      	bls.n	d0058638 <loadMeshSB3D+0x2ac>
d005860e:	7921      	ldrb	r1, [r4, #4]
d0058610:	ab02      	add	r3, sp, #8
d0058612:	7967      	ldrb	r7, [r4, #5]
d0058614:	2201      	movs	r2, #1
d0058616:	f894 c006 	ldrb.w	ip, [r4, #6]
d005861a:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d005861e:	79e7      	ldrb	r7, [r4, #7]
d0058620:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058624:	f10d 0107 	add.w	r1, sp, #7
d0058628:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d005862c:	683f      	ldr	r7, [r7, #0]
d005862e:	68bf      	ldr	r7, [r7, #8]
d0058630:	47b8      	blx	r7
d0058632:	2800      	cmp	r0, #0
d0058634:	f47f af74 	bne.w	d0058520 <loadMeshSB3D+0x194>
d0058638:	9a07      	ldr	r2, [sp, #28]
d005863a:	9b05      	ldr	r3, [sp, #20]
d005863c:	429a      	cmp	r2, r3
d005863e:	f4bf af6f 	bcs.w	d0058520 <loadMeshSB3D+0x194>
d0058642:	9908      	ldr	r1, [sp, #32]
d0058644:	428b      	cmp	r3, r1
d0058646:	f67f af6b 	bls.w	d0058520 <loadMeshSB3D+0x194>
d005864a:	9809      	ldr	r0, [sp, #36]	; 0x24
d005864c:	4283      	cmp	r3, r0
d005864e:	f67f af67 	bls.w	d0058520 <loadMeshSB3D+0x194>
d0058652:	692b      	ldr	r3, [r5, #16]
d0058654:	ea4f 1c06 	mov.w	ip, r6, lsl #4
d0058658:	9f06      	ldr	r7, [sp, #24]
d005865a:	f843 200c 	str.w	r2, [r3, ip]
d005865e:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d0058662:	f89d 2005 	ldrb.w	r2, [sp, #5]
d0058666:	3601      	adds	r6, #1
d0058668:	f89d c006 	ldrb.w	ip, [sp, #6]
d005866c:	f002 020f 	and.w	r2, r2, #15
d0058670:	6059      	str	r1, [r3, #4]
d0058672:	42b7      	cmp	r7, r6
d0058674:	f89d 1007 	ldrb.w	r1, [sp, #7]
d0058678:	6098      	str	r0, [r3, #8]
d005867a:	731a      	strb	r2, [r3, #12]
d005867c:	f883 c00d 	strb.w	ip, [r3, #13]
d0058680:	7399      	strb	r1, [r3, #14]
d0058682:	d917      	bls.n	d00586b4 <loadMeshSB3D+0x328>
d0058684:	7920      	ldrb	r0, [r4, #4]
d0058686:	ab02      	add	r3, sp, #8
d0058688:	7967      	ldrb	r7, [r4, #5]
d005868a:	2204      	movs	r2, #4
d005868c:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058690:	a907      	add	r1, sp, #28
d0058692:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d0058696:	79e7      	ldrb	r7, [r4, #7]
d0058698:	f88d 8007 	strb.w	r8, [sp, #7]
d005869c:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d00586a0:	2000      	movs	r0, #0
d00586a2:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00586a6:	683f      	ldr	r7, [r7, #0]
d00586a8:	68bf      	ldr	r7, [r7, #8]
d00586aa:	47b8      	blx	r7
d00586ac:	2800      	cmp	r0, #0
d00586ae:	f43f af5d 	beq.w	d005856c <loadMeshSB3D+0x1e0>
d00586b2:	e735      	b.n	d0058520 <loadMeshSB3D+0x194>
d00586b4:	2000      	movs	r0, #0
d00586b6:	f000 f88f 	bl	d00587d8 <fclose>
d00586ba:	4628      	mov	r0, r5
d00586bc:	f7fd f9ca 	bl	d0055a54 <meshComputeBoundsRadius>
d00586c0:	4628      	mov	r0, r5
d00586c2:	ed85 0a06 	vstr	s0, [r5, #24]
d00586c6:	f7f9 fc69 	bl	d0051f9c <meshSetDefaultMaterial>
d00586ca:	2001      	movs	r0, #1
d00586cc:	e6d8      	b.n	d0058480 <loadMeshSB3D+0xf4>
d00586ce:	4630      	mov	r0, r6
d00586d0:	f000 fa4e 	bl	d0058b70 <free>
d00586d4:	2400      	movs	r4, #0
d00586d6:	4620      	mov	r0, r4
d00586d8:	602c      	str	r4, [r5, #0]
d00586da:	612c      	str	r4, [r5, #16]
d00586dc:	606c      	str	r4, [r5, #4]
d00586de:	616c      	str	r4, [r5, #20]
d00586e0:	f000 f87a 	bl	d00587d8 <fclose>
d00586e4:	4620      	mov	r0, r4
d00586e6:	e6cb      	b.n	d0058480 <loadMeshSB3D+0xf4>
d00586e8:	2800      	cmp	r0, #0
d00586ea:	d0f3      	beq.n	d00586d4 <loadMeshSB3D+0x348>
d00586ec:	f000 fa40 	bl	d0058b70 <free>
d00586f0:	e7f0      	b.n	d00586d4 <loadMeshSB3D+0x348>
d00586f2:	bf00      	nop

d00586f4 <__errno>:
d00586f4:	4b01      	ldr	r3, [pc, #4]	; (d00586fc <__errno+0x8>)
d00586f6:	6818      	ldr	r0, [r3, #0]
d00586f8:	4770      	bx	lr
d00586fa:	bf00      	nop
d00586fc:	d005af4c 	.word	0xd005af4c

d0058700 <_fclose_r>:
d0058700:	b570      	push	{r4, r5, r6, lr}
d0058702:	4605      	mov	r5, r0
d0058704:	460c      	mov	r4, r1
d0058706:	b911      	cbnz	r1, d005870e <_fclose_r+0xe>
d0058708:	2600      	movs	r6, #0
d005870a:	4630      	mov	r0, r6
d005870c:	bd70      	pop	{r4, r5, r6, pc}
d005870e:	b118      	cbz	r0, d0058718 <_fclose_r+0x18>
d0058710:	6983      	ldr	r3, [r0, #24]
d0058712:	b90b      	cbnz	r3, d0058718 <_fclose_r+0x18>
d0058714:	f000 f982 	bl	d0058a1c <__sinit>
d0058718:	4b2c      	ldr	r3, [pc, #176]	; (d00587cc <_fclose_r+0xcc>)
d005871a:	429c      	cmp	r4, r3
d005871c:	d114      	bne.n	d0058748 <_fclose_r+0x48>
d005871e:	686c      	ldr	r4, [r5, #4]
d0058720:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058722:	07d8      	lsls	r0, r3, #31
d0058724:	d405      	bmi.n	d0058732 <_fclose_r+0x32>
d0058726:	89a3      	ldrh	r3, [r4, #12]
d0058728:	0599      	lsls	r1, r3, #22
d005872a:	d402      	bmi.n	d0058732 <_fclose_r+0x32>
d005872c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005872e:	f000 fa14 	bl	d0058b5a <__retarget_lock_acquire_recursive>
d0058732:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0058736:	b98b      	cbnz	r3, d005875c <_fclose_r+0x5c>
d0058738:	6e66      	ldr	r6, [r4, #100]	; 0x64
d005873a:	f016 0601 	ands.w	r6, r6, #1
d005873e:	d1e3      	bne.n	d0058708 <_fclose_r+0x8>
d0058740:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058742:	f000 fa0b 	bl	d0058b5c <__retarget_lock_release_recursive>
d0058746:	e7e0      	b.n	d005870a <_fclose_r+0xa>
d0058748:	4b21      	ldr	r3, [pc, #132]	; (d00587d0 <_fclose_r+0xd0>)
d005874a:	429c      	cmp	r4, r3
d005874c:	d101      	bne.n	d0058752 <_fclose_r+0x52>
d005874e:	68ac      	ldr	r4, [r5, #8]
d0058750:	e7e6      	b.n	d0058720 <_fclose_r+0x20>
d0058752:	4b20      	ldr	r3, [pc, #128]	; (d00587d4 <_fclose_r+0xd4>)
d0058754:	429c      	cmp	r4, r3
d0058756:	bf08      	it	eq
d0058758:	68ec      	ldreq	r4, [r5, #12]
d005875a:	e7e1      	b.n	d0058720 <_fclose_r+0x20>
d005875c:	4621      	mov	r1, r4
d005875e:	4628      	mov	r0, r5
d0058760:	f000 f842 	bl	d00587e8 <__sflush_r>
d0058764:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0058766:	4606      	mov	r6, r0
d0058768:	b133      	cbz	r3, d0058778 <_fclose_r+0x78>
d005876a:	6a21      	ldr	r1, [r4, #32]
d005876c:	4628      	mov	r0, r5
d005876e:	4798      	blx	r3
d0058770:	2800      	cmp	r0, #0
d0058772:	bfb8      	it	lt
d0058774:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0058778:	89a3      	ldrh	r3, [r4, #12]
d005877a:	061a      	lsls	r2, r3, #24
d005877c:	d503      	bpl.n	d0058786 <_fclose_r+0x86>
d005877e:	6921      	ldr	r1, [r4, #16]
d0058780:	4628      	mov	r0, r5
d0058782:	f000 fa21 	bl	d0058bc8 <_free_r>
d0058786:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058788:	b141      	cbz	r1, d005879c <_fclose_r+0x9c>
d005878a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005878e:	4299      	cmp	r1, r3
d0058790:	d002      	beq.n	d0058798 <_fclose_r+0x98>
d0058792:	4628      	mov	r0, r5
d0058794:	f000 fa18 	bl	d0058bc8 <_free_r>
d0058798:	2300      	movs	r3, #0
d005879a:	6363      	str	r3, [r4, #52]	; 0x34
d005879c:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d005879e:	b121      	cbz	r1, d00587aa <_fclose_r+0xaa>
d00587a0:	4628      	mov	r0, r5
d00587a2:	f000 fa11 	bl	d0058bc8 <_free_r>
d00587a6:	2300      	movs	r3, #0
d00587a8:	64a3      	str	r3, [r4, #72]	; 0x48
d00587aa:	f000 f91f 	bl	d00589ec <__sfp_lock_acquire>
d00587ae:	2300      	movs	r3, #0
d00587b0:	81a3      	strh	r3, [r4, #12]
d00587b2:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00587b4:	07db      	lsls	r3, r3, #31
d00587b6:	d402      	bmi.n	d00587be <_fclose_r+0xbe>
d00587b8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00587ba:	f000 f9cf 	bl	d0058b5c <__retarget_lock_release_recursive>
d00587be:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00587c0:	f000 f9ca 	bl	d0058b58 <__retarget_lock_close_recursive>
d00587c4:	f000 f918 	bl	d00589f8 <__sfp_lock_release>
d00587c8:	e79f      	b.n	d005870a <_fclose_r+0xa>
d00587ca:	bf00      	nop
d00587cc:	d005a6a0 	.word	0xd005a6a0
d00587d0:	d005a6c0 	.word	0xd005a6c0
d00587d4:	d005a680 	.word	0xd005a680

d00587d8 <fclose>:
d00587d8:	4b02      	ldr	r3, [pc, #8]	; (d00587e4 <fclose+0xc>)
d00587da:	4601      	mov	r1, r0
d00587dc:	6818      	ldr	r0, [r3, #0]
d00587de:	f7ff bf8f 	b.w	d0058700 <_fclose_r>
d00587e2:	bf00      	nop
d00587e4:	d005af4c 	.word	0xd005af4c

d00587e8 <__sflush_r>:
d00587e8:	898a      	ldrh	r2, [r1, #12]
d00587ea:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00587ee:	4605      	mov	r5, r0
d00587f0:	0710      	lsls	r0, r2, #28
d00587f2:	460c      	mov	r4, r1
d00587f4:	d458      	bmi.n	d00588a8 <__sflush_r+0xc0>
d00587f6:	684b      	ldr	r3, [r1, #4]
d00587f8:	2b00      	cmp	r3, #0
d00587fa:	dc05      	bgt.n	d0058808 <__sflush_r+0x20>
d00587fc:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00587fe:	2b00      	cmp	r3, #0
d0058800:	dc02      	bgt.n	d0058808 <__sflush_r+0x20>
d0058802:	2000      	movs	r0, #0
d0058804:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0058808:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d005880a:	2e00      	cmp	r6, #0
d005880c:	d0f9      	beq.n	d0058802 <__sflush_r+0x1a>
d005880e:	2300      	movs	r3, #0
d0058810:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0058814:	682f      	ldr	r7, [r5, #0]
d0058816:	602b      	str	r3, [r5, #0]
d0058818:	d032      	beq.n	d0058880 <__sflush_r+0x98>
d005881a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d005881c:	89a3      	ldrh	r3, [r4, #12]
d005881e:	075a      	lsls	r2, r3, #29
d0058820:	d505      	bpl.n	d005882e <__sflush_r+0x46>
d0058822:	6863      	ldr	r3, [r4, #4]
d0058824:	1ac0      	subs	r0, r0, r3
d0058826:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0058828:	b10b      	cbz	r3, d005882e <__sflush_r+0x46>
d005882a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d005882c:	1ac0      	subs	r0, r0, r3
d005882e:	2300      	movs	r3, #0
d0058830:	4602      	mov	r2, r0
d0058832:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0058834:	6a21      	ldr	r1, [r4, #32]
d0058836:	4628      	mov	r0, r5
d0058838:	47b0      	blx	r6
d005883a:	1c43      	adds	r3, r0, #1
d005883c:	89a3      	ldrh	r3, [r4, #12]
d005883e:	d106      	bne.n	d005884e <__sflush_r+0x66>
d0058840:	6829      	ldr	r1, [r5, #0]
d0058842:	291d      	cmp	r1, #29
d0058844:	d82c      	bhi.n	d00588a0 <__sflush_r+0xb8>
d0058846:	4a2a      	ldr	r2, [pc, #168]	; (d00588f0 <__sflush_r+0x108>)
d0058848:	40ca      	lsrs	r2, r1
d005884a:	07d6      	lsls	r6, r2, #31
d005884c:	d528      	bpl.n	d00588a0 <__sflush_r+0xb8>
d005884e:	2200      	movs	r2, #0
d0058850:	6062      	str	r2, [r4, #4]
d0058852:	04d9      	lsls	r1, r3, #19
d0058854:	6922      	ldr	r2, [r4, #16]
d0058856:	6022      	str	r2, [r4, #0]
d0058858:	d504      	bpl.n	d0058864 <__sflush_r+0x7c>
d005885a:	1c42      	adds	r2, r0, #1
d005885c:	d101      	bne.n	d0058862 <__sflush_r+0x7a>
d005885e:	682b      	ldr	r3, [r5, #0]
d0058860:	b903      	cbnz	r3, d0058864 <__sflush_r+0x7c>
d0058862:	6560      	str	r0, [r4, #84]	; 0x54
d0058864:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058866:	602f      	str	r7, [r5, #0]
d0058868:	2900      	cmp	r1, #0
d005886a:	d0ca      	beq.n	d0058802 <__sflush_r+0x1a>
d005886c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0058870:	4299      	cmp	r1, r3
d0058872:	d002      	beq.n	d005887a <__sflush_r+0x92>
d0058874:	4628      	mov	r0, r5
d0058876:	f000 f9a7 	bl	d0058bc8 <_free_r>
d005887a:	2000      	movs	r0, #0
d005887c:	6360      	str	r0, [r4, #52]	; 0x34
d005887e:	e7c1      	b.n	d0058804 <__sflush_r+0x1c>
d0058880:	6a21      	ldr	r1, [r4, #32]
d0058882:	2301      	movs	r3, #1
d0058884:	4628      	mov	r0, r5
d0058886:	47b0      	blx	r6
d0058888:	1c41      	adds	r1, r0, #1
d005888a:	d1c7      	bne.n	d005881c <__sflush_r+0x34>
d005888c:	682b      	ldr	r3, [r5, #0]
d005888e:	2b00      	cmp	r3, #0
d0058890:	d0c4      	beq.n	d005881c <__sflush_r+0x34>
d0058892:	2b1d      	cmp	r3, #29
d0058894:	d001      	beq.n	d005889a <__sflush_r+0xb2>
d0058896:	2b16      	cmp	r3, #22
d0058898:	d101      	bne.n	d005889e <__sflush_r+0xb6>
d005889a:	602f      	str	r7, [r5, #0]
d005889c:	e7b1      	b.n	d0058802 <__sflush_r+0x1a>
d005889e:	89a3      	ldrh	r3, [r4, #12]
d00588a0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00588a4:	81a3      	strh	r3, [r4, #12]
d00588a6:	e7ad      	b.n	d0058804 <__sflush_r+0x1c>
d00588a8:	690f      	ldr	r7, [r1, #16]
d00588aa:	2f00      	cmp	r7, #0
d00588ac:	d0a9      	beq.n	d0058802 <__sflush_r+0x1a>
d00588ae:	0793      	lsls	r3, r2, #30
d00588b0:	680e      	ldr	r6, [r1, #0]
d00588b2:	bf08      	it	eq
d00588b4:	694b      	ldreq	r3, [r1, #20]
d00588b6:	600f      	str	r7, [r1, #0]
d00588b8:	bf18      	it	ne
d00588ba:	2300      	movne	r3, #0
d00588bc:	eba6 0807 	sub.w	r8, r6, r7
d00588c0:	608b      	str	r3, [r1, #8]
d00588c2:	f1b8 0f00 	cmp.w	r8, #0
d00588c6:	dd9c      	ble.n	d0058802 <__sflush_r+0x1a>
d00588c8:	6a21      	ldr	r1, [r4, #32]
d00588ca:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00588cc:	4643      	mov	r3, r8
d00588ce:	463a      	mov	r2, r7
d00588d0:	4628      	mov	r0, r5
d00588d2:	47b0      	blx	r6
d00588d4:	2800      	cmp	r0, #0
d00588d6:	dc06      	bgt.n	d00588e6 <__sflush_r+0xfe>
d00588d8:	89a3      	ldrh	r3, [r4, #12]
d00588da:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00588de:	81a3      	strh	r3, [r4, #12]
d00588e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00588e4:	e78e      	b.n	d0058804 <__sflush_r+0x1c>
d00588e6:	4407      	add	r7, r0
d00588e8:	eba8 0800 	sub.w	r8, r8, r0
d00588ec:	e7e9      	b.n	d00588c2 <__sflush_r+0xda>
d00588ee:	bf00      	nop
d00588f0:	20400001 	.word	0x20400001

d00588f4 <_fflush_r>:
d00588f4:	b538      	push	{r3, r4, r5, lr}
d00588f6:	690b      	ldr	r3, [r1, #16]
d00588f8:	4605      	mov	r5, r0
d00588fa:	460c      	mov	r4, r1
d00588fc:	b913      	cbnz	r3, d0058904 <_fflush_r+0x10>
d00588fe:	2500      	movs	r5, #0
d0058900:	4628      	mov	r0, r5
d0058902:	bd38      	pop	{r3, r4, r5, pc}
d0058904:	b118      	cbz	r0, d005890e <_fflush_r+0x1a>
d0058906:	6983      	ldr	r3, [r0, #24]
d0058908:	b90b      	cbnz	r3, d005890e <_fflush_r+0x1a>
d005890a:	f000 f887 	bl	d0058a1c <__sinit>
d005890e:	4b14      	ldr	r3, [pc, #80]	; (d0058960 <_fflush_r+0x6c>)
d0058910:	429c      	cmp	r4, r3
d0058912:	d11b      	bne.n	d005894c <_fflush_r+0x58>
d0058914:	686c      	ldr	r4, [r5, #4]
d0058916:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005891a:	2b00      	cmp	r3, #0
d005891c:	d0ef      	beq.n	d00588fe <_fflush_r+0xa>
d005891e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0058920:	07d0      	lsls	r0, r2, #31
d0058922:	d404      	bmi.n	d005892e <_fflush_r+0x3a>
d0058924:	0599      	lsls	r1, r3, #22
d0058926:	d402      	bmi.n	d005892e <_fflush_r+0x3a>
d0058928:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005892a:	f000 f916 	bl	d0058b5a <__retarget_lock_acquire_recursive>
d005892e:	4628      	mov	r0, r5
d0058930:	4621      	mov	r1, r4
d0058932:	f7ff ff59 	bl	d00587e8 <__sflush_r>
d0058936:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058938:	07da      	lsls	r2, r3, #31
d005893a:	4605      	mov	r5, r0
d005893c:	d4e0      	bmi.n	d0058900 <_fflush_r+0xc>
d005893e:	89a3      	ldrh	r3, [r4, #12]
d0058940:	059b      	lsls	r3, r3, #22
d0058942:	d4dd      	bmi.n	d0058900 <_fflush_r+0xc>
d0058944:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058946:	f000 f909 	bl	d0058b5c <__retarget_lock_release_recursive>
d005894a:	e7d9      	b.n	d0058900 <_fflush_r+0xc>
d005894c:	4b05      	ldr	r3, [pc, #20]	; (d0058964 <_fflush_r+0x70>)
d005894e:	429c      	cmp	r4, r3
d0058950:	d101      	bne.n	d0058956 <_fflush_r+0x62>
d0058952:	68ac      	ldr	r4, [r5, #8]
d0058954:	e7df      	b.n	d0058916 <_fflush_r+0x22>
d0058956:	4b04      	ldr	r3, [pc, #16]	; (d0058968 <_fflush_r+0x74>)
d0058958:	429c      	cmp	r4, r3
d005895a:	bf08      	it	eq
d005895c:	68ec      	ldreq	r4, [r5, #12]
d005895e:	e7da      	b.n	d0058916 <_fflush_r+0x22>
d0058960:	d005a6a0 	.word	0xd005a6a0
d0058964:	d005a6c0 	.word	0xd005a6c0
d0058968:	d005a680 	.word	0xd005a680

d005896c <std>:
d005896c:	2300      	movs	r3, #0
d005896e:	b510      	push	{r4, lr}
d0058970:	4604      	mov	r4, r0
d0058972:	e9c0 3300 	strd	r3, r3, [r0]
d0058976:	e9c0 3304 	strd	r3, r3, [r0, #16]
d005897a:	6083      	str	r3, [r0, #8]
d005897c:	8181      	strh	r1, [r0, #12]
d005897e:	6643      	str	r3, [r0, #100]	; 0x64
d0058980:	81c2      	strh	r2, [r0, #14]
d0058982:	6183      	str	r3, [r0, #24]
d0058984:	4619      	mov	r1, r3
d0058986:	2208      	movs	r2, #8
d0058988:	305c      	adds	r0, #92	; 0x5c
d005898a:	f000 f915 	bl	d0058bb8 <memset>
d005898e:	4b05      	ldr	r3, [pc, #20]	; (d00589a4 <std+0x38>)
d0058990:	6263      	str	r3, [r4, #36]	; 0x24
d0058992:	4b05      	ldr	r3, [pc, #20]	; (d00589a8 <std+0x3c>)
d0058994:	62a3      	str	r3, [r4, #40]	; 0x28
d0058996:	4b05      	ldr	r3, [pc, #20]	; (d00589ac <std+0x40>)
d0058998:	62e3      	str	r3, [r4, #44]	; 0x2c
d005899a:	4b05      	ldr	r3, [pc, #20]	; (d00589b0 <std+0x44>)
d005899c:	6224      	str	r4, [r4, #32]
d005899e:	6323      	str	r3, [r4, #48]	; 0x30
d00589a0:	bd10      	pop	{r4, pc}
d00589a2:	bf00      	nop
d00589a4:	d0058ef9 	.word	0xd0058ef9
d00589a8:	d0058f1b 	.word	0xd0058f1b
d00589ac:	d0058f53 	.word	0xd0058f53
d00589b0:	d0058f77 	.word	0xd0058f77

d00589b4 <_cleanup_r>:
d00589b4:	4901      	ldr	r1, [pc, #4]	; (d00589bc <_cleanup_r+0x8>)
d00589b6:	f000 b8af 	b.w	d0058b18 <_fwalk_reent>
d00589ba:	bf00      	nop
d00589bc:	d00588f5 	.word	0xd00588f5

d00589c0 <__sfmoreglue>:
d00589c0:	b570      	push	{r4, r5, r6, lr}
d00589c2:	1e4a      	subs	r2, r1, #1
d00589c4:	2568      	movs	r5, #104	; 0x68
d00589c6:	4355      	muls	r5, r2
d00589c8:	460e      	mov	r6, r1
d00589ca:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00589ce:	f000 f94b 	bl	d0058c68 <_malloc_r>
d00589d2:	4604      	mov	r4, r0
d00589d4:	b140      	cbz	r0, d00589e8 <__sfmoreglue+0x28>
d00589d6:	2100      	movs	r1, #0
d00589d8:	e9c0 1600 	strd	r1, r6, [r0]
d00589dc:	300c      	adds	r0, #12
d00589de:	60a0      	str	r0, [r4, #8]
d00589e0:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00589e4:	f000 f8e8 	bl	d0058bb8 <memset>
d00589e8:	4620      	mov	r0, r4
d00589ea:	bd70      	pop	{r4, r5, r6, pc}

d00589ec <__sfp_lock_acquire>:
d00589ec:	4801      	ldr	r0, [pc, #4]	; (d00589f4 <__sfp_lock_acquire+0x8>)
d00589ee:	f000 b8b4 	b.w	d0058b5a <__retarget_lock_acquire_recursive>
d00589f2:	bf00      	nop
d00589f4:	d0146348 	.word	0xd0146348

d00589f8 <__sfp_lock_release>:
d00589f8:	4801      	ldr	r0, [pc, #4]	; (d0058a00 <__sfp_lock_release+0x8>)
d00589fa:	f000 b8af 	b.w	d0058b5c <__retarget_lock_release_recursive>
d00589fe:	bf00      	nop
d0058a00:	d0146348 	.word	0xd0146348

d0058a04 <__sinit_lock_acquire>:
d0058a04:	4801      	ldr	r0, [pc, #4]	; (d0058a0c <__sinit_lock_acquire+0x8>)
d0058a06:	f000 b8a8 	b.w	d0058b5a <__retarget_lock_acquire_recursive>
d0058a0a:	bf00      	nop
d0058a0c:	d0146343 	.word	0xd0146343

d0058a10 <__sinit_lock_release>:
d0058a10:	4801      	ldr	r0, [pc, #4]	; (d0058a18 <__sinit_lock_release+0x8>)
d0058a12:	f000 b8a3 	b.w	d0058b5c <__retarget_lock_release_recursive>
d0058a16:	bf00      	nop
d0058a18:	d0146343 	.word	0xd0146343

d0058a1c <__sinit>:
d0058a1c:	b510      	push	{r4, lr}
d0058a1e:	4604      	mov	r4, r0
d0058a20:	f7ff fff0 	bl	d0058a04 <__sinit_lock_acquire>
d0058a24:	69a3      	ldr	r3, [r4, #24]
d0058a26:	b11b      	cbz	r3, d0058a30 <__sinit+0x14>
d0058a28:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0058a2c:	f7ff bff0 	b.w	d0058a10 <__sinit_lock_release>
d0058a30:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0058a34:	6523      	str	r3, [r4, #80]	; 0x50
d0058a36:	4b13      	ldr	r3, [pc, #76]	; (d0058a84 <__sinit+0x68>)
d0058a38:	4a13      	ldr	r2, [pc, #76]	; (d0058a88 <__sinit+0x6c>)
d0058a3a:	681b      	ldr	r3, [r3, #0]
d0058a3c:	62a2      	str	r2, [r4, #40]	; 0x28
d0058a3e:	42a3      	cmp	r3, r4
d0058a40:	bf04      	itt	eq
d0058a42:	2301      	moveq	r3, #1
d0058a44:	61a3      	streq	r3, [r4, #24]
d0058a46:	4620      	mov	r0, r4
d0058a48:	f000 f820 	bl	d0058a8c <__sfp>
d0058a4c:	6060      	str	r0, [r4, #4]
d0058a4e:	4620      	mov	r0, r4
d0058a50:	f000 f81c 	bl	d0058a8c <__sfp>
d0058a54:	60a0      	str	r0, [r4, #8]
d0058a56:	4620      	mov	r0, r4
d0058a58:	f000 f818 	bl	d0058a8c <__sfp>
d0058a5c:	2200      	movs	r2, #0
d0058a5e:	60e0      	str	r0, [r4, #12]
d0058a60:	2104      	movs	r1, #4
d0058a62:	6860      	ldr	r0, [r4, #4]
d0058a64:	f7ff ff82 	bl	d005896c <std>
d0058a68:	68a0      	ldr	r0, [r4, #8]
d0058a6a:	2201      	movs	r2, #1
d0058a6c:	2109      	movs	r1, #9
d0058a6e:	f7ff ff7d 	bl	d005896c <std>
d0058a72:	68e0      	ldr	r0, [r4, #12]
d0058a74:	2202      	movs	r2, #2
d0058a76:	2112      	movs	r1, #18
d0058a78:	f7ff ff78 	bl	d005896c <std>
d0058a7c:	2301      	movs	r3, #1
d0058a7e:	61a3      	str	r3, [r4, #24]
d0058a80:	e7d2      	b.n	d0058a28 <__sinit+0xc>
d0058a82:	bf00      	nop
d0058a84:	d005a6e0 	.word	0xd005a6e0
d0058a88:	d00589b5 	.word	0xd00589b5

d0058a8c <__sfp>:
d0058a8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0058a8e:	4607      	mov	r7, r0
d0058a90:	f7ff ffac 	bl	d00589ec <__sfp_lock_acquire>
d0058a94:	4b1e      	ldr	r3, [pc, #120]	; (d0058b10 <__sfp+0x84>)
d0058a96:	681e      	ldr	r6, [r3, #0]
d0058a98:	69b3      	ldr	r3, [r6, #24]
d0058a9a:	b913      	cbnz	r3, d0058aa2 <__sfp+0x16>
d0058a9c:	4630      	mov	r0, r6
d0058a9e:	f7ff ffbd 	bl	d0058a1c <__sinit>
d0058aa2:	3648      	adds	r6, #72	; 0x48
d0058aa4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0058aa8:	3b01      	subs	r3, #1
d0058aaa:	d503      	bpl.n	d0058ab4 <__sfp+0x28>
d0058aac:	6833      	ldr	r3, [r6, #0]
d0058aae:	b30b      	cbz	r3, d0058af4 <__sfp+0x68>
d0058ab0:	6836      	ldr	r6, [r6, #0]
d0058ab2:	e7f7      	b.n	d0058aa4 <__sfp+0x18>
d0058ab4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0058ab8:	b9d5      	cbnz	r5, d0058af0 <__sfp+0x64>
d0058aba:	4b16      	ldr	r3, [pc, #88]	; (d0058b14 <__sfp+0x88>)
d0058abc:	60e3      	str	r3, [r4, #12]
d0058abe:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0058ac2:	6665      	str	r5, [r4, #100]	; 0x64
d0058ac4:	f000 f847 	bl	d0058b56 <__retarget_lock_init_recursive>
d0058ac8:	f7ff ff96 	bl	d00589f8 <__sfp_lock_release>
d0058acc:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0058ad0:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0058ad4:	6025      	str	r5, [r4, #0]
d0058ad6:	61a5      	str	r5, [r4, #24]
d0058ad8:	2208      	movs	r2, #8
d0058ada:	4629      	mov	r1, r5
d0058adc:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0058ae0:	f000 f86a 	bl	d0058bb8 <memset>
d0058ae4:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0058ae8:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0058aec:	4620      	mov	r0, r4
d0058aee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0058af0:	3468      	adds	r4, #104	; 0x68
d0058af2:	e7d9      	b.n	d0058aa8 <__sfp+0x1c>
d0058af4:	2104      	movs	r1, #4
d0058af6:	4638      	mov	r0, r7
d0058af8:	f7ff ff62 	bl	d00589c0 <__sfmoreglue>
d0058afc:	4604      	mov	r4, r0
d0058afe:	6030      	str	r0, [r6, #0]
d0058b00:	2800      	cmp	r0, #0
d0058b02:	d1d5      	bne.n	d0058ab0 <__sfp+0x24>
d0058b04:	f7ff ff78 	bl	d00589f8 <__sfp_lock_release>
d0058b08:	230c      	movs	r3, #12
d0058b0a:	603b      	str	r3, [r7, #0]
d0058b0c:	e7ee      	b.n	d0058aec <__sfp+0x60>
d0058b0e:	bf00      	nop
d0058b10:	d005a6e0 	.word	0xd005a6e0
d0058b14:	ffff0001 	.word	0xffff0001

d0058b18 <_fwalk_reent>:
d0058b18:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0058b1c:	4606      	mov	r6, r0
d0058b1e:	4688      	mov	r8, r1
d0058b20:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0058b24:	2700      	movs	r7, #0
d0058b26:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0058b2a:	f1b9 0901 	subs.w	r9, r9, #1
d0058b2e:	d505      	bpl.n	d0058b3c <_fwalk_reent+0x24>
d0058b30:	6824      	ldr	r4, [r4, #0]
d0058b32:	2c00      	cmp	r4, #0
d0058b34:	d1f7      	bne.n	d0058b26 <_fwalk_reent+0xe>
d0058b36:	4638      	mov	r0, r7
d0058b38:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0058b3c:	89ab      	ldrh	r3, [r5, #12]
d0058b3e:	2b01      	cmp	r3, #1
d0058b40:	d907      	bls.n	d0058b52 <_fwalk_reent+0x3a>
d0058b42:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0058b46:	3301      	adds	r3, #1
d0058b48:	d003      	beq.n	d0058b52 <_fwalk_reent+0x3a>
d0058b4a:	4629      	mov	r1, r5
d0058b4c:	4630      	mov	r0, r6
d0058b4e:	47c0      	blx	r8
d0058b50:	4307      	orrs	r7, r0
d0058b52:	3568      	adds	r5, #104	; 0x68
d0058b54:	e7e9      	b.n	d0058b2a <_fwalk_reent+0x12>

d0058b56 <__retarget_lock_init_recursive>:
d0058b56:	4770      	bx	lr

d0058b58 <__retarget_lock_close_recursive>:
d0058b58:	4770      	bx	lr

d0058b5a <__retarget_lock_acquire_recursive>:
d0058b5a:	4770      	bx	lr

d0058b5c <__retarget_lock_release_recursive>:
d0058b5c:	4770      	bx	lr
	...

d0058b60 <malloc>:
d0058b60:	4b02      	ldr	r3, [pc, #8]	; (d0058b6c <malloc+0xc>)
d0058b62:	4601      	mov	r1, r0
d0058b64:	6818      	ldr	r0, [r3, #0]
d0058b66:	f000 b87f 	b.w	d0058c68 <_malloc_r>
d0058b6a:	bf00      	nop
d0058b6c:	d005af4c 	.word	0xd005af4c

d0058b70 <free>:
d0058b70:	4b02      	ldr	r3, [pc, #8]	; (d0058b7c <free+0xc>)
d0058b72:	4601      	mov	r1, r0
d0058b74:	6818      	ldr	r0, [r3, #0]
d0058b76:	f000 b827 	b.w	d0058bc8 <_free_r>
d0058b7a:	bf00      	nop
d0058b7c:	d005af4c 	.word	0xd005af4c

d0058b80 <memcmp>:
d0058b80:	b530      	push	{r4, r5, lr}
d0058b82:	3901      	subs	r1, #1
d0058b84:	2400      	movs	r4, #0
d0058b86:	42a2      	cmp	r2, r4
d0058b88:	d101      	bne.n	d0058b8e <memcmp+0xe>
d0058b8a:	2000      	movs	r0, #0
d0058b8c:	e005      	b.n	d0058b9a <memcmp+0x1a>
d0058b8e:	5d03      	ldrb	r3, [r0, r4]
d0058b90:	3401      	adds	r4, #1
d0058b92:	5d0d      	ldrb	r5, [r1, r4]
d0058b94:	42ab      	cmp	r3, r5
d0058b96:	d0f6      	beq.n	d0058b86 <memcmp+0x6>
d0058b98:	1b58      	subs	r0, r3, r5
d0058b9a:	bd30      	pop	{r4, r5, pc}

d0058b9c <memcpy>:
d0058b9c:	440a      	add	r2, r1
d0058b9e:	4291      	cmp	r1, r2
d0058ba0:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0058ba4:	d100      	bne.n	d0058ba8 <memcpy+0xc>
d0058ba6:	4770      	bx	lr
d0058ba8:	b510      	push	{r4, lr}
d0058baa:	f811 4b01 	ldrb.w	r4, [r1], #1
d0058bae:	f803 4f01 	strb.w	r4, [r3, #1]!
d0058bb2:	4291      	cmp	r1, r2
d0058bb4:	d1f9      	bne.n	d0058baa <memcpy+0xe>
d0058bb6:	bd10      	pop	{r4, pc}

d0058bb8 <memset>:
d0058bb8:	4402      	add	r2, r0
d0058bba:	4603      	mov	r3, r0
d0058bbc:	4293      	cmp	r3, r2
d0058bbe:	d100      	bne.n	d0058bc2 <memset+0xa>
d0058bc0:	4770      	bx	lr
d0058bc2:	f803 1b01 	strb.w	r1, [r3], #1
d0058bc6:	e7f9      	b.n	d0058bbc <memset+0x4>

d0058bc8 <_free_r>:
d0058bc8:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0058bca:	2900      	cmp	r1, #0
d0058bcc:	d048      	beq.n	d0058c60 <_free_r+0x98>
d0058bce:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0058bd2:	9001      	str	r0, [sp, #4]
d0058bd4:	2b00      	cmp	r3, #0
d0058bd6:	f1a1 0404 	sub.w	r4, r1, #4
d0058bda:	bfb8      	it	lt
d0058bdc:	18e4      	addlt	r4, r4, r3
d0058bde:	f000 fa15 	bl	d005900c <__malloc_lock>
d0058be2:	4a20      	ldr	r2, [pc, #128]	; (d0058c64 <_free_r+0x9c>)
d0058be4:	9801      	ldr	r0, [sp, #4]
d0058be6:	6813      	ldr	r3, [r2, #0]
d0058be8:	4615      	mov	r5, r2
d0058bea:	b933      	cbnz	r3, d0058bfa <_free_r+0x32>
d0058bec:	6063      	str	r3, [r4, #4]
d0058bee:	6014      	str	r4, [r2, #0]
d0058bf0:	b003      	add	sp, #12
d0058bf2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0058bf6:	f000 ba0f 	b.w	d0059018 <__malloc_unlock>
d0058bfa:	42a3      	cmp	r3, r4
d0058bfc:	d90b      	bls.n	d0058c16 <_free_r+0x4e>
d0058bfe:	6821      	ldr	r1, [r4, #0]
d0058c00:	1862      	adds	r2, r4, r1
d0058c02:	4293      	cmp	r3, r2
d0058c04:	bf04      	itt	eq
d0058c06:	681a      	ldreq	r2, [r3, #0]
d0058c08:	685b      	ldreq	r3, [r3, #4]
d0058c0a:	6063      	str	r3, [r4, #4]
d0058c0c:	bf04      	itt	eq
d0058c0e:	1852      	addeq	r2, r2, r1
d0058c10:	6022      	streq	r2, [r4, #0]
d0058c12:	602c      	str	r4, [r5, #0]
d0058c14:	e7ec      	b.n	d0058bf0 <_free_r+0x28>
d0058c16:	461a      	mov	r2, r3
d0058c18:	685b      	ldr	r3, [r3, #4]
d0058c1a:	b10b      	cbz	r3, d0058c20 <_free_r+0x58>
d0058c1c:	42a3      	cmp	r3, r4
d0058c1e:	d9fa      	bls.n	d0058c16 <_free_r+0x4e>
d0058c20:	6811      	ldr	r1, [r2, #0]
d0058c22:	1855      	adds	r5, r2, r1
d0058c24:	42a5      	cmp	r5, r4
d0058c26:	d10b      	bne.n	d0058c40 <_free_r+0x78>
d0058c28:	6824      	ldr	r4, [r4, #0]
d0058c2a:	4421      	add	r1, r4
d0058c2c:	1854      	adds	r4, r2, r1
d0058c2e:	42a3      	cmp	r3, r4
d0058c30:	6011      	str	r1, [r2, #0]
d0058c32:	d1dd      	bne.n	d0058bf0 <_free_r+0x28>
d0058c34:	681c      	ldr	r4, [r3, #0]
d0058c36:	685b      	ldr	r3, [r3, #4]
d0058c38:	6053      	str	r3, [r2, #4]
d0058c3a:	4421      	add	r1, r4
d0058c3c:	6011      	str	r1, [r2, #0]
d0058c3e:	e7d7      	b.n	d0058bf0 <_free_r+0x28>
d0058c40:	d902      	bls.n	d0058c48 <_free_r+0x80>
d0058c42:	230c      	movs	r3, #12
d0058c44:	6003      	str	r3, [r0, #0]
d0058c46:	e7d3      	b.n	d0058bf0 <_free_r+0x28>
d0058c48:	6825      	ldr	r5, [r4, #0]
d0058c4a:	1961      	adds	r1, r4, r5
d0058c4c:	428b      	cmp	r3, r1
d0058c4e:	bf04      	itt	eq
d0058c50:	6819      	ldreq	r1, [r3, #0]
d0058c52:	685b      	ldreq	r3, [r3, #4]
d0058c54:	6063      	str	r3, [r4, #4]
d0058c56:	bf04      	itt	eq
d0058c58:	1949      	addeq	r1, r1, r5
d0058c5a:	6021      	streq	r1, [r4, #0]
d0058c5c:	6054      	str	r4, [r2, #4]
d0058c5e:	e7c7      	b.n	d0058bf0 <_free_r+0x28>
d0058c60:	b003      	add	sp, #12
d0058c62:	bd30      	pop	{r4, r5, pc}
d0058c64:	d0140280 	.word	0xd0140280

d0058c68 <_malloc_r>:
d0058c68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0058c6a:	1ccd      	adds	r5, r1, #3
d0058c6c:	f025 0503 	bic.w	r5, r5, #3
d0058c70:	3508      	adds	r5, #8
d0058c72:	2d0c      	cmp	r5, #12
d0058c74:	bf38      	it	cc
d0058c76:	250c      	movcc	r5, #12
d0058c78:	2d00      	cmp	r5, #0
d0058c7a:	4606      	mov	r6, r0
d0058c7c:	db01      	blt.n	d0058c82 <_malloc_r+0x1a>
d0058c7e:	42a9      	cmp	r1, r5
d0058c80:	d903      	bls.n	d0058c8a <_malloc_r+0x22>
d0058c82:	230c      	movs	r3, #12
d0058c84:	6033      	str	r3, [r6, #0]
d0058c86:	2000      	movs	r0, #0
d0058c88:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0058c8a:	f000 f9bf 	bl	d005900c <__malloc_lock>
d0058c8e:	4921      	ldr	r1, [pc, #132]	; (d0058d14 <_malloc_r+0xac>)
d0058c90:	680a      	ldr	r2, [r1, #0]
d0058c92:	4614      	mov	r4, r2
d0058c94:	b99c      	cbnz	r4, d0058cbe <_malloc_r+0x56>
d0058c96:	4f20      	ldr	r7, [pc, #128]	; (d0058d18 <_malloc_r+0xb0>)
d0058c98:	683b      	ldr	r3, [r7, #0]
d0058c9a:	b923      	cbnz	r3, d0058ca6 <_malloc_r+0x3e>
d0058c9c:	4621      	mov	r1, r4
d0058c9e:	4630      	mov	r0, r6
d0058ca0:	f7f7 fa1e 	bl	d00500e0 <_sbrk_r>
d0058ca4:	6038      	str	r0, [r7, #0]
d0058ca6:	4629      	mov	r1, r5
d0058ca8:	4630      	mov	r0, r6
d0058caa:	f7f7 fa19 	bl	d00500e0 <_sbrk_r>
d0058cae:	1c43      	adds	r3, r0, #1
d0058cb0:	d123      	bne.n	d0058cfa <_malloc_r+0x92>
d0058cb2:	230c      	movs	r3, #12
d0058cb4:	6033      	str	r3, [r6, #0]
d0058cb6:	4630      	mov	r0, r6
d0058cb8:	f000 f9ae 	bl	d0059018 <__malloc_unlock>
d0058cbc:	e7e3      	b.n	d0058c86 <_malloc_r+0x1e>
d0058cbe:	6823      	ldr	r3, [r4, #0]
d0058cc0:	1b5b      	subs	r3, r3, r5
d0058cc2:	d417      	bmi.n	d0058cf4 <_malloc_r+0x8c>
d0058cc4:	2b0b      	cmp	r3, #11
d0058cc6:	d903      	bls.n	d0058cd0 <_malloc_r+0x68>
d0058cc8:	6023      	str	r3, [r4, #0]
d0058cca:	441c      	add	r4, r3
d0058ccc:	6025      	str	r5, [r4, #0]
d0058cce:	e004      	b.n	d0058cda <_malloc_r+0x72>
d0058cd0:	6863      	ldr	r3, [r4, #4]
d0058cd2:	42a2      	cmp	r2, r4
d0058cd4:	bf0c      	ite	eq
d0058cd6:	600b      	streq	r3, [r1, #0]
d0058cd8:	6053      	strne	r3, [r2, #4]
d0058cda:	4630      	mov	r0, r6
d0058cdc:	f000 f99c 	bl	d0059018 <__malloc_unlock>
d0058ce0:	f104 000b 	add.w	r0, r4, #11
d0058ce4:	1d23      	adds	r3, r4, #4
d0058ce6:	f020 0007 	bic.w	r0, r0, #7
d0058cea:	1ac2      	subs	r2, r0, r3
d0058cec:	d0cc      	beq.n	d0058c88 <_malloc_r+0x20>
d0058cee:	1a1b      	subs	r3, r3, r0
d0058cf0:	50a3      	str	r3, [r4, r2]
d0058cf2:	e7c9      	b.n	d0058c88 <_malloc_r+0x20>
d0058cf4:	4622      	mov	r2, r4
d0058cf6:	6864      	ldr	r4, [r4, #4]
d0058cf8:	e7cc      	b.n	d0058c94 <_malloc_r+0x2c>
d0058cfa:	1cc4      	adds	r4, r0, #3
d0058cfc:	f024 0403 	bic.w	r4, r4, #3
d0058d00:	42a0      	cmp	r0, r4
d0058d02:	d0e3      	beq.n	d0058ccc <_malloc_r+0x64>
d0058d04:	1a21      	subs	r1, r4, r0
d0058d06:	4630      	mov	r0, r6
d0058d08:	f7f7 f9ea 	bl	d00500e0 <_sbrk_r>
d0058d0c:	3001      	adds	r0, #1
d0058d0e:	d1dd      	bne.n	d0058ccc <_malloc_r+0x64>
d0058d10:	e7cf      	b.n	d0058cb2 <_malloc_r+0x4a>
d0058d12:	bf00      	nop
d0058d14:	d0140280 	.word	0xd0140280
d0058d18:	d0140284 	.word	0xd0140284

d0058d1c <setbuf>:
d0058d1c:	2900      	cmp	r1, #0
d0058d1e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0058d22:	bf0c      	ite	eq
d0058d24:	2202      	moveq	r2, #2
d0058d26:	2200      	movne	r2, #0
d0058d28:	f000 b800 	b.w	d0058d2c <setvbuf>

d0058d2c <setvbuf>:
d0058d2c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0058d30:	461d      	mov	r5, r3
d0058d32:	4b5d      	ldr	r3, [pc, #372]	; (d0058ea8 <setvbuf+0x17c>)
d0058d34:	681f      	ldr	r7, [r3, #0]
d0058d36:	4604      	mov	r4, r0
d0058d38:	460e      	mov	r6, r1
d0058d3a:	4690      	mov	r8, r2
d0058d3c:	b127      	cbz	r7, d0058d48 <setvbuf+0x1c>
d0058d3e:	69bb      	ldr	r3, [r7, #24]
d0058d40:	b913      	cbnz	r3, d0058d48 <setvbuf+0x1c>
d0058d42:	4638      	mov	r0, r7
d0058d44:	f7ff fe6a 	bl	d0058a1c <__sinit>
d0058d48:	4b58      	ldr	r3, [pc, #352]	; (d0058eac <setvbuf+0x180>)
d0058d4a:	429c      	cmp	r4, r3
d0058d4c:	d167      	bne.n	d0058e1e <setvbuf+0xf2>
d0058d4e:	687c      	ldr	r4, [r7, #4]
d0058d50:	f1b8 0f02 	cmp.w	r8, #2
d0058d54:	d006      	beq.n	d0058d64 <setvbuf+0x38>
d0058d56:	f1b8 0f01 	cmp.w	r8, #1
d0058d5a:	f200 809f 	bhi.w	d0058e9c <setvbuf+0x170>
d0058d5e:	2d00      	cmp	r5, #0
d0058d60:	f2c0 809c 	blt.w	d0058e9c <setvbuf+0x170>
d0058d64:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058d66:	07db      	lsls	r3, r3, #31
d0058d68:	d405      	bmi.n	d0058d76 <setvbuf+0x4a>
d0058d6a:	89a3      	ldrh	r3, [r4, #12]
d0058d6c:	0598      	lsls	r0, r3, #22
d0058d6e:	d402      	bmi.n	d0058d76 <setvbuf+0x4a>
d0058d70:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058d72:	f7ff fef2 	bl	d0058b5a <__retarget_lock_acquire_recursive>
d0058d76:	4621      	mov	r1, r4
d0058d78:	4638      	mov	r0, r7
d0058d7a:	f7ff fdbb 	bl	d00588f4 <_fflush_r>
d0058d7e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058d80:	b141      	cbz	r1, d0058d94 <setvbuf+0x68>
d0058d82:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0058d86:	4299      	cmp	r1, r3
d0058d88:	d002      	beq.n	d0058d90 <setvbuf+0x64>
d0058d8a:	4638      	mov	r0, r7
d0058d8c:	f7ff ff1c 	bl	d0058bc8 <_free_r>
d0058d90:	2300      	movs	r3, #0
d0058d92:	6363      	str	r3, [r4, #52]	; 0x34
d0058d94:	2300      	movs	r3, #0
d0058d96:	61a3      	str	r3, [r4, #24]
d0058d98:	6063      	str	r3, [r4, #4]
d0058d9a:	89a3      	ldrh	r3, [r4, #12]
d0058d9c:	0619      	lsls	r1, r3, #24
d0058d9e:	d503      	bpl.n	d0058da8 <setvbuf+0x7c>
d0058da0:	6921      	ldr	r1, [r4, #16]
d0058da2:	4638      	mov	r0, r7
d0058da4:	f7ff ff10 	bl	d0058bc8 <_free_r>
d0058da8:	89a3      	ldrh	r3, [r4, #12]
d0058daa:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0058dae:	f023 0303 	bic.w	r3, r3, #3
d0058db2:	f1b8 0f02 	cmp.w	r8, #2
d0058db6:	81a3      	strh	r3, [r4, #12]
d0058db8:	d06c      	beq.n	d0058e94 <setvbuf+0x168>
d0058dba:	ab01      	add	r3, sp, #4
d0058dbc:	466a      	mov	r2, sp
d0058dbe:	4621      	mov	r1, r4
d0058dc0:	4638      	mov	r0, r7
d0058dc2:	f000 f8ff 	bl	d0058fc4 <__swhatbuf_r>
d0058dc6:	89a3      	ldrh	r3, [r4, #12]
d0058dc8:	4318      	orrs	r0, r3
d0058dca:	81a0      	strh	r0, [r4, #12]
d0058dcc:	2d00      	cmp	r5, #0
d0058dce:	d130      	bne.n	d0058e32 <setvbuf+0x106>
d0058dd0:	9d00      	ldr	r5, [sp, #0]
d0058dd2:	4628      	mov	r0, r5
d0058dd4:	f7ff fec4 	bl	d0058b60 <malloc>
d0058dd8:	4606      	mov	r6, r0
d0058dda:	2800      	cmp	r0, #0
d0058ddc:	d155      	bne.n	d0058e8a <setvbuf+0x15e>
d0058dde:	f8dd 9000 	ldr.w	r9, [sp]
d0058de2:	45a9      	cmp	r9, r5
d0058de4:	d14a      	bne.n	d0058e7c <setvbuf+0x150>
d0058de6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0058dea:	2200      	movs	r2, #0
d0058dec:	60a2      	str	r2, [r4, #8]
d0058dee:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0058df2:	6022      	str	r2, [r4, #0]
d0058df4:	6122      	str	r2, [r4, #16]
d0058df6:	2201      	movs	r2, #1
d0058df8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0058dfc:	6162      	str	r2, [r4, #20]
d0058dfe:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0058e00:	f043 0302 	orr.w	r3, r3, #2
d0058e04:	07d2      	lsls	r2, r2, #31
d0058e06:	81a3      	strh	r3, [r4, #12]
d0058e08:	d405      	bmi.n	d0058e16 <setvbuf+0xea>
d0058e0a:	f413 7f00 	tst.w	r3, #512	; 0x200
d0058e0e:	d102      	bne.n	d0058e16 <setvbuf+0xea>
d0058e10:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058e12:	f7ff fea3 	bl	d0058b5c <__retarget_lock_release_recursive>
d0058e16:	4628      	mov	r0, r5
d0058e18:	b003      	add	sp, #12
d0058e1a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0058e1e:	4b24      	ldr	r3, [pc, #144]	; (d0058eb0 <setvbuf+0x184>)
d0058e20:	429c      	cmp	r4, r3
d0058e22:	d101      	bne.n	d0058e28 <setvbuf+0xfc>
d0058e24:	68bc      	ldr	r4, [r7, #8]
d0058e26:	e793      	b.n	d0058d50 <setvbuf+0x24>
d0058e28:	4b22      	ldr	r3, [pc, #136]	; (d0058eb4 <setvbuf+0x188>)
d0058e2a:	429c      	cmp	r4, r3
d0058e2c:	bf08      	it	eq
d0058e2e:	68fc      	ldreq	r4, [r7, #12]
d0058e30:	e78e      	b.n	d0058d50 <setvbuf+0x24>
d0058e32:	2e00      	cmp	r6, #0
d0058e34:	d0cd      	beq.n	d0058dd2 <setvbuf+0xa6>
d0058e36:	69bb      	ldr	r3, [r7, #24]
d0058e38:	b913      	cbnz	r3, d0058e40 <setvbuf+0x114>
d0058e3a:	4638      	mov	r0, r7
d0058e3c:	f7ff fdee 	bl	d0058a1c <__sinit>
d0058e40:	f1b8 0f01 	cmp.w	r8, #1
d0058e44:	bf08      	it	eq
d0058e46:	89a3      	ldrheq	r3, [r4, #12]
d0058e48:	6026      	str	r6, [r4, #0]
d0058e4a:	bf04      	itt	eq
d0058e4c:	f043 0301 	orreq.w	r3, r3, #1
d0058e50:	81a3      	strheq	r3, [r4, #12]
d0058e52:	89a2      	ldrh	r2, [r4, #12]
d0058e54:	f012 0308 	ands.w	r3, r2, #8
d0058e58:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0058e5c:	d01c      	beq.n	d0058e98 <setvbuf+0x16c>
d0058e5e:	07d3      	lsls	r3, r2, #31
d0058e60:	bf41      	itttt	mi
d0058e62:	2300      	movmi	r3, #0
d0058e64:	426d      	negmi	r5, r5
d0058e66:	60a3      	strmi	r3, [r4, #8]
d0058e68:	61a5      	strmi	r5, [r4, #24]
d0058e6a:	bf58      	it	pl
d0058e6c:	60a5      	strpl	r5, [r4, #8]
d0058e6e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0058e70:	f015 0501 	ands.w	r5, r5, #1
d0058e74:	d115      	bne.n	d0058ea2 <setvbuf+0x176>
d0058e76:	f412 7f00 	tst.w	r2, #512	; 0x200
d0058e7a:	e7c8      	b.n	d0058e0e <setvbuf+0xe2>
d0058e7c:	4648      	mov	r0, r9
d0058e7e:	f7ff fe6f 	bl	d0058b60 <malloc>
d0058e82:	4606      	mov	r6, r0
d0058e84:	2800      	cmp	r0, #0
d0058e86:	d0ae      	beq.n	d0058de6 <setvbuf+0xba>
d0058e88:	464d      	mov	r5, r9
d0058e8a:	89a3      	ldrh	r3, [r4, #12]
d0058e8c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0058e90:	81a3      	strh	r3, [r4, #12]
d0058e92:	e7d0      	b.n	d0058e36 <setvbuf+0x10a>
d0058e94:	2500      	movs	r5, #0
d0058e96:	e7a8      	b.n	d0058dea <setvbuf+0xbe>
d0058e98:	60a3      	str	r3, [r4, #8]
d0058e9a:	e7e8      	b.n	d0058e6e <setvbuf+0x142>
d0058e9c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0058ea0:	e7b9      	b.n	d0058e16 <setvbuf+0xea>
d0058ea2:	2500      	movs	r5, #0
d0058ea4:	e7b7      	b.n	d0058e16 <setvbuf+0xea>
d0058ea6:	bf00      	nop
d0058ea8:	d005af4c 	.word	0xd005af4c
d0058eac:	d005a6a0 	.word	0xd005a6a0
d0058eb0:	d005a6c0 	.word	0xd005a6c0
d0058eb4:	d005a680 	.word	0xd005a680

d0058eb8 <siprintf>:
d0058eb8:	b40e      	push	{r1, r2, r3}
d0058eba:	b500      	push	{lr}
d0058ebc:	b09c      	sub	sp, #112	; 0x70
d0058ebe:	ab1d      	add	r3, sp, #116	; 0x74
d0058ec0:	9002      	str	r0, [sp, #8]
d0058ec2:	9006      	str	r0, [sp, #24]
d0058ec4:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0058ec8:	4809      	ldr	r0, [pc, #36]	; (d0058ef0 <siprintf+0x38>)
d0058eca:	9107      	str	r1, [sp, #28]
d0058ecc:	9104      	str	r1, [sp, #16]
d0058ece:	4909      	ldr	r1, [pc, #36]	; (d0058ef4 <siprintf+0x3c>)
d0058ed0:	f853 2b04 	ldr.w	r2, [r3], #4
d0058ed4:	9105      	str	r1, [sp, #20]
d0058ed6:	6800      	ldr	r0, [r0, #0]
d0058ed8:	9301      	str	r3, [sp, #4]
d0058eda:	a902      	add	r1, sp, #8
d0058edc:	f000 f924 	bl	d0059128 <_svfiprintf_r>
d0058ee0:	9b02      	ldr	r3, [sp, #8]
d0058ee2:	2200      	movs	r2, #0
d0058ee4:	701a      	strb	r2, [r3, #0]
d0058ee6:	b01c      	add	sp, #112	; 0x70
d0058ee8:	f85d eb04 	ldr.w	lr, [sp], #4
d0058eec:	b003      	add	sp, #12
d0058eee:	4770      	bx	lr
d0058ef0:	d005af4c 	.word	0xd005af4c
d0058ef4:	ffff0208 	.word	0xffff0208

d0058ef8 <__sread>:
d0058ef8:	b510      	push	{r4, lr}
d0058efa:	460c      	mov	r4, r1
d0058efc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058f00:	f000 fba6 	bl	d0059650 <_read_r>
d0058f04:	2800      	cmp	r0, #0
d0058f06:	bfab      	itete	ge
d0058f08:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0058f0a:	89a3      	ldrhlt	r3, [r4, #12]
d0058f0c:	181b      	addge	r3, r3, r0
d0058f0e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0058f12:	bfac      	ite	ge
d0058f14:	6563      	strge	r3, [r4, #84]	; 0x54
d0058f16:	81a3      	strhlt	r3, [r4, #12]
d0058f18:	bd10      	pop	{r4, pc}

d0058f1a <__swrite>:
d0058f1a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0058f1e:	461f      	mov	r7, r3
d0058f20:	898b      	ldrh	r3, [r1, #12]
d0058f22:	05db      	lsls	r3, r3, #23
d0058f24:	4605      	mov	r5, r0
d0058f26:	460c      	mov	r4, r1
d0058f28:	4616      	mov	r6, r2
d0058f2a:	d505      	bpl.n	d0058f38 <__swrite+0x1e>
d0058f2c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058f30:	2302      	movs	r3, #2
d0058f32:	2200      	movs	r2, #0
d0058f34:	f000 f834 	bl	d0058fa0 <_lseek_r>
d0058f38:	89a3      	ldrh	r3, [r4, #12]
d0058f3a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0058f3e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0058f42:	81a3      	strh	r3, [r4, #12]
d0058f44:	4632      	mov	r2, r6
d0058f46:	463b      	mov	r3, r7
d0058f48:	4628      	mov	r0, r5
d0058f4a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0058f4e:	f7f7 b881 	b.w	d0050054 <_write_r>

d0058f52 <__sseek>:
d0058f52:	b510      	push	{r4, lr}
d0058f54:	460c      	mov	r4, r1
d0058f56:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058f5a:	f000 f821 	bl	d0058fa0 <_lseek_r>
d0058f5e:	1c43      	adds	r3, r0, #1
d0058f60:	89a3      	ldrh	r3, [r4, #12]
d0058f62:	bf15      	itete	ne
d0058f64:	6560      	strne	r0, [r4, #84]	; 0x54
d0058f66:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0058f6a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0058f6e:	81a3      	strheq	r3, [r4, #12]
d0058f70:	bf18      	it	ne
d0058f72:	81a3      	strhne	r3, [r4, #12]
d0058f74:	bd10      	pop	{r4, pc}

d0058f76 <__sclose>:
d0058f76:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058f7a:	f000 b801 	b.w	d0058f80 <_close_r>
	...

d0058f80 <_close_r>:
d0058f80:	b538      	push	{r3, r4, r5, lr}
d0058f82:	4d06      	ldr	r5, [pc, #24]	; (d0058f9c <_close_r+0x1c>)
d0058f84:	2300      	movs	r3, #0
d0058f86:	4604      	mov	r4, r0
d0058f88:	4608      	mov	r0, r1
d0058f8a:	602b      	str	r3, [r5, #0]
d0058f8c:	f7f7 f89c 	bl	d00500c8 <_close>
d0058f90:	1c43      	adds	r3, r0, #1
d0058f92:	d102      	bne.n	d0058f9a <_close_r+0x1a>
d0058f94:	682b      	ldr	r3, [r5, #0]
d0058f96:	b103      	cbz	r3, d0058f9a <_close_r+0x1a>
d0058f98:	6023      	str	r3, [r4, #0]
d0058f9a:	bd38      	pop	{r3, r4, r5, pc}
d0058f9c:	d014634c 	.word	0xd014634c

d0058fa0 <_lseek_r>:
d0058fa0:	b538      	push	{r3, r4, r5, lr}
d0058fa2:	4d07      	ldr	r5, [pc, #28]	; (d0058fc0 <_lseek_r+0x20>)
d0058fa4:	4604      	mov	r4, r0
d0058fa6:	4608      	mov	r0, r1
d0058fa8:	4611      	mov	r1, r2
d0058faa:	2200      	movs	r2, #0
d0058fac:	602a      	str	r2, [r5, #0]
d0058fae:	461a      	mov	r2, r3
d0058fb0:	f7f7 f894 	bl	d00500dc <_lseek>
d0058fb4:	1c43      	adds	r3, r0, #1
d0058fb6:	d102      	bne.n	d0058fbe <_lseek_r+0x1e>
d0058fb8:	682b      	ldr	r3, [r5, #0]
d0058fba:	b103      	cbz	r3, d0058fbe <_lseek_r+0x1e>
d0058fbc:	6023      	str	r3, [r4, #0]
d0058fbe:	bd38      	pop	{r3, r4, r5, pc}
d0058fc0:	d014634c 	.word	0xd014634c

d0058fc4 <__swhatbuf_r>:
d0058fc4:	b570      	push	{r4, r5, r6, lr}
d0058fc6:	460e      	mov	r6, r1
d0058fc8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058fcc:	2900      	cmp	r1, #0
d0058fce:	b096      	sub	sp, #88	; 0x58
d0058fd0:	4614      	mov	r4, r2
d0058fd2:	461d      	mov	r5, r3
d0058fd4:	da07      	bge.n	d0058fe6 <__swhatbuf_r+0x22>
d0058fd6:	2300      	movs	r3, #0
d0058fd8:	602b      	str	r3, [r5, #0]
d0058fda:	89b3      	ldrh	r3, [r6, #12]
d0058fdc:	061a      	lsls	r2, r3, #24
d0058fde:	d410      	bmi.n	d0059002 <__swhatbuf_r+0x3e>
d0058fe0:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0058fe4:	e00e      	b.n	d0059004 <__swhatbuf_r+0x40>
d0058fe6:	466a      	mov	r2, sp
d0058fe8:	f000 fb44 	bl	d0059674 <_fstat_r>
d0058fec:	2800      	cmp	r0, #0
d0058fee:	dbf2      	blt.n	d0058fd6 <__swhatbuf_r+0x12>
d0058ff0:	9a01      	ldr	r2, [sp, #4]
d0058ff2:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0058ff6:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0058ffa:	425a      	negs	r2, r3
d0058ffc:	415a      	adcs	r2, r3
d0058ffe:	602a      	str	r2, [r5, #0]
d0059000:	e7ee      	b.n	d0058fe0 <__swhatbuf_r+0x1c>
d0059002:	2340      	movs	r3, #64	; 0x40
d0059004:	2000      	movs	r0, #0
d0059006:	6023      	str	r3, [r4, #0]
d0059008:	b016      	add	sp, #88	; 0x58
d005900a:	bd70      	pop	{r4, r5, r6, pc}

d005900c <__malloc_lock>:
d005900c:	4801      	ldr	r0, [pc, #4]	; (d0059014 <__malloc_lock+0x8>)
d005900e:	f7ff bda4 	b.w	d0058b5a <__retarget_lock_acquire_recursive>
d0059012:	bf00      	nop
d0059014:	d0146344 	.word	0xd0146344

d0059018 <__malloc_unlock>:
d0059018:	4801      	ldr	r0, [pc, #4]	; (d0059020 <__malloc_unlock+0x8>)
d005901a:	f7ff bd9f 	b.w	d0058b5c <__retarget_lock_release_recursive>
d005901e:	bf00      	nop
d0059020:	d0146344 	.word	0xd0146344

d0059024 <_realloc_r>:
d0059024:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0059026:	4607      	mov	r7, r0
d0059028:	4614      	mov	r4, r2
d005902a:	460e      	mov	r6, r1
d005902c:	b921      	cbnz	r1, d0059038 <_realloc_r+0x14>
d005902e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059032:	4611      	mov	r1, r2
d0059034:	f7ff be18 	b.w	d0058c68 <_malloc_r>
d0059038:	b922      	cbnz	r2, d0059044 <_realloc_r+0x20>
d005903a:	f7ff fdc5 	bl	d0058bc8 <_free_r>
d005903e:	4625      	mov	r5, r4
d0059040:	4628      	mov	r0, r5
d0059042:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0059044:	f000 fb96 	bl	d0059774 <_malloc_usable_size_r>
d0059048:	42a0      	cmp	r0, r4
d005904a:	d20f      	bcs.n	d005906c <_realloc_r+0x48>
d005904c:	4621      	mov	r1, r4
d005904e:	4638      	mov	r0, r7
d0059050:	f7ff fe0a 	bl	d0058c68 <_malloc_r>
d0059054:	4605      	mov	r5, r0
d0059056:	2800      	cmp	r0, #0
d0059058:	d0f2      	beq.n	d0059040 <_realloc_r+0x1c>
d005905a:	4631      	mov	r1, r6
d005905c:	4622      	mov	r2, r4
d005905e:	f7ff fd9d 	bl	d0058b9c <memcpy>
d0059062:	4631      	mov	r1, r6
d0059064:	4638      	mov	r0, r7
d0059066:	f7ff fdaf 	bl	d0058bc8 <_free_r>
d005906a:	e7e9      	b.n	d0059040 <_realloc_r+0x1c>
d005906c:	4635      	mov	r5, r6
d005906e:	e7e7      	b.n	d0059040 <_realloc_r+0x1c>

d0059070 <__ssputs_r>:
d0059070:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0059074:	688e      	ldr	r6, [r1, #8]
d0059076:	429e      	cmp	r6, r3
d0059078:	4682      	mov	sl, r0
d005907a:	460c      	mov	r4, r1
d005907c:	4690      	mov	r8, r2
d005907e:	461f      	mov	r7, r3
d0059080:	d838      	bhi.n	d00590f4 <__ssputs_r+0x84>
d0059082:	898a      	ldrh	r2, [r1, #12]
d0059084:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0059088:	d032      	beq.n	d00590f0 <__ssputs_r+0x80>
d005908a:	6825      	ldr	r5, [r4, #0]
d005908c:	6909      	ldr	r1, [r1, #16]
d005908e:	eba5 0901 	sub.w	r9, r5, r1
d0059092:	6965      	ldr	r5, [r4, #20]
d0059094:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0059098:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d005909c:	3301      	adds	r3, #1
d005909e:	444b      	add	r3, r9
d00590a0:	106d      	asrs	r5, r5, #1
d00590a2:	429d      	cmp	r5, r3
d00590a4:	bf38      	it	cc
d00590a6:	461d      	movcc	r5, r3
d00590a8:	0553      	lsls	r3, r2, #21
d00590aa:	d531      	bpl.n	d0059110 <__ssputs_r+0xa0>
d00590ac:	4629      	mov	r1, r5
d00590ae:	f7ff fddb 	bl	d0058c68 <_malloc_r>
d00590b2:	4606      	mov	r6, r0
d00590b4:	b950      	cbnz	r0, d00590cc <__ssputs_r+0x5c>
d00590b6:	230c      	movs	r3, #12
d00590b8:	f8ca 3000 	str.w	r3, [sl]
d00590bc:	89a3      	ldrh	r3, [r4, #12]
d00590be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00590c2:	81a3      	strh	r3, [r4, #12]
d00590c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00590c8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00590cc:	6921      	ldr	r1, [r4, #16]
d00590ce:	464a      	mov	r2, r9
d00590d0:	f7ff fd64 	bl	d0058b9c <memcpy>
d00590d4:	89a3      	ldrh	r3, [r4, #12]
d00590d6:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d00590da:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00590de:	81a3      	strh	r3, [r4, #12]
d00590e0:	6126      	str	r6, [r4, #16]
d00590e2:	6165      	str	r5, [r4, #20]
d00590e4:	444e      	add	r6, r9
d00590e6:	eba5 0509 	sub.w	r5, r5, r9
d00590ea:	6026      	str	r6, [r4, #0]
d00590ec:	60a5      	str	r5, [r4, #8]
d00590ee:	463e      	mov	r6, r7
d00590f0:	42be      	cmp	r6, r7
d00590f2:	d900      	bls.n	d00590f6 <__ssputs_r+0x86>
d00590f4:	463e      	mov	r6, r7
d00590f6:	4632      	mov	r2, r6
d00590f8:	6820      	ldr	r0, [r4, #0]
d00590fa:	4641      	mov	r1, r8
d00590fc:	f000 fb20 	bl	d0059740 <memmove>
d0059100:	68a3      	ldr	r3, [r4, #8]
d0059102:	6822      	ldr	r2, [r4, #0]
d0059104:	1b9b      	subs	r3, r3, r6
d0059106:	4432      	add	r2, r6
d0059108:	60a3      	str	r3, [r4, #8]
d005910a:	6022      	str	r2, [r4, #0]
d005910c:	2000      	movs	r0, #0
d005910e:	e7db      	b.n	d00590c8 <__ssputs_r+0x58>
d0059110:	462a      	mov	r2, r5
d0059112:	f7ff ff87 	bl	d0059024 <_realloc_r>
d0059116:	4606      	mov	r6, r0
d0059118:	2800      	cmp	r0, #0
d005911a:	d1e1      	bne.n	d00590e0 <__ssputs_r+0x70>
d005911c:	6921      	ldr	r1, [r4, #16]
d005911e:	4650      	mov	r0, sl
d0059120:	f7ff fd52 	bl	d0058bc8 <_free_r>
d0059124:	e7c7      	b.n	d00590b6 <__ssputs_r+0x46>
	...

d0059128 <_svfiprintf_r>:
d0059128:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005912c:	4698      	mov	r8, r3
d005912e:	898b      	ldrh	r3, [r1, #12]
d0059130:	061b      	lsls	r3, r3, #24
d0059132:	b09d      	sub	sp, #116	; 0x74
d0059134:	4607      	mov	r7, r0
d0059136:	460d      	mov	r5, r1
d0059138:	4614      	mov	r4, r2
d005913a:	d50e      	bpl.n	d005915a <_svfiprintf_r+0x32>
d005913c:	690b      	ldr	r3, [r1, #16]
d005913e:	b963      	cbnz	r3, d005915a <_svfiprintf_r+0x32>
d0059140:	2140      	movs	r1, #64	; 0x40
d0059142:	f7ff fd91 	bl	d0058c68 <_malloc_r>
d0059146:	6028      	str	r0, [r5, #0]
d0059148:	6128      	str	r0, [r5, #16]
d005914a:	b920      	cbnz	r0, d0059156 <_svfiprintf_r+0x2e>
d005914c:	230c      	movs	r3, #12
d005914e:	603b      	str	r3, [r7, #0]
d0059150:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059154:	e0d1      	b.n	d00592fa <_svfiprintf_r+0x1d2>
d0059156:	2340      	movs	r3, #64	; 0x40
d0059158:	616b      	str	r3, [r5, #20]
d005915a:	2300      	movs	r3, #0
d005915c:	9309      	str	r3, [sp, #36]	; 0x24
d005915e:	2320      	movs	r3, #32
d0059160:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0059164:	f8cd 800c 	str.w	r8, [sp, #12]
d0059168:	2330      	movs	r3, #48	; 0x30
d005916a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0059314 <_svfiprintf_r+0x1ec>
d005916e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0059172:	f04f 0901 	mov.w	r9, #1
d0059176:	4623      	mov	r3, r4
d0059178:	469a      	mov	sl, r3
d005917a:	f813 2b01 	ldrb.w	r2, [r3], #1
d005917e:	b10a      	cbz	r2, d0059184 <_svfiprintf_r+0x5c>
d0059180:	2a25      	cmp	r2, #37	; 0x25
d0059182:	d1f9      	bne.n	d0059178 <_svfiprintf_r+0x50>
d0059184:	ebba 0b04 	subs.w	fp, sl, r4
d0059188:	d00b      	beq.n	d00591a2 <_svfiprintf_r+0x7a>
d005918a:	465b      	mov	r3, fp
d005918c:	4622      	mov	r2, r4
d005918e:	4629      	mov	r1, r5
d0059190:	4638      	mov	r0, r7
d0059192:	f7ff ff6d 	bl	d0059070 <__ssputs_r>
d0059196:	3001      	adds	r0, #1
d0059198:	f000 80aa 	beq.w	d00592f0 <_svfiprintf_r+0x1c8>
d005919c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d005919e:	445a      	add	r2, fp
d00591a0:	9209      	str	r2, [sp, #36]	; 0x24
d00591a2:	f89a 3000 	ldrb.w	r3, [sl]
d00591a6:	2b00      	cmp	r3, #0
d00591a8:	f000 80a2 	beq.w	d00592f0 <_svfiprintf_r+0x1c8>
d00591ac:	2300      	movs	r3, #0
d00591ae:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00591b2:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00591b6:	f10a 0a01 	add.w	sl, sl, #1
d00591ba:	9304      	str	r3, [sp, #16]
d00591bc:	9307      	str	r3, [sp, #28]
d00591be:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00591c2:	931a      	str	r3, [sp, #104]	; 0x68
d00591c4:	4654      	mov	r4, sl
d00591c6:	2205      	movs	r2, #5
d00591c8:	f814 1b01 	ldrb.w	r1, [r4], #1
d00591cc:	4851      	ldr	r0, [pc, #324]	; (d0059314 <_svfiprintf_r+0x1ec>)
d00591ce:	f000 fa67 	bl	d00596a0 <memchr>
d00591d2:	9a04      	ldr	r2, [sp, #16]
d00591d4:	b9d8      	cbnz	r0, d005920e <_svfiprintf_r+0xe6>
d00591d6:	06d0      	lsls	r0, r2, #27
d00591d8:	bf44      	itt	mi
d00591da:	2320      	movmi	r3, #32
d00591dc:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00591e0:	0711      	lsls	r1, r2, #28
d00591e2:	bf44      	itt	mi
d00591e4:	232b      	movmi	r3, #43	; 0x2b
d00591e6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00591ea:	f89a 3000 	ldrb.w	r3, [sl]
d00591ee:	2b2a      	cmp	r3, #42	; 0x2a
d00591f0:	d015      	beq.n	d005921e <_svfiprintf_r+0xf6>
d00591f2:	9a07      	ldr	r2, [sp, #28]
d00591f4:	4654      	mov	r4, sl
d00591f6:	2000      	movs	r0, #0
d00591f8:	f04f 0c0a 	mov.w	ip, #10
d00591fc:	4621      	mov	r1, r4
d00591fe:	f811 3b01 	ldrb.w	r3, [r1], #1
d0059202:	3b30      	subs	r3, #48	; 0x30
d0059204:	2b09      	cmp	r3, #9
d0059206:	d94e      	bls.n	d00592a6 <_svfiprintf_r+0x17e>
d0059208:	b1b0      	cbz	r0, d0059238 <_svfiprintf_r+0x110>
d005920a:	9207      	str	r2, [sp, #28]
d005920c:	e014      	b.n	d0059238 <_svfiprintf_r+0x110>
d005920e:	eba0 0308 	sub.w	r3, r0, r8
d0059212:	fa09 f303 	lsl.w	r3, r9, r3
d0059216:	4313      	orrs	r3, r2
d0059218:	9304      	str	r3, [sp, #16]
d005921a:	46a2      	mov	sl, r4
d005921c:	e7d2      	b.n	d00591c4 <_svfiprintf_r+0x9c>
d005921e:	9b03      	ldr	r3, [sp, #12]
d0059220:	1d19      	adds	r1, r3, #4
d0059222:	681b      	ldr	r3, [r3, #0]
d0059224:	9103      	str	r1, [sp, #12]
d0059226:	2b00      	cmp	r3, #0
d0059228:	bfbb      	ittet	lt
d005922a:	425b      	neglt	r3, r3
d005922c:	f042 0202 	orrlt.w	r2, r2, #2
d0059230:	9307      	strge	r3, [sp, #28]
d0059232:	9307      	strlt	r3, [sp, #28]
d0059234:	bfb8      	it	lt
d0059236:	9204      	strlt	r2, [sp, #16]
d0059238:	7823      	ldrb	r3, [r4, #0]
d005923a:	2b2e      	cmp	r3, #46	; 0x2e
d005923c:	d10c      	bne.n	d0059258 <_svfiprintf_r+0x130>
d005923e:	7863      	ldrb	r3, [r4, #1]
d0059240:	2b2a      	cmp	r3, #42	; 0x2a
d0059242:	d135      	bne.n	d00592b0 <_svfiprintf_r+0x188>
d0059244:	9b03      	ldr	r3, [sp, #12]
d0059246:	1d1a      	adds	r2, r3, #4
d0059248:	681b      	ldr	r3, [r3, #0]
d005924a:	9203      	str	r2, [sp, #12]
d005924c:	2b00      	cmp	r3, #0
d005924e:	bfb8      	it	lt
d0059250:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0059254:	3402      	adds	r4, #2
d0059256:	9305      	str	r3, [sp, #20]
d0059258:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0059324 <_svfiprintf_r+0x1fc>
d005925c:	7821      	ldrb	r1, [r4, #0]
d005925e:	2203      	movs	r2, #3
d0059260:	4650      	mov	r0, sl
d0059262:	f000 fa1d 	bl	d00596a0 <memchr>
d0059266:	b140      	cbz	r0, d005927a <_svfiprintf_r+0x152>
d0059268:	2340      	movs	r3, #64	; 0x40
d005926a:	eba0 000a 	sub.w	r0, r0, sl
d005926e:	fa03 f000 	lsl.w	r0, r3, r0
d0059272:	9b04      	ldr	r3, [sp, #16]
d0059274:	4303      	orrs	r3, r0
d0059276:	3401      	adds	r4, #1
d0059278:	9304      	str	r3, [sp, #16]
d005927a:	f814 1b01 	ldrb.w	r1, [r4], #1
d005927e:	4826      	ldr	r0, [pc, #152]	; (d0059318 <_svfiprintf_r+0x1f0>)
d0059280:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0059284:	2206      	movs	r2, #6
d0059286:	f000 fa0b 	bl	d00596a0 <memchr>
d005928a:	2800      	cmp	r0, #0
d005928c:	d038      	beq.n	d0059300 <_svfiprintf_r+0x1d8>
d005928e:	4b23      	ldr	r3, [pc, #140]	; (d005931c <_svfiprintf_r+0x1f4>)
d0059290:	bb1b      	cbnz	r3, d00592da <_svfiprintf_r+0x1b2>
d0059292:	9b03      	ldr	r3, [sp, #12]
d0059294:	3307      	adds	r3, #7
d0059296:	f023 0307 	bic.w	r3, r3, #7
d005929a:	3308      	adds	r3, #8
d005929c:	9303      	str	r3, [sp, #12]
d005929e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00592a0:	4433      	add	r3, r6
d00592a2:	9309      	str	r3, [sp, #36]	; 0x24
d00592a4:	e767      	b.n	d0059176 <_svfiprintf_r+0x4e>
d00592a6:	fb0c 3202 	mla	r2, ip, r2, r3
d00592aa:	460c      	mov	r4, r1
d00592ac:	2001      	movs	r0, #1
d00592ae:	e7a5      	b.n	d00591fc <_svfiprintf_r+0xd4>
d00592b0:	2300      	movs	r3, #0
d00592b2:	3401      	adds	r4, #1
d00592b4:	9305      	str	r3, [sp, #20]
d00592b6:	4619      	mov	r1, r3
d00592b8:	f04f 0c0a 	mov.w	ip, #10
d00592bc:	4620      	mov	r0, r4
d00592be:	f810 2b01 	ldrb.w	r2, [r0], #1
d00592c2:	3a30      	subs	r2, #48	; 0x30
d00592c4:	2a09      	cmp	r2, #9
d00592c6:	d903      	bls.n	d00592d0 <_svfiprintf_r+0x1a8>
d00592c8:	2b00      	cmp	r3, #0
d00592ca:	d0c5      	beq.n	d0059258 <_svfiprintf_r+0x130>
d00592cc:	9105      	str	r1, [sp, #20]
d00592ce:	e7c3      	b.n	d0059258 <_svfiprintf_r+0x130>
d00592d0:	fb0c 2101 	mla	r1, ip, r1, r2
d00592d4:	4604      	mov	r4, r0
d00592d6:	2301      	movs	r3, #1
d00592d8:	e7f0      	b.n	d00592bc <_svfiprintf_r+0x194>
d00592da:	ab03      	add	r3, sp, #12
d00592dc:	9300      	str	r3, [sp, #0]
d00592de:	462a      	mov	r2, r5
d00592e0:	4b0f      	ldr	r3, [pc, #60]	; (d0059320 <_svfiprintf_r+0x1f8>)
d00592e2:	a904      	add	r1, sp, #16
d00592e4:	4638      	mov	r0, r7
d00592e6:	f3af 8000 	nop.w
d00592ea:	1c42      	adds	r2, r0, #1
d00592ec:	4606      	mov	r6, r0
d00592ee:	d1d6      	bne.n	d005929e <_svfiprintf_r+0x176>
d00592f0:	89ab      	ldrh	r3, [r5, #12]
d00592f2:	065b      	lsls	r3, r3, #25
d00592f4:	f53f af2c 	bmi.w	d0059150 <_svfiprintf_r+0x28>
d00592f8:	9809      	ldr	r0, [sp, #36]	; 0x24
d00592fa:	b01d      	add	sp, #116	; 0x74
d00592fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0059300:	ab03      	add	r3, sp, #12
d0059302:	9300      	str	r3, [sp, #0]
d0059304:	462a      	mov	r2, r5
d0059306:	4b06      	ldr	r3, [pc, #24]	; (d0059320 <_svfiprintf_r+0x1f8>)
d0059308:	a904      	add	r1, sp, #16
d005930a:	4638      	mov	r0, r7
d005930c:	f000 f87a 	bl	d0059404 <_printf_i>
d0059310:	e7eb      	b.n	d00592ea <_svfiprintf_r+0x1c2>
d0059312:	bf00      	nop
d0059314:	d005a6e4 	.word	0xd005a6e4
d0059318:	d005a6ee 	.word	0xd005a6ee
d005931c:	00000000 	.word	0x00000000
d0059320:	d0059071 	.word	0xd0059071
d0059324:	d005a6ea 	.word	0xd005a6ea

d0059328 <_printf_common>:
d0059328:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d005932c:	4616      	mov	r6, r2
d005932e:	4699      	mov	r9, r3
d0059330:	688a      	ldr	r2, [r1, #8]
d0059332:	690b      	ldr	r3, [r1, #16]
d0059334:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0059338:	4293      	cmp	r3, r2
d005933a:	bfb8      	it	lt
d005933c:	4613      	movlt	r3, r2
d005933e:	6033      	str	r3, [r6, #0]
d0059340:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0059344:	4607      	mov	r7, r0
d0059346:	460c      	mov	r4, r1
d0059348:	b10a      	cbz	r2, d005934e <_printf_common+0x26>
d005934a:	3301      	adds	r3, #1
d005934c:	6033      	str	r3, [r6, #0]
d005934e:	6823      	ldr	r3, [r4, #0]
d0059350:	0699      	lsls	r1, r3, #26
d0059352:	bf42      	ittt	mi
d0059354:	6833      	ldrmi	r3, [r6, #0]
d0059356:	3302      	addmi	r3, #2
d0059358:	6033      	strmi	r3, [r6, #0]
d005935a:	6825      	ldr	r5, [r4, #0]
d005935c:	f015 0506 	ands.w	r5, r5, #6
d0059360:	d106      	bne.n	d0059370 <_printf_common+0x48>
d0059362:	f104 0a19 	add.w	sl, r4, #25
d0059366:	68e3      	ldr	r3, [r4, #12]
d0059368:	6832      	ldr	r2, [r6, #0]
d005936a:	1a9b      	subs	r3, r3, r2
d005936c:	42ab      	cmp	r3, r5
d005936e:	dc26      	bgt.n	d00593be <_printf_common+0x96>
d0059370:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0059374:	1e13      	subs	r3, r2, #0
d0059376:	6822      	ldr	r2, [r4, #0]
d0059378:	bf18      	it	ne
d005937a:	2301      	movne	r3, #1
d005937c:	0692      	lsls	r2, r2, #26
d005937e:	d42b      	bmi.n	d00593d8 <_printf_common+0xb0>
d0059380:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0059384:	4649      	mov	r1, r9
d0059386:	4638      	mov	r0, r7
d0059388:	47c0      	blx	r8
d005938a:	3001      	adds	r0, #1
d005938c:	d01e      	beq.n	d00593cc <_printf_common+0xa4>
d005938e:	6823      	ldr	r3, [r4, #0]
d0059390:	68e5      	ldr	r5, [r4, #12]
d0059392:	6832      	ldr	r2, [r6, #0]
d0059394:	f003 0306 	and.w	r3, r3, #6
d0059398:	2b04      	cmp	r3, #4
d005939a:	bf08      	it	eq
d005939c:	1aad      	subeq	r5, r5, r2
d005939e:	68a3      	ldr	r3, [r4, #8]
d00593a0:	6922      	ldr	r2, [r4, #16]
d00593a2:	bf0c      	ite	eq
d00593a4:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00593a8:	2500      	movne	r5, #0
d00593aa:	4293      	cmp	r3, r2
d00593ac:	bfc4      	itt	gt
d00593ae:	1a9b      	subgt	r3, r3, r2
d00593b0:	18ed      	addgt	r5, r5, r3
d00593b2:	2600      	movs	r6, #0
d00593b4:	341a      	adds	r4, #26
d00593b6:	42b5      	cmp	r5, r6
d00593b8:	d11a      	bne.n	d00593f0 <_printf_common+0xc8>
d00593ba:	2000      	movs	r0, #0
d00593bc:	e008      	b.n	d00593d0 <_printf_common+0xa8>
d00593be:	2301      	movs	r3, #1
d00593c0:	4652      	mov	r2, sl
d00593c2:	4649      	mov	r1, r9
d00593c4:	4638      	mov	r0, r7
d00593c6:	47c0      	blx	r8
d00593c8:	3001      	adds	r0, #1
d00593ca:	d103      	bne.n	d00593d4 <_printf_common+0xac>
d00593cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00593d0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00593d4:	3501      	adds	r5, #1
d00593d6:	e7c6      	b.n	d0059366 <_printf_common+0x3e>
d00593d8:	18e1      	adds	r1, r4, r3
d00593da:	1c5a      	adds	r2, r3, #1
d00593dc:	2030      	movs	r0, #48	; 0x30
d00593de:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00593e2:	4422      	add	r2, r4
d00593e4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00593e8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00593ec:	3302      	adds	r3, #2
d00593ee:	e7c7      	b.n	d0059380 <_printf_common+0x58>
d00593f0:	2301      	movs	r3, #1
d00593f2:	4622      	mov	r2, r4
d00593f4:	4649      	mov	r1, r9
d00593f6:	4638      	mov	r0, r7
d00593f8:	47c0      	blx	r8
d00593fa:	3001      	adds	r0, #1
d00593fc:	d0e6      	beq.n	d00593cc <_printf_common+0xa4>
d00593fe:	3601      	adds	r6, #1
d0059400:	e7d9      	b.n	d00593b6 <_printf_common+0x8e>
	...

d0059404 <_printf_i>:
d0059404:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0059408:	460c      	mov	r4, r1
d005940a:	4691      	mov	r9, r2
d005940c:	7e27      	ldrb	r7, [r4, #24]
d005940e:	990c      	ldr	r1, [sp, #48]	; 0x30
d0059410:	2f78      	cmp	r7, #120	; 0x78
d0059412:	4680      	mov	r8, r0
d0059414:	469a      	mov	sl, r3
d0059416:	f104 0243 	add.w	r2, r4, #67	; 0x43
d005941a:	d807      	bhi.n	d005942c <_printf_i+0x28>
d005941c:	2f62      	cmp	r7, #98	; 0x62
d005941e:	d80a      	bhi.n	d0059436 <_printf_i+0x32>
d0059420:	2f00      	cmp	r7, #0
d0059422:	f000 80d8 	beq.w	d00595d6 <_printf_i+0x1d2>
d0059426:	2f58      	cmp	r7, #88	; 0x58
d0059428:	f000 80a3 	beq.w	d0059572 <_printf_i+0x16e>
d005942c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0059430:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0059434:	e03a      	b.n	d00594ac <_printf_i+0xa8>
d0059436:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d005943a:	2b15      	cmp	r3, #21
d005943c:	d8f6      	bhi.n	d005942c <_printf_i+0x28>
d005943e:	a001      	add	r0, pc, #4	; (adr r0, d0059444 <_printf_i+0x40>)
d0059440:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0059444:	d005949d 	.word	0xd005949d
d0059448:	d00594b1 	.word	0xd00594b1
d005944c:	d005942d 	.word	0xd005942d
d0059450:	d005942d 	.word	0xd005942d
d0059454:	d005942d 	.word	0xd005942d
d0059458:	d005942d 	.word	0xd005942d
d005945c:	d00594b1 	.word	0xd00594b1
d0059460:	d005942d 	.word	0xd005942d
d0059464:	d005942d 	.word	0xd005942d
d0059468:	d005942d 	.word	0xd005942d
d005946c:	d005942d 	.word	0xd005942d
d0059470:	d00595bd 	.word	0xd00595bd
d0059474:	d00594e1 	.word	0xd00594e1
d0059478:	d005959f 	.word	0xd005959f
d005947c:	d005942d 	.word	0xd005942d
d0059480:	d005942d 	.word	0xd005942d
d0059484:	d00595df 	.word	0xd00595df
d0059488:	d005942d 	.word	0xd005942d
d005948c:	d00594e1 	.word	0xd00594e1
d0059490:	d005942d 	.word	0xd005942d
d0059494:	d005942d 	.word	0xd005942d
d0059498:	d00595a7 	.word	0xd00595a7
d005949c:	680b      	ldr	r3, [r1, #0]
d005949e:	1d1a      	adds	r2, r3, #4
d00594a0:	681b      	ldr	r3, [r3, #0]
d00594a2:	600a      	str	r2, [r1, #0]
d00594a4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00594a8:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00594ac:	2301      	movs	r3, #1
d00594ae:	e0a3      	b.n	d00595f8 <_printf_i+0x1f4>
d00594b0:	6825      	ldr	r5, [r4, #0]
d00594b2:	6808      	ldr	r0, [r1, #0]
d00594b4:	062e      	lsls	r6, r5, #24
d00594b6:	f100 0304 	add.w	r3, r0, #4
d00594ba:	d50a      	bpl.n	d00594d2 <_printf_i+0xce>
d00594bc:	6805      	ldr	r5, [r0, #0]
d00594be:	600b      	str	r3, [r1, #0]
d00594c0:	2d00      	cmp	r5, #0
d00594c2:	da03      	bge.n	d00594cc <_printf_i+0xc8>
d00594c4:	232d      	movs	r3, #45	; 0x2d
d00594c6:	426d      	negs	r5, r5
d00594c8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00594cc:	485e      	ldr	r0, [pc, #376]	; (d0059648 <_printf_i+0x244>)
d00594ce:	230a      	movs	r3, #10
d00594d0:	e019      	b.n	d0059506 <_printf_i+0x102>
d00594d2:	f015 0f40 	tst.w	r5, #64	; 0x40
d00594d6:	6805      	ldr	r5, [r0, #0]
d00594d8:	600b      	str	r3, [r1, #0]
d00594da:	bf18      	it	ne
d00594dc:	b22d      	sxthne	r5, r5
d00594de:	e7ef      	b.n	d00594c0 <_printf_i+0xbc>
d00594e0:	680b      	ldr	r3, [r1, #0]
d00594e2:	6825      	ldr	r5, [r4, #0]
d00594e4:	1d18      	adds	r0, r3, #4
d00594e6:	6008      	str	r0, [r1, #0]
d00594e8:	0628      	lsls	r0, r5, #24
d00594ea:	d501      	bpl.n	d00594f0 <_printf_i+0xec>
d00594ec:	681d      	ldr	r5, [r3, #0]
d00594ee:	e002      	b.n	d00594f6 <_printf_i+0xf2>
d00594f0:	0669      	lsls	r1, r5, #25
d00594f2:	d5fb      	bpl.n	d00594ec <_printf_i+0xe8>
d00594f4:	881d      	ldrh	r5, [r3, #0]
d00594f6:	4854      	ldr	r0, [pc, #336]	; (d0059648 <_printf_i+0x244>)
d00594f8:	2f6f      	cmp	r7, #111	; 0x6f
d00594fa:	bf0c      	ite	eq
d00594fc:	2308      	moveq	r3, #8
d00594fe:	230a      	movne	r3, #10
d0059500:	2100      	movs	r1, #0
d0059502:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0059506:	6866      	ldr	r6, [r4, #4]
d0059508:	60a6      	str	r6, [r4, #8]
d005950a:	2e00      	cmp	r6, #0
d005950c:	bfa2      	ittt	ge
d005950e:	6821      	ldrge	r1, [r4, #0]
d0059510:	f021 0104 	bicge.w	r1, r1, #4
d0059514:	6021      	strge	r1, [r4, #0]
d0059516:	b90d      	cbnz	r5, d005951c <_printf_i+0x118>
d0059518:	2e00      	cmp	r6, #0
d005951a:	d04d      	beq.n	d00595b8 <_printf_i+0x1b4>
d005951c:	4616      	mov	r6, r2
d005951e:	fbb5 f1f3 	udiv	r1, r5, r3
d0059522:	fb03 5711 	mls	r7, r3, r1, r5
d0059526:	5dc7      	ldrb	r7, [r0, r7]
d0059528:	f806 7d01 	strb.w	r7, [r6, #-1]!
d005952c:	462f      	mov	r7, r5
d005952e:	42bb      	cmp	r3, r7
d0059530:	460d      	mov	r5, r1
d0059532:	d9f4      	bls.n	d005951e <_printf_i+0x11a>
d0059534:	2b08      	cmp	r3, #8
d0059536:	d10b      	bne.n	d0059550 <_printf_i+0x14c>
d0059538:	6823      	ldr	r3, [r4, #0]
d005953a:	07df      	lsls	r7, r3, #31
d005953c:	d508      	bpl.n	d0059550 <_printf_i+0x14c>
d005953e:	6923      	ldr	r3, [r4, #16]
d0059540:	6861      	ldr	r1, [r4, #4]
d0059542:	4299      	cmp	r1, r3
d0059544:	bfde      	ittt	le
d0059546:	2330      	movle	r3, #48	; 0x30
d0059548:	f806 3c01 	strble.w	r3, [r6, #-1]
d005954c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0059550:	1b92      	subs	r2, r2, r6
d0059552:	6122      	str	r2, [r4, #16]
d0059554:	f8cd a000 	str.w	sl, [sp]
d0059558:	464b      	mov	r3, r9
d005955a:	aa03      	add	r2, sp, #12
d005955c:	4621      	mov	r1, r4
d005955e:	4640      	mov	r0, r8
d0059560:	f7ff fee2 	bl	d0059328 <_printf_common>
d0059564:	3001      	adds	r0, #1
d0059566:	d14c      	bne.n	d0059602 <_printf_i+0x1fe>
d0059568:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005956c:	b004      	add	sp, #16
d005956e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059572:	4835      	ldr	r0, [pc, #212]	; (d0059648 <_printf_i+0x244>)
d0059574:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0059578:	6823      	ldr	r3, [r4, #0]
d005957a:	680e      	ldr	r6, [r1, #0]
d005957c:	061f      	lsls	r7, r3, #24
d005957e:	f856 5b04 	ldr.w	r5, [r6], #4
d0059582:	600e      	str	r6, [r1, #0]
d0059584:	d514      	bpl.n	d00595b0 <_printf_i+0x1ac>
d0059586:	07d9      	lsls	r1, r3, #31
d0059588:	bf44      	itt	mi
d005958a:	f043 0320 	orrmi.w	r3, r3, #32
d005958e:	6023      	strmi	r3, [r4, #0]
d0059590:	b91d      	cbnz	r5, d005959a <_printf_i+0x196>
d0059592:	6823      	ldr	r3, [r4, #0]
d0059594:	f023 0320 	bic.w	r3, r3, #32
d0059598:	6023      	str	r3, [r4, #0]
d005959a:	2310      	movs	r3, #16
d005959c:	e7b0      	b.n	d0059500 <_printf_i+0xfc>
d005959e:	6823      	ldr	r3, [r4, #0]
d00595a0:	f043 0320 	orr.w	r3, r3, #32
d00595a4:	6023      	str	r3, [r4, #0]
d00595a6:	2378      	movs	r3, #120	; 0x78
d00595a8:	4828      	ldr	r0, [pc, #160]	; (d005964c <_printf_i+0x248>)
d00595aa:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00595ae:	e7e3      	b.n	d0059578 <_printf_i+0x174>
d00595b0:	065e      	lsls	r6, r3, #25
d00595b2:	bf48      	it	mi
d00595b4:	b2ad      	uxthmi	r5, r5
d00595b6:	e7e6      	b.n	d0059586 <_printf_i+0x182>
d00595b8:	4616      	mov	r6, r2
d00595ba:	e7bb      	b.n	d0059534 <_printf_i+0x130>
d00595bc:	680b      	ldr	r3, [r1, #0]
d00595be:	6826      	ldr	r6, [r4, #0]
d00595c0:	6960      	ldr	r0, [r4, #20]
d00595c2:	1d1d      	adds	r5, r3, #4
d00595c4:	600d      	str	r5, [r1, #0]
d00595c6:	0635      	lsls	r5, r6, #24
d00595c8:	681b      	ldr	r3, [r3, #0]
d00595ca:	d501      	bpl.n	d00595d0 <_printf_i+0x1cc>
d00595cc:	6018      	str	r0, [r3, #0]
d00595ce:	e002      	b.n	d00595d6 <_printf_i+0x1d2>
d00595d0:	0671      	lsls	r1, r6, #25
d00595d2:	d5fb      	bpl.n	d00595cc <_printf_i+0x1c8>
d00595d4:	8018      	strh	r0, [r3, #0]
d00595d6:	2300      	movs	r3, #0
d00595d8:	6123      	str	r3, [r4, #16]
d00595da:	4616      	mov	r6, r2
d00595dc:	e7ba      	b.n	d0059554 <_printf_i+0x150>
d00595de:	680b      	ldr	r3, [r1, #0]
d00595e0:	1d1a      	adds	r2, r3, #4
d00595e2:	600a      	str	r2, [r1, #0]
d00595e4:	681e      	ldr	r6, [r3, #0]
d00595e6:	6862      	ldr	r2, [r4, #4]
d00595e8:	2100      	movs	r1, #0
d00595ea:	4630      	mov	r0, r6
d00595ec:	f000 f858 	bl	d00596a0 <memchr>
d00595f0:	b108      	cbz	r0, d00595f6 <_printf_i+0x1f2>
d00595f2:	1b80      	subs	r0, r0, r6
d00595f4:	6060      	str	r0, [r4, #4]
d00595f6:	6863      	ldr	r3, [r4, #4]
d00595f8:	6123      	str	r3, [r4, #16]
d00595fa:	2300      	movs	r3, #0
d00595fc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0059600:	e7a8      	b.n	d0059554 <_printf_i+0x150>
d0059602:	6923      	ldr	r3, [r4, #16]
d0059604:	4632      	mov	r2, r6
d0059606:	4649      	mov	r1, r9
d0059608:	4640      	mov	r0, r8
d005960a:	47d0      	blx	sl
d005960c:	3001      	adds	r0, #1
d005960e:	d0ab      	beq.n	d0059568 <_printf_i+0x164>
d0059610:	6823      	ldr	r3, [r4, #0]
d0059612:	079b      	lsls	r3, r3, #30
d0059614:	d413      	bmi.n	d005963e <_printf_i+0x23a>
d0059616:	68e0      	ldr	r0, [r4, #12]
d0059618:	9b03      	ldr	r3, [sp, #12]
d005961a:	4298      	cmp	r0, r3
d005961c:	bfb8      	it	lt
d005961e:	4618      	movlt	r0, r3
d0059620:	e7a4      	b.n	d005956c <_printf_i+0x168>
d0059622:	2301      	movs	r3, #1
d0059624:	4632      	mov	r2, r6
d0059626:	4649      	mov	r1, r9
d0059628:	4640      	mov	r0, r8
d005962a:	47d0      	blx	sl
d005962c:	3001      	adds	r0, #1
d005962e:	d09b      	beq.n	d0059568 <_printf_i+0x164>
d0059630:	3501      	adds	r5, #1
d0059632:	68e3      	ldr	r3, [r4, #12]
d0059634:	9903      	ldr	r1, [sp, #12]
d0059636:	1a5b      	subs	r3, r3, r1
d0059638:	42ab      	cmp	r3, r5
d005963a:	dcf2      	bgt.n	d0059622 <_printf_i+0x21e>
d005963c:	e7eb      	b.n	d0059616 <_printf_i+0x212>
d005963e:	2500      	movs	r5, #0
d0059640:	f104 0619 	add.w	r6, r4, #25
d0059644:	e7f5      	b.n	d0059632 <_printf_i+0x22e>
d0059646:	bf00      	nop
d0059648:	d005a6f5 	.word	0xd005a6f5
d005964c:	d005a706 	.word	0xd005a706

d0059650 <_read_r>:
d0059650:	b538      	push	{r3, r4, r5, lr}
d0059652:	4d07      	ldr	r5, [pc, #28]	; (d0059670 <_read_r+0x20>)
d0059654:	4604      	mov	r4, r0
d0059656:	4608      	mov	r0, r1
d0059658:	4611      	mov	r1, r2
d005965a:	2200      	movs	r2, #0
d005965c:	602a      	str	r2, [r5, #0]
d005965e:	461a      	mov	r2, r3
d0059660:	f7f6 fd28 	bl	d00500b4 <_read>
d0059664:	1c43      	adds	r3, r0, #1
d0059666:	d102      	bne.n	d005966e <_read_r+0x1e>
d0059668:	682b      	ldr	r3, [r5, #0]
d005966a:	b103      	cbz	r3, d005966e <_read_r+0x1e>
d005966c:	6023      	str	r3, [r4, #0]
d005966e:	bd38      	pop	{r3, r4, r5, pc}
d0059670:	d014634c 	.word	0xd014634c

d0059674 <_fstat_r>:
d0059674:	b538      	push	{r3, r4, r5, lr}
d0059676:	4d07      	ldr	r5, [pc, #28]	; (d0059694 <_fstat_r+0x20>)
d0059678:	2300      	movs	r3, #0
d005967a:	4604      	mov	r4, r0
d005967c:	4608      	mov	r0, r1
d005967e:	4611      	mov	r1, r2
d0059680:	602b      	str	r3, [r5, #0]
d0059682:	f7f6 fd25 	bl	d00500d0 <_fstat>
d0059686:	1c43      	adds	r3, r0, #1
d0059688:	d102      	bne.n	d0059690 <_fstat_r+0x1c>
d005968a:	682b      	ldr	r3, [r5, #0]
d005968c:	b103      	cbz	r3, d0059690 <_fstat_r+0x1c>
d005968e:	6023      	str	r3, [r4, #0]
d0059690:	bd38      	pop	{r3, r4, r5, pc}
d0059692:	bf00      	nop
d0059694:	d014634c 	.word	0xd014634c
	...

d00596a0 <memchr>:
d00596a0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00596a4:	2a10      	cmp	r2, #16
d00596a6:	db2b      	blt.n	d0059700 <memchr+0x60>
d00596a8:	f010 0f07 	tst.w	r0, #7
d00596ac:	d008      	beq.n	d00596c0 <memchr+0x20>
d00596ae:	f810 3b01 	ldrb.w	r3, [r0], #1
d00596b2:	3a01      	subs	r2, #1
d00596b4:	428b      	cmp	r3, r1
d00596b6:	d02d      	beq.n	d0059714 <memchr+0x74>
d00596b8:	f010 0f07 	tst.w	r0, #7
d00596bc:	b342      	cbz	r2, d0059710 <memchr+0x70>
d00596be:	d1f6      	bne.n	d00596ae <memchr+0xe>
d00596c0:	b4f0      	push	{r4, r5, r6, r7}
d00596c2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00596c6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00596ca:	f022 0407 	bic.w	r4, r2, #7
d00596ce:	f07f 0700 	mvns.w	r7, #0
d00596d2:	2300      	movs	r3, #0
d00596d4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00596d8:	3c08      	subs	r4, #8
d00596da:	ea85 0501 	eor.w	r5, r5, r1
d00596de:	ea86 0601 	eor.w	r6, r6, r1
d00596e2:	fa85 f547 	uadd8	r5, r5, r7
d00596e6:	faa3 f587 	sel	r5, r3, r7
d00596ea:	fa86 f647 	uadd8	r6, r6, r7
d00596ee:	faa5 f687 	sel	r6, r5, r7
d00596f2:	b98e      	cbnz	r6, d0059718 <memchr+0x78>
d00596f4:	d1ee      	bne.n	d00596d4 <memchr+0x34>
d00596f6:	bcf0      	pop	{r4, r5, r6, r7}
d00596f8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00596fc:	f002 0207 	and.w	r2, r2, #7
d0059700:	b132      	cbz	r2, d0059710 <memchr+0x70>
d0059702:	f810 3b01 	ldrb.w	r3, [r0], #1
d0059706:	3a01      	subs	r2, #1
d0059708:	ea83 0301 	eor.w	r3, r3, r1
d005970c:	b113      	cbz	r3, d0059714 <memchr+0x74>
d005970e:	d1f8      	bne.n	d0059702 <memchr+0x62>
d0059710:	2000      	movs	r0, #0
d0059712:	4770      	bx	lr
d0059714:	3801      	subs	r0, #1
d0059716:	4770      	bx	lr
d0059718:	2d00      	cmp	r5, #0
d005971a:	bf06      	itte	eq
d005971c:	4635      	moveq	r5, r6
d005971e:	3803      	subeq	r0, #3
d0059720:	3807      	subne	r0, #7
d0059722:	f015 0f01 	tst.w	r5, #1
d0059726:	d107      	bne.n	d0059738 <memchr+0x98>
d0059728:	3001      	adds	r0, #1
d005972a:	f415 7f80 	tst.w	r5, #256	; 0x100
d005972e:	bf02      	ittt	eq
d0059730:	3001      	addeq	r0, #1
d0059732:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0059736:	3001      	addeq	r0, #1
d0059738:	bcf0      	pop	{r4, r5, r6, r7}
d005973a:	3801      	subs	r0, #1
d005973c:	4770      	bx	lr
d005973e:	bf00      	nop

d0059740 <memmove>:
d0059740:	4288      	cmp	r0, r1
d0059742:	b510      	push	{r4, lr}
d0059744:	eb01 0402 	add.w	r4, r1, r2
d0059748:	d902      	bls.n	d0059750 <memmove+0x10>
d005974a:	4284      	cmp	r4, r0
d005974c:	4623      	mov	r3, r4
d005974e:	d807      	bhi.n	d0059760 <memmove+0x20>
d0059750:	1e43      	subs	r3, r0, #1
d0059752:	42a1      	cmp	r1, r4
d0059754:	d008      	beq.n	d0059768 <memmove+0x28>
d0059756:	f811 2b01 	ldrb.w	r2, [r1], #1
d005975a:	f803 2f01 	strb.w	r2, [r3, #1]!
d005975e:	e7f8      	b.n	d0059752 <memmove+0x12>
d0059760:	4402      	add	r2, r0
d0059762:	4601      	mov	r1, r0
d0059764:	428a      	cmp	r2, r1
d0059766:	d100      	bne.n	d005976a <memmove+0x2a>
d0059768:	bd10      	pop	{r4, pc}
d005976a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d005976e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0059772:	e7f7      	b.n	d0059764 <memmove+0x24>

d0059774 <_malloc_usable_size_r>:
d0059774:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0059778:	1f18      	subs	r0, r3, #4
d005977a:	2b00      	cmp	r3, #0
d005977c:	bfbc      	itt	lt
d005977e:	580b      	ldrlt	r3, [r1, r0]
d0059780:	18c0      	addlt	r0, r0, r3
d0059782:	4770      	bx	lr

d0059784 <sinf_poly>:
d0059784:	07cb      	lsls	r3, r1, #31
d0059786:	d412      	bmi.n	d00597ae <sinf_poly+0x2a>
d0059788:	ee21 6b00 	vmul.f64	d6, d1, d0
d005978c:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0059790:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0059794:	eea5 7b01 	vfma.f64	d7, d5, d1
d0059798:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d005979c:	ee21 1b06 	vmul.f64	d1, d1, d6
d00597a0:	eea5 0b06 	vfma.f64	d0, d5, d6
d00597a4:	eea7 0b01 	vfma.f64	d0, d7, d1
d00597a8:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00597ac:	4770      	bx	lr
d00597ae:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d00597b2:	ee21 6b01 	vmul.f64	d6, d1, d1
d00597b6:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d00597ba:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d00597be:	eea1 7b05 	vfma.f64	d7, d1, d5
d00597c2:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d00597c6:	eea1 0b05 	vfma.f64	d0, d1, d5
d00597ca:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d00597ce:	ee21 1b06 	vmul.f64	d1, d1, d6
d00597d2:	eea6 0b05 	vfma.f64	d0, d6, d5
d00597d6:	e7e5      	b.n	d00597a4 <sinf_poly+0x20>

d00597d8 <cosf>:
d00597d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00597da:	ee10 4a10 	vmov	r4, s0
d00597de:	f3c4 530a 	ubfx	r3, r4, #20, #11
d00597e2:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d00597e6:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00597ea:	d20c      	bcs.n	d0059806 <cosf+0x2e>
d00597ec:	ee26 1b06 	vmul.f64	d1, d6, d6
d00597f0:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d00597f4:	d378      	bcc.n	d00598e8 <cosf+0x110>
d00597f6:	eeb0 0b46 	vmov.f64	d0, d6
d00597fa:	483f      	ldr	r0, [pc, #252]	; (d00598f8 <cosf+0x120>)
d00597fc:	2101      	movs	r1, #1
d00597fe:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059802:	f7ff bfbf 	b.w	d0059784 <sinf_poly>
d0059806:	f240 422e 	movw	r2, #1070	; 0x42e
d005980a:	4293      	cmp	r3, r2
d005980c:	d826      	bhi.n	d005985c <cosf+0x84>
d005980e:	4b3a      	ldr	r3, [pc, #232]	; (d00598f8 <cosf+0x120>)
d0059810:	ed93 7b08 	vldr	d7, [r3, #32]
d0059814:	ee26 7b07 	vmul.f64	d7, d6, d7
d0059818:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005981c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0059820:	ee17 1a90 	vmov	r1, s15
d0059824:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0059828:	1609      	asrs	r1, r1, #24
d005982a:	ee07 1a90 	vmov	s15, r1
d005982e:	f001 0203 	and.w	r2, r1, #3
d0059832:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059836:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d005983a:	ed92 0b00 	vldr	d0, [r2]
d005983e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0059842:	f011 0f02 	tst.w	r1, #2
d0059846:	eea5 6b47 	vfms.f64	d6, d5, d7
d005984a:	f081 0101 	eor.w	r1, r1, #1
d005984e:	bf08      	it	eq
d0059850:	4618      	moveq	r0, r3
d0059852:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059856:	ee20 0b06 	vmul.f64	d0, d0, d6
d005985a:	e7d0      	b.n	d00597fe <cosf+0x26>
d005985c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0059860:	d23e      	bcs.n	d00598e0 <cosf+0x108>
d0059862:	4b26      	ldr	r3, [pc, #152]	; (d00598fc <cosf+0x124>)
d0059864:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0059868:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d005986c:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0059870:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0059874:	6a06      	ldr	r6, [r0, #32]
d0059876:	6900      	ldr	r0, [r0, #16]
d0059878:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d005987c:	40a9      	lsls	r1, r5
d005987e:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0059882:	fba1 6706 	umull	r6, r7, r1, r6
d0059886:	fb05 f301 	mul.w	r3, r5, r1
d005988a:	463a      	mov	r2, r7
d005988c:	fbe0 2301 	umlal	r2, r3, r0, r1
d0059890:	1c11      	adds	r1, r2, #0
d0059892:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0059896:	2000      	movs	r0, #0
d0059898:	1a10      	subs	r0, r2, r0
d005989a:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005989e:	eb63 0101 	sbc.w	r1, r3, r1
d00598a2:	f000 fd27 	bl	d005a2f4 <__aeabi_l2d>
d00598a6:	0fb5      	lsrs	r5, r6, #30
d00598a8:	4b13      	ldr	r3, [pc, #76]	; (d00598f8 <cosf+0x120>)
d00598aa:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d00598ae:	ed9f 0b10 	vldr	d0, [pc, #64]	; d00598f0 <cosf+0x118>
d00598b2:	ec41 0b17 	vmov	d7, r0, r1
d00598b6:	f004 0203 	and.w	r2, r4, #3
d00598ba:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00598be:	ee27 0b00 	vmul.f64	d0, d7, d0
d00598c2:	ed92 7b00 	vldr	d7, [r2]
d00598c6:	ee20 1b00 	vmul.f64	d1, d0, d0
d00598ca:	f014 0f02 	tst.w	r4, #2
d00598ce:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00598d2:	f085 0101 	eor.w	r1, r5, #1
d00598d6:	bf08      	it	eq
d00598d8:	4618      	moveq	r0, r3
d00598da:	ee27 0b00 	vmul.f64	d0, d7, d0
d00598de:	e78e      	b.n	d00597fe <cosf+0x26>
d00598e0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00598e4:	f000 b844 	b.w	d0059970 <__math_invalidf>
d00598e8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00598ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00598ee:	bf00      	nop
d00598f0:	54442d18 	.word	0x54442d18
d00598f4:	3c1921fb 	.word	0x3c1921fb
d00598f8:	d005a9e0 	.word	0xd005a9e0
d00598fc:	d005a980 	.word	0xd005a980

d0059900 <with_errnof>:
d0059900:	b513      	push	{r0, r1, r4, lr}
d0059902:	4604      	mov	r4, r0
d0059904:	ed8d 0a01 	vstr	s0, [sp, #4]
d0059908:	f7fe fef4 	bl	d00586f4 <__errno>
d005990c:	ed9d 0a01 	vldr	s0, [sp, #4]
d0059910:	6004      	str	r4, [r0, #0]
d0059912:	b002      	add	sp, #8
d0059914:	bd10      	pop	{r4, pc}

d0059916 <xflowf>:
d0059916:	b130      	cbz	r0, d0059926 <xflowf+0x10>
d0059918:	eef1 7a40 	vneg.f32	s15, s0
d005991c:	ee27 0a80 	vmul.f32	s0, s15, s0
d0059920:	2022      	movs	r0, #34	; 0x22
d0059922:	f7ff bfed 	b.w	d0059900 <with_errnof>
d0059926:	eef0 7a40 	vmov.f32	s15, s0
d005992a:	e7f7      	b.n	d005991c <xflowf+0x6>

d005992c <__math_uflowf>:
d005992c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0059934 <__math_uflowf+0x8>
d0059930:	f7ff bff1 	b.w	d0059916 <xflowf>
d0059934:	10000000 	.word	0x10000000

d0059938 <__math_may_uflowf>:
d0059938:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0059940 <__math_may_uflowf+0x8>
d005993c:	f7ff bfeb 	b.w	d0059916 <xflowf>
d0059940:	1a200000 	.word	0x1a200000

d0059944 <__math_oflowf>:
d0059944:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005994c <__math_oflowf+0x8>
d0059948:	f7ff bfe5 	b.w	d0059916 <xflowf>
d005994c:	70000000 	.word	0x70000000

d0059950 <__math_divzerof>:
d0059950:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0059954:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0059958:	2800      	cmp	r0, #0
d005995a:	fe40 7a27 	vseleq.f32	s15, s0, s15
d005995e:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005996c <__math_divzerof+0x1c>
d0059962:	2022      	movs	r0, #34	; 0x22
d0059964:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0059968:	f7ff bfca 	b.w	d0059900 <with_errnof>
d005996c:	00000000 	.word	0x00000000

d0059970 <__math_invalidf>:
d0059970:	eef0 7a40 	vmov.f32	s15, s0
d0059974:	ee30 7a40 	vsub.f32	s14, s0, s0
d0059978:	eef4 7a67 	vcmp.f32	s15, s15
d005997c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059980:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0059984:	d602      	bvs.n	d005998c <__math_invalidf+0x1c>
d0059986:	2021      	movs	r0, #33	; 0x21
d0059988:	f7ff bfba 	b.w	d0059900 <with_errnof>
d005998c:	4770      	bx	lr
	...

d0059990 <expf>:
d0059990:	ee10 2a10 	vmov	r2, s0
d0059994:	b470      	push	{r4, r5, r6}
d0059996:	f3c2 530a 	ubfx	r3, r2, #20, #11
d005999a:	f240 442a 	movw	r4, #1066	; 0x42a
d005999e:	42a3      	cmp	r3, r4
d00599a0:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00599a4:	d92a      	bls.n	d00599fc <expf+0x6c>
d00599a6:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d00599aa:	d059      	beq.n	d0059a60 <expf+0xd0>
d00599ac:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00599b0:	d303      	bcc.n	d00599ba <expf+0x2a>
d00599b2:	ee30 0a00 	vadd.f32	s0, s0, s0
d00599b6:	bc70      	pop	{r4, r5, r6}
d00599b8:	4770      	bx	lr
d00599ba:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0059a68 <expf+0xd8>
d00599be:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00599c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00599c6:	dd03      	ble.n	d00599d0 <expf+0x40>
d00599c8:	bc70      	pop	{r4, r5, r6}
d00599ca:	2000      	movs	r0, #0
d00599cc:	f7ff bfba 	b.w	d0059944 <__math_oflowf>
d00599d0:	eddf 7a26 	vldr	s15, [pc, #152]	; d0059a6c <expf+0xdc>
d00599d4:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00599d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00599dc:	d503      	bpl.n	d00599e6 <expf+0x56>
d00599de:	bc70      	pop	{r4, r5, r6}
d00599e0:	2000      	movs	r0, #0
d00599e2:	f7ff bfa3 	b.w	d005992c <__math_uflowf>
d00599e6:	eddf 7a22 	vldr	s15, [pc, #136]	; d0059a70 <expf+0xe0>
d00599ea:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00599ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00599f2:	d503      	bpl.n	d00599fc <expf+0x6c>
d00599f4:	bc70      	pop	{r4, r5, r6}
d00599f6:	2000      	movs	r0, #0
d00599f8:	f7ff bf9e 	b.w	d0059938 <__math_may_uflowf>
d00599fc:	4b1d      	ldr	r3, [pc, #116]	; (d0059a74 <expf+0xe4>)
d00599fe:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d0059a02:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d0059a06:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d0059a0a:	eeb0 7b44 	vmov.f64	d7, d4
d0059a0e:	eea5 7b06 	vfma.f64	d7, d5, d6
d0059a12:	ee17 5a10 	vmov	r5, s14
d0059a16:	ee37 7b44 	vsub.f64	d7, d7, d4
d0059a1a:	f005 021f 	and.w	r2, r5, #31
d0059a1e:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059a22:	e9d2 4600 	ldrd	r4, r6, [r2]
d0059a26:	ee95 7b06 	vfnms.f64	d7, d5, d6
d0059a2a:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d0059a2e:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d0059a32:	eea4 0b07 	vfma.f64	d0, d4, d7
d0059a36:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d0059a3a:	2300      	movs	r3, #0
d0059a3c:	1918      	adds	r0, r3, r4
d0059a3e:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d0059a42:	eb42 0106 	adc.w	r1, r2, r6
d0059a46:	eea5 6b07 	vfma.f64	d6, d5, d7
d0059a4a:	ee27 5b07 	vmul.f64	d5, d7, d7
d0059a4e:	ec41 0b17 	vmov	d7, r0, r1
d0059a52:	eea6 0b05 	vfma.f64	d0, d6, d5
d0059a56:	ee20 0b07 	vmul.f64	d0, d0, d7
d0059a5a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0059a5e:	e7aa      	b.n	d00599b6 <expf+0x26>
d0059a60:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0059a78 <expf+0xe8>
d0059a64:	e7a7      	b.n	d00599b6 <expf+0x26>
d0059a66:	bf00      	nop
d0059a68:	42b17217 	.word	0x42b17217
d0059a6c:	c2cff1b4 	.word	0xc2cff1b4
d0059a70:	c2ce8ecf 	.word	0xc2ce8ecf
d0059a74:	d005a718 	.word	0xd005a718
d0059a78:	00000000 	.word	0x00000000

d0059a7c <logf>:
d0059a7c:	ee10 3a10 	vmov	r3, s0
d0059a80:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d0059a84:	b410      	push	{r4}
d0059a86:	d055      	beq.n	d0059b34 <logf+0xb8>
d0059a88:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0059a8c:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0059a90:	d31a      	bcc.n	d0059ac8 <logf+0x4c>
d0059a92:	005a      	lsls	r2, r3, #1
d0059a94:	d104      	bne.n	d0059aa0 <logf+0x24>
d0059a96:	f85d 4b04 	ldr.w	r4, [sp], #4
d0059a9a:	2001      	movs	r0, #1
d0059a9c:	f7ff bf58 	b.w	d0059950 <__math_divzerof>
d0059aa0:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0059aa4:	d043      	beq.n	d0059b2e <logf+0xb2>
d0059aa6:	2b00      	cmp	r3, #0
d0059aa8:	db02      	blt.n	d0059ab0 <logf+0x34>
d0059aaa:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0059aae:	d303      	bcc.n	d0059ab8 <logf+0x3c>
d0059ab0:	f85d 4b04 	ldr.w	r4, [sp], #4
d0059ab4:	f7ff bf5c 	b.w	d0059970 <__math_invalidf>
d0059ab8:	eddf 7a20 	vldr	s15, [pc, #128]	; d0059b3c <logf+0xc0>
d0059abc:	ee20 0a27 	vmul.f32	s0, s0, s15
d0059ac0:	ee10 3a10 	vmov	r3, s0
d0059ac4:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0059ac8:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0059acc:	491c      	ldr	r1, [pc, #112]	; (d0059b40 <logf+0xc4>)
d0059ace:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d0059ad2:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d0059ad6:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0059ada:	0dd4      	lsrs	r4, r2, #23
d0059adc:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0059ae0:	05e4      	lsls	r4, r4, #23
d0059ae2:	ed90 6b00 	vldr	d6, [r0]
d0059ae6:	1b1b      	subs	r3, r3, r4
d0059ae8:	ee07 3a90 	vmov	s15, r3
d0059aec:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0059af0:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0059af4:	15d2      	asrs	r2, r2, #23
d0059af6:	eea6 0b07 	vfma.f64	d0, d6, d7
d0059afa:	ed90 6b02 	vldr	d6, [r0, #8]
d0059afe:	ee07 2a90 	vmov	s15, r2
d0059b02:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0059b06:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d0059b0a:	eea7 6b05 	vfma.f64	d6, d7, d5
d0059b0e:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d0059b12:	ee20 5b00 	vmul.f64	d5, d0, d0
d0059b16:	eea4 7b00 	vfma.f64	d7, d4, d0
d0059b1a:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d0059b1e:	ee30 0b06 	vadd.f64	d0, d0, d6
d0059b22:	eea4 7b05 	vfma.f64	d7, d4, d5
d0059b26:	eea5 0b07 	vfma.f64	d0, d5, d7
d0059b2a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0059b2e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0059b32:	4770      	bx	lr
d0059b34:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0059b44 <logf+0xc8>
d0059b38:	e7f9      	b.n	d0059b2e <logf+0xb2>
d0059b3a:	bf00      	nop
d0059b3c:	4b000000 	.word	0x4b000000
d0059b40:	d005a860 	.word	0xd005a860
d0059b44:	00000000 	.word	0x00000000

d0059b48 <sinf_poly>:
d0059b48:	07cb      	lsls	r3, r1, #31
d0059b4a:	d412      	bmi.n	d0059b72 <sinf_poly+0x2a>
d0059b4c:	ee21 6b00 	vmul.f64	d6, d1, d0
d0059b50:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0059b54:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0059b58:	eea5 7b01 	vfma.f64	d7, d5, d1
d0059b5c:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0059b60:	ee21 1b06 	vmul.f64	d1, d1, d6
d0059b64:	eea5 0b06 	vfma.f64	d0, d5, d6
d0059b68:	eea7 0b01 	vfma.f64	d0, d7, d1
d0059b6c:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0059b70:	4770      	bx	lr
d0059b72:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0059b76:	ee21 6b01 	vmul.f64	d6, d1, d1
d0059b7a:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0059b7e:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0059b82:	eea1 7b05 	vfma.f64	d7, d1, d5
d0059b86:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0059b8a:	eea1 0b05 	vfma.f64	d0, d1, d5
d0059b8e:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0059b92:	ee21 1b06 	vmul.f64	d1, d1, d6
d0059b96:	eea6 0b05 	vfma.f64	d0, d6, d5
d0059b9a:	e7e5      	b.n	d0059b68 <sinf_poly+0x20>
d0059b9c:	0000      	movs	r0, r0
	...

d0059ba0 <sinf>:
d0059ba0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d0059ba2:	ee10 4a10 	vmov	r4, s0
d0059ba6:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0059baa:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0059bae:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0059bb2:	eef0 7a40 	vmov.f32	s15, s0
d0059bb6:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0059bba:	d218      	bcs.n	d0059bee <sinf+0x4e>
d0059bbc:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059bc0:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0059bc4:	d20a      	bcs.n	d0059bdc <sinf+0x3c>
d0059bc6:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0059bca:	d103      	bne.n	d0059bd4 <sinf+0x34>
d0059bcc:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0059bd0:	ed8d 1a01 	vstr	s2, [sp, #4]
d0059bd4:	eeb0 0a67 	vmov.f32	s0, s15
d0059bd8:	b003      	add	sp, #12
d0059bda:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0059bdc:	483e      	ldr	r0, [pc, #248]	; (d0059cd8 <sinf+0x138>)
d0059bde:	eeb0 0b46 	vmov.f64	d0, d6
d0059be2:	2100      	movs	r1, #0
d0059be4:	b003      	add	sp, #12
d0059be6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0059bea:	f7ff bfad 	b.w	d0059b48 <sinf_poly>
d0059bee:	f240 422e 	movw	r2, #1070	; 0x42e
d0059bf2:	4293      	cmp	r3, r2
d0059bf4:	d824      	bhi.n	d0059c40 <sinf+0xa0>
d0059bf6:	4b38      	ldr	r3, [pc, #224]	; (d0059cd8 <sinf+0x138>)
d0059bf8:	ed93 7b08 	vldr	d7, [r3, #32]
d0059bfc:	ee26 7b07 	vmul.f64	d7, d6, d7
d0059c00:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0059c04:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0059c08:	ee17 1a90 	vmov	r1, s15
d0059c0c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0059c10:	1609      	asrs	r1, r1, #24
d0059c12:	ee07 1a90 	vmov	s15, r1
d0059c16:	f001 0203 	and.w	r2, r1, #3
d0059c1a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059c1e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0059c22:	ed92 0b00 	vldr	d0, [r2]
d0059c26:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0059c2a:	f011 0f02 	tst.w	r1, #2
d0059c2e:	eea5 6b47 	vfms.f64	d6, d5, d7
d0059c32:	bf08      	it	eq
d0059c34:	4618      	moveq	r0, r3
d0059c36:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059c3a:	ee20 0b06 	vmul.f64	d0, d0, d6
d0059c3e:	e7d1      	b.n	d0059be4 <sinf+0x44>
d0059c40:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0059c44:	d23d      	bcs.n	d0059cc2 <sinf+0x122>
d0059c46:	4b25      	ldr	r3, [pc, #148]	; (d0059cdc <sinf+0x13c>)
d0059c48:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0059c4c:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0059c50:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0059c54:	6a06      	ldr	r6, [r0, #32]
d0059c56:	6900      	ldr	r0, [r0, #16]
d0059c58:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0059c5c:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0059c60:	40a9      	lsls	r1, r5
d0059c62:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0059c66:	fba1 6706 	umull	r6, r7, r1, r6
d0059c6a:	fb05 f301 	mul.w	r3, r5, r1
d0059c6e:	463a      	mov	r2, r7
d0059c70:	fbe0 2301 	umlal	r2, r3, r0, r1
d0059c74:	1c11      	adds	r1, r2, #0
d0059c76:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0059c7a:	2000      	movs	r0, #0
d0059c7c:	1a10      	subs	r0, r2, r0
d0059c7e:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0059c82:	eb63 0101 	sbc.w	r1, r3, r1
d0059c86:	f000 fb35 	bl	d005a2f4 <__aeabi_l2d>
d0059c8a:	0fb5      	lsrs	r5, r6, #30
d0059c8c:	4a12      	ldr	r2, [pc, #72]	; (d0059cd8 <sinf+0x138>)
d0059c8e:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d0059c92:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0059cd0 <sinf+0x130>
d0059c96:	ec41 0b17 	vmov	d7, r0, r1
d0059c9a:	f003 0103 	and.w	r1, r3, #3
d0059c9e:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d0059ca2:	ee27 0b00 	vmul.f64	d0, d7, d0
d0059ca6:	ed91 7b00 	vldr	d7, [r1]
d0059caa:	ee20 1b00 	vmul.f64	d1, d0, d0
d0059cae:	f013 0f02 	tst.w	r3, #2
d0059cb2:	f102 0070 	add.w	r0, r2, #112	; 0x70
d0059cb6:	4629      	mov	r1, r5
d0059cb8:	bf08      	it	eq
d0059cba:	4610      	moveq	r0, r2
d0059cbc:	ee27 0b00 	vmul.f64	d0, d7, d0
d0059cc0:	e790      	b.n	d0059be4 <sinf+0x44>
d0059cc2:	b003      	add	sp, #12
d0059cc4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0059cc8:	f7ff be52 	b.w	d0059970 <__math_invalidf>
d0059ccc:	f3af 8000 	nop.w
d0059cd0:	54442d18 	.word	0x54442d18
d0059cd4:	3c1921fb 	.word	0x3c1921fb
d0059cd8:	d005a9e0 	.word	0xd005a9e0
d0059cdc:	d005a980 	.word	0xd005a980

d0059ce0 <atan2f>:
d0059ce0:	f000 b800 	b.w	d0059ce4 <__ieee754_atan2f>

d0059ce4 <__ieee754_atan2f>:
d0059ce4:	ee10 2a90 	vmov	r2, s1
d0059ce8:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d0059cec:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0059cf0:	b510      	push	{r4, lr}
d0059cf2:	eef0 7a40 	vmov.f32	s15, s0
d0059cf6:	dc06      	bgt.n	d0059d06 <__ieee754_atan2f+0x22>
d0059cf8:	ee10 0a10 	vmov	r0, s0
d0059cfc:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d0059d00:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0059d04:	dd04      	ble.n	d0059d10 <__ieee754_atan2f+0x2c>
d0059d06:	ee77 7aa0 	vadd.f32	s15, s15, s1
d0059d0a:	eeb0 0a67 	vmov.f32	s0, s15
d0059d0e:	bd10      	pop	{r4, pc}
d0059d10:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d0059d14:	d103      	bne.n	d0059d1e <__ieee754_atan2f+0x3a>
d0059d16:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0059d1a:	f000 b881 	b.w	d0059e20 <atanf>
d0059d1e:	1794      	asrs	r4, r2, #30
d0059d20:	f004 0402 	and.w	r4, r4, #2
d0059d24:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d0059d28:	b93b      	cbnz	r3, d0059d3a <__ieee754_atan2f+0x56>
d0059d2a:	2c02      	cmp	r4, #2
d0059d2c:	d05c      	beq.n	d0059de8 <__ieee754_atan2f+0x104>
d0059d2e:	ed9f 7a33 	vldr	s14, [pc, #204]	; d0059dfc <__ieee754_atan2f+0x118>
d0059d32:	2c03      	cmp	r4, #3
d0059d34:	fe47 7a00 	vseleq.f32	s15, s14, s0
d0059d38:	e7e7      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059d3a:	b939      	cbnz	r1, d0059d4c <__ieee754_atan2f+0x68>
d0059d3c:	eddf 7a30 	vldr	s15, [pc, #192]	; d0059e00 <__ieee754_atan2f+0x11c>
d0059d40:	ed9f 0a30 	vldr	s0, [pc, #192]	; d0059e04 <__ieee754_atan2f+0x120>
d0059d44:	2800      	cmp	r0, #0
d0059d46:	fe67 7a80 	vselge.f32	s15, s15, s0
d0059d4a:	e7de      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059d4c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0059d50:	d110      	bne.n	d0059d74 <__ieee754_atan2f+0x90>
d0059d52:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0059d56:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d0059d5a:	d107      	bne.n	d0059d6c <__ieee754_atan2f+0x88>
d0059d5c:	2c02      	cmp	r4, #2
d0059d5e:	d846      	bhi.n	d0059dee <__ieee754_atan2f+0x10a>
d0059d60:	4b29      	ldr	r3, [pc, #164]	; (d0059e08 <__ieee754_atan2f+0x124>)
d0059d62:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d0059d66:	edd4 7a00 	vldr	s15, [r4]
d0059d6a:	e7ce      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059d6c:	2c02      	cmp	r4, #2
d0059d6e:	d841      	bhi.n	d0059df4 <__ieee754_atan2f+0x110>
d0059d70:	4b26      	ldr	r3, [pc, #152]	; (d0059e0c <__ieee754_atan2f+0x128>)
d0059d72:	e7f6      	b.n	d0059d62 <__ieee754_atan2f+0x7e>
d0059d74:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0059d78:	d0e0      	beq.n	d0059d3c <__ieee754_atan2f+0x58>
d0059d7a:	1a5b      	subs	r3, r3, r1
d0059d7c:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d0059d80:	ea4f 51e3 	mov.w	r1, r3, asr #23
d0059d84:	da1a      	bge.n	d0059dbc <__ieee754_atan2f+0xd8>
d0059d86:	2a00      	cmp	r2, #0
d0059d88:	da01      	bge.n	d0059d8e <__ieee754_atan2f+0xaa>
d0059d8a:	313c      	adds	r1, #60	; 0x3c
d0059d8c:	db19      	blt.n	d0059dc2 <__ieee754_atan2f+0xde>
d0059d8e:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0059d92:	f000 f919 	bl	d0059fc8 <fabsf>
d0059d96:	f000 f843 	bl	d0059e20 <atanf>
d0059d9a:	eef0 7a40 	vmov.f32	s15, s0
d0059d9e:	2c01      	cmp	r4, #1
d0059da0:	d012      	beq.n	d0059dc8 <__ieee754_atan2f+0xe4>
d0059da2:	2c02      	cmp	r4, #2
d0059da4:	d017      	beq.n	d0059dd6 <__ieee754_atan2f+0xf2>
d0059da6:	2c00      	cmp	r4, #0
d0059da8:	d0af      	beq.n	d0059d0a <__ieee754_atan2f+0x26>
d0059daa:	ed9f 0a19 	vldr	s0, [pc, #100]	; d0059e10 <__ieee754_atan2f+0x12c>
d0059dae:	ee77 7a80 	vadd.f32	s15, s15, s0
d0059db2:	ed9f 0a18 	vldr	s0, [pc, #96]	; d0059e14 <__ieee754_atan2f+0x130>
d0059db6:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0059dba:	e7a6      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059dbc:	eddf 7a10 	vldr	s15, [pc, #64]	; d0059e00 <__ieee754_atan2f+0x11c>
d0059dc0:	e7ed      	b.n	d0059d9e <__ieee754_atan2f+0xba>
d0059dc2:	eddf 7a15 	vldr	s15, [pc, #84]	; d0059e18 <__ieee754_atan2f+0x134>
d0059dc6:	e7ea      	b.n	d0059d9e <__ieee754_atan2f+0xba>
d0059dc8:	ee17 3a90 	vmov	r3, s15
d0059dcc:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d0059dd0:	ee07 3a90 	vmov	s15, r3
d0059dd4:	e799      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059dd6:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d0059e10 <__ieee754_atan2f+0x12c>
d0059dda:	ee77 7a80 	vadd.f32	s15, s15, s0
d0059dde:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0059e14 <__ieee754_atan2f+0x130>
d0059de2:	ee70 7a67 	vsub.f32	s15, s0, s15
d0059de6:	e790      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059de8:	eddf 7a0a 	vldr	s15, [pc, #40]	; d0059e14 <__ieee754_atan2f+0x130>
d0059dec:	e78d      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059dee:	eddf 7a0b 	vldr	s15, [pc, #44]	; d0059e1c <__ieee754_atan2f+0x138>
d0059df2:	e78a      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059df4:	eddf 7a08 	vldr	s15, [pc, #32]	; d0059e18 <__ieee754_atan2f+0x134>
d0059df8:	e787      	b.n	d0059d0a <__ieee754_atan2f+0x26>
d0059dfa:	bf00      	nop
d0059dfc:	c0490fdb 	.word	0xc0490fdb
d0059e00:	3fc90fdb 	.word	0x3fc90fdb
d0059e04:	bfc90fdb 	.word	0xbfc90fdb
d0059e08:	d005aac0 	.word	0xd005aac0
d0059e0c:	d005aacc 	.word	0xd005aacc
d0059e10:	33bbbd2e 	.word	0x33bbbd2e
d0059e14:	40490fdb 	.word	0x40490fdb
d0059e18:	00000000 	.word	0x00000000
d0059e1c:	3f490fdb 	.word	0x3f490fdb

d0059e20 <atanf>:
d0059e20:	b538      	push	{r3, r4, r5, lr}
d0059e22:	ee10 5a10 	vmov	r5, s0
d0059e26:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d0059e2a:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d0059e2e:	eef0 7a40 	vmov.f32	s15, s0
d0059e32:	db0f      	blt.n	d0059e54 <atanf+0x34>
d0059e34:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d0059e38:	dd04      	ble.n	d0059e44 <atanf+0x24>
d0059e3a:	ee70 7a00 	vadd.f32	s15, s0, s0
d0059e3e:	eeb0 0a67 	vmov.f32	s0, s15
d0059e42:	bd38      	pop	{r3, r4, r5, pc}
d0059e44:	eddf 7a4d 	vldr	s15, [pc, #308]	; d0059f7c <atanf+0x15c>
d0059e48:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d0059f80 <atanf+0x160>
d0059e4c:	2d00      	cmp	r5, #0
d0059e4e:	fe77 7a80 	vselgt.f32	s15, s15, s0
d0059e52:	e7f4      	b.n	d0059e3e <atanf+0x1e>
d0059e54:	4b4b      	ldr	r3, [pc, #300]	; (d0059f84 <atanf+0x164>)
d0059e56:	429c      	cmp	r4, r3
d0059e58:	dc10      	bgt.n	d0059e7c <atanf+0x5c>
d0059e5a:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d0059e5e:	da0a      	bge.n	d0059e76 <atanf+0x56>
d0059e60:	ed9f 7a49 	vldr	s14, [pc, #292]	; d0059f88 <atanf+0x168>
d0059e64:	ee30 7a07 	vadd.f32	s14, s0, s14
d0059e68:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0059e6c:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0059e70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059e74:	dce3      	bgt.n	d0059e3e <atanf+0x1e>
d0059e76:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0059e7a:	e013      	b.n	d0059ea4 <atanf+0x84>
d0059e7c:	f000 f8a4 	bl	d0059fc8 <fabsf>
d0059e80:	4b42      	ldr	r3, [pc, #264]	; (d0059f8c <atanf+0x16c>)
d0059e82:	429c      	cmp	r4, r3
d0059e84:	dc4f      	bgt.n	d0059f26 <atanf+0x106>
d0059e86:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d0059e8a:	429c      	cmp	r4, r3
d0059e8c:	dc41      	bgt.n	d0059f12 <atanf+0xf2>
d0059e8e:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0059e92:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d0059e96:	eea0 7a27 	vfma.f32	s14, s0, s15
d0059e9a:	2300      	movs	r3, #0
d0059e9c:	ee30 0a27 	vadd.f32	s0, s0, s15
d0059ea0:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0059ea4:	1c5a      	adds	r2, r3, #1
d0059ea6:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0059eaa:	eddf 5a39 	vldr	s11, [pc, #228]	; d0059f90 <atanf+0x170>
d0059eae:	ed9f 6a39 	vldr	s12, [pc, #228]	; d0059f94 <atanf+0x174>
d0059eb2:	ed9f 5a39 	vldr	s10, [pc, #228]	; d0059f98 <atanf+0x178>
d0059eb6:	ed9f 0a39 	vldr	s0, [pc, #228]	; d0059f9c <atanf+0x17c>
d0059eba:	ee26 7aa6 	vmul.f32	s14, s13, s13
d0059ebe:	eea7 6a25 	vfma.f32	s12, s14, s11
d0059ec2:	eddf 5a37 	vldr	s11, [pc, #220]	; d0059fa0 <atanf+0x180>
d0059ec6:	eee6 5a07 	vfma.f32	s11, s12, s14
d0059eca:	ed9f 6a36 	vldr	s12, [pc, #216]	; d0059fa4 <atanf+0x184>
d0059ece:	eea5 6a87 	vfma.f32	s12, s11, s14
d0059ed2:	eddf 5a35 	vldr	s11, [pc, #212]	; d0059fa8 <atanf+0x188>
d0059ed6:	eee6 5a07 	vfma.f32	s11, s12, s14
d0059eda:	ed9f 6a34 	vldr	s12, [pc, #208]	; d0059fac <atanf+0x18c>
d0059ede:	eea5 6a87 	vfma.f32	s12, s11, s14
d0059ee2:	eddf 5a33 	vldr	s11, [pc, #204]	; d0059fb0 <atanf+0x190>
d0059ee6:	eee7 5a05 	vfma.f32	s11, s14, s10
d0059eea:	ed9f 5a32 	vldr	s10, [pc, #200]	; d0059fb4 <atanf+0x194>
d0059eee:	eea5 5a87 	vfma.f32	s10, s11, s14
d0059ef2:	eddf 5a31 	vldr	s11, [pc, #196]	; d0059fb8 <atanf+0x198>
d0059ef6:	eee5 5a07 	vfma.f32	s11, s10, s14
d0059efa:	eea5 0a87 	vfma.f32	s0, s11, s14
d0059efe:	ee20 0a07 	vmul.f32	s0, s0, s14
d0059f02:	eea6 0a26 	vfma.f32	s0, s12, s13
d0059f06:	ee27 0a80 	vmul.f32	s0, s15, s0
d0059f0a:	d121      	bne.n	d0059f50 <atanf+0x130>
d0059f0c:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0059f10:	e795      	b.n	d0059e3e <atanf+0x1e>
d0059f12:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0059f16:	ee30 7a67 	vsub.f32	s14, s0, s15
d0059f1a:	ee30 0a27 	vadd.f32	s0, s0, s15
d0059f1e:	2301      	movs	r3, #1
d0059f20:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0059f24:	e7be      	b.n	d0059ea4 <atanf+0x84>
d0059f26:	4b25      	ldr	r3, [pc, #148]	; (d0059fbc <atanf+0x19c>)
d0059f28:	429c      	cmp	r4, r3
d0059f2a:	dc0b      	bgt.n	d0059f44 <atanf+0x124>
d0059f2c:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d0059f30:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0059f34:	eea0 7a27 	vfma.f32	s14, s0, s15
d0059f38:	2302      	movs	r3, #2
d0059f3a:	ee70 6a67 	vsub.f32	s13, s0, s15
d0059f3e:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0059f42:	e7af      	b.n	d0059ea4 <atanf+0x84>
d0059f44:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d0059f48:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0059f4c:	2303      	movs	r3, #3
d0059f4e:	e7a9      	b.n	d0059ea4 <atanf+0x84>
d0059f50:	4a1b      	ldr	r2, [pc, #108]	; (d0059fc0 <atanf+0x1a0>)
d0059f52:	491c      	ldr	r1, [pc, #112]	; (d0059fc4 <atanf+0x1a4>)
d0059f54:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d0059f58:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0059f5c:	ed93 7a00 	vldr	s14, [r3]
d0059f60:	ee30 0a47 	vsub.f32	s0, s0, s14
d0059f64:	2d00      	cmp	r5, #0
d0059f66:	ee70 7a67 	vsub.f32	s15, s0, s15
d0059f6a:	ed92 0a00 	vldr	s0, [r2]
d0059f6e:	ee70 7a67 	vsub.f32	s15, s0, s15
d0059f72:	bfb8      	it	lt
d0059f74:	eef1 7a67 	vneglt.f32	s15, s15
d0059f78:	e761      	b.n	d0059e3e <atanf+0x1e>
d0059f7a:	bf00      	nop
d0059f7c:	3fc90fdb 	.word	0x3fc90fdb
d0059f80:	bfc90fdb 	.word	0xbfc90fdb
d0059f84:	3edfffff 	.word	0x3edfffff
d0059f88:	7149f2ca 	.word	0x7149f2ca
d0059f8c:	3f97ffff 	.word	0x3f97ffff
d0059f90:	3c8569d7 	.word	0x3c8569d7
d0059f94:	3d4bda59 	.word	0x3d4bda59
d0059f98:	bd15a221 	.word	0xbd15a221
d0059f9c:	be4ccccd 	.word	0xbe4ccccd
d0059fa0:	3d886b35 	.word	0x3d886b35
d0059fa4:	3dba2e6e 	.word	0x3dba2e6e
d0059fa8:	3e124925 	.word	0x3e124925
d0059fac:	3eaaaaab 	.word	0x3eaaaaab
d0059fb0:	bd6ef16b 	.word	0xbd6ef16b
d0059fb4:	bd9d8795 	.word	0xbd9d8795
d0059fb8:	bde38e38 	.word	0xbde38e38
d0059fbc:	401bffff 	.word	0x401bffff
d0059fc0:	d005aad8 	.word	0xd005aad8
d0059fc4:	d005aae8 	.word	0xd005aae8

d0059fc8 <fabsf>:
d0059fc8:	ee10 3a10 	vmov	r3, s0
d0059fcc:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d0059fd0:	ee00 3a10 	vmov	s0, r3
d0059fd4:	4770      	bx	lr
	...

d0059fd8 <__aeabi_drsub>:
d0059fd8:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0059fdc:	e002      	b.n	d0059fe4 <__adddf3>
d0059fde:	bf00      	nop

d0059fe0 <__aeabi_dsub>:
d0059fe0:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d0059fe4 <__adddf3>:
d0059fe4:	b530      	push	{r4, r5, lr}
d0059fe6:	ea4f 0441 	mov.w	r4, r1, lsl #1
d0059fea:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0059fee:	ea94 0f05 	teq	r4, r5
d0059ff2:	bf08      	it	eq
d0059ff4:	ea90 0f02 	teqeq	r0, r2
d0059ff8:	bf1f      	itttt	ne
d0059ffa:	ea54 0c00 	orrsne.w	ip, r4, r0
d0059ffe:	ea55 0c02 	orrsne.w	ip, r5, r2
d005a002:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d005a006:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005a00a:	f000 80e2 	beq.w	d005a1d2 <__adddf3+0x1ee>
d005a00e:	ea4f 5454 	mov.w	r4, r4, lsr #21
d005a012:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d005a016:	bfb8      	it	lt
d005a018:	426d      	neglt	r5, r5
d005a01a:	dd0c      	ble.n	d005a036 <__adddf3+0x52>
d005a01c:	442c      	add	r4, r5
d005a01e:	ea80 0202 	eor.w	r2, r0, r2
d005a022:	ea81 0303 	eor.w	r3, r1, r3
d005a026:	ea82 0000 	eor.w	r0, r2, r0
d005a02a:	ea83 0101 	eor.w	r1, r3, r1
d005a02e:	ea80 0202 	eor.w	r2, r0, r2
d005a032:	ea81 0303 	eor.w	r3, r1, r3
d005a036:	2d36      	cmp	r5, #54	; 0x36
d005a038:	bf88      	it	hi
d005a03a:	bd30      	pophi	{r4, r5, pc}
d005a03c:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d005a040:	ea4f 3101 	mov.w	r1, r1, lsl #12
d005a044:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d005a048:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d005a04c:	d002      	beq.n	d005a054 <__adddf3+0x70>
d005a04e:	4240      	negs	r0, r0
d005a050:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005a054:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d005a058:	ea4f 3303 	mov.w	r3, r3, lsl #12
d005a05c:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d005a060:	d002      	beq.n	d005a068 <__adddf3+0x84>
d005a062:	4252      	negs	r2, r2
d005a064:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d005a068:	ea94 0f05 	teq	r4, r5
d005a06c:	f000 80a7 	beq.w	d005a1be <__adddf3+0x1da>
d005a070:	f1a4 0401 	sub.w	r4, r4, #1
d005a074:	f1d5 0e20 	rsbs	lr, r5, #32
d005a078:	db0d      	blt.n	d005a096 <__adddf3+0xb2>
d005a07a:	fa02 fc0e 	lsl.w	ip, r2, lr
d005a07e:	fa22 f205 	lsr.w	r2, r2, r5
d005a082:	1880      	adds	r0, r0, r2
d005a084:	f141 0100 	adc.w	r1, r1, #0
d005a088:	fa03 f20e 	lsl.w	r2, r3, lr
d005a08c:	1880      	adds	r0, r0, r2
d005a08e:	fa43 f305 	asr.w	r3, r3, r5
d005a092:	4159      	adcs	r1, r3
d005a094:	e00e      	b.n	d005a0b4 <__adddf3+0xd0>
d005a096:	f1a5 0520 	sub.w	r5, r5, #32
d005a09a:	f10e 0e20 	add.w	lr, lr, #32
d005a09e:	2a01      	cmp	r2, #1
d005a0a0:	fa03 fc0e 	lsl.w	ip, r3, lr
d005a0a4:	bf28      	it	cs
d005a0a6:	f04c 0c02 	orrcs.w	ip, ip, #2
d005a0aa:	fa43 f305 	asr.w	r3, r3, r5
d005a0ae:	18c0      	adds	r0, r0, r3
d005a0b0:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d005a0b4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a0b8:	d507      	bpl.n	d005a0ca <__adddf3+0xe6>
d005a0ba:	f04f 0e00 	mov.w	lr, #0
d005a0be:	f1dc 0c00 	rsbs	ip, ip, #0
d005a0c2:	eb7e 0000 	sbcs.w	r0, lr, r0
d005a0c6:	eb6e 0101 	sbc.w	r1, lr, r1
d005a0ca:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d005a0ce:	d31b      	bcc.n	d005a108 <__adddf3+0x124>
d005a0d0:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d005a0d4:	d30c      	bcc.n	d005a0f0 <__adddf3+0x10c>
d005a0d6:	0849      	lsrs	r1, r1, #1
d005a0d8:	ea5f 0030 	movs.w	r0, r0, rrx
d005a0dc:	ea4f 0c3c 	mov.w	ip, ip, rrx
d005a0e0:	f104 0401 	add.w	r4, r4, #1
d005a0e4:	ea4f 5244 	mov.w	r2, r4, lsl #21
d005a0e8:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d005a0ec:	f080 809a 	bcs.w	d005a224 <__adddf3+0x240>
d005a0f0:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d005a0f4:	bf08      	it	eq
d005a0f6:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d005a0fa:	f150 0000 	adcs.w	r0, r0, #0
d005a0fe:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d005a102:	ea41 0105 	orr.w	r1, r1, r5
d005a106:	bd30      	pop	{r4, r5, pc}
d005a108:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d005a10c:	4140      	adcs	r0, r0
d005a10e:	eb41 0101 	adc.w	r1, r1, r1
d005a112:	3c01      	subs	r4, #1
d005a114:	bf28      	it	cs
d005a116:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d005a11a:	d2e9      	bcs.n	d005a0f0 <__adddf3+0x10c>
d005a11c:	f091 0f00 	teq	r1, #0
d005a120:	bf04      	itt	eq
d005a122:	4601      	moveq	r1, r0
d005a124:	2000      	moveq	r0, #0
d005a126:	fab1 f381 	clz	r3, r1
d005a12a:	bf08      	it	eq
d005a12c:	3320      	addeq	r3, #32
d005a12e:	f1a3 030b 	sub.w	r3, r3, #11
d005a132:	f1b3 0220 	subs.w	r2, r3, #32
d005a136:	da0c      	bge.n	d005a152 <__adddf3+0x16e>
d005a138:	320c      	adds	r2, #12
d005a13a:	dd08      	ble.n	d005a14e <__adddf3+0x16a>
d005a13c:	f102 0c14 	add.w	ip, r2, #20
d005a140:	f1c2 020c 	rsb	r2, r2, #12
d005a144:	fa01 f00c 	lsl.w	r0, r1, ip
d005a148:	fa21 f102 	lsr.w	r1, r1, r2
d005a14c:	e00c      	b.n	d005a168 <__adddf3+0x184>
d005a14e:	f102 0214 	add.w	r2, r2, #20
d005a152:	bfd8      	it	le
d005a154:	f1c2 0c20 	rsble	ip, r2, #32
d005a158:	fa01 f102 	lsl.w	r1, r1, r2
d005a15c:	fa20 fc0c 	lsr.w	ip, r0, ip
d005a160:	bfdc      	itt	le
d005a162:	ea41 010c 	orrle.w	r1, r1, ip
d005a166:	4090      	lslle	r0, r2
d005a168:	1ae4      	subs	r4, r4, r3
d005a16a:	bfa2      	ittt	ge
d005a16c:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d005a170:	4329      	orrge	r1, r5
d005a172:	bd30      	popge	{r4, r5, pc}
d005a174:	ea6f 0404 	mvn.w	r4, r4
d005a178:	3c1f      	subs	r4, #31
d005a17a:	da1c      	bge.n	d005a1b6 <__adddf3+0x1d2>
d005a17c:	340c      	adds	r4, #12
d005a17e:	dc0e      	bgt.n	d005a19e <__adddf3+0x1ba>
d005a180:	f104 0414 	add.w	r4, r4, #20
d005a184:	f1c4 0220 	rsb	r2, r4, #32
d005a188:	fa20 f004 	lsr.w	r0, r0, r4
d005a18c:	fa01 f302 	lsl.w	r3, r1, r2
d005a190:	ea40 0003 	orr.w	r0, r0, r3
d005a194:	fa21 f304 	lsr.w	r3, r1, r4
d005a198:	ea45 0103 	orr.w	r1, r5, r3
d005a19c:	bd30      	pop	{r4, r5, pc}
d005a19e:	f1c4 040c 	rsb	r4, r4, #12
d005a1a2:	f1c4 0220 	rsb	r2, r4, #32
d005a1a6:	fa20 f002 	lsr.w	r0, r0, r2
d005a1aa:	fa01 f304 	lsl.w	r3, r1, r4
d005a1ae:	ea40 0003 	orr.w	r0, r0, r3
d005a1b2:	4629      	mov	r1, r5
d005a1b4:	bd30      	pop	{r4, r5, pc}
d005a1b6:	fa21 f004 	lsr.w	r0, r1, r4
d005a1ba:	4629      	mov	r1, r5
d005a1bc:	bd30      	pop	{r4, r5, pc}
d005a1be:	f094 0f00 	teq	r4, #0
d005a1c2:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d005a1c6:	bf06      	itte	eq
d005a1c8:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d005a1cc:	3401      	addeq	r4, #1
d005a1ce:	3d01      	subne	r5, #1
d005a1d0:	e74e      	b.n	d005a070 <__adddf3+0x8c>
d005a1d2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005a1d6:	bf18      	it	ne
d005a1d8:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005a1dc:	d029      	beq.n	d005a232 <__adddf3+0x24e>
d005a1de:	ea94 0f05 	teq	r4, r5
d005a1e2:	bf08      	it	eq
d005a1e4:	ea90 0f02 	teqeq	r0, r2
d005a1e8:	d005      	beq.n	d005a1f6 <__adddf3+0x212>
d005a1ea:	ea54 0c00 	orrs.w	ip, r4, r0
d005a1ee:	bf04      	itt	eq
d005a1f0:	4619      	moveq	r1, r3
d005a1f2:	4610      	moveq	r0, r2
d005a1f4:	bd30      	pop	{r4, r5, pc}
d005a1f6:	ea91 0f03 	teq	r1, r3
d005a1fa:	bf1e      	ittt	ne
d005a1fc:	2100      	movne	r1, #0
d005a1fe:	2000      	movne	r0, #0
d005a200:	bd30      	popne	{r4, r5, pc}
d005a202:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d005a206:	d105      	bne.n	d005a214 <__adddf3+0x230>
d005a208:	0040      	lsls	r0, r0, #1
d005a20a:	4149      	adcs	r1, r1
d005a20c:	bf28      	it	cs
d005a20e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d005a212:	bd30      	pop	{r4, r5, pc}
d005a214:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d005a218:	bf3c      	itt	cc
d005a21a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d005a21e:	bd30      	popcc	{r4, r5, pc}
d005a220:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a224:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d005a228:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d005a22c:	f04f 0000 	mov.w	r0, #0
d005a230:	bd30      	pop	{r4, r5, pc}
d005a232:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005a236:	bf1a      	itte	ne
d005a238:	4619      	movne	r1, r3
d005a23a:	4610      	movne	r0, r2
d005a23c:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d005a240:	bf1c      	itt	ne
d005a242:	460b      	movne	r3, r1
d005a244:	4602      	movne	r2, r0
d005a246:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005a24a:	bf06      	itte	eq
d005a24c:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d005a250:	ea91 0f03 	teqeq	r1, r3
d005a254:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005a258:	bd30      	pop	{r4, r5, pc}
d005a25a:	bf00      	nop

d005a25c <__aeabi_ui2d>:
d005a25c:	f090 0f00 	teq	r0, #0
d005a260:	bf04      	itt	eq
d005a262:	2100      	moveq	r1, #0
d005a264:	4770      	bxeq	lr
d005a266:	b530      	push	{r4, r5, lr}
d005a268:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a26c:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a270:	f04f 0500 	mov.w	r5, #0
d005a274:	f04f 0100 	mov.w	r1, #0
d005a278:	e750      	b.n	d005a11c <__adddf3+0x138>
d005a27a:	bf00      	nop

d005a27c <__aeabi_i2d>:
d005a27c:	f090 0f00 	teq	r0, #0
d005a280:	bf04      	itt	eq
d005a282:	2100      	moveq	r1, #0
d005a284:	4770      	bxeq	lr
d005a286:	b530      	push	{r4, r5, lr}
d005a288:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a28c:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a290:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d005a294:	bf48      	it	mi
d005a296:	4240      	negmi	r0, r0
d005a298:	f04f 0100 	mov.w	r1, #0
d005a29c:	e73e      	b.n	d005a11c <__adddf3+0x138>
d005a29e:	bf00      	nop

d005a2a0 <__aeabi_f2d>:
d005a2a0:	0042      	lsls	r2, r0, #1
d005a2a2:	ea4f 01e2 	mov.w	r1, r2, asr #3
d005a2a6:	ea4f 0131 	mov.w	r1, r1, rrx
d005a2aa:	ea4f 7002 	mov.w	r0, r2, lsl #28
d005a2ae:	bf1f      	itttt	ne
d005a2b0:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d005a2b4:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d005a2b8:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d005a2bc:	4770      	bxne	lr
d005a2be:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d005a2c2:	bf08      	it	eq
d005a2c4:	4770      	bxeq	lr
d005a2c6:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d005a2ca:	bf04      	itt	eq
d005a2cc:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d005a2d0:	4770      	bxeq	lr
d005a2d2:	b530      	push	{r4, r5, lr}
d005a2d4:	f44f 7460 	mov.w	r4, #896	; 0x380
d005a2d8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a2dc:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d005a2e0:	e71c      	b.n	d005a11c <__adddf3+0x138>
d005a2e2:	bf00      	nop

d005a2e4 <__aeabi_ul2d>:
d005a2e4:	ea50 0201 	orrs.w	r2, r0, r1
d005a2e8:	bf08      	it	eq
d005a2ea:	4770      	bxeq	lr
d005a2ec:	b530      	push	{r4, r5, lr}
d005a2ee:	f04f 0500 	mov.w	r5, #0
d005a2f2:	e00a      	b.n	d005a30a <__aeabi_l2d+0x16>

d005a2f4 <__aeabi_l2d>:
d005a2f4:	ea50 0201 	orrs.w	r2, r0, r1
d005a2f8:	bf08      	it	eq
d005a2fa:	4770      	bxeq	lr
d005a2fc:	b530      	push	{r4, r5, lr}
d005a2fe:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d005a302:	d502      	bpl.n	d005a30a <__aeabi_l2d+0x16>
d005a304:	4240      	negs	r0, r0
d005a306:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005a30a:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a30e:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a312:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005a316:	f43f aed8 	beq.w	d005a0ca <__adddf3+0xe6>
d005a31a:	f04f 0203 	mov.w	r2, #3
d005a31e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005a322:	bf18      	it	ne
d005a324:	3203      	addne	r2, #3
d005a326:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005a32a:	bf18      	it	ne
d005a32c:	3203      	addne	r2, #3
d005a32e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d005a332:	f1c2 0320 	rsb	r3, r2, #32
d005a336:	fa00 fc03 	lsl.w	ip, r0, r3
d005a33a:	fa20 f002 	lsr.w	r0, r0, r2
d005a33e:	fa01 fe03 	lsl.w	lr, r1, r3
d005a342:	ea40 000e 	orr.w	r0, r0, lr
d005a346:	fa21 f102 	lsr.w	r1, r1, r2
d005a34a:	4414      	add	r4, r2
d005a34c:	e6bd      	b.n	d005a0ca <__adddf3+0xe6>
d005a34e:	bf00      	nop
d005a350:	46464952 	.word	0x46464952
d005a354:	00000000 	.word	0x00000000
d005a358:	45564157 	.word	0x45564157
d005a35c:	00000000 	.word	0x00000000
d005a360:	6d6f6f62 	.word	0x6d6f6f62
d005a364:	6f6d2e64 	.word	0x6f6d2e64
d005a368:	00000064 	.word	0x00000064
d005a36c:	6e756874 	.word	0x6e756874
d005a370:	31726564 	.word	0x31726564
d005a374:	7661772e 	.word	0x7661772e
d005a378:	00000000 	.word	0x00000000
d005a37c:	6e756874 	.word	0x6e756874
d005a380:	32726564 	.word	0x32726564
d005a384:	7661772e 	.word	0x7661772e
d005a388:	00000000 	.word	0x00000000
d005a38c:	616c7369 	.word	0x616c7369
d005a390:	2e78646e 	.word	0x2e78646e
d005a394:	64336273 	.word	0x64336273
d005a398:	00000000 	.word	0x00000000
d005a39c:	72726163 	.word	0x72726163
d005a3a0:	2e726569 	.word	0x2e726569
d005a3a4:	64336273 	.word	0x64336273
d005a3a8:	00000000 	.word	0x00000000
d005a3ac:	70696873 	.word	0x70696873
d005a3b0:	732e3176 	.word	0x732e3176
d005a3b4:	00643362 	.word	0x00643362
d005a3b8:	74786574 	.word	0x74786574
d005a3bc:	3362732e 	.word	0x3362732e
d005a3c0:	00000064 	.word	0x00000064
d005a3c4:	3a535046 	.word	0x3a535046
d005a3c8:	2e756c25 	.word	0x2e756c25
d005a3cc:	6c323025 	.word	0x6c323025
d005a3d0:	4d202075 	.word	0x4d202075
d005a3d4:	33253a53 	.word	0x33253a53
d005a3d8:	252e756c 	.word	0x252e756c
d005a3dc:	756c3330 	.word	0x756c3330
d005a3e0:	50572020 	.word	0x50572020
d005a3e4:	7532253a 	.word	0x7532253a
d005a3e8:	52542020 	.word	0x52542020
d005a3ec:	253a5349 	.word	0x253a5349
d005a3f0:	0000756c 	.word	0x0000756c
d005a3f4:	ff5516e3 	.word	0xff5516e3
d005a3f8:	ffffffff 	.word	0xffffffff
d005a3fc:	ffff0000 	.word	0xffff0000
d005a400:	ff00ff00 	.word	0xff00ff00
d005a404:	ff0000ff 	.word	0xff0000ff
d005a408:	ffffff00 	.word	0xffffff00
d005a40c:	ffff00ff 	.word	0xffff00ff
d005a410:	ff00ffff 	.word	0xff00ffff
d005a414:	ff808080 	.word	0xff808080
d005a418:	ffff8000 	.word	0xffff8000
d005a41c:	ff8000ff 	.word	0xff8000ff
d005a420:	ff0080ff 	.word	0xff0080ff
d005a424:	ff80ff00 	.word	0xff80ff00
d005a428:	ffff0080 	.word	0xffff0080
d005a42c:	ff00ff80 	.word	0xff00ff80
d005a430:	ffc0c0c0 	.word	0xffc0c0c0
d005a434:	3f800000 	.word	0x3f800000
d005a438:	3f400000 	.word	0x3f400000
d005a43c:	3f0ccccd 	.word	0x3f0ccccd
d005a440:	3eb33333 	.word	0x3eb33333
d005a444:	3e4ccccd 	.word	0x3e4ccccd
d005a448:	bf800000 	.word	0xbf800000
d005a44c:	bf000000 	.word	0xbf000000
d005a450:	3e99999a 	.word	0x3e99999a

d005a454 <museumRail.9226>:
d005a454:	c2180000 42700000 3f800000 00000000     ......pB...?....
d005a464:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d005a47c:	c1f00000 43340000 44870000 00000000     ......4C...D....
d005a48c:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d005a49c:	00000000 3ecccccd 449a4000 43250000     .......>.@.D..%C
d005a4ac:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d005a4bc:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d005a4cc:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d005a4dc:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d005a4ec:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d005a4fc:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d005a50c:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d005a51c:	c4938000 43300000 43320000 00000000     ......0C..2C....
d005a52c:	3ecccccd c4654000 42900000 42be0000     ...>.@e....B...B
d005a53c:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d005a54c:	43990000 00000000 3ecccccd c3580000     ...C.......>..X.
d005a55c:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d005a56c:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d005a57c:	3ecccccd 44e12000 43b80000 c2100000     ...>. .D...C....
d005a58c:	00000000 3ecccccd 44dba000 43dc0000     .......>...D...C
d005a59c:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d005a5ac:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d005a5bc:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d005a5cc:	3ecccccd c31d0000 42640000 4487a000     ...>......dB...D
d005a5dc:	00000000 3ecccccd c3420000 42700000     .......>..B...pB
d005a5ec:	436b0000 00000000 3ecccccd              ..kC.......>

d005a5f8 <bayer4x4>:
d005a5f8:	0a020800 060e040c 09010b03 050d070f     ................
	...
d005a638:	3f800000 00000000 00000000 00000000     ...?............
d005a648:	3f800000 00000000 00000000 00000000     ...?............
d005a658:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d005a668:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...

d005a680 <__sf_fake_stderr>:
	...

d005a6a0 <__sf_fake_stdin>:
	...

d005a6c0 <__sf_fake_stdout>:
	...

d005a6e0 <_global_impure_ptr>:
d005a6e0:	d005af50 2b302d23 6c680020 6665004c     P...#-0+ .hlL.ef
d005a6f0:	47464567 32313000 36353433 41393837     gEFG.0123456789A
d005a700:	45444342 31300046 35343332 39383736     BCDEF.0123456789
d005a710:	64636261 00006665                       abcdef..

d005a718 <__exp2f_data>:
d005a718:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d005a728:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d005a738:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d005a748:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d005a758:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d005a768:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d005a778:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d005a788:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d005a798:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d005a7a8:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d005a7b8:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d005a7c8:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d005a7d8:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d005a7e8:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d005a7f8:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d005a808:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d005a818:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d005a828:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d005a838:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d005a848:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d005a858:	ff0c52d6 3f962e42                       .R..B..?

d005a860 <__logf_data>:
d005a860:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d005a870:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d005a880:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d005a890:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d005a8a0:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d005a8b0:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d005a8c0:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d005a8d0:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d005a8e0:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d005a8f0:	00000000 3ff00000 00000000 00000000     .......?........
d005a900:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d005a910:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d005a920:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d005a930:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d005a940:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d005a950:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d005a960:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d005a970:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d005a980 <__inv_pio4>:
d005a980:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d005a990:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d005a9a0:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d005a9b0:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d005a9c0:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d005a9d0:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d005a9e0 <__sincosf_table>:
d005a9e0:	00000000 3ff00000 00000000 bff00000     .......?........
d005a9f0:	00000000 bff00000 00000000 3ff00000     ...............?
d005aa00:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005aa10:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d005aa20:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d005aa30:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d005aa40:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d005aa50:	00000000 3ff00000 00000000 bff00000     .......?........
d005aa60:	00000000 bff00000 00000000 3ff00000     ...............?
d005aa70:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005aa80:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d005aa90:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d005aaa0:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d005aab0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d005aac0 <CSWTCH.8>:
d005aac0:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d005aacc <CSWTCH.9>:
d005aacc:	80000000 40490fdb c0490fdb              ......I@..I.

d005aad8 <atanhi>:
d005aad8:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d005aae8 <atanlo>:
d005aae8:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d005aaf8 <_init>:
d005aaf8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005aafa:	bf00      	nop

Disassembly of section .fini:

d005aafc <_fini>:
d005aafc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005aafe:	bf00      	nop
