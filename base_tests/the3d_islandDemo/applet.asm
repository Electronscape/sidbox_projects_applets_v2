
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d004b010 <applet_entry>:
d004b010:	b570      	push	{r4, r5, r6, lr}
d004b012:	4e09      	ldr	r6, [pc, #36]	; (d004b038 <applet_entry+0x28>)
d004b014:	460d      	mov	r5, r1
d004b016:	4604      	mov	r4, r0
d004b018:	2100      	movs	r1, #0
d004b01a:	6833      	ldr	r3, [r6, #0]
d004b01c:	6898      	ldr	r0, [r3, #8]
d004b01e:	f00a fc0f 	bl	d0055840 <setbuf>
d004b022:	6833      	ldr	r3, [r6, #0]
d004b024:	2100      	movs	r1, #0
d004b026:	68d8      	ldr	r0, [r3, #12]
d004b028:	f00a fc0a 	bl	d0055840 <setbuf>
d004b02c:	4629      	mov	r1, r5
d004b02e:	4620      	mov	r0, r4
d004b030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004b034:	f002 b844 	b.w	d004d0c0 <main>
d004b038:	d005a414 	.word	0xd005a414

d004b03c <initMalloc>:
d004b03c:	4902      	ldr	r1, [pc, #8]	; (d004b048 <initMalloc+0xc>)
d004b03e:	4b03      	ldr	r3, [pc, #12]	; (d004b04c <initMalloc+0x10>)
d004b040:	4a03      	ldr	r2, [pc, #12]	; (d004b050 <initMalloc+0x14>)
d004b042:	1a5b      	subs	r3, r3, r1
d004b044:	6013      	str	r3, [r2, #0]
d004b046:	4770      	bx	lr
d004b048:	d00febc8 	.word	0xd00febc8
d004b04c:	d0600000 	.word	0xd0600000
d004b050:	d00f4928 	.word	0xd00f4928

d004b054 <_write_r>:
d004b054:	3901      	subs	r1, #1
d004b056:	2901      	cmp	r1, #1
d004b058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004b05a:	d81f      	bhi.n	d004b09c <_write_r+0x48>
d004b05c:	b1e2      	cbz	r2, d004b098 <_write_r+0x44>
d004b05e:	461c      	mov	r4, r3
d004b060:	b1d3      	cbz	r3, d004b098 <_write_r+0x44>
d004b062:	4d12      	ldr	r5, [pc, #72]	; (d004b0ac <_write_r+0x58>)
d004b064:	682e      	ldr	r6, [r5, #0]
d004b066:	b9ae      	cbnz	r6, d004b094 <_write_r+0x40>
d004b068:	4f11      	ldr	r7, [pc, #68]	; (d004b0b0 <_write_r+0x5c>)
d004b06a:	2301      	movs	r3, #1
d004b06c:	4611      	mov	r1, r2
d004b06e:	4630      	mov	r0, r6
d004b070:	602b      	str	r3, [r5, #0]
d004b072:	4622      	mov	r2, r4
d004b074:	7a3b      	ldrb	r3, [r7, #8]
d004b076:	f897 c009 	ldrb.w	ip, [r7, #9]
d004b07a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d004b07e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d004b082:	7aff      	ldrb	r7, [r7, #11]
d004b084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004b088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d004b08c:	681b      	ldr	r3, [r3, #0]
d004b08e:	685b      	ldr	r3, [r3, #4]
d004b090:	4798      	blx	r3
d004b092:	602e      	str	r6, [r5, #0]
d004b094:	4620      	mov	r0, r4
d004b096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b098:	2000      	movs	r0, #0
d004b09a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b09c:	f00a f87c 	bl	d0055198 <__errno>
d004b0a0:	2209      	movs	r2, #9
d004b0a2:	4603      	mov	r3, r0
d004b0a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0a8:	601a      	str	r2, [r3, #0]
d004b0aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0ac:	d005a484 	.word	0xd005a484
d004b0b0:	2001f000 	.word	0x2001f000

d004b0b4 <_read>:
d004b0b4:	b508      	push	{r3, lr}
d004b0b6:	f00a f86f 	bl	d0055198 <__errno>
d004b0ba:	2258      	movs	r2, #88	; 0x58
d004b0bc:	4603      	mov	r3, r0
d004b0be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0c2:	601a      	str	r2, [r3, #0]
d004b0c4:	bd08      	pop	{r3, pc}
d004b0c6:	bf00      	nop

d004b0c8 <_close>:
d004b0c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0cc:	4770      	bx	lr
d004b0ce:	bf00      	nop

d004b0d0 <_fstat>:
d004b0d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d004b0d4:	2000      	movs	r0, #0
d004b0d6:	604b      	str	r3, [r1, #4]
d004b0d8:	4770      	bx	lr
d004b0da:	bf00      	nop

d004b0dc <_lseek>:
d004b0dc:	2000      	movs	r0, #0
d004b0de:	4770      	bx	lr

d004b0e0 <_sbrk_r>:
d004b0e0:	4b0c      	ldr	r3, [pc, #48]	; (d004b114 <_sbrk_r+0x34>)
d004b0e2:	4a0d      	ldr	r2, [pc, #52]	; (d004b118 <_sbrk_r+0x38>)
d004b0e4:	6818      	ldr	r0, [r3, #0]
d004b0e6:	b510      	push	{r4, lr}
d004b0e8:	b918      	cbnz	r0, d004b0f2 <_sbrk_r+0x12>
d004b0ea:	1dd0      	adds	r0, r2, #7
d004b0ec:	f020 0007 	bic.w	r0, r0, #7
d004b0f0:	6018      	str	r0, [r3, #0]
d004b0f2:	4401      	add	r1, r0
d004b0f4:	4c09      	ldr	r4, [pc, #36]	; (d004b11c <_sbrk_r+0x3c>)
d004b0f6:	42a1      	cmp	r1, r4
d004b0f8:	d803      	bhi.n	d004b102 <_sbrk_r+0x22>
d004b0fa:	4291      	cmp	r1, r2
d004b0fc:	d301      	bcc.n	d004b102 <_sbrk_r+0x22>
d004b0fe:	6019      	str	r1, [r3, #0]
d004b100:	bd10      	pop	{r4, pc}
d004b102:	f00a f849 	bl	d0055198 <__errno>
d004b106:	220c      	movs	r2, #12
d004b108:	4603      	mov	r3, r0
d004b10a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b10e:	601a      	str	r2, [r3, #0]
d004b110:	bd10      	pop	{r4, pc}
d004b112:	bf00      	nop
d004b114:	d005a480 	.word	0xd005a480
d004b118:	d00febc8 	.word	0xd00febc8
d004b11c:	d0600000 	.word	0xd0600000

d004b120 <_isatty>:
d004b120:	2001      	movs	r0, #1
d004b122:	4770      	bx	lr

d004b124 <_exit>:
d004b124:	e7fe      	b.n	d004b124 <_exit>
d004b126:	bf00      	nop

d004b128 <_getpid>:
d004b128:	2001      	movs	r0, #1
d004b12a:	4770      	bx	lr

d004b12c <_kill>:
d004b12c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b130:	4770      	bx	lr
d004b132:	bf00      	nop

d004b134 <LoadSFX>:
d004b134:	b5f0      	push	{r4, r5, r6, r7, lr}
d004b136:	4c40      	ldr	r4, [pc, #256]	; (d004b238 <LoadSFX+0x104>)
d004b138:	460f      	mov	r7, r1
d004b13a:	4601      	mov	r1, r0
d004b13c:	b08f      	sub	sp, #60	; 0x3c
d004b13e:	7925      	ldrb	r5, [r4, #4]
d004b140:	2201      	movs	r2, #1
d004b142:	7963      	ldrb	r3, [r4, #5]
d004b144:	79a0      	ldrb	r0, [r4, #6]
d004b146:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
d004b14a:	79e5      	ldrb	r5, [r4, #7]
d004b14c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004b150:	2000      	movs	r0, #0
d004b152:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d004b156:	681b      	ldr	r3, [r3, #0]
d004b158:	681b      	ldr	r3, [r3, #0]
d004b15a:	4798      	blx	r3
d004b15c:	bb00      	cbnz	r0, d004b1a0 <LoadSFX+0x6c>
d004b15e:	7921      	ldrb	r1, [r4, #4]
d004b160:	ab02      	add	r3, sp, #8
d004b162:	7962      	ldrb	r2, [r4, #5]
d004b164:	79a6      	ldrb	r6, [r4, #6]
d004b166:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d004b16a:	79e5      	ldrb	r5, [r4, #7]
d004b16c:	a903      	add	r1, sp, #12
d004b16e:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d004b172:	222c      	movs	r2, #44	; 0x2c
d004b174:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d004b178:	682d      	ldr	r5, [r5, #0]
d004b17a:	68ad      	ldr	r5, [r5, #8]
d004b17c:	47a8      	blx	r5
d004b17e:	a803      	add	r0, sp, #12
d004b180:	2204      	movs	r2, #4
d004b182:	492e      	ldr	r1, [pc, #184]	; (d004b23c <LoadSFX+0x108>)
d004b184:	f00a fa4e 	bl	d0055624 <memcmp>
d004b188:	b950      	cbnz	r0, d004b1a0 <LoadSFX+0x6c>
d004b18a:	2204      	movs	r2, #4
d004b18c:	492c      	ldr	r1, [pc, #176]	; (d004b240 <LoadSFX+0x10c>)
d004b18e:	a805      	add	r0, sp, #20
d004b190:	f00a fa48 	bl	d0055624 <memcmp>
d004b194:	4605      	mov	r5, r0
d004b196:	b918      	cbnz	r0, d004b1a0 <LoadSFX+0x6c>
d004b198:	f8bd 3020 	ldrh.w	r3, [sp, #32]
d004b19c:	2b01      	cmp	r3, #1
d004b19e:	d010      	beq.n	d004b1c2 <LoadSFX+0x8e>
d004b1a0:	7923      	ldrb	r3, [r4, #4]
d004b1a2:	2000      	movs	r0, #0
d004b1a4:	7962      	ldrb	r2, [r4, #5]
d004b1a6:	79a1      	ldrb	r1, [r4, #6]
d004b1a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004b1ac:	79e2      	ldrb	r2, [r4, #7]
d004b1ae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004b1b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004b1b6:	681b      	ldr	r3, [r3, #0]
d004b1b8:	68db      	ldr	r3, [r3, #12]
d004b1ba:	4798      	blx	r3
d004b1bc:	2000      	movs	r0, #0
d004b1be:	b00f      	add	sp, #60	; 0x3c
d004b1c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004b1c2:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d004b1c4:	4610      	mov	r0, r2
d004b1c6:	9201      	str	r2, [sp, #4]
d004b1c8:	f00a fa1c 	bl	d0055604 <malloc>
d004b1cc:	9a01      	ldr	r2, [sp, #4]
d004b1ce:	4601      	mov	r1, r0
d004b1d0:	6038      	str	r0, [r7, #0]
d004b1d2:	b1f8      	cbz	r0, d004b214 <LoadSFX+0xe0>
d004b1d4:	7920      	ldrb	r0, [r4, #4]
d004b1d6:	ab02      	add	r3, sp, #8
d004b1d8:	7966      	ldrb	r6, [r4, #5]
d004b1da:	f894 c006 	ldrb.w	ip, [r4, #6]
d004b1de:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d004b1e2:	79e7      	ldrb	r7, [r4, #7]
d004b1e4:	4628      	mov	r0, r5
d004b1e6:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d004b1ea:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d004b1ee:	6836      	ldr	r6, [r6, #0]
d004b1f0:	68b6      	ldr	r6, [r6, #8]
d004b1f2:	47b0      	blx	r6
d004b1f4:	7923      	ldrb	r3, [r4, #4]
d004b1f6:	7962      	ldrb	r2, [r4, #5]
d004b1f8:	4628      	mov	r0, r5
d004b1fa:	79a1      	ldrb	r1, [r4, #6]
d004b1fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004b200:	79e2      	ldrb	r2, [r4, #7]
d004b202:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004b206:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004b20a:	681b      	ldr	r3, [r3, #0]
d004b20c:	68db      	ldr	r3, [r3, #12]
d004b20e:	4798      	blx	r3
d004b210:	980d      	ldr	r0, [sp, #52]	; 0x34
d004b212:	e7d4      	b.n	d004b1be <LoadSFX+0x8a>
d004b214:	7923      	ldrb	r3, [r4, #4]
d004b216:	7962      	ldrb	r2, [r4, #5]
d004b218:	79a5      	ldrb	r5, [r4, #6]
d004b21a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004b21e:	79e2      	ldrb	r2, [r4, #7]
d004b220:	9001      	str	r0, [sp, #4]
d004b222:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004b226:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004b22a:	681b      	ldr	r3, [r3, #0]
d004b22c:	68db      	ldr	r3, [r3, #12]
d004b22e:	4798      	blx	r3
d004b230:	9901      	ldr	r1, [sp, #4]
d004b232:	4608      	mov	r0, r1
d004b234:	e7c3      	b.n	d004b1be <LoadSFX+0x8a>
d004b236:	bf00      	nop
d004b238:	2001f000 	.word	0x2001f000
d004b23c:	d0057594 	.word	0xd0057594
d004b240:	d005759c 	.word	0xd005759c

d004b244 <sr_steer_camera_to_tangent>:
d004b244:	b510      	push	{r4, lr}
d004b246:	ed2d 8b06 	vpush	{d8-d10}
d004b24a:	ee20 9a00 	vmul.f32	s18, s0, s0
d004b24e:	ed9f 6a4e 	vldr	s12, [pc, #312]	; d004b388 <sr_steer_camera_to_tangent+0x144>
d004b252:	ee61 aa01 	vmul.f32	s21, s2, s2
d004b256:	4604      	mov	r4, r0
d004b258:	eeb0 8a61 	vmov.f32	s16, s3
d004b25c:	b084      	sub	sp, #16
d004b25e:	eef0 7a49 	vmov.f32	s15, s18
d004b262:	4608      	mov	r0, r1
d004b264:	eef0 8a42 	vmov.f32	s17, s4
d004b268:	eee0 7aa0 	vfma.f32	s15, s1, s1
d004b26c:	ee77 7aaa 	vadd.f32	s15, s15, s21
d004b270:	eef4 7ac6 	vcmpe.f32	s15, s12
d004b274:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b278:	f240 8081 	bls.w	d004b37e <sr_steer_camera_to_tangent+0x13a>
d004b27c:	ed9f 6a43 	vldr	s12, [pc, #268]	; d004b38c <sr_steer_camera_to_tangent+0x148>
d004b280:	eef4 7ac6 	vcmpe.f32	s15, s12
d004b284:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b288:	d468      	bmi.n	d004b35c <sr_steer_camera_to_tangent+0x118>
d004b28a:	ed9f 6a41 	vldr	s12, [pc, #260]	; d004b390 <sr_steer_camera_to_tangent+0x14c>
d004b28e:	eeb0 7a40 	vmov.f32	s14, s0
d004b292:	eeb0 aa60 	vmov.f32	s20, s1
d004b296:	eef4 7a46 	vcmp.f32	s15, s12
d004b29a:	eef0 6a41 	vmov.f32	s13, s2
d004b29e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b2a2:	dc5b      	bgt.n	d004b35c <sr_steer_camera_to_tangent+0x118>
d004b2a4:	ee39 9a2a 	vadd.f32	s18, s18, s21
d004b2a8:	9000      	str	r0, [sp, #0]
d004b2aa:	eef0 0a66 	vmov.f32	s1, s13
d004b2ae:	eeb0 0a47 	vmov.f32	s0, s14
d004b2b2:	f00b fd89 	bl	d0056dc8 <atan2f>
d004b2b6:	eef1 0ac9 	vsqrt.f32	s1, s18
d004b2ba:	eddf 7a36 	vldr	s15, [pc, #216]	; d004b394 <sr_steer_camera_to_tangent+0x150>
d004b2be:	eef0 9a40 	vmov.f32	s19, s0
d004b2c2:	eeb1 0a4a 	vneg.f32	s0, s20
d004b2c6:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d004b2ca:	f00b fd7d 	bl	d0056dc8 <atan2f>
d004b2ce:	eef1 0a40 	vneg.f32	s1, s0
d004b2d2:	9800      	ldr	r0, [sp, #0]
d004b2d4:	ed94 7a0e 	vldr	s14, [r4, #56]	; 0x38
d004b2d8:	edd4 7a10 	vldr	s15, [r4, #64]	; 0x40
d004b2dc:	ee28 7a87 	vmul.f32	s14, s17, s14
d004b2e0:	ee38 6a67 	vsub.f32	s12, s16, s15
d004b2e4:	eef1 6a47 	vneg.f32	s13, s14
d004b2e8:	eef4 6ac6 	vcmpe.f32	s13, s12
d004b2ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b2f0:	dc01      	bgt.n	d004b2f6 <sr_steer_camera_to_tangent+0xb2>
d004b2f2:	fec6 6a47 	vminnm.f32	s13, s12, s14
d004b2f6:	eeb0 8ac8 	vabs.f32	s16, s16
d004b2fa:	ed9f 7a26 	vldr	s14, [pc, #152]	; d004b394 <sr_steer_camera_to_tangent+0x150>
d004b2fe:	ee77 7aa6 	vadd.f32	s15, s15, s13
d004b302:	eeb4 8ac7 	vcmpe.f32	s16, s14
d004b306:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b30a:	d50f      	bpl.n	d004b32c <sr_steer_camera_to_tangent+0xe8>
d004b30c:	ed94 2a11 	vldr	s4, [r4, #68]	; 0x44
d004b310:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004b314:	eddf 6a20 	vldr	s13, [pc, #128]	; d004b398 <sr_steer_camera_to_tangent+0x154>
d004b318:	ee28 2a82 	vmul.f32	s4, s17, s4
d004b31c:	fe82 2a47 	vminnm.f32	s4, s4, s14
d004b320:	fe82 2a26 	vmaxnm.f32	s4, s4, s13
d004b324:	ee37 2a42 	vsub.f32	s4, s14, s4
d004b328:	ee67 7a82 	vmul.f32	s15, s15, s4
d004b32c:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d004b330:	eeb1 7a41 	vneg.f32	s14, s2
d004b334:	eeb4 7ae7 	vcmpe.f32	s14, s15
d004b338:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b33c:	dc03      	bgt.n	d004b346 <sr_steer_camera_to_tangent+0x102>
d004b33e:	fe81 7a67 	vminnm.f32	s14, s2, s15
d004b342:	eeb1 1a47 	vneg.f32	s2, s14
d004b346:	eeb0 0a69 	vmov.f32	s0, s19
d004b34a:	ed84 7a10 	vstr	s14, [r4, #64]	; 0x40
d004b34e:	b004      	add	sp, #16
d004b350:	ecbd 8b06 	vpop	{d8-d10}
d004b354:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004b358:	f005 ba0e 	b.w	d0050778 <cameraRotate>
d004b35c:	eeb1 7ae7 	vsqrt.f32	s14, s15
d004b360:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004b364:	ee87 aa87 	vdiv.f32	s20, s15, s14
d004b368:	ee20 7a0a 	vmul.f32	s14, s0, s20
d004b36c:	ee61 6a0a 	vmul.f32	s13, s2, s20
d004b370:	ee20 aa8a 	vmul.f32	s20, s1, s20
d004b374:	ee27 9a07 	vmul.f32	s18, s14, s14
d004b378:	ee66 aaa6 	vmul.f32	s21, s13, s13
d004b37c:	e792      	b.n	d004b2a4 <sr_steer_camera_to_tangent+0x60>
d004b37e:	eddf 0a06 	vldr	s1, [pc, #24]	; d004b398 <sr_steer_camera_to_tangent+0x154>
d004b382:	eef0 9a60 	vmov.f32	s19, s1
d004b386:	e7a5      	b.n	d004b2d4 <sr_steer_camera_to_tangent+0x90>
d004b388:	358637bd 	.word	0x358637bd
d004b38c:	3f7fbe77 	.word	0x3f7fbe77
d004b390:	3f8020c5 	.word	0x3f8020c5
d004b394:	38d1b717 	.word	0x38d1b717
d004b398:	00000000 	.word	0x00000000

d004b39c <sr_segment_dir>:
d004b39c:	b088      	sub	sp, #32
d004b39e:	2800      	cmp	r0, #0
d004b3a0:	d050      	beq.n	d004b444 <sr_segment_dir+0xa8>
d004b3a2:	6802      	ldr	r2, [r0, #0]
d004b3a4:	2a00      	cmp	r2, #0
d004b3a6:	d04d      	beq.n	d004b444 <sr_segment_dir+0xa8>
d004b3a8:	6843      	ldr	r3, [r0, #4]
d004b3aa:	2b01      	cmp	r3, #1
d004b3ac:	dd4a      	ble.n	d004b444 <sr_segment_dir+0xa8>
d004b3ae:	7c00      	ldrb	r0, [r0, #16]
d004b3b0:	2800      	cmp	r0, #0
d004b3b2:	d055      	beq.n	d004b460 <sr_segment_dir+0xc4>
d004b3b4:	2900      	cmp	r1, #0
d004b3b6:	da01      	bge.n	d004b3bc <sr_segment_dir+0x20>
d004b3b8:	18c9      	adds	r1, r1, r3
d004b3ba:	d4fd      	bmi.n	d004b3b8 <sr_segment_dir+0x1c>
d004b3bc:	428b      	cmp	r3, r1
d004b3be:	dc02      	bgt.n	d004b3c6 <sr_segment_dir+0x2a>
d004b3c0:	1ac9      	subs	r1, r1, r3
d004b3c2:	428b      	cmp	r3, r1
d004b3c4:	ddfc      	ble.n	d004b3c0 <sr_segment_dir+0x24>
d004b3c6:	1c48      	adds	r0, r1, #1
d004b3c8:	4283      	cmp	r3, r0
d004b3ca:	dd52      	ble.n	d004b472 <sr_segment_dir+0xd6>
d004b3cc:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004b3d0:	eb02 0380 	add.w	r3, r2, r0, lsl #2
d004b3d4:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d004b3d8:	ed93 7a01 	vldr	s14, [r3, #4]
d004b3dc:	ed93 6a00 	vldr	s12, [r3]
d004b3e0:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d004b3e4:	edd3 6a02 	vldr	s13, [r3, #8]
d004b3e8:	eddf 5a33 	vldr	s11, [pc, #204]	; d004b4b8 <sr_segment_dir+0x11c>
d004b3ec:	edd1 7a01 	vldr	s15, [r1, #4]
d004b3f0:	ed91 5a00 	vldr	s10, [r1]
d004b3f4:	ee37 7a67 	vsub.f32	s14, s14, s15
d004b3f8:	edd1 7a02 	vldr	s15, [r1, #8]
d004b3fc:	ee36 6a45 	vsub.f32	s12, s12, s10
d004b400:	ee76 6ae7 	vsub.f32	s13, s13, s15
d004b404:	ee67 7a07 	vmul.f32	s15, s14, s14
d004b408:	eee6 7a06 	vfma.f32	s15, s12, s12
d004b40c:	eee6 7aa6 	vfma.f32	s15, s13, s13
d004b410:	eef4 7ae5 	vcmpe.f32	s15, s11
d004b414:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b418:	d940      	bls.n	d004b49c <sr_segment_dir+0x100>
d004b41a:	eddf 5a28 	vldr	s11, [pc, #160]	; d004b4bc <sr_segment_dir+0x120>
d004b41e:	eef4 7ae5 	vcmpe.f32	s15, s11
d004b422:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b426:	d426      	bmi.n	d004b476 <sr_segment_dir+0xda>
d004b428:	eddf 5a25 	vldr	s11, [pc, #148]	; d004b4c0 <sr_segment_dir+0x124>
d004b42c:	eef4 7a65 	vcmp.f32	s15, s11
d004b430:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b434:	dc1f      	bgt.n	d004b476 <sr_segment_dir+0xda>
d004b436:	ed8d 6a05 	vstr	s12, [sp, #20]
d004b43a:	ed8d 7a06 	vstr	s14, [sp, #24]
d004b43e:	edcd 6a07 	vstr	s13, [sp, #28]
d004b442:	e005      	b.n	d004b450 <sr_segment_dir+0xb4>
d004b444:	2300      	movs	r3, #0
d004b446:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d004b44a:	9305      	str	r3, [sp, #20]
d004b44c:	9207      	str	r2, [sp, #28]
d004b44e:	9306      	str	r3, [sp, #24]
d004b450:	ed9d 0a05 	vldr	s0, [sp, #20]
d004b454:	eddd 0a06 	vldr	s1, [sp, #24]
d004b458:	ed9d 1a07 	vldr	s2, [sp, #28]
d004b45c:	b008      	add	sp, #32
d004b45e:	4770      	bx	lr
d004b460:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004b464:	1e58      	subs	r0, r3, #1
d004b466:	4288      	cmp	r0, r1
d004b468:	dc01      	bgt.n	d004b46e <sr_segment_dir+0xd2>
d004b46a:	1e99      	subs	r1, r3, #2
d004b46c:	e7ae      	b.n	d004b3cc <sr_segment_dir+0x30>
d004b46e:	1c48      	adds	r0, r1, #1
d004b470:	e7ac      	b.n	d004b3cc <sr_segment_dir+0x30>
d004b472:	4613      	mov	r3, r2
d004b474:	e7ae      	b.n	d004b3d4 <sr_segment_dir+0x38>
d004b476:	eef1 5ae7 	vsqrt.f32	s11, s15
d004b47a:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d004b47e:	eec5 7a25 	vdiv.f32	s15, s10, s11
d004b482:	ee26 6a27 	vmul.f32	s12, s12, s15
d004b486:	ee27 7a27 	vmul.f32	s14, s14, s15
d004b48a:	ee66 6aa7 	vmul.f32	s13, s13, s15
d004b48e:	ed8d 6a05 	vstr	s12, [sp, #20]
d004b492:	ed8d 7a06 	vstr	s14, [sp, #24]
d004b496:	edcd 6a07 	vstr	s13, [sp, #28]
d004b49a:	e7d9      	b.n	d004b450 <sr_segment_dir+0xb4>
d004b49c:	ed9f 7a09 	vldr	s14, [pc, #36]	; d004b4c4 <sr_segment_dir+0x128>
d004b4a0:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004b4a4:	eeb0 6a47 	vmov.f32	s12, s14
d004b4a8:	ed8d 7a06 	vstr	s14, [sp, #24]
d004b4ac:	edcd 6a07 	vstr	s13, [sp, #28]
d004b4b0:	ed8d 6a05 	vstr	s12, [sp, #20]
d004b4b4:	e7cc      	b.n	d004b450 <sr_segment_dir+0xb4>
d004b4b6:	bf00      	nop
d004b4b8:	358637bd 	.word	0x358637bd
d004b4bc:	3f7fbe77 	.word	0x3f7fbe77
d004b4c0:	3f8020c5 	.word	0x3f8020c5
d004b4c4:	00000000 	.word	0x00000000

d004b4c8 <splineRailBuildTable>:
d004b4c8:	2800      	cmp	r0, #0
d004b4ca:	d05d      	beq.n	d004b588 <splineRailBuildTable+0xc0>
d004b4cc:	b5f0      	push	{r4, r5, r6, r7, lr}
d004b4ce:	6807      	ldr	r7, [r0, #0]
d004b4d0:	2f00      	cmp	r7, #0
d004b4d2:	d054      	beq.n	d004b57e <splineRailBuildTable+0xb6>
d004b4d4:	6846      	ldr	r6, [r0, #4]
d004b4d6:	2e01      	cmp	r6, #1
d004b4d8:	dd51      	ble.n	d004b57e <splineRailBuildTable+0xb6>
d004b4da:	7c03      	ldrb	r3, [r0, #16]
d004b4dc:	2b00      	cmp	r3, #0
d004b4de:	d04f      	beq.n	d004b580 <splineRailBuildTable+0xb8>
d004b4e0:	1c72      	adds	r2, r6, #1
d004b4e2:	46b6      	mov	lr, r6
d004b4e4:	f242 0154 	movw	r1, #8276	; 0x2054
d004b4e8:	eddf 7a28 	vldr	s15, [pc, #160]	; d004b58c <splineRailBuildTable+0xc4>
d004b4ec:	f1b3 0c00 	subs.w	ip, r3, #0
d004b4f0:	f242 0458 	movw	r4, #8280	; 0x2058
d004b4f4:	4401      	add	r1, r0
d004b4f6:	6502      	str	r2, [r0, #80]	; 0x50
d004b4f8:	edc0 7a15 	vstr	s15, [r0, #84]	; 0x54
d004b4fc:	eef0 5a67 	vmov.f32	s11, s15
d004b500:	bf18      	it	ne
d004b502:	f04f 0c01 	movne.w	ip, #1
d004b506:	4404      	add	r4, r0
d004b508:	f107 0314 	add.w	r3, r7, #20
d004b50c:	f100 0558 	add.w	r5, r0, #88	; 0x58
d004b510:	2200      	movs	r2, #0
d004b512:	edc1 7a00 	vstr	s15, [r1]
d004b516:	e02a      	b.n	d004b56e <splineRailBuildTable+0xa6>
d004b518:	f1bc 0f00 	cmp.w	ip, #0
d004b51c:	d02b      	beq.n	d004b576 <splineRailBuildTable+0xae>
d004b51e:	ed13 7a04 	vldr	s14, [r3, #-16]
d004b522:	4596      	cmp	lr, r2
d004b524:	edd1 7a01 	vldr	s15, [r1, #4]
d004b528:	f103 0314 	add.w	r3, r3, #20
d004b52c:	ed13 6a0a 	vldr	s12, [r3, #-40]	; 0xffffffd8
d004b530:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004b534:	edd1 6a00 	vldr	s13, [r1]
d004b538:	ed91 7a02 	vldr	s14, [r1, #8]
d004b53c:	ee76 6ac6 	vsub.f32	s13, s13, s12
d004b540:	ed13 6a08 	vldr	s12, [r3, #-32]	; 0xffffffe0
d004b544:	ee67 7aa7 	vmul.f32	s15, s15, s15
d004b548:	ee37 7a46 	vsub.f32	s14, s14, s12
d004b54c:	ee06 2a10 	vmov	s12, r2
d004b550:	eee6 7aa6 	vfma.f32	s15, s13, s13
d004b554:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004b558:	eca5 6a01 	vstmia	r5!, {s12}
d004b55c:	eee7 7a07 	vfma.f32	s15, s14, s14
d004b560:	eeb1 7ae7 	vsqrt.f32	s14, s15
d004b564:	ee75 5a87 	vadd.f32	s11, s11, s14
d004b568:	ece4 5a01 	vstmia	r4!, {s11}
d004b56c:	d005      	beq.n	d004b57a <splineRailBuildTable+0xb2>
d004b56e:	3201      	adds	r2, #1
d004b570:	4639      	mov	r1, r7
d004b572:	4296      	cmp	r6, r2
d004b574:	ddd0      	ble.n	d004b518 <splineRailBuildTable+0x50>
d004b576:	4619      	mov	r1, r3
d004b578:	e7d1      	b.n	d004b51e <splineRailBuildTable+0x56>
d004b57a:	edc0 5a13 	vstr	s11, [r0, #76]	; 0x4c
d004b57e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004b580:	f106 3eff 	add.w	lr, r6, #4294967295	; 0xffffffff
d004b584:	4632      	mov	r2, r6
d004b586:	e7ad      	b.n	d004b4e4 <splineRailBuildTable+0x1c>
d004b588:	4770      	bx	lr
d004b58a:	bf00      	nop
d004b58c:	00000000 	.word	0x00000000

d004b590 <splineRailDistanceToT>:
d004b590:	2800      	cmp	r0, #0
d004b592:	d053      	beq.n	d004b63c <splineRailDistanceToT+0xac>
d004b594:	b430      	push	{r4, r5}
d004b596:	6844      	ldr	r4, [r0, #4]
d004b598:	2c01      	cmp	r4, #1
d004b59a:	dd4b      	ble.n	d004b634 <splineRailDistanceToT+0xa4>
d004b59c:	7c03      	ldrb	r3, [r0, #16]
d004b59e:	6d05      	ldr	r5, [r0, #80]	; 0x50
d004b5a0:	b3c3      	cbz	r3, d004b614 <splineRailDistanceToT+0x84>
d004b5a2:	2d01      	cmp	r5, #1
d004b5a4:	dd46      	ble.n	d004b634 <splineRailDistanceToT+0xa4>
d004b5a6:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004b5aa:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d004b5ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b5b2:	d506      	bpl.n	d004b5c2 <splineRailDistanceToT+0x32>
d004b5b4:	ee30 0a27 	vadd.f32	s0, s0, s15
d004b5b8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004b5bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b5c0:	d4f8      	bmi.n	d004b5b4 <splineRailDistanceToT+0x24>
d004b5c2:	eef4 7ac0 	vcmpe.f32	s15, s0
d004b5c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b5ca:	d806      	bhi.n	d004b5da <splineRailDistanceToT+0x4a>
d004b5cc:	ee30 0a67 	vsub.f32	s0, s0, s15
d004b5d0:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004b5d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b5d8:	daf8      	bge.n	d004b5cc <splineRailDistanceToT+0x3c>
d004b5da:	f242 0154 	movw	r1, #8276	; 0x2054
d004b5de:	f242 0258 	movw	r2, #8280	; 0x2058
d004b5e2:	2300      	movs	r3, #0
d004b5e4:	4401      	add	r1, r0
d004b5e6:	4402      	add	r2, r0
d004b5e8:	ed91 7a00 	vldr	s14, [r1]
d004b5ec:	eef0 7a47 	vmov.f32	s15, s14
d004b5f0:	ecb2 7a01 	vldmia	r2!, {s14}
d004b5f4:	1c98      	adds	r0, r3, #2
d004b5f6:	1c59      	adds	r1, r3, #1
d004b5f8:	eeb4 0ac7 	vcmpe.f32	s0, s14
d004b5fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b600:	d91f      	bls.n	d004b642 <splineRailDistanceToT+0xb2>
d004b602:	4285      	cmp	r5, r0
d004b604:	460b      	mov	r3, r1
d004b606:	dcf1      	bgt.n	d004b5ec <splineRailDistanceToT+0x5c>
d004b608:	ee07 4a90 	vmov	s15, r4
d004b60c:	bc30      	pop	{r4, r5}
d004b60e:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
d004b612:	4770      	bx	lr
d004b614:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004b618:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b61c:	d90a      	bls.n	d004b634 <splineRailDistanceToT+0xa4>
d004b61e:	2d01      	cmp	r5, #1
d004b620:	dd08      	ble.n	d004b634 <splineRailDistanceToT+0xa4>
d004b622:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d004b626:	3c01      	subs	r4, #1
d004b628:	eef4 7ac0 	vcmpe.f32	s15, s0
d004b62c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b630:	d8d3      	bhi.n	d004b5da <splineRailDistanceToT+0x4a>
d004b632:	e7e9      	b.n	d004b608 <splineRailDistanceToT+0x78>
d004b634:	ed9f 0a0f 	vldr	s0, [pc, #60]	; d004b674 <splineRailDistanceToT+0xe4>
d004b638:	bc30      	pop	{r4, r5}
d004b63a:	4770      	bx	lr
d004b63c:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d004b674 <splineRailDistanceToT+0xe4>
d004b640:	4770      	bx	lr
d004b642:	ee37 7a67 	vsub.f32	s14, s14, s15
d004b646:	eddf 6a0c 	vldr	s13, [pc, #48]	; d004b678 <splineRailDistanceToT+0xe8>
d004b64a:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004b64e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b652:	dd0b      	ble.n	d004b66c <splineRailDistanceToT+0xdc>
d004b654:	ee70 7a67 	vsub.f32	s15, s0, s15
d004b658:	eec7 6a87 	vdiv.f32	s13, s15, s14
d004b65c:	ee07 3a90 	vmov	s15, r3
d004b660:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
d004b664:	bc30      	pop	{r4, r5}
d004b666:	ee30 0a26 	vadd.f32	s0, s0, s13
d004b66a:	4770      	bx	lr
d004b66c:	eddf 6a01 	vldr	s13, [pc, #4]	; d004b674 <splineRailDistanceToT+0xe4>
d004b670:	e7f4      	b.n	d004b65c <splineRailDistanceToT+0xcc>
d004b672:	bf00      	nop
d004b674:	00000000 	.word	0x00000000
d004b678:	358637bd 	.word	0x358637bd

d004b67c <splineRailSamplePos>:
d004b67c:	b088      	sub	sp, #32
d004b67e:	2800      	cmp	r0, #0
d004b680:	d049      	beq.n	d004b716 <splineRailSamplePos+0x9a>
d004b682:	6803      	ldr	r3, [r0, #0]
d004b684:	2b00      	cmp	r3, #0
d004b686:	d046      	beq.n	d004b716 <splineRailSamplePos+0x9a>
d004b688:	6842      	ldr	r2, [r0, #4]
d004b68a:	2a00      	cmp	r2, #0
d004b68c:	dd43      	ble.n	d004b716 <splineRailSamplePos+0x9a>
d004b68e:	2a01      	cmp	r2, #1
d004b690:	d052      	beq.n	d004b738 <splineRailSamplePos+0xbc>
d004b692:	7c01      	ldrb	r1, [r0, #16]
d004b694:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004b698:	2900      	cmp	r1, #0
d004b69a:	d153      	bne.n	d004b744 <splineRailSamplePos+0xc8>
d004b69c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b6a0:	d94a      	bls.n	d004b738 <splineRailSamplePos+0xbc>
d004b6a2:	1e51      	subs	r1, r2, #1
d004b6a4:	ee07 1a90 	vmov	s15, r1
d004b6a8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004b6ac:	eef4 7ac0 	vcmpe.f32	s15, s0
d004b6b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b6b4:	d93b      	bls.n	d004b72e <splineRailSamplePos+0xb2>
d004b6b6:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d004b6ba:	ee17 0a90 	vmov	r0, s15
d004b6be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004b6c2:	1c42      	adds	r2, r0, #1
d004b6c4:	ee30 0a67 	vsub.f32	s0, s0, s15
d004b6c8:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d004b6cc:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d004b6d0:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004b6d4:	ed92 5a00 	vldr	s10, [r2]
d004b6d8:	edd2 5a01 	vldr	s11, [r2, #4]
d004b6dc:	eb03 0380 	add.w	r3, r3, r0, lsl #2
d004b6e0:	ed92 6a02 	vldr	s12, [r2, #8]
d004b6e4:	edd3 6a00 	vldr	s13, [r3]
d004b6e8:	ed93 7a01 	vldr	s14, [r3, #4]
d004b6ec:	edd3 7a02 	vldr	s15, [r3, #8]
d004b6f0:	ee35 5a66 	vsub.f32	s10, s10, s13
d004b6f4:	ee75 5ac7 	vsub.f32	s11, s11, s14
d004b6f8:	ee36 6a67 	vsub.f32	s12, s12, s15
d004b6fc:	eee5 6a00 	vfma.f32	s13, s10, s0
d004b700:	eea5 7a80 	vfma.f32	s14, s11, s0
d004b704:	eee6 7a00 	vfma.f32	s15, s12, s0
d004b708:	edcd 6a05 	vstr	s13, [sp, #20]
d004b70c:	ed8d 7a06 	vstr	s14, [sp, #24]
d004b710:	edcd 7a07 	vstr	s15, [sp, #28]
d004b714:	e003      	b.n	d004b71e <splineRailSamplePos+0xa2>
d004b716:	2300      	movs	r3, #0
d004b718:	9305      	str	r3, [sp, #20]
d004b71a:	9306      	str	r3, [sp, #24]
d004b71c:	9307      	str	r3, [sp, #28]
d004b71e:	ed9d 0a05 	vldr	s0, [sp, #20]
d004b722:	eddd 0a06 	vldr	s1, [sp, #24]
d004b726:	ed9d 1a07 	vldr	s2, [sp, #28]
d004b72a:	b008      	add	sp, #32
d004b72c:	4770      	bx	lr
d004b72e:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d004b732:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d004b736:	3b14      	subs	r3, #20
d004b738:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004b73c:	ab08      	add	r3, sp, #32
d004b73e:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004b742:	e7ec      	b.n	d004b71e <splineRailSamplePos+0xa2>
d004b744:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b748:	d528      	bpl.n	d004b79c <splineRailSamplePos+0x120>
d004b74a:	ee07 2a90 	vmov	s15, r2
d004b74e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004b752:	ee30 0a27 	vadd.f32	s0, s0, s15
d004b756:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004b75a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b75e:	d4f8      	bmi.n	d004b752 <splineRailSamplePos+0xd6>
d004b760:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004b764:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b768:	db06      	blt.n	d004b778 <splineRailSamplePos+0xfc>
d004b76a:	ee30 0a67 	vsub.f32	s0, s0, s15
d004b76e:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004b772:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b776:	daf8      	bge.n	d004b76a <splineRailSamplePos+0xee>
d004b778:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d004b77c:	ee17 0a90 	vmov	r0, s15
d004b780:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004b784:	1c41      	adds	r1, r0, #1
d004b786:	ee30 0a67 	vsub.f32	s0, s0, s15
d004b78a:	428a      	cmp	r2, r1
d004b78c:	dc01      	bgt.n	d004b792 <splineRailSamplePos+0x116>
d004b78e:	461a      	mov	r2, r3
d004b790:	e79e      	b.n	d004b6d0 <splineRailSamplePos+0x54>
d004b792:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d004b796:	eb03 0281 	add.w	r2, r3, r1, lsl #2
d004b79a:	e799      	b.n	d004b6d0 <splineRailSamplePos+0x54>
d004b79c:	ee07 2a90 	vmov	s15, r2
d004b7a0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004b7a4:	e7dc      	b.n	d004b760 <splineRailSamplePos+0xe4>
d004b7a6:	bf00      	nop

d004b7a8 <splineRailSampleTangent>:
d004b7a8:	b510      	push	{r4, lr}
d004b7aa:	b08a      	sub	sp, #40	; 0x28
d004b7ac:	2800      	cmp	r0, #0
d004b7ae:	f000 8097 	beq.w	d004b8e0 <splineRailSampleTangent+0x138>
d004b7b2:	6803      	ldr	r3, [r0, #0]
d004b7b4:	4604      	mov	r4, r0
d004b7b6:	2b00      	cmp	r3, #0
d004b7b8:	f000 8092 	beq.w	d004b8e0 <splineRailSampleTangent+0x138>
d004b7bc:	6843      	ldr	r3, [r0, #4]
d004b7be:	2b01      	cmp	r3, #1
d004b7c0:	f340 80a9 	ble.w	d004b916 <splineRailSampleTangent+0x16e>
d004b7c4:	7c02      	ldrb	r2, [r0, #16]
d004b7c6:	2a00      	cmp	r2, #0
d004b7c8:	f000 8091 	beq.w	d004b8ee <splineRailSampleTangent+0x146>
d004b7cc:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004b7d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b7d4:	f140 80ba 	bpl.w	d004b94c <splineRailSampleTangent+0x1a4>
d004b7d8:	ee07 3a90 	vmov	s15, r3
d004b7dc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004b7e0:	ee30 0a27 	vadd.f32	s0, s0, s15
d004b7e4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004b7e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b7ec:	d4f8      	bmi.n	d004b7e0 <splineRailSampleTangent+0x38>
d004b7ee:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004b7f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b7f6:	db06      	blt.n	d004b806 <splineRailSampleTangent+0x5e>
d004b7f8:	ee30 0a67 	vsub.f32	s0, s0, s15
d004b7fc:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004b800:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b804:	daf8      	bge.n	d004b7f8 <splineRailSampleTangent+0x50>
d004b806:	eebd 3ac0 	vcvt.s32.f32	s6, s0
d004b80a:	4620      	mov	r0, r4
d004b80c:	eef8 4ac3 	vcvt.f32.s32	s9, s6
d004b810:	ee13 1a10 	vmov	r1, s6
d004b814:	ee70 4a64 	vsub.f32	s9, s0, s9
d004b818:	f7ff fdc0 	bl	d004b39c <sr_segment_dir>
d004b81c:	ee13 1a10 	vmov	r1, s6
d004b820:	4620      	mov	r0, r4
d004b822:	eeb0 3a40 	vmov.f32	s6, s0
d004b826:	3101      	adds	r1, #1
d004b828:	eeb0 4a60 	vmov.f32	s8, s1
d004b82c:	eef0 3a41 	vmov.f32	s7, s2
d004b830:	f7ff fdb4 	bl	d004b39c <sr_segment_dir>
d004b834:	eddf 7a48 	vldr	s15, [pc, #288]	; d004b958 <splineRailSampleTangent+0x1b0>
d004b838:	eeb0 7a40 	vmov.f32	s14, s0
d004b83c:	eef4 4ae7 	vcmpe.f32	s9, s15
d004b840:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b844:	d93e      	bls.n	d004b8c4 <splineRailSampleTangent+0x11c>
d004b846:	ee74 7ae7 	vsub.f32	s15, s9, s15
d004b84a:	ed9f 0a44 	vldr	s0, [pc, #272]	; d004b95c <splineRailSampleTangent+0x1b4>
d004b84e:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004b852:	eddf 5a43 	vldr	s11, [pc, #268]	; d004b960 <splineRailSampleTangent+0x1b8>
d004b856:	eef0 4a00 	vmov.f32	s9, #0	; 0x40000000  2.0
d004b85a:	ed9f 5a42 	vldr	s10, [pc, #264]	; d004b964 <splineRailSampleTangent+0x1bc>
d004b85e:	ee67 7a80 	vmul.f32	s15, s15, s0
d004b862:	eef0 6a08 	vmov.f32	s13, #8	; 0x40400000  3.0
d004b866:	ee70 0ac4 	vsub.f32	s1, s1, s8
d004b86a:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d004b86e:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d004b872:	eee7 6ae4 	vfms.f32	s13, s15, s9
d004b876:	ee67 7aa7 	vmul.f32	s15, s15, s15
d004b87a:	ee37 7a43 	vsub.f32	s14, s14, s6
d004b87e:	ee31 1a63 	vsub.f32	s2, s2, s7
d004b882:	ee67 7aa6 	vmul.f32	s15, s15, s13
d004b886:	eea7 4aa0 	vfma.f32	s8, s15, s1
d004b88a:	eea7 3a87 	vfma.f32	s6, s15, s14
d004b88e:	eee7 3a81 	vfma.f32	s7, s15, s2
d004b892:	ee64 7a04 	vmul.f32	s15, s8, s8
d004b896:	eee3 7a03 	vfma.f32	s15, s6, s6
d004b89a:	eee3 7aa3 	vfma.f32	s15, s7, s7
d004b89e:	eef4 7ac5 	vcmpe.f32	s15, s10
d004b8a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b8a6:	d93d      	bls.n	d004b924 <splineRailSampleTangent+0x17c>
d004b8a8:	ed9f 7a2f 	vldr	s14, [pc, #188]	; d004b968 <splineRailSampleTangent+0x1c0>
d004b8ac:	eef4 7ac7 	vcmpe.f32	s15, s14
d004b8b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b8b4:	d43d      	bmi.n	d004b932 <splineRailSampleTangent+0x18a>
d004b8b6:	ed9f 7a2d 	vldr	s14, [pc, #180]	; d004b96c <splineRailSampleTangent+0x1c4>
d004b8ba:	eef4 7a47 	vcmp.f32	s15, s14
d004b8be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b8c2:	dc36      	bgt.n	d004b932 <splineRailSampleTangent+0x18a>
d004b8c4:	ed8d 3a07 	vstr	s6, [sp, #28]
d004b8c8:	ed8d 4a08 	vstr	s8, [sp, #32]
d004b8cc:	edcd 3a09 	vstr	s7, [sp, #36]	; 0x24
d004b8d0:	ed9d 0a07 	vldr	s0, [sp, #28]
d004b8d4:	eddd 0a08 	vldr	s1, [sp, #32]
d004b8d8:	ed9d 1a09 	vldr	s2, [sp, #36]	; 0x24
d004b8dc:	b00a      	add	sp, #40	; 0x28
d004b8de:	bd10      	pop	{r4, pc}
d004b8e0:	2300      	movs	r3, #0
d004b8e2:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d004b8e6:	9307      	str	r3, [sp, #28]
d004b8e8:	9209      	str	r2, [sp, #36]	; 0x24
d004b8ea:	9308      	str	r3, [sp, #32]
d004b8ec:	e7f0      	b.n	d004b8d0 <splineRailSampleTangent+0x128>
d004b8ee:	3b01      	subs	r3, #1
d004b8f0:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d004b960 <splineRailSampleTangent+0x1b8>
d004b8f4:	ee07 3a90 	vmov	s15, r3
d004b8f8:	fe80 0a07 	vmaxnm.f32	s0, s0, s14
d004b8fc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004b900:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004b904:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004b908:	f6ff af7d 	blt.w	d004b806 <splineRailSampleTangent+0x5e>
d004b90c:	ed9f 0a18 	vldr	s0, [pc, #96]	; d004b970 <splineRailSampleTangent+0x1c8>
d004b910:	ee37 0ac0 	vsub.f32	s0, s15, s0
d004b914:	e777      	b.n	d004b806 <splineRailSampleTangent+0x5e>
d004b916:	ed9f 4a12 	vldr	s8, [pc, #72]	; d004b960 <splineRailSampleTangent+0x1b8>
d004b91a:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d004b91e:	eeb0 3a44 	vmov.f32	s6, s8
d004b922:	e7cf      	b.n	d004b8c4 <splineRailSampleTangent+0x11c>
d004b924:	eeb0 4a65 	vmov.f32	s8, s11
d004b928:	eef0 3a46 	vmov.f32	s7, s12
d004b92c:	eeb0 3a65 	vmov.f32	s6, s11
d004b930:	e7c8      	b.n	d004b8c4 <splineRailSampleTangent+0x11c>
d004b932:	eeb1 7ae7 	vsqrt.f32	s14, s15
d004b936:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004b93a:	eec6 7a87 	vdiv.f32	s15, s13, s14
d004b93e:	ee23 3a27 	vmul.f32	s6, s6, s15
d004b942:	ee24 4a27 	vmul.f32	s8, s8, s15
d004b946:	ee63 3aa7 	vmul.f32	s7, s7, s15
d004b94a:	e7bb      	b.n	d004b8c4 <splineRailSampleTangent+0x11c>
d004b94c:	ee07 3a90 	vmov	s15, r3
d004b950:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004b954:	e74b      	b.n	d004b7ee <splineRailSampleTangent+0x46>
d004b956:	bf00      	nop
d004b958:	3f333333 	.word	0x3f333333
d004b95c:	40555555 	.word	0x40555555
d004b960:	00000000 	.word	0x00000000
d004b964:	358637bd 	.word	0x358637bd
d004b968:	3f7fbe77 	.word	0x3f7fbe77
d004b96c:	3f8020c5 	.word	0x3f8020c5
d004b970:	38d1b717 	.word	0x38d1b717

d004b974 <splineRailInit>:
d004b974:	b338      	cbz	r0, d004b9c6 <splineRailInit+0x52>
d004b976:	3b00      	subs	r3, #0
d004b978:	6001      	str	r1, [r0, #0]
d004b97a:	f04f 4181 	mov.w	r1, #1082130432	; 0x40800000
d004b97e:	6042      	str	r2, [r0, #4]
d004b980:	bf18      	it	ne
d004b982:	2301      	movne	r3, #1
d004b984:	2200      	movs	r2, #0
d004b986:	6381      	str	r1, [r0, #56]	; 0x38
d004b988:	7403      	strb	r3, [r0, #16]
d004b98a:	2300      	movs	r3, #0
d004b98c:	490e      	ldr	r1, [pc, #56]	; (d004b9c8 <splineRailInit+0x54>)
d004b98e:	ed80 0a03 	vstr	s0, [r0, #12]
d004b992:	6083      	str	r3, [r0, #8]
d004b994:	6143      	str	r3, [r0, #20]
d004b996:	6183      	str	r3, [r0, #24]
d004b998:	61c3      	str	r3, [r0, #28]
d004b99a:	6243      	str	r3, [r0, #36]	; 0x24
d004b99c:	6403      	str	r3, [r0, #64]	; 0x40
d004b99e:	6483      	str	r3, [r0, #72]	; 0x48
d004b9a0:	64c3      	str	r3, [r0, #76]	; 0x4c
d004b9a2:	f880 2020 	strb.w	r2, [r0, #32]
d004b9a6:	6502      	str	r2, [r0, #80]	; 0x50
d004b9a8:	63c1      	str	r1, [r0, #60]	; 0x3c
d004b9aa:	b4f0      	push	{r4, r5, r6, r7}
d004b9ac:	4e07      	ldr	r6, [pc, #28]	; (d004b9cc <splineRailInit+0x58>)
d004b9ae:	f04f 4580 	mov.w	r5, #1073741824	; 0x40000000
d004b9b2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d004b9b6:	62c6      	str	r6, [r0, #44]	; 0x2c
d004b9b8:	6306      	str	r6, [r0, #48]	; 0x30
d004b9ba:	6345      	str	r5, [r0, #52]	; 0x34
d004b9bc:	6445      	str	r5, [r0, #68]	; 0x44
d004b9be:	6287      	str	r7, [r0, #40]	; 0x28
d004b9c0:	bcf0      	pop	{r4, r5, r6, r7}
d004b9c2:	f7ff bd81 	b.w	d004b4c8 <splineRailBuildTable>
d004b9c6:	4770      	bx	lr
d004b9c8:	3f4ccccd 	.word	0x3f4ccccd
d004b9cc:	40200000 	.word	0x40200000

d004b9d0 <splineRailSetTuning>:
d004b9d0:	b128      	cbz	r0, d004b9de <splineRailSetTuning+0xe>
d004b9d2:	ed80 0a0b 	vstr	s0, [r0, #44]	; 0x2c
d004b9d6:	edc0 0a0c 	vstr	s1, [r0, #48]	; 0x30
d004b9da:	ed80 1a11 	vstr	s2, [r0, #68]	; 0x44
d004b9de:	4770      	bx	lr

d004b9e0 <splineRailSetBanking>:
d004b9e0:	b128      	cbz	r0, d004b9ee <splineRailSetBanking+0xe>
d004b9e2:	ed80 0a0d 	vstr	s0, [r0, #52]	; 0x34
d004b9e6:	edc0 0a0e 	vstr	s1, [r0, #56]	; 0x38
d004b9ea:	ed80 1a0f 	vstr	s2, [r0, #60]	; 0x3c
d004b9ee:	4770      	bx	lr

d004b9f0 <splineRailUpdate>:
d004b9f0:	2800      	cmp	r0, #0
d004b9f2:	f000 8128 	beq.w	d004bc46 <splineRailUpdate+0x256>
d004b9f6:	b5f0      	push	{r4, r5, r6, r7, lr}
d004b9f8:	460d      	mov	r5, r1
d004b9fa:	b08d      	sub	sp, #52	; 0x34
d004b9fc:	2900      	cmp	r1, #0
d004b9fe:	f000 8120 	beq.w	d004bc42 <splineRailUpdate+0x252>
d004ba02:	6807      	ldr	r7, [r0, #0]
d004ba04:	4604      	mov	r4, r0
d004ba06:	2f00      	cmp	r7, #0
d004ba08:	f000 811b 	beq.w	d004bc42 <splineRailUpdate+0x252>
d004ba0c:	6846      	ldr	r6, [r0, #4]
d004ba0e:	2e01      	cmp	r6, #1
d004ba10:	f340 8117 	ble.w	d004bc42 <splineRailUpdate+0x252>
d004ba14:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004ba18:	eeb0 2a40 	vmov.f32	s4, s0
d004ba1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ba20:	f240 810f 	bls.w	d004bc42 <splineRailUpdate+0x252>
d004ba24:	6d03      	ldr	r3, [r0, #80]	; 0x50
d004ba26:	2b01      	cmp	r3, #1
d004ba28:	f340 810b 	ble.w	d004bc42 <splineRailUpdate+0x252>
d004ba2c:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d004ba30:	ed9f 7adc 	vldr	s14, [pc, #880]	; d004bda4 <splineRailUpdate+0x3b4>
d004ba34:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ba38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ba3c:	f240 8101 	bls.w	d004bc42 <splineRailUpdate+0x252>
d004ba40:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d004ba44:	2300      	movs	r3, #0
d004ba46:	ed90 6a02 	vldr	s12, [r0, #8]
d004ba4a:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d004ba4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ba52:	f340 80f9 	ble.w	d004bc48 <splineRailUpdate+0x258>
d004ba56:	ee37 7a40 	vsub.f32	s14, s14, s0
d004ba5a:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d004ba5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ba62:	f100 8115 	bmi.w	d004bc90 <splineRailUpdate+0x2a0>
d004ba66:	eeb0 0a46 	vmov.f32	s0, s12
d004ba6a:	ed80 7a09 	vstr	s14, [r0, #36]	; 0x24
d004ba6e:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d004ba72:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d004ba76:	ee16 2a10 	vmov	r2, s12
d004ba7a:	ee17 3a90 	vmov	r3, s15
d004ba7e:	429a      	cmp	r2, r3
d004ba80:	f040 814b 	bne.w	d004bd1a <splineRailUpdate+0x32a>
d004ba84:	4620      	mov	r0, r4
d004ba86:	f7ff fdf9 	bl	d004b67c <splineRailSamplePos>
d004ba8a:	eef0 7a40 	vmov.f32	s15, s0
d004ba8e:	4620      	mov	r0, r4
d004ba90:	ed94 0a02 	vldr	s0, [r4, #8]
d004ba94:	edcd 0a01 	vstr	s1, [sp, #4]
d004ba98:	edcd 7a00 	vstr	s15, [sp]
d004ba9c:	ed8d 1a02 	vstr	s2, [sp, #8]
d004baa0:	f7ff fe82 	bl	d004b7a8 <splineRailSampleTangent>
d004baa4:	ee20 7aa0 	vmul.f32	s14, s1, s1
d004baa8:	eddf 6abf 	vldr	s13, [pc, #764]	; d004bda8 <splineRailUpdate+0x3b8>
d004baac:	eef0 7a60 	vmov.f32	s15, s1
d004bab0:	edcd 0a07 	vstr	s1, [sp, #28]
d004bab4:	eef0 2a41 	vmov.f32	s5, s2
d004bab8:	ed8d 0a06 	vstr	s0, [sp, #24]
d004babc:	eea0 7a00 	vfma.f32	s14, s0, s0
d004bac0:	ed8d 1a08 	vstr	s2, [sp, #32]
d004bac4:	eef0 1a40 	vmov.f32	s3, s0
d004bac8:	eea1 7a01 	vfma.f32	s14, s2, s2
d004bacc:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004bad0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bad4:	f240 8102 	bls.w	d004bcdc <splineRailUpdate+0x2ec>
d004bad8:	eddf 6ab4 	vldr	s13, [pc, #720]	; d004bdac <splineRailUpdate+0x3bc>
d004badc:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004bae0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bae4:	f100 810c 	bmi.w	d004bd00 <splineRailUpdate+0x310>
d004bae8:	eddf 6ab1 	vldr	s13, [pc, #708]	; d004bdb0 <splineRailUpdate+0x3c0>
d004baec:	eeb4 7a66 	vcmp.f32	s14, s13
d004baf0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004baf4:	f300 8104 	bgt.w	d004bd00 <splineRailUpdate+0x310>
d004baf8:	ed9f 7aae 	vldr	s14, [pc, #696]	; d004bdb4 <splineRailUpdate+0x3c4>
d004bafc:	4620      	mov	r0, r4
d004bafe:	ed94 0a02 	vldr	s0, [r4, #8]
d004bb02:	edcd 7a04 	vstr	s15, [sp, #16]
d004bb06:	ee30 0a07 	vadd.f32	s0, s0, s14
d004bb0a:	edcd 1a03 	vstr	s3, [sp, #12]
d004bb0e:	edcd 2a05 	vstr	s5, [sp, #20]
d004bb12:	f7ff fe49 	bl	d004b7a8 <splineRailSampleTangent>
d004bb16:	ee20 7aa0 	vmul.f32	s14, s1, s1
d004bb1a:	eddf 6aa3 	vldr	s13, [pc, #652]	; d004bda8 <splineRailUpdate+0x3b8>
d004bb1e:	eef0 7a41 	vmov.f32	s15, s2
d004bb22:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d004bb26:	eeb0 5a40 	vmov.f32	s10, s0
d004bb2a:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d004bb2e:	eea0 7a00 	vfma.f32	s14, s0, s0
d004bb32:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004bb36:	eea1 7a01 	vfma.f32	s14, s2, s2
d004bb3a:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004bb3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bb42:	f240 80c6 	bls.w	d004bcd2 <splineRailUpdate+0x2e2>
d004bb46:	eddf 6a99 	vldr	s13, [pc, #612]	; d004bdac <splineRailUpdate+0x3bc>
d004bb4a:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004bb4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bb52:	f100 80ca 	bmi.w	d004bcea <splineRailUpdate+0x2fa>
d004bb56:	eddf 6a96 	vldr	s13, [pc, #600]	; d004bdb0 <splineRailUpdate+0x3c0>
d004bb5a:	eeb4 7a66 	vcmp.f32	s14, s13
d004bb5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bb62:	f300 80c2 	bgt.w	d004bcea <splineRailUpdate+0x2fa>
d004bb66:	f894 3020 	ldrb.w	r3, [r4, #32]
d004bb6a:	2b00      	cmp	r3, #0
d004bb6c:	f000 80f7 	beq.w	d004bd5e <splineRailUpdate+0x36e>
d004bb70:	ed95 7a00 	vldr	s14, [r5]
d004bb74:	4626      	mov	r6, r4
d004bb76:	ed9d 6a00 	vldr	s12, [sp]
d004bb7a:	ee61 1aa7 	vmul.f32	s3, s3, s15
d004bb7e:	edd5 6a01 	vldr	s13, [r5, #4]
d004bb82:	ee62 7a85 	vmul.f32	s15, s5, s10
d004bb86:	ee36 6a07 	vadd.f32	s12, s12, s14
d004bb8a:	ed94 7a02 	vldr	s14, [r4, #8]
d004bb8e:	eddd 5a01 	vldr	s11, [sp, #4]
d004bb92:	3614      	adds	r6, #20
d004bb94:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d004bb98:	ed95 5a02 	vldr	s10, [r5, #8]
d004bb9c:	ee75 5aa6 	vadd.f32	s11, s11, s13
d004bba0:	eddd 6a02 	vldr	s13, [sp, #8]
d004bba4:	6867      	ldr	r7, [r4, #4]
d004bba6:	466a      	mov	r2, sp
d004bba8:	ee17 3a10 	vmov	r3, s14
d004bbac:	ee76 6a85 	vadd.f32	s13, s13, s10
d004bbb0:	edd4 4a06 	vldr	s9, [r4, #24]
d004bbb4:	ee77 7ae1 	vsub.f32	s15, s15, s3
d004bbb8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d004bbbc:	ed96 5a00 	vldr	s10, [r6]
d004bbc0:	ed94 7a07 	vldr	s14, [r4, #28]
d004bbc4:	ee75 5ae4 	vsub.f32	s11, s11, s9
d004bbc8:	429f      	cmp	r7, r3
d004bbca:	ee36 6a45 	vsub.f32	s12, s12, s10
d004bbce:	ee36 7ac7 	vsub.f32	s14, s13, s14
d004bbd2:	edd4 2a0d 	vldr	s5, [r4, #52]	; 0x34
d004bbd6:	bfd8      	it	le
d004bbd8:	f107 33ff 	addle.w	r3, r7, #4294967295	; 0xffffffff
d004bbdc:	edc5 5a01 	vstr	s11, [r5, #4]
d004bbe0:	ed85 6a00 	vstr	s12, [r5]
d004bbe4:	ee67 7aa2 	vmul.f32	s15, s15, s5
d004bbe8:	ed85 7a02 	vstr	s14, [r5, #8]
d004bbec:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bbf0:	edd4 6a0f 	vldr	s13, [r4, #60]	; 0x3c
d004bbf4:	ca07      	ldmia	r2, {r0, r1, r2}
d004bbf6:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d004bbfa:	6822      	ldr	r2, [r4, #0]
d004bbfc:	eef1 1a66 	vneg.f32	s3, s13
d004bc00:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d004bc04:	ed93 7a04 	vldr	s14, [r3, #16]
d004bc08:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d004bc0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bc10:	bfd8      	it	le
d004bc12:	eeb7 7a00 	vmovle.f32	s14, #112	; 0x3f800000  1.0
d004bc16:	ee67 7a87 	vmul.f32	s15, s15, s14
d004bc1a:	eef4 1ae7 	vcmpe.f32	s3, s15
d004bc1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bc22:	dc01      	bgt.n	d004bc28 <splineRailUpdate+0x238>
d004bc24:	fec6 1ae7 	vminnm.f32	s3, s13, s15
d004bc28:	4629      	mov	r1, r5
d004bc2a:	4620      	mov	r0, r4
d004bc2c:	ed9d 0a03 	vldr	s0, [sp, #12]
d004bc30:	eddd 0a04 	vldr	s1, [sp, #16]
d004bc34:	ed9d 1a05 	vldr	s2, [sp, #20]
d004bc38:	b00d      	add	sp, #52	; 0x34
d004bc3a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d004bc3e:	f7ff bb01 	b.w	d004b244 <sr_steer_camera_to_tangent>
d004bc42:	b00d      	add	sp, #52	; 0x34
d004bc44:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004bc46:	4770      	bx	lr
d004bc48:	ed90 0a12 	vldr	s0, [r0, #72]	; 0x48
d004bc4c:	ed90 7a03 	vldr	s14, [r0, #12]
d004bc50:	7c03      	ldrb	r3, [r0, #16]
d004bc52:	eea7 0a02 	vfma.f32	s0, s14, s4
d004bc56:	ed80 0a12 	vstr	s0, [r0, #72]	; 0x48
d004bc5a:	b9eb      	cbnz	r3, d004bc98 <splineRailUpdate+0x2a8>
d004bc5c:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004bc60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bc64:	d505      	bpl.n	d004bc72 <splineRailUpdate+0x282>
d004bc66:	ed9f 7a54 	vldr	s14, [pc, #336]	; d004bdb8 <splineRailUpdate+0x3c8>
d004bc6a:	eeb0 0a47 	vmov.f32	s0, s14
d004bc6e:	ed80 7a12 	vstr	s14, [r0, #72]	; 0x48
d004bc72:	eef4 7ac0 	vcmpe.f32	s15, s0
d004bc76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bc7a:	d503      	bpl.n	d004bc84 <splineRailUpdate+0x294>
d004bc7c:	eeb0 0a67 	vmov.f32	s0, s15
d004bc80:	edc4 7a12 	vstr	s15, [r4, #72]	; 0x48
d004bc84:	4620      	mov	r0, r4
d004bc86:	f7ff fc83 	bl	d004b590 <splineRailDistanceToT>
d004bc8a:	ed84 0a02 	vstr	s0, [r4, #8]
d004bc8e:	e6ee      	b.n	d004ba6e <splineRailUpdate+0x7e>
d004bc90:	eeb0 0a46 	vmov.f32	s0, s12
d004bc94:	6243      	str	r3, [r0, #36]	; 0x24
d004bc96:	e6ea      	b.n	d004ba6e <splineRailUpdate+0x7e>
d004bc98:	eef4 7ac0 	vcmpe.f32	s15, s0
d004bc9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bca0:	d808      	bhi.n	d004bcb4 <splineRailUpdate+0x2c4>
d004bca2:	ee30 0a67 	vsub.f32	s0, s0, s15
d004bca6:	eef4 7ac0 	vcmpe.f32	s15, s0
d004bcaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bcae:	d9f8      	bls.n	d004bca2 <splineRailUpdate+0x2b2>
d004bcb0:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d004bcb4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004bcb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bcbc:	d5e2      	bpl.n	d004bc84 <splineRailUpdate+0x294>
d004bcbe:	ee30 0a27 	vadd.f32	s0, s0, s15
d004bcc2:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004bcc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bcca:	d4f8      	bmi.n	d004bcbe <splineRailUpdate+0x2ce>
d004bccc:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d004bcd0:	e7d8      	b.n	d004bc84 <splineRailUpdate+0x294>
d004bcd2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004bcd6:	ed9f 5a38 	vldr	s10, [pc, #224]	; d004bdb8 <splineRailUpdate+0x3c8>
d004bcda:	e744      	b.n	d004bb66 <splineRailUpdate+0x176>
d004bcdc:	eddf 7a36 	vldr	s15, [pc, #216]	; d004bdb8 <splineRailUpdate+0x3c8>
d004bce0:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d004bce4:	eef0 1a67 	vmov.f32	s3, s15
d004bce8:	e706      	b.n	d004baf8 <splineRailUpdate+0x108>
d004bcea:	eef1 7ac7 	vsqrt.f32	s15, s14
d004bcee:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004bcf2:	ee86 7aa7 	vdiv.f32	s14, s13, s15
d004bcf6:	ee20 5a07 	vmul.f32	s10, s0, s14
d004bcfa:	ee61 7a07 	vmul.f32	s15, s2, s14
d004bcfe:	e732      	b.n	d004bb66 <splineRailUpdate+0x176>
d004bd00:	eef1 7ac7 	vsqrt.f32	s15, s14
d004bd04:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004bd08:	eec7 2a27 	vdiv.f32	s5, s14, s15
d004bd0c:	ee60 1a22 	vmul.f32	s3, s0, s5
d004bd10:	ee60 7aa2 	vmul.f32	s15, s1, s5
d004bd14:	ee61 2a22 	vmul.f32	s5, s2, s5
d004bd18:	e6ee      	b.n	d004baf8 <splineRailUpdate+0x108>
d004bd1a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004bd1e:	7c22      	ldrb	r2, [r4, #16]
d004bd20:	ee70 7a27 	vadd.f32	s15, s0, s15
d004bd24:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004bd28:	ee17 3a90 	vmov	r3, s15
d004bd2c:	b372      	cbz	r2, d004bd8c <splineRailUpdate+0x39c>
d004bd2e:	429e      	cmp	r6, r3
d004bd30:	dc33      	bgt.n	d004bd9a <splineRailUpdate+0x3aa>
d004bd32:	1b9b      	subs	r3, r3, r6
d004bd34:	429e      	cmp	r6, r3
d004bd36:	ddfc      	ble.n	d004bd32 <splineRailUpdate+0x342>
d004bd38:	6aa2      	ldr	r2, [r4, #40]	; 0x28
d004bd3a:	429a      	cmp	r2, r3
d004bd3c:	f43f aea2 	beq.w	d004ba84 <splineRailUpdate+0x94>
d004bd40:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004bd44:	62a3      	str	r3, [r4, #40]	; 0x28
d004bd46:	eb07 0782 	add.w	r7, r7, r2, lsl #2
d004bd4a:	edd7 7a03 	vldr	s15, [r7, #12]
d004bd4e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004bd52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bd56:	bfc8      	it	gt
d004bd58:	edc4 7a09 	vstrgt	s15, [r4, #36]	; 0x24
d004bd5c:	e692      	b.n	d004ba84 <splineRailUpdate+0x94>
d004bd5e:	466b      	mov	r3, sp
d004bd60:	f104 0614 	add.w	r6, r4, #20
d004bd64:	eddf 1a14 	vldr	s3, [pc, #80]	; d004bdb8 <splineRailUpdate+0x3c8>
d004bd68:	ed9d 0a03 	vldr	s0, [sp, #12]
d004bd6c:	eddd 0a04 	vldr	s1, [sp, #16]
d004bd70:	ed9d 1a05 	vldr	s2, [sp, #20]
d004bd74:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004bd78:	2301      	movs	r3, #1
d004bd7a:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d004bd7e:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d004bd82:	4629      	mov	r1, r5
d004bd84:	4620      	mov	r0, r4
d004bd86:	f884 3020 	strb.w	r3, [r4, #32]
d004bd8a:	e755      	b.n	d004bc38 <splineRailUpdate+0x248>
d004bd8c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d004bd90:	429e      	cmp	r6, r3
d004bd92:	bfd8      	it	le
d004bd94:	f106 33ff 	addle.w	r3, r6, #4294967295	; 0xffffffff
d004bd98:	e7ce      	b.n	d004bd38 <splineRailUpdate+0x348>
d004bd9a:	2b00      	cmp	r3, #0
d004bd9c:	dacc      	bge.n	d004bd38 <splineRailUpdate+0x348>
d004bd9e:	199b      	adds	r3, r3, r6
d004bda0:	d4fd      	bmi.n	d004bd9e <splineRailUpdate+0x3ae>
d004bda2:	e7c9      	b.n	d004bd38 <splineRailUpdate+0x348>
d004bda4:	38d1b717 	.word	0x38d1b717
d004bda8:	358637bd 	.word	0x358637bd
d004bdac:	3f7fbe77 	.word	0x3f7fbe77
d004bdb0:	3f8020c5 	.word	0x3f8020c5
d004bdb4:	3e19999a 	.word	0x3e19999a
d004bdb8:	00000000 	.word	0x00000000

d004bdbc <splineRailGetCurrentNode>:
d004bdbc:	b188      	cbz	r0, d004bde2 <splineRailGetCurrentNode+0x26>
d004bdbe:	6803      	ldr	r3, [r0, #0]
d004bdc0:	b173      	cbz	r3, d004bde0 <splineRailGetCurrentNode+0x24>
d004bdc2:	6843      	ldr	r3, [r0, #4]
d004bdc4:	2b01      	cmp	r3, #1
d004bdc6:	dd0b      	ble.n	d004bde0 <splineRailGetCurrentNode+0x24>
d004bdc8:	edd0 7a02 	vldr	s15, [r0, #8]
d004bdcc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004bdd0:	ee17 0a90 	vmov	r0, s15
d004bdd4:	2800      	cmp	r0, #0
d004bdd6:	db03      	blt.n	d004bde0 <splineRailGetCurrentNode+0x24>
d004bdd8:	4283      	cmp	r3, r0
d004bdda:	dc02      	bgt.n	d004bde2 <splineRailGetCurrentNode+0x26>
d004bddc:	1e58      	subs	r0, r3, #1
d004bdde:	4770      	bx	lr
d004bde0:	2000      	movs	r0, #0
d004bde2:	4770      	bx	lr

d004bde4 <initSystem>:
d004bde4:	b570      	push	{r4, r5, r6, lr}
d004bde6:	4c40      	ldr	r4, [pc, #256]	; (d004bee8 <initSystem+0x104>)
d004bde8:	b082      	sub	sp, #8
d004bdea:	2000      	movs	r0, #0
d004bdec:	2600      	movs	r6, #0
d004bdee:	7823      	ldrb	r3, [r4, #0]
d004bdf0:	7862      	ldrb	r2, [r4, #1]
d004bdf2:	78a1      	ldrb	r1, [r4, #2]
d004bdf4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004bdf8:	78e2      	ldrb	r2, [r4, #3]
d004bdfa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004bdfe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004be02:	681b      	ldr	r3, [r3, #0]
d004be04:	4798      	blx	r3
d004be06:	f7ff f919 	bl	d004b03c <initMalloc>
d004be0a:	7b23      	ldrb	r3, [r4, #12]
d004be0c:	7b62      	ldrb	r2, [r4, #13]
d004be0e:	2130      	movs	r1, #48	; 0x30
d004be10:	7ba5      	ldrb	r5, [r4, #14]
d004be12:	20dc      	movs	r0, #220	; 0xdc
d004be14:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004be18:	7be2      	ldrb	r2, [r4, #15]
d004be1a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004be1e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004be22:	681b      	ldr	r3, [r3, #0]
d004be24:	691b      	ldr	r3, [r3, #16]
d004be26:	4798      	blx	r3
d004be28:	7b23      	ldrb	r3, [r4, #12]
d004be2a:	7b62      	ldrb	r2, [r4, #13]
d004be2c:	2000      	movs	r0, #0
d004be2e:	7ba1      	ldrb	r1, [r4, #14]
d004be30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004be34:	7be2      	ldrb	r2, [r4, #15]
d004be36:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004be3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004be3e:	681b      	ldr	r3, [r3, #0]
d004be40:	689b      	ldr	r3, [r3, #8]
d004be42:	4798      	blx	r3
d004be44:	7b25      	ldrb	r5, [r4, #12]
d004be46:	7b62      	ldrb	r2, [r4, #13]
d004be48:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004be4c:	7ba1      	ldrb	r1, [r4, #14]
d004be4e:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d004be52:	7be0      	ldrb	r0, [r4, #15]
d004be54:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004be58:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d004be5c:	4619      	mov	r1, r3
d004be5e:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004be62:	4610      	mov	r0, r2
d004be64:	682d      	ldr	r5, [r5, #0]
d004be66:	9600      	str	r6, [sp, #0]
d004be68:	696d      	ldr	r5, [r5, #20]
d004be6a:	47a8      	blx	r5
d004be6c:	7d23      	ldrb	r3, [r4, #20]
d004be6e:	7d62      	ldrb	r2, [r4, #21]
d004be70:	f44f 7000 	mov.w	r0, #512	; 0x200
d004be74:	7da1      	ldrb	r1, [r4, #22]
d004be76:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004be7a:	7de2      	ldrb	r2, [r4, #23]
d004be7c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004be80:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004be84:	681b      	ldr	r3, [r3, #0]
d004be86:	681b      	ldr	r3, [r3, #0]
d004be88:	4798      	blx	r3
d004be8a:	7d22      	ldrb	r2, [r4, #20]
d004be8c:	7d63      	ldrb	r3, [r4, #21]
d004be8e:	2101      	movs	r1, #1
d004be90:	7da5      	ldrb	r5, [r4, #22]
d004be92:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d004be96:	7de0      	ldrb	r0, [r4, #23]
d004be98:	7b23      	ldrb	r3, [r4, #12]
d004be9a:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d004be9e:	7b66      	ldrb	r6, [r4, #13]
d004bea0:	7ba5      	ldrb	r5, [r4, #14]
d004bea2:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d004bea6:	7be0      	ldrb	r0, [r4, #15]
d004bea8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d004beac:	6812      	ldr	r2, [r2, #0]
d004beae:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004beb2:	6852      	ldr	r2, [r2, #4]
d004beb4:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004beb8:	7011      	strb	r1, [r2, #0]
d004beba:	681b      	ldr	r3, [r3, #0]
d004bebc:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d004bebe:	4798      	blx	r3
d004bec0:	7b23      	ldrb	r3, [r4, #12]
d004bec2:	7b62      	ldrb	r2, [r4, #13]
d004bec4:	7ba5      	ldrb	r5, [r4, #14]
d004bec6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004beca:	7be2      	ldrb	r2, [r4, #15]
d004becc:	4907      	ldr	r1, [pc, #28]	; (d004beec <initSystem+0x108>)
d004bece:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004bed2:	6008      	str	r0, [r1, #0]
d004bed4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004bed8:	681b      	ldr	r3, [r3, #0]
d004beda:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d004bedc:	4798      	blx	r3
d004bede:	4b04      	ldr	r3, [pc, #16]	; (d004bef0 <initSystem+0x10c>)
d004bee0:	6018      	str	r0, [r3, #0]
d004bee2:	b002      	add	sp, #8
d004bee4:	bd70      	pop	{r4, r5, r6, pc}
d004bee6:	bf00      	nop
d004bee8:	2001f000 	.word	0x2001f000
d004beec:	d00f4ae0 	.word	0xd00f4ae0
d004bef0:	d00f4ac0 	.word	0xd00f4ac0

d004bef4 <weatherLightning>:
d004bef4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004bef8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004befc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bf00:	4605      	mov	r5, r0
d004bf02:	d930      	bls.n	d004bf66 <weatherLightning+0x72>
d004bf04:	eddf 7ab6 	vldr	s15, [pc, #728]	; d004c1e0 <weatherLightning+0x2ec>
d004bf08:	fe80 0a67 	vminnm.f32	s0, s0, s15
d004bf0c:	4eb5      	ldr	r6, [pc, #724]	; (d004c1e4 <weatherLightning+0x2f0>)
d004bf0e:	4fb6      	ldr	r7, [pc, #728]	; (d004c1e8 <weatherLightning+0x2f4>)
d004bf10:	6833      	ldr	r3, [r6, #0]
d004bf12:	683a      	ldr	r2, [r7, #0]
d004bf14:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004bf18:	2a01      	cmp	r2, #1
d004bf1a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004bf1e:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004bf22:	6033      	str	r3, [r6, #0]
d004bf24:	d022      	beq.n	d004bf6c <weatherLightning+0x78>
d004bf26:	2a02      	cmp	r2, #2
d004bf28:	f000 8087 	beq.w	d004c03a <weatherLightning+0x146>
d004bf2c:	4caf      	ldr	r4, [pc, #700]	; (d004c1ec <weatherLightning+0x2f8>)
d004bf2e:	2100      	movs	r1, #0
d004bf30:	b2e8      	uxtb	r0, r5
d004bf32:	edd4 7a00 	vldr	s15, [r4]
d004bf36:	ee37 0ac0 	vsub.f32	s0, s15, s0
d004bf3a:	ed84 0a00 	vstr	s0, [r4]
d004bf3e:	f006 fb89 	bl	d0052654 <lightEnable>
d004bf42:	4628      	mov	r0, r5
d004bf44:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d004c1f0 <weatherLightning+0x2fc>
d004bf48:	f006 fc1a 	bl	d0052780 <lightSetIntensity>
d004bf4c:	edd4 7a00 	vldr	s15, [r4]
d004bf50:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004bf54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bf58:	f240 80d6 	bls.w	d004c108 <weatherLightning+0x214>
d004bf5c:	f04f 0800 	mov.w	r8, #0
d004bf60:	4640      	mov	r0, r8
d004bf62:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004bf66:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d004c1f4 <weatherLightning+0x300>
d004bf6a:	e7cf      	b.n	d004bf0c <weatherLightning+0x18>
d004bf6c:	4aa2      	ldr	r2, [pc, #648]	; (d004c1f8 <weatherLightning+0x304>)
d004bf6e:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d004bf72:	f8df a2b4 	ldr.w	sl, [pc, #692]	; d004c228 <weatherLightning+0x334>
d004bf76:	ed92 7a00 	vldr	s14, [r2]
d004bf7a:	2200      	movs	r2, #0
d004bf7c:	edda 7a00 	vldr	s15, [sl]
d004bf80:	ee66 6ac7 	vnmul.f32	s13, s13, s14
d004bf84:	f8df 9284 	ldr.w	r9, [pc, #644]	; d004c20c <weatherLightning+0x318>
d004bf88:	ed99 7a00 	vldr	s14, [r9]
d004bf8c:	eee6 7a80 	vfma.f32	s15, s13, s0
d004bf90:	ee37 0a40 	vsub.f32	s0, s14, s0
d004bf94:	ed89 0a00 	vstr	s0, [r9]
d004bf98:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004bf9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bfa0:	f100 80ad 	bmi.w	d004c0fe <weatherLightning+0x20a>
d004bfa4:	bfcc      	ite	gt
d004bfa6:	f04f 0801 	movgt.w	r8, #1
d004bfaa:	f04f 0800 	movle.w	r8, #0
d004bfae:	edca 7a00 	vstr	s15, [sl]
d004bfb2:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004bfb6:	2101      	movs	r1, #1
d004bfb8:	fa5f fb85 	uxtb.w	fp, r5
d004bfbc:	ea83 4453 	eor.w	r4, r3, r3, lsr #17
d004bfc0:	4658      	mov	r0, fp
d004bfc2:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d004bfc6:	6034      	str	r4, [r6, #0]
d004bfc8:	b2e4      	uxtb	r4, r4
d004bfca:	f006 fb43 	bl	d0052654 <lightEnable>
d004bfce:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d004c1fc <weatherLightning+0x308>
d004bfd2:	ee07 4a90 	vmov	s15, r4
d004bfd6:	ed9a 0a00 	vldr	s0, [sl]
d004bfda:	4628      	mov	r0, r5
d004bfdc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004bfe0:	eea7 0a87 	vfma.f32	s0, s15, s14
d004bfe4:	f006 fbcc 	bl	d0052780 <lightSetIntensity>
d004bfe8:	edd9 7a00 	vldr	s15, [r9]
d004bfec:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004bff0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bff4:	d8b4      	bhi.n	d004bf60 <weatherLightning+0x6c>
d004bff6:	4a82      	ldr	r2, [pc, #520]	; (d004c200 <weatherLightning+0x30c>)
d004bff8:	6813      	ldr	r3, [r2, #0]
d004bffa:	3b01      	subs	r3, #1
d004bffc:	2b00      	cmp	r3, #0
d004bffe:	6013      	str	r3, [r2, #0]
d004c000:	6833      	ldr	r3, [r6, #0]
d004c002:	f340 80ca 	ble.w	d004c19a <weatherLightning+0x2a6>
d004c006:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004c00a:	2202      	movs	r2, #2
d004c00c:	eddf 6a7d 	vldr	s13, [pc, #500]	; d004c204 <weatherLightning+0x310>
d004c010:	4640      	mov	r0, r8
d004c012:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004c016:	603a      	str	r2, [r7, #0]
d004c018:	eddf 7a7b 	vldr	s15, [pc, #492]	; d004c208 <weatherLightning+0x314>
d004c01c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004c020:	f3c3 0209 	ubfx	r2, r3, #0, #10
d004c024:	6033      	str	r3, [r6, #0]
d004c026:	ee07 2a10 	vmov	s14, r2
d004c02a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004c02e:	eee7 7a26 	vfma.f32	s15, s14, s13
d004c032:	edc9 7a00 	vstr	s15, [r9]
d004c036:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004c03a:	4c74      	ldr	r4, [pc, #464]	; (d004c20c <weatherLightning+0x318>)
d004c03c:	2100      	movs	r1, #0
d004c03e:	b2e8      	uxtb	r0, r5
d004c040:	edd4 7a00 	vldr	s15, [r4]
d004c044:	ee37 0ac0 	vsub.f32	s0, s15, s0
d004c048:	ed84 0a00 	vstr	s0, [r4]
d004c04c:	f006 fb02 	bl	d0052654 <lightEnable>
d004c050:	4628      	mov	r0, r5
d004c052:	ed9f 0a67 	vldr	s0, [pc, #412]	; d004c1f0 <weatherLightning+0x2fc>
d004c056:	f006 fb93 	bl	d0052780 <lightSetIntensity>
d004c05a:	edd4 7a00 	vldr	s15, [r4]
d004c05e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004c062:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004c066:	f63f af79 	bhi.w	d004bf5c <weatherLightning+0x68>
d004c06a:	6833      	ldr	r3, [r6, #0]
d004c06c:	2201      	movs	r2, #1
d004c06e:	eddf 4a68 	vldr	s9, [pc, #416]	; d004c210 <weatherLightning+0x31c>
d004c072:	f04f 0800 	mov.w	r8, #0
d004c076:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004c07a:	603a      	str	r2, [r7, #0]
d004c07c:	ed9f 7a65 	vldr	s14, [pc, #404]	; d004c214 <weatherLightning+0x320>
d004c080:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004c084:	ed9f 5a64 	vldr	s10, [pc, #400]	; d004c218 <weatherLightning+0x324>
d004c088:	ed9f 6a64 	vldr	s12, [pc, #400]	; d004c21c <weatherLightning+0x328>
d004c08c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004c090:	eddf 5a63 	vldr	s11, [pc, #396]	; d004c220 <weatherLightning+0x32c>
d004c094:	eddf 6a63 	vldr	s13, [pc, #396]	; d004c224 <weatherLightning+0x330>
d004c098:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d004c09c:	f3c3 0309 	ubfx	r3, r3, #0, #10
d004c0a0:	4855      	ldr	r0, [pc, #340]	; (d004c1f8 <weatherLightning+0x304>)
d004c0a2:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004c0a6:	ee07 3a90 	vmov	s15, r3
d004c0aa:	495f      	ldr	r1, [pc, #380]	; (d004c228 <weatherLightning+0x334>)
d004c0ac:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d004c0b0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c0b4:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d004c0b8:	b2db      	uxtb	r3, r3
d004c0ba:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004c0be:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004c0c2:	ee07 3a90 	vmov	s15, r3
d004c0c6:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d004c0ca:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c0ce:	f3c3 0209 	ubfx	r2, r3, #0, #10
d004c0d2:	6033      	str	r3, [r6, #0]
d004c0d4:	eea7 6a85 	vfma.f32	s12, s15, s10
d004c0d8:	eef0 7a46 	vmov.f32	s15, s12
d004c0dc:	ee06 2a10 	vmov	s12, r2
d004c0e0:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004c0e4:	ee67 7a27 	vmul.f32	s15, s14, s15
d004c0e8:	eee6 6a25 	vfma.f32	s13, s12, s11
d004c0ec:	edc0 7a00 	vstr	s15, [r0]
d004c0f0:	4640      	mov	r0, r8
d004c0f2:	edc1 7a00 	vstr	s15, [r1]
d004c0f6:	edc4 6a00 	vstr	s13, [r4]
d004c0fa:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004c0fe:	f04f 0800 	mov.w	r8, #0
d004c102:	f8ca 2000 	str.w	r2, [sl]
d004c106:	e754      	b.n	d004bfb2 <weatherLightning+0xbe>
d004c108:	6833      	ldr	r3, [r6, #0]
d004c10a:	2201      	movs	r2, #1
d004c10c:	4947      	ldr	r1, [pc, #284]	; (d004c22c <weatherLightning+0x338>)
d004c10e:	f04f 0800 	mov.w	r8, #0
d004c112:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004c116:	603a      	str	r2, [r7, #0]
d004c118:	eddf 5a3d 	vldr	s11, [pc, #244]	; d004c210 <weatherLightning+0x31c>
d004c11c:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004c120:	ed9f 7a3c 	vldr	s14, [pc, #240]	; d004c214 <weatherLightning+0x320>
d004c124:	ed9f 6a3e 	vldr	s12, [pc, #248]	; d004c220 <weatherLightning+0x32c>
d004c128:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004c12c:	eddf 6a3d 	vldr	s13, [pc, #244]	; d004c224 <weatherLightning+0x330>
d004c130:	4c31      	ldr	r4, [pc, #196]	; (d004c1f8 <weatherLightning+0x304>)
d004c132:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d004c136:	fba1 0103 	umull	r0, r1, r1, r3
d004c13a:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004c13e:	f021 0003 	bic.w	r0, r1, #3
d004c142:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d004c146:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d004c14a:	ea82 3142 	eor.w	r1, r2, r2, lsl #13
d004c14e:	f3c2 0209 	ubfx	r2, r2, #0, #10
d004c152:	1a1b      	subs	r3, r3, r0
d004c154:	482d      	ldr	r0, [pc, #180]	; (d004c20c <weatherLightning+0x318>)
d004c156:	ee07 2a90 	vmov	s15, r2
d004c15a:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d004c15e:	3302      	adds	r3, #2
d004c160:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c164:	ea81 1241 	eor.w	r2, r1, r1, lsl #5
d004c168:	492f      	ldr	r1, [pc, #188]	; (d004c228 <weatherLightning+0x334>)
d004c16a:	f3c2 0509 	ubfx	r5, r2, #0, #10
d004c16e:	6032      	str	r2, [r6, #0]
d004c170:	eea7 7aa5 	vfma.f32	s14, s15, s11
d004c174:	4a22      	ldr	r2, [pc, #136]	; (d004c200 <weatherLightning+0x30c>)
d004c176:	6013      	str	r3, [r2, #0]
d004c178:	eef0 7a47 	vmov.f32	s15, s14
d004c17c:	ee07 5a10 	vmov	s14, r5
d004c180:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004c184:	edc4 7a00 	vstr	s15, [r4]
d004c188:	edc1 7a00 	vstr	s15, [r1]
d004c18c:	eee7 6a06 	vfma.f32	s13, s14, s12
d004c190:	edc0 6a00 	vstr	s13, [r0]
d004c194:	4640      	mov	r0, r8
d004c196:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004c19a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004c19e:	eddf 6a24 	vldr	s13, [pc, #144]	; d004c230 <weatherLightning+0x33c>
d004c1a2:	eddf 7a24 	vldr	s15, [pc, #144]	; d004c234 <weatherLightning+0x340>
d004c1a6:	4658      	mov	r0, fp
d004c1a8:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004c1ac:	4a0f      	ldr	r2, [pc, #60]	; (d004c1ec <weatherLightning+0x2f8>)
d004c1ae:	2100      	movs	r1, #0
d004c1b0:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004c1b4:	f3c3 040a 	ubfx	r4, r3, #0, #11
d004c1b8:	6033      	str	r3, [r6, #0]
d004c1ba:	ee07 4a10 	vmov	s14, r4
d004c1be:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004c1c2:	eee7 7a26 	vfma.f32	s15, s14, s13
d004c1c6:	edc2 7a00 	vstr	s15, [r2]
d004c1ca:	f006 fa43 	bl	d0052654 <lightEnable>
d004c1ce:	4628      	mov	r0, r5
d004c1d0:	ed9f 0a07 	vldr	s0, [pc, #28]	; d004c1f0 <weatherLightning+0x2fc>
d004c1d4:	f006 fad4 	bl	d0052780 <lightSetIntensity>
d004c1d8:	2300      	movs	r3, #0
d004c1da:	603b      	str	r3, [r7, #0]
d004c1dc:	e6c0      	b.n	d004bf60 <weatherLightning+0x6c>
d004c1de:	bf00      	nop
d004c1e0:	3dcccccd 	.word	0x3dcccccd
d004c1e4:	d005a3d0 	.word	0xd005a3d0
d004c1e8:	d005a690 	.word	0xd005a690
d004c1ec:	d005a3c8 	.word	0xd005a3c8
d004c1f0:	00000000 	.word	0x00000000
d004c1f4:	3c83126f 	.word	0x3c83126f
d004c1f8:	d005a508 	.word	0xd005a508
d004c1fc:	3ab3e71b 	.word	0x3ab3e71b
d004c200:	d005a50c 	.word	0xd005a50c
d004c204:	38cd000c 	.word	0x38cd000c
d004c208:	3ca3d70a 	.word	0x3ca3d70a
d004c20c:	d005a694 	.word	0xd005a694
d004c210:	3ad9d00e 	.word	0x3ad9d00e
d004c214:	3e99999a 	.word	0x3e99999a
d004c218:	3b33e71b 	.word	0x3b33e71b
d004c21c:	3f266666 	.word	0x3f266666
d004c220:	3776000e 	.word	0x3776000e
d004c224:	3ccccccd 	.word	0x3ccccccd
d004c228:	d005a504 	.word	0xd005a504
d004c22c:	cccccccd 	.word	0xcccccccd
d004c230:	3aace269 	.word	0x3aace269
d004c234:	3f4ccccd 	.word	0x3f4ccccd

d004c238 <initImpactFlames>:
d004c238:	eddf 7a5b 	vldr	s15, [pc, #364]	; d004c3a8 <initImpactFlames+0x170>
d004c23c:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d004c240:	4b5a      	ldr	r3, [pc, #360]	; (d004c3ac <initImpactFlames+0x174>)
d004c242:	2100      	movs	r1, #0
d004c244:	b570      	push	{r4, r5, r6, lr}
d004c246:	4c5a      	ldr	r4, [pc, #360]	; (d004c3b0 <initImpactFlames+0x178>)
d004c248:	4d5a      	ldr	r5, [pc, #360]	; (d004c3b4 <initImpactFlames+0x17c>)
d004c24a:	f104 0680 	add.w	r6, r4, #128	; 0x80
d004c24e:	ed2d 8b02 	vpush	{d8}
d004c252:	eeb0 8a67 	vmov.f32	s16, s15
d004c256:	b086      	sub	sp, #24
d004c258:	edc3 7a01 	vstr	s15, [r3, #4]
d004c25c:	edc3 7a02 	vstr	s15, [r3, #8]
d004c260:	edc3 7a03 	vstr	s15, [r3, #12]
d004c264:	edc3 7a04 	vstr	s15, [r3, #16]
d004c268:	edc3 7a05 	vstr	s15, [r3, #20]
d004c26c:	edc3 7a08 	vstr	s15, [r3, #32]
d004c270:	edc3 7a09 	vstr	s15, [r3, #36]	; 0x24
d004c274:	edc3 7a0a 	vstr	s15, [r3, #40]	; 0x28
d004c278:	edc3 7a0b 	vstr	s15, [r3, #44]	; 0x2c
d004c27c:	edc3 7a0c 	vstr	s15, [r3, #48]	; 0x30
d004c280:	edc3 7a0f 	vstr	s15, [r3, #60]	; 0x3c
d004c284:	edc3 7a10 	vstr	s15, [r3, #64]	; 0x40
d004c288:	edc3 7a11 	vstr	s15, [r3, #68]	; 0x44
d004c28c:	edc3 7a12 	vstr	s15, [r3, #72]	; 0x48
d004c290:	edc3 7a13 	vstr	s15, [r3, #76]	; 0x4c
d004c294:	edc3 7a16 	vstr	s15, [r3, #88]	; 0x58
d004c298:	edc3 7a17 	vstr	s15, [r3, #92]	; 0x5c
d004c29c:	edc3 7a18 	vstr	s15, [r3, #96]	; 0x60
d004c2a0:	edc3 7a19 	vstr	s15, [r3, #100]	; 0x64
d004c2a4:	edc3 7a1a 	vstr	s15, [r3, #104]	; 0x68
d004c2a8:	edc3 7a1d 	vstr	s15, [r3, #116]	; 0x74
d004c2ac:	edc3 7a1e 	vstr	s15, [r3, #120]	; 0x78
d004c2b0:	edc3 7a1f 	vstr	s15, [r3, #124]	; 0x7c
d004c2b4:	7019      	strb	r1, [r3, #0]
d004c2b6:	7719      	strb	r1, [r3, #28]
d004c2b8:	f883 1038 	strb.w	r1, [r3, #56]	; 0x38
d004c2bc:	f883 1054 	strb.w	r1, [r3, #84]	; 0x54
d004c2c0:	f883 1070 	strb.w	r1, [r3, #112]	; 0x70
d004c2c4:	619a      	str	r2, [r3, #24]
d004c2c6:	635a      	str	r2, [r3, #52]	; 0x34
d004c2c8:	651a      	str	r2, [r3, #80]	; 0x50
d004c2ca:	66da      	str	r2, [r3, #108]	; 0x6c
d004c2cc:	edc3 7a20 	vstr	s15, [r3, #128]	; 0x80
d004c2d0:	edc3 7a21 	vstr	s15, [r3, #132]	; 0x84
d004c2d4:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
d004c2d8:	f883 108c 	strb.w	r1, [r3, #140]	; 0x8c
d004c2dc:	edc3 7a24 	vstr	s15, [r3, #144]	; 0x90
d004c2e0:	edc3 7a25 	vstr	s15, [r3, #148]	; 0x94
d004c2e4:	edc3 7a26 	vstr	s15, [r3, #152]	; 0x98
d004c2e8:	edc3 7a27 	vstr	s15, [r3, #156]	; 0x9c
d004c2ec:	edc3 7a28 	vstr	s15, [r3, #160]	; 0xa0
d004c2f0:	f8c3 20a4 	str.w	r2, [r3, #164]	; 0xa4
d004c2f4:	f883 10a8 	strb.w	r1, [r3, #168]	; 0xa8
d004c2f8:	edc3 7a2b 	vstr	s15, [r3, #172]	; 0xac
d004c2fc:	edc3 7a2c 	vstr	s15, [r3, #176]	; 0xb0
d004c300:	edc3 7a2d 	vstr	s15, [r3, #180]	; 0xb4
d004c304:	edc3 7a2e 	vstr	s15, [r3, #184]	; 0xb8
d004c308:	edc3 7a2f 	vstr	s15, [r3, #188]	; 0xbc
d004c30c:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
d004c310:	f883 10c4 	strb.w	r1, [r3, #196]	; 0xc4
d004c314:	edc3 7a32 	vstr	s15, [r3, #200]	; 0xc8
d004c318:	edc3 7a33 	vstr	s15, [r3, #204]	; 0xcc
d004c31c:	edc3 7a34 	vstr	s15, [r3, #208]	; 0xd0
d004c320:	edc3 7a35 	vstr	s15, [r3, #212]	; 0xd4
d004c324:	edc3 7a36 	vstr	s15, [r3, #216]	; 0xd8
d004c328:	f8c3 20dc 	str.w	r2, [r3, #220]	; 0xdc
d004c32c:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d004c330:	ed9f 0a1d 	vldr	s0, [pc, #116]	; d004c3a8 <initImpactFlames+0x170>
d004c334:	eeb0 2a00 	vmov.f32	s4, #0	; 0x40000000  2.0
d004c338:	2101      	movs	r1, #1
d004c33a:	eef0 0a40 	vmov.f32	s1, s0
d004c33e:	2022      	movs	r0, #34	; 0x22
d004c340:	eef0 1a62 	vmov.f32	s3, s5
d004c344:	eeb0 1a40 	vmov.f32	s2, s0
d004c348:	f008 fae2 	bl	d0054910 <sb3dParticleSpawnQuad>
d004c34c:	2800      	cmp	r0, #0
d004c34e:	4603      	mov	r3, r0
d004c350:	f844 0f04 	str.w	r0, [r4, #4]!
d004c354:	da05      	bge.n	d004c362 <initImpactFlames+0x12a>
d004c356:	42b4      	cmp	r4, r6
d004c358:	d1e8      	bne.n	d004c32c <initImpactFlames+0xf4>
d004c35a:	b006      	add	sp, #24
d004c35c:	ecbd 8b02 	vpop	{d8}
d004c360:	bd70      	pop	{r4, r5, r6, pc}
d004c362:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d004c366:	f10d 0c18 	add.w	ip, sp, #24
d004c36a:	e90c 0007 	stmdb	ip, {r0, r1, r2}
d004c36e:	4618      	mov	r0, r3
d004c370:	eddd 0a04 	vldr	s1, [sp, #16]
d004c374:	ed9d 1a05 	vldr	s2, [sp, #20]
d004c378:	ed9d 0a03 	vldr	s0, [sp, #12]
d004c37c:	f008 fb10 	bl	d00549a0 <sb3dParticleSetPosition>
d004c380:	eeb0 0a48 	vmov.f32	s0, s16
d004c384:	6820      	ldr	r0, [r4, #0]
d004c386:	f008 fb23 	bl	d00549d0 <sb3dParticleSetSize>
d004c38a:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c38e:	6820      	ldr	r0, [r4, #0]
d004c390:	f008 fb34 	bl	d00549fc <sb3dParticleSetShade>
d004c394:	2100      	movs	r1, #0
d004c396:	6820      	ldr	r0, [r4, #0]
d004c398:	f008 fb52 	bl	d0054a40 <sb3dParticleSetEmission>
d004c39c:	42b4      	cmp	r4, r6
d004c39e:	d1c5      	bne.n	d004c32c <initImpactFlames+0xf4>
d004c3a0:	b006      	add	sp, #24
d004c3a2:	ecbd 8b02 	vpop	{d8}
d004c3a6:	bd70      	pop	{r4, r5, r6, pc}
d004c3a8:	00000000 	.word	0x00000000
d004c3ac:	d005a524 	.word	0xd005a524
d004c3b0:	d005a600 	.word	0xd005a600
d004c3b4:	d005766c 	.word	0xd005766c

d004c3b8 <updateImpactFlames>:
d004c3b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004c3bc:	ed2d 8b10 	vpush	{d8-d15}
d004c3c0:	eef0 ea40 	vmov.f32	s29, s0
d004c3c4:	b084      	sub	sp, #16
d004c3c6:	4cbd      	ldr	r4, [pc, #756]	; (d004c6bc <updateImpactFlames+0x304>)
d004c3c8:	f04f 0a00 	mov.w	sl, #0
d004c3cc:	f8df 8318 	ldr.w	r8, [pc, #792]	; d004c6e8 <updateImpactFlames+0x330>
d004c3d0:	ed9f fabb 	vldr	s30, [pc, #748]	; d004c6c0 <updateImpactFlames+0x308>
d004c3d4:	eddf cabb 	vldr	s25, [pc, #748]	; d004c6c4 <updateImpactFlames+0x30c>
d004c3d8:	ed9f eabb 	vldr	s28, [pc, #748]	; d004c6c8 <updateImpactFlames+0x310>
d004c3dc:	ed9f cabb 	vldr	s24, [pc, #748]	; d004c6cc <updateImpactFlames+0x314>
d004c3e0:	7825      	ldrb	r5, [r4, #0]
d004c3e2:	2d00      	cmp	r5, #0
d004c3e4:	f000 8147 	beq.w	d004c676 <updateImpactFlames+0x2be>
d004c3e8:	edd4 7a04 	vldr	s15, [r4, #16]
d004c3ec:	ed94 7a05 	vldr	s14, [r4, #20]
d004c3f0:	ee7e 7aa7 	vadd.f32	s15, s29, s15
d004c3f4:	eef4 7ac7 	vcmpe.f32	s15, s14
d004c3f8:	edc4 7a04 	vstr	s15, [r4, #16]
d004c3fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004c400:	f280 80b2 	bge.w	d004c568 <updateImpactFlames+0x1b0>
d004c404:	eec7 8a87 	vdiv.f32	s17, s15, s14
d004c408:	ed94 ba06 	vldr	s22, [r4, #24]
d004c40c:	eddf bab0 	vldr	s23, [pc, #704]	; d004c6d0 <updateImpactFlames+0x318>
d004c410:	4647      	mov	r7, r8
d004c412:	2600      	movs	r6, #0
d004c414:	eddf daaf 	vldr	s27, [pc, #700]	; d004c6d4 <updateImpactFlames+0x31c>
d004c418:	ed9f daaf 	vldr	s26, [pc, #700]	; d004c6d8 <updateImpactFlames+0x320>
d004c41c:	eddf aaaf 	vldr	s21, [pc, #700]	; d004c6dc <updateImpactFlames+0x324>
d004c420:	eeb2 aa00 	vmov.f32	s20, #32	; 0x41000000  8.0
d004c424:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004c428:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d004c42c:	eeb0 9a6c 	vmov.f32	s18, s25
d004c430:	eef2 6a08 	vmov.f32	s13, #40	; 0x41400000  12.0
d004c434:	eef3 9a0c 	vmov.f32	s19, #60	; 0x41e00000  28.0
d004c438:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004c43c:	ee6b 9a29 	vmul.f32	s19, s22, s19
d004c440:	eee8 7a8a 	vfma.f32	s15, s17, s20
d004c444:	ee37 7a68 	vsub.f32	s14, s14, s17
d004c448:	eee8 ba86 	vfma.f32	s23, s17, s12
d004c44c:	ee69 9aa8 	vmul.f32	s19, s19, s17
d004c450:	eea7 9a0f 	vfma.f32	s18, s14, s30
d004c454:	eea7 aa26 	vfma.f32	s20, s14, s13
d004c458:	ee67 7a8b 	vmul.f32	s15, s15, s22
d004c45c:	ee29 9a27 	vmul.f32	s18, s18, s15
d004c460:	ee07 6a90 	vmov	s15, r6
d004c464:	f857 5b04 	ldr.w	r5, [r7], #4
d004c468:	eeb0 8a08 	vmov.f32	s16, #8	; 0x40400000  3.0
d004c46c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c470:	2d00      	cmp	r5, #0
d004c472:	ee27 0a8c 	vmul.f32	s0, s15, s24
d004c476:	ee37 8a88 	vadd.f32	s16, s15, s16
d004c47a:	db64      	blt.n	d004c546 <updateImpactFlames+0x18e>
d004c47c:	ed94 7a04 	vldr	s14, [r4, #16]
d004c480:	eef0 fa6a 	vmov.f32	s31, s21
d004c484:	f04f 0945 	mov.w	r9, #69	; 0x45
d004c488:	ee28 8a07 	vmul.f32	s16, s16, s14
d004c48c:	eea7 0a2d 	vfma.f32	s0, s14, s27
d004c490:	eea7 8a8e 	vfma.f32	s16, s15, s28
d004c494:	f00a fbf8 	bl	d0056c88 <sinf>
d004c498:	eee0 fa0d 	vfma.f32	s31, s0, s26
d004c49c:	eeb0 0a48 	vmov.f32	s0, s16
d004c4a0:	f00a fa0e 	bl	d00568c0 <cosf>
d004c4a4:	eef0 6a40 	vmov.f32	s13, s0
d004c4a8:	edd4 7a01 	vldr	s15, [r4, #4]
d004c4ac:	eeb0 0a48 	vmov.f32	s0, s16
d004c4b0:	ed94 7a02 	vldr	s14, [r4, #8]
d004c4b4:	eeb0 8a4a 	vmov.f32	s16, s20
d004c4b8:	eee6 7a89 	vfma.f32	s15, s13, s18
d004c4bc:	ee37 7a29 	vadd.f32	s14, s14, s19
d004c4c0:	ed8d 7a02 	vstr	s14, [sp, #8]
d004c4c4:	edcd 7a01 	vstr	s15, [sp, #4]
d004c4c8:	f00a fbde 	bl	d0056c88 <sinf>
d004c4cc:	f006 0301 	and.w	r3, r6, #1
d004c4d0:	eef0 6a00 	vmov.f32	s13, #0	; 0x40000000  2.0
d004c4d4:	ed94 7a03 	vldr	s14, [r4, #12]
d004c4d8:	eef4 8aec 	vcmpe.f32	s17, s25
d004c4dc:	ee07 3a90 	vmov	s15, r3
d004c4e0:	eea0 7a09 	vfma.f32	s14, s0, s18
d004c4e4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c4e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004c4ec:	eef4 8aea 	vcmpe.f32	s17, s21
d004c4f0:	eea7 8aa6 	vfma.f32	s16, s15, s13
d004c4f4:	ed8d 7a03 	vstr	s14, [sp, #12]
d004c4f8:	ee28 8a0b 	vmul.f32	s16, s16, s22
d004c4fc:	ee28 8a2f 	vmul.f32	s16, s16, s31
d004c500:	d406      	bmi.n	d004c510 <updateImpactFlames+0x158>
d004c502:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004c506:	bf4c      	ite	mi
d004c508:	f04f 0942 	movmi.w	r9, #66	; 0x42
d004c50c:	f04f 0951 	movpl.w	r9, #81	; 0x51
d004c510:	eddd 0a02 	vldr	s1, [sp, #8]
d004c514:	4628      	mov	r0, r5
d004c516:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c51a:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c51e:	f008 fa3f 	bl	d00549a0 <sb3dParticleSetPosition>
d004c522:	eeb0 0a48 	vmov.f32	s0, s16
d004c526:	4628      	mov	r0, r5
d004c528:	f008 fa52 	bl	d00549d0 <sb3dParticleSetSize>
d004c52c:	eeb0 0a6b 	vmov.f32	s0, s23
d004c530:	4628      	mov	r0, r5
d004c532:	f008 fa63 	bl	d00549fc <sb3dParticleSetShade>
d004c536:	4649      	mov	r1, r9
d004c538:	4628      	mov	r0, r5
d004c53a:	f008 fa75 	bl	d0054a28 <sb3dParticleSetColor>
d004c53e:	4628      	mov	r0, r5
d004c540:	21c8      	movs	r1, #200	; 0xc8
d004c542:	f008 fa7d 	bl	d0054a40 <sb3dParticleSetEmission>
d004c546:	3601      	adds	r6, #1
d004c548:	2e04      	cmp	r6, #4
d004c54a:	d189      	bne.n	d004c460 <updateImpactFlames+0xa8>
d004c54c:	f10a 0a04 	add.w	sl, sl, #4
d004c550:	341c      	adds	r4, #28
d004c552:	f108 0810 	add.w	r8, r8, #16
d004c556:	f1ba 0f20 	cmp.w	sl, #32
d004c55a:	f47f af41 	bne.w	d004c3e0 <updateImpactFlames+0x28>
d004c55e:	b004      	add	sp, #16
d004c560:	ecbd 8b10 	vpop	{d8-d15}
d004c564:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004c568:	2600      	movs	r6, #0
d004c56a:	f8d8 5000 	ldr.w	r5, [r8]
d004c56e:	42b5      	cmp	r5, r6
d004c570:	7026      	strb	r6, [r4, #0]
d004c572:	db1c      	blt.n	d004c5ae <updateImpactFlames+0x1f6>
d004c574:	4b5a      	ldr	r3, [pc, #360]	; (d004c6e0 <updateImpactFlames+0x328>)
d004c576:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c57a:	ab04      	add	r3, sp, #16
d004c57c:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c580:	4628      	mov	r0, r5
d004c582:	eddd 0a02 	vldr	s1, [sp, #8]
d004c586:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c58a:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c58e:	f008 fa07 	bl	d00549a0 <sb3dParticleSetPosition>
d004c592:	ed9f 0a54 	vldr	s0, [pc, #336]	; d004c6e4 <updateImpactFlames+0x32c>
d004c596:	4628      	mov	r0, r5
d004c598:	f008 fa1a 	bl	d00549d0 <sb3dParticleSetSize>
d004c59c:	4628      	mov	r0, r5
d004c59e:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5a2:	f008 fa2b 	bl	d00549fc <sb3dParticleSetShade>
d004c5a6:	4631      	mov	r1, r6
d004c5a8:	4628      	mov	r0, r5
d004c5aa:	f008 fa49 	bl	d0054a40 <sb3dParticleSetEmission>
d004c5ae:	f8d8 5004 	ldr.w	r5, [r8, #4]
d004c5b2:	2d00      	cmp	r5, #0
d004c5b4:	db1c      	blt.n	d004c5f0 <updateImpactFlames+0x238>
d004c5b6:	4b4a      	ldr	r3, [pc, #296]	; (d004c6e0 <updateImpactFlames+0x328>)
d004c5b8:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c5bc:	ab04      	add	r3, sp, #16
d004c5be:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c5c2:	4628      	mov	r0, r5
d004c5c4:	eddd 0a02 	vldr	s1, [sp, #8]
d004c5c8:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c5cc:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c5d0:	f008 f9e6 	bl	d00549a0 <sb3dParticleSetPosition>
d004c5d4:	ed9f 0a43 	vldr	s0, [pc, #268]	; d004c6e4 <updateImpactFlames+0x32c>
d004c5d8:	4628      	mov	r0, r5
d004c5da:	f008 f9f9 	bl	d00549d0 <sb3dParticleSetSize>
d004c5de:	4628      	mov	r0, r5
d004c5e0:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5e4:	f008 fa0a 	bl	d00549fc <sb3dParticleSetShade>
d004c5e8:	4628      	mov	r0, r5
d004c5ea:	2100      	movs	r1, #0
d004c5ec:	f008 fa28 	bl	d0054a40 <sb3dParticleSetEmission>
d004c5f0:	f8d8 5008 	ldr.w	r5, [r8, #8]
d004c5f4:	2d00      	cmp	r5, #0
d004c5f6:	db1c      	blt.n	d004c632 <updateImpactFlames+0x27a>
d004c5f8:	4b39      	ldr	r3, [pc, #228]	; (d004c6e0 <updateImpactFlames+0x328>)
d004c5fa:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c5fe:	ab04      	add	r3, sp, #16
d004c600:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c604:	4628      	mov	r0, r5
d004c606:	eddd 0a02 	vldr	s1, [sp, #8]
d004c60a:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c60e:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c612:	f008 f9c5 	bl	d00549a0 <sb3dParticleSetPosition>
d004c616:	ed9f 0a33 	vldr	s0, [pc, #204]	; d004c6e4 <updateImpactFlames+0x32c>
d004c61a:	4628      	mov	r0, r5
d004c61c:	f008 f9d8 	bl	d00549d0 <sb3dParticleSetSize>
d004c620:	4628      	mov	r0, r5
d004c622:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c626:	f008 f9e9 	bl	d00549fc <sb3dParticleSetShade>
d004c62a:	4628      	mov	r0, r5
d004c62c:	2100      	movs	r1, #0
d004c62e:	f008 fa07 	bl	d0054a40 <sb3dParticleSetEmission>
d004c632:	f8d8 500c 	ldr.w	r5, [r8, #12]
d004c636:	2d00      	cmp	r5, #0
d004c638:	db88      	blt.n	d004c54c <updateImpactFlames+0x194>
d004c63a:	4b29      	ldr	r3, [pc, #164]	; (d004c6e0 <updateImpactFlames+0x328>)
d004c63c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c640:	ab04      	add	r3, sp, #16
d004c642:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c646:	4628      	mov	r0, r5
d004c648:	eddd 0a02 	vldr	s1, [sp, #8]
d004c64c:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c650:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c654:	f008 f9a4 	bl	d00549a0 <sb3dParticleSetPosition>
d004c658:	4628      	mov	r0, r5
d004c65a:	ed9f 0a22 	vldr	s0, [pc, #136]	; d004c6e4 <updateImpactFlames+0x32c>
d004c65e:	f008 f9b7 	bl	d00549d0 <sb3dParticleSetSize>
d004c662:	4628      	mov	r0, r5
d004c664:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c668:	f008 f9c8 	bl	d00549fc <sb3dParticleSetShade>
d004c66c:	4628      	mov	r0, r5
d004c66e:	2100      	movs	r1, #0
d004c670:	f008 f9e6 	bl	d0054a40 <sb3dParticleSetEmission>
d004c674:	e76a      	b.n	d004c54c <updateImpactFlames+0x194>
d004c676:	f8d8 6000 	ldr.w	r6, [r8]
d004c67a:	2e00      	cmp	r6, #0
d004c67c:	db97      	blt.n	d004c5ae <updateImpactFlames+0x1f6>
d004c67e:	4b18      	ldr	r3, [pc, #96]	; (d004c6e0 <updateImpactFlames+0x328>)
d004c680:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c684:	ab04      	add	r3, sp, #16
d004c686:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c68a:	4630      	mov	r0, r6
d004c68c:	eddd 0a02 	vldr	s1, [sp, #8]
d004c690:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c694:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c698:	f008 f982 	bl	d00549a0 <sb3dParticleSetPosition>
d004c69c:	4630      	mov	r0, r6
d004c69e:	ed9f 0a11 	vldr	s0, [pc, #68]	; d004c6e4 <updateImpactFlames+0x32c>
d004c6a2:	f008 f995 	bl	d00549d0 <sb3dParticleSetSize>
d004c6a6:	4630      	mov	r0, r6
d004c6a8:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c6ac:	f008 f9a6 	bl	d00549fc <sb3dParticleSetShade>
d004c6b0:	4629      	mov	r1, r5
d004c6b2:	4630      	mov	r0, r6
d004c6b4:	f008 f9c4 	bl	d0054a40 <sb3dParticleSetEmission>
d004c6b8:	e779      	b.n	d004c5ae <updateImpactFlames+0x1f6>
d004c6ba:	bf00      	nop
d004c6bc:	d005a524 	.word	0xd005a524
d004c6c0:	3f266666 	.word	0x3f266666
d004c6c4:	3eb33333 	.word	0x3eb33333
d004c6c8:	3fc90fdb 	.word	0x3fc90fdb
d004c6cc:	3fd9999a 	.word	0x3fd9999a
d004c6d0:	3c23d70a 	.word	0x3c23d70a
d004c6d4:	42200000 	.word	0x42200000
d004c6d8:	3e99999a 	.word	0x3e99999a
d004c6dc:	3f333333 	.word	0x3f333333
d004c6e0:	d005766c 	.word	0xd005766c
d004c6e4:	00000000 	.word	0x00000000
d004c6e8:	d005a604 	.word	0xd005a604

d004c6ec <InitLasers>:
d004c6ec:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004c6f0:	2230      	movs	r2, #48	; 0x30
d004c6f2:	2100      	movs	r1, #0
d004c6f4:	484e      	ldr	r0, [pc, #312]	; (d004c830 <InitLasers+0x144>)
d004c6f6:	f04f 0800 	mov.w	r8, #0
d004c6fa:	4d4e      	ldr	r5, [pc, #312]	; (d004c834 <InitLasers+0x148>)
d004c6fc:	4e4e      	ldr	r6, [pc, #312]	; (d004c838 <InitLasers+0x14c>)
d004c6fe:	ed2d 8b02 	vpush	{d8}
d004c702:	b097      	sub	sp, #92	; 0x5c
d004c704:	ed9f 8a4d 	vldr	s16, [pc, #308]	; d004c83c <InitLasers+0x150>
d004c708:	f008 ffa8 	bl	d005565c <memset>
d004c70c:	2230      	movs	r2, #48	; 0x30
d004c70e:	2100      	movs	r1, #0
d004c710:	484b      	ldr	r0, [pc, #300]	; (d004c840 <InitLasers+0x154>)
d004c712:	f008 ffa3 	bl	d005565c <memset>
d004c716:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d004c71a:	466c      	mov	r4, sp
d004c71c:	4668      	mov	r0, sp
d004c71e:	ed9f 1a49 	vldr	s2, [pc, #292]	; d004c844 <InitLasers+0x158>
d004c722:	466f      	mov	r7, sp
d004c724:	eeb0 0a60 	vmov.f32	s0, s1
d004c728:	f005 f932 	bl	d0051990 <createBox>
d004c72c:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d004c730:	ed9f 1a44 	vldr	s2, [pc, #272]	; d004c844 <InitLasers+0x158>
d004c734:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004c736:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004c738:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004c73a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004c73c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004c73e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004c740:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d004c744:	eeb0 0a60 	vmov.f32	s0, s1
d004c748:	f1a5 0930 	sub.w	r9, r5, #48	; 0x30
d004c74c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d004c750:	4668      	mov	r0, sp
d004c752:	f005 f91d 	bl	d0051990 <createBox>
d004c756:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004c75a:	ed9f 2a38 	vldr	s4, [pc, #224]	; d004c83c <InitLasers+0x150>
d004c75e:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004c760:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d004c762:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004c764:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d004c766:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004c768:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d004c76a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d004c76e:	eeb0 1a61 	vmov.f32	s2, s3
d004c772:	4c2f      	ldr	r4, [pc, #188]	; (d004c830 <InitLasers+0x144>)
d004c774:	eef0 0a61 	vmov.f32	s1, s3
d004c778:	eeb0 0a61 	vmov.f32	s0, s3
d004c77c:	f104 0730 	add.w	r7, r4, #48	; 0x30
d004c780:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d004c784:	4648      	mov	r0, r9
d004c786:	f002 f8eb 	bl	d004e960 <meshSetMaterial>
d004c78a:	2122      	movs	r1, #34	; 0x22
d004c78c:	4648      	mov	r0, r9
d004c78e:	f004 ff3f 	bl	d0051610 <meshColour>
d004c792:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004c796:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c79a:	eeb0 2a48 	vmov.f32	s4, s16
d004c79e:	eeb0 1a61 	vmov.f32	s2, s3
d004c7a2:	eef0 0a61 	vmov.f32	s1, s3
d004c7a6:	eeb0 0a61 	vmov.f32	s0, s3
d004c7aa:	f002 f8d9 	bl	d004e960 <meshSetMaterial>
d004c7ae:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c7b2:	2127      	movs	r1, #39	; 0x27
d004c7b4:	f004 ff2c 	bl	d0051610 <meshColour>
d004c7b8:	eddf 0a20 	vldr	s1, [pc, #128]	; d004c83c <InitLasers+0x150>
d004c7bc:	eeb0 1a48 	vmov.f32	s2, s16
d004c7c0:	3406      	adds	r4, #6
d004c7c2:	eeb0 0a60 	vmov.f32	s0, s1
d004c7c6:	f003 fecb 	bl	d0050560 <vec3>
d004c7ca:	4648      	mov	r0, r9
d004c7cc:	f004 fe40 	bl	d0051450 <entityWorldSpawn>
d004c7d0:	f804 8c06 	strb.w	r8, [r4, #-6]
d004c7d4:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c7d8:	2100      	movs	r1, #0
d004c7da:	f824 8c04 	strh.w	r8, [r4, #-4]
d004c7de:	b280      	uxth	r0, r0
d004c7e0:	f005 fc7c 	bl	d00520dc <entityVisible>
d004c7e4:	42bc      	cmp	r4, r7
d004c7e6:	d1e7      	bne.n	d004c7b8 <InitLasers+0xcc>
d004c7e8:	4c15      	ldr	r4, [pc, #84]	; (d004c840 <InitLasers+0x154>)
d004c7ea:	2500      	movs	r5, #0
d004c7ec:	ed9f 8a13 	vldr	s16, [pc, #76]	; d004c83c <InitLasers+0x150>
d004c7f0:	f104 0730 	add.w	r7, r4, #48	; 0x30
d004c7f4:	4e10      	ldr	r6, [pc, #64]	; (d004c838 <InitLasers+0x14c>)
d004c7f6:	eddf 0a11 	vldr	s1, [pc, #68]	; d004c83c <InitLasers+0x150>
d004c7fa:	eeb0 1a48 	vmov.f32	s2, s16
d004c7fe:	3406      	adds	r4, #6
d004c800:	eeb0 0a60 	vmov.f32	s0, s1
d004c804:	f003 feac 	bl	d0050560 <vec3>
d004c808:	4630      	mov	r0, r6
d004c80a:	f004 fe21 	bl	d0051450 <entityWorldSpawn>
d004c80e:	f804 5c06 	strb.w	r5, [r4, #-6]
d004c812:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c816:	2100      	movs	r1, #0
d004c818:	f824 5c04 	strh.w	r5, [r4, #-4]
d004c81c:	b280      	uxth	r0, r0
d004c81e:	f005 fc5d 	bl	d00520dc <entityVisible>
d004c822:	42bc      	cmp	r4, r7
d004c824:	d1e7      	bne.n	d004c7f6 <InitLasers+0x10a>
d004c826:	b017      	add	sp, #92	; 0x5c
d004c828:	ecbd 8b02 	vpop	{d8}
d004c82c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004c830:	d00f4a8c 	.word	0xd00f4a8c
d004c834:	d00f49c0 	.word	0xd00f49c0
d004c838:	d00f4b20 	.word	0xd00f4b20
d004c83c:	00000000 	.word	0x00000000
d004c840:	d00f4b60 	.word	0xd00f4b60
d004c844:	42480000 	.word	0x42480000

d004c848 <FireTurret>:
d004c848:	b530      	push	{r4, r5, lr}
d004c84a:	ed2d 8b02 	vpush	{d8}
d004c84e:	b091      	sub	sp, #68	; 0x44
d004c850:	eeb0 8a60 	vmov.f32	s16, s1
d004c854:	4604      	mov	r4, r0
d004c856:	ed8d 0a01 	vstr	s0, [sp, #4]
d004c85a:	ed8d 1a03 	vstr	s2, [sp, #12]
d004c85e:	f004 fe61 	bl	d0051524 <entityGetPosition>
d004c862:	eef0 6a40 	vmov.f32	s13, s0
d004c866:	4620      	mov	r0, r4
d004c868:	eeb0 7a60 	vmov.f32	s14, s1
d004c86c:	eddf 0a3b 	vldr	s1, [pc, #236]	; d004c95c <FireTurret+0x114>
d004c870:	eef0 7a41 	vmov.f32	s15, s2
d004c874:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c878:	ee78 0a60 	vsub.f32	s1, s16, s1
d004c87c:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c880:	2100      	movs	r1, #0
d004c882:	edcd 6a04 	vstr	s13, [sp, #16]
d004c886:	ed8d 7a05 	vstr	s14, [sp, #20]
d004c88a:	edcd 7a06 	vstr	s15, [sp, #24]
d004c88e:	f005 fb9f 	bl	d0051fd0 <entityLookAtPosition>
d004c892:	4b33      	ldr	r3, [pc, #204]	; (d004c960 <FireTurret+0x118>)
d004c894:	ed8d 0a07 	vstr	s0, [sp, #28]
d004c898:	781a      	ldrb	r2, [r3, #0]
d004c89a:	edcd 0a08 	vstr	s1, [sp, #32]
d004c89e:	b1d2      	cbz	r2, d004c8d6 <FireTurret+0x8e>
d004c8a0:	799a      	ldrb	r2, [r3, #6]
d004c8a2:	2a00      	cmp	r2, #0
d004c8a4:	d04d      	beq.n	d004c942 <FireTurret+0xfa>
d004c8a6:	7b1a      	ldrb	r2, [r3, #12]
d004c8a8:	2a00      	cmp	r2, #0
d004c8aa:	d04c      	beq.n	d004c946 <FireTurret+0xfe>
d004c8ac:	7c9a      	ldrb	r2, [r3, #18]
d004c8ae:	2a00      	cmp	r2, #0
d004c8b0:	d04b      	beq.n	d004c94a <FireTurret+0x102>
d004c8b2:	7e1a      	ldrb	r2, [r3, #24]
d004c8b4:	2a00      	cmp	r2, #0
d004c8b6:	d04a      	beq.n	d004c94e <FireTurret+0x106>
d004c8b8:	7f9a      	ldrb	r2, [r3, #30]
d004c8ba:	2a00      	cmp	r2, #0
d004c8bc:	d049      	beq.n	d004c952 <FireTurret+0x10a>
d004c8be:	f893 2024 	ldrb.w	r2, [r3, #36]	; 0x24
d004c8c2:	b13a      	cbz	r2, d004c8d4 <FireTurret+0x8c>
d004c8c4:	f893 202a 	ldrb.w	r2, [r3, #42]	; 0x2a
d004c8c8:	2a00      	cmp	r2, #0
d004c8ca:	d044      	beq.n	d004c956 <FireTurret+0x10e>
d004c8cc:	b011      	add	sp, #68	; 0x44
d004c8ce:	ecbd 8b02 	vpop	{d8}
d004c8d2:	bd30      	pop	{r4, r5, pc}
d004c8d4:	2206      	movs	r2, #6
d004c8d6:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d004c8da:	2132      	movs	r1, #50	; 0x32
d004c8dc:	2501      	movs	r5, #1
d004c8de:	4620      	mov	r0, r4
d004c8e0:	eb03 0442 	add.w	r4, r3, r2, lsl #1
d004c8e4:	f803 5012 	strb.w	r5, [r3, r2, lsl #1]
d004c8e8:	8061      	strh	r1, [r4, #2]
d004c8ea:	f004 fe39 	bl	d0051560 <entityGetForward>
d004c8ee:	eddf 7a1b 	vldr	s15, [pc, #108]	; d004c95c <FireTurret+0x114>
d004c8f2:	eddd 0a05 	vldr	s1, [sp, #20]
d004c8f6:	ed9d 0a04 	vldr	s0, [sp, #16]
d004c8fa:	ee70 0aa7 	vadd.f32	s1, s1, s15
d004c8fe:	ed9d 1a06 	vldr	s2, [sp, #24]
d004c902:	88a0      	ldrh	r0, [r4, #4]
d004c904:	f004 fdea 	bl	d00514dc <entitySetPosition>
d004c908:	ed9f 1a16 	vldr	s2, [pc, #88]	; d004c964 <FireTurret+0x11c>
d004c90c:	4629      	mov	r1, r5
d004c90e:	ed9d 0a08 	vldr	s0, [sp, #32]
d004c912:	eef0 0a41 	vmov.f32	s1, s2
d004c916:	88a0      	ldrh	r0, [r4, #4]
d004c918:	f005 f82a 	bl	d0051970 <entityRotation>
d004c91c:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004c964 <FireTurret+0x11c>
d004c920:	88a0      	ldrh	r0, [r4, #4]
d004c922:	2100      	movs	r1, #0
d004c924:	eeb0 0a41 	vmov.f32	s0, s2
d004c928:	eddd 0a07 	vldr	s1, [sp, #28]
d004c92c:	f005 f820 	bl	d0051970 <entityRotation>
d004c930:	4629      	mov	r1, r5
d004c932:	88a0      	ldrh	r0, [r4, #4]
d004c934:	b011      	add	sp, #68	; 0x44
d004c936:	ecbd 8b02 	vpop	{d8}
d004c93a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004c93e:	f005 bbcd 	b.w	d00520dc <entityVisible>
d004c942:	2201      	movs	r2, #1
d004c944:	e7c7      	b.n	d004c8d6 <FireTurret+0x8e>
d004c946:	2202      	movs	r2, #2
d004c948:	e7c5      	b.n	d004c8d6 <FireTurret+0x8e>
d004c94a:	2203      	movs	r2, #3
d004c94c:	e7c3      	b.n	d004c8d6 <FireTurret+0x8e>
d004c94e:	2204      	movs	r2, #4
d004c950:	e7c1      	b.n	d004c8d6 <FireTurret+0x8e>
d004c952:	2205      	movs	r2, #5
d004c954:	e7bf      	b.n	d004c8d6 <FireTurret+0x8e>
d004c956:	2207      	movs	r2, #7
d004c958:	e7bd      	b.n	d004c8d6 <FireTurret+0x8e>
d004c95a:	bf00      	nop
d004c95c:	42480000 	.word	0x42480000
d004c960:	d00f4a8c 	.word	0xd00f4a8c
d004c964:	00000000 	.word	0x00000000

d004c968 <UpdateTurretTest.part.0>:
d004c968:	b500      	push	{lr}
d004c96a:	b085      	sub	sp, #20
d004c96c:	f008 ff28 	bl	d00557c0 <rand>
d004c970:	4a24      	ldr	r2, [pc, #144]	; (d004ca04 <UpdateTurretTest.part.0+0x9c>)
d004c972:	fb82 3200 	smull	r3, r2, r2, r0
d004c976:	17c3      	asrs	r3, r0, #31
d004c978:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d004c97c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004c980:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004c984:	1ac0      	subs	r0, r0, r3
d004c986:	2802      	cmp	r0, #2
d004c988:	dc1f      	bgt.n	d004c9ca <UpdateTurretTest.part.0+0x62>
d004c98a:	4b1f      	ldr	r3, [pc, #124]	; (d004ca08 <UpdateTurretTest.part.0+0xa0>)
d004c98c:	6818      	ldr	r0, [r3, #0]
d004c98e:	f004 fdc9 	bl	d0051524 <entityGetPosition>
d004c992:	4b1e      	ldr	r3, [pc, #120]	; (d004ca0c <UpdateTurretTest.part.0+0xa4>)
d004c994:	8818      	ldrh	r0, [r3, #0]
d004c996:	f7ff ff57 	bl	d004c848 <FireTurret>
d004c99a:	4a1d      	ldr	r2, [pc, #116]	; (d004ca10 <UpdateTurretTest.part.0+0xa8>)
d004c99c:	8813      	ldrh	r3, [r2, #0]
d004c99e:	3b01      	subs	r3, #1
d004c9a0:	b21b      	sxth	r3, r3
d004c9a2:	2b00      	cmp	r3, #0
d004c9a4:	8013      	strh	r3, [r2, #0]
d004c9a6:	dd1c      	ble.n	d004c9e2 <UpdateTurretTest.part.0+0x7a>
d004c9a8:	f008 ff0a 	bl	d00557c0 <rand>
d004c9ac:	4a19      	ldr	r2, [pc, #100]	; (d004ca14 <UpdateTurretTest.part.0+0xac>)
d004c9ae:	491a      	ldr	r1, [pc, #104]	; (d004ca18 <UpdateTurretTest.part.0+0xb0>)
d004c9b0:	fb82 3200 	smull	r3, r2, r2, r0
d004c9b4:	17c3      	asrs	r3, r0, #31
d004c9b6:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d004c9ba:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004c9be:	1ac0      	subs	r0, r0, r3
d004c9c0:	3004      	adds	r0, #4
d004c9c2:	8008      	strh	r0, [r1, #0]
d004c9c4:	b005      	add	sp, #20
d004c9c6:	f85d fb04 	ldr.w	pc, [sp], #4
d004c9ca:	4b14      	ldr	r3, [pc, #80]	; (d004ca1c <UpdateTurretTest.part.0+0xb4>)
d004c9cc:	4a0f      	ldr	r2, [pc, #60]	; (d004ca0c <UpdateTurretTest.part.0+0xa4>)
d004c9ce:	ed93 0a00 	vldr	s0, [r3]
d004c9d2:	edd3 0a01 	vldr	s1, [r3, #4]
d004c9d6:	ed93 1a02 	vldr	s2, [r3, #8]
d004c9da:	8810      	ldrh	r0, [r2, #0]
d004c9dc:	f7ff ff34 	bl	d004c848 <FireTurret>
d004c9e0:	e7db      	b.n	d004c99a <UpdateTurretTest.part.0+0x32>
d004c9e2:	f008 feed 	bl	d00557c0 <rand>
d004c9e6:	4b0e      	ldr	r3, [pc, #56]	; (d004ca20 <UpdateTurretTest.part.0+0xb8>)
d004c9e8:	4a0b      	ldr	r2, [pc, #44]	; (d004ca18 <UpdateTurretTest.part.0+0xb0>)
d004c9ea:	fb83 1300 	smull	r1, r3, r3, r0
d004c9ee:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d004c9f2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d004c9f6:	eba0 0043 	sub.w	r0, r0, r3, lsl #1
d004c9fa:	300f      	adds	r0, #15
d004c9fc:	8010      	strh	r0, [r2, #0]
d004c9fe:	b005      	add	sp, #20
d004ca00:	f85d fb04 	ldr.w	pc, [sp], #4
d004ca04:	2e8ba2e9 	.word	0x2e8ba2e9
d004ca08:	d005a500 	.word	0xd005a500
d004ca0c:	d005a6b0 	.word	0xd005a6b0
d004ca10:	d005a6b4 	.word	0xd005a6b4
d004ca14:	66666667 	.word	0x66666667
d004ca18:	d005a6b6 	.word	0xd005a6b6
d004ca1c:	d005a4a0 	.word	0xd005a4a0
d004ca20:	2aaaaaab 	.word	0x2aaaaaab

d004ca24 <FirePlayerLaser>:
d004ca24:	b570      	push	{r4, r5, r6, lr}
d004ca26:	4db0      	ldr	r5, [pc, #704]	; (d004cce8 <FirePlayerLaser+0x2c4>)
d004ca28:	2100      	movs	r1, #0
d004ca2a:	4cb0      	ldr	r4, [pc, #704]	; (d004ccec <FirePlayerLaser+0x2c8>)
d004ca2c:	4628      	mov	r0, r5
d004ca2e:	ed2d 8b06 	vpush	{d8-d10}
d004ca32:	b086      	sub	sp, #24
d004ca34:	f003 ff7c 	bl	d0050930 <cameraGetRotation>
d004ca38:	eeb3 5a0e 	vmov.f32	s10, #62	; 0x41f00000  30.0
d004ca3c:	edd5 7a0e 	vldr	s15, [r5, #56]	; 0x38
d004ca40:	eeb9 6a00 	vmov.f32	s12, #144	; 0xc0800000 -4.0
d004ca44:	edd5 6a0c 	vldr	s13, [r5, #48]	; 0x30
d004ca48:	eef0 9a60 	vmov.f32	s19, s1
d004ca4c:	ee67 7a85 	vmul.f32	s15, s15, s10
d004ca50:	ed95 7a0d 	vldr	s14, [r5, #52]	; 0x34
d004ca54:	ee66 6a85 	vmul.f32	s13, s13, s10
d004ca58:	eddf 5aa5 	vldr	s11, [pc, #660]	; d004ccf0 <FirePlayerLaser+0x2cc>
d004ca5c:	ee27 7a05 	vmul.f32	s14, s14, s10
d004ca60:	edd5 3a08 	vldr	s7, [r5, #32]
d004ca64:	eeb0 4a67 	vmov.f32	s8, s15
d004ca68:	edd5 2a06 	vldr	s5, [r5, #24]
d004ca6c:	eef0 4a66 	vmov.f32	s9, s13
d004ca70:	ed95 3a07 	vldr	s6, [r5, #28]
d004ca74:	eeb0 5a47 	vmov.f32	s10, s14
d004ca78:	edd5 1a09 	vldr	s3, [r5, #36]	; 0x24
d004ca7c:	eea3 4aa5 	vfma.f32	s8, s7, s11
d004ca80:	ed95 9a00 	vldr	s18, [r5]
d004ca84:	eee2 4aa5 	vfma.f32	s9, s5, s11
d004ca88:	edd5 8a01 	vldr	s17, [r5, #4]
d004ca8c:	eea3 5a25 	vfma.f32	s10, s6, s11
d004ca90:	ed95 2a0b 	vldr	s4, [r5, #44]	; 0x2c
d004ca94:	ed95 8a02 	vldr	s16, [r5, #8]
d004ca98:	eee1 6a86 	vfma.f32	s13, s3, s12
d004ca9c:	eee2 7a06 	vfma.f32	s15, s4, s12
d004caa0:	7823      	ldrb	r3, [r4, #0]
d004caa2:	eeb0 aa40 	vmov.f32	s20, s0
d004caa6:	edcd 0a01 	vstr	s1, [sp, #4]
d004caaa:	eef0 5a44 	vmov.f32	s11, s8
d004caae:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d004cab2:	ee74 4a89 	vadd.f32	s9, s9, s18
d004cab6:	ed8d 1a02 	vstr	s2, [sp, #8]
d004caba:	eea4 7a06 	vfma.f32	s14, s8, s12
d004cabe:	ed8d 0a00 	vstr	s0, [sp]
d004cac2:	ee35 5a28 	vadd.f32	s10, s10, s17
d004cac6:	ee75 5a88 	vadd.f32	s11, s11, s16
d004caca:	eee1 4a86 	vfma.f32	s9, s3, s12
d004cace:	eea4 5a06 	vfma.f32	s10, s8, s12
d004cad2:	ed9f 4a88 	vldr	s8, [pc, #544]	; d004ccf4 <FirePlayerLaser+0x2d0>
d004cad6:	eee2 5a06 	vfma.f32	s11, s4, s12
d004cada:	ee36 9a89 	vadd.f32	s18, s13, s18
d004cade:	ee77 8a28 	vadd.f32	s17, s14, s17
d004cae2:	ee37 8a88 	vadd.f32	s16, s15, s16
d004cae6:	eea2 9a84 	vfma.f32	s18, s5, s8
d004caea:	edcd 4a03 	vstr	s9, [sp, #12]
d004caee:	eee3 8a04 	vfma.f32	s17, s6, s8
d004caf2:	ed8d 5a04 	vstr	s10, [sp, #16]
d004caf6:	eea3 8a84 	vfma.f32	s16, s7, s8
d004cafa:	edcd 5a05 	vstr	s11, [sp, #20]
d004cafe:	2b00      	cmp	r3, #0
d004cb00:	f000 80af 	beq.w	d004cc62 <FirePlayerLaser+0x23e>
d004cb04:	79a3      	ldrb	r3, [r4, #6]
d004cb06:	2b00      	cmp	r3, #0
d004cb08:	f000 80d8 	beq.w	d004ccbc <FirePlayerLaser+0x298>
d004cb0c:	7b23      	ldrb	r3, [r4, #12]
d004cb0e:	2b00      	cmp	r3, #0
d004cb10:	f000 80d8 	beq.w	d004ccc4 <FirePlayerLaser+0x2a0>
d004cb14:	7ca3      	ldrb	r3, [r4, #18]
d004cb16:	2b00      	cmp	r3, #0
d004cb18:	f000 80d8 	beq.w	d004cccc <FirePlayerLaser+0x2a8>
d004cb1c:	7e23      	ldrb	r3, [r4, #24]
d004cb1e:	2b00      	cmp	r3, #0
d004cb20:	f000 80d8 	beq.w	d004ccd4 <FirePlayerLaser+0x2b0>
d004cb24:	7fa3      	ldrb	r3, [r4, #30]
d004cb26:	2b00      	cmp	r3, #0
d004cb28:	f000 80d8 	beq.w	d004ccdc <FirePlayerLaser+0x2b8>
d004cb2c:	f894 3024 	ldrb.w	r3, [r4, #36]	; 0x24
d004cb30:	2b00      	cmp	r3, #0
d004cb32:	f000 8095 	beq.w	d004cc60 <FirePlayerLaser+0x23c>
d004cb36:	f894 302a 	ldrb.w	r3, [r4, #42]	; 0x2a
d004cb3a:	2b00      	cmp	r3, #0
d004cb3c:	f000 80d2 	beq.w	d004cce4 <FirePlayerLaser+0x2c0>
d004cb40:	2500      	movs	r5, #0
d004cb42:	7823      	ldrb	r3, [r4, #0]
d004cb44:	ed8d 9a03 	vstr	s18, [sp, #12]
d004cb48:	edcd 8a04 	vstr	s17, [sp, #16]
d004cb4c:	ed8d 8a05 	vstr	s16, [sp, #20]
d004cb50:	b30b      	cbz	r3, d004cb96 <FirePlayerLaser+0x172>
d004cb52:	79a3      	ldrb	r3, [r4, #6]
d004cb54:	2b00      	cmp	r3, #0
d004cb56:	f000 80af 	beq.w	d004ccb8 <FirePlayerLaser+0x294>
d004cb5a:	7b23      	ldrb	r3, [r4, #12]
d004cb5c:	2b00      	cmp	r3, #0
d004cb5e:	f000 80af 	beq.w	d004ccc0 <FirePlayerLaser+0x29c>
d004cb62:	7ca3      	ldrb	r3, [r4, #18]
d004cb64:	2b00      	cmp	r3, #0
d004cb66:	f000 80af 	beq.w	d004ccc8 <FirePlayerLaser+0x2a4>
d004cb6a:	7e23      	ldrb	r3, [r4, #24]
d004cb6c:	2b00      	cmp	r3, #0
d004cb6e:	f000 80af 	beq.w	d004ccd0 <FirePlayerLaser+0x2ac>
d004cb72:	7fa3      	ldrb	r3, [r4, #30]
d004cb74:	2b00      	cmp	r3, #0
d004cb76:	f000 80af 	beq.w	d004ccd8 <FirePlayerLaser+0x2b4>
d004cb7a:	f894 3024 	ldrb.w	r3, [r4, #36]	; 0x24
d004cb7e:	b14b      	cbz	r3, d004cb94 <FirePlayerLaser+0x170>
d004cb80:	f894 302a 	ldrb.w	r3, [r4, #42]	; 0x2a
d004cb84:	2b00      	cmp	r3, #0
d004cb86:	f000 80ab 	beq.w	d004cce0 <FirePlayerLaser+0x2bc>
d004cb8a:	bb75      	cbnz	r5, d004cbea <FirePlayerLaser+0x1c6>
d004cb8c:	b006      	add	sp, #24
d004cb8e:	ecbd 8b06 	vpop	{d8-d10}
d004cb92:	bd70      	pop	{r4, r5, r6, pc}
d004cb94:	2306      	movs	r3, #6
d004cb96:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d004cb9a:	2232      	movs	r2, #50	; 0x32
d004cb9c:	2601      	movs	r6, #1
d004cb9e:	ed9d 0a03 	vldr	s0, [sp, #12]
d004cba2:	eb04 0543 	add.w	r5, r4, r3, lsl #1
d004cba6:	eddd 0a04 	vldr	s1, [sp, #16]
d004cbaa:	f804 6013 	strb.w	r6, [r4, r3, lsl #1]
d004cbae:	806a      	strh	r2, [r5, #2]
d004cbb0:	ed9d 1a05 	vldr	s2, [sp, #20]
d004cbb4:	88a8      	ldrh	r0, [r5, #4]
d004cbb6:	f004 fc91 	bl	d00514dc <entitySetPosition>
d004cbba:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cbbe:	eeb0 0a4a 	vmov.f32	s0, s20
d004cbc2:	4631      	mov	r1, r6
d004cbc4:	eef0 0a41 	vmov.f32	s1, s2
d004cbc8:	88a8      	ldrh	r0, [r5, #4]
d004cbca:	f004 fed1 	bl	d0051970 <entityRotation>
d004cbce:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cbd2:	88a8      	ldrh	r0, [r5, #4]
d004cbd4:	2100      	movs	r1, #0
d004cbd6:	eef1 0a69 	vneg.f32	s1, s19
d004cbda:	eeb0 0a41 	vmov.f32	s0, s2
d004cbde:	f004 fec7 	bl	d0051970 <entityRotation>
d004cbe2:	4631      	mov	r1, r6
d004cbe4:	88a8      	ldrh	r0, [r5, #4]
d004cbe6:	f005 fa79 	bl	d00520dc <entityVisible>
d004cbea:	4a44      	ldr	r2, [pc, #272]	; (d004ccfc <FirePlayerLaser+0x2d8>)
d004cbec:	4c44      	ldr	r4, [pc, #272]	; (d004cd00 <FirePlayerLaser+0x2dc>)
d004cbee:	7813      	ldrb	r3, [r2, #0]
d004cbf0:	f1c3 0301 	rsb	r3, r3, #1
d004cbf4:	b2db      	uxtb	r3, r3
d004cbf6:	7013      	strb	r3, [r2, #0]
d004cbf8:	bb03      	cbnz	r3, d004cc3c <FirePlayerLaser+0x218>
d004cbfa:	7d23      	ldrb	r3, [r4, #20]
d004cbfc:	2007      	movs	r0, #7
d004cbfe:	7d62      	ldrb	r2, [r4, #21]
d004cc00:	7da1      	ldrb	r1, [r4, #22]
d004cc02:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004cc06:	7de2      	ldrb	r2, [r4, #23]
d004cc08:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004cc0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004cc10:	689b      	ldr	r3, [r3, #8]
d004cc12:	689b      	ldr	r3, [r3, #8]
d004cc14:	4798      	blx	r3
d004cc16:	7d23      	ldrb	r3, [r4, #20]
d004cc18:	2007      	movs	r0, #7
d004cc1a:	7d62      	ldrb	r2, [r4, #21]
d004cc1c:	7da1      	ldrb	r1, [r4, #22]
d004cc1e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004cc22:	7de2      	ldrb	r2, [r4, #23]
d004cc24:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004cc28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004cc2c:	689b      	ldr	r3, [r3, #8]
d004cc2e:	685b      	ldr	r3, [r3, #4]
d004cc30:	b006      	add	sp, #24
d004cc32:	ecbd 8b06 	vpop	{d8-d10}
d004cc36:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004cc3a:	4718      	bx	r3
d004cc3c:	7d23      	ldrb	r3, [r4, #20]
d004cc3e:	2006      	movs	r0, #6
d004cc40:	7d62      	ldrb	r2, [r4, #21]
d004cc42:	7da1      	ldrb	r1, [r4, #22]
d004cc44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004cc48:	7de2      	ldrb	r2, [r4, #23]
d004cc4a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004cc4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004cc52:	689b      	ldr	r3, [r3, #8]
d004cc54:	689b      	ldr	r3, [r3, #8]
d004cc56:	4798      	blx	r3
d004cc58:	7d23      	ldrb	r3, [r4, #20]
d004cc5a:	2006      	movs	r0, #6
d004cc5c:	7d62      	ldrb	r2, [r4, #21]
d004cc5e:	e7dd      	b.n	d004cc1c <FirePlayerLaser+0x1f8>
d004cc60:	2306      	movs	r3, #6
d004cc62:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d004cc66:	2232      	movs	r2, #50	; 0x32
d004cc68:	2501      	movs	r5, #1
d004cc6a:	ed9d 0a03 	vldr	s0, [sp, #12]
d004cc6e:	eb04 0643 	add.w	r6, r4, r3, lsl #1
d004cc72:	eddd 0a04 	vldr	s1, [sp, #16]
d004cc76:	f804 5013 	strb.w	r5, [r4, r3, lsl #1]
d004cc7a:	8072      	strh	r2, [r6, #2]
d004cc7c:	ed9d 1a05 	vldr	s2, [sp, #20]
d004cc80:	88b0      	ldrh	r0, [r6, #4]
d004cc82:	f004 fc2b 	bl	d00514dc <entitySetPosition>
d004cc86:	ed9f 1a1c 	vldr	s2, [pc, #112]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cc8a:	eeb0 0a4a 	vmov.f32	s0, s20
d004cc8e:	4629      	mov	r1, r5
d004cc90:	eef0 0a41 	vmov.f32	s1, s2
d004cc94:	88b0      	ldrh	r0, [r6, #4]
d004cc96:	f004 fe6b 	bl	d0051970 <entityRotation>
d004cc9a:	ed9f 1a17 	vldr	s2, [pc, #92]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cc9e:	88b0      	ldrh	r0, [r6, #4]
d004cca0:	eef1 0a69 	vneg.f32	s1, s19
d004cca4:	eeb0 0a41 	vmov.f32	s0, s2
d004cca8:	2100      	movs	r1, #0
d004ccaa:	f004 fe61 	bl	d0051970 <entityRotation>
d004ccae:	4629      	mov	r1, r5
d004ccb0:	88b0      	ldrh	r0, [r6, #4]
d004ccb2:	f005 fa13 	bl	d00520dc <entityVisible>
d004ccb6:	e744      	b.n	d004cb42 <FirePlayerLaser+0x11e>
d004ccb8:	2301      	movs	r3, #1
d004ccba:	e76c      	b.n	d004cb96 <FirePlayerLaser+0x172>
d004ccbc:	2301      	movs	r3, #1
d004ccbe:	e7d0      	b.n	d004cc62 <FirePlayerLaser+0x23e>
d004ccc0:	2302      	movs	r3, #2
d004ccc2:	e768      	b.n	d004cb96 <FirePlayerLaser+0x172>
d004ccc4:	2302      	movs	r3, #2
d004ccc6:	e7cc      	b.n	d004cc62 <FirePlayerLaser+0x23e>
d004ccc8:	2303      	movs	r3, #3
d004ccca:	e764      	b.n	d004cb96 <FirePlayerLaser+0x172>
d004cccc:	2303      	movs	r3, #3
d004ccce:	e7c8      	b.n	d004cc62 <FirePlayerLaser+0x23e>
d004ccd0:	2304      	movs	r3, #4
d004ccd2:	e760      	b.n	d004cb96 <FirePlayerLaser+0x172>
d004ccd4:	2304      	movs	r3, #4
d004ccd6:	e7c4      	b.n	d004cc62 <FirePlayerLaser+0x23e>
d004ccd8:	2305      	movs	r3, #5
d004ccda:	e75c      	b.n	d004cb96 <FirePlayerLaser+0x172>
d004ccdc:	2305      	movs	r3, #5
d004ccde:	e7c0      	b.n	d004cc62 <FirePlayerLaser+0x23e>
d004cce0:	2307      	movs	r3, #7
d004cce2:	e758      	b.n	d004cb96 <FirePlayerLaser+0x172>
d004cce4:	2307      	movs	r3, #7
d004cce6:	e7bc      	b.n	d004cc62 <FirePlayerLaser+0x23e>
d004cce8:	d005a4a0 	.word	0xd005a4a0
d004ccec:	d00f4b60 	.word	0xd00f4b60
d004ccf0:	c2680000 	.word	0xc2680000
d004ccf4:	42680000 	.word	0x42680000
d004ccf8:	00000000 	.word	0x00000000
d004ccfc:	d005a68d 	.word	0xd005a68d
d004cd00:	2001f000 	.word	0x2001f000

d004cd04 <UpdateLasers>:
d004cd04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004cd08:	eddf 7a89 	vldr	s15, [pc, #548]	; d004cf30 <UpdateLasers+0x22c>
d004cd0c:	2600      	movs	r6, #0
d004cd0e:	4c89      	ldr	r4, [pc, #548]	; (d004cf34 <UpdateLasers+0x230>)
d004cd10:	ed2d 8b02 	vpush	{d8}
d004cd14:	f104 0530 	add.w	r5, r4, #48	; 0x30
d004cd18:	ee20 8a27 	vmul.f32	s16, s0, s15
d004cd1c:	b08b      	sub	sp, #44	; 0x2c
d004cd1e:	e007      	b.n	d004cd30 <UpdateLasers+0x2c>
d004cd20:	2100      	movs	r1, #0
d004cd22:	88a0      	ldrh	r0, [r4, #4]
d004cd24:	7026      	strb	r6, [r4, #0]
d004cd26:	f005 f9d9 	bl	d00520dc <entityVisible>
d004cd2a:	3406      	adds	r4, #6
d004cd2c:	42a5      	cmp	r5, r4
d004cd2e:	d012      	beq.n	d004cd56 <UpdateLasers+0x52>
d004cd30:	7823      	ldrb	r3, [r4, #0]
d004cd32:	2b00      	cmp	r3, #0
d004cd34:	d0f9      	beq.n	d004cd2a <UpdateLasers+0x26>
d004cd36:	8863      	ldrh	r3, [r4, #2]
d004cd38:	2b00      	cmp	r3, #0
d004cd3a:	d0f1      	beq.n	d004cd20 <UpdateLasers+0x1c>
d004cd3c:	3b01      	subs	r3, #1
d004cd3e:	eeb0 0a48 	vmov.f32	s0, s16
d004cd42:	88a0      	ldrh	r0, [r4, #4]
d004cd44:	8063      	strh	r3, [r4, #2]
d004cd46:	f004 fc2d 	bl	d00515a4 <entityMoveForward>
d004cd4a:	8863      	ldrh	r3, [r4, #2]
d004cd4c:	2b00      	cmp	r3, #0
d004cd4e:	d0e7      	beq.n	d004cd20 <UpdateLasers+0x1c>
d004cd50:	3406      	adds	r4, #6
d004cd52:	42a5      	cmp	r5, r4
d004cd54:	d1ec      	bne.n	d004cd30 <UpdateLasers+0x2c>
d004cd56:	4c78      	ldr	r4, [pc, #480]	; (d004cf38 <UpdateLasers+0x234>)
d004cd58:	f04f 0a00 	mov.w	sl, #0
d004cd5c:	f8df 91e4 	ldr.w	r9, [pc, #484]	; d004cf44 <UpdateLasers+0x240>
d004cd60:	f104 0530 	add.w	r5, r4, #48	; 0x30
d004cd64:	f8df 81e0 	ldr.w	r8, [pc, #480]	; d004cf48 <UpdateLasers+0x244>
d004cd68:	e007      	b.n	d004cd7a <UpdateLasers+0x76>
d004cd6a:	2100      	movs	r1, #0
d004cd6c:	88a0      	ldrh	r0, [r4, #4]
d004cd6e:	7021      	strb	r1, [r4, #0]
d004cd70:	f005 f9b4 	bl	d00520dc <entityVisible>
d004cd74:	3406      	adds	r4, #6
d004cd76:	42a5      	cmp	r5, r4
d004cd78:	d01a      	beq.n	d004cdb0 <UpdateLasers+0xac>
d004cd7a:	7823      	ldrb	r3, [r4, #0]
d004cd7c:	2b00      	cmp	r3, #0
d004cd7e:	d0f9      	beq.n	d004cd74 <UpdateLasers+0x70>
d004cd80:	8863      	ldrh	r3, [r4, #2]
d004cd82:	2b00      	cmp	r3, #0
d004cd84:	d0f1      	beq.n	d004cd6a <UpdateLasers+0x66>
d004cd86:	3b01      	subs	r3, #1
d004cd88:	88a0      	ldrh	r0, [r4, #4]
d004cd8a:	eeb0 0a48 	vmov.f32	s0, s16
d004cd8e:	8063      	strh	r3, [r4, #2]
d004cd90:	f004 fc08 	bl	d00515a4 <entityMoveForward>
d004cd94:	4969      	ldr	r1, [pc, #420]	; (d004cf3c <UpdateLasers+0x238>)
d004cd96:	2300      	movs	r3, #0
d004cd98:	aa01      	add	r2, sp, #4
d004cd9a:	88a0      	ldrh	r0, [r4, #4]
d004cd9c:	6809      	ldr	r1, [r1, #0]
d004cd9e:	f005 f9b7 	bl	d0052110 <entitySweepRaycastTest>
d004cda2:	b950      	cbnz	r0, d004cdba <UpdateLasers+0xb6>
d004cda4:	8863      	ldrh	r3, [r4, #2]
d004cda6:	2b00      	cmp	r3, #0
d004cda8:	d0df      	beq.n	d004cd6a <UpdateLasers+0x66>
d004cdaa:	3406      	adds	r4, #6
d004cdac:	42a5      	cmp	r5, r4
d004cdae:	d1e4      	bne.n	d004cd7a <UpdateLasers+0x76>
d004cdb0:	b00b      	add	sp, #44	; 0x2c
d004cdb2:	ecbd 8b02 	vpop	{d8}
d004cdb6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004cdba:	f04f 0b00 	mov.w	fp, #0
d004cdbe:	ed9d 1a03 	vldr	s2, [sp, #12]
d004cdc2:	eddd 0a02 	vldr	s1, [sp, #8]
d004cdc6:	af07      	add	r7, sp, #28
d004cdc8:	ed9d 0a01 	vldr	s0, [sp, #4]
d004cdcc:	f8a4 b002 	strh.w	fp, [r4, #2]
d004cdd0:	f003 fbc6 	bl	d0050560 <vec3>
d004cdd4:	4e5a      	ldr	r6, [pc, #360]	; (d004cf40 <UpdateLasers+0x23c>)
d004cdd6:	aa04      	add	r2, sp, #16
d004cdd8:	ed8d 0a04 	vstr	s0, [sp, #16]
d004cddc:	edcd 0a05 	vstr	s1, [sp, #20]
d004cde0:	ed8d 1a06 	vstr	s2, [sp, #24]
d004cde4:	7833      	ldrb	r3, [r6, #0]
d004cde6:	ca07      	ldmia	r2, {r0, r1, r2}
d004cde8:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d004cdec:	2b00      	cmp	r3, #0
d004cdee:	d058      	beq.n	d004cea2 <UpdateLasers+0x19e>
d004cdf0:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d004cdf4:	edd6 7a04 	vldr	s15, [r6, #16]
d004cdf8:	eef4 7ac7 	vcmpe.f32	s15, s14
d004cdfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce00:	dd62      	ble.n	d004cec8 <UpdateLasers+0x1c4>
d004ce02:	465b      	mov	r3, fp
d004ce04:	7f32      	ldrb	r2, [r6, #28]
d004ce06:	2a00      	cmp	r2, #0
d004ce08:	f000 8086 	beq.w	d004cf18 <UpdateLasers+0x214>
d004ce0c:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d004ce10:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce18:	d45b      	bmi.n	d004ced2 <UpdateLasers+0x1ce>
d004ce1a:	f896 2038 	ldrb.w	r2, [r6, #56]	; 0x38
d004ce1e:	2a00      	cmp	r2, #0
d004ce20:	d07c      	beq.n	d004cf1c <UpdateLasers+0x218>
d004ce22:	ed96 7a12 	vldr	s14, [r6, #72]	; 0x48
d004ce26:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce2e:	d454      	bmi.n	d004ceda <UpdateLasers+0x1d6>
d004ce30:	f896 2054 	ldrb.w	r2, [r6, #84]	; 0x54
d004ce34:	2a00      	cmp	r2, #0
d004ce36:	d073      	beq.n	d004cf20 <UpdateLasers+0x21c>
d004ce38:	ed96 7a19 	vldr	s14, [r6, #100]	; 0x64
d004ce3c:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce44:	d44d      	bmi.n	d004cee2 <UpdateLasers+0x1de>
d004ce46:	f896 2070 	ldrb.w	r2, [r6, #112]	; 0x70
d004ce4a:	2a00      	cmp	r2, #0
d004ce4c:	d06a      	beq.n	d004cf24 <UpdateLasers+0x220>
d004ce4e:	ed96 7a20 	vldr	s14, [r6, #128]	; 0x80
d004ce52:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce5a:	d446      	bmi.n	d004ceea <UpdateLasers+0x1e6>
d004ce5c:	f896 208c 	ldrb.w	r2, [r6, #140]	; 0x8c
d004ce60:	2a00      	cmp	r2, #0
d004ce62:	d061      	beq.n	d004cf28 <UpdateLasers+0x224>
d004ce64:	ed96 7a27 	vldr	s14, [r6, #156]	; 0x9c
d004ce68:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce70:	d43f      	bmi.n	d004cef2 <UpdateLasers+0x1ee>
d004ce72:	f896 20a8 	ldrb.w	r2, [r6, #168]	; 0xa8
d004ce76:	2a00      	cmp	r2, #0
d004ce78:	d058      	beq.n	d004cf2c <UpdateLasers+0x228>
d004ce7a:	ed96 7a2e 	vldr	s14, [r6, #184]	; 0xb8
d004ce7e:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce86:	d438      	bmi.n	d004cefa <UpdateLasers+0x1f6>
d004ce88:	f896 20c4 	ldrb.w	r2, [r6, #196]	; 0xc4
d004ce8c:	2a00      	cmp	r2, #0
d004ce8e:	d041      	beq.n	d004cf14 <UpdateLasers+0x210>
d004ce90:	ed96 7a35 	vldr	s14, [r6, #212]	; 0xd4
d004ce94:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce9c:	d43a      	bmi.n	d004cf14 <UpdateLasers+0x210>
d004ce9e:	1c5a      	adds	r2, r3, #1
d004cea0:	d080      	beq.n	d004cda4 <UpdateLasers+0xa0>
d004cea2:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d004cea6:	2101      	movs	r1, #1
d004cea8:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d004ceac:	f806 1023 	strb.w	r1, [r6, r3, lsl #2]
d004ceb0:	f8c2 a010 	str.w	sl, [r2, #16]
d004ceb4:	1d13      	adds	r3, r2, #4
d004ceb6:	f8c2 9014 	str.w	r9, [r2, #20]
d004ceba:	f8c2 8018 	str.w	r8, [r2, #24]
d004cebe:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d004cec2:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004cec6:	e76d      	b.n	d004cda4 <UpdateLasers+0xa0>
d004cec8:	eef0 7a47 	vmov.f32	s15, s14
d004cecc:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d004ced0:	e798      	b.n	d004ce04 <UpdateLasers+0x100>
d004ced2:	eef0 7a47 	vmov.f32	s15, s14
d004ced6:	2301      	movs	r3, #1
d004ced8:	e79f      	b.n	d004ce1a <UpdateLasers+0x116>
d004ceda:	eef0 7a47 	vmov.f32	s15, s14
d004cede:	2302      	movs	r3, #2
d004cee0:	e7a6      	b.n	d004ce30 <UpdateLasers+0x12c>
d004cee2:	eef0 7a47 	vmov.f32	s15, s14
d004cee6:	2303      	movs	r3, #3
d004cee8:	e7ad      	b.n	d004ce46 <UpdateLasers+0x142>
d004ceea:	eef0 7a47 	vmov.f32	s15, s14
d004ceee:	2304      	movs	r3, #4
d004cef0:	e7b4      	b.n	d004ce5c <UpdateLasers+0x158>
d004cef2:	eef0 7a47 	vmov.f32	s15, s14
d004cef6:	2305      	movs	r3, #5
d004cef8:	e7bb      	b.n	d004ce72 <UpdateLasers+0x16e>
d004cefa:	f896 30c4 	ldrb.w	r3, [r6, #196]	; 0xc4
d004cefe:	b14b      	cbz	r3, d004cf14 <UpdateLasers+0x210>
d004cf00:	edd6 7a35 	vldr	s15, [r6, #212]	; 0xd4
d004cf04:	eef4 7ac7 	vcmpe.f32	s15, s14
d004cf08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004cf0c:	bfcc      	ite	gt
d004cf0e:	2307      	movgt	r3, #7
d004cf10:	2306      	movle	r3, #6
d004cf12:	e7c6      	b.n	d004cea2 <UpdateLasers+0x19e>
d004cf14:	2307      	movs	r3, #7
d004cf16:	e7c4      	b.n	d004cea2 <UpdateLasers+0x19e>
d004cf18:	2301      	movs	r3, #1
d004cf1a:	e7c2      	b.n	d004cea2 <UpdateLasers+0x19e>
d004cf1c:	2302      	movs	r3, #2
d004cf1e:	e7c0      	b.n	d004cea2 <UpdateLasers+0x19e>
d004cf20:	2303      	movs	r3, #3
d004cf22:	e7be      	b.n	d004cea2 <UpdateLasers+0x19e>
d004cf24:	2304      	movs	r3, #4
d004cf26:	e7bc      	b.n	d004cea2 <UpdateLasers+0x19e>
d004cf28:	2305      	movs	r3, #5
d004cf2a:	e7ba      	b.n	d004cea2 <UpdateLasers+0x19e>
d004cf2c:	2306      	movs	r3, #6
d004cf2e:	e7b8      	b.n	d004cea2 <UpdateLasers+0x19e>
d004cf30:	44fa0000 	.word	0x44fa0000
d004cf34:	d00f4a8c 	.word	0xd00f4a8c
d004cf38:	d00f4b60 	.word	0xd00f4b60
d004cf3c:	d005a684 	.word	0xd005a684
d004cf40:	d005a524 	.word	0xd005a524
d004cf44:	3f866666 	.word	0x3f866666
d004cf48:	3f333333 	.word	0x3f333333

d004cf4c <initSmoke>:
d004cf4c:	b530      	push	{r4, r5, lr}
d004cf4e:	4c0d      	ldr	r4, [pc, #52]	; (d004cf84 <initSmoke+0x38>)
d004cf50:	b085      	sub	sp, #20
d004cf52:	f104 0580 	add.w	r5, r4, #128	; 0x80
d004cf56:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d004cf5a:	ed9f 0a0b 	vldr	s0, [pc, #44]	; d004cf88 <initSmoke+0x3c>
d004cf5e:	eeb0 2a08 	vmov.f32	s4, #8	; 0x40400000  3.0
d004cf62:	2100      	movs	r1, #0
d004cf64:	eef0 0a40 	vmov.f32	s1, s0
d004cf68:	2021      	movs	r0, #33	; 0x21
d004cf6a:	eef0 1a62 	vmov.f32	s3, s5
d004cf6e:	eeb0 1a40 	vmov.f32	s2, s0
d004cf72:	f007 fccd 	bl	d0054910 <sb3dParticleSpawnQuad>
d004cf76:	f844 0f04 	str.w	r0, [r4, #4]!
d004cf7a:	42ac      	cmp	r4, r5
d004cf7c:	d1eb      	bne.n	d004cf56 <initSmoke+0xa>
d004cf7e:	b005      	add	sp, #20
d004cf80:	bd30      	pop	{r4, r5, pc}
d004cf82:	bf00      	nop
d004cf84:	d00f493c 	.word	0xd00f493c
d004cf88:	00000000 	.word	0x00000000

d004cf8c <updateSmoke>:
d004cf8c:	b5f0      	push	{r4, r5, r6, r7, lr}
d004cf8e:	ed2d 8b0e 	vpush	{d8-d14}
d004cf92:	ed9f aa42 	vldr	s20, [pc, #264]	; d004d09c <updateSmoke+0x110>
d004cf96:	b089      	sub	sp, #36	; 0x24
d004cf98:	eddf ba41 	vldr	s23, [pc, #260]	; d004d0a0 <updateSmoke+0x114>
d004cf9c:	2500      	movs	r5, #0
d004cf9e:	ed9f ba41 	vldr	s22, [pc, #260]	; d004d0a4 <updateSmoke+0x118>
d004cfa2:	eef0 9a4a 	vmov.f32	s19, s20
d004cfa6:	4c40      	ldr	r4, [pc, #256]	; (d004d0a8 <updateSmoke+0x11c>)
d004cfa8:	eef0 da6b 	vmov.f32	s27, s23
d004cfac:	ee20 aa0a 	vmul.f32	s20, s0, s20
d004cfb0:	eddf aa3e 	vldr	s21, [pc, #248]	; d004d0ac <updateSmoke+0x120>
d004cfb4:	ee60 ba2b 	vmul.f32	s23, s0, s23
d004cfb8:	f104 0780 	add.w	r7, r4, #128	; 0x80
d004cfbc:	ee20 ba0b 	vmul.f32	s22, s0, s22
d004cfc0:	ed9f da3b 	vldr	s26, [pc, #236]	; d004d0b0 <updateSmoke+0x124>
d004cfc4:	eddf ca3b 	vldr	s25, [pc, #236]	; d004d0b4 <updateSmoke+0x128>
d004cfc8:	ed9f ca3b 	vldr	s24, [pc, #236]	; d004d0b8 <updateSmoke+0x12c>
d004cfcc:	edcd 0a01 	vstr	s1, [sp, #4]
d004cfd0:	ed8d 1a02 	vstr	s2, [sp, #8]
d004cfd4:	edcd 1a03 	vstr	s3, [sp, #12]
d004cfd8:	ee07 5a90 	vmov	s15, r5
d004cfdc:	f854 6f04 	ldr.w	r6, [r4, #4]!
d004cfe0:	eeb0 0a4a 	vmov.f32	s0, s20
d004cfe4:	3501      	adds	r5, #1
d004cfe6:	eeb8 9ae7 	vcvt.f32.s32	s18, s15
d004cfea:	2e00      	cmp	r6, #0
d004cfec:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004cff0:	eeb3 ea00 	vmov.f32	s28, #48	; 0x41800000  16.0
d004cff4:	eea9 0a2a 	vfma.f32	s0, s18, s21
d004cff8:	db4a      	blt.n	d004d090 <updateSmoke+0x104>
d004cffa:	f009 fee7 	bl	d0056dcc <fmodf>
d004cffe:	eeb0 8a40 	vmov.f32	s16, s0
d004d002:	eeb0 0a6b 	vmov.f32	s0, s23
d004d006:	eef0 ea69 	vmov.f32	s29, s19
d004d00a:	eea9 0a0d 	vfma.f32	s0, s18, s26
d004d00e:	f009 fe3b 	bl	d0056c88 <sinf>
d004d012:	eef7 7a04 	vmov.f32	s15, #116	; 0x3fa00000  1.250
d004d016:	eef0 8a40 	vmov.f32	s17, s0
d004d01a:	eeb0 0a4b 	vmov.f32	s0, s22
d004d01e:	eee8 ea27 	vfma.f32	s29, s16, s15
d004d022:	ee68 8a8e 	vmul.f32	s17, s17, s28
d004d026:	eea9 0a2c 	vfma.f32	s0, s18, s25
d004d02a:	f009 fc49 	bl	d00568c0 <cosf>
d004d02e:	eeb0 9a6d 	vmov.f32	s18, s27
d004d032:	eef0 7a0c 	vmov.f32	s15, #12	; 0x40600000  3.5
d004d036:	eddd 6a01 	vldr	s13, [sp, #4]
d004d03a:	ee38 7a29 	vadd.f32	s14, s16, s19
d004d03e:	ed9d 1a03 	vldr	s2, [sp, #12]
d004d042:	eeee 6aa8 	vfma.f32	s13, s29, s17
d004d046:	eddd 0a02 	vldr	s1, [sp, #8]
d004d04a:	eea8 9a27 	vfma.f32	s18, s16, s15
d004d04e:	4630      	mov	r0, r6
d004d050:	ee60 7a0e 	vmul.f32	s15, s0, s28
d004d054:	eee8 0a0c 	vfma.f32	s1, s16, s24
d004d058:	eea7 1a27 	vfma.f32	s2, s14, s15
d004d05c:	eeb0 0a66 	vmov.f32	s0, s13
d004d060:	f007 fc9e 	bl	d00549a0 <sb3dParticleSetPosition>
d004d064:	ee29 0a0e 	vmul.f32	s0, s18, s28
d004d068:	6820      	ldr	r0, [r4, #0]
d004d06a:	f007 fcb1 	bl	d00549d0 <sb3dParticleSetSize>
d004d06e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d072:	6820      	ldr	r0, [r4, #0]
d004d074:	ee38 0a00 	vadd.f32	s0, s16, s0
d004d078:	ee30 0a00 	vadd.f32	s0, s0, s0
d004d07c:	f007 fcbe 	bl	d00549fc <sb3dParticleSetShade>
d004d080:	2121      	movs	r1, #33	; 0x21
d004d082:	6820      	ldr	r0, [r4, #0]
d004d084:	f007 fcd0 	bl	d0054a28 <sb3dParticleSetColor>
d004d088:	2100      	movs	r1, #0
d004d08a:	6820      	ldr	r0, [r4, #0]
d004d08c:	f007 fcd8 	bl	d0054a40 <sb3dParticleSetEmission>
d004d090:	42a7      	cmp	r7, r4
d004d092:	d1a1      	bne.n	d004cfd8 <updateSmoke+0x4c>
d004d094:	b009      	add	sp, #36	; 0x24
d004d096:	ecbd 8b0e 	vpop	{d8-d14}
d004d09a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004d09c:	3eb33333 	.word	0x3eb33333
d004d0a0:	3f99999a 	.word	0x3f99999a
d004d0a4:	3f666666 	.word	0x3f666666
d004d0a8:	d00f493c 	.word	0xd00f493c
d004d0ac:	3d000000 	.word	0x3d000000
d004d0b0:	3faf5c29 	.word	0x3faf5c29
d004d0b4:	3ff47ae1 	.word	0x3ff47ae1
d004d0b8:	43600000 	.word	0x43600000
d004d0bc:	00000000 	.word	0x00000000

d004d0c0 <main>:
d004d0c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004d0c4:	ed2d 8b10 	vpush	{d8-d15}
d004d0c8:	f5ad 4d8b 	sub.w	sp, sp, #17792	; 0x4580
d004d0cc:	4cc5      	ldr	r4, [pc, #788]	; (d004d3e4 <main+0x324>)
d004d0ce:	f244 2597 	movw	r5, #17047	; 0x4297
d004d0d2:	ed9f 8ac5 	vldr	s16, [pc, #788]	; d004d3e8 <main+0x328>
d004d0d6:	b085      	sub	sp, #20
d004d0d8:	4fc4      	ldr	r7, [pc, #784]	; (d004d3ec <main+0x32c>)
d004d0da:	f7fe fe83 	bl	d004bde4 <initSystem>
d004d0de:	7d23      	ldrb	r3, [r4, #20]
d004d0e0:	446d      	add	r5, sp
d004d0e2:	7d62      	ldrb	r2, [r4, #21]
d004d0e4:	7da6      	ldrb	r6, [r4, #22]
d004d0e6:	2100      	movs	r1, #0
d004d0e8:	f025 051f 	bic.w	r5, r5, #31
d004d0ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d0f0:	7de2      	ldrb	r2, [r4, #23]
d004d0f2:	ea43 4c06 	orr.w	ip, r3, r6, lsl #16
d004d0f6:	f505 7310 	add.w	r3, r5, #576	; 0x240
d004d0fa:	48bd      	ldr	r0, [pc, #756]	; (d004d3f0 <main+0x330>)
d004d0fc:	f505 7a30 	add.w	sl, r5, #704	; 0x2c0
d004d100:	9306      	str	r3, [sp, #24]
d004d102:	ea4c 6302 	orr.w	r3, ip, r2, lsl #24
d004d106:	f505 72e0 	add.w	r2, r5, #448	; 0x1c0
d004d10a:	4eba      	ldr	r6, [pc, #744]	; (d004d3f4 <main+0x334>)
d004d10c:	685b      	ldr	r3, [r3, #4]
d004d10e:	f505 7820 	add.w	r8, r5, #640	; 0x280
d004d112:	9207      	str	r2, [sp, #28]
d004d114:	f505 7900 	add.w	r9, r5, #512	; 0x200
d004d118:	681b      	ldr	r3, [r3, #0]
d004d11a:	4798      	blx	r3
d004d11c:	7b23      	ldrb	r3, [r4, #12]
d004d11e:	7b62      	ldrb	r2, [r4, #13]
d004d120:	2064      	movs	r0, #100	; 0x64
d004d122:	7ba1      	ldrb	r1, [r4, #14]
d004d124:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d128:	7be2      	ldrb	r2, [r4, #15]
d004d12a:	f8df b2f8 	ldr.w	fp, [pc, #760]	; d004d424 <main+0x364>
d004d12e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d132:	eddf 9ab1 	vldr	s19, [pc, #708]	; d004d3f8 <main+0x338>
d004d136:	ed9f 9ab1 	vldr	s18, [pc, #708]	; d004d3fc <main+0x33c>
d004d13a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d13e:	681b      	ldr	r3, [r3, #0]
d004d140:	689b      	ldr	r3, [r3, #8]
d004d142:	4798      	blx	r3
d004d144:	f003 fa92 	bl	d005066c <worldClear>
d004d148:	f005 fff2 	bl	d0053130 <setDefaultRenderMode>
d004d14c:	a81e      	add	r0, sp, #120	; 0x78
d004d14e:	f003 faf9 	bl	d0050744 <cameraCreate>
d004d152:	a91e      	add	r1, sp, #120	; 0x78
d004d154:	2260      	movs	r2, #96	; 0x60
d004d156:	48aa      	ldr	r0, [pc, #680]	; (d004d400 <main+0x340>)
d004d158:	f008 fa72 	bl	d0055640 <memcpy>
d004d15c:	48a8      	ldr	r0, [pc, #672]	; (d004d400 <main+0x340>)
d004d15e:	eddf 0aa9 	vldr	s1, [pc, #676]	; d004d404 <main+0x344>
d004d162:	ed9f 0aa9 	vldr	s0, [pc, #676]	; d004d408 <main+0x348>
d004d166:	f003 fe43 	bl	d0050df0 <cameraSetRange>
d004d16a:	eeb0 1a48 	vmov.f32	s2, s16
d004d16e:	eeb0 0a48 	vmov.f32	s0, s16
d004d172:	eddf 0aa6 	vldr	s1, [pc, #664]	; d004d40c <main+0x34c>
d004d176:	f003 f9f3 	bl	d0050560 <vec3>
d004d17a:	48a1      	ldr	r0, [pc, #644]	; (d004d400 <main+0x340>)
d004d17c:	edcd 0a47 	vstr	s1, [sp, #284]	; 0x11c
d004d180:	ed8d 0a46 	vstr	s0, [sp, #280]	; 0x118
d004d184:	ed8d 1a48 	vstr	s2, [sp, #288]	; 0x120
d004d188:	f003 fae6 	bl	d0050758 <cameraSetPosition>
d004d18c:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d004d190:	4650      	mov	r0, sl
d004d192:	eef0 0a41 	vmov.f32	s1, s2
d004d196:	eeb0 0a41 	vmov.f32	s0, s2
d004d19a:	f004 fbf9 	bl	d0051990 <createBox>
d004d19e:	eeb0 1a48 	vmov.f32	s2, s16
d004d1a2:	eef0 0a48 	vmov.f32	s1, s16
d004d1a6:	eeb0 0a48 	vmov.f32	s0, s16
d004d1aa:	f003 f9d9 	bl	d0050560 <vec3>
d004d1ae:	4650      	mov	r0, sl
d004d1b0:	edcd 0a4a 	vstr	s1, [sp, #296]	; 0x128
d004d1b4:	f04f 4a7f 	mov.w	sl, #4278190080	; 0xff000000
d004d1b8:	ed8d 0a49 	vstr	s0, [sp, #292]	; 0x124
d004d1bc:	ed8d 1a4b 	vstr	s2, [sp, #300]	; 0x12c
d004d1c0:	f004 f946 	bl	d0051450 <entityWorldSpawn>
d004d1c4:	9009      	str	r0, [sp, #36]	; 0x24
d004d1c6:	f7ff fec1 	bl	d004cf4c <initSmoke>
d004d1ca:	f7ff f835 	bl	d004c238 <initImpactFlames>
d004d1ce:	f50d 7cf2 	add.w	ip, sp, #484	; 0x1e4
d004d1d2:	f50d 7ee8 	add.w	lr, sp, #464	; 0x1d0
d004d1d6:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004d1d8:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d1dc:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004d1de:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d1e2:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004d1e4:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d1e8:	e897 000f 	ldmia.w	r7, {r0, r1, r2, r3}
d004d1ec:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004d1f0:	f107 0c10 	add.w	ip, r7, #16
d004d1f4:	f8c6 a000 	str.w	sl, [r6]
d004d1f8:	f8cd e000 	str.w	lr, [sp]
d004d1fc:	3724      	adds	r7, #36	; 0x24
d004d1fe:	f8c6 a040 	str.w	sl, [r6, #64]	; 0x40
d004d202:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d206:	f8dc c000 	ldr.w	ip, [ip]
d004d20a:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004d20e:	4653      	mov	r3, sl
d004d210:	f8ce c000 	str.w	ip, [lr]
d004d214:	4630      	mov	r0, r6
d004d216:	a979      	add	r1, sp, #484	; 0x1e4
d004d218:	2210      	movs	r2, #16
d004d21a:	f505 7aa0 	add.w	sl, r5, #320	; 0x140
d004d21e:	f004 ffd1 	bl	d00521c4 <buildLightingCLUT>
d004d222:	7b23      	ldrb	r3, [r4, #12]
d004d224:	f505 71c0 	add.w	r1, r5, #384	; 0x180
d004d228:	7b62      	ldrb	r2, [r4, #13]
d004d22a:	4630      	mov	r0, r6
d004d22c:	4e78      	ldr	r6, [pc, #480]	; (d004d410 <main+0x350>)
d004d22e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d232:	9108      	str	r1, [sp, #32]
d004d234:	7ba1      	ldrb	r1, [r4, #14]
d004d236:	7be2      	ldrb	r2, [r4, #15]
d004d238:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d23c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d240:	681b      	ldr	r3, [r3, #0]
d004d242:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004d244:	4798      	blx	r3
d004d246:	eeb0 1a48 	vmov.f32	s2, s16
d004d24a:	eef0 0a48 	vmov.f32	s1, s16
d004d24e:	eeb0 0a48 	vmov.f32	s0, s16
d004d252:	f003 f985 	bl	d0050560 <vec3>
d004d256:	eddf 1a6c 	vldr	s3, [pc, #432]	; d004d408 <main+0x348>
d004d25a:	2001      	movs	r0, #1
d004d25c:	edcd 0a4d 	vstr	s1, [sp, #308]	; 0x134
d004d260:	ed8d 0a4c 	vstr	s0, [sp, #304]	; 0x130
d004d264:	ed8d 1a4e 	vstr	s2, [sp, #312]	; 0x138
d004d268:	f005 fa02 	bl	d0052670 <addPointLight>
d004d26c:	b2c0      	uxtb	r0, r0
d004d26e:	ab3a      	add	r3, sp, #232	; 0xe8
d004d270:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d274:	ee0f 0a10 	vmov	s30, r0
d004d278:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d004d27c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004d280:	2001      	movs	r0, #1
d004d282:	edd3 0a01 	vldr	s1, [r3, #4]
d004d286:	ed93 1a02 	vldr	s2, [r3, #8]
d004d28a:	ed93 0a00 	vldr	s0, [r3]
d004d28e:	f005 fa2b 	bl	d00526e8 <addDirectionalLight>
d004d292:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d296:	b2c3      	uxtb	r3, r0
d004d298:	461f      	mov	r7, r3
d004d29a:	4618      	mov	r0, r3
d004d29c:	930d      	str	r3, [sp, #52]	; 0x34
d004d29e:	f005 fa6f 	bl	d0052780 <lightSetIntensity>
d004d2a2:	4638      	mov	r0, r7
d004d2a4:	2100      	movs	r1, #0
d004d2a6:	f005 f9d5 	bl	d0052654 <lightEnable>
d004d2aa:	495a      	ldr	r1, [pc, #360]	; (d004d414 <main+0x354>)
d004d2ac:	485a      	ldr	r0, [pc, #360]	; (d004d418 <main+0x358>)
d004d2ae:	f7fd ff41 	bl	d004b134 <LoadSFX>
d004d2b2:	7d27      	ldrb	r7, [r4, #20]
d004d2b4:	4602      	mov	r2, r0
d004d2b6:	f894 c015 	ldrb.w	ip, [r4, #21]
d004d2ba:	4856      	ldr	r0, [pc, #344]	; (d004d414 <main+0x354>)
d004d2bc:	2300      	movs	r3, #0
d004d2be:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d004d2c2:	f8cb 2000 	str.w	r2, [fp]
d004d2c6:	6801      	ldr	r1, [r0, #0]
d004d2c8:	7da0      	ldrb	r0, [r4, #22]
d004d2ca:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d004d2ce:	7de0      	ldrb	r0, [r4, #23]
d004d2d0:	ea47 6700 	orr.w	r7, r7, r0, lsl #24
d004d2d4:	4618      	mov	r0, r3
d004d2d6:	68bf      	ldr	r7, [r7, #8]
d004d2d8:	68ff      	ldr	r7, [r7, #12]
d004d2da:	47b8      	blx	r7
d004d2dc:	7d23      	ldrb	r3, [r4, #20]
d004d2de:	7d62      	ldrb	r2, [r4, #21]
d004d2e0:	f505 7780 	add.w	r7, r5, #256	; 0x100
d004d2e4:	7da0      	ldrb	r0, [r4, #22]
d004d2e6:	f644 6184 	movw	r1, #20100	; 0x4e84
d004d2ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d2ee:	7de2      	ldrb	r2, [r4, #23]
d004d2f0:	970b      	str	r7, [sp, #44]	; 0x2c
d004d2f2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d2f6:	2000      	movs	r0, #0
d004d2f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d2fc:	689b      	ldr	r3, [r3, #8]
d004d2fe:	691b      	ldr	r3, [r3, #16]
d004d300:	4798      	blx	r3
d004d302:	7d23      	ldrb	r3, [r4, #20]
d004d304:	7d62      	ldrb	r2, [r4, #21]
d004d306:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d30a:	7da0      	ldrb	r0, [r4, #22]
d004d30c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d310:	7de2      	ldrb	r2, [r4, #23]
d004d312:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d316:	2000      	movs	r0, #0
d004d318:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d31c:	689b      	ldr	r3, [r3, #8]
d004d31e:	695b      	ldr	r3, [r3, #20]
d004d320:	4798      	blx	r3
d004d322:	7d23      	ldrb	r3, [r4, #20]
d004d324:	7d62      	ldrb	r2, [r4, #21]
d004d326:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d004d32a:	7da0      	ldrb	r0, [r4, #22]
d004d32c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d330:	7de2      	ldrb	r2, [r4, #23]
d004d332:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d336:	2000      	movs	r0, #0
d004d338:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d33c:	689b      	ldr	r3, [r3, #8]
d004d33e:	699b      	ldr	r3, [r3, #24]
d004d340:	4798      	blx	r3
d004d342:	7d23      	ldrb	r3, [r4, #20]
d004d344:	7d62      	ldrb	r2, [r4, #21]
d004d346:	2100      	movs	r1, #0
d004d348:	7da0      	ldrb	r0, [r4, #22]
d004d34a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d34e:	7de2      	ldrb	r2, [r4, #23]
d004d350:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d354:	4608      	mov	r0, r1
d004d356:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d35a:	689b      	ldr	r3, [r3, #8]
d004d35c:	6a1b      	ldr	r3, [r3, #32]
d004d35e:	4798      	blx	r3
d004d360:	492e      	ldr	r1, [pc, #184]	; (d004d41c <main+0x35c>)
d004d362:	482f      	ldr	r0, [pc, #188]	; (d004d420 <main+0x360>)
d004d364:	f7fd fee6 	bl	d004b134 <LoadSFX>
d004d368:	7d27      	ldrb	r7, [r4, #20]
d004d36a:	4602      	mov	r2, r0
d004d36c:	f894 c015 	ldrb.w	ip, [r4, #21]
d004d370:	482a      	ldr	r0, [pc, #168]	; (d004d41c <main+0x35c>)
d004d372:	2300      	movs	r3, #0
d004d374:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d004d378:	f8cb 2000 	str.w	r2, [fp]
d004d37c:	6801      	ldr	r1, [r0, #0]
d004d37e:	7da0      	ldrb	r0, [r4, #22]
d004d380:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d004d384:	7de0      	ldrb	r0, [r4, #23]
d004d386:	ea47 6700 	orr.w	r7, r7, r0, lsl #24
d004d38a:	2001      	movs	r0, #1
d004d38c:	68bf      	ldr	r7, [r7, #8]
d004d38e:	68ff      	ldr	r7, [r7, #12]
d004d390:	47b8      	blx	r7
d004d392:	7d23      	ldrb	r3, [r4, #20]
d004d394:	7d62      	ldrb	r2, [r4, #21]
d004d396:	f244 21cc 	movw	r1, #17100	; 0x42cc
d004d39a:	7da7      	ldrb	r7, [r4, #22]
d004d39c:	2001      	movs	r0, #1
d004d39e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3a2:	7de2      	ldrb	r2, [r4, #23]
d004d3a4:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d3a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3ac:	689b      	ldr	r3, [r3, #8]
d004d3ae:	691b      	ldr	r3, [r3, #16]
d004d3b0:	4798      	blx	r3
d004d3b2:	7d23      	ldrb	r3, [r4, #20]
d004d3b4:	7d62      	ldrb	r2, [r4, #21]
d004d3b6:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d3ba:	7da7      	ldrb	r7, [r4, #22]
d004d3bc:	2001      	movs	r0, #1
d004d3be:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3c2:	7de2      	ldrb	r2, [r4, #23]
d004d3c4:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d3c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3cc:	689b      	ldr	r3, [r3, #8]
d004d3ce:	695b      	ldr	r3, [r3, #20]
d004d3d0:	4798      	blx	r3
d004d3d2:	7d23      	ldrb	r3, [r4, #20]
d004d3d4:	7d62      	ldrb	r2, [r4, #21]
d004d3d6:	2140      	movs	r1, #64	; 0x40
d004d3d8:	7da7      	ldrb	r7, [r4, #22]
d004d3da:	2001      	movs	r0, #1
d004d3dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3e0:	e022      	b.n	d004d428 <main+0x368>
d004d3e2:	bf00      	nop
d004d3e4:	2001f000 	.word	0x2001f000
d004d3e8:	00000000 	.word	0x00000000
d004d3ec:	d0057678 	.word	0xd0057678
d004d3f0:	d00575a4 	.word	0xd00575a4
d004d3f4:	d0059fc8 	.word	0xd0059fc8
d004d3f8:	42280000 	.word	0x42280000
d004d3fc:	c3750000 	.word	0xc3750000
d004d400:	d005a4a0 	.word	0xd005a4a0
d004d404:	459c4000 	.word	0x459c4000
d004d408:	3c23d70a 	.word	0x3c23d70a
d004d40c:	42480000 	.word	0x42480000
d004d410:	d00f4a20 	.word	0xd00f4a20
d004d414:	d00f4a60 	.word	0xd00f4a60
d004d418:	d00575b8 	.word	0xd00575b8
d004d41c:	d00f4a80 	.word	0xd00f4a80
d004d420:	d00575c8 	.word	0xd00575c8
d004d424:	d00f4a88 	.word	0xd00f4a88
d004d428:	7de2      	ldrb	r2, [r4, #23]
d004d42a:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d42e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d432:	689b      	ldr	r3, [r3, #8]
d004d434:	699b      	ldr	r3, [r3, #24]
d004d436:	4798      	blx	r3
d004d438:	7d23      	ldrb	r3, [r4, #20]
d004d43a:	7d62      	ldrb	r2, [r4, #21]
d004d43c:	2100      	movs	r1, #0
d004d43e:	7da7      	ldrb	r7, [r4, #22]
d004d440:	2001      	movs	r0, #1
d004d442:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d446:	7de2      	ldrb	r2, [r4, #23]
d004d448:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d44c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d450:	689b      	ldr	r3, [r3, #8]
d004d452:	6a1b      	ldr	r3, [r3, #32]
d004d454:	4798      	blx	r3
d004d456:	49b2      	ldr	r1, [pc, #712]	; (d004d720 <main+0x660>)
d004d458:	48b2      	ldr	r0, [pc, #712]	; (d004d724 <main+0x664>)
d004d45a:	f7fd fe6b 	bl	d004b134 <LoadSFX>
d004d45e:	7d27      	ldrb	r7, [r4, #20]
d004d460:	f894 c015 	ldrb.w	ip, [r4, #21]
d004d464:	4602      	mov	r2, r0
d004d466:	7da1      	ldrb	r1, [r4, #22]
d004d468:	2300      	movs	r3, #0
d004d46a:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d004d46e:	f894 c017 	ldrb.w	ip, [r4, #23]
d004d472:	f8cb 0000 	str.w	r0, [fp]
d004d476:	2002      	movs	r0, #2
d004d478:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d004d47c:	49a8      	ldr	r1, [pc, #672]	; (d004d720 <main+0x660>)
d004d47e:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d004d482:	6809      	ldr	r1, [r1, #0]
d004d484:	68bf      	ldr	r7, [r7, #8]
d004d486:	68ff      	ldr	r7, [r7, #12]
d004d488:	47b8      	blx	r7
d004d48a:	7d23      	ldrb	r3, [r4, #20]
d004d48c:	7d62      	ldrb	r2, [r4, #21]
d004d48e:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d492:	7da0      	ldrb	r0, [r4, #22]
d004d494:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d498:	7de2      	ldrb	r2, [r4, #23]
d004d49a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d49e:	2002      	movs	r0, #2
d004d4a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4a4:	689b      	ldr	r3, [r3, #8]
d004d4a6:	691b      	ldr	r3, [r3, #16]
d004d4a8:	4798      	blx	r3
d004d4aa:	7d23      	ldrb	r3, [r4, #20]
d004d4ac:	7d62      	ldrb	r2, [r4, #21]
d004d4ae:	2128      	movs	r1, #40	; 0x28
d004d4b0:	7da0      	ldrb	r0, [r4, #22]
d004d4b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4b6:	7de2      	ldrb	r2, [r4, #23]
d004d4b8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4bc:	2002      	movs	r0, #2
d004d4be:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4c2:	689b      	ldr	r3, [r3, #8]
d004d4c4:	695b      	ldr	r3, [r3, #20]
d004d4c6:	4798      	blx	r3
d004d4c8:	7d23      	ldrb	r3, [r4, #20]
d004d4ca:	7d62      	ldrb	r2, [r4, #21]
d004d4cc:	2100      	movs	r1, #0
d004d4ce:	7da0      	ldrb	r0, [r4, #22]
d004d4d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4d4:	7de2      	ldrb	r2, [r4, #23]
d004d4d6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4da:	2002      	movs	r0, #2
d004d4dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4e0:	689b      	ldr	r3, [r3, #8]
d004d4e2:	699b      	ldr	r3, [r3, #24]
d004d4e4:	4798      	blx	r3
d004d4e6:	7d23      	ldrb	r3, [r4, #20]
d004d4e8:	7d62      	ldrb	r2, [r4, #21]
d004d4ea:	2101      	movs	r1, #1
d004d4ec:	7da0      	ldrb	r0, [r4, #22]
d004d4ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4f2:	7de2      	ldrb	r2, [r4, #23]
d004d4f4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4f8:	2002      	movs	r0, #2
d004d4fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4fe:	689b      	ldr	r3, [r3, #8]
d004d500:	6a1b      	ldr	r3, [r3, #32]
d004d502:	4798      	blx	r3
d004d504:	7d23      	ldrb	r3, [r4, #20]
d004d506:	7d60      	ldrb	r0, [r4, #21]
d004d508:	2100      	movs	r1, #0
d004d50a:	7da2      	ldrb	r2, [r4, #22]
d004d50c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004d510:	7de0      	ldrb	r0, [r4, #23]
d004d512:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d516:	f8db 2000 	ldr.w	r2, [fp]
d004d51a:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004d51e:	2002      	movs	r0, #2
d004d520:	689b      	ldr	r3, [r3, #8]
d004d522:	69db      	ldr	r3, [r3, #28]
d004d524:	4798      	blx	r3
d004d526:	7d23      	ldrb	r3, [r4, #20]
d004d528:	7d62      	ldrb	r2, [r4, #21]
d004d52a:	2002      	movs	r0, #2
d004d52c:	7da1      	ldrb	r1, [r4, #22]
d004d52e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d532:	7de2      	ldrb	r2, [r4, #23]
d004d534:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d538:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d53c:	689b      	ldr	r3, [r3, #8]
d004d53e:	685b      	ldr	r3, [r3, #4]
d004d540:	4798      	blx	r3
d004d542:	7d27      	ldrb	r7, [r4, #20]
d004d544:	7d61      	ldrb	r1, [r4, #21]
d004d546:	2300      	movs	r3, #0
d004d548:	7da2      	ldrb	r2, [r4, #22]
d004d54a:	ea47 2701 	orr.w	r7, r7, r1, lsl #8
d004d54e:	7de0      	ldrb	r0, [r4, #23]
d004d550:	4973      	ldr	r1, [pc, #460]	; (d004d720 <main+0x660>)
d004d552:	ea47 4702 	orr.w	r7, r7, r2, lsl #16
d004d556:	f8db 2000 	ldr.w	r2, [fp]
d004d55a:	6809      	ldr	r1, [r1, #0]
d004d55c:	ea47 6700 	orr.w	r7, r7, r0, lsl #24
d004d560:	2003      	movs	r0, #3
d004d562:	68bf      	ldr	r7, [r7, #8]
d004d564:	68ff      	ldr	r7, [r7, #12]
d004d566:	47b8      	blx	r7
d004d568:	7d23      	ldrb	r3, [r4, #20]
d004d56a:	7d62      	ldrb	r2, [r4, #21]
d004d56c:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d570:	7da7      	ldrb	r7, [r4, #22]
d004d572:	2003      	movs	r0, #3
d004d574:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d578:	7de2      	ldrb	r2, [r4, #23]
d004d57a:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d57e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d582:	689b      	ldr	r3, [r3, #8]
d004d584:	691b      	ldr	r3, [r3, #16]
d004d586:	4798      	blx	r3
d004d588:	7d23      	ldrb	r3, [r4, #20]
d004d58a:	7d62      	ldrb	r2, [r4, #21]
d004d58c:	2128      	movs	r1, #40	; 0x28
d004d58e:	7da7      	ldrb	r7, [r4, #22]
d004d590:	2003      	movs	r0, #3
d004d592:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d596:	7de2      	ldrb	r2, [r4, #23]
d004d598:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d59c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5a0:	689b      	ldr	r3, [r3, #8]
d004d5a2:	695b      	ldr	r3, [r3, #20]
d004d5a4:	4798      	blx	r3
d004d5a6:	7d23      	ldrb	r3, [r4, #20]
d004d5a8:	7d62      	ldrb	r2, [r4, #21]
d004d5aa:	2100      	movs	r1, #0
d004d5ac:	7da7      	ldrb	r7, [r4, #22]
d004d5ae:	2003      	movs	r0, #3
d004d5b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5b4:	7de2      	ldrb	r2, [r4, #23]
d004d5b6:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d5ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5be:	689b      	ldr	r3, [r3, #8]
d004d5c0:	699b      	ldr	r3, [r3, #24]
d004d5c2:	4798      	blx	r3
d004d5c4:	7d23      	ldrb	r3, [r4, #20]
d004d5c6:	7d62      	ldrb	r2, [r4, #21]
d004d5c8:	2101      	movs	r1, #1
d004d5ca:	7da7      	ldrb	r7, [r4, #22]
d004d5cc:	2003      	movs	r0, #3
d004d5ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5d2:	7de2      	ldrb	r2, [r4, #23]
d004d5d4:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d5d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5dc:	689b      	ldr	r3, [r3, #8]
d004d5de:	6a1b      	ldr	r3, [r3, #32]
d004d5e0:	4798      	blx	r3
d004d5e2:	7d23      	ldrb	r3, [r4, #20]
d004d5e4:	7d67      	ldrb	r7, [r4, #21]
d004d5e6:	2100      	movs	r1, #0
d004d5e8:	7da2      	ldrb	r2, [r4, #22]
d004d5ea:	2003      	movs	r0, #3
d004d5ec:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d004d5f0:	7de7      	ldrb	r7, [r4, #23]
d004d5f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d5f6:	f8db 2000 	ldr.w	r2, [fp]
d004d5fa:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d004d5fe:	689b      	ldr	r3, [r3, #8]
d004d600:	69db      	ldr	r3, [r3, #28]
d004d602:	4798      	blx	r3
d004d604:	7d23      	ldrb	r3, [r4, #20]
d004d606:	7d62      	ldrb	r2, [r4, #21]
d004d608:	2003      	movs	r0, #3
d004d60a:	7da1      	ldrb	r1, [r4, #22]
d004d60c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d610:	7de2      	ldrb	r2, [r4, #23]
d004d612:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d616:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d61a:	689b      	ldr	r3, [r3, #8]
d004d61c:	685b      	ldr	r3, [r3, #4]
d004d61e:	4798      	blx	r3
d004d620:	4631      	mov	r1, r6
d004d622:	4841      	ldr	r0, [pc, #260]	; (d004d728 <main+0x668>)
d004d624:	f7fd fd86 	bl	d004b134 <LoadSFX>
d004d628:	7d27      	ldrb	r7, [r4, #20]
d004d62a:	f894 c015 	ldrb.w	ip, [r4, #21]
d004d62e:	4602      	mov	r2, r0
d004d630:	7da1      	ldrb	r1, [r4, #22]
d004d632:	2300      	movs	r3, #0
d004d634:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d004d638:	f894 c017 	ldrb.w	ip, [r4, #23]
d004d63c:	f8cb 0000 	str.w	r0, [fp]
d004d640:	2006      	movs	r0, #6
d004d642:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d004d646:	6831      	ldr	r1, [r6, #0]
d004d648:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d004d64c:	68bf      	ldr	r7, [r7, #8]
d004d64e:	68ff      	ldr	r7, [r7, #12]
d004d650:	47b8      	blx	r7
d004d652:	7d27      	ldrb	r7, [r4, #20]
d004d654:	7d62      	ldrb	r2, [r4, #21]
d004d656:	2300      	movs	r3, #0
d004d658:	7da1      	ldrb	r1, [r4, #22]
d004d65a:	2007      	movs	r0, #7
d004d65c:	ea47 2702 	orr.w	r7, r7, r2, lsl #8
d004d660:	f894 c017 	ldrb.w	ip, [r4, #23]
d004d664:	f8db 2000 	ldr.w	r2, [fp]
d004d668:	46ab      	mov	fp, r5
d004d66a:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d004d66e:	6831      	ldr	r1, [r6, #0]
d004d670:	ae40      	add	r6, sp, #256	; 0x100
d004d672:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d004d676:	9605      	str	r6, [sp, #20]
d004d678:	2664      	movs	r6, #100	; 0x64
d004d67a:	68bf      	ldr	r7, [r7, #8]
d004d67c:	68ff      	ldr	r7, [r7, #12]
d004d67e:	47b8      	blx	r7
d004d680:	7d23      	ldrb	r3, [r4, #20]
d004d682:	7d62      	ldrb	r2, [r4, #21]
d004d684:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d688:	7da7      	ldrb	r7, [r4, #22]
d004d68a:	2006      	movs	r0, #6
d004d68c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d690:	7de2      	ldrb	r2, [r4, #23]
d004d692:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d696:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d69a:	689b      	ldr	r3, [r3, #8]
d004d69c:	691b      	ldr	r3, [r3, #16]
d004d69e:	4798      	blx	r3
d004d6a0:	7d23      	ldrb	r3, [r4, #20]
d004d6a2:	7d62      	ldrb	r2, [r4, #21]
d004d6a4:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d6a8:	7da7      	ldrb	r7, [r4, #22]
d004d6aa:	2007      	movs	r0, #7
d004d6ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d6b0:	7de2      	ldrb	r2, [r4, #23]
d004d6b2:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d6b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d6ba:	689b      	ldr	r3, [r3, #8]
d004d6bc:	691b      	ldr	r3, [r3, #16]
d004d6be:	4798      	blx	r3
d004d6c0:	7d23      	ldrb	r3, [r4, #20]
d004d6c2:	7d62      	ldrb	r2, [r4, #21]
d004d6c4:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d6c8:	7da7      	ldrb	r7, [r4, #22]
d004d6ca:	2006      	movs	r0, #6
d004d6cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d6d0:	7de2      	ldrb	r2, [r4, #23]
d004d6d2:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d6d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d6da:	689b      	ldr	r3, [r3, #8]
d004d6dc:	695b      	ldr	r3, [r3, #20]
d004d6de:	4798      	blx	r3
d004d6e0:	7d23      	ldrb	r3, [r4, #20]
d004d6e2:	7d62      	ldrb	r2, [r4, #21]
d004d6e4:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d6e8:	7da7      	ldrb	r7, [r4, #22]
d004d6ea:	2007      	movs	r0, #7
d004d6ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d6f0:	7de2      	ldrb	r2, [r4, #23]
d004d6f2:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d6f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d6fa:	689b      	ldr	r3, [r3, #8]
d004d6fc:	695b      	ldr	r3, [r3, #20]
d004d6fe:	4798      	blx	r3
d004d700:	7d23      	ldrb	r3, [r4, #20]
d004d702:	7d62      	ldrb	r2, [r4, #21]
d004d704:	f06f 0127 	mvn.w	r1, #39	; 0x27
d004d708:	7da7      	ldrb	r7, [r4, #22]
d004d70a:	2006      	movs	r0, #6
d004d70c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d710:	7de2      	ldrb	r2, [r4, #23]
d004d712:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d716:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d71a:	689b      	ldr	r3, [r3, #8]
d004d71c:	e006      	b.n	d004d72c <main+0x66c>
d004d71e:	bf00      	nop
d004d720:	d00f4b00 	.word	0xd00f4b00
d004d724:	d00575d8 	.word	0xd00575d8
d004d728:	d00575e8 	.word	0xd00575e8
d004d72c:	699b      	ldr	r3, [r3, #24]
d004d72e:	4798      	blx	r3
d004d730:	7d23      	ldrb	r3, [r4, #20]
d004d732:	7d62      	ldrb	r2, [r4, #21]
d004d734:	2128      	movs	r1, #40	; 0x28
d004d736:	7da7      	ldrb	r7, [r4, #22]
d004d738:	2007      	movs	r0, #7
d004d73a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d73e:	7de2      	ldrb	r2, [r4, #23]
d004d740:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d744:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d748:	689b      	ldr	r3, [r3, #8]
d004d74a:	699b      	ldr	r3, [r3, #24]
d004d74c:	4798      	blx	r3
d004d74e:	7d23      	ldrb	r3, [r4, #20]
d004d750:	7d62      	ldrb	r2, [r4, #21]
d004d752:	2100      	movs	r1, #0
d004d754:	7da7      	ldrb	r7, [r4, #22]
d004d756:	2006      	movs	r0, #6
d004d758:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d75c:	7de2      	ldrb	r2, [r4, #23]
d004d75e:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d762:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d766:	689b      	ldr	r3, [r3, #8]
d004d768:	6a1b      	ldr	r3, [r3, #32]
d004d76a:	4798      	blx	r3
d004d76c:	7d23      	ldrb	r3, [r4, #20]
d004d76e:	7d62      	ldrb	r2, [r4, #21]
d004d770:	2100      	movs	r1, #0
d004d772:	7da7      	ldrb	r7, [r4, #22]
d004d774:	2007      	movs	r0, #7
d004d776:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d77a:	7de2      	ldrb	r2, [r4, #23]
d004d77c:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d004d780:	f505 7710 	add.w	r7, r5, #576	; 0x240
d004d784:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d788:	689b      	ldr	r3, [r3, #8]
d004d78a:	6a1b      	ldr	r3, [r3, #32]
d004d78c:	4798      	blx	r3
d004d78e:	4641      	mov	r1, r8
d004d790:	eeb3 0a09 	vmov.f32	s0, #57	; 0x41c80000  25.0
d004d794:	48e7      	ldr	r0, [pc, #924]	; (d004db34 <main+0xa74>)
d004d796:	f007 fb25 	bl	d0054de4 <loadMeshSB3D>
d004d79a:	ed9f 1ae7 	vldr	s2, [pc, #924]	; d004db38 <main+0xa78>
d004d79e:	eddf 0ae7 	vldr	s1, [pc, #924]	; d004db3c <main+0xa7c>
d004d7a2:	ed9f 0ae7 	vldr	s0, [pc, #924]	; d004db40 <main+0xa80>
d004d7a6:	f002 fedb 	bl	d0050560 <vec3>
d004d7aa:	4640      	mov	r0, r8
d004d7ac:	ed8d 0a4f 	vstr	s0, [sp, #316]	; 0x13c
d004d7b0:	edcd 0a50 	vstr	s1, [sp, #320]	; 0x140
d004d7b4:	ed8d 1a51 	vstr	s2, [sp, #324]	; 0x144
d004d7b8:	f003 fe4a 	bl	d0051450 <entityWorldSpawn>
d004d7bc:	4be1      	ldr	r3, [pc, #900]	; (d004db44 <main+0xa84>)
d004d7be:	4602      	mov	r2, r0
d004d7c0:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004d7c4:	ed9f 2ae0 	vldr	s4, [pc, #896]	; d004db48 <main+0xa88>
d004d7c8:	eeb0 1a48 	vmov.f32	s2, s16
d004d7cc:	4640      	mov	r0, r8
d004d7ce:	eeb0 0a48 	vmov.f32	s0, s16
d004d7d2:	eddf 0ade 	vldr	s1, [pc, #888]	; d004db4c <main+0xa8c>
d004d7d6:	601a      	str	r2, [r3, #0]
d004d7d8:	f001 f8c2 	bl	d004e960 <meshSetMaterial>
d004d7dc:	f7fe ff86 	bl	d004c6ec <InitLasers>
d004d7e0:	eef3 0a04 	vmov.f32	s1, #52	; 0x41a00000  20.0
d004d7e4:	ed9f 0ada 	vldr	s0, [pc, #872]	; d004db50 <main+0xa90>
d004d7e8:	220a      	movs	r2, #10
d004d7ea:	a80e      	add	r0, sp, #56	; 0x38
d004d7ec:	2118      	movs	r1, #24
d004d7ee:	f004 fa4f 	bl	d0051c90 <createTorus>
d004d7f2:	f10d 0c38 	add.w	ip, sp, #56	; 0x38
d004d7f6:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d7fa:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d7fc:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d800:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d802:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d806:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d808:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d004d80c:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
d004d810:	eddd 8a06 	vldr	s17, [sp, #24]
d004d814:	2125      	movs	r1, #37	; 0x25
d004d816:	2700      	movs	r7, #0
d004d818:	ee18 0a90 	vmov	r0, s17
d004d81c:	f003 fef8 	bl	d0051610 <meshColour>
d004d820:	eeb0 1a48 	vmov.f32	s2, s16
d004d824:	eddf 0acb 	vldr	s1, [pc, #812]	; d004db54 <main+0xa94>
d004d828:	ed9f 0acb 	vldr	s0, [pc, #812]	; d004db58 <main+0xa98>
d004d82c:	f002 fe98 	bl	d0050560 <vec3>
d004d830:	ee18 0a90 	vmov	r0, s17
d004d834:	ed8d 0a52 	vstr	s0, [sp, #328]	; 0x148
d004d838:	edcd 0a53 	vstr	s1, [sp, #332]	; 0x14c
d004d83c:	ed8d 1a54 	vstr	s2, [sp, #336]	; 0x150
d004d840:	f003 fe06 	bl	d0051450 <entityWorldSpawn>
d004d844:	4603      	mov	r3, r0
d004d846:	eef7 1a08 	vmov.f32	s3, #120	; 0x3fc00000  1.5
d004d84a:	ed9f 2abf 	vldr	s4, [pc, #764]	; d004db48 <main+0xa88>
d004d84e:	eeb0 1a48 	vmov.f32	s2, s16
d004d852:	eeb0 0a48 	vmov.f32	s0, s16
d004d856:	ee18 0a90 	vmov	r0, s17
d004d85a:	eddf 0abc 	vldr	s1, [pc, #752]	; d004db4c <main+0xa8c>
d004d85e:	930a      	str	r3, [sp, #40]	; 0x28
d004d860:	f001 f87e 	bl	d004e960 <meshSetMaterial>
d004d864:	4649      	mov	r1, r9
d004d866:	ed9f 0abd 	vldr	s0, [pc, #756]	; d004db5c <main+0xa9c>
d004d86a:	48bd      	ldr	r0, [pc, #756]	; (d004db60 <main+0xaa0>)
d004d86c:	f007 faba 	bl	d0054de4 <loadMeshSB3D>
d004d870:	eeb0 1a48 	vmov.f32	s2, s16
d004d874:	eef0 0a48 	vmov.f32	s1, s16
d004d878:	eeb0 0a48 	vmov.f32	s0, s16
d004d87c:	f002 fe70 	bl	d0050560 <vec3>
d004d880:	4648      	mov	r0, r9
d004d882:	edcd 0a56 	vstr	s1, [sp, #344]	; 0x158
d004d886:	ed8d 0a55 	vstr	s0, [sp, #340]	; 0x154
d004d88a:	ed8d 1a57 	vstr	s2, [sp, #348]	; 0x15c
d004d88e:	f003 fddf 	bl	d0051450 <entityWorldSpawn>
d004d892:	4bb4      	ldr	r3, [pc, #720]	; (d004db64 <main+0xaa4>)
d004d894:	2101      	movs	r1, #1
d004d896:	6018      	str	r0, [r3, #0]
d004d898:	f004 fc06 	bl	d00520a8 <entityAllowHit>
d004d89c:	eeb0 2a48 	vmov.f32	s4, s16
d004d8a0:	eddf 1ab1 	vldr	s3, [pc, #708]	; d004db68 <main+0xaa8>
d004d8a4:	eeb0 1a48 	vmov.f32	s2, s16
d004d8a8:	4648      	mov	r0, r9
d004d8aa:	eeb0 0a48 	vmov.f32	s0, s16
d004d8ae:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004d8b2:	f001 f855 	bl	d004e960 <meshSetMaterial>
d004d8b6:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d004d8ba:	eddd 8a07 	vldr	s17, [sp, #28]
d004d8be:	eef0 0a41 	vmov.f32	s1, s2
d004d8c2:	ee18 0a90 	vmov	r0, s17
d004d8c6:	eeb0 0a41 	vmov.f32	s0, s2
d004d8ca:	f004 f861 	bl	d0051990 <createBox>
d004d8ce:	eef0 0a48 	vmov.f32	s1, s16
d004d8d2:	eeb0 1a48 	vmov.f32	s2, s16
d004d8d6:	ee18 0a90 	vmov	r0, s17
d004d8da:	eeb0 0a48 	vmov.f32	s0, s16
d004d8de:	ed8d 8a3d 	vstr	s16, [sp, #244]	; 0xf4
d004d8e2:	ed8d 8a3e 	vstr	s16, [sp, #248]	; 0xf8
d004d8e6:	ed8d 8a3f 	vstr	s16, [sp, #252]	; 0xfc
d004d8ea:	f003 fdb1 	bl	d0051450 <entityWorldSpawn>
d004d8ee:	ed9d 8a08 	vldr	s16, [sp, #32]
d004d8f2:	ed9f 0a9e 	vldr	s0, [pc, #632]	; d004db6c <main+0xaac>
d004d8f6:	ee18 1a10 	vmov	r1, s16
d004d8fa:	489d      	ldr	r0, [pc, #628]	; (d004db70 <main+0xab0>)
d004d8fc:	f007 fa72 	bl	d0054de4 <loadMeshSB3D>
d004d900:	ed9f 1a9c 	vldr	s2, [pc, #624]	; d004db74 <main+0xab4>
d004d904:	eddf 0a9c 	vldr	s1, [pc, #624]	; d004db78 <main+0xab8>
d004d908:	ed9f 0a9c 	vldr	s0, [pc, #624]	; d004db7c <main+0xabc>
d004d90c:	f002 fe28 	bl	d0050560 <vec3>
d004d910:	ee18 0a10 	vmov	r0, s16
d004d914:	edcd 0a59 	vstr	s1, [sp, #356]	; 0x164
d004d918:	ed8d 1a5a 	vstr	s2, [sp, #360]	; 0x168
d004d91c:	ed8d 0a58 	vstr	s0, [sp, #352]	; 0x160
d004d920:	f003 fd96 	bl	d0051450 <entityWorldSpawn>
d004d924:	4a96      	ldr	r2, [pc, #600]	; (d004db80 <main+0xac0>)
d004d926:	4603      	mov	r3, r0
d004d928:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d004d92c:	4651      	mov	r1, sl
d004d92e:	4895      	ldr	r0, [pc, #596]	; (d004db84 <main+0xac4>)
d004d930:	6013      	str	r3, [r2, #0]
d004d932:	f007 fa57 	bl	d0054de4 <loadMeshSB3D>
d004d936:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
d004d93a:	4651      	mov	r1, sl
d004d93c:	eddf 8a92 	vldr	s17, [pc, #584]	; d004db88 <main+0xac8>
d004d940:	4648      	mov	r0, r9
d004d942:	f004 fab5 	bl	d0051eb0 <copyMesh>
d004d946:	ed9f 1a91 	vldr	s2, [pc, #580]	; d004db8c <main+0xacc>
d004d94a:	eddf 0a88 	vldr	s1, [pc, #544]	; d004db6c <main+0xaac>
d004d94e:	ed9f 0a90 	vldr	s0, [pc, #576]	; d004db90 <main+0xad0>
d004d952:	f002 fe05 	bl	d0050560 <vec3>
d004d956:	4648      	mov	r0, r9
d004d958:	ed8d 0a5b 	vstr	s0, [sp, #364]	; 0x16c
d004d95c:	edcd 0a5c 	vstr	s1, [sp, #368]	; 0x170
d004d960:	ed8d 1a5d 	vstr	s2, [sp, #372]	; 0x174
d004d964:	f003 fd74 	bl	d0051450 <entityWorldSpawn>
d004d968:	ed9f 1a83 	vldr	s2, [pc, #524]	; d004db78 <main+0xab8>
d004d96c:	ee0e 0a90 	vmov	s29, r0
d004d970:	eef0 0a41 	vmov.f32	s1, s2
d004d974:	eeb0 0a41 	vmov.f32	s0, s2
d004d978:	eeb0 8a41 	vmov.f32	s16, s2
d004d97c:	f002 fdf0 	bl	d0050560 <vec3>
d004d980:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d984:	2001      	movs	r0, #1
d004d986:	ed8d 0a5e 	vstr	s0, [sp, #376]	; 0x178
d004d98a:	edcd 0a5f 	vstr	s1, [sp, #380]	; 0x17c
d004d98e:	ed8d 1a60 	vstr	s2, [sp, #384]	; 0x180
d004d992:	f004 fe6d 	bl	d0052670 <addPointLight>
d004d996:	b2c3      	uxtb	r3, r0
d004d998:	ed9f 1a7e 	vldr	s2, [pc, #504]	; d004db94 <main+0xad4>
d004d99c:	eddf 0a7e 	vldr	s1, [pc, #504]	; d004db98 <main+0xad8>
d004d9a0:	ed9f 0a6b 	vldr	s0, [pc, #428]	; d004db50 <main+0xa90>
d004d9a4:	4618      	mov	r0, r3
d004d9a6:	ee0f 3a90 	vmov	s31, r3
d004d9aa:	f004 fe29 	bl	d0052600 <lightSetRanges>
d004d9ae:	f8dd 8014 	ldr.w	r8, [sp, #20]
d004d9b2:	4651      	mov	r1, sl
d004d9b4:	a80e      	add	r0, sp, #56	; 0x38
d004d9b6:	f004 fa7b 	bl	d0051eb0 <copyMesh>
d004d9ba:	f10d 0e38 	add.w	lr, sp, #56	; 0x38
d004d9be:	eb05 1c87 	add.w	ip, r5, r7, lsl #6
d004d9c2:	3701      	adds	r7, #1
d004d9c4:	eef0 0a69 	vmov.f32	s1, s19
d004d9c8:	fb06 f307 	mul.w	r3, r6, r7
d004d9cc:	eeb0 0a49 	vmov.f32	s0, s18
d004d9d0:	ee01 3a10 	vmov	s2, r3
d004d9d4:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004d9d8:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d9dc:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004d9e0:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d9e4:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004d9e8:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d004d9ec:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d9f0:	e89e 000f 	ldmia.w	lr, {r0, r1, r2, r3}
d004d9f4:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004d9f8:	f002 fdb2 	bl	d0050560 <vec3>
d004d9fc:	4658      	mov	r0, fp
d004d9fe:	edcd 0a62 	vstr	s1, [sp, #392]	; 0x188
d004da02:	f10b 0b40 	add.w	fp, fp, #64	; 0x40
d004da06:	ed8d 1a63 	vstr	s2, [sp, #396]	; 0x18c
d004da0a:	ed8d 0a61 	vstr	s0, [sp, #388]	; 0x184
d004da0e:	f003 fd1f 	bl	d0051450 <entityWorldSpawn>
d004da12:	4681      	mov	r9, r0
d004da14:	f848 0b04 	str.w	r0, [r8], #4
d004da18:	eeb0 0a68 	vmov.f32	s0, s17
d004da1c:	f002 fda4 	bl	d0050568 <degrees>
d004da20:	eeb0 1a48 	vmov.f32	s2, s16
d004da24:	4648      	mov	r0, r9
d004da26:	2101      	movs	r1, #1
d004da28:	eddf 0a53 	vldr	s1, [pc, #332]	; d004db78 <main+0xab8>
d004da2c:	f003 ffa0 	bl	d0051970 <entityRotation>
d004da30:	2f03      	cmp	r7, #3
d004da32:	d1be      	bne.n	d004d9b2 <main+0x8f2>
d004da34:	2300      	movs	r3, #0
d004da36:	9841      	ldr	r0, [sp, #260]	; 0x104
d004da38:	ed9f 1a48 	vldr	s2, [pc, #288]	; d004db5c <main+0xa9c>
d004da3c:	35c0      	adds	r5, #192	; 0xc0
d004da3e:	9305      	str	r3, [sp, #20]
d004da40:	2301      	movs	r3, #1
d004da42:	eddf 0a56 	vldr	s1, [pc, #344]	; d004db9c <main+0xadc>
d004da46:	ed9f 0a56 	vldr	s0, [pc, #344]	; d004dba0 <main+0xae0>
d004da4a:	9308      	str	r3, [sp, #32]
d004da4c:	9006      	str	r0, [sp, #24]
d004da4e:	f002 fd87 	bl	d0050560 <vec3>
d004da52:	9806      	ldr	r0, [sp, #24]
d004da54:	edcd 0a65 	vstr	s1, [sp, #404]	; 0x194
d004da58:	ed8d 1a66 	vstr	s2, [sp, #408]	; 0x198
d004da5c:	ed8d 0a64 	vstr	s0, [sp, #400]	; 0x190
d004da60:	f003 fd3c 	bl	d00514dc <entitySetPosition>
d004da64:	4629      	mov	r1, r5
d004da66:	ed9f 0a41 	vldr	s0, [pc, #260]	; d004db6c <main+0xaac>
d004da6a:	484e      	ldr	r0, [pc, #312]	; (d004dba4 <main+0xae4>)
d004da6c:	f007 f9ba 	bl	d0054de4 <loadMeshSB3D>
d004da70:	ed9f 1a3a 	vldr	s2, [pc, #232]	; d004db5c <main+0xa9c>
d004da74:	eddf 0a4c 	vldr	s1, [pc, #304]	; d004dba8 <main+0xae8>
d004da78:	ed9f 0a4c 	vldr	s0, [pc, #304]	; d004dbac <main+0xaec>
d004da7c:	f002 fd70 	bl	d0050560 <vec3>
d004da80:	4628      	mov	r0, r5
d004da82:	ed8d 0a67 	vstr	s0, [sp, #412]	; 0x19c
d004da86:	edcd 0a68 	vstr	s1, [sp, #416]	; 0x1a0
d004da8a:	ed8d 1a69 	vstr	s2, [sp, #420]	; 0x1a4
d004da8e:	f003 fcdf 	bl	d0051450 <entityWorldSpawn>
d004da92:	ed9f 1a39 	vldr	s2, [pc, #228]	; d004db78 <main+0xab8>
d004da96:	4603      	mov	r3, r0
d004da98:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004da9c:	ed9f 2a2a 	vldr	s4, [pc, #168]	; d004db48 <main+0xa88>
d004daa0:	eeb0 0a41 	vmov.f32	s0, s2
d004daa4:	4628      	mov	r0, r5
d004daa6:	eddf 0a29 	vldr	s1, [pc, #164]	; d004db4c <main+0xa8c>
d004daaa:	930b      	str	r3, [sp, #44]	; 0x2c
d004daac:	f000 ff58 	bl	d004e960 <meshSetMaterial>
d004dab0:	2301      	movs	r3, #1
d004dab2:	2216      	movs	r2, #22
d004dab4:	493e      	ldr	r1, [pc, #248]	; (d004dbb0 <main+0xaf0>)
d004dab6:	a889      	add	r0, sp, #548	; 0x224
d004dab8:	ed9f 0a3e 	vldr	s0, [pc, #248]	; d004dbb4 <main+0xaf4>
d004dabc:	f7fd ff5a 	bl	d004b974 <splineRailInit>
d004dac0:	a889      	add	r0, sp, #548	; 0x224
d004dac2:	ed9f 1a3d 	vldr	s2, [pc, #244]	; d004dbb8 <main+0xaf8>
d004dac6:	eddf 0a3d 	vldr	s1, [pc, #244]	; d004dbbc <main+0xafc>
d004daca:	ed9f 0a3d 	vldr	s0, [pc, #244]	; d004dbc0 <main+0xb00>
d004dace:	f7fd ff7f 	bl	d004b9d0 <splineRailSetTuning>
d004dad2:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d004dad6:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004dada:	ed9f 1a3a 	vldr	s2, [pc, #232]	; d004dbc4 <main+0xb04>
d004dade:	a889      	add	r0, sp, #548	; 0x224
d004dae0:	4d39      	ldr	r5, [pc, #228]	; (d004dbc8 <main+0xb08>)
d004dae2:	f7fd ff7d 	bl	d004b9e0 <splineRailSetBanking>
d004dae6:	7b23      	ldrb	r3, [r4, #12]
d004dae8:	7b62      	ldrb	r2, [r4, #13]
d004daea:	7ba1      	ldrb	r1, [r4, #14]
d004daec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004daf0:	7be2      	ldrb	r2, [r4, #15]
d004daf2:	6828      	ldr	r0, [r5, #0]
d004daf4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004daf8:	f8df a0d4 	ldr.w	sl, [pc, #212]	; d004dbd0 <main+0xb10>
d004dafc:	eddf 9a33 	vldr	s19, [pc, #204]	; d004dbcc <main+0xb0c>
d004db00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004db04:	46d0      	mov	r8, sl
d004db06:	ed9f aa12 	vldr	s20, [pc, #72]	; d004db50 <main+0xa90>
d004db0a:	681b      	ldr	r3, [r3, #0]
d004db0c:	eddf aa17 	vldr	s21, [pc, #92]	; d004db6c <main+0xaac>
d004db10:	69db      	ldr	r3, [r3, #28]
d004db12:	4798      	blx	r3
d004db14:	7b23      	ldrb	r3, [r4, #12]
d004db16:	7b62      	ldrb	r2, [r4, #13]
d004db18:	7ba1      	ldrb	r1, [r4, #14]
d004db1a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004db1e:	7be2      	ldrb	r2, [r4, #15]
d004db20:	6828      	ldr	r0, [r5, #0]
d004db22:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004db26:	ed9f 9a14 	vldr	s18, [pc, #80]	; d004db78 <main+0xab8>
d004db2a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004db2e:	681b      	ldr	r3, [r3, #0]
d004db30:	e050      	b.n	d004dbd4 <main+0xb14>
d004db32:	bf00      	nop
d004db34:	d00575f4 	.word	0xd00575f4
d004db38:	44460000 	.word	0x44460000
d004db3c:	42a00000 	.word	0x42a00000
d004db40:	c4080000 	.word	0xc4080000
d004db44:	d005a6b0 	.word	0xd005a6b0
d004db48:	42c00000 	.word	0x42c00000
d004db4c:	3ee66666 	.word	0x3ee66666
d004db50:	42c80000 	.word	0x42c80000
d004db54:	43960000 	.word	0x43960000
d004db58:	c3fa0000 	.word	0xc3fa0000
d004db5c:	43480000 	.word	0x43480000
d004db60:	d0057604 	.word	0xd0057604
d004db64:	d005a684 	.word	0xd005a684
d004db68:	3e4ccccd 	.word	0x3e4ccccd
d004db6c:	42480000 	.word	0x42480000
d004db70:	d0057614 	.word	0xd0057614
d004db74:	c2c80000 	.word	0xc2c80000
d004db78:	00000000 	.word	0x00000000
d004db7c:	44f3c000 	.word	0x44f3c000
d004db80:	d005a500 	.word	0xd005a500
d004db84:	d0057624 	.word	0xd0057624
d004db88:	42b40000 	.word	0x42b40000
d004db8c:	c3480000 	.word	0xc3480000
d004db90:	c3070000 	.word	0xc3070000
d004db94:	44048000 	.word	0x44048000
d004db98:	43a00000 	.word	0x43a00000
d004db9c:	42a40000 	.word	0x42a40000
d004dba0:	c3750000 	.word	0xc3750000
d004dba4:	d0057630 	.word	0xd0057630
d004dba8:	43af0000 	.word	0x43af0000
d004dbac:	44fa0000 	.word	0x44fa0000
d004dbb0:	d00576d8 	.word	0xd00576d8
d004dbb4:	43340000 	.word	0x43340000
d004dbb8:	402ccccd 	.word	0x402ccccd
d004dbbc:	3fe66666 	.word	0x3fe66666
d004dbc0:	3fb33333 	.word	0x3fb33333
d004dbc4:	3f59999a 	.word	0x3f59999a
d004dbc8:	d00f4ae0 	.word	0xd00f4ae0
d004dbcc:	3b83126f 	.word	0x3b83126f
d004dbd0:	d005a4a0 	.word	0xd005a4a0
d004dbd4:	699b      	ldr	r3, [r3, #24]
d004dbd6:	4798      	blx	r3
d004dbd8:	7b23      	ldrb	r3, [r4, #12]
d004dbda:	7b62      	ldrb	r2, [r4, #13]
d004dbdc:	2001      	movs	r0, #1
d004dbde:	7ba1      	ldrb	r1, [r4, #14]
d004dbe0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dbe4:	7be2      	ldrb	r2, [r4, #15]
d004dbe6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dbea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dbee:	685b      	ldr	r3, [r3, #4]
d004dbf0:	68db      	ldr	r3, [r3, #12]
d004dbf2:	4798      	blx	r3
d004dbf4:	7b23      	ldrb	r3, [r4, #12]
d004dbf6:	7b62      	ldrb	r2, [r4, #13]
d004dbf8:	211e      	movs	r1, #30
d004dbfa:	7ba5      	ldrb	r5, [r4, #14]
d004dbfc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc00:	7be2      	ldrb	r2, [r4, #15]
d004dc02:	4608      	mov	r0, r1
d004dc04:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004dc08:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc0c:	685b      	ldr	r3, [r3, #4]
d004dc0e:	689b      	ldr	r3, [r3, #8]
d004dc10:	4798      	blx	r3
d004dc12:	7823      	ldrb	r3, [r4, #0]
d004dc14:	7862      	ldrb	r2, [r4, #1]
d004dc16:	a937      	add	r1, sp, #220	; 0xdc
d004dc18:	78a0      	ldrb	r0, [r4, #2]
d004dc1a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc1e:	78e2      	ldrb	r2, [r4, #3]
d004dc20:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004dc24:	a836      	add	r0, sp, #216	; 0xd8
d004dc26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc2a:	691b      	ldr	r3, [r3, #16]
d004dc2c:	4798      	blx	r3
d004dc2e:	7823      	ldrb	r3, [r4, #0]
d004dc30:	7862      	ldrb	r2, [r4, #1]
d004dc32:	78a1      	ldrb	r1, [r4, #2]
d004dc34:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc38:	78e2      	ldrb	r2, [r4, #3]
d004dc3a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dc3e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc42:	69db      	ldr	r3, [r3, #28]
d004dc44:	4798      	blx	r3
d004dc46:	7823      	ldrb	r3, [r4, #0]
d004dc48:	7862      	ldrb	r2, [r4, #1]
d004dc4a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc4e:	78a2      	ldrb	r2, [r4, #2]
d004dc50:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004dc54:	78e2      	ldrb	r2, [r4, #3]
d004dc56:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc5a:	689b      	ldr	r3, [r3, #8]
d004dc5c:	4798      	blx	r3
d004dc5e:	2313      	movs	r3, #19
d004dc60:	4605      	mov	r5, r0
d004dc62:	48d1      	ldr	r0, [pc, #836]	; (d004dfa8 <main+0xee8>)
d004dc64:	2112      	movs	r1, #18
d004dc66:	2215      	movs	r2, #21
d004dc68:	7003      	strb	r3, [r0, #0]
d004dc6a:	2319      	movs	r3, #25
d004dc6c:	48cf      	ldr	r0, [pc, #828]	; (d004dfac <main+0xeec>)
d004dc6e:	7001      	strb	r1, [r0, #0]
d004dc70:	49cf      	ldr	r1, [pc, #828]	; (d004dfb0 <main+0xef0>)
d004dc72:	700a      	strb	r2, [r1, #0]
d004dc74:	4acf      	ldr	r2, [pc, #828]	; (d004dfb4 <main+0xef4>)
d004dc76:	7013      	strb	r3, [r2, #0]
d004dc78:	7b20      	ldrb	r0, [r4, #12]
d004dc7a:	ee69 7a8a 	vmul.f32	s15, s19, s20
d004dc7e:	7b61      	ldrb	r1, [r4, #13]
d004dc80:	7ba2      	ldrb	r2, [r4, #14]
d004dc82:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dc86:	7be3      	ldrb	r3, [r4, #15]
d004dc88:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004dc8c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dc90:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dc94:	edcd 7a06 	vstr	s15, [sp, #24]
d004dc98:	f89d 0018 	ldrb.w	r0, [sp, #24]
d004dc9c:	681b      	ldr	r3, [r3, #0]
d004dc9e:	689b      	ldr	r3, [r3, #8]
d004dca0:	4798      	blx	r3
d004dca2:	7820      	ldrb	r0, [r4, #0]
d004dca4:	7861      	ldrb	r1, [r4, #1]
d004dca6:	78a2      	ldrb	r2, [r4, #2]
d004dca8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dcac:	78e3      	ldrb	r3, [r4, #3]
d004dcae:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dcb2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dcb6:	689b      	ldr	r3, [r3, #8]
d004dcb8:	4798      	blx	r3
d004dcba:	1b43      	subs	r3, r0, r5
d004dcbc:	eddf 7abe 	vldr	s15, [pc, #760]	; d004dfb8 <main+0xef8>
d004dcc0:	ee08 3a10 	vmov	s16, r3
d004dcc4:	9006      	str	r0, [sp, #24]
d004dcc6:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d004dcca:	eeb4 8ae7 	vcmpe.f32	s16, s15
d004dcce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dcd2:	f300 854a 	bgt.w	d004e76a <main+0x16aa>
d004dcd6:	eddf 7ab9 	vldr	s15, [pc, #740]	; d004dfbc <main+0xefc>
d004dcda:	eef2 ca04 	vmov.f32	s25, #36	; 0x41200000  10.0
d004dcde:	eeb2 ba08 	vmov.f32	s22, #40	; 0x41400000  12.0
d004dce2:	ed9f eab7 	vldr	s28, [pc, #732]	; d004dfc0 <main+0xf00>
d004dce6:	ee28 8a27 	vmul.f32	s16, s16, s15
d004dcea:	eddf dab6 	vldr	s27, [pc, #728]	; d004dfc4 <main+0xf04>
d004dcee:	eddf 7ab6 	vldr	s15, [pc, #728]	; d004dfc8 <main+0xf08>
d004dcf2:	ed9f dab6 	vldr	s26, [pc, #728]	; d004dfcc <main+0xf0c>
d004dcf6:	ee68 ca2c 	vmul.f32	s25, s16, s25
d004dcfa:	eddf bab5 	vldr	s23, [pc, #724]	; d004dfd0 <main+0xf10>
d004dcfe:	ee68 da2d 	vmul.f32	s27, s16, s27
d004dd02:	ee28 da0d 	vmul.f32	s26, s16, s26
d004dd06:	ee2c ea8e 	vmul.f32	s28, s25, s28
d004dd0a:	ee38 ca08 	vadd.f32	s24, s16, s16
d004dd0e:	ee6c caa7 	vmul.f32	s25, s25, s15
d004dd12:	ee68 ba2b 	vmul.f32	s23, s16, s23
d004dd16:	ee28 ba0b 	vmul.f32	s22, s16, s22
d004dd1a:	7820      	ldrb	r0, [r4, #0]
d004dd1c:	7861      	ldrb	r1, [r4, #1]
d004dd1e:	78a2      	ldrb	r2, [r4, #2]
d004dd20:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dd24:	78e3      	ldrb	r3, [r4, #3]
d004dd26:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dd2a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dd2e:	6a1b      	ldr	r3, [r3, #32]
d004dd30:	4798      	blx	r3
d004dd32:	7825      	ldrb	r5, [r4, #0]
d004dd34:	7863      	ldrb	r3, [r4, #1]
d004dd36:	a939      	add	r1, sp, #228	; 0xe4
d004dd38:	78a2      	ldrb	r2, [r4, #2]
d004dd3a:	4606      	mov	r6, r0
d004dd3c:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d004dd40:	78e3      	ldrb	r3, [r4, #3]
d004dd42:	a838      	add	r0, sp, #224	; 0xe0
d004dd44:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d004dd48:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dd4c:	699b      	ldr	r3, [r3, #24]
d004dd4e:	4798      	blx	r3
d004dd50:	ed9f 1aa0 	vldr	s2, [pc, #640]	; d004dfd4 <main+0xf14>
d004dd54:	ed9f 0aa0 	vldr	s0, [pc, #640]	; d004dfd8 <main+0xf18>
d004dd58:	eef0 0a49 	vmov.f32	s1, s18
d004dd5c:	2100      	movs	r1, #0
d004dd5e:	4640      	mov	r0, r8
d004dd60:	e9dd 2338 	ldrd	r2, r3, [sp, #224]	; 0xe0
d004dd64:	4252      	negs	r2, r2
d004dd66:	425b      	negs	r3, r3
d004dd68:	ee07 2a90 	vmov	s15, r2
d004dd6c:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004dd70:	ee07 3a90 	vmov	s15, r3
d004dd74:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004dd78:	ee27 1a01 	vmul.f32	s2, s14, s2
d004dd7c:	ee27 0a80 	vmul.f32	s0, s15, s0
d004dd80:	f002 fe86 	bl	d0050a90 <cameraTurn>
d004dd84:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d004dd88:	edda 8a07 	vldr	s17, [sl, #28]
d004dd8c:	ee68 8aa7 	vmul.f32	s17, s17, s15
d004dd90:	ee68 0a28 	vmul.f32	s1, s16, s17
d004dd94:	eef5 0a40 	vcmp.f32	s1, #0.0
d004dd98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dd9c:	f040 8528 	bne.w	d004e7f0 <main+0x1730>
d004dda0:	4b8e      	ldr	r3, [pc, #568]	; (d004dfdc <main+0xf1c>)
d004dda2:	eeb0 1a49 	vmov.f32	s2, s18
d004dda6:	2100      	movs	r1, #0
d004dda8:	eddf 0a8d 	vldr	s1, [pc, #564]	; d004dfe0 <main+0xf20>
d004ddac:	461d      	mov	r5, r3
d004ddae:	6818      	ldr	r0, [r3, #0]
d004ddb0:	eeb0 0a4e 	vmov.f32	s0, s28
d004ddb4:	f003 fc3a 	bl	d005162c <entityTurn>
d004ddb8:	eeb0 0a6c 	vmov.f32	s0, s25
d004ddbc:	6828      	ldr	r0, [r5, #0]
d004ddbe:	f003 fbf1 	bl	d00515a4 <entityMoveForward>
d004ddc2:	eeb0 1a49 	vmov.f32	s2, s18
d004ddc6:	eddf 0a86 	vldr	s1, [pc, #536]	; d004dfe0 <main+0xf20>
d004ddca:	2100      	movs	r1, #0
d004ddcc:	eeb0 0a6d 	vmov.f32	s0, s27
d004ddd0:	980b      	ldr	r0, [sp, #44]	; 0x2c
d004ddd2:	f003 fc2b 	bl	d005162c <entityTurn>
d004ddd6:	eeb0 0a4d 	vmov.f32	s0, s26
d004ddda:	ee1e 0a90 	vmov	r0, s29
d004ddde:	f003 fbe1 	bl	d00515a4 <entityMoveForward>
d004dde2:	ee1e 0a90 	vmov	r0, s29
d004dde6:	f003 fb9d 	bl	d0051524 <entityGetPosition>
d004ddea:	eddf 7a7e 	vldr	s15, [pc, #504]	; d004dfe4 <main+0xf24>
d004ddee:	ed8d 0a43 	vstr	s0, [sp, #268]	; 0x10c
d004ddf2:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004ddf6:	edcd 0a44 	vstr	s1, [sp, #272]	; 0x110
d004ddfa:	ed8d 1a45 	vstr	s2, [sp, #276]	; 0x114
d004ddfe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004de02:	f300 84e1 	bgt.w	d004e7c8 <main+0x1708>
d004de06:	ed9d 0a43 	vldr	s0, [sp, #268]	; 0x10c
d004de0a:	ee1f 0a90 	vmov	r0, s31
d004de0e:	eddd 0a44 	vldr	s1, [sp, #272]	; 0x110
d004de12:	ed9d 1a45 	vldr	s2, [sp, #276]	; 0x114
d004de16:	f004 fc97 	bl	d0052748 <lightSetPosition>
d004de1a:	9d09      	ldr	r5, [sp, #36]	; 0x24
d004de1c:	edda 0a01 	vldr	s1, [sl, #4]
d004de20:	ed9a 1a02 	vldr	s2, [sl, #8]
d004de24:	4628      	mov	r0, r5
d004de26:	ed9a 0a00 	vldr	s0, [sl]
d004de2a:	f003 fb57 	bl	d00514dc <entitySetPosition>
d004de2e:	4628      	mov	r0, r5
d004de30:	4641      	mov	r1, r8
d004de32:	f004 f99f 	bl	d0052174 <entityMatchOrientationCamera>
d004de36:	eeb0 0a48 	vmov.f32	s0, s16
d004de3a:	4628      	mov	r0, r5
d004de3c:	ee1e 1a90 	vmov	r1, s29
d004de40:	f006 ff80 	bl	d0054d44 <sb3dEntityAudioInfoDefault>
d004de44:	7d20      	ldrb	r0, [r4, #20]
d004de46:	7d62      	ldrb	r2, [r4, #21]
d004de48:	eddf 7a67 	vldr	s15, [pc, #412]	; d004dfe8 <main+0xf28>
d004de4c:	ea40 2102 	orr.w	r1, r0, r2, lsl #8
d004de50:	7da2      	ldrb	r2, [r4, #22]
d004de52:	ee60 7aa7 	vmul.f32	s15, s1, s15
d004de56:	7de3      	ldrb	r3, [r4, #23]
d004de58:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004de5c:	2003      	movs	r0, #3
d004de5e:	edcd 1a73 	vstr	s3, [sp, #460]	; 0x1cc
d004de62:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004de66:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004de6a:	ed8d 0a70 	vstr	s0, [sp, #448]	; 0x1c0
d004de6e:	689b      	ldr	r3, [r3, #8]
d004de70:	edcd 7a07 	vstr	s15, [sp, #28]
d004de74:	699b      	ldr	r3, [r3, #24]
d004de76:	f99d 101c 	ldrsb.w	r1, [sp, #28]
d004de7a:	edcd 0a71 	vstr	s1, [sp, #452]	; 0x1c4
d004de7e:	ed8d 1a72 	vstr	s2, [sp, #456]	; 0x1c8
d004de82:	4798      	blx	r3
d004de84:	ed9f 7a59 	vldr	s14, [pc, #356]	; d004dfec <main+0xf2c>
d004de88:	2003      	movs	r0, #3
d004de8a:	eddd 7a70 	vldr	s15, [sp, #448]	; 0x1c0
d004de8e:	7d25      	ldrb	r5, [r4, #20]
d004de90:	ee67 7a87 	vmul.f32	s15, s15, s14
d004de94:	7d62      	ldrb	r2, [r4, #21]
d004de96:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004de9a:	7da2      	ldrb	r2, [r4, #22]
d004de9c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004dea0:	7de3      	ldrb	r3, [r4, #23]
d004dea2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dea6:	4952      	ldr	r1, [pc, #328]	; (d004dff0 <main+0xf30>)
d004dea8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004deac:	ee17 2a90 	vmov	r2, s15
d004deb0:	689b      	ldr	r3, [r3, #8]
d004deb2:	440a      	add	r2, r1
d004deb4:	691b      	ldr	r3, [r3, #16]
d004deb6:	b291      	uxth	r1, r2
d004deb8:	4798      	blx	r3
d004deba:	7d25      	ldrb	r5, [r4, #20]
d004debc:	7d62      	ldrb	r2, [r4, #21]
d004debe:	2003      	movs	r0, #3
d004dec0:	ed9f 7a4c 	vldr	s14, [pc, #304]	; d004dff4 <main+0xf34>
d004dec4:	7da3      	ldrb	r3, [r4, #22]
d004dec6:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004deca:	eddd 7a72 	vldr	s15, [sp, #456]	; 0x1c8
d004dece:	ea41 4203 	orr.w	r2, r1, r3, lsl #16
d004ded2:	7de3      	ldrb	r3, [r4, #23]
d004ded4:	ee67 7a87 	vmul.f32	s15, s15, s14
d004ded8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dedc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004dee0:	689b      	ldr	r3, [r3, #8]
d004dee2:	695b      	ldr	r3, [r3, #20]
d004dee4:	edcd 7a07 	vstr	s15, [sp, #28]
d004dee8:	f89d 101c 	ldrb.w	r1, [sp, #28]
d004deec:	4798      	blx	r3
d004deee:	edda 0a01 	vldr	s1, [sl, #4]
d004def2:	ed9a 1a02 	vldr	s2, [sl, #8]
d004def6:	ee1f 0a10 	vmov	r0, s30
d004defa:	ed9a 0a00 	vldr	s0, [sl]
d004defe:	f004 fc23 	bl	d0052748 <lightSetPosition>
d004df02:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004df06:	ee1f 0a10 	vmov	r0, s30
d004df0a:	f004 fc39 	bl	d0052780 <lightSetIntensity>
d004df0e:	eeb0 0a4a 	vmov.f32	s0, s20
d004df12:	ed9f 1a39 	vldr	s2, [pc, #228]	; d004dff8 <main+0xf38>
d004df16:	ee1f 0a10 	vmov	r0, s30
d004df1a:	eddf 0a38 	vldr	s1, [pc, #224]	; d004dffc <main+0xf3c>
d004df1e:	f004 fb6f 	bl	d0052600 <lightSetRanges>
d004df22:	9b05      	ldr	r3, [sp, #20]
d004df24:	2b00      	cmp	r3, #0
d004df26:	f040 8417 	bne.w	d004e758 <main+0x1698>
d004df2a:	2101      	movs	r1, #1
d004df2c:	ee1f 0a10 	vmov	r0, s30
d004df30:	f004 fb90 	bl	d0052654 <lightEnable>
d004df34:	eeb0 0a48 	vmov.f32	s0, s16
d004df38:	980d      	ldr	r0, [sp, #52]	; 0x34
d004df3a:	f7fd ffdb 	bl	d004bef4 <weatherLightning>
d004df3e:	4681      	mov	r9, r0
d004df40:	7820      	ldrb	r0, [r4, #0]
d004df42:	f006 0501 	and.w	r5, r6, #1
d004df46:	7861      	ldrb	r1, [r4, #1]
d004df48:	78a2      	ldrb	r2, [r4, #2]
d004df4a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004df4e:	78e3      	ldrb	r3, [r4, #3]
d004df50:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004df54:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004df58:	69db      	ldr	r3, [r3, #28]
d004df5a:	4798      	blx	r3
d004df5c:	4b28      	ldr	r3, [pc, #160]	; (d004e000 <main+0xf40>)
d004df5e:	681b      	ldr	r3, [r3, #0]
d004df60:	b933      	cbnz	r3, d004df70 <main+0xeb0>
d004df62:	07f3      	lsls	r3, r6, #31
d004df64:	d504      	bpl.n	d004df70 <main+0xeb0>
d004df66:	2301      	movs	r3, #1
d004df68:	4a25      	ldr	r2, [pc, #148]	; (d004e000 <main+0xf40>)
d004df6a:	6013      	str	r3, [r2, #0]
d004df6c:	f7fe fd5a 	bl	d004ca24 <FirePlayerLaser>
d004df70:	f005 03ff 	and.w	r3, r5, #255	; 0xff
d004df74:	b90d      	cbnz	r5, d004df7a <main+0xeba>
d004df76:	4a22      	ldr	r2, [pc, #136]	; (d004e000 <main+0xf40>)
d004df78:	6013      	str	r3, [r2, #0]
d004df7a:	f016 0602 	ands.w	r6, r6, #2
d004df7e:	f040 8443 	bne.w	d004e808 <main+0x1748>
d004df82:	eeb0 0a48 	vmov.f32	s0, s16
d004df86:	f7fe febd 	bl	d004cd04 <UpdateLasers>
d004df8a:	4a1e      	ldr	r2, [pc, #120]	; (d004e004 <main+0xf44>)
d004df8c:	8813      	ldrh	r3, [r2, #0]
d004df8e:	3b01      	subs	r3, #1
d004df90:	b21b      	sxth	r3, r3
d004df92:	2b00      	cmp	r3, #0
d004df94:	8013      	strh	r3, [r2, #0]
d004df96:	dc3b      	bgt.n	d004e010 <main+0xf50>
d004df98:	4b1b      	ldr	r3, [pc, #108]	; (d004e008 <main+0xf48>)
d004df9a:	f9b3 3000 	ldrsh.w	r3, [r3]
d004df9e:	2b00      	cmp	r3, #0
d004dfa0:	f340 8461 	ble.w	d004e866 <main+0x17a6>
d004dfa4:	e032      	b.n	d004e00c <main+0xf4c>
d004dfa6:	bf00      	nop
d004dfa8:	d00f4a84 	.word	0xd00f4a84
d004dfac:	d00f4a00 	.word	0xd00f4a00
d004dfb0:	d00f4abc 	.word	0xd00f4abc
d004dfb4:	d00f4a64 	.word	0xd00f4a64
d004dfb8:	4d7bc521 	.word	0x4d7bc521
d004dfbc:	310f2a63 	.word	0x310f2a63
d004dfc0:	bb449ba6 	.word	0xbb449ba6
d004dfc4:	3f99999a 	.word	0x3f99999a
d004dfc8:	40d9999a 	.word	0x40d9999a
d004dfcc:	43852666 	.word	0x43852666
d004dfd0:	435c0000 	.word	0x435c0000
d004dfd4:	3ba3d70a 	.word	0x3ba3d70a
d004dfd8:	3c088889 	.word	0x3c088889
d004dfdc:	d005a500 	.word	0xd005a500
d004dfe0:	00000000 	.word	0x00000000
d004dfe4:	451c4000 	.word	0x451c4000
d004dfe8:	42fe0000 	.word	0x42fe0000
d004dfec:	45abe000 	.word	0x45abe000
d004dff0:	ffffac44 	.word	0xffffac44
d004dff4:	430c0000 	.word	0x430c0000
d004dff8:	44048000 	.word	0x44048000
d004dffc:	43a00000 	.word	0x43a00000
d004e000:	d005a688 	.word	0xd005a688
d004e004:	d005a6b6 	.word	0xd005a6b6
d004e008:	d005a6b4 	.word	0xd005a6b4
d004e00c:	f7fe fcac 	bl	d004c968 <UpdateTurretTest.part.0>
d004e010:	eeb0 0a48 	vmov.f32	s0, s16
d004e014:	f7fe f9d0 	bl	d004c3b8 <updateImpactFlames>
d004e018:	4bb9      	ldr	r3, [pc, #740]	; (d004e300 <main+0x1240>)
d004e01a:	ed9f 0aba 	vldr	s0, [pc, #744]	; d004e304 <main+0x1244>
d004e01e:	ed93 7a00 	vldr	s14, [r3]
d004e022:	eddf 0ab9 	vldr	s1, [pc, #740]	; d004e308 <main+0x1248>
d004e026:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d004e02a:	ed9f 1ab8 	vldr	s2, [pc, #736]	; d004e30c <main+0x124c>
d004e02e:	ed9f 6bb2 	vldr	d6, [pc, #712]	; d004e2f8 <main+0x1238>
d004e032:	ee37 7b06 	vadd.f64	d7, d7, d6
d004e036:	eef7 bbc7 	vcvt.f32.f64	s23, d7
d004e03a:	edc3 ba00 	vstr	s23, [r3]
d004e03e:	f002 fa8f 	bl	d0050560 <vec3>
d004e042:	eef0 7a40 	vmov.f32	s15, s0
d004e046:	eeb0 7a60 	vmov.f32	s14, s1
d004e04a:	eef0 1a41 	vmov.f32	s3, s2
d004e04e:	eeb0 0a6b 	vmov.f32	s0, s23
d004e052:	edcd 7a6d 	vstr	s15, [sp, #436]	; 0x1b4
d004e056:	eeb0 1a60 	vmov.f32	s2, s1
d004e05a:	ed8d 7a6e 	vstr	s14, [sp, #440]	; 0x1b8
d004e05e:	eef0 0a67 	vmov.f32	s1, s15
d004e062:	edcd 1a6f 	vstr	s3, [sp, #444]	; 0x1bc
d004e066:	f7fe ff91 	bl	d004cf8c <updateSmoke>
d004e06a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
d004e06c:	eeb0 1a4c 	vmov.f32	s2, s24
d004e070:	2100      	movs	r1, #0
d004e072:	eef0 0a49 	vmov.f32	s1, s18
d004e076:	ed9f 0aa6 	vldr	s0, [pc, #664]	; d004e310 <main+0x1250>
d004e07a:	4628      	mov	r0, r5
d004e07c:	f003 fad6 	bl	d005162c <entityTurn>
d004e080:	eeb0 1a49 	vmov.f32	s2, s18
d004e084:	eef0 0a48 	vmov.f32	s1, s16
d004e088:	2100      	movs	r1, #0
d004e08a:	ed9f 0aa1 	vldr	s0, [pc, #644]	; d004e310 <main+0x1250>
d004e08e:	4628      	mov	r0, r5
d004e090:	f003 facc 	bl	d005162c <entityTurn>
d004e094:	7b20      	ldrb	r0, [r4, #12]
d004e096:	7b61      	ldrb	r1, [r4, #13]
d004e098:	7ba2      	ldrb	r2, [r4, #14]
d004e09a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e09e:	7be3      	ldrb	r3, [r4, #15]
d004e0a0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e0a4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e0a8:	681b      	ldr	r3, [r3, #0]
d004e0aa:	68db      	ldr	r3, [r3, #12]
d004e0ac:	4798      	blx	r3
d004e0ae:	4a99      	ldr	r2, [pc, #612]	; (d004e314 <main+0x1254>)
d004e0b0:	7813      	ldrb	r3, [r2, #0]
d004e0b2:	f1c3 0301 	rsb	r3, r3, #1
d004e0b6:	b2db      	uxtb	r3, r3
d004e0b8:	7013      	strb	r3, [r2, #0]
d004e0ba:	7813      	ldrb	r3, [r2, #0]
d004e0bc:	7b21      	ldrb	r1, [r4, #12]
d004e0be:	7b60      	ldrb	r0, [r4, #13]
d004e0c0:	7ba2      	ldrb	r2, [r4, #14]
d004e0c2:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e0c6:	2b00      	cmp	r3, #0
d004e0c8:	f000 831b 	beq.w	d004e702 <main+0x1642>
d004e0cc:	4d92      	ldr	r5, [pc, #584]	; (d004e318 <main+0x1258>)
d004e0ce:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e0d2:	7be3      	ldrb	r3, [r4, #15]
d004e0d4:	6829      	ldr	r1, [r5, #0]
d004e0d6:	4891      	ldr	r0, [pc, #580]	; (d004e31c <main+0x125c>)
d004e0d8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e0dc:	6800      	ldr	r0, [r0, #0]
d004e0de:	f8df b250 	ldr.w	fp, [pc, #592]	; d004e330 <main+0x1270>
d004e0e2:	2700      	movs	r7, #0
d004e0e4:	681b      	ldr	r3, [r3, #0]
d004e0e6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e0e8:	4798      	blx	r3
d004e0ea:	682b      	ldr	r3, [r5, #0]
d004e0ec:	4d8c      	ldr	r5, [pc, #560]	; (d004e320 <main+0x1260>)
d004e0ee:	6818      	ldr	r0, [r3, #0]
d004e0f0:	f000 fc84 	bl	d004e9fc <set3DRenderBuffer>
d004e0f4:	4649      	mov	r1, r9
d004e0f6:	46b1      	mov	r9, r6
d004e0f8:	f81b 3b01 	ldrb.w	r3, [fp], #1
d004e0fc:	b353      	cbz	r3, d004e154 <main+0x1094>
d004e0fe:	682e      	ldr	r6, [r5, #0]
d004e100:	4638      	mov	r0, r7
d004e102:	1e72      	subs	r2, r6, #1
d004e104:	2e00      	cmp	r6, #0
d004e106:	f000 8303 	beq.w	d004e710 <main+0x1650>
d004e10a:	602a      	str	r2, [r5, #0]
d004e10c:	9207      	str	r2, [sp, #28]
d004e10e:	bb0a      	cbnz	r2, d004e154 <main+0x1094>
d004e110:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e114:	7d63      	ldrb	r3, [r4, #21]
d004e116:	7da6      	ldrb	r6, [r4, #22]
d004e118:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d004e11c:	7de3      	ldrb	r3, [r4, #23]
d004e11e:	910c      	str	r1, [sp, #48]	; 0x30
d004e120:	ea4c 4606 	orr.w	r6, ip, r6, lsl #16
d004e124:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d004e128:	689b      	ldr	r3, [r3, #8]
d004e12a:	689b      	ldr	r3, [r3, #8]
d004e12c:	4798      	blx	r3
d004e12e:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e132:	7d63      	ldrb	r3, [r4, #21]
d004e134:	4638      	mov	r0, r7
d004e136:	7da6      	ldrb	r6, [r4, #22]
d004e138:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d004e13c:	7de3      	ldrb	r3, [r4, #23]
d004e13e:	ea4c 4606 	orr.w	r6, ip, r6, lsl #16
d004e142:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d004e146:	689b      	ldr	r3, [r3, #8]
d004e148:	685b      	ldr	r3, [r3, #4]
d004e14a:	4798      	blx	r3
d004e14c:	9a07      	ldr	r2, [sp, #28]
d004e14e:	990c      	ldr	r1, [sp, #48]	; 0x30
d004e150:	f80b 2c01 	strb.w	r2, [fp, #-1]
d004e154:	3504      	adds	r5, #4
d004e156:	2f00      	cmp	r7, #0
d004e158:	f000 82a0 	beq.w	d004e69c <main+0x15dc>
d004e15c:	9b08      	ldr	r3, [sp, #32]
d004e15e:	464e      	mov	r6, r9
d004e160:	4689      	mov	r9, r1
d004e162:	2b00      	cmp	r3, #0
d004e164:	f040 835d 	bne.w	d004e822 <main+0x1762>
d004e168:	9b05      	ldr	r3, [sp, #20]
d004e16a:	2b00      	cmp	r3, #0
d004e16c:	f040 8319 	bne.w	d004e7a2 <main+0x16e2>
d004e170:	eeb0 0a49 	vmov.f32	s0, s18
d004e174:	f1b9 0f00 	cmp.w	r9, #0
d004e178:	f000 8309 	beq.w	d004e78e <main+0x16ce>
d004e17c:	4969      	ldr	r1, [pc, #420]	; (d004e324 <main+0x1264>)
d004e17e:	2305      	movs	r3, #5
d004e180:	2215      	movs	r2, #21
d004e182:	4640      	mov	r0, r8
d004e184:	7809      	ldrb	r1, [r1, #0]
d004e186:	f005 fb29 	bl	d00537dc <drawFakeHorizon>
d004e18a:	4967      	ldr	r1, [pc, #412]	; (d004e328 <main+0x1268>)
d004e18c:	780b      	ldrb	r3, [r1, #0]
d004e18e:	2b00      	cmp	r3, #0
d004e190:	f040 8365 	bne.w	d004e85e <main+0x179e>
d004e194:	4865      	ldr	r0, [pc, #404]	; (d004e32c <main+0x126c>)
d004e196:	2205      	movs	r2, #5
d004e198:	4d65      	ldr	r5, [pc, #404]	; (d004e330 <main+0x1270>)
d004e19a:	7803      	ldrb	r3, [r0, #0]
d004e19c:	700a      	strb	r2, [r1, #0]
d004e19e:	f1c3 0301 	rsb	r3, r3, #1
d004e1a2:	b2db      	uxtb	r3, r3
d004e1a4:	5cea      	ldrb	r2, [r5, r3]
d004e1a6:	7003      	strb	r3, [r0, #0]
d004e1a8:	b92a      	cbnz	r2, d004e1b6 <main+0x10f6>
d004e1aa:	2101      	movs	r1, #1
d004e1ac:	2278      	movs	r2, #120	; 0x78
d004e1ae:	54e9      	strb	r1, [r5, r3]
d004e1b0:	495b      	ldr	r1, [pc, #364]	; (d004e320 <main+0x1260>)
d004e1b2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d004e1b6:	2008      	movs	r0, #8
d004e1b8:	2320      	movs	r3, #32
d004e1ba:	2280      	movs	r2, #128	; 0x80
d004e1bc:	2105      	movs	r1, #5
d004e1be:	9000      	str	r0, [sp, #0]
d004e1c0:	4640      	mov	r0, r8
d004e1c2:	f005 fa15 	bl	d00535f0 <drawFakeSkyDots>
d004e1c6:	495b      	ldr	r1, [pc, #364]	; (d004e334 <main+0x1274>)
d004e1c8:	eeb0 0a49 	vmov.f32	s0, s18
d004e1cc:	236e      	movs	r3, #110	; 0x6e
d004e1ce:	2280      	movs	r2, #128	; 0x80
d004e1d0:	7809      	ldrb	r1, [r1, #0]
d004e1d2:	4640      	mov	r0, r8
d004e1d4:	f005 f8f4 	bl	d00533c0 <drawFakeHorizonDots>
d004e1d8:	7820      	ldrb	r0, [r4, #0]
d004e1da:	7861      	ldrb	r1, [r4, #1]
d004e1dc:	78a2      	ldrb	r2, [r4, #2]
d004e1de:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e1e2:	78e3      	ldrb	r3, [r4, #3]
d004e1e4:	4d54      	ldr	r5, [pc, #336]	; (d004e338 <main+0x1278>)
d004e1e6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e1ea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e1ee:	689b      	ldr	r3, [r3, #8]
d004e1f0:	4798      	blx	r3
d004e1f2:	4603      	mov	r3, r0
d004e1f4:	4640      	mov	r0, r8
d004e1f6:	602b      	str	r3, [r5, #0]
d004e1f8:	f006 fb2a 	bl	d0054850 <Render3D>
d004e1fc:	7820      	ldrb	r0, [r4, #0]
d004e1fe:	7861      	ldrb	r1, [r4, #1]
d004e200:	78a2      	ldrb	r2, [r4, #2]
d004e202:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e206:	78e3      	ldrb	r3, [r4, #3]
d004e208:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e20c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e210:	689b      	ldr	r3, [r3, #8]
d004e212:	4798      	blx	r3
d004e214:	4949      	ldr	r1, [pc, #292]	; (d004e33c <main+0x127c>)
d004e216:	eeb5 7a00 	vmov.f32	s14, #80	; 0x3e800000  0.250
d004e21a:	682a      	ldr	r2, [r5, #0]
d004e21c:	edd1 7a00 	vldr	s15, [r1]
d004e220:	4d47      	ldr	r5, [pc, #284]	; (d004e340 <main+0x1280>)
d004e222:	1a80      	subs	r0, r0, r2
d004e224:	ee78 7a27 	vadd.f32	s15, s16, s15
d004e228:	4a46      	ldr	r2, [pc, #280]	; (d004e344 <main+0x1284>)
d004e22a:	682b      	ldr	r3, [r5, #0]
d004e22c:	6010      	str	r0, [r2, #0]
d004e22e:	eef4 7ac7 	vcmpe.f32	s15, s14
d004e232:	3301      	adds	r3, #1
d004e234:	edc1 7a00 	vstr	s15, [r1]
d004e238:	602b      	str	r3, [r5, #0]
d004e23a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e23e:	db24      	blt.n	d004e28a <main+0x11ca>
d004e240:	ed9f 7a41 	vldr	s14, [pc, #260]	; d004e348 <main+0x1288>
d004e244:	eef4 7ac7 	vcmpe.f32	s15, s14
d004e248:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e24c:	f340 82f0 	ble.w	d004e830 <main+0x1770>
d004e250:	ee07 3a10 	vmov	s14, r3
d004e254:	4b3d      	ldr	r3, [pc, #244]	; (d004e34c <main+0x128c>)
d004e256:	2164      	movs	r1, #100	; 0x64
d004e258:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004e25c:	ee27 7a0a 	vmul.f32	s14, s14, s20
d004e260:	eec7 6a27 	vdiv.f32	s13, s14, s15
d004e264:	eefc 7ae6 	vcvt.u32.f32	s15, s13
d004e268:	ee17 2a90 	vmov	r2, s15
d004e26c:	fba3 0302 	umull	r0, r3, r3, r2
d004e270:	095b      	lsrs	r3, r3, #5
d004e272:	fb01 2213 	mls	r2, r1, r3, r2
d004e276:	4936      	ldr	r1, [pc, #216]	; (d004e350 <main+0x1290>)
d004e278:	600b      	str	r3, [r1, #0]
d004e27a:	4b36      	ldr	r3, [pc, #216]	; (d004e354 <main+0x1294>)
d004e27c:	601a      	str	r2, [r3, #0]
d004e27e:	2200      	movs	r2, #0
d004e280:	4b2f      	ldr	r3, [pc, #188]	; (d004e340 <main+0x1280>)
d004e282:	601a      	str	r2, [r3, #0]
d004e284:	4b2d      	ldr	r3, [pc, #180]	; (d004e33c <main+0x127c>)
d004e286:	ed83 9a00 	vstr	s18, [r3]
d004e28a:	a889      	add	r0, sp, #548	; 0x224
d004e28c:	f7fd fd96 	bl	d004bdbc <splineRailGetCurrentNode>
d004e290:	2e00      	cmp	r6, #0
d004e292:	f040 8205 	bne.w	d004e6a0 <main+0x15e0>
d004e296:	4b2b      	ldr	r3, [pc, #172]	; (d004e344 <main+0x1284>)
d004e298:	b2c5      	uxtb	r5, r0
d004e29a:	4f2f      	ldr	r7, [pc, #188]	; (d004e358 <main+0x1298>)
d004e29c:	f44f 767a 	mov.w	r6, #1000	; 0x3e8
d004e2a0:	f8d3 9000 	ldr.w	r9, [r3]
d004e2a4:	4b2a      	ldr	r3, [pc, #168]	; (d004e350 <main+0x1290>)
d004e2a6:	681a      	ldr	r2, [r3, #0]
d004e2a8:	4b2a      	ldr	r3, [pc, #168]	; (d004e354 <main+0x1294>)
d004e2aa:	920c      	str	r2, [sp, #48]	; 0x30
d004e2ac:	681b      	ldr	r3, [r3, #0]
d004e2ae:	9307      	str	r3, [sp, #28]
d004e2b0:	f005 f880 	bl	d00533b4 <getRenderTriCount>
d004e2b4:	f8df c0b0 	ldr.w	ip, [pc, #176]	; d004e368 <main+0x12a8>
d004e2b8:	9003      	str	r0, [sp, #12]
d004e2ba:	fbac 3109 	umull	r3, r1, ip, r9
d004e2be:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d004e2c0:	9b07      	ldr	r3, [sp, #28]
d004e2c2:	ea4f 4e51 	mov.w	lr, r1, lsr #17
d004e2c6:	4825      	ldr	r0, [pc, #148]	; (d004e35c <main+0x129c>)
d004e2c8:	4925      	ldr	r1, [pc, #148]	; (d004e360 <main+0x12a0>)
d004e2ca:	fb07 971e 	mls	r7, r7, lr, r9
d004e2ce:	9502      	str	r5, [sp, #8]
d004e2d0:	fb06 f607 	mul.w	r6, r6, r7
d004e2d4:	f8cd e000 	str.w	lr, [sp]
d004e2d8:	fbac 7606 	umull	r7, r6, ip, r6
d004e2dc:	0c76      	lsrs	r6, r6, #17
d004e2de:	9601      	str	r6, [sp, #4]
d004e2e0:	f007 fb7c 	bl	d00559dc <siprintf>
d004e2e4:	4b1f      	ldr	r3, [pc, #124]	; (d004e364 <main+0x12a4>)
d004e2e6:	781b      	ldrb	r3, [r3, #0]
d004e2e8:	42ab      	cmp	r3, r5
d004e2ea:	d03f      	beq.n	d004e36c <main+0x12ac>
d004e2ec:	2d14      	cmp	r5, #20
d004e2ee:	f000 82a2 	beq.w	d004e836 <main+0x1776>
d004e2f2:	e03b      	b.n	d004e36c <main+0x12ac>
d004e2f4:	f3af 8000 	nop.w
d004e2f8:	47ae147b 	.word	0x47ae147b
d004e2fc:	3f847ae1 	.word	0x3f847ae1
d004e300:	d005a6b8 	.word	0xd005a6b8
d004e304:	c40d4000 	.word	0xc40d4000
d004e308:	43d70000 	.word	0x43d70000
d004e30c:	c4480000 	.word	0xc4480000
d004e310:	00000000 	.word	0x00000000
d004e314:	d005a520 	.word	0xd005a520
d004e318:	d00f4ac0 	.word	0xd00f4ac0
d004e31c:	d00f4ae0 	.word	0xd00f4ae0
d004e320:	d005a6a0 	.word	0xd005a6a0
d004e324:	d00f4a84 	.word	0xd00f4a84
d004e328:	d005a3cc 	.word	0xd005a3cc
d004e32c:	d005a488 	.word	0xd005a488
d004e330:	d005a69c 	.word	0xd005a69c
d004e334:	d00f4a64 	.word	0xd00f4a64
d004e338:	d005a6a8 	.word	0xd005a6a8
d004e33c:	d005a518 	.word	0xd005a518
d004e340:	d005a514 	.word	0xd005a514
d004e344:	d005a6ac 	.word	0xd005a6ac
d004e348:	3727c5ac 	.word	0x3727c5ac
d004e34c:	51eb851f 	.word	0x51eb851f
d004e350:	d005a51c 	.word	0xd005a51c
d004e354:	d005a510 	.word	0xd005a510
d004e358:	00075300 	.word	0x00075300
d004e35c:	d005a3d4 	.word	0xd005a3d4
d004e360:	d005763c 	.word	0xd005763c
d004e364:	d005a68c 	.word	0xd005a68c
d004e368:	45e7b273 	.word	0x45e7b273
d004e36c:	9b05      	ldr	r3, [sp, #20]
d004e36e:	0118      	lsls	r0, r3, #4
d004e370:	3001      	adds	r0, #1
d004e372:	7b23      	ldrb	r3, [r4, #12]
d004e374:	2640      	movs	r6, #64	; 0x40
d004e376:	7b62      	ldrb	r2, [r4, #13]
d004e378:	7ba7      	ldrb	r7, [r4, #14]
d004e37a:	ea43 2102 	orr.w	r1, r3, r2, lsl #8
d004e37e:	4abb      	ldr	r2, [pc, #748]	; (d004e66c <main+0x15ac>)
d004e380:	7be3      	ldrb	r3, [r4, #15]
d004e382:	7015      	strb	r5, [r2, #0]
d004e384:	ea41 4207 	orr.w	r2, r1, r7, lsl #16
d004e388:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e38c:	685b      	ldr	r3, [r3, #4]
d004e38e:	68db      	ldr	r3, [r3, #12]
d004e390:	4798      	blx	r3
d004e392:	7b22      	ldrb	r2, [r4, #12]
d004e394:	7b65      	ldrb	r5, [r4, #13]
d004e396:	2108      	movs	r1, #8
d004e398:	7ba3      	ldrb	r3, [r4, #14]
d004e39a:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
d004e39e:	7be7      	ldrb	r7, [r4, #15]
d004e3a0:	4608      	mov	r0, r1
d004e3a2:	4ab3      	ldr	r2, [pc, #716]	; (d004e670 <main+0x15b0>)
d004e3a4:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
d004e3a8:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d004e3ac:	687b      	ldr	r3, [r7, #4]
d004e3ae:	4fb1      	ldr	r7, [pc, #708]	; (d004e674 <main+0x15b4>)
d004e3b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d004e3b2:	4798      	blx	r3
d004e3b4:	eddf 7ab0 	vldr	s15, [pc, #704]	; d004e678 <main+0x15b8>
d004e3b8:	7d25      	ldrb	r5, [r4, #20]
d004e3ba:	2002      	movs	r0, #2
d004e3bc:	ee68 7aa7 	vmul.f32	s15, s17, s15
d004e3c0:	7d62      	ldrb	r2, [r4, #21]
d004e3c2:	ed9f 7aae 	vldr	s14, [pc, #696]	; d004e67c <main+0x15bc>
d004e3c6:	ee68 8aaa 	vmul.f32	s17, s17, s21
d004e3ca:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004e3ce:	7da2      	ldrb	r2, [r4, #22]
d004e3d0:	eef0 7ae7 	vabs.f32	s15, s15
d004e3d4:	7de3      	ldrb	r3, [r4, #23]
d004e3d6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e3da:	ee77 7a87 	vadd.f32	s15, s15, s14
d004e3de:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e3e2:	689b      	ldr	r3, [r3, #8]
d004e3e4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004e3e8:	691b      	ldr	r3, [r3, #16]
d004e3ea:	ee17 2a90 	vmov	r2, s15
d004e3ee:	b291      	uxth	r1, r2
d004e3f0:	4798      	blx	r3
d004e3f2:	ed9f 7aa3 	vldr	s14, [pc, #652]	; d004e680 <main+0x15c0>
d004e3f6:	edd7 7a00 	vldr	s15, [r7]
d004e3fa:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004e3fe:	eeb4 8a47 	vcmp.f32	s16, s14
d004e402:	7b21      	ldrb	r1, [r4, #12]
d004e404:	ee78 8ae7 	vsub.f32	s17, s17, s15
d004e408:	7b62      	ldrb	r2, [r4, #13]
d004e40a:	7ba3      	ldrb	r3, [r4, #14]
d004e40c:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004e410:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e414:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d004e418:	7be0      	ldrb	r0, [r4, #15]
d004e41a:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d004e41e:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d004e422:	f04f 010a 	mov.w	r1, #10
d004e426:	fe36 ba0b 	vselgt.f32	s22, s12, s22
d004e42a:	eee8 7a8b 	vfma.f32	s15, s17, s22
d004e42e:	ea43 6000 	orr.w	r0, r3, r0, lsl #24
d004e432:	f44f 7280 	mov.w	r2, #256	; 0x100
d004e436:	4633      	mov	r3, r6
d004e438:	6845      	ldr	r5, [r0, #4]
d004e43a:	9600      	str	r6, [sp, #0]
d004e43c:	4891      	ldr	r0, [pc, #580]	; (d004e684 <main+0x15c4>)
d004e43e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004e442:	69ad      	ldr	r5, [r5, #24]
d004e444:	edc7 7a00 	vstr	s15, [r7]
d004e448:	eeb0 8a67 	vmov.f32	s16, s15
d004e44c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e450:	fe67 8a26 	vselge.f32	s17, s14, s13
d004e454:	47a8      	blx	r5
d004e456:	4b8c      	ldr	r3, [pc, #560]	; (d004e688 <main+0x15c8>)
d004e458:	781b      	ldrb	r3, [r3, #0]
d004e45a:	b1cb      	cbz	r3, d004e490 <main+0x13d0>
d004e45c:	7b21      	ldrb	r1, [r4, #12]
d004e45e:	ee38 8a28 	vadd.f32	s16, s16, s17
d004e462:	7b60      	ldrb	r0, [r4, #13]
d004e464:	4633      	mov	r3, r6
d004e466:	7ba5      	ldrb	r5, [r4, #14]
d004e468:	2280      	movs	r2, #128	; 0x80
d004e46a:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d004e46e:	eefd 7ac8 	vcvt.s32.f32	s15, s16
d004e472:	7be7      	ldrb	r7, [r4, #15]
d004e474:	ea41 4005 	orr.w	r0, r1, r5, lsl #16
d004e478:	ee17 1a90 	vmov	r1, s15
d004e47c:	ea40 6507 	orr.w	r5, r0, r7, lsl #24
d004e480:	4882      	ldr	r0, [pc, #520]	; (d004e68c <main+0x15cc>)
d004e482:	f1c1 01d0 	rsb	r1, r1, #208	; 0xd0
d004e486:	686d      	ldr	r5, [r5, #4]
d004e488:	b209      	sxth	r1, r1
d004e48a:	9600      	str	r6, [sp, #0]
d004e48c:	69ad      	ldr	r5, [r5, #24]
d004e48e:	47a8      	blx	r5
d004e490:	4f7f      	ldr	r7, [pc, #508]	; (d004e690 <main+0x15d0>)
d004e492:	2633      	movs	r6, #51	; 0x33
d004e494:	e035      	b.n	d004e502 <main+0x1442>
d004e496:	883b      	ldrh	r3, [r7, #0]
d004e498:	f1c3 0332 	rsb	r3, r3, #50	; 0x32
d004e49c:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d004e4a0:	005d      	lsls	r5, r3, #1
d004e4a2:	f115 0f31 	cmn.w	r5, #49	; 0x31
d004e4a6:	f2c0 80c0 	blt.w	d004e62a <main+0x156a>
d004e4aa:	f894 c00c 	ldrb.w	ip, [r4, #12]
d004e4ae:	2000      	movs	r0, #0
d004e4b0:	7b61      	ldrb	r1, [r4, #13]
d004e4b2:	7ba2      	ldrb	r2, [r4, #14]
d004e4b4:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e4b8:	7be3      	ldrb	r3, [r4, #15]
d004e4ba:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e4be:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e4c2:	685b      	ldr	r3, [r3, #4]
d004e4c4:	68db      	ldr	r3, [r3, #12]
d004e4c6:	4798      	blx	r3
d004e4c8:	7b21      	ldrb	r1, [r4, #12]
d004e4ca:	7b60      	ldrb	r0, [r4, #13]
d004e4cc:	2312      	movs	r3, #18
d004e4ce:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e4d2:	2206      	movs	r2, #6
d004e4d4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e4d8:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e4dc:	b231      	sxth	r1, r6
d004e4de:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d004e4e2:	2009      	movs	r0, #9
d004e4e4:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004e4e8:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e4ec:	f8dc 9004 	ldr.w	r9, [ip, #4]
d004e4f0:	47c8      	blx	r9
d004e4f2:	2d31      	cmp	r5, #49	; 0x31
d004e4f4:	f300 81e7 	bgt.w	d004e8c6 <main+0x1806>
d004e4f8:	3616      	adds	r6, #22
d004e4fa:	3706      	adds	r7, #6
d004e4fc:	b2b6      	uxth	r6, r6
d004e4fe:	2ee3      	cmp	r6, #227	; 0xe3
d004e500:	d078      	beq.n	d004e5f4 <main+0x1534>
d004e502:	7b25      	ldrb	r5, [r4, #12]
d004e504:	201b      	movs	r0, #27
d004e506:	7b61      	ldrb	r1, [r4, #13]
d004e508:	7ba2      	ldrb	r2, [r4, #14]
d004e50a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e50e:	7be3      	ldrb	r3, [r4, #15]
d004e510:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e514:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e518:	685b      	ldr	r3, [r3, #4]
d004e51a:	68db      	ldr	r3, [r3, #12]
d004e51c:	4798      	blx	r3
d004e51e:	7b20      	ldrb	r0, [r4, #12]
d004e520:	f894 c00d 	ldrb.w	ip, [r4, #13]
d004e524:	2208      	movs	r2, #8
d004e526:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e52a:	1e71      	subs	r1, r6, #1
d004e52c:	ea40 230c 	orr.w	r3, r0, ip, lsl #8
d004e530:	7be5      	ldrb	r5, [r4, #15]
d004e532:	4610      	mov	r0, r2
d004e534:	b209      	sxth	r1, r1
d004e536:	ea43 4c0e 	orr.w	ip, r3, lr, lsl #16
d004e53a:	2314      	movs	r3, #20
d004e53c:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e540:	686d      	ldr	r5, [r5, #4]
d004e542:	686d      	ldr	r5, [r5, #4]
d004e544:	47a8      	blx	r5
d004e546:	f817 0c02 	ldrb.w	r0, [r7, #-2]
d004e54a:	2800      	cmp	r0, #0
d004e54c:	d1a3      	bne.n	d004e496 <main+0x13d6>
d004e54e:	7b23      	ldrb	r3, [r4, #12]
d004e550:	2512      	movs	r5, #18
d004e552:	7b61      	ldrb	r1, [r4, #13]
d004e554:	7ba2      	ldrb	r2, [r4, #14]
d004e556:	46a9      	mov	r9, r5
d004e558:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d004e55c:	7be3      	ldrb	r3, [r4, #15]
d004e55e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e562:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e566:	685b      	ldr	r3, [r3, #4]
d004e568:	68db      	ldr	r3, [r3, #12]
d004e56a:	4798      	blx	r3
d004e56c:	f894 e00c 	ldrb.w	lr, [r4, #12]
d004e570:	7b60      	ldrb	r0, [r4, #13]
d004e572:	462b      	mov	r3, r5
d004e574:	7ba1      	ldrb	r1, [r4, #14]
d004e576:	2206      	movs	r2, #6
d004e578:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d004e57c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e580:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d004e584:	2009      	movs	r0, #9
d004e586:	ea41 6c0c 	orr.w	ip, r1, ip, lsl #24
d004e58a:	b231      	sxth	r1, r6
d004e58c:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e590:	f8dc b004 	ldr.w	fp, [ip, #4]
d004e594:	47d8      	blx	fp
d004e596:	7b20      	ldrb	r0, [r4, #12]
d004e598:	3706      	adds	r7, #6
d004e59a:	7b61      	ldrb	r1, [r4, #13]
d004e59c:	7ba2      	ldrb	r2, [r4, #14]
d004e59e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e5a2:	7be3      	ldrb	r3, [r4, #15]
d004e5a4:	f817 0c08 	ldrb.w	r0, [r7, #-8]
d004e5a8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e5ac:	2800      	cmp	r0, #0
d004e5ae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e5b2:	bf14      	ite	ne
d004e5b4:	200e      	movne	r0, #14
d004e5b6:	201b      	moveq	r0, #27
d004e5b8:	685b      	ldr	r3, [r3, #4]
d004e5ba:	68db      	ldr	r3, [r3, #12]
d004e5bc:	4798      	blx	r3
d004e5be:	7b22      	ldrb	r2, [r4, #12]
d004e5c0:	7b60      	ldrb	r0, [r4, #13]
d004e5c2:	462b      	mov	r3, r5
d004e5c4:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e5c8:	f106 0112 	add.w	r1, r6, #18
d004e5cc:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004e5d0:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e5d4:	3616      	adds	r6, #22
d004e5d6:	eba1 0109 	sub.w	r1, r1, r9
d004e5da:	ea40 450e 	orr.w	r5, r0, lr, lsl #16
d004e5de:	2206      	movs	r2, #6
d004e5e0:	b2b6      	uxth	r6, r6
d004e5e2:	2009      	movs	r0, #9
d004e5e4:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004e5e8:	b209      	sxth	r1, r1
d004e5ea:	686d      	ldr	r5, [r5, #4]
d004e5ec:	686d      	ldr	r5, [r5, #4]
d004e5ee:	47a8      	blx	r5
d004e5f0:	2ee3      	cmp	r6, #227	; 0xe3
d004e5f2:	d186      	bne.n	d004e502 <main+0x1442>
d004e5f4:	7b20      	ldrb	r0, [r4, #12]
d004e5f6:	7b61      	ldrb	r1, [r4, #13]
d004e5f8:	7ba2      	ldrb	r2, [r4, #14]
d004e5fa:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e5fe:	7be3      	ldrb	r3, [r4, #15]
d004e600:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e604:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e608:	681b      	ldr	r3, [r3, #0]
d004e60a:	681b      	ldr	r3, [r3, #0]
d004e60c:	4798      	blx	r3
d004e60e:	eddf 7a21 	vldr	s15, [pc, #132]	; d004e694 <main+0x15d4>
d004e612:	eef4 9ae7 	vcmpe.f32	s19, s15
d004e616:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e61a:	dc6f      	bgt.n	d004e6fc <main+0x163c>
d004e61c:	eddf 7a1e 	vldr	s15, [pc, #120]	; d004e698 <main+0x15d8>
d004e620:	ee79 9aa7 	vadd.f32	s19, s19, s15
d004e624:	9d06      	ldr	r5, [sp, #24]
d004e626:	f7ff bb27 	b.w	d004dc78 <main+0xbb8>
d004e62a:	7b25      	ldrb	r5, [r4, #12]
d004e62c:	2000      	movs	r0, #0
d004e62e:	7b61      	ldrb	r1, [r4, #13]
d004e630:	7ba2      	ldrb	r2, [r4, #14]
d004e632:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e636:	7be3      	ldrb	r3, [r4, #15]
d004e638:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e63c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e640:	685b      	ldr	r3, [r3, #4]
d004e642:	68db      	ldr	r3, [r3, #12]
d004e644:	4798      	blx	r3
d004e646:	7b21      	ldrb	r1, [r4, #12]
d004e648:	7b60      	ldrb	r0, [r4, #13]
d004e64a:	2312      	movs	r3, #18
d004e64c:	f894 c00e 	ldrb.w	ip, [r4, #14]
d004e650:	2206      	movs	r2, #6
d004e652:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e656:	7be5      	ldrb	r5, [r4, #15]
d004e658:	b231      	sxth	r1, r6
d004e65a:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004e65e:	2009      	movs	r0, #9
d004e660:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e664:	686d      	ldr	r5, [r5, #4]
d004e666:	686d      	ldr	r5, [r5, #4]
d004e668:	47a8      	blx	r5
d004e66a:	e745      	b.n	d004e4f8 <main+0x1438>
d004e66c:	d005a68c 	.word	0xd005a68c
d004e670:	d005a3d4 	.word	0xd005a3d4
d004e674:	d005a698 	.word	0xd005a698
d004e678:	448fc000 	.word	0x448fc000
d004e67c:	472c4400 	.word	0x472c4400
d004e680:	3daaaaab 	.word	0x3daaaaab
d004e684:	d0057fc8 	.word	0xd0057fc8
d004e688:	d005a520 	.word	0xd005a520
d004e68c:	d0058fc8 	.word	0xd0058fc8
d004e690:	d00f4b62 	.word	0xd00f4b62
d004e694:	3f7ef9db 	.word	0x3f7ef9db
d004e698:	3b83126f 	.word	0x3b83126f
d004e69c:	2701      	movs	r7, #1
d004e69e:	e52b      	b.n	d004e0f8 <main+0x1038>
d004e6a0:	4b8c      	ldr	r3, [pc, #560]	; (d004e8d4 <main+0x1814>)
d004e6a2:	4f8d      	ldr	r7, [pc, #564]	; (d004e8d8 <main+0x1818>)
d004e6a4:	f8d3 9000 	ldr.w	r9, [r3]
d004e6a8:	4b8c      	ldr	r3, [pc, #560]	; (d004e8dc <main+0x181c>)
d004e6aa:	4e8d      	ldr	r6, [pc, #564]	; (d004e8e0 <main+0x1820>)
d004e6ac:	681a      	ldr	r2, [r3, #0]
d004e6ae:	4b8d      	ldr	r3, [pc, #564]	; (d004e8e4 <main+0x1824>)
d004e6b0:	920c      	str	r2, [sp, #48]	; 0x30
d004e6b2:	681b      	ldr	r3, [r3, #0]
d004e6b4:	9307      	str	r3, [sp, #28]
d004e6b6:	f004 fe7d 	bl	d00533b4 <getRenderTriCount>
d004e6ba:	fba7 3509 	umull	r3, r5, r7, r9
d004e6be:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d004e6c2:	9003      	str	r0, [sp, #12]
d004e6c4:	2014      	movs	r0, #20
d004e6c6:	0c6d      	lsrs	r5, r5, #17
d004e6c8:	9b07      	ldr	r3, [sp, #28]
d004e6ca:	9002      	str	r0, [sp, #8]
d004e6cc:	fb06 9615 	mls	r6, r6, r5, r9
d004e6d0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d004e6d2:	9500      	str	r5, [sp, #0]
d004e6d4:	fb01 f606 	mul.w	r6, r1, r6
d004e6d8:	4983      	ldr	r1, [pc, #524]	; (d004e8e8 <main+0x1828>)
d004e6da:	fba7 0706 	umull	r0, r7, r7, r6
d004e6de:	4883      	ldr	r0, [pc, #524]	; (d004e8ec <main+0x182c>)
d004e6e0:	0c7f      	lsrs	r7, r7, #17
d004e6e2:	9701      	str	r7, [sp, #4]
d004e6e4:	f007 f97a 	bl	d00559dc <siprintf>
d004e6e8:	4b81      	ldr	r3, [pc, #516]	; (d004e8f0 <main+0x1830>)
d004e6ea:	781d      	ldrb	r5, [r3, #0]
d004e6ec:	2d14      	cmp	r5, #20
d004e6ee:	f040 80a2 	bne.w	d004e836 <main+0x1776>
d004e6f2:	9b05      	ldr	r3, [sp, #20]
d004e6f4:	0118      	lsls	r0, r3, #4
d004e6f6:	3001      	adds	r0, #1
d004e6f8:	b2c0      	uxtb	r0, r0
d004e6fa:	e63a      	b.n	d004e372 <main+0x12b2>
d004e6fc:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d004e700:	e790      	b.n	d004e624 <main+0x1564>
d004e702:	4d7c      	ldr	r5, [pc, #496]	; (d004e8f4 <main+0x1834>)
d004e704:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e708:	7be3      	ldrb	r3, [r4, #15]
d004e70a:	6829      	ldr	r1, [r5, #0]
d004e70c:	487a      	ldr	r0, [pc, #488]	; (d004e8f8 <main+0x1838>)
d004e70e:	e4e3      	b.n	d004e0d8 <main+0x1018>
d004e710:	f894 e014 	ldrb.w	lr, [r4, #20]
d004e714:	f894 c015 	ldrb.w	ip, [r4, #21]
d004e718:	7da2      	ldrb	r2, [r4, #22]
d004e71a:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d004e71e:	7de3      	ldrb	r3, [r4, #23]
d004e720:	9107      	str	r1, [sp, #28]
d004e722:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004e726:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e72a:	689b      	ldr	r3, [r3, #8]
d004e72c:	689b      	ldr	r3, [r3, #8]
d004e72e:	4798      	blx	r3
d004e730:	f894 e014 	ldrb.w	lr, [r4, #20]
d004e734:	f894 c015 	ldrb.w	ip, [r4, #21]
d004e738:	4638      	mov	r0, r7
d004e73a:	7da2      	ldrb	r2, [r4, #22]
d004e73c:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d004e740:	7de3      	ldrb	r3, [r4, #23]
d004e742:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004e746:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e74a:	689b      	ldr	r3, [r3, #8]
d004e74c:	685b      	ldr	r3, [r3, #4]
d004e74e:	4798      	blx	r3
d004e750:	9907      	ldr	r1, [sp, #28]
d004e752:	f80b 6c01 	strb.w	r6, [fp, #-1]
d004e756:	e4fd      	b.n	d004e154 <main+0x1094>
d004e758:	f04f 0900 	mov.w	r9, #0
d004e75c:	ee1f 0a10 	vmov	r0, s30
d004e760:	4649      	mov	r1, r9
d004e762:	f003 ff77 	bl	d0052654 <lightEnable>
d004e766:	f7ff bbeb 	b.w	d004df40 <main+0xe80>
d004e76a:	ed9f ba64 	vldr	s22, [pc, #400]	; d004e8fc <main+0x183c>
d004e76e:	eddf ba64 	vldr	s23, [pc, #400]	; d004e900 <main+0x1840>
d004e772:	ed9f ca64 	vldr	s24, [pc, #400]	; d004e904 <main+0x1844>
d004e776:	ed9f da64 	vldr	s26, [pc, #400]	; d004e908 <main+0x1848>
d004e77a:	eddf da64 	vldr	s27, [pc, #400]	; d004e90c <main+0x184c>
d004e77e:	eddf ca64 	vldr	s25, [pc, #400]	; d004e910 <main+0x1850>
d004e782:	ed9f ea64 	vldr	s28, [pc, #400]	; d004e914 <main+0x1854>
d004e786:	ed9f 8a64 	vldr	s16, [pc, #400]	; d004e918 <main+0x1858>
d004e78a:	f7ff bac6 	b.w	d004dd1a <main+0xc5a>
d004e78e:	4b63      	ldr	r3, [pc, #396]	; (d004e91c <main+0x185c>)
d004e790:	4640      	mov	r0, r8
d004e792:	4a63      	ldr	r2, [pc, #396]	; (d004e920 <main+0x1860>)
d004e794:	4963      	ldr	r1, [pc, #396]	; (d004e924 <main+0x1864>)
d004e796:	781b      	ldrb	r3, [r3, #0]
d004e798:	7812      	ldrb	r2, [r2, #0]
d004e79a:	7809      	ldrb	r1, [r1, #0]
d004e79c:	f005 f81e 	bl	d00537dc <drawFakeHorizon>
d004e7a0:	e509      	b.n	d004e1b6 <main+0x10f6>
d004e7a2:	9d0d      	ldr	r5, [sp, #52]	; 0x34
d004e7a4:	2101      	movs	r1, #1
d004e7a6:	4628      	mov	r0, r5
d004e7a8:	f003 ff54 	bl	d0052654 <lightEnable>
d004e7ac:	4628      	mov	r0, r5
d004e7ae:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004e7b2:	f003 ffe5 	bl	d0052780 <lightSetIntensity>
d004e7b6:	eeb0 0a49 	vmov.f32	s0, s18
d004e7ba:	2301      	movs	r3, #1
d004e7bc:	2224      	movs	r2, #36	; 0x24
d004e7be:	212b      	movs	r1, #43	; 0x2b
d004e7c0:	4640      	mov	r0, r8
d004e7c2:	f005 f80b 	bl	d00537dc <drawFakeHorizon>
d004e7c6:	e4fe      	b.n	d004e1c6 <main+0x1106>
d004e7c8:	eef0 0a6a 	vmov.f32	s1, s21
d004e7cc:	ed9f 1a56 	vldr	s2, [pc, #344]	; d004e928 <main+0x1868>
d004e7d0:	ed9f 0a56 	vldr	s0, [pc, #344]	; d004e92c <main+0x186c>
d004e7d4:	f001 fec4 	bl	d0050560 <vec3>
d004e7d8:	ee1e 0a90 	vmov	r0, s29
d004e7dc:	ed8d 0a6a 	vstr	s0, [sp, #424]	; 0x1a8
d004e7e0:	edcd 0a6b 	vstr	s1, [sp, #428]	; 0x1ac
d004e7e4:	ed8d 1a6c 	vstr	s2, [sp, #432]	; 0x1b0
d004e7e8:	f002 fe78 	bl	d00514dc <entitySetPosition>
d004e7ec:	f7ff bb0b 	b.w	d004de06 <main+0xd46>
d004e7f0:	eef1 0a60 	vneg.f32	s1, s1
d004e7f4:	2101      	movs	r1, #1
d004e7f6:	eeb0 1a49 	vmov.f32	s2, s18
d004e7fa:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d004e930 <main+0x1870>
d004e7fe:	4640      	mov	r0, r8
d004e800:	f002 f946 	bl	d0050a90 <cameraTurn>
d004e804:	f7ff bacc 	b.w	d004dda0 <main+0xce0>
d004e808:	2300      	movs	r3, #0
d004e80a:	eeb0 1a6b 	vmov.f32	s2, s23
d004e80e:	eef0 0a49 	vmov.f32	s1, s18
d004e812:	ed9f 0a47 	vldr	s0, [pc, #284]	; d004e930 <main+0x1870>
d004e816:	4640      	mov	r0, r8
d004e818:	9308      	str	r3, [sp, #32]
d004e81a:	f002 fb15 	bl	d0050e48 <cameraMove>
d004e81e:	f7ff bbb0 	b.w	d004df82 <main+0xec2>
d004e822:	eeb0 0a48 	vmov.f32	s0, s16
d004e826:	4641      	mov	r1, r8
d004e828:	a889      	add	r0, sp, #548	; 0x224
d004e82a:	f7fd f8e1 	bl	d004b9f0 <splineRailUpdate>
d004e82e:	e49b      	b.n	d004e168 <main+0x10a8>
d004e830:	2200      	movs	r2, #0
d004e832:	4613      	mov	r3, r2
d004e834:	e51f      	b.n	d004e276 <main+0x11b6>
d004e836:	9b05      	ldr	r3, [sp, #20]
d004e838:	2b00      	cmp	r3, #0
d004e83a:	d033      	beq.n	d004e8a4 <main+0x17e4>
d004e83c:	4d39      	ldr	r5, [pc, #228]	; (d004e924 <main+0x1864>)
d004e83e:	4618      	mov	r0, r3
d004e840:	2313      	movs	r3, #19
d004e842:	2112      	movs	r1, #18
d004e844:	2215      	movs	r2, #21
d004e846:	702b      	strb	r3, [r5, #0]
d004e848:	2319      	movs	r3, #25
d004e84a:	4d35      	ldr	r5, [pc, #212]	; (d004e920 <main+0x1860>)
d004e84c:	7029      	strb	r1, [r5, #0]
d004e84e:	2514      	movs	r5, #20
d004e850:	4932      	ldr	r1, [pc, #200]	; (d004e91c <main+0x185c>)
d004e852:	700a      	strb	r2, [r1, #0]
d004e854:	2200      	movs	r2, #0
d004e856:	9205      	str	r2, [sp, #20]
d004e858:	4a36      	ldr	r2, [pc, #216]	; (d004e934 <main+0x1874>)
d004e85a:	7013      	strb	r3, [r2, #0]
d004e85c:	e589      	b.n	d004e372 <main+0x12b2>
d004e85e:	3b01      	subs	r3, #1
d004e860:	4a35      	ldr	r2, [pc, #212]	; (d004e938 <main+0x1878>)
d004e862:	7013      	strb	r3, [r2, #0]
d004e864:	e4a7      	b.n	d004e1b6 <main+0x10f6>
d004e866:	f006 ffab 	bl	d00557c0 <rand>
d004e86a:	4242      	negs	r2, r0
d004e86c:	f000 0303 	and.w	r3, r0, #3
d004e870:	f002 0203 	and.w	r2, r2, #3
d004e874:	bf58      	it	pl
d004e876:	4253      	negpl	r3, r2
d004e878:	4a30      	ldr	r2, [pc, #192]	; (d004e93c <main+0x187c>)
d004e87a:	3303      	adds	r3, #3
d004e87c:	8013      	strh	r3, [r2, #0]
d004e87e:	f006 ff9f 	bl	d00557c0 <rand>
d004e882:	4b2f      	ldr	r3, [pc, #188]	; (d004e940 <main+0x1880>)
d004e884:	fb83 2300 	smull	r2, r3, r3, r0
d004e888:	17c2      	asrs	r2, r0, #31
d004e88a:	4403      	add	r3, r0
d004e88c:	ebc2 12a3 	rsb	r2, r2, r3, asr #6
d004e890:	eb02 03c2 	add.w	r3, r2, r2, lsl #3
d004e894:	ebc2 02c3 	rsb	r2, r2, r3, lsl #3
d004e898:	1a83      	subs	r3, r0, r2
d004e89a:	4a2a      	ldr	r2, [pc, #168]	; (d004e944 <main+0x1884>)
d004e89c:	3314      	adds	r3, #20
d004e89e:	8013      	strh	r3, [r2, #0]
d004e8a0:	f7ff bbb6 	b.w	d004e010 <main+0xf50>
d004e8a4:	2009      	movs	r0, #9
d004e8a6:	4d1f      	ldr	r5, [pc, #124]	; (d004e924 <main+0x1864>)
d004e8a8:	213b      	movs	r1, #59	; 0x3b
d004e8aa:	222b      	movs	r2, #43	; 0x2b
d004e8ac:	7028      	strb	r0, [r5, #0]
d004e8ae:	2001      	movs	r0, #1
d004e8b0:	2302      	movs	r3, #2
d004e8b2:	2514      	movs	r5, #20
d004e8b4:	9005      	str	r0, [sp, #20]
d004e8b6:	481a      	ldr	r0, [pc, #104]	; (d004e920 <main+0x1860>)
d004e8b8:	7001      	strb	r1, [r0, #0]
d004e8ba:	2011      	movs	r0, #17
d004e8bc:	4917      	ldr	r1, [pc, #92]	; (d004e91c <main+0x185c>)
d004e8be:	700a      	strb	r2, [r1, #0]
d004e8c0:	4a1c      	ldr	r2, [pc, #112]	; (d004e934 <main+0x1874>)
d004e8c2:	7013      	strb	r3, [r2, #0]
d004e8c4:	e555      	b.n	d004e372 <main+0x12b2>
d004e8c6:	2332      	movs	r3, #50	; 0x32
d004e8c8:	fb95 f5f3 	sdiv	r5, r5, r3
d004e8cc:	fa1f f985 	uxth.w	r9, r5
d004e8d0:	b22d      	sxth	r5, r5
d004e8d2:	e660      	b.n	d004e596 <main+0x14d6>
d004e8d4:	d005a6ac 	.word	0xd005a6ac
d004e8d8:	45e7b273 	.word	0x45e7b273
d004e8dc:	d005a51c 	.word	0xd005a51c
d004e8e0:	00075300 	.word	0x00075300
d004e8e4:	d005a510 	.word	0xd005a510
d004e8e8:	d005763c 	.word	0xd005763c
d004e8ec:	d005a3d4 	.word	0xd005a3d4
d004e8f0:	d005a68c 	.word	0xd005a68c
d004e8f4:	d00f4ae0 	.word	0xd00f4ae0
d004e8f8:	d00f4ac0 	.word	0xd00f4ac0
d004e8fc:	40d33334 	.word	0x40d33334
d004e900:	42f20000 	.word	0x42f20000
d004e904:	3f8ccccd 	.word	0x3f8ccccd
d004e908:	4312770a 	.word	0x4312770a
d004e90c:	3f28f5c3 	.word	0x3f28f5c3
d004e910:	4215999a 	.word	0x4215999a
d004e914:	bc872b02 	.word	0xbc872b02
d004e918:	3f0ccccd 	.word	0x3f0ccccd
d004e91c:	d00f4abc 	.word	0xd00f4abc
d004e920:	d00f4a00 	.word	0xd00f4a00
d004e924:	d00f4a84 	.word	0xd00f4a84
d004e928:	c3c80000 	.word	0xc3c80000
d004e92c:	c3070000 	.word	0xc3070000
d004e930:	00000000 	.word	0x00000000
d004e934:	d00f4a64 	.word	0xd00f4a64
d004e938:	d005a3cc 	.word	0xd005a3cc
d004e93c:	d005a6b4 	.word	0xd005a6b4
d004e940:	e6c2b449 	.word	0xe6c2b449
d004e944:	d005a6b6 	.word	0xd005a6b6

d004e948 <meshSetDefaultMaterial>:
d004e948:	b148      	cbz	r0, d004e95e <meshSetDefaultMaterial+0x16>
d004e94a:	2300      	movs	r3, #0
d004e94c:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d004e950:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d004e954:	6203      	str	r3, [r0, #32]
d004e956:	6241      	str	r1, [r0, #36]	; 0x24
d004e958:	62c2      	str	r2, [r0, #44]	; 0x2c
d004e95a:	6303      	str	r3, [r0, #48]	; 0x30
d004e95c:	6283      	str	r3, [r0, #40]	; 0x28
d004e95e:	4770      	bx	lr

d004e960 <meshSetMaterial>:
d004e960:	b148      	cbz	r0, d004e976 <meshSetMaterial+0x16>
d004e962:	ed80 0a08 	vstr	s0, [r0, #32]
d004e966:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d004e96a:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d004e96e:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d004e972:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d004e976:	4770      	bx	lr

d004e978 <initDepthBandMem>:
d004e978:	b510      	push	{r4, lr}
d004e97a:	4c0c      	ldr	r4, [pc, #48]	; (d004e9ac <initDepthBandMem+0x34>)
d004e97c:	6823      	ldr	r3, [r4, #0]
d004e97e:	b103      	cbz	r3, d004e982 <initDepthBandMem+0xa>
d004e980:	bd10      	pop	{r4, pc}
d004e982:	4a0b      	ldr	r2, [pc, #44]	; (d004e9b0 <initDepthBandMem+0x38>)
d004e984:	7813      	ldrb	r3, [r2, #0]
d004e986:	7850      	ldrb	r0, [r2, #1]
d004e988:	7891      	ldrb	r1, [r2, #2]
d004e98a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004e98e:	78d2      	ldrb	r2, [r2, #3]
d004e990:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004e994:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004e998:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e99a:	4798      	blx	r3
d004e99c:	2800      	cmp	r0, #0
d004e99e:	d0ef      	beq.n	d004e980 <initDepthBandMem+0x8>
d004e9a0:	301f      	adds	r0, #31
d004e9a2:	f020 001f 	bic.w	r0, r0, #31
d004e9a6:	6020      	str	r0, [r4, #0]
d004e9a8:	bd10      	pop	{r4, pc}
d004e9aa:	bf00      	nop
d004e9ac:	d005a6c4 	.word	0xd005a6c4
d004e9b0:	2001f000 	.word	0x2001f000

d004e9b4 <beginDepthBand>:
d004e9b4:	f100 031f 	add.w	r3, r0, #31
d004e9b8:	4a0d      	ldr	r2, [pc, #52]	; (d004e9f0 <beginDepthBand+0x3c>)
d004e9ba:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d004e9be:	6010      	str	r0, [r2, #0]
d004e9c0:	da08      	bge.n	d004e9d4 <beginDepthBand+0x20>
d004e9c2:	490c      	ldr	r1, [pc, #48]	; (d004e9f4 <beginDepthBand+0x40>)
d004e9c4:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d004e9c8:	600b      	str	r3, [r1, #0]
d004e9ca:	21ff      	movs	r1, #255	; 0xff
d004e9cc:	4b0a      	ldr	r3, [pc, #40]	; (d004e9f8 <beginDepthBand+0x44>)
d004e9ce:	6818      	ldr	r0, [r3, #0]
d004e9d0:	f006 be44 	b.w	d005565c <memset>
d004e9d4:	4b07      	ldr	r3, [pc, #28]	; (d004e9f4 <beginDepthBand+0x40>)
d004e9d6:	f240 123f 	movw	r2, #319	; 0x13f
d004e9da:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d004e9de:	21ff      	movs	r1, #255	; 0xff
d004e9e0:	601a      	str	r2, [r3, #0]
d004e9e2:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d004e9e6:	4b04      	ldr	r3, [pc, #16]	; (d004e9f8 <beginDepthBand+0x44>)
d004e9e8:	0182      	lsls	r2, r0, #6
d004e9ea:	6818      	ldr	r0, [r3, #0]
d004e9ec:	f006 be36 	b.w	d005565c <memset>
d004e9f0:	d005a6bc 	.word	0xd005a6bc
d004e9f4:	d005a6c0 	.word	0xd005a6c0
d004e9f8:	d005a6c4 	.word	0xd005a6c4

d004e9fc <set3DRenderBuffer>:
d004e9fc:	4b01      	ldr	r3, [pc, #4]	; (d004ea04 <set3DRenderBuffer+0x8>)
d004e9fe:	6018      	str	r0, [r3, #0]
d004ea00:	4770      	bx	lr
d004ea02:	bf00      	nop
d004ea04:	d00f4b90 	.word	0xd00f4b90

d004ea08 <putPixel>:
d004ea08:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d004ea0c:	d209      	bcs.n	d004ea22 <putPixel+0x1a>
d004ea0e:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d004ea12:	d206      	bcs.n	d004ea22 <putPixel+0x1a>
d004ea14:	4b03      	ldr	r3, [pc, #12]	; (d004ea24 <putPixel+0x1c>)
d004ea16:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004ea1a:	681b      	ldr	r3, [r3, #0]
d004ea1c:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d004ea20:	5442      	strb	r2, [r0, r1]
d004ea22:	4770      	bx	lr
d004ea24:	d00f4b90 	.word	0xd00f4b90

d004ea28 <drawLine>:
d004ea28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004ea2c:	b085      	sub	sp, #20
d004ea2e:	eba2 0c00 	sub.w	ip, r2, r0
d004ea32:	eba3 0901 	sub.w	r9, r3, r1
d004ea36:	f240 1edf 	movw	lr, #479	; 0x1df
d004ea3a:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d004ea3e:	f240 1a3f 	movw	sl, #319	; 0x13f
d004ea42:	f8df b07c 	ldr.w	fp, [pc, #124]	; d004eac0 <drawLine+0x98>
d004ea46:	9401      	str	r4, [sp, #4]
d004ea48:	4282      	cmp	r2, r0
d004ea4a:	bfcc      	ite	gt
d004ea4c:	2401      	movgt	r4, #1
d004ea4e:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004ea52:	9402      	str	r4, [sp, #8]
d004ea54:	428b      	cmp	r3, r1
d004ea56:	bfcc      	ite	gt
d004ea58:	2401      	movgt	r4, #1
d004ea5a:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004ea5e:	f1bc 0f00 	cmp.w	ip, #0
d004ea62:	9403      	str	r4, [sp, #12]
d004ea64:	bfb8      	it	lt
d004ea66:	f1cc 0c00 	rsblt	ip, ip, #0
d004ea6a:	f1b9 0f00 	cmp.w	r9, #0
d004ea6e:	bfb8      	it	lt
d004ea70:	f1c9 0900 	rsblt	r9, r9, #0
d004ea74:	ebac 0409 	sub.w	r4, ip, r9
d004ea78:	f1c9 0800 	rsb	r8, r9, #0
d004ea7c:	4570      	cmp	r0, lr
d004ea7e:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d004ea82:	ea4f 0644 	mov.w	r6, r4, lsl #1
d004ea86:	d807      	bhi.n	d004ea98 <drawLine+0x70>
d004ea88:	4551      	cmp	r1, sl
d004ea8a:	d805      	bhi.n	d004ea98 <drawLine+0x70>
d004ea8c:	f8db 5000 	ldr.w	r5, [fp]
d004ea90:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d004ea94:	9f01      	ldr	r7, [sp, #4]
d004ea96:	546f      	strb	r7, [r5, r1]
d004ea98:	4290      	cmp	r0, r2
d004ea9a:	d101      	bne.n	d004eaa0 <drawLine+0x78>
d004ea9c:	4299      	cmp	r1, r3
d004ea9e:	d00c      	beq.n	d004eaba <drawLine+0x92>
d004eaa0:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d004eaa4:	dc05      	bgt.n	d004eab2 <drawLine+0x8a>
d004eaa6:	9d02      	ldr	r5, [sp, #8]
d004eaa8:	45b4      	cmp	ip, r6
d004eaaa:	eba4 0409 	sub.w	r4, r4, r9
d004eaae:	4428      	add	r0, r5
d004eab0:	dbe4      	blt.n	d004ea7c <drawLine+0x54>
d004eab2:	9d03      	ldr	r5, [sp, #12]
d004eab4:	4464      	add	r4, ip
d004eab6:	4429      	add	r1, r5
d004eab8:	e7e0      	b.n	d004ea7c <drawLine+0x54>
d004eaba:	b005      	add	sp, #20
d004eabc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004eac0:	d00f4b90 	.word	0xd00f4b90

d004eac4 <fillTriangleDitherBayer>:
d004eac4:	eddf 7ac9 	vldr	s15, [pc, #804]	; d004edec <fillTriangleDitherBayer+0x328>
d004eac8:	eef4 0ae7 	vcmpe.f32	s1, s15
d004eacc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004ead0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ead4:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004ead8:	ed2d 8b10 	vpush	{d8-d15}
d004eadc:	b09b      	sub	sp, #108	; 0x6c
d004eade:	9202      	str	r2, [sp, #8]
d004eae0:	bf94      	ite	ls
d004eae2:	2201      	movls	r2, #1
d004eae4:	2200      	movhi	r2, #0
d004eae6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eaea:	9303      	str	r3, [sp, #12]
d004eaec:	f8bd 40d8 	ldrh.w	r4, [sp, #216]	; 0xd8
d004eaf0:	bf98      	it	ls
d004eaf2:	f042 0201 	orrls.w	r2, r2, #1
d004eaf6:	f89d 30e4 	ldrb.w	r3, [sp, #228]	; 0xe4
d004eafa:	e9cd 0100 	strd	r0, r1, [sp]
d004eafe:	f8bd 00dc 	ldrh.w	r0, [sp, #220]	; 0xdc
d004eb02:	f8bd 10e0 	ldrh.w	r1, [sp, #224]	; 0xe0
d004eb06:	2a00      	cmp	r2, #0
d004eb08:	f040 81d8 	bne.w	d004eebc <fillTriangleDitherBayer+0x3f8>
d004eb0c:	eeb4 0a67 	vcmp.f32	s0, s15
d004eb10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb14:	f240 81d2 	bls.w	d004eebc <fillTriangleDitherBayer+0x3f8>
d004eb18:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004eb1c:	eddf 7aac 	vldr	s15, [pc, #688]	; d004edd0 <fillTriangleDitherBayer+0x30c>
d004eb20:	eef1 5a04 	vmov.f32	s11, #20	; 0x40a00000  5.0
d004eb24:	fec1 1aa7 	vmaxnm.f32	s3, s3, s15
d004eb28:	ee07 4a90 	vmov	s15, r4
d004eb2c:	eec7 2a00 	vdiv.f32	s5, s14, s0
d004eb30:	fec1 5ae5 	vminnm.f32	s11, s3, s11
d004eb34:	ee87 3a01 	vdiv.f32	s6, s14, s2
d004eb38:	eec7 1a20 	vdiv.f32	s3, s14, s1
d004eb3c:	eebd 7ae5 	vcvt.s32.f32	s14, s11
d004eb40:	eef8 7a67 	vcvt.f32.u32	s15, s15
d004eb44:	ee17 2a10 	vmov	r2, s14
d004eb48:	ee07 0a10 	vmov	s14, r0
d004eb4c:	ee67 7aa2 	vmul.f32	s15, s15, s5
d004eb50:	eef8 6a47 	vcvt.f32.u32	s13, s14
d004eb54:	ee07 1a10 	vmov	s14, r1
d004eb58:	1c51      	adds	r1, r2, #1
d004eb5a:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004eb5e:	2905      	cmp	r1, #5
d004eb60:	bfa8      	it	ge
d004eb62:	2105      	movge	r1, #5
d004eb64:	2a04      	cmp	r2, #4
d004eb66:	ee66 6aa1 	vmul.f32	s13, s13, s3
d004eb6a:	ee27 1a03 	vmul.f32	s2, s14, s6
d004eb6e:	f300 85ed 	bgt.w	d004f74c <fillTriangleDitherBayer+0xc88>
d004eb72:	f003 030f 	and.w	r3, r3, #15
d004eb76:	2a03      	cmp	r2, #3
d004eb78:	f103 0320 	add.w	r3, r3, #32
d004eb7c:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004eb80:	fa5f fb80 	uxtb.w	fp, r0
d004eb84:	f300 85e4 	bgt.w	d004f750 <fillTriangleDitherBayer+0xc8c>
d004eb88:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004eb8c:	b2db      	uxtb	r3, r3
d004eb8e:	9304      	str	r3, [sp, #16]
d004eb90:	ed9d 7a01 	vldr	s14, [sp, #4]
d004eb94:	ed9d 5a02 	vldr	s10, [sp, #8]
d004eb98:	eeb8 6ac7 	vcvt.f32.s32	s12, s14
d004eb9c:	ed9d 7a03 	vldr	s14, [sp, #12]
d004eba0:	eeb8 4ac5 	vcvt.f32.s32	s8, s10
d004eba4:	ed9d 5a34 	vldr	s10, [sp, #208]	; 0xd0
d004eba8:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004ebac:	ed9d 7a00 	vldr	s14, [sp]
d004ebb0:	eef8 0ac5 	vcvt.f32.s32	s1, s10
d004ebb4:	ed9d 5a35 	vldr	s10, [sp, #212]	; 0xd4
d004ebb8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004ebbc:	eeb4 6ae3 	vcmpe.f32	s12, s7
d004ebc0:	eef8 4ac5 	vcvt.f32.s32	s9, s10
d004ebc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ebc8:	f300 817d 	bgt.w	d004eec6 <fillTriangleDitherBayer+0x402>
d004ebcc:	eeb4 6ae4 	vcmpe.f32	s12, s9
d004ebd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ebd4:	f300 81cb 	bgt.w	d004ef6e <fillTriangleDitherBayer+0x4aa>
d004ebd8:	eef4 3ae4 	vcmpe.f32	s7, s9
d004ebdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ebe0:	dd17      	ble.n	d004ec12 <fillTriangleDitherBayer+0x14e>
d004ebe2:	eeb0 8a66 	vmov.f32	s16, s13
d004ebe6:	eeb0 0a61 	vmov.f32	s0, s3
d004ebea:	eeb0 2a63 	vmov.f32	s4, s7
d004ebee:	eeb0 5a44 	vmov.f32	s10, s8
d004ebf2:	eef0 6a41 	vmov.f32	s13, s2
d004ebf6:	eef0 1a43 	vmov.f32	s3, s6
d004ebfa:	eef0 3a64 	vmov.f32	s7, s9
d004ebfe:	eeb0 4a60 	vmov.f32	s8, s1
d004ec02:	eeb0 1a48 	vmov.f32	s2, s16
d004ec06:	eeb0 3a40 	vmov.f32	s6, s0
d004ec0a:	eef0 4a42 	vmov.f32	s9, s4
d004ec0e:	eef0 0a45 	vmov.f32	s1, s10
d004ec12:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d004ec16:	ee34 2a85 	vadd.f32	s4, s9, s10
d004ec1a:	ee36 5a05 	vadd.f32	s10, s12, s10
d004ec1e:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d004ec22:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004ec26:	ee12 1a10 	vmov	r1, s4
d004ec2a:	ee15 3a10 	vmov	r3, s10
d004ec2e:	428b      	cmp	r3, r1
d004ec30:	f000 8144 	beq.w	d004eebc <fillTriangleDitherBayer+0x3f8>
d004ec34:	ee34 5ac6 	vsub.f32	s10, s9, s12
d004ec38:	ed9f 2a6c 	vldr	s4, [pc, #432]	; d004edec <fillTriangleDitherBayer+0x328>
d004ec3c:	eeb4 5ac2 	vcmpe.f32	s10, s4
d004ec40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec44:	f240 813a 	bls.w	d004eebc <fillTriangleDitherBayer+0x3f8>
d004ec48:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004ec4c:	ee73 9ac6 	vsub.f32	s19, s7, s12
d004ec50:	ee30 0ac7 	vsub.f32	s0, s1, s14
d004ec54:	ee8a 9a05 	vdiv.f32	s18, s20, s10
d004ec58:	eef4 9ac2 	vcmpe.f32	s19, s4
d004ec5c:	ee33 8a62 	vsub.f32	s16, s6, s5
d004ec60:	ee71 8a67 	vsub.f32	s17, s2, s15
d004ec64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec68:	ee20 0a09 	vmul.f32	s0, s0, s18
d004ec6c:	ee28 8a09 	vmul.f32	s16, s16, s18
d004ec70:	ee68 8a89 	vmul.f32	s17, s17, s18
d004ec74:	f300 8145 	bgt.w	d004ef02 <fillTriangleDitherBayer+0x43e>
d004ec78:	ee05 2a10 	vmov	s10, r2
d004ec7c:	ee34 9ae3 	vsub.f32	s18, s9, s7
d004ec80:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004ec84:	eeb4 9ac2 	vcmpe.f32	s18, s4
d004ec88:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d004ec8c:	ee75 5ac5 	vsub.f32	s11, s11, s10
d004ec90:	eeb0 5a65 	vmov.f32	s10, s11
d004ec94:	eebe 5ace 	vcvt.s32.f32	s10, s10, #4
d004ec98:	ee15 3a10 	vmov	r3, s10
d004ec9c:	f383 0204 	usat	r2, #4, r3
d004eca0:	9207      	str	r2, [sp, #28]
d004eca2:	9a04      	ldr	r2, [sp, #16]
d004eca4:	455a      	cmp	r2, fp
d004eca6:	bf18      	it	ne
d004eca8:	2b00      	cmpne	r3, #0
d004ecaa:	bfd4      	ite	le
d004ecac:	2301      	movle	r3, #1
d004ecae:	2300      	movgt	r3, #0
d004ecb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ecb4:	9302      	str	r3, [sp, #8]
d004ecb6:	f340 8101 	ble.w	d004eebc <fillTriangleDitherBayer+0x3f8>
d004ecba:	eddf fa45 	vldr	s31, [pc, #276]	; d004edd0 <fillTriangleDitherBayer+0x30c>
d004ecbe:	eef0 5a49 	vmov.f32	s11, s18
d004ecc2:	eeb0 ba6f 	vmov.f32	s22, s31
d004ecc6:	eef0 da6f 	vmov.f32	s27, s31
d004ecca:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d004ecce:	ed9f 5a47 	vldr	s10, [pc, #284]	; d004edec <fillTriangleDitherBayer+0x328>
d004ecd2:	ee70 0ac4 	vsub.f32	s1, s1, s8
d004ecd6:	ee33 3a61 	vsub.f32	s6, s6, s3
d004ecda:	eec2 5a25 	vdiv.f32	s11, s4, s11
d004ecde:	ee31 1a66 	vsub.f32	s2, s2, s13
d004ece2:	eef4 9ac5 	vcmpe.f32	s19, s10
d004ece6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ecea:	ee20 2aa5 	vmul.f32	s4, s1, s11
d004ecee:	ee23 3a25 	vmul.f32	s6, s6, s11
d004ecf2:	ee61 5a25 	vmul.f32	s11, s2, s11
d004ecf6:	ed8d 2a12 	vstr	s4, [sp, #72]	; 0x48
d004ecfa:	ed8d 3a13 	vstr	s6, [sp, #76]	; 0x4c
d004ecfe:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d004ed02:	f300 82e1 	bgt.w	d004f2c8 <fillTriangleDitherBayer+0x804>
d004ed06:	eefd 5ae3 	vcvt.s32.f32	s11, s7
d004ed0a:	4a32      	ldr	r2, [pc, #200]	; (d004edd4 <fillTriangleDitherBayer+0x310>)
d004ed0c:	4b32      	ldr	r3, [pc, #200]	; (d004edd8 <fillTriangleDitherBayer+0x314>)
d004ed0e:	6812      	ldr	r2, [r2, #0]
d004ed10:	edcd 5a0b 	vstr	s11, [sp, #44]	; 0x2c
d004ed14:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ed18:	681b      	ldr	r3, [r3, #0]
d004ed1a:	920c      	str	r2, [sp, #48]	; 0x30
d004ed1c:	edcd 5a10 	vstr	s11, [sp, #64]	; 0x40
d004ed20:	930f      	str	r3, [sp, #60]	; 0x3c
d004ed22:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d004ed26:	eef4 3ae5 	vcmpe.f32	s7, s11
d004ed2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed2e:	dd02      	ble.n	d004ed36 <fillTriangleDitherBayer+0x272>
d004ed30:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004ed32:	3301      	adds	r3, #1
d004ed34:	930b      	str	r3, [sp, #44]	; 0x2c
d004ed36:	eefd 5ae4 	vcvt.s32.f32	s11, s9
d004ed3a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004ed3c:	980c      	ldr	r0, [sp, #48]	; 0x30
d004ed3e:	ee15 2a90 	vmov	r2, s11
d004ed42:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ed46:	eef4 4ae5 	vcmpe.f32	s9, s11
d004ed4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed4e:	bfd8      	it	le
d004ed50:	f102 32ff 	addle.w	r2, r2, #4294967295	; 0xffffffff
d004ed54:	4293      	cmp	r3, r2
d004ed56:	bfa8      	it	ge
d004ed58:	4613      	movge	r3, r2
d004ed5a:	461a      	mov	r2, r3
d004ed5c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004ed5e:	4283      	cmp	r3, r0
d004ed60:	bfb8      	it	lt
d004ed62:	4603      	movlt	r3, r0
d004ed64:	429a      	cmp	r2, r3
d004ed66:	9305      	str	r3, [sp, #20]
d004ed68:	f2c0 80a8 	blt.w	d004eebc <fillTriangleDitherBayer+0x3f8>
d004ed6c:	ee05 3a90 	vmov	s11, r3
d004ed70:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d004ed74:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004ed78:	4918      	ldr	r1, [pc, #96]	; (d004eddc <fillTriangleDitherBayer+0x318>)
d004ed7a:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ed7e:	ed9d ca12 	vldr	s24, [sp, #72]	; 0x48
d004ed82:	015b      	lsls	r3, r3, #5
d004ed84:	eddd ca13 	vldr	s25, [sp, #76]	; 0x4c
d004ed88:	eddd ba11 	vldr	s23, [sp, #68]	; 0x44
d004ed8c:	ee75 5a85 	vadd.f32	s11, s11, s10
d004ed90:	930d      	str	r3, [sp, #52]	; 0x34
d004ed92:	1c53      	adds	r3, r2, #1
d004ed94:	eddf 0a15 	vldr	s1, [pc, #84]	; d004edec <fillTriangleDitherBayer+0x328>
d004ed98:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004ede0 <fillTriangleDitherBayer+0x31c>
d004ed9c:	ee35 6ac6 	vsub.f32	s12, s11, s12
d004eda0:	9309      	str	r3, [sp, #36]	; 0x24
d004eda2:	ee75 3ae3 	vsub.f32	s7, s11, s7
d004eda6:	680b      	ldr	r3, [r1, #0]
d004eda8:	ed9f 9a09 	vldr	s18, [pc, #36]	; d004edd0 <fillTriangleDitherBayer+0x30c>
d004edac:	eea0 7a06 	vfma.f32	s14, s0, s12
d004edb0:	eddf 9a0c 	vldr	s19, [pc, #48]	; d004ede4 <fillTriangleDitherBayer+0x320>
d004edb4:	eee8 2a06 	vfma.f32	s5, s16, s12
d004edb8:	ed9f aa0b 	vldr	s20, [pc, #44]	; d004ede8 <fillTriangleDitherBayer+0x324>
d004edbc:	eee8 7a86 	vfma.f32	s15, s17, s12
d004edc0:	930c      	str	r3, [sp, #48]	; 0x30
d004edc2:	eea3 4a8c 	vfma.f32	s8, s7, s24
d004edc6:	eeec 1aa3 	vfma.f32	s3, s25, s7
d004edca:	eeeb 6aa3 	vfma.f32	s13, s23, s7
d004edce:	e051      	b.n	d004ee74 <fillTriangleDitherBayer+0x3b0>
d004edd0:	00000000 	.word	0x00000000
d004edd4:	d005a6bc 	.word	0xd005a6bc
d004edd8:	d005a6c0 	.word	0xd005a6c0
d004eddc:	d005a6c4 	.word	0xd005a6c4
d004ede0:	33d6bf95 	.word	0x33d6bf95
d004ede4:	477fff00 	.word	0x477fff00
d004ede8:	43800000 	.word	0x43800000
d004edec:	38d1b717 	.word	0x38d1b717
d004edf0:	eeb0 2a67 	vmov.f32	s4, s15
d004edf4:	eeb0 3a62 	vmov.f32	s6, s5
d004edf8:	eeb0 6a47 	vmov.f32	s12, s14
d004edfc:	eef0 4a66 	vmov.f32	s9, s13
d004ee00:	eef0 5a61 	vmov.f32	s11, s3
d004ee04:	eeb0 5a44 	vmov.f32	s10, s8
d004ee08:	eefd 3ac5 	vcvt.s32.f32	s7, s10
d004ee0c:	f240 12df 	movw	r2, #479	; 0x1df
d004ee10:	ee13 1a90 	vmov	r1, s7
d004ee14:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004ee18:	eeb4 5ae3 	vcmpe.f32	s10, s7
d004ee1c:	eefd 3ac6 	vcvt.s32.f32	s7, s12
d004ee20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee24:	ee13 3a90 	vmov	r3, s7
d004ee28:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004ee2c:	bfc8      	it	gt
d004ee2e:	3101      	addgt	r1, #1
d004ee30:	eeb4 6ae3 	vcmpe.f32	s12, s7
d004ee34:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004ee38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee3c:	bfd8      	it	le
d004ee3e:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004ee42:	4293      	cmp	r3, r2
d004ee44:	bfa8      	it	ge
d004ee46:	4613      	movge	r3, r2
d004ee48:	428b      	cmp	r3, r1
d004ee4a:	469a      	mov	sl, r3
d004ee4c:	f280 80c1 	bge.w	d004efd2 <fillTriangleDitherBayer+0x50e>
d004ee50:	9b05      	ldr	r3, [sp, #20]
d004ee52:	ee37 7a00 	vadd.f32	s14, s14, s0
d004ee56:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004ee58:	ee72 2a88 	vadd.f32	s5, s5, s16
d004ee5c:	3301      	adds	r3, #1
d004ee5e:	ee77 7aa8 	vadd.f32	s15, s15, s17
d004ee62:	ee34 4a0c 	vadd.f32	s8, s8, s24
d004ee66:	4293      	cmp	r3, r2
d004ee68:	ee71 1aac 	vadd.f32	s3, s3, s25
d004ee6c:	ee76 6aab 	vadd.f32	s13, s13, s23
d004ee70:	9305      	str	r3, [sp, #20]
d004ee72:	d023      	beq.n	d004eebc <fillTriangleDitherBayer+0x3f8>
d004ee74:	eeb4 7ac4 	vcmpe.f32	s14, s8
d004ee78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee7c:	dcb8      	bgt.n	d004edf0 <fillTriangleDitherBayer+0x32c>
d004ee7e:	eeb0 2a66 	vmov.f32	s4, s13
d004ee82:	eeb0 3a61 	vmov.f32	s6, s3
d004ee86:	eeb0 6a44 	vmov.f32	s12, s8
d004ee8a:	eef0 4a67 	vmov.f32	s9, s15
d004ee8e:	eef0 5a62 	vmov.f32	s11, s5
d004ee92:	eeb0 5a47 	vmov.f32	s10, s14
d004ee96:	e7b7      	b.n	d004ee08 <fillTriangleDitherBayer+0x344>
d004ee98:	ed9d 4a16 	vldr	s8, [sp, #88]	; 0x58
d004ee9c:	ed9d 6a17 	vldr	s12, [sp, #92]	; 0x5c
d004eea0:	eddd 6a18 	vldr	s13, [sp, #96]	; 0x60
d004eea4:	ed9d 7a19 	vldr	s14, [sp, #100]	; 0x64
d004eea8:	ed5f 5a30 	vldr	s11, [pc, #-192]	; d004edec <fillTriangleDitherBayer+0x328>
d004eeac:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d004eeb0:	eeb4 5ae5 	vcmpe.f32	s10, s11
d004eeb4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eeb8:	f73f af33 	bgt.w	d004ed22 <fillTriangleDitherBayer+0x25e>
d004eebc:	b01b      	add	sp, #108	; 0x6c
d004eebe:	ecbd 8b10 	vpop	{d8-d15}
d004eec2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004eec6:	eef4 3ae4 	vcmpe.f32	s7, s9
d004eeca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eece:	dd67      	ble.n	d004efa0 <fillTriangleDitherBayer+0x4dc>
d004eed0:	eeb0 8a41 	vmov.f32	s16, s2
d004eed4:	eeb0 0a43 	vmov.f32	s0, s6
d004eed8:	eeb0 2a64 	vmov.f32	s4, s9
d004eedc:	eeb0 5a60 	vmov.f32	s10, s1
d004eee0:	eeb0 1a67 	vmov.f32	s2, s15
d004eee4:	eeb0 3a62 	vmov.f32	s6, s5
d004eee8:	eef0 4a46 	vmov.f32	s9, s12
d004eeec:	eef0 0a47 	vmov.f32	s1, s14
d004eef0:	eef0 7a48 	vmov.f32	s15, s16
d004eef4:	eef0 2a40 	vmov.f32	s5, s0
d004eef8:	eeb0 6a42 	vmov.f32	s12, s4
d004eefc:	eeb0 7a45 	vmov.f32	s14, s10
d004ef00:	e687      	b.n	d004ec12 <fillTriangleDitherBayer+0x14e>
d004ef02:	ee05 2a10 	vmov	s10, r2
d004ef06:	ee8a 9a29 	vdiv.f32	s18, s20, s19
d004ef0a:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004ef0e:	ee74 bae3 	vsub.f32	s23, s9, s7
d004ef12:	ee74 aa47 	vsub.f32	s21, s8, s14
d004ef16:	ee75 5ac5 	vsub.f32	s11, s11, s10
d004ef1a:	ee31 aae2 	vsub.f32	s20, s3, s5
d004ef1e:	edcd ba0a 	vstr	s23, [sp, #40]	; 0x28
d004ef22:	eef4 bac2 	vcmpe.f32	s23, s4
d004ef26:	eeb0 ba65 	vmov.f32	s22, s11
d004ef2a:	ee36 5ae7 	vsub.f32	s10, s13, s15
d004ef2e:	eebe bace 	vcvt.s32.f32	s22, s22, #4
d004ef32:	ee6a 5a89 	vmul.f32	s11, s21, s18
d004ef36:	ee1b 3a10 	vmov	r3, s22
d004ef3a:	ee65 fa09 	vmul.f32	s31, s10, s18
d004ef3e:	f383 0204 	usat	r2, #4, r3
d004ef42:	eef0 da65 	vmov.f32	s27, s11
d004ef46:	ee6a 5a09 	vmul.f32	s11, s20, s18
d004ef4a:	9207      	str	r2, [sp, #28]
d004ef4c:	9a04      	ldr	r2, [sp, #16]
d004ef4e:	eeb0 ba65 	vmov.f32	s22, s11
d004ef52:	455a      	cmp	r2, fp
d004ef54:	bf18      	it	ne
d004ef56:	2b00      	cmpne	r3, #0
d004ef58:	bfd4      	ite	le
d004ef5a:	2301      	movle	r3, #1
d004ef5c:	2300      	movgt	r3, #0
d004ef5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ef62:	9302      	str	r3, [sp, #8]
d004ef64:	f340 81a8 	ble.w	d004f2b8 <fillTriangleDitherBayer+0x7f4>
d004ef68:	eef0 5a6b 	vmov.f32	s11, s23
d004ef6c:	e6ad      	b.n	d004ecca <fillTriangleDitherBayer+0x206>
d004ef6e:	eeb0 8a67 	vmov.f32	s16, s15
d004ef72:	eeb0 0a62 	vmov.f32	s0, s5
d004ef76:	eeb0 2a46 	vmov.f32	s4, s12
d004ef7a:	eeb0 5a47 	vmov.f32	s10, s14
d004ef7e:	eef0 7a41 	vmov.f32	s15, s2
d004ef82:	eef0 2a43 	vmov.f32	s5, s6
d004ef86:	eeb0 6a64 	vmov.f32	s12, s9
d004ef8a:	eeb0 7a60 	vmov.f32	s14, s1
d004ef8e:	eeb0 1a48 	vmov.f32	s2, s16
d004ef92:	eeb0 3a40 	vmov.f32	s6, s0
d004ef96:	eef0 4a42 	vmov.f32	s9, s4
d004ef9a:	eef0 0a45 	vmov.f32	s1, s10
d004ef9e:	e61b      	b.n	d004ebd8 <fillTriangleDitherBayer+0x114>
d004efa0:	eeb0 8a67 	vmov.f32	s16, s15
d004efa4:	eeb0 0a62 	vmov.f32	s0, s5
d004efa8:	eeb0 2a46 	vmov.f32	s4, s12
d004efac:	eeb0 5a47 	vmov.f32	s10, s14
d004efb0:	eef0 7a66 	vmov.f32	s15, s13
d004efb4:	eef0 2a61 	vmov.f32	s5, s3
d004efb8:	eeb0 6a63 	vmov.f32	s12, s7
d004efbc:	eeb0 7a44 	vmov.f32	s14, s8
d004efc0:	eef0 6a48 	vmov.f32	s13, s16
d004efc4:	eef0 1a40 	vmov.f32	s3, s0
d004efc8:	eef0 3a42 	vmov.f32	s7, s4
d004efcc:	eeb0 4a45 	vmov.f32	s8, s10
d004efd0:	e602      	b.n	d004ebd8 <fillTriangleDitherBayer+0x114>
d004efd2:	ee36 6a45 	vsub.f32	s12, s12, s10
d004efd6:	eeb4 6ae0 	vcmpe.f32	s12, s1
d004efda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004efde:	f340 83c0 	ble.w	d004f762 <fillTriangleDitherBayer+0xc9e>
d004efe2:	eef7 aa00 	vmov.f32	s21, #112	; 0x3f800000  1.0
d004efe6:	ee33 3a65 	vsub.f32	s6, s6, s11
d004efea:	ee32 2a64 	vsub.f32	s4, s4, s9
d004efee:	eeca 3a86 	vdiv.f32	s7, s21, s12
d004eff2:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004eff6:	ee36 6a45 	vsub.f32	s12, s12, s10
d004effa:	ee05 1a10 	vmov	s10, r1
d004effe:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f002:	ee35 5a06 	vadd.f32	s10, s10, s12
d004f006:	ee23 3a23 	vmul.f32	s6, s6, s7
d004f00a:	ee22 2a23 	vmul.f32	s4, s4, s7
d004f00e:	eee5 5a03 	vfma.f32	s11, s10, s6
d004f012:	eee5 4a02 	vfma.f32	s9, s10, s4
d004f016:	9805      	ldr	r0, [sp, #20]
d004f018:	eb01 0681 	add.w	r6, r1, r1, lsl #2
d004f01c:	9d0d      	ldr	r5, [sp, #52]	; 0x34
d004f01e:	eef6 aa00 	vmov.f32	s21, #96	; 0x3f000000  0.5
d004f022:	ebc0 1200 	rsb	r2, r0, r0, lsl #4
d004f026:	4ba0      	ldr	r3, [pc, #640]	; (d004f2a8 <fillTriangleDitherBayer+0x7e4>)
d004f028:	4ca0      	ldr	r4, [pc, #640]	; (d004f2ac <fillTriangleDitherBayer+0x7e8>)
d004f02a:	eebe ba00 	vmov.f32	s22, #224	; 0xbf000000 -0.5
d004f02e:	eb05 1242 	add.w	r2, r5, r2, lsl #5
d004f032:	4605      	mov	r5, r0
d004f034:	681b      	ldr	r3, [r3, #0]
d004f036:	f000 0003 	and.w	r0, r0, #3
d004f03a:	eb05 1686 	add.w	r6, r5, r6, lsl #6
d004f03e:	440a      	add	r2, r1
d004f040:	441e      	add	r6, r3
d004f042:	eb04 0380 	add.w	r3, r4, r0, lsl #2
d004f046:	9306      	str	r3, [sp, #24]
d004f048:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004f04a:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004f04e:	e9cd 3a00 	strd	r3, sl, [sp]
d004f052:	9b01      	ldr	r3, [sp, #4]
d004f054:	eef4 5ac1 	vcmpe.f32	s11, s2
d004f058:	eba3 0e01 	sub.w	lr, r3, r1
d004f05c:	f10e 0301 	add.w	r3, lr, #1
d004f060:	2b30      	cmp	r3, #48	; 0x30
d004f062:	bfa8      	it	ge
d004f064:	2330      	movge	r3, #48	; 0x30
d004f066:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f06a:	ee06 3a10 	vmov	s12, r3
d004f06e:	eef8 3ac6 	vcvt.f32.s32	s7, s12
d004f072:	d97b      	bls.n	d004f16c <fillTriangleDitherBayer+0x6a8>
d004f074:	f1be 0f00 	cmp.w	lr, #0
d004f078:	ee84 6aa5 	vdiv.f32	s12, s9, s11
d004f07c:	f340 8084 	ble.w	d004f188 <fillTriangleDitherBayer+0x6c4>
d004f080:	1e5a      	subs	r2, r3, #1
d004f082:	ee05 2a10 	vmov	s10, r2
d004f086:	eeb0 da65 	vmov.f32	s26, s11
d004f08a:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f08e:	eea3 da05 	vfma.f32	s26, s6, s10
d004f092:	eeb4 dac1 	vcmpe.f32	s26, s2
d004f096:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f09a:	f340 809e 	ble.w	d004f1da <fillTriangleDitherBayer+0x716>
d004f09e:	eef0 da64 	vmov.f32	s27, s9
d004f0a2:	eee2 da05 	vfma.f32	s27, s4, s10
d004f0a6:	ee8d 5a8d 	vdiv.f32	s10, s27, s26
d004f0aa:	4a81      	ldr	r2, [pc, #516]	; (d004f2b0 <fillTriangleDitherBayer+0x7ec>)
d004f0ac:	fe86 6a09 	vmaxnm.f32	s12, s12, s18
d004f0b0:	fe85 5a09 	vmaxnm.f32	s10, s10, s18
d004f0b4:	fe86 6a69 	vminnm.f32	s12, s12, s19
d004f0b8:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d004f0bc:	fe85 5a69 	vminnm.f32	s10, s10, s19
d004f0c0:	ed92 da00 	vldr	s26, [r2]
d004f0c4:	ee35 5a46 	vsub.f32	s10, s10, s12
d004f0c8:	eef0 da6a 	vmov.f32	s27, s21
d004f0cc:	009a      	lsls	r2, r3, #2
d004f0ce:	ee2d da0a 	vmul.f32	s26, s26, s20
d004f0d2:	9203      	str	r2, [sp, #12]
d004f0d4:	eee6 da0a 	vfma.f32	s27, s12, s20
d004f0d8:	9a02      	ldr	r2, [sp, #8]
d004f0da:	ee25 5a0d 	vmul.f32	s10, s10, s26
d004f0de:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d004f0e2:	eebd 6aed 	vcvt.s32.f32	s12, s27
d004f0e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f0ea:	fe2a da8b 	vselge.f32	s26, s21, s22
d004f0ee:	ee3d 5a05 	vadd.f32	s10, s26, s10
d004f0f2:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004f0f6:	ee15 7a10 	vmov	r7, s10
d004f0fa:	2a00      	cmp	r2, #0
d004f0fc:	d070      	beq.n	d004f1e0 <fillTriangleDitherBayer+0x71c>
d004f0fe:	2f00      	cmp	r7, #0
d004f100:	f000 8334 	beq.w	d004f76c <fillTriangleDitherBayer+0xca8>
d004f104:	9800      	ldr	r0, [sp, #0]
d004f106:	ee16 2a10 	vmov	r2, s12
d004f10a:	1e85      	subs	r5, r0, #2
d004f10c:	3280      	adds	r2, #128	; 0x80
d004f10e:	2000      	movs	r0, #0
d004f110:	f3c2 2c0f 	ubfx	ip, r2, #8, #16
d004f114:	f835 8f02 	ldrh.w	r8, [r5, #2]!
d004f118:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f11c:	443a      	add	r2, r7
d004f11e:	45e0      	cmp	r8, ip
d004f120:	f100 0001 	add.w	r0, r0, #1
d004f124:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f128:	d903      	bls.n	d004f132 <fillTriangleDitherBayer+0x66e>
d004f12a:	f8a5 c000 	strh.w	ip, [r5]
d004f12e:	f806 b004 	strb.w	fp, [r6, r4]
d004f132:	4283      	cmp	r3, r0
d004f134:	dcec      	bgt.n	d004f110 <fillTriangleDitherBayer+0x64c>
d004f136:	9a03      	ldr	r2, [sp, #12]
d004f138:	f1be 0f00 	cmp.w	lr, #0
d004f13c:	ea4f 0043 	mov.w	r0, r3, lsl #1
d004f140:	9c00      	ldr	r4, [sp, #0]
d004f142:	441a      	add	r2, r3
d004f144:	bfb8      	it	lt
d004f146:	2002      	movlt	r0, #2
d004f148:	ea4f 1282 	mov.w	r2, r2, lsl #6
d004f14c:	bfb8      	it	lt
d004f14e:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d004f152:	4404      	add	r4, r0
d004f154:	4416      	add	r6, r2
d004f156:	9400      	str	r4, [sp, #0]
d004f158:	eee3 5a23 	vfma.f32	s11, s6, s7
d004f15c:	4419      	add	r1, r3
d004f15e:	eee2 4a23 	vfma.f32	s9, s4, s7
d004f162:	9b01      	ldr	r3, [sp, #4]
d004f164:	428b      	cmp	r3, r1
d004f166:	f6bf af74 	bge.w	d004f052 <fillTriangleDitherBayer+0x58e>
d004f16a:	e671      	b.n	d004ee50 <fillTriangleDitherBayer+0x38c>
d004f16c:	9800      	ldr	r0, [sp, #0]
d004f16e:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004f172:	eee3 5a23 	vfma.f32	s11, s6, s7
d004f176:	4419      	add	r1, r3
d004f178:	eb00 0043 	add.w	r0, r0, r3, lsl #1
d004f17c:	eee2 4a23 	vfma.f32	s9, s4, s7
d004f180:	eb06 1682 	add.w	r6, r6, r2, lsl #6
d004f184:	9000      	str	r0, [sp, #0]
d004f186:	e7ec      	b.n	d004f162 <fillTriangleDitherBayer+0x69e>
d004f188:	eeb0 5a6a 	vmov.f32	s10, s21
d004f18c:	fe86 6a09 	vmaxnm.f32	s12, s12, s18
d004f190:	fe86 6a69 	vminnm.f32	s12, s12, s19
d004f194:	9a02      	ldr	r2, [sp, #8]
d004f196:	eea6 5a0a 	vfma.f32	s10, s12, s20
d004f19a:	eebd 6ac5 	vcvt.s32.f32	s12, s10
d004f19e:	2a00      	cmp	r2, #0
d004f1a0:	d052      	beq.n	d004f248 <fillTriangleDitherBayer+0x784>
d004f1a2:	ee16 7a10 	vmov	r7, s12
d004f1a6:	3780      	adds	r7, #128	; 0x80
d004f1a8:	f3c7 270f 	ubfx	r7, r7, #8, #16
d004f1ac:	f1be 0f00 	cmp.w	lr, #0
d004f1b0:	d1d2      	bne.n	d004f158 <fillTriangleDitherBayer+0x694>
d004f1b2:	009a      	lsls	r2, r3, #2
d004f1b4:	9203      	str	r2, [sp, #12]
d004f1b6:	9a00      	ldr	r2, [sp, #0]
d004f1b8:	1e94      	subs	r4, r2, #2
d004f1ba:	2200      	movs	r2, #0
d004f1bc:	f834 5f02 	ldrh.w	r5, [r4, #2]!
d004f1c0:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d004f1c4:	3201      	adds	r2, #1
d004f1c6:	42bd      	cmp	r5, r7
d004f1c8:	ea4f 1080 	mov.w	r0, r0, lsl #6
d004f1cc:	d902      	bls.n	d004f1d4 <fillTriangleDitherBayer+0x710>
d004f1ce:	8027      	strh	r7, [r4, #0]
d004f1d0:	f806 b000 	strb.w	fp, [r6, r0]
d004f1d4:	4293      	cmp	r3, r2
d004f1d6:	dcf1      	bgt.n	d004f1bc <fillTriangleDitherBayer+0x6f8>
d004f1d8:	e7ad      	b.n	d004f136 <fillTriangleDitherBayer+0x672>
d004f1da:	eeb0 5a46 	vmov.f32	s10, s12
d004f1de:	e764      	b.n	d004f0aa <fillTriangleDitherBayer+0x5e6>
d004f1e0:	f001 0003 	and.w	r0, r1, #3
d004f1e4:	2f00      	cmp	r7, #0
d004f1e6:	f000 82d3 	beq.w	d004f790 <fillTriangleDitherBayer+0xccc>
d004f1ea:	9c00      	ldr	r4, [sp, #0]
d004f1ec:	ee16 2a10 	vmov	r2, s12
d004f1f0:	f8cd e028 	str.w	lr, [sp, #40]	; 0x28
d004f1f4:	f1a4 0c02 	sub.w	ip, r4, #2
d004f1f8:	910b      	str	r1, [sp, #44]	; 0x2c
d004f1fa:	3280      	adds	r2, #128	; 0x80
d004f1fc:	9907      	ldr	r1, [sp, #28]
d004f1fe:	9c02      	ldr	r4, [sp, #8]
d004f200:	f8dd e010 	ldr.w	lr, [sp, #16]
d004f204:	9108      	str	r1, [sp, #32]
d004f206:	f3c2 280f 	ubfx	r8, r2, #8, #16
d004f20a:	f83c af02 	ldrh.w	sl, [ip, #2]!
d004f20e:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f212:	f100 0901 	add.w	r9, r0, #1
d004f216:	45c2      	cmp	sl, r8
d004f218:	443a      	add	r2, r7
d004f21a:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f21e:	f104 0401 	add.w	r4, r4, #1
d004f222:	d909      	bls.n	d004f238 <fillTriangleDitherBayer+0x774>
d004f224:	9906      	ldr	r1, [sp, #24]
d004f226:	f8ac 8000 	strh.w	r8, [ip]
d004f22a:	5c08      	ldrb	r0, [r1, r0]
d004f22c:	9908      	ldr	r1, [sp, #32]
d004f22e:	4288      	cmp	r0, r1
d004f230:	bfb4      	ite	lt
d004f232:	4670      	movlt	r0, lr
d004f234:	4658      	movge	r0, fp
d004f236:	5570      	strb	r0, [r6, r5]
d004f238:	42a3      	cmp	r3, r4
d004f23a:	f009 0003 	and.w	r0, r9, #3
d004f23e:	dce2      	bgt.n	d004f206 <fillTriangleDitherBayer+0x742>
d004f240:	f8dd e028 	ldr.w	lr, [sp, #40]	; 0x28
d004f244:	990b      	ldr	r1, [sp, #44]	; 0x2c
d004f246:	e776      	b.n	d004f136 <fillTriangleDitherBayer+0x672>
d004f248:	ee16 2a10 	vmov	r2, s12
d004f24c:	f001 0003 	and.w	r0, r1, #3
d004f250:	3280      	adds	r2, #128	; 0x80
d004f252:	f3c2 220f 	ubfx	r2, r2, #8, #16
d004f256:	f1be 0f00 	cmp.w	lr, #0
d004f25a:	f47f af7d 	bne.w	d004f158 <fillTriangleDitherBayer+0x694>
d004f25e:	009c      	lsls	r4, r3, #2
d004f260:	9403      	str	r4, [sp, #12]
d004f262:	9c00      	ldr	r4, [sp, #0]
d004f264:	9108      	str	r1, [sp, #32]
d004f266:	1ea7      	subs	r7, r4, #2
d004f268:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004f26c:	2400      	movs	r4, #0
d004f26e:	9907      	ldr	r1, [sp, #28]
d004f270:	f8dd a018 	ldr.w	sl, [sp, #24]
d004f274:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f278:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f27c:	f100 0c01 	add.w	ip, r0, #1
d004f280:	3401      	adds	r4, #1
d004f282:	4590      	cmp	r8, r2
d004f284:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f288:	d907      	bls.n	d004f29a <fillTriangleDitherBayer+0x7d6>
d004f28a:	803a      	strh	r2, [r7, #0]
d004f28c:	f81a 0000 	ldrb.w	r0, [sl, r0]
d004f290:	4288      	cmp	r0, r1
d004f292:	bfb4      	ite	lt
d004f294:	4648      	movlt	r0, r9
d004f296:	4658      	movge	r0, fp
d004f298:	5570      	strb	r0, [r6, r5]
d004f29a:	42a3      	cmp	r3, r4
d004f29c:	f00c 0003 	and.w	r0, ip, #3
d004f2a0:	dce8      	bgt.n	d004f274 <fillTriangleDitherBayer+0x7b0>
d004f2a2:	9908      	ldr	r1, [sp, #32]
d004f2a4:	e747      	b.n	d004f136 <fillTriangleDitherBayer+0x672>
d004f2a6:	bf00      	nop
d004f2a8:	d00f4b90 	.word	0xd00f4b90
d004f2ac:	d00578a0 	.word	0xd00578a0
d004f2b0:	d00578c0 	.word	0xd00578c0
d004f2b4:	00000000 	.word	0x00000000
d004f2b8:	ed5f 5a02 	vldr	s11, [pc, #-8]	; d004f2b4 <fillTriangleDitherBayer+0x7f0>
d004f2bc:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d004f2c0:	edcd 5a13 	vstr	s11, [sp, #76]	; 0x4c
d004f2c4:	edcd 5a12 	vstr	s11, [sp, #72]	; 0x48
d004f2c8:	eefd 5ac6 	vcvt.s32.f32	s11, s12
d004f2cc:	48cd      	ldr	r0, [pc, #820]	; (d004f604 <fillTriangleDitherBayer+0xb40>)
d004f2ce:	49ce      	ldr	r1, [pc, #824]	; (d004f608 <fillTriangleDitherBayer+0xb44>)
d004f2d0:	6800      	ldr	r0, [r0, #0]
d004f2d2:	ee15 2a90 	vmov	r2, s11
d004f2d6:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004f2da:	6809      	ldr	r1, [r1, #0]
d004f2dc:	900c      	str	r0, [sp, #48]	; 0x30
d004f2de:	eeb4 6ae5 	vcmpe.f32	s12, s11
d004f2e2:	910f      	str	r1, [sp, #60]	; 0x3c
d004f2e4:	eefd 5ae3 	vcvt.s32.f32	s11, s7
d004f2e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f2ec:	eeb8 5ae5 	vcvt.f32.s32	s10, s11
d004f2f0:	ee15 3a90 	vmov	r3, s11
d004f2f4:	edcd 5a0b 	vstr	s11, [sp, #44]	; 0x2c
d004f2f8:	bfc8      	it	gt
d004f2fa:	3201      	addgt	r2, #1
d004f2fc:	eef4 3ac5 	vcmpe.f32	s7, s10
d004f300:	ed8d 5a10 	vstr	s10, [sp, #64]	; 0x40
d004f304:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f308:	bfd8      	it	le
d004f30a:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f30e:	4282      	cmp	r2, r0
d004f310:	bfb8      	it	lt
d004f312:	4602      	movlt	r2, r0
d004f314:	428b      	cmp	r3, r1
d004f316:	bfa8      	it	ge
d004f318:	460b      	movge	r3, r1
d004f31a:	9205      	str	r2, [sp, #20]
d004f31c:	4293      	cmp	r3, r2
d004f31e:	f6ff adc3 	blt.w	d004eea8 <fillTriangleDitherBayer+0x3e4>
d004f322:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004f326:	3301      	adds	r3, #1
d004f328:	eef0 ba62 	vmov.f32	s23, s5
d004f32c:	49b7      	ldr	r1, [pc, #732]	; (d004f60c <fillTriangleDitherBayer+0xb48>)
d004f32e:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d004f332:	9309      	str	r3, [sp, #36]	; 0x24
d004f334:	ee35 5ac6 	vsub.f32	s10, s11, s12
d004f338:	eddd 5a05 	vldr	s11, [sp, #20]
d004f33c:	680b      	ldr	r3, [r1, #0]
d004f33e:	eeb0 aa47 	vmov.f32	s20, s14
d004f342:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004f346:	eddf aab2 	vldr	s21, [pc, #712]	; d004f610 <fillTriangleDitherBayer+0xb4c>
d004f34a:	eef0 ca62 	vmov.f32	s25, s5
d004f34e:	9314      	str	r3, [sp, #80]	; 0x50
d004f350:	eeb0 ca67 	vmov.f32	s24, s15
d004f354:	0153      	lsls	r3, r2, #5
d004f356:	ee75 5a85 	vadd.f32	s11, s11, s10
d004f35a:	ed9f daae 	vldr	s26, [pc, #696]	; d004f614 <fillTriangleDitherBayer+0xb50>
d004f35e:	eef0 9a47 	vmov.f32	s19, s14
d004f362:	ed9f eaad 	vldr	s28, [pc, #692]	; d004f618 <fillTriangleDitherBayer+0xb54>
d004f366:	eeb0 9a4b 	vmov.f32	s18, s22
d004f36a:	ed9f faac 	vldr	s30, [pc, #688]	; d004f61c <fillTriangleDitherBayer+0xb58>
d004f36e:	eeeb ba25 	vfma.f32	s23, s22, s11
d004f372:	9315      	str	r3, [sp, #84]	; 0x54
d004f374:	eeb0 ba67 	vmov.f32	s22, s15
d004f378:	ed8d 4a16 	vstr	s8, [sp, #88]	; 0x58
d004f37c:	eea0 aa25 	vfma.f32	s20, s0, s11
d004f380:	ed8d 6a17 	vstr	s12, [sp, #92]	; 0x5c
d004f384:	eee8 ca25 	vfma.f32	s25, s16, s11
d004f388:	edcd 6a18 	vstr	s13, [sp, #96]	; 0x60
d004f38c:	eea8 caa5 	vfma.f32	s24, s17, s11
d004f390:	ed8d 7a19 	vstr	s14, [sp, #100]	; 0x64
d004f394:	eeed 9aa5 	vfma.f32	s19, s27, s11
d004f398:	eeaf baa5 	vfma.f32	s22, s31, s11
d004f39c:	e041      	b.n	d004f422 <fillTriangleDitherBayer+0x95e>
d004f39e:	eeb0 3a4c 	vmov.f32	s6, s24
d004f3a2:	eeb0 4a6c 	vmov.f32	s8, s25
d004f3a6:	eef0 6a4a 	vmov.f32	s13, s20
d004f3aa:	eeb0 6a4b 	vmov.f32	s12, s22
d004f3ae:	eeb0 7a6b 	vmov.f32	s14, s23
d004f3b2:	eef0 5a69 	vmov.f32	s11, s19
d004f3b6:	eebd 5ae5 	vcvt.s32.f32	s10, s11
d004f3ba:	f240 12df 	movw	r2, #479	; 0x1df
d004f3be:	ee15 1a10 	vmov	r1, s10
d004f3c2:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f3c6:	eef4 5ac5 	vcmpe.f32	s11, s10
d004f3ca:	eebd 5ae6 	vcvt.s32.f32	s10, s13
d004f3ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f3d2:	ee15 3a10 	vmov	r3, s10
d004f3d6:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f3da:	bfc8      	it	gt
d004f3dc:	3101      	addgt	r1, #1
d004f3de:	eef4 6ac5 	vcmpe.f32	s13, s10
d004f3e2:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004f3e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f3ea:	bfd8      	it	le
d004f3ec:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f3f0:	4293      	cmp	r3, r2
d004f3f2:	bfa8      	it	ge
d004f3f4:	4613      	movge	r3, r2
d004f3f6:	428b      	cmp	r3, r1
d004f3f8:	469a      	mov	sl, r3
d004f3fa:	da24      	bge.n	d004f446 <fillTriangleDitherBayer+0x982>
d004f3fc:	9b05      	ldr	r3, [sp, #20]
d004f3fe:	ee3a aa00 	vadd.f32	s20, s20, s0
d004f402:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004f404:	ee7c ca88 	vadd.f32	s25, s25, s16
d004f408:	3301      	adds	r3, #1
d004f40a:	ee3c ca28 	vadd.f32	s24, s24, s17
d004f40e:	ee79 9aad 	vadd.f32	s19, s19, s27
d004f412:	429a      	cmp	r2, r3
d004f414:	ee7b ba89 	vadd.f32	s23, s23, s18
d004f418:	ee3b ba2f 	vadd.f32	s22, s22, s31
d004f41c:	9305      	str	r3, [sp, #20]
d004f41e:	f43f ad3b 	beq.w	d004ee98 <fillTriangleDitherBayer+0x3d4>
d004f422:	eeb4 aae9 	vcmpe.f32	s20, s19
d004f426:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f42a:	dcb8      	bgt.n	d004f39e <fillTriangleDitherBayer+0x8da>
d004f42c:	eeb0 3a4b 	vmov.f32	s6, s22
d004f430:	eeb0 4a6b 	vmov.f32	s8, s23
d004f434:	eef0 6a69 	vmov.f32	s13, s19
d004f438:	eeb0 6a4c 	vmov.f32	s12, s24
d004f43c:	eeb0 7a6c 	vmov.f32	s14, s25
d004f440:	eef0 5a4a 	vmov.f32	s11, s20
d004f444:	e7b7      	b.n	d004f3b6 <fillTriangleDitherBayer+0x8f2>
d004f446:	ee76 6ae5 	vsub.f32	s13, s13, s11
d004f44a:	ed9f 5a75 	vldr	s10, [pc, #468]	; d004f620 <fillTriangleDitherBayer+0xb5c>
d004f44e:	eef4 6ac5 	vcmpe.f32	s13, s10
d004f452:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f456:	f340 817f 	ble.w	d004f758 <fillTriangleDitherBayer+0xc94>
d004f45a:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d004f45e:	ee34 4a47 	vsub.f32	s8, s8, s14
d004f462:	ee33 3a46 	vsub.f32	s6, s6, s12
d004f466:	ee82 5a26 	vdiv.f32	s10, s4, s13
d004f46a:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004f46e:	ee76 5ae5 	vsub.f32	s11, s13, s11
d004f472:	ee06 1a90 	vmov	s13, r1
d004f476:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004f47a:	ee76 5aa5 	vadd.f32	s11, s13, s11
d004f47e:	ee24 4a05 	vmul.f32	s8, s8, s10
d004f482:	ee23 3a05 	vmul.f32	s6, s6, s10
d004f486:	eea5 7a84 	vfma.f32	s14, s11, s8
d004f48a:	eea5 6a83 	vfma.f32	s12, s11, s6
d004f48e:	9805      	ldr	r0, [sp, #20]
d004f490:	eb01 0681 	add.w	r6, r1, r1, lsl #2
d004f494:	9d15      	ldr	r5, [sp, #84]	; 0x54
d004f496:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d004f49a:	ebc0 1200 	rsb	r2, r0, r0, lsl #4
d004f49e:	4b61      	ldr	r3, [pc, #388]	; (d004f624 <fillTriangleDitherBayer+0xb60>)
d004f4a0:	4c61      	ldr	r4, [pc, #388]	; (d004f628 <fillTriangleDitherBayer+0xb64>)
d004f4a2:	eefe 0a00 	vmov.f32	s1, #224	; 0xbf000000 -0.5
d004f4a6:	eb05 1242 	add.w	r2, r5, r2, lsl #5
d004f4aa:	4605      	mov	r5, r0
d004f4ac:	681b      	ldr	r3, [r3, #0]
d004f4ae:	f000 0003 	and.w	r0, r0, #3
d004f4b2:	eb05 1686 	add.w	r6, r5, r6, lsl #6
d004f4b6:	440a      	add	r2, r1
d004f4b8:	441e      	add	r6, r3
d004f4ba:	eb04 0380 	add.w	r3, r4, r0, lsl #2
d004f4be:	9306      	str	r3, [sp, #24]
d004f4c0:	9b14      	ldr	r3, [sp, #80]	; 0x50
d004f4c2:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004f4c6:	e9cd 3a00 	strd	r3, sl, [sp]
d004f4ca:	9b01      	ldr	r3, [sp, #4]
d004f4cc:	eeb4 7aea 	vcmpe.f32	s14, s21
d004f4d0:	eba3 0e01 	sub.w	lr, r3, r1
d004f4d4:	f10e 0201 	add.w	r2, lr, #1
d004f4d8:	2a30      	cmp	r2, #48	; 0x30
d004f4da:	bfa8      	it	ge
d004f4dc:	2230      	movge	r2, #48	; 0x30
d004f4de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f4e2:	ee06 2a90 	vmov	s13, r2
d004f4e6:	eef8 5ae6 	vcvt.f32.s32	s11, s13
d004f4ea:	d97c      	bls.n	d004f5e6 <fillTriangleDitherBayer+0xb22>
d004f4ec:	f1be 0f00 	cmp.w	lr, #0
d004f4f0:	eec6 6a07 	vdiv.f32	s13, s12, s14
d004f4f4:	f340 809c 	ble.w	d004f630 <fillTriangleDitherBayer+0xb6c>
d004f4f8:	1e53      	subs	r3, r2, #1
d004f4fa:	ee05 3a10 	vmov	s10, r3
d004f4fe:	eeb0 1a47 	vmov.f32	s2, s14
d004f502:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f506:	eea4 1a05 	vfma.f32	s2, s8, s10
d004f50a:	eeb4 1aea 	vcmpe.f32	s2, s21
d004f50e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f512:	f340 80b6 	ble.w	d004f682 <fillTriangleDitherBayer+0xbbe>
d004f516:	eef0 ea46 	vmov.f32	s29, s12
d004f51a:	eee3 ea05 	vfma.f32	s29, s6, s10
d004f51e:	ee8e 5a81 	vdiv.f32	s10, s29, s2
d004f522:	4b42      	ldr	r3, [pc, #264]	; (d004f62c <fillTriangleDitherBayer+0xb68>)
d004f524:	fec6 6a8d 	vmaxnm.f32	s13, s13, s26
d004f528:	fe85 5a0d 	vmaxnm.f32	s10, s10, s26
d004f52c:	fec6 6ace 	vminnm.f32	s13, s13, s28
d004f530:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d004f534:	fe85 5a4e 	vminnm.f32	s10, s10, s28
d004f538:	ed93 1a00 	vldr	s2, [r3]
d004f53c:	ee35 5a66 	vsub.f32	s10, s10, s13
d004f540:	eef0 ea42 	vmov.f32	s29, s4
d004f544:	0093      	lsls	r3, r2, #2
d004f546:	ee21 1a0f 	vmul.f32	s2, s2, s30
d004f54a:	9303      	str	r3, [sp, #12]
d004f54c:	eee6 ea8f 	vfma.f32	s29, s13, s30
d004f550:	9b02      	ldr	r3, [sp, #8]
d004f552:	ee25 5a01 	vmul.f32	s10, s10, s2
d004f556:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d004f55a:	eefd 6aee 	vcvt.s32.f32	s13, s29
d004f55e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f562:	fe22 1a20 	vselge.f32	s2, s4, s1
d004f566:	ee31 5a05 	vadd.f32	s10, s2, s10
d004f56a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004f56e:	ee15 5a10 	vmov	r5, s10
d004f572:	2b00      	cmp	r3, #0
d004f574:	f000 8088 	beq.w	d004f688 <fillTriangleDitherBayer+0xbc4>
d004f578:	2d00      	cmp	r5, #0
d004f57a:	f000 8103 	beq.w	d004f784 <fillTriangleDitherBayer+0xcc0>
d004f57e:	9800      	ldr	r0, [sp, #0]
d004f580:	ee16 3a90 	vmov	r3, s13
d004f584:	1e87      	subs	r7, r0, #2
d004f586:	3380      	adds	r3, #128	; 0x80
d004f588:	2000      	movs	r0, #0
d004f58a:	f3c3 2c0f 	ubfx	ip, r3, #8, #16
d004f58e:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f592:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f596:	442b      	add	r3, r5
d004f598:	45e0      	cmp	r8, ip
d004f59a:	f100 0001 	add.w	r0, r0, #1
d004f59e:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f5a2:	d903      	bls.n	d004f5ac <fillTriangleDitherBayer+0xae8>
d004f5a4:	f8a7 c000 	strh.w	ip, [r7]
d004f5a8:	f806 b004 	strb.w	fp, [r6, r4]
d004f5ac:	4282      	cmp	r2, r0
d004f5ae:	dcec      	bgt.n	d004f58a <fillTriangleDitherBayer+0xac6>
d004f5b0:	9b03      	ldr	r3, [sp, #12]
d004f5b2:	f1be 0f00 	cmp.w	lr, #0
d004f5b6:	ea4f 0042 	mov.w	r0, r2, lsl #1
d004f5ba:	9c00      	ldr	r4, [sp, #0]
d004f5bc:	4413      	add	r3, r2
d004f5be:	bfb8      	it	lt
d004f5c0:	2002      	movlt	r0, #2
d004f5c2:	ea4f 1383 	mov.w	r3, r3, lsl #6
d004f5c6:	bfb8      	it	lt
d004f5c8:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004f5cc:	4404      	add	r4, r0
d004f5ce:	441e      	add	r6, r3
d004f5d0:	9400      	str	r4, [sp, #0]
d004f5d2:	eea4 7a25 	vfma.f32	s14, s8, s11
d004f5d6:	4411      	add	r1, r2
d004f5d8:	eea3 6a25 	vfma.f32	s12, s6, s11
d004f5dc:	9b01      	ldr	r3, [sp, #4]
d004f5de:	4299      	cmp	r1, r3
d004f5e0:	f77f af73 	ble.w	d004f4ca <fillTriangleDitherBayer+0xa06>
d004f5e4:	e70a      	b.n	d004f3fc <fillTriangleDitherBayer+0x938>
d004f5e6:	9800      	ldr	r0, [sp, #0]
d004f5e8:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004f5ec:	eea4 7a25 	vfma.f32	s14, s8, s11
d004f5f0:	4411      	add	r1, r2
d004f5f2:	eb00 0042 	add.w	r0, r0, r2, lsl #1
d004f5f6:	eea3 6a25 	vfma.f32	s12, s6, s11
d004f5fa:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d004f5fe:	9000      	str	r0, [sp, #0]
d004f600:	e7ec      	b.n	d004f5dc <fillTriangleDitherBayer+0xb18>
d004f602:	bf00      	nop
d004f604:	d005a6bc 	.word	0xd005a6bc
d004f608:	d005a6c0 	.word	0xd005a6c0
d004f60c:	d005a6c4 	.word	0xd005a6c4
d004f610:	33d6bf95 	.word	0x33d6bf95
d004f614:	00000000 	.word	0x00000000
d004f618:	477fff00 	.word	0x477fff00
d004f61c:	43800000 	.word	0x43800000
d004f620:	38d1b717 	.word	0x38d1b717
d004f624:	d00f4b90 	.word	0xd00f4b90
d004f628:	d00578a0 	.word	0xd00578a0
d004f62c:	d00578c0 	.word	0xd00578c0
d004f630:	eeb0 5a42 	vmov.f32	s10, s4
d004f634:	fec6 6a8d 	vmaxnm.f32	s13, s13, s26
d004f638:	fec6 6ace 	vminnm.f32	s13, s13, s28
d004f63c:	9b02      	ldr	r3, [sp, #8]
d004f63e:	eea6 5a8f 	vfma.f32	s10, s13, s30
d004f642:	eefd 6ac5 	vcvt.s32.f32	s13, s10
d004f646:	2b00      	cmp	r3, #0
d004f648:	d051      	beq.n	d004f6ee <fillTriangleDitherBayer+0xc2a>
d004f64a:	ee16 3a90 	vmov	r3, s13
d004f64e:	3380      	adds	r3, #128	; 0x80
d004f650:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f654:	f1be 0f00 	cmp.w	lr, #0
d004f658:	d1bb      	bne.n	d004f5d2 <fillTriangleDitherBayer+0xb0e>
d004f65a:	0090      	lsls	r0, r2, #2
d004f65c:	9003      	str	r0, [sp, #12]
d004f65e:	9800      	ldr	r0, [sp, #0]
d004f660:	1e85      	subs	r5, r0, #2
d004f662:	2000      	movs	r0, #0
d004f664:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d004f668:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f66c:	3001      	adds	r0, #1
d004f66e:	429f      	cmp	r7, r3
d004f670:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f674:	d902      	bls.n	d004f67c <fillTriangleDitherBayer+0xbb8>
d004f676:	802b      	strh	r3, [r5, #0]
d004f678:	f806 b004 	strb.w	fp, [r6, r4]
d004f67c:	4282      	cmp	r2, r0
d004f67e:	dcf1      	bgt.n	d004f664 <fillTriangleDitherBayer+0xba0>
d004f680:	e796      	b.n	d004f5b0 <fillTriangleDitherBayer+0xaec>
d004f682:	eeb0 5a66 	vmov.f32	s10, s13
d004f686:	e74c      	b.n	d004f522 <fillTriangleDitherBayer+0xa5e>
d004f688:	f001 0003 	and.w	r0, r1, #3
d004f68c:	2d00      	cmp	r5, #0
d004f68e:	d073      	beq.n	d004f778 <fillTriangleDitherBayer+0xcb4>
d004f690:	9c00      	ldr	r4, [sp, #0]
d004f692:	ee16 3a90 	vmov	r3, s13
d004f696:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
d004f69a:	f1a4 0c02 	sub.w	ip, r4, #2
d004f69e:	910e      	str	r1, [sp, #56]	; 0x38
d004f6a0:	3380      	adds	r3, #128	; 0x80
d004f6a2:	9907      	ldr	r1, [sp, #28]
d004f6a4:	9c02      	ldr	r4, [sp, #8]
d004f6a6:	f8dd e010 	ldr.w	lr, [sp, #16]
d004f6aa:	9108      	str	r1, [sp, #32]
d004f6ac:	f3c3 280f 	ubfx	r8, r3, #8, #16
d004f6b0:	f83c af02 	ldrh.w	sl, [ip, #2]!
d004f6b4:	eb04 0784 	add.w	r7, r4, r4, lsl #2
d004f6b8:	f100 0901 	add.w	r9, r0, #1
d004f6bc:	45c2      	cmp	sl, r8
d004f6be:	442b      	add	r3, r5
d004f6c0:	ea4f 1787 	mov.w	r7, r7, lsl #6
d004f6c4:	f104 0401 	add.w	r4, r4, #1
d004f6c8:	d909      	bls.n	d004f6de <fillTriangleDitherBayer+0xc1a>
d004f6ca:	9906      	ldr	r1, [sp, #24]
d004f6cc:	f8ac 8000 	strh.w	r8, [ip]
d004f6d0:	5c08      	ldrb	r0, [r1, r0]
d004f6d2:	9908      	ldr	r1, [sp, #32]
d004f6d4:	4288      	cmp	r0, r1
d004f6d6:	bfac      	ite	ge
d004f6d8:	4658      	movge	r0, fp
d004f6da:	4670      	movlt	r0, lr
d004f6dc:	55f0      	strb	r0, [r6, r7]
d004f6de:	42a2      	cmp	r2, r4
d004f6e0:	f009 0003 	and.w	r0, r9, #3
d004f6e4:	dce2      	bgt.n	d004f6ac <fillTriangleDitherBayer+0xbe8>
d004f6e6:	f8dd e034 	ldr.w	lr, [sp, #52]	; 0x34
d004f6ea:	990e      	ldr	r1, [sp, #56]	; 0x38
d004f6ec:	e760      	b.n	d004f5b0 <fillTriangleDitherBayer+0xaec>
d004f6ee:	ee16 3a90 	vmov	r3, s13
d004f6f2:	f001 0003 	and.w	r0, r1, #3
d004f6f6:	3380      	adds	r3, #128	; 0x80
d004f6f8:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f6fc:	f1be 0f00 	cmp.w	lr, #0
d004f700:	f47f af67 	bne.w	d004f5d2 <fillTriangleDitherBayer+0xb0e>
d004f704:	0094      	lsls	r4, r2, #2
d004f706:	9403      	str	r4, [sp, #12]
d004f708:	9c00      	ldr	r4, [sp, #0]
d004f70a:	9108      	str	r1, [sp, #32]
d004f70c:	1ea7      	subs	r7, r4, #2
d004f70e:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004f712:	2400      	movs	r4, #0
d004f714:	f8dd a018 	ldr.w	sl, [sp, #24]
d004f718:	9907      	ldr	r1, [sp, #28]
d004f71a:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f71e:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f722:	f100 0c01 	add.w	ip, r0, #1
d004f726:	3401      	adds	r4, #1
d004f728:	4598      	cmp	r8, r3
d004f72a:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f72e:	d907      	bls.n	d004f740 <fillTriangleDitherBayer+0xc7c>
d004f730:	803b      	strh	r3, [r7, #0]
d004f732:	f81a 0000 	ldrb.w	r0, [sl, r0]
d004f736:	4288      	cmp	r0, r1
d004f738:	bfac      	ite	ge
d004f73a:	4658      	movge	r0, fp
d004f73c:	4648      	movlt	r0, r9
d004f73e:	5570      	strb	r0, [r6, r5]
d004f740:	42a2      	cmp	r2, r4
d004f742:	f00c 0003 	and.w	r0, ip, #3
d004f746:	dce8      	bgt.n	d004f71a <fillTriangleDitherBayer+0xc56>
d004f748:	9908      	ldr	r1, [sp, #32]
d004f74a:	e731      	b.n	d004f5b0 <fillTriangleDitherBayer+0xaec>
d004f74c:	f04f 0b10 	mov.w	fp, #16
d004f750:	2310      	movs	r3, #16
d004f752:	9304      	str	r3, [sp, #16]
d004f754:	f7ff ba1c 	b.w	d004eb90 <fillTriangleDitherBayer+0xcc>
d004f758:	eeb0 3a4d 	vmov.f32	s6, s26
d004f75c:	eeb0 4a4d 	vmov.f32	s8, s26
d004f760:	e695      	b.n	d004f48e <fillTriangleDitherBayer+0x9ca>
d004f762:	eeb0 2a49 	vmov.f32	s4, s18
d004f766:	eeb0 3a49 	vmov.f32	s6, s18
d004f76a:	e454      	b.n	d004f016 <fillTriangleDitherBayer+0x552>
d004f76c:	ee16 7a10 	vmov	r7, s12
d004f770:	3780      	adds	r7, #128	; 0x80
d004f772:	f3c7 270f 	ubfx	r7, r7, #8, #16
d004f776:	e51e      	b.n	d004f1b6 <fillTriangleDitherBayer+0x6f2>
d004f778:	ee16 3a90 	vmov	r3, s13
d004f77c:	3380      	adds	r3, #128	; 0x80
d004f77e:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f782:	e7c1      	b.n	d004f708 <fillTriangleDitherBayer+0xc44>
d004f784:	ee16 3a90 	vmov	r3, s13
d004f788:	3380      	adds	r3, #128	; 0x80
d004f78a:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f78e:	e766      	b.n	d004f65e <fillTriangleDitherBayer+0xb9a>
d004f790:	ee16 2a10 	vmov	r2, s12
d004f794:	3280      	adds	r2, #128	; 0x80
d004f796:	f3c2 220f 	ubfx	r2, r2, #8, #16
d004f79a:	e562      	b.n	d004f262 <fillTriangleDitherBayer+0x79e>

d004f79c <fillTriangleDitherBayerT>:
d004f79c:	eddf 7aca 	vldr	s15, [pc, #808]	; d004fac8 <fillTriangleDitherBayerT+0x32c>
d004f7a0:	eef4 0ae7 	vcmpe.f32	s1, s15
d004f7a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004f7a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f7ac:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004f7b0:	ed2d 8b10 	vpush	{d8-d15}
d004f7b4:	b099      	sub	sp, #100	; 0x64
d004f7b6:	9205      	str	r2, [sp, #20]
d004f7b8:	bf94      	ite	ls
d004f7ba:	2201      	movls	r2, #1
d004f7bc:	2200      	movhi	r2, #0
d004f7be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f7c2:	9002      	str	r0, [sp, #8]
d004f7c4:	9104      	str	r1, [sp, #16]
d004f7c6:	bf98      	it	ls
d004f7c8:	f042 0201 	orrls.w	r2, r2, #1
d004f7cc:	9306      	str	r3, [sp, #24]
d004f7ce:	f8bd 40d0 	ldrh.w	r4, [sp, #208]	; 0xd0
d004f7d2:	f8bd 00d4 	ldrh.w	r0, [sp, #212]	; 0xd4
d004f7d6:	f8bd 10d8 	ldrh.w	r1, [sp, #216]	; 0xd8
d004f7da:	f89d 30dc 	ldrb.w	r3, [sp, #220]	; 0xdc
d004f7de:	f89d 50e0 	ldrb.w	r5, [sp, #224]	; 0xe0
d004f7e2:	2a00      	cmp	r2, #0
d004f7e4:	f040 81d7 	bne.w	d004fb96 <fillTriangleDitherBayerT+0x3fa>
d004f7e8:	eeb4 0a67 	vcmp.f32	s0, s15
d004f7ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f7f0:	f240 81d1 	bls.w	d004fb96 <fillTriangleDitherBayerT+0x3fa>
d004f7f4:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004f7f8:	eddf 6ab4 	vldr	s13, [pc, #720]	; d004facc <fillTriangleDitherBayerT+0x330>
d004f7fc:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d004f800:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d004f804:	ee06 4a90 	vmov	s13, r4
d004f808:	ee87 8a00 	vdiv.f32	s16, s14, s0
d004f80c:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d004f810:	ee87 0a20 	vdiv.f32	s0, s14, s1
d004f814:	ee87 3a01 	vdiv.f32	s6, s14, s2
d004f818:	eebd 7ae7 	vcvt.s32.f32	s14, s15
d004f81c:	eeb8 5a66 	vcvt.f32.u32	s10, s13
d004f820:	ee17 2a10 	vmov	r2, s14
d004f824:	ee07 0a10 	vmov	s14, r0
d004f828:	ee25 5a08 	vmul.f32	s10, s10, s16
d004f82c:	eeb8 4a47 	vcvt.f32.u32	s8, s14
d004f830:	ee07 1a10 	vmov	s14, r1
d004f834:	1c51      	adds	r1, r2, #1
d004f836:	eef8 6a47 	vcvt.f32.u32	s13, s14
d004f83a:	2905      	cmp	r1, #5
d004f83c:	ee24 4a00 	vmul.f32	s8, s8, s0
d004f840:	bfa8      	it	ge
d004f842:	2105      	movge	r1, #5
d004f844:	2a04      	cmp	r2, #4
d004f846:	ee66 6a83 	vmul.f32	s13, s13, s6
d004f84a:	f300 853c 	bgt.w	d00502c6 <fillTriangleDitherBayerT+0xb2a>
d004f84e:	f003 030f 	and.w	r3, r3, #15
d004f852:	2a03      	cmp	r2, #3
d004f854:	f103 0320 	add.w	r3, r3, #32
d004f858:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004f85c:	b2c0      	uxtb	r0, r0
d004f85e:	9001      	str	r0, [sp, #4]
d004f860:	f300 8533 	bgt.w	d00502ca <fillTriangleDitherBayerT+0xb2e>
d004f864:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004f868:	b2db      	uxtb	r3, r3
d004f86a:	9303      	str	r3, [sp, #12]
d004f86c:	ed9d 7a04 	vldr	s14, [sp, #16]
d004f870:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004f874:	ed9d 7a06 	vldr	s14, [sp, #24]
d004f878:	eef8 1ac7 	vcvt.f32.s32	s3, s14
d004f87c:	ed9d 7a02 	vldr	s14, [sp, #8]
d004f880:	eef8 4ac7 	vcvt.f32.s32	s9, s14
d004f884:	ed9d 7a05 	vldr	s14, [sp, #20]
d004f888:	eef4 3ae1 	vcmpe.f32	s7, s3
d004f88c:	eeb8 2ac7 	vcvt.f32.s32	s4, s14
d004f890:	ed9d 7a32 	vldr	s14, [sp, #200]	; 0xc8
d004f894:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f898:	eeb8 6ac7 	vcvt.f32.s32	s12, s14
d004f89c:	ed9d 7a33 	vldr	s14, [sp, #204]	; 0xcc
d004f8a0:	eef8 2ac7 	vcvt.f32.s32	s5, s14
d004f8a4:	f300 817c 	bgt.w	d004fba0 <fillTriangleDitherBayerT+0x404>
d004f8a8:	eef4 3ae2 	vcmpe.f32	s7, s5
d004f8ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f8b0:	f300 82ae 	bgt.w	d004fe10 <fillTriangleDitherBayerT+0x674>
d004f8b4:	eef4 2ae1 	vcmpe.f32	s5, s3
d004f8b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f8bc:	d517      	bpl.n	d004f8ee <fillTriangleDitherBayerT+0x152>
d004f8be:	eef0 0a44 	vmov.f32	s1, s8
d004f8c2:	eeb0 1a40 	vmov.f32	s2, s0
d004f8c6:	eef0 5a61 	vmov.f32	s11, s3
d004f8ca:	eeb0 7a42 	vmov.f32	s14, s4
d004f8ce:	eeb0 4a66 	vmov.f32	s8, s13
d004f8d2:	eeb0 0a43 	vmov.f32	s0, s6
d004f8d6:	eef0 1a62 	vmov.f32	s3, s5
d004f8da:	eeb0 2a46 	vmov.f32	s4, s12
d004f8de:	eef0 6a60 	vmov.f32	s13, s1
d004f8e2:	eeb0 3a41 	vmov.f32	s6, s2
d004f8e6:	eef0 2a65 	vmov.f32	s5, s11
d004f8ea:	eeb0 6a47 	vmov.f32	s12, s14
d004f8ee:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004f8f2:	ee73 5a87 	vadd.f32	s11, s7, s14
d004f8f6:	ee32 7a87 	vadd.f32	s14, s5, s14
d004f8fa:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004f8fe:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d004f902:	ee15 3a90 	vmov	r3, s11
d004f906:	ee17 1a10 	vmov	r1, s14
d004f90a:	428b      	cmp	r3, r1
d004f90c:	f000 8143 	beq.w	d004fb96 <fillTriangleDitherBayerT+0x3fa>
d004f910:	ee32 7ae3 	vsub.f32	s14, s5, s7
d004f914:	eddf 5a6c 	vldr	s11, [pc, #432]	; d004fac8 <fillTriangleDitherBayerT+0x32c>
d004f918:	eeb4 7ae5 	vcmpe.f32	s14, s11
d004f91c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f920:	f240 8139 	bls.w	d004fb96 <fillTriangleDitherBayerT+0x3fa>
d004f924:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004f928:	ee71 0ae3 	vsub.f32	s1, s3, s7
d004f92c:	ee76 8a64 	vsub.f32	s17, s12, s9
d004f930:	ee8a 1a07 	vdiv.f32	s2, s20, s14
d004f934:	eef4 0ae5 	vcmpe.f32	s1, s11
d004f938:	ee33 9a48 	vsub.f32	s18, s6, s16
d004f93c:	ee76 9ac5 	vsub.f32	s19, s13, s10
d004f940:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f944:	ee68 8a81 	vmul.f32	s17, s17, s2
d004f948:	ee29 9a01 	vmul.f32	s18, s18, s2
d004f94c:	ee69 9a81 	vmul.f32	s19, s19, s2
d004f950:	f300 8145 	bgt.w	d004fbde <fillTriangleDitherBayerT+0x442>
d004f954:	ee07 2a10 	vmov	s14, r2
d004f958:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004f95c:	ee32 1ae1 	vsub.f32	s2, s5, s3
d004f960:	9901      	ldr	r1, [sp, #4]
d004f962:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004f966:	122b      	asrs	r3, r5, #8
d004f968:	930d      	str	r3, [sp, #52]	; 0x34
d004f96a:	eeb4 1ae5 	vcmpe.f32	s2, s11
d004f96e:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004f972:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004f976:	eeb0 7a67 	vmov.f32	s14, s15
d004f97a:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004f97e:	ee17 3a10 	vmov	r3, s14
d004f982:	f383 0204 	usat	r2, #4, r3
d004f986:	9204      	str	r2, [sp, #16]
d004f988:	9a03      	ldr	r2, [sp, #12]
d004f98a:	428a      	cmp	r2, r1
d004f98c:	bf18      	it	ne
d004f98e:	2b00      	cmpne	r3, #0
d004f990:	bfd4      	ite	le
d004f992:	2301      	movle	r3, #1
d004f994:	2300      	movgt	r3, #0
d004f996:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f99a:	9305      	str	r3, [sp, #20]
d004f99c:	f340 80fb 	ble.w	d004fb96 <fillTriangleDitherBayerT+0x3fa>
d004f9a0:	ed9f ea4a 	vldr	s28, [pc, #296]	; d004facc <fillTriangleDitherBayerT+0x330>
d004f9a4:	eeb0 aa4e 	vmov.f32	s20, s28
d004f9a8:	eeb0 ca4e 	vmov.f32	s24, s28
d004f9ac:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004f9b0:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d004f9b4:	ee36 6a42 	vsub.f32	s12, s12, s4
d004f9b8:	ed9f 7a43 	vldr	s14, [pc, #268]	; d004fac8 <fillTriangleDitherBayerT+0x32c>
d004f9bc:	ee33 3a40 	vsub.f32	s6, s6, s0
d004f9c0:	eec5 7aa7 	vdiv.f32	s15, s11, s15
d004f9c4:	eef4 0ac7 	vcmpe.f32	s1, s14
d004f9c8:	ee76 6ac4 	vsub.f32	s13, s13, s8
d004f9cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f9d0:	ee26 6a27 	vmul.f32	s12, s12, s15
d004f9d4:	ee66 faa7 	vmul.f32	s31, s13, s15
d004f9d8:	ed8d 6a12 	vstr	s12, [sp, #72]	; 0x48
d004f9dc:	ee23 6a27 	vmul.f32	s12, s6, s15
d004f9e0:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d004f9e4:	f300 8139 	bgt.w	d004fc5a <fillTriangleDitherBayerT+0x4be>
d004f9e8:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d004f9ec:	4a31      	ldr	r2, [pc, #196]	; (d004fab4 <fillTriangleDitherBayerT+0x318>)
d004f9ee:	4b32      	ldr	r3, [pc, #200]	; (d004fab8 <fillTriangleDitherBayerT+0x31c>)
d004f9f0:	6812      	ldr	r2, [r2, #0]
d004f9f2:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d004f9f6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f9fa:	681b      	ldr	r3, [r3, #0]
d004f9fc:	920e      	str	r2, [sp, #56]	; 0x38
d004f9fe:	edcd 7a10 	vstr	s15, [sp, #64]	; 0x40
d004fa02:	930f      	str	r3, [sp, #60]	; 0x3c
d004fa04:	eddd 7a10 	vldr	s15, [sp, #64]	; 0x40
d004fa08:	eef4 1ae7 	vcmpe.f32	s3, s15
d004fa0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa10:	dd02      	ble.n	d004fa18 <fillTriangleDitherBayerT+0x27c>
d004fa12:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004fa14:	3301      	adds	r3, #1
d004fa16:	930c      	str	r3, [sp, #48]	; 0x30
d004fa18:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004fa1c:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004fa20:	eef4 2ac7 	vcmpe.f32	s5, s14
d004fa24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa28:	dc04      	bgt.n	d004fa34 <fillTriangleDitherBayerT+0x298>
d004fa2a:	ee17 3a90 	vmov	r3, s15
d004fa2e:	3b01      	subs	r3, #1
d004fa30:	ee07 3a90 	vmov	s15, r3
d004fa34:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004fa36:	ee17 2a90 	vmov	r2, s15
d004fa3a:	980e      	ldr	r0, [sp, #56]	; 0x38
d004fa3c:	4293      	cmp	r3, r2
d004fa3e:	bfa8      	it	ge
d004fa40:	4613      	movge	r3, r2
d004fa42:	461a      	mov	r2, r3
d004fa44:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004fa46:	4283      	cmp	r3, r0
d004fa48:	bfb8      	it	lt
d004fa4a:	4603      	movlt	r3, r0
d004fa4c:	4293      	cmp	r3, r2
d004fa4e:	9306      	str	r3, [sp, #24]
d004fa50:	f300 80a1 	bgt.w	d004fb96 <fillTriangleDitherBayerT+0x3fa>
d004fa54:	ee07 3a90 	vmov	s15, r3
d004fa58:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004fa5c:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004fa60:	4916      	ldr	r1, [pc, #88]	; (d004fabc <fillTriangleDitherBayerT+0x320>)
d004fa62:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fa66:	ed9d ba12 	vldr	s22, [sp, #72]	; 0x48
d004fa6a:	015b      	lsls	r3, r3, #5
d004fa6c:	eddd aa11 	vldr	s21, [sp, #68]	; 0x44
d004fa70:	ed9f 1a15 	vldr	s2, [pc, #84]	; d004fac8 <fillTriangleDitherBayerT+0x32c>
d004fa74:	ee77 7a87 	vadd.f32	s15, s15, s14
d004fa78:	930c      	str	r3, [sp, #48]	; 0x30
d004fa7a:	1c53      	adds	r3, r2, #1
d004fa7c:	eddf 0a10 	vldr	s1, [pc, #64]	; d004fac0 <fillTriangleDitherBayerT+0x324>
d004fa80:	ed9f 6a12 	vldr	s12, [pc, #72]	; d004facc <fillTriangleDitherBayerT+0x330>
d004fa84:	ee77 3ae3 	vsub.f32	s7, s15, s7
d004fa88:	930a      	str	r3, [sp, #40]	; 0x28
d004fa8a:	ee77 1ae1 	vsub.f32	s3, s15, s3
d004fa8e:	680b      	ldr	r3, [r1, #0]
d004fa90:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
d004fa94:	eee8 4aa3 	vfma.f32	s9, s17, s7
d004fa98:	930b      	str	r3, [sp, #44]	; 0x2c
d004fa9a:	eea9 8a23 	vfma.f32	s16, s18, s7
d004fa9e:	eea9 5aa3 	vfma.f32	s10, s19, s7
d004faa2:	eddf 3a08 	vldr	s7, [pc, #32]	; d004fac4 <fillTriangleDitherBayerT+0x328>
d004faa6:	eeab 2a21 	vfma.f32	s4, s22, s3
d004faaa:	eeaa 0aa1 	vfma.f32	s0, s21, s3
d004faae:	eea1 4aaf 	vfma.f32	s8, s3, s31
d004fab2:	e04e      	b.n	d004fb52 <fillTriangleDitherBayerT+0x3b6>
d004fab4:	d005a6bc 	.word	0xd005a6bc
d004fab8:	d005a6c0 	.word	0xd005a6c0
d004fabc:	d005a6c4 	.word	0xd005a6c4
d004fac0:	33d6bf95 	.word	0x33d6bf95
d004fac4:	477fff00 	.word	0x477fff00
d004fac8:	38d1b717 	.word	0x38d1b717
d004facc:	00000000 	.word	0x00000000
d004fad0:	eeb0 aa45 	vmov.f32	s20, s10
d004fad4:	eef0 1a48 	vmov.f32	s3, s16
d004fad8:	eef0 7a64 	vmov.f32	s15, s9
d004fadc:	eef0 2a44 	vmov.f32	s5, s8
d004fae0:	eeb0 3a40 	vmov.f32	s6, s0
d004fae4:	eeb0 7a42 	vmov.f32	s14, s4
d004fae8:	eefd 6ac7 	vcvt.s32.f32	s13, s14
d004faec:	f240 13df 	movw	r3, #479	; 0x1df
d004faf0:	ee16 0a90 	vmov	r0, s13
d004faf4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004faf8:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004fafc:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d004fb00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb04:	ee16 5a90 	vmov	r5, s13
d004fb08:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004fb0c:	bfc8      	it	gt
d004fb0e:	3001      	addgt	r0, #1
d004fb10:	eef4 7ae6 	vcmpe.f32	s15, s13
d004fb14:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004fb18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb1c:	bfd8      	it	le
d004fb1e:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d004fb22:	429d      	cmp	r5, r3
d004fb24:	bfa8      	it	ge
d004fb26:	461d      	movge	r5, r3
d004fb28:	42a8      	cmp	r0, r5
d004fb2a:	f340 818a 	ble.w	d004fe42 <fillTriangleDitherBayerT+0x6a6>
d004fb2e:	9b06      	ldr	r3, [sp, #24]
d004fb30:	ee74 4aa8 	vadd.f32	s9, s9, s17
d004fb34:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004fb36:	ee38 8a09 	vadd.f32	s16, s16, s18
d004fb3a:	3301      	adds	r3, #1
d004fb3c:	ee35 5a29 	vadd.f32	s10, s10, s19
d004fb40:	ee32 2a0b 	vadd.f32	s4, s4, s22
d004fb44:	4293      	cmp	r3, r2
d004fb46:	ee30 0a2a 	vadd.f32	s0, s0, s21
d004fb4a:	ee34 4a2f 	vadd.f32	s8, s8, s31
d004fb4e:	9306      	str	r3, [sp, #24]
d004fb50:	d021      	beq.n	d004fb96 <fillTriangleDitherBayerT+0x3fa>
d004fb52:	eef4 4ac2 	vcmpe.f32	s9, s4
d004fb56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb5a:	dcb9      	bgt.n	d004fad0 <fillTriangleDitherBayerT+0x334>
d004fb5c:	eeb0 aa44 	vmov.f32	s20, s8
d004fb60:	eef0 1a40 	vmov.f32	s3, s0
d004fb64:	eef0 7a42 	vmov.f32	s15, s4
d004fb68:	eef0 2a45 	vmov.f32	s5, s10
d004fb6c:	eeb0 3a48 	vmov.f32	s6, s16
d004fb70:	eeb0 7a64 	vmov.f32	s14, s9
d004fb74:	e7b8      	b.n	d004fae8 <fillTriangleDitherBayerT+0x34c>
d004fb76:	eddd 2a15 	vldr	s5, [sp, #84]	; 0x54
d004fb7a:	ed9d 5a16 	vldr	s10, [sp, #88]	; 0x58
d004fb7e:	ed9d 8a17 	vldr	s16, [sp, #92]	; 0x5c
d004fb82:	ed5f 7a2f 	vldr	s15, [pc, #-188]	; d004fac8 <fillTriangleDitherBayerT+0x32c>
d004fb86:	ed9d 7a0b 	vldr	s14, [sp, #44]	; 0x2c
d004fb8a:	eeb4 7ae7 	vcmpe.f32	s14, s15
d004fb8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb92:	f73f af37 	bgt.w	d004fa04 <fillTriangleDitherBayerT+0x268>
d004fb96:	b019      	add	sp, #100	; 0x64
d004fb98:	ecbd 8b10 	vpop	{d8-d15}
d004fb9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004fba0:	eef4 1ae2 	vcmpe.f32	s3, s5
d004fba4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fba8:	f340 8119 	ble.w	d004fdde <fillTriangleDitherBayerT+0x642>
d004fbac:	eef0 0a66 	vmov.f32	s1, s13
d004fbb0:	eeb0 1a43 	vmov.f32	s2, s6
d004fbb4:	eef0 5a62 	vmov.f32	s11, s5
d004fbb8:	eeb0 7a46 	vmov.f32	s14, s12
d004fbbc:	eef0 6a45 	vmov.f32	s13, s10
d004fbc0:	eeb0 3a48 	vmov.f32	s6, s16
d004fbc4:	eef0 2a63 	vmov.f32	s5, s7
d004fbc8:	eeb0 6a64 	vmov.f32	s12, s9
d004fbcc:	eeb0 5a60 	vmov.f32	s10, s1
d004fbd0:	eeb0 8a41 	vmov.f32	s16, s2
d004fbd4:	eef0 3a65 	vmov.f32	s7, s11
d004fbd8:	eef0 4a47 	vmov.f32	s9, s14
d004fbdc:	e687      	b.n	d004f8ee <fillTriangleDitherBayerT+0x152>
d004fbde:	ee07 2a10 	vmov	s14, r2
d004fbe2:	ee8a 1a20 	vdiv.f32	s2, s20, s1
d004fbe6:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004fbea:	9901      	ldr	r1, [sp, #4]
d004fbec:	122b      	asrs	r3, r5, #8
d004fbee:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004fbf2:	930d      	str	r3, [sp, #52]	; 0x34
d004fbf4:	ee72 aa64 	vsub.f32	s21, s4, s9
d004fbf8:	ee30 aa48 	vsub.f32	s20, s0, s16
d004fbfc:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fc00:	ee34 ea45 	vsub.f32	s28, s8, s10
d004fc04:	eeb0 7a67 	vmov.f32	s14, s15
d004fc08:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004fc0c:	ee6a 7a81 	vmul.f32	s15, s21, s2
d004fc10:	ee17 3a10 	vmov	r3, s14
d004fc14:	ee32 7ae1 	vsub.f32	s14, s5, s3
d004fc18:	ee2e ea01 	vmul.f32	s28, s28, s2
d004fc1c:	f383 0204 	usat	r2, #4, r3
d004fc20:	eeb0 ca67 	vmov.f32	s24, s15
d004fc24:	eeb4 7ae5 	vcmpe.f32	s14, s11
d004fc28:	ed8d 7a0b 	vstr	s14, [sp, #44]	; 0x2c
d004fc2c:	9204      	str	r2, [sp, #16]
d004fc2e:	ee6a 7a01 	vmul.f32	s15, s20, s2
d004fc32:	9a03      	ldr	r2, [sp, #12]
d004fc34:	428a      	cmp	r2, r1
d004fc36:	bf18      	it	ne
d004fc38:	2b00      	cmpne	r3, #0
d004fc3a:	eeb0 aa67 	vmov.f32	s20, s15
d004fc3e:	bfd4      	ite	le
d004fc40:	2301      	movle	r3, #1
d004fc42:	2300      	movgt	r3, #0
d004fc44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fc48:	9305      	str	r3, [sp, #20]
d004fc4a:	f73f aeaf 	bgt.w	d004f9ac <fillTriangleDitherBayerT+0x210>
d004fc4e:	ed5f fa61 	vldr	s31, [pc, #-388]	; d004facc <fillTriangleDitherBayerT+0x330>
d004fc52:	edcd fa11 	vstr	s31, [sp, #68]	; 0x44
d004fc56:	edcd fa12 	vstr	s31, [sp, #72]	; 0x48
d004fc5a:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004fc5e:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004fc62:	eeb4 7ae3 	vcmpe.f32	s14, s7
d004fc66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fc6a:	d504      	bpl.n	d004fc76 <fillTriangleDitherBayerT+0x4da>
d004fc6c:	ee17 3a90 	vmov	r3, s15
d004fc70:	3301      	adds	r3, #1
d004fc72:	ee07 3a90 	vmov	s15, r3
d004fc76:	eebd 7ae1 	vcvt.s32.f32	s14, s3
d004fc7a:	49de      	ldr	r1, [pc, #888]	; (d004fff4 <fillTriangleDitherBayerT+0x858>)
d004fc7c:	ee17 0a90 	vmov	r0, s15
d004fc80:	4add      	ldr	r2, [pc, #884]	; (d004fff8 <fillTriangleDitherBayerT+0x85c>)
d004fc82:	6809      	ldr	r1, [r1, #0]
d004fc84:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d004fc88:	ee17 3a10 	vmov	r3, s14
d004fc8c:	6812      	ldr	r2, [r2, #0]
d004fc8e:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d004fc92:	eef4 1ae6 	vcmpe.f32	s3, s13
d004fc96:	edcd 6a10 	vstr	s13, [sp, #64]	; 0x40
d004fc9a:	910e      	str	r1, [sp, #56]	; 0x38
d004fc9c:	920f      	str	r2, [sp, #60]	; 0x3c
d004fc9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fca2:	bfd8      	it	le
d004fca4:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004fca8:	4288      	cmp	r0, r1
d004fcaa:	bfb8      	it	lt
d004fcac:	4608      	movlt	r0, r1
d004fcae:	4293      	cmp	r3, r2
d004fcb0:	bfa8      	it	ge
d004fcb2:	4613      	movge	r3, r2
d004fcb4:	9002      	str	r0, [sp, #8]
d004fcb6:	4283      	cmp	r3, r0
d004fcb8:	f6ff af63 	blt.w	d004fb82 <fillTriangleDitherBayerT+0x3e6>
d004fcbc:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fcc0:	3301      	adds	r3, #1
d004fcc2:	eef0 aa64 	vmov.f32	s21, s9
d004fcc6:	49cd      	ldr	r1, [pc, #820]	; (d004fffc <fillTriangleDitherBayerT+0x860>)
d004fcc8:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d004fcca:	eef0 da48 	vmov.f32	s27, s16
d004fcce:	ee37 7ae3 	vsub.f32	s14, s15, s7
d004fcd2:	eddd 7a02 	vldr	s15, [sp, #8]
d004fcd6:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d004fcda:	930a      	str	r3, [sp, #40]	; 0x28
d004fcdc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fce0:	680b      	ldr	r3, [r1, #0]
d004fce2:	eef0 ca48 	vmov.f32	s25, s16
d004fce6:	ed8d 8a17 	vstr	s16, [sp, #92]	; 0x5c
d004fcea:	eeb0 ba64 	vmov.f32	s22, s9
d004fcee:	9313      	str	r3, [sp, #76]	; 0x4c
d004fcf0:	ee77 7a87 	vadd.f32	s15, s15, s14
d004fcf4:	0153      	lsls	r3, r2, #5
d004fcf6:	eeb0 7a4c 	vmov.f32	s14, s24
d004fcfa:	eddf bac1 	vldr	s23, [pc, #772]	; d0050000 <fillTriangleDitherBayerT+0x864>
d004fcfe:	eeb0 da45 	vmov.f32	s26, s10
d004fd02:	eddf 6ac0 	vldr	s13, [pc, #768]	; d0050004 <fillTriangleDitherBayerT+0x868>
d004fd06:	eee7 aa8c 	vfma.f32	s21, s15, s24
d004fd0a:	eddf 5abf 	vldr	s11, [pc, #764]	; d0050008 <fillTriangleDitherBayerT+0x86c>
d004fd0e:	eeb0 ca45 	vmov.f32	s24, s10
d004fd12:	9314      	str	r3, [sp, #80]	; 0x50
d004fd14:	eea8 baa7 	vfma.f32	s22, s17, s15
d004fd18:	edcd 2a15 	vstr	s5, [sp, #84]	; 0x54
d004fd1c:	eee9 da27 	vfma.f32	s27, s18, s15
d004fd20:	ed8d 5a16 	vstr	s10, [sp, #88]	; 0x58
d004fd24:	eea9 daa7 	vfma.f32	s26, s19, s15
d004fd28:	eee7 ca8a 	vfma.f32	s25, s15, s20
d004fd2c:	eea7 ca8e 	vfma.f32	s24, s15, s28
d004fd30:	eeb0 8a47 	vmov.f32	s16, s14
d004fd34:	e041      	b.n	d004fdba <fillTriangleDitherBayerT+0x61e>
d004fd36:	eeb0 1a4d 	vmov.f32	s2, s26
d004fd3a:	eef0 2a6d 	vmov.f32	s5, s27
d004fd3e:	eef0 7a4b 	vmov.f32	s15, s22
d004fd42:	eeb0 3a4c 	vmov.f32	s6, s24
d004fd46:	eeb0 5a6c 	vmov.f32	s10, s25
d004fd4a:	eeb0 7a6a 	vmov.f32	s14, s21
d004fd4e:	eebd 6ac7 	vcvt.s32.f32	s12, s14
d004fd52:	f240 13df 	movw	r3, #479	; 0x1df
d004fd56:	ee16 0a10 	vmov	r0, s12
d004fd5a:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004fd5e:	eeb4 7ac6 	vcmpe.f32	s14, s12
d004fd62:	eebd 6ae7 	vcvt.s32.f32	s12, s15
d004fd66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fd6a:	ee16 5a10 	vmov	r5, s12
d004fd6e:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004fd72:	bfc8      	it	gt
d004fd74:	3001      	addgt	r0, #1
d004fd76:	eef4 7ac6 	vcmpe.f32	s15, s12
d004fd7a:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004fd7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fd82:	bfd8      	it	le
d004fd84:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d004fd88:	429d      	cmp	r5, r3
d004fd8a:	bfa8      	it	ge
d004fd8c:	461d      	movge	r5, r3
d004fd8e:	4285      	cmp	r5, r0
d004fd90:	f280 817f 	bge.w	d0050092 <fillTriangleDitherBayerT+0x8f6>
d004fd94:	9b02      	ldr	r3, [sp, #8]
d004fd96:	ee3b ba28 	vadd.f32	s22, s22, s17
d004fd9a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004fd9c:	ee7d da89 	vadd.f32	s27, s27, s18
d004fda0:	3301      	adds	r3, #1
d004fda2:	ee3d da29 	vadd.f32	s26, s26, s19
d004fda6:	ee7a aa88 	vadd.f32	s21, s21, s16
d004fdaa:	4293      	cmp	r3, r2
d004fdac:	ee7c ca8a 	vadd.f32	s25, s25, s20
d004fdb0:	ee3c ca0e 	vadd.f32	s24, s24, s28
d004fdb4:	9302      	str	r3, [sp, #8]
d004fdb6:	f43f aede 	beq.w	d004fb76 <fillTriangleDitherBayerT+0x3da>
d004fdba:	eeb4 baea 	vcmpe.f32	s22, s21
d004fdbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fdc2:	dcb8      	bgt.n	d004fd36 <fillTriangleDitherBayerT+0x59a>
d004fdc4:	eeb0 1a4c 	vmov.f32	s2, s24
d004fdc8:	eef0 2a6c 	vmov.f32	s5, s25
d004fdcc:	eef0 7a6a 	vmov.f32	s15, s21
d004fdd0:	eeb0 3a4d 	vmov.f32	s6, s26
d004fdd4:	eeb0 5a6d 	vmov.f32	s10, s27
d004fdd8:	eeb0 7a4b 	vmov.f32	s14, s22
d004fddc:	e7b7      	b.n	d004fd4e <fillTriangleDitherBayerT+0x5b2>
d004fdde:	eef0 0a45 	vmov.f32	s1, s10
d004fde2:	eeb0 1a48 	vmov.f32	s2, s16
d004fde6:	eef0 5a63 	vmov.f32	s11, s7
d004fdea:	eeb0 7a64 	vmov.f32	s14, s9
d004fdee:	eeb0 5a44 	vmov.f32	s10, s8
d004fdf2:	eeb0 8a40 	vmov.f32	s16, s0
d004fdf6:	eef0 3a61 	vmov.f32	s7, s3
d004fdfa:	eef0 4a42 	vmov.f32	s9, s4
d004fdfe:	eeb0 4a60 	vmov.f32	s8, s1
d004fe02:	eeb0 0a41 	vmov.f32	s0, s2
d004fe06:	eef0 1a65 	vmov.f32	s3, s11
d004fe0a:	eeb0 2a47 	vmov.f32	s4, s14
d004fe0e:	e551      	b.n	d004f8b4 <fillTriangleDitherBayerT+0x118>
d004fe10:	eef0 0a45 	vmov.f32	s1, s10
d004fe14:	eeb0 1a48 	vmov.f32	s2, s16
d004fe18:	eef0 5a63 	vmov.f32	s11, s7
d004fe1c:	eeb0 7a64 	vmov.f32	s14, s9
d004fe20:	eeb0 5a66 	vmov.f32	s10, s13
d004fe24:	eeb0 8a43 	vmov.f32	s16, s6
d004fe28:	eef0 3a62 	vmov.f32	s7, s5
d004fe2c:	eef0 4a46 	vmov.f32	s9, s12
d004fe30:	eef0 6a60 	vmov.f32	s13, s1
d004fe34:	eeb0 3a41 	vmov.f32	s6, s2
d004fe38:	eef0 2a65 	vmov.f32	s5, s11
d004fe3c:	eeb0 6a47 	vmov.f32	s12, s14
d004fe40:	e538      	b.n	d004f8b4 <fillTriangleDitherBayerT+0x118>
d004fe42:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fe46:	eef4 7ac1 	vcmpe.f32	s15, s2
d004fe4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fe4e:	f340 8240 	ble.w	d00502d2 <fillTriangleDitherBayerT+0xb36>
d004fe52:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004fe56:	ee71 1ac3 	vsub.f32	s3, s3, s6
d004fe5a:	ee3a aa62 	vsub.f32	s20, s20, s5
d004fe5e:	eec5 6aa7 	vdiv.f32	s13, s11, s15
d004fe62:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fe66:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fe6a:	ee07 0a10 	vmov	s14, r0
d004fe6e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004fe72:	ee37 7a27 	vadd.f32	s14, s14, s15
d004fe76:	ee61 1aa6 	vmul.f32	s3, s3, s13
d004fe7a:	ee2a aa26 	vmul.f32	s20, s20, s13
d004fe7e:	eea7 3a21 	vfma.f32	s6, s14, s3
d004fe82:	eee7 2a0a 	vfma.f32	s5, s14, s20
d004fe86:	9c06      	ldr	r4, [sp, #24]
d004fe88:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004fe8c:	4a5f      	ldr	r2, [pc, #380]	; (d005000c <fillTriangleDitherBayerT+0x870>)
d004fe8e:	ebc4 1304 	rsb	r3, r4, r4, lsl #4
d004fe92:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d004fe94:	6817      	ldr	r7, [r2, #0]
d004fe96:	eb00 0280 	add.w	r2, r0, r0, lsl #2
d004fe9a:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d004fe9e:	495c      	ldr	r1, [pc, #368]	; (d0050010 <fillTriangleDitherBayerT+0x874>)
d004fea0:	eb04 1282 	add.w	r2, r4, r2, lsl #6
d004fea4:	f004 0e03 	and.w	lr, r4, #3
d004fea8:	4403      	add	r3, r0
d004feaa:	9502      	str	r5, [sp, #8]
d004feac:	4417      	add	r7, r2
d004feae:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d004feb0:	eb01 0e8e 	add.w	lr, r1, lr, lsl #2
d004feb4:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d004feb8:	461d      	mov	r5, r3
d004feba:	9b02      	ldr	r3, [sp, #8]
d004febc:	eeb4 3ae0 	vcmpe.f32	s6, s1
d004fec0:	eba3 0c00 	sub.w	ip, r3, r0
d004fec4:	f10c 0301 	add.w	r3, ip, #1
d004fec8:	2b30      	cmp	r3, #48	; 0x30
d004feca:	bfa8      	it	ge
d004fecc:	2330      	movge	r3, #48	; 0x30
d004fece:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fed2:	d969      	bls.n	d004ffa8 <fillTriangleDitherBayerT+0x80c>
d004fed4:	f1bc 0f00 	cmp.w	ip, #0
d004fed8:	ee82 7a83 	vdiv.f32	s14, s5, s6
d004fedc:	dd74      	ble.n	d004ffc8 <fillTriangleDitherBayerT+0x82c>
d004fede:	1e5a      	subs	r2, r3, #1
d004fee0:	ee07 2a90 	vmov	s15, r2
d004fee4:	eef0 ba43 	vmov.f32	s23, s6
d004fee8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004feec:	eee7 baa1 	vfma.f32	s23, s15, s3
d004fef0:	eef4 bae0 	vcmpe.f32	s23, s1
d004fef4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fef8:	dd71      	ble.n	d004ffde <fillTriangleDitherBayerT+0x842>
d004fefa:	eeb0 ca62 	vmov.f32	s24, s5
d004fefe:	4a45      	ldr	r2, [pc, #276]	; (d0050014 <fillTriangleDitherBayerT+0x878>)
d004ff00:	009e      	lsls	r6, r3, #2
d004ff02:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d004ff06:	eea7 ca8a 	vfma.f32	s24, s15, s20
d004ff0a:	edd2 7a00 	vldr	s15, [r2]
d004ff0e:	9a05      	ldr	r2, [sp, #20]
d004ff10:	eecc 6a2b 	vdiv.f32	s13, s24, s23
d004ff14:	ee76 6ac7 	vsub.f32	s13, s13, s14
d004ff18:	ee66 6aa7 	vmul.f32	s13, s13, s15
d004ff1c:	2a00      	cmp	r2, #0
d004ff1e:	f000 81c9 	beq.w	d00502b4 <fillTriangleDitherBayerT+0xb18>
d004ff22:	f000 0403 	and.w	r4, r0, #3
d004ff26:	f1a5 0902 	sub.w	r9, r5, #2
d004ff2a:	2100      	movs	r1, #0
d004ff2c:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d004ff30:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004ff34:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004ff38:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d004ff3c:	ee37 7a26 	vadd.f32	s14, s14, s13
d004ff40:	f104 0a01 	add.w	sl, r4, #1
d004ff44:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004ff48:	ee17 2a90 	vmov	r2, s15
d004ff4c:	b292      	uxth	r2, r2
d004ff4e:	4593      	cmp	fp, r2
d004ff50:	d90b      	bls.n	d004ff6a <fillTriangleDitherBayerT+0x7ce>
d004ff52:	f81e b004 	ldrb.w	fp, [lr, r4]
d004ff56:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d004ff5a:	45c3      	cmp	fp, r8
d004ff5c:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004ff60:	db03      	blt.n	d004ff6a <fillTriangleDitherBayerT+0x7ce>
d004ff62:	f8a9 2000 	strh.w	r2, [r9]
d004ff66:	9a01      	ldr	r2, [sp, #4]
d004ff68:	553a      	strb	r2, [r7, r4]
d004ff6a:	3101      	adds	r1, #1
d004ff6c:	f00a 0403 	and.w	r4, sl, #3
d004ff70:	428b      	cmp	r3, r1
d004ff72:	dcdb      	bgt.n	d004ff2c <fillTriangleDitherBayerT+0x790>
d004ff74:	f1bc 0f00 	cmp.w	ip, #0
d004ff78:	441e      	add	r6, r3
d004ff7a:	ea4f 0243 	mov.w	r2, r3, lsl #1
d004ff7e:	ea4f 1686 	mov.w	r6, r6, lsl #6
d004ff82:	bfbc      	itt	lt
d004ff84:	2202      	movlt	r2, #2
d004ff86:	f44f 76a0 	movlt.w	r6, #320	; 0x140
d004ff8a:	4415      	add	r5, r2
d004ff8c:	4437      	add	r7, r6
d004ff8e:	ee07 3a90 	vmov	s15, r3
d004ff92:	4418      	add	r0, r3
d004ff94:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ff98:	eea7 3aa1 	vfma.f32	s6, s15, s3
d004ff9c:	eee7 2a8a 	vfma.f32	s5, s15, s20
d004ffa0:	9b02      	ldr	r3, [sp, #8]
d004ffa2:	4283      	cmp	r3, r0
d004ffa4:	da89      	bge.n	d004feba <fillTriangleDitherBayerT+0x71e>
d004ffa6:	e5c2      	b.n	d004fb2e <fillTriangleDitherBayerT+0x392>
d004ffa8:	ee07 3a90 	vmov	s15, r3
d004ffac:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004ffb0:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d004ffb4:	4418      	add	r0, r3
d004ffb6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ffba:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d004ffbe:	eea7 3aa1 	vfma.f32	s6, s15, s3
d004ffc2:	eee7 2a8a 	vfma.f32	s5, s15, s20
d004ffc6:	e7eb      	b.n	d004ffa0 <fillTriangleDitherBayerT+0x804>
d004ffc8:	9a05      	ldr	r2, [sp, #20]
d004ffca:	f000 0403 	and.w	r4, r0, #3
d004ffce:	b32a      	cbz	r2, d005001c <fillTriangleDitherBayerT+0x880>
d004ffd0:	f1bc 0f00 	cmp.w	ip, #0
d004ffd4:	dbdb      	blt.n	d004ff8e <fillTriangleDitherBayerT+0x7f2>
d004ffd6:	eef0 6a46 	vmov.f32	s13, s12
d004ffda:	009e      	lsls	r6, r3, #2
d004ffdc:	e7a3      	b.n	d004ff26 <fillTriangleDitherBayerT+0x78a>
d004ffde:	9a05      	ldr	r2, [sp, #20]
d004ffe0:	2a00      	cmp	r2, #0
d004ffe2:	f000 816a 	beq.w	d00502ba <fillTriangleDitherBayerT+0xb1e>
d004ffe6:	eef0 6a46 	vmov.f32	s13, s12
d004ffea:	f000 0403 	and.w	r4, r0, #3
d004ffee:	009e      	lsls	r6, r3, #2
d004fff0:	e799      	b.n	d004ff26 <fillTriangleDitherBayerT+0x78a>
d004fff2:	bf00      	nop
d004fff4:	d005a6bc 	.word	0xd005a6bc
d004fff8:	d005a6c0 	.word	0xd005a6c0
d004fffc:	d005a6c4 	.word	0xd005a6c4
d0050000:	33d6bf95 	.word	0x33d6bf95
d0050004:	00000000 	.word	0x00000000
d0050008:	477fff00 	.word	0x477fff00
d005000c:	d00f4b90 	.word	0xd00f4b90
d0050010:	d00578a0 	.word	0xd00578a0
d0050014:	d00578c0 	.word	0xd00578c0
d0050018:	38d1b717 	.word	0x38d1b717
d005001c:	f1bc 0f00 	cmp.w	ip, #0
d0050020:	dbb5      	blt.n	d004ff8e <fillTriangleDitherBayerT+0x7f2>
d0050022:	eef0 6a46 	vmov.f32	s13, s12
d0050026:	009e      	lsls	r6, r3, #2
d0050028:	f1a5 0902 	sub.w	r9, r5, #2
d005002c:	2100      	movs	r1, #0
d005002e:	9507      	str	r5, [sp, #28]
d0050030:	9008      	str	r0, [sp, #32]
d0050032:	9609      	str	r6, [sp, #36]	; 0x24
d0050034:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0050038:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d005003c:	ee77 7aa5 	vadd.f32	s15, s15, s11
d0050040:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0050044:	ee37 7a26 	vadd.f32	s14, s14, s13
d0050048:	f104 0a01 	add.w	sl, r4, #1
d005004c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0050050:	ee17 2a90 	vmov	r2, s15
d0050054:	b292      	uxth	r2, r2
d0050056:	4593      	cmp	fp, r2
d0050058:	d912      	bls.n	d0050080 <fillTriangleDitherBayerT+0x8e4>
d005005a:	f81e b004 	ldrb.w	fp, [lr, r4]
d005005e:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0050062:	45c3      	cmp	fp, r8
d0050064:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0050068:	db0a      	blt.n	d0050080 <fillTriangleDitherBayerT+0x8e4>
d005006a:	9803      	ldr	r0, [sp, #12]
d005006c:	f8a9 2000 	strh.w	r2, [r9]
d0050070:	4605      	mov	r5, r0
d0050072:	9801      	ldr	r0, [sp, #4]
d0050074:	4606      	mov	r6, r0
d0050076:	9804      	ldr	r0, [sp, #16]
d0050078:	4583      	cmp	fp, r0
d005007a:	bfa8      	it	ge
d005007c:	4635      	movge	r5, r6
d005007e:	553d      	strb	r5, [r7, r4]
d0050080:	3101      	adds	r1, #1
d0050082:	f00a 0403 	and.w	r4, sl, #3
d0050086:	428b      	cmp	r3, r1
d0050088:	dcd4      	bgt.n	d0050034 <fillTriangleDitherBayerT+0x898>
d005008a:	9d07      	ldr	r5, [sp, #28]
d005008c:	9808      	ldr	r0, [sp, #32]
d005008e:	9e09      	ldr	r6, [sp, #36]	; 0x24
d0050090:	e770      	b.n	d004ff74 <fillTriangleDitherBayerT+0x7d8>
d0050092:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0050096:	ed1f 6a20 	vldr	s12, [pc, #-128]	; d0050018 <fillTriangleDitherBayerT+0x87c>
d005009a:	eef4 7ac6 	vcmpe.f32	s15, s12
d005009e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00500a2:	f340 811b 	ble.w	d00502dc <fillTriangleDitherBayerT+0xb40>
d00500a6:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00500aa:	ee72 2ac5 	vsub.f32	s5, s5, s10
d00500ae:	ee31 1a43 	vsub.f32	s2, s2, s6
d00500b2:	ee80 6aa7 	vdiv.f32	s12, s1, s15
d00500b6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00500ba:	ee37 7ac7 	vsub.f32	s14, s15, s14
d00500be:	ee07 0a90 	vmov	s15, r0
d00500c2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00500c6:	ee37 7a87 	vadd.f32	s14, s15, s14
d00500ca:	ee62 2a86 	vmul.f32	s5, s5, s12
d00500ce:	ee21 1a06 	vmul.f32	s2, s2, s12
d00500d2:	eea7 5a22 	vfma.f32	s10, s14, s5
d00500d6:	eea7 3a01 	vfma.f32	s6, s14, s2
d00500da:	9902      	ldr	r1, [sp, #8]
d00500dc:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00500e0:	4b81      	ldr	r3, [pc, #516]	; (d00502e8 <fillTriangleDitherBayerT+0xb4c>)
d00500e2:	ebc1 1e01 	rsb	lr, r1, r1, lsl #4
d00500e6:	9c14      	ldr	r4, [sp, #80]	; 0x50
d00500e8:	681f      	ldr	r7, [r3, #0]
d00500ea:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00500ee:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d00500f2:	4a7e      	ldr	r2, [pc, #504]	; (d00502ec <fillTriangleDitherBayerT+0xb50>)
d00500f4:	eb01 1383 	add.w	r3, r1, r3, lsl #6
d00500f8:	f001 0803 	and.w	r8, r1, #3
d00500fc:	4486      	add	lr, r0
d00500fe:	f8dd c034 	ldr.w	ip, [sp, #52]	; 0x34
d0050102:	441f      	add	r7, r3
d0050104:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0050106:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d005010a:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d005010e:	1a2e      	subs	r6, r5, r0
d0050110:	eeb4 5aeb 	vcmpe.f32	s10, s23
d0050114:	1c72      	adds	r2, r6, #1
d0050116:	2a30      	cmp	r2, #48	; 0x30
d0050118:	bfa8      	it	ge
d005011a:	2230      	movge	r2, #48	; 0x30
d005011c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050120:	d969      	bls.n	d00501f6 <fillTriangleDitherBayerT+0xa5a>
d0050122:	2e00      	cmp	r6, #0
d0050124:	ee83 7a05 	vdiv.f32	s14, s6, s10
d0050128:	dd75      	ble.n	d0050216 <fillTriangleDitherBayerT+0xa7a>
d005012a:	1e53      	subs	r3, r2, #1
d005012c:	ee07 3a90 	vmov	s15, r3
d0050130:	eef0 ea45 	vmov.f32	s29, s10
d0050134:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050138:	eee7 eaa2 	vfma.f32	s29, s15, s5
d005013c:	eef4 eaeb 	vcmpe.f32	s29, s23
d0050140:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050144:	f340 80aa 	ble.w	d005029c <fillTriangleDitherBayerT+0xb00>
d0050148:	eeb0 fa43 	vmov.f32	s30, s6
d005014c:	4b68      	ldr	r3, [pc, #416]	; (d00502f0 <fillTriangleDitherBayerT+0xb54>)
d005014e:	0091      	lsls	r1, r2, #2
d0050150:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0050154:	eea7 fa81 	vfma.f32	s30, s15, s2
d0050158:	9106      	str	r1, [sp, #24]
d005015a:	edd3 7a00 	vldr	s15, [r3]
d005015e:	eecf 0a2e 	vdiv.f32	s1, s30, s29
d0050162:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0050166:	ee60 0aa7 	vmul.f32	s1, s1, s15
d005016a:	9b05      	ldr	r3, [sp, #20]
d005016c:	2b00      	cmp	r3, #0
d005016e:	d05e      	beq.n	d005022e <fillTriangleDitherBayerT+0xa92>
d0050170:	f000 0403 	and.w	r4, r0, #3
d0050174:	f1ae 0902 	sub.w	r9, lr, #2
d0050178:	2100      	movs	r1, #0
d005017a:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d005017e:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d0050182:	ee77 7a86 	vadd.f32	s15, s15, s12
d0050186:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d005018a:	ee37 7a20 	vadd.f32	s14, s14, s1
d005018e:	f104 0a01 	add.w	sl, r4, #1
d0050192:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0050196:	ee17 3a90 	vmov	r3, s15
d005019a:	b29b      	uxth	r3, r3
d005019c:	459b      	cmp	fp, r3
d005019e:	d90b      	bls.n	d00501b8 <fillTriangleDitherBayerT+0xa1c>
d00501a0:	f818 b004 	ldrb.w	fp, [r8, r4]
d00501a4:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00501a8:	45e3      	cmp	fp, ip
d00501aa:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00501ae:	db03      	blt.n	d00501b8 <fillTriangleDitherBayerT+0xa1c>
d00501b0:	f8a9 3000 	strh.w	r3, [r9]
d00501b4:	9b01      	ldr	r3, [sp, #4]
d00501b6:	553b      	strb	r3, [r7, r4]
d00501b8:	3101      	adds	r1, #1
d00501ba:	f00a 0403 	and.w	r4, sl, #3
d00501be:	428a      	cmp	r2, r1
d00501c0:	dcdb      	bgt.n	d005017a <fillTriangleDitherBayerT+0x9de>
d00501c2:	9b06      	ldr	r3, [sp, #24]
d00501c4:	2e00      	cmp	r6, #0
d00501c6:	ea4f 0142 	mov.w	r1, r2, lsl #1
d00501ca:	4413      	add	r3, r2
d00501cc:	bfb8      	it	lt
d00501ce:	2102      	movlt	r1, #2
d00501d0:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00501d4:	bfb8      	it	lt
d00501d6:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00501da:	448e      	add	lr, r1
d00501dc:	441f      	add	r7, r3
d00501de:	ee07 2a90 	vmov	s15, r2
d00501e2:	4410      	add	r0, r2
d00501e4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00501e8:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00501ec:	eea7 3a81 	vfma.f32	s6, s15, s2
d00501f0:	4285      	cmp	r5, r0
d00501f2:	da8c      	bge.n	d005010e <fillTriangleDitherBayerT+0x972>
d00501f4:	e5ce      	b.n	d004fd94 <fillTriangleDitherBayerT+0x5f8>
d00501f6:	ee07 2a90 	vmov	s15, r2
d00501fa:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00501fe:	eb0e 0e42 	add.w	lr, lr, r2, lsl #1
d0050202:	4410      	add	r0, r2
d0050204:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050208:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d005020c:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0050210:	eea7 3a81 	vfma.f32	s6, s15, s2
d0050214:	e7ec      	b.n	d00501f0 <fillTriangleDitherBayerT+0xa54>
d0050216:	9b05      	ldr	r3, [sp, #20]
d0050218:	f000 0403 	and.w	r4, r0, #3
d005021c:	2b00      	cmp	r3, #0
d005021e:	d042      	beq.n	d00502a6 <fillTriangleDitherBayerT+0xb0a>
d0050220:	2e00      	cmp	r6, #0
d0050222:	d1dc      	bne.n	d00501de <fillTriangleDitherBayerT+0xa42>
d0050224:	0093      	lsls	r3, r2, #2
d0050226:	eef0 0a66 	vmov.f32	s1, s13
d005022a:	9306      	str	r3, [sp, #24]
d005022c:	e7a2      	b.n	d0050174 <fillTriangleDitherBayerT+0x9d8>
d005022e:	f000 0403 	and.w	r4, r0, #3
d0050232:	f1ae 0902 	sub.w	r9, lr, #2
d0050236:	2100      	movs	r1, #0
d0050238:	9507      	str	r5, [sp, #28]
d005023a:	9608      	str	r6, [sp, #32]
d005023c:	9009      	str	r0, [sp, #36]	; 0x24
d005023e:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d0050242:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d0050246:	ee77 7a86 	vadd.f32	s15, s15, s12
d005024a:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d005024e:	ee37 7a20 	vadd.f32	s14, s14, s1
d0050252:	f104 0a01 	add.w	sl, r4, #1
d0050256:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005025a:	ee17 3a90 	vmov	r3, s15
d005025e:	b29b      	uxth	r3, r3
d0050260:	459b      	cmp	fp, r3
d0050262:	d912      	bls.n	d005028a <fillTriangleDitherBayerT+0xaee>
d0050264:	f818 b004 	ldrb.w	fp, [r8, r4]
d0050268:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d005026c:	45e3      	cmp	fp, ip
d005026e:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0050272:	db0a      	blt.n	d005028a <fillTriangleDitherBayerT+0xaee>
d0050274:	9801      	ldr	r0, [sp, #4]
d0050276:	f8a9 3000 	strh.w	r3, [r9]
d005027a:	4605      	mov	r5, r0
d005027c:	9803      	ldr	r0, [sp, #12]
d005027e:	4606      	mov	r6, r0
d0050280:	9804      	ldr	r0, [sp, #16]
d0050282:	4583      	cmp	fp, r0
d0050284:	bfb8      	it	lt
d0050286:	4635      	movlt	r5, r6
d0050288:	553d      	strb	r5, [r7, r4]
d005028a:	3101      	adds	r1, #1
d005028c:	f00a 0403 	and.w	r4, sl, #3
d0050290:	428a      	cmp	r2, r1
d0050292:	dcd4      	bgt.n	d005023e <fillTriangleDitherBayerT+0xaa2>
d0050294:	9d07      	ldr	r5, [sp, #28]
d0050296:	9e08      	ldr	r6, [sp, #32]
d0050298:	9809      	ldr	r0, [sp, #36]	; 0x24
d005029a:	e792      	b.n	d00501c2 <fillTriangleDitherBayerT+0xa26>
d005029c:	0093      	lsls	r3, r2, #2
d005029e:	eef0 0a66 	vmov.f32	s1, s13
d00502a2:	9306      	str	r3, [sp, #24]
d00502a4:	e761      	b.n	d005016a <fillTriangleDitherBayerT+0x9ce>
d00502a6:	2e00      	cmp	r6, #0
d00502a8:	db99      	blt.n	d00501de <fillTriangleDitherBayerT+0xa42>
d00502aa:	0093      	lsls	r3, r2, #2
d00502ac:	eef0 0a66 	vmov.f32	s1, s13
d00502b0:	9306      	str	r3, [sp, #24]
d00502b2:	e7be      	b.n	d0050232 <fillTriangleDitherBayerT+0xa96>
d00502b4:	f000 0403 	and.w	r4, r0, #3
d00502b8:	e6b6      	b.n	d0050028 <fillTriangleDitherBayerT+0x88c>
d00502ba:	eef0 6a46 	vmov.f32	s13, s12
d00502be:	f000 0403 	and.w	r4, r0, #3
d00502c2:	009e      	lsls	r6, r3, #2
d00502c4:	e6b0      	b.n	d0050028 <fillTriangleDitherBayerT+0x88c>
d00502c6:	2310      	movs	r3, #16
d00502c8:	9301      	str	r3, [sp, #4]
d00502ca:	2310      	movs	r3, #16
d00502cc:	9303      	str	r3, [sp, #12]
d00502ce:	f7ff bacd 	b.w	d004f86c <fillTriangleDitherBayerT+0xd0>
d00502d2:	eeb0 aa46 	vmov.f32	s20, s12
d00502d6:	eef0 1a46 	vmov.f32	s3, s12
d00502da:	e5d4      	b.n	d004fe86 <fillTriangleDitherBayerT+0x6ea>
d00502dc:	eeb0 1a66 	vmov.f32	s2, s13
d00502e0:	eef0 2a66 	vmov.f32	s5, s13
d00502e4:	e6f9      	b.n	d00500da <fillTriangleDitherBayerT+0x93e>
d00502e6:	bf00      	nop
d00502e8:	d00f4b90 	.word	0xd00f4b90
d00502ec:	d00578a0 	.word	0xd00578a0
d00502f0:	d00578c0 	.word	0xd00578c0

d00502f4 <vec3Add>:
d00502f4:	ee30 0a21 	vadd.f32	s0, s0, s3
d00502f8:	b08e      	sub	sp, #56	; 0x38
d00502fa:	ee70 0a82 	vadd.f32	s1, s1, s4
d00502fe:	ee31 1a22 	vadd.f32	s2, s2, s5
d0050302:	b00e      	add	sp, #56	; 0x38
d0050304:	4770      	bx	lr
d0050306:	bf00      	nop

d0050308 <vec3Scale>:
d0050308:	ee20 0a21 	vmul.f32	s0, s0, s3
d005030c:	b08c      	sub	sp, #48	; 0x30
d005030e:	ee61 0aa0 	vmul.f32	s1, s3, s1
d0050312:	ee21 1a81 	vmul.f32	s2, s3, s2
d0050316:	b00c      	add	sp, #48	; 0x30
d0050318:	4770      	bx	lr
d005031a:	bf00      	nop

d005031c <vec3Dot>:
d005031c:	ee20 2a82 	vmul.f32	s4, s1, s4
d0050320:	b086      	sub	sp, #24
d0050322:	eea0 2a21 	vfma.f32	s4, s0, s3
d0050326:	eea1 2a22 	vfma.f32	s4, s2, s5
d005032a:	eeb0 0a42 	vmov.f32	s0, s4
d005032e:	b006      	add	sp, #24
d0050330:	4770      	bx	lr
d0050332:	bf00      	nop

d0050334 <vec3Cross>:
d0050334:	eeb0 7a60 	vmov.f32	s14, s1
d0050338:	b08e      	sub	sp, #56	; 0x38
d005033a:	eef0 7a40 	vmov.f32	s15, s0
d005033e:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d0050342:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d0050346:	ee22 0a41 	vnmul.f32	s0, s4, s2
d005034a:	eee1 0a21 	vfma.f32	s1, s2, s3
d005034e:	eee7 6a82 	vfma.f32	s13, s15, s4
d0050352:	eea7 0a22 	vfma.f32	s0, s14, s5
d0050356:	eeb0 1a66 	vmov.f32	s2, s13
d005035a:	b00e      	add	sp, #56	; 0x38
d005035c:	4770      	bx	lr
d005035e:	bf00      	nop

d0050360 <vec3Normalize>:
d0050360:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0050364:	ed9f 7a22 	vldr	s14, [pc, #136]	; d00503f0 <vec3Normalize+0x90>
d0050368:	b08c      	sub	sp, #48	; 0x30
d005036a:	eee0 7a00 	vfma.f32	s15, s0, s0
d005036e:	eee1 7a01 	vfma.f32	s15, s2, s2
d0050372:	eef4 7ac7 	vcmpe.f32	s15, s14
d0050376:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005037a:	d934      	bls.n	d00503e6 <vec3Normalize+0x86>
d005037c:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d00503f4 <vec3Normalize+0x94>
d0050380:	eef4 7a47 	vcmp.f32	s15, s14
d0050384:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050388:	dd06      	ble.n	d0050398 <vec3Normalize+0x38>
d005038a:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d00503f8 <vec3Normalize+0x98>
d005038e:	eef4 7a47 	vcmp.f32	s15, s14
d0050392:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050396:	d418      	bmi.n	d00503ca <vec3Normalize+0x6a>
d0050398:	ee17 2a90 	vmov	r2, s15
d005039c:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00503a0:	4b16      	ldr	r3, [pc, #88]	; (d00503fc <vec3Normalize+0x9c>)
d00503a2:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d00503a6:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00503aa:	ee67 7a86 	vmul.f32	s15, s15, s12
d00503ae:	ee06 3a90 	vmov	s13, r3
d00503b2:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00503b6:	eea6 7ae7 	vfms.f32	s14, s13, s15
d00503ba:	ee67 7a26 	vmul.f32	s15, s14, s13
d00503be:	ee27 0a80 	vmul.f32	s0, s15, s0
d00503c2:	ee67 0aa0 	vmul.f32	s1, s15, s1
d00503c6:	ee27 1a81 	vmul.f32	s2, s15, s2
d00503ca:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d00503ce:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d00503d2:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d00503d6:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d00503da:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d00503de:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d00503e2:	b00c      	add	sp, #48	; 0x30
d00503e4:	4770      	bx	lr
d00503e6:	2300      	movs	r3, #0
d00503e8:	9309      	str	r3, [sp, #36]	; 0x24
d00503ea:	930a      	str	r3, [sp, #40]	; 0x28
d00503ec:	930b      	str	r3, [sp, #44]	; 0x2c
d00503ee:	e7f2      	b.n	d00503d6 <vec3Normalize+0x76>
d00503f0:	358637bd 	.word	0x358637bd
d00503f4:	3f7fbe77 	.word	0x3f7fbe77
d00503f8:	3f8020c5 	.word	0x3f8020c5
d00503fc:	5f3759df 	.word	0x5f3759df

d0050400 <rotateAroundAxis>:
d0050400:	ee62 7a02 	vmul.f32	s15, s4, s4
d0050404:	ed9f 7a51 	vldr	s14, [pc, #324]	; d005054c <rotateAroundAxis+0x14c>
d0050408:	b500      	push	{lr}
d005040a:	eee1 7aa1 	vfma.f32	s15, s3, s3
d005040e:	ed2d 8b0c 	vpush	{d8-d13}
d0050412:	eef0 ca40 	vmov.f32	s25, s0
d0050416:	b08f      	sub	sp, #60	; 0x3c
d0050418:	eeb0 ca60 	vmov.f32	s24, s1
d005041c:	eef0 ba41 	vmov.f32	s23, s2
d0050420:	eee2 7aa2 	vfma.f32	s15, s5, s5
d0050424:	eeb0 da43 	vmov.f32	s26, s6
d0050428:	eef4 7ac7 	vcmpe.f32	s15, s14
d005042c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050430:	d97c      	bls.n	d005052c <rotateAroundAxis+0x12c>
d0050432:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0050550 <rotateAroundAxis+0x150>
d0050436:	eef4 7a47 	vcmp.f32	s15, s14
d005043a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005043e:	dd55      	ble.n	d00504ec <rotateAroundAxis+0xec>
d0050440:	ed9f 7a44 	vldr	s14, [pc, #272]	; d0050554 <rotateAroundAxis+0x154>
d0050444:	eef4 7a47 	vcmp.f32	s15, s14
d0050448:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005044c:	d54e      	bpl.n	d00504ec <rotateAroundAxis+0xec>
d005044e:	eef0 da42 	vmov.f32	s27, s4
d0050452:	eeb0 9a61 	vmov.f32	s18, s3
d0050456:	eeb0 8a62 	vmov.f32	s16, s5
d005045a:	ee60 8a82 	vmul.f32	s17, s1, s4
d005045e:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d0050462:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d0050466:	eeec 8a89 	vfma.f32	s17, s25, s18
d005046a:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d005046e:	eeeb 5aad 	vfma.f32	s11, s23, s27
d0050472:	eeac 6a88 	vfma.f32	s12, s25, s16
d0050476:	eeec 7a09 	vfma.f32	s15, s24, s18
d005047a:	eeeb 8a88 	vfma.f32	s17, s23, s16
d005047e:	eeb0 ba65 	vmov.f32	s22, s11
d0050482:	eeb0 aa46 	vmov.f32	s20, s12
d0050486:	eef0 aa67 	vmov.f32	s21, s15
d005048a:	eeb0 0a4d 	vmov.f32	s0, s26
d005048e:	f006 fa17 	bl	d00568c0 <cosf>
d0050492:	eef0 9a40 	vmov.f32	s19, s0
d0050496:	eeb0 0a4d 	vmov.f32	s0, s26
d005049a:	f006 fbf5 	bl	d0056c88 <sinf>
d005049e:	ee60 5a0b 	vmul.f32	s11, s0, s22
d00504a2:	ee20 6a0a 	vmul.f32	s12, s0, s20
d00504a6:	ee60 7a2a 	vmul.f32	s15, s0, s21
d00504aa:	eee9 5aac 	vfma.f32	s11, s19, s25
d00504ae:	eea9 6a8c 	vfma.f32	s12, s19, s24
d00504b2:	eee9 7aab 	vfma.f32	s15, s19, s23
d00504b6:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00504ba:	ee29 9a28 	vmul.f32	s18, s18, s17
d00504be:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d00504c2:	ee76 9ae9 	vsub.f32	s19, s13, s19
d00504c6:	ee28 8a28 	vmul.f32	s16, s16, s17
d00504ca:	eeb0 0a65 	vmov.f32	s0, s11
d00504ce:	eef0 0a46 	vmov.f32	s1, s12
d00504d2:	eeb0 1a67 	vmov.f32	s2, s15
d00504d6:	eea9 0a89 	vfma.f32	s0, s19, s18
d00504da:	eee9 0a87 	vfma.f32	s1, s19, s14
d00504de:	eea9 1a88 	vfma.f32	s2, s19, s16
d00504e2:	b00f      	add	sp, #60	; 0x3c
d00504e4:	ecbd 8b0c 	vpop	{d8-d13}
d00504e8:	f85d fb04 	ldr.w	pc, [sp], #4
d00504ec:	ee17 2a90 	vmov	r2, s15
d00504f0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00504f4:	4b18      	ldr	r3, [pc, #96]	; (d0050558 <rotateAroundAxis+0x158>)
d00504f6:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d00504fa:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00504fe:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0050502:	ee07 3a10 	vmov	s14, r3
d0050506:	ee67 7a87 	vmul.f32	s15, s15, s14
d005050a:	eea7 8a67 	vfms.f32	s16, s14, s15
d005050e:	ee27 8a08 	vmul.f32	s16, s14, s16
d0050512:	ee62 da08 	vmul.f32	s27, s4, s16
d0050516:	ee21 9a88 	vmul.f32	s18, s3, s16
d005051a:	ee22 8a88 	vmul.f32	s16, s5, s16
d005051e:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d0050522:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d0050526:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d005052a:	e79c      	b.n	d0050466 <rotateAroundAxis+0x66>
d005052c:	eddf 8a0b 	vldr	s17, [pc, #44]	; d005055c <rotateAroundAxis+0x15c>
d0050530:	eef0 aa68 	vmov.f32	s21, s17
d0050534:	eeb0 aa68 	vmov.f32	s20, s17
d0050538:	eeb0 ba68 	vmov.f32	s22, s17
d005053c:	eeb0 8a68 	vmov.f32	s16, s17
d0050540:	eef0 da68 	vmov.f32	s27, s17
d0050544:	eeb0 9a68 	vmov.f32	s18, s17
d0050548:	e79f      	b.n	d005048a <rotateAroundAxis+0x8a>
d005054a:	bf00      	nop
d005054c:	358637bd 	.word	0x358637bd
d0050550:	3f7fbe77 	.word	0x3f7fbe77
d0050554:	3f8020c5 	.word	0x3f8020c5
d0050558:	5f3759df 	.word	0x5f3759df
d005055c:	00000000 	.word	0x00000000

d0050560 <vec3>:
d0050560:	b088      	sub	sp, #32
d0050562:	b008      	add	sp, #32
d0050564:	4770      	bx	lr
d0050566:	bf00      	nop

d0050568 <degrees>:
d0050568:	eddf 7a02 	vldr	s15, [pc, #8]	; d0050574 <degrees+0xc>
d005056c:	ee20 0a27 	vmul.f32	s0, s0, s15
d0050570:	4770      	bx	lr
d0050572:	bf00      	nop
d0050574:	3c8efa35 	.word	0x3c8efa35

d0050578 <powfxt>:
d0050578:	eef5 0a40 	vcmp.f32	s1, #0.0
d005057c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050580:	d040      	beq.n	d0050604 <powfxt+0x8c>
d0050582:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0050586:	eef0 7a40 	vmov.f32	s15, s0
d005058a:	eef4 0a47 	vcmp.f32	s1, s14
d005058e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050592:	d034      	beq.n	d00505fe <powfxt+0x86>
d0050594:	eeb4 0a47 	vcmp.f32	s0, s14
d0050598:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005059c:	d02f      	beq.n	d00505fe <powfxt+0x86>
d005059e:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00505a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505a6:	d030      	beq.n	d005060a <powfxt+0x92>
d00505a8:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00505ac:	eef4 0a66 	vcmp.f32	s1, s13
d00505b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505b4:	d042      	beq.n	d005063c <powfxt+0xc4>
d00505b6:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d00505ba:	eef4 0a66 	vcmp.f32	s1, s13
d00505be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505c2:	d03e      	beq.n	d0050642 <powfxt+0xca>
d00505c4:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d00505c8:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00505cc:	eeb4 6a60 	vcmp.f32	s12, s1
d00505d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505d4:	d022      	beq.n	d005061c <powfxt+0xa4>
d00505d6:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00505da:	b500      	push	{lr}
d00505dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505e0:	b083      	sub	sp, #12
d00505e2:	edcd 0a01 	vstr	s1, [sp, #4]
d00505e6:	d431      	bmi.n	d005064c <powfxt+0xd4>
d00505e8:	f006 fabc 	bl	d0056b64 <logf>
d00505ec:	eddd 0a01 	vldr	s1, [sp, #4]
d00505f0:	ee20 0a20 	vmul.f32	s0, s0, s1
d00505f4:	b003      	add	sp, #12
d00505f6:	f85d eb04 	ldr.w	lr, [sp], #4
d00505fa:	f006 ba3d 	b.w	d0056a78 <expf>
d00505fe:	eeb0 0a67 	vmov.f32	s0, s15
d0050602:	4770      	bx	lr
d0050604:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050608:	4770      	bx	lr
d005060a:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d005060e:	ed9f 0a15 	vldr	s0, [pc, #84]	; d0050664 <powfxt+0xec>
d0050612:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050616:	fe37 0a80 	vselgt.f32	s0, s15, s0
d005061a:	4770      	bx	lr
d005061c:	ee16 3a90 	vmov	r3, s13
d0050620:	2b00      	cmp	r3, #0
d0050622:	db18      	blt.n	d0050656 <powfxt+0xde>
d0050624:	d01b      	beq.n	d005065e <powfxt+0xe6>
d0050626:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005062a:	07da      	lsls	r2, r3, #31
d005062c:	bf48      	it	mi
d005062e:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d0050632:	085b      	lsrs	r3, r3, #1
d0050634:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0050638:	d1f7      	bne.n	d005062a <powfxt+0xb2>
d005063a:	4770      	bx	lr
d005063c:	eeb1 0ae7 	vsqrt.f32	s0, s15
d0050640:	4770      	bx	lr
d0050642:	eef1 6ac0 	vsqrt.f32	s13, s0
d0050646:	ee87 0a26 	vdiv.f32	s0, s14, s13
d005064a:	4770      	bx	lr
d005064c:	ed9f 0a06 	vldr	s0, [pc, #24]	; d0050668 <powfxt+0xf0>
d0050650:	b003      	add	sp, #12
d0050652:	f85d fb04 	ldr.w	pc, [sp], #4
d0050656:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005065a:	425b      	negs	r3, r3
d005065c:	e7e3      	b.n	d0050626 <powfxt+0xae>
d005065e:	eeb0 0a47 	vmov.f32	s0, s14
d0050662:	4770      	bx	lr
d0050664:	7f800000 	.word	0x7f800000
d0050668:	7fc00000 	.word	0x7fc00000

d005066c <worldClear>:
d005066c:	b508      	push	{r3, lr}
d005066e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
d0050672:	2100      	movs	r1, #0
d0050674:	4807      	ldr	r0, [pc, #28]	; (d0050694 <worldClear+0x28>)
d0050676:	f004 fff1 	bl	d005565c <memset>
d005067a:	f001 ffdf 	bl	d005263c <lightsClear>
d005067e:	f7fe f97b 	bl	d004e978 <initDepthBandMem>
d0050682:	f004 f91f 	bl	d00548c4 <sb3dParticlesClear>
d0050686:	f002 fd5b 	bl	d0053140 <initClipScratch>
d005068a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d005068e:	f004 b9e3 	b.w	d0054a58 <sb3dWorldAudioDefaults>
d0050692:	bf00      	nop
d0050694:	d00f4ba0 	.word	0xd00f4ba0

d0050698 <cameraNormalize>:
d0050698:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d005069c:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d00506a0:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00506a4:	b510      	push	{r4, lr}
d00506a6:	4604      	mov	r4, r0
d00506a8:	f7ff fe5a 	bl	d0050360 <vec3Normalize>
d00506ac:	eeb0 7a60 	vmov.f32	s14, s1
d00506b0:	eef0 7a41 	vmov.f32	s15, s2
d00506b4:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00506b8:	ed94 0a06 	vldr	s0, [r4, #24]
d00506bc:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d00506c0:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d00506c4:	edd4 0a07 	vldr	s1, [r4, #28]
d00506c8:	ed94 1a08 	vldr	s2, [r4, #32]
d00506cc:	f7ff fe48 	bl	d0050360 <vec3Normalize>
d00506d0:	eef0 1a40 	vmov.f32	s3, s0
d00506d4:	eeb0 2a60 	vmov.f32	s4, s1
d00506d8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00506dc:	eef0 2a41 	vmov.f32	s5, s2
d00506e0:	edc4 0a07 	vstr	s1, [r4, #28]
d00506e4:	ed84 1a08 	vstr	s2, [r4, #32]
d00506e8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00506ec:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00506f0:	edc4 1a06 	vstr	s3, [r4, #24]
d00506f4:	f7ff fe1e 	bl	d0050334 <vec3Cross>
d00506f8:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00506fc:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050700:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050704:	f7ff fe2c 	bl	d0050360 <vec3Normalize>
d0050708:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005070c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050710:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050714:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050718:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005071c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050720:	f7ff fe08 	bl	d0050334 <vec3Cross>
d0050724:	ed84 0a06 	vstr	s0, [r4, #24]
d0050728:	edc4 0a07 	vstr	s1, [r4, #28]
d005072c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050730:	f7ff fe16 	bl	d0050360 <vec3Normalize>
d0050734:	ed84 0a06 	vstr	s0, [r4, #24]
d0050738:	edc4 0a07 	vstr	s1, [r4, #28]
d005073c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050740:	bd10      	pop	{r4, pc}
d0050742:	bf00      	nop

d0050744 <cameraCreate>:
d0050744:	b510      	push	{r4, lr}
d0050746:	4604      	mov	r4, r0
d0050748:	2260      	movs	r2, #96	; 0x60
d005074a:	4902      	ldr	r1, [pc, #8]	; (d0050754 <cameraCreate+0x10>)
d005074c:	f004 ff78 	bl	d0055640 <memcpy>
d0050750:	4620      	mov	r0, r4
d0050752:	bd10      	pop	{r4, pc}
d0050754:	d00579a0 	.word	0xd00579a0

d0050758 <cameraSetPosition>:
d0050758:	b084      	sub	sp, #16
d005075a:	ed8d 0a01 	vstr	s0, [sp, #4]
d005075e:	edcd 0a02 	vstr	s1, [sp, #8]
d0050762:	ed8d 1a03 	vstr	s2, [sp, #12]
d0050766:	b128      	cbz	r0, d0050774 <cameraSetPosition+0x1c>
d0050768:	aa04      	add	r2, sp, #16
d005076a:	4603      	mov	r3, r0
d005076c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0050770:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0050774:	b004      	add	sp, #16
d0050776:	4770      	bx	lr

d0050778 <cameraRotate>:
d0050778:	2800      	cmp	r0, #0
d005077a:	f000 80a8 	beq.w	d00508ce <cameraRotate+0x156>
d005077e:	b510      	push	{r4, lr}
d0050780:	ed2d 8b04 	vpush	{d8-d9}
d0050784:	edc0 0a04 	vstr	s1, [r0, #16]
d0050788:	b084      	sub	sp, #16
d005078a:	ed80 1a05 	vstr	s2, [r0, #20]
d005078e:	eef0 8a40 	vmov.f32	s17, s0
d0050792:	ed80 0a03 	vstr	s0, [r0, #12]
d0050796:	4604      	mov	r4, r0
d0050798:	eeb0 8a60 	vmov.f32	s16, s1
d005079c:	f006 f890 	bl	d00568c0 <cosf>
d00507a0:	eeb0 1a40 	vmov.f32	s2, s0
d00507a4:	eeb0 0a68 	vmov.f32	s0, s17
d00507a8:	eef0 8a41 	vmov.f32	s17, s2
d00507ac:	f006 fa6c 	bl	d0056c88 <sinf>
d00507b0:	eeb0 9a40 	vmov.f32	s18, s0
d00507b4:	eeb0 0a48 	vmov.f32	s0, s16
d00507b8:	f006 f882 	bl	d00568c0 <cosf>
d00507bc:	eeb0 1a40 	vmov.f32	s2, s0
d00507c0:	eeb0 0a48 	vmov.f32	s0, s16
d00507c4:	eeb0 8a41 	vmov.f32	s16, s2
d00507c8:	f006 fa5e 	bl	d0056c88 <sinf>
d00507cc:	eef0 0a40 	vmov.f32	s1, s0
d00507d0:	ee28 1a88 	vmul.f32	s2, s17, s16
d00507d4:	ee29 9a08 	vmul.f32	s18, s18, s16
d00507d8:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00507dc:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00507e0:	eeb0 0a49 	vmov.f32	s0, s18
d00507e4:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d00507e8:	f7ff fdba 	bl	d0050360 <vec3Normalize>
d00507ec:	eef0 7a41 	vmov.f32	s15, s2
d00507f0:	eeb0 7a60 	vmov.f32	s14, s1
d00507f4:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0050928 <cameraRotate+0x1b0>
d00507f8:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00507fc:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050800:	eeb0 0a41 	vmov.f32	s0, s2
d0050804:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0050808:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d005080c:	f7ff fea8 	bl	d0050560 <vec3>
d0050810:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050814:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050818:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005081c:	f7ff fd8a 	bl	d0050334 <vec3Cross>
d0050820:	eef0 1a40 	vmov.f32	s3, s0
d0050824:	eeb0 2a60 	vmov.f32	s4, s1
d0050828:	ed84 0a06 	vstr	s0, [r4, #24]
d005082c:	eef0 2a41 	vmov.f32	s5, s2
d0050830:	edc4 0a07 	vstr	s1, [r4, #28]
d0050834:	ed84 1a08 	vstr	s2, [r4, #32]
d0050838:	f7ff fd70 	bl	d005031c <vec3Dot>
d005083c:	eddf 7a3b 	vldr	s15, [pc, #236]	; d005092c <cameraRotate+0x1b4>
d0050840:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050844:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050848:	d438      	bmi.n	d00508bc <cameraRotate+0x144>
d005084a:	ed94 0a06 	vldr	s0, [r4, #24]
d005084e:	edd4 0a07 	vldr	s1, [r4, #28]
d0050852:	ed94 1a08 	vldr	s2, [r4, #32]
d0050856:	f7ff fd83 	bl	d0050360 <vec3Normalize>
d005085a:	eef0 1a40 	vmov.f32	s3, s0
d005085e:	ed84 0a06 	vstr	s0, [r4, #24]
d0050862:	eeb0 2a60 	vmov.f32	s4, s1
d0050866:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005086a:	eef0 2a41 	vmov.f32	s5, s2
d005086e:	edc4 0a07 	vstr	s1, [r4, #28]
d0050872:	ed84 1a08 	vstr	s2, [r4, #32]
d0050876:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d005087a:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d005087e:	f7ff fd59 	bl	d0050334 <vec3Cross>
d0050882:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050886:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005088a:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005088e:	f7ff fd67 	bl	d0050360 <vec3Normalize>
d0050892:	ed94 3a05 	vldr	s6, [r4, #20]
d0050896:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005089a:	eeb5 3a40 	vcmp.f32	s6, #0.0
d005089e:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00508a2:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00508a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508aa:	d111      	bne.n	d00508d0 <cameraRotate+0x158>
d00508ac:	4620      	mov	r0, r4
d00508ae:	b004      	add	sp, #16
d00508b0:	ecbd 8b04 	vpop	{d8-d9}
d00508b4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00508b8:	f7ff beee 	b.w	d0050698 <cameraNormalize>
d00508bc:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d0050928 <cameraRotate+0x1b0>
d00508c0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00508c4:	eef0 0a41 	vmov.f32	s1, s2
d00508c8:	f7ff fe4a 	bl	d0050560 <vec3>
d00508cc:	e7c5      	b.n	d005085a <cameraRotate+0xe2>
d00508ce:	4770      	bx	lr
d00508d0:	ed94 0a06 	vldr	s0, [r4, #24]
d00508d4:	edd4 0a07 	vldr	s1, [r4, #28]
d00508d8:	ed94 1a08 	vldr	s2, [r4, #32]
d00508dc:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00508e0:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00508e4:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00508e8:	f7ff fd8a 	bl	d0050400 <rotateAroundAxis>
d00508ec:	ed84 0a06 	vstr	s0, [r4, #24]
d00508f0:	edc4 0a07 	vstr	s1, [r4, #28]
d00508f4:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00508f8:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00508fc:	ed84 1a08 	vstr	s2, [r4, #32]
d0050900:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050904:	ed94 3a05 	vldr	s6, [r4, #20]
d0050908:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005090c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050910:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050914:	f7ff fd74 	bl	d0050400 <rotateAroundAxis>
d0050918:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005091c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050920:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050924:	e7c2      	b.n	d00508ac <cameraRotate+0x134>
d0050926:	bf00      	nop
d0050928:	00000000 	.word	0x00000000
d005092c:	322bcc77 	.word	0x322bcc77

d0050930 <cameraGetRotation>:
d0050930:	b510      	push	{r4, lr}
d0050932:	ed2d 8b04 	vpush	{d8-d9}
d0050936:	b08e      	sub	sp, #56	; 0x38
d0050938:	b100      	cbz	r0, d005093c <cameraGetRotation+0xc>
d005093a:	b169      	cbz	r1, d0050958 <cameraGetRotation+0x28>
d005093c:	2300      	movs	r3, #0
d005093e:	930b      	str	r3, [sp, #44]	; 0x2c
d0050940:	930c      	str	r3, [sp, #48]	; 0x30
d0050942:	930d      	str	r3, [sp, #52]	; 0x34
d0050944:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0050948:	eddd 0a0c 	vldr	s1, [sp, #48]	; 0x30
d005094c:	ed9d 1a0d 	vldr	s2, [sp, #52]	; 0x34
d0050950:	b00e      	add	sp, #56	; 0x38
d0050952:	ecbd 8b04 	vpop	{d8-d9}
d0050956:	bd10      	pop	{r4, pc}
d0050958:	edd0 0a0e 	vldr	s1, [r0, #56]	; 0x38
d005095c:	4604      	mov	r4, r0
d005095e:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0050962:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0050966:	eee0 7a00 	vfma.f32	s15, s0, s0
d005096a:	eeb1 8ae7 	vsqrt.f32	s16, s15
d005096e:	f006 fa2b 	bl	d0056dc8 <atan2f>
d0050972:	eef0 8a40 	vmov.f32	s17, s0
d0050976:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d005097a:	eef0 0a48 	vmov.f32	s1, s16
d005097e:	f006 fa23 	bl	d0056dc8 <atan2f>
d0050982:	ed9f 1a41 	vldr	s2, [pc, #260]	; d0050a88 <cameraGetRotation+0x158>
d0050986:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d005098a:	eeb0 8a40 	vmov.f32	s16, s0
d005098e:	eeb0 0a41 	vmov.f32	s0, s2
d0050992:	f7ff fde5 	bl	d0050560 <vec3>
d0050996:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005099a:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d005099e:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00509a2:	f7ff fcc7 	bl	d0050334 <vec3Cross>
d00509a6:	eef0 1a40 	vmov.f32	s3, s0
d00509aa:	eeb0 2a60 	vmov.f32	s4, s1
d00509ae:	ed8d 0a05 	vstr	s0, [sp, #20]
d00509b2:	eef0 2a41 	vmov.f32	s5, s2
d00509b6:	edcd 0a06 	vstr	s1, [sp, #24]
d00509ba:	ed8d 1a07 	vstr	s2, [sp, #28]
d00509be:	f7ff fcad 	bl	d005031c <vec3Dot>
d00509c2:	eddf 7a32 	vldr	s15, [pc, #200]	; d0050a8c <cameraGetRotation+0x15c>
d00509c6:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00509ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00509ce:	d552      	bpl.n	d0050a76 <cameraGetRotation+0x146>
d00509d0:	ed9f 1a2d 	vldr	s2, [pc, #180]	; d0050a88 <cameraGetRotation+0x158>
d00509d4:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00509d8:	eef0 0a41 	vmov.f32	s1, s2
d00509dc:	f7ff fdc0 	bl	d0050560 <vec3>
d00509e0:	eef0 1a40 	vmov.f32	s3, s0
d00509e4:	ed8d 0a05 	vstr	s0, [sp, #20]
d00509e8:	eeb0 2a60 	vmov.f32	s4, s1
d00509ec:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00509f0:	eef0 2a41 	vmov.f32	s5, s2
d00509f4:	edcd 0a06 	vstr	s1, [sp, #24]
d00509f8:	ed8d 1a07 	vstr	s2, [sp, #28]
d00509fc:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050a00:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050a04:	f7ff fc96 	bl	d0050334 <vec3Cross>
d0050a08:	f7ff fcaa 	bl	d0050360 <vec3Normalize>
d0050a0c:	eef0 6a40 	vmov.f32	s13, s0
d0050a10:	eeb0 7a60 	vmov.f32	s14, s1
d0050a14:	eddd 1a05 	vldr	s3, [sp, #20]
d0050a18:	eef0 7a41 	vmov.f32	s15, s2
d0050a1c:	ed9d 2a06 	vldr	s4, [sp, #24]
d0050a20:	eddd 2a07 	vldr	s5, [sp, #28]
d0050a24:	edd4 0a07 	vldr	s1, [r4, #28]
d0050a28:	ed94 1a08 	vldr	s2, [r4, #32]
d0050a2c:	ed94 0a06 	vldr	s0, [r4, #24]
d0050a30:	edcd 6a08 	vstr	s13, [sp, #32]
d0050a34:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0050a38:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0050a3c:	f7ff fc6e 	bl	d005031c <vec3Dot>
d0050a40:	eeb0 9a40 	vmov.f32	s18, s0
d0050a44:	eddd 1a08 	vldr	s3, [sp, #32]
d0050a48:	ed9d 2a09 	vldr	s4, [sp, #36]	; 0x24
d0050a4c:	eddd 2a0a 	vldr	s5, [sp, #40]	; 0x28
d0050a50:	edd4 0a07 	vldr	s1, [r4, #28]
d0050a54:	ed94 1a08 	vldr	s2, [r4, #32]
d0050a58:	ed94 0a06 	vldr	s0, [r4, #24]
d0050a5c:	f7ff fc5e 	bl	d005031c <vec3Dot>
d0050a60:	eef0 0a49 	vmov.f32	s1, s18
d0050a64:	f006 f9b0 	bl	d0056dc8 <atan2f>
d0050a68:	edcd 8a0b 	vstr	s17, [sp, #44]	; 0x2c
d0050a6c:	ed8d 8a0c 	vstr	s16, [sp, #48]	; 0x30
d0050a70:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d0050a74:	e766      	b.n	d0050944 <cameraGetRotation+0x14>
d0050a76:	ed9d 0a05 	vldr	s0, [sp, #20]
d0050a7a:	eddd 0a06 	vldr	s1, [sp, #24]
d0050a7e:	ed9d 1a07 	vldr	s2, [sp, #28]
d0050a82:	f7ff fc6d 	bl	d0050360 <vec3Normalize>
d0050a86:	e7ab      	b.n	d00509e0 <cameraGetRotation+0xb0>
d0050a88:	00000000 	.word	0x00000000
d0050a8c:	322bcc77 	.word	0x322bcc77

d0050a90 <cameraTurn>:
d0050a90:	2800      	cmp	r0, #0
d0050a92:	f000 8144 	beq.w	d0050d1e <cameraTurn+0x28e>
d0050a96:	b570      	push	{r4, r5, r6, lr}
d0050a98:	4604      	mov	r4, r0
d0050a9a:	ed2d 8b04 	vpush	{d8-d9}
d0050a9e:	eef0 8a40 	vmov.f32	s17, s0
d0050aa2:	b08a      	sub	sp, #40	; 0x28
d0050aa4:	eeb0 9a60 	vmov.f32	s18, s1
d0050aa8:	eeb0 8a41 	vmov.f32	s16, s2
d0050aac:	bb69      	cbnz	r1, d0050b0a <cameraTurn+0x7a>
d0050aae:	f100 0318 	add.w	r3, r0, #24
d0050ab2:	ae01      	add	r6, sp, #4
d0050ab4:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0050ab8:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0050abc:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050ac0:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0050ac4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ac8:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050acc:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0050ad0:	ae04      	add	r6, sp, #16
d0050ad2:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050ad6:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050ada:	ab0a      	add	r3, sp, #40	; 0x28
d0050adc:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0050ae0:	d14a      	bne.n	d0050b78 <cameraTurn+0xe8>
d0050ae2:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050ae6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050aea:	f040 808d 	bne.w	d0050c08 <cameraTurn+0x178>
d0050aee:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050af2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050af6:	f040 80cf 	bne.w	d0050c98 <cameraTurn+0x208>
d0050afa:	4620      	mov	r0, r4
d0050afc:	b00a      	add	sp, #40	; 0x28
d0050afe:	ecbd 8b04 	vpop	{d8-d9}
d0050b02:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050b06:	f7ff bdc7 	b.w	d0050698 <cameraNormalize>
d0050b0a:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0050d20 <cameraTurn+0x290>
d0050b0e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050b12:	eef0 0a41 	vmov.f32	s1, s2
d0050b16:	f7ff fd23 	bl	d0050560 <vec3>
d0050b1a:	eef0 7a41 	vmov.f32	s15, s2
d0050b1e:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0050d20 <cameraTurn+0x290>
d0050b22:	eeb0 7a60 	vmov.f32	s14, s1
d0050b26:	ed8d 0a01 	vstr	s0, [sp, #4]
d0050b2a:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050b2e:	edcd 7a03 	vstr	s15, [sp, #12]
d0050b32:	eeb0 0a41 	vmov.f32	s0, s2
d0050b36:	ed8d 7a02 	vstr	s14, [sp, #8]
d0050b3a:	f7ff fd11 	bl	d0050560 <vec3>
d0050b3e:	eeb0 7a60 	vmov.f32	s14, s1
d0050b42:	eddf 0a77 	vldr	s1, [pc, #476]	; d0050d20 <cameraTurn+0x290>
d0050b46:	eef0 7a41 	vmov.f32	s15, s2
d0050b4a:	ed8d 0a04 	vstr	s0, [sp, #16]
d0050b4e:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0050b52:	eeb0 0a60 	vmov.f32	s0, s1
d0050b56:	ed8d 7a05 	vstr	s14, [sp, #20]
d0050b5a:	edcd 7a06 	vstr	s15, [sp, #24]
d0050b5e:	f7ff fcff 	bl	d0050560 <vec3>
d0050b62:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0050b66:	edcd 0a08 	vstr	s1, [sp, #32]
d0050b6a:	ed8d 0a07 	vstr	s0, [sp, #28]
d0050b6e:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0050b72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b76:	d0b4      	beq.n	d0050ae2 <cameraTurn+0x52>
d0050b78:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050b7c:	eeb0 3a49 	vmov.f32	s6, s18
d0050b80:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050b84:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050b88:	eddd 1a04 	vldr	s3, [sp, #16]
d0050b8c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050b90:	eddd 2a06 	vldr	s5, [sp, #24]
d0050b94:	f7ff fc34 	bl	d0050400 <rotateAroundAxis>
d0050b98:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050b9c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050ba0:	eeb0 3a49 	vmov.f32	s6, s18
d0050ba4:	ed94 0a06 	vldr	s0, [r4, #24]
d0050ba8:	edd4 0a07 	vldr	s1, [r4, #28]
d0050bac:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050bb0:	ed94 1a08 	vldr	s2, [r4, #32]
d0050bb4:	eddd 1a04 	vldr	s3, [sp, #16]
d0050bb8:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050bbc:	eddd 2a06 	vldr	s5, [sp, #24]
d0050bc0:	f7ff fc1e 	bl	d0050400 <rotateAroundAxis>
d0050bc4:	eeb0 3a49 	vmov.f32	s6, s18
d0050bc8:	ed84 0a06 	vstr	s0, [r4, #24]
d0050bcc:	edc4 0a07 	vstr	s1, [r4, #28]
d0050bd0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050bd4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050bd8:	ed84 1a08 	vstr	s2, [r4, #32]
d0050bdc:	eddd 1a04 	vldr	s3, [sp, #16]
d0050be0:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050be4:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050be8:	eddd 2a06 	vldr	s5, [sp, #24]
d0050bec:	f7ff fc08 	bl	d0050400 <rotateAroundAxis>
d0050bf0:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050bf4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050bf8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050bfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c00:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050c04:	f43f af73 	beq.w	d0050aee <cameraTurn+0x5e>
d0050c08:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050c0c:	eeb0 3a68 	vmov.f32	s6, s17
d0050c10:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050c14:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050c18:	eddd 1a01 	vldr	s3, [sp, #4]
d0050c1c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050c20:	eddd 2a03 	vldr	s5, [sp, #12]
d0050c24:	f7ff fbec 	bl	d0050400 <rotateAroundAxis>
d0050c28:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050c2c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050c30:	eeb0 3a68 	vmov.f32	s6, s17
d0050c34:	ed94 0a06 	vldr	s0, [r4, #24]
d0050c38:	edd4 0a07 	vldr	s1, [r4, #28]
d0050c3c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050c40:	ed94 1a08 	vldr	s2, [r4, #32]
d0050c44:	eddd 1a01 	vldr	s3, [sp, #4]
d0050c48:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050c4c:	eddd 2a03 	vldr	s5, [sp, #12]
d0050c50:	f7ff fbd6 	bl	d0050400 <rotateAroundAxis>
d0050c54:	eeb0 3a68 	vmov.f32	s6, s17
d0050c58:	ed84 0a06 	vstr	s0, [r4, #24]
d0050c5c:	edc4 0a07 	vstr	s1, [r4, #28]
d0050c60:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050c64:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050c68:	ed84 1a08 	vstr	s2, [r4, #32]
d0050c6c:	eddd 1a01 	vldr	s3, [sp, #4]
d0050c70:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050c74:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050c78:	eddd 2a03 	vldr	s5, [sp, #12]
d0050c7c:	f7ff fbc0 	bl	d0050400 <rotateAroundAxis>
d0050c80:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050c84:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050c88:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050c8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c90:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050c94:	f43f af31 	beq.w	d0050afa <cameraTurn+0x6a>
d0050c98:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050c9c:	eeb0 3a48 	vmov.f32	s6, s16
d0050ca0:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050ca4:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050ca8:	eddd 1a07 	vldr	s3, [sp, #28]
d0050cac:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050cb0:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050cb4:	f7ff fba4 	bl	d0050400 <rotateAroundAxis>
d0050cb8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050cbc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050cc0:	eeb0 3a48 	vmov.f32	s6, s16
d0050cc4:	ed94 0a06 	vldr	s0, [r4, #24]
d0050cc8:	edd4 0a07 	vldr	s1, [r4, #28]
d0050ccc:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050cd0:	ed94 1a08 	vldr	s2, [r4, #32]
d0050cd4:	eddd 1a07 	vldr	s3, [sp, #28]
d0050cd8:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050cdc:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050ce0:	f7ff fb8e 	bl	d0050400 <rotateAroundAxis>
d0050ce4:	ed84 0a06 	vstr	s0, [r4, #24]
d0050ce8:	edc4 0a07 	vstr	s1, [r4, #28]
d0050cec:	eeb0 3a48 	vmov.f32	s6, s16
d0050cf0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050cf4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050cf8:	ed84 1a08 	vstr	s2, [r4, #32]
d0050cfc:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050d00:	eddd 1a07 	vldr	s3, [sp, #28]
d0050d04:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050d08:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050d0c:	f7ff fb78 	bl	d0050400 <rotateAroundAxis>
d0050d10:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050d14:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050d18:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050d1c:	e6ed      	b.n	d0050afa <cameraTurn+0x6a>
d0050d1e:	4770      	bx	lr
d0050d20:	00000000 	.word	0x00000000

d0050d24 <worldToCamera>:
d0050d24:	b084      	sub	sp, #16
d0050d26:	b510      	push	{r4, lr}
d0050d28:	ed2d 8b02 	vpush	{d8}
d0050d2c:	b0ac      	sub	sp, #176	; 0xb0
d0050d2e:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0050d32:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0050d36:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0050d3a:	f024 041f 	bic.w	r4, r4, #31
d0050d3e:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0050d42:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0050d46:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0050d4a:	2260      	movs	r2, #96	; 0x60
d0050d4c:	4661      	mov	r1, ip
d0050d4e:	4620      	mov	r0, r4
d0050d50:	f004 fc76 	bl	d0055640 <memcpy>
d0050d54:	edd4 7a00 	vldr	s15, [r4]
d0050d58:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0050d5c:	ed94 7a01 	vldr	s14, [r4, #4]
d0050d60:	ee30 0a67 	vsub.f32	s0, s0, s15
d0050d64:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0050d68:	edd4 7a02 	vldr	s15, [r4, #8]
d0050d6c:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0050d70:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0050d74:	edd4 1a06 	vldr	s3, [r4, #24]
d0050d78:	ee31 1a67 	vsub.f32	s2, s2, s15
d0050d7c:	ed94 2a07 	vldr	s4, [r4, #28]
d0050d80:	edd4 2a08 	vldr	s5, [r4, #32]
d0050d84:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0050d88:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0050d8c:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0050d90:	f7ff fac4 	bl	d005031c <vec3Dot>
d0050d94:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0050d98:	eef0 8a40 	vmov.f32	s17, s0
d0050d9c:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0050da0:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0050da4:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0050da8:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0050dac:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0050db0:	f7ff fab4 	bl	d005031c <vec3Dot>
d0050db4:	eeb0 8a40 	vmov.f32	s16, s0
d0050db8:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0050dbc:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0050dc0:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050dc4:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0050dc8:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050dcc:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050dd0:	f7ff faa4 	bl	d005031c <vec3Dot>
d0050dd4:	eef0 0a48 	vmov.f32	s1, s16
d0050dd8:	eeb0 1a40 	vmov.f32	s2, s0
d0050ddc:	eeb0 0a68 	vmov.f32	s0, s17
d0050de0:	b02c      	add	sp, #176	; 0xb0
d0050de2:	ecbd 8b02 	vpop	{d8}
d0050de6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0050dea:	b004      	add	sp, #16
d0050dec:	4770      	bx	lr
d0050dee:	bf00      	nop

d0050df0 <cameraSetRange>:
d0050df0:	b1d8      	cbz	r0, d0050e2a <cameraSetRange+0x3a>
d0050df2:	eddf 7a11 	vldr	s15, [pc, #68]	; d0050e38 <cameraSetRange+0x48>
d0050df6:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0050dfa:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0050dfe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050e02:	da13      	bge.n	d0050e2c <cameraSetRange+0x3c>
d0050e04:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0050e08:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050e0c:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0050e10:	4b0a      	ldr	r3, [pc, #40]	; (d0050e3c <cameraSetRange+0x4c>)
d0050e12:	490b      	ldr	r1, [pc, #44]	; (d0050e40 <cameraSetRange+0x50>)
d0050e14:	4a0b      	ldr	r2, [pc, #44]	; (d0050e44 <cameraSetRange+0x54>)
d0050e16:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0050e1a:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0050e1e:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0050e22:	6483      	str	r3, [r0, #72]	; 0x48
d0050e24:	64c3      	str	r3, [r0, #76]	; 0x4c
d0050e26:	6501      	str	r1, [r0, #80]	; 0x50
d0050e28:	6542      	str	r2, [r0, #84]	; 0x54
d0050e2a:	4770      	bx	lr
d0050e2c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0050e30:	ee70 0a27 	vadd.f32	s1, s0, s15
d0050e34:	e7ec      	b.n	d0050e10 <cameraSetRange+0x20>
d0050e36:	bf00      	nop
d0050e38:	3a83126f 	.word	0x3a83126f
d0050e3c:	43700000 	.word	0x43700000
d0050e40:	43200000 	.word	0x43200000
d0050e44:	3f2aaaab 	.word	0x3f2aaaab

d0050e48 <cameraMove>:
d0050e48:	b3a8      	cbz	r0, d0050eb6 <cameraMove+0x6e>
d0050e4a:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0050e4e:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0050e52:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d0050e56:	ee20 7a87 	vmul.f32	s14, s1, s14
d0050e5a:	edd0 5a06 	vldr	s11, [r0, #24]
d0050e5e:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0050e62:	ed90 6a08 	vldr	s12, [r0, #32]
d0050e66:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0050e6a:	edd0 6a07 	vldr	s13, [r0, #28]
d0050e6e:	eea5 7a80 	vfma.f32	s14, s11, s0
d0050e72:	edd0 4a01 	vldr	s9, [r0, #4]
d0050e76:	eee6 7a80 	vfma.f32	s15, s13, s0
d0050e7a:	ed90 5a02 	vldr	s10, [r0, #8]
d0050e7e:	eee6 0a00 	vfma.f32	s1, s12, s0
d0050e82:	edd0 6a00 	vldr	s13, [r0]
d0050e86:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0050e8a:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0050e8e:	ee37 7a26 	vadd.f32	s14, s14, s13
d0050e92:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0050e96:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0050e9a:	ee70 0a85 	vadd.f32	s1, s1, s10
d0050e9e:	eea5 7a81 	vfma.f32	s14, s11, s2
d0050ea2:	eee6 7a01 	vfma.f32	s15, s12, s2
d0050ea6:	eee6 0a81 	vfma.f32	s1, s13, s2
d0050eaa:	ed80 7a00 	vstr	s14, [r0]
d0050eae:	edc0 7a01 	vstr	s15, [r0, #4]
d0050eb2:	edc0 0a02 	vstr	s1, [r0, #8]
d0050eb6:	4770      	bx	lr

d0050eb8 <entityRotation.part.0>:
d0050eb8:	b5f0      	push	{r4, r5, r6, r7, lr}
d0050eba:	4dde      	ldr	r5, [pc, #888]	; (d0051234 <entityRotation.part.0+0x37c>)
d0050ebc:	ed2d 8b04 	vpush	{d8-d9}
d0050ec0:	eb05 14c0 	add.w	r4, r5, r0, lsl #7
d0050ec4:	eeb0 9a40 	vmov.f32	s18, s0
d0050ec8:	eef0 8a60 	vmov.f32	s17, s1
d0050ecc:	b08b      	sub	sp, #44	; 0x2c
d0050ece:	eeb0 8a41 	vmov.f32	s16, s2
d0050ed2:	2900      	cmp	r1, #0
d0050ed4:	f000 8092 	beq.w	d0050ffc <entityRotation.part.0+0x144>
d0050ed8:	eddf 1ad7 	vldr	s3, [pc, #860]	; d0051238 <entityRotation.part.0+0x380>
d0050edc:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0050ee0:	eeb4 0a61 	vcmp.f32	s0, s3
d0050ee4:	edc4 1a0b 	vstr	s3, [r4, #44]	; 0x2c
d0050ee8:	ed84 2a0a 	vstr	s4, [r4, #40]	; 0x28
d0050eec:	ed84 2a0e 	vstr	s4, [r4, #56]	; 0x38
d0050ef0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ef4:	ed84 2a09 	vstr	s4, [r4, #36]	; 0x24
d0050ef8:	ed8d 2a02 	vstr	s4, [sp, #8]
d0050efc:	ed8d 2a04 	vstr	s4, [sp, #16]
d0050f00:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0050f04:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0050f08:	edc4 1a0d 	vstr	s3, [r4, #52]	; 0x34
d0050f0c:	edc4 1a0f 	vstr	s3, [r4, #60]	; 0x3c
d0050f10:	edc4 1a07 	vstr	s3, [r4, #28]
d0050f14:	edc4 1a08 	vstr	s3, [r4, #32]
d0050f18:	edcd 1a01 	vstr	s3, [sp, #4]
d0050f1c:	edcd 1a03 	vstr	s3, [sp, #12]
d0050f20:	edcd 1a05 	vstr	s3, [sp, #20]
d0050f24:	edcd 1a06 	vstr	s3, [sp, #24]
d0050f28:	edcd 1a07 	vstr	s3, [sp, #28]
d0050f2c:	edcd 1a08 	vstr	s3, [sp, #32]
d0050f30:	f040 80cc 	bne.w	d00510cc <entityRotation.part.0+0x214>
d0050f34:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050f38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f3c:	f040 8116 	bne.w	d005116c <entityRotation.part.0+0x2b4>
d0050f40:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050f44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f48:	f040 8164 	bne.w	d0051214 <entityRotation.part.0+0x35c>
d0050f4c:	ed94 0a07 	vldr	s0, [r4, #28]
d0050f50:	edd4 0a08 	vldr	s1, [r4, #32]
d0050f54:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0050f58:	f7ff fa02 	bl	d0050360 <vec3Normalize>
d0050f5c:	eef0 6a40 	vmov.f32	s13, s0
d0050f60:	eeb0 7a60 	vmov.f32	s14, s1
d0050f64:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0050f68:	eef0 7a41 	vmov.f32	s15, s2
d0050f6c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0050f70:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0050f74:	edc4 6a07 	vstr	s13, [r4, #28]
d0050f78:	ed84 7a08 	vstr	s14, [r4, #32]
d0050f7c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0050f80:	f7ff f9ee 	bl	d0050360 <vec3Normalize>
d0050f84:	eef0 1a40 	vmov.f32	s3, s0
d0050f88:	eeb0 2a60 	vmov.f32	s4, s1
d0050f8c:	ed94 0a07 	vldr	s0, [r4, #28]
d0050f90:	eef0 2a41 	vmov.f32	s5, s2
d0050f94:	edd4 0a08 	vldr	s1, [r4, #32]
d0050f98:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0050f9c:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0050fa0:	edc4 2a0c 	vstr	s5, [r4, #48]	; 0x30
d0050fa4:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0050fa8:	f7ff f9c4 	bl	d0050334 <vec3Cross>
d0050fac:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0050fb0:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0050fb4:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0050fb8:	f7ff f9d2 	bl	d0050360 <vec3Normalize>
d0050fbc:	edd4 1a07 	vldr	s3, [r4, #28]
d0050fc0:	ed94 2a08 	vldr	s4, [r4, #32]
d0050fc4:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0050fc8:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0050fcc:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0050fd0:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0050fd4:	f7ff f9ae 	bl	d0050334 <vec3Cross>
d0050fd8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0050fdc:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0050fe0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0050fe4:	f7ff f9bc 	bl	d0050360 <vec3Normalize>
d0050fe8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0050fec:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0050ff0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0050ff4:	b00b      	add	sp, #44	; 0x2c
d0050ff6:	ecbd 8b04 	vpop	{d8-d9}
d0050ffa:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0050ffc:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0051000:	01c6      	lsls	r6, r0, #7
d0051002:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051006:	f040 8119 	bne.w	d005123c <entityRotation.part.0+0x384>
d005100a:	eef5 8a40 	vcmp.f32	s17, #0.0
d005100e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051012:	f040 816e 	bne.w	d00512f2 <entityRotation.part.0+0x43a>
d0051016:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005101a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005101e:	d095      	beq.n	d0050f4c <entityRotation.part.0+0x94>
d0051020:	19ab      	adds	r3, r5, r6
d0051022:	eeb0 3a48 	vmov.f32	s6, s16
d0051026:	ed94 0a07 	vldr	s0, [r4, #28]
d005102a:	331c      	adds	r3, #28
d005102c:	edd4 0a08 	vldr	s1, [r4, #32]
d0051030:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051034:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051038:	ab0a      	add	r3, sp, #40	; 0x28
d005103a:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005103e:	eddd 1a07 	vldr	s3, [sp, #28]
d0051042:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051046:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d005104a:	f7ff f9d9 	bl	d0050400 <rotateAroundAxis>
d005104e:	eef0 6a40 	vmov.f32	s13, s0
d0051052:	eeb0 7a60 	vmov.f32	s14, s1
d0051056:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005105a:	eef0 7a41 	vmov.f32	s15, s2
d005105e:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051062:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051066:	eeb0 3a48 	vmov.f32	s6, s16
d005106a:	eddd 1a07 	vldr	s3, [sp, #28]
d005106e:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051072:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051076:	edc4 6a07 	vstr	s13, [r4, #28]
d005107a:	ed84 7a08 	vstr	s14, [r4, #32]
d005107e:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051082:	f7ff f9bd 	bl	d0050400 <rotateAroundAxis>
d0051086:	eef0 6a40 	vmov.f32	s13, s0
d005108a:	eeb0 7a60 	vmov.f32	s14, s1
d005108e:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051092:	eef0 7a41 	vmov.f32	s15, s2
d0051096:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005109a:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d005109e:	eeb0 3a48 	vmov.f32	s6, s16
d00510a2:	eddd 1a07 	vldr	s3, [sp, #28]
d00510a6:	ed9d 2a08 	vldr	s4, [sp, #32]
d00510aa:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00510ae:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00510b2:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00510b6:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00510ba:	f7ff f9a1 	bl	d0050400 <rotateAroundAxis>
d00510be:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00510c2:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00510c6:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00510ca:	e73f      	b.n	d0050f4c <entityRotation.part.0+0x94>
d00510cc:	eeb0 1a42 	vmov.f32	s2, s4
d00510d0:	eef0 0a61 	vmov.f32	s1, s3
d00510d4:	eeb0 3a40 	vmov.f32	s6, s0
d00510d8:	eeb0 0a61 	vmov.f32	s0, s3
d00510dc:	eef0 2a61 	vmov.f32	s5, s3
d00510e0:	f7ff f98e 	bl	d0050400 <rotateAroundAxis>
d00510e4:	eeb0 7a60 	vmov.f32	s14, s1
d00510e8:	eef0 6a40 	vmov.f32	s13, s0
d00510ec:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00510f0:	eef0 7a41 	vmov.f32	s15, s2
d00510f4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00510f8:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00510fc:	eeb0 3a49 	vmov.f32	s6, s18
d0051100:	eddd 1a01 	vldr	s3, [sp, #4]
d0051104:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051108:	eddd 2a03 	vldr	s5, [sp, #12]
d005110c:	edc4 6a07 	vstr	s13, [r4, #28]
d0051110:	ed84 7a08 	vstr	s14, [r4, #32]
d0051114:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051118:	f7ff f972 	bl	d0050400 <rotateAroundAxis>
d005111c:	eef0 6a40 	vmov.f32	s13, s0
d0051120:	eeb0 7a60 	vmov.f32	s14, s1
d0051124:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051128:	eef0 7a41 	vmov.f32	s15, s2
d005112c:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051130:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051134:	eeb0 3a49 	vmov.f32	s6, s18
d0051138:	eddd 1a01 	vldr	s3, [sp, #4]
d005113c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051140:	eddd 2a03 	vldr	s5, [sp, #12]
d0051144:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051148:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d005114c:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051150:	f7ff f956 	bl	d0050400 <rotateAroundAxis>
d0051154:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051158:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d005115c:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051160:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051164:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051168:	f43f aeea 	beq.w	d0050f40 <entityRotation.part.0+0x88>
d005116c:	ed94 0a07 	vldr	s0, [r4, #28]
d0051170:	eeb0 3a68 	vmov.f32	s6, s17
d0051174:	edd4 0a08 	vldr	s1, [r4, #32]
d0051178:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005117c:	eddd 1a04 	vldr	s3, [sp, #16]
d0051180:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051184:	eddd 2a06 	vldr	s5, [sp, #24]
d0051188:	f7ff f93a 	bl	d0050400 <rotateAroundAxis>
d005118c:	eef0 6a40 	vmov.f32	s13, s0
d0051190:	eeb0 7a60 	vmov.f32	s14, s1
d0051194:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051198:	eef0 7a41 	vmov.f32	s15, s2
d005119c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00511a0:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00511a4:	eeb0 3a68 	vmov.f32	s6, s17
d00511a8:	eddd 1a04 	vldr	s3, [sp, #16]
d00511ac:	ed9d 2a05 	vldr	s4, [sp, #20]
d00511b0:	eddd 2a06 	vldr	s5, [sp, #24]
d00511b4:	edc4 6a07 	vstr	s13, [r4, #28]
d00511b8:	ed84 7a08 	vstr	s14, [r4, #32]
d00511bc:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00511c0:	f7ff f91e 	bl	d0050400 <rotateAroundAxis>
d00511c4:	eef0 6a40 	vmov.f32	s13, s0
d00511c8:	eeb0 7a60 	vmov.f32	s14, s1
d00511cc:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00511d0:	eef0 7a41 	vmov.f32	s15, s2
d00511d4:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00511d8:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00511dc:	eeb0 3a68 	vmov.f32	s6, s17
d00511e0:	eddd 1a04 	vldr	s3, [sp, #16]
d00511e4:	ed9d 2a05 	vldr	s4, [sp, #20]
d00511e8:	eddd 2a06 	vldr	s5, [sp, #24]
d00511ec:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00511f0:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00511f4:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00511f8:	f7ff f902 	bl	d0050400 <rotateAroundAxis>
d00511fc:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051200:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051204:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051208:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005120c:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051210:	f43f ae9c 	beq.w	d0050f4c <entityRotation.part.0+0x94>
d0051214:	eeb0 3a48 	vmov.f32	s6, s16
d0051218:	eddd 1a07 	vldr	s3, [sp, #28]
d005121c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051220:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051224:	ed94 0a07 	vldr	s0, [r4, #28]
d0051228:	edd4 0a08 	vldr	s1, [r4, #32]
d005122c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051230:	e70b      	b.n	d005104a <entityRotation.part.0+0x192>
d0051232:	bf00      	nop
d0051234:	d00f4ba0 	.word	0xd00f4ba0
d0051238:	00000000 	.word	0x00000000
d005123c:	f104 0334 	add.w	r3, r4, #52	; 0x34
d0051240:	af01      	add	r7, sp, #4
d0051242:	eeb0 3a40 	vmov.f32	s6, s0
d0051246:	edd4 0a08 	vldr	s1, [r4, #32]
d005124a:	ed94 0a07 	vldr	s0, [r4, #28]
d005124e:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051252:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051256:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d005125a:	eddd 1a01 	vldr	s3, [sp, #4]
d005125e:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051262:	eddd 2a03 	vldr	s5, [sp, #12]
d0051266:	f7ff f8cb 	bl	d0050400 <rotateAroundAxis>
d005126a:	eef0 6a40 	vmov.f32	s13, s0
d005126e:	eeb0 7a60 	vmov.f32	s14, s1
d0051272:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051276:	eef0 7a41 	vmov.f32	s15, s2
d005127a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005127e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051282:	eeb0 3a49 	vmov.f32	s6, s18
d0051286:	eddd 1a01 	vldr	s3, [sp, #4]
d005128a:	ed9d 2a02 	vldr	s4, [sp, #8]
d005128e:	eddd 2a03 	vldr	s5, [sp, #12]
d0051292:	edc4 6a07 	vstr	s13, [r4, #28]
d0051296:	ed84 7a08 	vstr	s14, [r4, #32]
d005129a:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005129e:	f7ff f8af 	bl	d0050400 <rotateAroundAxis>
d00512a2:	eef0 6a40 	vmov.f32	s13, s0
d00512a6:	eeb0 7a60 	vmov.f32	s14, s1
d00512aa:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00512ae:	eef0 7a41 	vmov.f32	s15, s2
d00512b2:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00512b6:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00512ba:	eeb0 3a49 	vmov.f32	s6, s18
d00512be:	eddd 1a01 	vldr	s3, [sp, #4]
d00512c2:	ed9d 2a02 	vldr	s4, [sp, #8]
d00512c6:	eddd 2a03 	vldr	s5, [sp, #12]
d00512ca:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00512ce:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00512d2:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00512d6:	f7ff f893 	bl	d0050400 <rotateAroundAxis>
d00512da:	eef5 8a40 	vcmp.f32	s17, #0.0
d00512de:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00512e2:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00512e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00512ea:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00512ee:	f43f ae92 	beq.w	d0051016 <entityRotation.part.0+0x15e>
d00512f2:	19ab      	adds	r3, r5, r6
d00512f4:	af04      	add	r7, sp, #16
d00512f6:	ed94 0a07 	vldr	s0, [r4, #28]
d00512fa:	eeb0 3a68 	vmov.f32	s6, s17
d00512fe:	3328      	adds	r3, #40	; 0x28
d0051300:	edd4 0a08 	vldr	s1, [r4, #32]
d0051304:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051308:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005130c:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0051310:	eddd 1a04 	vldr	s3, [sp, #16]
d0051314:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051318:	eddd 2a06 	vldr	s5, [sp, #24]
d005131c:	f7ff f870 	bl	d0050400 <rotateAroundAxis>
d0051320:	eef0 6a40 	vmov.f32	s13, s0
d0051324:	eeb0 7a60 	vmov.f32	s14, s1
d0051328:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005132c:	eef0 7a41 	vmov.f32	s15, s2
d0051330:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051334:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051338:	eeb0 3a68 	vmov.f32	s6, s17
d005133c:	eddd 1a04 	vldr	s3, [sp, #16]
d0051340:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051344:	eddd 2a06 	vldr	s5, [sp, #24]
d0051348:	edc4 6a07 	vstr	s13, [r4, #28]
d005134c:	ed84 7a08 	vstr	s14, [r4, #32]
d0051350:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051354:	f7ff f854 	bl	d0050400 <rotateAroundAxis>
d0051358:	eef0 6a40 	vmov.f32	s13, s0
d005135c:	eeb0 7a60 	vmov.f32	s14, s1
d0051360:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051364:	eef0 7a41 	vmov.f32	s15, s2
d0051368:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005136c:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051370:	eeb0 3a68 	vmov.f32	s6, s17
d0051374:	eddd 1a04 	vldr	s3, [sp, #16]
d0051378:	ed9d 2a05 	vldr	s4, [sp, #20]
d005137c:	eddd 2a06 	vldr	s5, [sp, #24]
d0051380:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051384:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051388:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005138c:	f7ff f838 	bl	d0050400 <rotateAroundAxis>
d0051390:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051394:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051398:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005139c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00513a0:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00513a4:	f43f add2 	beq.w	d0050f4c <entityRotation.part.0+0x94>
d00513a8:	e63a      	b.n	d0051020 <entityRotation.part.0+0x168>
d00513aa:	bf00      	nop

d00513ac <entityIdValid>:
d00513ac:	28ff      	cmp	r0, #255	; 0xff
d00513ae:	d80a      	bhi.n	d00513c6 <entityIdValid+0x1a>
d00513b0:	4b06      	ldr	r3, [pc, #24]	; (d00513cc <entityIdValid+0x20>)
d00513b2:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d00513b6:	f893 0040 	ldrb.w	r0, [r3, #64]	; 0x40
d00513ba:	b128      	cbz	r0, d00513c8 <entityIdValid+0x1c>
d00513bc:	6998      	ldr	r0, [r3, #24]
d00513be:	3800      	subs	r0, #0
d00513c0:	bf18      	it	ne
d00513c2:	2001      	movne	r0, #1
d00513c4:	4770      	bx	lr
d00513c6:	2000      	movs	r0, #0
d00513c8:	4770      	bx	lr
d00513ca:	bf00      	nop
d00513cc:	d00f4ba0 	.word	0xd00f4ba0

d00513d0 <freeMesh>:
d00513d0:	b1b8      	cbz	r0, d0051402 <freeMesh+0x32>
d00513d2:	b510      	push	{r4, lr}
d00513d4:	4604      	mov	r4, r0
d00513d6:	6800      	ldr	r0, [r0, #0]
d00513d8:	b108      	cbz	r0, d00513de <freeMesh+0xe>
d00513da:	f004 f91b 	bl	d0055614 <free>
d00513de:	6920      	ldr	r0, [r4, #16]
d00513e0:	b108      	cbz	r0, d00513e6 <freeMesh+0x16>
d00513e2:	f004 f917 	bl	d0055614 <free>
d00513e6:	68a0      	ldr	r0, [r4, #8]
d00513e8:	b108      	cbz	r0, d00513ee <freeMesh+0x1e>
d00513ea:	f004 f913 	bl	d0055614 <free>
d00513ee:	2300      	movs	r3, #0
d00513f0:	2200      	movs	r2, #0
d00513f2:	6023      	str	r3, [r4, #0]
d00513f4:	6123      	str	r3, [r4, #16]
d00513f6:	60a3      	str	r3, [r4, #8]
d00513f8:	6063      	str	r3, [r4, #4]
d00513fa:	6163      	str	r3, [r4, #20]
d00513fc:	60e3      	str	r3, [r4, #12]
d00513fe:	61a2      	str	r2, [r4, #24]
d0051400:	bd10      	pop	{r4, pc}
d0051402:	4770      	bx	lr

d0051404 <meshComputeBoundsRadius>:
d0051404:	b1f0      	cbz	r0, d0051444 <meshComputeBoundsRadius+0x40>
d0051406:	6803      	ldr	r3, [r0, #0]
d0051408:	b1e3      	cbz	r3, d0051444 <meshComputeBoundsRadius+0x40>
d005140a:	6842      	ldr	r2, [r0, #4]
d005140c:	2a00      	cmp	r2, #0
d005140e:	dd19      	ble.n	d0051444 <meshComputeBoundsRadius+0x40>
d0051410:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0051414:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d005144c <meshComputeBoundsRadius+0x48>
d0051418:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d005141c:	edd3 7a01 	vldr	s15, [r3, #4]
d0051420:	330c      	adds	r3, #12
d0051422:	ed53 6a03 	vldr	s13, [r3, #-12]
d0051426:	ee67 7aa7 	vmul.f32	s15, s15, s15
d005142a:	ed13 7a01 	vldr	s14, [r3, #-4]
d005142e:	429a      	cmp	r2, r3
d0051430:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0051434:	eee7 7a07 	vfma.f32	s15, s14, s14
d0051438:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d005143c:	d1ee      	bne.n	d005141c <meshComputeBoundsRadius+0x18>
d005143e:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0051442:	4770      	bx	lr
d0051444:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005144c <meshComputeBoundsRadius+0x48>
d0051448:	4770      	bx	lr
d005144a:	bf00      	nop
d005144c:	00000000 	.word	0x00000000

d0051450 <entityWorldSpawn>:
d0051450:	b5f0      	push	{r4, r5, r6, r7, lr}
d0051452:	4d20      	ldr	r5, [pc, #128]	; (d00514d4 <entityWorldSpawn+0x84>)
d0051454:	b085      	sub	sp, #20
d0051456:	2300      	movs	r3, #0
d0051458:	462a      	mov	r2, r5
d005145a:	ed8d 0a01 	vstr	s0, [sp, #4]
d005145e:	edcd 0a02 	vstr	s1, [sp, #8]
d0051462:	ed8d 1a03 	vstr	s2, [sp, #12]
d0051466:	e003      	b.n	d0051470 <entityWorldSpawn+0x20>
d0051468:	3301      	adds	r3, #1
d005146a:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d005146e:	d02c      	beq.n	d00514ca <entityWorldSpawn+0x7a>
d0051470:	f892 4040 	ldrb.w	r4, [r2, #64]	; 0x40
d0051474:	3280      	adds	r2, #128	; 0x80
d0051476:	2c00      	cmp	r4, #0
d0051478:	d1f6      	bne.n	d0051468 <entityWorldSpawn+0x18>
d005147a:	eb05 15c3 	add.w	r5, r5, r3, lsl #7
d005147e:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0051482:	af01      	add	r7, sp, #4
d0051484:	2600      	movs	r6, #0
d0051486:	61a8      	str	r0, [r5, #24]
d0051488:	f105 0e0c 	add.w	lr, r5, #12
d005148c:	62aa      	str	r2, [r5, #40]	; 0x28
d005148e:	ea4f 1cc3 	mov.w	ip, r3, lsl #7
d0051492:	63aa      	str	r2, [r5, #56]	; 0x38
d0051494:	626a      	str	r2, [r5, #36]	; 0x24
d0051496:	62ee      	str	r6, [r5, #44]	; 0x2c
d0051498:	632e      	str	r6, [r5, #48]	; 0x30
d005149a:	636e      	str	r6, [r5, #52]	; 0x34
d005149c:	63ee      	str	r6, [r5, #60]	; 0x3c
d005149e:	61ee      	str	r6, [r5, #28]
d00514a0:	622e      	str	r6, [r5, #32]
d00514a2:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d00514a6:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00514aa:	e88e 0007 	stmia.w	lr, {r0, r1, r2}
d00514ae:	4a0a      	ldr	r2, [pc, #40]	; (d00514d8 <entityWorldSpawn+0x88>)
d00514b0:	f240 1101 	movw	r1, #257	; 0x101
d00514b4:	4618      	mov	r0, r3
d00514b6:	f82c 1002 	strh.w	r1, [ip, r2]
d00514ba:	f885 4042 	strb.w	r4, [r5, #66]	; 0x42
d00514be:	64ae      	str	r6, [r5, #72]	; 0x48
d00514c0:	64ee      	str	r6, [r5, #76]	; 0x4c
d00514c2:	652e      	str	r6, [r5, #80]	; 0x50
d00514c4:	646e      	str	r6, [r5, #68]	; 0x44
d00514c6:	b005      	add	sp, #20
d00514c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00514ca:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00514ce:	4618      	mov	r0, r3
d00514d0:	b005      	add	sp, #20
d00514d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00514d4:	d00f4ba0 	.word	0xd00f4ba0
d00514d8:	d00f4be0 	.word	0xd00f4be0

d00514dc <entitySetPosition>:
d00514dc:	b410      	push	{r4}
d00514de:	28ff      	cmp	r0, #255	; 0xff
d00514e0:	b085      	sub	sp, #20
d00514e2:	ed8d 0a01 	vstr	s0, [sp, #4]
d00514e6:	edcd 0a02 	vstr	s1, [sp, #8]
d00514ea:	ed8d 1a03 	vstr	s2, [sp, #12]
d00514ee:	d812      	bhi.n	d0051516 <entitySetPosition+0x3a>
d00514f0:	4b0b      	ldr	r3, [pc, #44]	; (d0051520 <entitySetPosition+0x44>)
d00514f2:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d00514f6:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d00514fa:	b162      	cbz	r2, d0051516 <entitySetPosition+0x3a>
d00514fc:	699a      	ldr	r2, [r3, #24]
d00514fe:	b152      	cbz	r2, d0051516 <entitySetPosition+0x3a>
d0051500:	f103 040c 	add.w	r4, r3, #12
d0051504:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051508:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d005150c:	aa04      	add	r2, sp, #16
d005150e:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0051512:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0051516:	b005      	add	sp, #20
d0051518:	f85d 4b04 	ldr.w	r4, [sp], #4
d005151c:	4770      	bx	lr
d005151e:	bf00      	nop
d0051520:	d00f4ba0 	.word	0xd00f4ba0

d0051524 <entityGetPosition>:
d0051524:	28ff      	cmp	r0, #255	; 0xff
d0051526:	b088      	sub	sp, #32
d0051528:	d80c      	bhi.n	d0051544 <entityGetPosition+0x20>
d005152a:	4b0c      	ldr	r3, [pc, #48]	; (d005155c <entityGetPosition+0x38>)
d005152c:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0051530:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0051534:	b133      	cbz	r3, d0051544 <entityGetPosition+0x20>
d0051536:	6983      	ldr	r3, [r0, #24]
d0051538:	b123      	cbz	r3, d0051544 <entityGetPosition+0x20>
d005153a:	ab08      	add	r3, sp, #32
d005153c:	c807      	ldmia	r0, {r0, r1, r2}
d005153e:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0051542:	e003      	b.n	d005154c <entityGetPosition+0x28>
d0051544:	2300      	movs	r3, #0
d0051546:	9305      	str	r3, [sp, #20]
d0051548:	9306      	str	r3, [sp, #24]
d005154a:	9307      	str	r3, [sp, #28]
d005154c:	ed9d 0a05 	vldr	s0, [sp, #20]
d0051550:	eddd 0a06 	vldr	s1, [sp, #24]
d0051554:	ed9d 1a07 	vldr	s2, [sp, #28]
d0051558:	b008      	add	sp, #32
d005155a:	4770      	bx	lr
d005155c:	d00f4ba0 	.word	0xd00f4ba0

d0051560 <entityGetForward>:
d0051560:	28ff      	cmp	r0, #255	; 0xff
d0051562:	b088      	sub	sp, #32
d0051564:	d80d      	bhi.n	d0051582 <entityGetForward+0x22>
d0051566:	4b0e      	ldr	r3, [pc, #56]	; (d00515a0 <entityGetForward+0x40>)
d0051568:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d005156c:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0051570:	b13b      	cbz	r3, d0051582 <entityGetForward+0x22>
d0051572:	6983      	ldr	r3, [r0, #24]
d0051574:	b12b      	cbz	r3, d0051582 <entityGetForward+0x22>
d0051576:	301c      	adds	r0, #28
d0051578:	ab08      	add	r3, sp, #32
d005157a:	c807      	ldmia	r0, {r0, r1, r2}
d005157c:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0051580:	e005      	b.n	d005158e <entityGetForward+0x2e>
d0051582:	2300      	movs	r3, #0
d0051584:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0051588:	9305      	str	r3, [sp, #20]
d005158a:	9207      	str	r2, [sp, #28]
d005158c:	9306      	str	r3, [sp, #24]
d005158e:	ed9d 0a05 	vldr	s0, [sp, #20]
d0051592:	eddd 0a06 	vldr	s1, [sp, #24]
d0051596:	ed9d 1a07 	vldr	s2, [sp, #28]
d005159a:	b008      	add	sp, #32
d005159c:	4770      	bx	lr
d005159e:	bf00      	nop
d00515a0:	d00f4ba0 	.word	0xd00f4ba0

d00515a4 <entityMoveForward>:
d00515a4:	28ff      	cmp	r0, #255	; 0xff
d00515a6:	d82f      	bhi.n	d0051608 <entityMoveForward+0x64>
d00515a8:	b510      	push	{r4, lr}
d00515aa:	4c18      	ldr	r4, [pc, #96]	; (d005160c <entityMoveForward+0x68>)
d00515ac:	b084      	sub	sp, #16
d00515ae:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d00515b2:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d00515b6:	b32b      	cbz	r3, d0051604 <entityMoveForward+0x60>
d00515b8:	69a3      	ldr	r3, [r4, #24]
d00515ba:	b31b      	cbz	r3, d0051604 <entityMoveForward+0x60>
d00515bc:	f104 030c 	add.w	r3, r4, #12
d00515c0:	eef0 1a40 	vmov.f32	s3, s0
d00515c4:	edd4 0a08 	vldr	s1, [r4, #32]
d00515c8:	ed94 0a07 	vldr	s0, [r4, #28]
d00515cc:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00515d0:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d00515d4:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00515d8:	f7fe fe96 	bl	d0050308 <vec3Scale>
d00515dc:	eef0 1a40 	vmov.f32	s3, s0
d00515e0:	eeb0 2a60 	vmov.f32	s4, s1
d00515e4:	ed94 0a00 	vldr	s0, [r4]
d00515e8:	eef0 2a41 	vmov.f32	s5, s2
d00515ec:	edd4 0a01 	vldr	s1, [r4, #4]
d00515f0:	ed94 1a02 	vldr	s2, [r4, #8]
d00515f4:	f7fe fe7e 	bl	d00502f4 <vec3Add>
d00515f8:	ed84 0a00 	vstr	s0, [r4]
d00515fc:	edc4 0a01 	vstr	s1, [r4, #4]
d0051600:	ed84 1a02 	vstr	s2, [r4, #8]
d0051604:	b004      	add	sp, #16
d0051606:	bd10      	pop	{r4, pc}
d0051608:	4770      	bx	lr
d005160a:	bf00      	nop
d005160c:	d00f4ba0 	.word	0xd00f4ba0

d0051610 <meshColour>:
d0051610:	b150      	cbz	r0, d0051628 <meshColour+0x18>
d0051612:	6903      	ldr	r3, [r0, #16]
d0051614:	b143      	cbz	r3, d0051628 <meshColour+0x18>
d0051616:	6942      	ldr	r2, [r0, #20]
d0051618:	2a00      	cmp	r2, #0
d005161a:	dd05      	ble.n	d0051628 <meshColour+0x18>
d005161c:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d0051620:	7319      	strb	r1, [r3, #12]
d0051622:	3310      	adds	r3, #16
d0051624:	429a      	cmp	r2, r3
d0051626:	d1fb      	bne.n	d0051620 <meshColour+0x10>
d0051628:	4770      	bx	lr
d005162a:	bf00      	nop

d005162c <entityTurn>:
d005162c:	28ff      	cmp	r0, #255	; 0xff
d005162e:	f200 808b 	bhi.w	d0051748 <entityTurn+0x11c>
d0051632:	b570      	push	{r4, r5, r6, lr}
d0051634:	4ccd      	ldr	r4, [pc, #820]	; (d005196c <entityTurn+0x340>)
d0051636:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d005163a:	ed2d 8b04 	vpush	{d8-d9}
d005163e:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0051642:	b08a      	sub	sp, #40	; 0x28
d0051644:	2b00      	cmp	r3, #0
d0051646:	d07b      	beq.n	d0051740 <entityTurn+0x114>
d0051648:	69a3      	ldr	r3, [r4, #24]
d005164a:	2b00      	cmp	r3, #0
d005164c:	d078      	beq.n	d0051740 <entityTurn+0x114>
d005164e:	eef0 8a40 	vmov.f32	s17, s0
d0051652:	eeb0 8a60 	vmov.f32	s16, s1
d0051656:	eeb0 9a41 	vmov.f32	s18, s2
d005165a:	2900      	cmp	r1, #0
d005165c:	d075      	beq.n	d005174a <entityTurn+0x11e>
d005165e:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051662:	2300      	movs	r3, #0
d0051664:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0051668:	9301      	str	r3, [sp, #4]
d005166a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005166e:	9202      	str	r2, [sp, #8]
d0051670:	9204      	str	r2, [sp, #16]
d0051672:	9209      	str	r2, [sp, #36]	; 0x24
d0051674:	9303      	str	r3, [sp, #12]
d0051676:	9305      	str	r3, [sp, #20]
d0051678:	9306      	str	r3, [sp, #24]
d005167a:	9307      	str	r3, [sp, #28]
d005167c:	9308      	str	r3, [sp, #32]
d005167e:	d17e      	bne.n	d005177e <entityTurn+0x152>
d0051680:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051684:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051688:	f040 80cd 	bne.w	d0051826 <entityTurn+0x1fa>
d005168c:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0051690:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051694:	f040 811b 	bne.w	d00518ce <entityTurn+0x2a2>
d0051698:	ed94 0a07 	vldr	s0, [r4, #28]
d005169c:	edd4 0a08 	vldr	s1, [r4, #32]
d00516a0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00516a4:	f7fe fe5c 	bl	d0050360 <vec3Normalize>
d00516a8:	eef0 6a40 	vmov.f32	s13, s0
d00516ac:	eeb0 7a60 	vmov.f32	s14, s1
d00516b0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00516b4:	eef0 7a41 	vmov.f32	s15, s2
d00516b8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00516bc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00516c0:	edc4 6a07 	vstr	s13, [r4, #28]
d00516c4:	ed84 7a08 	vstr	s14, [r4, #32]
d00516c8:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00516cc:	f7fe fe48 	bl	d0050360 <vec3Normalize>
d00516d0:	eef0 1a40 	vmov.f32	s3, s0
d00516d4:	eeb0 2a60 	vmov.f32	s4, s1
d00516d8:	ed94 0a07 	vldr	s0, [r4, #28]
d00516dc:	eef0 2a41 	vmov.f32	s5, s2
d00516e0:	edd4 0a08 	vldr	s1, [r4, #32]
d00516e4:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00516e8:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d00516ec:	edc4 2a0c 	vstr	s5, [r4, #48]	; 0x30
d00516f0:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d00516f4:	f7fe fe1e 	bl	d0050334 <vec3Cross>
d00516f8:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00516fc:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051700:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051704:	f7fe fe2c 	bl	d0050360 <vec3Normalize>
d0051708:	edd4 1a07 	vldr	s3, [r4, #28]
d005170c:	ed94 2a08 	vldr	s4, [r4, #32]
d0051710:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0051714:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051718:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005171c:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051720:	f7fe fe08 	bl	d0050334 <vec3Cross>
d0051724:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0051728:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d005172c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051730:	f7fe fe16 	bl	d0050360 <vec3Normalize>
d0051734:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0051738:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d005173c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051740:	b00a      	add	sp, #40	; 0x28
d0051742:	ecbd 8b04 	vpop	{d8-d9}
d0051746:	bd70      	pop	{r4, r5, r6, pc}
d0051748:	4770      	bx	lr
d005174a:	f104 0334 	add.w	r3, r4, #52	; 0x34
d005174e:	ae01      	add	r6, sp, #4
d0051750:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051754:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0051758:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005175c:	f104 031c 	add.w	r3, r4, #28
d0051760:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051764:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0051768:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d005176c:	ae04      	add	r6, sp, #16
d005176e:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0051772:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051776:	ab0a      	add	r3, sp, #40	; 0x28
d0051778:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005177c:	d080      	beq.n	d0051680 <entityTurn+0x54>
d005177e:	ed94 0a07 	vldr	s0, [r4, #28]
d0051782:	eeb0 3a68 	vmov.f32	s6, s17
d0051786:	edd4 0a08 	vldr	s1, [r4, #32]
d005178a:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005178e:	eddd 1a01 	vldr	s3, [sp, #4]
d0051792:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051796:	eddd 2a03 	vldr	s5, [sp, #12]
d005179a:	f7fe fe31 	bl	d0050400 <rotateAroundAxis>
d005179e:	eef0 6a40 	vmov.f32	s13, s0
d00517a2:	eeb0 7a60 	vmov.f32	s14, s1
d00517a6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00517aa:	eef0 7a41 	vmov.f32	s15, s2
d00517ae:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00517b2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00517b6:	eeb0 3a68 	vmov.f32	s6, s17
d00517ba:	eddd 1a01 	vldr	s3, [sp, #4]
d00517be:	ed9d 2a02 	vldr	s4, [sp, #8]
d00517c2:	eddd 2a03 	vldr	s5, [sp, #12]
d00517c6:	edc4 6a07 	vstr	s13, [r4, #28]
d00517ca:	ed84 7a08 	vstr	s14, [r4, #32]
d00517ce:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00517d2:	f7fe fe15 	bl	d0050400 <rotateAroundAxis>
d00517d6:	eef0 6a40 	vmov.f32	s13, s0
d00517da:	eeb0 7a60 	vmov.f32	s14, s1
d00517de:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00517e2:	eef0 7a41 	vmov.f32	s15, s2
d00517e6:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00517ea:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00517ee:	eeb0 3a68 	vmov.f32	s6, s17
d00517f2:	eddd 1a01 	vldr	s3, [sp, #4]
d00517f6:	ed9d 2a02 	vldr	s4, [sp, #8]
d00517fa:	eddd 2a03 	vldr	s5, [sp, #12]
d00517fe:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051802:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051806:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005180a:	f7fe fdf9 	bl	d0050400 <rotateAroundAxis>
d005180e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051812:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051816:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005181a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005181e:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051822:	f43f af33 	beq.w	d005168c <entityTurn+0x60>
d0051826:	ed94 0a07 	vldr	s0, [r4, #28]
d005182a:	eeb0 3a48 	vmov.f32	s6, s16
d005182e:	edd4 0a08 	vldr	s1, [r4, #32]
d0051832:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051836:	eddd 1a04 	vldr	s3, [sp, #16]
d005183a:	ed9d 2a05 	vldr	s4, [sp, #20]
d005183e:	eddd 2a06 	vldr	s5, [sp, #24]
d0051842:	f7fe fddd 	bl	d0050400 <rotateAroundAxis>
d0051846:	eef0 6a40 	vmov.f32	s13, s0
d005184a:	eeb0 7a60 	vmov.f32	s14, s1
d005184e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051852:	eef0 7a41 	vmov.f32	s15, s2
d0051856:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005185a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005185e:	eeb0 3a48 	vmov.f32	s6, s16
d0051862:	eddd 1a04 	vldr	s3, [sp, #16]
d0051866:	ed9d 2a05 	vldr	s4, [sp, #20]
d005186a:	eddd 2a06 	vldr	s5, [sp, #24]
d005186e:	edc4 6a07 	vstr	s13, [r4, #28]
d0051872:	ed84 7a08 	vstr	s14, [r4, #32]
d0051876:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005187a:	f7fe fdc1 	bl	d0050400 <rotateAroundAxis>
d005187e:	eef0 6a40 	vmov.f32	s13, s0
d0051882:	eeb0 7a60 	vmov.f32	s14, s1
d0051886:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d005188a:	eef0 7a41 	vmov.f32	s15, s2
d005188e:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051892:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051896:	eeb0 3a48 	vmov.f32	s6, s16
d005189a:	eddd 1a04 	vldr	s3, [sp, #16]
d005189e:	ed9d 2a05 	vldr	s4, [sp, #20]
d00518a2:	eddd 2a06 	vldr	s5, [sp, #24]
d00518a6:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00518aa:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00518ae:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00518b2:	f7fe fda5 	bl	d0050400 <rotateAroundAxis>
d00518b6:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00518ba:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00518be:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00518c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00518c6:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00518ca:	f43f aee5 	beq.w	d0051698 <entityTurn+0x6c>
d00518ce:	ed94 0a07 	vldr	s0, [r4, #28]
d00518d2:	eeb0 3a49 	vmov.f32	s6, s18
d00518d6:	edd4 0a08 	vldr	s1, [r4, #32]
d00518da:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00518de:	eddd 1a07 	vldr	s3, [sp, #28]
d00518e2:	ed9d 2a08 	vldr	s4, [sp, #32]
d00518e6:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00518ea:	f7fe fd89 	bl	d0050400 <rotateAroundAxis>
d00518ee:	eef0 6a40 	vmov.f32	s13, s0
d00518f2:	eeb0 7a60 	vmov.f32	s14, s1
d00518f6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00518fa:	eef0 7a41 	vmov.f32	s15, s2
d00518fe:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051902:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051906:	eeb0 3a49 	vmov.f32	s6, s18
d005190a:	eddd 1a07 	vldr	s3, [sp, #28]
d005190e:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051912:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051916:	edc4 6a07 	vstr	s13, [r4, #28]
d005191a:	ed84 7a08 	vstr	s14, [r4, #32]
d005191e:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051922:	f7fe fd6d 	bl	d0050400 <rotateAroundAxis>
d0051926:	eef0 6a40 	vmov.f32	s13, s0
d005192a:	eeb0 7a60 	vmov.f32	s14, s1
d005192e:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051932:	eef0 7a41 	vmov.f32	s15, s2
d0051936:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005193a:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d005193e:	eeb0 3a49 	vmov.f32	s6, s18
d0051942:	eddd 1a07 	vldr	s3, [sp, #28]
d0051946:	ed9d 2a08 	vldr	s4, [sp, #32]
d005194a:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d005194e:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051952:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051956:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005195a:	f7fe fd51 	bl	d0050400 <rotateAroundAxis>
d005195e:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051962:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051966:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005196a:	e695      	b.n	d0051698 <entityTurn+0x6c>
d005196c:	d00f4ba0 	.word	0xd00f4ba0

d0051970 <entityRotation>:
d0051970:	28ff      	cmp	r0, #255	; 0xff
d0051972:	d809      	bhi.n	d0051988 <entityRotation+0x18>
d0051974:	4a05      	ldr	r2, [pc, #20]	; (d005198c <entityRotation+0x1c>)
d0051976:	eb02 13c0 	add.w	r3, r2, r0, lsl #7
d005197a:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d005197e:	b11a      	cbz	r2, d0051988 <entityRotation+0x18>
d0051980:	699b      	ldr	r3, [r3, #24]
d0051982:	b10b      	cbz	r3, d0051988 <entityRotation+0x18>
d0051984:	f7ff ba98 	b.w	d0050eb8 <entityRotation.part.0>
d0051988:	4770      	bx	lr
d005198a:	bf00      	nop
d005198c:	d00f4ba0 	.word	0xd00f4ba0

d0051990 <createBox>:
d0051990:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051994:	ed2d 8b04 	vpush	{d8-d9}
d0051998:	b0e1      	sub	sp, #388	; 0x184
d005199a:	f04f 0824 	mov.w	r8, #36	; 0x24
d005199e:	4606      	mov	r6, r0
d00519a0:	2100      	movs	r1, #0
d00519a2:	f20d 1547 	addw	r5, sp, #327	; 0x147
d00519a6:	4642      	mov	r2, r8
d00519a8:	eeb0 8a41 	vmov.f32	s16, s2
d00519ac:	9601      	str	r6, [sp, #4]
d00519ae:	f025 051f 	bic.w	r5, r5, #31
d00519b2:	eeb0 9a40 	vmov.f32	s18, s0
d00519b6:	eef0 8a60 	vmov.f32	s17, s1
d00519ba:	f04f 090c 	mov.w	r9, #12
d00519be:	f105 001c 	add.w	r0, r5, #28
d00519c2:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d00519c6:	f003 fe49 	bl	d005565c <memset>
d00519ca:	2308      	movs	r3, #8
d00519cc:	2060      	movs	r0, #96	; 0x60
d00519ce:	f04f 0b04 	mov.w	fp, #4
d00519d2:	606b      	str	r3, [r5, #4]
d00519d4:	f003 fe16 	bl	d0055604 <malloc>
d00519d8:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d00519dc:	4604      	mov	r4, r0
d00519de:	2060      	movs	r0, #96	; 0x60
d00519e0:	f8c5 900c 	str.w	r9, [r5, #12]
d00519e4:	602c      	str	r4, [r5, #0]
d00519e6:	2604      	movs	r6, #4
d00519e8:	ee29 0a01 	vmul.f32	s0, s18, s2
d00519ec:	ee68 0a81 	vmul.f32	s1, s17, s2
d00519f0:	ee28 1a01 	vmul.f32	s2, s16, s2
d00519f4:	eef1 6a40 	vneg.f32	s13, s0
d00519f8:	ed84 0a03 	vstr	s0, [r4, #12]
d00519fc:	eeb1 7a60 	vneg.f32	s14, s1
d0051a00:	ed84 0a06 	vstr	s0, [r4, #24]
d0051a04:	eef1 7a41 	vneg.f32	s15, s2
d0051a08:	ed84 1a08 	vstr	s2, [r4, #32]
d0051a0c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0051a10:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0051a14:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d0051a18:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d0051a1c:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0051a20:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d0051a24:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d0051a28:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d0051a2c:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d0051a30:	edc4 6a00 	vstr	s13, [r4]
d0051a34:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d0051a38:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d0051a3c:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d0051a40:	ed84 7a01 	vstr	s14, [r4, #4]
d0051a44:	ed84 7a04 	vstr	s14, [r4, #16]
d0051a48:	ed84 7a07 	vstr	s14, [r4, #28]
d0051a4c:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d0051a50:	edc4 7a02 	vstr	s15, [r4, #8]
d0051a54:	edc4 7a05 	vstr	s15, [r4, #20]
d0051a58:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0051a5c:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d0051a60:	f003 fdd0 	bl	d0055604 <malloc>
d0051a64:	4607      	mov	r7, r0
d0051a66:	2260      	movs	r2, #96	; 0x60
d0051a68:	a802      	add	r0, sp, #8
d0051a6a:	4987      	ldr	r1, [pc, #540]	; (d0051c88 <createBox+0x2f8>)
d0051a6c:	60af      	str	r7, [r5, #8]
d0051a6e:	f003 fde7 	bl	d0055640 <memcpy>
d0051a72:	a902      	add	r1, sp, #8
d0051a74:	2260      	movs	r2, #96	; 0x60
d0051a76:	4638      	mov	r0, r7
d0051a78:	f003 fde2 	bl	d0055640 <memcpy>
d0051a7c:	4650      	mov	r0, sl
d0051a7e:	f8c5 9014 	str.w	r9, [r5, #20]
d0051a82:	f003 fdbf 	bl	d0055604 <malloc>
d0051a86:	4607      	mov	r7, r0
d0051a88:	4652      	mov	r2, sl
d0051a8a:	a81a      	add	r0, sp, #104	; 0x68
d0051a8c:	2100      	movs	r1, #0
d0051a8e:	612f      	str	r7, [r5, #16]
d0051a90:	f003 fde4 	bl	d005565c <memset>
d0051a94:	f04f 0c02 	mov.w	ip, #2
d0051a98:	4638      	mov	r0, r7
d0051a9a:	2705      	movs	r7, #5
d0051a9c:	4652      	mov	r2, sl
d0051a9e:	f04f 0903 	mov.w	r9, #3
d0051aa2:	f04f 0a06 	mov.w	sl, #6
d0051aa6:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d0051aaa:	f04f 0e01 	mov.w	lr, #1
d0051aae:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d0051ab2:	f04f 0804 	mov.w	r8, #4
d0051ab6:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d0051aba:	2307      	movs	r3, #7
d0051abc:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d0051ac0:	2122      	movs	r1, #34	; 0x22
d0051ac2:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d0051ac6:	f04f 0c06 	mov.w	ip, #6
d0051aca:	9724      	str	r7, [sp, #144]	; 0x90
d0051acc:	972c      	str	r7, [sp, #176]	; 0xb0
d0051ace:	972f      	str	r7, [sp, #188]	; 0xbc
d0051ad0:	2707      	movs	r7, #7
d0051ad2:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d0051ad6:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d0051ada:	f04f 0905 	mov.w	r9, #5
d0051ade:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d0051ae2:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d0051ae6:	f04f 0a01 	mov.w	sl, #1
d0051aea:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d0051aee:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d0051af2:	f04f 0801 	mov.w	r8, #1
d0051af6:	933c      	str	r3, [sp, #240]	; 0xf0
d0051af8:	2323      	movs	r3, #35	; 0x23
d0051afa:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d0051afe:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d0051b02:	f04f 0e25 	mov.w	lr, #37	; 0x25
d0051b06:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d0051b0a:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d0051b0e:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d0051b12:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d0051b16:	a91a      	add	r1, sp, #104	; 0x68
d0051b18:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d0051b1c:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d0051b20:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d0051b24:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d0051b28:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d0051b2c:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d0051b30:	f04f 0b06 	mov.w	fp, #6
d0051b34:	2602      	movs	r6, #2
d0051b36:	2706      	movs	r7, #6
d0051b38:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d0051b3c:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d0051b40:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d0051b44:	f04f 0802 	mov.w	r8, #2
d0051b48:	f04f 0907 	mov.w	r9, #7
d0051b4c:	f04f 0a03 	mov.w	sl, #3
d0051b50:	f04f 0b07 	mov.w	fp, #7
d0051b54:	2603      	movs	r6, #3
d0051b56:	2704      	movs	r7, #4
d0051b58:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d0051b5c:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d0051b60:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d0051b64:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d0051b68:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d0051b6c:	f003 fd68 	bl	d0055640 <memcpy>
d0051b70:	edd4 7a01 	vldr	s15, [r4, #4]
d0051b74:	ed94 6a04 	vldr	s12, [r4, #16]
d0051b78:	4628      	mov	r0, r5
d0051b7a:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d0051b7e:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0051b82:	ed94 7a07 	vldr	s14, [r4, #28]
d0051b86:	ee66 7a06 	vmul.f32	s15, s12, s12
d0051b8a:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d0051b8e:	ee25 4aa5 	vmul.f32	s8, s11, s11
d0051b92:	ed94 3a00 	vldr	s6, [r4]
d0051b96:	ee27 7a07 	vmul.f32	s14, s14, s14
d0051b9a:	edd4 3a03 	vldr	s7, [r4, #12]
d0051b9e:	ee66 4a06 	vmul.f32	s9, s12, s12
d0051ba2:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d0051ba6:	eee3 6a03 	vfma.f32	s13, s6, s6
d0051baa:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d0051bae:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0051bb2:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d0051bb6:	ee25 5a05 	vmul.f32	s10, s10, s10
d0051bba:	edd4 2a06 	vldr	s5, [r4, #24]
d0051bbe:	ee65 5aa5 	vmul.f32	s11, s11, s11
d0051bc2:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d0051bc6:	ee26 6a06 	vmul.f32	s12, s12, s12
d0051bca:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d0051bce:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0051bd2:	eea3 4a03 	vfma.f32	s8, s6, s6
d0051bd6:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0051bda:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d0051bde:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0051be2:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d0051be6:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0051bea:	eee3 5a03 	vfma.f32	s11, s6, s6
d0051bee:	ed94 3a02 	vldr	s6, [r4, #8]
d0051bf2:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0051bf6:	edd4 3a05 	vldr	s7, [r4, #20]
d0051bfa:	eee3 6a03 	vfma.f32	s13, s6, s6
d0051bfe:	edd4 2a08 	vldr	s5, [r4, #32]
d0051c02:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d0051c06:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0051c0a:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d0051c0e:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0051c12:	eea3 4a03 	vfma.f32	s8, s6, s6
d0051c16:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d0051c1a:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0051c1e:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d0051c22:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d0051c26:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0051c2a:	eee3 5a03 	vfma.f32	s11, s6, s6
d0051c2e:	ed9f 3a17 	vldr	s6, [pc, #92]	; d0051c8c <createBox+0x2fc>
d0051c32:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0051c36:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d0051c3a:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d0051c3e:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d0051c42:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d0051c46:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d0051c4a:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0051c4e:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0051c52:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d0051c56:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0051c5a:	ed85 7a06 	vstr	s14, [r5, #24]
d0051c5e:	f7fc fe73 	bl	d004e948 <meshSetDefaultMaterial>
d0051c62:	9e01      	ldr	r6, [sp, #4]
d0051c64:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051c66:	4634      	mov	r4, r6
d0051c68:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051c6a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051c6c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051c6e:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051c70:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051c72:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051c76:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0051c7a:	4630      	mov	r0, r6
d0051c7c:	b061      	add	sp, #388	; 0x184
d0051c7e:	ecbd 8b04 	vpop	{d8-d9}
d0051c82:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051c86:	bf00      	nop
d0051c88:	d0057a00 	.word	0xd0057a00
d0051c8c:	00000000 	.word	0x00000000

d0051c90 <createTorus>:
d0051c90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051c94:	ed2d 8b0a 	vpush	{d8-d12}
d0051c98:	b09d      	sub	sp, #116	; 0x74
d0051c9a:	4616      	mov	r6, r2
d0051c9c:	f101 0a01 	add.w	sl, r1, #1
d0051ca0:	460d      	mov	r5, r1
d0051ca2:	f10d 0437 	add.w	r4, sp, #55	; 0x37
d0051ca6:	4603      	mov	r3, r0
d0051ca8:	fb06 a10a 	mla	r1, r6, sl, sl
d0051cac:	2228      	movs	r2, #40	; 0x28
d0051cae:	f024 041f 	bic.w	r4, r4, #31
d0051cb2:	eeb0 aa40 	vmov.f32	s20, s0
d0051cb6:	9102      	str	r1, [sp, #8]
d0051cb8:	2100      	movs	r1, #0
d0051cba:	f104 0018 	add.w	r0, r4, #24
d0051cbe:	eef0 8a60 	vmov.f32	s17, s1
d0051cc2:	9305      	str	r3, [sp, #20]
d0051cc4:	2700      	movs	r7, #0
d0051cc6:	9500      	str	r5, [sp, #0]
d0051cc8:	f003 fcc8 	bl	d005565c <memset>
d0051ccc:	9a02      	ldr	r2, [sp, #8]
d0051cce:	fb06 f505 	mul.w	r5, r6, r5
d0051cd2:	60e7      	str	r7, [r4, #12]
d0051cd4:	eb02 0042 	add.w	r0, r2, r2, lsl #1
d0051cd8:	6062      	str	r2, [r4, #4]
d0051cda:	006b      	lsls	r3, r5, #1
d0051cdc:	9403      	str	r4, [sp, #12]
d0051cde:	0080      	lsls	r0, r0, #2
d0051ce0:	6163      	str	r3, [r4, #20]
d0051ce2:	f003 fc8f 	bl	d0055604 <malloc>
d0051ce6:	4603      	mov	r3, r0
d0051ce8:	0168      	lsls	r0, r5, #5
d0051cea:	9d03      	ldr	r5, [sp, #12]
d0051cec:	9304      	str	r3, [sp, #16]
d0051cee:	602b      	str	r3, [r5, #0]
d0051cf0:	f003 fc88 	bl	d0055604 <malloc>
d0051cf4:	9b00      	ldr	r3, [sp, #0]
d0051cf6:	60af      	str	r7, [r5, #8]
d0051cf8:	42bb      	cmp	r3, r7
d0051cfa:	9001      	str	r0, [sp, #4]
d0051cfc:	6128      	str	r0, [r5, #16]
d0051cfe:	f2c0 8099 	blt.w	d0051e34 <createTorus+0x1a4>
d0051d02:	ee07 3a90 	vmov	s15, r3
d0051d06:	42be      	cmp	r6, r7
d0051d08:	f106 0401 	add.w	r4, r6, #1
d0051d0c:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0051d10:	ee07 6a90 	vmov	s15, r6
d0051d14:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0051d18:	db5d      	blt.n	d0051dd6 <createTorus+0x146>
d0051d1a:	eddf 7a63 	vldr	s15, [pc, #396]	; d0051ea8 <createTorus+0x218>
d0051d1e:	eb04 0844 	add.w	r8, r4, r4, lsl #1
d0051d22:	ed9f 9a62 	vldr	s18, [pc, #392]	; d0051eac <createTorus+0x21c>
d0051d26:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0051d2a:	eec7 aaa6 	vdiv.f32	s21, s15, s13
d0051d2e:	ea4f 0888 	mov.w	r8, r8, lsl #2
d0051d32:	9d04      	ldr	r5, [sp, #16]
d0051d34:	ee87 ca87 	vdiv.f32	s24, s15, s14
d0051d38:	eef0 ba49 	vmov.f32	s23, s18
d0051d3c:	ee38 ba8a 	vadd.f32	s22, s17, s20
d0051d40:	ee29 7a8b 	vmul.f32	s14, s19, s22
d0051d44:	edc5 ba01 	vstr	s23, [r5, #4]
d0051d48:	ee69 7a0b 	vmul.f32	s15, s18, s22
d0051d4c:	ed85 7a00 	vstr	s14, [r5]
d0051d50:	edc5 7a02 	vstr	s15, [r5, #8]
d0051d54:	b346      	cbz	r6, d0051da8 <createTorus+0x118>
d0051d56:	46a9      	mov	r9, r5
d0051d58:	f04f 0b01 	mov.w	fp, #1
d0051d5c:	ee07 ba90 	vmov	s15, fp
d0051d60:	f10b 0b01 	add.w	fp, fp, #1
d0051d64:	f109 090c 	add.w	r9, r9, #12
d0051d68:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0051d6c:	ee6a ca88 	vmul.f32	s25, s21, s16
d0051d70:	eeb0 0a6c 	vmov.f32	s0, s25
d0051d74:	f004 fda4 	bl	d00568c0 <cosf>
d0051d78:	eeb0 8a40 	vmov.f32	s16, s0
d0051d7c:	eeb0 0a6c 	vmov.f32	s0, s25
d0051d80:	f004 ff82 	bl	d0056c88 <sinf>
d0051d84:	eef0 7a4a 	vmov.f32	s15, s20
d0051d88:	ee28 7a80 	vmul.f32	s14, s17, s0
d0051d8c:	455c      	cmp	r4, fp
d0051d8e:	eee8 7a88 	vfma.f32	s15, s17, s16
d0051d92:	ed89 7a01 	vstr	s14, [r9, #4]
d0051d96:	ee27 7aa9 	vmul.f32	s14, s15, s19
d0051d9a:	ee67 7a89 	vmul.f32	s15, s15, s18
d0051d9e:	ed89 7a00 	vstr	s14, [r9]
d0051da2:	edc9 7a02 	vstr	s15, [r9, #8]
d0051da6:	d1d9      	bne.n	d0051d5c <createTorus+0xcc>
d0051da8:	3701      	adds	r7, #1
d0051daa:	4445      	add	r5, r8
d0051dac:	4557      	cmp	r7, sl
d0051dae:	d012      	beq.n	d0051dd6 <createTorus+0x146>
d0051db0:	ee07 7a90 	vmov	s15, r7
d0051db4:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0051db8:	ee28 8a0c 	vmul.f32	s16, s16, s24
d0051dbc:	eeb0 0a48 	vmov.f32	s0, s16
d0051dc0:	f004 fd7e 	bl	d00568c0 <cosf>
d0051dc4:	eef0 9a40 	vmov.f32	s19, s0
d0051dc8:	eeb0 0a48 	vmov.f32	s0, s16
d0051dcc:	f004 ff5c 	bl	d0056c88 <sinf>
d0051dd0:	eeb0 9a40 	vmov.f32	s18, s0
d0051dd4:	e7b4      	b.n	d0051d40 <createTorus+0xb0>
d0051dd6:	9b00      	ldr	r3, [sp, #0]
d0051dd8:	2b00      	cmp	r3, #0
d0051dda:	dd2b      	ble.n	d0051e34 <createTorus+0x1a4>
d0051ddc:	2e00      	cmp	r6, #0
d0051dde:	dd29      	ble.n	d0051e34 <createTorus+0x1a4>
d0051de0:	f04f 0a00 	mov.w	sl, #0
d0051de4:	0173      	lsls	r3, r6, #5
d0051de6:	46b6      	mov	lr, r6
d0051de8:	f106 0802 	add.w	r8, r6, #2
d0051dec:	46d3      	mov	fp, sl
d0051dee:	4656      	mov	r6, sl
d0051df0:	2521      	movs	r5, #33	; 0x21
d0051df2:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0051df6:	9301      	str	r3, [sp, #4]
d0051df8:	4652      	mov	r2, sl
d0051dfa:	464b      	mov	r3, r9
d0051dfc:	4610      	mov	r0, r2
d0051dfe:	18a1      	adds	r1, r4, r2
d0051e00:	3201      	adds	r2, #1
d0051e02:	60de      	str	r6, [r3, #12]
d0051e04:	eb08 0700 	add.w	r7, r8, r0
d0051e08:	61de      	str	r6, [r3, #28]
d0051e0a:	4596      	cmp	lr, r2
d0051e0c:	6018      	str	r0, [r3, #0]
d0051e0e:	731d      	strb	r5, [r3, #12]
d0051e10:	6099      	str	r1, [r3, #8]
d0051e12:	605a      	str	r2, [r3, #4]
d0051e14:	6199      	str	r1, [r3, #24]
d0051e16:	771d      	strb	r5, [r3, #28]
d0051e18:	e9c3 2704 	strd	r2, r7, [r3, #16]
d0051e1c:	f103 0320 	add.w	r3, r3, #32
d0051e20:	d1ec      	bne.n	d0051dfc <createTorus+0x16c>
d0051e22:	9b01      	ldr	r3, [sp, #4]
d0051e24:	f10b 0b01 	add.w	fp, fp, #1
d0051e28:	44a2      	add	sl, r4
d0051e2a:	44a6      	add	lr, r4
d0051e2c:	4499      	add	r9, r3
d0051e2e:	9b00      	ldr	r3, [sp, #0]
d0051e30:	455b      	cmp	r3, fp
d0051e32:	d1e1      	bne.n	d0051df8 <createTorus+0x168>
d0051e34:	9902      	ldr	r1, [sp, #8]
d0051e36:	2900      	cmp	r1, #0
d0051e38:	dd32      	ble.n	d0051ea0 <createTorus+0x210>
d0051e3a:	9b04      	ldr	r3, [sp, #16]
d0051e3c:	fab3 f283 	clz	r2, r3
d0051e40:	0952      	lsrs	r2, r2, #5
d0051e42:	b36b      	cbz	r3, d0051ea0 <createTorus+0x210>
d0051e44:	ed9f 6a19 	vldr	s12, [pc, #100]	; d0051eac <createTorus+0x21c>
d0051e48:	edd3 7a01 	vldr	s15, [r3, #4]
d0051e4c:	3201      	adds	r2, #1
d0051e4e:	edd3 6a00 	vldr	s13, [r3]
d0051e52:	330c      	adds	r3, #12
d0051e54:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0051e58:	ed13 7a01 	vldr	s14, [r3, #-4]
d0051e5c:	4291      	cmp	r1, r2
d0051e5e:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0051e62:	eee7 7a07 	vfma.f32	s15, s14, s14
d0051e66:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0051e6a:	dced      	bgt.n	d0051e48 <createTorus+0x1b8>
d0051e6c:	eef1 7ac6 	vsqrt.f32	s15, s12
d0051e70:	9c03      	ldr	r4, [sp, #12]
d0051e72:	4620      	mov	r0, r4
d0051e74:	edc4 7a06 	vstr	s15, [r4, #24]
d0051e78:	f7fc fd66 	bl	d004e948 <meshSetDefaultMaterial>
d0051e7c:	9e05      	ldr	r6, [sp, #20]
d0051e7e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051e80:	4635      	mov	r5, r6
d0051e82:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051e84:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051e86:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051e88:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051e8a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051e8c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0051e90:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051e94:	4630      	mov	r0, r6
d0051e96:	b01d      	add	sp, #116	; 0x74
d0051e98:	ecbd 8b0a 	vpop	{d8-d12}
d0051e9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051ea0:	eddf 7a02 	vldr	s15, [pc, #8]	; d0051eac <createTorus+0x21c>
d0051ea4:	e7e4      	b.n	d0051e70 <createTorus+0x1e0>
d0051ea6:	bf00      	nop
d0051ea8:	40c90fdb 	.word	0x40c90fdb
d0051eac:	00000000 	.word	0x00000000

d0051eb0 <copyMesh>:
d0051eb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051eb4:	460f      	mov	r7, r1
d0051eb6:	b083      	sub	sp, #12
d0051eb8:	2240      	movs	r2, #64	; 0x40
d0051eba:	2100      	movs	r1, #0
d0051ebc:	4606      	mov	r6, r0
d0051ebe:	f003 fbcd 	bl	d005565c <memset>
d0051ec2:	2f00      	cmp	r7, #0
d0051ec4:	d077      	beq.n	d0051fb6 <copyMesh+0x106>
d0051ec6:	687b      	ldr	r3, [r7, #4]
d0051ec8:	697a      	ldr	r2, [r7, #20]
d0051eca:	2b00      	cmp	r3, #0
d0051ecc:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0051ed0:	9301      	str	r3, [sp, #4]
d0051ed2:	9200      	str	r2, [sp, #0]
d0051ed4:	dc59      	bgt.n	d0051f8a <copyMesh+0xda>
d0051ed6:	f1b8 0f00 	cmp.w	r8, #0
d0051eda:	f04f 0900 	mov.w	r9, #0
d0051ede:	dc5d      	bgt.n	d0051f9c <copyMesh+0xec>
d0051ee0:	9b00      	ldr	r3, [sp, #0]
d0051ee2:	f04f 0a00 	mov.w	sl, #0
d0051ee6:	2b00      	cmp	r3, #0
d0051ee8:	dc60      	bgt.n	d0051fac <copyMesh+0xfc>
d0051eea:	f04f 0c00 	mov.w	ip, #0
d0051eee:	9b01      	ldr	r3, [sp, #4]
d0051ef0:	2b00      	cmp	r3, #0
d0051ef2:	dd0f      	ble.n	d0051f14 <copyMesh+0x64>
d0051ef4:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0051ef8:	f8d7 e000 	ldr.w	lr, [r7]
d0051efc:	2300      	movs	r3, #0
d0051efe:	00ad      	lsls	r5, r5, #2
d0051f00:	eb0e 0203 	add.w	r2, lr, r3
d0051f04:	eb09 0403 	add.w	r4, r9, r3
d0051f08:	330c      	adds	r3, #12
d0051f0a:	ca07      	ldmia	r2, {r0, r1, r2}
d0051f0c:	429d      	cmp	r5, r3
d0051f0e:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0051f12:	d1f5      	bne.n	d0051f00 <copyMesh+0x50>
d0051f14:	f1b8 0f00 	cmp.w	r8, #0
d0051f18:	dd0b      	ble.n	d0051f32 <copyMesh+0x82>
d0051f1a:	68bc      	ldr	r4, [r7, #8]
d0051f1c:	2300      	movs	r3, #0
d0051f1e:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0051f22:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0051f26:	3301      	adds	r3, #1
d0051f28:	c903      	ldmia	r1, {r0, r1}
d0051f2a:	4598      	cmp	r8, r3
d0051f2c:	e882 0003 	stmia.w	r2, {r0, r1}
d0051f30:	d1f5      	bne.n	d0051f1e <copyMesh+0x6e>
d0051f32:	9b00      	ldr	r3, [sp, #0]
d0051f34:	2b00      	cmp	r3, #0
d0051f36:	dd0e      	ble.n	d0051f56 <copyMesh+0xa6>
d0051f38:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0051f3c:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0051f40:	2400      	movs	r4, #0
d0051f42:	eb0b 0304 	add.w	r3, fp, r4
d0051f46:	eb0c 0504 	add.w	r5, ip, r4
d0051f4a:	3410      	adds	r4, #16
d0051f4c:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0051f4e:	4574      	cmp	r4, lr
d0051f50:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051f54:	d1f5      	bne.n	d0051f42 <copyMesh+0x92>
d0051f56:	9a01      	ldr	r2, [sp, #4]
d0051f58:	f107 0520 	add.w	r5, r7, #32
d0051f5c:	69bb      	ldr	r3, [r7, #24]
d0051f5e:	f106 0420 	add.w	r4, r6, #32
d0051f62:	6072      	str	r2, [r6, #4]
d0051f64:	9a00      	ldr	r2, [sp, #0]
d0051f66:	61b3      	str	r3, [r6, #24]
d0051f68:	6172      	str	r2, [r6, #20]
d0051f6a:	f8c6 9000 	str.w	r9, [r6]
d0051f6e:	f8c6 c010 	str.w	ip, [r6, #16]
d0051f72:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051f74:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051f76:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051f7a:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0051f7e:	4630      	mov	r0, r6
d0051f80:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0051f84:	b003      	add	sp, #12
d0051f86:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051f8a:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0051f8e:	0080      	lsls	r0, r0, #2
d0051f90:	f003 fb38 	bl	d0055604 <malloc>
d0051f94:	f1b8 0f00 	cmp.w	r8, #0
d0051f98:	4681      	mov	r9, r0
d0051f9a:	dda1      	ble.n	d0051ee0 <copyMesh+0x30>
d0051f9c:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0051fa0:	f003 fb30 	bl	d0055604 <malloc>
d0051fa4:	9b00      	ldr	r3, [sp, #0]
d0051fa6:	4682      	mov	sl, r0
d0051fa8:	2b00      	cmp	r3, #0
d0051faa:	dd9e      	ble.n	d0051eea <copyMesh+0x3a>
d0051fac:	0118      	lsls	r0, r3, #4
d0051fae:	f003 fb29 	bl	d0055604 <malloc>
d0051fb2:	4684      	mov	ip, r0
d0051fb4:	e79b      	b.n	d0051eee <copyMesh+0x3e>
d0051fb6:	2300      	movs	r3, #0
d0051fb8:	4630      	mov	r0, r6
d0051fba:	e9c6 7700 	strd	r7, r7, [r6]
d0051fbe:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0051fc2:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0051fc6:	61b3      	str	r3, [r6, #24]
d0051fc8:	b003      	add	sp, #12
d0051fca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051fce:	bf00      	nop

d0051fd0 <entityLookAtPosition>:
d0051fd0:	28ff      	cmp	r0, #255	; 0xff
d0051fd2:	b530      	push	{r4, r5, lr}
d0051fd4:	ed2d 8b04 	vpush	{d8-d9}
d0051fd8:	b08d      	sub	sp, #52	; 0x34
d0051fda:	d848      	bhi.n	d005206e <entityLookAtPosition+0x9e>
d0051fdc:	4b30      	ldr	r3, [pc, #192]	; (d00520a0 <entityLookAtPosition+0xd0>)
d0051fde:	4604      	mov	r4, r0
d0051fe0:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0051fe4:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0051fe8:	2a00      	cmp	r2, #0
d0051fea:	d040      	beq.n	d005206e <entityLookAtPosition+0x9e>
d0051fec:	699a      	ldr	r2, [r3, #24]
d0051fee:	2a00      	cmp	r2, #0
d0051ff0:	d03d      	beq.n	d005206e <entityLookAtPosition+0x9e>
d0051ff2:	edd3 8a00 	vldr	s17, [r3]
d0051ff6:	460d      	mov	r5, r1
d0051ff8:	ed93 9a01 	vldr	s18, [r3, #4]
d0051ffc:	ee70 8a68 	vsub.f32	s17, s0, s17
d0052000:	ed93 8a02 	vldr	s16, [r3, #8]
d0052004:	ee30 9ac9 	vsub.f32	s18, s1, s18
d0052008:	ee31 8a48 	vsub.f32	s16, s2, s16
d005200c:	eef5 8a40 	vcmp.f32	s17, #0.0
d0052010:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052014:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0052018:	bf14      	ite	ne
d005201a:	2300      	movne	r3, #0
d005201c:	2301      	moveq	r3, #1
d005201e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052022:	bf18      	it	ne
d0052024:	2300      	movne	r3, #0
d0052026:	b123      	cbz	r3, d0052032 <entityLookAtPosition+0x62>
d0052028:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005202c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052030:	d01d      	beq.n	d005206e <entityLookAtPosition+0x9e>
d0052032:	eef0 0a48 	vmov.f32	s1, s16
d0052036:	ee28 8a08 	vmul.f32	s16, s16, s16
d005203a:	eeb0 0a68 	vmov.f32	s0, s17
d005203e:	f004 fec3 	bl	d0056dc8 <atan2f>
d0052042:	eef0 7a40 	vmov.f32	s15, s0
d0052046:	eea8 8aa8 	vfma.f32	s16, s17, s17
d005204a:	eeb0 0a49 	vmov.f32	s0, s18
d005204e:	eeb0 9a67 	vmov.f32	s18, s15
d0052052:	eef1 0ac8 	vsqrt.f32	s1, s16
d0052056:	f004 feb7 	bl	d0056dc8 <atan2f>
d005205a:	eeb1 8a40 	vneg.f32	s16, s0
d005205e:	b9a5      	cbnz	r5, d005208a <entityLookAtPosition+0xba>
d0052060:	2300      	movs	r3, #0
d0052062:	ed8d 8a09 	vstr	s16, [sp, #36]	; 0x24
d0052066:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d005206a:	930b      	str	r3, [sp, #44]	; 0x2c
d005206c:	e003      	b.n	d0052076 <entityLookAtPosition+0xa6>
d005206e:	2300      	movs	r3, #0
d0052070:	9309      	str	r3, [sp, #36]	; 0x24
d0052072:	930a      	str	r3, [sp, #40]	; 0x28
d0052074:	930b      	str	r3, [sp, #44]	; 0x2c
d0052076:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d005207a:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d005207e:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d0052082:	b00d      	add	sp, #52	; 0x34
d0052084:	ecbd 8b04 	vpop	{d8-d9}
d0052088:	bd30      	pop	{r4, r5, pc}
d005208a:	eef0 0a48 	vmov.f32	s1, s16
d005208e:	4620      	mov	r0, r4
d0052090:	eeb0 0a49 	vmov.f32	s0, s18
d0052094:	2101      	movs	r1, #1
d0052096:	ed9f 1a03 	vldr	s2, [pc, #12]	; d00520a4 <entityLookAtPosition+0xd4>
d005209a:	f7fe ff0d 	bl	d0050eb8 <entityRotation.part.0>
d005209e:	e7df      	b.n	d0052060 <entityLookAtPosition+0x90>
d00520a0:	d00f4ba0 	.word	0xd00f4ba0
d00520a4:	00000000 	.word	0x00000000

d00520a8 <entityAllowHit>:
d00520a8:	28ff      	cmp	r0, #255	; 0xff
d00520aa:	d813      	bhi.n	d00520d4 <entityAllowHit+0x2c>
d00520ac:	4b0a      	ldr	r3, [pc, #40]	; (d00520d8 <entityAllowHit+0x30>)
d00520ae:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d00520b2:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d00520b6:	b16b      	cbz	r3, d00520d4 <entityAllowHit+0x2c>
d00520b8:	6983      	ldr	r3, [r0, #24]
d00520ba:	b15b      	cbz	r3, d00520d4 <entityAllowHit+0x2c>
d00520bc:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d00520c0:	b121      	cbz	r1, d00520cc <entityAllowHit+0x24>
d00520c2:	f043 0302 	orr.w	r3, r3, #2
d00520c6:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d00520ca:	4770      	bx	lr
d00520cc:	f023 0302 	bic.w	r3, r3, #2
d00520d0:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d00520d4:	4770      	bx	lr
d00520d6:	bf00      	nop
d00520d8:	d00f4ba0 	.word	0xd00f4ba0

d00520dc <entityVisible>:
d00520dc:	28ff      	cmp	r0, #255	; 0xff
d00520de:	d813      	bhi.n	d0052108 <entityVisible+0x2c>
d00520e0:	4b0a      	ldr	r3, [pc, #40]	; (d005210c <entityVisible+0x30>)
d00520e2:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d00520e6:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d00520ea:	b16b      	cbz	r3, d0052108 <entityVisible+0x2c>
d00520ec:	6983      	ldr	r3, [r0, #24]
d00520ee:	b15b      	cbz	r3, d0052108 <entityVisible+0x2c>
d00520f0:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d00520f4:	b121      	cbz	r1, d0052100 <entityVisible+0x24>
d00520f6:	f043 0301 	orr.w	r3, r3, #1
d00520fa:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d00520fe:	4770      	bx	lr
d0052100:	f023 0301 	bic.w	r3, r3, #1
d0052104:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0052108:	4770      	bx	lr
d005210a:	bf00      	nop
d005210c:	d00f4ba0 	.word	0xd00f4ba0

d0052110 <entitySweepRaycastTest>:
d0052110:	b5f0      	push	{r4, r5, r6, r7, lr}
d0052112:	4f16      	ldr	r7, [pc, #88]	; (d005216c <entitySweepRaycastTest+0x5c>)
d0052114:	b08b      	sub	sp, #44	; 0x2c
d0052116:	4616      	mov	r6, r2
d0052118:	7c3c      	ldrb	r4, [r7, #16]
d005211a:	7c7d      	ldrb	r5, [r7, #17]
d005211c:	f897 c012 	ldrb.w	ip, [r7, #18]
d0052120:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
d0052124:	7cff      	ldrb	r7, [r7, #19]
d0052126:	461d      	mov	r5, r3
d0052128:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
d005212c:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d0052130:	6823      	ldr	r3, [r4, #0]
d0052132:	685c      	ldr	r4, [r3, #4]
d0052134:	b102      	cbz	r2, d0052138 <entitySweepRaycastTest+0x28>
d0052136:	aa03      	add	r2, sp, #12
d0052138:	b1b5      	cbz	r5, d0052168 <entitySweepRaycastTest+0x58>
d005213a:	ab06      	add	r3, sp, #24
d005213c:	4f0c      	ldr	r7, [pc, #48]	; (d0052170 <entitySweepRaycastTest+0x60>)
d005213e:	9700      	str	r7, [sp, #0]
d0052140:	47a0      	blx	r4
d0052142:	b178      	cbz	r0, d0052164 <entitySweepRaycastTest+0x54>
d0052144:	b12e      	cbz	r6, d0052152 <entitySweepRaycastTest+0x42>
d0052146:	9903      	ldr	r1, [sp, #12]
d0052148:	9a04      	ldr	r2, [sp, #16]
d005214a:	9b05      	ldr	r3, [sp, #20]
d005214c:	6031      	str	r1, [r6, #0]
d005214e:	6072      	str	r2, [r6, #4]
d0052150:	60b3      	str	r3, [r6, #8]
d0052152:	b13d      	cbz	r5, d0052164 <entitySweepRaycastTest+0x54>
d0052154:	9c07      	ldr	r4, [sp, #28]
d0052156:	9908      	ldr	r1, [sp, #32]
d0052158:	9a06      	ldr	r2, [sp, #24]
d005215a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d005215c:	606c      	str	r4, [r5, #4]
d005215e:	60a9      	str	r1, [r5, #8]
d0052160:	602a      	str	r2, [r5, #0]
d0052162:	60eb      	str	r3, [r5, #12]
d0052164:	b00b      	add	sp, #44	; 0x2c
d0052166:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0052168:	462b      	mov	r3, r5
d005216a:	e7e7      	b.n	d005213c <entitySweepRaycastTest+0x2c>
d005216c:	2001f000 	.word	0x2001f000
d0052170:	d00f4ba0 	.word	0xd00f4ba0

d0052174 <entityMatchOrientationCamera>:
d0052174:	28ff      	cmp	r0, #255	; 0xff
d0052176:	d821      	bhi.n	d00521bc <entityMatchOrientationCamera+0x48>
d0052178:	b470      	push	{r4, r5, r6}
d005217a:	4c11      	ldr	r4, [pc, #68]	; (d00521c0 <entityMatchOrientationCamera+0x4c>)
d005217c:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0052180:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0052184:	b1c3      	cbz	r3, d00521b8 <entityMatchOrientationCamera+0x44>
d0052186:	69a3      	ldr	r3, [r4, #24]
d0052188:	b1b3      	cbz	r3, d00521b8 <entityMatchOrientationCamera+0x44>
d005218a:	b1a9      	cbz	r1, d00521b8 <entityMatchOrientationCamera+0x44>
d005218c:	f101 0218 	add.w	r2, r1, #24
d0052190:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0052194:	f101 0624 	add.w	r6, r1, #36	; 0x24
d0052198:	f101 0330 	add.w	r3, r1, #48	; 0x30
d005219c:	ca07      	ldmia	r2, {r0, r1, r2}
d005219e:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00521a2:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d00521a6:	f104 0534 	add.w	r5, r4, #52	; 0x34
d00521aa:	341c      	adds	r4, #28
d00521ac:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00521b0:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00521b4:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d00521b8:	bc70      	pop	{r4, r5, r6}
d00521ba:	4770      	bx	lr
d00521bc:	4770      	bx	lr
d00521be:	bf00      	nop
d00521c0:	d00f4ba0 	.word	0xd00f4ba0

d00521c4 <buildLightingCLUT>:
d00521c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00521c8:	f1b2 0900 	subs.w	r9, r2, #0
d00521cc:	b085      	sub	sp, #20
d00521ce:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d00521d0:	f340 8212 	ble.w	d00525f8 <buildLightingCLUT+0x434>
d00521d4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00521d8:	4f24      	ldr	r7, [pc, #144]	; (d005226c <buildLightingCLUT+0xa8>)
d00521da:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d00521de:	edd4 4a00 	vldr	s9, [r4]
d00521e2:	ed94 5a01 	vldr	s10, [r4, #4]
d00521e6:	eb09 0807 	add.w	r8, r9, r7
d00521ea:	edd4 5a02 	vldr	s11, [r4, #8]
d00521ee:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d00521f2:	ed94 6a03 	vldr	s12, [r4, #12]
d00521f6:	44bc      	add	ip, r7
d00521f8:	edd4 6a04 	vldr	s13, [r4, #16]
d00521fc:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0052200:	3904      	subs	r1, #4
d0052202:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0052206:	ee37 5ac5 	vsub.f32	s10, s15, s10
d005220a:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0052270 <buildLightingCLUT+0xac>
d005220e:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0052212:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0052216:	ee37 6ac6 	vsub.f32	s12, s15, s12
d005221a:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d005221e:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0052222:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0052226:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d005222a:	f3c3 4507 	ubfx	r5, r3, #16, #8
d005222e:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0052232:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0052236:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d005223a:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d005223e:	0e1c      	lsrs	r4, r3, #24
d0052240:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0052244:	b2da      	uxtb	r2, r3
d0052246:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d005224a:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d005224e:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0052252:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0052256:	fe85 5a67 	vminnm.f32	s10, s10, s15
d005225a:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d005225e:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0052262:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0052266:	9601      	str	r6, [sp, #4]
d0052268:	e004      	b.n	d0052274 <buildLightingCLUT+0xb0>
d005226a:	bf00      	nop
d005226c:	4000001f 	.word	0x4000001f
d0052270:	00000000 	.word	0x00000000
d0052274:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0052278:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d005227c:	0e1e      	lsrs	r6, r3, #24
d005227e:	fa5f fa83 	uxtb.w	sl, r3
d0052282:	4549      	cmp	r1, r9
d0052284:	ee07 6a10 	vmov	s14, r6
d0052288:	eba5 060b 	sub.w	r6, r5, fp
d005228c:	ee04 ba10 	vmov	s8, fp
d0052290:	ee07 6a90 	vmov	s15, r6
d0052294:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052298:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005229c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00522a0:	ee02 6a10 	vmov	s4, r6
d00522a4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00522a8:	eba2 060a 	sub.w	r6, r2, sl
d00522ac:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00522b0:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00522b4:	ee04 aa10 	vmov	s8, sl
d00522b8:	ee02 6a90 	vmov	s5, r6
d00522bc:	eba0 0603 	sub.w	r6, r0, r3
d00522c0:	eee4 3aa7 	vfma.f32	s7, s9, s15
d00522c4:	ee07 3a90 	vmov	s15, r3
d00522c8:	eea4 7a82 	vfma.f32	s14, s9, s4
d00522cc:	ee03 6a10 	vmov	s6, r6
d00522d0:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00522d4:	9e01      	ldr	r6, [sp, #4]
d00522d6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00522da:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00522de:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00522e2:	eea4 4aa2 	vfma.f32	s8, s9, s5
d00522e6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00522ea:	eee4 7a83 	vfma.f32	s15, s9, s6
d00522ee:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00522f2:	edcd 3a02 	vstr	s7, [sp, #8]
d00522f6:	f89d a008 	ldrb.w	sl, [sp, #8]
d00522fa:	ee17 3a10 	vmov	r3, s14
d00522fe:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052302:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052306:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005230a:	ed8d 7a02 	vstr	s14, [sp, #8]
d005230e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052312:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052316:	edcd 7a03 	vstr	s15, [sp, #12]
d005231a:	ea43 030b 	orr.w	r3, r3, fp
d005231e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052322:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052326:	f846 3f04 	str.w	r3, [r6, #4]!
d005232a:	680b      	ldr	r3, [r1, #0]
d005232c:	9601      	str	r6, [sp, #4]
d005232e:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052332:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0052336:	fa5f fa83 	uxtb.w	sl, r3
d005233a:	ee07 6a10 	vmov	s14, r6
d005233e:	eba5 060b 	sub.w	r6, r5, fp
d0052342:	ee04 ba10 	vmov	s8, fp
d0052346:	ee07 6a90 	vmov	s15, r6
d005234a:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005234e:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052352:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052356:	ee02 6a10 	vmov	s4, r6
d005235a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005235e:	eba2 060a 	sub.w	r6, r2, sl
d0052362:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052366:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005236a:	ee04 aa10 	vmov	s8, sl
d005236e:	ee02 6a90 	vmov	s5, r6
d0052372:	eba0 0603 	sub.w	r6, r0, r3
d0052376:	eee5 3a27 	vfma.f32	s7, s10, s15
d005237a:	ee07 3a90 	vmov	s15, r3
d005237e:	eea5 7a02 	vfma.f32	s14, s10, s4
d0052382:	ee03 6a10 	vmov	s6, r6
d0052386:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005238a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005238e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0052392:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052396:	eea5 4a22 	vfma.f32	s8, s10, s5
d005239a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005239e:	eee5 7a03 	vfma.f32	s15, s10, s6
d00523a2:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00523a6:	edcd 3a02 	vstr	s7, [sp, #8]
d00523aa:	f89d a008 	ldrb.w	sl, [sp, #8]
d00523ae:	ee17 3a10 	vmov	r3, s14
d00523b2:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00523b6:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00523ba:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00523be:	ed8d 7a02 	vstr	s14, [sp, #8]
d00523c2:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00523c6:	f89d b008 	ldrb.w	fp, [sp, #8]
d00523ca:	edcd 7a03 	vstr	s15, [sp, #12]
d00523ce:	ea43 030b 	orr.w	r3, r3, fp
d00523d2:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00523d6:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00523da:	f848 3f04 	str.w	r3, [r8, #4]!
d00523de:	680b      	ldr	r3, [r1, #0]
d00523e0:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00523e4:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00523e8:	fa5f fa83 	uxtb.w	sl, r3
d00523ec:	ee07 6a10 	vmov	s14, r6
d00523f0:	eba5 060b 	sub.w	r6, r5, fp
d00523f4:	ee04 ba10 	vmov	s8, fp
d00523f8:	ee07 6a90 	vmov	s15, r6
d00523fc:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052400:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052404:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052408:	ee02 6a10 	vmov	s4, r6
d005240c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052410:	eba2 060a 	sub.w	r6, r2, sl
d0052414:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052418:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005241c:	ee04 aa10 	vmov	s8, sl
d0052420:	ee02 6a90 	vmov	s5, r6
d0052424:	eba0 0603 	sub.w	r6, r0, r3
d0052428:	eee5 3aa7 	vfma.f32	s7, s11, s15
d005242c:	ee07 3a90 	vmov	s15, r3
d0052430:	eea5 7a82 	vfma.f32	s14, s11, s4
d0052434:	ee03 6a10 	vmov	s6, r6
d0052438:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005243c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052440:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0052444:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052448:	eea5 4aa2 	vfma.f32	s8, s11, s5
d005244c:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0052450:	eee5 7a83 	vfma.f32	s15, s11, s6
d0052454:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052458:	edcd 3a02 	vstr	s7, [sp, #8]
d005245c:	f89d a008 	ldrb.w	sl, [sp, #8]
d0052460:	ee17 3a10 	vmov	r3, s14
d0052464:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052468:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005246c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052470:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052474:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052478:	f89d b008 	ldrb.w	fp, [sp, #8]
d005247c:	edcd 7a03 	vstr	s15, [sp, #12]
d0052480:	ea43 030b 	orr.w	r3, r3, fp
d0052484:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052488:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005248c:	f84e 3f04 	str.w	r3, [lr, #4]!
d0052490:	680b      	ldr	r3, [r1, #0]
d0052492:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052496:	ea4f 6613 	mov.w	r6, r3, lsr #24
d005249a:	fa5f fa83 	uxtb.w	sl, r3
d005249e:	ee07 6a10 	vmov	s14, r6
d00524a2:	eba5 060b 	sub.w	r6, r5, fp
d00524a6:	ee04 ba10 	vmov	s8, fp
d00524aa:	ee07 6a90 	vmov	s15, r6
d00524ae:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00524b2:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00524b6:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00524ba:	ee02 6a10 	vmov	s4, r6
d00524be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00524c2:	eba2 060a 	sub.w	r6, r2, sl
d00524c6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00524ca:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00524ce:	ee04 aa10 	vmov	s8, sl
d00524d2:	ee02 6a90 	vmov	s5, r6
d00524d6:	eba0 0603 	sub.w	r6, r0, r3
d00524da:	eee6 3a27 	vfma.f32	s7, s12, s15
d00524de:	ee07 3a90 	vmov	s15, r3
d00524e2:	eea6 7a02 	vfma.f32	s14, s12, s4
d00524e6:	ee03 6a10 	vmov	s6, r6
d00524ea:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00524ee:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00524f2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00524f6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00524fa:	eea6 4a22 	vfma.f32	s8, s12, s5
d00524fe:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0052502:	eee6 7a03 	vfma.f32	s15, s12, s6
d0052506:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005250a:	edcd 3a02 	vstr	s7, [sp, #8]
d005250e:	f89d a008 	ldrb.w	sl, [sp, #8]
d0052512:	ee17 3a10 	vmov	r3, s14
d0052516:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d005251a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005251e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052522:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052526:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d005252a:	f89d b008 	ldrb.w	fp, [sp, #8]
d005252e:	edcd 7a03 	vstr	s15, [sp, #12]
d0052532:	ea43 030b 	orr.w	r3, r3, fp
d0052536:	f89d a00c 	ldrb.w	sl, [sp, #12]
d005253a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005253e:	f84c 3f04 	str.w	r3, [ip, #4]!
d0052542:	680b      	ldr	r3, [r1, #0]
d0052544:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052548:	ea4f 6613 	mov.w	r6, r3, lsr #24
d005254c:	fa5f fa83 	uxtb.w	sl, r3
d0052550:	ee07 6a10 	vmov	s14, r6
d0052554:	eba5 060b 	sub.w	r6, r5, fp
d0052558:	ee04 ba10 	vmov	s8, fp
d005255c:	ee07 6a90 	vmov	s15, r6
d0052560:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052564:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052568:	f3c3 2307 	ubfx	r3, r3, #8, #8
d005256c:	ee02 6a10 	vmov	s4, r6
d0052570:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052574:	eba2 060a 	sub.w	r6, r2, sl
d0052578:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005257c:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052580:	ee04 aa10 	vmov	s8, sl
d0052584:	ee02 6a90 	vmov	s5, r6
d0052588:	eba0 0603 	sub.w	r6, r0, r3
d005258c:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0052590:	ee07 3a90 	vmov	s15, r3
d0052594:	eea6 7a82 	vfma.f32	s14, s13, s4
d0052598:	ee03 6a10 	vmov	s6, r6
d005259c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00525a0:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00525a4:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00525a8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00525ac:	eea6 4aa2 	vfma.f32	s8, s13, s5
d00525b0:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00525b4:	eee6 7a83 	vfma.f32	s15, s13, s6
d00525b8:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00525bc:	edcd 3a02 	vstr	s7, [sp, #8]
d00525c0:	f89d a008 	ldrb.w	sl, [sp, #8]
d00525c4:	ee17 3a10 	vmov	r3, s14
d00525c8:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00525cc:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00525d0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00525d4:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00525d8:	ed8d 7a02 	vstr	s14, [sp, #8]
d00525dc:	f89d b008 	ldrb.w	fp, [sp, #8]
d00525e0:	edcd 7a03 	vstr	s15, [sp, #12]
d00525e4:	ea43 030b 	orr.w	r3, r3, fp
d00525e8:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00525ec:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00525f0:	f847 3f04 	str.w	r3, [r7, #4]!
d00525f4:	f47f ae3e 	bne.w	d0052274 <buildLightingCLUT+0xb0>
d00525f8:	b005      	add	sp, #20
d00525fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00525fe:	bf00      	nop

d0052600 <lightSetRanges>:
d0052600:	2800      	cmp	r0, #0
d0052602:	db0c      	blt.n	d005261e <lightSetRanges+0x1e>
d0052604:	4b06      	ldr	r3, [pc, #24]	; (d0052620 <lightSetRanges+0x20>)
d0052606:	681b      	ldr	r3, [r3, #0]
d0052608:	4283      	cmp	r3, r0
d005260a:	dd08      	ble.n	d005261e <lightSetRanges+0x1e>
d005260c:	4b05      	ldr	r3, [pc, #20]	; (d0052624 <lightSetRanges+0x24>)
d005260e:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0052612:	ed80 0a08 	vstr	s0, [r0, #32]
d0052616:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d005261a:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d005261e:	4770      	bx	lr
d0052620:	d005a6c8 	.word	0xd005a6c8
d0052624:	d005a6e0 	.word	0xd005a6e0

d0052628 <lightsGet>:
d0052628:	4800      	ldr	r0, [pc, #0]	; (d005262c <lightsGet+0x4>)
d005262a:	4770      	bx	lr
d005262c:	d005a6e0 	.word	0xd005a6e0

d0052630 <lightsGetCount>:
d0052630:	4b01      	ldr	r3, [pc, #4]	; (d0052638 <lightsGetCount+0x8>)
d0052632:	6818      	ldr	r0, [r3, #0]
d0052634:	4770      	bx	lr
d0052636:	bf00      	nop
d0052638:	d005a6c8 	.word	0xd005a6c8

d005263c <lightsClear>:
d005263c:	2100      	movs	r1, #0
d005263e:	4b03      	ldr	r3, [pc, #12]	; (d005264c <lightsClear+0x10>)
d0052640:	f44f 7200 	mov.w	r2, #512	; 0x200
d0052644:	4802      	ldr	r0, [pc, #8]	; (d0052650 <lightsClear+0x14>)
d0052646:	6019      	str	r1, [r3, #0]
d0052648:	f003 b808 	b.w	d005565c <memset>
d005264c:	d005a6c8 	.word	0xd005a6c8
d0052650:	d005a6e0 	.word	0xd005a6e0

d0052654 <lightEnable>:
d0052654:	4b04      	ldr	r3, [pc, #16]	; (d0052668 <lightEnable+0x14>)
d0052656:	681b      	ldr	r3, [r3, #0]
d0052658:	4298      	cmp	r0, r3
d005265a:	da03      	bge.n	d0052664 <lightEnable+0x10>
d005265c:	4b03      	ldr	r3, [pc, #12]	; (d005266c <lightEnable+0x18>)
d005265e:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0052662:	62c1      	str	r1, [r0, #44]	; 0x2c
d0052664:	4770      	bx	lr
d0052666:	bf00      	nop
d0052668:	d005a6c8 	.word	0xd005a6c8
d005266c:	d005a6e0 	.word	0xd005a6e0

d0052670 <addPointLight>:
d0052670:	4918      	ldr	r1, [pc, #96]	; (d00526d4 <addPointLight+0x64>)
d0052672:	b5f0      	push	{r4, r5, r6, r7, lr}
d0052674:	680c      	ldr	r4, [r1, #0]
d0052676:	b085      	sub	sp, #20
d0052678:	2c07      	cmp	r4, #7
d005267a:	ed8d 0a01 	vstr	s0, [sp, #4]
d005267e:	edcd 0a02 	vstr	s1, [sp, #8]
d0052682:	ed8d 1a03 	vstr	s2, [sp, #12]
d0052686:	dc21      	bgt.n	d00526cc <addPointLight+0x5c>
d0052688:	4d13      	ldr	r5, [pc, #76]	; (d00526d8 <addPointLight+0x68>)
d005268a:	01a2      	lsls	r2, r4, #6
d005268c:	2600      	movs	r6, #0
d005268e:	f8df e050 	ldr.w	lr, [pc, #80]	; d00526e0 <addPointLight+0x70>
d0052692:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d0052696:	f8df c04c 	ldr.w	ip, [pc, #76]	; d00526e4 <addPointLight+0x74>
d005269a:	54ae      	strb	r6, [r5, r2]
d005269c:	2200      	movs	r2, #0
d005269e:	4f0f      	ldr	r7, [pc, #60]	; (d00526dc <addPointLight+0x6c>)
d00526a0:	1d1d      	adds	r5, r3, #4
d00526a2:	62d8      	str	r0, [r3, #44]	; 0x2c
d00526a4:	1c66      	adds	r6, r4, #1
d00526a6:	611a      	str	r2, [r3, #16]
d00526a8:	615a      	str	r2, [r3, #20]
d00526aa:	619a      	str	r2, [r3, #24]
d00526ac:	edc3 1a07 	vstr	s3, [r3, #28]
d00526b0:	f8c3 e020 	str.w	lr, [r3, #32]
d00526b4:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d00526b8:	629f      	str	r7, [r3, #40]	; 0x28
d00526ba:	ab04      	add	r3, sp, #16
d00526bc:	600e      	str	r6, [r1, #0]
d00526be:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d00526c2:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00526c6:	4620      	mov	r0, r4
d00526c8:	b005      	add	sp, #20
d00526ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00526cc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d00526d0:	e7f9      	b.n	d00526c6 <addPointLight+0x56>
d00526d2:	bf00      	nop
d00526d4:	d005a6c8 	.word	0xd005a6c8
d00526d8:	d005a6e0 	.word	0xd005a6e0
d00526dc:	44020000 	.word	0x44020000
d00526e0:	42c80000 	.word	0x42c80000
d00526e4:	43660000 	.word	0x43660000

d00526e8 <addDirectionalLight>:
d00526e8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00526ea:	4f15      	ldr	r7, [pc, #84]	; (d0052740 <addDirectionalLight+0x58>)
d00526ec:	683d      	ldr	r5, [r7, #0]
d00526ee:	2d07      	cmp	r5, #7
d00526f0:	ed2d 8b02 	vpush	{d8}
d00526f4:	b085      	sub	sp, #20
d00526f6:	dc1f      	bgt.n	d0052738 <addDirectionalLight+0x50>
d00526f8:	4912      	ldr	r1, [pc, #72]	; (d0052744 <addDirectionalLight+0x5c>)
d00526fa:	2300      	movs	r3, #0
d00526fc:	4606      	mov	r6, r0
d00526fe:	01aa      	lsls	r2, r5, #6
d0052700:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0052704:	2001      	movs	r0, #1
d0052706:	eeb0 8a61 	vmov.f32	s16, s3
d005270a:	6063      	str	r3, [r4, #4]
d005270c:	60a3      	str	r3, [r4, #8]
d005270e:	60e3      	str	r3, [r4, #12]
d0052710:	5488      	strb	r0, [r1, r2]
d0052712:	f7fd fe25 	bl	d0050360 <vec3Normalize>
d0052716:	683b      	ldr	r3, [r7, #0]
d0052718:	ed84 8a07 	vstr	s16, [r4, #28]
d005271c:	3301      	adds	r3, #1
d005271e:	62e6      	str	r6, [r4, #44]	; 0x2c
d0052720:	ed84 0a04 	vstr	s0, [r4, #16]
d0052724:	edc4 0a05 	vstr	s1, [r4, #20]
d0052728:	ed84 1a06 	vstr	s2, [r4, #24]
d005272c:	603b      	str	r3, [r7, #0]
d005272e:	4628      	mov	r0, r5
d0052730:	b005      	add	sp, #20
d0052732:	ecbd 8b02 	vpop	{d8}
d0052736:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0052738:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d005273c:	e7f7      	b.n	d005272e <addDirectionalLight+0x46>
d005273e:	bf00      	nop
d0052740:	d005a6c8 	.word	0xd005a6c8
d0052744:	d005a6e0 	.word	0xd005a6e0

d0052748 <lightSetPosition>:
d0052748:	b084      	sub	sp, #16
d005274a:	2800      	cmp	r0, #0
d005274c:	ed8d 0a01 	vstr	s0, [sp, #4]
d0052750:	edcd 0a02 	vstr	s1, [sp, #8]
d0052754:	ed8d 1a03 	vstr	s2, [sp, #12]
d0052758:	db0c      	blt.n	d0052774 <lightSetPosition+0x2c>
d005275a:	4b07      	ldr	r3, [pc, #28]	; (d0052778 <lightSetPosition+0x30>)
d005275c:	681b      	ldr	r3, [r3, #0]
d005275e:	4283      	cmp	r3, r0
d0052760:	dd08      	ble.n	d0052774 <lightSetPosition+0x2c>
d0052762:	4b06      	ldr	r3, [pc, #24]	; (d005277c <lightSetPosition+0x34>)
d0052764:	aa04      	add	r2, sp, #16
d0052766:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d005276a:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d005276e:	3304      	adds	r3, #4
d0052770:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0052774:	b004      	add	sp, #16
d0052776:	4770      	bx	lr
d0052778:	d005a6c8 	.word	0xd005a6c8
d005277c:	d005a6e0 	.word	0xd005a6e0

d0052780 <lightSetIntensity>:
d0052780:	2800      	cmp	r0, #0
d0052782:	db08      	blt.n	d0052796 <lightSetIntensity+0x16>
d0052784:	4b04      	ldr	r3, [pc, #16]	; (d0052798 <lightSetIntensity+0x18>)
d0052786:	681b      	ldr	r3, [r3, #0]
d0052788:	4283      	cmp	r3, r0
d005278a:	dd04      	ble.n	d0052796 <lightSetIntensity+0x16>
d005278c:	4b03      	ldr	r3, [pc, #12]	; (d005279c <lightSetIntensity+0x1c>)
d005278e:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0052792:	ed80 0a07 	vstr	s0, [r0, #28]
d0052796:	4770      	bx	lr
d0052798:	d005a6c8 	.word	0xd005a6c8
d005279c:	d005a6e0 	.word	0xd005a6e0

d00527a0 <Render3DStandard>:
d00527a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00527a4:	2600      	movs	r6, #0
d00527a6:	b088      	sub	sp, #32
d00527a8:	4f2e      	ldr	r7, [pc, #184]	; (d0052864 <Render3DStandard+0xc4>)
d00527aa:	0170      	lsls	r0, r6, #5
d00527ac:	f7fc f902 	bl	d004e9b4 <beginDepthBand>
d00527b0:	683a      	ldr	r2, [r7, #0]
d00527b2:	2a00      	cmp	r2, #0
d00527b4:	dd50      	ble.n	d0052858 <Render3DStandard+0xb8>
d00527b6:	4c2c      	ldr	r4, [pc, #176]	; (d0052868 <Render3DStandard+0xc8>)
d00527b8:	2500      	movs	r5, #0
d00527ba:	e01d      	b.n	d00527f8 <Render3DStandard+0x58>
d00527bc:	8c63      	ldrh	r3, [r4, #34]	; 0x22
d00527be:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d00527c0:	9303      	str	r3, [sp, #12]
d00527c2:	6963      	ldr	r3, [r4, #20]
d00527c4:	8c20      	ldrh	r0, [r4, #32]
d00527c6:	9301      	str	r3, [sp, #4]
d00527c8:	6923      	ldr	r3, [r4, #16]
d00527ca:	9205      	str	r2, [sp, #20]
d00527cc:	9104      	str	r1, [sp, #16]
d00527ce:	9002      	str	r0, [sp, #8]
d00527d0:	9300      	str	r3, [sp, #0]
d00527d2:	edd4 1a07 	vldr	s3, [r4, #28]
d00527d6:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00527da:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00527de:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00527e2:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00527e6:	e9d4 0100 	ldrd	r0, r1, [r4]
d00527ea:	f7fc f96b 	bl	d004eac4 <fillTriangleDitherBayer>
d00527ee:	683a      	ldr	r2, [r7, #0]
d00527f0:	3501      	adds	r5, #1
d00527f2:	3440      	adds	r4, #64	; 0x40
d00527f4:	4295      	cmp	r5, r2
d00527f6:	da2f      	bge.n	d0052858 <Render3DStandard+0xb8>
d00527f8:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d00527fc:	42b3      	cmp	r3, r6
d00527fe:	dcf7      	bgt.n	d00527f0 <Render3DStandard+0x50>
d0052800:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d0052804:	42b3      	cmp	r3, r6
d0052806:	dbf3      	blt.n	d00527f0 <Render3DStandard+0x50>
d0052808:	f994 3034 	ldrsb.w	r3, [r4, #52]	; 0x34
d005280c:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0052810:	2b00      	cmp	r3, #0
d0052812:	dad3      	bge.n	d00527bc <Render3DStandard+0x1c>
d0052814:	8c63      	ldrh	r3, [r4, #34]	; 0x22
d0052816:	3501      	adds	r5, #1
d0052818:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d005281a:	9303      	str	r3, [sp, #12]
d005281c:	6963      	ldr	r3, [r4, #20]
d005281e:	8c20      	ldrh	r0, [r4, #32]
d0052820:	f894 8036 	ldrb.w	r8, [r4, #54]	; 0x36
d0052824:	9301      	str	r3, [sp, #4]
d0052826:	6923      	ldr	r3, [r4, #16]
d0052828:	edd4 1a07 	vldr	s3, [r4, #28]
d005282c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0052830:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0052834:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0052838:	9205      	str	r2, [sp, #20]
d005283a:	9104      	str	r1, [sp, #16]
d005283c:	9002      	str	r0, [sp, #8]
d005283e:	9300      	str	r3, [sp, #0]
d0052840:	f8cd 8018 	str.w	r8, [sp, #24]
d0052844:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0052848:	e9d4 0100 	ldrd	r0, r1, [r4]
d005284c:	f7fc ffa6 	bl	d004f79c <fillTriangleDitherBayerT>
d0052850:	683a      	ldr	r2, [r7, #0]
d0052852:	3440      	adds	r4, #64	; 0x40
d0052854:	4295      	cmp	r5, r2
d0052856:	dbcf      	blt.n	d00527f8 <Render3DStandard+0x58>
d0052858:	3601      	adds	r6, #1
d005285a:	2e0a      	cmp	r6, #10
d005285c:	d1a5      	bne.n	d00527aa <Render3DStandard+0xa>
d005285e:	b008      	add	sp, #32
d0052860:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0052864:	d0068900 	.word	0xd0068900
d0052868:	d0068920 	.word	0xd0068920

d005286c <submitClippedTri.constprop.0>:
d005286c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052870:	4d83      	ldr	r5, [pc, #524]	; (d0052a80 <submitClippedTri.constprop.0+0x214>)
d0052872:	682c      	ldr	r4, [r5, #0]
d0052874:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d0052878:	ed2d 8b04 	vpush	{d8-d9}
d005287c:	b08b      	sub	sp, #44	; 0x2c
d005287e:	f280 80f0 	bge.w	d0052a62 <submitClippedTri.constprop.0+0x1f6>
d0052882:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0052886:	edd0 6a14 	vldr	s13, [r0, #80]	; 0x50
d005288a:	eeb6 9a00 	vmov.f32	s18, #96	; 0x3f000000  0.5
d005288e:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d0052892:	ed90 6a12 	vldr	s12, [r0, #72]	; 0x48
d0052896:	ea4f 1c84 	mov.w	ip, r4, lsl #6
d005289a:	eec5 8a81 	vdiv.f32	s17, s11, s2
d005289e:	4b79      	ldr	r3, [pc, #484]	; (d0052a84 <submitClippedTri.constprop.0+0x218>)
d00528a0:	f10c 0808 	add.w	r8, ip, #8
d00528a4:	4693      	mov	fp, r2
d00528a6:	eb03 1784 	add.w	r7, r3, r4, lsl #6
d00528aa:	3401      	adds	r4, #1
d00528ac:	f10c 0e10 	add.w	lr, ip, #16
d00528b0:	f04f 0980 	mov.w	r9, #128	; 0x80
d00528b4:	602c      	str	r4, [r5, #0]
d00528b6:	eb03 0408 	add.w	r4, r3, r8
d00528ba:	eec5 7aa2 	vdiv.f32	s15, s11, s5
d00528be:	eb03 0a0e 	add.w	sl, r3, lr
d00528c2:	ed9f 5a71 	vldr	s10, [pc, #452]	; d0052a88 <submitClippedTri.constprop.0+0x21c>
d00528c6:	ee76 6a89 	vadd.f32	s13, s13, s18
d00528ca:	ee85 8a84 	vdiv.f32	s16, s11, s8
d00528ce:	ee37 7a09 	vadd.f32	s14, s14, s18
d00528d2:	ee68 0aa0 	vmul.f32	s1, s17, s1
d00528d6:	ee28 0a80 	vmul.f32	s0, s17, s0
d00528da:	eef0 8a47 	vmov.f32	s17, s14
d00528de:	ee67 1aa1 	vmul.f32	s3, s15, s3
d00528e2:	ee27 2a82 	vmul.f32	s4, s15, s4
d00528e6:	eef0 7a66 	vmov.f32	s15, s13
d00528ea:	eee6 8a00 	vfma.f32	s17, s12, s0
d00528ee:	ed9f 0a67 	vldr	s0, [pc, #412]	; d0052a8c <submitClippedTri.constprop.0+0x220>
d00528f2:	eee6 7a60 	vfms.f32	s15, s12, s1
d00528f6:	eef0 0a47 	vmov.f32	s1, s14
d00528fa:	ee28 3a03 	vmul.f32	s6, s16, s6
d00528fe:	ee68 3a23 	vmul.f32	s7, s16, s7
d0052902:	eee6 0a21 	vfma.f32	s1, s12, s3
d0052906:	eea6 7a03 	vfma.f32	s14, s12, s6
d005290a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005290e:	eefd 8ae8 	vcvt.s32.f32	s17, s17
d0052912:	ee17 5a90 	vmov	r5, s15
d0052916:	eef0 1a60 	vmov.f32	s3, s1
d005291a:	ee18 6a90 	vmov	r6, s17
d005291e:	eef0 0a66 	vmov.f32	s1, s13
d0052922:	eee6 6a63 	vfms.f32	s13, s12, s7
d0052926:	f843 600c 	str.w	r6, [r3, ip]
d005292a:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d005292e:	607d      	str	r5, [r7, #4]
d0052930:	eee6 0a42 	vfms.f32	s1, s12, s4
d0052934:	b22d      	sxth	r5, r5
d0052936:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d005293a:	ee11 2a90 	vmov	r2, s3
d005293e:	f843 2008 	str.w	r2, [r3, r8]
d0052942:	ee17 2a10 	vmov	r2, s14
d0052946:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d005294a:	edc4 7a01 	vstr	s15, [r4, #4]
d005294e:	ee17 6a90 	vmov	r6, s15
d0052952:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0052956:	f843 200e 	str.w	r2, [r3, lr]
d005295a:	42ae      	cmp	r6, r5
d005295c:	46ae      	mov	lr, r5
d005295e:	edca 7a01 	vstr	s15, [sl, #4]
d0052962:	ee17 4a90 	vmov	r4, s15
d0052966:	f887 1034 	strb.w	r1, [r7, #52]	; 0x34
d005296a:	f887 b035 	strb.w	fp, [r7, #53]	; 0x35
d005296e:	edc7 4a07 	vstr	s9, [r7, #28]
d0052972:	f887 9036 	strb.w	r9, [r7, #54]	; 0x36
d0052976:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d005297a:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d005297e:	ee31 7a47 	vsub.f32	s14, s2, s14
d0052982:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052986:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d005298a:	fe87 7a65 	vminnm.f32	s14, s14, s11
d005298e:	ee27 7a00 	vmul.f32	s14, s14, s0
d0052992:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052996:	ee17 2a10 	vmov	r2, s14
d005299a:	843a      	strh	r2, [r7, #32]
d005299c:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d00529a0:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d00529a4:	ee32 7ac7 	vsub.f32	s14, s5, s14
d00529a8:	ee27 7a27 	vmul.f32	s14, s14, s15
d00529ac:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d00529b0:	fe87 7a65 	vminnm.f32	s14, s14, s11
d00529b4:	ee27 7a00 	vmul.f32	s14, s14, s0
d00529b8:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00529bc:	ee17 2a10 	vmov	r2, s14
d00529c0:	847a      	strh	r2, [r7, #34]	; 0x22
d00529c2:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00529c6:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d00529ca:	ee74 7a67 	vsub.f32	s15, s8, s15
d00529ce:	ed87 1a0a 	vstr	s2, [r7, #40]	; 0x28
d00529d2:	edc7 2a0b 	vstr	s5, [r7, #44]	; 0x2c
d00529d6:	ed87 4a0c 	vstr	s8, [r7, #48]	; 0x30
d00529da:	ee67 7a87 	vmul.f32	s15, s15, s14
d00529de:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d00529e2:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d00529e6:	ee67 7a80 	vmul.f32	s15, s15, s0
d00529ea:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00529ee:	ee17 2a90 	vmov	r2, s15
d00529f2:	84ba      	strh	r2, [r7, #36]	; 0x24
d00529f4:	db3a      	blt.n	d0052a6c <submitClippedTri.constprop.0+0x200>
d00529f6:	462a      	mov	r2, r5
d00529f8:	873d      	strh	r5, [r7, #56]	; 0x38
d00529fa:	42a2      	cmp	r2, r4
d00529fc:	dd02      	ble.n	d0052a04 <submitClippedTri.constprop.0+0x198>
d00529fe:	eb03 020c 	add.w	r2, r3, ip
d0052a02:	8714      	strh	r4, [r2, #56]	; 0x38
d0052a04:	42ae      	cmp	r6, r5
d0052a06:	dc35      	bgt.n	d0052a74 <submitClippedTri.constprop.0+0x208>
d0052a08:	eb03 020c 	add.w	r2, r3, ip
d0052a0c:	8755      	strh	r5, [r2, #58]	; 0x3a
d0052a0e:	45a6      	cmp	lr, r4
d0052a10:	da02      	bge.n	d0052a18 <submitClippedTri.constprop.0+0x1ac>
d0052a12:	eb03 020c 	add.w	r2, r3, ip
d0052a16:	8754      	strh	r4, [r2, #58]	; 0x3a
d0052a18:	eb03 020c 	add.w	r2, r3, ip
d0052a1c:	f9b2 1038 	ldrsh.w	r1, [r2, #56]	; 0x38
d0052a20:	2900      	cmp	r1, #0
d0052a22:	da01      	bge.n	d0052a28 <submitClippedTri.constprop.0+0x1bc>
d0052a24:	2100      	movs	r1, #0
d0052a26:	8711      	strh	r1, [r2, #56]	; 0x38
d0052a28:	eb03 020c 	add.w	r2, r3, ip
d0052a2c:	f9b2 103a 	ldrsh.w	r1, [r2, #58]	; 0x3a
d0052a30:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0052a34:	db02      	blt.n	d0052a3c <submitClippedTri.constprop.0+0x1d0>
d0052a36:	f240 113f 	movw	r1, #319	; 0x13f
d0052a3a:	8751      	strh	r1, [r2, #58]	; 0x3a
d0052a3c:	eb03 000c 	add.w	r0, r3, ip
d0052a40:	4463      	add	r3, ip
d0052a42:	f9b0 2038 	ldrsh.w	r2, [r0, #56]	; 0x38
d0052a46:	2a00      	cmp	r2, #0
d0052a48:	bfb8      	it	lt
d0052a4a:	321f      	addlt	r2, #31
d0052a4c:	1151      	asrs	r1, r2, #5
d0052a4e:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d0052a52:	2a00      	cmp	r2, #0
d0052a54:	f880 103c 	strb.w	r1, [r0, #60]	; 0x3c
d0052a58:	bfb8      	it	lt
d0052a5a:	321f      	addlt	r2, #31
d0052a5c:	1152      	asrs	r2, r2, #5
d0052a5e:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
d0052a62:	b00b      	add	sp, #44	; 0x2c
d0052a64:	ecbd 8b04 	vpop	{d8-d9}
d0052a68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052a6c:	b231      	sxth	r1, r6
d0052a6e:	460a      	mov	r2, r1
d0052a70:	8739      	strh	r1, [r7, #56]	; 0x38
d0052a72:	e7c2      	b.n	d00529fa <submitClippedTri.constprop.0+0x18e>
d0052a74:	b236      	sxth	r6, r6
d0052a76:	eb03 020c 	add.w	r2, r3, ip
d0052a7a:	46b6      	mov	lr, r6
d0052a7c:	8756      	strh	r6, [r2, #58]	; 0x3a
d0052a7e:	e7c6      	b.n	d0052a0e <submitClippedTri.constprop.0+0x1a2>
d0052a80:	d0068900 	.word	0xd0068900
d0052a84:	d0068920 	.word	0xd0068920
d0052a88:	00000000 	.word	0x00000000
d0052a8c:	477fff00 	.word	0x477fff00

d0052a90 <sb3dParticlesRender.part.0>:
d0052a90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052a94:	edd0 7a00 	vldr	s15, [r0]
d0052a98:	4605      	mov	r5, r0
d0052a9a:	4c1a      	ldr	r4, [pc, #104]	; (d0052b04 <sb3dParticlesRender.part.0+0x74>)
d0052a9c:	f8df b068 	ldr.w	fp, [pc, #104]	; d0052b08 <sb3dParticlesRender.part.0+0x78>
d0052aa0:	f504 5800 	add.w	r8, r4, #8192	; 0x2000
d0052aa4:	ed2d 8b10 	vpush	{d8-d15}
d0052aa8:	b0d9      	sub	sp, #356	; 0x164
d0052aaa:	ed90 ea06 	vldr	s28, [r0, #24]
d0052aae:	edd0 aa09 	vldr	s21, [r0, #36]	; 0x24
d0052ab2:	edcd 7a17 	vstr	s15, [sp, #92]	; 0x5c
d0052ab6:	edd0 7a01 	vldr	s15, [r0, #4]
d0052aba:	ed90 aa0a 	vldr	s20, [r0, #40]	; 0x28
d0052abe:	edcd 7a18 	vstr	s15, [sp, #96]	; 0x60
d0052ac2:	edd0 7a02 	vldr	s15, [r0, #8]
d0052ac6:	edd0 9a0b 	vldr	s19, [r0, #44]	; 0x2c
d0052aca:	edcd 7a19 	vstr	s15, [sp, #100]	; 0x64
d0052ace:	edd0 7a07 	vldr	s15, [r0, #28]
d0052ad2:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0052ad6:	edcd 7a1a 	vstr	s15, [sp, #104]	; 0x68
d0052ada:	edd0 7a08 	vldr	s15, [r0, #32]
d0052ade:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d0052ae2:	edcd 7a1b 	vstr	s15, [sp, #108]	; 0x6c
d0052ae6:	ed90 ba0e 	vldr	s22, [r0, #56]	; 0x38
d0052aea:	edd0 ca10 	vldr	s25, [r0, #64]	; 0x40
d0052aee:	f7ff fd9b 	bl	d0052628 <lightsGet>
d0052af2:	4606      	mov	r6, r0
d0052af4:	901d      	str	r0, [sp, #116]	; 0x74
d0052af6:	f7ff fd9b 	bl	d0052630 <lightsGetCount>
d0052afa:	901c      	str	r0, [sp, #112]	; 0x70
d0052afc:	eb06 1a80 	add.w	sl, r6, r0, lsl #6
d0052b00:	e177      	b.n	d0052df2 <sb3dParticlesRender.part.0+0x362>
d0052b02:	bf00      	nop
d0052b04:	d0066900 	.word	0xd0066900
d0052b08:	d00668e0 	.word	0xd00668e0
d0052b0c:	00000000 	.word	0x00000000
d0052b10:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0052b14:	edd4 ea04 	vldr	s29, [r4, #16]
d0052b18:	ed5f 5a04 	vldr	s11, [pc, #-16]	; d0052b0c <sb3dParticlesRender.part.0+0x7c>
d0052b1c:	fece eaa5 	vmaxnm.f32	s29, s29, s11
d0052b20:	fece eac7 	vminnm.f32	s29, s29, s14
d0052b24:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0052b28:	eddd 3a1b 	vldr	s7, [sp, #108]	; 0x6c
d0052b2c:	eeb0 4a46 	vmov.f32	s8, s12
d0052b30:	f105 0610 	add.w	r6, r5, #16
d0052b34:	eef0 4a66 	vmov.f32	s9, s13
d0052b38:	2250      	movs	r2, #80	; 0x50
d0052b3a:	ee67 7a87 	vmul.f32	s15, s15, s14
d0052b3e:	ed9d 7a1a 	vldr	s14, [sp, #104]	; 0x68
d0052b42:	eef0 5a45 	vmov.f32	s11, s10
d0052b46:	4631      	mov	r1, r6
d0052b48:	4668      	mov	r0, sp
d0052b4a:	eeae 6a27 	vfma.f32	s12, s28, s15
d0052b4e:	eee7 4a67 	vfms.f32	s9, s14, s15
d0052b52:	eee7 6a27 	vfma.f32	s13, s14, s15
d0052b56:	eeb0 7a45 	vmov.f32	s14, s10
d0052b5a:	eee3 5ae7 	vfms.f32	s11, s7, s15
d0052b5e:	eeae 4a67 	vfms.f32	s8, s28, s15
d0052b62:	eea3 7aa7 	vfma.f32	s14, s7, s15
d0052b66:	eef0 3a46 	vmov.f32	s7, s12
d0052b6a:	eeaa 6ae7 	vfms.f32	s12, s21, s15
d0052b6e:	eef0 fa64 	vmov.f32	s31, s9
d0052b72:	eeb0 5a66 	vmov.f32	s10, s13
d0052b76:	eeb0 8a44 	vmov.f32	s16, s8
d0052b7a:	eeb0 fa65 	vmov.f32	s30, s11
d0052b7e:	eeea fa27 	vfma.f32	s31, s20, s15
d0052b82:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d0052b86:	eeb0 6a47 	vmov.f32	s12, s14
d0052b8a:	eeaa 8aa7 	vfma.f32	s16, s21, s15
d0052b8e:	eea9 faa7 	vfma.f32	s30, s19, s15
d0052b92:	eeaa 4ae7 	vfms.f32	s8, s21, s15
d0052b96:	eeea 3aa7 	vfma.f32	s7, s21, s15
d0052b9a:	eeea 4a67 	vfms.f32	s9, s20, s15
d0052b9e:	edcd fa20 	vstr	s31, [sp, #128]	; 0x80
d0052ba2:	eeaa 5a27 	vfma.f32	s10, s20, s15
d0052ba6:	eeea 6a67 	vfms.f32	s13, s20, s15
d0052baa:	ed8d 8a1f 	vstr	s16, [sp, #124]	; 0x7c
d0052bae:	eee9 5ae7 	vfms.f32	s11, s19, s15
d0052bb2:	ed8d fa21 	vstr	s30, [sp, #132]	; 0x84
d0052bb6:	eea9 6aa7 	vfma.f32	s12, s19, s15
d0052bba:	ed8d 4a28 	vstr	s8, [sp, #160]	; 0xa0
d0052bbe:	eea9 7ae7 	vfms.f32	s14, s19, s15
d0052bc2:	edcd 3a22 	vstr	s7, [sp, #136]	; 0x88
d0052bc6:	edcd 4a29 	vstr	s9, [sp, #164]	; 0xa4
d0052bca:	ed8d 5a23 	vstr	s10, [sp, #140]	; 0x8c
d0052bce:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d0052bd2:	edcd 5a2a 	vstr	s11, [sp, #168]	; 0xa8
d0052bd6:	ed8d 6a24 	vstr	s12, [sp, #144]	; 0x90
d0052bda:	ed8d 7a27 	vstr	s14, [sp, #156]	; 0x9c
d0052bde:	f002 fd2f 	bl	d0055640 <memcpy>
d0052be2:	eeb0 1a4f 	vmov.f32	s2, s30
d0052be6:	eeb0 0a48 	vmov.f32	s0, s16
d0052bea:	eef0 0a6f 	vmov.f32	s1, s31
d0052bee:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052bf2:	f7fe f897 	bl	d0050d24 <worldToCamera>
d0052bf6:	eeb0 fa41 	vmov.f32	s30, s2
d0052bfa:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0052bfe:	4631      	mov	r1, r6
d0052c00:	ed9d 8a22 	vldr	s16, [sp, #136]	; 0x88
d0052c04:	2250      	movs	r2, #80	; 0x50
d0052c06:	eddd fa23 	vldr	s31, [sp, #140]	; 0x8c
d0052c0a:	4668      	mov	r0, sp
d0052c0c:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052c10:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0052c14:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0052c18:	ed8d fa2d 	vstr	s30, [sp, #180]	; 0xb4
d0052c1c:	f002 fd10 	bl	d0055640 <memcpy>
d0052c20:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052c24:	eeb0 0a48 	vmov.f32	s0, s16
d0052c28:	eef0 0a6f 	vmov.f32	s1, s31
d0052c2c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052c30:	f7fe f878 	bl	d0050d24 <worldToCamera>
d0052c34:	eef0 2a41 	vmov.f32	s5, s2
d0052c38:	ed9d 1a27 	vldr	s2, [sp, #156]	; 0x9c
d0052c3c:	4631      	mov	r1, r6
d0052c3e:	ed9d 8a25 	vldr	s16, [sp, #148]	; 0x94
d0052c42:	2250      	movs	r2, #80	; 0x50
d0052c44:	eddd fa26 	vldr	s31, [sp, #152]	; 0x98
d0052c48:	4668      	mov	r0, sp
d0052c4a:	edcd 2a30 	vstr	s5, [sp, #192]	; 0xc0
d0052c4e:	edcd 2a16 	vstr	s5, [sp, #88]	; 0x58
d0052c52:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052c56:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d0052c5a:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d0052c5e:	f002 fcef 	bl	d0055640 <memcpy>
d0052c62:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052c66:	eeb0 0a48 	vmov.f32	s0, s16
d0052c6a:	eef0 0a6f 	vmov.f32	s1, s31
d0052c6e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052c72:	f7fe f857 	bl	d0050d24 <worldToCamera>
d0052c76:	eef0 8a41 	vmov.f32	s17, s2
d0052c7a:	eddd fa29 	vldr	s31, [sp, #164]	; 0xa4
d0052c7e:	4631      	mov	r1, r6
d0052c80:	ed9d 1a2a 	vldr	s2, [sp, #168]	; 0xa8
d0052c84:	2250      	movs	r2, #80	; 0x50
d0052c86:	ed9d 8a28 	vldr	s16, [sp, #160]	; 0xa0
d0052c8a:	4668      	mov	r0, sp
d0052c8c:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052c90:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d0052c94:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d0052c98:	edcd 8a33 	vstr	s17, [sp, #204]	; 0xcc
d0052c9c:	f002 fcd0 	bl	d0055640 <memcpy>
d0052ca0:	eef0 0a6f 	vmov.f32	s1, s31
d0052ca4:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052ca8:	eeb0 0a48 	vmov.f32	s0, s16
d0052cac:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052cb0:	f7fe f838 	bl	d0050d24 <worldToCamera>
d0052cb4:	eef4 cacf 	vcmpe.f32	s25, s30
d0052cb8:	eef0 fa41 	vmov.f32	s31, s2
d0052cbc:	eddd 2a16 	vldr	s5, [sp, #88]	; 0x58
d0052cc0:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d0052cc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052cc8:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d0052ccc:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d0052cd0:	db0e      	blt.n	d0052cf0 <sb3dParticlesRender.part.0+0x260>
d0052cd2:	eef4 cae2 	vcmpe.f32	s25, s5
d0052cd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052cda:	db09      	blt.n	d0052cf0 <sb3dParticlesRender.part.0+0x260>
d0052cdc:	eef4 cae8 	vcmpe.f32	s25, s17
d0052ce0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ce4:	db04      	blt.n	d0052cf0 <sb3dParticlesRender.part.0+0x260>
d0052ce6:	eef4 cac1 	vcmpe.f32	s25, s2
d0052cea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052cee:	da7c      	bge.n	d0052dea <sb3dParticlesRender.part.0+0x35a>
d0052cf0:	4ed7      	ldr	r6, [pc, #860]	; (d0053050 <sb3dParticlesRender.part.0+0x5c0>)
d0052cf2:	eeb0 4a68 	vmov.f32	s8, s17
d0052cf6:	ed9d da2b 	vldr	s26, [sp, #172]	; 0xac
d0052cfa:	eeb0 1a4f 	vmov.f32	s2, s30
d0052cfe:	7c33      	ldrb	r3, [r6, #16]
d0052d00:	a840      	add	r0, sp, #256	; 0x100
d0052d02:	7c72      	ldrb	r2, [r6, #17]
d0052d04:	eeb0 0a4d 	vmov.f32	s0, s26
d0052d08:	7cb7      	ldrb	r7, [r6, #18]
d0052d0a:	4629      	mov	r1, r5
d0052d0c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0052d10:	7cf2      	ldrb	r2, [r6, #19]
d0052d12:	ed9d 9a2c 	vldr	s18, [sp, #176]	; 0xb0
d0052d16:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0052d1a:	eddd da31 	vldr	s27, [sp, #196]	; 0xc4
d0052d1e:	ed9d 8a32 	vldr	s16, [sp, #200]	; 0xc8
d0052d22:	eef0 0a49 	vmov.f32	s1, s18
d0052d26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052d2a:	f8df 9338 	ldr.w	r9, [pc, #824]	; d0053064 <sb3dParticlesRender.part.0+0x5d4>
d0052d2e:	eddd 1a2e 	vldr	s3, [sp, #184]	; 0xb8
d0052d32:	eeb0 3a6d 	vmov.f32	s6, s27
d0052d36:	681b      	ldr	r3, [r3, #0]
d0052d38:	eef0 3a48 	vmov.f32	s7, s16
d0052d3c:	ed9d 2a2f 	vldr	s4, [sp, #188]	; 0xbc
d0052d40:	681f      	ldr	r7, [r3, #0]
d0052d42:	f8db 2000 	ldr.w	r2, [fp]
d0052d46:	f8d9 3000 	ldr.w	r3, [r9]
d0052d4a:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d0052d4e:	edcd 2a3c 	vstr	s5, [sp, #240]	; 0xf0
d0052d52:	edcd 8a3f 	vstr	s17, [sp, #252]	; 0xfc
d0052d56:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d0052d5a:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d0052d5e:	edcd 1a3a 	vstr	s3, [sp, #232]	; 0xe8
d0052d62:	ed8d 2a3b 	vstr	s4, [sp, #236]	; 0xec
d0052d66:	edcd da3d 	vstr	s27, [sp, #244]	; 0xf4
d0052d6a:	ed8d 8a3e 	vstr	s16, [sp, #248]	; 0xf8
d0052d6e:	47b8      	blx	r7
d0052d70:	2802      	cmp	r0, #2
d0052d72:	f300 817b 	bgt.w	d005306c <sb3dParticlesRender.part.0+0x5dc>
d0052d76:	7c31      	ldrb	r1, [r6, #16]
d0052d78:	eeb0 0a4d 	vmov.f32	s0, s26
d0052d7c:	7c72      	ldrb	r2, [r6, #17]
d0052d7e:	eef0 0a49 	vmov.f32	s1, s18
d0052d82:	7cb3      	ldrb	r3, [r6, #18]
d0052d84:	eeb0 1a4f 	vmov.f32	s2, s30
d0052d88:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0052d8c:	7cf2      	ldrb	r2, [r6, #19]
d0052d8e:	ed9d 3a34 	vldr	s6, [sp, #208]	; 0xd0
d0052d92:	eef0 1a6d 	vmov.f32	s3, s27
d0052d96:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0052d9a:	eddd 3a35 	vldr	s7, [sp, #212]	; 0xd4
d0052d9e:	eeb0 2a48 	vmov.f32	s4, s16
d0052da2:	a840      	add	r0, sp, #256	; 0x100
d0052da4:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0052da8:	eef0 2a68 	vmov.f32	s5, s17
d0052dac:	eeb0 4a6f 	vmov.f32	s8, s31
d0052db0:	f8d9 3000 	ldr.w	r3, [r9]
d0052db4:	680e      	ldr	r6, [r1, #0]
d0052db6:	4629      	mov	r1, r5
d0052db8:	f8db 2000 	ldr.w	r2, [fp]
d0052dbc:	6836      	ldr	r6, [r6, #0]
d0052dbe:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d0052dc2:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d0052dc6:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d0052dca:	edcd da3a 	vstr	s27, [sp, #232]	; 0xe8
d0052dce:	ed8d 8a3b 	vstr	s16, [sp, #236]	; 0xec
d0052dd2:	edcd 8a3c 	vstr	s17, [sp, #240]	; 0xf0
d0052dd6:	edcd fa3f 	vstr	s31, [sp, #252]	; 0xfc
d0052dda:	ed8d 3a3d 	vstr	s6, [sp, #244]	; 0xf4
d0052dde:	edcd 3a3e 	vstr	s7, [sp, #248]	; 0xf8
d0052de2:	47b0      	blx	r6
d0052de4:	2802      	cmp	r0, #2
d0052de6:	f300 80ff 	bgt.w	d0052fe8 <sb3dParticlesRender.part.0+0x558>
d0052dea:	3420      	adds	r4, #32
d0052dec:	45a0      	cmp	r8, r4
d0052dee:	f000 812a 	beq.w	d0053046 <sb3dParticlesRender.part.0+0x5b6>
d0052df2:	7ea3      	ldrb	r3, [r4, #26]
d0052df4:	2b00      	cmp	r3, #0
d0052df6:	d0f8      	beq.n	d0052dea <sb3dParticlesRender.part.0+0x35a>
d0052df8:	edd4 7a03 	vldr	s15, [r4, #12]
d0052dfc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0052e00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e04:	d9f1      	bls.n	d0052dea <sb3dParticlesRender.part.0+0x35a>
d0052e06:	edd4 6a01 	vldr	s13, [r4, #4]
d0052e0a:	eef1 5a67 	vneg.f32	s11, s15
d0052e0e:	ed9d 7a18 	vldr	s14, [sp, #96]	; 0x60
d0052e12:	eddd 4a17 	vldr	s9, [sp, #92]	; 0x5c
d0052e16:	ee36 7ac7 	vsub.f32	s14, s13, s14
d0052e1a:	ed94 6a00 	vldr	s12, [r4]
d0052e1e:	ed94 5a02 	vldr	s10, [r4, #8]
d0052e22:	ee36 4a64 	vsub.f32	s8, s12, s9
d0052e26:	eddd 4a19 	vldr	s9, [sp, #100]	; 0x64
d0052e2a:	ee27 7a2b 	vmul.f32	s14, s14, s23
d0052e2e:	ee75 4a64 	vsub.f32	s9, s10, s9
d0052e32:	eeac 7a04 	vfma.f32	s14, s24, s8
d0052e36:	eeab 7a24 	vfma.f32	s14, s22, s9
d0052e3a:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0052e3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e42:	d9d2      	bls.n	d0052dea <sb3dParticlesRender.part.0+0x35a>
d0052e44:	edd4 4a05 	vldr	s9, [r4, #20]
d0052e48:	ed9f 7a82 	vldr	s14, [pc, #520]	; d0053054 <sb3dParticlesRender.part.0+0x5c4>
d0052e4c:	eef4 4ac7 	vcmpe.f32	s9, s14
d0052e50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e54:	f67f ae5c 	bls.w	d0052b10 <sb3dParticlesRender.part.0+0x80>
d0052e58:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d0052e5a:	2b00      	cmp	r3, #0
d0052e5c:	f340 8092 	ble.w	d0052f84 <sb3dParticlesRender.part.0+0x4f4>
d0052e60:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0052e64:	9b1d      	ldr	r3, [sp, #116]	; 0x74
d0052e66:	eeb5 1a00 	vmov.f32	s2, #80	; 0x3e800000  0.250
d0052e6a:	eddf 2a7b 	vldr	s5, [pc, #492]	; d0053058 <sb3dParticlesRender.part.0+0x5c8>
d0052e6e:	eef6 1a08 	vmov.f32	s3, #104	; 0x3f400000  0.750
d0052e72:	e072      	b.n	d0052f5a <sb3dParticlesRender.part.0+0x4ca>
d0052e74:	ed93 7a02 	vldr	s14, [r3, #8]
d0052e78:	edd3 3a01 	vldr	s7, [r3, #4]
d0052e7c:	ee37 7a66 	vsub.f32	s14, s14, s13
d0052e80:	ed93 4a03 	vldr	s8, [r3, #12]
d0052e84:	ee73 3ac6 	vsub.f32	s7, s7, s12
d0052e88:	ed93 3a0a 	vldr	s6, [r3, #40]	; 0x28
d0052e8c:	ee34 4a45 	vsub.f32	s8, s8, s10
d0052e90:	ee67 5a07 	vmul.f32	s11, s14, s14
d0052e94:	ee63 0a03 	vmul.f32	s1, s6, s6
d0052e98:	eee3 5aa3 	vfma.f32	s11, s7, s7
d0052e9c:	eee4 5a04 	vfma.f32	s11, s8, s8
d0052ea0:	eef4 5a60 	vcmp.f32	s11, s1
d0052ea4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ea8:	d554      	bpl.n	d0052f54 <sb3dParticlesRender.part.0+0x4c4>
d0052eaa:	eddf 0a6c 	vldr	s1, [pc, #432]	; d005305c <sb3dParticlesRender.part.0+0x5cc>
d0052eae:	eef4 5a60 	vcmp.f32	s11, s1
d0052eb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052eb6:	dd4d      	ble.n	d0052f54 <sb3dParticlesRender.part.0+0x4c4>
d0052eb8:	eef1 8ae5 	vsqrt.f32	s17, s11
d0052ebc:	ed93 0a08 	vldr	s0, [r3, #32]
d0052ec0:	ee20 8a00 	vmul.f32	s16, s0, s0
d0052ec4:	eef4 5ac8 	vcmpe.f32	s11, s16
d0052ec8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ecc:	eec2 0a28 	vdiv.f32	s1, s4, s17
d0052ed0:	ee63 3aa0 	vmul.f32	s7, s7, s1
d0052ed4:	ee27 7a20 	vmul.f32	s14, s14, s1
d0052ed8:	ee24 4a20 	vmul.f32	s8, s8, s1
d0052edc:	f240 80fd 	bls.w	d00530da <sb3dParticlesRender.part.0+0x64a>
d0052ee0:	ed93 8a09 	vldr	s16, [r3, #36]	; 0x24
d0052ee4:	eeb4 0ac8 	vcmpe.f32	s0, s16
d0052ee8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052eec:	da32      	bge.n	d0052f54 <sb3dParticlesRender.part.0+0x4c4>
d0052eee:	eeb4 3ac8 	vcmpe.f32	s6, s16
d0052ef2:	ee65 5aa0 	vmul.f32	s11, s11, s1
d0052ef6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052efa:	eef4 5ac8 	vcmpe.f32	s11, s16
d0052efe:	f200 80ef 	bhi.w	d00530e0 <sb3dParticlesRender.part.0+0x650>
d0052f02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f06:	da25      	bge.n	d0052f54 <sb3dParticlesRender.part.0+0x4c4>
d0052f08:	ee75 5ac0 	vsub.f32	s11, s11, s0
d0052f0c:	ee78 0a40 	vsub.f32	s1, s16, s0
d0052f10:	ee85 3aa0 	vdiv.f32	s6, s11, s1
d0052f14:	eddf 5a54 	vldr	s11, [pc, #336]	; d0053068 <sb3dParticlesRender.part.0+0x5d8>
d0052f18:	fec3 5a25 	vmaxnm.f32	s11, s6, s11
d0052f1c:	fec5 5ac2 	vminnm.f32	s11, s11, s4
d0052f20:	ee72 5a65 	vsub.f32	s11, s4, s11
d0052f24:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0052f28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f2c:	d912      	bls.n	d0052f54 <sb3dParticlesRender.part.0+0x4c4>
d0052f2e:	ee2b 7a87 	vmul.f32	s14, s23, s14
d0052f32:	eeac 7a23 	vfma.f32	s14, s24, s7
d0052f36:	eeab 7a04 	vfma.f32	s14, s22, s8
d0052f3a:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0052f3e:	eeb1 4a47 	vneg.f32	s8, s14
d0052f42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f46:	da05      	bge.n	d0052f54 <sb3dParticlesRender.part.0+0x4c4>
d0052f48:	ed93 7a07 	vldr	s14, [r3, #28]
d0052f4c:	ee65 5a87 	vmul.f32	s11, s11, s14
d0052f50:	eee4 2a25 	vfma.f32	s5, s8, s11
d0052f54:	3340      	adds	r3, #64	; 0x40
d0052f56:	459a      	cmp	sl, r3
d0052f58:	d016      	beq.n	d0052f88 <sb3dParticlesRender.part.0+0x4f8>
d0052f5a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0052f5c:	2a00      	cmp	r2, #0
d0052f5e:	d0f9      	beq.n	d0052f54 <sb3dParticlesRender.part.0+0x4c4>
d0052f60:	781a      	ldrb	r2, [r3, #0]
d0052f62:	2a00      	cmp	r2, #0
d0052f64:	d086      	beq.n	d0052e74 <sb3dParticlesRender.part.0+0x3e4>
d0052f66:	edd3 3a04 	vldr	s7, [r3, #16]
d0052f6a:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0052f6e:	ed93 7a05 	vldr	s14, [r3, #20]
d0052f72:	ed93 4a06 	vldr	s8, [r3, #24]
d0052f76:	eef1 3a63 	vneg.f32	s7, s7
d0052f7a:	eeb1 7a47 	vneg.f32	s14, s14
d0052f7e:	eeb1 4a44 	vneg.f32	s8, s8
d0052f82:	e7d4      	b.n	d0052f2e <sb3dParticlesRender.part.0+0x49e>
d0052f84:	eddf 2a34 	vldr	s5, [pc, #208]	; d0053058 <sb3dParticlesRender.part.0+0x5c8>
d0052f88:	7e63      	ldrb	r3, [r4, #25]
d0052f8a:	eef7 ea00 	vmov.f32	s29, #112	; 0x3f800000  1.0
d0052f8e:	ed9f 3a34 	vldr	s6, [pc, #208]	; d0053060 <sb3dParticlesRender.part.0+0x5d0>
d0052f92:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0052f96:	ee07 3a10 	vmov	s14, r3
d0052f9a:	eef7 5a08 	vmov.f32	s11, #120	; 0x3fc00000  1.5
d0052f9e:	eddf 1a32 	vldr	s3, [pc, #200]	; d0053068 <sb3dParticlesRender.part.0+0x5d8>
d0052fa2:	eeb1 4a04 	vmov.f32	s8, #20	; 0x40a00000  5.0
d0052fa6:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0052faa:	edd4 3a04 	vldr	s7, [r4, #16]
d0052fae:	ee27 7a03 	vmul.f32	s14, s14, s6
d0052fb2:	ee3e 3ae4 	vsub.f32	s6, s29, s9
d0052fb6:	ee64 4a84 	vmul.f32	s9, s9, s8
d0052fba:	fe87 7a21 	vmaxnm.f32	s14, s14, s3
d0052fbe:	fe87 7a22 	vmaxnm.f32	s14, s14, s5
d0052fc2:	fe87 7a6e 	vminnm.f32	s14, s14, s29
d0052fc6:	fe87 7a21 	vmaxnm.f32	s14, s14, s3
d0052fca:	fe87 7a6e 	vminnm.f32	s14, s14, s29
d0052fce:	eee7 5a42 	vfms.f32	s11, s14, s4
d0052fd2:	eee7 ea65 	vfms.f32	s29, s14, s11
d0052fd6:	ee64 eaae 	vmul.f32	s29, s9, s29
d0052fda:	eee3 ea83 	vfma.f32	s29, s7, s6
d0052fde:	fece eaa1 	vmaxnm.f32	s29, s29, s3
d0052fe2:	fece eac4 	vminnm.f32	s29, s29, s8
d0052fe6:	e59d      	b.n	d0052b24 <sb3dParticlesRender.part.0+0x94>
d0052fe8:	eef0 4a6e 	vmov.f32	s9, s29
d0052fec:	1e46      	subs	r6, r0, #1
d0052fee:	2701      	movs	r7, #1
d0052ff0:	463b      	mov	r3, r7
d0052ff2:	aa58      	add	r2, sp, #352	; 0x160
d0052ff4:	3701      	adds	r7, #1
d0052ff6:	a858      	add	r0, sp, #352	; 0x160
d0052ff8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0052ffc:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0053000:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0053004:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0053008:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d005300c:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0053010:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0053014:	7e62      	ldrb	r2, [r4, #25]
d0053016:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d005301a:	4628      	mov	r0, r5
d005301c:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0053020:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0053024:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0053028:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d005302c:	ed9c 2a01 	vldr	s4, [ip, #4]
d0053030:	7e21      	ldrb	r1, [r4, #24]
d0053032:	eddc 2a02 	vldr	s5, [ip, #8]
d0053036:	f7ff fc19 	bl	d005286c <submitClippedTri.constprop.0>
d005303a:	42b7      	cmp	r7, r6
d005303c:	d1d8      	bne.n	d0052ff0 <sb3dParticlesRender.part.0+0x560>
d005303e:	3420      	adds	r4, #32
d0053040:	45a0      	cmp	r8, r4
d0053042:	f47f aed6 	bne.w	d0052df2 <sb3dParticlesRender.part.0+0x362>
d0053046:	b059      	add	sp, #356	; 0x164
d0053048:	ecbd 8b10 	vpop	{d8-d15}
d005304c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053050:	2001f000 	.word	0x2001f000
d0053054:	38d1b717 	.word	0x38d1b717
d0053058:	3dcccccd 	.word	0x3dcccccd
d005305c:	358637bd 	.word	0x358637bd
d0053060:	3b808081 	.word	0x3b808081
d0053064:	d00668e4 	.word	0xd00668e4
d0053068:	00000000 	.word	0x00000000
d005306c:	1e43      	subs	r3, r0, #1
d005306e:	eef0 4a6e 	vmov.f32	s9, s29
d0053072:	f8cd a054 	str.w	sl, [sp, #84]	; 0x54
d0053076:	2701      	movs	r7, #1
d0053078:	46aa      	mov	sl, r5
d005307a:	4625      	mov	r5, r4
d005307c:	461c      	mov	r4, r3
d005307e:	463b      	mov	r3, r7
d0053080:	aa58      	add	r2, sp, #352	; 0x160
d0053082:	3701      	adds	r7, #1
d0053084:	a858      	add	r0, sp, #352	; 0x160
d0053086:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d005308a:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d005308e:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0053092:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0053096:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d005309a:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d005309e:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d00530a2:	7e6a      	ldrb	r2, [r5, #25]
d00530a4:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d00530a8:	4650      	mov	r0, sl
d00530aa:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d00530ae:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d00530b2:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d00530b6:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d00530ba:	ed9c 2a01 	vldr	s4, [ip, #4]
d00530be:	7e29      	ldrb	r1, [r5, #24]
d00530c0:	eddc 2a02 	vldr	s5, [ip, #8]
d00530c4:	f7ff fbd2 	bl	d005286c <submitClippedTri.constprop.0>
d00530c8:	42a7      	cmp	r7, r4
d00530ca:	d1d8      	bne.n	d005307e <sb3dParticlesRender.part.0+0x5ee>
d00530cc:	462c      	mov	r4, r5
d00530ce:	eef0 ea64 	vmov.f32	s29, s9
d00530d2:	4655      	mov	r5, sl
d00530d4:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
d00530d8:	e64d      	b.n	d0052d76 <sb3dParticlesRender.part.0+0x2e6>
d00530da:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d00530de:	e726      	b.n	d0052f2e <sb3dParticlesRender.part.0+0x49e>
d00530e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00530e4:	d812      	bhi.n	d005310c <sb3dParticlesRender.part.0+0x67c>
d00530e6:	ee75 5ac0 	vsub.f32	s11, s11, s0
d00530ea:	ee78 0a40 	vsub.f32	s1, s16, s0
d00530ee:	ee85 3aa0 	vdiv.f32	s6, s11, s1
d00530f2:	ed5f 5a23 	vldr	s11, [pc, #-140]	; d0053068 <sb3dParticlesRender.part.0+0x5d8>
d00530f6:	fec3 5a25 	vmaxnm.f32	s11, s6, s11
d00530fa:	eeb0 3a42 	vmov.f32	s6, s4
d00530fe:	fec5 5ac2 	vminnm.f32	s11, s11, s4
d0053102:	eea5 3ae1 	vfms.f32	s6, s11, s3
d0053106:	eef0 5a43 	vmov.f32	s11, s6
d005310a:	e70b      	b.n	d0052f24 <sb3dParticlesRender.part.0+0x494>
d005310c:	ee75 5ac8 	vsub.f32	s11, s11, s16
d0053110:	ee73 0a48 	vsub.f32	s1, s6, s16
d0053114:	ee85 3aa0 	vdiv.f32	s6, s11, s1
d0053118:	ed5f 5a2d 	vldr	s11, [pc, #-180]	; d0053068 <sb3dParticlesRender.part.0+0x5d8>
d005311c:	fec3 5a25 	vmaxnm.f32	s11, s6, s11
d0053120:	fec5 5ac2 	vminnm.f32	s11, s11, s4
d0053124:	ee72 5a65 	vsub.f32	s11, s4, s11
d0053128:	ee65 5a81 	vmul.f32	s11, s11, s2
d005312c:	e6fa      	b.n	d0052f24 <sb3dParticlesRender.part.0+0x494>
d005312e:	bf00      	nop

d0053130 <setDefaultRenderMode>:
d0053130:	4b01      	ldr	r3, [pc, #4]	; (d0053138 <setDefaultRenderMode+0x8>)
d0053132:	4a02      	ldr	r2, [pc, #8]	; (d005313c <setDefaultRenderMode+0xc>)
d0053134:	601a      	str	r2, [r3, #0]
d0053136:	4770      	bx	lr
d0053138:	d00fcba0 	.word	0xd00fcba0
d005313c:	d00527a1 	.word	0xd00527a1

d0053140 <initClipScratch>:
d0053140:	b510      	push	{r4, lr}
d0053142:	4c0f      	ldr	r4, [pc, #60]	; (d0053180 <initClipScratch+0x40>)
d0053144:	6823      	ldr	r3, [r4, #0]
d0053146:	b11b      	cbz	r3, d0053150 <initClipScratch+0x10>
d0053148:	4b0e      	ldr	r3, [pc, #56]	; (d0053184 <initClipScratch+0x44>)
d005314a:	681b      	ldr	r3, [r3, #0]
d005314c:	b103      	cbz	r3, d0053150 <initClipScratch+0x10>
d005314e:	bd10      	pop	{r4, pc}
d0053150:	4a0d      	ldr	r2, [pc, #52]	; (d0053188 <initClipScratch+0x48>)
d0053152:	7813      	ldrb	r3, [r2, #0]
d0053154:	7850      	ldrb	r0, [r2, #1]
d0053156:	7891      	ldrb	r1, [r2, #2]
d0053158:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d005315c:	78d2      	ldrb	r2, [r2, #3]
d005315e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0053162:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0053166:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0053168:	4798      	blx	r3
d005316a:	2800      	cmp	r0, #0
d005316c:	d0ef      	beq.n	d005314e <initClipScratch+0xe>
d005316e:	301f      	adds	r0, #31
d0053170:	4b04      	ldr	r3, [pc, #16]	; (d0053184 <initClipScratch+0x44>)
d0053172:	f020 001f 	bic.w	r0, r0, #31
d0053176:	f100 0260 	add.w	r2, r0, #96	; 0x60
d005317a:	6020      	str	r0, [r4, #0]
d005317c:	601a      	str	r2, [r3, #0]
d005317e:	bd10      	pop	{r4, pc}
d0053180:	d00668e0 	.word	0xd00668e0
d0053184:	d00668e4 	.word	0xd00668e4
d0053188:	2001f000 	.word	0x2001f000

d005318c <submitClippedTri>:
d005318c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053190:	4f84      	ldr	r7, [pc, #528]	; (d00533a4 <submitClippedTri+0x218>)
d0053192:	683d      	ldr	r5, [r7, #0]
d0053194:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0053198:	ed2d 8b04 	vpush	{d8-d9}
d005319c:	b08b      	sub	sp, #44	; 0x2c
d005319e:	f280 80ee 	bge.w	d005337e <submitClippedTri+0x1f2>
d00531a2:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00531a6:	edd0 6a14 	vldr	s13, [r0, #80]	; 0x50
d00531aa:	eeb6 9a00 	vmov.f32	s18, #96	; 0x3f000000  0.5
d00531ae:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d00531b2:	ed90 5a12 	vldr	s10, [r0, #72]	; 0x48
d00531b6:	ea4f 1c85 	mov.w	ip, r5, lsl #6
d00531ba:	eec6 8a01 	vdiv.f32	s17, s12, s2
d00531be:	4c7a      	ldr	r4, [pc, #488]	; (d00533a8 <submitClippedTri+0x21c>)
d00531c0:	469b      	mov	fp, r3
d00531c2:	f10c 0a08 	add.w	sl, ip, #8
d00531c6:	eb04 1685 	add.w	r6, r4, r5, lsl #6
d00531ca:	3501      	adds	r5, #1
d00531cc:	f10c 0810 	add.w	r8, ip, #16
d00531d0:	eddf 5a76 	vldr	s11, [pc, #472]	; d00533ac <submitClippedTri+0x220>
d00531d4:	603d      	str	r5, [r7, #0]
d00531d6:	eb04 050a 	add.w	r5, r4, sl
d00531da:	eec6 7a22 	vdiv.f32	s15, s12, s5
d00531de:	eb04 0908 	add.w	r9, r4, r8
d00531e2:	ee76 6a89 	vadd.f32	s13, s13, s18
d00531e6:	ee86 8a04 	vdiv.f32	s16, s12, s8
d00531ea:	ee37 7a09 	vadd.f32	s14, s14, s18
d00531ee:	ee68 0aa0 	vmul.f32	s1, s17, s1
d00531f2:	ee20 0a28 	vmul.f32	s0, s0, s17
d00531f6:	eef0 8a47 	vmov.f32	s17, s14
d00531fa:	ee61 1aa7 	vmul.f32	s3, s3, s15
d00531fe:	ee27 2a82 	vmul.f32	s4, s15, s4
d0053202:	eef0 7a66 	vmov.f32	s15, s13
d0053206:	eee5 8a00 	vfma.f32	s17, s10, s0
d005320a:	ed9f 0a69 	vldr	s0, [pc, #420]	; d00533b0 <submitClippedTri+0x224>
d005320e:	eee5 7a60 	vfms.f32	s15, s10, s1
d0053212:	eef0 0a47 	vmov.f32	s1, s14
d0053216:	ee23 3a08 	vmul.f32	s6, s6, s16
d005321a:	ee68 3a23 	vmul.f32	s7, s16, s7
d005321e:	eee5 0a21 	vfma.f32	s1, s10, s3
d0053222:	eea5 7a03 	vfma.f32	s14, s10, s6
d0053226:	eefd 8ae8 	vcvt.s32.f32	s17, s17
d005322a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005322e:	ee18 3a90 	vmov	r3, s17
d0053232:	eef0 1a60 	vmov.f32	s3, s1
d0053236:	ee17 7a90 	vmov	r7, s15
d005323a:	eef0 0a66 	vmov.f32	s1, s13
d005323e:	f844 300c 	str.w	r3, [r4, ip]
d0053242:	eee5 6a63 	vfms.f32	s13, s10, s7
d0053246:	6077      	str	r7, [r6, #4]
d0053248:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d005324c:	b23f      	sxth	r7, r7
d005324e:	eee5 0a42 	vfms.f32	s1, s10, s4
d0053252:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0053256:	ee11 3a90 	vmov	r3, s3
d005325a:	f844 300a 	str.w	r3, [r4, sl]
d005325e:	ee17 3a10 	vmov	r3, s14
d0053262:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0053266:	edc5 7a01 	vstr	s15, [r5, #4]
d005326a:	ee17 ea90 	vmov	lr, s15
d005326e:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0053272:	f844 3008 	str.w	r3, [r4, r8]
d0053276:	45be      	cmp	lr, r7
d0053278:	46b8      	mov	r8, r7
d005327a:	edc9 7a01 	vstr	s15, [r9, #4]
d005327e:	ee17 5a90 	vmov	r5, s15
d0053282:	f886 1034 	strb.w	r1, [r6, #52]	; 0x34
d0053286:	f886 2035 	strb.w	r2, [r6, #53]	; 0x35
d005328a:	edc6 4a07 	vstr	s9, [r6, #28]
d005328e:	f886 b036 	strb.w	fp, [r6, #54]	; 0x36
d0053292:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0053296:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d005329a:	ee31 7a47 	vsub.f32	s14, s2, s14
d005329e:	ee27 7a27 	vmul.f32	s14, s14, s15
d00532a2:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d00532a6:	fe87 7a46 	vminnm.f32	s14, s14, s12
d00532aa:	ee27 7a00 	vmul.f32	s14, s14, s0
d00532ae:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00532b2:	ee17 3a10 	vmov	r3, s14
d00532b6:	8433      	strh	r3, [r6, #32]
d00532b8:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d00532bc:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d00532c0:	ee32 7ac7 	vsub.f32	s14, s5, s14
d00532c4:	ee27 7a27 	vmul.f32	s14, s14, s15
d00532c8:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d00532cc:	fe87 7a46 	vminnm.f32	s14, s14, s12
d00532d0:	ee27 7a00 	vmul.f32	s14, s14, s0
d00532d4:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00532d8:	ee17 3a10 	vmov	r3, s14
d00532dc:	8473      	strh	r3, [r6, #34]	; 0x22
d00532de:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00532e2:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d00532e6:	ee74 7a67 	vsub.f32	s15, s8, s15
d00532ea:	ed86 1a0a 	vstr	s2, [r6, #40]	; 0x28
d00532ee:	edc6 2a0b 	vstr	s5, [r6, #44]	; 0x2c
d00532f2:	ed86 4a0c 	vstr	s8, [r6, #48]	; 0x30
d00532f6:	ee67 7a87 	vmul.f32	s15, s15, s14
d00532fa:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d00532fe:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0053302:	ee67 7a80 	vmul.f32	s15, s15, s0
d0053306:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005330a:	ee17 3a90 	vmov	r3, s15
d005330e:	84b3      	strh	r3, [r6, #36]	; 0x24
d0053310:	db3a      	blt.n	d0053388 <submitClippedTri+0x1fc>
d0053312:	463b      	mov	r3, r7
d0053314:	8737      	strh	r7, [r6, #56]	; 0x38
d0053316:	42ab      	cmp	r3, r5
d0053318:	dd02      	ble.n	d0053320 <submitClippedTri+0x194>
d005331a:	eb04 030c 	add.w	r3, r4, ip
d005331e:	871d      	strh	r5, [r3, #56]	; 0x38
d0053320:	45be      	cmp	lr, r7
d0053322:	dc36      	bgt.n	d0053392 <submitClippedTri+0x206>
d0053324:	eb04 030c 	add.w	r3, r4, ip
d0053328:	875f      	strh	r7, [r3, #58]	; 0x3a
d005332a:	45a8      	cmp	r8, r5
d005332c:	da02      	bge.n	d0053334 <submitClippedTri+0x1a8>
d005332e:	eb04 030c 	add.w	r3, r4, ip
d0053332:	875d      	strh	r5, [r3, #58]	; 0x3a
d0053334:	eb04 030c 	add.w	r3, r4, ip
d0053338:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d005333c:	2a00      	cmp	r2, #0
d005333e:	da01      	bge.n	d0053344 <submitClippedTri+0x1b8>
d0053340:	2200      	movs	r2, #0
d0053342:	871a      	strh	r2, [r3, #56]	; 0x38
d0053344:	eb04 030c 	add.w	r3, r4, ip
d0053348:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d005334c:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0053350:	db02      	blt.n	d0053358 <submitClippedTri+0x1cc>
d0053352:	f240 123f 	movw	r2, #319	; 0x13f
d0053356:	875a      	strh	r2, [r3, #58]	; 0x3a
d0053358:	eb04 010c 	add.w	r1, r4, ip
d005335c:	4464      	add	r4, ip
d005335e:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d0053362:	2b00      	cmp	r3, #0
d0053364:	bfb8      	it	lt
d0053366:	331f      	addlt	r3, #31
d0053368:	115a      	asrs	r2, r3, #5
d005336a:	f9b4 303a 	ldrsh.w	r3, [r4, #58]	; 0x3a
d005336e:	2b00      	cmp	r3, #0
d0053370:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d0053374:	bfb8      	it	lt
d0053376:	331f      	addlt	r3, #31
d0053378:	115b      	asrs	r3, r3, #5
d005337a:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
d005337e:	b00b      	add	sp, #44	; 0x2c
d0053380:	ecbd 8b04 	vpop	{d8-d9}
d0053384:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053388:	fa0f f28e 	sxth.w	r2, lr
d005338c:	4613      	mov	r3, r2
d005338e:	8732      	strh	r2, [r6, #56]	; 0x38
d0053390:	e7c1      	b.n	d0053316 <submitClippedTri+0x18a>
d0053392:	fa0f fe8e 	sxth.w	lr, lr
d0053396:	eb04 030c 	add.w	r3, r4, ip
d005339a:	46f0      	mov	r8, lr
d005339c:	f8a3 e03a 	strh.w	lr, [r3, #58]	; 0x3a
d00533a0:	e7c3      	b.n	d005332a <submitClippedTri+0x19e>
d00533a2:	bf00      	nop
d00533a4:	d0068900 	.word	0xd0068900
d00533a8:	d0068920 	.word	0xd0068920
d00533ac:	00000000 	.word	0x00000000
d00533b0:	477fff00 	.word	0x477fff00

d00533b4 <getRenderTriCount>:
d00533b4:	4b01      	ldr	r3, [pc, #4]	; (d00533bc <getRenderTriCount+0x8>)
d00533b6:	6818      	ldr	r0, [r3, #0]
d00533b8:	4770      	bx	lr
d00533ba:	bf00      	nop
d00533bc:	d0068900 	.word	0xd0068900

d00533c0 <drawFakeHorizonDots>:
d00533c0:	2800      	cmp	r0, #0
d00533c2:	f000 8107 	beq.w	d00535d4 <drawFakeHorizonDots+0x214>
d00533c6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00533ca:	4699      	mov	r9, r3
d00533cc:	ed2d 8b10 	vpush	{d8-d15}
d00533d0:	b085      	sub	sp, #20
d00533d2:	2b00      	cmp	r3, #0
d00533d4:	f000 80f9 	beq.w	d00535ca <drawFakeHorizonDots+0x20a>
d00533d8:	4617      	mov	r7, r2
d00533da:	ed90 9a02 	vldr	s18, [r0, #8]
d00533de:	edd0 8a00 	vldr	s17, [r0]
d00533e2:	4606      	mov	r6, r0
d00533e4:	2f02      	cmp	r7, #2
d00533e6:	ed90 6a01 	vldr	s12, [r0, #4]
d00533ea:	ed90 da07 	vldr	s26, [r0, #28]
d00533ee:	460a      	mov	r2, r1
d00533f0:	bfb8      	it	lt
d00533f2:	2702      	movlt	r7, #2
d00533f4:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d00533f8:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d00533fc:	ee30 ba46 	vsub.f32	s22, s0, s12
d0053400:	ee07 7a90 	vmov	s15, r7
d0053404:	ed90 fa06 	vldr	s30, [r0, #24]
d0053408:	edd0 ea08 	vldr	s29, [r0, #32]
d005340c:	f06f 0311 	mvn.w	r3, #17
d0053410:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0053414:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d0053418:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d005341c:	ee2b da0d 	vmul.f32	s26, s22, s26
d0053420:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0053424:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0053428:	ee89 7a08 	vdiv.f32	s14, s18, s16
d005342c:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d0053430:	eddf 5a69 	vldr	s11, [pc, #420]	; d00535d8 <drawFakeHorizonDots+0x218>
d0053434:	4d69      	ldr	r5, [pc, #420]	; (d00535dc <drawFakeHorizonDots+0x21c>)
d0053436:	4c6a      	ldr	r4, [pc, #424]	; (d00535e0 <drawFakeHorizonDots+0x220>)
d0053438:	eddf 9a6a 	vldr	s19, [pc, #424]	; d00535e4 <drawFakeHorizonDots+0x224>
d005343c:	eec8 7a88 	vdiv.f32	s15, s17, s16
d0053440:	9302      	str	r3, [sp, #8]
d0053442:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d00535ec <drawFakeHorizonDots+0x22c>
d0053446:	4623      	mov	r3, r4
d0053448:	ee28 8a25 	vmul.f32	s16, s16, s11
d005344c:	ee2b ba26 	vmul.f32	s22, s22, s13
d0053450:	ee68 9a29 	vmul.f32	s19, s16, s19
d0053454:	febb 7a47 	vrintm.f32	s14, s14
d0053458:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d005345c:	ee17 0a10 	vmov	r0, s14
d0053460:	fefb 7a67 	vrintm.f32	s15, s15
d0053464:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053468:	3812      	subs	r0, #18
d005346a:	ee17 1a90 	vmov	r1, s15
d005346e:	fb05 f500 	mul.w	r5, r5, r0
d0053472:	fb00 f007 	mul.w	r0, r0, r7
d0053476:	fb04 5a01 	mla	sl, r4, r1, r5
d005347a:	3912      	subs	r1, #18
d005347c:	9001      	str	r0, [sp, #4]
d005347e:	fb07 f101 	mul.w	r1, r7, r1
d0053482:	9103      	str	r1, [sp, #12]
d0053484:	eddd 7a01 	vldr	s15, [sp, #4]
d0053488:	ee39 aa08 	vadd.f32	s20, s18, s16
d005348c:	9902      	ldr	r1, [sp, #8]
d005348e:	ee78 aa88 	vadd.f32	s21, s17, s16
d0053492:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053496:	9d03      	ldr	r5, [sp, #12]
d0053498:	fb01 f801 	mul.w	r8, r1, r1
d005349c:	f06f 0411 	mvn.w	r4, #17
d00534a0:	ee37 aaca 	vsub.f32	s20, s15, s20
d00534a4:	e078      	b.n	d0053598 <drawFakeHorizonDots+0x1d8>
d00534a6:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d00534aa:	fb09 f000 	mul.w	r0, r9, r0
d00534ae:	2850      	cmp	r0, #80	; 0x50
d00534b0:	dd6e      	ble.n	d0053590 <drawFakeHorizonDots+0x1d0>
d00534b2:	494d      	ldr	r1, [pc, #308]	; (d00535e8 <drawFakeHorizonDots+0x228>)
d00534b4:	fba1 1000 	umull	r1, r0, r1, r0
d00534b8:	f3c0 1087 	ubfx	r0, r0, #6, #8
d00534bc:	fb03 a104 	mla	r1, r3, r4, sl
d00534c0:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d00534c4:	fb0b f101 	mul.w	r1, fp, r1
d00534c8:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d00534cc:	fa5f fc81 	uxtb.w	ip, r1
d00534d0:	4584      	cmp	ip, r0
d00534d2:	d85d      	bhi.n	d0053590 <drawFakeHorizonDots+0x1d0>
d00534d4:	ee07 5a10 	vmov	s14, r5
d00534d8:	f3c1 4007 	ubfx	r0, r1, #16, #8
d00534dc:	f3c1 2107 	ubfx	r1, r1, #8, #8
d00534e0:	eef0 4a4a 	vmov.f32	s9, s20
d00534e4:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00534e8:	ee06 0a90 	vmov	s13, r0
d00534ec:	ee07 1a90 	vmov	s15, r1
d00534f0:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d00534f4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00534f8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00534fc:	ee37 7a6a 	vsub.f32	s14, s14, s21
d0053500:	eee6 4aa9 	vfma.f32	s9, s13, s19
d0053504:	eea7 7aa9 	vfma.f32	s14, s15, s19
d0053508:	eef0 7a47 	vmov.f32	s15, s14
d005350c:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d0053510:	eeac 7a27 	vfma.f32	s14, s24, s15
d0053514:	ee3b 7a07 	vadd.f32	s14, s22, s14
d0053518:	eeb4 6ac7 	vcmpe.f32	s12, s14
d005351c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053520:	da36      	bge.n	d0053590 <drawFakeHorizonDots+0x1d0>
d0053522:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0053526:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d005352a:	ee2f 6a27 	vmul.f32	s12, s30, s15
d005352e:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d0053532:	ee6e 7a27 	vmul.f32	s15, s28, s15
d0053536:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d005353a:	ee83 4a87 	vdiv.f32	s8, s7, s14
d005353e:	eeae 6aa4 	vfma.f32	s12, s29, s9
d0053542:	eeed 7aa4 	vfma.f32	s15, s27, s9
d0053546:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d005354a:	ee36 7aa4 	vadd.f32	s14, s13, s9
d005354e:	ee7d 6a06 	vadd.f32	s13, s26, s12
d0053552:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d0053556:	ee35 6aa4 	vadd.f32	s12, s11, s9
d005355a:	ee66 6a85 	vmul.f32	s13, s13, s10
d005355e:	ee65 7a67 	vnmul.f32	s15, s10, s15
d0053562:	eea6 7a84 	vfma.f32	s14, s13, s8
d0053566:	eea7 6a84 	vfma.f32	s12, s15, s8
d005356a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d005356e:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0053572:	ee17 0a10 	vmov	r0, s14
d0053576:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d005357a:	d209      	bcs.n	d0053590 <drawFakeHorizonDots+0x1d0>
d005357c:	ee17 1a90 	vmov	r1, s15
d0053580:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0053584:	d204      	bcs.n	d0053590 <drawFakeHorizonDots+0x1d0>
d0053586:	9200      	str	r2, [sp, #0]
d0053588:	f7fb fa3e 	bl	d004ea08 <putPixel>
d005358c:	4b14      	ldr	r3, [pc, #80]	; (d00535e0 <drawFakeHorizonDots+0x220>)
d005358e:	9a00      	ldr	r2, [sp, #0]
d0053590:	3401      	adds	r4, #1
d0053592:	443d      	add	r5, r7
d0053594:	2c13      	cmp	r4, #19
d0053596:	d009      	beq.n	d00535ac <drawFakeHorizonDots+0x1ec>
d0053598:	fb04 8004 	mla	r0, r4, r4, r8
d005359c:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d00535a0:	dcf6      	bgt.n	d0053590 <drawFakeHorizonDots+0x1d0>
d00535a2:	28f3      	cmp	r0, #243	; 0xf3
d00535a4:	f73f af7f 	bgt.w	d00534a6 <drawFakeHorizonDots+0xe6>
d00535a8:	4648      	mov	r0, r9
d00535aa:	e787      	b.n	d00534bc <drawFakeHorizonDots+0xfc>
d00535ac:	9902      	ldr	r1, [sp, #8]
d00535ae:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d00535b2:	9801      	ldr	r0, [sp, #4]
d00535b4:	3101      	adds	r1, #1
d00535b6:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d00535ba:	4438      	add	r0, r7
d00535bc:	2913      	cmp	r1, #19
d00535be:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d00535c2:	9102      	str	r1, [sp, #8]
d00535c4:	9001      	str	r0, [sp, #4]
d00535c6:	f47f af5d 	bne.w	d0053484 <drawFakeHorizonDots+0xc4>
d00535ca:	b005      	add	sp, #20
d00535cc:	ecbd 8b10 	vpop	{d8-d15}
d00535d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00535d4:	4770      	bx	lr
d00535d6:	bf00      	nop
d00535d8:	3eb33333 	.word	0x3eb33333
d00535dc:	27d4eb2f 	.word	0x27d4eb2f
d00535e0:	165667b1 	.word	0x165667b1
d00535e4:	3c008081 	.word	0x3c008081
d00535e8:	ca4587e7 	.word	0xca4587e7
d00535ec:	4bf19f61 	.word	0x4bf19f61

d00535f0 <drawFakeSkyDots>:
d00535f0:	2a10      	cmp	r2, #16
d00535f2:	ed9f 6a73 	vldr	s12, [pc, #460]	; d00537c0 <drawFakeSkyDots+0x1d0>
d00535f6:	ed9f 7a73 	vldr	s14, [pc, #460]	; d00537c4 <drawFakeSkyDots+0x1d4>
d00535fa:	bfb8      	it	lt
d00535fc:	2210      	movlt	r2, #16
d00535fe:	2b08      	cmp	r3, #8
d0053600:	ee07 2a90 	vmov	s15, r2
d0053604:	bfb8      	it	lt
d0053606:	2308      	movlt	r3, #8
d0053608:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d005360c:	ee07 3a90 	vmov	s15, r3
d0053610:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053614:	ed2d 8b10 	vpush	{d8-d15}
d0053618:	eec6 da26 	vdiv.f32	s27, s12, s13
d005361c:	b085      	sub	sp, #20
d005361e:	4617      	mov	r7, r2
d0053620:	4682      	mov	sl, r0
d0053622:	9303      	str	r3, [sp, #12]
d0053624:	468b      	mov	fp, r1
d0053626:	2300      	movs	r3, #0
d0053628:	edd0 ea06 	vldr	s29, [r0, #24]
d005362c:	ed90 ea07 	vldr	s28, [r0, #28]
d0053630:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053634:	ed90 da08 	vldr	s26, [r0, #32]
d0053638:	edd0 ca09 	vldr	s25, [r0, #36]	; 0x24
d005363c:	ed90 ca0a 	vldr	s24, [r0, #40]	; 0x28
d0053640:	eec7 aa27 	vdiv.f32	s21, s14, s15
d0053644:	edd0 7a0d 	vldr	s15, [r0, #52]	; 0x34
d0053648:	edd0 ba0b 	vldr	s23, [r0, #44]	; 0x2c
d005364c:	edcd 7a00 	vstr	s15, [sp]
d0053650:	ed90 ba0c 	vldr	s22, [r0, #48]	; 0x30
d0053654:	edd0 7a0e 	vldr	s15, [r0, #56]	; 0x38
d0053658:	f89d 9078 	ldrb.w	r9, [sp, #120]	; 0x78
d005365c:	f8df 8178 	ldr.w	r8, [pc, #376]	; d00537d8 <drawFakeSkyDots+0x1e8>
d0053660:	ed9f fa59 	vldr	s30, [pc, #356]	; d00537c8 <drawFakeSkyDots+0x1d8>
d0053664:	9302      	str	r3, [sp, #8]
d0053666:	edcd 7a01 	vstr	s15, [sp, #4]
d005366a:	eddd 7a02 	vldr	s15, [sp, #8]
d005366e:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0053672:	4b56      	ldr	r3, [pc, #344]	; (d00537cc <drawFakeSkyDots+0x1dc>)
d0053674:	2400      	movs	r4, #0
d0053676:	ee17 2a90 	vmov	r2, s15
d005367a:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d005367e:	4e54      	ldr	r6, [pc, #336]	; (d00537d0 <drawFakeSkyDots+0x1e0>)
d0053680:	fb03 f502 	mul.w	r5, r3, r2
d0053684:	ea85 3355 	eor.w	r3, r5, r5, lsr #13
d0053688:	ee07 4a90 	vmov	s15, r4
d005368c:	eef0 fa48 	vmov.f32	s31, s16
d0053690:	3401      	adds	r4, #1
d0053692:	fb08 f303 	mul.w	r3, r8, r3
d0053696:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d005369a:	4435      	add	r5, r6
d005369c:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d00536a0:	f3c3 4207 	ubfx	r2, r3, #16, #8
d00536a4:	ee07 2a90 	vmov	s15, r2
d00536a8:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00536ac:	b2db      	uxtb	r3, r3
d00536ae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00536b2:	ee07 2a10 	vmov	s14, r2
d00536b6:	454b      	cmp	r3, r9
d00536b8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00536bc:	eee7 fa8f 	vfma.f32	s31, s15, s30
d00536c0:	d86f      	bhi.n	d00537a2 <drawFakeSkyDots+0x1b2>
d00536c2:	eee7 6a0f 	vfma.f32	s13, s14, s30
d00536c6:	ee6f faaa 	vmul.f32	s31, s31, s21
d00536ca:	eeb0 0a6f 	vmov.f32	s0, s31
d00536ce:	ee26 aaad 	vmul.f32	s20, s13, s27
d00536d2:	f003 fad9 	bl	d0056c88 <sinf>
d00536d6:	eeb0 9a40 	vmov.f32	s18, s0
d00536da:	eeb0 0a6f 	vmov.f32	s0, s31
d00536de:	f003 f8ef 	bl	d00568c0 <cosf>
d00536e2:	eef0 fa40 	vmov.f32	s31, s0
d00536e6:	eeb0 0a4a 	vmov.f32	s0, s20
d00536ea:	f003 facd 	bl	d0056c88 <sinf>
d00536ee:	eef0 9a40 	vmov.f32	s19, s0
d00536f2:	eeb0 0a4a 	vmov.f32	s0, s20
d00536f6:	f003 f8e3 	bl	d00568c0 <cosf>
d00536fa:	eddd 6a01 	vldr	s13, [sp, #4]
d00536fe:	ee2f 7aa9 	vmul.f32	s14, s31, s19
d0053702:	ee6f 7a80 	vmul.f32	s15, s31, s0
d0053706:	ee26 6a87 	vmul.f32	s12, s13, s14
d005370a:	ee6c 4aa7 	vmul.f32	s9, s25, s15
d005370e:	ee6e 6aa7 	vmul.f32	s13, s29, s15
d0053712:	eeab 6a27 	vfma.f32	s12, s22, s15
d0053716:	eef0 7a66 	vmov.f32	s15, s13
d005371a:	eef0 6a64 	vmov.f32	s13, s9
d005371e:	eeed 7a07 	vfma.f32	s15, s26, s14
d0053722:	eeeb 6a87 	vfma.f32	s13, s23, s14
d0053726:	eeb0 7a46 	vmov.f32	s14, s12
d005372a:	ed9d 6a00 	vldr	s12, [sp]
d005372e:	eea6 7a09 	vfma.f32	s14, s12, s18
d0053732:	ed9f 6a28 	vldr	s12, [pc, #160]	; d00537d4 <drawFakeSkyDots+0x1e4>
d0053736:	eeee 7a09 	vfma.f32	s15, s28, s18
d005373a:	eeec 6a09 	vfma.f32	s13, s24, s18
d005373e:	eeb4 7ac6 	vcmpe.f32	s14, s12
d0053742:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053746:	d92c      	bls.n	d00537a2 <drawFakeSkyDots+0x1b2>
d0053748:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d005374c:	ed9a 5a12 	vldr	s10, [sl, #72]	; 0x48
d0053750:	ee65 7a27 	vmul.f32	s15, s10, s15
d0053754:	eec6 4a07 	vdiv.f32	s9, s12, s14
d0053758:	ed9a 7a13 	vldr	s14, [sl, #76]	; 0x4c
d005375c:	ed9a 6a14 	vldr	s12, [sl, #80]	; 0x50
d0053760:	ee37 7a28 	vadd.f32	s14, s14, s17
d0053764:	ee36 6a28 	vadd.f32	s12, s12, s17
d0053768:	ee65 6a26 	vmul.f32	s13, s10, s13
d005376c:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0053770:	eef0 7a47 	vmov.f32	s15, s14
d0053774:	eeb0 7a46 	vmov.f32	s14, s12
d0053778:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005377c:	eea4 7ae6 	vfms.f32	s14, s9, s13
d0053780:	ee17 0a90 	vmov	r0, s15
d0053784:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0053788:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d005378c:	d209      	bcs.n	d00537a2 <drawFakeSkyDots+0x1b2>
d005378e:	ee17 3a90 	vmov	r3, s15
d0053792:	465a      	mov	r2, fp
d0053794:	ee17 1a90 	vmov	r1, s15
d0053798:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d005379c:	d201      	bcs.n	d00537a2 <drawFakeSkyDots+0x1b2>
d005379e:	f7fb f933 	bl	d004ea08 <putPixel>
d00537a2:	42a7      	cmp	r7, r4
d00537a4:	f47f af6e 	bne.w	d0053684 <drawFakeSkyDots+0x94>
d00537a8:	9b02      	ldr	r3, [sp, #8]
d00537aa:	9a03      	ldr	r2, [sp, #12]
d00537ac:	3301      	adds	r3, #1
d00537ae:	429a      	cmp	r2, r3
d00537b0:	9302      	str	r3, [sp, #8]
d00537b2:	f47f af5a 	bne.w	d005366a <drawFakeSkyDots+0x7a>
d00537b6:	b005      	add	sp, #20
d00537b8:	ecbd 8b10 	vpop	{d8-d15}
d00537bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00537c0:	40c90fdb 	.word	0x40c90fdb
d00537c4:	3fc90fdb 	.word	0x3fc90fdb
d00537c8:	3b808081 	.word	0x3b808081
d00537cc:	27d4eb2f 	.word	0x27d4eb2f
d00537d0:	165667b1 	.word	0x165667b1
d00537d4:	3a83126f 	.word	0x3a83126f
d00537d8:	4bf19f61 	.word	0x4bf19f61

d00537dc <drawFakeHorizon>:
d00537dc:	2800      	cmp	r0, #0
d00537de:	f000 813e 	beq.w	d0053a5e <drawFakeHorizon+0x282>
d00537e2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00537e6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00537ea:	ed2d 8b0e 	vpush	{d8-d14}
d00537ee:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d00537f2:	b083      	sub	sp, #12
d00537f4:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d00537f8:	460f      	mov	r7, r1
d00537fa:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d00537fe:	eddf 7a9c 	vldr	s15, [pc, #624]	; d0053a70 <drawFakeHorizon+0x294>
d0053802:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d0053806:	4690      	mov	r8, r2
d0053808:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d005380c:	4699      	mov	r9, r3
d005380e:	ed90 ea07 	vldr	s28, [r0, #28]
d0053812:	2400      	movs	r4, #0
d0053814:	ed90 9a01 	vldr	s18, [r0, #4]
d0053818:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d005381c:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d0053820:	ee2b 7aad 	vmul.f32	s14, s23, s27
d0053824:	4e93      	ldr	r6, [pc, #588]	; (d0053a74 <drawFakeHorizon+0x298>)
d0053826:	eef0 aa4c 	vmov.f32	s21, s24
d005382a:	ed9f 8a93 	vldr	s16, [pc, #588]	; d0053a78 <drawFakeHorizon+0x29c>
d005382e:	eeb0 aa4c 	vmov.f32	s20, s24
d0053832:	eecd ca2d 	vdiv.f32	s25, s26, s27
d0053836:	eeb0 baed 	vabs.f32	s22, s27
d005383a:	ee30 9a49 	vsub.f32	s18, s0, s18
d005383e:	ee67 7aa8 	vmul.f32	s15, s15, s17
d0053842:	eee7 aa28 	vfma.f32	s21, s14, s17
d0053846:	ee6e 8a28 	vmul.f32	s17, s28, s17
d005384a:	eea7 aaad 	vfma.f32	s20, s15, s27
d005384e:	e056      	b.n	d00538fe <drawFakeHorizon+0x122>
d0053850:	ee89 6a26 	vdiv.f32	s12, s18, s13
d0053854:	eef0 6ac7 	vabs.f32	s13, s14
d0053858:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d005385c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053860:	eef4 6ac8 	vcmpe.f32	s13, s16
d0053864:	bfcc      	ite	gt
d0053866:	2201      	movgt	r2, #1
d0053868:	2200      	movle	r2, #0
d005386a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005386e:	da61      	bge.n	d0053934 <drawFakeHorizon+0x158>
d0053870:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0053874:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0053878:	6833      	ldr	r3, [r6, #0]
d005387a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005387e:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0053882:	f240 80a8 	bls.w	d00539d6 <drawFakeHorizon+0x1fa>
d0053886:	eeb4 bac8 	vcmpe.f32	s22, s16
d005388a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005388e:	f100 809a 	bmi.w	d00539c6 <drawFakeHorizon+0x1ea>
d0053892:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0053896:	eeb0 7a6b 	vmov.f32	s14, s23
d005389a:	eeac 7aa7 	vfma.f32	s14, s25, s15
d005389e:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00538a2:	ee17 ba90 	vmov	fp, s15
d00538a6:	f1bb 0f00 	cmp.w	fp, #0
d00538aa:	f2c0 80aa 	blt.w	d0053a02 <drawFakeHorizon+0x226>
d00538ae:	2201      	movs	r2, #1
d00538b0:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00538b4:	46da      	mov	sl, fp
d00538b6:	bfa8      	it	ge
d00538b8:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d00538bc:	2a00      	cmp	r2, #0
d00538be:	f000 8091 	beq.w	d00539e4 <drawFakeHorizon+0x208>
d00538c2:	f1bb 0f00 	cmp.w	fp, #0
d00538c6:	d009      	beq.n	d00538dc <drawFakeHorizon+0x100>
d00538c8:	f1ba 0f00 	cmp.w	sl, #0
d00538cc:	4628      	mov	r0, r5
d00538ce:	4641      	mov	r1, r8
d00538d0:	bfcc      	ite	gt
d00538d2:	4652      	movgt	r2, sl
d00538d4:	2201      	movle	r2, #1
d00538d6:	4415      	add	r5, r2
d00538d8:	f001 fec0 	bl	d005565c <memset>
d00538dc:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00538e0:	d009      	beq.n	d00538f6 <drawFakeHorizon+0x11a>
d00538e2:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00538e6:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00538ea:	4628      	mov	r0, r5
d00538ec:	4639      	mov	r1, r7
d00538ee:	bfa8      	it	ge
d00538f0:	2201      	movge	r2, #1
d00538f2:	f001 feb3 	bl	d005565c <memset>
d00538f6:	3401      	adds	r4, #1
d00538f8:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00538fc:	d04e      	beq.n	d005399c <drawFakeHorizon+0x1c0>
d00538fe:	ee07 4a90 	vmov	s15, r4
d0053902:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053906:	ee77 7ae9 	vsub.f32	s15, s15, s19
d005390a:	ee67 7aa8 	vmul.f32	s15, s15, s17
d005390e:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d0053912:	ee3a 7a27 	vadd.f32	s14, s20, s15
d0053916:	eeb0 6ae6 	vabs.f32	s12, s13
d005391a:	eeb4 6ac8 	vcmpe.f32	s12, s16
d005391e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053922:	da95      	bge.n	d0053850 <drawFakeHorizon+0x74>
d0053924:	eef0 6ac7 	vabs.f32	s13, s14
d0053928:	eef4 6ac8 	vcmpe.f32	s13, s16
d005392c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053930:	db4c      	blt.n	d00539cc <drawFakeHorizon+0x1f0>
d0053932:	2200      	movs	r2, #0
d0053934:	eec9 6a07 	vdiv.f32	s13, s18, s14
d0053938:	6833      	ldr	r3, [r6, #0]
d005393a:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d005393e:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0053942:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0053946:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005394a:	bfcc      	ite	gt
d005394c:	2301      	movgt	r3, #1
d005394e:	2300      	movle	r3, #0
d0053950:	4293      	cmp	r3, r2
d0053952:	f000 8085 	beq.w	d0053a60 <drawFakeHorizon+0x284>
d0053956:	eeb4 bac8 	vcmpe.f32	s22, s16
d005395a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005395e:	d429      	bmi.n	d00539b4 <drawFakeHorizon+0x1d8>
d0053960:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0053964:	eeb0 7a6b 	vmov.f32	s14, s23
d0053968:	eeac 7aa7 	vfma.f32	s14, s25, s15
d005396c:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0053970:	ee17 ba90 	vmov	fp, s15
d0053974:	f1bb 0f00 	cmp.w	fp, #0
d0053978:	da9a      	bge.n	d00538b0 <drawFakeHorizon+0xd4>
d005397a:	2a00      	cmp	r2, #0
d005397c:	d141      	bne.n	d0053a02 <drawFakeHorizon+0x226>
d005397e:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0053982:	f104 0401 	add.w	r4, r4, #1
d0053986:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d005398a:	4628      	mov	r0, r5
d005398c:	bfa8      	it	ge
d005398e:	2201      	movge	r2, #1
d0053990:	4641      	mov	r1, r8
d0053992:	f001 fe63 	bl	d005565c <memset>
d0053996:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d005399a:	d1b0      	bne.n	d00538fe <drawFakeHorizon+0x122>
d005399c:	eddf 7a36 	vldr	s15, [pc, #216]	; d0053a78 <drawFakeHorizon+0x29c>
d00539a0:	eeb4 bae7 	vcmpe.f32	s22, s15
d00539a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539a8:	da31      	bge.n	d0053a0e <drawFakeHorizon+0x232>
d00539aa:	b003      	add	sp, #12
d00539ac:	ecbd 8b0e 	vpop	{d8-d14}
d00539b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00539b4:	b93a      	cbnz	r2, d00539c6 <drawFakeHorizon+0x1ea>
d00539b6:	22a0      	movs	r2, #160	; 0xa0
d00539b8:	4628      	mov	r0, r5
d00539ba:	4639      	mov	r1, r7
d00539bc:	4415      	add	r5, r2
d00539be:	f001 fe4d 	bl	d005565c <memset>
d00539c2:	22a0      	movs	r2, #160	; 0xa0
d00539c4:	e7db      	b.n	d005397e <drawFakeHorizon+0x1a2>
d00539c6:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d00539ca:	e77d      	b.n	d00538c8 <drawFakeHorizon+0xec>
d00539cc:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00539d0:	6832      	ldr	r2, [r6, #0]
d00539d2:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d00539d6:	4639      	mov	r1, r7
d00539d8:	4628      	mov	r0, r5
d00539da:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00539de:	f001 fe3d 	bl	d005565c <memset>
d00539e2:	e788      	b.n	d00538f6 <drawFakeHorizon+0x11a>
d00539e4:	f1bb 0f00 	cmp.w	fp, #0
d00539e8:	d00e      	beq.n	d0053a08 <drawFakeHorizon+0x22c>
d00539ea:	4628      	mov	r0, r5
d00539ec:	4652      	mov	r2, sl
d00539ee:	4639      	mov	r1, r7
d00539f0:	4455      	add	r5, sl
d00539f2:	f001 fe33 	bl	d005565c <memset>
d00539f6:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00539fa:	f6bf af7c 	bge.w	d00538f6 <drawFakeHorizon+0x11a>
d00539fe:	4652      	mov	r2, sl
d0053a00:	e7bd      	b.n	d005397e <drawFakeHorizon+0x1a2>
d0053a02:	f04f 0a00 	mov.w	sl, #0
d0053a06:	e76c      	b.n	d00538e2 <drawFakeHorizon+0x106>
d0053a08:	46da      	mov	sl, fp
d0053a0a:	4652      	mov	r2, sl
d0053a0c:	e7b7      	b.n	d005397e <drawFakeHorizon+0x1a2>
d0053a0e:	ee2d ca0c 	vmul.f32	s24, s26, s24
d0053a12:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0053a7c <drawFakeHorizon+0x2a0>
d0053a16:	f240 12df 	movw	r2, #479	; 0x1df
d0053a1a:	2000      	movs	r0, #0
d0053a1c:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0053a20:	f8cd 9000 	str.w	r9, [sp]
d0053a24:	eef0 6a4c 	vmov.f32	s13, s24
d0053a28:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0053a2c:	eee9 6ace 	vfms.f32	s13, s19, s28
d0053a30:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d0053a34:	ee86 7aad 	vdiv.f32	s14, s13, s27
d0053a38:	ee37 7a2b 	vadd.f32	s14, s14, s23
d0053a3c:	ee77 baab 	vadd.f32	s23, s15, s23
d0053a40:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0053a44:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d0053a48:	ee17 1a10 	vmov	r1, s14
d0053a4c:	ee17 3a90 	vmov	r3, s15
d0053a50:	f7fa ffea 	bl	d004ea28 <drawLine>
d0053a54:	b003      	add	sp, #12
d0053a56:	ecbd 8b0e 	vpop	{d8-d14}
d0053a5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053a5e:	4770      	bx	lr
d0053a60:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0053a64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a68:	ddb5      	ble.n	d00539d6 <drawFakeHorizon+0x1fa>
d0053a6a:	4641      	mov	r1, r8
d0053a6c:	e7b4      	b.n	d00539d8 <drawFakeHorizon+0x1fc>
d0053a6e:	bf00      	nop
d0053a70:	439f8000 	.word	0x439f8000
d0053a74:	d00f4b90 	.word	0xd00f4b90
d0053a78:	38d1b717 	.word	0x38d1b717
d0053a7c:	43ef8000 	.word	0x43ef8000

d0053a80 <submitEntitySolid>:
d0053a80:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053a84:	ed2d 8b10 	vpush	{d8-d15}
d0053a88:	b0c7      	sub	sp, #284	; 0x11c
d0053a8a:	f10d 03bf 	add.w	r3, sp, #191	; 0xbf
d0053a8e:	9101      	str	r1, [sp, #4]
d0053a90:	f023 031f 	bic.w	r3, r3, #31
d0053a94:	9302      	str	r3, [sp, #8]
d0053a96:	2800      	cmp	r0, #0
d0053a98:	f000 836a 	beq.w	d0054170 <submitEntitySolid+0x6f0>
d0053a9c:	f8d0 8018 	ldr.w	r8, [r0, #24]
d0053aa0:	4604      	mov	r4, r0
d0053aa2:	f1b8 0f00 	cmp.w	r8, #0
d0053aa6:	f000 8363 	beq.w	d0054170 <submitEntitySolid+0x6f0>
d0053aaa:	f8d8 3000 	ldr.w	r3, [r8]
d0053aae:	2b00      	cmp	r3, #0
d0053ab0:	f000 835e 	beq.w	d0054170 <submitEntitySolid+0x6f0>
d0053ab4:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0053ab8:	2b00      	cmp	r3, #0
d0053aba:	f000 8359 	beq.w	d0054170 <submitEntitySolid+0x6f0>
d0053abe:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0053ac2:	3b01      	subs	r3, #1
d0053ac4:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0053ac8:	f080 8352 	bcs.w	d0054170 <submitEntitySolid+0x6f0>
d0053acc:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053ad0:	2b00      	cmp	r3, #0
d0053ad2:	f340 834d 	ble.w	d0054170 <submitEntitySolid+0x6f0>
d0053ad6:	edd1 7a15 	vldr	s15, [r1, #84]	; 0x54
d0053ada:	460e      	mov	r6, r1
d0053adc:	ed91 fa11 	vldr	s30, [r1, #68]	; 0x44
d0053ae0:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0053ae4:	ed91 8a10 	vldr	s16, [r1, #64]	; 0x40
d0053ae8:	f7fe fd9e 	bl	d0052628 <lightsGet>
d0053aec:	4605      	mov	r5, r0
d0053aee:	f7fe fd9f 	bl	d0052630 <lightsGetCount>
d0053af2:	edd8 7a09 	vldr	s15, [r8, #36]	; 0x24
d0053af6:	ed98 7a0a 	vldr	s14, [r8, #40]	; 0x28
d0053afa:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0053afe:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d0053b02:	edd8 7a08 	vldr	s15, [r8, #32]
d0053b06:	edd4 3a00 	vldr	s7, [r4]
d0053b0a:	edcd 7a06 	vstr	s15, [sp, #24]
d0053b0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b12:	edd8 7a0c 	vldr	s15, [r8, #48]	; 0x30
d0053b16:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0053b1a:	edd4 1a01 	vldr	s3, [r4, #4]
d0053b1e:	edcd 7a07 	vstr	s15, [sp, #28]
d0053b22:	bfc8      	it	gt
d0053b24:	2301      	movgt	r3, #1
d0053b26:	edd8 7a0b 	vldr	s15, [r8, #44]	; 0x2c
d0053b2a:	bfd8      	it	le
d0053b2c:	2300      	movle	r3, #0
d0053b2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b32:	edd4 0a02 	vldr	s1, [r4, #8]
d0053b36:	edcd 7a11 	vstr	s15, [sp, #68]	; 0x44
d0053b3a:	edd6 7a00 	vldr	s15, [r6]
d0053b3e:	bfc8      	it	gt
d0053b40:	f043 0301 	orrgt.w	r3, r3, #1
d0053b44:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d0053b48:	edcd 7a08 	vstr	s15, [sp, #32]
d0053b4c:	edd6 7a01 	vldr	s15, [r6, #4]
d0053b50:	edd4 aa0a 	vldr	s21, [r4, #40]	; 0x28
d0053b54:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0053b58:	edd6 7a02 	vldr	s15, [r6, #8]
d0053b5c:	ed94 ba0b 	vldr	s22, [r4, #44]	; 0x2c
d0053b60:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0053b64:	edd4 ba0c 	vldr	s23, [r4, #48]	; 0x30
d0053b68:	ed94 ca0d 	vldr	s24, [r4, #52]	; 0x34
d0053b6c:	edd4 ca0e 	vldr	s25, [r4, #56]	; 0x38
d0053b70:	ed94 da0f 	vldr	s26, [r4, #60]	; 0x3c
d0053b74:	edd4 da07 	vldr	s27, [r4, #28]
d0053b78:	ed94 ea08 	vldr	s28, [r4, #32]
d0053b7c:	edd4 ea09 	vldr	s29, [r4, #36]	; 0x24
d0053b80:	ed96 5a06 	vldr	s10, [r6, #24]
d0053b84:	edcd 3a00 	vstr	s7, [sp]
d0053b88:	edcd 1a03 	vstr	s3, [sp, #12]
d0053b8c:	edcd 0a04 	vstr	s1, [sp, #16]
d0053b90:	ed96 3a07 	vldr	s6, [r6, #28]
d0053b94:	edd6 6a08 	vldr	s13, [r6, #32]
d0053b98:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d0053b9c:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d0053ba0:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d0053ba4:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d0053ba8:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d0053bac:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d0053bb0:	b113      	cbz	r3, d0053bb8 <submitEntitySolid+0x138>
d0053bb2:	2800      	cmp	r0, #0
d0053bb4:	f300 849b 	bgt.w	d00544ee <submitEntitySolid+0xa6e>
d0053bb8:	2300      	movs	r3, #0
d0053bba:	9305      	str	r3, [sp, #20]
d0053bbc:	eddd 4a03 	vldr	s9, [sp, #12]
d0053bc0:	ee6b 1a03 	vmul.f32	s3, s22, s6
d0053bc4:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d0053bc8:	ee2c 1a83 	vmul.f32	s2, s25, s6
d0053bcc:	ee6b 0a22 	vmul.f32	s1, s22, s5
d0053bd0:	f8d8 0004 	ldr.w	r0, [r8, #4]
d0053bd4:	ee74 3ac4 	vsub.f32	s7, s9, s8
d0053bd8:	eddd 4a00 	vldr	s9, [sp]
d0053bdc:	ed9d 4a08 	vldr	s8, [sp, #32]
d0053be0:	ee2c 0aa2 	vmul.f32	s0, s25, s5
d0053be4:	ee6b 8a02 	vmul.f32	s17, s22, s4
d0053be8:	2800      	cmp	r0, #0
d0053bea:	ee74 4ac4 	vsub.f32	s9, s9, s8
d0053bee:	ee63 9a23 	vmul.f32	s19, s6, s7
d0053bf2:	ee22 aaa3 	vmul.f32	s20, s5, s7
d0053bf6:	ee2c 9a82 	vmul.f32	s18, s25, s4
d0053bfa:	ee62 3a23 	vmul.f32	s7, s4, s7
d0053bfe:	ee2e 3a03 	vmul.f32	s6, s28, s6
d0053c02:	ee6e 2a22 	vmul.f32	s5, s28, s5
d0053c06:	ee2e 2a02 	vmul.f32	s4, s28, s4
d0053c0a:	eea5 aaa4 	vfma.f32	s20, s11, s9
d0053c0e:	eee6 3a24 	vfma.f32	s7, s12, s9
d0053c12:	eeea 0aa5 	vfma.f32	s1, s21, s11
d0053c16:	eeac 0a25 	vfma.f32	s0, s24, s11
d0053c1a:	eeed 2aa5 	vfma.f32	s5, s27, s11
d0053c1e:	eddd 5a0a 	vldr	s11, [sp, #40]	; 0x28
d0053c22:	eeea 8a86 	vfma.f32	s17, s21, s12
d0053c26:	eeac 9a06 	vfma.f32	s18, s24, s12
d0053c2a:	eead 2a86 	vfma.f32	s4, s27, s12
d0053c2e:	ed9d 6a04 	vldr	s12, [sp, #16]
d0053c32:	eee5 9a24 	vfma.f32	s19, s10, s9
d0053c36:	eeea 1a85 	vfma.f32	s3, s21, s10
d0053c3a:	eeac 1a05 	vfma.f32	s2, s24, s10
d0053c3e:	eead 3a85 	vfma.f32	s6, s27, s10
d0053c42:	ee36 6a65 	vsub.f32	s12, s12, s11
d0053c46:	eeeb 0a87 	vfma.f32	s1, s23, s14
d0053c4a:	eead 0a07 	vfma.f32	s0, s26, s14
d0053c4e:	eeeb 1aa6 	vfma.f32	s3, s23, s13
d0053c52:	eead 1a26 	vfma.f32	s2, s26, s13
d0053c56:	eee6 9a86 	vfma.f32	s19, s13, s12
d0053c5a:	eea7 aa06 	vfma.f32	s20, s14, s12
d0053c5e:	eee7 3a86 	vfma.f32	s7, s15, s12
d0053c62:	eeae 3aa6 	vfma.f32	s6, s29, s13
d0053c66:	eeee 2a87 	vfma.f32	s5, s29, s14
d0053c6a:	eeeb 8aa7 	vfma.f32	s17, s23, s15
d0053c6e:	eead 9a27 	vfma.f32	s18, s26, s15
d0053c72:	eeae 2aa7 	vfma.f32	s4, s29, s15
d0053c76:	dd61      	ble.n	d0053d3c <submitEntitySolid+0x2bc>
d0053c78:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0053c7c:	f8d8 3000 	ldr.w	r3, [r8]
d0053c80:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0053c84:	ed8d fa0f 	vstr	s30, [sp, #60]	; 0x3c
d0053c88:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0053c8c:	ed8d 8a10 	vstr	s16, [sp, #64]	; 0x40
d0053c90:	4936      	ldr	r1, [pc, #216]	; (d0053d6c <submitEntitySolid+0x2ec>)
d0053c92:	4a37      	ldr	r2, [pc, #220]	; (d0053d70 <submitEntitySolid+0x2f0>)
d0053c94:	ed9d 8a00 	vldr	s16, [sp]
d0053c98:	ed9d fa03 	vldr	s30, [sp, #12]
d0053c9c:	eddd fa04 	vldr	s31, [sp, #16]
d0053ca0:	edd3 7a01 	vldr	s15, [r3, #4]
d0053ca4:	330c      	adds	r3, #12
d0053ca6:	ed13 4a03 	vldr	s8, [r3, #-12]
d0053caa:	310c      	adds	r1, #12
d0053cac:	ee2c 5a27 	vmul.f32	s10, s24, s15
d0053cb0:	ed53 4a01 	vldr	s9, [r3, #-4]
d0053cb4:	ee6c 5aa7 	vmul.f32	s11, s25, s15
d0053cb8:	4298      	cmp	r0, r3
d0053cba:	ee2d 6a27 	vmul.f32	s12, s26, s15
d0053cbe:	f102 020c 	add.w	r2, r2, #12
d0053cc2:	ee61 6a27 	vmul.f32	s13, s2, s15
d0053cc6:	ee20 7a27 	vmul.f32	s14, s0, s15
d0053cca:	ee69 7a27 	vmul.f32	s15, s18, s15
d0053cce:	eeaa 5a84 	vfma.f32	s10, s21, s8
d0053cd2:	eeeb 5a04 	vfma.f32	s11, s22, s8
d0053cd6:	eeab 6a84 	vfma.f32	s12, s23, s8
d0053cda:	eee1 6a84 	vfma.f32	s13, s3, s8
d0053cde:	eea0 7a84 	vfma.f32	s14, s1, s8
d0053ce2:	eee8 7a84 	vfma.f32	s15, s17, s8
d0053ce6:	ee38 5a05 	vadd.f32	s10, s16, s10
d0053cea:	ee7f 5a25 	vadd.f32	s11, s30, s11
d0053cee:	ee3f 6a86 	vadd.f32	s12, s31, s12
d0053cf2:	ee76 6aa9 	vadd.f32	s13, s13, s19
d0053cf6:	ee37 7a0a 	vadd.f32	s14, s14, s20
d0053cfa:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0053cfe:	eead 5aa4 	vfma.f32	s10, s27, s9
d0053d02:	eeee 5a24 	vfma.f32	s11, s28, s9
d0053d06:	eeae 6aa4 	vfma.f32	s12, s29, s9
d0053d0a:	eee3 6a24 	vfma.f32	s13, s6, s9
d0053d0e:	eea2 7aa4 	vfma.f32	s14, s5, s9
d0053d12:	eee2 7a24 	vfma.f32	s15, s4, s9
d0053d16:	ed01 5a03 	vstr	s10, [r1, #-12]
d0053d1a:	ed41 5a02 	vstr	s11, [r1, #-8]
d0053d1e:	ed01 6a01 	vstr	s12, [r1, #-4]
d0053d22:	ed42 6a03 	vstr	s13, [r2, #-12]
d0053d26:	ed02 7a02 	vstr	s14, [r2, #-8]
d0053d2a:	ed42 7a01 	vstr	s15, [r2, #-4]
d0053d2e:	d1b7      	bne.n	d0053ca0 <submitEntitySolid+0x220>
d0053d30:	eddd fa0e 	vldr	s31, [sp, #56]	; 0x38
d0053d34:	ed9d fa0f 	vldr	s30, [sp, #60]	; 0x3c
d0053d38:	ed9d 8a10 	vldr	s16, [sp, #64]	; 0x40
d0053d3c:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053d40:	2b00      	cmp	r3, #0
d0053d42:	9300      	str	r3, [sp, #0]
d0053d44:	f340 8214 	ble.w	d0054170 <submitEntitySolid+0x6f0>
d0053d48:	f04f 0a00 	mov.w	sl, #0
d0053d4c:	f8df b020 	ldr.w	fp, [pc, #32]	; d0053d70 <submitEntitySolid+0x2f0>
d0053d50:	ed9f aa08 	vldr	s20, [pc, #32]	; d0053d74 <submitEntitySolid+0x2f4>
d0053d54:	ed9f ba08 	vldr	s22, [pc, #32]	; d0053d78 <submitEntitySolid+0x2f8>
d0053d58:	eddf aa08 	vldr	s21, [pc, #32]	; d0053d7c <submitEntitySolid+0x2fc>
d0053d5c:	ed9d ca0b 	vldr	s24, [sp, #44]	; 0x2c
d0053d60:	eddd ca0c 	vldr	s25, [sp, #48]	; 0x30
d0053d64:	ed9d da0d 	vldr	s26, [sp, #52]	; 0x34
d0053d68:	e05a      	b.n	d0053e20 <submitEntitySolid+0x3a0>
d0053d6a:	bf00      	nop
d0053d6c:	d00e8920 	.word	0xd00e8920
d0053d70:	d005a8e0 	.word	0xd005a8e0
d0053d74:	358637bd 	.word	0x358637bd
d0053d78:	3b808081 	.word	0x3b808081
d0053d7c:	00000000 	.word	0x00000000
d0053d80:	437f0000 	.word	0x437f0000
d0053d84:	ed5f 5a02 	vldr	s11, [pc, #-8]	; d0053d80 <submitEntitySolid+0x300>
d0053d88:	eef4 fa65 	vcmp.f32	s31, s11
d0053d8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d90:	d009      	beq.n	d0053da6 <submitEntitySolid+0x326>
d0053d92:	eddd 5a06 	vldr	s11, [sp, #24]
d0053d96:	ed9d 2a07 	vldr	s4, [sp, #28]
d0053d9a:	9b05      	ldr	r3, [sp, #20]
d0053d9c:	ee75 fa82 	vadd.f32	s31, s11, s4
d0053da0:	2b00      	cmp	r3, #0
d0053da2:	f040 8254 	bne.w	d005424e <submitEntitySolid+0x7ce>
d0053da6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053daa:	fecf faab 	vmaxnm.f32	s31, s31, s23
d0053dae:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0053db2:	9b03      	ldr	r3, [sp, #12]
d0053db4:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0053db8:	fecf fae7 	vminnm.f32	s31, s31, s15
d0053dbc:	fe8f 7aaa 	vmaxnm.f32	s14, s31, s21
d0053dc0:	fe87 7a67 	vminnm.f32	s14, s14, s15
d0053dc4:	eef1 8a04 	vmov.f32	s17, #20	; 0x40a00000  5.0
d0053dc8:	eee7 6a46 	vfms.f32	s13, s14, s12
d0053dcc:	eee7 7a66 	vfms.f32	s15, s14, s13
d0053dd0:	ee67 8aa8 	vmul.f32	s17, s15, s17
d0053dd4:	2b00      	cmp	r3, #0
d0053dd6:	f000 81d0 	beq.w	d005417a <submitEntitySolid+0x6fa>
d0053dda:	7ba3      	ldrb	r3, [r4, #14]
d0053ddc:	eef0 4a68 	vmov.f32	s9, s17
d0053de0:	7b62      	ldrb	r2, [r4, #13]
d0053de2:	9801      	ldr	r0, [sp, #4]
d0053de4:	7b21      	ldrb	r1, [r4, #12]
d0053de6:	ed97 3a00 	vldr	s6, [r7]
d0053dea:	edd7 3a01 	vldr	s7, [r7, #4]
d0053dee:	ed97 4a02 	vldr	s8, [r7, #8]
d0053df2:	edd6 1a00 	vldr	s3, [r6]
d0053df6:	ed96 2a01 	vldr	s4, [r6, #4]
d0053dfa:	edd6 2a02 	vldr	s5, [r6, #8]
d0053dfe:	ed95 0a00 	vldr	s0, [r5]
d0053e02:	edd5 0a01 	vldr	s1, [r5, #4]
d0053e06:	ed95 1a02 	vldr	s2, [r5, #8]
d0053e0a:	f7ff f9bf 	bl	d005318c <submitClippedTri>
d0053e0e:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053e12:	9300      	str	r3, [sp, #0]
d0053e14:	f10a 0a01 	add.w	sl, sl, #1
d0053e18:	9b00      	ldr	r3, [sp, #0]
d0053e1a:	459a      	cmp	sl, r3
d0053e1c:	f280 81a8 	bge.w	d0054170 <submitEntitySolid+0x6f0>
d0053e20:	f8d8 4010 	ldr.w	r4, [r8, #16]
d0053e24:	ea4f 130a 	mov.w	r3, sl, lsl #4
d0053e28:	58e3      	ldr	r3, [r4, r3]
d0053e2a:	eb04 140a 	add.w	r4, r4, sl, lsl #4
d0053e2e:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0053e32:	6861      	ldr	r1, [r4, #4]
d0053e34:	68a2      	ldr	r2, [r4, #8]
d0053e36:	ea4f 0c43 	mov.w	ip, r3, lsl #1
d0053e3a:	eb0b 0585 	add.w	r5, fp, r5, lsl #2
d0053e3e:	eb01 0641 	add.w	r6, r1, r1, lsl #1
d0053e42:	edd5 7a02 	vldr	s15, [r5, #8]
d0053e46:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d0053e4a:	0048      	lsls	r0, r1, #1
d0053e4c:	eef4 7acf 	vcmpe.f32	s15, s30
d0053e50:	eb0b 0686 	add.w	r6, fp, r6, lsl #2
d0053e54:	eb0b 0787 	add.w	r7, fp, r7, lsl #2
d0053e58:	9003      	str	r0, [sp, #12]
d0053e5a:	ea4f 0942 	mov.w	r9, r2, lsl #1
d0053e5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e62:	dd0d      	ble.n	d0053e80 <submitEntitySolid+0x400>
d0053e64:	ed96 7a02 	vldr	s14, [r6, #8]
d0053e68:	eeb4 7acf 	vcmpe.f32	s14, s30
d0053e6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e70:	dd06      	ble.n	d0053e80 <submitEntitySolid+0x400>
d0053e72:	ed97 7a02 	vldr	s14, [r7, #8]
d0053e76:	eeb4 7acf 	vcmpe.f32	s14, s30
d0053e7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e7e:	dcc9      	bgt.n	d0053e14 <submitEntitySolid+0x394>
d0053e80:	eef4 7ac8 	vcmpe.f32	s15, s16
d0053e84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e88:	d516      	bpl.n	d0053eb8 <submitEntitySolid+0x438>
d0053e8a:	0048      	lsls	r0, r1, #1
d0053e8c:	eb00 0e01 	add.w	lr, r0, r1
d0053e90:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053e94:	ed9e 7a02 	vldr	s14, [lr, #8]
d0053e98:	eeb4 7ac8 	vcmpe.f32	s14, s16
d0053e9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ea0:	d50a      	bpl.n	d0053eb8 <submitEntitySolid+0x438>
d0053ea2:	eb09 0e02 	add.w	lr, r9, r2
d0053ea6:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053eaa:	ed9e 7a02 	vldr	s14, [lr, #8]
d0053eae:	eeb4 7ac8 	vcmpe.f32	s14, s16
d0053eb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053eb6:	d4ad      	bmi.n	d0053e14 <submitEntitySolid+0x394>
d0053eb8:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0053ebc:	f01e 0f10 	tst.w	lr, #16
d0053ec0:	d135      	bne.n	d0053f2e <submitEntitySolid+0x4ae>
d0053ec2:	ed95 3a00 	vldr	s6, [r5]
d0053ec6:	edd5 3a02 	vldr	s7, [r5, #8]
d0053eca:	edd6 5a00 	vldr	s11, [r6]
d0053ece:	ed97 5a02 	vldr	s10, [r7, #8]
d0053ed2:	ee75 5ac3 	vsub.f32	s11, s11, s6
d0053ed6:	ed95 7a01 	vldr	s14, [r5, #4]
d0053eda:	ee35 5a63 	vsub.f32	s10, s10, s7
d0053ede:	ed96 4a02 	vldr	s8, [r6, #8]
d0053ee2:	ed97 6a01 	vldr	s12, [r7, #4]
d0053ee6:	edd7 6a00 	vldr	s13, [r7]
d0053eea:	ee34 4a63 	vsub.f32	s8, s8, s7
d0053eee:	ee36 6a47 	vsub.f32	s12, s12, s14
d0053ef2:	edd6 4a01 	vldr	s9, [r6, #4]
d0053ef6:	ee76 6ac3 	vsub.f32	s13, s13, s6
d0053efa:	ee25 2a65 	vnmul.f32	s4, s10, s11
d0053efe:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0053f02:	ee66 2a44 	vnmul.f32	s5, s12, s8
d0053f06:	eea4 2a26 	vfma.f32	s4, s8, s13
d0053f0a:	ee66 6ae4 	vnmul.f32	s13, s13, s9
d0053f0e:	eee4 2a85 	vfma.f32	s5, s9, s10
d0053f12:	eee5 6a86 	vfma.f32	s13, s11, s12
d0053f16:	ee27 7a02 	vmul.f32	s14, s14, s4
d0053f1a:	eea3 7a22 	vfma.f32	s14, s6, s5
d0053f1e:	eea3 7aa6 	vfma.f32	s14, s7, s13
d0053f22:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0053f26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f2a:	f6bf af73 	bge.w	d0053e14 <submitEntitySolid+0x394>
d0053f2e:	eb0c 0e03 	add.w	lr, ip, r3
d0053f32:	eef1 5a67 	vneg.f32	s11, s15
d0053f36:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053f3a:	ed9e 7a00 	vldr	s14, [lr]
d0053f3e:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0053f42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f46:	d51f      	bpl.n	d0053f88 <submitEntitySolid+0x508>
d0053f48:	0048      	lsls	r0, r1, #1
d0053f4a:	eb00 0e01 	add.w	lr, r0, r1
d0053f4e:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053f52:	edde 6a02 	vldr	s13, [lr, #8]
d0053f56:	ed9e 6a00 	vldr	s12, [lr]
d0053f5a:	eef1 6a66 	vneg.f32	s13, s13
d0053f5e:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053f62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f66:	d50f      	bpl.n	d0053f88 <submitEntitySolid+0x508>
d0053f68:	eb09 0e02 	add.w	lr, r9, r2
d0053f6c:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053f70:	edde 6a02 	vldr	s13, [lr, #8]
d0053f74:	ed9e 6a00 	vldr	s12, [lr]
d0053f78:	eef1 6a66 	vneg.f32	s13, s13
d0053f7c:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053f80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f84:	f53f af46 	bmi.w	d0053e14 <submitEntitySolid+0x394>
d0053f88:	eef4 7ac7 	vcmpe.f32	s15, s14
d0053f8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f90:	d51b      	bpl.n	d0053fca <submitEntitySolid+0x54a>
d0053f92:	0048      	lsls	r0, r1, #1
d0053f94:	eb00 0e01 	add.w	lr, r0, r1
d0053f98:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053f9c:	ed9e 6a00 	vldr	s12, [lr]
d0053fa0:	edde 6a02 	vldr	s13, [lr, #8]
d0053fa4:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053fa8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fac:	dd0d      	ble.n	d0053fca <submitEntitySolid+0x54a>
d0053fae:	eb09 0e02 	add.w	lr, r9, r2
d0053fb2:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053fb6:	ed9e 6a00 	vldr	s12, [lr]
d0053fba:	edde 6a02 	vldr	s13, [lr, #8]
d0053fbe:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053fc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fc6:	f73f af25 	bgt.w	d0053e14 <submitEntitySolid+0x394>
d0053fca:	ee27 6a8c 	vmul.f32	s12, s15, s24
d0053fce:	eb0c 0e03 	add.w	lr, ip, r3
d0053fd2:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053fd6:	eeb1 5a46 	vneg.f32	s10, s12
d0053fda:	edde 6a01 	vldr	s13, [lr, #4]
d0053fde:	eef4 6ac5 	vcmpe.f32	s13, s10
d0053fe2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fe6:	d51f      	bpl.n	d0054028 <submitEntitySolid+0x5a8>
d0053fe8:	0048      	lsls	r0, r1, #1
d0053fea:	eb00 0e01 	add.w	lr, r0, r1
d0053fee:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053ff2:	edde 4a02 	vldr	s9, [lr, #8]
d0053ff6:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053ffa:	ee64 4acc 	vnmul.f32	s9, s9, s24
d0053ffe:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0054002:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054006:	d50f      	bpl.n	d0054028 <submitEntitySolid+0x5a8>
d0054008:	eb09 0e02 	add.w	lr, r9, r2
d005400c:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0054010:	edde 4a02 	vldr	s9, [lr, #8]
d0054014:	ed9e 4a01 	vldr	s8, [lr, #4]
d0054018:	ee64 4acc 	vnmul.f32	s9, s9, s24
d005401c:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0054020:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054024:	f53f aef6 	bmi.w	d0053e14 <submitEntitySolid+0x394>
d0054028:	eef4 6ac6 	vcmpe.f32	s13, s12
d005402c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054030:	dd1f      	ble.n	d0054072 <submitEntitySolid+0x5f2>
d0054032:	0048      	lsls	r0, r1, #1
d0054034:	eb00 0e01 	add.w	lr, r0, r1
d0054038:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d005403c:	edde 4a02 	vldr	s9, [lr, #8]
d0054040:	ed9e 4a01 	vldr	s8, [lr, #4]
d0054044:	ee6c 4a24 	vmul.f32	s9, s24, s9
d0054048:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005404c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054050:	dd0f      	ble.n	d0054072 <submitEntitySolid+0x5f2>
d0054052:	eb09 0e02 	add.w	lr, r9, r2
d0054056:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d005405a:	edde 4a02 	vldr	s9, [lr, #8]
d005405e:	ed9e 4a01 	vldr	s8, [lr, #4]
d0054062:	ee6c 4a24 	vmul.f32	s9, s24, s9
d0054066:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005406a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005406e:	f73f aed1 	bgt.w	d0053e14 <submitEntitySolid+0x394>
d0054072:	eef4 7ac8 	vcmpe.f32	s15, s16
d0054076:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005407a:	db28      	blt.n	d00540ce <submitEntitySolid+0x64e>
d005407c:	0048      	lsls	r0, r1, #1
d005407e:	eb00 0e01 	add.w	lr, r0, r1
d0054082:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0054086:	edde 4a02 	vldr	s9, [lr, #8]
d005408a:	eef4 4ac8 	vcmpe.f32	s9, s16
d005408e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054092:	db1c      	blt.n	d00540ce <submitEntitySolid+0x64e>
d0054094:	eb09 0002 	add.w	r0, r9, r2
d0054098:	eef4 7ac7 	vcmpe.f32	s15, s14
d005409c:	eb0b 0080 	add.w	r0, fp, r0, lsl #2
d00540a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540a4:	edd0 7a02 	vldr	s15, [r0, #8]
d00540a8:	9003      	str	r0, [sp, #12]
d00540aa:	eef4 7ac8 	vcmpe.f32	s15, s16
d00540ae:	bfac      	ite	ge
d00540b0:	2001      	movge	r0, #1
d00540b2:	2000      	movlt	r0, #0
d00540b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540b8:	f000 0001 	and.w	r0, r0, #1
d00540bc:	bfb8      	it	lt
d00540be:	2000      	movlt	r0, #0
d00540c0:	b128      	cbz	r0, d00540ce <submitEntitySolid+0x64e>
d00540c2:	eeb4 7a65 	vcmp.f32	s14, s11
d00540c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540ca:	f280 82b6 	bge.w	d005463a <submitEntitySolid+0xbba>
d00540ce:	2000      	movs	r0, #0
d00540d0:	9003      	str	r0, [sp, #12]
d00540d2:	0048      	lsls	r0, r1, #1
d00540d4:	eb09 0e02 	add.w	lr, r9, r2
d00540d8:	4463      	add	r3, ip
d00540da:	4a98      	ldr	r2, [pc, #608]	; (d005433c <submitEntitySolid+0x8bc>)
d00540dc:	4401      	add	r1, r0
d00540de:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d00540e2:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d00540e6:	eb02 028e 	add.w	r2, r2, lr, lsl #2
d00540ea:	ed93 6a00 	vldr	s12, [r3]
d00540ee:	ed93 7a02 	vldr	s14, [r3, #8]
d00540f2:	ed91 4a00 	vldr	s8, [r1]
d00540f6:	edd2 3a02 	vldr	s7, [r2, #8]
d00540fa:	ee74 5a46 	vsub.f32	s11, s8, s12
d00540fe:	edd3 6a01 	vldr	s13, [r3, #4]
d0054102:	ee33 2ac7 	vsub.f32	s4, s7, s14
d0054106:	ed91 5a02 	vldr	s10, [r1, #8]
d005410a:	ed92 3a01 	vldr	s6, [r2, #4]
d005410e:	edd2 2a00 	vldr	s5, [r2]
d0054112:	ee35 1a47 	vsub.f32	s2, s10, s14
d0054116:	ee73 7a66 	vsub.f32	s15, s6, s13
d005411a:	edd1 4a01 	vldr	s9, [r1, #4]
d005411e:	ee72 8ac6 	vsub.f32	s17, s5, s12
d0054122:	ee22 9a65 	vnmul.f32	s18, s4, s11
d0054126:	ee74 1ae6 	vsub.f32	s3, s9, s13
d005412a:	ee67 9ac1 	vnmul.f32	s19, s15, s2
d005412e:	eea1 9a28 	vfma.f32	s18, s2, s17
d0054132:	ee68 8ae1 	vnmul.f32	s17, s17, s3
d0054136:	eee1 9a82 	vfma.f32	s19, s3, s4
d005413a:	eee5 8aa7 	vfma.f32	s17, s11, s15
d005413e:	ee69 7a09 	vmul.f32	s15, s18, s18
d0054142:	eee9 7aa9 	vfma.f32	s15, s19, s19
d0054146:	eee8 7aa8 	vfma.f32	s15, s17, s17
d005414a:	eef4 7aca 	vcmpe.f32	s15, s20
d005414e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054152:	f67f ae5f 	bls.w	d0053e14 <submitEntitySolid+0x394>
d0054156:	7b63      	ldrb	r3, [r4, #13]
d0054158:	ee05 3a90 	vmov	s11, r3
d005415c:	2bf8      	cmp	r3, #248	; 0xf8
d005415e:	eef8 ba65 	vcvt.f32.u32	s23, s11
d0054162:	ee6b ba8b 	vmul.f32	s23, s23, s22
d0054166:	f67f ae0d 	bls.w	d0053d84 <submitEntitySolid+0x304>
d005416a:	eddf fa75 	vldr	s31, [pc, #468]	; d0054340 <submitEntitySolid+0x8c0>
d005416e:	e61a      	b.n	d0053da6 <submitEntitySolid+0x326>
d0054170:	b047      	add	sp, #284	; 0x11c
d0054172:	ecbd 8b10 	vpop	{d8-d15}
d0054176:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005417a:	4a72      	ldr	r2, [pc, #456]	; (d0054344 <submitEntitySolid+0x8c4>)
d005417c:	edd6 1a00 	vldr	s3, [r6]
d0054180:	7c13      	ldrb	r3, [r2, #16]
d0054182:	7c50      	ldrb	r0, [r2, #17]
d0054184:	ed96 2a01 	vldr	s4, [r6, #4]
d0054188:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d005418c:	7c90      	ldrb	r0, [r2, #18]
d005418e:	7cd2      	ldrb	r2, [r2, #19]
d0054190:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0054194:	edd6 2a02 	vldr	s5, [r6, #8]
d0054198:	f8dd 9008 	ldr.w	r9, [sp, #8]
d005419c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00541a0:	4a69      	ldr	r2, [pc, #420]	; (d0054348 <submitEntitySolid+0x8c8>)
d00541a2:	edd5 0a01 	vldr	s1, [r5, #4]
d00541a6:	4648      	mov	r0, r9
d00541a8:	681e      	ldr	r6, [r3, #0]
d00541aa:	4b68      	ldr	r3, [pc, #416]	; (d005434c <submitEntitySolid+0x8cc>)
d00541ac:	ed95 1a02 	vldr	s2, [r5, #8]
d00541b0:	ed95 0a00 	vldr	s0, [r5]
d00541b4:	ed97 3a00 	vldr	s6, [r7]
d00541b8:	edd7 3a01 	vldr	s7, [r7, #4]
d00541bc:	ed97 4a02 	vldr	s8, [r7, #8]
d00541c0:	9901      	ldr	r1, [sp, #4]
d00541c2:	6835      	ldr	r5, [r6, #0]
d00541c4:	6812      	ldr	r2, [r2, #0]
d00541c6:	681b      	ldr	r3, [r3, #0]
d00541c8:	edcd 0a18 	vstr	s1, [sp, #96]	; 0x60
d00541cc:	ed8d 1a19 	vstr	s2, [sp, #100]	; 0x64
d00541d0:	edcd 1a1a 	vstr	s3, [sp, #104]	; 0x68
d00541d4:	ed8d 2a1b 	vstr	s4, [sp, #108]	; 0x6c
d00541d8:	edcd 2a1c 	vstr	s5, [sp, #112]	; 0x70
d00541dc:	ed8d 3a1d 	vstr	s6, [sp, #116]	; 0x74
d00541e0:	edcd 3a1e 	vstr	s7, [sp, #120]	; 0x78
d00541e4:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d00541e8:	ed8d 0a17 	vstr	s0, [sp, #92]	; 0x5c
d00541ec:	47a8      	blx	r5
d00541ee:	2802      	cmp	r0, #2
d00541f0:	dc03      	bgt.n	d00541fa <submitEntitySolid+0x77a>
d00541f2:	f8d8 3014 	ldr.w	r3, [r8, #20]
d00541f6:	9300      	str	r3, [sp, #0]
d00541f8:	e60c      	b.n	d0053e14 <submitEntitySolid+0x394>
d00541fa:	eef0 4a68 	vmov.f32	s9, s17
d00541fe:	1e46      	subs	r6, r0, #1
d0054200:	2501      	movs	r5, #1
d0054202:	464f      	mov	r7, r9
d0054204:	9801      	ldr	r0, [sp, #4]
d0054206:	4629      	mov	r1, r5
d0054208:	3501      	adds	r5, #1
d005420a:	7ba3      	ldrb	r3, [r4, #14]
d005420c:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0054210:	7b62      	ldrb	r2, [r4, #13]
d0054212:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0054216:	ed97 0a00 	vldr	s0, [r7]
d005421a:	eb07 0181 	add.w	r1, r7, r1, lsl #2
d005421e:	edd7 0a01 	vldr	s1, [r7, #4]
d0054222:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d0054226:	ed97 1a02 	vldr	s2, [r7, #8]
d005422a:	edd1 1a00 	vldr	s3, [r1]
d005422e:	ed91 2a01 	vldr	s4, [r1, #4]
d0054232:	edd1 2a02 	vldr	s5, [r1, #8]
d0054236:	ed9c 3a00 	vldr	s6, [ip]
d005423a:	eddc 3a01 	vldr	s7, [ip, #4]
d005423e:	ed9c 4a02 	vldr	s8, [ip, #8]
d0054242:	7b21      	ldrb	r1, [r4, #12]
d0054244:	f7fe ffa2 	bl	d005318c <submitClippedTri>
d0054248:	42b5      	cmp	r5, r6
d005424a:	d1dc      	bne.n	d0054206 <submitEntitySolid+0x786>
d005424c:	e7d1      	b.n	d00541f2 <submitEntitySolid+0x772>
d005424e:	ee74 da06 	vadd.f32	s27, s8, s12
d0054252:	eddf ea3f 	vldr	s29, [pc, #252]	; d0054350 <submitEntitySolid+0x8d0>
d0054256:	ee34 eaa6 	vadd.f32	s28, s9, s13
d005425a:	ee35 7a07 	vadd.f32	s14, s10, s14
d005425e:	eeb5 dac0 	vcmpe.f32	s26, #0.0
d0054262:	ee7d daa2 	vadd.f32	s27, s27, s5
d0054266:	ee3e ea03 	vadd.f32	s28, s28, s6
d005426a:	ee77 3a23 	vadd.f32	s7, s14, s7
d005426e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054272:	ee6d daae 	vmul.f32	s27, s27, s29
d0054276:	ee2e ea2e 	vmul.f32	s28, s28, s29
d005427a:	ee63 eaae 	vmul.f32	s29, s7, s29
d005427e:	f340 816f 	ble.w	d0054560 <submitEntitySolid+0xae0>
d0054282:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0054286:	ee77 2a4e 	vsub.f32	s5, s14, s28
d005428a:	ed9d 7a08 	vldr	s14, [sp, #32]
d005428e:	ee37 3a6d 	vsub.f32	s6, s14, s27
d0054292:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0054296:	ee37 4a6e 	vsub.f32	s8, s14, s29
d005429a:	ee22 7aa2 	vmul.f32	s14, s5, s5
d005429e:	eea3 7a03 	vfma.f32	s14, s6, s6
d00542a2:	eea4 7a04 	vfma.f32	s14, s8, s8
d00542a6:	eeb4 7aca 	vcmpe.f32	s14, s20
d00542aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542ae:	f340 8157 	ble.w	d0054560 <submitEntitySolid+0xae0>
d00542b2:	eddf 6a28 	vldr	s13, [pc, #160]	; d0054354 <submitEntitySolid+0x8d4>
d00542b6:	eeb4 7ae6 	vcmpe.f32	s14, s13
d00542ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542be:	f100 823a 	bmi.w	d0054736 <submitEntitySolid+0xcb6>
d00542c2:	eddf 6a25 	vldr	s13, [pc, #148]	; d0054358 <submitEntitySolid+0x8d8>
d00542c6:	eeb4 7a66 	vcmp.f32	s14, s13
d00542ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542ce:	f300 8232 	bgt.w	d0054736 <submitEntitySolid+0xcb6>
d00542d2:	eef1 6ae7 	vsqrt.f32	s13, s15
d00542d6:	aa1f      	add	r2, sp, #124	; 0x7c
d00542d8:	4639      	mov	r1, r7
d00542da:	4650      	mov	r0, sl
d00542dc:	ed8d fa00 	vstr	s30, [sp]
d00542e0:	46aa      	mov	sl, r5
d00542e2:	f04f 0900 	mov.w	r9, #0
d00542e6:	4615      	mov	r5, r2
d00542e8:	4627      	mov	r7, r4
d00542ea:	4632      	mov	r2, r6
d00542ec:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00542f0:	9e05      	ldr	r6, [sp, #20]
d00542f2:	eeb0 fa44 	vmov.f32	s30, s8
d00542f6:	ed9d 4a11 	vldr	s8, [sp, #68]	; 0x44
d00542fa:	eeb0 5a47 	vmov.f32	s10, s14
d00542fe:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0054302:	eeb0 7a4c 	vmov.f32	s14, s24
d0054306:	eeb0 ca62 	vmov.f32	s24, s5
d005430a:	eef0 2a47 	vmov.f32	s5, s14
d005430e:	ee29 9a27 	vmul.f32	s18, s18, s15
d0054312:	ee69 9aa7 	vmul.f32	s19, s19, s15
d0054316:	ee68 8aa7 	vmul.f32	s17, s17, s15
d005431a:	ee79 1a09 	vadd.f32	s3, s18, s18
d005431e:	eef0 7a6b 	vmov.f32	s15, s23
d0054322:	ee39 1aa9 	vadd.f32	s2, s19, s19
d0054326:	eef0 ba43 	vmov.f32	s23, s6
d005432a:	ee38 2aa8 	vadd.f32	s4, s17, s17
d005432e:	eeb0 3a48 	vmov.f32	s6, s16
d0054332:	eeb0 8a61 	vmov.f32	s16, s3
d0054336:	eef0 1a67 	vmov.f32	s3, s15
d005433a:	e0c3      	b.n	d00544c4 <submitEntitySolid+0xa44>
d005433c:	d00e8920 	.word	0xd00e8920
d0054340:	437f0000 	.word	0x437f0000
d0054344:	2001f000 	.word	0x2001f000
d0054348:	d00668e0 	.word	0xd00668e0
d005434c:	d00668e4 	.word	0xd00668e4
d0054350:	3eaab368 	.word	0x3eaab368
d0054354:	3f7fbe77 	.word	0x3f7fbe77
d0054358:	3f8020c5 	.word	0x3f8020c5
d005435c:	00000000 	.word	0x00000000
d0054360:	edd4 7a02 	vldr	s15, [r4, #8]
d0054364:	edd4 6a01 	vldr	s13, [r4, #4]
d0054368:	ee77 7ace 	vsub.f32	s15, s15, s28
d005436c:	ed94 7a03 	vldr	s14, [r4, #12]
d0054370:	ee76 6aed 	vsub.f32	s13, s13, s27
d0054374:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d0054378:	ee37 7a6e 	vsub.f32	s14, s14, s29
d005437c:	ee27 6aa7 	vmul.f32	s12, s15, s15
d0054380:	ee65 4aa5 	vmul.f32	s9, s11, s11
d0054384:	eea6 6aa6 	vfma.f32	s12, s13, s13
d0054388:	eea7 6a07 	vfma.f32	s12, s14, s14
d005438c:	eef4 4a46 	vcmp.f32	s9, s12
d0054390:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054394:	f340 8092 	ble.w	d00544bc <submitEntitySolid+0xa3c>
d0054398:	eeb4 6a4a 	vcmp.f32	s12, s20
d005439c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543a0:	f340 808c 	ble.w	d00544bc <submitEntitySolid+0xa3c>
d00543a4:	eeb1 0ac6 	vsqrt.f32	s0, s12
d00543a8:	edd4 3a08 	vldr	s7, [r4, #32]
d00543ac:	ee63 0aa3 	vmul.f32	s1, s7, s7
d00543b0:	eef4 0ac6 	vcmpe.f32	s1, s12
d00543b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543b8:	eec5 4a00 	vdiv.f32	s9, s10, s0
d00543bc:	ee66 6aa4 	vmul.f32	s13, s13, s9
d00543c0:	ee67 7aa4 	vmul.f32	s15, s15, s9
d00543c4:	ee27 7a24 	vmul.f32	s14, s14, s9
d00543c8:	f140 80d1 	bpl.w	d005456e <submitEntitySolid+0xaee>
d00543cc:	edd4 0a09 	vldr	s1, [r4, #36]	; 0x24
d00543d0:	eef4 3ae0 	vcmpe.f32	s7, s1
d00543d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543d8:	da70      	bge.n	d00544bc <submitEntitySolid+0xa3c>
d00543da:	eef4 5ae0 	vcmpe.f32	s11, s1
d00543de:	ee26 6a24 	vmul.f32	s12, s12, s9
d00543e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543e6:	eef4 0ac6 	vcmpe.f32	s1, s12
d00543ea:	f200 8110 	bhi.w	d005460e <submitEntitySolid+0xb8e>
d00543ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543f2:	d963      	bls.n	d00544bc <submitEntitySolid+0xa3c>
d00543f4:	ee36 6a63 	vsub.f32	s12, s12, s7
d00543f8:	ee70 3ae3 	vsub.f32	s7, s1, s7
d00543fc:	eec6 5a23 	vdiv.f32	s11, s12, s7
d0054400:	fe85 6aaa 	vmaxnm.f32	s12, s11, s21
d0054404:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0054408:	ee35 6a46 	vsub.f32	s12, s10, s12
d005440c:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0054410:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054414:	d952      	bls.n	d00544bc <submitEntitySolid+0xa3c>
d0054416:	ee67 5a89 	vmul.f32	s11, s15, s18
d005441a:	eee6 5aa9 	vfma.f32	s11, s13, s19
d005441e:	eee7 5a28 	vfma.f32	s11, s14, s17
d0054422:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0054426:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005442a:	d947      	bls.n	d00544bc <submitEntitySolid+0xa3c>
d005442c:	eef5 cac0 	vcmpe.f32	s25, #0.0
d0054430:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054434:	dd07      	ble.n	d0054446 <submitEntitySolid+0x9c6>
d0054436:	edd4 4a07 	vldr	s9, [r4, #28]
d005443a:	ee6c 4aa4 	vmul.f32	s9, s25, s9
d005443e:	ee64 4a86 	vmul.f32	s9, s9, s12
d0054442:	eee5 faa4 	vfma.f32	s31, s11, s9
d0054446:	eeb5 dac0 	vcmpe.f32	s26, #0.0
d005444a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005444e:	dd2f      	ble.n	d00544b0 <submitEntitySolid+0xa30>
d0054450:	eed8 7a25 	vfnms.f32	s15, s16, s11
d0054454:	eed5 6a81 	vfnms.f32	s13, s11, s2
d0054458:	ee95 7a82 	vfnms.f32	s14, s11, s4
d005445c:	ee2c 0a27 	vmul.f32	s0, s24, s15
d0054460:	eeab 0aa6 	vfma.f32	s0, s23, s13
d0054464:	eeaf 0a07 	vfma.f32	s0, s30, s14
d0054468:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d005446c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054470:	dd1e      	ble.n	d00544b0 <submitEntitySolid+0xa30>
d0054472:	eef2 7a00 	vmov.f32	s15, #32	; 0x41000000  8.0
d0054476:	eeb4 4a67 	vcmp.f32	s8, s15
d005447a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005447e:	d009      	beq.n	d0054494 <submitEntitySolid+0xa14>
d0054480:	eef3 7a00 	vmov.f32	s15, #48	; 0x41800000  16.0
d0054484:	eeb4 4a67 	vcmp.f32	s8, s15
d0054488:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005448c:	f040 8083 	bne.w	d0054596 <submitEntitySolid+0xb16>
d0054490:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054494:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054498:	ee20 0a00 	vmul.f32	s0, s0, s0
d005449c:	ee20 0a00 	vmul.f32	s0, s0, s0
d00544a0:	edd4 7a07 	vldr	s15, [r4, #28]
d00544a4:	ee6d 7a27 	vmul.f32	s15, s26, s15
d00544a8:	ee27 6a86 	vmul.f32	s12, s15, s12
d00544ac:	eee0 fa06 	vfma.f32	s31, s0, s12
d00544b0:	eef4 fac5 	vcmpe.f32	s31, s10
d00544b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544b8:	f280 8098 	bge.w	d00545ec <submitEntitySolid+0xb6c>
d00544bc:	f109 0901 	add.w	r9, r9, #1
d00544c0:	454e      	cmp	r6, r9
d00544c2:	d05a      	beq.n	d005457a <submitEntitySolid+0xafa>
d00544c4:	f855 4f04 	ldr.w	r4, [r5, #4]!
d00544c8:	7823      	ldrb	r3, [r4, #0]
d00544ca:	2b00      	cmp	r3, #0
d00544cc:	f43f af48 	beq.w	d0054360 <submitEntitySolid+0x8e0>
d00544d0:	edd4 6a04 	vldr	s13, [r4, #16]
d00544d4:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00544d8:	edd4 7a05 	vldr	s15, [r4, #20]
d00544dc:	ed94 7a06 	vldr	s14, [r4, #24]
d00544e0:	eef1 6a66 	vneg.f32	s13, s13
d00544e4:	eef1 7a67 	vneg.f32	s15, s15
d00544e8:	eeb1 7a47 	vneg.f32	s14, s14
d00544ec:	e793      	b.n	d0054416 <submitEntitySolid+0x996>
d00544ee:	2200      	movs	r2, #0
d00544f0:	ed98 1a06 	vldr	s2, [r8, #24]
d00544f4:	4611      	mov	r1, r2
d00544f6:	e026      	b.n	d0054546 <submitEntitySolid+0xac6>
d00544f8:	edd5 4a02 	vldr	s9, [r5, #8]
d00544fc:	ab46      	add	r3, sp, #280	; 0x118
d00544fe:	edd5 8a01 	vldr	s17, [r5, #4]
d0054502:	ee74 4ae1 	vsub.f32	s9, s9, s3
d0054506:	ed95 0a03 	vldr	s0, [r5, #12]
d005450a:	ee78 8ae3 	vsub.f32	s17, s17, s7
d005450e:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d0054512:	ee30 0a60 	vsub.f32	s0, s0, s1
d0054516:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d005451a:	ee64 4aa4 	vmul.f32	s9, s9, s9
d005451e:	ee31 4a04 	vadd.f32	s8, s2, s8
d0054522:	eee8 4aa8 	vfma.f32	s9, s17, s17
d0054526:	ee24 4a04 	vmul.f32	s8, s8, s8
d005452a:	eee0 4a00 	vfma.f32	s9, s0, s0
d005452e:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0054532:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054536:	db02      	blt.n	d005453e <submitEntitySolid+0xabe>
d0054538:	3101      	adds	r1, #1
d005453a:	f843 5c98 	str.w	r5, [r3, #-152]
d005453e:	3201      	adds	r2, #1
d0054540:	3540      	adds	r5, #64	; 0x40
d0054542:	4290      	cmp	r0, r2
d0054544:	dd16      	ble.n	d0054574 <submitEntitySolid+0xaf4>
d0054546:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d0054548:	2b00      	cmp	r3, #0
d005454a:	d0f8      	beq.n	d005453e <submitEntitySolid+0xabe>
d005454c:	782b      	ldrb	r3, [r5, #0]
d005454e:	2b01      	cmp	r3, #1
d0054550:	d1d2      	bne.n	d00544f8 <submitEntitySolid+0xa78>
d0054552:	ab46      	add	r3, sp, #280	; 0x118
d0054554:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0054558:	3101      	adds	r1, #1
d005455a:	f843 5c98 	str.w	r5, [r3, #-152]
d005455e:	e7ee      	b.n	d005453e <submitEntitySolid+0xabe>
d0054560:	ed1f 4a82 	vldr	s8, [pc, #-520]	; d005435c <submitEntitySolid+0x8dc>
d0054564:	eef0 2a44 	vmov.f32	s5, s8
d0054568:	eeb0 3a44 	vmov.f32	s6, s8
d005456c:	e6b1      	b.n	d00542d2 <submitEntitySolid+0x852>
d005456e:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054572:	e750      	b.n	d0054416 <submitEntitySolid+0x996>
d0054574:	9105      	str	r1, [sp, #20]
d0054576:	f7ff bb21 	b.w	d0053bbc <submitEntitySolid+0x13c>
d005457a:	463c      	mov	r4, r7
d005457c:	4655      	mov	r5, sl
d005457e:	eeb0 8a43 	vmov.f32	s16, s6
d0054582:	ed9d fa00 	vldr	s30, [sp]
d0054586:	eeb0 ca62 	vmov.f32	s24, s5
d005458a:	4616      	mov	r6, r2
d005458c:	eef0 ba61 	vmov.f32	s23, s3
d0054590:	460f      	mov	r7, r1
d0054592:	4682      	mov	sl, r0
d0054594:	e407      	b.n	d0053da6 <submitEntitySolid+0x326>
d0054596:	eef0 0a44 	vmov.f32	s1, s8
d005459a:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d005459e:	ed8d 2a14 	vstr	s4, [sp, #80]	; 0x50
d00545a2:	9013      	str	r0, [sp, #76]	; 0x4c
d00545a4:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d00545a8:	9110      	str	r1, [sp, #64]	; 0x40
d00545aa:	920f      	str	r2, [sp, #60]	; 0x3c
d00545ac:	edcd 2a0e 	vstr	s5, [sp, #56]	; 0x38
d00545b0:	ed8d 3a0d 	vstr	s6, [sp, #52]	; 0x34
d00545b4:	ed8d 5a0c 	vstr	s10, [sp, #48]	; 0x30
d00545b8:	ed8d 6a0b 	vstr	s12, [sp, #44]	; 0x2c
d00545bc:	ed8d 4a04 	vstr	s8, [sp, #16]
d00545c0:	f7fb ffda 	bl	d0050578 <powfxt>
d00545c4:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d00545c8:	ed9d 2a14 	vldr	s4, [sp, #80]	; 0x50
d00545cc:	9813      	ldr	r0, [sp, #76]	; 0x4c
d00545ce:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d00545d2:	9910      	ldr	r1, [sp, #64]	; 0x40
d00545d4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d00545d6:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d00545da:	ed9d 3a0d 	vldr	s6, [sp, #52]	; 0x34
d00545de:	ed9d 5a0c 	vldr	s10, [sp, #48]	; 0x30
d00545e2:	ed9d 6a0b 	vldr	s12, [sp, #44]	; 0x2c
d00545e6:	ed9d 4a04 	vldr	s8, [sp, #16]
d00545ea:	e759      	b.n	d00544a0 <submitEntitySolid+0xa20>
d00545ec:	463c      	mov	r4, r7
d00545ee:	4655      	mov	r5, sl
d00545f0:	eeb0 8a43 	vmov.f32	s16, s6
d00545f4:	ed9d fa00 	vldr	s30, [sp]
d00545f8:	eeb0 ca62 	vmov.f32	s24, s5
d00545fc:	4616      	mov	r6, r2
d00545fe:	eef0 ba61 	vmov.f32	s23, s3
d0054602:	460f      	mov	r7, r1
d0054604:	eef7 fa00 	vmov.f32	s31, #112	; 0x3f800000  1.0
d0054608:	4682      	mov	sl, r0
d005460a:	f7ff bbcc 	b.w	d0053da6 <submitEntitySolid+0x326>
d005460e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054612:	db7f      	blt.n	d0054714 <submitEntitySolid+0xc94>
d0054614:	ee36 6a63 	vsub.f32	s12, s12, s7
d0054618:	ee70 3ae3 	vsub.f32	s7, s1, s7
d005461c:	eef6 5a08 	vmov.f32	s11, #104	; 0x3f400000  0.750
d0054620:	eec6 4a23 	vdiv.f32	s9, s12, s7
d0054624:	fe84 6aaa 	vmaxnm.f32	s12, s9, s21
d0054628:	eef0 4a45 	vmov.f32	s9, s10
d005462c:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0054630:	eee6 4a65 	vfms.f32	s9, s12, s11
d0054634:	eeb0 6a64 	vmov.f32	s12, s9
d0054638:	e6e8      	b.n	d005440c <submitEntitySolid+0x98c>
d005463a:	eeb1 7a64 	vneg.f32	s14, s9
d005463e:	edde 5a00 	vldr	s11, [lr]
d0054642:	eef4 5a47 	vcmp.f32	s11, s14
d0054646:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005464a:	f6ff ad40 	blt.w	d00540ce <submitEntitySolid+0x64e>
d005464e:	eef4 4a65 	vcmp.f32	s9, s11
d0054652:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054656:	f6ff ad3a 	blt.w	d00540ce <submitEntitySolid+0x64e>
d005465a:	9803      	ldr	r0, [sp, #12]
d005465c:	eeb1 7a67 	vneg.f32	s14, s15
d0054660:	edd0 5a00 	vldr	s11, [r0]
d0054664:	eef4 5ac7 	vcmpe.f32	s11, s14
d0054668:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005466c:	eef4 6ac6 	vcmpe.f32	s13, s12
d0054670:	bfac      	ite	ge
d0054672:	f04f 0e01 	movge.w	lr, #1
d0054676:	f04f 0e00 	movlt.w	lr, #0
d005467a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005467e:	eef4 7ae5 	vcmpe.f32	s15, s11
d0054682:	f00e 0e01 	and.w	lr, lr, #1
d0054686:	bf88      	it	hi
d0054688:	f04f 0e00 	movhi.w	lr, #0
d005468c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054690:	f00e 0e01 	and.w	lr, lr, #1
d0054694:	bfb8      	it	lt
d0054696:	f04f 0e00 	movlt.w	lr, #0
d005469a:	f1be 0f00 	cmp.w	lr, #0
d005469e:	f43f ad16 	beq.w	d00540ce <submitEntitySolid+0x64e>
d00546a2:	eef4 6a45 	vcmp.f32	s13, s10
d00546a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546aa:	f6ff ad10 	blt.w	d00540ce <submitEntitySolid+0x64e>
d00546ae:	ee64 4a8c 	vmul.f32	s9, s9, s24
d00546b2:	f04f 0e0c 	mov.w	lr, #12
d00546b6:	fb0e be01 	mla	lr, lr, r1, fp
d00546ba:	eef1 6a64 	vneg.f32	s13, s9
d00546be:	ed9e 7a01 	vldr	s14, [lr, #4]
d00546c2:	eeb4 7a66 	vcmp.f32	s14, s13
d00546c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546ca:	f6ff ad00 	blt.w	d00540ce <submitEntitySolid+0x64e>
d00546ce:	eeb4 7a64 	vcmp.f32	s14, s9
d00546d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546d6:	f63f acfa 	bhi.w	d00540ce <submitEntitySolid+0x64e>
d00546da:	ee67 7a8c 	vmul.f32	s15, s15, s24
d00546de:	f04f 0e0c 	mov.w	lr, #12
d00546e2:	fb0e be02 	mla	lr, lr, r2, fp
d00546e6:	eef1 6a67 	vneg.f32	s13, s15
d00546ea:	ed9e 7a01 	vldr	s14, [lr, #4]
d00546ee:	eeb4 7ae6 	vcmpe.f32	s14, s13
d00546f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546f6:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00546fa:	bfac      	ite	ge
d00546fc:	f04f 0e01 	movge.w	lr, #1
d0054700:	f04f 0e00 	movlt.w	lr, #0
d0054704:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054708:	f00e 0001 	and.w	r0, lr, #1
d005470c:	bf88      	it	hi
d005470e:	2000      	movhi	r0, #0
d0054710:	9003      	str	r0, [sp, #12]
d0054712:	e4de      	b.n	d00540d2 <submitEntitySolid+0x652>
d0054714:	ee36 6a60 	vsub.f32	s12, s12, s1
d0054718:	ee75 5ae0 	vsub.f32	s11, s11, s1
d005471c:	eef5 4a00 	vmov.f32	s9, #80	; 0x3e800000  0.250
d0054720:	eec6 3a25 	vdiv.f32	s7, s12, s11
d0054724:	fe83 6aaa 	vmaxnm.f32	s12, s7, s21
d0054728:	fe86 6a45 	vminnm.f32	s12, s12, s10
d005472c:	ee35 6a46 	vsub.f32	s12, s10, s12
d0054730:	ee26 6a24 	vmul.f32	s12, s12, s9
d0054734:	e66a      	b.n	d005440c <submitEntitySolid+0x98c>
d0054736:	eef1 6ac7 	vsqrt.f32	s13, s14
d005473a:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d005473e:	ee86 7a26 	vdiv.f32	s14, s12, s13
d0054742:	ee23 3a07 	vmul.f32	s6, s6, s14
d0054746:	ee62 2a87 	vmul.f32	s5, s5, s14
d005474a:	ee24 4a07 	vmul.f32	s8, s8, s14
d005474e:	e5c0      	b.n	d00542d2 <submitEntitySolid+0x852>

d0054750 <submitWorldEntities>:
d0054750:	b570      	push	{r4, r5, r6, lr}
d0054752:	4c3e      	ldr	r4, [pc, #248]	; (d005484c <submitWorldEntities+0xfc>)
d0054754:	4605      	mov	r5, r0
d0054756:	f504 4600 	add.w	r6, r4, #32768	; 0x8000
d005475a:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d005475e:	2b00      	cmp	r3, #0
d0054760:	d070      	beq.n	d0054844 <submitWorldEntities+0xf4>
d0054762:	69a3      	ldr	r3, [r4, #24]
d0054764:	2b00      	cmp	r3, #0
d0054766:	d06d      	beq.n	d0054844 <submitWorldEntities+0xf4>
d0054768:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
d005476c:	07d2      	lsls	r2, r2, #31
d005476e:	d569      	bpl.n	d0054844 <submitWorldEntities+0xf4>
d0054770:	edd5 6a01 	vldr	s13, [r5, #4]
d0054774:	ed94 7a01 	vldr	s14, [r4, #4]
d0054778:	ed95 5a00 	vldr	s10, [r5]
d005477c:	ee37 7a66 	vsub.f32	s14, s14, s13
d0054780:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d0054784:	edd4 6a00 	vldr	s13, [r4]
d0054788:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d005478c:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0054790:	ed94 6a02 	vldr	s12, [r4, #8]
d0054794:	ee67 7a27 	vmul.f32	s15, s14, s15
d0054798:	ed95 5a02 	vldr	s10, [r5, #8]
d005479c:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d00547a0:	ee36 6a45 	vsub.f32	s12, s12, s10
d00547a4:	ed93 5a06 	vldr	s10, [r3, #24]
d00547a8:	eee6 7aa5 	vfma.f32	s15, s13, s11
d00547ac:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d00547b0:	eee6 7a24 	vfma.f32	s15, s12, s9
d00547b4:	ee77 4ac5 	vsub.f32	s9, s15, s10
d00547b8:	eef4 4ae5 	vcmpe.f32	s9, s11
d00547bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547c0:	dc40      	bgt.n	d0054844 <submitWorldEntities+0xf4>
d00547c2:	ee75 4a27 	vadd.f32	s9, s10, s15
d00547c6:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d00547ca:	eef4 4ae5 	vcmpe.f32	s9, s11
d00547ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547d2:	d437      	bmi.n	d0054844 <submitWorldEntities+0xf4>
d00547d4:	edd5 5a07 	vldr	s11, [r5, #28]
d00547d8:	eeb1 4a64 	vneg.f32	s8, s9
d00547dc:	ed95 3a08 	vldr	s6, [r5, #32]
d00547e0:	ee67 5a25 	vmul.f32	s11, s14, s11
d00547e4:	edd5 3a06 	vldr	s7, [r5, #24]
d00547e8:	eee6 5a03 	vfma.f32	s11, s12, s6
d00547ec:	eee6 5aa3 	vfma.f32	s11, s13, s7
d00547f0:	eef4 5ac4 	vcmpe.f32	s11, s8
d00547f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00547f8:	d424      	bmi.n	d0054844 <submitWorldEntities+0xf4>
d00547fa:	eef4 5ae4 	vcmpe.f32	s11, s9
d00547fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054802:	dc1f      	bgt.n	d0054844 <submitWorldEntities+0xf4>
d0054804:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d0054808:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d005480c:	ee27 7a25 	vmul.f32	s14, s14, s11
d0054810:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d0054814:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d0054818:	eea7 5a84 	vfma.f32	s10, s15, s8
d005481c:	eea6 7a24 	vfma.f32	s14, s12, s9
d0054820:	eef1 7a45 	vneg.f32	s15, s10
d0054824:	eea6 7aa5 	vfma.f32	s14, s13, s11
d0054828:	eeb4 7ae7 	vcmpe.f32	s14, s15
d005482c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054830:	d408      	bmi.n	d0054844 <submitWorldEntities+0xf4>
d0054832:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0054836:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005483a:	dc03      	bgt.n	d0054844 <submitWorldEntities+0xf4>
d005483c:	4629      	mov	r1, r5
d005483e:	4620      	mov	r0, r4
d0054840:	f7ff f91e 	bl	d0053a80 <submitEntitySolid>
d0054844:	3480      	adds	r4, #128	; 0x80
d0054846:	42a6      	cmp	r6, r4
d0054848:	d187      	bne.n	d005475a <submitWorldEntities+0xa>
d005484a:	bd70      	pop	{r4, r5, r6, pc}
d005484c:	d00f4ba0 	.word	0xd00f4ba0

d0054850 <Render3D>:
d0054850:	b570      	push	{r4, r5, r6, lr}
d0054852:	4d17      	ldr	r5, [pc, #92]	; (d00548b0 <Render3D+0x60>)
d0054854:	4604      	mov	r4, r0
d0054856:	682b      	ldr	r3, [r5, #0]
d0054858:	b193      	cbz	r3, d0054880 <Render3D+0x30>
d005485a:	4b16      	ldr	r3, [pc, #88]	; (d00548b4 <Render3D+0x64>)
d005485c:	681b      	ldr	r3, [r3, #0]
d005485e:	b17b      	cbz	r3, d0054880 <Render3D+0x30>
d0054860:	4b15      	ldr	r3, [pc, #84]	; (d00548b8 <Render3D+0x68>)
d0054862:	2200      	movs	r2, #0
d0054864:	4620      	mov	r0, r4
d0054866:	601a      	str	r2, [r3, #0]
d0054868:	f7ff ff72 	bl	d0054750 <submitWorldEntities>
d005486c:	b114      	cbz	r4, d0054874 <Render3D+0x24>
d005486e:	4620      	mov	r0, r4
d0054870:	f7fe f90e 	bl	d0052a90 <sb3dParticlesRender.part.0>
d0054874:	4b11      	ldr	r3, [pc, #68]	; (d00548bc <Render3D+0x6c>)
d0054876:	4620      	mov	r0, r4
d0054878:	681b      	ldr	r3, [r3, #0]
d005487a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d005487e:	4718      	bx	r3
d0054880:	4a0f      	ldr	r2, [pc, #60]	; (d00548c0 <Render3D+0x70>)
d0054882:	7813      	ldrb	r3, [r2, #0]
d0054884:	7850      	ldrb	r0, [r2, #1]
d0054886:	7891      	ldrb	r1, [r2, #2]
d0054888:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d005488c:	78d2      	ldrb	r2, [r2, #3]
d005488e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0054892:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0054896:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0054898:	4798      	blx	r3
d005489a:	2800      	cmp	r0, #0
d005489c:	d0e0      	beq.n	d0054860 <Render3D+0x10>
d005489e:	301f      	adds	r0, #31
d00548a0:	4b04      	ldr	r3, [pc, #16]	; (d00548b4 <Render3D+0x64>)
d00548a2:	f020 001f 	bic.w	r0, r0, #31
d00548a6:	f100 0260 	add.w	r2, r0, #96	; 0x60
d00548aa:	6028      	str	r0, [r5, #0]
d00548ac:	601a      	str	r2, [r3, #0]
d00548ae:	e7d7      	b.n	d0054860 <Render3D+0x10>
d00548b0:	d00668e0 	.word	0xd00668e0
d00548b4:	d00668e4 	.word	0xd00668e4
d00548b8:	d0068900 	.word	0xd0068900
d00548bc:	d00fcba0 	.word	0xd00fcba0
d00548c0:	2001f000 	.word	0x2001f000

d00548c4 <sb3dParticlesClear>:
d00548c4:	b538      	push	{r3, r4, r5, lr}
d00548c6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
d00548ca:	2100      	movs	r1, #0
d00548cc:	480f      	ldr	r0, [pc, #60]	; (d005490c <sb3dParticlesClear+0x48>)
d00548ce:	2421      	movs	r4, #33	; 0x21
d00548d0:	f000 fec4 	bl	d005565c <memset>
d00548d4:	4b0d      	ldr	r3, [pc, #52]	; (d005490c <sb3dParticlesClear+0x48>)
d00548d6:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d00548da:	2100      	movs	r1, #0
d00548dc:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d00548e0:	2200      	movs	r2, #0
d00548e2:	7699      	strb	r1, [r3, #26]
d00548e4:	3320      	adds	r3, #32
d00548e6:	f843 2c20 	str.w	r2, [r3, #-32]
d00548ea:	f843 2c1c 	str.w	r2, [r3, #-28]
d00548ee:	f843 2c18 	str.w	r2, [r3, #-24]
d00548f2:	f843 0c14 	str.w	r0, [r3, #-20]
d00548f6:	f843 2c10 	str.w	r2, [r3, #-16]
d00548fa:	f843 0c0c 	str.w	r0, [r3, #-12]
d00548fe:	f803 4c08 	strb.w	r4, [r3, #-8]
d0054902:	f803 1c07 	strb.w	r1, [r3, #-7]
d0054906:	42ab      	cmp	r3, r5
d0054908:	d1eb      	bne.n	d00548e2 <sb3dParticlesClear+0x1e>
d005490a:	bd38      	pop	{r3, r4, r5, pc}
d005490c:	d0066900 	.word	0xd0066900

d0054910 <sb3dParticleSpawnQuad>:
d0054910:	eef5 1ac0 	vcmpe.f32	s3, #0.0
d0054914:	eddf 7a20 	vldr	s15, [pc, #128]	; d0054998 <sb3dParticleSpawnQuad+0x88>
d0054918:	eef1 6a04 	vmov.f32	s13, #20	; 0x40a00000  5.0
d005491c:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0054920:	fe82 2a27 	vmaxnm.f32	s4, s4, s15
d0054924:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054928:	fec2 2aa7 	vmaxnm.f32	s5, s5, s15
d005492c:	fe82 2a66 	vminnm.f32	s4, s4, s13
d0054930:	b430      	push	{r4, r5}
d0054932:	fec2 2ac7 	vminnm.f32	s5, s5, s14
d0054936:	b084      	sub	sp, #16
d0054938:	4d18      	ldr	r5, [pc, #96]	; (d005499c <sb3dParticleSpawnQuad+0x8c>)
d005493a:	bf98      	it	ls
d005493c:	eef7 1a00 	vmovls.f32	s3, #112	; 0x3f800000  1.0
d0054940:	2400      	movs	r4, #0
d0054942:	462b      	mov	r3, r5
d0054944:	ed8d 0a01 	vstr	s0, [sp, #4]
d0054948:	edcd 0a02 	vstr	s1, [sp, #8]
d005494c:	ed8d 1a03 	vstr	s2, [sp, #12]
d0054950:	e003      	b.n	d005495a <sb3dParticleSpawnQuad+0x4a>
d0054952:	3401      	adds	r4, #1
d0054954:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
d0054958:	d018      	beq.n	d005498c <sb3dParticleSpawnQuad+0x7c>
d005495a:	7e9a      	ldrb	r2, [r3, #26]
d005495c:	3320      	adds	r3, #32
d005495e:	2a00      	cmp	r2, #0
d0054960:	d1f7      	bne.n	d0054952 <sb3dParticleSpawnQuad+0x42>
d0054962:	eb05 1344 	add.w	r3, r5, r4, lsl #5
d0054966:	2201      	movs	r2, #1
d0054968:	769a      	strb	r2, [r3, #26]
d005496a:	aa04      	add	r2, sp, #16
d005496c:	7618      	strb	r0, [r3, #24]
d005496e:	7659      	strb	r1, [r3, #25]
d0054970:	edc3 1a03 	vstr	s3, [r3, #12]
d0054974:	ed83 2a04 	vstr	s4, [r3, #16]
d0054978:	edc3 2a05 	vstr	s5, [r3, #20]
d005497c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0054980:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0054984:	4620      	mov	r0, r4
d0054986:	b004      	add	sp, #16
d0054988:	bc30      	pop	{r4, r5}
d005498a:	4770      	bx	lr
d005498c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0054990:	4620      	mov	r0, r4
d0054992:	b004      	add	sp, #16
d0054994:	bc30      	pop	{r4, r5}
d0054996:	4770      	bx	lr
d0054998:	00000000 	.word	0x00000000
d005499c:	d0066900 	.word	0xd0066900

d00549a0 <sb3dParticleSetPosition>:
d00549a0:	b084      	sub	sp, #16
d00549a2:	28ff      	cmp	r0, #255	; 0xff
d00549a4:	ed8d 0a01 	vstr	s0, [sp, #4]
d00549a8:	edcd 0a02 	vstr	s1, [sp, #8]
d00549ac:	ed8d 1a03 	vstr	s2, [sp, #12]
d00549b0:	d809      	bhi.n	d00549c6 <sb3dParticleSetPosition+0x26>
d00549b2:	4b06      	ldr	r3, [pc, #24]	; (d00549cc <sb3dParticleSetPosition+0x2c>)
d00549b4:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d00549b8:	7e9a      	ldrb	r2, [r3, #26]
d00549ba:	b122      	cbz	r2, d00549c6 <sb3dParticleSetPosition+0x26>
d00549bc:	aa04      	add	r2, sp, #16
d00549be:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00549c2:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00549c6:	b004      	add	sp, #16
d00549c8:	4770      	bx	lr
d00549ca:	bf00      	nop
d00549cc:	d0066900 	.word	0xd0066900

d00549d0 <sb3dParticleSetSize>:
d00549d0:	28ff      	cmp	r0, #255	; 0xff
d00549d2:	d80f      	bhi.n	d00549f4 <sb3dParticleSetSize+0x24>
d00549d4:	4b08      	ldr	r3, [pc, #32]	; (d00549f8 <sb3dParticleSetSize+0x28>)
d00549d6:	0141      	lsls	r1, r0, #5
d00549d8:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00549dc:	7e82      	ldrb	r2, [r0, #26]
d00549de:	b14a      	cbz	r2, d00549f4 <sb3dParticleSetSize+0x24>
d00549e0:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00549e4:	440b      	add	r3, r1
d00549e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549ea:	bf98      	it	ls
d00549ec:	eeb7 0a00 	vmovls.f32	s0, #112	; 0x3f800000  1.0
d00549f0:	ed83 0a03 	vstr	s0, [r3, #12]
d00549f4:	4770      	bx	lr
d00549f6:	bf00      	nop
d00549f8:	d0066900 	.word	0xd0066900

d00549fc <sb3dParticleSetShade>:
d00549fc:	28ff      	cmp	r0, #255	; 0xff
d00549fe:	d80e      	bhi.n	d0054a1e <sb3dParticleSetShade+0x22>
d0054a00:	4b07      	ldr	r3, [pc, #28]	; (d0054a20 <sb3dParticleSetShade+0x24>)
d0054a02:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054a06:	7e83      	ldrb	r3, [r0, #26]
d0054a08:	b14b      	cbz	r3, d0054a1e <sb3dParticleSetShade+0x22>
d0054a0a:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0054a0e:	ed9f 7a05 	vldr	s14, [pc, #20]	; d0054a24 <sb3dParticleSetShade+0x28>
d0054a12:	fe80 0a07 	vmaxnm.f32	s0, s0, s14
d0054a16:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0054a1a:	ed80 0a04 	vstr	s0, [r0, #16]
d0054a1e:	4770      	bx	lr
d0054a20:	d0066900 	.word	0xd0066900
d0054a24:	00000000 	.word	0x00000000

d0054a28 <sb3dParticleSetColor>:
d0054a28:	28ff      	cmp	r0, #255	; 0xff
d0054a2a:	d805      	bhi.n	d0054a38 <sb3dParticleSetColor+0x10>
d0054a2c:	4b03      	ldr	r3, [pc, #12]	; (d0054a3c <sb3dParticleSetColor+0x14>)
d0054a2e:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054a32:	7e83      	ldrb	r3, [r0, #26]
d0054a34:	b103      	cbz	r3, d0054a38 <sb3dParticleSetColor+0x10>
d0054a36:	7601      	strb	r1, [r0, #24]
d0054a38:	4770      	bx	lr
d0054a3a:	bf00      	nop
d0054a3c:	d0066900 	.word	0xd0066900

d0054a40 <sb3dParticleSetEmission>:
d0054a40:	28ff      	cmp	r0, #255	; 0xff
d0054a42:	d805      	bhi.n	d0054a50 <sb3dParticleSetEmission+0x10>
d0054a44:	4b03      	ldr	r3, [pc, #12]	; (d0054a54 <sb3dParticleSetEmission+0x14>)
d0054a46:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054a4a:	7e83      	ldrb	r3, [r0, #26]
d0054a4c:	b103      	cbz	r3, d0054a50 <sb3dParticleSetEmission+0x10>
d0054a4e:	7641      	strb	r1, [r0, #25]
d0054a50:	4770      	bx	lr
d0054a52:	bf00      	nop
d0054a54:	d0066900 	.word	0xd0066900

d0054a58 <sb3dWorldAudioDefaults>:
d0054a58:	b410      	push	{r4}
d0054a5a:	4b06      	ldr	r3, [pc, #24]	; (d0054a74 <sb3dWorldAudioDefaults+0x1c>)
d0054a5c:	f04f 547e 	mov.w	r4, #1065353216	; 0x3f800000
d0054a60:	4805      	ldr	r0, [pc, #20]	; (d0054a78 <sb3dWorldAudioDefaults+0x20>)
d0054a62:	4906      	ldr	r1, [pc, #24]	; (d0054a7c <sb3dWorldAudioDefaults+0x24>)
d0054a64:	4a06      	ldr	r2, [pc, #24]	; (d0054a80 <sb3dWorldAudioDefaults+0x28>)
d0054a66:	605c      	str	r4, [r3, #4]
d0054a68:	6018      	str	r0, [r3, #0]
d0054a6a:	f85d 4b04 	ldr.w	r4, [sp], #4
d0054a6e:	6099      	str	r1, [r3, #8]
d0054a70:	60da      	str	r2, [r3, #12]
d0054a72:	4770      	bx	lr
d0054a74:	d00fcba4 	.word	0xd00fcba4
d0054a78:	3ba3d70a 	.word	0x3ba3d70a
d0054a7c:	3c23d70a 	.word	0x3c23d70a
d0054a80:	447a0000 	.word	0x447a0000

d0054a84 <dopplerValueEntityToEntity>:
d0054a84:	b538      	push	{r3, r4, r5, lr}
d0054a86:	ed2d 8b04 	vpush	{d8-d9}
d0054a8a:	460c      	mov	r4, r1
d0054a8c:	eef0 9a40 	vmov.f32	s19, s0
d0054a90:	eeb0 9a60 	vmov.f32	s18, s1
d0054a94:	4605      	mov	r5, r0
d0054a96:	eef0 8a41 	vmov.f32	s17, s2
d0054a9a:	eeb0 8a61 	vmov.f32	s16, s3
d0054a9e:	f7fc fc85 	bl	d00513ac <entityIdValid>
d0054aa2:	b920      	cbnz	r0, d0054aae <dopplerValueEntityToEntity+0x2a>
d0054aa4:	ed9f 0a53 	vldr	s0, [pc, #332]	; d0054bf4 <dopplerValueEntityToEntity+0x170>
d0054aa8:	ecbd 8b04 	vpop	{d8-d9}
d0054aac:	bd38      	pop	{r3, r4, r5, pc}
d0054aae:	4620      	mov	r0, r4
d0054ab0:	f7fc fc7c 	bl	d00513ac <entityIdValid>
d0054ab4:	eddf 7a50 	vldr	s15, [pc, #320]	; d0054bf8 <dopplerValueEntityToEntity+0x174>
d0054ab8:	eef4 9ae7 	vcmpe.f32	s19, s15
d0054abc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ac0:	d9f0      	bls.n	d0054aa4 <dopplerValueEntityToEntity+0x20>
d0054ac2:	2800      	cmp	r0, #0
d0054ac4:	d0ee      	beq.n	d0054aa4 <dopplerValueEntityToEntity+0x20>
d0054ac6:	484d      	ldr	r0, [pc, #308]	; (d0054bfc <dopplerValueEntityToEntity+0x178>)
d0054ac8:	ed9f 5a4d 	vldr	s10, [pc, #308]	; d0054c00 <dopplerValueEntityToEntity+0x17c>
d0054acc:	eb00 11c4 	add.w	r1, r0, r4, lsl #7
d0054ad0:	eb00 10c5 	add.w	r0, r0, r5, lsl #7
d0054ad4:	ed91 7a01 	vldr	s14, [r1, #4]
d0054ad8:	edd0 5a01 	vldr	s11, [r0, #4]
d0054adc:	edd0 7a00 	vldr	s15, [r0]
d0054ae0:	ee77 5a65 	vsub.f32	s11, s14, s11
d0054ae4:	ed91 6a00 	vldr	s12, [r1]
d0054ae8:	edd1 6a02 	vldr	s13, [r1, #8]
d0054aec:	ee36 6a67 	vsub.f32	s12, s12, s15
d0054af0:	ed90 7a02 	vldr	s14, [r0, #8]
d0054af4:	ee65 7aa5 	vmul.f32	s15, s11, s11
d0054af8:	ee76 6ac7 	vsub.f32	s13, s13, s14
d0054afc:	eee6 7a06 	vfma.f32	s15, s12, s12
d0054b00:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0054b04:	eef4 7ac5 	vcmpe.f32	s15, s10
d0054b08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b0c:	d9ca      	bls.n	d0054aa4 <dopplerValueEntityToEntity+0x20>
d0054b0e:	edd1 3a04 	vldr	s7, [r1, #16]
d0054b12:	eeb1 4ae7 	vsqrt.f32	s8, s15
d0054b16:	ed90 7a04 	vldr	s14, [r0, #16]
d0054b1a:	edd1 7a03 	vldr	s15, [r1, #12]
d0054b1e:	edd0 4a03 	vldr	s9, [r0, #12]
d0054b22:	ed90 5a05 	vldr	s10, [r0, #20]
d0054b26:	ee37 7a63 	vsub.f32	s14, s14, s7
d0054b2a:	edd1 3a05 	vldr	s7, [r1, #20]
d0054b2e:	ee74 4ae7 	vsub.f32	s9, s9, s15
d0054b32:	eddf 7a30 	vldr	s15, [pc, #192]	; d0054bf4 <dopplerValueEntityToEntity+0x170>
d0054b36:	ee35 5a63 	vsub.f32	s10, s10, s7
d0054b3a:	ee37 7a25 	vadd.f32	s14, s14, s11
d0054b3e:	fe88 1aa7 	vmaxnm.f32	s2, s17, s15
d0054b42:	ee74 4a86 	vadd.f32	s9, s9, s12
d0054b46:	fec8 1a01 	vmaxnm.f32	s3, s16, s2
d0054b4a:	ee35 5a26 	vadd.f32	s10, s10, s13
d0054b4e:	fec9 0a27 	vmaxnm.f32	s1, s18, s15
d0054b52:	ee27 7a25 	vmul.f32	s14, s14, s11
d0054b56:	eeb4 1ae1 	vcmpe.f32	s2, s3
d0054b5a:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0054b5e:	eea6 7a24 	vfma.f32	s14, s12, s9
d0054b62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b66:	eea6 7a85 	vfma.f32	s14, s13, s10
d0054b6a:	eec7 6a29 	vdiv.f32	s13, s14, s19
d0054b6e:	ee86 7a84 	vdiv.f32	s14, s13, s8
d0054b72:	da04      	bge.n	d0054b7e <dopplerValueEntityToEntity+0xfa>
d0054b74:	eeb4 1a44 	vcmp.f32	s2, s8
d0054b78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b7c:	db14      	blt.n	d0054ba8 <dopplerValueEntityToEntity+0x124>
d0054b7e:	ee60 7a87 	vmul.f32	s15, s1, s14
d0054b82:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0054b86:	eebf 6a00 	vmov.f32	s12, #240	; 0xbf800000 -1.0
d0054b8a:	eeb0 7ae7 	vabs.f32	s14, s15
d0054b8e:	eef1 7a67 	vneg.f32	s15, s15
d0054b92:	ee37 7a26 	vadd.f32	s14, s14, s13
d0054b96:	ecbd 8b04 	vpop	{d8-d9}
d0054b9a:	ee87 0a87 	vdiv.f32	s0, s15, s14
d0054b9e:	fe80 0a06 	vmaxnm.f32	s0, s0, s12
d0054ba2:	fe80 0a66 	vminnm.f32	s0, s0, s13
d0054ba6:	bd38      	pop	{r3, r4, r5, pc}
d0054ba8:	eef4 1ac4 	vcmpe.f32	s3, s8
d0054bac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bb0:	d91c      	bls.n	d0054bec <dopplerValueEntityToEntity+0x168>
d0054bb2:	ee34 4a41 	vsub.f32	s8, s8, s2
d0054bb6:	ee31 1ac1 	vsub.f32	s2, s3, s2
d0054bba:	ee60 7a87 	vmul.f32	s15, s1, s14
d0054bbe:	eeff 6a00 	vmov.f32	s13, #240	; 0xbf800000 -1.0
d0054bc2:	ee84 7a01 	vdiv.f32	s14, s8, s2
d0054bc6:	ee35 7ac7 	vsub.f32	s14, s11, s14
d0054bca:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054bce:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054bd2:	eeb0 7ae7 	vabs.f32	s14, s15
d0054bd6:	eef1 7a67 	vneg.f32	s15, s15
d0054bda:	ee37 7a25 	vadd.f32	s14, s14, s11
d0054bde:	ee87 0a87 	vdiv.f32	s0, s15, s14
d0054be2:	fe80 0a26 	vmaxnm.f32	s0, s0, s13
d0054be6:	fe80 0a65 	vminnm.f32	s0, s0, s11
d0054bea:	e75d      	b.n	d0054aa8 <dopplerValueEntityToEntity+0x24>
d0054bec:	eeb0 0a67 	vmov.f32	s0, s15
d0054bf0:	e75a      	b.n	d0054aa8 <dopplerValueEntityToEntity+0x24>
d0054bf2:	bf00      	nop
d0054bf4:	00000000 	.word	0x00000000
d0054bf8:	358637bd 	.word	0x358637bd
d0054bfc:	d00f4ba0 	.word	0xd00f4ba0
d0054c00:	2b8cbccd 	.word	0x2b8cbccd

d0054c04 <entityAudio>:
d0054c04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0054c06:	4604      	mov	r4, r0
d0054c08:	460f      	mov	r7, r1
d0054c0a:	461d      	mov	r5, r3
d0054c0c:	4616      	mov	r6, r2
d0054c0e:	ed2d 8b04 	vpush	{d8-d9}
d0054c12:	eeb0 9a40 	vmov.f32	s18, s0
d0054c16:	eeb0 8a60 	vmov.f32	s16, s1
d0054c1a:	eef0 8a41 	vmov.f32	s17, s2
d0054c1e:	b10a      	cbz	r2, d0054c24 <entityAudio+0x20>
d0054c20:	2300      	movs	r3, #0
d0054c22:	6013      	str	r3, [r2, #0]
d0054c24:	b10d      	cbz	r5, d0054c2a <entityAudio+0x26>
d0054c26:	2300      	movs	r3, #0
d0054c28:	602b      	str	r3, [r5, #0]
d0054c2a:	4620      	mov	r0, r4
d0054c2c:	f7fc fbbe 	bl	d00513ac <entityIdValid>
d0054c30:	b910      	cbnz	r0, d0054c38 <entityAudio+0x34>
d0054c32:	ecbd 8b04 	vpop	{d8-d9}
d0054c36:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0054c38:	4638      	mov	r0, r7
d0054c3a:	f7fc fbb7 	bl	d00513ac <entityIdValid>
d0054c3e:	2800      	cmp	r0, #0
d0054c40:	d0f7      	beq.n	d0054c32 <entityAudio+0x2e>
d0054c42:	4b3d      	ldr	r3, [pc, #244]	; (d0054d38 <entityAudio+0x134>)
d0054c44:	01e2      	lsls	r2, r4, #7
d0054c46:	ed9f 6a3d 	vldr	s12, [pc, #244]	; d0054d3c <entityAudio+0x138>
d0054c4a:	eb03 11c7 	add.w	r1, r3, r7, lsl #7
d0054c4e:	eb03 14c4 	add.w	r4, r3, r4, lsl #7
d0054c52:	fec8 0a06 	vmaxnm.f32	s1, s16, s12
d0054c56:	edd1 7a02 	vldr	s15, [r1, #8]
d0054c5a:	fe88 1aa0 	vmaxnm.f32	s2, s17, s1
d0054c5e:	ed94 7a02 	vldr	s14, [r4, #8]
d0054c62:	eef4 0ac1 	vcmpe.f32	s1, s2
d0054c66:	edd1 6a00 	vldr	s13, [r1]
d0054c6a:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0054c6e:	ed94 7a00 	vldr	s14, [r4]
d0054c72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c76:	ee76 6ac7 	vsub.f32	s13, s13, s14
d0054c7a:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0054c7e:	eea6 7aa6 	vfma.f32	s14, s13, s13
d0054c82:	d50e      	bpl.n	d0054ca2 <entityAudio+0x9e>
d0054c84:	ee61 5a01 	vmul.f32	s11, s2, s2
d0054c88:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0054c8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c90:	db07      	blt.n	d0054ca2 <entityAudio+0x9e>
d0054c92:	b10e      	cbz	r6, d0054c98 <entityAudio+0x94>
d0054c94:	ed86 6a00 	vstr	s12, [r6]
d0054c98:	2d00      	cmp	r5, #0
d0054c9a:	d0ca      	beq.n	d0054c32 <entityAudio+0x2e>
d0054c9c:	2300      	movs	r3, #0
d0054c9e:	602b      	str	r3, [r5, #0]
d0054ca0:	e7c7      	b.n	d0054c32 <entityAudio+0x2e>
d0054ca2:	ed9f 6a27 	vldr	s12, [pc, #156]	; d0054d40 <entityAudio+0x13c>
d0054ca6:	eeb4 7ac6 	vcmpe.f32	s14, s12
d0054caa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054cae:	d93a      	bls.n	d0054d26 <entityAudio+0x122>
d0054cb0:	eef1 5ac7 	vsqrt.f32	s11, s14
d0054cb4:	4413      	add	r3, r2
d0054cb6:	ed9f 7a21 	vldr	s14, [pc, #132]	; d0054d3c <entityAudio+0x138>
d0054cba:	ed93 6a0c 	vldr	s12, [r3, #48]	; 0x30
d0054cbe:	edd3 4a0a 	vldr	s9, [r3, #40]	; 0x28
d0054cc2:	fe89 7a07 	vmaxnm.f32	s14, s18, s14
d0054cc6:	ee67 7a86 	vmul.f32	s15, s15, s12
d0054cca:	eef4 0ac1 	vcmpe.f32	s1, s2
d0054cce:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054cd2:	eee6 7aa4 	vfma.f32	s15, s13, s9
d0054cd6:	eebf 5a00 	vmov.f32	s10, #240	; 0xbf800000 -1.0
d0054cda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054cde:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0054ce2:	eec7 6aa5 	vdiv.f32	s13, s15, s11
d0054ce6:	fec6 6a85 	vmaxnm.f32	s13, s13, s10
d0054cea:	fec6 7ac6 	vminnm.f32	s15, s13, s12
d0054cee:	ee67 7a27 	vmul.f32	s15, s14, s15
d0054cf2:	da1d      	bge.n	d0054d30 <entityAudio+0x12c>
d0054cf4:	eef4 0ae5 	vcmpe.f32	s1, s11
d0054cf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054cfc:	da18      	bge.n	d0054d30 <entityAudio+0x12c>
d0054cfe:	ee75 5ae0 	vsub.f32	s11, s11, s1
d0054d02:	ee31 1a60 	vsub.f32	s2, s2, s1
d0054d06:	ee85 7a81 	vdiv.f32	s14, s11, s2
d0054d0a:	ee36 6a47 	vsub.f32	s12, s12, s14
d0054d0e:	ee26 6a06 	vmul.f32	s12, s12, s12
d0054d12:	b10e      	cbz	r6, d0054d18 <entityAudio+0x114>
d0054d14:	edc6 7a00 	vstr	s15, [r6]
d0054d18:	2d00      	cmp	r5, #0
d0054d1a:	d08a      	beq.n	d0054c32 <entityAudio+0x2e>
d0054d1c:	ed85 6a00 	vstr	s12, [r5]
d0054d20:	ecbd 8b04 	vpop	{d8-d9}
d0054d24:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0054d26:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054d2a:	eddf 7a04 	vldr	s15, [pc, #16]	; d0054d3c <entityAudio+0x138>
d0054d2e:	e7f0      	b.n	d0054d12 <entityAudio+0x10e>
d0054d30:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054d34:	e7ed      	b.n	d0054d12 <entityAudio+0x10e>
d0054d36:	bf00      	nop
d0054d38:	d00f4ba0 	.word	0xd00f4ba0
d0054d3c:	00000000 	.word	0x00000000
d0054d40:	358637bd 	.word	0x358637bd

d0054d44 <sb3dEntityAudioInfoDefault>:
d0054d44:	b5f0      	push	{r4, r5, r6, r7, lr}
d0054d46:	2300      	movs	r3, #0
d0054d48:	460d      	mov	r5, r1
d0054d4a:	4606      	mov	r6, r0
d0054d4c:	ed2d 8b02 	vpush	{d8}
d0054d50:	b08d      	sub	sp, #52	; 0x34
d0054d52:	eeb0 8a40 	vmov.f32	s16, s0
d0054d56:	9304      	str	r3, [sp, #16]
d0054d58:	9305      	str	r3, [sp, #20]
d0054d5a:	9306      	str	r3, [sp, #24]
d0054d5c:	f7fc fb26 	bl	d00513ac <entityIdValid>
d0054d60:	b9a8      	cbnz	r0, d0054d8e <sb3dEntityAudioInfoDefault+0x4a>
d0054d62:	ac04      	add	r4, sp, #16
d0054d64:	ad08      	add	r5, sp, #32
d0054d66:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0054d6a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0054d6e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054d72:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0054d76:	ed9d 0a04 	vldr	s0, [sp, #16]
d0054d7a:	eddd 0a05 	vldr	s1, [sp, #20]
d0054d7e:	ed9d 1a06 	vldr	s2, [sp, #24]
d0054d82:	eddd 1a07 	vldr	s3, [sp, #28]
d0054d86:	b00d      	add	sp, #52	; 0x34
d0054d88:	ecbd 8b02 	vpop	{d8}
d0054d8c:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0054d8e:	4628      	mov	r0, r5
d0054d90:	f7fc fb0c 	bl	d00513ac <entityIdValid>
d0054d94:	2800      	cmp	r0, #0
d0054d96:	d0e4      	beq.n	d0054d62 <sb3dEntityAudioInfoDefault+0x1e>
d0054d98:	4f11      	ldr	r7, [pc, #68]	; (d0054de0 <sb3dEntityAudioInfoDefault+0x9c>)
d0054d9a:	4629      	mov	r1, r5
d0054d9c:	4630      	mov	r0, r6
d0054d9e:	eeb0 0a48 	vmov.f32	s0, s16
d0054da2:	edd7 1a03 	vldr	s3, [r7, #12]
d0054da6:	ac04      	add	r4, sp, #16
d0054da8:	ed97 1a02 	vldr	s2, [r7, #8]
d0054dac:	edd7 0a00 	vldr	s1, [r7]
d0054db0:	f7ff fe68 	bl	d0054a84 <dopplerValueEntityToEntity>
d0054db4:	eef0 7a40 	vmov.f32	s15, s0
d0054db8:	4629      	mov	r1, r5
d0054dba:	4630      	mov	r0, r6
d0054dbc:	ab06      	add	r3, sp, #24
d0054dbe:	aa05      	add	r2, sp, #20
d0054dc0:	ed97 1a03 	vldr	s2, [r7, #12]
d0054dc4:	ad08      	add	r5, sp, #32
d0054dc6:	edd7 0a02 	vldr	s1, [r7, #8]
d0054dca:	ed97 0a01 	vldr	s0, [r7, #4]
d0054dce:	edcd 7a04 	vstr	s15, [sp, #16]
d0054dd2:	f7ff ff17 	bl	d0054c04 <entityAudio>
d0054dd6:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0054dda:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0054dde:	e7c6      	b.n	d0054d6e <sb3dEntityAudioInfoDefault+0x2a>
d0054de0:	d00fcba4 	.word	0xd00fcba4

d0054de4 <loadMeshSB3D>:
d0054de4:	2800      	cmp	r0, #0
d0054de6:	f000 80e4 	beq.w	d0054fb2 <loadMeshSB3D+0x1ce>
d0054dea:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0054dee:	fab1 f781 	clz	r7, r1
d0054df2:	460c      	mov	r4, r1
d0054df4:	ed2d 8b02 	vpush	{d8}
d0054df8:	097f      	lsrs	r7, r7, #5
d0054dfa:	b08c      	sub	sp, #48	; 0x30
d0054dfc:	2900      	cmp	r1, #0
d0054dfe:	f000 80d2 	beq.w	d0054fa6 <loadMeshSB3D+0x1c2>
d0054e02:	4e6d      	ldr	r6, [pc, #436]	; (d0054fb8 <loadMeshSB3D+0x1d4>)
d0054e04:	4605      	mov	r5, r0
d0054e06:	2240      	movs	r2, #64	; 0x40
d0054e08:	4639      	mov	r1, r7
d0054e0a:	4620      	mov	r0, r4
d0054e0c:	eeb0 8a40 	vmov.f32	s16, s0
d0054e10:	f000 fc24 	bl	d005565c <memset>
d0054e14:	7933      	ldrb	r3, [r6, #4]
d0054e16:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054e1a:	4629      	mov	r1, r5
d0054e1c:	79b2      	ldrb	r2, [r6, #6]
d0054e1e:	4638      	mov	r0, r7
d0054e20:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0054e24:	79f5      	ldrb	r5, [r6, #7]
d0054e26:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0054e2a:	2201      	movs	r2, #1
d0054e2c:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0054e30:	681b      	ldr	r3, [r3, #0]
d0054e32:	681b      	ldr	r3, [r3, #0]
d0054e34:	4798      	blx	r3
d0054e36:	2800      	cmp	r0, #0
d0054e38:	f040 80b5 	bne.w	d0054fa6 <loadMeshSB3D+0x1c2>
d0054e3c:	f896 c004 	ldrb.w	ip, [r6, #4]
d0054e40:	2204      	movs	r2, #4
d0054e42:	7971      	ldrb	r1, [r6, #5]
d0054e44:	ab02      	add	r3, sp, #8
d0054e46:	79b7      	ldrb	r7, [r6, #6]
d0054e48:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0054e4c:	79f5      	ldrb	r5, [r6, #7]
d0054e4e:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054e52:	a903      	add	r1, sp, #12
d0054e54:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054e58:	682d      	ldr	r5, [r5, #0]
d0054e5a:	68ad      	ldr	r5, [r5, #8]
d0054e5c:	47a8      	blx	r5
d0054e5e:	2800      	cmp	r0, #0
d0054e60:	f040 809e 	bne.w	d0054fa0 <loadMeshSB3D+0x1bc>
d0054e64:	9a02      	ldr	r2, [sp, #8]
d0054e66:	2a04      	cmp	r2, #4
d0054e68:	f040 809a 	bne.w	d0054fa0 <loadMeshSB3D+0x1bc>
d0054e6c:	4b53      	ldr	r3, [pc, #332]	; (d0054fbc <loadMeshSB3D+0x1d8>)
d0054e6e:	9903      	ldr	r1, [sp, #12]
d0054e70:	4299      	cmp	r1, r3
d0054e72:	f040 8095 	bne.w	d0054fa0 <loadMeshSB3D+0x1bc>
d0054e76:	7931      	ldrb	r1, [r6, #4]
d0054e78:	ab02      	add	r3, sp, #8
d0054e7a:	7975      	ldrb	r5, [r6, #5]
d0054e7c:	79b7      	ldrb	r7, [r6, #6]
d0054e7e:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0054e82:	79f5      	ldrb	r5, [r6, #7]
d0054e84:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054e88:	a904      	add	r1, sp, #16
d0054e8a:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054e8e:	682d      	ldr	r5, [r5, #0]
d0054e90:	68ad      	ldr	r5, [r5, #8]
d0054e92:	47a8      	blx	r5
d0054e94:	2800      	cmp	r0, #0
d0054e96:	f040 8083 	bne.w	d0054fa0 <loadMeshSB3D+0x1bc>
d0054e9a:	9a02      	ldr	r2, [sp, #8]
d0054e9c:	2a04      	cmp	r2, #4
d0054e9e:	d17f      	bne.n	d0054fa0 <loadMeshSB3D+0x1bc>
d0054ea0:	9b04      	ldr	r3, [sp, #16]
d0054ea2:	2b05      	cmp	r3, #5
d0054ea4:	d17c      	bne.n	d0054fa0 <loadMeshSB3D+0x1bc>
d0054ea6:	7931      	ldrb	r1, [r6, #4]
d0054ea8:	ab02      	add	r3, sp, #8
d0054eaa:	7975      	ldrb	r5, [r6, #5]
d0054eac:	79b7      	ldrb	r7, [r6, #6]
d0054eae:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0054eb2:	79f5      	ldrb	r5, [r6, #7]
d0054eb4:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054eb8:	a905      	add	r1, sp, #20
d0054eba:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054ebe:	682d      	ldr	r5, [r5, #0]
d0054ec0:	68ad      	ldr	r5, [r5, #8]
d0054ec2:	47a8      	blx	r5
d0054ec4:	2800      	cmp	r0, #0
d0054ec6:	d16b      	bne.n	d0054fa0 <loadMeshSB3D+0x1bc>
d0054ec8:	9a02      	ldr	r2, [sp, #8]
d0054eca:	2a04      	cmp	r2, #4
d0054ecc:	d168      	bne.n	d0054fa0 <loadMeshSB3D+0x1bc>
d0054ece:	7930      	ldrb	r0, [r6, #4]
d0054ed0:	ab02      	add	r3, sp, #8
d0054ed2:	7975      	ldrb	r5, [r6, #5]
d0054ed4:	a906      	add	r1, sp, #24
d0054ed6:	79b7      	ldrb	r7, [r6, #6]
d0054ed8:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0054edc:	79f5      	ldrb	r5, [r6, #7]
d0054ede:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0054ee2:	2000      	movs	r0, #0
d0054ee4:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054ee8:	682d      	ldr	r5, [r5, #0]
d0054eea:	68ad      	ldr	r5, [r5, #8]
d0054eec:	47a8      	blx	r5
d0054eee:	4605      	mov	r5, r0
d0054ef0:	2800      	cmp	r0, #0
d0054ef2:	d155      	bne.n	d0054fa0 <loadMeshSB3D+0x1bc>
d0054ef4:	9b02      	ldr	r3, [sp, #8]
d0054ef6:	2b04      	cmp	r3, #4
d0054ef8:	d152      	bne.n	d0054fa0 <loadMeshSB3D+0x1bc>
d0054efa:	9b05      	ldr	r3, [sp, #20]
d0054efc:	2b00      	cmp	r3, #0
d0054efe:	d04f      	beq.n	d0054fa0 <loadMeshSB3D+0x1bc>
d0054f00:	9f06      	ldr	r7, [sp, #24]
d0054f02:	2f00      	cmp	r7, #0
d0054f04:	d04c      	beq.n	d0054fa0 <loadMeshSB3D+0x1bc>
d0054f06:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0054f0a:	6063      	str	r3, [r4, #4]
d0054f0c:	6167      	str	r7, [r4, #20]
d0054f0e:	0080      	lsls	r0, r0, #2
d0054f10:	60e5      	str	r5, [r4, #12]
d0054f12:	f000 fb77 	bl	d0055604 <malloc>
d0054f16:	4603      	mov	r3, r0
d0054f18:	0138      	lsls	r0, r7, #4
d0054f1a:	461f      	mov	r7, r3
d0054f1c:	6023      	str	r3, [r4, #0]
d0054f1e:	f000 fb71 	bl	d0055604 <malloc>
d0054f22:	60a5      	str	r5, [r4, #8]
d0054f24:	6120      	str	r0, [r4, #16]
d0054f26:	2f00      	cmp	r7, #0
d0054f28:	d037      	beq.n	d0054f9a <loadMeshSB3D+0x1b6>
d0054f2a:	fab0 f880 	clz	r8, r0
d0054f2e:	ea4f 1858 	mov.w	r8, r8, lsr #5
d0054f32:	b9d8      	cbnz	r0, d0054f6c <loadMeshSB3D+0x188>
d0054f34:	e031      	b.n	d0054f9a <loadMeshSB3D+0x1b6>
d0054f36:	9b02      	ldr	r3, [sp, #8]
d0054f38:	2b0c      	cmp	r3, #12
d0054f3a:	d12e      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d0054f3c:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0054f40:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0054f44:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0054f48:	ee66 6a88 	vmul.f32	s13, s13, s16
d0054f4c:	6823      	ldr	r3, [r4, #0]
d0054f4e:	ee27 7a08 	vmul.f32	s14, s14, s16
d0054f52:	9905      	ldr	r1, [sp, #20]
d0054f54:	ee67 7a88 	vmul.f32	s15, s15, s16
d0054f58:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0054f5c:	4541      	cmp	r1, r8
d0054f5e:	edc3 6a00 	vstr	s13, [r3]
d0054f62:	ed83 7a01 	vstr	s14, [r3, #4]
d0054f66:	edc3 7a02 	vstr	s15, [r3, #8]
d0054f6a:	d929      	bls.n	d0054fc0 <loadMeshSB3D+0x1dc>
d0054f6c:	7930      	ldrb	r0, [r6, #4]
d0054f6e:	220c      	movs	r2, #12
d0054f70:	7975      	ldrb	r5, [r6, #5]
d0054f72:	ab02      	add	r3, sp, #8
d0054f74:	79b7      	ldrb	r7, [r6, #6]
d0054f76:	a909      	add	r1, sp, #36	; 0x24
d0054f78:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0054f7c:	79f5      	ldrb	r5, [r6, #7]
d0054f7e:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0054f82:	2000      	movs	r0, #0
d0054f84:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054f88:	682d      	ldr	r5, [r5, #0]
d0054f8a:	68ad      	ldr	r5, [r5, #8]
d0054f8c:	47a8      	blx	r5
d0054f8e:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0054f92:	f108 0801 	add.w	r8, r8, #1
d0054f96:	2800      	cmp	r0, #0
d0054f98:	d0cd      	beq.n	d0054f36 <loadMeshSB3D+0x152>
d0054f9a:	4620      	mov	r0, r4
d0054f9c:	f7fc fa18 	bl	d00513d0 <freeMesh>
d0054fa0:	2000      	movs	r0, #0
d0054fa2:	f000 f96b 	bl	d005527c <fclose>
d0054fa6:	2000      	movs	r0, #0
d0054fa8:	b00c      	add	sp, #48	; 0x30
d0054faa:	ecbd 8b02 	vpop	{d8}
d0054fae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0054fb2:	2000      	movs	r0, #0
d0054fb4:	4770      	bx	lr
d0054fb6:	bf00      	nop
d0054fb8:	2001f000 	.word	0x2001f000
d0054fbc:	44334253 	.word	0x44334253
d0054fc0:	9b06      	ldr	r3, [sp, #24]
d0054fc2:	2b00      	cmp	r3, #0
d0054fc4:	f000 80db 	beq.w	d005517e <loadMeshSB3D+0x39a>
d0054fc8:	4605      	mov	r5, r0
d0054fca:	7937      	ldrb	r7, [r6, #4]
d0054fcc:	ab02      	add	r3, sp, #8
d0054fce:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054fd2:	2204      	movs	r2, #4
d0054fd4:	79b0      	ldrb	r0, [r6, #6]
d0054fd6:	a907      	add	r1, sp, #28
d0054fd8:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0054fdc:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054fe0:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0054fe4:	2000      	movs	r0, #0
d0054fe6:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054fea:	683f      	ldr	r7, [r7, #0]
d0054fec:	68bf      	ldr	r7, [r7, #8]
d0054fee:	47b8      	blx	r7
d0054ff0:	2800      	cmp	r0, #0
d0054ff2:	d1d2      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d0054ff4:	9a02      	ldr	r2, [sp, #8]
d0054ff6:	2a04      	cmp	r2, #4
d0054ff8:	d1cf      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d0054ffa:	7931      	ldrb	r1, [r6, #4]
d0054ffc:	ab02      	add	r3, sp, #8
d0054ffe:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055002:	f896 e006 	ldrb.w	lr, [r6, #6]
d0055006:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d005500a:	f896 c007 	ldrb.w	ip, [r6, #7]
d005500e:	a908      	add	r1, sp, #32
d0055010:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0055014:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055018:	683f      	ldr	r7, [r7, #0]
d005501a:	68bf      	ldr	r7, [r7, #8]
d005501c:	47b8      	blx	r7
d005501e:	2800      	cmp	r0, #0
d0055020:	d1bb      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d0055022:	9a02      	ldr	r2, [sp, #8]
d0055024:	2a04      	cmp	r2, #4
d0055026:	d1b8      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d0055028:	7931      	ldrb	r1, [r6, #4]
d005502a:	ab02      	add	r3, sp, #8
d005502c:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055030:	f896 e006 	ldrb.w	lr, [r6, #6]
d0055034:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0055038:	f896 c007 	ldrb.w	ip, [r6, #7]
d005503c:	a909      	add	r1, sp, #36	; 0x24
d005503e:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0055042:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055046:	683f      	ldr	r7, [r7, #0]
d0055048:	68bf      	ldr	r7, [r7, #8]
d005504a:	47b8      	blx	r7
d005504c:	2800      	cmp	r0, #0
d005504e:	d1a4      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d0055050:	9b02      	ldr	r3, [sp, #8]
d0055052:	2b04      	cmp	r3, #4
d0055054:	d1a1      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d0055056:	7937      	ldrb	r7, [r6, #4]
d0055058:	ab02      	add	r3, sp, #8
d005505a:	f896 c005 	ldrb.w	ip, [r6, #5]
d005505e:	2201      	movs	r2, #1
d0055060:	79b1      	ldrb	r1, [r6, #6]
d0055062:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0055066:	f896 c007 	ldrb.w	ip, [r6, #7]
d005506a:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d005506e:	a901      	add	r1, sp, #4
d0055070:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055074:	683f      	ldr	r7, [r7, #0]
d0055076:	68bf      	ldr	r7, [r7, #8]
d0055078:	47b8      	blx	r7
d005507a:	2800      	cmp	r0, #0
d005507c:	d18d      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d005507e:	9a02      	ldr	r2, [sp, #8]
d0055080:	2a01      	cmp	r2, #1
d0055082:	d18a      	bne.n	d0054f9a <loadMeshSB3D+0x1b6>
d0055084:	7931      	ldrb	r1, [r6, #4]
d0055086:	ab02      	add	r3, sp, #8
d0055088:	f896 c005 	ldrb.w	ip, [r6, #5]
d005508c:	f896 e006 	ldrb.w	lr, [r6, #6]
d0055090:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0055094:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055098:	f10d 0105 	add.w	r1, sp, #5
d005509c:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d00550a0:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00550a4:	683f      	ldr	r7, [r7, #0]
d00550a6:	68bf      	ldr	r7, [r7, #8]
d00550a8:	47b8      	blx	r7
d00550aa:	2800      	cmp	r0, #0
d00550ac:	f47f af75 	bne.w	d0054f9a <loadMeshSB3D+0x1b6>
d00550b0:	9b02      	ldr	r3, [sp, #8]
d00550b2:	2b01      	cmp	r3, #1
d00550b4:	f47f af71 	bne.w	d0054f9a <loadMeshSB3D+0x1b6>
d00550b8:	7937      	ldrb	r7, [r6, #4]
d00550ba:	ab02      	add	r3, sp, #8
d00550bc:	f896 c005 	ldrb.w	ip, [r6, #5]
d00550c0:	2201      	movs	r2, #1
d00550c2:	79b0      	ldrb	r0, [r6, #6]
d00550c4:	f10d 0106 	add.w	r1, sp, #6
d00550c8:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d00550cc:	f896 c007 	ldrb.w	ip, [r6, #7]
d00550d0:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d00550d4:	2000      	movs	r0, #0
d00550d6:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00550da:	683f      	ldr	r7, [r7, #0]
d00550dc:	68bf      	ldr	r7, [r7, #8]
d00550de:	47b8      	blx	r7
d00550e0:	2800      	cmp	r0, #0
d00550e2:	f47f af5a 	bne.w	d0054f9a <loadMeshSB3D+0x1b6>
d00550e6:	9a02      	ldr	r2, [sp, #8]
d00550e8:	2a01      	cmp	r2, #1
d00550ea:	f47f af56 	bne.w	d0054f9a <loadMeshSB3D+0x1b6>
d00550ee:	7931      	ldrb	r1, [r6, #4]
d00550f0:	ab02      	add	r3, sp, #8
d00550f2:	f896 c005 	ldrb.w	ip, [r6, #5]
d00550f6:	f896 e006 	ldrb.w	lr, [r6, #6]
d00550fa:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d00550fe:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055102:	f10d 0107 	add.w	r1, sp, #7
d0055106:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d005510a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005510e:	683f      	ldr	r7, [r7, #0]
d0055110:	68bf      	ldr	r7, [r7, #8]
d0055112:	47b8      	blx	r7
d0055114:	2800      	cmp	r0, #0
d0055116:	f47f af40 	bne.w	d0054f9a <loadMeshSB3D+0x1b6>
d005511a:	9b02      	ldr	r3, [sp, #8]
d005511c:	2b01      	cmp	r3, #1
d005511e:	f47f af3c 	bne.w	d0054f9a <loadMeshSB3D+0x1b6>
d0055122:	f8dd c01c 	ldr.w	ip, [sp, #28]
d0055126:	9b05      	ldr	r3, [sp, #20]
d0055128:	459c      	cmp	ip, r3
d005512a:	f4bf af36 	bcs.w	d0054f9a <loadMeshSB3D+0x1b6>
d005512e:	9f08      	ldr	r7, [sp, #32]
d0055130:	42bb      	cmp	r3, r7
d0055132:	f67f af32 	bls.w	d0054f9a <loadMeshSB3D+0x1b6>
d0055136:	9909      	ldr	r1, [sp, #36]	; 0x24
d0055138:	428b      	cmp	r3, r1
d005513a:	f67f af2e 	bls.w	d0054f9a <loadMeshSB3D+0x1b6>
d005513e:	6922      	ldr	r2, [r4, #16]
d0055140:	ea4f 1e05 	mov.w	lr, r5, lsl #4
d0055144:	4603      	mov	r3, r0
d0055146:	9806      	ldr	r0, [sp, #24]
d0055148:	f842 c00e 	str.w	ip, [r2, lr]
d005514c:	eb02 1205 	add.w	r2, r2, r5, lsl #4
d0055150:	f89d c004 	ldrb.w	ip, [sp, #4]
d0055154:	3501      	adds	r5, #1
d0055156:	f89d e005 	ldrb.w	lr, [sp, #5]
d005515a:	f36c 0307 	bfi	r3, ip, #0, #8
d005515e:	f89d c006 	ldrb.w	ip, [sp, #6]
d0055162:	6057      	str	r7, [r2, #4]
d0055164:	42a8      	cmp	r0, r5
d0055166:	f36e 230f 	bfi	r3, lr, #8, #8
d005516a:	f89d 7007 	ldrb.w	r7, [sp, #7]
d005516e:	6091      	str	r1, [r2, #8]
d0055170:	f36c 4317 	bfi	r3, ip, #16, #8
d0055174:	f367 631f 	bfi	r3, r7, #24, #8
d0055178:	60d3      	str	r3, [r2, #12]
d005517a:	f63f af26 	bhi.w	d0054fca <loadMeshSB3D+0x1e6>
d005517e:	2000      	movs	r0, #0
d0055180:	f000 f87c 	bl	d005527c <fclose>
d0055184:	4620      	mov	r0, r4
d0055186:	f7fc f93d 	bl	d0051404 <meshComputeBoundsRadius>
d005518a:	4620      	mov	r0, r4
d005518c:	ed84 0a06 	vstr	s0, [r4, #24]
d0055190:	f7f9 fbda 	bl	d004e948 <meshSetDefaultMaterial>
d0055194:	2001      	movs	r0, #1
d0055196:	e707      	b.n	d0054fa8 <loadMeshSB3D+0x1c4>

d0055198 <__errno>:
d0055198:	4b01      	ldr	r3, [pc, #4]	; (d00551a0 <__errno+0x8>)
d005519a:	6818      	ldr	r0, [r3, #0]
d005519c:	4770      	bx	lr
d005519e:	bf00      	nop
d00551a0:	d005a414 	.word	0xd005a414

d00551a4 <_fclose_r>:
d00551a4:	b570      	push	{r4, r5, r6, lr}
d00551a6:	4605      	mov	r5, r0
d00551a8:	460c      	mov	r4, r1
d00551aa:	b911      	cbnz	r1, d00551b2 <_fclose_r+0xe>
d00551ac:	2600      	movs	r6, #0
d00551ae:	4630      	mov	r0, r6
d00551b0:	bd70      	pop	{r4, r5, r6, pc}
d00551b2:	b118      	cbz	r0, d00551bc <_fclose_r+0x18>
d00551b4:	6983      	ldr	r3, [r0, #24]
d00551b6:	b90b      	cbnz	r3, d00551bc <_fclose_r+0x18>
d00551b8:	f000 f982 	bl	d00554c0 <__sinit>
d00551bc:	4b2c      	ldr	r3, [pc, #176]	; (d0055270 <_fclose_r+0xcc>)
d00551be:	429c      	cmp	r4, r3
d00551c0:	d114      	bne.n	d00551ec <_fclose_r+0x48>
d00551c2:	686c      	ldr	r4, [r5, #4]
d00551c4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00551c6:	07d8      	lsls	r0, r3, #31
d00551c8:	d405      	bmi.n	d00551d6 <_fclose_r+0x32>
d00551ca:	89a3      	ldrh	r3, [r4, #12]
d00551cc:	0599      	lsls	r1, r3, #22
d00551ce:	d402      	bmi.n	d00551d6 <_fclose_r+0x32>
d00551d0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00551d2:	f000 fa14 	bl	d00555fe <__retarget_lock_acquire_recursive>
d00551d6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00551da:	b98b      	cbnz	r3, d0055200 <_fclose_r+0x5c>
d00551dc:	6e66      	ldr	r6, [r4, #100]	; 0x64
d00551de:	f016 0601 	ands.w	r6, r6, #1
d00551e2:	d1e3      	bne.n	d00551ac <_fclose_r+0x8>
d00551e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00551e6:	f000 fa0b 	bl	d0055600 <__retarget_lock_release_recursive>
d00551ea:	e7e0      	b.n	d00551ae <_fclose_r+0xa>
d00551ec:	4b21      	ldr	r3, [pc, #132]	; (d0055274 <_fclose_r+0xd0>)
d00551ee:	429c      	cmp	r4, r3
d00551f0:	d101      	bne.n	d00551f6 <_fclose_r+0x52>
d00551f2:	68ac      	ldr	r4, [r5, #8]
d00551f4:	e7e6      	b.n	d00551c4 <_fclose_r+0x20>
d00551f6:	4b20      	ldr	r3, [pc, #128]	; (d0055278 <_fclose_r+0xd4>)
d00551f8:	429c      	cmp	r4, r3
d00551fa:	bf08      	it	eq
d00551fc:	68ec      	ldreq	r4, [r5, #12]
d00551fe:	e7e1      	b.n	d00551c4 <_fclose_r+0x20>
d0055200:	4621      	mov	r1, r4
d0055202:	4628      	mov	r0, r5
d0055204:	f000 f842 	bl	d005528c <__sflush_r>
d0055208:	6b23      	ldr	r3, [r4, #48]	; 0x30
d005520a:	4606      	mov	r6, r0
d005520c:	b133      	cbz	r3, d005521c <_fclose_r+0x78>
d005520e:	6a21      	ldr	r1, [r4, #32]
d0055210:	4628      	mov	r0, r5
d0055212:	4798      	blx	r3
d0055214:	2800      	cmp	r0, #0
d0055216:	bfb8      	it	lt
d0055218:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d005521c:	89a3      	ldrh	r3, [r4, #12]
d005521e:	061a      	lsls	r2, r3, #24
d0055220:	d503      	bpl.n	d005522a <_fclose_r+0x86>
d0055222:	6921      	ldr	r1, [r4, #16]
d0055224:	4628      	mov	r0, r5
d0055226:	f000 fa21 	bl	d005566c <_free_r>
d005522a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005522c:	b141      	cbz	r1, d0055240 <_fclose_r+0x9c>
d005522e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0055232:	4299      	cmp	r1, r3
d0055234:	d002      	beq.n	d005523c <_fclose_r+0x98>
d0055236:	4628      	mov	r0, r5
d0055238:	f000 fa18 	bl	d005566c <_free_r>
d005523c:	2300      	movs	r3, #0
d005523e:	6363      	str	r3, [r4, #52]	; 0x34
d0055240:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0055242:	b121      	cbz	r1, d005524e <_fclose_r+0xaa>
d0055244:	4628      	mov	r0, r5
d0055246:	f000 fa11 	bl	d005566c <_free_r>
d005524a:	2300      	movs	r3, #0
d005524c:	64a3      	str	r3, [r4, #72]	; 0x48
d005524e:	f000 f91f 	bl	d0055490 <__sfp_lock_acquire>
d0055252:	2300      	movs	r3, #0
d0055254:	81a3      	strh	r3, [r4, #12]
d0055256:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0055258:	07db      	lsls	r3, r3, #31
d005525a:	d402      	bmi.n	d0055262 <_fclose_r+0xbe>
d005525c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005525e:	f000 f9cf 	bl	d0055600 <__retarget_lock_release_recursive>
d0055262:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055264:	f000 f9ca 	bl	d00555fc <__retarget_lock_close_recursive>
d0055268:	f000 f918 	bl	d005549c <__sfp_lock_release>
d005526c:	e79f      	b.n	d00551ae <_fclose_r+0xa>
d005526e:	bf00      	nop
d0055270:	d0057aa8 	.word	0xd0057aa8
d0055274:	d0057ac8 	.word	0xd0057ac8
d0055278:	d0057a88 	.word	0xd0057a88

d005527c <fclose>:
d005527c:	4b02      	ldr	r3, [pc, #8]	; (d0055288 <fclose+0xc>)
d005527e:	4601      	mov	r1, r0
d0055280:	6818      	ldr	r0, [r3, #0]
d0055282:	f7ff bf8f 	b.w	d00551a4 <_fclose_r>
d0055286:	bf00      	nop
d0055288:	d005a414 	.word	0xd005a414

d005528c <__sflush_r>:
d005528c:	898a      	ldrh	r2, [r1, #12]
d005528e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0055292:	4605      	mov	r5, r0
d0055294:	0710      	lsls	r0, r2, #28
d0055296:	460c      	mov	r4, r1
d0055298:	d458      	bmi.n	d005534c <__sflush_r+0xc0>
d005529a:	684b      	ldr	r3, [r1, #4]
d005529c:	2b00      	cmp	r3, #0
d005529e:	dc05      	bgt.n	d00552ac <__sflush_r+0x20>
d00552a0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00552a2:	2b00      	cmp	r3, #0
d00552a4:	dc02      	bgt.n	d00552ac <__sflush_r+0x20>
d00552a6:	2000      	movs	r0, #0
d00552a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00552ac:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00552ae:	2e00      	cmp	r6, #0
d00552b0:	d0f9      	beq.n	d00552a6 <__sflush_r+0x1a>
d00552b2:	2300      	movs	r3, #0
d00552b4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00552b8:	682f      	ldr	r7, [r5, #0]
d00552ba:	602b      	str	r3, [r5, #0]
d00552bc:	d032      	beq.n	d0055324 <__sflush_r+0x98>
d00552be:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00552c0:	89a3      	ldrh	r3, [r4, #12]
d00552c2:	075a      	lsls	r2, r3, #29
d00552c4:	d505      	bpl.n	d00552d2 <__sflush_r+0x46>
d00552c6:	6863      	ldr	r3, [r4, #4]
d00552c8:	1ac0      	subs	r0, r0, r3
d00552ca:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00552cc:	b10b      	cbz	r3, d00552d2 <__sflush_r+0x46>
d00552ce:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00552d0:	1ac0      	subs	r0, r0, r3
d00552d2:	2300      	movs	r3, #0
d00552d4:	4602      	mov	r2, r0
d00552d6:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00552d8:	6a21      	ldr	r1, [r4, #32]
d00552da:	4628      	mov	r0, r5
d00552dc:	47b0      	blx	r6
d00552de:	1c43      	adds	r3, r0, #1
d00552e0:	89a3      	ldrh	r3, [r4, #12]
d00552e2:	d106      	bne.n	d00552f2 <__sflush_r+0x66>
d00552e4:	6829      	ldr	r1, [r5, #0]
d00552e6:	291d      	cmp	r1, #29
d00552e8:	d82c      	bhi.n	d0055344 <__sflush_r+0xb8>
d00552ea:	4a2a      	ldr	r2, [pc, #168]	; (d0055394 <__sflush_r+0x108>)
d00552ec:	40ca      	lsrs	r2, r1
d00552ee:	07d6      	lsls	r6, r2, #31
d00552f0:	d528      	bpl.n	d0055344 <__sflush_r+0xb8>
d00552f2:	2200      	movs	r2, #0
d00552f4:	6062      	str	r2, [r4, #4]
d00552f6:	04d9      	lsls	r1, r3, #19
d00552f8:	6922      	ldr	r2, [r4, #16]
d00552fa:	6022      	str	r2, [r4, #0]
d00552fc:	d504      	bpl.n	d0055308 <__sflush_r+0x7c>
d00552fe:	1c42      	adds	r2, r0, #1
d0055300:	d101      	bne.n	d0055306 <__sflush_r+0x7a>
d0055302:	682b      	ldr	r3, [r5, #0]
d0055304:	b903      	cbnz	r3, d0055308 <__sflush_r+0x7c>
d0055306:	6560      	str	r0, [r4, #84]	; 0x54
d0055308:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005530a:	602f      	str	r7, [r5, #0]
d005530c:	2900      	cmp	r1, #0
d005530e:	d0ca      	beq.n	d00552a6 <__sflush_r+0x1a>
d0055310:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0055314:	4299      	cmp	r1, r3
d0055316:	d002      	beq.n	d005531e <__sflush_r+0x92>
d0055318:	4628      	mov	r0, r5
d005531a:	f000 f9a7 	bl	d005566c <_free_r>
d005531e:	2000      	movs	r0, #0
d0055320:	6360      	str	r0, [r4, #52]	; 0x34
d0055322:	e7c1      	b.n	d00552a8 <__sflush_r+0x1c>
d0055324:	6a21      	ldr	r1, [r4, #32]
d0055326:	2301      	movs	r3, #1
d0055328:	4628      	mov	r0, r5
d005532a:	47b0      	blx	r6
d005532c:	1c41      	adds	r1, r0, #1
d005532e:	d1c7      	bne.n	d00552c0 <__sflush_r+0x34>
d0055330:	682b      	ldr	r3, [r5, #0]
d0055332:	2b00      	cmp	r3, #0
d0055334:	d0c4      	beq.n	d00552c0 <__sflush_r+0x34>
d0055336:	2b1d      	cmp	r3, #29
d0055338:	d001      	beq.n	d005533e <__sflush_r+0xb2>
d005533a:	2b16      	cmp	r3, #22
d005533c:	d101      	bne.n	d0055342 <__sflush_r+0xb6>
d005533e:	602f      	str	r7, [r5, #0]
d0055340:	e7b1      	b.n	d00552a6 <__sflush_r+0x1a>
d0055342:	89a3      	ldrh	r3, [r4, #12]
d0055344:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055348:	81a3      	strh	r3, [r4, #12]
d005534a:	e7ad      	b.n	d00552a8 <__sflush_r+0x1c>
d005534c:	690f      	ldr	r7, [r1, #16]
d005534e:	2f00      	cmp	r7, #0
d0055350:	d0a9      	beq.n	d00552a6 <__sflush_r+0x1a>
d0055352:	0793      	lsls	r3, r2, #30
d0055354:	680e      	ldr	r6, [r1, #0]
d0055356:	bf08      	it	eq
d0055358:	694b      	ldreq	r3, [r1, #20]
d005535a:	600f      	str	r7, [r1, #0]
d005535c:	bf18      	it	ne
d005535e:	2300      	movne	r3, #0
d0055360:	eba6 0807 	sub.w	r8, r6, r7
d0055364:	608b      	str	r3, [r1, #8]
d0055366:	f1b8 0f00 	cmp.w	r8, #0
d005536a:	dd9c      	ble.n	d00552a6 <__sflush_r+0x1a>
d005536c:	6a21      	ldr	r1, [r4, #32]
d005536e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0055370:	4643      	mov	r3, r8
d0055372:	463a      	mov	r2, r7
d0055374:	4628      	mov	r0, r5
d0055376:	47b0      	blx	r6
d0055378:	2800      	cmp	r0, #0
d005537a:	dc06      	bgt.n	d005538a <__sflush_r+0xfe>
d005537c:	89a3      	ldrh	r3, [r4, #12]
d005537e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055382:	81a3      	strh	r3, [r4, #12]
d0055384:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055388:	e78e      	b.n	d00552a8 <__sflush_r+0x1c>
d005538a:	4407      	add	r7, r0
d005538c:	eba8 0800 	sub.w	r8, r8, r0
d0055390:	e7e9      	b.n	d0055366 <__sflush_r+0xda>
d0055392:	bf00      	nop
d0055394:	20400001 	.word	0x20400001

d0055398 <_fflush_r>:
d0055398:	b538      	push	{r3, r4, r5, lr}
d005539a:	690b      	ldr	r3, [r1, #16]
d005539c:	4605      	mov	r5, r0
d005539e:	460c      	mov	r4, r1
d00553a0:	b913      	cbnz	r3, d00553a8 <_fflush_r+0x10>
d00553a2:	2500      	movs	r5, #0
d00553a4:	4628      	mov	r0, r5
d00553a6:	bd38      	pop	{r3, r4, r5, pc}
d00553a8:	b118      	cbz	r0, d00553b2 <_fflush_r+0x1a>
d00553aa:	6983      	ldr	r3, [r0, #24]
d00553ac:	b90b      	cbnz	r3, d00553b2 <_fflush_r+0x1a>
d00553ae:	f000 f887 	bl	d00554c0 <__sinit>
d00553b2:	4b14      	ldr	r3, [pc, #80]	; (d0055404 <_fflush_r+0x6c>)
d00553b4:	429c      	cmp	r4, r3
d00553b6:	d11b      	bne.n	d00553f0 <_fflush_r+0x58>
d00553b8:	686c      	ldr	r4, [r5, #4]
d00553ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00553be:	2b00      	cmp	r3, #0
d00553c0:	d0ef      	beq.n	d00553a2 <_fflush_r+0xa>
d00553c2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00553c4:	07d0      	lsls	r0, r2, #31
d00553c6:	d404      	bmi.n	d00553d2 <_fflush_r+0x3a>
d00553c8:	0599      	lsls	r1, r3, #22
d00553ca:	d402      	bmi.n	d00553d2 <_fflush_r+0x3a>
d00553cc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00553ce:	f000 f916 	bl	d00555fe <__retarget_lock_acquire_recursive>
d00553d2:	4628      	mov	r0, r5
d00553d4:	4621      	mov	r1, r4
d00553d6:	f7ff ff59 	bl	d005528c <__sflush_r>
d00553da:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00553dc:	07da      	lsls	r2, r3, #31
d00553de:	4605      	mov	r5, r0
d00553e0:	d4e0      	bmi.n	d00553a4 <_fflush_r+0xc>
d00553e2:	89a3      	ldrh	r3, [r4, #12]
d00553e4:	059b      	lsls	r3, r3, #22
d00553e6:	d4dd      	bmi.n	d00553a4 <_fflush_r+0xc>
d00553e8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00553ea:	f000 f909 	bl	d0055600 <__retarget_lock_release_recursive>
d00553ee:	e7d9      	b.n	d00553a4 <_fflush_r+0xc>
d00553f0:	4b05      	ldr	r3, [pc, #20]	; (d0055408 <_fflush_r+0x70>)
d00553f2:	429c      	cmp	r4, r3
d00553f4:	d101      	bne.n	d00553fa <_fflush_r+0x62>
d00553f6:	68ac      	ldr	r4, [r5, #8]
d00553f8:	e7df      	b.n	d00553ba <_fflush_r+0x22>
d00553fa:	4b04      	ldr	r3, [pc, #16]	; (d005540c <_fflush_r+0x74>)
d00553fc:	429c      	cmp	r4, r3
d00553fe:	bf08      	it	eq
d0055400:	68ec      	ldreq	r4, [r5, #12]
d0055402:	e7da      	b.n	d00553ba <_fflush_r+0x22>
d0055404:	d0057aa8 	.word	0xd0057aa8
d0055408:	d0057ac8 	.word	0xd0057ac8
d005540c:	d0057a88 	.word	0xd0057a88

d0055410 <std>:
d0055410:	2300      	movs	r3, #0
d0055412:	b510      	push	{r4, lr}
d0055414:	4604      	mov	r4, r0
d0055416:	e9c0 3300 	strd	r3, r3, [r0]
d005541a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d005541e:	6083      	str	r3, [r0, #8]
d0055420:	8181      	strh	r1, [r0, #12]
d0055422:	6643      	str	r3, [r0, #100]	; 0x64
d0055424:	81c2      	strh	r2, [r0, #14]
d0055426:	6183      	str	r3, [r0, #24]
d0055428:	4619      	mov	r1, r3
d005542a:	2208      	movs	r2, #8
d005542c:	305c      	adds	r0, #92	; 0x5c
d005542e:	f000 f915 	bl	d005565c <memset>
d0055432:	4b05      	ldr	r3, [pc, #20]	; (d0055448 <std+0x38>)
d0055434:	6263      	str	r3, [r4, #36]	; 0x24
d0055436:	4b05      	ldr	r3, [pc, #20]	; (d005544c <std+0x3c>)
d0055438:	62a3      	str	r3, [r4, #40]	; 0x28
d005543a:	4b05      	ldr	r3, [pc, #20]	; (d0055450 <std+0x40>)
d005543c:	62e3      	str	r3, [r4, #44]	; 0x2c
d005543e:	4b05      	ldr	r3, [pc, #20]	; (d0055454 <std+0x44>)
d0055440:	6224      	str	r4, [r4, #32]
d0055442:	6323      	str	r3, [r4, #48]	; 0x30
d0055444:	bd10      	pop	{r4, pc}
d0055446:	bf00      	nop
d0055448:	d0055a1d 	.word	0xd0055a1d
d005544c:	d0055a3f 	.word	0xd0055a3f
d0055450:	d0055a77 	.word	0xd0055a77
d0055454:	d0055a9b 	.word	0xd0055a9b

d0055458 <_cleanup_r>:
d0055458:	4901      	ldr	r1, [pc, #4]	; (d0055460 <_cleanup_r+0x8>)
d005545a:	f000 b8af 	b.w	d00555bc <_fwalk_reent>
d005545e:	bf00      	nop
d0055460:	d0055399 	.word	0xd0055399

d0055464 <__sfmoreglue>:
d0055464:	b570      	push	{r4, r5, r6, lr}
d0055466:	1e4a      	subs	r2, r1, #1
d0055468:	2568      	movs	r5, #104	; 0x68
d005546a:	4355      	muls	r5, r2
d005546c:	460e      	mov	r6, r1
d005546e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0055472:	f000 f94b 	bl	d005570c <_malloc_r>
d0055476:	4604      	mov	r4, r0
d0055478:	b140      	cbz	r0, d005548c <__sfmoreglue+0x28>
d005547a:	2100      	movs	r1, #0
d005547c:	e9c0 1600 	strd	r1, r6, [r0]
d0055480:	300c      	adds	r0, #12
d0055482:	60a0      	str	r0, [r4, #8]
d0055484:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0055488:	f000 f8e8 	bl	d005565c <memset>
d005548c:	4620      	mov	r0, r4
d005548e:	bd70      	pop	{r4, r5, r6, pc}

d0055490 <__sfp_lock_acquire>:
d0055490:	4801      	ldr	r0, [pc, #4]	; (d0055498 <__sfp_lock_acquire+0x8>)
d0055492:	f000 b8b4 	b.w	d00555fe <__retarget_lock_acquire_recursive>
d0055496:	bf00      	nop
d0055498:	d00fcbbc 	.word	0xd00fcbbc

d005549c <__sfp_lock_release>:
d005549c:	4801      	ldr	r0, [pc, #4]	; (d00554a4 <__sfp_lock_release+0x8>)
d005549e:	f000 b8af 	b.w	d0055600 <__retarget_lock_release_recursive>
d00554a2:	bf00      	nop
d00554a4:	d00fcbbc 	.word	0xd00fcbbc

d00554a8 <__sinit_lock_acquire>:
d00554a8:	4801      	ldr	r0, [pc, #4]	; (d00554b0 <__sinit_lock_acquire+0x8>)
d00554aa:	f000 b8a8 	b.w	d00555fe <__retarget_lock_acquire_recursive>
d00554ae:	bf00      	nop
d00554b0:	d00fcbb7 	.word	0xd00fcbb7

d00554b4 <__sinit_lock_release>:
d00554b4:	4801      	ldr	r0, [pc, #4]	; (d00554bc <__sinit_lock_release+0x8>)
d00554b6:	f000 b8a3 	b.w	d0055600 <__retarget_lock_release_recursive>
d00554ba:	bf00      	nop
d00554bc:	d00fcbb7 	.word	0xd00fcbb7

d00554c0 <__sinit>:
d00554c0:	b510      	push	{r4, lr}
d00554c2:	4604      	mov	r4, r0
d00554c4:	f7ff fff0 	bl	d00554a8 <__sinit_lock_acquire>
d00554c8:	69a3      	ldr	r3, [r4, #24]
d00554ca:	b11b      	cbz	r3, d00554d4 <__sinit+0x14>
d00554cc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00554d0:	f7ff bff0 	b.w	d00554b4 <__sinit_lock_release>
d00554d4:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00554d8:	6523      	str	r3, [r4, #80]	; 0x50
d00554da:	4b13      	ldr	r3, [pc, #76]	; (d0055528 <__sinit+0x68>)
d00554dc:	4a13      	ldr	r2, [pc, #76]	; (d005552c <__sinit+0x6c>)
d00554de:	681b      	ldr	r3, [r3, #0]
d00554e0:	62a2      	str	r2, [r4, #40]	; 0x28
d00554e2:	42a3      	cmp	r3, r4
d00554e4:	bf04      	itt	eq
d00554e6:	2301      	moveq	r3, #1
d00554e8:	61a3      	streq	r3, [r4, #24]
d00554ea:	4620      	mov	r0, r4
d00554ec:	f000 f820 	bl	d0055530 <__sfp>
d00554f0:	6060      	str	r0, [r4, #4]
d00554f2:	4620      	mov	r0, r4
d00554f4:	f000 f81c 	bl	d0055530 <__sfp>
d00554f8:	60a0      	str	r0, [r4, #8]
d00554fa:	4620      	mov	r0, r4
d00554fc:	f000 f818 	bl	d0055530 <__sfp>
d0055500:	2200      	movs	r2, #0
d0055502:	60e0      	str	r0, [r4, #12]
d0055504:	2104      	movs	r1, #4
d0055506:	6860      	ldr	r0, [r4, #4]
d0055508:	f7ff ff82 	bl	d0055410 <std>
d005550c:	68a0      	ldr	r0, [r4, #8]
d005550e:	2201      	movs	r2, #1
d0055510:	2109      	movs	r1, #9
d0055512:	f7ff ff7d 	bl	d0055410 <std>
d0055516:	68e0      	ldr	r0, [r4, #12]
d0055518:	2202      	movs	r2, #2
d005551a:	2112      	movs	r1, #18
d005551c:	f7ff ff78 	bl	d0055410 <std>
d0055520:	2301      	movs	r3, #1
d0055522:	61a3      	str	r3, [r4, #24]
d0055524:	e7d2      	b.n	d00554cc <__sinit+0xc>
d0055526:	bf00      	nop
d0055528:	d0057ae8 	.word	0xd0057ae8
d005552c:	d0055459 	.word	0xd0055459

d0055530 <__sfp>:
d0055530:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055532:	4607      	mov	r7, r0
d0055534:	f7ff ffac 	bl	d0055490 <__sfp_lock_acquire>
d0055538:	4b1e      	ldr	r3, [pc, #120]	; (d00555b4 <__sfp+0x84>)
d005553a:	681e      	ldr	r6, [r3, #0]
d005553c:	69b3      	ldr	r3, [r6, #24]
d005553e:	b913      	cbnz	r3, d0055546 <__sfp+0x16>
d0055540:	4630      	mov	r0, r6
d0055542:	f7ff ffbd 	bl	d00554c0 <__sinit>
d0055546:	3648      	adds	r6, #72	; 0x48
d0055548:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d005554c:	3b01      	subs	r3, #1
d005554e:	d503      	bpl.n	d0055558 <__sfp+0x28>
d0055550:	6833      	ldr	r3, [r6, #0]
d0055552:	b30b      	cbz	r3, d0055598 <__sfp+0x68>
d0055554:	6836      	ldr	r6, [r6, #0]
d0055556:	e7f7      	b.n	d0055548 <__sfp+0x18>
d0055558:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d005555c:	b9d5      	cbnz	r5, d0055594 <__sfp+0x64>
d005555e:	4b16      	ldr	r3, [pc, #88]	; (d00555b8 <__sfp+0x88>)
d0055560:	60e3      	str	r3, [r4, #12]
d0055562:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0055566:	6665      	str	r5, [r4, #100]	; 0x64
d0055568:	f000 f847 	bl	d00555fa <__retarget_lock_init_recursive>
d005556c:	f7ff ff96 	bl	d005549c <__sfp_lock_release>
d0055570:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0055574:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0055578:	6025      	str	r5, [r4, #0]
d005557a:	61a5      	str	r5, [r4, #24]
d005557c:	2208      	movs	r2, #8
d005557e:	4629      	mov	r1, r5
d0055580:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0055584:	f000 f86a 	bl	d005565c <memset>
d0055588:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d005558c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0055590:	4620      	mov	r0, r4
d0055592:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0055594:	3468      	adds	r4, #104	; 0x68
d0055596:	e7d9      	b.n	d005554c <__sfp+0x1c>
d0055598:	2104      	movs	r1, #4
d005559a:	4638      	mov	r0, r7
d005559c:	f7ff ff62 	bl	d0055464 <__sfmoreglue>
d00555a0:	4604      	mov	r4, r0
d00555a2:	6030      	str	r0, [r6, #0]
d00555a4:	2800      	cmp	r0, #0
d00555a6:	d1d5      	bne.n	d0055554 <__sfp+0x24>
d00555a8:	f7ff ff78 	bl	d005549c <__sfp_lock_release>
d00555ac:	230c      	movs	r3, #12
d00555ae:	603b      	str	r3, [r7, #0]
d00555b0:	e7ee      	b.n	d0055590 <__sfp+0x60>
d00555b2:	bf00      	nop
d00555b4:	d0057ae8 	.word	0xd0057ae8
d00555b8:	ffff0001 	.word	0xffff0001

d00555bc <_fwalk_reent>:
d00555bc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d00555c0:	4606      	mov	r6, r0
d00555c2:	4688      	mov	r8, r1
d00555c4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d00555c8:	2700      	movs	r7, #0
d00555ca:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00555ce:	f1b9 0901 	subs.w	r9, r9, #1
d00555d2:	d505      	bpl.n	d00555e0 <_fwalk_reent+0x24>
d00555d4:	6824      	ldr	r4, [r4, #0]
d00555d6:	2c00      	cmp	r4, #0
d00555d8:	d1f7      	bne.n	d00555ca <_fwalk_reent+0xe>
d00555da:	4638      	mov	r0, r7
d00555dc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00555e0:	89ab      	ldrh	r3, [r5, #12]
d00555e2:	2b01      	cmp	r3, #1
d00555e4:	d907      	bls.n	d00555f6 <_fwalk_reent+0x3a>
d00555e6:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00555ea:	3301      	adds	r3, #1
d00555ec:	d003      	beq.n	d00555f6 <_fwalk_reent+0x3a>
d00555ee:	4629      	mov	r1, r5
d00555f0:	4630      	mov	r0, r6
d00555f2:	47c0      	blx	r8
d00555f4:	4307      	orrs	r7, r0
d00555f6:	3568      	adds	r5, #104	; 0x68
d00555f8:	e7e9      	b.n	d00555ce <_fwalk_reent+0x12>

d00555fa <__retarget_lock_init_recursive>:
d00555fa:	4770      	bx	lr

d00555fc <__retarget_lock_close_recursive>:
d00555fc:	4770      	bx	lr

d00555fe <__retarget_lock_acquire_recursive>:
d00555fe:	4770      	bx	lr

d0055600 <__retarget_lock_release_recursive>:
d0055600:	4770      	bx	lr
	...

d0055604 <malloc>:
d0055604:	4b02      	ldr	r3, [pc, #8]	; (d0055610 <malloc+0xc>)
d0055606:	4601      	mov	r1, r0
d0055608:	6818      	ldr	r0, [r3, #0]
d005560a:	f000 b87f 	b.w	d005570c <_malloc_r>
d005560e:	bf00      	nop
d0055610:	d005a414 	.word	0xd005a414

d0055614 <free>:
d0055614:	4b02      	ldr	r3, [pc, #8]	; (d0055620 <free+0xc>)
d0055616:	4601      	mov	r1, r0
d0055618:	6818      	ldr	r0, [r3, #0]
d005561a:	f000 b827 	b.w	d005566c <_free_r>
d005561e:	bf00      	nop
d0055620:	d005a414 	.word	0xd005a414

d0055624 <memcmp>:
d0055624:	b530      	push	{r4, r5, lr}
d0055626:	3901      	subs	r1, #1
d0055628:	2400      	movs	r4, #0
d005562a:	42a2      	cmp	r2, r4
d005562c:	d101      	bne.n	d0055632 <memcmp+0xe>
d005562e:	2000      	movs	r0, #0
d0055630:	e005      	b.n	d005563e <memcmp+0x1a>
d0055632:	5d03      	ldrb	r3, [r0, r4]
d0055634:	3401      	adds	r4, #1
d0055636:	5d0d      	ldrb	r5, [r1, r4]
d0055638:	42ab      	cmp	r3, r5
d005563a:	d0f6      	beq.n	d005562a <memcmp+0x6>
d005563c:	1b58      	subs	r0, r3, r5
d005563e:	bd30      	pop	{r4, r5, pc}

d0055640 <memcpy>:
d0055640:	440a      	add	r2, r1
d0055642:	4291      	cmp	r1, r2
d0055644:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0055648:	d100      	bne.n	d005564c <memcpy+0xc>
d005564a:	4770      	bx	lr
d005564c:	b510      	push	{r4, lr}
d005564e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0055652:	f803 4f01 	strb.w	r4, [r3, #1]!
d0055656:	4291      	cmp	r1, r2
d0055658:	d1f9      	bne.n	d005564e <memcpy+0xe>
d005565a:	bd10      	pop	{r4, pc}

d005565c <memset>:
d005565c:	4402      	add	r2, r0
d005565e:	4603      	mov	r3, r0
d0055660:	4293      	cmp	r3, r2
d0055662:	d100      	bne.n	d0055666 <memset+0xa>
d0055664:	4770      	bx	lr
d0055666:	f803 1b01 	strb.w	r1, [r3], #1
d005566a:	e7f9      	b.n	d0055660 <memset+0x4>

d005566c <_free_r>:
d005566c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d005566e:	2900      	cmp	r1, #0
d0055670:	d048      	beq.n	d0055704 <_free_r+0x98>
d0055672:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0055676:	9001      	str	r0, [sp, #4]
d0055678:	2b00      	cmp	r3, #0
d005567a:	f1a1 0404 	sub.w	r4, r1, #4
d005567e:	bfb8      	it	lt
d0055680:	18e4      	addlt	r4, r4, r3
d0055682:	f000 fac5 	bl	d0055c10 <__malloc_lock>
d0055686:	4a20      	ldr	r2, [pc, #128]	; (d0055708 <_free_r+0x9c>)
d0055688:	9801      	ldr	r0, [sp, #4]
d005568a:	6813      	ldr	r3, [r2, #0]
d005568c:	4615      	mov	r5, r2
d005568e:	b933      	cbnz	r3, d005569e <_free_r+0x32>
d0055690:	6063      	str	r3, [r4, #4]
d0055692:	6014      	str	r4, [r2, #0]
d0055694:	b003      	add	sp, #12
d0055696:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005569a:	f000 babf 	b.w	d0055c1c <__malloc_unlock>
d005569e:	42a3      	cmp	r3, r4
d00556a0:	d90b      	bls.n	d00556ba <_free_r+0x4e>
d00556a2:	6821      	ldr	r1, [r4, #0]
d00556a4:	1862      	adds	r2, r4, r1
d00556a6:	4293      	cmp	r3, r2
d00556a8:	bf04      	itt	eq
d00556aa:	681a      	ldreq	r2, [r3, #0]
d00556ac:	685b      	ldreq	r3, [r3, #4]
d00556ae:	6063      	str	r3, [r4, #4]
d00556b0:	bf04      	itt	eq
d00556b2:	1852      	addeq	r2, r2, r1
d00556b4:	6022      	streq	r2, [r4, #0]
d00556b6:	602c      	str	r4, [r5, #0]
d00556b8:	e7ec      	b.n	d0055694 <_free_r+0x28>
d00556ba:	461a      	mov	r2, r3
d00556bc:	685b      	ldr	r3, [r3, #4]
d00556be:	b10b      	cbz	r3, d00556c4 <_free_r+0x58>
d00556c0:	42a3      	cmp	r3, r4
d00556c2:	d9fa      	bls.n	d00556ba <_free_r+0x4e>
d00556c4:	6811      	ldr	r1, [r2, #0]
d00556c6:	1855      	adds	r5, r2, r1
d00556c8:	42a5      	cmp	r5, r4
d00556ca:	d10b      	bne.n	d00556e4 <_free_r+0x78>
d00556cc:	6824      	ldr	r4, [r4, #0]
d00556ce:	4421      	add	r1, r4
d00556d0:	1854      	adds	r4, r2, r1
d00556d2:	42a3      	cmp	r3, r4
d00556d4:	6011      	str	r1, [r2, #0]
d00556d6:	d1dd      	bne.n	d0055694 <_free_r+0x28>
d00556d8:	681c      	ldr	r4, [r3, #0]
d00556da:	685b      	ldr	r3, [r3, #4]
d00556dc:	6053      	str	r3, [r2, #4]
d00556de:	4421      	add	r1, r4
d00556e0:	6011      	str	r1, [r2, #0]
d00556e2:	e7d7      	b.n	d0055694 <_free_r+0x28>
d00556e4:	d902      	bls.n	d00556ec <_free_r+0x80>
d00556e6:	230c      	movs	r3, #12
d00556e8:	6003      	str	r3, [r0, #0]
d00556ea:	e7d3      	b.n	d0055694 <_free_r+0x28>
d00556ec:	6825      	ldr	r5, [r4, #0]
d00556ee:	1961      	adds	r1, r4, r5
d00556f0:	428b      	cmp	r3, r1
d00556f2:	bf04      	itt	eq
d00556f4:	6819      	ldreq	r1, [r3, #0]
d00556f6:	685b      	ldreq	r3, [r3, #4]
d00556f8:	6063      	str	r3, [r4, #4]
d00556fa:	bf04      	itt	eq
d00556fc:	1949      	addeq	r1, r1, r5
d00556fe:	6021      	streq	r1, [r4, #0]
d0055700:	6054      	str	r4, [r2, #4]
d0055702:	e7c7      	b.n	d0055694 <_free_r+0x28>
d0055704:	b003      	add	sp, #12
d0055706:	bd30      	pop	{r4, r5, pc}
d0055708:	d00f4920 	.word	0xd00f4920

d005570c <_malloc_r>:
d005570c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005570e:	1ccd      	adds	r5, r1, #3
d0055710:	f025 0503 	bic.w	r5, r5, #3
d0055714:	3508      	adds	r5, #8
d0055716:	2d0c      	cmp	r5, #12
d0055718:	bf38      	it	cc
d005571a:	250c      	movcc	r5, #12
d005571c:	2d00      	cmp	r5, #0
d005571e:	4606      	mov	r6, r0
d0055720:	db01      	blt.n	d0055726 <_malloc_r+0x1a>
d0055722:	42a9      	cmp	r1, r5
d0055724:	d903      	bls.n	d005572e <_malloc_r+0x22>
d0055726:	230c      	movs	r3, #12
d0055728:	6033      	str	r3, [r6, #0]
d005572a:	2000      	movs	r0, #0
d005572c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005572e:	f000 fa6f 	bl	d0055c10 <__malloc_lock>
d0055732:	4921      	ldr	r1, [pc, #132]	; (d00557b8 <_malloc_r+0xac>)
d0055734:	680a      	ldr	r2, [r1, #0]
d0055736:	4614      	mov	r4, r2
d0055738:	b99c      	cbnz	r4, d0055762 <_malloc_r+0x56>
d005573a:	4f20      	ldr	r7, [pc, #128]	; (d00557bc <_malloc_r+0xb0>)
d005573c:	683b      	ldr	r3, [r7, #0]
d005573e:	b923      	cbnz	r3, d005574a <_malloc_r+0x3e>
d0055740:	4621      	mov	r1, r4
d0055742:	4630      	mov	r0, r6
d0055744:	f7f5 fccc 	bl	d004b0e0 <_sbrk_r>
d0055748:	6038      	str	r0, [r7, #0]
d005574a:	4629      	mov	r1, r5
d005574c:	4630      	mov	r0, r6
d005574e:	f7f5 fcc7 	bl	d004b0e0 <_sbrk_r>
d0055752:	1c43      	adds	r3, r0, #1
d0055754:	d123      	bne.n	d005579e <_malloc_r+0x92>
d0055756:	230c      	movs	r3, #12
d0055758:	6033      	str	r3, [r6, #0]
d005575a:	4630      	mov	r0, r6
d005575c:	f000 fa5e 	bl	d0055c1c <__malloc_unlock>
d0055760:	e7e3      	b.n	d005572a <_malloc_r+0x1e>
d0055762:	6823      	ldr	r3, [r4, #0]
d0055764:	1b5b      	subs	r3, r3, r5
d0055766:	d417      	bmi.n	d0055798 <_malloc_r+0x8c>
d0055768:	2b0b      	cmp	r3, #11
d005576a:	d903      	bls.n	d0055774 <_malloc_r+0x68>
d005576c:	6023      	str	r3, [r4, #0]
d005576e:	441c      	add	r4, r3
d0055770:	6025      	str	r5, [r4, #0]
d0055772:	e004      	b.n	d005577e <_malloc_r+0x72>
d0055774:	6863      	ldr	r3, [r4, #4]
d0055776:	42a2      	cmp	r2, r4
d0055778:	bf0c      	ite	eq
d005577a:	600b      	streq	r3, [r1, #0]
d005577c:	6053      	strne	r3, [r2, #4]
d005577e:	4630      	mov	r0, r6
d0055780:	f000 fa4c 	bl	d0055c1c <__malloc_unlock>
d0055784:	f104 000b 	add.w	r0, r4, #11
d0055788:	1d23      	adds	r3, r4, #4
d005578a:	f020 0007 	bic.w	r0, r0, #7
d005578e:	1ac2      	subs	r2, r0, r3
d0055790:	d0cc      	beq.n	d005572c <_malloc_r+0x20>
d0055792:	1a1b      	subs	r3, r3, r0
d0055794:	50a3      	str	r3, [r4, r2]
d0055796:	e7c9      	b.n	d005572c <_malloc_r+0x20>
d0055798:	4622      	mov	r2, r4
d005579a:	6864      	ldr	r4, [r4, #4]
d005579c:	e7cc      	b.n	d0055738 <_malloc_r+0x2c>
d005579e:	1cc4      	adds	r4, r0, #3
d00557a0:	f024 0403 	bic.w	r4, r4, #3
d00557a4:	42a0      	cmp	r0, r4
d00557a6:	d0e3      	beq.n	d0055770 <_malloc_r+0x64>
d00557a8:	1a21      	subs	r1, r4, r0
d00557aa:	4630      	mov	r0, r6
d00557ac:	f7f5 fc98 	bl	d004b0e0 <_sbrk_r>
d00557b0:	3001      	adds	r0, #1
d00557b2:	d1dd      	bne.n	d0055770 <_malloc_r+0x64>
d00557b4:	e7cf      	b.n	d0055756 <_malloc_r+0x4a>
d00557b6:	bf00      	nop
d00557b8:	d00f4920 	.word	0xd00f4920
d00557bc:	d00f4924 	.word	0xd00f4924

d00557c0 <rand>:
d00557c0:	4b17      	ldr	r3, [pc, #92]	; (d0055820 <rand+0x60>)
d00557c2:	b510      	push	{r4, lr}
d00557c4:	681c      	ldr	r4, [r3, #0]
d00557c6:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d00557c8:	b9b3      	cbnz	r3, d00557f8 <rand+0x38>
d00557ca:	2018      	movs	r0, #24
d00557cc:	f7ff ff1a 	bl	d0055604 <malloc>
d00557d0:	63a0      	str	r0, [r4, #56]	; 0x38
d00557d2:	b928      	cbnz	r0, d00557e0 <rand+0x20>
d00557d4:	4602      	mov	r2, r0
d00557d6:	4b13      	ldr	r3, [pc, #76]	; (d0055824 <rand+0x64>)
d00557d8:	4813      	ldr	r0, [pc, #76]	; (d0055828 <rand+0x68>)
d00557da:	214e      	movs	r1, #78	; 0x4e
d00557dc:	f000 f962 	bl	d0055aa4 <__assert_func>
d00557e0:	4a12      	ldr	r2, [pc, #72]	; (d005582c <rand+0x6c>)
d00557e2:	4b13      	ldr	r3, [pc, #76]	; (d0055830 <rand+0x70>)
d00557e4:	e9c0 2300 	strd	r2, r3, [r0]
d00557e8:	4b12      	ldr	r3, [pc, #72]	; (d0055834 <rand+0x74>)
d00557ea:	6083      	str	r3, [r0, #8]
d00557ec:	230b      	movs	r3, #11
d00557ee:	8183      	strh	r3, [r0, #12]
d00557f0:	2201      	movs	r2, #1
d00557f2:	2300      	movs	r3, #0
d00557f4:	e9c0 2304 	strd	r2, r3, [r0, #16]
d00557f8:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d00557fa:	480f      	ldr	r0, [pc, #60]	; (d0055838 <rand+0x78>)
d00557fc:	690a      	ldr	r2, [r1, #16]
d00557fe:	694b      	ldr	r3, [r1, #20]
d0055800:	4c0e      	ldr	r4, [pc, #56]	; (d005583c <rand+0x7c>)
d0055802:	4350      	muls	r0, r2
d0055804:	fb04 0003 	mla	r0, r4, r3, r0
d0055808:	fba2 3404 	umull	r3, r4, r2, r4
d005580c:	1c5a      	adds	r2, r3, #1
d005580e:	4404      	add	r4, r0
d0055810:	f144 0000 	adc.w	r0, r4, #0
d0055814:	e9c1 2004 	strd	r2, r0, [r1, #16]
d0055818:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d005581c:	bd10      	pop	{r4, pc}
d005581e:	bf00      	nop
d0055820:	d005a414 	.word	0xd005a414
d0055824:	d0057aec 	.word	0xd0057aec
d0055828:	d0057b03 	.word	0xd0057b03
d005582c:	abcd330e 	.word	0xabcd330e
d0055830:	e66d1234 	.word	0xe66d1234
d0055834:	0005deec 	.word	0x0005deec
d0055838:	5851f42d 	.word	0x5851f42d
d005583c:	4c957f2d 	.word	0x4c957f2d

d0055840 <setbuf>:
d0055840:	2900      	cmp	r1, #0
d0055842:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0055846:	bf0c      	ite	eq
d0055848:	2202      	moveq	r2, #2
d005584a:	2200      	movne	r2, #0
d005584c:	f000 b800 	b.w	d0055850 <setvbuf>

d0055850 <setvbuf>:
d0055850:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0055854:	461d      	mov	r5, r3
d0055856:	4b5d      	ldr	r3, [pc, #372]	; (d00559cc <setvbuf+0x17c>)
d0055858:	681f      	ldr	r7, [r3, #0]
d005585a:	4604      	mov	r4, r0
d005585c:	460e      	mov	r6, r1
d005585e:	4690      	mov	r8, r2
d0055860:	b127      	cbz	r7, d005586c <setvbuf+0x1c>
d0055862:	69bb      	ldr	r3, [r7, #24]
d0055864:	b913      	cbnz	r3, d005586c <setvbuf+0x1c>
d0055866:	4638      	mov	r0, r7
d0055868:	f7ff fe2a 	bl	d00554c0 <__sinit>
d005586c:	4b58      	ldr	r3, [pc, #352]	; (d00559d0 <setvbuf+0x180>)
d005586e:	429c      	cmp	r4, r3
d0055870:	d167      	bne.n	d0055942 <setvbuf+0xf2>
d0055872:	687c      	ldr	r4, [r7, #4]
d0055874:	f1b8 0f02 	cmp.w	r8, #2
d0055878:	d006      	beq.n	d0055888 <setvbuf+0x38>
d005587a:	f1b8 0f01 	cmp.w	r8, #1
d005587e:	f200 809f 	bhi.w	d00559c0 <setvbuf+0x170>
d0055882:	2d00      	cmp	r5, #0
d0055884:	f2c0 809c 	blt.w	d00559c0 <setvbuf+0x170>
d0055888:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005588a:	07db      	lsls	r3, r3, #31
d005588c:	d405      	bmi.n	d005589a <setvbuf+0x4a>
d005588e:	89a3      	ldrh	r3, [r4, #12]
d0055890:	0598      	lsls	r0, r3, #22
d0055892:	d402      	bmi.n	d005589a <setvbuf+0x4a>
d0055894:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055896:	f7ff feb2 	bl	d00555fe <__retarget_lock_acquire_recursive>
d005589a:	4621      	mov	r1, r4
d005589c:	4638      	mov	r0, r7
d005589e:	f7ff fd7b 	bl	d0055398 <_fflush_r>
d00558a2:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00558a4:	b141      	cbz	r1, d00558b8 <setvbuf+0x68>
d00558a6:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00558aa:	4299      	cmp	r1, r3
d00558ac:	d002      	beq.n	d00558b4 <setvbuf+0x64>
d00558ae:	4638      	mov	r0, r7
d00558b0:	f7ff fedc 	bl	d005566c <_free_r>
d00558b4:	2300      	movs	r3, #0
d00558b6:	6363      	str	r3, [r4, #52]	; 0x34
d00558b8:	2300      	movs	r3, #0
d00558ba:	61a3      	str	r3, [r4, #24]
d00558bc:	6063      	str	r3, [r4, #4]
d00558be:	89a3      	ldrh	r3, [r4, #12]
d00558c0:	0619      	lsls	r1, r3, #24
d00558c2:	d503      	bpl.n	d00558cc <setvbuf+0x7c>
d00558c4:	6921      	ldr	r1, [r4, #16]
d00558c6:	4638      	mov	r0, r7
d00558c8:	f7ff fed0 	bl	d005566c <_free_r>
d00558cc:	89a3      	ldrh	r3, [r4, #12]
d00558ce:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00558d2:	f023 0303 	bic.w	r3, r3, #3
d00558d6:	f1b8 0f02 	cmp.w	r8, #2
d00558da:	81a3      	strh	r3, [r4, #12]
d00558dc:	d06c      	beq.n	d00559b8 <setvbuf+0x168>
d00558de:	ab01      	add	r3, sp, #4
d00558e0:	466a      	mov	r2, sp
d00558e2:	4621      	mov	r1, r4
d00558e4:	4638      	mov	r0, r7
d00558e6:	f000 f92f 	bl	d0055b48 <__swhatbuf_r>
d00558ea:	89a3      	ldrh	r3, [r4, #12]
d00558ec:	4318      	orrs	r0, r3
d00558ee:	81a0      	strh	r0, [r4, #12]
d00558f0:	2d00      	cmp	r5, #0
d00558f2:	d130      	bne.n	d0055956 <setvbuf+0x106>
d00558f4:	9d00      	ldr	r5, [sp, #0]
d00558f6:	4628      	mov	r0, r5
d00558f8:	f7ff fe84 	bl	d0055604 <malloc>
d00558fc:	4606      	mov	r6, r0
d00558fe:	2800      	cmp	r0, #0
d0055900:	d155      	bne.n	d00559ae <setvbuf+0x15e>
d0055902:	f8dd 9000 	ldr.w	r9, [sp]
d0055906:	45a9      	cmp	r9, r5
d0055908:	d14a      	bne.n	d00559a0 <setvbuf+0x150>
d005590a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d005590e:	2200      	movs	r2, #0
d0055910:	60a2      	str	r2, [r4, #8]
d0055912:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0055916:	6022      	str	r2, [r4, #0]
d0055918:	6122      	str	r2, [r4, #16]
d005591a:	2201      	movs	r2, #1
d005591c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055920:	6162      	str	r2, [r4, #20]
d0055922:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0055924:	f043 0302 	orr.w	r3, r3, #2
d0055928:	07d2      	lsls	r2, r2, #31
d005592a:	81a3      	strh	r3, [r4, #12]
d005592c:	d405      	bmi.n	d005593a <setvbuf+0xea>
d005592e:	f413 7f00 	tst.w	r3, #512	; 0x200
d0055932:	d102      	bne.n	d005593a <setvbuf+0xea>
d0055934:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055936:	f7ff fe63 	bl	d0055600 <__retarget_lock_release_recursive>
d005593a:	4628      	mov	r0, r5
d005593c:	b003      	add	sp, #12
d005593e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0055942:	4b24      	ldr	r3, [pc, #144]	; (d00559d4 <setvbuf+0x184>)
d0055944:	429c      	cmp	r4, r3
d0055946:	d101      	bne.n	d005594c <setvbuf+0xfc>
d0055948:	68bc      	ldr	r4, [r7, #8]
d005594a:	e793      	b.n	d0055874 <setvbuf+0x24>
d005594c:	4b22      	ldr	r3, [pc, #136]	; (d00559d8 <setvbuf+0x188>)
d005594e:	429c      	cmp	r4, r3
d0055950:	bf08      	it	eq
d0055952:	68fc      	ldreq	r4, [r7, #12]
d0055954:	e78e      	b.n	d0055874 <setvbuf+0x24>
d0055956:	2e00      	cmp	r6, #0
d0055958:	d0cd      	beq.n	d00558f6 <setvbuf+0xa6>
d005595a:	69bb      	ldr	r3, [r7, #24]
d005595c:	b913      	cbnz	r3, d0055964 <setvbuf+0x114>
d005595e:	4638      	mov	r0, r7
d0055960:	f7ff fdae 	bl	d00554c0 <__sinit>
d0055964:	f1b8 0f01 	cmp.w	r8, #1
d0055968:	bf08      	it	eq
d005596a:	89a3      	ldrheq	r3, [r4, #12]
d005596c:	6026      	str	r6, [r4, #0]
d005596e:	bf04      	itt	eq
d0055970:	f043 0301 	orreq.w	r3, r3, #1
d0055974:	81a3      	strheq	r3, [r4, #12]
d0055976:	89a2      	ldrh	r2, [r4, #12]
d0055978:	f012 0308 	ands.w	r3, r2, #8
d005597c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0055980:	d01c      	beq.n	d00559bc <setvbuf+0x16c>
d0055982:	07d3      	lsls	r3, r2, #31
d0055984:	bf41      	itttt	mi
d0055986:	2300      	movmi	r3, #0
d0055988:	426d      	negmi	r5, r5
d005598a:	60a3      	strmi	r3, [r4, #8]
d005598c:	61a5      	strmi	r5, [r4, #24]
d005598e:	bf58      	it	pl
d0055990:	60a5      	strpl	r5, [r4, #8]
d0055992:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0055994:	f015 0501 	ands.w	r5, r5, #1
d0055998:	d115      	bne.n	d00559c6 <setvbuf+0x176>
d005599a:	f412 7f00 	tst.w	r2, #512	; 0x200
d005599e:	e7c8      	b.n	d0055932 <setvbuf+0xe2>
d00559a0:	4648      	mov	r0, r9
d00559a2:	f7ff fe2f 	bl	d0055604 <malloc>
d00559a6:	4606      	mov	r6, r0
d00559a8:	2800      	cmp	r0, #0
d00559aa:	d0ae      	beq.n	d005590a <setvbuf+0xba>
d00559ac:	464d      	mov	r5, r9
d00559ae:	89a3      	ldrh	r3, [r4, #12]
d00559b0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00559b4:	81a3      	strh	r3, [r4, #12]
d00559b6:	e7d0      	b.n	d005595a <setvbuf+0x10a>
d00559b8:	2500      	movs	r5, #0
d00559ba:	e7a8      	b.n	d005590e <setvbuf+0xbe>
d00559bc:	60a3      	str	r3, [r4, #8]
d00559be:	e7e8      	b.n	d0055992 <setvbuf+0x142>
d00559c0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00559c4:	e7b9      	b.n	d005593a <setvbuf+0xea>
d00559c6:	2500      	movs	r5, #0
d00559c8:	e7b7      	b.n	d005593a <setvbuf+0xea>
d00559ca:	bf00      	nop
d00559cc:	d005a414 	.word	0xd005a414
d00559d0:	d0057aa8 	.word	0xd0057aa8
d00559d4:	d0057ac8 	.word	0xd0057ac8
d00559d8:	d0057a88 	.word	0xd0057a88

d00559dc <siprintf>:
d00559dc:	b40e      	push	{r1, r2, r3}
d00559de:	b500      	push	{lr}
d00559e0:	b09c      	sub	sp, #112	; 0x70
d00559e2:	ab1d      	add	r3, sp, #116	; 0x74
d00559e4:	9002      	str	r0, [sp, #8]
d00559e6:	9006      	str	r0, [sp, #24]
d00559e8:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00559ec:	4809      	ldr	r0, [pc, #36]	; (d0055a14 <siprintf+0x38>)
d00559ee:	9107      	str	r1, [sp, #28]
d00559f0:	9104      	str	r1, [sp, #16]
d00559f2:	4909      	ldr	r1, [pc, #36]	; (d0055a18 <siprintf+0x3c>)
d00559f4:	f853 2b04 	ldr.w	r2, [r3], #4
d00559f8:	9105      	str	r1, [sp, #20]
d00559fa:	6800      	ldr	r0, [r0, #0]
d00559fc:	9301      	str	r3, [sp, #4]
d00559fe:	a902      	add	r1, sp, #8
d0055a00:	f000 f994 	bl	d0055d2c <_svfiprintf_r>
d0055a04:	9b02      	ldr	r3, [sp, #8]
d0055a06:	2200      	movs	r2, #0
d0055a08:	701a      	strb	r2, [r3, #0]
d0055a0a:	b01c      	add	sp, #112	; 0x70
d0055a0c:	f85d eb04 	ldr.w	lr, [sp], #4
d0055a10:	b003      	add	sp, #12
d0055a12:	4770      	bx	lr
d0055a14:	d005a414 	.word	0xd005a414
d0055a18:	ffff0208 	.word	0xffff0208

d0055a1c <__sread>:
d0055a1c:	b510      	push	{r4, lr}
d0055a1e:	460c      	mov	r4, r1
d0055a20:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055a24:	f000 fd70 	bl	d0056508 <_read_r>
d0055a28:	2800      	cmp	r0, #0
d0055a2a:	bfab      	itete	ge
d0055a2c:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0055a2e:	89a3      	ldrhlt	r3, [r4, #12]
d0055a30:	181b      	addge	r3, r3, r0
d0055a32:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0055a36:	bfac      	ite	ge
d0055a38:	6563      	strge	r3, [r4, #84]	; 0x54
d0055a3a:	81a3      	strhlt	r3, [r4, #12]
d0055a3c:	bd10      	pop	{r4, pc}

d0055a3e <__swrite>:
d0055a3e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0055a42:	461f      	mov	r7, r3
d0055a44:	898b      	ldrh	r3, [r1, #12]
d0055a46:	05db      	lsls	r3, r3, #23
d0055a48:	4605      	mov	r5, r0
d0055a4a:	460c      	mov	r4, r1
d0055a4c:	4616      	mov	r6, r2
d0055a4e:	d505      	bpl.n	d0055a5c <__swrite+0x1e>
d0055a50:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055a54:	2302      	movs	r3, #2
d0055a56:	2200      	movs	r2, #0
d0055a58:	f000 f864 	bl	d0055b24 <_lseek_r>
d0055a5c:	89a3      	ldrh	r3, [r4, #12]
d0055a5e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0055a62:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0055a66:	81a3      	strh	r3, [r4, #12]
d0055a68:	4632      	mov	r2, r6
d0055a6a:	463b      	mov	r3, r7
d0055a6c:	4628      	mov	r0, r5
d0055a6e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0055a72:	f7f5 baef 	b.w	d004b054 <_write_r>

d0055a76 <__sseek>:
d0055a76:	b510      	push	{r4, lr}
d0055a78:	460c      	mov	r4, r1
d0055a7a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055a7e:	f000 f851 	bl	d0055b24 <_lseek_r>
d0055a82:	1c43      	adds	r3, r0, #1
d0055a84:	89a3      	ldrh	r3, [r4, #12]
d0055a86:	bf15      	itete	ne
d0055a88:	6560      	strne	r0, [r4, #84]	; 0x54
d0055a8a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0055a8e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0055a92:	81a3      	strheq	r3, [r4, #12]
d0055a94:	bf18      	it	ne
d0055a96:	81a3      	strhne	r3, [r4, #12]
d0055a98:	bd10      	pop	{r4, pc}

d0055a9a <__sclose>:
d0055a9a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055a9e:	f000 b81f 	b.w	d0055ae0 <_close_r>
	...

d0055aa4 <__assert_func>:
d0055aa4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d0055aa6:	4614      	mov	r4, r2
d0055aa8:	461a      	mov	r2, r3
d0055aaa:	4b09      	ldr	r3, [pc, #36]	; (d0055ad0 <__assert_func+0x2c>)
d0055aac:	681b      	ldr	r3, [r3, #0]
d0055aae:	4605      	mov	r5, r0
d0055ab0:	68d8      	ldr	r0, [r3, #12]
d0055ab2:	b14c      	cbz	r4, d0055ac8 <__assert_func+0x24>
d0055ab4:	4b07      	ldr	r3, [pc, #28]	; (d0055ad4 <__assert_func+0x30>)
d0055ab6:	9100      	str	r1, [sp, #0]
d0055ab8:	e9cd 3401 	strd	r3, r4, [sp, #4]
d0055abc:	4906      	ldr	r1, [pc, #24]	; (d0055ad8 <__assert_func+0x34>)
d0055abe:	462b      	mov	r3, r5
d0055ac0:	f000 f81e 	bl	d0055b00 <fiprintf>
d0055ac4:	f000 fdf2 	bl	d00566ac <abort>
d0055ac8:	4b04      	ldr	r3, [pc, #16]	; (d0055adc <__assert_func+0x38>)
d0055aca:	461c      	mov	r4, r3
d0055acc:	e7f3      	b.n	d0055ab6 <__assert_func+0x12>
d0055ace:	bf00      	nop
d0055ad0:	d005a414 	.word	0xd005a414
d0055ad4:	d0057b62 	.word	0xd0057b62
d0055ad8:	d0057b6f 	.word	0xd0057b6f
d0055adc:	d0057b9d 	.word	0xd0057b9d

d0055ae0 <_close_r>:
d0055ae0:	b538      	push	{r3, r4, r5, lr}
d0055ae2:	4d06      	ldr	r5, [pc, #24]	; (d0055afc <_close_r+0x1c>)
d0055ae4:	2300      	movs	r3, #0
d0055ae6:	4604      	mov	r4, r0
d0055ae8:	4608      	mov	r0, r1
d0055aea:	602b      	str	r3, [r5, #0]
d0055aec:	f7f5 faec 	bl	d004b0c8 <_close>
d0055af0:	1c43      	adds	r3, r0, #1
d0055af2:	d102      	bne.n	d0055afa <_close_r+0x1a>
d0055af4:	682b      	ldr	r3, [r5, #0]
d0055af6:	b103      	cbz	r3, d0055afa <_close_r+0x1a>
d0055af8:	6023      	str	r3, [r4, #0]
d0055afa:	bd38      	pop	{r3, r4, r5, pc}
d0055afc:	d00fcbc0 	.word	0xd00fcbc0

d0055b00 <fiprintf>:
d0055b00:	b40e      	push	{r1, r2, r3}
d0055b02:	b503      	push	{r0, r1, lr}
d0055b04:	4601      	mov	r1, r0
d0055b06:	ab03      	add	r3, sp, #12
d0055b08:	4805      	ldr	r0, [pc, #20]	; (d0055b20 <fiprintf+0x20>)
d0055b0a:	f853 2b04 	ldr.w	r2, [r3], #4
d0055b0e:	6800      	ldr	r0, [r0, #0]
d0055b10:	9301      	str	r3, [sp, #4]
d0055b12:	f000 fa35 	bl	d0055f80 <_vfiprintf_r>
d0055b16:	b002      	add	sp, #8
d0055b18:	f85d eb04 	ldr.w	lr, [sp], #4
d0055b1c:	b003      	add	sp, #12
d0055b1e:	4770      	bx	lr
d0055b20:	d005a414 	.word	0xd005a414

d0055b24 <_lseek_r>:
d0055b24:	b538      	push	{r3, r4, r5, lr}
d0055b26:	4d07      	ldr	r5, [pc, #28]	; (d0055b44 <_lseek_r+0x20>)
d0055b28:	4604      	mov	r4, r0
d0055b2a:	4608      	mov	r0, r1
d0055b2c:	4611      	mov	r1, r2
d0055b2e:	2200      	movs	r2, #0
d0055b30:	602a      	str	r2, [r5, #0]
d0055b32:	461a      	mov	r2, r3
d0055b34:	f7f5 fad2 	bl	d004b0dc <_lseek>
d0055b38:	1c43      	adds	r3, r0, #1
d0055b3a:	d102      	bne.n	d0055b42 <_lseek_r+0x1e>
d0055b3c:	682b      	ldr	r3, [r5, #0]
d0055b3e:	b103      	cbz	r3, d0055b42 <_lseek_r+0x1e>
d0055b40:	6023      	str	r3, [r4, #0]
d0055b42:	bd38      	pop	{r3, r4, r5, pc}
d0055b44:	d00fcbc0 	.word	0xd00fcbc0

d0055b48 <__swhatbuf_r>:
d0055b48:	b570      	push	{r4, r5, r6, lr}
d0055b4a:	460e      	mov	r6, r1
d0055b4c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055b50:	2900      	cmp	r1, #0
d0055b52:	b096      	sub	sp, #88	; 0x58
d0055b54:	4614      	mov	r4, r2
d0055b56:	461d      	mov	r5, r3
d0055b58:	da07      	bge.n	d0055b6a <__swhatbuf_r+0x22>
d0055b5a:	2300      	movs	r3, #0
d0055b5c:	602b      	str	r3, [r5, #0]
d0055b5e:	89b3      	ldrh	r3, [r6, #12]
d0055b60:	061a      	lsls	r2, r3, #24
d0055b62:	d410      	bmi.n	d0055b86 <__swhatbuf_r+0x3e>
d0055b64:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0055b68:	e00e      	b.n	d0055b88 <__swhatbuf_r+0x40>
d0055b6a:	466a      	mov	r2, sp
d0055b6c:	f000 fda6 	bl	d00566bc <_fstat_r>
d0055b70:	2800      	cmp	r0, #0
d0055b72:	dbf2      	blt.n	d0055b5a <__swhatbuf_r+0x12>
d0055b74:	9a01      	ldr	r2, [sp, #4]
d0055b76:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0055b7a:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0055b7e:	425a      	negs	r2, r3
d0055b80:	415a      	adcs	r2, r3
d0055b82:	602a      	str	r2, [r5, #0]
d0055b84:	e7ee      	b.n	d0055b64 <__swhatbuf_r+0x1c>
d0055b86:	2340      	movs	r3, #64	; 0x40
d0055b88:	2000      	movs	r0, #0
d0055b8a:	6023      	str	r3, [r4, #0]
d0055b8c:	b016      	add	sp, #88	; 0x58
d0055b8e:	bd70      	pop	{r4, r5, r6, pc}

d0055b90 <__smakebuf_r>:
d0055b90:	898b      	ldrh	r3, [r1, #12]
d0055b92:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0055b94:	079d      	lsls	r5, r3, #30
d0055b96:	4606      	mov	r6, r0
d0055b98:	460c      	mov	r4, r1
d0055b9a:	d507      	bpl.n	d0055bac <__smakebuf_r+0x1c>
d0055b9c:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0055ba0:	6023      	str	r3, [r4, #0]
d0055ba2:	6123      	str	r3, [r4, #16]
d0055ba4:	2301      	movs	r3, #1
d0055ba6:	6163      	str	r3, [r4, #20]
d0055ba8:	b002      	add	sp, #8
d0055baa:	bd70      	pop	{r4, r5, r6, pc}
d0055bac:	ab01      	add	r3, sp, #4
d0055bae:	466a      	mov	r2, sp
d0055bb0:	f7ff ffca 	bl	d0055b48 <__swhatbuf_r>
d0055bb4:	9900      	ldr	r1, [sp, #0]
d0055bb6:	4605      	mov	r5, r0
d0055bb8:	4630      	mov	r0, r6
d0055bba:	f7ff fda7 	bl	d005570c <_malloc_r>
d0055bbe:	b948      	cbnz	r0, d0055bd4 <__smakebuf_r+0x44>
d0055bc0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055bc4:	059a      	lsls	r2, r3, #22
d0055bc6:	d4ef      	bmi.n	d0055ba8 <__smakebuf_r+0x18>
d0055bc8:	f023 0303 	bic.w	r3, r3, #3
d0055bcc:	f043 0302 	orr.w	r3, r3, #2
d0055bd0:	81a3      	strh	r3, [r4, #12]
d0055bd2:	e7e3      	b.n	d0055b9c <__smakebuf_r+0xc>
d0055bd4:	4b0d      	ldr	r3, [pc, #52]	; (d0055c0c <__smakebuf_r+0x7c>)
d0055bd6:	62b3      	str	r3, [r6, #40]	; 0x28
d0055bd8:	89a3      	ldrh	r3, [r4, #12]
d0055bda:	6020      	str	r0, [r4, #0]
d0055bdc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055be0:	81a3      	strh	r3, [r4, #12]
d0055be2:	9b00      	ldr	r3, [sp, #0]
d0055be4:	6163      	str	r3, [r4, #20]
d0055be6:	9b01      	ldr	r3, [sp, #4]
d0055be8:	6120      	str	r0, [r4, #16]
d0055bea:	b15b      	cbz	r3, d0055c04 <__smakebuf_r+0x74>
d0055bec:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0055bf0:	4630      	mov	r0, r6
d0055bf2:	f000 fd75 	bl	d00566e0 <_isatty_r>
d0055bf6:	b128      	cbz	r0, d0055c04 <__smakebuf_r+0x74>
d0055bf8:	89a3      	ldrh	r3, [r4, #12]
d0055bfa:	f023 0303 	bic.w	r3, r3, #3
d0055bfe:	f043 0301 	orr.w	r3, r3, #1
d0055c02:	81a3      	strh	r3, [r4, #12]
d0055c04:	89a0      	ldrh	r0, [r4, #12]
d0055c06:	4305      	orrs	r5, r0
d0055c08:	81a5      	strh	r5, [r4, #12]
d0055c0a:	e7cd      	b.n	d0055ba8 <__smakebuf_r+0x18>
d0055c0c:	d0055459 	.word	0xd0055459

d0055c10 <__malloc_lock>:
d0055c10:	4801      	ldr	r0, [pc, #4]	; (d0055c18 <__malloc_lock+0x8>)
d0055c12:	f7ff bcf4 	b.w	d00555fe <__retarget_lock_acquire_recursive>
d0055c16:	bf00      	nop
d0055c18:	d00fcbb8 	.word	0xd00fcbb8

d0055c1c <__malloc_unlock>:
d0055c1c:	4801      	ldr	r0, [pc, #4]	; (d0055c24 <__malloc_unlock+0x8>)
d0055c1e:	f7ff bcef 	b.w	d0055600 <__retarget_lock_release_recursive>
d0055c22:	bf00      	nop
d0055c24:	d00fcbb8 	.word	0xd00fcbb8

d0055c28 <_realloc_r>:
d0055c28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055c2a:	4607      	mov	r7, r0
d0055c2c:	4614      	mov	r4, r2
d0055c2e:	460e      	mov	r6, r1
d0055c30:	b921      	cbnz	r1, d0055c3c <_realloc_r+0x14>
d0055c32:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0055c36:	4611      	mov	r1, r2
d0055c38:	f7ff bd68 	b.w	d005570c <_malloc_r>
d0055c3c:	b922      	cbnz	r2, d0055c48 <_realloc_r+0x20>
d0055c3e:	f7ff fd15 	bl	d005566c <_free_r>
d0055c42:	4625      	mov	r5, r4
d0055c44:	4628      	mov	r0, r5
d0055c46:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0055c48:	f000 fdc4 	bl	d00567d4 <_malloc_usable_size_r>
d0055c4c:	42a0      	cmp	r0, r4
d0055c4e:	d20f      	bcs.n	d0055c70 <_realloc_r+0x48>
d0055c50:	4621      	mov	r1, r4
d0055c52:	4638      	mov	r0, r7
d0055c54:	f7ff fd5a 	bl	d005570c <_malloc_r>
d0055c58:	4605      	mov	r5, r0
d0055c5a:	2800      	cmp	r0, #0
d0055c5c:	d0f2      	beq.n	d0055c44 <_realloc_r+0x1c>
d0055c5e:	4631      	mov	r1, r6
d0055c60:	4622      	mov	r2, r4
d0055c62:	f7ff fced 	bl	d0055640 <memcpy>
d0055c66:	4631      	mov	r1, r6
d0055c68:	4638      	mov	r0, r7
d0055c6a:	f7ff fcff 	bl	d005566c <_free_r>
d0055c6e:	e7e9      	b.n	d0055c44 <_realloc_r+0x1c>
d0055c70:	4635      	mov	r5, r6
d0055c72:	e7e7      	b.n	d0055c44 <_realloc_r+0x1c>

d0055c74 <__ssputs_r>:
d0055c74:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0055c78:	688e      	ldr	r6, [r1, #8]
d0055c7a:	429e      	cmp	r6, r3
d0055c7c:	4682      	mov	sl, r0
d0055c7e:	460c      	mov	r4, r1
d0055c80:	4690      	mov	r8, r2
d0055c82:	461f      	mov	r7, r3
d0055c84:	d838      	bhi.n	d0055cf8 <__ssputs_r+0x84>
d0055c86:	898a      	ldrh	r2, [r1, #12]
d0055c88:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0055c8c:	d032      	beq.n	d0055cf4 <__ssputs_r+0x80>
d0055c8e:	6825      	ldr	r5, [r4, #0]
d0055c90:	6909      	ldr	r1, [r1, #16]
d0055c92:	eba5 0901 	sub.w	r9, r5, r1
d0055c96:	6965      	ldr	r5, [r4, #20]
d0055c98:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0055c9c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0055ca0:	3301      	adds	r3, #1
d0055ca2:	444b      	add	r3, r9
d0055ca4:	106d      	asrs	r5, r5, #1
d0055ca6:	429d      	cmp	r5, r3
d0055ca8:	bf38      	it	cc
d0055caa:	461d      	movcc	r5, r3
d0055cac:	0553      	lsls	r3, r2, #21
d0055cae:	d531      	bpl.n	d0055d14 <__ssputs_r+0xa0>
d0055cb0:	4629      	mov	r1, r5
d0055cb2:	f7ff fd2b 	bl	d005570c <_malloc_r>
d0055cb6:	4606      	mov	r6, r0
d0055cb8:	b950      	cbnz	r0, d0055cd0 <__ssputs_r+0x5c>
d0055cba:	230c      	movs	r3, #12
d0055cbc:	f8ca 3000 	str.w	r3, [sl]
d0055cc0:	89a3      	ldrh	r3, [r4, #12]
d0055cc2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055cc6:	81a3      	strh	r3, [r4, #12]
d0055cc8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055ccc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0055cd0:	6921      	ldr	r1, [r4, #16]
d0055cd2:	464a      	mov	r2, r9
d0055cd4:	f7ff fcb4 	bl	d0055640 <memcpy>
d0055cd8:	89a3      	ldrh	r3, [r4, #12]
d0055cda:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0055cde:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055ce2:	81a3      	strh	r3, [r4, #12]
d0055ce4:	6126      	str	r6, [r4, #16]
d0055ce6:	6165      	str	r5, [r4, #20]
d0055ce8:	444e      	add	r6, r9
d0055cea:	eba5 0509 	sub.w	r5, r5, r9
d0055cee:	6026      	str	r6, [r4, #0]
d0055cf0:	60a5      	str	r5, [r4, #8]
d0055cf2:	463e      	mov	r6, r7
d0055cf4:	42be      	cmp	r6, r7
d0055cf6:	d900      	bls.n	d0055cfa <__ssputs_r+0x86>
d0055cf8:	463e      	mov	r6, r7
d0055cfa:	4632      	mov	r2, r6
d0055cfc:	6820      	ldr	r0, [r4, #0]
d0055cfe:	4641      	mov	r1, r8
d0055d00:	f000 fd4e 	bl	d00567a0 <memmove>
d0055d04:	68a3      	ldr	r3, [r4, #8]
d0055d06:	6822      	ldr	r2, [r4, #0]
d0055d08:	1b9b      	subs	r3, r3, r6
d0055d0a:	4432      	add	r2, r6
d0055d0c:	60a3      	str	r3, [r4, #8]
d0055d0e:	6022      	str	r2, [r4, #0]
d0055d10:	2000      	movs	r0, #0
d0055d12:	e7db      	b.n	d0055ccc <__ssputs_r+0x58>
d0055d14:	462a      	mov	r2, r5
d0055d16:	f7ff ff87 	bl	d0055c28 <_realloc_r>
d0055d1a:	4606      	mov	r6, r0
d0055d1c:	2800      	cmp	r0, #0
d0055d1e:	d1e1      	bne.n	d0055ce4 <__ssputs_r+0x70>
d0055d20:	6921      	ldr	r1, [r4, #16]
d0055d22:	4650      	mov	r0, sl
d0055d24:	f7ff fca2 	bl	d005566c <_free_r>
d0055d28:	e7c7      	b.n	d0055cba <__ssputs_r+0x46>
	...

d0055d2c <_svfiprintf_r>:
d0055d2c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055d30:	4698      	mov	r8, r3
d0055d32:	898b      	ldrh	r3, [r1, #12]
d0055d34:	061b      	lsls	r3, r3, #24
d0055d36:	b09d      	sub	sp, #116	; 0x74
d0055d38:	4607      	mov	r7, r0
d0055d3a:	460d      	mov	r5, r1
d0055d3c:	4614      	mov	r4, r2
d0055d3e:	d50e      	bpl.n	d0055d5e <_svfiprintf_r+0x32>
d0055d40:	690b      	ldr	r3, [r1, #16]
d0055d42:	b963      	cbnz	r3, d0055d5e <_svfiprintf_r+0x32>
d0055d44:	2140      	movs	r1, #64	; 0x40
d0055d46:	f7ff fce1 	bl	d005570c <_malloc_r>
d0055d4a:	6028      	str	r0, [r5, #0]
d0055d4c:	6128      	str	r0, [r5, #16]
d0055d4e:	b920      	cbnz	r0, d0055d5a <_svfiprintf_r+0x2e>
d0055d50:	230c      	movs	r3, #12
d0055d52:	603b      	str	r3, [r7, #0]
d0055d54:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055d58:	e0d1      	b.n	d0055efe <_svfiprintf_r+0x1d2>
d0055d5a:	2340      	movs	r3, #64	; 0x40
d0055d5c:	616b      	str	r3, [r5, #20]
d0055d5e:	2300      	movs	r3, #0
d0055d60:	9309      	str	r3, [sp, #36]	; 0x24
d0055d62:	2320      	movs	r3, #32
d0055d64:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0055d68:	f8cd 800c 	str.w	r8, [sp, #12]
d0055d6c:	2330      	movs	r3, #48	; 0x30
d0055d6e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0055f18 <_svfiprintf_r+0x1ec>
d0055d72:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0055d76:	f04f 0901 	mov.w	r9, #1
d0055d7a:	4623      	mov	r3, r4
d0055d7c:	469a      	mov	sl, r3
d0055d7e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0055d82:	b10a      	cbz	r2, d0055d88 <_svfiprintf_r+0x5c>
d0055d84:	2a25      	cmp	r2, #37	; 0x25
d0055d86:	d1f9      	bne.n	d0055d7c <_svfiprintf_r+0x50>
d0055d88:	ebba 0b04 	subs.w	fp, sl, r4
d0055d8c:	d00b      	beq.n	d0055da6 <_svfiprintf_r+0x7a>
d0055d8e:	465b      	mov	r3, fp
d0055d90:	4622      	mov	r2, r4
d0055d92:	4629      	mov	r1, r5
d0055d94:	4638      	mov	r0, r7
d0055d96:	f7ff ff6d 	bl	d0055c74 <__ssputs_r>
d0055d9a:	3001      	adds	r0, #1
d0055d9c:	f000 80aa 	beq.w	d0055ef4 <_svfiprintf_r+0x1c8>
d0055da0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0055da2:	445a      	add	r2, fp
d0055da4:	9209      	str	r2, [sp, #36]	; 0x24
d0055da6:	f89a 3000 	ldrb.w	r3, [sl]
d0055daa:	2b00      	cmp	r3, #0
d0055dac:	f000 80a2 	beq.w	d0055ef4 <_svfiprintf_r+0x1c8>
d0055db0:	2300      	movs	r3, #0
d0055db2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0055db6:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0055dba:	f10a 0a01 	add.w	sl, sl, #1
d0055dbe:	9304      	str	r3, [sp, #16]
d0055dc0:	9307      	str	r3, [sp, #28]
d0055dc2:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0055dc6:	931a      	str	r3, [sp, #104]	; 0x68
d0055dc8:	4654      	mov	r4, sl
d0055dca:	2205      	movs	r2, #5
d0055dcc:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055dd0:	4851      	ldr	r0, [pc, #324]	; (d0055f18 <_svfiprintf_r+0x1ec>)
d0055dd2:	f000 fc95 	bl	d0056700 <memchr>
d0055dd6:	9a04      	ldr	r2, [sp, #16]
d0055dd8:	b9d8      	cbnz	r0, d0055e12 <_svfiprintf_r+0xe6>
d0055dda:	06d0      	lsls	r0, r2, #27
d0055ddc:	bf44      	itt	mi
d0055dde:	2320      	movmi	r3, #32
d0055de0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055de4:	0711      	lsls	r1, r2, #28
d0055de6:	bf44      	itt	mi
d0055de8:	232b      	movmi	r3, #43	; 0x2b
d0055dea:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055dee:	f89a 3000 	ldrb.w	r3, [sl]
d0055df2:	2b2a      	cmp	r3, #42	; 0x2a
d0055df4:	d015      	beq.n	d0055e22 <_svfiprintf_r+0xf6>
d0055df6:	9a07      	ldr	r2, [sp, #28]
d0055df8:	4654      	mov	r4, sl
d0055dfa:	2000      	movs	r0, #0
d0055dfc:	f04f 0c0a 	mov.w	ip, #10
d0055e00:	4621      	mov	r1, r4
d0055e02:	f811 3b01 	ldrb.w	r3, [r1], #1
d0055e06:	3b30      	subs	r3, #48	; 0x30
d0055e08:	2b09      	cmp	r3, #9
d0055e0a:	d94e      	bls.n	d0055eaa <_svfiprintf_r+0x17e>
d0055e0c:	b1b0      	cbz	r0, d0055e3c <_svfiprintf_r+0x110>
d0055e0e:	9207      	str	r2, [sp, #28]
d0055e10:	e014      	b.n	d0055e3c <_svfiprintf_r+0x110>
d0055e12:	eba0 0308 	sub.w	r3, r0, r8
d0055e16:	fa09 f303 	lsl.w	r3, r9, r3
d0055e1a:	4313      	orrs	r3, r2
d0055e1c:	9304      	str	r3, [sp, #16]
d0055e1e:	46a2      	mov	sl, r4
d0055e20:	e7d2      	b.n	d0055dc8 <_svfiprintf_r+0x9c>
d0055e22:	9b03      	ldr	r3, [sp, #12]
d0055e24:	1d19      	adds	r1, r3, #4
d0055e26:	681b      	ldr	r3, [r3, #0]
d0055e28:	9103      	str	r1, [sp, #12]
d0055e2a:	2b00      	cmp	r3, #0
d0055e2c:	bfbb      	ittet	lt
d0055e2e:	425b      	neglt	r3, r3
d0055e30:	f042 0202 	orrlt.w	r2, r2, #2
d0055e34:	9307      	strge	r3, [sp, #28]
d0055e36:	9307      	strlt	r3, [sp, #28]
d0055e38:	bfb8      	it	lt
d0055e3a:	9204      	strlt	r2, [sp, #16]
d0055e3c:	7823      	ldrb	r3, [r4, #0]
d0055e3e:	2b2e      	cmp	r3, #46	; 0x2e
d0055e40:	d10c      	bne.n	d0055e5c <_svfiprintf_r+0x130>
d0055e42:	7863      	ldrb	r3, [r4, #1]
d0055e44:	2b2a      	cmp	r3, #42	; 0x2a
d0055e46:	d135      	bne.n	d0055eb4 <_svfiprintf_r+0x188>
d0055e48:	9b03      	ldr	r3, [sp, #12]
d0055e4a:	1d1a      	adds	r2, r3, #4
d0055e4c:	681b      	ldr	r3, [r3, #0]
d0055e4e:	9203      	str	r2, [sp, #12]
d0055e50:	2b00      	cmp	r3, #0
d0055e52:	bfb8      	it	lt
d0055e54:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0055e58:	3402      	adds	r4, #2
d0055e5a:	9305      	str	r3, [sp, #20]
d0055e5c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0055f28 <_svfiprintf_r+0x1fc>
d0055e60:	7821      	ldrb	r1, [r4, #0]
d0055e62:	2203      	movs	r2, #3
d0055e64:	4650      	mov	r0, sl
d0055e66:	f000 fc4b 	bl	d0056700 <memchr>
d0055e6a:	b140      	cbz	r0, d0055e7e <_svfiprintf_r+0x152>
d0055e6c:	2340      	movs	r3, #64	; 0x40
d0055e6e:	eba0 000a 	sub.w	r0, r0, sl
d0055e72:	fa03 f000 	lsl.w	r0, r3, r0
d0055e76:	9b04      	ldr	r3, [sp, #16]
d0055e78:	4303      	orrs	r3, r0
d0055e7a:	3401      	adds	r4, #1
d0055e7c:	9304      	str	r3, [sp, #16]
d0055e7e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055e82:	4826      	ldr	r0, [pc, #152]	; (d0055f1c <_svfiprintf_r+0x1f0>)
d0055e84:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0055e88:	2206      	movs	r2, #6
d0055e8a:	f000 fc39 	bl	d0056700 <memchr>
d0055e8e:	2800      	cmp	r0, #0
d0055e90:	d038      	beq.n	d0055f04 <_svfiprintf_r+0x1d8>
d0055e92:	4b23      	ldr	r3, [pc, #140]	; (d0055f20 <_svfiprintf_r+0x1f4>)
d0055e94:	bb1b      	cbnz	r3, d0055ede <_svfiprintf_r+0x1b2>
d0055e96:	9b03      	ldr	r3, [sp, #12]
d0055e98:	3307      	adds	r3, #7
d0055e9a:	f023 0307 	bic.w	r3, r3, #7
d0055e9e:	3308      	adds	r3, #8
d0055ea0:	9303      	str	r3, [sp, #12]
d0055ea2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0055ea4:	4433      	add	r3, r6
d0055ea6:	9309      	str	r3, [sp, #36]	; 0x24
d0055ea8:	e767      	b.n	d0055d7a <_svfiprintf_r+0x4e>
d0055eaa:	fb0c 3202 	mla	r2, ip, r2, r3
d0055eae:	460c      	mov	r4, r1
d0055eb0:	2001      	movs	r0, #1
d0055eb2:	e7a5      	b.n	d0055e00 <_svfiprintf_r+0xd4>
d0055eb4:	2300      	movs	r3, #0
d0055eb6:	3401      	adds	r4, #1
d0055eb8:	9305      	str	r3, [sp, #20]
d0055eba:	4619      	mov	r1, r3
d0055ebc:	f04f 0c0a 	mov.w	ip, #10
d0055ec0:	4620      	mov	r0, r4
d0055ec2:	f810 2b01 	ldrb.w	r2, [r0], #1
d0055ec6:	3a30      	subs	r2, #48	; 0x30
d0055ec8:	2a09      	cmp	r2, #9
d0055eca:	d903      	bls.n	d0055ed4 <_svfiprintf_r+0x1a8>
d0055ecc:	2b00      	cmp	r3, #0
d0055ece:	d0c5      	beq.n	d0055e5c <_svfiprintf_r+0x130>
d0055ed0:	9105      	str	r1, [sp, #20]
d0055ed2:	e7c3      	b.n	d0055e5c <_svfiprintf_r+0x130>
d0055ed4:	fb0c 2101 	mla	r1, ip, r1, r2
d0055ed8:	4604      	mov	r4, r0
d0055eda:	2301      	movs	r3, #1
d0055edc:	e7f0      	b.n	d0055ec0 <_svfiprintf_r+0x194>
d0055ede:	ab03      	add	r3, sp, #12
d0055ee0:	9300      	str	r3, [sp, #0]
d0055ee2:	462a      	mov	r2, r5
d0055ee4:	4b0f      	ldr	r3, [pc, #60]	; (d0055f24 <_svfiprintf_r+0x1f8>)
d0055ee6:	a904      	add	r1, sp, #16
d0055ee8:	4638      	mov	r0, r7
d0055eea:	f3af 8000 	nop.w
d0055eee:	1c42      	adds	r2, r0, #1
d0055ef0:	4606      	mov	r6, r0
d0055ef2:	d1d6      	bne.n	d0055ea2 <_svfiprintf_r+0x176>
d0055ef4:	89ab      	ldrh	r3, [r5, #12]
d0055ef6:	065b      	lsls	r3, r3, #25
d0055ef8:	f53f af2c 	bmi.w	d0055d54 <_svfiprintf_r+0x28>
d0055efc:	9809      	ldr	r0, [sp, #36]	; 0x24
d0055efe:	b01d      	add	sp, #116	; 0x74
d0055f00:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055f04:	ab03      	add	r3, sp, #12
d0055f06:	9300      	str	r3, [sp, #0]
d0055f08:	462a      	mov	r2, r5
d0055f0a:	4b06      	ldr	r3, [pc, #24]	; (d0055f24 <_svfiprintf_r+0x1f8>)
d0055f0c:	a904      	add	r1, sp, #16
d0055f0e:	4638      	mov	r0, r7
d0055f10:	f000 f9d4 	bl	d00562bc <_printf_i>
d0055f14:	e7eb      	b.n	d0055eee <_svfiprintf_r+0x1c2>
d0055f16:	bf00      	nop
d0055f18:	d0057b9e 	.word	0xd0057b9e
d0055f1c:	d0057ba8 	.word	0xd0057ba8
d0055f20:	00000000 	.word	0x00000000
d0055f24:	d0055c75 	.word	0xd0055c75
d0055f28:	d0057ba4 	.word	0xd0057ba4

d0055f2c <__sfputc_r>:
d0055f2c:	6893      	ldr	r3, [r2, #8]
d0055f2e:	3b01      	subs	r3, #1
d0055f30:	2b00      	cmp	r3, #0
d0055f32:	b410      	push	{r4}
d0055f34:	6093      	str	r3, [r2, #8]
d0055f36:	da08      	bge.n	d0055f4a <__sfputc_r+0x1e>
d0055f38:	6994      	ldr	r4, [r2, #24]
d0055f3a:	42a3      	cmp	r3, r4
d0055f3c:	db01      	blt.n	d0055f42 <__sfputc_r+0x16>
d0055f3e:	290a      	cmp	r1, #10
d0055f40:	d103      	bne.n	d0055f4a <__sfputc_r+0x1e>
d0055f42:	f85d 4b04 	ldr.w	r4, [sp], #4
d0055f46:	f000 baf1 	b.w	d005652c <__swbuf_r>
d0055f4a:	6813      	ldr	r3, [r2, #0]
d0055f4c:	1c58      	adds	r0, r3, #1
d0055f4e:	6010      	str	r0, [r2, #0]
d0055f50:	7019      	strb	r1, [r3, #0]
d0055f52:	4608      	mov	r0, r1
d0055f54:	f85d 4b04 	ldr.w	r4, [sp], #4
d0055f58:	4770      	bx	lr

d0055f5a <__sfputs_r>:
d0055f5a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055f5c:	4606      	mov	r6, r0
d0055f5e:	460f      	mov	r7, r1
d0055f60:	4614      	mov	r4, r2
d0055f62:	18d5      	adds	r5, r2, r3
d0055f64:	42ac      	cmp	r4, r5
d0055f66:	d101      	bne.n	d0055f6c <__sfputs_r+0x12>
d0055f68:	2000      	movs	r0, #0
d0055f6a:	e007      	b.n	d0055f7c <__sfputs_r+0x22>
d0055f6c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055f70:	463a      	mov	r2, r7
d0055f72:	4630      	mov	r0, r6
d0055f74:	f7ff ffda 	bl	d0055f2c <__sfputc_r>
d0055f78:	1c43      	adds	r3, r0, #1
d0055f7a:	d1f3      	bne.n	d0055f64 <__sfputs_r+0xa>
d0055f7c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0055f80 <_vfiprintf_r>:
d0055f80:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055f84:	460d      	mov	r5, r1
d0055f86:	b09d      	sub	sp, #116	; 0x74
d0055f88:	4614      	mov	r4, r2
d0055f8a:	4698      	mov	r8, r3
d0055f8c:	4606      	mov	r6, r0
d0055f8e:	b118      	cbz	r0, d0055f98 <_vfiprintf_r+0x18>
d0055f90:	6983      	ldr	r3, [r0, #24]
d0055f92:	b90b      	cbnz	r3, d0055f98 <_vfiprintf_r+0x18>
d0055f94:	f7ff fa94 	bl	d00554c0 <__sinit>
d0055f98:	4b89      	ldr	r3, [pc, #548]	; (d00561c0 <_vfiprintf_r+0x240>)
d0055f9a:	429d      	cmp	r5, r3
d0055f9c:	d11b      	bne.n	d0055fd6 <_vfiprintf_r+0x56>
d0055f9e:	6875      	ldr	r5, [r6, #4]
d0055fa0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0055fa2:	07d9      	lsls	r1, r3, #31
d0055fa4:	d405      	bmi.n	d0055fb2 <_vfiprintf_r+0x32>
d0055fa6:	89ab      	ldrh	r3, [r5, #12]
d0055fa8:	059a      	lsls	r2, r3, #22
d0055faa:	d402      	bmi.n	d0055fb2 <_vfiprintf_r+0x32>
d0055fac:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0055fae:	f7ff fb26 	bl	d00555fe <__retarget_lock_acquire_recursive>
d0055fb2:	89ab      	ldrh	r3, [r5, #12]
d0055fb4:	071b      	lsls	r3, r3, #28
d0055fb6:	d501      	bpl.n	d0055fbc <_vfiprintf_r+0x3c>
d0055fb8:	692b      	ldr	r3, [r5, #16]
d0055fba:	b9eb      	cbnz	r3, d0055ff8 <_vfiprintf_r+0x78>
d0055fbc:	4629      	mov	r1, r5
d0055fbe:	4630      	mov	r0, r6
d0055fc0:	f000 fb06 	bl	d00565d0 <__swsetup_r>
d0055fc4:	b1c0      	cbz	r0, d0055ff8 <_vfiprintf_r+0x78>
d0055fc6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0055fc8:	07dc      	lsls	r4, r3, #31
d0055fca:	d50e      	bpl.n	d0055fea <_vfiprintf_r+0x6a>
d0055fcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055fd0:	b01d      	add	sp, #116	; 0x74
d0055fd2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055fd6:	4b7b      	ldr	r3, [pc, #492]	; (d00561c4 <_vfiprintf_r+0x244>)
d0055fd8:	429d      	cmp	r5, r3
d0055fda:	d101      	bne.n	d0055fe0 <_vfiprintf_r+0x60>
d0055fdc:	68b5      	ldr	r5, [r6, #8]
d0055fde:	e7df      	b.n	d0055fa0 <_vfiprintf_r+0x20>
d0055fe0:	4b79      	ldr	r3, [pc, #484]	; (d00561c8 <_vfiprintf_r+0x248>)
d0055fe2:	429d      	cmp	r5, r3
d0055fe4:	bf08      	it	eq
d0055fe6:	68f5      	ldreq	r5, [r6, #12]
d0055fe8:	e7da      	b.n	d0055fa0 <_vfiprintf_r+0x20>
d0055fea:	89ab      	ldrh	r3, [r5, #12]
d0055fec:	0598      	lsls	r0, r3, #22
d0055fee:	d4ed      	bmi.n	d0055fcc <_vfiprintf_r+0x4c>
d0055ff0:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0055ff2:	f7ff fb05 	bl	d0055600 <__retarget_lock_release_recursive>
d0055ff6:	e7e9      	b.n	d0055fcc <_vfiprintf_r+0x4c>
d0055ff8:	2300      	movs	r3, #0
d0055ffa:	9309      	str	r3, [sp, #36]	; 0x24
d0055ffc:	2320      	movs	r3, #32
d0055ffe:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0056002:	f8cd 800c 	str.w	r8, [sp, #12]
d0056006:	2330      	movs	r3, #48	; 0x30
d0056008:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d00561cc <_vfiprintf_r+0x24c>
d005600c:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0056010:	f04f 0901 	mov.w	r9, #1
d0056014:	4623      	mov	r3, r4
d0056016:	469a      	mov	sl, r3
d0056018:	f813 2b01 	ldrb.w	r2, [r3], #1
d005601c:	b10a      	cbz	r2, d0056022 <_vfiprintf_r+0xa2>
d005601e:	2a25      	cmp	r2, #37	; 0x25
d0056020:	d1f9      	bne.n	d0056016 <_vfiprintf_r+0x96>
d0056022:	ebba 0b04 	subs.w	fp, sl, r4
d0056026:	d00b      	beq.n	d0056040 <_vfiprintf_r+0xc0>
d0056028:	465b      	mov	r3, fp
d005602a:	4622      	mov	r2, r4
d005602c:	4629      	mov	r1, r5
d005602e:	4630      	mov	r0, r6
d0056030:	f7ff ff93 	bl	d0055f5a <__sfputs_r>
d0056034:	3001      	adds	r0, #1
d0056036:	f000 80aa 	beq.w	d005618e <_vfiprintf_r+0x20e>
d005603a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d005603c:	445a      	add	r2, fp
d005603e:	9209      	str	r2, [sp, #36]	; 0x24
d0056040:	f89a 3000 	ldrb.w	r3, [sl]
d0056044:	2b00      	cmp	r3, #0
d0056046:	f000 80a2 	beq.w	d005618e <_vfiprintf_r+0x20e>
d005604a:	2300      	movs	r3, #0
d005604c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0056050:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0056054:	f10a 0a01 	add.w	sl, sl, #1
d0056058:	9304      	str	r3, [sp, #16]
d005605a:	9307      	str	r3, [sp, #28]
d005605c:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0056060:	931a      	str	r3, [sp, #104]	; 0x68
d0056062:	4654      	mov	r4, sl
d0056064:	2205      	movs	r2, #5
d0056066:	f814 1b01 	ldrb.w	r1, [r4], #1
d005606a:	4858      	ldr	r0, [pc, #352]	; (d00561cc <_vfiprintf_r+0x24c>)
d005606c:	f000 fb48 	bl	d0056700 <memchr>
d0056070:	9a04      	ldr	r2, [sp, #16]
d0056072:	b9d8      	cbnz	r0, d00560ac <_vfiprintf_r+0x12c>
d0056074:	06d1      	lsls	r1, r2, #27
d0056076:	bf44      	itt	mi
d0056078:	2320      	movmi	r3, #32
d005607a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005607e:	0713      	lsls	r3, r2, #28
d0056080:	bf44      	itt	mi
d0056082:	232b      	movmi	r3, #43	; 0x2b
d0056084:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0056088:	f89a 3000 	ldrb.w	r3, [sl]
d005608c:	2b2a      	cmp	r3, #42	; 0x2a
d005608e:	d015      	beq.n	d00560bc <_vfiprintf_r+0x13c>
d0056090:	9a07      	ldr	r2, [sp, #28]
d0056092:	4654      	mov	r4, sl
d0056094:	2000      	movs	r0, #0
d0056096:	f04f 0c0a 	mov.w	ip, #10
d005609a:	4621      	mov	r1, r4
d005609c:	f811 3b01 	ldrb.w	r3, [r1], #1
d00560a0:	3b30      	subs	r3, #48	; 0x30
d00560a2:	2b09      	cmp	r3, #9
d00560a4:	d94e      	bls.n	d0056144 <_vfiprintf_r+0x1c4>
d00560a6:	b1b0      	cbz	r0, d00560d6 <_vfiprintf_r+0x156>
d00560a8:	9207      	str	r2, [sp, #28]
d00560aa:	e014      	b.n	d00560d6 <_vfiprintf_r+0x156>
d00560ac:	eba0 0308 	sub.w	r3, r0, r8
d00560b0:	fa09 f303 	lsl.w	r3, r9, r3
d00560b4:	4313      	orrs	r3, r2
d00560b6:	9304      	str	r3, [sp, #16]
d00560b8:	46a2      	mov	sl, r4
d00560ba:	e7d2      	b.n	d0056062 <_vfiprintf_r+0xe2>
d00560bc:	9b03      	ldr	r3, [sp, #12]
d00560be:	1d19      	adds	r1, r3, #4
d00560c0:	681b      	ldr	r3, [r3, #0]
d00560c2:	9103      	str	r1, [sp, #12]
d00560c4:	2b00      	cmp	r3, #0
d00560c6:	bfbb      	ittet	lt
d00560c8:	425b      	neglt	r3, r3
d00560ca:	f042 0202 	orrlt.w	r2, r2, #2
d00560ce:	9307      	strge	r3, [sp, #28]
d00560d0:	9307      	strlt	r3, [sp, #28]
d00560d2:	bfb8      	it	lt
d00560d4:	9204      	strlt	r2, [sp, #16]
d00560d6:	7823      	ldrb	r3, [r4, #0]
d00560d8:	2b2e      	cmp	r3, #46	; 0x2e
d00560da:	d10c      	bne.n	d00560f6 <_vfiprintf_r+0x176>
d00560dc:	7863      	ldrb	r3, [r4, #1]
d00560de:	2b2a      	cmp	r3, #42	; 0x2a
d00560e0:	d135      	bne.n	d005614e <_vfiprintf_r+0x1ce>
d00560e2:	9b03      	ldr	r3, [sp, #12]
d00560e4:	1d1a      	adds	r2, r3, #4
d00560e6:	681b      	ldr	r3, [r3, #0]
d00560e8:	9203      	str	r2, [sp, #12]
d00560ea:	2b00      	cmp	r3, #0
d00560ec:	bfb8      	it	lt
d00560ee:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d00560f2:	3402      	adds	r4, #2
d00560f4:	9305      	str	r3, [sp, #20]
d00560f6:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d00561dc <_vfiprintf_r+0x25c>
d00560fa:	7821      	ldrb	r1, [r4, #0]
d00560fc:	2203      	movs	r2, #3
d00560fe:	4650      	mov	r0, sl
d0056100:	f000 fafe 	bl	d0056700 <memchr>
d0056104:	b140      	cbz	r0, d0056118 <_vfiprintf_r+0x198>
d0056106:	2340      	movs	r3, #64	; 0x40
d0056108:	eba0 000a 	sub.w	r0, r0, sl
d005610c:	fa03 f000 	lsl.w	r0, r3, r0
d0056110:	9b04      	ldr	r3, [sp, #16]
d0056112:	4303      	orrs	r3, r0
d0056114:	3401      	adds	r4, #1
d0056116:	9304      	str	r3, [sp, #16]
d0056118:	f814 1b01 	ldrb.w	r1, [r4], #1
d005611c:	482c      	ldr	r0, [pc, #176]	; (d00561d0 <_vfiprintf_r+0x250>)
d005611e:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0056122:	2206      	movs	r2, #6
d0056124:	f000 faec 	bl	d0056700 <memchr>
d0056128:	2800      	cmp	r0, #0
d005612a:	d03f      	beq.n	d00561ac <_vfiprintf_r+0x22c>
d005612c:	4b29      	ldr	r3, [pc, #164]	; (d00561d4 <_vfiprintf_r+0x254>)
d005612e:	bb1b      	cbnz	r3, d0056178 <_vfiprintf_r+0x1f8>
d0056130:	9b03      	ldr	r3, [sp, #12]
d0056132:	3307      	adds	r3, #7
d0056134:	f023 0307 	bic.w	r3, r3, #7
d0056138:	3308      	adds	r3, #8
d005613a:	9303      	str	r3, [sp, #12]
d005613c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d005613e:	443b      	add	r3, r7
d0056140:	9309      	str	r3, [sp, #36]	; 0x24
d0056142:	e767      	b.n	d0056014 <_vfiprintf_r+0x94>
d0056144:	fb0c 3202 	mla	r2, ip, r2, r3
d0056148:	460c      	mov	r4, r1
d005614a:	2001      	movs	r0, #1
d005614c:	e7a5      	b.n	d005609a <_vfiprintf_r+0x11a>
d005614e:	2300      	movs	r3, #0
d0056150:	3401      	adds	r4, #1
d0056152:	9305      	str	r3, [sp, #20]
d0056154:	4619      	mov	r1, r3
d0056156:	f04f 0c0a 	mov.w	ip, #10
d005615a:	4620      	mov	r0, r4
d005615c:	f810 2b01 	ldrb.w	r2, [r0], #1
d0056160:	3a30      	subs	r2, #48	; 0x30
d0056162:	2a09      	cmp	r2, #9
d0056164:	d903      	bls.n	d005616e <_vfiprintf_r+0x1ee>
d0056166:	2b00      	cmp	r3, #0
d0056168:	d0c5      	beq.n	d00560f6 <_vfiprintf_r+0x176>
d005616a:	9105      	str	r1, [sp, #20]
d005616c:	e7c3      	b.n	d00560f6 <_vfiprintf_r+0x176>
d005616e:	fb0c 2101 	mla	r1, ip, r1, r2
d0056172:	4604      	mov	r4, r0
d0056174:	2301      	movs	r3, #1
d0056176:	e7f0      	b.n	d005615a <_vfiprintf_r+0x1da>
d0056178:	ab03      	add	r3, sp, #12
d005617a:	9300      	str	r3, [sp, #0]
d005617c:	462a      	mov	r2, r5
d005617e:	4b16      	ldr	r3, [pc, #88]	; (d00561d8 <_vfiprintf_r+0x258>)
d0056180:	a904      	add	r1, sp, #16
d0056182:	4630      	mov	r0, r6
d0056184:	f3af 8000 	nop.w
d0056188:	4607      	mov	r7, r0
d005618a:	1c78      	adds	r0, r7, #1
d005618c:	d1d6      	bne.n	d005613c <_vfiprintf_r+0x1bc>
d005618e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0056190:	07d9      	lsls	r1, r3, #31
d0056192:	d405      	bmi.n	d00561a0 <_vfiprintf_r+0x220>
d0056194:	89ab      	ldrh	r3, [r5, #12]
d0056196:	059a      	lsls	r2, r3, #22
d0056198:	d402      	bmi.n	d00561a0 <_vfiprintf_r+0x220>
d005619a:	6da8      	ldr	r0, [r5, #88]	; 0x58
d005619c:	f7ff fa30 	bl	d0055600 <__retarget_lock_release_recursive>
d00561a0:	89ab      	ldrh	r3, [r5, #12]
d00561a2:	065b      	lsls	r3, r3, #25
d00561a4:	f53f af12 	bmi.w	d0055fcc <_vfiprintf_r+0x4c>
d00561a8:	9809      	ldr	r0, [sp, #36]	; 0x24
d00561aa:	e711      	b.n	d0055fd0 <_vfiprintf_r+0x50>
d00561ac:	ab03      	add	r3, sp, #12
d00561ae:	9300      	str	r3, [sp, #0]
d00561b0:	462a      	mov	r2, r5
d00561b2:	4b09      	ldr	r3, [pc, #36]	; (d00561d8 <_vfiprintf_r+0x258>)
d00561b4:	a904      	add	r1, sp, #16
d00561b6:	4630      	mov	r0, r6
d00561b8:	f000 f880 	bl	d00562bc <_printf_i>
d00561bc:	e7e4      	b.n	d0056188 <_vfiprintf_r+0x208>
d00561be:	bf00      	nop
d00561c0:	d0057aa8 	.word	0xd0057aa8
d00561c4:	d0057ac8 	.word	0xd0057ac8
d00561c8:	d0057a88 	.word	0xd0057a88
d00561cc:	d0057b9e 	.word	0xd0057b9e
d00561d0:	d0057ba8 	.word	0xd0057ba8
d00561d4:	00000000 	.word	0x00000000
d00561d8:	d0055f5b 	.word	0xd0055f5b
d00561dc:	d0057ba4 	.word	0xd0057ba4

d00561e0 <_printf_common>:
d00561e0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00561e4:	4616      	mov	r6, r2
d00561e6:	4699      	mov	r9, r3
d00561e8:	688a      	ldr	r2, [r1, #8]
d00561ea:	690b      	ldr	r3, [r1, #16]
d00561ec:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00561f0:	4293      	cmp	r3, r2
d00561f2:	bfb8      	it	lt
d00561f4:	4613      	movlt	r3, r2
d00561f6:	6033      	str	r3, [r6, #0]
d00561f8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00561fc:	4607      	mov	r7, r0
d00561fe:	460c      	mov	r4, r1
d0056200:	b10a      	cbz	r2, d0056206 <_printf_common+0x26>
d0056202:	3301      	adds	r3, #1
d0056204:	6033      	str	r3, [r6, #0]
d0056206:	6823      	ldr	r3, [r4, #0]
d0056208:	0699      	lsls	r1, r3, #26
d005620a:	bf42      	ittt	mi
d005620c:	6833      	ldrmi	r3, [r6, #0]
d005620e:	3302      	addmi	r3, #2
d0056210:	6033      	strmi	r3, [r6, #0]
d0056212:	6825      	ldr	r5, [r4, #0]
d0056214:	f015 0506 	ands.w	r5, r5, #6
d0056218:	d106      	bne.n	d0056228 <_printf_common+0x48>
d005621a:	f104 0a19 	add.w	sl, r4, #25
d005621e:	68e3      	ldr	r3, [r4, #12]
d0056220:	6832      	ldr	r2, [r6, #0]
d0056222:	1a9b      	subs	r3, r3, r2
d0056224:	42ab      	cmp	r3, r5
d0056226:	dc26      	bgt.n	d0056276 <_printf_common+0x96>
d0056228:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d005622c:	1e13      	subs	r3, r2, #0
d005622e:	6822      	ldr	r2, [r4, #0]
d0056230:	bf18      	it	ne
d0056232:	2301      	movne	r3, #1
d0056234:	0692      	lsls	r2, r2, #26
d0056236:	d42b      	bmi.n	d0056290 <_printf_common+0xb0>
d0056238:	f104 0243 	add.w	r2, r4, #67	; 0x43
d005623c:	4649      	mov	r1, r9
d005623e:	4638      	mov	r0, r7
d0056240:	47c0      	blx	r8
d0056242:	3001      	adds	r0, #1
d0056244:	d01e      	beq.n	d0056284 <_printf_common+0xa4>
d0056246:	6823      	ldr	r3, [r4, #0]
d0056248:	68e5      	ldr	r5, [r4, #12]
d005624a:	6832      	ldr	r2, [r6, #0]
d005624c:	f003 0306 	and.w	r3, r3, #6
d0056250:	2b04      	cmp	r3, #4
d0056252:	bf08      	it	eq
d0056254:	1aad      	subeq	r5, r5, r2
d0056256:	68a3      	ldr	r3, [r4, #8]
d0056258:	6922      	ldr	r2, [r4, #16]
d005625a:	bf0c      	ite	eq
d005625c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0056260:	2500      	movne	r5, #0
d0056262:	4293      	cmp	r3, r2
d0056264:	bfc4      	itt	gt
d0056266:	1a9b      	subgt	r3, r3, r2
d0056268:	18ed      	addgt	r5, r5, r3
d005626a:	2600      	movs	r6, #0
d005626c:	341a      	adds	r4, #26
d005626e:	42b5      	cmp	r5, r6
d0056270:	d11a      	bne.n	d00562a8 <_printf_common+0xc8>
d0056272:	2000      	movs	r0, #0
d0056274:	e008      	b.n	d0056288 <_printf_common+0xa8>
d0056276:	2301      	movs	r3, #1
d0056278:	4652      	mov	r2, sl
d005627a:	4649      	mov	r1, r9
d005627c:	4638      	mov	r0, r7
d005627e:	47c0      	blx	r8
d0056280:	3001      	adds	r0, #1
d0056282:	d103      	bne.n	d005628c <_printf_common+0xac>
d0056284:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056288:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d005628c:	3501      	adds	r5, #1
d005628e:	e7c6      	b.n	d005621e <_printf_common+0x3e>
d0056290:	18e1      	adds	r1, r4, r3
d0056292:	1c5a      	adds	r2, r3, #1
d0056294:	2030      	movs	r0, #48	; 0x30
d0056296:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d005629a:	4422      	add	r2, r4
d005629c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00562a0:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00562a4:	3302      	adds	r3, #2
d00562a6:	e7c7      	b.n	d0056238 <_printf_common+0x58>
d00562a8:	2301      	movs	r3, #1
d00562aa:	4622      	mov	r2, r4
d00562ac:	4649      	mov	r1, r9
d00562ae:	4638      	mov	r0, r7
d00562b0:	47c0      	blx	r8
d00562b2:	3001      	adds	r0, #1
d00562b4:	d0e6      	beq.n	d0056284 <_printf_common+0xa4>
d00562b6:	3601      	adds	r6, #1
d00562b8:	e7d9      	b.n	d005626e <_printf_common+0x8e>
	...

d00562bc <_printf_i>:
d00562bc:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00562c0:	460c      	mov	r4, r1
d00562c2:	4691      	mov	r9, r2
d00562c4:	7e27      	ldrb	r7, [r4, #24]
d00562c6:	990c      	ldr	r1, [sp, #48]	; 0x30
d00562c8:	2f78      	cmp	r7, #120	; 0x78
d00562ca:	4680      	mov	r8, r0
d00562cc:	469a      	mov	sl, r3
d00562ce:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00562d2:	d807      	bhi.n	d00562e4 <_printf_i+0x28>
d00562d4:	2f62      	cmp	r7, #98	; 0x62
d00562d6:	d80a      	bhi.n	d00562ee <_printf_i+0x32>
d00562d8:	2f00      	cmp	r7, #0
d00562da:	f000 80d8 	beq.w	d005648e <_printf_i+0x1d2>
d00562de:	2f58      	cmp	r7, #88	; 0x58
d00562e0:	f000 80a3 	beq.w	d005642a <_printf_i+0x16e>
d00562e4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00562e8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00562ec:	e03a      	b.n	d0056364 <_printf_i+0xa8>
d00562ee:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00562f2:	2b15      	cmp	r3, #21
d00562f4:	d8f6      	bhi.n	d00562e4 <_printf_i+0x28>
d00562f6:	a001      	add	r0, pc, #4	; (adr r0, d00562fc <_printf_i+0x40>)
d00562f8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00562fc:	d0056355 	.word	0xd0056355
d0056300:	d0056369 	.word	0xd0056369
d0056304:	d00562e5 	.word	0xd00562e5
d0056308:	d00562e5 	.word	0xd00562e5
d005630c:	d00562e5 	.word	0xd00562e5
d0056310:	d00562e5 	.word	0xd00562e5
d0056314:	d0056369 	.word	0xd0056369
d0056318:	d00562e5 	.word	0xd00562e5
d005631c:	d00562e5 	.word	0xd00562e5
d0056320:	d00562e5 	.word	0xd00562e5
d0056324:	d00562e5 	.word	0xd00562e5
d0056328:	d0056475 	.word	0xd0056475
d005632c:	d0056399 	.word	0xd0056399
d0056330:	d0056457 	.word	0xd0056457
d0056334:	d00562e5 	.word	0xd00562e5
d0056338:	d00562e5 	.word	0xd00562e5
d005633c:	d0056497 	.word	0xd0056497
d0056340:	d00562e5 	.word	0xd00562e5
d0056344:	d0056399 	.word	0xd0056399
d0056348:	d00562e5 	.word	0xd00562e5
d005634c:	d00562e5 	.word	0xd00562e5
d0056350:	d005645f 	.word	0xd005645f
d0056354:	680b      	ldr	r3, [r1, #0]
d0056356:	1d1a      	adds	r2, r3, #4
d0056358:	681b      	ldr	r3, [r3, #0]
d005635a:	600a      	str	r2, [r1, #0]
d005635c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0056360:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0056364:	2301      	movs	r3, #1
d0056366:	e0a3      	b.n	d00564b0 <_printf_i+0x1f4>
d0056368:	6825      	ldr	r5, [r4, #0]
d005636a:	6808      	ldr	r0, [r1, #0]
d005636c:	062e      	lsls	r6, r5, #24
d005636e:	f100 0304 	add.w	r3, r0, #4
d0056372:	d50a      	bpl.n	d005638a <_printf_i+0xce>
d0056374:	6805      	ldr	r5, [r0, #0]
d0056376:	600b      	str	r3, [r1, #0]
d0056378:	2d00      	cmp	r5, #0
d005637a:	da03      	bge.n	d0056384 <_printf_i+0xc8>
d005637c:	232d      	movs	r3, #45	; 0x2d
d005637e:	426d      	negs	r5, r5
d0056380:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0056384:	485e      	ldr	r0, [pc, #376]	; (d0056500 <_printf_i+0x244>)
d0056386:	230a      	movs	r3, #10
d0056388:	e019      	b.n	d00563be <_printf_i+0x102>
d005638a:	f015 0f40 	tst.w	r5, #64	; 0x40
d005638e:	6805      	ldr	r5, [r0, #0]
d0056390:	600b      	str	r3, [r1, #0]
d0056392:	bf18      	it	ne
d0056394:	b22d      	sxthne	r5, r5
d0056396:	e7ef      	b.n	d0056378 <_printf_i+0xbc>
d0056398:	680b      	ldr	r3, [r1, #0]
d005639a:	6825      	ldr	r5, [r4, #0]
d005639c:	1d18      	adds	r0, r3, #4
d005639e:	6008      	str	r0, [r1, #0]
d00563a0:	0628      	lsls	r0, r5, #24
d00563a2:	d501      	bpl.n	d00563a8 <_printf_i+0xec>
d00563a4:	681d      	ldr	r5, [r3, #0]
d00563a6:	e002      	b.n	d00563ae <_printf_i+0xf2>
d00563a8:	0669      	lsls	r1, r5, #25
d00563aa:	d5fb      	bpl.n	d00563a4 <_printf_i+0xe8>
d00563ac:	881d      	ldrh	r5, [r3, #0]
d00563ae:	4854      	ldr	r0, [pc, #336]	; (d0056500 <_printf_i+0x244>)
d00563b0:	2f6f      	cmp	r7, #111	; 0x6f
d00563b2:	bf0c      	ite	eq
d00563b4:	2308      	moveq	r3, #8
d00563b6:	230a      	movne	r3, #10
d00563b8:	2100      	movs	r1, #0
d00563ba:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d00563be:	6866      	ldr	r6, [r4, #4]
d00563c0:	60a6      	str	r6, [r4, #8]
d00563c2:	2e00      	cmp	r6, #0
d00563c4:	bfa2      	ittt	ge
d00563c6:	6821      	ldrge	r1, [r4, #0]
d00563c8:	f021 0104 	bicge.w	r1, r1, #4
d00563cc:	6021      	strge	r1, [r4, #0]
d00563ce:	b90d      	cbnz	r5, d00563d4 <_printf_i+0x118>
d00563d0:	2e00      	cmp	r6, #0
d00563d2:	d04d      	beq.n	d0056470 <_printf_i+0x1b4>
d00563d4:	4616      	mov	r6, r2
d00563d6:	fbb5 f1f3 	udiv	r1, r5, r3
d00563da:	fb03 5711 	mls	r7, r3, r1, r5
d00563de:	5dc7      	ldrb	r7, [r0, r7]
d00563e0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00563e4:	462f      	mov	r7, r5
d00563e6:	42bb      	cmp	r3, r7
d00563e8:	460d      	mov	r5, r1
d00563ea:	d9f4      	bls.n	d00563d6 <_printf_i+0x11a>
d00563ec:	2b08      	cmp	r3, #8
d00563ee:	d10b      	bne.n	d0056408 <_printf_i+0x14c>
d00563f0:	6823      	ldr	r3, [r4, #0]
d00563f2:	07df      	lsls	r7, r3, #31
d00563f4:	d508      	bpl.n	d0056408 <_printf_i+0x14c>
d00563f6:	6923      	ldr	r3, [r4, #16]
d00563f8:	6861      	ldr	r1, [r4, #4]
d00563fa:	4299      	cmp	r1, r3
d00563fc:	bfde      	ittt	le
d00563fe:	2330      	movle	r3, #48	; 0x30
d0056400:	f806 3c01 	strble.w	r3, [r6, #-1]
d0056404:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0056408:	1b92      	subs	r2, r2, r6
d005640a:	6122      	str	r2, [r4, #16]
d005640c:	f8cd a000 	str.w	sl, [sp]
d0056410:	464b      	mov	r3, r9
d0056412:	aa03      	add	r2, sp, #12
d0056414:	4621      	mov	r1, r4
d0056416:	4640      	mov	r0, r8
d0056418:	f7ff fee2 	bl	d00561e0 <_printf_common>
d005641c:	3001      	adds	r0, #1
d005641e:	d14c      	bne.n	d00564ba <_printf_i+0x1fe>
d0056420:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056424:	b004      	add	sp, #16
d0056426:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d005642a:	4835      	ldr	r0, [pc, #212]	; (d0056500 <_printf_i+0x244>)
d005642c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0056430:	6823      	ldr	r3, [r4, #0]
d0056432:	680e      	ldr	r6, [r1, #0]
d0056434:	061f      	lsls	r7, r3, #24
d0056436:	f856 5b04 	ldr.w	r5, [r6], #4
d005643a:	600e      	str	r6, [r1, #0]
d005643c:	d514      	bpl.n	d0056468 <_printf_i+0x1ac>
d005643e:	07d9      	lsls	r1, r3, #31
d0056440:	bf44      	itt	mi
d0056442:	f043 0320 	orrmi.w	r3, r3, #32
d0056446:	6023      	strmi	r3, [r4, #0]
d0056448:	b91d      	cbnz	r5, d0056452 <_printf_i+0x196>
d005644a:	6823      	ldr	r3, [r4, #0]
d005644c:	f023 0320 	bic.w	r3, r3, #32
d0056450:	6023      	str	r3, [r4, #0]
d0056452:	2310      	movs	r3, #16
d0056454:	e7b0      	b.n	d00563b8 <_printf_i+0xfc>
d0056456:	6823      	ldr	r3, [r4, #0]
d0056458:	f043 0320 	orr.w	r3, r3, #32
d005645c:	6023      	str	r3, [r4, #0]
d005645e:	2378      	movs	r3, #120	; 0x78
d0056460:	4828      	ldr	r0, [pc, #160]	; (d0056504 <_printf_i+0x248>)
d0056462:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0056466:	e7e3      	b.n	d0056430 <_printf_i+0x174>
d0056468:	065e      	lsls	r6, r3, #25
d005646a:	bf48      	it	mi
d005646c:	b2ad      	uxthmi	r5, r5
d005646e:	e7e6      	b.n	d005643e <_printf_i+0x182>
d0056470:	4616      	mov	r6, r2
d0056472:	e7bb      	b.n	d00563ec <_printf_i+0x130>
d0056474:	680b      	ldr	r3, [r1, #0]
d0056476:	6826      	ldr	r6, [r4, #0]
d0056478:	6960      	ldr	r0, [r4, #20]
d005647a:	1d1d      	adds	r5, r3, #4
d005647c:	600d      	str	r5, [r1, #0]
d005647e:	0635      	lsls	r5, r6, #24
d0056480:	681b      	ldr	r3, [r3, #0]
d0056482:	d501      	bpl.n	d0056488 <_printf_i+0x1cc>
d0056484:	6018      	str	r0, [r3, #0]
d0056486:	e002      	b.n	d005648e <_printf_i+0x1d2>
d0056488:	0671      	lsls	r1, r6, #25
d005648a:	d5fb      	bpl.n	d0056484 <_printf_i+0x1c8>
d005648c:	8018      	strh	r0, [r3, #0]
d005648e:	2300      	movs	r3, #0
d0056490:	6123      	str	r3, [r4, #16]
d0056492:	4616      	mov	r6, r2
d0056494:	e7ba      	b.n	d005640c <_printf_i+0x150>
d0056496:	680b      	ldr	r3, [r1, #0]
d0056498:	1d1a      	adds	r2, r3, #4
d005649a:	600a      	str	r2, [r1, #0]
d005649c:	681e      	ldr	r6, [r3, #0]
d005649e:	6862      	ldr	r2, [r4, #4]
d00564a0:	2100      	movs	r1, #0
d00564a2:	4630      	mov	r0, r6
d00564a4:	f000 f92c 	bl	d0056700 <memchr>
d00564a8:	b108      	cbz	r0, d00564ae <_printf_i+0x1f2>
d00564aa:	1b80      	subs	r0, r0, r6
d00564ac:	6060      	str	r0, [r4, #4]
d00564ae:	6863      	ldr	r3, [r4, #4]
d00564b0:	6123      	str	r3, [r4, #16]
d00564b2:	2300      	movs	r3, #0
d00564b4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00564b8:	e7a8      	b.n	d005640c <_printf_i+0x150>
d00564ba:	6923      	ldr	r3, [r4, #16]
d00564bc:	4632      	mov	r2, r6
d00564be:	4649      	mov	r1, r9
d00564c0:	4640      	mov	r0, r8
d00564c2:	47d0      	blx	sl
d00564c4:	3001      	adds	r0, #1
d00564c6:	d0ab      	beq.n	d0056420 <_printf_i+0x164>
d00564c8:	6823      	ldr	r3, [r4, #0]
d00564ca:	079b      	lsls	r3, r3, #30
d00564cc:	d413      	bmi.n	d00564f6 <_printf_i+0x23a>
d00564ce:	68e0      	ldr	r0, [r4, #12]
d00564d0:	9b03      	ldr	r3, [sp, #12]
d00564d2:	4298      	cmp	r0, r3
d00564d4:	bfb8      	it	lt
d00564d6:	4618      	movlt	r0, r3
d00564d8:	e7a4      	b.n	d0056424 <_printf_i+0x168>
d00564da:	2301      	movs	r3, #1
d00564dc:	4632      	mov	r2, r6
d00564de:	4649      	mov	r1, r9
d00564e0:	4640      	mov	r0, r8
d00564e2:	47d0      	blx	sl
d00564e4:	3001      	adds	r0, #1
d00564e6:	d09b      	beq.n	d0056420 <_printf_i+0x164>
d00564e8:	3501      	adds	r5, #1
d00564ea:	68e3      	ldr	r3, [r4, #12]
d00564ec:	9903      	ldr	r1, [sp, #12]
d00564ee:	1a5b      	subs	r3, r3, r1
d00564f0:	42ab      	cmp	r3, r5
d00564f2:	dcf2      	bgt.n	d00564da <_printf_i+0x21e>
d00564f4:	e7eb      	b.n	d00564ce <_printf_i+0x212>
d00564f6:	2500      	movs	r5, #0
d00564f8:	f104 0619 	add.w	r6, r4, #25
d00564fc:	e7f5      	b.n	d00564ea <_printf_i+0x22e>
d00564fe:	bf00      	nop
d0056500:	d0057baf 	.word	0xd0057baf
d0056504:	d0057bc0 	.word	0xd0057bc0

d0056508 <_read_r>:
d0056508:	b538      	push	{r3, r4, r5, lr}
d005650a:	4d07      	ldr	r5, [pc, #28]	; (d0056528 <_read_r+0x20>)
d005650c:	4604      	mov	r4, r0
d005650e:	4608      	mov	r0, r1
d0056510:	4611      	mov	r1, r2
d0056512:	2200      	movs	r2, #0
d0056514:	602a      	str	r2, [r5, #0]
d0056516:	461a      	mov	r2, r3
d0056518:	f7f4 fdcc 	bl	d004b0b4 <_read>
d005651c:	1c43      	adds	r3, r0, #1
d005651e:	d102      	bne.n	d0056526 <_read_r+0x1e>
d0056520:	682b      	ldr	r3, [r5, #0]
d0056522:	b103      	cbz	r3, d0056526 <_read_r+0x1e>
d0056524:	6023      	str	r3, [r4, #0]
d0056526:	bd38      	pop	{r3, r4, r5, pc}
d0056528:	d00fcbc0 	.word	0xd00fcbc0

d005652c <__swbuf_r>:
d005652c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005652e:	460e      	mov	r6, r1
d0056530:	4614      	mov	r4, r2
d0056532:	4605      	mov	r5, r0
d0056534:	b118      	cbz	r0, d005653e <__swbuf_r+0x12>
d0056536:	6983      	ldr	r3, [r0, #24]
d0056538:	b90b      	cbnz	r3, d005653e <__swbuf_r+0x12>
d005653a:	f7fe ffc1 	bl	d00554c0 <__sinit>
d005653e:	4b21      	ldr	r3, [pc, #132]	; (d00565c4 <__swbuf_r+0x98>)
d0056540:	429c      	cmp	r4, r3
d0056542:	d12b      	bne.n	d005659c <__swbuf_r+0x70>
d0056544:	686c      	ldr	r4, [r5, #4]
d0056546:	69a3      	ldr	r3, [r4, #24]
d0056548:	60a3      	str	r3, [r4, #8]
d005654a:	89a3      	ldrh	r3, [r4, #12]
d005654c:	071a      	lsls	r2, r3, #28
d005654e:	d52f      	bpl.n	d00565b0 <__swbuf_r+0x84>
d0056550:	6923      	ldr	r3, [r4, #16]
d0056552:	b36b      	cbz	r3, d00565b0 <__swbuf_r+0x84>
d0056554:	6923      	ldr	r3, [r4, #16]
d0056556:	6820      	ldr	r0, [r4, #0]
d0056558:	1ac0      	subs	r0, r0, r3
d005655a:	6963      	ldr	r3, [r4, #20]
d005655c:	b2f6      	uxtb	r6, r6
d005655e:	4283      	cmp	r3, r0
d0056560:	4637      	mov	r7, r6
d0056562:	dc04      	bgt.n	d005656e <__swbuf_r+0x42>
d0056564:	4621      	mov	r1, r4
d0056566:	4628      	mov	r0, r5
d0056568:	f7fe ff16 	bl	d0055398 <_fflush_r>
d005656c:	bb30      	cbnz	r0, d00565bc <__swbuf_r+0x90>
d005656e:	68a3      	ldr	r3, [r4, #8]
d0056570:	3b01      	subs	r3, #1
d0056572:	60a3      	str	r3, [r4, #8]
d0056574:	6823      	ldr	r3, [r4, #0]
d0056576:	1c5a      	adds	r2, r3, #1
d0056578:	6022      	str	r2, [r4, #0]
d005657a:	701e      	strb	r6, [r3, #0]
d005657c:	6963      	ldr	r3, [r4, #20]
d005657e:	3001      	adds	r0, #1
d0056580:	4283      	cmp	r3, r0
d0056582:	d004      	beq.n	d005658e <__swbuf_r+0x62>
d0056584:	89a3      	ldrh	r3, [r4, #12]
d0056586:	07db      	lsls	r3, r3, #31
d0056588:	d506      	bpl.n	d0056598 <__swbuf_r+0x6c>
d005658a:	2e0a      	cmp	r6, #10
d005658c:	d104      	bne.n	d0056598 <__swbuf_r+0x6c>
d005658e:	4621      	mov	r1, r4
d0056590:	4628      	mov	r0, r5
d0056592:	f7fe ff01 	bl	d0055398 <_fflush_r>
d0056596:	b988      	cbnz	r0, d00565bc <__swbuf_r+0x90>
d0056598:	4638      	mov	r0, r7
d005659a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005659c:	4b0a      	ldr	r3, [pc, #40]	; (d00565c8 <__swbuf_r+0x9c>)
d005659e:	429c      	cmp	r4, r3
d00565a0:	d101      	bne.n	d00565a6 <__swbuf_r+0x7a>
d00565a2:	68ac      	ldr	r4, [r5, #8]
d00565a4:	e7cf      	b.n	d0056546 <__swbuf_r+0x1a>
d00565a6:	4b09      	ldr	r3, [pc, #36]	; (d00565cc <__swbuf_r+0xa0>)
d00565a8:	429c      	cmp	r4, r3
d00565aa:	bf08      	it	eq
d00565ac:	68ec      	ldreq	r4, [r5, #12]
d00565ae:	e7ca      	b.n	d0056546 <__swbuf_r+0x1a>
d00565b0:	4621      	mov	r1, r4
d00565b2:	4628      	mov	r0, r5
d00565b4:	f000 f80c 	bl	d00565d0 <__swsetup_r>
d00565b8:	2800      	cmp	r0, #0
d00565ba:	d0cb      	beq.n	d0056554 <__swbuf_r+0x28>
d00565bc:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00565c0:	e7ea      	b.n	d0056598 <__swbuf_r+0x6c>
d00565c2:	bf00      	nop
d00565c4:	d0057aa8 	.word	0xd0057aa8
d00565c8:	d0057ac8 	.word	0xd0057ac8
d00565cc:	d0057a88 	.word	0xd0057a88

d00565d0 <__swsetup_r>:
d00565d0:	4b32      	ldr	r3, [pc, #200]	; (d005669c <__swsetup_r+0xcc>)
d00565d2:	b570      	push	{r4, r5, r6, lr}
d00565d4:	681d      	ldr	r5, [r3, #0]
d00565d6:	4606      	mov	r6, r0
d00565d8:	460c      	mov	r4, r1
d00565da:	b125      	cbz	r5, d00565e6 <__swsetup_r+0x16>
d00565dc:	69ab      	ldr	r3, [r5, #24]
d00565de:	b913      	cbnz	r3, d00565e6 <__swsetup_r+0x16>
d00565e0:	4628      	mov	r0, r5
d00565e2:	f7fe ff6d 	bl	d00554c0 <__sinit>
d00565e6:	4b2e      	ldr	r3, [pc, #184]	; (d00566a0 <__swsetup_r+0xd0>)
d00565e8:	429c      	cmp	r4, r3
d00565ea:	d10f      	bne.n	d005660c <__swsetup_r+0x3c>
d00565ec:	686c      	ldr	r4, [r5, #4]
d00565ee:	89a3      	ldrh	r3, [r4, #12]
d00565f0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00565f4:	0719      	lsls	r1, r3, #28
d00565f6:	d42c      	bmi.n	d0056652 <__swsetup_r+0x82>
d00565f8:	06dd      	lsls	r5, r3, #27
d00565fa:	d411      	bmi.n	d0056620 <__swsetup_r+0x50>
d00565fc:	2309      	movs	r3, #9
d00565fe:	6033      	str	r3, [r6, #0]
d0056600:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0056604:	81a3      	strh	r3, [r4, #12]
d0056606:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005660a:	e03e      	b.n	d005668a <__swsetup_r+0xba>
d005660c:	4b25      	ldr	r3, [pc, #148]	; (d00566a4 <__swsetup_r+0xd4>)
d005660e:	429c      	cmp	r4, r3
d0056610:	d101      	bne.n	d0056616 <__swsetup_r+0x46>
d0056612:	68ac      	ldr	r4, [r5, #8]
d0056614:	e7eb      	b.n	d00565ee <__swsetup_r+0x1e>
d0056616:	4b24      	ldr	r3, [pc, #144]	; (d00566a8 <__swsetup_r+0xd8>)
d0056618:	429c      	cmp	r4, r3
d005661a:	bf08      	it	eq
d005661c:	68ec      	ldreq	r4, [r5, #12]
d005661e:	e7e6      	b.n	d00565ee <__swsetup_r+0x1e>
d0056620:	0758      	lsls	r0, r3, #29
d0056622:	d512      	bpl.n	d005664a <__swsetup_r+0x7a>
d0056624:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0056626:	b141      	cbz	r1, d005663a <__swsetup_r+0x6a>
d0056628:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005662c:	4299      	cmp	r1, r3
d005662e:	d002      	beq.n	d0056636 <__swsetup_r+0x66>
d0056630:	4630      	mov	r0, r6
d0056632:	f7ff f81b 	bl	d005566c <_free_r>
d0056636:	2300      	movs	r3, #0
d0056638:	6363      	str	r3, [r4, #52]	; 0x34
d005663a:	89a3      	ldrh	r3, [r4, #12]
d005663c:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0056640:	81a3      	strh	r3, [r4, #12]
d0056642:	2300      	movs	r3, #0
d0056644:	6063      	str	r3, [r4, #4]
d0056646:	6923      	ldr	r3, [r4, #16]
d0056648:	6023      	str	r3, [r4, #0]
d005664a:	89a3      	ldrh	r3, [r4, #12]
d005664c:	f043 0308 	orr.w	r3, r3, #8
d0056650:	81a3      	strh	r3, [r4, #12]
d0056652:	6923      	ldr	r3, [r4, #16]
d0056654:	b94b      	cbnz	r3, d005666a <__swsetup_r+0x9a>
d0056656:	89a3      	ldrh	r3, [r4, #12]
d0056658:	f403 7320 	and.w	r3, r3, #640	; 0x280
d005665c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0056660:	d003      	beq.n	d005666a <__swsetup_r+0x9a>
d0056662:	4621      	mov	r1, r4
d0056664:	4630      	mov	r0, r6
d0056666:	f7ff fa93 	bl	d0055b90 <__smakebuf_r>
d005666a:	89a0      	ldrh	r0, [r4, #12]
d005666c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0056670:	f010 0301 	ands.w	r3, r0, #1
d0056674:	d00a      	beq.n	d005668c <__swsetup_r+0xbc>
d0056676:	2300      	movs	r3, #0
d0056678:	60a3      	str	r3, [r4, #8]
d005667a:	6963      	ldr	r3, [r4, #20]
d005667c:	425b      	negs	r3, r3
d005667e:	61a3      	str	r3, [r4, #24]
d0056680:	6923      	ldr	r3, [r4, #16]
d0056682:	b943      	cbnz	r3, d0056696 <__swsetup_r+0xc6>
d0056684:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0056688:	d1ba      	bne.n	d0056600 <__swsetup_r+0x30>
d005668a:	bd70      	pop	{r4, r5, r6, pc}
d005668c:	0781      	lsls	r1, r0, #30
d005668e:	bf58      	it	pl
d0056690:	6963      	ldrpl	r3, [r4, #20]
d0056692:	60a3      	str	r3, [r4, #8]
d0056694:	e7f4      	b.n	d0056680 <__swsetup_r+0xb0>
d0056696:	2000      	movs	r0, #0
d0056698:	e7f7      	b.n	d005668a <__swsetup_r+0xba>
d005669a:	bf00      	nop
d005669c:	d005a414 	.word	0xd005a414
d00566a0:	d0057aa8 	.word	0xd0057aa8
d00566a4:	d0057ac8 	.word	0xd0057ac8
d00566a8:	d0057a88 	.word	0xd0057a88

d00566ac <abort>:
d00566ac:	b508      	push	{r3, lr}
d00566ae:	2006      	movs	r0, #6
d00566b0:	f000 f8c0 	bl	d0056834 <raise>
d00566b4:	2001      	movs	r0, #1
d00566b6:	f7f4 fd35 	bl	d004b124 <_exit>
	...

d00566bc <_fstat_r>:
d00566bc:	b538      	push	{r3, r4, r5, lr}
d00566be:	4d07      	ldr	r5, [pc, #28]	; (d00566dc <_fstat_r+0x20>)
d00566c0:	2300      	movs	r3, #0
d00566c2:	4604      	mov	r4, r0
d00566c4:	4608      	mov	r0, r1
d00566c6:	4611      	mov	r1, r2
d00566c8:	602b      	str	r3, [r5, #0]
d00566ca:	f7f4 fd01 	bl	d004b0d0 <_fstat>
d00566ce:	1c43      	adds	r3, r0, #1
d00566d0:	d102      	bne.n	d00566d8 <_fstat_r+0x1c>
d00566d2:	682b      	ldr	r3, [r5, #0]
d00566d4:	b103      	cbz	r3, d00566d8 <_fstat_r+0x1c>
d00566d6:	6023      	str	r3, [r4, #0]
d00566d8:	bd38      	pop	{r3, r4, r5, pc}
d00566da:	bf00      	nop
d00566dc:	d00fcbc0 	.word	0xd00fcbc0

d00566e0 <_isatty_r>:
d00566e0:	b538      	push	{r3, r4, r5, lr}
d00566e2:	4d06      	ldr	r5, [pc, #24]	; (d00566fc <_isatty_r+0x1c>)
d00566e4:	2300      	movs	r3, #0
d00566e6:	4604      	mov	r4, r0
d00566e8:	4608      	mov	r0, r1
d00566ea:	602b      	str	r3, [r5, #0]
d00566ec:	f7f4 fd18 	bl	d004b120 <_isatty>
d00566f0:	1c43      	adds	r3, r0, #1
d00566f2:	d102      	bne.n	d00566fa <_isatty_r+0x1a>
d00566f4:	682b      	ldr	r3, [r5, #0]
d00566f6:	b103      	cbz	r3, d00566fa <_isatty_r+0x1a>
d00566f8:	6023      	str	r3, [r4, #0]
d00566fa:	bd38      	pop	{r3, r4, r5, pc}
d00566fc:	d00fcbc0 	.word	0xd00fcbc0

d0056700 <memchr>:
d0056700:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0056704:	2a10      	cmp	r2, #16
d0056706:	db2b      	blt.n	d0056760 <memchr+0x60>
d0056708:	f010 0f07 	tst.w	r0, #7
d005670c:	d008      	beq.n	d0056720 <memchr+0x20>
d005670e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0056712:	3a01      	subs	r2, #1
d0056714:	428b      	cmp	r3, r1
d0056716:	d02d      	beq.n	d0056774 <memchr+0x74>
d0056718:	f010 0f07 	tst.w	r0, #7
d005671c:	b342      	cbz	r2, d0056770 <memchr+0x70>
d005671e:	d1f6      	bne.n	d005670e <memchr+0xe>
d0056720:	b4f0      	push	{r4, r5, r6, r7}
d0056722:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0056726:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d005672a:	f022 0407 	bic.w	r4, r2, #7
d005672e:	f07f 0700 	mvns.w	r7, #0
d0056732:	2300      	movs	r3, #0
d0056734:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0056738:	3c08      	subs	r4, #8
d005673a:	ea85 0501 	eor.w	r5, r5, r1
d005673e:	ea86 0601 	eor.w	r6, r6, r1
d0056742:	fa85 f547 	uadd8	r5, r5, r7
d0056746:	faa3 f587 	sel	r5, r3, r7
d005674a:	fa86 f647 	uadd8	r6, r6, r7
d005674e:	faa5 f687 	sel	r6, r5, r7
d0056752:	b98e      	cbnz	r6, d0056778 <memchr+0x78>
d0056754:	d1ee      	bne.n	d0056734 <memchr+0x34>
d0056756:	bcf0      	pop	{r4, r5, r6, r7}
d0056758:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005675c:	f002 0207 	and.w	r2, r2, #7
d0056760:	b132      	cbz	r2, d0056770 <memchr+0x70>
d0056762:	f810 3b01 	ldrb.w	r3, [r0], #1
d0056766:	3a01      	subs	r2, #1
d0056768:	ea83 0301 	eor.w	r3, r3, r1
d005676c:	b113      	cbz	r3, d0056774 <memchr+0x74>
d005676e:	d1f8      	bne.n	d0056762 <memchr+0x62>
d0056770:	2000      	movs	r0, #0
d0056772:	4770      	bx	lr
d0056774:	3801      	subs	r0, #1
d0056776:	4770      	bx	lr
d0056778:	2d00      	cmp	r5, #0
d005677a:	bf06      	itte	eq
d005677c:	4635      	moveq	r5, r6
d005677e:	3803      	subeq	r0, #3
d0056780:	3807      	subne	r0, #7
d0056782:	f015 0f01 	tst.w	r5, #1
d0056786:	d107      	bne.n	d0056798 <memchr+0x98>
d0056788:	3001      	adds	r0, #1
d005678a:	f415 7f80 	tst.w	r5, #256	; 0x100
d005678e:	bf02      	ittt	eq
d0056790:	3001      	addeq	r0, #1
d0056792:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0056796:	3001      	addeq	r0, #1
d0056798:	bcf0      	pop	{r4, r5, r6, r7}
d005679a:	3801      	subs	r0, #1
d005679c:	4770      	bx	lr
d005679e:	bf00      	nop

d00567a0 <memmove>:
d00567a0:	4288      	cmp	r0, r1
d00567a2:	b510      	push	{r4, lr}
d00567a4:	eb01 0402 	add.w	r4, r1, r2
d00567a8:	d902      	bls.n	d00567b0 <memmove+0x10>
d00567aa:	4284      	cmp	r4, r0
d00567ac:	4623      	mov	r3, r4
d00567ae:	d807      	bhi.n	d00567c0 <memmove+0x20>
d00567b0:	1e43      	subs	r3, r0, #1
d00567b2:	42a1      	cmp	r1, r4
d00567b4:	d008      	beq.n	d00567c8 <memmove+0x28>
d00567b6:	f811 2b01 	ldrb.w	r2, [r1], #1
d00567ba:	f803 2f01 	strb.w	r2, [r3, #1]!
d00567be:	e7f8      	b.n	d00567b2 <memmove+0x12>
d00567c0:	4402      	add	r2, r0
d00567c2:	4601      	mov	r1, r0
d00567c4:	428a      	cmp	r2, r1
d00567c6:	d100      	bne.n	d00567ca <memmove+0x2a>
d00567c8:	bd10      	pop	{r4, pc}
d00567ca:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00567ce:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00567d2:	e7f7      	b.n	d00567c4 <memmove+0x24>

d00567d4 <_malloc_usable_size_r>:
d00567d4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00567d8:	1f18      	subs	r0, r3, #4
d00567da:	2b00      	cmp	r3, #0
d00567dc:	bfbc      	itt	lt
d00567de:	580b      	ldrlt	r3, [r1, r0]
d00567e0:	18c0      	addlt	r0, r0, r3
d00567e2:	4770      	bx	lr

d00567e4 <_raise_r>:
d00567e4:	291f      	cmp	r1, #31
d00567e6:	b538      	push	{r3, r4, r5, lr}
d00567e8:	4604      	mov	r4, r0
d00567ea:	460d      	mov	r5, r1
d00567ec:	d904      	bls.n	d00567f8 <_raise_r+0x14>
d00567ee:	2316      	movs	r3, #22
d00567f0:	6003      	str	r3, [r0, #0]
d00567f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00567f6:	bd38      	pop	{r3, r4, r5, pc}
d00567f8:	6c42      	ldr	r2, [r0, #68]	; 0x44
d00567fa:	b112      	cbz	r2, d0056802 <_raise_r+0x1e>
d00567fc:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d0056800:	b94b      	cbnz	r3, d0056816 <_raise_r+0x32>
d0056802:	4620      	mov	r0, r4
d0056804:	f000 f830 	bl	d0056868 <_getpid_r>
d0056808:	462a      	mov	r2, r5
d005680a:	4601      	mov	r1, r0
d005680c:	4620      	mov	r0, r4
d005680e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0056812:	f000 b817 	b.w	d0056844 <_kill_r>
d0056816:	2b01      	cmp	r3, #1
d0056818:	d00a      	beq.n	d0056830 <_raise_r+0x4c>
d005681a:	1c59      	adds	r1, r3, #1
d005681c:	d103      	bne.n	d0056826 <_raise_r+0x42>
d005681e:	2316      	movs	r3, #22
d0056820:	6003      	str	r3, [r0, #0]
d0056822:	2001      	movs	r0, #1
d0056824:	e7e7      	b.n	d00567f6 <_raise_r+0x12>
d0056826:	2400      	movs	r4, #0
d0056828:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d005682c:	4628      	mov	r0, r5
d005682e:	4798      	blx	r3
d0056830:	2000      	movs	r0, #0
d0056832:	e7e0      	b.n	d00567f6 <_raise_r+0x12>

d0056834 <raise>:
d0056834:	4b02      	ldr	r3, [pc, #8]	; (d0056840 <raise+0xc>)
d0056836:	4601      	mov	r1, r0
d0056838:	6818      	ldr	r0, [r3, #0]
d005683a:	f7ff bfd3 	b.w	d00567e4 <_raise_r>
d005683e:	bf00      	nop
d0056840:	d005a414 	.word	0xd005a414

d0056844 <_kill_r>:
d0056844:	b538      	push	{r3, r4, r5, lr}
d0056846:	4d07      	ldr	r5, [pc, #28]	; (d0056864 <_kill_r+0x20>)
d0056848:	2300      	movs	r3, #0
d005684a:	4604      	mov	r4, r0
d005684c:	4608      	mov	r0, r1
d005684e:	4611      	mov	r1, r2
d0056850:	602b      	str	r3, [r5, #0]
d0056852:	f7f4 fc6b 	bl	d004b12c <_kill>
d0056856:	1c43      	adds	r3, r0, #1
d0056858:	d102      	bne.n	d0056860 <_kill_r+0x1c>
d005685a:	682b      	ldr	r3, [r5, #0]
d005685c:	b103      	cbz	r3, d0056860 <_kill_r+0x1c>
d005685e:	6023      	str	r3, [r4, #0]
d0056860:	bd38      	pop	{r3, r4, r5, pc}
d0056862:	bf00      	nop
d0056864:	d00fcbc0 	.word	0xd00fcbc0

d0056868 <_getpid_r>:
d0056868:	f7f4 bc5e 	b.w	d004b128 <_getpid>

d005686c <sinf_poly>:
d005686c:	07cb      	lsls	r3, r1, #31
d005686e:	d412      	bmi.n	d0056896 <sinf_poly+0x2a>
d0056870:	ee21 6b00 	vmul.f64	d6, d1, d0
d0056874:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0056878:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005687c:	eea5 7b01 	vfma.f64	d7, d5, d1
d0056880:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0056884:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056888:	eea5 0b06 	vfma.f64	d0, d5, d6
d005688c:	eea7 0b01 	vfma.f64	d0, d7, d1
d0056890:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056894:	4770      	bx	lr
d0056896:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005689a:	ee21 6b01 	vmul.f64	d6, d1, d1
d005689e:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d00568a2:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d00568a6:	eea1 7b05 	vfma.f64	d7, d1, d5
d00568aa:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d00568ae:	eea1 0b05 	vfma.f64	d0, d1, d5
d00568b2:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d00568b6:	ee21 1b06 	vmul.f64	d1, d1, d6
d00568ba:	eea6 0b05 	vfma.f64	d0, d6, d5
d00568be:	e7e5      	b.n	d005688c <sinf_poly+0x20>

d00568c0 <cosf>:
d00568c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00568c2:	ee10 4a10 	vmov	r4, s0
d00568c6:	f3c4 530a 	ubfx	r3, r4, #20, #11
d00568ca:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d00568ce:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00568d2:	d20c      	bcs.n	d00568ee <cosf+0x2e>
d00568d4:	ee26 1b06 	vmul.f64	d1, d6, d6
d00568d8:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d00568dc:	d378      	bcc.n	d00569d0 <cosf+0x110>
d00568de:	eeb0 0b46 	vmov.f64	d0, d6
d00568e2:	483f      	ldr	r0, [pc, #252]	; (d00569e0 <cosf+0x120>)
d00568e4:	2101      	movs	r1, #1
d00568e6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00568ea:	f7ff bfbf 	b.w	d005686c <sinf_poly>
d00568ee:	f240 422e 	movw	r2, #1070	; 0x42e
d00568f2:	4293      	cmp	r3, r2
d00568f4:	d826      	bhi.n	d0056944 <cosf+0x84>
d00568f6:	4b3a      	ldr	r3, [pc, #232]	; (d00569e0 <cosf+0x120>)
d00568f8:	ed93 7b08 	vldr	d7, [r3, #32]
d00568fc:	ee26 7b07 	vmul.f64	d7, d6, d7
d0056900:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0056904:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0056908:	ee17 1a90 	vmov	r1, s15
d005690c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0056910:	1609      	asrs	r1, r1, #24
d0056912:	ee07 1a90 	vmov	s15, r1
d0056916:	f001 0203 	and.w	r2, r1, #3
d005691a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005691e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0056922:	ed92 0b00 	vldr	d0, [r2]
d0056926:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d005692a:	f011 0f02 	tst.w	r1, #2
d005692e:	eea5 6b47 	vfms.f64	d6, d5, d7
d0056932:	f081 0101 	eor.w	r1, r1, #1
d0056936:	bf08      	it	eq
d0056938:	4618      	moveq	r0, r3
d005693a:	ee26 1b06 	vmul.f64	d1, d6, d6
d005693e:	ee20 0b06 	vmul.f64	d0, d0, d6
d0056942:	e7d0      	b.n	d00568e6 <cosf+0x26>
d0056944:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056948:	d23e      	bcs.n	d00569c8 <cosf+0x108>
d005694a:	4b26      	ldr	r3, [pc, #152]	; (d00569e4 <cosf+0x124>)
d005694c:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0056950:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0056954:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0056958:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005695c:	6a06      	ldr	r6, [r0, #32]
d005695e:	6900      	ldr	r0, [r0, #16]
d0056960:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0056964:	40a9      	lsls	r1, r5
d0056966:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005696a:	fba1 6706 	umull	r6, r7, r1, r6
d005696e:	fb05 f301 	mul.w	r3, r5, r1
d0056972:	463a      	mov	r2, r7
d0056974:	fbe0 2301 	umlal	r2, r3, r0, r1
d0056978:	1c11      	adds	r1, r2, #0
d005697a:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005697e:	2000      	movs	r0, #0
d0056980:	1a10      	subs	r0, r2, r0
d0056982:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0056986:	eb63 0101 	sbc.w	r1, r3, r1
d005698a:	f000 fdd5 	bl	d0057538 <__aeabi_l2d>
d005698e:	0fb5      	lsrs	r5, r6, #30
d0056990:	4b13      	ldr	r3, [pc, #76]	; (d00569e0 <cosf+0x120>)
d0056992:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0056996:	ed9f 0b10 	vldr	d0, [pc, #64]	; d00569d8 <cosf+0x118>
d005699a:	ec41 0b17 	vmov	d7, r0, r1
d005699e:	f004 0203 	and.w	r2, r4, #3
d00569a2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00569a6:	ee27 0b00 	vmul.f64	d0, d7, d0
d00569aa:	ed92 7b00 	vldr	d7, [r2]
d00569ae:	ee20 1b00 	vmul.f64	d1, d0, d0
d00569b2:	f014 0f02 	tst.w	r4, #2
d00569b6:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00569ba:	f085 0101 	eor.w	r1, r5, #1
d00569be:	bf08      	it	eq
d00569c0:	4618      	moveq	r0, r3
d00569c2:	ee27 0b00 	vmul.f64	d0, d7, d0
d00569c6:	e78e      	b.n	d00568e6 <cosf+0x26>
d00569c8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00569cc:	f000 b844 	b.w	d0056a58 <__math_invalidf>
d00569d0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00569d4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00569d6:	bf00      	nop
d00569d8:	54442d18 	.word	0x54442d18
d00569dc:	3c1921fb 	.word	0x3c1921fb
d00569e0:	d0057ea0 	.word	0xd0057ea0
d00569e4:	d0057e40 	.word	0xd0057e40

d00569e8 <with_errnof>:
d00569e8:	b513      	push	{r0, r1, r4, lr}
d00569ea:	4604      	mov	r4, r0
d00569ec:	ed8d 0a01 	vstr	s0, [sp, #4]
d00569f0:	f7fe fbd2 	bl	d0055198 <__errno>
d00569f4:	ed9d 0a01 	vldr	s0, [sp, #4]
d00569f8:	6004      	str	r4, [r0, #0]
d00569fa:	b002      	add	sp, #8
d00569fc:	bd10      	pop	{r4, pc}

d00569fe <xflowf>:
d00569fe:	b130      	cbz	r0, d0056a0e <xflowf+0x10>
d0056a00:	eef1 7a40 	vneg.f32	s15, s0
d0056a04:	ee27 0a80 	vmul.f32	s0, s15, s0
d0056a08:	2022      	movs	r0, #34	; 0x22
d0056a0a:	f7ff bfed 	b.w	d00569e8 <with_errnof>
d0056a0e:	eef0 7a40 	vmov.f32	s15, s0
d0056a12:	e7f7      	b.n	d0056a04 <xflowf+0x6>

d0056a14 <__math_uflowf>:
d0056a14:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056a1c <__math_uflowf+0x8>
d0056a18:	f7ff bff1 	b.w	d00569fe <xflowf>
d0056a1c:	10000000 	.word	0x10000000

d0056a20 <__math_may_uflowf>:
d0056a20:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056a28 <__math_may_uflowf+0x8>
d0056a24:	f7ff bfeb 	b.w	d00569fe <xflowf>
d0056a28:	1a200000 	.word	0x1a200000

d0056a2c <__math_oflowf>:
d0056a2c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056a34 <__math_oflowf+0x8>
d0056a30:	f7ff bfe5 	b.w	d00569fe <xflowf>
d0056a34:	70000000 	.word	0x70000000

d0056a38 <__math_divzerof>:
d0056a38:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0056a3c:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0056a40:	2800      	cmp	r0, #0
d0056a42:	fe40 7a27 	vseleq.f32	s15, s0, s15
d0056a46:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0056a54 <__math_divzerof+0x1c>
d0056a4a:	2022      	movs	r0, #34	; 0x22
d0056a4c:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0056a50:	f7ff bfca 	b.w	d00569e8 <with_errnof>
d0056a54:	00000000 	.word	0x00000000

d0056a58 <__math_invalidf>:
d0056a58:	eef0 7a40 	vmov.f32	s15, s0
d0056a5c:	ee30 7a40 	vsub.f32	s14, s0, s0
d0056a60:	eef4 7a67 	vcmp.f32	s15, s15
d0056a64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a68:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0056a6c:	d602      	bvs.n	d0056a74 <__math_invalidf+0x1c>
d0056a6e:	2021      	movs	r0, #33	; 0x21
d0056a70:	f7ff bfba 	b.w	d00569e8 <with_errnof>
d0056a74:	4770      	bx	lr
	...

d0056a78 <expf>:
d0056a78:	ee10 2a10 	vmov	r2, s0
d0056a7c:	b470      	push	{r4, r5, r6}
d0056a7e:	f3c2 530a 	ubfx	r3, r2, #20, #11
d0056a82:	f240 442a 	movw	r4, #1066	; 0x42a
d0056a86:	42a3      	cmp	r3, r4
d0056a88:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0056a8c:	d92a      	bls.n	d0056ae4 <expf+0x6c>
d0056a8e:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d0056a92:	d059      	beq.n	d0056b48 <expf+0xd0>
d0056a94:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056a98:	d303      	bcc.n	d0056aa2 <expf+0x2a>
d0056a9a:	ee30 0a00 	vadd.f32	s0, s0, s0
d0056a9e:	bc70      	pop	{r4, r5, r6}
d0056aa0:	4770      	bx	lr
d0056aa2:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0056b50 <expf+0xd8>
d0056aa6:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0056aaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056aae:	dd03      	ble.n	d0056ab8 <expf+0x40>
d0056ab0:	bc70      	pop	{r4, r5, r6}
d0056ab2:	2000      	movs	r0, #0
d0056ab4:	f7ff bfba 	b.w	d0056a2c <__math_oflowf>
d0056ab8:	eddf 7a26 	vldr	s15, [pc, #152]	; d0056b54 <expf+0xdc>
d0056abc:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0056ac0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056ac4:	d503      	bpl.n	d0056ace <expf+0x56>
d0056ac6:	bc70      	pop	{r4, r5, r6}
d0056ac8:	2000      	movs	r0, #0
d0056aca:	f7ff bfa3 	b.w	d0056a14 <__math_uflowf>
d0056ace:	eddf 7a22 	vldr	s15, [pc, #136]	; d0056b58 <expf+0xe0>
d0056ad2:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0056ad6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056ada:	d503      	bpl.n	d0056ae4 <expf+0x6c>
d0056adc:	bc70      	pop	{r4, r5, r6}
d0056ade:	2000      	movs	r0, #0
d0056ae0:	f7ff bf9e 	b.w	d0056a20 <__math_may_uflowf>
d0056ae4:	4b1d      	ldr	r3, [pc, #116]	; (d0056b5c <expf+0xe4>)
d0056ae6:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d0056aea:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d0056aee:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d0056af2:	eeb0 7b44 	vmov.f64	d7, d4
d0056af6:	eea5 7b06 	vfma.f64	d7, d5, d6
d0056afa:	ee17 5a10 	vmov	r5, s14
d0056afe:	ee37 7b44 	vsub.f64	d7, d7, d4
d0056b02:	f005 021f 	and.w	r2, r5, #31
d0056b06:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0056b0a:	e9d2 4600 	ldrd	r4, r6, [r2]
d0056b0e:	ee95 7b06 	vfnms.f64	d7, d5, d6
d0056b12:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d0056b16:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d0056b1a:	eea4 0b07 	vfma.f64	d0, d4, d7
d0056b1e:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d0056b22:	2300      	movs	r3, #0
d0056b24:	1918      	adds	r0, r3, r4
d0056b26:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d0056b2a:	eb42 0106 	adc.w	r1, r2, r6
d0056b2e:	eea5 6b07 	vfma.f64	d6, d5, d7
d0056b32:	ee27 5b07 	vmul.f64	d5, d7, d7
d0056b36:	ec41 0b17 	vmov	d7, r0, r1
d0056b3a:	eea6 0b05 	vfma.f64	d0, d6, d5
d0056b3e:	ee20 0b07 	vmul.f64	d0, d0, d7
d0056b42:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056b46:	e7aa      	b.n	d0056a9e <expf+0x26>
d0056b48:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0056b60 <expf+0xe8>
d0056b4c:	e7a7      	b.n	d0056a9e <expf+0x26>
d0056b4e:	bf00      	nop
d0056b50:	42b17217 	.word	0x42b17217
d0056b54:	c2cff1b4 	.word	0xc2cff1b4
d0056b58:	c2ce8ecf 	.word	0xc2ce8ecf
d0056b5c:	d0057bd8 	.word	0xd0057bd8
d0056b60:	00000000 	.word	0x00000000

d0056b64 <logf>:
d0056b64:	ee10 3a10 	vmov	r3, s0
d0056b68:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d0056b6c:	b410      	push	{r4}
d0056b6e:	d055      	beq.n	d0056c1c <logf+0xb8>
d0056b70:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0056b74:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0056b78:	d31a      	bcc.n	d0056bb0 <logf+0x4c>
d0056b7a:	005a      	lsls	r2, r3, #1
d0056b7c:	d104      	bne.n	d0056b88 <logf+0x24>
d0056b7e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056b82:	2001      	movs	r0, #1
d0056b84:	f7ff bf58 	b.w	d0056a38 <__math_divzerof>
d0056b88:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056b8c:	d043      	beq.n	d0056c16 <logf+0xb2>
d0056b8e:	2b00      	cmp	r3, #0
d0056b90:	db02      	blt.n	d0056b98 <logf+0x34>
d0056b92:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0056b96:	d303      	bcc.n	d0056ba0 <logf+0x3c>
d0056b98:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056b9c:	f7ff bf5c 	b.w	d0056a58 <__math_invalidf>
d0056ba0:	eddf 7a20 	vldr	s15, [pc, #128]	; d0056c24 <logf+0xc0>
d0056ba4:	ee20 0a27 	vmul.f32	s0, s0, s15
d0056ba8:	ee10 3a10 	vmov	r3, s0
d0056bac:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0056bb0:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0056bb4:	491c      	ldr	r1, [pc, #112]	; (d0056c28 <logf+0xc4>)
d0056bb6:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d0056bba:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d0056bbe:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0056bc2:	0dd4      	lsrs	r4, r2, #23
d0056bc4:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0056bc8:	05e4      	lsls	r4, r4, #23
d0056bca:	ed90 6b00 	vldr	d6, [r0]
d0056bce:	1b1b      	subs	r3, r3, r4
d0056bd0:	ee07 3a90 	vmov	s15, r3
d0056bd4:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0056bd8:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0056bdc:	15d2      	asrs	r2, r2, #23
d0056bde:	eea6 0b07 	vfma.f64	d0, d6, d7
d0056be2:	ed90 6b02 	vldr	d6, [r0, #8]
d0056be6:	ee07 2a90 	vmov	s15, r2
d0056bea:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0056bee:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d0056bf2:	eea7 6b05 	vfma.f64	d6, d7, d5
d0056bf6:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d0056bfa:	ee20 5b00 	vmul.f64	d5, d0, d0
d0056bfe:	eea4 7b00 	vfma.f64	d7, d4, d0
d0056c02:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d0056c06:	ee30 0b06 	vadd.f64	d0, d0, d6
d0056c0a:	eea4 7b05 	vfma.f64	d7, d4, d5
d0056c0e:	eea5 0b07 	vfma.f64	d0, d5, d7
d0056c12:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056c16:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056c1a:	4770      	bx	lr
d0056c1c:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0056c2c <logf+0xc8>
d0056c20:	e7f9      	b.n	d0056c16 <logf+0xb2>
d0056c22:	bf00      	nop
d0056c24:	4b000000 	.word	0x4b000000
d0056c28:	d0057d20 	.word	0xd0057d20
d0056c2c:	00000000 	.word	0x00000000

d0056c30 <sinf_poly>:
d0056c30:	07cb      	lsls	r3, r1, #31
d0056c32:	d412      	bmi.n	d0056c5a <sinf_poly+0x2a>
d0056c34:	ee21 6b00 	vmul.f64	d6, d1, d0
d0056c38:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0056c3c:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0056c40:	eea5 7b01 	vfma.f64	d7, d5, d1
d0056c44:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0056c48:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056c4c:	eea5 0b06 	vfma.f64	d0, d5, d6
d0056c50:	eea7 0b01 	vfma.f64	d0, d7, d1
d0056c54:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056c58:	4770      	bx	lr
d0056c5a:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0056c5e:	ee21 6b01 	vmul.f64	d6, d1, d1
d0056c62:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0056c66:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0056c6a:	eea1 7b05 	vfma.f64	d7, d1, d5
d0056c6e:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0056c72:	eea1 0b05 	vfma.f64	d0, d1, d5
d0056c76:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0056c7a:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056c7e:	eea6 0b05 	vfma.f64	d0, d6, d5
d0056c82:	e7e5      	b.n	d0056c50 <sinf_poly+0x20>
d0056c84:	0000      	movs	r0, r0
	...

d0056c88 <sinf>:
d0056c88:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d0056c8a:	ee10 4a10 	vmov	r4, s0
d0056c8e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0056c92:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0056c96:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0056c9a:	eef0 7a40 	vmov.f32	s15, s0
d0056c9e:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0056ca2:	d218      	bcs.n	d0056cd6 <sinf+0x4e>
d0056ca4:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056ca8:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0056cac:	d20a      	bcs.n	d0056cc4 <sinf+0x3c>
d0056cae:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0056cb2:	d103      	bne.n	d0056cbc <sinf+0x34>
d0056cb4:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0056cb8:	ed8d 1a01 	vstr	s2, [sp, #4]
d0056cbc:	eeb0 0a67 	vmov.f32	s0, s15
d0056cc0:	b003      	add	sp, #12
d0056cc2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056cc4:	483e      	ldr	r0, [pc, #248]	; (d0056dc0 <sinf+0x138>)
d0056cc6:	eeb0 0b46 	vmov.f64	d0, d6
d0056cca:	2100      	movs	r1, #0
d0056ccc:	b003      	add	sp, #12
d0056cce:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056cd2:	f7ff bfad 	b.w	d0056c30 <sinf_poly>
d0056cd6:	f240 422e 	movw	r2, #1070	; 0x42e
d0056cda:	4293      	cmp	r3, r2
d0056cdc:	d824      	bhi.n	d0056d28 <sinf+0xa0>
d0056cde:	4b38      	ldr	r3, [pc, #224]	; (d0056dc0 <sinf+0x138>)
d0056ce0:	ed93 7b08 	vldr	d7, [r3, #32]
d0056ce4:	ee26 7b07 	vmul.f64	d7, d6, d7
d0056ce8:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0056cec:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0056cf0:	ee17 1a90 	vmov	r1, s15
d0056cf4:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0056cf8:	1609      	asrs	r1, r1, #24
d0056cfa:	ee07 1a90 	vmov	s15, r1
d0056cfe:	f001 0203 	and.w	r2, r1, #3
d0056d02:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0056d06:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0056d0a:	ed92 0b00 	vldr	d0, [r2]
d0056d0e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0056d12:	f011 0f02 	tst.w	r1, #2
d0056d16:	eea5 6b47 	vfms.f64	d6, d5, d7
d0056d1a:	bf08      	it	eq
d0056d1c:	4618      	moveq	r0, r3
d0056d1e:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056d22:	ee20 0b06 	vmul.f64	d0, d0, d6
d0056d26:	e7d1      	b.n	d0056ccc <sinf+0x44>
d0056d28:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056d2c:	d23d      	bcs.n	d0056daa <sinf+0x122>
d0056d2e:	4b25      	ldr	r3, [pc, #148]	; (d0056dc4 <sinf+0x13c>)
d0056d30:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0056d34:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0056d38:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0056d3c:	6a06      	ldr	r6, [r0, #32]
d0056d3e:	6900      	ldr	r0, [r0, #16]
d0056d40:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0056d44:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0056d48:	40a9      	lsls	r1, r5
d0056d4a:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0056d4e:	fba1 6706 	umull	r6, r7, r1, r6
d0056d52:	fb05 f301 	mul.w	r3, r5, r1
d0056d56:	463a      	mov	r2, r7
d0056d58:	fbe0 2301 	umlal	r2, r3, r0, r1
d0056d5c:	1c11      	adds	r1, r2, #0
d0056d5e:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0056d62:	2000      	movs	r0, #0
d0056d64:	1a10      	subs	r0, r2, r0
d0056d66:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0056d6a:	eb63 0101 	sbc.w	r1, r3, r1
d0056d6e:	f000 fbe3 	bl	d0057538 <__aeabi_l2d>
d0056d72:	0fb5      	lsrs	r5, r6, #30
d0056d74:	4a12      	ldr	r2, [pc, #72]	; (d0056dc0 <sinf+0x138>)
d0056d76:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d0056d7a:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0056db8 <sinf+0x130>
d0056d7e:	ec41 0b17 	vmov	d7, r0, r1
d0056d82:	f003 0103 	and.w	r1, r3, #3
d0056d86:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d0056d8a:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056d8e:	ed91 7b00 	vldr	d7, [r1]
d0056d92:	ee20 1b00 	vmul.f64	d1, d0, d0
d0056d96:	f013 0f02 	tst.w	r3, #2
d0056d9a:	f102 0070 	add.w	r0, r2, #112	; 0x70
d0056d9e:	4629      	mov	r1, r5
d0056da0:	bf08      	it	eq
d0056da2:	4610      	moveq	r0, r2
d0056da4:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056da8:	e790      	b.n	d0056ccc <sinf+0x44>
d0056daa:	b003      	add	sp, #12
d0056dac:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056db0:	f7ff be52 	b.w	d0056a58 <__math_invalidf>
d0056db4:	f3af 8000 	nop.w
d0056db8:	54442d18 	.word	0x54442d18
d0056dbc:	3c1921fb 	.word	0x3c1921fb
d0056dc0:	d0057ea0 	.word	0xd0057ea0
d0056dc4:	d0057e40 	.word	0xd0057e40

d0056dc8 <atan2f>:
d0056dc8:	f000 b82c 	b.w	d0056e24 <__ieee754_atan2f>

d0056dcc <fmodf>:
d0056dcc:	b508      	push	{r3, lr}
d0056dce:	ed2d 8b02 	vpush	{d8}
d0056dd2:	eef0 8a40 	vmov.f32	s17, s0
d0056dd6:	eeb0 8a60 	vmov.f32	s16, s1
d0056dda:	f000 f8c1 	bl	d0056f60 <__ieee754_fmodf>
d0056dde:	4b0f      	ldr	r3, [pc, #60]	; (d0056e1c <fmodf+0x50>)
d0056de0:	f993 3000 	ldrsb.w	r3, [r3]
d0056de4:	3301      	adds	r3, #1
d0056de6:	d016      	beq.n	d0056e16 <fmodf+0x4a>
d0056de8:	eeb4 8a48 	vcmp.f32	s16, s16
d0056dec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056df0:	d611      	bvs.n	d0056e16 <fmodf+0x4a>
d0056df2:	eef4 8a68 	vcmp.f32	s17, s17
d0056df6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056dfa:	d60c      	bvs.n	d0056e16 <fmodf+0x4a>
d0056dfc:	eddf 8a08 	vldr	s17, [pc, #32]	; d0056e20 <fmodf+0x54>
d0056e00:	eeb4 8a68 	vcmp.f32	s16, s17
d0056e04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056e08:	d105      	bne.n	d0056e16 <fmodf+0x4a>
d0056e0a:	f7fe f9c5 	bl	d0055198 <__errno>
d0056e0e:	ee88 0aa8 	vdiv.f32	s0, s17, s17
d0056e12:	2321      	movs	r3, #33	; 0x21
d0056e14:	6003      	str	r3, [r0, #0]
d0056e16:	ecbd 8b02 	vpop	{d8}
d0056e1a:	bd08      	pop	{r3, pc}
d0056e1c:	d005a478 	.word	0xd005a478
d0056e20:	00000000 	.word	0x00000000

d0056e24 <__ieee754_atan2f>:
d0056e24:	ee10 2a90 	vmov	r2, s1
d0056e28:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d0056e2c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0056e30:	b510      	push	{r4, lr}
d0056e32:	eef0 7a40 	vmov.f32	s15, s0
d0056e36:	dc06      	bgt.n	d0056e46 <__ieee754_atan2f+0x22>
d0056e38:	ee10 0a10 	vmov	r0, s0
d0056e3c:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d0056e40:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056e44:	dd04      	ble.n	d0056e50 <__ieee754_atan2f+0x2c>
d0056e46:	ee77 7aa0 	vadd.f32	s15, s15, s1
d0056e4a:	eeb0 0a67 	vmov.f32	s0, s15
d0056e4e:	bd10      	pop	{r4, pc}
d0056e50:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d0056e54:	d103      	bne.n	d0056e5e <__ieee754_atan2f+0x3a>
d0056e56:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0056e5a:	f000 b903 	b.w	d0057064 <atanf>
d0056e5e:	1794      	asrs	r4, r2, #30
d0056e60:	f004 0402 	and.w	r4, r4, #2
d0056e64:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d0056e68:	b93b      	cbnz	r3, d0056e7a <__ieee754_atan2f+0x56>
d0056e6a:	2c02      	cmp	r4, #2
d0056e6c:	d05c      	beq.n	d0056f28 <__ieee754_atan2f+0x104>
d0056e6e:	ed9f 7a33 	vldr	s14, [pc, #204]	; d0056f3c <__ieee754_atan2f+0x118>
d0056e72:	2c03      	cmp	r4, #3
d0056e74:	fe47 7a00 	vseleq.f32	s15, s14, s0
d0056e78:	e7e7      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056e7a:	b939      	cbnz	r1, d0056e8c <__ieee754_atan2f+0x68>
d0056e7c:	eddf 7a30 	vldr	s15, [pc, #192]	; d0056f40 <__ieee754_atan2f+0x11c>
d0056e80:	ed9f 0a30 	vldr	s0, [pc, #192]	; d0056f44 <__ieee754_atan2f+0x120>
d0056e84:	2800      	cmp	r0, #0
d0056e86:	fe67 7a80 	vselge.f32	s15, s15, s0
d0056e8a:	e7de      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056e8c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0056e90:	d110      	bne.n	d0056eb4 <__ieee754_atan2f+0x90>
d0056e92:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056e96:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d0056e9a:	d107      	bne.n	d0056eac <__ieee754_atan2f+0x88>
d0056e9c:	2c02      	cmp	r4, #2
d0056e9e:	d846      	bhi.n	d0056f2e <__ieee754_atan2f+0x10a>
d0056ea0:	4b29      	ldr	r3, [pc, #164]	; (d0056f48 <__ieee754_atan2f+0x124>)
d0056ea2:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d0056ea6:	edd4 7a00 	vldr	s15, [r4]
d0056eaa:	e7ce      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056eac:	2c02      	cmp	r4, #2
d0056eae:	d841      	bhi.n	d0056f34 <__ieee754_atan2f+0x110>
d0056eb0:	4b26      	ldr	r3, [pc, #152]	; (d0056f4c <__ieee754_atan2f+0x128>)
d0056eb2:	e7f6      	b.n	d0056ea2 <__ieee754_atan2f+0x7e>
d0056eb4:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056eb8:	d0e0      	beq.n	d0056e7c <__ieee754_atan2f+0x58>
d0056eba:	1a5b      	subs	r3, r3, r1
d0056ebc:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d0056ec0:	ea4f 51e3 	mov.w	r1, r3, asr #23
d0056ec4:	da1a      	bge.n	d0056efc <__ieee754_atan2f+0xd8>
d0056ec6:	2a00      	cmp	r2, #0
d0056ec8:	da01      	bge.n	d0056ece <__ieee754_atan2f+0xaa>
d0056eca:	313c      	adds	r1, #60	; 0x3c
d0056ecc:	db19      	blt.n	d0056f02 <__ieee754_atan2f+0xde>
d0056ece:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0056ed2:	f000 f99b 	bl	d005720c <fabsf>
d0056ed6:	f000 f8c5 	bl	d0057064 <atanf>
d0056eda:	eef0 7a40 	vmov.f32	s15, s0
d0056ede:	2c01      	cmp	r4, #1
d0056ee0:	d012      	beq.n	d0056f08 <__ieee754_atan2f+0xe4>
d0056ee2:	2c02      	cmp	r4, #2
d0056ee4:	d017      	beq.n	d0056f16 <__ieee754_atan2f+0xf2>
d0056ee6:	2c00      	cmp	r4, #0
d0056ee8:	d0af      	beq.n	d0056e4a <__ieee754_atan2f+0x26>
d0056eea:	ed9f 0a19 	vldr	s0, [pc, #100]	; d0056f50 <__ieee754_atan2f+0x12c>
d0056eee:	ee77 7a80 	vadd.f32	s15, s15, s0
d0056ef2:	ed9f 0a18 	vldr	s0, [pc, #96]	; d0056f54 <__ieee754_atan2f+0x130>
d0056ef6:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0056efa:	e7a6      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056efc:	eddf 7a10 	vldr	s15, [pc, #64]	; d0056f40 <__ieee754_atan2f+0x11c>
d0056f00:	e7ed      	b.n	d0056ede <__ieee754_atan2f+0xba>
d0056f02:	eddf 7a15 	vldr	s15, [pc, #84]	; d0056f58 <__ieee754_atan2f+0x134>
d0056f06:	e7ea      	b.n	d0056ede <__ieee754_atan2f+0xba>
d0056f08:	ee17 3a90 	vmov	r3, s15
d0056f0c:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d0056f10:	ee07 3a90 	vmov	s15, r3
d0056f14:	e799      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056f16:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d0056f50 <__ieee754_atan2f+0x12c>
d0056f1a:	ee77 7a80 	vadd.f32	s15, s15, s0
d0056f1e:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0056f54 <__ieee754_atan2f+0x130>
d0056f22:	ee70 7a67 	vsub.f32	s15, s0, s15
d0056f26:	e790      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056f28:	eddf 7a0a 	vldr	s15, [pc, #40]	; d0056f54 <__ieee754_atan2f+0x130>
d0056f2c:	e78d      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056f2e:	eddf 7a0b 	vldr	s15, [pc, #44]	; d0056f5c <__ieee754_atan2f+0x138>
d0056f32:	e78a      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056f34:	eddf 7a08 	vldr	s15, [pc, #32]	; d0056f58 <__ieee754_atan2f+0x134>
d0056f38:	e787      	b.n	d0056e4a <__ieee754_atan2f+0x26>
d0056f3a:	bf00      	nop
d0056f3c:	c0490fdb 	.word	0xc0490fdb
d0056f40:	3fc90fdb 	.word	0x3fc90fdb
d0056f44:	bfc90fdb 	.word	0xbfc90fdb
d0056f48:	d0057f80 	.word	0xd0057f80
d0056f4c:	d0057f8c 	.word	0xd0057f8c
d0056f50:	33bbbd2e 	.word	0x33bbbd2e
d0056f54:	40490fdb 	.word	0x40490fdb
d0056f58:	00000000 	.word	0x00000000
d0056f5c:	3f490fdb 	.word	0x3f490fdb

d0056f60 <__ieee754_fmodf>:
d0056f60:	b5f0      	push	{r4, r5, r6, r7, lr}
d0056f62:	ee10 6a90 	vmov	r6, s1
d0056f66:	f036 4500 	bics.w	r5, r6, #2147483648	; 0x80000000
d0056f6a:	d009      	beq.n	d0056f80 <__ieee754_fmodf+0x20>
d0056f6c:	ee10 2a10 	vmov	r2, s0
d0056f70:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
d0056f74:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056f78:	da02      	bge.n	d0056f80 <__ieee754_fmodf+0x20>
d0056f7a:	f1b5 4fff 	cmp.w	r5, #2139095040	; 0x7f800000
d0056f7e:	dd04      	ble.n	d0056f8a <__ieee754_fmodf+0x2a>
d0056f80:	ee60 0a20 	vmul.f32	s1, s0, s1
d0056f84:	ee80 0aa0 	vdiv.f32	s0, s1, s1
d0056f88:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056f8a:	42ab      	cmp	r3, r5
d0056f8c:	dbfc      	blt.n	d0056f88 <__ieee754_fmodf+0x28>
d0056f8e:	f002 4400 	and.w	r4, r2, #2147483648	; 0x80000000
d0056f92:	d106      	bne.n	d0056fa2 <__ieee754_fmodf+0x42>
d0056f94:	4a32      	ldr	r2, [pc, #200]	; (d0057060 <__ieee754_fmodf+0x100>)
d0056f96:	0fe3      	lsrs	r3, r4, #31
d0056f98:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0056f9c:	ed93 0a00 	vldr	s0, [r3]
d0056fa0:	e7f2      	b.n	d0056f88 <__ieee754_fmodf+0x28>
d0056fa2:	f012 4fff 	tst.w	r2, #2139095040	; 0x7f800000
d0056fa6:	d13f      	bne.n	d0057028 <__ieee754_fmodf+0xc8>
d0056fa8:	0219      	lsls	r1, r3, #8
d0056faa:	f06f 007d 	mvn.w	r0, #125	; 0x7d
d0056fae:	2900      	cmp	r1, #0
d0056fb0:	dc37      	bgt.n	d0057022 <__ieee754_fmodf+0xc2>
d0056fb2:	f016 4fff 	tst.w	r6, #2139095040	; 0x7f800000
d0056fb6:	d13d      	bne.n	d0057034 <__ieee754_fmodf+0xd4>
d0056fb8:	022f      	lsls	r7, r5, #8
d0056fba:	f06f 017d 	mvn.w	r1, #125	; 0x7d
d0056fbe:	2f00      	cmp	r7, #0
d0056fc0:	da35      	bge.n	d005702e <__ieee754_fmodf+0xce>
d0056fc2:	f110 0f7e 	cmn.w	r0, #126	; 0x7e
d0056fc6:	bfbb      	ittet	lt
d0056fc8:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0056fcc:	1a12      	sublt	r2, r2, r0
d0056fce:	f3c2 0316 	ubfxge	r3, r2, #0, #23
d0056fd2:	4093      	lsllt	r3, r2
d0056fd4:	bfa8      	it	ge
d0056fd6:	f443 0300 	orrge.w	r3, r3, #8388608	; 0x800000
d0056fda:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d0056fde:	bfb5      	itete	lt
d0056fe0:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0056fe4:	f3c6 0516 	ubfxge	r5, r6, #0, #23
d0056fe8:	1a52      	sublt	r2, r2, r1
d0056fea:	f445 0500 	orrge.w	r5, r5, #8388608	; 0x800000
d0056fee:	bfb8      	it	lt
d0056ff0:	4095      	lsllt	r5, r2
d0056ff2:	1a40      	subs	r0, r0, r1
d0056ff4:	1b5a      	subs	r2, r3, r5
d0056ff6:	bb00      	cbnz	r0, d005703a <__ieee754_fmodf+0xda>
d0056ff8:	ea13 0322 	ands.w	r3, r3, r2, asr #32
d0056ffc:	bf38      	it	cc
d0056ffe:	4613      	movcc	r3, r2
d0057000:	2b00      	cmp	r3, #0
d0057002:	d0c7      	beq.n	d0056f94 <__ieee754_fmodf+0x34>
d0057004:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
d0057008:	db1f      	blt.n	d005704a <__ieee754_fmodf+0xea>
d005700a:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d005700e:	db1f      	blt.n	d0057050 <__ieee754_fmodf+0xf0>
d0057010:	f5a3 0300 	sub.w	r3, r3, #8388608	; 0x800000
d0057014:	317f      	adds	r1, #127	; 0x7f
d0057016:	4323      	orrs	r3, r4
d0057018:	ea43 53c1 	orr.w	r3, r3, r1, lsl #23
d005701c:	ee00 3a10 	vmov	s0, r3
d0057020:	e7b2      	b.n	d0056f88 <__ieee754_fmodf+0x28>
d0057022:	3801      	subs	r0, #1
d0057024:	0049      	lsls	r1, r1, #1
d0057026:	e7c2      	b.n	d0056fae <__ieee754_fmodf+0x4e>
d0057028:	15d8      	asrs	r0, r3, #23
d005702a:	387f      	subs	r0, #127	; 0x7f
d005702c:	e7c1      	b.n	d0056fb2 <__ieee754_fmodf+0x52>
d005702e:	3901      	subs	r1, #1
d0057030:	007f      	lsls	r7, r7, #1
d0057032:	e7c4      	b.n	d0056fbe <__ieee754_fmodf+0x5e>
d0057034:	15e9      	asrs	r1, r5, #23
d0057036:	397f      	subs	r1, #127	; 0x7f
d0057038:	e7c3      	b.n	d0056fc2 <__ieee754_fmodf+0x62>
d005703a:	2a00      	cmp	r2, #0
d005703c:	da02      	bge.n	d0057044 <__ieee754_fmodf+0xe4>
d005703e:	005b      	lsls	r3, r3, #1
d0057040:	3801      	subs	r0, #1
d0057042:	e7d7      	b.n	d0056ff4 <__ieee754_fmodf+0x94>
d0057044:	d0a6      	beq.n	d0056f94 <__ieee754_fmodf+0x34>
d0057046:	0053      	lsls	r3, r2, #1
d0057048:	e7fa      	b.n	d0057040 <__ieee754_fmodf+0xe0>
d005704a:	005b      	lsls	r3, r3, #1
d005704c:	3901      	subs	r1, #1
d005704e:	e7d9      	b.n	d0057004 <__ieee754_fmodf+0xa4>
d0057050:	f1c1 21ff 	rsb	r1, r1, #4278255360	; 0xff00ff00
d0057054:	f501 017f 	add.w	r1, r1, #16711680	; 0xff0000
d0057058:	3182      	adds	r1, #130	; 0x82
d005705a:	410b      	asrs	r3, r1
d005705c:	4323      	orrs	r3, r4
d005705e:	e7dd      	b.n	d005701c <__ieee754_fmodf+0xbc>
d0057060:	d0057f98 	.word	0xd0057f98

d0057064 <atanf>:
d0057064:	b538      	push	{r3, r4, r5, lr}
d0057066:	ee10 5a10 	vmov	r5, s0
d005706a:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d005706e:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d0057072:	eef0 7a40 	vmov.f32	s15, s0
d0057076:	db0f      	blt.n	d0057098 <atanf+0x34>
d0057078:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d005707c:	dd04      	ble.n	d0057088 <atanf+0x24>
d005707e:	ee70 7a00 	vadd.f32	s15, s0, s0
d0057082:	eeb0 0a67 	vmov.f32	s0, s15
d0057086:	bd38      	pop	{r3, r4, r5, pc}
d0057088:	eddf 7a4d 	vldr	s15, [pc, #308]	; d00571c0 <atanf+0x15c>
d005708c:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d00571c4 <atanf+0x160>
d0057090:	2d00      	cmp	r5, #0
d0057092:	fe77 7a80 	vselgt.f32	s15, s15, s0
d0057096:	e7f4      	b.n	d0057082 <atanf+0x1e>
d0057098:	4b4b      	ldr	r3, [pc, #300]	; (d00571c8 <atanf+0x164>)
d005709a:	429c      	cmp	r4, r3
d005709c:	dc10      	bgt.n	d00570c0 <atanf+0x5c>
d005709e:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d00570a2:	da0a      	bge.n	d00570ba <atanf+0x56>
d00570a4:	ed9f 7a49 	vldr	s14, [pc, #292]	; d00571cc <atanf+0x168>
d00570a8:	ee30 7a07 	vadd.f32	s14, s0, s14
d00570ac:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00570b0:	eeb4 7ae6 	vcmpe.f32	s14, s13
d00570b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00570b8:	dce3      	bgt.n	d0057082 <atanf+0x1e>
d00570ba:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00570be:	e013      	b.n	d00570e8 <atanf+0x84>
d00570c0:	f000 f8a4 	bl	d005720c <fabsf>
d00570c4:	4b42      	ldr	r3, [pc, #264]	; (d00571d0 <atanf+0x16c>)
d00570c6:	429c      	cmp	r4, r3
d00570c8:	dc4f      	bgt.n	d005716a <atanf+0x106>
d00570ca:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d00570ce:	429c      	cmp	r4, r3
d00570d0:	dc41      	bgt.n	d0057156 <atanf+0xf2>
d00570d2:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d00570d6:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d00570da:	eea0 7a27 	vfma.f32	s14, s0, s15
d00570de:	2300      	movs	r3, #0
d00570e0:	ee30 0a27 	vadd.f32	s0, s0, s15
d00570e4:	eec7 7a00 	vdiv.f32	s15, s14, s0
d00570e8:	1c5a      	adds	r2, r3, #1
d00570ea:	ee67 6aa7 	vmul.f32	s13, s15, s15
d00570ee:	eddf 5a39 	vldr	s11, [pc, #228]	; d00571d4 <atanf+0x170>
d00570f2:	ed9f 6a39 	vldr	s12, [pc, #228]	; d00571d8 <atanf+0x174>
d00570f6:	ed9f 5a39 	vldr	s10, [pc, #228]	; d00571dc <atanf+0x178>
d00570fa:	ed9f 0a39 	vldr	s0, [pc, #228]	; d00571e0 <atanf+0x17c>
d00570fe:	ee26 7aa6 	vmul.f32	s14, s13, s13
d0057102:	eea7 6a25 	vfma.f32	s12, s14, s11
d0057106:	eddf 5a37 	vldr	s11, [pc, #220]	; d00571e4 <atanf+0x180>
d005710a:	eee6 5a07 	vfma.f32	s11, s12, s14
d005710e:	ed9f 6a36 	vldr	s12, [pc, #216]	; d00571e8 <atanf+0x184>
d0057112:	eea5 6a87 	vfma.f32	s12, s11, s14
d0057116:	eddf 5a35 	vldr	s11, [pc, #212]	; d00571ec <atanf+0x188>
d005711a:	eee6 5a07 	vfma.f32	s11, s12, s14
d005711e:	ed9f 6a34 	vldr	s12, [pc, #208]	; d00571f0 <atanf+0x18c>
d0057122:	eea5 6a87 	vfma.f32	s12, s11, s14
d0057126:	eddf 5a33 	vldr	s11, [pc, #204]	; d00571f4 <atanf+0x190>
d005712a:	eee7 5a05 	vfma.f32	s11, s14, s10
d005712e:	ed9f 5a32 	vldr	s10, [pc, #200]	; d00571f8 <atanf+0x194>
d0057132:	eea5 5a87 	vfma.f32	s10, s11, s14
d0057136:	eddf 5a31 	vldr	s11, [pc, #196]	; d00571fc <atanf+0x198>
d005713a:	eee5 5a07 	vfma.f32	s11, s10, s14
d005713e:	eea5 0a87 	vfma.f32	s0, s11, s14
d0057142:	ee20 0a07 	vmul.f32	s0, s0, s14
d0057146:	eea6 0a26 	vfma.f32	s0, s12, s13
d005714a:	ee27 0a80 	vmul.f32	s0, s15, s0
d005714e:	d121      	bne.n	d0057194 <atanf+0x130>
d0057150:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0057154:	e795      	b.n	d0057082 <atanf+0x1e>
d0057156:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005715a:	ee30 7a67 	vsub.f32	s14, s0, s15
d005715e:	ee30 0a27 	vadd.f32	s0, s0, s15
d0057162:	2301      	movs	r3, #1
d0057164:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057168:	e7be      	b.n	d00570e8 <atanf+0x84>
d005716a:	4b25      	ldr	r3, [pc, #148]	; (d0057200 <atanf+0x19c>)
d005716c:	429c      	cmp	r4, r3
d005716e:	dc0b      	bgt.n	d0057188 <atanf+0x124>
d0057170:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d0057174:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0057178:	eea0 7a27 	vfma.f32	s14, s0, s15
d005717c:	2302      	movs	r3, #2
d005717e:	ee70 6a67 	vsub.f32	s13, s0, s15
d0057182:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0057186:	e7af      	b.n	d00570e8 <atanf+0x84>
d0057188:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005718c:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057190:	2303      	movs	r3, #3
d0057192:	e7a9      	b.n	d00570e8 <atanf+0x84>
d0057194:	4a1b      	ldr	r2, [pc, #108]	; (d0057204 <atanf+0x1a0>)
d0057196:	491c      	ldr	r1, [pc, #112]	; (d0057208 <atanf+0x1a4>)
d0057198:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d005719c:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d00571a0:	ed93 7a00 	vldr	s14, [r3]
d00571a4:	ee30 0a47 	vsub.f32	s0, s0, s14
d00571a8:	2d00      	cmp	r5, #0
d00571aa:	ee70 7a67 	vsub.f32	s15, s0, s15
d00571ae:	ed92 0a00 	vldr	s0, [r2]
d00571b2:	ee70 7a67 	vsub.f32	s15, s0, s15
d00571b6:	bfb8      	it	lt
d00571b8:	eef1 7a67 	vneglt.f32	s15, s15
d00571bc:	e761      	b.n	d0057082 <atanf+0x1e>
d00571be:	bf00      	nop
d00571c0:	3fc90fdb 	.word	0x3fc90fdb
d00571c4:	bfc90fdb 	.word	0xbfc90fdb
d00571c8:	3edfffff 	.word	0x3edfffff
d00571cc:	7149f2ca 	.word	0x7149f2ca
d00571d0:	3f97ffff 	.word	0x3f97ffff
d00571d4:	3c8569d7 	.word	0x3c8569d7
d00571d8:	3d4bda59 	.word	0x3d4bda59
d00571dc:	bd15a221 	.word	0xbd15a221
d00571e0:	be4ccccd 	.word	0xbe4ccccd
d00571e4:	3d886b35 	.word	0x3d886b35
d00571e8:	3dba2e6e 	.word	0x3dba2e6e
d00571ec:	3e124925 	.word	0x3e124925
d00571f0:	3eaaaaab 	.word	0x3eaaaaab
d00571f4:	bd6ef16b 	.word	0xbd6ef16b
d00571f8:	bd9d8795 	.word	0xbd9d8795
d00571fc:	bde38e38 	.word	0xbde38e38
d0057200:	401bffff 	.word	0x401bffff
d0057204:	d0057fa0 	.word	0xd0057fa0
d0057208:	d0057fb0 	.word	0xd0057fb0

d005720c <fabsf>:
d005720c:	ee10 3a10 	vmov	r3, s0
d0057210:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d0057214:	ee00 3a10 	vmov	s0, r3
d0057218:	4770      	bx	lr
	...

d005721c <__aeabi_drsub>:
d005721c:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0057220:	e002      	b.n	d0057228 <__adddf3>
d0057222:	bf00      	nop

d0057224 <__aeabi_dsub>:
d0057224:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d0057228 <__adddf3>:
d0057228:	b530      	push	{r4, r5, lr}
d005722a:	ea4f 0441 	mov.w	r4, r1, lsl #1
d005722e:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0057232:	ea94 0f05 	teq	r4, r5
d0057236:	bf08      	it	eq
d0057238:	ea90 0f02 	teqeq	r0, r2
d005723c:	bf1f      	itttt	ne
d005723e:	ea54 0c00 	orrsne.w	ip, r4, r0
d0057242:	ea55 0c02 	orrsne.w	ip, r5, r2
d0057246:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d005724a:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005724e:	f000 80e2 	beq.w	d0057416 <__adddf3+0x1ee>
d0057252:	ea4f 5454 	mov.w	r4, r4, lsr #21
d0057256:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d005725a:	bfb8      	it	lt
d005725c:	426d      	neglt	r5, r5
d005725e:	dd0c      	ble.n	d005727a <__adddf3+0x52>
d0057260:	442c      	add	r4, r5
d0057262:	ea80 0202 	eor.w	r2, r0, r2
d0057266:	ea81 0303 	eor.w	r3, r1, r3
d005726a:	ea82 0000 	eor.w	r0, r2, r0
d005726e:	ea83 0101 	eor.w	r1, r3, r1
d0057272:	ea80 0202 	eor.w	r2, r0, r2
d0057276:	ea81 0303 	eor.w	r3, r1, r3
d005727a:	2d36      	cmp	r5, #54	; 0x36
d005727c:	bf88      	it	hi
d005727e:	bd30      	pophi	{r4, r5, pc}
d0057280:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0057284:	ea4f 3101 	mov.w	r1, r1, lsl #12
d0057288:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d005728c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0057290:	d002      	beq.n	d0057298 <__adddf3+0x70>
d0057292:	4240      	negs	r0, r0
d0057294:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0057298:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d005729c:	ea4f 3303 	mov.w	r3, r3, lsl #12
d00572a0:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d00572a4:	d002      	beq.n	d00572ac <__adddf3+0x84>
d00572a6:	4252      	negs	r2, r2
d00572a8:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d00572ac:	ea94 0f05 	teq	r4, r5
d00572b0:	f000 80a7 	beq.w	d0057402 <__adddf3+0x1da>
d00572b4:	f1a4 0401 	sub.w	r4, r4, #1
d00572b8:	f1d5 0e20 	rsbs	lr, r5, #32
d00572bc:	db0d      	blt.n	d00572da <__adddf3+0xb2>
d00572be:	fa02 fc0e 	lsl.w	ip, r2, lr
d00572c2:	fa22 f205 	lsr.w	r2, r2, r5
d00572c6:	1880      	adds	r0, r0, r2
d00572c8:	f141 0100 	adc.w	r1, r1, #0
d00572cc:	fa03 f20e 	lsl.w	r2, r3, lr
d00572d0:	1880      	adds	r0, r0, r2
d00572d2:	fa43 f305 	asr.w	r3, r3, r5
d00572d6:	4159      	adcs	r1, r3
d00572d8:	e00e      	b.n	d00572f8 <__adddf3+0xd0>
d00572da:	f1a5 0520 	sub.w	r5, r5, #32
d00572de:	f10e 0e20 	add.w	lr, lr, #32
d00572e2:	2a01      	cmp	r2, #1
d00572e4:	fa03 fc0e 	lsl.w	ip, r3, lr
d00572e8:	bf28      	it	cs
d00572ea:	f04c 0c02 	orrcs.w	ip, ip, #2
d00572ee:	fa43 f305 	asr.w	r3, r3, r5
d00572f2:	18c0      	adds	r0, r0, r3
d00572f4:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d00572f8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d00572fc:	d507      	bpl.n	d005730e <__adddf3+0xe6>
d00572fe:	f04f 0e00 	mov.w	lr, #0
d0057302:	f1dc 0c00 	rsbs	ip, ip, #0
d0057306:	eb7e 0000 	sbcs.w	r0, lr, r0
d005730a:	eb6e 0101 	sbc.w	r1, lr, r1
d005730e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d0057312:	d31b      	bcc.n	d005734c <__adddf3+0x124>
d0057314:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d0057318:	d30c      	bcc.n	d0057334 <__adddf3+0x10c>
d005731a:	0849      	lsrs	r1, r1, #1
d005731c:	ea5f 0030 	movs.w	r0, r0, rrx
d0057320:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0057324:	f104 0401 	add.w	r4, r4, #1
d0057328:	ea4f 5244 	mov.w	r2, r4, lsl #21
d005732c:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0057330:	f080 809a 	bcs.w	d0057468 <__adddf3+0x240>
d0057334:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d0057338:	bf08      	it	eq
d005733a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d005733e:	f150 0000 	adcs.w	r0, r0, #0
d0057342:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d0057346:	ea41 0105 	orr.w	r1, r1, r5
d005734a:	bd30      	pop	{r4, r5, pc}
d005734c:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0057350:	4140      	adcs	r0, r0
d0057352:	eb41 0101 	adc.w	r1, r1, r1
d0057356:	3c01      	subs	r4, #1
d0057358:	bf28      	it	cs
d005735a:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d005735e:	d2e9      	bcs.n	d0057334 <__adddf3+0x10c>
d0057360:	f091 0f00 	teq	r1, #0
d0057364:	bf04      	itt	eq
d0057366:	4601      	moveq	r1, r0
d0057368:	2000      	moveq	r0, #0
d005736a:	fab1 f381 	clz	r3, r1
d005736e:	bf08      	it	eq
d0057370:	3320      	addeq	r3, #32
d0057372:	f1a3 030b 	sub.w	r3, r3, #11
d0057376:	f1b3 0220 	subs.w	r2, r3, #32
d005737a:	da0c      	bge.n	d0057396 <__adddf3+0x16e>
d005737c:	320c      	adds	r2, #12
d005737e:	dd08      	ble.n	d0057392 <__adddf3+0x16a>
d0057380:	f102 0c14 	add.w	ip, r2, #20
d0057384:	f1c2 020c 	rsb	r2, r2, #12
d0057388:	fa01 f00c 	lsl.w	r0, r1, ip
d005738c:	fa21 f102 	lsr.w	r1, r1, r2
d0057390:	e00c      	b.n	d00573ac <__adddf3+0x184>
d0057392:	f102 0214 	add.w	r2, r2, #20
d0057396:	bfd8      	it	le
d0057398:	f1c2 0c20 	rsble	ip, r2, #32
d005739c:	fa01 f102 	lsl.w	r1, r1, r2
d00573a0:	fa20 fc0c 	lsr.w	ip, r0, ip
d00573a4:	bfdc      	itt	le
d00573a6:	ea41 010c 	orrle.w	r1, r1, ip
d00573aa:	4090      	lslle	r0, r2
d00573ac:	1ae4      	subs	r4, r4, r3
d00573ae:	bfa2      	ittt	ge
d00573b0:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d00573b4:	4329      	orrge	r1, r5
d00573b6:	bd30      	popge	{r4, r5, pc}
d00573b8:	ea6f 0404 	mvn.w	r4, r4
d00573bc:	3c1f      	subs	r4, #31
d00573be:	da1c      	bge.n	d00573fa <__adddf3+0x1d2>
d00573c0:	340c      	adds	r4, #12
d00573c2:	dc0e      	bgt.n	d00573e2 <__adddf3+0x1ba>
d00573c4:	f104 0414 	add.w	r4, r4, #20
d00573c8:	f1c4 0220 	rsb	r2, r4, #32
d00573cc:	fa20 f004 	lsr.w	r0, r0, r4
d00573d0:	fa01 f302 	lsl.w	r3, r1, r2
d00573d4:	ea40 0003 	orr.w	r0, r0, r3
d00573d8:	fa21 f304 	lsr.w	r3, r1, r4
d00573dc:	ea45 0103 	orr.w	r1, r5, r3
d00573e0:	bd30      	pop	{r4, r5, pc}
d00573e2:	f1c4 040c 	rsb	r4, r4, #12
d00573e6:	f1c4 0220 	rsb	r2, r4, #32
d00573ea:	fa20 f002 	lsr.w	r0, r0, r2
d00573ee:	fa01 f304 	lsl.w	r3, r1, r4
d00573f2:	ea40 0003 	orr.w	r0, r0, r3
d00573f6:	4629      	mov	r1, r5
d00573f8:	bd30      	pop	{r4, r5, pc}
d00573fa:	fa21 f004 	lsr.w	r0, r1, r4
d00573fe:	4629      	mov	r1, r5
d0057400:	bd30      	pop	{r4, r5, pc}
d0057402:	f094 0f00 	teq	r4, #0
d0057406:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d005740a:	bf06      	itte	eq
d005740c:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0057410:	3401      	addeq	r4, #1
d0057412:	3d01      	subne	r5, #1
d0057414:	e74e      	b.n	d00572b4 <__adddf3+0x8c>
d0057416:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005741a:	bf18      	it	ne
d005741c:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0057420:	d029      	beq.n	d0057476 <__adddf3+0x24e>
d0057422:	ea94 0f05 	teq	r4, r5
d0057426:	bf08      	it	eq
d0057428:	ea90 0f02 	teqeq	r0, r2
d005742c:	d005      	beq.n	d005743a <__adddf3+0x212>
d005742e:	ea54 0c00 	orrs.w	ip, r4, r0
d0057432:	bf04      	itt	eq
d0057434:	4619      	moveq	r1, r3
d0057436:	4610      	moveq	r0, r2
d0057438:	bd30      	pop	{r4, r5, pc}
d005743a:	ea91 0f03 	teq	r1, r3
d005743e:	bf1e      	ittt	ne
d0057440:	2100      	movne	r1, #0
d0057442:	2000      	movne	r0, #0
d0057444:	bd30      	popne	{r4, r5, pc}
d0057446:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d005744a:	d105      	bne.n	d0057458 <__adddf3+0x230>
d005744c:	0040      	lsls	r0, r0, #1
d005744e:	4149      	adcs	r1, r1
d0057450:	bf28      	it	cs
d0057452:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0057456:	bd30      	pop	{r4, r5, pc}
d0057458:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d005745c:	bf3c      	itt	cc
d005745e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0057462:	bd30      	popcc	{r4, r5, pc}
d0057464:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0057468:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d005746c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0057470:	f04f 0000 	mov.w	r0, #0
d0057474:	bd30      	pop	{r4, r5, pc}
d0057476:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005747a:	bf1a      	itte	ne
d005747c:	4619      	movne	r1, r3
d005747e:	4610      	movne	r0, r2
d0057480:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0057484:	bf1c      	itt	ne
d0057486:	460b      	movne	r3, r1
d0057488:	4602      	movne	r2, r0
d005748a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005748e:	bf06      	itte	eq
d0057490:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0057494:	ea91 0f03 	teqeq	r1, r3
d0057498:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005749c:	bd30      	pop	{r4, r5, pc}
d005749e:	bf00      	nop

d00574a0 <__aeabi_ui2d>:
d00574a0:	f090 0f00 	teq	r0, #0
d00574a4:	bf04      	itt	eq
d00574a6:	2100      	moveq	r1, #0
d00574a8:	4770      	bxeq	lr
d00574aa:	b530      	push	{r4, r5, lr}
d00574ac:	f44f 6480 	mov.w	r4, #1024	; 0x400
d00574b0:	f104 0432 	add.w	r4, r4, #50	; 0x32
d00574b4:	f04f 0500 	mov.w	r5, #0
d00574b8:	f04f 0100 	mov.w	r1, #0
d00574bc:	e750      	b.n	d0057360 <__adddf3+0x138>
d00574be:	bf00      	nop

d00574c0 <__aeabi_i2d>:
d00574c0:	f090 0f00 	teq	r0, #0
d00574c4:	bf04      	itt	eq
d00574c6:	2100      	moveq	r1, #0
d00574c8:	4770      	bxeq	lr
d00574ca:	b530      	push	{r4, r5, lr}
d00574cc:	f44f 6480 	mov.w	r4, #1024	; 0x400
d00574d0:	f104 0432 	add.w	r4, r4, #50	; 0x32
d00574d4:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d00574d8:	bf48      	it	mi
d00574da:	4240      	negmi	r0, r0
d00574dc:	f04f 0100 	mov.w	r1, #0
d00574e0:	e73e      	b.n	d0057360 <__adddf3+0x138>
d00574e2:	bf00      	nop

d00574e4 <__aeabi_f2d>:
d00574e4:	0042      	lsls	r2, r0, #1
d00574e6:	ea4f 01e2 	mov.w	r1, r2, asr #3
d00574ea:	ea4f 0131 	mov.w	r1, r1, rrx
d00574ee:	ea4f 7002 	mov.w	r0, r2, lsl #28
d00574f2:	bf1f      	itttt	ne
d00574f4:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d00574f8:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d00574fc:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0057500:	4770      	bxne	lr
d0057502:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0057506:	bf08      	it	eq
d0057508:	4770      	bxeq	lr
d005750a:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d005750e:	bf04      	itt	eq
d0057510:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d0057514:	4770      	bxeq	lr
d0057516:	b530      	push	{r4, r5, lr}
d0057518:	f44f 7460 	mov.w	r4, #896	; 0x380
d005751c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0057520:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0057524:	e71c      	b.n	d0057360 <__adddf3+0x138>
d0057526:	bf00      	nop

d0057528 <__aeabi_ul2d>:
d0057528:	ea50 0201 	orrs.w	r2, r0, r1
d005752c:	bf08      	it	eq
d005752e:	4770      	bxeq	lr
d0057530:	b530      	push	{r4, r5, lr}
d0057532:	f04f 0500 	mov.w	r5, #0
d0057536:	e00a      	b.n	d005754e <__aeabi_l2d+0x16>

d0057538 <__aeabi_l2d>:
d0057538:	ea50 0201 	orrs.w	r2, r0, r1
d005753c:	bf08      	it	eq
d005753e:	4770      	bxeq	lr
d0057540:	b530      	push	{r4, r5, lr}
d0057542:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d0057546:	d502      	bpl.n	d005754e <__aeabi_l2d+0x16>
d0057548:	4240      	negs	r0, r0
d005754a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005754e:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057552:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057556:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005755a:	f43f aed8 	beq.w	d005730e <__adddf3+0xe6>
d005755e:	f04f 0203 	mov.w	r2, #3
d0057562:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0057566:	bf18      	it	ne
d0057568:	3203      	addne	r2, #3
d005756a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005756e:	bf18      	it	ne
d0057570:	3203      	addne	r2, #3
d0057572:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0057576:	f1c2 0320 	rsb	r3, r2, #32
d005757a:	fa00 fc03 	lsl.w	ip, r0, r3
d005757e:	fa20 f002 	lsr.w	r0, r0, r2
d0057582:	fa01 fe03 	lsl.w	lr, r1, r3
d0057586:	ea40 000e 	orr.w	r0, r0, lr
d005758a:	fa21 f102 	lsr.w	r1, r1, r2
d005758e:	4414      	add	r4, r2
d0057590:	e6bd      	b.n	d005730e <__adddf3+0xe6>
d0057592:	bf00      	nop
d0057594:	46464952 	.word	0x46464952
d0057598:	00000000 	.word	0x00000000
d005759c:	45564157 	.word	0x45564157
d00575a0:	00000000 	.word	0x00000000
d00575a4:	63616c62 	.word	0x63616c62
d00575a8:	62615f6b 	.word	0x62615f6b
d00575ac:	62726f73 	.word	0x62726f73
d00575b0:	6d2e7265 	.word	0x6d2e7265
d00575b4:	0000646f 	.word	0x0000646f
d00575b8:	6e756874 	.word	0x6e756874
d00575bc:	31726564 	.word	0x31726564
d00575c0:	7661772e 	.word	0x7661772e
d00575c4:	00000000 	.word	0x00000000
d00575c8:	6e756874 	.word	0x6e756874
d00575cc:	32726564 	.word	0x32726564
d00575d0:	7661772e 	.word	0x7661772e
d00575d4:	00000000 	.word	0x00000000
d00575d8:	746e616d 	.word	0x746e616d
d00575dc:	6e655f61 	.word	0x6e655f61
d00575e0:	772e3167 	.word	0x772e3167
d00575e4:	00007661 	.word	0x00007661
d00575e8:	70776570 	.word	0x70776570
d00575ec:	772e7765 	.word	0x772e7765
d00575f0:	00007661 	.word	0x00007661
d00575f4:	72727574 	.word	0x72727574
d00575f8:	2e317465 	.word	0x2e317465
d00575fc:	64336273 	.word	0x64336273
d0057600:	00000000 	.word	0x00000000
d0057604:	616c7369 	.word	0x616c7369
d0057608:	2e78646e 	.word	0x2e78646e
d005760c:	64336273 	.word	0x64336273
d0057610:	00000000 	.word	0x00000000
d0057614:	72726163 	.word	0x72726163
d0057618:	2e726569 	.word	0x2e726569
d005761c:	64336273 	.word	0x64336273
d0057620:	00000000 	.word	0x00000000
d0057624:	70696873 	.word	0x70696873
d0057628:	732e3176 	.word	0x732e3176
d005762c:	00643362 	.word	0x00643362
d0057630:	74786574 	.word	0x74786574
d0057634:	3362732e 	.word	0x3362732e
d0057638:	00000064 	.word	0x00000064
d005763c:	3a535046 	.word	0x3a535046
d0057640:	2e756c25 	.word	0x2e756c25
d0057644:	6c323025 	.word	0x6c323025
d0057648:	4d202075 	.word	0x4d202075
d005764c:	33253a53 	.word	0x33253a53
d0057650:	252e756c 	.word	0x252e756c
d0057654:	756c3330 	.word	0x756c3330
d0057658:	50572020 	.word	0x50572020
d005765c:	7532253a 	.word	0x7532253a
d0057660:	52542020 	.word	0x52542020
d0057664:	253a5349 	.word	0x253a5349
d0057668:	0000756c 	.word	0x0000756c
d005766c:	497423f0 	.word	0x497423f0
d0057670:	497423f0 	.word	0x497423f0
d0057674:	497423f0 	.word	0x497423f0
d0057678:	ff5516e3 	.word	0xff5516e3
d005767c:	ffffffff 	.word	0xffffffff
d0057680:	ffff0000 	.word	0xffff0000
d0057684:	ff00ff00 	.word	0xff00ff00
d0057688:	ff0000ff 	.word	0xff0000ff
d005768c:	ffffff00 	.word	0xffffff00
d0057690:	ffff00ff 	.word	0xffff00ff
d0057694:	ff00ffff 	.word	0xff00ffff
d0057698:	ff808080 	.word	0xff808080
d005769c:	ffff8000 	.word	0xffff8000
d00576a0:	ff8000ff 	.word	0xff8000ff
d00576a4:	ff0080ff 	.word	0xff0080ff
d00576a8:	ff80ff00 	.word	0xff80ff00
d00576ac:	ffff0080 	.word	0xffff0080
d00576b0:	ff00ff80 	.word	0xff00ff80
d00576b4:	ffc0c0c0 	.word	0xffc0c0c0
d00576b8:	3f800000 	.word	0x3f800000
d00576bc:	3f400000 	.word	0x3f400000
d00576c0:	3f0ccccd 	.word	0x3f0ccccd
d00576c4:	3eb33333 	.word	0x3eb33333
d00576c8:	3e4ccccd 	.word	0x3e4ccccd
d00576cc:	bf800000 	.word	0xbf800000
d00576d0:	bf000000 	.word	0xbf000000
d00576d4:	3e99999a 	.word	0x3e99999a

d00576d8 <museumRail>:
d00576d8:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d00576e8:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d0057700:	c1f00000 43340000 44870000 00000000     ......4C...D....
d0057710:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d0057720:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d0057730:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d0057740:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d0057750:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d0057760:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d0057770:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d0057780:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d0057790:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d00577a0:	c487c000 43300000 43320000 00000000     ......0C..2C....
d00577b0:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d00577c0:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d00577d0:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d00577e0:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d00577f0:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d0057800:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d0057810:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d0057820:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d0057830:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d0057840:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d0057850:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d0057860:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d0057870:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d0057880:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>
	...

d00578a0 <bayer4x4>:
d00578a0:	0a020800 060e040c 09010b03 050d070f     ................
	...

d00578c0 <g_invBlockMinus1>:
	...
d00578c8:	3f800000 3f000000 3eaaaaab 3e800000     ...?...?...>...>
d00578d8:	3e4ccccd 3e2aaaab 3e124925 3e000000     ..L>..*>%I.>...>
d00578e8:	3de38e39 3dcccccd 3dba2e8c 3daaaaab     9..=...=...=...=
d00578f8:	3d9d89d9 3d924925 3d888889 3d800000     ...=%I.=...=...=
d0057908:	3d70f0f1 3d638e39 3d579436 3d4ccccd     ..p=9.c=6.W=..L=
d0057918:	3d430c31 3d3a2e8c 3d321643 3d2aaaab     1.C=..:=C.2=..*=
d0057928:	3d23d70a 3d1d89d9 3d17b426 3d124925     ..#=...=&..=%I.=
d0057938:	3d0d3dcb 3d088889 3d042108 3d000000     .=.=...=.!.=...=
d0057948:	3cf83e10 3cf0f0f1 3cea0ea1 3ce38e39     .>.<...<...<9..<
d0057958:	3cdd67c9 3cd79436 3cd20d21 3ccccccd     .g.<6..<!..<...<
d0057968:	3cc7ce0c 3cc30c31 3cbe82fa 3cba2e8c     ...<1..<...<...<
d0057978:	3cb60b61 3cb21643 3cae4c41 00000000     a..<C..<AL.<....
	...
d00579b8:	3f800000 00000000 00000000 00000000     ...?............
d00579c8:	3f800000 00000000 00000000 00000000     ...?............
d00579d8:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d00579e8:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d0057a04:	00000001 00000001 00000002 00000002     ................
d0057a14:	00000003 00000003 00000000 00000004     ................
d0057a24:	00000005 00000005 00000006 00000006     ................
d0057a34:	00000007 00000007 00000004 00000000     ................
d0057a44:	00000004 00000001 00000005 00000002     ................
d0057a54:	00000006 00000003 00000007 00000001     ................
d0057a64:	00000002 00000002 00000003 00000001     ................
d0057a74:	00000004 00000002 00000004 00000003     ................
d0057a84:	00000004                                ....

d0057a88 <__sf_fake_stderr>:
	...

d0057aa8 <__sf_fake_stdin>:
	...

d0057ac8 <__sf_fake_stdout>:
	...

d0057ae8 <_global_impure_ptr>:
d0057ae8:	d005a418 4e454552 616d2054 636f6c6c     ....REENT malloc
d0057af8:	63757320 64656563 2f006465 6c697562      succeeded./buil
d0057b08:	6e672f64 6f742d75 2d736c6f 2d726f66     d/gnu-tools-for-
d0057b18:	336d7473 2d395f32 30323032 2d32712d     stm32_9-2020-q2-
d0057b28:	61647075 322e6574 31303230 2d313030     update.20201001-
d0057b38:	31323631 6372732f 77656e2f 2f62696c     1621/src/newlib/
d0057b48:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
d0057b58:	722f6269 2e646e61 202c0063 636e7566     ib/rand.c., func
d0057b68:	6e6f6974 6100203a 72657373 6e6f6974     tion: .assertion
d0057b78:	73252220 61662022 64656c69 6966203a      "%s" failed: fi
d0057b88:	2220656c 2c227325 6e696c20 64252065     le "%s", line %d
d0057b98:	73257325 2d23000a 00202b30 004c6c68     %s%s..#-0+ .hlL.
d0057ba8:	45676665 30004746 34333231 38373635     efgEFG.012345678
d0057bb8:	43424139 00464544 33323130 37363534     9ABCDEF.01234567
d0057bc8:	62613938 66656463 00000000 00000000     89abcdef........

d0057bd8 <__exp2f_data>:
d0057bd8:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0057be8:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0057bf8:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0057c08:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0057c18:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0057c28:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0057c38:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0057c48:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0057c58:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0057c68:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0057c78:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0057c88:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0057c98:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0057ca8:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0057cb8:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0057cc8:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0057cd8:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0057ce8:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0057cf8:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0057d08:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0057d18:	ff0c52d6 3f962e42                       .R..B..?

d0057d20 <__logf_data>:
d0057d20:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0057d30:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0057d40:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0057d50:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0057d60:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0057d70:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0057d80:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0057d90:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0057da0:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0057db0:	00000000 3ff00000 00000000 00000000     .......?........
d0057dc0:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0057dd0:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0057de0:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0057df0:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0057e00:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0057e10:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0057e20:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d0057e30:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0057e40 <__inv_pio4>:
d0057e40:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d0057e50:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0057e60:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0057e70:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0057e80:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0057e90:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0057ea0 <__sincosf_table>:
d0057ea0:	00000000 3ff00000 00000000 bff00000     .......?........
d0057eb0:	00000000 bff00000 00000000 3ff00000     ...............?
d0057ec0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0057ed0:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0057ee0:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0057ef0:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0057f00:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0057f10:	00000000 3ff00000 00000000 bff00000     .......?........
d0057f20:	00000000 bff00000 00000000 3ff00000     ...............?
d0057f30:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0057f40:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d0057f50:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d0057f60:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d0057f70:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d0057f80 <CSWTCH.8>:
d0057f80:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d0057f8c <CSWTCH.9>:
d0057f8c:	80000000 40490fdb c0490fdb              ......I@..I.

d0057f98 <Zero>:
d0057f98:	00000000 80000000                       ........

d0057fa0 <atanhi>:
d0057fa0:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d0057fb0 <atanlo>:
d0057fb0:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d0057fc0 <_init>:
d0057fc0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0057fc2:	bf00      	nop

Disassembly of section .fini:

d0057fc4 <_fini>:
d0057fc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0057fc6:	bf00      	nop
