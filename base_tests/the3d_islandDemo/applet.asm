
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
d005001e:	f009 fa07 	bl	d0059430 <setbuf>
d0050022:	6833      	ldr	r3, [r6, #0]
d0050024:	2100      	movs	r1, #0
d0050026:	68d8      	ldr	r0, [r3, #12]
d0050028:	f009 fa02 	bl	d0059430 <setbuf>
d005002c:	4629      	mov	r1, r5
d005002e:	4620      	mov	r0, r4
d0050030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050034:	f001 bad0 	b.w	d00515d8 <main>
d0050038:	d008d66c 	.word	0xd008d66c

d005003c <initMalloc>:
d005003c:	4902      	ldr	r1, [pc, #8]	; (d0050048 <initMalloc+0xc>)
d005003e:	4b03      	ldr	r3, [pc, #12]	; (d005004c <initMalloc+0x10>)
d0050040:	4a03      	ldr	r2, [pc, #12]	; (d0050050 <initMalloc+0x14>)
d0050042:	1a5b      	subs	r3, r3, r1
d0050044:	6013      	str	r3, [r2, #0]
d0050046:	4770      	bx	lr
d0050048:	d012fa70 	.word	0xd012fa70
d005004c:	d0600000 	.word	0xd0600000
d0050050:	d01279a8 	.word	0xd01279a8

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
d005009c:	f008 feb4 	bl	d0058e08 <__errno>
d00500a0:	2209      	movs	r2, #9
d00500a2:	4603      	mov	r3, r0
d00500a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00500a8:	601a      	str	r2, [r3, #0]
d00500aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00500ac:	d008d6e4 	.word	0xd008d6e4
d00500b0:	2001f000 	.word	0x2001f000

d00500b4 <_read>:
d00500b4:	b508      	push	{r3, lr}
d00500b6:	f008 fea7 	bl	d0058e08 <__errno>
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
d0050102:	f008 fe81 	bl	d0058e08 <__errno>
d0050106:	220c      	movs	r2, #12
d0050108:	4603      	mov	r3, r0
d005010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005010e:	601a      	str	r2, [r3, #0]
d0050110:	bd10      	pop	{r4, pc}
d0050112:	bf00      	nop
d0050114:	d008d6e0 	.word	0xd008d6e0
d0050118:	d012fa70 	.word	0xd012fa70
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
d0050170:	f009 f890 	bl	d0059294 <memcmp>
d0050174:	b950      	cbnz	r0, d005018c <LoadSFX+0x6c>
d0050176:	2204      	movs	r2, #4
d0050178:	492c      	ldr	r1, [pc, #176]	; (d005022c <LoadSFX+0x10c>)
d005017a:	a805      	add	r0, sp, #20
d005017c:	f009 f88a 	bl	d0059294 <memcmp>
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
d00501b4:	f009 f85e 	bl	d0059274 <malloc>
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
d0050228:	d005aa60 	.word	0xd005aa60
d005022c:	d005aa68 	.word	0xd005aa68

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
d005029e:	f00a f8a7 	bl	d005a3f0 <atan2f>
d00502a2:	eef1 0ac9 	vsqrt.f32	s1, s18
d00502a6:	eddf 7a36 	vldr	s15, [pc, #216]	; d0050380 <sr_steer_camera_to_tangent+0x150>
d00502aa:	eef0 9a40 	vmov.f32	s19, s0
d00502ae:	eeb1 0a4a 	vneg.f32	s0, s20
d00502b2:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d00502b6:	f00a f89b 	bl	d005a3f0 <atan2f>
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
d0050344:	f005 b920 	b.w	d0055588 <cameraRotate>
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
d0050dd2:	4c41      	ldr	r4, [pc, #260]	; (d0050ed8 <initSystem+0x108>)
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
d0050dfa:	2150      	movs	r1, #80	; 0x50
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
d0050e76:	7c23      	ldrb	r3, [r4, #16]
d0050e78:	7c61      	ldrb	r1, [r4, #17]
d0050e7a:	2201      	movs	r2, #1
d0050e7c:	7ca0      	ldrb	r0, [r4, #18]
d0050e7e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0050e82:	7ce1      	ldrb	r1, [r4, #19]
d0050e84:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0050e88:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0050e8c:	681b      	ldr	r3, [r3, #0]
d0050e8e:	685b      	ldr	r3, [r3, #4]
d0050e90:	701a      	strb	r2, [r3, #0]
d0050e92:	f001 fab1 	bl	d00523f8 <initDepthBandMem>
d0050e96:	7b23      	ldrb	r3, [r4, #12]
d0050e98:	7b62      	ldrb	r2, [r4, #13]
d0050e9a:	7ba1      	ldrb	r1, [r4, #14]
d0050e9c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050ea0:	7be2      	ldrb	r2, [r4, #15]
d0050ea2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050ea6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050eaa:	681b      	ldr	r3, [r3, #0]
d0050eac:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0050eae:	4798      	blx	r3
d0050eb0:	7b23      	ldrb	r3, [r4, #12]
d0050eb2:	7b62      	ldrb	r2, [r4, #13]
d0050eb4:	7ba5      	ldrb	r5, [r4, #14]
d0050eb6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050eba:	7be2      	ldrb	r2, [r4, #15]
d0050ebc:	4907      	ldr	r1, [pc, #28]	; (d0050edc <initSystem+0x10c>)
d0050ebe:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050ec2:	6008      	str	r0, [r1, #0]
d0050ec4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050ec8:	681b      	ldr	r3, [r3, #0]
d0050eca:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0050ecc:	4798      	blx	r3
d0050ece:	4b04      	ldr	r3, [pc, #16]	; (d0050ee0 <initSystem+0x110>)
d0050ed0:	6018      	str	r0, [r3, #0]
d0050ed2:	b002      	add	sp, #8
d0050ed4:	bd70      	pop	{r4, r5, r6, pc}
d0050ed6:	bf00      	nop
d0050ed8:	2001f000 	.word	0x2001f000
d0050edc:	d0127a40 	.word	0xd0127a40
d0050ee0:	d0127a20 	.word	0xd0127a20

d0050ee4 <weatherLightning>:
d0050ee4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050ee8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0050eec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ef0:	4605      	mov	r5, r0
d0050ef2:	d930      	bls.n	d0050f56 <weatherLightning+0x72>
d0050ef4:	eddf 7ab6 	vldr	s15, [pc, #728]	; d00511d0 <weatherLightning+0x2ec>
d0050ef8:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0050efc:	4eb5      	ldr	r6, [pc, #724]	; (d00511d4 <weatherLightning+0x2f0>)
d0050efe:	4fb6      	ldr	r7, [pc, #728]	; (d00511d8 <weatherLightning+0x2f4>)
d0050f00:	6833      	ldr	r3, [r6, #0]
d0050f02:	683a      	ldr	r2, [r7, #0]
d0050f04:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050f08:	2a01      	cmp	r2, #1
d0050f0a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0050f0e:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0050f12:	6033      	str	r3, [r6, #0]
d0050f14:	d022      	beq.n	d0050f5c <weatherLightning+0x78>
d0050f16:	2a02      	cmp	r2, #2
d0050f18:	f000 8087 	beq.w	d005102a <weatherLightning+0x146>
d0050f1c:	4caf      	ldr	r4, [pc, #700]	; (d00511dc <weatherLightning+0x2f8>)
d0050f1e:	2100      	movs	r1, #0
d0050f20:	b2e8      	uxtb	r0, r5
d0050f22:	edd4 7a00 	vldr	s15, [r4]
d0050f26:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0050f2a:	ed84 0a00 	vstr	s0, [r4]
d0050f2e:	f005 fd49 	bl	d00569c4 <lightEnable>
d0050f32:	4628      	mov	r0, r5
d0050f34:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d00511e0 <weatherLightning+0x2fc>
d0050f38:	f005 fdda 	bl	d0056af0 <lightSetIntensity>
d0050f3c:	edd4 7a00 	vldr	s15, [r4]
d0050f40:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050f44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f48:	f240 80d6 	bls.w	d00510f8 <weatherLightning+0x214>
d0050f4c:	f04f 0800 	mov.w	r8, #0
d0050f50:	4640      	mov	r0, r8
d0050f52:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0050f56:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d00511e4 <weatherLightning+0x300>
d0050f5a:	e7cf      	b.n	d0050efc <weatherLightning+0x18>
d0050f5c:	4aa2      	ldr	r2, [pc, #648]	; (d00511e8 <weatherLightning+0x304>)
d0050f5e:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d0050f62:	f8df a2b4 	ldr.w	sl, [pc, #692]	; d0051218 <weatherLightning+0x334>
d0050f66:	ed92 7a00 	vldr	s14, [r2]
d0050f6a:	2200      	movs	r2, #0
d0050f6c:	edda 7a00 	vldr	s15, [sl]
d0050f70:	ee66 6ac7 	vnmul.f32	s13, s13, s14
d0050f74:	f8df 9284 	ldr.w	r9, [pc, #644]	; d00511fc <weatherLightning+0x318>
d0050f78:	ed99 7a00 	vldr	s14, [r9]
d0050f7c:	eee6 7a80 	vfma.f32	s15, s13, s0
d0050f80:	ee37 0a40 	vsub.f32	s0, s14, s0
d0050f84:	ed89 0a00 	vstr	s0, [r9]
d0050f88:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050f8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f90:	f100 80ad 	bmi.w	d00510ee <weatherLightning+0x20a>
d0050f94:	bfcc      	ite	gt
d0050f96:	f04f 0801 	movgt.w	r8, #1
d0050f9a:	f04f 0800 	movle.w	r8, #0
d0050f9e:	edca 7a00 	vstr	s15, [sl]
d0050fa2:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050fa6:	2101      	movs	r1, #1
d0050fa8:	fa5f fb85 	uxtb.w	fp, r5
d0050fac:	ea83 4453 	eor.w	r4, r3, r3, lsr #17
d0050fb0:	4658      	mov	r0, fp
d0050fb2:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d0050fb6:	6034      	str	r4, [r6, #0]
d0050fb8:	b2e4      	uxtb	r4, r4
d0050fba:	f005 fd03 	bl	d00569c4 <lightEnable>
d0050fbe:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d00511ec <weatherLightning+0x308>
d0050fc2:	ee07 4a90 	vmov	s15, r4
d0050fc6:	ed9a 0a00 	vldr	s0, [sl]
d0050fca:	4628      	mov	r0, r5
d0050fcc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050fd0:	eea7 0a87 	vfma.f32	s0, s15, s14
d0050fd4:	f005 fd8c 	bl	d0056af0 <lightSetIntensity>
d0050fd8:	edd9 7a00 	vldr	s15, [r9]
d0050fdc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050fe0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050fe4:	d8b4      	bhi.n	d0050f50 <weatherLightning+0x6c>
d0050fe6:	4a82      	ldr	r2, [pc, #520]	; (d00511f0 <weatherLightning+0x30c>)
d0050fe8:	6813      	ldr	r3, [r2, #0]
d0050fea:	3b01      	subs	r3, #1
d0050fec:	2b00      	cmp	r3, #0
d0050fee:	6013      	str	r3, [r2, #0]
d0050ff0:	6833      	ldr	r3, [r6, #0]
d0050ff2:	f340 80ca 	ble.w	d005118a <weatherLightning+0x2a6>
d0050ff6:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050ffa:	2202      	movs	r2, #2
d0050ffc:	eddf 6a7d 	vldr	s13, [pc, #500]	; d00511f4 <weatherLightning+0x310>
d0051000:	4640      	mov	r0, r8
d0051002:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0051006:	603a      	str	r2, [r7, #0]
d0051008:	eddf 7a7b 	vldr	s15, [pc, #492]	; d00511f8 <weatherLightning+0x314>
d005100c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0051010:	f3c3 0209 	ubfx	r2, r3, #0, #10
d0051014:	6033      	str	r3, [r6, #0]
d0051016:	ee07 2a10 	vmov	s14, r2
d005101a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005101e:	eee7 7a26 	vfma.f32	s15, s14, s13
d0051022:	edc9 7a00 	vstr	s15, [r9]
d0051026:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005102a:	4c74      	ldr	r4, [pc, #464]	; (d00511fc <weatherLightning+0x318>)
d005102c:	2100      	movs	r1, #0
d005102e:	b2e8      	uxtb	r0, r5
d0051030:	edd4 7a00 	vldr	s15, [r4]
d0051034:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0051038:	ed84 0a00 	vstr	s0, [r4]
d005103c:	f005 fcc2 	bl	d00569c4 <lightEnable>
d0051040:	4628      	mov	r0, r5
d0051042:	ed9f 0a67 	vldr	s0, [pc, #412]	; d00511e0 <weatherLightning+0x2fc>
d0051046:	f005 fd53 	bl	d0056af0 <lightSetIntensity>
d005104a:	edd4 7a00 	vldr	s15, [r4]
d005104e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0051052:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051056:	f63f af79 	bhi.w	d0050f4c <weatherLightning+0x68>
d005105a:	6833      	ldr	r3, [r6, #0]
d005105c:	2201      	movs	r2, #1
d005105e:	eddf 4a68 	vldr	s9, [pc, #416]	; d0051200 <weatherLightning+0x31c>
d0051062:	f04f 0800 	mov.w	r8, #0
d0051066:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d005106a:	603a      	str	r2, [r7, #0]
d005106c:	ed9f 7a65 	vldr	s14, [pc, #404]	; d0051204 <weatherLightning+0x320>
d0051070:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0051074:	ed9f 5a64 	vldr	s10, [pc, #400]	; d0051208 <weatherLightning+0x324>
d0051078:	ed9f 6a64 	vldr	s12, [pc, #400]	; d005120c <weatherLightning+0x328>
d005107c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0051080:	eddf 5a63 	vldr	s11, [pc, #396]	; d0051210 <weatherLightning+0x32c>
d0051084:	eddf 6a63 	vldr	s13, [pc, #396]	; d0051214 <weatherLightning+0x330>
d0051088:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d005108c:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0051090:	4855      	ldr	r0, [pc, #340]	; (d00511e8 <weatherLightning+0x304>)
d0051092:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d0051096:	ee07 3a90 	vmov	s15, r3
d005109a:	495f      	ldr	r1, [pc, #380]	; (d0051218 <weatherLightning+0x334>)
d005109c:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d00510a0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00510a4:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d00510a8:	b2db      	uxtb	r3, r3
d00510aa:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00510ae:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00510b2:	ee07 3a90 	vmov	s15, r3
d00510b6:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d00510ba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00510be:	f3c3 0209 	ubfx	r2, r3, #0, #10
d00510c2:	6033      	str	r3, [r6, #0]
d00510c4:	eea7 6a85 	vfma.f32	s12, s15, s10
d00510c8:	eef0 7a46 	vmov.f32	s15, s12
d00510cc:	ee06 2a10 	vmov	s12, r2
d00510d0:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d00510d4:	ee67 7a27 	vmul.f32	s15, s14, s15
d00510d8:	eee6 6a25 	vfma.f32	s13, s12, s11
d00510dc:	edc0 7a00 	vstr	s15, [r0]
d00510e0:	4640      	mov	r0, r8
d00510e2:	edc1 7a00 	vstr	s15, [r1]
d00510e6:	edc4 6a00 	vstr	s13, [r4]
d00510ea:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00510ee:	f04f 0800 	mov.w	r8, #0
d00510f2:	f8ca 2000 	str.w	r2, [sl]
d00510f6:	e754      	b.n	d0050fa2 <weatherLightning+0xbe>
d00510f8:	6833      	ldr	r3, [r6, #0]
d00510fa:	2201      	movs	r2, #1
d00510fc:	4947      	ldr	r1, [pc, #284]	; (d005121c <weatherLightning+0x338>)
d00510fe:	f04f 0800 	mov.w	r8, #0
d0051102:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0051106:	603a      	str	r2, [r7, #0]
d0051108:	eddf 5a3d 	vldr	s11, [pc, #244]	; d0051200 <weatherLightning+0x31c>
d005110c:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0051110:	ed9f 7a3c 	vldr	s14, [pc, #240]	; d0051204 <weatherLightning+0x320>
d0051114:	ed9f 6a3e 	vldr	s12, [pc, #248]	; d0051210 <weatherLightning+0x32c>
d0051118:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d005111c:	eddf 6a3d 	vldr	s13, [pc, #244]	; d0051214 <weatherLightning+0x330>
d0051120:	4c31      	ldr	r4, [pc, #196]	; (d00511e8 <weatherLightning+0x304>)
d0051122:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d0051126:	fba1 0103 	umull	r0, r1, r1, r3
d005112a:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d005112e:	f021 0003 	bic.w	r0, r1, #3
d0051132:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d0051136:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d005113a:	ea82 3142 	eor.w	r1, r2, r2, lsl #13
d005113e:	f3c2 0209 	ubfx	r2, r2, #0, #10
d0051142:	1a1b      	subs	r3, r3, r0
d0051144:	482d      	ldr	r0, [pc, #180]	; (d00511fc <weatherLightning+0x318>)
d0051146:	ee07 2a90 	vmov	s15, r2
d005114a:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d005114e:	3302      	adds	r3, #2
d0051150:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051154:	ea81 1241 	eor.w	r2, r1, r1, lsl #5
d0051158:	492f      	ldr	r1, [pc, #188]	; (d0051218 <weatherLightning+0x334>)
d005115a:	f3c2 0509 	ubfx	r5, r2, #0, #10
d005115e:	6032      	str	r2, [r6, #0]
d0051160:	eea7 7aa5 	vfma.f32	s14, s15, s11
d0051164:	4a22      	ldr	r2, [pc, #136]	; (d00511f0 <weatherLightning+0x30c>)
d0051166:	6013      	str	r3, [r2, #0]
d0051168:	eef0 7a47 	vmov.f32	s15, s14
d005116c:	ee07 5a10 	vmov	s14, r5
d0051170:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0051174:	edc4 7a00 	vstr	s15, [r4]
d0051178:	edc1 7a00 	vstr	s15, [r1]
d005117c:	eee7 6a06 	vfma.f32	s13, s14, s12
d0051180:	edc0 6a00 	vstr	s13, [r0]
d0051184:	4640      	mov	r0, r8
d0051186:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005118a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d005118e:	eddf 6a24 	vldr	s13, [pc, #144]	; d0051220 <weatherLightning+0x33c>
d0051192:	eddf 7a24 	vldr	s15, [pc, #144]	; d0051224 <weatherLightning+0x340>
d0051196:	4658      	mov	r0, fp
d0051198:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d005119c:	4a0f      	ldr	r2, [pc, #60]	; (d00511dc <weatherLightning+0x2f8>)
d005119e:	2100      	movs	r1, #0
d00511a0:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00511a4:	f3c3 040a 	ubfx	r4, r3, #0, #11
d00511a8:	6033      	str	r3, [r6, #0]
d00511aa:	ee07 4a10 	vmov	s14, r4
d00511ae:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00511b2:	eee7 7a26 	vfma.f32	s15, s14, s13
d00511b6:	edc2 7a00 	vstr	s15, [r2]
d00511ba:	f005 fc03 	bl	d00569c4 <lightEnable>
d00511be:	4628      	mov	r0, r5
d00511c0:	ed9f 0a07 	vldr	s0, [pc, #28]	; d00511e0 <weatherLightning+0x2fc>
d00511c4:	f005 fc94 	bl	d0056af0 <lightSetIntensity>
d00511c8:	2300      	movs	r3, #0
d00511ca:	603b      	str	r3, [r7, #0]
d00511cc:	e6c0      	b.n	d0050f50 <weatherLightning+0x6c>
d00511ce:	bf00      	nop
d00511d0:	3dcccccd 	.word	0x3dcccccd
d00511d4:	d008d628 	.word	0xd008d628
d00511d8:	d008d70c 	.word	0xd008d70c
d00511dc:	d008d620 	.word	0xd008d620
d00511e0:	00000000 	.word	0x00000000
d00511e4:	3c83126f 	.word	0x3c83126f
d00511e8:	d008d6f0 	.word	0xd008d6f0
d00511ec:	3ab3e71b 	.word	0x3ab3e71b
d00511f0:	d008d6f4 	.word	0xd008d6f4
d00511f4:	38cd000c 	.word	0x38cd000c
d00511f8:	3ca3d70a 	.word	0x3ca3d70a
d00511fc:	d008d710 	.word	0xd008d710
d0051200:	3ad9d00e 	.word	0x3ad9d00e
d0051204:	3e99999a 	.word	0x3e99999a
d0051208:	3b33e71b 	.word	0x3b33e71b
d005120c:	3f266666 	.word	0x3f266666
d0051210:	3776000e 	.word	0x3776000e
d0051214:	3ccccccd 	.word	0x3ccccccd
d0051218:	d008d6ec 	.word	0xd008d6ec
d005121c:	cccccccd 	.word	0xcccccccd
d0051220:	3aace269 	.word	0x3aace269
d0051224:	3f4ccccd 	.word	0x3f4ccccd

d0051228 <goIntro>:
d0051228:	b5f0      	push	{r4, r5, r6, r7, lr}
d005122a:	4da7      	ldr	r5, [pc, #668]	; (d00514c8 <goIntro+0x2a0>)
d005122c:	2678      	movs	r6, #120	; 0x78
d005122e:	4ca7      	ldr	r4, [pc, #668]	; (d00514cc <goIntro+0x2a4>)
d0051230:	7b2b      	ldrb	r3, [r5, #12]
d0051232:	7b6a      	ldrb	r2, [r5, #13]
d0051234:	7ba9      	ldrb	r1, [r5, #14]
d0051236:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005123a:	7bea      	ldrb	r2, [r5, #15]
d005123c:	6820      	ldr	r0, [r4, #0]
d005123e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051242:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051246:	681b      	ldr	r3, [r3, #0]
d0051248:	ed2d 8b04 	vpush	{d8-d9}
d005124c:	69db      	ldr	r3, [r3, #28]
d005124e:	b083      	sub	sp, #12
d0051250:	4798      	blx	r3
d0051252:	7b2b      	ldrb	r3, [r5, #12]
d0051254:	7b6a      	ldrb	r2, [r5, #13]
d0051256:	7ba9      	ldrb	r1, [r5, #14]
d0051258:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005125c:	7bea      	ldrb	r2, [r5, #15]
d005125e:	6820      	ldr	r0, [r4, #0]
d0051260:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051264:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051268:	681b      	ldr	r3, [r3, #0]
d005126a:	699b      	ldr	r3, [r3, #24]
d005126c:	4798      	blx	r3
d005126e:	7b2b      	ldrb	r3, [r5, #12]
d0051270:	7b6a      	ldrb	r2, [r5, #13]
d0051272:	2000      	movs	r0, #0
d0051274:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051278:	7baa      	ldrb	r2, [r5, #14]
d005127a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d005127e:	7bea      	ldrb	r2, [r5, #15]
d0051280:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051284:	681b      	ldr	r3, [r3, #0]
d0051286:	689b      	ldr	r3, [r3, #8]
d0051288:	4798      	blx	r3
d005128a:	7b29      	ldrb	r1, [r5, #12]
d005128c:	7b6b      	ldrb	r3, [r5, #13]
d005128e:	7baa      	ldrb	r2, [r5, #14]
d0051290:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051294:	7beb      	ldrb	r3, [r5, #15]
d0051296:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005129a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005129e:	681b      	ldr	r3, [r3, #0]
d00512a0:	68db      	ldr	r3, [r3, #12]
d00512a2:	4798      	blx	r3
d00512a4:	3e01      	subs	r6, #1
d00512a6:	d1f0      	bne.n	d005128a <goIntro+0x62>
d00512a8:	4e89      	ldr	r6, [pc, #548]	; (d00514d0 <goIntro+0x2a8>)
d00512aa:	f243 2760 	movw	r7, #12896	; 0x3260
d00512ae:	f506 4c48 	add.w	ip, r6, #51200	; 0xc800
d00512b2:	f5a6 72c8 	sub.w	r2, r6, #400	; 0x190
d00512b6:	463b      	mov	r3, r7
d00512b8:	6821      	ldr	r1, [r4, #0]
d00512ba:	f812 0f01 	ldrb.w	r0, [r2, #1]!
d00512be:	6809      	ldr	r1, [r1, #0]
d00512c0:	4296      	cmp	r6, r2
d00512c2:	54c8      	strb	r0, [r1, r3]
d00512c4:	f503 73a0 	add.w	r3, r3, #320	; 0x140
d00512c8:	d1f6      	bne.n	d00512b8 <goIntro+0x90>
d00512ca:	f506 76c8 	add.w	r6, r6, #400	; 0x190
d00512ce:	3701      	adds	r7, #1
d00512d0:	45b4      	cmp	ip, r6
d00512d2:	d1ee      	bne.n	d00512b2 <goIntro+0x8a>
d00512d4:	ed9f 9b7a 	vldr	d9, [pc, #488]	; d00514c0 <goIntro+0x298>
d00512d8:	2765      	movs	r7, #101	; 0x65
d00512da:	ed9f 8a7e 	vldr	s16, [pc, #504]	; d00514d4 <goIntro+0x2ac>
d00512de:	eddf 8a7e 	vldr	s17, [pc, #504]	; d00514d8 <goIntro+0x2b0>
d00512e2:	7b29      	ldrb	r1, [r5, #12]
d00512e4:	ee38 8a28 	vadd.f32	s16, s16, s17
d00512e8:	7b6b      	ldrb	r3, [r5, #13]
d00512ea:	7baa      	ldrb	r2, [r5, #14]
d00512ec:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00512f0:	7beb      	ldrb	r3, [r5, #15]
d00512f2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00512f6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00512fa:	681b      	ldr	r3, [r3, #0]
d00512fc:	68db      	ldr	r3, [r3, #12]
d00512fe:	4798      	blx	r3
d0051300:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d0051304:	7b29      	ldrb	r1, [r5, #12]
d0051306:	7b68      	ldrb	r0, [r5, #13]
d0051308:	ee27 7b09 	vmul.f64	d7, d7, d9
d005130c:	7baa      	ldrb	r2, [r5, #14]
d005130e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0051312:	7beb      	ldrb	r3, [r5, #15]
d0051314:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0051318:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005131c:	eefc 7bc7 	vcvt.u32.f64	s15, d7
d0051320:	681b      	ldr	r3, [r3, #0]
d0051322:	edcd 7a01 	vstr	s15, [sp, #4]
d0051326:	689b      	ldr	r3, [r3, #8]
d0051328:	f89d 0004 	ldrb.w	r0, [sp, #4]
d005132c:	4798      	blx	r3
d005132e:	7b28      	ldrb	r0, [r5, #12]
d0051330:	7b6b      	ldrb	r3, [r5, #13]
d0051332:	7baa      	ldrb	r2, [r5, #14]
d0051334:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d0051338:	7beb      	ldrb	r3, [r5, #15]
d005133a:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d005133e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051342:	681b      	ldr	r3, [r3, #0]
d0051344:	681b      	ldr	r3, [r3, #0]
d0051346:	4798      	blx	r3
d0051348:	3f01      	subs	r7, #1
d005134a:	d1ca      	bne.n	d00512e2 <goIntro+0xba>
d005134c:	7c2b      	ldrb	r3, [r5, #16]
d005134e:	4639      	mov	r1, r7
d0051350:	7c6a      	ldrb	r2, [r5, #17]
d0051352:	2650      	movs	r6, #80	; 0x50
d0051354:	4861      	ldr	r0, [pc, #388]	; (d00514dc <goIntro+0x2b4>)
d0051356:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005135a:	7caa      	ldrb	r2, [r5, #18]
d005135c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051360:	7cea      	ldrb	r2, [r5, #19]
d0051362:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051366:	685b      	ldr	r3, [r3, #4]
d0051368:	681b      	ldr	r3, [r3, #0]
d005136a:	4798      	blx	r3
d005136c:	7b29      	ldrb	r1, [r5, #12]
d005136e:	7b6b      	ldrb	r3, [r5, #13]
d0051370:	7baa      	ldrb	r2, [r5, #14]
d0051372:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051376:	7beb      	ldrb	r3, [r5, #15]
d0051378:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005137c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051380:	681b      	ldr	r3, [r3, #0]
d0051382:	68db      	ldr	r3, [r3, #12]
d0051384:	4798      	blx	r3
d0051386:	7b29      	ldrb	r1, [r5, #12]
d0051388:	7b6b      	ldrb	r3, [r5, #13]
d005138a:	7baa      	ldrb	r2, [r5, #14]
d005138c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051390:	7beb      	ldrb	r3, [r5, #15]
d0051392:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051396:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005139a:	681b      	ldr	r3, [r3, #0]
d005139c:	681b      	ldr	r3, [r3, #0]
d005139e:	4798      	blx	r3
d00513a0:	3e01      	subs	r6, #1
d00513a2:	d1e3      	bne.n	d005136c <goIntro+0x144>
d00513a4:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d00513a8:	2733      	movs	r7, #51	; 0x33
d00513aa:	eddf 8a4e 	vldr	s17, [pc, #312]	; d00514e4 <goIntro+0x2bc>
d00513ae:	ed9f 9b44 	vldr	d9, [pc, #272]	; d00514c0 <goIntro+0x298>
d00513b2:	7b2a      	ldrb	r2, [r5, #12]
d00513b4:	ee38 8a68 	vsub.f32	s16, s16, s17
d00513b8:	7b69      	ldrb	r1, [r5, #13]
d00513ba:	7bab      	ldrb	r3, [r5, #14]
d00513bc:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d00513c0:	7be9      	ldrb	r1, [r5, #15]
d00513c2:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00513c6:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00513ca:	681b      	ldr	r3, [r3, #0]
d00513cc:	68db      	ldr	r3, [r3, #12]
d00513ce:	4798      	blx	r3
d00513d0:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d00513d4:	7b2a      	ldrb	r2, [r5, #12]
d00513d6:	7b69      	ldrb	r1, [r5, #13]
d00513d8:	ee27 7b09 	vmul.f64	d7, d7, d9
d00513dc:	7bab      	ldrb	r3, [r5, #14]
d00513de:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d00513e2:	7be9      	ldrb	r1, [r5, #15]
d00513e4:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00513e8:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00513ec:	eefc 7bc7 	vcvt.u32.f64	s15, d7
d00513f0:	681b      	ldr	r3, [r3, #0]
d00513f2:	edcd 7a01 	vstr	s15, [sp, #4]
d00513f6:	689b      	ldr	r3, [r3, #8]
d00513f8:	f89d 0004 	ldrb.w	r0, [sp, #4]
d00513fc:	4798      	blx	r3
d00513fe:	7b2a      	ldrb	r2, [r5, #12]
d0051400:	7b69      	ldrb	r1, [r5, #13]
d0051402:	7bab      	ldrb	r3, [r5, #14]
d0051404:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0051408:	7be9      	ldrb	r1, [r5, #15]
d005140a:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d005140e:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0051412:	681b      	ldr	r3, [r3, #0]
d0051414:	681b      	ldr	r3, [r3, #0]
d0051416:	4798      	blx	r3
d0051418:	3f01      	subs	r7, #1
d005141a:	d1ca      	bne.n	d00513b2 <goIntro+0x18a>
d005141c:	4e30      	ldr	r6, [pc, #192]	; (d00514e0 <goIntro+0x2b8>)
d005141e:	f506 3c16 	add.w	ip, r6, #153600	; 0x25800
d0051422:	463a      	mov	r2, r7
d0051424:	f5a6 73f0 	sub.w	r3, r6, #480	; 0x1e0
d0051428:	6821      	ldr	r1, [r4, #0]
d005142a:	f813 0f01 	ldrb.w	r0, [r3, #1]!
d005142e:	6809      	ldr	r1, [r1, #0]
d0051430:	429e      	cmp	r6, r3
d0051432:	5488      	strb	r0, [r1, r2]
d0051434:	f502 72a0 	add.w	r2, r2, #320	; 0x140
d0051438:	d1f6      	bne.n	d0051428 <goIntro+0x200>
d005143a:	f506 76f0 	add.w	r6, r6, #480	; 0x1e0
d005143e:	3701      	adds	r7, #1
d0051440:	4566      	cmp	r6, ip
d0051442:	d1ee      	bne.n	d0051422 <goIntro+0x1fa>
d0051444:	ed9f 9b1e 	vldr	d9, [pc, #120]	; d00514c0 <goIntro+0x298>
d0051448:	2633      	movs	r6, #51	; 0x33
d005144a:	ed9f 8a22 	vldr	s16, [pc, #136]	; d00514d4 <goIntro+0x2ac>
d005144e:	eddf 8a25 	vldr	s17, [pc, #148]	; d00514e4 <goIntro+0x2bc>
d0051452:	7b2a      	ldrb	r2, [r5, #12]
d0051454:	ee38 8a28 	vadd.f32	s16, s16, s17
d0051458:	7b69      	ldrb	r1, [r5, #13]
d005145a:	7bab      	ldrb	r3, [r5, #14]
d005145c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0051460:	7be9      	ldrb	r1, [r5, #15]
d0051462:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0051466:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d005146a:	681b      	ldr	r3, [r3, #0]
d005146c:	68db      	ldr	r3, [r3, #12]
d005146e:	4798      	blx	r3
d0051470:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d0051474:	7b2a      	ldrb	r2, [r5, #12]
d0051476:	7b69      	ldrb	r1, [r5, #13]
d0051478:	ee27 7b09 	vmul.f64	d7, d7, d9
d005147c:	7bab      	ldrb	r3, [r5, #14]
d005147e:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0051482:	7be9      	ldrb	r1, [r5, #15]
d0051484:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0051488:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d005148c:	eefc 7bc7 	vcvt.u32.f64	s15, d7
d0051490:	681b      	ldr	r3, [r3, #0]
d0051492:	edcd 7a01 	vstr	s15, [sp, #4]
d0051496:	689b      	ldr	r3, [r3, #8]
d0051498:	f89d 0004 	ldrb.w	r0, [sp, #4]
d005149c:	4798      	blx	r3
d005149e:	7b2a      	ldrb	r2, [r5, #12]
d00514a0:	7b69      	ldrb	r1, [r5, #13]
d00514a2:	7bab      	ldrb	r3, [r5, #14]
d00514a4:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d00514a8:	7be9      	ldrb	r1, [r5, #15]
d00514aa:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00514ae:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00514b2:	681b      	ldr	r3, [r3, #0]
d00514b4:	681b      	ldr	r3, [r3, #0]
d00514b6:	4798      	blx	r3
d00514b8:	3e01      	subs	r6, #1
d00514ba:	d1ca      	bne.n	d0051452 <goIntro+0x22a>
d00514bc:	2650      	movs	r6, #80	; 0x50
d00514be:	e013      	b.n	d00514e8 <goIntro+0x2c0>
d00514c0:	00000000 	.word	0x00000000
d00514c4:	40590000 	.word	0x40590000
d00514c8:	2001f000 	.word	0x2001f000
d00514cc:	d0127a40 	.word	0xd0127a40
d00514d0:	d0080baf 	.word	0xd0080baf
d00514d4:	00000000 	.word	0x00000000
d00514d8:	3c23d70a 	.word	0x3c23d70a
d00514dc:	d005aa70 	.word	0xd005aa70
d00514e0:	d005b3ff 	.word	0xd005b3ff
d00514e4:	3ca3d70a 	.word	0x3ca3d70a
d00514e8:	7b29      	ldrb	r1, [r5, #12]
d00514ea:	7b6b      	ldrb	r3, [r5, #13]
d00514ec:	7baa      	ldrb	r2, [r5, #14]
d00514ee:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00514f2:	7beb      	ldrb	r3, [r5, #15]
d00514f4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00514f8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00514fc:	681b      	ldr	r3, [r3, #0]
d00514fe:	68db      	ldr	r3, [r3, #12]
d0051500:	4798      	blx	r3
d0051502:	7b29      	ldrb	r1, [r5, #12]
d0051504:	7b6b      	ldrb	r3, [r5, #13]
d0051506:	7baa      	ldrb	r2, [r5, #14]
d0051508:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d005150c:	7beb      	ldrb	r3, [r5, #15]
d005150e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051512:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051516:	681b      	ldr	r3, [r3, #0]
d0051518:	681b      	ldr	r3, [r3, #0]
d005151a:	4798      	blx	r3
d005151c:	3e01      	subs	r6, #1
d005151e:	d1e3      	bne.n	d00514e8 <goIntro+0x2c0>
d0051520:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0051524:	2633      	movs	r6, #51	; 0x33
d0051526:	ed5f 8a11 	vldr	s17, [pc, #-68]	; d00514e4 <goIntro+0x2bc>
d005152a:	ed9f 9b29 	vldr	d9, [pc, #164]	; d00515d0 <goIntro+0x3a8>
d005152e:	7b2a      	ldrb	r2, [r5, #12]
d0051530:	ee38 8a68 	vsub.f32	s16, s16, s17
d0051534:	7b69      	ldrb	r1, [r5, #13]
d0051536:	7bab      	ldrb	r3, [r5, #14]
d0051538:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d005153c:	7be9      	ldrb	r1, [r5, #15]
d005153e:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0051542:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0051546:	681b      	ldr	r3, [r3, #0]
d0051548:	68db      	ldr	r3, [r3, #12]
d005154a:	4798      	blx	r3
d005154c:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d0051550:	7b2a      	ldrb	r2, [r5, #12]
d0051552:	7b69      	ldrb	r1, [r5, #13]
d0051554:	ee27 7b09 	vmul.f64	d7, d7, d9
d0051558:	7bab      	ldrb	r3, [r5, #14]
d005155a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d005155e:	7be9      	ldrb	r1, [r5, #15]
d0051560:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0051564:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0051568:	eefc 7bc7 	vcvt.u32.f64	s15, d7
d005156c:	681b      	ldr	r3, [r3, #0]
d005156e:	edcd 7a01 	vstr	s15, [sp, #4]
d0051572:	689b      	ldr	r3, [r3, #8]
d0051574:	f89d 0004 	ldrb.w	r0, [sp, #4]
d0051578:	4798      	blx	r3
d005157a:	7b2a      	ldrb	r2, [r5, #12]
d005157c:	7b69      	ldrb	r1, [r5, #13]
d005157e:	7bab      	ldrb	r3, [r5, #14]
d0051580:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0051584:	7be9      	ldrb	r1, [r5, #15]
d0051586:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d005158a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d005158e:	681b      	ldr	r3, [r3, #0]
d0051590:	681b      	ldr	r3, [r3, #0]
d0051592:	4798      	blx	r3
d0051594:	3e01      	subs	r6, #1
d0051596:	d1ca      	bne.n	d005152e <goIntro+0x306>
d0051598:	4633      	mov	r3, r6
d005159a:	4631      	mov	r1, r6
d005159c:	6822      	ldr	r2, [r4, #0]
d005159e:	6812      	ldr	r2, [r2, #0]
d00515a0:	54d1      	strb	r1, [r2, r3]
d00515a2:	3301      	adds	r3, #1
d00515a4:	f5b3 3f16 	cmp.w	r3, #153600	; 0x25800
d00515a8:	d1f8      	bne.n	d005159c <goIntro+0x374>
d00515aa:	7b2b      	ldrb	r3, [r5, #12]
d00515ac:	7b6a      	ldrb	r2, [r5, #13]
d00515ae:	7ba9      	ldrb	r1, [r5, #14]
d00515b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00515b4:	7bea      	ldrb	r2, [r5, #15]
d00515b6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00515ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00515be:	681b      	ldr	r3, [r3, #0]
d00515c0:	681b      	ldr	r3, [r3, #0]
d00515c2:	b003      	add	sp, #12
d00515c4:	ecbd 8b04 	vpop	{d8-d9}
d00515c8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00515cc:	4718      	bx	r3
d00515ce:	bf00      	nop
d00515d0:	00000000 	.word	0x00000000
d00515d4:	40590000 	.word	0x40590000

d00515d8 <main>:
d00515d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00515dc:	ed2d 8b10 	vpush	{d8-d15}
d00515e0:	f5ad 4d88 	sub.w	sp, sp, #17408	; 0x4400
d00515e4:	f244 13df 	movw	r3, #16863	; 0x41df
d00515e8:	f8df 8378 	ldr.w	r8, [pc, #888]	; d0051964 <main+0x38c>
d00515ec:	b099      	sub	sp, #100	; 0x64
d00515ee:	4fc9      	ldr	r7, [pc, #804]	; (d0051914 <main+0x33c>)
d00515f0:	4cc9      	ldr	r4, [pc, #804]	; (d0051918 <main+0x340>)
d00515f2:	446b      	add	r3, sp
d00515f4:	ad4b      	add	r5, sp, #300	; 0x12c
d00515f6:	ae46      	add	r6, sp, #280	; 0x118
d00515f8:	eddf 9ac8 	vldr	s19, [pc, #800]	; d005191c <main+0x344>
d00515fc:	f023 091f 	bic.w	r9, r3, #31
d0051600:	f7ff fbe6 	bl	d0050dd0 <initSystem>
d0051604:	f7ff fe10 	bl	d0051228 <goIntro>
d0051608:	ed9f 9ac5 	vldr	s18, [pc, #788]	; d0051920 <main+0x348>
d005160c:	f109 0ac0 	add.w	sl, r9, #192	; 0xc0
d0051610:	f003 ff42 	bl	d0055498 <worldClear>
d0051614:	f005 f9d0 	bl	d00569b8 <lightsClear>
d0051618:	f509 7b08 	add.w	fp, r9, #544	; 0x220
d005161c:	f003 fc40 	bl	d0054ea0 <sb3dParticlesClear>
d0051620:	eddf 8ac0 	vldr	s17, [pc, #768]	; d0051924 <main+0x34c>
d0051624:	f005 fa74 	bl	d0056b10 <setDefaultRenderMode>
d0051628:	4650      	mov	r0, sl
d005162a:	f003 ff93 	bl	d0055554 <cameraCreate>
d005162e:	f509 73f0 	add.w	r3, r9, #480	; 0x1e0
d0051632:	4650      	mov	r0, sl
d0051634:	eddf 0abc 	vldr	s1, [pc, #752]	; d0051928 <main+0x350>
d0051638:	9308      	str	r3, [sp, #32]
d005163a:	f509 73d0 	add.w	r3, r9, #416	; 0x1a0
d005163e:	ed9f 0abb 	vldr	s0, [pc, #748]	; d005192c <main+0x354>
d0051642:	9306      	str	r3, [sp, #24]
d0051644:	f004 fa2c 	bl	d0055aa0 <cameraSetRange>
d0051648:	ed9f 1ab9 	vldr	s2, [pc, #740]	; d0051930 <main+0x358>
d005164c:	f509 72b0 	add.w	r2, r9, #352	; 0x160
d0051650:	eddf 0ab8 	vldr	s1, [pc, #736]	; d0051934 <main+0x35c>
d0051654:	eeb0 0a41 	vmov.f32	s0, s2
d0051658:	9209      	str	r2, [sp, #36]	; 0x24
d005165a:	f003 fb9b 	bl	d0054d94 <vec3>
d005165e:	a922      	add	r1, sp, #136	; 0x88
d0051660:	4650      	mov	r0, sl
d0051662:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0051666:	9104      	str	r1, [sp, #16]
d0051668:	2100      	movs	r1, #0
d005166a:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d005166e:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0051672:	9107      	str	r1, [sp, #28]
d0051674:	f8cd 9014 	str.w	r9, [sp, #20]
d0051678:	f003 ff76 	bl	d0055568 <cameraSetPosition>
d005167c:	4650      	mov	r0, sl
d005167e:	f003 ff13 	bl	d00554a8 <cameraNormalize>
d0051682:	f04f 4c7f 	mov.w	ip, #4278190080	; 0xff000000
d0051686:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d005168a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d005168c:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d0051690:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051692:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d0051696:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051698:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d005169c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d00516a0:	f108 0510 	add.w	r5, r8, #16
d00516a4:	f8c7 c000 	str.w	ip, [r7]
d00516a8:	9600      	str	r6, [sp, #0]
d00516aa:	f108 0824 	add.w	r8, r8, #36	; 0x24
d00516ae:	f8c7 c040 	str.w	ip, [r7, #64]	; 0x40
d00516b2:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00516b4:	682d      	ldr	r5, [r5, #0]
d00516b6:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d00516b8:	4663      	mov	r3, ip
d00516ba:	4638      	mov	r0, r7
d00516bc:	6035      	str	r5, [r6, #0]
d00516be:	a94b      	add	r1, sp, #300	; 0x12c
d00516c0:	2210      	movs	r2, #16
d00516c2:	f004 ff25 	bl	d0056510 <buildLightingCLUT>
d00516c6:	7b23      	ldrb	r3, [r4, #12]
d00516c8:	7b62      	ldrb	r2, [r4, #13]
d00516ca:	4638      	mov	r0, r7
d00516cc:	7ba1      	ldrb	r1, [r4, #14]
d00516ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00516d2:	7be2      	ldrb	r2, [r4, #15]
d00516d4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00516d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00516dc:	681b      	ldr	r3, [r3, #0]
d00516de:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00516e0:	4798      	blx	r3
d00516e2:	ed9f 1a93 	vldr	s2, [pc, #588]	; d0051930 <main+0x358>
d00516e6:	eef0 0a41 	vmov.f32	s1, s2
d00516ea:	eeb0 0a41 	vmov.f32	s0, s2
d00516ee:	f003 fb51 	bl	d0054d94 <vec3>
d00516f2:	eddf 1a8e 	vldr	s3, [pc, #568]	; d005192c <main+0x354>
d00516f6:	2001      	movs	r0, #1
d00516f8:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d00516fc:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0051700:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0051704:	f005 f96c 	bl	d00569e0 <addPointLight>
d0051708:	ab1f      	add	r3, sp, #124	; 0x7c
d005170a:	4607      	mov	r7, r0
d005170c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0051710:	e898 0007 	ldmia.w	r8, {r0, r1, r2}
d0051714:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0051718:	2001      	movs	r0, #1
d005171a:	edd3 0a01 	vldr	s1, [r3, #4]
d005171e:	ed93 1a02 	vldr	s2, [r3, #8]
d0051722:	ed93 0a00 	vldr	s0, [r3]
d0051726:	f005 f997 	bl	d0056a58 <addDirectionalLight>
d005172a:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005172e:	b2c2      	uxtb	r2, r0
d0051730:	ee0f 2a10 	vmov	s30, r2
d0051734:	4610      	mov	r0, r2
d0051736:	f005 f9db 	bl	d0056af0 <lightSetIntensity>
d005173a:	2100      	movs	r1, #0
d005173c:	ee1f 0a10 	vmov	r0, s30
d0051740:	f005 f940 	bl	d00569c4 <lightEnable>
d0051744:	f509 7120 	add.w	r1, r9, #640	; 0x280
d0051748:	487b      	ldr	r0, [pc, #492]	; (d0051938 <main+0x360>)
d005174a:	f7fe fce9 	bl	d0050120 <LoadSFX>
d005174e:	7c21      	ldrb	r1, [r4, #16]
d0051750:	7c65      	ldrb	r5, [r4, #17]
d0051752:	4602      	mov	r2, r0
d0051754:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051758:	2300      	movs	r3, #0
d005175a:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d005175e:	7ce0      	ldrb	r0, [r4, #19]
d0051760:	f8d9 1280 	ldr.w	r1, [r9, #640]	; 0x280
d0051764:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d0051768:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d005176c:	4618      	mov	r0, r3
d005176e:	68ad      	ldr	r5, [r5, #8]
d0051770:	68ed      	ldr	r5, [r5, #12]
d0051772:	47a8      	blx	r5
d0051774:	7c23      	ldrb	r3, [r4, #16]
d0051776:	7c62      	ldrb	r2, [r4, #17]
d0051778:	f644 6184 	movw	r1, #20100	; 0x4e84
d005177c:	7ca5      	ldrb	r5, [r4, #18]
d005177e:	2000      	movs	r0, #0
d0051780:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051784:	7ce2      	ldrb	r2, [r4, #19]
d0051786:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d005178a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005178e:	689b      	ldr	r3, [r3, #8]
d0051790:	691b      	ldr	r3, [r3, #16]
d0051792:	4798      	blx	r3
d0051794:	7c23      	ldrb	r3, [r4, #16]
d0051796:	7c62      	ldrb	r2, [r4, #17]
d0051798:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d005179c:	7ca5      	ldrb	r5, [r4, #18]
d005179e:	2000      	movs	r0, #0
d00517a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00517a4:	7ce2      	ldrb	r2, [r4, #19]
d00517a6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00517aa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00517ae:	689b      	ldr	r3, [r3, #8]
d00517b0:	695b      	ldr	r3, [r3, #20]
d00517b2:	4798      	blx	r3
d00517b4:	7c23      	ldrb	r3, [r4, #16]
d00517b6:	7c62      	ldrb	r2, [r4, #17]
d00517b8:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d00517bc:	7ca5      	ldrb	r5, [r4, #18]
d00517be:	2000      	movs	r0, #0
d00517c0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00517c4:	7ce2      	ldrb	r2, [r4, #19]
d00517c6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00517ca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00517ce:	689b      	ldr	r3, [r3, #8]
d00517d0:	699b      	ldr	r3, [r3, #24]
d00517d2:	4798      	blx	r3
d00517d4:	7c23      	ldrb	r3, [r4, #16]
d00517d6:	7c62      	ldrb	r2, [r4, #17]
d00517d8:	2100      	movs	r1, #0
d00517da:	7ca5      	ldrb	r5, [r4, #18]
d00517dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00517e0:	7ce2      	ldrb	r2, [r4, #19]
d00517e2:	4608      	mov	r0, r1
d00517e4:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00517e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00517ec:	689b      	ldr	r3, [r3, #8]
d00517ee:	6a1b      	ldr	r3, [r3, #32]
d00517f0:	4798      	blx	r3
d00517f2:	f509 7118 	add.w	r1, r9, #608	; 0x260
d00517f6:	4851      	ldr	r0, [pc, #324]	; (d005193c <main+0x364>)
d00517f8:	f7fe fc92 	bl	d0050120 <LoadSFX>
d00517fc:	7c21      	ldrb	r1, [r4, #16]
d00517fe:	7c65      	ldrb	r5, [r4, #17]
d0051800:	4602      	mov	r2, r0
d0051802:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051806:	2300      	movs	r3, #0
d0051808:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d005180c:	7ce0      	ldrb	r0, [r4, #19]
d005180e:	f8d9 1260 	ldr.w	r1, [r9, #608]	; 0x260
d0051812:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d0051816:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d005181a:	2001      	movs	r0, #1
d005181c:	68ad      	ldr	r5, [r5, #8]
d005181e:	68ed      	ldr	r5, [r5, #12]
d0051820:	47a8      	blx	r5
d0051822:	7c23      	ldrb	r3, [r4, #16]
d0051824:	7c62      	ldrb	r2, [r4, #17]
d0051826:	f244 21cc 	movw	r1, #17100	; 0x42cc
d005182a:	7ca0      	ldrb	r0, [r4, #18]
d005182c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051830:	7ce2      	ldrb	r2, [r4, #19]
d0051832:	4d43      	ldr	r5, [pc, #268]	; (d0051940 <main+0x368>)
d0051834:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051838:	2001      	movs	r0, #1
d005183a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005183e:	689b      	ldr	r3, [r3, #8]
d0051840:	691b      	ldr	r3, [r3, #16]
d0051842:	4798      	blx	r3
d0051844:	7c23      	ldrb	r3, [r4, #16]
d0051846:	7c62      	ldrb	r2, [r4, #17]
d0051848:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d005184c:	2001      	movs	r0, #1
d005184e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051852:	7ca2      	ldrb	r2, [r4, #18]
d0051854:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051858:	7ce2      	ldrb	r2, [r4, #19]
d005185a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005185e:	689b      	ldr	r3, [r3, #8]
d0051860:	695b      	ldr	r3, [r3, #20]
d0051862:	4798      	blx	r3
d0051864:	7c23      	ldrb	r3, [r4, #16]
d0051866:	7c62      	ldrb	r2, [r4, #17]
d0051868:	2140      	movs	r1, #64	; 0x40
d005186a:	2001      	movs	r0, #1
d005186c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051870:	7ca2      	ldrb	r2, [r4, #18]
d0051872:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051876:	7ce2      	ldrb	r2, [r4, #19]
d0051878:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005187c:	689b      	ldr	r3, [r3, #8]
d005187e:	699b      	ldr	r3, [r3, #24]
d0051880:	4798      	blx	r3
d0051882:	7c23      	ldrb	r3, [r4, #16]
d0051884:	7c62      	ldrb	r2, [r4, #17]
d0051886:	2100      	movs	r1, #0
d0051888:	2001      	movs	r0, #1
d005188a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005188e:	7ca2      	ldrb	r2, [r4, #18]
d0051890:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051894:	7ce2      	ldrb	r2, [r4, #19]
d0051896:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005189a:	689b      	ldr	r3, [r3, #8]
d005189c:	6a1b      	ldr	r3, [r3, #32]
d005189e:	4798      	blx	r3
d00518a0:	2313      	movs	r3, #19
d00518a2:	2012      	movs	r0, #18
d00518a4:	2215      	movs	r2, #21
d00518a6:	702b      	strb	r3, [r5, #0]
d00518a8:	2317      	movs	r3, #23
d00518aa:	4d26      	ldr	r5, [pc, #152]	; (d0051944 <main+0x36c>)
d00518ac:	4659      	mov	r1, fp
d00518ae:	ed9f 0a26 	vldr	s0, [pc, #152]	; d0051948 <main+0x370>
d00518b2:	7028      	strb	r0, [r5, #0]
d00518b4:	4825      	ldr	r0, [pc, #148]	; (d005194c <main+0x374>)
d00518b6:	4d26      	ldr	r5, [pc, #152]	; (d0051950 <main+0x378>)
d00518b8:	7002      	strb	r2, [r0, #0]
d00518ba:	4826      	ldr	r0, [pc, #152]	; (d0051954 <main+0x37c>)
d00518bc:	702b      	strb	r3, [r5, #0]
d00518be:	f007 f8ef 	bl	d0058aa0 <loadMeshSB3D>
d00518c2:	ed9f 1a1b 	vldr	s2, [pc, #108]	; d0051930 <main+0x358>
d00518c6:	eef0 0a41 	vmov.f32	s1, s2
d00518ca:	eeb0 0a41 	vmov.f32	s0, s2
d00518ce:	f003 fa61 	bl	d0054d94 <vec3>
d00518d2:	4658      	mov	r0, fp
d00518d4:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d00518d8:	ed8d 1a30 	vstr	s2, [sp, #192]	; 0xc0
d00518dc:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d00518e0:	f004 fbee 	bl	d00560c0 <entityWorldSpawn>
d00518e4:	9e08      	ldr	r6, [sp, #32]
d00518e6:	ed9f 0a13 	vldr	s0, [pc, #76]	; d0051934 <main+0x35c>
d00518ea:	4631      	mov	r1, r6
d00518ec:	481a      	ldr	r0, [pc, #104]	; (d0051958 <main+0x380>)
d00518ee:	f007 f8d7 	bl	d0058aa0 <loadMeshSB3D>
d00518f2:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d005195c <main+0x384>
d00518f6:	eddf 0a0e 	vldr	s1, [pc, #56]	; d0051930 <main+0x358>
d00518fa:	ed9f 0a19 	vldr	s0, [pc, #100]	; d0051960 <main+0x388>
d00518fe:	f003 fa49 	bl	d0054d94 <vec3>
d0051902:	4630      	mov	r0, r6
d0051904:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d0051908:	ed8d 1a33 	vstr	s2, [sp, #204]	; 0xcc
d005190c:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d0051910:	e02a      	b.n	d0051968 <main+0x390>
d0051912:	bf00      	nop
d0051914:	d008d220 	.word	0xd008d220
d0051918:	2001f000 	.word	0x2001f000
d005191c:	42280000 	.word	0x42280000
d0051920:	c3750000 	.word	0xc3750000
d0051924:	42b40000 	.word	0x42b40000
d0051928:	459c4000 	.word	0x459c4000
d005192c:	3c23d70a 	.word	0x3c23d70a
d0051930:	00000000 	.word	0x00000000
d0051934:	42480000 	.word	0x42480000
d0051938:	d005aa7c 	.word	0xd005aa7c
d005193c:	d005aa8c 	.word	0xd005aa8c
d0051940:	d0127a01 	.word	0xd0127a01
d0051944:	d01279c0 	.word	0xd01279c0
d0051948:	43480000 	.word	0x43480000
d005194c:	d0127a02 	.word	0xd0127a02
d0051950:	d0127a00 	.word	0xd0127a00
d0051954:	d005aa9c 	.word	0xd005aa9c
d0051958:	d005aaac 	.word	0xd005aaac
d005195c:	c2c80000 	.word	0xc2c80000
d0051960:	44f3c000 	.word	0x44f3c000
d0051964:	d005ab04 	.word	0xd005ab04
d0051968:	f004 fbaa 	bl	d00560c0 <entityWorldSpawn>
d005196c:	f8dd b018 	ldr.w	fp, [sp, #24]
d0051970:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d0051974:	4606      	mov	r6, r0
d0051976:	48a8      	ldr	r0, [pc, #672]	; (d0051c18 <main+0x640>)
d0051978:	4659      	mov	r1, fp
d005197a:	f007 f891 	bl	d0058aa0 <loadMeshSB3D>
d005197e:	9d09      	ldr	r5, [sp, #36]	; 0x24
d0051980:	4659      	mov	r1, fp
d0051982:	4628      	mov	r0, r5
d0051984:	f004 fd34 	bl	d00563f0 <copyMesh>
d0051988:	ed9f 1aa4 	vldr	s2, [pc, #656]	; d0051c1c <main+0x644>
d005198c:	eddf 0aa4 	vldr	s1, [pc, #656]	; d0051c20 <main+0x648>
d0051990:	ed9f 0aa4 	vldr	s0, [pc, #656]	; d0051c24 <main+0x64c>
d0051994:	f003 f9fe 	bl	d0054d94 <vec3>
d0051998:	4628      	mov	r0, r5
d005199a:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d005199e:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d00519a2:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d00519a6:	f004 fb8b 	bl	d00560c0 <entityWorldSpawn>
d00519aa:	ed9f 1a9f 	vldr	s2, [pc, #636]	; d0051c28 <main+0x650>
d00519ae:	4683      	mov	fp, r0
d00519b0:	eef0 0a41 	vmov.f32	s1, s2
d00519b4:	eeb0 0a41 	vmov.f32	s0, s2
d00519b8:	eeb0 8a41 	vmov.f32	s16, s2
d00519bc:	f003 f9ea 	bl	d0054d94 <vec3>
d00519c0:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00519c4:	2001      	movs	r0, #1
d00519c6:	ed8d 0a37 	vstr	s0, [sp, #220]	; 0xdc
d00519ca:	edcd 0a38 	vstr	s1, [sp, #224]	; 0xe0
d00519ce:	ed8d 1a39 	vstr	s2, [sp, #228]	; 0xe4
d00519d2:	f005 f805 	bl	d00569e0 <addPointLight>
d00519d6:	b2c3      	uxtb	r3, r0
d00519d8:	ed9f 1a94 	vldr	s2, [pc, #592]	; d0051c2c <main+0x654>
d00519dc:	eddf 0a94 	vldr	s1, [pc, #592]	; d0051c30 <main+0x658>
d00519e0:	ed9f 0a94 	vldr	s0, [pc, #592]	; d0051c34 <main+0x65c>
d00519e4:	4618      	mov	r0, r3
d00519e6:	ee0d 3a90 	vmov	s27, r3
d00519ea:	f004 ffc7 	bl	d005697c <lightSetRanges>
d00519ee:	f8dd 801c 	ldr.w	r8, [sp, #28]
d00519f2:	9906      	ldr	r1, [sp, #24]
d00519f4:	a80a      	add	r0, sp, #40	; 0x28
d00519f6:	f004 fcfb 	bl	d00563f0 <copyMesh>
d00519fa:	2364      	movs	r3, #100	; 0x64
d00519fc:	eb09 1588 	add.w	r5, r9, r8, lsl #6
d0051a00:	f108 0801 	add.w	r8, r8, #1
d0051a04:	f10d 0c28 	add.w	ip, sp, #40	; 0x28
d0051a08:	eef0 0a69 	vmov.f32	s1, s19
d0051a0c:	fb03 f308 	mul.w	r3, r3, r8
d0051a10:	eeb0 0a49 	vmov.f32	s0, s18
d0051a14:	ee01 3a10 	vmov	s2, r3
d0051a18:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0051a1c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051a1e:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0051a22:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051a24:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0051a28:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051a2a:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d0051a2e:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0051a32:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051a36:	f003 f9ad 	bl	d0054d94 <vec3>
d0051a3a:	9b05      	ldr	r3, [sp, #20]
d0051a3c:	edcd 0a3b 	vstr	s1, [sp, #236]	; 0xec
d0051a40:	4618      	mov	r0, r3
d0051a42:	3340      	adds	r3, #64	; 0x40
d0051a44:	ed8d 1a3c 	vstr	s2, [sp, #240]	; 0xf0
d0051a48:	ed8d 0a3a 	vstr	s0, [sp, #232]	; 0xe8
d0051a4c:	9305      	str	r3, [sp, #20]
d0051a4e:	f004 fb37 	bl	d00560c0 <entityWorldSpawn>
d0051a52:	9b04      	ldr	r3, [sp, #16]
d0051a54:	4605      	mov	r5, r0
d0051a56:	eeb0 0a68 	vmov.f32	s0, s17
d0051a5a:	f843 0b04 	str.w	r0, [r3], #4
d0051a5e:	9304      	str	r3, [sp, #16]
d0051a60:	f003 f99c 	bl	d0054d9c <degrees>
d0051a64:	eeb0 1a48 	vmov.f32	s2, s16
d0051a68:	4628      	mov	r0, r5
d0051a6a:	2101      	movs	r1, #1
d0051a6c:	eddf 0a6e 	vldr	s1, [pc, #440]	; d0051c28 <main+0x650>
d0051a70:	f004 fcac 	bl	d00563cc <entityRotation>
d0051a74:	f1b8 0f03 	cmp.w	r8, #3
d0051a78:	d1bb      	bne.n	d00519f2 <main+0x41a>
d0051a7a:	9823      	ldr	r0, [sp, #140]	; 0x8c
d0051a7c:	2300      	movs	r3, #0
d0051a7e:	ed9f 1a6e 	vldr	s2, [pc, #440]	; d0051c38 <main+0x660>
d0051a82:	ee0d ba10 	vmov	s26, fp
d0051a86:	eddf 0a6d 	vldr	s1, [pc, #436]	; d0051c3c <main+0x664>
d0051a8a:	fa5f f887 	uxtb.w	r8, r7
d0051a8e:	ed9f 0a6c 	vldr	s0, [pc, #432]	; d0051c40 <main+0x668>
d0051a92:	ee0e 6a90 	vmov	s29, r6
d0051a96:	9005      	str	r0, [sp, #20]
d0051a98:	46cb      	mov	fp, r9
d0051a9a:	9304      	str	r3, [sp, #16]
d0051a9c:	f003 f97a 	bl	d0054d94 <vec3>
d0051aa0:	2301      	movs	r3, #1
d0051aa2:	9805      	ldr	r0, [sp, #20]
d0051aa4:	edcd 0a3e 	vstr	s1, [sp, #248]	; 0xf8
d0051aa8:	ed8d 1a3f 	vstr	s2, [sp, #252]	; 0xfc
d0051aac:	ed8d 0a3d 	vstr	s0, [sp, #244]	; 0xf4
d0051ab0:	9309      	str	r3, [sp, #36]	; 0x24
d0051ab2:	f004 fb4b 	bl	d005614c <entitySetPosition>
d0051ab6:	f509 7390 	add.w	r3, r9, #288	; 0x120
d0051aba:	ed9f 0a59 	vldr	s0, [pc, #356]	; d0051c20 <main+0x648>
d0051abe:	4861      	ldr	r0, [pc, #388]	; (d0051c44 <main+0x66c>)
d0051ac0:	4619      	mov	r1, r3
d0051ac2:	9305      	str	r3, [sp, #20]
d0051ac4:	f006 ffec 	bl	d0058aa0 <loadMeshSB3D>
d0051ac8:	ed9f 1a5b 	vldr	s2, [pc, #364]	; d0051c38 <main+0x660>
d0051acc:	eddf 0a5e 	vldr	s1, [pc, #376]	; d0051c48 <main+0x670>
d0051ad0:	ed9f 0a5e 	vldr	s0, [pc, #376]	; d0051c4c <main+0x674>
d0051ad4:	f003 f95e 	bl	d0054d94 <vec3>
d0051ad8:	9805      	ldr	r0, [sp, #20]
d0051ada:	ed8d 0a40 	vstr	s0, [sp, #256]	; 0x100
d0051ade:	edcd 0a41 	vstr	s1, [sp, #260]	; 0x104
d0051ae2:	ed8d 1a42 	vstr	s2, [sp, #264]	; 0x108
d0051ae6:	f004 faeb 	bl	d00560c0 <entityWorldSpawn>
d0051aea:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d0051c28 <main+0x650>
d0051aee:	4603      	mov	r3, r0
d0051af0:	eef7 1a08 	vmov.f32	s3, #120	; 0x3fc00000  1.5
d0051af4:	ed9f 2a56 	vldr	s4, [pc, #344]	; d0051c50 <main+0x678>
d0051af8:	eeb0 0a41 	vmov.f32	s0, s2
d0051afc:	eddf 0a55 	vldr	s1, [pc, #340]	; d0051c54 <main+0x67c>
d0051b00:	9805      	ldr	r0, [sp, #20]
d0051b02:	ee0e 3a10 	vmov	s28, r3
d0051b06:	f000 fc6b 	bl	d00523e0 <meshSetMaterial>
d0051b0a:	2301      	movs	r3, #1
d0051b0c:	2216      	movs	r2, #22
d0051b0e:	4952      	ldr	r1, [pc, #328]	; (d0051c58 <main+0x680>)
d0051b10:	a85b      	add	r0, sp, #364	; 0x16c
d0051b12:	ed9f 0a52 	vldr	s0, [pc, #328]	; d0051c5c <main+0x684>
d0051b16:	f7fe ff23 	bl	d0050960 <splineRailInit>
d0051b1a:	a85b      	add	r0, sp, #364	; 0x16c
d0051b1c:	ed9f 1a50 	vldr	s2, [pc, #320]	; d0051c60 <main+0x688>
d0051b20:	eddf 0a50 	vldr	s1, [pc, #320]	; d0051c64 <main+0x68c>
d0051b24:	ed9f 0a50 	vldr	s0, [pc, #320]	; d0051c68 <main+0x690>
d0051b28:	f7fe ff48 	bl	d00509bc <splineRailSetTuning>
d0051b2c:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d0051b30:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0051b34:	ed9f 1a4d 	vldr	s2, [pc, #308]	; d0051c6c <main+0x694>
d0051b38:	a85b      	add	r0, sp, #364	; 0x16c
d0051b3a:	4d4d      	ldr	r5, [pc, #308]	; (d0051c70 <main+0x698>)
d0051b3c:	f7fe ff46 	bl	d00509cc <splineRailSetBanking>
d0051b40:	2000      	movs	r0, #0
d0051b42:	f004 fff3 	bl	d0056b2c <enableFlatMode>
d0051b46:	7b23      	ldrb	r3, [r4, #12]
d0051b48:	7b62      	ldrb	r2, [r4, #13]
d0051b4a:	7ba1      	ldrb	r1, [r4, #14]
d0051b4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b50:	7be2      	ldrb	r2, [r4, #15]
d0051b52:	6828      	ldr	r0, [r5, #0]
d0051b54:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051b58:	ed9f 9a46 	vldr	s18, [pc, #280]	; d0051c74 <main+0x69c>
d0051b5c:	eddf 9a35 	vldr	s19, [pc, #212]	; d0051c34 <main+0x65c>
d0051b60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b64:	ed9f aa44 	vldr	s20, [pc, #272]	; d0051c78 <main+0x6a0>
d0051b68:	eddf 8a2f 	vldr	s17, [pc, #188]	; d0051c28 <main+0x650>
d0051b6c:	681b      	ldr	r3, [r3, #0]
d0051b6e:	69db      	ldr	r3, [r3, #28]
d0051b70:	4798      	blx	r3
d0051b72:	7b23      	ldrb	r3, [r4, #12]
d0051b74:	7b62      	ldrb	r2, [r4, #13]
d0051b76:	7ba1      	ldrb	r1, [r4, #14]
d0051b78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b7c:	7be2      	ldrb	r2, [r4, #15]
d0051b7e:	6828      	ldr	r0, [r5, #0]
d0051b80:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051b84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b88:	681b      	ldr	r3, [r3, #0]
d0051b8a:	699b      	ldr	r3, [r3, #24]
d0051b8c:	4798      	blx	r3
d0051b8e:	7b23      	ldrb	r3, [r4, #12]
d0051b90:	7b62      	ldrb	r2, [r4, #13]
d0051b92:	2001      	movs	r0, #1
d0051b94:	7ba1      	ldrb	r1, [r4, #14]
d0051b96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b9a:	7be2      	ldrb	r2, [r4, #15]
d0051b9c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051ba0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051ba4:	685b      	ldr	r3, [r3, #4]
d0051ba6:	68db      	ldr	r3, [r3, #12]
d0051ba8:	4798      	blx	r3
d0051baa:	7b23      	ldrb	r3, [r4, #12]
d0051bac:	7b62      	ldrb	r2, [r4, #13]
d0051bae:	211e      	movs	r1, #30
d0051bb0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051bb4:	7ba2      	ldrb	r2, [r4, #14]
d0051bb6:	4608      	mov	r0, r1
d0051bb8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051bbc:	7be2      	ldrb	r2, [r4, #15]
d0051bbe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051bc2:	685b      	ldr	r3, [r3, #4]
d0051bc4:	689b      	ldr	r3, [r3, #8]
d0051bc6:	4798      	blx	r3
d0051bc8:	7823      	ldrb	r3, [r4, #0]
d0051bca:	7862      	ldrb	r2, [r4, #1]
d0051bcc:	a91c      	add	r1, sp, #112	; 0x70
d0051bce:	a81b      	add	r0, sp, #108	; 0x6c
d0051bd0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051bd4:	78a2      	ldrb	r2, [r4, #2]
d0051bd6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051bda:	78e2      	ldrb	r2, [r4, #3]
d0051bdc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051be0:	691b      	ldr	r3, [r3, #16]
d0051be2:	4798      	blx	r3
d0051be4:	7823      	ldrb	r3, [r4, #0]
d0051be6:	7862      	ldrb	r2, [r4, #1]
d0051be8:	78a1      	ldrb	r1, [r4, #2]
d0051bea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051bee:	78e2      	ldrb	r2, [r4, #3]
d0051bf0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051bf4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051bf8:	69db      	ldr	r3, [r3, #28]
d0051bfa:	4798      	blx	r3
d0051bfc:	7823      	ldrb	r3, [r4, #0]
d0051bfe:	7862      	ldrb	r2, [r4, #1]
d0051c00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051c04:	78a2      	ldrb	r2, [r4, #2]
d0051c06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051c0a:	78e2      	ldrb	r2, [r4, #3]
d0051c0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051c10:	689b      	ldr	r3, [r3, #8]
d0051c12:	4798      	blx	r3
d0051c14:	4605      	mov	r5, r0
d0051c16:	e12d      	b.n	d0051e74 <main+0x89c>
d0051c18:	d005aabc 	.word	0xd005aabc
d0051c1c:	c3480000 	.word	0xc3480000
d0051c20:	42480000 	.word	0x42480000
d0051c24:	c3070000 	.word	0xc3070000
d0051c28:	00000000 	.word	0x00000000
d0051c2c:	44048000 	.word	0x44048000
d0051c30:	43a00000 	.word	0x43a00000
d0051c34:	42c80000 	.word	0x42c80000
d0051c38:	43480000 	.word	0x43480000
d0051c3c:	42a40000 	.word	0x42a40000
d0051c40:	c3750000 	.word	0xc3750000
d0051c44:	d005aac8 	.word	0xd005aac8
d0051c48:	43af0000 	.word	0x43af0000
d0051c4c:	44fa0000 	.word	0x44fa0000
d0051c50:	42800000 	.word	0x42800000
d0051c54:	3f0ccccd 	.word	0x3f0ccccd
d0051c58:	d005ab64 	.word	0xd005ab64
d0051c5c:	43340000 	.word	0x43340000
d0051c60:	402ccccd 	.word	0x402ccccd
d0051c64:	3fe66666 	.word	0x3fe66666
d0051c68:	3fb33333 	.word	0x3fb33333
d0051c6c:	3f59999a 	.word	0x3f59999a
d0051c70:	d0127a40 	.word	0xd0127a40
d0051c74:	3b83126f 	.word	0x3b83126f
d0051c78:	4d7bc521 	.word	0x4d7bc521
d0051c7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0051c7e:	465f      	mov	r7, fp
d0051c80:	ee1a 8a90 	vmov	r8, s21
d0051c84:	f8dd b01c 	ldr.w	fp, [sp, #28]
d0051c88:	2b00      	cmp	r3, #0
d0051c8a:	f040 8320 	bne.w	d00522ce <main+0xcf6>
d0051c8e:	9b04      	ldr	r3, [sp, #16]
d0051c90:	2b00      	cmp	r3, #0
d0051c92:	f040 82fe 	bne.w	d0052292 <main+0xcba>
d0051c96:	9b08      	ldr	r3, [sp, #32]
d0051c98:	eeb0 0a68 	vmov.f32	s0, s17
d0051c9c:	2b00      	cmp	r3, #0
d0051c9e:	f000 82ee 	beq.w	d005227e <main+0xca6>
d0051ca2:	49c1      	ldr	r1, [pc, #772]	; (d0051fa8 <main+0x9d0>)
d0051ca4:	2305      	movs	r3, #5
d0051ca6:	2215      	movs	r2, #21
d0051ca8:	4650      	mov	r0, sl
d0051caa:	7809      	ldrb	r1, [r1, #0]
d0051cac:	f005 fdf2 	bl	d0057894 <drawFakeHorizon>
d0051cb0:	49be      	ldr	r1, [pc, #760]	; (d0051fac <main+0x9d4>)
d0051cb2:	780b      	ldrb	r3, [r1, #0]
d0051cb4:	2b00      	cmp	r3, #0
d0051cb6:	f040 8346 	bne.w	d0052346 <main+0xd6e>
d0051cba:	48bd      	ldr	r0, [pc, #756]	; (d0051fb0 <main+0x9d8>)
d0051cbc:	2205      	movs	r2, #5
d0051cbe:	4dbd      	ldr	r5, [pc, #756]	; (d0051fb4 <main+0x9dc>)
d0051cc0:	7803      	ldrb	r3, [r0, #0]
d0051cc2:	700a      	strb	r2, [r1, #0]
d0051cc4:	f1c3 0301 	rsb	r3, r3, #1
d0051cc8:	b2db      	uxtb	r3, r3
d0051cca:	5cea      	ldrb	r2, [r5, r3]
d0051ccc:	7003      	strb	r3, [r0, #0]
d0051cce:	b92a      	cbnz	r2, d0051cdc <main+0x704>
d0051cd0:	2101      	movs	r1, #1
d0051cd2:	2278      	movs	r2, #120	; 0x78
d0051cd4:	54e9      	strb	r1, [r5, r3]
d0051cd6:	49b8      	ldr	r1, [pc, #736]	; (d0051fb8 <main+0x9e0>)
d0051cd8:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d0051cdc:	49b7      	ldr	r1, [pc, #732]	; (d0051fbc <main+0x9e4>)
d0051cde:	eeb0 0a68 	vmov.f32	s0, s17
d0051ce2:	236e      	movs	r3, #110	; 0x6e
d0051ce4:	2280      	movs	r2, #128	; 0x80
d0051ce6:	7809      	ldrb	r1, [r1, #0]
d0051ce8:	4650      	mov	r0, sl
d0051cea:	f005 fcbb 	bl	d0057664 <drawFakeHorizonDots>
d0051cee:	7820      	ldrb	r0, [r4, #0]
d0051cf0:	7861      	ldrb	r1, [r4, #1]
d0051cf2:	78a2      	ldrb	r2, [r4, #2]
d0051cf4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051cf8:	78e3      	ldrb	r3, [r4, #3]
d0051cfa:	4db1      	ldr	r5, [pc, #708]	; (d0051fc0 <main+0x9e8>)
d0051cfc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051d00:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051d04:	689b      	ldr	r3, [r3, #8]
d0051d06:	4798      	blx	r3
d0051d08:	4603      	mov	r3, r0
d0051d0a:	4650      	mov	r0, sl
d0051d0c:	602b      	str	r3, [r5, #0]
d0051d0e:	f006 fd89 	bl	d0058824 <Render3D>
d0051d12:	7820      	ldrb	r0, [r4, #0]
d0051d14:	7861      	ldrb	r1, [r4, #1]
d0051d16:	78a2      	ldrb	r2, [r4, #2]
d0051d18:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051d1c:	78e3      	ldrb	r3, [r4, #3]
d0051d1e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051d22:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051d26:	689b      	ldr	r3, [r3, #8]
d0051d28:	4798      	blx	r3
d0051d2a:	49a6      	ldr	r1, [pc, #664]	; (d0051fc4 <main+0x9ec>)
d0051d2c:	eef5 7a00 	vmov.f32	s15, #80	; 0x3e800000  0.250
d0051d30:	682a      	ldr	r2, [r5, #0]
d0051d32:	ed91 7a00 	vldr	s14, [r1]
d0051d36:	4da4      	ldr	r5, [pc, #656]	; (d0051fc8 <main+0x9f0>)
d0051d38:	1a80      	subs	r0, r0, r2
d0051d3a:	ee38 8a07 	vadd.f32	s16, s16, s14
d0051d3e:	4aa3      	ldr	r2, [pc, #652]	; (d0051fcc <main+0x9f4>)
d0051d40:	682b      	ldr	r3, [r5, #0]
d0051d42:	6010      	str	r0, [r2, #0]
d0051d44:	eeb4 8ae7 	vcmpe.f32	s16, s15
d0051d48:	3301      	adds	r3, #1
d0051d4a:	ed81 8a00 	vstr	s16, [r1]
d0051d4e:	602b      	str	r3, [r5, #0]
d0051d50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051d54:	db24      	blt.n	d0051da0 <main+0x7c8>
d0051d56:	eddf 7a9e 	vldr	s15, [pc, #632]	; d0051fd0 <main+0x9f8>
d0051d5a:	eeb4 8ae7 	vcmpe.f32	s16, s15
d0051d5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051d62:	f340 82ed 	ble.w	d0052340 <main+0xd68>
d0051d66:	ee07 3a90 	vmov	s15, r3
d0051d6a:	4b9a      	ldr	r3, [pc, #616]	; (d0051fd4 <main+0x9fc>)
d0051d6c:	2164      	movs	r1, #100	; 0x64
d0051d6e:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0051d72:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0051d76:	ee87 7a88 	vdiv.f32	s14, s15, s16
d0051d7a:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d0051d7e:	ee17 2a90 	vmov	r2, s15
d0051d82:	fba3 0302 	umull	r0, r3, r3, r2
d0051d86:	095b      	lsrs	r3, r3, #5
d0051d88:	fb01 2213 	mls	r2, r1, r3, r2
d0051d8c:	4992      	ldr	r1, [pc, #584]	; (d0051fd8 <main+0xa00>)
d0051d8e:	600b      	str	r3, [r1, #0]
d0051d90:	4b92      	ldr	r3, [pc, #584]	; (d0051fdc <main+0xa04>)
d0051d92:	601a      	str	r2, [r3, #0]
d0051d94:	2200      	movs	r2, #0
d0051d96:	4b8c      	ldr	r3, [pc, #560]	; (d0051fc8 <main+0x9f0>)
d0051d98:	601a      	str	r2, [r3, #0]
d0051d9a:	4b8a      	ldr	r3, [pc, #552]	; (d0051fc4 <main+0x9ec>)
d0051d9c:	edc3 8a00 	vstr	s17, [r3]
d0051da0:	a85b      	add	r0, sp, #364	; 0x16c
d0051da2:	f7ff f801 	bl	d0050da8 <splineRailGetCurrentNode>
d0051da6:	2f00      	cmp	r7, #0
d0051da8:	9b05      	ldr	r3, [sp, #20]
d0051daa:	bf18      	it	ne
d0051dac:	2014      	movne	r0, #20
d0051dae:	b2c5      	uxtb	r5, r0
d0051db0:	2b00      	cmp	r3, #0
d0051db2:	f040 823e 	bne.w	d0052232 <main+0xc5a>
d0051db6:	4b85      	ldr	r3, [pc, #532]	; (d0051fcc <main+0x9f4>)
d0051db8:	f44f 767a 	mov.w	r6, #1000	; 0x3e8
d0051dbc:	4f88      	ldr	r7, [pc, #544]	; (d0051fe0 <main+0xa08>)
d0051dbe:	f8d3 9000 	ldr.w	r9, [r3]
d0051dc2:	4b85      	ldr	r3, [pc, #532]	; (d0051fd8 <main+0xa00>)
d0051dc4:	681a      	ldr	r2, [r3, #0]
d0051dc6:	4b85      	ldr	r3, [pc, #532]	; (d0051fdc <main+0xa04>)
d0051dc8:	9208      	str	r2, [sp, #32]
d0051dca:	681b      	ldr	r3, [r3, #0]
d0051dcc:	9307      	str	r3, [sp, #28]
d0051dce:	f005 fc43 	bl	d0057658 <getRenderTriCount>
d0051dd2:	f8df c244 	ldr.w	ip, [pc, #580]	; d0052018 <main+0xa40>
d0051dd6:	9003      	str	r0, [sp, #12]
d0051dd8:	fbac 3109 	umull	r3, r1, ip, r9
d0051ddc:	9a08      	ldr	r2, [sp, #32]
d0051dde:	9b07      	ldr	r3, [sp, #28]
d0051de0:	0c48      	lsrs	r0, r1, #17
d0051de2:	9502      	str	r5, [sp, #8]
d0051de4:	497f      	ldr	r1, [pc, #508]	; (d0051fe4 <main+0xa0c>)
d0051de6:	fb07 9710 	mls	r7, r7, r0, r9
d0051dea:	9000      	str	r0, [sp, #0]
d0051dec:	fb06 f607 	mul.w	r6, r6, r7
d0051df0:	487d      	ldr	r0, [pc, #500]	; (d0051fe8 <main+0xa10>)
d0051df2:	fbac 7606 	umull	r7, r6, ip, r6
d0051df6:	0c76      	lsrs	r6, r6, #17
d0051df8:	9601      	str	r6, [sp, #4]
d0051dfa:	f007 fbe7 	bl	d00595cc <siprintf>
d0051dfe:	4b7b      	ldr	r3, [pc, #492]	; (d0051fec <main+0xa14>)
d0051e00:	781b      	ldrb	r3, [r3, #0]
d0051e02:	42ab      	cmp	r3, r5
d0051e04:	d00a      	beq.n	d0051e1c <main+0x844>
d0051e06:	2d14      	cmp	r5, #20
d0051e08:	d108      	bne.n	d0051e1c <main+0x844>
d0051e0a:	9b04      	ldr	r3, [sp, #16]
d0051e0c:	2b00      	cmp	r3, #0
d0051e0e:	f000 829e 	beq.w	d005234e <main+0xd76>
d0051e12:	9b05      	ldr	r3, [sp, #20]
d0051e14:	4a69      	ldr	r2, [pc, #420]	; (d0051fbc <main+0x9e4>)
d0051e16:	9304      	str	r3, [sp, #16]
d0051e18:	2317      	movs	r3, #23
d0051e1a:	7013      	strb	r3, [r2, #0]
d0051e1c:	7b23      	ldrb	r3, [r4, #12]
d0051e1e:	2100      	movs	r1, #0
d0051e20:	7b66      	ldrb	r6, [r4, #13]
d0051e22:	4872      	ldr	r0, [pc, #456]	; (d0051fec <main+0xa14>)
d0051e24:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0051e28:	4a6f      	ldr	r2, [pc, #444]	; (d0051fe8 <main+0xa10>)
d0051e2a:	7005      	strb	r5, [r0, #0]
d0051e2c:	4608      	mov	r0, r1
d0051e2e:	7ba5      	ldrb	r5, [r4, #14]
d0051e30:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051e34:	7be5      	ldrb	r5, [r4, #15]
d0051e36:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0051e3a:	685b      	ldr	r3, [r3, #4]
d0051e3c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0051e3e:	4798      	blx	r3
d0051e40:	7b20      	ldrb	r0, [r4, #12]
d0051e42:	7b61      	ldrb	r1, [r4, #13]
d0051e44:	7ba2      	ldrb	r2, [r4, #14]
d0051e46:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051e4a:	7be3      	ldrb	r3, [r4, #15]
d0051e4c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051e50:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051e54:	681b      	ldr	r3, [r3, #0]
d0051e56:	681b      	ldr	r3, [r3, #0]
d0051e58:	4798      	blx	r3
d0051e5a:	eddf 7a65 	vldr	s15, [pc, #404]	; d0051ff0 <main+0xa18>
d0051e5e:	eeb4 9ae7 	vcmpe.f32	s18, s15
d0051e62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051e66:	f300 81cd 	bgt.w	d0052204 <main+0xc2c>
d0051e6a:	eddf 7a62 	vldr	s15, [pc, #392]	; d0051ff4 <main+0xa1c>
d0051e6e:	ee39 9a27 	vadd.f32	s18, s18, s15
d0051e72:	9d06      	ldr	r5, [sp, #24]
d0051e74:	7b20      	ldrb	r0, [r4, #12]
d0051e76:	ee69 7a29 	vmul.f32	s15, s18, s19
d0051e7a:	7b61      	ldrb	r1, [r4, #13]
d0051e7c:	7ba2      	ldrb	r2, [r4, #14]
d0051e7e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051e82:	7be3      	ldrb	r3, [r4, #15]
d0051e84:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0051e88:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051e8c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051e90:	edcd 7a05 	vstr	s15, [sp, #20]
d0051e94:	f89d 0014 	ldrb.w	r0, [sp, #20]
d0051e98:	681b      	ldr	r3, [r3, #0]
d0051e9a:	689b      	ldr	r3, [r3, #8]
d0051e9c:	4798      	blx	r3
d0051e9e:	7820      	ldrb	r0, [r4, #0]
d0051ea0:	7861      	ldrb	r1, [r4, #1]
d0051ea2:	78a2      	ldrb	r2, [r4, #2]
d0051ea4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051ea8:	78e3      	ldrb	r3, [r4, #3]
d0051eaa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051eae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051eb2:	689b      	ldr	r3, [r3, #8]
d0051eb4:	4798      	blx	r3
d0051eb6:	1b43      	subs	r3, r0, r5
d0051eb8:	9006      	str	r0, [sp, #24]
d0051eba:	ee08 3a10 	vmov	s16, r3
d0051ebe:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d0051ec2:	eeb4 8aca 	vcmpe.f32	s16, s20
d0051ec6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051eca:	f300 81a5 	bgt.w	d0052218 <main+0xc40>
d0051ece:	eddf 7a4a 	vldr	s15, [pc, #296]	; d0051ff8 <main+0xa20>
d0051ed2:	eef2 aa04 	vmov.f32	s21, #36	; 0x41200000  10.0
d0051ed6:	eddf ca49 	vldr	s25, [pc, #292]	; d0051ffc <main+0xa24>
d0051eda:	ee28 8a27 	vmul.f32	s16, s16, s15
d0051ede:	ed9f ca48 	vldr	s24, [pc, #288]	; d0052000 <main+0xa28>
d0051ee2:	eddf 7a48 	vldr	s15, [pc, #288]	; d0052004 <main+0xa2c>
d0051ee6:	eddf ba48 	vldr	s23, [pc, #288]	; d0052008 <main+0xa30>
d0051eea:	ee68 aa2a 	vmul.f32	s21, s16, s21
d0051eee:	ed9f ba47 	vldr	s22, [pc, #284]	; d005200c <main+0xa34>
d0051ef2:	ee28 ca0c 	vmul.f32	s24, s16, s24
d0051ef6:	ee68 ba2b 	vmul.f32	s23, s16, s23
d0051efa:	ee6a caac 	vmul.f32	s25, s21, s25
d0051efe:	ee28 ba0b 	vmul.f32	s22, s16, s22
d0051f02:	ee6a aaa7 	vmul.f32	s21, s21, s15
d0051f06:	7820      	ldrb	r0, [r4, #0]
d0051f08:	7861      	ldrb	r1, [r4, #1]
d0051f0a:	78a2      	ldrb	r2, [r4, #2]
d0051f0c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051f10:	78e3      	ldrb	r3, [r4, #3]
d0051f12:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051f16:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051f1a:	6a1b      	ldr	r3, [r3, #32]
d0051f1c:	4798      	blx	r3
d0051f1e:	7826      	ldrb	r6, [r4, #0]
d0051f20:	7863      	ldrb	r3, [r4, #1]
d0051f22:	a91e      	add	r1, sp, #120	; 0x78
d0051f24:	78a2      	ldrb	r2, [r4, #2]
d0051f26:	4605      	mov	r5, r0
d0051f28:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d0051f2c:	78e3      	ldrb	r3, [r4, #3]
d0051f2e:	a81d      	add	r0, sp, #116	; 0x74
d0051f30:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d0051f34:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051f38:	699b      	ldr	r3, [r3, #24]
d0051f3a:	4798      	blx	r3
d0051f3c:	9a1d      	ldr	r2, [sp, #116]	; 0x74
d0051f3e:	9b1e      	ldr	r3, [sp, #120]	; 0x78
d0051f40:	eef0 0a68 	vmov.f32	s1, s17
d0051f44:	4252      	negs	r2, r2
d0051f46:	ed9f 1a32 	vldr	s2, [pc, #200]	; d0052010 <main+0xa38>
d0051f4a:	425b      	negs	r3, r3
d0051f4c:	ed9f 0a31 	vldr	s0, [pc, #196]	; d0052014 <main+0xa3c>
d0051f50:	ee07 2a90 	vmov	s15, r2
d0051f54:	2100      	movs	r1, #0
d0051f56:	4650      	mov	r0, sl
d0051f58:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0051f5c:	ee07 3a90 	vmov	s15, r3
d0051f60:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051f64:	ee27 1a01 	vmul.f32	s2, s14, s2
d0051f68:	ee27 0a80 	vmul.f32	s0, s15, s0
d0051f6c:	f003 fbe8 	bl	d0055740 <cameraTurn>
d0051f70:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d0051f74:	eddb 0a37 	vldr	s1, [fp, #220]	; 0xdc
d0051f78:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0051f7c:	ee60 0a88 	vmul.f32	s1, s1, s16
d0051f80:	eef5 0a40 	vcmp.f32	s1, #0.0
d0051f84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051f88:	f040 81bb 	bne.w	d0052302 <main+0xd2a>
d0051f8c:	eeb0 1a68 	vmov.f32	s2, s17
d0051f90:	eddf 0a22 	vldr	s1, [pc, #136]	; d005201c <main+0xa44>
d0051f94:	eeb0 0a6c 	vmov.f32	s0, s25
d0051f98:	ee1e 0a90 	vmov	r0, s29
d0051f9c:	f004 f944 	bl	d0056228 <entityTurnLocal>
d0051fa0:	eeb0 0a6a 	vmov.f32	s0, s21
d0051fa4:	e042      	b.n	d005202c <main+0xa54>
d0051fa6:	bf00      	nop
d0051fa8:	d0127a01 	.word	0xd0127a01
d0051fac:	d008d624 	.word	0xd008d624
d0051fb0:	d008d6e8 	.word	0xd008d6e8
d0051fb4:	d008d714 	.word	0xd008d714
d0051fb8:	d008d718 	.word	0xd008d718
d0051fbc:	d0127a00 	.word	0xd0127a00
d0051fc0:	d008d720 	.word	0xd008d720
d0051fc4:	d008d700 	.word	0xd008d700
d0051fc8:	d008d6fc 	.word	0xd008d6fc
d0051fcc:	d008d724 	.word	0xd008d724
d0051fd0:	3727c5ac 	.word	0x3727c5ac
d0051fd4:	51eb851f 	.word	0x51eb851f
d0051fd8:	d008d704 	.word	0xd008d704
d0051fdc:	d008d6f8 	.word	0xd008d6f8
d0051fe0:	00075300 	.word	0x00075300
d0051fe4:	d005aad4 	.word	0xd005aad4
d0051fe8:	d008d62c 	.word	0xd008d62c
d0051fec:	d008d709 	.word	0xd008d709
d0051ff0:	3f7ef9db 	.word	0x3f7ef9db
d0051ff4:	3b83126f 	.word	0x3b83126f
d0051ff8:	310f2a63 	.word	0x310f2a63
d0051ffc:	bb449ba6 	.word	0xbb449ba6
d0052000:	3f99999a 	.word	0x3f99999a
d0052004:	40d9999a 	.word	0x40d9999a
d0052008:	43264ccd 	.word	0x43264ccd
d005200c:	435c0000 	.word	0x435c0000
d0052010:	3ba3d70a 	.word	0x3ba3d70a
d0052014:	3c088889 	.word	0x3c088889
d0052018:	45e7b273 	.word	0x45e7b273
d005201c:	00000000 	.word	0x00000000
d0052020:	451c4000 	.word	0x451c4000
d0052024:	44048000 	.word	0x44048000
d0052028:	43a00000 	.word	0x43a00000
d005202c:	ee1e 0a90 	vmov	r0, s29
d0052030:	f004 f8c8 	bl	d00561c4 <entityMoveForward>
d0052034:	eeb0 1a68 	vmov.f32	s2, s17
d0052038:	ed5f 0a08 	vldr	s1, [pc, #-32]	; d005201c <main+0xa44>
d005203c:	eeb0 0a4c 	vmov.f32	s0, s24
d0052040:	ee1e 0a10 	vmov	r0, s28
d0052044:	f004 f8f0 	bl	d0056228 <entityTurnLocal>
d0052048:	eeb0 0a6b 	vmov.f32	s0, s23
d005204c:	ee1d 0a10 	vmov	r0, s26
d0052050:	f004 f8b8 	bl	d00561c4 <entityMoveForward>
d0052054:	ee1d 0a10 	vmov	r0, s26
d0052058:	f004 f894 	bl	d0056184 <entityGetPosition>
d005205c:	ed5f 7a10 	vldr	s15, [pc, #-64]	; d0052020 <main+0xa48>
d0052060:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0052064:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0052068:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d005206c:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0052070:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052074:	f300 8132 	bgt.w	d00522dc <main+0xd04>
d0052078:	ed9d 0a25 	vldr	s0, [sp, #148]	; 0x94
d005207c:	ee1d 0a90 	vmov	r0, s27
d0052080:	eddd 0a26 	vldr	s1, [sp, #152]	; 0x98
d0052084:	ed9d 1a27 	vldr	s2, [sp, #156]	; 0x9c
d0052088:	f004 fd16 	bl	d0056ab8 <lightSetPosition>
d005208c:	eddb 0a31 	vldr	s1, [fp, #196]	; 0xc4
d0052090:	ed9b 1a32 	vldr	s2, [fp, #200]	; 0xc8
d0052094:	4640      	mov	r0, r8
d0052096:	ed9b 0a30 	vldr	s0, [fp, #192]	; 0xc0
d005209a:	f004 fd0d 	bl	d0056ab8 <lightSetPosition>
d005209e:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d00520a2:	4640      	mov	r0, r8
d00520a4:	f004 fd24 	bl	d0056af0 <lightSetIntensity>
d00520a8:	eeb0 0a69 	vmov.f32	s0, s19
d00520ac:	ed1f 1a23 	vldr	s2, [pc, #-140]	; d0052024 <main+0xa4c>
d00520b0:	4640      	mov	r0, r8
d00520b2:	ed5f 0a23 	vldr	s1, [pc, #-140]	; d0052028 <main+0xa50>
d00520b6:	f004 fc61 	bl	d005697c <lightSetRanges>
d00520ba:	9b04      	ldr	r3, [sp, #16]
d00520bc:	2b00      	cmp	r3, #0
d00520be:	f000 8137 	beq.w	d0052330 <main+0xd58>
d00520c2:	2300      	movs	r3, #0
d00520c4:	9308      	str	r3, [sp, #32]
d00520c6:	7820      	ldrb	r0, [r4, #0]
d00520c8:	7861      	ldrb	r1, [r4, #1]
d00520ca:	78a2      	ldrb	r2, [r4, #2]
d00520cc:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00520d0:	78e3      	ldrb	r3, [r4, #3]
d00520d2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00520d6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00520da:	69db      	ldr	r3, [r3, #28]
d00520dc:	4798      	blx	r3
d00520de:	f015 0701 	ands.w	r7, r5, #1
d00520e2:	f040 8119 	bne.w	d0052318 <main+0xd40>
d00520e6:	f015 0302 	ands.w	r3, r5, #2
d00520ea:	9305      	str	r3, [sp, #20]
d00520ec:	f040 80e5 	bne.w	d00522ba <main+0xce2>
d00520f0:	7b20      	ldrb	r0, [r4, #12]
d00520f2:	f005 0503 	and.w	r5, r5, #3
d00520f6:	7b61      	ldrb	r1, [r4, #13]
d00520f8:	7ba2      	ldrb	r2, [r4, #14]
d00520fa:	2d03      	cmp	r5, #3
d00520fc:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052100:	7be3      	ldrb	r3, [r4, #15]
d0052102:	bf08      	it	eq
d0052104:	edcb 8a37 	vstreq	s17, [fp, #220]	; 0xdc
d0052108:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005210c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052110:	681b      	ldr	r3, [r3, #0]
d0052112:	68db      	ldr	r3, [r3, #12]
d0052114:	4798      	blx	r3
d0052116:	4a91      	ldr	r2, [pc, #580]	; (d005235c <main+0xd84>)
d0052118:	7813      	ldrb	r3, [r2, #0]
d005211a:	f1c3 0301 	rsb	r3, r3, #1
d005211e:	b2db      	uxtb	r3, r3
d0052120:	7013      	strb	r3, [r2, #0]
d0052122:	7813      	ldrb	r3, [r2, #0]
d0052124:	7b21      	ldrb	r1, [r4, #12]
d0052126:	7b60      	ldrb	r0, [r4, #13]
d0052128:	7ba2      	ldrb	r2, [r4, #14]
d005212a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d005212e:	2b00      	cmp	r3, #0
d0052130:	d06b      	beq.n	d005220a <main+0xc32>
d0052132:	4d8b      	ldr	r5, [pc, #556]	; (d0052360 <main+0xd88>)
d0052134:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0052138:	7be3      	ldrb	r3, [r4, #15]
d005213a:	6829      	ldr	r1, [r5, #0]
d005213c:	4889      	ldr	r0, [pc, #548]	; (d0052364 <main+0xd8c>)
d005213e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052142:	6800      	ldr	r0, [r0, #0]
d0052144:	f8df 9278 	ldr.w	r9, [pc, #632]	; d00523c0 <main+0xde8>
d0052148:	2600      	movs	r6, #0
d005214a:	681b      	ldr	r3, [r3, #0]
d005214c:	ee0a 8a90 	vmov	s21, r8
d0052150:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0052152:	4798      	blx	r3
d0052154:	682b      	ldr	r3, [r5, #0]
d0052156:	4d84      	ldr	r5, [pc, #528]	; (d0052368 <main+0xd90>)
d0052158:	6818      	ldr	r0, [r3, #0]
d005215a:	f000 f987 	bl	d005246c <set3DRenderBuffer>
d005215e:	f8cd b01c 	str.w	fp, [sp, #28]
d0052162:	46bb      	mov	fp, r7
d0052164:	f819 3b01 	ldrb.w	r3, [r9], #1
d0052168:	b333      	cbz	r3, d00521b8 <main+0xbe0>
d005216a:	682f      	ldr	r7, [r5, #0]
d005216c:	4630      	mov	r0, r6
d005216e:	f107 38ff 	add.w	r8, r7, #4294967295	; 0xffffffff
d0052172:	b33f      	cbz	r7, d00521c4 <main+0xbec>
d0052174:	f8c5 8000 	str.w	r8, [r5]
d0052178:	f1b8 0f00 	cmp.w	r8, #0
d005217c:	d11c      	bne.n	d00521b8 <main+0xbe0>
d005217e:	7c21      	ldrb	r1, [r4, #16]
d0052180:	7c63      	ldrb	r3, [r4, #17]
d0052182:	7ca2      	ldrb	r2, [r4, #18]
d0052184:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0052188:	7ce3      	ldrb	r3, [r4, #19]
d005218a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005218e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052192:	689b      	ldr	r3, [r3, #8]
d0052194:	689b      	ldr	r3, [r3, #8]
d0052196:	4798      	blx	r3
d0052198:	7c21      	ldrb	r1, [r4, #16]
d005219a:	7c63      	ldrb	r3, [r4, #17]
d005219c:	4630      	mov	r0, r6
d005219e:	7ca2      	ldrb	r2, [r4, #18]
d00521a0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00521a4:	7ce3      	ldrb	r3, [r4, #19]
d00521a6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00521aa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00521ae:	689b      	ldr	r3, [r3, #8]
d00521b0:	685b      	ldr	r3, [r3, #4]
d00521b2:	4798      	blx	r3
d00521b4:	f809 8c01 	strb.w	r8, [r9, #-1]
d00521b8:	3504      	adds	r5, #4
d00521ba:	2e00      	cmp	r6, #0
d00521bc:	f47f ad5e 	bne.w	d0051c7c <main+0x6a4>
d00521c0:	2601      	movs	r6, #1
d00521c2:	e7cf      	b.n	d0052164 <main+0xb8c>
d00521c4:	f894 c010 	ldrb.w	ip, [r4, #16]
d00521c8:	7c61      	ldrb	r1, [r4, #17]
d00521ca:	7ca2      	ldrb	r2, [r4, #18]
d00521cc:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00521d0:	7ce3      	ldrb	r3, [r4, #19]
d00521d2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00521d6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00521da:	689b      	ldr	r3, [r3, #8]
d00521dc:	689b      	ldr	r3, [r3, #8]
d00521de:	4798      	blx	r3
d00521e0:	f894 c010 	ldrb.w	ip, [r4, #16]
d00521e4:	7c61      	ldrb	r1, [r4, #17]
d00521e6:	4630      	mov	r0, r6
d00521e8:	7ca2      	ldrb	r2, [r4, #18]
d00521ea:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00521ee:	7ce3      	ldrb	r3, [r4, #19]
d00521f0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00521f4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00521f8:	689b      	ldr	r3, [r3, #8]
d00521fa:	685b      	ldr	r3, [r3, #4]
d00521fc:	4798      	blx	r3
d00521fe:	f809 7c01 	strb.w	r7, [r9, #-1]
d0052202:	e7d9      	b.n	d00521b8 <main+0xbe0>
d0052204:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0052208:	e633      	b.n	d0051e72 <main+0x89a>
d005220a:	4d56      	ldr	r5, [pc, #344]	; (d0052364 <main+0xd8c>)
d005220c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0052210:	7be3      	ldrb	r3, [r4, #15]
d0052212:	6829      	ldr	r1, [r5, #0]
d0052214:	4852      	ldr	r0, [pc, #328]	; (d0052360 <main+0xd88>)
d0052216:	e792      	b.n	d005213e <main+0xb66>
d0052218:	ed9f ba54 	vldr	s22, [pc, #336]	; d005236c <main+0xd94>
d005221c:	eddf ba54 	vldr	s23, [pc, #336]	; d0052370 <main+0xd98>
d0052220:	ed9f ca54 	vldr	s24, [pc, #336]	; d0052374 <main+0xd9c>
d0052224:	eddf aa54 	vldr	s21, [pc, #336]	; d0052378 <main+0xda0>
d0052228:	eddf ca54 	vldr	s25, [pc, #336]	; d005237c <main+0xda4>
d005222c:	ed9f 8a54 	vldr	s16, [pc, #336]	; d0052380 <main+0xda8>
d0052230:	e669      	b.n	d0051f06 <main+0x92e>
d0052232:	4b54      	ldr	r3, [pc, #336]	; (d0052384 <main+0xdac>)
d0052234:	2513      	movs	r5, #19
d0052236:	4f54      	ldr	r7, [pc, #336]	; (d0052388 <main+0xdb0>)
d0052238:	f8d3 9000 	ldr.w	r9, [r3]
d005223c:	4b53      	ldr	r3, [pc, #332]	; (d005238c <main+0xdb4>)
d005223e:	681a      	ldr	r2, [r3, #0]
d0052240:	4b53      	ldr	r3, [pc, #332]	; (d0052390 <main+0xdb8>)
d0052242:	9207      	str	r2, [sp, #28]
d0052244:	681b      	ldr	r3, [r3, #0]
d0052246:	9305      	str	r3, [sp, #20]
d0052248:	f005 fa06 	bl	d0057658 <getRenderTriCount>
d005224c:	f8df c174 	ldr.w	ip, [pc, #372]	; d00523c4 <main+0xdec>
d0052250:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d0052254:	9003      	str	r0, [sp, #12]
d0052256:	fbac 3609 	umull	r3, r6, ip, r9
d005225a:	9a07      	ldr	r2, [sp, #28]
d005225c:	9b05      	ldr	r3, [sp, #20]
d005225e:	0c76      	lsrs	r6, r6, #17
d0052260:	9502      	str	r5, [sp, #8]
d0052262:	484c      	ldr	r0, [pc, #304]	; (d0052394 <main+0xdbc>)
d0052264:	fb07 9716 	mls	r7, r7, r6, r9
d0052268:	9600      	str	r6, [sp, #0]
d005226a:	fb01 f707 	mul.w	r7, r1, r7
d005226e:	494a      	ldr	r1, [pc, #296]	; (d0052398 <main+0xdc0>)
d0052270:	fbac 6707 	umull	r6, r7, ip, r7
d0052274:	0c7f      	lsrs	r7, r7, #17
d0052276:	9701      	str	r7, [sp, #4]
d0052278:	f007 f9a8 	bl	d00595cc <siprintf>
d005227c:	e5ce      	b.n	d0051e1c <main+0x844>
d005227e:	4b47      	ldr	r3, [pc, #284]	; (d005239c <main+0xdc4>)
d0052280:	4650      	mov	r0, sl
d0052282:	4a47      	ldr	r2, [pc, #284]	; (d00523a0 <main+0xdc8>)
d0052284:	4947      	ldr	r1, [pc, #284]	; (d00523a4 <main+0xdcc>)
d0052286:	781b      	ldrb	r3, [r3, #0]
d0052288:	7812      	ldrb	r2, [r2, #0]
d005228a:	7809      	ldrb	r1, [r1, #0]
d005228c:	f005 fb02 	bl	d0057894 <drawFakeHorizon>
d0052290:	e524      	b.n	d0051cdc <main+0x704>
d0052292:	2101      	movs	r1, #1
d0052294:	ee1f 0a10 	vmov	r0, s30
d0052298:	f004 fb94 	bl	d00569c4 <lightEnable>
d005229c:	ee1f 0a10 	vmov	r0, s30
d00522a0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00522a4:	f004 fc24 	bl	d0056af0 <lightSetIntensity>
d00522a8:	eeb0 0a68 	vmov.f32	s0, s17
d00522ac:	2301      	movs	r3, #1
d00522ae:	2224      	movs	r2, #36	; 0x24
d00522b0:	212b      	movs	r1, #43	; 0x2b
d00522b2:	4650      	mov	r0, sl
d00522b4:	f005 faee 	bl	d0057894 <drawFakeHorizon>
d00522b8:	e510      	b.n	d0051cdc <main+0x704>
d00522ba:	eeb1 1a4b 	vneg.f32	s2, s22
d00522be:	ed9f 0a3a 	vldr	s0, [pc, #232]	; d00523a8 <main+0xdd0>
d00522c2:	eef0 0a68 	vmov.f32	s1, s17
d00522c6:	4650      	mov	r0, sl
d00522c8:	f003 fc16 	bl	d0055af8 <cameraMove>
d00522cc:	e710      	b.n	d00520f0 <main+0xb18>
d00522ce:	eeb0 0a48 	vmov.f32	s0, s16
d00522d2:	4651      	mov	r1, sl
d00522d4:	a85b      	add	r0, sp, #364	; 0x16c
d00522d6:	f7fe fb81 	bl	d00509dc <splineRailUpdate>
d00522da:	e4d8      	b.n	d0051c8e <main+0x6b6>
d00522dc:	ed9f 1a33 	vldr	s2, [pc, #204]	; d00523ac <main+0xdd4>
d00522e0:	eddf 0a33 	vldr	s1, [pc, #204]	; d00523b0 <main+0xdd8>
d00522e4:	ed9f 0a33 	vldr	s0, [pc, #204]	; d00523b4 <main+0xddc>
d00522e8:	f002 fd54 	bl	d0054d94 <vec3>
d00522ec:	ee1d 0a10 	vmov	r0, s26
d00522f0:	ed8d 0a43 	vstr	s0, [sp, #268]	; 0x10c
d00522f4:	edcd 0a44 	vstr	s1, [sp, #272]	; 0x110
d00522f8:	ed8d 1a45 	vstr	s2, [sp, #276]	; 0x114
d00522fc:	f003 ff26 	bl	d005614c <entitySetPosition>
d0052300:	e6ba      	b.n	d0052078 <main+0xaa0>
d0052302:	eef1 0a60 	vneg.f32	s1, s1
d0052306:	2101      	movs	r1, #1
d0052308:	eeb0 1a68 	vmov.f32	s2, s17
d005230c:	ed9f 0a26 	vldr	s0, [pc, #152]	; d00523a8 <main+0xdd0>
d0052310:	4650      	mov	r0, sl
d0052312:	f003 fa15 	bl	d0055740 <cameraTurn>
d0052316:	e639      	b.n	d0051f8c <main+0x9b4>
d0052318:	2300      	movs	r3, #0
d005231a:	eeb0 1a4b 	vmov.f32	s2, s22
d005231e:	eef0 0a68 	vmov.f32	s1, s17
d0052322:	ed9f 0a21 	vldr	s0, [pc, #132]	; d00523a8 <main+0xdd0>
d0052326:	4650      	mov	r0, sl
d0052328:	9309      	str	r3, [sp, #36]	; 0x24
d005232a:	f003 fbe5 	bl	d0055af8 <cameraMove>
d005232e:	e6da      	b.n	d00520e6 <main+0xb0e>
d0052330:	eeb0 0a48 	vmov.f32	s0, s16
d0052334:	ee1f 0a10 	vmov	r0, s30
d0052338:	f7fe fdd4 	bl	d0050ee4 <weatherLightning>
d005233c:	9008      	str	r0, [sp, #32]
d005233e:	e6c2      	b.n	d00520c6 <main+0xaee>
d0052340:	2200      	movs	r2, #0
d0052342:	4613      	mov	r3, r2
d0052344:	e522      	b.n	d0051d8c <main+0x7b4>
d0052346:	3b01      	subs	r3, #1
d0052348:	4a1b      	ldr	r2, [pc, #108]	; (d00523b8 <main+0xde0>)
d005234a:	7013      	strb	r3, [r2, #0]
d005234c:	e4c6      	b.n	d0051cdc <main+0x704>
d005234e:	2201      	movs	r2, #1
d0052350:	2302      	movs	r3, #2
d0052352:	9204      	str	r2, [sp, #16]
d0052354:	4a19      	ldr	r2, [pc, #100]	; (d00523bc <main+0xde4>)
d0052356:	7013      	strb	r3, [r2, #0]
d0052358:	e560      	b.n	d0051e1c <main+0x844>
d005235a:	bf00      	nop
d005235c:	d008d708 	.word	0xd008d708
d0052360:	d0127a20 	.word	0xd0127a20
d0052364:	d0127a40 	.word	0xd0127a40
d0052368:	d008d718 	.word	0xd008d718
d005236c:	42f20000 	.word	0x42f20000
d0052370:	42b6ee15 	.word	0x42b6ee15
d0052374:	3f28f5c3 	.word	0x3f28f5c3
d0052378:	4215999a 	.word	0x4215999a
d005237c:	bc872b02 	.word	0xbc872b02
d0052380:	3f0ccccd 	.word	0x3f0ccccd
d0052384:	d008d724 	.word	0xd008d724
d0052388:	00075300 	.word	0x00075300
d005238c:	d008d704 	.word	0xd008d704
d0052390:	d008d6f8 	.word	0xd008d6f8
d0052394:	d008d62c 	.word	0xd008d62c
d0052398:	d005aad4 	.word	0xd005aad4
d005239c:	d0127a02 	.word	0xd0127a02
d00523a0:	d01279c0 	.word	0xd01279c0
d00523a4:	d0127a01 	.word	0xd0127a01
d00523a8:	00000000 	.word	0x00000000
d00523ac:	c3c80000 	.word	0xc3c80000
d00523b0:	42480000 	.word	0x42480000
d00523b4:	c3070000 	.word	0xc3070000
d00523b8:	d008d624 	.word	0xd008d624
d00523bc:	d0127a00 	.word	0xd0127a00
d00523c0:	d008d714 	.word	0xd008d714
d00523c4:	45e7b273 	.word	0x45e7b273

d00523c8 <meshSetDefaultMaterial>:
d00523c8:	b148      	cbz	r0, d00523de <meshSetDefaultMaterial+0x16>
d00523ca:	2300      	movs	r3, #0
d00523cc:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00523d0:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d00523d4:	6203      	str	r3, [r0, #32]
d00523d6:	6241      	str	r1, [r0, #36]	; 0x24
d00523d8:	62c2      	str	r2, [r0, #44]	; 0x2c
d00523da:	6303      	str	r3, [r0, #48]	; 0x30
d00523dc:	6283      	str	r3, [r0, #40]	; 0x28
d00523de:	4770      	bx	lr

d00523e0 <meshSetMaterial>:
d00523e0:	b148      	cbz	r0, d00523f6 <meshSetMaterial+0x16>
d00523e2:	ed80 0a08 	vstr	s0, [r0, #32]
d00523e6:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d00523ea:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d00523ee:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d00523f2:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d00523f6:	4770      	bx	lr

d00523f8 <initDepthBandMem>:
d00523f8:	4a08      	ldr	r2, [pc, #32]	; (d005241c <initDepthBandMem+0x24>)
d00523fa:	b508      	push	{r3, lr}
d00523fc:	7813      	ldrb	r3, [r2, #0]
d00523fe:	7850      	ldrb	r0, [r2, #1]
d0052400:	7891      	ldrb	r1, [r2, #2]
d0052402:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0052406:	78d2      	ldrb	r2, [r2, #3]
d0052408:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005240c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052410:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0052412:	4798      	blx	r3
d0052414:	4b02      	ldr	r3, [pc, #8]	; (d0052420 <initDepthBandMem+0x28>)
d0052416:	6018      	str	r0, [r3, #0]
d0052418:	bd08      	pop	{r3, pc}
d005241a:	bf00      	nop
d005241c:	2001f000 	.word	0x2001f000
d0052420:	d008d730 	.word	0xd008d730

d0052424 <beginDepthBand>:
d0052424:	f100 031f 	add.w	r3, r0, #31
d0052428:	4a0d      	ldr	r2, [pc, #52]	; (d0052460 <beginDepthBand+0x3c>)
d005242a:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d005242e:	6010      	str	r0, [r2, #0]
d0052430:	da08      	bge.n	d0052444 <beginDepthBand+0x20>
d0052432:	490c      	ldr	r1, [pc, #48]	; (d0052464 <beginDepthBand+0x40>)
d0052434:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d0052438:	600b      	str	r3, [r1, #0]
d005243a:	21ff      	movs	r1, #255	; 0xff
d005243c:	4b0a      	ldr	r3, [pc, #40]	; (d0052468 <beginDepthBand+0x44>)
d005243e:	6818      	ldr	r0, [r3, #0]
d0052440:	f006 bf44 	b.w	d00592cc <memset>
d0052444:	4b07      	ldr	r3, [pc, #28]	; (d0052464 <beginDepthBand+0x40>)
d0052446:	f240 123f 	movw	r2, #319	; 0x13f
d005244a:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d005244e:	21ff      	movs	r1, #255	; 0xff
d0052450:	601a      	str	r2, [r3, #0]
d0052452:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d0052456:	4b04      	ldr	r3, [pc, #16]	; (d0052468 <beginDepthBand+0x44>)
d0052458:	0182      	lsls	r2, r0, #6
d005245a:	6818      	ldr	r0, [r3, #0]
d005245c:	f006 bf36 	b.w	d00592cc <memset>
d0052460:	d008d728 	.word	0xd008d728
d0052464:	d008d72c 	.word	0xd008d72c
d0052468:	d008d730 	.word	0xd008d730

d005246c <set3DRenderBuffer>:
d005246c:	4b01      	ldr	r3, [pc, #4]	; (d0052474 <set3DRenderBuffer+0x8>)
d005246e:	6018      	str	r0, [r3, #0]
d0052470:	4770      	bx	lr
d0052472:	bf00      	nop
d0052474:	d0127a44 	.word	0xd0127a44

d0052478 <putPixel>:
d0052478:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d005247c:	d209      	bcs.n	d0052492 <putPixel+0x1a>
d005247e:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0052482:	d206      	bcs.n	d0052492 <putPixel+0x1a>
d0052484:	4b03      	ldr	r3, [pc, #12]	; (d0052494 <putPixel+0x1c>)
d0052486:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d005248a:	681b      	ldr	r3, [r3, #0]
d005248c:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0052490:	5442      	strb	r2, [r0, r1]
d0052492:	4770      	bx	lr
d0052494:	d0127a44 	.word	0xd0127a44

d0052498 <drawLine>:
d0052498:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005249c:	b085      	sub	sp, #20
d005249e:	eba2 0c00 	sub.w	ip, r2, r0
d00524a2:	eba3 0901 	sub.w	r9, r3, r1
d00524a6:	f240 1edf 	movw	lr, #479	; 0x1df
d00524aa:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d00524ae:	f240 1a3f 	movw	sl, #319	; 0x13f
d00524b2:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0052530 <drawLine+0x98>
d00524b6:	9401      	str	r4, [sp, #4]
d00524b8:	4282      	cmp	r2, r0
d00524ba:	bfcc      	ite	gt
d00524bc:	2401      	movgt	r4, #1
d00524be:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00524c2:	9402      	str	r4, [sp, #8]
d00524c4:	428b      	cmp	r3, r1
d00524c6:	bfcc      	ite	gt
d00524c8:	2401      	movgt	r4, #1
d00524ca:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00524ce:	f1bc 0f00 	cmp.w	ip, #0
d00524d2:	9403      	str	r4, [sp, #12]
d00524d4:	bfb8      	it	lt
d00524d6:	f1cc 0c00 	rsblt	ip, ip, #0
d00524da:	f1b9 0f00 	cmp.w	r9, #0
d00524de:	bfb8      	it	lt
d00524e0:	f1c9 0900 	rsblt	r9, r9, #0
d00524e4:	ebac 0409 	sub.w	r4, ip, r9
d00524e8:	f1c9 0800 	rsb	r8, r9, #0
d00524ec:	4570      	cmp	r0, lr
d00524ee:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d00524f2:	ea4f 0644 	mov.w	r6, r4, lsl #1
d00524f6:	d807      	bhi.n	d0052508 <drawLine+0x70>
d00524f8:	4551      	cmp	r1, sl
d00524fa:	d805      	bhi.n	d0052508 <drawLine+0x70>
d00524fc:	f8db 5000 	ldr.w	r5, [fp]
d0052500:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d0052504:	9f01      	ldr	r7, [sp, #4]
d0052506:	546f      	strb	r7, [r5, r1]
d0052508:	4290      	cmp	r0, r2
d005250a:	d101      	bne.n	d0052510 <drawLine+0x78>
d005250c:	4299      	cmp	r1, r3
d005250e:	d00c      	beq.n	d005252a <drawLine+0x92>
d0052510:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d0052514:	dc05      	bgt.n	d0052522 <drawLine+0x8a>
d0052516:	9d02      	ldr	r5, [sp, #8]
d0052518:	45b4      	cmp	ip, r6
d005251a:	eba4 0409 	sub.w	r4, r4, r9
d005251e:	4428      	add	r0, r5
d0052520:	dbe4      	blt.n	d00524ec <drawLine+0x54>
d0052522:	9d03      	ldr	r5, [sp, #12]
d0052524:	4464      	add	r4, ip
d0052526:	4429      	add	r1, r5
d0052528:	e7e0      	b.n	d00524ec <drawLine+0x54>
d005252a:	b005      	add	sp, #20
d005252c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052530:	d0127a44 	.word	0xd0127a44

d0052534 <shadeColor>:
d0052534:	2900      	cmp	r1, #0
d0052536:	db09      	blt.n	d005254c <shadeColor+0x18>
d0052538:	2904      	cmp	r1, #4
d005253a:	dc09      	bgt.n	d0052550 <shadeColor+0x1c>
d005253c:	0109      	lsls	r1, r1, #4
d005253e:	b2c9      	uxtb	r1, r1
d0052540:	f000 000f 	and.w	r0, r0, #15
d0052544:	3020      	adds	r0, #32
d0052546:	4408      	add	r0, r1
d0052548:	b2c0      	uxtb	r0, r0
d005254a:	4770      	bx	lr
d005254c:	2100      	movs	r1, #0
d005254e:	e7f7      	b.n	d0052540 <shadeColor+0xc>
d0052550:	2010      	movs	r0, #16
d0052552:	4770      	bx	lr

d0052554 <fillTriangleFlat>:
d0052554:	eddf 7adc 	vldr	s15, [pc, #880]	; d00528c8 <fillTriangleFlat+0x374>
d0052558:	eef4 0ae7 	vcmpe.f32	s1, s15
d005255c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052560:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052564:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0052568:	ed2d 8b10 	vpush	{d8-d15}
d005256c:	b08d      	sub	sp, #52	; 0x34
d005256e:	9304      	str	r3, [sp, #16]
d0052570:	bf94      	ite	ls
d0052572:	2301      	movls	r3, #1
d0052574:	2300      	movhi	r3, #0
d0052576:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005257a:	9001      	str	r0, [sp, #4]
d005257c:	9102      	str	r1, [sp, #8]
d005257e:	bf98      	it	ls
d0052580:	f043 0301 	orrls.w	r3, r3, #1
d0052584:	9203      	str	r2, [sp, #12]
d0052586:	f8bd 40a0 	ldrh.w	r4, [sp, #160]	; 0xa0
d005258a:	f8bd 00a4 	ldrh.w	r0, [sp, #164]	; 0xa4
d005258e:	f8bd 10a8 	ldrh.w	r1, [sp, #168]	; 0xa8
d0052592:	f89d 20ac 	ldrb.w	r2, [sp, #172]	; 0xac
d0052596:	2b00      	cmp	r3, #0
d0052598:	f040 8169 	bne.w	d005286e <fillTriangleFlat+0x31a>
d005259c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00525a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00525a4:	bf94      	ite	ls
d00525a6:	2701      	movls	r7, #1
d00525a8:	2700      	movhi	r7, #0
d00525aa:	f240 8160 	bls.w	d005286e <fillTriangleFlat+0x31a>
d00525ae:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00525b2:	ee07 4a10 	vmov	s14, r4
d00525b6:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00525ba:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00525be:	ee87 8a80 	vdiv.f32	s16, s15, s0
d00525c2:	eec7 2a81 	vdiv.f32	s5, s15, s2
d00525c6:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00525ca:	ee07 0a90 	vmov	s15, r0
d00525ce:	ee71 1aa6 	vadd.f32	s3, s3, s13
d00525d2:	eef8 5a67 	vcvt.f32.u32	s11, s15
d00525d6:	ee07 1a90 	vmov	s15, r1
d00525da:	ee27 7a08 	vmul.f32	s14, s14, s16
d00525de:	eef8 3a67 	vcvt.f32.u32	s7, s15
d00525e2:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00525e6:	ee63 3aa2 	vmul.f32	s7, s7, s5
d00525ea:	ee17 3a90 	vmov	r3, s15
d00525ee:	2b00      	cmp	r3, #0
d00525f0:	ee65 5a80 	vmul.f32	s11, s11, s0
d00525f4:	f2c0 8142 	blt.w	d005287c <fillTriangleFlat+0x328>
d00525f8:	2b04      	cmp	r3, #4
d00525fa:	f340 813d 	ble.w	d0052878 <fillTriangleFlat+0x324>
d00525fe:	2710      	movs	r7, #16
d0052600:	eddd 7a02 	vldr	s15, [sp, #8]
d0052604:	eddd 6a27 	vldr	s13, [sp, #156]	; 0x9c
d0052608:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d005260c:	eddd 7a04 	vldr	s15, [sp, #16]
d0052610:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0052614:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0052618:	eddd 7a01 	vldr	s15, [sp, #4]
d005261c:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0052620:	eddd 7a03 	vldr	s15, [sp, #12]
d0052624:	eef4 4ac3 	vcmpe.f32	s9, s6
d0052628:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d005262c:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0052630:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052634:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052638:	f300 8126 	bgt.w	d0052888 <fillTriangleFlat+0x334>
d005263c:	eef4 4ae6 	vcmpe.f32	s9, s13
d0052640:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052644:	f300 8217 	bgt.w	d0052a76 <fillTriangleFlat+0x522>
d0052648:	eeb4 3ae6 	vcmpe.f32	s6, s13
d005264c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052650:	dd17      	ble.n	d0052682 <fillTriangleFlat+0x12e>
d0052652:	eeb0 1a65 	vmov.f32	s2, s11
d0052656:	eef0 1a40 	vmov.f32	s3, s0
d005265a:	eeb0 2a43 	vmov.f32	s4, s6
d005265e:	eeb0 5a44 	vmov.f32	s10, s8
d0052662:	eef0 5a63 	vmov.f32	s11, s7
d0052666:	eeb0 0a62 	vmov.f32	s0, s5
d005266a:	eeb0 3a66 	vmov.f32	s6, s13
d005266e:	eeb0 4a67 	vmov.f32	s8, s15
d0052672:	eef0 3a41 	vmov.f32	s7, s2
d0052676:	eef0 2a61 	vmov.f32	s5, s3
d005267a:	eef0 6a42 	vmov.f32	s13, s4
d005267e:	eef0 7a45 	vmov.f32	s15, s10
d0052682:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d0052686:	ee34 2a85 	vadd.f32	s4, s9, s10
d005268a:	ee36 5a85 	vadd.f32	s10, s13, s10
d005268e:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d0052692:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d0052696:	ee12 3a10 	vmov	r3, s4
d005269a:	ee15 2a10 	vmov	r2, s10
d005269e:	4293      	cmp	r3, r2
d00526a0:	f000 80e5 	beq.w	d005286e <fillTriangleFlat+0x31a>
d00526a4:	ee36 2ae4 	vsub.f32	s4, s13, s9
d00526a8:	ed9f 1a87 	vldr	s2, [pc, #540]	; d00528c8 <fillTriangleFlat+0x374>
d00526ac:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00526b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00526b4:	f240 80db 	bls.w	d005286e <fillTriangleFlat+0x31a>
d00526b8:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00526bc:	ee77 0ac6 	vsub.f32	s1, s15, s12
d00526c0:	ee72 8ac8 	vsub.f32	s17, s5, s16
d00526c4:	ee81 5a82 	vdiv.f32	s10, s3, s4
d00526c8:	ee33 2a64 	vsub.f32	s4, s6, s9
d00526cc:	ee33 9ac7 	vsub.f32	s18, s7, s14
d00526d0:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00526d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00526d8:	ee60 0a85 	vmul.f32	s1, s1, s10
d00526dc:	ee68 8a85 	vmul.f32	s17, s17, s10
d00526e0:	ee29 9a05 	vmul.f32	s18, s18, s10
d00526e4:	f300 80fe 	bgt.w	d00528e4 <fillTriangleFlat+0x390>
d00526e8:	ee36 5ac3 	vsub.f32	s10, s13, s6
d00526ec:	eeb4 5ac1 	vcmpe.f32	s10, s2
d00526f0:	ed8d 5a01 	vstr	s10, [sp, #4]
d00526f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00526f8:	f340 80b9 	ble.w	d005286e <fillTriangleFlat+0x31a>
d00526fc:	ee81 5a85 	vdiv.f32	s10, s3, s10
d0052700:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0052704:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0052708:	ee72 2ac0 	vsub.f32	s5, s5, s0
d005270c:	ee73 3ae5 	vsub.f32	s7, s7, s11
d0052710:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052714:	ee67 7a85 	vmul.f32	s15, s15, s10
d0052718:	ee62 fa85 	vmul.f32	s31, s5, s10
d005271c:	ee23 5a85 	vmul.f32	s10, s7, s10
d0052720:	edcd 7a04 	vstr	s15, [sp, #16]
d0052724:	f300 8343 	bgt.w	d0052dae <fillTriangleFlat+0x85a>
d0052728:	4a68      	ldr	r2, [pc, #416]	; (d00528cc <fillTriangleFlat+0x378>)
d005272a:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d005272e:	4b68      	ldr	r3, [pc, #416]	; (d00528d0 <fillTriangleFlat+0x37c>)
d0052730:	f8d2 a000 	ldr.w	sl, [r2]
d0052734:	681b      	ldr	r3, [r3, #0]
d0052736:	edcd 7a02 	vstr	s15, [sp, #8]
d005273a:	9303      	str	r3, [sp, #12]
d005273c:	9b02      	ldr	r3, [sp, #8]
d005273e:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0052742:	4553      	cmp	r3, sl
d0052744:	ee17 ea90 	vmov	lr, s15
d0052748:	bfb8      	it	lt
d005274a:	4653      	movlt	r3, sl
d005274c:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0052750:	469b      	mov	fp, r3
d0052752:	9b03      	ldr	r3, [sp, #12]
d0052754:	459e      	cmp	lr, r3
d0052756:	bfa8      	it	ge
d0052758:	469e      	movge	lr, r3
d005275a:	45f3      	cmp	fp, lr
d005275c:	f300 8087 	bgt.w	d005286e <fillTriangleFlat+0x31a>
d0052760:	ee07 ba90 	vmov	s15, fp
d0052764:	eef6 1a00 	vmov.f32	s3, #96	; 0x3f000000  0.5
d0052768:	ebaa 1a0a 	sub.w	sl, sl, sl, lsl #4
d005276c:	4b59      	ldr	r3, [pc, #356]	; (d00528d4 <fillTriangleFlat+0x380>)
d005276e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052772:	ed9d ba04 	vldr	s22, [sp, #16]
d0052776:	ea4f 124a 	mov.w	r2, sl, lsl #5
d005277a:	681b      	ldr	r3, [r3, #0]
d005277c:	f10e 0e01 	add.w	lr, lr, #1
d0052780:	eddf 9a51 	vldr	s19, [pc, #324]	; d00528c8 <fillTriangleFlat+0x374>
d0052784:	ee77 7aa1 	vadd.f32	s15, s15, s3
d0052788:	ed9f aa53 	vldr	s20, [pc, #332]	; d00528d8 <fillTriangleFlat+0x384>
d005278c:	ed9f 2a53 	vldr	s4, [pc, #332]	; d00528dc <fillTriangleFlat+0x388>
d0052790:	ed9f 1a53 	vldr	s2, [pc, #332]	; d00528e0 <fillTriangleFlat+0x38c>
d0052794:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0052798:	9202      	str	r2, [sp, #8]
d005279a:	ee37 3ac3 	vsub.f32	s6, s15, s6
d005279e:	9301      	str	r3, [sp, #4]
d00527a0:	eea0 6aa4 	vfma.f32	s12, s1, s9
d00527a4:	eea8 8aa4 	vfma.f32	s16, s17, s9
d00527a8:	eea9 7a24 	vfma.f32	s14, s18, s9
d00527ac:	eea3 4a0b 	vfma.f32	s8, s6, s22
d00527b0:	eea3 0a2f 	vfma.f32	s0, s6, s31
d00527b4:	eee5 5a03 	vfma.f32	s11, s10, s6
d00527b8:	e033      	b.n	d0052822 <fillTriangleFlat+0x2ce>
d00527ba:	eef0 aa47 	vmov.f32	s21, s14
d00527be:	eef0 2a48 	vmov.f32	s5, s16
d00527c2:	eef0 6a46 	vmov.f32	s13, s12
d00527c6:	eeb0 3a65 	vmov.f32	s6, s11
d00527ca:	eef0 4a40 	vmov.f32	s9, s0
d00527ce:	eef0 3a44 	vmov.f32	s7, s8
d00527d2:	fefa 7a66 	vrintp.f32	s15, s13
d00527d6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00527da:	f240 13df 	movw	r3, #479	; 0x1df
d00527de:	ee17 ca90 	vmov	ip, s15
d00527e2:	fefa 7a63 	vrintp.f32	s15, s7
d00527e6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00527ea:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d00527ee:	ee17 5a90 	vmov	r5, s15
d00527f2:	459c      	cmp	ip, r3
d00527f4:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d00527f8:	bfa8      	it	ge
d00527fa:	469c      	movge	ip, r3
d00527fc:	45ac      	cmp	ip, r5
d00527fe:	f280 816c 	bge.w	d0052ada <fillTriangleFlat+0x586>
d0052802:	f10b 0b01 	add.w	fp, fp, #1
d0052806:	ee36 6a20 	vadd.f32	s12, s12, s1
d005280a:	ee38 8a28 	vadd.f32	s16, s16, s17
d005280e:	45f3      	cmp	fp, lr
d0052810:	ee37 7a09 	vadd.f32	s14, s14, s18
d0052814:	ee34 4a0b 	vadd.f32	s8, s8, s22
d0052818:	ee30 0a2f 	vadd.f32	s0, s0, s31
d005281c:	ee75 5a85 	vadd.f32	s11, s11, s10
d0052820:	d025      	beq.n	d005286e <fillTriangleFlat+0x31a>
d0052822:	eeb4 6ac4 	vcmpe.f32	s12, s8
d0052826:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005282a:	dcc6      	bgt.n	d00527ba <fillTriangleFlat+0x266>
d005282c:	eef0 aa65 	vmov.f32	s21, s11
d0052830:	eef0 2a40 	vmov.f32	s5, s0
d0052834:	eef0 6a44 	vmov.f32	s13, s8
d0052838:	eeb0 3a47 	vmov.f32	s6, s14
d005283c:	eef0 4a48 	vmov.f32	s9, s16
d0052840:	eef0 3a46 	vmov.f32	s7, s12
d0052844:	e7c5      	b.n	d00527d2 <fillTriangleFlat+0x27e>
d0052846:	eddd 6a07 	vldr	s13, [sp, #28]
d005284a:	f8dd a020 	ldr.w	sl, [sp, #32]
d005284e:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d0052852:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0052856:	ed9d 8a0b 	vldr	s16, [sp, #44]	; 0x2c
d005285a:	eddf 7a1b 	vldr	s15, [pc, #108]	; d00528c8 <fillTriangleFlat+0x374>
d005285e:	eddd 3a01 	vldr	s7, [sp, #4]
d0052862:	eef4 3ae7 	vcmpe.f32	s7, s15
d0052866:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005286a:	f73f af67 	bgt.w	d005273c <fillTriangleFlat+0x1e8>
d005286e:	b00d      	add	sp, #52	; 0x34
d0052870:	ecbd 8b10 	vpop	{d8-d15}
d0052874:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052878:	011b      	lsls	r3, r3, #4
d005287a:	b2df      	uxtb	r7, r3
d005287c:	f002 020f 	and.w	r2, r2, #15
d0052880:	3220      	adds	r2, #32
d0052882:	4417      	add	r7, r2
d0052884:	b2ff      	uxtb	r7, r7
d0052886:	e6bb      	b.n	d0052600 <fillTriangleFlat+0xac>
d0052888:	eeb4 3ae6 	vcmpe.f32	s6, s13
d005288c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052890:	f340 810a 	ble.w	d0052aa8 <fillTriangleFlat+0x554>
d0052894:	eeb0 1a63 	vmov.f32	s2, s7
d0052898:	eef0 1a62 	vmov.f32	s3, s5
d005289c:	eeb0 2a66 	vmov.f32	s4, s13
d00528a0:	eeb0 5a67 	vmov.f32	s10, s15
d00528a4:	eef0 3a47 	vmov.f32	s7, s14
d00528a8:	eef0 2a48 	vmov.f32	s5, s16
d00528ac:	eef0 6a64 	vmov.f32	s13, s9
d00528b0:	eef0 7a46 	vmov.f32	s15, s12
d00528b4:	eeb0 7a41 	vmov.f32	s14, s2
d00528b8:	eeb0 8a61 	vmov.f32	s16, s3
d00528bc:	eef0 4a42 	vmov.f32	s9, s4
d00528c0:	eeb0 6a45 	vmov.f32	s12, s10
d00528c4:	e6dd      	b.n	d0052682 <fillTriangleFlat+0x12e>
d00528c6:	bf00      	nop
d00528c8:	38d1b717 	.word	0x38d1b717
d00528cc:	d008d728 	.word	0xd008d728
d00528d0:	d008d72c 	.word	0xd008d72c
d00528d4:	d008d730 	.word	0xd008d730
d00528d8:	33d6bf95 	.word	0x33d6bf95
d00528dc:	00000000 	.word	0x00000000
d00528e0:	477fff00 	.word	0x477fff00
d00528e4:	ee81 5a82 	vdiv.f32	s10, s3, s4
d00528e8:	ee76 aac3 	vsub.f32	s21, s13, s6
d00528ec:	ee34 aa46 	vsub.f32	s20, s8, s12
d00528f0:	ee70 9a48 	vsub.f32	s19, s0, s16
d00528f4:	ee35 2ac7 	vsub.f32	s4, s11, s14
d00528f8:	edcd aa01 	vstr	s21, [sp, #4]
d00528fc:	eef4 aac1 	vcmpe.f32	s21, s2
d0052900:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052904:	ee2a aa05 	vmul.f32	s20, s20, s10
d0052908:	ee69 9a85 	vmul.f32	s19, s19, s10
d005290c:	ee22 5a05 	vmul.f32	s10, s4, s10
d0052910:	eef0 ea45 	vmov.f32	s29, s10
d0052914:	f340 8244 	ble.w	d0052da0 <fillTriangleFlat+0x84c>
d0052918:	ee81 2aaa 	vdiv.f32	s4, s3, s21
d005291c:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0052920:	ee72 2ac0 	vsub.f32	s5, s5, s0
d0052924:	ee33 5ae5 	vsub.f32	s10, s7, s11
d0052928:	ee67 7a82 	vmul.f32	s15, s15, s4
d005292c:	ee62 fa82 	vmul.f32	s31, s5, s4
d0052930:	ee25 5a02 	vmul.f32	s10, s10, s4
d0052934:	edcd 7a04 	vstr	s15, [sp, #16]
d0052938:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d005293c:	4bd2      	ldr	r3, [pc, #840]	; (d0052c88 <fillTriangleFlat+0x734>)
d005293e:	4ad3      	ldr	r2, [pc, #844]	; (d0052c8c <fillTriangleFlat+0x738>)
d0052940:	6819      	ldr	r1, [r3, #0]
d0052942:	ee17 3a90 	vmov	r3, s15
d0052946:	edcd 7a02 	vstr	s15, [sp, #8]
d005294a:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d005294e:	f8d2 a000 	ldr.w	sl, [r2]
d0052952:	3b01      	subs	r3, #1
d0052954:	9103      	str	r1, [sp, #12]
d0052956:	ee17 ba90 	vmov	fp, s15
d005295a:	428b      	cmp	r3, r1
d005295c:	bfa8      	it	ge
d005295e:	460b      	movge	r3, r1
d0052960:	45d3      	cmp	fp, sl
d0052962:	bfb8      	it	lt
d0052964:	46d3      	movlt	fp, sl
d0052966:	455b      	cmp	r3, fp
d0052968:	f6ff af77 	blt.w	d005285a <fillTriangleFlat+0x306>
d005296c:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0052970:	ee07 ba90 	vmov	s15, fp
d0052974:	49c6      	ldr	r1, [pc, #792]	; (d0052c90 <fillTriangleFlat+0x73c>)
d0052976:	ebaa 120a 	sub.w	r2, sl, sl, lsl #4
d005297a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005297e:	1c58      	adds	r0, r3, #1
d0052980:	ee72 3a64 	vsub.f32	s7, s4, s9
d0052984:	680b      	ldr	r3, [r1, #0]
d0052986:	eeb0 ba46 	vmov.f32	s22, s12
d005298a:	f8cd a020 	str.w	sl, [sp, #32]
d005298e:	eeb0 da48 	vmov.f32	s26, s16
d0052992:	9305      	str	r3, [sp, #20]
d0052994:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0052998:	0153      	lsls	r3, r2, #5
d005299a:	eef0 ca47 	vmov.f32	s25, s14
d005299e:	eddf dabd 	vldr	s27, [pc, #756]	; d0052c94 <fillTriangleFlat+0x740>
d00529a2:	eef0 aa46 	vmov.f32	s21, s12
d00529a6:	eddf 2abf 	vldr	s5, [pc, #764]	; d0052ca4 <fillTriangleFlat+0x750>
d00529aa:	eeb0 ca48 	vmov.f32	s24, s16
d00529ae:	eddf 1aba 	vldr	s3, [pc, #744]	; d0052c98 <fillTriangleFlat+0x744>
d00529b2:	eef0 ba47 	vmov.f32	s23, s14
d00529b6:	4682      	mov	sl, r0
d00529b8:	eea0 baa7 	vfma.f32	s22, s1, s15
d00529bc:	9306      	str	r3, [sp, #24]
d00529be:	eea8 daa7 	vfma.f32	s26, s17, s15
d00529c2:	edcd 6a07 	vstr	s13, [sp, #28]
d00529c6:	eee9 ca27 	vfma.f32	s25, s18, s15
d00529ca:	ed8d 4a09 	vstr	s8, [sp, #36]	; 0x24
d00529ce:	eee7 aa8a 	vfma.f32	s21, s15, s20
d00529d2:	ed8d 7a0a 	vstr	s14, [sp, #40]	; 0x28
d00529d6:	eea7 caa9 	vfma.f32	s24, s15, s19
d00529da:	ed8d 8a0b 	vstr	s16, [sp, #44]	; 0x2c
d00529de:	eee7 baae 	vfma.f32	s23, s15, s29
d00529e2:	eeb0 ea69 	vmov.f32	s28, s19
d00529e6:	e034      	b.n	d0052a52 <fillTriangleFlat+0x4fe>
d00529e8:	eef0 3a6c 	vmov.f32	s7, s25
d00529ec:	eeb0 4a4d 	vmov.f32	s8, s26
d00529f0:	eef0 7a4b 	vmov.f32	s15, s22
d00529f4:	eef0 6a6b 	vmov.f32	s13, s23
d00529f8:	eeb0 7a4c 	vmov.f32	s14, s24
d00529fc:	eeb0 1a6a 	vmov.f32	s2, s21
d0052a00:	feba 8a67 	vrintp.f32	s16, s15
d0052a04:	eebd 8ac8 	vcvt.s32.f32	s16, s16
d0052a08:	fefa 9a41 	vrintp.f32	s19, s2
d0052a0c:	f240 13df 	movw	r3, #479	; 0x1df
d0052a10:	ee18 ca10 	vmov	ip, s16
d0052a14:	eebd 8ae9 	vcvt.s32.f32	s16, s19
d0052a18:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0052a1c:	ee18 5a10 	vmov	r5, s16
d0052a20:	459c      	cmp	ip, r3
d0052a22:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0052a26:	bfa8      	it	ge
d0052a28:	469c      	movge	ip, r3
d0052a2a:	45ac      	cmp	ip, r5
d0052a2c:	f280 80f8 	bge.w	d0052c20 <fillTriangleFlat+0x6cc>
d0052a30:	f10b 0b01 	add.w	fp, fp, #1
d0052a34:	ee3b ba20 	vadd.f32	s22, s22, s1
d0052a38:	ee3d da28 	vadd.f32	s26, s26, s17
d0052a3c:	45d3      	cmp	fp, sl
d0052a3e:	ee7c ca89 	vadd.f32	s25, s25, s18
d0052a42:	ee7a aa8a 	vadd.f32	s21, s21, s20
d0052a46:	ee3c ca0e 	vadd.f32	s24, s24, s28
d0052a4a:	ee7b baae 	vadd.f32	s23, s23, s29
d0052a4e:	f43f aefa 	beq.w	d0052846 <fillTriangleFlat+0x2f2>
d0052a52:	eeb4 baea 	vcmpe.f32	s22, s21
d0052a56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052a5a:	dcc5      	bgt.n	d00529e8 <fillTriangleFlat+0x494>
d0052a5c:	eef0 3a6b 	vmov.f32	s7, s23
d0052a60:	eeb0 4a4c 	vmov.f32	s8, s24
d0052a64:	eef0 7a6a 	vmov.f32	s15, s21
d0052a68:	eef0 6a6c 	vmov.f32	s13, s25
d0052a6c:	eeb0 7a4d 	vmov.f32	s14, s26
d0052a70:	eeb0 1a4b 	vmov.f32	s2, s22
d0052a74:	e7c4      	b.n	d0052a00 <fillTriangleFlat+0x4ac>
d0052a76:	eeb0 1a47 	vmov.f32	s2, s14
d0052a7a:	eef0 1a48 	vmov.f32	s3, s16
d0052a7e:	eeb0 2a64 	vmov.f32	s4, s9
d0052a82:	eeb0 5a46 	vmov.f32	s10, s12
d0052a86:	eeb0 7a63 	vmov.f32	s14, s7
d0052a8a:	eeb0 8a62 	vmov.f32	s16, s5
d0052a8e:	eef0 4a66 	vmov.f32	s9, s13
d0052a92:	eeb0 6a67 	vmov.f32	s12, s15
d0052a96:	eef0 3a41 	vmov.f32	s7, s2
d0052a9a:	eef0 2a61 	vmov.f32	s5, s3
d0052a9e:	eef0 6a42 	vmov.f32	s13, s4
d0052aa2:	eef0 7a45 	vmov.f32	s15, s10
d0052aa6:	e5cf      	b.n	d0052648 <fillTriangleFlat+0xf4>
d0052aa8:	eeb0 1a47 	vmov.f32	s2, s14
d0052aac:	eef0 1a48 	vmov.f32	s3, s16
d0052ab0:	eeb0 2a64 	vmov.f32	s4, s9
d0052ab4:	eeb0 5a46 	vmov.f32	s10, s12
d0052ab8:	eeb0 7a65 	vmov.f32	s14, s11
d0052abc:	eeb0 8a40 	vmov.f32	s16, s0
d0052ac0:	eef0 4a43 	vmov.f32	s9, s6
d0052ac4:	eeb0 6a44 	vmov.f32	s12, s8
d0052ac8:	eef0 5a41 	vmov.f32	s11, s2
d0052acc:	eeb0 0a61 	vmov.f32	s0, s3
d0052ad0:	eeb0 3a42 	vmov.f32	s6, s4
d0052ad4:	eeb0 4a45 	vmov.f32	s8, s10
d0052ad8:	e5b6      	b.n	d0052648 <fillTriangleFlat+0xf4>
d0052ada:	ee76 6ae3 	vsub.f32	s13, s13, s7
d0052ade:	eef4 6ae9 	vcmpe.f32	s13, s19
d0052ae2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ae6:	f340 8156 	ble.w	d0052d96 <fillTriangleFlat+0x842>
d0052aea:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052aee:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0052af2:	ee7a aac3 	vsub.f32	s21, s21, s6
d0052af6:	eec7 baa6 	vdiv.f32	s23, s15, s13
d0052afa:	ee07 5a90 	vmov	s15, r5
d0052afe:	ee71 3ae3 	vsub.f32	s7, s3, s7
d0052b02:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052b06:	ee77 3aa3 	vadd.f32	s7, s15, s7
d0052b0a:	ee62 2aab 	vmul.f32	s5, s5, s23
d0052b0e:	ee6a aaab 	vmul.f32	s21, s21, s23
d0052b12:	eee3 4aa2 	vfma.f32	s9, s7, s5
d0052b16:	eea3 3aaa 	vfma.f32	s6, s7, s21
d0052b1a:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0052b1e:	4b5f      	ldr	r3, [pc, #380]	; (d0052c9c <fillTriangleFlat+0x748>)
d0052b20:	eb05 0885 	add.w	r8, r5, r5, lsl #2
d0052b24:	9a02      	ldr	r2, [sp, #8]
d0052b26:	681b      	ldr	r3, [r3, #0]
d0052b28:	eb02 1949 	add.w	r9, r2, r9, lsl #5
d0052b2c:	eb0b 1888 	add.w	r8, fp, r8, lsl #6
d0052b30:	44a9      	add	r9, r5
d0052b32:	4498      	add	r8, r3
d0052b34:	9b01      	ldr	r3, [sp, #4]
d0052b36:	eb03 0949 	add.w	r9, r3, r9, lsl #1
d0052b3a:	e011      	b.n	d0052b60 <fillTriangleFlat+0x60c>
d0052b3c:	ee07 1a90 	vmov	s15, r1
d0052b40:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052b44:	eb09 0941 	add.w	r9, r9, r1, lsl #1
d0052b48:	440d      	add	r5, r1
d0052b4a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052b4e:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0052b52:	eee7 4aa2 	vfma.f32	s9, s15, s5
d0052b56:	eea7 3aaa 	vfma.f32	s6, s15, s21
d0052b5a:	45ac      	cmp	ip, r5
d0052b5c:	f6ff ae51 	blt.w	d0052802 <fillTriangleFlat+0x2ae>
d0052b60:	ebac 0605 	sub.w	r6, ip, r5
d0052b64:	eef4 4aca 	vcmpe.f32	s9, s20
d0052b68:	1c71      	adds	r1, r6, #1
d0052b6a:	2930      	cmp	r1, #48	; 0x30
d0052b6c:	bfa8      	it	ge
d0052b6e:	2130      	movge	r1, #48	; 0x30
d0052b70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052b74:	d9e2      	bls.n	d0052b3c <fillTriangleFlat+0x5e8>
d0052b76:	2e00      	cmp	r6, #0
d0052b78:	eec3 6a24 	vdiv.f32	s13, s6, s9
d0052b7c:	dd4c      	ble.n	d0052c18 <fillTriangleFlat+0x6c4>
d0052b7e:	1e4b      	subs	r3, r1, #1
d0052b80:	ee07 3a90 	vmov	s15, r3
d0052b84:	eef0 3a64 	vmov.f32	s7, s9
d0052b88:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052b8c:	eee7 3aa2 	vfma.f32	s7, s15, s5
d0052b90:	eef4 3aca 	vcmpe.f32	s7, s20
d0052b94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052b98:	dd3f      	ble.n	d0052c1a <fillTriangleFlat+0x6c6>
d0052b9a:	eeb0 ca43 	vmov.f32	s24, s6
d0052b9e:	eea7 caaa 	vfma.f32	s24, s15, s21
d0052ba2:	eecc ba23 	vdiv.f32	s23, s24, s7
d0052ba6:	ee7b bae6 	vsub.f32	s23, s23, s13
d0052baa:	eecb 3aa7 	vdiv.f32	s7, s23, s15
d0052bae:	f1a9 0002 	sub.w	r0, r9, #2
d0052bb2:	2300      	movs	r3, #0
d0052bb4:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0052bb8:	fec7 7ac1 	vminnm.f32	s15, s15, s2
d0052bbc:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0052bc0:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d0052bc4:	3301      	adds	r3, #1
d0052bc6:	ee77 7aa1 	vadd.f32	s15, s15, s3
d0052bca:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0052bce:	ee76 6aa3 	vadd.f32	s13, s13, s7
d0052bd2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052bd6:	ee17 2a90 	vmov	r2, s15
d0052bda:	b292      	uxth	r2, r2
d0052bdc:	4294      	cmp	r4, r2
d0052bde:	d902      	bls.n	d0052be6 <fillTriangleFlat+0x692>
d0052be0:	8002      	strh	r2, [r0, #0]
d0052be2:	f808 700a 	strb.w	r7, [r8, sl]
d0052be6:	4299      	cmp	r1, r3
d0052be8:	dce4      	bgt.n	d0052bb4 <fillTriangleFlat+0x660>
d0052bea:	2e00      	cmp	r6, #0
d0052bec:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052bf0:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0052bf4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0052bf8:	bfbc      	itt	lt
d0052bfa:	2202      	movlt	r2, #2
d0052bfc:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0052c00:	4491      	add	r9, r2
d0052c02:	4498      	add	r8, r3
d0052c04:	ee07 1a90 	vmov	s15, r1
d0052c08:	440d      	add	r5, r1
d0052c0a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052c0e:	eee7 4aa2 	vfma.f32	s9, s15, s5
d0052c12:	eea7 3aaa 	vfma.f32	s6, s15, s21
d0052c16:	e7a0      	b.n	d0052b5a <fillTriangleFlat+0x606>
d0052c18:	d1f4      	bne.n	d0052c04 <fillTriangleFlat+0x6b0>
d0052c1a:	eef0 3a42 	vmov.f32	s7, s4
d0052c1e:	e7c6      	b.n	d0052bae <fillTriangleFlat+0x65a>
d0052c20:	ee77 7ac1 	vsub.f32	s15, s15, s2
d0052c24:	ed9f 8a1e 	vldr	s16, [pc, #120]	; d0052ca0 <fillTriangleFlat+0x74c>
d0052c28:	eef4 7ac8 	vcmpe.f32	s15, s16
d0052c2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c30:	f340 80ac 	ble.w	d0052d8c <fillTriangleFlat+0x838>
d0052c34:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0052c38:	ee34 4a47 	vsub.f32	s8, s8, s14
d0052c3c:	ee73 3ae6 	vsub.f32	s7, s7, s13
d0052c40:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d0052c44:	ee07 5a90 	vmov	s15, r5
d0052c48:	ee32 1a41 	vsub.f32	s2, s4, s2
d0052c4c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052c50:	ee37 1a81 	vadd.f32	s2, s15, s2
d0052c54:	ee24 4a08 	vmul.f32	s8, s8, s16
d0052c58:	ee63 3a88 	vmul.f32	s7, s7, s16
d0052c5c:	eea1 7a04 	vfma.f32	s14, s2, s8
d0052c60:	eee1 6a23 	vfma.f32	s13, s2, s7
d0052c64:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0052c68:	4b0c      	ldr	r3, [pc, #48]	; (d0052c9c <fillTriangleFlat+0x748>)
d0052c6a:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d0052c6e:	9a06      	ldr	r2, [sp, #24]
d0052c70:	681b      	ldr	r3, [r3, #0]
d0052c72:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d0052c76:	eb0b 1e8e 	add.w	lr, fp, lr, lsl #6
d0052c7a:	44a8      	add	r8, r5
d0052c7c:	449e      	add	lr, r3
d0052c7e:	9b05      	ldr	r3, [sp, #20]
d0052c80:	eb03 0848 	add.w	r8, r3, r8, lsl #1
d0052c84:	e022      	b.n	d0052ccc <fillTriangleFlat+0x778>
d0052c86:	bf00      	nop
d0052c88:	d008d72c 	.word	0xd008d72c
d0052c8c:	d008d728 	.word	0xd008d728
d0052c90:	d008d730 	.word	0xd008d730
d0052c94:	33d6bf95 	.word	0x33d6bf95
d0052c98:	477fff00 	.word	0x477fff00
d0052c9c:	d0127a44 	.word	0xd0127a44
d0052ca0:	38d1b717 	.word	0x38d1b717
d0052ca4:	00000000 	.word	0x00000000
d0052ca8:	ee07 1a90 	vmov	s15, r1
d0052cac:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052cb0:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0052cb4:	440d      	add	r5, r1
d0052cb6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052cba:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0052cbe:	eea7 7a84 	vfma.f32	s14, s15, s8
d0052cc2:	eee7 6aa3 	vfma.f32	s13, s15, s7
d0052cc6:	4565      	cmp	r5, ip
d0052cc8:	f73f aeb2 	bgt.w	d0052a30 <fillTriangleFlat+0x4dc>
d0052ccc:	ebac 0605 	sub.w	r6, ip, r5
d0052cd0:	eeb4 7aed 	vcmpe.f32	s14, s27
d0052cd4:	1c71      	adds	r1, r6, #1
d0052cd6:	2930      	cmp	r1, #48	; 0x30
d0052cd8:	bfa8      	it	ge
d0052cda:	2130      	movge	r1, #48	; 0x30
d0052cdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ce0:	d9e2      	bls.n	d0052ca8 <fillTriangleFlat+0x754>
d0052ce2:	2e00      	cmp	r6, #0
d0052ce4:	ee86 1a87 	vdiv.f32	s2, s13, s14
d0052ce8:	dd4c      	ble.n	d0052d84 <fillTriangleFlat+0x830>
d0052cea:	1e4b      	subs	r3, r1, #1
d0052cec:	ee07 3a90 	vmov	s15, r3
d0052cf0:	eeb0 8a47 	vmov.f32	s16, s14
d0052cf4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052cf8:	eea7 8a84 	vfma.f32	s16, s15, s8
d0052cfc:	eeb4 8aed 	vcmpe.f32	s16, s27
d0052d00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d04:	dd3f      	ble.n	d0052d86 <fillTriangleFlat+0x832>
d0052d06:	eeb0 fa66 	vmov.f32	s30, s13
d0052d0a:	eea7 faa3 	vfma.f32	s30, s15, s7
d0052d0e:	eecf 9a08 	vdiv.f32	s19, s30, s16
d0052d12:	ee79 9ac1 	vsub.f32	s19, s19, s2
d0052d16:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d0052d1a:	f1a8 0002 	sub.w	r0, r8, #2
d0052d1e:	2200      	movs	r2, #0
d0052d20:	fec1 7a22 	vmaxnm.f32	s15, s2, s5
d0052d24:	fec7 7ae1 	vminnm.f32	s15, s15, s3
d0052d28:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0052d2c:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d0052d30:	3201      	adds	r2, #1
d0052d32:	ee77 7a82 	vadd.f32	s15, s15, s4
d0052d36:	ea4f 1983 	mov.w	r9, r3, lsl #6
d0052d3a:	ee31 1a08 	vadd.f32	s2, s2, s16
d0052d3e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052d42:	ee17 3a90 	vmov	r3, s15
d0052d46:	b29b      	uxth	r3, r3
d0052d48:	429c      	cmp	r4, r3
d0052d4a:	d902      	bls.n	d0052d52 <fillTriangleFlat+0x7fe>
d0052d4c:	8003      	strh	r3, [r0, #0]
d0052d4e:	f80e 7009 	strb.w	r7, [lr, r9]
d0052d52:	428a      	cmp	r2, r1
d0052d54:	dbe4      	blt.n	d0052d20 <fillTriangleFlat+0x7cc>
d0052d56:	2e00      	cmp	r6, #0
d0052d58:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052d5c:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0052d60:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0052d64:	bfbc      	itt	lt
d0052d66:	2202      	movlt	r2, #2
d0052d68:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0052d6c:	4490      	add	r8, r2
d0052d6e:	449e      	add	lr, r3
d0052d70:	ee07 1a90 	vmov	s15, r1
d0052d74:	440d      	add	r5, r1
d0052d76:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052d7a:	eea7 7a84 	vfma.f32	s14, s15, s8
d0052d7e:	eee7 6aa3 	vfma.f32	s13, s15, s7
d0052d82:	e7a0      	b.n	d0052cc6 <fillTriangleFlat+0x772>
d0052d84:	d1f4      	bne.n	d0052d70 <fillTriangleFlat+0x81c>
d0052d86:	eeb0 8a62 	vmov.f32	s16, s5
d0052d8a:	e7c6      	b.n	d0052d1a <fillTriangleFlat+0x7c6>
d0052d8c:	eef0 3a62 	vmov.f32	s7, s5
d0052d90:	eeb0 4a62 	vmov.f32	s8, s5
d0052d94:	e766      	b.n	d0052c64 <fillTriangleFlat+0x710>
d0052d96:	eef0 aa42 	vmov.f32	s21, s4
d0052d9a:	eef0 2a42 	vmov.f32	s5, s4
d0052d9e:	e6bc      	b.n	d0052b1a <fillTriangleFlat+0x5c6>
d0052da0:	ed1f 5a40 	vldr	s10, [pc, #-256]	; d0052ca4 <fillTriangleFlat+0x750>
d0052da4:	eef0 fa45 	vmov.f32	s31, s10
d0052da8:	ed8d 5a04 	vstr	s10, [sp, #16]
d0052dac:	e5c4      	b.n	d0052938 <fillTriangleFlat+0x3e4>
d0052dae:	ed5f 7a43 	vldr	s15, [pc, #-268]	; d0052ca4 <fillTriangleFlat+0x750>
d0052db2:	eef0 ea67 	vmov.f32	s29, s15
d0052db6:	eef0 9a67 	vmov.f32	s19, s15
d0052dba:	eeb0 aa67 	vmov.f32	s20, s15
d0052dbe:	e5bb      	b.n	d0052938 <fillTriangleFlat+0x3e4>

d0052dc0 <fillTriangleDitherBayer>:
d0052dc0:	eddf 7ae0 	vldr	s15, [pc, #896]	; d0053144 <fillTriangleDitherBayer+0x384>
d0052dc4:	eef4 0ae7 	vcmpe.f32	s1, s15
d0052dc8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052dcc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052dd0:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0052dd4:	ed2d 8b10 	vpush	{d8-d15}
d0052dd8:	b093      	sub	sp, #76	; 0x4c
d0052dda:	9202      	str	r2, [sp, #8]
d0052ddc:	bf94      	ite	ls
d0052dde:	2201      	movls	r2, #1
d0052de0:	2200      	movhi	r2, #0
d0052de2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052de6:	9303      	str	r3, [sp, #12]
d0052de8:	f8bd 40b8 	ldrh.w	r4, [sp, #184]	; 0xb8
d0052dec:	bf98      	it	ls
d0052dee:	f042 0201 	orrls.w	r2, r2, #1
d0052df2:	f89d 30c4 	ldrb.w	r3, [sp, #196]	; 0xc4
d0052df6:	e9cd 0100 	strd	r0, r1, [sp]
d0052dfa:	f8bd 00bc 	ldrh.w	r0, [sp, #188]	; 0xbc
d0052dfe:	f8bd 10c0 	ldrh.w	r1, [sp, #192]	; 0xc0
d0052e02:	2a00      	cmp	r2, #0
d0052e04:	f040 8198 	bne.w	d0053138 <fillTriangleDitherBayer+0x378>
d0052e08:	eeb4 0a67 	vcmp.f32	s0, s15
d0052e0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e10:	f240 8192 	bls.w	d0053138 <fillTriangleDitherBayer+0x378>
d0052e14:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0052e18:	eddf 7ad0 	vldr	s15, [pc, #832]	; d005315c <fillTriangleDitherBayer+0x39c>
d0052e1c:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d0052e20:	ee07 4a10 	vmov	s14, r4
d0052e24:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d0052e28:	ee86 3a81 	vdiv.f32	s6, s13, s2
d0052e2c:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0052e30:	eec6 1a80 	vdiv.f32	s3, s13, s0
d0052e34:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d0052e38:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d0052e3c:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0052e40:	ee16 2a90 	vmov	r2, s13
d0052e44:	ee06 0a90 	vmov	s13, r0
d0052e48:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0052e4c:	ee06 1a90 	vmov	s13, r1
d0052e50:	1c51      	adds	r1, r2, #1
d0052e52:	ee27 7a21 	vmul.f32	s14, s14, s3
d0052e56:	eef8 6a66 	vcvt.f32.u32	s13, s13
d0052e5a:	2905      	cmp	r1, #5
d0052e5c:	bfa8      	it	ge
d0052e5e:	2105      	movge	r1, #5
d0052e60:	2a04      	cmp	r2, #4
d0052e62:	ee65 5a80 	vmul.f32	s11, s11, s0
d0052e66:	ee26 2a83 	vmul.f32	s4, s13, s6
d0052e6a:	f300 8486 	bgt.w	d005377a <fillTriangleDitherBayer+0x9ba>
d0052e6e:	f003 030f 	and.w	r3, r3, #15
d0052e72:	2a03      	cmp	r2, #3
d0052e74:	f103 0320 	add.w	r3, r3, #32
d0052e78:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0052e7c:	fa5f fa80 	uxtb.w	sl, r0
d0052e80:	f300 847d 	bgt.w	d005377e <fillTriangleDitherBayer+0x9be>
d0052e84:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0052e88:	b2db      	uxtb	r3, r3
d0052e8a:	9304      	str	r3, [sp, #16]
d0052e8c:	eddd 6a01 	vldr	s13, [sp, #4]
d0052e90:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d0052e94:	eddd 6a03 	vldr	s13, [sp, #12]
d0052e98:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d0052e9c:	eddd 6a00 	vldr	s13, [sp]
d0052ea0:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0052ea4:	eddd 6a02 	vldr	s13, [sp, #8]
d0052ea8:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0052eac:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0052eb0:	eddd 6a2c 	vldr	s13, [sp, #176]	; 0xb0
d0052eb4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052eb8:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d0052ebc:	eddd 6a2d 	vldr	s13, [sp, #180]	; 0xb4
d0052ec0:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0052ec4:	f300 814c 	bgt.w	d0053160 <fillTriangleDitherBayer+0x3a0>
d0052ec8:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0052ecc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ed0:	f300 8254 	bgt.w	d005337c <fillTriangleDitherBayer+0x5bc>
d0052ed4:	eef4 3ae6 	vcmpe.f32	s7, s13
d0052ed8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052edc:	dd17      	ble.n	d0052f0e <fillTriangleDitherBayer+0x14e>
d0052ede:	eeb0 8a65 	vmov.f32	s16, s11
d0052ee2:	eef0 0a40 	vmov.f32	s1, s0
d0052ee6:	eef0 2a63 	vmov.f32	s5, s7
d0052eea:	eeb0 4a64 	vmov.f32	s8, s9
d0052eee:	eef0 5a42 	vmov.f32	s11, s4
d0052ef2:	eeb0 0a43 	vmov.f32	s0, s6
d0052ef6:	eef0 3a66 	vmov.f32	s7, s13
d0052efa:	eef0 4a41 	vmov.f32	s9, s2
d0052efe:	eeb0 2a48 	vmov.f32	s4, s16
d0052f02:	eeb0 3a60 	vmov.f32	s6, s1
d0052f06:	eef0 6a62 	vmov.f32	s13, s5
d0052f0a:	eeb0 1a44 	vmov.f32	s2, s8
d0052f0e:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0052f12:	ee75 2a04 	vadd.f32	s5, s10, s8
d0052f16:	ee36 4a84 	vadd.f32	s8, s13, s8
d0052f1a:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0052f1e:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0052f22:	ee12 3a90 	vmov	r3, s5
d0052f26:	ee14 1a10 	vmov	r1, s8
d0052f2a:	428b      	cmp	r3, r1
d0052f2c:	f000 8104 	beq.w	d0053138 <fillTriangleDitherBayer+0x378>
d0052f30:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0052f34:	eddf 2a83 	vldr	s5, [pc, #524]	; d0053144 <fillTriangleDitherBayer+0x384>
d0052f38:	eef4 8ae2 	vcmpe.f32	s17, s5
d0052f3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f40:	f240 80fa 	bls.w	d0053138 <fillTriangleDitherBayer+0x378>
d0052f44:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0052f48:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0052f4c:	ee71 0a46 	vsub.f32	s1, s2, s12
d0052f50:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d0052f54:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0052f58:	ee33 8a61 	vsub.f32	s16, s6, s3
d0052f5c:	ee72 8a47 	vsub.f32	s17, s4, s14
d0052f60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f64:	ee60 0a84 	vmul.f32	s1, s1, s8
d0052f68:	ee28 8a04 	vmul.f32	s16, s16, s8
d0052f6c:	ee68 8a84 	vmul.f32	s17, s17, s8
d0052f70:	f300 8115 	bgt.w	d005319e <fillTriangleDitherBayer+0x3de>
d0052f74:	ee04 2a10 	vmov	s8, r2
d0052f78:	ee76 fae3 	vsub.f32	s31, s13, s7
d0052f7c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052f80:	eef4 fae2 	vcmpe.f32	s31, s5
d0052f84:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0052f88:	eeb0 4a67 	vmov.f32	s8, s15
d0052f8c:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0052f90:	ee14 3a10 	vmov	r3, s8
d0052f94:	f383 0204 	usat	r2, #4, r3
d0052f98:	9201      	str	r2, [sp, #4]
d0052f9a:	9a04      	ldr	r2, [sp, #16]
d0052f9c:	4552      	cmp	r2, sl
d0052f9e:	bf18      	it	ne
d0052fa0:	2b00      	cmpne	r3, #0
d0052fa2:	bfd4      	ite	le
d0052fa4:	2301      	movle	r3, #1
d0052fa6:	2300      	movgt	r3, #0
d0052fa8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052fac:	9300      	str	r3, [sp, #0]
d0052fae:	f340 80c3 	ble.w	d0053138 <fillTriangleDitherBayer+0x378>
d0052fb2:	ed9f ea6a 	vldr	s28, [pc, #424]	; d005315c <fillTriangleDitherBayer+0x39c>
d0052fb6:	eef0 9a4e 	vmov.f32	s19, s28
d0052fba:	eeb0 ba4e 	vmov.f32	s22, s28
d0052fbe:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d0052fc2:	ed9f 4a60 	vldr	s8, [pc, #384]	; d0053144 <fillTriangleDitherBayer+0x384>
d0052fc6:	ee31 1a64 	vsub.f32	s2, s2, s9
d0052fca:	ee33 3a40 	vsub.f32	s6, s6, s0
d0052fce:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d0052fd2:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0052fd6:	ee32 2a65 	vsub.f32	s4, s4, s11
d0052fda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052fde:	ee61 2a27 	vmul.f32	s5, s2, s15
d0052fe2:	ee23 3a27 	vmul.f32	s6, s6, s15
d0052fe6:	ee22 fa27 	vmul.f32	s30, s4, s15
d0052fea:	edcd 2a0b 	vstr	s5, [sp, #44]	; 0x2c
d0052fee:	ed8d 3a0a 	vstr	s6, [sp, #40]	; 0x28
d0052ff2:	f300 810b 	bgt.w	d005320c <fillTriangleDitherBayer+0x44c>
d0052ff6:	4a54      	ldr	r2, [pc, #336]	; (d0053148 <fillTriangleDitherBayer+0x388>)
d0052ff8:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0052ffc:	4b53      	ldr	r3, [pc, #332]	; (d005314c <fillTriangleDitherBayer+0x38c>)
d0052ffe:	6812      	ldr	r2, [r2, #0]
d0053000:	681b      	ldr	r3, [r3, #0]
d0053002:	edcd 7a07 	vstr	s15, [sp, #28]
d0053006:	9206      	str	r2, [sp, #24]
d0053008:	9308      	str	r3, [sp, #32]
d005300a:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d005300e:	9a07      	ldr	r2, [sp, #28]
d0053010:	9908      	ldr	r1, [sp, #32]
d0053012:	4693      	mov	fp, r2
d0053014:	9a06      	ldr	r2, [sp, #24]
d0053016:	ee17 3a90 	vmov	r3, s15
d005301a:	4593      	cmp	fp, r2
d005301c:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0053020:	bfb8      	it	lt
d0053022:	4693      	movlt	fp, r2
d0053024:	428b      	cmp	r3, r1
d0053026:	bfa8      	it	ge
d0053028:	460b      	movge	r3, r1
d005302a:	459b      	cmp	fp, r3
d005302c:	f300 8084 	bgt.w	d0053138 <fillTriangleDitherBayer+0x378>
d0053030:	ee07 ba90 	vmov	s15, fp
d0053034:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0053038:	3301      	adds	r3, #1
d005303a:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d005303e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053042:	4943      	ldr	r1, [pc, #268]	; (d0053150 <fillTriangleDitherBayer+0x390>)
d0053044:	0152      	lsls	r2, r2, #5
d0053046:	eddd aa0b 	vldr	s21, [sp, #44]	; 0x2c
d005304a:	ed9d aa0a 	vldr	s20, [sp, #40]	; 0x28
d005304e:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0053052:	9302      	str	r3, [sp, #8]
d0053054:	680b      	ldr	r3, [r1, #0]
d0053056:	ed9f 1a3b 	vldr	s2, [pc, #236]	; d0053144 <fillTriangleDitherBayer+0x384>
d005305a:	ee37 5ac5 	vsub.f32	s10, s15, s10
d005305e:	ed9f 2a3d 	vldr	s4, [pc, #244]	; d0053154 <fillTriangleDitherBayer+0x394>
d0053062:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0053066:	ed9f 3a3c 	vldr	s6, [pc, #240]	; d0053158 <fillTriangleDitherBayer+0x398>
d005306a:	eddf 3a3c 	vldr	s7, [pc, #240]	; d005315c <fillTriangleDitherBayer+0x39c>
d005306e:	eea0 6a85 	vfma.f32	s12, s1, s10
d0053072:	9208      	str	r2, [sp, #32]
d0053074:	eee8 1a05 	vfma.f32	s3, s16, s10
d0053078:	9307      	str	r3, [sp, #28]
d005307a:	eea8 7a85 	vfma.f32	s14, s17, s10
d005307e:	eeea 4aa7 	vfma.f32	s9, s21, s15
d0053082:	eeaa 0a27 	vfma.f32	s0, s20, s15
d0053086:	eeef 5a27 	vfma.f32	s11, s30, s15
d005308a:	e033      	b.n	d00530f4 <fillTriangleDitherBayer+0x334>
d005308c:	eef0 2a47 	vmov.f32	s5, s14
d0053090:	eef0 9a61 	vmov.f32	s19, s3
d0053094:	eef0 6a46 	vmov.f32	s13, s12
d0053098:	eeb0 9a65 	vmov.f32	s18, s11
d005309c:	eeb0 5a40 	vmov.f32	s10, s0
d00530a0:	eeb0 4a64 	vmov.f32	s8, s9
d00530a4:	fefa 7a66 	vrintp.f32	s15, s13
d00530a8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00530ac:	f240 13df 	movw	r3, #479	; 0x1df
d00530b0:	ee17 6a90 	vmov	r6, s15
d00530b4:	fefa 7a44 	vrintp.f32	s15, s8
d00530b8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00530bc:	3e01      	subs	r6, #1
d00530be:	ee17 0a90 	vmov	r0, s15
d00530c2:	429e      	cmp	r6, r3
d00530c4:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d00530c8:	bfa8      	it	ge
d00530ca:	461e      	movge	r6, r3
d00530cc:	4286      	cmp	r6, r0
d00530ce:	f280 816e 	bge.w	d00533ae <fillTriangleDitherBayer+0x5ee>
d00530d2:	f10b 0b01 	add.w	fp, fp, #1
d00530d6:	9b02      	ldr	r3, [sp, #8]
d00530d8:	ee36 6a20 	vadd.f32	s12, s12, s1
d00530dc:	459b      	cmp	fp, r3
d00530de:	ee71 1a88 	vadd.f32	s3, s3, s16
d00530e2:	ee37 7a28 	vadd.f32	s14, s14, s17
d00530e6:	ee74 4aaa 	vadd.f32	s9, s9, s21
d00530ea:	ee30 0a0a 	vadd.f32	s0, s0, s20
d00530ee:	ee75 5a8f 	vadd.f32	s11, s11, s30
d00530f2:	d021      	beq.n	d0053138 <fillTriangleDitherBayer+0x378>
d00530f4:	eeb4 6ae4 	vcmpe.f32	s12, s9
d00530f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00530fc:	dcc6      	bgt.n	d005308c <fillTriangleDitherBayer+0x2cc>
d00530fe:	eef0 2a65 	vmov.f32	s5, s11
d0053102:	eef0 9a40 	vmov.f32	s19, s0
d0053106:	eef0 6a64 	vmov.f32	s13, s9
d005310a:	eeb0 9a47 	vmov.f32	s18, s14
d005310e:	eeb0 5a61 	vmov.f32	s10, s3
d0053112:	eeb0 4a46 	vmov.f32	s8, s12
d0053116:	e7c5      	b.n	d00530a4 <fillTriangleDitherBayer+0x2e4>
d0053118:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d005311c:	ed9d 5a0f 	vldr	s10, [sp, #60]	; 0x3c
d0053120:	ed9d 6a10 	vldr	s12, [sp, #64]	; 0x40
d0053124:	ed9d fa11 	vldr	s30, [sp, #68]	; 0x44
d0053128:	eddf 7a06 	vldr	s15, [pc, #24]	; d0053144 <fillTriangleDitherBayer+0x384>
d005312c:	eef4 fae7 	vcmpe.f32	s31, s15
d0053130:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053134:	f73f af69 	bgt.w	d005300a <fillTriangleDitherBayer+0x24a>
d0053138:	b013      	add	sp, #76	; 0x4c
d005313a:	ecbd 8b10 	vpop	{d8-d15}
d005313e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053142:	bf00      	nop
d0053144:	38d1b717 	.word	0x38d1b717
d0053148:	d008d728 	.word	0xd008d728
d005314c:	d008d72c 	.word	0xd008d72c
d0053150:	d008d730 	.word	0xd008d730
d0053154:	33d6bf95 	.word	0x33d6bf95
d0053158:	477fff00 	.word	0x477fff00
d005315c:	00000000 	.word	0x00000000
d0053160:	eef4 3ae6 	vcmpe.f32	s7, s13
d0053164:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053168:	f340 80ef 	ble.w	d005334a <fillTriangleDitherBayer+0x58a>
d005316c:	eeb0 8a42 	vmov.f32	s16, s4
d0053170:	eef0 0a43 	vmov.f32	s1, s6
d0053174:	eef0 2a66 	vmov.f32	s5, s13
d0053178:	eeb0 4a41 	vmov.f32	s8, s2
d005317c:	eeb0 2a47 	vmov.f32	s4, s14
d0053180:	eeb0 3a61 	vmov.f32	s6, s3
d0053184:	eef0 6a45 	vmov.f32	s13, s10
d0053188:	eeb0 1a46 	vmov.f32	s2, s12
d005318c:	eeb0 7a48 	vmov.f32	s14, s16
d0053190:	eef0 1a60 	vmov.f32	s3, s1
d0053194:	eeb0 5a62 	vmov.f32	s10, s5
d0053198:	eeb0 6a44 	vmov.f32	s12, s8
d005319c:	e6b7      	b.n	d0052f0e <fillTriangleDitherBayer+0x14e>
d005319e:	ee04 2a10 	vmov	s8, r2
d00531a2:	ee89 aa89 	vdiv.f32	s20, s19, s18
d00531a6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00531aa:	ee74 aac6 	vsub.f32	s21, s9, s12
d00531ae:	ee76 fae3 	vsub.f32	s31, s13, s7
d00531b2:	ee77 7ac4 	vsub.f32	s15, s15, s8
d00531b6:	ee70 9a61 	vsub.f32	s19, s0, s3
d00531ba:	eef4 fae2 	vcmpe.f32	s31, s5
d00531be:	eeb0 4a67 	vmov.f32	s8, s15
d00531c2:	ee35 eac7 	vsub.f32	s28, s11, s14
d00531c6:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d00531ca:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d00531ce:	ee14 3a10 	vmov	r3, s8
d00531d2:	ee2e ea0a 	vmul.f32	s28, s28, s20
d00531d6:	f383 0204 	usat	r2, #4, r3
d00531da:	eeb0 ba67 	vmov.f32	s22, s15
d00531de:	ee69 7a8a 	vmul.f32	s15, s19, s20
d00531e2:	9201      	str	r2, [sp, #4]
d00531e4:	9a04      	ldr	r2, [sp, #16]
d00531e6:	eef0 9a67 	vmov.f32	s19, s15
d00531ea:	4552      	cmp	r2, sl
d00531ec:	bf18      	it	ne
d00531ee:	2b00      	cmpne	r3, #0
d00531f0:	bfd4      	ite	le
d00531f2:	2301      	movle	r3, #1
d00531f4:	2300      	movgt	r3, #0
d00531f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00531fa:	9300      	str	r3, [sp, #0]
d00531fc:	f73f aedf 	bgt.w	d0052fbe <fillTriangleDitherBayer+0x1fe>
d0053200:	ed1f fa2a 	vldr	s30, [pc, #-168]	; d005315c <fillTriangleDitherBayer+0x39c>
d0053204:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d0053208:	ed8d fa0b 	vstr	s30, [sp, #44]	; 0x2c
d005320c:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0053210:	4bdb      	ldr	r3, [pc, #876]	; (d0053580 <fillTriangleDitherBayer+0x7c0>)
d0053212:	4adc      	ldr	r2, [pc, #880]	; (d0053584 <fillTriangleDitherBayer+0x7c4>)
d0053214:	6819      	ldr	r1, [r3, #0]
d0053216:	ee17 3a90 	vmov	r3, s15
d005321a:	edcd 7a07 	vstr	s15, [sp, #28]
d005321e:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0053222:	6812      	ldr	r2, [r2, #0]
d0053224:	3b01      	subs	r3, #1
d0053226:	9108      	str	r1, [sp, #32]
d0053228:	9206      	str	r2, [sp, #24]
d005322a:	ee17 ba90 	vmov	fp, s15
d005322e:	428b      	cmp	r3, r1
d0053230:	bfa8      	it	ge
d0053232:	460b      	movge	r3, r1
d0053234:	4593      	cmp	fp, r2
d0053236:	bfb8      	it	lt
d0053238:	4693      	movlt	fp, r2
d005323a:	455b      	cmp	r3, fp
d005323c:	f6ff af74 	blt.w	d0053128 <fillTriangleDitherBayer+0x368>
d0053240:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053244:	3301      	adds	r3, #1
d0053246:	eeb0 aa46 	vmov.f32	s20, s12
d005324a:	49cf      	ldr	r1, [pc, #828]	; (d0053588 <fillTriangleDitherBayer+0x7c8>)
d005324c:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0053250:	9302      	str	r3, [sp, #8]
d0053252:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0053256:	ee07 ba90 	vmov	s15, fp
d005325a:	680b      	ldr	r3, [r1, #0]
d005325c:	eef0 aa46 	vmov.f32	s21, s12
d0053260:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053264:	ed9f dac9 	vldr	s26, [pc, #804]	; d005358c <fillTriangleDitherBayer+0x7cc>
d0053268:	eef0 ca61 	vmov.f32	s25, s3
d005326c:	930c      	str	r3, [sp, #48]	; 0x30
d005326e:	eeb0 ca47 	vmov.f32	s24, s14
d0053272:	0153      	lsls	r3, r2, #5
d0053274:	ee77 7a84 	vadd.f32	s15, s15, s8
d0053278:	ed9f 3ac5 	vldr	s6, [pc, #788]	; d0053590 <fillTriangleDitherBayer+0x7d0>
d005327c:	eef0 da4b 	vmov.f32	s27, s22
d0053280:	ed9f 2ac4 	vldr	s4, [pc, #784]	; d0053594 <fillTriangleDitherBayer+0x7d4>
d0053284:	eef0 ba61 	vmov.f32	s23, s3
d0053288:	930d      	str	r3, [sp, #52]	; 0x34
d005328a:	eea7 aa8b 	vfma.f32	s20, s15, s22
d005328e:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d0053292:	eeb0 ba47 	vmov.f32	s22, s14
d0053296:	ed8d 5a0f 	vstr	s10, [sp, #60]	; 0x3c
d005329a:	eee0 aaa7 	vfma.f32	s21, s1, s15
d005329e:	ed8d 6a10 	vstr	s12, [sp, #64]	; 0x40
d00532a2:	eee8 ca27 	vfma.f32	s25, s16, s15
d00532a6:	ed8d fa11 	vstr	s30, [sp, #68]	; 0x44
d00532aa:	eea8 caa7 	vfma.f32	s24, s17, s15
d00532ae:	eee7 baa9 	vfma.f32	s23, s15, s19
d00532b2:	eea7 ba8e 	vfma.f32	s22, s15, s28
d00532b6:	eef0 ea69 	vmov.f32	s29, s19
d00532ba:	e034      	b.n	d0053326 <fillTriangleDitherBayer+0x566>
d00532bc:	eef0 2a4c 	vmov.f32	s5, s24
d00532c0:	eeb0 4a6c 	vmov.f32	s8, s25
d00532c4:	eef0 7a6a 	vmov.f32	s15, s21
d00532c8:	eeb0 5a4b 	vmov.f32	s10, s22
d00532cc:	eef0 6a6b 	vmov.f32	s13, s23
d00532d0:	eeb0 6a4a 	vmov.f32	s12, s20
d00532d4:	feba 1a67 	vrintp.f32	s2, s15
d00532d8:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d00532dc:	feba 9a46 	vrintp.f32	s18, s12
d00532e0:	f240 13df 	movw	r3, #479	; 0x1df
d00532e4:	ee11 6a10 	vmov	r6, s2
d00532e8:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d00532ec:	3e01      	subs	r6, #1
d00532ee:	ee11 0a10 	vmov	r0, s2
d00532f2:	429e      	cmp	r6, r3
d00532f4:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d00532f8:	bfa8      	it	ge
d00532fa:	461e      	movge	r6, r3
d00532fc:	4286      	cmp	r6, r0
d00532fe:	f280 8151 	bge.w	d00535a4 <fillTriangleDitherBayer+0x7e4>
d0053302:	f10b 0b01 	add.w	fp, fp, #1
d0053306:	9b02      	ldr	r3, [sp, #8]
d0053308:	ee7a aaa0 	vadd.f32	s21, s21, s1
d005330c:	459b      	cmp	fp, r3
d005330e:	ee7c ca88 	vadd.f32	s25, s25, s16
d0053312:	ee3c ca28 	vadd.f32	s24, s24, s17
d0053316:	ee3a aa2d 	vadd.f32	s20, s20, s27
d005331a:	ee7b baae 	vadd.f32	s23, s23, s29
d005331e:	ee3b ba0e 	vadd.f32	s22, s22, s28
d0053322:	f43f aef9 	beq.w	d0053118 <fillTriangleDitherBayer+0x358>
d0053326:	eef4 aaca 	vcmpe.f32	s21, s20
d005332a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005332e:	dcc5      	bgt.n	d00532bc <fillTriangleDitherBayer+0x4fc>
d0053330:	eef0 2a4b 	vmov.f32	s5, s22
d0053334:	eeb0 4a6b 	vmov.f32	s8, s23
d0053338:	eef0 7a4a 	vmov.f32	s15, s20
d005333c:	eeb0 5a4c 	vmov.f32	s10, s24
d0053340:	eef0 6a6c 	vmov.f32	s13, s25
d0053344:	eeb0 6a6a 	vmov.f32	s12, s21
d0053348:	e7c4      	b.n	d00532d4 <fillTriangleDitherBayer+0x514>
d005334a:	eeb0 8a47 	vmov.f32	s16, s14
d005334e:	eef0 0a61 	vmov.f32	s1, s3
d0053352:	eef0 2a45 	vmov.f32	s5, s10
d0053356:	eeb0 4a46 	vmov.f32	s8, s12
d005335a:	eeb0 7a65 	vmov.f32	s14, s11
d005335e:	eef0 1a40 	vmov.f32	s3, s0
d0053362:	eeb0 5a63 	vmov.f32	s10, s7
d0053366:	eeb0 6a64 	vmov.f32	s12, s9
d005336a:	eef0 5a48 	vmov.f32	s11, s16
d005336e:	eeb0 0a60 	vmov.f32	s0, s1
d0053372:	eef0 3a62 	vmov.f32	s7, s5
d0053376:	eef0 4a44 	vmov.f32	s9, s8
d005337a:	e5ab      	b.n	d0052ed4 <fillTriangleDitherBayer+0x114>
d005337c:	eeb0 8a47 	vmov.f32	s16, s14
d0053380:	eef0 0a61 	vmov.f32	s1, s3
d0053384:	eef0 2a45 	vmov.f32	s5, s10
d0053388:	eeb0 4a46 	vmov.f32	s8, s12
d005338c:	eeb0 7a42 	vmov.f32	s14, s4
d0053390:	eef0 1a43 	vmov.f32	s3, s6
d0053394:	eeb0 5a66 	vmov.f32	s10, s13
d0053398:	eeb0 6a41 	vmov.f32	s12, s2
d005339c:	eeb0 2a48 	vmov.f32	s4, s16
d00533a0:	eeb0 3a60 	vmov.f32	s6, s1
d00533a4:	eef0 6a62 	vmov.f32	s13, s5
d00533a8:	eeb0 1a44 	vmov.f32	s2, s8
d00533ac:	e592      	b.n	d0052ed4 <fillTriangleDitherBayer+0x114>
d00533ae:	ee76 6ac4 	vsub.f32	s13, s13, s8
d00533b2:	eef4 6ac1 	vcmpe.f32	s13, s2
d00533b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533ba:	f340 81e4 	ble.w	d0053786 <fillTriangleDitherBayer+0x9c6>
d00533be:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00533c2:	ee79 9ac5 	vsub.f32	s19, s19, s10
d00533c6:	ee72 2ac9 	vsub.f32	s5, s5, s18
d00533ca:	ee87 baa6 	vdiv.f32	s22, s15, s13
d00533ce:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00533d2:	ee37 4ac4 	vsub.f32	s8, s15, s8
d00533d6:	ee07 0a90 	vmov	s15, r0
d00533da:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00533de:	ee77 7a84 	vadd.f32	s15, s15, s8
d00533e2:	ee69 9a8b 	vmul.f32	s19, s19, s22
d00533e6:	ee22 ba8b 	vmul.f32	s22, s5, s22
d00533ea:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00533ee:	eea7 9a8b 	vfma.f32	s18, s15, s22
d00533f2:	4b69      	ldr	r3, [pc, #420]	; (d0053598 <fillTriangleDitherBayer+0x7d8>)
d00533f4:	eb00 0c80 	add.w	ip, r0, r0, lsl #2
d00533f8:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d00533fc:	9a08      	ldr	r2, [sp, #32]
d00533fe:	6819      	ldr	r1, [r3, #0]
d0053400:	eb0b 138c 	add.w	r3, fp, ip, lsl #6
d0053404:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d0053408:	f00b 0203 	and.w	r2, fp, #3
d005340c:	eb01 0c03 	add.w	ip, r1, r3
d0053410:	4b62      	ldr	r3, [pc, #392]	; (d005359c <fillTriangleDitherBayer+0x7dc>)
d0053412:	4480      	add	r8, r0
d0053414:	f8cd b018 	str.w	fp, [sp, #24]
d0053418:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d005341c:	9a07      	ldr	r2, [sp, #28]
d005341e:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d0053422:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d0053426:	469b      	mov	fp, r3
d0053428:	e010      	b.n	d005344c <fillTriangleDitherBayer+0x68c>
d005342a:	ee07 3a90 	vmov	s15, r3
d005342e:	4418      	add	r0, r3
d0053430:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053434:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053438:	42b0      	cmp	r0, r6
d005343a:	eb08 0843 	add.w	r8, r8, r3, lsl #1
d005343e:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d0053442:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0053446:	eea7 9a8b 	vfma.f32	s18, s15, s22
d005344a:	dc72      	bgt.n	d0053532 <fillTriangleDitherBayer+0x772>
d005344c:	eba6 0900 	sub.w	r9, r6, r0
d0053450:	eeb4 5ac2 	vcmpe.f32	s10, s4
d0053454:	f109 0301 	add.w	r3, r9, #1
d0053458:	2b30      	cmp	r3, #48	; 0x30
d005345a:	bfa8      	it	ge
d005345c:	2330      	movge	r3, #48	; 0x30
d005345e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053462:	d9e2      	bls.n	d005342a <fillTriangleDitherBayer+0x66a>
d0053464:	f1b9 0f00 	cmp.w	r9, #0
d0053468:	eec9 6a05 	vdiv.f32	s13, s18, s10
d005346c:	dd64      	ble.n	d0053538 <fillTriangleDitherBayer+0x778>
d005346e:	1e5a      	subs	r2, r3, #1
d0053470:	ee07 2a90 	vmov	s15, r2
d0053474:	eeb0 4a45 	vmov.f32	s8, s10
d0053478:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005347c:	eea7 4aa9 	vfma.f32	s8, s15, s19
d0053480:	eeb4 4ac2 	vcmpe.f32	s8, s4
d0053484:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053488:	dd57      	ble.n	d005353a <fillTriangleDitherBayer+0x77a>
d005348a:	eeb0 ca49 	vmov.f32	s24, s18
d005348e:	9a00      	ldr	r2, [sp, #0]
d0053490:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0053494:	eecc ba04 	vdiv.f32	s23, s24, s8
d0053498:	ee7b bae6 	vsub.f32	s23, s23, s13
d005349c:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d00534a0:	2a00      	cmp	r2, #0
d00534a2:	d14f      	bne.n	d0053544 <fillTriangleDitherBayer+0x784>
d00534a4:	f1a8 0702 	sub.w	r7, r8, #2
d00534a8:	9603      	str	r6, [sp, #12]
d00534aa:	f8cd 8014 	str.w	r8, [sp, #20]
d00534ae:	9e01      	ldr	r6, [sp, #4]
d00534b0:	f8dd 8010 	ldr.w	r8, [sp, #16]
d00534b4:	fec6 7aa3 	vmaxnm.f32	s15, s13, s7
d00534b8:	fec7 7ac3 	vminnm.f32	s15, s15, s6
d00534bc:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00534c0:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d00534c4:	1885      	adds	r5, r0, r2
d00534c6:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d00534ca:	ee76 6a84 	vadd.f32	s13, s13, s8
d00534ce:	3201      	adds	r2, #1
d00534d0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00534d4:	f005 0503 	and.w	r5, r5, #3
d00534d8:	01a4      	lsls	r4, r4, #6
d00534da:	ee17 1a90 	vmov	r1, s15
d00534de:	b289      	uxth	r1, r1
d00534e0:	458e      	cmp	lr, r1
d00534e2:	d908      	bls.n	d00534f6 <fillTriangleDitherBayer+0x736>
d00534e4:	8039      	strh	r1, [r7, #0]
d00534e6:	f81b 1005 	ldrb.w	r1, [fp, r5]
d00534ea:	428e      	cmp	r6, r1
d00534ec:	bfd4      	ite	le
d00534ee:	4651      	movle	r1, sl
d00534f0:	4641      	movgt	r1, r8
d00534f2:	f80c 1004 	strb.w	r1, [ip, r4]
d00534f6:	4293      	cmp	r3, r2
d00534f8:	dcdc      	bgt.n	d00534b4 <fillTriangleDitherBayer+0x6f4>
d00534fa:	9e03      	ldr	r6, [sp, #12]
d00534fc:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0053500:	f1b9 0f00 	cmp.w	r9, #0
d0053504:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053508:	ea4f 0143 	mov.w	r1, r3, lsl #1
d005350c:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0053510:	bfbc      	itt	lt
d0053512:	2102      	movlt	r1, #2
d0053514:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0053518:	4488      	add	r8, r1
d005351a:	4494      	add	ip, r2
d005351c:	ee07 3a90 	vmov	s15, r3
d0053520:	4418      	add	r0, r3
d0053522:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053526:	42b0      	cmp	r0, r6
d0053528:	eea7 5aa9 	vfma.f32	s10, s15, s19
d005352c:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0053530:	dd8c      	ble.n	d005344c <fillTriangleDitherBayer+0x68c>
d0053532:	f8dd b018 	ldr.w	fp, [sp, #24]
d0053536:	e5cc      	b.n	d00530d2 <fillTriangleDitherBayer+0x312>
d0053538:	d1f0      	bne.n	d005351c <fillTriangleDitherBayer+0x75c>
d005353a:	9a00      	ldr	r2, [sp, #0]
d005353c:	eeb0 4a63 	vmov.f32	s8, s7
d0053540:	2a00      	cmp	r2, #0
d0053542:	d0af      	beq.n	d00534a4 <fillTriangleDitherBayer+0x6e4>
d0053544:	f1a8 0502 	sub.w	r5, r8, #2
d0053548:	2200      	movs	r2, #0
d005354a:	fec6 7aa3 	vmaxnm.f32	s15, s13, s7
d005354e:	fec7 7ac3 	vminnm.f32	s15, s15, s6
d0053552:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053556:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d005355a:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d005355e:	ee76 6a84 	vadd.f32	s13, s13, s8
d0053562:	018c      	lsls	r4, r1, #6
d0053564:	3201      	adds	r2, #1
d0053566:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005356a:	ee17 1a90 	vmov	r1, s15
d005356e:	b289      	uxth	r1, r1
d0053570:	428f      	cmp	r7, r1
d0053572:	d902      	bls.n	d005357a <fillTriangleDitherBayer+0x7ba>
d0053574:	8029      	strh	r1, [r5, #0]
d0053576:	f80c a004 	strb.w	sl, [ip, r4]
d005357a:	4293      	cmp	r3, r2
d005357c:	dce5      	bgt.n	d005354a <fillTriangleDitherBayer+0x78a>
d005357e:	e7bf      	b.n	d0053500 <fillTriangleDitherBayer+0x740>
d0053580:	d008d72c 	.word	0xd008d72c
d0053584:	d008d728 	.word	0xd008d728
d0053588:	d008d730 	.word	0xd008d730
d005358c:	33d6bf95 	.word	0x33d6bf95
d0053590:	00000000 	.word	0x00000000
d0053594:	477fff00 	.word	0x477fff00
d0053598:	d0127a44 	.word	0xd0127a44
d005359c:	d005ad1c 	.word	0xd005ad1c
d00535a0:	38d1b717 	.word	0x38d1b717
d00535a4:	ee77 7ac6 	vsub.f32	s15, s15, s12
d00535a8:	ed1f 1a03 	vldr	s2, [pc, #-12]	; d00535a0 <fillTriangleDitherBayer+0x7e0>
d00535ac:	eef4 7ac1 	vcmpe.f32	s15, s2
d00535b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00535b4:	f340 80ec 	ble.w	d0053790 <fillTriangleDitherBayer+0x9d0>
d00535b8:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00535bc:	ee34 4a66 	vsub.f32	s8, s8, s13
d00535c0:	ee72 2ac5 	vsub.f32	s5, s5, s10
d00535c4:	ee89 1a27 	vdiv.f32	s2, s18, s15
d00535c8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00535cc:	ee37 6ac6 	vsub.f32	s12, s15, s12
d00535d0:	ee07 0a90 	vmov	s15, r0
d00535d4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00535d8:	ee77 7a86 	vadd.f32	s15, s15, s12
d00535dc:	ee24 4a01 	vmul.f32	s8, s8, s2
d00535e0:	ee62 2a81 	vmul.f32	s5, s5, s2
d00535e4:	eee7 6a84 	vfma.f32	s13, s15, s8
d00535e8:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00535ec:	4b6b      	ldr	r3, [pc, #428]	; (d005379c <fillTriangleDitherBayer+0x9dc>)
d00535ee:	eb00 0c80 	add.w	ip, r0, r0, lsl #2
d00535f2:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d00535f6:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d00535f8:	6819      	ldr	r1, [r3, #0]
d00535fa:	eb0b 138c 	add.w	r3, fp, ip, lsl #6
d00535fe:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d0053602:	f00b 0203 	and.w	r2, fp, #3
d0053606:	eb01 0c03 	add.w	ip, r1, r3
d005360a:	4b65      	ldr	r3, [pc, #404]	; (d00537a0 <fillTriangleDitherBayer+0x9e0>)
d005360c:	4480      	add	r8, r0
d005360e:	f8cd b024 	str.w	fp, [sp, #36]	; 0x24
d0053612:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0053616:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d0053618:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d005361c:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d0053620:	469b      	mov	fp, r3
d0053622:	e010      	b.n	d0053646 <fillTriangleDitherBayer+0x886>
d0053624:	ee07 2a90 	vmov	s15, r2
d0053628:	4410      	add	r0, r2
d005362a:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d005362e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053632:	42b0      	cmp	r0, r6
d0053634:	eb08 0842 	add.w	r8, r8, r2, lsl #1
d0053638:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d005363c:	eee7 6a84 	vfma.f32	s13, s15, s8
d0053640:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0053644:	dc72      	bgt.n	d005372c <fillTriangleDitherBayer+0x96c>
d0053646:	eba6 0900 	sub.w	r9, r6, r0
d005364a:	eef4 6acd 	vcmpe.f32	s13, s26
d005364e:	f109 0201 	add.w	r2, r9, #1
d0053652:	2a30      	cmp	r2, #48	; 0x30
d0053654:	bfa8      	it	ge
d0053656:	2230      	movge	r2, #48	; 0x30
d0053658:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005365c:	d9e2      	bls.n	d0053624 <fillTriangleDitherBayer+0x864>
d005365e:	f1b9 0f00 	cmp.w	r9, #0
d0053662:	ee85 1a26 	vdiv.f32	s2, s10, s13
d0053666:	dd64      	ble.n	d0053732 <fillTriangleDitherBayer+0x972>
d0053668:	1e53      	subs	r3, r2, #1
d005366a:	ee07 3a90 	vmov	s15, r3
d005366e:	eeb0 9a66 	vmov.f32	s18, s13
d0053672:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053676:	eea7 9a84 	vfma.f32	s18, s15, s8
d005367a:	eeb4 9acd 	vcmpe.f32	s18, s26
d005367e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053682:	dd57      	ble.n	d0053734 <fillTriangleDitherBayer+0x974>
d0053684:	eeb0 fa45 	vmov.f32	s30, s10
d0053688:	9900      	ldr	r1, [sp, #0]
d005368a:	eea7 faa2 	vfma.f32	s30, s15, s5
d005368e:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0053692:	ee79 9ac1 	vsub.f32	s19, s19, s2
d0053696:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d005369a:	2900      	cmp	r1, #0
d005369c:	d14f      	bne.n	d005373e <fillTriangleDitherBayer+0x97e>
d005369e:	f1a8 0702 	sub.w	r7, r8, #2
d00536a2:	f8cd 800c 	str.w	r8, [sp, #12]
d00536a6:	9605      	str	r6, [sp, #20]
d00536a8:	f8dd 8010 	ldr.w	r8, [sp, #16]
d00536ac:	9e01      	ldr	r6, [sp, #4]
d00536ae:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d00536b2:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d00536b6:	ee77 7a86 	vadd.f32	s15, s15, s12
d00536ba:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d00536be:	1845      	adds	r5, r0, r1
d00536c0:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00536c4:	ee31 1a09 	vadd.f32	s2, s2, s18
d00536c8:	3101      	adds	r1, #1
d00536ca:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00536ce:	f005 0503 	and.w	r5, r5, #3
d00536d2:	01a4      	lsls	r4, r4, #6
d00536d4:	ee17 3a90 	vmov	r3, s15
d00536d8:	b29b      	uxth	r3, r3
d00536da:	459e      	cmp	lr, r3
d00536dc:	d908      	bls.n	d00536f0 <fillTriangleDitherBayer+0x930>
d00536de:	803b      	strh	r3, [r7, #0]
d00536e0:	f81b 3005 	ldrb.w	r3, [fp, r5]
d00536e4:	429e      	cmp	r6, r3
d00536e6:	bfcc      	ite	gt
d00536e8:	4643      	movgt	r3, r8
d00536ea:	4653      	movle	r3, sl
d00536ec:	f80c 3004 	strb.w	r3, [ip, r4]
d00536f0:	428a      	cmp	r2, r1
d00536f2:	dcdc      	bgt.n	d00536ae <fillTriangleDitherBayer+0x8ee>
d00536f4:	f8dd 800c 	ldr.w	r8, [sp, #12]
d00536f8:	9e05      	ldr	r6, [sp, #20]
d00536fa:	f1b9 0f00 	cmp.w	r9, #0
d00536fe:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053702:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0053706:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005370a:	bfbc      	itt	lt
d005370c:	2102      	movlt	r1, #2
d005370e:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053712:	4488      	add	r8, r1
d0053714:	449c      	add	ip, r3
d0053716:	ee07 2a90 	vmov	s15, r2
d005371a:	4410      	add	r0, r2
d005371c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053720:	42b0      	cmp	r0, r6
d0053722:	eee7 6a84 	vfma.f32	s13, s15, s8
d0053726:	eea7 5aa2 	vfma.f32	s10, s15, s5
d005372a:	dd8c      	ble.n	d0053646 <fillTriangleDitherBayer+0x886>
d005372c:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
d0053730:	e5e7      	b.n	d0053302 <fillTriangleDitherBayer+0x542>
d0053732:	d1f0      	bne.n	d0053716 <fillTriangleDitherBayer+0x956>
d0053734:	9900      	ldr	r1, [sp, #0]
d0053736:	eeb0 9a43 	vmov.f32	s18, s6
d005373a:	2900      	cmp	r1, #0
d005373c:	d0af      	beq.n	d005369e <fillTriangleDitherBayer+0x8de>
d005373e:	f1a8 0502 	sub.w	r5, r8, #2
d0053742:	2100      	movs	r1, #0
d0053744:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0053748:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d005374c:	ee77 7a86 	vadd.f32	s15, s15, s12
d0053750:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053754:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d0053758:	ee31 1a09 	vadd.f32	s2, s2, s18
d005375c:	019c      	lsls	r4, r3, #6
d005375e:	3101      	adds	r1, #1
d0053760:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053764:	ee17 3a90 	vmov	r3, s15
d0053768:	b29b      	uxth	r3, r3
d005376a:	429f      	cmp	r7, r3
d005376c:	d902      	bls.n	d0053774 <fillTriangleDitherBayer+0x9b4>
d005376e:	802b      	strh	r3, [r5, #0]
d0053770:	f80c a004 	strb.w	sl, [ip, r4]
d0053774:	428a      	cmp	r2, r1
d0053776:	dce5      	bgt.n	d0053744 <fillTriangleDitherBayer+0x984>
d0053778:	e7bf      	b.n	d00536fa <fillTriangleDitherBayer+0x93a>
d005377a:	f04f 0a10 	mov.w	sl, #16
d005377e:	2310      	movs	r3, #16
d0053780:	9304      	str	r3, [sp, #16]
d0053782:	f7ff bb83 	b.w	d0052e8c <fillTriangleDitherBayer+0xcc>
d0053786:	eeb0 ba63 	vmov.f32	s22, s7
d005378a:	eef0 9a63 	vmov.f32	s19, s7
d005378e:	e630      	b.n	d00533f2 <fillTriangleDitherBayer+0x632>
d0053790:	eef0 2a43 	vmov.f32	s5, s6
d0053794:	eeb0 4a43 	vmov.f32	s8, s6
d0053798:	e728      	b.n	d00535ec <fillTriangleDitherBayer+0x82c>
d005379a:	bf00      	nop
d005379c:	d0127a44 	.word	0xd0127a44
d00537a0:	d005ad1c 	.word	0xd005ad1c

d00537a4 <fillTriangleDitherBayerT>:
d00537a4:	eddf 7ae3 	vldr	s15, [pc, #908]	; d0053b34 <fillTriangleDitherBayerT+0x390>
d00537a8:	eef4 0ae7 	vcmpe.f32	s1, s15
d00537ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00537b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537b4:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00537b8:	ed2d 8b10 	vpush	{d8-d15}
d00537bc:	b093      	sub	sp, #76	; 0x4c
d00537be:	9203      	str	r2, [sp, #12]
d00537c0:	bf94      	ite	ls
d00537c2:	2201      	movls	r2, #1
d00537c4:	2200      	movhi	r2, #0
d00537c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537ca:	9001      	str	r0, [sp, #4]
d00537cc:	9102      	str	r1, [sp, #8]
d00537ce:	bf98      	it	ls
d00537d0:	f042 0201 	orrls.w	r2, r2, #1
d00537d4:	9304      	str	r3, [sp, #16]
d00537d6:	f8bd 40b8 	ldrh.w	r4, [sp, #184]	; 0xb8
d00537da:	f8bd 00bc 	ldrh.w	r0, [sp, #188]	; 0xbc
d00537de:	f8bd 10c0 	ldrh.w	r1, [sp, #192]	; 0xc0
d00537e2:	f89d 30c4 	ldrb.w	r3, [sp, #196]	; 0xc4
d00537e6:	f89d 70c8 	ldrb.w	r7, [sp, #200]	; 0xc8
d00537ea:	2a00      	cmp	r2, #0
d00537ec:	f040 819d 	bne.w	d0053b2a <fillTriangleDitherBayerT+0x386>
d00537f0:	eeb4 0a67 	vcmp.f32	s0, s15
d00537f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537f8:	f240 8197 	bls.w	d0053b2a <fillTriangleDitherBayerT+0x386>
d00537fc:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0053800:	eddf 7ad1 	vldr	s15, [pc, #836]	; d0053b48 <fillTriangleDitherBayerT+0x3a4>
d0053804:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d0053808:	ee07 4a10 	vmov	s14, r4
d005380c:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d0053810:	ee86 9a81 	vdiv.f32	s18, s13, s2
d0053814:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0053818:	eec6 1a80 	vdiv.f32	s3, s13, s0
d005381c:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d0053820:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d0053824:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0053828:	ee16 2a90 	vmov	r2, s13
d005382c:	ee06 0a90 	vmov	s13, r0
d0053830:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0053834:	ee06 1a90 	vmov	s13, r1
d0053838:	1c51      	adds	r1, r2, #1
d005383a:	ee27 7a21 	vmul.f32	s14, s14, s3
d005383e:	eeb8 5a66 	vcvt.f32.u32	s10, s13
d0053842:	2905      	cmp	r1, #5
d0053844:	bfa8      	it	ge
d0053846:	2105      	movge	r1, #5
d0053848:	2a04      	cmp	r2, #4
d005384a:	ee65 5a80 	vmul.f32	s11, s11, s0
d005384e:	ee25 5a09 	vmul.f32	s10, s10, s18
d0053852:	f300 844a 	bgt.w	d00540ea <fillTriangleDitherBayerT+0x946>
d0053856:	f003 030f 	and.w	r3, r3, #15
d005385a:	2a03      	cmp	r2, #3
d005385c:	f103 0320 	add.w	r3, r3, #32
d0053860:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0053864:	b2c0      	uxtb	r0, r0
d0053866:	9005      	str	r0, [sp, #20]
d0053868:	f300 8441 	bgt.w	d00540ee <fillTriangleDitherBayerT+0x94a>
d005386c:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0053870:	b2db      	uxtb	r3, r3
d0053872:	9306      	str	r3, [sp, #24]
d0053874:	eddd 6a02 	vldr	s13, [sp, #8]
d0053878:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d005387c:	eddd 6a04 	vldr	s13, [sp, #16]
d0053880:	eeb8 3ae6 	vcvt.f32.s32	s6, s13
d0053884:	eddd 6a01 	vldr	s13, [sp, #4]
d0053888:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d005388c:	eddd 6a03 	vldr	s13, [sp, #12]
d0053890:	eef4 4ac3 	vcmpe.f32	s9, s6
d0053894:	eeb8 4ae6 	vcvt.f32.s32	s8, s13
d0053898:	eddd 6a2c 	vldr	s13, [sp, #176]	; 0xb0
d005389c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538a0:	eef8 2ae6 	vcvt.f32.s32	s5, s13
d00538a4:	eddd 6a2d 	vldr	s13, [sp, #180]	; 0xb4
d00538a8:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00538ac:	f300 814e 	bgt.w	d0053b4c <fillTriangleDitherBayerT+0x3a8>
d00538b0:	eef4 4ae6 	vcmpe.f32	s9, s13
d00538b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538b8:	f300 825b 	bgt.w	d0053d72 <fillTriangleDitherBayerT+0x5ce>
d00538bc:	eef4 6ac3 	vcmpe.f32	s13, s6
d00538c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538c4:	d517      	bpl.n	d00538f6 <fillTriangleDitherBayerT+0x152>
d00538c6:	eef0 0a65 	vmov.f32	s1, s11
d00538ca:	eeb0 1a40 	vmov.f32	s2, s0
d00538ce:	eeb0 2a43 	vmov.f32	s4, s6
d00538d2:	eef0 3a44 	vmov.f32	s7, s8
d00538d6:	eef0 5a45 	vmov.f32	s11, s10
d00538da:	eeb0 0a49 	vmov.f32	s0, s18
d00538de:	eeb0 3a66 	vmov.f32	s6, s13
d00538e2:	eeb0 4a62 	vmov.f32	s8, s5
d00538e6:	eeb0 5a60 	vmov.f32	s10, s1
d00538ea:	eeb0 9a41 	vmov.f32	s18, s2
d00538ee:	eef0 6a42 	vmov.f32	s13, s4
d00538f2:	eef0 2a63 	vmov.f32	s5, s7
d00538f6:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d00538fa:	ee34 2aa3 	vadd.f32	s4, s9, s7
d00538fe:	ee76 3aa3 	vadd.f32	s7, s13, s7
d0053902:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d0053906:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d005390a:	ee12 3a10 	vmov	r3, s4
d005390e:	ee13 1a90 	vmov	r1, s7
d0053912:	428b      	cmp	r3, r1
d0053914:	f000 8109 	beq.w	d0053b2a <fillTriangleDitherBayerT+0x386>
d0053918:	ee36 1ae4 	vsub.f32	s2, s13, s9
d005391c:	ed9f 2a85 	vldr	s4, [pc, #532]	; d0053b34 <fillTriangleDitherBayerT+0x390>
d0053920:	eeb4 1ac2 	vcmpe.f32	s2, s4
d0053924:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053928:	f240 80ff 	bls.w	d0053b2a <fillTriangleDitherBayerT+0x386>
d005392c:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0053930:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0053934:	ee39 8a61 	vsub.f32	s16, s18, s3
d0053938:	eec9 3a81 	vdiv.f32	s7, s19, s2
d005393c:	ee33 1a64 	vsub.f32	s2, s6, s9
d0053940:	ee75 8a47 	vsub.f32	s17, s10, s14
d0053944:	eeb4 1ac2 	vcmpe.f32	s2, s4
d0053948:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005394c:	ee60 0aa3 	vmul.f32	s1, s1, s7
d0053950:	ee28 8a23 	vmul.f32	s16, s16, s7
d0053954:	ee68 8aa3 	vmul.f32	s17, s17, s7
d0053958:	f300 8117 	bgt.w	d0053b8a <fillTriangleDitherBayerT+0x3e6>
d005395c:	ee03 2a90 	vmov	s7, r2
d0053960:	ee76 fac3 	vsub.f32	s31, s13, s6
d0053964:	9905      	ldr	r1, [sp, #20]
d0053966:	eb07 1707 	add.w	r7, r7, r7, lsl #4
d005396a:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d005396e:	eef4 fac2 	vcmpe.f32	s31, s4
d0053972:	123f      	asrs	r7, r7, #8
d0053974:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0053978:	eef0 3a67 	vmov.f32	s7, s15
d005397c:	eefe 3ace 	vcvt.s32.f32	s7, s7, #4
d0053980:	ee13 3a90 	vmov	r3, s7
d0053984:	f383 0204 	usat	r2, #4, r3
d0053988:	9201      	str	r2, [sp, #4]
d005398a:	9a06      	ldr	r2, [sp, #24]
d005398c:	428a      	cmp	r2, r1
d005398e:	bf18      	it	ne
d0053990:	2b00      	cmpne	r3, #0
d0053992:	bfd4      	ite	le
d0053994:	2301      	movle	r3, #1
d0053996:	2300      	movgt	r3, #0
d0053998:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005399c:	9307      	str	r3, [sp, #28]
d005399e:	f340 80c4 	ble.w	d0053b2a <fillTriangleDitherBayerT+0x386>
d00539a2:	ed9f ea69 	vldr	s28, [pc, #420]	; d0053b48 <fillTriangleDitherBayerT+0x3a4>
d00539a6:	eef0 9a4e 	vmov.f32	s19, s28
d00539aa:	eeb0 ba4e 	vmov.f32	s22, s28
d00539ae:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d00539b2:	eddf 3a60 	vldr	s7, [pc, #384]	; d0053b34 <fillTriangleDitherBayerT+0x390>
d00539b6:	ee72 2ac4 	vsub.f32	s5, s5, s8
d00539ba:	ee39 9a40 	vsub.f32	s18, s18, s0
d00539be:	eec2 7a2f 	vdiv.f32	s15, s4, s31
d00539c2:	eeb4 1ae3 	vcmpe.f32	s2, s7
d00539c6:	ee35 5a65 	vsub.f32	s10, s10, s11
d00539ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539ce:	ee62 2aa7 	vmul.f32	s5, s5, s15
d00539d2:	ee25 5a27 	vmul.f32	s10, s10, s15
d00539d6:	edcd 2a0c 	vstr	s5, [sp, #48]	; 0x30
d00539da:	ee69 2a27 	vmul.f32	s5, s18, s15
d00539de:	edcd 2a0b 	vstr	s5, [sp, #44]	; 0x2c
d00539e2:	f300 810d 	bgt.w	d0053c00 <fillTriangleDitherBayerT+0x45c>
d00539e6:	4a54      	ldr	r2, [pc, #336]	; (d0053b38 <fillTriangleDitherBayerT+0x394>)
d00539e8:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d00539ec:	4b53      	ldr	r3, [pc, #332]	; (d0053b3c <fillTriangleDitherBayerT+0x398>)
d00539ee:	6812      	ldr	r2, [r2, #0]
d00539f0:	681b      	ldr	r3, [r3, #0]
d00539f2:	edcd 7a08 	vstr	s15, [sp, #32]
d00539f6:	9204      	str	r2, [sp, #16]
d00539f8:	9309      	str	r3, [sp, #36]	; 0x24
d00539fa:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00539fe:	9a08      	ldr	r2, [sp, #32]
d0053a00:	9909      	ldr	r1, [sp, #36]	; 0x24
d0053a02:	4692      	mov	sl, r2
d0053a04:	9a04      	ldr	r2, [sp, #16]
d0053a06:	ee17 3a90 	vmov	r3, s15
d0053a0a:	4592      	cmp	sl, r2
d0053a0c:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0053a10:	bfb8      	it	lt
d0053a12:	4692      	movlt	sl, r2
d0053a14:	428b      	cmp	r3, r1
d0053a16:	bfa8      	it	ge
d0053a18:	460b      	movge	r3, r1
d0053a1a:	459a      	cmp	sl, r3
d0053a1c:	f300 8085 	bgt.w	d0053b2a <fillTriangleDitherBayerT+0x386>
d0053a20:	ee07 aa90 	vmov	s15, sl
d0053a24:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0053a28:	3301      	adds	r3, #1
d0053a2a:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0053a2e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053a32:	4943      	ldr	r1, [pc, #268]	; (d0053b40 <fillTriangleDitherBayerT+0x39c>)
d0053a34:	9303      	str	r3, [sp, #12]
d0053a36:	0152      	lsls	r2, r2, #5
d0053a38:	9b07      	ldr	r3, [sp, #28]
d0053a3a:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0053a3e:	eddd ba0c 	vldr	s23, [sp, #48]	; 0x30
d0053a42:	f083 0301 	eor.w	r3, r3, #1
d0053a46:	ed9d ba0b 	vldr	s22, [sp, #44]	; 0x2c
d0053a4a:	eddf 9a3a 	vldr	s19, [pc, #232]	; d0053b34 <fillTriangleDitherBayerT+0x390>
d0053a4e:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0053a52:	9302      	str	r3, [sp, #8]
d0053a54:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0053a58:	680b      	ldr	r3, [r1, #0]
d0053a5a:	ed9f 1a3b 	vldr	s2, [pc, #236]	; d0053b48 <fillTriangleDitherBayerT+0x3a4>
d0053a5e:	eea0 6aa4 	vfma.f32	s12, s1, s9
d0053a62:	ed9f 9a38 	vldr	s18, [pc, #224]	; d0053b44 <fillTriangleDitherBayerT+0x3a0>
d0053a66:	eee8 1a24 	vfma.f32	s3, s16, s9
d0053a6a:	9208      	str	r2, [sp, #32]
d0053a6c:	eea8 7aa4 	vfma.f32	s14, s17, s9
d0053a70:	9307      	str	r3, [sp, #28]
d0053a72:	eeab 4a83 	vfma.f32	s8, s23, s6
d0053a76:	eeab 0a03 	vfma.f32	s0, s22, s6
d0053a7a:	eee5 5a03 	vfma.f32	s11, s10, s6
d0053a7e:	e034      	b.n	d0053aea <fillTriangleDitherBayerT+0x346>
d0053a80:	eeb0 3a47 	vmov.f32	s6, s14
d0053a84:	eeb0 2a61 	vmov.f32	s4, s3
d0053a88:	eef0 6a46 	vmov.f32	s13, s12
d0053a8c:	eef0 2a65 	vmov.f32	s5, s11
d0053a90:	eef0 4a40 	vmov.f32	s9, s0
d0053a94:	eef0 3a44 	vmov.f32	s7, s8
d0053a98:	fefa 7a66 	vrintp.f32	s15, s13
d0053a9c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053aa0:	f240 13df 	movw	r3, #479	; 0x1df
d0053aa4:	ee17 ca90 	vmov	ip, s15
d0053aa8:	fefa 7a63 	vrintp.f32	s15, s7
d0053aac:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053ab0:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0053ab4:	ee17 4a90 	vmov	r4, s15
d0053ab8:	459c      	cmp	ip, r3
d0053aba:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0053abe:	bfa8      	it	ge
d0053ac0:	469c      	movge	ip, r3
d0053ac2:	45a4      	cmp	ip, r4
d0053ac4:	f280 816e 	bge.w	d0053da4 <fillTriangleDitherBayerT+0x600>
d0053ac8:	f10a 0a01 	add.w	sl, sl, #1
d0053acc:	9b03      	ldr	r3, [sp, #12]
d0053ace:	ee36 6a20 	vadd.f32	s12, s12, s1
d0053ad2:	459a      	cmp	sl, r3
d0053ad4:	ee71 1a88 	vadd.f32	s3, s3, s16
d0053ad8:	ee37 7a28 	vadd.f32	s14, s14, s17
d0053adc:	ee34 4a2b 	vadd.f32	s8, s8, s23
d0053ae0:	ee30 0a0b 	vadd.f32	s0, s0, s22
d0053ae4:	ee75 5a85 	vadd.f32	s11, s11, s10
d0053ae8:	d01f      	beq.n	d0053b2a <fillTriangleDitherBayerT+0x386>
d0053aea:	eeb4 6ac4 	vcmpe.f32	s12, s8
d0053aee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053af2:	dcc5      	bgt.n	d0053a80 <fillTriangleDitherBayerT+0x2dc>
d0053af4:	eeb0 3a65 	vmov.f32	s6, s11
d0053af8:	eeb0 2a40 	vmov.f32	s4, s0
d0053afc:	eef0 6a44 	vmov.f32	s13, s8
d0053b00:	eef0 2a47 	vmov.f32	s5, s14
d0053b04:	eef0 4a61 	vmov.f32	s9, s3
d0053b08:	eef0 3a46 	vmov.f32	s7, s12
d0053b0c:	e7c4      	b.n	d0053a98 <fillTriangleDitherBayerT+0x2f4>
d0053b0e:	eddd 6a0f 	vldr	s13, [sp, #60]	; 0x3c
d0053b12:	eddd 4a10 	vldr	s9, [sp, #64]	; 0x40
d0053b16:	ed9d 6a11 	vldr	s12, [sp, #68]	; 0x44
d0053b1a:	eddf 7a06 	vldr	s15, [pc, #24]	; d0053b34 <fillTriangleDitherBayerT+0x390>
d0053b1e:	eef4 fae7 	vcmpe.f32	s31, s15
d0053b22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b26:	f73f af68 	bgt.w	d00539fa <fillTriangleDitherBayerT+0x256>
d0053b2a:	b013      	add	sp, #76	; 0x4c
d0053b2c:	ecbd 8b10 	vpop	{d8-d15}
d0053b30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053b34:	38d1b717 	.word	0x38d1b717
d0053b38:	d008d728 	.word	0xd008d728
d0053b3c:	d008d72c 	.word	0xd008d72c
d0053b40:	d008d730 	.word	0xd008d730
d0053b44:	477fff00 	.word	0x477fff00
d0053b48:	00000000 	.word	0x00000000
d0053b4c:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0053b50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b54:	f340 80f4 	ble.w	d0053d40 <fillTriangleDitherBayerT+0x59c>
d0053b58:	eef0 0a45 	vmov.f32	s1, s10
d0053b5c:	eeb0 1a49 	vmov.f32	s2, s18
d0053b60:	eeb0 2a66 	vmov.f32	s4, s13
d0053b64:	eef0 3a62 	vmov.f32	s7, s5
d0053b68:	eeb0 5a47 	vmov.f32	s10, s14
d0053b6c:	eeb0 9a61 	vmov.f32	s18, s3
d0053b70:	eef0 6a64 	vmov.f32	s13, s9
d0053b74:	eef0 2a46 	vmov.f32	s5, s12
d0053b78:	eeb0 7a60 	vmov.f32	s14, s1
d0053b7c:	eef0 1a41 	vmov.f32	s3, s2
d0053b80:	eef0 4a42 	vmov.f32	s9, s4
d0053b84:	eeb0 6a63 	vmov.f32	s12, s7
d0053b88:	e6b5      	b.n	d00538f6 <fillTriangleDitherBayerT+0x152>
d0053b8a:	ee03 2a90 	vmov	s7, r2
d0053b8e:	ee89 aa81 	vdiv.f32	s20, s19, s2
d0053b92:	9905      	ldr	r1, [sp, #20]
d0053b94:	eb07 1707 	add.w	r7, r7, r7, lsl #4
d0053b98:	123f      	asrs	r7, r7, #8
d0053b9a:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d0053b9e:	ee74 aa46 	vsub.f32	s21, s8, s12
d0053ba2:	ee76 fac3 	vsub.f32	s31, s13, s6
d0053ba6:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0053baa:	ee70 9a61 	vsub.f32	s19, s0, s3
d0053bae:	eef4 fac2 	vcmpe.f32	s31, s4
d0053bb2:	eef0 3a67 	vmov.f32	s7, s15
d0053bb6:	ee35 eac7 	vsub.f32	s28, s11, s14
d0053bba:	eefe 3ace 	vcvt.s32.f32	s7, s7, #4
d0053bbe:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0053bc2:	ee13 3a90 	vmov	r3, s7
d0053bc6:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0053bca:	f383 0204 	usat	r2, #4, r3
d0053bce:	eeb0 ba67 	vmov.f32	s22, s15
d0053bd2:	ee69 7a8a 	vmul.f32	s15, s19, s20
d0053bd6:	9201      	str	r2, [sp, #4]
d0053bd8:	9a06      	ldr	r2, [sp, #24]
d0053bda:	eef0 9a67 	vmov.f32	s19, s15
d0053bde:	428a      	cmp	r2, r1
d0053be0:	bf18      	it	ne
d0053be2:	2b00      	cmpne	r3, #0
d0053be4:	bfd4      	ite	le
d0053be6:	2301      	movle	r3, #1
d0053be8:	2300      	movgt	r3, #0
d0053bea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bee:	9307      	str	r3, [sp, #28]
d0053bf0:	f73f aedd 	bgt.w	d00539ae <fillTriangleDitherBayerT+0x20a>
d0053bf4:	ed1f 5a2c 	vldr	s10, [pc, #-176]	; d0053b48 <fillTriangleDitherBayerT+0x3a4>
d0053bf8:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d0053bfc:	ed8d 5a0c 	vstr	s10, [sp, #48]	; 0x30
d0053c00:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0053c04:	4bcb      	ldr	r3, [pc, #812]	; (d0053f34 <fillTriangleDitherBayerT+0x790>)
d0053c06:	4acc      	ldr	r2, [pc, #816]	; (d0053f38 <fillTriangleDitherBayerT+0x794>)
d0053c08:	6819      	ldr	r1, [r3, #0]
d0053c0a:	ee17 3a90 	vmov	r3, s15
d0053c0e:	edcd 7a08 	vstr	s15, [sp, #32]
d0053c12:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d0053c16:	6812      	ldr	r2, [r2, #0]
d0053c18:	3b01      	subs	r3, #1
d0053c1a:	9109      	str	r1, [sp, #36]	; 0x24
d0053c1c:	9204      	str	r2, [sp, #16]
d0053c1e:	ee17 aa90 	vmov	sl, s15
d0053c22:	428b      	cmp	r3, r1
d0053c24:	bfa8      	it	ge
d0053c26:	460b      	movge	r3, r1
d0053c28:	4592      	cmp	sl, r2
d0053c2a:	bfb8      	it	lt
d0053c2c:	4692      	movlt	sl, r2
d0053c2e:	4553      	cmp	r3, sl
d0053c30:	f6ff af73 	blt.w	d0053b1a <fillTriangleDitherBayerT+0x376>
d0053c34:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053c38:	3301      	adds	r3, #1
d0053c3a:	49c0      	ldr	r1, [pc, #768]	; (d0053f3c <fillTriangleDitherBayerT+0x798>)
d0053c3c:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0053c40:	9303      	str	r3, [sp, #12]
d0053c42:	eeb0 aa46 	vmov.f32	s20, s12
d0053c46:	ee77 3ae4 	vsub.f32	s7, s15, s9
d0053c4a:	ee07 aa90 	vmov	s15, sl
d0053c4e:	680b      	ldr	r3, [r1, #0]
d0053c50:	eef0 aa46 	vmov.f32	s21, s12
d0053c54:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053c58:	eddf 2ab9 	vldr	s5, [pc, #740]	; d0053f40 <fillTriangleDitherBayerT+0x79c>
d0053c5c:	930d      	str	r3, [sp, #52]	; 0x34
d0053c5e:	0153      	lsls	r3, r2, #5
d0053c60:	eef0 ca61 	vmov.f32	s25, s3
d0053c64:	ed9f 2ab7 	vldr	s4, [pc, #732]	; d0053f44 <fillTriangleDitherBayerT+0x7a0>
d0053c68:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0053c6c:	930e      	str	r3, [sp, #56]	; 0x38
d0053c6e:	9b07      	ldr	r3, [sp, #28]
d0053c70:	eeb0 ca47 	vmov.f32	s24, s14
d0053c74:	eef0 da4b 	vmov.f32	s27, s22
d0053c78:	edcd 6a0f 	vstr	s13, [sp, #60]	; 0x3c
d0053c7c:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0053c80:	f083 0301 	eor.w	r3, r3, #1
d0053c84:	eef0 ba61 	vmov.f32	s23, s3
d0053c88:	edcd 4a10 	vstr	s9, [sp, #64]	; 0x40
d0053c8c:	eeb0 ba47 	vmov.f32	s22, s14
d0053c90:	9302      	str	r3, [sp, #8]
d0053c92:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0053c96:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d0053c9a:	eee8 ca27 	vfma.f32	s25, s16, s15
d0053c9e:	eea8 caa7 	vfma.f32	s24, s17, s15
d0053ca2:	eee7 baa9 	vfma.f32	s23, s15, s19
d0053ca6:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0053caa:	eef0 ea69 	vmov.f32	s29, s19
d0053cae:	e035      	b.n	d0053d1c <fillTriangleDitherBayerT+0x578>
d0053cb0:	eef0 3a4c 	vmov.f32	s7, s24
d0053cb4:	eef0 4a6c 	vmov.f32	s9, s25
d0053cb8:	eef0 7a6a 	vmov.f32	s15, s21
d0053cbc:	eeb0 6a4b 	vmov.f32	s12, s22
d0053cc0:	eef0 6a6b 	vmov.f32	s13, s23
d0053cc4:	eeb0 1a4a 	vmov.f32	s2, s20
d0053cc8:	feba 9a67 	vrintp.f32	s18, s15
d0053ccc:	eebd 9ac9 	vcvt.s32.f32	s18, s18
d0053cd0:	fefa 9a41 	vrintp.f32	s19, s2
d0053cd4:	f240 13df 	movw	r3, #479	; 0x1df
d0053cd8:	ee19 ca10 	vmov	ip, s18
d0053cdc:	eebd 9ae9 	vcvt.s32.f32	s18, s19
d0053ce0:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0053ce4:	ee19 4a10 	vmov	r4, s18
d0053ce8:	459c      	cmp	ip, r3
d0053cea:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0053cee:	bfa8      	it	ge
d0053cf0:	469c      	movge	ip, r3
d0053cf2:	45a4      	cmp	ip, r4
d0053cf4:	f280 8130 	bge.w	d0053f58 <fillTriangleDitherBayerT+0x7b4>
d0053cf8:	f10a 0a01 	add.w	sl, sl, #1
d0053cfc:	9b03      	ldr	r3, [sp, #12]
d0053cfe:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0053d02:	459a      	cmp	sl, r3
d0053d04:	ee7c ca88 	vadd.f32	s25, s25, s16
d0053d08:	ee3c ca28 	vadd.f32	s24, s24, s17
d0053d0c:	ee3a aa2d 	vadd.f32	s20, s20, s27
d0053d10:	ee7b baae 	vadd.f32	s23, s23, s29
d0053d14:	ee3b ba0e 	vadd.f32	s22, s22, s28
d0053d18:	f43f aef9 	beq.w	d0053b0e <fillTriangleDitherBayerT+0x36a>
d0053d1c:	eef4 aaca 	vcmpe.f32	s21, s20
d0053d20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d24:	dcc4      	bgt.n	d0053cb0 <fillTriangleDitherBayerT+0x50c>
d0053d26:	eef0 3a4b 	vmov.f32	s7, s22
d0053d2a:	eef0 4a6b 	vmov.f32	s9, s23
d0053d2e:	eef0 7a4a 	vmov.f32	s15, s20
d0053d32:	eeb0 6a4c 	vmov.f32	s12, s24
d0053d36:	eef0 6a6c 	vmov.f32	s13, s25
d0053d3a:	eeb0 1a6a 	vmov.f32	s2, s21
d0053d3e:	e7c3      	b.n	d0053cc8 <fillTriangleDitherBayerT+0x524>
d0053d40:	eef0 0a47 	vmov.f32	s1, s14
d0053d44:	eeb0 1a61 	vmov.f32	s2, s3
d0053d48:	eeb0 2a64 	vmov.f32	s4, s9
d0053d4c:	eef0 3a46 	vmov.f32	s7, s12
d0053d50:	eeb0 7a65 	vmov.f32	s14, s11
d0053d54:	eef0 1a40 	vmov.f32	s3, s0
d0053d58:	eef0 4a43 	vmov.f32	s9, s6
d0053d5c:	eeb0 6a44 	vmov.f32	s12, s8
d0053d60:	eef0 5a60 	vmov.f32	s11, s1
d0053d64:	eeb0 0a41 	vmov.f32	s0, s2
d0053d68:	eeb0 3a42 	vmov.f32	s6, s4
d0053d6c:	eeb0 4a63 	vmov.f32	s8, s7
d0053d70:	e5a4      	b.n	d00538bc <fillTriangleDitherBayerT+0x118>
d0053d72:	eef0 0a47 	vmov.f32	s1, s14
d0053d76:	eeb0 1a61 	vmov.f32	s2, s3
d0053d7a:	eeb0 2a64 	vmov.f32	s4, s9
d0053d7e:	eef0 3a46 	vmov.f32	s7, s12
d0053d82:	eeb0 7a45 	vmov.f32	s14, s10
d0053d86:	eef0 1a49 	vmov.f32	s3, s18
d0053d8a:	eef0 4a66 	vmov.f32	s9, s13
d0053d8e:	eeb0 6a62 	vmov.f32	s12, s5
d0053d92:	eeb0 5a60 	vmov.f32	s10, s1
d0053d96:	eeb0 9a41 	vmov.f32	s18, s2
d0053d9a:	eef0 6a42 	vmov.f32	s13, s4
d0053d9e:	eef0 2a63 	vmov.f32	s5, s7
d0053da2:	e58b      	b.n	d00538bc <fillTriangleDitherBayerT+0x118>
d0053da4:	ee76 6ae3 	vsub.f32	s13, s13, s7
d0053da8:	eef4 6ae9 	vcmpe.f32	s13, s19
d0053dac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053db0:	f340 81a1 	ble.w	d00540f6 <fillTriangleDitherBayerT+0x952>
d0053db4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053db8:	ee32 2a64 	vsub.f32	s4, s4, s9
d0053dbc:	ee33 3a62 	vsub.f32	s6, s6, s5
d0053dc0:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0053dc4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053dc8:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0053dcc:	ee07 4a90 	vmov	s15, r4
d0053dd0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053dd4:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0053dd8:	ee22 2a0a 	vmul.f32	s4, s4, s20
d0053ddc:	ee23 aa0a 	vmul.f32	s20, s6, s20
d0053de0:	eee7 4a82 	vfma.f32	s9, s15, s4
d0053de4:	eee7 2a8a 	vfma.f32	s5, s15, s20
d0053de8:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d0053dec:	4b56      	ldr	r3, [pc, #344]	; (d0053f48 <fillTriangleDitherBayerT+0x7a4>)
d0053dee:	eb04 0884 	add.w	r8, r4, r4, lsl #2
d0053df2:	9a08      	ldr	r2, [sp, #32]
d0053df4:	6819      	ldr	r1, [r3, #0]
d0053df6:	f00a 0b03 	and.w	fp, sl, #3
d0053dfa:	eb0a 1388 	add.w	r3, sl, r8, lsl #6
d0053dfe:	f8cd a010 	str.w	sl, [sp, #16]
d0053e02:	eb02 1e4e 	add.w	lr, r2, lr, lsl #5
d0053e06:	4a51      	ldr	r2, [pc, #324]	; (d0053f4c <fillTriangleDitherBayerT+0x7a8>)
d0053e08:	eb01 0803 	add.w	r8, r1, r3
d0053e0c:	9b07      	ldr	r3, [sp, #28]
d0053e0e:	44a6      	add	lr, r4
d0053e10:	eddf aa4f 	vldr	s21, [pc, #316]	; d0053f50 <fillTriangleDitherBayerT+0x7ac>
d0053e14:	eb02 0b8b 	add.w	fp, r2, fp, lsl #2
d0053e18:	f8dd a018 	ldr.w	sl, [sp, #24]
d0053e1c:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d0053e20:	e010      	b.n	d0053e44 <fillTriangleDitherBayerT+0x6a0>
d0053e22:	ee07 0a90 	vmov	s15, r0
d0053e26:	4404      	add	r4, r0
d0053e28:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053e2c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053e30:	4564      	cmp	r4, ip
d0053e32:	eb0e 0e40 	add.w	lr, lr, r0, lsl #1
d0053e36:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0053e3a:	eee7 4a82 	vfma.f32	s9, s15, s4
d0053e3e:	eee7 2a8a 	vfma.f32	s5, s15, s20
d0053e42:	dc6d      	bgt.n	d0053f20 <fillTriangleDitherBayerT+0x77c>
d0053e44:	ebac 0904 	sub.w	r9, ip, r4
d0053e48:	eef4 4aea 	vcmpe.f32	s9, s21
d0053e4c:	f109 0001 	add.w	r0, r9, #1
d0053e50:	2830      	cmp	r0, #48	; 0x30
d0053e52:	bfa8      	it	ge
d0053e54:	2030      	movge	r0, #48	; 0x30
d0053e56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e5a:	d9e2      	bls.n	d0053e22 <fillTriangleDitherBayerT+0x67e>
d0053e5c:	f1b9 0f00 	cmp.w	r9, #0
d0053e60:	eec2 6aa4 	vdiv.f32	s13, s5, s9
d0053e64:	dd5f      	ble.n	d0053f26 <fillTriangleDitherBayerT+0x782>
d0053e66:	1e43      	subs	r3, r0, #1
d0053e68:	ee07 3a90 	vmov	s15, r3
d0053e6c:	eef0 3a64 	vmov.f32	s7, s9
d0053e70:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053e74:	eee7 3a82 	vfma.f32	s7, s15, s4
d0053e78:	eef4 3aea 	vcmpe.f32	s7, s21
d0053e7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e80:	dd52      	ble.n	d0053f28 <fillTriangleDitherBayerT+0x784>
d0053e82:	eeb0 ca62 	vmov.f32	s24, s5
d0053e86:	eea7 ca8a 	vfma.f32	s24, s15, s20
d0053e8a:	ee8c 3a23 	vdiv.f32	s6, s24, s7
d0053e8e:	ee33 3a66 	vsub.f32	s6, s6, s13
d0053e92:	eec3 3a27 	vdiv.f32	s7, s6, s15
d0053e96:	f1ae 0502 	sub.w	r5, lr, #2
d0053e9a:	2200      	movs	r2, #0
d0053e9c:	eeb6 3a00 	vmov.f32	s6, #96	; 0x3f000000  0.5
d0053ea0:	fec6 7a81 	vmaxnm.f32	s15, s13, s2
d0053ea4:	fec7 7ac9 	vminnm.f32	s15, s15, s18
d0053ea8:	ee77 7a83 	vadd.f32	s15, s15, s6
d0053eac:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0053eb0:	18a3      	adds	r3, r4, r2
d0053eb2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053eb6:	f003 0303 	and.w	r3, r3, #3
d0053eba:	ee17 1a90 	vmov	r1, s15
d0053ebe:	b289      	uxth	r1, r1
d0053ec0:	428e      	cmp	r6, r1
d0053ec2:	d90f      	bls.n	d0053ee4 <fillTriangleDitherBayerT+0x740>
d0053ec4:	f81b 3003 	ldrb.w	r3, [fp, r3]
d0053ec8:	42bb      	cmp	r3, r7
d0053eca:	db0b      	blt.n	d0053ee4 <fillTriangleDitherBayerT+0x740>
d0053ecc:	8029      	strh	r1, [r5, #0]
d0053ece:	4656      	mov	r6, sl
d0053ed0:	9902      	ldr	r1, [sp, #8]
d0053ed2:	b361      	cbz	r1, d0053f2e <fillTriangleDitherBayerT+0x78a>
d0053ed4:	9901      	ldr	r1, [sp, #4]
d0053ed6:	428b      	cmp	r3, r1
d0053ed8:	da29      	bge.n	d0053f2e <fillTriangleDitherBayerT+0x78a>
d0053eda:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053ede:	019b      	lsls	r3, r3, #6
d0053ee0:	f808 6003 	strb.w	r6, [r8, r3]
d0053ee4:	3201      	adds	r2, #1
d0053ee6:	ee76 6aa3 	vadd.f32	s13, s13, s7
d0053eea:	4290      	cmp	r0, r2
d0053eec:	dcd8      	bgt.n	d0053ea0 <fillTriangleDitherBayerT+0x6fc>
d0053eee:	f1b9 0f00 	cmp.w	r9, #0
d0053ef2:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053ef6:	ea4f 0240 	mov.w	r2, r0, lsl #1
d0053efa:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053efe:	bfbc      	itt	lt
d0053f00:	2202      	movlt	r2, #2
d0053f02:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053f06:	4496      	add	lr, r2
d0053f08:	4498      	add	r8, r3
d0053f0a:	ee07 0a90 	vmov	s15, r0
d0053f0e:	4404      	add	r4, r0
d0053f10:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053f14:	4564      	cmp	r4, ip
d0053f16:	eee7 4a82 	vfma.f32	s9, s15, s4
d0053f1a:	eee7 2a8a 	vfma.f32	s5, s15, s20
d0053f1e:	dd91      	ble.n	d0053e44 <fillTriangleDitherBayerT+0x6a0>
d0053f20:	f8dd a010 	ldr.w	sl, [sp, #16]
d0053f24:	e5d0      	b.n	d0053ac8 <fillTriangleDitherBayerT+0x324>
d0053f26:	d1f0      	bne.n	d0053f0a <fillTriangleDitherBayerT+0x766>
d0053f28:	eef0 3a41 	vmov.f32	s7, s2
d0053f2c:	e7b3      	b.n	d0053e96 <fillTriangleDitherBayerT+0x6f2>
d0053f2e:	9e05      	ldr	r6, [sp, #20]
d0053f30:	e7d3      	b.n	d0053eda <fillTriangleDitherBayerT+0x736>
d0053f32:	bf00      	nop
d0053f34:	d008d72c 	.word	0xd008d72c
d0053f38:	d008d728 	.word	0xd008d728
d0053f3c:	d008d730 	.word	0xd008d730
d0053f40:	00000000 	.word	0x00000000
d0053f44:	477fff00 	.word	0x477fff00
d0053f48:	d0127a44 	.word	0xd0127a44
d0053f4c:	d005ad1c 	.word	0xd005ad1c
d0053f50:	33d6bf95 	.word	0x33d6bf95
d0053f54:	38d1b717 	.word	0x38d1b717
d0053f58:	ee77 7ac1 	vsub.f32	s15, s15, s2
d0053f5c:	ed1f 9a03 	vldr	s18, [pc, #-12]	; d0053f54 <fillTriangleDitherBayerT+0x7b0>
d0053f60:	eef4 7ac9 	vcmpe.f32	s15, s18
d0053f64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f68:	f340 80ca 	ble.w	d0054100 <fillTriangleDitherBayerT+0x95c>
d0053f6c:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0053f70:	ee74 4ae6 	vsub.f32	s9, s9, s13
d0053f74:	ee73 3ac6 	vsub.f32	s7, s7, s12
d0053f78:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d0053f7c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053f80:	ee37 1ac1 	vsub.f32	s2, s15, s2
d0053f84:	ee07 4a90 	vmov	s15, r4
d0053f88:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053f8c:	ee77 7a81 	vadd.f32	s15, s15, s2
d0053f90:	ee64 4a89 	vmul.f32	s9, s9, s18
d0053f94:	ee63 3a89 	vmul.f32	s7, s7, s18
d0053f98:	eee7 6aa4 	vfma.f32	s13, s15, s9
d0053f9c:	eea7 6aa3 	vfma.f32	s12, s15, s7
d0053fa0:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d0053fa4:	4b59      	ldr	r3, [pc, #356]	; (d005410c <fillTriangleDitherBayerT+0x968>)
d0053fa6:	eb04 0884 	add.w	r8, r4, r4, lsl #2
d0053faa:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d0053fac:	6819      	ldr	r1, [r3, #0]
d0053fae:	f00a 0b03 	and.w	fp, sl, #3
d0053fb2:	eb0a 1388 	add.w	r3, sl, r8, lsl #6
d0053fb6:	f8cd a028 	str.w	sl, [sp, #40]	; 0x28
d0053fba:	eb02 1e4e 	add.w	lr, r2, lr, lsl #5
d0053fbe:	4a54      	ldr	r2, [pc, #336]	; (d0054110 <fillTriangleDitherBayerT+0x96c>)
d0053fc0:	eb01 0803 	add.w	r8, r1, r3
d0053fc4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d0053fc6:	44a6      	add	lr, r4
d0053fc8:	ed9f 1a52 	vldr	s2, [pc, #328]	; d0054114 <fillTriangleDitherBayerT+0x970>
d0053fcc:	eb02 0b8b 	add.w	fp, r2, fp, lsl #2
d0053fd0:	f8dd a018 	ldr.w	sl, [sp, #24]
d0053fd4:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d0053fd8:	e010      	b.n	d0053ffc <fillTriangleDitherBayerT+0x858>
d0053fda:	ee07 0a90 	vmov	s15, r0
d0053fde:	4404      	add	r4, r0
d0053fe0:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053fe4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053fe8:	4564      	cmp	r4, ip
d0053fea:	eb0e 0e40 	add.w	lr, lr, r0, lsl #1
d0053fee:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0053ff2:	eee7 6aa4 	vfma.f32	s13, s15, s9
d0053ff6:	eea7 6aa3 	vfma.f32	s12, s15, s7
d0053ffa:	dc6d      	bgt.n	d00540d8 <fillTriangleDitherBayerT+0x934>
d0053ffc:	ebac 0904 	sub.w	r9, ip, r4
d0054000:	eef4 6ac1 	vcmpe.f32	s13, s2
d0054004:	f109 0001 	add.w	r0, r9, #1
d0054008:	2830      	cmp	r0, #48	; 0x30
d005400a:	bfa8      	it	ge
d005400c:	2030      	movge	r0, #48	; 0x30
d005400e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054012:	d9e2      	bls.n	d0053fda <fillTriangleDitherBayerT+0x836>
d0054014:	f1b9 0f00 	cmp.w	r9, #0
d0054018:	ee86 9a26 	vdiv.f32	s18, s12, s13
d005401c:	dd5f      	ble.n	d00540de <fillTriangleDitherBayerT+0x93a>
d005401e:	1e43      	subs	r3, r0, #1
d0054020:	ee07 3a90 	vmov	s15, r3
d0054024:	eef0 9a66 	vmov.f32	s19, s13
d0054028:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005402c:	eee7 9aa4 	vfma.f32	s19, s15, s9
d0054030:	eef4 9ac1 	vcmpe.f32	s19, s2
d0054034:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054038:	dd52      	ble.n	d00540e0 <fillTriangleDitherBayerT+0x93c>
d005403a:	eeb0 fa46 	vmov.f32	s30, s12
d005403e:	eea7 faa3 	vfma.f32	s30, s15, s7
d0054042:	ee8f da29 	vdiv.f32	s26, s30, s19
d0054046:	ee3d da49 	vsub.f32	s26, s26, s18
d005404a:	eecd 9a27 	vdiv.f32	s19, s26, s15
d005404e:	f1ae 0502 	sub.w	r5, lr, #2
d0054052:	2100      	movs	r1, #0
d0054054:	eeb6 da00 	vmov.f32	s26, #96	; 0x3f000000  0.5
d0054058:	fec9 7a22 	vmaxnm.f32	s15, s18, s5
d005405c:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0054060:	ee77 7a8d 	vadd.f32	s15, s15, s26
d0054064:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0054068:	1862      	adds	r2, r4, r1
d005406a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005406e:	f002 0203 	and.w	r2, r2, #3
d0054072:	ee17 3a90 	vmov	r3, s15
d0054076:	b29b      	uxth	r3, r3
d0054078:	429e      	cmp	r6, r3
d005407a:	d90f      	bls.n	d005409c <fillTriangleDitherBayerT+0x8f8>
d005407c:	f81b 2002 	ldrb.w	r2, [fp, r2]
d0054080:	42ba      	cmp	r2, r7
d0054082:	db0b      	blt.n	d005409c <fillTriangleDitherBayerT+0x8f8>
d0054084:	802b      	strh	r3, [r5, #0]
d0054086:	4656      	mov	r6, sl
d0054088:	9b02      	ldr	r3, [sp, #8]
d005408a:	b363      	cbz	r3, d00540e6 <fillTriangleDitherBayerT+0x942>
d005408c:	9b01      	ldr	r3, [sp, #4]
d005408e:	429a      	cmp	r2, r3
d0054090:	da29      	bge.n	d00540e6 <fillTriangleDitherBayerT+0x942>
d0054092:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0054096:	019b      	lsls	r3, r3, #6
d0054098:	f808 6003 	strb.w	r6, [r8, r3]
d005409c:	3101      	adds	r1, #1
d005409e:	ee39 9a29 	vadd.f32	s18, s18, s19
d00540a2:	4288      	cmp	r0, r1
d00540a4:	dcd8      	bgt.n	d0054058 <fillTriangleDitherBayerT+0x8b4>
d00540a6:	f1b9 0f00 	cmp.w	r9, #0
d00540aa:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00540ae:	ea4f 0240 	mov.w	r2, r0, lsl #1
d00540b2:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00540b6:	bfbc      	itt	lt
d00540b8:	2202      	movlt	r2, #2
d00540ba:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00540be:	4496      	add	lr, r2
d00540c0:	4498      	add	r8, r3
d00540c2:	ee07 0a90 	vmov	s15, r0
d00540c6:	4404      	add	r4, r0
d00540c8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00540cc:	4564      	cmp	r4, ip
d00540ce:	eee7 6aa4 	vfma.f32	s13, s15, s9
d00540d2:	eea7 6aa3 	vfma.f32	s12, s15, s7
d00540d6:	dd91      	ble.n	d0053ffc <fillTriangleDitherBayerT+0x858>
d00540d8:	f8dd a028 	ldr.w	sl, [sp, #40]	; 0x28
d00540dc:	e60c      	b.n	d0053cf8 <fillTriangleDitherBayerT+0x554>
d00540de:	d1f0      	bne.n	d00540c2 <fillTriangleDitherBayerT+0x91e>
d00540e0:	eef0 9a62 	vmov.f32	s19, s5
d00540e4:	e7b3      	b.n	d005404e <fillTriangleDitherBayerT+0x8aa>
d00540e6:	9e05      	ldr	r6, [sp, #20]
d00540e8:	e7d3      	b.n	d0054092 <fillTriangleDitherBayerT+0x8ee>
d00540ea:	2310      	movs	r3, #16
d00540ec:	9305      	str	r3, [sp, #20]
d00540ee:	2310      	movs	r3, #16
d00540f0:	9306      	str	r3, [sp, #24]
d00540f2:	f7ff bbbf 	b.w	d0053874 <fillTriangleDitherBayerT+0xd0>
d00540f6:	eeb0 aa41 	vmov.f32	s20, s2
d00540fa:	eeb0 2a41 	vmov.f32	s4, s2
d00540fe:	e673      	b.n	d0053de8 <fillTriangleDitherBayerT+0x644>
d0054100:	eef0 3a62 	vmov.f32	s7, s5
d0054104:	eef0 4a62 	vmov.f32	s9, s5
d0054108:	e74a      	b.n	d0053fa0 <fillTriangleDitherBayerT+0x7fc>
d005410a:	bf00      	nop
d005410c:	d0127a44 	.word	0xd0127a44
d0054110:	d005ad1c 	.word	0xd005ad1c
d0054114:	33d6bf95 	.word	0x33d6bf95

d0054118 <fillTriangleDitherBayer2Mode>:
d0054118:	eddf 7ad2 	vldr	s15, [pc, #840]	; d0054464 <fillTriangleDitherBayer2Mode+0x34c>
d005411c:	eef4 0ae7 	vcmpe.f32	s1, s15
d0054120:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0054124:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054128:	eeb4 1ae7 	vcmpe.f32	s2, s15
d005412c:	ed2d 8b10 	vpush	{d8-d15}
d0054130:	b091      	sub	sp, #68	; 0x44
d0054132:	9303      	str	r3, [sp, #12]
d0054134:	bf94      	ite	ls
d0054136:	2301      	movls	r3, #1
d0054138:	2300      	movhi	r3, #0
d005413a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005413e:	9202      	str	r2, [sp, #8]
d0054140:	f89d b0bc 	ldrb.w	fp, [sp, #188]	; 0xbc
d0054144:	bf98      	it	ls
d0054146:	f043 0301 	orrls.w	r3, r3, #1
d005414a:	f8bd 20b8 	ldrh.w	r2, [sp, #184]	; 0xb8
d005414e:	e9cd 0100 	strd	r0, r1, [sp]
d0054152:	f8bd 00b0 	ldrh.w	r0, [sp, #176]	; 0xb0
d0054156:	f8bd 10b4 	ldrh.w	r1, [sp, #180]	; 0xb4
d005415a:	2b00      	cmp	r3, #0
d005415c:	f040 815e 	bne.w	d005441c <fillTriangleDitherBayer2Mode+0x304>
d0054160:	eeb4 0a67 	vcmp.f32	s0, s15
d0054164:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054168:	f240 8158 	bls.w	d005441c <fillTriangleDitherBayer2Mode+0x304>
d005416c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0054170:	ee06 1a90 	vmov	s13, r1
d0054174:	ee07 0a10 	vmov	s14, r0
d0054178:	eef8 5a66 	vcvt.f32.u32	s11, s13
d005417c:	ee87 3a80 	vdiv.f32	s6, s15, s0
d0054180:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0054184:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0054188:	ee07 2a90 	vmov	s15, r2
d005418c:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0054190:	eddd 7a01 	vldr	s15, [sp, #4]
d0054194:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0054198:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d005419c:	eddd 7a03 	vldr	s15, [sp, #12]
d00541a0:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d00541a4:	eddd 7a00 	vldr	s15, [sp]
d00541a8:	ee27 7a03 	vmul.f32	s14, s14, s6
d00541ac:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d00541b0:	eddd 7a02 	vldr	s15, [sp, #8]
d00541b4:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00541b8:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d00541bc:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d00541c0:	ee24 4a02 	vmul.f32	s8, s8, s4
d00541c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541c8:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d00541cc:	eddd 7a2b 	vldr	s15, [sp, #172]	; 0xac
d00541d0:	ee65 5a80 	vmul.f32	s11, s11, s0
d00541d4:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d00541d8:	f300 8125 	bgt.w	d0054426 <fillTriangleDitherBayer2Mode+0x30e>
d00541dc:	eeb4 5ae6 	vcmpe.f32	s10, s13
d00541e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541e4:	f300 8223 	bgt.w	d005462e <fillTriangleDitherBayer2Mode+0x516>
d00541e8:	eef4 3ae6 	vcmpe.f32	s7, s13
d00541ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541f0:	f300 823b 	bgt.w	d005466a <fillTriangleDitherBayer2Mode+0x552>
d00541f4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00541f8:	ee35 1a27 	vadd.f32	s2, s10, s15
d00541fc:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0054200:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0054204:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054208:	ee11 3a10 	vmov	r3, s2
d005420c:	ee17 2a90 	vmov	r2, s15
d0054210:	4293      	cmp	r3, r2
d0054212:	f000 8103 	beq.w	d005441c <fillTriangleDitherBayer2Mode+0x304>
d0054216:	ee76 8ac5 	vsub.f32	s17, s13, s10
d005421a:	ed9f 1a92 	vldr	s2, [pc, #584]	; d0054464 <fillTriangleDitherBayer2Mode+0x34c>
d005421e:	eef4 8ac1 	vcmpe.f32	s17, s2
d0054222:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054226:	f240 80f9 	bls.w	d005441c <fillTriangleDitherBayer2Mode+0x304>
d005422a:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d005422e:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0054232:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0054236:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d005423a:	eeb4 9ac1 	vcmpe.f32	s18, s2
d005423e:	ee32 8a43 	vsub.f32	s16, s4, s6
d0054242:	ee74 8a47 	vsub.f32	s17, s8, s14
d0054246:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005424a:	ee60 0aa7 	vmul.f32	s1, s1, s15
d005424e:	ee28 8a27 	vmul.f32	s16, s16, s15
d0054252:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0054256:	f300 8115 	bgt.w	d0054484 <fillTriangleDitherBayer2Mode+0x36c>
d005425a:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d005425e:	ed9f ba88 	vldr	s22, [pc, #544]	; d0054480 <fillTriangleDitherBayer2Mode+0x368>
d0054262:	eddf 9a86 	vldr	s19, [pc, #536]	; d005447c <fillTriangleDitherBayer2Mode+0x364>
d0054266:	ee76 fae3 	vsub.f32	s31, s13, s7
d005426a:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d005426e:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0054272:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0054276:	eef4 fac1 	vcmpe.f32	s31, s2
d005427a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005427e:	ee17 3a90 	vmov	r3, s15
d0054282:	edcd 7a00 	vstr	s15, [sp]
d0054286:	2b10      	cmp	r3, #16
d0054288:	bfa8      	it	ge
d005428a:	2310      	movge	r3, #16
d005428c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054290:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0054294:	9302      	str	r3, [sp, #8]
d0054296:	f340 80c1 	ble.w	d005441c <fillTriangleDitherBayer2Mode+0x304>
d005429a:	eef0 ea4b 	vmov.f32	s29, s22
d005429e:	eef0 ba4b 	vmov.f32	s23, s22
d00542a2:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d00542a6:	eddf 1a6f 	vldr	s3, [pc, #444]	; d0054464 <fillTriangleDitherBayer2Mode+0x34c>
d00542aa:	ee72 2ae4 	vsub.f32	s5, s5, s9
d00542ae:	ee32 2a40 	vsub.f32	s4, s4, s0
d00542b2:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d00542b6:	eeb4 9ae1 	vcmpe.f32	s18, s3
d00542ba:	ee34 4a65 	vsub.f32	s8, s8, s11
d00542be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542c2:	ee62 2aa7 	vmul.f32	s5, s5, s15
d00542c6:	ee24 fa27 	vmul.f32	s30, s8, s15
d00542ca:	edcd 2a08 	vstr	s5, [sp, #32]
d00542ce:	ee62 2a27 	vmul.f32	s5, s4, s15
d00542d2:	edcd 2a07 	vstr	s5, [sp, #28]
d00542d6:	f300 810d 	bgt.w	d00544f4 <fillTriangleDitherBayer2Mode+0x3dc>
d00542da:	4a63      	ldr	r2, [pc, #396]	; (d0054468 <fillTriangleDitherBayer2Mode+0x350>)
d00542dc:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00542e0:	4b62      	ldr	r3, [pc, #392]	; (d005446c <fillTriangleDitherBayer2Mode+0x354>)
d00542e2:	6812      	ldr	r2, [r2, #0]
d00542e4:	681b      	ldr	r3, [r3, #0]
d00542e6:	edcd 7a04 	vstr	s15, [sp, #16]
d00542ea:	9203      	str	r2, [sp, #12]
d00542ec:	9305      	str	r3, [sp, #20]
d00542ee:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00542f2:	9a04      	ldr	r2, [sp, #16]
d00542f4:	9905      	ldr	r1, [sp, #20]
d00542f6:	4691      	mov	r9, r2
d00542f8:	9a03      	ldr	r2, [sp, #12]
d00542fa:	ee17 3a90 	vmov	r3, s15
d00542fe:	4591      	cmp	r9, r2
d0054300:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0054304:	bfb8      	it	lt
d0054306:	4691      	movlt	r9, r2
d0054308:	428b      	cmp	r3, r1
d005430a:	bfa8      	it	ge
d005430c:	460b      	movge	r3, r1
d005430e:	454b      	cmp	r3, r9
d0054310:	f2c0 8084 	blt.w	d005441c <fillTriangleDitherBayer2Mode+0x304>
d0054314:	ee07 9a90 	vmov	s15, r9
d0054318:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005431c:	3301      	adds	r3, #1
d005431e:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0054322:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054326:	4952      	ldr	r1, [pc, #328]	; (d0054470 <fillTriangleDitherBayer2Mode+0x358>)
d0054328:	0152      	lsls	r2, r2, #5
d005432a:	ed9d ba08 	vldr	s22, [sp, #32]
d005432e:	eddd aa07 	vldr	s21, [sp, #28]
d0054332:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0054336:	9301      	str	r3, [sp, #4]
d0054338:	680b      	ldr	r3, [r1, #0]
d005433a:	ed9f 9a4a 	vldr	s18, [pc, #296]	; d0054464 <fillTriangleDitherBayer2Mode+0x34c>
d005433e:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0054342:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0054474 <fillTriangleDitherBayer2Mode+0x35c>
d0054346:	ee77 3ae3 	vsub.f32	s7, s15, s7
d005434a:	ed9f 4a4d 	vldr	s8, [pc, #308]	; d0054480 <fillTriangleDitherBayer2Mode+0x368>
d005434e:	eddf 1a4a 	vldr	s3, [pc, #296]	; d0054478 <fillTriangleDitherBayer2Mode+0x360>
d0054352:	eea0 6a85 	vfma.f32	s12, s1, s10
d0054356:	9206      	str	r2, [sp, #24]
d0054358:	eea8 3a05 	vfma.f32	s6, s16, s10
d005435c:	9305      	str	r3, [sp, #20]
d005435e:	eea8 7a85 	vfma.f32	s14, s17, s10
d0054362:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0054366:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d005436a:	eeef 5a23 	vfma.f32	s11, s30, s7
d005436e:	e033      	b.n	d00543d8 <fillTriangleDitherBayer2Mode+0x2c0>
d0054370:	eeb0 2a47 	vmov.f32	s4, s14
d0054374:	eef0 9a43 	vmov.f32	s19, s6
d0054378:	eef0 6a46 	vmov.f32	s13, s12
d005437c:	eef0 3a65 	vmov.f32	s7, s11
d0054380:	eeb0 5a40 	vmov.f32	s10, s0
d0054384:	eef0 2a64 	vmov.f32	s5, s9
d0054388:	fefa 7a66 	vrintp.f32	s15, s13
d005438c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054390:	f240 13df 	movw	r3, #479	; 0x1df
d0054394:	ee17 4a90 	vmov	r4, s15
d0054398:	fefa 7a62 	vrintp.f32	s15, s5
d005439c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00543a0:	3c01      	subs	r4, #1
d00543a2:	ee17 1a90 	vmov	r1, s15
d00543a6:	429c      	cmp	r4, r3
d00543a8:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d00543ac:	bfa8      	it	ge
d00543ae:	461c      	movge	r4, r3
d00543b0:	42a1      	cmp	r1, r4
d00543b2:	f340 818c 	ble.w	d00546ce <fillTriangleDitherBayer2Mode+0x5b6>
d00543b6:	f109 0901 	add.w	r9, r9, #1
d00543ba:	9b01      	ldr	r3, [sp, #4]
d00543bc:	ee36 6a20 	vadd.f32	s12, s12, s1
d00543c0:	4599      	cmp	r9, r3
d00543c2:	ee33 3a08 	vadd.f32	s6, s6, s16
d00543c6:	ee37 7a28 	vadd.f32	s14, s14, s17
d00543ca:	ee74 4a8b 	vadd.f32	s9, s9, s22
d00543ce:	ee30 0a2a 	vadd.f32	s0, s0, s21
d00543d2:	ee75 5a8f 	vadd.f32	s11, s11, s30
d00543d6:	d021      	beq.n	d005441c <fillTriangleDitherBayer2Mode+0x304>
d00543d8:	eeb4 6ae4 	vcmpe.f32	s12, s9
d00543dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543e0:	dcc6      	bgt.n	d0054370 <fillTriangleDitherBayer2Mode+0x258>
d00543e2:	eeb0 2a65 	vmov.f32	s4, s11
d00543e6:	eef0 9a40 	vmov.f32	s19, s0
d00543ea:	eef0 6a64 	vmov.f32	s13, s9
d00543ee:	eef0 3a47 	vmov.f32	s7, s14
d00543f2:	eeb0 5a43 	vmov.f32	s10, s6
d00543f6:	eef0 2a46 	vmov.f32	s5, s12
d00543fa:	e7c5      	b.n	d0054388 <fillTriangleDitherBayer2Mode+0x270>
d00543fc:	eddd 6a0c 	vldr	s13, [sp, #48]	; 0x30
d0054400:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d0054404:	ed9d fa0e 	vldr	s30, [sp, #56]	; 0x38
d0054408:	ed9d 0a0f 	vldr	s0, [sp, #60]	; 0x3c
d005440c:	eddf 7a15 	vldr	s15, [pc, #84]	; d0054464 <fillTriangleDitherBayer2Mode+0x34c>
d0054410:	eef4 fae7 	vcmpe.f32	s31, s15
d0054414:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054418:	f73f af69 	bgt.w	d00542ee <fillTriangleDitherBayer2Mode+0x1d6>
d005441c:	b011      	add	sp, #68	; 0x44
d005441e:	ecbd 8b10 	vpop	{d8-d15}
d0054422:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0054426:	eef4 3ae6 	vcmpe.f32	s7, s13
d005442a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005442e:	f340 8135 	ble.w	d005469c <fillTriangleDitherBayer2Mode+0x584>
d0054432:	eeb0 8a44 	vmov.f32	s16, s8
d0054436:	eef0 0a42 	vmov.f32	s1, s4
d005443a:	eeb0 1a66 	vmov.f32	s2, s13
d005443e:	eef0 7a62 	vmov.f32	s15, s5
d0054442:	eeb0 4a47 	vmov.f32	s8, s14
d0054446:	eeb0 2a43 	vmov.f32	s4, s6
d005444a:	eef0 6a45 	vmov.f32	s13, s10
d005444e:	eef0 2a46 	vmov.f32	s5, s12
d0054452:	eeb0 7a48 	vmov.f32	s14, s16
d0054456:	eeb0 3a60 	vmov.f32	s6, s1
d005445a:	eeb0 5a41 	vmov.f32	s10, s2
d005445e:	eeb0 6a67 	vmov.f32	s12, s15
d0054462:	e6c7      	b.n	d00541f4 <fillTriangleDitherBayer2Mode+0xdc>
d0054464:	38d1b717 	.word	0x38d1b717
d0054468:	d008d728 	.word	0xd008d728
d005446c:	d008d72c 	.word	0xd008d72c
d0054470:	d008d730 	.word	0xd008d730
d0054474:	33d6bf95 	.word	0x33d6bf95
d0054478:	477fff00 	.word	0x477fff00
d005447c:	404ccccd 	.word	0x404ccccd
d0054480:	00000000 	.word	0x00000000
d0054484:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0054488:	ed1f ba04 	vldr	s22, [pc, #-16]	; d005447c <fillTriangleDitherBayer2Mode+0x364>
d005448c:	ed5f 9a04 	vldr	s19, [pc, #-16]	; d0054480 <fillTriangleDitherBayer2Mode+0x368>
d0054490:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d0054494:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0054498:	ee74 aac6 	vsub.f32	s21, s9, s12
d005449c:	ee76 fae3 	vsub.f32	s31, s13, s7
d00544a0:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d00544a4:	ee67 7a8b 	vmul.f32	s15, s15, s22
d00544a8:	ee70 1a43 	vsub.f32	s3, s0, s6
d00544ac:	eef4 fac1 	vcmpe.f32	s31, s2
d00544b0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00544b4:	ee35 bac7 	vsub.f32	s22, s11, s14
d00544b8:	ee17 3a90 	vmov	r3, s15
d00544bc:	edcd 7a00 	vstr	s15, [sp]
d00544c0:	2b10      	cmp	r3, #16
d00544c2:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d00544c6:	ee2b ba0a 	vmul.f32	s22, s22, s20
d00544ca:	bfa8      	it	ge
d00544cc:	2310      	movge	r3, #16
d00544ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544d2:	eef0 ba67 	vmov.f32	s23, s15
d00544d6:	ee61 7a8a 	vmul.f32	s15, s3, s20
d00544da:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00544de:	9302      	str	r3, [sp, #8]
d00544e0:	eef0 ea67 	vmov.f32	s29, s15
d00544e4:	f73f aedd 	bgt.w	d00542a2 <fillTriangleDitherBayer2Mode+0x18a>
d00544e8:	eeb0 fa69 	vmov.f32	s30, s19
d00544ec:	edcd 9a07 	vstr	s19, [sp, #28]
d00544f0:	edcd 9a08 	vstr	s19, [sp, #32]
d00544f4:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00544f8:	4bcf      	ldr	r3, [pc, #828]	; (d0054838 <fillTriangleDitherBayer2Mode+0x720>)
d00544fa:	4ad0      	ldr	r2, [pc, #832]	; (d005483c <fillTriangleDitherBayer2Mode+0x724>)
d00544fc:	6819      	ldr	r1, [r3, #0]
d00544fe:	ee17 3a90 	vmov	r3, s15
d0054502:	edcd 7a04 	vstr	s15, [sp, #16]
d0054506:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d005450a:	6812      	ldr	r2, [r2, #0]
d005450c:	3b01      	subs	r3, #1
d005450e:	9105      	str	r1, [sp, #20]
d0054510:	9203      	str	r2, [sp, #12]
d0054512:	ee17 9a90 	vmov	r9, s15
d0054516:	428b      	cmp	r3, r1
d0054518:	bfa8      	it	ge
d005451a:	460b      	movge	r3, r1
d005451c:	4591      	cmp	r9, r2
d005451e:	bfb8      	it	lt
d0054520:	4691      	movlt	r9, r2
d0054522:	454b      	cmp	r3, r9
d0054524:	f6ff af72 	blt.w	d005440c <fillTriangleDitherBayer2Mode+0x2f4>
d0054528:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005452c:	3301      	adds	r3, #1
d005452e:	eeb0 aa46 	vmov.f32	s20, s12
d0054532:	49c3      	ldr	r1, [pc, #780]	; (d0054840 <fillTriangleDitherBayer2Mode+0x728>)
d0054534:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0054538:	9301      	str	r3, [sp, #4]
d005453a:	ee37 4ac5 	vsub.f32	s8, s15, s10
d005453e:	ee07 9a90 	vmov	s15, r9
d0054542:	680b      	ldr	r3, [r1, #0]
d0054544:	eef0 aa46 	vmov.f32	s21, s12
d0054548:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005454c:	eddf dabd 	vldr	s27, [pc, #756]	; d0054844 <fillTriangleDitherBayer2Mode+0x72c>
d0054550:	eeb0 da43 	vmov.f32	s26, s6
d0054554:	930a      	str	r3, [sp, #40]	; 0x28
d0054556:	eef0 ca47 	vmov.f32	s25, s14
d005455a:	0153      	lsls	r3, r2, #5
d005455c:	ee77 7a84 	vadd.f32	s15, s15, s8
d0054560:	eddf 2ab9 	vldr	s5, [pc, #740]	; d0054848 <fillTriangleDitherBayer2Mode+0x730>
d0054564:	eeb0 ea6b 	vmov.f32	s28, s23
d0054568:	ed9f 1ab8 	vldr	s2, [pc, #736]	; d005484c <fillTriangleDitherBayer2Mode+0x734>
d005456c:	eeb0 ca43 	vmov.f32	s24, s6
d0054570:	930b      	str	r3, [sp, #44]	; 0x2c
d0054572:	eea7 aaab 	vfma.f32	s20, s15, s23
d0054576:	edcd 6a0c 	vstr	s13, [sp, #48]	; 0x30
d005457a:	eef0 ba47 	vmov.f32	s23, s14
d005457e:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d0054582:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0054586:	ed8d fa0e 	vstr	s30, [sp, #56]	; 0x38
d005458a:	eea8 da27 	vfma.f32	s26, s16, s15
d005458e:	ed8d 0a0f 	vstr	s0, [sp, #60]	; 0x3c
d0054592:	eee8 caa7 	vfma.f32	s25, s17, s15
d0054596:	eea7 caae 	vfma.f32	s24, s15, s29
d005459a:	eee7 ba8b 	vfma.f32	s23, s15, s22
d005459e:	e034      	b.n	d005460a <fillTriangleDitherBayer2Mode+0x4f2>
d00545a0:	eef0 1a6c 	vmov.f32	s3, s25
d00545a4:	eeb0 2a4d 	vmov.f32	s4, s26
d00545a8:	eef0 7a6a 	vmov.f32	s15, s21
d00545ac:	eeb0 6a6b 	vmov.f32	s12, s23
d00545b0:	eef0 6a4c 	vmov.f32	s13, s24
d00545b4:	eeb0 4a4a 	vmov.f32	s8, s20
d00545b8:	feba 0a67 	vrintp.f32	s0, s15
d00545bc:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d00545c0:	feba 9a44 	vrintp.f32	s18, s8
d00545c4:	f240 13df 	movw	r3, #479	; 0x1df
d00545c8:	ee10 4a10 	vmov	r4, s0
d00545cc:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d00545d0:	3c01      	subs	r4, #1
d00545d2:	ee10 1a10 	vmov	r1, s0
d00545d6:	429c      	cmp	r4, r3
d00545d8:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d00545dc:	bfa8      	it	ge
d00545de:	461c      	movge	r4, r3
d00545e0:	428c      	cmp	r4, r1
d00545e2:	f280 816e 	bge.w	d00548c2 <fillTriangleDitherBayer2Mode+0x7aa>
d00545e6:	f109 0901 	add.w	r9, r9, #1
d00545ea:	9b01      	ldr	r3, [sp, #4]
d00545ec:	ee7a aaa0 	vadd.f32	s21, s21, s1
d00545f0:	4599      	cmp	r9, r3
d00545f2:	ee3d da08 	vadd.f32	s26, s26, s16
d00545f6:	ee7c caa8 	vadd.f32	s25, s25, s17
d00545fa:	ee3a aa0e 	vadd.f32	s20, s20, s28
d00545fe:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0054602:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0054606:	f43f aef9 	beq.w	d00543fc <fillTriangleDitherBayer2Mode+0x2e4>
d005460a:	eef4 aaca 	vcmpe.f32	s21, s20
d005460e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054612:	dcc5      	bgt.n	d00545a0 <fillTriangleDitherBayer2Mode+0x488>
d0054614:	eef0 1a6b 	vmov.f32	s3, s23
d0054618:	eeb0 2a4c 	vmov.f32	s4, s24
d005461c:	eef0 7a4a 	vmov.f32	s15, s20
d0054620:	eeb0 6a6c 	vmov.f32	s12, s25
d0054624:	eef0 6a4d 	vmov.f32	s13, s26
d0054628:	eeb0 4a6a 	vmov.f32	s8, s21
d005462c:	e7c4      	b.n	d00545b8 <fillTriangleDitherBayer2Mode+0x4a0>
d005462e:	eeb0 1a45 	vmov.f32	s2, s10
d0054632:	eeb0 5a66 	vmov.f32	s10, s13
d0054636:	eeb0 8a47 	vmov.f32	s16, s14
d005463a:	eef0 6a41 	vmov.f32	s13, s2
d005463e:	eef0 0a43 	vmov.f32	s1, s6
d0054642:	eef0 7a46 	vmov.f32	s15, s12
d0054646:	eef4 3ae6 	vcmpe.f32	s7, s13
d005464a:	eeb0 7a44 	vmov.f32	s14, s8
d005464e:	eeb0 3a42 	vmov.f32	s6, s4
d0054652:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054656:	eeb0 6a62 	vmov.f32	s12, s5
d005465a:	eeb0 4a48 	vmov.f32	s8, s16
d005465e:	eeb0 2a60 	vmov.f32	s4, s1
d0054662:	eef0 2a67 	vmov.f32	s5, s15
d0054666:	f77f adc5 	ble.w	d00541f4 <fillTriangleDitherBayer2Mode+0xdc>
d005466a:	eeb0 8a65 	vmov.f32	s16, s11
d005466e:	eef0 0a40 	vmov.f32	s1, s0
d0054672:	eeb0 1a63 	vmov.f32	s2, s7
d0054676:	eef0 7a64 	vmov.f32	s15, s9
d005467a:	eef0 5a44 	vmov.f32	s11, s8
d005467e:	eeb0 0a42 	vmov.f32	s0, s4
d0054682:	eef0 3a66 	vmov.f32	s7, s13
d0054686:	eef0 4a62 	vmov.f32	s9, s5
d005468a:	eeb0 4a48 	vmov.f32	s8, s16
d005468e:	eeb0 2a60 	vmov.f32	s4, s1
d0054692:	eef0 6a41 	vmov.f32	s13, s2
d0054696:	eef0 2a67 	vmov.f32	s5, s15
d005469a:	e5ab      	b.n	d00541f4 <fillTriangleDitherBayer2Mode+0xdc>
d005469c:	eeb0 8a47 	vmov.f32	s16, s14
d00546a0:	eef0 0a43 	vmov.f32	s1, s6
d00546a4:	eeb0 1a45 	vmov.f32	s2, s10
d00546a8:	eef0 7a46 	vmov.f32	s15, s12
d00546ac:	eeb0 7a65 	vmov.f32	s14, s11
d00546b0:	eeb0 3a40 	vmov.f32	s6, s0
d00546b4:	eeb0 5a63 	vmov.f32	s10, s7
d00546b8:	eeb0 6a64 	vmov.f32	s12, s9
d00546bc:	eef0 5a48 	vmov.f32	s11, s16
d00546c0:	eeb0 0a60 	vmov.f32	s0, s1
d00546c4:	eef0 3a41 	vmov.f32	s7, s2
d00546c8:	eef0 4a67 	vmov.f32	s9, s15
d00546cc:	e58c      	b.n	d00541e8 <fillTriangleDitherBayer2Mode+0xd0>
d00546ce:	ee76 6ae2 	vsub.f32	s13, s13, s5
d00546d2:	eef4 6ac9 	vcmpe.f32	s13, s18
d00546d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546da:	f340 8216 	ble.w	d0054b0a <fillTriangleDitherBayer2Mode+0x9f2>
d00546de:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00546e2:	ee79 9ac5 	vsub.f32	s19, s19, s10
d00546e6:	ee32 2a63 	vsub.f32	s4, s4, s7
d00546ea:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d00546ee:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00546f2:	ee77 2ae2 	vsub.f32	s5, s15, s5
d00546f6:	ee07 1a90 	vmov	s15, r1
d00546fa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00546fe:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0054702:	ee69 9a8a 	vmul.f32	s19, s19, s20
d0054706:	ee22 aa0a 	vmul.f32	s20, s4, s20
d005470a:	eea7 5aa9 	vfma.f32	s10, s15, s19
d005470e:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0054712:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d0054716:	4b4e      	ldr	r3, [pc, #312]	; (d0054850 <fillTriangleDitherBayer2Mode+0x738>)
d0054718:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d005471c:	9806      	ldr	r0, [sp, #24]
d005471e:	f009 0203 	and.w	r2, r9, #3
d0054722:	681d      	ldr	r5, [r3, #0]
d0054724:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0054728:	484a      	ldr	r0, [pc, #296]	; (d0054854 <fillTriangleDitherBayer2Mode+0x73c>)
d005472a:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d005472e:	f8cd 900c 	str.w	r9, [sp, #12]
d0054732:	448c      	add	ip, r1
d0054734:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0054738:	18ef      	adds	r7, r5, r3
d005473a:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d005473e:	9a05      	ldr	r2, [sp, #20]
d0054740:	4699      	mov	r9, r3
d0054742:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d0054746:	e010      	b.n	d005476a <fillTriangleDitherBayer2Mode+0x652>
d0054748:	ee07 3a90 	vmov	s15, r3
d005474c:	4419      	add	r1, r3
d005474e:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0054752:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054756:	428c      	cmp	r4, r1
d0054758:	eb0c 0c43 	add.w	ip, ip, r3, lsl #1
d005475c:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0054760:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0054764:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0054768:	db62      	blt.n	d0054830 <fillTriangleDitherBayer2Mode+0x718>
d005476a:	eba4 0e01 	sub.w	lr, r4, r1
d005476e:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0054772:	f10e 0301 	add.w	r3, lr, #1
d0054776:	2b30      	cmp	r3, #48	; 0x30
d0054778:	bfa8      	it	ge
d005477a:	2330      	movge	r3, #48	; 0x30
d005477c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054780:	d9e2      	bls.n	d0054748 <fillTriangleDitherBayer2Mode+0x630>
d0054782:	f1be 0f00 	cmp.w	lr, #0
d0054786:	eec3 7a85 	vdiv.f32	s15, s7, s10
d005478a:	dd67      	ble.n	d005485c <fillTriangleDitherBayer2Mode+0x744>
d005478c:	1e5a      	subs	r2, r3, #1
d005478e:	ee06 2a90 	vmov	s13, r2
d0054792:	eef0 2a45 	vmov.f32	s5, s10
d0054796:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d005479a:	eee6 2aa9 	vfma.f32	s5, s13, s19
d005479e:	eef4 2ac1 	vcmpe.f32	s5, s2
d00547a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547a6:	dd5a      	ble.n	d005485e <fillTriangleDitherBayer2Mode+0x746>
d00547a8:	eeb0 ca63 	vmov.f32	s24, s7
d00547ac:	9a00      	ldr	r2, [sp, #0]
d00547ae:	2a0f      	cmp	r2, #15
d00547b0:	eea6 ca8a 	vfma.f32	s24, s13, s20
d00547b4:	eecc ba22 	vdiv.f32	s23, s24, s5
d00547b8:	ee7b bae7 	vsub.f32	s23, s23, s15
d00547bc:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d00547c0:	dd52      	ble.n	d0054868 <fillTriangleDitherBayer2Mode+0x750>
d00547c2:	f1ac 0602 	sub.w	r6, ip, #2
d00547c6:	2200      	movs	r2, #0
d00547c8:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00547cc:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00547d0:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00547d4:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d00547d8:	3201      	adds	r2, #1
d00547da:	ee76 6a82 	vadd.f32	s13, s13, s4
d00547de:	0185      	lsls	r5, r0, #6
d00547e0:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00547e4:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00547e8:	ee16 0a90 	vmov	r0, s13
d00547ec:	b280      	uxth	r0, r0
d00547ee:	4580      	cmp	r8, r0
d00547f0:	d903      	bls.n	d00547fa <fillTriangleDitherBayer2Mode+0x6e2>
d00547f2:	8030      	strh	r0, [r6, #0]
d00547f4:	f04f 0010 	mov.w	r0, #16
d00547f8:	5578      	strb	r0, [r7, r5]
d00547fa:	4293      	cmp	r3, r2
d00547fc:	dce4      	bgt.n	d00547c8 <fillTriangleDitherBayer2Mode+0x6b0>
d00547fe:	f1be 0f00 	cmp.w	lr, #0
d0054802:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0054806:	ea4f 0043 	mov.w	r0, r3, lsl #1
d005480a:	ea4f 1282 	mov.w	r2, r2, lsl #6
d005480e:	bfbc      	itt	lt
d0054810:	2002      	movlt	r0, #2
d0054812:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0054816:	4484      	add	ip, r0
d0054818:	4417      	add	r7, r2
d005481a:	ee07 3a90 	vmov	s15, r3
d005481e:	4419      	add	r1, r3
d0054820:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054824:	428c      	cmp	r4, r1
d0054826:	eea7 5aa9 	vfma.f32	s10, s15, s19
d005482a:	eee7 3a8a 	vfma.f32	s7, s15, s20
d005482e:	da9c      	bge.n	d005476a <fillTriangleDitherBayer2Mode+0x652>
d0054830:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0054834:	e5bf      	b.n	d00543b6 <fillTriangleDitherBayer2Mode+0x29e>
d0054836:	bf00      	nop
d0054838:	d008d72c 	.word	0xd008d72c
d005483c:	d008d728 	.word	0xd008d728
d0054840:	d008d730 	.word	0xd008d730
d0054844:	33d6bf95 	.word	0x33d6bf95
d0054848:	00000000 	.word	0x00000000
d005484c:	477fff00 	.word	0x477fff00
d0054850:	d0127a44 	.word	0xd0127a44
d0054854:	d005ad1c 	.word	0xd005ad1c
d0054858:	38d1b717 	.word	0x38d1b717
d005485c:	d1dd      	bne.n	d005481a <fillTriangleDitherBayer2Mode+0x702>
d005485e:	9a00      	ldr	r2, [sp, #0]
d0054860:	eef0 2a44 	vmov.f32	s5, s8
d0054864:	2a0f      	cmp	r2, #15
d0054866:	dcac      	bgt.n	d00547c2 <fillTriangleDitherBayer2Mode+0x6aa>
d0054868:	2a00      	cmp	r2, #0
d005486a:	f340 8130 	ble.w	d0054ace <fillTriangleDitherBayer2Mode+0x9b6>
d005486e:	9404      	str	r4, [sp, #16]
d0054870:	f1ac 0802 	sub.w	r8, ip, #2
d0054874:	2200      	movs	r2, #0
d0054876:	9c02      	ldr	r4, [sp, #8]
d0054878:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d005487c:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0054880:	ee76 6a82 	vadd.f32	s13, s13, s4
d0054884:	f838 af02 	ldrh.w	sl, [r8, #2]!
d0054888:	188e      	adds	r6, r1, r2
d005488a:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d005488e:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0054892:	3201      	adds	r2, #1
d0054894:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0054898:	f006 0603 	and.w	r6, r6, #3
d005489c:	01ad      	lsls	r5, r5, #6
d005489e:	ee16 0a90 	vmov	r0, s13
d00548a2:	b280      	uxth	r0, r0
d00548a4:	4582      	cmp	sl, r0
d00548a6:	d908      	bls.n	d00548ba <fillTriangleDitherBayer2Mode+0x7a2>
d00548a8:	f8a8 0000 	strh.w	r0, [r8]
d00548ac:	f819 0006 	ldrb.w	r0, [r9, r6]
d00548b0:	42a0      	cmp	r0, r4
d00548b2:	bfac      	ite	ge
d00548b4:	4658      	movge	r0, fp
d00548b6:	2010      	movlt	r0, #16
d00548b8:	5578      	strb	r0, [r7, r5]
d00548ba:	4293      	cmp	r3, r2
d00548bc:	dcdc      	bgt.n	d0054878 <fillTriangleDitherBayer2Mode+0x760>
d00548be:	9c04      	ldr	r4, [sp, #16]
d00548c0:	e79d      	b.n	d00547fe <fillTriangleDitherBayer2Mode+0x6e6>
d00548c2:	ee77 7ac4 	vsub.f32	s15, s15, s8
d00548c6:	ed1f 0a1c 	vldr	s0, [pc, #-112]	; d0054858 <fillTriangleDitherBayer2Mode+0x740>
d00548ca:	eef4 7ac0 	vcmpe.f32	s15, s0
d00548ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00548d2:	f340 811f 	ble.w	d0054b14 <fillTriangleDitherBayer2Mode+0x9fc>
d00548d6:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00548da:	ee32 2a66 	vsub.f32	s4, s4, s13
d00548de:	ee71 1ac6 	vsub.f32	s3, s3, s12
d00548e2:	ee89 0a27 	vdiv.f32	s0, s18, s15
d00548e6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00548ea:	ee37 4ac4 	vsub.f32	s8, s15, s8
d00548ee:	ee07 1a90 	vmov	s15, r1
d00548f2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00548f6:	ee77 7a84 	vadd.f32	s15, s15, s8
d00548fa:	ee22 2a00 	vmul.f32	s4, s4, s0
d00548fe:	ee61 1a80 	vmul.f32	s3, s3, s0
d0054902:	eee7 6a82 	vfma.f32	s13, s15, s4
d0054906:	eea7 6aa1 	vfma.f32	s12, s15, s3
d005490a:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d005490e:	4b84      	ldr	r3, [pc, #528]	; (d0054b20 <fillTriangleDitherBayer2Mode+0xa08>)
d0054910:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0054914:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0054916:	f009 0203 	and.w	r2, r9, #3
d005491a:	681d      	ldr	r5, [r3, #0]
d005491c:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0054920:	4880      	ldr	r0, [pc, #512]	; (d0054b24 <fillTriangleDitherBayer2Mode+0xa0c>)
d0054922:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d0054926:	f8cd 9018 	str.w	r9, [sp, #24]
d005492a:	448c      	add	ip, r1
d005492c:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0054930:	18ef      	adds	r7, r5, r3
d0054932:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d0054936:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0054938:	4699      	mov	r9, r3
d005493a:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d005493e:	e010      	b.n	d0054962 <fillTriangleDitherBayer2Mode+0x84a>
d0054940:	ee07 2a90 	vmov	s15, r2
d0054944:	4411      	add	r1, r2
d0054946:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d005494a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005494e:	428c      	cmp	r4, r1
d0054950:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d0054954:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0054958:	eee7 6a82 	vfma.f32	s13, s15, s4
d005495c:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0054960:	db62      	blt.n	d0054a28 <fillTriangleDitherBayer2Mode+0x910>
d0054962:	eba4 0e01 	sub.w	lr, r4, r1
d0054966:	eef4 6aed 	vcmpe.f32	s13, s27
d005496a:	f10e 0201 	add.w	r2, lr, #1
d005496e:	2a30      	cmp	r2, #48	; 0x30
d0054970:	bfa8      	it	ge
d0054972:	2230      	movge	r2, #48	; 0x30
d0054974:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054978:	d9e2      	bls.n	d0054940 <fillTriangleDitherBayer2Mode+0x828>
d005497a:	f1be 0f00 	cmp.w	lr, #0
d005497e:	eec6 7a26 	vdiv.f32	s15, s12, s13
d0054982:	dd54      	ble.n	d0054a2e <fillTriangleDitherBayer2Mode+0x916>
d0054984:	1e53      	subs	r3, r2, #1
d0054986:	ee00 3a10 	vmov	s0, r3
d005498a:	eeb0 9a66 	vmov.f32	s18, s13
d005498e:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d0054992:	eea0 9a02 	vfma.f32	s18, s0, s4
d0054996:	eeb4 9aed 	vcmpe.f32	s18, s27
d005499a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005499e:	dd47      	ble.n	d0054a30 <fillTriangleDitherBayer2Mode+0x918>
d00549a0:	eeb0 fa46 	vmov.f32	s30, s12
d00549a4:	9b00      	ldr	r3, [sp, #0]
d00549a6:	2b0f      	cmp	r3, #15
d00549a8:	eea0 fa21 	vfma.f32	s30, s0, s3
d00549ac:	eecf 9a09 	vdiv.f32	s19, s30, s18
d00549b0:	ee79 9ae7 	vsub.f32	s19, s19, s15
d00549b4:	ee89 9a80 	vdiv.f32	s18, s19, s0
d00549b8:	dd3f      	ble.n	d0054a3a <fillTriangleDitherBayer2Mode+0x922>
d00549ba:	f1ac 0602 	sub.w	r6, ip, #2
d00549be:	2000      	movs	r0, #0
d00549c0:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d00549c4:	fe80 0a41 	vminnm.f32	s0, s0, s2
d00549c8:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00549cc:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d00549d0:	3001      	adds	r0, #1
d00549d2:	ee30 0a04 	vadd.f32	s0, s0, s8
d00549d6:	019d      	lsls	r5, r3, #6
d00549d8:	ee77 7a89 	vadd.f32	s15, s15, s18
d00549dc:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d00549e0:	ee10 3a10 	vmov	r3, s0
d00549e4:	b29b      	uxth	r3, r3
d00549e6:	4598      	cmp	r8, r3
d00549e8:	d903      	bls.n	d00549f2 <fillTriangleDitherBayer2Mode+0x8da>
d00549ea:	8033      	strh	r3, [r6, #0]
d00549ec:	f04f 0310 	mov.w	r3, #16
d00549f0:	557b      	strb	r3, [r7, r5]
d00549f2:	4282      	cmp	r2, r0
d00549f4:	dce4      	bgt.n	d00549c0 <fillTriangleDitherBayer2Mode+0x8a8>
d00549f6:	f1be 0f00 	cmp.w	lr, #0
d00549fa:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00549fe:	ea4f 0042 	mov.w	r0, r2, lsl #1
d0054a02:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0054a06:	bfbc      	itt	lt
d0054a08:	2002      	movlt	r0, #2
d0054a0a:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0054a0e:	4484      	add	ip, r0
d0054a10:	441f      	add	r7, r3
d0054a12:	ee07 2a90 	vmov	s15, r2
d0054a16:	4411      	add	r1, r2
d0054a18:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054a1c:	428c      	cmp	r4, r1
d0054a1e:	eee7 6a82 	vfma.f32	s13, s15, s4
d0054a22:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0054a26:	da9c      	bge.n	d0054962 <fillTriangleDitherBayer2Mode+0x84a>
d0054a28:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0054a2c:	e5db      	b.n	d00545e6 <fillTriangleDitherBayer2Mode+0x4ce>
d0054a2e:	d1f0      	bne.n	d0054a12 <fillTriangleDitherBayer2Mode+0x8fa>
d0054a30:	9b00      	ldr	r3, [sp, #0]
d0054a32:	eeb0 9a62 	vmov.f32	s18, s5
d0054a36:	2b0f      	cmp	r3, #15
d0054a38:	dcbf      	bgt.n	d00549ba <fillTriangleDitherBayer2Mode+0x8a2>
d0054a3a:	2b00      	cmp	r3, #0
d0054a3c:	dd29      	ble.n	d0054a92 <fillTriangleDitherBayer2Mode+0x97a>
d0054a3e:	9409      	str	r4, [sp, #36]	; 0x24
d0054a40:	f1ac 0802 	sub.w	r8, ip, #2
d0054a44:	2000      	movs	r0, #0
d0054a46:	9c02      	ldr	r4, [sp, #8]
d0054a48:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0054a4c:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0054a50:	ee30 0a04 	vadd.f32	s0, s0, s8
d0054a54:	f838 af02 	ldrh.w	sl, [r8, #2]!
d0054a58:	180e      	adds	r6, r1, r0
d0054a5a:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d0054a5e:	ee77 7a89 	vadd.f32	s15, s15, s18
d0054a62:	3001      	adds	r0, #1
d0054a64:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0054a68:	f006 0603 	and.w	r6, r6, #3
d0054a6c:	01ad      	lsls	r5, r5, #6
d0054a6e:	ee10 3a10 	vmov	r3, s0
d0054a72:	b29b      	uxth	r3, r3
d0054a74:	459a      	cmp	sl, r3
d0054a76:	d908      	bls.n	d0054a8a <fillTriangleDitherBayer2Mode+0x972>
d0054a78:	f8a8 3000 	strh.w	r3, [r8]
d0054a7c:	f819 3006 	ldrb.w	r3, [r9, r6]
d0054a80:	42a3      	cmp	r3, r4
d0054a82:	bfac      	ite	ge
d0054a84:	465b      	movge	r3, fp
d0054a86:	2310      	movlt	r3, #16
d0054a88:	557b      	strb	r3, [r7, r5]
d0054a8a:	4282      	cmp	r2, r0
d0054a8c:	dcdc      	bgt.n	d0054a48 <fillTriangleDitherBayer2Mode+0x930>
d0054a8e:	9c09      	ldr	r4, [sp, #36]	; 0x24
d0054a90:	e7b1      	b.n	d00549f6 <fillTriangleDitherBayer2Mode+0x8de>
d0054a92:	f1ac 0602 	sub.w	r6, ip, #2
d0054a96:	2000      	movs	r0, #0
d0054a98:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0054a9c:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0054aa0:	ee30 0a04 	vadd.f32	s0, s0, s8
d0054aa4:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0054aa8:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0054aac:	ee77 7a89 	vadd.f32	s15, s15, s18
d0054ab0:	019d      	lsls	r5, r3, #6
d0054ab2:	3001      	adds	r0, #1
d0054ab4:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0054ab8:	ee10 3a10 	vmov	r3, s0
d0054abc:	b29b      	uxth	r3, r3
d0054abe:	4598      	cmp	r8, r3
d0054ac0:	d902      	bls.n	d0054ac8 <fillTriangleDitherBayer2Mode+0x9b0>
d0054ac2:	8033      	strh	r3, [r6, #0]
d0054ac4:	f807 b005 	strb.w	fp, [r7, r5]
d0054ac8:	4282      	cmp	r2, r0
d0054aca:	dce5      	bgt.n	d0054a98 <fillTriangleDitherBayer2Mode+0x980>
d0054acc:	e793      	b.n	d00549f6 <fillTriangleDitherBayer2Mode+0x8de>
d0054ace:	f1ac 0602 	sub.w	r6, ip, #2
d0054ad2:	2200      	movs	r2, #0
d0054ad4:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0054ad8:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0054adc:	ee76 6a82 	vadd.f32	s13, s13, s4
d0054ae0:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0054ae4:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0054ae8:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0054aec:	0185      	lsls	r5, r0, #6
d0054aee:	3201      	adds	r2, #1
d0054af0:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0054af4:	ee16 0a90 	vmov	r0, s13
d0054af8:	b280      	uxth	r0, r0
d0054afa:	4580      	cmp	r8, r0
d0054afc:	d902      	bls.n	d0054b04 <fillTriangleDitherBayer2Mode+0x9ec>
d0054afe:	8030      	strh	r0, [r6, #0]
d0054b00:	f807 b005 	strb.w	fp, [r7, r5]
d0054b04:	4293      	cmp	r3, r2
d0054b06:	dce5      	bgt.n	d0054ad4 <fillTriangleDitherBayer2Mode+0x9bc>
d0054b08:	e679      	b.n	d00547fe <fillTriangleDitherBayer2Mode+0x6e6>
d0054b0a:	eeb0 aa44 	vmov.f32	s20, s8
d0054b0e:	eef0 9a44 	vmov.f32	s19, s8
d0054b12:	e5fe      	b.n	d0054712 <fillTriangleDitherBayer2Mode+0x5fa>
d0054b14:	eef0 1a62 	vmov.f32	s3, s5
d0054b18:	eeb0 2a62 	vmov.f32	s4, s5
d0054b1c:	e6f5      	b.n	d005490a <fillTriangleDitherBayer2Mode+0x7f2>
d0054b1e:	bf00      	nop
d0054b20:	d0127a44 	.word	0xd0127a44
d0054b24:	d005ad1c 	.word	0xd005ad1c

d0054b28 <vec3Add>:
d0054b28:	ee30 0a21 	vadd.f32	s0, s0, s3
d0054b2c:	b08e      	sub	sp, #56	; 0x38
d0054b2e:	ee70 0a82 	vadd.f32	s1, s1, s4
d0054b32:	ee31 1a22 	vadd.f32	s2, s2, s5
d0054b36:	b00e      	add	sp, #56	; 0x38
d0054b38:	4770      	bx	lr
d0054b3a:	bf00      	nop

d0054b3c <vec3Scale>:
d0054b3c:	ee20 0a21 	vmul.f32	s0, s0, s3
d0054b40:	b08c      	sub	sp, #48	; 0x30
d0054b42:	ee61 0aa0 	vmul.f32	s1, s3, s1
d0054b46:	ee21 1a81 	vmul.f32	s2, s3, s2
d0054b4a:	b00c      	add	sp, #48	; 0x30
d0054b4c:	4770      	bx	lr
d0054b4e:	bf00      	nop

d0054b50 <vec3Dot>:
d0054b50:	ee20 2a82 	vmul.f32	s4, s1, s4
d0054b54:	b086      	sub	sp, #24
d0054b56:	eea0 2a21 	vfma.f32	s4, s0, s3
d0054b5a:	eea1 2a22 	vfma.f32	s4, s2, s5
d0054b5e:	eeb0 0a42 	vmov.f32	s0, s4
d0054b62:	b006      	add	sp, #24
d0054b64:	4770      	bx	lr
d0054b66:	bf00      	nop

d0054b68 <vec3Cross>:
d0054b68:	eeb0 7a60 	vmov.f32	s14, s1
d0054b6c:	b08e      	sub	sp, #56	; 0x38
d0054b6e:	eef0 7a40 	vmov.f32	s15, s0
d0054b72:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d0054b76:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d0054b7a:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0054b7e:	eee1 0a21 	vfma.f32	s1, s2, s3
d0054b82:	eee7 6a82 	vfma.f32	s13, s15, s4
d0054b86:	eea7 0a22 	vfma.f32	s0, s14, s5
d0054b8a:	eeb0 1a66 	vmov.f32	s2, s13
d0054b8e:	b00e      	add	sp, #56	; 0x38
d0054b90:	4770      	bx	lr
d0054b92:	bf00      	nop

d0054b94 <vec3Normalize>:
d0054b94:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0054b98:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0054c24 <vec3Normalize+0x90>
d0054b9c:	b08c      	sub	sp, #48	; 0x30
d0054b9e:	eee0 7a00 	vfma.f32	s15, s0, s0
d0054ba2:	eee1 7a01 	vfma.f32	s15, s2, s2
d0054ba6:	eef4 7ac7 	vcmpe.f32	s15, s14
d0054baa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bae:	d934      	bls.n	d0054c1a <vec3Normalize+0x86>
d0054bb0:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0054c28 <vec3Normalize+0x94>
d0054bb4:	eef4 7a47 	vcmp.f32	s15, s14
d0054bb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bbc:	dd06      	ble.n	d0054bcc <vec3Normalize+0x38>
d0054bbe:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0054c2c <vec3Normalize+0x98>
d0054bc2:	eef4 7a47 	vcmp.f32	s15, s14
d0054bc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bca:	d418      	bmi.n	d0054bfe <vec3Normalize+0x6a>
d0054bcc:	ee17 2a90 	vmov	r2, s15
d0054bd0:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0054bd4:	4b16      	ldr	r3, [pc, #88]	; (d0054c30 <vec3Normalize+0x9c>)
d0054bd6:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d0054bda:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0054bde:	ee67 7a86 	vmul.f32	s15, s15, s12
d0054be2:	ee06 3a90 	vmov	s13, r3
d0054be6:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0054bea:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0054bee:	ee67 7a26 	vmul.f32	s15, s14, s13
d0054bf2:	ee27 0a80 	vmul.f32	s0, s15, s0
d0054bf6:	ee67 0aa0 	vmul.f32	s1, s15, s1
d0054bfa:	ee27 1a81 	vmul.f32	s2, s15, s2
d0054bfe:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0054c02:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d0054c06:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d0054c0a:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0054c0e:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0054c12:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d0054c16:	b00c      	add	sp, #48	; 0x30
d0054c18:	4770      	bx	lr
d0054c1a:	2300      	movs	r3, #0
d0054c1c:	9309      	str	r3, [sp, #36]	; 0x24
d0054c1e:	930a      	str	r3, [sp, #40]	; 0x28
d0054c20:	930b      	str	r3, [sp, #44]	; 0x2c
d0054c22:	e7f2      	b.n	d0054c0a <vec3Normalize+0x76>
d0054c24:	358637bd 	.word	0x358637bd
d0054c28:	3f7fbe77 	.word	0x3f7fbe77
d0054c2c:	3f8020c5 	.word	0x3f8020c5
d0054c30:	5f3759df 	.word	0x5f3759df

d0054c34 <rotateAroundAxis>:
d0054c34:	ee62 7a02 	vmul.f32	s15, s4, s4
d0054c38:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0054d80 <rotateAroundAxis+0x14c>
d0054c3c:	b500      	push	{lr}
d0054c3e:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0054c42:	ed2d 8b0c 	vpush	{d8-d13}
d0054c46:	eef0 ca40 	vmov.f32	s25, s0
d0054c4a:	b08f      	sub	sp, #60	; 0x3c
d0054c4c:	eeb0 ca60 	vmov.f32	s24, s1
d0054c50:	eef0 ba41 	vmov.f32	s23, s2
d0054c54:	eee2 7aa2 	vfma.f32	s15, s5, s5
d0054c58:	eeb0 da43 	vmov.f32	s26, s6
d0054c5c:	eef4 7ac7 	vcmpe.f32	s15, s14
d0054c60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c64:	d97c      	bls.n	d0054d60 <rotateAroundAxis+0x12c>
d0054c66:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0054d84 <rotateAroundAxis+0x150>
d0054c6a:	eef4 7a47 	vcmp.f32	s15, s14
d0054c6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c72:	dd55      	ble.n	d0054d20 <rotateAroundAxis+0xec>
d0054c74:	ed9f 7a44 	vldr	s14, [pc, #272]	; d0054d88 <rotateAroundAxis+0x154>
d0054c78:	eef4 7a47 	vcmp.f32	s15, s14
d0054c7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c80:	d54e      	bpl.n	d0054d20 <rotateAroundAxis+0xec>
d0054c82:	eef0 da42 	vmov.f32	s27, s4
d0054c86:	eeb0 9a61 	vmov.f32	s18, s3
d0054c8a:	eeb0 8a62 	vmov.f32	s16, s5
d0054c8e:	ee60 8a82 	vmul.f32	s17, s1, s4
d0054c92:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d0054c96:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d0054c9a:	eeec 8a89 	vfma.f32	s17, s25, s18
d0054c9e:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d0054ca2:	eeeb 5aad 	vfma.f32	s11, s23, s27
d0054ca6:	eeac 6a88 	vfma.f32	s12, s25, s16
d0054caa:	eeec 7a09 	vfma.f32	s15, s24, s18
d0054cae:	eeeb 8a88 	vfma.f32	s17, s23, s16
d0054cb2:	eeb0 ba65 	vmov.f32	s22, s11
d0054cb6:	eeb0 aa46 	vmov.f32	s20, s12
d0054cba:	eef0 aa67 	vmov.f32	s21, s15
d0054cbe:	eeb0 0a4d 	vmov.f32	s0, s26
d0054cc2:	f005 f911 	bl	d0059ee8 <cosf>
d0054cc6:	eef0 9a40 	vmov.f32	s19, s0
d0054cca:	eeb0 0a4d 	vmov.f32	s0, s26
d0054cce:	f005 faef 	bl	d005a2b0 <sinf>
d0054cd2:	ee60 5a0b 	vmul.f32	s11, s0, s22
d0054cd6:	ee20 6a0a 	vmul.f32	s12, s0, s20
d0054cda:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0054cde:	eee9 5aac 	vfma.f32	s11, s19, s25
d0054ce2:	eea9 6a8c 	vfma.f32	s12, s19, s24
d0054ce6:	eee9 7aab 	vfma.f32	s15, s19, s23
d0054cea:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0054cee:	ee29 9a28 	vmul.f32	s18, s18, s17
d0054cf2:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d0054cf6:	ee76 9ae9 	vsub.f32	s19, s13, s19
d0054cfa:	ee28 8a28 	vmul.f32	s16, s16, s17
d0054cfe:	eeb0 0a65 	vmov.f32	s0, s11
d0054d02:	eef0 0a46 	vmov.f32	s1, s12
d0054d06:	eeb0 1a67 	vmov.f32	s2, s15
d0054d0a:	eea9 0a89 	vfma.f32	s0, s19, s18
d0054d0e:	eee9 0a87 	vfma.f32	s1, s19, s14
d0054d12:	eea9 1a88 	vfma.f32	s2, s19, s16
d0054d16:	b00f      	add	sp, #60	; 0x3c
d0054d18:	ecbd 8b0c 	vpop	{d8-d13}
d0054d1c:	f85d fb04 	ldr.w	pc, [sp], #4
d0054d20:	ee17 2a90 	vmov	r2, s15
d0054d24:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054d28:	4b18      	ldr	r3, [pc, #96]	; (d0054d8c <rotateAroundAxis+0x158>)
d0054d2a:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0054d2e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0054d32:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0054d36:	ee07 3a10 	vmov	s14, r3
d0054d3a:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054d3e:	eea7 8a67 	vfms.f32	s16, s14, s15
d0054d42:	ee27 8a08 	vmul.f32	s16, s14, s16
d0054d46:	ee62 da08 	vmul.f32	s27, s4, s16
d0054d4a:	ee21 9a88 	vmul.f32	s18, s3, s16
d0054d4e:	ee22 8a88 	vmul.f32	s16, s5, s16
d0054d52:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d0054d56:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d0054d5a:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0054d5e:	e79c      	b.n	d0054c9a <rotateAroundAxis+0x66>
d0054d60:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0054d90 <rotateAroundAxis+0x15c>
d0054d64:	eef0 aa68 	vmov.f32	s21, s17
d0054d68:	eeb0 aa68 	vmov.f32	s20, s17
d0054d6c:	eeb0 ba68 	vmov.f32	s22, s17
d0054d70:	eeb0 8a68 	vmov.f32	s16, s17
d0054d74:	eef0 da68 	vmov.f32	s27, s17
d0054d78:	eeb0 9a68 	vmov.f32	s18, s17
d0054d7c:	e79f      	b.n	d0054cbe <rotateAroundAxis+0x8a>
d0054d7e:	bf00      	nop
d0054d80:	358637bd 	.word	0x358637bd
d0054d84:	3f7fbe77 	.word	0x3f7fbe77
d0054d88:	3f8020c5 	.word	0x3f8020c5
d0054d8c:	5f3759df 	.word	0x5f3759df
d0054d90:	00000000 	.word	0x00000000

d0054d94 <vec3>:
d0054d94:	b088      	sub	sp, #32
d0054d96:	b008      	add	sp, #32
d0054d98:	4770      	bx	lr
d0054d9a:	bf00      	nop

d0054d9c <degrees>:
d0054d9c:	eddf 7a02 	vldr	s15, [pc, #8]	; d0054da8 <degrees+0xc>
d0054da0:	ee20 0a27 	vmul.f32	s0, s0, s15
d0054da4:	4770      	bx	lr
d0054da6:	bf00      	nop
d0054da8:	3c8efa35 	.word	0x3c8efa35

d0054dac <powfxt>:
d0054dac:	eef5 0a40 	vcmp.f32	s1, #0.0
d0054db0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054db4:	d040      	beq.n	d0054e38 <powfxt+0x8c>
d0054db6:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0054dba:	eef0 7a40 	vmov.f32	s15, s0
d0054dbe:	eef4 0a47 	vcmp.f32	s1, s14
d0054dc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054dc6:	d034      	beq.n	d0054e32 <powfxt+0x86>
d0054dc8:	eeb4 0a47 	vcmp.f32	s0, s14
d0054dcc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054dd0:	d02f      	beq.n	d0054e32 <powfxt+0x86>
d0054dd2:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0054dd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054dda:	d030      	beq.n	d0054e3e <powfxt+0x92>
d0054ddc:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054de0:	eef4 0a66 	vcmp.f32	s1, s13
d0054de4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054de8:	d042      	beq.n	d0054e70 <powfxt+0xc4>
d0054dea:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d0054dee:	eef4 0a66 	vcmp.f32	s1, s13
d0054df2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054df6:	d03e      	beq.n	d0054e76 <powfxt+0xca>
d0054df8:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0054dfc:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0054e00:	eeb4 6a60 	vcmp.f32	s12, s1
d0054e04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e08:	d022      	beq.n	d0054e50 <powfxt+0xa4>
d0054e0a:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0054e0e:	b500      	push	{lr}
d0054e10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e14:	b083      	sub	sp, #12
d0054e16:	edcd 0a01 	vstr	s1, [sp, #4]
d0054e1a:	d431      	bmi.n	d0054e80 <powfxt+0xd4>
d0054e1c:	f005 f9b6 	bl	d005a18c <logf>
d0054e20:	eddd 0a01 	vldr	s1, [sp, #4]
d0054e24:	ee20 0a20 	vmul.f32	s0, s0, s1
d0054e28:	b003      	add	sp, #12
d0054e2a:	f85d eb04 	ldr.w	lr, [sp], #4
d0054e2e:	f005 b937 	b.w	d005a0a0 <expf>
d0054e32:	eeb0 0a67 	vmov.f32	s0, s15
d0054e36:	4770      	bx	lr
d0054e38:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0054e3c:	4770      	bx	lr
d0054e3e:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0054e42:	ed9f 0a15 	vldr	s0, [pc, #84]	; d0054e98 <powfxt+0xec>
d0054e46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e4a:	fe37 0a80 	vselgt.f32	s0, s15, s0
d0054e4e:	4770      	bx	lr
d0054e50:	ee16 3a90 	vmov	r3, s13
d0054e54:	2b00      	cmp	r3, #0
d0054e56:	db18      	blt.n	d0054e8a <powfxt+0xde>
d0054e58:	d01b      	beq.n	d0054e92 <powfxt+0xe6>
d0054e5a:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0054e5e:	07da      	lsls	r2, r3, #31
d0054e60:	bf48      	it	mi
d0054e62:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d0054e66:	085b      	lsrs	r3, r3, #1
d0054e68:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0054e6c:	d1f7      	bne.n	d0054e5e <powfxt+0xb2>
d0054e6e:	4770      	bx	lr
d0054e70:	eeb1 0ae7 	vsqrt.f32	s0, s15
d0054e74:	4770      	bx	lr
d0054e76:	eef1 6ac0 	vsqrt.f32	s13, s0
d0054e7a:	ee87 0a26 	vdiv.f32	s0, s14, s13
d0054e7e:	4770      	bx	lr
d0054e80:	ed9f 0a06 	vldr	s0, [pc, #24]	; d0054e9c <powfxt+0xf0>
d0054e84:	b003      	add	sp, #12
d0054e86:	f85d fb04 	ldr.w	pc, [sp], #4
d0054e8a:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0054e8e:	425b      	negs	r3, r3
d0054e90:	e7e3      	b.n	d0054e5a <powfxt+0xae>
d0054e92:	eeb0 0a47 	vmov.f32	s0, s14
d0054e96:	4770      	bx	lr
d0054e98:	7f800000 	.word	0x7f800000
d0054e9c:	7fc00000 	.word	0x7fc00000

d0054ea0 <sb3dParticlesClear>:
d0054ea0:	4b0f      	ldr	r3, [pc, #60]	; (d0054ee0 <sb3dParticlesClear+0x40>)
d0054ea2:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d0054ea6:	2100      	movs	r1, #0
d0054ea8:	2200      	movs	r2, #0
d0054eaa:	b430      	push	{r4, r5}
d0054eac:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0054eb0:	2421      	movs	r4, #33	; 0x21
d0054eb2:	7699      	strb	r1, [r3, #26]
d0054eb4:	3320      	adds	r3, #32
d0054eb6:	f843 2c20 	str.w	r2, [r3, #-32]
d0054eba:	f843 2c1c 	str.w	r2, [r3, #-28]
d0054ebe:	f843 2c18 	str.w	r2, [r3, #-24]
d0054ec2:	f843 0c14 	str.w	r0, [r3, #-20]
d0054ec6:	f843 2c10 	str.w	r2, [r3, #-16]
d0054eca:	f843 0c0c 	str.w	r0, [r3, #-12]
d0054ece:	f803 4c08 	strb.w	r4, [r3, #-8]
d0054ed2:	f803 1c07 	strb.w	r1, [r3, #-7]
d0054ed6:	42ab      	cmp	r3, r5
d0054ed8:	d1eb      	bne.n	d0054eb2 <sb3dParticlesClear+0x12>
d0054eda:	bc30      	pop	{r4, r5}
d0054edc:	4770      	bx	lr
d0054ede:	bf00      	nop
d0054ee0:	d008d740 	.word	0xd008d740

d0054ee4 <sb3dParticlesRender>:
d0054ee4:	2800      	cmp	r0, #0
d0054ee6:	f000 82d5 	beq.w	d0055494 <sb3dParticlesRender+0x5b0>
d0054eea:	edd0 7a02 	vldr	s15, [r0, #8]
d0054eee:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0054ef2:	ed2d 8b10 	vpush	{d8-d15}
d0054ef6:	b0c7      	sub	sp, #284	; 0x11c
d0054ef8:	4605      	mov	r5, r0
d0054efa:	ed90 ea00 	vldr	s28, [r0]
d0054efe:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d0054f02:	edd0 da01 	vldr	s27, [r0, #4]
d0054f06:	edd0 ca06 	vldr	s25, [r0, #24]
d0054f0a:	ed90 ca07 	vldr	s24, [r0, #28]
d0054f0e:	edd0 ba08 	vldr	s23, [r0, #32]
d0054f12:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d0054f16:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d0054f1a:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d0054f1e:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d0054f22:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d0054f26:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d0054f2a:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d0054f2e:	f001 fd39 	bl	d00569a4 <lightsGet>
d0054f32:	4cae      	ldr	r4, [pc, #696]	; (d00551ec <sb3dParticlesRender+0x308>)
d0054f34:	4682      	mov	sl, r0
d0054f36:	f001 fd39 	bl	d00569ac <lightsGetCount>
d0054f3a:	4681      	mov	r9, r0
d0054f3c:	f504 5700 	add.w	r7, r4, #8192	; 0x2000
d0054f40:	eb0a 1880 	add.w	r8, sl, r0, lsl #6
d0054f44:	e115      	b.n	d0055172 <sb3dParticlesRender+0x28e>
d0054f46:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0054f4a:	edd4 ea04 	vldr	s29, [r4, #16]
d0054f4e:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0055200 <sb3dParticlesRender+0x31c>
d0054f52:	fece ea85 	vmaxnm.f32	s29, s29, s10
d0054f56:	fece eac7 	vminnm.f32	s29, s29, s14
d0054f5a:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0054f5e:	f105 0610 	add.w	r6, r5, #16
d0054f62:	eeb0 4a46 	vmov.f32	s8, s12
d0054f66:	2250      	movs	r2, #80	; 0x50
d0054f68:	eef0 4a66 	vmov.f32	s9, s13
d0054f6c:	4631      	mov	r1, r6
d0054f6e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054f72:	4668      	mov	r0, sp
d0054f74:	eeb0 5a65 	vmov.f32	s10, s11
d0054f78:	eeb0 7a65 	vmov.f32	s14, s11
d0054f7c:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0054f80:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0054f84:	eeec 4a67 	vfms.f32	s9, s24, s15
d0054f88:	eeec 6a27 	vfma.f32	s13, s24, s15
d0054f8c:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0054f90:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0054f94:	eef0 3a46 	vmov.f32	s7, s12
d0054f98:	eea9 6a67 	vfms.f32	s12, s18, s15
d0054f9c:	eeb0 da44 	vmov.f32	s26, s8
d0054fa0:	eef0 fa64 	vmov.f32	s31, s9
d0054fa4:	eef0 5a66 	vmov.f32	s11, s13
d0054fa8:	eeb0 fa45 	vmov.f32	s30, s10
d0054fac:	eea9 da27 	vfma.f32	s26, s18, s15
d0054fb0:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d0054fb4:	eeb0 6a47 	vmov.f32	s12, s14
d0054fb8:	eee8 faa7 	vfma.f32	s31, s17, s15
d0054fbc:	eea8 fa27 	vfma.f32	s30, s16, s15
d0054fc0:	eea9 4a67 	vfms.f32	s8, s18, s15
d0054fc4:	eee9 3a27 	vfma.f32	s7, s18, s15
d0054fc8:	eee8 4ae7 	vfms.f32	s9, s17, s15
d0054fcc:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d0054fd0:	eee8 5aa7 	vfma.f32	s11, s17, s15
d0054fd4:	eee8 6ae7 	vfms.f32	s13, s17, s15
d0054fd8:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d0054fdc:	eea8 5a67 	vfms.f32	s10, s16, s15
d0054fe0:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d0054fe4:	eea8 6a27 	vfma.f32	s12, s16, s15
d0054fe8:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d0054fec:	eea8 7a67 	vfms.f32	s14, s16, s15
d0054ff0:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d0054ff4:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d0054ff8:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d0054ffc:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d0055000:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d0055004:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d0055008:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d005500c:	f004 f950 	bl	d00592b0 <memcpy>
d0055010:	eeb0 0a4d 	vmov.f32	s0, s26
d0055014:	eef0 0a6f 	vmov.f32	s1, s31
d0055018:	eeb0 1a4f 	vmov.f32	s2, s30
d005501c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055020:	f000 fcd8 	bl	d00559d4 <worldToCamera>
d0055024:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0055028:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d005502c:	4631      	mov	r1, r6
d005502e:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d0055032:	2250      	movs	r2, #80	; 0x50
d0055034:	4668      	mov	r0, sp
d0055036:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d005503a:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d005503e:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0055042:	f004 f935 	bl	d00592b0 <memcpy>
d0055046:	eeb0 0a4d 	vmov.f32	s0, s26
d005504a:	eef0 0a6f 	vmov.f32	s1, s31
d005504e:	eeb0 1a4f 	vmov.f32	s2, s30
d0055052:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055056:	f000 fcbd 	bl	d00559d4 <worldToCamera>
d005505a:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d005505e:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d0055062:	4631      	mov	r1, r6
d0055064:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0055068:	2250      	movs	r2, #80	; 0x50
d005506a:	4668      	mov	r0, sp
d005506c:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0055070:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0055074:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0055078:	f004 f91a 	bl	d00592b0 <memcpy>
d005507c:	eeb0 0a4d 	vmov.f32	s0, s26
d0055080:	eef0 0a6f 	vmov.f32	s1, s31
d0055084:	eeb0 1a4f 	vmov.f32	s2, s30
d0055088:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005508c:	f000 fca2 	bl	d00559d4 <worldToCamera>
d0055090:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0055094:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0055098:	4631      	mov	r1, r6
d005509a:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d005509e:	2250      	movs	r2, #80	; 0x50
d00550a0:	4668      	mov	r0, sp
d00550a2:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d00550a6:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d00550aa:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d00550ae:	f004 f8ff 	bl	d00592b0 <memcpy>
d00550b2:	eeb0 0a4d 	vmov.f32	s0, s26
d00550b6:	eef0 0a6f 	vmov.f32	s1, s31
d00550ba:	eeb0 1a4f 	vmov.f32	s2, s30
d00550be:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00550c2:	f000 fc87 	bl	d00559d4 <worldToCamera>
d00550c6:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d00550ca:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d00550ce:	eef4 7acb 	vcmpe.f32	s15, s22
d00550d2:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d00550d6:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d00550da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00550de:	d812      	bhi.n	d0055106 <sb3dParticlesRender+0x222>
d00550e0:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d00550e4:	eef4 7acb 	vcmpe.f32	s15, s22
d00550e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00550ec:	d80b      	bhi.n	d0055106 <sb3dParticlesRender+0x222>
d00550ee:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d00550f2:	eef4 7acb 	vcmpe.f32	s15, s22
d00550f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00550fa:	d804      	bhi.n	d0055106 <sb3dParticlesRender+0x222>
d00550fc:	eeb4 1acb 	vcmpe.f32	s2, s22
d0055100:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055104:	d931      	bls.n	d005516a <sb3dParticlesRender+0x286>
d0055106:	4629      	mov	r1, r5
d0055108:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d005510c:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0055110:	a82e      	add	r0, sp, #184	; 0xb8
d0055112:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d0055116:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d005511a:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d005511e:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0055122:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0055126:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d005512a:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d005512e:	f001 fd03 	bl	d0056b38 <clipTriangleToFrustum>
d0055132:	2802      	cmp	r0, #2
d0055134:	f300 8155 	bgt.w	d00553e2 <sb3dParticlesRender+0x4fe>
d0055138:	a82e      	add	r0, sp, #184	; 0xb8
d005513a:	4629      	mov	r1, r5
d005513c:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0055140:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0055144:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0055148:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d005514c:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0055150:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0055154:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0055158:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d005515c:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0055160:	f001 fcea 	bl	d0056b38 <clipTriangleToFrustum>
d0055164:	2802      	cmp	r0, #2
d0055166:	f300 8105 	bgt.w	d0055374 <sb3dParticlesRender+0x490>
d005516a:	3420      	adds	r4, #32
d005516c:	42a7      	cmp	r7, r4
d005516e:	f000 8133 	beq.w	d00553d8 <sb3dParticlesRender+0x4f4>
d0055172:	7ea3      	ldrb	r3, [r4, #26]
d0055174:	2b00      	cmp	r3, #0
d0055176:	d0f8      	beq.n	d005516a <sb3dParticlesRender+0x286>
d0055178:	edd4 7a03 	vldr	s15, [r4, #12]
d005517c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0055180:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055184:	d9f1      	bls.n	d005516a <sb3dParticlesRender+0x286>
d0055186:	edd4 6a01 	vldr	s13, [r4, #4]
d005518a:	eeb1 5a67 	vneg.f32	s10, s15
d005518e:	ed94 6a00 	vldr	s12, [r4]
d0055192:	ee36 7aed 	vsub.f32	s14, s13, s27
d0055196:	edd4 5a02 	vldr	s11, [r4, #8]
d005519a:	ee36 4a4e 	vsub.f32	s8, s12, s28
d005519e:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d00551a2:	ee27 7a0a 	vmul.f32	s14, s14, s20
d00551a6:	ee75 4ae4 	vsub.f32	s9, s11, s9
d00551aa:	eeaa 7a84 	vfma.f32	s14, s21, s8
d00551ae:	eea9 7aa4 	vfma.f32	s14, s19, s9
d00551b2:	eeb4 5ac7 	vcmpe.f32	s10, s14
d00551b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00551ba:	dad6      	bge.n	d005516a <sb3dParticlesRender+0x286>
d00551bc:	ed94 7a05 	vldr	s14, [r4, #20]
d00551c0:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d00551f0 <sb3dParticlesRender+0x30c>
d00551c4:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00551c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00551cc:	f67f aebb 	bls.w	d0054f46 <sb3dParticlesRender+0x62>
d00551d0:	f1b9 0f00 	cmp.w	r9, #0
d00551d4:	f340 809e 	ble.w	d0055314 <sb3dParticlesRender+0x430>
d00551d8:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d00551dc:	4653      	mov	r3, sl
d00551de:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d00551e2:	ed9f 0a05 	vldr	s0, [pc, #20]	; d00551f8 <sb3dParticlesRender+0x314>
d00551e6:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d00551ea:	e07e      	b.n	d00552ea <sb3dParticlesRender+0x406>
d00551ec:	d008d740 	.word	0xd008d740
d00551f0:	38d1b717 	.word	0x38d1b717
d00551f4:	358637bd 	.word	0x358637bd
d00551f8:	3dcccccd 	.word	0x3dcccccd
d00551fc:	3b808081 	.word	0x3b808081
d0055200:	00000000 	.word	0x00000000
d0055204:	edd3 7a02 	vldr	s15, [r3, #8]
d0055208:	edd3 4a01 	vldr	s9, [r3, #4]
d005520c:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0055210:	ed93 7a03 	vldr	s14, [r3, #12]
d0055214:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0055218:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d005521c:	ee37 7a65 	vsub.f32	s14, s14, s11
d0055220:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0055224:	ee62 2a02 	vmul.f32	s5, s4, s4
d0055228:	eea4 5aa4 	vfma.f32	s10, s9, s9
d005522c:	eea7 5a07 	vfma.f32	s10, s14, s14
d0055230:	eeb4 5a62 	vcmp.f32	s10, s5
d0055234:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055238:	d554      	bpl.n	d00552e4 <sb3dParticlesRender+0x400>
d005523a:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d00551f4 <sb3dParticlesRender+0x310>
d005523e:	eeb4 5a62 	vcmp.f32	s10, s5
d0055242:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055246:	dd4d      	ble.n	d00552e4 <sb3dParticlesRender+0x400>
d0055248:	eef1 0ac5 	vsqrt.f32	s1, s10
d005524c:	edd3 1a08 	vldr	s3, [r3, #32]
d0055250:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0055254:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0055258:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005525c:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0055260:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0055264:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0055268:	ee27 7a22 	vmul.f32	s14, s14, s5
d005526c:	f240 80e8 	bls.w	d0055440 <sb3dParticlesRender+0x55c>
d0055270:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0055274:	eef4 1ac1 	vcmpe.f32	s3, s2
d0055278:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005527c:	da32      	bge.n	d00552e4 <sb3dParticlesRender+0x400>
d005527e:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0055282:	ee25 5a22 	vmul.f32	s10, s10, s5
d0055286:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005528a:	eeb4 1ac5 	vcmpe.f32	s2, s10
d005528e:	f200 80da 	bhi.w	d0055446 <sb3dParticlesRender+0x562>
d0055292:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055296:	d925      	bls.n	d00552e4 <sb3dParticlesRender+0x400>
d0055298:	ee75 2a61 	vsub.f32	s5, s10, s3
d005529c:	ee31 2a61 	vsub.f32	s4, s2, s3
d00552a0:	ee82 5a82 	vdiv.f32	s10, s5, s4
d00552a4:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0055200 <sb3dParticlesRender+0x31c>
d00552a8:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d00552ac:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00552b0:	ee34 5a45 	vsub.f32	s10, s8, s10
d00552b4:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d00552b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00552bc:	d912      	bls.n	d00552e4 <sb3dParticlesRender+0x400>
d00552be:	ee67 7a8a 	vmul.f32	s15, s15, s20
d00552c2:	eee4 7aaa 	vfma.f32	s15, s9, s21
d00552c6:	eee7 7a29 	vfma.f32	s15, s14, s19
d00552ca:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00552ce:	eeb1 7a67 	vneg.f32	s14, s15
d00552d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00552d6:	da05      	bge.n	d00552e4 <sb3dParticlesRender+0x400>
d00552d8:	edd3 7a07 	vldr	s15, [r3, #28]
d00552dc:	ee25 5a27 	vmul.f32	s10, s10, s15
d00552e0:	eea5 0a07 	vfma.f32	s0, s10, s14
d00552e4:	3340      	adds	r3, #64	; 0x40
d00552e6:	4598      	cmp	r8, r3
d00552e8:	d016      	beq.n	d0055318 <sb3dParticlesRender+0x434>
d00552ea:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d00552ec:	2a00      	cmp	r2, #0
d00552ee:	d0f9      	beq.n	d00552e4 <sb3dParticlesRender+0x400>
d00552f0:	781a      	ldrb	r2, [r3, #0]
d00552f2:	2a00      	cmp	r2, #0
d00552f4:	d086      	beq.n	d0055204 <sb3dParticlesRender+0x320>
d00552f6:	edd3 4a04 	vldr	s9, [r3, #16]
d00552fa:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d00552fe:	edd3 7a05 	vldr	s15, [r3, #20]
d0055302:	ed93 7a06 	vldr	s14, [r3, #24]
d0055306:	eef1 4a64 	vneg.f32	s9, s9
d005530a:	eef1 7a67 	vneg.f32	s15, s15
d005530e:	eeb1 7a47 	vneg.f32	s14, s14
d0055312:	e7d4      	b.n	d00552be <sb3dParticlesRender+0x3da>
d0055314:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d00551f8 <sb3dParticlesRender+0x314>
d0055318:	7e63      	ldrb	r3, [r4, #25]
d005531a:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d005531e:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d00551fc <sb3dParticlesRender+0x318>
d0055322:	ee07 3a90 	vmov	s15, r3
d0055326:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0055200 <sb3dParticlesRender+0x31c>
d005532a:	eef8 7a67 	vcvt.f32.u32	s15, s15
d005532e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0055332:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0055336:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d005533a:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d005533e:	f001 fb05 	bl	d005694c <brightnessToShadeF>
d0055342:	edd4 ea05 	vldr	s29, [r4, #20]
d0055346:	ed94 5a04 	vldr	s10, [r4, #16]
d005534a:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d005534e:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0055352:	edd4 7a03 	vldr	s15, [r4, #12]
d0055356:	ee60 ea2e 	vmul.f32	s29, s0, s29
d005535a:	ed94 6a00 	vldr	s12, [r4]
d005535e:	edd4 6a01 	vldr	s13, [r4, #4]
d0055362:	edd4 5a02 	vldr	s11, [r4, #8]
d0055366:	eee5 ea0f 	vfma.f32	s29, s10, s30
d005536a:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d005536e:	fece eac7 	vminnm.f32	s29, s29, s14
d0055372:	e5f2      	b.n	d0054f5a <sb3dParticlesRender+0x76>
d0055374:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0055378:	2601      	movs	r6, #1
d005537a:	4631      	mov	r1, r6
d005537c:	3601      	adds	r6, #1
d005537e:	aa46      	add	r2, sp, #280	; 0x118
d0055380:	eef0 4a6e 	vmov.f32	s9, s29
d0055384:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0055388:	2380      	movs	r3, #128	; 0x80
d005538a:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d005538e:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0055392:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0055396:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d005539a:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d005539e:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d00553a2:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d00553a6:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d00553aa:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d00553ae:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d00553b2:	7e62      	ldrb	r2, [r4, #25]
d00553b4:	4628      	mov	r0, r5
d00553b6:	edd1 3a01 	vldr	s7, [r1, #4]
d00553ba:	ed91 4a02 	vldr	s8, [r1, #8]
d00553be:	ed9c 2a01 	vldr	s4, [ip, #4]
d00553c2:	7e21      	ldrb	r1, [r4, #24]
d00553c4:	eddc 2a02 	vldr	s5, [ip, #8]
d00553c8:	f002 f802 	bl	d00573d0 <submitClippedTri>
d00553cc:	455e      	cmp	r6, fp
d00553ce:	d1d4      	bne.n	d005537a <sb3dParticlesRender+0x496>
d00553d0:	3420      	adds	r4, #32
d00553d2:	42a7      	cmp	r7, r4
d00553d4:	f47f aecd 	bne.w	d0055172 <sb3dParticlesRender+0x28e>
d00553d8:	b047      	add	sp, #284	; 0x11c
d00553da:	ecbd 8b10 	vpop	{d8-d15}
d00553de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00553e2:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d00553e6:	2601      	movs	r6, #1
d00553e8:	4631      	mov	r1, r6
d00553ea:	3601      	adds	r6, #1
d00553ec:	aa46      	add	r2, sp, #280	; 0x118
d00553ee:	eef0 4a6e 	vmov.f32	s9, s29
d00553f2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00553f6:	2380      	movs	r3, #128	; 0x80
d00553f8:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d00553fc:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0055400:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0055404:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0055408:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d005540c:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0055410:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0055414:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0055418:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d005541c:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0055420:	7e62      	ldrb	r2, [r4, #25]
d0055422:	4628      	mov	r0, r5
d0055424:	edd1 3a01 	vldr	s7, [r1, #4]
d0055428:	ed91 4a02 	vldr	s8, [r1, #8]
d005542c:	ed9c 2a01 	vldr	s4, [ip, #4]
d0055430:	7e21      	ldrb	r1, [r4, #24]
d0055432:	eddc 2a02 	vldr	s5, [ip, #8]
d0055436:	f001 ffcb 	bl	d00573d0 <submitClippedTri>
d005543a:	455e      	cmp	r6, fp
d005543c:	d1d4      	bne.n	d00553e8 <sb3dParticlesRender+0x504>
d005543e:	e67b      	b.n	d0055138 <sb3dParticlesRender+0x254>
d0055440:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0055444:	e73b      	b.n	d00552be <sb3dParticlesRender+0x3da>
d0055446:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005544a:	db12      	blt.n	d0055472 <sb3dParticlesRender+0x58e>
d005544c:	ee35 5a61 	vsub.f32	s10, s10, s3
d0055450:	ee31 2a61 	vsub.f32	s4, s2, s3
d0055454:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0055458:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0055200 <sb3dParticlesRender+0x31c>
d005545c:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0055460:	eef0 2a44 	vmov.f32	s5, s8
d0055464:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0055468:	eee5 2a63 	vfms.f32	s5, s10, s7
d005546c:	eeb0 5a62 	vmov.f32	s10, s5
d0055470:	e720      	b.n	d00552b4 <sb3dParticlesRender+0x3d0>
d0055472:	ee75 2a41 	vsub.f32	s5, s10, s2
d0055476:	ee32 2a41 	vsub.f32	s4, s4, s2
d005547a:	ee82 5a82 	vdiv.f32	s10, s5, s4
d005547e:	ed5f 2aa0 	vldr	s5, [pc, #-640]	; d0055200 <sb3dParticlesRender+0x31c>
d0055482:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0055486:	fe85 5a44 	vminnm.f32	s10, s10, s8
d005548a:	ee34 5a45 	vsub.f32	s10, s8, s10
d005548e:	ee25 5a03 	vmul.f32	s10, s10, s6
d0055492:	e70f      	b.n	d00552b4 <sb3dParticlesRender+0x3d0>
d0055494:	4770      	bx	lr
d0055496:	bf00      	nop

d0055498 <worldClear>:
d0055498:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d005549c:	2100      	movs	r1, #0
d005549e:	4801      	ldr	r0, [pc, #4]	; (d00554a4 <worldClear+0xc>)
d00554a0:	f003 bf14 	b.w	d00592cc <memset>
d00554a4:	d0127a60 	.word	0xd0127a60

d00554a8 <cameraNormalize>:
d00554a8:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d00554ac:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d00554b0:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00554b4:	b510      	push	{r4, lr}
d00554b6:	4604      	mov	r4, r0
d00554b8:	f7ff fb6c 	bl	d0054b94 <vec3Normalize>
d00554bc:	eeb0 7a60 	vmov.f32	s14, s1
d00554c0:	eef0 7a41 	vmov.f32	s15, s2
d00554c4:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00554c8:	ed94 0a06 	vldr	s0, [r4, #24]
d00554cc:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d00554d0:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d00554d4:	edd4 0a07 	vldr	s1, [r4, #28]
d00554d8:	ed94 1a08 	vldr	s2, [r4, #32]
d00554dc:	f7ff fb5a 	bl	d0054b94 <vec3Normalize>
d00554e0:	eef0 1a40 	vmov.f32	s3, s0
d00554e4:	eeb0 2a60 	vmov.f32	s4, s1
d00554e8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00554ec:	eef0 2a41 	vmov.f32	s5, s2
d00554f0:	edc4 0a07 	vstr	s1, [r4, #28]
d00554f4:	ed84 1a08 	vstr	s2, [r4, #32]
d00554f8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00554fc:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0055500:	edc4 1a06 	vstr	s3, [r4, #24]
d0055504:	f7ff fb30 	bl	d0054b68 <vec3Cross>
d0055508:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005550c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055510:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055514:	f7ff fb3e 	bl	d0054b94 <vec3Normalize>
d0055518:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005551c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055520:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055524:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055528:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005552c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055530:	f7ff fb1a 	bl	d0054b68 <vec3Cross>
d0055534:	ed84 0a06 	vstr	s0, [r4, #24]
d0055538:	edc4 0a07 	vstr	s1, [r4, #28]
d005553c:	ed84 1a08 	vstr	s2, [r4, #32]
d0055540:	f7ff fb28 	bl	d0054b94 <vec3Normalize>
d0055544:	ed84 0a06 	vstr	s0, [r4, #24]
d0055548:	edc4 0a07 	vstr	s1, [r4, #28]
d005554c:	ed84 1a08 	vstr	s2, [r4, #32]
d0055550:	bd10      	pop	{r4, pc}
d0055552:	bf00      	nop

d0055554 <cameraCreate>:
d0055554:	b510      	push	{r4, lr}
d0055556:	4604      	mov	r4, r0
d0055558:	2260      	movs	r2, #96	; 0x60
d005555a:	4902      	ldr	r1, [pc, #8]	; (d0055564 <cameraCreate+0x10>)
d005555c:	f003 fea8 	bl	d00592b0 <memcpy>
d0055560:	4620      	mov	r0, r4
d0055562:	bd10      	pop	{r4, pc}
d0055564:	d005ad40 	.word	0xd005ad40

d0055568 <cameraSetPosition>:
d0055568:	b084      	sub	sp, #16
d005556a:	ed8d 0a01 	vstr	s0, [sp, #4]
d005556e:	edcd 0a02 	vstr	s1, [sp, #8]
d0055572:	ed8d 1a03 	vstr	s2, [sp, #12]
d0055576:	b128      	cbz	r0, d0055584 <cameraSetPosition+0x1c>
d0055578:	aa04      	add	r2, sp, #16
d005557a:	4603      	mov	r3, r0
d005557c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0055580:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0055584:	b004      	add	sp, #16
d0055586:	4770      	bx	lr

d0055588 <cameraRotate>:
d0055588:	2800      	cmp	r0, #0
d005558a:	f000 80a8 	beq.w	d00556de <cameraRotate+0x156>
d005558e:	b510      	push	{r4, lr}
d0055590:	ed2d 8b04 	vpush	{d8-d9}
d0055594:	edc0 0a04 	vstr	s1, [r0, #16]
d0055598:	b084      	sub	sp, #16
d005559a:	ed80 1a05 	vstr	s2, [r0, #20]
d005559e:	eef0 8a40 	vmov.f32	s17, s0
d00555a2:	ed80 0a03 	vstr	s0, [r0, #12]
d00555a6:	4604      	mov	r4, r0
d00555a8:	eeb0 8a60 	vmov.f32	s16, s1
d00555ac:	f004 fc9c 	bl	d0059ee8 <cosf>
d00555b0:	eeb0 1a40 	vmov.f32	s2, s0
d00555b4:	eeb0 0a68 	vmov.f32	s0, s17
d00555b8:	eef0 8a41 	vmov.f32	s17, s2
d00555bc:	f004 fe78 	bl	d005a2b0 <sinf>
d00555c0:	eeb0 9a40 	vmov.f32	s18, s0
d00555c4:	eeb0 0a48 	vmov.f32	s0, s16
d00555c8:	f004 fc8e 	bl	d0059ee8 <cosf>
d00555cc:	eeb0 1a40 	vmov.f32	s2, s0
d00555d0:	eeb0 0a48 	vmov.f32	s0, s16
d00555d4:	eeb0 8a41 	vmov.f32	s16, s2
d00555d8:	f004 fe6a 	bl	d005a2b0 <sinf>
d00555dc:	eef0 0a40 	vmov.f32	s1, s0
d00555e0:	ee28 1a88 	vmul.f32	s2, s17, s16
d00555e4:	ee29 9a08 	vmul.f32	s18, s18, s16
d00555e8:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00555ec:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00555f0:	eeb0 0a49 	vmov.f32	s0, s18
d00555f4:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d00555f8:	f7ff facc 	bl	d0054b94 <vec3Normalize>
d00555fc:	eef0 7a41 	vmov.f32	s15, s2
d0055600:	eeb0 7a60 	vmov.f32	s14, s1
d0055604:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0055738 <cameraRotate+0x1b0>
d0055608:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d005560c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0055610:	eeb0 0a41 	vmov.f32	s0, s2
d0055614:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0055618:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d005561c:	f7ff fbba 	bl	d0054d94 <vec3>
d0055620:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0055624:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055628:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005562c:	f7ff fa9c 	bl	d0054b68 <vec3Cross>
d0055630:	eef0 1a40 	vmov.f32	s3, s0
d0055634:	eeb0 2a60 	vmov.f32	s4, s1
d0055638:	ed84 0a06 	vstr	s0, [r4, #24]
d005563c:	eef0 2a41 	vmov.f32	s5, s2
d0055640:	edc4 0a07 	vstr	s1, [r4, #28]
d0055644:	ed84 1a08 	vstr	s2, [r4, #32]
d0055648:	f7ff fa82 	bl	d0054b50 <vec3Dot>
d005564c:	eddf 7a3b 	vldr	s15, [pc, #236]	; d005573c <cameraRotate+0x1b4>
d0055650:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0055654:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055658:	d438      	bmi.n	d00556cc <cameraRotate+0x144>
d005565a:	ed94 0a06 	vldr	s0, [r4, #24]
d005565e:	edd4 0a07 	vldr	s1, [r4, #28]
d0055662:	ed94 1a08 	vldr	s2, [r4, #32]
d0055666:	f7ff fa95 	bl	d0054b94 <vec3Normalize>
d005566a:	eef0 1a40 	vmov.f32	s3, s0
d005566e:	ed84 0a06 	vstr	s0, [r4, #24]
d0055672:	eeb0 2a60 	vmov.f32	s4, s1
d0055676:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005567a:	eef0 2a41 	vmov.f32	s5, s2
d005567e:	edc4 0a07 	vstr	s1, [r4, #28]
d0055682:	ed84 1a08 	vstr	s2, [r4, #32]
d0055686:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d005568a:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d005568e:	f7ff fa6b 	bl	d0054b68 <vec3Cross>
d0055692:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055696:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005569a:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005569e:	f7ff fa79 	bl	d0054b94 <vec3Normalize>
d00556a2:	ed94 3a05 	vldr	s6, [r4, #20]
d00556a6:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00556aa:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00556ae:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00556b2:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00556b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00556ba:	d111      	bne.n	d00556e0 <cameraRotate+0x158>
d00556bc:	4620      	mov	r0, r4
d00556be:	b004      	add	sp, #16
d00556c0:	ecbd 8b04 	vpop	{d8-d9}
d00556c4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00556c8:	f7ff beee 	b.w	d00554a8 <cameraNormalize>
d00556cc:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d0055738 <cameraRotate+0x1b0>
d00556d0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00556d4:	eef0 0a41 	vmov.f32	s1, s2
d00556d8:	f7ff fb5c 	bl	d0054d94 <vec3>
d00556dc:	e7c5      	b.n	d005566a <cameraRotate+0xe2>
d00556de:	4770      	bx	lr
d00556e0:	ed94 0a06 	vldr	s0, [r4, #24]
d00556e4:	edd4 0a07 	vldr	s1, [r4, #28]
d00556e8:	ed94 1a08 	vldr	s2, [r4, #32]
d00556ec:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00556f0:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00556f4:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00556f8:	f7ff fa9c 	bl	d0054c34 <rotateAroundAxis>
d00556fc:	ed84 0a06 	vstr	s0, [r4, #24]
d0055700:	edc4 0a07 	vstr	s1, [r4, #28]
d0055704:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0055708:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d005570c:	ed84 1a08 	vstr	s2, [r4, #32]
d0055710:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0055714:	ed94 3a05 	vldr	s6, [r4, #20]
d0055718:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005571c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055720:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055724:	f7ff fa86 	bl	d0054c34 <rotateAroundAxis>
d0055728:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005572c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055730:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055734:	e7c2      	b.n	d00556bc <cameraRotate+0x134>
d0055736:	bf00      	nop
d0055738:	00000000 	.word	0x00000000
d005573c:	322bcc77 	.word	0x322bcc77

d0055740 <cameraTurn>:
d0055740:	2800      	cmp	r0, #0
d0055742:	f000 8144 	beq.w	d00559ce <cameraTurn+0x28e>
d0055746:	b570      	push	{r4, r5, r6, lr}
d0055748:	4604      	mov	r4, r0
d005574a:	ed2d 8b04 	vpush	{d8-d9}
d005574e:	eef0 8a40 	vmov.f32	s17, s0
d0055752:	b08a      	sub	sp, #40	; 0x28
d0055754:	eeb0 9a60 	vmov.f32	s18, s1
d0055758:	eeb0 8a41 	vmov.f32	s16, s2
d005575c:	bb69      	cbnz	r1, d00557ba <cameraTurn+0x7a>
d005575e:	f100 0318 	add.w	r3, r0, #24
d0055762:	ae01      	add	r6, sp, #4
d0055764:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0055768:	eeb5 9a40 	vcmp.f32	s18, #0.0
d005576c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0055770:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0055774:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055778:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d005577c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0055780:	ae04      	add	r6, sp, #16
d0055782:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0055786:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005578a:	ab0a      	add	r3, sp, #40	; 0x28
d005578c:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0055790:	d14a      	bne.n	d0055828 <cameraTurn+0xe8>
d0055792:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055796:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005579a:	f040 808d 	bne.w	d00558b8 <cameraTurn+0x178>
d005579e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00557a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00557a6:	f040 80cf 	bne.w	d0055948 <cameraTurn+0x208>
d00557aa:	4620      	mov	r0, r4
d00557ac:	b00a      	add	sp, #40	; 0x28
d00557ae:	ecbd 8b04 	vpop	{d8-d9}
d00557b2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d00557b6:	f7ff be77 	b.w	d00554a8 <cameraNormalize>
d00557ba:	ed9f 1a85 	vldr	s2, [pc, #532]	; d00559d0 <cameraTurn+0x290>
d00557be:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00557c2:	eef0 0a41 	vmov.f32	s1, s2
d00557c6:	f7ff fae5 	bl	d0054d94 <vec3>
d00557ca:	eef0 7a41 	vmov.f32	s15, s2
d00557ce:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00559d0 <cameraTurn+0x290>
d00557d2:	eeb0 7a60 	vmov.f32	s14, s1
d00557d6:	ed8d 0a01 	vstr	s0, [sp, #4]
d00557da:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00557de:	edcd 7a03 	vstr	s15, [sp, #12]
d00557e2:	eeb0 0a41 	vmov.f32	s0, s2
d00557e6:	ed8d 7a02 	vstr	s14, [sp, #8]
d00557ea:	f7ff fad3 	bl	d0054d94 <vec3>
d00557ee:	eeb0 7a60 	vmov.f32	s14, s1
d00557f2:	eddf 0a77 	vldr	s1, [pc, #476]	; d00559d0 <cameraTurn+0x290>
d00557f6:	eef0 7a41 	vmov.f32	s15, s2
d00557fa:	ed8d 0a04 	vstr	s0, [sp, #16]
d00557fe:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0055802:	eeb0 0a60 	vmov.f32	s0, s1
d0055806:	ed8d 7a05 	vstr	s14, [sp, #20]
d005580a:	edcd 7a06 	vstr	s15, [sp, #24]
d005580e:	f7ff fac1 	bl	d0054d94 <vec3>
d0055812:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0055816:	edcd 0a08 	vstr	s1, [sp, #32]
d005581a:	ed8d 0a07 	vstr	s0, [sp, #28]
d005581e:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0055822:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055826:	d0b4      	beq.n	d0055792 <cameraTurn+0x52>
d0055828:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005582c:	eeb0 3a49 	vmov.f32	s6, s18
d0055830:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0055834:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0055838:	eddd 1a04 	vldr	s3, [sp, #16]
d005583c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055840:	eddd 2a06 	vldr	s5, [sp, #24]
d0055844:	f7ff f9f6 	bl	d0054c34 <rotateAroundAxis>
d0055848:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d005584c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0055850:	eeb0 3a49 	vmov.f32	s6, s18
d0055854:	ed94 0a06 	vldr	s0, [r4, #24]
d0055858:	edd4 0a07 	vldr	s1, [r4, #28]
d005585c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0055860:	ed94 1a08 	vldr	s2, [r4, #32]
d0055864:	eddd 1a04 	vldr	s3, [sp, #16]
d0055868:	ed9d 2a05 	vldr	s4, [sp, #20]
d005586c:	eddd 2a06 	vldr	s5, [sp, #24]
d0055870:	f7ff f9e0 	bl	d0054c34 <rotateAroundAxis>
d0055874:	eeb0 3a49 	vmov.f32	s6, s18
d0055878:	ed84 0a06 	vstr	s0, [r4, #24]
d005587c:	edc4 0a07 	vstr	s1, [r4, #28]
d0055880:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0055884:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0055888:	ed84 1a08 	vstr	s2, [r4, #32]
d005588c:	eddd 1a04 	vldr	s3, [sp, #16]
d0055890:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0055894:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055898:	eddd 2a06 	vldr	s5, [sp, #24]
d005589c:	f7ff f9ca 	bl	d0054c34 <rotateAroundAxis>
d00558a0:	eef5 8a40 	vcmp.f32	s17, #0.0
d00558a4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00558a8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00558ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558b0:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00558b4:	f43f af73 	beq.w	d005579e <cameraTurn+0x5e>
d00558b8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00558bc:	eeb0 3a68 	vmov.f32	s6, s17
d00558c0:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00558c4:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00558c8:	eddd 1a01 	vldr	s3, [sp, #4]
d00558cc:	ed9d 2a02 	vldr	s4, [sp, #8]
d00558d0:	eddd 2a03 	vldr	s5, [sp, #12]
d00558d4:	f7ff f9ae 	bl	d0054c34 <rotateAroundAxis>
d00558d8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00558dc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00558e0:	eeb0 3a68 	vmov.f32	s6, s17
d00558e4:	ed94 0a06 	vldr	s0, [r4, #24]
d00558e8:	edd4 0a07 	vldr	s1, [r4, #28]
d00558ec:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00558f0:	ed94 1a08 	vldr	s2, [r4, #32]
d00558f4:	eddd 1a01 	vldr	s3, [sp, #4]
d00558f8:	ed9d 2a02 	vldr	s4, [sp, #8]
d00558fc:	eddd 2a03 	vldr	s5, [sp, #12]
d0055900:	f7ff f998 	bl	d0054c34 <rotateAroundAxis>
d0055904:	eeb0 3a68 	vmov.f32	s6, s17
d0055908:	ed84 0a06 	vstr	s0, [r4, #24]
d005590c:	edc4 0a07 	vstr	s1, [r4, #28]
d0055910:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0055914:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0055918:	ed84 1a08 	vstr	s2, [r4, #32]
d005591c:	eddd 1a01 	vldr	s3, [sp, #4]
d0055920:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0055924:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055928:	eddd 2a03 	vldr	s5, [sp, #12]
d005592c:	f7ff f982 	bl	d0054c34 <rotateAroundAxis>
d0055930:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055934:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055938:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005593c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055940:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055944:	f43f af31 	beq.w	d00557aa <cameraTurn+0x6a>
d0055948:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005594c:	eeb0 3a48 	vmov.f32	s6, s16
d0055950:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0055954:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0055958:	eddd 1a07 	vldr	s3, [sp, #28]
d005595c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055960:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055964:	f7ff f966 	bl	d0054c34 <rotateAroundAxis>
d0055968:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d005596c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0055970:	eeb0 3a48 	vmov.f32	s6, s16
d0055974:	ed94 0a06 	vldr	s0, [r4, #24]
d0055978:	edd4 0a07 	vldr	s1, [r4, #28]
d005597c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0055980:	ed94 1a08 	vldr	s2, [r4, #32]
d0055984:	eddd 1a07 	vldr	s3, [sp, #28]
d0055988:	ed9d 2a08 	vldr	s4, [sp, #32]
d005598c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055990:	f7ff f950 	bl	d0054c34 <rotateAroundAxis>
d0055994:	ed84 0a06 	vstr	s0, [r4, #24]
d0055998:	edc4 0a07 	vstr	s1, [r4, #28]
d005599c:	eeb0 3a48 	vmov.f32	s6, s16
d00559a0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00559a4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00559a8:	ed84 1a08 	vstr	s2, [r4, #32]
d00559ac:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00559b0:	eddd 1a07 	vldr	s3, [sp, #28]
d00559b4:	ed9d 2a08 	vldr	s4, [sp, #32]
d00559b8:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00559bc:	f7ff f93a 	bl	d0054c34 <rotateAroundAxis>
d00559c0:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00559c4:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00559c8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00559cc:	e6ed      	b.n	d00557aa <cameraTurn+0x6a>
d00559ce:	4770      	bx	lr
d00559d0:	00000000 	.word	0x00000000

d00559d4 <worldToCamera>:
d00559d4:	b084      	sub	sp, #16
d00559d6:	b510      	push	{r4, lr}
d00559d8:	ed2d 8b02 	vpush	{d8}
d00559dc:	b0ac      	sub	sp, #176	; 0xb0
d00559de:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d00559e2:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d00559e6:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00559ea:	f024 041f 	bic.w	r4, r4, #31
d00559ee:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d00559f2:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d00559f6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d00559fa:	2260      	movs	r2, #96	; 0x60
d00559fc:	4661      	mov	r1, ip
d00559fe:	4620      	mov	r0, r4
d0055a00:	f003 fc56 	bl	d00592b0 <memcpy>
d0055a04:	edd4 7a00 	vldr	s15, [r4]
d0055a08:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0055a0c:	ed94 7a01 	vldr	s14, [r4, #4]
d0055a10:	ee30 0a67 	vsub.f32	s0, s0, s15
d0055a14:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0055a18:	edd4 7a02 	vldr	s15, [r4, #8]
d0055a1c:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0055a20:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0055a24:	edd4 1a06 	vldr	s3, [r4, #24]
d0055a28:	ee31 1a67 	vsub.f32	s2, s2, s15
d0055a2c:	ed94 2a07 	vldr	s4, [r4, #28]
d0055a30:	edd4 2a08 	vldr	s5, [r4, #32]
d0055a34:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0055a38:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0055a3c:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0055a40:	f7ff f886 	bl	d0054b50 <vec3Dot>
d0055a44:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0055a48:	eef0 8a40 	vmov.f32	s17, s0
d0055a4c:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0055a50:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0055a54:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0055a58:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0055a5c:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0055a60:	f7ff f876 	bl	d0054b50 <vec3Dot>
d0055a64:	eeb0 8a40 	vmov.f32	s16, s0
d0055a68:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0055a6c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0055a70:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0055a74:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0055a78:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055a7c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055a80:	f7ff f866 	bl	d0054b50 <vec3Dot>
d0055a84:	eef0 0a48 	vmov.f32	s1, s16
d0055a88:	eeb0 1a40 	vmov.f32	s2, s0
d0055a8c:	eeb0 0a68 	vmov.f32	s0, s17
d0055a90:	b02c      	add	sp, #176	; 0xb0
d0055a92:	ecbd 8b02 	vpop	{d8}
d0055a96:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0055a9a:	b004      	add	sp, #16
d0055a9c:	4770      	bx	lr
d0055a9e:	bf00      	nop

d0055aa0 <cameraSetRange>:
d0055aa0:	b1d8      	cbz	r0, d0055ada <cameraSetRange+0x3a>
d0055aa2:	eddf 7a11 	vldr	s15, [pc, #68]	; d0055ae8 <cameraSetRange+0x48>
d0055aa6:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0055aaa:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0055aae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055ab2:	da13      	bge.n	d0055adc <cameraSetRange+0x3c>
d0055ab4:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0055ab8:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0055abc:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0055ac0:	4b0a      	ldr	r3, [pc, #40]	; (d0055aec <cameraSetRange+0x4c>)
d0055ac2:	490b      	ldr	r1, [pc, #44]	; (d0055af0 <cameraSetRange+0x50>)
d0055ac4:	4a0b      	ldr	r2, [pc, #44]	; (d0055af4 <cameraSetRange+0x54>)
d0055ac6:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0055aca:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0055ace:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0055ad2:	6483      	str	r3, [r0, #72]	; 0x48
d0055ad4:	64c3      	str	r3, [r0, #76]	; 0x4c
d0055ad6:	6501      	str	r1, [r0, #80]	; 0x50
d0055ad8:	6542      	str	r2, [r0, #84]	; 0x54
d0055ada:	4770      	bx	lr
d0055adc:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0055ae0:	ee70 0a27 	vadd.f32	s1, s0, s15
d0055ae4:	e7ec      	b.n	d0055ac0 <cameraSetRange+0x20>
d0055ae6:	bf00      	nop
d0055ae8:	3a83126f 	.word	0x3a83126f
d0055aec:	43700000 	.word	0x43700000
d0055af0:	43200000 	.word	0x43200000
d0055af4:	3f2aaaab 	.word	0x3f2aaaab

d0055af8 <cameraMove>:
d0055af8:	b3a8      	cbz	r0, d0055b66 <cameraMove+0x6e>
d0055afa:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0055afe:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0055b02:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d0055b06:	ee20 7a87 	vmul.f32	s14, s1, s14
d0055b0a:	edd0 5a06 	vldr	s11, [r0, #24]
d0055b0e:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0055b12:	ed90 6a08 	vldr	s12, [r0, #32]
d0055b16:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0055b1a:	edd0 6a07 	vldr	s13, [r0, #28]
d0055b1e:	eea5 7a80 	vfma.f32	s14, s11, s0
d0055b22:	edd0 4a01 	vldr	s9, [r0, #4]
d0055b26:	eee6 7a80 	vfma.f32	s15, s13, s0
d0055b2a:	ed90 5a02 	vldr	s10, [r0, #8]
d0055b2e:	eee6 0a00 	vfma.f32	s1, s12, s0
d0055b32:	edd0 6a00 	vldr	s13, [r0]
d0055b36:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0055b3a:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0055b3e:	ee37 7a26 	vadd.f32	s14, s14, s13
d0055b42:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0055b46:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0055b4a:	ee70 0a85 	vadd.f32	s1, s1, s10
d0055b4e:	eea5 7a81 	vfma.f32	s14, s11, s2
d0055b52:	eee6 7a01 	vfma.f32	s15, s12, s2
d0055b56:	eee6 0a81 	vfma.f32	s1, s13, s2
d0055b5a:	ed80 7a00 	vstr	s14, [r0]
d0055b5e:	edc0 7a01 	vstr	s15, [r0, #4]
d0055b62:	edc0 0a02 	vstr	s1, [r0, #8]
d0055b66:	4770      	bx	lr

d0055b68 <normalizeEntity.part.0>:
d0055b68:	edd0 0a05 	vldr	s1, [r0, #20]
d0055b6c:	ed90 1a06 	vldr	s2, [r0, #24]
d0055b70:	ed90 0a04 	vldr	s0, [r0, #16]
d0055b74:	b510      	push	{r4, lr}
d0055b76:	4604      	mov	r4, r0
d0055b78:	f7ff f80c 	bl	d0054b94 <vec3Normalize>
d0055b7c:	eeb0 7a60 	vmov.f32	s14, s1
d0055b80:	eef0 7a41 	vmov.f32	s15, s2
d0055b84:	ed84 0a04 	vstr	s0, [r4, #16]
d0055b88:	ed94 0a07 	vldr	s0, [r4, #28]
d0055b8c:	ed84 7a05 	vstr	s14, [r4, #20]
d0055b90:	edc4 7a06 	vstr	s15, [r4, #24]
d0055b94:	edd4 0a08 	vldr	s1, [r4, #32]
d0055b98:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055b9c:	f7fe fffa 	bl	d0054b94 <vec3Normalize>
d0055ba0:	eef0 1a40 	vmov.f32	s3, s0
d0055ba4:	eeb0 2a60 	vmov.f32	s4, s1
d0055ba8:	ed94 0a04 	vldr	s0, [r4, #16]
d0055bac:	eef0 2a41 	vmov.f32	s5, s2
d0055bb0:	edc4 0a08 	vstr	s1, [r4, #32]
d0055bb4:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0055bb8:	edd4 0a05 	vldr	s1, [r4, #20]
d0055bbc:	ed94 1a06 	vldr	s2, [r4, #24]
d0055bc0:	edc4 1a07 	vstr	s3, [r4, #28]
d0055bc4:	f7fe ffd0 	bl	d0054b68 <vec3Cross>
d0055bc8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055bcc:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055bd0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055bd4:	f7fe ffde 	bl	d0054b94 <vec3Normalize>
d0055bd8:	edd4 1a04 	vldr	s3, [r4, #16]
d0055bdc:	ed94 2a05 	vldr	s4, [r4, #20]
d0055be0:	edd4 2a06 	vldr	s5, [r4, #24]
d0055be4:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055be8:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055bec:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055bf0:	f7fe ffba 	bl	d0054b68 <vec3Cross>
d0055bf4:	ed84 0a07 	vstr	s0, [r4, #28]
d0055bf8:	edc4 0a08 	vstr	s1, [r4, #32]
d0055bfc:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0055c00:	f7fe ffc8 	bl	d0054b94 <vec3Normalize>
d0055c04:	ed84 0a07 	vstr	s0, [r4, #28]
d0055c08:	edc4 0a08 	vstr	s1, [r4, #32]
d0055c0c:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0055c10:	bd10      	pop	{r4, pc}
d0055c12:	bf00      	nop

d0055c14 <entityRotation.part.0>:
d0055c14:	b5f0      	push	{r4, r5, r6, r7, lr}
d0055c16:	4eb7      	ldr	r6, [pc, #732]	; (d0055ef4 <entityRotation.part.0+0x2e0>)
d0055c18:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0055c1c:	ed2d 8b04 	vpush	{d8-d9}
d0055c20:	eb06 1444 	add.w	r4, r6, r4, lsl #5
d0055c24:	eeb0 9a40 	vmov.f32	s18, s0
d0055c28:	eef0 8a60 	vmov.f32	s17, s1
d0055c2c:	b08b      	sub	sp, #44	; 0x2c
d0055c2e:	eeb0 8a41 	vmov.f32	s16, s2
d0055c32:	2900      	cmp	r1, #0
d0055c34:	d040      	beq.n	d0055cb8 <entityRotation.part.0+0xa4>
d0055c36:	eddf 1ab0 	vldr	s3, [pc, #704]	; d0055ef8 <entityRotation.part.0+0x2e4>
d0055c3a:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0055c3e:	eeb4 0a61 	vcmp.f32	s0, s3
d0055c42:	edc4 1a08 	vstr	s3, [r4, #32]
d0055c46:	ed84 2a07 	vstr	s4, [r4, #28]
d0055c4a:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0055c4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055c52:	ed84 2a06 	vstr	s4, [r4, #24]
d0055c56:	ed8d 2a02 	vstr	s4, [sp, #8]
d0055c5a:	ed8d 2a04 	vstr	s4, [sp, #16]
d0055c5e:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0055c62:	edc4 1a09 	vstr	s3, [r4, #36]	; 0x24
d0055c66:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0055c6a:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0055c6e:	edc4 1a04 	vstr	s3, [r4, #16]
d0055c72:	edc4 1a05 	vstr	s3, [r4, #20]
d0055c76:	edcd 1a01 	vstr	s3, [sp, #4]
d0055c7a:	edcd 1a03 	vstr	s3, [sp, #12]
d0055c7e:	edcd 1a05 	vstr	s3, [sp, #20]
d0055c82:	edcd 1a06 	vstr	s3, [sp, #24]
d0055c86:	edcd 1a07 	vstr	s3, [sp, #28]
d0055c8a:	edcd 1a08 	vstr	s3, [sp, #32]
d0055c8e:	d17e      	bne.n	d0055d8e <entityRotation.part.0+0x17a>
d0055c90:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055c94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055c98:	f040 80c9 	bne.w	d0055e2e <entityRotation.part.0+0x21a>
d0055c9c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055ca0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055ca4:	f040 8117 	bne.w	d0055ed6 <entityRotation.part.0+0x2c2>
d0055ca8:	4620      	mov	r0, r4
d0055caa:	b00b      	add	sp, #44	; 0x2c
d0055cac:	ecbd 8b04 	vpop	{d8-d9}
d0055cb0:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0055cb4:	f7ff bf58 	b.w	d0055b68 <normalizeEntity.part.0>
d0055cb8:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0055cbc:	4605      	mov	r5, r0
d0055cbe:	0047      	lsls	r7, r0, #1
d0055cc0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055cc4:	f040 811a 	bne.w	d0055efc <entityRotation.part.0+0x2e8>
d0055cc8:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055ccc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055cd0:	f040 8170 	bne.w	d0055fb4 <entityRotation.part.0+0x3a0>
d0055cd4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055cd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055cdc:	d0e4      	beq.n	d0055ca8 <entityRotation.part.0+0x94>
d0055cde:	443d      	add	r5, r7
d0055ce0:	ab0a      	add	r3, sp, #40	; 0x28
d0055ce2:	eeb0 3a48 	vmov.f32	s6, s16
d0055ce6:	ed94 0a04 	vldr	s0, [r4, #16]
d0055cea:	eb06 1545 	add.w	r5, r6, r5, lsl #5
d0055cee:	edd4 0a05 	vldr	s1, [r4, #20]
d0055cf2:	ed94 1a06 	vldr	s2, [r4, #24]
d0055cf6:	3510      	adds	r5, #16
d0055cf8:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0055cfc:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0055d00:	eddd 1a07 	vldr	s3, [sp, #28]
d0055d04:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055d08:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055d0c:	f7fe ff92 	bl	d0054c34 <rotateAroundAxis>
d0055d10:	eef0 6a40 	vmov.f32	s13, s0
d0055d14:	eeb0 7a60 	vmov.f32	s14, s1
d0055d18:	ed94 0a07 	vldr	s0, [r4, #28]
d0055d1c:	eef0 7a41 	vmov.f32	s15, s2
d0055d20:	edd4 0a08 	vldr	s1, [r4, #32]
d0055d24:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055d28:	eeb0 3a48 	vmov.f32	s6, s16
d0055d2c:	eddd 1a07 	vldr	s3, [sp, #28]
d0055d30:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055d34:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055d38:	edc4 6a04 	vstr	s13, [r4, #16]
d0055d3c:	ed84 7a05 	vstr	s14, [r4, #20]
d0055d40:	edc4 7a06 	vstr	s15, [r4, #24]
d0055d44:	f7fe ff76 	bl	d0054c34 <rotateAroundAxis>
d0055d48:	eef0 6a40 	vmov.f32	s13, s0
d0055d4c:	eeb0 7a60 	vmov.f32	s14, s1
d0055d50:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055d54:	eef0 7a41 	vmov.f32	s15, s2
d0055d58:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055d5c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055d60:	eeb0 3a48 	vmov.f32	s6, s16
d0055d64:	eddd 1a07 	vldr	s3, [sp, #28]
d0055d68:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055d6c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055d70:	edc4 6a07 	vstr	s13, [r4, #28]
d0055d74:	ed84 7a08 	vstr	s14, [r4, #32]
d0055d78:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055d7c:	f7fe ff5a 	bl	d0054c34 <rotateAroundAxis>
d0055d80:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055d84:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055d88:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055d8c:	e78c      	b.n	d0055ca8 <entityRotation.part.0+0x94>
d0055d8e:	eeb0 1a42 	vmov.f32	s2, s4
d0055d92:	eef0 0a61 	vmov.f32	s1, s3
d0055d96:	eeb0 3a40 	vmov.f32	s6, s0
d0055d9a:	eeb0 0a61 	vmov.f32	s0, s3
d0055d9e:	eef0 2a61 	vmov.f32	s5, s3
d0055da2:	f7fe ff47 	bl	d0054c34 <rotateAroundAxis>
d0055da6:	eeb0 7a60 	vmov.f32	s14, s1
d0055daa:	eef0 6a40 	vmov.f32	s13, s0
d0055dae:	edd4 0a08 	vldr	s1, [r4, #32]
d0055db2:	eef0 7a41 	vmov.f32	s15, s2
d0055db6:	ed94 0a07 	vldr	s0, [r4, #28]
d0055dba:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055dbe:	eeb0 3a49 	vmov.f32	s6, s18
d0055dc2:	eddd 1a01 	vldr	s3, [sp, #4]
d0055dc6:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055dca:	eddd 2a03 	vldr	s5, [sp, #12]
d0055dce:	edc4 6a04 	vstr	s13, [r4, #16]
d0055dd2:	ed84 7a05 	vstr	s14, [r4, #20]
d0055dd6:	edc4 7a06 	vstr	s15, [r4, #24]
d0055dda:	f7fe ff2b 	bl	d0054c34 <rotateAroundAxis>
d0055dde:	eef0 6a40 	vmov.f32	s13, s0
d0055de2:	eeb0 7a60 	vmov.f32	s14, s1
d0055de6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055dea:	eef0 7a41 	vmov.f32	s15, s2
d0055dee:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055df2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055df6:	eeb0 3a49 	vmov.f32	s6, s18
d0055dfa:	eddd 1a01 	vldr	s3, [sp, #4]
d0055dfe:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055e02:	eddd 2a03 	vldr	s5, [sp, #12]
d0055e06:	edc4 6a07 	vstr	s13, [r4, #28]
d0055e0a:	ed84 7a08 	vstr	s14, [r4, #32]
d0055e0e:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055e12:	f7fe ff0f 	bl	d0054c34 <rotateAroundAxis>
d0055e16:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055e1a:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055e1e:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055e22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055e26:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055e2a:	f43f af37 	beq.w	d0055c9c <entityRotation.part.0+0x88>
d0055e2e:	ed94 0a04 	vldr	s0, [r4, #16]
d0055e32:	eeb0 3a68 	vmov.f32	s6, s17
d0055e36:	edd4 0a05 	vldr	s1, [r4, #20]
d0055e3a:	ed94 1a06 	vldr	s2, [r4, #24]
d0055e3e:	eddd 1a04 	vldr	s3, [sp, #16]
d0055e42:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055e46:	eddd 2a06 	vldr	s5, [sp, #24]
d0055e4a:	f7fe fef3 	bl	d0054c34 <rotateAroundAxis>
d0055e4e:	eef0 6a40 	vmov.f32	s13, s0
d0055e52:	eeb0 7a60 	vmov.f32	s14, s1
d0055e56:	ed94 0a07 	vldr	s0, [r4, #28]
d0055e5a:	eef0 7a41 	vmov.f32	s15, s2
d0055e5e:	edd4 0a08 	vldr	s1, [r4, #32]
d0055e62:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055e66:	eeb0 3a68 	vmov.f32	s6, s17
d0055e6a:	eddd 1a04 	vldr	s3, [sp, #16]
d0055e6e:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055e72:	eddd 2a06 	vldr	s5, [sp, #24]
d0055e76:	edc4 6a04 	vstr	s13, [r4, #16]
d0055e7a:	ed84 7a05 	vstr	s14, [r4, #20]
d0055e7e:	edc4 7a06 	vstr	s15, [r4, #24]
d0055e82:	f7fe fed7 	bl	d0054c34 <rotateAroundAxis>
d0055e86:	eef0 6a40 	vmov.f32	s13, s0
d0055e8a:	eeb0 7a60 	vmov.f32	s14, s1
d0055e8e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055e92:	eef0 7a41 	vmov.f32	s15, s2
d0055e96:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055e9a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055e9e:	eeb0 3a68 	vmov.f32	s6, s17
d0055ea2:	eddd 1a04 	vldr	s3, [sp, #16]
d0055ea6:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055eaa:	eddd 2a06 	vldr	s5, [sp, #24]
d0055eae:	edc4 6a07 	vstr	s13, [r4, #28]
d0055eb2:	ed84 7a08 	vstr	s14, [r4, #32]
d0055eb6:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055eba:	f7fe febb 	bl	d0054c34 <rotateAroundAxis>
d0055ebe:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055ec2:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055ec6:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055eca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055ece:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055ed2:	f43f aee9 	beq.w	d0055ca8 <entityRotation.part.0+0x94>
d0055ed6:	eeb0 3a48 	vmov.f32	s6, s16
d0055eda:	eddd 1a07 	vldr	s3, [sp, #28]
d0055ede:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055ee2:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055ee6:	ed94 0a04 	vldr	s0, [r4, #16]
d0055eea:	edd4 0a05 	vldr	s1, [r4, #20]
d0055eee:	ed94 1a06 	vldr	s2, [r4, #24]
d0055ef2:	e70b      	b.n	d0055d0c <entityRotation.part.0+0xf8>
d0055ef4:	d0127a60 	.word	0xd0127a60
d0055ef8:	00000000 	.word	0x00000000
d0055efc:	f104 0328 	add.w	r3, r4, #40	; 0x28
d0055f00:	f10d 0c04 	add.w	ip, sp, #4
d0055f04:	eeb0 3a40 	vmov.f32	s6, s0
d0055f08:	edd4 0a05 	vldr	s1, [r4, #20]
d0055f0c:	ed94 0a04 	vldr	s0, [r4, #16]
d0055f10:	ed94 1a06 	vldr	s2, [r4, #24]
d0055f14:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0055f18:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d0055f1c:	eddd 1a01 	vldr	s3, [sp, #4]
d0055f20:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055f24:	eddd 2a03 	vldr	s5, [sp, #12]
d0055f28:	f7fe fe84 	bl	d0054c34 <rotateAroundAxis>
d0055f2c:	eef0 6a40 	vmov.f32	s13, s0
d0055f30:	eeb0 7a60 	vmov.f32	s14, s1
d0055f34:	ed94 0a07 	vldr	s0, [r4, #28]
d0055f38:	eef0 7a41 	vmov.f32	s15, s2
d0055f3c:	edd4 0a08 	vldr	s1, [r4, #32]
d0055f40:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055f44:	eeb0 3a49 	vmov.f32	s6, s18
d0055f48:	eddd 1a01 	vldr	s3, [sp, #4]
d0055f4c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055f50:	eddd 2a03 	vldr	s5, [sp, #12]
d0055f54:	edc4 6a04 	vstr	s13, [r4, #16]
d0055f58:	ed84 7a05 	vstr	s14, [r4, #20]
d0055f5c:	edc4 7a06 	vstr	s15, [r4, #24]
d0055f60:	f7fe fe68 	bl	d0054c34 <rotateAroundAxis>
d0055f64:	eef0 6a40 	vmov.f32	s13, s0
d0055f68:	eeb0 7a60 	vmov.f32	s14, s1
d0055f6c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055f70:	eef0 7a41 	vmov.f32	s15, s2
d0055f74:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055f78:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055f7c:	eeb0 3a49 	vmov.f32	s6, s18
d0055f80:	eddd 1a01 	vldr	s3, [sp, #4]
d0055f84:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055f88:	eddd 2a03 	vldr	s5, [sp, #12]
d0055f8c:	edc4 6a07 	vstr	s13, [r4, #28]
d0055f90:	ed84 7a08 	vstr	s14, [r4, #32]
d0055f94:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055f98:	f7fe fe4c 	bl	d0054c34 <rotateAroundAxis>
d0055f9c:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055fa0:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055fa4:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055fa8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055fac:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055fb0:	f43f ae90 	beq.w	d0055cd4 <entityRotation.part.0+0xc0>
d0055fb4:	197b      	adds	r3, r7, r5
d0055fb6:	f10d 0c10 	add.w	ip, sp, #16
d0055fba:	ed94 0a04 	vldr	s0, [r4, #16]
d0055fbe:	eeb0 3a68 	vmov.f32	s6, s17
d0055fc2:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d0055fc6:	edd4 0a05 	vldr	s1, [r4, #20]
d0055fca:	ed94 1a06 	vldr	s2, [r4, #24]
d0055fce:	331c      	adds	r3, #28
d0055fd0:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0055fd4:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d0055fd8:	eddd 1a04 	vldr	s3, [sp, #16]
d0055fdc:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055fe0:	eddd 2a06 	vldr	s5, [sp, #24]
d0055fe4:	f7fe fe26 	bl	d0054c34 <rotateAroundAxis>
d0055fe8:	eef0 6a40 	vmov.f32	s13, s0
d0055fec:	eeb0 7a60 	vmov.f32	s14, s1
d0055ff0:	ed94 0a07 	vldr	s0, [r4, #28]
d0055ff4:	eef0 7a41 	vmov.f32	s15, s2
d0055ff8:	edd4 0a08 	vldr	s1, [r4, #32]
d0055ffc:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056000:	eeb0 3a68 	vmov.f32	s6, s17
d0056004:	eddd 1a04 	vldr	s3, [sp, #16]
d0056008:	ed9d 2a05 	vldr	s4, [sp, #20]
d005600c:	eddd 2a06 	vldr	s5, [sp, #24]
d0056010:	edc4 6a04 	vstr	s13, [r4, #16]
d0056014:	ed84 7a05 	vstr	s14, [r4, #20]
d0056018:	edc4 7a06 	vstr	s15, [r4, #24]
d005601c:	f7fe fe0a 	bl	d0054c34 <rotateAroundAxis>
d0056020:	eef0 6a40 	vmov.f32	s13, s0
d0056024:	eeb0 7a60 	vmov.f32	s14, s1
d0056028:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005602c:	eef0 7a41 	vmov.f32	s15, s2
d0056030:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056034:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056038:	eeb0 3a68 	vmov.f32	s6, s17
d005603c:	eddd 1a04 	vldr	s3, [sp, #16]
d0056040:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056044:	eddd 2a06 	vldr	s5, [sp, #24]
d0056048:	edc4 6a07 	vstr	s13, [r4, #28]
d005604c:	ed84 7a08 	vstr	s14, [r4, #32]
d0056050:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056054:	f7fe fdee 	bl	d0054c34 <rotateAroundAxis>
d0056058:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005605c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0056060:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0056064:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056068:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005606c:	f43f ae1c 	beq.w	d0055ca8 <entityRotation.part.0+0x94>
d0056070:	e635      	b.n	d0055cde <entityRotation.part.0+0xca>
d0056072:	bf00      	nop

d0056074 <meshComputeBoundsRadius>:
d0056074:	b1f0      	cbz	r0, d00560b4 <meshComputeBoundsRadius+0x40>
d0056076:	6803      	ldr	r3, [r0, #0]
d0056078:	b1e3      	cbz	r3, d00560b4 <meshComputeBoundsRadius+0x40>
d005607a:	6842      	ldr	r2, [r0, #4]
d005607c:	2a00      	cmp	r2, #0
d005607e:	dd19      	ble.n	d00560b4 <meshComputeBoundsRadius+0x40>
d0056080:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0056084:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d00560bc <meshComputeBoundsRadius+0x48>
d0056088:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d005608c:	edd3 7a01 	vldr	s15, [r3, #4]
d0056090:	330c      	adds	r3, #12
d0056092:	ed53 6a03 	vldr	s13, [r3, #-12]
d0056096:	ee67 7aa7 	vmul.f32	s15, s15, s15
d005609a:	ed13 7a01 	vldr	s14, [r3, #-4]
d005609e:	429a      	cmp	r2, r3
d00560a0:	eee6 7aa6 	vfma.f32	s15, s13, s13
d00560a4:	eee7 7a07 	vfma.f32	s15, s14, s14
d00560a8:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d00560ac:	d1ee      	bne.n	d005608c <meshComputeBoundsRadius+0x18>
d00560ae:	eeb1 0ac6 	vsqrt.f32	s0, s12
d00560b2:	4770      	bx	lr
d00560b4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00560bc <meshComputeBoundsRadius+0x48>
d00560b8:	4770      	bx	lr
d00560ba:	bf00      	nop
d00560bc:	00000000 	.word	0x00000000

d00560c0 <entityWorldSpawn>:
d00560c0:	b4f0      	push	{r4, r5, r6, r7}
d00560c2:	4d20      	ldr	r5, [pc, #128]	; (d0056144 <entityWorldSpawn+0x84>)
d00560c4:	b084      	sub	sp, #16
d00560c6:	2300      	movs	r3, #0
d00560c8:	462a      	mov	r2, r5
d00560ca:	ed8d 0a01 	vstr	s0, [sp, #4]
d00560ce:	edcd 0a02 	vstr	s1, [sp, #8]
d00560d2:	ed8d 1a03 	vstr	s2, [sp, #12]
d00560d6:	e003      	b.n	d00560e0 <entityWorldSpawn+0x20>
d00560d8:	3301      	adds	r3, #1
d00560da:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00560de:	d02b      	beq.n	d0056138 <entityWorldSpawn+0x78>
d00560e0:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d00560e4:	3260      	adds	r2, #96	; 0x60
d00560e6:	2c00      	cmp	r4, #0
d00560e8:	d1f6      	bne.n	d00560d8 <entityWorldSpawn+0x18>
d00560ea:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00560ee:	4f16      	ldr	r7, [pc, #88]	; (d0056148 <entityWorldSpawn+0x88>)
d00560f0:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00560f4:	2600      	movs	r6, #0
d00560f6:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d00560fa:	f240 1c01 	movw	ip, #257	; 0x101
d00560fe:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d0056102:	aa04      	add	r2, sp, #16
d0056104:	60e8      	str	r0, [r5, #12]
d0056106:	61e9      	str	r1, [r5, #28]
d0056108:	62e9      	str	r1, [r5, #44]	; 0x2c
d005610a:	61a9      	str	r1, [r5, #24]
d005610c:	622e      	str	r6, [r5, #32]
d005610e:	626e      	str	r6, [r5, #36]	; 0x24
d0056110:	62ae      	str	r6, [r5, #40]	; 0x28
d0056112:	632e      	str	r6, [r5, #48]	; 0x30
d0056114:	612e      	str	r6, [r5, #16]
d0056116:	616e      	str	r6, [r5, #20]
d0056118:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d005611c:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0056120:	4618      	mov	r0, r3
d0056122:	f8a7 c014 	strh.w	ip, [r7, #20]
d0056126:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d005612a:	63ee      	str	r6, [r5, #60]	; 0x3c
d005612c:	642e      	str	r6, [r5, #64]	; 0x40
d005612e:	646e      	str	r6, [r5, #68]	; 0x44
d0056130:	63ae      	str	r6, [r5, #56]	; 0x38
d0056132:	b004      	add	sp, #16
d0056134:	bcf0      	pop	{r4, r5, r6, r7}
d0056136:	4770      	bx	lr
d0056138:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d005613c:	4618      	mov	r0, r3
d005613e:	b004      	add	sp, #16
d0056140:	bcf0      	pop	{r4, r5, r6, r7}
d0056142:	4770      	bx	lr
d0056144:	d0127a60 	.word	0xd0127a60
d0056148:	d0127a80 	.word	0xd0127a80

d005614c <entitySetPosition>:
d005614c:	b084      	sub	sp, #16
d005614e:	28ff      	cmp	r0, #255	; 0xff
d0056150:	ed8d 0a01 	vstr	s0, [sp, #4]
d0056154:	edcd 0a02 	vstr	s1, [sp, #8]
d0056158:	ed8d 1a03 	vstr	s2, [sp, #12]
d005615c:	d80e      	bhi.n	d005617c <entitySetPosition+0x30>
d005615e:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0056162:	4b07      	ldr	r3, [pc, #28]	; (d0056180 <entitySetPosition+0x34>)
d0056164:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d0056168:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d005616c:	b132      	cbz	r2, d005617c <entitySetPosition+0x30>
d005616e:	68da      	ldr	r2, [r3, #12]
d0056170:	b122      	cbz	r2, d005617c <entitySetPosition+0x30>
d0056172:	aa04      	add	r2, sp, #16
d0056174:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0056178:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d005617c:	b004      	add	sp, #16
d005617e:	4770      	bx	lr
d0056180:	d0127a60 	.word	0xd0127a60

d0056184 <entityGetPosition>:
d0056184:	28ff      	cmp	r0, #255	; 0xff
d0056186:	b088      	sub	sp, #32
d0056188:	d80e      	bhi.n	d00561a8 <entityGetPosition+0x24>
d005618a:	4b0d      	ldr	r3, [pc, #52]	; (d00561c0 <entityGetPosition+0x3c>)
d005618c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0056190:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0056194:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0056198:	b133      	cbz	r3, d00561a8 <entityGetPosition+0x24>
d005619a:	68c3      	ldr	r3, [r0, #12]
d005619c:	b123      	cbz	r3, d00561a8 <entityGetPosition+0x24>
d005619e:	ab08      	add	r3, sp, #32
d00561a0:	c807      	ldmia	r0, {r0, r1, r2}
d00561a2:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00561a6:	e003      	b.n	d00561b0 <entityGetPosition+0x2c>
d00561a8:	2300      	movs	r3, #0
d00561aa:	9305      	str	r3, [sp, #20]
d00561ac:	9306      	str	r3, [sp, #24]
d00561ae:	9307      	str	r3, [sp, #28]
d00561b0:	ed9d 0a05 	vldr	s0, [sp, #20]
d00561b4:	eddd 0a06 	vldr	s1, [sp, #24]
d00561b8:	ed9d 1a07 	vldr	s2, [sp, #28]
d00561bc:	b008      	add	sp, #32
d00561be:	4770      	bx	lr
d00561c0:	d0127a60 	.word	0xd0127a60

d00561c4 <entityMoveForward>:
d00561c4:	28ff      	cmp	r0, #255	; 0xff
d00561c6:	d82b      	bhi.n	d0056220 <entityMoveForward+0x5c>
d00561c8:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00561cc:	b510      	push	{r4, lr}
d00561ce:	4c15      	ldr	r4, [pc, #84]	; (d0056224 <entityMoveForward+0x60>)
d00561d0:	b084      	sub	sp, #16
d00561d2:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d00561d6:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00561da:	b1fb      	cbz	r3, d005621c <entityMoveForward+0x58>
d00561dc:	68e3      	ldr	r3, [r4, #12]
d00561de:	b1eb      	cbz	r3, d005621c <entityMoveForward+0x58>
d00561e0:	eef0 1a40 	vmov.f32	s3, s0
d00561e4:	edd4 0a05 	vldr	s1, [r4, #20]
d00561e8:	ed94 0a04 	vldr	s0, [r4, #16]
d00561ec:	ed94 1a06 	vldr	s2, [r4, #24]
d00561f0:	f7fe fca4 	bl	d0054b3c <vec3Scale>
d00561f4:	eef0 1a40 	vmov.f32	s3, s0
d00561f8:	eeb0 2a60 	vmov.f32	s4, s1
d00561fc:	ed94 0a00 	vldr	s0, [r4]
d0056200:	eef0 2a41 	vmov.f32	s5, s2
d0056204:	edd4 0a01 	vldr	s1, [r4, #4]
d0056208:	ed94 1a02 	vldr	s2, [r4, #8]
d005620c:	f7fe fc8c 	bl	d0054b28 <vec3Add>
d0056210:	ed84 0a00 	vstr	s0, [r4]
d0056214:	edc4 0a01 	vstr	s1, [r4, #4]
d0056218:	ed84 1a02 	vstr	s2, [r4, #8]
d005621c:	b004      	add	sp, #16
d005621e:	bd10      	pop	{r4, pc}
d0056220:	4770      	bx	lr
d0056222:	bf00      	nop
d0056224:	d0127a60 	.word	0xd0127a60

d0056228 <entityTurnLocal>:
d0056228:	28ff      	cmp	r0, #255	; 0xff
d005622a:	d82c      	bhi.n	d0056286 <entityTurnLocal+0x5e>
d005622c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0056230:	b510      	push	{r4, lr}
d0056232:	4c65      	ldr	r4, [pc, #404]	; (d00563c8 <entityTurnLocal+0x1a0>)
d0056234:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0056238:	ed2d 8b04 	vpush	{d8-d9}
d005623c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0056240:	b1f3      	cbz	r3, d0056280 <entityTurnLocal+0x58>
d0056242:	68e3      	ldr	r3, [r4, #12]
d0056244:	b1e3      	cbz	r3, d0056280 <entityTurnLocal+0x58>
d0056246:	eeb5 0a40 	vcmp.f32	s0, #0.0
d005624a:	eeb0 9a40 	vmov.f32	s18, s0
d005624e:	eef0 8a60 	vmov.f32	s17, s1
d0056252:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056256:	eeb0 8a41 	vmov.f32	s16, s2
d005625a:	f040 8081 	bne.w	d0056360 <entityTurnLocal+0x138>
d005625e:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056262:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056266:	d148      	bne.n	d00562fa <entityTurnLocal+0xd2>
d0056268:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005626c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056270:	d10a      	bne.n	d0056288 <entityTurnLocal+0x60>
d0056272:	4620      	mov	r0, r4
d0056274:	ecbd 8b04 	vpop	{d8-d9}
d0056278:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005627c:	f7ff bc74 	b.w	d0055b68 <normalizeEntity.part.0>
d0056280:	ecbd 8b04 	vpop	{d8-d9}
d0056284:	bd10      	pop	{r4, pc}
d0056286:	4770      	bx	lr
d0056288:	ed94 0a07 	vldr	s0, [r4, #28]
d005628c:	eeb0 3a48 	vmov.f32	s6, s16
d0056290:	edd4 0a08 	vldr	s1, [r4, #32]
d0056294:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056298:	edd4 1a04 	vldr	s3, [r4, #16]
d005629c:	ed94 2a05 	vldr	s4, [r4, #20]
d00562a0:	edd4 2a06 	vldr	s5, [r4, #24]
d00562a4:	f7fe fcc6 	bl	d0054c34 <rotateAroundAxis>
d00562a8:	eef0 6a40 	vmov.f32	s13, s0
d00562ac:	eeb0 7a60 	vmov.f32	s14, s1
d00562b0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00562b4:	eef0 7a41 	vmov.f32	s15, s2
d00562b8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00562bc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00562c0:	eeb0 3a48 	vmov.f32	s6, s16
d00562c4:	edd4 1a04 	vldr	s3, [r4, #16]
d00562c8:	ed94 2a05 	vldr	s4, [r4, #20]
d00562cc:	edd4 2a06 	vldr	s5, [r4, #24]
d00562d0:	edc4 6a07 	vstr	s13, [r4, #28]
d00562d4:	ed84 7a08 	vstr	s14, [r4, #32]
d00562d8:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00562dc:	f7fe fcaa 	bl	d0054c34 <rotateAroundAxis>
d00562e0:	4620      	mov	r0, r4
d00562e2:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00562e6:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00562ea:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00562ee:	ecbd 8b04 	vpop	{d8-d9}
d00562f2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00562f6:	f7ff bc37 	b.w	d0055b68 <normalizeEntity.part.0>
d00562fa:	ed94 0a04 	vldr	s0, [r4, #16]
d00562fe:	eeb0 3a68 	vmov.f32	s6, s17
d0056302:	edd4 0a05 	vldr	s1, [r4, #20]
d0056306:	ed94 1a06 	vldr	s2, [r4, #24]
d005630a:	edd4 1a07 	vldr	s3, [r4, #28]
d005630e:	ed94 2a08 	vldr	s4, [r4, #32]
d0056312:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0056316:	f7fe fc8d 	bl	d0054c34 <rotateAroundAxis>
d005631a:	eef0 6a40 	vmov.f32	s13, s0
d005631e:	eeb0 7a60 	vmov.f32	s14, s1
d0056322:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056326:	eef0 7a41 	vmov.f32	s15, s2
d005632a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005632e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056332:	eeb0 3a68 	vmov.f32	s6, s17
d0056336:	edd4 1a07 	vldr	s3, [r4, #28]
d005633a:	ed94 2a08 	vldr	s4, [r4, #32]
d005633e:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0056342:	edc4 6a04 	vstr	s13, [r4, #16]
d0056346:	ed84 7a05 	vstr	s14, [r4, #20]
d005634a:	edc4 7a06 	vstr	s15, [r4, #24]
d005634e:	f7fe fc71 	bl	d0054c34 <rotateAroundAxis>
d0056352:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0056356:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d005635a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005635e:	e783      	b.n	d0056268 <entityTurnLocal+0x40>
d0056360:	eeb0 3a40 	vmov.f32	s6, s0
d0056364:	edd4 0a05 	vldr	s1, [r4, #20]
d0056368:	ed94 0a04 	vldr	s0, [r4, #16]
d005636c:	ed94 1a06 	vldr	s2, [r4, #24]
d0056370:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0056374:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0056378:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d005637c:	f7fe fc5a 	bl	d0054c34 <rotateAroundAxis>
d0056380:	eef0 6a40 	vmov.f32	s13, s0
d0056384:	eeb0 7a60 	vmov.f32	s14, s1
d0056388:	ed94 0a07 	vldr	s0, [r4, #28]
d005638c:	eef0 7a41 	vmov.f32	s15, s2
d0056390:	edd4 0a08 	vldr	s1, [r4, #32]
d0056394:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056398:	eeb0 3a49 	vmov.f32	s6, s18
d005639c:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00563a0:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00563a4:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00563a8:	edc4 6a04 	vstr	s13, [r4, #16]
d00563ac:	ed84 7a05 	vstr	s14, [r4, #20]
d00563b0:	edc4 7a06 	vstr	s15, [r4, #24]
d00563b4:	f7fe fc3e 	bl	d0054c34 <rotateAroundAxis>
d00563b8:	ed84 0a07 	vstr	s0, [r4, #28]
d00563bc:	edc4 0a08 	vstr	s1, [r4, #32]
d00563c0:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00563c4:	e74b      	b.n	d005625e <entityTurnLocal+0x36>
d00563c6:	bf00      	nop
d00563c8:	d0127a60 	.word	0xd0127a60

d00563cc <entityRotation>:
d00563cc:	28ff      	cmp	r0, #255	; 0xff
d00563ce:	d80b      	bhi.n	d00563e8 <entityRotation+0x1c>
d00563d0:	4a06      	ldr	r2, [pc, #24]	; (d00563ec <entityRotation+0x20>)
d00563d2:	eb00 0340 	add.w	r3, r0, r0, lsl #1
d00563d6:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d00563da:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d00563de:	b11a      	cbz	r2, d00563e8 <entityRotation+0x1c>
d00563e0:	68db      	ldr	r3, [r3, #12]
d00563e2:	b10b      	cbz	r3, d00563e8 <entityRotation+0x1c>
d00563e4:	f7ff bc16 	b.w	d0055c14 <entityRotation.part.0>
d00563e8:	4770      	bx	lr
d00563ea:	bf00      	nop
d00563ec:	d0127a60 	.word	0xd0127a60

d00563f0 <copyMesh>:
d00563f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00563f4:	460f      	mov	r7, r1
d00563f6:	b083      	sub	sp, #12
d00563f8:	2240      	movs	r2, #64	; 0x40
d00563fa:	2100      	movs	r1, #0
d00563fc:	4606      	mov	r6, r0
d00563fe:	f002 ff65 	bl	d00592cc <memset>
d0056402:	2f00      	cmp	r7, #0
d0056404:	d077      	beq.n	d00564f6 <copyMesh+0x106>
d0056406:	687b      	ldr	r3, [r7, #4]
d0056408:	697a      	ldr	r2, [r7, #20]
d005640a:	2b00      	cmp	r3, #0
d005640c:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0056410:	9301      	str	r3, [sp, #4]
d0056412:	9200      	str	r2, [sp, #0]
d0056414:	dc59      	bgt.n	d00564ca <copyMesh+0xda>
d0056416:	f1b8 0f00 	cmp.w	r8, #0
d005641a:	f04f 0900 	mov.w	r9, #0
d005641e:	dc5d      	bgt.n	d00564dc <copyMesh+0xec>
d0056420:	9b00      	ldr	r3, [sp, #0]
d0056422:	f04f 0a00 	mov.w	sl, #0
d0056426:	2b00      	cmp	r3, #0
d0056428:	dc60      	bgt.n	d00564ec <copyMesh+0xfc>
d005642a:	f04f 0c00 	mov.w	ip, #0
d005642e:	9b01      	ldr	r3, [sp, #4]
d0056430:	2b00      	cmp	r3, #0
d0056432:	dd0f      	ble.n	d0056454 <copyMesh+0x64>
d0056434:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0056438:	f8d7 e000 	ldr.w	lr, [r7]
d005643c:	2300      	movs	r3, #0
d005643e:	00ad      	lsls	r5, r5, #2
d0056440:	eb0e 0203 	add.w	r2, lr, r3
d0056444:	eb09 0403 	add.w	r4, r9, r3
d0056448:	330c      	adds	r3, #12
d005644a:	ca07      	ldmia	r2, {r0, r1, r2}
d005644c:	429d      	cmp	r5, r3
d005644e:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0056452:	d1f5      	bne.n	d0056440 <copyMesh+0x50>
d0056454:	f1b8 0f00 	cmp.w	r8, #0
d0056458:	dd0b      	ble.n	d0056472 <copyMesh+0x82>
d005645a:	68bc      	ldr	r4, [r7, #8]
d005645c:	2300      	movs	r3, #0
d005645e:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0056462:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0056466:	3301      	adds	r3, #1
d0056468:	c903      	ldmia	r1, {r0, r1}
d005646a:	4598      	cmp	r8, r3
d005646c:	e882 0003 	stmia.w	r2, {r0, r1}
d0056470:	d1f5      	bne.n	d005645e <copyMesh+0x6e>
d0056472:	9b00      	ldr	r3, [sp, #0]
d0056474:	2b00      	cmp	r3, #0
d0056476:	dd0e      	ble.n	d0056496 <copyMesh+0xa6>
d0056478:	f8d7 b010 	ldr.w	fp, [r7, #16]
d005647c:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0056480:	2400      	movs	r4, #0
d0056482:	eb0b 0304 	add.w	r3, fp, r4
d0056486:	eb0c 0504 	add.w	r5, ip, r4
d005648a:	3410      	adds	r4, #16
d005648c:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d005648e:	4574      	cmp	r4, lr
d0056490:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0056494:	d1f5      	bne.n	d0056482 <copyMesh+0x92>
d0056496:	9a01      	ldr	r2, [sp, #4]
d0056498:	f107 0520 	add.w	r5, r7, #32
d005649c:	69bb      	ldr	r3, [r7, #24]
d005649e:	f106 0420 	add.w	r4, r6, #32
d00564a2:	6072      	str	r2, [r6, #4]
d00564a4:	9a00      	ldr	r2, [sp, #0]
d00564a6:	61b3      	str	r3, [r6, #24]
d00564a8:	6172      	str	r2, [r6, #20]
d00564aa:	f8c6 9000 	str.w	r9, [r6]
d00564ae:	f8c6 c010 	str.w	ip, [r6, #16]
d00564b2:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00564b4:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d00564b6:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00564ba:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d00564be:	4630      	mov	r0, r6
d00564c0:	e9c6 a802 	strd	sl, r8, [r6, #8]
d00564c4:	b003      	add	sp, #12
d00564c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00564ca:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00564ce:	0080      	lsls	r0, r0, #2
d00564d0:	f002 fed0 	bl	d0059274 <malloc>
d00564d4:	f1b8 0f00 	cmp.w	r8, #0
d00564d8:	4681      	mov	r9, r0
d00564da:	dda1      	ble.n	d0056420 <copyMesh+0x30>
d00564dc:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d00564e0:	f002 fec8 	bl	d0059274 <malloc>
d00564e4:	9b00      	ldr	r3, [sp, #0]
d00564e6:	4682      	mov	sl, r0
d00564e8:	2b00      	cmp	r3, #0
d00564ea:	dd9e      	ble.n	d005642a <copyMesh+0x3a>
d00564ec:	0118      	lsls	r0, r3, #4
d00564ee:	f002 fec1 	bl	d0059274 <malloc>
d00564f2:	4684      	mov	ip, r0
d00564f4:	e79b      	b.n	d005642e <copyMesh+0x3e>
d00564f6:	2300      	movs	r3, #0
d00564f8:	4630      	mov	r0, r6
d00564fa:	e9c6 7700 	strd	r7, r7, [r6]
d00564fe:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0056502:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0056506:	61b3      	str	r3, [r6, #24]
d0056508:	b003      	add	sp, #12
d005650a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005650e:	bf00      	nop

d0056510 <buildLightingCLUT>:
d0056510:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056514:	f1b2 0900 	subs.w	r9, r2, #0
d0056518:	b085      	sub	sp, #20
d005651a:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d005651c:	f340 8212 	ble.w	d0056944 <buildLightingCLUT+0x434>
d0056520:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0056524:	4f24      	ldr	r7, [pc, #144]	; (d00565b8 <buildLightingCLUT+0xa8>)
d0056526:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d005652a:	edd4 4a00 	vldr	s9, [r4]
d005652e:	ed94 5a01 	vldr	s10, [r4, #4]
d0056532:	eb09 0807 	add.w	r8, r9, r7
d0056536:	edd4 5a02 	vldr	s11, [r4, #8]
d005653a:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d005653e:	ed94 6a03 	vldr	s12, [r4, #12]
d0056542:	44bc      	add	ip, r7
d0056544:	edd4 6a04 	vldr	s13, [r4, #16]
d0056548:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d005654c:	3904      	subs	r1, #4
d005654e:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0056552:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0056556:	ed9f 7a19 	vldr	s14, [pc, #100]	; d00565bc <buildLightingCLUT+0xac>
d005655a:	ee77 5ae5 	vsub.f32	s11, s15, s11
d005655e:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0056562:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0056566:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d005656a:	ee77 6ae6 	vsub.f32	s13, s15, s13
d005656e:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0056572:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0056576:	f3c3 4507 	ubfx	r5, r3, #16, #8
d005657a:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d005657e:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0056582:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0056586:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d005658a:	0e1c      	lsrs	r4, r3, #24
d005658c:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0056590:	b2da      	uxtb	r2, r3
d0056592:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0056596:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d005659a:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d005659e:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d00565a2:	fe85 5a67 	vminnm.f32	s10, s10, s15
d00565a6:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d00565aa:	fe86 6a67 	vminnm.f32	s12, s12, s15
d00565ae:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d00565b2:	9601      	str	r6, [sp, #4]
d00565b4:	e004      	b.n	d00565c0 <buildLightingCLUT+0xb0>
d00565b6:	bf00      	nop
d00565b8:	4000001f 	.word	0x4000001f
d00565bc:	00000000 	.word	0x00000000
d00565c0:	f851 3f04 	ldr.w	r3, [r1, #4]!
d00565c4:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00565c8:	0e1e      	lsrs	r6, r3, #24
d00565ca:	fa5f fa83 	uxtb.w	sl, r3
d00565ce:	4549      	cmp	r1, r9
d00565d0:	ee07 6a10 	vmov	s14, r6
d00565d4:	eba5 060b 	sub.w	r6, r5, fp
d00565d8:	ee04 ba10 	vmov	s8, fp
d00565dc:	ee07 6a90 	vmov	s15, r6
d00565e0:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00565e4:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00565e8:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00565ec:	ee02 6a10 	vmov	s4, r6
d00565f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00565f4:	eba2 060a 	sub.w	r6, r2, sl
d00565f8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00565fc:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0056600:	ee04 aa10 	vmov	s8, sl
d0056604:	ee02 6a90 	vmov	s5, r6
d0056608:	eba0 0603 	sub.w	r6, r0, r3
d005660c:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0056610:	ee07 3a90 	vmov	s15, r3
d0056614:	eea4 7a82 	vfma.f32	s14, s9, s4
d0056618:	ee03 6a10 	vmov	s6, r6
d005661c:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0056620:	9e01      	ldr	r6, [sp, #4]
d0056622:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0056626:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005662a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005662e:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0056632:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0056636:	eee4 7a83 	vfma.f32	s15, s9, s6
d005663a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005663e:	edcd 3a02 	vstr	s7, [sp, #8]
d0056642:	f89d a008 	ldrb.w	sl, [sp, #8]
d0056646:	ee17 3a10 	vmov	r3, s14
d005664a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d005664e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0056652:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0056656:	ed8d 7a02 	vstr	s14, [sp, #8]
d005665a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d005665e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0056662:	edcd 7a03 	vstr	s15, [sp, #12]
d0056666:	ea43 030b 	orr.w	r3, r3, fp
d005666a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d005666e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0056672:	f846 3f04 	str.w	r3, [r6, #4]!
d0056676:	680b      	ldr	r3, [r1, #0]
d0056678:	9601      	str	r6, [sp, #4]
d005667a:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d005667e:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0056682:	fa5f fa83 	uxtb.w	sl, r3
d0056686:	ee07 6a10 	vmov	s14, r6
d005668a:	eba5 060b 	sub.w	r6, r5, fp
d005668e:	ee04 ba10 	vmov	s8, fp
d0056692:	ee07 6a90 	vmov	s15, r6
d0056696:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005669a:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005669e:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00566a2:	ee02 6a10 	vmov	s4, r6
d00566a6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00566aa:	eba2 060a 	sub.w	r6, r2, sl
d00566ae:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00566b2:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00566b6:	ee04 aa10 	vmov	s8, sl
d00566ba:	ee02 6a90 	vmov	s5, r6
d00566be:	eba0 0603 	sub.w	r6, r0, r3
d00566c2:	eee5 3a27 	vfma.f32	s7, s10, s15
d00566c6:	ee07 3a90 	vmov	s15, r3
d00566ca:	eea5 7a02 	vfma.f32	s14, s10, s4
d00566ce:	ee03 6a10 	vmov	s6, r6
d00566d2:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00566d6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00566da:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00566de:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00566e2:	eea5 4a22 	vfma.f32	s8, s10, s5
d00566e6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00566ea:	eee5 7a03 	vfma.f32	s15, s10, s6
d00566ee:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00566f2:	edcd 3a02 	vstr	s7, [sp, #8]
d00566f6:	f89d a008 	ldrb.w	sl, [sp, #8]
d00566fa:	ee17 3a10 	vmov	r3, s14
d00566fe:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0056702:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0056706:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005670a:	ed8d 7a02 	vstr	s14, [sp, #8]
d005670e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0056712:	f89d b008 	ldrb.w	fp, [sp, #8]
d0056716:	edcd 7a03 	vstr	s15, [sp, #12]
d005671a:	ea43 030b 	orr.w	r3, r3, fp
d005671e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0056722:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0056726:	f848 3f04 	str.w	r3, [r8, #4]!
d005672a:	680b      	ldr	r3, [r1, #0]
d005672c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0056730:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0056734:	fa5f fa83 	uxtb.w	sl, r3
d0056738:	ee07 6a10 	vmov	s14, r6
d005673c:	eba5 060b 	sub.w	r6, r5, fp
d0056740:	ee04 ba10 	vmov	s8, fp
d0056744:	ee07 6a90 	vmov	s15, r6
d0056748:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005674c:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0056750:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0056754:	ee02 6a10 	vmov	s4, r6
d0056758:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005675c:	eba2 060a 	sub.w	r6, r2, sl
d0056760:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0056764:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0056768:	ee04 aa10 	vmov	s8, sl
d005676c:	ee02 6a90 	vmov	s5, r6
d0056770:	eba0 0603 	sub.w	r6, r0, r3
d0056774:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0056778:	ee07 3a90 	vmov	s15, r3
d005677c:	eea5 7a82 	vfma.f32	s14, s11, s4
d0056780:	ee03 6a10 	vmov	s6, r6
d0056784:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0056788:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005678c:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0056790:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056794:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0056798:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005679c:	eee5 7a83 	vfma.f32	s15, s11, s6
d00567a0:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00567a4:	edcd 3a02 	vstr	s7, [sp, #8]
d00567a8:	f89d a008 	ldrb.w	sl, [sp, #8]
d00567ac:	ee17 3a10 	vmov	r3, s14
d00567b0:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00567b4:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00567b8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00567bc:	ed8d 7a02 	vstr	s14, [sp, #8]
d00567c0:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00567c4:	f89d b008 	ldrb.w	fp, [sp, #8]
d00567c8:	edcd 7a03 	vstr	s15, [sp, #12]
d00567cc:	ea43 030b 	orr.w	r3, r3, fp
d00567d0:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00567d4:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00567d8:	f84e 3f04 	str.w	r3, [lr, #4]!
d00567dc:	680b      	ldr	r3, [r1, #0]
d00567de:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00567e2:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00567e6:	fa5f fa83 	uxtb.w	sl, r3
d00567ea:	ee07 6a10 	vmov	s14, r6
d00567ee:	eba5 060b 	sub.w	r6, r5, fp
d00567f2:	ee04 ba10 	vmov	s8, fp
d00567f6:	ee07 6a90 	vmov	s15, r6
d00567fa:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00567fe:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0056802:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0056806:	ee02 6a10 	vmov	s4, r6
d005680a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005680e:	eba2 060a 	sub.w	r6, r2, sl
d0056812:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0056816:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005681a:	ee04 aa10 	vmov	s8, sl
d005681e:	ee02 6a90 	vmov	s5, r6
d0056822:	eba0 0603 	sub.w	r6, r0, r3
d0056826:	eee6 3a27 	vfma.f32	s7, s12, s15
d005682a:	ee07 3a90 	vmov	s15, r3
d005682e:	eea6 7a02 	vfma.f32	s14, s12, s4
d0056832:	ee03 6a10 	vmov	s6, r6
d0056836:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005683a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005683e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0056842:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056846:	eea6 4a22 	vfma.f32	s8, s12, s5
d005684a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005684e:	eee6 7a03 	vfma.f32	s15, s12, s6
d0056852:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056856:	edcd 3a02 	vstr	s7, [sp, #8]
d005685a:	f89d a008 	ldrb.w	sl, [sp, #8]
d005685e:	ee17 3a10 	vmov	r3, s14
d0056862:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0056866:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005686a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005686e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0056872:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0056876:	f89d b008 	ldrb.w	fp, [sp, #8]
d005687a:	edcd 7a03 	vstr	s15, [sp, #12]
d005687e:	ea43 030b 	orr.w	r3, r3, fp
d0056882:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0056886:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005688a:	f84c 3f04 	str.w	r3, [ip, #4]!
d005688e:	680b      	ldr	r3, [r1, #0]
d0056890:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0056894:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0056898:	fa5f fa83 	uxtb.w	sl, r3
d005689c:	ee07 6a10 	vmov	s14, r6
d00568a0:	eba5 060b 	sub.w	r6, r5, fp
d00568a4:	ee04 ba10 	vmov	s8, fp
d00568a8:	ee07 6a90 	vmov	s15, r6
d00568ac:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00568b0:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00568b4:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00568b8:	ee02 6a10 	vmov	s4, r6
d00568bc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00568c0:	eba2 060a 	sub.w	r6, r2, sl
d00568c4:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00568c8:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00568cc:	ee04 aa10 	vmov	s8, sl
d00568d0:	ee02 6a90 	vmov	s5, r6
d00568d4:	eba0 0603 	sub.w	r6, r0, r3
d00568d8:	eee6 3aa7 	vfma.f32	s7, s13, s15
d00568dc:	ee07 3a90 	vmov	s15, r3
d00568e0:	eea6 7a82 	vfma.f32	s14, s13, s4
d00568e4:	ee03 6a10 	vmov	s6, r6
d00568e8:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00568ec:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00568f0:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00568f4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00568f8:	eea6 4aa2 	vfma.f32	s8, s13, s5
d00568fc:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0056900:	eee6 7a83 	vfma.f32	s15, s13, s6
d0056904:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056908:	edcd 3a02 	vstr	s7, [sp, #8]
d005690c:	f89d a008 	ldrb.w	sl, [sp, #8]
d0056910:	ee17 3a10 	vmov	r3, s14
d0056914:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0056918:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005691c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0056920:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0056924:	ed8d 7a02 	vstr	s14, [sp, #8]
d0056928:	f89d b008 	ldrb.w	fp, [sp, #8]
d005692c:	edcd 7a03 	vstr	s15, [sp, #12]
d0056930:	ea43 030b 	orr.w	r3, r3, fp
d0056934:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0056938:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005693c:	f847 3f04 	str.w	r3, [r7, #4]!
d0056940:	f47f ae3e 	bne.w	d00565c0 <buildLightingCLUT+0xb0>
d0056944:	b005      	add	sp, #20
d0056946:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005694a:	bf00      	nop

d005694c <brightnessToShadeF>:
d005694c:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0056950:	eddf 7a09 	vldr	s15, [pc, #36]	; d0056978 <brightnessToShadeF+0x2c>
d0056954:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0056958:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d005695c:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0056960:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0056964:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0056968:	eee7 6ac6 	vfms.f32	s13, s15, s12
d005696c:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0056970:	ee27 0a00 	vmul.f32	s0, s14, s0
d0056974:	4770      	bx	lr
d0056976:	bf00      	nop
d0056978:	00000000 	.word	0x00000000

d005697c <lightSetRanges>:
d005697c:	2800      	cmp	r0, #0
d005697e:	db0c      	blt.n	d005699a <lightSetRanges+0x1e>
d0056980:	4b06      	ldr	r3, [pc, #24]	; (d005699c <lightSetRanges+0x20>)
d0056982:	681b      	ldr	r3, [r3, #0]
d0056984:	4283      	cmp	r3, r0
d0056986:	dd08      	ble.n	d005699a <lightSetRanges+0x1e>
d0056988:	4b05      	ldr	r3, [pc, #20]	; (d00569a0 <lightSetRanges+0x24>)
d005698a:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005698e:	ed80 0a08 	vstr	s0, [r0, #32]
d0056992:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0056996:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d005699a:	4770      	bx	lr
d005699c:	d008f740 	.word	0xd008f740
d00569a0:	d008f760 	.word	0xd008f760

d00569a4 <lightsGet>:
d00569a4:	4800      	ldr	r0, [pc, #0]	; (d00569a8 <lightsGet+0x4>)
d00569a6:	4770      	bx	lr
d00569a8:	d008f760 	.word	0xd008f760

d00569ac <lightsGetCount>:
d00569ac:	4b01      	ldr	r3, [pc, #4]	; (d00569b4 <lightsGetCount+0x8>)
d00569ae:	6818      	ldr	r0, [r3, #0]
d00569b0:	4770      	bx	lr
d00569b2:	bf00      	nop
d00569b4:	d008f740 	.word	0xd008f740

d00569b8 <lightsClear>:
d00569b8:	4b01      	ldr	r3, [pc, #4]	; (d00569c0 <lightsClear+0x8>)
d00569ba:	2200      	movs	r2, #0
d00569bc:	601a      	str	r2, [r3, #0]
d00569be:	4770      	bx	lr
d00569c0:	d008f740 	.word	0xd008f740

d00569c4 <lightEnable>:
d00569c4:	4b04      	ldr	r3, [pc, #16]	; (d00569d8 <lightEnable+0x14>)
d00569c6:	681b      	ldr	r3, [r3, #0]
d00569c8:	4298      	cmp	r0, r3
d00569ca:	da03      	bge.n	d00569d4 <lightEnable+0x10>
d00569cc:	4b03      	ldr	r3, [pc, #12]	; (d00569dc <lightEnable+0x18>)
d00569ce:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00569d2:	62c1      	str	r1, [r0, #44]	; 0x2c
d00569d4:	4770      	bx	lr
d00569d6:	bf00      	nop
d00569d8:	d008f740 	.word	0xd008f740
d00569dc:	d008f760 	.word	0xd008f760

d00569e0 <addPointLight>:
d00569e0:	4918      	ldr	r1, [pc, #96]	; (d0056a44 <addPointLight+0x64>)
d00569e2:	b5f0      	push	{r4, r5, r6, r7, lr}
d00569e4:	680c      	ldr	r4, [r1, #0]
d00569e6:	b085      	sub	sp, #20
d00569e8:	2c07      	cmp	r4, #7
d00569ea:	ed8d 0a01 	vstr	s0, [sp, #4]
d00569ee:	edcd 0a02 	vstr	s1, [sp, #8]
d00569f2:	ed8d 1a03 	vstr	s2, [sp, #12]
d00569f6:	dc21      	bgt.n	d0056a3c <addPointLight+0x5c>
d00569f8:	4d13      	ldr	r5, [pc, #76]	; (d0056a48 <addPointLight+0x68>)
d00569fa:	01a2      	lsls	r2, r4, #6
d00569fc:	2600      	movs	r6, #0
d00569fe:	f8df e050 	ldr.w	lr, [pc, #80]	; d0056a50 <addPointLight+0x70>
d0056a02:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d0056a06:	f8df c04c 	ldr.w	ip, [pc, #76]	; d0056a54 <addPointLight+0x74>
d0056a0a:	54ae      	strb	r6, [r5, r2]
d0056a0c:	2200      	movs	r2, #0
d0056a0e:	4f0f      	ldr	r7, [pc, #60]	; (d0056a4c <addPointLight+0x6c>)
d0056a10:	1d1d      	adds	r5, r3, #4
d0056a12:	62d8      	str	r0, [r3, #44]	; 0x2c
d0056a14:	1c66      	adds	r6, r4, #1
d0056a16:	611a      	str	r2, [r3, #16]
d0056a18:	615a      	str	r2, [r3, #20]
d0056a1a:	619a      	str	r2, [r3, #24]
d0056a1c:	edc3 1a07 	vstr	s3, [r3, #28]
d0056a20:	f8c3 e020 	str.w	lr, [r3, #32]
d0056a24:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d0056a28:	629f      	str	r7, [r3, #40]	; 0x28
d0056a2a:	ab04      	add	r3, sp, #16
d0056a2c:	600e      	str	r6, [r1, #0]
d0056a2e:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d0056a32:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0056a36:	4620      	mov	r0, r4
d0056a38:	b005      	add	sp, #20
d0056a3a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056a3c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0056a40:	e7f9      	b.n	d0056a36 <addPointLight+0x56>
d0056a42:	bf00      	nop
d0056a44:	d008f740 	.word	0xd008f740
d0056a48:	d008f760 	.word	0xd008f760
d0056a4c:	44020000 	.word	0x44020000
d0056a50:	42c80000 	.word	0x42c80000
d0056a54:	43660000 	.word	0x43660000

d0056a58 <addDirectionalLight>:
d0056a58:	b5f0      	push	{r4, r5, r6, r7, lr}
d0056a5a:	4f15      	ldr	r7, [pc, #84]	; (d0056ab0 <addDirectionalLight+0x58>)
d0056a5c:	683d      	ldr	r5, [r7, #0]
d0056a5e:	2d07      	cmp	r5, #7
d0056a60:	ed2d 8b02 	vpush	{d8}
d0056a64:	b085      	sub	sp, #20
d0056a66:	dc1f      	bgt.n	d0056aa8 <addDirectionalLight+0x50>
d0056a68:	4912      	ldr	r1, [pc, #72]	; (d0056ab4 <addDirectionalLight+0x5c>)
d0056a6a:	2300      	movs	r3, #0
d0056a6c:	4606      	mov	r6, r0
d0056a6e:	01aa      	lsls	r2, r5, #6
d0056a70:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0056a74:	2001      	movs	r0, #1
d0056a76:	eeb0 8a61 	vmov.f32	s16, s3
d0056a7a:	6063      	str	r3, [r4, #4]
d0056a7c:	60a3      	str	r3, [r4, #8]
d0056a7e:	60e3      	str	r3, [r4, #12]
d0056a80:	5488      	strb	r0, [r1, r2]
d0056a82:	f7fe f887 	bl	d0054b94 <vec3Normalize>
d0056a86:	683b      	ldr	r3, [r7, #0]
d0056a88:	ed84 8a07 	vstr	s16, [r4, #28]
d0056a8c:	3301      	adds	r3, #1
d0056a8e:	62e6      	str	r6, [r4, #44]	; 0x2c
d0056a90:	ed84 0a04 	vstr	s0, [r4, #16]
d0056a94:	edc4 0a05 	vstr	s1, [r4, #20]
d0056a98:	ed84 1a06 	vstr	s2, [r4, #24]
d0056a9c:	603b      	str	r3, [r7, #0]
d0056a9e:	4628      	mov	r0, r5
d0056aa0:	b005      	add	sp, #20
d0056aa2:	ecbd 8b02 	vpop	{d8}
d0056aa6:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056aa8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0056aac:	e7f7      	b.n	d0056a9e <addDirectionalLight+0x46>
d0056aae:	bf00      	nop
d0056ab0:	d008f740 	.word	0xd008f740
d0056ab4:	d008f760 	.word	0xd008f760

d0056ab8 <lightSetPosition>:
d0056ab8:	b084      	sub	sp, #16
d0056aba:	2800      	cmp	r0, #0
d0056abc:	ed8d 0a01 	vstr	s0, [sp, #4]
d0056ac0:	edcd 0a02 	vstr	s1, [sp, #8]
d0056ac4:	ed8d 1a03 	vstr	s2, [sp, #12]
d0056ac8:	db0c      	blt.n	d0056ae4 <lightSetPosition+0x2c>
d0056aca:	4b07      	ldr	r3, [pc, #28]	; (d0056ae8 <lightSetPosition+0x30>)
d0056acc:	681b      	ldr	r3, [r3, #0]
d0056ace:	4283      	cmp	r3, r0
d0056ad0:	dd08      	ble.n	d0056ae4 <lightSetPosition+0x2c>
d0056ad2:	4b06      	ldr	r3, [pc, #24]	; (d0056aec <lightSetPosition+0x34>)
d0056ad4:	aa04      	add	r2, sp, #16
d0056ad6:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d0056ada:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0056ade:	3304      	adds	r3, #4
d0056ae0:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0056ae4:	b004      	add	sp, #16
d0056ae6:	4770      	bx	lr
d0056ae8:	d008f740 	.word	0xd008f740
d0056aec:	d008f760 	.word	0xd008f760

d0056af0 <lightSetIntensity>:
d0056af0:	2800      	cmp	r0, #0
d0056af2:	db08      	blt.n	d0056b06 <lightSetIntensity+0x16>
d0056af4:	4b04      	ldr	r3, [pc, #16]	; (d0056b08 <lightSetIntensity+0x18>)
d0056af6:	681b      	ldr	r3, [r3, #0]
d0056af8:	4283      	cmp	r3, r0
d0056afa:	dd04      	ble.n	d0056b06 <lightSetIntensity+0x16>
d0056afc:	4b03      	ldr	r3, [pc, #12]	; (d0056b0c <lightSetIntensity+0x1c>)
d0056afe:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0056b02:	ed80 0a07 	vstr	s0, [r0, #28]
d0056b06:	4770      	bx	lr
d0056b08:	d008f740 	.word	0xd008f740
d0056b0c:	d008f760 	.word	0xd008f760

d0056b10 <setDefaultRenderMode>:
d0056b10:	2300      	movs	r3, #0
d0056b12:	4803      	ldr	r0, [pc, #12]	; (d0056b20 <setDefaultRenderMode+0x10>)
d0056b14:	4903      	ldr	r1, [pc, #12]	; (d0056b24 <setDefaultRenderMode+0x14>)
d0056b16:	4a04      	ldr	r2, [pc, #16]	; (d0056b28 <setDefaultRenderMode+0x18>)
d0056b18:	6003      	str	r3, [r0, #0]
d0056b1a:	600b      	str	r3, [r1, #0]
d0056b1c:	6013      	str	r3, [r2, #0]
d0056b1e:	4770      	bx	lr
d0056b20:	d009b960 	.word	0xd009b960
d0056b24:	d011b980 	.word	0xd011b980
d0056b28:	d011b984 	.word	0xd011b984

d0056b2c <enableFlatMode>:
d0056b2c:	4b01      	ldr	r3, [pc, #4]	; (d0056b34 <enableFlatMode+0x8>)
d0056b2e:	6018      	str	r0, [r3, #0]
d0056b30:	4770      	bx	lr
d0056b32:	bf00      	nop
d0056b34:	d009b960 	.word	0xd009b960

d0056b38 <clipTriangleToFrustum>:
d0056b38:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0056b3c:	ed2d 8b04 	vpush	{d8-d9}
d0056b40:	b0ba      	sub	sp, #232	; 0xe8
d0056b42:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d0056b46:	4605      	mov	r5, r0
d0056b48:	aa07      	add	r2, sp, #28
d0056b4a:	edcd 2a06 	vstr	s5, [sp, #24]
d0056b4e:	ab04      	add	r3, sp, #16
d0056b50:	edd1 2a15 	vldr	s5, [r1, #84]	; 0x54
d0056b54:	ed8d 0a07 	vstr	s0, [sp, #28]
d0056b58:	ac0a      	add	r4, sp, #40	; 0x28
d0056b5a:	edcd 0a08 	vstr	s1, [sp, #32]
d0056b5e:	af0d      	add	r7, sp, #52	; 0x34
d0056b60:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0056b64:	ae01      	add	r6, sp, #4
d0056b66:	edcd 1a04 	vstr	s3, [sp, #16]
d0056b6a:	ed8d 2a05 	vstr	s4, [sp, #20]
d0056b6e:	ed8d 3a01 	vstr	s6, [sp, #4]
d0056b72:	edcd 3a02 	vstr	s7, [sp, #8]
d0056b76:	ed8d 4a03 	vstr	s8, [sp, #12]
d0056b7a:	ca07      	ldmia	r2, {r0, r1, r2}
d0056b7c:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0056b80:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0056b84:	ab10      	add	r3, sp, #64	; 0x40
d0056b86:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0056b8a:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0056b8e:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0056b92:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0056b96:	ed9d 2a10 	vldr	s4, [sp, #64]	; 0x40
d0056b9a:	ee31 4ac7 	vsub.f32	s8, s3, s14
d0056b9e:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0056ba2:	ed9d 3a11 	vldr	s6, [sp, #68]	; 0x44
d0056ba6:	ee77 3ac7 	vsub.f32	s7, s15, s14
d0056baa:	eddd 4a0a 	vldr	s9, [sp, #40]	; 0x28
d0056bae:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d0056bb2:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d0056bb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056bba:	eef5 3ac0 	vcmpe.f32	s7, #0.0
d0056bbe:	bfac      	ite	ge
d0056bc0:	2101      	movge	r1, #1
d0056bc2:	2100      	movlt	r1, #0
d0056bc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056bc8:	bfac      	ite	ge
d0056bca:	2001      	movge	r0, #1
d0056bcc:	2000      	movlt	r0, #0
d0056bce:	2900      	cmp	r1, #0
d0056bd0:	f000 8251 	beq.w	d0057076 <clipTriangleToFrustum+0x53e>
d0056bd4:	2800      	cmp	r0, #0
d0056bd6:	f000 824e 	beq.w	d0057076 <clipTriangleToFrustum+0x53e>
d0056bda:	2301      	movs	r3, #1
d0056bdc:	edcd 4a22 	vstr	s9, [sp, #136]	; 0x88
d0056be0:	ed8d 5a23 	vstr	s10, [sp, #140]	; 0x8c
d0056be4:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d0056be8:	ed9d 1a0f 	vldr	s2, [sp, #60]	; 0x3c
d0056bec:	f000 0201 	and.w	r2, r0, #1
d0056bf0:	eddd 5a0d 	vldr	s11, [sp, #52]	; 0x34
d0056bf4:	ee71 6a47 	vsub.f32	s13, s2, s14
d0056bf8:	ed9d 6a0e 	vldr	s12, [sp, #56]	; 0x38
d0056bfc:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056c00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056c04:	bfb6      	itet	lt
d0056c06:	2200      	movlt	r2, #0
d0056c08:	2601      	movge	r6, #1
d0056c0a:	2600      	movlt	r6, #0
d0056c0c:	2a00      	cmp	r2, #0
d0056c0e:	f000 826b 	beq.w	d00570e8 <clipTriangleToFrustum+0x5b0>
d0056c12:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0056c16:	ae22      	add	r6, sp, #136	; 0x88
d0056c18:	3301      	adds	r3, #1
d0056c1a:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0056c1e:	edc0 5a00 	vstr	s11, [r0]
d0056c22:	ed80 6a01 	vstr	s12, [r0, #4]
d0056c26:	ed80 1a02 	vstr	s2, [r0, #8]
d0056c2a:	2a00      	cmp	r2, #0
d0056c2c:	f000 8282 	beq.w	d0057134 <clipTriangleToFrustum+0x5fc>
d0056c30:	2900      	cmp	r1, #0
d0056c32:	f000 827f 	beq.w	d0057134 <clipTriangleToFrustum+0x5fc>
d0056c36:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0056c3a:	a922      	add	r1, sp, #136	; 0x88
d0056c3c:	3301      	adds	r3, #1
d0056c3e:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0056c42:	ed82 2a00 	vstr	s4, [r2]
d0056c46:	ed82 3a01 	vstr	s6, [r2, #4]
d0056c4a:	edc2 1a02 	vstr	s3, [r2, #8]
d0056c4e:	2b02      	cmp	r3, #2
d0056c50:	f340 820a 	ble.w	d0057068 <clipTriangleToFrustum+0x530>
d0056c54:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0056c58:	a822      	add	r0, sp, #136	; 0x88
d0056c5a:	2300      	movs	r3, #0
d0056c5c:	00b6      	lsls	r6, r6, #2
d0056c5e:	4601      	mov	r1, r0
d0056c60:	4607      	mov	r7, r0
d0056c62:	f1a6 020c 	sub.w	r2, r6, #12
d0056c66:	4406      	add	r6, r0
d0056c68:	4402      	add	r2, r0
d0056c6a:	ed92 7a00 	vldr	s14, [r2]
d0056c6e:	edd2 7a02 	vldr	s15, [r2, #8]
d0056c72:	ed92 6a01 	vldr	s12, [r2, #4]
d0056c76:	ee77 6a27 	vadd.f32	s13, s14, s15
d0056c7a:	e009      	b.n	d0056c90 <clipTriangleToFrustum+0x158>
d0056c7c:	3301      	adds	r3, #1
d0056c7e:	ed82 7a00 	vstr	s14, [r2]
d0056c82:	ed82 6a01 	vstr	s12, [r2, #4]
d0056c86:	edc2 7a02 	vstr	s15, [r2, #8]
d0056c8a:	310c      	adds	r1, #12
d0056c8c:	428e      	cmp	r6, r1
d0056c8e:	d04e      	beq.n	d0056d2e <clipTriangleToFrustum+0x1f6>
d0056c90:	eeb0 4a47 	vmov.f32	s8, s14
d0056c94:	ed91 7a00 	vldr	s14, [r1]
d0056c98:	eeb0 5a67 	vmov.f32	s10, s15
d0056c9c:	edd1 7a02 	vldr	s15, [r1, #8]
d0056ca0:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056ca4:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0056ca8:	eef0 5a66 	vmov.f32	s11, s13
d0056cac:	ee77 6a27 	vadd.f32	s13, s14, s15
d0056cb0:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0056cb4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056cb8:	eef0 4a46 	vmov.f32	s9, s12
d0056cbc:	ed91 6a01 	vldr	s12, [r1, #4]
d0056cc0:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056cc4:	bfac      	ite	ge
d0056cc6:	2701      	movge	r7, #1
d0056cc8:	2700      	movlt	r7, #0
d0056cca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056cce:	bfac      	ite	ge
d0056cd0:	f04f 0c01 	movge.w	ip, #1
d0056cd4:	f04f 0c00 	movlt.w	ip, #0
d0056cd8:	b117      	cbz	r7, d0056ce0 <clipTriangleToFrustum+0x1a8>
d0056cda:	f1bc 0f00 	cmp.w	ip, #0
d0056cde:	d1cd      	bne.n	d0056c7c <clipTriangleToFrustum+0x144>
d0056ce0:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056ce4:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0056ce8:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056cec:	ee77 1a44 	vsub.f32	s3, s14, s8
d0056cf0:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0056cf4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056cf8:	ee36 2a64 	vsub.f32	s4, s12, s9
d0056cfc:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0056d00:	f140 8183 	bpl.w	d005700a <clipTriangleToFrustum+0x4d2>
d0056d04:	2f00      	cmp	r7, #0
d0056d06:	f000 8180 	beq.w	d005700a <clipTriangleToFrustum+0x4d2>
d0056d0a:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0056d0e:	310c      	adds	r1, #12
d0056d10:	3301      	adds	r3, #1
d0056d12:	428e      	cmp	r6, r1
d0056d14:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0056d18:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056d1c:	eea3 5a23 	vfma.f32	s10, s6, s7
d0056d20:	ed82 4a00 	vstr	s8, [r2]
d0056d24:	edc2 4a01 	vstr	s9, [r2, #4]
d0056d28:	ed82 5a02 	vstr	s10, [r2, #8]
d0056d2c:	d1b0      	bne.n	d0056c90 <clipTriangleToFrustum+0x158>
d0056d2e:	2b02      	cmp	r3, #2
d0056d30:	f340 819a 	ble.w	d0057068 <clipTriangleToFrustum+0x530>
d0056d34:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0056d38:	4626      	mov	r6, r4
d0056d3a:	4627      	mov	r7, r4
d0056d3c:	2200      	movs	r2, #0
d0056d3e:	009b      	lsls	r3, r3, #2
d0056d40:	f1a3 010c 	sub.w	r1, r3, #12
d0056d44:	4423      	add	r3, r4
d0056d46:	4421      	add	r1, r4
d0056d48:	edd1 7a00 	vldr	s15, [r1]
d0056d4c:	ed91 7a02 	vldr	s14, [r1, #8]
d0056d50:	ed91 6a01 	vldr	s12, [r1, #4]
d0056d54:	ee77 6a67 	vsub.f32	s13, s14, s15
d0056d58:	e009      	b.n	d0056d6e <clipTriangleToFrustum+0x236>
d0056d5a:	3201      	adds	r2, #1
d0056d5c:	edc1 7a00 	vstr	s15, [r1]
d0056d60:	ed81 6a01 	vstr	s12, [r1, #4]
d0056d64:	ed81 7a02 	vstr	s14, [r1, #8]
d0056d68:	370c      	adds	r7, #12
d0056d6a:	42bb      	cmp	r3, r7
d0056d6c:	d059      	beq.n	d0056e22 <clipTriangleToFrustum+0x2ea>
d0056d6e:	eeb0 4a67 	vmov.f32	s8, s15
d0056d72:	edd7 7a00 	vldr	s15, [r7]
d0056d76:	eeb0 5a47 	vmov.f32	s10, s14
d0056d7a:	ed97 7a02 	vldr	s14, [r7, #8]
d0056d7e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056d82:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0056d86:	eef0 5a66 	vmov.f32	s11, s13
d0056d8a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056d8e:	ee77 6a67 	vsub.f32	s13, s14, s15
d0056d92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056d96:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d0056d9a:	eef0 4a46 	vmov.f32	s9, s12
d0056d9e:	ed97 6a01 	vldr	s12, [r7, #4]
d0056da2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056da6:	bfac      	ite	ge
d0056da8:	f04f 0c01 	movge.w	ip, #1
d0056dac:	f04f 0c00 	movlt.w	ip, #0
d0056db0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056db4:	bfac      	ite	ge
d0056db6:	f04f 0e01 	movge.w	lr, #1
d0056dba:	f04f 0e00 	movlt.w	lr, #0
d0056dbe:	f1bc 0f00 	cmp.w	ip, #0
d0056dc2:	d002      	beq.n	d0056dca <clipTriangleToFrustum+0x292>
d0056dc4:	f1be 0f00 	cmp.w	lr, #0
d0056dc8:	d1c7      	bne.n	d0056d5a <clipTriangleToFrustum+0x222>
d0056dca:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056dce:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056dd2:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0056dd6:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d0056dda:	ee37 1ac4 	vsub.f32	s2, s15, s8
d0056dde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056de2:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d0056de6:	ee76 1a64 	vsub.f32	s3, s12, s9
d0056dea:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0056dee:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056df2:	f140 8255 	bpl.w	d00572a0 <clipTriangleToFrustum+0x768>
d0056df6:	f1bc 0f00 	cmp.w	ip, #0
d0056dfa:	f000 8251 	beq.w	d00572a0 <clipTriangleToFrustum+0x768>
d0056dfe:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0056e02:	370c      	adds	r7, #12
d0056e04:	3201      	adds	r2, #1
d0056e06:	42bb      	cmp	r3, r7
d0056e08:	eea1 4a03 	vfma.f32	s8, s2, s6
d0056e0c:	eee1 4a83 	vfma.f32	s9, s3, s6
d0056e10:	eea2 5a03 	vfma.f32	s10, s4, s6
d0056e14:	ed81 4a00 	vstr	s8, [r1]
d0056e18:	edc1 4a01 	vstr	s9, [r1, #4]
d0056e1c:	ed81 5a02 	vstr	s10, [r1, #8]
d0056e20:	d1a5      	bne.n	d0056d6e <clipTriangleToFrustum+0x236>
d0056e22:	2a02      	cmp	r2, #2
d0056e24:	f340 8120 	ble.w	d0057068 <clipTriangleToFrustum+0x530>
d0056e28:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0056e2c:	af22      	add	r7, sp, #136	; 0x88
d0056e2e:	2200      	movs	r2, #0
d0056e30:	009b      	lsls	r3, r3, #2
d0056e32:	f1a3 010c 	sub.w	r1, r3, #12
d0056e36:	443b      	add	r3, r7
d0056e38:	4439      	add	r1, r7
d0056e3a:	edd1 7a01 	vldr	s15, [r1, #4]
d0056e3e:	ed91 7a02 	vldr	s14, [r1, #8]
d0056e42:	eef0 6a67 	vmov.f32	s13, s15
d0056e46:	ed91 6a00 	vldr	s12, [r1]
d0056e4a:	eed2 6a87 	vfnms.f32	s13, s5, s14
d0056e4e:	e00c      	b.n	d0056e6a <clipTriangleToFrustum+0x332>
d0056e50:	f1bc 0f00 	cmp.w	ip, #0
d0056e54:	d031      	beq.n	d0056eba <clipTriangleToFrustum+0x382>
d0056e56:	3201      	adds	r2, #1
d0056e58:	ed81 6a00 	vstr	s12, [r1]
d0056e5c:	edc1 7a01 	vstr	s15, [r1, #4]
d0056e60:	ed81 7a02 	vstr	s14, [r1, #8]
d0056e64:	300c      	adds	r0, #12
d0056e66:	4298      	cmp	r0, r3
d0056e68:	d050      	beq.n	d0056f0c <clipTriangleToFrustum+0x3d4>
d0056e6a:	eeb0 5a47 	vmov.f32	s10, s14
d0056e6e:	ed90 7a02 	vldr	s14, [r0, #8]
d0056e72:	eef0 4a67 	vmov.f32	s9, s15
d0056e76:	edd0 7a01 	vldr	s15, [r0, #4]
d0056e7a:	ee62 3a87 	vmul.f32	s7, s5, s14
d0056e7e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056e82:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056e86:	eef0 5a66 	vmov.f32	s11, s13
d0056e8a:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0056e8e:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0056e92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056e96:	eeb0 4a46 	vmov.f32	s8, s12
d0056e9a:	ed90 6a00 	vldr	s12, [r0]
d0056e9e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056ea2:	bfac      	ite	ge
d0056ea4:	2701      	movge	r7, #1
d0056ea6:	2700      	movlt	r7, #0
d0056ea8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056eac:	bfac      	ite	ge
d0056eae:	f04f 0c01 	movge.w	ip, #1
d0056eb2:	f04f 0c00 	movlt.w	ip, #0
d0056eb6:	2f00      	cmp	r7, #0
d0056eb8:	d1ca      	bne.n	d0056e50 <clipTriangleToFrustum+0x318>
d0056eba:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056ebe:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056ec2:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0056ec6:	ee36 1a44 	vsub.f32	s2, s12, s8
d0056eca:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0056ece:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056ed2:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0056ed6:	ee33 3a63 	vsub.f32	s6, s6, s7
d0056eda:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056ede:	f140 8212 	bpl.w	d0057306 <clipTriangleToFrustum+0x7ce>
d0056ee2:	2f00      	cmp	r7, #0
d0056ee4:	f000 820f 	beq.w	d0057306 <clipTriangleToFrustum+0x7ce>
d0056ee8:	eec5 3a83 	vdiv.f32	s7, s11, s6
d0056eec:	300c      	adds	r0, #12
d0056eee:	3201      	adds	r2, #1
d0056ef0:	4298      	cmp	r0, r3
d0056ef2:	eea1 4a23 	vfma.f32	s8, s2, s7
d0056ef6:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0056efa:	eea2 5a23 	vfma.f32	s10, s4, s7
d0056efe:	ed81 4a00 	vstr	s8, [r1]
d0056f02:	edc1 4a01 	vstr	s9, [r1, #4]
d0056f06:	ed81 5a02 	vstr	s10, [r1, #8]
d0056f0a:	d1ae      	bne.n	d0056e6a <clipTriangleToFrustum+0x332>
d0056f0c:	2a02      	cmp	r2, #2
d0056f0e:	f340 80ab 	ble.w	d0057068 <clipTriangleToFrustum+0x530>
d0056f12:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0056f16:	2700      	movs	r7, #0
d0056f18:	009b      	lsls	r3, r3, #2
d0056f1a:	f1a3 020c 	sub.w	r2, r3, #12
d0056f1e:	4423      	add	r3, r4
d0056f20:	4414      	add	r4, r2
d0056f22:	edd4 7a01 	vldr	s15, [r4, #4]
d0056f26:	ed94 7a02 	vldr	s14, [r4, #8]
d0056f2a:	eef0 6a67 	vmov.f32	s13, s15
d0056f2e:	ed94 6a00 	vldr	s12, [r4]
d0056f32:	eee2 6a87 	vfma.f32	s13, s5, s14
d0056f36:	e00a      	b.n	d0056f4e <clipTriangleToFrustum+0x416>
d0056f38:	b380      	cbz	r0, d0056f9c <clipTriangleToFrustum+0x464>
d0056f3a:	3701      	adds	r7, #1
d0056f3c:	ed82 6a00 	vstr	s12, [r2]
d0056f40:	edc2 7a01 	vstr	s15, [r2, #4]
d0056f44:	ed82 7a02 	vstr	s14, [r2, #8]
d0056f48:	360c      	adds	r6, #12
d0056f4a:	429e      	cmp	r6, r3
d0056f4c:	d04e      	beq.n	d0056fec <clipTriangleToFrustum+0x4b4>
d0056f4e:	eef0 4a67 	vmov.f32	s9, s15
d0056f52:	edd6 7a01 	vldr	s15, [r6, #4]
d0056f56:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056f5a:	a922      	add	r1, sp, #136	; 0x88
d0056f5c:	eef0 5a66 	vmov.f32	s11, s13
d0056f60:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0056f64:	eef0 6a67 	vmov.f32	s13, s15
d0056f68:	eeb0 5a47 	vmov.f32	s10, s14
d0056f6c:	ed96 7a02 	vldr	s14, [r6, #8]
d0056f70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056f74:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0056f78:	eee2 6a87 	vfma.f32	s13, s5, s14
d0056f7c:	eeb0 4a46 	vmov.f32	s8, s12
d0056f80:	ed96 6a00 	vldr	s12, [r6]
d0056f84:	bfac      	ite	ge
d0056f86:	2101      	movge	r1, #1
d0056f88:	2100      	movlt	r1, #0
d0056f8a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056f8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056f92:	bfac      	ite	ge
d0056f94:	2001      	movge	r0, #1
d0056f96:	2000      	movlt	r0, #0
d0056f98:	2900      	cmp	r1, #0
d0056f9a:	d1cd      	bne.n	d0056f38 <clipTriangleToFrustum+0x400>
d0056f9c:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056fa0:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0056fa4:	ac22      	add	r4, sp, #136	; 0x88
d0056fa6:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056faa:	ee76 1a44 	vsub.f32	s3, s12, s8
d0056fae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056fb2:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0056fb6:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0056fba:	ee37 3a45 	vsub.f32	s6, s14, s10
d0056fbe:	f140 81d7 	bpl.w	d0057370 <clipTriangleToFrustum+0x838>
d0056fc2:	2900      	cmp	r1, #0
d0056fc4:	f000 81d4 	beq.w	d0057370 <clipTriangleToFrustum+0x838>
d0056fc8:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0056fcc:	360c      	adds	r6, #12
d0056fce:	3701      	adds	r7, #1
d0056fd0:	429e      	cmp	r6, r3
d0056fd2:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0056fd6:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056fda:	eea3 5a23 	vfma.f32	s10, s6, s7
d0056fde:	ed82 4a00 	vstr	s8, [r2]
d0056fe2:	edc2 4a01 	vstr	s9, [r2, #4]
d0056fe6:	ed82 5a02 	vstr	s10, [r2, #8]
d0056fea:	d1b0      	bne.n	d0056f4e <clipTriangleToFrustum+0x416>
d0056fec:	2f02      	cmp	r7, #2
d0056fee:	dd3b      	ble.n	d0057068 <clipTriangleToFrustum+0x530>
d0056ff0:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0056ff4:	a922      	add	r1, sp, #136	; 0x88
d0056ff6:	4628      	mov	r0, r5
d0056ff8:	0092      	lsls	r2, r2, #2
d0056ffa:	f002 f959 	bl	d00592b0 <memcpy>
d0056ffe:	4638      	mov	r0, r7
d0057000:	b03a      	add	sp, #232	; 0xe8
d0057002:	ecbd 8b04 	vpop	{d8-d9}
d0057006:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d005700a:	eef5 5a40 	vcmp.f32	s11, #0.0
d005700e:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0057012:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0057016:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d005701a:	ee77 1a44 	vsub.f32	s3, s14, s8
d005701e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057022:	463a      	mov	r2, r7
d0057024:	ee36 2a64 	vsub.f32	s4, s12, s9
d0057028:	ee37 3ac5 	vsub.f32	s6, s15, s10
d005702c:	f107 070c 	add.w	r7, r7, #12
d0057030:	f57f ae2b 	bpl.w	d0056c8a <clipTriangleToFrustum+0x152>
d0057034:	f1bc 0f00 	cmp.w	ip, #0
d0057038:	f43f ae27 	beq.w	d0056c8a <clipTriangleToFrustum+0x152>
d005703c:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0057040:	3302      	adds	r3, #2
d0057042:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0057046:	eee2 4a23 	vfma.f32	s9, s4, s7
d005704a:	eea3 5a23 	vfma.f32	s10, s6, s7
d005704e:	ed82 4a00 	vstr	s8, [r2]
d0057052:	edc2 4a01 	vstr	s9, [r2, #4]
d0057056:	ed82 5a02 	vstr	s10, [r2, #8]
d005705a:	ed87 7a00 	vstr	s14, [r7]
d005705e:	ed87 6a01 	vstr	s12, [r7, #4]
d0057062:	edc7 7a02 	vstr	s15, [r7, #8]
d0057066:	e610      	b.n	d0056c8a <clipTriangleToFrustum+0x152>
d0057068:	2700      	movs	r7, #0
d005706a:	4638      	mov	r0, r7
d005706c:	b03a      	add	sp, #232	; 0xe8
d005706e:	ecbd 8b04 	vpop	{d8-d9}
d0057072:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0057076:	eef5 3a40 	vcmp.f32	s7, #0.0
d005707a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005707e:	f140 80b0 	bpl.w	d00571e2 <clipTriangleToFrustum+0x6aa>
d0057082:	2900      	cmp	r1, #0
d0057084:	f000 80ad 	beq.w	d00571e2 <clipTriangleToFrustum+0x6aa>
d0057088:	ee31 0ae7 	vsub.f32	s0, s3, s15
d005708c:	ed9d 1a0f 	vldr	s2, [sp, #60]	; 0x3c
d0057090:	ee74 8ac2 	vsub.f32	s17, s9, s4
d0057094:	2301      	movs	r3, #1
d0057096:	eeb0 9a42 	vmov.f32	s18, s4
d005709a:	eddd 5a0d 	vldr	s11, [sp, #52]	; 0x34
d005709e:	eec4 0a00 	vdiv.f32	s1, s8, s0
d00570a2:	ed9d 6a0e 	vldr	s12, [sp, #56]	; 0x38
d00570a6:	ee35 8a43 	vsub.f32	s16, s10, s6
d00570aa:	ee71 6a47 	vsub.f32	s13, s2, s14
d00570ae:	ee37 0ae1 	vsub.f32	s0, s15, s3
d00570b2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00570b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00570ba:	bfac      	ite	ge
d00570bc:	461e      	movge	r6, r3
d00570be:	2600      	movlt	r6, #0
d00570c0:	eea0 9aa8 	vfma.f32	s18, s1, s17
d00570c4:	eef0 8a49 	vmov.f32	s17, s18
d00570c8:	eeb0 9a43 	vmov.f32	s18, s6
d00570cc:	edcd 8a22 	vstr	s17, [sp, #136]	; 0x88
d00570d0:	eea0 9a88 	vfma.f32	s18, s1, s16
d00570d4:	eeb0 8a49 	vmov.f32	s16, s18
d00570d8:	eeb0 9a61 	vmov.f32	s18, s3
d00570dc:	ed8d 8a23 	vstr	s16, [sp, #140]	; 0x8c
d00570e0:	eea0 9a20 	vfma.f32	s18, s0, s1
d00570e4:	ed8d 9a24 	vstr	s18, [sp, #144]	; 0x90
d00570e8:	eef5 6a40 	vcmp.f32	s13, #0.0
d00570ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00570f0:	f140 80a8 	bpl.w	d0057244 <clipTriangleToFrustum+0x70c>
d00570f4:	2800      	cmp	r0, #0
d00570f6:	f000 80a5 	beq.w	d0057244 <clipTriangleToFrustum+0x70c>
d00570fa:	ee37 0ac1 	vsub.f32	s0, s15, s2
d00570fe:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0057102:	ee35 8ae4 	vsub.f32	s16, s11, s9
d0057106:	4632      	mov	r2, r6
d0057108:	ae22      	add	r6, sp, #136	; 0x88
d005710a:	3301      	adds	r3, #1
d005710c:	eec3 0a80 	vdiv.f32	s1, s7, s0
d0057110:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0057114:	ee36 0a45 	vsub.f32	s0, s12, s10
d0057118:	ee71 3a67 	vsub.f32	s7, s2, s15
d005711c:	eee8 4a20 	vfma.f32	s9, s16, s1
d0057120:	eea0 5a20 	vfma.f32	s10, s0, s1
d0057124:	eee3 7aa0 	vfma.f32	s15, s7, s1
d0057128:	edc0 4a00 	vstr	s9, [r0]
d005712c:	ed80 5a01 	vstr	s10, [r0, #4]
d0057130:	edc0 7a02 	vstr	s15, [r0, #8]
d0057134:	eeb5 4a40 	vcmp.f32	s8, #0.0
d0057138:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005713c:	d521      	bpl.n	d0057182 <clipTriangleToFrustum+0x64a>
d005713e:	b302      	cbz	r2, d0057182 <clipTriangleToFrustum+0x64a>
d0057140:	ee37 7a61 	vsub.f32	s14, s14, s3
d0057144:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0057148:	ee32 2a65 	vsub.f32	s4, s4, s11
d005714c:	a922      	add	r1, sp, #136	; 0x88
d005714e:	ee33 3a46 	vsub.f32	s6, s6, s12
d0057152:	3301      	adds	r3, #1
d0057154:	ee37 7a26 	vadd.f32	s14, s14, s13
d0057158:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d005715c:	ee71 1ac1 	vsub.f32	s3, s3, s2
d0057160:	eef0 7a41 	vmov.f32	s15, s2
d0057164:	ee86 5a87 	vdiv.f32	s10, s13, s14
d0057168:	eee2 5a05 	vfma.f32	s11, s4, s10
d005716c:	eea3 6a05 	vfma.f32	s12, s6, s10
d0057170:	eee1 7a85 	vfma.f32	s15, s3, s10
d0057174:	edc2 5a00 	vstr	s11, [r2]
d0057178:	ed82 6a01 	vstr	s12, [r2, #4]
d005717c:	edc2 7a02 	vstr	s15, [r2, #8]
d0057180:	e565      	b.n	d0056c4e <clipTriangleToFrustum+0x116>
d0057182:	eef5 6a40 	vcmp.f32	s13, #0.0
d0057186:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005718a:	f57f ad60 	bpl.w	d0056c4e <clipTriangleToFrustum+0x116>
d005718e:	2900      	cmp	r1, #0
d0057190:	f43f ad5d 	beq.w	d0056c4e <clipTriangleToFrustum+0x116>
d0057194:	ee77 7a61 	vsub.f32	s15, s14, s3
d0057198:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d005719c:	ee32 4a65 	vsub.f32	s8, s4, s11
d00571a0:	a922      	add	r1, sp, #136	; 0x88
d00571a2:	ee73 4a46 	vsub.f32	s9, s6, s12
d00571a6:	3302      	adds	r3, #2
d00571a8:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00571ac:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d00571b0:	ee31 5ac1 	vsub.f32	s10, s3, s2
d00571b4:	ed81 2a03 	vstr	s4, [r1, #12]
d00571b8:	ee86 7aa7 	vdiv.f32	s14, s13, s15
d00571bc:	ed81 3a04 	vstr	s6, [r1, #16]
d00571c0:	edc1 1a05 	vstr	s3, [r1, #20]
d00571c4:	eef0 7a41 	vmov.f32	s15, s2
d00571c8:	eee4 5a07 	vfma.f32	s11, s8, s14
d00571cc:	eea4 6a87 	vfma.f32	s12, s9, s14
d00571d0:	eee5 7a07 	vfma.f32	s15, s10, s14
d00571d4:	edc1 5a00 	vstr	s11, [r1]
d00571d8:	ed81 6a01 	vstr	s12, [r1, #4]
d00571dc:	edc1 7a02 	vstr	s15, [r1, #8]
d00571e0:	e535      	b.n	d0056c4e <clipTriangleToFrustum+0x116>
d00571e2:	eeb5 4a40 	vcmp.f32	s8, #0.0
d00571e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00571ea:	f140 80bf 	bpl.w	d005736c <clipTriangleToFrustum+0x834>
d00571ee:	2800      	cmp	r0, #0
d00571f0:	f000 80bc 	beq.w	d005736c <clipTriangleToFrustum+0x834>
d00571f4:	ee71 6ae7 	vsub.f32	s13, s3, s15
d00571f8:	2302      	movs	r3, #2
d00571fa:	ee34 1ac2 	vsub.f32	s2, s9, s4
d00571fe:	edcd 4a25 	vstr	s9, [sp, #148]	; 0x94
d0057202:	eef0 0a42 	vmov.f32	s1, s4
d0057206:	ed8d 5a26 	vstr	s10, [sp, #152]	; 0x98
d005720a:	ee84 6a26 	vdiv.f32	s12, s8, s13
d005720e:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d0057212:	ee75 5a43 	vsub.f32	s11, s10, s6
d0057216:	ee77 6ae1 	vsub.f32	s13, s15, s3
d005721a:	eee6 0a01 	vfma.f32	s1, s12, s2
d005721e:	eeb0 1a60 	vmov.f32	s2, s1
d0057222:	eef0 0a43 	vmov.f32	s1, s6
d0057226:	ed8d 1a22 	vstr	s2, [sp, #136]	; 0x88
d005722a:	eee6 0a25 	vfma.f32	s1, s12, s11
d005722e:	eef0 5a60 	vmov.f32	s11, s1
d0057232:	eef0 0a61 	vmov.f32	s1, s3
d0057236:	edcd 5a23 	vstr	s11, [sp, #140]	; 0x8c
d005723a:	eee6 0a26 	vfma.f32	s1, s12, s13
d005723e:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0057242:	e4d1      	b.n	d0056be8 <clipTriangleToFrustum+0xb0>
d0057244:	eef5 3ac0 	vcmpe.f32	s7, #0.0
d0057248:	f006 0201 	and.w	r2, r6, #1
d005724c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057250:	bf58      	it	pl
d0057252:	2200      	movpl	r2, #0
d0057254:	2a00      	cmp	r2, #0
d0057256:	f000 8087 	beq.w	d0057368 <clipTriangleToFrustum+0x830>
d005725a:	ee77 8ac1 	vsub.f32	s17, s15, s2
d005725e:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0057262:	ee35 8ae4 	vsub.f32	s16, s11, s9
d0057266:	ae22      	add	r6, sp, #136	; 0x88
d0057268:	ee36 0a45 	vsub.f32	s0, s12, s10
d005726c:	3302      	adds	r3, #2
d005726e:	eec3 0aa8 	vdiv.f32	s1, s7, s17
d0057272:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d0057276:	edc6 5a03 	vstr	s11, [r6, #12]
d005727a:	ed86 6a04 	vstr	s12, [r6, #16]
d005727e:	ed86 1a05 	vstr	s2, [r6, #20]
d0057282:	ee71 3a67 	vsub.f32	s7, s2, s15
d0057286:	eee8 4a20 	vfma.f32	s9, s16, s1
d005728a:	eea0 5a20 	vfma.f32	s10, s0, s1
d005728e:	eee3 7aa0 	vfma.f32	s15, s7, s1
d0057292:	edc6 4a00 	vstr	s9, [r6]
d0057296:	ed86 5a01 	vstr	s10, [r6, #4]
d005729a:	edc6 7a02 	vstr	s15, [r6, #8]
d005729e:	e4c4      	b.n	d0056c2a <clipTriangleToFrustum+0xf2>
d00572a0:	eef5 5a40 	vcmp.f32	s11, #0.0
d00572a4:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00572a8:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d00572ac:	ee77 3aa5 	vadd.f32	s7, s15, s11
d00572b0:	ee37 1ac4 	vsub.f32	s2, s15, s8
d00572b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00572b8:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d00572bc:	ee76 1a64 	vsub.f32	s3, s12, s9
d00572c0:	4661      	mov	r1, ip
d00572c2:	ee73 3ac7 	vsub.f32	s7, s7, s14
d00572c6:	ee37 2a45 	vsub.f32	s4, s14, s10
d00572ca:	f10c 0c0c 	add.w	ip, ip, #12
d00572ce:	f57f ad4b 	bpl.w	d0056d68 <clipTriangleToFrustum+0x230>
d00572d2:	f1be 0f00 	cmp.w	lr, #0
d00572d6:	f43f ad47 	beq.w	d0056d68 <clipTriangleToFrustum+0x230>
d00572da:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d00572de:	3202      	adds	r2, #2
d00572e0:	eea1 4a03 	vfma.f32	s8, s2, s6
d00572e4:	eee1 4a83 	vfma.f32	s9, s3, s6
d00572e8:	eea2 5a03 	vfma.f32	s10, s4, s6
d00572ec:	ed81 4a00 	vstr	s8, [r1]
d00572f0:	edc1 4a01 	vstr	s9, [r1, #4]
d00572f4:	ed81 5a02 	vstr	s10, [r1, #8]
d00572f8:	edcc 7a00 	vstr	s15, [ip]
d00572fc:	ed8c 6a01 	vstr	s12, [ip, #4]
d0057300:	ed8c 7a02 	vstr	s14, [ip, #8]
d0057304:	e530      	b.n	d0056d68 <clipTriangleToFrustum+0x230>
d0057306:	eef5 5a40 	vcmp.f32	s11, #0.0
d005730a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d005730e:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0057312:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d0057316:	ee36 1a44 	vsub.f32	s2, s12, s8
d005731a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005731e:	4639      	mov	r1, r7
d0057320:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0057324:	ee73 3a63 	vsub.f32	s7, s6, s7
d0057328:	f107 070c 	add.w	r7, r7, #12
d005732c:	ee37 2a45 	vsub.f32	s4, s14, s10
d0057330:	f57f ad98 	bpl.w	d0056e64 <clipTriangleToFrustum+0x32c>
d0057334:	f1bc 0f00 	cmp.w	ip, #0
d0057338:	f43f ad94 	beq.w	d0056e64 <clipTriangleToFrustum+0x32c>
d005733c:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0057340:	3202      	adds	r2, #2
d0057342:	eea1 4a03 	vfma.f32	s8, s2, s6
d0057346:	eee1 4a83 	vfma.f32	s9, s3, s6
d005734a:	eea2 5a03 	vfma.f32	s10, s4, s6
d005734e:	ed81 4a00 	vstr	s8, [r1]
d0057352:	edc1 4a01 	vstr	s9, [r1, #4]
d0057356:	ed81 5a02 	vstr	s10, [r1, #8]
d005735a:	ed87 6a00 	vstr	s12, [r7]
d005735e:	edc7 7a01 	vstr	s15, [r7, #4]
d0057362:	ed87 7a02 	vstr	s14, [r7, #8]
d0057366:	e57d      	b.n	d0056e64 <clipTriangleToFrustum+0x32c>
d0057368:	4632      	mov	r2, r6
d005736a:	e45e      	b.n	d0056c2a <clipTriangleToFrustum+0xf2>
d005736c:	2300      	movs	r3, #0
d005736e:	e43b      	b.n	d0056be8 <clipTriangleToFrustum+0xb0>
d0057370:	eef5 5a40 	vcmp.f32	s11, #0.0
d0057374:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0057378:	a922      	add	r1, sp, #136	; 0x88
d005737a:	ee35 1ae6 	vsub.f32	s2, s11, s13
d005737e:	ee76 1a44 	vsub.f32	s3, s12, s8
d0057382:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057386:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d005738a:	ee37 2ae4 	vsub.f32	s4, s15, s9
d005738e:	460a      	mov	r2, r1
d0057390:	ee37 3a45 	vsub.f32	s6, s14, s10
d0057394:	f101 010c 	add.w	r1, r1, #12
d0057398:	f57f add6 	bpl.w	d0056f48 <clipTriangleToFrustum+0x410>
d005739c:	2800      	cmp	r0, #0
d005739e:	f43f add3 	beq.w	d0056f48 <clipTriangleToFrustum+0x410>
d00573a2:	eec5 3a81 	vdiv.f32	s7, s11, s2
d00573a6:	3702      	adds	r7, #2
d00573a8:	eea1 4aa3 	vfma.f32	s8, s3, s7
d00573ac:	eee2 4a23 	vfma.f32	s9, s4, s7
d00573b0:	eea3 5a23 	vfma.f32	s10, s6, s7
d00573b4:	ed82 4a00 	vstr	s8, [r2]
d00573b8:	edc2 4a01 	vstr	s9, [r2, #4]
d00573bc:	ed82 5a02 	vstr	s10, [r2, #8]
d00573c0:	ed81 6a00 	vstr	s12, [r1]
d00573c4:	edc1 7a01 	vstr	s15, [r1, #4]
d00573c8:	ed81 7a02 	vstr	s14, [r1, #8]
d00573cc:	e5bc      	b.n	d0056f48 <clipTriangleToFrustum+0x410>
d00573ce:	bf00      	nop

d00573d0 <submitClippedTri>:
d00573d0:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00573d4:	eef4 7ac1 	vcmpe.f32	s15, s2
d00573d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00573dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00573e0:	eef4 7ae2 	vcmpe.f32	s15, s5
d00573e4:	bfac      	ite	ge
d00573e6:	2401      	movge	r4, #1
d00573e8:	2400      	movlt	r4, #0
d00573ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00573ee:	ed2d 8b02 	vpush	{d8}
d00573f2:	bfa8      	it	ge
d00573f4:	f044 0401 	orrge.w	r4, r4, #1
d00573f8:	b08d      	sub	sp, #52	; 0x34
d00573fa:	9301      	str	r3, [sp, #4]
d00573fc:	b924      	cbnz	r4, d0057408 <submitClippedTri+0x38>
d00573fe:	eef4 7ac4 	vcmpe.f32	s15, s8
d0057402:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057406:	db04      	blt.n	d0057412 <submitClippedTri+0x42>
d0057408:	b00d      	add	sp, #52	; 0x34
d005740a:	ecbd 8b02 	vpop	{d8}
d005740e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057412:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0057416:	ed90 7a14 	vldr	s14, [r0, #80]	; 0x50
d005741a:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d005741e:	edd0 6a12 	vldr	s13, [r0, #72]	; 0x48
d0057422:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d0057426:	ee86 8a01 	vdiv.f32	s16, s12, s2
d005742a:	ee86 5a22 	vdiv.f32	s10, s12, s5
d005742e:	eec6 5a04 	vdiv.f32	s11, s12, s8
d0057432:	ee37 7a28 	vadd.f32	s14, s14, s17
d0057436:	ee68 0a20 	vmul.f32	s1, s16, s1
d005743a:	ee77 7aa8 	vadd.f32	s15, s15, s17
d005743e:	ee28 0a00 	vmul.f32	s0, s16, s0
d0057442:	eeb0 8a67 	vmov.f32	s16, s15
d0057446:	ee65 1a21 	vmul.f32	s3, s10, s3
d005744a:	ee25 2a02 	vmul.f32	s4, s10, s4
d005744e:	eeb0 5a47 	vmov.f32	s10, s14
d0057452:	eea6 8a80 	vfma.f32	s16, s13, s0
d0057456:	eea6 5ae0 	vfms.f32	s10, s13, s1
d005745a:	ee65 3aa3 	vmul.f32	s7, s11, s7
d005745e:	ee25 3a83 	vmul.f32	s6, s11, s6
d0057462:	eefd 5ac8 	vcvt.s32.f32	s11, s16
d0057466:	eef0 0a45 	vmov.f32	s1, s10
d005746a:	eeb0 5a67 	vmov.f32	s10, s15
d005746e:	ee15 ba90 	vmov	fp, s11
d0057472:	eee6 7a83 	vfma.f32	s15, s13, s6
d0057476:	eea6 5aa1 	vfma.f32	s10, s13, s3
d005747a:	eef0 1a47 	vmov.f32	s3, s14
d005747e:	eea6 7ae3 	vfms.f32	s14, s13, s7
d0057482:	eee6 1ac2 	vfms.f32	s3, s13, s4
d0057486:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d005748a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d005748e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0057492:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0057496:	ee16 6a90 	vmov	r6, s13
d005749a:	ee15 3a10 	vmov	r3, s10
d005749e:	eefd 6ae1 	vcvt.s32.f32	s13, s3
d00574a2:	ee17 4a10 	vmov	r4, s14
d00574a6:	eba3 080b 	sub.w	r8, r3, fp
d00574aa:	ee17 3a90 	vmov	r3, s15
d00574ae:	ee16 ca90 	vmov	ip, s13
d00574b2:	1ba7      	subs	r7, r4, r6
d00574b4:	eba3 0e0b 	sub.w	lr, r3, fp
d00574b8:	ebac 0506 	sub.w	r5, ip, r6
d00574bc:	fb07 f708 	mul.w	r7, r7, r8
d00574c0:	fb0e 7515 	mls	r5, lr, r5, r7
d00574c4:	2d00      	cmp	r5, #0
d00574c6:	dd9f      	ble.n	d0057408 <submitClippedTri+0x38>
d00574c8:	f8df 9188 	ldr.w	r9, [pc, #392]	; d0057654 <submitClippedTri+0x284>
d00574cc:	f8d9 5000 	ldr.w	r5, [r9]
d00574d0:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d00574d4:	da98      	bge.n	d0057408 <submitClippedTri+0x38>
d00574d6:	4f5c      	ldr	r7, [pc, #368]	; (d0057648 <submitClippedTri+0x278>)
d00574d8:	ea4f 1e85 	mov.w	lr, r5, lsl #6
d00574dc:	1c6b      	adds	r3, r5, #1
d00574de:	eddf 5a5b 	vldr	s11, [pc, #364]	; d005764c <submitClippedTri+0x27c>
d00574e2:	eb07 1585 	add.w	r5, r7, r5, lsl #6
d00574e6:	f10e 0808 	add.w	r8, lr, #8
d00574ea:	9302      	str	r3, [sp, #8]
d00574ec:	ee15 3a10 	vmov	r3, s10
d00574f0:	f847 b00e 	str.w	fp, [r7, lr]
d00574f4:	f10e 0a10 	add.w	sl, lr, #16
d00574f8:	606e      	str	r6, [r5, #4]
d00574fa:	b236      	sxth	r6, r6
d00574fc:	f847 3008 	str.w	r3, [r7, r8]
d0057500:	ee17 3a90 	vmov	r3, s15
d0057504:	44b8      	add	r8, r7
d0057506:	eb07 0b0a 	add.w	fp, r7, sl
d005750a:	eddf 6a51 	vldr	s13, [pc, #324]	; d0057650 <submitClippedTri+0x280>
d005750e:	45b4      	cmp	ip, r6
d0057510:	f8c8 c004 	str.w	ip, [r8, #4]
d0057514:	46b0      	mov	r8, r6
d0057516:	f847 300a 	str.w	r3, [r7, sl]
d005751a:	9b01      	ldr	r3, [sp, #4]
d005751c:	ed8b 7a01 	vstr	s14, [fp, #4]
d0057520:	f885 3036 	strb.w	r3, [r5, #54]	; 0x36
d0057524:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d0057528:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d005752c:	edc5 4a07 	vstr	s9, [r5, #28]
d0057530:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0057534:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0057538:	ee31 7a47 	vsub.f32	s14, s2, s14
d005753c:	9b02      	ldr	r3, [sp, #8]
d005753e:	f8c9 3000 	str.w	r3, [r9]
d0057542:	ee27 7a27 	vmul.f32	s14, s14, s15
d0057546:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d005754a:	fe87 7a46 	vminnm.f32	s14, s14, s12
d005754e:	ee27 7a26 	vmul.f32	s14, s14, s13
d0057552:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0057556:	ee17 3a10 	vmov	r3, s14
d005755a:	842b      	strh	r3, [r5, #32]
d005755c:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0057560:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0057564:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0057568:	ee27 7a27 	vmul.f32	s14, s14, s15
d005756c:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0057570:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0057574:	ee27 7a26 	vmul.f32	s14, s14, s13
d0057578:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005757c:	ee17 3a10 	vmov	r3, s14
d0057580:	846b      	strh	r3, [r5, #34]	; 0x22
d0057582:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0057586:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d005758a:	ee74 7a67 	vsub.f32	s15, s8, s15
d005758e:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0057592:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0057596:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d005759a:	ee67 7a87 	vmul.f32	s15, s15, s14
d005759e:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d00575a2:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00575a6:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00575aa:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00575ae:	ee17 3a90 	vmov	r3, s15
d00575b2:	84ab      	strh	r3, [r5, #36]	; 0x24
d00575b4:	db42      	blt.n	d005763c <submitClippedTri+0x26c>
d00575b6:	4633      	mov	r3, r6
d00575b8:	872e      	strh	r6, [r5, #56]	; 0x38
d00575ba:	42a3      	cmp	r3, r4
d00575bc:	dd02      	ble.n	d00575c4 <submitClippedTri+0x1f4>
d00575be:	eb07 030e 	add.w	r3, r7, lr
d00575c2:	871c      	strh	r4, [r3, #56]	; 0x38
d00575c4:	45b4      	cmp	ip, r6
d00575c6:	dc31      	bgt.n	d005762c <submitClippedTri+0x25c>
d00575c8:	eb07 030e 	add.w	r3, r7, lr
d00575cc:	875e      	strh	r6, [r3, #58]	; 0x3a
d00575ce:	45a0      	cmp	r8, r4
d00575d0:	da02      	bge.n	d00575d8 <submitClippedTri+0x208>
d00575d2:	eb07 030e 	add.w	r3, r7, lr
d00575d6:	875c      	strh	r4, [r3, #58]	; 0x3a
d00575d8:	eb07 030e 	add.w	r3, r7, lr
d00575dc:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d00575e0:	2a00      	cmp	r2, #0
d00575e2:	da01      	bge.n	d00575e8 <submitClippedTri+0x218>
d00575e4:	2200      	movs	r2, #0
d00575e6:	871a      	strh	r2, [r3, #56]	; 0x38
d00575e8:	eb07 030e 	add.w	r3, r7, lr
d00575ec:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d00575f0:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00575f4:	db02      	blt.n	d00575fc <submitClippedTri+0x22c>
d00575f6:	f240 123f 	movw	r2, #319	; 0x13f
d00575fa:	875a      	strh	r2, [r3, #58]	; 0x3a
d00575fc:	eb07 010e 	add.w	r1, r7, lr
d0057600:	4477      	add	r7, lr
d0057602:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d0057606:	2b00      	cmp	r3, #0
d0057608:	bfb8      	it	lt
d005760a:	331f      	addlt	r3, #31
d005760c:	115a      	asrs	r2, r3, #5
d005760e:	f9b7 303a 	ldrsh.w	r3, [r7, #58]	; 0x3a
d0057612:	2b00      	cmp	r3, #0
d0057614:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d0057618:	bfb8      	it	lt
d005761a:	331f      	addlt	r3, #31
d005761c:	115b      	asrs	r3, r3, #5
d005761e:	f887 303d 	strb.w	r3, [r7, #61]	; 0x3d
d0057622:	b00d      	add	sp, #52	; 0x34
d0057624:	ecbd 8b02 	vpop	{d8}
d0057628:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005762c:	fa0f fc8c 	sxth.w	ip, ip
d0057630:	eb07 030e 	add.w	r3, r7, lr
d0057634:	46e0      	mov	r8, ip
d0057636:	f8a3 c03a 	strh.w	ip, [r3, #58]	; 0x3a
d005763a:	e7c8      	b.n	d00575ce <submitClippedTri+0x1fe>
d005763c:	fa0f f28c 	sxth.w	r2, ip
d0057640:	4613      	mov	r3, r2
d0057642:	872a      	strh	r2, [r5, #56]	; 0x38
d0057644:	e7b9      	b.n	d00575ba <submitClippedTri+0x1ea>
d0057646:	bf00      	nop
d0057648:	d009b980 	.word	0xd009b980
d005764c:	00000000 	.word	0x00000000
d0057650:	477fff00 	.word	0x477fff00
d0057654:	d009b964 	.word	0xd009b964

d0057658 <getRenderTriCount>:
d0057658:	4b01      	ldr	r3, [pc, #4]	; (d0057660 <getRenderTriCount+0x8>)
d005765a:	6818      	ldr	r0, [r3, #0]
d005765c:	4770      	bx	lr
d005765e:	bf00      	nop
d0057660:	d009b964 	.word	0xd009b964

d0057664 <drawFakeHorizonDots>:
d0057664:	2800      	cmp	r0, #0
d0057666:	f000 8107 	beq.w	d0057878 <drawFakeHorizonDots+0x214>
d005766a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005766e:	4699      	mov	r9, r3
d0057670:	ed2d 8b10 	vpush	{d8-d15}
d0057674:	b085      	sub	sp, #20
d0057676:	2b00      	cmp	r3, #0
d0057678:	f000 80f9 	beq.w	d005786e <drawFakeHorizonDots+0x20a>
d005767c:	4617      	mov	r7, r2
d005767e:	ed90 9a02 	vldr	s18, [r0, #8]
d0057682:	edd0 8a00 	vldr	s17, [r0]
d0057686:	4606      	mov	r6, r0
d0057688:	2f02      	cmp	r7, #2
d005768a:	ed90 6a01 	vldr	s12, [r0, #4]
d005768e:	ed90 da07 	vldr	s26, [r0, #28]
d0057692:	460a      	mov	r2, r1
d0057694:	bfb8      	it	lt
d0057696:	2702      	movlt	r7, #2
d0057698:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d005769c:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d00576a0:	ee30 ba46 	vsub.f32	s22, s0, s12
d00576a4:	ee07 7a90 	vmov	s15, r7
d00576a8:	ed90 fa06 	vldr	s30, [r0, #24]
d00576ac:	edd0 ea08 	vldr	s29, [r0, #32]
d00576b0:	f06f 0311 	mvn.w	r3, #17
d00576b4:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d00576b8:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d00576bc:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d00576c0:	ee2b da0d 	vmul.f32	s26, s22, s26
d00576c4:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d00576c8:	ee6b ca2c 	vmul.f32	s25, s22, s25
d00576cc:	ee89 7a08 	vdiv.f32	s14, s18, s16
d00576d0:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d00576d4:	eddf 5a69 	vldr	s11, [pc, #420]	; d005787c <drawFakeHorizonDots+0x218>
d00576d8:	4d69      	ldr	r5, [pc, #420]	; (d0057880 <drawFakeHorizonDots+0x21c>)
d00576da:	4c6a      	ldr	r4, [pc, #424]	; (d0057884 <drawFakeHorizonDots+0x220>)
d00576dc:	eddf 9a6a 	vldr	s19, [pc, #424]	; d0057888 <drawFakeHorizonDots+0x224>
d00576e0:	eec8 7a88 	vdiv.f32	s15, s17, s16
d00576e4:	9302      	str	r3, [sp, #8]
d00576e6:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d0057890 <drawFakeHorizonDots+0x22c>
d00576ea:	4623      	mov	r3, r4
d00576ec:	ee28 8a25 	vmul.f32	s16, s16, s11
d00576f0:	ee2b ba26 	vmul.f32	s22, s22, s13
d00576f4:	ee68 9a29 	vmul.f32	s19, s16, s19
d00576f8:	febb 7a47 	vrintm.f32	s14, s14
d00576fc:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0057700:	ee17 0a10 	vmov	r0, s14
d0057704:	fefb 7a67 	vrintm.f32	s15, s15
d0057708:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005770c:	3812      	subs	r0, #18
d005770e:	ee17 1a90 	vmov	r1, s15
d0057712:	fb05 f500 	mul.w	r5, r5, r0
d0057716:	fb00 f007 	mul.w	r0, r0, r7
d005771a:	fb04 5a01 	mla	sl, r4, r1, r5
d005771e:	3912      	subs	r1, #18
d0057720:	9001      	str	r0, [sp, #4]
d0057722:	fb07 f101 	mul.w	r1, r7, r1
d0057726:	9103      	str	r1, [sp, #12]
d0057728:	eddd 7a01 	vldr	s15, [sp, #4]
d005772c:	ee39 aa08 	vadd.f32	s20, s18, s16
d0057730:	9902      	ldr	r1, [sp, #8]
d0057732:	ee78 aa88 	vadd.f32	s21, s17, s16
d0057736:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005773a:	9d03      	ldr	r5, [sp, #12]
d005773c:	fb01 f801 	mul.w	r8, r1, r1
d0057740:	f06f 0411 	mvn.w	r4, #17
d0057744:	ee37 aaca 	vsub.f32	s20, s15, s20
d0057748:	e078      	b.n	d005783c <drawFakeHorizonDots+0x1d8>
d005774a:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d005774e:	fb09 f000 	mul.w	r0, r9, r0
d0057752:	2850      	cmp	r0, #80	; 0x50
d0057754:	dd6e      	ble.n	d0057834 <drawFakeHorizonDots+0x1d0>
d0057756:	494d      	ldr	r1, [pc, #308]	; (d005788c <drawFakeHorizonDots+0x228>)
d0057758:	fba1 1000 	umull	r1, r0, r1, r0
d005775c:	f3c0 1087 	ubfx	r0, r0, #6, #8
d0057760:	fb03 a104 	mla	r1, r3, r4, sl
d0057764:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d0057768:	fb0b f101 	mul.w	r1, fp, r1
d005776c:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d0057770:	fa5f fc81 	uxtb.w	ip, r1
d0057774:	4584      	cmp	ip, r0
d0057776:	d85d      	bhi.n	d0057834 <drawFakeHorizonDots+0x1d0>
d0057778:	ee07 5a10 	vmov	s14, r5
d005777c:	f3c1 4007 	ubfx	r0, r1, #16, #8
d0057780:	f3c1 2107 	ubfx	r1, r1, #8, #8
d0057784:	eef0 4a4a 	vmov.f32	s9, s20
d0057788:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005778c:	ee06 0a90 	vmov	s13, r0
d0057790:	ee07 1a90 	vmov	s15, r1
d0057794:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d0057798:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d005779c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00577a0:	ee37 7a6a 	vsub.f32	s14, s14, s21
d00577a4:	eee6 4aa9 	vfma.f32	s9, s13, s19
d00577a8:	eea7 7aa9 	vfma.f32	s14, s15, s19
d00577ac:	eef0 7a47 	vmov.f32	s15, s14
d00577b0:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d00577b4:	eeac 7a27 	vfma.f32	s14, s24, s15
d00577b8:	ee3b 7a07 	vadd.f32	s14, s22, s14
d00577bc:	eeb4 6ac7 	vcmpe.f32	s12, s14
d00577c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577c4:	da36      	bge.n	d0057834 <drawFakeHorizonDots+0x1d0>
d00577c6:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d00577ca:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d00577ce:	ee2f 6a27 	vmul.f32	s12, s30, s15
d00577d2:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d00577d6:	ee6e 7a27 	vmul.f32	s15, s28, s15
d00577da:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d00577de:	ee83 4a87 	vdiv.f32	s8, s7, s14
d00577e2:	eeae 6aa4 	vfma.f32	s12, s29, s9
d00577e6:	eeed 7aa4 	vfma.f32	s15, s27, s9
d00577ea:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d00577ee:	ee36 7aa4 	vadd.f32	s14, s13, s9
d00577f2:	ee7d 6a06 	vadd.f32	s13, s26, s12
d00577f6:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d00577fa:	ee35 6aa4 	vadd.f32	s12, s11, s9
d00577fe:	ee66 6a85 	vmul.f32	s13, s13, s10
d0057802:	ee65 7a67 	vnmul.f32	s15, s10, s15
d0057806:	eea6 7a84 	vfma.f32	s14, s13, s8
d005780a:	eea7 6a84 	vfma.f32	s12, s15, s8
d005780e:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0057812:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0057816:	ee17 0a10 	vmov	r0, s14
d005781a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d005781e:	d209      	bcs.n	d0057834 <drawFakeHorizonDots+0x1d0>
d0057820:	ee17 1a90 	vmov	r1, s15
d0057824:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0057828:	d204      	bcs.n	d0057834 <drawFakeHorizonDots+0x1d0>
d005782a:	9200      	str	r2, [sp, #0]
d005782c:	f7fa fe24 	bl	d0052478 <putPixel>
d0057830:	4b14      	ldr	r3, [pc, #80]	; (d0057884 <drawFakeHorizonDots+0x220>)
d0057832:	9a00      	ldr	r2, [sp, #0]
d0057834:	3401      	adds	r4, #1
d0057836:	443d      	add	r5, r7
d0057838:	2c13      	cmp	r4, #19
d005783a:	d009      	beq.n	d0057850 <drawFakeHorizonDots+0x1ec>
d005783c:	fb04 8004 	mla	r0, r4, r4, r8
d0057840:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0057844:	dcf6      	bgt.n	d0057834 <drawFakeHorizonDots+0x1d0>
d0057846:	28f3      	cmp	r0, #243	; 0xf3
d0057848:	f73f af7f 	bgt.w	d005774a <drawFakeHorizonDots+0xe6>
d005784c:	4648      	mov	r0, r9
d005784e:	e787      	b.n	d0057760 <drawFakeHorizonDots+0xfc>
d0057850:	9902      	ldr	r1, [sp, #8]
d0057852:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d0057856:	9801      	ldr	r0, [sp, #4]
d0057858:	3101      	adds	r1, #1
d005785a:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d005785e:	4438      	add	r0, r7
d0057860:	2913      	cmp	r1, #19
d0057862:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d0057866:	9102      	str	r1, [sp, #8]
d0057868:	9001      	str	r0, [sp, #4]
d005786a:	f47f af5d 	bne.w	d0057728 <drawFakeHorizonDots+0xc4>
d005786e:	b005      	add	sp, #20
d0057870:	ecbd 8b10 	vpop	{d8-d15}
d0057874:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057878:	4770      	bx	lr
d005787a:	bf00      	nop
d005787c:	3eb33333 	.word	0x3eb33333
d0057880:	27d4eb2f 	.word	0x27d4eb2f
d0057884:	165667b1 	.word	0x165667b1
d0057888:	3c008081 	.word	0x3c008081
d005788c:	ca4587e7 	.word	0xca4587e7
d0057890:	4bf19f61 	.word	0x4bf19f61

d0057894 <drawFakeHorizon>:
d0057894:	2800      	cmp	r0, #0
d0057896:	f000 813e 	beq.w	d0057b16 <drawFakeHorizon+0x282>
d005789a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005789e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00578a2:	ed2d 8b0e 	vpush	{d8-d14}
d00578a6:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d00578aa:	b083      	sub	sp, #12
d00578ac:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d00578b0:	460f      	mov	r7, r1
d00578b2:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d00578b6:	eddf 7a9c 	vldr	s15, [pc, #624]	; d0057b28 <drawFakeHorizon+0x294>
d00578ba:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d00578be:	4690      	mov	r8, r2
d00578c0:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d00578c4:	4699      	mov	r9, r3
d00578c6:	ed90 ea07 	vldr	s28, [r0, #28]
d00578ca:	2400      	movs	r4, #0
d00578cc:	ed90 9a01 	vldr	s18, [r0, #4]
d00578d0:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d00578d4:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d00578d8:	ee2b 7aad 	vmul.f32	s14, s23, s27
d00578dc:	4e93      	ldr	r6, [pc, #588]	; (d0057b2c <drawFakeHorizon+0x298>)
d00578de:	eef0 aa4c 	vmov.f32	s21, s24
d00578e2:	ed9f 8a93 	vldr	s16, [pc, #588]	; d0057b30 <drawFakeHorizon+0x29c>
d00578e6:	eeb0 aa4c 	vmov.f32	s20, s24
d00578ea:	eecd ca2d 	vdiv.f32	s25, s26, s27
d00578ee:	eeb0 baed 	vabs.f32	s22, s27
d00578f2:	ee30 9a49 	vsub.f32	s18, s0, s18
d00578f6:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00578fa:	eee7 aa28 	vfma.f32	s21, s14, s17
d00578fe:	ee6e 8a28 	vmul.f32	s17, s28, s17
d0057902:	eea7 aaad 	vfma.f32	s20, s15, s27
d0057906:	e056      	b.n	d00579b6 <drawFakeHorizon+0x122>
d0057908:	ee89 6a26 	vdiv.f32	s12, s18, s13
d005790c:	eef0 6ac7 	vabs.f32	s13, s14
d0057910:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0057914:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057918:	eef4 6ac8 	vcmpe.f32	s13, s16
d005791c:	bfcc      	ite	gt
d005791e:	2201      	movgt	r2, #1
d0057920:	2200      	movle	r2, #0
d0057922:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057926:	da61      	bge.n	d00579ec <drawFakeHorizon+0x158>
d0057928:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d005792c:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0057930:	6833      	ldr	r3, [r6, #0]
d0057932:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057936:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d005793a:	f240 80a8 	bls.w	d0057a8e <drawFakeHorizon+0x1fa>
d005793e:	eeb4 bac8 	vcmpe.f32	s22, s16
d0057942:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057946:	f100 809a 	bmi.w	d0057a7e <drawFakeHorizon+0x1ea>
d005794a:	ee7c 7a27 	vadd.f32	s15, s24, s15
d005794e:	eeb0 7a6b 	vmov.f32	s14, s23
d0057952:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0057956:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d005795a:	ee17 ba90 	vmov	fp, s15
d005795e:	f1bb 0f00 	cmp.w	fp, #0
d0057962:	f2c0 80aa 	blt.w	d0057aba <drawFakeHorizon+0x226>
d0057966:	2201      	movs	r2, #1
d0057968:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d005796c:	46da      	mov	sl, fp
d005796e:	bfa8      	it	ge
d0057970:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0057974:	2a00      	cmp	r2, #0
d0057976:	f000 8091 	beq.w	d0057a9c <drawFakeHorizon+0x208>
d005797a:	f1bb 0f00 	cmp.w	fp, #0
d005797e:	d009      	beq.n	d0057994 <drawFakeHorizon+0x100>
d0057980:	f1ba 0f00 	cmp.w	sl, #0
d0057984:	4628      	mov	r0, r5
d0057986:	4641      	mov	r1, r8
d0057988:	bfcc      	ite	gt
d005798a:	4652      	movgt	r2, sl
d005798c:	2201      	movle	r2, #1
d005798e:	4415      	add	r5, r2
d0057990:	f001 fc9c 	bl	d00592cc <memset>
d0057994:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0057998:	d009      	beq.n	d00579ae <drawFakeHorizon+0x11a>
d005799a:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d005799e:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00579a2:	4628      	mov	r0, r5
d00579a4:	4639      	mov	r1, r7
d00579a6:	bfa8      	it	ge
d00579a8:	2201      	movge	r2, #1
d00579aa:	f001 fc8f 	bl	d00592cc <memset>
d00579ae:	3401      	adds	r4, #1
d00579b0:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00579b4:	d04e      	beq.n	d0057a54 <drawFakeHorizon+0x1c0>
d00579b6:	ee07 4a90 	vmov	s15, r4
d00579ba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00579be:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00579c2:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00579c6:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d00579ca:	ee3a 7a27 	vadd.f32	s14, s20, s15
d00579ce:	eeb0 6ae6 	vabs.f32	s12, s13
d00579d2:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00579d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00579da:	da95      	bge.n	d0057908 <drawFakeHorizon+0x74>
d00579dc:	eef0 6ac7 	vabs.f32	s13, s14
d00579e0:	eef4 6ac8 	vcmpe.f32	s13, s16
d00579e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00579e8:	db4c      	blt.n	d0057a84 <drawFakeHorizon+0x1f0>
d00579ea:	2200      	movs	r2, #0
d00579ec:	eec9 6a07 	vdiv.f32	s13, s18, s14
d00579f0:	6833      	ldr	r3, [r6, #0]
d00579f2:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00579f6:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00579fa:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00579fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a02:	bfcc      	ite	gt
d0057a04:	2301      	movgt	r3, #1
d0057a06:	2300      	movle	r3, #0
d0057a08:	4293      	cmp	r3, r2
d0057a0a:	f000 8085 	beq.w	d0057b18 <drawFakeHorizon+0x284>
d0057a0e:	eeb4 bac8 	vcmpe.f32	s22, s16
d0057a12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a16:	d429      	bmi.n	d0057a6c <drawFakeHorizon+0x1d8>
d0057a18:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0057a1c:	eeb0 7a6b 	vmov.f32	s14, s23
d0057a20:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0057a24:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0057a28:	ee17 ba90 	vmov	fp, s15
d0057a2c:	f1bb 0f00 	cmp.w	fp, #0
d0057a30:	da9a      	bge.n	d0057968 <drawFakeHorizon+0xd4>
d0057a32:	2a00      	cmp	r2, #0
d0057a34:	d141      	bne.n	d0057aba <drawFakeHorizon+0x226>
d0057a36:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0057a3a:	f104 0401 	add.w	r4, r4, #1
d0057a3e:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0057a42:	4628      	mov	r0, r5
d0057a44:	bfa8      	it	ge
d0057a46:	2201      	movge	r2, #1
d0057a48:	4641      	mov	r1, r8
d0057a4a:	f001 fc3f 	bl	d00592cc <memset>
d0057a4e:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0057a52:	d1b0      	bne.n	d00579b6 <drawFakeHorizon+0x122>
d0057a54:	eddf 7a36 	vldr	s15, [pc, #216]	; d0057b30 <drawFakeHorizon+0x29c>
d0057a58:	eeb4 bae7 	vcmpe.f32	s22, s15
d0057a5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a60:	da31      	bge.n	d0057ac6 <drawFakeHorizon+0x232>
d0057a62:	b003      	add	sp, #12
d0057a64:	ecbd 8b0e 	vpop	{d8-d14}
d0057a68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057a6c:	b93a      	cbnz	r2, d0057a7e <drawFakeHorizon+0x1ea>
d0057a6e:	22a0      	movs	r2, #160	; 0xa0
d0057a70:	4628      	mov	r0, r5
d0057a72:	4639      	mov	r1, r7
d0057a74:	4415      	add	r5, r2
d0057a76:	f001 fc29 	bl	d00592cc <memset>
d0057a7a:	22a0      	movs	r2, #160	; 0xa0
d0057a7c:	e7db      	b.n	d0057a36 <drawFakeHorizon+0x1a2>
d0057a7e:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d0057a82:	e77d      	b.n	d0057980 <drawFakeHorizon+0xec>
d0057a84:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0057a88:	6832      	ldr	r2, [r6, #0]
d0057a8a:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d0057a8e:	4639      	mov	r1, r7
d0057a90:	4628      	mov	r0, r5
d0057a92:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0057a96:	f001 fc19 	bl	d00592cc <memset>
d0057a9a:	e788      	b.n	d00579ae <drawFakeHorizon+0x11a>
d0057a9c:	f1bb 0f00 	cmp.w	fp, #0
d0057aa0:	d00e      	beq.n	d0057ac0 <drawFakeHorizon+0x22c>
d0057aa2:	4628      	mov	r0, r5
d0057aa4:	4652      	mov	r2, sl
d0057aa6:	4639      	mov	r1, r7
d0057aa8:	4455      	add	r5, sl
d0057aaa:	f001 fc0f 	bl	d00592cc <memset>
d0057aae:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0057ab2:	f6bf af7c 	bge.w	d00579ae <drawFakeHorizon+0x11a>
d0057ab6:	4652      	mov	r2, sl
d0057ab8:	e7bd      	b.n	d0057a36 <drawFakeHorizon+0x1a2>
d0057aba:	f04f 0a00 	mov.w	sl, #0
d0057abe:	e76c      	b.n	d005799a <drawFakeHorizon+0x106>
d0057ac0:	46da      	mov	sl, fp
d0057ac2:	4652      	mov	r2, sl
d0057ac4:	e7b7      	b.n	d0057a36 <drawFakeHorizon+0x1a2>
d0057ac6:	ee2d ca0c 	vmul.f32	s24, s26, s24
d0057aca:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0057b34 <drawFakeHorizon+0x2a0>
d0057ace:	f240 12df 	movw	r2, #479	; 0x1df
d0057ad2:	2000      	movs	r0, #0
d0057ad4:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0057ad8:	f8cd 9000 	str.w	r9, [sp]
d0057adc:	eef0 6a4c 	vmov.f32	s13, s24
d0057ae0:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0057ae4:	eee9 6ace 	vfms.f32	s13, s19, s28
d0057ae8:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d0057aec:	ee86 7aad 	vdiv.f32	s14, s13, s27
d0057af0:	ee37 7a2b 	vadd.f32	s14, s14, s23
d0057af4:	ee77 baab 	vadd.f32	s23, s15, s23
d0057af8:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0057afc:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d0057b00:	ee17 1a10 	vmov	r1, s14
d0057b04:	ee17 3a90 	vmov	r3, s15
d0057b08:	f7fa fcc6 	bl	d0052498 <drawLine>
d0057b0c:	b003      	add	sp, #12
d0057b0e:	ecbd 8b0e 	vpop	{d8-d14}
d0057b12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057b16:	4770      	bx	lr
d0057b18:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057b1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b20:	ddb5      	ble.n	d0057a8e <drawFakeHorizon+0x1fa>
d0057b22:	4641      	mov	r1, r8
d0057b24:	e7b4      	b.n	d0057a90 <drawFakeHorizon+0x1fc>
d0057b26:	bf00      	nop
d0057b28:	439f8000 	.word	0x439f8000
d0057b2c:	d0127a44 	.word	0xd0127a44
d0057b30:	38d1b717 	.word	0x38d1b717
d0057b34:	43ef8000 	.word	0x43ef8000

d0057b38 <submitEntitySolid>:
d0057b38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0057b3c:	ed2d 8b10 	vpush	{d8-d15}
d0057b40:	b0bb      	sub	sp, #236	; 0xec
d0057b42:	f10d 038f 	add.w	r3, sp, #143	; 0x8f
d0057b46:	9102      	str	r1, [sp, #8]
d0057b48:	f023 031f 	bic.w	r3, r3, #31
d0057b4c:	9303      	str	r3, [sp, #12]
d0057b4e:	2800      	cmp	r0, #0
d0057b50:	f000 832e 	beq.w	d00581b0 <submitEntitySolid+0x678>
d0057b54:	f8d0 a00c 	ldr.w	sl, [r0, #12]
d0057b58:	4604      	mov	r4, r0
d0057b5a:	f1ba 0f00 	cmp.w	sl, #0
d0057b5e:	f000 8327 	beq.w	d00581b0 <submitEntitySolid+0x678>
d0057b62:	f8da 3000 	ldr.w	r3, [sl]
d0057b66:	2b00      	cmp	r3, #0
d0057b68:	f000 8322 	beq.w	d00581b0 <submitEntitySolid+0x678>
d0057b6c:	f8da 3010 	ldr.w	r3, [sl, #16]
d0057b70:	2b00      	cmp	r3, #0
d0057b72:	f000 831d 	beq.w	d00581b0 <submitEntitySolid+0x678>
d0057b76:	f8da 3004 	ldr.w	r3, [sl, #4]
d0057b7a:	3b01      	subs	r3, #1
d0057b7c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0057b80:	f080 8316 	bcs.w	d00581b0 <submitEntitySolid+0x678>
d0057b84:	f8da 3014 	ldr.w	r3, [sl, #20]
d0057b88:	2b00      	cmp	r3, #0
d0057b8a:	f340 8311 	ble.w	d00581b0 <submitEntitySolid+0x678>
d0057b8e:	460e      	mov	r6, r1
d0057b90:	edd1 fa11 	vldr	s31, [r1, #68]	; 0x44
d0057b94:	ed91 ba10 	vldr	s22, [r1, #64]	; 0x40
d0057b98:	f7fe ff04 	bl	d00569a4 <lightsGet>
d0057b9c:	4605      	mov	r5, r0
d0057b9e:	f7fe ff05 	bl	d00569ac <lightsGetCount>
d0057ba2:	edda 7a09 	vldr	s15, [sl, #36]	; 0x24
d0057ba6:	ed9a 7a0a 	vldr	s14, [sl, #40]	; 0x28
d0057baa:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0057bae:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0057bb2:	edda 7a08 	vldr	s15, [sl, #32]
d0057bb6:	edd4 3a00 	vldr	s7, [r4]
d0057bba:	edcd 7a05 	vstr	s15, [sp, #20]
d0057bbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057bc2:	edda 7a0c 	vldr	s15, [sl, #48]	; 0x30
d0057bc6:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0057bca:	edd4 1a02 	vldr	s3, [r4, #8]
d0057bce:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0057bd2:	bfc8      	it	gt
d0057bd4:	2301      	movgt	r3, #1
d0057bd6:	edda 7a0b 	vldr	s15, [sl, #44]	; 0x2c
d0057bda:	bfd8      	it	le
d0057bdc:	2300      	movle	r3, #0
d0057bde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057be2:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d0057be6:	edcd 7a0d 	vstr	s15, [sp, #52]	; 0x34
d0057bea:	edd6 7a00 	vldr	s15, [r6]
d0057bee:	bfc8      	it	gt
d0057bf0:	f043 0301 	orrgt.w	r3, r3, #1
d0057bf4:	ed94 fa01 	vldr	s30, [r4, #4]
d0057bf8:	edcd 7a07 	vstr	s15, [sp, #28]
d0057bfc:	edd6 7a01 	vldr	s15, [r6, #4]
d0057c00:	ed94 aa07 	vldr	s20, [r4, #28]
d0057c04:	edcd 7a08 	vstr	s15, [sp, #32]
d0057c08:	edd6 7a02 	vldr	s15, [r6, #8]
d0057c0c:	edd4 aa08 	vldr	s21, [r4, #32]
d0057c10:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0057c14:	edd4 ea09 	vldr	s29, [r4, #36]	; 0x24
d0057c18:	edd4 ba0a 	vldr	s23, [r4, #40]	; 0x28
d0057c1c:	ed94 ca0b 	vldr	s24, [r4, #44]	; 0x2c
d0057c20:	edd4 ca0c 	vldr	s25, [r4, #48]	; 0x30
d0057c24:	ed94 da04 	vldr	s26, [r4, #16]
d0057c28:	edd4 da05 	vldr	s27, [r4, #20]
d0057c2c:	ed94 ea06 	vldr	s28, [r4, #24]
d0057c30:	ed96 5a06 	vldr	s10, [r6, #24]
d0057c34:	ed96 3a07 	vldr	s6, [r6, #28]
d0057c38:	edcd 3a01 	vstr	s7, [sp, #4]
d0057c3c:	edcd 1a06 	vstr	s3, [sp, #24]
d0057c40:	edd6 6a08 	vldr	s13, [r6, #32]
d0057c44:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d0057c48:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d0057c4c:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d0057c50:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d0057c54:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d0057c58:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d0057c5c:	b113      	cbz	r3, d0057c64 <submitEntitySolid+0x12c>
d0057c5e:	2800      	cmp	r0, #0
d0057c60:	f300 8453 	bgt.w	d005850a <submitEntitySolid+0x9d2>
d0057c64:	2300      	movs	r3, #0
d0057c66:	9304      	str	r3, [sp, #16]
d0057c68:	eddd 4a08 	vldr	s9, [sp, #32]
d0057c6c:	ee6a 1a83 	vmul.f32	s3, s21, s6
d0057c70:	ed9d 4a07 	vldr	s8, [sp, #28]
d0057c74:	ee2c 1a03 	vmul.f32	s2, s24, s6
d0057c78:	ee7f 3a64 	vsub.f32	s7, s30, s9
d0057c7c:	eddd 4a01 	vldr	s9, [sp, #4]
d0057c80:	ee6a 0aa2 	vmul.f32	s1, s21, s5
d0057c84:	f8da 0004 	ldr.w	r0, [sl, #4]
d0057c88:	ee74 4ac4 	vsub.f32	s9, s9, s8
d0057c8c:	ee23 9a23 	vmul.f32	s18, s6, s7
d0057c90:	2800      	cmp	r0, #0
d0057c92:	ee62 9aa3 	vmul.f32	s19, s5, s7
d0057c96:	ee2c 0a22 	vmul.f32	s0, s24, s5
d0057c9a:	ee62 3a23 	vmul.f32	s7, s4, s7
d0057c9e:	ee2a 8a82 	vmul.f32	s16, s21, s4
d0057ca2:	ee6c 8a02 	vmul.f32	s17, s24, s4
d0057ca6:	ee2d 3a83 	vmul.f32	s6, s27, s6
d0057caa:	ee6d 2aa2 	vmul.f32	s5, s27, s5
d0057cae:	ee2d 2a82 	vmul.f32	s4, s27, s4
d0057cb2:	eee5 9aa4 	vfma.f32	s19, s11, s9
d0057cb6:	eee6 3a24 	vfma.f32	s7, s12, s9
d0057cba:	eeea 0a25 	vfma.f32	s1, s20, s11
d0057cbe:	eeab 0aa5 	vfma.f32	s0, s23, s11
d0057cc2:	eeed 2a25 	vfma.f32	s5, s26, s11
d0057cc6:	eddd 5a09 	vldr	s11, [sp, #36]	; 0x24
d0057cca:	eeaa 8a06 	vfma.f32	s16, s20, s12
d0057cce:	eeeb 8a86 	vfma.f32	s17, s23, s12
d0057cd2:	eead 2a06 	vfma.f32	s4, s26, s12
d0057cd6:	ed9d 6a06 	vldr	s12, [sp, #24]
d0057cda:	eea5 9a24 	vfma.f32	s18, s10, s9
d0057cde:	eeea 1a05 	vfma.f32	s3, s20, s10
d0057ce2:	eeab 1a85 	vfma.f32	s2, s23, s10
d0057ce6:	eead 3a05 	vfma.f32	s6, s26, s10
d0057cea:	ee36 6a65 	vsub.f32	s12, s12, s11
d0057cee:	eeee 0a87 	vfma.f32	s1, s29, s14
d0057cf2:	eeac 0a87 	vfma.f32	s0, s25, s14
d0057cf6:	eeee 1aa6 	vfma.f32	s3, s29, s13
d0057cfa:	eeac 1aa6 	vfma.f32	s2, s25, s13
d0057cfe:	eea6 9a86 	vfma.f32	s18, s13, s12
d0057d02:	eee7 9a06 	vfma.f32	s19, s14, s12
d0057d06:	eee7 3a86 	vfma.f32	s7, s15, s12
d0057d0a:	eeae 3a26 	vfma.f32	s6, s28, s13
d0057d0e:	eeee 2a07 	vfma.f32	s5, s28, s14
d0057d12:	eeae 8aa7 	vfma.f32	s16, s29, s15
d0057d16:	eeec 8aa7 	vfma.f32	s17, s25, s15
d0057d1a:	eeae 2a27 	vfma.f32	s4, s28, s15
d0057d1e:	dd5b      	ble.n	d0057dd8 <submitEntitySolid+0x2a0>
d0057d20:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0057d24:	f8da 3000 	ldr.w	r3, [sl]
d0057d28:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0057d2c:	ed8d ba0f 	vstr	s22, [sp, #60]	; 0x3c
d0057d30:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0057d34:	49ef      	ldr	r1, [pc, #956]	; (d00580f4 <submitEntitySolid+0x5bc>)
d0057d36:	4af0      	ldr	r2, [pc, #960]	; (d00580f8 <submitEntitySolid+0x5c0>)
d0057d38:	ed9d ba01 	vldr	s22, [sp, #4]
d0057d3c:	eddd fa06 	vldr	s31, [sp, #24]
d0057d40:	edd3 7a01 	vldr	s15, [r3, #4]
d0057d44:	330c      	adds	r3, #12
d0057d46:	ed13 4a03 	vldr	s8, [r3, #-12]
d0057d4a:	310c      	adds	r1, #12
d0057d4c:	ee2b 5aa7 	vmul.f32	s10, s23, s15
d0057d50:	ed53 4a01 	vldr	s9, [r3, #-4]
d0057d54:	ee6c 5a27 	vmul.f32	s11, s24, s15
d0057d58:	4298      	cmp	r0, r3
d0057d5a:	ee2c 6aa7 	vmul.f32	s12, s25, s15
d0057d5e:	f102 020c 	add.w	r2, r2, #12
d0057d62:	ee61 6a27 	vmul.f32	s13, s2, s15
d0057d66:	ee20 7a27 	vmul.f32	s14, s0, s15
d0057d6a:	ee68 7aa7 	vmul.f32	s15, s17, s15
d0057d6e:	eeaa 5a04 	vfma.f32	s10, s20, s8
d0057d72:	eeea 5a84 	vfma.f32	s11, s21, s8
d0057d76:	eeae 6a84 	vfma.f32	s12, s29, s8
d0057d7a:	eee1 6a84 	vfma.f32	s13, s3, s8
d0057d7e:	eea0 7a84 	vfma.f32	s14, s1, s8
d0057d82:	eee8 7a04 	vfma.f32	s15, s16, s8
d0057d86:	ee3b 5a05 	vadd.f32	s10, s22, s10
d0057d8a:	ee7f 5a25 	vadd.f32	s11, s30, s11
d0057d8e:	ee3f 6a86 	vadd.f32	s12, s31, s12
d0057d92:	ee76 6a89 	vadd.f32	s13, s13, s18
d0057d96:	ee37 7a29 	vadd.f32	s14, s14, s19
d0057d9a:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0057d9e:	eead 5a24 	vfma.f32	s10, s26, s9
d0057da2:	eeed 5aa4 	vfma.f32	s11, s27, s9
d0057da6:	eeae 6a24 	vfma.f32	s12, s28, s9
d0057daa:	eee3 6a24 	vfma.f32	s13, s6, s9
d0057dae:	eea2 7aa4 	vfma.f32	s14, s5, s9
d0057db2:	eee2 7a24 	vfma.f32	s15, s4, s9
d0057db6:	ed01 5a03 	vstr	s10, [r1, #-12]
d0057dba:	ed41 5a02 	vstr	s11, [r1, #-8]
d0057dbe:	ed01 6a01 	vstr	s12, [r1, #-4]
d0057dc2:	ed42 6a03 	vstr	s13, [r2, #-12]
d0057dc6:	ed02 7a02 	vstr	s14, [r2, #-8]
d0057dca:	ed42 7a01 	vstr	s15, [r2, #-4]
d0057dce:	d1b7      	bne.n	d0057d40 <submitEntitySolid+0x208>
d0057dd0:	eddd fa0e 	vldr	s31, [sp, #56]	; 0x38
d0057dd4:	ed9d ba0f 	vldr	s22, [sp, #60]	; 0x3c
d0057dd8:	f8da 3014 	ldr.w	r3, [sl, #20]
d0057ddc:	2b00      	cmp	r3, #0
d0057dde:	9301      	str	r3, [sp, #4]
d0057de0:	f340 81e6 	ble.w	d00581b0 <submitEntitySolid+0x678>
d0057de4:	f04f 0900 	mov.w	r9, #0
d0057de8:	f8df 830c 	ldr.w	r8, [pc, #780]	; d00580f8 <submitEntitySolid+0x5c0>
d0057dec:	ed9f aac3 	vldr	s20, [pc, #780]	; d00580fc <submitEntitySolid+0x5c4>
d0057df0:	eddf aac3 	vldr	s21, [pc, #780]	; d0058100 <submitEntitySolid+0x5c8>
d0057df4:	ed9d da0a 	vldr	s26, [sp, #40]	; 0x28
d0057df8:	eddd ba0b 	vldr	s23, [sp, #44]	; 0x2c
d0057dfc:	ed9d ca0c 	vldr	s24, [sp, #48]	; 0x30
d0057e00:	eddd ca0d 	vldr	s25, [sp, #52]	; 0x34
d0057e04:	f8da 4010 	ldr.w	r4, [sl, #16]
d0057e08:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0057e0c:	58e3      	ldr	r3, [r4, r3]
d0057e0e:	eb04 1409 	add.w	r4, r4, r9, lsl #4
d0057e12:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0057e16:	6862      	ldr	r2, [r4, #4]
d0057e18:	68a1      	ldr	r1, [r4, #8]
d0057e1a:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0057e1e:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d0057e22:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0057e26:	edd5 6a02 	vldr	s13, [r5, #8]
d0057e2a:	eb01 0741 	add.w	r7, r1, r1, lsl #1
d0057e2e:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d0057e32:	eef4 6aef 	vcmpe.f32	s13, s31
d0057e36:	eb08 0787 	add.w	r7, r8, r7, lsl #2
d0057e3a:	ea4f 0c42 	mov.w	ip, r2, lsl #1
d0057e3e:	ea4f 0e41 	mov.w	lr, r1, lsl #1
d0057e42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e46:	dd0e      	ble.n	d0057e66 <submitEntitySolid+0x32e>
d0057e48:	edd6 7a02 	vldr	s15, [r6, #8]
d0057e4c:	eef4 7aef 	vcmpe.f32	s15, s31
d0057e50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e54:	dd07      	ble.n	d0057e66 <submitEntitySolid+0x32e>
d0057e56:	edd7 7a02 	vldr	s15, [r7, #8]
d0057e5a:	eef4 7aef 	vcmpe.f32	s15, s31
d0057e5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e62:	f300 819f 	bgt.w	d00581a4 <submitEntitySolid+0x66c>
d0057e66:	eef4 6acb 	vcmpe.f32	s13, s22
d0057e6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e6e:	d516      	bpl.n	d0057e9e <submitEntitySolid+0x366>
d0057e70:	eb0c 0002 	add.w	r0, ip, r2
d0057e74:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057e78:	edd0 7a02 	vldr	s15, [r0, #8]
d0057e7c:	eef4 7acb 	vcmpe.f32	s15, s22
d0057e80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e84:	d50b      	bpl.n	d0057e9e <submitEntitySolid+0x366>
d0057e86:	eb0e 0001 	add.w	r0, lr, r1
d0057e8a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057e8e:	edd0 7a02 	vldr	s15, [r0, #8]
d0057e92:	eef4 7acb 	vcmpe.f32	s15, s22
d0057e96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e9a:	f100 8183 	bmi.w	d00581a4 <submitEntitySolid+0x66c>
d0057e9e:	ed95 6a00 	vldr	s12, [r5]
d0057ea2:	edd5 3a02 	vldr	s7, [r5, #8]
d0057ea6:	ed96 2a00 	vldr	s4, [r6]
d0057eaa:	ed97 5a02 	vldr	s10, [r7, #8]
d0057eae:	ee72 1a46 	vsub.f32	s3, s4, s12
d0057eb2:	edd5 7a01 	vldr	s15, [r5, #4]
d0057eb6:	ee35 5a63 	vsub.f32	s10, s10, s7
d0057eba:	ed96 4a02 	vldr	s8, [r6, #8]
d0057ebe:	edd7 5a01 	vldr	s11, [r7, #4]
d0057ec2:	ed97 1a00 	vldr	s2, [r7]
d0057ec6:	ee34 4a63 	vsub.f32	s8, s8, s7
d0057eca:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0057ece:	edd6 4a01 	vldr	s9, [r6, #4]
d0057ed2:	ee31 7a46 	vsub.f32	s14, s2, s12
d0057ed6:	ee65 2a61 	vnmul.f32	s5, s10, s3
d0057eda:	ee74 4ae7 	vsub.f32	s9, s9, s15
d0057ede:	ee25 3ac4 	vnmul.f32	s6, s11, s8
d0057ee2:	eee4 2a07 	vfma.f32	s5, s8, s14
d0057ee6:	ee27 7a64 	vnmul.f32	s14, s14, s9
d0057eea:	eea4 3a85 	vfma.f32	s6, s9, s10
d0057eee:	eea1 7aa5 	vfma.f32	s14, s3, s11
d0057ef2:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0057ef6:	eee6 7a03 	vfma.f32	s15, s12, s6
d0057efa:	eee3 7a87 	vfma.f32	s15, s7, s14
d0057efe:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0057f02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f06:	f280 814d 	bge.w	d00581a4 <submitEntitySolid+0x66c>
d0057f0a:	eef1 5a66 	vneg.f32	s11, s13
d0057f0e:	eef4 5ac6 	vcmpe.f32	s11, s12
d0057f12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f16:	dd1a      	ble.n	d0057f4e <submitEntitySolid+0x416>
d0057f18:	eb0c 0002 	add.w	r0, ip, r2
d0057f1c:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057f20:	edd0 7a02 	vldr	s15, [r0, #8]
d0057f24:	eef1 7a67 	vneg.f32	s15, s15
d0057f28:	eef4 7ac2 	vcmpe.f32	s15, s4
d0057f2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f30:	dd0d      	ble.n	d0057f4e <submitEntitySolid+0x416>
d0057f32:	eb0e 0001 	add.w	r0, lr, r1
d0057f36:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057f3a:	edd0 7a02 	vldr	s15, [r0, #8]
d0057f3e:	eef1 7a67 	vneg.f32	s15, s15
d0057f42:	eef4 7ac1 	vcmpe.f32	s15, s2
d0057f46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f4a:	f300 812b 	bgt.w	d00581a4 <submitEntitySolid+0x66c>
d0057f4e:	eef4 6ac6 	vcmpe.f32	s13, s12
d0057f52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f56:	d516      	bpl.n	d0057f86 <submitEntitySolid+0x44e>
d0057f58:	eb0c 0002 	add.w	r0, ip, r2
d0057f5c:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057f60:	edd0 7a02 	vldr	s15, [r0, #8]
d0057f64:	eef4 7ac2 	vcmpe.f32	s15, s4
d0057f68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f6c:	d50b      	bpl.n	d0057f86 <submitEntitySolid+0x44e>
d0057f6e:	eb0e 0001 	add.w	r0, lr, r1
d0057f72:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057f76:	edd0 7a02 	vldr	s15, [r0, #8]
d0057f7a:	eef4 7ac1 	vcmpe.f32	s15, s2
d0057f7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f82:	f100 810f 	bmi.w	d00581a4 <submitEntitySolid+0x66c>
d0057f86:	ee26 7a8a 	vmul.f32	s14, s13, s20
d0057f8a:	eb0b 0003 	add.w	r0, fp, r3
d0057f8e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057f92:	eeb1 5a47 	vneg.f32	s10, s14
d0057f96:	edd0 7a01 	vldr	s15, [r0, #4]
d0057f9a:	eef4 7ac5 	vcmpe.f32	s15, s10
d0057f9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fa2:	d51e      	bpl.n	d0057fe2 <submitEntitySolid+0x4aa>
d0057fa4:	eb0c 0002 	add.w	r0, ip, r2
d0057fa8:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057fac:	edd0 4a02 	vldr	s9, [r0, #8]
d0057fb0:	ed90 4a01 	vldr	s8, [r0, #4]
d0057fb4:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0057fb8:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057fbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fc0:	d50f      	bpl.n	d0057fe2 <submitEntitySolid+0x4aa>
d0057fc2:	eb0e 0001 	add.w	r0, lr, r1
d0057fc6:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057fca:	edd0 4a02 	vldr	s9, [r0, #8]
d0057fce:	ed90 4a01 	vldr	s8, [r0, #4]
d0057fd2:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0057fd6:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057fda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fde:	f100 80e1 	bmi.w	d00581a4 <submitEntitySolid+0x66c>
d0057fe2:	eef4 7ac7 	vcmpe.f32	s15, s14
d0057fe6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fea:	dd1e      	ble.n	d005802a <submitEntitySolid+0x4f2>
d0057fec:	eb0c 0002 	add.w	r0, ip, r2
d0057ff0:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057ff4:	edd0 4a02 	vldr	s9, [r0, #8]
d0057ff8:	ed90 4a01 	vldr	s8, [r0, #4]
d0057ffc:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0058000:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0058004:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058008:	dd0f      	ble.n	d005802a <submitEntitySolid+0x4f2>
d005800a:	eb0e 0001 	add.w	r0, lr, r1
d005800e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058012:	edd0 4a02 	vldr	s9, [r0, #8]
d0058016:	ed90 4a01 	vldr	s8, [r0, #4]
d005801a:	ee64 4a8a 	vmul.f32	s9, s9, s20
d005801e:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0058022:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058026:	f300 80bd 	bgt.w	d00581a4 <submitEntitySolid+0x66c>
d005802a:	eef4 6acb 	vcmpe.f32	s13, s22
d005802e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058032:	db26      	blt.n	d0058082 <submitEntitySolid+0x54a>
d0058034:	eb0c 0002 	add.w	r0, ip, r2
d0058038:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005803c:	edd0 4a02 	vldr	s9, [r0, #8]
d0058040:	eef4 4acb 	vcmpe.f32	s9, s22
d0058044:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058048:	db1b      	blt.n	d0058082 <submitEntitySolid+0x54a>
d005804a:	eb0e 0001 	add.w	r0, lr, r1
d005804e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058052:	ed90 4a02 	vldr	s8, [r0, #8]
d0058056:	eeb4 4acb 	vcmpe.f32	s8, s22
d005805a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005805e:	eef4 5ac6 	vcmpe.f32	s11, s12
d0058062:	bfac      	ite	ge
d0058064:	2001      	movge	r0, #1
d0058066:	2000      	movlt	r0, #0
d0058068:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005806c:	f000 0001 	and.w	r0, r0, #1
d0058070:	bf88      	it	hi
d0058072:	2000      	movhi	r0, #0
d0058074:	b128      	cbz	r0, d0058082 <submitEntitySolid+0x54a>
d0058076:	eef4 6a46 	vcmp.f32	s13, s12
d005807a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005807e:	f280 82ad 	bge.w	d00585dc <submitEntitySolid+0xaa4>
d0058082:	2000      	movs	r0, #0
d0058084:	448e      	add	lr, r1
d0058086:	4462      	add	r2, ip
d0058088:	491a      	ldr	r1, [pc, #104]	; (d00580f4 <submitEntitySolid+0x5bc>)
d005808a:	445b      	add	r3, fp
d005808c:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0058090:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0058094:	eb01 018e 	add.w	r1, r1, lr, lsl #2
d0058098:	edd2 4a00 	vldr	s9, [r2]
d005809c:	ed93 6a00 	vldr	s12, [r3]
d00580a0:	ed93 7a02 	vldr	s14, [r3, #8]
d00580a4:	ed91 4a02 	vldr	s8, [r1, #8]
d00580a8:	ee74 2ac6 	vsub.f32	s5, s9, s12
d00580ac:	edd3 6a01 	vldr	s13, [r3, #4]
d00580b0:	ee34 2a47 	vsub.f32	s4, s8, s14
d00580b4:	edd2 5a02 	vldr	s11, [r2, #8]
d00580b8:	edd1 3a01 	vldr	s7, [r1, #4]
d00580bc:	ed91 3a00 	vldr	s6, [r1]
d00580c0:	ee35 1ac7 	vsub.f32	s2, s11, s14
d00580c4:	ee73 7ae6 	vsub.f32	s15, s7, s13
d00580c8:	ed92 5a01 	vldr	s10, [r2, #4]
d00580cc:	ee33 8a46 	vsub.f32	s16, s6, s12
d00580d0:	ee62 8a62 	vnmul.f32	s17, s4, s5
d00580d4:	ee75 1a66 	vsub.f32	s3, s10, s13
d00580d8:	ee27 9ac1 	vnmul.f32	s18, s15, s2
d00580dc:	eee1 8a08 	vfma.f32	s17, s2, s16
d00580e0:	ee28 8a61 	vnmul.f32	s16, s16, s3
d00580e4:	eea1 9a82 	vfma.f32	s18, s3, s4
d00580e8:	eea2 8aa7 	vfma.f32	s16, s5, s15
d00580ec:	ee68 7aa8 	vmul.f32	s15, s17, s17
d00580f0:	e00e      	b.n	d0058110 <submitEntitySolid+0x5d8>
d00580f2:	bf00      	nop
d00580f4:	d011b9a0 	.word	0xd011b9a0
d00580f8:	d008f960 	.word	0xd008f960
d00580fc:	3f2aaaab 	.word	0x3f2aaaab
d0058100:	358637bd 	.word	0x358637bd
d0058104:	3b808081 	.word	0x3b808081
d0058108:	3eaaaaab 	.word	0x3eaaaaab
d005810c:	00000000 	.word	0x00000000
d0058110:	eee9 7a09 	vfma.f32	s15, s18, s18
d0058114:	eee8 7a08 	vfma.f32	s15, s16, s16
d0058118:	eef4 7aea 	vcmpe.f32	s15, s21
d005811c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058120:	d940      	bls.n	d00581a4 <submitEntitySolid+0x66c>
d0058122:	7b63      	ldrb	r3, [r4, #13]
d0058124:	eddd 2a05 	vldr	s5, [sp, #20]
d0058128:	ee0f 3a10 	vmov	s30, r3
d005812c:	9b04      	ldr	r3, [sp, #16]
d005812e:	ee72 9a8d 	vadd.f32	s19, s5, s26
d0058132:	ed5f 2a0c 	vldr	s5, [pc, #-48]	; d0058104 <submitEntitySolid+0x5cc>
d0058136:	eeb8 fa4f 	vcvt.f32.u32	s30, s30
d005813a:	ee2f fa22 	vmul.f32	s30, s30, s5
d005813e:	2b00      	cmp	r3, #0
d0058140:	d158      	bne.n	d00581f4 <submitEntitySolid+0x6bc>
d0058142:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0058146:	fec9 9a8f 	vmaxnm.f32	s19, s19, s30
d005814a:	9001      	str	r0, [sp, #4]
d005814c:	fe89 0ac0 	vminnm.f32	s0, s19, s0
d0058150:	f7fe fbfc 	bl	d005694c <brightnessToShadeF>
d0058154:	f894 b00c 	ldrb.w	fp, [r4, #12]
d0058158:	7ba3      	ldrb	r3, [r4, #14]
d005815a:	eeb0 8a40 	vmov.f32	s16, s0
d005815e:	f00b 0b0f 	and.w	fp, fp, #15
d0058162:	9801      	ldr	r0, [sp, #4]
d0058164:	b10b      	cbz	r3, d005816a <submitEntitySolid+0x632>
d0058166:	f04b 0b10 	orr.w	fp, fp, #16
d005816a:	b330      	cbz	r0, d00581ba <submitEntitySolid+0x682>
d005816c:	eef0 4a48 	vmov.f32	s9, s16
d0058170:	7b62      	ldrb	r2, [r4, #13]
d0058172:	4659      	mov	r1, fp
d0058174:	9802      	ldr	r0, [sp, #8]
d0058176:	ed97 3a00 	vldr	s6, [r7]
d005817a:	edd7 3a01 	vldr	s7, [r7, #4]
d005817e:	ed97 4a02 	vldr	s8, [r7, #8]
d0058182:	edd6 1a00 	vldr	s3, [r6]
d0058186:	ed96 2a01 	vldr	s4, [r6, #4]
d005818a:	edd6 2a02 	vldr	s5, [r6, #8]
d005818e:	ed95 0a00 	vldr	s0, [r5]
d0058192:	edd5 0a01 	vldr	s1, [r5, #4]
d0058196:	ed95 1a02 	vldr	s2, [r5, #8]
d005819a:	f7ff f919 	bl	d00573d0 <submitClippedTri>
d005819e:	f8da 3014 	ldr.w	r3, [sl, #20]
d00581a2:	9301      	str	r3, [sp, #4]
d00581a4:	f109 0901 	add.w	r9, r9, #1
d00581a8:	9b01      	ldr	r3, [sp, #4]
d00581aa:	4599      	cmp	r9, r3
d00581ac:	f6ff ae2a 	blt.w	d0057e04 <submitEntitySolid+0x2cc>
d00581b0:	b03b      	add	sp, #236	; 0xec
d00581b2:	ecbd 8b10 	vpop	{d8-d15}
d00581b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00581ba:	9902      	ldr	r1, [sp, #8]
d00581bc:	9803      	ldr	r0, [sp, #12]
d00581be:	ed97 3a00 	vldr	s6, [r7]
d00581c2:	edd7 3a01 	vldr	s7, [r7, #4]
d00581c6:	ed97 4a02 	vldr	s8, [r7, #8]
d00581ca:	edd6 1a00 	vldr	s3, [r6]
d00581ce:	ed96 2a01 	vldr	s4, [r6, #4]
d00581d2:	edd6 2a02 	vldr	s5, [r6, #8]
d00581d6:	ed95 0a00 	vldr	s0, [r5]
d00581da:	edd5 0a01 	vldr	s1, [r5, #4]
d00581de:	ed95 1a02 	vldr	s2, [r5, #8]
d00581e2:	f7fe fca9 	bl	d0056b38 <clipTriangleToFrustum>
d00581e6:	2802      	cmp	r0, #2
d00581e8:	f300 815e 	bgt.w	d00584a8 <submitEntitySolid+0x970>
d00581ec:	f8da 3014 	ldr.w	r3, [sl, #20]
d00581f0:	9301      	str	r3, [sp, #4]
d00581f2:	e7d7      	b.n	d00581a4 <submitEntitySolid+0x66c>
d00581f4:	ee74 da86 	vadd.f32	s27, s9, s12
d00581f8:	ed1f 6a3d 	vldr	s12, [pc, #-244]	; d0058108 <submitEntitySolid+0x5d0>
d00581fc:	ee35 ea26 	vadd.f32	s28, s10, s13
d0058200:	ee75 ea87 	vadd.f32	s29, s11, s14
d0058204:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0058208:	ee7d da83 	vadd.f32	s27, s27, s6
d005820c:	ee3e ea23 	vadd.f32	s28, s28, s7
d0058210:	ee7e ea84 	vadd.f32	s29, s29, s8
d0058214:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058218:	ee6d da86 	vmul.f32	s27, s27, s12
d005821c:	ee2e ea06 	vmul.f32	s28, s28, s12
d0058220:	ee6e ea86 	vmul.f32	s29, s29, s12
d0058224:	dd17      	ble.n	d0058256 <submitEntitySolid+0x71e>
d0058226:	ed9d 7a08 	vldr	s14, [sp, #32]
d005822a:	ee77 2a4e 	vsub.f32	s5, s14, s28
d005822e:	ed9d 7a07 	vldr	s14, [sp, #28]
d0058232:	ee37 3a6d 	vsub.f32	s6, s14, s27
d0058236:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d005823a:	ee37 4a6e 	vsub.f32	s8, s14, s29
d005823e:	ee22 7aa2 	vmul.f32	s14, s5, s5
d0058242:	eea3 7a03 	vfma.f32	s14, s6, s6
d0058246:	eea4 7a04 	vfma.f32	s14, s8, s8
d005824a:	eeb4 7aea 	vcmpe.f32	s14, s21
d005824e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058252:	f300 81a7 	bgt.w	d00585a4 <submitEntitySolid+0xa6c>
d0058256:	ed1f 4a53 	vldr	s8, [pc, #-332]	; d005810c <submitEntitySolid+0x5d4>
d005825a:	eef0 2a44 	vmov.f32	s5, s8
d005825e:	eeb0 3a44 	vmov.f32	s6, s8
d0058262:	eef1 6ae7 	vsqrt.f32	s13, s15
d0058266:	aa13      	add	r2, sp, #76	; 0x4c
d0058268:	4639      	mov	r1, r7
d005826a:	9501      	str	r5, [sp, #4]
d005826c:	f04f 0b00 	mov.w	fp, #0
d0058270:	4615      	mov	r5, r2
d0058272:	4627      	mov	r7, r4
d0058274:	4632      	mov	r2, r6
d0058276:	9e04      	ldr	r6, [sp, #16]
d0058278:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005827c:	eef0 0a6c 	vmov.f32	s1, s25
d0058280:	eeb0 6a4f 	vmov.f32	s12, s30
d0058284:	eeb0 5a47 	vmov.f32	s10, s14
d0058288:	eef0 ca43 	vmov.f32	s25, s6
d005828c:	eeb0 fa44 	vmov.f32	s30, s8
d0058290:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0058294:	eeb0 7a4b 	vmov.f32	s14, s22
d0058298:	eef0 6a4d 	vmov.f32	s13, s26
d005829c:	eeb0 ba6e 	vmov.f32	s22, s29
d00582a0:	eeb0 da62 	vmov.f32	s26, s5
d00582a4:	eef0 ea4e 	vmov.f32	s29, s28
d00582a8:	eeb0 ea6d 	vmov.f32	s28, s27
d00582ac:	ee28 8a27 	vmul.f32	s16, s16, s15
d00582b0:	ee29 9a27 	vmul.f32	s18, s18, s15
d00582b4:	ee68 8aa7 	vmul.f32	s17, s17, s15
d00582b8:	ee38 2a08 	vadd.f32	s4, s16, s16
d00582bc:	eef0 7a6f 	vmov.f32	s15, s31
d00582c0:	ee39 1a09 	vadd.f32	s2, s18, s18
d00582c4:	ee78 1aa8 	vadd.f32	s3, s17, s17
d00582c8:	eef0 da48 	vmov.f32	s27, s16
d00582cc:	eef0 fa42 	vmov.f32	s31, s4
d00582d0:	f855 4f04 	ldr.w	r4, [r5, #4]!
d00582d4:	7823      	ldrb	r3, [r4, #0]
d00582d6:	2b00      	cmp	r3, #0
d00582d8:	d172      	bne.n	d00583c0 <submitEntitySolid+0x888>
d00582da:	ed94 0a02 	vldr	s0, [r4, #8]
d00582de:	ed94 4a01 	vldr	s8, [r4, #4]
d00582e2:	ee30 0a6e 	vsub.f32	s0, s0, s29
d00582e6:	edd4 4a03 	vldr	s9, [r4, #12]
d00582ea:	ee34 4a4e 	vsub.f32	s8, s8, s28
d00582ee:	edd4 3a0a 	vldr	s7, [r4, #40]	; 0x28
d00582f2:	ee74 4acb 	vsub.f32	s9, s9, s22
d00582f6:	ee60 5a00 	vmul.f32	s11, s0, s0
d00582fa:	ee23 3aa3 	vmul.f32	s6, s7, s7
d00582fe:	eee4 5a04 	vfma.f32	s11, s8, s8
d0058302:	eee4 5aa4 	vfma.f32	s11, s9, s9
d0058306:	eef4 5a6a 	vcmp.f32	s11, s21
d005830a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005830e:	dd44      	ble.n	d005839a <submitEntitySolid+0x862>
d0058310:	eeb4 3a65 	vcmp.f32	s6, s11
d0058314:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058318:	dd3f      	ble.n	d005839a <submitEntitySolid+0x862>
d005831a:	eeb1 8ae5 	vsqrt.f32	s16, s11
d005831e:	edd4 2a08 	vldr	s5, [r4, #32]
d0058322:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0058326:	eeb4 2ae5 	vcmpe.f32	s4, s11
d005832a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005832e:	ee85 3a08 	vdiv.f32	s6, s10, s16
d0058332:	ee24 4a03 	vmul.f32	s8, s8, s6
d0058336:	ee20 0a03 	vmul.f32	s0, s0, s6
d005833a:	ee64 4a83 	vmul.f32	s9, s9, s6
d005833e:	f140 80b0 	bpl.w	d00584a2 <submitEntitySolid+0x96a>
d0058342:	ed94 2a09 	vldr	s4, [r4, #36]	; 0x24
d0058346:	eef4 2ac2 	vcmpe.f32	s5, s4
d005834a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005834e:	da24      	bge.n	d005839a <submitEntitySolid+0x862>
d0058350:	eef4 3ac2 	vcmpe.f32	s7, s4
d0058354:	ee65 5a83 	vmul.f32	s11, s11, s6
d0058358:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005835c:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0058360:	f240 810d 	bls.w	d005857e <submitEntitySolid+0xa46>
d0058364:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058368:	f2c0 81c2 	blt.w	d00586f0 <submitEntitySolid+0xbb8>
d005836c:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0058370:	ee72 2a62 	vsub.f32	s5, s4, s5
d0058374:	eeb6 3a08 	vmov.f32	s6, #104	; 0x3f400000  0.750
d0058378:	eeb0 8a45 	vmov.f32	s16, s10
d005837c:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0058380:	ed5f 5a9e 	vldr	s11, [pc, #-632]	; d005810c <submitEntitySolid+0x5d4>
d0058384:	fec3 5aa5 	vmaxnm.f32	s11, s7, s11
d0058388:	fec5 5ac5 	vminnm.f32	s11, s11, s10
d005838c:	eea5 8ac3 	vfms.f32	s16, s11, s6
d0058390:	eeb5 8ac0 	vcmpe.f32	s16, #0.0
d0058394:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058398:	d820      	bhi.n	d00583dc <submitEntitySolid+0x8a4>
d005839a:	f10b 0b01 	add.w	fp, fp, #1
d005839e:	455e      	cmp	r6, fp
d00583a0:	d196      	bne.n	d00582d0 <submitEntitySolid+0x798>
d00583a2:	463c      	mov	r4, r7
d00583a4:	eef0 fa67 	vmov.f32	s31, s15
d00583a8:	eeb0 ba47 	vmov.f32	s22, s14
d00583ac:	9d01      	ldr	r5, [sp, #4]
d00583ae:	eeb0 da66 	vmov.f32	s26, s13
d00583b2:	4616      	mov	r6, r2
d00583b4:	eef0 ca60 	vmov.f32	s25, s1
d00583b8:	460f      	mov	r7, r1
d00583ba:	eeb0 fa46 	vmov.f32	s30, s12
d00583be:	e6c0      	b.n	d0058142 <submitEntitySolid+0x60a>
d00583c0:	ed94 4a04 	vldr	s8, [r4, #16]
d00583c4:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d00583c8:	ed94 0a05 	vldr	s0, [r4, #20]
d00583cc:	edd4 4a06 	vldr	s9, [r4, #24]
d00583d0:	eeb1 4a44 	vneg.f32	s8, s8
d00583d4:	eeb1 0a40 	vneg.f32	s0, s0
d00583d8:	eef1 4a64 	vneg.f32	s9, s9
d00583dc:	ee60 5a28 	vmul.f32	s11, s0, s17
d00583e0:	eee4 5a09 	vfma.f32	s11, s8, s18
d00583e4:	eee4 5aad 	vfma.f32	s11, s9, s27
d00583e8:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d00583ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00583f0:	d9d3      	bls.n	d005839a <submitEntitySolid+0x862>
d00583f2:	eef5 bac0 	vcmpe.f32	s23, #0.0
d00583f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00583fa:	dd07      	ble.n	d005840c <submitEntitySolid+0x8d4>
d00583fc:	edd4 3a07 	vldr	s7, [r4, #28]
d0058400:	ee6b 3aa3 	vmul.f32	s7, s23, s7
d0058404:	ee63 3a88 	vmul.f32	s7, s7, s16
d0058408:	eee5 9aa3 	vfma.f32	s19, s11, s7
d005840c:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0058410:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058414:	dd2f      	ble.n	d0058476 <submitEntitySolid+0x93e>
d0058416:	ee95 0aa1 	vfnms.f32	s0, s11, s3
d005841a:	ee95 4a81 	vfnms.f32	s8, s11, s2
d005841e:	eed5 4aaf 	vfnms.f32	s9, s11, s31
d0058422:	ee2d 0a00 	vmul.f32	s0, s26, s0
d0058426:	eeac 0a84 	vfma.f32	s0, s25, s8
d005842a:	eeaf 0a24 	vfma.f32	s0, s30, s9
d005842e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0058432:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058436:	dd1e      	ble.n	d0058476 <submitEntitySolid+0x93e>
d0058438:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d005843c:	eef4 0a65 	vcmp.f32	s1, s11
d0058440:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058444:	d009      	beq.n	d005845a <submitEntitySolid+0x922>
d0058446:	eef3 5a00 	vmov.f32	s11, #48	; 0x41800000  16.0
d005844a:	eef4 0a65 	vcmp.f32	s1, s11
d005844e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058452:	f040 8124 	bne.w	d005869e <submitEntitySolid+0xb66>
d0058456:	ee20 0a00 	vmul.f32	s0, s0, s0
d005845a:	ee20 0a00 	vmul.f32	s0, s0, s0
d005845e:	ee20 0a00 	vmul.f32	s0, s0, s0
d0058462:	ee20 0a00 	vmul.f32	s0, s0, s0
d0058466:	edd4 5a07 	vldr	s11, [r4, #28]
d005846a:	ee6c 5a25 	vmul.f32	s11, s24, s11
d005846e:	ee25 8a88 	vmul.f32	s16, s11, s16
d0058472:	eee0 9a08 	vfma.f32	s19, s0, s16
d0058476:	eef4 9ac5 	vcmpe.f32	s19, s10
d005847a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005847e:	db8c      	blt.n	d005839a <submitEntitySolid+0x862>
d0058480:	463c      	mov	r4, r7
d0058482:	eef0 fa67 	vmov.f32	s31, s15
d0058486:	eeb0 ba47 	vmov.f32	s22, s14
d005848a:	9d01      	ldr	r5, [sp, #4]
d005848c:	eeb0 da66 	vmov.f32	s26, s13
d0058490:	4616      	mov	r6, r2
d0058492:	eef0 ca60 	vmov.f32	s25, s1
d0058496:	460f      	mov	r7, r1
d0058498:	eeb0 fa46 	vmov.f32	s30, s12
d005849c:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00584a0:	e64f      	b.n	d0058142 <submitEntitySolid+0x60a>
d00584a2:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d00584a6:	e799      	b.n	d00583dc <submitEntitySolid+0x8a4>
d00584a8:	1e46      	subs	r6, r0, #1
d00584aa:	eef0 4a48 	vmov.f32	s9, s16
d00584ae:	f8cd 9004 	str.w	r9, [sp, #4]
d00584b2:	2501      	movs	r5, #1
d00584b4:	46d9      	mov	r9, fp
d00584b6:	9802      	ldr	r0, [sp, #8]
d00584b8:	46b3      	mov	fp, r6
d00584ba:	4626      	mov	r6, r4
d00584bc:	9c03      	ldr	r4, [sp, #12]
d00584be:	462f      	mov	r7, r5
d00584c0:	3501      	adds	r5, #1
d00584c2:	7bb3      	ldrb	r3, [r6, #14]
d00584c4:	4649      	mov	r1, r9
d00584c6:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d00584ca:	7b72      	ldrb	r2, [r6, #13]
d00584cc:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d00584d0:	ed94 0a00 	vldr	s0, [r4]
d00584d4:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d00584d8:	edd4 0a01 	vldr	s1, [r4, #4]
d00584dc:	eb04 0c8c 	add.w	ip, r4, ip, lsl #2
d00584e0:	ed94 1a02 	vldr	s2, [r4, #8]
d00584e4:	edd7 1a00 	vldr	s3, [r7]
d00584e8:	ed97 2a01 	vldr	s4, [r7, #4]
d00584ec:	edd7 2a02 	vldr	s5, [r7, #8]
d00584f0:	ed9c 3a00 	vldr	s6, [ip]
d00584f4:	eddc 3a01 	vldr	s7, [ip, #4]
d00584f8:	ed9c 4a02 	vldr	s8, [ip, #8]
d00584fc:	f7fe ff68 	bl	d00573d0 <submitClippedTri>
d0058500:	455d      	cmp	r5, fp
d0058502:	d1dc      	bne.n	d00584be <submitEntitySolid+0x986>
d0058504:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0058508:	e670      	b.n	d00581ec <submitEntitySolid+0x6b4>
d005850a:	2200      	movs	r2, #0
d005850c:	ed9a 1a06 	vldr	s2, [sl, #24]
d0058510:	4611      	mov	r1, r2
d0058512:	e027      	b.n	d0058564 <submitEntitySolid+0xa2c>
d0058514:	edd5 4a02 	vldr	s9, [r5, #8]
d0058518:	ab3a      	add	r3, sp, #232	; 0xe8
d005851a:	ed95 0a01 	vldr	s0, [r5, #4]
d005851e:	ee74 4acf 	vsub.f32	s9, s9, s30
d0058522:	edd5 0a03 	vldr	s1, [r5, #12]
d0058526:	ee30 0a63 	vsub.f32	s0, s0, s7
d005852a:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d005852e:	ee70 0ae1 	vsub.f32	s1, s1, s3
d0058532:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0058536:	ee64 4aa4 	vmul.f32	s9, s9, s9
d005853a:	ee31 4a04 	vadd.f32	s8, s2, s8
d005853e:	eee0 4a00 	vfma.f32	s9, s0, s0
d0058542:	ee24 4a04 	vmul.f32	s8, s8, s8
d0058546:	eee0 4aa0 	vfma.f32	s9, s1, s1
d005854a:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005854e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058552:	db02      	blt.n	d005855a <submitEntitySolid+0xa22>
d0058554:	3101      	adds	r1, #1
d0058556:	f843 5c98 	str.w	r5, [r3, #-152]
d005855a:	3201      	adds	r2, #1
d005855c:	3540      	adds	r5, #64	; 0x40
d005855e:	4290      	cmp	r0, r2
d0058560:	f340 809a 	ble.w	d0058698 <submitEntitySolid+0xb60>
d0058564:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d0058566:	2b00      	cmp	r3, #0
d0058568:	d0f7      	beq.n	d005855a <submitEntitySolid+0xa22>
d005856a:	782b      	ldrb	r3, [r5, #0]
d005856c:	2b01      	cmp	r3, #1
d005856e:	d1d1      	bne.n	d0058514 <submitEntitySolid+0x9dc>
d0058570:	ab3a      	add	r3, sp, #232	; 0xe8
d0058572:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0058576:	3101      	adds	r1, #1
d0058578:	f843 5c98 	str.w	r5, [r3, #-152]
d005857c:	e7ed      	b.n	d005855a <submitEntitySolid+0xa22>
d005857e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058582:	f67f af0a 	bls.w	d005839a <submitEntitySolid+0x862>
d0058586:	ee75 5ae2 	vsub.f32	s11, s11, s5
d005858a:	ee72 2a62 	vsub.f32	s5, s4, s5
d005858e:	ee85 8aa2 	vdiv.f32	s16, s11, s5
d0058592:	eddf 5a61 	vldr	s11, [pc, #388]	; d0058718 <submitEntitySolid+0xbe0>
d0058596:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d005859a:	fe88 8a45 	vminnm.f32	s16, s16, s10
d005859e:	ee35 8a48 	vsub.f32	s16, s10, s16
d00585a2:	e6f5      	b.n	d0058390 <submitEntitySolid+0x858>
d00585a4:	eddf 6a5d 	vldr	s13, [pc, #372]	; d005871c <submitEntitySolid+0xbe4>
d00585a8:	eeb4 7ae6 	vcmpe.f32	s14, s13
d00585ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00585b0:	d407      	bmi.n	d00585c2 <submitEntitySolid+0xa8a>
d00585b2:	eddf 6a5b 	vldr	s13, [pc, #364]	; d0058720 <submitEntitySolid+0xbe8>
d00585b6:	eeb4 7a66 	vcmp.f32	s14, s13
d00585ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00585be:	f77f ae50 	ble.w	d0058262 <submitEntitySolid+0x72a>
d00585c2:	eef1 6ac7 	vsqrt.f32	s13, s14
d00585c6:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00585ca:	ee86 7a26 	vdiv.f32	s14, s12, s13
d00585ce:	ee23 3a07 	vmul.f32	s6, s6, s14
d00585d2:	ee62 2a87 	vmul.f32	s5, s5, s14
d00585d6:	ee24 4a07 	vmul.f32	s8, s8, s14
d00585da:	e642      	b.n	d0058262 <submitEntitySolid+0x72a>
d00585dc:	eef1 6a64 	vneg.f32	s13, s9
d00585e0:	eef4 6a42 	vcmp.f32	s13, s4
d00585e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00585e8:	f63f ad4b 	bhi.w	d0058082 <submitEntitySolid+0x54a>
d00585ec:	eef4 4a42 	vcmp.f32	s9, s4
d00585f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00585f4:	f6ff ad45 	blt.w	d0058082 <submitEntitySolid+0x54a>
d00585f8:	eef1 6a44 	vneg.f32	s13, s8
d00585fc:	eef4 6ac1 	vcmpe.f32	s13, s2
d0058600:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058604:	eeb4 4ac1 	vcmpe.f32	s8, s2
d0058608:	bf94      	ite	ls
d005860a:	2001      	movls	r0, #1
d005860c:	2000      	movhi	r0, #0
d005860e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058612:	eef4 7ac5 	vcmpe.f32	s15, s10
d0058616:	f000 0001 	and.w	r0, r0, #1
d005861a:	bfb8      	it	lt
d005861c:	2000      	movlt	r0, #0
d005861e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058622:	f000 0001 	and.w	r0, r0, #1
d0058626:	bfb8      	it	lt
d0058628:	2000      	movlt	r0, #0
d005862a:	2800      	cmp	r0, #0
d005862c:	f43f ad29 	beq.w	d0058082 <submitEntitySolid+0x54a>
d0058630:	eef4 7a47 	vcmp.f32	s15, s14
d0058634:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058638:	f63f ad23 	bhi.w	d0058082 <submitEntitySolid+0x54a>
d005863c:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0058640:	200c      	movs	r0, #12
d0058642:	fb00 8002 	mla	r0, r0, r2, r8
d0058646:	eeb1 7a64 	vneg.f32	s14, s9
d005864a:	edd0 7a01 	vldr	s15, [r0, #4]
d005864e:	eef4 7a47 	vcmp.f32	s15, s14
d0058652:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058656:	f6ff ad14 	blt.w	d0058082 <submitEntitySolid+0x54a>
d005865a:	eef4 7a64 	vcmp.f32	s15, s9
d005865e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058662:	f63f ad0e 	bhi.w	d0058082 <submitEntitySolid+0x54a>
d0058666:	ee24 4a0a 	vmul.f32	s8, s8, s20
d005866a:	200c      	movs	r0, #12
d005866c:	fb00 8001 	mla	r0, r0, r1, r8
d0058670:	eeb1 7a44 	vneg.f32	s14, s8
d0058674:	edd0 7a01 	vldr	s15, [r0, #4]
d0058678:	eef4 7ac7 	vcmpe.f32	s15, s14
d005867c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058680:	eef4 7ac4 	vcmpe.f32	s15, s8
d0058684:	bfac      	ite	ge
d0058686:	2001      	movge	r0, #1
d0058688:	2000      	movlt	r0, #0
d005868a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005868e:	f000 0001 	and.w	r0, r0, #1
d0058692:	bf88      	it	hi
d0058694:	2000      	movhi	r0, #0
d0058696:	e4f5      	b.n	d0058084 <submitEntitySolid+0x54c>
d0058698:	9104      	str	r1, [sp, #16]
d005869a:	f7ff bae5 	b.w	d0057c68 <submitEntitySolid+0x130>
d005869e:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d00586a2:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d00586a6:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d00586aa:	9110      	str	r1, [sp, #64]	; 0x40
d00586ac:	920f      	str	r2, [sp, #60]	; 0x3c
d00586ae:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d00586b2:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d00586b6:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d00586ba:	900b      	str	r0, [sp, #44]	; 0x2c
d00586bc:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d00586c0:	edcd 0a06 	vstr	s1, [sp, #24]
d00586c4:	f7fc fb72 	bl	d0054dac <powfxt>
d00586c8:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d00586cc:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d00586d0:	ed9d 6a11 	vldr	s12, [sp, #68]	; 0x44
d00586d4:	9910      	ldr	r1, [sp, #64]	; 0x40
d00586d6:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d00586d8:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d00586dc:	ed9d 7a0d 	vldr	s14, [sp, #52]	; 0x34
d00586e0:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d00586e4:	980b      	ldr	r0, [sp, #44]	; 0x2c
d00586e6:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d00586ea:	eddd 0a06 	vldr	s1, [sp, #24]
d00586ee:	e6ba      	b.n	d0058466 <submitEntitySolid+0x92e>
d00586f0:	ee75 5ac2 	vsub.f32	s11, s11, s4
d00586f4:	ee73 3ac2 	vsub.f32	s7, s7, s4
d00586f8:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d00586fc:	ee85 8aa3 	vdiv.f32	s16, s11, s7
d0058700:	eddf 5a05 	vldr	s11, [pc, #20]	; d0058718 <submitEntitySolid+0xbe0>
d0058704:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0058708:	fe88 8a45 	vminnm.f32	s16, s16, s10
d005870c:	ee35 8a48 	vsub.f32	s16, s10, s16
d0058710:	ee28 8a03 	vmul.f32	s16, s16, s6
d0058714:	e63c      	b.n	d0058390 <submitEntitySolid+0x858>
d0058716:	bf00      	nop
d0058718:	00000000 	.word	0x00000000
d005871c:	3f7fbe77 	.word	0x3f7fbe77
d0058720:	3f8020c5 	.word	0x3f8020c5

d0058724 <submitWorldEntities>:
d0058724:	b570      	push	{r4, r5, r6, lr}
d0058726:	4c3e      	ldr	r4, [pc, #248]	; (d0058820 <submitWorldEntities+0xfc>)
d0058728:	4605      	mov	r5, r0
d005872a:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d005872e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0058732:	2b00      	cmp	r3, #0
d0058734:	d070      	beq.n	d0058818 <submitWorldEntities+0xf4>
d0058736:	68e3      	ldr	r3, [r4, #12]
d0058738:	2b00      	cmp	r3, #0
d005873a:	d06d      	beq.n	d0058818 <submitWorldEntities+0xf4>
d005873c:	f894 2035 	ldrb.w	r2, [r4, #53]	; 0x35
d0058740:	07d2      	lsls	r2, r2, #31
d0058742:	d569      	bpl.n	d0058818 <submitWorldEntities+0xf4>
d0058744:	edd5 6a01 	vldr	s13, [r5, #4]
d0058748:	ed94 7a01 	vldr	s14, [r4, #4]
d005874c:	ed95 5a00 	vldr	s10, [r5]
d0058750:	ee37 7a66 	vsub.f32	s14, s14, s13
d0058754:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d0058758:	edd4 6a00 	vldr	s13, [r4]
d005875c:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0058760:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0058764:	ed94 6a02 	vldr	s12, [r4, #8]
d0058768:	ee67 7a27 	vmul.f32	s15, s14, s15
d005876c:	ed95 5a02 	vldr	s10, [r5, #8]
d0058770:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d0058774:	ee36 6a45 	vsub.f32	s12, s12, s10
d0058778:	ed93 5a06 	vldr	s10, [r3, #24]
d005877c:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0058780:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d0058784:	eee6 7a24 	vfma.f32	s15, s12, s9
d0058788:	ee77 4ac5 	vsub.f32	s9, s15, s10
d005878c:	eef4 4ae5 	vcmpe.f32	s9, s11
d0058790:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058794:	dc40      	bgt.n	d0058818 <submitWorldEntities+0xf4>
d0058796:	ee75 4a27 	vadd.f32	s9, s10, s15
d005879a:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d005879e:	eef4 4ae5 	vcmpe.f32	s9, s11
d00587a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00587a6:	d437      	bmi.n	d0058818 <submitWorldEntities+0xf4>
d00587a8:	edd5 5a07 	vldr	s11, [r5, #28]
d00587ac:	eeb1 4a64 	vneg.f32	s8, s9
d00587b0:	ed95 3a08 	vldr	s6, [r5, #32]
d00587b4:	ee67 5a25 	vmul.f32	s11, s14, s11
d00587b8:	edd5 3a06 	vldr	s7, [r5, #24]
d00587bc:	eee6 5a03 	vfma.f32	s11, s12, s6
d00587c0:	eee6 5aa3 	vfma.f32	s11, s13, s7
d00587c4:	eef4 5ac4 	vcmpe.f32	s11, s8
d00587c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00587cc:	d424      	bmi.n	d0058818 <submitWorldEntities+0xf4>
d00587ce:	eef4 5ae4 	vcmpe.f32	s11, s9
d00587d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00587d6:	dc1f      	bgt.n	d0058818 <submitWorldEntities+0xf4>
d00587d8:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d00587dc:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d00587e0:	ee27 7a25 	vmul.f32	s14, s14, s11
d00587e4:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d00587e8:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d00587ec:	eea7 5a84 	vfma.f32	s10, s15, s8
d00587f0:	eea6 7a24 	vfma.f32	s14, s12, s9
d00587f4:	eef1 7a45 	vneg.f32	s15, s10
d00587f8:	eea6 7aa5 	vfma.f32	s14, s13, s11
d00587fc:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0058800:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058804:	d408      	bmi.n	d0058818 <submitWorldEntities+0xf4>
d0058806:	eeb4 7ac5 	vcmpe.f32	s14, s10
d005880a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005880e:	dc03      	bgt.n	d0058818 <submitWorldEntities+0xf4>
d0058810:	4629      	mov	r1, r5
d0058812:	4620      	mov	r0, r4
d0058814:	f7ff f990 	bl	d0057b38 <submitEntitySolid>
d0058818:	3460      	adds	r4, #96	; 0x60
d005881a:	42a6      	cmp	r6, r4
d005881c:	d187      	bne.n	d005872e <submitWorldEntities+0xa>
d005881e:	bd70      	pop	{r4, r5, r6, pc}
d0058820:	d0127a60 	.word	0xd0127a60

d0058824 <Render3D>:
d0058824:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0058828:	4604      	mov	r4, r0
d005882a:	4f97      	ldr	r7, [pc, #604]	; (d0058a88 <Render3D+0x264>)
d005882c:	2600      	movs	r6, #0
d005882e:	ed2d 8b02 	vpush	{d8}
d0058832:	b088      	sub	sp, #32
d0058834:	603e      	str	r6, [r7, #0]
d0058836:	f7ff ff75 	bl	d0058724 <submitWorldEntities>
d005883a:	4620      	mov	r0, r4
d005883c:	f7fc fb52 	bl	d0054ee4 <sb3dParticlesRender>
d0058840:	4b92      	ldr	r3, [pc, #584]	; (d0058a8c <Render3D+0x268>)
d0058842:	681d      	ldr	r5, [r3, #0]
d0058844:	2d00      	cmp	r5, #0
d0058846:	f040 80cf 	bne.w	d00589e8 <Render3D+0x1c4>
d005884a:	f8df 824c 	ldr.w	r8, [pc, #588]	; d0058a98 <Render3D+0x274>
d005884e:	f8df 924c 	ldr.w	r9, [pc, #588]	; d0058a9c <Render3D+0x278>
d0058852:	0168      	lsls	r0, r5, #5
d0058854:	f7f9 fde6 	bl	d0052424 <beginDepthBand>
d0058858:	f8d8 6000 	ldr.w	r6, [r8]
d005885c:	2e00      	cmp	r6, #0
d005885e:	f040 8090 	bne.w	d0058982 <Render3D+0x15e>
d0058862:	f8d9 a000 	ldr.w	sl, [r9]
d0058866:	683a      	ldr	r2, [r7, #0]
d0058868:	f1ba 0f00 	cmp.w	sl, #0
d005886c:	d158      	bne.n	d0058920 <Render3D+0xfc>
d005886e:	2a00      	cmp	r2, #0
d0058870:	dd4e      	ble.n	d0058910 <Render3D+0xec>
d0058872:	4c87      	ldr	r4, [pc, #540]	; (d0058a90 <Render3D+0x26c>)
d0058874:	e021      	b.n	d00588ba <Render3D+0x96>
d0058876:	f894 1036 	ldrb.w	r1, [r4, #54]	; 0x36
d005887a:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d005887c:	8c20      	ldrh	r0, [r4, #32]
d005887e:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0058880:	9305      	str	r3, [sp, #20]
d0058882:	9106      	str	r1, [sp, #24]
d0058884:	9204      	str	r2, [sp, #16]
d0058886:	9603      	str	r6, [sp, #12]
d0058888:	9002      	str	r0, [sp, #8]
d005888a:	6963      	ldr	r3, [r4, #20]
d005888c:	9301      	str	r3, [sp, #4]
d005888e:	6923      	ldr	r3, [r4, #16]
d0058890:	9300      	str	r3, [sp, #0]
d0058892:	edd4 1a07 	vldr	s3, [r4, #28]
d0058896:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005889a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005889e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00588a2:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00588a6:	e9d4 0100 	ldrd	r0, r1, [r4]
d00588aa:	f7fa ff7b 	bl	d00537a4 <fillTriangleDitherBayerT>
d00588ae:	683a      	ldr	r2, [r7, #0]
d00588b0:	f10a 0a01 	add.w	sl, sl, #1
d00588b4:	3440      	adds	r4, #64	; 0x40
d00588b6:	4592      	cmp	sl, r2
d00588b8:	da2a      	bge.n	d0058910 <Render3D+0xec>
d00588ba:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d00588be:	42ab      	cmp	r3, r5
d00588c0:	dcf6      	bgt.n	d00588b0 <Render3D+0x8c>
d00588c2:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d00588c6:	42ab      	cmp	r3, r5
d00588c8:	dbf2      	blt.n	d00588b0 <Render3D+0x8c>
d00588ca:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00588ce:	06da      	lsls	r2, r3, #27
d00588d0:	d4d1      	bmi.n	d0058876 <Render3D+0x52>
d00588d2:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d00588d4:	f10a 0a01 	add.w	sl, sl, #1
d00588d8:	8c20      	ldrh	r0, [r4, #32]
d00588da:	6961      	ldr	r1, [r4, #20]
d00588dc:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d00588de:	9305      	str	r3, [sp, #20]
d00588e0:	9204      	str	r2, [sp, #16]
d00588e2:	9603      	str	r6, [sp, #12]
d00588e4:	9002      	str	r0, [sp, #8]
d00588e6:	9101      	str	r1, [sp, #4]
d00588e8:	6923      	ldr	r3, [r4, #16]
d00588ea:	9300      	str	r3, [sp, #0]
d00588ec:	edd4 1a07 	vldr	s3, [r4, #28]
d00588f0:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00588f4:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00588f8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00588fc:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0058900:	e9d4 0100 	ldrd	r0, r1, [r4]
d0058904:	f7fa fa5c 	bl	d0052dc0 <fillTriangleDitherBayer>
d0058908:	683a      	ldr	r2, [r7, #0]
d005890a:	3440      	adds	r4, #64	; 0x40
d005890c:	4592      	cmp	sl, r2
d005890e:	dbd4      	blt.n	d00588ba <Render3D+0x96>
d0058910:	3501      	adds	r5, #1
d0058912:	2d0a      	cmp	r5, #10
d0058914:	d19d      	bne.n	d0058852 <Render3D+0x2e>
d0058916:	b008      	add	sp, #32
d0058918:	ecbd 8b02 	vpop	{d8}
d005891c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0058920:	2a00      	cmp	r2, #0
d0058922:	ddf5      	ble.n	d0058910 <Render3D+0xec>
d0058924:	4c5a      	ldr	r4, [pc, #360]	; (d0058a90 <Render3D+0x26c>)
d0058926:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d005892a:	3601      	adds	r6, #1
d005892c:	42ab      	cmp	r3, r5
d005892e:	dc1f      	bgt.n	d0058970 <Render3D+0x14c>
d0058930:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d0058934:	42ab      	cmp	r3, r5
d0058936:	db1b      	blt.n	d0058970 <Render3D+0x14c>
d0058938:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d005893c:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d005893e:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0058940:	8c21      	ldrh	r1, [r4, #32]
d0058942:	9205      	str	r2, [sp, #20]
d0058944:	9304      	str	r3, [sp, #16]
d0058946:	9003      	str	r0, [sp, #12]
d0058948:	9102      	str	r1, [sp, #8]
d005894a:	6963      	ldr	r3, [r4, #20]
d005894c:	9301      	str	r3, [sp, #4]
d005894e:	6923      	ldr	r3, [r4, #16]
d0058950:	9300      	str	r3, [sp, #0]
d0058952:	edd4 1a07 	vldr	s3, [r4, #28]
d0058956:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005895a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005895e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0058962:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0058966:	e9d4 0100 	ldrd	r0, r1, [r4]
d005896a:	f7fb fbd5 	bl	d0054118 <fillTriangleDitherBayer2Mode>
d005896e:	683a      	ldr	r2, [r7, #0]
d0058970:	4296      	cmp	r6, r2
d0058972:	f104 0440 	add.w	r4, r4, #64	; 0x40
d0058976:	dbd6      	blt.n	d0058926 <Render3D+0x102>
d0058978:	3501      	adds	r5, #1
d005897a:	2d0a      	cmp	r5, #10
d005897c:	f47f af69 	bne.w	d0058852 <Render3D+0x2e>
d0058980:	e7c9      	b.n	d0058916 <Render3D+0xf2>
d0058982:	683a      	ldr	r2, [r7, #0]
d0058984:	2a00      	cmp	r2, #0
d0058986:	ddc3      	ble.n	d0058910 <Render3D+0xec>
d0058988:	4c41      	ldr	r4, [pc, #260]	; (d0058a90 <Render3D+0x26c>)
d005898a:	2600      	movs	r6, #0
d005898c:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0058990:	3601      	adds	r6, #1
d0058992:	42ab      	cmp	r3, r5
d0058994:	dc1f      	bgt.n	d00589d6 <Render3D+0x1b2>
d0058996:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d005899a:	42ab      	cmp	r3, r5
d005899c:	db1b      	blt.n	d00589d6 <Render3D+0x1b2>
d005899e:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d00589a2:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d00589a4:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00589a6:	8c21      	ldrh	r1, [r4, #32]
d00589a8:	9205      	str	r2, [sp, #20]
d00589aa:	9304      	str	r3, [sp, #16]
d00589ac:	9003      	str	r0, [sp, #12]
d00589ae:	9102      	str	r1, [sp, #8]
d00589b0:	6963      	ldr	r3, [r4, #20]
d00589b2:	9301      	str	r3, [sp, #4]
d00589b4:	6923      	ldr	r3, [r4, #16]
d00589b6:	9300      	str	r3, [sp, #0]
d00589b8:	edd4 1a07 	vldr	s3, [r4, #28]
d00589bc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00589c0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00589c4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00589c8:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00589cc:	e9d4 0100 	ldrd	r0, r1, [r4]
d00589d0:	f7f9 fdc0 	bl	d0052554 <fillTriangleFlat>
d00589d4:	683a      	ldr	r2, [r7, #0]
d00589d6:	4296      	cmp	r6, r2
d00589d8:	f104 0440 	add.w	r4, r4, #64	; 0x40
d00589dc:	dbd6      	blt.n	d005898c <Render3D+0x168>
d00589de:	3501      	adds	r5, #1
d00589e0:	2d0a      	cmp	r5, #10
d00589e2:	f47f af36 	bne.w	d0058852 <Render3D+0x2e>
d00589e6:	e796      	b.n	d0058916 <Render3D+0xf2>
d00589e8:	683b      	ldr	r3, [r7, #0]
d00589ea:	42b3      	cmp	r3, r6
d00589ec:	dd93      	ble.n	d0058916 <Render3D+0xf2>
d00589ee:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d00589f2:	4c27      	ldr	r4, [pc, #156]	; (d0058a90 <Render3D+0x26c>)
d00589f4:	eddf 8a27 	vldr	s17, [pc, #156]	; d0058a94 <Render3D+0x270>
d00589f8:	edd4 7a07 	vldr	s15, [r4, #28]
d00589fc:	3601      	adds	r6, #1
d00589fe:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0058a02:	ee77 7a88 	vadd.f32	s15, s15, s16
d0058a06:	ee07 3a10 	vmov	s14, r3
d0058a0a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0058a0e:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0058a12:	ee17 1a90 	vmov	r1, s15
d0058a16:	eef0 7a48 	vmov.f32	s15, s16
d0058a1a:	2904      	cmp	r1, #4
d0058a1c:	eee7 7a28 	vfma.f32	s15, s14, s17
d0058a20:	bfa8      	it	ge
d0058a22:	2104      	movge	r1, #4
d0058a24:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0058a28:	b153      	cbz	r3, d0058a40 <Render3D+0x21c>
d0058a2a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0058a2e:	ee17 3a90 	vmov	r3, s15
d0058a32:	f1c3 0305 	rsb	r3, r3, #5
d0058a36:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0058a3a:	4299      	cmp	r1, r3
d0058a3c:	bfa8      	it	ge
d0058a3e:	4619      	movge	r1, r3
d0058a40:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d0058a44:	f7f9 fd76 	bl	d0052534 <shadeColor>
d0058a48:	4605      	mov	r5, r0
d0058a4a:	68e3      	ldr	r3, [r4, #12]
d0058a4c:	68a2      	ldr	r2, [r4, #8]
d0058a4e:	6861      	ldr	r1, [r4, #4]
d0058a50:	9000      	str	r0, [sp, #0]
d0058a52:	6820      	ldr	r0, [r4, #0]
d0058a54:	f7f9 fd20 	bl	d0052498 <drawLine>
d0058a58:	9500      	str	r5, [sp, #0]
d0058a5a:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0058a5e:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0058a62:	f7f9 fd19 	bl	d0052498 <drawLine>
d0058a66:	9500      	str	r5, [sp, #0]
d0058a68:	e9d4 2300 	ldrd	r2, r3, [r4]
d0058a6c:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0058a70:	f7f9 fd12 	bl	d0052498 <drawLine>
d0058a74:	683b      	ldr	r3, [r7, #0]
d0058a76:	3440      	adds	r4, #64	; 0x40
d0058a78:	42b3      	cmp	r3, r6
d0058a7a:	dcbd      	bgt.n	d00589f8 <Render3D+0x1d4>
d0058a7c:	b008      	add	sp, #32
d0058a7e:	ecbd 8b02 	vpop	{d8}
d0058a82:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0058a86:	bf00      	nop
d0058a88:	d009b964 	.word	0xd009b964
d0058a8c:	d011b984 	.word	0xd011b984
d0058a90:	d009b980 	.word	0xd009b980
d0058a94:	3ca0a0a1 	.word	0x3ca0a0a1
d0058a98:	d009b960 	.word	0xd009b960
d0058a9c:	d011b980 	.word	0xd011b980

d0058aa0 <loadMeshSB3D>:
d0058aa0:	2800      	cmp	r0, #0
d0058aa2:	d07c      	beq.n	d0058b9e <loadMeshSB3D+0xfe>
d0058aa4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0058aa8:	460d      	mov	r5, r1
d0058aaa:	4601      	mov	r1, r0
d0058aac:	fab5 f085 	clz	r0, r5
d0058ab0:	ed2d 8b02 	vpush	{d8}
d0058ab4:	0940      	lsrs	r0, r0, #5
d0058ab6:	b08c      	sub	sp, #48	; 0x30
d0058ab8:	2d00      	cmp	r5, #0
d0058aba:	d06a      	beq.n	d0058b92 <loadMeshSB3D+0xf2>
d0058abc:	4c6e      	ldr	r4, [pc, #440]	; (d0058c78 <loadMeshSB3D+0x1d8>)
d0058abe:	2201      	movs	r2, #1
d0058ac0:	eeb0 8a40 	vmov.f32	s16, s0
d0058ac4:	7923      	ldrb	r3, [r4, #4]
d0058ac6:	7966      	ldrb	r6, [r4, #5]
d0058ac8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0058acc:	79a6      	ldrb	r6, [r4, #6]
d0058ace:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0058ad2:	79e6      	ldrb	r6, [r4, #7]
d0058ad4:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0058ad8:	681b      	ldr	r3, [r3, #0]
d0058ada:	681b      	ldr	r3, [r3, #0]
d0058adc:	4798      	blx	r3
d0058ade:	2800      	cmp	r0, #0
d0058ae0:	d157      	bne.n	d0058b92 <loadMeshSB3D+0xf2>
d0058ae2:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058ae6:	2204      	movs	r2, #4
d0058ae8:	7961      	ldrb	r1, [r4, #5]
d0058aea:	ab02      	add	r3, sp, #8
d0058aec:	79a7      	ldrb	r7, [r4, #6]
d0058aee:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058af2:	79e6      	ldrb	r6, [r4, #7]
d0058af4:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058af8:	a903      	add	r1, sp, #12
d0058afa:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058afe:	6836      	ldr	r6, [r6, #0]
d0058b00:	68b6      	ldr	r6, [r6, #8]
d0058b02:	47b0      	blx	r6
d0058b04:	2800      	cmp	r0, #0
d0058b06:	d141      	bne.n	d0058b8c <loadMeshSB3D+0xec>
d0058b08:	4b5c      	ldr	r3, [pc, #368]	; (d0058c7c <loadMeshSB3D+0x1dc>)
d0058b0a:	9a03      	ldr	r2, [sp, #12]
d0058b0c:	429a      	cmp	r2, r3
d0058b0e:	d13d      	bne.n	d0058b8c <loadMeshSB3D+0xec>
d0058b10:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058b14:	ab02      	add	r3, sp, #8
d0058b16:	7961      	ldrb	r1, [r4, #5]
d0058b18:	2204      	movs	r2, #4
d0058b1a:	79a7      	ldrb	r7, [r4, #6]
d0058b1c:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058b20:	79e6      	ldrb	r6, [r4, #7]
d0058b22:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058b26:	a904      	add	r1, sp, #16
d0058b28:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058b2c:	6836      	ldr	r6, [r6, #0]
d0058b2e:	68b6      	ldr	r6, [r6, #8]
d0058b30:	47b0      	blx	r6
d0058b32:	bb58      	cbnz	r0, d0058b8c <loadMeshSB3D+0xec>
d0058b34:	9b04      	ldr	r3, [sp, #16]
d0058b36:	3b02      	subs	r3, #2
d0058b38:	2b01      	cmp	r3, #1
d0058b3a:	d827      	bhi.n	d0058b8c <loadMeshSB3D+0xec>
d0058b3c:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058b40:	ab02      	add	r3, sp, #8
d0058b42:	7961      	ldrb	r1, [r4, #5]
d0058b44:	2204      	movs	r2, #4
d0058b46:	79a7      	ldrb	r7, [r4, #6]
d0058b48:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058b4c:	79e6      	ldrb	r6, [r4, #7]
d0058b4e:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058b52:	a905      	add	r1, sp, #20
d0058b54:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058b58:	6836      	ldr	r6, [r6, #0]
d0058b5a:	68b6      	ldr	r6, [r6, #8]
d0058b5c:	47b0      	blx	r6
d0058b5e:	b9a8      	cbnz	r0, d0058b8c <loadMeshSB3D+0xec>
d0058b60:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058b64:	ab02      	add	r3, sp, #8
d0058b66:	7961      	ldrb	r1, [r4, #5]
d0058b68:	2204      	movs	r2, #4
d0058b6a:	79a7      	ldrb	r7, [r4, #6]
d0058b6c:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058b70:	79e6      	ldrb	r6, [r4, #7]
d0058b72:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058b76:	a906      	add	r1, sp, #24
d0058b78:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058b7c:	6836      	ldr	r6, [r6, #0]
d0058b7e:	68b6      	ldr	r6, [r6, #8]
d0058b80:	47b0      	blx	r6
d0058b82:	b918      	cbnz	r0, d0058b8c <loadMeshSB3D+0xec>
d0058b84:	9b05      	ldr	r3, [sp, #20]
d0058b86:	b10b      	cbz	r3, d0058b8c <loadMeshSB3D+0xec>
d0058b88:	9e06      	ldr	r6, [sp, #24]
d0058b8a:	b956      	cbnz	r6, d0058ba2 <loadMeshSB3D+0x102>
d0058b8c:	2000      	movs	r0, #0
d0058b8e:	f000 f9ad 	bl	d0058eec <fclose>
d0058b92:	2000      	movs	r0, #0
d0058b94:	b00c      	add	sp, #48	; 0x30
d0058b96:	ecbd 8b02 	vpop	{d8}
d0058b9a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0058b9e:	2000      	movs	r0, #0
d0058ba0:	4770      	bx	lr
d0058ba2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0058ba6:	2700      	movs	r7, #0
d0058ba8:	606b      	str	r3, [r5, #4]
d0058baa:	616e      	str	r6, [r5, #20]
d0058bac:	0080      	lsls	r0, r0, #2
d0058bae:	60ef      	str	r7, [r5, #12]
d0058bb0:	f000 fb60 	bl	d0059274 <malloc>
d0058bb4:	4603      	mov	r3, r0
d0058bb6:	0130      	lsls	r0, r6, #4
d0058bb8:	461e      	mov	r6, r3
d0058bba:	602b      	str	r3, [r5, #0]
d0058bbc:	f000 fb5a 	bl	d0059274 <malloc>
d0058bc0:	60af      	str	r7, [r5, #8]
d0058bc2:	6128      	str	r0, [r5, #16]
d0058bc4:	2e00      	cmp	r6, #0
d0058bc6:	f000 8119 	beq.w	d0058dfc <loadMeshSB3D+0x35c>
d0058bca:	2800      	cmp	r0, #0
d0058bcc:	f000 8109 	beq.w	d0058de2 <loadMeshSB3D+0x342>
d0058bd0:	46b8      	mov	r8, r7
d0058bd2:	e017      	b.n	d0058c04 <loadMeshSB3D+0x164>
d0058bd4:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0058bd8:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0058bdc:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0058be0:	ee66 6a88 	vmul.f32	s13, s13, s16
d0058be4:	682b      	ldr	r3, [r5, #0]
d0058be6:	ee27 7a08 	vmul.f32	s14, s14, s16
d0058bea:	9905      	ldr	r1, [sp, #20]
d0058bec:	ee67 7a88 	vmul.f32	s15, s15, s16
d0058bf0:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0058bf4:	4541      	cmp	r1, r8
d0058bf6:	edc3 6a00 	vstr	s13, [r3]
d0058bfa:	ed83 7a01 	vstr	s14, [r3, #4]
d0058bfe:	edc3 7a02 	vstr	s15, [r3, #8]
d0058c02:	d931      	bls.n	d0058c68 <loadMeshSB3D+0x1c8>
d0058c04:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058c08:	220c      	movs	r2, #12
d0058c0a:	7960      	ldrb	r0, [r4, #5]
d0058c0c:	ab02      	add	r3, sp, #8
d0058c0e:	79a7      	ldrb	r7, [r4, #6]
d0058c10:	a909      	add	r1, sp, #36	; 0x24
d0058c12:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0058c16:	79e6      	ldrb	r6, [r4, #7]
d0058c18:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0058c1c:	2000      	movs	r0, #0
d0058c1e:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058c22:	6836      	ldr	r6, [r6, #0]
d0058c24:	68b6      	ldr	r6, [r6, #8]
d0058c26:	47b0      	blx	r6
d0058c28:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0058c2c:	f108 0801 	add.w	r8, r8, #1
d0058c30:	2800      	cmp	r0, #0
d0058c32:	d0cf      	beq.n	d0058bd4 <loadMeshSB3D+0x134>
d0058c34:	6828      	ldr	r0, [r5, #0]
d0058c36:	b108      	cbz	r0, d0058c3c <loadMeshSB3D+0x19c>
d0058c38:	f000 fb24 	bl	d0059284 <free>
d0058c3c:	6928      	ldr	r0, [r5, #16]
d0058c3e:	b108      	cbz	r0, d0058c44 <loadMeshSB3D+0x1a4>
d0058c40:	f000 fb20 	bl	d0059284 <free>
d0058c44:	68a8      	ldr	r0, [r5, #8]
d0058c46:	b108      	cbz	r0, d0058c4c <loadMeshSB3D+0x1ac>
d0058c48:	f000 fb1c 	bl	d0059284 <free>
d0058c4c:	2400      	movs	r4, #0
d0058c4e:	2300      	movs	r3, #0
d0058c50:	4620      	mov	r0, r4
d0058c52:	602c      	str	r4, [r5, #0]
d0058c54:	612c      	str	r4, [r5, #16]
d0058c56:	60ac      	str	r4, [r5, #8]
d0058c58:	606c      	str	r4, [r5, #4]
d0058c5a:	616c      	str	r4, [r5, #20]
d0058c5c:	60ec      	str	r4, [r5, #12]
d0058c5e:	61ab      	str	r3, [r5, #24]
d0058c60:	f000 f944 	bl	d0058eec <fclose>
d0058c64:	4620      	mov	r0, r4
d0058c66:	e795      	b.n	d0058b94 <loadMeshSB3D+0xf4>
d0058c68:	9b06      	ldr	r3, [sp, #24]
d0058c6a:	2b00      	cmp	r3, #0
d0058c6c:	f000 80ac 	beq.w	d0058dc8 <loadMeshSB3D+0x328>
d0058c70:	4606      	mov	r6, r0
d0058c72:	4680      	mov	r8, r0
d0058c74:	e090      	b.n	d0058d98 <loadMeshSB3D+0x2f8>
d0058c76:	bf00      	nop
d0058c78:	2001f000 	.word	0x2001f000
d0058c7c:	44334253 	.word	0x44334253
d0058c80:	7921      	ldrb	r1, [r4, #4]
d0058c82:	ab02      	add	r3, sp, #8
d0058c84:	7967      	ldrb	r7, [r4, #5]
d0058c86:	2204      	movs	r2, #4
d0058c88:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058c8c:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058c90:	79e7      	ldrb	r7, [r4, #7]
d0058c92:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058c96:	a908      	add	r1, sp, #32
d0058c98:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058c9c:	683f      	ldr	r7, [r7, #0]
d0058c9e:	68bf      	ldr	r7, [r7, #8]
d0058ca0:	47b8      	blx	r7
d0058ca2:	2800      	cmp	r0, #0
d0058ca4:	d1c6      	bne.n	d0058c34 <loadMeshSB3D+0x194>
d0058ca6:	7921      	ldrb	r1, [r4, #4]
d0058ca8:	ab02      	add	r3, sp, #8
d0058caa:	7967      	ldrb	r7, [r4, #5]
d0058cac:	2204      	movs	r2, #4
d0058cae:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058cb2:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058cb6:	79e7      	ldrb	r7, [r4, #7]
d0058cb8:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058cbc:	a909      	add	r1, sp, #36	; 0x24
d0058cbe:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058cc2:	683f      	ldr	r7, [r7, #0]
d0058cc4:	68bf      	ldr	r7, [r7, #8]
d0058cc6:	47b8      	blx	r7
d0058cc8:	2800      	cmp	r0, #0
d0058cca:	d1b3      	bne.n	d0058c34 <loadMeshSB3D+0x194>
d0058ccc:	7921      	ldrb	r1, [r4, #4]
d0058cce:	ab02      	add	r3, sp, #8
d0058cd0:	7967      	ldrb	r7, [r4, #5]
d0058cd2:	2201      	movs	r2, #1
d0058cd4:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058cd8:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058cdc:	79e7      	ldrb	r7, [r4, #7]
d0058cde:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058ce2:	f10d 0105 	add.w	r1, sp, #5
d0058ce6:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058cea:	683f      	ldr	r7, [r7, #0]
d0058cec:	68bf      	ldr	r7, [r7, #8]
d0058cee:	47b8      	blx	r7
d0058cf0:	2800      	cmp	r0, #0
d0058cf2:	d19f      	bne.n	d0058c34 <loadMeshSB3D+0x194>
d0058cf4:	7921      	ldrb	r1, [r4, #4]
d0058cf6:	ab02      	add	r3, sp, #8
d0058cf8:	7967      	ldrb	r7, [r4, #5]
d0058cfa:	2201      	movs	r2, #1
d0058cfc:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058d00:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058d04:	79e7      	ldrb	r7, [r4, #7]
d0058d06:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058d0a:	f10d 0106 	add.w	r1, sp, #6
d0058d0e:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058d12:	683f      	ldr	r7, [r7, #0]
d0058d14:	68bf      	ldr	r7, [r7, #8]
d0058d16:	47b8      	blx	r7
d0058d18:	2800      	cmp	r0, #0
d0058d1a:	d18b      	bne.n	d0058c34 <loadMeshSB3D+0x194>
d0058d1c:	9b04      	ldr	r3, [sp, #16]
d0058d1e:	2b02      	cmp	r3, #2
d0058d20:	d914      	bls.n	d0058d4c <loadMeshSB3D+0x2ac>
d0058d22:	7921      	ldrb	r1, [r4, #4]
d0058d24:	ab02      	add	r3, sp, #8
d0058d26:	7967      	ldrb	r7, [r4, #5]
d0058d28:	2201      	movs	r2, #1
d0058d2a:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058d2e:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058d32:	79e7      	ldrb	r7, [r4, #7]
d0058d34:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058d38:	f10d 0107 	add.w	r1, sp, #7
d0058d3c:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058d40:	683f      	ldr	r7, [r7, #0]
d0058d42:	68bf      	ldr	r7, [r7, #8]
d0058d44:	47b8      	blx	r7
d0058d46:	2800      	cmp	r0, #0
d0058d48:	f47f af74 	bne.w	d0058c34 <loadMeshSB3D+0x194>
d0058d4c:	9a07      	ldr	r2, [sp, #28]
d0058d4e:	9b05      	ldr	r3, [sp, #20]
d0058d50:	429a      	cmp	r2, r3
d0058d52:	f4bf af6f 	bcs.w	d0058c34 <loadMeshSB3D+0x194>
d0058d56:	9908      	ldr	r1, [sp, #32]
d0058d58:	428b      	cmp	r3, r1
d0058d5a:	f67f af6b 	bls.w	d0058c34 <loadMeshSB3D+0x194>
d0058d5e:	9809      	ldr	r0, [sp, #36]	; 0x24
d0058d60:	4283      	cmp	r3, r0
d0058d62:	f67f af67 	bls.w	d0058c34 <loadMeshSB3D+0x194>
d0058d66:	692b      	ldr	r3, [r5, #16]
d0058d68:	ea4f 1c06 	mov.w	ip, r6, lsl #4
d0058d6c:	9f06      	ldr	r7, [sp, #24]
d0058d6e:	f843 200c 	str.w	r2, [r3, ip]
d0058d72:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d0058d76:	f89d 2005 	ldrb.w	r2, [sp, #5]
d0058d7a:	3601      	adds	r6, #1
d0058d7c:	f89d c006 	ldrb.w	ip, [sp, #6]
d0058d80:	f002 020f 	and.w	r2, r2, #15
d0058d84:	6059      	str	r1, [r3, #4]
d0058d86:	42b7      	cmp	r7, r6
d0058d88:	f89d 1007 	ldrb.w	r1, [sp, #7]
d0058d8c:	6098      	str	r0, [r3, #8]
d0058d8e:	731a      	strb	r2, [r3, #12]
d0058d90:	f883 c00d 	strb.w	ip, [r3, #13]
d0058d94:	7399      	strb	r1, [r3, #14]
d0058d96:	d917      	bls.n	d0058dc8 <loadMeshSB3D+0x328>
d0058d98:	7920      	ldrb	r0, [r4, #4]
d0058d9a:	ab02      	add	r3, sp, #8
d0058d9c:	7967      	ldrb	r7, [r4, #5]
d0058d9e:	2204      	movs	r2, #4
d0058da0:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058da4:	a907      	add	r1, sp, #28
d0058da6:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d0058daa:	79e7      	ldrb	r7, [r4, #7]
d0058dac:	f88d 8007 	strb.w	r8, [sp, #7]
d0058db0:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0058db4:	2000      	movs	r0, #0
d0058db6:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058dba:	683f      	ldr	r7, [r7, #0]
d0058dbc:	68bf      	ldr	r7, [r7, #8]
d0058dbe:	47b8      	blx	r7
d0058dc0:	2800      	cmp	r0, #0
d0058dc2:	f43f af5d 	beq.w	d0058c80 <loadMeshSB3D+0x1e0>
d0058dc6:	e735      	b.n	d0058c34 <loadMeshSB3D+0x194>
d0058dc8:	2000      	movs	r0, #0
d0058dca:	f000 f88f 	bl	d0058eec <fclose>
d0058dce:	4628      	mov	r0, r5
d0058dd0:	f7fd f950 	bl	d0056074 <meshComputeBoundsRadius>
d0058dd4:	4628      	mov	r0, r5
d0058dd6:	ed85 0a06 	vstr	s0, [r5, #24]
d0058dda:	f7f9 faf5 	bl	d00523c8 <meshSetDefaultMaterial>
d0058dde:	2001      	movs	r0, #1
d0058de0:	e6d8      	b.n	d0058b94 <loadMeshSB3D+0xf4>
d0058de2:	4630      	mov	r0, r6
d0058de4:	f000 fa4e 	bl	d0059284 <free>
d0058de8:	2400      	movs	r4, #0
d0058dea:	4620      	mov	r0, r4
d0058dec:	602c      	str	r4, [r5, #0]
d0058dee:	612c      	str	r4, [r5, #16]
d0058df0:	606c      	str	r4, [r5, #4]
d0058df2:	616c      	str	r4, [r5, #20]
d0058df4:	f000 f87a 	bl	d0058eec <fclose>
d0058df8:	4620      	mov	r0, r4
d0058dfa:	e6cb      	b.n	d0058b94 <loadMeshSB3D+0xf4>
d0058dfc:	2800      	cmp	r0, #0
d0058dfe:	d0f3      	beq.n	d0058de8 <loadMeshSB3D+0x348>
d0058e00:	f000 fa40 	bl	d0059284 <free>
d0058e04:	e7f0      	b.n	d0058de8 <loadMeshSB3D+0x348>
d0058e06:	bf00      	nop

d0058e08 <__errno>:
d0058e08:	4b01      	ldr	r3, [pc, #4]	; (d0058e10 <__errno+0x8>)
d0058e0a:	6818      	ldr	r0, [r3, #0]
d0058e0c:	4770      	bx	lr
d0058e0e:	bf00      	nop
d0058e10:	d008d66c 	.word	0xd008d66c

d0058e14 <_fclose_r>:
d0058e14:	b570      	push	{r4, r5, r6, lr}
d0058e16:	4605      	mov	r5, r0
d0058e18:	460c      	mov	r4, r1
d0058e1a:	b911      	cbnz	r1, d0058e22 <_fclose_r+0xe>
d0058e1c:	2600      	movs	r6, #0
d0058e1e:	4630      	mov	r0, r6
d0058e20:	bd70      	pop	{r4, r5, r6, pc}
d0058e22:	b118      	cbz	r0, d0058e2c <_fclose_r+0x18>
d0058e24:	6983      	ldr	r3, [r0, #24]
d0058e26:	b90b      	cbnz	r3, d0058e2c <_fclose_r+0x18>
d0058e28:	f000 f982 	bl	d0059130 <__sinit>
d0058e2c:	4b2c      	ldr	r3, [pc, #176]	; (d0058ee0 <_fclose_r+0xcc>)
d0058e2e:	429c      	cmp	r4, r3
d0058e30:	d114      	bne.n	d0058e5c <_fclose_r+0x48>
d0058e32:	686c      	ldr	r4, [r5, #4]
d0058e34:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058e36:	07d8      	lsls	r0, r3, #31
d0058e38:	d405      	bmi.n	d0058e46 <_fclose_r+0x32>
d0058e3a:	89a3      	ldrh	r3, [r4, #12]
d0058e3c:	0599      	lsls	r1, r3, #22
d0058e3e:	d402      	bmi.n	d0058e46 <_fclose_r+0x32>
d0058e40:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058e42:	f000 fa14 	bl	d005926e <__retarget_lock_acquire_recursive>
d0058e46:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0058e4a:	b98b      	cbnz	r3, d0058e70 <_fclose_r+0x5c>
d0058e4c:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0058e4e:	f016 0601 	ands.w	r6, r6, #1
d0058e52:	d1e3      	bne.n	d0058e1c <_fclose_r+0x8>
d0058e54:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058e56:	f000 fa0b 	bl	d0059270 <__retarget_lock_release_recursive>
d0058e5a:	e7e0      	b.n	d0058e1e <_fclose_r+0xa>
d0058e5c:	4b21      	ldr	r3, [pc, #132]	; (d0058ee4 <_fclose_r+0xd0>)
d0058e5e:	429c      	cmp	r4, r3
d0058e60:	d101      	bne.n	d0058e66 <_fclose_r+0x52>
d0058e62:	68ac      	ldr	r4, [r5, #8]
d0058e64:	e7e6      	b.n	d0058e34 <_fclose_r+0x20>
d0058e66:	4b20      	ldr	r3, [pc, #128]	; (d0058ee8 <_fclose_r+0xd4>)
d0058e68:	429c      	cmp	r4, r3
d0058e6a:	bf08      	it	eq
d0058e6c:	68ec      	ldreq	r4, [r5, #12]
d0058e6e:	e7e1      	b.n	d0058e34 <_fclose_r+0x20>
d0058e70:	4621      	mov	r1, r4
d0058e72:	4628      	mov	r0, r5
d0058e74:	f000 f842 	bl	d0058efc <__sflush_r>
d0058e78:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0058e7a:	4606      	mov	r6, r0
d0058e7c:	b133      	cbz	r3, d0058e8c <_fclose_r+0x78>
d0058e7e:	6a21      	ldr	r1, [r4, #32]
d0058e80:	4628      	mov	r0, r5
d0058e82:	4798      	blx	r3
d0058e84:	2800      	cmp	r0, #0
d0058e86:	bfb8      	it	lt
d0058e88:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0058e8c:	89a3      	ldrh	r3, [r4, #12]
d0058e8e:	061a      	lsls	r2, r3, #24
d0058e90:	d503      	bpl.n	d0058e9a <_fclose_r+0x86>
d0058e92:	6921      	ldr	r1, [r4, #16]
d0058e94:	4628      	mov	r0, r5
d0058e96:	f000 fa21 	bl	d00592dc <_free_r>
d0058e9a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058e9c:	b141      	cbz	r1, d0058eb0 <_fclose_r+0x9c>
d0058e9e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0058ea2:	4299      	cmp	r1, r3
d0058ea4:	d002      	beq.n	d0058eac <_fclose_r+0x98>
d0058ea6:	4628      	mov	r0, r5
d0058ea8:	f000 fa18 	bl	d00592dc <_free_r>
d0058eac:	2300      	movs	r3, #0
d0058eae:	6363      	str	r3, [r4, #52]	; 0x34
d0058eb0:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0058eb2:	b121      	cbz	r1, d0058ebe <_fclose_r+0xaa>
d0058eb4:	4628      	mov	r0, r5
d0058eb6:	f000 fa11 	bl	d00592dc <_free_r>
d0058eba:	2300      	movs	r3, #0
d0058ebc:	64a3      	str	r3, [r4, #72]	; 0x48
d0058ebe:	f000 f91f 	bl	d0059100 <__sfp_lock_acquire>
d0058ec2:	2300      	movs	r3, #0
d0058ec4:	81a3      	strh	r3, [r4, #12]
d0058ec6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058ec8:	07db      	lsls	r3, r3, #31
d0058eca:	d402      	bmi.n	d0058ed2 <_fclose_r+0xbe>
d0058ecc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058ece:	f000 f9cf 	bl	d0059270 <__retarget_lock_release_recursive>
d0058ed2:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058ed4:	f000 f9ca 	bl	d005926c <__retarget_lock_close_recursive>
d0058ed8:	f000 f918 	bl	d005910c <__sfp_lock_release>
d0058edc:	e79f      	b.n	d0058e1e <_fclose_r+0xa>
d0058ede:	bf00      	nop
d0058ee0:	d005adc0 	.word	0xd005adc0
d0058ee4:	d005ade0 	.word	0xd005ade0
d0058ee8:	d005ada0 	.word	0xd005ada0

d0058eec <fclose>:
d0058eec:	4b02      	ldr	r3, [pc, #8]	; (d0058ef8 <fclose+0xc>)
d0058eee:	4601      	mov	r1, r0
d0058ef0:	6818      	ldr	r0, [r3, #0]
d0058ef2:	f7ff bf8f 	b.w	d0058e14 <_fclose_r>
d0058ef6:	bf00      	nop
d0058ef8:	d008d66c 	.word	0xd008d66c

d0058efc <__sflush_r>:
d0058efc:	898a      	ldrh	r2, [r1, #12]
d0058efe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0058f02:	4605      	mov	r5, r0
d0058f04:	0710      	lsls	r0, r2, #28
d0058f06:	460c      	mov	r4, r1
d0058f08:	d458      	bmi.n	d0058fbc <__sflush_r+0xc0>
d0058f0a:	684b      	ldr	r3, [r1, #4]
d0058f0c:	2b00      	cmp	r3, #0
d0058f0e:	dc05      	bgt.n	d0058f1c <__sflush_r+0x20>
d0058f10:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0058f12:	2b00      	cmp	r3, #0
d0058f14:	dc02      	bgt.n	d0058f1c <__sflush_r+0x20>
d0058f16:	2000      	movs	r0, #0
d0058f18:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0058f1c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0058f1e:	2e00      	cmp	r6, #0
d0058f20:	d0f9      	beq.n	d0058f16 <__sflush_r+0x1a>
d0058f22:	2300      	movs	r3, #0
d0058f24:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0058f28:	682f      	ldr	r7, [r5, #0]
d0058f2a:	602b      	str	r3, [r5, #0]
d0058f2c:	d032      	beq.n	d0058f94 <__sflush_r+0x98>
d0058f2e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0058f30:	89a3      	ldrh	r3, [r4, #12]
d0058f32:	075a      	lsls	r2, r3, #29
d0058f34:	d505      	bpl.n	d0058f42 <__sflush_r+0x46>
d0058f36:	6863      	ldr	r3, [r4, #4]
d0058f38:	1ac0      	subs	r0, r0, r3
d0058f3a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0058f3c:	b10b      	cbz	r3, d0058f42 <__sflush_r+0x46>
d0058f3e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0058f40:	1ac0      	subs	r0, r0, r3
d0058f42:	2300      	movs	r3, #0
d0058f44:	4602      	mov	r2, r0
d0058f46:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0058f48:	6a21      	ldr	r1, [r4, #32]
d0058f4a:	4628      	mov	r0, r5
d0058f4c:	47b0      	blx	r6
d0058f4e:	1c43      	adds	r3, r0, #1
d0058f50:	89a3      	ldrh	r3, [r4, #12]
d0058f52:	d106      	bne.n	d0058f62 <__sflush_r+0x66>
d0058f54:	6829      	ldr	r1, [r5, #0]
d0058f56:	291d      	cmp	r1, #29
d0058f58:	d82c      	bhi.n	d0058fb4 <__sflush_r+0xb8>
d0058f5a:	4a2a      	ldr	r2, [pc, #168]	; (d0059004 <__sflush_r+0x108>)
d0058f5c:	40ca      	lsrs	r2, r1
d0058f5e:	07d6      	lsls	r6, r2, #31
d0058f60:	d528      	bpl.n	d0058fb4 <__sflush_r+0xb8>
d0058f62:	2200      	movs	r2, #0
d0058f64:	6062      	str	r2, [r4, #4]
d0058f66:	04d9      	lsls	r1, r3, #19
d0058f68:	6922      	ldr	r2, [r4, #16]
d0058f6a:	6022      	str	r2, [r4, #0]
d0058f6c:	d504      	bpl.n	d0058f78 <__sflush_r+0x7c>
d0058f6e:	1c42      	adds	r2, r0, #1
d0058f70:	d101      	bne.n	d0058f76 <__sflush_r+0x7a>
d0058f72:	682b      	ldr	r3, [r5, #0]
d0058f74:	b903      	cbnz	r3, d0058f78 <__sflush_r+0x7c>
d0058f76:	6560      	str	r0, [r4, #84]	; 0x54
d0058f78:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058f7a:	602f      	str	r7, [r5, #0]
d0058f7c:	2900      	cmp	r1, #0
d0058f7e:	d0ca      	beq.n	d0058f16 <__sflush_r+0x1a>
d0058f80:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0058f84:	4299      	cmp	r1, r3
d0058f86:	d002      	beq.n	d0058f8e <__sflush_r+0x92>
d0058f88:	4628      	mov	r0, r5
d0058f8a:	f000 f9a7 	bl	d00592dc <_free_r>
d0058f8e:	2000      	movs	r0, #0
d0058f90:	6360      	str	r0, [r4, #52]	; 0x34
d0058f92:	e7c1      	b.n	d0058f18 <__sflush_r+0x1c>
d0058f94:	6a21      	ldr	r1, [r4, #32]
d0058f96:	2301      	movs	r3, #1
d0058f98:	4628      	mov	r0, r5
d0058f9a:	47b0      	blx	r6
d0058f9c:	1c41      	adds	r1, r0, #1
d0058f9e:	d1c7      	bne.n	d0058f30 <__sflush_r+0x34>
d0058fa0:	682b      	ldr	r3, [r5, #0]
d0058fa2:	2b00      	cmp	r3, #0
d0058fa4:	d0c4      	beq.n	d0058f30 <__sflush_r+0x34>
d0058fa6:	2b1d      	cmp	r3, #29
d0058fa8:	d001      	beq.n	d0058fae <__sflush_r+0xb2>
d0058faa:	2b16      	cmp	r3, #22
d0058fac:	d101      	bne.n	d0058fb2 <__sflush_r+0xb6>
d0058fae:	602f      	str	r7, [r5, #0]
d0058fb0:	e7b1      	b.n	d0058f16 <__sflush_r+0x1a>
d0058fb2:	89a3      	ldrh	r3, [r4, #12]
d0058fb4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0058fb8:	81a3      	strh	r3, [r4, #12]
d0058fba:	e7ad      	b.n	d0058f18 <__sflush_r+0x1c>
d0058fbc:	690f      	ldr	r7, [r1, #16]
d0058fbe:	2f00      	cmp	r7, #0
d0058fc0:	d0a9      	beq.n	d0058f16 <__sflush_r+0x1a>
d0058fc2:	0793      	lsls	r3, r2, #30
d0058fc4:	680e      	ldr	r6, [r1, #0]
d0058fc6:	bf08      	it	eq
d0058fc8:	694b      	ldreq	r3, [r1, #20]
d0058fca:	600f      	str	r7, [r1, #0]
d0058fcc:	bf18      	it	ne
d0058fce:	2300      	movne	r3, #0
d0058fd0:	eba6 0807 	sub.w	r8, r6, r7
d0058fd4:	608b      	str	r3, [r1, #8]
d0058fd6:	f1b8 0f00 	cmp.w	r8, #0
d0058fda:	dd9c      	ble.n	d0058f16 <__sflush_r+0x1a>
d0058fdc:	6a21      	ldr	r1, [r4, #32]
d0058fde:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0058fe0:	4643      	mov	r3, r8
d0058fe2:	463a      	mov	r2, r7
d0058fe4:	4628      	mov	r0, r5
d0058fe6:	47b0      	blx	r6
d0058fe8:	2800      	cmp	r0, #0
d0058fea:	dc06      	bgt.n	d0058ffa <__sflush_r+0xfe>
d0058fec:	89a3      	ldrh	r3, [r4, #12]
d0058fee:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0058ff2:	81a3      	strh	r3, [r4, #12]
d0058ff4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0058ff8:	e78e      	b.n	d0058f18 <__sflush_r+0x1c>
d0058ffa:	4407      	add	r7, r0
d0058ffc:	eba8 0800 	sub.w	r8, r8, r0
d0059000:	e7e9      	b.n	d0058fd6 <__sflush_r+0xda>
d0059002:	bf00      	nop
d0059004:	20400001 	.word	0x20400001

d0059008 <_fflush_r>:
d0059008:	b538      	push	{r3, r4, r5, lr}
d005900a:	690b      	ldr	r3, [r1, #16]
d005900c:	4605      	mov	r5, r0
d005900e:	460c      	mov	r4, r1
d0059010:	b913      	cbnz	r3, d0059018 <_fflush_r+0x10>
d0059012:	2500      	movs	r5, #0
d0059014:	4628      	mov	r0, r5
d0059016:	bd38      	pop	{r3, r4, r5, pc}
d0059018:	b118      	cbz	r0, d0059022 <_fflush_r+0x1a>
d005901a:	6983      	ldr	r3, [r0, #24]
d005901c:	b90b      	cbnz	r3, d0059022 <_fflush_r+0x1a>
d005901e:	f000 f887 	bl	d0059130 <__sinit>
d0059022:	4b14      	ldr	r3, [pc, #80]	; (d0059074 <_fflush_r+0x6c>)
d0059024:	429c      	cmp	r4, r3
d0059026:	d11b      	bne.n	d0059060 <_fflush_r+0x58>
d0059028:	686c      	ldr	r4, [r5, #4]
d005902a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005902e:	2b00      	cmp	r3, #0
d0059030:	d0ef      	beq.n	d0059012 <_fflush_r+0xa>
d0059032:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0059034:	07d0      	lsls	r0, r2, #31
d0059036:	d404      	bmi.n	d0059042 <_fflush_r+0x3a>
d0059038:	0599      	lsls	r1, r3, #22
d005903a:	d402      	bmi.n	d0059042 <_fflush_r+0x3a>
d005903c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005903e:	f000 f916 	bl	d005926e <__retarget_lock_acquire_recursive>
d0059042:	4628      	mov	r0, r5
d0059044:	4621      	mov	r1, r4
d0059046:	f7ff ff59 	bl	d0058efc <__sflush_r>
d005904a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005904c:	07da      	lsls	r2, r3, #31
d005904e:	4605      	mov	r5, r0
d0059050:	d4e0      	bmi.n	d0059014 <_fflush_r+0xc>
d0059052:	89a3      	ldrh	r3, [r4, #12]
d0059054:	059b      	lsls	r3, r3, #22
d0059056:	d4dd      	bmi.n	d0059014 <_fflush_r+0xc>
d0059058:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005905a:	f000 f909 	bl	d0059270 <__retarget_lock_release_recursive>
d005905e:	e7d9      	b.n	d0059014 <_fflush_r+0xc>
d0059060:	4b05      	ldr	r3, [pc, #20]	; (d0059078 <_fflush_r+0x70>)
d0059062:	429c      	cmp	r4, r3
d0059064:	d101      	bne.n	d005906a <_fflush_r+0x62>
d0059066:	68ac      	ldr	r4, [r5, #8]
d0059068:	e7df      	b.n	d005902a <_fflush_r+0x22>
d005906a:	4b04      	ldr	r3, [pc, #16]	; (d005907c <_fflush_r+0x74>)
d005906c:	429c      	cmp	r4, r3
d005906e:	bf08      	it	eq
d0059070:	68ec      	ldreq	r4, [r5, #12]
d0059072:	e7da      	b.n	d005902a <_fflush_r+0x22>
d0059074:	d005adc0 	.word	0xd005adc0
d0059078:	d005ade0 	.word	0xd005ade0
d005907c:	d005ada0 	.word	0xd005ada0

d0059080 <std>:
d0059080:	2300      	movs	r3, #0
d0059082:	b510      	push	{r4, lr}
d0059084:	4604      	mov	r4, r0
d0059086:	e9c0 3300 	strd	r3, r3, [r0]
d005908a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d005908e:	6083      	str	r3, [r0, #8]
d0059090:	8181      	strh	r1, [r0, #12]
d0059092:	6643      	str	r3, [r0, #100]	; 0x64
d0059094:	81c2      	strh	r2, [r0, #14]
d0059096:	6183      	str	r3, [r0, #24]
d0059098:	4619      	mov	r1, r3
d005909a:	2208      	movs	r2, #8
d005909c:	305c      	adds	r0, #92	; 0x5c
d005909e:	f000 f915 	bl	d00592cc <memset>
d00590a2:	4b05      	ldr	r3, [pc, #20]	; (d00590b8 <std+0x38>)
d00590a4:	6263      	str	r3, [r4, #36]	; 0x24
d00590a6:	4b05      	ldr	r3, [pc, #20]	; (d00590bc <std+0x3c>)
d00590a8:	62a3      	str	r3, [r4, #40]	; 0x28
d00590aa:	4b05      	ldr	r3, [pc, #20]	; (d00590c0 <std+0x40>)
d00590ac:	62e3      	str	r3, [r4, #44]	; 0x2c
d00590ae:	4b05      	ldr	r3, [pc, #20]	; (d00590c4 <std+0x44>)
d00590b0:	6224      	str	r4, [r4, #32]
d00590b2:	6323      	str	r3, [r4, #48]	; 0x30
d00590b4:	bd10      	pop	{r4, pc}
d00590b6:	bf00      	nop
d00590b8:	d005960d 	.word	0xd005960d
d00590bc:	d005962f 	.word	0xd005962f
d00590c0:	d0059667 	.word	0xd0059667
d00590c4:	d005968b 	.word	0xd005968b

d00590c8 <_cleanup_r>:
d00590c8:	4901      	ldr	r1, [pc, #4]	; (d00590d0 <_cleanup_r+0x8>)
d00590ca:	f000 b8af 	b.w	d005922c <_fwalk_reent>
d00590ce:	bf00      	nop
d00590d0:	d0059009 	.word	0xd0059009

d00590d4 <__sfmoreglue>:
d00590d4:	b570      	push	{r4, r5, r6, lr}
d00590d6:	1e4a      	subs	r2, r1, #1
d00590d8:	2568      	movs	r5, #104	; 0x68
d00590da:	4355      	muls	r5, r2
d00590dc:	460e      	mov	r6, r1
d00590de:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00590e2:	f000 f94b 	bl	d005937c <_malloc_r>
d00590e6:	4604      	mov	r4, r0
d00590e8:	b140      	cbz	r0, d00590fc <__sfmoreglue+0x28>
d00590ea:	2100      	movs	r1, #0
d00590ec:	e9c0 1600 	strd	r1, r6, [r0]
d00590f0:	300c      	adds	r0, #12
d00590f2:	60a0      	str	r0, [r4, #8]
d00590f4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00590f8:	f000 f8e8 	bl	d00592cc <memset>
d00590fc:	4620      	mov	r0, r4
d00590fe:	bd70      	pop	{r4, r5, r6, pc}

d0059100 <__sfp_lock_acquire>:
d0059100:	4801      	ldr	r0, [pc, #4]	; (d0059108 <__sfp_lock_acquire+0x8>)
d0059102:	f000 b8b4 	b.w	d005926e <__retarget_lock_acquire_recursive>
d0059106:	bf00      	nop
d0059108:	d012da68 	.word	0xd012da68

d005910c <__sfp_lock_release>:
d005910c:	4801      	ldr	r0, [pc, #4]	; (d0059114 <__sfp_lock_release+0x8>)
d005910e:	f000 b8af 	b.w	d0059270 <__retarget_lock_release_recursive>
d0059112:	bf00      	nop
d0059114:	d012da68 	.word	0xd012da68

d0059118 <__sinit_lock_acquire>:
d0059118:	4801      	ldr	r0, [pc, #4]	; (d0059120 <__sinit_lock_acquire+0x8>)
d005911a:	f000 b8a8 	b.w	d005926e <__retarget_lock_acquire_recursive>
d005911e:	bf00      	nop
d0059120:	d012da63 	.word	0xd012da63

d0059124 <__sinit_lock_release>:
d0059124:	4801      	ldr	r0, [pc, #4]	; (d005912c <__sinit_lock_release+0x8>)
d0059126:	f000 b8a3 	b.w	d0059270 <__retarget_lock_release_recursive>
d005912a:	bf00      	nop
d005912c:	d012da63 	.word	0xd012da63

d0059130 <__sinit>:
d0059130:	b510      	push	{r4, lr}
d0059132:	4604      	mov	r4, r0
d0059134:	f7ff fff0 	bl	d0059118 <__sinit_lock_acquire>
d0059138:	69a3      	ldr	r3, [r4, #24]
d005913a:	b11b      	cbz	r3, d0059144 <__sinit+0x14>
d005913c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0059140:	f7ff bff0 	b.w	d0059124 <__sinit_lock_release>
d0059144:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0059148:	6523      	str	r3, [r4, #80]	; 0x50
d005914a:	4b13      	ldr	r3, [pc, #76]	; (d0059198 <__sinit+0x68>)
d005914c:	4a13      	ldr	r2, [pc, #76]	; (d005919c <__sinit+0x6c>)
d005914e:	681b      	ldr	r3, [r3, #0]
d0059150:	62a2      	str	r2, [r4, #40]	; 0x28
d0059152:	42a3      	cmp	r3, r4
d0059154:	bf04      	itt	eq
d0059156:	2301      	moveq	r3, #1
d0059158:	61a3      	streq	r3, [r4, #24]
d005915a:	4620      	mov	r0, r4
d005915c:	f000 f820 	bl	d00591a0 <__sfp>
d0059160:	6060      	str	r0, [r4, #4]
d0059162:	4620      	mov	r0, r4
d0059164:	f000 f81c 	bl	d00591a0 <__sfp>
d0059168:	60a0      	str	r0, [r4, #8]
d005916a:	4620      	mov	r0, r4
d005916c:	f000 f818 	bl	d00591a0 <__sfp>
d0059170:	2200      	movs	r2, #0
d0059172:	60e0      	str	r0, [r4, #12]
d0059174:	2104      	movs	r1, #4
d0059176:	6860      	ldr	r0, [r4, #4]
d0059178:	f7ff ff82 	bl	d0059080 <std>
d005917c:	68a0      	ldr	r0, [r4, #8]
d005917e:	2201      	movs	r2, #1
d0059180:	2109      	movs	r1, #9
d0059182:	f7ff ff7d 	bl	d0059080 <std>
d0059186:	68e0      	ldr	r0, [r4, #12]
d0059188:	2202      	movs	r2, #2
d005918a:	2112      	movs	r1, #18
d005918c:	f7ff ff78 	bl	d0059080 <std>
d0059190:	2301      	movs	r3, #1
d0059192:	61a3      	str	r3, [r4, #24]
d0059194:	e7d2      	b.n	d005913c <__sinit+0xc>
d0059196:	bf00      	nop
d0059198:	d005ae00 	.word	0xd005ae00
d005919c:	d00590c9 	.word	0xd00590c9

d00591a0 <__sfp>:
d00591a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00591a2:	4607      	mov	r7, r0
d00591a4:	f7ff ffac 	bl	d0059100 <__sfp_lock_acquire>
d00591a8:	4b1e      	ldr	r3, [pc, #120]	; (d0059224 <__sfp+0x84>)
d00591aa:	681e      	ldr	r6, [r3, #0]
d00591ac:	69b3      	ldr	r3, [r6, #24]
d00591ae:	b913      	cbnz	r3, d00591b6 <__sfp+0x16>
d00591b0:	4630      	mov	r0, r6
d00591b2:	f7ff ffbd 	bl	d0059130 <__sinit>
d00591b6:	3648      	adds	r6, #72	; 0x48
d00591b8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00591bc:	3b01      	subs	r3, #1
d00591be:	d503      	bpl.n	d00591c8 <__sfp+0x28>
d00591c0:	6833      	ldr	r3, [r6, #0]
d00591c2:	b30b      	cbz	r3, d0059208 <__sfp+0x68>
d00591c4:	6836      	ldr	r6, [r6, #0]
d00591c6:	e7f7      	b.n	d00591b8 <__sfp+0x18>
d00591c8:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00591cc:	b9d5      	cbnz	r5, d0059204 <__sfp+0x64>
d00591ce:	4b16      	ldr	r3, [pc, #88]	; (d0059228 <__sfp+0x88>)
d00591d0:	60e3      	str	r3, [r4, #12]
d00591d2:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00591d6:	6665      	str	r5, [r4, #100]	; 0x64
d00591d8:	f000 f847 	bl	d005926a <__retarget_lock_init_recursive>
d00591dc:	f7ff ff96 	bl	d005910c <__sfp_lock_release>
d00591e0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00591e4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00591e8:	6025      	str	r5, [r4, #0]
d00591ea:	61a5      	str	r5, [r4, #24]
d00591ec:	2208      	movs	r2, #8
d00591ee:	4629      	mov	r1, r5
d00591f0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00591f4:	f000 f86a 	bl	d00592cc <memset>
d00591f8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d00591fc:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0059200:	4620      	mov	r0, r4
d0059202:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0059204:	3468      	adds	r4, #104	; 0x68
d0059206:	e7d9      	b.n	d00591bc <__sfp+0x1c>
d0059208:	2104      	movs	r1, #4
d005920a:	4638      	mov	r0, r7
d005920c:	f7ff ff62 	bl	d00590d4 <__sfmoreglue>
d0059210:	4604      	mov	r4, r0
d0059212:	6030      	str	r0, [r6, #0]
d0059214:	2800      	cmp	r0, #0
d0059216:	d1d5      	bne.n	d00591c4 <__sfp+0x24>
d0059218:	f7ff ff78 	bl	d005910c <__sfp_lock_release>
d005921c:	230c      	movs	r3, #12
d005921e:	603b      	str	r3, [r7, #0]
d0059220:	e7ee      	b.n	d0059200 <__sfp+0x60>
d0059222:	bf00      	nop
d0059224:	d005ae00 	.word	0xd005ae00
d0059228:	ffff0001 	.word	0xffff0001

d005922c <_fwalk_reent>:
d005922c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0059230:	4606      	mov	r6, r0
d0059232:	4688      	mov	r8, r1
d0059234:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0059238:	2700      	movs	r7, #0
d005923a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d005923e:	f1b9 0901 	subs.w	r9, r9, #1
d0059242:	d505      	bpl.n	d0059250 <_fwalk_reent+0x24>
d0059244:	6824      	ldr	r4, [r4, #0]
d0059246:	2c00      	cmp	r4, #0
d0059248:	d1f7      	bne.n	d005923a <_fwalk_reent+0xe>
d005924a:	4638      	mov	r0, r7
d005924c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0059250:	89ab      	ldrh	r3, [r5, #12]
d0059252:	2b01      	cmp	r3, #1
d0059254:	d907      	bls.n	d0059266 <_fwalk_reent+0x3a>
d0059256:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d005925a:	3301      	adds	r3, #1
d005925c:	d003      	beq.n	d0059266 <_fwalk_reent+0x3a>
d005925e:	4629      	mov	r1, r5
d0059260:	4630      	mov	r0, r6
d0059262:	47c0      	blx	r8
d0059264:	4307      	orrs	r7, r0
d0059266:	3568      	adds	r5, #104	; 0x68
d0059268:	e7e9      	b.n	d005923e <_fwalk_reent+0x12>

d005926a <__retarget_lock_init_recursive>:
d005926a:	4770      	bx	lr

d005926c <__retarget_lock_close_recursive>:
d005926c:	4770      	bx	lr

d005926e <__retarget_lock_acquire_recursive>:
d005926e:	4770      	bx	lr

d0059270 <__retarget_lock_release_recursive>:
d0059270:	4770      	bx	lr
	...

d0059274 <malloc>:
d0059274:	4b02      	ldr	r3, [pc, #8]	; (d0059280 <malloc+0xc>)
d0059276:	4601      	mov	r1, r0
d0059278:	6818      	ldr	r0, [r3, #0]
d005927a:	f000 b87f 	b.w	d005937c <_malloc_r>
d005927e:	bf00      	nop
d0059280:	d008d66c 	.word	0xd008d66c

d0059284 <free>:
d0059284:	4b02      	ldr	r3, [pc, #8]	; (d0059290 <free+0xc>)
d0059286:	4601      	mov	r1, r0
d0059288:	6818      	ldr	r0, [r3, #0]
d005928a:	f000 b827 	b.w	d00592dc <_free_r>
d005928e:	bf00      	nop
d0059290:	d008d66c 	.word	0xd008d66c

d0059294 <memcmp>:
d0059294:	b530      	push	{r4, r5, lr}
d0059296:	3901      	subs	r1, #1
d0059298:	2400      	movs	r4, #0
d005929a:	42a2      	cmp	r2, r4
d005929c:	d101      	bne.n	d00592a2 <memcmp+0xe>
d005929e:	2000      	movs	r0, #0
d00592a0:	e005      	b.n	d00592ae <memcmp+0x1a>
d00592a2:	5d03      	ldrb	r3, [r0, r4]
d00592a4:	3401      	adds	r4, #1
d00592a6:	5d0d      	ldrb	r5, [r1, r4]
d00592a8:	42ab      	cmp	r3, r5
d00592aa:	d0f6      	beq.n	d005929a <memcmp+0x6>
d00592ac:	1b58      	subs	r0, r3, r5
d00592ae:	bd30      	pop	{r4, r5, pc}

d00592b0 <memcpy>:
d00592b0:	440a      	add	r2, r1
d00592b2:	4291      	cmp	r1, r2
d00592b4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00592b8:	d100      	bne.n	d00592bc <memcpy+0xc>
d00592ba:	4770      	bx	lr
d00592bc:	b510      	push	{r4, lr}
d00592be:	f811 4b01 	ldrb.w	r4, [r1], #1
d00592c2:	f803 4f01 	strb.w	r4, [r3, #1]!
d00592c6:	4291      	cmp	r1, r2
d00592c8:	d1f9      	bne.n	d00592be <memcpy+0xe>
d00592ca:	bd10      	pop	{r4, pc}

d00592cc <memset>:
d00592cc:	4402      	add	r2, r0
d00592ce:	4603      	mov	r3, r0
d00592d0:	4293      	cmp	r3, r2
d00592d2:	d100      	bne.n	d00592d6 <memset+0xa>
d00592d4:	4770      	bx	lr
d00592d6:	f803 1b01 	strb.w	r1, [r3], #1
d00592da:	e7f9      	b.n	d00592d0 <memset+0x4>

d00592dc <_free_r>:
d00592dc:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00592de:	2900      	cmp	r1, #0
d00592e0:	d048      	beq.n	d0059374 <_free_r+0x98>
d00592e2:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00592e6:	9001      	str	r0, [sp, #4]
d00592e8:	2b00      	cmp	r3, #0
d00592ea:	f1a1 0404 	sub.w	r4, r1, #4
d00592ee:	bfb8      	it	lt
d00592f0:	18e4      	addlt	r4, r4, r3
d00592f2:	f000 fa15 	bl	d0059720 <__malloc_lock>
d00592f6:	4a20      	ldr	r2, [pc, #128]	; (d0059378 <_free_r+0x9c>)
d00592f8:	9801      	ldr	r0, [sp, #4]
d00592fa:	6813      	ldr	r3, [r2, #0]
d00592fc:	4615      	mov	r5, r2
d00592fe:	b933      	cbnz	r3, d005930e <_free_r+0x32>
d0059300:	6063      	str	r3, [r4, #4]
d0059302:	6014      	str	r4, [r2, #0]
d0059304:	b003      	add	sp, #12
d0059306:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005930a:	f000 ba0f 	b.w	d005972c <__malloc_unlock>
d005930e:	42a3      	cmp	r3, r4
d0059310:	d90b      	bls.n	d005932a <_free_r+0x4e>
d0059312:	6821      	ldr	r1, [r4, #0]
d0059314:	1862      	adds	r2, r4, r1
d0059316:	4293      	cmp	r3, r2
d0059318:	bf04      	itt	eq
d005931a:	681a      	ldreq	r2, [r3, #0]
d005931c:	685b      	ldreq	r3, [r3, #4]
d005931e:	6063      	str	r3, [r4, #4]
d0059320:	bf04      	itt	eq
d0059322:	1852      	addeq	r2, r2, r1
d0059324:	6022      	streq	r2, [r4, #0]
d0059326:	602c      	str	r4, [r5, #0]
d0059328:	e7ec      	b.n	d0059304 <_free_r+0x28>
d005932a:	461a      	mov	r2, r3
d005932c:	685b      	ldr	r3, [r3, #4]
d005932e:	b10b      	cbz	r3, d0059334 <_free_r+0x58>
d0059330:	42a3      	cmp	r3, r4
d0059332:	d9fa      	bls.n	d005932a <_free_r+0x4e>
d0059334:	6811      	ldr	r1, [r2, #0]
d0059336:	1855      	adds	r5, r2, r1
d0059338:	42a5      	cmp	r5, r4
d005933a:	d10b      	bne.n	d0059354 <_free_r+0x78>
d005933c:	6824      	ldr	r4, [r4, #0]
d005933e:	4421      	add	r1, r4
d0059340:	1854      	adds	r4, r2, r1
d0059342:	42a3      	cmp	r3, r4
d0059344:	6011      	str	r1, [r2, #0]
d0059346:	d1dd      	bne.n	d0059304 <_free_r+0x28>
d0059348:	681c      	ldr	r4, [r3, #0]
d005934a:	685b      	ldr	r3, [r3, #4]
d005934c:	6053      	str	r3, [r2, #4]
d005934e:	4421      	add	r1, r4
d0059350:	6011      	str	r1, [r2, #0]
d0059352:	e7d7      	b.n	d0059304 <_free_r+0x28>
d0059354:	d902      	bls.n	d005935c <_free_r+0x80>
d0059356:	230c      	movs	r3, #12
d0059358:	6003      	str	r3, [r0, #0]
d005935a:	e7d3      	b.n	d0059304 <_free_r+0x28>
d005935c:	6825      	ldr	r5, [r4, #0]
d005935e:	1961      	adds	r1, r4, r5
d0059360:	428b      	cmp	r3, r1
d0059362:	bf04      	itt	eq
d0059364:	6819      	ldreq	r1, [r3, #0]
d0059366:	685b      	ldreq	r3, [r3, #4]
d0059368:	6063      	str	r3, [r4, #4]
d005936a:	bf04      	itt	eq
d005936c:	1949      	addeq	r1, r1, r5
d005936e:	6021      	streq	r1, [r4, #0]
d0059370:	6054      	str	r4, [r2, #4]
d0059372:	e7c7      	b.n	d0059304 <_free_r+0x28>
d0059374:	b003      	add	sp, #12
d0059376:	bd30      	pop	{r4, r5, pc}
d0059378:	d01279a0 	.word	0xd01279a0

d005937c <_malloc_r>:
d005937c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005937e:	1ccd      	adds	r5, r1, #3
d0059380:	f025 0503 	bic.w	r5, r5, #3
d0059384:	3508      	adds	r5, #8
d0059386:	2d0c      	cmp	r5, #12
d0059388:	bf38      	it	cc
d005938a:	250c      	movcc	r5, #12
d005938c:	2d00      	cmp	r5, #0
d005938e:	4606      	mov	r6, r0
d0059390:	db01      	blt.n	d0059396 <_malloc_r+0x1a>
d0059392:	42a9      	cmp	r1, r5
d0059394:	d903      	bls.n	d005939e <_malloc_r+0x22>
d0059396:	230c      	movs	r3, #12
d0059398:	6033      	str	r3, [r6, #0]
d005939a:	2000      	movs	r0, #0
d005939c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005939e:	f000 f9bf 	bl	d0059720 <__malloc_lock>
d00593a2:	4921      	ldr	r1, [pc, #132]	; (d0059428 <_malloc_r+0xac>)
d00593a4:	680a      	ldr	r2, [r1, #0]
d00593a6:	4614      	mov	r4, r2
d00593a8:	b99c      	cbnz	r4, d00593d2 <_malloc_r+0x56>
d00593aa:	4f20      	ldr	r7, [pc, #128]	; (d005942c <_malloc_r+0xb0>)
d00593ac:	683b      	ldr	r3, [r7, #0]
d00593ae:	b923      	cbnz	r3, d00593ba <_malloc_r+0x3e>
d00593b0:	4621      	mov	r1, r4
d00593b2:	4630      	mov	r0, r6
d00593b4:	f7f6 fe94 	bl	d00500e0 <_sbrk_r>
d00593b8:	6038      	str	r0, [r7, #0]
d00593ba:	4629      	mov	r1, r5
d00593bc:	4630      	mov	r0, r6
d00593be:	f7f6 fe8f 	bl	d00500e0 <_sbrk_r>
d00593c2:	1c43      	adds	r3, r0, #1
d00593c4:	d123      	bne.n	d005940e <_malloc_r+0x92>
d00593c6:	230c      	movs	r3, #12
d00593c8:	6033      	str	r3, [r6, #0]
d00593ca:	4630      	mov	r0, r6
d00593cc:	f000 f9ae 	bl	d005972c <__malloc_unlock>
d00593d0:	e7e3      	b.n	d005939a <_malloc_r+0x1e>
d00593d2:	6823      	ldr	r3, [r4, #0]
d00593d4:	1b5b      	subs	r3, r3, r5
d00593d6:	d417      	bmi.n	d0059408 <_malloc_r+0x8c>
d00593d8:	2b0b      	cmp	r3, #11
d00593da:	d903      	bls.n	d00593e4 <_malloc_r+0x68>
d00593dc:	6023      	str	r3, [r4, #0]
d00593de:	441c      	add	r4, r3
d00593e0:	6025      	str	r5, [r4, #0]
d00593e2:	e004      	b.n	d00593ee <_malloc_r+0x72>
d00593e4:	6863      	ldr	r3, [r4, #4]
d00593e6:	42a2      	cmp	r2, r4
d00593e8:	bf0c      	ite	eq
d00593ea:	600b      	streq	r3, [r1, #0]
d00593ec:	6053      	strne	r3, [r2, #4]
d00593ee:	4630      	mov	r0, r6
d00593f0:	f000 f99c 	bl	d005972c <__malloc_unlock>
d00593f4:	f104 000b 	add.w	r0, r4, #11
d00593f8:	1d23      	adds	r3, r4, #4
d00593fa:	f020 0007 	bic.w	r0, r0, #7
d00593fe:	1ac2      	subs	r2, r0, r3
d0059400:	d0cc      	beq.n	d005939c <_malloc_r+0x20>
d0059402:	1a1b      	subs	r3, r3, r0
d0059404:	50a3      	str	r3, [r4, r2]
d0059406:	e7c9      	b.n	d005939c <_malloc_r+0x20>
d0059408:	4622      	mov	r2, r4
d005940a:	6864      	ldr	r4, [r4, #4]
d005940c:	e7cc      	b.n	d00593a8 <_malloc_r+0x2c>
d005940e:	1cc4      	adds	r4, r0, #3
d0059410:	f024 0403 	bic.w	r4, r4, #3
d0059414:	42a0      	cmp	r0, r4
d0059416:	d0e3      	beq.n	d00593e0 <_malloc_r+0x64>
d0059418:	1a21      	subs	r1, r4, r0
d005941a:	4630      	mov	r0, r6
d005941c:	f7f6 fe60 	bl	d00500e0 <_sbrk_r>
d0059420:	3001      	adds	r0, #1
d0059422:	d1dd      	bne.n	d00593e0 <_malloc_r+0x64>
d0059424:	e7cf      	b.n	d00593c6 <_malloc_r+0x4a>
d0059426:	bf00      	nop
d0059428:	d01279a0 	.word	0xd01279a0
d005942c:	d01279a4 	.word	0xd01279a4

d0059430 <setbuf>:
d0059430:	2900      	cmp	r1, #0
d0059432:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0059436:	bf0c      	ite	eq
d0059438:	2202      	moveq	r2, #2
d005943a:	2200      	movne	r2, #0
d005943c:	f000 b800 	b.w	d0059440 <setvbuf>

d0059440 <setvbuf>:
d0059440:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0059444:	461d      	mov	r5, r3
d0059446:	4b5d      	ldr	r3, [pc, #372]	; (d00595bc <setvbuf+0x17c>)
d0059448:	681f      	ldr	r7, [r3, #0]
d005944a:	4604      	mov	r4, r0
d005944c:	460e      	mov	r6, r1
d005944e:	4690      	mov	r8, r2
d0059450:	b127      	cbz	r7, d005945c <setvbuf+0x1c>
d0059452:	69bb      	ldr	r3, [r7, #24]
d0059454:	b913      	cbnz	r3, d005945c <setvbuf+0x1c>
d0059456:	4638      	mov	r0, r7
d0059458:	f7ff fe6a 	bl	d0059130 <__sinit>
d005945c:	4b58      	ldr	r3, [pc, #352]	; (d00595c0 <setvbuf+0x180>)
d005945e:	429c      	cmp	r4, r3
d0059460:	d167      	bne.n	d0059532 <setvbuf+0xf2>
d0059462:	687c      	ldr	r4, [r7, #4]
d0059464:	f1b8 0f02 	cmp.w	r8, #2
d0059468:	d006      	beq.n	d0059478 <setvbuf+0x38>
d005946a:	f1b8 0f01 	cmp.w	r8, #1
d005946e:	f200 809f 	bhi.w	d00595b0 <setvbuf+0x170>
d0059472:	2d00      	cmp	r5, #0
d0059474:	f2c0 809c 	blt.w	d00595b0 <setvbuf+0x170>
d0059478:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005947a:	07db      	lsls	r3, r3, #31
d005947c:	d405      	bmi.n	d005948a <setvbuf+0x4a>
d005947e:	89a3      	ldrh	r3, [r4, #12]
d0059480:	0598      	lsls	r0, r3, #22
d0059482:	d402      	bmi.n	d005948a <setvbuf+0x4a>
d0059484:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0059486:	f7ff fef2 	bl	d005926e <__retarget_lock_acquire_recursive>
d005948a:	4621      	mov	r1, r4
d005948c:	4638      	mov	r0, r7
d005948e:	f7ff fdbb 	bl	d0059008 <_fflush_r>
d0059492:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0059494:	b141      	cbz	r1, d00594a8 <setvbuf+0x68>
d0059496:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005949a:	4299      	cmp	r1, r3
d005949c:	d002      	beq.n	d00594a4 <setvbuf+0x64>
d005949e:	4638      	mov	r0, r7
d00594a0:	f7ff ff1c 	bl	d00592dc <_free_r>
d00594a4:	2300      	movs	r3, #0
d00594a6:	6363      	str	r3, [r4, #52]	; 0x34
d00594a8:	2300      	movs	r3, #0
d00594aa:	61a3      	str	r3, [r4, #24]
d00594ac:	6063      	str	r3, [r4, #4]
d00594ae:	89a3      	ldrh	r3, [r4, #12]
d00594b0:	0619      	lsls	r1, r3, #24
d00594b2:	d503      	bpl.n	d00594bc <setvbuf+0x7c>
d00594b4:	6921      	ldr	r1, [r4, #16]
d00594b6:	4638      	mov	r0, r7
d00594b8:	f7ff ff10 	bl	d00592dc <_free_r>
d00594bc:	89a3      	ldrh	r3, [r4, #12]
d00594be:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00594c2:	f023 0303 	bic.w	r3, r3, #3
d00594c6:	f1b8 0f02 	cmp.w	r8, #2
d00594ca:	81a3      	strh	r3, [r4, #12]
d00594cc:	d06c      	beq.n	d00595a8 <setvbuf+0x168>
d00594ce:	ab01      	add	r3, sp, #4
d00594d0:	466a      	mov	r2, sp
d00594d2:	4621      	mov	r1, r4
d00594d4:	4638      	mov	r0, r7
d00594d6:	f000 f8ff 	bl	d00596d8 <__swhatbuf_r>
d00594da:	89a3      	ldrh	r3, [r4, #12]
d00594dc:	4318      	orrs	r0, r3
d00594de:	81a0      	strh	r0, [r4, #12]
d00594e0:	2d00      	cmp	r5, #0
d00594e2:	d130      	bne.n	d0059546 <setvbuf+0x106>
d00594e4:	9d00      	ldr	r5, [sp, #0]
d00594e6:	4628      	mov	r0, r5
d00594e8:	f7ff fec4 	bl	d0059274 <malloc>
d00594ec:	4606      	mov	r6, r0
d00594ee:	2800      	cmp	r0, #0
d00594f0:	d155      	bne.n	d005959e <setvbuf+0x15e>
d00594f2:	f8dd 9000 	ldr.w	r9, [sp]
d00594f6:	45a9      	cmp	r9, r5
d00594f8:	d14a      	bne.n	d0059590 <setvbuf+0x150>
d00594fa:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00594fe:	2200      	movs	r2, #0
d0059500:	60a2      	str	r2, [r4, #8]
d0059502:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0059506:	6022      	str	r2, [r4, #0]
d0059508:	6122      	str	r2, [r4, #16]
d005950a:	2201      	movs	r2, #1
d005950c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0059510:	6162      	str	r2, [r4, #20]
d0059512:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0059514:	f043 0302 	orr.w	r3, r3, #2
d0059518:	07d2      	lsls	r2, r2, #31
d005951a:	81a3      	strh	r3, [r4, #12]
d005951c:	d405      	bmi.n	d005952a <setvbuf+0xea>
d005951e:	f413 7f00 	tst.w	r3, #512	; 0x200
d0059522:	d102      	bne.n	d005952a <setvbuf+0xea>
d0059524:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0059526:	f7ff fea3 	bl	d0059270 <__retarget_lock_release_recursive>
d005952a:	4628      	mov	r0, r5
d005952c:	b003      	add	sp, #12
d005952e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0059532:	4b24      	ldr	r3, [pc, #144]	; (d00595c4 <setvbuf+0x184>)
d0059534:	429c      	cmp	r4, r3
d0059536:	d101      	bne.n	d005953c <setvbuf+0xfc>
d0059538:	68bc      	ldr	r4, [r7, #8]
d005953a:	e793      	b.n	d0059464 <setvbuf+0x24>
d005953c:	4b22      	ldr	r3, [pc, #136]	; (d00595c8 <setvbuf+0x188>)
d005953e:	429c      	cmp	r4, r3
d0059540:	bf08      	it	eq
d0059542:	68fc      	ldreq	r4, [r7, #12]
d0059544:	e78e      	b.n	d0059464 <setvbuf+0x24>
d0059546:	2e00      	cmp	r6, #0
d0059548:	d0cd      	beq.n	d00594e6 <setvbuf+0xa6>
d005954a:	69bb      	ldr	r3, [r7, #24]
d005954c:	b913      	cbnz	r3, d0059554 <setvbuf+0x114>
d005954e:	4638      	mov	r0, r7
d0059550:	f7ff fdee 	bl	d0059130 <__sinit>
d0059554:	f1b8 0f01 	cmp.w	r8, #1
d0059558:	bf08      	it	eq
d005955a:	89a3      	ldrheq	r3, [r4, #12]
d005955c:	6026      	str	r6, [r4, #0]
d005955e:	bf04      	itt	eq
d0059560:	f043 0301 	orreq.w	r3, r3, #1
d0059564:	81a3      	strheq	r3, [r4, #12]
d0059566:	89a2      	ldrh	r2, [r4, #12]
d0059568:	f012 0308 	ands.w	r3, r2, #8
d005956c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0059570:	d01c      	beq.n	d00595ac <setvbuf+0x16c>
d0059572:	07d3      	lsls	r3, r2, #31
d0059574:	bf41      	itttt	mi
d0059576:	2300      	movmi	r3, #0
d0059578:	426d      	negmi	r5, r5
d005957a:	60a3      	strmi	r3, [r4, #8]
d005957c:	61a5      	strmi	r5, [r4, #24]
d005957e:	bf58      	it	pl
d0059580:	60a5      	strpl	r5, [r4, #8]
d0059582:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0059584:	f015 0501 	ands.w	r5, r5, #1
d0059588:	d115      	bne.n	d00595b6 <setvbuf+0x176>
d005958a:	f412 7f00 	tst.w	r2, #512	; 0x200
d005958e:	e7c8      	b.n	d0059522 <setvbuf+0xe2>
d0059590:	4648      	mov	r0, r9
d0059592:	f7ff fe6f 	bl	d0059274 <malloc>
d0059596:	4606      	mov	r6, r0
d0059598:	2800      	cmp	r0, #0
d005959a:	d0ae      	beq.n	d00594fa <setvbuf+0xba>
d005959c:	464d      	mov	r5, r9
d005959e:	89a3      	ldrh	r3, [r4, #12]
d00595a0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00595a4:	81a3      	strh	r3, [r4, #12]
d00595a6:	e7d0      	b.n	d005954a <setvbuf+0x10a>
d00595a8:	2500      	movs	r5, #0
d00595aa:	e7a8      	b.n	d00594fe <setvbuf+0xbe>
d00595ac:	60a3      	str	r3, [r4, #8]
d00595ae:	e7e8      	b.n	d0059582 <setvbuf+0x142>
d00595b0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00595b4:	e7b9      	b.n	d005952a <setvbuf+0xea>
d00595b6:	2500      	movs	r5, #0
d00595b8:	e7b7      	b.n	d005952a <setvbuf+0xea>
d00595ba:	bf00      	nop
d00595bc:	d008d66c 	.word	0xd008d66c
d00595c0:	d005adc0 	.word	0xd005adc0
d00595c4:	d005ade0 	.word	0xd005ade0
d00595c8:	d005ada0 	.word	0xd005ada0

d00595cc <siprintf>:
d00595cc:	b40e      	push	{r1, r2, r3}
d00595ce:	b500      	push	{lr}
d00595d0:	b09c      	sub	sp, #112	; 0x70
d00595d2:	ab1d      	add	r3, sp, #116	; 0x74
d00595d4:	9002      	str	r0, [sp, #8]
d00595d6:	9006      	str	r0, [sp, #24]
d00595d8:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00595dc:	4809      	ldr	r0, [pc, #36]	; (d0059604 <siprintf+0x38>)
d00595de:	9107      	str	r1, [sp, #28]
d00595e0:	9104      	str	r1, [sp, #16]
d00595e2:	4909      	ldr	r1, [pc, #36]	; (d0059608 <siprintf+0x3c>)
d00595e4:	f853 2b04 	ldr.w	r2, [r3], #4
d00595e8:	9105      	str	r1, [sp, #20]
d00595ea:	6800      	ldr	r0, [r0, #0]
d00595ec:	9301      	str	r3, [sp, #4]
d00595ee:	a902      	add	r1, sp, #8
d00595f0:	f000 f924 	bl	d005983c <_svfiprintf_r>
d00595f4:	9b02      	ldr	r3, [sp, #8]
d00595f6:	2200      	movs	r2, #0
d00595f8:	701a      	strb	r2, [r3, #0]
d00595fa:	b01c      	add	sp, #112	; 0x70
d00595fc:	f85d eb04 	ldr.w	lr, [sp], #4
d0059600:	b003      	add	sp, #12
d0059602:	4770      	bx	lr
d0059604:	d008d66c 	.word	0xd008d66c
d0059608:	ffff0208 	.word	0xffff0208

d005960c <__sread>:
d005960c:	b510      	push	{r4, lr}
d005960e:	460c      	mov	r4, r1
d0059610:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0059614:	f000 fba6 	bl	d0059d64 <_read_r>
d0059618:	2800      	cmp	r0, #0
d005961a:	bfab      	itete	ge
d005961c:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d005961e:	89a3      	ldrhlt	r3, [r4, #12]
d0059620:	181b      	addge	r3, r3, r0
d0059622:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0059626:	bfac      	ite	ge
d0059628:	6563      	strge	r3, [r4, #84]	; 0x54
d005962a:	81a3      	strhlt	r3, [r4, #12]
d005962c:	bd10      	pop	{r4, pc}

d005962e <__swrite>:
d005962e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0059632:	461f      	mov	r7, r3
d0059634:	898b      	ldrh	r3, [r1, #12]
d0059636:	05db      	lsls	r3, r3, #23
d0059638:	4605      	mov	r5, r0
d005963a:	460c      	mov	r4, r1
d005963c:	4616      	mov	r6, r2
d005963e:	d505      	bpl.n	d005964c <__swrite+0x1e>
d0059640:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0059644:	2302      	movs	r3, #2
d0059646:	2200      	movs	r2, #0
d0059648:	f000 f834 	bl	d00596b4 <_lseek_r>
d005964c:	89a3      	ldrh	r3, [r4, #12]
d005964e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0059652:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0059656:	81a3      	strh	r3, [r4, #12]
d0059658:	4632      	mov	r2, r6
d005965a:	463b      	mov	r3, r7
d005965c:	4628      	mov	r0, r5
d005965e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0059662:	f7f6 bcf7 	b.w	d0050054 <_write_r>

d0059666 <__sseek>:
d0059666:	b510      	push	{r4, lr}
d0059668:	460c      	mov	r4, r1
d005966a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005966e:	f000 f821 	bl	d00596b4 <_lseek_r>
d0059672:	1c43      	adds	r3, r0, #1
d0059674:	89a3      	ldrh	r3, [r4, #12]
d0059676:	bf15      	itete	ne
d0059678:	6560      	strne	r0, [r4, #84]	; 0x54
d005967a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d005967e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0059682:	81a3      	strheq	r3, [r4, #12]
d0059684:	bf18      	it	ne
d0059686:	81a3      	strhne	r3, [r4, #12]
d0059688:	bd10      	pop	{r4, pc}

d005968a <__sclose>:
d005968a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005968e:	f000 b801 	b.w	d0059694 <_close_r>
	...

d0059694 <_close_r>:
d0059694:	b538      	push	{r3, r4, r5, lr}
d0059696:	4d06      	ldr	r5, [pc, #24]	; (d00596b0 <_close_r+0x1c>)
d0059698:	2300      	movs	r3, #0
d005969a:	4604      	mov	r4, r0
d005969c:	4608      	mov	r0, r1
d005969e:	602b      	str	r3, [r5, #0]
d00596a0:	f7f6 fd12 	bl	d00500c8 <_close>
d00596a4:	1c43      	adds	r3, r0, #1
d00596a6:	d102      	bne.n	d00596ae <_close_r+0x1a>
d00596a8:	682b      	ldr	r3, [r5, #0]
d00596aa:	b103      	cbz	r3, d00596ae <_close_r+0x1a>
d00596ac:	6023      	str	r3, [r4, #0]
d00596ae:	bd38      	pop	{r3, r4, r5, pc}
d00596b0:	d012da6c 	.word	0xd012da6c

d00596b4 <_lseek_r>:
d00596b4:	b538      	push	{r3, r4, r5, lr}
d00596b6:	4d07      	ldr	r5, [pc, #28]	; (d00596d4 <_lseek_r+0x20>)
d00596b8:	4604      	mov	r4, r0
d00596ba:	4608      	mov	r0, r1
d00596bc:	4611      	mov	r1, r2
d00596be:	2200      	movs	r2, #0
d00596c0:	602a      	str	r2, [r5, #0]
d00596c2:	461a      	mov	r2, r3
d00596c4:	f7f6 fd0a 	bl	d00500dc <_lseek>
d00596c8:	1c43      	adds	r3, r0, #1
d00596ca:	d102      	bne.n	d00596d2 <_lseek_r+0x1e>
d00596cc:	682b      	ldr	r3, [r5, #0]
d00596ce:	b103      	cbz	r3, d00596d2 <_lseek_r+0x1e>
d00596d0:	6023      	str	r3, [r4, #0]
d00596d2:	bd38      	pop	{r3, r4, r5, pc}
d00596d4:	d012da6c 	.word	0xd012da6c

d00596d8 <__swhatbuf_r>:
d00596d8:	b570      	push	{r4, r5, r6, lr}
d00596da:	460e      	mov	r6, r1
d00596dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00596e0:	2900      	cmp	r1, #0
d00596e2:	b096      	sub	sp, #88	; 0x58
d00596e4:	4614      	mov	r4, r2
d00596e6:	461d      	mov	r5, r3
d00596e8:	da07      	bge.n	d00596fa <__swhatbuf_r+0x22>
d00596ea:	2300      	movs	r3, #0
d00596ec:	602b      	str	r3, [r5, #0]
d00596ee:	89b3      	ldrh	r3, [r6, #12]
d00596f0:	061a      	lsls	r2, r3, #24
d00596f2:	d410      	bmi.n	d0059716 <__swhatbuf_r+0x3e>
d00596f4:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00596f8:	e00e      	b.n	d0059718 <__swhatbuf_r+0x40>
d00596fa:	466a      	mov	r2, sp
d00596fc:	f000 fb44 	bl	d0059d88 <_fstat_r>
d0059700:	2800      	cmp	r0, #0
d0059702:	dbf2      	blt.n	d00596ea <__swhatbuf_r+0x12>
d0059704:	9a01      	ldr	r2, [sp, #4]
d0059706:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d005970a:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d005970e:	425a      	negs	r2, r3
d0059710:	415a      	adcs	r2, r3
d0059712:	602a      	str	r2, [r5, #0]
d0059714:	e7ee      	b.n	d00596f4 <__swhatbuf_r+0x1c>
d0059716:	2340      	movs	r3, #64	; 0x40
d0059718:	2000      	movs	r0, #0
d005971a:	6023      	str	r3, [r4, #0]
d005971c:	b016      	add	sp, #88	; 0x58
d005971e:	bd70      	pop	{r4, r5, r6, pc}

d0059720 <__malloc_lock>:
d0059720:	4801      	ldr	r0, [pc, #4]	; (d0059728 <__malloc_lock+0x8>)
d0059722:	f7ff bda4 	b.w	d005926e <__retarget_lock_acquire_recursive>
d0059726:	bf00      	nop
d0059728:	d012da64 	.word	0xd012da64

d005972c <__malloc_unlock>:
d005972c:	4801      	ldr	r0, [pc, #4]	; (d0059734 <__malloc_unlock+0x8>)
d005972e:	f7ff bd9f 	b.w	d0059270 <__retarget_lock_release_recursive>
d0059732:	bf00      	nop
d0059734:	d012da64 	.word	0xd012da64

d0059738 <_realloc_r>:
d0059738:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005973a:	4607      	mov	r7, r0
d005973c:	4614      	mov	r4, r2
d005973e:	460e      	mov	r6, r1
d0059740:	b921      	cbnz	r1, d005974c <_realloc_r+0x14>
d0059742:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059746:	4611      	mov	r1, r2
d0059748:	f7ff be18 	b.w	d005937c <_malloc_r>
d005974c:	b922      	cbnz	r2, d0059758 <_realloc_r+0x20>
d005974e:	f7ff fdc5 	bl	d00592dc <_free_r>
d0059752:	4625      	mov	r5, r4
d0059754:	4628      	mov	r0, r5
d0059756:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0059758:	f000 fb94 	bl	d0059e84 <_malloc_usable_size_r>
d005975c:	42a0      	cmp	r0, r4
d005975e:	d20f      	bcs.n	d0059780 <_realloc_r+0x48>
d0059760:	4621      	mov	r1, r4
d0059762:	4638      	mov	r0, r7
d0059764:	f7ff fe0a 	bl	d005937c <_malloc_r>
d0059768:	4605      	mov	r5, r0
d005976a:	2800      	cmp	r0, #0
d005976c:	d0f2      	beq.n	d0059754 <_realloc_r+0x1c>
d005976e:	4631      	mov	r1, r6
d0059770:	4622      	mov	r2, r4
d0059772:	f7ff fd9d 	bl	d00592b0 <memcpy>
d0059776:	4631      	mov	r1, r6
d0059778:	4638      	mov	r0, r7
d005977a:	f7ff fdaf 	bl	d00592dc <_free_r>
d005977e:	e7e9      	b.n	d0059754 <_realloc_r+0x1c>
d0059780:	4635      	mov	r5, r6
d0059782:	e7e7      	b.n	d0059754 <_realloc_r+0x1c>

d0059784 <__ssputs_r>:
d0059784:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0059788:	688e      	ldr	r6, [r1, #8]
d005978a:	429e      	cmp	r6, r3
d005978c:	4682      	mov	sl, r0
d005978e:	460c      	mov	r4, r1
d0059790:	4690      	mov	r8, r2
d0059792:	461f      	mov	r7, r3
d0059794:	d838      	bhi.n	d0059808 <__ssputs_r+0x84>
d0059796:	898a      	ldrh	r2, [r1, #12]
d0059798:	f412 6f90 	tst.w	r2, #1152	; 0x480
d005979c:	d032      	beq.n	d0059804 <__ssputs_r+0x80>
d005979e:	6825      	ldr	r5, [r4, #0]
d00597a0:	6909      	ldr	r1, [r1, #16]
d00597a2:	eba5 0901 	sub.w	r9, r5, r1
d00597a6:	6965      	ldr	r5, [r4, #20]
d00597a8:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00597ac:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d00597b0:	3301      	adds	r3, #1
d00597b2:	444b      	add	r3, r9
d00597b4:	106d      	asrs	r5, r5, #1
d00597b6:	429d      	cmp	r5, r3
d00597b8:	bf38      	it	cc
d00597ba:	461d      	movcc	r5, r3
d00597bc:	0553      	lsls	r3, r2, #21
d00597be:	d531      	bpl.n	d0059824 <__ssputs_r+0xa0>
d00597c0:	4629      	mov	r1, r5
d00597c2:	f7ff fddb 	bl	d005937c <_malloc_r>
d00597c6:	4606      	mov	r6, r0
d00597c8:	b950      	cbnz	r0, d00597e0 <__ssputs_r+0x5c>
d00597ca:	230c      	movs	r3, #12
d00597cc:	f8ca 3000 	str.w	r3, [sl]
d00597d0:	89a3      	ldrh	r3, [r4, #12]
d00597d2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00597d6:	81a3      	strh	r3, [r4, #12]
d00597d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00597dc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00597e0:	6921      	ldr	r1, [r4, #16]
d00597e2:	464a      	mov	r2, r9
d00597e4:	f7ff fd64 	bl	d00592b0 <memcpy>
d00597e8:	89a3      	ldrh	r3, [r4, #12]
d00597ea:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d00597ee:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00597f2:	81a3      	strh	r3, [r4, #12]
d00597f4:	6126      	str	r6, [r4, #16]
d00597f6:	6165      	str	r5, [r4, #20]
d00597f8:	444e      	add	r6, r9
d00597fa:	eba5 0509 	sub.w	r5, r5, r9
d00597fe:	6026      	str	r6, [r4, #0]
d0059800:	60a5      	str	r5, [r4, #8]
d0059802:	463e      	mov	r6, r7
d0059804:	42be      	cmp	r6, r7
d0059806:	d900      	bls.n	d005980a <__ssputs_r+0x86>
d0059808:	463e      	mov	r6, r7
d005980a:	4632      	mov	r2, r6
d005980c:	6820      	ldr	r0, [r4, #0]
d005980e:	4641      	mov	r1, r8
d0059810:	f000 fb1e 	bl	d0059e50 <memmove>
d0059814:	68a3      	ldr	r3, [r4, #8]
d0059816:	6822      	ldr	r2, [r4, #0]
d0059818:	1b9b      	subs	r3, r3, r6
d005981a:	4432      	add	r2, r6
d005981c:	60a3      	str	r3, [r4, #8]
d005981e:	6022      	str	r2, [r4, #0]
d0059820:	2000      	movs	r0, #0
d0059822:	e7db      	b.n	d00597dc <__ssputs_r+0x58>
d0059824:	462a      	mov	r2, r5
d0059826:	f7ff ff87 	bl	d0059738 <_realloc_r>
d005982a:	4606      	mov	r6, r0
d005982c:	2800      	cmp	r0, #0
d005982e:	d1e1      	bne.n	d00597f4 <__ssputs_r+0x70>
d0059830:	6921      	ldr	r1, [r4, #16]
d0059832:	4650      	mov	r0, sl
d0059834:	f7ff fd52 	bl	d00592dc <_free_r>
d0059838:	e7c7      	b.n	d00597ca <__ssputs_r+0x46>
	...

d005983c <_svfiprintf_r>:
d005983c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0059840:	4698      	mov	r8, r3
d0059842:	898b      	ldrh	r3, [r1, #12]
d0059844:	061b      	lsls	r3, r3, #24
d0059846:	b09d      	sub	sp, #116	; 0x74
d0059848:	4607      	mov	r7, r0
d005984a:	460d      	mov	r5, r1
d005984c:	4614      	mov	r4, r2
d005984e:	d50e      	bpl.n	d005986e <_svfiprintf_r+0x32>
d0059850:	690b      	ldr	r3, [r1, #16]
d0059852:	b963      	cbnz	r3, d005986e <_svfiprintf_r+0x32>
d0059854:	2140      	movs	r1, #64	; 0x40
d0059856:	f7ff fd91 	bl	d005937c <_malloc_r>
d005985a:	6028      	str	r0, [r5, #0]
d005985c:	6128      	str	r0, [r5, #16]
d005985e:	b920      	cbnz	r0, d005986a <_svfiprintf_r+0x2e>
d0059860:	230c      	movs	r3, #12
d0059862:	603b      	str	r3, [r7, #0]
d0059864:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059868:	e0d1      	b.n	d0059a0e <_svfiprintf_r+0x1d2>
d005986a:	2340      	movs	r3, #64	; 0x40
d005986c:	616b      	str	r3, [r5, #20]
d005986e:	2300      	movs	r3, #0
d0059870:	9309      	str	r3, [sp, #36]	; 0x24
d0059872:	2320      	movs	r3, #32
d0059874:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0059878:	f8cd 800c 	str.w	r8, [sp, #12]
d005987c:	2330      	movs	r3, #48	; 0x30
d005987e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0059a28 <_svfiprintf_r+0x1ec>
d0059882:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0059886:	f04f 0901 	mov.w	r9, #1
d005988a:	4623      	mov	r3, r4
d005988c:	469a      	mov	sl, r3
d005988e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0059892:	b10a      	cbz	r2, d0059898 <_svfiprintf_r+0x5c>
d0059894:	2a25      	cmp	r2, #37	; 0x25
d0059896:	d1f9      	bne.n	d005988c <_svfiprintf_r+0x50>
d0059898:	ebba 0b04 	subs.w	fp, sl, r4
d005989c:	d00b      	beq.n	d00598b6 <_svfiprintf_r+0x7a>
d005989e:	465b      	mov	r3, fp
d00598a0:	4622      	mov	r2, r4
d00598a2:	4629      	mov	r1, r5
d00598a4:	4638      	mov	r0, r7
d00598a6:	f7ff ff6d 	bl	d0059784 <__ssputs_r>
d00598aa:	3001      	adds	r0, #1
d00598ac:	f000 80aa 	beq.w	d0059a04 <_svfiprintf_r+0x1c8>
d00598b0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00598b2:	445a      	add	r2, fp
d00598b4:	9209      	str	r2, [sp, #36]	; 0x24
d00598b6:	f89a 3000 	ldrb.w	r3, [sl]
d00598ba:	2b00      	cmp	r3, #0
d00598bc:	f000 80a2 	beq.w	d0059a04 <_svfiprintf_r+0x1c8>
d00598c0:	2300      	movs	r3, #0
d00598c2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00598c6:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00598ca:	f10a 0a01 	add.w	sl, sl, #1
d00598ce:	9304      	str	r3, [sp, #16]
d00598d0:	9307      	str	r3, [sp, #28]
d00598d2:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00598d6:	931a      	str	r3, [sp, #104]	; 0x68
d00598d8:	4654      	mov	r4, sl
d00598da:	2205      	movs	r2, #5
d00598dc:	f814 1b01 	ldrb.w	r1, [r4], #1
d00598e0:	4851      	ldr	r0, [pc, #324]	; (d0059a28 <_svfiprintf_r+0x1ec>)
d00598e2:	f000 fa65 	bl	d0059db0 <memchr>
d00598e6:	9a04      	ldr	r2, [sp, #16]
d00598e8:	b9d8      	cbnz	r0, d0059922 <_svfiprintf_r+0xe6>
d00598ea:	06d0      	lsls	r0, r2, #27
d00598ec:	bf44      	itt	mi
d00598ee:	2320      	movmi	r3, #32
d00598f0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00598f4:	0711      	lsls	r1, r2, #28
d00598f6:	bf44      	itt	mi
d00598f8:	232b      	movmi	r3, #43	; 0x2b
d00598fa:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00598fe:	f89a 3000 	ldrb.w	r3, [sl]
d0059902:	2b2a      	cmp	r3, #42	; 0x2a
d0059904:	d015      	beq.n	d0059932 <_svfiprintf_r+0xf6>
d0059906:	9a07      	ldr	r2, [sp, #28]
d0059908:	4654      	mov	r4, sl
d005990a:	2000      	movs	r0, #0
d005990c:	f04f 0c0a 	mov.w	ip, #10
d0059910:	4621      	mov	r1, r4
d0059912:	f811 3b01 	ldrb.w	r3, [r1], #1
d0059916:	3b30      	subs	r3, #48	; 0x30
d0059918:	2b09      	cmp	r3, #9
d005991a:	d94e      	bls.n	d00599ba <_svfiprintf_r+0x17e>
d005991c:	b1b0      	cbz	r0, d005994c <_svfiprintf_r+0x110>
d005991e:	9207      	str	r2, [sp, #28]
d0059920:	e014      	b.n	d005994c <_svfiprintf_r+0x110>
d0059922:	eba0 0308 	sub.w	r3, r0, r8
d0059926:	fa09 f303 	lsl.w	r3, r9, r3
d005992a:	4313      	orrs	r3, r2
d005992c:	9304      	str	r3, [sp, #16]
d005992e:	46a2      	mov	sl, r4
d0059930:	e7d2      	b.n	d00598d8 <_svfiprintf_r+0x9c>
d0059932:	9b03      	ldr	r3, [sp, #12]
d0059934:	1d19      	adds	r1, r3, #4
d0059936:	681b      	ldr	r3, [r3, #0]
d0059938:	9103      	str	r1, [sp, #12]
d005993a:	2b00      	cmp	r3, #0
d005993c:	bfbb      	ittet	lt
d005993e:	425b      	neglt	r3, r3
d0059940:	f042 0202 	orrlt.w	r2, r2, #2
d0059944:	9307      	strge	r3, [sp, #28]
d0059946:	9307      	strlt	r3, [sp, #28]
d0059948:	bfb8      	it	lt
d005994a:	9204      	strlt	r2, [sp, #16]
d005994c:	7823      	ldrb	r3, [r4, #0]
d005994e:	2b2e      	cmp	r3, #46	; 0x2e
d0059950:	d10c      	bne.n	d005996c <_svfiprintf_r+0x130>
d0059952:	7863      	ldrb	r3, [r4, #1]
d0059954:	2b2a      	cmp	r3, #42	; 0x2a
d0059956:	d135      	bne.n	d00599c4 <_svfiprintf_r+0x188>
d0059958:	9b03      	ldr	r3, [sp, #12]
d005995a:	1d1a      	adds	r2, r3, #4
d005995c:	681b      	ldr	r3, [r3, #0]
d005995e:	9203      	str	r2, [sp, #12]
d0059960:	2b00      	cmp	r3, #0
d0059962:	bfb8      	it	lt
d0059964:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0059968:	3402      	adds	r4, #2
d005996a:	9305      	str	r3, [sp, #20]
d005996c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0059a38 <_svfiprintf_r+0x1fc>
d0059970:	7821      	ldrb	r1, [r4, #0]
d0059972:	2203      	movs	r2, #3
d0059974:	4650      	mov	r0, sl
d0059976:	f000 fa1b 	bl	d0059db0 <memchr>
d005997a:	b140      	cbz	r0, d005998e <_svfiprintf_r+0x152>
d005997c:	2340      	movs	r3, #64	; 0x40
d005997e:	eba0 000a 	sub.w	r0, r0, sl
d0059982:	fa03 f000 	lsl.w	r0, r3, r0
d0059986:	9b04      	ldr	r3, [sp, #16]
d0059988:	4303      	orrs	r3, r0
d005998a:	3401      	adds	r4, #1
d005998c:	9304      	str	r3, [sp, #16]
d005998e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0059992:	4826      	ldr	r0, [pc, #152]	; (d0059a2c <_svfiprintf_r+0x1f0>)
d0059994:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0059998:	2206      	movs	r2, #6
d005999a:	f000 fa09 	bl	d0059db0 <memchr>
d005999e:	2800      	cmp	r0, #0
d00599a0:	d038      	beq.n	d0059a14 <_svfiprintf_r+0x1d8>
d00599a2:	4b23      	ldr	r3, [pc, #140]	; (d0059a30 <_svfiprintf_r+0x1f4>)
d00599a4:	bb1b      	cbnz	r3, d00599ee <_svfiprintf_r+0x1b2>
d00599a6:	9b03      	ldr	r3, [sp, #12]
d00599a8:	3307      	adds	r3, #7
d00599aa:	f023 0307 	bic.w	r3, r3, #7
d00599ae:	3308      	adds	r3, #8
d00599b0:	9303      	str	r3, [sp, #12]
d00599b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00599b4:	4433      	add	r3, r6
d00599b6:	9309      	str	r3, [sp, #36]	; 0x24
d00599b8:	e767      	b.n	d005988a <_svfiprintf_r+0x4e>
d00599ba:	fb0c 3202 	mla	r2, ip, r2, r3
d00599be:	460c      	mov	r4, r1
d00599c0:	2001      	movs	r0, #1
d00599c2:	e7a5      	b.n	d0059910 <_svfiprintf_r+0xd4>
d00599c4:	2300      	movs	r3, #0
d00599c6:	3401      	adds	r4, #1
d00599c8:	9305      	str	r3, [sp, #20]
d00599ca:	4619      	mov	r1, r3
d00599cc:	f04f 0c0a 	mov.w	ip, #10
d00599d0:	4620      	mov	r0, r4
d00599d2:	f810 2b01 	ldrb.w	r2, [r0], #1
d00599d6:	3a30      	subs	r2, #48	; 0x30
d00599d8:	2a09      	cmp	r2, #9
d00599da:	d903      	bls.n	d00599e4 <_svfiprintf_r+0x1a8>
d00599dc:	2b00      	cmp	r3, #0
d00599de:	d0c5      	beq.n	d005996c <_svfiprintf_r+0x130>
d00599e0:	9105      	str	r1, [sp, #20]
d00599e2:	e7c3      	b.n	d005996c <_svfiprintf_r+0x130>
d00599e4:	fb0c 2101 	mla	r1, ip, r1, r2
d00599e8:	4604      	mov	r4, r0
d00599ea:	2301      	movs	r3, #1
d00599ec:	e7f0      	b.n	d00599d0 <_svfiprintf_r+0x194>
d00599ee:	ab03      	add	r3, sp, #12
d00599f0:	9300      	str	r3, [sp, #0]
d00599f2:	462a      	mov	r2, r5
d00599f4:	4b0f      	ldr	r3, [pc, #60]	; (d0059a34 <_svfiprintf_r+0x1f8>)
d00599f6:	a904      	add	r1, sp, #16
d00599f8:	4638      	mov	r0, r7
d00599fa:	f3af 8000 	nop.w
d00599fe:	1c42      	adds	r2, r0, #1
d0059a00:	4606      	mov	r6, r0
d0059a02:	d1d6      	bne.n	d00599b2 <_svfiprintf_r+0x176>
d0059a04:	89ab      	ldrh	r3, [r5, #12]
d0059a06:	065b      	lsls	r3, r3, #25
d0059a08:	f53f af2c 	bmi.w	d0059864 <_svfiprintf_r+0x28>
d0059a0c:	9809      	ldr	r0, [sp, #36]	; 0x24
d0059a0e:	b01d      	add	sp, #116	; 0x74
d0059a10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0059a14:	ab03      	add	r3, sp, #12
d0059a16:	9300      	str	r3, [sp, #0]
d0059a18:	462a      	mov	r2, r5
d0059a1a:	4b06      	ldr	r3, [pc, #24]	; (d0059a34 <_svfiprintf_r+0x1f8>)
d0059a1c:	a904      	add	r1, sp, #16
d0059a1e:	4638      	mov	r0, r7
d0059a20:	f000 f87a 	bl	d0059b18 <_printf_i>
d0059a24:	e7eb      	b.n	d00599fe <_svfiprintf_r+0x1c2>
d0059a26:	bf00      	nop
d0059a28:	d005ae04 	.word	0xd005ae04
d0059a2c:	d005ae0e 	.word	0xd005ae0e
d0059a30:	00000000 	.word	0x00000000
d0059a34:	d0059785 	.word	0xd0059785
d0059a38:	d005ae0a 	.word	0xd005ae0a

d0059a3c <_printf_common>:
d0059a3c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0059a40:	4616      	mov	r6, r2
d0059a42:	4699      	mov	r9, r3
d0059a44:	688a      	ldr	r2, [r1, #8]
d0059a46:	690b      	ldr	r3, [r1, #16]
d0059a48:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0059a4c:	4293      	cmp	r3, r2
d0059a4e:	bfb8      	it	lt
d0059a50:	4613      	movlt	r3, r2
d0059a52:	6033      	str	r3, [r6, #0]
d0059a54:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0059a58:	4607      	mov	r7, r0
d0059a5a:	460c      	mov	r4, r1
d0059a5c:	b10a      	cbz	r2, d0059a62 <_printf_common+0x26>
d0059a5e:	3301      	adds	r3, #1
d0059a60:	6033      	str	r3, [r6, #0]
d0059a62:	6823      	ldr	r3, [r4, #0]
d0059a64:	0699      	lsls	r1, r3, #26
d0059a66:	bf42      	ittt	mi
d0059a68:	6833      	ldrmi	r3, [r6, #0]
d0059a6a:	3302      	addmi	r3, #2
d0059a6c:	6033      	strmi	r3, [r6, #0]
d0059a6e:	6825      	ldr	r5, [r4, #0]
d0059a70:	f015 0506 	ands.w	r5, r5, #6
d0059a74:	d106      	bne.n	d0059a84 <_printf_common+0x48>
d0059a76:	f104 0a19 	add.w	sl, r4, #25
d0059a7a:	68e3      	ldr	r3, [r4, #12]
d0059a7c:	6832      	ldr	r2, [r6, #0]
d0059a7e:	1a9b      	subs	r3, r3, r2
d0059a80:	42ab      	cmp	r3, r5
d0059a82:	dc26      	bgt.n	d0059ad2 <_printf_common+0x96>
d0059a84:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0059a88:	1e13      	subs	r3, r2, #0
d0059a8a:	6822      	ldr	r2, [r4, #0]
d0059a8c:	bf18      	it	ne
d0059a8e:	2301      	movne	r3, #1
d0059a90:	0692      	lsls	r2, r2, #26
d0059a92:	d42b      	bmi.n	d0059aec <_printf_common+0xb0>
d0059a94:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0059a98:	4649      	mov	r1, r9
d0059a9a:	4638      	mov	r0, r7
d0059a9c:	47c0      	blx	r8
d0059a9e:	3001      	adds	r0, #1
d0059aa0:	d01e      	beq.n	d0059ae0 <_printf_common+0xa4>
d0059aa2:	6823      	ldr	r3, [r4, #0]
d0059aa4:	68e5      	ldr	r5, [r4, #12]
d0059aa6:	6832      	ldr	r2, [r6, #0]
d0059aa8:	f003 0306 	and.w	r3, r3, #6
d0059aac:	2b04      	cmp	r3, #4
d0059aae:	bf08      	it	eq
d0059ab0:	1aad      	subeq	r5, r5, r2
d0059ab2:	68a3      	ldr	r3, [r4, #8]
d0059ab4:	6922      	ldr	r2, [r4, #16]
d0059ab6:	bf0c      	ite	eq
d0059ab8:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0059abc:	2500      	movne	r5, #0
d0059abe:	4293      	cmp	r3, r2
d0059ac0:	bfc4      	itt	gt
d0059ac2:	1a9b      	subgt	r3, r3, r2
d0059ac4:	18ed      	addgt	r5, r5, r3
d0059ac6:	2600      	movs	r6, #0
d0059ac8:	341a      	adds	r4, #26
d0059aca:	42b5      	cmp	r5, r6
d0059acc:	d11a      	bne.n	d0059b04 <_printf_common+0xc8>
d0059ace:	2000      	movs	r0, #0
d0059ad0:	e008      	b.n	d0059ae4 <_printf_common+0xa8>
d0059ad2:	2301      	movs	r3, #1
d0059ad4:	4652      	mov	r2, sl
d0059ad6:	4649      	mov	r1, r9
d0059ad8:	4638      	mov	r0, r7
d0059ada:	47c0      	blx	r8
d0059adc:	3001      	adds	r0, #1
d0059ade:	d103      	bne.n	d0059ae8 <_printf_common+0xac>
d0059ae0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059ae4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059ae8:	3501      	adds	r5, #1
d0059aea:	e7c6      	b.n	d0059a7a <_printf_common+0x3e>
d0059aec:	18e1      	adds	r1, r4, r3
d0059aee:	1c5a      	adds	r2, r3, #1
d0059af0:	2030      	movs	r0, #48	; 0x30
d0059af2:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0059af6:	4422      	add	r2, r4
d0059af8:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0059afc:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0059b00:	3302      	adds	r3, #2
d0059b02:	e7c7      	b.n	d0059a94 <_printf_common+0x58>
d0059b04:	2301      	movs	r3, #1
d0059b06:	4622      	mov	r2, r4
d0059b08:	4649      	mov	r1, r9
d0059b0a:	4638      	mov	r0, r7
d0059b0c:	47c0      	blx	r8
d0059b0e:	3001      	adds	r0, #1
d0059b10:	d0e6      	beq.n	d0059ae0 <_printf_common+0xa4>
d0059b12:	3601      	adds	r6, #1
d0059b14:	e7d9      	b.n	d0059aca <_printf_common+0x8e>
	...

d0059b18 <_printf_i>:
d0059b18:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0059b1c:	460c      	mov	r4, r1
d0059b1e:	4691      	mov	r9, r2
d0059b20:	7e27      	ldrb	r7, [r4, #24]
d0059b22:	990c      	ldr	r1, [sp, #48]	; 0x30
d0059b24:	2f78      	cmp	r7, #120	; 0x78
d0059b26:	4680      	mov	r8, r0
d0059b28:	469a      	mov	sl, r3
d0059b2a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0059b2e:	d807      	bhi.n	d0059b40 <_printf_i+0x28>
d0059b30:	2f62      	cmp	r7, #98	; 0x62
d0059b32:	d80a      	bhi.n	d0059b4a <_printf_i+0x32>
d0059b34:	2f00      	cmp	r7, #0
d0059b36:	f000 80d8 	beq.w	d0059cea <_printf_i+0x1d2>
d0059b3a:	2f58      	cmp	r7, #88	; 0x58
d0059b3c:	f000 80a3 	beq.w	d0059c86 <_printf_i+0x16e>
d0059b40:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0059b44:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0059b48:	e03a      	b.n	d0059bc0 <_printf_i+0xa8>
d0059b4a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0059b4e:	2b15      	cmp	r3, #21
d0059b50:	d8f6      	bhi.n	d0059b40 <_printf_i+0x28>
d0059b52:	a001      	add	r0, pc, #4	; (adr r0, d0059b58 <_printf_i+0x40>)
d0059b54:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0059b58:	d0059bb1 	.word	0xd0059bb1
d0059b5c:	d0059bc5 	.word	0xd0059bc5
d0059b60:	d0059b41 	.word	0xd0059b41
d0059b64:	d0059b41 	.word	0xd0059b41
d0059b68:	d0059b41 	.word	0xd0059b41
d0059b6c:	d0059b41 	.word	0xd0059b41
d0059b70:	d0059bc5 	.word	0xd0059bc5
d0059b74:	d0059b41 	.word	0xd0059b41
d0059b78:	d0059b41 	.word	0xd0059b41
d0059b7c:	d0059b41 	.word	0xd0059b41
d0059b80:	d0059b41 	.word	0xd0059b41
d0059b84:	d0059cd1 	.word	0xd0059cd1
d0059b88:	d0059bf5 	.word	0xd0059bf5
d0059b8c:	d0059cb3 	.word	0xd0059cb3
d0059b90:	d0059b41 	.word	0xd0059b41
d0059b94:	d0059b41 	.word	0xd0059b41
d0059b98:	d0059cf3 	.word	0xd0059cf3
d0059b9c:	d0059b41 	.word	0xd0059b41
d0059ba0:	d0059bf5 	.word	0xd0059bf5
d0059ba4:	d0059b41 	.word	0xd0059b41
d0059ba8:	d0059b41 	.word	0xd0059b41
d0059bac:	d0059cbb 	.word	0xd0059cbb
d0059bb0:	680b      	ldr	r3, [r1, #0]
d0059bb2:	1d1a      	adds	r2, r3, #4
d0059bb4:	681b      	ldr	r3, [r3, #0]
d0059bb6:	600a      	str	r2, [r1, #0]
d0059bb8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0059bbc:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0059bc0:	2301      	movs	r3, #1
d0059bc2:	e0a3      	b.n	d0059d0c <_printf_i+0x1f4>
d0059bc4:	6825      	ldr	r5, [r4, #0]
d0059bc6:	6808      	ldr	r0, [r1, #0]
d0059bc8:	062e      	lsls	r6, r5, #24
d0059bca:	f100 0304 	add.w	r3, r0, #4
d0059bce:	d50a      	bpl.n	d0059be6 <_printf_i+0xce>
d0059bd0:	6805      	ldr	r5, [r0, #0]
d0059bd2:	600b      	str	r3, [r1, #0]
d0059bd4:	2d00      	cmp	r5, #0
d0059bd6:	da03      	bge.n	d0059be0 <_printf_i+0xc8>
d0059bd8:	232d      	movs	r3, #45	; 0x2d
d0059bda:	426d      	negs	r5, r5
d0059bdc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0059be0:	485e      	ldr	r0, [pc, #376]	; (d0059d5c <_printf_i+0x244>)
d0059be2:	230a      	movs	r3, #10
d0059be4:	e019      	b.n	d0059c1a <_printf_i+0x102>
d0059be6:	f015 0f40 	tst.w	r5, #64	; 0x40
d0059bea:	6805      	ldr	r5, [r0, #0]
d0059bec:	600b      	str	r3, [r1, #0]
d0059bee:	bf18      	it	ne
d0059bf0:	b22d      	sxthne	r5, r5
d0059bf2:	e7ef      	b.n	d0059bd4 <_printf_i+0xbc>
d0059bf4:	680b      	ldr	r3, [r1, #0]
d0059bf6:	6825      	ldr	r5, [r4, #0]
d0059bf8:	1d18      	adds	r0, r3, #4
d0059bfa:	6008      	str	r0, [r1, #0]
d0059bfc:	0628      	lsls	r0, r5, #24
d0059bfe:	d501      	bpl.n	d0059c04 <_printf_i+0xec>
d0059c00:	681d      	ldr	r5, [r3, #0]
d0059c02:	e002      	b.n	d0059c0a <_printf_i+0xf2>
d0059c04:	0669      	lsls	r1, r5, #25
d0059c06:	d5fb      	bpl.n	d0059c00 <_printf_i+0xe8>
d0059c08:	881d      	ldrh	r5, [r3, #0]
d0059c0a:	4854      	ldr	r0, [pc, #336]	; (d0059d5c <_printf_i+0x244>)
d0059c0c:	2f6f      	cmp	r7, #111	; 0x6f
d0059c0e:	bf0c      	ite	eq
d0059c10:	2308      	moveq	r3, #8
d0059c12:	230a      	movne	r3, #10
d0059c14:	2100      	movs	r1, #0
d0059c16:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0059c1a:	6866      	ldr	r6, [r4, #4]
d0059c1c:	60a6      	str	r6, [r4, #8]
d0059c1e:	2e00      	cmp	r6, #0
d0059c20:	bfa2      	ittt	ge
d0059c22:	6821      	ldrge	r1, [r4, #0]
d0059c24:	f021 0104 	bicge.w	r1, r1, #4
d0059c28:	6021      	strge	r1, [r4, #0]
d0059c2a:	b90d      	cbnz	r5, d0059c30 <_printf_i+0x118>
d0059c2c:	2e00      	cmp	r6, #0
d0059c2e:	d04d      	beq.n	d0059ccc <_printf_i+0x1b4>
d0059c30:	4616      	mov	r6, r2
d0059c32:	fbb5 f1f3 	udiv	r1, r5, r3
d0059c36:	fb03 5711 	mls	r7, r3, r1, r5
d0059c3a:	5dc7      	ldrb	r7, [r0, r7]
d0059c3c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0059c40:	462f      	mov	r7, r5
d0059c42:	42bb      	cmp	r3, r7
d0059c44:	460d      	mov	r5, r1
d0059c46:	d9f4      	bls.n	d0059c32 <_printf_i+0x11a>
d0059c48:	2b08      	cmp	r3, #8
d0059c4a:	d10b      	bne.n	d0059c64 <_printf_i+0x14c>
d0059c4c:	6823      	ldr	r3, [r4, #0]
d0059c4e:	07df      	lsls	r7, r3, #31
d0059c50:	d508      	bpl.n	d0059c64 <_printf_i+0x14c>
d0059c52:	6923      	ldr	r3, [r4, #16]
d0059c54:	6861      	ldr	r1, [r4, #4]
d0059c56:	4299      	cmp	r1, r3
d0059c58:	bfde      	ittt	le
d0059c5a:	2330      	movle	r3, #48	; 0x30
d0059c5c:	f806 3c01 	strble.w	r3, [r6, #-1]
d0059c60:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0059c64:	1b92      	subs	r2, r2, r6
d0059c66:	6122      	str	r2, [r4, #16]
d0059c68:	f8cd a000 	str.w	sl, [sp]
d0059c6c:	464b      	mov	r3, r9
d0059c6e:	aa03      	add	r2, sp, #12
d0059c70:	4621      	mov	r1, r4
d0059c72:	4640      	mov	r0, r8
d0059c74:	f7ff fee2 	bl	d0059a3c <_printf_common>
d0059c78:	3001      	adds	r0, #1
d0059c7a:	d14c      	bne.n	d0059d16 <_printf_i+0x1fe>
d0059c7c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059c80:	b004      	add	sp, #16
d0059c82:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059c86:	4835      	ldr	r0, [pc, #212]	; (d0059d5c <_printf_i+0x244>)
d0059c88:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0059c8c:	6823      	ldr	r3, [r4, #0]
d0059c8e:	680e      	ldr	r6, [r1, #0]
d0059c90:	061f      	lsls	r7, r3, #24
d0059c92:	f856 5b04 	ldr.w	r5, [r6], #4
d0059c96:	600e      	str	r6, [r1, #0]
d0059c98:	d514      	bpl.n	d0059cc4 <_printf_i+0x1ac>
d0059c9a:	07d9      	lsls	r1, r3, #31
d0059c9c:	bf44      	itt	mi
d0059c9e:	f043 0320 	orrmi.w	r3, r3, #32
d0059ca2:	6023      	strmi	r3, [r4, #0]
d0059ca4:	b91d      	cbnz	r5, d0059cae <_printf_i+0x196>
d0059ca6:	6823      	ldr	r3, [r4, #0]
d0059ca8:	f023 0320 	bic.w	r3, r3, #32
d0059cac:	6023      	str	r3, [r4, #0]
d0059cae:	2310      	movs	r3, #16
d0059cb0:	e7b0      	b.n	d0059c14 <_printf_i+0xfc>
d0059cb2:	6823      	ldr	r3, [r4, #0]
d0059cb4:	f043 0320 	orr.w	r3, r3, #32
d0059cb8:	6023      	str	r3, [r4, #0]
d0059cba:	2378      	movs	r3, #120	; 0x78
d0059cbc:	4828      	ldr	r0, [pc, #160]	; (d0059d60 <_printf_i+0x248>)
d0059cbe:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0059cc2:	e7e3      	b.n	d0059c8c <_printf_i+0x174>
d0059cc4:	065e      	lsls	r6, r3, #25
d0059cc6:	bf48      	it	mi
d0059cc8:	b2ad      	uxthmi	r5, r5
d0059cca:	e7e6      	b.n	d0059c9a <_printf_i+0x182>
d0059ccc:	4616      	mov	r6, r2
d0059cce:	e7bb      	b.n	d0059c48 <_printf_i+0x130>
d0059cd0:	680b      	ldr	r3, [r1, #0]
d0059cd2:	6826      	ldr	r6, [r4, #0]
d0059cd4:	6960      	ldr	r0, [r4, #20]
d0059cd6:	1d1d      	adds	r5, r3, #4
d0059cd8:	600d      	str	r5, [r1, #0]
d0059cda:	0635      	lsls	r5, r6, #24
d0059cdc:	681b      	ldr	r3, [r3, #0]
d0059cde:	d501      	bpl.n	d0059ce4 <_printf_i+0x1cc>
d0059ce0:	6018      	str	r0, [r3, #0]
d0059ce2:	e002      	b.n	d0059cea <_printf_i+0x1d2>
d0059ce4:	0671      	lsls	r1, r6, #25
d0059ce6:	d5fb      	bpl.n	d0059ce0 <_printf_i+0x1c8>
d0059ce8:	8018      	strh	r0, [r3, #0]
d0059cea:	2300      	movs	r3, #0
d0059cec:	6123      	str	r3, [r4, #16]
d0059cee:	4616      	mov	r6, r2
d0059cf0:	e7ba      	b.n	d0059c68 <_printf_i+0x150>
d0059cf2:	680b      	ldr	r3, [r1, #0]
d0059cf4:	1d1a      	adds	r2, r3, #4
d0059cf6:	600a      	str	r2, [r1, #0]
d0059cf8:	681e      	ldr	r6, [r3, #0]
d0059cfa:	6862      	ldr	r2, [r4, #4]
d0059cfc:	2100      	movs	r1, #0
d0059cfe:	4630      	mov	r0, r6
d0059d00:	f000 f856 	bl	d0059db0 <memchr>
d0059d04:	b108      	cbz	r0, d0059d0a <_printf_i+0x1f2>
d0059d06:	1b80      	subs	r0, r0, r6
d0059d08:	6060      	str	r0, [r4, #4]
d0059d0a:	6863      	ldr	r3, [r4, #4]
d0059d0c:	6123      	str	r3, [r4, #16]
d0059d0e:	2300      	movs	r3, #0
d0059d10:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0059d14:	e7a8      	b.n	d0059c68 <_printf_i+0x150>
d0059d16:	6923      	ldr	r3, [r4, #16]
d0059d18:	4632      	mov	r2, r6
d0059d1a:	4649      	mov	r1, r9
d0059d1c:	4640      	mov	r0, r8
d0059d1e:	47d0      	blx	sl
d0059d20:	3001      	adds	r0, #1
d0059d22:	d0ab      	beq.n	d0059c7c <_printf_i+0x164>
d0059d24:	6823      	ldr	r3, [r4, #0]
d0059d26:	079b      	lsls	r3, r3, #30
d0059d28:	d413      	bmi.n	d0059d52 <_printf_i+0x23a>
d0059d2a:	68e0      	ldr	r0, [r4, #12]
d0059d2c:	9b03      	ldr	r3, [sp, #12]
d0059d2e:	4298      	cmp	r0, r3
d0059d30:	bfb8      	it	lt
d0059d32:	4618      	movlt	r0, r3
d0059d34:	e7a4      	b.n	d0059c80 <_printf_i+0x168>
d0059d36:	2301      	movs	r3, #1
d0059d38:	4632      	mov	r2, r6
d0059d3a:	4649      	mov	r1, r9
d0059d3c:	4640      	mov	r0, r8
d0059d3e:	47d0      	blx	sl
d0059d40:	3001      	adds	r0, #1
d0059d42:	d09b      	beq.n	d0059c7c <_printf_i+0x164>
d0059d44:	3501      	adds	r5, #1
d0059d46:	68e3      	ldr	r3, [r4, #12]
d0059d48:	9903      	ldr	r1, [sp, #12]
d0059d4a:	1a5b      	subs	r3, r3, r1
d0059d4c:	42ab      	cmp	r3, r5
d0059d4e:	dcf2      	bgt.n	d0059d36 <_printf_i+0x21e>
d0059d50:	e7eb      	b.n	d0059d2a <_printf_i+0x212>
d0059d52:	2500      	movs	r5, #0
d0059d54:	f104 0619 	add.w	r6, r4, #25
d0059d58:	e7f5      	b.n	d0059d46 <_printf_i+0x22e>
d0059d5a:	bf00      	nop
d0059d5c:	d005ae15 	.word	0xd005ae15
d0059d60:	d005ae26 	.word	0xd005ae26

d0059d64 <_read_r>:
d0059d64:	b538      	push	{r3, r4, r5, lr}
d0059d66:	4d07      	ldr	r5, [pc, #28]	; (d0059d84 <_read_r+0x20>)
d0059d68:	4604      	mov	r4, r0
d0059d6a:	4608      	mov	r0, r1
d0059d6c:	4611      	mov	r1, r2
d0059d6e:	2200      	movs	r2, #0
d0059d70:	602a      	str	r2, [r5, #0]
d0059d72:	461a      	mov	r2, r3
d0059d74:	f7f6 f99e 	bl	d00500b4 <_read>
d0059d78:	1c43      	adds	r3, r0, #1
d0059d7a:	d102      	bne.n	d0059d82 <_read_r+0x1e>
d0059d7c:	682b      	ldr	r3, [r5, #0]
d0059d7e:	b103      	cbz	r3, d0059d82 <_read_r+0x1e>
d0059d80:	6023      	str	r3, [r4, #0]
d0059d82:	bd38      	pop	{r3, r4, r5, pc}
d0059d84:	d012da6c 	.word	0xd012da6c

d0059d88 <_fstat_r>:
d0059d88:	b538      	push	{r3, r4, r5, lr}
d0059d8a:	4d07      	ldr	r5, [pc, #28]	; (d0059da8 <_fstat_r+0x20>)
d0059d8c:	2300      	movs	r3, #0
d0059d8e:	4604      	mov	r4, r0
d0059d90:	4608      	mov	r0, r1
d0059d92:	4611      	mov	r1, r2
d0059d94:	602b      	str	r3, [r5, #0]
d0059d96:	f7f6 f99b 	bl	d00500d0 <_fstat>
d0059d9a:	1c43      	adds	r3, r0, #1
d0059d9c:	d102      	bne.n	d0059da4 <_fstat_r+0x1c>
d0059d9e:	682b      	ldr	r3, [r5, #0]
d0059da0:	b103      	cbz	r3, d0059da4 <_fstat_r+0x1c>
d0059da2:	6023      	str	r3, [r4, #0]
d0059da4:	bd38      	pop	{r3, r4, r5, pc}
d0059da6:	bf00      	nop
d0059da8:	d012da6c 	.word	0xd012da6c
d0059dac:	00000000 	.word	0x00000000

d0059db0 <memchr>:
d0059db0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0059db4:	2a10      	cmp	r2, #16
d0059db6:	db2b      	blt.n	d0059e10 <memchr+0x60>
d0059db8:	f010 0f07 	tst.w	r0, #7
d0059dbc:	d008      	beq.n	d0059dd0 <memchr+0x20>
d0059dbe:	f810 3b01 	ldrb.w	r3, [r0], #1
d0059dc2:	3a01      	subs	r2, #1
d0059dc4:	428b      	cmp	r3, r1
d0059dc6:	d02d      	beq.n	d0059e24 <memchr+0x74>
d0059dc8:	f010 0f07 	tst.w	r0, #7
d0059dcc:	b342      	cbz	r2, d0059e20 <memchr+0x70>
d0059dce:	d1f6      	bne.n	d0059dbe <memchr+0xe>
d0059dd0:	b4f0      	push	{r4, r5, r6, r7}
d0059dd2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0059dd6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d0059dda:	f022 0407 	bic.w	r4, r2, #7
d0059dde:	f07f 0700 	mvns.w	r7, #0
d0059de2:	2300      	movs	r3, #0
d0059de4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0059de8:	3c08      	subs	r4, #8
d0059dea:	ea85 0501 	eor.w	r5, r5, r1
d0059dee:	ea86 0601 	eor.w	r6, r6, r1
d0059df2:	fa85 f547 	uadd8	r5, r5, r7
d0059df6:	faa3 f587 	sel	r5, r3, r7
d0059dfa:	fa86 f647 	uadd8	r6, r6, r7
d0059dfe:	faa5 f687 	sel	r6, r5, r7
d0059e02:	b98e      	cbnz	r6, d0059e28 <memchr+0x78>
d0059e04:	d1ee      	bne.n	d0059de4 <memchr+0x34>
d0059e06:	bcf0      	pop	{r4, r5, r6, r7}
d0059e08:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0059e0c:	f002 0207 	and.w	r2, r2, #7
d0059e10:	b132      	cbz	r2, d0059e20 <memchr+0x70>
d0059e12:	f810 3b01 	ldrb.w	r3, [r0], #1
d0059e16:	3a01      	subs	r2, #1
d0059e18:	ea83 0301 	eor.w	r3, r3, r1
d0059e1c:	b113      	cbz	r3, d0059e24 <memchr+0x74>
d0059e1e:	d1f8      	bne.n	d0059e12 <memchr+0x62>
d0059e20:	2000      	movs	r0, #0
d0059e22:	4770      	bx	lr
d0059e24:	3801      	subs	r0, #1
d0059e26:	4770      	bx	lr
d0059e28:	2d00      	cmp	r5, #0
d0059e2a:	bf06      	itte	eq
d0059e2c:	4635      	moveq	r5, r6
d0059e2e:	3803      	subeq	r0, #3
d0059e30:	3807      	subne	r0, #7
d0059e32:	f015 0f01 	tst.w	r5, #1
d0059e36:	d107      	bne.n	d0059e48 <memchr+0x98>
d0059e38:	3001      	adds	r0, #1
d0059e3a:	f415 7f80 	tst.w	r5, #256	; 0x100
d0059e3e:	bf02      	ittt	eq
d0059e40:	3001      	addeq	r0, #1
d0059e42:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0059e46:	3001      	addeq	r0, #1
d0059e48:	bcf0      	pop	{r4, r5, r6, r7}
d0059e4a:	3801      	subs	r0, #1
d0059e4c:	4770      	bx	lr
d0059e4e:	bf00      	nop

d0059e50 <memmove>:
d0059e50:	4288      	cmp	r0, r1
d0059e52:	b510      	push	{r4, lr}
d0059e54:	eb01 0402 	add.w	r4, r1, r2
d0059e58:	d902      	bls.n	d0059e60 <memmove+0x10>
d0059e5a:	4284      	cmp	r4, r0
d0059e5c:	4623      	mov	r3, r4
d0059e5e:	d807      	bhi.n	d0059e70 <memmove+0x20>
d0059e60:	1e43      	subs	r3, r0, #1
d0059e62:	42a1      	cmp	r1, r4
d0059e64:	d008      	beq.n	d0059e78 <memmove+0x28>
d0059e66:	f811 2b01 	ldrb.w	r2, [r1], #1
d0059e6a:	f803 2f01 	strb.w	r2, [r3, #1]!
d0059e6e:	e7f8      	b.n	d0059e62 <memmove+0x12>
d0059e70:	4402      	add	r2, r0
d0059e72:	4601      	mov	r1, r0
d0059e74:	428a      	cmp	r2, r1
d0059e76:	d100      	bne.n	d0059e7a <memmove+0x2a>
d0059e78:	bd10      	pop	{r4, pc}
d0059e7a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d0059e7e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0059e82:	e7f7      	b.n	d0059e74 <memmove+0x24>

d0059e84 <_malloc_usable_size_r>:
d0059e84:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0059e88:	1f18      	subs	r0, r3, #4
d0059e8a:	2b00      	cmp	r3, #0
d0059e8c:	bfbc      	itt	lt
d0059e8e:	580b      	ldrlt	r3, [r1, r0]
d0059e90:	18c0      	addlt	r0, r0, r3
d0059e92:	4770      	bx	lr

d0059e94 <sinf_poly>:
d0059e94:	07cb      	lsls	r3, r1, #31
d0059e96:	d412      	bmi.n	d0059ebe <sinf_poly+0x2a>
d0059e98:	ee21 6b00 	vmul.f64	d6, d1, d0
d0059e9c:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0059ea0:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0059ea4:	eea5 7b01 	vfma.f64	d7, d5, d1
d0059ea8:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0059eac:	ee21 1b06 	vmul.f64	d1, d1, d6
d0059eb0:	eea5 0b06 	vfma.f64	d0, d5, d6
d0059eb4:	eea7 0b01 	vfma.f64	d0, d7, d1
d0059eb8:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0059ebc:	4770      	bx	lr
d0059ebe:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0059ec2:	ee21 6b01 	vmul.f64	d6, d1, d1
d0059ec6:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0059eca:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0059ece:	eea1 7b05 	vfma.f64	d7, d1, d5
d0059ed2:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0059ed6:	eea1 0b05 	vfma.f64	d0, d1, d5
d0059eda:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0059ede:	ee21 1b06 	vmul.f64	d1, d1, d6
d0059ee2:	eea6 0b05 	vfma.f64	d0, d6, d5
d0059ee6:	e7e5      	b.n	d0059eb4 <sinf_poly+0x20>

d0059ee8 <cosf>:
d0059ee8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0059eea:	ee10 4a10 	vmov	r4, s0
d0059eee:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0059ef2:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0059ef6:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0059efa:	d20c      	bcs.n	d0059f16 <cosf+0x2e>
d0059efc:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059f00:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0059f04:	d378      	bcc.n	d0059ff8 <cosf+0x110>
d0059f06:	eeb0 0b46 	vmov.f64	d0, d6
d0059f0a:	483f      	ldr	r0, [pc, #252]	; (d005a008 <cosf+0x120>)
d0059f0c:	2101      	movs	r1, #1
d0059f0e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059f12:	f7ff bfbf 	b.w	d0059e94 <sinf_poly>
d0059f16:	f240 422e 	movw	r2, #1070	; 0x42e
d0059f1a:	4293      	cmp	r3, r2
d0059f1c:	d826      	bhi.n	d0059f6c <cosf+0x84>
d0059f1e:	4b3a      	ldr	r3, [pc, #232]	; (d005a008 <cosf+0x120>)
d0059f20:	ed93 7b08 	vldr	d7, [r3, #32]
d0059f24:	ee26 7b07 	vmul.f64	d7, d6, d7
d0059f28:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0059f2c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0059f30:	ee17 1a90 	vmov	r1, s15
d0059f34:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0059f38:	1609      	asrs	r1, r1, #24
d0059f3a:	ee07 1a90 	vmov	s15, r1
d0059f3e:	f001 0203 	and.w	r2, r1, #3
d0059f42:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059f46:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0059f4a:	ed92 0b00 	vldr	d0, [r2]
d0059f4e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0059f52:	f011 0f02 	tst.w	r1, #2
d0059f56:	eea5 6b47 	vfms.f64	d6, d5, d7
d0059f5a:	f081 0101 	eor.w	r1, r1, #1
d0059f5e:	bf08      	it	eq
d0059f60:	4618      	moveq	r0, r3
d0059f62:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059f66:	ee20 0b06 	vmul.f64	d0, d0, d6
d0059f6a:	e7d0      	b.n	d0059f0e <cosf+0x26>
d0059f6c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0059f70:	d23e      	bcs.n	d0059ff0 <cosf+0x108>
d0059f72:	4b26      	ldr	r3, [pc, #152]	; (d005a00c <cosf+0x124>)
d0059f74:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0059f78:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0059f7c:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0059f80:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0059f84:	6a06      	ldr	r6, [r0, #32]
d0059f86:	6900      	ldr	r0, [r0, #16]
d0059f88:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0059f8c:	40a9      	lsls	r1, r5
d0059f8e:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0059f92:	fba1 6706 	umull	r6, r7, r1, r6
d0059f96:	fb05 f301 	mul.w	r3, r5, r1
d0059f9a:	463a      	mov	r2, r7
d0059f9c:	fbe0 2301 	umlal	r2, r3, r0, r1
d0059fa0:	1c11      	adds	r1, r2, #0
d0059fa2:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0059fa6:	2000      	movs	r0, #0
d0059fa8:	1a10      	subs	r0, r2, r0
d0059faa:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0059fae:	eb63 0101 	sbc.w	r1, r3, r1
d0059fb2:	f000 fd27 	bl	d005aa04 <__aeabi_l2d>
d0059fb6:	0fb5      	lsrs	r5, r6, #30
d0059fb8:	4b13      	ldr	r3, [pc, #76]	; (d005a008 <cosf+0x120>)
d0059fba:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0059fbe:	ed9f 0b10 	vldr	d0, [pc, #64]	; d005a000 <cosf+0x118>
d0059fc2:	ec41 0b17 	vmov	d7, r0, r1
d0059fc6:	f004 0203 	and.w	r2, r4, #3
d0059fca:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059fce:	ee27 0b00 	vmul.f64	d0, d7, d0
d0059fd2:	ed92 7b00 	vldr	d7, [r2]
d0059fd6:	ee20 1b00 	vmul.f64	d1, d0, d0
d0059fda:	f014 0f02 	tst.w	r4, #2
d0059fde:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0059fe2:	f085 0101 	eor.w	r1, r5, #1
d0059fe6:	bf08      	it	eq
d0059fe8:	4618      	moveq	r0, r3
d0059fea:	ee27 0b00 	vmul.f64	d0, d7, d0
d0059fee:	e78e      	b.n	d0059f0e <cosf+0x26>
d0059ff0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059ff4:	f000 b844 	b.w	d005a080 <__math_invalidf>
d0059ff8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0059ffc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0059ffe:	bf00      	nop
d005a000:	54442d18 	.word	0x54442d18
d005a004:	3c1921fb 	.word	0x3c1921fb
d005a008:	d005b100 	.word	0xd005b100
d005a00c:	d005b0a0 	.word	0xd005b0a0

d005a010 <with_errnof>:
d005a010:	b513      	push	{r0, r1, r4, lr}
d005a012:	4604      	mov	r4, r0
d005a014:	ed8d 0a01 	vstr	s0, [sp, #4]
d005a018:	f7fe fef6 	bl	d0058e08 <__errno>
d005a01c:	ed9d 0a01 	vldr	s0, [sp, #4]
d005a020:	6004      	str	r4, [r0, #0]
d005a022:	b002      	add	sp, #8
d005a024:	bd10      	pop	{r4, pc}

d005a026 <xflowf>:
d005a026:	b130      	cbz	r0, d005a036 <xflowf+0x10>
d005a028:	eef1 7a40 	vneg.f32	s15, s0
d005a02c:	ee27 0a80 	vmul.f32	s0, s15, s0
d005a030:	2022      	movs	r0, #34	; 0x22
d005a032:	f7ff bfed 	b.w	d005a010 <with_errnof>
d005a036:	eef0 7a40 	vmov.f32	s15, s0
d005a03a:	e7f7      	b.n	d005a02c <xflowf+0x6>

d005a03c <__math_uflowf>:
d005a03c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005a044 <__math_uflowf+0x8>
d005a040:	f7ff bff1 	b.w	d005a026 <xflowf>
d005a044:	10000000 	.word	0x10000000

d005a048 <__math_may_uflowf>:
d005a048:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005a050 <__math_may_uflowf+0x8>
d005a04c:	f7ff bfeb 	b.w	d005a026 <xflowf>
d005a050:	1a200000 	.word	0x1a200000

d005a054 <__math_oflowf>:
d005a054:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005a05c <__math_oflowf+0x8>
d005a058:	f7ff bfe5 	b.w	d005a026 <xflowf>
d005a05c:	70000000 	.word	0x70000000

d005a060 <__math_divzerof>:
d005a060:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005a064:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d005a068:	2800      	cmp	r0, #0
d005a06a:	fe40 7a27 	vseleq.f32	s15, s0, s15
d005a06e:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005a07c <__math_divzerof+0x1c>
d005a072:	2022      	movs	r0, #34	; 0x22
d005a074:	ee87 0a80 	vdiv.f32	s0, s15, s0
d005a078:	f7ff bfca 	b.w	d005a010 <with_errnof>
d005a07c:	00000000 	.word	0x00000000

d005a080 <__math_invalidf>:
d005a080:	eef0 7a40 	vmov.f32	s15, s0
d005a084:	ee30 7a40 	vsub.f32	s14, s0, s0
d005a088:	eef4 7a67 	vcmp.f32	s15, s15
d005a08c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a090:	ee87 0a07 	vdiv.f32	s0, s14, s14
d005a094:	d602      	bvs.n	d005a09c <__math_invalidf+0x1c>
d005a096:	2021      	movs	r0, #33	; 0x21
d005a098:	f7ff bfba 	b.w	d005a010 <with_errnof>
d005a09c:	4770      	bx	lr
	...

d005a0a0 <expf>:
d005a0a0:	ee10 2a10 	vmov	r2, s0
d005a0a4:	b470      	push	{r4, r5, r6}
d005a0a6:	f3c2 530a 	ubfx	r3, r2, #20, #11
d005a0aa:	f240 442a 	movw	r4, #1066	; 0x42a
d005a0ae:	42a3      	cmp	r3, r4
d005a0b0:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005a0b4:	d92a      	bls.n	d005a10c <expf+0x6c>
d005a0b6:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d005a0ba:	d059      	beq.n	d005a170 <expf+0xd0>
d005a0bc:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005a0c0:	d303      	bcc.n	d005a0ca <expf+0x2a>
d005a0c2:	ee30 0a00 	vadd.f32	s0, s0, s0
d005a0c6:	bc70      	pop	{r4, r5, r6}
d005a0c8:	4770      	bx	lr
d005a0ca:	eddf 7a2b 	vldr	s15, [pc, #172]	; d005a178 <expf+0xd8>
d005a0ce:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005a0d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a0d6:	dd03      	ble.n	d005a0e0 <expf+0x40>
d005a0d8:	bc70      	pop	{r4, r5, r6}
d005a0da:	2000      	movs	r0, #0
d005a0dc:	f7ff bfba 	b.w	d005a054 <__math_oflowf>
d005a0e0:	eddf 7a26 	vldr	s15, [pc, #152]	; d005a17c <expf+0xdc>
d005a0e4:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005a0e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a0ec:	d503      	bpl.n	d005a0f6 <expf+0x56>
d005a0ee:	bc70      	pop	{r4, r5, r6}
d005a0f0:	2000      	movs	r0, #0
d005a0f2:	f7ff bfa3 	b.w	d005a03c <__math_uflowf>
d005a0f6:	eddf 7a22 	vldr	s15, [pc, #136]	; d005a180 <expf+0xe0>
d005a0fa:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005a0fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a102:	d503      	bpl.n	d005a10c <expf+0x6c>
d005a104:	bc70      	pop	{r4, r5, r6}
d005a106:	2000      	movs	r0, #0
d005a108:	f7ff bf9e 	b.w	d005a048 <__math_may_uflowf>
d005a10c:	4b1d      	ldr	r3, [pc, #116]	; (d005a184 <expf+0xe4>)
d005a10e:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d005a112:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d005a116:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d005a11a:	eeb0 7b44 	vmov.f64	d7, d4
d005a11e:	eea5 7b06 	vfma.f64	d7, d5, d6
d005a122:	ee17 5a10 	vmov	r5, s14
d005a126:	ee37 7b44 	vsub.f64	d7, d7, d4
d005a12a:	f005 021f 	and.w	r2, r5, #31
d005a12e:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005a132:	e9d2 4600 	ldrd	r4, r6, [r2]
d005a136:	ee95 7b06 	vfnms.f64	d7, d5, d6
d005a13a:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d005a13e:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d005a142:	eea4 0b07 	vfma.f64	d0, d4, d7
d005a146:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d005a14a:	2300      	movs	r3, #0
d005a14c:	1918      	adds	r0, r3, r4
d005a14e:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d005a152:	eb42 0106 	adc.w	r1, r2, r6
d005a156:	eea5 6b07 	vfma.f64	d6, d5, d7
d005a15a:	ee27 5b07 	vmul.f64	d5, d7, d7
d005a15e:	ec41 0b17 	vmov	d7, r0, r1
d005a162:	eea6 0b05 	vfma.f64	d0, d6, d5
d005a166:	ee20 0b07 	vmul.f64	d0, d0, d7
d005a16a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005a16e:	e7aa      	b.n	d005a0c6 <expf+0x26>
d005a170:	ed9f 0a05 	vldr	s0, [pc, #20]	; d005a188 <expf+0xe8>
d005a174:	e7a7      	b.n	d005a0c6 <expf+0x26>
d005a176:	bf00      	nop
d005a178:	42b17217 	.word	0x42b17217
d005a17c:	c2cff1b4 	.word	0xc2cff1b4
d005a180:	c2ce8ecf 	.word	0xc2ce8ecf
d005a184:	d005ae38 	.word	0xd005ae38
d005a188:	00000000 	.word	0x00000000

d005a18c <logf>:
d005a18c:	ee10 3a10 	vmov	r3, s0
d005a190:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d005a194:	b410      	push	{r4}
d005a196:	d055      	beq.n	d005a244 <logf+0xb8>
d005a198:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d005a19c:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d005a1a0:	d31a      	bcc.n	d005a1d8 <logf+0x4c>
d005a1a2:	005a      	lsls	r2, r3, #1
d005a1a4:	d104      	bne.n	d005a1b0 <logf+0x24>
d005a1a6:	f85d 4b04 	ldr.w	r4, [sp], #4
d005a1aa:	2001      	movs	r0, #1
d005a1ac:	f7ff bf58 	b.w	d005a060 <__math_divzerof>
d005a1b0:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005a1b4:	d043      	beq.n	d005a23e <logf+0xb2>
d005a1b6:	2b00      	cmp	r3, #0
d005a1b8:	db02      	blt.n	d005a1c0 <logf+0x34>
d005a1ba:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d005a1be:	d303      	bcc.n	d005a1c8 <logf+0x3c>
d005a1c0:	f85d 4b04 	ldr.w	r4, [sp], #4
d005a1c4:	f7ff bf5c 	b.w	d005a080 <__math_invalidf>
d005a1c8:	eddf 7a20 	vldr	s15, [pc, #128]	; d005a24c <logf+0xc0>
d005a1cc:	ee20 0a27 	vmul.f32	s0, s0, s15
d005a1d0:	ee10 3a10 	vmov	r3, s0
d005a1d4:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d005a1d8:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d005a1dc:	491c      	ldr	r1, [pc, #112]	; (d005a250 <logf+0xc4>)
d005a1de:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d005a1e2:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d005a1e6:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d005a1ea:	0dd4      	lsrs	r4, r2, #23
d005a1ec:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d005a1f0:	05e4      	lsls	r4, r4, #23
d005a1f2:	ed90 6b00 	vldr	d6, [r0]
d005a1f6:	1b1b      	subs	r3, r3, r4
d005a1f8:	ee07 3a90 	vmov	s15, r3
d005a1fc:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d005a200:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d005a204:	15d2      	asrs	r2, r2, #23
d005a206:	eea6 0b07 	vfma.f64	d0, d6, d7
d005a20a:	ed90 6b02 	vldr	d6, [r0, #8]
d005a20e:	ee07 2a90 	vmov	s15, r2
d005a212:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d005a216:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d005a21a:	eea7 6b05 	vfma.f64	d6, d7, d5
d005a21e:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d005a222:	ee20 5b00 	vmul.f64	d5, d0, d0
d005a226:	eea4 7b00 	vfma.f64	d7, d4, d0
d005a22a:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d005a22e:	ee30 0b06 	vadd.f64	d0, d0, d6
d005a232:	eea4 7b05 	vfma.f64	d7, d4, d5
d005a236:	eea5 0b07 	vfma.f64	d0, d5, d7
d005a23a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005a23e:	f85d 4b04 	ldr.w	r4, [sp], #4
d005a242:	4770      	bx	lr
d005a244:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005a254 <logf+0xc8>
d005a248:	e7f9      	b.n	d005a23e <logf+0xb2>
d005a24a:	bf00      	nop
d005a24c:	4b000000 	.word	0x4b000000
d005a250:	d005af80 	.word	0xd005af80
d005a254:	00000000 	.word	0x00000000

d005a258 <sinf_poly>:
d005a258:	07cb      	lsls	r3, r1, #31
d005a25a:	d412      	bmi.n	d005a282 <sinf_poly+0x2a>
d005a25c:	ee21 6b00 	vmul.f64	d6, d1, d0
d005a260:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d005a264:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005a268:	eea5 7b01 	vfma.f64	d7, d5, d1
d005a26c:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d005a270:	ee21 1b06 	vmul.f64	d1, d1, d6
d005a274:	eea5 0b06 	vfma.f64	d0, d5, d6
d005a278:	eea7 0b01 	vfma.f64	d0, d7, d1
d005a27c:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005a280:	4770      	bx	lr
d005a282:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005a286:	ee21 6b01 	vmul.f64	d6, d1, d1
d005a28a:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d005a28e:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d005a292:	eea1 7b05 	vfma.f64	d7, d1, d5
d005a296:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005a29a:	eea1 0b05 	vfma.f64	d0, d1, d5
d005a29e:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d005a2a2:	ee21 1b06 	vmul.f64	d1, d1, d6
d005a2a6:	eea6 0b05 	vfma.f64	d0, d6, d5
d005a2aa:	e7e5      	b.n	d005a278 <sinf_poly+0x20>
d005a2ac:	0000      	movs	r0, r0
	...

d005a2b0 <sinf>:
d005a2b0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d005a2b2:	ee10 4a10 	vmov	r4, s0
d005a2b6:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005a2ba:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005a2be:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005a2c2:	eef0 7a40 	vmov.f32	s15, s0
d005a2c6:	ea4f 5214 	mov.w	r2, r4, lsr #20
d005a2ca:	d218      	bcs.n	d005a2fe <sinf+0x4e>
d005a2cc:	ee26 1b06 	vmul.f64	d1, d6, d6
d005a2d0:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005a2d4:	d20a      	bcs.n	d005a2ec <sinf+0x3c>
d005a2d6:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d005a2da:	d103      	bne.n	d005a2e4 <sinf+0x34>
d005a2dc:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d005a2e0:	ed8d 1a01 	vstr	s2, [sp, #4]
d005a2e4:	eeb0 0a67 	vmov.f32	s0, s15
d005a2e8:	b003      	add	sp, #12
d005a2ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005a2ec:	483e      	ldr	r0, [pc, #248]	; (d005a3e8 <sinf+0x138>)
d005a2ee:	eeb0 0b46 	vmov.f64	d0, d6
d005a2f2:	2100      	movs	r1, #0
d005a2f4:	b003      	add	sp, #12
d005a2f6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d005a2fa:	f7ff bfad 	b.w	d005a258 <sinf_poly>
d005a2fe:	f240 422e 	movw	r2, #1070	; 0x42e
d005a302:	4293      	cmp	r3, r2
d005a304:	d824      	bhi.n	d005a350 <sinf+0xa0>
d005a306:	4b38      	ldr	r3, [pc, #224]	; (d005a3e8 <sinf+0x138>)
d005a308:	ed93 7b08 	vldr	d7, [r3, #32]
d005a30c:	ee26 7b07 	vmul.f64	d7, d6, d7
d005a310:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005a314:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005a318:	ee17 1a90 	vmov	r1, s15
d005a31c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d005a320:	1609      	asrs	r1, r1, #24
d005a322:	ee07 1a90 	vmov	s15, r1
d005a326:	f001 0203 	and.w	r2, r1, #3
d005a32a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005a32e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d005a332:	ed92 0b00 	vldr	d0, [r2]
d005a336:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d005a33a:	f011 0f02 	tst.w	r1, #2
d005a33e:	eea5 6b47 	vfms.f64	d6, d5, d7
d005a342:	bf08      	it	eq
d005a344:	4618      	moveq	r0, r3
d005a346:	ee26 1b06 	vmul.f64	d1, d6, d6
d005a34a:	ee20 0b06 	vmul.f64	d0, d0, d6
d005a34e:	e7d1      	b.n	d005a2f4 <sinf+0x44>
d005a350:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005a354:	d23d      	bcs.n	d005a3d2 <sinf+0x122>
d005a356:	4b25      	ldr	r3, [pc, #148]	; (d005a3ec <sinf+0x13c>)
d005a358:	f3c4 6283 	ubfx	r2, r4, #26, #4
d005a35c:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d005a360:	f3c4 0116 	ubfx	r1, r4, #0, #23
d005a364:	6a06      	ldr	r6, [r0, #32]
d005a366:	6900      	ldr	r0, [r0, #16]
d005a368:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005a36c:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d005a370:	40a9      	lsls	r1, r5
d005a372:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005a376:	fba1 6706 	umull	r6, r7, r1, r6
d005a37a:	fb05 f301 	mul.w	r3, r5, r1
d005a37e:	463a      	mov	r2, r7
d005a380:	fbe0 2301 	umlal	r2, r3, r0, r1
d005a384:	1c11      	adds	r1, r2, #0
d005a386:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005a38a:	2000      	movs	r0, #0
d005a38c:	1a10      	subs	r0, r2, r0
d005a38e:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005a392:	eb63 0101 	sbc.w	r1, r3, r1
d005a396:	f000 fb35 	bl	d005aa04 <__aeabi_l2d>
d005a39a:	0fb5      	lsrs	r5, r6, #30
d005a39c:	4a12      	ldr	r2, [pc, #72]	; (d005a3e8 <sinf+0x138>)
d005a39e:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d005a3a2:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d005a3e0 <sinf+0x130>
d005a3a6:	ec41 0b17 	vmov	d7, r0, r1
d005a3aa:	f003 0103 	and.w	r1, r3, #3
d005a3ae:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d005a3b2:	ee27 0b00 	vmul.f64	d0, d7, d0
d005a3b6:	ed91 7b00 	vldr	d7, [r1]
d005a3ba:	ee20 1b00 	vmul.f64	d1, d0, d0
d005a3be:	f013 0f02 	tst.w	r3, #2
d005a3c2:	f102 0070 	add.w	r0, r2, #112	; 0x70
d005a3c6:	4629      	mov	r1, r5
d005a3c8:	bf08      	it	eq
d005a3ca:	4610      	moveq	r0, r2
d005a3cc:	ee27 0b00 	vmul.f64	d0, d7, d0
d005a3d0:	e790      	b.n	d005a2f4 <sinf+0x44>
d005a3d2:	b003      	add	sp, #12
d005a3d4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d005a3d8:	f7ff be52 	b.w	d005a080 <__math_invalidf>
d005a3dc:	f3af 8000 	nop.w
d005a3e0:	54442d18 	.word	0x54442d18
d005a3e4:	3c1921fb 	.word	0x3c1921fb
d005a3e8:	d005b100 	.word	0xd005b100
d005a3ec:	d005b0a0 	.word	0xd005b0a0

d005a3f0 <atan2f>:
d005a3f0:	f000 b800 	b.w	d005a3f4 <__ieee754_atan2f>

d005a3f4 <__ieee754_atan2f>:
d005a3f4:	ee10 2a90 	vmov	r2, s1
d005a3f8:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d005a3fc:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d005a400:	b510      	push	{r4, lr}
d005a402:	eef0 7a40 	vmov.f32	s15, s0
d005a406:	dc06      	bgt.n	d005a416 <__ieee754_atan2f+0x22>
d005a408:	ee10 0a10 	vmov	r0, s0
d005a40c:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d005a410:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005a414:	dd04      	ble.n	d005a420 <__ieee754_atan2f+0x2c>
d005a416:	ee77 7aa0 	vadd.f32	s15, s15, s1
d005a41a:	eeb0 0a67 	vmov.f32	s0, s15
d005a41e:	bd10      	pop	{r4, pc}
d005a420:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d005a424:	d103      	bne.n	d005a42e <__ieee754_atan2f+0x3a>
d005a426:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005a42a:	f000 b881 	b.w	d005a530 <atanf>
d005a42e:	1794      	asrs	r4, r2, #30
d005a430:	f004 0402 	and.w	r4, r4, #2
d005a434:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d005a438:	b93b      	cbnz	r3, d005a44a <__ieee754_atan2f+0x56>
d005a43a:	2c02      	cmp	r4, #2
d005a43c:	d05c      	beq.n	d005a4f8 <__ieee754_atan2f+0x104>
d005a43e:	ed9f 7a33 	vldr	s14, [pc, #204]	; d005a50c <__ieee754_atan2f+0x118>
d005a442:	2c03      	cmp	r4, #3
d005a444:	fe47 7a00 	vseleq.f32	s15, s14, s0
d005a448:	e7e7      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a44a:	b939      	cbnz	r1, d005a45c <__ieee754_atan2f+0x68>
d005a44c:	eddf 7a30 	vldr	s15, [pc, #192]	; d005a510 <__ieee754_atan2f+0x11c>
d005a450:	ed9f 0a30 	vldr	s0, [pc, #192]	; d005a514 <__ieee754_atan2f+0x120>
d005a454:	2800      	cmp	r0, #0
d005a456:	fe67 7a80 	vselge.f32	s15, s15, s0
d005a45a:	e7de      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a45c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d005a460:	d110      	bne.n	d005a484 <__ieee754_atan2f+0x90>
d005a462:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005a466:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d005a46a:	d107      	bne.n	d005a47c <__ieee754_atan2f+0x88>
d005a46c:	2c02      	cmp	r4, #2
d005a46e:	d846      	bhi.n	d005a4fe <__ieee754_atan2f+0x10a>
d005a470:	4b29      	ldr	r3, [pc, #164]	; (d005a518 <__ieee754_atan2f+0x124>)
d005a472:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d005a476:	edd4 7a00 	vldr	s15, [r4]
d005a47a:	e7ce      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a47c:	2c02      	cmp	r4, #2
d005a47e:	d841      	bhi.n	d005a504 <__ieee754_atan2f+0x110>
d005a480:	4b26      	ldr	r3, [pc, #152]	; (d005a51c <__ieee754_atan2f+0x128>)
d005a482:	e7f6      	b.n	d005a472 <__ieee754_atan2f+0x7e>
d005a484:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005a488:	d0e0      	beq.n	d005a44c <__ieee754_atan2f+0x58>
d005a48a:	1a5b      	subs	r3, r3, r1
d005a48c:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d005a490:	ea4f 51e3 	mov.w	r1, r3, asr #23
d005a494:	da1a      	bge.n	d005a4cc <__ieee754_atan2f+0xd8>
d005a496:	2a00      	cmp	r2, #0
d005a498:	da01      	bge.n	d005a49e <__ieee754_atan2f+0xaa>
d005a49a:	313c      	adds	r1, #60	; 0x3c
d005a49c:	db19      	blt.n	d005a4d2 <__ieee754_atan2f+0xde>
d005a49e:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d005a4a2:	f000 f919 	bl	d005a6d8 <fabsf>
d005a4a6:	f000 f843 	bl	d005a530 <atanf>
d005a4aa:	eef0 7a40 	vmov.f32	s15, s0
d005a4ae:	2c01      	cmp	r4, #1
d005a4b0:	d012      	beq.n	d005a4d8 <__ieee754_atan2f+0xe4>
d005a4b2:	2c02      	cmp	r4, #2
d005a4b4:	d017      	beq.n	d005a4e6 <__ieee754_atan2f+0xf2>
d005a4b6:	2c00      	cmp	r4, #0
d005a4b8:	d0af      	beq.n	d005a41a <__ieee754_atan2f+0x26>
d005a4ba:	ed9f 0a19 	vldr	s0, [pc, #100]	; d005a520 <__ieee754_atan2f+0x12c>
d005a4be:	ee77 7a80 	vadd.f32	s15, s15, s0
d005a4c2:	ed9f 0a18 	vldr	s0, [pc, #96]	; d005a524 <__ieee754_atan2f+0x130>
d005a4c6:	ee77 7ac0 	vsub.f32	s15, s15, s0
d005a4ca:	e7a6      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a4cc:	eddf 7a10 	vldr	s15, [pc, #64]	; d005a510 <__ieee754_atan2f+0x11c>
d005a4d0:	e7ed      	b.n	d005a4ae <__ieee754_atan2f+0xba>
d005a4d2:	eddf 7a15 	vldr	s15, [pc, #84]	; d005a528 <__ieee754_atan2f+0x134>
d005a4d6:	e7ea      	b.n	d005a4ae <__ieee754_atan2f+0xba>
d005a4d8:	ee17 3a90 	vmov	r3, s15
d005a4dc:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d005a4e0:	ee07 3a90 	vmov	s15, r3
d005a4e4:	e799      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a4e6:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d005a520 <__ieee754_atan2f+0x12c>
d005a4ea:	ee77 7a80 	vadd.f32	s15, s15, s0
d005a4ee:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d005a524 <__ieee754_atan2f+0x130>
d005a4f2:	ee70 7a67 	vsub.f32	s15, s0, s15
d005a4f6:	e790      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a4f8:	eddf 7a0a 	vldr	s15, [pc, #40]	; d005a524 <__ieee754_atan2f+0x130>
d005a4fc:	e78d      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a4fe:	eddf 7a0b 	vldr	s15, [pc, #44]	; d005a52c <__ieee754_atan2f+0x138>
d005a502:	e78a      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a504:	eddf 7a08 	vldr	s15, [pc, #32]	; d005a528 <__ieee754_atan2f+0x134>
d005a508:	e787      	b.n	d005a41a <__ieee754_atan2f+0x26>
d005a50a:	bf00      	nop
d005a50c:	c0490fdb 	.word	0xc0490fdb
d005a510:	3fc90fdb 	.word	0x3fc90fdb
d005a514:	bfc90fdb 	.word	0xbfc90fdb
d005a518:	d005b1e0 	.word	0xd005b1e0
d005a51c:	d005b1ec 	.word	0xd005b1ec
d005a520:	33bbbd2e 	.word	0x33bbbd2e
d005a524:	40490fdb 	.word	0x40490fdb
d005a528:	00000000 	.word	0x00000000
d005a52c:	3f490fdb 	.word	0x3f490fdb

d005a530 <atanf>:
d005a530:	b538      	push	{r3, r4, r5, lr}
d005a532:	ee10 5a10 	vmov	r5, s0
d005a536:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d005a53a:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d005a53e:	eef0 7a40 	vmov.f32	s15, s0
d005a542:	db0f      	blt.n	d005a564 <atanf+0x34>
d005a544:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d005a548:	dd04      	ble.n	d005a554 <atanf+0x24>
d005a54a:	ee70 7a00 	vadd.f32	s15, s0, s0
d005a54e:	eeb0 0a67 	vmov.f32	s0, s15
d005a552:	bd38      	pop	{r3, r4, r5, pc}
d005a554:	eddf 7a4d 	vldr	s15, [pc, #308]	; d005a68c <atanf+0x15c>
d005a558:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d005a690 <atanf+0x160>
d005a55c:	2d00      	cmp	r5, #0
d005a55e:	fe77 7a80 	vselgt.f32	s15, s15, s0
d005a562:	e7f4      	b.n	d005a54e <atanf+0x1e>
d005a564:	4b4b      	ldr	r3, [pc, #300]	; (d005a694 <atanf+0x164>)
d005a566:	429c      	cmp	r4, r3
d005a568:	dc10      	bgt.n	d005a58c <atanf+0x5c>
d005a56a:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d005a56e:	da0a      	bge.n	d005a586 <atanf+0x56>
d005a570:	ed9f 7a49 	vldr	s14, [pc, #292]	; d005a698 <atanf+0x168>
d005a574:	ee30 7a07 	vadd.f32	s14, s0, s14
d005a578:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d005a57c:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005a580:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a584:	dce3      	bgt.n	d005a54e <atanf+0x1e>
d005a586:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d005a58a:	e013      	b.n	d005a5b4 <atanf+0x84>
d005a58c:	f000 f8a4 	bl	d005a6d8 <fabsf>
d005a590:	4b42      	ldr	r3, [pc, #264]	; (d005a69c <atanf+0x16c>)
d005a592:	429c      	cmp	r4, r3
d005a594:	dc4f      	bgt.n	d005a636 <atanf+0x106>
d005a596:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d005a59a:	429c      	cmp	r4, r3
d005a59c:	dc41      	bgt.n	d005a622 <atanf+0xf2>
d005a59e:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d005a5a2:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005a5a6:	eea0 7a27 	vfma.f32	s14, s0, s15
d005a5aa:	2300      	movs	r3, #0
d005a5ac:	ee30 0a27 	vadd.f32	s0, s0, s15
d005a5b0:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005a5b4:	1c5a      	adds	r2, r3, #1
d005a5b6:	ee67 6aa7 	vmul.f32	s13, s15, s15
d005a5ba:	eddf 5a39 	vldr	s11, [pc, #228]	; d005a6a0 <atanf+0x170>
d005a5be:	ed9f 6a39 	vldr	s12, [pc, #228]	; d005a6a4 <atanf+0x174>
d005a5c2:	ed9f 5a39 	vldr	s10, [pc, #228]	; d005a6a8 <atanf+0x178>
d005a5c6:	ed9f 0a39 	vldr	s0, [pc, #228]	; d005a6ac <atanf+0x17c>
d005a5ca:	ee26 7aa6 	vmul.f32	s14, s13, s13
d005a5ce:	eea7 6a25 	vfma.f32	s12, s14, s11
d005a5d2:	eddf 5a37 	vldr	s11, [pc, #220]	; d005a6b0 <atanf+0x180>
d005a5d6:	eee6 5a07 	vfma.f32	s11, s12, s14
d005a5da:	ed9f 6a36 	vldr	s12, [pc, #216]	; d005a6b4 <atanf+0x184>
d005a5de:	eea5 6a87 	vfma.f32	s12, s11, s14
d005a5e2:	eddf 5a35 	vldr	s11, [pc, #212]	; d005a6b8 <atanf+0x188>
d005a5e6:	eee6 5a07 	vfma.f32	s11, s12, s14
d005a5ea:	ed9f 6a34 	vldr	s12, [pc, #208]	; d005a6bc <atanf+0x18c>
d005a5ee:	eea5 6a87 	vfma.f32	s12, s11, s14
d005a5f2:	eddf 5a33 	vldr	s11, [pc, #204]	; d005a6c0 <atanf+0x190>
d005a5f6:	eee7 5a05 	vfma.f32	s11, s14, s10
d005a5fa:	ed9f 5a32 	vldr	s10, [pc, #200]	; d005a6c4 <atanf+0x194>
d005a5fe:	eea5 5a87 	vfma.f32	s10, s11, s14
d005a602:	eddf 5a31 	vldr	s11, [pc, #196]	; d005a6c8 <atanf+0x198>
d005a606:	eee5 5a07 	vfma.f32	s11, s10, s14
d005a60a:	eea5 0a87 	vfma.f32	s0, s11, s14
d005a60e:	ee20 0a07 	vmul.f32	s0, s0, s14
d005a612:	eea6 0a26 	vfma.f32	s0, s12, s13
d005a616:	ee27 0a80 	vmul.f32	s0, s15, s0
d005a61a:	d121      	bne.n	d005a660 <atanf+0x130>
d005a61c:	ee77 7ac0 	vsub.f32	s15, s15, s0
d005a620:	e795      	b.n	d005a54e <atanf+0x1e>
d005a622:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005a626:	ee30 7a67 	vsub.f32	s14, s0, s15
d005a62a:	ee30 0a27 	vadd.f32	s0, s0, s15
d005a62e:	2301      	movs	r3, #1
d005a630:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005a634:	e7be      	b.n	d005a5b4 <atanf+0x84>
d005a636:	4b25      	ldr	r3, [pc, #148]	; (d005a6cc <atanf+0x19c>)
d005a638:	429c      	cmp	r4, r3
d005a63a:	dc0b      	bgt.n	d005a654 <atanf+0x124>
d005a63c:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d005a640:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005a644:	eea0 7a27 	vfma.f32	s14, s0, s15
d005a648:	2302      	movs	r3, #2
d005a64a:	ee70 6a67 	vsub.f32	s13, s0, s15
d005a64e:	eec6 7a87 	vdiv.f32	s15, s13, s14
d005a652:	e7af      	b.n	d005a5b4 <atanf+0x84>
d005a654:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005a658:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005a65c:	2303      	movs	r3, #3
d005a65e:	e7a9      	b.n	d005a5b4 <atanf+0x84>
d005a660:	4a1b      	ldr	r2, [pc, #108]	; (d005a6d0 <atanf+0x1a0>)
d005a662:	491c      	ldr	r1, [pc, #112]	; (d005a6d4 <atanf+0x1a4>)
d005a664:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d005a668:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d005a66c:	ed93 7a00 	vldr	s14, [r3]
d005a670:	ee30 0a47 	vsub.f32	s0, s0, s14
d005a674:	2d00      	cmp	r5, #0
d005a676:	ee70 7a67 	vsub.f32	s15, s0, s15
d005a67a:	ed92 0a00 	vldr	s0, [r2]
d005a67e:	ee70 7a67 	vsub.f32	s15, s0, s15
d005a682:	bfb8      	it	lt
d005a684:	eef1 7a67 	vneglt.f32	s15, s15
d005a688:	e761      	b.n	d005a54e <atanf+0x1e>
d005a68a:	bf00      	nop
d005a68c:	3fc90fdb 	.word	0x3fc90fdb
d005a690:	bfc90fdb 	.word	0xbfc90fdb
d005a694:	3edfffff 	.word	0x3edfffff
d005a698:	7149f2ca 	.word	0x7149f2ca
d005a69c:	3f97ffff 	.word	0x3f97ffff
d005a6a0:	3c8569d7 	.word	0x3c8569d7
d005a6a4:	3d4bda59 	.word	0x3d4bda59
d005a6a8:	bd15a221 	.word	0xbd15a221
d005a6ac:	be4ccccd 	.word	0xbe4ccccd
d005a6b0:	3d886b35 	.word	0x3d886b35
d005a6b4:	3dba2e6e 	.word	0x3dba2e6e
d005a6b8:	3e124925 	.word	0x3e124925
d005a6bc:	3eaaaaab 	.word	0x3eaaaaab
d005a6c0:	bd6ef16b 	.word	0xbd6ef16b
d005a6c4:	bd9d8795 	.word	0xbd9d8795
d005a6c8:	bde38e38 	.word	0xbde38e38
d005a6cc:	401bffff 	.word	0x401bffff
d005a6d0:	d005b1f8 	.word	0xd005b1f8
d005a6d4:	d005b208 	.word	0xd005b208

d005a6d8 <fabsf>:
d005a6d8:	ee10 3a10 	vmov	r3, s0
d005a6dc:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d005a6e0:	ee00 3a10 	vmov	s0, r3
d005a6e4:	4770      	bx	lr
	...

d005a6e8 <__aeabi_drsub>:
d005a6e8:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d005a6ec:	e002      	b.n	d005a6f4 <__adddf3>
d005a6ee:	bf00      	nop

d005a6f0 <__aeabi_dsub>:
d005a6f0:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d005a6f4 <__adddf3>:
d005a6f4:	b530      	push	{r4, r5, lr}
d005a6f6:	ea4f 0441 	mov.w	r4, r1, lsl #1
d005a6fa:	ea4f 0543 	mov.w	r5, r3, lsl #1
d005a6fe:	ea94 0f05 	teq	r4, r5
d005a702:	bf08      	it	eq
d005a704:	ea90 0f02 	teqeq	r0, r2
d005a708:	bf1f      	itttt	ne
d005a70a:	ea54 0c00 	orrsne.w	ip, r4, r0
d005a70e:	ea55 0c02 	orrsne.w	ip, r5, r2
d005a712:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d005a716:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005a71a:	f000 80e2 	beq.w	d005a8e2 <__adddf3+0x1ee>
d005a71e:	ea4f 5454 	mov.w	r4, r4, lsr #21
d005a722:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d005a726:	bfb8      	it	lt
d005a728:	426d      	neglt	r5, r5
d005a72a:	dd0c      	ble.n	d005a746 <__adddf3+0x52>
d005a72c:	442c      	add	r4, r5
d005a72e:	ea80 0202 	eor.w	r2, r0, r2
d005a732:	ea81 0303 	eor.w	r3, r1, r3
d005a736:	ea82 0000 	eor.w	r0, r2, r0
d005a73a:	ea83 0101 	eor.w	r1, r3, r1
d005a73e:	ea80 0202 	eor.w	r2, r0, r2
d005a742:	ea81 0303 	eor.w	r3, r1, r3
d005a746:	2d36      	cmp	r5, #54	; 0x36
d005a748:	bf88      	it	hi
d005a74a:	bd30      	pophi	{r4, r5, pc}
d005a74c:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d005a750:	ea4f 3101 	mov.w	r1, r1, lsl #12
d005a754:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d005a758:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d005a75c:	d002      	beq.n	d005a764 <__adddf3+0x70>
d005a75e:	4240      	negs	r0, r0
d005a760:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005a764:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d005a768:	ea4f 3303 	mov.w	r3, r3, lsl #12
d005a76c:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d005a770:	d002      	beq.n	d005a778 <__adddf3+0x84>
d005a772:	4252      	negs	r2, r2
d005a774:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d005a778:	ea94 0f05 	teq	r4, r5
d005a77c:	f000 80a7 	beq.w	d005a8ce <__adddf3+0x1da>
d005a780:	f1a4 0401 	sub.w	r4, r4, #1
d005a784:	f1d5 0e20 	rsbs	lr, r5, #32
d005a788:	db0d      	blt.n	d005a7a6 <__adddf3+0xb2>
d005a78a:	fa02 fc0e 	lsl.w	ip, r2, lr
d005a78e:	fa22 f205 	lsr.w	r2, r2, r5
d005a792:	1880      	adds	r0, r0, r2
d005a794:	f141 0100 	adc.w	r1, r1, #0
d005a798:	fa03 f20e 	lsl.w	r2, r3, lr
d005a79c:	1880      	adds	r0, r0, r2
d005a79e:	fa43 f305 	asr.w	r3, r3, r5
d005a7a2:	4159      	adcs	r1, r3
d005a7a4:	e00e      	b.n	d005a7c4 <__adddf3+0xd0>
d005a7a6:	f1a5 0520 	sub.w	r5, r5, #32
d005a7aa:	f10e 0e20 	add.w	lr, lr, #32
d005a7ae:	2a01      	cmp	r2, #1
d005a7b0:	fa03 fc0e 	lsl.w	ip, r3, lr
d005a7b4:	bf28      	it	cs
d005a7b6:	f04c 0c02 	orrcs.w	ip, ip, #2
d005a7ba:	fa43 f305 	asr.w	r3, r3, r5
d005a7be:	18c0      	adds	r0, r0, r3
d005a7c0:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d005a7c4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a7c8:	d507      	bpl.n	d005a7da <__adddf3+0xe6>
d005a7ca:	f04f 0e00 	mov.w	lr, #0
d005a7ce:	f1dc 0c00 	rsbs	ip, ip, #0
d005a7d2:	eb7e 0000 	sbcs.w	r0, lr, r0
d005a7d6:	eb6e 0101 	sbc.w	r1, lr, r1
d005a7da:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d005a7de:	d31b      	bcc.n	d005a818 <__adddf3+0x124>
d005a7e0:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d005a7e4:	d30c      	bcc.n	d005a800 <__adddf3+0x10c>
d005a7e6:	0849      	lsrs	r1, r1, #1
d005a7e8:	ea5f 0030 	movs.w	r0, r0, rrx
d005a7ec:	ea4f 0c3c 	mov.w	ip, ip, rrx
d005a7f0:	f104 0401 	add.w	r4, r4, #1
d005a7f4:	ea4f 5244 	mov.w	r2, r4, lsl #21
d005a7f8:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d005a7fc:	f080 809a 	bcs.w	d005a934 <__adddf3+0x240>
d005a800:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d005a804:	bf08      	it	eq
d005a806:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d005a80a:	f150 0000 	adcs.w	r0, r0, #0
d005a80e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d005a812:	ea41 0105 	orr.w	r1, r1, r5
d005a816:	bd30      	pop	{r4, r5, pc}
d005a818:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d005a81c:	4140      	adcs	r0, r0
d005a81e:	eb41 0101 	adc.w	r1, r1, r1
d005a822:	3c01      	subs	r4, #1
d005a824:	bf28      	it	cs
d005a826:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d005a82a:	d2e9      	bcs.n	d005a800 <__adddf3+0x10c>
d005a82c:	f091 0f00 	teq	r1, #0
d005a830:	bf04      	itt	eq
d005a832:	4601      	moveq	r1, r0
d005a834:	2000      	moveq	r0, #0
d005a836:	fab1 f381 	clz	r3, r1
d005a83a:	bf08      	it	eq
d005a83c:	3320      	addeq	r3, #32
d005a83e:	f1a3 030b 	sub.w	r3, r3, #11
d005a842:	f1b3 0220 	subs.w	r2, r3, #32
d005a846:	da0c      	bge.n	d005a862 <__adddf3+0x16e>
d005a848:	320c      	adds	r2, #12
d005a84a:	dd08      	ble.n	d005a85e <__adddf3+0x16a>
d005a84c:	f102 0c14 	add.w	ip, r2, #20
d005a850:	f1c2 020c 	rsb	r2, r2, #12
d005a854:	fa01 f00c 	lsl.w	r0, r1, ip
d005a858:	fa21 f102 	lsr.w	r1, r1, r2
d005a85c:	e00c      	b.n	d005a878 <__adddf3+0x184>
d005a85e:	f102 0214 	add.w	r2, r2, #20
d005a862:	bfd8      	it	le
d005a864:	f1c2 0c20 	rsble	ip, r2, #32
d005a868:	fa01 f102 	lsl.w	r1, r1, r2
d005a86c:	fa20 fc0c 	lsr.w	ip, r0, ip
d005a870:	bfdc      	itt	le
d005a872:	ea41 010c 	orrle.w	r1, r1, ip
d005a876:	4090      	lslle	r0, r2
d005a878:	1ae4      	subs	r4, r4, r3
d005a87a:	bfa2      	ittt	ge
d005a87c:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d005a880:	4329      	orrge	r1, r5
d005a882:	bd30      	popge	{r4, r5, pc}
d005a884:	ea6f 0404 	mvn.w	r4, r4
d005a888:	3c1f      	subs	r4, #31
d005a88a:	da1c      	bge.n	d005a8c6 <__adddf3+0x1d2>
d005a88c:	340c      	adds	r4, #12
d005a88e:	dc0e      	bgt.n	d005a8ae <__adddf3+0x1ba>
d005a890:	f104 0414 	add.w	r4, r4, #20
d005a894:	f1c4 0220 	rsb	r2, r4, #32
d005a898:	fa20 f004 	lsr.w	r0, r0, r4
d005a89c:	fa01 f302 	lsl.w	r3, r1, r2
d005a8a0:	ea40 0003 	orr.w	r0, r0, r3
d005a8a4:	fa21 f304 	lsr.w	r3, r1, r4
d005a8a8:	ea45 0103 	orr.w	r1, r5, r3
d005a8ac:	bd30      	pop	{r4, r5, pc}
d005a8ae:	f1c4 040c 	rsb	r4, r4, #12
d005a8b2:	f1c4 0220 	rsb	r2, r4, #32
d005a8b6:	fa20 f002 	lsr.w	r0, r0, r2
d005a8ba:	fa01 f304 	lsl.w	r3, r1, r4
d005a8be:	ea40 0003 	orr.w	r0, r0, r3
d005a8c2:	4629      	mov	r1, r5
d005a8c4:	bd30      	pop	{r4, r5, pc}
d005a8c6:	fa21 f004 	lsr.w	r0, r1, r4
d005a8ca:	4629      	mov	r1, r5
d005a8cc:	bd30      	pop	{r4, r5, pc}
d005a8ce:	f094 0f00 	teq	r4, #0
d005a8d2:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d005a8d6:	bf06      	itte	eq
d005a8d8:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d005a8dc:	3401      	addeq	r4, #1
d005a8de:	3d01      	subne	r5, #1
d005a8e0:	e74e      	b.n	d005a780 <__adddf3+0x8c>
d005a8e2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005a8e6:	bf18      	it	ne
d005a8e8:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005a8ec:	d029      	beq.n	d005a942 <__adddf3+0x24e>
d005a8ee:	ea94 0f05 	teq	r4, r5
d005a8f2:	bf08      	it	eq
d005a8f4:	ea90 0f02 	teqeq	r0, r2
d005a8f8:	d005      	beq.n	d005a906 <__adddf3+0x212>
d005a8fa:	ea54 0c00 	orrs.w	ip, r4, r0
d005a8fe:	bf04      	itt	eq
d005a900:	4619      	moveq	r1, r3
d005a902:	4610      	moveq	r0, r2
d005a904:	bd30      	pop	{r4, r5, pc}
d005a906:	ea91 0f03 	teq	r1, r3
d005a90a:	bf1e      	ittt	ne
d005a90c:	2100      	movne	r1, #0
d005a90e:	2000      	movne	r0, #0
d005a910:	bd30      	popne	{r4, r5, pc}
d005a912:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d005a916:	d105      	bne.n	d005a924 <__adddf3+0x230>
d005a918:	0040      	lsls	r0, r0, #1
d005a91a:	4149      	adcs	r1, r1
d005a91c:	bf28      	it	cs
d005a91e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d005a922:	bd30      	pop	{r4, r5, pc}
d005a924:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d005a928:	bf3c      	itt	cc
d005a92a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d005a92e:	bd30      	popcc	{r4, r5, pc}
d005a930:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a934:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d005a938:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d005a93c:	f04f 0000 	mov.w	r0, #0
d005a940:	bd30      	pop	{r4, r5, pc}
d005a942:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005a946:	bf1a      	itte	ne
d005a948:	4619      	movne	r1, r3
d005a94a:	4610      	movne	r0, r2
d005a94c:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d005a950:	bf1c      	itt	ne
d005a952:	460b      	movne	r3, r1
d005a954:	4602      	movne	r2, r0
d005a956:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005a95a:	bf06      	itte	eq
d005a95c:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d005a960:	ea91 0f03 	teqeq	r1, r3
d005a964:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005a968:	bd30      	pop	{r4, r5, pc}
d005a96a:	bf00      	nop

d005a96c <__aeabi_ui2d>:
d005a96c:	f090 0f00 	teq	r0, #0
d005a970:	bf04      	itt	eq
d005a972:	2100      	moveq	r1, #0
d005a974:	4770      	bxeq	lr
d005a976:	b530      	push	{r4, r5, lr}
d005a978:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a97c:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a980:	f04f 0500 	mov.w	r5, #0
d005a984:	f04f 0100 	mov.w	r1, #0
d005a988:	e750      	b.n	d005a82c <__adddf3+0x138>
d005a98a:	bf00      	nop

d005a98c <__aeabi_i2d>:
d005a98c:	f090 0f00 	teq	r0, #0
d005a990:	bf04      	itt	eq
d005a992:	2100      	moveq	r1, #0
d005a994:	4770      	bxeq	lr
d005a996:	b530      	push	{r4, r5, lr}
d005a998:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a99c:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a9a0:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d005a9a4:	bf48      	it	mi
d005a9a6:	4240      	negmi	r0, r0
d005a9a8:	f04f 0100 	mov.w	r1, #0
d005a9ac:	e73e      	b.n	d005a82c <__adddf3+0x138>
d005a9ae:	bf00      	nop

d005a9b0 <__aeabi_f2d>:
d005a9b0:	0042      	lsls	r2, r0, #1
d005a9b2:	ea4f 01e2 	mov.w	r1, r2, asr #3
d005a9b6:	ea4f 0131 	mov.w	r1, r1, rrx
d005a9ba:	ea4f 7002 	mov.w	r0, r2, lsl #28
d005a9be:	bf1f      	itttt	ne
d005a9c0:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d005a9c4:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d005a9c8:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d005a9cc:	4770      	bxne	lr
d005a9ce:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d005a9d2:	bf08      	it	eq
d005a9d4:	4770      	bxeq	lr
d005a9d6:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d005a9da:	bf04      	itt	eq
d005a9dc:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d005a9e0:	4770      	bxeq	lr
d005a9e2:	b530      	push	{r4, r5, lr}
d005a9e4:	f44f 7460 	mov.w	r4, #896	; 0x380
d005a9e8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a9ec:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d005a9f0:	e71c      	b.n	d005a82c <__adddf3+0x138>
d005a9f2:	bf00      	nop

d005a9f4 <__aeabi_ul2d>:
d005a9f4:	ea50 0201 	orrs.w	r2, r0, r1
d005a9f8:	bf08      	it	eq
d005a9fa:	4770      	bxeq	lr
d005a9fc:	b530      	push	{r4, r5, lr}
d005a9fe:	f04f 0500 	mov.w	r5, #0
d005aa02:	e00a      	b.n	d005aa1a <__aeabi_l2d+0x16>

d005aa04 <__aeabi_l2d>:
d005aa04:	ea50 0201 	orrs.w	r2, r0, r1
d005aa08:	bf08      	it	eq
d005aa0a:	4770      	bxeq	lr
d005aa0c:	b530      	push	{r4, r5, lr}
d005aa0e:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d005aa12:	d502      	bpl.n	d005aa1a <__aeabi_l2d+0x16>
d005aa14:	4240      	negs	r0, r0
d005aa16:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005aa1a:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005aa1e:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005aa22:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005aa26:	f43f aed8 	beq.w	d005a7da <__adddf3+0xe6>
d005aa2a:	f04f 0203 	mov.w	r2, #3
d005aa2e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005aa32:	bf18      	it	ne
d005aa34:	3203      	addne	r2, #3
d005aa36:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005aa3a:	bf18      	it	ne
d005aa3c:	3203      	addne	r2, #3
d005aa3e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d005aa42:	f1c2 0320 	rsb	r3, r2, #32
d005aa46:	fa00 fc03 	lsl.w	ip, r0, r3
d005aa4a:	fa20 f002 	lsr.w	r0, r0, r2
d005aa4e:	fa01 fe03 	lsl.w	lr, r1, r3
d005aa52:	ea40 000e 	orr.w	r0, r0, lr
d005aa56:	fa21 f102 	lsr.w	r1, r1, r2
d005aa5a:	4414      	add	r4, r2
d005aa5c:	e6bd      	b.n	d005a7da <__adddf3+0xe6>
d005aa5e:	bf00      	nop
d005aa60:	46464952 	.word	0x46464952
d005aa64:	00000000 	.word	0x00000000
d005aa68:	45564157 	.word	0x45564157
d005aa6c:	00000000 	.word	0x00000000
d005aa70:	6d6f6f62 	.word	0x6d6f6f62
d005aa74:	6f6d2e64 	.word	0x6f6d2e64
d005aa78:	00000064 	.word	0x00000064
d005aa7c:	6e756874 	.word	0x6e756874
d005aa80:	31726564 	.word	0x31726564
d005aa84:	7661772e 	.word	0x7661772e
d005aa88:	00000000 	.word	0x00000000
d005aa8c:	6e756874 	.word	0x6e756874
d005aa90:	32726564 	.word	0x32726564
d005aa94:	7661772e 	.word	0x7661772e
d005aa98:	00000000 	.word	0x00000000
d005aa9c:	616c7369 	.word	0x616c7369
d005aaa0:	2e78646e 	.word	0x2e78646e
d005aaa4:	64336273 	.word	0x64336273
d005aaa8:	00000000 	.word	0x00000000
d005aaac:	72726163 	.word	0x72726163
d005aab0:	2e726569 	.word	0x2e726569
d005aab4:	64336273 	.word	0x64336273
d005aab8:	00000000 	.word	0x00000000
d005aabc:	70696873 	.word	0x70696873
d005aac0:	732e3176 	.word	0x732e3176
d005aac4:	00643362 	.word	0x00643362
d005aac8:	74786574 	.word	0x74786574
d005aacc:	3362732e 	.word	0x3362732e
d005aad0:	00000064 	.word	0x00000064
d005aad4:	3a535046 	.word	0x3a535046
d005aad8:	2e756c25 	.word	0x2e756c25
d005aadc:	6c323025 	.word	0x6c323025
d005aae0:	4d202075 	.word	0x4d202075
d005aae4:	33253a53 	.word	0x33253a53
d005aae8:	252e756c 	.word	0x252e756c
d005aaec:	756c3330 	.word	0x756c3330
d005aaf0:	50572020 	.word	0x50572020
d005aaf4:	7532253a 	.word	0x7532253a
d005aaf8:	52542020 	.word	0x52542020
d005aafc:	253a5349 	.word	0x253a5349
d005ab00:	0000756c 	.word	0x0000756c
d005ab04:	ff5516e3 	.word	0xff5516e3
d005ab08:	ffffffff 	.word	0xffffffff
d005ab0c:	ffff0000 	.word	0xffff0000
d005ab10:	ff00ff00 	.word	0xff00ff00
d005ab14:	ff0000ff 	.word	0xff0000ff
d005ab18:	ffffff00 	.word	0xffffff00
d005ab1c:	ffff00ff 	.word	0xffff00ff
d005ab20:	ff00ffff 	.word	0xff00ffff
d005ab24:	ff808080 	.word	0xff808080
d005ab28:	ffff8000 	.word	0xffff8000
d005ab2c:	ff8000ff 	.word	0xff8000ff
d005ab30:	ff0080ff 	.word	0xff0080ff
d005ab34:	ff80ff00 	.word	0xff80ff00
d005ab38:	ffff0080 	.word	0xffff0080
d005ab3c:	ff00ff80 	.word	0xff00ff80
d005ab40:	ffc0c0c0 	.word	0xffc0c0c0
d005ab44:	3f800000 	.word	0x3f800000
d005ab48:	3f400000 	.word	0x3f400000
d005ab4c:	3f0ccccd 	.word	0x3f0ccccd
d005ab50:	3eb33333 	.word	0x3eb33333
d005ab54:	3e4ccccd 	.word	0x3e4ccccd
d005ab58:	bf800000 	.word	0xbf800000
d005ab5c:	bf000000 	.word	0xbf000000
d005ab60:	3e99999a 	.word	0x3e99999a

d005ab64 <museumRail.9278>:
d005ab64:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d005ab74:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d005ab8c:	c1f00000 43340000 44870000 00000000     ......4C...D....
d005ab9c:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d005abac:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d005abbc:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d005abcc:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d005abdc:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d005abec:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d005abfc:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d005ac0c:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d005ac1c:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d005ac2c:	c487c000 43300000 43320000 00000000     ......0C..2C....
d005ac3c:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d005ac4c:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d005ac5c:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d005ac6c:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d005ac7c:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d005ac8c:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d005ac9c:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d005acac:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d005acbc:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d005accc:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d005acdc:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d005acec:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d005acfc:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d005ad0c:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>

d005ad1c <bayer4x4>:
d005ad1c:	0a020800 060e040c 09010b03 050d070f     ................
	...
d005ad58:	3f800000 00000000 00000000 00000000     ...?............
d005ad68:	3f800000 00000000 00000000 00000000     ...?............
d005ad78:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d005ad88:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...

d005ada0 <__sf_fake_stderr>:
	...

d005adc0 <__sf_fake_stdin>:
	...

d005ade0 <__sf_fake_stdout>:
	...

d005ae00 <_global_impure_ptr>:
d005ae00:	d008d670 2b302d23 6c680020 6665004c     p...#-0+ .hlL.ef
d005ae10:	47464567 32313000 36353433 41393837     gEFG.0123456789A
d005ae20:	45444342 31300046 35343332 39383736     BCDEF.0123456789
d005ae30:	64636261 00006665                       abcdef..

d005ae38 <__exp2f_data>:
d005ae38:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d005ae48:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d005ae58:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d005ae68:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d005ae78:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d005ae88:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d005ae98:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d005aea8:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d005aeb8:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d005aec8:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d005aed8:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d005aee8:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d005aef8:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d005af08:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d005af18:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d005af28:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d005af38:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d005af48:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d005af58:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d005af68:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d005af78:	ff0c52d6 3f962e42                       .R..B..?

d005af80 <__logf_data>:
d005af80:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d005af90:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d005afa0:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d005afb0:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d005afc0:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d005afd0:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d005afe0:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d005aff0:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d005b000:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d005b010:	00000000 3ff00000 00000000 00000000     .......?........
d005b020:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d005b030:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d005b040:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d005b050:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d005b060:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d005b070:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d005b080:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d005b090:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d005b0a0 <__inv_pio4>:
d005b0a0:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d005b0b0:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d005b0c0:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d005b0d0:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d005b0e0:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d005b0f0:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d005b100 <__sincosf_table>:
d005b100:	00000000 3ff00000 00000000 bff00000     .......?........
d005b110:	00000000 bff00000 00000000 3ff00000     ...............?
d005b120:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005b130:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d005b140:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d005b150:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d005b160:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d005b170:	00000000 3ff00000 00000000 bff00000     .......?........
d005b180:	00000000 bff00000 00000000 3ff00000     ...............?
d005b190:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005b1a0:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d005b1b0:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d005b1c0:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d005b1d0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d005b1e0 <CSWTCH.8>:
d005b1e0:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d005b1ec <CSWTCH.9>:
d005b1ec:	80000000 40490fdb c0490fdb              ......I@..I.

d005b1f8 <atanhi>:
d005b1f8:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d005b208 <atanlo>:
d005b208:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d005b218 <_init>:
d005b218:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005b21a:	bf00      	nop

Disassembly of section .fini:

d005b21c <_fini>:
d005b21c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005b21e:	bf00      	nop
