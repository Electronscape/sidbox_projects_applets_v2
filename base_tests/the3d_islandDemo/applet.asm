
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
d005001e:	f00a ffa9 	bl	d005af74 <setbuf>
d0050022:	6833      	ldr	r3, [r6, #0]
d0050024:	2100      	movs	r1, #0
d0050026:	68d8      	ldr	r0, [r3, #12]
d0050028:	f00a ffa4 	bl	d005af74 <setbuf>
d005002c:	4629      	mov	r1, r5
d005002e:	4620      	mov	r0, r4
d0050030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050034:	f001 bc7c 	b.w	d0051930 <main>
d0050038:	d005f8ec 	.word	0xd005f8ec

d005003c <initMalloc>:
d005003c:	4902      	ldr	r1, [pc, #8]	; (d0050048 <initMalloc+0xc>)
d005003e:	4b03      	ldr	r3, [pc, #12]	; (d005004c <initMalloc+0x10>)
d0050040:	4a03      	ldr	r2, [pc, #12]	; (d0050050 <initMalloc+0x14>)
d0050042:	1a5b      	subs	r3, r3, r1
d0050044:	6013      	str	r3, [r2, #0]
d0050046:	4770      	bx	lr
d0050048:	d0103ed0 	.word	0xd0103ed0
d005004c:	d0600000 	.word	0xd0600000
d0050050:	d00f9cc8 	.word	0xd00f9cc8

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
d005009c:	f00a fc16 	bl	d005a8cc <__errno>
d00500a0:	2209      	movs	r2, #9
d00500a2:	4603      	mov	r3, r0
d00500a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00500a8:	601a      	str	r2, [r3, #0]
d00500aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00500ac:	d005f964 	.word	0xd005f964
d00500b0:	2001f000 	.word	0x2001f000

d00500b4 <_read>:
d00500b4:	b508      	push	{r3, lr}
d00500b6:	f00a fc09 	bl	d005a8cc <__errno>
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
d0050102:	f00a fbe3 	bl	d005a8cc <__errno>
d0050106:	220c      	movs	r2, #12
d0050108:	4603      	mov	r3, r0
d005010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005010e:	601a      	str	r2, [r3, #0]
d0050110:	bd10      	pop	{r4, pc}
d0050112:	bf00      	nop
d0050114:	d005f960 	.word	0xd005f960
d0050118:	d0103ed0 	.word	0xd0103ed0
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
d0050184:	f00a fde8 	bl	d005ad58 <memcmp>
d0050188:	b950      	cbnz	r0, d00501a0 <LoadSFX+0x6c>
d005018a:	2204      	movs	r2, #4
d005018c:	492c      	ldr	r1, [pc, #176]	; (d0050240 <LoadSFX+0x10c>)
d005018e:	a805      	add	r0, sp, #20
d0050190:	f00a fde2 	bl	d005ad58 <memcmp>
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
d00501c8:	f00a fdb6 	bl	d005ad38 <malloc>
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
d005023c:	d005cb78 	.word	0xd005cb78
d0050240:	d005cb80 	.word	0xd005cb80

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
d00502b2:	f00c f929 	bl	d005c508 <atan2f>
d00502b6:	eef1 0ac9 	vsqrt.f32	s1, s18
d00502ba:	eddf 7a36 	vldr	s15, [pc, #216]	; d0050394 <sr_steer_camera_to_tangent+0x150>
d00502be:	eef0 9a40 	vmov.f32	s19, s0
d00502c2:	eeb1 0a4a 	vneg.f32	s0, s20
d00502c6:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d00502ca:	f00c f91d 	bl	d005c508 <atan2f>
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
d0050358:	f005 bf48 	b.w	d00561ec <cameraRotate>
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
d0050ea6:	f002 f819 	bl	d0052edc <initDepthBandMem>
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
d0050ef0:	d00f9e00 	.word	0xd00f9e00
d0050ef4:	d00f9de0 	.word	0xd00f9de0

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
d0050f42:	f006 fe7d 	bl	d0057c40 <lightEnable>
d0050f46:	4628      	mov	r0, r5
d0050f48:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d00511f4 <weatherLightning+0x2fc>
d0050f4c:	f006 ff0e 	bl	d0057d6c <lightSetIntensity>
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
d0050fce:	f006 fe37 	bl	d0057c40 <lightEnable>
d0050fd2:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d0051200 <weatherLightning+0x308>
d0050fd6:	ee07 4a90 	vmov	s15, r4
d0050fda:	ed9a 0a00 	vldr	s0, [sl]
d0050fde:	4628      	mov	r0, r5
d0050fe0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050fe4:	eea7 0a87 	vfma.f32	s0, s15, s14
d0050fe8:	f006 fec0 	bl	d0057d6c <lightSetIntensity>
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
d0051050:	f006 fdf6 	bl	d0057c40 <lightEnable>
d0051054:	4628      	mov	r0, r5
d0051056:	ed9f 0a67 	vldr	s0, [pc, #412]	; d00511f4 <weatherLightning+0x2fc>
d005105a:	f006 fe87 	bl	d0057d6c <lightSetIntensity>
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
d00511ce:	f006 fd37 	bl	d0057c40 <lightEnable>
d00511d2:	4628      	mov	r0, r5
d00511d4:	ed9f 0a07 	vldr	s0, [pc, #28]	; d00511f4 <weatherLightning+0x2fc>
d00511d8:	f006 fdc8 	bl	d0057d6c <lightSetIntensity>
d00511dc:	2300      	movs	r3, #0
d00511de:	603b      	str	r3, [r7, #0]
d00511e0:	e6c0      	b.n	d0050f64 <weatherLightning+0x6c>
d00511e2:	bf00      	nop
d00511e4:	3dcccccd 	.word	0x3dcccccd
d00511e8:	d005f8a8 	.word	0xd005f8a8
d00511ec:	d005fa14 	.word	0xd005fa14
d00511f0:	d005f8a0 	.word	0xd005f8a0
d00511f4:	00000000 	.word	0x00000000
d00511f8:	3c83126f 	.word	0x3c83126f
d00511fc:	d005f9e8 	.word	0xd005f9e8
d0051200:	3ab3e71b 	.word	0x3ab3e71b
d0051204:	d005f9ec 	.word	0xd005f9ec
d0051208:	38cd000c 	.word	0x38cd000c
d005120c:	3ca3d70a 	.word	0x3ca3d70a
d0051210:	d005fa18 	.word	0xd005fa18
d0051214:	3ad9d00e 	.word	0x3ad9d00e
d0051218:	3e99999a 	.word	0x3e99999a
d005121c:	3b33e71b 	.word	0x3b33e71b
d0051220:	3f266666 	.word	0x3f266666
d0051224:	3776000e 	.word	0x3776000e
d0051228:	3ccccccd 	.word	0x3ccccccd
d005122c:	d005f9e4 	.word	0xd005f9e4
d0051230:	cccccccd 	.word	0xcccccccd
d0051234:	3aace269 	.word	0x3aace269
d0051238:	3f4ccccd 	.word	0x3f4ccccd

d005123c <InitLasers>:
d005123c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0051240:	2230      	movs	r2, #48	; 0x30
d0051242:	2100      	movs	r1, #0
d0051244:	484e      	ldr	r0, [pc, #312]	; (d0051380 <InitLasers+0x144>)
d0051246:	f04f 0800 	mov.w	r8, #0
d005124a:	4d4e      	ldr	r5, [pc, #312]	; (d0051384 <InitLasers+0x148>)
d005124c:	4e4e      	ldr	r6, [pc, #312]	; (d0051388 <InitLasers+0x14c>)
d005124e:	ed2d 8b02 	vpush	{d8}
d0051252:	b097      	sub	sp, #92	; 0x5c
d0051254:	ed9f 8a4d 	vldr	s16, [pc, #308]	; d005138c <InitLasers+0x150>
d0051258:	f009 fd9a 	bl	d005ad90 <memset>
d005125c:	2230      	movs	r2, #48	; 0x30
d005125e:	2100      	movs	r1, #0
d0051260:	484b      	ldr	r0, [pc, #300]	; (d0051390 <InitLasers+0x154>)
d0051262:	f009 fd95 	bl	d005ad90 <memset>
d0051266:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d005126a:	466c      	mov	r4, sp
d005126c:	4668      	mov	r0, sp
d005126e:	ed9f 1a49 	vldr	s2, [pc, #292]	; d0051394 <InitLasers+0x158>
d0051272:	466f      	mov	r7, sp
d0051274:	eeb0 0a60 	vmov.f32	s0, s1
d0051278:	f005 ffd8 	bl	d005722c <createBox>
d005127c:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d0051280:	ed9f 1a44 	vldr	s2, [pc, #272]	; d0051394 <InitLasers+0x158>
d0051284:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051286:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051288:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d005128a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d005128c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d005128e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051290:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0051294:	eeb0 0a60 	vmov.f32	s0, s1
d0051298:	f1a5 0930 	sub.w	r9, r5, #48	; 0x30
d005129c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d00512a0:	4668      	mov	r0, sp
d00512a2:	f005 ffc3 	bl	d005722c <createBox>
d00512a6:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00512aa:	ed9f 2a38 	vldr	s4, [pc, #224]	; d005138c <InitLasers+0x150>
d00512ae:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d00512b0:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d00512b2:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d00512b4:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d00512b6:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d00512b8:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d00512ba:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d00512be:	eeb0 1a61 	vmov.f32	s2, s3
d00512c2:	4c2f      	ldr	r4, [pc, #188]	; (d0051380 <InitLasers+0x144>)
d00512c4:	eef0 0a61 	vmov.f32	s1, s3
d00512c8:	eeb0 0a61 	vmov.f32	s0, s3
d00512cc:	f104 0730 	add.w	r7, r4, #48	; 0x30
d00512d0:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d00512d4:	4648      	mov	r0, r9
d00512d6:	f001 fdf5 	bl	d0052ec4 <meshSetMaterial>
d00512da:	2122      	movs	r1, #34	; 0x22
d00512dc:	4648      	mov	r0, r9
d00512de:	f005 feb7 	bl	d0057050 <meshColour>
d00512e2:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00512e6:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d00512ea:	eeb0 2a48 	vmov.f32	s4, s16
d00512ee:	eeb0 1a61 	vmov.f32	s2, s3
d00512f2:	eef0 0a61 	vmov.f32	s1, s3
d00512f6:	eeb0 0a61 	vmov.f32	s0, s3
d00512fa:	f001 fde3 	bl	d0052ec4 <meshSetMaterial>
d00512fe:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d0051302:	2127      	movs	r1, #39	; 0x27
d0051304:	f005 fea4 	bl	d0057050 <meshColour>
d0051308:	eddf 0a20 	vldr	s1, [pc, #128]	; d005138c <InitLasers+0x150>
d005130c:	eeb0 1a48 	vmov.f32	s2, s16
d0051310:	3406      	adds	r4, #6
d0051312:	eeb0 0a60 	vmov.f32	s0, s1
d0051316:	f004 fb6f 	bl	d00559f8 <vec3>
d005131a:	4648      	mov	r0, r9
d005131c:	f005 fdbc 	bl	d0056e98 <entityWorldSpawn>
d0051320:	f804 8c06 	strb.w	r8, [r4, #-6]
d0051324:	f824 0c02 	strh.w	r0, [r4, #-2]
d0051328:	2100      	movs	r1, #0
d005132a:	f824 8c04 	strh.w	r8, [r4, #-4]
d005132e:	b280      	uxth	r0, r0
d0051330:	f006 fa12 	bl	d0057758 <entityVisible>
d0051334:	42bc      	cmp	r4, r7
d0051336:	d1e7      	bne.n	d0051308 <InitLasers+0xcc>
d0051338:	4c15      	ldr	r4, [pc, #84]	; (d0051390 <InitLasers+0x154>)
d005133a:	2500      	movs	r5, #0
d005133c:	ed9f 8a13 	vldr	s16, [pc, #76]	; d005138c <InitLasers+0x150>
d0051340:	f104 0730 	add.w	r7, r4, #48	; 0x30
d0051344:	4e10      	ldr	r6, [pc, #64]	; (d0051388 <InitLasers+0x14c>)
d0051346:	eddf 0a11 	vldr	s1, [pc, #68]	; d005138c <InitLasers+0x150>
d005134a:	eeb0 1a48 	vmov.f32	s2, s16
d005134e:	3406      	adds	r4, #6
d0051350:	eeb0 0a60 	vmov.f32	s0, s1
d0051354:	f004 fb50 	bl	d00559f8 <vec3>
d0051358:	4630      	mov	r0, r6
d005135a:	f005 fd9d 	bl	d0056e98 <entityWorldSpawn>
d005135e:	f804 5c06 	strb.w	r5, [r4, #-6]
d0051362:	f824 0c02 	strh.w	r0, [r4, #-2]
d0051366:	2100      	movs	r1, #0
d0051368:	f824 5c04 	strh.w	r5, [r4, #-4]
d005136c:	b280      	uxth	r0, r0
d005136e:	f006 f9f3 	bl	d0057758 <entityVisible>
d0051372:	42bc      	cmp	r4, r7
d0051374:	d1e7      	bne.n	d0051346 <InitLasers+0x10a>
d0051376:	b017      	add	sp, #92	; 0x5c
d0051378:	ecbd 8b02 	vpop	{d8}
d005137c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0051380:	d00f9dac 	.word	0xd00f9dac
d0051384:	d00f9ce0 	.word	0xd00f9ce0
d0051388:	d00f9e40 	.word	0xd00f9e40
d005138c:	00000000 	.word	0x00000000
d0051390:	d00f9e80 	.word	0xd00f9e80
d0051394:	42480000 	.word	0x42480000

d0051398 <FireTurret>:
d0051398:	b530      	push	{r4, r5, lr}
d005139a:	ed2d 8b02 	vpush	{d8}
d005139e:	b091      	sub	sp, #68	; 0x44
d00513a0:	eeb0 8a60 	vmov.f32	s16, s1
d00513a4:	4604      	mov	r4, r0
d00513a6:	ed8d 0a01 	vstr	s0, [sp, #4]
d00513aa:	ed8d 1a03 	vstr	s2, [sp, #12]
d00513ae:	f005 fdd9 	bl	d0056f64 <entityGetPosition>
d00513b2:	eef0 6a40 	vmov.f32	s13, s0
d00513b6:	4620      	mov	r0, r4
d00513b8:	eeb0 7a60 	vmov.f32	s14, s1
d00513bc:	eddf 0a3b 	vldr	s1, [pc, #236]	; d00514ac <FireTurret+0x114>
d00513c0:	eef0 7a41 	vmov.f32	s15, s2
d00513c4:	ed9d 0a01 	vldr	s0, [sp, #4]
d00513c8:	ee78 0a60 	vsub.f32	s1, s16, s1
d00513cc:	ed9d 1a03 	vldr	s2, [sp, #12]
d00513d0:	2100      	movs	r1, #0
d00513d2:	edcd 6a04 	vstr	s13, [sp, #16]
d00513d6:	ed8d 7a05 	vstr	s14, [sp, #20]
d00513da:	edcd 7a06 	vstr	s15, [sp, #24]
d00513de:	f006 f935 	bl	d005764c <entityLookAtPosition>
d00513e2:	4b33      	ldr	r3, [pc, #204]	; (d00514b0 <FireTurret+0x118>)
d00513e4:	ed8d 0a07 	vstr	s0, [sp, #28]
d00513e8:	781a      	ldrb	r2, [r3, #0]
d00513ea:	edcd 0a08 	vstr	s1, [sp, #32]
d00513ee:	b1d2      	cbz	r2, d0051426 <FireTurret+0x8e>
d00513f0:	799a      	ldrb	r2, [r3, #6]
d00513f2:	2a00      	cmp	r2, #0
d00513f4:	d04d      	beq.n	d0051492 <FireTurret+0xfa>
d00513f6:	7b1a      	ldrb	r2, [r3, #12]
d00513f8:	2a00      	cmp	r2, #0
d00513fa:	d04c      	beq.n	d0051496 <FireTurret+0xfe>
d00513fc:	7c9a      	ldrb	r2, [r3, #18]
d00513fe:	2a00      	cmp	r2, #0
d0051400:	d04b      	beq.n	d005149a <FireTurret+0x102>
d0051402:	7e1a      	ldrb	r2, [r3, #24]
d0051404:	2a00      	cmp	r2, #0
d0051406:	d04a      	beq.n	d005149e <FireTurret+0x106>
d0051408:	7f9a      	ldrb	r2, [r3, #30]
d005140a:	2a00      	cmp	r2, #0
d005140c:	d049      	beq.n	d00514a2 <FireTurret+0x10a>
d005140e:	f893 2024 	ldrb.w	r2, [r3, #36]	; 0x24
d0051412:	b13a      	cbz	r2, d0051424 <FireTurret+0x8c>
d0051414:	f893 202a 	ldrb.w	r2, [r3, #42]	; 0x2a
d0051418:	2a00      	cmp	r2, #0
d005141a:	d044      	beq.n	d00514a6 <FireTurret+0x10e>
d005141c:	b011      	add	sp, #68	; 0x44
d005141e:	ecbd 8b02 	vpop	{d8}
d0051422:	bd30      	pop	{r4, r5, pc}
d0051424:	2206      	movs	r2, #6
d0051426:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d005142a:	2132      	movs	r1, #50	; 0x32
d005142c:	2501      	movs	r5, #1
d005142e:	4620      	mov	r0, r4
d0051430:	eb03 0442 	add.w	r4, r3, r2, lsl #1
d0051434:	f803 5012 	strb.w	r5, [r3, r2, lsl #1]
d0051438:	8061      	strh	r1, [r4, #2]
d005143a:	f005 fdb1 	bl	d0056fa0 <entityGetForward>
d005143e:	eddf 7a1b 	vldr	s15, [pc, #108]	; d00514ac <FireTurret+0x114>
d0051442:	eddd 0a05 	vldr	s1, [sp, #20]
d0051446:	ed9d 0a04 	vldr	s0, [sp, #16]
d005144a:	ee70 0aa7 	vadd.f32	s1, s1, s15
d005144e:	ed9d 1a06 	vldr	s2, [sp, #24]
d0051452:	88a0      	ldrh	r0, [r4, #4]
d0051454:	f005 fd66 	bl	d0056f24 <entitySetPosition>
d0051458:	ed9f 1a16 	vldr	s2, [pc, #88]	; d00514b4 <FireTurret+0x11c>
d005145c:	4629      	mov	r1, r5
d005145e:	ed9d 0a08 	vldr	s0, [sp, #32]
d0051462:	eef0 0a41 	vmov.f32	s1, s2
d0051466:	88a0      	ldrh	r0, [r4, #4]
d0051468:	f005 fed0 	bl	d005720c <entityRotation>
d005146c:	ed9f 1a11 	vldr	s2, [pc, #68]	; d00514b4 <FireTurret+0x11c>
d0051470:	88a0      	ldrh	r0, [r4, #4]
d0051472:	2100      	movs	r1, #0
d0051474:	eeb0 0a41 	vmov.f32	s0, s2
d0051478:	eddd 0a07 	vldr	s1, [sp, #28]
d005147c:	f005 fec6 	bl	d005720c <entityRotation>
d0051480:	4629      	mov	r1, r5
d0051482:	88a0      	ldrh	r0, [r4, #4]
d0051484:	b011      	add	sp, #68	; 0x44
d0051486:	ecbd 8b02 	vpop	{d8}
d005148a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005148e:	f006 b963 	b.w	d0057758 <entityVisible>
d0051492:	2201      	movs	r2, #1
d0051494:	e7c7      	b.n	d0051426 <FireTurret+0x8e>
d0051496:	2202      	movs	r2, #2
d0051498:	e7c5      	b.n	d0051426 <FireTurret+0x8e>
d005149a:	2203      	movs	r2, #3
d005149c:	e7c3      	b.n	d0051426 <FireTurret+0x8e>
d005149e:	2204      	movs	r2, #4
d00514a0:	e7c1      	b.n	d0051426 <FireTurret+0x8e>
d00514a2:	2205      	movs	r2, #5
d00514a4:	e7bf      	b.n	d0051426 <FireTurret+0x8e>
d00514a6:	2207      	movs	r2, #7
d00514a8:	e7bd      	b.n	d0051426 <FireTurret+0x8e>
d00514aa:	bf00      	nop
d00514ac:	42480000 	.word	0x42480000
d00514b0:	d00f9dac 	.word	0xd00f9dac
d00514b4:	00000000 	.word	0x00000000

d00514b8 <UpdateTurretTest.part.0>:
d00514b8:	b500      	push	{lr}
d00514ba:	b085      	sub	sp, #20
d00514bc:	f009 fd1a 	bl	d005aef4 <rand>
d00514c0:	4a24      	ldr	r2, [pc, #144]	; (d0051554 <UpdateTurretTest.part.0+0x9c>)
d00514c2:	fb82 3200 	smull	r3, r2, r2, r0
d00514c6:	17c3      	asrs	r3, r0, #31
d00514c8:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d00514cc:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00514d0:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d00514d4:	1ac0      	subs	r0, r0, r3
d00514d6:	2802      	cmp	r0, #2
d00514d8:	dc1f      	bgt.n	d005151a <UpdateTurretTest.part.0+0x62>
d00514da:	4b1f      	ldr	r3, [pc, #124]	; (d0051558 <UpdateTurretTest.part.0+0xa0>)
d00514dc:	6818      	ldr	r0, [r3, #0]
d00514de:	f005 fd41 	bl	d0056f64 <entityGetPosition>
d00514e2:	4b1e      	ldr	r3, [pc, #120]	; (d005155c <UpdateTurretTest.part.0+0xa4>)
d00514e4:	8818      	ldrh	r0, [r3, #0]
d00514e6:	f7ff ff57 	bl	d0051398 <FireTurret>
d00514ea:	4a1d      	ldr	r2, [pc, #116]	; (d0051560 <UpdateTurretTest.part.0+0xa8>)
d00514ec:	8813      	ldrh	r3, [r2, #0]
d00514ee:	3b01      	subs	r3, #1
d00514f0:	b21b      	sxth	r3, r3
d00514f2:	2b00      	cmp	r3, #0
d00514f4:	8013      	strh	r3, [r2, #0]
d00514f6:	dd1c      	ble.n	d0051532 <UpdateTurretTest.part.0+0x7a>
d00514f8:	f009 fcfc 	bl	d005aef4 <rand>
d00514fc:	4a19      	ldr	r2, [pc, #100]	; (d0051564 <UpdateTurretTest.part.0+0xac>)
d00514fe:	491a      	ldr	r1, [pc, #104]	; (d0051568 <UpdateTurretTest.part.0+0xb0>)
d0051500:	fb82 3200 	smull	r3, r2, r2, r0
d0051504:	17c3      	asrs	r3, r0, #31
d0051506:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d005150a:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d005150e:	1ac0      	subs	r0, r0, r3
d0051510:	3004      	adds	r0, #4
d0051512:	8008      	strh	r0, [r1, #0]
d0051514:	b005      	add	sp, #20
d0051516:	f85d fb04 	ldr.w	pc, [sp], #4
d005151a:	4b14      	ldr	r3, [pc, #80]	; (d005156c <UpdateTurretTest.part.0+0xb4>)
d005151c:	4a0f      	ldr	r2, [pc, #60]	; (d005155c <UpdateTurretTest.part.0+0xa4>)
d005151e:	ed93 0a00 	vldr	s0, [r3]
d0051522:	edd3 0a01 	vldr	s1, [r3, #4]
d0051526:	ed93 1a02 	vldr	s2, [r3, #8]
d005152a:	8810      	ldrh	r0, [r2, #0]
d005152c:	f7ff ff34 	bl	d0051398 <FireTurret>
d0051530:	e7db      	b.n	d00514ea <UpdateTurretTest.part.0+0x32>
d0051532:	f009 fcdf 	bl	d005aef4 <rand>
d0051536:	4b0e      	ldr	r3, [pc, #56]	; (d0051570 <UpdateTurretTest.part.0+0xb8>)
d0051538:	4a0b      	ldr	r2, [pc, #44]	; (d0051568 <UpdateTurretTest.part.0+0xb0>)
d005153a:	fb83 1300 	smull	r1, r3, r3, r0
d005153e:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0051542:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0051546:	eba0 0043 	sub.w	r0, r0, r3, lsl #1
d005154a:	300f      	adds	r0, #15
d005154c:	8010      	strh	r0, [r2, #0]
d005154e:	b005      	add	sp, #20
d0051550:	f85d fb04 	ldr.w	pc, [sp], #4
d0051554:	2e8ba2e9 	.word	0x2e8ba2e9
d0051558:	d005f9e0 	.word	0xd005f9e0
d005155c:	d005fa34 	.word	0xd005fa34
d0051560:	d005fa38 	.word	0xd005fa38
d0051564:	66666667 	.word	0x66666667
d0051568:	d005fa3a 	.word	0xd005fa3a
d005156c:	d005f980 	.word	0xd005f980
d0051570:	2aaaaaab 	.word	0x2aaaaaab

d0051574 <FirePlayerLaser>:
d0051574:	b570      	push	{r4, r5, r6, lr}
d0051576:	4db0      	ldr	r5, [pc, #704]	; (d0051838 <FirePlayerLaser+0x2c4>)
d0051578:	2100      	movs	r1, #0
d005157a:	4cb0      	ldr	r4, [pc, #704]	; (d005183c <FirePlayerLaser+0x2c8>)
d005157c:	4628      	mov	r0, r5
d005157e:	ed2d 8b06 	vpush	{d8-d10}
d0051582:	b086      	sub	sp, #24
d0051584:	f004 ff0e 	bl	d00563a4 <cameraGetRotation>
d0051588:	eeb3 5a0e 	vmov.f32	s10, #62	; 0x41f00000  30.0
d005158c:	edd5 7a0e 	vldr	s15, [r5, #56]	; 0x38
d0051590:	eeb9 6a00 	vmov.f32	s12, #144	; 0xc0800000 -4.0
d0051594:	edd5 6a0c 	vldr	s13, [r5, #48]	; 0x30
d0051598:	eef0 9a60 	vmov.f32	s19, s1
d005159c:	ee67 7a85 	vmul.f32	s15, s15, s10
d00515a0:	ed95 7a0d 	vldr	s14, [r5, #52]	; 0x34
d00515a4:	ee66 6a85 	vmul.f32	s13, s13, s10
d00515a8:	eddf 5aa5 	vldr	s11, [pc, #660]	; d0051840 <FirePlayerLaser+0x2cc>
d00515ac:	ee27 7a05 	vmul.f32	s14, s14, s10
d00515b0:	edd5 3a08 	vldr	s7, [r5, #32]
d00515b4:	eeb0 4a67 	vmov.f32	s8, s15
d00515b8:	edd5 2a06 	vldr	s5, [r5, #24]
d00515bc:	eef0 4a66 	vmov.f32	s9, s13
d00515c0:	ed95 3a07 	vldr	s6, [r5, #28]
d00515c4:	eeb0 5a47 	vmov.f32	s10, s14
d00515c8:	edd5 1a09 	vldr	s3, [r5, #36]	; 0x24
d00515cc:	eea3 4aa5 	vfma.f32	s8, s7, s11
d00515d0:	ed95 9a00 	vldr	s18, [r5]
d00515d4:	eee2 4aa5 	vfma.f32	s9, s5, s11
d00515d8:	edd5 8a01 	vldr	s17, [r5, #4]
d00515dc:	eea3 5a25 	vfma.f32	s10, s6, s11
d00515e0:	ed95 2a0b 	vldr	s4, [r5, #44]	; 0x2c
d00515e4:	ed95 8a02 	vldr	s16, [r5, #8]
d00515e8:	eee1 6a86 	vfma.f32	s13, s3, s12
d00515ec:	eee2 7a06 	vfma.f32	s15, s4, s12
d00515f0:	7823      	ldrb	r3, [r4, #0]
d00515f2:	eeb0 aa40 	vmov.f32	s20, s0
d00515f6:	edcd 0a01 	vstr	s1, [sp, #4]
d00515fa:	eef0 5a44 	vmov.f32	s11, s8
d00515fe:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d0051602:	ee74 4a89 	vadd.f32	s9, s9, s18
d0051606:	ed8d 1a02 	vstr	s2, [sp, #8]
d005160a:	eea4 7a06 	vfma.f32	s14, s8, s12
d005160e:	ed8d 0a00 	vstr	s0, [sp]
d0051612:	ee35 5a28 	vadd.f32	s10, s10, s17
d0051616:	ee75 5a88 	vadd.f32	s11, s11, s16
d005161a:	eee1 4a86 	vfma.f32	s9, s3, s12
d005161e:	eea4 5a06 	vfma.f32	s10, s8, s12
d0051622:	ed9f 4a88 	vldr	s8, [pc, #544]	; d0051844 <FirePlayerLaser+0x2d0>
d0051626:	eee2 5a06 	vfma.f32	s11, s4, s12
d005162a:	ee36 9a89 	vadd.f32	s18, s13, s18
d005162e:	ee77 8a28 	vadd.f32	s17, s14, s17
d0051632:	ee37 8a88 	vadd.f32	s16, s15, s16
d0051636:	eea2 9a84 	vfma.f32	s18, s5, s8
d005163a:	edcd 4a03 	vstr	s9, [sp, #12]
d005163e:	eee3 8a04 	vfma.f32	s17, s6, s8
d0051642:	ed8d 5a04 	vstr	s10, [sp, #16]
d0051646:	eea3 8a84 	vfma.f32	s16, s7, s8
d005164a:	edcd 5a05 	vstr	s11, [sp, #20]
d005164e:	2b00      	cmp	r3, #0
d0051650:	f000 80af 	beq.w	d00517b2 <FirePlayerLaser+0x23e>
d0051654:	79a3      	ldrb	r3, [r4, #6]
d0051656:	2b00      	cmp	r3, #0
d0051658:	f000 80d8 	beq.w	d005180c <FirePlayerLaser+0x298>
d005165c:	7b23      	ldrb	r3, [r4, #12]
d005165e:	2b00      	cmp	r3, #0
d0051660:	f000 80d8 	beq.w	d0051814 <FirePlayerLaser+0x2a0>
d0051664:	7ca3      	ldrb	r3, [r4, #18]
d0051666:	2b00      	cmp	r3, #0
d0051668:	f000 80d8 	beq.w	d005181c <FirePlayerLaser+0x2a8>
d005166c:	7e23      	ldrb	r3, [r4, #24]
d005166e:	2b00      	cmp	r3, #0
d0051670:	f000 80d8 	beq.w	d0051824 <FirePlayerLaser+0x2b0>
d0051674:	7fa3      	ldrb	r3, [r4, #30]
d0051676:	2b00      	cmp	r3, #0
d0051678:	f000 80d8 	beq.w	d005182c <FirePlayerLaser+0x2b8>
d005167c:	f894 3024 	ldrb.w	r3, [r4, #36]	; 0x24
d0051680:	2b00      	cmp	r3, #0
d0051682:	f000 8095 	beq.w	d00517b0 <FirePlayerLaser+0x23c>
d0051686:	f894 302a 	ldrb.w	r3, [r4, #42]	; 0x2a
d005168a:	2b00      	cmp	r3, #0
d005168c:	f000 80d2 	beq.w	d0051834 <FirePlayerLaser+0x2c0>
d0051690:	2500      	movs	r5, #0
d0051692:	7823      	ldrb	r3, [r4, #0]
d0051694:	ed8d 9a03 	vstr	s18, [sp, #12]
d0051698:	edcd 8a04 	vstr	s17, [sp, #16]
d005169c:	ed8d 8a05 	vstr	s16, [sp, #20]
d00516a0:	b30b      	cbz	r3, d00516e6 <FirePlayerLaser+0x172>
d00516a2:	79a3      	ldrb	r3, [r4, #6]
d00516a4:	2b00      	cmp	r3, #0
d00516a6:	f000 80af 	beq.w	d0051808 <FirePlayerLaser+0x294>
d00516aa:	7b23      	ldrb	r3, [r4, #12]
d00516ac:	2b00      	cmp	r3, #0
d00516ae:	f000 80af 	beq.w	d0051810 <FirePlayerLaser+0x29c>
d00516b2:	7ca3      	ldrb	r3, [r4, #18]
d00516b4:	2b00      	cmp	r3, #0
d00516b6:	f000 80af 	beq.w	d0051818 <FirePlayerLaser+0x2a4>
d00516ba:	7e23      	ldrb	r3, [r4, #24]
d00516bc:	2b00      	cmp	r3, #0
d00516be:	f000 80af 	beq.w	d0051820 <FirePlayerLaser+0x2ac>
d00516c2:	7fa3      	ldrb	r3, [r4, #30]
d00516c4:	2b00      	cmp	r3, #0
d00516c6:	f000 80af 	beq.w	d0051828 <FirePlayerLaser+0x2b4>
d00516ca:	f894 3024 	ldrb.w	r3, [r4, #36]	; 0x24
d00516ce:	b14b      	cbz	r3, d00516e4 <FirePlayerLaser+0x170>
d00516d0:	f894 302a 	ldrb.w	r3, [r4, #42]	; 0x2a
d00516d4:	2b00      	cmp	r3, #0
d00516d6:	f000 80ab 	beq.w	d0051830 <FirePlayerLaser+0x2bc>
d00516da:	bb75      	cbnz	r5, d005173a <FirePlayerLaser+0x1c6>
d00516dc:	b006      	add	sp, #24
d00516de:	ecbd 8b06 	vpop	{d8-d10}
d00516e2:	bd70      	pop	{r4, r5, r6, pc}
d00516e4:	2306      	movs	r3, #6
d00516e6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00516ea:	2232      	movs	r2, #50	; 0x32
d00516ec:	2601      	movs	r6, #1
d00516ee:	ed9d 0a03 	vldr	s0, [sp, #12]
d00516f2:	eb04 0543 	add.w	r5, r4, r3, lsl #1
d00516f6:	eddd 0a04 	vldr	s1, [sp, #16]
d00516fa:	f804 6013 	strb.w	r6, [r4, r3, lsl #1]
d00516fe:	806a      	strh	r2, [r5, #2]
d0051700:	ed9d 1a05 	vldr	s2, [sp, #20]
d0051704:	88a8      	ldrh	r0, [r5, #4]
d0051706:	f005 fc0d 	bl	d0056f24 <entitySetPosition>
d005170a:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d0051848 <FirePlayerLaser+0x2d4>
d005170e:	eeb0 0a4a 	vmov.f32	s0, s20
d0051712:	4631      	mov	r1, r6
d0051714:	eef0 0a41 	vmov.f32	s1, s2
d0051718:	88a8      	ldrh	r0, [r5, #4]
d005171a:	f005 fd77 	bl	d005720c <entityRotation>
d005171e:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d0051848 <FirePlayerLaser+0x2d4>
d0051722:	88a8      	ldrh	r0, [r5, #4]
d0051724:	2100      	movs	r1, #0
d0051726:	eef1 0a69 	vneg.f32	s1, s19
d005172a:	eeb0 0a41 	vmov.f32	s0, s2
d005172e:	f005 fd6d 	bl	d005720c <entityRotation>
d0051732:	4631      	mov	r1, r6
d0051734:	88a8      	ldrh	r0, [r5, #4]
d0051736:	f006 f80f 	bl	d0057758 <entityVisible>
d005173a:	4a44      	ldr	r2, [pc, #272]	; (d005184c <FirePlayerLaser+0x2d8>)
d005173c:	4c44      	ldr	r4, [pc, #272]	; (d0051850 <FirePlayerLaser+0x2dc>)
d005173e:	7813      	ldrb	r3, [r2, #0]
d0051740:	f1c3 0301 	rsb	r3, r3, #1
d0051744:	b2db      	uxtb	r3, r3
d0051746:	7013      	strb	r3, [r2, #0]
d0051748:	bb03      	cbnz	r3, d005178c <FirePlayerLaser+0x218>
d005174a:	7c23      	ldrb	r3, [r4, #16]
d005174c:	2004      	movs	r0, #4
d005174e:	7c62      	ldrb	r2, [r4, #17]
d0051750:	7ca1      	ldrb	r1, [r4, #18]
d0051752:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051756:	7ce2      	ldrb	r2, [r4, #19]
d0051758:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005175c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051760:	689b      	ldr	r3, [r3, #8]
d0051762:	689b      	ldr	r3, [r3, #8]
d0051764:	4798      	blx	r3
d0051766:	7c23      	ldrb	r3, [r4, #16]
d0051768:	2004      	movs	r0, #4
d005176a:	7c62      	ldrb	r2, [r4, #17]
d005176c:	7ca1      	ldrb	r1, [r4, #18]
d005176e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051772:	7ce2      	ldrb	r2, [r4, #19]
d0051774:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051778:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005177c:	689b      	ldr	r3, [r3, #8]
d005177e:	685b      	ldr	r3, [r3, #4]
d0051780:	b006      	add	sp, #24
d0051782:	ecbd 8b06 	vpop	{d8-d10}
d0051786:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d005178a:	4718      	bx	r3
d005178c:	7c23      	ldrb	r3, [r4, #16]
d005178e:	2003      	movs	r0, #3
d0051790:	7c62      	ldrb	r2, [r4, #17]
d0051792:	7ca1      	ldrb	r1, [r4, #18]
d0051794:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051798:	7ce2      	ldrb	r2, [r4, #19]
d005179a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005179e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00517a2:	689b      	ldr	r3, [r3, #8]
d00517a4:	689b      	ldr	r3, [r3, #8]
d00517a6:	4798      	blx	r3
d00517a8:	7c23      	ldrb	r3, [r4, #16]
d00517aa:	2003      	movs	r0, #3
d00517ac:	7c62      	ldrb	r2, [r4, #17]
d00517ae:	e7dd      	b.n	d005176c <FirePlayerLaser+0x1f8>
d00517b0:	2306      	movs	r3, #6
d00517b2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00517b6:	2232      	movs	r2, #50	; 0x32
d00517b8:	2501      	movs	r5, #1
d00517ba:	ed9d 0a03 	vldr	s0, [sp, #12]
d00517be:	eb04 0643 	add.w	r6, r4, r3, lsl #1
d00517c2:	eddd 0a04 	vldr	s1, [sp, #16]
d00517c6:	f804 5013 	strb.w	r5, [r4, r3, lsl #1]
d00517ca:	8072      	strh	r2, [r6, #2]
d00517cc:	ed9d 1a05 	vldr	s2, [sp, #20]
d00517d0:	88b0      	ldrh	r0, [r6, #4]
d00517d2:	f005 fba7 	bl	d0056f24 <entitySetPosition>
d00517d6:	ed9f 1a1c 	vldr	s2, [pc, #112]	; d0051848 <FirePlayerLaser+0x2d4>
d00517da:	eeb0 0a4a 	vmov.f32	s0, s20
d00517de:	4629      	mov	r1, r5
d00517e0:	eef0 0a41 	vmov.f32	s1, s2
d00517e4:	88b0      	ldrh	r0, [r6, #4]
d00517e6:	f005 fd11 	bl	d005720c <entityRotation>
d00517ea:	ed9f 1a17 	vldr	s2, [pc, #92]	; d0051848 <FirePlayerLaser+0x2d4>
d00517ee:	88b0      	ldrh	r0, [r6, #4]
d00517f0:	eef1 0a69 	vneg.f32	s1, s19
d00517f4:	eeb0 0a41 	vmov.f32	s0, s2
d00517f8:	2100      	movs	r1, #0
d00517fa:	f005 fd07 	bl	d005720c <entityRotation>
d00517fe:	4629      	mov	r1, r5
d0051800:	88b0      	ldrh	r0, [r6, #4]
d0051802:	f005 ffa9 	bl	d0057758 <entityVisible>
d0051806:	e744      	b.n	d0051692 <FirePlayerLaser+0x11e>
d0051808:	2301      	movs	r3, #1
d005180a:	e76c      	b.n	d00516e6 <FirePlayerLaser+0x172>
d005180c:	2301      	movs	r3, #1
d005180e:	e7d0      	b.n	d00517b2 <FirePlayerLaser+0x23e>
d0051810:	2302      	movs	r3, #2
d0051812:	e768      	b.n	d00516e6 <FirePlayerLaser+0x172>
d0051814:	2302      	movs	r3, #2
d0051816:	e7cc      	b.n	d00517b2 <FirePlayerLaser+0x23e>
d0051818:	2303      	movs	r3, #3
d005181a:	e764      	b.n	d00516e6 <FirePlayerLaser+0x172>
d005181c:	2303      	movs	r3, #3
d005181e:	e7c8      	b.n	d00517b2 <FirePlayerLaser+0x23e>
d0051820:	2304      	movs	r3, #4
d0051822:	e760      	b.n	d00516e6 <FirePlayerLaser+0x172>
d0051824:	2304      	movs	r3, #4
d0051826:	e7c4      	b.n	d00517b2 <FirePlayerLaser+0x23e>
d0051828:	2305      	movs	r3, #5
d005182a:	e75c      	b.n	d00516e6 <FirePlayerLaser+0x172>
d005182c:	2305      	movs	r3, #5
d005182e:	e7c0      	b.n	d00517b2 <FirePlayerLaser+0x23e>
d0051830:	2307      	movs	r3, #7
d0051832:	e758      	b.n	d00516e6 <FirePlayerLaser+0x172>
d0051834:	2307      	movs	r3, #7
d0051836:	e7bc      	b.n	d00517b2 <FirePlayerLaser+0x23e>
d0051838:	d005f980 	.word	0xd005f980
d005183c:	d00f9e80 	.word	0xd00f9e80
d0051840:	c2680000 	.word	0xc2680000
d0051844:	42680000 	.word	0x42680000
d0051848:	00000000 	.word	0x00000000
d005184c:	d005fa11 	.word	0xd005fa11
d0051850:	2001f000 	.word	0x2001f000

d0051854 <UpdateLasers>:
d0051854:	b5f0      	push	{r4, r5, r6, r7, lr}
d0051856:	4c31      	ldr	r4, [pc, #196]	; (d005191c <UpdateLasers+0xc8>)
d0051858:	2600      	movs	r6, #0
d005185a:	ed2d 8b02 	vpush	{d8}
d005185e:	ed9f 8a30 	vldr	s16, [pc, #192]	; d0051920 <UpdateLasers+0xcc>
d0051862:	b089      	sub	sp, #36	; 0x24
d0051864:	f104 0530 	add.w	r5, r4, #48	; 0x30
d0051868:	ee20 8a08 	vmul.f32	s16, s0, s16
d005186c:	e007      	b.n	d005187e <UpdateLasers+0x2a>
d005186e:	2100      	movs	r1, #0
d0051870:	88a0      	ldrh	r0, [r4, #4]
d0051872:	7026      	strb	r6, [r4, #0]
d0051874:	f005 ff70 	bl	d0057758 <entityVisible>
d0051878:	3406      	adds	r4, #6
d005187a:	42ac      	cmp	r4, r5
d005187c:	d012      	beq.n	d00518a4 <UpdateLasers+0x50>
d005187e:	7823      	ldrb	r3, [r4, #0]
d0051880:	2b00      	cmp	r3, #0
d0051882:	d0f9      	beq.n	d0051878 <UpdateLasers+0x24>
d0051884:	8863      	ldrh	r3, [r4, #2]
d0051886:	2b00      	cmp	r3, #0
d0051888:	d0f1      	beq.n	d005186e <UpdateLasers+0x1a>
d005188a:	3b01      	subs	r3, #1
d005188c:	eeb0 0a48 	vmov.f32	s0, s16
d0051890:	88a0      	ldrh	r0, [r4, #4]
d0051892:	8063      	strh	r3, [r4, #2]
d0051894:	f005 fba6 	bl	d0056fe4 <entityMoveForward>
d0051898:	8863      	ldrh	r3, [r4, #2]
d005189a:	2b00      	cmp	r3, #0
d005189c:	d0e7      	beq.n	d005186e <UpdateLasers+0x1a>
d005189e:	3406      	adds	r4, #6
d00518a0:	42ac      	cmp	r4, r5
d00518a2:	d1ec      	bne.n	d005187e <UpdateLasers+0x2a>
d00518a4:	4c1f      	ldr	r4, [pc, #124]	; (d0051924 <UpdateLasers+0xd0>)
d00518a6:	4e20      	ldr	r6, [pc, #128]	; (d0051928 <UpdateLasers+0xd4>)
d00518a8:	f104 0530 	add.w	r5, r4, #48	; 0x30
d00518ac:	4f1f      	ldr	r7, [pc, #124]	; (d005192c <UpdateLasers+0xd8>)
d00518ae:	e007      	b.n	d00518c0 <UpdateLasers+0x6c>
d00518b0:	2100      	movs	r1, #0
d00518b2:	88a0      	ldrh	r0, [r4, #4]
d00518b4:	7021      	strb	r1, [r4, #0]
d00518b6:	f005 ff4f 	bl	d0057758 <entityVisible>
d00518ba:	3406      	adds	r4, #6
d00518bc:	42ac      	cmp	r4, r5
d00518be:	d019      	beq.n	d00518f4 <UpdateLasers+0xa0>
d00518c0:	7823      	ldrb	r3, [r4, #0]
d00518c2:	2b00      	cmp	r3, #0
d00518c4:	d0f9      	beq.n	d00518ba <UpdateLasers+0x66>
d00518c6:	8863      	ldrh	r3, [r4, #2]
d00518c8:	2b00      	cmp	r3, #0
d00518ca:	d0f1      	beq.n	d00518b0 <UpdateLasers+0x5c>
d00518cc:	3b01      	subs	r3, #1
d00518ce:	88a0      	ldrh	r0, [r4, #4]
d00518d0:	eeb0 0a48 	vmov.f32	s0, s16
d00518d4:	8063      	strh	r3, [r4, #2]
d00518d6:	f005 fb85 	bl	d0056fe4 <entityMoveForward>
d00518da:	2300      	movs	r3, #0
d00518dc:	aa02      	add	r2, sp, #8
d00518de:	6831      	ldr	r1, [r6, #0]
d00518e0:	88a0      	ldrh	r0, [r4, #4]
d00518e2:	f008 fb3f 	bl	d0059f64 <entitySweepRaycastTest>
d00518e6:	b948      	cbnz	r0, d00518fc <UpdateLasers+0xa8>
d00518e8:	8863      	ldrh	r3, [r4, #2]
d00518ea:	2b00      	cmp	r3, #0
d00518ec:	d0e0      	beq.n	d00518b0 <UpdateLasers+0x5c>
d00518ee:	3406      	adds	r4, #6
d00518f0:	42ac      	cmp	r4, r5
d00518f2:	d1e5      	bne.n	d00518c0 <UpdateLasers+0x6c>
d00518f4:	b009      	add	sp, #36	; 0x24
d00518f6:	ecbd 8b02 	vpop	{d8}
d00518fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00518fc:	2300      	movs	r3, #0
d00518fe:	6838      	ldr	r0, [r7, #0]
d0051900:	ed9d 1a04 	vldr	s2, [sp, #16]
d0051904:	eddd 0a03 	vldr	s1, [sp, #12]
d0051908:	ed9d 0a02 	vldr	s0, [sp, #8]
d005190c:	8063      	strh	r3, [r4, #2]
d005190e:	9001      	str	r0, [sp, #4]
d0051910:	f004 f872 	bl	d00559f8 <vec3>
d0051914:	9801      	ldr	r0, [sp, #4]
d0051916:	f005 fb05 	bl	d0056f24 <entitySetPosition>
d005191a:	e7e5      	b.n	d00518e8 <UpdateLasers+0x94>
d005191c:	d00f9dac 	.word	0xd00f9dac
d0051920:	44fa0000 	.word	0x44fa0000
d0051924:	d00f9e80 	.word	0xd00f9e80
d0051928:	d005fa08 	.word	0xd005fa08
d005192c:	d005fa04 	.word	0xd005fa04

d0051930 <main>:
d0051930:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051934:	ed2d 8b10 	vpush	{d8-d15}
d0051938:	f5ad 4d89 	sub.w	sp, sp, #17536	; 0x4480
d005193c:	4cc8      	ldr	r4, [pc, #800]	; (d0051c60 <main+0x330>)
d005193e:	f244 2557 	movw	r5, #16983	; 0x4257
d0051942:	ed9f 8ac8 	vldr	s16, [pc, #800]	; d0051c64 <main+0x334>
d0051946:	b095      	sub	sp, #84	; 0x54
d0051948:	f8df 9340 	ldr.w	r9, [pc, #832]	; d0051c8c <main+0x35c>
d005194c:	f7ff fa4a 	bl	d0050de4 <initSystem>
d0051950:	7c23      	ldrb	r3, [r4, #16]
d0051952:	7c62      	ldrb	r2, [r4, #17]
d0051954:	446d      	add	r5, sp
d0051956:	f894 c012 	ldrb.w	ip, [r4, #18]
d005195a:	2100      	movs	r1, #0
d005195c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051960:	7ce6      	ldrb	r6, [r4, #19]
d0051962:	f025 051f 	bic.w	r5, r5, #31
d0051966:	f8df b328 	ldr.w	fp, [pc, #808]	; d0051c90 <main+0x360>
d005196a:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d005196e:	f8df a324 	ldr.w	sl, [pc, #804]	; d0051c94 <main+0x364>
d0051972:	f505 72e0 	add.w	r2, r5, #448	; 0x1c0
d0051976:	f505 7000 	add.w	r0, r5, #512	; 0x200
d005197a:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d005197e:	f505 7680 	add.w	r6, r5, #256	; 0x100
d0051982:	9206      	str	r2, [sp, #24]
d0051984:	f505 72c0 	add.w	r2, r5, #384	; 0x180
d0051988:	685b      	ldr	r3, [r3, #4]
d005198a:	ee09 0a10 	vmov	s18, r0
d005198e:	48b6      	ldr	r0, [pc, #728]	; (d0051c68 <main+0x338>)
d0051990:	f505 7710 	add.w	r7, r5, #576	; 0x240
d0051994:	681b      	ldr	r3, [r3, #0]
d0051996:	f505 78a0 	add.w	r8, r5, #320	; 0x140
d005199a:	9207      	str	r2, [sp, #28]
d005199c:	eef0 9a48 	vmov.f32	s19, s16
d00519a0:	9608      	str	r6, [sp, #32]
d00519a2:	4798      	blx	r3
d00519a4:	7b23      	ldrb	r3, [r4, #12]
d00519a6:	2064      	movs	r0, #100	; 0x64
d00519a8:	7b62      	ldrb	r2, [r4, #13]
d00519aa:	7ba1      	ldrb	r1, [r4, #14]
d00519ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00519b0:	7be2      	ldrb	r2, [r4, #15]
d00519b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00519b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00519ba:	681b      	ldr	r3, [r3, #0]
d00519bc:	689b      	ldr	r3, [r3, #8]
d00519be:	4798      	blx	r3
d00519c0:	f004 fb9c 	bl	d00560fc <worldClear>
d00519c4:	f006 f936 	bl	d0057c34 <lightsClear>
d00519c8:	f004 f89c 	bl	d0055b04 <sb3dParticlesClear>
d00519cc:	f006 f9de 	bl	d0057d8c <setDefaultRenderMode>
d00519d0:	a81a      	add	r0, sp, #104	; 0x68
d00519d2:	f004 fbf1 	bl	d00561b8 <cameraCreate>
d00519d6:	a91a      	add	r1, sp, #104	; 0x68
d00519d8:	2260      	movs	r2, #96	; 0x60
d00519da:	48a4      	ldr	r0, [pc, #656]	; (d0051c6c <main+0x33c>)
d00519dc:	f009 f9ca 	bl	d005ad74 <memcpy>
d00519e0:	48a2      	ldr	r0, [pc, #648]	; (d0051c6c <main+0x33c>)
d00519e2:	eddf 0aa3 	vldr	s1, [pc, #652]	; d0051c70 <main+0x340>
d00519e6:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d0051c74 <main+0x344>
d00519ea:	f004 ff3b 	bl	d0056864 <cameraSetRange>
d00519ee:	eeb0 1a48 	vmov.f32	s2, s16
d00519f2:	eeb0 0a48 	vmov.f32	s0, s16
d00519f6:	eddf 0aa0 	vldr	s1, [pc, #640]	; d0051c78 <main+0x348>
d00519fa:	f003 fffd 	bl	d00559f8 <vec3>
d00519fe:	489b      	ldr	r0, [pc, #620]	; (d0051c6c <main+0x33c>)
d0051a00:	edcd 0a44 	vstr	s1, [sp, #272]	; 0x110
d0051a04:	ed8d 0a43 	vstr	s0, [sp, #268]	; 0x10c
d0051a08:	ed8d 1a45 	vstr	s2, [sp, #276]	; 0x114
d0051a0c:	f004 fbde 	bl	d00561cc <cameraSetPosition>
d0051a10:	4896      	ldr	r0, [pc, #600]	; (d0051c6c <main+0x33c>)
d0051a12:	f004 fb7b 	bl	d005610c <cameraNormalize>
d0051a16:	f50d 7cd2 	add.w	ip, sp, #420	; 0x1a4
d0051a1a:	f50d 7ec8 	add.w	lr, sp, #400	; 0x190
d0051a1e:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d0051a22:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0051a26:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d0051a2a:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0051a2e:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d0051a32:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0051a36:	e899 000f 	ldmia.w	r9, {r0, r1, r2, r3}
d0051a3a:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0051a3e:	f04f 437f 	mov.w	r3, #4278190080	; 0xff000000
d0051a42:	f109 0c10 	add.w	ip, r9, #16
d0051a46:	f109 0924 	add.w	r9, r9, #36	; 0x24
d0051a4a:	f8cb 3000 	str.w	r3, [fp]
d0051a4e:	f8cd e000 	str.w	lr, [sp]
d0051a52:	f8cb 3040 	str.w	r3, [fp, #64]	; 0x40
d0051a56:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0051a5a:	f8dc c000 	ldr.w	ip, [ip]
d0051a5e:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d0051a62:	4658      	mov	r0, fp
d0051a64:	f8ce c000 	str.w	ip, [lr]
d0051a68:	f04f 437f 	mov.w	r3, #4278190080	; 0xff000000
d0051a6c:	a969      	add	r1, sp, #420	; 0x1a4
d0051a6e:	2210      	movs	r2, #16
d0051a70:	f005 fe8c 	bl	d005778c <buildLightingCLUT>
d0051a74:	7b23      	ldrb	r3, [r4, #12]
d0051a76:	7b62      	ldrb	r2, [r4, #13]
d0051a78:	4658      	mov	r0, fp
d0051a7a:	7ba1      	ldrb	r1, [r4, #14]
d0051a7c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051a80:	7be2      	ldrb	r2, [r4, #15]
d0051a82:	f8df b214 	ldr.w	fp, [pc, #532]	; d0051c98 <main+0x368>
d0051a86:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051a8a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051a8e:	681b      	ldr	r3, [r3, #0]
d0051a90:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0051a92:	4798      	blx	r3
d0051a94:	eeb0 1a48 	vmov.f32	s2, s16
d0051a98:	eef0 0a48 	vmov.f32	s1, s16
d0051a9c:	eeb0 0a48 	vmov.f32	s0, s16
d0051aa0:	f003 ffaa 	bl	d00559f8 <vec3>
d0051aa4:	eddf 1a73 	vldr	s3, [pc, #460]	; d0051c74 <main+0x344>
d0051aa8:	2001      	movs	r0, #1
d0051aaa:	edcd 0a47 	vstr	s1, [sp, #284]	; 0x11c
d0051aae:	ed8d 0a46 	vstr	s0, [sp, #280]	; 0x118
d0051ab2:	ed8d 1a48 	vstr	s2, [sp, #288]	; 0x120
d0051ab6:	f006 f8d1 	bl	d0057c5c <addPointLight>
d0051aba:	ab37      	add	r3, sp, #220	; 0xdc
d0051abc:	9004      	str	r0, [sp, #16]
d0051abe:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0051ac2:	e899 0007 	ldmia.w	r9, {r0, r1, r2}
d0051ac6:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0051aca:	2001      	movs	r0, #1
d0051acc:	edd3 0a01 	vldr	s1, [r3, #4]
d0051ad0:	ed93 1a02 	vldr	s2, [r3, #8]
d0051ad4:	ed93 0a00 	vldr	s0, [r3]
d0051ad8:	f006 f8fc 	bl	d0057cd4 <addDirectionalLight>
d0051adc:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051ae0:	b2c3      	uxtb	r3, r0
d0051ae2:	461e      	mov	r6, r3
d0051ae4:	4618      	mov	r0, r3
d0051ae6:	9309      	str	r3, [sp, #36]	; 0x24
d0051ae8:	f006 f940 	bl	d0057d6c <lightSetIntensity>
d0051aec:	4630      	mov	r0, r6
d0051aee:	2100      	movs	r1, #0
d0051af0:	f006 f8a6 	bl	d0057c40 <lightEnable>
d0051af4:	4961      	ldr	r1, [pc, #388]	; (d0051c7c <main+0x34c>)
d0051af6:	4862      	ldr	r0, [pc, #392]	; (d0051c80 <main+0x350>)
d0051af8:	ae3d      	add	r6, sp, #244	; 0xf4
d0051afa:	f7fe fb1b 	bl	d0050134 <LoadSFX>
d0051afe:	f894 c010 	ldrb.w	ip, [r4, #16]
d0051b02:	f894 e011 	ldrb.w	lr, [r4, #17]
d0051b06:	4602      	mov	r2, r0
d0051b08:	7ca0      	ldrb	r0, [r4, #18]
d0051b0a:	2300      	movs	r3, #0
d0051b0c:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d0051b10:	495a      	ldr	r1, [pc, #360]	; (d0051c7c <main+0x34c>)
d0051b12:	f8ca 2000 	str.w	r2, [sl]
d0051b16:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d0051b1a:	7ce0      	ldrb	r0, [r4, #19]
d0051b1c:	6809      	ldr	r1, [r1, #0]
d0051b1e:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d0051b22:	4618      	mov	r0, r3
d0051b24:	f8dc c008 	ldr.w	ip, [ip, #8]
d0051b28:	f8dc 900c 	ldr.w	r9, [ip, #12]
d0051b2c:	47c8      	blx	r9
d0051b2e:	7c23      	ldrb	r3, [r4, #16]
d0051b30:	7c62      	ldrb	r2, [r4, #17]
d0051b32:	f644 6184 	movw	r1, #20100	; 0x4e84
d0051b36:	7ca0      	ldrb	r0, [r4, #18]
d0051b38:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b3c:	7ce2      	ldrb	r2, [r4, #19]
d0051b3e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051b42:	2000      	movs	r0, #0
d0051b44:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b48:	689b      	ldr	r3, [r3, #8]
d0051b4a:	691b      	ldr	r3, [r3, #16]
d0051b4c:	4798      	blx	r3
d0051b4e:	7c23      	ldrb	r3, [r4, #16]
d0051b50:	7c62      	ldrb	r2, [r4, #17]
d0051b52:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d0051b56:	7ca0      	ldrb	r0, [r4, #18]
d0051b58:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b5c:	7ce2      	ldrb	r2, [r4, #19]
d0051b5e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051b62:	2000      	movs	r0, #0
d0051b64:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b68:	689b      	ldr	r3, [r3, #8]
d0051b6a:	695b      	ldr	r3, [r3, #20]
d0051b6c:	4798      	blx	r3
d0051b6e:	7c23      	ldrb	r3, [r4, #16]
d0051b70:	7c62      	ldrb	r2, [r4, #17]
d0051b72:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d0051b76:	7ca0      	ldrb	r0, [r4, #18]
d0051b78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b7c:	7ce2      	ldrb	r2, [r4, #19]
d0051b7e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051b82:	2000      	movs	r0, #0
d0051b84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b88:	689b      	ldr	r3, [r3, #8]
d0051b8a:	699b      	ldr	r3, [r3, #24]
d0051b8c:	4798      	blx	r3
d0051b8e:	7c23      	ldrb	r3, [r4, #16]
d0051b90:	7c62      	ldrb	r2, [r4, #17]
d0051b92:	2100      	movs	r1, #0
d0051b94:	7ca0      	ldrb	r0, [r4, #18]
d0051b96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b9a:	7ce2      	ldrb	r2, [r4, #19]
d0051b9c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051ba0:	4608      	mov	r0, r1
d0051ba2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051ba6:	689b      	ldr	r3, [r3, #8]
d0051ba8:	6a1b      	ldr	r3, [r3, #32]
d0051baa:	4798      	blx	r3
d0051bac:	4935      	ldr	r1, [pc, #212]	; (d0051c84 <main+0x354>)
d0051bae:	4836      	ldr	r0, [pc, #216]	; (d0051c88 <main+0x358>)
d0051bb0:	f7fe fac0 	bl	d0050134 <LoadSFX>
d0051bb4:	f894 c010 	ldrb.w	ip, [r4, #16]
d0051bb8:	f894 e011 	ldrb.w	lr, [r4, #17]
d0051bbc:	4602      	mov	r2, r0
d0051bbe:	7ca0      	ldrb	r0, [r4, #18]
d0051bc0:	2300      	movs	r3, #0
d0051bc2:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d0051bc6:	492f      	ldr	r1, [pc, #188]	; (d0051c84 <main+0x354>)
d0051bc8:	f8ca 2000 	str.w	r2, [sl]
d0051bcc:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d0051bd0:	7ce0      	ldrb	r0, [r4, #19]
d0051bd2:	6809      	ldr	r1, [r1, #0]
d0051bd4:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d0051bd8:	2001      	movs	r0, #1
d0051bda:	f8dc c008 	ldr.w	ip, [ip, #8]
d0051bde:	f8dc 900c 	ldr.w	r9, [ip, #12]
d0051be2:	47c8      	blx	r9
d0051be4:	7c23      	ldrb	r3, [r4, #16]
d0051be6:	7c62      	ldrb	r2, [r4, #17]
d0051be8:	f244 21cc 	movw	r1, #17100	; 0x42cc
d0051bec:	7ca0      	ldrb	r0, [r4, #18]
d0051bee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051bf2:	7ce2      	ldrb	r2, [r4, #19]
d0051bf4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051bf8:	2001      	movs	r0, #1
d0051bfa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051bfe:	689b      	ldr	r3, [r3, #8]
d0051c00:	691b      	ldr	r3, [r3, #16]
d0051c02:	4798      	blx	r3
d0051c04:	7c23      	ldrb	r3, [r4, #16]
d0051c06:	7c62      	ldrb	r2, [r4, #17]
d0051c08:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d0051c0c:	7ca0      	ldrb	r0, [r4, #18]
d0051c0e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051c12:	7ce2      	ldrb	r2, [r4, #19]
d0051c14:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051c18:	2001      	movs	r0, #1
d0051c1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051c1e:	689b      	ldr	r3, [r3, #8]
d0051c20:	695b      	ldr	r3, [r3, #20]
d0051c22:	4798      	blx	r3
d0051c24:	7c23      	ldrb	r3, [r4, #16]
d0051c26:	7c62      	ldrb	r2, [r4, #17]
d0051c28:	2140      	movs	r1, #64	; 0x40
d0051c2a:	7ca0      	ldrb	r0, [r4, #18]
d0051c2c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051c30:	7ce2      	ldrb	r2, [r4, #19]
d0051c32:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051c36:	2001      	movs	r0, #1
d0051c38:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051c3c:	689b      	ldr	r3, [r3, #8]
d0051c3e:	699b      	ldr	r3, [r3, #24]
d0051c40:	4798      	blx	r3
d0051c42:	7c23      	ldrb	r3, [r4, #16]
d0051c44:	7c62      	ldrb	r2, [r4, #17]
d0051c46:	2100      	movs	r1, #0
d0051c48:	7ca0      	ldrb	r0, [r4, #18]
d0051c4a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051c4e:	7ce2      	ldrb	r2, [r4, #19]
d0051c50:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051c54:	2001      	movs	r0, #1
d0051c56:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051c5a:	689b      	ldr	r3, [r3, #8]
d0051c5c:	e01e      	b.n	d0051c9c <main+0x36c>
d0051c5e:	bf00      	nop
d0051c60:	2001f000 	.word	0x2001f000
d0051c64:	00000000 	.word	0x00000000
d0051c68:	d005cb88 	.word	0xd005cb88
d0051c6c:	d005f980 	.word	0xd005f980
d0051c70:	459c4000 	.word	0x459c4000
d0051c74:	3c23d70a 	.word	0x3c23d70a
d0051c78:	42480000 	.word	0x42480000
d0051c7c:	d00f9d80 	.word	0xd00f9d80
d0051c80:	d005cb9c 	.word	0xd005cb9c
d0051c84:	d00f9da0 	.word	0xd00f9da0
d0051c88:	d005cbac 	.word	0xd005cbac
d0051c8c:	d005cc50 	.word	0xd005cc50
d0051c90:	d005f4a0 	.word	0xd005f4a0
d0051c94:	d00f9da8 	.word	0xd00f9da8
d0051c98:	d00f9d40 	.word	0xd00f9d40
d0051c9c:	6a1b      	ldr	r3, [r3, #32]
d0051c9e:	4798      	blx	r3
d0051ca0:	49c5      	ldr	r1, [pc, #788]	; (d0051fb8 <main+0x688>)
d0051ca2:	48c6      	ldr	r0, [pc, #792]	; (d0051fbc <main+0x68c>)
d0051ca4:	f7fe fa46 	bl	d0050134 <LoadSFX>
d0051ca8:	f894 c010 	ldrb.w	ip, [r4, #16]
d0051cac:	f894 e011 	ldrb.w	lr, [r4, #17]
d0051cb0:	4602      	mov	r2, r0
d0051cb2:	7ca0      	ldrb	r0, [r4, #18]
d0051cb4:	2300      	movs	r3, #0
d0051cb6:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d0051cba:	49bf      	ldr	r1, [pc, #764]	; (d0051fb8 <main+0x688>)
d0051cbc:	f8ca 2000 	str.w	r2, [sl]
d0051cc0:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d0051cc4:	7ce0      	ldrb	r0, [r4, #19]
d0051cc6:	6809      	ldr	r1, [r1, #0]
d0051cc8:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d0051ccc:	2002      	movs	r0, #2
d0051cce:	f8dc c008 	ldr.w	ip, [ip, #8]
d0051cd2:	f8dc 900c 	ldr.w	r9, [ip, #12]
d0051cd6:	47c8      	blx	r9
d0051cd8:	7c23      	ldrb	r3, [r4, #16]
d0051cda:	7c62      	ldrb	r2, [r4, #17]
d0051cdc:	f64a 4144 	movw	r1, #44100	; 0xac44
d0051ce0:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051ce4:	2002      	movs	r0, #2
d0051ce6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051cea:	7ce2      	ldrb	r2, [r4, #19]
d0051cec:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0051cf0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051cf4:	689b      	ldr	r3, [r3, #8]
d0051cf6:	691b      	ldr	r3, [r3, #16]
d0051cf8:	4798      	blx	r3
d0051cfa:	7c23      	ldrb	r3, [r4, #16]
d0051cfc:	7c62      	ldrb	r2, [r4, #17]
d0051cfe:	2128      	movs	r1, #40	; 0x28
d0051d00:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051d04:	2002      	movs	r0, #2
d0051d06:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051d0a:	7ce2      	ldrb	r2, [r4, #19]
d0051d0c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0051d10:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051d14:	689b      	ldr	r3, [r3, #8]
d0051d16:	695b      	ldr	r3, [r3, #20]
d0051d18:	4798      	blx	r3
d0051d1a:	7c23      	ldrb	r3, [r4, #16]
d0051d1c:	7c62      	ldrb	r2, [r4, #17]
d0051d1e:	2100      	movs	r1, #0
d0051d20:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051d24:	2002      	movs	r0, #2
d0051d26:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051d2a:	7ce2      	ldrb	r2, [r4, #19]
d0051d2c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0051d30:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051d34:	689b      	ldr	r3, [r3, #8]
d0051d36:	699b      	ldr	r3, [r3, #24]
d0051d38:	4798      	blx	r3
d0051d3a:	7c23      	ldrb	r3, [r4, #16]
d0051d3c:	7c62      	ldrb	r2, [r4, #17]
d0051d3e:	2101      	movs	r1, #1
d0051d40:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051d44:	2002      	movs	r0, #2
d0051d46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051d4a:	7ce2      	ldrb	r2, [r4, #19]
d0051d4c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0051d50:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051d54:	689b      	ldr	r3, [r3, #8]
d0051d56:	6a1b      	ldr	r3, [r3, #32]
d0051d58:	4798      	blx	r3
d0051d5a:	7c23      	ldrb	r3, [r4, #16]
d0051d5c:	f894 c011 	ldrb.w	ip, [r4, #17]
d0051d60:	2100      	movs	r1, #0
d0051d62:	7ca2      	ldrb	r2, [r4, #18]
d0051d64:	2002      	movs	r0, #2
d0051d66:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0051d6a:	f894 c013 	ldrb.w	ip, [r4, #19]
d0051d6e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051d72:	f8da 2000 	ldr.w	r2, [sl]
d0051d76:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d0051d7a:	689b      	ldr	r3, [r3, #8]
d0051d7c:	69db      	ldr	r3, [r3, #28]
d0051d7e:	4798      	blx	r3
d0051d80:	7c23      	ldrb	r3, [r4, #16]
d0051d82:	7c62      	ldrb	r2, [r4, #17]
d0051d84:	2002      	movs	r0, #2
d0051d86:	7ca1      	ldrb	r1, [r4, #18]
d0051d88:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051d8c:	7ce2      	ldrb	r2, [r4, #19]
d0051d8e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051d92:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051d96:	689b      	ldr	r3, [r3, #8]
d0051d98:	685b      	ldr	r3, [r3, #4]
d0051d9a:	4798      	blx	r3
d0051d9c:	4659      	mov	r1, fp
d0051d9e:	4888      	ldr	r0, [pc, #544]	; (d0051fc0 <main+0x690>)
d0051da0:	f7fe f9c8 	bl	d0050134 <LoadSFX>
d0051da4:	f894 c010 	ldrb.w	ip, [r4, #16]
d0051da8:	f894 e011 	ldrb.w	lr, [r4, #17]
d0051dac:	4602      	mov	r2, r0
d0051dae:	7ca1      	ldrb	r1, [r4, #18]
d0051db0:	2300      	movs	r3, #0
d0051db2:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d0051db6:	f894 e013 	ldrb.w	lr, [r4, #19]
d0051dba:	f8ca 0000 	str.w	r0, [sl]
d0051dbe:	2003      	movs	r0, #3
d0051dc0:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d0051dc4:	f8db 1000 	ldr.w	r1, [fp]
d0051dc8:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d0051dcc:	f8dc c008 	ldr.w	ip, [ip, #8]
d0051dd0:	f8dc 900c 	ldr.w	r9, [ip, #12]
d0051dd4:	47c8      	blx	r9
d0051dd6:	f894 c010 	ldrb.w	ip, [r4, #16]
d0051dda:	7c62      	ldrb	r2, [r4, #17]
d0051ddc:	2300      	movs	r3, #0
d0051dde:	7ca1      	ldrb	r1, [r4, #18]
d0051de0:	2004      	movs	r0, #4
d0051de2:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d0051de6:	f894 e013 	ldrb.w	lr, [r4, #19]
d0051dea:	f8da 2000 	ldr.w	r2, [sl]
d0051dee:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d0051df2:	f8db 1000 	ldr.w	r1, [fp]
d0051df6:	9605      	str	r6, [sp, #20]
d0051df8:	46ab      	mov	fp, r5
d0051dfa:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d0051dfe:	2664      	movs	r6, #100	; 0x64
d0051e00:	f8dc c008 	ldr.w	ip, [ip, #8]
d0051e04:	f8dc 900c 	ldr.w	r9, [ip, #12]
d0051e08:	47c8      	blx	r9
d0051e0a:	7c23      	ldrb	r3, [r4, #16]
d0051e0c:	7c62      	ldrb	r2, [r4, #17]
d0051e0e:	f64a 4144 	movw	r1, #44100	; 0xac44
d0051e12:	7ca0      	ldrb	r0, [r4, #18]
d0051e14:	f04f 0900 	mov.w	r9, #0
d0051e18:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051e1c:	7ce2      	ldrb	r2, [r4, #19]
d0051e1e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051e22:	2003      	movs	r0, #3
d0051e24:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051e28:	689b      	ldr	r3, [r3, #8]
d0051e2a:	691b      	ldr	r3, [r3, #16]
d0051e2c:	4798      	blx	r3
d0051e2e:	7c23      	ldrb	r3, [r4, #16]
d0051e30:	7c62      	ldrb	r2, [r4, #17]
d0051e32:	f64a 4144 	movw	r1, #44100	; 0xac44
d0051e36:	2004      	movs	r0, #4
d0051e38:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051e3c:	7ca2      	ldrb	r2, [r4, #18]
d0051e3e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051e42:	7ce2      	ldrb	r2, [r4, #19]
d0051e44:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051e48:	689b      	ldr	r3, [r3, #8]
d0051e4a:	691b      	ldr	r3, [r3, #16]
d0051e4c:	4798      	blx	r3
d0051e4e:	7c23      	ldrb	r3, [r4, #16]
d0051e50:	7c62      	ldrb	r2, [r4, #17]
d0051e52:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0051e56:	2003      	movs	r0, #3
d0051e58:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051e5c:	7ca2      	ldrb	r2, [r4, #18]
d0051e5e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051e62:	7ce2      	ldrb	r2, [r4, #19]
d0051e64:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051e68:	689b      	ldr	r3, [r3, #8]
d0051e6a:	695b      	ldr	r3, [r3, #20]
d0051e6c:	4798      	blx	r3
d0051e6e:	7c23      	ldrb	r3, [r4, #16]
d0051e70:	7c62      	ldrb	r2, [r4, #17]
d0051e72:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0051e76:	2004      	movs	r0, #4
d0051e78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051e7c:	7ca2      	ldrb	r2, [r4, #18]
d0051e7e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051e82:	7ce2      	ldrb	r2, [r4, #19]
d0051e84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051e88:	689b      	ldr	r3, [r3, #8]
d0051e8a:	695b      	ldr	r3, [r3, #20]
d0051e8c:	4798      	blx	r3
d0051e8e:	7c23      	ldrb	r3, [r4, #16]
d0051e90:	7c62      	ldrb	r2, [r4, #17]
d0051e92:	f06f 0127 	mvn.w	r1, #39	; 0x27
d0051e96:	2003      	movs	r0, #3
d0051e98:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051e9c:	7ca2      	ldrb	r2, [r4, #18]
d0051e9e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051ea2:	7ce2      	ldrb	r2, [r4, #19]
d0051ea4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051ea8:	689b      	ldr	r3, [r3, #8]
d0051eaa:	699b      	ldr	r3, [r3, #24]
d0051eac:	4798      	blx	r3
d0051eae:	7c23      	ldrb	r3, [r4, #16]
d0051eb0:	7c62      	ldrb	r2, [r4, #17]
d0051eb2:	2128      	movs	r1, #40	; 0x28
d0051eb4:	2004      	movs	r0, #4
d0051eb6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051eba:	7ca2      	ldrb	r2, [r4, #18]
d0051ebc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051ec0:	7ce2      	ldrb	r2, [r4, #19]
d0051ec2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051ec6:	689b      	ldr	r3, [r3, #8]
d0051ec8:	699b      	ldr	r3, [r3, #24]
d0051eca:	4798      	blx	r3
d0051ecc:	7c23      	ldrb	r3, [r4, #16]
d0051ece:	7c62      	ldrb	r2, [r4, #17]
d0051ed0:	4649      	mov	r1, r9
d0051ed2:	2003      	movs	r0, #3
d0051ed4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051ed8:	7ca2      	ldrb	r2, [r4, #18]
d0051eda:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051ede:	7ce2      	ldrb	r2, [r4, #19]
d0051ee0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051ee4:	689b      	ldr	r3, [r3, #8]
d0051ee6:	6a1b      	ldr	r3, [r3, #32]
d0051ee8:	4798      	blx	r3
d0051eea:	7c23      	ldrb	r3, [r4, #16]
d0051eec:	7c62      	ldrb	r2, [r4, #17]
d0051eee:	4649      	mov	r1, r9
d0051ef0:	2004      	movs	r0, #4
d0051ef2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051ef6:	7ca2      	ldrb	r2, [r4, #18]
d0051ef8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051efc:	7ce2      	ldrb	r2, [r4, #19]
d0051efe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051f02:	689b      	ldr	r3, [r3, #8]
d0051f04:	6a1b      	ldr	r3, [r3, #32]
d0051f06:	4798      	blx	r3
d0051f08:	4639      	mov	r1, r7
d0051f0a:	eeb3 0a09 	vmov.f32	s0, #57	; 0x41c80000  25.0
d0051f0e:	482d      	ldr	r0, [pc, #180]	; (d0051fc4 <main+0x694>)
d0051f10:	f008 fadc 	bl	d005a4cc <loadMeshSB3D>
d0051f14:	ed9f 1a2c 	vldr	s2, [pc, #176]	; d0051fc8 <main+0x698>
d0051f18:	eddf 0a2c 	vldr	s1, [pc, #176]	; d0051fcc <main+0x69c>
d0051f1c:	ed9f 0a2c 	vldr	s0, [pc, #176]	; d0051fd0 <main+0x6a0>
d0051f20:	f003 fd6a 	bl	d00559f8 <vec3>
d0051f24:	4638      	mov	r0, r7
d0051f26:	ed8d 0a49 	vstr	s0, [sp, #292]	; 0x124
d0051f2a:	edcd 0a4a 	vstr	s1, [sp, #296]	; 0x128
d0051f2e:	ed8d 1a4b 	vstr	s2, [sp, #300]	; 0x12c
d0051f32:	f004 ffb1 	bl	d0056e98 <entityWorldSpawn>
d0051f36:	4b27      	ldr	r3, [pc, #156]	; (d0051fd4 <main+0x6a4>)
d0051f38:	4602      	mov	r2, r0
d0051f3a:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d0051f3e:	ed9f 2a26 	vldr	s4, [pc, #152]	; d0051fd8 <main+0x6a8>
d0051f42:	eeb0 1a48 	vmov.f32	s2, s16
d0051f46:	4638      	mov	r0, r7
d0051f48:	eeb0 0a48 	vmov.f32	s0, s16
d0051f4c:	eddf 0a23 	vldr	s1, [pc, #140]	; d0051fdc <main+0x6ac>
d0051f50:	601a      	str	r2, [r3, #0]
d0051f52:	f000 ffb7 	bl	d0052ec4 <meshSetMaterial>
d0051f56:	f7ff f971 	bl	d005123c <InitLasers>
d0051f5a:	ee19 1a10 	vmov	r1, s18
d0051f5e:	ed9f 0a20 	vldr	s0, [pc, #128]	; d0051fe0 <main+0x6b0>
d0051f62:	4820      	ldr	r0, [pc, #128]	; (d0051fe4 <main+0x6b4>)
d0051f64:	f008 fab2 	bl	d005a4cc <loadMeshSB3D>
d0051f68:	eeb0 1a48 	vmov.f32	s2, s16
d0051f6c:	eef0 0a48 	vmov.f32	s1, s16
d0051f70:	4f1d      	ldr	r7, [pc, #116]	; (d0051fe8 <main+0x6b8>)
d0051f72:	eeb0 0a48 	vmov.f32	s0, s16
d0051f76:	f003 fd3f 	bl	d00559f8 <vec3>
d0051f7a:	ee19 0a10 	vmov	r0, s18
d0051f7e:	edcd 0a4d 	vstr	s1, [sp, #308]	; 0x134
d0051f82:	ed8d 0a4c 	vstr	s0, [sp, #304]	; 0x130
d0051f86:	ed8d 1a4e 	vstr	s2, [sp, #312]	; 0x138
d0051f8a:	f004 ff85 	bl	d0056e98 <entityWorldSpawn>
d0051f8e:	4b17      	ldr	r3, [pc, #92]	; (d0051fec <main+0x6bc>)
d0051f90:	2101      	movs	r1, #1
d0051f92:	6018      	str	r0, [r3, #0]
d0051f94:	f005 fbc6 	bl	d0057724 <entityAllowHit>
d0051f98:	eeb0 2a48 	vmov.f32	s4, s16
d0051f9c:	eddf 1a14 	vldr	s3, [pc, #80]	; d0051ff0 <main+0x6c0>
d0051fa0:	eeb0 1a48 	vmov.f32	s2, s16
d0051fa4:	ee19 0a10 	vmov	r0, s18
d0051fa8:	eeb0 0a48 	vmov.f32	s0, s16
d0051fac:	ed9f 9a11 	vldr	s18, [pc, #68]	; d0051ff4 <main+0x6c4>
d0051fb0:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0051fb4:	e020      	b.n	d0051ff8 <main+0x6c8>
d0051fb6:	bf00      	nop
d0051fb8:	d00f9e20 	.word	0xd00f9e20
d0051fbc:	d005cbbc 	.word	0xd005cbbc
d0051fc0:	d005cbcc 	.word	0xd005cbcc
d0051fc4:	d005cbd8 	.word	0xd005cbd8
d0051fc8:	44460000 	.word	0x44460000
d0051fcc:	42a00000 	.word	0x42a00000
d0051fd0:	c4080000 	.word	0xc4080000
d0051fd4:	d005fa34 	.word	0xd005fa34
d0051fd8:	42c00000 	.word	0x42c00000
d0051fdc:	3ee66666 	.word	0x3ee66666
d0051fe0:	43480000 	.word	0x43480000
d0051fe4:	d005cbe8 	.word	0xd005cbe8
d0051fe8:	d005f9e0 	.word	0xd005f9e0
d0051fec:	d005fa08 	.word	0xd005fa08
d0051ff0:	3e4ccccd 	.word	0x3e4ccccd
d0051ff4:	42280000 	.word	0x42280000
d0051ff8:	f000 ff64 	bl	d0052ec4 <meshSetMaterial>
d0051ffc:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d0052000:	ed9d aa06 	vldr	s20, [sp, #24]
d0052004:	eef0 0a41 	vmov.f32	s1, s2
d0052008:	ee1a 0a10 	vmov	r0, s20
d005200c:	eeb0 0a41 	vmov.f32	s0, s2
d0052010:	f005 f90c 	bl	d005722c <createBox>
d0052014:	eef0 0a48 	vmov.f32	s1, s16
d0052018:	eeb0 1a48 	vmov.f32	s2, s16
d005201c:	ee1a 0a10 	vmov	r0, s20
d0052020:	eeb0 0a48 	vmov.f32	s0, s16
d0052024:	ed8d 8a3a 	vstr	s16, [sp, #232]	; 0xe8
d0052028:	ed8d 8a3b 	vstr	s16, [sp, #236]	; 0xec
d005202c:	ed8d 8a3c 	vstr	s16, [sp, #240]	; 0xf0
d0052030:	f004 ff32 	bl	d0056e98 <entityWorldSpawn>
d0052034:	4bbc      	ldr	r3, [pc, #752]	; (d0052328 <main+0x9f8>)
d0052036:	eddd 8a07 	vldr	s17, [sp, #28]
d005203a:	6018      	str	r0, [r3, #0]
d005203c:	ee18 1a90 	vmov	r1, s17
d0052040:	ed9f 0aba 	vldr	s0, [pc, #744]	; d005232c <main+0x9fc>
d0052044:	48ba      	ldr	r0, [pc, #744]	; (d0052330 <main+0xa00>)
d0052046:	f008 fa41 	bl	d005a4cc <loadMeshSB3D>
d005204a:	eef0 0a48 	vmov.f32	s1, s16
d005204e:	ed9f 1ab9 	vldr	s2, [pc, #740]	; d0052334 <main+0xa04>
d0052052:	ed9f 0ab9 	vldr	s0, [pc, #740]	; d0052338 <main+0xa08>
d0052056:	f003 fccf 	bl	d00559f8 <vec3>
d005205a:	ee18 0a90 	vmov	r0, s17
d005205e:	edcd 0a50 	vstr	s1, [sp, #320]	; 0x140
d0052062:	ed8d 1a51 	vstr	s2, [sp, #324]	; 0x144
d0052066:	ed8d 0a4f 	vstr	s0, [sp, #316]	; 0x13c
d005206a:	f004 ff15 	bl	d0056e98 <entityWorldSpawn>
d005206e:	4603      	mov	r3, r0
d0052070:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d0052074:	4641      	mov	r1, r8
d0052076:	48b1      	ldr	r0, [pc, #708]	; (d005233c <main+0xa0c>)
d0052078:	603b      	str	r3, [r7, #0]
d005207a:	f008 fa27 	bl	d005a4cc <loadMeshSB3D>
d005207e:	9f08      	ldr	r7, [sp, #32]
d0052080:	4641      	mov	r1, r8
d0052082:	eddf 8aaf 	vldr	s17, [pc, #700]	; d0052340 <main+0xa10>
d0052086:	4638      	mov	r0, r7
d0052088:	f005 fa50 	bl	d005752c <copyMesh>
d005208c:	ed9f 1aad 	vldr	s2, [pc, #692]	; d0052344 <main+0xa14>
d0052090:	eddf 0aa6 	vldr	s1, [pc, #664]	; d005232c <main+0x9fc>
d0052094:	ed9f 0aac 	vldr	s0, [pc, #688]	; d0052348 <main+0xa18>
d0052098:	f003 fcae 	bl	d00559f8 <vec3>
d005209c:	4638      	mov	r0, r7
d005209e:	ed8d 0a52 	vstr	s0, [sp, #328]	; 0x148
d00520a2:	edcd 0a53 	vstr	s1, [sp, #332]	; 0x14c
d00520a6:	ed8d 1a54 	vstr	s2, [sp, #336]	; 0x150
d00520aa:	f004 fef5 	bl	d0056e98 <entityWorldSpawn>
d00520ae:	eeb0 1a48 	vmov.f32	s2, s16
d00520b2:	ee0e 0a90 	vmov	s29, r0
d00520b6:	eef0 0a48 	vmov.f32	s1, s16
d00520ba:	eeb0 0a48 	vmov.f32	s0, s16
d00520be:	ed9f 8aa3 	vldr	s16, [pc, #652]	; d005234c <main+0xa1c>
d00520c2:	f003 fc99 	bl	d00559f8 <vec3>
d00520c6:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00520ca:	2001      	movs	r0, #1
d00520cc:	edcd 0a56 	vstr	s1, [sp, #344]	; 0x158
d00520d0:	ed8d 0a55 	vstr	s0, [sp, #340]	; 0x154
d00520d4:	ed8d 1a57 	vstr	s2, [sp, #348]	; 0x15c
d00520d8:	f005 fdc0 	bl	d0057c5c <addPointLight>
d00520dc:	b2c3      	uxtb	r3, r0
d00520de:	ed9f 1a9c 	vldr	s2, [pc, #624]	; d0052350 <main+0xa20>
d00520e2:	eddf 0a9c 	vldr	s1, [pc, #624]	; d0052354 <main+0xa24>
d00520e6:	4618      	mov	r0, r3
d00520e8:	ed9f 0a9b 	vldr	s0, [pc, #620]	; d0052358 <main+0xa28>
d00520ec:	ee0f 3a10 	vmov	s30, r3
d00520f0:	f005 fd82 	bl	d0057bf8 <lightSetRanges>
d00520f4:	f8dd a014 	ldr.w	sl, [sp, #20]
d00520f8:	eb05 1789 	add.w	r7, r5, r9, lsl #6
d00520fc:	f109 0901 	add.w	r9, r9, #1
d0052100:	4641      	mov	r1, r8
d0052102:	a80a      	add	r0, sp, #40	; 0x28
d0052104:	f005 fa12 	bl	d005752c <copyMesh>
d0052108:	fb06 f309 	mul.w	r3, r6, r9
d005210c:	f10d 0c28 	add.w	ip, sp, #40	; 0x28
d0052110:	eef0 0a49 	vmov.f32	s1, s18
d0052114:	ee01 3a10 	vmov	s2, r3
d0052118:	eeb0 0a68 	vmov.f32	s0, s17
d005211c:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0052120:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d0052122:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0052126:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d0052128:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d005212c:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0052130:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d0052132:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d0052136:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
d005213a:	f003 fc5d 	bl	d00559f8 <vec3>
d005213e:	4658      	mov	r0, fp
d0052140:	edcd 0a59 	vstr	s1, [sp, #356]	; 0x164
d0052144:	f10b 0b40 	add.w	fp, fp, #64	; 0x40
d0052148:	ed8d 1a5a 	vstr	s2, [sp, #360]	; 0x168
d005214c:	ed8d 0a58 	vstr	s0, [sp, #352]	; 0x160
d0052150:	f004 fea2 	bl	d0056e98 <entityWorldSpawn>
d0052154:	4607      	mov	r7, r0
d0052156:	f84a 0b04 	str.w	r0, [sl], #4
d005215a:	eeb0 0a48 	vmov.f32	s0, s16
d005215e:	f003 fc4f 	bl	d0055a00 <degrees>
d0052162:	eeb0 1a69 	vmov.f32	s2, s19
d0052166:	4638      	mov	r0, r7
d0052168:	2101      	movs	r1, #1
d005216a:	eddf 0a7c 	vldr	s1, [pc, #496]	; d005235c <main+0xa2c>
d005216e:	f005 f84d 	bl	d005720c <entityRotation>
d0052172:	f1b9 0f03 	cmp.w	r9, #3
d0052176:	d1bf      	bne.n	d00520f8 <main+0x7c8>
d0052178:	983e      	ldr	r0, [sp, #248]	; 0xf8
d005217a:	2301      	movs	r3, #1
d005217c:	ed9f 1a78 	vldr	s2, [pc, #480]	; d0052360 <main+0xa30>
d0052180:	35c0      	adds	r5, #192	; 0xc0
d0052182:	eddf 0a78 	vldr	s1, [pc, #480]	; d0052364 <main+0xa34>
d0052186:	ed9f 0a6e 	vldr	s0, [pc, #440]	; d0052340 <main+0xa10>
d005218a:	9005      	str	r0, [sp, #20]
d005218c:	9307      	str	r3, [sp, #28]
d005218e:	f89d a010 	ldrb.w	sl, [sp, #16]
d0052192:	f003 fc31 	bl	d00559f8 <vec3>
d0052196:	2300      	movs	r3, #0
d0052198:	9805      	ldr	r0, [sp, #20]
d005219a:	edcd 0a5c 	vstr	s1, [sp, #368]	; 0x170
d005219e:	9304      	str	r3, [sp, #16]
d00521a0:	ed8d 1a5d 	vstr	s2, [sp, #372]	; 0x174
d00521a4:	ed8d 0a5b 	vstr	s0, [sp, #364]	; 0x16c
d00521a8:	f004 febc 	bl	d0056f24 <entitySetPosition>
d00521ac:	4629      	mov	r1, r5
d00521ae:	ed9f 0a5f 	vldr	s0, [pc, #380]	; d005232c <main+0x9fc>
d00521b2:	486d      	ldr	r0, [pc, #436]	; (d0052368 <main+0xa38>)
d00521b4:	f008 f98a 	bl	d005a4cc <loadMeshSB3D>
d00521b8:	ed9f 1a69 	vldr	s2, [pc, #420]	; d0052360 <main+0xa30>
d00521bc:	eddf 0a6b 	vldr	s1, [pc, #428]	; d005236c <main+0xa3c>
d00521c0:	ed9f 0a6b 	vldr	s0, [pc, #428]	; d0052370 <main+0xa40>
d00521c4:	f003 fc18 	bl	d00559f8 <vec3>
d00521c8:	4628      	mov	r0, r5
d00521ca:	ed8d 0a5e 	vstr	s0, [sp, #376]	; 0x178
d00521ce:	edcd 0a5f 	vstr	s1, [sp, #380]	; 0x17c
d00521d2:	ed8d 1a60 	vstr	s2, [sp, #384]	; 0x180
d00521d6:	f004 fe5f 	bl	d0056e98 <entityWorldSpawn>
d00521da:	ed9f 1a60 	vldr	s2, [pc, #384]	; d005235c <main+0xa2c>
d00521de:	4603      	mov	r3, r0
d00521e0:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d00521e4:	ed9f 2a63 	vldr	s4, [pc, #396]	; d0052374 <main+0xa44>
d00521e8:	eeb0 0a41 	vmov.f32	s0, s2
d00521ec:	4628      	mov	r0, r5
d00521ee:	eddf 0a62 	vldr	s1, [pc, #392]	; d0052378 <main+0xa48>
d00521f2:	ee0f 3a90 	vmov	s31, r3
d00521f6:	f000 fe65 	bl	d0052ec4 <meshSetMaterial>
d00521fa:	2301      	movs	r3, #1
d00521fc:	2216      	movs	r2, #22
d00521fe:	495f      	ldr	r1, [pc, #380]	; (d005237c <main+0xa4c>)
d0052200:	a879      	add	r0, sp, #484	; 0x1e4
d0052202:	ed9f 0a5f 	vldr	s0, [pc, #380]	; d0052380 <main+0xa50>
d0052206:	f7fe fbb5 	bl	d0050974 <splineRailInit>
d005220a:	a879      	add	r0, sp, #484	; 0x1e4
d005220c:	ed9f 1a5d 	vldr	s2, [pc, #372]	; d0052384 <main+0xa54>
d0052210:	eddf 0a5d 	vldr	s1, [pc, #372]	; d0052388 <main+0xa58>
d0052214:	ed9f 0a5d 	vldr	s0, [pc, #372]	; d005238c <main+0xa5c>
d0052218:	f7fe fbda 	bl	d00509d0 <splineRailSetTuning>
d005221c:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d0052220:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0052224:	ed9f 1a5a 	vldr	s2, [pc, #360]	; d0052390 <main+0xa60>
d0052228:	a879      	add	r0, sp, #484	; 0x1e4
d005222a:	4d5a      	ldr	r5, [pc, #360]	; (d0052394 <main+0xa64>)
d005222c:	f7fe fbd8 	bl	d00509e0 <splineRailSetBanking>
d0052230:	2000      	movs	r0, #0
d0052232:	f005 fdb9 	bl	d0057da8 <enableFlatMode>
d0052236:	7b23      	ldrb	r3, [r4, #12]
d0052238:	7b62      	ldrb	r2, [r4, #13]
d005223a:	7ba1      	ldrb	r1, [r4, #14]
d005223c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0052240:	7be2      	ldrb	r2, [r4, #15]
d0052242:	6828      	ldr	r0, [r5, #0]
d0052244:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0052248:	eddf 9a53 	vldr	s19, [pc, #332]	; d0052398 <main+0xa68>
d005224c:	f8df 9160 	ldr.w	r9, [pc, #352]	; d00523b0 <main+0xa80>
d0052250:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052254:	ed9f aa40 	vldr	s20, [pc, #256]	; d0052358 <main+0xa28>
d0052258:	ed9f ba50 	vldr	s22, [pc, #320]	; d005239c <main+0xa6c>
d005225c:	681b      	ldr	r3, [r3, #0]
d005225e:	eddf aa33 	vldr	s21, [pc, #204]	; d005232c <main+0x9fc>
d0052262:	69db      	ldr	r3, [r3, #28]
d0052264:	4798      	blx	r3
d0052266:	7b23      	ldrb	r3, [r4, #12]
d0052268:	7b62      	ldrb	r2, [r4, #13]
d005226a:	7ba1      	ldrb	r1, [r4, #14]
d005226c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0052270:	7be2      	ldrb	r2, [r4, #15]
d0052272:	6828      	ldr	r0, [r5, #0]
d0052274:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0052278:	ed9f 9a38 	vldr	s18, [pc, #224]	; d005235c <main+0xa2c>
d005227c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052280:	681b      	ldr	r3, [r3, #0]
d0052282:	699b      	ldr	r3, [r3, #24]
d0052284:	4798      	blx	r3
d0052286:	7b23      	ldrb	r3, [r4, #12]
d0052288:	7b62      	ldrb	r2, [r4, #13]
d005228a:	2001      	movs	r0, #1
d005228c:	7ba1      	ldrb	r1, [r4, #14]
d005228e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0052292:	7be2      	ldrb	r2, [r4, #15]
d0052294:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0052298:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005229c:	685b      	ldr	r3, [r3, #4]
d005229e:	68db      	ldr	r3, [r3, #12]
d00522a0:	4798      	blx	r3
d00522a2:	7b23      	ldrb	r3, [r4, #12]
d00522a4:	7b62      	ldrb	r2, [r4, #13]
d00522a6:	211e      	movs	r1, #30
d00522a8:	7ba5      	ldrb	r5, [r4, #14]
d00522aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00522ae:	7be2      	ldrb	r2, [r4, #15]
d00522b0:	4608      	mov	r0, r1
d00522b2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00522b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00522ba:	685b      	ldr	r3, [r3, #4]
d00522bc:	689b      	ldr	r3, [r3, #8]
d00522be:	4798      	blx	r3
d00522c0:	7823      	ldrb	r3, [r4, #0]
d00522c2:	7862      	ldrb	r2, [r4, #1]
d00522c4:	a934      	add	r1, sp, #208	; 0xd0
d00522c6:	78a0      	ldrb	r0, [r4, #2]
d00522c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00522cc:	78e2      	ldrb	r2, [r4, #3]
d00522ce:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00522d2:	a833      	add	r0, sp, #204	; 0xcc
d00522d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00522d8:	691b      	ldr	r3, [r3, #16]
d00522da:	4798      	blx	r3
d00522dc:	7823      	ldrb	r3, [r4, #0]
d00522de:	7862      	ldrb	r2, [r4, #1]
d00522e0:	78a1      	ldrb	r1, [r4, #2]
d00522e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00522e6:	78e2      	ldrb	r2, [r4, #3]
d00522e8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00522ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00522f0:	69db      	ldr	r3, [r3, #28]
d00522f2:	4798      	blx	r3
d00522f4:	7823      	ldrb	r3, [r4, #0]
d00522f6:	7862      	ldrb	r2, [r4, #1]
d00522f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00522fc:	78a2      	ldrb	r2, [r4, #2]
d00522fe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0052302:	78e2      	ldrb	r2, [r4, #3]
d0052304:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052308:	689b      	ldr	r3, [r3, #8]
d005230a:	4798      	blx	r3
d005230c:	2313      	movs	r3, #19
d005230e:	4605      	mov	r5, r0
d0052310:	4823      	ldr	r0, [pc, #140]	; (d00523a0 <main+0xa70>)
d0052312:	2112      	movs	r1, #18
d0052314:	2215      	movs	r2, #21
d0052316:	7003      	strb	r3, [r0, #0]
d0052318:	2317      	movs	r3, #23
d005231a:	4822      	ldr	r0, [pc, #136]	; (d00523a4 <main+0xa74>)
d005231c:	7001      	strb	r1, [r0, #0]
d005231e:	4922      	ldr	r1, [pc, #136]	; (d00523a8 <main+0xa78>)
d0052320:	700a      	strb	r2, [r1, #0]
d0052322:	4a22      	ldr	r2, [pc, #136]	; (d00523ac <main+0xa7c>)
d0052324:	7013      	strb	r3, [r2, #0]
d0052326:	e055      	b.n	d00523d4 <main+0xaa4>
d0052328:	d005fa04 	.word	0xd005fa04
d005232c:	42480000 	.word	0x42480000
d0052330:	d005cbf8 	.word	0xd005cbf8
d0052334:	c2c80000 	.word	0xc2c80000
d0052338:	44f3c000 	.word	0x44f3c000
d005233c:	d005cc08 	.word	0xd005cc08
d0052340:	c3750000 	.word	0xc3750000
d0052344:	c3480000 	.word	0xc3480000
d0052348:	c3070000 	.word	0xc3070000
d005234c:	42b40000 	.word	0x42b40000
d0052350:	44048000 	.word	0x44048000
d0052354:	43a00000 	.word	0x43a00000
d0052358:	42c80000 	.word	0x42c80000
d005235c:	00000000 	.word	0x00000000
d0052360:	43480000 	.word	0x43480000
d0052364:	42a40000 	.word	0x42a40000
d0052368:	d005cc14 	.word	0xd005cc14
d005236c:	43af0000 	.word	0x43af0000
d0052370:	44fa0000 	.word	0x44fa0000
d0052374:	42c00000 	.word	0x42c00000
d0052378:	3ee66666 	.word	0x3ee66666
d005237c:	d005ccb0 	.word	0xd005ccb0
d0052380:	43340000 	.word	0x43340000
d0052384:	402ccccd 	.word	0x402ccccd
d0052388:	3fe66666 	.word	0x3fe66666
d005238c:	3fb33333 	.word	0x3fb33333
d0052390:	3f59999a 	.word	0x3f59999a
d0052394:	d00f9e00 	.word	0xd00f9e00
d0052398:	3b83126f 	.word	0x3b83126f
d005239c:	4d7bc521 	.word	0x4d7bc521
d00523a0:	d00f9da4 	.word	0xd00f9da4
d00523a4:	d00f9d20 	.word	0xd00f9d20
d00523a8:	d00f9ddc 	.word	0xd00f9ddc
d00523ac:	d00f9d84 	.word	0xd00f9d84
d00523b0:	d005f980 	.word	0xd005f980
d00523b4:	310f2a63 	.word	0x310f2a63
d00523b8:	bb449ba6 	.word	0xbb449ba6
d00523bc:	3f99999a 	.word	0x3f99999a
d00523c0:	40d9999a 	.word	0x40d9999a
d00523c4:	43264ccd 	.word	0x43264ccd
d00523c8:	435c0000 	.word	0x435c0000
d00523cc:	3ba3d70a 	.word	0x3ba3d70a
d00523d0:	3c088889 	.word	0x3c088889
d00523d4:	7b20      	ldrb	r0, [r4, #12]
d00523d6:	ee69 7a8a 	vmul.f32	s15, s19, s20
d00523da:	7b61      	ldrb	r1, [r4, #13]
d00523dc:	7ba2      	ldrb	r2, [r4, #14]
d00523de:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00523e2:	7be3      	ldrb	r3, [r4, #15]
d00523e4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00523e8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00523ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00523f0:	edcd 7a05 	vstr	s15, [sp, #20]
d00523f4:	f89d 0014 	ldrb.w	r0, [sp, #20]
d00523f8:	681b      	ldr	r3, [r3, #0]
d00523fa:	689b      	ldr	r3, [r3, #8]
d00523fc:	4798      	blx	r3
d00523fe:	7820      	ldrb	r0, [r4, #0]
d0052400:	7861      	ldrb	r1, [r4, #1]
d0052402:	78a2      	ldrb	r2, [r4, #2]
d0052404:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052408:	78e3      	ldrb	r3, [r4, #3]
d005240a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005240e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052412:	689b      	ldr	r3, [r3, #8]
d0052414:	4798      	blx	r3
d0052416:	1b43      	subs	r3, r0, r5
d0052418:	9005      	str	r0, [sp, #20]
d005241a:	ee08 3a90 	vmov	s17, r3
d005241e:	eef8 8a68 	vcvt.f32.u32	s17, s17
d0052422:	eef4 8acb 	vcmpe.f32	s17, s22
d0052426:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005242a:	f300 8450 	bgt.w	d0052cce <main+0x139e>
d005242e:	ed5f 7a1f 	vldr	s15, [pc, #-124]	; d00523b4 <main+0xa84>
d0052432:	eeb2 ca04 	vmov.f32	s24, #36	; 0x41200000  10.0
d0052436:	eef2 ba08 	vmov.f32	s23, #40	; 0x41400000  12.0
d005243a:	ed1f ea21 	vldr	s28, [pc, #-132]	; d00523b8 <main+0xa88>
d005243e:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0052442:	ed5f da22 	vldr	s27, [pc, #-136]	; d00523bc <main+0xa8c>
d0052446:	ed5f 7a22 	vldr	s15, [pc, #-136]	; d00523c0 <main+0xa90>
d005244a:	ed1f da22 	vldr	s26, [pc, #-136]	; d00523c4 <main+0xa94>
d005244e:	ee28 ca8c 	vmul.f32	s24, s17, s24
d0052452:	ed5f ca23 	vldr	s25, [pc, #-140]	; d00523c8 <main+0xa98>
d0052456:	ee68 daad 	vmul.f32	s27, s17, s27
d005245a:	ee28 da8d 	vmul.f32	s26, s17, s26
d005245e:	ee2c ea0e 	vmul.f32	s28, s24, s28
d0052462:	ee68 caac 	vmul.f32	s25, s17, s25
d0052466:	ee2c ca27 	vmul.f32	s24, s24, s15
d005246a:	ee68 baab 	vmul.f32	s23, s17, s23
d005246e:	7820      	ldrb	r0, [r4, #0]
d0052470:	7861      	ldrb	r1, [r4, #1]
d0052472:	78a2      	ldrb	r2, [r4, #2]
d0052474:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052478:	78e3      	ldrb	r3, [r4, #3]
d005247a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005247e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052482:	6a1b      	ldr	r3, [r3, #32]
d0052484:	4798      	blx	r3
d0052486:	7825      	ldrb	r5, [r4, #0]
d0052488:	7863      	ldrb	r3, [r4, #1]
d005248a:	a936      	add	r1, sp, #216	; 0xd8
d005248c:	78a2      	ldrb	r2, [r4, #2]
d005248e:	4606      	mov	r6, r0
d0052490:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d0052494:	78e3      	ldrb	r3, [r4, #3]
d0052496:	a835      	add	r0, sp, #212	; 0xd4
d0052498:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d005249c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00524a0:	699b      	ldr	r3, [r3, #24]
d00524a2:	4798      	blx	r3
d00524a4:	9a35      	ldr	r2, [sp, #212]	; 0xd4
d00524a6:	9b36      	ldr	r3, [sp, #216]	; 0xd8
d00524a8:	eef0 0a49 	vmov.f32	s1, s18
d00524ac:	4252      	negs	r2, r2
d00524ae:	ed1f 1a39 	vldr	s2, [pc, #-228]	; d00523cc <main+0xa9c>
d00524b2:	425b      	negs	r3, r3
d00524b4:	ed1f 0a3a 	vldr	s0, [pc, #-232]	; d00523d0 <main+0xaa0>
d00524b8:	ee07 2a90 	vmov	s15, r2
d00524bc:	2100      	movs	r1, #0
d00524be:	4648      	mov	r0, r9
d00524c0:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00524c4:	ee07 3a90 	vmov	s15, r3
d00524c8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00524cc:	ee27 1a01 	vmul.f32	s2, s14, s2
d00524d0:	ee27 0a80 	vmul.f32	s0, s15, s0
d00524d4:	f004 f816 	bl	d0056504 <cameraTurn>
d00524d8:	4bbc      	ldr	r3, [pc, #752]	; (d00527cc <main+0xe9c>)
d00524da:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d00524de:	ed93 8a07 	vldr	s16, [r3, #28]
d00524e2:	ee28 8a27 	vmul.f32	s16, s16, s15
d00524e6:	ee68 0a88 	vmul.f32	s1, s17, s16
d00524ea:	eef5 0a40 	vcmp.f32	s1, #0.0
d00524ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00524f2:	f040 8420 	bne.w	d0052d36 <main+0x1406>
d00524f6:	4bb6      	ldr	r3, [pc, #728]	; (d00527d0 <main+0xea0>)
d00524f8:	eeb0 1a49 	vmov.f32	s2, s18
d00524fc:	eddf 0ab5 	vldr	s1, [pc, #724]	; d00527d4 <main+0xea4>
d0052500:	eeb0 0a4e 	vmov.f32	s0, s28
d0052504:	461d      	mov	r5, r3
d0052506:	6818      	ldr	r0, [r3, #0]
d0052508:	f004 fdb0 	bl	d005706c <entityTurnLocal>
d005250c:	eeb0 0a4c 	vmov.f32	s0, s24
d0052510:	6828      	ldr	r0, [r5, #0]
d0052512:	f004 fd67 	bl	d0056fe4 <entityMoveForward>
d0052516:	eeb0 1a49 	vmov.f32	s2, s18
d005251a:	eddf 0aae 	vldr	s1, [pc, #696]	; d00527d4 <main+0xea4>
d005251e:	eeb0 0a6d 	vmov.f32	s0, s27
d0052522:	ee1f 0a90 	vmov	r0, s31
d0052526:	f004 fda1 	bl	d005706c <entityTurnLocal>
d005252a:	eeb0 0a4d 	vmov.f32	s0, s26
d005252e:	ee1e 0a90 	vmov	r0, s29
d0052532:	f004 fd57 	bl	d0056fe4 <entityMoveForward>
d0052536:	ee1e 0a90 	vmov	r0, s29
d005253a:	f004 fd13 	bl	d0056f64 <entityGetPosition>
d005253e:	eddf 7aa6 	vldr	s15, [pc, #664]	; d00527d8 <main+0xea8>
d0052542:	ed8d 0a40 	vstr	s0, [sp, #256]	; 0x100
d0052546:	eeb4 1ae7 	vcmpe.f32	s2, s15
d005254a:	edcd 0a41 	vstr	s1, [sp, #260]	; 0x104
d005254e:	ed8d 1a42 	vstr	s2, [sp, #264]	; 0x108
d0052552:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052556:	f300 83db 	bgt.w	d0052d10 <main+0x13e0>
d005255a:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d005255e:	ee1f 0a10 	vmov	r0, s30
d0052562:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0052566:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d005256a:	f005 fbe3 	bl	d0057d34 <lightSetPosition>
d005256e:	4b97      	ldr	r3, [pc, #604]	; (d00527cc <main+0xe9c>)
d0052570:	4650      	mov	r0, sl
d0052572:	ed93 0a00 	vldr	s0, [r3]
d0052576:	edd3 0a01 	vldr	s1, [r3, #4]
d005257a:	ed93 1a02 	vldr	s2, [r3, #8]
d005257e:	f005 fbd9 	bl	d0057d34 <lightSetPosition>
d0052582:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0052586:	4650      	mov	r0, sl
d0052588:	f005 fbf0 	bl	d0057d6c <lightSetIntensity>
d005258c:	eeb0 0a4a 	vmov.f32	s0, s20
d0052590:	ed9f 1a92 	vldr	s2, [pc, #584]	; d00527dc <main+0xeac>
d0052594:	4650      	mov	r0, sl
d0052596:	eddf 0a92 	vldr	s1, [pc, #584]	; d00527e0 <main+0xeb0>
d005259a:	f005 fb2d 	bl	d0057bf8 <lightSetRanges>
d005259e:	9b04      	ldr	r3, [sp, #16]
d00525a0:	2b00      	cmp	r3, #0
d00525a2:	f000 83ae 	beq.w	d0052d02 <main+0x13d2>
d00525a6:	f04f 0800 	mov.w	r8, #0
d00525aa:	7820      	ldrb	r0, [r4, #0]
d00525ac:	f006 0501 	and.w	r5, r6, #1
d00525b0:	7861      	ldrb	r1, [r4, #1]
d00525b2:	78a2      	ldrb	r2, [r4, #2]
d00525b4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00525b8:	78e3      	ldrb	r3, [r4, #3]
d00525ba:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00525be:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00525c2:	69db      	ldr	r3, [r3, #28]
d00525c4:	4798      	blx	r3
d00525c6:	4b87      	ldr	r3, [pc, #540]	; (d00527e4 <main+0xeb4>)
d00525c8:	681b      	ldr	r3, [r3, #0]
d00525ca:	b933      	cbnz	r3, d00525da <main+0xcaa>
d00525cc:	07f3      	lsls	r3, r6, #31
d00525ce:	d504      	bpl.n	d00525da <main+0xcaa>
d00525d0:	2301      	movs	r3, #1
d00525d2:	4a84      	ldr	r2, [pc, #528]	; (d00527e4 <main+0xeb4>)
d00525d4:	6013      	str	r3, [r2, #0]
d00525d6:	f7fe ffcd 	bl	d0051574 <FirePlayerLaser>
d00525da:	f005 03ff 	and.w	r3, r5, #255	; 0xff
d00525de:	b90d      	cbnz	r5, d00525e4 <main+0xcb4>
d00525e0:	4a80      	ldr	r2, [pc, #512]	; (d00527e4 <main+0xeb4>)
d00525e2:	6013      	str	r3, [r2, #0]
d00525e4:	f016 0602 	ands.w	r6, r6, #2
d00525e8:	f040 83c4 	bne.w	d0052d74 <main+0x1444>
d00525ec:	eeb0 0a68 	vmov.f32	s0, s17
d00525f0:	f7ff f930 	bl	d0051854 <UpdateLasers>
d00525f4:	4a7c      	ldr	r2, [pc, #496]	; (d00527e8 <main+0xeb8>)
d00525f6:	8813      	ldrh	r3, [r2, #0]
d00525f8:	3b01      	subs	r3, #1
d00525fa:	b21b      	sxth	r3, r3
d00525fc:	2b00      	cmp	r3, #0
d00525fe:	8013      	strh	r3, [r2, #0]
d0052600:	dc07      	bgt.n	d0052612 <main+0xce2>
d0052602:	4b7a      	ldr	r3, [pc, #488]	; (d00527ec <main+0xebc>)
d0052604:	f9b3 3000 	ldrsh.w	r3, [r3]
d0052608:	2b00      	cmp	r3, #0
d005260a:	f340 83e1 	ble.w	d0052dd0 <main+0x14a0>
d005260e:	f7fe ff53 	bl	d00514b8 <UpdateTurretTest.part.0>
d0052612:	7b20      	ldrb	r0, [r4, #12]
d0052614:	7b61      	ldrb	r1, [r4, #13]
d0052616:	7ba2      	ldrb	r2, [r4, #14]
d0052618:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d005261c:	7be3      	ldrb	r3, [r4, #15]
d005261e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052622:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052626:	681b      	ldr	r3, [r3, #0]
d0052628:	68db      	ldr	r3, [r3, #12]
d005262a:	4798      	blx	r3
d005262c:	4a70      	ldr	r2, [pc, #448]	; (d00527f0 <main+0xec0>)
d005262e:	7813      	ldrb	r3, [r2, #0]
d0052630:	f1c3 0301 	rsb	r3, r3, #1
d0052634:	b2db      	uxtb	r3, r3
d0052636:	7013      	strb	r3, [r2, #0]
d0052638:	7813      	ldrb	r3, [r2, #0]
d005263a:	7b21      	ldrb	r1, [r4, #12]
d005263c:	7b60      	ldrb	r0, [r4, #13]
d005263e:	7ba2      	ldrb	r2, [r4, #14]
d0052640:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0052644:	2b00      	cmp	r3, #0
d0052646:	f000 831b 	beq.w	d0052c80 <main+0x1350>
d005264a:	4d6a      	ldr	r5, [pc, #424]	; (d00527f4 <main+0xec4>)
d005264c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0052650:	7be3      	ldrb	r3, [r4, #15]
d0052652:	6829      	ldr	r1, [r5, #0]
d0052654:	4868      	ldr	r0, [pc, #416]	; (d00527f8 <main+0xec8>)
d0052656:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005265a:	6800      	ldr	r0, [r0, #0]
d005265c:	f8df b1ac 	ldr.w	fp, [pc, #428]	; d005280c <main+0xedc>
d0052660:	2700      	movs	r7, #0
d0052662:	681b      	ldr	r3, [r3, #0]
d0052664:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0052666:	4798      	blx	r3
d0052668:	682b      	ldr	r3, [r5, #0]
d005266a:	4d64      	ldr	r5, [pc, #400]	; (d00527fc <main+0xecc>)
d005266c:	6818      	ldr	r0, [r3, #0]
d005266e:	f000 fc6f 	bl	d0052f50 <set3DRenderBuffer>
d0052672:	f8cd 8018 	str.w	r8, [sp, #24]
d0052676:	46b0      	mov	r8, r6
d0052678:	f81b 3b01 	ldrb.w	r3, [fp], #1
d005267c:	b333      	cbz	r3, d00526cc <main+0xd9c>
d005267e:	682e      	ldr	r6, [r5, #0]
d0052680:	4638      	mov	r0, r7
d0052682:	1e71      	subs	r1, r6, #1
d0052684:	2e00      	cmp	r6, #0
d0052686:	f000 8302 	beq.w	d0052c8e <main+0x135e>
d005268a:	6029      	str	r1, [r5, #0]
d005268c:	9108      	str	r1, [sp, #32]
d005268e:	b9e9      	cbnz	r1, d00526cc <main+0xd9c>
d0052690:	7c26      	ldrb	r6, [r4, #16]
d0052692:	7c63      	ldrb	r3, [r4, #17]
d0052694:	7ca2      	ldrb	r2, [r4, #18]
d0052696:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d005269a:	7ce3      	ldrb	r3, [r4, #19]
d005269c:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d00526a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00526a4:	689b      	ldr	r3, [r3, #8]
d00526a6:	689b      	ldr	r3, [r3, #8]
d00526a8:	4798      	blx	r3
d00526aa:	7c26      	ldrb	r6, [r4, #16]
d00526ac:	7c63      	ldrb	r3, [r4, #17]
d00526ae:	4638      	mov	r0, r7
d00526b0:	7ca2      	ldrb	r2, [r4, #18]
d00526b2:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d00526b6:	7ce3      	ldrb	r3, [r4, #19]
d00526b8:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d00526bc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00526c0:	689b      	ldr	r3, [r3, #8]
d00526c2:	685b      	ldr	r3, [r3, #4]
d00526c4:	4798      	blx	r3
d00526c6:	9908      	ldr	r1, [sp, #32]
d00526c8:	f80b 1c01 	strb.w	r1, [fp, #-1]
d00526cc:	3504      	adds	r5, #4
d00526ce:	2f00      	cmp	r7, #0
d00526d0:	f000 82a3 	beq.w	d0052c1a <main+0x12ea>
d00526d4:	9b07      	ldr	r3, [sp, #28]
d00526d6:	4646      	mov	r6, r8
d00526d8:	f8dd 8018 	ldr.w	r8, [sp, #24]
d00526dc:	2b00      	cmp	r3, #0
d00526de:	f040 8355 	bne.w	d0052d8c <main+0x145c>
d00526e2:	9b04      	ldr	r3, [sp, #16]
d00526e4:	2b00      	cmp	r3, #0
d00526e6:	f040 8332 	bne.w	d0052d4e <main+0x141e>
d00526ea:	eeb0 0a49 	vmov.f32	s0, s18
d00526ee:	f1b8 0f00 	cmp.w	r8, #0
d00526f2:	f000 82fc 	beq.w	d0052cee <main+0x13be>
d00526f6:	4942      	ldr	r1, [pc, #264]	; (d0052800 <main+0xed0>)
d00526f8:	2305      	movs	r3, #5
d00526fa:	2215      	movs	r2, #21
d00526fc:	4648      	mov	r0, r9
d00526fe:	7809      	ldrb	r1, [r1, #0]
d0052700:	f006 fb10 	bl	d0058d24 <drawFakeHorizon>
d0052704:	493f      	ldr	r1, [pc, #252]	; (d0052804 <main+0xed4>)
d0052706:	780b      	ldrb	r3, [r1, #0]
d0052708:	2b00      	cmp	r3, #0
d005270a:	f040 835d 	bne.w	d0052dc8 <main+0x1498>
d005270e:	483e      	ldr	r0, [pc, #248]	; (d0052808 <main+0xed8>)
d0052710:	2205      	movs	r2, #5
d0052712:	4d3e      	ldr	r5, [pc, #248]	; (d005280c <main+0xedc>)
d0052714:	7803      	ldrb	r3, [r0, #0]
d0052716:	700a      	strb	r2, [r1, #0]
d0052718:	f1c3 0301 	rsb	r3, r3, #1
d005271c:	b2db      	uxtb	r3, r3
d005271e:	5cea      	ldrb	r2, [r5, r3]
d0052720:	7003      	strb	r3, [r0, #0]
d0052722:	b92a      	cbnz	r2, d0052730 <main+0xe00>
d0052724:	2101      	movs	r1, #1
d0052726:	2278      	movs	r2, #120	; 0x78
d0052728:	54e9      	strb	r1, [r5, r3]
d005272a:	4934      	ldr	r1, [pc, #208]	; (d00527fc <main+0xecc>)
d005272c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d0052730:	2008      	movs	r0, #8
d0052732:	2320      	movs	r3, #32
d0052734:	2280      	movs	r2, #128	; 0x80
d0052736:	2105      	movs	r1, #5
d0052738:	9000      	str	r0, [sp, #0]
d005273a:	4648      	mov	r0, r9
d005273c:	f006 f9fc 	bl	d0058b38 <drawFakeSkyDots>
d0052740:	4933      	ldr	r1, [pc, #204]	; (d0052810 <main+0xee0>)
d0052742:	eeb0 0a49 	vmov.f32	s0, s18
d0052746:	236e      	movs	r3, #110	; 0x6e
d0052748:	2280      	movs	r2, #128	; 0x80
d005274a:	7809      	ldrb	r1, [r1, #0]
d005274c:	4648      	mov	r0, r9
d005274e:	f006 f8db 	bl	d0058908 <drawFakeHorizonDots>
d0052752:	7820      	ldrb	r0, [r4, #0]
d0052754:	7861      	ldrb	r1, [r4, #1]
d0052756:	78a2      	ldrb	r2, [r4, #2]
d0052758:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d005275c:	78e3      	ldrb	r3, [r4, #3]
d005275e:	4d2d      	ldr	r5, [pc, #180]	; (d0052814 <main+0xee4>)
d0052760:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052764:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052768:	689b      	ldr	r3, [r3, #8]
d005276a:	4798      	blx	r3
d005276c:	4603      	mov	r3, r0
d005276e:	4648      	mov	r0, r9
d0052770:	602b      	str	r3, [r5, #0]
d0052772:	f007 fa9f 	bl	d0059cb4 <Render3D>
d0052776:	7820      	ldrb	r0, [r4, #0]
d0052778:	7861      	ldrb	r1, [r4, #1]
d005277a:	78a2      	ldrb	r2, [r4, #2]
d005277c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052780:	78e3      	ldrb	r3, [r4, #3]
d0052782:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052786:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005278a:	689b      	ldr	r3, [r3, #8]
d005278c:	4798      	blx	r3
d005278e:	4922      	ldr	r1, [pc, #136]	; (d0052818 <main+0xee8>)
d0052790:	eeb5 7a00 	vmov.f32	s14, #80	; 0x3e800000  0.250
d0052794:	682a      	ldr	r2, [r5, #0]
d0052796:	edd1 7a00 	vldr	s15, [r1]
d005279a:	4d20      	ldr	r5, [pc, #128]	; (d005281c <main+0xeec>)
d005279c:	1a80      	subs	r0, r0, r2
d005279e:	ee78 7aa7 	vadd.f32	s15, s17, s15
d00527a2:	4a1f      	ldr	r2, [pc, #124]	; (d0052820 <main+0xef0>)
d00527a4:	682b      	ldr	r3, [r5, #0]
d00527a6:	6010      	str	r0, [r2, #0]
d00527a8:	eef4 7ac7 	vcmpe.f32	s15, s14
d00527ac:	3301      	adds	r3, #1
d00527ae:	edc1 7a00 	vstr	s15, [r1]
d00527b2:	602b      	str	r3, [r5, #0]
d00527b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00527b8:	db53      	blt.n	d0052862 <main+0xf32>
d00527ba:	ed9f 7a1a 	vldr	s14, [pc, #104]	; d0052824 <main+0xef4>
d00527be:	eef4 7ac7 	vcmpe.f32	s15, s14
d00527c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00527c6:	f340 82e8 	ble.w	d0052d9a <main+0x146a>
d00527ca:	e02d      	b.n	d0052828 <main+0xef8>
d00527cc:	d005f980 	.word	0xd005f980
d00527d0:	d005f9e0 	.word	0xd005f9e0
d00527d4:	00000000 	.word	0x00000000
d00527d8:	451c4000 	.word	0x451c4000
d00527dc:	44048000 	.word	0x44048000
d00527e0:	43a00000 	.word	0x43a00000
d00527e4:	d005fa0c 	.word	0xd005fa0c
d00527e8:	d005fa3a 	.word	0xd005fa3a
d00527ec:	d005fa38 	.word	0xd005fa38
d00527f0:	d005fa00 	.word	0xd005fa00
d00527f4:	d00f9de0 	.word	0xd00f9de0
d00527f8:	d00f9e00 	.word	0xd00f9e00
d00527fc:	d005fa24 	.word	0xd005fa24
d0052800:	d00f9da4 	.word	0xd00f9da4
d0052804:	d005f8a4 	.word	0xd005f8a4
d0052808:	d005f968 	.word	0xd005f968
d005280c:	d005fa20 	.word	0xd005fa20
d0052810:	d00f9d84 	.word	0xd00f9d84
d0052814:	d005fa2c 	.word	0xd005fa2c
d0052818:	d005f9f8 	.word	0xd005f9f8
d005281c:	d005f9f4 	.word	0xd005f9f4
d0052820:	d005fa30 	.word	0xd005fa30
d0052824:	3727c5ac 	.word	0x3727c5ac
d0052828:	ee07 3a10 	vmov	s14, r3
d005282c:	4b70      	ldr	r3, [pc, #448]	; (d00529f0 <main+0x10c0>)
d005282e:	2164      	movs	r1, #100	; 0x64
d0052830:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0052834:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0052838:	eec7 6a27 	vdiv.f32	s13, s14, s15
d005283c:	eefc 7ae6 	vcvt.u32.f32	s15, s13
d0052840:	ee17 2a90 	vmov	r2, s15
d0052844:	fba3 0302 	umull	r0, r3, r3, r2
d0052848:	095b      	lsrs	r3, r3, #5
d005284a:	fb01 2213 	mls	r2, r1, r3, r2
d005284e:	4869      	ldr	r0, [pc, #420]	; (d00529f4 <main+0x10c4>)
d0052850:	2100      	movs	r1, #0
d0052852:	6003      	str	r3, [r0, #0]
d0052854:	4b68      	ldr	r3, [pc, #416]	; (d00529f8 <main+0x10c8>)
d0052856:	601a      	str	r2, [r3, #0]
d0052858:	4b68      	ldr	r3, [pc, #416]	; (d00529fc <main+0x10cc>)
d005285a:	ed83 9a00 	vstr	s18, [r3]
d005285e:	4b68      	ldr	r3, [pc, #416]	; (d0052a00 <main+0x10d0>)
d0052860:	6019      	str	r1, [r3, #0]
d0052862:	a879      	add	r0, sp, #484	; 0x1e4
d0052864:	f7fe faaa 	bl	d0050dbc <splineRailGetCurrentNode>
d0052868:	2e00      	cmp	r6, #0
d005286a:	f040 81d8 	bne.w	d0052c1e <main+0x12ee>
d005286e:	4b65      	ldr	r3, [pc, #404]	; (d0052a04 <main+0x10d4>)
d0052870:	b2c5      	uxtb	r5, r0
d0052872:	4f65      	ldr	r7, [pc, #404]	; (d0052a08 <main+0x10d8>)
d0052874:	f44f 767a 	mov.w	r6, #1000	; 0x3e8
d0052878:	f8d3 8000 	ldr.w	r8, [r3]
d005287c:	4b5d      	ldr	r3, [pc, #372]	; (d00529f4 <main+0x10c4>)
d005287e:	681a      	ldr	r2, [r3, #0]
d0052880:	4b5d      	ldr	r3, [pc, #372]	; (d00529f8 <main+0x10c8>)
d0052882:	9208      	str	r2, [sp, #32]
d0052884:	681b      	ldr	r3, [r3, #0]
d0052886:	9306      	str	r3, [sp, #24]
d0052888:	f006 f838 	bl	d00588fc <getRenderTriCount>
d005288c:	f8df c1a8 	ldr.w	ip, [pc, #424]	; d0052a38 <main+0x1108>
d0052890:	9003      	str	r0, [sp, #12]
d0052892:	fbac 3108 	umull	r3, r1, ip, r8
d0052896:	9a08      	ldr	r2, [sp, #32]
d0052898:	9b06      	ldr	r3, [sp, #24]
d005289a:	ea4f 4e51 	mov.w	lr, r1, lsr #17
d005289e:	485b      	ldr	r0, [pc, #364]	; (d0052a0c <main+0x10dc>)
d00528a0:	495b      	ldr	r1, [pc, #364]	; (d0052a10 <main+0x10e0>)
d00528a2:	fb07 871e 	mls	r7, r7, lr, r8
d00528a6:	9502      	str	r5, [sp, #8]
d00528a8:	fb06 f607 	mul.w	r6, r6, r7
d00528ac:	f8cd e000 	str.w	lr, [sp]
d00528b0:	fbac 7606 	umull	r7, r6, ip, r6
d00528b4:	0c76      	lsrs	r6, r6, #17
d00528b6:	9601      	str	r6, [sp, #4]
d00528b8:	f008 fc2a 	bl	d005b110 <siprintf>
d00528bc:	4b55      	ldr	r3, [pc, #340]	; (d0052a14 <main+0x10e4>)
d00528be:	781b      	ldrb	r3, [r3, #0]
d00528c0:	42ab      	cmp	r3, r5
d00528c2:	d002      	beq.n	d00528ca <main+0xf9a>
d00528c4:	2d14      	cmp	r5, #20
d00528c6:	f000 826b 	beq.w	d0052da0 <main+0x1470>
d00528ca:	9b04      	ldr	r3, [sp, #16]
d00528cc:	0118      	lsls	r0, r3, #4
d00528ce:	3001      	adds	r0, #1
d00528d0:	7b23      	ldrb	r3, [r4, #12]
d00528d2:	2640      	movs	r6, #64	; 0x40
d00528d4:	7b62      	ldrb	r2, [r4, #13]
d00528d6:	7ba7      	ldrb	r7, [r4, #14]
d00528d8:	ea43 2102 	orr.w	r1, r3, r2, lsl #8
d00528dc:	4a4d      	ldr	r2, [pc, #308]	; (d0052a14 <main+0x10e4>)
d00528de:	7be3      	ldrb	r3, [r4, #15]
d00528e0:	7015      	strb	r5, [r2, #0]
d00528e2:	ea41 4207 	orr.w	r2, r1, r7, lsl #16
d00528e6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00528ea:	685b      	ldr	r3, [r3, #4]
d00528ec:	68db      	ldr	r3, [r3, #12]
d00528ee:	4798      	blx	r3
d00528f0:	7b20      	ldrb	r0, [r4, #12]
d00528f2:	7b65      	ldrb	r5, [r4, #13]
d00528f4:	2108      	movs	r1, #8
d00528f6:	7ba3      	ldrb	r3, [r4, #14]
d00528f8:	ea40 2505 	orr.w	r5, r0, r5, lsl #8
d00528fc:	7be7      	ldrb	r7, [r4, #15]
d00528fe:	4608      	mov	r0, r1
d0052900:	4a42      	ldr	r2, [pc, #264]	; (d0052a0c <main+0x10dc>)
d0052902:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
d0052906:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d005290a:	687b      	ldr	r3, [r7, #4]
d005290c:	4f42      	ldr	r7, [pc, #264]	; (d0052a18 <main+0x10e8>)
d005290e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0052910:	4798      	blx	r3
d0052912:	eddf 7a42 	vldr	s15, [pc, #264]	; d0052a1c <main+0x10ec>
d0052916:	7c25      	ldrb	r5, [r4, #16]
d0052918:	2002      	movs	r0, #2
d005291a:	ee68 7a27 	vmul.f32	s15, s16, s15
d005291e:	7c62      	ldrb	r2, [r4, #17]
d0052920:	ed9f 7a3f 	vldr	s14, [pc, #252]	; d0052a20 <main+0x10f0>
d0052924:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d0052928:	7ca2      	ldrb	r2, [r4, #18]
d005292a:	eef0 7ae7 	vabs.f32	s15, s15
d005292e:	7ce3      	ldrb	r3, [r4, #19]
d0052930:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052934:	ee77 7a87 	vadd.f32	s15, s15, s14
d0052938:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005293c:	689b      	ldr	r3, [r3, #8]
d005293e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052942:	691b      	ldr	r3, [r3, #16]
d0052944:	ee17 2a90 	vmov	r2, s15
d0052948:	b291      	uxth	r1, r2
d005294a:	4798      	blx	r3
d005294c:	ed9f 7a35 	vldr	s14, [pc, #212]	; d0052a24 <main+0x10f4>
d0052950:	ee68 7a2a 	vmul.f32	s15, s16, s21
d0052954:	ed97 8a00 	vldr	s16, [r7]
d0052958:	eef4 8a47 	vcmp.f32	s17, s14
d005295c:	7b21      	ldrb	r1, [r4, #12]
d005295e:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0052962:	7b62      	ldrb	r2, [r4, #13]
d0052964:	ee77 7ac8 	vsub.f32	s15, s15, s16
d0052968:	7ba3      	ldrb	r3, [r4, #14]
d005296a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005296e:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0052972:	7be0      	ldrb	r0, [r4, #15]
d0052974:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0052978:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d005297c:	eefe 8a00 	vmov.f32	s17, #224	; 0xbf000000 -0.5
d0052980:	fe76 baab 	vselgt.f32	s23, s13, s23
d0052984:	eea7 8aab 	vfma.f32	s16, s15, s23
d0052988:	ea43 6000 	orr.w	r0, r3, r0, lsl #24
d005298c:	f44f 7280 	mov.w	r2, #256	; 0x100
d0052990:	4633      	mov	r3, r6
d0052992:	210a      	movs	r1, #10
d0052994:	6845      	ldr	r5, [r0, #4]
d0052996:	9600      	str	r6, [sp, #0]
d0052998:	4823      	ldr	r0, [pc, #140]	; (d0052a28 <main+0x10f8>)
d005299a:	eeb5 8ac0 	vcmpe.f32	s16, #0.0
d005299e:	69ad      	ldr	r5, [r5, #24]
d00529a0:	ed87 8a00 	vstr	s16, [r7]
d00529a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00529a8:	fe67 8a28 	vselge.f32	s17, s14, s17
d00529ac:	47a8      	blx	r5
d00529ae:	4b1f      	ldr	r3, [pc, #124]	; (d0052a2c <main+0x10fc>)
d00529b0:	781b      	ldrb	r3, [r3, #0]
d00529b2:	b1cb      	cbz	r3, d00529e8 <main+0x10b8>
d00529b4:	7b21      	ldrb	r1, [r4, #12]
d00529b6:	ee38 8a28 	vadd.f32	s16, s16, s17
d00529ba:	7b60      	ldrb	r0, [r4, #13]
d00529bc:	4633      	mov	r3, r6
d00529be:	7ba5      	ldrb	r5, [r4, #14]
d00529c0:	2280      	movs	r2, #128	; 0x80
d00529c2:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d00529c6:	eefd 7ac8 	vcvt.s32.f32	s15, s16
d00529ca:	7be7      	ldrb	r7, [r4, #15]
d00529cc:	ea41 4005 	orr.w	r0, r1, r5, lsl #16
d00529d0:	ee17 1a90 	vmov	r1, s15
d00529d4:	ea40 6507 	orr.w	r5, r0, r7, lsl #24
d00529d8:	4815      	ldr	r0, [pc, #84]	; (d0052a30 <main+0x1100>)
d00529da:	f1c1 01d0 	rsb	r1, r1, #208	; 0xd0
d00529de:	686d      	ldr	r5, [r5, #4]
d00529e0:	b209      	sxth	r1, r1
d00529e2:	9600      	str	r6, [sp, #0]
d00529e4:	69ad      	ldr	r5, [r5, #24]
d00529e6:	47a8      	blx	r5
d00529e8:	4f12      	ldr	r7, [pc, #72]	; (d0052a34 <main+0x1104>)
d00529ea:	2633      	movs	r6, #51	; 0x33
d00529ec:	e060      	b.n	d0052ab0 <main+0x1180>
d00529ee:	bf00      	nop
d00529f0:	51eb851f 	.word	0x51eb851f
d00529f4:	d005f9fc 	.word	0xd005f9fc
d00529f8:	d005f9f0 	.word	0xd005f9f0
d00529fc:	d005f9f8 	.word	0xd005f9f8
d0052a00:	d005f9f4 	.word	0xd005f9f4
d0052a04:	d005fa30 	.word	0xd005fa30
d0052a08:	00075300 	.word	0x00075300
d0052a0c:	d005f8ac 	.word	0xd005f8ac
d0052a10:	d005cc20 	.word	0xd005cc20
d0052a14:	d005fa10 	.word	0xd005fa10
d0052a18:	d005fa1c 	.word	0xd005fa1c
d0052a1c:	448fc000 	.word	0x448fc000
d0052a20:	472c4400 	.word	0x472c4400
d0052a24:	3daaaaab 	.word	0x3daaaaab
d0052a28:	d005d4a0 	.word	0xd005d4a0
d0052a2c:	d005fa00 	.word	0xd005fa00
d0052a30:	d005e4a0 	.word	0xd005e4a0
d0052a34:	d00f9e82 	.word	0xd00f9e82
d0052a38:	45e7b273 	.word	0x45e7b273
d0052a3c:	3f7ef9db 	.word	0x3f7ef9db
d0052a40:	3b83126f 	.word	0x3b83126f
d0052a44:	883b      	ldrh	r3, [r7, #0]
d0052a46:	f1c3 0332 	rsb	r3, r3, #50	; 0x32
d0052a4a:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d0052a4e:	005d      	lsls	r5, r3, #1
d0052a50:	f115 0f31 	cmn.w	r5, #49	; 0x31
d0052a54:	f2c0 80c0 	blt.w	d0052bd8 <main+0x12a8>
d0052a58:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0052a5c:	2000      	movs	r0, #0
d0052a5e:	7b61      	ldrb	r1, [r4, #13]
d0052a60:	7ba2      	ldrb	r2, [r4, #14]
d0052a62:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0052a66:	7be3      	ldrb	r3, [r4, #15]
d0052a68:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052a6c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052a70:	685b      	ldr	r3, [r3, #4]
d0052a72:	68db      	ldr	r3, [r3, #12]
d0052a74:	4798      	blx	r3
d0052a76:	7b21      	ldrb	r1, [r4, #12]
d0052a78:	7b60      	ldrb	r0, [r4, #13]
d0052a7a:	2312      	movs	r3, #18
d0052a7c:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0052a80:	2206      	movs	r2, #6
d0052a82:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0052a86:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0052a8a:	b231      	sxth	r1, r6
d0052a8c:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d0052a90:	2009      	movs	r0, #9
d0052a92:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0052a96:	f8dc c004 	ldr.w	ip, [ip, #4]
d0052a9a:	f8dc 8004 	ldr.w	r8, [ip, #4]
d0052a9e:	47c0      	blx	r8
d0052aa0:	2d31      	cmp	r5, #49	; 0x31
d0052aa2:	f300 81c4 	bgt.w	d0052e2e <main+0x14fe>
d0052aa6:	3616      	adds	r6, #22
d0052aa8:	3706      	adds	r7, #6
d0052aaa:	b2b6      	uxth	r6, r6
d0052aac:	2ee3      	cmp	r6, #227	; 0xe3
d0052aae:	d078      	beq.n	d0052ba2 <main+0x1272>
d0052ab0:	7b25      	ldrb	r5, [r4, #12]
d0052ab2:	201b      	movs	r0, #27
d0052ab4:	7b61      	ldrb	r1, [r4, #13]
d0052ab6:	7ba2      	ldrb	r2, [r4, #14]
d0052ab8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0052abc:	7be3      	ldrb	r3, [r4, #15]
d0052abe:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052ac2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052ac6:	685b      	ldr	r3, [r3, #4]
d0052ac8:	68db      	ldr	r3, [r3, #12]
d0052aca:	4798      	blx	r3
d0052acc:	7b20      	ldrb	r0, [r4, #12]
d0052ace:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0052ad2:	2208      	movs	r2, #8
d0052ad4:	7ba5      	ldrb	r5, [r4, #14]
d0052ad6:	1e71      	subs	r1, r6, #1
d0052ad8:	ea40 230c 	orr.w	r3, r0, ip, lsl #8
d0052adc:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0052ae0:	4610      	mov	r0, r2
d0052ae2:	b209      	sxth	r1, r1
d0052ae4:	ea43 4c05 	orr.w	ip, r3, r5, lsl #16
d0052ae8:	2314      	movs	r3, #20
d0052aea:	ea4c 650e 	orr.w	r5, ip, lr, lsl #24
d0052aee:	686d      	ldr	r5, [r5, #4]
d0052af0:	686d      	ldr	r5, [r5, #4]
d0052af2:	47a8      	blx	r5
d0052af4:	f817 0c02 	ldrb.w	r0, [r7, #-2]
d0052af8:	2800      	cmp	r0, #0
d0052afa:	d1a3      	bne.n	d0052a44 <main+0x1114>
d0052afc:	7b23      	ldrb	r3, [r4, #12]
d0052afe:	2512      	movs	r5, #18
d0052b00:	7b61      	ldrb	r1, [r4, #13]
d0052b02:	7ba2      	ldrb	r2, [r4, #14]
d0052b04:	46a8      	mov	r8, r5
d0052b06:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0052b0a:	7be3      	ldrb	r3, [r4, #15]
d0052b0c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052b10:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052b14:	685b      	ldr	r3, [r3, #4]
d0052b16:	68db      	ldr	r3, [r3, #12]
d0052b18:	4798      	blx	r3
d0052b1a:	7b20      	ldrb	r0, [r4, #12]
d0052b1c:	7b61      	ldrb	r1, [r4, #13]
d0052b1e:	462b      	mov	r3, r5
d0052b20:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0052b24:	2206      	movs	r2, #6
d0052b26:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052b2a:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0052b2e:	2009      	movs	r0, #9
d0052b30:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
d0052b34:	b231      	sxth	r1, r6
d0052b36:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0052b3a:	f8dc c004 	ldr.w	ip, [ip, #4]
d0052b3e:	f8dc b004 	ldr.w	fp, [ip, #4]
d0052b42:	47d8      	blx	fp
d0052b44:	7b20      	ldrb	r0, [r4, #12]
d0052b46:	3706      	adds	r7, #6
d0052b48:	7b61      	ldrb	r1, [r4, #13]
d0052b4a:	7ba2      	ldrb	r2, [r4, #14]
d0052b4c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052b50:	7be3      	ldrb	r3, [r4, #15]
d0052b52:	f817 0c08 	ldrb.w	r0, [r7, #-8]
d0052b56:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052b5a:	2800      	cmp	r0, #0
d0052b5c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052b60:	bf14      	ite	ne
d0052b62:	200e      	movne	r0, #14
d0052b64:	201b      	moveq	r0, #27
d0052b66:	685b      	ldr	r3, [r3, #4]
d0052b68:	68db      	ldr	r3, [r3, #12]
d0052b6a:	4798      	blx	r3
d0052b6c:	7b22      	ldrb	r2, [r4, #12]
d0052b6e:	7b60      	ldrb	r0, [r4, #13]
d0052b70:	462b      	mov	r3, r5
d0052b72:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0052b76:	f106 0112 	add.w	r1, r6, #18
d0052b7a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0052b7e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0052b82:	3616      	adds	r6, #22
d0052b84:	eba1 0108 	sub.w	r1, r1, r8
d0052b88:	ea40 450e 	orr.w	r5, r0, lr, lsl #16
d0052b8c:	2206      	movs	r2, #6
d0052b8e:	b2b6      	uxth	r6, r6
d0052b90:	2009      	movs	r0, #9
d0052b92:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0052b96:	b209      	sxth	r1, r1
d0052b98:	686d      	ldr	r5, [r5, #4]
d0052b9a:	686d      	ldr	r5, [r5, #4]
d0052b9c:	47a8      	blx	r5
d0052b9e:	2ee3      	cmp	r6, #227	; 0xe3
d0052ba0:	d186      	bne.n	d0052ab0 <main+0x1180>
d0052ba2:	7b20      	ldrb	r0, [r4, #12]
d0052ba4:	7b61      	ldrb	r1, [r4, #13]
d0052ba6:	7ba2      	ldrb	r2, [r4, #14]
d0052ba8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052bac:	7be3      	ldrb	r3, [r4, #15]
d0052bae:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052bb2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052bb6:	681b      	ldr	r3, [r3, #0]
d0052bb8:	681b      	ldr	r3, [r3, #0]
d0052bba:	4798      	blx	r3
d0052bbc:	ed5f 7a61 	vldr	s15, [pc, #-388]	; d0052a3c <main+0x110c>
d0052bc0:	eef4 9ae7 	vcmpe.f32	s19, s15
d0052bc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bc8:	dc57      	bgt.n	d0052c7a <main+0x134a>
d0052bca:	ed5f 7a63 	vldr	s15, [pc, #-396]	; d0052a40 <main+0x1110>
d0052bce:	ee79 9aa7 	vadd.f32	s19, s19, s15
d0052bd2:	9d05      	ldr	r5, [sp, #20]
d0052bd4:	f7ff bbfe 	b.w	d00523d4 <main+0xaa4>
d0052bd8:	7b25      	ldrb	r5, [r4, #12]
d0052bda:	2000      	movs	r0, #0
d0052bdc:	7b61      	ldrb	r1, [r4, #13]
d0052bde:	7ba2      	ldrb	r2, [r4, #14]
d0052be0:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0052be4:	7be3      	ldrb	r3, [r4, #15]
d0052be6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052bea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052bee:	685b      	ldr	r3, [r3, #4]
d0052bf0:	68db      	ldr	r3, [r3, #12]
d0052bf2:	4798      	blx	r3
d0052bf4:	7b21      	ldrb	r1, [r4, #12]
d0052bf6:	7b60      	ldrb	r0, [r4, #13]
d0052bf8:	2312      	movs	r3, #18
d0052bfa:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0052bfe:	2206      	movs	r2, #6
d0052c00:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0052c04:	7be5      	ldrb	r5, [r4, #15]
d0052c06:	b231      	sxth	r1, r6
d0052c08:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0052c0c:	2009      	movs	r0, #9
d0052c0e:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d0052c12:	686d      	ldr	r5, [r5, #4]
d0052c14:	686d      	ldr	r5, [r5, #4]
d0052c16:	47a8      	blx	r5
d0052c18:	e745      	b.n	d0052aa6 <main+0x1176>
d0052c1a:	2701      	movs	r7, #1
d0052c1c:	e52c      	b.n	d0052678 <main+0xd48>
d0052c1e:	4b87      	ldr	r3, [pc, #540]	; (d0052e3c <main+0x150c>)
d0052c20:	4f87      	ldr	r7, [pc, #540]	; (d0052e40 <main+0x1510>)
d0052c22:	f8d3 8000 	ldr.w	r8, [r3]
d0052c26:	4b87      	ldr	r3, [pc, #540]	; (d0052e44 <main+0x1514>)
d0052c28:	4e87      	ldr	r6, [pc, #540]	; (d0052e48 <main+0x1518>)
d0052c2a:	681a      	ldr	r2, [r3, #0]
d0052c2c:	4b87      	ldr	r3, [pc, #540]	; (d0052e4c <main+0x151c>)
d0052c2e:	9208      	str	r2, [sp, #32]
d0052c30:	681b      	ldr	r3, [r3, #0]
d0052c32:	9306      	str	r3, [sp, #24]
d0052c34:	f005 fe62 	bl	d00588fc <getRenderTriCount>
d0052c38:	fba7 3508 	umull	r3, r5, r7, r8
d0052c3c:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d0052c40:	9003      	str	r0, [sp, #12]
d0052c42:	0c68      	lsrs	r0, r5, #17
d0052c44:	2514      	movs	r5, #20
d0052c46:	9b06      	ldr	r3, [sp, #24]
d0052c48:	fb06 8610 	mls	r6, r6, r0, r8
d0052c4c:	9a08      	ldr	r2, [sp, #32]
d0052c4e:	9502      	str	r5, [sp, #8]
d0052c50:	fb01 f606 	mul.w	r6, r1, r6
d0052c54:	497e      	ldr	r1, [pc, #504]	; (d0052e50 <main+0x1520>)
d0052c56:	9000      	str	r0, [sp, #0]
d0052c58:	fba7 5606 	umull	r5, r6, r7, r6
d0052c5c:	487d      	ldr	r0, [pc, #500]	; (d0052e54 <main+0x1524>)
d0052c5e:	0c76      	lsrs	r6, r6, #17
d0052c60:	9601      	str	r6, [sp, #4]
d0052c62:	f008 fa55 	bl	d005b110 <siprintf>
d0052c66:	4b7c      	ldr	r3, [pc, #496]	; (d0052e58 <main+0x1528>)
d0052c68:	781d      	ldrb	r5, [r3, #0]
d0052c6a:	2d14      	cmp	r5, #20
d0052c6c:	f040 8098 	bne.w	d0052da0 <main+0x1470>
d0052c70:	9b04      	ldr	r3, [sp, #16]
d0052c72:	0118      	lsls	r0, r3, #4
d0052c74:	3001      	adds	r0, #1
d0052c76:	b2c0      	uxtb	r0, r0
d0052c78:	e62a      	b.n	d00528d0 <main+0xfa0>
d0052c7a:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0052c7e:	e7a8      	b.n	d0052bd2 <main+0x12a2>
d0052c80:	4d76      	ldr	r5, [pc, #472]	; (d0052e5c <main+0x152c>)
d0052c82:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0052c86:	7be3      	ldrb	r3, [r4, #15]
d0052c88:	6829      	ldr	r1, [r5, #0]
d0052c8a:	4875      	ldr	r0, [pc, #468]	; (d0052e60 <main+0x1530>)
d0052c8c:	e4e3      	b.n	d0052656 <main+0xd26>
d0052c8e:	f894 c010 	ldrb.w	ip, [r4, #16]
d0052c92:	7c61      	ldrb	r1, [r4, #17]
d0052c94:	7ca2      	ldrb	r2, [r4, #18]
d0052c96:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0052c9a:	7ce3      	ldrb	r3, [r4, #19]
d0052c9c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052ca0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052ca4:	689b      	ldr	r3, [r3, #8]
d0052ca6:	689b      	ldr	r3, [r3, #8]
d0052ca8:	4798      	blx	r3
d0052caa:	f894 c010 	ldrb.w	ip, [r4, #16]
d0052cae:	7c61      	ldrb	r1, [r4, #17]
d0052cb0:	4638      	mov	r0, r7
d0052cb2:	7ca2      	ldrb	r2, [r4, #18]
d0052cb4:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0052cb8:	7ce3      	ldrb	r3, [r4, #19]
d0052cba:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052cbe:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052cc2:	689b      	ldr	r3, [r3, #8]
d0052cc4:	685b      	ldr	r3, [r3, #4]
d0052cc6:	4798      	blx	r3
d0052cc8:	f80b 6c01 	strb.w	r6, [fp, #-1]
d0052ccc:	e4fe      	b.n	d00526cc <main+0xd9c>
d0052cce:	eddf ba65 	vldr	s23, [pc, #404]	; d0052e64 <main+0x1534>
d0052cd2:	eddf ca65 	vldr	s25, [pc, #404]	; d0052e68 <main+0x1538>
d0052cd6:	ed9f da65 	vldr	s26, [pc, #404]	; d0052e6c <main+0x153c>
d0052cda:	eddf da65 	vldr	s27, [pc, #404]	; d0052e70 <main+0x1540>
d0052cde:	ed9f ca65 	vldr	s24, [pc, #404]	; d0052e74 <main+0x1544>
d0052ce2:	ed9f ea65 	vldr	s28, [pc, #404]	; d0052e78 <main+0x1548>
d0052ce6:	eddf 8a65 	vldr	s17, [pc, #404]	; d0052e7c <main+0x154c>
d0052cea:	f7ff bbc0 	b.w	d005246e <main+0xb3e>
d0052cee:	4b64      	ldr	r3, [pc, #400]	; (d0052e80 <main+0x1550>)
d0052cf0:	4648      	mov	r0, r9
d0052cf2:	4a64      	ldr	r2, [pc, #400]	; (d0052e84 <main+0x1554>)
d0052cf4:	4964      	ldr	r1, [pc, #400]	; (d0052e88 <main+0x1558>)
d0052cf6:	781b      	ldrb	r3, [r3, #0]
d0052cf8:	7812      	ldrb	r2, [r2, #0]
d0052cfa:	7809      	ldrb	r1, [r1, #0]
d0052cfc:	f006 f812 	bl	d0058d24 <drawFakeHorizon>
d0052d00:	e516      	b.n	d0052730 <main+0xe00>
d0052d02:	eeb0 0a68 	vmov.f32	s0, s17
d0052d06:	9809      	ldr	r0, [sp, #36]	; 0x24
d0052d08:	f7fe f8f6 	bl	d0050ef8 <weatherLightning>
d0052d0c:	4680      	mov	r8, r0
d0052d0e:	e44c      	b.n	d00525aa <main+0xc7a>
d0052d10:	eef0 0a6a 	vmov.f32	s1, s21
d0052d14:	ed9f 1a5d 	vldr	s2, [pc, #372]	; d0052e8c <main+0x155c>
d0052d18:	ed9f 0a5d 	vldr	s0, [pc, #372]	; d0052e90 <main+0x1560>
d0052d1c:	f002 fe6c 	bl	d00559f8 <vec3>
d0052d20:	ee1e 0a90 	vmov	r0, s29
d0052d24:	ed8d 0a61 	vstr	s0, [sp, #388]	; 0x184
d0052d28:	edcd 0a62 	vstr	s1, [sp, #392]	; 0x188
d0052d2c:	ed8d 1a63 	vstr	s2, [sp, #396]	; 0x18c
d0052d30:	f004 f8f8 	bl	d0056f24 <entitySetPosition>
d0052d34:	e411      	b.n	d005255a <main+0xc2a>
d0052d36:	eef1 0a60 	vneg.f32	s1, s1
d0052d3a:	2101      	movs	r1, #1
d0052d3c:	eeb0 1a49 	vmov.f32	s2, s18
d0052d40:	ed9f 0a54 	vldr	s0, [pc, #336]	; d0052e94 <main+0x1564>
d0052d44:	4648      	mov	r0, r9
d0052d46:	f003 fbdd 	bl	d0056504 <cameraTurn>
d0052d4a:	f7ff bbd4 	b.w	d00524f6 <main+0xbc6>
d0052d4e:	9d09      	ldr	r5, [sp, #36]	; 0x24
d0052d50:	2101      	movs	r1, #1
d0052d52:	4628      	mov	r0, r5
d0052d54:	f004 ff74 	bl	d0057c40 <lightEnable>
d0052d58:	4628      	mov	r0, r5
d0052d5a:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0052d5e:	f005 f805 	bl	d0057d6c <lightSetIntensity>
d0052d62:	eeb0 0a49 	vmov.f32	s0, s18
d0052d66:	2301      	movs	r3, #1
d0052d68:	2224      	movs	r2, #36	; 0x24
d0052d6a:	212b      	movs	r1, #43	; 0x2b
d0052d6c:	4648      	mov	r0, r9
d0052d6e:	f005 ffd9 	bl	d0058d24 <drawFakeHorizon>
d0052d72:	e4e5      	b.n	d0052740 <main+0xe10>
d0052d74:	2300      	movs	r3, #0
d0052d76:	eeb0 1a6c 	vmov.f32	s2, s25
d0052d7a:	eef0 0a49 	vmov.f32	s1, s18
d0052d7e:	ed9f 0a45 	vldr	s0, [pc, #276]	; d0052e94 <main+0x1564>
d0052d82:	4648      	mov	r0, r9
d0052d84:	9307      	str	r3, [sp, #28]
d0052d86:	f003 fd99 	bl	d00568bc <cameraMove>
d0052d8a:	e42f      	b.n	d00525ec <main+0xcbc>
d0052d8c:	eeb0 0a68 	vmov.f32	s0, s17
d0052d90:	4649      	mov	r1, r9
d0052d92:	a879      	add	r0, sp, #484	; 0x1e4
d0052d94:	f7fd fe2c 	bl	d00509f0 <splineRailUpdate>
d0052d98:	e4a3      	b.n	d00526e2 <main+0xdb2>
d0052d9a:	2200      	movs	r2, #0
d0052d9c:	4613      	mov	r3, r2
d0052d9e:	e556      	b.n	d005284e <main+0xf1e>
d0052da0:	9b04      	ldr	r3, [sp, #16]
d0052da2:	2b00      	cmp	r3, #0
d0052da4:	d032      	beq.n	d0052e0c <main+0x14dc>
d0052da6:	4d38      	ldr	r5, [pc, #224]	; (d0052e88 <main+0x1558>)
d0052da8:	4618      	mov	r0, r3
d0052daa:	2313      	movs	r3, #19
d0052dac:	2112      	movs	r1, #18
d0052dae:	2215      	movs	r2, #21
d0052db0:	702b      	strb	r3, [r5, #0]
d0052db2:	2317      	movs	r3, #23
d0052db4:	4d33      	ldr	r5, [pc, #204]	; (d0052e84 <main+0x1554>)
d0052db6:	7029      	strb	r1, [r5, #0]
d0052db8:	2514      	movs	r5, #20
d0052dba:	4931      	ldr	r1, [pc, #196]	; (d0052e80 <main+0x1550>)
d0052dbc:	700a      	strb	r2, [r1, #0]
d0052dbe:	2200      	movs	r2, #0
d0052dc0:	9204      	str	r2, [sp, #16]
d0052dc2:	4a35      	ldr	r2, [pc, #212]	; (d0052e98 <main+0x1568>)
d0052dc4:	7013      	strb	r3, [r2, #0]
d0052dc6:	e583      	b.n	d00528d0 <main+0xfa0>
d0052dc8:	3b01      	subs	r3, #1
d0052dca:	4a34      	ldr	r2, [pc, #208]	; (d0052e9c <main+0x156c>)
d0052dcc:	7013      	strb	r3, [r2, #0]
d0052dce:	e4af      	b.n	d0052730 <main+0xe00>
d0052dd0:	f008 f890 	bl	d005aef4 <rand>
d0052dd4:	4242      	negs	r2, r0
d0052dd6:	f000 0303 	and.w	r3, r0, #3
d0052dda:	f002 0203 	and.w	r2, r2, #3
d0052dde:	bf58      	it	pl
d0052de0:	4253      	negpl	r3, r2
d0052de2:	4a2f      	ldr	r2, [pc, #188]	; (d0052ea0 <main+0x1570>)
d0052de4:	3303      	adds	r3, #3
d0052de6:	8013      	strh	r3, [r2, #0]
d0052de8:	f008 f884 	bl	d005aef4 <rand>
d0052dec:	4b2d      	ldr	r3, [pc, #180]	; (d0052ea4 <main+0x1574>)
d0052dee:	fb83 2300 	smull	r2, r3, r3, r0
d0052df2:	17c2      	asrs	r2, r0, #31
d0052df4:	4403      	add	r3, r0
d0052df6:	ebc2 12a3 	rsb	r2, r2, r3, asr #6
d0052dfa:	eb02 03c2 	add.w	r3, r2, r2, lsl #3
d0052dfe:	ebc2 02c3 	rsb	r2, r2, r3, lsl #3
d0052e02:	1a83      	subs	r3, r0, r2
d0052e04:	4a28      	ldr	r2, [pc, #160]	; (d0052ea8 <main+0x1578>)
d0052e06:	3314      	adds	r3, #20
d0052e08:	8013      	strh	r3, [r2, #0]
d0052e0a:	e402      	b.n	d0052612 <main+0xce2>
d0052e0c:	2009      	movs	r0, #9
d0052e0e:	4d1e      	ldr	r5, [pc, #120]	; (d0052e88 <main+0x1558>)
d0052e10:	213b      	movs	r1, #59	; 0x3b
d0052e12:	222b      	movs	r2, #43	; 0x2b
d0052e14:	7028      	strb	r0, [r5, #0]
d0052e16:	2001      	movs	r0, #1
d0052e18:	2302      	movs	r3, #2
d0052e1a:	2514      	movs	r5, #20
d0052e1c:	9004      	str	r0, [sp, #16]
d0052e1e:	4819      	ldr	r0, [pc, #100]	; (d0052e84 <main+0x1554>)
d0052e20:	7001      	strb	r1, [r0, #0]
d0052e22:	2011      	movs	r0, #17
d0052e24:	4916      	ldr	r1, [pc, #88]	; (d0052e80 <main+0x1550>)
d0052e26:	700a      	strb	r2, [r1, #0]
d0052e28:	4a1b      	ldr	r2, [pc, #108]	; (d0052e98 <main+0x1568>)
d0052e2a:	7013      	strb	r3, [r2, #0]
d0052e2c:	e550      	b.n	d00528d0 <main+0xfa0>
d0052e2e:	2332      	movs	r3, #50	; 0x32
d0052e30:	fb95 f5f3 	sdiv	r5, r5, r3
d0052e34:	fa1f f885 	uxth.w	r8, r5
d0052e38:	b22d      	sxth	r5, r5
d0052e3a:	e683      	b.n	d0052b44 <main+0x1214>
d0052e3c:	d005fa30 	.word	0xd005fa30
d0052e40:	45e7b273 	.word	0x45e7b273
d0052e44:	d005f9fc 	.word	0xd005f9fc
d0052e48:	00075300 	.word	0x00075300
d0052e4c:	d005f9f0 	.word	0xd005f9f0
d0052e50:	d005cc20 	.word	0xd005cc20
d0052e54:	d005f8ac 	.word	0xd005f8ac
d0052e58:	d005fa10 	.word	0xd005fa10
d0052e5c:	d00f9e00 	.word	0xd00f9e00
d0052e60:	d00f9de0 	.word	0xd00f9de0
d0052e64:	40d33334 	.word	0x40d33334
d0052e68:	42f20000 	.word	0x42f20000
d0052e6c:	42b6ee15 	.word	0x42b6ee15
d0052e70:	3f28f5c3 	.word	0x3f28f5c3
d0052e74:	4215999a 	.word	0x4215999a
d0052e78:	bc872b02 	.word	0xbc872b02
d0052e7c:	3f0ccccd 	.word	0x3f0ccccd
d0052e80:	d00f9ddc 	.word	0xd00f9ddc
d0052e84:	d00f9d20 	.word	0xd00f9d20
d0052e88:	d00f9da4 	.word	0xd00f9da4
d0052e8c:	c3c80000 	.word	0xc3c80000
d0052e90:	c3070000 	.word	0xc3070000
d0052e94:	00000000 	.word	0x00000000
d0052e98:	d00f9d84 	.word	0xd00f9d84
d0052e9c:	d005f8a4 	.word	0xd005f8a4
d0052ea0:	d005fa38 	.word	0xd005fa38
d0052ea4:	e6c2b449 	.word	0xe6c2b449
d0052ea8:	d005fa3a 	.word	0xd005fa3a

d0052eac <meshSetDefaultMaterial>:
d0052eac:	b148      	cbz	r0, d0052ec2 <meshSetDefaultMaterial+0x16>
d0052eae:	2300      	movs	r3, #0
d0052eb0:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0052eb4:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d0052eb8:	6203      	str	r3, [r0, #32]
d0052eba:	6241      	str	r1, [r0, #36]	; 0x24
d0052ebc:	62c2      	str	r2, [r0, #44]	; 0x2c
d0052ebe:	6303      	str	r3, [r0, #48]	; 0x30
d0052ec0:	6283      	str	r3, [r0, #40]	; 0x28
d0052ec2:	4770      	bx	lr

d0052ec4 <meshSetMaterial>:
d0052ec4:	b148      	cbz	r0, d0052eda <meshSetMaterial+0x16>
d0052ec6:	ed80 0a08 	vstr	s0, [r0, #32]
d0052eca:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0052ece:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d0052ed2:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d0052ed6:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d0052eda:	4770      	bx	lr

d0052edc <initDepthBandMem>:
d0052edc:	4a08      	ldr	r2, [pc, #32]	; (d0052f00 <initDepthBandMem+0x24>)
d0052ede:	b508      	push	{r3, lr}
d0052ee0:	7813      	ldrb	r3, [r2, #0]
d0052ee2:	7850      	ldrb	r0, [r2, #1]
d0052ee4:	7891      	ldrb	r1, [r2, #2]
d0052ee6:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0052eea:	78d2      	ldrb	r2, [r2, #3]
d0052eec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0052ef0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052ef4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0052ef6:	4798      	blx	r3
d0052ef8:	4b02      	ldr	r3, [pc, #8]	; (d0052f04 <initDepthBandMem+0x28>)
d0052efa:	6018      	str	r0, [r3, #0]
d0052efc:	bd08      	pop	{r3, pc}
d0052efe:	bf00      	nop
d0052f00:	2001f000 	.word	0x2001f000
d0052f04:	d005fa44 	.word	0xd005fa44

d0052f08 <beginDepthBand>:
d0052f08:	f100 031f 	add.w	r3, r0, #31
d0052f0c:	4a0d      	ldr	r2, [pc, #52]	; (d0052f44 <beginDepthBand+0x3c>)
d0052f0e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0052f12:	6010      	str	r0, [r2, #0]
d0052f14:	da08      	bge.n	d0052f28 <beginDepthBand+0x20>
d0052f16:	490c      	ldr	r1, [pc, #48]	; (d0052f48 <beginDepthBand+0x40>)
d0052f18:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d0052f1c:	600b      	str	r3, [r1, #0]
d0052f1e:	21ff      	movs	r1, #255	; 0xff
d0052f20:	4b0a      	ldr	r3, [pc, #40]	; (d0052f4c <beginDepthBand+0x44>)
d0052f22:	6818      	ldr	r0, [r3, #0]
d0052f24:	f007 bf34 	b.w	d005ad90 <memset>
d0052f28:	4b07      	ldr	r3, [pc, #28]	; (d0052f48 <beginDepthBand+0x40>)
d0052f2a:	f240 123f 	movw	r2, #319	; 0x13f
d0052f2e:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d0052f32:	21ff      	movs	r1, #255	; 0xff
d0052f34:	601a      	str	r2, [r3, #0]
d0052f36:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d0052f3a:	4b04      	ldr	r3, [pc, #16]	; (d0052f4c <beginDepthBand+0x44>)
d0052f3c:	0182      	lsls	r2, r0, #6
d0052f3e:	6818      	ldr	r0, [r3, #0]
d0052f40:	f007 bf26 	b.w	d005ad90 <memset>
d0052f44:	d005fa3c 	.word	0xd005fa3c
d0052f48:	d005fa40 	.word	0xd005fa40
d0052f4c:	d005fa44 	.word	0xd005fa44

d0052f50 <set3DRenderBuffer>:
d0052f50:	4b01      	ldr	r3, [pc, #4]	; (d0052f58 <set3DRenderBuffer+0x8>)
d0052f52:	6018      	str	r0, [r3, #0]
d0052f54:	4770      	bx	lr
d0052f56:	bf00      	nop
d0052f58:	d00f9eb0 	.word	0xd00f9eb0

d0052f5c <putPixel>:
d0052f5c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0052f60:	d209      	bcs.n	d0052f76 <putPixel+0x1a>
d0052f62:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0052f66:	d206      	bcs.n	d0052f76 <putPixel+0x1a>
d0052f68:	4b03      	ldr	r3, [pc, #12]	; (d0052f78 <putPixel+0x1c>)
d0052f6a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0052f6e:	681b      	ldr	r3, [r3, #0]
d0052f70:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0052f74:	5442      	strb	r2, [r0, r1]
d0052f76:	4770      	bx	lr
d0052f78:	d00f9eb0 	.word	0xd00f9eb0

d0052f7c <drawLine>:
d0052f7c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052f80:	b085      	sub	sp, #20
d0052f82:	eba2 0c00 	sub.w	ip, r2, r0
d0052f86:	eba3 0901 	sub.w	r9, r3, r1
d0052f8a:	f240 1edf 	movw	lr, #479	; 0x1df
d0052f8e:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d0052f92:	f240 1a3f 	movw	sl, #319	; 0x13f
d0052f96:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0053014 <drawLine+0x98>
d0052f9a:	9401      	str	r4, [sp, #4]
d0052f9c:	4282      	cmp	r2, r0
d0052f9e:	bfcc      	ite	gt
d0052fa0:	2401      	movgt	r4, #1
d0052fa2:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0052fa6:	9402      	str	r4, [sp, #8]
d0052fa8:	428b      	cmp	r3, r1
d0052faa:	bfcc      	ite	gt
d0052fac:	2401      	movgt	r4, #1
d0052fae:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0052fb2:	f1bc 0f00 	cmp.w	ip, #0
d0052fb6:	9403      	str	r4, [sp, #12]
d0052fb8:	bfb8      	it	lt
d0052fba:	f1cc 0c00 	rsblt	ip, ip, #0
d0052fbe:	f1b9 0f00 	cmp.w	r9, #0
d0052fc2:	bfb8      	it	lt
d0052fc4:	f1c9 0900 	rsblt	r9, r9, #0
d0052fc8:	ebac 0409 	sub.w	r4, ip, r9
d0052fcc:	f1c9 0800 	rsb	r8, r9, #0
d0052fd0:	4570      	cmp	r0, lr
d0052fd2:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d0052fd6:	ea4f 0644 	mov.w	r6, r4, lsl #1
d0052fda:	d807      	bhi.n	d0052fec <drawLine+0x70>
d0052fdc:	4551      	cmp	r1, sl
d0052fde:	d805      	bhi.n	d0052fec <drawLine+0x70>
d0052fe0:	f8db 5000 	ldr.w	r5, [fp]
d0052fe4:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d0052fe8:	9f01      	ldr	r7, [sp, #4]
d0052fea:	546f      	strb	r7, [r5, r1]
d0052fec:	4290      	cmp	r0, r2
d0052fee:	d101      	bne.n	d0052ff4 <drawLine+0x78>
d0052ff0:	4299      	cmp	r1, r3
d0052ff2:	d00c      	beq.n	d005300e <drawLine+0x92>
d0052ff4:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d0052ff8:	dc05      	bgt.n	d0053006 <drawLine+0x8a>
d0052ffa:	9d02      	ldr	r5, [sp, #8]
d0052ffc:	45b4      	cmp	ip, r6
d0052ffe:	eba4 0409 	sub.w	r4, r4, r9
d0053002:	4428      	add	r0, r5
d0053004:	dbe4      	blt.n	d0052fd0 <drawLine+0x54>
d0053006:	9d03      	ldr	r5, [sp, #12]
d0053008:	4464      	add	r4, ip
d005300a:	4429      	add	r1, r5
d005300c:	e7e0      	b.n	d0052fd0 <drawLine+0x54>
d005300e:	b005      	add	sp, #20
d0053010:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053014:	d00f9eb0 	.word	0xd00f9eb0

d0053018 <shadeColor>:
d0053018:	2900      	cmp	r1, #0
d005301a:	db09      	blt.n	d0053030 <shadeColor+0x18>
d005301c:	2904      	cmp	r1, #4
d005301e:	dc09      	bgt.n	d0053034 <shadeColor+0x1c>
d0053020:	0109      	lsls	r1, r1, #4
d0053022:	b2c9      	uxtb	r1, r1
d0053024:	f000 000f 	and.w	r0, r0, #15
d0053028:	3020      	adds	r0, #32
d005302a:	4408      	add	r0, r1
d005302c:	b2c0      	uxtb	r0, r0
d005302e:	4770      	bx	lr
d0053030:	2100      	movs	r1, #0
d0053032:	e7f7      	b.n	d0053024 <shadeColor+0xc>
d0053034:	2010      	movs	r0, #16
d0053036:	4770      	bx	lr

d0053038 <fillTriangleFlat>:
d0053038:	eddf 7adc 	vldr	s15, [pc, #880]	; d00533ac <fillTriangleFlat+0x374>
d005303c:	eef4 0ae7 	vcmpe.f32	s1, s15
d0053040:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053044:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053048:	eeb4 1ae7 	vcmpe.f32	s2, s15
d005304c:	ed2d 8b10 	vpush	{d8-d15}
d0053050:	b08d      	sub	sp, #52	; 0x34
d0053052:	9304      	str	r3, [sp, #16]
d0053054:	bf94      	ite	ls
d0053056:	2301      	movls	r3, #1
d0053058:	2300      	movhi	r3, #0
d005305a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005305e:	9001      	str	r0, [sp, #4]
d0053060:	9102      	str	r1, [sp, #8]
d0053062:	bf98      	it	ls
d0053064:	f043 0301 	orrls.w	r3, r3, #1
d0053068:	9203      	str	r2, [sp, #12]
d005306a:	f8bd 40a0 	ldrh.w	r4, [sp, #160]	; 0xa0
d005306e:	f8bd 00a4 	ldrh.w	r0, [sp, #164]	; 0xa4
d0053072:	f8bd 10a8 	ldrh.w	r1, [sp, #168]	; 0xa8
d0053076:	f89d 20ac 	ldrb.w	r2, [sp, #172]	; 0xac
d005307a:	2b00      	cmp	r3, #0
d005307c:	f040 8169 	bne.w	d0053352 <fillTriangleFlat+0x31a>
d0053080:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0053084:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053088:	bf94      	ite	ls
d005308a:	2701      	movls	r7, #1
d005308c:	2700      	movhi	r7, #0
d005308e:	f240 8160 	bls.w	d0053352 <fillTriangleFlat+0x31a>
d0053092:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053096:	ee07 4a10 	vmov	s14, r4
d005309a:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005309e:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00530a2:	ee87 8a80 	vdiv.f32	s16, s15, s0
d00530a6:	eec7 2a81 	vdiv.f32	s5, s15, s2
d00530aa:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00530ae:	ee07 0a90 	vmov	s15, r0
d00530b2:	ee71 1aa6 	vadd.f32	s3, s3, s13
d00530b6:	eef8 5a67 	vcvt.f32.u32	s11, s15
d00530ba:	ee07 1a90 	vmov	s15, r1
d00530be:	ee27 7a08 	vmul.f32	s14, s14, s16
d00530c2:	eef8 3a67 	vcvt.f32.u32	s7, s15
d00530c6:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00530ca:	ee63 3aa2 	vmul.f32	s7, s7, s5
d00530ce:	ee17 3a90 	vmov	r3, s15
d00530d2:	2b00      	cmp	r3, #0
d00530d4:	ee65 5a80 	vmul.f32	s11, s11, s0
d00530d8:	f2c0 8142 	blt.w	d0053360 <fillTriangleFlat+0x328>
d00530dc:	2b04      	cmp	r3, #4
d00530de:	f340 813d 	ble.w	d005335c <fillTriangleFlat+0x324>
d00530e2:	2710      	movs	r7, #16
d00530e4:	eddd 7a02 	vldr	s15, [sp, #8]
d00530e8:	eddd 6a27 	vldr	s13, [sp, #156]	; 0x9c
d00530ec:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d00530f0:	eddd 7a04 	vldr	s15, [sp, #16]
d00530f4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00530f8:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d00530fc:	eddd 7a01 	vldr	s15, [sp, #4]
d0053100:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0053104:	eddd 7a03 	vldr	s15, [sp, #12]
d0053108:	eef4 4ac3 	vcmpe.f32	s9, s6
d005310c:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d0053110:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0053114:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053118:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005311c:	f300 8126 	bgt.w	d005336c <fillTriangleFlat+0x334>
d0053120:	eef4 4ae6 	vcmpe.f32	s9, s13
d0053124:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053128:	f300 8217 	bgt.w	d005355a <fillTriangleFlat+0x522>
d005312c:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0053130:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053134:	dd17      	ble.n	d0053166 <fillTriangleFlat+0x12e>
d0053136:	eeb0 1a65 	vmov.f32	s2, s11
d005313a:	eef0 1a40 	vmov.f32	s3, s0
d005313e:	eeb0 2a43 	vmov.f32	s4, s6
d0053142:	eeb0 5a44 	vmov.f32	s10, s8
d0053146:	eef0 5a63 	vmov.f32	s11, s7
d005314a:	eeb0 0a62 	vmov.f32	s0, s5
d005314e:	eeb0 3a66 	vmov.f32	s6, s13
d0053152:	eeb0 4a67 	vmov.f32	s8, s15
d0053156:	eef0 3a41 	vmov.f32	s7, s2
d005315a:	eef0 2a61 	vmov.f32	s5, s3
d005315e:	eef0 6a42 	vmov.f32	s13, s4
d0053162:	eef0 7a45 	vmov.f32	s15, s10
d0053166:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d005316a:	ee34 2a85 	vadd.f32	s4, s9, s10
d005316e:	ee36 5a85 	vadd.f32	s10, s13, s10
d0053172:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d0053176:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d005317a:	ee12 3a10 	vmov	r3, s4
d005317e:	ee15 2a10 	vmov	r2, s10
d0053182:	4293      	cmp	r3, r2
d0053184:	f000 80e5 	beq.w	d0053352 <fillTriangleFlat+0x31a>
d0053188:	ee36 2ae4 	vsub.f32	s4, s13, s9
d005318c:	ed9f 1a87 	vldr	s2, [pc, #540]	; d00533ac <fillTriangleFlat+0x374>
d0053190:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0053194:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053198:	f240 80db 	bls.w	d0053352 <fillTriangleFlat+0x31a>
d005319c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00531a0:	ee77 0ac6 	vsub.f32	s1, s15, s12
d00531a4:	ee72 8ac8 	vsub.f32	s17, s5, s16
d00531a8:	ee81 5a82 	vdiv.f32	s10, s3, s4
d00531ac:	ee33 2a64 	vsub.f32	s4, s6, s9
d00531b0:	ee33 9ac7 	vsub.f32	s18, s7, s14
d00531b4:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00531b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00531bc:	ee60 0a85 	vmul.f32	s1, s1, s10
d00531c0:	ee68 8a85 	vmul.f32	s17, s17, s10
d00531c4:	ee29 9a05 	vmul.f32	s18, s18, s10
d00531c8:	f300 80fe 	bgt.w	d00533c8 <fillTriangleFlat+0x390>
d00531cc:	ee36 5ac3 	vsub.f32	s10, s13, s6
d00531d0:	eeb4 5ac1 	vcmpe.f32	s10, s2
d00531d4:	ed8d 5a01 	vstr	s10, [sp, #4]
d00531d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00531dc:	f340 80b9 	ble.w	d0053352 <fillTriangleFlat+0x31a>
d00531e0:	ee81 5a85 	vdiv.f32	s10, s3, s10
d00531e4:	ee77 7ac4 	vsub.f32	s15, s15, s8
d00531e8:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00531ec:	ee72 2ac0 	vsub.f32	s5, s5, s0
d00531f0:	ee73 3ae5 	vsub.f32	s7, s7, s11
d00531f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00531f8:	ee67 7a85 	vmul.f32	s15, s15, s10
d00531fc:	ee62 fa85 	vmul.f32	s31, s5, s10
d0053200:	ee23 5a85 	vmul.f32	s10, s7, s10
d0053204:	edcd 7a04 	vstr	s15, [sp, #16]
d0053208:	f300 8343 	bgt.w	d0053892 <fillTriangleFlat+0x85a>
d005320c:	4a68      	ldr	r2, [pc, #416]	; (d00533b0 <fillTriangleFlat+0x378>)
d005320e:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0053212:	4b68      	ldr	r3, [pc, #416]	; (d00533b4 <fillTriangleFlat+0x37c>)
d0053214:	f8d2 a000 	ldr.w	sl, [r2]
d0053218:	681b      	ldr	r3, [r3, #0]
d005321a:	edcd 7a02 	vstr	s15, [sp, #8]
d005321e:	9303      	str	r3, [sp, #12]
d0053220:	9b02      	ldr	r3, [sp, #8]
d0053222:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0053226:	4553      	cmp	r3, sl
d0053228:	ee17 ea90 	vmov	lr, s15
d005322c:	bfb8      	it	lt
d005322e:	4653      	movlt	r3, sl
d0053230:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0053234:	469b      	mov	fp, r3
d0053236:	9b03      	ldr	r3, [sp, #12]
d0053238:	459e      	cmp	lr, r3
d005323a:	bfa8      	it	ge
d005323c:	469e      	movge	lr, r3
d005323e:	45f3      	cmp	fp, lr
d0053240:	f300 8087 	bgt.w	d0053352 <fillTriangleFlat+0x31a>
d0053244:	ee07 ba90 	vmov	s15, fp
d0053248:	eef6 1a00 	vmov.f32	s3, #96	; 0x3f000000  0.5
d005324c:	ebaa 1a0a 	sub.w	sl, sl, sl, lsl #4
d0053250:	4b59      	ldr	r3, [pc, #356]	; (d00533b8 <fillTriangleFlat+0x380>)
d0053252:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053256:	ed9d ba04 	vldr	s22, [sp, #16]
d005325a:	ea4f 124a 	mov.w	r2, sl, lsl #5
d005325e:	681b      	ldr	r3, [r3, #0]
d0053260:	f10e 0e01 	add.w	lr, lr, #1
d0053264:	eddf 9a51 	vldr	s19, [pc, #324]	; d00533ac <fillTriangleFlat+0x374>
d0053268:	ee77 7aa1 	vadd.f32	s15, s15, s3
d005326c:	ed9f aa53 	vldr	s20, [pc, #332]	; d00533bc <fillTriangleFlat+0x384>
d0053270:	ed9f 2a53 	vldr	s4, [pc, #332]	; d00533c0 <fillTriangleFlat+0x388>
d0053274:	ed9f 1a53 	vldr	s2, [pc, #332]	; d00533c4 <fillTriangleFlat+0x38c>
d0053278:	ee77 4ae4 	vsub.f32	s9, s15, s9
d005327c:	9202      	str	r2, [sp, #8]
d005327e:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0053282:	9301      	str	r3, [sp, #4]
d0053284:	eea0 6aa4 	vfma.f32	s12, s1, s9
d0053288:	eea8 8aa4 	vfma.f32	s16, s17, s9
d005328c:	eea9 7a24 	vfma.f32	s14, s18, s9
d0053290:	eea3 4a0b 	vfma.f32	s8, s6, s22
d0053294:	eea3 0a2f 	vfma.f32	s0, s6, s31
d0053298:	eee5 5a03 	vfma.f32	s11, s10, s6
d005329c:	e033      	b.n	d0053306 <fillTriangleFlat+0x2ce>
d005329e:	eef0 aa47 	vmov.f32	s21, s14
d00532a2:	eef0 2a48 	vmov.f32	s5, s16
d00532a6:	eef0 6a46 	vmov.f32	s13, s12
d00532aa:	eeb0 3a65 	vmov.f32	s6, s11
d00532ae:	eef0 4a40 	vmov.f32	s9, s0
d00532b2:	eef0 3a44 	vmov.f32	s7, s8
d00532b6:	fefa 7a66 	vrintp.f32	s15, s13
d00532ba:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00532be:	f240 13df 	movw	r3, #479	; 0x1df
d00532c2:	ee17 ca90 	vmov	ip, s15
d00532c6:	fefa 7a63 	vrintp.f32	s15, s7
d00532ca:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00532ce:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d00532d2:	ee17 5a90 	vmov	r5, s15
d00532d6:	459c      	cmp	ip, r3
d00532d8:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d00532dc:	bfa8      	it	ge
d00532de:	469c      	movge	ip, r3
d00532e0:	45ac      	cmp	ip, r5
d00532e2:	f280 816c 	bge.w	d00535be <fillTriangleFlat+0x586>
d00532e6:	f10b 0b01 	add.w	fp, fp, #1
d00532ea:	ee36 6a20 	vadd.f32	s12, s12, s1
d00532ee:	ee38 8a28 	vadd.f32	s16, s16, s17
d00532f2:	45f3      	cmp	fp, lr
d00532f4:	ee37 7a09 	vadd.f32	s14, s14, s18
d00532f8:	ee34 4a0b 	vadd.f32	s8, s8, s22
d00532fc:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0053300:	ee75 5a85 	vadd.f32	s11, s11, s10
d0053304:	d025      	beq.n	d0053352 <fillTriangleFlat+0x31a>
d0053306:	eeb4 6ac4 	vcmpe.f32	s12, s8
d005330a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005330e:	dcc6      	bgt.n	d005329e <fillTriangleFlat+0x266>
d0053310:	eef0 aa65 	vmov.f32	s21, s11
d0053314:	eef0 2a40 	vmov.f32	s5, s0
d0053318:	eef0 6a44 	vmov.f32	s13, s8
d005331c:	eeb0 3a47 	vmov.f32	s6, s14
d0053320:	eef0 4a48 	vmov.f32	s9, s16
d0053324:	eef0 3a46 	vmov.f32	s7, s12
d0053328:	e7c5      	b.n	d00532b6 <fillTriangleFlat+0x27e>
d005332a:	eddd 6a07 	vldr	s13, [sp, #28]
d005332e:	f8dd a020 	ldr.w	sl, [sp, #32]
d0053332:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d0053336:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d005333a:	ed9d 8a0b 	vldr	s16, [sp, #44]	; 0x2c
d005333e:	eddf 7a1b 	vldr	s15, [pc, #108]	; d00533ac <fillTriangleFlat+0x374>
d0053342:	eddd 3a01 	vldr	s7, [sp, #4]
d0053346:	eef4 3ae7 	vcmpe.f32	s7, s15
d005334a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005334e:	f73f af67 	bgt.w	d0053220 <fillTriangleFlat+0x1e8>
d0053352:	b00d      	add	sp, #52	; 0x34
d0053354:	ecbd 8b10 	vpop	{d8-d15}
d0053358:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005335c:	011b      	lsls	r3, r3, #4
d005335e:	b2df      	uxtb	r7, r3
d0053360:	f002 020f 	and.w	r2, r2, #15
d0053364:	3220      	adds	r2, #32
d0053366:	4417      	add	r7, r2
d0053368:	b2ff      	uxtb	r7, r7
d005336a:	e6bb      	b.n	d00530e4 <fillTriangleFlat+0xac>
d005336c:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0053370:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053374:	f340 810a 	ble.w	d005358c <fillTriangleFlat+0x554>
d0053378:	eeb0 1a63 	vmov.f32	s2, s7
d005337c:	eef0 1a62 	vmov.f32	s3, s5
d0053380:	eeb0 2a66 	vmov.f32	s4, s13
d0053384:	eeb0 5a67 	vmov.f32	s10, s15
d0053388:	eef0 3a47 	vmov.f32	s7, s14
d005338c:	eef0 2a48 	vmov.f32	s5, s16
d0053390:	eef0 6a64 	vmov.f32	s13, s9
d0053394:	eef0 7a46 	vmov.f32	s15, s12
d0053398:	eeb0 7a41 	vmov.f32	s14, s2
d005339c:	eeb0 8a61 	vmov.f32	s16, s3
d00533a0:	eef0 4a42 	vmov.f32	s9, s4
d00533a4:	eeb0 6a45 	vmov.f32	s12, s10
d00533a8:	e6dd      	b.n	d0053166 <fillTriangleFlat+0x12e>
d00533aa:	bf00      	nop
d00533ac:	38d1b717 	.word	0x38d1b717
d00533b0:	d005fa3c 	.word	0xd005fa3c
d00533b4:	d005fa40 	.word	0xd005fa40
d00533b8:	d005fa44 	.word	0xd005fa44
d00533bc:	33d6bf95 	.word	0x33d6bf95
d00533c0:	00000000 	.word	0x00000000
d00533c4:	477fff00 	.word	0x477fff00
d00533c8:	ee81 5a82 	vdiv.f32	s10, s3, s4
d00533cc:	ee76 aac3 	vsub.f32	s21, s13, s6
d00533d0:	ee34 aa46 	vsub.f32	s20, s8, s12
d00533d4:	ee70 9a48 	vsub.f32	s19, s0, s16
d00533d8:	ee35 2ac7 	vsub.f32	s4, s11, s14
d00533dc:	edcd aa01 	vstr	s21, [sp, #4]
d00533e0:	eef4 aac1 	vcmpe.f32	s21, s2
d00533e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533e8:	ee2a aa05 	vmul.f32	s20, s20, s10
d00533ec:	ee69 9a85 	vmul.f32	s19, s19, s10
d00533f0:	ee22 5a05 	vmul.f32	s10, s4, s10
d00533f4:	eef0 ea45 	vmov.f32	s29, s10
d00533f8:	f340 8244 	ble.w	d0053884 <fillTriangleFlat+0x84c>
d00533fc:	ee81 2aaa 	vdiv.f32	s4, s3, s21
d0053400:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0053404:	ee72 2ac0 	vsub.f32	s5, s5, s0
d0053408:	ee33 5ae5 	vsub.f32	s10, s7, s11
d005340c:	ee67 7a82 	vmul.f32	s15, s15, s4
d0053410:	ee62 fa82 	vmul.f32	s31, s5, s4
d0053414:	ee25 5a02 	vmul.f32	s10, s10, s4
d0053418:	edcd 7a04 	vstr	s15, [sp, #16]
d005341c:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0053420:	4bd2      	ldr	r3, [pc, #840]	; (d005376c <fillTriangleFlat+0x734>)
d0053422:	4ad3      	ldr	r2, [pc, #844]	; (d0053770 <fillTriangleFlat+0x738>)
d0053424:	6819      	ldr	r1, [r3, #0]
d0053426:	ee17 3a90 	vmov	r3, s15
d005342a:	edcd 7a02 	vstr	s15, [sp, #8]
d005342e:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d0053432:	f8d2 a000 	ldr.w	sl, [r2]
d0053436:	3b01      	subs	r3, #1
d0053438:	9103      	str	r1, [sp, #12]
d005343a:	ee17 ba90 	vmov	fp, s15
d005343e:	428b      	cmp	r3, r1
d0053440:	bfa8      	it	ge
d0053442:	460b      	movge	r3, r1
d0053444:	45d3      	cmp	fp, sl
d0053446:	bfb8      	it	lt
d0053448:	46d3      	movlt	fp, sl
d005344a:	455b      	cmp	r3, fp
d005344c:	f6ff af77 	blt.w	d005333e <fillTriangleFlat+0x306>
d0053450:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0053454:	ee07 ba90 	vmov	s15, fp
d0053458:	49c6      	ldr	r1, [pc, #792]	; (d0053774 <fillTriangleFlat+0x73c>)
d005345a:	ebaa 120a 	sub.w	r2, sl, sl, lsl #4
d005345e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053462:	1c58      	adds	r0, r3, #1
d0053464:	ee72 3a64 	vsub.f32	s7, s4, s9
d0053468:	680b      	ldr	r3, [r1, #0]
d005346a:	eeb0 ba46 	vmov.f32	s22, s12
d005346e:	f8cd a020 	str.w	sl, [sp, #32]
d0053472:	eeb0 da48 	vmov.f32	s26, s16
d0053476:	9305      	str	r3, [sp, #20]
d0053478:	ee77 7aa3 	vadd.f32	s15, s15, s7
d005347c:	0153      	lsls	r3, r2, #5
d005347e:	eef0 ca47 	vmov.f32	s25, s14
d0053482:	eddf dabd 	vldr	s27, [pc, #756]	; d0053778 <fillTriangleFlat+0x740>
d0053486:	eef0 aa46 	vmov.f32	s21, s12
d005348a:	eddf 2abf 	vldr	s5, [pc, #764]	; d0053788 <fillTriangleFlat+0x750>
d005348e:	eeb0 ca48 	vmov.f32	s24, s16
d0053492:	eddf 1aba 	vldr	s3, [pc, #744]	; d005377c <fillTriangleFlat+0x744>
d0053496:	eef0 ba47 	vmov.f32	s23, s14
d005349a:	4682      	mov	sl, r0
d005349c:	eea0 baa7 	vfma.f32	s22, s1, s15
d00534a0:	9306      	str	r3, [sp, #24]
d00534a2:	eea8 daa7 	vfma.f32	s26, s17, s15
d00534a6:	edcd 6a07 	vstr	s13, [sp, #28]
d00534aa:	eee9 ca27 	vfma.f32	s25, s18, s15
d00534ae:	ed8d 4a09 	vstr	s8, [sp, #36]	; 0x24
d00534b2:	eee7 aa8a 	vfma.f32	s21, s15, s20
d00534b6:	ed8d 7a0a 	vstr	s14, [sp, #40]	; 0x28
d00534ba:	eea7 caa9 	vfma.f32	s24, s15, s19
d00534be:	ed8d 8a0b 	vstr	s16, [sp, #44]	; 0x2c
d00534c2:	eee7 baae 	vfma.f32	s23, s15, s29
d00534c6:	eeb0 ea69 	vmov.f32	s28, s19
d00534ca:	e034      	b.n	d0053536 <fillTriangleFlat+0x4fe>
d00534cc:	eef0 3a6c 	vmov.f32	s7, s25
d00534d0:	eeb0 4a4d 	vmov.f32	s8, s26
d00534d4:	eef0 7a4b 	vmov.f32	s15, s22
d00534d8:	eef0 6a6b 	vmov.f32	s13, s23
d00534dc:	eeb0 7a4c 	vmov.f32	s14, s24
d00534e0:	eeb0 1a6a 	vmov.f32	s2, s21
d00534e4:	feba 8a67 	vrintp.f32	s16, s15
d00534e8:	eebd 8ac8 	vcvt.s32.f32	s16, s16
d00534ec:	fefa 9a41 	vrintp.f32	s19, s2
d00534f0:	f240 13df 	movw	r3, #479	; 0x1df
d00534f4:	ee18 ca10 	vmov	ip, s16
d00534f8:	eebd 8ae9 	vcvt.s32.f32	s16, s19
d00534fc:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0053500:	ee18 5a10 	vmov	r5, s16
d0053504:	459c      	cmp	ip, r3
d0053506:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d005350a:	bfa8      	it	ge
d005350c:	469c      	movge	ip, r3
d005350e:	45ac      	cmp	ip, r5
d0053510:	f280 80f8 	bge.w	d0053704 <fillTriangleFlat+0x6cc>
d0053514:	f10b 0b01 	add.w	fp, fp, #1
d0053518:	ee3b ba20 	vadd.f32	s22, s22, s1
d005351c:	ee3d da28 	vadd.f32	s26, s26, s17
d0053520:	45d3      	cmp	fp, sl
d0053522:	ee7c ca89 	vadd.f32	s25, s25, s18
d0053526:	ee7a aa8a 	vadd.f32	s21, s21, s20
d005352a:	ee3c ca0e 	vadd.f32	s24, s24, s28
d005352e:	ee7b baae 	vadd.f32	s23, s23, s29
d0053532:	f43f aefa 	beq.w	d005332a <fillTriangleFlat+0x2f2>
d0053536:	eeb4 baea 	vcmpe.f32	s22, s21
d005353a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005353e:	dcc5      	bgt.n	d00534cc <fillTriangleFlat+0x494>
d0053540:	eef0 3a6b 	vmov.f32	s7, s23
d0053544:	eeb0 4a4c 	vmov.f32	s8, s24
d0053548:	eef0 7a6a 	vmov.f32	s15, s21
d005354c:	eef0 6a6c 	vmov.f32	s13, s25
d0053550:	eeb0 7a4d 	vmov.f32	s14, s26
d0053554:	eeb0 1a4b 	vmov.f32	s2, s22
d0053558:	e7c4      	b.n	d00534e4 <fillTriangleFlat+0x4ac>
d005355a:	eeb0 1a47 	vmov.f32	s2, s14
d005355e:	eef0 1a48 	vmov.f32	s3, s16
d0053562:	eeb0 2a64 	vmov.f32	s4, s9
d0053566:	eeb0 5a46 	vmov.f32	s10, s12
d005356a:	eeb0 7a63 	vmov.f32	s14, s7
d005356e:	eeb0 8a62 	vmov.f32	s16, s5
d0053572:	eef0 4a66 	vmov.f32	s9, s13
d0053576:	eeb0 6a67 	vmov.f32	s12, s15
d005357a:	eef0 3a41 	vmov.f32	s7, s2
d005357e:	eef0 2a61 	vmov.f32	s5, s3
d0053582:	eef0 6a42 	vmov.f32	s13, s4
d0053586:	eef0 7a45 	vmov.f32	s15, s10
d005358a:	e5cf      	b.n	d005312c <fillTriangleFlat+0xf4>
d005358c:	eeb0 1a47 	vmov.f32	s2, s14
d0053590:	eef0 1a48 	vmov.f32	s3, s16
d0053594:	eeb0 2a64 	vmov.f32	s4, s9
d0053598:	eeb0 5a46 	vmov.f32	s10, s12
d005359c:	eeb0 7a65 	vmov.f32	s14, s11
d00535a0:	eeb0 8a40 	vmov.f32	s16, s0
d00535a4:	eef0 4a43 	vmov.f32	s9, s6
d00535a8:	eeb0 6a44 	vmov.f32	s12, s8
d00535ac:	eef0 5a41 	vmov.f32	s11, s2
d00535b0:	eeb0 0a61 	vmov.f32	s0, s3
d00535b4:	eeb0 3a42 	vmov.f32	s6, s4
d00535b8:	eeb0 4a45 	vmov.f32	s8, s10
d00535bc:	e5b6      	b.n	d005312c <fillTriangleFlat+0xf4>
d00535be:	ee76 6ae3 	vsub.f32	s13, s13, s7
d00535c2:	eef4 6ae9 	vcmpe.f32	s13, s19
d00535c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00535ca:	f340 8156 	ble.w	d005387a <fillTriangleFlat+0x842>
d00535ce:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00535d2:	ee72 2ae4 	vsub.f32	s5, s5, s9
d00535d6:	ee7a aac3 	vsub.f32	s21, s21, s6
d00535da:	eec7 baa6 	vdiv.f32	s23, s15, s13
d00535de:	ee07 5a90 	vmov	s15, r5
d00535e2:	ee71 3ae3 	vsub.f32	s7, s3, s7
d00535e6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00535ea:	ee77 3aa3 	vadd.f32	s7, s15, s7
d00535ee:	ee62 2aab 	vmul.f32	s5, s5, s23
d00535f2:	ee6a aaab 	vmul.f32	s21, s21, s23
d00535f6:	eee3 4aa2 	vfma.f32	s9, s7, s5
d00535fa:	eea3 3aaa 	vfma.f32	s6, s7, s21
d00535fe:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0053602:	4b5f      	ldr	r3, [pc, #380]	; (d0053780 <fillTriangleFlat+0x748>)
d0053604:	eb05 0885 	add.w	r8, r5, r5, lsl #2
d0053608:	9a02      	ldr	r2, [sp, #8]
d005360a:	681b      	ldr	r3, [r3, #0]
d005360c:	eb02 1949 	add.w	r9, r2, r9, lsl #5
d0053610:	eb0b 1888 	add.w	r8, fp, r8, lsl #6
d0053614:	44a9      	add	r9, r5
d0053616:	4498      	add	r8, r3
d0053618:	9b01      	ldr	r3, [sp, #4]
d005361a:	eb03 0949 	add.w	r9, r3, r9, lsl #1
d005361e:	e011      	b.n	d0053644 <fillTriangleFlat+0x60c>
d0053620:	ee07 1a90 	vmov	s15, r1
d0053624:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053628:	eb09 0941 	add.w	r9, r9, r1, lsl #1
d005362c:	440d      	add	r5, r1
d005362e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053632:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0053636:	eee7 4aa2 	vfma.f32	s9, s15, s5
d005363a:	eea7 3aaa 	vfma.f32	s6, s15, s21
d005363e:	45ac      	cmp	ip, r5
d0053640:	f6ff ae51 	blt.w	d00532e6 <fillTriangleFlat+0x2ae>
d0053644:	ebac 0605 	sub.w	r6, ip, r5
d0053648:	eef4 4aca 	vcmpe.f32	s9, s20
d005364c:	1c71      	adds	r1, r6, #1
d005364e:	2930      	cmp	r1, #48	; 0x30
d0053650:	bfa8      	it	ge
d0053652:	2130      	movge	r1, #48	; 0x30
d0053654:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053658:	d9e2      	bls.n	d0053620 <fillTriangleFlat+0x5e8>
d005365a:	2e00      	cmp	r6, #0
d005365c:	eec3 6a24 	vdiv.f32	s13, s6, s9
d0053660:	dd4c      	ble.n	d00536fc <fillTriangleFlat+0x6c4>
d0053662:	1e4b      	subs	r3, r1, #1
d0053664:	ee07 3a90 	vmov	s15, r3
d0053668:	eef0 3a64 	vmov.f32	s7, s9
d005366c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053670:	eee7 3aa2 	vfma.f32	s7, s15, s5
d0053674:	eef4 3aca 	vcmpe.f32	s7, s20
d0053678:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005367c:	dd3f      	ble.n	d00536fe <fillTriangleFlat+0x6c6>
d005367e:	eeb0 ca43 	vmov.f32	s24, s6
d0053682:	eea7 caaa 	vfma.f32	s24, s15, s21
d0053686:	eecc ba23 	vdiv.f32	s23, s24, s7
d005368a:	ee7b bae6 	vsub.f32	s23, s23, s13
d005368e:	eecb 3aa7 	vdiv.f32	s7, s23, s15
d0053692:	f1a9 0002 	sub.w	r0, r9, #2
d0053696:	2300      	movs	r3, #0
d0053698:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d005369c:	fec7 7ac1 	vminnm.f32	s15, s15, s2
d00536a0:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00536a4:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d00536a8:	3301      	adds	r3, #1
d00536aa:	ee77 7aa1 	vadd.f32	s15, s15, s3
d00536ae:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d00536b2:	ee76 6aa3 	vadd.f32	s13, s13, s7
d00536b6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00536ba:	ee17 2a90 	vmov	r2, s15
d00536be:	b292      	uxth	r2, r2
d00536c0:	4294      	cmp	r4, r2
d00536c2:	d902      	bls.n	d00536ca <fillTriangleFlat+0x692>
d00536c4:	8002      	strh	r2, [r0, #0]
d00536c6:	f808 700a 	strb.w	r7, [r8, sl]
d00536ca:	4299      	cmp	r1, r3
d00536cc:	dce4      	bgt.n	d0053698 <fillTriangleFlat+0x660>
d00536ce:	2e00      	cmp	r6, #0
d00536d0:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00536d4:	ea4f 0241 	mov.w	r2, r1, lsl #1
d00536d8:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00536dc:	bfbc      	itt	lt
d00536de:	2202      	movlt	r2, #2
d00536e0:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00536e4:	4491      	add	r9, r2
d00536e6:	4498      	add	r8, r3
d00536e8:	ee07 1a90 	vmov	s15, r1
d00536ec:	440d      	add	r5, r1
d00536ee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00536f2:	eee7 4aa2 	vfma.f32	s9, s15, s5
d00536f6:	eea7 3aaa 	vfma.f32	s6, s15, s21
d00536fa:	e7a0      	b.n	d005363e <fillTriangleFlat+0x606>
d00536fc:	d1f4      	bne.n	d00536e8 <fillTriangleFlat+0x6b0>
d00536fe:	eef0 3a42 	vmov.f32	s7, s4
d0053702:	e7c6      	b.n	d0053692 <fillTriangleFlat+0x65a>
d0053704:	ee77 7ac1 	vsub.f32	s15, s15, s2
d0053708:	ed9f 8a1e 	vldr	s16, [pc, #120]	; d0053784 <fillTriangleFlat+0x74c>
d005370c:	eef4 7ac8 	vcmpe.f32	s15, s16
d0053710:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053714:	f340 80ac 	ble.w	d0053870 <fillTriangleFlat+0x838>
d0053718:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d005371c:	ee34 4a47 	vsub.f32	s8, s8, s14
d0053720:	ee73 3ae6 	vsub.f32	s7, s7, s13
d0053724:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d0053728:	ee07 5a90 	vmov	s15, r5
d005372c:	ee32 1a41 	vsub.f32	s2, s4, s2
d0053730:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053734:	ee37 1a81 	vadd.f32	s2, s15, s2
d0053738:	ee24 4a08 	vmul.f32	s8, s8, s16
d005373c:	ee63 3a88 	vmul.f32	s7, s7, s16
d0053740:	eea1 7a04 	vfma.f32	s14, s2, s8
d0053744:	eee1 6a23 	vfma.f32	s13, s2, s7
d0053748:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d005374c:	4b0c      	ldr	r3, [pc, #48]	; (d0053780 <fillTriangleFlat+0x748>)
d005374e:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d0053752:	9a06      	ldr	r2, [sp, #24]
d0053754:	681b      	ldr	r3, [r3, #0]
d0053756:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d005375a:	eb0b 1e8e 	add.w	lr, fp, lr, lsl #6
d005375e:	44a8      	add	r8, r5
d0053760:	449e      	add	lr, r3
d0053762:	9b05      	ldr	r3, [sp, #20]
d0053764:	eb03 0848 	add.w	r8, r3, r8, lsl #1
d0053768:	e022      	b.n	d00537b0 <fillTriangleFlat+0x778>
d005376a:	bf00      	nop
d005376c:	d005fa40 	.word	0xd005fa40
d0053770:	d005fa3c 	.word	0xd005fa3c
d0053774:	d005fa44 	.word	0xd005fa44
d0053778:	33d6bf95 	.word	0x33d6bf95
d005377c:	477fff00 	.word	0x477fff00
d0053780:	d00f9eb0 	.word	0xd00f9eb0
d0053784:	38d1b717 	.word	0x38d1b717
d0053788:	00000000 	.word	0x00000000
d005378c:	ee07 1a90 	vmov	s15, r1
d0053790:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053794:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0053798:	440d      	add	r5, r1
d005379a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005379e:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d00537a2:	eea7 7a84 	vfma.f32	s14, s15, s8
d00537a6:	eee7 6aa3 	vfma.f32	s13, s15, s7
d00537aa:	4565      	cmp	r5, ip
d00537ac:	f73f aeb2 	bgt.w	d0053514 <fillTriangleFlat+0x4dc>
d00537b0:	ebac 0605 	sub.w	r6, ip, r5
d00537b4:	eeb4 7aed 	vcmpe.f32	s14, s27
d00537b8:	1c71      	adds	r1, r6, #1
d00537ba:	2930      	cmp	r1, #48	; 0x30
d00537bc:	bfa8      	it	ge
d00537be:	2130      	movge	r1, #48	; 0x30
d00537c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537c4:	d9e2      	bls.n	d005378c <fillTriangleFlat+0x754>
d00537c6:	2e00      	cmp	r6, #0
d00537c8:	ee86 1a87 	vdiv.f32	s2, s13, s14
d00537cc:	dd4c      	ble.n	d0053868 <fillTriangleFlat+0x830>
d00537ce:	1e4b      	subs	r3, r1, #1
d00537d0:	ee07 3a90 	vmov	s15, r3
d00537d4:	eeb0 8a47 	vmov.f32	s16, s14
d00537d8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00537dc:	eea7 8a84 	vfma.f32	s16, s15, s8
d00537e0:	eeb4 8aed 	vcmpe.f32	s16, s27
d00537e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537e8:	dd3f      	ble.n	d005386a <fillTriangleFlat+0x832>
d00537ea:	eeb0 fa66 	vmov.f32	s30, s13
d00537ee:	eea7 faa3 	vfma.f32	s30, s15, s7
d00537f2:	eecf 9a08 	vdiv.f32	s19, s30, s16
d00537f6:	ee79 9ac1 	vsub.f32	s19, s19, s2
d00537fa:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d00537fe:	f1a8 0002 	sub.w	r0, r8, #2
d0053802:	2200      	movs	r2, #0
d0053804:	fec1 7a22 	vmaxnm.f32	s15, s2, s5
d0053808:	fec7 7ae1 	vminnm.f32	s15, s15, s3
d005380c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053810:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d0053814:	3201      	adds	r2, #1
d0053816:	ee77 7a82 	vadd.f32	s15, s15, s4
d005381a:	ea4f 1983 	mov.w	r9, r3, lsl #6
d005381e:	ee31 1a08 	vadd.f32	s2, s2, s16
d0053822:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053826:	ee17 3a90 	vmov	r3, s15
d005382a:	b29b      	uxth	r3, r3
d005382c:	429c      	cmp	r4, r3
d005382e:	d902      	bls.n	d0053836 <fillTriangleFlat+0x7fe>
d0053830:	8003      	strh	r3, [r0, #0]
d0053832:	f80e 7009 	strb.w	r7, [lr, r9]
d0053836:	428a      	cmp	r2, r1
d0053838:	dbe4      	blt.n	d0053804 <fillTriangleFlat+0x7cc>
d005383a:	2e00      	cmp	r6, #0
d005383c:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053840:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0053844:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053848:	bfbc      	itt	lt
d005384a:	2202      	movlt	r2, #2
d005384c:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053850:	4490      	add	r8, r2
d0053852:	449e      	add	lr, r3
d0053854:	ee07 1a90 	vmov	s15, r1
d0053858:	440d      	add	r5, r1
d005385a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005385e:	eea7 7a84 	vfma.f32	s14, s15, s8
d0053862:	eee7 6aa3 	vfma.f32	s13, s15, s7
d0053866:	e7a0      	b.n	d00537aa <fillTriangleFlat+0x772>
d0053868:	d1f4      	bne.n	d0053854 <fillTriangleFlat+0x81c>
d005386a:	eeb0 8a62 	vmov.f32	s16, s5
d005386e:	e7c6      	b.n	d00537fe <fillTriangleFlat+0x7c6>
d0053870:	eef0 3a62 	vmov.f32	s7, s5
d0053874:	eeb0 4a62 	vmov.f32	s8, s5
d0053878:	e766      	b.n	d0053748 <fillTriangleFlat+0x710>
d005387a:	eef0 aa42 	vmov.f32	s21, s4
d005387e:	eef0 2a42 	vmov.f32	s5, s4
d0053882:	e6bc      	b.n	d00535fe <fillTriangleFlat+0x5c6>
d0053884:	ed1f 5a40 	vldr	s10, [pc, #-256]	; d0053788 <fillTriangleFlat+0x750>
d0053888:	eef0 fa45 	vmov.f32	s31, s10
d005388c:	ed8d 5a04 	vstr	s10, [sp, #16]
d0053890:	e5c4      	b.n	d005341c <fillTriangleFlat+0x3e4>
d0053892:	ed5f 7a43 	vldr	s15, [pc, #-268]	; d0053788 <fillTriangleFlat+0x750>
d0053896:	eef0 ea67 	vmov.f32	s29, s15
d005389a:	eef0 9a67 	vmov.f32	s19, s15
d005389e:	eeb0 aa67 	vmov.f32	s20, s15
d00538a2:	e5bb      	b.n	d005341c <fillTriangleFlat+0x3e4>

d00538a4 <fillTriangleDitherBayer>:
d00538a4:	eddf 7ae2 	vldr	s15, [pc, #904]	; d0053c30 <fillTriangleDitherBayer+0x38c>
d00538a8:	eef4 0ae7 	vcmpe.f32	s1, s15
d00538ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00538b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538b4:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00538b8:	ed2d 8b10 	vpush	{d8-d15}
d00538bc:	b095      	sub	sp, #84	; 0x54
d00538be:	9202      	str	r2, [sp, #8]
d00538c0:	bf94      	ite	ls
d00538c2:	2201      	movls	r2, #1
d00538c4:	2200      	movhi	r2, #0
d00538c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538ca:	9303      	str	r3, [sp, #12]
d00538cc:	f8bd 40c0 	ldrh.w	r4, [sp, #192]	; 0xc0
d00538d0:	bf98      	it	ls
d00538d2:	f042 0201 	orrls.w	r2, r2, #1
d00538d6:	f89d 30cc 	ldrb.w	r3, [sp, #204]	; 0xcc
d00538da:	e9cd 0100 	strd	r0, r1, [sp]
d00538de:	f8bd 00c4 	ldrh.w	r0, [sp, #196]	; 0xc4
d00538e2:	f8bd 10c8 	ldrh.w	r1, [sp, #200]	; 0xc8
d00538e6:	2a00      	cmp	r2, #0
d00538e8:	f040 819d 	bne.w	d0053c26 <fillTriangleDitherBayer+0x382>
d00538ec:	eeb4 0a67 	vcmp.f32	s0, s15
d00538f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538f4:	f240 8197 	bls.w	d0053c26 <fillTriangleDitherBayer+0x382>
d00538f8:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00538fc:	eddf 6ad2 	vldr	s13, [pc, #840]	; d0053c48 <fillTriangleDitherBayer+0x3a4>
d0053900:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0053904:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d0053908:	ee06 4a90 	vmov	s13, r4
d005390c:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0053910:	fec1 1ac7 	vminnm.f32	s3, s3, s14
d0053914:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0053918:	ee87 7a81 	vdiv.f32	s14, s15, s2
d005391c:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d0053920:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0053924:	ee17 2a90 	vmov	r2, s15
d0053928:	ee07 0a90 	vmov	s15, r0
d005392c:	ee65 5a88 	vmul.f32	s11, s11, s16
d0053930:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0053934:	ee07 1a90 	vmov	s15, r1
d0053938:	1c51      	adds	r1, r2, #1
d005393a:	eef8 7a67 	vcvt.f32.u32	s15, s15
d005393e:	2905      	cmp	r1, #5
d0053940:	ee24 4a00 	vmul.f32	s8, s8, s0
d0053944:	bfa8      	it	ge
d0053946:	2105      	movge	r1, #5
d0053948:	2a04      	cmp	r2, #4
d005394a:	ee27 6a87 	vmul.f32	s12, s15, s14
d005394e:	f300 84ad 	bgt.w	d00542ac <fillTriangleDitherBayer+0xa08>
d0053952:	f003 030f 	and.w	r3, r3, #15
d0053956:	2a03      	cmp	r2, #3
d0053958:	f103 0320 	add.w	r3, r3, #32
d005395c:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0053960:	fa5f fb80 	uxtb.w	fp, r0
d0053964:	f300 84a4 	bgt.w	d00542b0 <fillTriangleDitherBayer+0xa0c>
d0053968:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d005396c:	b2db      	uxtb	r3, r3
d005396e:	9304      	str	r3, [sp, #16]
d0053970:	eddd 7a01 	vldr	s15, [sp, #4]
d0053974:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0053978:	eddd 7a03 	vldr	s15, [sp, #12]
d005397c:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d0053980:	eddd 7a00 	vldr	s15, [sp]
d0053984:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0053988:	eddd 7a02 	vldr	s15, [sp, #8]
d005398c:	eeb4 3ac2 	vcmpe.f32	s6, s4
d0053990:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0053994:	eddd 7a2e 	vldr	s15, [sp, #184]	; 0xb8
d0053998:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005399c:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d00539a0:	eddd 7a2f 	vldr	s15, [sp, #188]	; 0xbc
d00539a4:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d00539a8:	f300 8150 	bgt.w	d0053c4c <fillTriangleDitherBayer+0x3a8>
d00539ac:	eeb4 3ac5 	vcmpe.f32	s6, s10
d00539b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539b4:	f300 825a 	bgt.w	d0053e6c <fillTriangleDitherBayer+0x5c8>
d00539b8:	eeb4 5ac2 	vcmpe.f32	s10, s4
d00539bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539c0:	d517      	bpl.n	d00539f2 <fillTriangleDitherBayer+0x14e>
d00539c2:	eef0 0a44 	vmov.f32	s1, s8
d00539c6:	eeb0 1a40 	vmov.f32	s2, s0
d00539ca:	eef0 6a42 	vmov.f32	s13, s4
d00539ce:	eef0 7a62 	vmov.f32	s15, s5
d00539d2:	eeb0 4a46 	vmov.f32	s8, s12
d00539d6:	eeb0 0a47 	vmov.f32	s0, s14
d00539da:	eeb0 2a45 	vmov.f32	s4, s10
d00539de:	eef0 2a63 	vmov.f32	s5, s7
d00539e2:	eeb0 6a60 	vmov.f32	s12, s1
d00539e6:	eeb0 7a41 	vmov.f32	s14, s2
d00539ea:	eeb0 5a66 	vmov.f32	s10, s13
d00539ee:	eef0 3a67 	vmov.f32	s7, s15
d00539f2:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00539f6:	ee73 6a27 	vadd.f32	s13, s6, s15
d00539fa:	ee75 7a27 	vadd.f32	s15, s10, s15
d00539fe:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d0053a02:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053a06:	ee16 3a90 	vmov	r3, s13
d0053a0a:	ee17 1a90 	vmov	r1, s15
d0053a0e:	428b      	cmp	r3, r1
d0053a10:	f000 8109 	beq.w	d0053c26 <fillTriangleDitherBayer+0x382>
d0053a14:	ee75 7a43 	vsub.f32	s15, s10, s6
d0053a18:	eddf 6a85 	vldr	s13, [pc, #532]	; d0053c30 <fillTriangleDitherBayer+0x38c>
d0053a1c:	eef4 7ae6 	vcmpe.f32	s15, s13
d0053a20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a24:	f240 80ff 	bls.w	d0053c26 <fillTriangleDitherBayer+0x382>
d0053a28:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d0053a2c:	ee72 9a43 	vsub.f32	s19, s4, s6
d0053a30:	ee73 0ae4 	vsub.f32	s1, s7, s9
d0053a34:	ee8a 1a27 	vdiv.f32	s2, s20, s15
d0053a38:	eef4 9ae6 	vcmpe.f32	s19, s13
d0053a3c:	ee77 8a48 	vsub.f32	s17, s14, s16
d0053a40:	ee36 9a65 	vsub.f32	s18, s12, s11
d0053a44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a48:	ee60 0a81 	vmul.f32	s1, s1, s2
d0053a4c:	ee68 8a81 	vmul.f32	s17, s17, s2
d0053a50:	ee29 9a01 	vmul.f32	s18, s18, s2
d0053a54:	f300 8119 	bgt.w	d0053c8a <fillTriangleDitherBayer+0x3e6>
d0053a58:	ee07 2a90 	vmov	s15, r2
d0053a5c:	ee35 1a42 	vsub.f32	s2, s10, s4
d0053a60:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053a64:	eeb4 1ae6 	vcmpe.f32	s2, s13
d0053a68:	ed8d 1a08 	vstr	s2, [sp, #32]
d0053a6c:	ee71 1ae7 	vsub.f32	s3, s3, s15
d0053a70:	eef0 7a61 	vmov.f32	s15, s3
d0053a74:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0053a78:	ee17 3a90 	vmov	r3, s15
d0053a7c:	f383 0204 	usat	r2, #4, r3
d0053a80:	9202      	str	r2, [sp, #8]
d0053a82:	9a04      	ldr	r2, [sp, #16]
d0053a84:	4593      	cmp	fp, r2
d0053a86:	bf18      	it	ne
d0053a88:	2b00      	cmpne	r3, #0
d0053a8a:	bfd4      	ite	le
d0053a8c:	2301      	movle	r3, #1
d0053a8e:	2300      	movgt	r3, #0
d0053a90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a94:	9300      	str	r3, [sp, #0]
d0053a96:	f340 80c6 	ble.w	d0053c26 <fillTriangleDitherBayer+0x382>
d0053a9a:	ed9f ea6b 	vldr	s28, [pc, #428]	; d0053c48 <fillTriangleDitherBayer+0x3a4>
d0053a9e:	eeb0 aa4e 	vmov.f32	s20, s28
d0053aa2:	eeb0 ca4e 	vmov.f32	s24, s28
d0053aa6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053aaa:	eddd 6a08 	vldr	s13, [sp, #32]
d0053aae:	eddf 1a60 	vldr	s3, [pc, #384]	; d0053c30 <fillTriangleDitherBayer+0x38c>
d0053ab2:	ee73 3ae2 	vsub.f32	s7, s7, s5
d0053ab6:	ee37 7a40 	vsub.f32	s14, s14, s0
d0053aba:	eec7 6aa6 	vdiv.f32	s13, s15, s13
d0053abe:	eef4 9ae1 	vcmpe.f32	s19, s3
d0053ac2:	ee76 7a44 	vsub.f32	s15, s12, s8
d0053ac6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053aca:	ee23 6aa6 	vmul.f32	s12, s7, s13
d0053ace:	ee27 7a26 	vmul.f32	s14, s14, s13
d0053ad2:	ee67 faa6 	vmul.f32	s31, s15, s13
d0053ad6:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d0053ada:	ed8d 7a0e 	vstr	s14, [sp, #56]	; 0x38
d0053ade:	f300 810d 	bgt.w	d0053cfc <fillTriangleDitherBayer+0x458>
d0053ae2:	4a54      	ldr	r2, [pc, #336]	; (d0053c34 <fillTriangleDitherBayer+0x390>)
d0053ae4:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0053ae8:	4b53      	ldr	r3, [pc, #332]	; (d0053c38 <fillTriangleDitherBayer+0x394>)
d0053aea:	6812      	ldr	r2, [r2, #0]
d0053aec:	681b      	ldr	r3, [r3, #0]
d0053aee:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0053af2:	920a      	str	r2, [sp, #40]	; 0x28
d0053af4:	930c      	str	r3, [sp, #48]	; 0x30
d0053af6:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0053afa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0053afc:	980a      	ldr	r0, [sp, #40]	; 0x28
d0053afe:	990c      	ldr	r1, [sp, #48]	; 0x30
d0053b00:	ee17 3a90 	vmov	r3, s15
d0053b04:	4282      	cmp	r2, r0
d0053b06:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0053b0a:	bfb8      	it	lt
d0053b0c:	4602      	movlt	r2, r0
d0053b0e:	428b      	cmp	r3, r1
d0053b10:	9201      	str	r2, [sp, #4]
d0053b12:	bfa8      	it	ge
d0053b14:	460b      	movge	r3, r1
d0053b16:	4293      	cmp	r3, r2
d0053b18:	f2c0 8085 	blt.w	d0053c26 <fillTriangleDitherBayer+0x382>
d0053b1c:	ee07 2a90 	vmov	s15, r2
d0053b20:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0053b24:	3301      	adds	r3, #1
d0053b26:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0053b2a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053b2e:	4943      	ldr	r1, [pc, #268]	; (d0053c3c <fillTriangleDitherBayer+0x398>)
d0053b30:	0152      	lsls	r2, r2, #5
d0053b32:	ed9d aa0d 	vldr	s20, [sp, #52]	; 0x34
d0053b36:	eddd aa0e 	vldr	s21, [sp, #56]	; 0x38
d0053b3a:	ee77 7a87 	vadd.f32	s15, s15, s14
d0053b3e:	9307      	str	r3, [sp, #28]
d0053b40:	680b      	ldr	r3, [r1, #0]
d0053b42:	ed9f 1a3b 	vldr	s2, [pc, #236]	; d0053c30 <fillTriangleDitherBayer+0x38c>
d0053b46:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0053b4a:	eddf 1a3d 	vldr	s3, [pc, #244]	; d0053c40 <fillTriangleDitherBayer+0x39c>
d0053b4e:	ee37 2ac2 	vsub.f32	s4, s15, s4
d0053b52:	ed9f 6a3d 	vldr	s12, [pc, #244]	; d0053c48 <fillTriangleDitherBayer+0x3a4>
d0053b56:	eddf 3a3b 	vldr	s7, [pc, #236]	; d0053c44 <fillTriangleDitherBayer+0x3a0>
d0053b5a:	eee0 4a83 	vfma.f32	s9, s1, s6
d0053b5e:	920a      	str	r2, [sp, #40]	; 0x28
d0053b60:	eea8 8a83 	vfma.f32	s16, s17, s6
d0053b64:	9309      	str	r3, [sp, #36]	; 0x24
d0053b66:	eee9 5a03 	vfma.f32	s11, s18, s6
d0053b6a:	eee2 2a0a 	vfma.f32	s5, s4, s20
d0053b6e:	eeaa 0a82 	vfma.f32	s0, s21, s4
d0053b72:	eeaf 4a82 	vfma.f32	s8, s31, s4
d0053b76:	e034      	b.n	d0053be2 <fillTriangleDitherBayer+0x33e>
d0053b78:	eeb0 ba65 	vmov.f32	s22, s11
d0053b7c:	eef0 9a48 	vmov.f32	s19, s16
d0053b80:	eeb0 7a64 	vmov.f32	s14, s9
d0053b84:	eeb0 2a44 	vmov.f32	s4, s8
d0053b88:	eeb0 3a40 	vmov.f32	s6, s0
d0053b8c:	eef0 6a62 	vmov.f32	s13, s5
d0053b90:	fefa 7a47 	vrintp.f32	s15, s14
d0053b94:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053b98:	f240 13df 	movw	r3, #479	; 0x1df
d0053b9c:	ee17 7a90 	vmov	r7, s15
d0053ba0:	fefa 7a66 	vrintp.f32	s15, s13
d0053ba4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053ba8:	3f01      	subs	r7, #1
d0053baa:	ee17 5a90 	vmov	r5, s15
d0053bae:	429f      	cmp	r7, r3
d0053bb0:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0053bb4:	bfa8      	it	ge
d0053bb6:	461f      	movge	r7, r3
d0053bb8:	42af      	cmp	r7, r5
d0053bba:	f280 8170 	bge.w	d0053e9e <fillTriangleDitherBayer+0x5fa>
d0053bbe:	9b01      	ldr	r3, [sp, #4]
d0053bc0:	ee74 4aa0 	vadd.f32	s9, s9, s1
d0053bc4:	9a07      	ldr	r2, [sp, #28]
d0053bc6:	ee38 8a28 	vadd.f32	s16, s16, s17
d0053bca:	3301      	adds	r3, #1
d0053bcc:	ee75 5a89 	vadd.f32	s11, s11, s18
d0053bd0:	ee72 2a8a 	vadd.f32	s5, s5, s20
d0053bd4:	4293      	cmp	r3, r2
d0053bd6:	ee30 0a2a 	vadd.f32	s0, s0, s21
d0053bda:	ee34 4a2f 	vadd.f32	s8, s8, s31
d0053bde:	9301      	str	r3, [sp, #4]
d0053be0:	d021      	beq.n	d0053c26 <fillTriangleDitherBayer+0x382>
d0053be2:	eef4 4ae2 	vcmpe.f32	s9, s5
d0053be6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bea:	dcc5      	bgt.n	d0053b78 <fillTriangleDitherBayer+0x2d4>
d0053bec:	eeb0 ba44 	vmov.f32	s22, s8
d0053bf0:	eef0 9a40 	vmov.f32	s19, s0
d0053bf4:	eeb0 7a62 	vmov.f32	s14, s5
d0053bf8:	eeb0 2a65 	vmov.f32	s4, s11
d0053bfc:	eeb0 3a48 	vmov.f32	s6, s16
d0053c00:	eef0 6a64 	vmov.f32	s13, s9
d0053c04:	e7c4      	b.n	d0053b90 <fillTriangleDitherBayer+0x2ec>
d0053c06:	ed9d 5a11 	vldr	s10, [sp, #68]	; 0x44
d0053c0a:	eddd 4a12 	vldr	s9, [sp, #72]	; 0x48
d0053c0e:	eddd fa13 	vldr	s31, [sp, #76]	; 0x4c
d0053c12:	eddf 7a07 	vldr	s15, [pc, #28]	; d0053c30 <fillTriangleDitherBayer+0x38c>
d0053c16:	ed9d 7a08 	vldr	s14, [sp, #32]
d0053c1a:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0053c1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c22:	f73f af68 	bgt.w	d0053af6 <fillTriangleDitherBayer+0x252>
d0053c26:	b015      	add	sp, #84	; 0x54
d0053c28:	ecbd 8b10 	vpop	{d8-d15}
d0053c2c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053c30:	38d1b717 	.word	0x38d1b717
d0053c34:	d005fa3c 	.word	0xd005fa3c
d0053c38:	d005fa40 	.word	0xd005fa40
d0053c3c:	d005fa44 	.word	0xd005fa44
d0053c40:	33d6bf95 	.word	0x33d6bf95
d0053c44:	477fff00 	.word	0x477fff00
d0053c48:	00000000 	.word	0x00000000
d0053c4c:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0053c50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c54:	f340 80f1 	ble.w	d0053e3a <fillTriangleDitherBayer+0x596>
d0053c58:	eef0 0a46 	vmov.f32	s1, s12
d0053c5c:	eeb0 1a47 	vmov.f32	s2, s14
d0053c60:	eef0 6a45 	vmov.f32	s13, s10
d0053c64:	eef0 7a63 	vmov.f32	s15, s7
d0053c68:	eeb0 6a65 	vmov.f32	s12, s11
d0053c6c:	eeb0 7a48 	vmov.f32	s14, s16
d0053c70:	eeb0 5a43 	vmov.f32	s10, s6
d0053c74:	eef0 3a64 	vmov.f32	s7, s9
d0053c78:	eef0 5a60 	vmov.f32	s11, s1
d0053c7c:	eeb0 8a41 	vmov.f32	s16, s2
d0053c80:	eeb0 3a66 	vmov.f32	s6, s13
d0053c84:	eef0 4a67 	vmov.f32	s9, s15
d0053c88:	e6b3      	b.n	d00539f2 <fillTriangleDitherBayer+0x14e>
d0053c8a:	ee07 2a90 	vmov	s15, r2
d0053c8e:	ee8a 1a29 	vdiv.f32	s2, s20, s19
d0053c92:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053c96:	ee72 aae4 	vsub.f32	s21, s5, s9
d0053c9a:	ee30 aa48 	vsub.f32	s20, s0, s16
d0053c9e:	ee71 1ae7 	vsub.f32	s3, s3, s15
d0053ca2:	ee34 ea65 	vsub.f32	s28, s8, s11
d0053ca6:	eef0 7a61 	vmov.f32	s15, s3
d0053caa:	ee75 1a42 	vsub.f32	s3, s10, s4
d0053cae:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0053cb2:	eef4 1ae6 	vcmpe.f32	s3, s13
d0053cb6:	edcd 1a08 	vstr	s3, [sp, #32]
d0053cba:	ee2e ea01 	vmul.f32	s28, s28, s2
d0053cbe:	ee17 3a90 	vmov	r3, s15
d0053cc2:	ee6a 7a81 	vmul.f32	s15, s21, s2
d0053cc6:	f383 0204 	usat	r2, #4, r3
d0053cca:	eeb0 ca67 	vmov.f32	s24, s15
d0053cce:	9202      	str	r2, [sp, #8]
d0053cd0:	ee6a 7a01 	vmul.f32	s15, s20, s2
d0053cd4:	9a04      	ldr	r2, [sp, #16]
d0053cd6:	4593      	cmp	fp, r2
d0053cd8:	bf18      	it	ne
d0053cda:	2b00      	cmpne	r3, #0
d0053cdc:	eeb0 aa67 	vmov.f32	s20, s15
d0053ce0:	bfd4      	ite	le
d0053ce2:	2301      	movle	r3, #1
d0053ce4:	2300      	movgt	r3, #0
d0053ce6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053cea:	9300      	str	r3, [sp, #0]
d0053cec:	f73f aedb 	bgt.w	d0053aa6 <fillTriangleDitherBayer+0x202>
d0053cf0:	ed5f fa2b 	vldr	s31, [pc, #-172]	; d0053c48 <fillTriangleDitherBayer+0x3a4>
d0053cf4:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0053cf8:	edcd fa0d 	vstr	s31, [sp, #52]	; 0x34
d0053cfc:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0053d00:	4bde      	ldr	r3, [pc, #888]	; (d005407c <fillTriangleDitherBayer+0x7d8>)
d0053d02:	4adf      	ldr	r2, [pc, #892]	; (d0054080 <fillTriangleDitherBayer+0x7dc>)
d0053d04:	6819      	ldr	r1, [r3, #0]
d0053d06:	ee17 3a90 	vmov	r3, s15
d0053d0a:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0053d0e:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0053d12:	6810      	ldr	r0, [r2, #0]
d0053d14:	3b01      	subs	r3, #1
d0053d16:	910c      	str	r1, [sp, #48]	; 0x30
d0053d18:	900a      	str	r0, [sp, #40]	; 0x28
d0053d1a:	ee17 2a90 	vmov	r2, s15
d0053d1e:	428b      	cmp	r3, r1
d0053d20:	bfa8      	it	ge
d0053d22:	460b      	movge	r3, r1
d0053d24:	4282      	cmp	r2, r0
d0053d26:	bfb8      	it	lt
d0053d28:	4602      	movlt	r2, r0
d0053d2a:	4293      	cmp	r3, r2
d0053d2c:	9201      	str	r2, [sp, #4]
d0053d2e:	f6ff af70 	blt.w	d0053c12 <fillTriangleDitherBayer+0x36e>
d0053d32:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053d36:	3301      	adds	r3, #1
d0053d38:	eef0 aa64 	vmov.f32	s21, s9
d0053d3c:	49d1      	ldr	r1, [pc, #836]	; (d0054084 <fillTriangleDitherBayer+0x7e0>)
d0053d3e:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0053d42:	9307      	str	r3, [sp, #28]
d0053d44:	ee37 7ac3 	vsub.f32	s14, s15, s6
d0053d48:	eddd 7a01 	vldr	s15, [sp, #4]
d0053d4c:	680b      	ldr	r3, [r1, #0]
d0053d4e:	eeb0 ba64 	vmov.f32	s22, s9
d0053d52:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053d56:	eddf bacc 	vldr	s23, [pc, #816]	; d0054088 <fillTriangleDitherBayer+0x7e4>
d0053d5a:	eef0 da48 	vmov.f32	s27, s16
d0053d5e:	930f      	str	r3, [sp, #60]	; 0x3c
d0053d60:	eeb0 da65 	vmov.f32	s26, s11
d0053d64:	0153      	lsls	r3, r2, #5
d0053d66:	ee77 7a87 	vadd.f32	s15, s15, s14
d0053d6a:	ed9f 6ac8 	vldr	s12, [pc, #800]	; d005408c <fillTriangleDitherBayer+0x7e8>
d0053d6e:	eef0 ea4c 	vmov.f32	s29, s24
d0053d72:	ed9f 7ac7 	vldr	s14, [pc, #796]	; d0054090 <fillTriangleDitherBayer+0x7ec>
d0053d76:	eef0 ca48 	vmov.f32	s25, s16
d0053d7a:	9310      	str	r3, [sp, #64]	; 0x40
d0053d7c:	eee7 aa8c 	vfma.f32	s21, s15, s24
d0053d80:	ed8d 5a11 	vstr	s10, [sp, #68]	; 0x44
d0053d84:	eeb0 ca65 	vmov.f32	s24, s11
d0053d88:	edcd 4a12 	vstr	s9, [sp, #72]	; 0x48
d0053d8c:	eea0 baa7 	vfma.f32	s22, s1, s15
d0053d90:	edcd fa13 	vstr	s31, [sp, #76]	; 0x4c
d0053d94:	eee8 daa7 	vfma.f32	s27, s17, s15
d0053d98:	eea9 da27 	vfma.f32	s26, s18, s15
d0053d9c:	eee7 ca8a 	vfma.f32	s25, s15, s20
d0053da0:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0053da4:	eeb0 fa4a 	vmov.f32	s30, s20
d0053da8:	e035      	b.n	d0053e16 <fillTriangleDitherBayer+0x572>
d0053daa:	eef0 1a4d 	vmov.f32	s3, s26
d0053dae:	eef0 3a6d 	vmov.f32	s7, s27
d0053db2:	eef0 7a4b 	vmov.f32	s15, s22
d0053db6:	eef0 4a4c 	vmov.f32	s9, s24
d0053dba:	eeb0 5a6c 	vmov.f32	s10, s25
d0053dbe:	eef0 6a6a 	vmov.f32	s13, s21
d0053dc2:	feba 1a67 	vrintp.f32	s2, s15
d0053dc6:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0053dca:	fefa 9a66 	vrintp.f32	s19, s13
d0053dce:	f240 13df 	movw	r3, #479	; 0x1df
d0053dd2:	ee11 7a10 	vmov	r7, s2
d0053dd6:	eebd 1ae9 	vcvt.s32.f32	s2, s19
d0053dda:	3f01      	subs	r7, #1
d0053ddc:	ee11 4a10 	vmov	r4, s2
d0053de0:	429f      	cmp	r7, r3
d0053de2:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0053de6:	bfa8      	it	ge
d0053de8:	461f      	movge	r7, r3
d0053dea:	42a7      	cmp	r7, r4
d0053dec:	f280 8168 	bge.w	d00540c0 <fillTriangleDitherBayer+0x81c>
d0053df0:	9b01      	ldr	r3, [sp, #4]
d0053df2:	ee3b ba20 	vadd.f32	s22, s22, s1
d0053df6:	9a07      	ldr	r2, [sp, #28]
d0053df8:	ee7d daa8 	vadd.f32	s27, s27, s17
d0053dfc:	3301      	adds	r3, #1
d0053dfe:	ee3d da09 	vadd.f32	s26, s26, s18
d0053e02:	ee7a aaae 	vadd.f32	s21, s21, s29
d0053e06:	4293      	cmp	r3, r2
d0053e08:	ee7c ca8f 	vadd.f32	s25, s25, s30
d0053e0c:	ee3c ca0e 	vadd.f32	s24, s24, s28
d0053e10:	9301      	str	r3, [sp, #4]
d0053e12:	f43f aef8 	beq.w	d0053c06 <fillTriangleDitherBayer+0x362>
d0053e16:	eeb4 baea 	vcmpe.f32	s22, s21
d0053e1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e1e:	dcc4      	bgt.n	d0053daa <fillTriangleDitherBayer+0x506>
d0053e20:	eef0 1a4c 	vmov.f32	s3, s24
d0053e24:	eef0 3a6c 	vmov.f32	s7, s25
d0053e28:	eef0 7a6a 	vmov.f32	s15, s21
d0053e2c:	eef0 4a4d 	vmov.f32	s9, s26
d0053e30:	eeb0 5a6d 	vmov.f32	s10, s27
d0053e34:	eef0 6a4b 	vmov.f32	s13, s22
d0053e38:	e7c3      	b.n	d0053dc2 <fillTriangleDitherBayer+0x51e>
d0053e3a:	eef0 0a65 	vmov.f32	s1, s11
d0053e3e:	eeb0 1a48 	vmov.f32	s2, s16
d0053e42:	eef0 6a43 	vmov.f32	s13, s6
d0053e46:	eef0 7a64 	vmov.f32	s15, s9
d0053e4a:	eef0 5a44 	vmov.f32	s11, s8
d0053e4e:	eeb0 8a40 	vmov.f32	s16, s0
d0053e52:	eeb0 3a42 	vmov.f32	s6, s4
d0053e56:	eef0 4a62 	vmov.f32	s9, s5
d0053e5a:	eeb0 4a60 	vmov.f32	s8, s1
d0053e5e:	eeb0 0a41 	vmov.f32	s0, s2
d0053e62:	eeb0 2a66 	vmov.f32	s4, s13
d0053e66:	eef0 2a67 	vmov.f32	s5, s15
d0053e6a:	e5a5      	b.n	d00539b8 <fillTriangleDitherBayer+0x114>
d0053e6c:	eef0 0a65 	vmov.f32	s1, s11
d0053e70:	eeb0 1a48 	vmov.f32	s2, s16
d0053e74:	eef0 6a43 	vmov.f32	s13, s6
d0053e78:	eef0 7a64 	vmov.f32	s15, s9
d0053e7c:	eef0 5a46 	vmov.f32	s11, s12
d0053e80:	eeb0 8a47 	vmov.f32	s16, s14
d0053e84:	eeb0 3a45 	vmov.f32	s6, s10
d0053e88:	eef0 4a63 	vmov.f32	s9, s7
d0053e8c:	eeb0 6a60 	vmov.f32	s12, s1
d0053e90:	eeb0 7a41 	vmov.f32	s14, s2
d0053e94:	eeb0 5a66 	vmov.f32	s10, s13
d0053e98:	eef0 3a67 	vmov.f32	s7, s15
d0053e9c:	e58c      	b.n	d00539b8 <fillTriangleDitherBayer+0x114>
d0053e9e:	ee37 7a66 	vsub.f32	s14, s14, s13
d0053ea2:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0053ea6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053eaa:	f340 8205 	ble.w	d00542b8 <fillTriangleDitherBayer+0xa14>
d0053eae:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053eb2:	ee79 9ac3 	vsub.f32	s19, s19, s6
d0053eb6:	ee3b ba42 	vsub.f32	s22, s22, s4
d0053eba:	ee87 5a87 	vdiv.f32	s10, s15, s14
d0053ebe:	ee07 5a10 	vmov	s14, r5
d0053ec2:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053ec6:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0053eca:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d0053ece:	ee76 6aa7 	vadd.f32	s13, s13, s15
d0053ed2:	ee69 9a85 	vmul.f32	s19, s19, s10
d0053ed6:	ee2b ba05 	vmul.f32	s22, s22, s10
d0053eda:	eea6 3aa9 	vfma.f32	s6, s13, s19
d0053ede:	eea6 2a8b 	vfma.f32	s4, s13, s22
d0053ee2:	9a01      	ldr	r2, [sp, #4]
d0053ee4:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d0053ee8:	4b6a      	ldr	r3, [pc, #424]	; (d0054094 <fillTriangleDitherBayer+0x7f0>)
d0053eea:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d0053eee:	ebc2 1a02 	rsb	sl, r2, r2, lsl #4
d0053ef2:	990a      	ldr	r1, [sp, #40]	; 0x28
d0053ef4:	eb01 1a4a 	add.w	sl, r1, sl, lsl #5
d0053ef8:	6819      	ldr	r1, [r3, #0]
d0053efa:	eb02 138e 	add.w	r3, r2, lr, lsl #6
d0053efe:	f002 0203 	and.w	r2, r2, #3
d0053f02:	44aa      	add	sl, r5
d0053f04:	eb01 0e03 	add.w	lr, r1, r3
d0053f08:	0093      	lsls	r3, r2, #2
d0053f0a:	9308      	str	r3, [sp, #32]
d0053f0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0053f0e:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d0053f12:	eba7 0905 	sub.w	r9, r7, r5
d0053f16:	eeb4 3ae1 	vcmpe.f32	s6, s3
d0053f1a:	f109 0101 	add.w	r1, r9, #1
d0053f1e:	2930      	cmp	r1, #48	; 0x30
d0053f20:	bfa8      	it	ge
d0053f22:	2130      	movge	r1, #48	; 0x30
d0053f24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f28:	d971      	bls.n	d005400e <fillTriangleDitherBayer+0x76a>
d0053f2a:	f1b9 0f00 	cmp.w	r9, #0
d0053f2e:	ee82 7a03 	vdiv.f32	s14, s4, s6
d0053f32:	dd7c      	ble.n	d005402e <fillTriangleDitherBayer+0x78a>
d0053f34:	1e4b      	subs	r3, r1, #1
d0053f36:	ee07 3a90 	vmov	s15, r3
d0053f3a:	eef0 6a43 	vmov.f32	s13, s6
d0053f3e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053f42:	eee7 6aa9 	vfma.f32	s13, s15, s19
d0053f46:	eef4 6ae1 	vcmpe.f32	s13, s3
d0053f4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f4e:	f340 80a7 	ble.w	d00540a0 <fillTriangleDitherBayer+0x7fc>
d0053f52:	eeb0 ca42 	vmov.f32	s24, s4
d0053f56:	9b00      	ldr	r3, [sp, #0]
d0053f58:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0053f5c:	eecc ba26 	vdiv.f32	s23, s24, s13
d0053f60:	ee7b bac7 	vsub.f32	s23, s23, s14
d0053f64:	eecb 6aa7 	vdiv.f32	s13, s23, s15
d0053f68:	2b00      	cmp	r3, #0
d0053f6a:	d168      	bne.n	d005403e <fillTriangleDitherBayer+0x79a>
d0053f6c:	f005 0303 	and.w	r3, r5, #3
d0053f70:	f8cd 900c 	str.w	r9, [sp, #12]
d0053f74:	f1aa 0602 	sub.w	r6, sl, #2
d0053f78:	9705      	str	r7, [sp, #20]
d0053f7a:	2200      	movs	r2, #0
d0053f7c:	9506      	str	r5, [sp, #24]
d0053f7e:	9f04      	ldr	r7, [sp, #16]
d0053f80:	9d08      	ldr	r5, [sp, #32]
d0053f82:	f8dd 9008 	ldr.w	r9, [sp, #8]
d0053f86:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0053f8a:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0053f8e:	ee77 7a85 	vadd.f32	s15, s15, s10
d0053f92:	4841      	ldr	r0, [pc, #260]	; (d0054098 <fillTriangleDitherBayer+0x7f4>)
d0053f94:	f836 cf02 	ldrh.w	ip, [r6, #2]!
d0053f98:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d0053f9c:	eb00 0803 	add.w	r8, r0, r3
d0053fa0:	3301      	adds	r3, #1
d0053fa2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053fa6:	01a4      	lsls	r4, r4, #6
d0053fa8:	ee37 7a26 	vadd.f32	s14, s14, s13
d0053fac:	f003 0303 	and.w	r3, r3, #3
d0053fb0:	3201      	adds	r2, #1
d0053fb2:	ee17 0a90 	vmov	r0, s15
d0053fb6:	b280      	uxth	r0, r0
d0053fb8:	4584      	cmp	ip, r0
d0053fba:	d908      	bls.n	d0053fce <fillTriangleDitherBayer+0x72a>
d0053fbc:	8030      	strh	r0, [r6, #0]
d0053fbe:	f818 0005 	ldrb.w	r0, [r8, r5]
d0053fc2:	4548      	cmp	r0, r9
d0053fc4:	bfb4      	ite	lt
d0053fc6:	4638      	movlt	r0, r7
d0053fc8:	4658      	movge	r0, fp
d0053fca:	f80e 0004 	strb.w	r0, [lr, r4]
d0053fce:	4291      	cmp	r1, r2
d0053fd0:	dcd9      	bgt.n	d0053f86 <fillTriangleDitherBayer+0x6e2>
d0053fd2:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0053fd6:	9f05      	ldr	r7, [sp, #20]
d0053fd8:	9d06      	ldr	r5, [sp, #24]
d0053fda:	f1b9 0f00 	cmp.w	r9, #0
d0053fde:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053fe2:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0053fe6:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053fea:	bfbc      	itt	lt
d0053fec:	2202      	movlt	r2, #2
d0053fee:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053ff2:	4492      	add	sl, r2
d0053ff4:	449e      	add	lr, r3
d0053ff6:	ee07 1a90 	vmov	s15, r1
d0053ffa:	440d      	add	r5, r1
d0053ffc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054000:	eea7 3aa9 	vfma.f32	s6, s15, s19
d0054004:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0054008:	42af      	cmp	r7, r5
d005400a:	da82      	bge.n	d0053f12 <fillTriangleDitherBayer+0x66e>
d005400c:	e5d7      	b.n	d0053bbe <fillTriangleDitherBayer+0x31a>
d005400e:	ee07 1a90 	vmov	s15, r1
d0054012:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0054016:	eb0a 0a41 	add.w	sl, sl, r1, lsl #1
d005401a:	440d      	add	r5, r1
d005401c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054020:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0054024:	eea7 3aa9 	vfma.f32	s6, s15, s19
d0054028:	eea7 2a8b 	vfma.f32	s4, s15, s22
d005402c:	e7ec      	b.n	d0054008 <fillTriangleDitherBayer+0x764>
d005402e:	9b00      	ldr	r3, [sp, #0]
d0054030:	2b00      	cmp	r3, #0
d0054032:	d03d      	beq.n	d00540b0 <fillTriangleDitherBayer+0x80c>
d0054034:	f1b9 0f00 	cmp.w	r9, #0
d0054038:	dbdd      	blt.n	d0053ff6 <fillTriangleDitherBayer+0x752>
d005403a:	eef0 6a46 	vmov.f32	s13, s12
d005403e:	f1aa 0402 	sub.w	r4, sl, #2
d0054042:	2300      	movs	r3, #0
d0054044:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0054048:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d005404c:	ee77 7a85 	vadd.f32	s15, s15, s10
d0054050:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0054054:	f834 6f02 	ldrh.w	r6, [r4, #2]!
d0054058:	ee37 7a26 	vadd.f32	s14, s14, s13
d005405c:	0190      	lsls	r0, r2, #6
d005405e:	3301      	adds	r3, #1
d0054060:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0054064:	ee17 2a90 	vmov	r2, s15
d0054068:	b292      	uxth	r2, r2
d005406a:	4296      	cmp	r6, r2
d005406c:	d902      	bls.n	d0054074 <fillTriangleDitherBayer+0x7d0>
d005406e:	8022      	strh	r2, [r4, #0]
d0054070:	f80e b000 	strb.w	fp, [lr, r0]
d0054074:	4299      	cmp	r1, r3
d0054076:	dce5      	bgt.n	d0054044 <fillTriangleDitherBayer+0x7a0>
d0054078:	e7af      	b.n	d0053fda <fillTriangleDitherBayer+0x736>
d005407a:	bf00      	nop
d005407c:	d005fa40 	.word	0xd005fa40
d0054080:	d005fa3c 	.word	0xd005fa3c
d0054084:	d005fa44 	.word	0xd005fa44
d0054088:	33d6bf95 	.word	0x33d6bf95
d005408c:	477fff00 	.word	0x477fff00
d0054090:	00000000 	.word	0x00000000
d0054094:	d00f9eb0 	.word	0xd00f9eb0
d0054098:	d005ce68 	.word	0xd005ce68
d005409c:	38d1b717 	.word	0x38d1b717
d00540a0:	9b00      	ldr	r3, [sp, #0]
d00540a2:	2b00      	cmp	r3, #0
d00540a4:	d1c9      	bne.n	d005403a <fillTriangleDitherBayer+0x796>
d00540a6:	eef0 6a46 	vmov.f32	s13, s12
d00540aa:	f005 0303 	and.w	r3, r5, #3
d00540ae:	e75f      	b.n	d0053f70 <fillTriangleDitherBayer+0x6cc>
d00540b0:	f1b9 0f00 	cmp.w	r9, #0
d00540b4:	f005 0303 	and.w	r3, r5, #3
d00540b8:	db9d      	blt.n	d0053ff6 <fillTriangleDitherBayer+0x752>
d00540ba:	eef0 6a46 	vmov.f32	s13, s12
d00540be:	e757      	b.n	d0053f70 <fillTriangleDitherBayer+0x6cc>
d00540c0:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00540c4:	ed1f 1a0b 	vldr	s2, [pc, #-44]	; d005409c <fillTriangleDitherBayer+0x7f8>
d00540c8:	eef4 7ac1 	vcmpe.f32	s15, s2
d00540cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540d0:	f340 80f7 	ble.w	d00542c2 <fillTriangleDitherBayer+0xa1e>
d00540d4:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00540d8:	ee73 3ac5 	vsub.f32	s7, s7, s10
d00540dc:	ee71 1ae4 	vsub.f32	s3, s3, s9
d00540e0:	ee89 1aa7 	vdiv.f32	s2, s19, s15
d00540e4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00540e8:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00540ec:	ee07 4a90 	vmov	s15, r4
d00540f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00540f4:	ee77 6aa6 	vadd.f32	s13, s15, s13
d00540f8:	ee63 3a81 	vmul.f32	s7, s7, s2
d00540fc:	ee61 1a81 	vmul.f32	s3, s3, s2
d0054100:	eea6 5aa3 	vfma.f32	s10, s13, s7
d0054104:	eee6 4aa1 	vfma.f32	s9, s13, s3
d0054108:	9a01      	ldr	r2, [sp, #4]
d005410a:	eb04 0884 	add.w	r8, r4, r4, lsl #2
d005410e:	4b6f      	ldr	r3, [pc, #444]	; (d00542cc <fillTriangleDitherBayer+0xa28>)
d0054110:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054114:	ebc2 1a02 	rsb	sl, r2, r2, lsl #4
d0054118:	9910      	ldr	r1, [sp, #64]	; 0x40
d005411a:	46b9      	mov	r9, r7
d005411c:	eb01 1a4a 	add.w	sl, r1, sl, lsl #5
d0054120:	6819      	ldr	r1, [r3, #0]
d0054122:	eb02 1388 	add.w	r3, r2, r8, lsl #6
d0054126:	f002 0203 	and.w	r2, r2, #3
d005412a:	44a2      	add	sl, r4
d005412c:	eb01 0803 	add.w	r8, r1, r3
d0054130:	4b67      	ldr	r3, [pc, #412]	; (d00542d0 <fillTriangleDitherBayer+0xa2c>)
d0054132:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0054136:	9309      	str	r3, [sp, #36]	; 0x24
d0054138:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d005413a:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d005413e:	eba9 0704 	sub.w	r7, r9, r4
d0054142:	eeb4 5aeb 	vcmpe.f32	s10, s23
d0054146:	1c79      	adds	r1, r7, #1
d0054148:	2930      	cmp	r1, #48	; 0x30
d005414a:	bfa8      	it	ge
d005414c:	2130      	movge	r1, #48	; 0x30
d005414e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054152:	d96d      	bls.n	d0054230 <fillTriangleDitherBayer+0x98c>
d0054154:	2f00      	cmp	r7, #0
d0054156:	ee84 1a85 	vdiv.f32	s2, s9, s10
d005415a:	dd79      	ble.n	d0054250 <fillTriangleDitherBayer+0x9ac>
d005415c:	1e4b      	subs	r3, r1, #1
d005415e:	ee07 3a90 	vmov	s15, r3
d0054162:	eef0 9a45 	vmov.f32	s19, s10
d0054166:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005416a:	eee7 9aa3 	vfma.f32	s19, s15, s7
d005416e:	eef4 9aeb 	vcmpe.f32	s19, s23
d0054172:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054176:	f340 808f 	ble.w	d0054298 <fillTriangleDitherBayer+0x9f4>
d005417a:	eef0 fa64 	vmov.f32	s31, s9
d005417e:	eee7 faa1 	vfma.f32	s31, s15, s3
d0054182:	ee8f aaa9 	vdiv.f32	s20, s31, s19
d0054186:	ee3a aa41 	vsub.f32	s20, s20, s2
d005418a:	eeca 9a27 	vdiv.f32	s19, s20, s15
d005418e:	9b00      	ldr	r3, [sp, #0]
d0054190:	2b00      	cmp	r3, #0
d0054192:	d163      	bne.n	d005425c <fillTriangleDitherBayer+0x9b8>
d0054194:	f004 0503 	and.w	r5, r4, #3
d0054198:	9703      	str	r7, [sp, #12]
d005419a:	f1aa 0602 	sub.w	r6, sl, #2
d005419e:	9405      	str	r4, [sp, #20]
d00541a0:	2200      	movs	r2, #0
d00541a2:	f8cd 9018 	str.w	r9, [sp, #24]
d00541a6:	9c04      	ldr	r4, [sp, #16]
d00541a8:	9f02      	ldr	r7, [sp, #8]
d00541aa:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
d00541ae:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d00541b2:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00541b6:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00541ba:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00541be:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00541c2:	ee31 1a29 	vadd.f32	s2, s2, s19
d00541c6:	f105 0c01 	add.w	ip, r5, #1
d00541ca:	3201      	adds	r2, #1
d00541cc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00541d0:	0180      	lsls	r0, r0, #6
d00541d2:	ee17 3a90 	vmov	r3, s15
d00541d6:	b29b      	uxth	r3, r3
d00541d8:	459e      	cmp	lr, r3
d00541da:	d908      	bls.n	d00541ee <fillTriangleDitherBayer+0x94a>
d00541dc:	8033      	strh	r3, [r6, #0]
d00541de:	f819 3005 	ldrb.w	r3, [r9, r5]
d00541e2:	42bb      	cmp	r3, r7
d00541e4:	bfac      	ite	ge
d00541e6:	465b      	movge	r3, fp
d00541e8:	4623      	movlt	r3, r4
d00541ea:	f808 3000 	strb.w	r3, [r8, r0]
d00541ee:	428a      	cmp	r2, r1
d00541f0:	f00c 0503 	and.w	r5, ip, #3
d00541f4:	dbdb      	blt.n	d00541ae <fillTriangleDitherBayer+0x90a>
d00541f6:	9f03      	ldr	r7, [sp, #12]
d00541f8:	9c05      	ldr	r4, [sp, #20]
d00541fa:	f8dd 9018 	ldr.w	r9, [sp, #24]
d00541fe:	2f00      	cmp	r7, #0
d0054200:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0054204:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0054208:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005420c:	bfbc      	itt	lt
d005420e:	2202      	movlt	r2, #2
d0054210:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0054214:	4492      	add	sl, r2
d0054216:	4498      	add	r8, r3
d0054218:	ee07 1a90 	vmov	s15, r1
d005421c:	440c      	add	r4, r1
d005421e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054222:	eea7 5aa3 	vfma.f32	s10, s15, s7
d0054226:	eee7 4aa1 	vfma.f32	s9, s15, s3
d005422a:	454c      	cmp	r4, r9
d005422c:	dd87      	ble.n	d005413e <fillTriangleDitherBayer+0x89a>
d005422e:	e5df      	b.n	d0053df0 <fillTriangleDitherBayer+0x54c>
d0054230:	ee07 1a90 	vmov	s15, r1
d0054234:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0054238:	eb0a 0a41 	add.w	sl, sl, r1, lsl #1
d005423c:	440c      	add	r4, r1
d005423e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054242:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0054246:	eea7 5aa3 	vfma.f32	s10, s15, s7
d005424a:	eee7 4aa1 	vfma.f32	s9, s15, s3
d005424e:	e7ec      	b.n	d005422a <fillTriangleDitherBayer+0x986>
d0054250:	9b00      	ldr	r3, [sp, #0]
d0054252:	b323      	cbz	r3, d005429e <fillTriangleDitherBayer+0x9fa>
d0054254:	2f00      	cmp	r7, #0
d0054256:	d1df      	bne.n	d0054218 <fillTriangleDitherBayer+0x974>
d0054258:	eef0 9a47 	vmov.f32	s19, s14
d005425c:	f1aa 0502 	sub.w	r5, sl, #2
d0054260:	2200      	movs	r2, #0
d0054262:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0054266:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d005426a:	ee77 7aa6 	vadd.f32	s15, s15, s13
d005426e:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0054272:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0054276:	ee31 1a29 	vadd.f32	s2, s2, s19
d005427a:	0198      	lsls	r0, r3, #6
d005427c:	3201      	adds	r2, #1
d005427e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0054282:	ee17 3a90 	vmov	r3, s15
d0054286:	b29b      	uxth	r3, r3
d0054288:	429e      	cmp	r6, r3
d005428a:	d902      	bls.n	d0054292 <fillTriangleDitherBayer+0x9ee>
d005428c:	802b      	strh	r3, [r5, #0]
d005428e:	f808 b000 	strb.w	fp, [r8, r0]
d0054292:	428a      	cmp	r2, r1
d0054294:	dbe5      	blt.n	d0054262 <fillTriangleDitherBayer+0x9be>
d0054296:	e7b2      	b.n	d00541fe <fillTriangleDitherBayer+0x95a>
d0054298:	eef0 9a47 	vmov.f32	s19, s14
d005429c:	e777      	b.n	d005418e <fillTriangleDitherBayer+0x8ea>
d005429e:	2f00      	cmp	r7, #0
d00542a0:	f004 0503 	and.w	r5, r4, #3
d00542a4:	dbb8      	blt.n	d0054218 <fillTriangleDitherBayer+0x974>
d00542a6:	eef0 9a47 	vmov.f32	s19, s14
d00542aa:	e775      	b.n	d0054198 <fillTriangleDitherBayer+0x8f4>
d00542ac:	f04f 0b10 	mov.w	fp, #16
d00542b0:	2310      	movs	r3, #16
d00542b2:	9304      	str	r3, [sp, #16]
d00542b4:	f7ff bb5c 	b.w	d0053970 <fillTriangleDitherBayer+0xcc>
d00542b8:	eeb0 ba46 	vmov.f32	s22, s12
d00542bc:	eef0 9a46 	vmov.f32	s19, s12
d00542c0:	e60f      	b.n	d0053ee2 <fillTriangleDitherBayer+0x63e>
d00542c2:	eef0 1a47 	vmov.f32	s3, s14
d00542c6:	eef0 3a47 	vmov.f32	s7, s14
d00542ca:	e71d      	b.n	d0054108 <fillTriangleDitherBayer+0x864>
d00542cc:	d00f9eb0 	.word	0xd00f9eb0
d00542d0:	d005ce68 	.word	0xd005ce68

d00542d4 <fillTriangleDitherBayerT>:
d00542d4:	eddf 5ae4 	vldr	s11, [pc, #912]	; d0054668 <fillTriangleDitherBayerT+0x394>
d00542d8:	eef4 0ae5 	vcmpe.f32	s1, s11
d00542dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00542e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542e4:	eeb4 1ae5 	vcmpe.f32	s2, s11
d00542e8:	ed2d 8b10 	vpush	{d8-d15}
d00542ec:	b095      	sub	sp, #84	; 0x54
d00542ee:	9204      	str	r2, [sp, #16]
d00542f0:	bf94      	ite	ls
d00542f2:	2201      	movls	r2, #1
d00542f4:	2200      	movhi	r2, #0
d00542f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542fa:	9002      	str	r0, [sp, #8]
d00542fc:	9103      	str	r1, [sp, #12]
d00542fe:	bf98      	it	ls
d0054300:	f042 0201 	orrls.w	r2, r2, #1
d0054304:	9305      	str	r3, [sp, #20]
d0054306:	f8bd 50c0 	ldrh.w	r5, [sp, #192]	; 0xc0
d005430a:	f8bd 00c4 	ldrh.w	r0, [sp, #196]	; 0xc4
d005430e:	f8bd 10c8 	ldrh.w	r1, [sp, #200]	; 0xc8
d0054312:	f89d 30cc 	ldrb.w	r3, [sp, #204]	; 0xcc
d0054316:	f89d 40d0 	ldrb.w	r4, [sp, #208]	; 0xd0
d005431a:	ed8d 0a00 	vstr	s0, [sp]
d005431e:	edcd 1a01 	vstr	s3, [sp, #4]
d0054322:	2a00      	cmp	r2, #0
d0054324:	f040 81b5 	bne.w	d0054692 <fillTriangleDitherBayerT+0x3be>
d0054328:	eeb4 0a65 	vcmp.f32	s0, s11
d005432c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054330:	f240 81af 	bls.w	d0054692 <fillTriangleDitherBayerT+0x3be>
d0054334:	eef0 7a41 	vmov.f32	s15, s2
d0054338:	eddf 5acc 	vldr	s11, [pc, #816]	; d005466c <fillTriangleDitherBayerT+0x398>
d005433c:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0054340:	eeb0 7a60 	vmov.f32	s14, s1
d0054344:	fec1 6aa5 	vmaxnm.f32	s13, s3, s11
d0054348:	eef1 4a04 	vmov.f32	s9, #20	; 0x40a00000  5.0
d005434c:	ee05 5a90 	vmov	s11, r5
d0054350:	eec5 1a27 	vdiv.f32	s3, s10, s15
d0054354:	fec6 6ae4 	vminnm.f32	s13, s13, s9
d0054358:	eec5 0a07 	vdiv.f32	s1, s10, s14
d005435c:	ee85 1a00 	vdiv.f32	s2, s10, s0
d0054360:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0054364:	eef8 5a65 	vcvt.f32.u32	s11, s11
d0054368:	ee17 2a90 	vmov	r2, s15
d005436c:	ee07 0a90 	vmov	s15, r0
d0054370:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0054374:	ee07 1a90 	vmov	s15, r1
d0054378:	1c51      	adds	r1, r2, #1
d005437a:	eeb8 7a67 	vcvt.f32.u32	s14, s15
d005437e:	2905      	cmp	r1, #5
d0054380:	ee24 4a20 	vmul.f32	s8, s8, s1
d0054384:	bfa8      	it	ge
d0054386:	2105      	movge	r1, #5
d0054388:	2a04      	cmp	r2, #4
d005438a:	ee65 5a81 	vmul.f32	s11, s11, s2
d005438e:	ee27 7a21 	vmul.f32	s14, s14, s3
d0054392:	f300 84d4 	bgt.w	d0054d3e <fillTriangleDitherBayerT+0xa6a>
d0054396:	f003 030f 	and.w	r3, r3, #15
d005439a:	2a03      	cmp	r2, #3
d005439c:	f103 0320 	add.w	r3, r3, #32
d00543a0:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d00543a4:	b2c0      	uxtb	r0, r0
d00543a6:	9000      	str	r0, [sp, #0]
d00543a8:	f300 84cb 	bgt.w	d0054d42 <fillTriangleDitherBayerT+0xa6e>
d00543ac:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d00543b0:	b2db      	uxtb	r3, r3
d00543b2:	9301      	str	r3, [sp, #4]
d00543b4:	eddd 7a03 	vldr	s15, [sp, #12]
d00543b8:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d00543bc:	eddd 7a05 	vldr	s15, [sp, #20]
d00543c0:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d00543c4:	eddd 7a02 	vldr	s15, [sp, #8]
d00543c8:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d00543cc:	eddd 7a04 	vldr	s15, [sp, #16]
d00543d0:	eeb4 3ac2 	vcmpe.f32	s6, s4
d00543d4:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d00543d8:	eddd 7a2e 	vldr	s15, [sp, #184]	; 0xb8
d00543dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543e0:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d00543e4:	eddd 7a2f 	vldr	s15, [sp, #188]	; 0xbc
d00543e8:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d00543ec:	f300 8156 	bgt.w	d005469c <fillTriangleDitherBayerT+0x3c8>
d00543f0:	eeb4 3ac5 	vcmpe.f32	s6, s10
d00543f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543f8:	f300 8263 	bgt.w	d00548c2 <fillTriangleDitherBayerT+0x5ee>
d00543fc:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0054400:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054404:	dd17      	ble.n	d0054436 <fillTriangleDitherBayerT+0x162>
d0054406:	eeb0 8a44 	vmov.f32	s16, s8
d005440a:	eeb0 0a60 	vmov.f32	s0, s1
d005440e:	eef0 3a42 	vmov.f32	s7, s4
d0054412:	eef0 7a62 	vmov.f32	s15, s5
d0054416:	eeb0 4a47 	vmov.f32	s8, s14
d005441a:	eef0 0a61 	vmov.f32	s1, s3
d005441e:	eeb0 2a45 	vmov.f32	s4, s10
d0054422:	eef0 2a46 	vmov.f32	s5, s12
d0054426:	eeb0 7a48 	vmov.f32	s14, s16
d005442a:	eef0 1a40 	vmov.f32	s3, s0
d005442e:	eeb0 5a63 	vmov.f32	s10, s7
d0054432:	eeb0 6a67 	vmov.f32	s12, s15
d0054436:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005443a:	ee73 3a27 	vadd.f32	s7, s6, s15
d005443e:	ee75 7a27 	vadd.f32	s15, s10, s15
d0054442:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d0054446:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005444a:	ee13 3a90 	vmov	r3, s7
d005444e:	ee17 1a90 	vmov	r1, s15
d0054452:	428b      	cmp	r3, r1
d0054454:	f000 811d 	beq.w	d0054692 <fillTriangleDitherBayerT+0x3be>
d0054458:	ee75 7a43 	vsub.f32	s15, s10, s6
d005445c:	eddf 3a82 	vldr	s7, [pc, #520]	; d0054668 <fillTriangleDitherBayerT+0x394>
d0054460:	eef4 7ae3 	vcmpe.f32	s15, s7
d0054464:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054468:	f240 8113 	bls.w	d0054692 <fillTriangleDitherBayerT+0x3be>
d005446c:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d0054470:	ee72 9a43 	vsub.f32	s19, s4, s6
d0054474:	ee36 8a64 	vsub.f32	s16, s12, s9
d0054478:	ee8a 0a27 	vdiv.f32	s0, s20, s15
d005447c:	eef4 9ae3 	vcmpe.f32	s19, s7
d0054480:	ee71 8ac1 	vsub.f32	s17, s3, s2
d0054484:	ee37 9a65 	vsub.f32	s18, s14, s11
d0054488:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005448c:	ee28 8a00 	vmul.f32	s16, s16, s0
d0054490:	ee68 8a80 	vmul.f32	s17, s17, s0
d0054494:	ee29 9a00 	vmul.f32	s18, s18, s0
d0054498:	f300 811f 	bgt.w	d00546da <fillTriangleDitherBayerT+0x406>
d005449c:	ee07 2a90 	vmov	s15, r2
d00544a0:	ee35 0a42 	vsub.f32	s0, s10, s4
d00544a4:	9901      	ldr	r1, [sp, #4]
d00544a6:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d00544aa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00544ae:	eeb4 0ae3 	vcmpe.f32	s0, s7
d00544b2:	1224      	asrs	r4, r4, #8
d00544b4:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d00544b8:	ee76 6ae7 	vsub.f32	s13, s13, s15
d00544bc:	eef0 7a66 	vmov.f32	s15, s13
d00544c0:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d00544c4:	ee17 3a90 	vmov	r3, s15
d00544c8:	f383 0204 	usat	r2, #4, r3
d00544cc:	9202      	str	r2, [sp, #8]
d00544ce:	9a00      	ldr	r2, [sp, #0]
d00544d0:	428a      	cmp	r2, r1
d00544d2:	bf18      	it	ne
d00544d4:	2b00      	cmpne	r3, #0
d00544d6:	bfd4      	ite	le
d00544d8:	2301      	movle	r3, #1
d00544da:	2300      	movgt	r3, #0
d00544dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544e0:	9303      	str	r3, [sp, #12]
d00544e2:	f340 80d6 	ble.w	d0054692 <fillTriangleDitherBayerT+0x3be>
d00544e6:	ed9f ea61 	vldr	s28, [pc, #388]	; d005466c <fillTriangleDitherBayerT+0x398>
d00544ea:	eef0 ea4e 	vmov.f32	s29, s28
d00544ee:	eeb0 ca4e 	vmov.f32	s24, s28
d00544f2:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d00544f6:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d00544fa:	ee36 6a62 	vsub.f32	s12, s12, s5
d00544fe:	eddf 6a5a 	vldr	s13, [pc, #360]	; d0054668 <fillTriangleDitherBayerT+0x394>
d0054502:	ee71 1ae0 	vsub.f32	s3, s3, s1
d0054506:	eec3 7aa7 	vdiv.f32	s15, s7, s15
d005450a:	eef4 9ae6 	vcmpe.f32	s19, s13
d005450e:	ee37 7a44 	vsub.f32	s14, s14, s8
d0054512:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054516:	ee26 6a27 	vmul.f32	s12, s12, s15
d005451a:	ee67 fa27 	vmul.f32	s31, s14, s15
d005451e:	ed8d 6a0e 	vstr	s12, [sp, #56]	; 0x38
d0054522:	ee21 6aa7 	vmul.f32	s12, s3, s15
d0054526:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d005452a:	f300 8113 	bgt.w	d0054754 <fillTriangleDitherBayerT+0x480>
d005452e:	4a49      	ldr	r2, [pc, #292]	; (d0054654 <fillTriangleDitherBayerT+0x380>)
d0054530:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0054534:	4b48      	ldr	r3, [pc, #288]	; (d0054658 <fillTriangleDitherBayerT+0x384>)
d0054536:	6812      	ldr	r2, [r2, #0]
d0054538:	681b      	ldr	r3, [r3, #0]
d005453a:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d005453e:	920a      	str	r2, [sp, #40]	; 0x28
d0054540:	930c      	str	r3, [sp, #48]	; 0x30
d0054542:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0054546:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0054548:	980a      	ldr	r0, [sp, #40]	; 0x28
d005454a:	990c      	ldr	r1, [sp, #48]	; 0x30
d005454c:	ee17 3a90 	vmov	r3, s15
d0054550:	4282      	cmp	r2, r0
d0054552:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0054556:	bfb8      	it	lt
d0054558:	4602      	movlt	r2, r0
d005455a:	428b      	cmp	r3, r1
d005455c:	9204      	str	r2, [sp, #16]
d005455e:	bfa8      	it	ge
d0054560:	460b      	movge	r3, r1
d0054562:	429a      	cmp	r2, r3
d0054564:	f300 8095 	bgt.w	d0054692 <fillTriangleDitherBayerT+0x3be>
d0054568:	ee07 2a90 	vmov	s15, r2
d005456c:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0054570:	3301      	adds	r3, #1
d0054572:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0054576:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005457a:	4938      	ldr	r1, [pc, #224]	; (d005465c <fillTriangleDitherBayerT+0x388>)
d005457c:	0152      	lsls	r2, r2, #5
d005457e:	eddd aa0e 	vldr	s21, [sp, #56]	; 0x38
d0054582:	ed9d 0a0d 	vldr	s0, [sp, #52]	; 0x34
d0054586:	ee77 7a87 	vadd.f32	s15, s15, s14
d005458a:	9308      	str	r3, [sp, #32]
d005458c:	680b      	ldr	r3, [r1, #0]
d005458e:	eddf 9a36 	vldr	s19, [pc, #216]	; d0054668 <fillTriangleDitherBayerT+0x394>
d0054592:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0054596:	ed9f aa32 	vldr	s20, [pc, #200]	; d0054660 <fillTriangleDitherBayerT+0x38c>
d005459a:	ee37 2ac2 	vsub.f32	s4, s15, s4
d005459e:	ed9f 6a33 	vldr	s12, [pc, #204]	; d005466c <fillTriangleDitherBayerT+0x398>
d00545a2:	eddf 3a30 	vldr	s7, [pc, #192]	; d0054664 <fillTriangleDitherBayerT+0x390>
d00545a6:	eee8 4a03 	vfma.f32	s9, s16, s6
d00545aa:	920a      	str	r2, [sp, #40]	; 0x28
d00545ac:	eea8 1a83 	vfma.f32	s2, s17, s6
d00545b0:	9309      	str	r3, [sp, #36]	; 0x24
d00545b2:	eee9 5a03 	vfma.f32	s11, s18, s6
d00545b6:	eeea 2a82 	vfma.f32	s5, s21, s4
d00545ba:	eee0 0a02 	vfma.f32	s1, s0, s4
d00545be:	eea2 4a2f 	vfma.f32	s8, s4, s31
d00545c2:	e034      	b.n	d005462e <fillTriangleDitherBayerT+0x35a>
d00545c4:	eeb0 ba65 	vmov.f32	s22, s11
d00545c8:	eef0 1a41 	vmov.f32	s3, s2
d00545cc:	eeb0 7a64 	vmov.f32	s14, s9
d00545d0:	eeb0 2a44 	vmov.f32	s4, s8
d00545d4:	eeb0 3a60 	vmov.f32	s6, s1
d00545d8:	eef0 6a62 	vmov.f32	s13, s5
d00545dc:	fefa 7a47 	vrintp.f32	s15, s14
d00545e0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00545e4:	f240 13df 	movw	r3, #479	; 0x1df
d00545e8:	ee17 6a90 	vmov	r6, s15
d00545ec:	fefa 7a66 	vrintp.f32	s15, s13
d00545f0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00545f4:	3e01      	subs	r6, #1
d00545f6:	ee17 0a90 	vmov	r0, s15
d00545fa:	429e      	cmp	r6, r3
d00545fc:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0054600:	bfa8      	it	ge
d0054602:	461e      	movge	r6, r3
d0054604:	42b0      	cmp	r0, r6
d0054606:	f340 8175 	ble.w	d00548f4 <fillTriangleDitherBayerT+0x620>
d005460a:	9b04      	ldr	r3, [sp, #16]
d005460c:	ee74 4a88 	vadd.f32	s9, s9, s16
d0054610:	9a08      	ldr	r2, [sp, #32]
d0054612:	ee31 1a28 	vadd.f32	s2, s2, s17
d0054616:	3301      	adds	r3, #1
d0054618:	ee75 5a89 	vadd.f32	s11, s11, s18
d005461c:	ee72 2aaa 	vadd.f32	s5, s5, s21
d0054620:	4293      	cmp	r3, r2
d0054622:	ee70 0a80 	vadd.f32	s1, s1, s0
d0054626:	ee34 4a2f 	vadd.f32	s8, s8, s31
d005462a:	9304      	str	r3, [sp, #16]
d005462c:	d031      	beq.n	d0054692 <fillTriangleDitherBayerT+0x3be>
d005462e:	eef4 4ae2 	vcmpe.f32	s9, s5
d0054632:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054636:	dcc5      	bgt.n	d00545c4 <fillTriangleDitherBayerT+0x2f0>
d0054638:	eeb0 ba44 	vmov.f32	s22, s8
d005463c:	eef0 1a60 	vmov.f32	s3, s1
d0054640:	eeb0 7a62 	vmov.f32	s14, s5
d0054644:	eeb0 2a65 	vmov.f32	s4, s11
d0054648:	eeb0 3a41 	vmov.f32	s6, s2
d005464c:	eef0 6a64 	vmov.f32	s13, s9
d0054650:	e7c4      	b.n	d00545dc <fillTriangleDitherBayerT+0x308>
d0054652:	bf00      	nop
d0054654:	d005fa3c 	.word	0xd005fa3c
d0054658:	d005fa40 	.word	0xd005fa40
d005465c:	d005fa44 	.word	0xd005fa44
d0054660:	33d6bf95 	.word	0x33d6bf95
d0054664:	477fff00 	.word	0x477fff00
d0054668:	38d1b717 	.word	0x38d1b717
d005466c:	00000000 	.word	0x00000000
d0054670:	eddd 5a11 	vldr	s11, [sp, #68]	; 0x44
d0054674:	4644      	mov	r4, r8
d0054676:	ed9d 1a12 	vldr	s2, [sp, #72]	; 0x48
d005467a:	ed9d 4a13 	vldr	s8, [sp, #76]	; 0x4c
d005467e:	ed5f 7a06 	vldr	s15, [pc, #-24]	; d0054668 <fillTriangleDitherBayerT+0x394>
d0054682:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0054686:	eeb4 7ae7 	vcmpe.f32	s14, s15
d005468a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005468e:	f73f af58 	bgt.w	d0054542 <fillTriangleDitherBayerT+0x26e>
d0054692:	b015      	add	sp, #84	; 0x54
d0054694:	ecbd 8b10 	vpop	{d8-d15}
d0054698:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005469c:	eeb4 2ac5 	vcmpe.f32	s4, s10
d00546a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546a4:	f340 80f4 	ble.w	d0054890 <fillTriangleDitherBayerT+0x5bc>
d00546a8:	eeb0 8a47 	vmov.f32	s16, s14
d00546ac:	eeb0 0a61 	vmov.f32	s0, s3
d00546b0:	eef0 3a45 	vmov.f32	s7, s10
d00546b4:	eef0 7a46 	vmov.f32	s15, s12
d00546b8:	eeb0 7a65 	vmov.f32	s14, s11
d00546bc:	eef0 1a41 	vmov.f32	s3, s2
d00546c0:	eeb0 5a43 	vmov.f32	s10, s6
d00546c4:	eeb0 6a64 	vmov.f32	s12, s9
d00546c8:	eef0 5a48 	vmov.f32	s11, s16
d00546cc:	eeb0 1a40 	vmov.f32	s2, s0
d00546d0:	eeb0 3a63 	vmov.f32	s6, s7
d00546d4:	eef0 4a67 	vmov.f32	s9, s15
d00546d8:	e6ad      	b.n	d0054436 <fillTriangleDitherBayerT+0x162>
d00546da:	ee07 2a90 	vmov	s15, r2
d00546de:	ee8a 0a29 	vdiv.f32	s0, s20, s19
d00546e2:	9901      	ldr	r1, [sp, #4]
d00546e4:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d00546e8:	1224      	asrs	r4, r4, #8
d00546ea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00546ee:	ee72 aae4 	vsub.f32	s21, s5, s9
d00546f2:	ee30 aac1 	vsub.f32	s20, s1, s2
d00546f6:	ee76 6ae7 	vsub.f32	s13, s13, s15
d00546fa:	ee34 ea65 	vsub.f32	s28, s8, s11
d00546fe:	eef0 7a66 	vmov.f32	s15, s13
d0054702:	ee75 6a42 	vsub.f32	s13, s10, s4
d0054706:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d005470a:	eef4 6ae3 	vcmpe.f32	s13, s7
d005470e:	edcd 6a09 	vstr	s13, [sp, #36]	; 0x24
d0054712:	ee2e ea00 	vmul.f32	s28, s28, s0
d0054716:	ee17 3a90 	vmov	r3, s15
d005471a:	ee6a 7a80 	vmul.f32	s15, s21, s0
d005471e:	f383 0204 	usat	r2, #4, r3
d0054722:	eeb0 ca67 	vmov.f32	s24, s15
d0054726:	9202      	str	r2, [sp, #8]
d0054728:	ee6a 7a00 	vmul.f32	s15, s20, s0
d005472c:	9a00      	ldr	r2, [sp, #0]
d005472e:	428a      	cmp	r2, r1
d0054730:	bf18      	it	ne
d0054732:	2b00      	cmpne	r3, #0
d0054734:	eef0 ea67 	vmov.f32	s29, s15
d0054738:	bfd4      	ite	le
d005473a:	2301      	movle	r3, #1
d005473c:	2300      	movgt	r3, #0
d005473e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054742:	9303      	str	r3, [sp, #12]
d0054744:	f73f aed5 	bgt.w	d00544f2 <fillTriangleDitherBayerT+0x21e>
d0054748:	ed5f fa38 	vldr	s31, [pc, #-224]	; d005466c <fillTriangleDitherBayerT+0x398>
d005474c:	edcd fa0d 	vstr	s31, [sp, #52]	; 0x34
d0054750:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0054754:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0054758:	4bcd      	ldr	r3, [pc, #820]	; (d0054a90 <fillTriangleDitherBayerT+0x7bc>)
d005475a:	4ace      	ldr	r2, [pc, #824]	; (d0054a94 <fillTriangleDitherBayerT+0x7c0>)
d005475c:	6819      	ldr	r1, [r3, #0]
d005475e:	ee17 3a90 	vmov	r3, s15
d0054762:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0054766:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d005476a:	6810      	ldr	r0, [r2, #0]
d005476c:	3b01      	subs	r3, #1
d005476e:	910c      	str	r1, [sp, #48]	; 0x30
d0054770:	900a      	str	r0, [sp, #40]	; 0x28
d0054772:	ee17 2a90 	vmov	r2, s15
d0054776:	428b      	cmp	r3, r1
d0054778:	bfa8      	it	ge
d005477a:	460b      	movge	r3, r1
d005477c:	4282      	cmp	r2, r0
d005477e:	bfb8      	it	lt
d0054780:	4602      	movlt	r2, r0
d0054782:	4293      	cmp	r3, r2
d0054784:	9204      	str	r2, [sp, #16]
d0054786:	f6ff af7a 	blt.w	d005467e <fillTriangleDitherBayerT+0x3aa>
d005478a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005478e:	3301      	adds	r3, #1
d0054790:	eef0 aa64 	vmov.f32	s21, s9
d0054794:	49c0      	ldr	r1, [pc, #768]	; (d0054a98 <fillTriangleDitherBayerT+0x7c4>)
d0054796:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d005479a:	9308      	str	r3, [sp, #32]
d005479c:	ee37 7ac3 	vsub.f32	s14, s15, s6
d00547a0:	eddd 7a04 	vldr	s15, [sp, #16]
d00547a4:	680b      	ldr	r3, [r1, #0]
d00547a6:	eeb0 ba64 	vmov.f32	s22, s9
d00547aa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00547ae:	eddf babb 	vldr	s23, [pc, #748]	; d0054a9c <fillTriangleDitherBayerT+0x7c8>
d00547b2:	eef0 da41 	vmov.f32	s27, s2
d00547b6:	930f      	str	r3, [sp, #60]	; 0x3c
d00547b8:	eeb0 da65 	vmov.f32	s26, s11
d00547bc:	0153      	lsls	r3, r2, #5
d00547be:	ee77 7a87 	vadd.f32	s15, s15, s14
d00547c2:	ed9f 6ab7 	vldr	s12, [pc, #732]	; d0054aa0 <fillTriangleDitherBayerT+0x7cc>
d00547c6:	eeb0 aa4c 	vmov.f32	s20, s24
d00547ca:	ed9f 7ab6 	vldr	s14, [pc, #728]	; d0054aa4 <fillTriangleDitherBayerT+0x7d0>
d00547ce:	eef0 ca41 	vmov.f32	s25, s2
d00547d2:	46a0      	mov	r8, r4
d00547d4:	eee7 aa8c 	vfma.f32	s21, s15, s24
d00547d8:	9310      	str	r3, [sp, #64]	; 0x40
d00547da:	eeb0 ca65 	vmov.f32	s24, s11
d00547de:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d00547e2:	eea8 ba27 	vfma.f32	s22, s16, s15
d00547e6:	ed8d 1a12 	vstr	s2, [sp, #72]	; 0x48
d00547ea:	eee8 daa7 	vfma.f32	s27, s17, s15
d00547ee:	ed8d 4a13 	vstr	s8, [sp, #76]	; 0x4c
d00547f2:	eea9 da27 	vfma.f32	s26, s18, s15
d00547f6:	eee7 caae 	vfma.f32	s25, s15, s29
d00547fa:	eea7 ca8e 	vfma.f32	s24, s15, s28
d00547fe:	e035      	b.n	d005486c <fillTriangleDitherBayerT+0x598>
d0054800:	eef0 1a4d 	vmov.f32	s3, s26
d0054804:	eef0 3a6d 	vmov.f32	s7, s27
d0054808:	eef0 7a4b 	vmov.f32	s15, s22
d005480c:	eeb0 4a4c 	vmov.f32	s8, s24
d0054810:	eef0 5a6c 	vmov.f32	s11, s25
d0054814:	eef0 6a6a 	vmov.f32	s13, s21
d0054818:	feba 1a67 	vrintp.f32	s2, s15
d005481c:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0054820:	feba 0a66 	vrintp.f32	s0, s13
d0054824:	f240 13df 	movw	r3, #479	; 0x1df
d0054828:	ee11 6a10 	vmov	r6, s2
d005482c:	eebd 1ac0 	vcvt.s32.f32	s2, s0
d0054830:	3e01      	subs	r6, #1
d0054832:	ee11 0a10 	vmov	r0, s2
d0054836:	429e      	cmp	r6, r3
d0054838:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d005483c:	bfa8      	it	ge
d005483e:	461e      	movge	r6, r3
d0054840:	4286      	cmp	r6, r0
d0054842:	f280 8173 	bge.w	d0054b2c <fillTriangleDitherBayerT+0x858>
d0054846:	9b04      	ldr	r3, [sp, #16]
d0054848:	ee3b ba08 	vadd.f32	s22, s22, s16
d005484c:	9a08      	ldr	r2, [sp, #32]
d005484e:	ee7d daa8 	vadd.f32	s27, s27, s17
d0054852:	3301      	adds	r3, #1
d0054854:	ee3d da09 	vadd.f32	s26, s26, s18
d0054858:	ee7a aa8a 	vadd.f32	s21, s21, s20
d005485c:	4293      	cmp	r3, r2
d005485e:	ee7c caae 	vadd.f32	s25, s25, s29
d0054862:	ee3c ca0e 	vadd.f32	s24, s24, s28
d0054866:	9304      	str	r3, [sp, #16]
d0054868:	f43f af02 	beq.w	d0054670 <fillTriangleDitherBayerT+0x39c>
d005486c:	eeb4 baea 	vcmpe.f32	s22, s21
d0054870:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054874:	dcc4      	bgt.n	d0054800 <fillTriangleDitherBayerT+0x52c>
d0054876:	eef0 1a4c 	vmov.f32	s3, s24
d005487a:	eef0 3a6c 	vmov.f32	s7, s25
d005487e:	eef0 7a6a 	vmov.f32	s15, s21
d0054882:	eeb0 4a4d 	vmov.f32	s8, s26
d0054886:	eef0 5a6d 	vmov.f32	s11, s27
d005488a:	eef0 6a4b 	vmov.f32	s13, s22
d005488e:	e7c3      	b.n	d0054818 <fillTriangleDitherBayerT+0x544>
d0054890:	eeb0 8a65 	vmov.f32	s16, s11
d0054894:	eeb0 0a41 	vmov.f32	s0, s2
d0054898:	eef0 3a43 	vmov.f32	s7, s6
d005489c:	eef0 7a64 	vmov.f32	s15, s9
d00548a0:	eef0 5a44 	vmov.f32	s11, s8
d00548a4:	eeb0 1a60 	vmov.f32	s2, s1
d00548a8:	eeb0 3a42 	vmov.f32	s6, s4
d00548ac:	eef0 4a62 	vmov.f32	s9, s5
d00548b0:	eeb0 4a48 	vmov.f32	s8, s16
d00548b4:	eef0 0a40 	vmov.f32	s1, s0
d00548b8:	eeb0 2a63 	vmov.f32	s4, s7
d00548bc:	eef0 2a67 	vmov.f32	s5, s15
d00548c0:	e59c      	b.n	d00543fc <fillTriangleDitherBayerT+0x128>
d00548c2:	eeb0 8a65 	vmov.f32	s16, s11
d00548c6:	eeb0 0a41 	vmov.f32	s0, s2
d00548ca:	eef0 3a43 	vmov.f32	s7, s6
d00548ce:	eef0 7a64 	vmov.f32	s15, s9
d00548d2:	eef0 5a47 	vmov.f32	s11, s14
d00548d6:	eeb0 1a61 	vmov.f32	s2, s3
d00548da:	eeb0 3a45 	vmov.f32	s6, s10
d00548de:	eef0 4a46 	vmov.f32	s9, s12
d00548e2:	eeb0 7a48 	vmov.f32	s14, s16
d00548e6:	eef0 1a40 	vmov.f32	s3, s0
d00548ea:	eeb0 5a63 	vmov.f32	s10, s7
d00548ee:	eeb0 6a67 	vmov.f32	s12, s15
d00548f2:	e583      	b.n	d00543fc <fillTriangleDitherBayerT+0x128>
d00548f4:	ee37 7a66 	vsub.f32	s14, s14, s13
d00548f8:	eeb4 7ae9 	vcmpe.f32	s14, s19
d00548fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054900:	f340 8223 	ble.w	d0054d4a <fillTriangleDitherBayerT+0xa76>
d0054904:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0054908:	ee71 1ac3 	vsub.f32	s3, s3, s6
d005490c:	ee3b ba42 	vsub.f32	s22, s22, s4
d0054910:	ee87 5a87 	vdiv.f32	s10, s15, s14
d0054914:	ee07 0a10 	vmov	s14, r0
d0054918:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005491c:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0054920:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d0054924:	ee76 6aa7 	vadd.f32	s13, s13, s15
d0054928:	ee61 1a85 	vmul.f32	s3, s3, s10
d005492c:	ee2b ba05 	vmul.f32	s22, s22, s10
d0054930:	eea6 3aa1 	vfma.f32	s6, s13, s3
d0054934:	eea6 2a8b 	vfma.f32	s4, s13, s22
d0054938:	9a04      	ldr	r2, [sp, #16]
d005493a:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d005493e:	4b5a      	ldr	r3, [pc, #360]	; (d0054aa8 <fillTriangleDitherBayerT+0x7d4>)
d0054940:	ebc2 1e02 	rsb	lr, r2, r2, lsl #4
d0054944:	990a      	ldr	r1, [sp, #40]	; 0x28
d0054946:	681f      	ldr	r7, [r3, #0]
d0054948:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d005494c:	eb01 1e4e 	add.w	lr, r1, lr, lsl #5
d0054950:	f002 0803 	and.w	r8, r2, #3
d0054954:	eb02 1383 	add.w	r3, r2, r3, lsl #6
d0054958:	4a54      	ldr	r2, [pc, #336]	; (d0054aac <fillTriangleDitherBayerT+0x7d8>)
d005495a:	4486      	add	lr, r0
d005495c:	441f      	add	r7, r3
d005495e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0054960:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d0054964:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d0054968:	eba6 0c00 	sub.w	ip, r6, r0
d005496c:	eeb4 3aca 	vcmpe.f32	s6, s20
d0054970:	f10c 0301 	add.w	r3, ip, #1
d0054974:	2b30      	cmp	r3, #48	; 0x30
d0054976:	bfa8      	it	ge
d0054978:	2330      	movge	r3, #48	; 0x30
d005497a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005497e:	d963      	bls.n	d0054a48 <fillTriangleDitherBayerT+0x774>
d0054980:	f1bc 0f00 	cmp.w	ip, #0
d0054984:	ee82 7a03 	vdiv.f32	s14, s4, s6
d0054988:	dd6e      	ble.n	d0054a68 <fillTriangleDitherBayerT+0x794>
d005498a:	1e5a      	subs	r2, r3, #1
d005498c:	ee07 2a90 	vmov	s15, r2
d0054990:	eef0 6a43 	vmov.f32	s13, s6
d0054994:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054998:	eee7 6aa1 	vfma.f32	s13, s15, s3
d005499c:	eef4 6aca 	vcmpe.f32	s13, s20
d00549a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549a4:	dd6a      	ble.n	d0054a7c <fillTriangleDitherBayerT+0x7a8>
d00549a6:	eeb0 ca42 	vmov.f32	s24, s4
d00549aa:	9a03      	ldr	r2, [sp, #12]
d00549ac:	eea7 ca8b 	vfma.f32	s24, s15, s22
d00549b0:	eecc ba26 	vdiv.f32	s23, s24, s13
d00549b4:	ee7b bac7 	vsub.f32	s23, s23, s14
d00549b8:	eecb 6aa7 	vdiv.f32	s13, s23, s15
d00549bc:	2a00      	cmp	r2, #0
d00549be:	f000 81b6 	beq.w	d0054d2e <fillTriangleDitherBayerT+0xa5a>
d00549c2:	f000 0503 	and.w	r5, r0, #3
d00549c6:	f1ae 0902 	sub.w	r9, lr, #2
d00549ca:	2100      	movs	r1, #0
d00549cc:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d00549d0:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00549d4:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00549d8:	f105 0a01 	add.w	sl, r5, #1
d00549dc:	ee77 7a85 	vadd.f32	s15, s15, s10
d00549e0:	ee37 7a26 	vadd.f32	s14, s14, s13
d00549e4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00549e8:	ee17 2a90 	vmov	r2, s15
d00549ec:	b292      	uxth	r2, r2
d00549ee:	4593      	cmp	fp, r2
d00549f0:	d90b      	bls.n	d0054a0a <fillTriangleDitherBayerT+0x736>
d00549f2:	f818 b005 	ldrb.w	fp, [r8, r5]
d00549f6:	eb01 0581 	add.w	r5, r1, r1, lsl #2
d00549fa:	45a3      	cmp	fp, r4
d00549fc:	ea4f 1585 	mov.w	r5, r5, lsl #6
d0054a00:	db03      	blt.n	d0054a0a <fillTriangleDitherBayerT+0x736>
d0054a02:	f8a9 2000 	strh.w	r2, [r9]
d0054a06:	9a00      	ldr	r2, [sp, #0]
d0054a08:	557a      	strb	r2, [r7, r5]
d0054a0a:	3101      	adds	r1, #1
d0054a0c:	f00a 0503 	and.w	r5, sl, #3
d0054a10:	428b      	cmp	r3, r1
d0054a12:	dcdb      	bgt.n	d00549cc <fillTriangleDitherBayerT+0x6f8>
d0054a14:	f1bc 0f00 	cmp.w	ip, #0
d0054a18:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0054a1c:	ea4f 0143 	mov.w	r1, r3, lsl #1
d0054a20:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0054a24:	bfbc      	itt	lt
d0054a26:	2102      	movlt	r1, #2
d0054a28:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0054a2c:	448e      	add	lr, r1
d0054a2e:	4417      	add	r7, r2
d0054a30:	ee07 3a90 	vmov	s15, r3
d0054a34:	4418      	add	r0, r3
d0054a36:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054a3a:	eea7 3aa1 	vfma.f32	s6, s15, s3
d0054a3e:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0054a42:	4286      	cmp	r6, r0
d0054a44:	da90      	bge.n	d0054968 <fillTriangleDitherBayerT+0x694>
d0054a46:	e5e0      	b.n	d005460a <fillTriangleDitherBayerT+0x336>
d0054a48:	ee07 3a90 	vmov	s15, r3
d0054a4c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0054a50:	eb0e 0e43 	add.w	lr, lr, r3, lsl #1
d0054a54:	4418      	add	r0, r3
d0054a56:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054a5a:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0054a5e:	eea7 3aa1 	vfma.f32	s6, s15, s3
d0054a62:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0054a66:	e7ec      	b.n	d0054a42 <fillTriangleDitherBayerT+0x76e>
d0054a68:	9a03      	ldr	r2, [sp, #12]
d0054a6a:	f000 0503 	and.w	r5, r0, #3
d0054a6e:	b30a      	cbz	r2, d0054ab4 <fillTriangleDitherBayerT+0x7e0>
d0054a70:	f1bc 0f00 	cmp.w	ip, #0
d0054a74:	dbdc      	blt.n	d0054a30 <fillTriangleDitherBayerT+0x75c>
d0054a76:	eef0 6a46 	vmov.f32	s13, s12
d0054a7a:	e7a4      	b.n	d00549c6 <fillTriangleDitherBayerT+0x6f2>
d0054a7c:	9a03      	ldr	r2, [sp, #12]
d0054a7e:	2a00      	cmp	r2, #0
d0054a80:	f000 8158 	beq.w	d0054d34 <fillTriangleDitherBayerT+0xa60>
d0054a84:	eef0 6a46 	vmov.f32	s13, s12
d0054a88:	f000 0503 	and.w	r5, r0, #3
d0054a8c:	e79b      	b.n	d00549c6 <fillTriangleDitherBayerT+0x6f2>
d0054a8e:	bf00      	nop
d0054a90:	d005fa40 	.word	0xd005fa40
d0054a94:	d005fa3c 	.word	0xd005fa3c
d0054a98:	d005fa44 	.word	0xd005fa44
d0054a9c:	33d6bf95 	.word	0x33d6bf95
d0054aa0:	477fff00 	.word	0x477fff00
d0054aa4:	00000000 	.word	0x00000000
d0054aa8:	d00f9eb0 	.word	0xd00f9eb0
d0054aac:	d005ce68 	.word	0xd005ce68
d0054ab0:	38d1b717 	.word	0x38d1b717
d0054ab4:	f1bc 0f00 	cmp.w	ip, #0
d0054ab8:	dbba      	blt.n	d0054a30 <fillTriangleDitherBayerT+0x75c>
d0054aba:	eef0 6a46 	vmov.f32	s13, s12
d0054abe:	f1ae 0902 	sub.w	r9, lr, #2
d0054ac2:	2100      	movs	r1, #0
d0054ac4:	f8cd c014 	str.w	ip, [sp, #20]
d0054ac8:	9606      	str	r6, [sp, #24]
d0054aca:	9007      	str	r0, [sp, #28]
d0054acc:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0054ad0:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0054ad4:	ee77 7a85 	vadd.f32	s15, s15, s10
d0054ad8:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0054adc:	ee37 7a26 	vadd.f32	s14, s14, s13
d0054ae0:	f105 0a01 	add.w	sl, r5, #1
d0054ae4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0054ae8:	ee17 2a90 	vmov	r2, s15
d0054aec:	b292      	uxth	r2, r2
d0054aee:	4593      	cmp	fp, r2
d0054af0:	d912      	bls.n	d0054b18 <fillTriangleDitherBayerT+0x844>
d0054af2:	f818 b005 	ldrb.w	fp, [r8, r5]
d0054af6:	eb01 0581 	add.w	r5, r1, r1, lsl #2
d0054afa:	45a3      	cmp	fp, r4
d0054afc:	ea4f 1585 	mov.w	r5, r5, lsl #6
d0054b00:	db0a      	blt.n	d0054b18 <fillTriangleDitherBayerT+0x844>
d0054b02:	9801      	ldr	r0, [sp, #4]
d0054b04:	f8a9 2000 	strh.w	r2, [r9]
d0054b08:	4606      	mov	r6, r0
d0054b0a:	9800      	ldr	r0, [sp, #0]
d0054b0c:	4684      	mov	ip, r0
d0054b0e:	9802      	ldr	r0, [sp, #8]
d0054b10:	4583      	cmp	fp, r0
d0054b12:	bfa8      	it	ge
d0054b14:	4666      	movge	r6, ip
d0054b16:	557e      	strb	r6, [r7, r5]
d0054b18:	3101      	adds	r1, #1
d0054b1a:	f00a 0503 	and.w	r5, sl, #3
d0054b1e:	428b      	cmp	r3, r1
d0054b20:	dcd4      	bgt.n	d0054acc <fillTriangleDitherBayerT+0x7f8>
d0054b22:	f8dd c014 	ldr.w	ip, [sp, #20]
d0054b26:	9e06      	ldr	r6, [sp, #24]
d0054b28:	9807      	ldr	r0, [sp, #28]
d0054b2a:	e773      	b.n	d0054a14 <fillTriangleDitherBayerT+0x740>
d0054b2c:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0054b30:	ed1f 1a21 	vldr	s2, [pc, #-132]	; d0054ab0 <fillTriangleDitherBayerT+0x7dc>
d0054b34:	eef4 7ac1 	vcmpe.f32	s15, s2
d0054b38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b3c:	f340 810a 	ble.w	d0054d54 <fillTriangleDitherBayerT+0xa80>
d0054b40:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0054b44:	ee73 3ae5 	vsub.f32	s7, s7, s11
d0054b48:	ee71 1ac4 	vsub.f32	s3, s3, s8
d0054b4c:	ee80 1a27 	vdiv.f32	s2, s0, s15
d0054b50:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0054b54:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0054b58:	ee07 0a90 	vmov	s15, r0
d0054b5c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054b60:	ee77 6aa6 	vadd.f32	s13, s15, s13
d0054b64:	ee63 3a81 	vmul.f32	s7, s7, s2
d0054b68:	ee61 1a81 	vmul.f32	s3, s3, s2
d0054b6c:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0054b70:	eea6 4aa1 	vfma.f32	s8, s13, s3
d0054b74:	9a04      	ldr	r2, [sp, #16]
d0054b76:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054b7a:	4b79      	ldr	r3, [pc, #484]	; (d0054d60 <fillTriangleDitherBayerT+0xa8c>)
d0054b7c:	ebc2 1c02 	rsb	ip, r2, r2, lsl #4
d0054b80:	9910      	ldr	r1, [sp, #64]	; 0x40
d0054b82:	681f      	ldr	r7, [r3, #0]
d0054b84:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0054b88:	eb01 1c4c 	add.w	ip, r1, ip, lsl #5
d0054b8c:	f002 0e03 	and.w	lr, r2, #3
d0054b90:	eb02 1383 	add.w	r3, r2, r3, lsl #6
d0054b94:	4a73      	ldr	r2, [pc, #460]	; (d0054d64 <fillTriangleDitherBayerT+0xa90>)
d0054b96:	4484      	add	ip, r0
d0054b98:	441f      	add	r7, r3
d0054b9a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0054b9c:	eb02 0e8e 	add.w	lr, r2, lr, lsl #2
d0054ba0:	eb03 0c4c 	add.w	ip, r3, ip, lsl #1
d0054ba4:	1a35      	subs	r5, r6, r0
d0054ba6:	eef4 5aeb 	vcmpe.f32	s11, s23
d0054baa:	1c6a      	adds	r2, r5, #1
d0054bac:	2a30      	cmp	r2, #48	; 0x30
d0054bae:	bfa8      	it	ge
d0054bb0:	2230      	movge	r2, #48	; 0x30
d0054bb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bb6:	d961      	bls.n	d0054c7c <fillTriangleDitherBayerT+0x9a8>
d0054bb8:	2d00      	cmp	r5, #0
d0054bba:	ee84 1a25 	vdiv.f32	s2, s8, s11
d0054bbe:	dd6d      	ble.n	d0054c9c <fillTriangleDitherBayerT+0x9c8>
d0054bc0:	1e53      	subs	r3, r2, #1
d0054bc2:	ee07 3a90 	vmov	s15, r3
d0054bc6:	eeb0 0a65 	vmov.f32	s0, s11
d0054bca:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054bce:	eea7 0aa3 	vfma.f32	s0, s15, s7
d0054bd2:	eeb4 0aeb 	vcmpe.f32	s0, s23
d0054bd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bda:	f340 80a0 	ble.w	d0054d1e <fillTriangleDitherBayerT+0xa4a>
d0054bde:	eeb0 fa44 	vmov.f32	s30, s8
d0054be2:	eea7 faa1 	vfma.f32	s30, s15, s3
d0054be6:	eecf 9a00 	vdiv.f32	s19, s30, s0
d0054bea:	ee79 9ac1 	vsub.f32	s19, s19, s2
d0054bee:	ee89 0aa7 	vdiv.f32	s0, s19, s15
d0054bf2:	9b03      	ldr	r3, [sp, #12]
d0054bf4:	2b00      	cmp	r3, #0
d0054bf6:	d05b      	beq.n	d0054cb0 <fillTriangleDitherBayerT+0x9dc>
d0054bf8:	f000 0403 	and.w	r4, r0, #3
d0054bfc:	f1ac 0902 	sub.w	r9, ip, #2
d0054c00:	2100      	movs	r1, #0
d0054c02:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0054c06:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0054c0a:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0054c0e:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0054c12:	ee31 1a00 	vadd.f32	s2, s2, s0
d0054c16:	f104 0a01 	add.w	sl, r4, #1
d0054c1a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0054c1e:	ee17 3a90 	vmov	r3, s15
d0054c22:	b29b      	uxth	r3, r3
d0054c24:	459b      	cmp	fp, r3
d0054c26:	d90b      	bls.n	d0054c40 <fillTriangleDitherBayerT+0x96c>
d0054c28:	f81e b004 	ldrb.w	fp, [lr, r4]
d0054c2c:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0054c30:	45c3      	cmp	fp, r8
d0054c32:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0054c36:	db03      	blt.n	d0054c40 <fillTriangleDitherBayerT+0x96c>
d0054c38:	f8a9 3000 	strh.w	r3, [r9]
d0054c3c:	9b00      	ldr	r3, [sp, #0]
d0054c3e:	553b      	strb	r3, [r7, r4]
d0054c40:	3101      	adds	r1, #1
d0054c42:	f00a 0403 	and.w	r4, sl, #3
d0054c46:	428a      	cmp	r2, r1
d0054c48:	dcdb      	bgt.n	d0054c02 <fillTriangleDitherBayerT+0x92e>
d0054c4a:	2d00      	cmp	r5, #0
d0054c4c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0054c50:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0054c54:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0054c58:	bfbc      	itt	lt
d0054c5a:	2102      	movlt	r1, #2
d0054c5c:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0054c60:	448c      	add	ip, r1
d0054c62:	441f      	add	r7, r3
d0054c64:	ee07 2a90 	vmov	s15, r2
d0054c68:	4410      	add	r0, r2
d0054c6a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054c6e:	eee7 5aa3 	vfma.f32	s11, s15, s7
d0054c72:	eea7 4aa1 	vfma.f32	s8, s15, s3
d0054c76:	4286      	cmp	r6, r0
d0054c78:	da94      	bge.n	d0054ba4 <fillTriangleDitherBayerT+0x8d0>
d0054c7a:	e5e4      	b.n	d0054846 <fillTriangleDitherBayerT+0x572>
d0054c7c:	ee07 2a90 	vmov	s15, r2
d0054c80:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0054c84:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d0054c88:	4410      	add	r0, r2
d0054c8a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054c8e:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0054c92:	eee7 5aa3 	vfma.f32	s11, s15, s7
d0054c96:	eea7 4aa1 	vfma.f32	s8, s15, s3
d0054c9a:	e7ec      	b.n	d0054c76 <fillTriangleDitherBayerT+0x9a2>
d0054c9c:	9b03      	ldr	r3, [sp, #12]
d0054c9e:	f000 0403 	and.w	r4, r0, #3
d0054ca2:	2b00      	cmp	r3, #0
d0054ca4:	d03e      	beq.n	d0054d24 <fillTriangleDitherBayerT+0xa50>
d0054ca6:	2d00      	cmp	r5, #0
d0054ca8:	d1dc      	bne.n	d0054c64 <fillTriangleDitherBayerT+0x990>
d0054caa:	eeb0 0a47 	vmov.f32	s0, s14
d0054cae:	e7a5      	b.n	d0054bfc <fillTriangleDitherBayerT+0x928>
d0054cb0:	f000 0403 	and.w	r4, r0, #3
d0054cb4:	f1ac 0902 	sub.w	r9, ip, #2
d0054cb8:	2100      	movs	r1, #0
d0054cba:	9605      	str	r6, [sp, #20]
d0054cbc:	9506      	str	r5, [sp, #24]
d0054cbe:	9007      	str	r0, [sp, #28]
d0054cc0:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0054cc4:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0054cc8:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0054ccc:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0054cd0:	ee31 1a00 	vadd.f32	s2, s2, s0
d0054cd4:	f104 0a01 	add.w	sl, r4, #1
d0054cd8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0054cdc:	ee17 3a90 	vmov	r3, s15
d0054ce0:	b29b      	uxth	r3, r3
d0054ce2:	459b      	cmp	fp, r3
d0054ce4:	d912      	bls.n	d0054d0c <fillTriangleDitherBayerT+0xa38>
d0054ce6:	f81e b004 	ldrb.w	fp, [lr, r4]
d0054cea:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0054cee:	45c3      	cmp	fp, r8
d0054cf0:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0054cf4:	db0a      	blt.n	d0054d0c <fillTriangleDitherBayerT+0xa38>
d0054cf6:	9800      	ldr	r0, [sp, #0]
d0054cf8:	f8a9 3000 	strh.w	r3, [r9]
d0054cfc:	4605      	mov	r5, r0
d0054cfe:	9801      	ldr	r0, [sp, #4]
d0054d00:	4606      	mov	r6, r0
d0054d02:	9802      	ldr	r0, [sp, #8]
d0054d04:	4583      	cmp	fp, r0
d0054d06:	bfb8      	it	lt
d0054d08:	4635      	movlt	r5, r6
d0054d0a:	553d      	strb	r5, [r7, r4]
d0054d0c:	3101      	adds	r1, #1
d0054d0e:	f00a 0403 	and.w	r4, sl, #3
d0054d12:	428a      	cmp	r2, r1
d0054d14:	dcd4      	bgt.n	d0054cc0 <fillTriangleDitherBayerT+0x9ec>
d0054d16:	9e05      	ldr	r6, [sp, #20]
d0054d18:	9d06      	ldr	r5, [sp, #24]
d0054d1a:	9807      	ldr	r0, [sp, #28]
d0054d1c:	e795      	b.n	d0054c4a <fillTriangleDitherBayerT+0x976>
d0054d1e:	eeb0 0a47 	vmov.f32	s0, s14
d0054d22:	e766      	b.n	d0054bf2 <fillTriangleDitherBayerT+0x91e>
d0054d24:	2d00      	cmp	r5, #0
d0054d26:	db9d      	blt.n	d0054c64 <fillTriangleDitherBayerT+0x990>
d0054d28:	eeb0 0a47 	vmov.f32	s0, s14
d0054d2c:	e7c2      	b.n	d0054cb4 <fillTriangleDitherBayerT+0x9e0>
d0054d2e:	f000 0503 	and.w	r5, r0, #3
d0054d32:	e6c4      	b.n	d0054abe <fillTriangleDitherBayerT+0x7ea>
d0054d34:	eef0 6a46 	vmov.f32	s13, s12
d0054d38:	f000 0503 	and.w	r5, r0, #3
d0054d3c:	e6bf      	b.n	d0054abe <fillTriangleDitherBayerT+0x7ea>
d0054d3e:	2310      	movs	r3, #16
d0054d40:	9300      	str	r3, [sp, #0]
d0054d42:	2310      	movs	r3, #16
d0054d44:	9301      	str	r3, [sp, #4]
d0054d46:	f7ff bb35 	b.w	d00543b4 <fillTriangleDitherBayerT+0xe0>
d0054d4a:	eeb0 ba46 	vmov.f32	s22, s12
d0054d4e:	eef0 1a46 	vmov.f32	s3, s12
d0054d52:	e5f1      	b.n	d0054938 <fillTriangleDitherBayerT+0x664>
d0054d54:	eef0 1a47 	vmov.f32	s3, s14
d0054d58:	eef0 3a47 	vmov.f32	s7, s14
d0054d5c:	e70a      	b.n	d0054b74 <fillTriangleDitherBayerT+0x8a0>
d0054d5e:	bf00      	nop
d0054d60:	d00f9eb0 	.word	0xd00f9eb0
d0054d64:	d005ce68 	.word	0xd005ce68

d0054d68 <fillTriangleDitherBayer2Mode>:
d0054d68:	ed9f 7ad6 	vldr	s14, [pc, #856]	; d00550c4 <fillTriangleDitherBayer2Mode+0x35c>
d0054d6c:	eef4 0ac7 	vcmpe.f32	s1, s14
d0054d70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0054d74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054d78:	eeb4 1ac7 	vcmpe.f32	s2, s14
d0054d7c:	ed2d 8b10 	vpush	{d8-d15}
d0054d80:	b091      	sub	sp, #68	; 0x44
d0054d82:	9305      	str	r3, [sp, #20]
d0054d84:	bf94      	ite	ls
d0054d86:	2301      	movls	r3, #1
d0054d88:	2300      	movhi	r3, #0
d0054d8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054d8e:	9002      	str	r0, [sp, #8]
d0054d90:	9103      	str	r1, [sp, #12]
d0054d92:	bf98      	it	ls
d0054d94:	f043 0301 	orrls.w	r3, r3, #1
d0054d98:	9204      	str	r2, [sp, #16]
d0054d9a:	f8bd 00b0 	ldrh.w	r0, [sp, #176]	; 0xb0
d0054d9e:	f8bd 10b4 	ldrh.w	r1, [sp, #180]	; 0xb4
d0054da2:	f8bd 20b8 	ldrh.w	r2, [sp, #184]	; 0xb8
d0054da6:	f89d b0bc 	ldrb.w	fp, [sp, #188]	; 0xbc
d0054daa:	ed8d 0a00 	vstr	s0, [sp]
d0054dae:	edcd 1a01 	vstr	s3, [sp, #4]
d0054db2:	2b00      	cmp	r3, #0
d0054db4:	f040 8162 	bne.w	d005507c <fillTriangleDitherBayer2Mode+0x314>
d0054db8:	eeb4 0a47 	vcmp.f32	s0, s14
d0054dbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054dc0:	f240 815c 	bls.w	d005507c <fillTriangleDitherBayer2Mode+0x314>
d0054dc4:	eef7 4a00 	vmov.f32	s9, #112	; 0x3f800000  1.0
d0054dc8:	ee07 0a10 	vmov	s14, r0
d0054dcc:	eef0 6a41 	vmov.f32	s13, s2
d0054dd0:	ee05 1a90 	vmov	s11, r1
d0054dd4:	eef0 7a61 	vmov.f32	s15, s3
d0054dd8:	ee84 3a80 	vdiv.f32	s6, s9, s0
d0054ddc:	ee84 1aa6 	vdiv.f32	s2, s9, s13
d0054de0:	ee06 2a90 	vmov	s13, r2
d0054de4:	eec4 1aa0 	vdiv.f32	s3, s9, s1
d0054de8:	eef8 2a66 	vcvt.f32.u32	s5, s13
d0054dec:	eddd 6a03 	vldr	s13, [sp, #12]
d0054df0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0054df4:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d0054df8:	eddd 6a05 	vldr	s13, [sp, #20]
d0054dfc:	eef8 5a65 	vcvt.f32.u32	s11, s11
d0054e00:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d0054e04:	eddd 6a02 	vldr	s13, [sp, #8]
d0054e08:	ee27 7a03 	vmul.f32	s14, s14, s6
d0054e0c:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0054e10:	eddd 6a04 	vldr	s13, [sp, #16]
d0054e14:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0054e18:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0054e1c:	eddd 6a2a 	vldr	s13, [sp, #168]	; 0xa8
d0054e20:	ee62 2a81 	vmul.f32	s5, s5, s2
d0054e24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e28:	eeb8 2ae6 	vcvt.f32.s32	s4, s13
d0054e2c:	eddd 6a2b 	vldr	s13, [sp, #172]	; 0xac
d0054e30:	ee65 5aa1 	vmul.f32	s11, s11, s3
d0054e34:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0054e38:	f300 8125 	bgt.w	d0055086 <fillTriangleDitherBayer2Mode+0x31e>
d0054e3c:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0054e40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e44:	f300 8225 	bgt.w	d0055292 <fillTriangleDitherBayer2Mode+0x52a>
d0054e48:	eef4 3ae6 	vcmpe.f32	s7, s13
d0054e4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e50:	f300 823d 	bgt.w	d00552ce <fillTriangleDitherBayer2Mode+0x566>
d0054e54:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0054e58:	ee75 0a04 	vadd.f32	s1, s10, s8
d0054e5c:	ee36 4a84 	vadd.f32	s8, s13, s8
d0054e60:	eefd 0ae0 	vcvt.s32.f32	s1, s1
d0054e64:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0054e68:	ee10 3a90 	vmov	r3, s1
d0054e6c:	ee14 2a10 	vmov	r2, s8
d0054e70:	4293      	cmp	r3, r2
d0054e72:	f000 8103 	beq.w	d005507c <fillTriangleDitherBayer2Mode+0x314>
d0054e76:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0054e7a:	ed9f 4a92 	vldr	s8, [pc, #584]	; d00550c4 <fillTriangleDitherBayer2Mode+0x35c>
d0054e7e:	eef4 8ac4 	vcmpe.f32	s17, s8
d0054e82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e86:	f240 80f9 	bls.w	d005507c <fillTriangleDitherBayer2Mode+0x314>
d0054e8a:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0054e8e:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0054e92:	ee32 0a46 	vsub.f32	s0, s4, s12
d0054e96:	eec9 0aa8 	vdiv.f32	s1, s19, s17
d0054e9a:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0054e9e:	ee31 8a43 	vsub.f32	s16, s2, s6
d0054ea2:	ee72 8ac7 	vsub.f32	s17, s5, s14
d0054ea6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054eaa:	ee20 0a20 	vmul.f32	s0, s0, s1
d0054eae:	ee28 8a20 	vmul.f32	s16, s16, s1
d0054eb2:	ee68 8aa0 	vmul.f32	s17, s17, s1
d0054eb6:	f300 8115 	bgt.w	d00550e4 <fillTriangleDitherBayer2Mode+0x37c>
d0054eba:	eef1 9a04 	vmov.f32	s19, #20	; 0x40a00000  5.0
d0054ebe:	ed9f ba87 	vldr	s22, [pc, #540]	; d00550dc <fillTriangleDitherBayer2Mode+0x374>
d0054ec2:	eddf 0a87 	vldr	s1, [pc, #540]	; d00550e0 <fillTriangleDitherBayer2Mode+0x378>
d0054ec6:	ee76 fae3 	vsub.f32	s31, s13, s7
d0054eca:	fec7 7a8b 	vmaxnm.f32	s15, s15, s22
d0054ece:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d0054ed2:	ee67 7aa0 	vmul.f32	s15, s15, s1
d0054ed6:	eef4 fac4 	vcmpe.f32	s31, s8
d0054eda:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054ede:	ee17 3a90 	vmov	r3, s15
d0054ee2:	edcd 7a00 	vstr	s15, [sp]
d0054ee6:	2b10      	cmp	r3, #16
d0054ee8:	bfa8      	it	ge
d0054eea:	2310      	movge	r3, #16
d0054eec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ef0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0054ef4:	9302      	str	r3, [sp, #8]
d0054ef6:	f340 80c1 	ble.w	d005507c <fillTriangleDitherBayer2Mode+0x314>
d0054efa:	eef0 9a4b 	vmov.f32	s19, s22
d0054efe:	eef0 ba4b 	vmov.f32	s23, s22
d0054f02:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0054f06:	ed9f 4a6f 	vldr	s8, [pc, #444]	; d00550c4 <fillTriangleDitherBayer2Mode+0x35c>
d0054f0a:	ee32 2a64 	vsub.f32	s4, s4, s9
d0054f0e:	ee31 1a61 	vsub.f32	s2, s2, s3
d0054f12:	eec0 7aaf 	vdiv.f32	s15, s1, s31
d0054f16:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0054f1a:	ee72 2ae5 	vsub.f32	s5, s5, s11
d0054f1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f22:	ee22 2a27 	vmul.f32	s4, s4, s15
d0054f26:	ee22 faa7 	vmul.f32	s30, s5, s15
d0054f2a:	ed8d 2a08 	vstr	s4, [sp, #32]
d0054f2e:	ee21 2a27 	vmul.f32	s4, s2, s15
d0054f32:	ed8d 2a07 	vstr	s4, [sp, #28]
d0054f36:	f300 810d 	bgt.w	d0055154 <fillTriangleDitherBayer2Mode+0x3ec>
d0054f3a:	4a63      	ldr	r2, [pc, #396]	; (d00550c8 <fillTriangleDitherBayer2Mode+0x360>)
d0054f3c:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0054f40:	4b62      	ldr	r3, [pc, #392]	; (d00550cc <fillTriangleDitherBayer2Mode+0x364>)
d0054f42:	6812      	ldr	r2, [r2, #0]
d0054f44:	681b      	ldr	r3, [r3, #0]
d0054f46:	edcd 7a04 	vstr	s15, [sp, #16]
d0054f4a:	9203      	str	r2, [sp, #12]
d0054f4c:	9305      	str	r3, [sp, #20]
d0054f4e:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0054f52:	9a04      	ldr	r2, [sp, #16]
d0054f54:	9905      	ldr	r1, [sp, #20]
d0054f56:	4691      	mov	r9, r2
d0054f58:	9a03      	ldr	r2, [sp, #12]
d0054f5a:	ee17 3a90 	vmov	r3, s15
d0054f5e:	4591      	cmp	r9, r2
d0054f60:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0054f64:	bfb8      	it	lt
d0054f66:	4691      	movlt	r9, r2
d0054f68:	428b      	cmp	r3, r1
d0054f6a:	bfa8      	it	ge
d0054f6c:	460b      	movge	r3, r1
d0054f6e:	454b      	cmp	r3, r9
d0054f70:	f2c0 8084 	blt.w	d005507c <fillTriangleDitherBayer2Mode+0x314>
d0054f74:	ee07 9a90 	vmov	s15, r9
d0054f78:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054f7c:	3301      	adds	r3, #1
d0054f7e:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0054f82:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054f86:	4952      	ldr	r1, [pc, #328]	; (d00550d0 <fillTriangleDitherBayer2Mode+0x368>)
d0054f88:	0152      	lsls	r2, r2, #5
d0054f8a:	ed9d ba08 	vldr	s22, [sp, #32]
d0054f8e:	eddd aa07 	vldr	s21, [sp, #28]
d0054f92:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0054f96:	9301      	str	r3, [sp, #4]
d0054f98:	680b      	ldr	r3, [r1, #0]
d0054f9a:	ed9f 9a4a 	vldr	s18, [pc, #296]	; d00550c4 <fillTriangleDitherBayer2Mode+0x35c>
d0054f9e:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0054fa2:	eddf 0a4c 	vldr	s1, [pc, #304]	; d00550d4 <fillTriangleDitherBayer2Mode+0x36c>
d0054fa6:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0054faa:	ed9f 4a4c 	vldr	s8, [pc, #304]	; d00550dc <fillTriangleDitherBayer2Mode+0x374>
d0054fae:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d00550d8 <fillTriangleDitherBayer2Mode+0x370>
d0054fb2:	eea0 6a05 	vfma.f32	s12, s0, s10
d0054fb6:	9206      	str	r2, [sp, #24]
d0054fb8:	eea8 3a05 	vfma.f32	s6, s16, s10
d0054fbc:	9305      	str	r3, [sp, #20]
d0054fbe:	eea8 7a85 	vfma.f32	s14, s17, s10
d0054fc2:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0054fc6:	eeea 1aa3 	vfma.f32	s3, s21, s7
d0054fca:	eeef 5a23 	vfma.f32	s11, s30, s7
d0054fce:	e033      	b.n	d0055038 <fillTriangleDitherBayer2Mode+0x2d0>
d0054fd0:	eeb0 2a47 	vmov.f32	s4, s14
d0054fd4:	eef0 9a43 	vmov.f32	s19, s6
d0054fd8:	eef0 6a46 	vmov.f32	s13, s12
d0054fdc:	eef0 3a65 	vmov.f32	s7, s11
d0054fe0:	eeb0 5a61 	vmov.f32	s10, s3
d0054fe4:	eef0 2a64 	vmov.f32	s5, s9
d0054fe8:	fefa 7a66 	vrintp.f32	s15, s13
d0054fec:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054ff0:	f240 13df 	movw	r3, #479	; 0x1df
d0054ff4:	ee17 4a90 	vmov	r4, s15
d0054ff8:	fefa 7a62 	vrintp.f32	s15, s5
d0054ffc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0055000:	3c01      	subs	r4, #1
d0055002:	ee17 1a90 	vmov	r1, s15
d0055006:	429c      	cmp	r4, r3
d0055008:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d005500c:	bfa8      	it	ge
d005500e:	461c      	movge	r4, r3
d0055010:	42a1      	cmp	r1, r4
d0055012:	f340 818e 	ble.w	d0055332 <fillTriangleDitherBayer2Mode+0x5ca>
d0055016:	f109 0901 	add.w	r9, r9, #1
d005501a:	9b01      	ldr	r3, [sp, #4]
d005501c:	ee36 6a00 	vadd.f32	s12, s12, s0
d0055020:	4599      	cmp	r9, r3
d0055022:	ee33 3a08 	vadd.f32	s6, s6, s16
d0055026:	ee37 7a28 	vadd.f32	s14, s14, s17
d005502a:	ee74 4a8b 	vadd.f32	s9, s9, s22
d005502e:	ee71 1aaa 	vadd.f32	s3, s3, s21
d0055032:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0055036:	d021      	beq.n	d005507c <fillTriangleDitherBayer2Mode+0x314>
d0055038:	eeb4 6ae4 	vcmpe.f32	s12, s9
d005503c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055040:	dcc6      	bgt.n	d0054fd0 <fillTriangleDitherBayer2Mode+0x268>
d0055042:	eeb0 2a65 	vmov.f32	s4, s11
d0055046:	eef0 9a61 	vmov.f32	s19, s3
d005504a:	eef0 6a64 	vmov.f32	s13, s9
d005504e:	eef0 3a47 	vmov.f32	s7, s14
d0055052:	eeb0 5a43 	vmov.f32	s10, s6
d0055056:	eef0 2a46 	vmov.f32	s5, s12
d005505a:	e7c5      	b.n	d0054fe8 <fillTriangleDitherBayer2Mode+0x280>
d005505c:	eddd 6a0c 	vldr	s13, [sp, #48]	; 0x30
d0055060:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d0055064:	ed9d fa0e 	vldr	s30, [sp, #56]	; 0x38
d0055068:	eddd 1a0f 	vldr	s3, [sp, #60]	; 0x3c
d005506c:	eddf 7a15 	vldr	s15, [pc, #84]	; d00550c4 <fillTriangleDitherBayer2Mode+0x35c>
d0055070:	eef4 fae7 	vcmpe.f32	s31, s15
d0055074:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055078:	f73f af69 	bgt.w	d0054f4e <fillTriangleDitherBayer2Mode+0x1e6>
d005507c:	b011      	add	sp, #68	; 0x44
d005507e:	ecbd 8b10 	vpop	{d8-d15}
d0055082:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055086:	eef4 3ae6 	vcmpe.f32	s7, s13
d005508a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005508e:	f340 8137 	ble.w	d0055300 <fillTriangleDitherBayer2Mode+0x598>
d0055092:	eeb0 8a62 	vmov.f32	s16, s5
d0055096:	eeb0 0a41 	vmov.f32	s0, s2
d005509a:	eef0 0a66 	vmov.f32	s1, s13
d005509e:	eeb0 4a42 	vmov.f32	s8, s4
d00550a2:	eef0 2a47 	vmov.f32	s5, s14
d00550a6:	eeb0 1a43 	vmov.f32	s2, s6
d00550aa:	eef0 6a45 	vmov.f32	s13, s10
d00550ae:	eeb0 2a46 	vmov.f32	s4, s12
d00550b2:	eeb0 7a48 	vmov.f32	s14, s16
d00550b6:	eeb0 3a40 	vmov.f32	s6, s0
d00550ba:	eeb0 5a60 	vmov.f32	s10, s1
d00550be:	eeb0 6a44 	vmov.f32	s12, s8
d00550c2:	e6c7      	b.n	d0054e54 <fillTriangleDitherBayer2Mode+0xec>
d00550c4:	38d1b717 	.word	0x38d1b717
d00550c8:	d005fa3c 	.word	0xd005fa3c
d00550cc:	d005fa40 	.word	0xd005fa40
d00550d0:	d005fa44 	.word	0xd005fa44
d00550d4:	33d6bf95 	.word	0x33d6bf95
d00550d8:	477fff00 	.word	0x477fff00
d00550dc:	00000000 	.word	0x00000000
d00550e0:	404ccccd 	.word	0x404ccccd
d00550e4:	eec9 0a89 	vdiv.f32	s1, s19, s18
d00550e8:	ed1f aa04 	vldr	s20, [pc, #-16]	; d00550dc <fillTriangleDitherBayer2Mode+0x374>
d00550ec:	ed5f 9a04 	vldr	s19, [pc, #-16]	; d00550e0 <fillTriangleDitherBayer2Mode+0x378>
d00550f0:	fec7 7a8a 	vmaxnm.f32	s15, s15, s20
d00550f4:	eeb1 ba04 	vmov.f32	s22, #20	; 0x40a00000  5.0
d00550f8:	ee74 aac6 	vsub.f32	s21, s9, s12
d00550fc:	ee76 fae3 	vsub.f32	s31, s13, s7
d0055100:	fec7 7acb 	vminnm.f32	s15, s15, s22
d0055104:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0055108:	ee71 9ac3 	vsub.f32	s19, s3, s6
d005510c:	eef4 fac4 	vcmpe.f32	s31, s8
d0055110:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0055114:	ee35 bac7 	vsub.f32	s22, s11, s14
d0055118:	ee17 3a90 	vmov	r3, s15
d005511c:	edcd 7a00 	vstr	s15, [sp]
d0055120:	2b10      	cmp	r3, #16
d0055122:	ee6a 7aa0 	vmul.f32	s15, s21, s1
d0055126:	ee2b ba20 	vmul.f32	s22, s22, s1
d005512a:	bfa8      	it	ge
d005512c:	2310      	movge	r3, #16
d005512e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055132:	eef0 ba67 	vmov.f32	s23, s15
d0055136:	ee69 7aa0 	vmul.f32	s15, s19, s1
d005513a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d005513e:	9302      	str	r3, [sp, #8]
d0055140:	eef0 9a67 	vmov.f32	s19, s15
d0055144:	f73f aedd 	bgt.w	d0054f02 <fillTriangleDitherBayer2Mode+0x19a>
d0055148:	eeb0 fa4a 	vmov.f32	s30, s20
d005514c:	ed8d aa07 	vstr	s20, [sp, #28]
d0055150:	ed8d aa08 	vstr	s20, [sp, #32]
d0055154:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0055158:	4bd0      	ldr	r3, [pc, #832]	; (d005549c <fillTriangleDitherBayer2Mode+0x734>)
d005515a:	4ad1      	ldr	r2, [pc, #836]	; (d00554a0 <fillTriangleDitherBayer2Mode+0x738>)
d005515c:	6819      	ldr	r1, [r3, #0]
d005515e:	ee17 3a90 	vmov	r3, s15
d0055162:	edcd 7a04 	vstr	s15, [sp, #16]
d0055166:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d005516a:	6812      	ldr	r2, [r2, #0]
d005516c:	3b01      	subs	r3, #1
d005516e:	9105      	str	r1, [sp, #20]
d0055170:	9203      	str	r2, [sp, #12]
d0055172:	ee17 9a90 	vmov	r9, s15
d0055176:	428b      	cmp	r3, r1
d0055178:	bfa8      	it	ge
d005517a:	460b      	movge	r3, r1
d005517c:	4591      	cmp	r9, r2
d005517e:	bfb8      	it	lt
d0055180:	4691      	movlt	r9, r2
d0055182:	454b      	cmp	r3, r9
d0055184:	f6ff af72 	blt.w	d005506c <fillTriangleDitherBayer2Mode+0x304>
d0055188:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005518c:	3301      	adds	r3, #1
d005518e:	eeb0 aa46 	vmov.f32	s20, s12
d0055192:	49c4      	ldr	r1, [pc, #784]	; (d00554a4 <fillTriangleDitherBayer2Mode+0x73c>)
d0055194:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0055198:	9301      	str	r3, [sp, #4]
d005519a:	ee37 4ac5 	vsub.f32	s8, s15, s10
d005519e:	ee07 9a90 	vmov	s15, r9
d00551a2:	680b      	ldr	r3, [r1, #0]
d00551a4:	eef0 aa46 	vmov.f32	s21, s12
d00551a8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00551ac:	eddf dabe 	vldr	s27, [pc, #760]	; d00554a8 <fillTriangleDitherBayer2Mode+0x740>
d00551b0:	eeb0 da43 	vmov.f32	s26, s6
d00551b4:	930a      	str	r3, [sp, #40]	; 0x28
d00551b6:	eef0 ca47 	vmov.f32	s25, s14
d00551ba:	0153      	lsls	r3, r2, #5
d00551bc:	ee77 7a84 	vadd.f32	s15, s15, s8
d00551c0:	eddf 2aba 	vldr	s5, [pc, #744]	; d00554ac <fillTriangleDitherBayer2Mode+0x744>
d00551c4:	eeb0 ea6b 	vmov.f32	s28, s23
d00551c8:	eddf 0ab9 	vldr	s1, [pc, #740]	; d00554b0 <fillTriangleDitherBayer2Mode+0x748>
d00551cc:	eeb0 ca43 	vmov.f32	s24, s6
d00551d0:	930b      	str	r3, [sp, #44]	; 0x2c
d00551d2:	eea7 aaab 	vfma.f32	s20, s15, s23
d00551d6:	edcd 6a0c 	vstr	s13, [sp, #48]	; 0x30
d00551da:	eef0 ba47 	vmov.f32	s23, s14
d00551de:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d00551e2:	eee0 aa27 	vfma.f32	s21, s0, s15
d00551e6:	ed8d fa0e 	vstr	s30, [sp, #56]	; 0x38
d00551ea:	eea8 da27 	vfma.f32	s26, s16, s15
d00551ee:	edcd 1a0f 	vstr	s3, [sp, #60]	; 0x3c
d00551f2:	eee8 caa7 	vfma.f32	s25, s17, s15
d00551f6:	eea7 caa9 	vfma.f32	s24, s15, s19
d00551fa:	eee7 ba8b 	vfma.f32	s23, s15, s22
d00551fe:	eef0 ea69 	vmov.f32	s29, s19
d0055202:	e034      	b.n	d005526e <fillTriangleDitherBayer2Mode+0x506>
d0055204:	eef0 1a6c 	vmov.f32	s3, s25
d0055208:	eeb0 2a4d 	vmov.f32	s4, s26
d005520c:	eef0 7a6a 	vmov.f32	s15, s21
d0055210:	eeb0 6a6b 	vmov.f32	s12, s23
d0055214:	eef0 6a4c 	vmov.f32	s13, s24
d0055218:	eeb0 4a4a 	vmov.f32	s8, s20
d005521c:	feba 1a67 	vrintp.f32	s2, s15
d0055220:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0055224:	feba 9a44 	vrintp.f32	s18, s8
d0055228:	f240 13df 	movw	r3, #479	; 0x1df
d005522c:	ee11 4a10 	vmov	r4, s2
d0055230:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0055234:	3c01      	subs	r4, #1
d0055236:	ee11 1a10 	vmov	r1, s2
d005523a:	429c      	cmp	r4, r3
d005523c:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0055240:	bfa8      	it	ge
d0055242:	461c      	movge	r4, r3
d0055244:	428c      	cmp	r4, r1
d0055246:	f280 816e 	bge.w	d0055526 <fillTriangleDitherBayer2Mode+0x7be>
d005524a:	f109 0901 	add.w	r9, r9, #1
d005524e:	9b01      	ldr	r3, [sp, #4]
d0055250:	ee7a aa80 	vadd.f32	s21, s21, s0
d0055254:	4599      	cmp	r9, r3
d0055256:	ee3d da08 	vadd.f32	s26, s26, s16
d005525a:	ee7c caa8 	vadd.f32	s25, s25, s17
d005525e:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0055262:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0055266:	ee7b ba8b 	vadd.f32	s23, s23, s22
d005526a:	f43f aef7 	beq.w	d005505c <fillTriangleDitherBayer2Mode+0x2f4>
d005526e:	eef4 aaca 	vcmpe.f32	s21, s20
d0055272:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055276:	dcc5      	bgt.n	d0055204 <fillTriangleDitherBayer2Mode+0x49c>
d0055278:	eef0 1a6b 	vmov.f32	s3, s23
d005527c:	eeb0 2a4c 	vmov.f32	s4, s24
d0055280:	eef0 7a4a 	vmov.f32	s15, s20
d0055284:	eeb0 6a6c 	vmov.f32	s12, s25
d0055288:	eef0 6a4d 	vmov.f32	s13, s26
d005528c:	eeb0 4a6a 	vmov.f32	s8, s21
d0055290:	e7c4      	b.n	d005521c <fillTriangleDitherBayer2Mode+0x4b4>
d0055292:	eef0 0a45 	vmov.f32	s1, s10
d0055296:	eeb0 5a66 	vmov.f32	s10, s13
d005529a:	eeb0 8a47 	vmov.f32	s16, s14
d005529e:	eef0 6a60 	vmov.f32	s13, s1
d00552a2:	eeb0 0a43 	vmov.f32	s0, s6
d00552a6:	eeb0 4a46 	vmov.f32	s8, s12
d00552aa:	eef4 3ae6 	vcmpe.f32	s7, s13
d00552ae:	eeb0 7a62 	vmov.f32	s14, s5
d00552b2:	eeb0 3a41 	vmov.f32	s6, s2
d00552b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00552ba:	eeb0 6a42 	vmov.f32	s12, s4
d00552be:	eef0 2a48 	vmov.f32	s5, s16
d00552c2:	eeb0 1a40 	vmov.f32	s2, s0
d00552c6:	eeb0 2a44 	vmov.f32	s4, s8
d00552ca:	f77f adc3 	ble.w	d0054e54 <fillTriangleDitherBayer2Mode+0xec>
d00552ce:	eeb0 8a65 	vmov.f32	s16, s11
d00552d2:	eeb0 0a61 	vmov.f32	s0, s3
d00552d6:	eef0 0a63 	vmov.f32	s1, s7
d00552da:	eeb0 4a64 	vmov.f32	s8, s9
d00552de:	eef0 5a62 	vmov.f32	s11, s5
d00552e2:	eef0 1a41 	vmov.f32	s3, s2
d00552e6:	eef0 3a66 	vmov.f32	s7, s13
d00552ea:	eef0 4a42 	vmov.f32	s9, s4
d00552ee:	eef0 2a48 	vmov.f32	s5, s16
d00552f2:	eeb0 1a40 	vmov.f32	s2, s0
d00552f6:	eef0 6a60 	vmov.f32	s13, s1
d00552fa:	eeb0 2a44 	vmov.f32	s4, s8
d00552fe:	e5a9      	b.n	d0054e54 <fillTriangleDitherBayer2Mode+0xec>
d0055300:	eeb0 8a47 	vmov.f32	s16, s14
d0055304:	eeb0 0a43 	vmov.f32	s0, s6
d0055308:	eef0 0a45 	vmov.f32	s1, s10
d005530c:	eeb0 4a46 	vmov.f32	s8, s12
d0055310:	eeb0 7a65 	vmov.f32	s14, s11
d0055314:	eeb0 3a61 	vmov.f32	s6, s3
d0055318:	eeb0 5a63 	vmov.f32	s10, s7
d005531c:	eeb0 6a64 	vmov.f32	s12, s9
d0055320:	eef0 5a48 	vmov.f32	s11, s16
d0055324:	eef0 1a40 	vmov.f32	s3, s0
d0055328:	eef0 3a60 	vmov.f32	s7, s1
d005532c:	eef0 4a44 	vmov.f32	s9, s8
d0055330:	e58a      	b.n	d0054e48 <fillTriangleDitherBayer2Mode+0xe0>
d0055332:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0055336:	eef4 6ac9 	vcmpe.f32	s13, s18
d005533a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005533e:	f340 8216 	ble.w	d005576e <fillTriangleDitherBayer2Mode+0xa06>
d0055342:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0055346:	ee79 9ac5 	vsub.f32	s19, s19, s10
d005534a:	ee32 2a63 	vsub.f32	s4, s4, s7
d005534e:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0055352:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0055356:	ee77 2ae2 	vsub.f32	s5, s15, s5
d005535a:	ee07 1a90 	vmov	s15, r1
d005535e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055362:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0055366:	ee69 9a8a 	vmul.f32	s19, s19, s20
d005536a:	ee22 aa0a 	vmul.f32	s20, s4, s20
d005536e:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0055372:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0055376:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d005537a:	4b4e      	ldr	r3, [pc, #312]	; (d00554b4 <fillTriangleDitherBayer2Mode+0x74c>)
d005537c:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0055380:	9806      	ldr	r0, [sp, #24]
d0055382:	f009 0203 	and.w	r2, r9, #3
d0055386:	681d      	ldr	r5, [r3, #0]
d0055388:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d005538c:	484a      	ldr	r0, [pc, #296]	; (d00554b8 <fillTriangleDitherBayer2Mode+0x750>)
d005538e:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d0055392:	f8cd 900c 	str.w	r9, [sp, #12]
d0055396:	448c      	add	ip, r1
d0055398:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d005539c:	18ef      	adds	r7, r5, r3
d005539e:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d00553a2:	9a05      	ldr	r2, [sp, #20]
d00553a4:	4699      	mov	r9, r3
d00553a6:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d00553aa:	e010      	b.n	d00553ce <fillTriangleDitherBayer2Mode+0x666>
d00553ac:	ee07 3a90 	vmov	s15, r3
d00553b0:	4419      	add	r1, r3
d00553b2:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00553b6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00553ba:	428c      	cmp	r4, r1
d00553bc:	eb0c 0c43 	add.w	ip, ip, r3, lsl #1
d00553c0:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d00553c4:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00553c8:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00553cc:	db62      	blt.n	d0055494 <fillTriangleDitherBayer2Mode+0x72c>
d00553ce:	eba4 0e01 	sub.w	lr, r4, r1
d00553d2:	eeb4 5ae0 	vcmpe.f32	s10, s1
d00553d6:	f10e 0301 	add.w	r3, lr, #1
d00553da:	2b30      	cmp	r3, #48	; 0x30
d00553dc:	bfa8      	it	ge
d00553de:	2330      	movge	r3, #48	; 0x30
d00553e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00553e4:	d9e2      	bls.n	d00553ac <fillTriangleDitherBayer2Mode+0x644>
d00553e6:	f1be 0f00 	cmp.w	lr, #0
d00553ea:	eec3 7a85 	vdiv.f32	s15, s7, s10
d00553ee:	dd67      	ble.n	d00554c0 <fillTriangleDitherBayer2Mode+0x758>
d00553f0:	1e5a      	subs	r2, r3, #1
d00553f2:	ee06 2a90 	vmov	s13, r2
d00553f6:	eef0 2a45 	vmov.f32	s5, s10
d00553fa:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00553fe:	eee6 2aa9 	vfma.f32	s5, s13, s19
d0055402:	eef4 2ae0 	vcmpe.f32	s5, s1
d0055406:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005540a:	dd5a      	ble.n	d00554c2 <fillTriangleDitherBayer2Mode+0x75a>
d005540c:	eeb0 ca63 	vmov.f32	s24, s7
d0055410:	9a00      	ldr	r2, [sp, #0]
d0055412:	2a0f      	cmp	r2, #15
d0055414:	eea6 ca8a 	vfma.f32	s24, s13, s20
d0055418:	eecc ba22 	vdiv.f32	s23, s24, s5
d005541c:	ee7b bae7 	vsub.f32	s23, s23, s15
d0055420:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d0055424:	dd52      	ble.n	d00554cc <fillTriangleDitherBayer2Mode+0x764>
d0055426:	f1ac 0602 	sub.w	r6, ip, #2
d005542a:	2200      	movs	r2, #0
d005542c:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0055430:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0055434:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0055438:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d005543c:	3201      	adds	r2, #1
d005543e:	ee76 6a82 	vadd.f32	s13, s13, s4
d0055442:	0185      	lsls	r5, r0, #6
d0055444:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0055448:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d005544c:	ee16 0a90 	vmov	r0, s13
d0055450:	b280      	uxth	r0, r0
d0055452:	4580      	cmp	r8, r0
d0055454:	d903      	bls.n	d005545e <fillTriangleDitherBayer2Mode+0x6f6>
d0055456:	8030      	strh	r0, [r6, #0]
d0055458:	f04f 0010 	mov.w	r0, #16
d005545c:	5578      	strb	r0, [r7, r5]
d005545e:	4293      	cmp	r3, r2
d0055460:	dce4      	bgt.n	d005542c <fillTriangleDitherBayer2Mode+0x6c4>
d0055462:	f1be 0f00 	cmp.w	lr, #0
d0055466:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d005546a:	ea4f 0043 	mov.w	r0, r3, lsl #1
d005546e:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0055472:	bfbc      	itt	lt
d0055474:	2002      	movlt	r0, #2
d0055476:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d005547a:	4484      	add	ip, r0
d005547c:	4417      	add	r7, r2
d005547e:	ee07 3a90 	vmov	s15, r3
d0055482:	4419      	add	r1, r3
d0055484:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055488:	428c      	cmp	r4, r1
d005548a:	eea7 5aa9 	vfma.f32	s10, s15, s19
d005548e:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0055492:	da9c      	bge.n	d00553ce <fillTriangleDitherBayer2Mode+0x666>
d0055494:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0055498:	e5bd      	b.n	d0055016 <fillTriangleDitherBayer2Mode+0x2ae>
d005549a:	bf00      	nop
d005549c:	d005fa40 	.word	0xd005fa40
d00554a0:	d005fa3c 	.word	0xd005fa3c
d00554a4:	d005fa44 	.word	0xd005fa44
d00554a8:	33d6bf95 	.word	0x33d6bf95
d00554ac:	00000000 	.word	0x00000000
d00554b0:	477fff00 	.word	0x477fff00
d00554b4:	d00f9eb0 	.word	0xd00f9eb0
d00554b8:	d005ce68 	.word	0xd005ce68
d00554bc:	38d1b717 	.word	0x38d1b717
d00554c0:	d1dd      	bne.n	d005547e <fillTriangleDitherBayer2Mode+0x716>
d00554c2:	9a00      	ldr	r2, [sp, #0]
d00554c4:	eef0 2a44 	vmov.f32	s5, s8
d00554c8:	2a0f      	cmp	r2, #15
d00554ca:	dcac      	bgt.n	d0055426 <fillTriangleDitherBayer2Mode+0x6be>
d00554cc:	2a00      	cmp	r2, #0
d00554ce:	f340 8130 	ble.w	d0055732 <fillTriangleDitherBayer2Mode+0x9ca>
d00554d2:	9404      	str	r4, [sp, #16]
d00554d4:	f1ac 0802 	sub.w	r8, ip, #2
d00554d8:	2200      	movs	r2, #0
d00554da:	9c02      	ldr	r4, [sp, #8]
d00554dc:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00554e0:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d00554e4:	ee76 6a82 	vadd.f32	s13, s13, s4
d00554e8:	f838 af02 	ldrh.w	sl, [r8, #2]!
d00554ec:	188e      	adds	r6, r1, r2
d00554ee:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d00554f2:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00554f6:	3201      	adds	r2, #1
d00554f8:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00554fc:	f006 0603 	and.w	r6, r6, #3
d0055500:	01ad      	lsls	r5, r5, #6
d0055502:	ee16 0a90 	vmov	r0, s13
d0055506:	b280      	uxth	r0, r0
d0055508:	4582      	cmp	sl, r0
d005550a:	d908      	bls.n	d005551e <fillTriangleDitherBayer2Mode+0x7b6>
d005550c:	f8a8 0000 	strh.w	r0, [r8]
d0055510:	f819 0006 	ldrb.w	r0, [r9, r6]
d0055514:	42a0      	cmp	r0, r4
d0055516:	bfac      	ite	ge
d0055518:	4658      	movge	r0, fp
d005551a:	2010      	movlt	r0, #16
d005551c:	5578      	strb	r0, [r7, r5]
d005551e:	4293      	cmp	r3, r2
d0055520:	dcdc      	bgt.n	d00554dc <fillTriangleDitherBayer2Mode+0x774>
d0055522:	9c04      	ldr	r4, [sp, #16]
d0055524:	e79d      	b.n	d0055462 <fillTriangleDitherBayer2Mode+0x6fa>
d0055526:	ee77 7ac4 	vsub.f32	s15, s15, s8
d005552a:	ed1f 1a1c 	vldr	s2, [pc, #-112]	; d00554bc <fillTriangleDitherBayer2Mode+0x754>
d005552e:	eef4 7ac1 	vcmpe.f32	s15, s2
d0055532:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055536:	f340 811f 	ble.w	d0055778 <fillTriangleDitherBayer2Mode+0xa10>
d005553a:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d005553e:	ee32 2a66 	vsub.f32	s4, s4, s13
d0055542:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0055546:	ee89 1a27 	vdiv.f32	s2, s18, s15
d005554a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005554e:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0055552:	ee07 1a90 	vmov	s15, r1
d0055556:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005555a:	ee77 7a84 	vadd.f32	s15, s15, s8
d005555e:	ee22 2a01 	vmul.f32	s4, s4, s2
d0055562:	ee61 1a81 	vmul.f32	s3, s3, s2
d0055566:	eee7 6a82 	vfma.f32	s13, s15, s4
d005556a:	eea7 6aa1 	vfma.f32	s12, s15, s3
d005556e:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d0055572:	4b84      	ldr	r3, [pc, #528]	; (d0055784 <fillTriangleDitherBayer2Mode+0xa1c>)
d0055574:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0055578:	980b      	ldr	r0, [sp, #44]	; 0x2c
d005557a:	f009 0203 	and.w	r2, r9, #3
d005557e:	681d      	ldr	r5, [r3, #0]
d0055580:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0055584:	4880      	ldr	r0, [pc, #512]	; (d0055788 <fillTriangleDitherBayer2Mode+0xa20>)
d0055586:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d005558a:	f8cd 9018 	str.w	r9, [sp, #24]
d005558e:	448c      	add	ip, r1
d0055590:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0055594:	18ef      	adds	r7, r5, r3
d0055596:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d005559a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d005559c:	4699      	mov	r9, r3
d005559e:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d00555a2:	e010      	b.n	d00555c6 <fillTriangleDitherBayer2Mode+0x85e>
d00555a4:	ee07 2a90 	vmov	s15, r2
d00555a8:	4411      	add	r1, r2
d00555aa:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00555ae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00555b2:	428c      	cmp	r4, r1
d00555b4:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d00555b8:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d00555bc:	eee7 6a82 	vfma.f32	s13, s15, s4
d00555c0:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00555c4:	db62      	blt.n	d005568c <fillTriangleDitherBayer2Mode+0x924>
d00555c6:	eba4 0e01 	sub.w	lr, r4, r1
d00555ca:	eef4 6aed 	vcmpe.f32	s13, s27
d00555ce:	f10e 0201 	add.w	r2, lr, #1
d00555d2:	2a30      	cmp	r2, #48	; 0x30
d00555d4:	bfa8      	it	ge
d00555d6:	2230      	movge	r2, #48	; 0x30
d00555d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00555dc:	d9e2      	bls.n	d00555a4 <fillTriangleDitherBayer2Mode+0x83c>
d00555de:	f1be 0f00 	cmp.w	lr, #0
d00555e2:	eec6 7a26 	vdiv.f32	s15, s12, s13
d00555e6:	dd54      	ble.n	d0055692 <fillTriangleDitherBayer2Mode+0x92a>
d00555e8:	1e53      	subs	r3, r2, #1
d00555ea:	ee01 3a10 	vmov	s2, r3
d00555ee:	eeb0 9a66 	vmov.f32	s18, s13
d00555f2:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d00555f6:	eea1 9a02 	vfma.f32	s18, s2, s4
d00555fa:	eeb4 9aed 	vcmpe.f32	s18, s27
d00555fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055602:	dd47      	ble.n	d0055694 <fillTriangleDitherBayer2Mode+0x92c>
d0055604:	eeb0 fa46 	vmov.f32	s30, s12
d0055608:	9b00      	ldr	r3, [sp, #0]
d005560a:	2b0f      	cmp	r3, #15
d005560c:	eea1 fa21 	vfma.f32	s30, s2, s3
d0055610:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0055614:	ee79 9ae7 	vsub.f32	s19, s19, s15
d0055618:	ee89 9a81 	vdiv.f32	s18, s19, s2
d005561c:	dd3f      	ble.n	d005569e <fillTriangleDitherBayer2Mode+0x936>
d005561e:	f1ac 0602 	sub.w	r6, ip, #2
d0055622:	2000      	movs	r0, #0
d0055624:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0055628:	fe81 1a60 	vminnm.f32	s2, s2, s1
d005562c:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0055630:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0055634:	3001      	adds	r0, #1
d0055636:	ee31 1a04 	vadd.f32	s2, s2, s8
d005563a:	019d      	lsls	r5, r3, #6
d005563c:	ee77 7a89 	vadd.f32	s15, s15, s18
d0055640:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d0055644:	ee11 3a10 	vmov	r3, s2
d0055648:	b29b      	uxth	r3, r3
d005564a:	4598      	cmp	r8, r3
d005564c:	d903      	bls.n	d0055656 <fillTriangleDitherBayer2Mode+0x8ee>
d005564e:	8033      	strh	r3, [r6, #0]
d0055650:	f04f 0310 	mov.w	r3, #16
d0055654:	557b      	strb	r3, [r7, r5]
d0055656:	4282      	cmp	r2, r0
d0055658:	dce4      	bgt.n	d0055624 <fillTriangleDitherBayer2Mode+0x8bc>
d005565a:	f1be 0f00 	cmp.w	lr, #0
d005565e:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0055662:	ea4f 0042 	mov.w	r0, r2, lsl #1
d0055666:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005566a:	bfbc      	itt	lt
d005566c:	2002      	movlt	r0, #2
d005566e:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0055672:	4484      	add	ip, r0
d0055674:	441f      	add	r7, r3
d0055676:	ee07 2a90 	vmov	s15, r2
d005567a:	4411      	add	r1, r2
d005567c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055680:	428c      	cmp	r4, r1
d0055682:	eee7 6a82 	vfma.f32	s13, s15, s4
d0055686:	eea7 6aa1 	vfma.f32	s12, s15, s3
d005568a:	da9c      	bge.n	d00555c6 <fillTriangleDitherBayer2Mode+0x85e>
d005568c:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0055690:	e5db      	b.n	d005524a <fillTriangleDitherBayer2Mode+0x4e2>
d0055692:	d1f0      	bne.n	d0055676 <fillTriangleDitherBayer2Mode+0x90e>
d0055694:	9b00      	ldr	r3, [sp, #0]
d0055696:	eeb0 9a62 	vmov.f32	s18, s5
d005569a:	2b0f      	cmp	r3, #15
d005569c:	dcbf      	bgt.n	d005561e <fillTriangleDitherBayer2Mode+0x8b6>
d005569e:	2b00      	cmp	r3, #0
d00556a0:	dd29      	ble.n	d00556f6 <fillTriangleDitherBayer2Mode+0x98e>
d00556a2:	9409      	str	r4, [sp, #36]	; 0x24
d00556a4:	f1ac 0802 	sub.w	r8, ip, #2
d00556a8:	2000      	movs	r0, #0
d00556aa:	9c02      	ldr	r4, [sp, #8]
d00556ac:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d00556b0:	fe81 1a60 	vminnm.f32	s2, s2, s1
d00556b4:	ee31 1a04 	vadd.f32	s2, s2, s8
d00556b8:	f838 af02 	ldrh.w	sl, [r8, #2]!
d00556bc:	180e      	adds	r6, r1, r0
d00556be:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d00556c2:	ee77 7a89 	vadd.f32	s15, s15, s18
d00556c6:	3001      	adds	r0, #1
d00556c8:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d00556cc:	f006 0603 	and.w	r6, r6, #3
d00556d0:	01ad      	lsls	r5, r5, #6
d00556d2:	ee11 3a10 	vmov	r3, s2
d00556d6:	b29b      	uxth	r3, r3
d00556d8:	459a      	cmp	sl, r3
d00556da:	d908      	bls.n	d00556ee <fillTriangleDitherBayer2Mode+0x986>
d00556dc:	f8a8 3000 	strh.w	r3, [r8]
d00556e0:	f819 3006 	ldrb.w	r3, [r9, r6]
d00556e4:	42a3      	cmp	r3, r4
d00556e6:	bfac      	ite	ge
d00556e8:	465b      	movge	r3, fp
d00556ea:	2310      	movlt	r3, #16
d00556ec:	557b      	strb	r3, [r7, r5]
d00556ee:	4282      	cmp	r2, r0
d00556f0:	dcdc      	bgt.n	d00556ac <fillTriangleDitherBayer2Mode+0x944>
d00556f2:	9c09      	ldr	r4, [sp, #36]	; 0x24
d00556f4:	e7b1      	b.n	d005565a <fillTriangleDitherBayer2Mode+0x8f2>
d00556f6:	f1ac 0602 	sub.w	r6, ip, #2
d00556fa:	2000      	movs	r0, #0
d00556fc:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0055700:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0055704:	ee31 1a04 	vadd.f32	s2, s2, s8
d0055708:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d005570c:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0055710:	ee77 7a89 	vadd.f32	s15, s15, s18
d0055714:	019d      	lsls	r5, r3, #6
d0055716:	3001      	adds	r0, #1
d0055718:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d005571c:	ee11 3a10 	vmov	r3, s2
d0055720:	b29b      	uxth	r3, r3
d0055722:	4598      	cmp	r8, r3
d0055724:	d902      	bls.n	d005572c <fillTriangleDitherBayer2Mode+0x9c4>
d0055726:	8033      	strh	r3, [r6, #0]
d0055728:	f807 b005 	strb.w	fp, [r7, r5]
d005572c:	4282      	cmp	r2, r0
d005572e:	dce5      	bgt.n	d00556fc <fillTriangleDitherBayer2Mode+0x994>
d0055730:	e793      	b.n	d005565a <fillTriangleDitherBayer2Mode+0x8f2>
d0055732:	f1ac 0602 	sub.w	r6, ip, #2
d0055736:	2200      	movs	r2, #0
d0055738:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d005573c:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0055740:	ee76 6a82 	vadd.f32	s13, s13, s4
d0055744:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0055748:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d005574c:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0055750:	0185      	lsls	r5, r0, #6
d0055752:	3201      	adds	r2, #1
d0055754:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0055758:	ee16 0a90 	vmov	r0, s13
d005575c:	b280      	uxth	r0, r0
d005575e:	4580      	cmp	r8, r0
d0055760:	d902      	bls.n	d0055768 <fillTriangleDitherBayer2Mode+0xa00>
d0055762:	8030      	strh	r0, [r6, #0]
d0055764:	f807 b005 	strb.w	fp, [r7, r5]
d0055768:	4293      	cmp	r3, r2
d005576a:	dce5      	bgt.n	d0055738 <fillTriangleDitherBayer2Mode+0x9d0>
d005576c:	e679      	b.n	d0055462 <fillTriangleDitherBayer2Mode+0x6fa>
d005576e:	eeb0 aa44 	vmov.f32	s20, s8
d0055772:	eef0 9a44 	vmov.f32	s19, s8
d0055776:	e5fe      	b.n	d0055376 <fillTriangleDitherBayer2Mode+0x60e>
d0055778:	eef0 1a62 	vmov.f32	s3, s5
d005577c:	eeb0 2a62 	vmov.f32	s4, s5
d0055780:	e6f5      	b.n	d005556e <fillTriangleDitherBayer2Mode+0x806>
d0055782:	bf00      	nop
d0055784:	d00f9eb0 	.word	0xd00f9eb0
d0055788:	d005ce68 	.word	0xd005ce68

d005578c <vec3Add>:
d005578c:	ee30 0a21 	vadd.f32	s0, s0, s3
d0055790:	b08e      	sub	sp, #56	; 0x38
d0055792:	ee70 0a82 	vadd.f32	s1, s1, s4
d0055796:	ee31 1a22 	vadd.f32	s2, s2, s5
d005579a:	b00e      	add	sp, #56	; 0x38
d005579c:	4770      	bx	lr
d005579e:	bf00      	nop

d00557a0 <vec3Scale>:
d00557a0:	ee20 0a21 	vmul.f32	s0, s0, s3
d00557a4:	b08c      	sub	sp, #48	; 0x30
d00557a6:	ee61 0aa0 	vmul.f32	s1, s3, s1
d00557aa:	ee21 1a81 	vmul.f32	s2, s3, s2
d00557ae:	b00c      	add	sp, #48	; 0x30
d00557b0:	4770      	bx	lr
d00557b2:	bf00      	nop

d00557b4 <vec3Dot>:
d00557b4:	ee20 2a82 	vmul.f32	s4, s1, s4
d00557b8:	b086      	sub	sp, #24
d00557ba:	eea0 2a21 	vfma.f32	s4, s0, s3
d00557be:	eea1 2a22 	vfma.f32	s4, s2, s5
d00557c2:	eeb0 0a42 	vmov.f32	s0, s4
d00557c6:	b006      	add	sp, #24
d00557c8:	4770      	bx	lr
d00557ca:	bf00      	nop

d00557cc <vec3Cross>:
d00557cc:	eeb0 7a60 	vmov.f32	s14, s1
d00557d0:	b08e      	sub	sp, #56	; 0x38
d00557d2:	eef0 7a40 	vmov.f32	s15, s0
d00557d6:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d00557da:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d00557de:	ee22 0a41 	vnmul.f32	s0, s4, s2
d00557e2:	eee1 0a21 	vfma.f32	s1, s2, s3
d00557e6:	eee7 6a82 	vfma.f32	s13, s15, s4
d00557ea:	eea7 0a22 	vfma.f32	s0, s14, s5
d00557ee:	eeb0 1a66 	vmov.f32	s2, s13
d00557f2:	b00e      	add	sp, #56	; 0x38
d00557f4:	4770      	bx	lr
d00557f6:	bf00      	nop

d00557f8 <vec3Normalize>:
d00557f8:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00557fc:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0055888 <vec3Normalize+0x90>
d0055800:	b08c      	sub	sp, #48	; 0x30
d0055802:	eee0 7a00 	vfma.f32	s15, s0, s0
d0055806:	eee1 7a01 	vfma.f32	s15, s2, s2
d005580a:	eef4 7ac7 	vcmpe.f32	s15, s14
d005580e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055812:	d934      	bls.n	d005587e <vec3Normalize+0x86>
d0055814:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d005588c <vec3Normalize+0x94>
d0055818:	eef4 7a47 	vcmp.f32	s15, s14
d005581c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055820:	dd06      	ble.n	d0055830 <vec3Normalize+0x38>
d0055822:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0055890 <vec3Normalize+0x98>
d0055826:	eef4 7a47 	vcmp.f32	s15, s14
d005582a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005582e:	d418      	bmi.n	d0055862 <vec3Normalize+0x6a>
d0055830:	ee17 2a90 	vmov	r2, s15
d0055834:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0055838:	4b16      	ldr	r3, [pc, #88]	; (d0055894 <vec3Normalize+0x9c>)
d005583a:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d005583e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0055842:	ee67 7a86 	vmul.f32	s15, s15, s12
d0055846:	ee06 3a90 	vmov	s13, r3
d005584a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005584e:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0055852:	ee67 7a26 	vmul.f32	s15, s14, s13
d0055856:	ee27 0a80 	vmul.f32	s0, s15, s0
d005585a:	ee67 0aa0 	vmul.f32	s1, s15, s1
d005585e:	ee27 1a81 	vmul.f32	s2, s15, s2
d0055862:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0055866:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d005586a:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d005586e:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0055872:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0055876:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d005587a:	b00c      	add	sp, #48	; 0x30
d005587c:	4770      	bx	lr
d005587e:	2300      	movs	r3, #0
d0055880:	9309      	str	r3, [sp, #36]	; 0x24
d0055882:	930a      	str	r3, [sp, #40]	; 0x28
d0055884:	930b      	str	r3, [sp, #44]	; 0x2c
d0055886:	e7f2      	b.n	d005586e <vec3Normalize+0x76>
d0055888:	358637bd 	.word	0x358637bd
d005588c:	3f7fbe77 	.word	0x3f7fbe77
d0055890:	3f8020c5 	.word	0x3f8020c5
d0055894:	5f3759df 	.word	0x5f3759df

d0055898 <rotateAroundAxis>:
d0055898:	ee62 7a02 	vmul.f32	s15, s4, s4
d005589c:	ed9f 7a51 	vldr	s14, [pc, #324]	; d00559e4 <rotateAroundAxis+0x14c>
d00558a0:	b500      	push	{lr}
d00558a2:	eee1 7aa1 	vfma.f32	s15, s3, s3
d00558a6:	ed2d 8b0c 	vpush	{d8-d13}
d00558aa:	eef0 ca40 	vmov.f32	s25, s0
d00558ae:	b08f      	sub	sp, #60	; 0x3c
d00558b0:	eeb0 ca60 	vmov.f32	s24, s1
d00558b4:	eef0 ba41 	vmov.f32	s23, s2
d00558b8:	eee2 7aa2 	vfma.f32	s15, s5, s5
d00558bc:	eeb0 da43 	vmov.f32	s26, s6
d00558c0:	eef4 7ac7 	vcmpe.f32	s15, s14
d00558c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558c8:	d97c      	bls.n	d00559c4 <rotateAroundAxis+0x12c>
d00558ca:	ed9f 7a47 	vldr	s14, [pc, #284]	; d00559e8 <rotateAroundAxis+0x150>
d00558ce:	eef4 7a47 	vcmp.f32	s15, s14
d00558d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558d6:	dd55      	ble.n	d0055984 <rotateAroundAxis+0xec>
d00558d8:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00559ec <rotateAroundAxis+0x154>
d00558dc:	eef4 7a47 	vcmp.f32	s15, s14
d00558e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558e4:	d54e      	bpl.n	d0055984 <rotateAroundAxis+0xec>
d00558e6:	eef0 da42 	vmov.f32	s27, s4
d00558ea:	eeb0 9a61 	vmov.f32	s18, s3
d00558ee:	eeb0 8a62 	vmov.f32	s16, s5
d00558f2:	ee60 8a82 	vmul.f32	s17, s1, s4
d00558f6:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d00558fa:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d00558fe:	eeec 8a89 	vfma.f32	s17, s25, s18
d0055902:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d0055906:	eeeb 5aad 	vfma.f32	s11, s23, s27
d005590a:	eeac 6a88 	vfma.f32	s12, s25, s16
d005590e:	eeec 7a09 	vfma.f32	s15, s24, s18
d0055912:	eeeb 8a88 	vfma.f32	s17, s23, s16
d0055916:	eeb0 ba65 	vmov.f32	s22, s11
d005591a:	eeb0 aa46 	vmov.f32	s20, s12
d005591e:	eef0 aa67 	vmov.f32	s21, s15
d0055922:	eeb0 0a4d 	vmov.f32	s0, s26
d0055926:	f006 fb6b 	bl	d005c000 <cosf>
d005592a:	eef0 9a40 	vmov.f32	s19, s0
d005592e:	eeb0 0a4d 	vmov.f32	s0, s26
d0055932:	f006 fd49 	bl	d005c3c8 <sinf>
d0055936:	ee60 5a0b 	vmul.f32	s11, s0, s22
d005593a:	ee20 6a0a 	vmul.f32	s12, s0, s20
d005593e:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0055942:	eee9 5aac 	vfma.f32	s11, s19, s25
d0055946:	eea9 6a8c 	vfma.f32	s12, s19, s24
d005594a:	eee9 7aab 	vfma.f32	s15, s19, s23
d005594e:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0055952:	ee29 9a28 	vmul.f32	s18, s18, s17
d0055956:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d005595a:	ee76 9ae9 	vsub.f32	s19, s13, s19
d005595e:	ee28 8a28 	vmul.f32	s16, s16, s17
d0055962:	eeb0 0a65 	vmov.f32	s0, s11
d0055966:	eef0 0a46 	vmov.f32	s1, s12
d005596a:	eeb0 1a67 	vmov.f32	s2, s15
d005596e:	eea9 0a89 	vfma.f32	s0, s19, s18
d0055972:	eee9 0a87 	vfma.f32	s1, s19, s14
d0055976:	eea9 1a88 	vfma.f32	s2, s19, s16
d005597a:	b00f      	add	sp, #60	; 0x3c
d005597c:	ecbd 8b0c 	vpop	{d8-d13}
d0055980:	f85d fb04 	ldr.w	pc, [sp], #4
d0055984:	ee17 2a90 	vmov	r2, s15
d0055988:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005598c:	4b18      	ldr	r3, [pc, #96]	; (d00559f0 <rotateAroundAxis+0x158>)
d005598e:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0055992:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0055996:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005599a:	ee07 3a10 	vmov	s14, r3
d005599e:	ee67 7a87 	vmul.f32	s15, s15, s14
d00559a2:	eea7 8a67 	vfms.f32	s16, s14, s15
d00559a6:	ee27 8a08 	vmul.f32	s16, s14, s16
d00559aa:	ee62 da08 	vmul.f32	s27, s4, s16
d00559ae:	ee21 9a88 	vmul.f32	s18, s3, s16
d00559b2:	ee22 8a88 	vmul.f32	s16, s5, s16
d00559b6:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d00559ba:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d00559be:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d00559c2:	e79c      	b.n	d00558fe <rotateAroundAxis+0x66>
d00559c4:	eddf 8a0b 	vldr	s17, [pc, #44]	; d00559f4 <rotateAroundAxis+0x15c>
d00559c8:	eef0 aa68 	vmov.f32	s21, s17
d00559cc:	eeb0 aa68 	vmov.f32	s20, s17
d00559d0:	eeb0 ba68 	vmov.f32	s22, s17
d00559d4:	eeb0 8a68 	vmov.f32	s16, s17
d00559d8:	eef0 da68 	vmov.f32	s27, s17
d00559dc:	eeb0 9a68 	vmov.f32	s18, s17
d00559e0:	e79f      	b.n	d0055922 <rotateAroundAxis+0x8a>
d00559e2:	bf00      	nop
d00559e4:	358637bd 	.word	0x358637bd
d00559e8:	3f7fbe77 	.word	0x3f7fbe77
d00559ec:	3f8020c5 	.word	0x3f8020c5
d00559f0:	5f3759df 	.word	0x5f3759df
d00559f4:	00000000 	.word	0x00000000

d00559f8 <vec3>:
d00559f8:	b088      	sub	sp, #32
d00559fa:	b008      	add	sp, #32
d00559fc:	4770      	bx	lr
d00559fe:	bf00      	nop

d0055a00 <degrees>:
d0055a00:	eddf 7a02 	vldr	s15, [pc, #8]	; d0055a0c <degrees+0xc>
d0055a04:	ee20 0a27 	vmul.f32	s0, s0, s15
d0055a08:	4770      	bx	lr
d0055a0a:	bf00      	nop
d0055a0c:	3c8efa35 	.word	0x3c8efa35

d0055a10 <powfxt>:
d0055a10:	eef5 0a40 	vcmp.f32	s1, #0.0
d0055a14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a18:	d040      	beq.n	d0055a9c <powfxt+0x8c>
d0055a1a:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0055a1e:	eef0 7a40 	vmov.f32	s15, s0
d0055a22:	eef4 0a47 	vcmp.f32	s1, s14
d0055a26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a2a:	d034      	beq.n	d0055a96 <powfxt+0x86>
d0055a2c:	eeb4 0a47 	vcmp.f32	s0, s14
d0055a30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a34:	d02f      	beq.n	d0055a96 <powfxt+0x86>
d0055a36:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0055a3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a3e:	d030      	beq.n	d0055aa2 <powfxt+0x92>
d0055a40:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0055a44:	eef4 0a66 	vcmp.f32	s1, s13
d0055a48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a4c:	d042      	beq.n	d0055ad4 <powfxt+0xc4>
d0055a4e:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d0055a52:	eef4 0a66 	vcmp.f32	s1, s13
d0055a56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a5a:	d03e      	beq.n	d0055ada <powfxt+0xca>
d0055a5c:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0055a60:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0055a64:	eeb4 6a60 	vcmp.f32	s12, s1
d0055a68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a6c:	d022      	beq.n	d0055ab4 <powfxt+0xa4>
d0055a6e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0055a72:	b500      	push	{lr}
d0055a74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a78:	b083      	sub	sp, #12
d0055a7a:	edcd 0a01 	vstr	s1, [sp, #4]
d0055a7e:	d431      	bmi.n	d0055ae4 <powfxt+0xd4>
d0055a80:	f006 fc10 	bl	d005c2a4 <logf>
d0055a84:	eddd 0a01 	vldr	s1, [sp, #4]
d0055a88:	ee20 0a20 	vmul.f32	s0, s0, s1
d0055a8c:	b003      	add	sp, #12
d0055a8e:	f85d eb04 	ldr.w	lr, [sp], #4
d0055a92:	f006 bb91 	b.w	d005c1b8 <expf>
d0055a96:	eeb0 0a67 	vmov.f32	s0, s15
d0055a9a:	4770      	bx	lr
d0055a9c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0055aa0:	4770      	bx	lr
d0055aa2:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0055aa6:	ed9f 0a15 	vldr	s0, [pc, #84]	; d0055afc <powfxt+0xec>
d0055aaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055aae:	fe37 0a80 	vselgt.f32	s0, s15, s0
d0055ab2:	4770      	bx	lr
d0055ab4:	ee16 3a90 	vmov	r3, s13
d0055ab8:	2b00      	cmp	r3, #0
d0055aba:	db18      	blt.n	d0055aee <powfxt+0xde>
d0055abc:	d01b      	beq.n	d0055af6 <powfxt+0xe6>
d0055abe:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0055ac2:	07da      	lsls	r2, r3, #31
d0055ac4:	bf48      	it	mi
d0055ac6:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d0055aca:	085b      	lsrs	r3, r3, #1
d0055acc:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0055ad0:	d1f7      	bne.n	d0055ac2 <powfxt+0xb2>
d0055ad2:	4770      	bx	lr
d0055ad4:	eeb1 0ae7 	vsqrt.f32	s0, s15
d0055ad8:	4770      	bx	lr
d0055ada:	eef1 6ac0 	vsqrt.f32	s13, s0
d0055ade:	ee87 0a26 	vdiv.f32	s0, s14, s13
d0055ae2:	4770      	bx	lr
d0055ae4:	ed9f 0a06 	vldr	s0, [pc, #24]	; d0055b00 <powfxt+0xf0>
d0055ae8:	b003      	add	sp, #12
d0055aea:	f85d fb04 	ldr.w	pc, [sp], #4
d0055aee:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0055af2:	425b      	negs	r3, r3
d0055af4:	e7e3      	b.n	d0055abe <powfxt+0xae>
d0055af6:	eeb0 0a47 	vmov.f32	s0, s14
d0055afa:	4770      	bx	lr
d0055afc:	7f800000 	.word	0x7f800000
d0055b00:	7fc00000 	.word	0x7fc00000

d0055b04 <sb3dParticlesClear>:
d0055b04:	4b0f      	ldr	r3, [pc, #60]	; (d0055b44 <sb3dParticlesClear+0x40>)
d0055b06:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d0055b0a:	2100      	movs	r1, #0
d0055b0c:	2200      	movs	r2, #0
d0055b0e:	b430      	push	{r4, r5}
d0055b10:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0055b14:	2421      	movs	r4, #33	; 0x21
d0055b16:	7699      	strb	r1, [r3, #26]
d0055b18:	3320      	adds	r3, #32
d0055b1a:	f843 2c20 	str.w	r2, [r3, #-32]
d0055b1e:	f843 2c1c 	str.w	r2, [r3, #-28]
d0055b22:	f843 2c18 	str.w	r2, [r3, #-24]
d0055b26:	f843 0c14 	str.w	r0, [r3, #-20]
d0055b2a:	f843 2c10 	str.w	r2, [r3, #-16]
d0055b2e:	f843 0c0c 	str.w	r0, [r3, #-12]
d0055b32:	f803 4c08 	strb.w	r4, [r3, #-8]
d0055b36:	f803 1c07 	strb.w	r1, [r3, #-7]
d0055b3a:	42ab      	cmp	r3, r5
d0055b3c:	d1eb      	bne.n	d0055b16 <sb3dParticlesClear+0x12>
d0055b3e:	bc30      	pop	{r4, r5}
d0055b40:	4770      	bx	lr
d0055b42:	bf00      	nop
d0055b44:	d005fa60 	.word	0xd005fa60

d0055b48 <sb3dParticlesRender>:
d0055b48:	2800      	cmp	r0, #0
d0055b4a:	f000 82d5 	beq.w	d00560f8 <sb3dParticlesRender+0x5b0>
d0055b4e:	edd0 7a02 	vldr	s15, [r0, #8]
d0055b52:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055b56:	ed2d 8b10 	vpush	{d8-d15}
d0055b5a:	b0c7      	sub	sp, #284	; 0x11c
d0055b5c:	4605      	mov	r5, r0
d0055b5e:	ed90 ea00 	vldr	s28, [r0]
d0055b62:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d0055b66:	edd0 da01 	vldr	s27, [r0, #4]
d0055b6a:	edd0 ca06 	vldr	s25, [r0, #24]
d0055b6e:	ed90 ca07 	vldr	s24, [r0, #28]
d0055b72:	edd0 ba08 	vldr	s23, [r0, #32]
d0055b76:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d0055b7a:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d0055b7e:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d0055b82:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d0055b86:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d0055b8a:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d0055b8e:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d0055b92:	f002 f845 	bl	d0057c20 <lightsGet>
d0055b96:	4cae      	ldr	r4, [pc, #696]	; (d0055e50 <sb3dParticlesRender+0x308>)
d0055b98:	4682      	mov	sl, r0
d0055b9a:	f002 f845 	bl	d0057c28 <lightsGetCount>
d0055b9e:	4681      	mov	r9, r0
d0055ba0:	f504 5700 	add.w	r7, r4, #8192	; 0x2000
d0055ba4:	eb0a 1880 	add.w	r8, sl, r0, lsl #6
d0055ba8:	e115      	b.n	d0055dd6 <sb3dParticlesRender+0x28e>
d0055baa:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0055bae:	edd4 ea04 	vldr	s29, [r4, #16]
d0055bb2:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0055e64 <sb3dParticlesRender+0x31c>
d0055bb6:	fece ea85 	vmaxnm.f32	s29, s29, s10
d0055bba:	fece eac7 	vminnm.f32	s29, s29, s14
d0055bbe:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0055bc2:	f105 0610 	add.w	r6, r5, #16
d0055bc6:	eeb0 4a46 	vmov.f32	s8, s12
d0055bca:	2250      	movs	r2, #80	; 0x50
d0055bcc:	eef0 4a66 	vmov.f32	s9, s13
d0055bd0:	4631      	mov	r1, r6
d0055bd2:	ee67 7a87 	vmul.f32	s15, s15, s14
d0055bd6:	4668      	mov	r0, sp
d0055bd8:	eeb0 5a65 	vmov.f32	s10, s11
d0055bdc:	eeb0 7a65 	vmov.f32	s14, s11
d0055be0:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0055be4:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0055be8:	eeec 4a67 	vfms.f32	s9, s24, s15
d0055bec:	eeec 6a27 	vfma.f32	s13, s24, s15
d0055bf0:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0055bf4:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0055bf8:	eef0 3a46 	vmov.f32	s7, s12
d0055bfc:	eea9 6a67 	vfms.f32	s12, s18, s15
d0055c00:	eeb0 da44 	vmov.f32	s26, s8
d0055c04:	eef0 fa64 	vmov.f32	s31, s9
d0055c08:	eef0 5a66 	vmov.f32	s11, s13
d0055c0c:	eeb0 fa45 	vmov.f32	s30, s10
d0055c10:	eea9 da27 	vfma.f32	s26, s18, s15
d0055c14:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d0055c18:	eeb0 6a47 	vmov.f32	s12, s14
d0055c1c:	eee8 faa7 	vfma.f32	s31, s17, s15
d0055c20:	eea8 fa27 	vfma.f32	s30, s16, s15
d0055c24:	eea9 4a67 	vfms.f32	s8, s18, s15
d0055c28:	eee9 3a27 	vfma.f32	s7, s18, s15
d0055c2c:	eee8 4ae7 	vfms.f32	s9, s17, s15
d0055c30:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d0055c34:	eee8 5aa7 	vfma.f32	s11, s17, s15
d0055c38:	eee8 6ae7 	vfms.f32	s13, s17, s15
d0055c3c:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d0055c40:	eea8 5a67 	vfms.f32	s10, s16, s15
d0055c44:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d0055c48:	eea8 6a27 	vfma.f32	s12, s16, s15
d0055c4c:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d0055c50:	eea8 7a67 	vfms.f32	s14, s16, s15
d0055c54:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d0055c58:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d0055c5c:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d0055c60:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d0055c64:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d0055c68:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d0055c6c:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d0055c70:	f005 f880 	bl	d005ad74 <memcpy>
d0055c74:	eeb0 0a4d 	vmov.f32	s0, s26
d0055c78:	eef0 0a6f 	vmov.f32	s1, s31
d0055c7c:	eeb0 1a4f 	vmov.f32	s2, s30
d0055c80:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055c84:	f000 fd88 	bl	d0056798 <worldToCamera>
d0055c88:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0055c8c:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d0055c90:	4631      	mov	r1, r6
d0055c92:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d0055c96:	2250      	movs	r2, #80	; 0x50
d0055c98:	4668      	mov	r0, sp
d0055c9a:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d0055c9e:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d0055ca2:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0055ca6:	f005 f865 	bl	d005ad74 <memcpy>
d0055caa:	eeb0 0a4d 	vmov.f32	s0, s26
d0055cae:	eef0 0a6f 	vmov.f32	s1, s31
d0055cb2:	eeb0 1a4f 	vmov.f32	s2, s30
d0055cb6:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055cba:	f000 fd6d 	bl	d0056798 <worldToCamera>
d0055cbe:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d0055cc2:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d0055cc6:	4631      	mov	r1, r6
d0055cc8:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0055ccc:	2250      	movs	r2, #80	; 0x50
d0055cce:	4668      	mov	r0, sp
d0055cd0:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0055cd4:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0055cd8:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0055cdc:	f005 f84a 	bl	d005ad74 <memcpy>
d0055ce0:	eeb0 0a4d 	vmov.f32	s0, s26
d0055ce4:	eef0 0a6f 	vmov.f32	s1, s31
d0055ce8:	eeb0 1a4f 	vmov.f32	s2, s30
d0055cec:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055cf0:	f000 fd52 	bl	d0056798 <worldToCamera>
d0055cf4:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0055cf8:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0055cfc:	4631      	mov	r1, r6
d0055cfe:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0055d02:	2250      	movs	r2, #80	; 0x50
d0055d04:	4668      	mov	r0, sp
d0055d06:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d0055d0a:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0055d0e:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0055d12:	f005 f82f 	bl	d005ad74 <memcpy>
d0055d16:	eeb0 0a4d 	vmov.f32	s0, s26
d0055d1a:	eef0 0a6f 	vmov.f32	s1, s31
d0055d1e:	eeb0 1a4f 	vmov.f32	s2, s30
d0055d22:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055d26:	f000 fd37 	bl	d0056798 <worldToCamera>
d0055d2a:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d0055d2e:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0055d32:	eef4 7acb 	vcmpe.f32	s15, s22
d0055d36:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0055d3a:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0055d3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055d42:	d812      	bhi.n	d0055d6a <sb3dParticlesRender+0x222>
d0055d44:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0055d48:	eef4 7acb 	vcmpe.f32	s15, s22
d0055d4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055d50:	d80b      	bhi.n	d0055d6a <sb3dParticlesRender+0x222>
d0055d52:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d0055d56:	eef4 7acb 	vcmpe.f32	s15, s22
d0055d5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055d5e:	d804      	bhi.n	d0055d6a <sb3dParticlesRender+0x222>
d0055d60:	eeb4 1acb 	vcmpe.f32	s2, s22
d0055d64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055d68:	d931      	bls.n	d0055dce <sb3dParticlesRender+0x286>
d0055d6a:	4629      	mov	r1, r5
d0055d6c:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d0055d70:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0055d74:	a82e      	add	r0, sp, #184	; 0xb8
d0055d76:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d0055d7a:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d0055d7e:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0055d82:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0055d86:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0055d8a:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0055d8e:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0055d92:	f002 f80f 	bl	d0057db4 <clipTriangleToFrustum>
d0055d96:	2802      	cmp	r0, #2
d0055d98:	f300 8155 	bgt.w	d0056046 <sb3dParticlesRender+0x4fe>
d0055d9c:	a82e      	add	r0, sp, #184	; 0xb8
d0055d9e:	4629      	mov	r1, r5
d0055da0:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0055da4:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0055da8:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0055dac:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0055db0:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0055db4:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0055db8:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0055dbc:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0055dc0:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0055dc4:	f001 fff6 	bl	d0057db4 <clipTriangleToFrustum>
d0055dc8:	2802      	cmp	r0, #2
d0055dca:	f300 8105 	bgt.w	d0055fd8 <sb3dParticlesRender+0x490>
d0055dce:	3420      	adds	r4, #32
d0055dd0:	42a7      	cmp	r7, r4
d0055dd2:	f000 8133 	beq.w	d005603c <sb3dParticlesRender+0x4f4>
d0055dd6:	7ea3      	ldrb	r3, [r4, #26]
d0055dd8:	2b00      	cmp	r3, #0
d0055dda:	d0f8      	beq.n	d0055dce <sb3dParticlesRender+0x286>
d0055ddc:	edd4 7a03 	vldr	s15, [r4, #12]
d0055de0:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0055de4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055de8:	d9f1      	bls.n	d0055dce <sb3dParticlesRender+0x286>
d0055dea:	edd4 6a01 	vldr	s13, [r4, #4]
d0055dee:	eeb1 5a67 	vneg.f32	s10, s15
d0055df2:	ed94 6a00 	vldr	s12, [r4]
d0055df6:	ee36 7aed 	vsub.f32	s14, s13, s27
d0055dfa:	edd4 5a02 	vldr	s11, [r4, #8]
d0055dfe:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0055e02:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0055e06:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0055e0a:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0055e0e:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0055e12:	eea9 7aa4 	vfma.f32	s14, s19, s9
d0055e16:	eeb4 5ac7 	vcmpe.f32	s10, s14
d0055e1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055e1e:	dad6      	bge.n	d0055dce <sb3dParticlesRender+0x286>
d0055e20:	ed94 7a05 	vldr	s14, [r4, #20]
d0055e24:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0055e54 <sb3dParticlesRender+0x30c>
d0055e28:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0055e2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055e30:	f67f aebb 	bls.w	d0055baa <sb3dParticlesRender+0x62>
d0055e34:	f1b9 0f00 	cmp.w	r9, #0
d0055e38:	f340 809e 	ble.w	d0055f78 <sb3dParticlesRender+0x430>
d0055e3c:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0055e40:	4653      	mov	r3, sl
d0055e42:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0055e46:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0055e5c <sb3dParticlesRender+0x314>
d0055e4a:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0055e4e:	e07e      	b.n	d0055f4e <sb3dParticlesRender+0x406>
d0055e50:	d005fa60 	.word	0xd005fa60
d0055e54:	38d1b717 	.word	0x38d1b717
d0055e58:	358637bd 	.word	0x358637bd
d0055e5c:	3dcccccd 	.word	0x3dcccccd
d0055e60:	3b808081 	.word	0x3b808081
d0055e64:	00000000 	.word	0x00000000
d0055e68:	edd3 7a02 	vldr	s15, [r3, #8]
d0055e6c:	edd3 4a01 	vldr	s9, [r3, #4]
d0055e70:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0055e74:	ed93 7a03 	vldr	s14, [r3, #12]
d0055e78:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0055e7c:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0055e80:	ee37 7a65 	vsub.f32	s14, s14, s11
d0055e84:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0055e88:	ee62 2a02 	vmul.f32	s5, s4, s4
d0055e8c:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0055e90:	eea7 5a07 	vfma.f32	s10, s14, s14
d0055e94:	eeb4 5a62 	vcmp.f32	s10, s5
d0055e98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055e9c:	d554      	bpl.n	d0055f48 <sb3dParticlesRender+0x400>
d0055e9e:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0055e58 <sb3dParticlesRender+0x310>
d0055ea2:	eeb4 5a62 	vcmp.f32	s10, s5
d0055ea6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055eaa:	dd4d      	ble.n	d0055f48 <sb3dParticlesRender+0x400>
d0055eac:	eef1 0ac5 	vsqrt.f32	s1, s10
d0055eb0:	edd3 1a08 	vldr	s3, [r3, #32]
d0055eb4:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0055eb8:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0055ebc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055ec0:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0055ec4:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0055ec8:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0055ecc:	ee27 7a22 	vmul.f32	s14, s14, s5
d0055ed0:	f240 80e8 	bls.w	d00560a4 <sb3dParticlesRender+0x55c>
d0055ed4:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0055ed8:	eef4 1ac1 	vcmpe.f32	s3, s2
d0055edc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055ee0:	da32      	bge.n	d0055f48 <sb3dParticlesRender+0x400>
d0055ee2:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0055ee6:	ee25 5a22 	vmul.f32	s10, s10, s5
d0055eea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055eee:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0055ef2:	f200 80da 	bhi.w	d00560aa <sb3dParticlesRender+0x562>
d0055ef6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055efa:	d925      	bls.n	d0055f48 <sb3dParticlesRender+0x400>
d0055efc:	ee75 2a61 	vsub.f32	s5, s10, s3
d0055f00:	ee31 2a61 	vsub.f32	s4, s2, s3
d0055f04:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0055f08:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0055e64 <sb3dParticlesRender+0x31c>
d0055f0c:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0055f10:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0055f14:	ee34 5a45 	vsub.f32	s10, s8, s10
d0055f18:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0055f1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055f20:	d912      	bls.n	d0055f48 <sb3dParticlesRender+0x400>
d0055f22:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0055f26:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0055f2a:	eee7 7a29 	vfma.f32	s15, s14, s19
d0055f2e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0055f32:	eeb1 7a67 	vneg.f32	s14, s15
d0055f36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055f3a:	da05      	bge.n	d0055f48 <sb3dParticlesRender+0x400>
d0055f3c:	edd3 7a07 	vldr	s15, [r3, #28]
d0055f40:	ee25 5a27 	vmul.f32	s10, s10, s15
d0055f44:	eea5 0a07 	vfma.f32	s0, s10, s14
d0055f48:	3340      	adds	r3, #64	; 0x40
d0055f4a:	4598      	cmp	r8, r3
d0055f4c:	d016      	beq.n	d0055f7c <sb3dParticlesRender+0x434>
d0055f4e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0055f50:	2a00      	cmp	r2, #0
d0055f52:	d0f9      	beq.n	d0055f48 <sb3dParticlesRender+0x400>
d0055f54:	781a      	ldrb	r2, [r3, #0]
d0055f56:	2a00      	cmp	r2, #0
d0055f58:	d086      	beq.n	d0055e68 <sb3dParticlesRender+0x320>
d0055f5a:	edd3 4a04 	vldr	s9, [r3, #16]
d0055f5e:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0055f62:	edd3 7a05 	vldr	s15, [r3, #20]
d0055f66:	ed93 7a06 	vldr	s14, [r3, #24]
d0055f6a:	eef1 4a64 	vneg.f32	s9, s9
d0055f6e:	eef1 7a67 	vneg.f32	s15, s15
d0055f72:	eeb1 7a47 	vneg.f32	s14, s14
d0055f76:	e7d4      	b.n	d0055f22 <sb3dParticlesRender+0x3da>
d0055f78:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0055e5c <sb3dParticlesRender+0x314>
d0055f7c:	7e63      	ldrb	r3, [r4, #25]
d0055f7e:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0055f82:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0055e60 <sb3dParticlesRender+0x318>
d0055f86:	ee07 3a90 	vmov	s15, r3
d0055f8a:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0055e64 <sb3dParticlesRender+0x31c>
d0055f8e:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0055f92:	ee67 7a87 	vmul.f32	s15, s15, s14
d0055f96:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0055f9a:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0055f9e:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0055fa2:	f001 fe11 	bl	d0057bc8 <brightnessToShadeF>
d0055fa6:	edd4 ea05 	vldr	s29, [r4, #20]
d0055faa:	ed94 5a04 	vldr	s10, [r4, #16]
d0055fae:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0055fb2:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0055fb6:	edd4 7a03 	vldr	s15, [r4, #12]
d0055fba:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0055fbe:	ed94 6a00 	vldr	s12, [r4]
d0055fc2:	edd4 6a01 	vldr	s13, [r4, #4]
d0055fc6:	edd4 5a02 	vldr	s11, [r4, #8]
d0055fca:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0055fce:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0055fd2:	fece eac7 	vminnm.f32	s29, s29, s14
d0055fd6:	e5f2      	b.n	d0055bbe <sb3dParticlesRender+0x76>
d0055fd8:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0055fdc:	2601      	movs	r6, #1
d0055fde:	4631      	mov	r1, r6
d0055fe0:	3601      	adds	r6, #1
d0055fe2:	aa46      	add	r2, sp, #280	; 0x118
d0055fe4:	eef0 4a6e 	vmov.f32	s9, s29
d0055fe8:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0055fec:	2380      	movs	r3, #128	; 0x80
d0055fee:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0055ff2:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0055ff6:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0055ffa:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0055ffe:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0056002:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0056006:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d005600a:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d005600e:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0056012:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0056016:	7e62      	ldrb	r2, [r4, #25]
d0056018:	4628      	mov	r0, r5
d005601a:	edd1 3a01 	vldr	s7, [r1, #4]
d005601e:	ed91 4a02 	vldr	s8, [r1, #8]
d0056022:	ed9c 2a01 	vldr	s4, [ip, #4]
d0056026:	7e21      	ldrb	r1, [r4, #24]
d0056028:	eddc 2a02 	vldr	s5, [ip, #8]
d005602c:	f002 fb22 	bl	d0058674 <submitClippedTri>
d0056030:	455e      	cmp	r6, fp
d0056032:	d1d4      	bne.n	d0055fde <sb3dParticlesRender+0x496>
d0056034:	3420      	adds	r4, #32
d0056036:	42a7      	cmp	r7, r4
d0056038:	f47f aecd 	bne.w	d0055dd6 <sb3dParticlesRender+0x28e>
d005603c:	b047      	add	sp, #284	; 0x11c
d005603e:	ecbd 8b10 	vpop	{d8-d15}
d0056042:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056046:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d005604a:	2601      	movs	r6, #1
d005604c:	4631      	mov	r1, r6
d005604e:	3601      	adds	r6, #1
d0056050:	aa46      	add	r2, sp, #280	; 0x118
d0056052:	eef0 4a6e 	vmov.f32	s9, s29
d0056056:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d005605a:	2380      	movs	r3, #128	; 0x80
d005605c:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0056060:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0056064:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0056068:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d005606c:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0056070:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0056074:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0056078:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d005607c:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0056080:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0056084:	7e62      	ldrb	r2, [r4, #25]
d0056086:	4628      	mov	r0, r5
d0056088:	edd1 3a01 	vldr	s7, [r1, #4]
d005608c:	ed91 4a02 	vldr	s8, [r1, #8]
d0056090:	ed9c 2a01 	vldr	s4, [ip, #4]
d0056094:	7e21      	ldrb	r1, [r4, #24]
d0056096:	eddc 2a02 	vldr	s5, [ip, #8]
d005609a:	f002 faeb 	bl	d0058674 <submitClippedTri>
d005609e:	455e      	cmp	r6, fp
d00560a0:	d1d4      	bne.n	d005604c <sb3dParticlesRender+0x504>
d00560a2:	e67b      	b.n	d0055d9c <sb3dParticlesRender+0x254>
d00560a4:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d00560a8:	e73b      	b.n	d0055f22 <sb3dParticlesRender+0x3da>
d00560aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00560ae:	db12      	blt.n	d00560d6 <sb3dParticlesRender+0x58e>
d00560b0:	ee35 5a61 	vsub.f32	s10, s10, s3
d00560b4:	ee31 2a61 	vsub.f32	s4, s2, s3
d00560b8:	eec5 2a02 	vdiv.f32	s5, s10, s4
d00560bc:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0055e64 <sb3dParticlesRender+0x31c>
d00560c0:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d00560c4:	eef0 2a44 	vmov.f32	s5, s8
d00560c8:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00560cc:	eee5 2a63 	vfms.f32	s5, s10, s7
d00560d0:	eeb0 5a62 	vmov.f32	s10, s5
d00560d4:	e720      	b.n	d0055f18 <sb3dParticlesRender+0x3d0>
d00560d6:	ee75 2a41 	vsub.f32	s5, s10, s2
d00560da:	ee32 2a41 	vsub.f32	s4, s4, s2
d00560de:	ee82 5a82 	vdiv.f32	s10, s5, s4
d00560e2:	ed5f 2aa0 	vldr	s5, [pc, #-640]	; d0055e64 <sb3dParticlesRender+0x31c>
d00560e6:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d00560ea:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00560ee:	ee34 5a45 	vsub.f32	s10, s8, s10
d00560f2:	ee25 5a03 	vmul.f32	s10, s10, s6
d00560f6:	e70f      	b.n	d0055f18 <sb3dParticlesRender+0x3d0>
d00560f8:	4770      	bx	lr
d00560fa:	bf00      	nop

d00560fc <worldClear>:
d00560fc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
d0056100:	2100      	movs	r1, #0
d0056102:	4801      	ldr	r0, [pc, #4]	; (d0056108 <worldClear+0xc>)
d0056104:	f004 be44 	b.w	d005ad90 <memset>
d0056108:	d00f9ec0 	.word	0xd00f9ec0

d005610c <cameraNormalize>:
d005610c:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0056110:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0056114:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0056118:	b510      	push	{r4, lr}
d005611a:	4604      	mov	r4, r0
d005611c:	f7ff fb6c 	bl	d00557f8 <vec3Normalize>
d0056120:	eeb0 7a60 	vmov.f32	s14, s1
d0056124:	eef0 7a41 	vmov.f32	s15, s2
d0056128:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d005612c:	ed94 0a06 	vldr	s0, [r4, #24]
d0056130:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0056134:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0056138:	edd4 0a07 	vldr	s1, [r4, #28]
d005613c:	ed94 1a08 	vldr	s2, [r4, #32]
d0056140:	f7ff fb5a 	bl	d00557f8 <vec3Normalize>
d0056144:	eef0 1a40 	vmov.f32	s3, s0
d0056148:	eeb0 2a60 	vmov.f32	s4, s1
d005614c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0056150:	eef0 2a41 	vmov.f32	s5, s2
d0056154:	edc4 0a07 	vstr	s1, [r4, #28]
d0056158:	ed84 1a08 	vstr	s2, [r4, #32]
d005615c:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0056160:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0056164:	edc4 1a06 	vstr	s3, [r4, #24]
d0056168:	f7ff fb30 	bl	d00557cc <vec3Cross>
d005616c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0056170:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0056174:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056178:	f7ff fb3e 	bl	d00557f8 <vec3Normalize>
d005617c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0056180:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0056184:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0056188:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005618c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0056190:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056194:	f7ff fb1a 	bl	d00557cc <vec3Cross>
d0056198:	ed84 0a06 	vstr	s0, [r4, #24]
d005619c:	edc4 0a07 	vstr	s1, [r4, #28]
d00561a0:	ed84 1a08 	vstr	s2, [r4, #32]
d00561a4:	f7ff fb28 	bl	d00557f8 <vec3Normalize>
d00561a8:	ed84 0a06 	vstr	s0, [r4, #24]
d00561ac:	edc4 0a07 	vstr	s1, [r4, #28]
d00561b0:	ed84 1a08 	vstr	s2, [r4, #32]
d00561b4:	bd10      	pop	{r4, pc}
d00561b6:	bf00      	nop

d00561b8 <cameraCreate>:
d00561b8:	b510      	push	{r4, lr}
d00561ba:	4604      	mov	r4, r0
d00561bc:	2260      	movs	r2, #96	; 0x60
d00561be:	4902      	ldr	r1, [pc, #8]	; (d00561c8 <cameraCreate+0x10>)
d00561c0:	f004 fdd8 	bl	d005ad74 <memcpy>
d00561c4:	4620      	mov	r0, r4
d00561c6:	bd10      	pop	{r4, pc}
d00561c8:	d005ce80 	.word	0xd005ce80

d00561cc <cameraSetPosition>:
d00561cc:	b084      	sub	sp, #16
d00561ce:	ed8d 0a01 	vstr	s0, [sp, #4]
d00561d2:	edcd 0a02 	vstr	s1, [sp, #8]
d00561d6:	ed8d 1a03 	vstr	s2, [sp, #12]
d00561da:	b128      	cbz	r0, d00561e8 <cameraSetPosition+0x1c>
d00561dc:	aa04      	add	r2, sp, #16
d00561de:	4603      	mov	r3, r0
d00561e0:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00561e4:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00561e8:	b004      	add	sp, #16
d00561ea:	4770      	bx	lr

d00561ec <cameraRotate>:
d00561ec:	2800      	cmp	r0, #0
d00561ee:	f000 80a8 	beq.w	d0056342 <cameraRotate+0x156>
d00561f2:	b510      	push	{r4, lr}
d00561f4:	ed2d 8b04 	vpush	{d8-d9}
d00561f8:	edc0 0a04 	vstr	s1, [r0, #16]
d00561fc:	b084      	sub	sp, #16
d00561fe:	ed80 1a05 	vstr	s2, [r0, #20]
d0056202:	eef0 8a40 	vmov.f32	s17, s0
d0056206:	ed80 0a03 	vstr	s0, [r0, #12]
d005620a:	4604      	mov	r4, r0
d005620c:	eeb0 8a60 	vmov.f32	s16, s1
d0056210:	f005 fef6 	bl	d005c000 <cosf>
d0056214:	eeb0 1a40 	vmov.f32	s2, s0
d0056218:	eeb0 0a68 	vmov.f32	s0, s17
d005621c:	eef0 8a41 	vmov.f32	s17, s2
d0056220:	f006 f8d2 	bl	d005c3c8 <sinf>
d0056224:	eeb0 9a40 	vmov.f32	s18, s0
d0056228:	eeb0 0a48 	vmov.f32	s0, s16
d005622c:	f005 fee8 	bl	d005c000 <cosf>
d0056230:	eeb0 1a40 	vmov.f32	s2, s0
d0056234:	eeb0 0a48 	vmov.f32	s0, s16
d0056238:	eeb0 8a41 	vmov.f32	s16, s2
d005623c:	f006 f8c4 	bl	d005c3c8 <sinf>
d0056240:	eef0 0a40 	vmov.f32	s1, s0
d0056244:	ee28 1a88 	vmul.f32	s2, s17, s16
d0056248:	ee29 9a08 	vmul.f32	s18, s18, s16
d005624c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0056250:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0056254:	eeb0 0a49 	vmov.f32	s0, s18
d0056258:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d005625c:	f7ff facc 	bl	d00557f8 <vec3Normalize>
d0056260:	eef0 7a41 	vmov.f32	s15, s2
d0056264:	eeb0 7a60 	vmov.f32	s14, s1
d0056268:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d005639c <cameraRotate+0x1b0>
d005626c:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0056270:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0056274:	eeb0 0a41 	vmov.f32	s0, s2
d0056278:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d005627c:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0056280:	f7ff fbba 	bl	d00559f8 <vec3>
d0056284:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0056288:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d005628c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0056290:	f7ff fa9c 	bl	d00557cc <vec3Cross>
d0056294:	eef0 1a40 	vmov.f32	s3, s0
d0056298:	eeb0 2a60 	vmov.f32	s4, s1
d005629c:	ed84 0a06 	vstr	s0, [r4, #24]
d00562a0:	eef0 2a41 	vmov.f32	s5, s2
d00562a4:	edc4 0a07 	vstr	s1, [r4, #28]
d00562a8:	ed84 1a08 	vstr	s2, [r4, #32]
d00562ac:	f7ff fa82 	bl	d00557b4 <vec3Dot>
d00562b0:	eddf 7a3b 	vldr	s15, [pc, #236]	; d00563a0 <cameraRotate+0x1b4>
d00562b4:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00562b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00562bc:	d438      	bmi.n	d0056330 <cameraRotate+0x144>
d00562be:	ed94 0a06 	vldr	s0, [r4, #24]
d00562c2:	edd4 0a07 	vldr	s1, [r4, #28]
d00562c6:	ed94 1a08 	vldr	s2, [r4, #32]
d00562ca:	f7ff fa95 	bl	d00557f8 <vec3Normalize>
d00562ce:	eef0 1a40 	vmov.f32	s3, s0
d00562d2:	ed84 0a06 	vstr	s0, [r4, #24]
d00562d6:	eeb0 2a60 	vmov.f32	s4, s1
d00562da:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00562de:	eef0 2a41 	vmov.f32	s5, s2
d00562e2:	edc4 0a07 	vstr	s1, [r4, #28]
d00562e6:	ed84 1a08 	vstr	s2, [r4, #32]
d00562ea:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00562ee:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00562f2:	f7ff fa6b 	bl	d00557cc <vec3Cross>
d00562f6:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00562fa:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00562fe:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056302:	f7ff fa79 	bl	d00557f8 <vec3Normalize>
d0056306:	ed94 3a05 	vldr	s6, [r4, #20]
d005630a:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005630e:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0056312:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0056316:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005631a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005631e:	d111      	bne.n	d0056344 <cameraRotate+0x158>
d0056320:	4620      	mov	r0, r4
d0056322:	b004      	add	sp, #16
d0056324:	ecbd 8b04 	vpop	{d8-d9}
d0056328:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005632c:	f7ff beee 	b.w	d005610c <cameraNormalize>
d0056330:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d005639c <cameraRotate+0x1b0>
d0056334:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0056338:	eef0 0a41 	vmov.f32	s1, s2
d005633c:	f7ff fb5c 	bl	d00559f8 <vec3>
d0056340:	e7c5      	b.n	d00562ce <cameraRotate+0xe2>
d0056342:	4770      	bx	lr
d0056344:	ed94 0a06 	vldr	s0, [r4, #24]
d0056348:	edd4 0a07 	vldr	s1, [r4, #28]
d005634c:	ed94 1a08 	vldr	s2, [r4, #32]
d0056350:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0056354:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0056358:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005635c:	f7ff fa9c 	bl	d0055898 <rotateAroundAxis>
d0056360:	ed84 0a06 	vstr	s0, [r4, #24]
d0056364:	edc4 0a07 	vstr	s1, [r4, #28]
d0056368:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d005636c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0056370:	ed84 1a08 	vstr	s2, [r4, #32]
d0056374:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0056378:	ed94 3a05 	vldr	s6, [r4, #20]
d005637c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0056380:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0056384:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0056388:	f7ff fa86 	bl	d0055898 <rotateAroundAxis>
d005638c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0056390:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0056394:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056398:	e7c2      	b.n	d0056320 <cameraRotate+0x134>
d005639a:	bf00      	nop
d005639c:	00000000 	.word	0x00000000
d00563a0:	322bcc77 	.word	0x322bcc77

d00563a4 <cameraGetRotation>:
d00563a4:	b510      	push	{r4, lr}
d00563a6:	ed2d 8b04 	vpush	{d8-d9}
d00563aa:	b08e      	sub	sp, #56	; 0x38
d00563ac:	b100      	cbz	r0, d00563b0 <cameraGetRotation+0xc>
d00563ae:	b169      	cbz	r1, d00563cc <cameraGetRotation+0x28>
d00563b0:	2300      	movs	r3, #0
d00563b2:	930b      	str	r3, [sp, #44]	; 0x2c
d00563b4:	930c      	str	r3, [sp, #48]	; 0x30
d00563b6:	930d      	str	r3, [sp, #52]	; 0x34
d00563b8:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d00563bc:	eddd 0a0c 	vldr	s1, [sp, #48]	; 0x30
d00563c0:	ed9d 1a0d 	vldr	s2, [sp, #52]	; 0x34
d00563c4:	b00e      	add	sp, #56	; 0x38
d00563c6:	ecbd 8b04 	vpop	{d8-d9}
d00563ca:	bd10      	pop	{r4, pc}
d00563cc:	edd0 0a0e 	vldr	s1, [r0, #56]	; 0x38
d00563d0:	4604      	mov	r4, r0
d00563d2:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00563d6:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00563da:	eee0 7a00 	vfma.f32	s15, s0, s0
d00563de:	eeb1 8ae7 	vsqrt.f32	s16, s15
d00563e2:	f006 f891 	bl	d005c508 <atan2f>
d00563e6:	eef0 8a40 	vmov.f32	s17, s0
d00563ea:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00563ee:	eef0 0a48 	vmov.f32	s1, s16
d00563f2:	f006 f889 	bl	d005c508 <atan2f>
d00563f6:	ed9f 1a41 	vldr	s2, [pc, #260]	; d00564fc <cameraGetRotation+0x158>
d00563fa:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00563fe:	eeb0 8a40 	vmov.f32	s16, s0
d0056402:	eeb0 0a41 	vmov.f32	s0, s2
d0056406:	f7ff faf7 	bl	d00559f8 <vec3>
d005640a:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005640e:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0056412:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0056416:	f7ff f9d9 	bl	d00557cc <vec3Cross>
d005641a:	eef0 1a40 	vmov.f32	s3, s0
d005641e:	eeb0 2a60 	vmov.f32	s4, s1
d0056422:	ed8d 0a05 	vstr	s0, [sp, #20]
d0056426:	eef0 2a41 	vmov.f32	s5, s2
d005642a:	edcd 0a06 	vstr	s1, [sp, #24]
d005642e:	ed8d 1a07 	vstr	s2, [sp, #28]
d0056432:	f7ff f9bf 	bl	d00557b4 <vec3Dot>
d0056436:	eddf 7a32 	vldr	s15, [pc, #200]	; d0056500 <cameraGetRotation+0x15c>
d005643a:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005643e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056442:	d552      	bpl.n	d00564ea <cameraGetRotation+0x146>
d0056444:	ed9f 1a2d 	vldr	s2, [pc, #180]	; d00564fc <cameraGetRotation+0x158>
d0056448:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005644c:	eef0 0a41 	vmov.f32	s1, s2
d0056450:	f7ff fad2 	bl	d00559f8 <vec3>
d0056454:	eef0 1a40 	vmov.f32	s3, s0
d0056458:	ed8d 0a05 	vstr	s0, [sp, #20]
d005645c:	eeb0 2a60 	vmov.f32	s4, s1
d0056460:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0056464:	eef0 2a41 	vmov.f32	s5, s2
d0056468:	edcd 0a06 	vstr	s1, [sp, #24]
d005646c:	ed8d 1a07 	vstr	s2, [sp, #28]
d0056470:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0056474:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0056478:	f7ff f9a8 	bl	d00557cc <vec3Cross>
d005647c:	f7ff f9bc 	bl	d00557f8 <vec3Normalize>
d0056480:	eef0 6a40 	vmov.f32	s13, s0
d0056484:	eeb0 7a60 	vmov.f32	s14, s1
d0056488:	eddd 1a05 	vldr	s3, [sp, #20]
d005648c:	eef0 7a41 	vmov.f32	s15, s2
d0056490:	ed9d 2a06 	vldr	s4, [sp, #24]
d0056494:	eddd 2a07 	vldr	s5, [sp, #28]
d0056498:	edd4 0a07 	vldr	s1, [r4, #28]
d005649c:	ed94 1a08 	vldr	s2, [r4, #32]
d00564a0:	ed94 0a06 	vldr	s0, [r4, #24]
d00564a4:	edcd 6a08 	vstr	s13, [sp, #32]
d00564a8:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d00564ac:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d00564b0:	f7ff f980 	bl	d00557b4 <vec3Dot>
d00564b4:	eeb0 9a40 	vmov.f32	s18, s0
d00564b8:	eddd 1a08 	vldr	s3, [sp, #32]
d00564bc:	ed9d 2a09 	vldr	s4, [sp, #36]	; 0x24
d00564c0:	eddd 2a0a 	vldr	s5, [sp, #40]	; 0x28
d00564c4:	edd4 0a07 	vldr	s1, [r4, #28]
d00564c8:	ed94 1a08 	vldr	s2, [r4, #32]
d00564cc:	ed94 0a06 	vldr	s0, [r4, #24]
d00564d0:	f7ff f970 	bl	d00557b4 <vec3Dot>
d00564d4:	eef0 0a49 	vmov.f32	s1, s18
d00564d8:	f006 f816 	bl	d005c508 <atan2f>
d00564dc:	edcd 8a0b 	vstr	s17, [sp, #44]	; 0x2c
d00564e0:	ed8d 8a0c 	vstr	s16, [sp, #48]	; 0x30
d00564e4:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d00564e8:	e766      	b.n	d00563b8 <cameraGetRotation+0x14>
d00564ea:	ed9d 0a05 	vldr	s0, [sp, #20]
d00564ee:	eddd 0a06 	vldr	s1, [sp, #24]
d00564f2:	ed9d 1a07 	vldr	s2, [sp, #28]
d00564f6:	f7ff f97f 	bl	d00557f8 <vec3Normalize>
d00564fa:	e7ab      	b.n	d0056454 <cameraGetRotation+0xb0>
d00564fc:	00000000 	.word	0x00000000
d0056500:	322bcc77 	.word	0x322bcc77

d0056504 <cameraTurn>:
d0056504:	2800      	cmp	r0, #0
d0056506:	f000 8144 	beq.w	d0056792 <cameraTurn+0x28e>
d005650a:	b570      	push	{r4, r5, r6, lr}
d005650c:	4604      	mov	r4, r0
d005650e:	ed2d 8b04 	vpush	{d8-d9}
d0056512:	eef0 8a40 	vmov.f32	s17, s0
d0056516:	b08a      	sub	sp, #40	; 0x28
d0056518:	eeb0 9a60 	vmov.f32	s18, s1
d005651c:	eeb0 8a41 	vmov.f32	s16, s2
d0056520:	bb69      	cbnz	r1, d005657e <cameraTurn+0x7a>
d0056522:	f100 0318 	add.w	r3, r0, #24
d0056526:	ae01      	add	r6, sp, #4
d0056528:	f100 0524 	add.w	r5, r0, #36	; 0x24
d005652c:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0056530:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0056534:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0056538:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005653c:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0056540:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0056544:	ae04      	add	r6, sp, #16
d0056546:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d005654a:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005654e:	ab0a      	add	r3, sp, #40	; 0x28
d0056550:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0056554:	d14a      	bne.n	d00565ec <cameraTurn+0xe8>
d0056556:	eef5 8a40 	vcmp.f32	s17, #0.0
d005655a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005655e:	f040 808d 	bne.w	d005667c <cameraTurn+0x178>
d0056562:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056566:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005656a:	f040 80cf 	bne.w	d005670c <cameraTurn+0x208>
d005656e:	4620      	mov	r0, r4
d0056570:	b00a      	add	sp, #40	; 0x28
d0056572:	ecbd 8b04 	vpop	{d8-d9}
d0056576:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d005657a:	f7ff bdc7 	b.w	d005610c <cameraNormalize>
d005657e:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0056794 <cameraTurn+0x290>
d0056582:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0056586:	eef0 0a41 	vmov.f32	s1, s2
d005658a:	f7ff fa35 	bl	d00559f8 <vec3>
d005658e:	eef0 7a41 	vmov.f32	s15, s2
d0056592:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0056794 <cameraTurn+0x290>
d0056596:	eeb0 7a60 	vmov.f32	s14, s1
d005659a:	ed8d 0a01 	vstr	s0, [sp, #4]
d005659e:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00565a2:	edcd 7a03 	vstr	s15, [sp, #12]
d00565a6:	eeb0 0a41 	vmov.f32	s0, s2
d00565aa:	ed8d 7a02 	vstr	s14, [sp, #8]
d00565ae:	f7ff fa23 	bl	d00559f8 <vec3>
d00565b2:	eeb0 7a60 	vmov.f32	s14, s1
d00565b6:	eddf 0a77 	vldr	s1, [pc, #476]	; d0056794 <cameraTurn+0x290>
d00565ba:	eef0 7a41 	vmov.f32	s15, s2
d00565be:	ed8d 0a04 	vstr	s0, [sp, #16]
d00565c2:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d00565c6:	eeb0 0a60 	vmov.f32	s0, s1
d00565ca:	ed8d 7a05 	vstr	s14, [sp, #20]
d00565ce:	edcd 7a06 	vstr	s15, [sp, #24]
d00565d2:	f7ff fa11 	bl	d00559f8 <vec3>
d00565d6:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00565da:	edcd 0a08 	vstr	s1, [sp, #32]
d00565de:	ed8d 0a07 	vstr	s0, [sp, #28]
d00565e2:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d00565e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00565ea:	d0b4      	beq.n	d0056556 <cameraTurn+0x52>
d00565ec:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00565f0:	eeb0 3a49 	vmov.f32	s6, s18
d00565f4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00565f8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00565fc:	eddd 1a04 	vldr	s3, [sp, #16]
d0056600:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056604:	eddd 2a06 	vldr	s5, [sp, #24]
d0056608:	f7ff f946 	bl	d0055898 <rotateAroundAxis>
d005660c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0056610:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0056614:	eeb0 3a49 	vmov.f32	s6, s18
d0056618:	ed94 0a06 	vldr	s0, [r4, #24]
d005661c:	edd4 0a07 	vldr	s1, [r4, #28]
d0056620:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0056624:	ed94 1a08 	vldr	s2, [r4, #32]
d0056628:	eddd 1a04 	vldr	s3, [sp, #16]
d005662c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056630:	eddd 2a06 	vldr	s5, [sp, #24]
d0056634:	f7ff f930 	bl	d0055898 <rotateAroundAxis>
d0056638:	eeb0 3a49 	vmov.f32	s6, s18
d005663c:	ed84 0a06 	vstr	s0, [r4, #24]
d0056640:	edc4 0a07 	vstr	s1, [r4, #28]
d0056644:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0056648:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d005664c:	ed84 1a08 	vstr	s2, [r4, #32]
d0056650:	eddd 1a04 	vldr	s3, [sp, #16]
d0056654:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0056658:	ed9d 2a05 	vldr	s4, [sp, #20]
d005665c:	eddd 2a06 	vldr	s5, [sp, #24]
d0056660:	f7ff f91a 	bl	d0055898 <rotateAroundAxis>
d0056664:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056668:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005666c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0056670:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056674:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056678:	f43f af73 	beq.w	d0056562 <cameraTurn+0x5e>
d005667c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0056680:	eeb0 3a68 	vmov.f32	s6, s17
d0056684:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0056688:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d005668c:	eddd 1a01 	vldr	s3, [sp, #4]
d0056690:	ed9d 2a02 	vldr	s4, [sp, #8]
d0056694:	eddd 2a03 	vldr	s5, [sp, #12]
d0056698:	f7ff f8fe 	bl	d0055898 <rotateAroundAxis>
d005669c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00566a0:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00566a4:	eeb0 3a68 	vmov.f32	s6, s17
d00566a8:	ed94 0a06 	vldr	s0, [r4, #24]
d00566ac:	edd4 0a07 	vldr	s1, [r4, #28]
d00566b0:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00566b4:	ed94 1a08 	vldr	s2, [r4, #32]
d00566b8:	eddd 1a01 	vldr	s3, [sp, #4]
d00566bc:	ed9d 2a02 	vldr	s4, [sp, #8]
d00566c0:	eddd 2a03 	vldr	s5, [sp, #12]
d00566c4:	f7ff f8e8 	bl	d0055898 <rotateAroundAxis>
d00566c8:	eeb0 3a68 	vmov.f32	s6, s17
d00566cc:	ed84 0a06 	vstr	s0, [r4, #24]
d00566d0:	edc4 0a07 	vstr	s1, [r4, #28]
d00566d4:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00566d8:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00566dc:	ed84 1a08 	vstr	s2, [r4, #32]
d00566e0:	eddd 1a01 	vldr	s3, [sp, #4]
d00566e4:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00566e8:	ed9d 2a02 	vldr	s4, [sp, #8]
d00566ec:	eddd 2a03 	vldr	s5, [sp, #12]
d00566f0:	f7ff f8d2 	bl	d0055898 <rotateAroundAxis>
d00566f4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00566f8:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00566fc:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0056700:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056704:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056708:	f43f af31 	beq.w	d005656e <cameraTurn+0x6a>
d005670c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0056710:	eeb0 3a48 	vmov.f32	s6, s16
d0056714:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0056718:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d005671c:	eddd 1a07 	vldr	s3, [sp, #28]
d0056720:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056724:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056728:	f7ff f8b6 	bl	d0055898 <rotateAroundAxis>
d005672c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0056730:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0056734:	eeb0 3a48 	vmov.f32	s6, s16
d0056738:	ed94 0a06 	vldr	s0, [r4, #24]
d005673c:	edd4 0a07 	vldr	s1, [r4, #28]
d0056740:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0056744:	ed94 1a08 	vldr	s2, [r4, #32]
d0056748:	eddd 1a07 	vldr	s3, [sp, #28]
d005674c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056750:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056754:	f7ff f8a0 	bl	d0055898 <rotateAroundAxis>
d0056758:	ed84 0a06 	vstr	s0, [r4, #24]
d005675c:	edc4 0a07 	vstr	s1, [r4, #28]
d0056760:	eeb0 3a48 	vmov.f32	s6, s16
d0056764:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0056768:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d005676c:	ed84 1a08 	vstr	s2, [r4, #32]
d0056770:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0056774:	eddd 1a07 	vldr	s3, [sp, #28]
d0056778:	ed9d 2a08 	vldr	s4, [sp, #32]
d005677c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056780:	f7ff f88a 	bl	d0055898 <rotateAroundAxis>
d0056784:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0056788:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005678c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056790:	e6ed      	b.n	d005656e <cameraTurn+0x6a>
d0056792:	4770      	bx	lr
d0056794:	00000000 	.word	0x00000000

d0056798 <worldToCamera>:
d0056798:	b084      	sub	sp, #16
d005679a:	b510      	push	{r4, lr}
d005679c:	ed2d 8b02 	vpush	{d8}
d00567a0:	b0ac      	sub	sp, #176	; 0xb0
d00567a2:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d00567a6:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d00567aa:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00567ae:	f024 041f 	bic.w	r4, r4, #31
d00567b2:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d00567b6:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d00567ba:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d00567be:	2260      	movs	r2, #96	; 0x60
d00567c0:	4661      	mov	r1, ip
d00567c2:	4620      	mov	r0, r4
d00567c4:	f004 fad6 	bl	d005ad74 <memcpy>
d00567c8:	edd4 7a00 	vldr	s15, [r4]
d00567cc:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d00567d0:	ed94 7a01 	vldr	s14, [r4, #4]
d00567d4:	ee30 0a67 	vsub.f32	s0, s0, s15
d00567d8:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d00567dc:	edd4 7a02 	vldr	s15, [r4, #8]
d00567e0:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d00567e4:	ee70 0ac7 	vsub.f32	s1, s1, s14
d00567e8:	edd4 1a06 	vldr	s3, [r4, #24]
d00567ec:	ee31 1a67 	vsub.f32	s2, s2, s15
d00567f0:	ed94 2a07 	vldr	s4, [r4, #28]
d00567f4:	edd4 2a08 	vldr	s5, [r4, #32]
d00567f8:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d00567fc:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0056800:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0056804:	f7fe ffd6 	bl	d00557b4 <vec3Dot>
d0056808:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d005680c:	eef0 8a40 	vmov.f32	s17, s0
d0056810:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0056814:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0056818:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d005681c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0056820:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0056824:	f7fe ffc6 	bl	d00557b4 <vec3Dot>
d0056828:	eeb0 8a40 	vmov.f32	s16, s0
d005682c:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0056830:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0056834:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0056838:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d005683c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0056840:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0056844:	f7fe ffb6 	bl	d00557b4 <vec3Dot>
d0056848:	eef0 0a48 	vmov.f32	s1, s16
d005684c:	eeb0 1a40 	vmov.f32	s2, s0
d0056850:	eeb0 0a68 	vmov.f32	s0, s17
d0056854:	b02c      	add	sp, #176	; 0xb0
d0056856:	ecbd 8b02 	vpop	{d8}
d005685a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005685e:	b004      	add	sp, #16
d0056860:	4770      	bx	lr
d0056862:	bf00      	nop

d0056864 <cameraSetRange>:
d0056864:	b1d8      	cbz	r0, d005689e <cameraSetRange+0x3a>
d0056866:	eddf 7a11 	vldr	s15, [pc, #68]	; d00568ac <cameraSetRange+0x48>
d005686a:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d005686e:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0056872:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056876:	da13      	bge.n	d00568a0 <cameraSetRange+0x3c>
d0056878:	ee30 7ac0 	vsub.f32	s14, s1, s0
d005687c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0056880:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0056884:	4b0a      	ldr	r3, [pc, #40]	; (d00568b0 <cameraSetRange+0x4c>)
d0056886:	490b      	ldr	r1, [pc, #44]	; (d00568b4 <cameraSetRange+0x50>)
d0056888:	4a0b      	ldr	r2, [pc, #44]	; (d00568b8 <cameraSetRange+0x54>)
d005688a:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d005688e:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0056892:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0056896:	6483      	str	r3, [r0, #72]	; 0x48
d0056898:	64c3      	str	r3, [r0, #76]	; 0x4c
d005689a:	6501      	str	r1, [r0, #80]	; 0x50
d005689c:	6542      	str	r2, [r0, #84]	; 0x54
d005689e:	4770      	bx	lr
d00568a0:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00568a4:	ee70 0a27 	vadd.f32	s1, s0, s15
d00568a8:	e7ec      	b.n	d0056884 <cameraSetRange+0x20>
d00568aa:	bf00      	nop
d00568ac:	3a83126f 	.word	0x3a83126f
d00568b0:	43700000 	.word	0x43700000
d00568b4:	43200000 	.word	0x43200000
d00568b8:	3f2aaaab 	.word	0x3f2aaaab

d00568bc <cameraMove>:
d00568bc:	b3a8      	cbz	r0, d005692a <cameraMove+0x6e>
d00568be:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d00568c2:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d00568c6:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d00568ca:	ee20 7a87 	vmul.f32	s14, s1, s14
d00568ce:	edd0 5a06 	vldr	s11, [r0, #24]
d00568d2:	ee60 7aa7 	vmul.f32	s15, s1, s15
d00568d6:	ed90 6a08 	vldr	s12, [r0, #32]
d00568da:	ee60 0aa6 	vmul.f32	s1, s1, s13
d00568de:	edd0 6a07 	vldr	s13, [r0, #28]
d00568e2:	eea5 7a80 	vfma.f32	s14, s11, s0
d00568e6:	edd0 4a01 	vldr	s9, [r0, #4]
d00568ea:	eee6 7a80 	vfma.f32	s15, s13, s0
d00568ee:	ed90 5a02 	vldr	s10, [r0, #8]
d00568f2:	eee6 0a00 	vfma.f32	s1, s12, s0
d00568f6:	edd0 6a00 	vldr	s13, [r0]
d00568fa:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d00568fe:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0056902:	ee37 7a26 	vadd.f32	s14, s14, s13
d0056906:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d005690a:	ee77 7aa4 	vadd.f32	s15, s15, s9
d005690e:	ee70 0a85 	vadd.f32	s1, s1, s10
d0056912:	eea5 7a81 	vfma.f32	s14, s11, s2
d0056916:	eee6 7a01 	vfma.f32	s15, s12, s2
d005691a:	eee6 0a81 	vfma.f32	s1, s13, s2
d005691e:	ed80 7a00 	vstr	s14, [r0]
d0056922:	edc0 7a01 	vstr	s15, [r0, #4]
d0056926:	edc0 0a02 	vstr	s1, [r0, #8]
d005692a:	4770      	bx	lr

d005692c <normalizeEntity.part.0>:
d005692c:	edd0 0a08 	vldr	s1, [r0, #32]
d0056930:	ed90 1a09 	vldr	s2, [r0, #36]	; 0x24
d0056934:	ed90 0a07 	vldr	s0, [r0, #28]
d0056938:	b510      	push	{r4, lr}
d005693a:	4604      	mov	r4, r0
d005693c:	f7fe ff5c 	bl	d00557f8 <vec3Normalize>
d0056940:	eeb0 7a60 	vmov.f32	s14, s1
d0056944:	eef0 7a41 	vmov.f32	s15, s2
d0056948:	ed84 0a07 	vstr	s0, [r4, #28]
d005694c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056950:	ed84 7a08 	vstr	s14, [r4, #32]
d0056954:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056958:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005695c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056960:	f7fe ff4a 	bl	d00557f8 <vec3Normalize>
d0056964:	eef0 1a40 	vmov.f32	s3, s0
d0056968:	eeb0 2a60 	vmov.f32	s4, s1
d005696c:	ed94 0a07 	vldr	s0, [r4, #28]
d0056970:	eef0 2a41 	vmov.f32	s5, s2
d0056974:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0056978:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005697c:	edd4 0a08 	vldr	s1, [r4, #32]
d0056980:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056984:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0056988:	f7fe ff20 	bl	d00557cc <vec3Cross>
d005698c:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0056990:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0056994:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0056998:	f7fe ff2e 	bl	d00557f8 <vec3Normalize>
d005699c:	edd4 1a07 	vldr	s3, [r4, #28]
d00569a0:	ed94 2a08 	vldr	s4, [r4, #32]
d00569a4:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d00569a8:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00569ac:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00569b0:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00569b4:	f7fe ff0a 	bl	d00557cc <vec3Cross>
d00569b8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00569bc:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00569c0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00569c4:	f7fe ff18 	bl	d00557f8 <vec3Normalize>
d00569c8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00569cc:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00569d0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00569d4:	bd10      	pop	{r4, pc}
d00569d6:	bf00      	nop

d00569d8 <entityRotation.part.0>:
d00569d8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00569da:	4db5      	ldr	r5, [pc, #724]	; (d0056cb0 <entityRotation.part.0+0x2d8>)
d00569dc:	ed2d 8b04 	vpush	{d8-d9}
d00569e0:	eb05 14c0 	add.w	r4, r5, r0, lsl #7
d00569e4:	eeb0 9a40 	vmov.f32	s18, s0
d00569e8:	eef0 8a60 	vmov.f32	s17, s1
d00569ec:	b08b      	sub	sp, #44	; 0x2c
d00569ee:	eeb0 8a41 	vmov.f32	s16, s2
d00569f2:	2900      	cmp	r1, #0
d00569f4:	d040      	beq.n	d0056a78 <entityRotation.part.0+0xa0>
d00569f6:	eddf 1aaf 	vldr	s3, [pc, #700]	; d0056cb4 <entityRotation.part.0+0x2dc>
d00569fa:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d00569fe:	eeb4 0a61 	vcmp.f32	s0, s3
d0056a02:	edc4 1a0b 	vstr	s3, [r4, #44]	; 0x2c
d0056a06:	ed84 2a0a 	vstr	s4, [r4, #40]	; 0x28
d0056a0a:	ed84 2a0e 	vstr	s4, [r4, #56]	; 0x38
d0056a0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a12:	ed84 2a09 	vstr	s4, [r4, #36]	; 0x24
d0056a16:	ed8d 2a02 	vstr	s4, [sp, #8]
d0056a1a:	ed8d 2a04 	vstr	s4, [sp, #16]
d0056a1e:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0056a22:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0056a26:	edc4 1a0d 	vstr	s3, [r4, #52]	; 0x34
d0056a2a:	edc4 1a0f 	vstr	s3, [r4, #60]	; 0x3c
d0056a2e:	edc4 1a07 	vstr	s3, [r4, #28]
d0056a32:	edc4 1a08 	vstr	s3, [r4, #32]
d0056a36:	edcd 1a01 	vstr	s3, [sp, #4]
d0056a3a:	edcd 1a03 	vstr	s3, [sp, #12]
d0056a3e:	edcd 1a05 	vstr	s3, [sp, #20]
d0056a42:	edcd 1a06 	vstr	s3, [sp, #24]
d0056a46:	edcd 1a07 	vstr	s3, [sp, #28]
d0056a4a:	edcd 1a08 	vstr	s3, [sp, #32]
d0056a4e:	d17b      	bne.n	d0056b48 <entityRotation.part.0+0x170>
d0056a50:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056a54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a58:	f040 80c6 	bne.w	d0056be8 <entityRotation.part.0+0x210>
d0056a5c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056a60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a64:	f040 8114 	bne.w	d0056c90 <entityRotation.part.0+0x2b8>
d0056a68:	4620      	mov	r0, r4
d0056a6a:	b00b      	add	sp, #44	; 0x2c
d0056a6c:	ecbd 8b04 	vpop	{d8-d9}
d0056a70:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056a74:	f7ff bf5a 	b.w	d005692c <normalizeEntity.part.0>
d0056a78:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0056a7c:	01c6      	lsls	r6, r0, #7
d0056a7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a82:	f040 8119 	bne.w	d0056cb8 <entityRotation.part.0+0x2e0>
d0056a86:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056a8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a8e:	f040 816e 	bne.w	d0056d6e <entityRotation.part.0+0x396>
d0056a92:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056a96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a9a:	d0e5      	beq.n	d0056a68 <entityRotation.part.0+0x90>
d0056a9c:	19ab      	adds	r3, r5, r6
d0056a9e:	eeb0 3a48 	vmov.f32	s6, s16
d0056aa2:	ed94 0a07 	vldr	s0, [r4, #28]
d0056aa6:	331c      	adds	r3, #28
d0056aa8:	edd4 0a08 	vldr	s1, [r4, #32]
d0056aac:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056ab0:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0056ab4:	ab0a      	add	r3, sp, #40	; 0x28
d0056ab6:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0056aba:	eddd 1a07 	vldr	s3, [sp, #28]
d0056abe:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056ac2:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056ac6:	f7fe fee7 	bl	d0055898 <rotateAroundAxis>
d0056aca:	eef0 6a40 	vmov.f32	s13, s0
d0056ace:	eeb0 7a60 	vmov.f32	s14, s1
d0056ad2:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056ad6:	eef0 7a41 	vmov.f32	s15, s2
d0056ada:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056ade:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056ae2:	eeb0 3a48 	vmov.f32	s6, s16
d0056ae6:	eddd 1a07 	vldr	s3, [sp, #28]
d0056aea:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056aee:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056af2:	edc4 6a07 	vstr	s13, [r4, #28]
d0056af6:	ed84 7a08 	vstr	s14, [r4, #32]
d0056afa:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056afe:	f7fe fecb 	bl	d0055898 <rotateAroundAxis>
d0056b02:	eef0 6a40 	vmov.f32	s13, s0
d0056b06:	eeb0 7a60 	vmov.f32	s14, s1
d0056b0a:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0056b0e:	eef0 7a41 	vmov.f32	s15, s2
d0056b12:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0056b16:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0056b1a:	eeb0 3a48 	vmov.f32	s6, s16
d0056b1e:	eddd 1a07 	vldr	s3, [sp, #28]
d0056b22:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056b26:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056b2a:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0056b2e:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0056b32:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0056b36:	f7fe feaf 	bl	d0055898 <rotateAroundAxis>
d0056b3a:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0056b3e:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0056b42:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0056b46:	e78f      	b.n	d0056a68 <entityRotation.part.0+0x90>
d0056b48:	eeb0 1a42 	vmov.f32	s2, s4
d0056b4c:	eef0 0a61 	vmov.f32	s1, s3
d0056b50:	eeb0 3a40 	vmov.f32	s6, s0
d0056b54:	eeb0 0a61 	vmov.f32	s0, s3
d0056b58:	eef0 2a61 	vmov.f32	s5, s3
d0056b5c:	f7fe fe9c 	bl	d0055898 <rotateAroundAxis>
d0056b60:	eeb0 7a60 	vmov.f32	s14, s1
d0056b64:	eef0 6a40 	vmov.f32	s13, s0
d0056b68:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056b6c:	eef0 7a41 	vmov.f32	s15, s2
d0056b70:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056b74:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056b78:	eeb0 3a49 	vmov.f32	s6, s18
d0056b7c:	eddd 1a01 	vldr	s3, [sp, #4]
d0056b80:	ed9d 2a02 	vldr	s4, [sp, #8]
d0056b84:	eddd 2a03 	vldr	s5, [sp, #12]
d0056b88:	edc4 6a07 	vstr	s13, [r4, #28]
d0056b8c:	ed84 7a08 	vstr	s14, [r4, #32]
d0056b90:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056b94:	f7fe fe80 	bl	d0055898 <rotateAroundAxis>
d0056b98:	eef0 6a40 	vmov.f32	s13, s0
d0056b9c:	eeb0 7a60 	vmov.f32	s14, s1
d0056ba0:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0056ba4:	eef0 7a41 	vmov.f32	s15, s2
d0056ba8:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0056bac:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0056bb0:	eeb0 3a49 	vmov.f32	s6, s18
d0056bb4:	eddd 1a01 	vldr	s3, [sp, #4]
d0056bb8:	ed9d 2a02 	vldr	s4, [sp, #8]
d0056bbc:	eddd 2a03 	vldr	s5, [sp, #12]
d0056bc0:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0056bc4:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0056bc8:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0056bcc:	f7fe fe64 	bl	d0055898 <rotateAroundAxis>
d0056bd0:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056bd4:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0056bd8:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0056bdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056be0:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0056be4:	f43f af3a 	beq.w	d0056a5c <entityRotation.part.0+0x84>
d0056be8:	ed94 0a07 	vldr	s0, [r4, #28]
d0056bec:	eeb0 3a68 	vmov.f32	s6, s17
d0056bf0:	edd4 0a08 	vldr	s1, [r4, #32]
d0056bf4:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056bf8:	eddd 1a04 	vldr	s3, [sp, #16]
d0056bfc:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056c00:	eddd 2a06 	vldr	s5, [sp, #24]
d0056c04:	f7fe fe48 	bl	d0055898 <rotateAroundAxis>
d0056c08:	eef0 6a40 	vmov.f32	s13, s0
d0056c0c:	eeb0 7a60 	vmov.f32	s14, s1
d0056c10:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056c14:	eef0 7a41 	vmov.f32	s15, s2
d0056c18:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056c1c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056c20:	eeb0 3a68 	vmov.f32	s6, s17
d0056c24:	eddd 1a04 	vldr	s3, [sp, #16]
d0056c28:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056c2c:	eddd 2a06 	vldr	s5, [sp, #24]
d0056c30:	edc4 6a07 	vstr	s13, [r4, #28]
d0056c34:	ed84 7a08 	vstr	s14, [r4, #32]
d0056c38:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056c3c:	f7fe fe2c 	bl	d0055898 <rotateAroundAxis>
d0056c40:	eef0 6a40 	vmov.f32	s13, s0
d0056c44:	eeb0 7a60 	vmov.f32	s14, s1
d0056c48:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0056c4c:	eef0 7a41 	vmov.f32	s15, s2
d0056c50:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0056c54:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0056c58:	eeb0 3a68 	vmov.f32	s6, s17
d0056c5c:	eddd 1a04 	vldr	s3, [sp, #16]
d0056c60:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056c64:	eddd 2a06 	vldr	s5, [sp, #24]
d0056c68:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0056c6c:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0056c70:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0056c74:	f7fe fe10 	bl	d0055898 <rotateAroundAxis>
d0056c78:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056c7c:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0056c80:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0056c84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056c88:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0056c8c:	f43f aeec 	beq.w	d0056a68 <entityRotation.part.0+0x90>
d0056c90:	eeb0 3a48 	vmov.f32	s6, s16
d0056c94:	eddd 1a07 	vldr	s3, [sp, #28]
d0056c98:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056c9c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056ca0:	ed94 0a07 	vldr	s0, [r4, #28]
d0056ca4:	edd4 0a08 	vldr	s1, [r4, #32]
d0056ca8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056cac:	e70b      	b.n	d0056ac6 <entityRotation.part.0+0xee>
d0056cae:	bf00      	nop
d0056cb0:	d00f9ec0 	.word	0xd00f9ec0
d0056cb4:	00000000 	.word	0x00000000
d0056cb8:	f104 0334 	add.w	r3, r4, #52	; 0x34
d0056cbc:	af01      	add	r7, sp, #4
d0056cbe:	eeb0 3a40 	vmov.f32	s6, s0
d0056cc2:	edd4 0a08 	vldr	s1, [r4, #32]
d0056cc6:	ed94 0a07 	vldr	s0, [r4, #28]
d0056cca:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056cce:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0056cd2:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0056cd6:	eddd 1a01 	vldr	s3, [sp, #4]
d0056cda:	ed9d 2a02 	vldr	s4, [sp, #8]
d0056cde:	eddd 2a03 	vldr	s5, [sp, #12]
d0056ce2:	f7fe fdd9 	bl	d0055898 <rotateAroundAxis>
d0056ce6:	eef0 6a40 	vmov.f32	s13, s0
d0056cea:	eeb0 7a60 	vmov.f32	s14, s1
d0056cee:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056cf2:	eef0 7a41 	vmov.f32	s15, s2
d0056cf6:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056cfa:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056cfe:	eeb0 3a49 	vmov.f32	s6, s18
d0056d02:	eddd 1a01 	vldr	s3, [sp, #4]
d0056d06:	ed9d 2a02 	vldr	s4, [sp, #8]
d0056d0a:	eddd 2a03 	vldr	s5, [sp, #12]
d0056d0e:	edc4 6a07 	vstr	s13, [r4, #28]
d0056d12:	ed84 7a08 	vstr	s14, [r4, #32]
d0056d16:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056d1a:	f7fe fdbd 	bl	d0055898 <rotateAroundAxis>
d0056d1e:	eef0 6a40 	vmov.f32	s13, s0
d0056d22:	eeb0 7a60 	vmov.f32	s14, s1
d0056d26:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0056d2a:	eef0 7a41 	vmov.f32	s15, s2
d0056d2e:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0056d32:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0056d36:	eeb0 3a49 	vmov.f32	s6, s18
d0056d3a:	eddd 1a01 	vldr	s3, [sp, #4]
d0056d3e:	ed9d 2a02 	vldr	s4, [sp, #8]
d0056d42:	eddd 2a03 	vldr	s5, [sp, #12]
d0056d46:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0056d4a:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0056d4e:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0056d52:	f7fe fda1 	bl	d0055898 <rotateAroundAxis>
d0056d56:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056d5a:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0056d5e:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0056d62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056d66:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0056d6a:	f43f ae92 	beq.w	d0056a92 <entityRotation.part.0+0xba>
d0056d6e:	19ab      	adds	r3, r5, r6
d0056d70:	af04      	add	r7, sp, #16
d0056d72:	ed94 0a07 	vldr	s0, [r4, #28]
d0056d76:	eeb0 3a68 	vmov.f32	s6, s17
d0056d7a:	3328      	adds	r3, #40	; 0x28
d0056d7c:	edd4 0a08 	vldr	s1, [r4, #32]
d0056d80:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056d84:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0056d88:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0056d8c:	eddd 1a04 	vldr	s3, [sp, #16]
d0056d90:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056d94:	eddd 2a06 	vldr	s5, [sp, #24]
d0056d98:	f7fe fd7e 	bl	d0055898 <rotateAroundAxis>
d0056d9c:	eef0 6a40 	vmov.f32	s13, s0
d0056da0:	eeb0 7a60 	vmov.f32	s14, s1
d0056da4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056da8:	eef0 7a41 	vmov.f32	s15, s2
d0056dac:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056db0:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056db4:	eeb0 3a68 	vmov.f32	s6, s17
d0056db8:	eddd 1a04 	vldr	s3, [sp, #16]
d0056dbc:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056dc0:	eddd 2a06 	vldr	s5, [sp, #24]
d0056dc4:	edc4 6a07 	vstr	s13, [r4, #28]
d0056dc8:	ed84 7a08 	vstr	s14, [r4, #32]
d0056dcc:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056dd0:	f7fe fd62 	bl	d0055898 <rotateAroundAxis>
d0056dd4:	eef0 6a40 	vmov.f32	s13, s0
d0056dd8:	eeb0 7a60 	vmov.f32	s14, s1
d0056ddc:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0056de0:	eef0 7a41 	vmov.f32	s15, s2
d0056de4:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0056de8:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0056dec:	eeb0 3a68 	vmov.f32	s6, s17
d0056df0:	eddd 1a04 	vldr	s3, [sp, #16]
d0056df4:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056df8:	eddd 2a06 	vldr	s5, [sp, #24]
d0056dfc:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0056e00:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0056e04:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0056e08:	f7fe fd46 	bl	d0055898 <rotateAroundAxis>
d0056e0c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056e10:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0056e14:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0056e18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056e1c:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0056e20:	f43f ae22 	beq.w	d0056a68 <entityRotation.part.0+0x90>
d0056e24:	e63a      	b.n	d0056a9c <entityRotation.part.0+0xc4>
d0056e26:	bf00      	nop

d0056e28 <entityIdValid>:
d0056e28:	28ff      	cmp	r0, #255	; 0xff
d0056e2a:	d80a      	bhi.n	d0056e42 <entityIdValid+0x1a>
d0056e2c:	4b06      	ldr	r3, [pc, #24]	; (d0056e48 <entityIdValid+0x20>)
d0056e2e:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0056e32:	f893 0040 	ldrb.w	r0, [r3, #64]	; 0x40
d0056e36:	b128      	cbz	r0, d0056e44 <entityIdValid+0x1c>
d0056e38:	6998      	ldr	r0, [r3, #24]
d0056e3a:	3800      	subs	r0, #0
d0056e3c:	bf18      	it	ne
d0056e3e:	2001      	movne	r0, #1
d0056e40:	4770      	bx	lr
d0056e42:	2000      	movs	r0, #0
d0056e44:	4770      	bx	lr
d0056e46:	bf00      	nop
d0056e48:	d00f9ec0 	.word	0xd00f9ec0

d0056e4c <meshComputeBoundsRadius>:
d0056e4c:	b1f0      	cbz	r0, d0056e8c <meshComputeBoundsRadius+0x40>
d0056e4e:	6803      	ldr	r3, [r0, #0]
d0056e50:	b1e3      	cbz	r3, d0056e8c <meshComputeBoundsRadius+0x40>
d0056e52:	6842      	ldr	r2, [r0, #4]
d0056e54:	2a00      	cmp	r2, #0
d0056e56:	dd19      	ble.n	d0056e8c <meshComputeBoundsRadius+0x40>
d0056e58:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0056e5c:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0056e94 <meshComputeBoundsRadius+0x48>
d0056e60:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0056e64:	edd3 7a01 	vldr	s15, [r3, #4]
d0056e68:	330c      	adds	r3, #12
d0056e6a:	ed53 6a03 	vldr	s13, [r3, #-12]
d0056e6e:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0056e72:	ed13 7a01 	vldr	s14, [r3, #-4]
d0056e76:	429a      	cmp	r2, r3
d0056e78:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0056e7c:	eee7 7a07 	vfma.f32	s15, s14, s14
d0056e80:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0056e84:	d1ee      	bne.n	d0056e64 <meshComputeBoundsRadius+0x18>
d0056e86:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0056e8a:	4770      	bx	lr
d0056e8c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056e94 <meshComputeBoundsRadius+0x48>
d0056e90:	4770      	bx	lr
d0056e92:	bf00      	nop
d0056e94:	00000000 	.word	0x00000000

d0056e98 <entityWorldSpawn>:
d0056e98:	b5f0      	push	{r4, r5, r6, r7, lr}
d0056e9a:	4d20      	ldr	r5, [pc, #128]	; (d0056f1c <entityWorldSpawn+0x84>)
d0056e9c:	b085      	sub	sp, #20
d0056e9e:	2300      	movs	r3, #0
d0056ea0:	462a      	mov	r2, r5
d0056ea2:	ed8d 0a01 	vstr	s0, [sp, #4]
d0056ea6:	edcd 0a02 	vstr	s1, [sp, #8]
d0056eaa:	ed8d 1a03 	vstr	s2, [sp, #12]
d0056eae:	e003      	b.n	d0056eb8 <entityWorldSpawn+0x20>
d0056eb0:	3301      	adds	r3, #1
d0056eb2:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0056eb6:	d02c      	beq.n	d0056f12 <entityWorldSpawn+0x7a>
d0056eb8:	f892 4040 	ldrb.w	r4, [r2, #64]	; 0x40
d0056ebc:	3280      	adds	r2, #128	; 0x80
d0056ebe:	2c00      	cmp	r4, #0
d0056ec0:	d1f6      	bne.n	d0056eb0 <entityWorldSpawn+0x18>
d0056ec2:	eb05 15c3 	add.w	r5, r5, r3, lsl #7
d0056ec6:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0056eca:	af01      	add	r7, sp, #4
d0056ecc:	2600      	movs	r6, #0
d0056ece:	61a8      	str	r0, [r5, #24]
d0056ed0:	f105 0e0c 	add.w	lr, r5, #12
d0056ed4:	62aa      	str	r2, [r5, #40]	; 0x28
d0056ed6:	ea4f 1cc3 	mov.w	ip, r3, lsl #7
d0056eda:	63aa      	str	r2, [r5, #56]	; 0x38
d0056edc:	626a      	str	r2, [r5, #36]	; 0x24
d0056ede:	62ee      	str	r6, [r5, #44]	; 0x2c
d0056ee0:	632e      	str	r6, [r5, #48]	; 0x30
d0056ee2:	636e      	str	r6, [r5, #52]	; 0x34
d0056ee4:	63ee      	str	r6, [r5, #60]	; 0x3c
d0056ee6:	61ee      	str	r6, [r5, #28]
d0056ee8:	622e      	str	r6, [r5, #32]
d0056eea:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d0056eee:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0056ef2:	e88e 0007 	stmia.w	lr, {r0, r1, r2}
d0056ef6:	4a0a      	ldr	r2, [pc, #40]	; (d0056f20 <entityWorldSpawn+0x88>)
d0056ef8:	f240 1101 	movw	r1, #257	; 0x101
d0056efc:	4618      	mov	r0, r3
d0056efe:	f82c 1002 	strh.w	r1, [ip, r2]
d0056f02:	f885 4042 	strb.w	r4, [r5, #66]	; 0x42
d0056f06:	64ae      	str	r6, [r5, #72]	; 0x48
d0056f08:	64ee      	str	r6, [r5, #76]	; 0x4c
d0056f0a:	652e      	str	r6, [r5, #80]	; 0x50
d0056f0c:	646e      	str	r6, [r5, #68]	; 0x44
d0056f0e:	b005      	add	sp, #20
d0056f10:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056f12:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0056f16:	4618      	mov	r0, r3
d0056f18:	b005      	add	sp, #20
d0056f1a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056f1c:	d00f9ec0 	.word	0xd00f9ec0
d0056f20:	d00f9f00 	.word	0xd00f9f00

d0056f24 <entitySetPosition>:
d0056f24:	b430      	push	{r4, r5}
d0056f26:	28ff      	cmp	r0, #255	; 0xff
d0056f28:	b084      	sub	sp, #16
d0056f2a:	ed8d 0a01 	vstr	s0, [sp, #4]
d0056f2e:	edcd 0a02 	vstr	s1, [sp, #8]
d0056f32:	ed8d 1a03 	vstr	s2, [sp, #12]
d0056f36:	d810      	bhi.n	d0056f5a <entitySetPosition+0x36>
d0056f38:	4b09      	ldr	r3, [pc, #36]	; (d0056f60 <entitySetPosition+0x3c>)
d0056f3a:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0056f3e:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0056f42:	b152      	cbz	r2, d0056f5a <entitySetPosition+0x36>
d0056f44:	699a      	ldr	r2, [r3, #24]
d0056f46:	b142      	cbz	r2, d0056f5a <entitySetPosition+0x36>
d0056f48:	ac01      	add	r4, sp, #4
d0056f4a:	f103 050c 	add.w	r5, r3, #12
d0056f4e:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d0056f52:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0056f56:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0056f5a:	b004      	add	sp, #16
d0056f5c:	bc30      	pop	{r4, r5}
d0056f5e:	4770      	bx	lr
d0056f60:	d00f9ec0 	.word	0xd00f9ec0

d0056f64 <entityGetPosition>:
d0056f64:	28ff      	cmp	r0, #255	; 0xff
d0056f66:	b088      	sub	sp, #32
d0056f68:	d80c      	bhi.n	d0056f84 <entityGetPosition+0x20>
d0056f6a:	4b0c      	ldr	r3, [pc, #48]	; (d0056f9c <entityGetPosition+0x38>)
d0056f6c:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0056f70:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0056f74:	b133      	cbz	r3, d0056f84 <entityGetPosition+0x20>
d0056f76:	6983      	ldr	r3, [r0, #24]
d0056f78:	b123      	cbz	r3, d0056f84 <entityGetPosition+0x20>
d0056f7a:	ab08      	add	r3, sp, #32
d0056f7c:	c807      	ldmia	r0, {r0, r1, r2}
d0056f7e:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0056f82:	e003      	b.n	d0056f8c <entityGetPosition+0x28>
d0056f84:	2300      	movs	r3, #0
d0056f86:	9305      	str	r3, [sp, #20]
d0056f88:	9306      	str	r3, [sp, #24]
d0056f8a:	9307      	str	r3, [sp, #28]
d0056f8c:	ed9d 0a05 	vldr	s0, [sp, #20]
d0056f90:	eddd 0a06 	vldr	s1, [sp, #24]
d0056f94:	ed9d 1a07 	vldr	s2, [sp, #28]
d0056f98:	b008      	add	sp, #32
d0056f9a:	4770      	bx	lr
d0056f9c:	d00f9ec0 	.word	0xd00f9ec0

d0056fa0 <entityGetForward>:
d0056fa0:	28ff      	cmp	r0, #255	; 0xff
d0056fa2:	b088      	sub	sp, #32
d0056fa4:	d80d      	bhi.n	d0056fc2 <entityGetForward+0x22>
d0056fa6:	4b0e      	ldr	r3, [pc, #56]	; (d0056fe0 <entityGetForward+0x40>)
d0056fa8:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0056fac:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0056fb0:	b13b      	cbz	r3, d0056fc2 <entityGetForward+0x22>
d0056fb2:	6983      	ldr	r3, [r0, #24]
d0056fb4:	b12b      	cbz	r3, d0056fc2 <entityGetForward+0x22>
d0056fb6:	301c      	adds	r0, #28
d0056fb8:	ab08      	add	r3, sp, #32
d0056fba:	c807      	ldmia	r0, {r0, r1, r2}
d0056fbc:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0056fc0:	e005      	b.n	d0056fce <entityGetForward+0x2e>
d0056fc2:	2300      	movs	r3, #0
d0056fc4:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0056fc8:	9305      	str	r3, [sp, #20]
d0056fca:	9207      	str	r2, [sp, #28]
d0056fcc:	9306      	str	r3, [sp, #24]
d0056fce:	ed9d 0a05 	vldr	s0, [sp, #20]
d0056fd2:	eddd 0a06 	vldr	s1, [sp, #24]
d0056fd6:	ed9d 1a07 	vldr	s2, [sp, #28]
d0056fda:	b008      	add	sp, #32
d0056fdc:	4770      	bx	lr
d0056fde:	bf00      	nop
d0056fe0:	d00f9ec0 	.word	0xd00f9ec0

d0056fe4 <entityMoveForward>:
d0056fe4:	28ff      	cmp	r0, #255	; 0xff
d0056fe6:	d82f      	bhi.n	d0057048 <entityMoveForward+0x64>
d0056fe8:	b510      	push	{r4, lr}
d0056fea:	4c18      	ldr	r4, [pc, #96]	; (d005704c <entityMoveForward+0x68>)
d0056fec:	b084      	sub	sp, #16
d0056fee:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0056ff2:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0056ff6:	b32b      	cbz	r3, d0057044 <entityMoveForward+0x60>
d0056ff8:	69a3      	ldr	r3, [r4, #24]
d0056ffa:	b31b      	cbz	r3, d0057044 <entityMoveForward+0x60>
d0056ffc:	f104 030c 	add.w	r3, r4, #12
d0057000:	eef0 1a40 	vmov.f32	s3, s0
d0057004:	edd4 0a08 	vldr	s1, [r4, #32]
d0057008:	ed94 0a07 	vldr	s0, [r4, #28]
d005700c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0057010:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d0057014:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0057018:	f7fe fbc2 	bl	d00557a0 <vec3Scale>
d005701c:	eef0 1a40 	vmov.f32	s3, s0
d0057020:	eeb0 2a60 	vmov.f32	s4, s1
d0057024:	ed94 0a00 	vldr	s0, [r4]
d0057028:	eef0 2a41 	vmov.f32	s5, s2
d005702c:	edd4 0a01 	vldr	s1, [r4, #4]
d0057030:	ed94 1a02 	vldr	s2, [r4, #8]
d0057034:	f7fe fbaa 	bl	d005578c <vec3Add>
d0057038:	ed84 0a00 	vstr	s0, [r4]
d005703c:	edc4 0a01 	vstr	s1, [r4, #4]
d0057040:	ed84 1a02 	vstr	s2, [r4, #8]
d0057044:	b004      	add	sp, #16
d0057046:	bd10      	pop	{r4, pc}
d0057048:	4770      	bx	lr
d005704a:	bf00      	nop
d005704c:	d00f9ec0 	.word	0xd00f9ec0

d0057050 <meshColour>:
d0057050:	b150      	cbz	r0, d0057068 <meshColour+0x18>
d0057052:	6903      	ldr	r3, [r0, #16]
d0057054:	b143      	cbz	r3, d0057068 <meshColour+0x18>
d0057056:	6942      	ldr	r2, [r0, #20]
d0057058:	2a00      	cmp	r2, #0
d005705a:	dd05      	ble.n	d0057068 <meshColour+0x18>
d005705c:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d0057060:	7319      	strb	r1, [r3, #12]
d0057062:	3310      	adds	r3, #16
d0057064:	429a      	cmp	r2, r3
d0057066:	d1fb      	bne.n	d0057060 <meshColour+0x10>
d0057068:	4770      	bx	lr
d005706a:	bf00      	nop

d005706c <entityTurnLocal>:
d005706c:	28ff      	cmp	r0, #255	; 0xff
d005706e:	d82a      	bhi.n	d00570c6 <entityTurnLocal+0x5a>
d0057070:	b510      	push	{r4, lr}
d0057072:	4c65      	ldr	r4, [pc, #404]	; (d0057208 <entityTurnLocal+0x19c>)
d0057074:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0057078:	ed2d 8b04 	vpush	{d8-d9}
d005707c:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0057080:	b1f3      	cbz	r3, d00570c0 <entityTurnLocal+0x54>
d0057082:	69a3      	ldr	r3, [r4, #24]
d0057084:	b1e3      	cbz	r3, d00570c0 <entityTurnLocal+0x54>
d0057086:	eeb5 0a40 	vcmp.f32	s0, #0.0
d005708a:	eeb0 9a40 	vmov.f32	s18, s0
d005708e:	eef0 8a60 	vmov.f32	s17, s1
d0057092:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057096:	eeb0 8a41 	vmov.f32	s16, s2
d005709a:	f040 8081 	bne.w	d00571a0 <entityTurnLocal+0x134>
d005709e:	eef5 8a40 	vcmp.f32	s17, #0.0
d00570a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00570a6:	d148      	bne.n	d005713a <entityTurnLocal+0xce>
d00570a8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00570ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00570b0:	d10a      	bne.n	d00570c8 <entityTurnLocal+0x5c>
d00570b2:	4620      	mov	r0, r4
d00570b4:	ecbd 8b04 	vpop	{d8-d9}
d00570b8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00570bc:	f7ff bc36 	b.w	d005692c <normalizeEntity.part.0>
d00570c0:	ecbd 8b04 	vpop	{d8-d9}
d00570c4:	bd10      	pop	{r4, pc}
d00570c6:	4770      	bx	lr
d00570c8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00570cc:	eeb0 3a48 	vmov.f32	s6, s16
d00570d0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00570d4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00570d8:	edd4 1a07 	vldr	s3, [r4, #28]
d00570dc:	ed94 2a08 	vldr	s4, [r4, #32]
d00570e0:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d00570e4:	f7fe fbd8 	bl	d0055898 <rotateAroundAxis>
d00570e8:	eef0 6a40 	vmov.f32	s13, s0
d00570ec:	eeb0 7a60 	vmov.f32	s14, s1
d00570f0:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00570f4:	eef0 7a41 	vmov.f32	s15, s2
d00570f8:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00570fc:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0057100:	eeb0 3a48 	vmov.f32	s6, s16
d0057104:	edd4 1a07 	vldr	s3, [r4, #28]
d0057108:	ed94 2a08 	vldr	s4, [r4, #32]
d005710c:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0057110:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0057114:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0057118:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005711c:	f7fe fbbc 	bl	d0055898 <rotateAroundAxis>
d0057120:	4620      	mov	r0, r4
d0057122:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0057126:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005712a:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005712e:	ecbd 8b04 	vpop	{d8-d9}
d0057132:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0057136:	f7ff bbf9 	b.w	d005692c <normalizeEntity.part.0>
d005713a:	ed94 0a07 	vldr	s0, [r4, #28]
d005713e:	eeb0 3a68 	vmov.f32	s6, s17
d0057142:	edd4 0a08 	vldr	s1, [r4, #32]
d0057146:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005714a:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d005714e:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0057152:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0057156:	f7fe fb9f 	bl	d0055898 <rotateAroundAxis>
d005715a:	eef0 6a40 	vmov.f32	s13, s0
d005715e:	eeb0 7a60 	vmov.f32	s14, s1
d0057162:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0057166:	eef0 7a41 	vmov.f32	s15, s2
d005716a:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005716e:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0057172:	eeb0 3a68 	vmov.f32	s6, s17
d0057176:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d005717a:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d005717e:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0057182:	edc4 6a07 	vstr	s13, [r4, #28]
d0057186:	ed84 7a08 	vstr	s14, [r4, #32]
d005718a:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005718e:	f7fe fb83 	bl	d0055898 <rotateAroundAxis>
d0057192:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0057196:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005719a:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005719e:	e783      	b.n	d00570a8 <entityTurnLocal+0x3c>
d00571a0:	eeb0 3a40 	vmov.f32	s6, s0
d00571a4:	edd4 0a08 	vldr	s1, [r4, #32]
d00571a8:	ed94 0a07 	vldr	s0, [r4, #28]
d00571ac:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00571b0:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d00571b4:	ed94 2a0e 	vldr	s4, [r4, #56]	; 0x38
d00571b8:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d00571bc:	f7fe fb6c 	bl	d0055898 <rotateAroundAxis>
d00571c0:	eef0 6a40 	vmov.f32	s13, s0
d00571c4:	eeb0 7a60 	vmov.f32	s14, s1
d00571c8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00571cc:	eef0 7a41 	vmov.f32	s15, s2
d00571d0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00571d4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00571d8:	eeb0 3a49 	vmov.f32	s6, s18
d00571dc:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d00571e0:	ed94 2a0e 	vldr	s4, [r4, #56]	; 0x38
d00571e4:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d00571e8:	edc4 6a07 	vstr	s13, [r4, #28]
d00571ec:	ed84 7a08 	vstr	s14, [r4, #32]
d00571f0:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00571f4:	f7fe fb50 	bl	d0055898 <rotateAroundAxis>
d00571f8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00571fc:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0057200:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0057204:	e74b      	b.n	d005709e <entityTurnLocal+0x32>
d0057206:	bf00      	nop
d0057208:	d00f9ec0 	.word	0xd00f9ec0

d005720c <entityRotation>:
d005720c:	28ff      	cmp	r0, #255	; 0xff
d005720e:	d809      	bhi.n	d0057224 <entityRotation+0x18>
d0057210:	4a05      	ldr	r2, [pc, #20]	; (d0057228 <entityRotation+0x1c>)
d0057212:	eb02 13c0 	add.w	r3, r2, r0, lsl #7
d0057216:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d005721a:	b11a      	cbz	r2, d0057224 <entityRotation+0x18>
d005721c:	699b      	ldr	r3, [r3, #24]
d005721e:	b10b      	cbz	r3, d0057224 <entityRotation+0x18>
d0057220:	f7ff bbda 	b.w	d00569d8 <entityRotation.part.0>
d0057224:	4770      	bx	lr
d0057226:	bf00      	nop
d0057228:	d00f9ec0 	.word	0xd00f9ec0

d005722c <createBox>:
d005722c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0057230:	ed2d 8b04 	vpush	{d8-d9}
d0057234:	b0e1      	sub	sp, #388	; 0x184
d0057236:	f04f 0824 	mov.w	r8, #36	; 0x24
d005723a:	4606      	mov	r6, r0
d005723c:	2100      	movs	r1, #0
d005723e:	f20d 1547 	addw	r5, sp, #327	; 0x147
d0057242:	4642      	mov	r2, r8
d0057244:	eeb0 8a41 	vmov.f32	s16, s2
d0057248:	9601      	str	r6, [sp, #4]
d005724a:	f025 051f 	bic.w	r5, r5, #31
d005724e:	eeb0 9a40 	vmov.f32	s18, s0
d0057252:	eef0 8a60 	vmov.f32	s17, s1
d0057256:	f04f 090c 	mov.w	r9, #12
d005725a:	f105 001c 	add.w	r0, r5, #28
d005725e:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d0057262:	f003 fd95 	bl	d005ad90 <memset>
d0057266:	2308      	movs	r3, #8
d0057268:	2060      	movs	r0, #96	; 0x60
d005726a:	f04f 0b04 	mov.w	fp, #4
d005726e:	606b      	str	r3, [r5, #4]
d0057270:	f003 fd62 	bl	d005ad38 <malloc>
d0057274:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d0057278:	4604      	mov	r4, r0
d005727a:	2060      	movs	r0, #96	; 0x60
d005727c:	f8c5 900c 	str.w	r9, [r5, #12]
d0057280:	602c      	str	r4, [r5, #0]
d0057282:	2604      	movs	r6, #4
d0057284:	ee29 0a01 	vmul.f32	s0, s18, s2
d0057288:	ee68 0a81 	vmul.f32	s1, s17, s2
d005728c:	ee28 1a01 	vmul.f32	s2, s16, s2
d0057290:	eef1 6a40 	vneg.f32	s13, s0
d0057294:	ed84 0a03 	vstr	s0, [r4, #12]
d0057298:	eeb1 7a60 	vneg.f32	s14, s1
d005729c:	ed84 0a06 	vstr	s0, [r4, #24]
d00572a0:	eef1 7a41 	vneg.f32	s15, s2
d00572a4:	ed84 1a08 	vstr	s2, [r4, #32]
d00572a8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00572ac:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00572b0:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d00572b4:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d00572b8:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d00572bc:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d00572c0:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d00572c4:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d00572c8:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d00572cc:	edc4 6a00 	vstr	s13, [r4]
d00572d0:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d00572d4:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d00572d8:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d00572dc:	ed84 7a01 	vstr	s14, [r4, #4]
d00572e0:	ed84 7a04 	vstr	s14, [r4, #16]
d00572e4:	ed84 7a07 	vstr	s14, [r4, #28]
d00572e8:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d00572ec:	edc4 7a02 	vstr	s15, [r4, #8]
d00572f0:	edc4 7a05 	vstr	s15, [r4, #20]
d00572f4:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d00572f8:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d00572fc:	f003 fd1c 	bl	d005ad38 <malloc>
d0057300:	4607      	mov	r7, r0
d0057302:	2260      	movs	r2, #96	; 0x60
d0057304:	a802      	add	r0, sp, #8
d0057306:	4987      	ldr	r1, [pc, #540]	; (d0057524 <createBox+0x2f8>)
d0057308:	60af      	str	r7, [r5, #8]
d005730a:	f003 fd33 	bl	d005ad74 <memcpy>
d005730e:	a902      	add	r1, sp, #8
d0057310:	2260      	movs	r2, #96	; 0x60
d0057312:	4638      	mov	r0, r7
d0057314:	f003 fd2e 	bl	d005ad74 <memcpy>
d0057318:	4650      	mov	r0, sl
d005731a:	f8c5 9014 	str.w	r9, [r5, #20]
d005731e:	f003 fd0b 	bl	d005ad38 <malloc>
d0057322:	4607      	mov	r7, r0
d0057324:	4652      	mov	r2, sl
d0057326:	a81a      	add	r0, sp, #104	; 0x68
d0057328:	2100      	movs	r1, #0
d005732a:	612f      	str	r7, [r5, #16]
d005732c:	f003 fd30 	bl	d005ad90 <memset>
d0057330:	f04f 0c02 	mov.w	ip, #2
d0057334:	4638      	mov	r0, r7
d0057336:	2705      	movs	r7, #5
d0057338:	4652      	mov	r2, sl
d005733a:	f04f 0903 	mov.w	r9, #3
d005733e:	f04f 0a06 	mov.w	sl, #6
d0057342:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d0057346:	f04f 0e01 	mov.w	lr, #1
d005734a:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d005734e:	f04f 0804 	mov.w	r8, #4
d0057352:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d0057356:	2307      	movs	r3, #7
d0057358:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d005735c:	2122      	movs	r1, #34	; 0x22
d005735e:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d0057362:	f04f 0c06 	mov.w	ip, #6
d0057366:	9724      	str	r7, [sp, #144]	; 0x90
d0057368:	972c      	str	r7, [sp, #176]	; 0xb0
d005736a:	972f      	str	r7, [sp, #188]	; 0xbc
d005736c:	2707      	movs	r7, #7
d005736e:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d0057372:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d0057376:	f04f 0905 	mov.w	r9, #5
d005737a:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d005737e:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d0057382:	f04f 0a01 	mov.w	sl, #1
d0057386:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d005738a:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d005738e:	f04f 0801 	mov.w	r8, #1
d0057392:	933c      	str	r3, [sp, #240]	; 0xf0
d0057394:	2323      	movs	r3, #35	; 0x23
d0057396:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d005739a:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d005739e:	f04f 0e25 	mov.w	lr, #37	; 0x25
d00573a2:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d00573a6:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d00573aa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d00573ae:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d00573b2:	a91a      	add	r1, sp, #104	; 0x68
d00573b4:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d00573b8:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d00573bc:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d00573c0:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d00573c4:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d00573c8:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d00573cc:	f04f 0b06 	mov.w	fp, #6
d00573d0:	2602      	movs	r6, #2
d00573d2:	2706      	movs	r7, #6
d00573d4:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d00573d8:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d00573dc:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d00573e0:	f04f 0802 	mov.w	r8, #2
d00573e4:	f04f 0907 	mov.w	r9, #7
d00573e8:	f04f 0a03 	mov.w	sl, #3
d00573ec:	f04f 0b07 	mov.w	fp, #7
d00573f0:	2603      	movs	r6, #3
d00573f2:	2704      	movs	r7, #4
d00573f4:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d00573f8:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d00573fc:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d0057400:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d0057404:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d0057408:	f003 fcb4 	bl	d005ad74 <memcpy>
d005740c:	edd4 7a01 	vldr	s15, [r4, #4]
d0057410:	ed94 6a04 	vldr	s12, [r4, #16]
d0057414:	4628      	mov	r0, r5
d0057416:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d005741a:	ee67 6aa7 	vmul.f32	s13, s15, s15
d005741e:	ed94 7a07 	vldr	s14, [r4, #28]
d0057422:	ee66 7a06 	vmul.f32	s15, s12, s12
d0057426:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d005742a:	ee25 4aa5 	vmul.f32	s8, s11, s11
d005742e:	ed94 3a00 	vldr	s6, [r4]
d0057432:	ee27 7a07 	vmul.f32	s14, s14, s14
d0057436:	edd4 3a03 	vldr	s7, [r4, #12]
d005743a:	ee66 4a06 	vmul.f32	s9, s12, s12
d005743e:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d0057442:	eee3 6a03 	vfma.f32	s13, s6, s6
d0057446:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d005744a:	eee3 7aa3 	vfma.f32	s15, s7, s7
d005744e:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d0057452:	ee25 5a05 	vmul.f32	s10, s10, s10
d0057456:	edd4 2a06 	vldr	s5, [r4, #24]
d005745a:	ee65 5aa5 	vmul.f32	s11, s11, s11
d005745e:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d0057462:	ee26 6a06 	vmul.f32	s12, s12, s12
d0057466:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d005746a:	eea2 7aa2 	vfma.f32	s14, s5, s5
d005746e:	eea3 4a03 	vfma.f32	s8, s6, s6
d0057472:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0057476:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d005747a:	eee3 4aa3 	vfma.f32	s9, s7, s7
d005747e:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d0057482:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0057486:	eee3 5a03 	vfma.f32	s11, s6, s6
d005748a:	ed94 3a02 	vldr	s6, [r4, #8]
d005748e:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0057492:	edd4 3a05 	vldr	s7, [r4, #20]
d0057496:	eee3 6a03 	vfma.f32	s13, s6, s6
d005749a:	edd4 2a08 	vldr	s5, [r4, #32]
d005749e:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d00574a2:	eee3 7aa3 	vfma.f32	s15, s7, s7
d00574a6:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d00574aa:	eea2 7aa2 	vfma.f32	s14, s5, s5
d00574ae:	eea3 4a03 	vfma.f32	s8, s6, s6
d00574b2:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d00574b6:	eee3 4aa3 	vfma.f32	s9, s7, s7
d00574ba:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d00574be:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d00574c2:	eea2 5aa2 	vfma.f32	s10, s5, s5
d00574c6:	eee3 5a03 	vfma.f32	s11, s6, s6
d00574ca:	ed9f 3a17 	vldr	s6, [pc, #92]	; d0057528 <createBox+0x2fc>
d00574ce:	eea3 6aa3 	vfma.f32	s12, s7, s7
d00574d2:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d00574d6:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d00574da:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d00574de:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d00574e2:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d00574e6:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d00574ea:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d00574ee:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d00574f2:	eeb1 7ae7 	vsqrt.f32	s14, s15
d00574f6:	ed85 7a06 	vstr	s14, [r5, #24]
d00574fa:	f7fb fcd7 	bl	d0052eac <meshSetDefaultMaterial>
d00574fe:	9e01      	ldr	r6, [sp, #4]
d0057500:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0057502:	4634      	mov	r4, r6
d0057504:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0057506:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0057508:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d005750a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d005750c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d005750e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0057512:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0057516:	4630      	mov	r0, r6
d0057518:	b061      	add	sp, #388	; 0x184
d005751a:	ecbd 8b04 	vpop	{d8-d9}
d005751e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057522:	bf00      	nop
d0057524:	d005cee0 	.word	0xd005cee0
d0057528:	00000000 	.word	0x00000000

d005752c <copyMesh>:
d005752c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0057530:	460f      	mov	r7, r1
d0057532:	b083      	sub	sp, #12
d0057534:	2240      	movs	r2, #64	; 0x40
d0057536:	2100      	movs	r1, #0
d0057538:	4606      	mov	r6, r0
d005753a:	f003 fc29 	bl	d005ad90 <memset>
d005753e:	2f00      	cmp	r7, #0
d0057540:	d077      	beq.n	d0057632 <copyMesh+0x106>
d0057542:	687b      	ldr	r3, [r7, #4]
d0057544:	697a      	ldr	r2, [r7, #20]
d0057546:	2b00      	cmp	r3, #0
d0057548:	f8d7 800c 	ldr.w	r8, [r7, #12]
d005754c:	9301      	str	r3, [sp, #4]
d005754e:	9200      	str	r2, [sp, #0]
d0057550:	dc59      	bgt.n	d0057606 <copyMesh+0xda>
d0057552:	f1b8 0f00 	cmp.w	r8, #0
d0057556:	f04f 0900 	mov.w	r9, #0
d005755a:	dc5d      	bgt.n	d0057618 <copyMesh+0xec>
d005755c:	9b00      	ldr	r3, [sp, #0]
d005755e:	f04f 0a00 	mov.w	sl, #0
d0057562:	2b00      	cmp	r3, #0
d0057564:	dc60      	bgt.n	d0057628 <copyMesh+0xfc>
d0057566:	f04f 0c00 	mov.w	ip, #0
d005756a:	9b01      	ldr	r3, [sp, #4]
d005756c:	2b00      	cmp	r3, #0
d005756e:	dd0f      	ble.n	d0057590 <copyMesh+0x64>
d0057570:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0057574:	f8d7 e000 	ldr.w	lr, [r7]
d0057578:	2300      	movs	r3, #0
d005757a:	00ad      	lsls	r5, r5, #2
d005757c:	eb0e 0203 	add.w	r2, lr, r3
d0057580:	eb09 0403 	add.w	r4, r9, r3
d0057584:	330c      	adds	r3, #12
d0057586:	ca07      	ldmia	r2, {r0, r1, r2}
d0057588:	429d      	cmp	r5, r3
d005758a:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d005758e:	d1f5      	bne.n	d005757c <copyMesh+0x50>
d0057590:	f1b8 0f00 	cmp.w	r8, #0
d0057594:	dd0b      	ble.n	d00575ae <copyMesh+0x82>
d0057596:	68bc      	ldr	r4, [r7, #8]
d0057598:	2300      	movs	r3, #0
d005759a:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d005759e:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d00575a2:	3301      	adds	r3, #1
d00575a4:	c903      	ldmia	r1, {r0, r1}
d00575a6:	4598      	cmp	r8, r3
d00575a8:	e882 0003 	stmia.w	r2, {r0, r1}
d00575ac:	d1f5      	bne.n	d005759a <copyMesh+0x6e>
d00575ae:	9b00      	ldr	r3, [sp, #0]
d00575b0:	2b00      	cmp	r3, #0
d00575b2:	dd0e      	ble.n	d00575d2 <copyMesh+0xa6>
d00575b4:	f8d7 b010 	ldr.w	fp, [r7, #16]
d00575b8:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d00575bc:	2400      	movs	r4, #0
d00575be:	eb0b 0304 	add.w	r3, fp, r4
d00575c2:	eb0c 0504 	add.w	r5, ip, r4
d00575c6:	3410      	adds	r4, #16
d00575c8:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d00575ca:	4574      	cmp	r4, lr
d00575cc:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d00575d0:	d1f5      	bne.n	d00575be <copyMesh+0x92>
d00575d2:	9a01      	ldr	r2, [sp, #4]
d00575d4:	f107 0520 	add.w	r5, r7, #32
d00575d8:	69bb      	ldr	r3, [r7, #24]
d00575da:	f106 0420 	add.w	r4, r6, #32
d00575de:	6072      	str	r2, [r6, #4]
d00575e0:	9a00      	ldr	r2, [sp, #0]
d00575e2:	61b3      	str	r3, [r6, #24]
d00575e4:	6172      	str	r2, [r6, #20]
d00575e6:	f8c6 9000 	str.w	r9, [r6]
d00575ea:	f8c6 c010 	str.w	ip, [r6, #16]
d00575ee:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00575f0:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d00575f2:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00575f6:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d00575fa:	4630      	mov	r0, r6
d00575fc:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0057600:	b003      	add	sp, #12
d0057602:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057606:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d005760a:	0080      	lsls	r0, r0, #2
d005760c:	f003 fb94 	bl	d005ad38 <malloc>
d0057610:	f1b8 0f00 	cmp.w	r8, #0
d0057614:	4681      	mov	r9, r0
d0057616:	dda1      	ble.n	d005755c <copyMesh+0x30>
d0057618:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d005761c:	f003 fb8c 	bl	d005ad38 <malloc>
d0057620:	9b00      	ldr	r3, [sp, #0]
d0057622:	4682      	mov	sl, r0
d0057624:	2b00      	cmp	r3, #0
d0057626:	dd9e      	ble.n	d0057566 <copyMesh+0x3a>
d0057628:	0118      	lsls	r0, r3, #4
d005762a:	f003 fb85 	bl	d005ad38 <malloc>
d005762e:	4684      	mov	ip, r0
d0057630:	e79b      	b.n	d005756a <copyMesh+0x3e>
d0057632:	2300      	movs	r3, #0
d0057634:	4630      	mov	r0, r6
d0057636:	e9c6 7700 	strd	r7, r7, [r6]
d005763a:	e9c6 7702 	strd	r7, r7, [r6, #8]
d005763e:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0057642:	61b3      	str	r3, [r6, #24]
d0057644:	b003      	add	sp, #12
d0057646:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005764a:	bf00      	nop

d005764c <entityLookAtPosition>:
d005764c:	28ff      	cmp	r0, #255	; 0xff
d005764e:	b530      	push	{r4, r5, lr}
d0057650:	ed2d 8b04 	vpush	{d8-d9}
d0057654:	b08d      	sub	sp, #52	; 0x34
d0057656:	d848      	bhi.n	d00576ea <entityLookAtPosition+0x9e>
d0057658:	4b30      	ldr	r3, [pc, #192]	; (d005771c <entityLookAtPosition+0xd0>)
d005765a:	4604      	mov	r4, r0
d005765c:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0057660:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0057664:	2a00      	cmp	r2, #0
d0057666:	d040      	beq.n	d00576ea <entityLookAtPosition+0x9e>
d0057668:	699a      	ldr	r2, [r3, #24]
d005766a:	2a00      	cmp	r2, #0
d005766c:	d03d      	beq.n	d00576ea <entityLookAtPosition+0x9e>
d005766e:	edd3 8a00 	vldr	s17, [r3]
d0057672:	460d      	mov	r5, r1
d0057674:	ed93 9a01 	vldr	s18, [r3, #4]
d0057678:	ee70 8a68 	vsub.f32	s17, s0, s17
d005767c:	ed93 8a02 	vldr	s16, [r3, #8]
d0057680:	ee30 9ac9 	vsub.f32	s18, s1, s18
d0057684:	ee31 8a48 	vsub.f32	s16, s2, s16
d0057688:	eef5 8a40 	vcmp.f32	s17, #0.0
d005768c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057690:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0057694:	bf14      	ite	ne
d0057696:	2300      	movne	r3, #0
d0057698:	2301      	moveq	r3, #1
d005769a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005769e:	bf18      	it	ne
d00576a0:	2300      	movne	r3, #0
d00576a2:	b123      	cbz	r3, d00576ae <entityLookAtPosition+0x62>
d00576a4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00576a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00576ac:	d01d      	beq.n	d00576ea <entityLookAtPosition+0x9e>
d00576ae:	eef0 0a48 	vmov.f32	s1, s16
d00576b2:	ee28 8a08 	vmul.f32	s16, s16, s16
d00576b6:	eeb0 0a68 	vmov.f32	s0, s17
d00576ba:	f004 ff25 	bl	d005c508 <atan2f>
d00576be:	eef0 7a40 	vmov.f32	s15, s0
d00576c2:	eea8 8aa8 	vfma.f32	s16, s17, s17
d00576c6:	eeb0 0a49 	vmov.f32	s0, s18
d00576ca:	eeb0 9a67 	vmov.f32	s18, s15
d00576ce:	eef1 0ac8 	vsqrt.f32	s1, s16
d00576d2:	f004 ff19 	bl	d005c508 <atan2f>
d00576d6:	eeb1 8a40 	vneg.f32	s16, s0
d00576da:	b9a5      	cbnz	r5, d0057706 <entityLookAtPosition+0xba>
d00576dc:	2300      	movs	r3, #0
d00576de:	ed8d 8a09 	vstr	s16, [sp, #36]	; 0x24
d00576e2:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d00576e6:	930b      	str	r3, [sp, #44]	; 0x2c
d00576e8:	e003      	b.n	d00576f2 <entityLookAtPosition+0xa6>
d00576ea:	2300      	movs	r3, #0
d00576ec:	9309      	str	r3, [sp, #36]	; 0x24
d00576ee:	930a      	str	r3, [sp, #40]	; 0x28
d00576f0:	930b      	str	r3, [sp, #44]	; 0x2c
d00576f2:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d00576f6:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d00576fa:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d00576fe:	b00d      	add	sp, #52	; 0x34
d0057700:	ecbd 8b04 	vpop	{d8-d9}
d0057704:	bd30      	pop	{r4, r5, pc}
d0057706:	eef0 0a48 	vmov.f32	s1, s16
d005770a:	4620      	mov	r0, r4
d005770c:	eeb0 0a49 	vmov.f32	s0, s18
d0057710:	2101      	movs	r1, #1
d0057712:	ed9f 1a03 	vldr	s2, [pc, #12]	; d0057720 <entityLookAtPosition+0xd4>
d0057716:	f7ff f95f 	bl	d00569d8 <entityRotation.part.0>
d005771a:	e7df      	b.n	d00576dc <entityLookAtPosition+0x90>
d005771c:	d00f9ec0 	.word	0xd00f9ec0
d0057720:	00000000 	.word	0x00000000

d0057724 <entityAllowHit>:
d0057724:	28ff      	cmp	r0, #255	; 0xff
d0057726:	d813      	bhi.n	d0057750 <entityAllowHit+0x2c>
d0057728:	4b0a      	ldr	r3, [pc, #40]	; (d0057754 <entityAllowHit+0x30>)
d005772a:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d005772e:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0057732:	b16b      	cbz	r3, d0057750 <entityAllowHit+0x2c>
d0057734:	6983      	ldr	r3, [r0, #24]
d0057736:	b15b      	cbz	r3, d0057750 <entityAllowHit+0x2c>
d0057738:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d005773c:	b121      	cbz	r1, d0057748 <entityAllowHit+0x24>
d005773e:	f043 0302 	orr.w	r3, r3, #2
d0057742:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0057746:	4770      	bx	lr
d0057748:	f023 0302 	bic.w	r3, r3, #2
d005774c:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0057750:	4770      	bx	lr
d0057752:	bf00      	nop
d0057754:	d00f9ec0 	.word	0xd00f9ec0

d0057758 <entityVisible>:
d0057758:	28ff      	cmp	r0, #255	; 0xff
d005775a:	d813      	bhi.n	d0057784 <entityVisible+0x2c>
d005775c:	4b0a      	ldr	r3, [pc, #40]	; (d0057788 <entityVisible+0x30>)
d005775e:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0057762:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0057766:	b16b      	cbz	r3, d0057784 <entityVisible+0x2c>
d0057768:	6983      	ldr	r3, [r0, #24]
d005776a:	b15b      	cbz	r3, d0057784 <entityVisible+0x2c>
d005776c:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d0057770:	b121      	cbz	r1, d005777c <entityVisible+0x24>
d0057772:	f043 0301 	orr.w	r3, r3, #1
d0057776:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d005777a:	4770      	bx	lr
d005777c:	f023 0301 	bic.w	r3, r3, #1
d0057780:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0057784:	4770      	bx	lr
d0057786:	bf00      	nop
d0057788:	d00f9ec0 	.word	0xd00f9ec0

d005778c <buildLightingCLUT>:
d005778c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0057790:	f1b2 0900 	subs.w	r9, r2, #0
d0057794:	b085      	sub	sp, #20
d0057796:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0057798:	f340 8212 	ble.w	d0057bc0 <buildLightingCLUT+0x434>
d005779c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00577a0:	4f24      	ldr	r7, [pc, #144]	; (d0057834 <buildLightingCLUT+0xa8>)
d00577a2:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d00577a6:	edd4 4a00 	vldr	s9, [r4]
d00577aa:	ed94 5a01 	vldr	s10, [r4, #4]
d00577ae:	eb09 0807 	add.w	r8, r9, r7
d00577b2:	edd4 5a02 	vldr	s11, [r4, #8]
d00577b6:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d00577ba:	ed94 6a03 	vldr	s12, [r4, #12]
d00577be:	44bc      	add	ip, r7
d00577c0:	edd4 6a04 	vldr	s13, [r4, #16]
d00577c4:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d00577c8:	3904      	subs	r1, #4
d00577ca:	ee77 4ae4 	vsub.f32	s9, s15, s9
d00577ce:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00577d2:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0057838 <buildLightingCLUT+0xac>
d00577d6:	ee77 5ae5 	vsub.f32	s11, s15, s11
d00577da:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d00577de:	ee37 6ac6 	vsub.f32	s12, s15, s12
d00577e2:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d00577e6:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00577ea:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d00577ee:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d00577f2:	f3c3 4507 	ubfx	r5, r3, #16, #8
d00577f6:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d00577fa:	f3c3 2007 	ubfx	r0, r3, #8, #8
d00577fe:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0057802:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0057806:	0e1c      	lsrs	r4, r3, #24
d0057808:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d005780c:	b2da      	uxtb	r2, r3
d005780e:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0057812:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0057816:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d005781a:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d005781e:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0057822:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0057826:	fe86 6a67 	vminnm.f32	s12, s12, s15
d005782a:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d005782e:	9601      	str	r6, [sp, #4]
d0057830:	e004      	b.n	d005783c <buildLightingCLUT+0xb0>
d0057832:	bf00      	nop
d0057834:	4000001f 	.word	0x4000001f
d0057838:	00000000 	.word	0x00000000
d005783c:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0057840:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0057844:	0e1e      	lsrs	r6, r3, #24
d0057846:	fa5f fa83 	uxtb.w	sl, r3
d005784a:	4549      	cmp	r1, r9
d005784c:	ee07 6a10 	vmov	s14, r6
d0057850:	eba5 060b 	sub.w	r6, r5, fp
d0057854:	ee04 ba10 	vmov	s8, fp
d0057858:	ee07 6a90 	vmov	s15, r6
d005785c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0057860:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0057864:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0057868:	ee02 6a10 	vmov	s4, r6
d005786c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057870:	eba2 060a 	sub.w	r6, r2, sl
d0057874:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0057878:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005787c:	ee04 aa10 	vmov	s8, sl
d0057880:	ee02 6a90 	vmov	s5, r6
d0057884:	eba0 0603 	sub.w	r6, r0, r3
d0057888:	eee4 3aa7 	vfma.f32	s7, s9, s15
d005788c:	ee07 3a90 	vmov	s15, r3
d0057890:	eea4 7a82 	vfma.f32	s14, s9, s4
d0057894:	ee03 6a10 	vmov	s6, r6
d0057898:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005789c:	9e01      	ldr	r6, [sp, #4]
d005789e:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00578a2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00578a6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00578aa:	eea4 4aa2 	vfma.f32	s8, s9, s5
d00578ae:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00578b2:	eee4 7a83 	vfma.f32	s15, s9, s6
d00578b6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00578ba:	edcd 3a02 	vstr	s7, [sp, #8]
d00578be:	f89d a008 	ldrb.w	sl, [sp, #8]
d00578c2:	ee17 3a10 	vmov	r3, s14
d00578c6:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00578ca:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00578ce:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00578d2:	ed8d 7a02 	vstr	s14, [sp, #8]
d00578d6:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00578da:	f89d b008 	ldrb.w	fp, [sp, #8]
d00578de:	edcd 7a03 	vstr	s15, [sp, #12]
d00578e2:	ea43 030b 	orr.w	r3, r3, fp
d00578e6:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00578ea:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00578ee:	f846 3f04 	str.w	r3, [r6, #4]!
d00578f2:	680b      	ldr	r3, [r1, #0]
d00578f4:	9601      	str	r6, [sp, #4]
d00578f6:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00578fa:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00578fe:	fa5f fa83 	uxtb.w	sl, r3
d0057902:	ee07 6a10 	vmov	s14, r6
d0057906:	eba5 060b 	sub.w	r6, r5, fp
d005790a:	ee04 ba10 	vmov	s8, fp
d005790e:	ee07 6a90 	vmov	s15, r6
d0057912:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0057916:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005791a:	f3c3 2307 	ubfx	r3, r3, #8, #8
d005791e:	ee02 6a10 	vmov	s4, r6
d0057922:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057926:	eba2 060a 	sub.w	r6, r2, sl
d005792a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005792e:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0057932:	ee04 aa10 	vmov	s8, sl
d0057936:	ee02 6a90 	vmov	s5, r6
d005793a:	eba0 0603 	sub.w	r6, r0, r3
d005793e:	eee5 3a27 	vfma.f32	s7, s10, s15
d0057942:	ee07 3a90 	vmov	s15, r3
d0057946:	eea5 7a02 	vfma.f32	s14, s10, s4
d005794a:	ee03 6a10 	vmov	s6, r6
d005794e:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0057952:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0057956:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005795a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005795e:	eea5 4a22 	vfma.f32	s8, s10, s5
d0057962:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0057966:	eee5 7a03 	vfma.f32	s15, s10, s6
d005796a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005796e:	edcd 3a02 	vstr	s7, [sp, #8]
d0057972:	f89d a008 	ldrb.w	sl, [sp, #8]
d0057976:	ee17 3a10 	vmov	r3, s14
d005797a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d005797e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0057982:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0057986:	ed8d 7a02 	vstr	s14, [sp, #8]
d005798a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d005798e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0057992:	edcd 7a03 	vstr	s15, [sp, #12]
d0057996:	ea43 030b 	orr.w	r3, r3, fp
d005799a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d005799e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00579a2:	f848 3f04 	str.w	r3, [r8, #4]!
d00579a6:	680b      	ldr	r3, [r1, #0]
d00579a8:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00579ac:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00579b0:	fa5f fa83 	uxtb.w	sl, r3
d00579b4:	ee07 6a10 	vmov	s14, r6
d00579b8:	eba5 060b 	sub.w	r6, r5, fp
d00579bc:	ee04 ba10 	vmov	s8, fp
d00579c0:	ee07 6a90 	vmov	s15, r6
d00579c4:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00579c8:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00579cc:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00579d0:	ee02 6a10 	vmov	s4, r6
d00579d4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00579d8:	eba2 060a 	sub.w	r6, r2, sl
d00579dc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00579e0:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00579e4:	ee04 aa10 	vmov	s8, sl
d00579e8:	ee02 6a90 	vmov	s5, r6
d00579ec:	eba0 0603 	sub.w	r6, r0, r3
d00579f0:	eee5 3aa7 	vfma.f32	s7, s11, s15
d00579f4:	ee07 3a90 	vmov	s15, r3
d00579f8:	eea5 7a82 	vfma.f32	s14, s11, s4
d00579fc:	ee03 6a10 	vmov	s6, r6
d0057a00:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0057a04:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0057a08:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0057a0c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057a10:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0057a14:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0057a18:	eee5 7a83 	vfma.f32	s15, s11, s6
d0057a1c:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0057a20:	edcd 3a02 	vstr	s7, [sp, #8]
d0057a24:	f89d a008 	ldrb.w	sl, [sp, #8]
d0057a28:	ee17 3a10 	vmov	r3, s14
d0057a2c:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0057a30:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0057a34:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0057a38:	ed8d 7a02 	vstr	s14, [sp, #8]
d0057a3c:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0057a40:	f89d b008 	ldrb.w	fp, [sp, #8]
d0057a44:	edcd 7a03 	vstr	s15, [sp, #12]
d0057a48:	ea43 030b 	orr.w	r3, r3, fp
d0057a4c:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0057a50:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0057a54:	f84e 3f04 	str.w	r3, [lr, #4]!
d0057a58:	680b      	ldr	r3, [r1, #0]
d0057a5a:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0057a5e:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0057a62:	fa5f fa83 	uxtb.w	sl, r3
d0057a66:	ee07 6a10 	vmov	s14, r6
d0057a6a:	eba5 060b 	sub.w	r6, r5, fp
d0057a6e:	ee04 ba10 	vmov	s8, fp
d0057a72:	ee07 6a90 	vmov	s15, r6
d0057a76:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0057a7a:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0057a7e:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0057a82:	ee02 6a10 	vmov	s4, r6
d0057a86:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057a8a:	eba2 060a 	sub.w	r6, r2, sl
d0057a8e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0057a92:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0057a96:	ee04 aa10 	vmov	s8, sl
d0057a9a:	ee02 6a90 	vmov	s5, r6
d0057a9e:	eba0 0603 	sub.w	r6, r0, r3
d0057aa2:	eee6 3a27 	vfma.f32	s7, s12, s15
d0057aa6:	ee07 3a90 	vmov	s15, r3
d0057aaa:	eea6 7a02 	vfma.f32	s14, s12, s4
d0057aae:	ee03 6a10 	vmov	s6, r6
d0057ab2:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0057ab6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0057aba:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0057abe:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057ac2:	eea6 4a22 	vfma.f32	s8, s12, s5
d0057ac6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0057aca:	eee6 7a03 	vfma.f32	s15, s12, s6
d0057ace:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0057ad2:	edcd 3a02 	vstr	s7, [sp, #8]
d0057ad6:	f89d a008 	ldrb.w	sl, [sp, #8]
d0057ada:	ee17 3a10 	vmov	r3, s14
d0057ade:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0057ae2:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0057ae6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0057aea:	ed8d 7a02 	vstr	s14, [sp, #8]
d0057aee:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0057af2:	f89d b008 	ldrb.w	fp, [sp, #8]
d0057af6:	edcd 7a03 	vstr	s15, [sp, #12]
d0057afa:	ea43 030b 	orr.w	r3, r3, fp
d0057afe:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0057b02:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0057b06:	f84c 3f04 	str.w	r3, [ip, #4]!
d0057b0a:	680b      	ldr	r3, [r1, #0]
d0057b0c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0057b10:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0057b14:	fa5f fa83 	uxtb.w	sl, r3
d0057b18:	ee07 6a10 	vmov	s14, r6
d0057b1c:	eba5 060b 	sub.w	r6, r5, fp
d0057b20:	ee04 ba10 	vmov	s8, fp
d0057b24:	ee07 6a90 	vmov	s15, r6
d0057b28:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0057b2c:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0057b30:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0057b34:	ee02 6a10 	vmov	s4, r6
d0057b38:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057b3c:	eba2 060a 	sub.w	r6, r2, sl
d0057b40:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0057b44:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0057b48:	ee04 aa10 	vmov	s8, sl
d0057b4c:	ee02 6a90 	vmov	s5, r6
d0057b50:	eba0 0603 	sub.w	r6, r0, r3
d0057b54:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0057b58:	ee07 3a90 	vmov	s15, r3
d0057b5c:	eea6 7a82 	vfma.f32	s14, s13, s4
d0057b60:	ee03 6a10 	vmov	s6, r6
d0057b64:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0057b68:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0057b6c:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0057b70:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057b74:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0057b78:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0057b7c:	eee6 7a83 	vfma.f32	s15, s13, s6
d0057b80:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0057b84:	edcd 3a02 	vstr	s7, [sp, #8]
d0057b88:	f89d a008 	ldrb.w	sl, [sp, #8]
d0057b8c:	ee17 3a10 	vmov	r3, s14
d0057b90:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0057b94:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0057b98:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0057b9c:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0057ba0:	ed8d 7a02 	vstr	s14, [sp, #8]
d0057ba4:	f89d b008 	ldrb.w	fp, [sp, #8]
d0057ba8:	edcd 7a03 	vstr	s15, [sp, #12]
d0057bac:	ea43 030b 	orr.w	r3, r3, fp
d0057bb0:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0057bb4:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0057bb8:	f847 3f04 	str.w	r3, [r7, #4]!
d0057bbc:	f47f ae3e 	bne.w	d005783c <buildLightingCLUT+0xb0>
d0057bc0:	b005      	add	sp, #20
d0057bc2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057bc6:	bf00      	nop

d0057bc8 <brightnessToShadeF>:
d0057bc8:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0057bcc:	eddf 7a09 	vldr	s15, [pc, #36]	; d0057bf4 <brightnessToShadeF+0x2c>
d0057bd0:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0057bd4:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0057bd8:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0057bdc:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0057be0:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0057be4:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0057be8:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0057bec:	ee27 0a00 	vmul.f32	s0, s14, s0
d0057bf0:	4770      	bx	lr
d0057bf2:	bf00      	nop
d0057bf4:	00000000 	.word	0x00000000

d0057bf8 <lightSetRanges>:
d0057bf8:	2800      	cmp	r0, #0
d0057bfa:	db0c      	blt.n	d0057c16 <lightSetRanges+0x1e>
d0057bfc:	4b06      	ldr	r3, [pc, #24]	; (d0057c18 <lightSetRanges+0x20>)
d0057bfe:	681b      	ldr	r3, [r3, #0]
d0057c00:	4283      	cmp	r3, r0
d0057c02:	dd08      	ble.n	d0057c16 <lightSetRanges+0x1e>
d0057c04:	4b05      	ldr	r3, [pc, #20]	; (d0057c1c <lightSetRanges+0x24>)
d0057c06:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0057c0a:	ed80 0a08 	vstr	s0, [r0, #32]
d0057c0e:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0057c12:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d0057c16:	4770      	bx	lr
d0057c18:	d0061a60 	.word	0xd0061a60
d0057c1c:	d0061a80 	.word	0xd0061a80

d0057c20 <lightsGet>:
d0057c20:	4800      	ldr	r0, [pc, #0]	; (d0057c24 <lightsGet+0x4>)
d0057c22:	4770      	bx	lr
d0057c24:	d0061a80 	.word	0xd0061a80

d0057c28 <lightsGetCount>:
d0057c28:	4b01      	ldr	r3, [pc, #4]	; (d0057c30 <lightsGetCount+0x8>)
d0057c2a:	6818      	ldr	r0, [r3, #0]
d0057c2c:	4770      	bx	lr
d0057c2e:	bf00      	nop
d0057c30:	d0061a60 	.word	0xd0061a60

d0057c34 <lightsClear>:
d0057c34:	4b01      	ldr	r3, [pc, #4]	; (d0057c3c <lightsClear+0x8>)
d0057c36:	2200      	movs	r2, #0
d0057c38:	601a      	str	r2, [r3, #0]
d0057c3a:	4770      	bx	lr
d0057c3c:	d0061a60 	.word	0xd0061a60

d0057c40 <lightEnable>:
d0057c40:	4b04      	ldr	r3, [pc, #16]	; (d0057c54 <lightEnable+0x14>)
d0057c42:	681b      	ldr	r3, [r3, #0]
d0057c44:	4298      	cmp	r0, r3
d0057c46:	da03      	bge.n	d0057c50 <lightEnable+0x10>
d0057c48:	4b03      	ldr	r3, [pc, #12]	; (d0057c58 <lightEnable+0x18>)
d0057c4a:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0057c4e:	62c1      	str	r1, [r0, #44]	; 0x2c
d0057c50:	4770      	bx	lr
d0057c52:	bf00      	nop
d0057c54:	d0061a60 	.word	0xd0061a60
d0057c58:	d0061a80 	.word	0xd0061a80

d0057c5c <addPointLight>:
d0057c5c:	4918      	ldr	r1, [pc, #96]	; (d0057cc0 <addPointLight+0x64>)
d0057c5e:	b5f0      	push	{r4, r5, r6, r7, lr}
d0057c60:	680c      	ldr	r4, [r1, #0]
d0057c62:	b085      	sub	sp, #20
d0057c64:	2c07      	cmp	r4, #7
d0057c66:	ed8d 0a01 	vstr	s0, [sp, #4]
d0057c6a:	edcd 0a02 	vstr	s1, [sp, #8]
d0057c6e:	ed8d 1a03 	vstr	s2, [sp, #12]
d0057c72:	dc21      	bgt.n	d0057cb8 <addPointLight+0x5c>
d0057c74:	4d13      	ldr	r5, [pc, #76]	; (d0057cc4 <addPointLight+0x68>)
d0057c76:	01a2      	lsls	r2, r4, #6
d0057c78:	2600      	movs	r6, #0
d0057c7a:	f8df e050 	ldr.w	lr, [pc, #80]	; d0057ccc <addPointLight+0x70>
d0057c7e:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d0057c82:	f8df c04c 	ldr.w	ip, [pc, #76]	; d0057cd0 <addPointLight+0x74>
d0057c86:	54ae      	strb	r6, [r5, r2]
d0057c88:	2200      	movs	r2, #0
d0057c8a:	4f0f      	ldr	r7, [pc, #60]	; (d0057cc8 <addPointLight+0x6c>)
d0057c8c:	1d1d      	adds	r5, r3, #4
d0057c8e:	62d8      	str	r0, [r3, #44]	; 0x2c
d0057c90:	1c66      	adds	r6, r4, #1
d0057c92:	611a      	str	r2, [r3, #16]
d0057c94:	615a      	str	r2, [r3, #20]
d0057c96:	619a      	str	r2, [r3, #24]
d0057c98:	edc3 1a07 	vstr	s3, [r3, #28]
d0057c9c:	f8c3 e020 	str.w	lr, [r3, #32]
d0057ca0:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d0057ca4:	629f      	str	r7, [r3, #40]	; 0x28
d0057ca6:	ab04      	add	r3, sp, #16
d0057ca8:	600e      	str	r6, [r1, #0]
d0057caa:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d0057cae:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0057cb2:	4620      	mov	r0, r4
d0057cb4:	b005      	add	sp, #20
d0057cb6:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0057cb8:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0057cbc:	e7f9      	b.n	d0057cb2 <addPointLight+0x56>
d0057cbe:	bf00      	nop
d0057cc0:	d0061a60 	.word	0xd0061a60
d0057cc4:	d0061a80 	.word	0xd0061a80
d0057cc8:	44020000 	.word	0x44020000
d0057ccc:	42c80000 	.word	0x42c80000
d0057cd0:	43660000 	.word	0x43660000

d0057cd4 <addDirectionalLight>:
d0057cd4:	b5f0      	push	{r4, r5, r6, r7, lr}
d0057cd6:	4f15      	ldr	r7, [pc, #84]	; (d0057d2c <addDirectionalLight+0x58>)
d0057cd8:	683d      	ldr	r5, [r7, #0]
d0057cda:	2d07      	cmp	r5, #7
d0057cdc:	ed2d 8b02 	vpush	{d8}
d0057ce0:	b085      	sub	sp, #20
d0057ce2:	dc1f      	bgt.n	d0057d24 <addDirectionalLight+0x50>
d0057ce4:	4912      	ldr	r1, [pc, #72]	; (d0057d30 <addDirectionalLight+0x5c>)
d0057ce6:	2300      	movs	r3, #0
d0057ce8:	4606      	mov	r6, r0
d0057cea:	01aa      	lsls	r2, r5, #6
d0057cec:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0057cf0:	2001      	movs	r0, #1
d0057cf2:	eeb0 8a61 	vmov.f32	s16, s3
d0057cf6:	6063      	str	r3, [r4, #4]
d0057cf8:	60a3      	str	r3, [r4, #8]
d0057cfa:	60e3      	str	r3, [r4, #12]
d0057cfc:	5488      	strb	r0, [r1, r2]
d0057cfe:	f7fd fd7b 	bl	d00557f8 <vec3Normalize>
d0057d02:	683b      	ldr	r3, [r7, #0]
d0057d04:	ed84 8a07 	vstr	s16, [r4, #28]
d0057d08:	3301      	adds	r3, #1
d0057d0a:	62e6      	str	r6, [r4, #44]	; 0x2c
d0057d0c:	ed84 0a04 	vstr	s0, [r4, #16]
d0057d10:	edc4 0a05 	vstr	s1, [r4, #20]
d0057d14:	ed84 1a06 	vstr	s2, [r4, #24]
d0057d18:	603b      	str	r3, [r7, #0]
d0057d1a:	4628      	mov	r0, r5
d0057d1c:	b005      	add	sp, #20
d0057d1e:	ecbd 8b02 	vpop	{d8}
d0057d22:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0057d24:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0057d28:	e7f7      	b.n	d0057d1a <addDirectionalLight+0x46>
d0057d2a:	bf00      	nop
d0057d2c:	d0061a60 	.word	0xd0061a60
d0057d30:	d0061a80 	.word	0xd0061a80

d0057d34 <lightSetPosition>:
d0057d34:	b084      	sub	sp, #16
d0057d36:	2800      	cmp	r0, #0
d0057d38:	ed8d 0a01 	vstr	s0, [sp, #4]
d0057d3c:	edcd 0a02 	vstr	s1, [sp, #8]
d0057d40:	ed8d 1a03 	vstr	s2, [sp, #12]
d0057d44:	db0c      	blt.n	d0057d60 <lightSetPosition+0x2c>
d0057d46:	4b07      	ldr	r3, [pc, #28]	; (d0057d64 <lightSetPosition+0x30>)
d0057d48:	681b      	ldr	r3, [r3, #0]
d0057d4a:	4283      	cmp	r3, r0
d0057d4c:	dd08      	ble.n	d0057d60 <lightSetPosition+0x2c>
d0057d4e:	4b06      	ldr	r3, [pc, #24]	; (d0057d68 <lightSetPosition+0x34>)
d0057d50:	aa04      	add	r2, sp, #16
d0057d52:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d0057d56:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0057d5a:	3304      	adds	r3, #4
d0057d5c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0057d60:	b004      	add	sp, #16
d0057d62:	4770      	bx	lr
d0057d64:	d0061a60 	.word	0xd0061a60
d0057d68:	d0061a80 	.word	0xd0061a80

d0057d6c <lightSetIntensity>:
d0057d6c:	2800      	cmp	r0, #0
d0057d6e:	db08      	blt.n	d0057d82 <lightSetIntensity+0x16>
d0057d70:	4b04      	ldr	r3, [pc, #16]	; (d0057d84 <lightSetIntensity+0x18>)
d0057d72:	681b      	ldr	r3, [r3, #0]
d0057d74:	4283      	cmp	r3, r0
d0057d76:	dd04      	ble.n	d0057d82 <lightSetIntensity+0x16>
d0057d78:	4b03      	ldr	r3, [pc, #12]	; (d0057d88 <lightSetIntensity+0x1c>)
d0057d7a:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0057d7e:	ed80 0a07 	vstr	s0, [r0, #28]
d0057d82:	4770      	bx	lr
d0057d84:	d0061a60 	.word	0xd0061a60
d0057d88:	d0061a80 	.word	0xd0061a80

d0057d8c <setDefaultRenderMode>:
d0057d8c:	2300      	movs	r3, #0
d0057d8e:	4803      	ldr	r0, [pc, #12]	; (d0057d9c <setDefaultRenderMode+0x10>)
d0057d90:	4903      	ldr	r1, [pc, #12]	; (d0057da0 <setDefaultRenderMode+0x14>)
d0057d92:	4a04      	ldr	r2, [pc, #16]	; (d0057da4 <setDefaultRenderMode+0x18>)
d0057d94:	6003      	str	r3, [r0, #0]
d0057d96:	600b      	str	r3, [r1, #0]
d0057d98:	6013      	str	r3, [r2, #0]
d0057d9a:	4770      	bx	lr
d0057d9c:	d006dc88 	.word	0xd006dc88
d0057da0:	d00edca0 	.word	0xd00edca0
d0057da4:	d00edca4 	.word	0xd00edca4

d0057da8 <enableFlatMode>:
d0057da8:	4b01      	ldr	r3, [pc, #4]	; (d0057db0 <enableFlatMode+0x8>)
d0057daa:	6018      	str	r0, [r3, #0]
d0057dac:	4770      	bx	lr
d0057dae:	bf00      	nop
d0057db0:	d006dc88 	.word	0xd006dc88

d0057db4 <clipTriangleToFrustum>:
d0057db4:	4bd1      	ldr	r3, [pc, #836]	; (d00580fc <clipTriangleToFrustum+0x348>)
d0057db6:	4ad2      	ldr	r2, [pc, #840]	; (d0058100 <clipTriangleToFrustum+0x34c>)
d0057db8:	681b      	ldr	r3, [r3, #0]
d0057dba:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0057dbe:	b08a      	sub	sp, #40	; 0x28
d0057dc0:	6814      	ldr	r4, [r2, #0]
d0057dc2:	ed8d 0a07 	vstr	s0, [sp, #28]
d0057dc6:	edcd 0a08 	vstr	s1, [sp, #32]
d0057dca:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0057dce:	edcd 1a04 	vstr	s3, [sp, #16]
d0057dd2:	ed8d 2a05 	vstr	s4, [sp, #20]
d0057dd6:	edcd 2a06 	vstr	s5, [sp, #24]
d0057dda:	ed8d 3a01 	vstr	s6, [sp, #4]
d0057dde:	edcd 3a02 	vstr	s7, [sp, #8]
d0057de2:	ed8d 4a03 	vstr	s8, [sp, #12]
d0057de6:	2b00      	cmp	r3, #0
d0057de8:	f000 826b 	beq.w	d00582c2 <clipTriangleToFrustum+0x50e>
d0057dec:	2c00      	cmp	r4, #0
d0057dee:	f000 8268 	beq.w	d00582c2 <clipTriangleToFrustum+0x50e>
d0057df2:	aa0a      	add	r2, sp, #40	; 0x28
d0057df4:	edd1 7a10 	vldr	s15, [r1, #64]	; 0x40
d0057df8:	ed91 3a15 	vldr	s6, [r1, #84]	; 0x54
d0057dfc:	af04      	add	r7, sp, #16
d0057dfe:	4605      	mov	r5, r0
d0057e00:	f103 060c 	add.w	r6, r3, #12
d0057e04:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0057e08:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0057e0c:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d0057e10:	af01      	add	r7, sp, #4
d0057e12:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0057e16:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d0057e1a:	f103 0618 	add.w	r6, r3, #24
d0057e1e:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0057e22:	edd3 6a08 	vldr	s13, [r3, #32]
d0057e26:	ed93 7a02 	vldr	s14, [r3, #8]
d0057e2a:	ee36 6ae7 	vsub.f32	s12, s13, s15
d0057e2e:	edd3 3a06 	vldr	s7, [r3, #24]
d0057e32:	ee37 4a67 	vsub.f32	s8, s14, s15
d0057e36:	edd3 5a07 	vldr	s11, [r3, #28]
d0057e3a:	ed93 5a00 	vldr	s10, [r3]
d0057e3e:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0057e42:	edd3 4a01 	vldr	s9, [r3, #4]
d0057e46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e4a:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d0057e4e:	bfac      	ite	ge
d0057e50:	2201      	movge	r2, #1
d0057e52:	2200      	movlt	r2, #0
d0057e54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e58:	bfac      	ite	ge
d0057e5a:	2101      	movge	r1, #1
d0057e5c:	2100      	movlt	r1, #0
d0057e5e:	2a00      	cmp	r2, #0
d0057e60:	f000 8234 	beq.w	d00582cc <clipTriangleToFrustum+0x518>
d0057e64:	2900      	cmp	r1, #0
d0057e66:	f000 8231 	beq.w	d00582cc <clipTriangleToFrustum+0x518>
d0057e6a:	2201      	movs	r2, #1
d0057e6c:	ed84 5a00 	vstr	s10, [r4]
d0057e70:	edc4 4a01 	vstr	s9, [r4, #4]
d0057e74:	ed84 7a02 	vstr	s14, [r4, #8]
d0057e78:	edd3 2a05 	vldr	s5, [r3, #20]
d0057e7c:	f001 0001 	and.w	r0, r1, #1
d0057e80:	edd3 5a03 	vldr	s11, [r3, #12]
d0057e84:	ee72 6ae7 	vsub.f32	s13, s5, s15
d0057e88:	ed93 6a04 	vldr	s12, [r3, #16]
d0057e8c:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057e90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e94:	bfb6      	itet	lt
d0057e96:	2000      	movlt	r0, #0
d0057e98:	2601      	movge	r6, #1
d0057e9a:	2600      	movlt	r6, #0
d0057e9c:	2800      	cmp	r0, #0
d0057e9e:	f000 8244 	beq.w	d005832a <clipTriangleToFrustum+0x576>
d0057ea2:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057ea6:	3201      	adds	r2, #1
d0057ea8:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0057eac:	edc1 5a00 	vstr	s11, [r1]
d0057eb0:	ed81 6a01 	vstr	s12, [r1, #4]
d0057eb4:	edc1 2a02 	vstr	s5, [r1, #8]
d0057eb8:	ed93 7a08 	vldr	s14, [r3, #32]
d0057ebc:	ed93 4a06 	vldr	s8, [r3, #24]
d0057ec0:	ee37 5a67 	vsub.f32	s10, s14, s15
d0057ec4:	edd3 4a07 	vldr	s9, [r3, #28]
d0057ec8:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0057ecc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ed0:	bfac      	ite	ge
d0057ed2:	2101      	movge	r1, #1
d0057ed4:	2100      	movlt	r1, #0
d0057ed6:	f2c0 825c 	blt.w	d0058392 <clipTriangleToFrustum+0x5de>
d0057eda:	2800      	cmp	r0, #0
d0057edc:	f000 8259 	beq.w	d0058392 <clipTriangleToFrustum+0x5de>
d0057ee0:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057ee4:	3201      	adds	r2, #1
d0057ee6:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0057eea:	ed81 4a00 	vstr	s8, [r1]
d0057eee:	edc1 4a01 	vstr	s9, [r1, #4]
d0057ef2:	ed81 7a02 	vstr	s14, [r1, #8]
d0057ef6:	2a02      	cmp	r2, #2
d0057ef8:	f340 81e3 	ble.w	d00582c2 <clipTriangleToFrustum+0x50e>
d0057efc:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d0057f00:	4626      	mov	r6, r4
d0057f02:	4620      	mov	r0, r4
d0057f04:	2200      	movs	r2, #0
d0057f06:	00bf      	lsls	r7, r7, #2
d0057f08:	f1a7 010c 	sub.w	r1, r7, #12
d0057f0c:	4427      	add	r7, r4
d0057f0e:	4421      	add	r1, r4
d0057f10:	ed91 7a00 	vldr	s14, [r1]
d0057f14:	edd1 7a02 	vldr	s15, [r1, #8]
d0057f18:	ed91 6a01 	vldr	s12, [r1, #4]
d0057f1c:	ee77 6a27 	vadd.f32	s13, s14, s15
d0057f20:	e009      	b.n	d0057f36 <clipTriangleToFrustum+0x182>
d0057f22:	3201      	adds	r2, #1
d0057f24:	ed81 7a00 	vstr	s14, [r1]
d0057f28:	ed81 6a01 	vstr	s12, [r1, #4]
d0057f2c:	edc1 7a02 	vstr	s15, [r1, #8]
d0057f30:	300c      	adds	r0, #12
d0057f32:	4287      	cmp	r7, r0
d0057f34:	d053      	beq.n	d0057fde <clipTriangleToFrustum+0x22a>
d0057f36:	eeb0 4a47 	vmov.f32	s8, s14
d0057f3a:	ed90 7a00 	vldr	s14, [r0]
d0057f3e:	eeb0 5a67 	vmov.f32	s10, s15
d0057f42:	edd0 7a02 	vldr	s15, [r0, #8]
d0057f46:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057f4a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057f4e:	eef0 5a66 	vmov.f32	s11, s13
d0057f52:	ee77 6a27 	vadd.f32	s13, s14, s15
d0057f56:	eb03 0181 	add.w	r1, r3, r1, lsl #2
d0057f5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f5e:	eef0 4a46 	vmov.f32	s9, s12
d0057f62:	ed90 6a01 	vldr	s12, [r0, #4]
d0057f66:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057f6a:	bfac      	ite	ge
d0057f6c:	f04f 0c01 	movge.w	ip, #1
d0057f70:	f04f 0c00 	movlt.w	ip, #0
d0057f74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f78:	bfac      	ite	ge
d0057f7a:	f04f 0e01 	movge.w	lr, #1
d0057f7e:	f04f 0e00 	movlt.w	lr, #0
d0057f82:	f1bc 0f00 	cmp.w	ip, #0
d0057f86:	d002      	beq.n	d0057f8e <clipTriangleToFrustum+0x1da>
d0057f88:	f1be 0f00 	cmp.w	lr, #0
d0057f8c:	d1c9      	bne.n	d0057f22 <clipTriangleToFrustum+0x16e>
d0057f8e:	eef5 6a40 	vcmp.f32	s13, #0.0
d0057f92:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057f96:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0057f9a:	ee77 1a44 	vsub.f32	s3, s14, s8
d0057f9e:	eb03 0181 	add.w	r1, r3, r1, lsl #2
d0057fa2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fa6:	ee36 2a64 	vsub.f32	s4, s12, s9
d0057faa:	ee77 2ac5 	vsub.f32	s5, s15, s10
d0057fae:	f140 8219 	bpl.w	d00583e4 <clipTriangleToFrustum+0x630>
d0057fb2:	f1bc 0f00 	cmp.w	ip, #0
d0057fb6:	f000 8215 	beq.w	d00583e4 <clipTriangleToFrustum+0x630>
d0057fba:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0057fbe:	300c      	adds	r0, #12
d0057fc0:	3201      	adds	r2, #1
d0057fc2:	4287      	cmp	r7, r0
d0057fc4:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0057fc8:	eee2 4a23 	vfma.f32	s9, s4, s7
d0057fcc:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0057fd0:	ed81 4a00 	vstr	s8, [r1]
d0057fd4:	edc1 4a01 	vstr	s9, [r1, #4]
d0057fd8:	ed81 5a02 	vstr	s10, [r1, #8]
d0057fdc:	d1ab      	bne.n	d0057f36 <clipTriangleToFrustum+0x182>
d0057fde:	2a02      	cmp	r2, #2
d0057fe0:	f340 816f 	ble.w	d00582c2 <clipTriangleToFrustum+0x50e>
d0057fe4:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0057fe8:	461f      	mov	r7, r3
d0057fea:	469c      	mov	ip, r3
d0057fec:	2100      	movs	r1, #0
d0057fee:	0092      	lsls	r2, r2, #2
d0057ff0:	f1a2 000c 	sub.w	r0, r2, #12
d0057ff4:	441a      	add	r2, r3
d0057ff6:	4418      	add	r0, r3
d0057ff8:	edd0 7a00 	vldr	s15, [r0]
d0057ffc:	ed90 7a02 	vldr	s14, [r0, #8]
d0058000:	ed90 6a01 	vldr	s12, [r0, #4]
d0058004:	ee77 6a67 	vsub.f32	s13, s14, s15
d0058008:	e00a      	b.n	d0058020 <clipTriangleToFrustum+0x26c>
d005800a:	3101      	adds	r1, #1
d005800c:	edc0 7a00 	vstr	s15, [r0]
d0058010:	ed80 6a01 	vstr	s12, [r0, #4]
d0058014:	ed80 7a02 	vstr	s14, [r0, #8]
d0058018:	f10c 0c0c 	add.w	ip, ip, #12
d005801c:	4562      	cmp	r2, ip
d005801e:	d056      	beq.n	d00580ce <clipTriangleToFrustum+0x31a>
d0058020:	eeb0 4a67 	vmov.f32	s8, s15
d0058024:	eddc 7a00 	vldr	s15, [ip]
d0058028:	eeb0 5a47 	vmov.f32	s10, s14
d005802c:	ed9c 7a02 	vldr	s14, [ip, #8]
d0058030:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0058034:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0058038:	eef0 5a66 	vmov.f32	s11, s13
d005803c:	ee77 6a67 	vsub.f32	s13, s14, s15
d0058040:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d0058044:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058048:	eef0 4a46 	vmov.f32	s9, s12
d005804c:	ed9c 6a01 	vldr	s12, [ip, #4]
d0058050:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0058054:	bfac      	ite	ge
d0058056:	f04f 0e01 	movge.w	lr, #1
d005805a:	f04f 0e00 	movlt.w	lr, #0
d005805e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058062:	bfac      	ite	ge
d0058064:	f04f 0801 	movge.w	r8, #1
d0058068:	f04f 0800 	movlt.w	r8, #0
d005806c:	f1be 0f00 	cmp.w	lr, #0
d0058070:	d002      	beq.n	d0058078 <clipTriangleToFrustum+0x2c4>
d0058072:	f1b8 0f00 	cmp.w	r8, #0
d0058076:	d1c8      	bne.n	d005800a <clipTriangleToFrustum+0x256>
d0058078:	eef5 6a40 	vcmp.f32	s13, #0.0
d005807c:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0058080:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0058084:	ee37 1ac4 	vsub.f32	s2, s15, s8
d0058088:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d005808c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058090:	ee76 1a64 	vsub.f32	s3, s12, s9
d0058094:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0058098:	ee37 2a45 	vsub.f32	s4, s14, s10
d005809c:	f140 81d1 	bpl.w	d0058442 <clipTriangleToFrustum+0x68e>
d00580a0:	f1be 0f00 	cmp.w	lr, #0
d00580a4:	f000 81cd 	beq.w	d0058442 <clipTriangleToFrustum+0x68e>
d00580a8:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d00580ac:	f10c 0c0c 	add.w	ip, ip, #12
d00580b0:	3101      	adds	r1, #1
d00580b2:	4562      	cmp	r2, ip
d00580b4:	eea1 4a22 	vfma.f32	s8, s2, s5
d00580b8:	eee1 4aa2 	vfma.f32	s9, s3, s5
d00580bc:	eea2 5a22 	vfma.f32	s10, s4, s5
d00580c0:	ed80 4a00 	vstr	s8, [r0]
d00580c4:	edc0 4a01 	vstr	s9, [r0, #4]
d00580c8:	ed80 5a02 	vstr	s10, [r0, #8]
d00580cc:	d1a8      	bne.n	d0058020 <clipTriangleToFrustum+0x26c>
d00580ce:	2902      	cmp	r1, #2
d00580d0:	f340 80f7 	ble.w	d00582c2 <clipTriangleToFrustum+0x50e>
d00580d4:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d00580d8:	2100      	movs	r1, #0
d00580da:	0092      	lsls	r2, r2, #2
d00580dc:	f1a2 000c 	sub.w	r0, r2, #12
d00580e0:	4422      	add	r2, r4
d00580e2:	4420      	add	r0, r4
d00580e4:	edd0 7a01 	vldr	s15, [r0, #4]
d00580e8:	ed90 7a02 	vldr	s14, [r0, #8]
d00580ec:	eef0 6a67 	vmov.f32	s13, s15
d00580f0:	ed90 6a00 	vldr	s12, [r0]
d00580f4:	eed3 6a07 	vfnms.f32	s13, s6, s14
d00580f8:	e011      	b.n	d005811e <clipTriangleToFrustum+0x36a>
d00580fa:	bf00      	nop
d00580fc:	d006dc80 	.word	0xd006dc80
d0058100:	d006dc84 	.word	0xd006dc84
d0058104:	f1be 0f00 	cmp.w	lr, #0
d0058108:	d034      	beq.n	d0058174 <clipTriangleToFrustum+0x3c0>
d005810a:	3101      	adds	r1, #1
d005810c:	ed80 6a00 	vstr	s12, [r0]
d0058110:	edc0 7a01 	vstr	s15, [r0, #4]
d0058114:	ed80 7a02 	vstr	s14, [r0, #8]
d0058118:	360c      	adds	r6, #12
d005811a:	4296      	cmp	r6, r2
d005811c:	d054      	beq.n	d00581c8 <clipTriangleToFrustum+0x414>
d005811e:	eeb0 5a47 	vmov.f32	s10, s14
d0058122:	ed96 7a02 	vldr	s14, [r6, #8]
d0058126:	eef0 4a67 	vmov.f32	s9, s15
d005812a:	edd6 7a01 	vldr	s15, [r6, #4]
d005812e:	ee63 3a07 	vmul.f32	s7, s6, s14
d0058132:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0058136:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d005813a:	eef0 5a66 	vmov.f32	s11, s13
d005813e:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0058142:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0058146:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005814a:	eeb0 4a46 	vmov.f32	s8, s12
d005814e:	ed96 6a00 	vldr	s12, [r6]
d0058152:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0058156:	bfac      	ite	ge
d0058158:	f04f 0c01 	movge.w	ip, #1
d005815c:	f04f 0c00 	movlt.w	ip, #0
d0058160:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058164:	bfac      	ite	ge
d0058166:	f04f 0e01 	movge.w	lr, #1
d005816a:	f04f 0e00 	movlt.w	lr, #0
d005816e:	f1bc 0f00 	cmp.w	ip, #0
d0058172:	d1c7      	bne.n	d0058104 <clipTriangleToFrustum+0x350>
d0058174:	eef5 6a40 	vcmp.f32	s13, #0.0
d0058178:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d005817c:	ee77 2aa5 	vadd.f32	s5, s15, s11
d0058180:	ee36 1a44 	vsub.f32	s2, s12, s8
d0058184:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0058188:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005818c:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0058190:	ee72 2ae3 	vsub.f32	s5, s5, s7
d0058194:	ee37 2a45 	vsub.f32	s4, s14, s10
d0058198:	f140 8209 	bpl.w	d00585ae <clipTriangleToFrustum+0x7fa>
d005819c:	f1bc 0f00 	cmp.w	ip, #0
d00581a0:	f000 8205 	beq.w	d00585ae <clipTriangleToFrustum+0x7fa>
d00581a4:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d00581a8:	360c      	adds	r6, #12
d00581aa:	3101      	adds	r1, #1
d00581ac:	4296      	cmp	r6, r2
d00581ae:	eea1 4a23 	vfma.f32	s8, s2, s7
d00581b2:	eee1 4aa3 	vfma.f32	s9, s3, s7
d00581b6:	eea2 5a23 	vfma.f32	s10, s4, s7
d00581ba:	ed80 4a00 	vstr	s8, [r0]
d00581be:	edc0 4a01 	vstr	s9, [r0, #4]
d00581c2:	ed80 5a02 	vstr	s10, [r0, #8]
d00581c6:	d1aa      	bne.n	d005811e <clipTriangleToFrustum+0x36a>
d00581c8:	2902      	cmp	r1, #2
d00581ca:	dd7a      	ble.n	d00582c2 <clipTriangleToFrustum+0x50e>
d00581cc:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d00581d0:	2600      	movs	r6, #0
d00581d2:	0092      	lsls	r2, r2, #2
d00581d4:	f1a2 010c 	sub.w	r1, r2, #12
d00581d8:	441a      	add	r2, r3
d00581da:	440b      	add	r3, r1
d00581dc:	edd3 7a01 	vldr	s15, [r3, #4]
d00581e0:	ed93 7a02 	vldr	s14, [r3, #8]
d00581e4:	eef0 6a67 	vmov.f32	s13, s15
d00581e8:	ed93 6a00 	vldr	s12, [r3]
d00581ec:	eee3 6a07 	vfma.f32	s13, s6, s14
d00581f0:	e00a      	b.n	d0058208 <clipTriangleToFrustum+0x454>
d00581f2:	b378      	cbz	r0, d0058254 <clipTriangleToFrustum+0x4a0>
d00581f4:	3601      	adds	r6, #1
d00581f6:	ed83 6a00 	vstr	s12, [r3]
d00581fa:	edc3 7a01 	vstr	s15, [r3, #4]
d00581fe:	ed83 7a02 	vstr	s14, [r3, #8]
d0058202:	370c      	adds	r7, #12
d0058204:	4297      	cmp	r7, r2
d0058206:	d04c      	beq.n	d00582a2 <clipTriangleToFrustum+0x4ee>
d0058208:	eef0 4a67 	vmov.f32	s9, s15
d005820c:	edd7 7a01 	vldr	s15, [r7, #4]
d0058210:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0058214:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0058218:	eef0 5a66 	vmov.f32	s11, s13
d005821c:	eef0 6a67 	vmov.f32	s13, s15
d0058220:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d0058224:	eeb0 5a47 	vmov.f32	s10, s14
d0058228:	ed97 7a02 	vldr	s14, [r7, #8]
d005822c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058230:	eee3 6a07 	vfma.f32	s13, s6, s14
d0058234:	eeb0 4a46 	vmov.f32	s8, s12
d0058238:	ed97 6a00 	vldr	s12, [r7]
d005823c:	bfac      	ite	ge
d005823e:	2101      	movge	r1, #1
d0058240:	2100      	movlt	r1, #0
d0058242:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0058246:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005824a:	bfac      	ite	ge
d005824c:	2001      	movge	r0, #1
d005824e:	2000      	movlt	r0, #0
d0058250:	2900      	cmp	r1, #0
d0058252:	d1ce      	bne.n	d00581f2 <clipTriangleToFrustum+0x43e>
d0058254:	eef5 6a40 	vcmp.f32	s13, #0.0
d0058258:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d005825c:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0058260:	ee76 1a44 	vsub.f32	s3, s12, s8
d0058264:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d0058268:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005826c:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0058270:	ee77 2a45 	vsub.f32	s5, s14, s10
d0058274:	f140 81cc 	bpl.w	d0058610 <clipTriangleToFrustum+0x85c>
d0058278:	2900      	cmp	r1, #0
d005827a:	f000 81c9 	beq.w	d0058610 <clipTriangleToFrustum+0x85c>
d005827e:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0058282:	370c      	adds	r7, #12
d0058284:	3601      	adds	r6, #1
d0058286:	4297      	cmp	r7, r2
d0058288:	eea1 4aa3 	vfma.f32	s8, s3, s7
d005828c:	eee2 4a23 	vfma.f32	s9, s4, s7
d0058290:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0058294:	ed83 4a00 	vstr	s8, [r3]
d0058298:	edc3 4a01 	vstr	s9, [r3, #4]
d005829c:	ed83 5a02 	vstr	s10, [r3, #8]
d00582a0:	d1b2      	bne.n	d0058208 <clipTriangleToFrustum+0x454>
d00582a2:	2e02      	cmp	r6, #2
d00582a4:	dd0d      	ble.n	d00582c2 <clipTriangleToFrustum+0x50e>
d00582a6:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d00582aa:	2300      	movs	r3, #0
d00582ac:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
d00582b0:	18e2      	adds	r2, r4, r3
d00582b2:	18ef      	adds	r7, r5, r3
d00582b4:	330c      	adds	r3, #12
d00582b6:	ca07      	ldmia	r2, {r0, r1, r2}
d00582b8:	459c      	cmp	ip, r3
d00582ba:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d00582be:	d1f7      	bne.n	d00582b0 <clipTriangleToFrustum+0x4fc>
d00582c0:	e000      	b.n	d00582c4 <clipTriangleToFrustum+0x510>
d00582c2:	2600      	movs	r6, #0
d00582c4:	4630      	mov	r0, r6
d00582c6:	b00a      	add	sp, #40	; 0x28
d00582c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00582cc:	eeb5 4a40 	vcmp.f32	s8, #0.0
d00582d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00582d4:	f140 80e6 	bpl.w	d00584a4 <clipTriangleToFrustum+0x6f0>
d00582d8:	2a00      	cmp	r2, #0
d00582da:	f000 80e3 	beq.w	d00584a4 <clipTriangleToFrustum+0x6f0>
d00582de:	ee36 1ac7 	vsub.f32	s2, s13, s14
d00582e2:	2201      	movs	r2, #1
d00582e4:	ee75 1a63 	vsub.f32	s3, s10, s7
d00582e8:	ee34 2ae5 	vsub.f32	s4, s9, s11
d00582ec:	eec6 2a01 	vdiv.f32	s5, s12, s2
d00582f0:	ee37 6a66 	vsub.f32	s12, s14, s13
d00582f4:	eee2 5a82 	vfma.f32	s11, s5, s4
d00582f8:	eee2 6a86 	vfma.f32	s13, s5, s12
d00582fc:	eee2 3aa1 	vfma.f32	s7, s5, s3
d0058300:	edc4 5a01 	vstr	s11, [r4, #4]
d0058304:	edc4 6a02 	vstr	s13, [r4, #8]
d0058308:	edc4 3a00 	vstr	s7, [r4]
d005830c:	edd3 2a05 	vldr	s5, [r3, #20]
d0058310:	edd3 5a03 	vldr	s11, [r3, #12]
d0058314:	ee72 6ae7 	vsub.f32	s13, s5, s15
d0058318:	ed93 6a04 	vldr	s12, [r3, #16]
d005831c:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0058320:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058324:	bfac      	ite	ge
d0058326:	4616      	movge	r6, r2
d0058328:	2600      	movlt	r6, #0
d005832a:	eef5 6a40 	vcmp.f32	s13, #0.0
d005832e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058332:	f140 80de 	bpl.w	d00584f2 <clipTriangleToFrustum+0x73e>
d0058336:	2900      	cmp	r1, #0
d0058338:	f000 80db 	beq.w	d00584f2 <clipTriangleToFrustum+0x73e>
d005833c:	ee37 1a62 	vsub.f32	s2, s14, s5
d0058340:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0058344:	ee75 1ac5 	vsub.f32	s3, s11, s10
d0058348:	4630      	mov	r0, r6
d005834a:	ee36 2a64 	vsub.f32	s4, s12, s9
d005834e:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0058352:	eec4 3a01 	vdiv.f32	s7, s8, s2
d0058356:	3201      	adds	r2, #1
d0058358:	ee32 4ac7 	vsub.f32	s8, s5, s14
d005835c:	eea1 5aa3 	vfma.f32	s10, s3, s7
d0058360:	eea4 7a23 	vfma.f32	s14, s8, s7
d0058364:	eee2 4a23 	vfma.f32	s9, s4, s7
d0058368:	ed81 5a00 	vstr	s10, [r1]
d005836c:	ed81 7a02 	vstr	s14, [r1, #8]
d0058370:	edc1 4a01 	vstr	s9, [r1, #4]
d0058374:	ed93 7a08 	vldr	s14, [r3, #32]
d0058378:	ed93 4a06 	vldr	s8, [r3, #24]
d005837c:	ee37 5a67 	vsub.f32	s10, s14, s15
d0058380:	edd3 4a07 	vldr	s9, [r3, #28]
d0058384:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0058388:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005838c:	bfac      	ite	ge
d005838e:	2101      	movge	r1, #1
d0058390:	2100      	movlt	r1, #0
d0058392:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0058396:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005839a:	f140 80d9 	bpl.w	d0058550 <clipTriangleToFrustum+0x79c>
d005839e:	2800      	cmp	r0, #0
d00583a0:	f000 80d6 	beq.w	d0058550 <clipTriangleToFrustum+0x79c>
d00583a4:	ee77 3ac7 	vsub.f32	s7, s15, s14
d00583a8:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00583ac:	ee34 4a65 	vsub.f32	s8, s8, s11
d00583b0:	3201      	adds	r2, #1
d00583b2:	ee74 4ac6 	vsub.f32	s9, s9, s12
d00583b6:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d00583ba:	ee73 3aa6 	vadd.f32	s7, s7, s13
d00583be:	ee37 7a62 	vsub.f32	s14, s14, s5
d00583c2:	eef0 7a62 	vmov.f32	s15, s5
d00583c6:	ee86 5aa3 	vdiv.f32	s10, s13, s7
d00583ca:	eee4 5a05 	vfma.f32	s11, s8, s10
d00583ce:	eea4 6a85 	vfma.f32	s12, s9, s10
d00583d2:	eee7 7a05 	vfma.f32	s15, s14, s10
d00583d6:	edc1 5a00 	vstr	s11, [r1]
d00583da:	ed81 6a01 	vstr	s12, [r1, #4]
d00583de:	edc1 7a02 	vstr	s15, [r1, #8]
d00583e2:	e588      	b.n	d0057ef6 <clipTriangleToFrustum+0x142>
d00583e4:	eef5 5a40 	vcmp.f32	s11, #0.0
d00583e8:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00583ec:	ee35 1ae6 	vsub.f32	s2, s11, s13
d00583f0:	eb03 0c81 	add.w	ip, r3, r1, lsl #2
d00583f4:	ee77 1a44 	vsub.f32	s3, s14, s8
d00583f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00583fc:	4661      	mov	r1, ip
d00583fe:	ee36 2a64 	vsub.f32	s4, s12, s9
d0058402:	ee77 2ac5 	vsub.f32	s5, s15, s10
d0058406:	f10c 0c0c 	add.w	ip, ip, #12
d005840a:	f57f ad91 	bpl.w	d0057f30 <clipTriangleToFrustum+0x17c>
d005840e:	f1be 0f00 	cmp.w	lr, #0
d0058412:	f43f ad8d 	beq.w	d0057f30 <clipTriangleToFrustum+0x17c>
d0058416:	eec5 3a81 	vdiv.f32	s7, s11, s2
d005841a:	3202      	adds	r2, #2
d005841c:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0058420:	eee2 4a23 	vfma.f32	s9, s4, s7
d0058424:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0058428:	ed81 4a00 	vstr	s8, [r1]
d005842c:	edc1 4a01 	vstr	s9, [r1, #4]
d0058430:	ed81 5a02 	vstr	s10, [r1, #8]
d0058434:	ed8c 7a00 	vstr	s14, [ip]
d0058438:	ed8c 6a01 	vstr	s12, [ip, #4]
d005843c:	edcc 7a02 	vstr	s15, [ip, #8]
d0058440:	e576      	b.n	d0057f30 <clipTriangleToFrustum+0x17c>
d0058442:	eef5 5a40 	vcmp.f32	s11, #0.0
d0058446:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d005844a:	ee77 3aa5 	vadd.f32	s7, s15, s11
d005844e:	eb04 0e80 	add.w	lr, r4, r0, lsl #2
d0058452:	ee37 1ac4 	vsub.f32	s2, s15, s8
d0058456:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005845a:	4670      	mov	r0, lr
d005845c:	ee76 1a64 	vsub.f32	s3, s12, s9
d0058460:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0058464:	f10e 0e0c 	add.w	lr, lr, #12
d0058468:	ee37 2a45 	vsub.f32	s4, s14, s10
d005846c:	f57f add4 	bpl.w	d0058018 <clipTriangleToFrustum+0x264>
d0058470:	f1b8 0f00 	cmp.w	r8, #0
d0058474:	f43f add0 	beq.w	d0058018 <clipTriangleToFrustum+0x264>
d0058478:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d005847c:	3102      	adds	r1, #2
d005847e:	eea1 4a22 	vfma.f32	s8, s2, s5
d0058482:	eee1 4aa2 	vfma.f32	s9, s3, s5
d0058486:	eea2 5a22 	vfma.f32	s10, s4, s5
d005848a:	ed80 4a00 	vstr	s8, [r0]
d005848e:	edc0 4a01 	vstr	s9, [r0, #4]
d0058492:	ed80 5a02 	vstr	s10, [r0, #8]
d0058496:	edce 7a00 	vstr	s15, [lr]
d005849a:	ed8e 6a01 	vstr	s12, [lr, #4]
d005849e:	ed8e 7a02 	vstr	s14, [lr, #8]
d00584a2:	e5b9      	b.n	d0058018 <clipTriangleToFrustum+0x264>
d00584a4:	eeb5 6a40 	vcmp.f32	s12, #0.0
d00584a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00584ac:	f140 80de 	bpl.w	d005866c <clipTriangleToFrustum+0x8b8>
d00584b0:	2900      	cmp	r1, #0
d00584b2:	f000 80db 	beq.w	d005866c <clipTriangleToFrustum+0x8b8>
d00584b6:	ee36 1ac7 	vsub.f32	s2, s13, s14
d00584ba:	2202      	movs	r2, #2
d00584bc:	ee75 1a63 	vsub.f32	s3, s10, s7
d00584c0:	ed84 5a03 	vstr	s10, [r4, #12]
d00584c4:	ee34 2ae5 	vsub.f32	s4, s9, s11
d00584c8:	edc4 4a04 	vstr	s9, [r4, #16]
d00584cc:	eec6 2a01 	vdiv.f32	s5, s12, s2
d00584d0:	ed84 7a05 	vstr	s14, [r4, #20]
d00584d4:	ee37 6a66 	vsub.f32	s12, s14, s13
d00584d8:	eee2 3aa1 	vfma.f32	s7, s5, s3
d00584dc:	eee2 5a82 	vfma.f32	s11, s5, s4
d00584e0:	eee2 6a86 	vfma.f32	s13, s5, s12
d00584e4:	edc4 3a00 	vstr	s7, [r4]
d00584e8:	edc4 5a01 	vstr	s11, [r4, #4]
d00584ec:	edc4 6a02 	vstr	s13, [r4, #8]
d00584f0:	e4c2      	b.n	d0057e78 <clipTriangleToFrustum+0xc4>
d00584f2:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d00584f6:	f006 0001 	and.w	r0, r6, #1
d00584fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00584fe:	bf58      	it	pl
d0058500:	2000      	movpl	r0, #0
d0058502:	2800      	cmp	r0, #0
d0058504:	f000 80b4 	beq.w	d0058670 <clipTriangleToFrustum+0x8bc>
d0058508:	ee37 1a62 	vsub.f32	s2, s14, s5
d005850c:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0058510:	ee75 1ac5 	vsub.f32	s3, s11, s10
d0058514:	3202      	adds	r2, #2
d0058516:	ee36 2a64 	vsub.f32	s4, s12, s9
d005851a:	eb04 0681 	add.w	r6, r4, r1, lsl #2
d005851e:	eec4 3a01 	vdiv.f32	s7, s8, s2
d0058522:	4631      	mov	r1, r6
d0058524:	edc6 5a03 	vstr	s11, [r6, #12]
d0058528:	ed86 6a04 	vstr	s12, [r6, #16]
d005852c:	310c      	adds	r1, #12
d005852e:	edc6 2a05 	vstr	s5, [r6, #20]
d0058532:	ee32 4ac7 	vsub.f32	s8, s5, s14
d0058536:	eea1 5aa3 	vfma.f32	s10, s3, s7
d005853a:	eee2 4a23 	vfma.f32	s9, s4, s7
d005853e:	eea4 7a23 	vfma.f32	s14, s8, s7
d0058542:	ed86 5a00 	vstr	s10, [r6]
d0058546:	edc6 4a01 	vstr	s9, [r6, #4]
d005854a:	ed86 7a02 	vstr	s14, [r6, #8]
d005854e:	e4b3      	b.n	d0057eb8 <clipTriangleToFrustum+0x104>
d0058550:	eef5 6a40 	vcmp.f32	s13, #0.0
d0058554:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058558:	f57f accd 	bpl.w	d0057ef6 <clipTriangleToFrustum+0x142>
d005855c:	2900      	cmp	r1, #0
d005855e:	f43f acca 	beq.w	d0057ef6 <clipTriangleToFrustum+0x142>
d0058562:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0058566:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d005856a:	ee74 1a65 	vsub.f32	s3, s8, s11
d005856e:	3202      	adds	r2, #2
d0058570:	ee34 2ac6 	vsub.f32	s4, s9, s12
d0058574:	eb04 0081 	add.w	r0, r4, r1, lsl #2
d0058578:	ee77 7aa6 	vadd.f32	s15, s15, s13
d005857c:	ee77 3a62 	vsub.f32	s7, s14, s5
d0058580:	ed80 4a03 	vstr	s8, [r0, #12]
d0058584:	edc0 4a04 	vstr	s9, [r0, #16]
d0058588:	ee86 5aa7 	vdiv.f32	s10, s13, s15
d005858c:	ed80 7a05 	vstr	s14, [r0, #20]
d0058590:	eef0 7a62 	vmov.f32	s15, s5
d0058594:	eee1 5a85 	vfma.f32	s11, s3, s10
d0058598:	eea2 6a05 	vfma.f32	s12, s4, s10
d005859c:	eee3 7a85 	vfma.f32	s15, s7, s10
d00585a0:	edc0 5a00 	vstr	s11, [r0]
d00585a4:	ed80 6a01 	vstr	s12, [r0, #4]
d00585a8:	edc0 7a02 	vstr	s15, [r0, #8]
d00585ac:	e4a3      	b.n	d0057ef6 <clipTriangleToFrustum+0x142>
d00585ae:	eef5 5a40 	vcmp.f32	s11, #0.0
d00585b2:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00585b6:	ee77 2aa5 	vadd.f32	s5, s15, s11
d00585ba:	eb03 0c80 	add.w	ip, r3, r0, lsl #2
d00585be:	ee36 1a44 	vsub.f32	s2, s12, s8
d00585c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00585c6:	4660      	mov	r0, ip
d00585c8:	ee77 1ae4 	vsub.f32	s3, s15, s9
d00585cc:	ee72 3ae3 	vsub.f32	s7, s5, s7
d00585d0:	f10c 0c0c 	add.w	ip, ip, #12
d00585d4:	ee37 2a45 	vsub.f32	s4, s14, s10
d00585d8:	f57f ad9e 	bpl.w	d0058118 <clipTriangleToFrustum+0x364>
d00585dc:	f1be 0f00 	cmp.w	lr, #0
d00585e0:	f43f ad9a 	beq.w	d0058118 <clipTriangleToFrustum+0x364>
d00585e4:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d00585e8:	3102      	adds	r1, #2
d00585ea:	eea1 4a22 	vfma.f32	s8, s2, s5
d00585ee:	eee1 4aa2 	vfma.f32	s9, s3, s5
d00585f2:	eea2 5a22 	vfma.f32	s10, s4, s5
d00585f6:	ed80 4a00 	vstr	s8, [r0]
d00585fa:	edc0 4a01 	vstr	s9, [r0, #4]
d00585fe:	ed80 5a02 	vstr	s10, [r0, #8]
d0058602:	ed8c 6a00 	vstr	s12, [ip]
d0058606:	edcc 7a01 	vstr	s15, [ip, #4]
d005860a:	ed8c 7a02 	vstr	s14, [ip, #8]
d005860e:	e583      	b.n	d0058118 <clipTriangleToFrustum+0x364>
d0058610:	eef5 5a40 	vcmp.f32	s11, #0.0
d0058614:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0058618:	ee35 1ae6 	vsub.f32	s2, s11, s13
d005861c:	eb04 0183 	add.w	r1, r4, r3, lsl #2
d0058620:	ee76 1a44 	vsub.f32	s3, s12, s8
d0058624:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058628:	460b      	mov	r3, r1
d005862a:	ee37 2ae4 	vsub.f32	s4, s15, s9
d005862e:	ee77 2a45 	vsub.f32	s5, s14, s10
d0058632:	f101 010c 	add.w	r1, r1, #12
d0058636:	f57f ade4 	bpl.w	d0058202 <clipTriangleToFrustum+0x44e>
d005863a:	2800      	cmp	r0, #0
d005863c:	f43f ade1 	beq.w	d0058202 <clipTriangleToFrustum+0x44e>
d0058640:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0058644:	3602      	adds	r6, #2
d0058646:	eea1 4aa3 	vfma.f32	s8, s3, s7
d005864a:	eee2 4a23 	vfma.f32	s9, s4, s7
d005864e:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0058652:	ed83 4a00 	vstr	s8, [r3]
d0058656:	edc3 4a01 	vstr	s9, [r3, #4]
d005865a:	ed83 5a02 	vstr	s10, [r3, #8]
d005865e:	ed81 6a00 	vstr	s12, [r1]
d0058662:	edc1 7a01 	vstr	s15, [r1, #4]
d0058666:	ed81 7a02 	vstr	s14, [r1, #8]
d005866a:	e5ca      	b.n	d0058202 <clipTriangleToFrustum+0x44e>
d005866c:	2200      	movs	r2, #0
d005866e:	e403      	b.n	d0057e78 <clipTriangleToFrustum+0xc4>
d0058670:	4630      	mov	r0, r6
d0058672:	e421      	b.n	d0057eb8 <clipTriangleToFrustum+0x104>

d0058674 <submitClippedTri>:
d0058674:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0058678:	eef4 7ac1 	vcmpe.f32	s15, s2
d005867c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0058680:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058684:	eef4 7ae2 	vcmpe.f32	s15, s5
d0058688:	bfac      	ite	ge
d005868a:	2401      	movge	r4, #1
d005868c:	2400      	movlt	r4, #0
d005868e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058692:	ed2d 8b02 	vpush	{d8}
d0058696:	bfa8      	it	ge
d0058698:	f044 0401 	orrge.w	r4, r4, #1
d005869c:	b08d      	sub	sp, #52	; 0x34
d005869e:	9301      	str	r3, [sp, #4]
d00586a0:	b924      	cbnz	r4, d00586ac <submitClippedTri+0x38>
d00586a2:	eef4 7ac4 	vcmpe.f32	s15, s8
d00586a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00586aa:	db04      	blt.n	d00586b6 <submitClippedTri+0x42>
d00586ac:	b00d      	add	sp, #52	; 0x34
d00586ae:	ecbd 8b02 	vpop	{d8}
d00586b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00586b6:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00586ba:	ed90 7a14 	vldr	s14, [r0, #80]	; 0x50
d00586be:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d00586c2:	edd0 6a12 	vldr	s13, [r0, #72]	; 0x48
d00586c6:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d00586ca:	ee86 8a01 	vdiv.f32	s16, s12, s2
d00586ce:	ee86 5a22 	vdiv.f32	s10, s12, s5
d00586d2:	eec6 5a04 	vdiv.f32	s11, s12, s8
d00586d6:	ee37 7a28 	vadd.f32	s14, s14, s17
d00586da:	ee68 0a20 	vmul.f32	s1, s16, s1
d00586de:	ee77 7aa8 	vadd.f32	s15, s15, s17
d00586e2:	ee28 0a00 	vmul.f32	s0, s16, s0
d00586e6:	eeb0 8a67 	vmov.f32	s16, s15
d00586ea:	ee65 1a21 	vmul.f32	s3, s10, s3
d00586ee:	ee25 2a02 	vmul.f32	s4, s10, s4
d00586f2:	eeb0 5a47 	vmov.f32	s10, s14
d00586f6:	eea6 8a80 	vfma.f32	s16, s13, s0
d00586fa:	eea6 5ae0 	vfms.f32	s10, s13, s1
d00586fe:	ee65 3aa3 	vmul.f32	s7, s11, s7
d0058702:	ee25 3a83 	vmul.f32	s6, s11, s6
d0058706:	eefd 5ac8 	vcvt.s32.f32	s11, s16
d005870a:	eef0 0a45 	vmov.f32	s1, s10
d005870e:	eeb0 5a67 	vmov.f32	s10, s15
d0058712:	ee15 ba90 	vmov	fp, s11
d0058716:	eee6 7a83 	vfma.f32	s15, s13, s6
d005871a:	eea6 5aa1 	vfma.f32	s10, s13, s3
d005871e:	eef0 1a47 	vmov.f32	s3, s14
d0058722:	eea6 7ae3 	vfms.f32	s14, s13, s7
d0058726:	eee6 1ac2 	vfms.f32	s3, s13, s4
d005872a:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d005872e:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d0058732:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0058736:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d005873a:	ee16 6a90 	vmov	r6, s13
d005873e:	ee15 3a10 	vmov	r3, s10
d0058742:	eefd 6ae1 	vcvt.s32.f32	s13, s3
d0058746:	ee17 4a10 	vmov	r4, s14
d005874a:	eba3 080b 	sub.w	r8, r3, fp
d005874e:	ee17 3a90 	vmov	r3, s15
d0058752:	ee16 ca90 	vmov	ip, s13
d0058756:	1ba7      	subs	r7, r4, r6
d0058758:	eba3 0e0b 	sub.w	lr, r3, fp
d005875c:	ebac 0506 	sub.w	r5, ip, r6
d0058760:	fb07 f708 	mul.w	r7, r7, r8
d0058764:	fb0e 7515 	mls	r5, lr, r5, r7
d0058768:	2d00      	cmp	r5, #0
d005876a:	dd9f      	ble.n	d00586ac <submitClippedTri+0x38>
d005876c:	f8df 9188 	ldr.w	r9, [pc, #392]	; d00588f8 <submitClippedTri+0x284>
d0058770:	f8d9 5000 	ldr.w	r5, [r9]
d0058774:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0058778:	da98      	bge.n	d00586ac <submitClippedTri+0x38>
d005877a:	4f5c      	ldr	r7, [pc, #368]	; (d00588ec <submitClippedTri+0x278>)
d005877c:	ea4f 1e85 	mov.w	lr, r5, lsl #6
d0058780:	1c6b      	adds	r3, r5, #1
d0058782:	eddf 5a5b 	vldr	s11, [pc, #364]	; d00588f0 <submitClippedTri+0x27c>
d0058786:	eb07 1585 	add.w	r5, r7, r5, lsl #6
d005878a:	f10e 0808 	add.w	r8, lr, #8
d005878e:	9302      	str	r3, [sp, #8]
d0058790:	ee15 3a10 	vmov	r3, s10
d0058794:	f847 b00e 	str.w	fp, [r7, lr]
d0058798:	f10e 0a10 	add.w	sl, lr, #16
d005879c:	606e      	str	r6, [r5, #4]
d005879e:	b236      	sxth	r6, r6
d00587a0:	f847 3008 	str.w	r3, [r7, r8]
d00587a4:	ee17 3a90 	vmov	r3, s15
d00587a8:	44b8      	add	r8, r7
d00587aa:	eb07 0b0a 	add.w	fp, r7, sl
d00587ae:	eddf 6a51 	vldr	s13, [pc, #324]	; d00588f4 <submitClippedTri+0x280>
d00587b2:	45b4      	cmp	ip, r6
d00587b4:	f8c8 c004 	str.w	ip, [r8, #4]
d00587b8:	46b0      	mov	r8, r6
d00587ba:	f847 300a 	str.w	r3, [r7, sl]
d00587be:	9b01      	ldr	r3, [sp, #4]
d00587c0:	ed8b 7a01 	vstr	s14, [fp, #4]
d00587c4:	f885 3036 	strb.w	r3, [r5, #54]	; 0x36
d00587c8:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d00587cc:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d00587d0:	edc5 4a07 	vstr	s9, [r5, #28]
d00587d4:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d00587d8:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d00587dc:	ee31 7a47 	vsub.f32	s14, s2, s14
d00587e0:	9b02      	ldr	r3, [sp, #8]
d00587e2:	f8c9 3000 	str.w	r3, [r9]
d00587e6:	ee27 7a27 	vmul.f32	s14, s14, s15
d00587ea:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d00587ee:	fe87 7a46 	vminnm.f32	s14, s14, s12
d00587f2:	ee27 7a26 	vmul.f32	s14, s14, s13
d00587f6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00587fa:	ee17 3a10 	vmov	r3, s14
d00587fe:	842b      	strh	r3, [r5, #32]
d0058800:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0058804:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0058808:	ee32 7ac7 	vsub.f32	s14, s5, s14
d005880c:	ee27 7a27 	vmul.f32	s14, s14, s15
d0058810:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0058814:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0058818:	ee27 7a26 	vmul.f32	s14, s14, s13
d005881c:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0058820:	ee17 3a10 	vmov	r3, s14
d0058824:	846b      	strh	r3, [r5, #34]	; 0x22
d0058826:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d005882a:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d005882e:	ee74 7a67 	vsub.f32	s15, s8, s15
d0058832:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0058836:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d005883a:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d005883e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0058842:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0058846:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d005884a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005884e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0058852:	ee17 3a90 	vmov	r3, s15
d0058856:	84ab      	strh	r3, [r5, #36]	; 0x24
d0058858:	db42      	blt.n	d00588e0 <submitClippedTri+0x26c>
d005885a:	4633      	mov	r3, r6
d005885c:	872e      	strh	r6, [r5, #56]	; 0x38
d005885e:	42a3      	cmp	r3, r4
d0058860:	dd02      	ble.n	d0058868 <submitClippedTri+0x1f4>
d0058862:	eb07 030e 	add.w	r3, r7, lr
d0058866:	871c      	strh	r4, [r3, #56]	; 0x38
d0058868:	45b4      	cmp	ip, r6
d005886a:	dc31      	bgt.n	d00588d0 <submitClippedTri+0x25c>
d005886c:	eb07 030e 	add.w	r3, r7, lr
d0058870:	875e      	strh	r6, [r3, #58]	; 0x3a
d0058872:	45a0      	cmp	r8, r4
d0058874:	da02      	bge.n	d005887c <submitClippedTri+0x208>
d0058876:	eb07 030e 	add.w	r3, r7, lr
d005887a:	875c      	strh	r4, [r3, #58]	; 0x3a
d005887c:	eb07 030e 	add.w	r3, r7, lr
d0058880:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d0058884:	2a00      	cmp	r2, #0
d0058886:	da01      	bge.n	d005888c <submitClippedTri+0x218>
d0058888:	2200      	movs	r2, #0
d005888a:	871a      	strh	r2, [r3, #56]	; 0x38
d005888c:	eb07 030e 	add.w	r3, r7, lr
d0058890:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d0058894:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0058898:	db02      	blt.n	d00588a0 <submitClippedTri+0x22c>
d005889a:	f240 123f 	movw	r2, #319	; 0x13f
d005889e:	875a      	strh	r2, [r3, #58]	; 0x3a
d00588a0:	eb07 010e 	add.w	r1, r7, lr
d00588a4:	4477      	add	r7, lr
d00588a6:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d00588aa:	2b00      	cmp	r3, #0
d00588ac:	bfb8      	it	lt
d00588ae:	331f      	addlt	r3, #31
d00588b0:	115a      	asrs	r2, r3, #5
d00588b2:	f9b7 303a 	ldrsh.w	r3, [r7, #58]	; 0x3a
d00588b6:	2b00      	cmp	r3, #0
d00588b8:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d00588bc:	bfb8      	it	lt
d00588be:	331f      	addlt	r3, #31
d00588c0:	115b      	asrs	r3, r3, #5
d00588c2:	f887 303d 	strb.w	r3, [r7, #61]	; 0x3d
d00588c6:	b00d      	add	sp, #52	; 0x34
d00588c8:	ecbd 8b02 	vpop	{d8}
d00588cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00588d0:	fa0f fc8c 	sxth.w	ip, ip
d00588d4:	eb07 030e 	add.w	r3, r7, lr
d00588d8:	46e0      	mov	r8, ip
d00588da:	f8a3 c03a 	strh.w	ip, [r3, #58]	; 0x3a
d00588de:	e7c8      	b.n	d0058872 <submitClippedTri+0x1fe>
d00588e0:	fa0f f28c 	sxth.w	r2, ip
d00588e4:	4613      	mov	r3, r2
d00588e6:	872a      	strh	r2, [r5, #56]	; 0x38
d00588e8:	e7b9      	b.n	d005885e <submitClippedTri+0x1ea>
d00588ea:	bf00      	nop
d00588ec:	d006dca0 	.word	0xd006dca0
d00588f0:	00000000 	.word	0x00000000
d00588f4:	477fff00 	.word	0x477fff00
d00588f8:	d006dc8c 	.word	0xd006dc8c

d00588fc <getRenderTriCount>:
d00588fc:	4b01      	ldr	r3, [pc, #4]	; (d0058904 <getRenderTriCount+0x8>)
d00588fe:	6818      	ldr	r0, [r3, #0]
d0058900:	4770      	bx	lr
d0058902:	bf00      	nop
d0058904:	d006dc8c 	.word	0xd006dc8c

d0058908 <drawFakeHorizonDots>:
d0058908:	2800      	cmp	r0, #0
d005890a:	f000 8107 	beq.w	d0058b1c <drawFakeHorizonDots+0x214>
d005890e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0058912:	4699      	mov	r9, r3
d0058914:	ed2d 8b10 	vpush	{d8-d15}
d0058918:	b085      	sub	sp, #20
d005891a:	2b00      	cmp	r3, #0
d005891c:	f000 80f9 	beq.w	d0058b12 <drawFakeHorizonDots+0x20a>
d0058920:	4617      	mov	r7, r2
d0058922:	ed90 9a02 	vldr	s18, [r0, #8]
d0058926:	edd0 8a00 	vldr	s17, [r0]
d005892a:	4606      	mov	r6, r0
d005892c:	2f02      	cmp	r7, #2
d005892e:	ed90 6a01 	vldr	s12, [r0, #4]
d0058932:	ed90 da07 	vldr	s26, [r0, #28]
d0058936:	460a      	mov	r2, r1
d0058938:	bfb8      	it	lt
d005893a:	2702      	movlt	r7, #2
d005893c:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d0058940:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0058944:	ee30 ba46 	vsub.f32	s22, s0, s12
d0058948:	ee07 7a90 	vmov	s15, r7
d005894c:	ed90 fa06 	vldr	s30, [r0, #24]
d0058950:	edd0 ea08 	vldr	s29, [r0, #32]
d0058954:	f06f 0311 	mvn.w	r3, #17
d0058958:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d005895c:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d0058960:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d0058964:	ee2b da0d 	vmul.f32	s26, s22, s26
d0058968:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d005896c:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0058970:	ee89 7a08 	vdiv.f32	s14, s18, s16
d0058974:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d0058978:	eddf 5a69 	vldr	s11, [pc, #420]	; d0058b20 <drawFakeHorizonDots+0x218>
d005897c:	4d69      	ldr	r5, [pc, #420]	; (d0058b24 <drawFakeHorizonDots+0x21c>)
d005897e:	4c6a      	ldr	r4, [pc, #424]	; (d0058b28 <drawFakeHorizonDots+0x220>)
d0058980:	eddf 9a6a 	vldr	s19, [pc, #424]	; d0058b2c <drawFakeHorizonDots+0x224>
d0058984:	eec8 7a88 	vdiv.f32	s15, s17, s16
d0058988:	9302      	str	r3, [sp, #8]
d005898a:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d0058b34 <drawFakeHorizonDots+0x22c>
d005898e:	4623      	mov	r3, r4
d0058990:	ee28 8a25 	vmul.f32	s16, s16, s11
d0058994:	ee2b ba26 	vmul.f32	s22, s22, s13
d0058998:	ee68 9a29 	vmul.f32	s19, s16, s19
d005899c:	febb 7a47 	vrintm.f32	s14, s14
d00589a0:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00589a4:	ee17 0a10 	vmov	r0, s14
d00589a8:	fefb 7a67 	vrintm.f32	s15, s15
d00589ac:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00589b0:	3812      	subs	r0, #18
d00589b2:	ee17 1a90 	vmov	r1, s15
d00589b6:	fb05 f500 	mul.w	r5, r5, r0
d00589ba:	fb00 f007 	mul.w	r0, r0, r7
d00589be:	fb04 5a01 	mla	sl, r4, r1, r5
d00589c2:	3912      	subs	r1, #18
d00589c4:	9001      	str	r0, [sp, #4]
d00589c6:	fb07 f101 	mul.w	r1, r7, r1
d00589ca:	9103      	str	r1, [sp, #12]
d00589cc:	eddd 7a01 	vldr	s15, [sp, #4]
d00589d0:	ee39 aa08 	vadd.f32	s20, s18, s16
d00589d4:	9902      	ldr	r1, [sp, #8]
d00589d6:	ee78 aa88 	vadd.f32	s21, s17, s16
d00589da:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00589de:	9d03      	ldr	r5, [sp, #12]
d00589e0:	fb01 f801 	mul.w	r8, r1, r1
d00589e4:	f06f 0411 	mvn.w	r4, #17
d00589e8:	ee37 aaca 	vsub.f32	s20, s15, s20
d00589ec:	e078      	b.n	d0058ae0 <drawFakeHorizonDots+0x1d8>
d00589ee:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d00589f2:	fb09 f000 	mul.w	r0, r9, r0
d00589f6:	2850      	cmp	r0, #80	; 0x50
d00589f8:	dd6e      	ble.n	d0058ad8 <drawFakeHorizonDots+0x1d0>
d00589fa:	494d      	ldr	r1, [pc, #308]	; (d0058b30 <drawFakeHorizonDots+0x228>)
d00589fc:	fba1 1000 	umull	r1, r0, r1, r0
d0058a00:	f3c0 1087 	ubfx	r0, r0, #6, #8
d0058a04:	fb03 a104 	mla	r1, r3, r4, sl
d0058a08:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d0058a0c:	fb0b f101 	mul.w	r1, fp, r1
d0058a10:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d0058a14:	fa5f fc81 	uxtb.w	ip, r1
d0058a18:	4584      	cmp	ip, r0
d0058a1a:	d85d      	bhi.n	d0058ad8 <drawFakeHorizonDots+0x1d0>
d0058a1c:	ee07 5a10 	vmov	s14, r5
d0058a20:	f3c1 4007 	ubfx	r0, r1, #16, #8
d0058a24:	f3c1 2107 	ubfx	r1, r1, #8, #8
d0058a28:	eef0 4a4a 	vmov.f32	s9, s20
d0058a2c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0058a30:	ee06 0a90 	vmov	s13, r0
d0058a34:	ee07 1a90 	vmov	s15, r1
d0058a38:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d0058a3c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0058a40:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0058a44:	ee37 7a6a 	vsub.f32	s14, s14, s21
d0058a48:	eee6 4aa9 	vfma.f32	s9, s13, s19
d0058a4c:	eea7 7aa9 	vfma.f32	s14, s15, s19
d0058a50:	eef0 7a47 	vmov.f32	s15, s14
d0058a54:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d0058a58:	eeac 7a27 	vfma.f32	s14, s24, s15
d0058a5c:	ee3b 7a07 	vadd.f32	s14, s22, s14
d0058a60:	eeb4 6ac7 	vcmpe.f32	s12, s14
d0058a64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058a68:	da36      	bge.n	d0058ad8 <drawFakeHorizonDots+0x1d0>
d0058a6a:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0058a6e:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d0058a72:	ee2f 6a27 	vmul.f32	s12, s30, s15
d0058a76:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d0058a7a:	ee6e 7a27 	vmul.f32	s15, s28, s15
d0058a7e:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d0058a82:	ee83 4a87 	vdiv.f32	s8, s7, s14
d0058a86:	eeae 6aa4 	vfma.f32	s12, s29, s9
d0058a8a:	eeed 7aa4 	vfma.f32	s15, s27, s9
d0058a8e:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d0058a92:	ee36 7aa4 	vadd.f32	s14, s13, s9
d0058a96:	ee7d 6a06 	vadd.f32	s13, s26, s12
d0058a9a:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d0058a9e:	ee35 6aa4 	vadd.f32	s12, s11, s9
d0058aa2:	ee66 6a85 	vmul.f32	s13, s13, s10
d0058aa6:	ee65 7a67 	vnmul.f32	s15, s10, s15
d0058aaa:	eea6 7a84 	vfma.f32	s14, s13, s8
d0058aae:	eea7 6a84 	vfma.f32	s12, s15, s8
d0058ab2:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0058ab6:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0058aba:	ee17 0a10 	vmov	r0, s14
d0058abe:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0058ac2:	d209      	bcs.n	d0058ad8 <drawFakeHorizonDots+0x1d0>
d0058ac4:	ee17 1a90 	vmov	r1, s15
d0058ac8:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0058acc:	d204      	bcs.n	d0058ad8 <drawFakeHorizonDots+0x1d0>
d0058ace:	9200      	str	r2, [sp, #0]
d0058ad0:	f7fa fa44 	bl	d0052f5c <putPixel>
d0058ad4:	4b14      	ldr	r3, [pc, #80]	; (d0058b28 <drawFakeHorizonDots+0x220>)
d0058ad6:	9a00      	ldr	r2, [sp, #0]
d0058ad8:	3401      	adds	r4, #1
d0058ada:	443d      	add	r5, r7
d0058adc:	2c13      	cmp	r4, #19
d0058ade:	d009      	beq.n	d0058af4 <drawFakeHorizonDots+0x1ec>
d0058ae0:	fb04 8004 	mla	r0, r4, r4, r8
d0058ae4:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0058ae8:	dcf6      	bgt.n	d0058ad8 <drawFakeHorizonDots+0x1d0>
d0058aea:	28f3      	cmp	r0, #243	; 0xf3
d0058aec:	f73f af7f 	bgt.w	d00589ee <drawFakeHorizonDots+0xe6>
d0058af0:	4648      	mov	r0, r9
d0058af2:	e787      	b.n	d0058a04 <drawFakeHorizonDots+0xfc>
d0058af4:	9902      	ldr	r1, [sp, #8]
d0058af6:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d0058afa:	9801      	ldr	r0, [sp, #4]
d0058afc:	3101      	adds	r1, #1
d0058afe:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d0058b02:	4438      	add	r0, r7
d0058b04:	2913      	cmp	r1, #19
d0058b06:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d0058b0a:	9102      	str	r1, [sp, #8]
d0058b0c:	9001      	str	r0, [sp, #4]
d0058b0e:	f47f af5d 	bne.w	d00589cc <drawFakeHorizonDots+0xc4>
d0058b12:	b005      	add	sp, #20
d0058b14:	ecbd 8b10 	vpop	{d8-d15}
d0058b18:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0058b1c:	4770      	bx	lr
d0058b1e:	bf00      	nop
d0058b20:	3eb33333 	.word	0x3eb33333
d0058b24:	27d4eb2f 	.word	0x27d4eb2f
d0058b28:	165667b1 	.word	0x165667b1
d0058b2c:	3c008081 	.word	0x3c008081
d0058b30:	ca4587e7 	.word	0xca4587e7
d0058b34:	4bf19f61 	.word	0x4bf19f61

d0058b38 <drawFakeSkyDots>:
d0058b38:	2a10      	cmp	r2, #16
d0058b3a:	ed9f 6a73 	vldr	s12, [pc, #460]	; d0058d08 <drawFakeSkyDots+0x1d0>
d0058b3e:	ed9f 7a73 	vldr	s14, [pc, #460]	; d0058d0c <drawFakeSkyDots+0x1d4>
d0058b42:	bfb8      	it	lt
d0058b44:	2210      	movlt	r2, #16
d0058b46:	2b08      	cmp	r3, #8
d0058b48:	ee07 2a90 	vmov	s15, r2
d0058b4c:	bfb8      	it	lt
d0058b4e:	2308      	movlt	r3, #8
d0058b50:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0058b54:	ee07 3a90 	vmov	s15, r3
d0058b58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0058b5c:	ed2d 8b10 	vpush	{d8-d15}
d0058b60:	eec6 da26 	vdiv.f32	s27, s12, s13
d0058b64:	b085      	sub	sp, #20
d0058b66:	4617      	mov	r7, r2
d0058b68:	4682      	mov	sl, r0
d0058b6a:	9303      	str	r3, [sp, #12]
d0058b6c:	468b      	mov	fp, r1
d0058b6e:	2300      	movs	r3, #0
d0058b70:	edd0 ea06 	vldr	s29, [r0, #24]
d0058b74:	ed90 ea07 	vldr	s28, [r0, #28]
d0058b78:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0058b7c:	ed90 da08 	vldr	s26, [r0, #32]
d0058b80:	edd0 ca09 	vldr	s25, [r0, #36]	; 0x24
d0058b84:	ed90 ca0a 	vldr	s24, [r0, #40]	; 0x28
d0058b88:	eec7 aa27 	vdiv.f32	s21, s14, s15
d0058b8c:	edd0 7a0d 	vldr	s15, [r0, #52]	; 0x34
d0058b90:	edd0 ba0b 	vldr	s23, [r0, #44]	; 0x2c
d0058b94:	edcd 7a00 	vstr	s15, [sp]
d0058b98:	ed90 ba0c 	vldr	s22, [r0, #48]	; 0x30
d0058b9c:	edd0 7a0e 	vldr	s15, [r0, #56]	; 0x38
d0058ba0:	f89d 9078 	ldrb.w	r9, [sp, #120]	; 0x78
d0058ba4:	f8df 8178 	ldr.w	r8, [pc, #376]	; d0058d20 <drawFakeSkyDots+0x1e8>
d0058ba8:	ed9f fa59 	vldr	s30, [pc, #356]	; d0058d10 <drawFakeSkyDots+0x1d8>
d0058bac:	9302      	str	r3, [sp, #8]
d0058bae:	edcd 7a01 	vstr	s15, [sp, #4]
d0058bb2:	eddd 7a02 	vldr	s15, [sp, #8]
d0058bb6:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0058bba:	4b56      	ldr	r3, [pc, #344]	; (d0058d14 <drawFakeSkyDots+0x1dc>)
d0058bbc:	2400      	movs	r4, #0
d0058bbe:	ee17 2a90 	vmov	r2, s15
d0058bc2:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0058bc6:	4e54      	ldr	r6, [pc, #336]	; (d0058d18 <drawFakeSkyDots+0x1e0>)
d0058bc8:	fb03 f502 	mul.w	r5, r3, r2
d0058bcc:	ea85 3355 	eor.w	r3, r5, r5, lsr #13
d0058bd0:	ee07 4a90 	vmov	s15, r4
d0058bd4:	eef0 fa48 	vmov.f32	s31, s16
d0058bd8:	3401      	adds	r4, #1
d0058bda:	fb08 f303 	mul.w	r3, r8, r3
d0058bde:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0058be2:	4435      	add	r5, r6
d0058be4:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d0058be8:	f3c3 4207 	ubfx	r2, r3, #16, #8
d0058bec:	ee07 2a90 	vmov	s15, r2
d0058bf0:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0058bf4:	b2db      	uxtb	r3, r3
d0058bf6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0058bfa:	ee07 2a10 	vmov	s14, r2
d0058bfe:	454b      	cmp	r3, r9
d0058c00:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0058c04:	eee7 fa8f 	vfma.f32	s31, s15, s30
d0058c08:	d86f      	bhi.n	d0058cea <drawFakeSkyDots+0x1b2>
d0058c0a:	eee7 6a0f 	vfma.f32	s13, s14, s30
d0058c0e:	ee6f faaa 	vmul.f32	s31, s31, s21
d0058c12:	eeb0 0a6f 	vmov.f32	s0, s31
d0058c16:	ee26 aaad 	vmul.f32	s20, s13, s27
d0058c1a:	f003 fbd5 	bl	d005c3c8 <sinf>
d0058c1e:	eeb0 9a40 	vmov.f32	s18, s0
d0058c22:	eeb0 0a6f 	vmov.f32	s0, s31
d0058c26:	f003 f9eb 	bl	d005c000 <cosf>
d0058c2a:	eef0 fa40 	vmov.f32	s31, s0
d0058c2e:	eeb0 0a4a 	vmov.f32	s0, s20
d0058c32:	f003 fbc9 	bl	d005c3c8 <sinf>
d0058c36:	eef0 9a40 	vmov.f32	s19, s0
d0058c3a:	eeb0 0a4a 	vmov.f32	s0, s20
d0058c3e:	f003 f9df 	bl	d005c000 <cosf>
d0058c42:	eddd 6a01 	vldr	s13, [sp, #4]
d0058c46:	ee2f 7aa9 	vmul.f32	s14, s31, s19
d0058c4a:	ee6f 7a80 	vmul.f32	s15, s31, s0
d0058c4e:	ee26 6a87 	vmul.f32	s12, s13, s14
d0058c52:	ee6c 4aa7 	vmul.f32	s9, s25, s15
d0058c56:	ee6e 6aa7 	vmul.f32	s13, s29, s15
d0058c5a:	eeab 6a27 	vfma.f32	s12, s22, s15
d0058c5e:	eef0 7a66 	vmov.f32	s15, s13
d0058c62:	eef0 6a64 	vmov.f32	s13, s9
d0058c66:	eeed 7a07 	vfma.f32	s15, s26, s14
d0058c6a:	eeeb 6a87 	vfma.f32	s13, s23, s14
d0058c6e:	eeb0 7a46 	vmov.f32	s14, s12
d0058c72:	ed9d 6a00 	vldr	s12, [sp]
d0058c76:	eea6 7a09 	vfma.f32	s14, s12, s18
d0058c7a:	ed9f 6a28 	vldr	s12, [pc, #160]	; d0058d1c <drawFakeSkyDots+0x1e4>
d0058c7e:	eeee 7a09 	vfma.f32	s15, s28, s18
d0058c82:	eeec 6a09 	vfma.f32	s13, s24, s18
d0058c86:	eeb4 7ac6 	vcmpe.f32	s14, s12
d0058c8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058c8e:	d92c      	bls.n	d0058cea <drawFakeSkyDots+0x1b2>
d0058c90:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0058c94:	ed9a 5a12 	vldr	s10, [sl, #72]	; 0x48
d0058c98:	ee65 7a27 	vmul.f32	s15, s10, s15
d0058c9c:	eec6 4a07 	vdiv.f32	s9, s12, s14
d0058ca0:	ed9a 7a13 	vldr	s14, [sl, #76]	; 0x4c
d0058ca4:	ed9a 6a14 	vldr	s12, [sl, #80]	; 0x50
d0058ca8:	ee37 7a28 	vadd.f32	s14, s14, s17
d0058cac:	ee36 6a28 	vadd.f32	s12, s12, s17
d0058cb0:	ee65 6a26 	vmul.f32	s13, s10, s13
d0058cb4:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0058cb8:	eef0 7a47 	vmov.f32	s15, s14
d0058cbc:	eeb0 7a46 	vmov.f32	s14, s12
d0058cc0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0058cc4:	eea4 7ae6 	vfms.f32	s14, s9, s13
d0058cc8:	ee17 0a90 	vmov	r0, s15
d0058ccc:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0058cd0:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0058cd4:	d209      	bcs.n	d0058cea <drawFakeSkyDots+0x1b2>
d0058cd6:	ee17 3a90 	vmov	r3, s15
d0058cda:	465a      	mov	r2, fp
d0058cdc:	ee17 1a90 	vmov	r1, s15
d0058ce0:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0058ce4:	d201      	bcs.n	d0058cea <drawFakeSkyDots+0x1b2>
d0058ce6:	f7fa f939 	bl	d0052f5c <putPixel>
d0058cea:	42a7      	cmp	r7, r4
d0058cec:	f47f af6e 	bne.w	d0058bcc <drawFakeSkyDots+0x94>
d0058cf0:	9b02      	ldr	r3, [sp, #8]
d0058cf2:	9a03      	ldr	r2, [sp, #12]
d0058cf4:	3301      	adds	r3, #1
d0058cf6:	429a      	cmp	r2, r3
d0058cf8:	9302      	str	r3, [sp, #8]
d0058cfa:	f47f af5a 	bne.w	d0058bb2 <drawFakeSkyDots+0x7a>
d0058cfe:	b005      	add	sp, #20
d0058d00:	ecbd 8b10 	vpop	{d8-d15}
d0058d04:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0058d08:	40c90fdb 	.word	0x40c90fdb
d0058d0c:	3fc90fdb 	.word	0x3fc90fdb
d0058d10:	3b808081 	.word	0x3b808081
d0058d14:	27d4eb2f 	.word	0x27d4eb2f
d0058d18:	165667b1 	.word	0x165667b1
d0058d1c:	3a83126f 	.word	0x3a83126f
d0058d20:	4bf19f61 	.word	0x4bf19f61

d0058d24 <drawFakeHorizon>:
d0058d24:	2800      	cmp	r0, #0
d0058d26:	f000 813e 	beq.w	d0058fa6 <drawFakeHorizon+0x282>
d0058d2a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0058d2e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0058d32:	ed2d 8b0e 	vpush	{d8-d14}
d0058d36:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d0058d3a:	b083      	sub	sp, #12
d0058d3c:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d0058d40:	460f      	mov	r7, r1
d0058d42:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d0058d46:	eddf 7a9c 	vldr	s15, [pc, #624]	; d0058fb8 <drawFakeHorizon+0x294>
d0058d4a:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d0058d4e:	4690      	mov	r8, r2
d0058d50:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d0058d54:	4699      	mov	r9, r3
d0058d56:	ed90 ea07 	vldr	s28, [r0, #28]
d0058d5a:	2400      	movs	r4, #0
d0058d5c:	ed90 9a01 	vldr	s18, [r0, #4]
d0058d60:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d0058d64:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d0058d68:	ee2b 7aad 	vmul.f32	s14, s23, s27
d0058d6c:	4e93      	ldr	r6, [pc, #588]	; (d0058fbc <drawFakeHorizon+0x298>)
d0058d6e:	eef0 aa4c 	vmov.f32	s21, s24
d0058d72:	ed9f 8a93 	vldr	s16, [pc, #588]	; d0058fc0 <drawFakeHorizon+0x29c>
d0058d76:	eeb0 aa4c 	vmov.f32	s20, s24
d0058d7a:	eecd ca2d 	vdiv.f32	s25, s26, s27
d0058d7e:	eeb0 baed 	vabs.f32	s22, s27
d0058d82:	ee30 9a49 	vsub.f32	s18, s0, s18
d0058d86:	ee67 7aa8 	vmul.f32	s15, s15, s17
d0058d8a:	eee7 aa28 	vfma.f32	s21, s14, s17
d0058d8e:	ee6e 8a28 	vmul.f32	s17, s28, s17
d0058d92:	eea7 aaad 	vfma.f32	s20, s15, s27
d0058d96:	e056      	b.n	d0058e46 <drawFakeHorizon+0x122>
d0058d98:	ee89 6a26 	vdiv.f32	s12, s18, s13
d0058d9c:	eef0 6ac7 	vabs.f32	s13, s14
d0058da0:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0058da4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058da8:	eef4 6ac8 	vcmpe.f32	s13, s16
d0058dac:	bfcc      	ite	gt
d0058dae:	2201      	movgt	r2, #1
d0058db0:	2200      	movle	r2, #0
d0058db2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058db6:	da61      	bge.n	d0058e7c <drawFakeHorizon+0x158>
d0058db8:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0058dbc:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0058dc0:	6833      	ldr	r3, [r6, #0]
d0058dc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058dc6:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0058dca:	f240 80a8 	bls.w	d0058f1e <drawFakeHorizon+0x1fa>
d0058dce:	eeb4 bac8 	vcmpe.f32	s22, s16
d0058dd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058dd6:	f100 809a 	bmi.w	d0058f0e <drawFakeHorizon+0x1ea>
d0058dda:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0058dde:	eeb0 7a6b 	vmov.f32	s14, s23
d0058de2:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0058de6:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0058dea:	ee17 ba90 	vmov	fp, s15
d0058dee:	f1bb 0f00 	cmp.w	fp, #0
d0058df2:	f2c0 80aa 	blt.w	d0058f4a <drawFakeHorizon+0x226>
d0058df6:	2201      	movs	r2, #1
d0058df8:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0058dfc:	46da      	mov	sl, fp
d0058dfe:	bfa8      	it	ge
d0058e00:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0058e04:	2a00      	cmp	r2, #0
d0058e06:	f000 8091 	beq.w	d0058f2c <drawFakeHorizon+0x208>
d0058e0a:	f1bb 0f00 	cmp.w	fp, #0
d0058e0e:	d009      	beq.n	d0058e24 <drawFakeHorizon+0x100>
d0058e10:	f1ba 0f00 	cmp.w	sl, #0
d0058e14:	4628      	mov	r0, r5
d0058e16:	4641      	mov	r1, r8
d0058e18:	bfcc      	ite	gt
d0058e1a:	4652      	movgt	r2, sl
d0058e1c:	2201      	movle	r2, #1
d0058e1e:	4415      	add	r5, r2
d0058e20:	f001 ffb6 	bl	d005ad90 <memset>
d0058e24:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0058e28:	d009      	beq.n	d0058e3e <drawFakeHorizon+0x11a>
d0058e2a:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0058e2e:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d0058e32:	4628      	mov	r0, r5
d0058e34:	4639      	mov	r1, r7
d0058e36:	bfa8      	it	ge
d0058e38:	2201      	movge	r2, #1
d0058e3a:	f001 ffa9 	bl	d005ad90 <memset>
d0058e3e:	3401      	adds	r4, #1
d0058e40:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0058e44:	d04e      	beq.n	d0058ee4 <drawFakeHorizon+0x1c0>
d0058e46:	ee07 4a90 	vmov	s15, r4
d0058e4a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0058e4e:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0058e52:	ee67 7aa8 	vmul.f32	s15, s15, s17
d0058e56:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d0058e5a:	ee3a 7a27 	vadd.f32	s14, s20, s15
d0058e5e:	eeb0 6ae6 	vabs.f32	s12, s13
d0058e62:	eeb4 6ac8 	vcmpe.f32	s12, s16
d0058e66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e6a:	da95      	bge.n	d0058d98 <drawFakeHorizon+0x74>
d0058e6c:	eef0 6ac7 	vabs.f32	s13, s14
d0058e70:	eef4 6ac8 	vcmpe.f32	s13, s16
d0058e74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e78:	db4c      	blt.n	d0058f14 <drawFakeHorizon+0x1f0>
d0058e7a:	2200      	movs	r2, #0
d0058e7c:	eec9 6a07 	vdiv.f32	s13, s18, s14
d0058e80:	6833      	ldr	r3, [r6, #0]
d0058e82:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0058e86:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0058e8a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0058e8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e92:	bfcc      	ite	gt
d0058e94:	2301      	movgt	r3, #1
d0058e96:	2300      	movle	r3, #0
d0058e98:	4293      	cmp	r3, r2
d0058e9a:	f000 8085 	beq.w	d0058fa8 <drawFakeHorizon+0x284>
d0058e9e:	eeb4 bac8 	vcmpe.f32	s22, s16
d0058ea2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058ea6:	d429      	bmi.n	d0058efc <drawFakeHorizon+0x1d8>
d0058ea8:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0058eac:	eeb0 7a6b 	vmov.f32	s14, s23
d0058eb0:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0058eb4:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0058eb8:	ee17 ba90 	vmov	fp, s15
d0058ebc:	f1bb 0f00 	cmp.w	fp, #0
d0058ec0:	da9a      	bge.n	d0058df8 <drawFakeHorizon+0xd4>
d0058ec2:	2a00      	cmp	r2, #0
d0058ec4:	d141      	bne.n	d0058f4a <drawFakeHorizon+0x226>
d0058ec6:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0058eca:	f104 0401 	add.w	r4, r4, #1
d0058ece:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0058ed2:	4628      	mov	r0, r5
d0058ed4:	bfa8      	it	ge
d0058ed6:	2201      	movge	r2, #1
d0058ed8:	4641      	mov	r1, r8
d0058eda:	f001 ff59 	bl	d005ad90 <memset>
d0058ede:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0058ee2:	d1b0      	bne.n	d0058e46 <drawFakeHorizon+0x122>
d0058ee4:	eddf 7a36 	vldr	s15, [pc, #216]	; d0058fc0 <drawFakeHorizon+0x29c>
d0058ee8:	eeb4 bae7 	vcmpe.f32	s22, s15
d0058eec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058ef0:	da31      	bge.n	d0058f56 <drawFakeHorizon+0x232>
d0058ef2:	b003      	add	sp, #12
d0058ef4:	ecbd 8b0e 	vpop	{d8-d14}
d0058ef8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0058efc:	b93a      	cbnz	r2, d0058f0e <drawFakeHorizon+0x1ea>
d0058efe:	22a0      	movs	r2, #160	; 0xa0
d0058f00:	4628      	mov	r0, r5
d0058f02:	4639      	mov	r1, r7
d0058f04:	4415      	add	r5, r2
d0058f06:	f001 ff43 	bl	d005ad90 <memset>
d0058f0a:	22a0      	movs	r2, #160	; 0xa0
d0058f0c:	e7db      	b.n	d0058ec6 <drawFakeHorizon+0x1a2>
d0058f0e:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d0058f12:	e77d      	b.n	d0058e10 <drawFakeHorizon+0xec>
d0058f14:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0058f18:	6832      	ldr	r2, [r6, #0]
d0058f1a:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d0058f1e:	4639      	mov	r1, r7
d0058f20:	4628      	mov	r0, r5
d0058f22:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0058f26:	f001 ff33 	bl	d005ad90 <memset>
d0058f2a:	e788      	b.n	d0058e3e <drawFakeHorizon+0x11a>
d0058f2c:	f1bb 0f00 	cmp.w	fp, #0
d0058f30:	d00e      	beq.n	d0058f50 <drawFakeHorizon+0x22c>
d0058f32:	4628      	mov	r0, r5
d0058f34:	4652      	mov	r2, sl
d0058f36:	4639      	mov	r1, r7
d0058f38:	4455      	add	r5, sl
d0058f3a:	f001 ff29 	bl	d005ad90 <memset>
d0058f3e:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0058f42:	f6bf af7c 	bge.w	d0058e3e <drawFakeHorizon+0x11a>
d0058f46:	4652      	mov	r2, sl
d0058f48:	e7bd      	b.n	d0058ec6 <drawFakeHorizon+0x1a2>
d0058f4a:	f04f 0a00 	mov.w	sl, #0
d0058f4e:	e76c      	b.n	d0058e2a <drawFakeHorizon+0x106>
d0058f50:	46da      	mov	sl, fp
d0058f52:	4652      	mov	r2, sl
d0058f54:	e7b7      	b.n	d0058ec6 <drawFakeHorizon+0x1a2>
d0058f56:	ee2d ca0c 	vmul.f32	s24, s26, s24
d0058f5a:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0058fc4 <drawFakeHorizon+0x2a0>
d0058f5e:	f240 12df 	movw	r2, #479	; 0x1df
d0058f62:	2000      	movs	r0, #0
d0058f64:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0058f68:	f8cd 9000 	str.w	r9, [sp]
d0058f6c:	eef0 6a4c 	vmov.f32	s13, s24
d0058f70:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0058f74:	eee9 6ace 	vfms.f32	s13, s19, s28
d0058f78:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d0058f7c:	ee86 7aad 	vdiv.f32	s14, s13, s27
d0058f80:	ee37 7a2b 	vadd.f32	s14, s14, s23
d0058f84:	ee77 baab 	vadd.f32	s23, s15, s23
d0058f88:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0058f8c:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d0058f90:	ee17 1a10 	vmov	r1, s14
d0058f94:	ee17 3a90 	vmov	r3, s15
d0058f98:	f7f9 fff0 	bl	d0052f7c <drawLine>
d0058f9c:	b003      	add	sp, #12
d0058f9e:	ecbd 8b0e 	vpop	{d8-d14}
d0058fa2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0058fa6:	4770      	bx	lr
d0058fa8:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0058fac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058fb0:	ddb5      	ble.n	d0058f1e <drawFakeHorizon+0x1fa>
d0058fb2:	4641      	mov	r1, r8
d0058fb4:	e7b4      	b.n	d0058f20 <drawFakeHorizon+0x1fc>
d0058fb6:	bf00      	nop
d0058fb8:	439f8000 	.word	0x439f8000
d0058fbc:	d00f9eb0 	.word	0xd00f9eb0
d0058fc0:	38d1b717 	.word	0x38d1b717
d0058fc4:	43ef8000 	.word	0x43ef8000

d0058fc8 <submitEntitySolid>:
d0058fc8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0058fcc:	ed2d 8b10 	vpush	{d8-d15}
d0058fd0:	b0bb      	sub	sp, #236	; 0xec
d0058fd2:	f10d 038f 	add.w	r3, sp, #143	; 0x8f
d0058fd6:	9102      	str	r1, [sp, #8]
d0058fd8:	f023 031f 	bic.w	r3, r3, #31
d0058fdc:	9303      	str	r3, [sp, #12]
d0058fde:	2800      	cmp	r0, #0
d0058fe0:	f000 832e 	beq.w	d0059640 <submitEntitySolid+0x678>
d0058fe4:	f8d0 a018 	ldr.w	sl, [r0, #24]
d0058fe8:	4604      	mov	r4, r0
d0058fea:	f1ba 0f00 	cmp.w	sl, #0
d0058fee:	f000 8327 	beq.w	d0059640 <submitEntitySolid+0x678>
d0058ff2:	f8da 3000 	ldr.w	r3, [sl]
d0058ff6:	2b00      	cmp	r3, #0
d0058ff8:	f000 8322 	beq.w	d0059640 <submitEntitySolid+0x678>
d0058ffc:	f8da 3010 	ldr.w	r3, [sl, #16]
d0059000:	2b00      	cmp	r3, #0
d0059002:	f000 831d 	beq.w	d0059640 <submitEntitySolid+0x678>
d0059006:	f8da 3004 	ldr.w	r3, [sl, #4]
d005900a:	3b01      	subs	r3, #1
d005900c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0059010:	f080 8316 	bcs.w	d0059640 <submitEntitySolid+0x678>
d0059014:	f8da 3014 	ldr.w	r3, [sl, #20]
d0059018:	2b00      	cmp	r3, #0
d005901a:	f340 8311 	ble.w	d0059640 <submitEntitySolid+0x678>
d005901e:	460e      	mov	r6, r1
d0059020:	edd1 fa11 	vldr	s31, [r1, #68]	; 0x44
d0059024:	ed91 ba10 	vldr	s22, [r1, #64]	; 0x40
d0059028:	f7fe fdfa 	bl	d0057c20 <lightsGet>
d005902c:	4605      	mov	r5, r0
d005902e:	f7fe fdfb 	bl	d0057c28 <lightsGetCount>
d0059032:	edda 7a09 	vldr	s15, [sl, #36]	; 0x24
d0059036:	ed9a 7a0a 	vldr	s14, [sl, #40]	; 0x28
d005903a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d005903e:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0059042:	edda 7a08 	vldr	s15, [sl, #32]
d0059046:	edd4 3a00 	vldr	s7, [r4]
d005904a:	edcd 7a05 	vstr	s15, [sp, #20]
d005904e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059052:	edda 7a0c 	vldr	s15, [sl, #48]	; 0x30
d0059056:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d005905a:	edd4 1a02 	vldr	s3, [r4, #8]
d005905e:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0059062:	bfc8      	it	gt
d0059064:	2301      	movgt	r3, #1
d0059066:	edda 7a0b 	vldr	s15, [sl, #44]	; 0x2c
d005906a:	bfd8      	it	le
d005906c:	2300      	movle	r3, #0
d005906e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059072:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d0059076:	edcd 7a0d 	vstr	s15, [sp, #52]	; 0x34
d005907a:	edd6 7a00 	vldr	s15, [r6]
d005907e:	bfc8      	it	gt
d0059080:	f043 0301 	orrgt.w	r3, r3, #1
d0059084:	ed94 fa01 	vldr	s30, [r4, #4]
d0059088:	edcd 7a07 	vstr	s15, [sp, #28]
d005908c:	edd6 7a01 	vldr	s15, [r6, #4]
d0059090:	ed94 aa0a 	vldr	s20, [r4, #40]	; 0x28
d0059094:	edcd 7a08 	vstr	s15, [sp, #32]
d0059098:	edd6 7a02 	vldr	s15, [r6, #8]
d005909c:	edd4 aa0b 	vldr	s21, [r4, #44]	; 0x2c
d00590a0:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d00590a4:	edd4 ea0c 	vldr	s29, [r4, #48]	; 0x30
d00590a8:	edd4 ba0d 	vldr	s23, [r4, #52]	; 0x34
d00590ac:	ed94 ca0e 	vldr	s24, [r4, #56]	; 0x38
d00590b0:	edd4 ca0f 	vldr	s25, [r4, #60]	; 0x3c
d00590b4:	ed94 da07 	vldr	s26, [r4, #28]
d00590b8:	edd4 da08 	vldr	s27, [r4, #32]
d00590bc:	ed94 ea09 	vldr	s28, [r4, #36]	; 0x24
d00590c0:	ed96 5a06 	vldr	s10, [r6, #24]
d00590c4:	ed96 3a07 	vldr	s6, [r6, #28]
d00590c8:	edcd 3a01 	vstr	s7, [sp, #4]
d00590cc:	edcd 1a06 	vstr	s3, [sp, #24]
d00590d0:	edd6 6a08 	vldr	s13, [r6, #32]
d00590d4:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d00590d8:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d00590dc:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d00590e0:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d00590e4:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d00590e8:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d00590ec:	b113      	cbz	r3, d00590f4 <submitEntitySolid+0x12c>
d00590ee:	2800      	cmp	r0, #0
d00590f0:	f300 8453 	bgt.w	d005999a <submitEntitySolid+0x9d2>
d00590f4:	2300      	movs	r3, #0
d00590f6:	9304      	str	r3, [sp, #16]
d00590f8:	eddd 4a08 	vldr	s9, [sp, #32]
d00590fc:	ee6a 1a83 	vmul.f32	s3, s21, s6
d0059100:	ed9d 4a07 	vldr	s8, [sp, #28]
d0059104:	ee2c 1a03 	vmul.f32	s2, s24, s6
d0059108:	ee7f 3a64 	vsub.f32	s7, s30, s9
d005910c:	eddd 4a01 	vldr	s9, [sp, #4]
d0059110:	ee6a 0aa2 	vmul.f32	s1, s21, s5
d0059114:	f8da 0004 	ldr.w	r0, [sl, #4]
d0059118:	ee74 4ac4 	vsub.f32	s9, s9, s8
d005911c:	ee23 9a23 	vmul.f32	s18, s6, s7
d0059120:	2800      	cmp	r0, #0
d0059122:	ee62 9aa3 	vmul.f32	s19, s5, s7
d0059126:	ee2c 0a22 	vmul.f32	s0, s24, s5
d005912a:	ee62 3a23 	vmul.f32	s7, s4, s7
d005912e:	ee2a 8a82 	vmul.f32	s16, s21, s4
d0059132:	ee6c 8a02 	vmul.f32	s17, s24, s4
d0059136:	ee2d 3a83 	vmul.f32	s6, s27, s6
d005913a:	ee6d 2aa2 	vmul.f32	s5, s27, s5
d005913e:	ee2d 2a82 	vmul.f32	s4, s27, s4
d0059142:	eee5 9aa4 	vfma.f32	s19, s11, s9
d0059146:	eee6 3a24 	vfma.f32	s7, s12, s9
d005914a:	eeea 0a25 	vfma.f32	s1, s20, s11
d005914e:	eeab 0aa5 	vfma.f32	s0, s23, s11
d0059152:	eeed 2a25 	vfma.f32	s5, s26, s11
d0059156:	eddd 5a09 	vldr	s11, [sp, #36]	; 0x24
d005915a:	eeaa 8a06 	vfma.f32	s16, s20, s12
d005915e:	eeeb 8a86 	vfma.f32	s17, s23, s12
d0059162:	eead 2a06 	vfma.f32	s4, s26, s12
d0059166:	ed9d 6a06 	vldr	s12, [sp, #24]
d005916a:	eea5 9a24 	vfma.f32	s18, s10, s9
d005916e:	eeea 1a05 	vfma.f32	s3, s20, s10
d0059172:	eeab 1a85 	vfma.f32	s2, s23, s10
d0059176:	eead 3a05 	vfma.f32	s6, s26, s10
d005917a:	ee36 6a65 	vsub.f32	s12, s12, s11
d005917e:	eeee 0a87 	vfma.f32	s1, s29, s14
d0059182:	eeac 0a87 	vfma.f32	s0, s25, s14
d0059186:	eeee 1aa6 	vfma.f32	s3, s29, s13
d005918a:	eeac 1aa6 	vfma.f32	s2, s25, s13
d005918e:	eea6 9a86 	vfma.f32	s18, s13, s12
d0059192:	eee7 9a06 	vfma.f32	s19, s14, s12
d0059196:	eee7 3a86 	vfma.f32	s7, s15, s12
d005919a:	eeae 3a26 	vfma.f32	s6, s28, s13
d005919e:	eeee 2a07 	vfma.f32	s5, s28, s14
d00591a2:	eeae 8aa7 	vfma.f32	s16, s29, s15
d00591a6:	eeec 8aa7 	vfma.f32	s17, s25, s15
d00591aa:	eeae 2a27 	vfma.f32	s4, s28, s15
d00591ae:	dd5b      	ble.n	d0059268 <submitEntitySolid+0x2a0>
d00591b0:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00591b4:	f8da 3000 	ldr.w	r3, [sl]
d00591b8:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d00591bc:	ed8d ba0f 	vstr	s22, [sp, #60]	; 0x3c
d00591c0:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d00591c4:	49ef      	ldr	r1, [pc, #956]	; (d0059584 <submitEntitySolid+0x5bc>)
d00591c6:	4af0      	ldr	r2, [pc, #960]	; (d0059588 <submitEntitySolid+0x5c0>)
d00591c8:	ed9d ba01 	vldr	s22, [sp, #4]
d00591cc:	eddd fa06 	vldr	s31, [sp, #24]
d00591d0:	edd3 7a01 	vldr	s15, [r3, #4]
d00591d4:	330c      	adds	r3, #12
d00591d6:	ed13 4a03 	vldr	s8, [r3, #-12]
d00591da:	310c      	adds	r1, #12
d00591dc:	ee2b 5aa7 	vmul.f32	s10, s23, s15
d00591e0:	ed53 4a01 	vldr	s9, [r3, #-4]
d00591e4:	ee6c 5a27 	vmul.f32	s11, s24, s15
d00591e8:	4298      	cmp	r0, r3
d00591ea:	ee2c 6aa7 	vmul.f32	s12, s25, s15
d00591ee:	f102 020c 	add.w	r2, r2, #12
d00591f2:	ee61 6a27 	vmul.f32	s13, s2, s15
d00591f6:	ee20 7a27 	vmul.f32	s14, s0, s15
d00591fa:	ee68 7aa7 	vmul.f32	s15, s17, s15
d00591fe:	eeaa 5a04 	vfma.f32	s10, s20, s8
d0059202:	eeea 5a84 	vfma.f32	s11, s21, s8
d0059206:	eeae 6a84 	vfma.f32	s12, s29, s8
d005920a:	eee1 6a84 	vfma.f32	s13, s3, s8
d005920e:	eea0 7a84 	vfma.f32	s14, s1, s8
d0059212:	eee8 7a04 	vfma.f32	s15, s16, s8
d0059216:	ee3b 5a05 	vadd.f32	s10, s22, s10
d005921a:	ee7f 5a25 	vadd.f32	s11, s30, s11
d005921e:	ee3f 6a86 	vadd.f32	s12, s31, s12
d0059222:	ee76 6a89 	vadd.f32	s13, s13, s18
d0059226:	ee37 7a29 	vadd.f32	s14, s14, s19
d005922a:	ee77 7aa3 	vadd.f32	s15, s15, s7
d005922e:	eead 5a24 	vfma.f32	s10, s26, s9
d0059232:	eeed 5aa4 	vfma.f32	s11, s27, s9
d0059236:	eeae 6a24 	vfma.f32	s12, s28, s9
d005923a:	eee3 6a24 	vfma.f32	s13, s6, s9
d005923e:	eea2 7aa4 	vfma.f32	s14, s5, s9
d0059242:	eee2 7a24 	vfma.f32	s15, s4, s9
d0059246:	ed01 5a03 	vstr	s10, [r1, #-12]
d005924a:	ed41 5a02 	vstr	s11, [r1, #-8]
d005924e:	ed01 6a01 	vstr	s12, [r1, #-4]
d0059252:	ed42 6a03 	vstr	s13, [r2, #-12]
d0059256:	ed02 7a02 	vstr	s14, [r2, #-8]
d005925a:	ed42 7a01 	vstr	s15, [r2, #-4]
d005925e:	d1b7      	bne.n	d00591d0 <submitEntitySolid+0x208>
d0059260:	eddd fa0e 	vldr	s31, [sp, #56]	; 0x38
d0059264:	ed9d ba0f 	vldr	s22, [sp, #60]	; 0x3c
d0059268:	f8da 3014 	ldr.w	r3, [sl, #20]
d005926c:	2b00      	cmp	r3, #0
d005926e:	9301      	str	r3, [sp, #4]
d0059270:	f340 81e6 	ble.w	d0059640 <submitEntitySolid+0x678>
d0059274:	f04f 0900 	mov.w	r9, #0
d0059278:	f8df 830c 	ldr.w	r8, [pc, #780]	; d0059588 <submitEntitySolid+0x5c0>
d005927c:	ed9f aac3 	vldr	s20, [pc, #780]	; d005958c <submitEntitySolid+0x5c4>
d0059280:	eddf aac3 	vldr	s21, [pc, #780]	; d0059590 <submitEntitySolid+0x5c8>
d0059284:	ed9d da0a 	vldr	s26, [sp, #40]	; 0x28
d0059288:	eddd ba0b 	vldr	s23, [sp, #44]	; 0x2c
d005928c:	ed9d ca0c 	vldr	s24, [sp, #48]	; 0x30
d0059290:	eddd ca0d 	vldr	s25, [sp, #52]	; 0x34
d0059294:	f8da 4010 	ldr.w	r4, [sl, #16]
d0059298:	ea4f 1309 	mov.w	r3, r9, lsl #4
d005929c:	58e3      	ldr	r3, [r4, r3]
d005929e:	eb04 1409 	add.w	r4, r4, r9, lsl #4
d00592a2:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d00592a6:	6862      	ldr	r2, [r4, #4]
d00592a8:	68a1      	ldr	r1, [r4, #8]
d00592aa:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d00592ae:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d00592b2:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d00592b6:	edd5 6a02 	vldr	s13, [r5, #8]
d00592ba:	eb01 0741 	add.w	r7, r1, r1, lsl #1
d00592be:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d00592c2:	eef4 6aef 	vcmpe.f32	s13, s31
d00592c6:	eb08 0787 	add.w	r7, r8, r7, lsl #2
d00592ca:	ea4f 0c42 	mov.w	ip, r2, lsl #1
d00592ce:	ea4f 0e41 	mov.w	lr, r1, lsl #1
d00592d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592d6:	dd0e      	ble.n	d00592f6 <submitEntitySolid+0x32e>
d00592d8:	edd6 7a02 	vldr	s15, [r6, #8]
d00592dc:	eef4 7aef 	vcmpe.f32	s15, s31
d00592e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592e4:	dd07      	ble.n	d00592f6 <submitEntitySolid+0x32e>
d00592e6:	edd7 7a02 	vldr	s15, [r7, #8]
d00592ea:	eef4 7aef 	vcmpe.f32	s15, s31
d00592ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592f2:	f300 819f 	bgt.w	d0059634 <submitEntitySolid+0x66c>
d00592f6:	eef4 6acb 	vcmpe.f32	s13, s22
d00592fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592fe:	d516      	bpl.n	d005932e <submitEntitySolid+0x366>
d0059300:	eb0c 0002 	add.w	r0, ip, r2
d0059304:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0059308:	edd0 7a02 	vldr	s15, [r0, #8]
d005930c:	eef4 7acb 	vcmpe.f32	s15, s22
d0059310:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059314:	d50b      	bpl.n	d005932e <submitEntitySolid+0x366>
d0059316:	eb0e 0001 	add.w	r0, lr, r1
d005931a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005931e:	edd0 7a02 	vldr	s15, [r0, #8]
d0059322:	eef4 7acb 	vcmpe.f32	s15, s22
d0059326:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005932a:	f100 8183 	bmi.w	d0059634 <submitEntitySolid+0x66c>
d005932e:	ed95 6a00 	vldr	s12, [r5]
d0059332:	edd5 3a02 	vldr	s7, [r5, #8]
d0059336:	ed96 2a00 	vldr	s4, [r6]
d005933a:	ed97 5a02 	vldr	s10, [r7, #8]
d005933e:	ee72 1a46 	vsub.f32	s3, s4, s12
d0059342:	edd5 7a01 	vldr	s15, [r5, #4]
d0059346:	ee35 5a63 	vsub.f32	s10, s10, s7
d005934a:	ed96 4a02 	vldr	s8, [r6, #8]
d005934e:	edd7 5a01 	vldr	s11, [r7, #4]
d0059352:	ed97 1a00 	vldr	s2, [r7]
d0059356:	ee34 4a63 	vsub.f32	s8, s8, s7
d005935a:	ee75 5ae7 	vsub.f32	s11, s11, s15
d005935e:	edd6 4a01 	vldr	s9, [r6, #4]
d0059362:	ee31 7a46 	vsub.f32	s14, s2, s12
d0059366:	ee65 2a61 	vnmul.f32	s5, s10, s3
d005936a:	ee74 4ae7 	vsub.f32	s9, s9, s15
d005936e:	ee25 3ac4 	vnmul.f32	s6, s11, s8
d0059372:	eee4 2a07 	vfma.f32	s5, s8, s14
d0059376:	ee27 7a64 	vnmul.f32	s14, s14, s9
d005937a:	eea4 3a85 	vfma.f32	s6, s9, s10
d005937e:	eea1 7aa5 	vfma.f32	s14, s3, s11
d0059382:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0059386:	eee6 7a03 	vfma.f32	s15, s12, s6
d005938a:	eee3 7a87 	vfma.f32	s15, s7, s14
d005938e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0059392:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059396:	f280 814d 	bge.w	d0059634 <submitEntitySolid+0x66c>
d005939a:	eef1 5a66 	vneg.f32	s11, s13
d005939e:	eef4 5ac6 	vcmpe.f32	s11, s12
d00593a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00593a6:	dd1a      	ble.n	d00593de <submitEntitySolid+0x416>
d00593a8:	eb0c 0002 	add.w	r0, ip, r2
d00593ac:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00593b0:	edd0 7a02 	vldr	s15, [r0, #8]
d00593b4:	eef1 7a67 	vneg.f32	s15, s15
d00593b8:	eef4 7ac2 	vcmpe.f32	s15, s4
d00593bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00593c0:	dd0d      	ble.n	d00593de <submitEntitySolid+0x416>
d00593c2:	eb0e 0001 	add.w	r0, lr, r1
d00593c6:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00593ca:	edd0 7a02 	vldr	s15, [r0, #8]
d00593ce:	eef1 7a67 	vneg.f32	s15, s15
d00593d2:	eef4 7ac1 	vcmpe.f32	s15, s2
d00593d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00593da:	f300 812b 	bgt.w	d0059634 <submitEntitySolid+0x66c>
d00593de:	eef4 6ac6 	vcmpe.f32	s13, s12
d00593e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00593e6:	d516      	bpl.n	d0059416 <submitEntitySolid+0x44e>
d00593e8:	eb0c 0002 	add.w	r0, ip, r2
d00593ec:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00593f0:	edd0 7a02 	vldr	s15, [r0, #8]
d00593f4:	eef4 7ac2 	vcmpe.f32	s15, s4
d00593f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00593fc:	d50b      	bpl.n	d0059416 <submitEntitySolid+0x44e>
d00593fe:	eb0e 0001 	add.w	r0, lr, r1
d0059402:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0059406:	edd0 7a02 	vldr	s15, [r0, #8]
d005940a:	eef4 7ac1 	vcmpe.f32	s15, s2
d005940e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059412:	f100 810f 	bmi.w	d0059634 <submitEntitySolid+0x66c>
d0059416:	ee26 7a8a 	vmul.f32	s14, s13, s20
d005941a:	eb0b 0003 	add.w	r0, fp, r3
d005941e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0059422:	eeb1 5a47 	vneg.f32	s10, s14
d0059426:	edd0 7a01 	vldr	s15, [r0, #4]
d005942a:	eef4 7ac5 	vcmpe.f32	s15, s10
d005942e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059432:	d51e      	bpl.n	d0059472 <submitEntitySolid+0x4aa>
d0059434:	eb0c 0002 	add.w	r0, ip, r2
d0059438:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005943c:	edd0 4a02 	vldr	s9, [r0, #8]
d0059440:	ed90 4a01 	vldr	s8, [r0, #4]
d0059444:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0059448:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005944c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059450:	d50f      	bpl.n	d0059472 <submitEntitySolid+0x4aa>
d0059452:	eb0e 0001 	add.w	r0, lr, r1
d0059456:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005945a:	edd0 4a02 	vldr	s9, [r0, #8]
d005945e:	ed90 4a01 	vldr	s8, [r0, #4]
d0059462:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0059466:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005946a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005946e:	f100 80e1 	bmi.w	d0059634 <submitEntitySolid+0x66c>
d0059472:	eef4 7ac7 	vcmpe.f32	s15, s14
d0059476:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005947a:	dd1e      	ble.n	d00594ba <submitEntitySolid+0x4f2>
d005947c:	eb0c 0002 	add.w	r0, ip, r2
d0059480:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0059484:	edd0 4a02 	vldr	s9, [r0, #8]
d0059488:	ed90 4a01 	vldr	s8, [r0, #4]
d005948c:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0059490:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0059494:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059498:	dd0f      	ble.n	d00594ba <submitEntitySolid+0x4f2>
d005949a:	eb0e 0001 	add.w	r0, lr, r1
d005949e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00594a2:	edd0 4a02 	vldr	s9, [r0, #8]
d00594a6:	ed90 4a01 	vldr	s8, [r0, #4]
d00594aa:	ee64 4a8a 	vmul.f32	s9, s9, s20
d00594ae:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00594b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594b6:	f300 80bd 	bgt.w	d0059634 <submitEntitySolid+0x66c>
d00594ba:	eef4 6acb 	vcmpe.f32	s13, s22
d00594be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594c2:	db26      	blt.n	d0059512 <submitEntitySolid+0x54a>
d00594c4:	eb0c 0002 	add.w	r0, ip, r2
d00594c8:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00594cc:	edd0 4a02 	vldr	s9, [r0, #8]
d00594d0:	eef4 4acb 	vcmpe.f32	s9, s22
d00594d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594d8:	db1b      	blt.n	d0059512 <submitEntitySolid+0x54a>
d00594da:	eb0e 0001 	add.w	r0, lr, r1
d00594de:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00594e2:	ed90 4a02 	vldr	s8, [r0, #8]
d00594e6:	eeb4 4acb 	vcmpe.f32	s8, s22
d00594ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594ee:	eef4 5ac6 	vcmpe.f32	s11, s12
d00594f2:	bfac      	ite	ge
d00594f4:	2001      	movge	r0, #1
d00594f6:	2000      	movlt	r0, #0
d00594f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594fc:	f000 0001 	and.w	r0, r0, #1
d0059500:	bf88      	it	hi
d0059502:	2000      	movhi	r0, #0
d0059504:	b128      	cbz	r0, d0059512 <submitEntitySolid+0x54a>
d0059506:	eef4 6a46 	vcmp.f32	s13, s12
d005950a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005950e:	f280 82ad 	bge.w	d0059a6c <submitEntitySolid+0xaa4>
d0059512:	2000      	movs	r0, #0
d0059514:	448e      	add	lr, r1
d0059516:	4462      	add	r2, ip
d0059518:	491a      	ldr	r1, [pc, #104]	; (d0059584 <submitEntitySolid+0x5bc>)
d005951a:	445b      	add	r3, fp
d005951c:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0059520:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0059524:	eb01 018e 	add.w	r1, r1, lr, lsl #2
d0059528:	edd2 4a00 	vldr	s9, [r2]
d005952c:	ed93 6a00 	vldr	s12, [r3]
d0059530:	ed93 7a02 	vldr	s14, [r3, #8]
d0059534:	ed91 4a02 	vldr	s8, [r1, #8]
d0059538:	ee74 2ac6 	vsub.f32	s5, s9, s12
d005953c:	edd3 6a01 	vldr	s13, [r3, #4]
d0059540:	ee34 2a47 	vsub.f32	s4, s8, s14
d0059544:	edd2 5a02 	vldr	s11, [r2, #8]
d0059548:	edd1 3a01 	vldr	s7, [r1, #4]
d005954c:	ed91 3a00 	vldr	s6, [r1]
d0059550:	ee35 1ac7 	vsub.f32	s2, s11, s14
d0059554:	ee73 7ae6 	vsub.f32	s15, s7, s13
d0059558:	ed92 5a01 	vldr	s10, [r2, #4]
d005955c:	ee33 8a46 	vsub.f32	s16, s6, s12
d0059560:	ee62 8a62 	vnmul.f32	s17, s4, s5
d0059564:	ee75 1a66 	vsub.f32	s3, s10, s13
d0059568:	ee27 9ac1 	vnmul.f32	s18, s15, s2
d005956c:	eee1 8a08 	vfma.f32	s17, s2, s16
d0059570:	ee28 8a61 	vnmul.f32	s16, s16, s3
d0059574:	eea1 9a82 	vfma.f32	s18, s3, s4
d0059578:	eea2 8aa7 	vfma.f32	s16, s5, s15
d005957c:	ee68 7aa8 	vmul.f32	s15, s17, s17
d0059580:	e00e      	b.n	d00595a0 <submitEntitySolid+0x5d8>
d0059582:	bf00      	nop
d0059584:	d00edcc0 	.word	0xd00edcc0
d0059588:	d0061c80 	.word	0xd0061c80
d005958c:	3f2aaaab 	.word	0x3f2aaaab
d0059590:	358637bd 	.word	0x358637bd
d0059594:	3b808081 	.word	0x3b808081
d0059598:	3eaaaaab 	.word	0x3eaaaaab
d005959c:	00000000 	.word	0x00000000
d00595a0:	eee9 7a09 	vfma.f32	s15, s18, s18
d00595a4:	eee8 7a08 	vfma.f32	s15, s16, s16
d00595a8:	eef4 7aea 	vcmpe.f32	s15, s21
d00595ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00595b0:	d940      	bls.n	d0059634 <submitEntitySolid+0x66c>
d00595b2:	7b63      	ldrb	r3, [r4, #13]
d00595b4:	eddd 2a05 	vldr	s5, [sp, #20]
d00595b8:	ee0f 3a10 	vmov	s30, r3
d00595bc:	9b04      	ldr	r3, [sp, #16]
d00595be:	ee72 9a8d 	vadd.f32	s19, s5, s26
d00595c2:	ed5f 2a0c 	vldr	s5, [pc, #-48]	; d0059594 <submitEntitySolid+0x5cc>
d00595c6:	eeb8 fa4f 	vcvt.f32.u32	s30, s30
d00595ca:	ee2f fa22 	vmul.f32	s30, s30, s5
d00595ce:	2b00      	cmp	r3, #0
d00595d0:	d158      	bne.n	d0059684 <submitEntitySolid+0x6bc>
d00595d2:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00595d6:	fec9 9a8f 	vmaxnm.f32	s19, s19, s30
d00595da:	9001      	str	r0, [sp, #4]
d00595dc:	fe89 0ac0 	vminnm.f32	s0, s19, s0
d00595e0:	f7fe faf2 	bl	d0057bc8 <brightnessToShadeF>
d00595e4:	f894 b00c 	ldrb.w	fp, [r4, #12]
d00595e8:	7ba3      	ldrb	r3, [r4, #14]
d00595ea:	eeb0 8a40 	vmov.f32	s16, s0
d00595ee:	f00b 0b0f 	and.w	fp, fp, #15
d00595f2:	9801      	ldr	r0, [sp, #4]
d00595f4:	b10b      	cbz	r3, d00595fa <submitEntitySolid+0x632>
d00595f6:	f04b 0b10 	orr.w	fp, fp, #16
d00595fa:	b330      	cbz	r0, d005964a <submitEntitySolid+0x682>
d00595fc:	eef0 4a48 	vmov.f32	s9, s16
d0059600:	7b62      	ldrb	r2, [r4, #13]
d0059602:	4659      	mov	r1, fp
d0059604:	9802      	ldr	r0, [sp, #8]
d0059606:	ed97 3a00 	vldr	s6, [r7]
d005960a:	edd7 3a01 	vldr	s7, [r7, #4]
d005960e:	ed97 4a02 	vldr	s8, [r7, #8]
d0059612:	edd6 1a00 	vldr	s3, [r6]
d0059616:	ed96 2a01 	vldr	s4, [r6, #4]
d005961a:	edd6 2a02 	vldr	s5, [r6, #8]
d005961e:	ed95 0a00 	vldr	s0, [r5]
d0059622:	edd5 0a01 	vldr	s1, [r5, #4]
d0059626:	ed95 1a02 	vldr	s2, [r5, #8]
d005962a:	f7ff f823 	bl	d0058674 <submitClippedTri>
d005962e:	f8da 3014 	ldr.w	r3, [sl, #20]
d0059632:	9301      	str	r3, [sp, #4]
d0059634:	f109 0901 	add.w	r9, r9, #1
d0059638:	9b01      	ldr	r3, [sp, #4]
d005963a:	4599      	cmp	r9, r3
d005963c:	f6ff ae2a 	blt.w	d0059294 <submitEntitySolid+0x2cc>
d0059640:	b03b      	add	sp, #236	; 0xec
d0059642:	ecbd 8b10 	vpop	{d8-d15}
d0059646:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005964a:	9902      	ldr	r1, [sp, #8]
d005964c:	9803      	ldr	r0, [sp, #12]
d005964e:	ed97 3a00 	vldr	s6, [r7]
d0059652:	edd7 3a01 	vldr	s7, [r7, #4]
d0059656:	ed97 4a02 	vldr	s8, [r7, #8]
d005965a:	edd6 1a00 	vldr	s3, [r6]
d005965e:	ed96 2a01 	vldr	s4, [r6, #4]
d0059662:	edd6 2a02 	vldr	s5, [r6, #8]
d0059666:	ed95 0a00 	vldr	s0, [r5]
d005966a:	edd5 0a01 	vldr	s1, [r5, #4]
d005966e:	ed95 1a02 	vldr	s2, [r5, #8]
d0059672:	f7fe fb9f 	bl	d0057db4 <clipTriangleToFrustum>
d0059676:	2802      	cmp	r0, #2
d0059678:	f300 815e 	bgt.w	d0059938 <submitEntitySolid+0x970>
d005967c:	f8da 3014 	ldr.w	r3, [sl, #20]
d0059680:	9301      	str	r3, [sp, #4]
d0059682:	e7d7      	b.n	d0059634 <submitEntitySolid+0x66c>
d0059684:	ee74 da86 	vadd.f32	s27, s9, s12
d0059688:	ed1f 6a3d 	vldr	s12, [pc, #-244]	; d0059598 <submitEntitySolid+0x5d0>
d005968c:	ee35 ea26 	vadd.f32	s28, s10, s13
d0059690:	ee75 ea87 	vadd.f32	s29, s11, s14
d0059694:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0059698:	ee7d da83 	vadd.f32	s27, s27, s6
d005969c:	ee3e ea23 	vadd.f32	s28, s28, s7
d00596a0:	ee7e ea84 	vadd.f32	s29, s29, s8
d00596a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00596a8:	ee6d da86 	vmul.f32	s27, s27, s12
d00596ac:	ee2e ea06 	vmul.f32	s28, s28, s12
d00596b0:	ee6e ea86 	vmul.f32	s29, s29, s12
d00596b4:	dd17      	ble.n	d00596e6 <submitEntitySolid+0x71e>
d00596b6:	ed9d 7a08 	vldr	s14, [sp, #32]
d00596ba:	ee77 2a4e 	vsub.f32	s5, s14, s28
d00596be:	ed9d 7a07 	vldr	s14, [sp, #28]
d00596c2:	ee37 3a6d 	vsub.f32	s6, s14, s27
d00596c6:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d00596ca:	ee37 4a6e 	vsub.f32	s8, s14, s29
d00596ce:	ee22 7aa2 	vmul.f32	s14, s5, s5
d00596d2:	eea3 7a03 	vfma.f32	s14, s6, s6
d00596d6:	eea4 7a04 	vfma.f32	s14, s8, s8
d00596da:	eeb4 7aea 	vcmpe.f32	s14, s21
d00596de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00596e2:	f300 81a7 	bgt.w	d0059a34 <submitEntitySolid+0xa6c>
d00596e6:	ed1f 4a53 	vldr	s8, [pc, #-332]	; d005959c <submitEntitySolid+0x5d4>
d00596ea:	eef0 2a44 	vmov.f32	s5, s8
d00596ee:	eeb0 3a44 	vmov.f32	s6, s8
d00596f2:	eef1 6ae7 	vsqrt.f32	s13, s15
d00596f6:	aa13      	add	r2, sp, #76	; 0x4c
d00596f8:	4639      	mov	r1, r7
d00596fa:	9501      	str	r5, [sp, #4]
d00596fc:	f04f 0b00 	mov.w	fp, #0
d0059700:	4615      	mov	r5, r2
d0059702:	4627      	mov	r7, r4
d0059704:	4632      	mov	r2, r6
d0059706:	9e04      	ldr	r6, [sp, #16]
d0059708:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005970c:	eef0 0a6c 	vmov.f32	s1, s25
d0059710:	eeb0 6a4f 	vmov.f32	s12, s30
d0059714:	eeb0 5a47 	vmov.f32	s10, s14
d0059718:	eef0 ca43 	vmov.f32	s25, s6
d005971c:	eeb0 fa44 	vmov.f32	s30, s8
d0059720:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0059724:	eeb0 7a4b 	vmov.f32	s14, s22
d0059728:	eef0 6a4d 	vmov.f32	s13, s26
d005972c:	eeb0 ba6e 	vmov.f32	s22, s29
d0059730:	eeb0 da62 	vmov.f32	s26, s5
d0059734:	eef0 ea4e 	vmov.f32	s29, s28
d0059738:	eeb0 ea6d 	vmov.f32	s28, s27
d005973c:	ee28 8a27 	vmul.f32	s16, s16, s15
d0059740:	ee29 9a27 	vmul.f32	s18, s18, s15
d0059744:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0059748:	ee38 2a08 	vadd.f32	s4, s16, s16
d005974c:	eef0 7a6f 	vmov.f32	s15, s31
d0059750:	ee39 1a09 	vadd.f32	s2, s18, s18
d0059754:	ee78 1aa8 	vadd.f32	s3, s17, s17
d0059758:	eef0 da48 	vmov.f32	s27, s16
d005975c:	eef0 fa42 	vmov.f32	s31, s4
d0059760:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0059764:	7823      	ldrb	r3, [r4, #0]
d0059766:	2b00      	cmp	r3, #0
d0059768:	d172      	bne.n	d0059850 <submitEntitySolid+0x888>
d005976a:	ed94 0a02 	vldr	s0, [r4, #8]
d005976e:	ed94 4a01 	vldr	s8, [r4, #4]
d0059772:	ee30 0a6e 	vsub.f32	s0, s0, s29
d0059776:	edd4 4a03 	vldr	s9, [r4, #12]
d005977a:	ee34 4a4e 	vsub.f32	s8, s8, s28
d005977e:	edd4 3a0a 	vldr	s7, [r4, #40]	; 0x28
d0059782:	ee74 4acb 	vsub.f32	s9, s9, s22
d0059786:	ee60 5a00 	vmul.f32	s11, s0, s0
d005978a:	ee23 3aa3 	vmul.f32	s6, s7, s7
d005978e:	eee4 5a04 	vfma.f32	s11, s8, s8
d0059792:	eee4 5aa4 	vfma.f32	s11, s9, s9
d0059796:	eef4 5a6a 	vcmp.f32	s11, s21
d005979a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005979e:	dd44      	ble.n	d005982a <submitEntitySolid+0x862>
d00597a0:	eeb4 3a65 	vcmp.f32	s6, s11
d00597a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00597a8:	dd3f      	ble.n	d005982a <submitEntitySolid+0x862>
d00597aa:	eeb1 8ae5 	vsqrt.f32	s16, s11
d00597ae:	edd4 2a08 	vldr	s5, [r4, #32]
d00597b2:	ee22 2aa2 	vmul.f32	s4, s5, s5
d00597b6:	eeb4 2ae5 	vcmpe.f32	s4, s11
d00597ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00597be:	ee85 3a08 	vdiv.f32	s6, s10, s16
d00597c2:	ee24 4a03 	vmul.f32	s8, s8, s6
d00597c6:	ee20 0a03 	vmul.f32	s0, s0, s6
d00597ca:	ee64 4a83 	vmul.f32	s9, s9, s6
d00597ce:	f140 80b0 	bpl.w	d0059932 <submitEntitySolid+0x96a>
d00597d2:	ed94 2a09 	vldr	s4, [r4, #36]	; 0x24
d00597d6:	eef4 2ac2 	vcmpe.f32	s5, s4
d00597da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00597de:	da24      	bge.n	d005982a <submitEntitySolid+0x862>
d00597e0:	eef4 3ac2 	vcmpe.f32	s7, s4
d00597e4:	ee65 5a83 	vmul.f32	s11, s11, s6
d00597e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00597ec:	eeb4 2ae5 	vcmpe.f32	s4, s11
d00597f0:	f240 810d 	bls.w	d0059a0e <submitEntitySolid+0xa46>
d00597f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00597f8:	f2c0 81c2 	blt.w	d0059b80 <submitEntitySolid+0xbb8>
d00597fc:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0059800:	ee72 2a62 	vsub.f32	s5, s4, s5
d0059804:	eeb6 3a08 	vmov.f32	s6, #104	; 0x3f400000  0.750
d0059808:	eeb0 8a45 	vmov.f32	s16, s10
d005980c:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0059810:	ed5f 5a9e 	vldr	s11, [pc, #-632]	; d005959c <submitEntitySolid+0x5d4>
d0059814:	fec3 5aa5 	vmaxnm.f32	s11, s7, s11
d0059818:	fec5 5ac5 	vminnm.f32	s11, s11, s10
d005981c:	eea5 8ac3 	vfms.f32	s16, s11, s6
d0059820:	eeb5 8ac0 	vcmpe.f32	s16, #0.0
d0059824:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059828:	d820      	bhi.n	d005986c <submitEntitySolid+0x8a4>
d005982a:	f10b 0b01 	add.w	fp, fp, #1
d005982e:	455e      	cmp	r6, fp
d0059830:	d196      	bne.n	d0059760 <submitEntitySolid+0x798>
d0059832:	463c      	mov	r4, r7
d0059834:	eef0 fa67 	vmov.f32	s31, s15
d0059838:	eeb0 ba47 	vmov.f32	s22, s14
d005983c:	9d01      	ldr	r5, [sp, #4]
d005983e:	eeb0 da66 	vmov.f32	s26, s13
d0059842:	4616      	mov	r6, r2
d0059844:	eef0 ca60 	vmov.f32	s25, s1
d0059848:	460f      	mov	r7, r1
d005984a:	eeb0 fa46 	vmov.f32	s30, s12
d005984e:	e6c0      	b.n	d00595d2 <submitEntitySolid+0x60a>
d0059850:	ed94 4a04 	vldr	s8, [r4, #16]
d0059854:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0059858:	ed94 0a05 	vldr	s0, [r4, #20]
d005985c:	edd4 4a06 	vldr	s9, [r4, #24]
d0059860:	eeb1 4a44 	vneg.f32	s8, s8
d0059864:	eeb1 0a40 	vneg.f32	s0, s0
d0059868:	eef1 4a64 	vneg.f32	s9, s9
d005986c:	ee60 5a28 	vmul.f32	s11, s0, s17
d0059870:	eee4 5a09 	vfma.f32	s11, s8, s18
d0059874:	eee4 5aad 	vfma.f32	s11, s9, s27
d0059878:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d005987c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059880:	d9d3      	bls.n	d005982a <submitEntitySolid+0x862>
d0059882:	eef5 bac0 	vcmpe.f32	s23, #0.0
d0059886:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005988a:	dd07      	ble.n	d005989c <submitEntitySolid+0x8d4>
d005988c:	edd4 3a07 	vldr	s7, [r4, #28]
d0059890:	ee6b 3aa3 	vmul.f32	s7, s23, s7
d0059894:	ee63 3a88 	vmul.f32	s7, s7, s16
d0059898:	eee5 9aa3 	vfma.f32	s19, s11, s7
d005989c:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d00598a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00598a4:	dd2f      	ble.n	d0059906 <submitEntitySolid+0x93e>
d00598a6:	ee95 0aa1 	vfnms.f32	s0, s11, s3
d00598aa:	ee95 4a81 	vfnms.f32	s8, s11, s2
d00598ae:	eed5 4aaf 	vfnms.f32	s9, s11, s31
d00598b2:	ee2d 0a00 	vmul.f32	s0, s26, s0
d00598b6:	eeac 0a84 	vfma.f32	s0, s25, s8
d00598ba:	eeaf 0a24 	vfma.f32	s0, s30, s9
d00598be:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00598c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00598c6:	dd1e      	ble.n	d0059906 <submitEntitySolid+0x93e>
d00598c8:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d00598cc:	eef4 0a65 	vcmp.f32	s1, s11
d00598d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00598d4:	d009      	beq.n	d00598ea <submitEntitySolid+0x922>
d00598d6:	eef3 5a00 	vmov.f32	s11, #48	; 0x41800000  16.0
d00598da:	eef4 0a65 	vcmp.f32	s1, s11
d00598de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00598e2:	f040 8124 	bne.w	d0059b2e <submitEntitySolid+0xb66>
d00598e6:	ee20 0a00 	vmul.f32	s0, s0, s0
d00598ea:	ee20 0a00 	vmul.f32	s0, s0, s0
d00598ee:	ee20 0a00 	vmul.f32	s0, s0, s0
d00598f2:	ee20 0a00 	vmul.f32	s0, s0, s0
d00598f6:	edd4 5a07 	vldr	s11, [r4, #28]
d00598fa:	ee6c 5a25 	vmul.f32	s11, s24, s11
d00598fe:	ee25 8a88 	vmul.f32	s16, s11, s16
d0059902:	eee0 9a08 	vfma.f32	s19, s0, s16
d0059906:	eef4 9ac5 	vcmpe.f32	s19, s10
d005990a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005990e:	db8c      	blt.n	d005982a <submitEntitySolid+0x862>
d0059910:	463c      	mov	r4, r7
d0059912:	eef0 fa67 	vmov.f32	s31, s15
d0059916:	eeb0 ba47 	vmov.f32	s22, s14
d005991a:	9d01      	ldr	r5, [sp, #4]
d005991c:	eeb0 da66 	vmov.f32	s26, s13
d0059920:	4616      	mov	r6, r2
d0059922:	eef0 ca60 	vmov.f32	s25, s1
d0059926:	460f      	mov	r7, r1
d0059928:	eeb0 fa46 	vmov.f32	s30, s12
d005992c:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0059930:	e64f      	b.n	d00595d2 <submitEntitySolid+0x60a>
d0059932:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0059936:	e799      	b.n	d005986c <submitEntitySolid+0x8a4>
d0059938:	1e46      	subs	r6, r0, #1
d005993a:	eef0 4a48 	vmov.f32	s9, s16
d005993e:	f8cd 9004 	str.w	r9, [sp, #4]
d0059942:	2501      	movs	r5, #1
d0059944:	46d9      	mov	r9, fp
d0059946:	9802      	ldr	r0, [sp, #8]
d0059948:	46b3      	mov	fp, r6
d005994a:	4626      	mov	r6, r4
d005994c:	9c03      	ldr	r4, [sp, #12]
d005994e:	462f      	mov	r7, r5
d0059950:	3501      	adds	r5, #1
d0059952:	7bb3      	ldrb	r3, [r6, #14]
d0059954:	4649      	mov	r1, r9
d0059956:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d005995a:	7b72      	ldrb	r2, [r6, #13]
d005995c:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0059960:	ed94 0a00 	vldr	s0, [r4]
d0059964:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d0059968:	edd4 0a01 	vldr	s1, [r4, #4]
d005996c:	eb04 0c8c 	add.w	ip, r4, ip, lsl #2
d0059970:	ed94 1a02 	vldr	s2, [r4, #8]
d0059974:	edd7 1a00 	vldr	s3, [r7]
d0059978:	ed97 2a01 	vldr	s4, [r7, #4]
d005997c:	edd7 2a02 	vldr	s5, [r7, #8]
d0059980:	ed9c 3a00 	vldr	s6, [ip]
d0059984:	eddc 3a01 	vldr	s7, [ip, #4]
d0059988:	ed9c 4a02 	vldr	s8, [ip, #8]
d005998c:	f7fe fe72 	bl	d0058674 <submitClippedTri>
d0059990:	455d      	cmp	r5, fp
d0059992:	d1dc      	bne.n	d005994e <submitEntitySolid+0x986>
d0059994:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0059998:	e670      	b.n	d005967c <submitEntitySolid+0x6b4>
d005999a:	2200      	movs	r2, #0
d005999c:	ed9a 1a06 	vldr	s2, [sl, #24]
d00599a0:	4611      	mov	r1, r2
d00599a2:	e027      	b.n	d00599f4 <submitEntitySolid+0xa2c>
d00599a4:	edd5 4a02 	vldr	s9, [r5, #8]
d00599a8:	ab3a      	add	r3, sp, #232	; 0xe8
d00599aa:	ed95 0a01 	vldr	s0, [r5, #4]
d00599ae:	ee74 4acf 	vsub.f32	s9, s9, s30
d00599b2:	edd5 0a03 	vldr	s1, [r5, #12]
d00599b6:	ee30 0a63 	vsub.f32	s0, s0, s7
d00599ba:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d00599be:	ee70 0ae1 	vsub.f32	s1, s1, s3
d00599c2:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d00599c6:	ee64 4aa4 	vmul.f32	s9, s9, s9
d00599ca:	ee31 4a04 	vadd.f32	s8, s2, s8
d00599ce:	eee0 4a00 	vfma.f32	s9, s0, s0
d00599d2:	ee24 4a04 	vmul.f32	s8, s8, s8
d00599d6:	eee0 4aa0 	vfma.f32	s9, s1, s1
d00599da:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00599de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00599e2:	db02      	blt.n	d00599ea <submitEntitySolid+0xa22>
d00599e4:	3101      	adds	r1, #1
d00599e6:	f843 5c98 	str.w	r5, [r3, #-152]
d00599ea:	3201      	adds	r2, #1
d00599ec:	3540      	adds	r5, #64	; 0x40
d00599ee:	4290      	cmp	r0, r2
d00599f0:	f340 809a 	ble.w	d0059b28 <submitEntitySolid+0xb60>
d00599f4:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d00599f6:	2b00      	cmp	r3, #0
d00599f8:	d0f7      	beq.n	d00599ea <submitEntitySolid+0xa22>
d00599fa:	782b      	ldrb	r3, [r5, #0]
d00599fc:	2b01      	cmp	r3, #1
d00599fe:	d1d1      	bne.n	d00599a4 <submitEntitySolid+0x9dc>
d0059a00:	ab3a      	add	r3, sp, #232	; 0xe8
d0059a02:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0059a06:	3101      	adds	r1, #1
d0059a08:	f843 5c98 	str.w	r5, [r3, #-152]
d0059a0c:	e7ed      	b.n	d00599ea <submitEntitySolid+0xa22>
d0059a0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059a12:	f67f af0a 	bls.w	d005982a <submitEntitySolid+0x862>
d0059a16:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0059a1a:	ee72 2a62 	vsub.f32	s5, s4, s5
d0059a1e:	ee85 8aa2 	vdiv.f32	s16, s11, s5
d0059a22:	eddf 5a61 	vldr	s11, [pc, #388]	; d0059ba8 <submitEntitySolid+0xbe0>
d0059a26:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0059a2a:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0059a2e:	ee35 8a48 	vsub.f32	s16, s10, s16
d0059a32:	e6f5      	b.n	d0059820 <submitEntitySolid+0x858>
d0059a34:	eddf 6a5d 	vldr	s13, [pc, #372]	; d0059bac <submitEntitySolid+0xbe4>
d0059a38:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0059a3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059a40:	d407      	bmi.n	d0059a52 <submitEntitySolid+0xa8a>
d0059a42:	eddf 6a5b 	vldr	s13, [pc, #364]	; d0059bb0 <submitEntitySolid+0xbe8>
d0059a46:	eeb4 7a66 	vcmp.f32	s14, s13
d0059a4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059a4e:	f77f ae50 	ble.w	d00596f2 <submitEntitySolid+0x72a>
d0059a52:	eef1 6ac7 	vsqrt.f32	s13, s14
d0059a56:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0059a5a:	ee86 7a26 	vdiv.f32	s14, s12, s13
d0059a5e:	ee23 3a07 	vmul.f32	s6, s6, s14
d0059a62:	ee62 2a87 	vmul.f32	s5, s5, s14
d0059a66:	ee24 4a07 	vmul.f32	s8, s8, s14
d0059a6a:	e642      	b.n	d00596f2 <submitEntitySolid+0x72a>
d0059a6c:	eef1 6a64 	vneg.f32	s13, s9
d0059a70:	eef4 6a42 	vcmp.f32	s13, s4
d0059a74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059a78:	f63f ad4b 	bhi.w	d0059512 <submitEntitySolid+0x54a>
d0059a7c:	eef4 4a42 	vcmp.f32	s9, s4
d0059a80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059a84:	f6ff ad45 	blt.w	d0059512 <submitEntitySolid+0x54a>
d0059a88:	eef1 6a44 	vneg.f32	s13, s8
d0059a8c:	eef4 6ac1 	vcmpe.f32	s13, s2
d0059a90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059a94:	eeb4 4ac1 	vcmpe.f32	s8, s2
d0059a98:	bf94      	ite	ls
d0059a9a:	2001      	movls	r0, #1
d0059a9c:	2000      	movhi	r0, #0
d0059a9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059aa2:	eef4 7ac5 	vcmpe.f32	s15, s10
d0059aa6:	f000 0001 	and.w	r0, r0, #1
d0059aaa:	bfb8      	it	lt
d0059aac:	2000      	movlt	r0, #0
d0059aae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059ab2:	f000 0001 	and.w	r0, r0, #1
d0059ab6:	bfb8      	it	lt
d0059ab8:	2000      	movlt	r0, #0
d0059aba:	2800      	cmp	r0, #0
d0059abc:	f43f ad29 	beq.w	d0059512 <submitEntitySolid+0x54a>
d0059ac0:	eef4 7a47 	vcmp.f32	s15, s14
d0059ac4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059ac8:	f63f ad23 	bhi.w	d0059512 <submitEntitySolid+0x54a>
d0059acc:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0059ad0:	200c      	movs	r0, #12
d0059ad2:	fb00 8002 	mla	r0, r0, r2, r8
d0059ad6:	eeb1 7a64 	vneg.f32	s14, s9
d0059ada:	edd0 7a01 	vldr	s15, [r0, #4]
d0059ade:	eef4 7a47 	vcmp.f32	s15, s14
d0059ae2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059ae6:	f6ff ad14 	blt.w	d0059512 <submitEntitySolid+0x54a>
d0059aea:	eef4 7a64 	vcmp.f32	s15, s9
d0059aee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059af2:	f63f ad0e 	bhi.w	d0059512 <submitEntitySolid+0x54a>
d0059af6:	ee24 4a0a 	vmul.f32	s8, s8, s20
d0059afa:	200c      	movs	r0, #12
d0059afc:	fb00 8001 	mla	r0, r0, r1, r8
d0059b00:	eeb1 7a44 	vneg.f32	s14, s8
d0059b04:	edd0 7a01 	vldr	s15, [r0, #4]
d0059b08:	eef4 7ac7 	vcmpe.f32	s15, s14
d0059b0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059b10:	eef4 7ac4 	vcmpe.f32	s15, s8
d0059b14:	bfac      	ite	ge
d0059b16:	2001      	movge	r0, #1
d0059b18:	2000      	movlt	r0, #0
d0059b1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059b1e:	f000 0001 	and.w	r0, r0, #1
d0059b22:	bf88      	it	hi
d0059b24:	2000      	movhi	r0, #0
d0059b26:	e4f5      	b.n	d0059514 <submitEntitySolid+0x54c>
d0059b28:	9104      	str	r1, [sp, #16]
d0059b2a:	f7ff bae5 	b.w	d00590f8 <submitEntitySolid+0x130>
d0059b2e:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0059b32:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d0059b36:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d0059b3a:	9110      	str	r1, [sp, #64]	; 0x40
d0059b3c:	920f      	str	r2, [sp, #60]	; 0x3c
d0059b3e:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d0059b42:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d0059b46:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d0059b4a:	900b      	str	r0, [sp, #44]	; 0x2c
d0059b4c:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d0059b50:	edcd 0a06 	vstr	s1, [sp, #24]
d0059b54:	f7fb ff5c 	bl	d0055a10 <powfxt>
d0059b58:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0059b5c:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0059b60:	ed9d 6a11 	vldr	s12, [sp, #68]	; 0x44
d0059b64:	9910      	ldr	r1, [sp, #64]	; 0x40
d0059b66:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0059b68:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d0059b6c:	ed9d 7a0d 	vldr	s14, [sp, #52]	; 0x34
d0059b70:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0059b74:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0059b76:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d0059b7a:	eddd 0a06 	vldr	s1, [sp, #24]
d0059b7e:	e6ba      	b.n	d00598f6 <submitEntitySolid+0x92e>
d0059b80:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0059b84:	ee73 3ac2 	vsub.f32	s7, s7, s4
d0059b88:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0059b8c:	ee85 8aa3 	vdiv.f32	s16, s11, s7
d0059b90:	eddf 5a05 	vldr	s11, [pc, #20]	; d0059ba8 <submitEntitySolid+0xbe0>
d0059b94:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0059b98:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0059b9c:	ee35 8a48 	vsub.f32	s16, s10, s16
d0059ba0:	ee28 8a03 	vmul.f32	s16, s16, s6
d0059ba4:	e63c      	b.n	d0059820 <submitEntitySolid+0x858>
d0059ba6:	bf00      	nop
d0059ba8:	00000000 	.word	0x00000000
d0059bac:	3f7fbe77 	.word	0x3f7fbe77
d0059bb0:	3f8020c5 	.word	0x3f8020c5

d0059bb4 <submitWorldEntities>:
d0059bb4:	b570      	push	{r4, r5, r6, lr}
d0059bb6:	4c3e      	ldr	r4, [pc, #248]	; (d0059cb0 <submitWorldEntities+0xfc>)
d0059bb8:	4605      	mov	r5, r0
d0059bba:	f504 4600 	add.w	r6, r4, #32768	; 0x8000
d0059bbe:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0059bc2:	2b00      	cmp	r3, #0
d0059bc4:	d070      	beq.n	d0059ca8 <submitWorldEntities+0xf4>
d0059bc6:	69a3      	ldr	r3, [r4, #24]
d0059bc8:	2b00      	cmp	r3, #0
d0059bca:	d06d      	beq.n	d0059ca8 <submitWorldEntities+0xf4>
d0059bcc:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
d0059bd0:	07d2      	lsls	r2, r2, #31
d0059bd2:	d569      	bpl.n	d0059ca8 <submitWorldEntities+0xf4>
d0059bd4:	edd5 6a01 	vldr	s13, [r5, #4]
d0059bd8:	ed94 7a01 	vldr	s14, [r4, #4]
d0059bdc:	ed95 5a00 	vldr	s10, [r5]
d0059be0:	ee37 7a66 	vsub.f32	s14, s14, s13
d0059be4:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d0059be8:	edd4 6a00 	vldr	s13, [r4]
d0059bec:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0059bf0:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0059bf4:	ed94 6a02 	vldr	s12, [r4, #8]
d0059bf8:	ee67 7a27 	vmul.f32	s15, s14, s15
d0059bfc:	ed95 5a02 	vldr	s10, [r5, #8]
d0059c00:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d0059c04:	ee36 6a45 	vsub.f32	s12, s12, s10
d0059c08:	ed93 5a06 	vldr	s10, [r3, #24]
d0059c0c:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0059c10:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d0059c14:	eee6 7a24 	vfma.f32	s15, s12, s9
d0059c18:	ee77 4ac5 	vsub.f32	s9, s15, s10
d0059c1c:	eef4 4ae5 	vcmpe.f32	s9, s11
d0059c20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059c24:	dc40      	bgt.n	d0059ca8 <submitWorldEntities+0xf4>
d0059c26:	ee75 4a27 	vadd.f32	s9, s10, s15
d0059c2a:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d0059c2e:	eef4 4ae5 	vcmpe.f32	s9, s11
d0059c32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059c36:	d437      	bmi.n	d0059ca8 <submitWorldEntities+0xf4>
d0059c38:	edd5 5a07 	vldr	s11, [r5, #28]
d0059c3c:	eeb1 4a64 	vneg.f32	s8, s9
d0059c40:	ed95 3a08 	vldr	s6, [r5, #32]
d0059c44:	ee67 5a25 	vmul.f32	s11, s14, s11
d0059c48:	edd5 3a06 	vldr	s7, [r5, #24]
d0059c4c:	eee6 5a03 	vfma.f32	s11, s12, s6
d0059c50:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0059c54:	eef4 5ac4 	vcmpe.f32	s11, s8
d0059c58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059c5c:	d424      	bmi.n	d0059ca8 <submitWorldEntities+0xf4>
d0059c5e:	eef4 5ae4 	vcmpe.f32	s11, s9
d0059c62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059c66:	dc1f      	bgt.n	d0059ca8 <submitWorldEntities+0xf4>
d0059c68:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d0059c6c:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d0059c70:	ee27 7a25 	vmul.f32	s14, s14, s11
d0059c74:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d0059c78:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d0059c7c:	eea7 5a84 	vfma.f32	s10, s15, s8
d0059c80:	eea6 7a24 	vfma.f32	s14, s12, s9
d0059c84:	eef1 7a45 	vneg.f32	s15, s10
d0059c88:	eea6 7aa5 	vfma.f32	s14, s13, s11
d0059c8c:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0059c90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059c94:	d408      	bmi.n	d0059ca8 <submitWorldEntities+0xf4>
d0059c96:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0059c9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059c9e:	dc03      	bgt.n	d0059ca8 <submitWorldEntities+0xf4>
d0059ca0:	4629      	mov	r1, r5
d0059ca2:	4620      	mov	r0, r4
d0059ca4:	f7ff f990 	bl	d0058fc8 <submitEntitySolid>
d0059ca8:	3480      	adds	r4, #128	; 0x80
d0059caa:	42a6      	cmp	r6, r4
d0059cac:	d187      	bne.n	d0059bbe <submitWorldEntities+0xa>
d0059cae:	bd70      	pop	{r4, r5, r6, pc}
d0059cb0:	d00f9ec0 	.word	0xd00f9ec0

d0059cb4 <Render3D>:
d0059cb4:	4aa2      	ldr	r2, [pc, #648]	; (d0059f40 <Render3D+0x28c>)
d0059cb6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0059cba:	7813      	ldrb	r3, [r2, #0]
d0059cbc:	4604      	mov	r4, r0
d0059cbe:	7850      	ldrb	r0, [r2, #1]
d0059cc0:	7891      	ldrb	r1, [r2, #2]
d0059cc2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0059cc6:	78d2      	ldrb	r2, [r2, #3]
d0059cc8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0059ccc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0059cd0:	ed2d 8b02 	vpush	{d8}
d0059cd4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0059cd6:	b088      	sub	sp, #32
d0059cd8:	4798      	blx	r3
d0059cda:	b128      	cbz	r0, d0059ce8 <Render3D+0x34>
d0059cdc:	4999      	ldr	r1, [pc, #612]	; (d0059f44 <Render3D+0x290>)
d0059cde:	f100 0260 	add.w	r2, r0, #96	; 0x60
d0059ce2:	4b99      	ldr	r3, [pc, #612]	; (d0059f48 <Render3D+0x294>)
d0059ce4:	6008      	str	r0, [r1, #0]
d0059ce6:	601a      	str	r2, [r3, #0]
d0059ce8:	4f98      	ldr	r7, [pc, #608]	; (d0059f4c <Render3D+0x298>)
d0059cea:	2600      	movs	r6, #0
d0059cec:	4620      	mov	r0, r4
d0059cee:	603e      	str	r6, [r7, #0]
d0059cf0:	f7ff ff60 	bl	d0059bb4 <submitWorldEntities>
d0059cf4:	4620      	mov	r0, r4
d0059cf6:	f7fb ff27 	bl	d0055b48 <sb3dParticlesRender>
d0059cfa:	4b95      	ldr	r3, [pc, #596]	; (d0059f50 <Render3D+0x29c>)
d0059cfc:	681d      	ldr	r5, [r3, #0]
d0059cfe:	2d00      	cmp	r5, #0
d0059d00:	f040 80cf 	bne.w	d0059ea2 <Render3D+0x1ee>
d0059d04:	f8df 8254 	ldr.w	r8, [pc, #596]	; d0059f5c <Render3D+0x2a8>
d0059d08:	f8df 9254 	ldr.w	r9, [pc, #596]	; d0059f60 <Render3D+0x2ac>
d0059d0c:	0168      	lsls	r0, r5, #5
d0059d0e:	f7f9 f8fb 	bl	d0052f08 <beginDepthBand>
d0059d12:	f8d8 6000 	ldr.w	r6, [r8]
d0059d16:	2e00      	cmp	r6, #0
d0059d18:	f040 8090 	bne.w	d0059e3c <Render3D+0x188>
d0059d1c:	f8d9 a000 	ldr.w	sl, [r9]
d0059d20:	683a      	ldr	r2, [r7, #0]
d0059d22:	f1ba 0f00 	cmp.w	sl, #0
d0059d26:	d158      	bne.n	d0059dda <Render3D+0x126>
d0059d28:	2a00      	cmp	r2, #0
d0059d2a:	dd4e      	ble.n	d0059dca <Render3D+0x116>
d0059d2c:	4c89      	ldr	r4, [pc, #548]	; (d0059f54 <Render3D+0x2a0>)
d0059d2e:	e021      	b.n	d0059d74 <Render3D+0xc0>
d0059d30:	f894 1036 	ldrb.w	r1, [r4, #54]	; 0x36
d0059d34:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d0059d36:	8c20      	ldrh	r0, [r4, #32]
d0059d38:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0059d3a:	9305      	str	r3, [sp, #20]
d0059d3c:	9106      	str	r1, [sp, #24]
d0059d3e:	9204      	str	r2, [sp, #16]
d0059d40:	9603      	str	r6, [sp, #12]
d0059d42:	9002      	str	r0, [sp, #8]
d0059d44:	6963      	ldr	r3, [r4, #20]
d0059d46:	9301      	str	r3, [sp, #4]
d0059d48:	6923      	ldr	r3, [r4, #16]
d0059d4a:	9300      	str	r3, [sp, #0]
d0059d4c:	edd4 1a07 	vldr	s3, [r4, #28]
d0059d50:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0059d54:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0059d58:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0059d5c:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0059d60:	e9d4 0100 	ldrd	r0, r1, [r4]
d0059d64:	f7fa fab6 	bl	d00542d4 <fillTriangleDitherBayerT>
d0059d68:	683a      	ldr	r2, [r7, #0]
d0059d6a:	f10a 0a01 	add.w	sl, sl, #1
d0059d6e:	3440      	adds	r4, #64	; 0x40
d0059d70:	4592      	cmp	sl, r2
d0059d72:	da2a      	bge.n	d0059dca <Render3D+0x116>
d0059d74:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0059d78:	42ab      	cmp	r3, r5
d0059d7a:	dcf6      	bgt.n	d0059d6a <Render3D+0xb6>
d0059d7c:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d0059d80:	42ab      	cmp	r3, r5
d0059d82:	dbf2      	blt.n	d0059d6a <Render3D+0xb6>
d0059d84:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0059d88:	06da      	lsls	r2, r3, #27
d0059d8a:	d4d1      	bmi.n	d0059d30 <Render3D+0x7c>
d0059d8c:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d0059d8e:	f10a 0a01 	add.w	sl, sl, #1
d0059d92:	8c20      	ldrh	r0, [r4, #32]
d0059d94:	6961      	ldr	r1, [r4, #20]
d0059d96:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0059d98:	9305      	str	r3, [sp, #20]
d0059d9a:	9204      	str	r2, [sp, #16]
d0059d9c:	9603      	str	r6, [sp, #12]
d0059d9e:	9002      	str	r0, [sp, #8]
d0059da0:	9101      	str	r1, [sp, #4]
d0059da2:	6923      	ldr	r3, [r4, #16]
d0059da4:	9300      	str	r3, [sp, #0]
d0059da6:	edd4 1a07 	vldr	s3, [r4, #28]
d0059daa:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0059dae:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0059db2:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0059db6:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0059dba:	e9d4 0100 	ldrd	r0, r1, [r4]
d0059dbe:	f7f9 fd71 	bl	d00538a4 <fillTriangleDitherBayer>
d0059dc2:	683a      	ldr	r2, [r7, #0]
d0059dc4:	3440      	adds	r4, #64	; 0x40
d0059dc6:	4592      	cmp	sl, r2
d0059dc8:	dbd4      	blt.n	d0059d74 <Render3D+0xc0>
d0059dca:	3501      	adds	r5, #1
d0059dcc:	2d0a      	cmp	r5, #10
d0059dce:	d19d      	bne.n	d0059d0c <Render3D+0x58>
d0059dd0:	b008      	add	sp, #32
d0059dd2:	ecbd 8b02 	vpop	{d8}
d0059dd6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059dda:	2a00      	cmp	r2, #0
d0059ddc:	ddf5      	ble.n	d0059dca <Render3D+0x116>
d0059dde:	4c5d      	ldr	r4, [pc, #372]	; (d0059f54 <Render3D+0x2a0>)
d0059de0:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0059de4:	3601      	adds	r6, #1
d0059de6:	42ab      	cmp	r3, r5
d0059de8:	dc1f      	bgt.n	d0059e2a <Render3D+0x176>
d0059dea:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d0059dee:	42ab      	cmp	r3, r5
d0059df0:	db1b      	blt.n	d0059e2a <Render3D+0x176>
d0059df2:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0059df6:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d0059df8:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0059dfa:	8c21      	ldrh	r1, [r4, #32]
d0059dfc:	9205      	str	r2, [sp, #20]
d0059dfe:	9304      	str	r3, [sp, #16]
d0059e00:	9003      	str	r0, [sp, #12]
d0059e02:	9102      	str	r1, [sp, #8]
d0059e04:	6963      	ldr	r3, [r4, #20]
d0059e06:	9301      	str	r3, [sp, #4]
d0059e08:	6923      	ldr	r3, [r4, #16]
d0059e0a:	9300      	str	r3, [sp, #0]
d0059e0c:	edd4 1a07 	vldr	s3, [r4, #28]
d0059e10:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0059e14:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0059e18:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0059e1c:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0059e20:	e9d4 0100 	ldrd	r0, r1, [r4]
d0059e24:	f7fa ffa0 	bl	d0054d68 <fillTriangleDitherBayer2Mode>
d0059e28:	683a      	ldr	r2, [r7, #0]
d0059e2a:	4296      	cmp	r6, r2
d0059e2c:	f104 0440 	add.w	r4, r4, #64	; 0x40
d0059e30:	dbd6      	blt.n	d0059de0 <Render3D+0x12c>
d0059e32:	3501      	adds	r5, #1
d0059e34:	2d0a      	cmp	r5, #10
d0059e36:	f47f af69 	bne.w	d0059d0c <Render3D+0x58>
d0059e3a:	e7c9      	b.n	d0059dd0 <Render3D+0x11c>
d0059e3c:	683a      	ldr	r2, [r7, #0]
d0059e3e:	2a00      	cmp	r2, #0
d0059e40:	ddc3      	ble.n	d0059dca <Render3D+0x116>
d0059e42:	4c44      	ldr	r4, [pc, #272]	; (d0059f54 <Render3D+0x2a0>)
d0059e44:	2600      	movs	r6, #0
d0059e46:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0059e4a:	3601      	adds	r6, #1
d0059e4c:	42ab      	cmp	r3, r5
d0059e4e:	dc1f      	bgt.n	d0059e90 <Render3D+0x1dc>
d0059e50:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d0059e54:	42ab      	cmp	r3, r5
d0059e56:	db1b      	blt.n	d0059e90 <Render3D+0x1dc>
d0059e58:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0059e5c:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d0059e5e:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0059e60:	8c21      	ldrh	r1, [r4, #32]
d0059e62:	9205      	str	r2, [sp, #20]
d0059e64:	9304      	str	r3, [sp, #16]
d0059e66:	9003      	str	r0, [sp, #12]
d0059e68:	9102      	str	r1, [sp, #8]
d0059e6a:	6963      	ldr	r3, [r4, #20]
d0059e6c:	9301      	str	r3, [sp, #4]
d0059e6e:	6923      	ldr	r3, [r4, #16]
d0059e70:	9300      	str	r3, [sp, #0]
d0059e72:	edd4 1a07 	vldr	s3, [r4, #28]
d0059e76:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0059e7a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0059e7e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0059e82:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0059e86:	e9d4 0100 	ldrd	r0, r1, [r4]
d0059e8a:	f7f9 f8d5 	bl	d0053038 <fillTriangleFlat>
d0059e8e:	683a      	ldr	r2, [r7, #0]
d0059e90:	4296      	cmp	r6, r2
d0059e92:	f104 0440 	add.w	r4, r4, #64	; 0x40
d0059e96:	dbd6      	blt.n	d0059e46 <Render3D+0x192>
d0059e98:	3501      	adds	r5, #1
d0059e9a:	2d0a      	cmp	r5, #10
d0059e9c:	f47f af36 	bne.w	d0059d0c <Render3D+0x58>
d0059ea0:	e796      	b.n	d0059dd0 <Render3D+0x11c>
d0059ea2:	683b      	ldr	r3, [r7, #0]
d0059ea4:	42b3      	cmp	r3, r6
d0059ea6:	dd93      	ble.n	d0059dd0 <Render3D+0x11c>
d0059ea8:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0059eac:	4c29      	ldr	r4, [pc, #164]	; (d0059f54 <Render3D+0x2a0>)
d0059eae:	eddf 8a2a 	vldr	s17, [pc, #168]	; d0059f58 <Render3D+0x2a4>
d0059eb2:	edd4 7a07 	vldr	s15, [r4, #28]
d0059eb6:	3601      	adds	r6, #1
d0059eb8:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0059ebc:	ee77 7a88 	vadd.f32	s15, s15, s16
d0059ec0:	ee07 3a10 	vmov	s14, r3
d0059ec4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0059ec8:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0059ecc:	ee17 1a90 	vmov	r1, s15
d0059ed0:	eef0 7a48 	vmov.f32	s15, s16
d0059ed4:	2904      	cmp	r1, #4
d0059ed6:	eee7 7a28 	vfma.f32	s15, s14, s17
d0059eda:	bfa8      	it	ge
d0059edc:	2104      	movge	r1, #4
d0059ede:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0059ee2:	b153      	cbz	r3, d0059efa <Render3D+0x246>
d0059ee4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0059ee8:	ee17 3a90 	vmov	r3, s15
d0059eec:	f1c3 0305 	rsb	r3, r3, #5
d0059ef0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0059ef4:	4299      	cmp	r1, r3
d0059ef6:	bfa8      	it	ge
d0059ef8:	4619      	movge	r1, r3
d0059efa:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d0059efe:	f7f9 f88b 	bl	d0053018 <shadeColor>
d0059f02:	4605      	mov	r5, r0
d0059f04:	68e3      	ldr	r3, [r4, #12]
d0059f06:	68a2      	ldr	r2, [r4, #8]
d0059f08:	6861      	ldr	r1, [r4, #4]
d0059f0a:	9000      	str	r0, [sp, #0]
d0059f0c:	6820      	ldr	r0, [r4, #0]
d0059f0e:	f7f9 f835 	bl	d0052f7c <drawLine>
d0059f12:	9500      	str	r5, [sp, #0]
d0059f14:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0059f18:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0059f1c:	f7f9 f82e 	bl	d0052f7c <drawLine>
d0059f20:	9500      	str	r5, [sp, #0]
d0059f22:	e9d4 2300 	ldrd	r2, r3, [r4]
d0059f26:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0059f2a:	f7f9 f827 	bl	d0052f7c <drawLine>
d0059f2e:	683b      	ldr	r3, [r7, #0]
d0059f30:	3440      	adds	r4, #64	; 0x40
d0059f32:	42b3      	cmp	r3, r6
d0059f34:	dcbd      	bgt.n	d0059eb2 <Render3D+0x1fe>
d0059f36:	b008      	add	sp, #32
d0059f38:	ecbd 8b02 	vpop	{d8}
d0059f3c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059f40:	2001f000 	.word	0x2001f000
d0059f44:	d006dc80 	.word	0xd006dc80
d0059f48:	d006dc84 	.word	0xd006dc84
d0059f4c:	d006dc8c 	.word	0xd006dc8c
d0059f50:	d00edca4 	.word	0xd00edca4
d0059f54:	d006dca0 	.word	0xd006dca0
d0059f58:	3ca0a0a1 	.word	0x3ca0a0a1
d0059f5c:	d006dc88 	.word	0xd006dc88
d0059f60:	d00edca0 	.word	0xd00edca0

d0059f64 <entitySweepRaycastTest>:
d0059f64:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0059f68:	4606      	mov	r6, r0
d0059f6a:	460f      	mov	r7, r1
d0059f6c:	461d      	mov	r5, r3
d0059f6e:	4614      	mov	r4, r2
d0059f70:	ed2d 8b10 	vpush	{d8-d15}
d0059f74:	b091      	sub	sp, #68	; 0x44
d0059f76:	b11a      	cbz	r2, d0059f80 <entitySweepRaycastTest+0x1c>
d0059f78:	2300      	movs	r3, #0
d0059f7a:	6013      	str	r3, [r2, #0]
d0059f7c:	6053      	str	r3, [r2, #4]
d0059f7e:	6093      	str	r3, [r2, #8]
d0059f80:	b125      	cbz	r5, d0059f8c <entitySweepRaycastTest+0x28>
d0059f82:	2210      	movs	r2, #16
d0059f84:	2100      	movs	r1, #0
d0059f86:	4628      	mov	r0, r5
d0059f88:	f000 ff02 	bl	d005ad90 <memset>
d0059f8c:	4630      	mov	r0, r6
d0059f8e:	f7fc ff4b 	bl	d0056e28 <entityIdValid>
d0059f92:	b928      	cbnz	r0, d0059fa0 <entitySweepRaycastTest+0x3c>
d0059f94:	2000      	movs	r0, #0
d0059f96:	b011      	add	sp, #68	; 0x44
d0059f98:	ecbd 8b10 	vpop	{d8-d15}
d0059f9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0059fa0:	4638      	mov	r0, r7
d0059fa2:	f7fc ff41 	bl	d0056e28 <entityIdValid>
d0059fa6:	42be      	cmp	r6, r7
d0059fa8:	d0f4      	beq.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059faa:	2800      	cmp	r0, #0
d0059fac:	d0f2      	beq.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059fae:	4bc4      	ldr	r3, [pc, #784]	; (d005a2c0 <entitySweepRaycastTest+0x35c>)
d0059fb0:	01f0      	lsls	r0, r6, #7
d0059fb2:	eb03 16c6 	add.w	r6, r3, r6, lsl #7
d0059fb6:	f896 2040 	ldrb.w	r2, [r6, #64]	; 0x40
d0059fba:	2a00      	cmp	r2, #0
d0059fbc:	d0ea      	beq.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059fbe:	eb03 12c7 	add.w	r2, r3, r7, lsl #7
d0059fc2:	01ff      	lsls	r7, r7, #7
d0059fc4:	f892 1040 	ldrb.w	r1, [r2, #64]	; 0x40
d0059fc8:	2900      	cmp	r1, #0
d0059fca:	d0e3      	beq.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059fcc:	69b6      	ldr	r6, [r6, #24]
d0059fce:	2e00      	cmp	r6, #0
d0059fd0:	d0e0      	beq.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059fd2:	6992      	ldr	r2, [r2, #24]
d0059fd4:	2a00      	cmp	r2, #0
d0059fd6:	d0dd      	beq.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059fd8:	f8d2 c000 	ldr.w	ip, [r2]
d0059fdc:	f1bc 0f00 	cmp.w	ip, #0
d0059fe0:	d0d8      	beq.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059fe2:	f8d2 e010 	ldr.w	lr, [r2, #16]
d0059fe6:	f1be 0f00 	cmp.w	lr, #0
d0059fea:	d0d3      	beq.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059fec:	6951      	ldr	r1, [r2, #20]
d0059fee:	2900      	cmp	r1, #0
d0059ff0:	ddd0      	ble.n	d0059f94 <entitySweepRaycastTest+0x30>
d0059ff2:	f100 080c 	add.w	r8, r0, #12
d0059ff6:	eb03 0900 	add.w	r9, r3, r0
d0059ffa:	ed9f 5ab2 	vldr	s10, [pc, #712]	; d005a2c4 <entitySweepRaycastTest+0x360>
d0059ffe:	4498      	add	r8, r3
d005a000:	edd9 7a01 	vldr	s15, [r9, #4]
d005a004:	edd9 6a00 	vldr	s13, [r9]
d005a008:	edd8 5a01 	vldr	s11, [r8, #4]
d005a00c:	ed98 4a00 	vldr	s8, [r8]
d005a010:	ee77 7ae5 	vsub.f32	s15, s15, s11
d005a014:	edd8 4a02 	vldr	s9, [r8, #8]
d005a018:	ee76 6ac4 	vsub.f32	s13, s13, s8
d005a01c:	ed99 6a02 	vldr	s12, [r9, #8]
d005a020:	edd6 3a06 	vldr	s7, [r6, #24]
d005a024:	ee27 7aa7 	vmul.f32	s14, s15, s15
d005a028:	ee36 6a64 	vsub.f32	s12, s12, s9
d005a02c:	eea6 7aa6 	vfma.f32	s14, s13, s13
d005a030:	eea6 7a06 	vfma.f32	s14, s12, s12
d005a034:	eeb4 7ac5 	vcmpe.f32	s14, s10
d005a038:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a03c:	f200 81e7 	bhi.w	d005a40e <entitySweepRaycastTest+0x4aa>
d005a040:	301c      	adds	r0, #28
d005a042:	ed9f 5aa4 	vldr	s10, [pc, #656]	; d005a2d4 <entitySweepRaycastTest+0x370>
d005a046:	4418      	add	r0, r3
d005a048:	edd0 7a01 	vldr	s15, [r0, #4]
d005a04c:	edd0 6a00 	vldr	s13, [r0]
d005a050:	ee27 7aa7 	vmul.f32	s14, s15, s15
d005a054:	ed90 6a02 	vldr	s12, [r0, #8]
d005a058:	eea6 7aa6 	vfma.f32	s14, s13, s13
d005a05c:	eea6 7a06 	vfma.f32	s14, s12, s12
d005a060:	eeb4 7ac5 	vcmpe.f32	s14, s10
d005a064:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a068:	f240 81f1 	bls.w	d005a44e <entitySweepRaycastTest+0x4ea>
d005a06c:	eeb1 5ac7 	vsqrt.f32	s10, s14
d005a070:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d005a074:	ee83 7a05 	vdiv.f32	s14, s6, s10
d005a078:	ee67 7a27 	vmul.f32	s15, s14, s15
d005a07c:	ee67 6a26 	vmul.f32	s13, s14, s13
d005a080:	ee27 6a06 	vmul.f32	s12, s14, s12
d005a084:	ee23 0aa7 	vmul.f32	s0, s7, s15
d005a088:	ee63 0aa6 	vmul.f32	s1, s7, s13
d005a08c:	ee23 2a86 	vmul.f32	s4, s7, s12
d005a090:	ee20 7a00 	vmul.f32	s14, s0, s0
d005a094:	eea0 7aa0 	vfma.f32	s14, s1, s1
d005a098:	eeb0 ca63 	vmov.f32	s24, s7
d005a09c:	eea2 7a02 	vfma.f32	s14, s4, s4
d005a0a0:	eddf 2a89 	vldr	s5, [pc, #548]	; d005a2c8 <entitySweepRaycastTest+0x364>
d005a0a4:	19d8      	adds	r0, r3, r7
d005a0a6:	edd2 1a06 	vldr	s3, [r2, #24]
d005a0aa:	ed90 3a00 	vldr	s6, [r0]
d005a0ae:	ee73 1aa1 	vadd.f32	s3, s7, s3
d005a0b2:	edd0 3a02 	vldr	s7, [r0, #8]
d005a0b6:	ee33 3a44 	vsub.f32	s6, s6, s8
d005a0ba:	eeb0 5a47 	vmov.f32	s10, s14
d005a0be:	ed90 7a01 	vldr	s14, [r0, #4]
d005a0c2:	ee73 3ae4 	vsub.f32	s7, s7, s9
d005a0c6:	ee37 7a65 	vsub.f32	s14, s14, s11
d005a0ca:	eeb4 5ae2 	vcmpe.f32	s10, s5
d005a0ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a0d2:	d915      	bls.n	d005a100 <entitySweepRaycastTest+0x19c>
d005a0d4:	ee27 1a00 	vmul.f32	s2, s14, s0
d005a0d8:	eddf 8a7f 	vldr	s17, [pc, #508]	; d005a2d8 <entitySweepRaycastTest+0x374>
d005a0dc:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d005a0e0:	eea3 1a20 	vfma.f32	s2, s6, s1
d005a0e4:	eea3 1a82 	vfma.f32	s2, s7, s4
d005a0e8:	eec1 2a05 	vdiv.f32	s5, s2, s10
d005a0ec:	fe82 5aa8 	vmaxnm.f32	s10, s5, s17
d005a0f0:	fe85 5a48 	vminnm.f32	s10, s10, s16
d005a0f4:	eea5 7a40 	vfms.f32	s14, s10, s0
d005a0f8:	eea5 3a60 	vfms.f32	s6, s10, s1
d005a0fc:	eee5 3a42 	vfms.f32	s7, s10, s4
d005a100:	ee27 7a07 	vmul.f32	s14, s14, s14
d005a104:	ee21 5aa1 	vmul.f32	s10, s3, s3
d005a108:	eea3 7a03 	vfma.f32	s14, s6, s6
d005a10c:	eea3 7aa3 	vfma.f32	s14, s7, s7
d005a110:	eeb4 5ac7 	vcmpe.f32	s10, s14
d005a114:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a118:	f53f af3c 	bmi.w	d0059f94 <entitySweepRaycastTest+0x30>
d005a11c:	443b      	add	r3, r7
d005a11e:	ed9f 7a6d 	vldr	s14, [pc, #436]	; d005a2d4 <entitySweepRaycastTest+0x370>
d005a122:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d005a126:	ed93 da0e 	vldr	s26, [r3, #56]	; 0x38
d005a12a:	edd3 ca0d 	vldr	s25, [r3, #52]	; 0x34
d005a12e:	ee27 1a8d 	vmul.f32	s2, s15, s26
d005a132:	edd3 ea0b 	vldr	s29, [r3, #44]	; 0x2c
d005a136:	ed93 fa0a 	vldr	s30, [r3, #40]	; 0x28
d005a13a:	ee7c ba08 	vadd.f32	s23, s24, s16
d005a13e:	ee67 0aae 	vmul.f32	s1, s15, s29
d005a142:	ed93 5a08 	vldr	s10, [r3, #32]
d005a146:	eea6 1aac 	vfma.f32	s2, s13, s25
d005a14a:	edd3 fa0f 	vldr	s31, [r3, #60]	; 0x3c
d005a14e:	ee67 7a85 	vmul.f32	s15, s15, s10
d005a152:	ed93 ea0c 	vldr	s28, [r3, #48]	; 0x30
d005a156:	eee6 0a8f 	vfma.f32	s1, s13, s30
d005a15a:	edd3 da07 	vldr	s27, [r3, #28]
d005a15e:	edd3 3a09 	vldr	s7, [r3, #36]	; 0x24
d005a162:	eee6 7aad 	vfma.f32	s15, s13, s27
d005a166:	ed93 3a01 	vldr	s6, [r3, #4]
d005a16a:	edd3 2a00 	vldr	s5, [r3]
d005a16e:	eea6 1a2f 	vfma.f32	s2, s12, s31
d005a172:	ed93 2a02 	vldr	s4, [r3, #8]
d005a176:	ee75 5ac3 	vsub.f32	s11, s11, s6
d005a17a:	ed8d 5a04 	vstr	s10, [sp, #16]
d005a17e:	eee6 0a0e 	vfma.f32	s1, s12, s28
d005a182:	edcd 3a05 	vstr	s7, [sp, #20]
d005a186:	ee34 4a62 	vsub.f32	s8, s8, s5
d005a18a:	ed8d 3a02 	vstr	s6, [sp, #8]
d005a18e:	eee6 7a23 	vfma.f32	s15, s12, s7
d005a192:	edcd 2a01 	vstr	s5, [sp, #4]
d005a196:	ee25 aaae 	vmul.f32	s20, s11, s29
d005a19a:	ed8d 2a03 	vstr	s4, [sp, #12]
d005a19e:	ee61 6a01 	vmul.f32	s13, s2, s2
d005a1a2:	ee65 9a8d 	vmul.f32	s19, s11, s26
d005a1a6:	ee65 8a85 	vmul.f32	s17, s11, s10
d005a1aa:	eee0 6aa0 	vfma.f32	s13, s1, s1
d005a1ae:	eea4 aa0f 	vfma.f32	s20, s8, s30
d005a1b2:	eee4 9a2c 	vfma.f32	s19, s8, s25
d005a1b6:	eee4 8a2d 	vfma.f32	s17, s8, s27
d005a1ba:	ee74 4ac2 	vsub.f32	s9, s9, s4
d005a1be:	eee7 6aa7 	vfma.f32	s13, s15, s15
d005a1c2:	eea4 aa8e 	vfma.f32	s20, s9, s28
d005a1c6:	eee4 9aaf 	vfma.f32	s19, s9, s31
d005a1ca:	eee4 8aa3 	vfma.f32	s17, s9, s7
d005a1ce:	eef4 6ac7 	vcmpe.f32	s13, s14
d005a1d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a1d6:	f240 815a 	bls.w	d005a48e <entitySweepRaycastTest+0x52a>
d005a1da:	eeb1 6ae6 	vsqrt.f32	s12, s13
d005a1de:	ee88 7a06 	vdiv.f32	s14, s16, s12
d005a1e2:	ee67 0a20 	vmul.f32	s1, s14, s1
d005a1e6:	ee27 1a01 	vmul.f32	s2, s14, s2
d005a1ea:	ee27 8a27 	vmul.f32	s16, s14, s15
d005a1ee:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d005a1f2:	4677      	mov	r7, lr
d005a1f4:	f04f 0b00 	mov.w	fp, #0
d005a1f8:	eb0e 1a01 	add.w	sl, lr, r1, lsl #4
d005a1fc:	f10d 091c 	add.w	r9, sp, #28
d005a200:	f10d 0828 	add.w	r8, sp, #40	; 0x28
d005a204:	f10d 0e34 	add.w	lr, sp, #52	; 0x34
d005a208:	eddf aa30 	vldr	s21, [pc, #192]	; d005a2cc <entitySweepRaycastTest+0x368>
d005a20c:	ed9f ba30 	vldr	s22, [pc, #192]	; d005a2d0 <entitySweepRaycastTest+0x36c>
d005a210:	f8cd b000 	str.w	fp, [sp]
d005a214:	68bb      	ldr	r3, [r7, #8]
d005a216:	e9d7 2600 	ldrd	r2, r6, [r7]
d005a21a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d005a21e:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d005a222:	eb06 0646 	add.w	r6, r6, r6, lsl #1
d005a226:	eb0c 0282 	add.w	r2, ip, r2, lsl #2
d005a22a:	eb0c 0686 	add.w	r6, ip, r6, lsl #2
d005a22e:	eb0c 0383 	add.w	r3, ip, r3, lsl #2
d005a232:	ca07      	ldmia	r2, {r0, r1, r2}
d005a234:	e889 0007 	stmia.w	r9, {r0, r1, r2}
d005a238:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d005a23c:	e888 0007 	stmia.w	r8, {r0, r1, r2}
d005a240:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005a244:	ed9d 5a09 	vldr	s10, [sp, #36]	; 0x24
d005a248:	eddd 5a07 	vldr	s11, [sp, #28]
d005a24c:	eddd 6a08 	vldr	s13, [sp, #32]
d005a250:	eddd 3a0b 	vldr	s7, [sp, #44]	; 0x2c
d005a254:	ed9d 3a0a 	vldr	s6, [sp, #40]	; 0x28
d005a258:	ee73 3ae6 	vsub.f32	s7, s7, s13
d005a25c:	eddd 2a0c 	vldr	s5, [sp, #48]	; 0x30
d005a260:	ee33 3a65 	vsub.f32	s6, s6, s11
d005a264:	ee72 2ac5 	vsub.f32	s5, s5, s10
d005a268:	e88e 0007 	stmia.w	lr, {r0, r1, r2}
d005a26c:	eddd 4a0f 	vldr	s9, [sp, #60]	; 0x3c
d005a270:	ed9d 4a0d 	vldr	s8, [sp, #52]	; 0x34
d005a274:	ee74 4ac5 	vsub.f32	s9, s9, s10
d005a278:	ed9d 6a0e 	vldr	s12, [sp, #56]	; 0x38
d005a27c:	ee34 4a65 	vsub.f32	s8, s8, s11
d005a280:	ee36 6a66 	vsub.f32	s12, s12, s13
d005a284:	ee60 7ae4 	vnmul.f32	s15, s1, s9
d005a288:	ee24 2a41 	vnmul.f32	s4, s8, s2
d005a28c:	ee26 0a48 	vnmul.f32	s0, s12, s16
d005a290:	eee8 7a04 	vfma.f32	s15, s16, s8
d005a294:	eea6 2a20 	vfma.f32	s4, s12, s1
d005a298:	eea1 0a24 	vfma.f32	s0, s2, s9
d005a29c:	ee23 7aa7 	vmul.f32	s14, s7, s15
d005a2a0:	eea3 7a00 	vfma.f32	s14, s6, s0
d005a2a4:	eea2 7a82 	vfma.f32	s14, s5, s4
d005a2a8:	eeb4 7a6a 	vcmp.f32	s14, s21
d005a2ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a2b0:	dd14      	ble.n	d005a2dc <entitySweepRaycastTest+0x378>
d005a2b2:	eeb4 7a4b 	vcmp.f32	s14, s22
d005a2b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a2ba:	d467      	bmi.n	d005a38c <entitySweepRaycastTest+0x428>
d005a2bc:	e00e      	b.n	d005a2dc <entitySweepRaycastTest+0x378>
d005a2be:	bf00      	nop
d005a2c0:	d00f9ec0 	.word	0xd00f9ec0
d005a2c4:	322bcc77 	.word	0x322bcc77
d005a2c8:	3727c5ac 	.word	0x3727c5ac
d005a2cc:	b8d1b717 	.word	0xb8d1b717
d005a2d0:	38d1b717 	.word	0x38d1b717
d005a2d4:	2edbe6ff 	.word	0x2edbe6ff
d005a2d8:	00000000 	.word	0x00000000
d005a2dc:	ee79 6ae6 	vsub.f32	s13, s19, s13
d005a2e0:	eec9 1a07 	vdiv.f32	s3, s18, s14
d005a2e4:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005a2e8:	ee7a 5a65 	vsub.f32	s11, s20, s11
d005a2ec:	ee38 5ac5 	vsub.f32	s10, s17, s10
d005a2f0:	eee0 7a25 	vfma.f32	s15, s0, s11
d005a2f4:	eee2 7a05 	vfma.f32	s15, s4, s10
d005a2f8:	ee61 7aa7 	vmul.f32	s15, s3, s15
d005a2fc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d005a300:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a304:	d442      	bmi.n	d005a38c <entitySweepRaycastTest+0x428>
d005a306:	eef4 7ac9 	vcmpe.f32	s15, s18
d005a30a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a30e:	dc3d      	bgt.n	d005a38c <entitySweepRaycastTest+0x428>
d005a310:	ee25 7a63 	vnmul.f32	s14, s10, s7
d005a314:	ee25 2ae2 	vnmul.f32	s4, s11, s5
d005a318:	eea2 7aa6 	vfma.f32	s14, s5, s13
d005a31c:	eea3 2a05 	vfma.f32	s4, s6, s10
d005a320:	ee66 6ac3 	vnmul.f32	s13, s13, s6
d005a324:	eee3 6aa5 	vfma.f32	s13, s7, s11
d005a328:	eeb0 5a47 	vmov.f32	s10, s14
d005a32c:	ee21 7a02 	vmul.f32	s14, s2, s4
d005a330:	eea5 7a20 	vfma.f32	s14, s10, s1
d005a334:	eea8 7a26 	vfma.f32	s14, s16, s13
d005a338:	ee21 7a87 	vmul.f32	s14, s3, s14
d005a33c:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d005a340:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a344:	d422      	bmi.n	d005a38c <entitySweepRaycastTest+0x428>
d005a346:	ee77 7a87 	vadd.f32	s15, s15, s14
d005a34a:	eef4 7ac9 	vcmpe.f32	s15, s18
d005a34e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a352:	dc1b      	bgt.n	d005a38c <entitySweepRaycastTest+0x428>
d005a354:	ee26 6a02 	vmul.f32	s12, s12, s4
d005a358:	eea4 6a05 	vfma.f32	s12, s8, s10
d005a35c:	eea4 6aa6 	vfma.f32	s12, s9, s13
d005a360:	ee61 1a86 	vmul.f32	s3, s3, s12
d005a364:	eef4 1acb 	vcmpe.f32	s3, s22
d005a368:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a36c:	d90e      	bls.n	d005a38c <entitySweepRaycastTest+0x428>
d005a36e:	eeb4 cae1 	vcmpe.f32	s24, s3
d005a372:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a376:	d409      	bmi.n	d005a38c <entitySweepRaycastTest+0x428>
d005a378:	eef4 bae1 	vcmpe.f32	s23, s3
d005a37c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a380:	dd04      	ble.n	d005a38c <entitySweepRaycastTest+0x428>
d005a382:	eef0 ba61 	vmov.f32	s23, s3
d005a386:	2301      	movs	r3, #1
d005a388:	46bb      	mov	fp, r7
d005a38a:	9300      	str	r3, [sp, #0]
d005a38c:	3710      	adds	r7, #16
d005a38e:	45ba      	cmp	sl, r7
d005a390:	f47f af40 	bne.w	d005a214 <entitySweepRaycastTest+0x2b0>
d005a394:	9b00      	ldr	r3, [sp, #0]
d005a396:	2b00      	cmp	r3, #0
d005a398:	f43f adfc 	beq.w	d0059f94 <entitySweepRaycastTest+0x30>
d005a39c:	b36c      	cbz	r4, d005a3fa <entitySweepRaycastTest+0x496>
d005a39e:	eeeb 9a81 	vfma.f32	s19, s23, s2
d005a3a2:	eddd 6a01 	vldr	s13, [sp, #4]
d005a3a6:	eeab aaa0 	vfma.f32	s20, s23, s1
d005a3aa:	eeeb 8a88 	vfma.f32	s17, s23, s16
d005a3ae:	ee29 7aac 	vmul.f32	s14, s19, s25
d005a3b2:	ee29 da8d 	vmul.f32	s26, s19, s26
d005a3b6:	ee69 7aaf 	vmul.f32	s15, s19, s31
d005a3ba:	eeaa 7a0f 	vfma.f32	s14, s20, s30
d005a3be:	eeaa da2e 	vfma.f32	s26, s20, s29
d005a3c2:	eeea 7a0e 	vfma.f32	s15, s20, s28
d005a3c6:	ee37 7a26 	vadd.f32	s14, s14, s13
d005a3ca:	eddd 6a02 	vldr	s13, [sp, #8]
d005a3ce:	ee36 da8d 	vadd.f32	s26, s13, s26
d005a3d2:	eddd 6a03 	vldr	s13, [sp, #12]
d005a3d6:	eea8 7aad 	vfma.f32	s14, s17, s27
d005a3da:	ee77 7aa6 	vadd.f32	s15, s15, s13
d005a3de:	eddd 6a04 	vldr	s13, [sp, #16]
d005a3e2:	eea8 daa6 	vfma.f32	s26, s17, s13
d005a3e6:	eddd 6a05 	vldr	s13, [sp, #20]
d005a3ea:	eee8 7aa6 	vfma.f32	s15, s17, s13
d005a3ee:	ed84 7a00 	vstr	s14, [r4]
d005a3f2:	ed84 da01 	vstr	s26, [r4, #4]
d005a3f6:	edc4 7a02 	vstr	s15, [r4, #8]
d005a3fa:	b135      	cbz	r5, d005a40a <entitySweepRaycastTest+0x4a6>
d005a3fc:	f1bb 0f00 	cmp.w	fp, #0
d005a400:	d003      	beq.n	d005a40a <entitySweepRaycastTest+0x4a6>
d005a402:	e89b 000f 	ldmia.w	fp, {r0, r1, r2, r3}
d005a406:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d005a40a:	2001      	movs	r0, #1
d005a40c:	e5c3      	b.n	d0059f96 <entitySweepRaycastTest+0x32>
d005a40e:	ed1f 3a4f 	vldr	s6, [pc, #-316]	; d005a2d4 <entitySweepRaycastTest+0x370>
d005a412:	eeb1 5ac7 	vsqrt.f32	s10, s14
d005a416:	eeb4 7ac3 	vcmpe.f32	s14, s6
d005a41a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a41e:	d925      	bls.n	d005a46c <entitySweepRaycastTest+0x508>
d005a420:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d005a424:	ee33 ca85 	vadd.f32	s24, s7, s10
d005a428:	ee83 7a05 	vdiv.f32	s14, s6, s10
d005a42c:	ee67 7a87 	vmul.f32	s15, s15, s14
d005a430:	ee66 6a87 	vmul.f32	s13, s13, s14
d005a434:	ee26 6a07 	vmul.f32	s12, s12, s14
d005a438:	ee27 0a8c 	vmul.f32	s0, s15, s24
d005a43c:	ee66 0a8c 	vmul.f32	s1, s13, s24
d005a440:	ee26 2a0c 	vmul.f32	s4, s12, s24
d005a444:	ee20 7a00 	vmul.f32	s14, s0, s0
d005a448:	eea0 7aa0 	vfma.f32	s14, s1, s1
d005a44c:	e626      	b.n	d005a09c <entitySweepRaycastTest+0x138>
d005a44e:	ed1f 7a5e 	vldr	s14, [pc, #-376]	; d005a2d8 <entitySweepRaycastTest+0x374>
d005a452:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d005a456:	eeb0 2a63 	vmov.f32	s4, s7
d005a45a:	eeb0 0a47 	vmov.f32	s0, s14
d005a45e:	eef0 0a47 	vmov.f32	s1, s14
d005a462:	eef0 7a47 	vmov.f32	s15, s14
d005a466:	eef0 6a47 	vmov.f32	s13, s14
d005a46a:	e615      	b.n	d005a098 <entitySweepRaycastTest+0x134>
d005a46c:	ee33 ca85 	vadd.f32	s24, s7, s10
d005a470:	ed1f 7a67 	vldr	s14, [pc, #-412]	; d005a2d8 <entitySweepRaycastTest+0x374>
d005a474:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d005a478:	eeb0 0a47 	vmov.f32	s0, s14
d005a47c:	eef0 0a47 	vmov.f32	s1, s14
d005a480:	eeb0 2a4c 	vmov.f32	s4, s24
d005a484:	eef0 7a47 	vmov.f32	s15, s14
d005a488:	eef0 6a47 	vmov.f32	s13, s14
d005a48c:	e606      	b.n	d005a09c <entitySweepRaycastTest+0x138>
d005a48e:	ed1f 1a6e 	vldr	s2, [pc, #-440]	; d005a2d8 <entitySweepRaycastTest+0x374>
d005a492:	eef0 0a41 	vmov.f32	s1, s2
d005a496:	e6aa      	b.n	d005a1ee <entitySweepRaycastTest+0x28a>

d005a498 <freeMesh>:
d005a498:	b1b8      	cbz	r0, d005a4ca <freeMesh+0x32>
d005a49a:	b510      	push	{r4, lr}
d005a49c:	4604      	mov	r4, r0
d005a49e:	6800      	ldr	r0, [r0, #0]
d005a4a0:	b108      	cbz	r0, d005a4a6 <freeMesh+0xe>
d005a4a2:	f000 fc51 	bl	d005ad48 <free>
d005a4a6:	6920      	ldr	r0, [r4, #16]
d005a4a8:	b108      	cbz	r0, d005a4ae <freeMesh+0x16>
d005a4aa:	f000 fc4d 	bl	d005ad48 <free>
d005a4ae:	68a0      	ldr	r0, [r4, #8]
d005a4b0:	b108      	cbz	r0, d005a4b6 <freeMesh+0x1e>
d005a4b2:	f000 fc49 	bl	d005ad48 <free>
d005a4b6:	2300      	movs	r3, #0
d005a4b8:	2200      	movs	r2, #0
d005a4ba:	6023      	str	r3, [r4, #0]
d005a4bc:	6123      	str	r3, [r4, #16]
d005a4be:	60a3      	str	r3, [r4, #8]
d005a4c0:	6063      	str	r3, [r4, #4]
d005a4c2:	6163      	str	r3, [r4, #20]
d005a4c4:	60e3      	str	r3, [r4, #12]
d005a4c6:	61a2      	str	r2, [r4, #24]
d005a4c8:	bd10      	pop	{r4, pc}
d005a4ca:	4770      	bx	lr

d005a4cc <loadMeshSB3D>:
d005a4cc:	2800      	cmp	r0, #0
d005a4ce:	f000 80fe 	beq.w	d005a6ce <loadMeshSB3D+0x202>
d005a4d2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005a4d6:	fab1 f781 	clz	r7, r1
d005a4da:	460c      	mov	r4, r1
d005a4dc:	ed2d 8b02 	vpush	{d8}
d005a4e0:	097f      	lsrs	r7, r7, #5
d005a4e2:	b08c      	sub	sp, #48	; 0x30
d005a4e4:	2900      	cmp	r1, #0
d005a4e6:	f000 80ec 	beq.w	d005a6c2 <loadMeshSB3D+0x1f6>
d005a4ea:	4e7e      	ldr	r6, [pc, #504]	; (d005a6e4 <loadMeshSB3D+0x218>)
d005a4ec:	4605      	mov	r5, r0
d005a4ee:	2240      	movs	r2, #64	; 0x40
d005a4f0:	4639      	mov	r1, r7
d005a4f2:	4620      	mov	r0, r4
d005a4f4:	eeb0 8a40 	vmov.f32	s16, s0
d005a4f8:	f000 fc4a 	bl	d005ad90 <memset>
d005a4fc:	7933      	ldrb	r3, [r6, #4]
d005a4fe:	f896 c005 	ldrb.w	ip, [r6, #5]
d005a502:	4629      	mov	r1, r5
d005a504:	79b2      	ldrb	r2, [r6, #6]
d005a506:	4638      	mov	r0, r7
d005a508:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d005a50c:	79f5      	ldrb	r5, [r6, #7]
d005a50e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d005a512:	2201      	movs	r2, #1
d005a514:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d005a518:	681b      	ldr	r3, [r3, #0]
d005a51a:	681b      	ldr	r3, [r3, #0]
d005a51c:	4798      	blx	r3
d005a51e:	2800      	cmp	r0, #0
d005a520:	f040 80cf 	bne.w	d005a6c2 <loadMeshSB3D+0x1f6>
d005a524:	f896 c004 	ldrb.w	ip, [r6, #4]
d005a528:	2204      	movs	r2, #4
d005a52a:	7971      	ldrb	r1, [r6, #5]
d005a52c:	ab02      	add	r3, sp, #8
d005a52e:	79b7      	ldrb	r7, [r6, #6]
d005a530:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d005a534:	79f5      	ldrb	r5, [r6, #7]
d005a536:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d005a53a:	a903      	add	r1, sp, #12
d005a53c:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d005a540:	682d      	ldr	r5, [r5, #0]
d005a542:	68ad      	ldr	r5, [r5, #8]
d005a544:	47a8      	blx	r5
d005a546:	2800      	cmp	r0, #0
d005a548:	f040 80b8 	bne.w	d005a6bc <loadMeshSB3D+0x1f0>
d005a54c:	9a02      	ldr	r2, [sp, #8]
d005a54e:	2a04      	cmp	r2, #4
d005a550:	f040 80b4 	bne.w	d005a6bc <loadMeshSB3D+0x1f0>
d005a554:	4b64      	ldr	r3, [pc, #400]	; (d005a6e8 <loadMeshSB3D+0x21c>)
d005a556:	9903      	ldr	r1, [sp, #12]
d005a558:	4299      	cmp	r1, r3
d005a55a:	f040 80af 	bne.w	d005a6bc <loadMeshSB3D+0x1f0>
d005a55e:	7931      	ldrb	r1, [r6, #4]
d005a560:	ab02      	add	r3, sp, #8
d005a562:	7975      	ldrb	r5, [r6, #5]
d005a564:	79b7      	ldrb	r7, [r6, #6]
d005a566:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d005a56a:	79f5      	ldrb	r5, [r6, #7]
d005a56c:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d005a570:	a904      	add	r1, sp, #16
d005a572:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d005a576:	682d      	ldr	r5, [r5, #0]
d005a578:	68ad      	ldr	r5, [r5, #8]
d005a57a:	47a8      	blx	r5
d005a57c:	2800      	cmp	r0, #0
d005a57e:	f040 809d 	bne.w	d005a6bc <loadMeshSB3D+0x1f0>
d005a582:	9a02      	ldr	r2, [sp, #8]
d005a584:	2a04      	cmp	r2, #4
d005a586:	f040 8099 	bne.w	d005a6bc <loadMeshSB3D+0x1f0>
d005a58a:	9b04      	ldr	r3, [sp, #16]
d005a58c:	2b05      	cmp	r3, #5
d005a58e:	f040 8095 	bne.w	d005a6bc <loadMeshSB3D+0x1f0>
d005a592:	7931      	ldrb	r1, [r6, #4]
d005a594:	ab02      	add	r3, sp, #8
d005a596:	7975      	ldrb	r5, [r6, #5]
d005a598:	79b7      	ldrb	r7, [r6, #6]
d005a59a:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d005a59e:	79f5      	ldrb	r5, [r6, #7]
d005a5a0:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d005a5a4:	a905      	add	r1, sp, #20
d005a5a6:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d005a5aa:	682d      	ldr	r5, [r5, #0]
d005a5ac:	68ad      	ldr	r5, [r5, #8]
d005a5ae:	47a8      	blx	r5
d005a5b0:	2800      	cmp	r0, #0
d005a5b2:	f040 8083 	bne.w	d005a6bc <loadMeshSB3D+0x1f0>
d005a5b6:	9a02      	ldr	r2, [sp, #8]
d005a5b8:	2a04      	cmp	r2, #4
d005a5ba:	d17f      	bne.n	d005a6bc <loadMeshSB3D+0x1f0>
d005a5bc:	7930      	ldrb	r0, [r6, #4]
d005a5be:	ab02      	add	r3, sp, #8
d005a5c0:	7975      	ldrb	r5, [r6, #5]
d005a5c2:	a906      	add	r1, sp, #24
d005a5c4:	79b7      	ldrb	r7, [r6, #6]
d005a5c6:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d005a5ca:	79f5      	ldrb	r5, [r6, #7]
d005a5cc:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d005a5d0:	2000      	movs	r0, #0
d005a5d2:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d005a5d6:	682d      	ldr	r5, [r5, #0]
d005a5d8:	68ad      	ldr	r5, [r5, #8]
d005a5da:	47a8      	blx	r5
d005a5dc:	4605      	mov	r5, r0
d005a5de:	2800      	cmp	r0, #0
d005a5e0:	d16c      	bne.n	d005a6bc <loadMeshSB3D+0x1f0>
d005a5e2:	9b02      	ldr	r3, [sp, #8]
d005a5e4:	2b04      	cmp	r3, #4
d005a5e6:	d169      	bne.n	d005a6bc <loadMeshSB3D+0x1f0>
d005a5e8:	9b05      	ldr	r3, [sp, #20]
d005a5ea:	2b00      	cmp	r3, #0
d005a5ec:	d066      	beq.n	d005a6bc <loadMeshSB3D+0x1f0>
d005a5ee:	9f06      	ldr	r7, [sp, #24]
d005a5f0:	2f00      	cmp	r7, #0
d005a5f2:	d063      	beq.n	d005a6bc <loadMeshSB3D+0x1f0>
d005a5f4:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d005a5f8:	6063      	str	r3, [r4, #4]
d005a5fa:	6167      	str	r7, [r4, #20]
d005a5fc:	0080      	lsls	r0, r0, #2
d005a5fe:	60e5      	str	r5, [r4, #12]
d005a600:	f000 fb9a 	bl	d005ad38 <malloc>
d005a604:	4603      	mov	r3, r0
d005a606:	0138      	lsls	r0, r7, #4
d005a608:	6023      	str	r3, [r4, #0]
d005a60a:	461f      	mov	r7, r3
d005a60c:	f000 fb94 	bl	d005ad38 <malloc>
d005a610:	60a5      	str	r5, [r4, #8]
d005a612:	6120      	str	r0, [r4, #16]
d005a614:	2800      	cmp	r0, #0
d005a616:	d05c      	beq.n	d005a6d2 <loadMeshSB3D+0x206>
d005a618:	fab7 f887 	clz	r8, r7
d005a61c:	ea4f 1858 	mov.w	r8, r8, lsr #5
d005a620:	b9df      	cbnz	r7, d005a65a <loadMeshSB3D+0x18e>
d005a622:	e056      	b.n	d005a6d2 <loadMeshSB3D+0x206>
d005a624:	9b02      	ldr	r3, [sp, #8]
d005a626:	2b0c      	cmp	r3, #12
d005a628:	d12e      	bne.n	d005a688 <loadMeshSB3D+0x1bc>
d005a62a:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d005a62e:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d005a632:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d005a636:	ee66 6a88 	vmul.f32	s13, s13, s16
d005a63a:	6823      	ldr	r3, [r4, #0]
d005a63c:	ee27 7a08 	vmul.f32	s14, s14, s16
d005a640:	9905      	ldr	r1, [sp, #20]
d005a642:	ee67 7a88 	vmul.f32	s15, s15, s16
d005a646:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d005a64a:	4541      	cmp	r1, r8
d005a64c:	edc3 6a00 	vstr	s13, [r3]
d005a650:	ed83 7a01 	vstr	s14, [r3, #4]
d005a654:	edc3 7a02 	vstr	s15, [r3, #8]
d005a658:	d948      	bls.n	d005a6ec <loadMeshSB3D+0x220>
d005a65a:	7930      	ldrb	r0, [r6, #4]
d005a65c:	220c      	movs	r2, #12
d005a65e:	7975      	ldrb	r5, [r6, #5]
d005a660:	ab02      	add	r3, sp, #8
d005a662:	79b7      	ldrb	r7, [r6, #6]
d005a664:	a909      	add	r1, sp, #36	; 0x24
d005a666:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d005a66a:	79f5      	ldrb	r5, [r6, #7]
d005a66c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d005a670:	2000      	movs	r0, #0
d005a672:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d005a676:	682d      	ldr	r5, [r5, #0]
d005a678:	68ad      	ldr	r5, [r5, #8]
d005a67a:	47a8      	blx	r5
d005a67c:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d005a680:	f108 0801 	add.w	r8, r8, #1
d005a684:	2800      	cmp	r0, #0
d005a686:	d0cd      	beq.n	d005a624 <loadMeshSB3D+0x158>
d005a688:	6820      	ldr	r0, [r4, #0]
d005a68a:	b108      	cbz	r0, d005a690 <loadMeshSB3D+0x1c4>
d005a68c:	f000 fb5c 	bl	d005ad48 <free>
d005a690:	6920      	ldr	r0, [r4, #16]
d005a692:	b108      	cbz	r0, d005a698 <loadMeshSB3D+0x1cc>
d005a694:	f000 fb58 	bl	d005ad48 <free>
d005a698:	68a0      	ldr	r0, [r4, #8]
d005a69a:	b108      	cbz	r0, d005a6a0 <loadMeshSB3D+0x1d4>
d005a69c:	f000 fb54 	bl	d005ad48 <free>
d005a6a0:	2500      	movs	r5, #0
d005a6a2:	2300      	movs	r3, #0
d005a6a4:	4628      	mov	r0, r5
d005a6a6:	6025      	str	r5, [r4, #0]
d005a6a8:	6125      	str	r5, [r4, #16]
d005a6aa:	60a5      	str	r5, [r4, #8]
d005a6ac:	6065      	str	r5, [r4, #4]
d005a6ae:	6165      	str	r5, [r4, #20]
d005a6b0:	60e5      	str	r5, [r4, #12]
d005a6b2:	61a3      	str	r3, [r4, #24]
d005a6b4:	f000 f97c 	bl	d005a9b0 <fclose>
d005a6b8:	4628      	mov	r0, r5
d005a6ba:	e003      	b.n	d005a6c4 <loadMeshSB3D+0x1f8>
d005a6bc:	2000      	movs	r0, #0
d005a6be:	f000 f977 	bl	d005a9b0 <fclose>
d005a6c2:	2000      	movs	r0, #0
d005a6c4:	b00c      	add	sp, #48	; 0x30
d005a6c6:	ecbd 8b02 	vpop	{d8}
d005a6ca:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d005a6ce:	2000      	movs	r0, #0
d005a6d0:	4770      	bx	lr
d005a6d2:	4620      	mov	r0, r4
d005a6d4:	f7ff fee0 	bl	d005a498 <freeMesh>
d005a6d8:	2000      	movs	r0, #0
d005a6da:	f000 f969 	bl	d005a9b0 <fclose>
d005a6de:	2000      	movs	r0, #0
d005a6e0:	e7f0      	b.n	d005a6c4 <loadMeshSB3D+0x1f8>
d005a6e2:	bf00      	nop
d005a6e4:	2001f000 	.word	0x2001f000
d005a6e8:	44334253 	.word	0x44334253
d005a6ec:	9b06      	ldr	r3, [sp, #24]
d005a6ee:	2b00      	cmp	r3, #0
d005a6f0:	f000 80de 	beq.w	d005a8b0 <loadMeshSB3D+0x3e4>
d005a6f4:	4605      	mov	r5, r0
d005a6f6:	7937      	ldrb	r7, [r6, #4]
d005a6f8:	ab02      	add	r3, sp, #8
d005a6fa:	f896 c005 	ldrb.w	ip, [r6, #5]
d005a6fe:	2204      	movs	r2, #4
d005a700:	79b0      	ldrb	r0, [r6, #6]
d005a702:	a907      	add	r1, sp, #28
d005a704:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d005a708:	f896 c007 	ldrb.w	ip, [r6, #7]
d005a70c:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d005a710:	2000      	movs	r0, #0
d005a712:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005a716:	683f      	ldr	r7, [r7, #0]
d005a718:	68bf      	ldr	r7, [r7, #8]
d005a71a:	47b8      	blx	r7
d005a71c:	2800      	cmp	r0, #0
d005a71e:	d1d8      	bne.n	d005a6d2 <loadMeshSB3D+0x206>
d005a720:	9a02      	ldr	r2, [sp, #8]
d005a722:	2a04      	cmp	r2, #4
d005a724:	d1d5      	bne.n	d005a6d2 <loadMeshSB3D+0x206>
d005a726:	7931      	ldrb	r1, [r6, #4]
d005a728:	ab02      	add	r3, sp, #8
d005a72a:	f896 c005 	ldrb.w	ip, [r6, #5]
d005a72e:	f896 e006 	ldrb.w	lr, [r6, #6]
d005a732:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d005a736:	f896 c007 	ldrb.w	ip, [r6, #7]
d005a73a:	a908      	add	r1, sp, #32
d005a73c:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d005a740:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005a744:	683f      	ldr	r7, [r7, #0]
d005a746:	68bf      	ldr	r7, [r7, #8]
d005a748:	47b8      	blx	r7
d005a74a:	2800      	cmp	r0, #0
d005a74c:	d1c1      	bne.n	d005a6d2 <loadMeshSB3D+0x206>
d005a74e:	9a02      	ldr	r2, [sp, #8]
d005a750:	2a04      	cmp	r2, #4
d005a752:	d1be      	bne.n	d005a6d2 <loadMeshSB3D+0x206>
d005a754:	7931      	ldrb	r1, [r6, #4]
d005a756:	ab02      	add	r3, sp, #8
d005a758:	f896 c005 	ldrb.w	ip, [r6, #5]
d005a75c:	f896 e006 	ldrb.w	lr, [r6, #6]
d005a760:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d005a764:	f896 c007 	ldrb.w	ip, [r6, #7]
d005a768:	a909      	add	r1, sp, #36	; 0x24
d005a76a:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d005a76e:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005a772:	683f      	ldr	r7, [r7, #0]
d005a774:	68bf      	ldr	r7, [r7, #8]
d005a776:	47b8      	blx	r7
d005a778:	2800      	cmp	r0, #0
d005a77a:	d1aa      	bne.n	d005a6d2 <loadMeshSB3D+0x206>
d005a77c:	9b02      	ldr	r3, [sp, #8]
d005a77e:	2b04      	cmp	r3, #4
d005a780:	d1a7      	bne.n	d005a6d2 <loadMeshSB3D+0x206>
d005a782:	7937      	ldrb	r7, [r6, #4]
d005a784:	ab02      	add	r3, sp, #8
d005a786:	f896 c005 	ldrb.w	ip, [r6, #5]
d005a78a:	2201      	movs	r2, #1
d005a78c:	79b1      	ldrb	r1, [r6, #6]
d005a78e:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d005a792:	f896 c007 	ldrb.w	ip, [r6, #7]
d005a796:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d005a79a:	a901      	add	r1, sp, #4
d005a79c:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005a7a0:	683f      	ldr	r7, [r7, #0]
d005a7a2:	68bf      	ldr	r7, [r7, #8]
d005a7a4:	47b8      	blx	r7
d005a7a6:	2800      	cmp	r0, #0
d005a7a8:	d193      	bne.n	d005a6d2 <loadMeshSB3D+0x206>
d005a7aa:	9a02      	ldr	r2, [sp, #8]
d005a7ac:	2a01      	cmp	r2, #1
d005a7ae:	d190      	bne.n	d005a6d2 <loadMeshSB3D+0x206>
d005a7b0:	7931      	ldrb	r1, [r6, #4]
d005a7b2:	ab02      	add	r3, sp, #8
d005a7b4:	f896 c005 	ldrb.w	ip, [r6, #5]
d005a7b8:	f896 e006 	ldrb.w	lr, [r6, #6]
d005a7bc:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d005a7c0:	f896 c007 	ldrb.w	ip, [r6, #7]
d005a7c4:	f10d 0105 	add.w	r1, sp, #5
d005a7c8:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d005a7cc:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005a7d0:	683f      	ldr	r7, [r7, #0]
d005a7d2:	68bf      	ldr	r7, [r7, #8]
d005a7d4:	47b8      	blx	r7
d005a7d6:	2800      	cmp	r0, #0
d005a7d8:	f47f af7b 	bne.w	d005a6d2 <loadMeshSB3D+0x206>
d005a7dc:	9b02      	ldr	r3, [sp, #8]
d005a7de:	2b01      	cmp	r3, #1
d005a7e0:	f47f af77 	bne.w	d005a6d2 <loadMeshSB3D+0x206>
d005a7e4:	7937      	ldrb	r7, [r6, #4]
d005a7e6:	ab02      	add	r3, sp, #8
d005a7e8:	f896 c005 	ldrb.w	ip, [r6, #5]
d005a7ec:	2201      	movs	r2, #1
d005a7ee:	79b0      	ldrb	r0, [r6, #6]
d005a7f0:	f10d 0106 	add.w	r1, sp, #6
d005a7f4:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d005a7f8:	f896 c007 	ldrb.w	ip, [r6, #7]
d005a7fc:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d005a800:	2000      	movs	r0, #0
d005a802:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005a806:	683f      	ldr	r7, [r7, #0]
d005a808:	68bf      	ldr	r7, [r7, #8]
d005a80a:	47b8      	blx	r7
d005a80c:	2800      	cmp	r0, #0
d005a80e:	f47f af60 	bne.w	d005a6d2 <loadMeshSB3D+0x206>
d005a812:	9a02      	ldr	r2, [sp, #8]
d005a814:	2a01      	cmp	r2, #1
d005a816:	f47f af5c 	bne.w	d005a6d2 <loadMeshSB3D+0x206>
d005a81a:	7931      	ldrb	r1, [r6, #4]
d005a81c:	ab02      	add	r3, sp, #8
d005a81e:	f896 c005 	ldrb.w	ip, [r6, #5]
d005a822:	f896 e006 	ldrb.w	lr, [r6, #6]
d005a826:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d005a82a:	f896 c007 	ldrb.w	ip, [r6, #7]
d005a82e:	f10d 0107 	add.w	r1, sp, #7
d005a832:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d005a836:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005a83a:	683f      	ldr	r7, [r7, #0]
d005a83c:	68bf      	ldr	r7, [r7, #8]
d005a83e:	47b8      	blx	r7
d005a840:	2800      	cmp	r0, #0
d005a842:	f47f af46 	bne.w	d005a6d2 <loadMeshSB3D+0x206>
d005a846:	9b02      	ldr	r3, [sp, #8]
d005a848:	2b01      	cmp	r3, #1
d005a84a:	f47f af42 	bne.w	d005a6d2 <loadMeshSB3D+0x206>
d005a84e:	9907      	ldr	r1, [sp, #28]
d005a850:	9b05      	ldr	r3, [sp, #20]
d005a852:	4299      	cmp	r1, r3
d005a854:	f4bf af3d 	bcs.w	d005a6d2 <loadMeshSB3D+0x206>
d005a858:	f8dd c020 	ldr.w	ip, [sp, #32]
d005a85c:	4563      	cmp	r3, ip
d005a85e:	f67f af38 	bls.w	d005a6d2 <loadMeshSB3D+0x206>
d005a862:	9f09      	ldr	r7, [sp, #36]	; 0x24
d005a864:	42bb      	cmp	r3, r7
d005a866:	f67f af34 	bls.w	d005a6d2 <loadMeshSB3D+0x206>
d005a86a:	6922      	ldr	r2, [r4, #16]
d005a86c:	ea4f 1e05 	mov.w	lr, r5, lsl #4
d005a870:	4603      	mov	r3, r0
d005a872:	9806      	ldr	r0, [sp, #24]
d005a874:	f842 100e 	str.w	r1, [r2, lr]
d005a878:	eb02 1205 	add.w	r2, r2, r5, lsl #4
d005a87c:	f89d 1004 	ldrb.w	r1, [sp, #4]
d005a880:	3501      	adds	r5, #1
d005a882:	f8c2 c004 	str.w	ip, [r2, #4]
d005a886:	f001 010f 	and.w	r1, r1, #15
d005a88a:	f89d c005 	ldrb.w	ip, [sp, #5]
d005a88e:	6097      	str	r7, [r2, #8]
d005a890:	42a8      	cmp	r0, r5
d005a892:	f361 0307 	bfi	r3, r1, #0, #8
d005a896:	f89d 7006 	ldrb.w	r7, [sp, #6]
d005a89a:	f89d 1007 	ldrb.w	r1, [sp, #7]
d005a89e:	f36c 230f 	bfi	r3, ip, #8, #8
d005a8a2:	f367 4317 	bfi	r3, r7, #16, #8
d005a8a6:	f361 631f 	bfi	r3, r1, #24, #8
d005a8aa:	60d3      	str	r3, [r2, #12]
d005a8ac:	f63f af23 	bhi.w	d005a6f6 <loadMeshSB3D+0x22a>
d005a8b0:	2000      	movs	r0, #0
d005a8b2:	f000 f87d 	bl	d005a9b0 <fclose>
d005a8b6:	4620      	mov	r0, r4
d005a8b8:	f7fc fac8 	bl	d0056e4c <meshComputeBoundsRadius>
d005a8bc:	4620      	mov	r0, r4
d005a8be:	ed84 0a06 	vstr	s0, [r4, #24]
d005a8c2:	f7f8 faf3 	bl	d0052eac <meshSetDefaultMaterial>
d005a8c6:	2001      	movs	r0, #1
d005a8c8:	e6fc      	b.n	d005a6c4 <loadMeshSB3D+0x1f8>
d005a8ca:	bf00      	nop

d005a8cc <__errno>:
d005a8cc:	4b01      	ldr	r3, [pc, #4]	; (d005a8d4 <__errno+0x8>)
d005a8ce:	6818      	ldr	r0, [r3, #0]
d005a8d0:	4770      	bx	lr
d005a8d2:	bf00      	nop
d005a8d4:	d005f8ec 	.word	0xd005f8ec

d005a8d8 <_fclose_r>:
d005a8d8:	b570      	push	{r4, r5, r6, lr}
d005a8da:	4605      	mov	r5, r0
d005a8dc:	460c      	mov	r4, r1
d005a8de:	b911      	cbnz	r1, d005a8e6 <_fclose_r+0xe>
d005a8e0:	2600      	movs	r6, #0
d005a8e2:	4630      	mov	r0, r6
d005a8e4:	bd70      	pop	{r4, r5, r6, pc}
d005a8e6:	b118      	cbz	r0, d005a8f0 <_fclose_r+0x18>
d005a8e8:	6983      	ldr	r3, [r0, #24]
d005a8ea:	b90b      	cbnz	r3, d005a8f0 <_fclose_r+0x18>
d005a8ec:	f000 f982 	bl	d005abf4 <__sinit>
d005a8f0:	4b2c      	ldr	r3, [pc, #176]	; (d005a9a4 <_fclose_r+0xcc>)
d005a8f2:	429c      	cmp	r4, r3
d005a8f4:	d114      	bne.n	d005a920 <_fclose_r+0x48>
d005a8f6:	686c      	ldr	r4, [r5, #4]
d005a8f8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005a8fa:	07d8      	lsls	r0, r3, #31
d005a8fc:	d405      	bmi.n	d005a90a <_fclose_r+0x32>
d005a8fe:	89a3      	ldrh	r3, [r4, #12]
d005a900:	0599      	lsls	r1, r3, #22
d005a902:	d402      	bmi.n	d005a90a <_fclose_r+0x32>
d005a904:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005a906:	f000 fa14 	bl	d005ad32 <__retarget_lock_acquire_recursive>
d005a90a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005a90e:	b98b      	cbnz	r3, d005a934 <_fclose_r+0x5c>
d005a910:	6e66      	ldr	r6, [r4, #100]	; 0x64
d005a912:	f016 0601 	ands.w	r6, r6, #1
d005a916:	d1e3      	bne.n	d005a8e0 <_fclose_r+0x8>
d005a918:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005a91a:	f000 fa0b 	bl	d005ad34 <__retarget_lock_release_recursive>
d005a91e:	e7e0      	b.n	d005a8e2 <_fclose_r+0xa>
d005a920:	4b21      	ldr	r3, [pc, #132]	; (d005a9a8 <_fclose_r+0xd0>)
d005a922:	429c      	cmp	r4, r3
d005a924:	d101      	bne.n	d005a92a <_fclose_r+0x52>
d005a926:	68ac      	ldr	r4, [r5, #8]
d005a928:	e7e6      	b.n	d005a8f8 <_fclose_r+0x20>
d005a92a:	4b20      	ldr	r3, [pc, #128]	; (d005a9ac <_fclose_r+0xd4>)
d005a92c:	429c      	cmp	r4, r3
d005a92e:	bf08      	it	eq
d005a930:	68ec      	ldreq	r4, [r5, #12]
d005a932:	e7e1      	b.n	d005a8f8 <_fclose_r+0x20>
d005a934:	4621      	mov	r1, r4
d005a936:	4628      	mov	r0, r5
d005a938:	f000 f842 	bl	d005a9c0 <__sflush_r>
d005a93c:	6b23      	ldr	r3, [r4, #48]	; 0x30
d005a93e:	4606      	mov	r6, r0
d005a940:	b133      	cbz	r3, d005a950 <_fclose_r+0x78>
d005a942:	6a21      	ldr	r1, [r4, #32]
d005a944:	4628      	mov	r0, r5
d005a946:	4798      	blx	r3
d005a948:	2800      	cmp	r0, #0
d005a94a:	bfb8      	it	lt
d005a94c:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d005a950:	89a3      	ldrh	r3, [r4, #12]
d005a952:	061a      	lsls	r2, r3, #24
d005a954:	d503      	bpl.n	d005a95e <_fclose_r+0x86>
d005a956:	6921      	ldr	r1, [r4, #16]
d005a958:	4628      	mov	r0, r5
d005a95a:	f000 fa21 	bl	d005ada0 <_free_r>
d005a95e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005a960:	b141      	cbz	r1, d005a974 <_fclose_r+0x9c>
d005a962:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005a966:	4299      	cmp	r1, r3
d005a968:	d002      	beq.n	d005a970 <_fclose_r+0x98>
d005a96a:	4628      	mov	r0, r5
d005a96c:	f000 fa18 	bl	d005ada0 <_free_r>
d005a970:	2300      	movs	r3, #0
d005a972:	6363      	str	r3, [r4, #52]	; 0x34
d005a974:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d005a976:	b121      	cbz	r1, d005a982 <_fclose_r+0xaa>
d005a978:	4628      	mov	r0, r5
d005a97a:	f000 fa11 	bl	d005ada0 <_free_r>
d005a97e:	2300      	movs	r3, #0
d005a980:	64a3      	str	r3, [r4, #72]	; 0x48
d005a982:	f000 f91f 	bl	d005abc4 <__sfp_lock_acquire>
d005a986:	2300      	movs	r3, #0
d005a988:	81a3      	strh	r3, [r4, #12]
d005a98a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005a98c:	07db      	lsls	r3, r3, #31
d005a98e:	d402      	bmi.n	d005a996 <_fclose_r+0xbe>
d005a990:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005a992:	f000 f9cf 	bl	d005ad34 <__retarget_lock_release_recursive>
d005a996:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005a998:	f000 f9ca 	bl	d005ad30 <__retarget_lock_close_recursive>
d005a99c:	f000 f918 	bl	d005abd0 <__sfp_lock_release>
d005a9a0:	e79f      	b.n	d005a8e2 <_fclose_r+0xa>
d005a9a2:	bf00      	nop
d005a9a4:	d005cf88 	.word	0xd005cf88
d005a9a8:	d005cfa8 	.word	0xd005cfa8
d005a9ac:	d005cf68 	.word	0xd005cf68

d005a9b0 <fclose>:
d005a9b0:	4b02      	ldr	r3, [pc, #8]	; (d005a9bc <fclose+0xc>)
d005a9b2:	4601      	mov	r1, r0
d005a9b4:	6818      	ldr	r0, [r3, #0]
d005a9b6:	f7ff bf8f 	b.w	d005a8d8 <_fclose_r>
d005a9ba:	bf00      	nop
d005a9bc:	d005f8ec 	.word	0xd005f8ec

d005a9c0 <__sflush_r>:
d005a9c0:	898a      	ldrh	r2, [r1, #12]
d005a9c2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005a9c6:	4605      	mov	r5, r0
d005a9c8:	0710      	lsls	r0, r2, #28
d005a9ca:	460c      	mov	r4, r1
d005a9cc:	d458      	bmi.n	d005aa80 <__sflush_r+0xc0>
d005a9ce:	684b      	ldr	r3, [r1, #4]
d005a9d0:	2b00      	cmp	r3, #0
d005a9d2:	dc05      	bgt.n	d005a9e0 <__sflush_r+0x20>
d005a9d4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d005a9d6:	2b00      	cmp	r3, #0
d005a9d8:	dc02      	bgt.n	d005a9e0 <__sflush_r+0x20>
d005a9da:	2000      	movs	r0, #0
d005a9dc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d005a9e0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d005a9e2:	2e00      	cmp	r6, #0
d005a9e4:	d0f9      	beq.n	d005a9da <__sflush_r+0x1a>
d005a9e6:	2300      	movs	r3, #0
d005a9e8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d005a9ec:	682f      	ldr	r7, [r5, #0]
d005a9ee:	602b      	str	r3, [r5, #0]
d005a9f0:	d032      	beq.n	d005aa58 <__sflush_r+0x98>
d005a9f2:	6d60      	ldr	r0, [r4, #84]	; 0x54
d005a9f4:	89a3      	ldrh	r3, [r4, #12]
d005a9f6:	075a      	lsls	r2, r3, #29
d005a9f8:	d505      	bpl.n	d005aa06 <__sflush_r+0x46>
d005a9fa:	6863      	ldr	r3, [r4, #4]
d005a9fc:	1ac0      	subs	r0, r0, r3
d005a9fe:	6b63      	ldr	r3, [r4, #52]	; 0x34
d005aa00:	b10b      	cbz	r3, d005aa06 <__sflush_r+0x46>
d005aa02:	6c23      	ldr	r3, [r4, #64]	; 0x40
d005aa04:	1ac0      	subs	r0, r0, r3
d005aa06:	2300      	movs	r3, #0
d005aa08:	4602      	mov	r2, r0
d005aa0a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d005aa0c:	6a21      	ldr	r1, [r4, #32]
d005aa0e:	4628      	mov	r0, r5
d005aa10:	47b0      	blx	r6
d005aa12:	1c43      	adds	r3, r0, #1
d005aa14:	89a3      	ldrh	r3, [r4, #12]
d005aa16:	d106      	bne.n	d005aa26 <__sflush_r+0x66>
d005aa18:	6829      	ldr	r1, [r5, #0]
d005aa1a:	291d      	cmp	r1, #29
d005aa1c:	d82c      	bhi.n	d005aa78 <__sflush_r+0xb8>
d005aa1e:	4a2a      	ldr	r2, [pc, #168]	; (d005aac8 <__sflush_r+0x108>)
d005aa20:	40ca      	lsrs	r2, r1
d005aa22:	07d6      	lsls	r6, r2, #31
d005aa24:	d528      	bpl.n	d005aa78 <__sflush_r+0xb8>
d005aa26:	2200      	movs	r2, #0
d005aa28:	6062      	str	r2, [r4, #4]
d005aa2a:	04d9      	lsls	r1, r3, #19
d005aa2c:	6922      	ldr	r2, [r4, #16]
d005aa2e:	6022      	str	r2, [r4, #0]
d005aa30:	d504      	bpl.n	d005aa3c <__sflush_r+0x7c>
d005aa32:	1c42      	adds	r2, r0, #1
d005aa34:	d101      	bne.n	d005aa3a <__sflush_r+0x7a>
d005aa36:	682b      	ldr	r3, [r5, #0]
d005aa38:	b903      	cbnz	r3, d005aa3c <__sflush_r+0x7c>
d005aa3a:	6560      	str	r0, [r4, #84]	; 0x54
d005aa3c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005aa3e:	602f      	str	r7, [r5, #0]
d005aa40:	2900      	cmp	r1, #0
d005aa42:	d0ca      	beq.n	d005a9da <__sflush_r+0x1a>
d005aa44:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005aa48:	4299      	cmp	r1, r3
d005aa4a:	d002      	beq.n	d005aa52 <__sflush_r+0x92>
d005aa4c:	4628      	mov	r0, r5
d005aa4e:	f000 f9a7 	bl	d005ada0 <_free_r>
d005aa52:	2000      	movs	r0, #0
d005aa54:	6360      	str	r0, [r4, #52]	; 0x34
d005aa56:	e7c1      	b.n	d005a9dc <__sflush_r+0x1c>
d005aa58:	6a21      	ldr	r1, [r4, #32]
d005aa5a:	2301      	movs	r3, #1
d005aa5c:	4628      	mov	r0, r5
d005aa5e:	47b0      	blx	r6
d005aa60:	1c41      	adds	r1, r0, #1
d005aa62:	d1c7      	bne.n	d005a9f4 <__sflush_r+0x34>
d005aa64:	682b      	ldr	r3, [r5, #0]
d005aa66:	2b00      	cmp	r3, #0
d005aa68:	d0c4      	beq.n	d005a9f4 <__sflush_r+0x34>
d005aa6a:	2b1d      	cmp	r3, #29
d005aa6c:	d001      	beq.n	d005aa72 <__sflush_r+0xb2>
d005aa6e:	2b16      	cmp	r3, #22
d005aa70:	d101      	bne.n	d005aa76 <__sflush_r+0xb6>
d005aa72:	602f      	str	r7, [r5, #0]
d005aa74:	e7b1      	b.n	d005a9da <__sflush_r+0x1a>
d005aa76:	89a3      	ldrh	r3, [r4, #12]
d005aa78:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d005aa7c:	81a3      	strh	r3, [r4, #12]
d005aa7e:	e7ad      	b.n	d005a9dc <__sflush_r+0x1c>
d005aa80:	690f      	ldr	r7, [r1, #16]
d005aa82:	2f00      	cmp	r7, #0
d005aa84:	d0a9      	beq.n	d005a9da <__sflush_r+0x1a>
d005aa86:	0793      	lsls	r3, r2, #30
d005aa88:	680e      	ldr	r6, [r1, #0]
d005aa8a:	bf08      	it	eq
d005aa8c:	694b      	ldreq	r3, [r1, #20]
d005aa8e:	600f      	str	r7, [r1, #0]
d005aa90:	bf18      	it	ne
d005aa92:	2300      	movne	r3, #0
d005aa94:	eba6 0807 	sub.w	r8, r6, r7
d005aa98:	608b      	str	r3, [r1, #8]
d005aa9a:	f1b8 0f00 	cmp.w	r8, #0
d005aa9e:	dd9c      	ble.n	d005a9da <__sflush_r+0x1a>
d005aaa0:	6a21      	ldr	r1, [r4, #32]
d005aaa2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d005aaa4:	4643      	mov	r3, r8
d005aaa6:	463a      	mov	r2, r7
d005aaa8:	4628      	mov	r0, r5
d005aaaa:	47b0      	blx	r6
d005aaac:	2800      	cmp	r0, #0
d005aaae:	dc06      	bgt.n	d005aabe <__sflush_r+0xfe>
d005aab0:	89a3      	ldrh	r3, [r4, #12]
d005aab2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d005aab6:	81a3      	strh	r3, [r4, #12]
d005aab8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005aabc:	e78e      	b.n	d005a9dc <__sflush_r+0x1c>
d005aabe:	4407      	add	r7, r0
d005aac0:	eba8 0800 	sub.w	r8, r8, r0
d005aac4:	e7e9      	b.n	d005aa9a <__sflush_r+0xda>
d005aac6:	bf00      	nop
d005aac8:	20400001 	.word	0x20400001

d005aacc <_fflush_r>:
d005aacc:	b538      	push	{r3, r4, r5, lr}
d005aace:	690b      	ldr	r3, [r1, #16]
d005aad0:	4605      	mov	r5, r0
d005aad2:	460c      	mov	r4, r1
d005aad4:	b913      	cbnz	r3, d005aadc <_fflush_r+0x10>
d005aad6:	2500      	movs	r5, #0
d005aad8:	4628      	mov	r0, r5
d005aada:	bd38      	pop	{r3, r4, r5, pc}
d005aadc:	b118      	cbz	r0, d005aae6 <_fflush_r+0x1a>
d005aade:	6983      	ldr	r3, [r0, #24]
d005aae0:	b90b      	cbnz	r3, d005aae6 <_fflush_r+0x1a>
d005aae2:	f000 f887 	bl	d005abf4 <__sinit>
d005aae6:	4b14      	ldr	r3, [pc, #80]	; (d005ab38 <_fflush_r+0x6c>)
d005aae8:	429c      	cmp	r4, r3
d005aaea:	d11b      	bne.n	d005ab24 <_fflush_r+0x58>
d005aaec:	686c      	ldr	r4, [r5, #4]
d005aaee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005aaf2:	2b00      	cmp	r3, #0
d005aaf4:	d0ef      	beq.n	d005aad6 <_fflush_r+0xa>
d005aaf6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d005aaf8:	07d0      	lsls	r0, r2, #31
d005aafa:	d404      	bmi.n	d005ab06 <_fflush_r+0x3a>
d005aafc:	0599      	lsls	r1, r3, #22
d005aafe:	d402      	bmi.n	d005ab06 <_fflush_r+0x3a>
d005ab00:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005ab02:	f000 f916 	bl	d005ad32 <__retarget_lock_acquire_recursive>
d005ab06:	4628      	mov	r0, r5
d005ab08:	4621      	mov	r1, r4
d005ab0a:	f7ff ff59 	bl	d005a9c0 <__sflush_r>
d005ab0e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005ab10:	07da      	lsls	r2, r3, #31
d005ab12:	4605      	mov	r5, r0
d005ab14:	d4e0      	bmi.n	d005aad8 <_fflush_r+0xc>
d005ab16:	89a3      	ldrh	r3, [r4, #12]
d005ab18:	059b      	lsls	r3, r3, #22
d005ab1a:	d4dd      	bmi.n	d005aad8 <_fflush_r+0xc>
d005ab1c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005ab1e:	f000 f909 	bl	d005ad34 <__retarget_lock_release_recursive>
d005ab22:	e7d9      	b.n	d005aad8 <_fflush_r+0xc>
d005ab24:	4b05      	ldr	r3, [pc, #20]	; (d005ab3c <_fflush_r+0x70>)
d005ab26:	429c      	cmp	r4, r3
d005ab28:	d101      	bne.n	d005ab2e <_fflush_r+0x62>
d005ab2a:	68ac      	ldr	r4, [r5, #8]
d005ab2c:	e7df      	b.n	d005aaee <_fflush_r+0x22>
d005ab2e:	4b04      	ldr	r3, [pc, #16]	; (d005ab40 <_fflush_r+0x74>)
d005ab30:	429c      	cmp	r4, r3
d005ab32:	bf08      	it	eq
d005ab34:	68ec      	ldreq	r4, [r5, #12]
d005ab36:	e7da      	b.n	d005aaee <_fflush_r+0x22>
d005ab38:	d005cf88 	.word	0xd005cf88
d005ab3c:	d005cfa8 	.word	0xd005cfa8
d005ab40:	d005cf68 	.word	0xd005cf68

d005ab44 <std>:
d005ab44:	2300      	movs	r3, #0
d005ab46:	b510      	push	{r4, lr}
d005ab48:	4604      	mov	r4, r0
d005ab4a:	e9c0 3300 	strd	r3, r3, [r0]
d005ab4e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d005ab52:	6083      	str	r3, [r0, #8]
d005ab54:	8181      	strh	r1, [r0, #12]
d005ab56:	6643      	str	r3, [r0, #100]	; 0x64
d005ab58:	81c2      	strh	r2, [r0, #14]
d005ab5a:	6183      	str	r3, [r0, #24]
d005ab5c:	4619      	mov	r1, r3
d005ab5e:	2208      	movs	r2, #8
d005ab60:	305c      	adds	r0, #92	; 0x5c
d005ab62:	f000 f915 	bl	d005ad90 <memset>
d005ab66:	4b05      	ldr	r3, [pc, #20]	; (d005ab7c <std+0x38>)
d005ab68:	6263      	str	r3, [r4, #36]	; 0x24
d005ab6a:	4b05      	ldr	r3, [pc, #20]	; (d005ab80 <std+0x3c>)
d005ab6c:	62a3      	str	r3, [r4, #40]	; 0x28
d005ab6e:	4b05      	ldr	r3, [pc, #20]	; (d005ab84 <std+0x40>)
d005ab70:	62e3      	str	r3, [r4, #44]	; 0x2c
d005ab72:	4b05      	ldr	r3, [pc, #20]	; (d005ab88 <std+0x44>)
d005ab74:	6224      	str	r4, [r4, #32]
d005ab76:	6323      	str	r3, [r4, #48]	; 0x30
d005ab78:	bd10      	pop	{r4, pc}
d005ab7a:	bf00      	nop
d005ab7c:	d005b151 	.word	0xd005b151
d005ab80:	d005b173 	.word	0xd005b173
d005ab84:	d005b1ab 	.word	0xd005b1ab
d005ab88:	d005b1cf 	.word	0xd005b1cf

d005ab8c <_cleanup_r>:
d005ab8c:	4901      	ldr	r1, [pc, #4]	; (d005ab94 <_cleanup_r+0x8>)
d005ab8e:	f000 b8af 	b.w	d005acf0 <_fwalk_reent>
d005ab92:	bf00      	nop
d005ab94:	d005aacd 	.word	0xd005aacd

d005ab98 <__sfmoreglue>:
d005ab98:	b570      	push	{r4, r5, r6, lr}
d005ab9a:	1e4a      	subs	r2, r1, #1
d005ab9c:	2568      	movs	r5, #104	; 0x68
d005ab9e:	4355      	muls	r5, r2
d005aba0:	460e      	mov	r6, r1
d005aba2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d005aba6:	f000 f94b 	bl	d005ae40 <_malloc_r>
d005abaa:	4604      	mov	r4, r0
d005abac:	b140      	cbz	r0, d005abc0 <__sfmoreglue+0x28>
d005abae:	2100      	movs	r1, #0
d005abb0:	e9c0 1600 	strd	r1, r6, [r0]
d005abb4:	300c      	adds	r0, #12
d005abb6:	60a0      	str	r0, [r4, #8]
d005abb8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d005abbc:	f000 f8e8 	bl	d005ad90 <memset>
d005abc0:	4620      	mov	r0, r4
d005abc2:	bd70      	pop	{r4, r5, r6, pc}

d005abc4 <__sfp_lock_acquire>:
d005abc4:	4801      	ldr	r0, [pc, #4]	; (d005abcc <__sfp_lock_acquire+0x8>)
d005abc6:	f000 b8b4 	b.w	d005ad32 <__retarget_lock_acquire_recursive>
d005abca:	bf00      	nop
d005abcc:	d0101ec8 	.word	0xd0101ec8

d005abd0 <__sfp_lock_release>:
d005abd0:	4801      	ldr	r0, [pc, #4]	; (d005abd8 <__sfp_lock_release+0x8>)
d005abd2:	f000 b8af 	b.w	d005ad34 <__retarget_lock_release_recursive>
d005abd6:	bf00      	nop
d005abd8:	d0101ec8 	.word	0xd0101ec8

d005abdc <__sinit_lock_acquire>:
d005abdc:	4801      	ldr	r0, [pc, #4]	; (d005abe4 <__sinit_lock_acquire+0x8>)
d005abde:	f000 b8a8 	b.w	d005ad32 <__retarget_lock_acquire_recursive>
d005abe2:	bf00      	nop
d005abe4:	d0101ec3 	.word	0xd0101ec3

d005abe8 <__sinit_lock_release>:
d005abe8:	4801      	ldr	r0, [pc, #4]	; (d005abf0 <__sinit_lock_release+0x8>)
d005abea:	f000 b8a3 	b.w	d005ad34 <__retarget_lock_release_recursive>
d005abee:	bf00      	nop
d005abf0:	d0101ec3 	.word	0xd0101ec3

d005abf4 <__sinit>:
d005abf4:	b510      	push	{r4, lr}
d005abf6:	4604      	mov	r4, r0
d005abf8:	f7ff fff0 	bl	d005abdc <__sinit_lock_acquire>
d005abfc:	69a3      	ldr	r3, [r4, #24]
d005abfe:	b11b      	cbz	r3, d005ac08 <__sinit+0x14>
d005ac00:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005ac04:	f7ff bff0 	b.w	d005abe8 <__sinit_lock_release>
d005ac08:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d005ac0c:	6523      	str	r3, [r4, #80]	; 0x50
d005ac0e:	4b13      	ldr	r3, [pc, #76]	; (d005ac5c <__sinit+0x68>)
d005ac10:	4a13      	ldr	r2, [pc, #76]	; (d005ac60 <__sinit+0x6c>)
d005ac12:	681b      	ldr	r3, [r3, #0]
d005ac14:	62a2      	str	r2, [r4, #40]	; 0x28
d005ac16:	42a3      	cmp	r3, r4
d005ac18:	bf04      	itt	eq
d005ac1a:	2301      	moveq	r3, #1
d005ac1c:	61a3      	streq	r3, [r4, #24]
d005ac1e:	4620      	mov	r0, r4
d005ac20:	f000 f820 	bl	d005ac64 <__sfp>
d005ac24:	6060      	str	r0, [r4, #4]
d005ac26:	4620      	mov	r0, r4
d005ac28:	f000 f81c 	bl	d005ac64 <__sfp>
d005ac2c:	60a0      	str	r0, [r4, #8]
d005ac2e:	4620      	mov	r0, r4
d005ac30:	f000 f818 	bl	d005ac64 <__sfp>
d005ac34:	2200      	movs	r2, #0
d005ac36:	60e0      	str	r0, [r4, #12]
d005ac38:	2104      	movs	r1, #4
d005ac3a:	6860      	ldr	r0, [r4, #4]
d005ac3c:	f7ff ff82 	bl	d005ab44 <std>
d005ac40:	68a0      	ldr	r0, [r4, #8]
d005ac42:	2201      	movs	r2, #1
d005ac44:	2109      	movs	r1, #9
d005ac46:	f7ff ff7d 	bl	d005ab44 <std>
d005ac4a:	68e0      	ldr	r0, [r4, #12]
d005ac4c:	2202      	movs	r2, #2
d005ac4e:	2112      	movs	r1, #18
d005ac50:	f7ff ff78 	bl	d005ab44 <std>
d005ac54:	2301      	movs	r3, #1
d005ac56:	61a3      	str	r3, [r4, #24]
d005ac58:	e7d2      	b.n	d005ac00 <__sinit+0xc>
d005ac5a:	bf00      	nop
d005ac5c:	d005cfc8 	.word	0xd005cfc8
d005ac60:	d005ab8d 	.word	0xd005ab8d

d005ac64 <__sfp>:
d005ac64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005ac66:	4607      	mov	r7, r0
d005ac68:	f7ff ffac 	bl	d005abc4 <__sfp_lock_acquire>
d005ac6c:	4b1e      	ldr	r3, [pc, #120]	; (d005ace8 <__sfp+0x84>)
d005ac6e:	681e      	ldr	r6, [r3, #0]
d005ac70:	69b3      	ldr	r3, [r6, #24]
d005ac72:	b913      	cbnz	r3, d005ac7a <__sfp+0x16>
d005ac74:	4630      	mov	r0, r6
d005ac76:	f7ff ffbd 	bl	d005abf4 <__sinit>
d005ac7a:	3648      	adds	r6, #72	; 0x48
d005ac7c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d005ac80:	3b01      	subs	r3, #1
d005ac82:	d503      	bpl.n	d005ac8c <__sfp+0x28>
d005ac84:	6833      	ldr	r3, [r6, #0]
d005ac86:	b30b      	cbz	r3, d005accc <__sfp+0x68>
d005ac88:	6836      	ldr	r6, [r6, #0]
d005ac8a:	e7f7      	b.n	d005ac7c <__sfp+0x18>
d005ac8c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d005ac90:	b9d5      	cbnz	r5, d005acc8 <__sfp+0x64>
d005ac92:	4b16      	ldr	r3, [pc, #88]	; (d005acec <__sfp+0x88>)
d005ac94:	60e3      	str	r3, [r4, #12]
d005ac96:	f104 0058 	add.w	r0, r4, #88	; 0x58
d005ac9a:	6665      	str	r5, [r4, #100]	; 0x64
d005ac9c:	f000 f847 	bl	d005ad2e <__retarget_lock_init_recursive>
d005aca0:	f7ff ff96 	bl	d005abd0 <__sfp_lock_release>
d005aca4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d005aca8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d005acac:	6025      	str	r5, [r4, #0]
d005acae:	61a5      	str	r5, [r4, #24]
d005acb0:	2208      	movs	r2, #8
d005acb2:	4629      	mov	r1, r5
d005acb4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d005acb8:	f000 f86a 	bl	d005ad90 <memset>
d005acbc:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d005acc0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d005acc4:	4620      	mov	r0, r4
d005acc6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005acc8:	3468      	adds	r4, #104	; 0x68
d005acca:	e7d9      	b.n	d005ac80 <__sfp+0x1c>
d005accc:	2104      	movs	r1, #4
d005acce:	4638      	mov	r0, r7
d005acd0:	f7ff ff62 	bl	d005ab98 <__sfmoreglue>
d005acd4:	4604      	mov	r4, r0
d005acd6:	6030      	str	r0, [r6, #0]
d005acd8:	2800      	cmp	r0, #0
d005acda:	d1d5      	bne.n	d005ac88 <__sfp+0x24>
d005acdc:	f7ff ff78 	bl	d005abd0 <__sfp_lock_release>
d005ace0:	230c      	movs	r3, #12
d005ace2:	603b      	str	r3, [r7, #0]
d005ace4:	e7ee      	b.n	d005acc4 <__sfp+0x60>
d005ace6:	bf00      	nop
d005ace8:	d005cfc8 	.word	0xd005cfc8
d005acec:	ffff0001 	.word	0xffff0001

d005acf0 <_fwalk_reent>:
d005acf0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d005acf4:	4606      	mov	r6, r0
d005acf6:	4688      	mov	r8, r1
d005acf8:	f100 0448 	add.w	r4, r0, #72	; 0x48
d005acfc:	2700      	movs	r7, #0
d005acfe:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d005ad02:	f1b9 0901 	subs.w	r9, r9, #1
d005ad06:	d505      	bpl.n	d005ad14 <_fwalk_reent+0x24>
d005ad08:	6824      	ldr	r4, [r4, #0]
d005ad0a:	2c00      	cmp	r4, #0
d005ad0c:	d1f7      	bne.n	d005acfe <_fwalk_reent+0xe>
d005ad0e:	4638      	mov	r0, r7
d005ad10:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d005ad14:	89ab      	ldrh	r3, [r5, #12]
d005ad16:	2b01      	cmp	r3, #1
d005ad18:	d907      	bls.n	d005ad2a <_fwalk_reent+0x3a>
d005ad1a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d005ad1e:	3301      	adds	r3, #1
d005ad20:	d003      	beq.n	d005ad2a <_fwalk_reent+0x3a>
d005ad22:	4629      	mov	r1, r5
d005ad24:	4630      	mov	r0, r6
d005ad26:	47c0      	blx	r8
d005ad28:	4307      	orrs	r7, r0
d005ad2a:	3568      	adds	r5, #104	; 0x68
d005ad2c:	e7e9      	b.n	d005ad02 <_fwalk_reent+0x12>

d005ad2e <__retarget_lock_init_recursive>:
d005ad2e:	4770      	bx	lr

d005ad30 <__retarget_lock_close_recursive>:
d005ad30:	4770      	bx	lr

d005ad32 <__retarget_lock_acquire_recursive>:
d005ad32:	4770      	bx	lr

d005ad34 <__retarget_lock_release_recursive>:
d005ad34:	4770      	bx	lr
	...

d005ad38 <malloc>:
d005ad38:	4b02      	ldr	r3, [pc, #8]	; (d005ad44 <malloc+0xc>)
d005ad3a:	4601      	mov	r1, r0
d005ad3c:	6818      	ldr	r0, [r3, #0]
d005ad3e:	f000 b87f 	b.w	d005ae40 <_malloc_r>
d005ad42:	bf00      	nop
d005ad44:	d005f8ec 	.word	0xd005f8ec

d005ad48 <free>:
d005ad48:	4b02      	ldr	r3, [pc, #8]	; (d005ad54 <free+0xc>)
d005ad4a:	4601      	mov	r1, r0
d005ad4c:	6818      	ldr	r0, [r3, #0]
d005ad4e:	f000 b827 	b.w	d005ada0 <_free_r>
d005ad52:	bf00      	nop
d005ad54:	d005f8ec 	.word	0xd005f8ec

d005ad58 <memcmp>:
d005ad58:	b530      	push	{r4, r5, lr}
d005ad5a:	3901      	subs	r1, #1
d005ad5c:	2400      	movs	r4, #0
d005ad5e:	42a2      	cmp	r2, r4
d005ad60:	d101      	bne.n	d005ad66 <memcmp+0xe>
d005ad62:	2000      	movs	r0, #0
d005ad64:	e005      	b.n	d005ad72 <memcmp+0x1a>
d005ad66:	5d03      	ldrb	r3, [r0, r4]
d005ad68:	3401      	adds	r4, #1
d005ad6a:	5d0d      	ldrb	r5, [r1, r4]
d005ad6c:	42ab      	cmp	r3, r5
d005ad6e:	d0f6      	beq.n	d005ad5e <memcmp+0x6>
d005ad70:	1b58      	subs	r0, r3, r5
d005ad72:	bd30      	pop	{r4, r5, pc}

d005ad74 <memcpy>:
d005ad74:	440a      	add	r2, r1
d005ad76:	4291      	cmp	r1, r2
d005ad78:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d005ad7c:	d100      	bne.n	d005ad80 <memcpy+0xc>
d005ad7e:	4770      	bx	lr
d005ad80:	b510      	push	{r4, lr}
d005ad82:	f811 4b01 	ldrb.w	r4, [r1], #1
d005ad86:	f803 4f01 	strb.w	r4, [r3, #1]!
d005ad8a:	4291      	cmp	r1, r2
d005ad8c:	d1f9      	bne.n	d005ad82 <memcpy+0xe>
d005ad8e:	bd10      	pop	{r4, pc}

d005ad90 <memset>:
d005ad90:	4402      	add	r2, r0
d005ad92:	4603      	mov	r3, r0
d005ad94:	4293      	cmp	r3, r2
d005ad96:	d100      	bne.n	d005ad9a <memset+0xa>
d005ad98:	4770      	bx	lr
d005ad9a:	f803 1b01 	strb.w	r1, [r3], #1
d005ad9e:	e7f9      	b.n	d005ad94 <memset+0x4>

d005ada0 <_free_r>:
d005ada0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d005ada2:	2900      	cmp	r1, #0
d005ada4:	d048      	beq.n	d005ae38 <_free_r+0x98>
d005ada6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d005adaa:	9001      	str	r0, [sp, #4]
d005adac:	2b00      	cmp	r3, #0
d005adae:	f1a1 0404 	sub.w	r4, r1, #4
d005adb2:	bfb8      	it	lt
d005adb4:	18e4      	addlt	r4, r4, r3
d005adb6:	f000 fac5 	bl	d005b344 <__malloc_lock>
d005adba:	4a20      	ldr	r2, [pc, #128]	; (d005ae3c <_free_r+0x9c>)
d005adbc:	9801      	ldr	r0, [sp, #4]
d005adbe:	6813      	ldr	r3, [r2, #0]
d005adc0:	4615      	mov	r5, r2
d005adc2:	b933      	cbnz	r3, d005add2 <_free_r+0x32>
d005adc4:	6063      	str	r3, [r4, #4]
d005adc6:	6014      	str	r4, [r2, #0]
d005adc8:	b003      	add	sp, #12
d005adca:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005adce:	f000 babf 	b.w	d005b350 <__malloc_unlock>
d005add2:	42a3      	cmp	r3, r4
d005add4:	d90b      	bls.n	d005adee <_free_r+0x4e>
d005add6:	6821      	ldr	r1, [r4, #0]
d005add8:	1862      	adds	r2, r4, r1
d005adda:	4293      	cmp	r3, r2
d005addc:	bf04      	itt	eq
d005adde:	681a      	ldreq	r2, [r3, #0]
d005ade0:	685b      	ldreq	r3, [r3, #4]
d005ade2:	6063      	str	r3, [r4, #4]
d005ade4:	bf04      	itt	eq
d005ade6:	1852      	addeq	r2, r2, r1
d005ade8:	6022      	streq	r2, [r4, #0]
d005adea:	602c      	str	r4, [r5, #0]
d005adec:	e7ec      	b.n	d005adc8 <_free_r+0x28>
d005adee:	461a      	mov	r2, r3
d005adf0:	685b      	ldr	r3, [r3, #4]
d005adf2:	b10b      	cbz	r3, d005adf8 <_free_r+0x58>
d005adf4:	42a3      	cmp	r3, r4
d005adf6:	d9fa      	bls.n	d005adee <_free_r+0x4e>
d005adf8:	6811      	ldr	r1, [r2, #0]
d005adfa:	1855      	adds	r5, r2, r1
d005adfc:	42a5      	cmp	r5, r4
d005adfe:	d10b      	bne.n	d005ae18 <_free_r+0x78>
d005ae00:	6824      	ldr	r4, [r4, #0]
d005ae02:	4421      	add	r1, r4
d005ae04:	1854      	adds	r4, r2, r1
d005ae06:	42a3      	cmp	r3, r4
d005ae08:	6011      	str	r1, [r2, #0]
d005ae0a:	d1dd      	bne.n	d005adc8 <_free_r+0x28>
d005ae0c:	681c      	ldr	r4, [r3, #0]
d005ae0e:	685b      	ldr	r3, [r3, #4]
d005ae10:	6053      	str	r3, [r2, #4]
d005ae12:	4421      	add	r1, r4
d005ae14:	6011      	str	r1, [r2, #0]
d005ae16:	e7d7      	b.n	d005adc8 <_free_r+0x28>
d005ae18:	d902      	bls.n	d005ae20 <_free_r+0x80>
d005ae1a:	230c      	movs	r3, #12
d005ae1c:	6003      	str	r3, [r0, #0]
d005ae1e:	e7d3      	b.n	d005adc8 <_free_r+0x28>
d005ae20:	6825      	ldr	r5, [r4, #0]
d005ae22:	1961      	adds	r1, r4, r5
d005ae24:	428b      	cmp	r3, r1
d005ae26:	bf04      	itt	eq
d005ae28:	6819      	ldreq	r1, [r3, #0]
d005ae2a:	685b      	ldreq	r3, [r3, #4]
d005ae2c:	6063      	str	r3, [r4, #4]
d005ae2e:	bf04      	itt	eq
d005ae30:	1949      	addeq	r1, r1, r5
d005ae32:	6021      	streq	r1, [r4, #0]
d005ae34:	6054      	str	r4, [r2, #4]
d005ae36:	e7c7      	b.n	d005adc8 <_free_r+0x28>
d005ae38:	b003      	add	sp, #12
d005ae3a:	bd30      	pop	{r4, r5, pc}
d005ae3c:	d00f9cc0 	.word	0xd00f9cc0

d005ae40 <_malloc_r>:
d005ae40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005ae42:	1ccd      	adds	r5, r1, #3
d005ae44:	f025 0503 	bic.w	r5, r5, #3
d005ae48:	3508      	adds	r5, #8
d005ae4a:	2d0c      	cmp	r5, #12
d005ae4c:	bf38      	it	cc
d005ae4e:	250c      	movcc	r5, #12
d005ae50:	2d00      	cmp	r5, #0
d005ae52:	4606      	mov	r6, r0
d005ae54:	db01      	blt.n	d005ae5a <_malloc_r+0x1a>
d005ae56:	42a9      	cmp	r1, r5
d005ae58:	d903      	bls.n	d005ae62 <_malloc_r+0x22>
d005ae5a:	230c      	movs	r3, #12
d005ae5c:	6033      	str	r3, [r6, #0]
d005ae5e:	2000      	movs	r0, #0
d005ae60:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005ae62:	f000 fa6f 	bl	d005b344 <__malloc_lock>
d005ae66:	4921      	ldr	r1, [pc, #132]	; (d005aeec <_malloc_r+0xac>)
d005ae68:	680a      	ldr	r2, [r1, #0]
d005ae6a:	4614      	mov	r4, r2
d005ae6c:	b99c      	cbnz	r4, d005ae96 <_malloc_r+0x56>
d005ae6e:	4f20      	ldr	r7, [pc, #128]	; (d005aef0 <_malloc_r+0xb0>)
d005ae70:	683b      	ldr	r3, [r7, #0]
d005ae72:	b923      	cbnz	r3, d005ae7e <_malloc_r+0x3e>
d005ae74:	4621      	mov	r1, r4
d005ae76:	4630      	mov	r0, r6
d005ae78:	f7f5 f932 	bl	d00500e0 <_sbrk_r>
d005ae7c:	6038      	str	r0, [r7, #0]
d005ae7e:	4629      	mov	r1, r5
d005ae80:	4630      	mov	r0, r6
d005ae82:	f7f5 f92d 	bl	d00500e0 <_sbrk_r>
d005ae86:	1c43      	adds	r3, r0, #1
d005ae88:	d123      	bne.n	d005aed2 <_malloc_r+0x92>
d005ae8a:	230c      	movs	r3, #12
d005ae8c:	6033      	str	r3, [r6, #0]
d005ae8e:	4630      	mov	r0, r6
d005ae90:	f000 fa5e 	bl	d005b350 <__malloc_unlock>
d005ae94:	e7e3      	b.n	d005ae5e <_malloc_r+0x1e>
d005ae96:	6823      	ldr	r3, [r4, #0]
d005ae98:	1b5b      	subs	r3, r3, r5
d005ae9a:	d417      	bmi.n	d005aecc <_malloc_r+0x8c>
d005ae9c:	2b0b      	cmp	r3, #11
d005ae9e:	d903      	bls.n	d005aea8 <_malloc_r+0x68>
d005aea0:	6023      	str	r3, [r4, #0]
d005aea2:	441c      	add	r4, r3
d005aea4:	6025      	str	r5, [r4, #0]
d005aea6:	e004      	b.n	d005aeb2 <_malloc_r+0x72>
d005aea8:	6863      	ldr	r3, [r4, #4]
d005aeaa:	42a2      	cmp	r2, r4
d005aeac:	bf0c      	ite	eq
d005aeae:	600b      	streq	r3, [r1, #0]
d005aeb0:	6053      	strne	r3, [r2, #4]
d005aeb2:	4630      	mov	r0, r6
d005aeb4:	f000 fa4c 	bl	d005b350 <__malloc_unlock>
d005aeb8:	f104 000b 	add.w	r0, r4, #11
d005aebc:	1d23      	adds	r3, r4, #4
d005aebe:	f020 0007 	bic.w	r0, r0, #7
d005aec2:	1ac2      	subs	r2, r0, r3
d005aec4:	d0cc      	beq.n	d005ae60 <_malloc_r+0x20>
d005aec6:	1a1b      	subs	r3, r3, r0
d005aec8:	50a3      	str	r3, [r4, r2]
d005aeca:	e7c9      	b.n	d005ae60 <_malloc_r+0x20>
d005aecc:	4622      	mov	r2, r4
d005aece:	6864      	ldr	r4, [r4, #4]
d005aed0:	e7cc      	b.n	d005ae6c <_malloc_r+0x2c>
d005aed2:	1cc4      	adds	r4, r0, #3
d005aed4:	f024 0403 	bic.w	r4, r4, #3
d005aed8:	42a0      	cmp	r0, r4
d005aeda:	d0e3      	beq.n	d005aea4 <_malloc_r+0x64>
d005aedc:	1a21      	subs	r1, r4, r0
d005aede:	4630      	mov	r0, r6
d005aee0:	f7f5 f8fe 	bl	d00500e0 <_sbrk_r>
d005aee4:	3001      	adds	r0, #1
d005aee6:	d1dd      	bne.n	d005aea4 <_malloc_r+0x64>
d005aee8:	e7cf      	b.n	d005ae8a <_malloc_r+0x4a>
d005aeea:	bf00      	nop
d005aeec:	d00f9cc0 	.word	0xd00f9cc0
d005aef0:	d00f9cc4 	.word	0xd00f9cc4

d005aef4 <rand>:
d005aef4:	4b17      	ldr	r3, [pc, #92]	; (d005af54 <rand+0x60>)
d005aef6:	b510      	push	{r4, lr}
d005aef8:	681c      	ldr	r4, [r3, #0]
d005aefa:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d005aefc:	b9b3      	cbnz	r3, d005af2c <rand+0x38>
d005aefe:	2018      	movs	r0, #24
d005af00:	f7ff ff1a 	bl	d005ad38 <malloc>
d005af04:	63a0      	str	r0, [r4, #56]	; 0x38
d005af06:	b928      	cbnz	r0, d005af14 <rand+0x20>
d005af08:	4602      	mov	r2, r0
d005af0a:	4b13      	ldr	r3, [pc, #76]	; (d005af58 <rand+0x64>)
d005af0c:	4813      	ldr	r0, [pc, #76]	; (d005af5c <rand+0x68>)
d005af0e:	214e      	movs	r1, #78	; 0x4e
d005af10:	f000 f962 	bl	d005b1d8 <__assert_func>
d005af14:	4a12      	ldr	r2, [pc, #72]	; (d005af60 <rand+0x6c>)
d005af16:	4b13      	ldr	r3, [pc, #76]	; (d005af64 <rand+0x70>)
d005af18:	e9c0 2300 	strd	r2, r3, [r0]
d005af1c:	4b12      	ldr	r3, [pc, #72]	; (d005af68 <rand+0x74>)
d005af1e:	6083      	str	r3, [r0, #8]
d005af20:	230b      	movs	r3, #11
d005af22:	8183      	strh	r3, [r0, #12]
d005af24:	2201      	movs	r2, #1
d005af26:	2300      	movs	r3, #0
d005af28:	e9c0 2304 	strd	r2, r3, [r0, #16]
d005af2c:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d005af2e:	480f      	ldr	r0, [pc, #60]	; (d005af6c <rand+0x78>)
d005af30:	690a      	ldr	r2, [r1, #16]
d005af32:	694b      	ldr	r3, [r1, #20]
d005af34:	4c0e      	ldr	r4, [pc, #56]	; (d005af70 <rand+0x7c>)
d005af36:	4350      	muls	r0, r2
d005af38:	fb04 0003 	mla	r0, r4, r3, r0
d005af3c:	fba2 3404 	umull	r3, r4, r2, r4
d005af40:	1c5a      	adds	r2, r3, #1
d005af42:	4404      	add	r4, r0
d005af44:	f144 0000 	adc.w	r0, r4, #0
d005af48:	e9c1 2004 	strd	r2, r0, [r1, #16]
d005af4c:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d005af50:	bd10      	pop	{r4, pc}
d005af52:	bf00      	nop
d005af54:	d005f8ec 	.word	0xd005f8ec
d005af58:	d005cfcc 	.word	0xd005cfcc
d005af5c:	d005cfe3 	.word	0xd005cfe3
d005af60:	abcd330e 	.word	0xabcd330e
d005af64:	e66d1234 	.word	0xe66d1234
d005af68:	0005deec 	.word	0x0005deec
d005af6c:	5851f42d 	.word	0x5851f42d
d005af70:	4c957f2d 	.word	0x4c957f2d

d005af74 <setbuf>:
d005af74:	2900      	cmp	r1, #0
d005af76:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005af7a:	bf0c      	ite	eq
d005af7c:	2202      	moveq	r2, #2
d005af7e:	2200      	movne	r2, #0
d005af80:	f000 b800 	b.w	d005af84 <setvbuf>

d005af84 <setvbuf>:
d005af84:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d005af88:	461d      	mov	r5, r3
d005af8a:	4b5d      	ldr	r3, [pc, #372]	; (d005b100 <setvbuf+0x17c>)
d005af8c:	681f      	ldr	r7, [r3, #0]
d005af8e:	4604      	mov	r4, r0
d005af90:	460e      	mov	r6, r1
d005af92:	4690      	mov	r8, r2
d005af94:	b127      	cbz	r7, d005afa0 <setvbuf+0x1c>
d005af96:	69bb      	ldr	r3, [r7, #24]
d005af98:	b913      	cbnz	r3, d005afa0 <setvbuf+0x1c>
d005af9a:	4638      	mov	r0, r7
d005af9c:	f7ff fe2a 	bl	d005abf4 <__sinit>
d005afa0:	4b58      	ldr	r3, [pc, #352]	; (d005b104 <setvbuf+0x180>)
d005afa2:	429c      	cmp	r4, r3
d005afa4:	d167      	bne.n	d005b076 <setvbuf+0xf2>
d005afa6:	687c      	ldr	r4, [r7, #4]
d005afa8:	f1b8 0f02 	cmp.w	r8, #2
d005afac:	d006      	beq.n	d005afbc <setvbuf+0x38>
d005afae:	f1b8 0f01 	cmp.w	r8, #1
d005afb2:	f200 809f 	bhi.w	d005b0f4 <setvbuf+0x170>
d005afb6:	2d00      	cmp	r5, #0
d005afb8:	f2c0 809c 	blt.w	d005b0f4 <setvbuf+0x170>
d005afbc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005afbe:	07db      	lsls	r3, r3, #31
d005afc0:	d405      	bmi.n	d005afce <setvbuf+0x4a>
d005afc2:	89a3      	ldrh	r3, [r4, #12]
d005afc4:	0598      	lsls	r0, r3, #22
d005afc6:	d402      	bmi.n	d005afce <setvbuf+0x4a>
d005afc8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005afca:	f7ff feb2 	bl	d005ad32 <__retarget_lock_acquire_recursive>
d005afce:	4621      	mov	r1, r4
d005afd0:	4638      	mov	r0, r7
d005afd2:	f7ff fd7b 	bl	d005aacc <_fflush_r>
d005afd6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005afd8:	b141      	cbz	r1, d005afec <setvbuf+0x68>
d005afda:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005afde:	4299      	cmp	r1, r3
d005afe0:	d002      	beq.n	d005afe8 <setvbuf+0x64>
d005afe2:	4638      	mov	r0, r7
d005afe4:	f7ff fedc 	bl	d005ada0 <_free_r>
d005afe8:	2300      	movs	r3, #0
d005afea:	6363      	str	r3, [r4, #52]	; 0x34
d005afec:	2300      	movs	r3, #0
d005afee:	61a3      	str	r3, [r4, #24]
d005aff0:	6063      	str	r3, [r4, #4]
d005aff2:	89a3      	ldrh	r3, [r4, #12]
d005aff4:	0619      	lsls	r1, r3, #24
d005aff6:	d503      	bpl.n	d005b000 <setvbuf+0x7c>
d005aff8:	6921      	ldr	r1, [r4, #16]
d005affa:	4638      	mov	r0, r7
d005affc:	f7ff fed0 	bl	d005ada0 <_free_r>
d005b000:	89a3      	ldrh	r3, [r4, #12]
d005b002:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d005b006:	f023 0303 	bic.w	r3, r3, #3
d005b00a:	f1b8 0f02 	cmp.w	r8, #2
d005b00e:	81a3      	strh	r3, [r4, #12]
d005b010:	d06c      	beq.n	d005b0ec <setvbuf+0x168>
d005b012:	ab01      	add	r3, sp, #4
d005b014:	466a      	mov	r2, sp
d005b016:	4621      	mov	r1, r4
d005b018:	4638      	mov	r0, r7
d005b01a:	f000 f92f 	bl	d005b27c <__swhatbuf_r>
d005b01e:	89a3      	ldrh	r3, [r4, #12]
d005b020:	4318      	orrs	r0, r3
d005b022:	81a0      	strh	r0, [r4, #12]
d005b024:	2d00      	cmp	r5, #0
d005b026:	d130      	bne.n	d005b08a <setvbuf+0x106>
d005b028:	9d00      	ldr	r5, [sp, #0]
d005b02a:	4628      	mov	r0, r5
d005b02c:	f7ff fe84 	bl	d005ad38 <malloc>
d005b030:	4606      	mov	r6, r0
d005b032:	2800      	cmp	r0, #0
d005b034:	d155      	bne.n	d005b0e2 <setvbuf+0x15e>
d005b036:	f8dd 9000 	ldr.w	r9, [sp]
d005b03a:	45a9      	cmp	r9, r5
d005b03c:	d14a      	bne.n	d005b0d4 <setvbuf+0x150>
d005b03e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d005b042:	2200      	movs	r2, #0
d005b044:	60a2      	str	r2, [r4, #8]
d005b046:	f104 0247 	add.w	r2, r4, #71	; 0x47
d005b04a:	6022      	str	r2, [r4, #0]
d005b04c:	6122      	str	r2, [r4, #16]
d005b04e:	2201      	movs	r2, #1
d005b050:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005b054:	6162      	str	r2, [r4, #20]
d005b056:	6e62      	ldr	r2, [r4, #100]	; 0x64
d005b058:	f043 0302 	orr.w	r3, r3, #2
d005b05c:	07d2      	lsls	r2, r2, #31
d005b05e:	81a3      	strh	r3, [r4, #12]
d005b060:	d405      	bmi.n	d005b06e <setvbuf+0xea>
d005b062:	f413 7f00 	tst.w	r3, #512	; 0x200
d005b066:	d102      	bne.n	d005b06e <setvbuf+0xea>
d005b068:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005b06a:	f7ff fe63 	bl	d005ad34 <__retarget_lock_release_recursive>
d005b06e:	4628      	mov	r0, r5
d005b070:	b003      	add	sp, #12
d005b072:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d005b076:	4b24      	ldr	r3, [pc, #144]	; (d005b108 <setvbuf+0x184>)
d005b078:	429c      	cmp	r4, r3
d005b07a:	d101      	bne.n	d005b080 <setvbuf+0xfc>
d005b07c:	68bc      	ldr	r4, [r7, #8]
d005b07e:	e793      	b.n	d005afa8 <setvbuf+0x24>
d005b080:	4b22      	ldr	r3, [pc, #136]	; (d005b10c <setvbuf+0x188>)
d005b082:	429c      	cmp	r4, r3
d005b084:	bf08      	it	eq
d005b086:	68fc      	ldreq	r4, [r7, #12]
d005b088:	e78e      	b.n	d005afa8 <setvbuf+0x24>
d005b08a:	2e00      	cmp	r6, #0
d005b08c:	d0cd      	beq.n	d005b02a <setvbuf+0xa6>
d005b08e:	69bb      	ldr	r3, [r7, #24]
d005b090:	b913      	cbnz	r3, d005b098 <setvbuf+0x114>
d005b092:	4638      	mov	r0, r7
d005b094:	f7ff fdae 	bl	d005abf4 <__sinit>
d005b098:	f1b8 0f01 	cmp.w	r8, #1
d005b09c:	bf08      	it	eq
d005b09e:	89a3      	ldrheq	r3, [r4, #12]
d005b0a0:	6026      	str	r6, [r4, #0]
d005b0a2:	bf04      	itt	eq
d005b0a4:	f043 0301 	orreq.w	r3, r3, #1
d005b0a8:	81a3      	strheq	r3, [r4, #12]
d005b0aa:	89a2      	ldrh	r2, [r4, #12]
d005b0ac:	f012 0308 	ands.w	r3, r2, #8
d005b0b0:	e9c4 6504 	strd	r6, r5, [r4, #16]
d005b0b4:	d01c      	beq.n	d005b0f0 <setvbuf+0x16c>
d005b0b6:	07d3      	lsls	r3, r2, #31
d005b0b8:	bf41      	itttt	mi
d005b0ba:	2300      	movmi	r3, #0
d005b0bc:	426d      	negmi	r5, r5
d005b0be:	60a3      	strmi	r3, [r4, #8]
d005b0c0:	61a5      	strmi	r5, [r4, #24]
d005b0c2:	bf58      	it	pl
d005b0c4:	60a5      	strpl	r5, [r4, #8]
d005b0c6:	6e65      	ldr	r5, [r4, #100]	; 0x64
d005b0c8:	f015 0501 	ands.w	r5, r5, #1
d005b0cc:	d115      	bne.n	d005b0fa <setvbuf+0x176>
d005b0ce:	f412 7f00 	tst.w	r2, #512	; 0x200
d005b0d2:	e7c8      	b.n	d005b066 <setvbuf+0xe2>
d005b0d4:	4648      	mov	r0, r9
d005b0d6:	f7ff fe2f 	bl	d005ad38 <malloc>
d005b0da:	4606      	mov	r6, r0
d005b0dc:	2800      	cmp	r0, #0
d005b0de:	d0ae      	beq.n	d005b03e <setvbuf+0xba>
d005b0e0:	464d      	mov	r5, r9
d005b0e2:	89a3      	ldrh	r3, [r4, #12]
d005b0e4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d005b0e8:	81a3      	strh	r3, [r4, #12]
d005b0ea:	e7d0      	b.n	d005b08e <setvbuf+0x10a>
d005b0ec:	2500      	movs	r5, #0
d005b0ee:	e7a8      	b.n	d005b042 <setvbuf+0xbe>
d005b0f0:	60a3      	str	r3, [r4, #8]
d005b0f2:	e7e8      	b.n	d005b0c6 <setvbuf+0x142>
d005b0f4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d005b0f8:	e7b9      	b.n	d005b06e <setvbuf+0xea>
d005b0fa:	2500      	movs	r5, #0
d005b0fc:	e7b7      	b.n	d005b06e <setvbuf+0xea>
d005b0fe:	bf00      	nop
d005b100:	d005f8ec 	.word	0xd005f8ec
d005b104:	d005cf88 	.word	0xd005cf88
d005b108:	d005cfa8 	.word	0xd005cfa8
d005b10c:	d005cf68 	.word	0xd005cf68

d005b110 <siprintf>:
d005b110:	b40e      	push	{r1, r2, r3}
d005b112:	b500      	push	{lr}
d005b114:	b09c      	sub	sp, #112	; 0x70
d005b116:	ab1d      	add	r3, sp, #116	; 0x74
d005b118:	9002      	str	r0, [sp, #8]
d005b11a:	9006      	str	r0, [sp, #24]
d005b11c:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d005b120:	4809      	ldr	r0, [pc, #36]	; (d005b148 <siprintf+0x38>)
d005b122:	9107      	str	r1, [sp, #28]
d005b124:	9104      	str	r1, [sp, #16]
d005b126:	4909      	ldr	r1, [pc, #36]	; (d005b14c <siprintf+0x3c>)
d005b128:	f853 2b04 	ldr.w	r2, [r3], #4
d005b12c:	9105      	str	r1, [sp, #20]
d005b12e:	6800      	ldr	r0, [r0, #0]
d005b130:	9301      	str	r3, [sp, #4]
d005b132:	a902      	add	r1, sp, #8
d005b134:	f000 f994 	bl	d005b460 <_svfiprintf_r>
d005b138:	9b02      	ldr	r3, [sp, #8]
d005b13a:	2200      	movs	r2, #0
d005b13c:	701a      	strb	r2, [r3, #0]
d005b13e:	b01c      	add	sp, #112	; 0x70
d005b140:	f85d eb04 	ldr.w	lr, [sp], #4
d005b144:	b003      	add	sp, #12
d005b146:	4770      	bx	lr
d005b148:	d005f8ec 	.word	0xd005f8ec
d005b14c:	ffff0208 	.word	0xffff0208

d005b150 <__sread>:
d005b150:	b510      	push	{r4, lr}
d005b152:	460c      	mov	r4, r1
d005b154:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005b158:	f000 fd70 	bl	d005bc3c <_read_r>
d005b15c:	2800      	cmp	r0, #0
d005b15e:	bfab      	itete	ge
d005b160:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d005b162:	89a3      	ldrhlt	r3, [r4, #12]
d005b164:	181b      	addge	r3, r3, r0
d005b166:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d005b16a:	bfac      	ite	ge
d005b16c:	6563      	strge	r3, [r4, #84]	; 0x54
d005b16e:	81a3      	strhlt	r3, [r4, #12]
d005b170:	bd10      	pop	{r4, pc}

d005b172 <__swrite>:
d005b172:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005b176:	461f      	mov	r7, r3
d005b178:	898b      	ldrh	r3, [r1, #12]
d005b17a:	05db      	lsls	r3, r3, #23
d005b17c:	4605      	mov	r5, r0
d005b17e:	460c      	mov	r4, r1
d005b180:	4616      	mov	r6, r2
d005b182:	d505      	bpl.n	d005b190 <__swrite+0x1e>
d005b184:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005b188:	2302      	movs	r3, #2
d005b18a:	2200      	movs	r2, #0
d005b18c:	f000 f864 	bl	d005b258 <_lseek_r>
d005b190:	89a3      	ldrh	r3, [r4, #12]
d005b192:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d005b196:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d005b19a:	81a3      	strh	r3, [r4, #12]
d005b19c:	4632      	mov	r2, r6
d005b19e:	463b      	mov	r3, r7
d005b1a0:	4628      	mov	r0, r5
d005b1a2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d005b1a6:	f7f4 bf55 	b.w	d0050054 <_write_r>

d005b1aa <__sseek>:
d005b1aa:	b510      	push	{r4, lr}
d005b1ac:	460c      	mov	r4, r1
d005b1ae:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005b1b2:	f000 f851 	bl	d005b258 <_lseek_r>
d005b1b6:	1c43      	adds	r3, r0, #1
d005b1b8:	89a3      	ldrh	r3, [r4, #12]
d005b1ba:	bf15      	itete	ne
d005b1bc:	6560      	strne	r0, [r4, #84]	; 0x54
d005b1be:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d005b1c2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d005b1c6:	81a3      	strheq	r3, [r4, #12]
d005b1c8:	bf18      	it	ne
d005b1ca:	81a3      	strhne	r3, [r4, #12]
d005b1cc:	bd10      	pop	{r4, pc}

d005b1ce <__sclose>:
d005b1ce:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005b1d2:	f000 b81f 	b.w	d005b214 <_close_r>
	...

d005b1d8 <__assert_func>:
d005b1d8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d005b1da:	4614      	mov	r4, r2
d005b1dc:	461a      	mov	r2, r3
d005b1de:	4b09      	ldr	r3, [pc, #36]	; (d005b204 <__assert_func+0x2c>)
d005b1e0:	681b      	ldr	r3, [r3, #0]
d005b1e2:	4605      	mov	r5, r0
d005b1e4:	68d8      	ldr	r0, [r3, #12]
d005b1e6:	b14c      	cbz	r4, d005b1fc <__assert_func+0x24>
d005b1e8:	4b07      	ldr	r3, [pc, #28]	; (d005b208 <__assert_func+0x30>)
d005b1ea:	9100      	str	r1, [sp, #0]
d005b1ec:	e9cd 3401 	strd	r3, r4, [sp, #4]
d005b1f0:	4906      	ldr	r1, [pc, #24]	; (d005b20c <__assert_func+0x34>)
d005b1f2:	462b      	mov	r3, r5
d005b1f4:	f000 f81e 	bl	d005b234 <fiprintf>
d005b1f8:	f000 fdf2 	bl	d005bde0 <abort>
d005b1fc:	4b04      	ldr	r3, [pc, #16]	; (d005b210 <__assert_func+0x38>)
d005b1fe:	461c      	mov	r4, r3
d005b200:	e7f3      	b.n	d005b1ea <__assert_func+0x12>
d005b202:	bf00      	nop
d005b204:	d005f8ec 	.word	0xd005f8ec
d005b208:	d005d042 	.word	0xd005d042
d005b20c:	d005d04f 	.word	0xd005d04f
d005b210:	d005d07d 	.word	0xd005d07d

d005b214 <_close_r>:
d005b214:	b538      	push	{r3, r4, r5, lr}
d005b216:	4d06      	ldr	r5, [pc, #24]	; (d005b230 <_close_r+0x1c>)
d005b218:	2300      	movs	r3, #0
d005b21a:	4604      	mov	r4, r0
d005b21c:	4608      	mov	r0, r1
d005b21e:	602b      	str	r3, [r5, #0]
d005b220:	f7f4 ff52 	bl	d00500c8 <_close>
d005b224:	1c43      	adds	r3, r0, #1
d005b226:	d102      	bne.n	d005b22e <_close_r+0x1a>
d005b228:	682b      	ldr	r3, [r5, #0]
d005b22a:	b103      	cbz	r3, d005b22e <_close_r+0x1a>
d005b22c:	6023      	str	r3, [r4, #0]
d005b22e:	bd38      	pop	{r3, r4, r5, pc}
d005b230:	d0101ecc 	.word	0xd0101ecc

d005b234 <fiprintf>:
d005b234:	b40e      	push	{r1, r2, r3}
d005b236:	b503      	push	{r0, r1, lr}
d005b238:	4601      	mov	r1, r0
d005b23a:	ab03      	add	r3, sp, #12
d005b23c:	4805      	ldr	r0, [pc, #20]	; (d005b254 <fiprintf+0x20>)
d005b23e:	f853 2b04 	ldr.w	r2, [r3], #4
d005b242:	6800      	ldr	r0, [r0, #0]
d005b244:	9301      	str	r3, [sp, #4]
d005b246:	f000 fa35 	bl	d005b6b4 <_vfiprintf_r>
d005b24a:	b002      	add	sp, #8
d005b24c:	f85d eb04 	ldr.w	lr, [sp], #4
d005b250:	b003      	add	sp, #12
d005b252:	4770      	bx	lr
d005b254:	d005f8ec 	.word	0xd005f8ec

d005b258 <_lseek_r>:
d005b258:	b538      	push	{r3, r4, r5, lr}
d005b25a:	4d07      	ldr	r5, [pc, #28]	; (d005b278 <_lseek_r+0x20>)
d005b25c:	4604      	mov	r4, r0
d005b25e:	4608      	mov	r0, r1
d005b260:	4611      	mov	r1, r2
d005b262:	2200      	movs	r2, #0
d005b264:	602a      	str	r2, [r5, #0]
d005b266:	461a      	mov	r2, r3
d005b268:	f7f4 ff38 	bl	d00500dc <_lseek>
d005b26c:	1c43      	adds	r3, r0, #1
d005b26e:	d102      	bne.n	d005b276 <_lseek_r+0x1e>
d005b270:	682b      	ldr	r3, [r5, #0]
d005b272:	b103      	cbz	r3, d005b276 <_lseek_r+0x1e>
d005b274:	6023      	str	r3, [r4, #0]
d005b276:	bd38      	pop	{r3, r4, r5, pc}
d005b278:	d0101ecc 	.word	0xd0101ecc

d005b27c <__swhatbuf_r>:
d005b27c:	b570      	push	{r4, r5, r6, lr}
d005b27e:	460e      	mov	r6, r1
d005b280:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005b284:	2900      	cmp	r1, #0
d005b286:	b096      	sub	sp, #88	; 0x58
d005b288:	4614      	mov	r4, r2
d005b28a:	461d      	mov	r5, r3
d005b28c:	da07      	bge.n	d005b29e <__swhatbuf_r+0x22>
d005b28e:	2300      	movs	r3, #0
d005b290:	602b      	str	r3, [r5, #0]
d005b292:	89b3      	ldrh	r3, [r6, #12]
d005b294:	061a      	lsls	r2, r3, #24
d005b296:	d410      	bmi.n	d005b2ba <__swhatbuf_r+0x3e>
d005b298:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005b29c:	e00e      	b.n	d005b2bc <__swhatbuf_r+0x40>
d005b29e:	466a      	mov	r2, sp
d005b2a0:	f000 fda6 	bl	d005bdf0 <_fstat_r>
d005b2a4:	2800      	cmp	r0, #0
d005b2a6:	dbf2      	blt.n	d005b28e <__swhatbuf_r+0x12>
d005b2a8:	9a01      	ldr	r2, [sp, #4]
d005b2aa:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d005b2ae:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d005b2b2:	425a      	negs	r2, r3
d005b2b4:	415a      	adcs	r2, r3
d005b2b6:	602a      	str	r2, [r5, #0]
d005b2b8:	e7ee      	b.n	d005b298 <__swhatbuf_r+0x1c>
d005b2ba:	2340      	movs	r3, #64	; 0x40
d005b2bc:	2000      	movs	r0, #0
d005b2be:	6023      	str	r3, [r4, #0]
d005b2c0:	b016      	add	sp, #88	; 0x58
d005b2c2:	bd70      	pop	{r4, r5, r6, pc}

d005b2c4 <__smakebuf_r>:
d005b2c4:	898b      	ldrh	r3, [r1, #12]
d005b2c6:	b573      	push	{r0, r1, r4, r5, r6, lr}
d005b2c8:	079d      	lsls	r5, r3, #30
d005b2ca:	4606      	mov	r6, r0
d005b2cc:	460c      	mov	r4, r1
d005b2ce:	d507      	bpl.n	d005b2e0 <__smakebuf_r+0x1c>
d005b2d0:	f104 0347 	add.w	r3, r4, #71	; 0x47
d005b2d4:	6023      	str	r3, [r4, #0]
d005b2d6:	6123      	str	r3, [r4, #16]
d005b2d8:	2301      	movs	r3, #1
d005b2da:	6163      	str	r3, [r4, #20]
d005b2dc:	b002      	add	sp, #8
d005b2de:	bd70      	pop	{r4, r5, r6, pc}
d005b2e0:	ab01      	add	r3, sp, #4
d005b2e2:	466a      	mov	r2, sp
d005b2e4:	f7ff ffca 	bl	d005b27c <__swhatbuf_r>
d005b2e8:	9900      	ldr	r1, [sp, #0]
d005b2ea:	4605      	mov	r5, r0
d005b2ec:	4630      	mov	r0, r6
d005b2ee:	f7ff fda7 	bl	d005ae40 <_malloc_r>
d005b2f2:	b948      	cbnz	r0, d005b308 <__smakebuf_r+0x44>
d005b2f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005b2f8:	059a      	lsls	r2, r3, #22
d005b2fa:	d4ef      	bmi.n	d005b2dc <__smakebuf_r+0x18>
d005b2fc:	f023 0303 	bic.w	r3, r3, #3
d005b300:	f043 0302 	orr.w	r3, r3, #2
d005b304:	81a3      	strh	r3, [r4, #12]
d005b306:	e7e3      	b.n	d005b2d0 <__smakebuf_r+0xc>
d005b308:	4b0d      	ldr	r3, [pc, #52]	; (d005b340 <__smakebuf_r+0x7c>)
d005b30a:	62b3      	str	r3, [r6, #40]	; 0x28
d005b30c:	89a3      	ldrh	r3, [r4, #12]
d005b30e:	6020      	str	r0, [r4, #0]
d005b310:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d005b314:	81a3      	strh	r3, [r4, #12]
d005b316:	9b00      	ldr	r3, [sp, #0]
d005b318:	6163      	str	r3, [r4, #20]
d005b31a:	9b01      	ldr	r3, [sp, #4]
d005b31c:	6120      	str	r0, [r4, #16]
d005b31e:	b15b      	cbz	r3, d005b338 <__smakebuf_r+0x74>
d005b320:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d005b324:	4630      	mov	r0, r6
d005b326:	f000 fd75 	bl	d005be14 <_isatty_r>
d005b32a:	b128      	cbz	r0, d005b338 <__smakebuf_r+0x74>
d005b32c:	89a3      	ldrh	r3, [r4, #12]
d005b32e:	f023 0303 	bic.w	r3, r3, #3
d005b332:	f043 0301 	orr.w	r3, r3, #1
d005b336:	81a3      	strh	r3, [r4, #12]
d005b338:	89a0      	ldrh	r0, [r4, #12]
d005b33a:	4305      	orrs	r5, r0
d005b33c:	81a5      	strh	r5, [r4, #12]
d005b33e:	e7cd      	b.n	d005b2dc <__smakebuf_r+0x18>
d005b340:	d005ab8d 	.word	0xd005ab8d

d005b344 <__malloc_lock>:
d005b344:	4801      	ldr	r0, [pc, #4]	; (d005b34c <__malloc_lock+0x8>)
d005b346:	f7ff bcf4 	b.w	d005ad32 <__retarget_lock_acquire_recursive>
d005b34a:	bf00      	nop
d005b34c:	d0101ec4 	.word	0xd0101ec4

d005b350 <__malloc_unlock>:
d005b350:	4801      	ldr	r0, [pc, #4]	; (d005b358 <__malloc_unlock+0x8>)
d005b352:	f7ff bcef 	b.w	d005ad34 <__retarget_lock_release_recursive>
d005b356:	bf00      	nop
d005b358:	d0101ec4 	.word	0xd0101ec4

d005b35c <_realloc_r>:
d005b35c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005b35e:	4607      	mov	r7, r0
d005b360:	4614      	mov	r4, r2
d005b362:	460e      	mov	r6, r1
d005b364:	b921      	cbnz	r1, d005b370 <_realloc_r+0x14>
d005b366:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005b36a:	4611      	mov	r1, r2
d005b36c:	f7ff bd68 	b.w	d005ae40 <_malloc_r>
d005b370:	b922      	cbnz	r2, d005b37c <_realloc_r+0x20>
d005b372:	f7ff fd15 	bl	d005ada0 <_free_r>
d005b376:	4625      	mov	r5, r4
d005b378:	4628      	mov	r0, r5
d005b37a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005b37c:	f000 fdca 	bl	d005bf14 <_malloc_usable_size_r>
d005b380:	42a0      	cmp	r0, r4
d005b382:	d20f      	bcs.n	d005b3a4 <_realloc_r+0x48>
d005b384:	4621      	mov	r1, r4
d005b386:	4638      	mov	r0, r7
d005b388:	f7ff fd5a 	bl	d005ae40 <_malloc_r>
d005b38c:	4605      	mov	r5, r0
d005b38e:	2800      	cmp	r0, #0
d005b390:	d0f2      	beq.n	d005b378 <_realloc_r+0x1c>
d005b392:	4631      	mov	r1, r6
d005b394:	4622      	mov	r2, r4
d005b396:	f7ff fced 	bl	d005ad74 <memcpy>
d005b39a:	4631      	mov	r1, r6
d005b39c:	4638      	mov	r0, r7
d005b39e:	f7ff fcff 	bl	d005ada0 <_free_r>
d005b3a2:	e7e9      	b.n	d005b378 <_realloc_r+0x1c>
d005b3a4:	4635      	mov	r5, r6
d005b3a6:	e7e7      	b.n	d005b378 <_realloc_r+0x1c>

d005b3a8 <__ssputs_r>:
d005b3a8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d005b3ac:	688e      	ldr	r6, [r1, #8]
d005b3ae:	429e      	cmp	r6, r3
d005b3b0:	4682      	mov	sl, r0
d005b3b2:	460c      	mov	r4, r1
d005b3b4:	4690      	mov	r8, r2
d005b3b6:	461f      	mov	r7, r3
d005b3b8:	d838      	bhi.n	d005b42c <__ssputs_r+0x84>
d005b3ba:	898a      	ldrh	r2, [r1, #12]
d005b3bc:	f412 6f90 	tst.w	r2, #1152	; 0x480
d005b3c0:	d032      	beq.n	d005b428 <__ssputs_r+0x80>
d005b3c2:	6825      	ldr	r5, [r4, #0]
d005b3c4:	6909      	ldr	r1, [r1, #16]
d005b3c6:	eba5 0901 	sub.w	r9, r5, r1
d005b3ca:	6965      	ldr	r5, [r4, #20]
d005b3cc:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d005b3d0:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d005b3d4:	3301      	adds	r3, #1
d005b3d6:	444b      	add	r3, r9
d005b3d8:	106d      	asrs	r5, r5, #1
d005b3da:	429d      	cmp	r5, r3
d005b3dc:	bf38      	it	cc
d005b3de:	461d      	movcc	r5, r3
d005b3e0:	0553      	lsls	r3, r2, #21
d005b3e2:	d531      	bpl.n	d005b448 <__ssputs_r+0xa0>
d005b3e4:	4629      	mov	r1, r5
d005b3e6:	f7ff fd2b 	bl	d005ae40 <_malloc_r>
d005b3ea:	4606      	mov	r6, r0
d005b3ec:	b950      	cbnz	r0, d005b404 <__ssputs_r+0x5c>
d005b3ee:	230c      	movs	r3, #12
d005b3f0:	f8ca 3000 	str.w	r3, [sl]
d005b3f4:	89a3      	ldrh	r3, [r4, #12]
d005b3f6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d005b3fa:	81a3      	strh	r3, [r4, #12]
d005b3fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005b400:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d005b404:	6921      	ldr	r1, [r4, #16]
d005b406:	464a      	mov	r2, r9
d005b408:	f7ff fcb4 	bl	d005ad74 <memcpy>
d005b40c:	89a3      	ldrh	r3, [r4, #12]
d005b40e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d005b412:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d005b416:	81a3      	strh	r3, [r4, #12]
d005b418:	6126      	str	r6, [r4, #16]
d005b41a:	6165      	str	r5, [r4, #20]
d005b41c:	444e      	add	r6, r9
d005b41e:	eba5 0509 	sub.w	r5, r5, r9
d005b422:	6026      	str	r6, [r4, #0]
d005b424:	60a5      	str	r5, [r4, #8]
d005b426:	463e      	mov	r6, r7
d005b428:	42be      	cmp	r6, r7
d005b42a:	d900      	bls.n	d005b42e <__ssputs_r+0x86>
d005b42c:	463e      	mov	r6, r7
d005b42e:	4632      	mov	r2, r6
d005b430:	6820      	ldr	r0, [r4, #0]
d005b432:	4641      	mov	r1, r8
d005b434:	f000 fd54 	bl	d005bee0 <memmove>
d005b438:	68a3      	ldr	r3, [r4, #8]
d005b43a:	6822      	ldr	r2, [r4, #0]
d005b43c:	1b9b      	subs	r3, r3, r6
d005b43e:	4432      	add	r2, r6
d005b440:	60a3      	str	r3, [r4, #8]
d005b442:	6022      	str	r2, [r4, #0]
d005b444:	2000      	movs	r0, #0
d005b446:	e7db      	b.n	d005b400 <__ssputs_r+0x58>
d005b448:	462a      	mov	r2, r5
d005b44a:	f7ff ff87 	bl	d005b35c <_realloc_r>
d005b44e:	4606      	mov	r6, r0
d005b450:	2800      	cmp	r0, #0
d005b452:	d1e1      	bne.n	d005b418 <__ssputs_r+0x70>
d005b454:	6921      	ldr	r1, [r4, #16]
d005b456:	4650      	mov	r0, sl
d005b458:	f7ff fca2 	bl	d005ada0 <_free_r>
d005b45c:	e7c7      	b.n	d005b3ee <__ssputs_r+0x46>
	...

d005b460 <_svfiprintf_r>:
d005b460:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005b464:	4698      	mov	r8, r3
d005b466:	898b      	ldrh	r3, [r1, #12]
d005b468:	061b      	lsls	r3, r3, #24
d005b46a:	b09d      	sub	sp, #116	; 0x74
d005b46c:	4607      	mov	r7, r0
d005b46e:	460d      	mov	r5, r1
d005b470:	4614      	mov	r4, r2
d005b472:	d50e      	bpl.n	d005b492 <_svfiprintf_r+0x32>
d005b474:	690b      	ldr	r3, [r1, #16]
d005b476:	b963      	cbnz	r3, d005b492 <_svfiprintf_r+0x32>
d005b478:	2140      	movs	r1, #64	; 0x40
d005b47a:	f7ff fce1 	bl	d005ae40 <_malloc_r>
d005b47e:	6028      	str	r0, [r5, #0]
d005b480:	6128      	str	r0, [r5, #16]
d005b482:	b920      	cbnz	r0, d005b48e <_svfiprintf_r+0x2e>
d005b484:	230c      	movs	r3, #12
d005b486:	603b      	str	r3, [r7, #0]
d005b488:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005b48c:	e0d1      	b.n	d005b632 <_svfiprintf_r+0x1d2>
d005b48e:	2340      	movs	r3, #64	; 0x40
d005b490:	616b      	str	r3, [r5, #20]
d005b492:	2300      	movs	r3, #0
d005b494:	9309      	str	r3, [sp, #36]	; 0x24
d005b496:	2320      	movs	r3, #32
d005b498:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d005b49c:	f8cd 800c 	str.w	r8, [sp, #12]
d005b4a0:	2330      	movs	r3, #48	; 0x30
d005b4a2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d005b64c <_svfiprintf_r+0x1ec>
d005b4a6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d005b4aa:	f04f 0901 	mov.w	r9, #1
d005b4ae:	4623      	mov	r3, r4
d005b4b0:	469a      	mov	sl, r3
d005b4b2:	f813 2b01 	ldrb.w	r2, [r3], #1
d005b4b6:	b10a      	cbz	r2, d005b4bc <_svfiprintf_r+0x5c>
d005b4b8:	2a25      	cmp	r2, #37	; 0x25
d005b4ba:	d1f9      	bne.n	d005b4b0 <_svfiprintf_r+0x50>
d005b4bc:	ebba 0b04 	subs.w	fp, sl, r4
d005b4c0:	d00b      	beq.n	d005b4da <_svfiprintf_r+0x7a>
d005b4c2:	465b      	mov	r3, fp
d005b4c4:	4622      	mov	r2, r4
d005b4c6:	4629      	mov	r1, r5
d005b4c8:	4638      	mov	r0, r7
d005b4ca:	f7ff ff6d 	bl	d005b3a8 <__ssputs_r>
d005b4ce:	3001      	adds	r0, #1
d005b4d0:	f000 80aa 	beq.w	d005b628 <_svfiprintf_r+0x1c8>
d005b4d4:	9a09      	ldr	r2, [sp, #36]	; 0x24
d005b4d6:	445a      	add	r2, fp
d005b4d8:	9209      	str	r2, [sp, #36]	; 0x24
d005b4da:	f89a 3000 	ldrb.w	r3, [sl]
d005b4de:	2b00      	cmp	r3, #0
d005b4e0:	f000 80a2 	beq.w	d005b628 <_svfiprintf_r+0x1c8>
d005b4e4:	2300      	movs	r3, #0
d005b4e6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d005b4ea:	e9cd 2305 	strd	r2, r3, [sp, #20]
d005b4ee:	f10a 0a01 	add.w	sl, sl, #1
d005b4f2:	9304      	str	r3, [sp, #16]
d005b4f4:	9307      	str	r3, [sp, #28]
d005b4f6:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d005b4fa:	931a      	str	r3, [sp, #104]	; 0x68
d005b4fc:	4654      	mov	r4, sl
d005b4fe:	2205      	movs	r2, #5
d005b500:	f814 1b01 	ldrb.w	r1, [r4], #1
d005b504:	4851      	ldr	r0, [pc, #324]	; (d005b64c <_svfiprintf_r+0x1ec>)
d005b506:	f000 fc9b 	bl	d005be40 <memchr>
d005b50a:	9a04      	ldr	r2, [sp, #16]
d005b50c:	b9d8      	cbnz	r0, d005b546 <_svfiprintf_r+0xe6>
d005b50e:	06d0      	lsls	r0, r2, #27
d005b510:	bf44      	itt	mi
d005b512:	2320      	movmi	r3, #32
d005b514:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005b518:	0711      	lsls	r1, r2, #28
d005b51a:	bf44      	itt	mi
d005b51c:	232b      	movmi	r3, #43	; 0x2b
d005b51e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005b522:	f89a 3000 	ldrb.w	r3, [sl]
d005b526:	2b2a      	cmp	r3, #42	; 0x2a
d005b528:	d015      	beq.n	d005b556 <_svfiprintf_r+0xf6>
d005b52a:	9a07      	ldr	r2, [sp, #28]
d005b52c:	4654      	mov	r4, sl
d005b52e:	2000      	movs	r0, #0
d005b530:	f04f 0c0a 	mov.w	ip, #10
d005b534:	4621      	mov	r1, r4
d005b536:	f811 3b01 	ldrb.w	r3, [r1], #1
d005b53a:	3b30      	subs	r3, #48	; 0x30
d005b53c:	2b09      	cmp	r3, #9
d005b53e:	d94e      	bls.n	d005b5de <_svfiprintf_r+0x17e>
d005b540:	b1b0      	cbz	r0, d005b570 <_svfiprintf_r+0x110>
d005b542:	9207      	str	r2, [sp, #28]
d005b544:	e014      	b.n	d005b570 <_svfiprintf_r+0x110>
d005b546:	eba0 0308 	sub.w	r3, r0, r8
d005b54a:	fa09 f303 	lsl.w	r3, r9, r3
d005b54e:	4313      	orrs	r3, r2
d005b550:	9304      	str	r3, [sp, #16]
d005b552:	46a2      	mov	sl, r4
d005b554:	e7d2      	b.n	d005b4fc <_svfiprintf_r+0x9c>
d005b556:	9b03      	ldr	r3, [sp, #12]
d005b558:	1d19      	adds	r1, r3, #4
d005b55a:	681b      	ldr	r3, [r3, #0]
d005b55c:	9103      	str	r1, [sp, #12]
d005b55e:	2b00      	cmp	r3, #0
d005b560:	bfbb      	ittet	lt
d005b562:	425b      	neglt	r3, r3
d005b564:	f042 0202 	orrlt.w	r2, r2, #2
d005b568:	9307      	strge	r3, [sp, #28]
d005b56a:	9307      	strlt	r3, [sp, #28]
d005b56c:	bfb8      	it	lt
d005b56e:	9204      	strlt	r2, [sp, #16]
d005b570:	7823      	ldrb	r3, [r4, #0]
d005b572:	2b2e      	cmp	r3, #46	; 0x2e
d005b574:	d10c      	bne.n	d005b590 <_svfiprintf_r+0x130>
d005b576:	7863      	ldrb	r3, [r4, #1]
d005b578:	2b2a      	cmp	r3, #42	; 0x2a
d005b57a:	d135      	bne.n	d005b5e8 <_svfiprintf_r+0x188>
d005b57c:	9b03      	ldr	r3, [sp, #12]
d005b57e:	1d1a      	adds	r2, r3, #4
d005b580:	681b      	ldr	r3, [r3, #0]
d005b582:	9203      	str	r2, [sp, #12]
d005b584:	2b00      	cmp	r3, #0
d005b586:	bfb8      	it	lt
d005b588:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d005b58c:	3402      	adds	r4, #2
d005b58e:	9305      	str	r3, [sp, #20]
d005b590:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d005b65c <_svfiprintf_r+0x1fc>
d005b594:	7821      	ldrb	r1, [r4, #0]
d005b596:	2203      	movs	r2, #3
d005b598:	4650      	mov	r0, sl
d005b59a:	f000 fc51 	bl	d005be40 <memchr>
d005b59e:	b140      	cbz	r0, d005b5b2 <_svfiprintf_r+0x152>
d005b5a0:	2340      	movs	r3, #64	; 0x40
d005b5a2:	eba0 000a 	sub.w	r0, r0, sl
d005b5a6:	fa03 f000 	lsl.w	r0, r3, r0
d005b5aa:	9b04      	ldr	r3, [sp, #16]
d005b5ac:	4303      	orrs	r3, r0
d005b5ae:	3401      	adds	r4, #1
d005b5b0:	9304      	str	r3, [sp, #16]
d005b5b2:	f814 1b01 	ldrb.w	r1, [r4], #1
d005b5b6:	4826      	ldr	r0, [pc, #152]	; (d005b650 <_svfiprintf_r+0x1f0>)
d005b5b8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d005b5bc:	2206      	movs	r2, #6
d005b5be:	f000 fc3f 	bl	d005be40 <memchr>
d005b5c2:	2800      	cmp	r0, #0
d005b5c4:	d038      	beq.n	d005b638 <_svfiprintf_r+0x1d8>
d005b5c6:	4b23      	ldr	r3, [pc, #140]	; (d005b654 <_svfiprintf_r+0x1f4>)
d005b5c8:	bb1b      	cbnz	r3, d005b612 <_svfiprintf_r+0x1b2>
d005b5ca:	9b03      	ldr	r3, [sp, #12]
d005b5cc:	3307      	adds	r3, #7
d005b5ce:	f023 0307 	bic.w	r3, r3, #7
d005b5d2:	3308      	adds	r3, #8
d005b5d4:	9303      	str	r3, [sp, #12]
d005b5d6:	9b09      	ldr	r3, [sp, #36]	; 0x24
d005b5d8:	4433      	add	r3, r6
d005b5da:	9309      	str	r3, [sp, #36]	; 0x24
d005b5dc:	e767      	b.n	d005b4ae <_svfiprintf_r+0x4e>
d005b5de:	fb0c 3202 	mla	r2, ip, r2, r3
d005b5e2:	460c      	mov	r4, r1
d005b5e4:	2001      	movs	r0, #1
d005b5e6:	e7a5      	b.n	d005b534 <_svfiprintf_r+0xd4>
d005b5e8:	2300      	movs	r3, #0
d005b5ea:	3401      	adds	r4, #1
d005b5ec:	9305      	str	r3, [sp, #20]
d005b5ee:	4619      	mov	r1, r3
d005b5f0:	f04f 0c0a 	mov.w	ip, #10
d005b5f4:	4620      	mov	r0, r4
d005b5f6:	f810 2b01 	ldrb.w	r2, [r0], #1
d005b5fa:	3a30      	subs	r2, #48	; 0x30
d005b5fc:	2a09      	cmp	r2, #9
d005b5fe:	d903      	bls.n	d005b608 <_svfiprintf_r+0x1a8>
d005b600:	2b00      	cmp	r3, #0
d005b602:	d0c5      	beq.n	d005b590 <_svfiprintf_r+0x130>
d005b604:	9105      	str	r1, [sp, #20]
d005b606:	e7c3      	b.n	d005b590 <_svfiprintf_r+0x130>
d005b608:	fb0c 2101 	mla	r1, ip, r1, r2
d005b60c:	4604      	mov	r4, r0
d005b60e:	2301      	movs	r3, #1
d005b610:	e7f0      	b.n	d005b5f4 <_svfiprintf_r+0x194>
d005b612:	ab03      	add	r3, sp, #12
d005b614:	9300      	str	r3, [sp, #0]
d005b616:	462a      	mov	r2, r5
d005b618:	4b0f      	ldr	r3, [pc, #60]	; (d005b658 <_svfiprintf_r+0x1f8>)
d005b61a:	a904      	add	r1, sp, #16
d005b61c:	4638      	mov	r0, r7
d005b61e:	f3af 8000 	nop.w
d005b622:	1c42      	adds	r2, r0, #1
d005b624:	4606      	mov	r6, r0
d005b626:	d1d6      	bne.n	d005b5d6 <_svfiprintf_r+0x176>
d005b628:	89ab      	ldrh	r3, [r5, #12]
d005b62a:	065b      	lsls	r3, r3, #25
d005b62c:	f53f af2c 	bmi.w	d005b488 <_svfiprintf_r+0x28>
d005b630:	9809      	ldr	r0, [sp, #36]	; 0x24
d005b632:	b01d      	add	sp, #116	; 0x74
d005b634:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005b638:	ab03      	add	r3, sp, #12
d005b63a:	9300      	str	r3, [sp, #0]
d005b63c:	462a      	mov	r2, r5
d005b63e:	4b06      	ldr	r3, [pc, #24]	; (d005b658 <_svfiprintf_r+0x1f8>)
d005b640:	a904      	add	r1, sp, #16
d005b642:	4638      	mov	r0, r7
d005b644:	f000 f9d4 	bl	d005b9f0 <_printf_i>
d005b648:	e7eb      	b.n	d005b622 <_svfiprintf_r+0x1c2>
d005b64a:	bf00      	nop
d005b64c:	d005d07e 	.word	0xd005d07e
d005b650:	d005d088 	.word	0xd005d088
d005b654:	00000000 	.word	0x00000000
d005b658:	d005b3a9 	.word	0xd005b3a9
d005b65c:	d005d084 	.word	0xd005d084

d005b660 <__sfputc_r>:
d005b660:	6893      	ldr	r3, [r2, #8]
d005b662:	3b01      	subs	r3, #1
d005b664:	2b00      	cmp	r3, #0
d005b666:	b410      	push	{r4}
d005b668:	6093      	str	r3, [r2, #8]
d005b66a:	da08      	bge.n	d005b67e <__sfputc_r+0x1e>
d005b66c:	6994      	ldr	r4, [r2, #24]
d005b66e:	42a3      	cmp	r3, r4
d005b670:	db01      	blt.n	d005b676 <__sfputc_r+0x16>
d005b672:	290a      	cmp	r1, #10
d005b674:	d103      	bne.n	d005b67e <__sfputc_r+0x1e>
d005b676:	f85d 4b04 	ldr.w	r4, [sp], #4
d005b67a:	f000 baf1 	b.w	d005bc60 <__swbuf_r>
d005b67e:	6813      	ldr	r3, [r2, #0]
d005b680:	1c58      	adds	r0, r3, #1
d005b682:	6010      	str	r0, [r2, #0]
d005b684:	7019      	strb	r1, [r3, #0]
d005b686:	4608      	mov	r0, r1
d005b688:	f85d 4b04 	ldr.w	r4, [sp], #4
d005b68c:	4770      	bx	lr

d005b68e <__sfputs_r>:
d005b68e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005b690:	4606      	mov	r6, r0
d005b692:	460f      	mov	r7, r1
d005b694:	4614      	mov	r4, r2
d005b696:	18d5      	adds	r5, r2, r3
d005b698:	42ac      	cmp	r4, r5
d005b69a:	d101      	bne.n	d005b6a0 <__sfputs_r+0x12>
d005b69c:	2000      	movs	r0, #0
d005b69e:	e007      	b.n	d005b6b0 <__sfputs_r+0x22>
d005b6a0:	f814 1b01 	ldrb.w	r1, [r4], #1
d005b6a4:	463a      	mov	r2, r7
d005b6a6:	4630      	mov	r0, r6
d005b6a8:	f7ff ffda 	bl	d005b660 <__sfputc_r>
d005b6ac:	1c43      	adds	r3, r0, #1
d005b6ae:	d1f3      	bne.n	d005b698 <__sfputs_r+0xa>
d005b6b0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d005b6b4 <_vfiprintf_r>:
d005b6b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005b6b8:	460d      	mov	r5, r1
d005b6ba:	b09d      	sub	sp, #116	; 0x74
d005b6bc:	4614      	mov	r4, r2
d005b6be:	4698      	mov	r8, r3
d005b6c0:	4606      	mov	r6, r0
d005b6c2:	b118      	cbz	r0, d005b6cc <_vfiprintf_r+0x18>
d005b6c4:	6983      	ldr	r3, [r0, #24]
d005b6c6:	b90b      	cbnz	r3, d005b6cc <_vfiprintf_r+0x18>
d005b6c8:	f7ff fa94 	bl	d005abf4 <__sinit>
d005b6cc:	4b89      	ldr	r3, [pc, #548]	; (d005b8f4 <_vfiprintf_r+0x240>)
d005b6ce:	429d      	cmp	r5, r3
d005b6d0:	d11b      	bne.n	d005b70a <_vfiprintf_r+0x56>
d005b6d2:	6875      	ldr	r5, [r6, #4]
d005b6d4:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d005b6d6:	07d9      	lsls	r1, r3, #31
d005b6d8:	d405      	bmi.n	d005b6e6 <_vfiprintf_r+0x32>
d005b6da:	89ab      	ldrh	r3, [r5, #12]
d005b6dc:	059a      	lsls	r2, r3, #22
d005b6de:	d402      	bmi.n	d005b6e6 <_vfiprintf_r+0x32>
d005b6e0:	6da8      	ldr	r0, [r5, #88]	; 0x58
d005b6e2:	f7ff fb26 	bl	d005ad32 <__retarget_lock_acquire_recursive>
d005b6e6:	89ab      	ldrh	r3, [r5, #12]
d005b6e8:	071b      	lsls	r3, r3, #28
d005b6ea:	d501      	bpl.n	d005b6f0 <_vfiprintf_r+0x3c>
d005b6ec:	692b      	ldr	r3, [r5, #16]
d005b6ee:	b9eb      	cbnz	r3, d005b72c <_vfiprintf_r+0x78>
d005b6f0:	4629      	mov	r1, r5
d005b6f2:	4630      	mov	r0, r6
d005b6f4:	f000 fb06 	bl	d005bd04 <__swsetup_r>
d005b6f8:	b1c0      	cbz	r0, d005b72c <_vfiprintf_r+0x78>
d005b6fa:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d005b6fc:	07dc      	lsls	r4, r3, #31
d005b6fe:	d50e      	bpl.n	d005b71e <_vfiprintf_r+0x6a>
d005b700:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005b704:	b01d      	add	sp, #116	; 0x74
d005b706:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005b70a:	4b7b      	ldr	r3, [pc, #492]	; (d005b8f8 <_vfiprintf_r+0x244>)
d005b70c:	429d      	cmp	r5, r3
d005b70e:	d101      	bne.n	d005b714 <_vfiprintf_r+0x60>
d005b710:	68b5      	ldr	r5, [r6, #8]
d005b712:	e7df      	b.n	d005b6d4 <_vfiprintf_r+0x20>
d005b714:	4b79      	ldr	r3, [pc, #484]	; (d005b8fc <_vfiprintf_r+0x248>)
d005b716:	429d      	cmp	r5, r3
d005b718:	bf08      	it	eq
d005b71a:	68f5      	ldreq	r5, [r6, #12]
d005b71c:	e7da      	b.n	d005b6d4 <_vfiprintf_r+0x20>
d005b71e:	89ab      	ldrh	r3, [r5, #12]
d005b720:	0598      	lsls	r0, r3, #22
d005b722:	d4ed      	bmi.n	d005b700 <_vfiprintf_r+0x4c>
d005b724:	6da8      	ldr	r0, [r5, #88]	; 0x58
d005b726:	f7ff fb05 	bl	d005ad34 <__retarget_lock_release_recursive>
d005b72a:	e7e9      	b.n	d005b700 <_vfiprintf_r+0x4c>
d005b72c:	2300      	movs	r3, #0
d005b72e:	9309      	str	r3, [sp, #36]	; 0x24
d005b730:	2320      	movs	r3, #32
d005b732:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d005b736:	f8cd 800c 	str.w	r8, [sp, #12]
d005b73a:	2330      	movs	r3, #48	; 0x30
d005b73c:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d005b900 <_vfiprintf_r+0x24c>
d005b740:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d005b744:	f04f 0901 	mov.w	r9, #1
d005b748:	4623      	mov	r3, r4
d005b74a:	469a      	mov	sl, r3
d005b74c:	f813 2b01 	ldrb.w	r2, [r3], #1
d005b750:	b10a      	cbz	r2, d005b756 <_vfiprintf_r+0xa2>
d005b752:	2a25      	cmp	r2, #37	; 0x25
d005b754:	d1f9      	bne.n	d005b74a <_vfiprintf_r+0x96>
d005b756:	ebba 0b04 	subs.w	fp, sl, r4
d005b75a:	d00b      	beq.n	d005b774 <_vfiprintf_r+0xc0>
d005b75c:	465b      	mov	r3, fp
d005b75e:	4622      	mov	r2, r4
d005b760:	4629      	mov	r1, r5
d005b762:	4630      	mov	r0, r6
d005b764:	f7ff ff93 	bl	d005b68e <__sfputs_r>
d005b768:	3001      	adds	r0, #1
d005b76a:	f000 80aa 	beq.w	d005b8c2 <_vfiprintf_r+0x20e>
d005b76e:	9a09      	ldr	r2, [sp, #36]	; 0x24
d005b770:	445a      	add	r2, fp
d005b772:	9209      	str	r2, [sp, #36]	; 0x24
d005b774:	f89a 3000 	ldrb.w	r3, [sl]
d005b778:	2b00      	cmp	r3, #0
d005b77a:	f000 80a2 	beq.w	d005b8c2 <_vfiprintf_r+0x20e>
d005b77e:	2300      	movs	r3, #0
d005b780:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d005b784:	e9cd 2305 	strd	r2, r3, [sp, #20]
d005b788:	f10a 0a01 	add.w	sl, sl, #1
d005b78c:	9304      	str	r3, [sp, #16]
d005b78e:	9307      	str	r3, [sp, #28]
d005b790:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d005b794:	931a      	str	r3, [sp, #104]	; 0x68
d005b796:	4654      	mov	r4, sl
d005b798:	2205      	movs	r2, #5
d005b79a:	f814 1b01 	ldrb.w	r1, [r4], #1
d005b79e:	4858      	ldr	r0, [pc, #352]	; (d005b900 <_vfiprintf_r+0x24c>)
d005b7a0:	f000 fb4e 	bl	d005be40 <memchr>
d005b7a4:	9a04      	ldr	r2, [sp, #16]
d005b7a6:	b9d8      	cbnz	r0, d005b7e0 <_vfiprintf_r+0x12c>
d005b7a8:	06d1      	lsls	r1, r2, #27
d005b7aa:	bf44      	itt	mi
d005b7ac:	2320      	movmi	r3, #32
d005b7ae:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005b7b2:	0713      	lsls	r3, r2, #28
d005b7b4:	bf44      	itt	mi
d005b7b6:	232b      	movmi	r3, #43	; 0x2b
d005b7b8:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005b7bc:	f89a 3000 	ldrb.w	r3, [sl]
d005b7c0:	2b2a      	cmp	r3, #42	; 0x2a
d005b7c2:	d015      	beq.n	d005b7f0 <_vfiprintf_r+0x13c>
d005b7c4:	9a07      	ldr	r2, [sp, #28]
d005b7c6:	4654      	mov	r4, sl
d005b7c8:	2000      	movs	r0, #0
d005b7ca:	f04f 0c0a 	mov.w	ip, #10
d005b7ce:	4621      	mov	r1, r4
d005b7d0:	f811 3b01 	ldrb.w	r3, [r1], #1
d005b7d4:	3b30      	subs	r3, #48	; 0x30
d005b7d6:	2b09      	cmp	r3, #9
d005b7d8:	d94e      	bls.n	d005b878 <_vfiprintf_r+0x1c4>
d005b7da:	b1b0      	cbz	r0, d005b80a <_vfiprintf_r+0x156>
d005b7dc:	9207      	str	r2, [sp, #28]
d005b7de:	e014      	b.n	d005b80a <_vfiprintf_r+0x156>
d005b7e0:	eba0 0308 	sub.w	r3, r0, r8
d005b7e4:	fa09 f303 	lsl.w	r3, r9, r3
d005b7e8:	4313      	orrs	r3, r2
d005b7ea:	9304      	str	r3, [sp, #16]
d005b7ec:	46a2      	mov	sl, r4
d005b7ee:	e7d2      	b.n	d005b796 <_vfiprintf_r+0xe2>
d005b7f0:	9b03      	ldr	r3, [sp, #12]
d005b7f2:	1d19      	adds	r1, r3, #4
d005b7f4:	681b      	ldr	r3, [r3, #0]
d005b7f6:	9103      	str	r1, [sp, #12]
d005b7f8:	2b00      	cmp	r3, #0
d005b7fa:	bfbb      	ittet	lt
d005b7fc:	425b      	neglt	r3, r3
d005b7fe:	f042 0202 	orrlt.w	r2, r2, #2
d005b802:	9307      	strge	r3, [sp, #28]
d005b804:	9307      	strlt	r3, [sp, #28]
d005b806:	bfb8      	it	lt
d005b808:	9204      	strlt	r2, [sp, #16]
d005b80a:	7823      	ldrb	r3, [r4, #0]
d005b80c:	2b2e      	cmp	r3, #46	; 0x2e
d005b80e:	d10c      	bne.n	d005b82a <_vfiprintf_r+0x176>
d005b810:	7863      	ldrb	r3, [r4, #1]
d005b812:	2b2a      	cmp	r3, #42	; 0x2a
d005b814:	d135      	bne.n	d005b882 <_vfiprintf_r+0x1ce>
d005b816:	9b03      	ldr	r3, [sp, #12]
d005b818:	1d1a      	adds	r2, r3, #4
d005b81a:	681b      	ldr	r3, [r3, #0]
d005b81c:	9203      	str	r2, [sp, #12]
d005b81e:	2b00      	cmp	r3, #0
d005b820:	bfb8      	it	lt
d005b822:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d005b826:	3402      	adds	r4, #2
d005b828:	9305      	str	r3, [sp, #20]
d005b82a:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d005b910 <_vfiprintf_r+0x25c>
d005b82e:	7821      	ldrb	r1, [r4, #0]
d005b830:	2203      	movs	r2, #3
d005b832:	4650      	mov	r0, sl
d005b834:	f000 fb04 	bl	d005be40 <memchr>
d005b838:	b140      	cbz	r0, d005b84c <_vfiprintf_r+0x198>
d005b83a:	2340      	movs	r3, #64	; 0x40
d005b83c:	eba0 000a 	sub.w	r0, r0, sl
d005b840:	fa03 f000 	lsl.w	r0, r3, r0
d005b844:	9b04      	ldr	r3, [sp, #16]
d005b846:	4303      	orrs	r3, r0
d005b848:	3401      	adds	r4, #1
d005b84a:	9304      	str	r3, [sp, #16]
d005b84c:	f814 1b01 	ldrb.w	r1, [r4], #1
d005b850:	482c      	ldr	r0, [pc, #176]	; (d005b904 <_vfiprintf_r+0x250>)
d005b852:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d005b856:	2206      	movs	r2, #6
d005b858:	f000 faf2 	bl	d005be40 <memchr>
d005b85c:	2800      	cmp	r0, #0
d005b85e:	d03f      	beq.n	d005b8e0 <_vfiprintf_r+0x22c>
d005b860:	4b29      	ldr	r3, [pc, #164]	; (d005b908 <_vfiprintf_r+0x254>)
d005b862:	bb1b      	cbnz	r3, d005b8ac <_vfiprintf_r+0x1f8>
d005b864:	9b03      	ldr	r3, [sp, #12]
d005b866:	3307      	adds	r3, #7
d005b868:	f023 0307 	bic.w	r3, r3, #7
d005b86c:	3308      	adds	r3, #8
d005b86e:	9303      	str	r3, [sp, #12]
d005b870:	9b09      	ldr	r3, [sp, #36]	; 0x24
d005b872:	443b      	add	r3, r7
d005b874:	9309      	str	r3, [sp, #36]	; 0x24
d005b876:	e767      	b.n	d005b748 <_vfiprintf_r+0x94>
d005b878:	fb0c 3202 	mla	r2, ip, r2, r3
d005b87c:	460c      	mov	r4, r1
d005b87e:	2001      	movs	r0, #1
d005b880:	e7a5      	b.n	d005b7ce <_vfiprintf_r+0x11a>
d005b882:	2300      	movs	r3, #0
d005b884:	3401      	adds	r4, #1
d005b886:	9305      	str	r3, [sp, #20]
d005b888:	4619      	mov	r1, r3
d005b88a:	f04f 0c0a 	mov.w	ip, #10
d005b88e:	4620      	mov	r0, r4
d005b890:	f810 2b01 	ldrb.w	r2, [r0], #1
d005b894:	3a30      	subs	r2, #48	; 0x30
d005b896:	2a09      	cmp	r2, #9
d005b898:	d903      	bls.n	d005b8a2 <_vfiprintf_r+0x1ee>
d005b89a:	2b00      	cmp	r3, #0
d005b89c:	d0c5      	beq.n	d005b82a <_vfiprintf_r+0x176>
d005b89e:	9105      	str	r1, [sp, #20]
d005b8a0:	e7c3      	b.n	d005b82a <_vfiprintf_r+0x176>
d005b8a2:	fb0c 2101 	mla	r1, ip, r1, r2
d005b8a6:	4604      	mov	r4, r0
d005b8a8:	2301      	movs	r3, #1
d005b8aa:	e7f0      	b.n	d005b88e <_vfiprintf_r+0x1da>
d005b8ac:	ab03      	add	r3, sp, #12
d005b8ae:	9300      	str	r3, [sp, #0]
d005b8b0:	462a      	mov	r2, r5
d005b8b2:	4b16      	ldr	r3, [pc, #88]	; (d005b90c <_vfiprintf_r+0x258>)
d005b8b4:	a904      	add	r1, sp, #16
d005b8b6:	4630      	mov	r0, r6
d005b8b8:	f3af 8000 	nop.w
d005b8bc:	4607      	mov	r7, r0
d005b8be:	1c78      	adds	r0, r7, #1
d005b8c0:	d1d6      	bne.n	d005b870 <_vfiprintf_r+0x1bc>
d005b8c2:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d005b8c4:	07d9      	lsls	r1, r3, #31
d005b8c6:	d405      	bmi.n	d005b8d4 <_vfiprintf_r+0x220>
d005b8c8:	89ab      	ldrh	r3, [r5, #12]
d005b8ca:	059a      	lsls	r2, r3, #22
d005b8cc:	d402      	bmi.n	d005b8d4 <_vfiprintf_r+0x220>
d005b8ce:	6da8      	ldr	r0, [r5, #88]	; 0x58
d005b8d0:	f7ff fa30 	bl	d005ad34 <__retarget_lock_release_recursive>
d005b8d4:	89ab      	ldrh	r3, [r5, #12]
d005b8d6:	065b      	lsls	r3, r3, #25
d005b8d8:	f53f af12 	bmi.w	d005b700 <_vfiprintf_r+0x4c>
d005b8dc:	9809      	ldr	r0, [sp, #36]	; 0x24
d005b8de:	e711      	b.n	d005b704 <_vfiprintf_r+0x50>
d005b8e0:	ab03      	add	r3, sp, #12
d005b8e2:	9300      	str	r3, [sp, #0]
d005b8e4:	462a      	mov	r2, r5
d005b8e6:	4b09      	ldr	r3, [pc, #36]	; (d005b90c <_vfiprintf_r+0x258>)
d005b8e8:	a904      	add	r1, sp, #16
d005b8ea:	4630      	mov	r0, r6
d005b8ec:	f000 f880 	bl	d005b9f0 <_printf_i>
d005b8f0:	e7e4      	b.n	d005b8bc <_vfiprintf_r+0x208>
d005b8f2:	bf00      	nop
d005b8f4:	d005cf88 	.word	0xd005cf88
d005b8f8:	d005cfa8 	.word	0xd005cfa8
d005b8fc:	d005cf68 	.word	0xd005cf68
d005b900:	d005d07e 	.word	0xd005d07e
d005b904:	d005d088 	.word	0xd005d088
d005b908:	00000000 	.word	0x00000000
d005b90c:	d005b68f 	.word	0xd005b68f
d005b910:	d005d084 	.word	0xd005d084

d005b914 <_printf_common>:
d005b914:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d005b918:	4616      	mov	r6, r2
d005b91a:	4699      	mov	r9, r3
d005b91c:	688a      	ldr	r2, [r1, #8]
d005b91e:	690b      	ldr	r3, [r1, #16]
d005b920:	f8dd 8020 	ldr.w	r8, [sp, #32]
d005b924:	4293      	cmp	r3, r2
d005b926:	bfb8      	it	lt
d005b928:	4613      	movlt	r3, r2
d005b92a:	6033      	str	r3, [r6, #0]
d005b92c:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d005b930:	4607      	mov	r7, r0
d005b932:	460c      	mov	r4, r1
d005b934:	b10a      	cbz	r2, d005b93a <_printf_common+0x26>
d005b936:	3301      	adds	r3, #1
d005b938:	6033      	str	r3, [r6, #0]
d005b93a:	6823      	ldr	r3, [r4, #0]
d005b93c:	0699      	lsls	r1, r3, #26
d005b93e:	bf42      	ittt	mi
d005b940:	6833      	ldrmi	r3, [r6, #0]
d005b942:	3302      	addmi	r3, #2
d005b944:	6033      	strmi	r3, [r6, #0]
d005b946:	6825      	ldr	r5, [r4, #0]
d005b948:	f015 0506 	ands.w	r5, r5, #6
d005b94c:	d106      	bne.n	d005b95c <_printf_common+0x48>
d005b94e:	f104 0a19 	add.w	sl, r4, #25
d005b952:	68e3      	ldr	r3, [r4, #12]
d005b954:	6832      	ldr	r2, [r6, #0]
d005b956:	1a9b      	subs	r3, r3, r2
d005b958:	42ab      	cmp	r3, r5
d005b95a:	dc26      	bgt.n	d005b9aa <_printf_common+0x96>
d005b95c:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d005b960:	1e13      	subs	r3, r2, #0
d005b962:	6822      	ldr	r2, [r4, #0]
d005b964:	bf18      	it	ne
d005b966:	2301      	movne	r3, #1
d005b968:	0692      	lsls	r2, r2, #26
d005b96a:	d42b      	bmi.n	d005b9c4 <_printf_common+0xb0>
d005b96c:	f104 0243 	add.w	r2, r4, #67	; 0x43
d005b970:	4649      	mov	r1, r9
d005b972:	4638      	mov	r0, r7
d005b974:	47c0      	blx	r8
d005b976:	3001      	adds	r0, #1
d005b978:	d01e      	beq.n	d005b9b8 <_printf_common+0xa4>
d005b97a:	6823      	ldr	r3, [r4, #0]
d005b97c:	68e5      	ldr	r5, [r4, #12]
d005b97e:	6832      	ldr	r2, [r6, #0]
d005b980:	f003 0306 	and.w	r3, r3, #6
d005b984:	2b04      	cmp	r3, #4
d005b986:	bf08      	it	eq
d005b988:	1aad      	subeq	r5, r5, r2
d005b98a:	68a3      	ldr	r3, [r4, #8]
d005b98c:	6922      	ldr	r2, [r4, #16]
d005b98e:	bf0c      	ite	eq
d005b990:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d005b994:	2500      	movne	r5, #0
d005b996:	4293      	cmp	r3, r2
d005b998:	bfc4      	itt	gt
d005b99a:	1a9b      	subgt	r3, r3, r2
d005b99c:	18ed      	addgt	r5, r5, r3
d005b99e:	2600      	movs	r6, #0
d005b9a0:	341a      	adds	r4, #26
d005b9a2:	42b5      	cmp	r5, r6
d005b9a4:	d11a      	bne.n	d005b9dc <_printf_common+0xc8>
d005b9a6:	2000      	movs	r0, #0
d005b9a8:	e008      	b.n	d005b9bc <_printf_common+0xa8>
d005b9aa:	2301      	movs	r3, #1
d005b9ac:	4652      	mov	r2, sl
d005b9ae:	4649      	mov	r1, r9
d005b9b0:	4638      	mov	r0, r7
d005b9b2:	47c0      	blx	r8
d005b9b4:	3001      	adds	r0, #1
d005b9b6:	d103      	bne.n	d005b9c0 <_printf_common+0xac>
d005b9b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005b9bc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d005b9c0:	3501      	adds	r5, #1
d005b9c2:	e7c6      	b.n	d005b952 <_printf_common+0x3e>
d005b9c4:	18e1      	adds	r1, r4, r3
d005b9c6:	1c5a      	adds	r2, r3, #1
d005b9c8:	2030      	movs	r0, #48	; 0x30
d005b9ca:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d005b9ce:	4422      	add	r2, r4
d005b9d0:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d005b9d4:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d005b9d8:	3302      	adds	r3, #2
d005b9da:	e7c7      	b.n	d005b96c <_printf_common+0x58>
d005b9dc:	2301      	movs	r3, #1
d005b9de:	4622      	mov	r2, r4
d005b9e0:	4649      	mov	r1, r9
d005b9e2:	4638      	mov	r0, r7
d005b9e4:	47c0      	blx	r8
d005b9e6:	3001      	adds	r0, #1
d005b9e8:	d0e6      	beq.n	d005b9b8 <_printf_common+0xa4>
d005b9ea:	3601      	adds	r6, #1
d005b9ec:	e7d9      	b.n	d005b9a2 <_printf_common+0x8e>
	...

d005b9f0 <_printf_i>:
d005b9f0:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d005b9f4:	460c      	mov	r4, r1
d005b9f6:	4691      	mov	r9, r2
d005b9f8:	7e27      	ldrb	r7, [r4, #24]
d005b9fa:	990c      	ldr	r1, [sp, #48]	; 0x30
d005b9fc:	2f78      	cmp	r7, #120	; 0x78
d005b9fe:	4680      	mov	r8, r0
d005ba00:	469a      	mov	sl, r3
d005ba02:	f104 0243 	add.w	r2, r4, #67	; 0x43
d005ba06:	d807      	bhi.n	d005ba18 <_printf_i+0x28>
d005ba08:	2f62      	cmp	r7, #98	; 0x62
d005ba0a:	d80a      	bhi.n	d005ba22 <_printf_i+0x32>
d005ba0c:	2f00      	cmp	r7, #0
d005ba0e:	f000 80d8 	beq.w	d005bbc2 <_printf_i+0x1d2>
d005ba12:	2f58      	cmp	r7, #88	; 0x58
d005ba14:	f000 80a3 	beq.w	d005bb5e <_printf_i+0x16e>
d005ba18:	f104 0642 	add.w	r6, r4, #66	; 0x42
d005ba1c:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d005ba20:	e03a      	b.n	d005ba98 <_printf_i+0xa8>
d005ba22:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d005ba26:	2b15      	cmp	r3, #21
d005ba28:	d8f6      	bhi.n	d005ba18 <_printf_i+0x28>
d005ba2a:	a001      	add	r0, pc, #4	; (adr r0, d005ba30 <_printf_i+0x40>)
d005ba2c:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d005ba30:	d005ba89 	.word	0xd005ba89
d005ba34:	d005ba9d 	.word	0xd005ba9d
d005ba38:	d005ba19 	.word	0xd005ba19
d005ba3c:	d005ba19 	.word	0xd005ba19
d005ba40:	d005ba19 	.word	0xd005ba19
d005ba44:	d005ba19 	.word	0xd005ba19
d005ba48:	d005ba9d 	.word	0xd005ba9d
d005ba4c:	d005ba19 	.word	0xd005ba19
d005ba50:	d005ba19 	.word	0xd005ba19
d005ba54:	d005ba19 	.word	0xd005ba19
d005ba58:	d005ba19 	.word	0xd005ba19
d005ba5c:	d005bba9 	.word	0xd005bba9
d005ba60:	d005bacd 	.word	0xd005bacd
d005ba64:	d005bb8b 	.word	0xd005bb8b
d005ba68:	d005ba19 	.word	0xd005ba19
d005ba6c:	d005ba19 	.word	0xd005ba19
d005ba70:	d005bbcb 	.word	0xd005bbcb
d005ba74:	d005ba19 	.word	0xd005ba19
d005ba78:	d005bacd 	.word	0xd005bacd
d005ba7c:	d005ba19 	.word	0xd005ba19
d005ba80:	d005ba19 	.word	0xd005ba19
d005ba84:	d005bb93 	.word	0xd005bb93
d005ba88:	680b      	ldr	r3, [r1, #0]
d005ba8a:	1d1a      	adds	r2, r3, #4
d005ba8c:	681b      	ldr	r3, [r3, #0]
d005ba8e:	600a      	str	r2, [r1, #0]
d005ba90:	f104 0642 	add.w	r6, r4, #66	; 0x42
d005ba94:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d005ba98:	2301      	movs	r3, #1
d005ba9a:	e0a3      	b.n	d005bbe4 <_printf_i+0x1f4>
d005ba9c:	6825      	ldr	r5, [r4, #0]
d005ba9e:	6808      	ldr	r0, [r1, #0]
d005baa0:	062e      	lsls	r6, r5, #24
d005baa2:	f100 0304 	add.w	r3, r0, #4
d005baa6:	d50a      	bpl.n	d005babe <_printf_i+0xce>
d005baa8:	6805      	ldr	r5, [r0, #0]
d005baaa:	600b      	str	r3, [r1, #0]
d005baac:	2d00      	cmp	r5, #0
d005baae:	da03      	bge.n	d005bab8 <_printf_i+0xc8>
d005bab0:	232d      	movs	r3, #45	; 0x2d
d005bab2:	426d      	negs	r5, r5
d005bab4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d005bab8:	485e      	ldr	r0, [pc, #376]	; (d005bc34 <_printf_i+0x244>)
d005baba:	230a      	movs	r3, #10
d005babc:	e019      	b.n	d005baf2 <_printf_i+0x102>
d005babe:	f015 0f40 	tst.w	r5, #64	; 0x40
d005bac2:	6805      	ldr	r5, [r0, #0]
d005bac4:	600b      	str	r3, [r1, #0]
d005bac6:	bf18      	it	ne
d005bac8:	b22d      	sxthne	r5, r5
d005baca:	e7ef      	b.n	d005baac <_printf_i+0xbc>
d005bacc:	680b      	ldr	r3, [r1, #0]
d005bace:	6825      	ldr	r5, [r4, #0]
d005bad0:	1d18      	adds	r0, r3, #4
d005bad2:	6008      	str	r0, [r1, #0]
d005bad4:	0628      	lsls	r0, r5, #24
d005bad6:	d501      	bpl.n	d005badc <_printf_i+0xec>
d005bad8:	681d      	ldr	r5, [r3, #0]
d005bada:	e002      	b.n	d005bae2 <_printf_i+0xf2>
d005badc:	0669      	lsls	r1, r5, #25
d005bade:	d5fb      	bpl.n	d005bad8 <_printf_i+0xe8>
d005bae0:	881d      	ldrh	r5, [r3, #0]
d005bae2:	4854      	ldr	r0, [pc, #336]	; (d005bc34 <_printf_i+0x244>)
d005bae4:	2f6f      	cmp	r7, #111	; 0x6f
d005bae6:	bf0c      	ite	eq
d005bae8:	2308      	moveq	r3, #8
d005baea:	230a      	movne	r3, #10
d005baec:	2100      	movs	r1, #0
d005baee:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d005baf2:	6866      	ldr	r6, [r4, #4]
d005baf4:	60a6      	str	r6, [r4, #8]
d005baf6:	2e00      	cmp	r6, #0
d005baf8:	bfa2      	ittt	ge
d005bafa:	6821      	ldrge	r1, [r4, #0]
d005bafc:	f021 0104 	bicge.w	r1, r1, #4
d005bb00:	6021      	strge	r1, [r4, #0]
d005bb02:	b90d      	cbnz	r5, d005bb08 <_printf_i+0x118>
d005bb04:	2e00      	cmp	r6, #0
d005bb06:	d04d      	beq.n	d005bba4 <_printf_i+0x1b4>
d005bb08:	4616      	mov	r6, r2
d005bb0a:	fbb5 f1f3 	udiv	r1, r5, r3
d005bb0e:	fb03 5711 	mls	r7, r3, r1, r5
d005bb12:	5dc7      	ldrb	r7, [r0, r7]
d005bb14:	f806 7d01 	strb.w	r7, [r6, #-1]!
d005bb18:	462f      	mov	r7, r5
d005bb1a:	42bb      	cmp	r3, r7
d005bb1c:	460d      	mov	r5, r1
d005bb1e:	d9f4      	bls.n	d005bb0a <_printf_i+0x11a>
d005bb20:	2b08      	cmp	r3, #8
d005bb22:	d10b      	bne.n	d005bb3c <_printf_i+0x14c>
d005bb24:	6823      	ldr	r3, [r4, #0]
d005bb26:	07df      	lsls	r7, r3, #31
d005bb28:	d508      	bpl.n	d005bb3c <_printf_i+0x14c>
d005bb2a:	6923      	ldr	r3, [r4, #16]
d005bb2c:	6861      	ldr	r1, [r4, #4]
d005bb2e:	4299      	cmp	r1, r3
d005bb30:	bfde      	ittt	le
d005bb32:	2330      	movle	r3, #48	; 0x30
d005bb34:	f806 3c01 	strble.w	r3, [r6, #-1]
d005bb38:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d005bb3c:	1b92      	subs	r2, r2, r6
d005bb3e:	6122      	str	r2, [r4, #16]
d005bb40:	f8cd a000 	str.w	sl, [sp]
d005bb44:	464b      	mov	r3, r9
d005bb46:	aa03      	add	r2, sp, #12
d005bb48:	4621      	mov	r1, r4
d005bb4a:	4640      	mov	r0, r8
d005bb4c:	f7ff fee2 	bl	d005b914 <_printf_common>
d005bb50:	3001      	adds	r0, #1
d005bb52:	d14c      	bne.n	d005bbee <_printf_i+0x1fe>
d005bb54:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005bb58:	b004      	add	sp, #16
d005bb5a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d005bb5e:	4835      	ldr	r0, [pc, #212]	; (d005bc34 <_printf_i+0x244>)
d005bb60:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d005bb64:	6823      	ldr	r3, [r4, #0]
d005bb66:	680e      	ldr	r6, [r1, #0]
d005bb68:	061f      	lsls	r7, r3, #24
d005bb6a:	f856 5b04 	ldr.w	r5, [r6], #4
d005bb6e:	600e      	str	r6, [r1, #0]
d005bb70:	d514      	bpl.n	d005bb9c <_printf_i+0x1ac>
d005bb72:	07d9      	lsls	r1, r3, #31
d005bb74:	bf44      	itt	mi
d005bb76:	f043 0320 	orrmi.w	r3, r3, #32
d005bb7a:	6023      	strmi	r3, [r4, #0]
d005bb7c:	b91d      	cbnz	r5, d005bb86 <_printf_i+0x196>
d005bb7e:	6823      	ldr	r3, [r4, #0]
d005bb80:	f023 0320 	bic.w	r3, r3, #32
d005bb84:	6023      	str	r3, [r4, #0]
d005bb86:	2310      	movs	r3, #16
d005bb88:	e7b0      	b.n	d005baec <_printf_i+0xfc>
d005bb8a:	6823      	ldr	r3, [r4, #0]
d005bb8c:	f043 0320 	orr.w	r3, r3, #32
d005bb90:	6023      	str	r3, [r4, #0]
d005bb92:	2378      	movs	r3, #120	; 0x78
d005bb94:	4828      	ldr	r0, [pc, #160]	; (d005bc38 <_printf_i+0x248>)
d005bb96:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d005bb9a:	e7e3      	b.n	d005bb64 <_printf_i+0x174>
d005bb9c:	065e      	lsls	r6, r3, #25
d005bb9e:	bf48      	it	mi
d005bba0:	b2ad      	uxthmi	r5, r5
d005bba2:	e7e6      	b.n	d005bb72 <_printf_i+0x182>
d005bba4:	4616      	mov	r6, r2
d005bba6:	e7bb      	b.n	d005bb20 <_printf_i+0x130>
d005bba8:	680b      	ldr	r3, [r1, #0]
d005bbaa:	6826      	ldr	r6, [r4, #0]
d005bbac:	6960      	ldr	r0, [r4, #20]
d005bbae:	1d1d      	adds	r5, r3, #4
d005bbb0:	600d      	str	r5, [r1, #0]
d005bbb2:	0635      	lsls	r5, r6, #24
d005bbb4:	681b      	ldr	r3, [r3, #0]
d005bbb6:	d501      	bpl.n	d005bbbc <_printf_i+0x1cc>
d005bbb8:	6018      	str	r0, [r3, #0]
d005bbba:	e002      	b.n	d005bbc2 <_printf_i+0x1d2>
d005bbbc:	0671      	lsls	r1, r6, #25
d005bbbe:	d5fb      	bpl.n	d005bbb8 <_printf_i+0x1c8>
d005bbc0:	8018      	strh	r0, [r3, #0]
d005bbc2:	2300      	movs	r3, #0
d005bbc4:	6123      	str	r3, [r4, #16]
d005bbc6:	4616      	mov	r6, r2
d005bbc8:	e7ba      	b.n	d005bb40 <_printf_i+0x150>
d005bbca:	680b      	ldr	r3, [r1, #0]
d005bbcc:	1d1a      	adds	r2, r3, #4
d005bbce:	600a      	str	r2, [r1, #0]
d005bbd0:	681e      	ldr	r6, [r3, #0]
d005bbd2:	6862      	ldr	r2, [r4, #4]
d005bbd4:	2100      	movs	r1, #0
d005bbd6:	4630      	mov	r0, r6
d005bbd8:	f000 f932 	bl	d005be40 <memchr>
d005bbdc:	b108      	cbz	r0, d005bbe2 <_printf_i+0x1f2>
d005bbde:	1b80      	subs	r0, r0, r6
d005bbe0:	6060      	str	r0, [r4, #4]
d005bbe2:	6863      	ldr	r3, [r4, #4]
d005bbe4:	6123      	str	r3, [r4, #16]
d005bbe6:	2300      	movs	r3, #0
d005bbe8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d005bbec:	e7a8      	b.n	d005bb40 <_printf_i+0x150>
d005bbee:	6923      	ldr	r3, [r4, #16]
d005bbf0:	4632      	mov	r2, r6
d005bbf2:	4649      	mov	r1, r9
d005bbf4:	4640      	mov	r0, r8
d005bbf6:	47d0      	blx	sl
d005bbf8:	3001      	adds	r0, #1
d005bbfa:	d0ab      	beq.n	d005bb54 <_printf_i+0x164>
d005bbfc:	6823      	ldr	r3, [r4, #0]
d005bbfe:	079b      	lsls	r3, r3, #30
d005bc00:	d413      	bmi.n	d005bc2a <_printf_i+0x23a>
d005bc02:	68e0      	ldr	r0, [r4, #12]
d005bc04:	9b03      	ldr	r3, [sp, #12]
d005bc06:	4298      	cmp	r0, r3
d005bc08:	bfb8      	it	lt
d005bc0a:	4618      	movlt	r0, r3
d005bc0c:	e7a4      	b.n	d005bb58 <_printf_i+0x168>
d005bc0e:	2301      	movs	r3, #1
d005bc10:	4632      	mov	r2, r6
d005bc12:	4649      	mov	r1, r9
d005bc14:	4640      	mov	r0, r8
d005bc16:	47d0      	blx	sl
d005bc18:	3001      	adds	r0, #1
d005bc1a:	d09b      	beq.n	d005bb54 <_printf_i+0x164>
d005bc1c:	3501      	adds	r5, #1
d005bc1e:	68e3      	ldr	r3, [r4, #12]
d005bc20:	9903      	ldr	r1, [sp, #12]
d005bc22:	1a5b      	subs	r3, r3, r1
d005bc24:	42ab      	cmp	r3, r5
d005bc26:	dcf2      	bgt.n	d005bc0e <_printf_i+0x21e>
d005bc28:	e7eb      	b.n	d005bc02 <_printf_i+0x212>
d005bc2a:	2500      	movs	r5, #0
d005bc2c:	f104 0619 	add.w	r6, r4, #25
d005bc30:	e7f5      	b.n	d005bc1e <_printf_i+0x22e>
d005bc32:	bf00      	nop
d005bc34:	d005d08f 	.word	0xd005d08f
d005bc38:	d005d0a0 	.word	0xd005d0a0

d005bc3c <_read_r>:
d005bc3c:	b538      	push	{r3, r4, r5, lr}
d005bc3e:	4d07      	ldr	r5, [pc, #28]	; (d005bc5c <_read_r+0x20>)
d005bc40:	4604      	mov	r4, r0
d005bc42:	4608      	mov	r0, r1
d005bc44:	4611      	mov	r1, r2
d005bc46:	2200      	movs	r2, #0
d005bc48:	602a      	str	r2, [r5, #0]
d005bc4a:	461a      	mov	r2, r3
d005bc4c:	f7f4 fa32 	bl	d00500b4 <_read>
d005bc50:	1c43      	adds	r3, r0, #1
d005bc52:	d102      	bne.n	d005bc5a <_read_r+0x1e>
d005bc54:	682b      	ldr	r3, [r5, #0]
d005bc56:	b103      	cbz	r3, d005bc5a <_read_r+0x1e>
d005bc58:	6023      	str	r3, [r4, #0]
d005bc5a:	bd38      	pop	{r3, r4, r5, pc}
d005bc5c:	d0101ecc 	.word	0xd0101ecc

d005bc60 <__swbuf_r>:
d005bc60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005bc62:	460e      	mov	r6, r1
d005bc64:	4614      	mov	r4, r2
d005bc66:	4605      	mov	r5, r0
d005bc68:	b118      	cbz	r0, d005bc72 <__swbuf_r+0x12>
d005bc6a:	6983      	ldr	r3, [r0, #24]
d005bc6c:	b90b      	cbnz	r3, d005bc72 <__swbuf_r+0x12>
d005bc6e:	f7fe ffc1 	bl	d005abf4 <__sinit>
d005bc72:	4b21      	ldr	r3, [pc, #132]	; (d005bcf8 <__swbuf_r+0x98>)
d005bc74:	429c      	cmp	r4, r3
d005bc76:	d12b      	bne.n	d005bcd0 <__swbuf_r+0x70>
d005bc78:	686c      	ldr	r4, [r5, #4]
d005bc7a:	69a3      	ldr	r3, [r4, #24]
d005bc7c:	60a3      	str	r3, [r4, #8]
d005bc7e:	89a3      	ldrh	r3, [r4, #12]
d005bc80:	071a      	lsls	r2, r3, #28
d005bc82:	d52f      	bpl.n	d005bce4 <__swbuf_r+0x84>
d005bc84:	6923      	ldr	r3, [r4, #16]
d005bc86:	b36b      	cbz	r3, d005bce4 <__swbuf_r+0x84>
d005bc88:	6923      	ldr	r3, [r4, #16]
d005bc8a:	6820      	ldr	r0, [r4, #0]
d005bc8c:	1ac0      	subs	r0, r0, r3
d005bc8e:	6963      	ldr	r3, [r4, #20]
d005bc90:	b2f6      	uxtb	r6, r6
d005bc92:	4283      	cmp	r3, r0
d005bc94:	4637      	mov	r7, r6
d005bc96:	dc04      	bgt.n	d005bca2 <__swbuf_r+0x42>
d005bc98:	4621      	mov	r1, r4
d005bc9a:	4628      	mov	r0, r5
d005bc9c:	f7fe ff16 	bl	d005aacc <_fflush_r>
d005bca0:	bb30      	cbnz	r0, d005bcf0 <__swbuf_r+0x90>
d005bca2:	68a3      	ldr	r3, [r4, #8]
d005bca4:	3b01      	subs	r3, #1
d005bca6:	60a3      	str	r3, [r4, #8]
d005bca8:	6823      	ldr	r3, [r4, #0]
d005bcaa:	1c5a      	adds	r2, r3, #1
d005bcac:	6022      	str	r2, [r4, #0]
d005bcae:	701e      	strb	r6, [r3, #0]
d005bcb0:	6963      	ldr	r3, [r4, #20]
d005bcb2:	3001      	adds	r0, #1
d005bcb4:	4283      	cmp	r3, r0
d005bcb6:	d004      	beq.n	d005bcc2 <__swbuf_r+0x62>
d005bcb8:	89a3      	ldrh	r3, [r4, #12]
d005bcba:	07db      	lsls	r3, r3, #31
d005bcbc:	d506      	bpl.n	d005bccc <__swbuf_r+0x6c>
d005bcbe:	2e0a      	cmp	r6, #10
d005bcc0:	d104      	bne.n	d005bccc <__swbuf_r+0x6c>
d005bcc2:	4621      	mov	r1, r4
d005bcc4:	4628      	mov	r0, r5
d005bcc6:	f7fe ff01 	bl	d005aacc <_fflush_r>
d005bcca:	b988      	cbnz	r0, d005bcf0 <__swbuf_r+0x90>
d005bccc:	4638      	mov	r0, r7
d005bcce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005bcd0:	4b0a      	ldr	r3, [pc, #40]	; (d005bcfc <__swbuf_r+0x9c>)
d005bcd2:	429c      	cmp	r4, r3
d005bcd4:	d101      	bne.n	d005bcda <__swbuf_r+0x7a>
d005bcd6:	68ac      	ldr	r4, [r5, #8]
d005bcd8:	e7cf      	b.n	d005bc7a <__swbuf_r+0x1a>
d005bcda:	4b09      	ldr	r3, [pc, #36]	; (d005bd00 <__swbuf_r+0xa0>)
d005bcdc:	429c      	cmp	r4, r3
d005bcde:	bf08      	it	eq
d005bce0:	68ec      	ldreq	r4, [r5, #12]
d005bce2:	e7ca      	b.n	d005bc7a <__swbuf_r+0x1a>
d005bce4:	4621      	mov	r1, r4
d005bce6:	4628      	mov	r0, r5
d005bce8:	f000 f80c 	bl	d005bd04 <__swsetup_r>
d005bcec:	2800      	cmp	r0, #0
d005bcee:	d0cb      	beq.n	d005bc88 <__swbuf_r+0x28>
d005bcf0:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d005bcf4:	e7ea      	b.n	d005bccc <__swbuf_r+0x6c>
d005bcf6:	bf00      	nop
d005bcf8:	d005cf88 	.word	0xd005cf88
d005bcfc:	d005cfa8 	.word	0xd005cfa8
d005bd00:	d005cf68 	.word	0xd005cf68

d005bd04 <__swsetup_r>:
d005bd04:	4b32      	ldr	r3, [pc, #200]	; (d005bdd0 <__swsetup_r+0xcc>)
d005bd06:	b570      	push	{r4, r5, r6, lr}
d005bd08:	681d      	ldr	r5, [r3, #0]
d005bd0a:	4606      	mov	r6, r0
d005bd0c:	460c      	mov	r4, r1
d005bd0e:	b125      	cbz	r5, d005bd1a <__swsetup_r+0x16>
d005bd10:	69ab      	ldr	r3, [r5, #24]
d005bd12:	b913      	cbnz	r3, d005bd1a <__swsetup_r+0x16>
d005bd14:	4628      	mov	r0, r5
d005bd16:	f7fe ff6d 	bl	d005abf4 <__sinit>
d005bd1a:	4b2e      	ldr	r3, [pc, #184]	; (d005bdd4 <__swsetup_r+0xd0>)
d005bd1c:	429c      	cmp	r4, r3
d005bd1e:	d10f      	bne.n	d005bd40 <__swsetup_r+0x3c>
d005bd20:	686c      	ldr	r4, [r5, #4]
d005bd22:	89a3      	ldrh	r3, [r4, #12]
d005bd24:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d005bd28:	0719      	lsls	r1, r3, #28
d005bd2a:	d42c      	bmi.n	d005bd86 <__swsetup_r+0x82>
d005bd2c:	06dd      	lsls	r5, r3, #27
d005bd2e:	d411      	bmi.n	d005bd54 <__swsetup_r+0x50>
d005bd30:	2309      	movs	r3, #9
d005bd32:	6033      	str	r3, [r6, #0]
d005bd34:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d005bd38:	81a3      	strh	r3, [r4, #12]
d005bd3a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005bd3e:	e03e      	b.n	d005bdbe <__swsetup_r+0xba>
d005bd40:	4b25      	ldr	r3, [pc, #148]	; (d005bdd8 <__swsetup_r+0xd4>)
d005bd42:	429c      	cmp	r4, r3
d005bd44:	d101      	bne.n	d005bd4a <__swsetup_r+0x46>
d005bd46:	68ac      	ldr	r4, [r5, #8]
d005bd48:	e7eb      	b.n	d005bd22 <__swsetup_r+0x1e>
d005bd4a:	4b24      	ldr	r3, [pc, #144]	; (d005bddc <__swsetup_r+0xd8>)
d005bd4c:	429c      	cmp	r4, r3
d005bd4e:	bf08      	it	eq
d005bd50:	68ec      	ldreq	r4, [r5, #12]
d005bd52:	e7e6      	b.n	d005bd22 <__swsetup_r+0x1e>
d005bd54:	0758      	lsls	r0, r3, #29
d005bd56:	d512      	bpl.n	d005bd7e <__swsetup_r+0x7a>
d005bd58:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005bd5a:	b141      	cbz	r1, d005bd6e <__swsetup_r+0x6a>
d005bd5c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005bd60:	4299      	cmp	r1, r3
d005bd62:	d002      	beq.n	d005bd6a <__swsetup_r+0x66>
d005bd64:	4630      	mov	r0, r6
d005bd66:	f7ff f81b 	bl	d005ada0 <_free_r>
d005bd6a:	2300      	movs	r3, #0
d005bd6c:	6363      	str	r3, [r4, #52]	; 0x34
d005bd6e:	89a3      	ldrh	r3, [r4, #12]
d005bd70:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d005bd74:	81a3      	strh	r3, [r4, #12]
d005bd76:	2300      	movs	r3, #0
d005bd78:	6063      	str	r3, [r4, #4]
d005bd7a:	6923      	ldr	r3, [r4, #16]
d005bd7c:	6023      	str	r3, [r4, #0]
d005bd7e:	89a3      	ldrh	r3, [r4, #12]
d005bd80:	f043 0308 	orr.w	r3, r3, #8
d005bd84:	81a3      	strh	r3, [r4, #12]
d005bd86:	6923      	ldr	r3, [r4, #16]
d005bd88:	b94b      	cbnz	r3, d005bd9e <__swsetup_r+0x9a>
d005bd8a:	89a3      	ldrh	r3, [r4, #12]
d005bd8c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d005bd90:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d005bd94:	d003      	beq.n	d005bd9e <__swsetup_r+0x9a>
d005bd96:	4621      	mov	r1, r4
d005bd98:	4630      	mov	r0, r6
d005bd9a:	f7ff fa93 	bl	d005b2c4 <__smakebuf_r>
d005bd9e:	89a0      	ldrh	r0, [r4, #12]
d005bda0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d005bda4:	f010 0301 	ands.w	r3, r0, #1
d005bda8:	d00a      	beq.n	d005bdc0 <__swsetup_r+0xbc>
d005bdaa:	2300      	movs	r3, #0
d005bdac:	60a3      	str	r3, [r4, #8]
d005bdae:	6963      	ldr	r3, [r4, #20]
d005bdb0:	425b      	negs	r3, r3
d005bdb2:	61a3      	str	r3, [r4, #24]
d005bdb4:	6923      	ldr	r3, [r4, #16]
d005bdb6:	b943      	cbnz	r3, d005bdca <__swsetup_r+0xc6>
d005bdb8:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d005bdbc:	d1ba      	bne.n	d005bd34 <__swsetup_r+0x30>
d005bdbe:	bd70      	pop	{r4, r5, r6, pc}
d005bdc0:	0781      	lsls	r1, r0, #30
d005bdc2:	bf58      	it	pl
d005bdc4:	6963      	ldrpl	r3, [r4, #20]
d005bdc6:	60a3      	str	r3, [r4, #8]
d005bdc8:	e7f4      	b.n	d005bdb4 <__swsetup_r+0xb0>
d005bdca:	2000      	movs	r0, #0
d005bdcc:	e7f7      	b.n	d005bdbe <__swsetup_r+0xba>
d005bdce:	bf00      	nop
d005bdd0:	d005f8ec 	.word	0xd005f8ec
d005bdd4:	d005cf88 	.word	0xd005cf88
d005bdd8:	d005cfa8 	.word	0xd005cfa8
d005bddc:	d005cf68 	.word	0xd005cf68

d005bde0 <abort>:
d005bde0:	b508      	push	{r3, lr}
d005bde2:	2006      	movs	r0, #6
d005bde4:	f000 f8c6 	bl	d005bf74 <raise>
d005bde8:	2001      	movs	r0, #1
d005bdea:	f7f4 f99b 	bl	d0050124 <_exit>
	...

d005bdf0 <_fstat_r>:
d005bdf0:	b538      	push	{r3, r4, r5, lr}
d005bdf2:	4d07      	ldr	r5, [pc, #28]	; (d005be10 <_fstat_r+0x20>)
d005bdf4:	2300      	movs	r3, #0
d005bdf6:	4604      	mov	r4, r0
d005bdf8:	4608      	mov	r0, r1
d005bdfa:	4611      	mov	r1, r2
d005bdfc:	602b      	str	r3, [r5, #0]
d005bdfe:	f7f4 f967 	bl	d00500d0 <_fstat>
d005be02:	1c43      	adds	r3, r0, #1
d005be04:	d102      	bne.n	d005be0c <_fstat_r+0x1c>
d005be06:	682b      	ldr	r3, [r5, #0]
d005be08:	b103      	cbz	r3, d005be0c <_fstat_r+0x1c>
d005be0a:	6023      	str	r3, [r4, #0]
d005be0c:	bd38      	pop	{r3, r4, r5, pc}
d005be0e:	bf00      	nop
d005be10:	d0101ecc 	.word	0xd0101ecc

d005be14 <_isatty_r>:
d005be14:	b538      	push	{r3, r4, r5, lr}
d005be16:	4d06      	ldr	r5, [pc, #24]	; (d005be30 <_isatty_r+0x1c>)
d005be18:	2300      	movs	r3, #0
d005be1a:	4604      	mov	r4, r0
d005be1c:	4608      	mov	r0, r1
d005be1e:	602b      	str	r3, [r5, #0]
d005be20:	f7f4 f97e 	bl	d0050120 <_isatty>
d005be24:	1c43      	adds	r3, r0, #1
d005be26:	d102      	bne.n	d005be2e <_isatty_r+0x1a>
d005be28:	682b      	ldr	r3, [r5, #0]
d005be2a:	b103      	cbz	r3, d005be2e <_isatty_r+0x1a>
d005be2c:	6023      	str	r3, [r4, #0]
d005be2e:	bd38      	pop	{r3, r4, r5, pc}
d005be30:	d0101ecc 	.word	0xd0101ecc
	...

d005be40 <memchr>:
d005be40:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005be44:	2a10      	cmp	r2, #16
d005be46:	db2b      	blt.n	d005bea0 <memchr+0x60>
d005be48:	f010 0f07 	tst.w	r0, #7
d005be4c:	d008      	beq.n	d005be60 <memchr+0x20>
d005be4e:	f810 3b01 	ldrb.w	r3, [r0], #1
d005be52:	3a01      	subs	r2, #1
d005be54:	428b      	cmp	r3, r1
d005be56:	d02d      	beq.n	d005beb4 <memchr+0x74>
d005be58:	f010 0f07 	tst.w	r0, #7
d005be5c:	b342      	cbz	r2, d005beb0 <memchr+0x70>
d005be5e:	d1f6      	bne.n	d005be4e <memchr+0xe>
d005be60:	b4f0      	push	{r4, r5, r6, r7}
d005be62:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d005be66:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d005be6a:	f022 0407 	bic.w	r4, r2, #7
d005be6e:	f07f 0700 	mvns.w	r7, #0
d005be72:	2300      	movs	r3, #0
d005be74:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d005be78:	3c08      	subs	r4, #8
d005be7a:	ea85 0501 	eor.w	r5, r5, r1
d005be7e:	ea86 0601 	eor.w	r6, r6, r1
d005be82:	fa85 f547 	uadd8	r5, r5, r7
d005be86:	faa3 f587 	sel	r5, r3, r7
d005be8a:	fa86 f647 	uadd8	r6, r6, r7
d005be8e:	faa5 f687 	sel	r6, r5, r7
d005be92:	b98e      	cbnz	r6, d005beb8 <memchr+0x78>
d005be94:	d1ee      	bne.n	d005be74 <memchr+0x34>
d005be96:	bcf0      	pop	{r4, r5, r6, r7}
d005be98:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005be9c:	f002 0207 	and.w	r2, r2, #7
d005bea0:	b132      	cbz	r2, d005beb0 <memchr+0x70>
d005bea2:	f810 3b01 	ldrb.w	r3, [r0], #1
d005bea6:	3a01      	subs	r2, #1
d005bea8:	ea83 0301 	eor.w	r3, r3, r1
d005beac:	b113      	cbz	r3, d005beb4 <memchr+0x74>
d005beae:	d1f8      	bne.n	d005bea2 <memchr+0x62>
d005beb0:	2000      	movs	r0, #0
d005beb2:	4770      	bx	lr
d005beb4:	3801      	subs	r0, #1
d005beb6:	4770      	bx	lr
d005beb8:	2d00      	cmp	r5, #0
d005beba:	bf06      	itte	eq
d005bebc:	4635      	moveq	r5, r6
d005bebe:	3803      	subeq	r0, #3
d005bec0:	3807      	subne	r0, #7
d005bec2:	f015 0f01 	tst.w	r5, #1
d005bec6:	d107      	bne.n	d005bed8 <memchr+0x98>
d005bec8:	3001      	adds	r0, #1
d005beca:	f415 7f80 	tst.w	r5, #256	; 0x100
d005bece:	bf02      	ittt	eq
d005bed0:	3001      	addeq	r0, #1
d005bed2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d005bed6:	3001      	addeq	r0, #1
d005bed8:	bcf0      	pop	{r4, r5, r6, r7}
d005beda:	3801      	subs	r0, #1
d005bedc:	4770      	bx	lr
d005bede:	bf00      	nop

d005bee0 <memmove>:
d005bee0:	4288      	cmp	r0, r1
d005bee2:	b510      	push	{r4, lr}
d005bee4:	eb01 0402 	add.w	r4, r1, r2
d005bee8:	d902      	bls.n	d005bef0 <memmove+0x10>
d005beea:	4284      	cmp	r4, r0
d005beec:	4623      	mov	r3, r4
d005beee:	d807      	bhi.n	d005bf00 <memmove+0x20>
d005bef0:	1e43      	subs	r3, r0, #1
d005bef2:	42a1      	cmp	r1, r4
d005bef4:	d008      	beq.n	d005bf08 <memmove+0x28>
d005bef6:	f811 2b01 	ldrb.w	r2, [r1], #1
d005befa:	f803 2f01 	strb.w	r2, [r3, #1]!
d005befe:	e7f8      	b.n	d005bef2 <memmove+0x12>
d005bf00:	4402      	add	r2, r0
d005bf02:	4601      	mov	r1, r0
d005bf04:	428a      	cmp	r2, r1
d005bf06:	d100      	bne.n	d005bf0a <memmove+0x2a>
d005bf08:	bd10      	pop	{r4, pc}
d005bf0a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d005bf0e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d005bf12:	e7f7      	b.n	d005bf04 <memmove+0x24>

d005bf14 <_malloc_usable_size_r>:
d005bf14:	f851 3c04 	ldr.w	r3, [r1, #-4]
d005bf18:	1f18      	subs	r0, r3, #4
d005bf1a:	2b00      	cmp	r3, #0
d005bf1c:	bfbc      	itt	lt
d005bf1e:	580b      	ldrlt	r3, [r1, r0]
d005bf20:	18c0      	addlt	r0, r0, r3
d005bf22:	4770      	bx	lr

d005bf24 <_raise_r>:
d005bf24:	291f      	cmp	r1, #31
d005bf26:	b538      	push	{r3, r4, r5, lr}
d005bf28:	4604      	mov	r4, r0
d005bf2a:	460d      	mov	r5, r1
d005bf2c:	d904      	bls.n	d005bf38 <_raise_r+0x14>
d005bf2e:	2316      	movs	r3, #22
d005bf30:	6003      	str	r3, [r0, #0]
d005bf32:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005bf36:	bd38      	pop	{r3, r4, r5, pc}
d005bf38:	6c42      	ldr	r2, [r0, #68]	; 0x44
d005bf3a:	b112      	cbz	r2, d005bf42 <_raise_r+0x1e>
d005bf3c:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d005bf40:	b94b      	cbnz	r3, d005bf56 <_raise_r+0x32>
d005bf42:	4620      	mov	r0, r4
d005bf44:	f000 f830 	bl	d005bfa8 <_getpid_r>
d005bf48:	462a      	mov	r2, r5
d005bf4a:	4601      	mov	r1, r0
d005bf4c:	4620      	mov	r0, r4
d005bf4e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d005bf52:	f000 b817 	b.w	d005bf84 <_kill_r>
d005bf56:	2b01      	cmp	r3, #1
d005bf58:	d00a      	beq.n	d005bf70 <_raise_r+0x4c>
d005bf5a:	1c59      	adds	r1, r3, #1
d005bf5c:	d103      	bne.n	d005bf66 <_raise_r+0x42>
d005bf5e:	2316      	movs	r3, #22
d005bf60:	6003      	str	r3, [r0, #0]
d005bf62:	2001      	movs	r0, #1
d005bf64:	e7e7      	b.n	d005bf36 <_raise_r+0x12>
d005bf66:	2400      	movs	r4, #0
d005bf68:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d005bf6c:	4628      	mov	r0, r5
d005bf6e:	4798      	blx	r3
d005bf70:	2000      	movs	r0, #0
d005bf72:	e7e0      	b.n	d005bf36 <_raise_r+0x12>

d005bf74 <raise>:
d005bf74:	4b02      	ldr	r3, [pc, #8]	; (d005bf80 <raise+0xc>)
d005bf76:	4601      	mov	r1, r0
d005bf78:	6818      	ldr	r0, [r3, #0]
d005bf7a:	f7ff bfd3 	b.w	d005bf24 <_raise_r>
d005bf7e:	bf00      	nop
d005bf80:	d005f8ec 	.word	0xd005f8ec

d005bf84 <_kill_r>:
d005bf84:	b538      	push	{r3, r4, r5, lr}
d005bf86:	4d07      	ldr	r5, [pc, #28]	; (d005bfa4 <_kill_r+0x20>)
d005bf88:	2300      	movs	r3, #0
d005bf8a:	4604      	mov	r4, r0
d005bf8c:	4608      	mov	r0, r1
d005bf8e:	4611      	mov	r1, r2
d005bf90:	602b      	str	r3, [r5, #0]
d005bf92:	f7f4 f8cb 	bl	d005012c <_kill>
d005bf96:	1c43      	adds	r3, r0, #1
d005bf98:	d102      	bne.n	d005bfa0 <_kill_r+0x1c>
d005bf9a:	682b      	ldr	r3, [r5, #0]
d005bf9c:	b103      	cbz	r3, d005bfa0 <_kill_r+0x1c>
d005bf9e:	6023      	str	r3, [r4, #0]
d005bfa0:	bd38      	pop	{r3, r4, r5, pc}
d005bfa2:	bf00      	nop
d005bfa4:	d0101ecc 	.word	0xd0101ecc

d005bfa8 <_getpid_r>:
d005bfa8:	f7f4 b8be 	b.w	d0050128 <_getpid>

d005bfac <sinf_poly>:
d005bfac:	07cb      	lsls	r3, r1, #31
d005bfae:	d412      	bmi.n	d005bfd6 <sinf_poly+0x2a>
d005bfb0:	ee21 6b00 	vmul.f64	d6, d1, d0
d005bfb4:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d005bfb8:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005bfbc:	eea5 7b01 	vfma.f64	d7, d5, d1
d005bfc0:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d005bfc4:	ee21 1b06 	vmul.f64	d1, d1, d6
d005bfc8:	eea5 0b06 	vfma.f64	d0, d5, d6
d005bfcc:	eea7 0b01 	vfma.f64	d0, d7, d1
d005bfd0:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005bfd4:	4770      	bx	lr
d005bfd6:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005bfda:	ee21 6b01 	vmul.f64	d6, d1, d1
d005bfde:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d005bfe2:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d005bfe6:	eea1 7b05 	vfma.f64	d7, d1, d5
d005bfea:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005bfee:	eea1 0b05 	vfma.f64	d0, d1, d5
d005bff2:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d005bff6:	ee21 1b06 	vmul.f64	d1, d1, d6
d005bffa:	eea6 0b05 	vfma.f64	d0, d6, d5
d005bffe:	e7e5      	b.n	d005bfcc <sinf_poly+0x20>

d005c000 <cosf>:
d005c000:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005c002:	ee10 4a10 	vmov	r4, s0
d005c006:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005c00a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005c00e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005c012:	d20c      	bcs.n	d005c02e <cosf+0x2e>
d005c014:	ee26 1b06 	vmul.f64	d1, d6, d6
d005c018:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005c01c:	d378      	bcc.n	d005c110 <cosf+0x110>
d005c01e:	eeb0 0b46 	vmov.f64	d0, d6
d005c022:	483f      	ldr	r0, [pc, #252]	; (d005c120 <cosf+0x120>)
d005c024:	2101      	movs	r1, #1
d005c026:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005c02a:	f7ff bfbf 	b.w	d005bfac <sinf_poly>
d005c02e:	f240 422e 	movw	r2, #1070	; 0x42e
d005c032:	4293      	cmp	r3, r2
d005c034:	d826      	bhi.n	d005c084 <cosf+0x84>
d005c036:	4b3a      	ldr	r3, [pc, #232]	; (d005c120 <cosf+0x120>)
d005c038:	ed93 7b08 	vldr	d7, [r3, #32]
d005c03c:	ee26 7b07 	vmul.f64	d7, d6, d7
d005c040:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005c044:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005c048:	ee17 1a90 	vmov	r1, s15
d005c04c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d005c050:	1609      	asrs	r1, r1, #24
d005c052:	ee07 1a90 	vmov	s15, r1
d005c056:	f001 0203 	and.w	r2, r1, #3
d005c05a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005c05e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d005c062:	ed92 0b00 	vldr	d0, [r2]
d005c066:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d005c06a:	f011 0f02 	tst.w	r1, #2
d005c06e:	eea5 6b47 	vfms.f64	d6, d5, d7
d005c072:	f081 0101 	eor.w	r1, r1, #1
d005c076:	bf08      	it	eq
d005c078:	4618      	moveq	r0, r3
d005c07a:	ee26 1b06 	vmul.f64	d1, d6, d6
d005c07e:	ee20 0b06 	vmul.f64	d0, d0, d6
d005c082:	e7d0      	b.n	d005c026 <cosf+0x26>
d005c084:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005c088:	d23e      	bcs.n	d005c108 <cosf+0x108>
d005c08a:	4b26      	ldr	r3, [pc, #152]	; (d005c124 <cosf+0x124>)
d005c08c:	f3c4 6283 	ubfx	r2, r4, #26, #4
d005c090:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d005c094:	f3c4 0116 	ubfx	r1, r4, #0, #23
d005c098:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005c09c:	6a06      	ldr	r6, [r0, #32]
d005c09e:	6900      	ldr	r0, [r0, #16]
d005c0a0:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d005c0a4:	40a9      	lsls	r1, r5
d005c0a6:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005c0aa:	fba1 6706 	umull	r6, r7, r1, r6
d005c0ae:	fb05 f301 	mul.w	r3, r5, r1
d005c0b2:	463a      	mov	r2, r7
d005c0b4:	fbe0 2301 	umlal	r2, r3, r0, r1
d005c0b8:	1c11      	adds	r1, r2, #0
d005c0ba:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005c0be:	2000      	movs	r0, #0
d005c0c0:	1a10      	subs	r0, r2, r0
d005c0c2:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005c0c6:	eb63 0101 	sbc.w	r1, r3, r1
d005c0ca:	f000 fd27 	bl	d005cb1c <__aeabi_l2d>
d005c0ce:	0fb5      	lsrs	r5, r6, #30
d005c0d0:	4b13      	ldr	r3, [pc, #76]	; (d005c120 <cosf+0x120>)
d005c0d2:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d005c0d6:	ed9f 0b10 	vldr	d0, [pc, #64]	; d005c118 <cosf+0x118>
d005c0da:	ec41 0b17 	vmov	d7, r0, r1
d005c0de:	f004 0203 	and.w	r2, r4, #3
d005c0e2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005c0e6:	ee27 0b00 	vmul.f64	d0, d7, d0
d005c0ea:	ed92 7b00 	vldr	d7, [r2]
d005c0ee:	ee20 1b00 	vmul.f64	d1, d0, d0
d005c0f2:	f014 0f02 	tst.w	r4, #2
d005c0f6:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005c0fa:	f085 0101 	eor.w	r1, r5, #1
d005c0fe:	bf08      	it	eq
d005c100:	4618      	moveq	r0, r3
d005c102:	ee27 0b00 	vmul.f64	d0, d7, d0
d005c106:	e78e      	b.n	d005c026 <cosf+0x26>
d005c108:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005c10c:	f000 b844 	b.w	d005c198 <__math_invalidf>
d005c110:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005c114:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005c116:	bf00      	nop
d005c118:	54442d18 	.word	0x54442d18
d005c11c:	3c1921fb 	.word	0x3c1921fb
d005c120:	d005d380 	.word	0xd005d380
d005c124:	d005d320 	.word	0xd005d320

d005c128 <with_errnof>:
d005c128:	b513      	push	{r0, r1, r4, lr}
d005c12a:	4604      	mov	r4, r0
d005c12c:	ed8d 0a01 	vstr	s0, [sp, #4]
d005c130:	f7fe fbcc 	bl	d005a8cc <__errno>
d005c134:	ed9d 0a01 	vldr	s0, [sp, #4]
d005c138:	6004      	str	r4, [r0, #0]
d005c13a:	b002      	add	sp, #8
d005c13c:	bd10      	pop	{r4, pc}

d005c13e <xflowf>:
d005c13e:	b130      	cbz	r0, d005c14e <xflowf+0x10>
d005c140:	eef1 7a40 	vneg.f32	s15, s0
d005c144:	ee27 0a80 	vmul.f32	s0, s15, s0
d005c148:	2022      	movs	r0, #34	; 0x22
d005c14a:	f7ff bfed 	b.w	d005c128 <with_errnof>
d005c14e:	eef0 7a40 	vmov.f32	s15, s0
d005c152:	e7f7      	b.n	d005c144 <xflowf+0x6>

d005c154 <__math_uflowf>:
d005c154:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005c15c <__math_uflowf+0x8>
d005c158:	f7ff bff1 	b.w	d005c13e <xflowf>
d005c15c:	10000000 	.word	0x10000000

d005c160 <__math_may_uflowf>:
d005c160:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005c168 <__math_may_uflowf+0x8>
d005c164:	f7ff bfeb 	b.w	d005c13e <xflowf>
d005c168:	1a200000 	.word	0x1a200000

d005c16c <__math_oflowf>:
d005c16c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005c174 <__math_oflowf+0x8>
d005c170:	f7ff bfe5 	b.w	d005c13e <xflowf>
d005c174:	70000000 	.word	0x70000000

d005c178 <__math_divzerof>:
d005c178:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005c17c:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d005c180:	2800      	cmp	r0, #0
d005c182:	fe40 7a27 	vseleq.f32	s15, s0, s15
d005c186:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005c194 <__math_divzerof+0x1c>
d005c18a:	2022      	movs	r0, #34	; 0x22
d005c18c:	ee87 0a80 	vdiv.f32	s0, s15, s0
d005c190:	f7ff bfca 	b.w	d005c128 <with_errnof>
d005c194:	00000000 	.word	0x00000000

d005c198 <__math_invalidf>:
d005c198:	eef0 7a40 	vmov.f32	s15, s0
d005c19c:	ee30 7a40 	vsub.f32	s14, s0, s0
d005c1a0:	eef4 7a67 	vcmp.f32	s15, s15
d005c1a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005c1a8:	ee87 0a07 	vdiv.f32	s0, s14, s14
d005c1ac:	d602      	bvs.n	d005c1b4 <__math_invalidf+0x1c>
d005c1ae:	2021      	movs	r0, #33	; 0x21
d005c1b0:	f7ff bfba 	b.w	d005c128 <with_errnof>
d005c1b4:	4770      	bx	lr
	...

d005c1b8 <expf>:
d005c1b8:	ee10 2a10 	vmov	r2, s0
d005c1bc:	b470      	push	{r4, r5, r6}
d005c1be:	f3c2 530a 	ubfx	r3, r2, #20, #11
d005c1c2:	f240 442a 	movw	r4, #1066	; 0x42a
d005c1c6:	42a3      	cmp	r3, r4
d005c1c8:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005c1cc:	d92a      	bls.n	d005c224 <expf+0x6c>
d005c1ce:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d005c1d2:	d059      	beq.n	d005c288 <expf+0xd0>
d005c1d4:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005c1d8:	d303      	bcc.n	d005c1e2 <expf+0x2a>
d005c1da:	ee30 0a00 	vadd.f32	s0, s0, s0
d005c1de:	bc70      	pop	{r4, r5, r6}
d005c1e0:	4770      	bx	lr
d005c1e2:	eddf 7a2b 	vldr	s15, [pc, #172]	; d005c290 <expf+0xd8>
d005c1e6:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005c1ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005c1ee:	dd03      	ble.n	d005c1f8 <expf+0x40>
d005c1f0:	bc70      	pop	{r4, r5, r6}
d005c1f2:	2000      	movs	r0, #0
d005c1f4:	f7ff bfba 	b.w	d005c16c <__math_oflowf>
d005c1f8:	eddf 7a26 	vldr	s15, [pc, #152]	; d005c294 <expf+0xdc>
d005c1fc:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005c200:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005c204:	d503      	bpl.n	d005c20e <expf+0x56>
d005c206:	bc70      	pop	{r4, r5, r6}
d005c208:	2000      	movs	r0, #0
d005c20a:	f7ff bfa3 	b.w	d005c154 <__math_uflowf>
d005c20e:	eddf 7a22 	vldr	s15, [pc, #136]	; d005c298 <expf+0xe0>
d005c212:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005c216:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005c21a:	d503      	bpl.n	d005c224 <expf+0x6c>
d005c21c:	bc70      	pop	{r4, r5, r6}
d005c21e:	2000      	movs	r0, #0
d005c220:	f7ff bf9e 	b.w	d005c160 <__math_may_uflowf>
d005c224:	4b1d      	ldr	r3, [pc, #116]	; (d005c29c <expf+0xe4>)
d005c226:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d005c22a:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d005c22e:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d005c232:	eeb0 7b44 	vmov.f64	d7, d4
d005c236:	eea5 7b06 	vfma.f64	d7, d5, d6
d005c23a:	ee17 5a10 	vmov	r5, s14
d005c23e:	ee37 7b44 	vsub.f64	d7, d7, d4
d005c242:	f005 021f 	and.w	r2, r5, #31
d005c246:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005c24a:	e9d2 4600 	ldrd	r4, r6, [r2]
d005c24e:	ee95 7b06 	vfnms.f64	d7, d5, d6
d005c252:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d005c256:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d005c25a:	eea4 0b07 	vfma.f64	d0, d4, d7
d005c25e:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d005c262:	2300      	movs	r3, #0
d005c264:	1918      	adds	r0, r3, r4
d005c266:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d005c26a:	eb42 0106 	adc.w	r1, r2, r6
d005c26e:	eea5 6b07 	vfma.f64	d6, d5, d7
d005c272:	ee27 5b07 	vmul.f64	d5, d7, d7
d005c276:	ec41 0b17 	vmov	d7, r0, r1
d005c27a:	eea6 0b05 	vfma.f64	d0, d6, d5
d005c27e:	ee20 0b07 	vmul.f64	d0, d0, d7
d005c282:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005c286:	e7aa      	b.n	d005c1de <expf+0x26>
d005c288:	ed9f 0a05 	vldr	s0, [pc, #20]	; d005c2a0 <expf+0xe8>
d005c28c:	e7a7      	b.n	d005c1de <expf+0x26>
d005c28e:	bf00      	nop
d005c290:	42b17217 	.word	0x42b17217
d005c294:	c2cff1b4 	.word	0xc2cff1b4
d005c298:	c2ce8ecf 	.word	0xc2ce8ecf
d005c29c:	d005d0b8 	.word	0xd005d0b8
d005c2a0:	00000000 	.word	0x00000000

d005c2a4 <logf>:
d005c2a4:	ee10 3a10 	vmov	r3, s0
d005c2a8:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d005c2ac:	b410      	push	{r4}
d005c2ae:	d055      	beq.n	d005c35c <logf+0xb8>
d005c2b0:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d005c2b4:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d005c2b8:	d31a      	bcc.n	d005c2f0 <logf+0x4c>
d005c2ba:	005a      	lsls	r2, r3, #1
d005c2bc:	d104      	bne.n	d005c2c8 <logf+0x24>
d005c2be:	f85d 4b04 	ldr.w	r4, [sp], #4
d005c2c2:	2001      	movs	r0, #1
d005c2c4:	f7ff bf58 	b.w	d005c178 <__math_divzerof>
d005c2c8:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005c2cc:	d043      	beq.n	d005c356 <logf+0xb2>
d005c2ce:	2b00      	cmp	r3, #0
d005c2d0:	db02      	blt.n	d005c2d8 <logf+0x34>
d005c2d2:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d005c2d6:	d303      	bcc.n	d005c2e0 <logf+0x3c>
d005c2d8:	f85d 4b04 	ldr.w	r4, [sp], #4
d005c2dc:	f7ff bf5c 	b.w	d005c198 <__math_invalidf>
d005c2e0:	eddf 7a20 	vldr	s15, [pc, #128]	; d005c364 <logf+0xc0>
d005c2e4:	ee20 0a27 	vmul.f32	s0, s0, s15
d005c2e8:	ee10 3a10 	vmov	r3, s0
d005c2ec:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d005c2f0:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d005c2f4:	491c      	ldr	r1, [pc, #112]	; (d005c368 <logf+0xc4>)
d005c2f6:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d005c2fa:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d005c2fe:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d005c302:	0dd4      	lsrs	r4, r2, #23
d005c304:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d005c308:	05e4      	lsls	r4, r4, #23
d005c30a:	ed90 6b00 	vldr	d6, [r0]
d005c30e:	1b1b      	subs	r3, r3, r4
d005c310:	ee07 3a90 	vmov	s15, r3
d005c314:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d005c318:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d005c31c:	15d2      	asrs	r2, r2, #23
d005c31e:	eea6 0b07 	vfma.f64	d0, d6, d7
d005c322:	ed90 6b02 	vldr	d6, [r0, #8]
d005c326:	ee07 2a90 	vmov	s15, r2
d005c32a:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d005c32e:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d005c332:	eea7 6b05 	vfma.f64	d6, d7, d5
d005c336:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d005c33a:	ee20 5b00 	vmul.f64	d5, d0, d0
d005c33e:	eea4 7b00 	vfma.f64	d7, d4, d0
d005c342:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d005c346:	ee30 0b06 	vadd.f64	d0, d0, d6
d005c34a:	eea4 7b05 	vfma.f64	d7, d4, d5
d005c34e:	eea5 0b07 	vfma.f64	d0, d5, d7
d005c352:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005c356:	f85d 4b04 	ldr.w	r4, [sp], #4
d005c35a:	4770      	bx	lr
d005c35c:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005c36c <logf+0xc8>
d005c360:	e7f9      	b.n	d005c356 <logf+0xb2>
d005c362:	bf00      	nop
d005c364:	4b000000 	.word	0x4b000000
d005c368:	d005d200 	.word	0xd005d200
d005c36c:	00000000 	.word	0x00000000

d005c370 <sinf_poly>:
d005c370:	07cb      	lsls	r3, r1, #31
d005c372:	d412      	bmi.n	d005c39a <sinf_poly+0x2a>
d005c374:	ee21 6b00 	vmul.f64	d6, d1, d0
d005c378:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d005c37c:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005c380:	eea5 7b01 	vfma.f64	d7, d5, d1
d005c384:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d005c388:	ee21 1b06 	vmul.f64	d1, d1, d6
d005c38c:	eea5 0b06 	vfma.f64	d0, d5, d6
d005c390:	eea7 0b01 	vfma.f64	d0, d7, d1
d005c394:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005c398:	4770      	bx	lr
d005c39a:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005c39e:	ee21 6b01 	vmul.f64	d6, d1, d1
d005c3a2:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d005c3a6:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d005c3aa:	eea1 7b05 	vfma.f64	d7, d1, d5
d005c3ae:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005c3b2:	eea1 0b05 	vfma.f64	d0, d1, d5
d005c3b6:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d005c3ba:	ee21 1b06 	vmul.f64	d1, d1, d6
d005c3be:	eea6 0b05 	vfma.f64	d0, d6, d5
d005c3c2:	e7e5      	b.n	d005c390 <sinf_poly+0x20>
d005c3c4:	0000      	movs	r0, r0
	...

d005c3c8 <sinf>:
d005c3c8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d005c3ca:	ee10 4a10 	vmov	r4, s0
d005c3ce:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005c3d2:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005c3d6:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005c3da:	eef0 7a40 	vmov.f32	s15, s0
d005c3de:	ea4f 5214 	mov.w	r2, r4, lsr #20
d005c3e2:	d218      	bcs.n	d005c416 <sinf+0x4e>
d005c3e4:	ee26 1b06 	vmul.f64	d1, d6, d6
d005c3e8:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005c3ec:	d20a      	bcs.n	d005c404 <sinf+0x3c>
d005c3ee:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d005c3f2:	d103      	bne.n	d005c3fc <sinf+0x34>
d005c3f4:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d005c3f8:	ed8d 1a01 	vstr	s2, [sp, #4]
d005c3fc:	eeb0 0a67 	vmov.f32	s0, s15
d005c400:	b003      	add	sp, #12
d005c402:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005c404:	483e      	ldr	r0, [pc, #248]	; (d005c500 <sinf+0x138>)
d005c406:	eeb0 0b46 	vmov.f64	d0, d6
d005c40a:	2100      	movs	r1, #0
d005c40c:	b003      	add	sp, #12
d005c40e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d005c412:	f7ff bfad 	b.w	d005c370 <sinf_poly>
d005c416:	f240 422e 	movw	r2, #1070	; 0x42e
d005c41a:	4293      	cmp	r3, r2
d005c41c:	d824      	bhi.n	d005c468 <sinf+0xa0>
d005c41e:	4b38      	ldr	r3, [pc, #224]	; (d005c500 <sinf+0x138>)
d005c420:	ed93 7b08 	vldr	d7, [r3, #32]
d005c424:	ee26 7b07 	vmul.f64	d7, d6, d7
d005c428:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005c42c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005c430:	ee17 1a90 	vmov	r1, s15
d005c434:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d005c438:	1609      	asrs	r1, r1, #24
d005c43a:	ee07 1a90 	vmov	s15, r1
d005c43e:	f001 0203 	and.w	r2, r1, #3
d005c442:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005c446:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d005c44a:	ed92 0b00 	vldr	d0, [r2]
d005c44e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d005c452:	f011 0f02 	tst.w	r1, #2
d005c456:	eea5 6b47 	vfms.f64	d6, d5, d7
d005c45a:	bf08      	it	eq
d005c45c:	4618      	moveq	r0, r3
d005c45e:	ee26 1b06 	vmul.f64	d1, d6, d6
d005c462:	ee20 0b06 	vmul.f64	d0, d0, d6
d005c466:	e7d1      	b.n	d005c40c <sinf+0x44>
d005c468:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005c46c:	d23d      	bcs.n	d005c4ea <sinf+0x122>
d005c46e:	4b25      	ldr	r3, [pc, #148]	; (d005c504 <sinf+0x13c>)
d005c470:	f3c4 6283 	ubfx	r2, r4, #26, #4
d005c474:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d005c478:	f3c4 0116 	ubfx	r1, r4, #0, #23
d005c47c:	6a06      	ldr	r6, [r0, #32]
d005c47e:	6900      	ldr	r0, [r0, #16]
d005c480:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005c484:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d005c488:	40a9      	lsls	r1, r5
d005c48a:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005c48e:	fba1 6706 	umull	r6, r7, r1, r6
d005c492:	fb05 f301 	mul.w	r3, r5, r1
d005c496:	463a      	mov	r2, r7
d005c498:	fbe0 2301 	umlal	r2, r3, r0, r1
d005c49c:	1c11      	adds	r1, r2, #0
d005c49e:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005c4a2:	2000      	movs	r0, #0
d005c4a4:	1a10      	subs	r0, r2, r0
d005c4a6:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005c4aa:	eb63 0101 	sbc.w	r1, r3, r1
d005c4ae:	f000 fb35 	bl	d005cb1c <__aeabi_l2d>
d005c4b2:	0fb5      	lsrs	r5, r6, #30
d005c4b4:	4a12      	ldr	r2, [pc, #72]	; (d005c500 <sinf+0x138>)
d005c4b6:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d005c4ba:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d005c4f8 <sinf+0x130>
d005c4be:	ec41 0b17 	vmov	d7, r0, r1
d005c4c2:	f003 0103 	and.w	r1, r3, #3
d005c4c6:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d005c4ca:	ee27 0b00 	vmul.f64	d0, d7, d0
d005c4ce:	ed91 7b00 	vldr	d7, [r1]
d005c4d2:	ee20 1b00 	vmul.f64	d1, d0, d0
d005c4d6:	f013 0f02 	tst.w	r3, #2
d005c4da:	f102 0070 	add.w	r0, r2, #112	; 0x70
d005c4de:	4629      	mov	r1, r5
d005c4e0:	bf08      	it	eq
d005c4e2:	4610      	moveq	r0, r2
d005c4e4:	ee27 0b00 	vmul.f64	d0, d7, d0
d005c4e8:	e790      	b.n	d005c40c <sinf+0x44>
d005c4ea:	b003      	add	sp, #12
d005c4ec:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d005c4f0:	f7ff be52 	b.w	d005c198 <__math_invalidf>
d005c4f4:	f3af 8000 	nop.w
d005c4f8:	54442d18 	.word	0x54442d18
d005c4fc:	3c1921fb 	.word	0x3c1921fb
d005c500:	d005d380 	.word	0xd005d380
d005c504:	d005d320 	.word	0xd005d320

d005c508 <atan2f>:
d005c508:	f000 b800 	b.w	d005c50c <__ieee754_atan2f>

d005c50c <__ieee754_atan2f>:
d005c50c:	ee10 2a90 	vmov	r2, s1
d005c510:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d005c514:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d005c518:	b510      	push	{r4, lr}
d005c51a:	eef0 7a40 	vmov.f32	s15, s0
d005c51e:	dc06      	bgt.n	d005c52e <__ieee754_atan2f+0x22>
d005c520:	ee10 0a10 	vmov	r0, s0
d005c524:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d005c528:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005c52c:	dd04      	ble.n	d005c538 <__ieee754_atan2f+0x2c>
d005c52e:	ee77 7aa0 	vadd.f32	s15, s15, s1
d005c532:	eeb0 0a67 	vmov.f32	s0, s15
d005c536:	bd10      	pop	{r4, pc}
d005c538:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d005c53c:	d103      	bne.n	d005c546 <__ieee754_atan2f+0x3a>
d005c53e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005c542:	f000 b881 	b.w	d005c648 <atanf>
d005c546:	1794      	asrs	r4, r2, #30
d005c548:	f004 0402 	and.w	r4, r4, #2
d005c54c:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d005c550:	b93b      	cbnz	r3, d005c562 <__ieee754_atan2f+0x56>
d005c552:	2c02      	cmp	r4, #2
d005c554:	d05c      	beq.n	d005c610 <__ieee754_atan2f+0x104>
d005c556:	ed9f 7a33 	vldr	s14, [pc, #204]	; d005c624 <__ieee754_atan2f+0x118>
d005c55a:	2c03      	cmp	r4, #3
d005c55c:	fe47 7a00 	vseleq.f32	s15, s14, s0
d005c560:	e7e7      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c562:	b939      	cbnz	r1, d005c574 <__ieee754_atan2f+0x68>
d005c564:	eddf 7a30 	vldr	s15, [pc, #192]	; d005c628 <__ieee754_atan2f+0x11c>
d005c568:	ed9f 0a30 	vldr	s0, [pc, #192]	; d005c62c <__ieee754_atan2f+0x120>
d005c56c:	2800      	cmp	r0, #0
d005c56e:	fe67 7a80 	vselge.f32	s15, s15, s0
d005c572:	e7de      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c574:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d005c578:	d110      	bne.n	d005c59c <__ieee754_atan2f+0x90>
d005c57a:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005c57e:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d005c582:	d107      	bne.n	d005c594 <__ieee754_atan2f+0x88>
d005c584:	2c02      	cmp	r4, #2
d005c586:	d846      	bhi.n	d005c616 <__ieee754_atan2f+0x10a>
d005c588:	4b29      	ldr	r3, [pc, #164]	; (d005c630 <__ieee754_atan2f+0x124>)
d005c58a:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d005c58e:	edd4 7a00 	vldr	s15, [r4]
d005c592:	e7ce      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c594:	2c02      	cmp	r4, #2
d005c596:	d841      	bhi.n	d005c61c <__ieee754_atan2f+0x110>
d005c598:	4b26      	ldr	r3, [pc, #152]	; (d005c634 <__ieee754_atan2f+0x128>)
d005c59a:	e7f6      	b.n	d005c58a <__ieee754_atan2f+0x7e>
d005c59c:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005c5a0:	d0e0      	beq.n	d005c564 <__ieee754_atan2f+0x58>
d005c5a2:	1a5b      	subs	r3, r3, r1
d005c5a4:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d005c5a8:	ea4f 51e3 	mov.w	r1, r3, asr #23
d005c5ac:	da1a      	bge.n	d005c5e4 <__ieee754_atan2f+0xd8>
d005c5ae:	2a00      	cmp	r2, #0
d005c5b0:	da01      	bge.n	d005c5b6 <__ieee754_atan2f+0xaa>
d005c5b2:	313c      	adds	r1, #60	; 0x3c
d005c5b4:	db19      	blt.n	d005c5ea <__ieee754_atan2f+0xde>
d005c5b6:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d005c5ba:	f000 f919 	bl	d005c7f0 <fabsf>
d005c5be:	f000 f843 	bl	d005c648 <atanf>
d005c5c2:	eef0 7a40 	vmov.f32	s15, s0
d005c5c6:	2c01      	cmp	r4, #1
d005c5c8:	d012      	beq.n	d005c5f0 <__ieee754_atan2f+0xe4>
d005c5ca:	2c02      	cmp	r4, #2
d005c5cc:	d017      	beq.n	d005c5fe <__ieee754_atan2f+0xf2>
d005c5ce:	2c00      	cmp	r4, #0
d005c5d0:	d0af      	beq.n	d005c532 <__ieee754_atan2f+0x26>
d005c5d2:	ed9f 0a19 	vldr	s0, [pc, #100]	; d005c638 <__ieee754_atan2f+0x12c>
d005c5d6:	ee77 7a80 	vadd.f32	s15, s15, s0
d005c5da:	ed9f 0a18 	vldr	s0, [pc, #96]	; d005c63c <__ieee754_atan2f+0x130>
d005c5de:	ee77 7ac0 	vsub.f32	s15, s15, s0
d005c5e2:	e7a6      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c5e4:	eddf 7a10 	vldr	s15, [pc, #64]	; d005c628 <__ieee754_atan2f+0x11c>
d005c5e8:	e7ed      	b.n	d005c5c6 <__ieee754_atan2f+0xba>
d005c5ea:	eddf 7a15 	vldr	s15, [pc, #84]	; d005c640 <__ieee754_atan2f+0x134>
d005c5ee:	e7ea      	b.n	d005c5c6 <__ieee754_atan2f+0xba>
d005c5f0:	ee17 3a90 	vmov	r3, s15
d005c5f4:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d005c5f8:	ee07 3a90 	vmov	s15, r3
d005c5fc:	e799      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c5fe:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d005c638 <__ieee754_atan2f+0x12c>
d005c602:	ee77 7a80 	vadd.f32	s15, s15, s0
d005c606:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d005c63c <__ieee754_atan2f+0x130>
d005c60a:	ee70 7a67 	vsub.f32	s15, s0, s15
d005c60e:	e790      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c610:	eddf 7a0a 	vldr	s15, [pc, #40]	; d005c63c <__ieee754_atan2f+0x130>
d005c614:	e78d      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c616:	eddf 7a0b 	vldr	s15, [pc, #44]	; d005c644 <__ieee754_atan2f+0x138>
d005c61a:	e78a      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c61c:	eddf 7a08 	vldr	s15, [pc, #32]	; d005c640 <__ieee754_atan2f+0x134>
d005c620:	e787      	b.n	d005c532 <__ieee754_atan2f+0x26>
d005c622:	bf00      	nop
d005c624:	c0490fdb 	.word	0xc0490fdb
d005c628:	3fc90fdb 	.word	0x3fc90fdb
d005c62c:	bfc90fdb 	.word	0xbfc90fdb
d005c630:	d005d460 	.word	0xd005d460
d005c634:	d005d46c 	.word	0xd005d46c
d005c638:	33bbbd2e 	.word	0x33bbbd2e
d005c63c:	40490fdb 	.word	0x40490fdb
d005c640:	00000000 	.word	0x00000000
d005c644:	3f490fdb 	.word	0x3f490fdb

d005c648 <atanf>:
d005c648:	b538      	push	{r3, r4, r5, lr}
d005c64a:	ee10 5a10 	vmov	r5, s0
d005c64e:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d005c652:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d005c656:	eef0 7a40 	vmov.f32	s15, s0
d005c65a:	db0f      	blt.n	d005c67c <atanf+0x34>
d005c65c:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d005c660:	dd04      	ble.n	d005c66c <atanf+0x24>
d005c662:	ee70 7a00 	vadd.f32	s15, s0, s0
d005c666:	eeb0 0a67 	vmov.f32	s0, s15
d005c66a:	bd38      	pop	{r3, r4, r5, pc}
d005c66c:	eddf 7a4d 	vldr	s15, [pc, #308]	; d005c7a4 <atanf+0x15c>
d005c670:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d005c7a8 <atanf+0x160>
d005c674:	2d00      	cmp	r5, #0
d005c676:	fe77 7a80 	vselgt.f32	s15, s15, s0
d005c67a:	e7f4      	b.n	d005c666 <atanf+0x1e>
d005c67c:	4b4b      	ldr	r3, [pc, #300]	; (d005c7ac <atanf+0x164>)
d005c67e:	429c      	cmp	r4, r3
d005c680:	dc10      	bgt.n	d005c6a4 <atanf+0x5c>
d005c682:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d005c686:	da0a      	bge.n	d005c69e <atanf+0x56>
d005c688:	ed9f 7a49 	vldr	s14, [pc, #292]	; d005c7b0 <atanf+0x168>
d005c68c:	ee30 7a07 	vadd.f32	s14, s0, s14
d005c690:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d005c694:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005c698:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005c69c:	dce3      	bgt.n	d005c666 <atanf+0x1e>
d005c69e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d005c6a2:	e013      	b.n	d005c6cc <atanf+0x84>
d005c6a4:	f000 f8a4 	bl	d005c7f0 <fabsf>
d005c6a8:	4b42      	ldr	r3, [pc, #264]	; (d005c7b4 <atanf+0x16c>)
d005c6aa:	429c      	cmp	r4, r3
d005c6ac:	dc4f      	bgt.n	d005c74e <atanf+0x106>
d005c6ae:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d005c6b2:	429c      	cmp	r4, r3
d005c6b4:	dc41      	bgt.n	d005c73a <atanf+0xf2>
d005c6b6:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d005c6ba:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005c6be:	eea0 7a27 	vfma.f32	s14, s0, s15
d005c6c2:	2300      	movs	r3, #0
d005c6c4:	ee30 0a27 	vadd.f32	s0, s0, s15
d005c6c8:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005c6cc:	1c5a      	adds	r2, r3, #1
d005c6ce:	ee67 6aa7 	vmul.f32	s13, s15, s15
d005c6d2:	eddf 5a39 	vldr	s11, [pc, #228]	; d005c7b8 <atanf+0x170>
d005c6d6:	ed9f 6a39 	vldr	s12, [pc, #228]	; d005c7bc <atanf+0x174>
d005c6da:	ed9f 5a39 	vldr	s10, [pc, #228]	; d005c7c0 <atanf+0x178>
d005c6de:	ed9f 0a39 	vldr	s0, [pc, #228]	; d005c7c4 <atanf+0x17c>
d005c6e2:	ee26 7aa6 	vmul.f32	s14, s13, s13
d005c6e6:	eea7 6a25 	vfma.f32	s12, s14, s11
d005c6ea:	eddf 5a37 	vldr	s11, [pc, #220]	; d005c7c8 <atanf+0x180>
d005c6ee:	eee6 5a07 	vfma.f32	s11, s12, s14
d005c6f2:	ed9f 6a36 	vldr	s12, [pc, #216]	; d005c7cc <atanf+0x184>
d005c6f6:	eea5 6a87 	vfma.f32	s12, s11, s14
d005c6fa:	eddf 5a35 	vldr	s11, [pc, #212]	; d005c7d0 <atanf+0x188>
d005c6fe:	eee6 5a07 	vfma.f32	s11, s12, s14
d005c702:	ed9f 6a34 	vldr	s12, [pc, #208]	; d005c7d4 <atanf+0x18c>
d005c706:	eea5 6a87 	vfma.f32	s12, s11, s14
d005c70a:	eddf 5a33 	vldr	s11, [pc, #204]	; d005c7d8 <atanf+0x190>
d005c70e:	eee7 5a05 	vfma.f32	s11, s14, s10
d005c712:	ed9f 5a32 	vldr	s10, [pc, #200]	; d005c7dc <atanf+0x194>
d005c716:	eea5 5a87 	vfma.f32	s10, s11, s14
d005c71a:	eddf 5a31 	vldr	s11, [pc, #196]	; d005c7e0 <atanf+0x198>
d005c71e:	eee5 5a07 	vfma.f32	s11, s10, s14
d005c722:	eea5 0a87 	vfma.f32	s0, s11, s14
d005c726:	ee20 0a07 	vmul.f32	s0, s0, s14
d005c72a:	eea6 0a26 	vfma.f32	s0, s12, s13
d005c72e:	ee27 0a80 	vmul.f32	s0, s15, s0
d005c732:	d121      	bne.n	d005c778 <atanf+0x130>
d005c734:	ee77 7ac0 	vsub.f32	s15, s15, s0
d005c738:	e795      	b.n	d005c666 <atanf+0x1e>
d005c73a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005c73e:	ee30 7a67 	vsub.f32	s14, s0, s15
d005c742:	ee30 0a27 	vadd.f32	s0, s0, s15
d005c746:	2301      	movs	r3, #1
d005c748:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005c74c:	e7be      	b.n	d005c6cc <atanf+0x84>
d005c74e:	4b25      	ldr	r3, [pc, #148]	; (d005c7e4 <atanf+0x19c>)
d005c750:	429c      	cmp	r4, r3
d005c752:	dc0b      	bgt.n	d005c76c <atanf+0x124>
d005c754:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d005c758:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005c75c:	eea0 7a27 	vfma.f32	s14, s0, s15
d005c760:	2302      	movs	r3, #2
d005c762:	ee70 6a67 	vsub.f32	s13, s0, s15
d005c766:	eec6 7a87 	vdiv.f32	s15, s13, s14
d005c76a:	e7af      	b.n	d005c6cc <atanf+0x84>
d005c76c:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005c770:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005c774:	2303      	movs	r3, #3
d005c776:	e7a9      	b.n	d005c6cc <atanf+0x84>
d005c778:	4a1b      	ldr	r2, [pc, #108]	; (d005c7e8 <atanf+0x1a0>)
d005c77a:	491c      	ldr	r1, [pc, #112]	; (d005c7ec <atanf+0x1a4>)
d005c77c:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d005c780:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d005c784:	ed93 7a00 	vldr	s14, [r3]
d005c788:	ee30 0a47 	vsub.f32	s0, s0, s14
d005c78c:	2d00      	cmp	r5, #0
d005c78e:	ee70 7a67 	vsub.f32	s15, s0, s15
d005c792:	ed92 0a00 	vldr	s0, [r2]
d005c796:	ee70 7a67 	vsub.f32	s15, s0, s15
d005c79a:	bfb8      	it	lt
d005c79c:	eef1 7a67 	vneglt.f32	s15, s15
d005c7a0:	e761      	b.n	d005c666 <atanf+0x1e>
d005c7a2:	bf00      	nop
d005c7a4:	3fc90fdb 	.word	0x3fc90fdb
d005c7a8:	bfc90fdb 	.word	0xbfc90fdb
d005c7ac:	3edfffff 	.word	0x3edfffff
d005c7b0:	7149f2ca 	.word	0x7149f2ca
d005c7b4:	3f97ffff 	.word	0x3f97ffff
d005c7b8:	3c8569d7 	.word	0x3c8569d7
d005c7bc:	3d4bda59 	.word	0x3d4bda59
d005c7c0:	bd15a221 	.word	0xbd15a221
d005c7c4:	be4ccccd 	.word	0xbe4ccccd
d005c7c8:	3d886b35 	.word	0x3d886b35
d005c7cc:	3dba2e6e 	.word	0x3dba2e6e
d005c7d0:	3e124925 	.word	0x3e124925
d005c7d4:	3eaaaaab 	.word	0x3eaaaaab
d005c7d8:	bd6ef16b 	.word	0xbd6ef16b
d005c7dc:	bd9d8795 	.word	0xbd9d8795
d005c7e0:	bde38e38 	.word	0xbde38e38
d005c7e4:	401bffff 	.word	0x401bffff
d005c7e8:	d005d478 	.word	0xd005d478
d005c7ec:	d005d488 	.word	0xd005d488

d005c7f0 <fabsf>:
d005c7f0:	ee10 3a10 	vmov	r3, s0
d005c7f4:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d005c7f8:	ee00 3a10 	vmov	s0, r3
d005c7fc:	4770      	bx	lr
	...

d005c800 <__aeabi_drsub>:
d005c800:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d005c804:	e002      	b.n	d005c80c <__adddf3>
d005c806:	bf00      	nop

d005c808 <__aeabi_dsub>:
d005c808:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d005c80c <__adddf3>:
d005c80c:	b530      	push	{r4, r5, lr}
d005c80e:	ea4f 0441 	mov.w	r4, r1, lsl #1
d005c812:	ea4f 0543 	mov.w	r5, r3, lsl #1
d005c816:	ea94 0f05 	teq	r4, r5
d005c81a:	bf08      	it	eq
d005c81c:	ea90 0f02 	teqeq	r0, r2
d005c820:	bf1f      	itttt	ne
d005c822:	ea54 0c00 	orrsne.w	ip, r4, r0
d005c826:	ea55 0c02 	orrsne.w	ip, r5, r2
d005c82a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d005c82e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005c832:	f000 80e2 	beq.w	d005c9fa <__adddf3+0x1ee>
d005c836:	ea4f 5454 	mov.w	r4, r4, lsr #21
d005c83a:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d005c83e:	bfb8      	it	lt
d005c840:	426d      	neglt	r5, r5
d005c842:	dd0c      	ble.n	d005c85e <__adddf3+0x52>
d005c844:	442c      	add	r4, r5
d005c846:	ea80 0202 	eor.w	r2, r0, r2
d005c84a:	ea81 0303 	eor.w	r3, r1, r3
d005c84e:	ea82 0000 	eor.w	r0, r2, r0
d005c852:	ea83 0101 	eor.w	r1, r3, r1
d005c856:	ea80 0202 	eor.w	r2, r0, r2
d005c85a:	ea81 0303 	eor.w	r3, r1, r3
d005c85e:	2d36      	cmp	r5, #54	; 0x36
d005c860:	bf88      	it	hi
d005c862:	bd30      	pophi	{r4, r5, pc}
d005c864:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d005c868:	ea4f 3101 	mov.w	r1, r1, lsl #12
d005c86c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d005c870:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d005c874:	d002      	beq.n	d005c87c <__adddf3+0x70>
d005c876:	4240      	negs	r0, r0
d005c878:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005c87c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d005c880:	ea4f 3303 	mov.w	r3, r3, lsl #12
d005c884:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d005c888:	d002      	beq.n	d005c890 <__adddf3+0x84>
d005c88a:	4252      	negs	r2, r2
d005c88c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d005c890:	ea94 0f05 	teq	r4, r5
d005c894:	f000 80a7 	beq.w	d005c9e6 <__adddf3+0x1da>
d005c898:	f1a4 0401 	sub.w	r4, r4, #1
d005c89c:	f1d5 0e20 	rsbs	lr, r5, #32
d005c8a0:	db0d      	blt.n	d005c8be <__adddf3+0xb2>
d005c8a2:	fa02 fc0e 	lsl.w	ip, r2, lr
d005c8a6:	fa22 f205 	lsr.w	r2, r2, r5
d005c8aa:	1880      	adds	r0, r0, r2
d005c8ac:	f141 0100 	adc.w	r1, r1, #0
d005c8b0:	fa03 f20e 	lsl.w	r2, r3, lr
d005c8b4:	1880      	adds	r0, r0, r2
d005c8b6:	fa43 f305 	asr.w	r3, r3, r5
d005c8ba:	4159      	adcs	r1, r3
d005c8bc:	e00e      	b.n	d005c8dc <__adddf3+0xd0>
d005c8be:	f1a5 0520 	sub.w	r5, r5, #32
d005c8c2:	f10e 0e20 	add.w	lr, lr, #32
d005c8c6:	2a01      	cmp	r2, #1
d005c8c8:	fa03 fc0e 	lsl.w	ip, r3, lr
d005c8cc:	bf28      	it	cs
d005c8ce:	f04c 0c02 	orrcs.w	ip, ip, #2
d005c8d2:	fa43 f305 	asr.w	r3, r3, r5
d005c8d6:	18c0      	adds	r0, r0, r3
d005c8d8:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d005c8dc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005c8e0:	d507      	bpl.n	d005c8f2 <__adddf3+0xe6>
d005c8e2:	f04f 0e00 	mov.w	lr, #0
d005c8e6:	f1dc 0c00 	rsbs	ip, ip, #0
d005c8ea:	eb7e 0000 	sbcs.w	r0, lr, r0
d005c8ee:	eb6e 0101 	sbc.w	r1, lr, r1
d005c8f2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d005c8f6:	d31b      	bcc.n	d005c930 <__adddf3+0x124>
d005c8f8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d005c8fc:	d30c      	bcc.n	d005c918 <__adddf3+0x10c>
d005c8fe:	0849      	lsrs	r1, r1, #1
d005c900:	ea5f 0030 	movs.w	r0, r0, rrx
d005c904:	ea4f 0c3c 	mov.w	ip, ip, rrx
d005c908:	f104 0401 	add.w	r4, r4, #1
d005c90c:	ea4f 5244 	mov.w	r2, r4, lsl #21
d005c910:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d005c914:	f080 809a 	bcs.w	d005ca4c <__adddf3+0x240>
d005c918:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d005c91c:	bf08      	it	eq
d005c91e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d005c922:	f150 0000 	adcs.w	r0, r0, #0
d005c926:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d005c92a:	ea41 0105 	orr.w	r1, r1, r5
d005c92e:	bd30      	pop	{r4, r5, pc}
d005c930:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d005c934:	4140      	adcs	r0, r0
d005c936:	eb41 0101 	adc.w	r1, r1, r1
d005c93a:	3c01      	subs	r4, #1
d005c93c:	bf28      	it	cs
d005c93e:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d005c942:	d2e9      	bcs.n	d005c918 <__adddf3+0x10c>
d005c944:	f091 0f00 	teq	r1, #0
d005c948:	bf04      	itt	eq
d005c94a:	4601      	moveq	r1, r0
d005c94c:	2000      	moveq	r0, #0
d005c94e:	fab1 f381 	clz	r3, r1
d005c952:	bf08      	it	eq
d005c954:	3320      	addeq	r3, #32
d005c956:	f1a3 030b 	sub.w	r3, r3, #11
d005c95a:	f1b3 0220 	subs.w	r2, r3, #32
d005c95e:	da0c      	bge.n	d005c97a <__adddf3+0x16e>
d005c960:	320c      	adds	r2, #12
d005c962:	dd08      	ble.n	d005c976 <__adddf3+0x16a>
d005c964:	f102 0c14 	add.w	ip, r2, #20
d005c968:	f1c2 020c 	rsb	r2, r2, #12
d005c96c:	fa01 f00c 	lsl.w	r0, r1, ip
d005c970:	fa21 f102 	lsr.w	r1, r1, r2
d005c974:	e00c      	b.n	d005c990 <__adddf3+0x184>
d005c976:	f102 0214 	add.w	r2, r2, #20
d005c97a:	bfd8      	it	le
d005c97c:	f1c2 0c20 	rsble	ip, r2, #32
d005c980:	fa01 f102 	lsl.w	r1, r1, r2
d005c984:	fa20 fc0c 	lsr.w	ip, r0, ip
d005c988:	bfdc      	itt	le
d005c98a:	ea41 010c 	orrle.w	r1, r1, ip
d005c98e:	4090      	lslle	r0, r2
d005c990:	1ae4      	subs	r4, r4, r3
d005c992:	bfa2      	ittt	ge
d005c994:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d005c998:	4329      	orrge	r1, r5
d005c99a:	bd30      	popge	{r4, r5, pc}
d005c99c:	ea6f 0404 	mvn.w	r4, r4
d005c9a0:	3c1f      	subs	r4, #31
d005c9a2:	da1c      	bge.n	d005c9de <__adddf3+0x1d2>
d005c9a4:	340c      	adds	r4, #12
d005c9a6:	dc0e      	bgt.n	d005c9c6 <__adddf3+0x1ba>
d005c9a8:	f104 0414 	add.w	r4, r4, #20
d005c9ac:	f1c4 0220 	rsb	r2, r4, #32
d005c9b0:	fa20 f004 	lsr.w	r0, r0, r4
d005c9b4:	fa01 f302 	lsl.w	r3, r1, r2
d005c9b8:	ea40 0003 	orr.w	r0, r0, r3
d005c9bc:	fa21 f304 	lsr.w	r3, r1, r4
d005c9c0:	ea45 0103 	orr.w	r1, r5, r3
d005c9c4:	bd30      	pop	{r4, r5, pc}
d005c9c6:	f1c4 040c 	rsb	r4, r4, #12
d005c9ca:	f1c4 0220 	rsb	r2, r4, #32
d005c9ce:	fa20 f002 	lsr.w	r0, r0, r2
d005c9d2:	fa01 f304 	lsl.w	r3, r1, r4
d005c9d6:	ea40 0003 	orr.w	r0, r0, r3
d005c9da:	4629      	mov	r1, r5
d005c9dc:	bd30      	pop	{r4, r5, pc}
d005c9de:	fa21 f004 	lsr.w	r0, r1, r4
d005c9e2:	4629      	mov	r1, r5
d005c9e4:	bd30      	pop	{r4, r5, pc}
d005c9e6:	f094 0f00 	teq	r4, #0
d005c9ea:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d005c9ee:	bf06      	itte	eq
d005c9f0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d005c9f4:	3401      	addeq	r4, #1
d005c9f6:	3d01      	subne	r5, #1
d005c9f8:	e74e      	b.n	d005c898 <__adddf3+0x8c>
d005c9fa:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005c9fe:	bf18      	it	ne
d005ca00:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005ca04:	d029      	beq.n	d005ca5a <__adddf3+0x24e>
d005ca06:	ea94 0f05 	teq	r4, r5
d005ca0a:	bf08      	it	eq
d005ca0c:	ea90 0f02 	teqeq	r0, r2
d005ca10:	d005      	beq.n	d005ca1e <__adddf3+0x212>
d005ca12:	ea54 0c00 	orrs.w	ip, r4, r0
d005ca16:	bf04      	itt	eq
d005ca18:	4619      	moveq	r1, r3
d005ca1a:	4610      	moveq	r0, r2
d005ca1c:	bd30      	pop	{r4, r5, pc}
d005ca1e:	ea91 0f03 	teq	r1, r3
d005ca22:	bf1e      	ittt	ne
d005ca24:	2100      	movne	r1, #0
d005ca26:	2000      	movne	r0, #0
d005ca28:	bd30      	popne	{r4, r5, pc}
d005ca2a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d005ca2e:	d105      	bne.n	d005ca3c <__adddf3+0x230>
d005ca30:	0040      	lsls	r0, r0, #1
d005ca32:	4149      	adcs	r1, r1
d005ca34:	bf28      	it	cs
d005ca36:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d005ca3a:	bd30      	pop	{r4, r5, pc}
d005ca3c:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d005ca40:	bf3c      	itt	cc
d005ca42:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d005ca46:	bd30      	popcc	{r4, r5, pc}
d005ca48:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005ca4c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d005ca50:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d005ca54:	f04f 0000 	mov.w	r0, #0
d005ca58:	bd30      	pop	{r4, r5, pc}
d005ca5a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005ca5e:	bf1a      	itte	ne
d005ca60:	4619      	movne	r1, r3
d005ca62:	4610      	movne	r0, r2
d005ca64:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d005ca68:	bf1c      	itt	ne
d005ca6a:	460b      	movne	r3, r1
d005ca6c:	4602      	movne	r2, r0
d005ca6e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005ca72:	bf06      	itte	eq
d005ca74:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d005ca78:	ea91 0f03 	teqeq	r1, r3
d005ca7c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005ca80:	bd30      	pop	{r4, r5, pc}
d005ca82:	bf00      	nop

d005ca84 <__aeabi_ui2d>:
d005ca84:	f090 0f00 	teq	r0, #0
d005ca88:	bf04      	itt	eq
d005ca8a:	2100      	moveq	r1, #0
d005ca8c:	4770      	bxeq	lr
d005ca8e:	b530      	push	{r4, r5, lr}
d005ca90:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005ca94:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005ca98:	f04f 0500 	mov.w	r5, #0
d005ca9c:	f04f 0100 	mov.w	r1, #0
d005caa0:	e750      	b.n	d005c944 <__adddf3+0x138>
d005caa2:	bf00      	nop

d005caa4 <__aeabi_i2d>:
d005caa4:	f090 0f00 	teq	r0, #0
d005caa8:	bf04      	itt	eq
d005caaa:	2100      	moveq	r1, #0
d005caac:	4770      	bxeq	lr
d005caae:	b530      	push	{r4, r5, lr}
d005cab0:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005cab4:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005cab8:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d005cabc:	bf48      	it	mi
d005cabe:	4240      	negmi	r0, r0
d005cac0:	f04f 0100 	mov.w	r1, #0
d005cac4:	e73e      	b.n	d005c944 <__adddf3+0x138>
d005cac6:	bf00      	nop

d005cac8 <__aeabi_f2d>:
d005cac8:	0042      	lsls	r2, r0, #1
d005caca:	ea4f 01e2 	mov.w	r1, r2, asr #3
d005cace:	ea4f 0131 	mov.w	r1, r1, rrx
d005cad2:	ea4f 7002 	mov.w	r0, r2, lsl #28
d005cad6:	bf1f      	itttt	ne
d005cad8:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d005cadc:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d005cae0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d005cae4:	4770      	bxne	lr
d005cae6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d005caea:	bf08      	it	eq
d005caec:	4770      	bxeq	lr
d005caee:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d005caf2:	bf04      	itt	eq
d005caf4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d005caf8:	4770      	bxeq	lr
d005cafa:	b530      	push	{r4, r5, lr}
d005cafc:	f44f 7460 	mov.w	r4, #896	; 0x380
d005cb00:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005cb04:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d005cb08:	e71c      	b.n	d005c944 <__adddf3+0x138>
d005cb0a:	bf00      	nop

d005cb0c <__aeabi_ul2d>:
d005cb0c:	ea50 0201 	orrs.w	r2, r0, r1
d005cb10:	bf08      	it	eq
d005cb12:	4770      	bxeq	lr
d005cb14:	b530      	push	{r4, r5, lr}
d005cb16:	f04f 0500 	mov.w	r5, #0
d005cb1a:	e00a      	b.n	d005cb32 <__aeabi_l2d+0x16>

d005cb1c <__aeabi_l2d>:
d005cb1c:	ea50 0201 	orrs.w	r2, r0, r1
d005cb20:	bf08      	it	eq
d005cb22:	4770      	bxeq	lr
d005cb24:	b530      	push	{r4, r5, lr}
d005cb26:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d005cb2a:	d502      	bpl.n	d005cb32 <__aeabi_l2d+0x16>
d005cb2c:	4240      	negs	r0, r0
d005cb2e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005cb32:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005cb36:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005cb3a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005cb3e:	f43f aed8 	beq.w	d005c8f2 <__adddf3+0xe6>
d005cb42:	f04f 0203 	mov.w	r2, #3
d005cb46:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005cb4a:	bf18      	it	ne
d005cb4c:	3203      	addne	r2, #3
d005cb4e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005cb52:	bf18      	it	ne
d005cb54:	3203      	addne	r2, #3
d005cb56:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d005cb5a:	f1c2 0320 	rsb	r3, r2, #32
d005cb5e:	fa00 fc03 	lsl.w	ip, r0, r3
d005cb62:	fa20 f002 	lsr.w	r0, r0, r2
d005cb66:	fa01 fe03 	lsl.w	lr, r1, r3
d005cb6a:	ea40 000e 	orr.w	r0, r0, lr
d005cb6e:	fa21 f102 	lsr.w	r1, r1, r2
d005cb72:	4414      	add	r4, r2
d005cb74:	e6bd      	b.n	d005c8f2 <__adddf3+0xe6>
d005cb76:	bf00      	nop
d005cb78:	46464952 	.word	0x46464952
d005cb7c:	00000000 	.word	0x00000000
d005cb80:	45564157 	.word	0x45564157
d005cb84:	00000000 	.word	0x00000000
d005cb88:	63616c62 	.word	0x63616c62
d005cb8c:	62615f6b 	.word	0x62615f6b
d005cb90:	62726f73 	.word	0x62726f73
d005cb94:	6d2e7265 	.word	0x6d2e7265
d005cb98:	0000646f 	.word	0x0000646f
d005cb9c:	6e756874 	.word	0x6e756874
d005cba0:	31726564 	.word	0x31726564
d005cba4:	7661772e 	.word	0x7661772e
d005cba8:	00000000 	.word	0x00000000
d005cbac:	6e756874 	.word	0x6e756874
d005cbb0:	32726564 	.word	0x32726564
d005cbb4:	7661772e 	.word	0x7661772e
d005cbb8:	00000000 	.word	0x00000000
d005cbbc:	746e616d 	.word	0x746e616d
d005cbc0:	6e655f61 	.word	0x6e655f61
d005cbc4:	772e3167 	.word	0x772e3167
d005cbc8:	00007661 	.word	0x00007661
d005cbcc:	70776570 	.word	0x70776570
d005cbd0:	772e7765 	.word	0x772e7765
d005cbd4:	00007661 	.word	0x00007661
d005cbd8:	72727574 	.word	0x72727574
d005cbdc:	2e317465 	.word	0x2e317465
d005cbe0:	64336273 	.word	0x64336273
d005cbe4:	00000000 	.word	0x00000000
d005cbe8:	616c7369 	.word	0x616c7369
d005cbec:	2e78646e 	.word	0x2e78646e
d005cbf0:	64336273 	.word	0x64336273
d005cbf4:	00000000 	.word	0x00000000
d005cbf8:	72726163 	.word	0x72726163
d005cbfc:	2e726569 	.word	0x2e726569
d005cc00:	64336273 	.word	0x64336273
d005cc04:	00000000 	.word	0x00000000
d005cc08:	70696873 	.word	0x70696873
d005cc0c:	732e3176 	.word	0x732e3176
d005cc10:	00643362 	.word	0x00643362
d005cc14:	74786574 	.word	0x74786574
d005cc18:	3362732e 	.word	0x3362732e
d005cc1c:	00000064 	.word	0x00000064
d005cc20:	3a535046 	.word	0x3a535046
d005cc24:	2e756c25 	.word	0x2e756c25
d005cc28:	6c323025 	.word	0x6c323025
d005cc2c:	4d202075 	.word	0x4d202075
d005cc30:	33253a53 	.word	0x33253a53
d005cc34:	252e756c 	.word	0x252e756c
d005cc38:	756c3330 	.word	0x756c3330
d005cc3c:	50572020 	.word	0x50572020
d005cc40:	7532253a 	.word	0x7532253a
d005cc44:	52542020 	.word	0x52542020
d005cc48:	253a5349 	.word	0x253a5349
d005cc4c:	0000756c 	.word	0x0000756c
d005cc50:	ff5516e3 	.word	0xff5516e3
d005cc54:	ffffffff 	.word	0xffffffff
d005cc58:	ffff0000 	.word	0xffff0000
d005cc5c:	ff00ff00 	.word	0xff00ff00
d005cc60:	ff0000ff 	.word	0xff0000ff
d005cc64:	ffffff00 	.word	0xffffff00
d005cc68:	ffff00ff 	.word	0xffff00ff
d005cc6c:	ff00ffff 	.word	0xff00ffff
d005cc70:	ff808080 	.word	0xff808080
d005cc74:	ffff8000 	.word	0xffff8000
d005cc78:	ff8000ff 	.word	0xff8000ff
d005cc7c:	ff0080ff 	.word	0xff0080ff
d005cc80:	ff80ff00 	.word	0xff80ff00
d005cc84:	ffff0080 	.word	0xffff0080
d005cc88:	ff00ff80 	.word	0xff00ff80
d005cc8c:	ffc0c0c0 	.word	0xffc0c0c0
d005cc90:	3f800000 	.word	0x3f800000
d005cc94:	3f400000 	.word	0x3f400000
d005cc98:	3f0ccccd 	.word	0x3f0ccccd
d005cc9c:	3eb33333 	.word	0x3eb33333
d005cca0:	3e4ccccd 	.word	0x3e4ccccd
d005cca4:	bf800000 	.word	0xbf800000
d005cca8:	bf000000 	.word	0xbf000000
d005ccac:	3e99999a 	.word	0x3e99999a

d005ccb0 <museumRail.9431>:
d005ccb0:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d005ccc0:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d005ccd8:	c1f00000 43340000 44870000 00000000     ......4C...D....
d005cce8:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d005ccf8:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d005cd08:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d005cd18:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d005cd28:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d005cd38:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d005cd48:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d005cd58:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d005cd68:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d005cd78:	c487c000 43300000 43320000 00000000     ......0C..2C....
d005cd88:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d005cd98:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d005cda8:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d005cdb8:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d005cdc8:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d005cdd8:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d005cde8:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d005cdf8:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d005ce08:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d005ce18:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d005ce28:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d005ce38:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d005ce48:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d005ce58:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>

d005ce68 <bayer4x4>:
d005ce68:	0a020800 060e040c 09010b03 050d070f     ................
	...
d005ce98:	3f800000 00000000 00000000 00000000     ...?............
d005cea8:	3f800000 00000000 00000000 00000000     ...?............
d005ceb8:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d005cec8:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d005cee4:	00000001 00000001 00000002 00000002     ................
d005cef4:	00000003 00000003 00000000 00000004     ................
d005cf04:	00000005 00000005 00000006 00000006     ................
d005cf14:	00000007 00000007 00000004 00000000     ................
d005cf24:	00000004 00000001 00000005 00000002     ................
d005cf34:	00000006 00000003 00000007 00000001     ................
d005cf44:	00000002 00000002 00000003 00000001     ................
d005cf54:	00000004 00000002 00000004 00000003     ................
d005cf64:	00000004                                ....

d005cf68 <__sf_fake_stderr>:
	...

d005cf88 <__sf_fake_stdin>:
	...

d005cfa8 <__sf_fake_stdout>:
	...

d005cfc8 <_global_impure_ptr>:
d005cfc8:	d005f8f0 4e454552 616d2054 636f6c6c     ....REENT malloc
d005cfd8:	63757320 64656563 2f006465 6c697562      succeeded./buil
d005cfe8:	6e672f64 6f742d75 2d736c6f 2d726f66     d/gnu-tools-for-
d005cff8:	336d7473 2d395f32 30323032 2d32712d     stm32_9-2020-q2-
d005d008:	61647075 322e6574 31303230 2d313030     update.20201001-
d005d018:	31323631 6372732f 77656e2f 2f62696c     1621/src/newlib/
d005d028:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
d005d038:	722f6269 2e646e61 202c0063 636e7566     ib/rand.c., func
d005d048:	6e6f6974 6100203a 72657373 6e6f6974     tion: .assertion
d005d058:	73252220 61662022 64656c69 6966203a      "%s" failed: fi
d005d068:	2220656c 2c227325 6e696c20 64252065     le "%s", line %d
d005d078:	73257325 2d23000a 00202b30 004c6c68     %s%s..#-0+ .hlL.
d005d088:	45676665 30004746 34333231 38373635     efgEFG.012345678
d005d098:	43424139 00464544 33323130 37363534     9ABCDEF.01234567
d005d0a8:	62613938 66656463 00000000 00000000     89abcdef........

d005d0b8 <__exp2f_data>:
d005d0b8:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d005d0c8:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d005d0d8:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d005d0e8:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d005d0f8:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d005d108:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d005d118:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d005d128:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d005d138:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d005d148:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d005d158:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d005d168:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d005d178:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d005d188:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d005d198:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d005d1a8:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d005d1b8:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d005d1c8:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d005d1d8:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d005d1e8:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d005d1f8:	ff0c52d6 3f962e42                       .R..B..?

d005d200 <__logf_data>:
d005d200:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d005d210:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d005d220:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d005d230:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d005d240:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d005d250:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d005d260:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d005d270:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d005d280:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d005d290:	00000000 3ff00000 00000000 00000000     .......?........
d005d2a0:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d005d2b0:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d005d2c0:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d005d2d0:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d005d2e0:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d005d2f0:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d005d300:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d005d310:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d005d320 <__inv_pio4>:
d005d320:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d005d330:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d005d340:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d005d350:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d005d360:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d005d370:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d005d380 <__sincosf_table>:
d005d380:	00000000 3ff00000 00000000 bff00000     .......?........
d005d390:	00000000 bff00000 00000000 3ff00000     ...............?
d005d3a0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005d3b0:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d005d3c0:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d005d3d0:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d005d3e0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d005d3f0:	00000000 3ff00000 00000000 bff00000     .......?........
d005d400:	00000000 bff00000 00000000 3ff00000     ...............?
d005d410:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005d420:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d005d430:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d005d440:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d005d450:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d005d460 <CSWTCH.8>:
d005d460:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d005d46c <CSWTCH.9>:
d005d46c:	80000000 40490fdb c0490fdb              ......I@..I.

d005d478 <atanhi>:
d005d478:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d005d488 <atanlo>:
d005d488:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d005d498 <_init>:
d005d498:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005d49a:	bf00      	nop

Disassembly of section .fini:

d005d49c <_fini>:
d005d49c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005d49e:	bf00      	nop
