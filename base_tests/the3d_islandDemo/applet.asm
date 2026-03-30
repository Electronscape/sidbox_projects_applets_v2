
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
d004b01e:	f00a f9e1 	bl	d00553e4 <setbuf>
d004b022:	6833      	ldr	r3, [r6, #0]
d004b024:	2100      	movs	r1, #0
d004b026:	68d8      	ldr	r0, [r3, #12]
d004b028:	f00a f9dc 	bl	d00553e4 <setbuf>
d004b02c:	4629      	mov	r1, r5
d004b02e:	4620      	mov	r0, r4
d004b030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004b034:	f002 b844 	b.w	d004d0c0 <main>
d004b038:	d0059fb4 	.word	0xd0059fb4

d004b03c <initMalloc>:
d004b03c:	4902      	ldr	r1, [pc, #8]	; (d004b048 <initMalloc+0xc>)
d004b03e:	4b03      	ldr	r3, [pc, #12]	; (d004b04c <initMalloc+0x10>)
d004b040:	4a03      	ldr	r2, [pc, #12]	; (d004b050 <initMalloc+0x14>)
d004b042:	1a5b      	subs	r3, r3, r1
d004b044:	6013      	str	r3, [r2, #0]
d004b046:	4770      	bx	lr
d004b048:	d00fe768 	.word	0xd00fe768
d004b04c:	d0600000 	.word	0xd0600000
d004b050:	d00f44c8 	.word	0xd00f44c8

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
d004b09c:	f009 fe4e 	bl	d0054d3c <__errno>
d004b0a0:	2209      	movs	r2, #9
d004b0a2:	4603      	mov	r3, r0
d004b0a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0a8:	601a      	str	r2, [r3, #0]
d004b0aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0ac:	d005a024 	.word	0xd005a024
d004b0b0:	2001f000 	.word	0x2001f000

d004b0b4 <_read>:
d004b0b4:	b508      	push	{r3, lr}
d004b0b6:	f009 fe41 	bl	d0054d3c <__errno>
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
d004b102:	f009 fe1b 	bl	d0054d3c <__errno>
d004b106:	220c      	movs	r2, #12
d004b108:	4603      	mov	r3, r0
d004b10a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b10e:	601a      	str	r2, [r3, #0]
d004b110:	bd10      	pop	{r4, pc}
d004b112:	bf00      	nop
d004b114:	d005a020 	.word	0xd005a020
d004b118:	d00fe768 	.word	0xd00fe768
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
d004b184:	f00a f820 	bl	d00551c8 <memcmp>
d004b188:	b950      	cbnz	r0, d004b1a0 <LoadSFX+0x6c>
d004b18a:	2204      	movs	r2, #4
d004b18c:	492c      	ldr	r1, [pc, #176]	; (d004b240 <LoadSFX+0x10c>)
d004b18e:	a805      	add	r0, sp, #20
d004b190:	f00a f81a 	bl	d00551c8 <memcmp>
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
d004b1c8:	f009 ffee 	bl	d00551a8 <malloc>
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
d004b23c:	d0057144 	.word	0xd0057144
d004b240:	d005714c 	.word	0xd005714c

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
d004b2b2:	f00b fb61 	bl	d0056978 <atan2f>
d004b2b6:	eef1 0ac9 	vsqrt.f32	s1, s18
d004b2ba:	eddf 7a36 	vldr	s15, [pc, #216]	; d004b394 <sr_steer_camera_to_tangent+0x150>
d004b2be:	eef0 9a40 	vmov.f32	s19, s0
d004b2c2:	eeb1 0a4a 	vneg.f32	s0, s20
d004b2c6:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d004b2ca:	f00b fb55 	bl	d0056978 <atan2f>
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
d004b358:	f005 b9a8 	b.w	d00506ac <cameraRotate>
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
d004bde6:	4c41      	ldr	r4, [pc, #260]	; (d004beec <initSystem+0x108>)
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
d004be8a:	7d23      	ldrb	r3, [r4, #20]
d004be8c:	7d61      	ldrb	r1, [r4, #21]
d004be8e:	2201      	movs	r2, #1
d004be90:	7da0      	ldrb	r0, [r4, #22]
d004be92:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d004be96:	7de1      	ldrb	r1, [r4, #23]
d004be98:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004be9c:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d004bea0:	681b      	ldr	r3, [r3, #0]
d004bea2:	685b      	ldr	r3, [r3, #4]
d004bea4:	701a      	strb	r2, [r3, #0]
d004bea6:	f002 fd03 	bl	d004e8b0 <initDepthBandMem>
d004beaa:	7b23      	ldrb	r3, [r4, #12]
d004beac:	7b62      	ldrb	r2, [r4, #13]
d004beae:	7ba1      	ldrb	r1, [r4, #14]
d004beb0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004beb4:	7be2      	ldrb	r2, [r4, #15]
d004beb6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004beba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004bebe:	681b      	ldr	r3, [r3, #0]
d004bec0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d004bec2:	4798      	blx	r3
d004bec4:	7b23      	ldrb	r3, [r4, #12]
d004bec6:	7b62      	ldrb	r2, [r4, #13]
d004bec8:	7ba5      	ldrb	r5, [r4, #14]
d004beca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004bece:	7be2      	ldrb	r2, [r4, #15]
d004bed0:	4907      	ldr	r1, [pc, #28]	; (d004bef0 <initSystem+0x10c>)
d004bed2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004bed6:	6008      	str	r0, [r1, #0]
d004bed8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004bedc:	681b      	ldr	r3, [r3, #0]
d004bede:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d004bee0:	4798      	blx	r3
d004bee2:	4b04      	ldr	r3, [pc, #16]	; (d004bef4 <initSystem+0x110>)
d004bee4:	6018      	str	r0, [r3, #0]
d004bee6:	b002      	add	sp, #8
d004bee8:	bd70      	pop	{r4, r5, r6, pc}
d004beea:	bf00      	nop
d004beec:	2001f000 	.word	0x2001f000
d004bef0:	d00f4680 	.word	0xd00f4680
d004bef4:	d00f4660 	.word	0xd00f4660

d004bef8 <weatherLightning>:
d004bef8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004befc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004bf00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bf04:	4605      	mov	r5, r0
d004bf06:	d930      	bls.n	d004bf6a <weatherLightning+0x72>
d004bf08:	eddf 7ab6 	vldr	s15, [pc, #728]	; d004c1e4 <weatherLightning+0x2ec>
d004bf0c:	fe80 0a67 	vminnm.f32	s0, s0, s15
d004bf10:	4eb5      	ldr	r6, [pc, #724]	; (d004c1e8 <weatherLightning+0x2f0>)
d004bf12:	4fb6      	ldr	r7, [pc, #728]	; (d004c1ec <weatherLightning+0x2f4>)
d004bf14:	6833      	ldr	r3, [r6, #0]
d004bf16:	683a      	ldr	r2, [r7, #0]
d004bf18:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004bf1c:	2a01      	cmp	r2, #1
d004bf1e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004bf22:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004bf26:	6033      	str	r3, [r6, #0]
d004bf28:	d022      	beq.n	d004bf70 <weatherLightning+0x78>
d004bf2a:	2a02      	cmp	r2, #2
d004bf2c:	f000 8087 	beq.w	d004c03e <weatherLightning+0x146>
d004bf30:	4caf      	ldr	r4, [pc, #700]	; (d004c1f0 <weatherLightning+0x2f8>)
d004bf32:	2100      	movs	r1, #0
d004bf34:	b2e8      	uxtb	r0, r5
d004bf36:	edd4 7a00 	vldr	s15, [r4]
d004bf3a:	ee37 0ac0 	vsub.f32	s0, s15, s0
d004bf3e:	ed84 0a00 	vstr	s0, [r4]
d004bf42:	f006 f95b 	bl	d00521fc <lightEnable>
d004bf46:	4628      	mov	r0, r5
d004bf48:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d004c1f4 <weatherLightning+0x2fc>
d004bf4c:	f006 f9ec 	bl	d0052328 <lightSetIntensity>
d004bf50:	edd4 7a00 	vldr	s15, [r4]
d004bf54:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004bf58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bf5c:	f240 80d6 	bls.w	d004c10c <weatherLightning+0x214>
d004bf60:	f04f 0800 	mov.w	r8, #0
d004bf64:	4640      	mov	r0, r8
d004bf66:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004bf6a:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d004c1f8 <weatherLightning+0x300>
d004bf6e:	e7cf      	b.n	d004bf10 <weatherLightning+0x18>
d004bf70:	4aa2      	ldr	r2, [pc, #648]	; (d004c1fc <weatherLightning+0x304>)
d004bf72:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d004bf76:	f8df a2b4 	ldr.w	sl, [pc, #692]	; d004c22c <weatherLightning+0x334>
d004bf7a:	ed92 7a00 	vldr	s14, [r2]
d004bf7e:	2200      	movs	r2, #0
d004bf80:	edda 7a00 	vldr	s15, [sl]
d004bf84:	ee66 6ac7 	vnmul.f32	s13, s13, s14
d004bf88:	f8df 9284 	ldr.w	r9, [pc, #644]	; d004c210 <weatherLightning+0x318>
d004bf8c:	ed99 7a00 	vldr	s14, [r9]
d004bf90:	eee6 7a80 	vfma.f32	s15, s13, s0
d004bf94:	ee37 0a40 	vsub.f32	s0, s14, s0
d004bf98:	ed89 0a00 	vstr	s0, [r9]
d004bf9c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004bfa0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bfa4:	f100 80ad 	bmi.w	d004c102 <weatherLightning+0x20a>
d004bfa8:	bfcc      	ite	gt
d004bfaa:	f04f 0801 	movgt.w	r8, #1
d004bfae:	f04f 0800 	movle.w	r8, #0
d004bfb2:	edca 7a00 	vstr	s15, [sl]
d004bfb6:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004bfba:	2101      	movs	r1, #1
d004bfbc:	fa5f fb85 	uxtb.w	fp, r5
d004bfc0:	ea83 4453 	eor.w	r4, r3, r3, lsr #17
d004bfc4:	4658      	mov	r0, fp
d004bfc6:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d004bfca:	6034      	str	r4, [r6, #0]
d004bfcc:	b2e4      	uxtb	r4, r4
d004bfce:	f006 f915 	bl	d00521fc <lightEnable>
d004bfd2:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d004c200 <weatherLightning+0x308>
d004bfd6:	ee07 4a90 	vmov	s15, r4
d004bfda:	ed9a 0a00 	vldr	s0, [sl]
d004bfde:	4628      	mov	r0, r5
d004bfe0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004bfe4:	eea7 0a87 	vfma.f32	s0, s15, s14
d004bfe8:	f006 f99e 	bl	d0052328 <lightSetIntensity>
d004bfec:	edd9 7a00 	vldr	s15, [r9]
d004bff0:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004bff4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004bff8:	d8b4      	bhi.n	d004bf64 <weatherLightning+0x6c>
d004bffa:	4a82      	ldr	r2, [pc, #520]	; (d004c204 <weatherLightning+0x30c>)
d004bffc:	6813      	ldr	r3, [r2, #0]
d004bffe:	3b01      	subs	r3, #1
d004c000:	2b00      	cmp	r3, #0
d004c002:	6013      	str	r3, [r2, #0]
d004c004:	6833      	ldr	r3, [r6, #0]
d004c006:	f340 80ca 	ble.w	d004c19e <weatherLightning+0x2a6>
d004c00a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004c00e:	2202      	movs	r2, #2
d004c010:	eddf 6a7d 	vldr	s13, [pc, #500]	; d004c208 <weatherLightning+0x310>
d004c014:	4640      	mov	r0, r8
d004c016:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004c01a:	603a      	str	r2, [r7, #0]
d004c01c:	eddf 7a7b 	vldr	s15, [pc, #492]	; d004c20c <weatherLightning+0x314>
d004c020:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004c024:	f3c3 0209 	ubfx	r2, r3, #0, #10
d004c028:	6033      	str	r3, [r6, #0]
d004c02a:	ee07 2a10 	vmov	s14, r2
d004c02e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004c032:	eee7 7a26 	vfma.f32	s15, s14, s13
d004c036:	edc9 7a00 	vstr	s15, [r9]
d004c03a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004c03e:	4c74      	ldr	r4, [pc, #464]	; (d004c210 <weatherLightning+0x318>)
d004c040:	2100      	movs	r1, #0
d004c042:	b2e8      	uxtb	r0, r5
d004c044:	edd4 7a00 	vldr	s15, [r4]
d004c048:	ee37 0ac0 	vsub.f32	s0, s15, s0
d004c04c:	ed84 0a00 	vstr	s0, [r4]
d004c050:	f006 f8d4 	bl	d00521fc <lightEnable>
d004c054:	4628      	mov	r0, r5
d004c056:	ed9f 0a67 	vldr	s0, [pc, #412]	; d004c1f4 <weatherLightning+0x2fc>
d004c05a:	f006 f965 	bl	d0052328 <lightSetIntensity>
d004c05e:	edd4 7a00 	vldr	s15, [r4]
d004c062:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004c066:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004c06a:	f63f af79 	bhi.w	d004bf60 <weatherLightning+0x68>
d004c06e:	6833      	ldr	r3, [r6, #0]
d004c070:	2201      	movs	r2, #1
d004c072:	eddf 4a68 	vldr	s9, [pc, #416]	; d004c214 <weatherLightning+0x31c>
d004c076:	f04f 0800 	mov.w	r8, #0
d004c07a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004c07e:	603a      	str	r2, [r7, #0]
d004c080:	ed9f 7a65 	vldr	s14, [pc, #404]	; d004c218 <weatherLightning+0x320>
d004c084:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004c088:	ed9f 5a64 	vldr	s10, [pc, #400]	; d004c21c <weatherLightning+0x324>
d004c08c:	ed9f 6a64 	vldr	s12, [pc, #400]	; d004c220 <weatherLightning+0x328>
d004c090:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004c094:	eddf 5a63 	vldr	s11, [pc, #396]	; d004c224 <weatherLightning+0x32c>
d004c098:	eddf 6a63 	vldr	s13, [pc, #396]	; d004c228 <weatherLightning+0x330>
d004c09c:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d004c0a0:	f3c3 0309 	ubfx	r3, r3, #0, #10
d004c0a4:	4855      	ldr	r0, [pc, #340]	; (d004c1fc <weatherLightning+0x304>)
d004c0a6:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004c0aa:	ee07 3a90 	vmov	s15, r3
d004c0ae:	495f      	ldr	r1, [pc, #380]	; (d004c22c <weatherLightning+0x334>)
d004c0b0:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d004c0b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c0b8:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d004c0bc:	b2db      	uxtb	r3, r3
d004c0be:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004c0c2:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004c0c6:	ee07 3a90 	vmov	s15, r3
d004c0ca:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d004c0ce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c0d2:	f3c3 0209 	ubfx	r2, r3, #0, #10
d004c0d6:	6033      	str	r3, [r6, #0]
d004c0d8:	eea7 6a85 	vfma.f32	s12, s15, s10
d004c0dc:	eef0 7a46 	vmov.f32	s15, s12
d004c0e0:	ee06 2a10 	vmov	s12, r2
d004c0e4:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004c0e8:	ee67 7a27 	vmul.f32	s15, s14, s15
d004c0ec:	eee6 6a25 	vfma.f32	s13, s12, s11
d004c0f0:	edc0 7a00 	vstr	s15, [r0]
d004c0f4:	4640      	mov	r0, r8
d004c0f6:	edc1 7a00 	vstr	s15, [r1]
d004c0fa:	edc4 6a00 	vstr	s13, [r4]
d004c0fe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004c102:	f04f 0800 	mov.w	r8, #0
d004c106:	f8ca 2000 	str.w	r2, [sl]
d004c10a:	e754      	b.n	d004bfb6 <weatherLightning+0xbe>
d004c10c:	6833      	ldr	r3, [r6, #0]
d004c10e:	2201      	movs	r2, #1
d004c110:	4947      	ldr	r1, [pc, #284]	; (d004c230 <weatherLightning+0x338>)
d004c112:	f04f 0800 	mov.w	r8, #0
d004c116:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004c11a:	603a      	str	r2, [r7, #0]
d004c11c:	eddf 5a3d 	vldr	s11, [pc, #244]	; d004c214 <weatherLightning+0x31c>
d004c120:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004c124:	ed9f 7a3c 	vldr	s14, [pc, #240]	; d004c218 <weatherLightning+0x320>
d004c128:	ed9f 6a3e 	vldr	s12, [pc, #248]	; d004c224 <weatherLightning+0x32c>
d004c12c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004c130:	eddf 6a3d 	vldr	s13, [pc, #244]	; d004c228 <weatherLightning+0x330>
d004c134:	4c31      	ldr	r4, [pc, #196]	; (d004c1fc <weatherLightning+0x304>)
d004c136:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d004c13a:	fba1 0103 	umull	r0, r1, r1, r3
d004c13e:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004c142:	f021 0003 	bic.w	r0, r1, #3
d004c146:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d004c14a:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d004c14e:	ea82 3142 	eor.w	r1, r2, r2, lsl #13
d004c152:	f3c2 0209 	ubfx	r2, r2, #0, #10
d004c156:	1a1b      	subs	r3, r3, r0
d004c158:	482d      	ldr	r0, [pc, #180]	; (d004c210 <weatherLightning+0x318>)
d004c15a:	ee07 2a90 	vmov	s15, r2
d004c15e:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d004c162:	3302      	adds	r3, #2
d004c164:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c168:	ea81 1241 	eor.w	r2, r1, r1, lsl #5
d004c16c:	492f      	ldr	r1, [pc, #188]	; (d004c22c <weatherLightning+0x334>)
d004c16e:	f3c2 0509 	ubfx	r5, r2, #0, #10
d004c172:	6032      	str	r2, [r6, #0]
d004c174:	eea7 7aa5 	vfma.f32	s14, s15, s11
d004c178:	4a22      	ldr	r2, [pc, #136]	; (d004c204 <weatherLightning+0x30c>)
d004c17a:	6013      	str	r3, [r2, #0]
d004c17c:	eef0 7a47 	vmov.f32	s15, s14
d004c180:	ee07 5a10 	vmov	s14, r5
d004c184:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004c188:	edc4 7a00 	vstr	s15, [r4]
d004c18c:	edc1 7a00 	vstr	s15, [r1]
d004c190:	eee7 6a06 	vfma.f32	s13, s14, s12
d004c194:	edc0 6a00 	vstr	s13, [r0]
d004c198:	4640      	mov	r0, r8
d004c19a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004c19e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004c1a2:	eddf 6a24 	vldr	s13, [pc, #144]	; d004c234 <weatherLightning+0x33c>
d004c1a6:	eddf 7a24 	vldr	s15, [pc, #144]	; d004c238 <weatherLightning+0x340>
d004c1aa:	4658      	mov	r0, fp
d004c1ac:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004c1b0:	4a0f      	ldr	r2, [pc, #60]	; (d004c1f0 <weatherLightning+0x2f8>)
d004c1b2:	2100      	movs	r1, #0
d004c1b4:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004c1b8:	f3c3 040a 	ubfx	r4, r3, #0, #11
d004c1bc:	6033      	str	r3, [r6, #0]
d004c1be:	ee07 4a10 	vmov	s14, r4
d004c1c2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004c1c6:	eee7 7a26 	vfma.f32	s15, s14, s13
d004c1ca:	edc2 7a00 	vstr	s15, [r2]
d004c1ce:	f006 f815 	bl	d00521fc <lightEnable>
d004c1d2:	4628      	mov	r0, r5
d004c1d4:	ed9f 0a07 	vldr	s0, [pc, #28]	; d004c1f4 <weatherLightning+0x2fc>
d004c1d8:	f006 f8a6 	bl	d0052328 <lightSetIntensity>
d004c1dc:	2300      	movs	r3, #0
d004c1de:	603b      	str	r3, [r7, #0]
d004c1e0:	e6c0      	b.n	d004bf64 <weatherLightning+0x6c>
d004c1e2:	bf00      	nop
d004c1e4:	3dcccccd 	.word	0x3dcccccd
d004c1e8:	d0059f70 	.word	0xd0059f70
d004c1ec:	d005a230 	.word	0xd005a230
d004c1f0:	d0059f68 	.word	0xd0059f68
d004c1f4:	00000000 	.word	0x00000000
d004c1f8:	3c83126f 	.word	0x3c83126f
d004c1fc:	d005a0a8 	.word	0xd005a0a8
d004c200:	3ab3e71b 	.word	0x3ab3e71b
d004c204:	d005a0ac 	.word	0xd005a0ac
d004c208:	38cd000c 	.word	0x38cd000c
d004c20c:	3ca3d70a 	.word	0x3ca3d70a
d004c210:	d005a234 	.word	0xd005a234
d004c214:	3ad9d00e 	.word	0x3ad9d00e
d004c218:	3e99999a 	.word	0x3e99999a
d004c21c:	3b33e71b 	.word	0x3b33e71b
d004c220:	3f266666 	.word	0x3f266666
d004c224:	3776000e 	.word	0x3776000e
d004c228:	3ccccccd 	.word	0x3ccccccd
d004c22c:	d005a0a4 	.word	0xd005a0a4
d004c230:	cccccccd 	.word	0xcccccccd
d004c234:	3aace269 	.word	0x3aace269
d004c238:	3f4ccccd 	.word	0x3f4ccccd

d004c23c <initImpactFlames>:
d004c23c:	eddf 7a5b 	vldr	s15, [pc, #364]	; d004c3ac <initImpactFlames+0x170>
d004c240:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d004c244:	4b5a      	ldr	r3, [pc, #360]	; (d004c3b0 <initImpactFlames+0x174>)
d004c246:	2100      	movs	r1, #0
d004c248:	b570      	push	{r4, r5, r6, lr}
d004c24a:	4c5a      	ldr	r4, [pc, #360]	; (d004c3b4 <initImpactFlames+0x178>)
d004c24c:	4d5a      	ldr	r5, [pc, #360]	; (d004c3b8 <initImpactFlames+0x17c>)
d004c24e:	f104 0680 	add.w	r6, r4, #128	; 0x80
d004c252:	ed2d 8b02 	vpush	{d8}
d004c256:	eeb0 8a67 	vmov.f32	s16, s15
d004c25a:	b086      	sub	sp, #24
d004c25c:	edc3 7a01 	vstr	s15, [r3, #4]
d004c260:	edc3 7a02 	vstr	s15, [r3, #8]
d004c264:	edc3 7a03 	vstr	s15, [r3, #12]
d004c268:	edc3 7a04 	vstr	s15, [r3, #16]
d004c26c:	edc3 7a05 	vstr	s15, [r3, #20]
d004c270:	edc3 7a08 	vstr	s15, [r3, #32]
d004c274:	edc3 7a09 	vstr	s15, [r3, #36]	; 0x24
d004c278:	edc3 7a0a 	vstr	s15, [r3, #40]	; 0x28
d004c27c:	edc3 7a0b 	vstr	s15, [r3, #44]	; 0x2c
d004c280:	edc3 7a0c 	vstr	s15, [r3, #48]	; 0x30
d004c284:	edc3 7a0f 	vstr	s15, [r3, #60]	; 0x3c
d004c288:	edc3 7a10 	vstr	s15, [r3, #64]	; 0x40
d004c28c:	edc3 7a11 	vstr	s15, [r3, #68]	; 0x44
d004c290:	edc3 7a12 	vstr	s15, [r3, #72]	; 0x48
d004c294:	edc3 7a13 	vstr	s15, [r3, #76]	; 0x4c
d004c298:	edc3 7a16 	vstr	s15, [r3, #88]	; 0x58
d004c29c:	edc3 7a17 	vstr	s15, [r3, #92]	; 0x5c
d004c2a0:	edc3 7a18 	vstr	s15, [r3, #96]	; 0x60
d004c2a4:	edc3 7a19 	vstr	s15, [r3, #100]	; 0x64
d004c2a8:	edc3 7a1a 	vstr	s15, [r3, #104]	; 0x68
d004c2ac:	edc3 7a1d 	vstr	s15, [r3, #116]	; 0x74
d004c2b0:	edc3 7a1e 	vstr	s15, [r3, #120]	; 0x78
d004c2b4:	edc3 7a1f 	vstr	s15, [r3, #124]	; 0x7c
d004c2b8:	7019      	strb	r1, [r3, #0]
d004c2ba:	7719      	strb	r1, [r3, #28]
d004c2bc:	f883 1038 	strb.w	r1, [r3, #56]	; 0x38
d004c2c0:	f883 1054 	strb.w	r1, [r3, #84]	; 0x54
d004c2c4:	f883 1070 	strb.w	r1, [r3, #112]	; 0x70
d004c2c8:	619a      	str	r2, [r3, #24]
d004c2ca:	635a      	str	r2, [r3, #52]	; 0x34
d004c2cc:	651a      	str	r2, [r3, #80]	; 0x50
d004c2ce:	66da      	str	r2, [r3, #108]	; 0x6c
d004c2d0:	edc3 7a20 	vstr	s15, [r3, #128]	; 0x80
d004c2d4:	edc3 7a21 	vstr	s15, [r3, #132]	; 0x84
d004c2d8:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
d004c2dc:	f883 108c 	strb.w	r1, [r3, #140]	; 0x8c
d004c2e0:	edc3 7a24 	vstr	s15, [r3, #144]	; 0x90
d004c2e4:	edc3 7a25 	vstr	s15, [r3, #148]	; 0x94
d004c2e8:	edc3 7a26 	vstr	s15, [r3, #152]	; 0x98
d004c2ec:	edc3 7a27 	vstr	s15, [r3, #156]	; 0x9c
d004c2f0:	edc3 7a28 	vstr	s15, [r3, #160]	; 0xa0
d004c2f4:	f8c3 20a4 	str.w	r2, [r3, #164]	; 0xa4
d004c2f8:	f883 10a8 	strb.w	r1, [r3, #168]	; 0xa8
d004c2fc:	edc3 7a2b 	vstr	s15, [r3, #172]	; 0xac
d004c300:	edc3 7a2c 	vstr	s15, [r3, #176]	; 0xb0
d004c304:	edc3 7a2d 	vstr	s15, [r3, #180]	; 0xb4
d004c308:	edc3 7a2e 	vstr	s15, [r3, #184]	; 0xb8
d004c30c:	edc3 7a2f 	vstr	s15, [r3, #188]	; 0xbc
d004c310:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
d004c314:	f883 10c4 	strb.w	r1, [r3, #196]	; 0xc4
d004c318:	edc3 7a32 	vstr	s15, [r3, #200]	; 0xc8
d004c31c:	edc3 7a33 	vstr	s15, [r3, #204]	; 0xcc
d004c320:	edc3 7a34 	vstr	s15, [r3, #208]	; 0xd0
d004c324:	edc3 7a35 	vstr	s15, [r3, #212]	; 0xd4
d004c328:	edc3 7a36 	vstr	s15, [r3, #216]	; 0xd8
d004c32c:	f8c3 20dc 	str.w	r2, [r3, #220]	; 0xdc
d004c330:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d004c334:	ed9f 0a1d 	vldr	s0, [pc, #116]	; d004c3ac <initImpactFlames+0x170>
d004c338:	eeb0 2a00 	vmov.f32	s4, #0	; 0x40000000  2.0
d004c33c:	2101      	movs	r1, #1
d004c33e:	eef0 0a40 	vmov.f32	s1, s0
d004c342:	2022      	movs	r0, #34	; 0x22
d004c344:	eef0 1a62 	vmov.f32	s3, s5
d004c348:	eeb0 1a40 	vmov.f32	s2, s0
d004c34c:	f008 f8b2 	bl	d00544b4 <sb3dParticleSpawnQuad>
d004c350:	2800      	cmp	r0, #0
d004c352:	4603      	mov	r3, r0
d004c354:	f844 0f04 	str.w	r0, [r4, #4]!
d004c358:	da05      	bge.n	d004c366 <initImpactFlames+0x12a>
d004c35a:	42b4      	cmp	r4, r6
d004c35c:	d1e8      	bne.n	d004c330 <initImpactFlames+0xf4>
d004c35e:	b006      	add	sp, #24
d004c360:	ecbd 8b02 	vpop	{d8}
d004c364:	bd70      	pop	{r4, r5, r6, pc}
d004c366:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d004c36a:	f10d 0c18 	add.w	ip, sp, #24
d004c36e:	e90c 0007 	stmdb	ip, {r0, r1, r2}
d004c372:	4618      	mov	r0, r3
d004c374:	eddd 0a04 	vldr	s1, [sp, #16]
d004c378:	ed9d 1a05 	vldr	s2, [sp, #20]
d004c37c:	ed9d 0a03 	vldr	s0, [sp, #12]
d004c380:	f008 f8e0 	bl	d0054544 <sb3dParticleSetPosition>
d004c384:	eeb0 0a48 	vmov.f32	s0, s16
d004c388:	6820      	ldr	r0, [r4, #0]
d004c38a:	f008 f8f3 	bl	d0054574 <sb3dParticleSetSize>
d004c38e:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c392:	6820      	ldr	r0, [r4, #0]
d004c394:	f008 f904 	bl	d00545a0 <sb3dParticleSetShade>
d004c398:	2100      	movs	r1, #0
d004c39a:	6820      	ldr	r0, [r4, #0]
d004c39c:	f008 f922 	bl	d00545e4 <sb3dParticleSetEmission>
d004c3a0:	42b4      	cmp	r4, r6
d004c3a2:	d1c5      	bne.n	d004c330 <initImpactFlames+0xf4>
d004c3a4:	b006      	add	sp, #24
d004c3a6:	ecbd 8b02 	vpop	{d8}
d004c3aa:	bd70      	pop	{r4, r5, r6, pc}
d004c3ac:	00000000 	.word	0x00000000
d004c3b0:	d005a0c4 	.word	0xd005a0c4
d004c3b4:	d005a1a0 	.word	0xd005a1a0
d004c3b8:	d0057208 	.word	0xd0057208

d004c3bc <updateImpactFlames>:
d004c3bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004c3c0:	ed2d 8b10 	vpush	{d8-d15}
d004c3c4:	eef0 ea40 	vmov.f32	s29, s0
d004c3c8:	b084      	sub	sp, #16
d004c3ca:	4cbd      	ldr	r4, [pc, #756]	; (d004c6c0 <updateImpactFlames+0x304>)
d004c3cc:	f04f 0a00 	mov.w	sl, #0
d004c3d0:	f8df 8318 	ldr.w	r8, [pc, #792]	; d004c6ec <updateImpactFlames+0x330>
d004c3d4:	ed9f fabb 	vldr	s30, [pc, #748]	; d004c6c4 <updateImpactFlames+0x308>
d004c3d8:	eddf cabb 	vldr	s25, [pc, #748]	; d004c6c8 <updateImpactFlames+0x30c>
d004c3dc:	ed9f eabb 	vldr	s28, [pc, #748]	; d004c6cc <updateImpactFlames+0x310>
d004c3e0:	ed9f cabb 	vldr	s24, [pc, #748]	; d004c6d0 <updateImpactFlames+0x314>
d004c3e4:	7825      	ldrb	r5, [r4, #0]
d004c3e6:	2d00      	cmp	r5, #0
d004c3e8:	f000 8147 	beq.w	d004c67a <updateImpactFlames+0x2be>
d004c3ec:	edd4 7a04 	vldr	s15, [r4, #16]
d004c3f0:	ed94 7a05 	vldr	s14, [r4, #20]
d004c3f4:	ee7e 7aa7 	vadd.f32	s15, s29, s15
d004c3f8:	eef4 7ac7 	vcmpe.f32	s15, s14
d004c3fc:	edc4 7a04 	vstr	s15, [r4, #16]
d004c400:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004c404:	f280 80b2 	bge.w	d004c56c <updateImpactFlames+0x1b0>
d004c408:	eec7 8a87 	vdiv.f32	s17, s15, s14
d004c40c:	ed94 ba06 	vldr	s22, [r4, #24]
d004c410:	eddf bab0 	vldr	s23, [pc, #704]	; d004c6d4 <updateImpactFlames+0x318>
d004c414:	4647      	mov	r7, r8
d004c416:	2600      	movs	r6, #0
d004c418:	eddf daaf 	vldr	s27, [pc, #700]	; d004c6d8 <updateImpactFlames+0x31c>
d004c41c:	ed9f daaf 	vldr	s26, [pc, #700]	; d004c6dc <updateImpactFlames+0x320>
d004c420:	eddf aaaf 	vldr	s21, [pc, #700]	; d004c6e0 <updateImpactFlames+0x324>
d004c424:	eeb2 aa00 	vmov.f32	s20, #32	; 0x41000000  8.0
d004c428:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004c42c:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d004c430:	eeb0 9a6c 	vmov.f32	s18, s25
d004c434:	eef2 6a08 	vmov.f32	s13, #40	; 0x41400000  12.0
d004c438:	eef3 9a0c 	vmov.f32	s19, #60	; 0x41e00000  28.0
d004c43c:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004c440:	ee6b 9a29 	vmul.f32	s19, s22, s19
d004c444:	eee8 7a8a 	vfma.f32	s15, s17, s20
d004c448:	ee37 7a68 	vsub.f32	s14, s14, s17
d004c44c:	eee8 ba86 	vfma.f32	s23, s17, s12
d004c450:	ee69 9aa8 	vmul.f32	s19, s19, s17
d004c454:	eea7 9a0f 	vfma.f32	s18, s14, s30
d004c458:	eea7 aa26 	vfma.f32	s20, s14, s13
d004c45c:	ee67 7a8b 	vmul.f32	s15, s15, s22
d004c460:	ee29 9a27 	vmul.f32	s18, s18, s15
d004c464:	ee07 6a90 	vmov	s15, r6
d004c468:	f857 5b04 	ldr.w	r5, [r7], #4
d004c46c:	eeb0 8a08 	vmov.f32	s16, #8	; 0x40400000  3.0
d004c470:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c474:	2d00      	cmp	r5, #0
d004c476:	ee27 0a8c 	vmul.f32	s0, s15, s24
d004c47a:	ee37 8a88 	vadd.f32	s16, s15, s16
d004c47e:	db64      	blt.n	d004c54a <updateImpactFlames+0x18e>
d004c480:	ed94 7a04 	vldr	s14, [r4, #16]
d004c484:	eef0 fa6a 	vmov.f32	s31, s21
d004c488:	f04f 0945 	mov.w	r9, #69	; 0x45
d004c48c:	ee28 8a07 	vmul.f32	s16, s16, s14
d004c490:	eea7 0a2d 	vfma.f32	s0, s14, s27
d004c494:	eea7 8a8e 	vfma.f32	s16, s15, s28
d004c498:	f00a f9ce 	bl	d0056838 <sinf>
d004c49c:	eee0 fa0d 	vfma.f32	s31, s0, s26
d004c4a0:	eeb0 0a48 	vmov.f32	s0, s16
d004c4a4:	f009 ffe4 	bl	d0056470 <cosf>
d004c4a8:	eef0 6a40 	vmov.f32	s13, s0
d004c4ac:	edd4 7a01 	vldr	s15, [r4, #4]
d004c4b0:	eeb0 0a48 	vmov.f32	s0, s16
d004c4b4:	ed94 7a02 	vldr	s14, [r4, #8]
d004c4b8:	eeb0 8a4a 	vmov.f32	s16, s20
d004c4bc:	eee6 7a89 	vfma.f32	s15, s13, s18
d004c4c0:	ee37 7a29 	vadd.f32	s14, s14, s19
d004c4c4:	ed8d 7a02 	vstr	s14, [sp, #8]
d004c4c8:	edcd 7a01 	vstr	s15, [sp, #4]
d004c4cc:	f00a f9b4 	bl	d0056838 <sinf>
d004c4d0:	f006 0301 	and.w	r3, r6, #1
d004c4d4:	eef0 6a00 	vmov.f32	s13, #0	; 0x40000000  2.0
d004c4d8:	ed94 7a03 	vldr	s14, [r4, #12]
d004c4dc:	eef4 8aec 	vcmpe.f32	s17, s25
d004c4e0:	ee07 3a90 	vmov	s15, r3
d004c4e4:	eea0 7a09 	vfma.f32	s14, s0, s18
d004c4e8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004c4ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004c4f0:	eef4 8aea 	vcmpe.f32	s17, s21
d004c4f4:	eea7 8aa6 	vfma.f32	s16, s15, s13
d004c4f8:	ed8d 7a03 	vstr	s14, [sp, #12]
d004c4fc:	ee28 8a0b 	vmul.f32	s16, s16, s22
d004c500:	ee28 8a2f 	vmul.f32	s16, s16, s31
d004c504:	d406      	bmi.n	d004c514 <updateImpactFlames+0x158>
d004c506:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004c50a:	bf4c      	ite	mi
d004c50c:	f04f 0942 	movmi.w	r9, #66	; 0x42
d004c510:	f04f 0951 	movpl.w	r9, #81	; 0x51
d004c514:	eddd 0a02 	vldr	s1, [sp, #8]
d004c518:	4628      	mov	r0, r5
d004c51a:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c51e:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c522:	f008 f80f 	bl	d0054544 <sb3dParticleSetPosition>
d004c526:	eeb0 0a48 	vmov.f32	s0, s16
d004c52a:	4628      	mov	r0, r5
d004c52c:	f008 f822 	bl	d0054574 <sb3dParticleSetSize>
d004c530:	eeb0 0a6b 	vmov.f32	s0, s23
d004c534:	4628      	mov	r0, r5
d004c536:	f008 f833 	bl	d00545a0 <sb3dParticleSetShade>
d004c53a:	4649      	mov	r1, r9
d004c53c:	4628      	mov	r0, r5
d004c53e:	f008 f845 	bl	d00545cc <sb3dParticleSetColor>
d004c542:	4628      	mov	r0, r5
d004c544:	21c8      	movs	r1, #200	; 0xc8
d004c546:	f008 f84d 	bl	d00545e4 <sb3dParticleSetEmission>
d004c54a:	3601      	adds	r6, #1
d004c54c:	2e04      	cmp	r6, #4
d004c54e:	d189      	bne.n	d004c464 <updateImpactFlames+0xa8>
d004c550:	f10a 0a04 	add.w	sl, sl, #4
d004c554:	341c      	adds	r4, #28
d004c556:	f108 0810 	add.w	r8, r8, #16
d004c55a:	f1ba 0f20 	cmp.w	sl, #32
d004c55e:	f47f af41 	bne.w	d004c3e4 <updateImpactFlames+0x28>
d004c562:	b004      	add	sp, #16
d004c564:	ecbd 8b10 	vpop	{d8-d15}
d004c568:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004c56c:	2600      	movs	r6, #0
d004c56e:	f8d8 5000 	ldr.w	r5, [r8]
d004c572:	42b5      	cmp	r5, r6
d004c574:	7026      	strb	r6, [r4, #0]
d004c576:	db1c      	blt.n	d004c5b2 <updateImpactFlames+0x1f6>
d004c578:	4b5a      	ldr	r3, [pc, #360]	; (d004c6e4 <updateImpactFlames+0x328>)
d004c57a:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c57e:	ab04      	add	r3, sp, #16
d004c580:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c584:	4628      	mov	r0, r5
d004c586:	eddd 0a02 	vldr	s1, [sp, #8]
d004c58a:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c58e:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c592:	f007 ffd7 	bl	d0054544 <sb3dParticleSetPosition>
d004c596:	ed9f 0a54 	vldr	s0, [pc, #336]	; d004c6e8 <updateImpactFlames+0x32c>
d004c59a:	4628      	mov	r0, r5
d004c59c:	f007 ffea 	bl	d0054574 <sb3dParticleSetSize>
d004c5a0:	4628      	mov	r0, r5
d004c5a2:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5a6:	f007 fffb 	bl	d00545a0 <sb3dParticleSetShade>
d004c5aa:	4631      	mov	r1, r6
d004c5ac:	4628      	mov	r0, r5
d004c5ae:	f008 f819 	bl	d00545e4 <sb3dParticleSetEmission>
d004c5b2:	f8d8 5004 	ldr.w	r5, [r8, #4]
d004c5b6:	2d00      	cmp	r5, #0
d004c5b8:	db1c      	blt.n	d004c5f4 <updateImpactFlames+0x238>
d004c5ba:	4b4a      	ldr	r3, [pc, #296]	; (d004c6e4 <updateImpactFlames+0x328>)
d004c5bc:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c5c0:	ab04      	add	r3, sp, #16
d004c5c2:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c5c6:	4628      	mov	r0, r5
d004c5c8:	eddd 0a02 	vldr	s1, [sp, #8]
d004c5cc:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c5d0:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c5d4:	f007 ffb6 	bl	d0054544 <sb3dParticleSetPosition>
d004c5d8:	ed9f 0a43 	vldr	s0, [pc, #268]	; d004c6e8 <updateImpactFlames+0x32c>
d004c5dc:	4628      	mov	r0, r5
d004c5de:	f007 ffc9 	bl	d0054574 <sb3dParticleSetSize>
d004c5e2:	4628      	mov	r0, r5
d004c5e4:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5e8:	f007 ffda 	bl	d00545a0 <sb3dParticleSetShade>
d004c5ec:	4628      	mov	r0, r5
d004c5ee:	2100      	movs	r1, #0
d004c5f0:	f007 fff8 	bl	d00545e4 <sb3dParticleSetEmission>
d004c5f4:	f8d8 5008 	ldr.w	r5, [r8, #8]
d004c5f8:	2d00      	cmp	r5, #0
d004c5fa:	db1c      	blt.n	d004c636 <updateImpactFlames+0x27a>
d004c5fc:	4b39      	ldr	r3, [pc, #228]	; (d004c6e4 <updateImpactFlames+0x328>)
d004c5fe:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c602:	ab04      	add	r3, sp, #16
d004c604:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c608:	4628      	mov	r0, r5
d004c60a:	eddd 0a02 	vldr	s1, [sp, #8]
d004c60e:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c612:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c616:	f007 ff95 	bl	d0054544 <sb3dParticleSetPosition>
d004c61a:	ed9f 0a33 	vldr	s0, [pc, #204]	; d004c6e8 <updateImpactFlames+0x32c>
d004c61e:	4628      	mov	r0, r5
d004c620:	f007 ffa8 	bl	d0054574 <sb3dParticleSetSize>
d004c624:	4628      	mov	r0, r5
d004c626:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c62a:	f007 ffb9 	bl	d00545a0 <sb3dParticleSetShade>
d004c62e:	4628      	mov	r0, r5
d004c630:	2100      	movs	r1, #0
d004c632:	f007 ffd7 	bl	d00545e4 <sb3dParticleSetEmission>
d004c636:	f8d8 500c 	ldr.w	r5, [r8, #12]
d004c63a:	2d00      	cmp	r5, #0
d004c63c:	db88      	blt.n	d004c550 <updateImpactFlames+0x194>
d004c63e:	4b29      	ldr	r3, [pc, #164]	; (d004c6e4 <updateImpactFlames+0x328>)
d004c640:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c644:	ab04      	add	r3, sp, #16
d004c646:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c64a:	4628      	mov	r0, r5
d004c64c:	eddd 0a02 	vldr	s1, [sp, #8]
d004c650:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c654:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c658:	f007 ff74 	bl	d0054544 <sb3dParticleSetPosition>
d004c65c:	4628      	mov	r0, r5
d004c65e:	ed9f 0a22 	vldr	s0, [pc, #136]	; d004c6e8 <updateImpactFlames+0x32c>
d004c662:	f007 ff87 	bl	d0054574 <sb3dParticleSetSize>
d004c666:	4628      	mov	r0, r5
d004c668:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c66c:	f007 ff98 	bl	d00545a0 <sb3dParticleSetShade>
d004c670:	4628      	mov	r0, r5
d004c672:	2100      	movs	r1, #0
d004c674:	f007 ffb6 	bl	d00545e4 <sb3dParticleSetEmission>
d004c678:	e76a      	b.n	d004c550 <updateImpactFlames+0x194>
d004c67a:	f8d8 6000 	ldr.w	r6, [r8]
d004c67e:	2e00      	cmp	r6, #0
d004c680:	db97      	blt.n	d004c5b2 <updateImpactFlames+0x1f6>
d004c682:	4b18      	ldr	r3, [pc, #96]	; (d004c6e4 <updateImpactFlames+0x328>)
d004c684:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004c688:	ab04      	add	r3, sp, #16
d004c68a:	e903 0007 	stmdb	r3, {r0, r1, r2}
d004c68e:	4630      	mov	r0, r6
d004c690:	eddd 0a02 	vldr	s1, [sp, #8]
d004c694:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c698:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c69c:	f007 ff52 	bl	d0054544 <sb3dParticleSetPosition>
d004c6a0:	4630      	mov	r0, r6
d004c6a2:	ed9f 0a11 	vldr	s0, [pc, #68]	; d004c6e8 <updateImpactFlames+0x32c>
d004c6a6:	f007 ff65 	bl	d0054574 <sb3dParticleSetSize>
d004c6aa:	4630      	mov	r0, r6
d004c6ac:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c6b0:	f007 ff76 	bl	d00545a0 <sb3dParticleSetShade>
d004c6b4:	4629      	mov	r1, r5
d004c6b6:	4630      	mov	r0, r6
d004c6b8:	f007 ff94 	bl	d00545e4 <sb3dParticleSetEmission>
d004c6bc:	e779      	b.n	d004c5b2 <updateImpactFlames+0x1f6>
d004c6be:	bf00      	nop
d004c6c0:	d005a0c4 	.word	0xd005a0c4
d004c6c4:	3f266666 	.word	0x3f266666
d004c6c8:	3eb33333 	.word	0x3eb33333
d004c6cc:	3fc90fdb 	.word	0x3fc90fdb
d004c6d0:	3fd9999a 	.word	0x3fd9999a
d004c6d4:	3c23d70a 	.word	0x3c23d70a
d004c6d8:	42200000 	.word	0x42200000
d004c6dc:	3e99999a 	.word	0x3e99999a
d004c6e0:	3f333333 	.word	0x3f333333
d004c6e4:	d0057208 	.word	0xd0057208
d004c6e8:	00000000 	.word	0x00000000
d004c6ec:	d005a1a4 	.word	0xd005a1a4

d004c6f0 <InitLasers>:
d004c6f0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004c6f4:	2230      	movs	r2, #48	; 0x30
d004c6f6:	2100      	movs	r1, #0
d004c6f8:	484e      	ldr	r0, [pc, #312]	; (d004c834 <InitLasers+0x144>)
d004c6fa:	f04f 0800 	mov.w	r8, #0
d004c6fe:	4d4e      	ldr	r5, [pc, #312]	; (d004c838 <InitLasers+0x148>)
d004c700:	4e4e      	ldr	r6, [pc, #312]	; (d004c83c <InitLasers+0x14c>)
d004c702:	ed2d 8b02 	vpush	{d8}
d004c706:	b097      	sub	sp, #92	; 0x5c
d004c708:	ed9f 8a4d 	vldr	s16, [pc, #308]	; d004c840 <InitLasers+0x150>
d004c70c:	f008 fd78 	bl	d0055200 <memset>
d004c710:	2230      	movs	r2, #48	; 0x30
d004c712:	2100      	movs	r1, #0
d004c714:	484b      	ldr	r0, [pc, #300]	; (d004c844 <InitLasers+0x154>)
d004c716:	f008 fd73 	bl	d0055200 <memset>
d004c71a:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d004c71e:	466c      	mov	r4, sp
d004c720:	4668      	mov	r0, sp
d004c722:	ed9f 1a49 	vldr	s2, [pc, #292]	; d004c848 <InitLasers+0x158>
d004c726:	466f      	mov	r7, sp
d004c728:	eeb0 0a60 	vmov.f32	s0, s1
d004c72c:	f004 fffc 	bl	d0051728 <createBox>
d004c730:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d004c734:	ed9f 1a44 	vldr	s2, [pc, #272]	; d004c848 <InitLasers+0x158>
d004c738:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004c73a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004c73c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004c73e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004c740:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004c742:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004c744:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d004c748:	eeb0 0a60 	vmov.f32	s0, s1
d004c74c:	f1a5 0930 	sub.w	r9, r5, #48	; 0x30
d004c750:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d004c754:	4668      	mov	r0, sp
d004c756:	f004 ffe7 	bl	d0051728 <createBox>
d004c75a:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004c75e:	ed9f 2a38 	vldr	s4, [pc, #224]	; d004c840 <InitLasers+0x150>
d004c762:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004c764:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d004c766:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004c768:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d004c76a:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
d004c76c:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d004c76e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d004c772:	eeb0 1a61 	vmov.f32	s2, s3
d004c776:	4c2f      	ldr	r4, [pc, #188]	; (d004c834 <InitLasers+0x144>)
d004c778:	eef0 0a61 	vmov.f32	s1, s3
d004c77c:	eeb0 0a61 	vmov.f32	s0, s3
d004c780:	f104 0730 	add.w	r7, r4, #48	; 0x30
d004c784:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d004c788:	4648      	mov	r0, r9
d004c78a:	f002 f885 	bl	d004e898 <meshSetMaterial>
d004c78e:	2122      	movs	r1, #34	; 0x22
d004c790:	4648      	mov	r0, r9
d004c792:	f004 fedb 	bl	d005154c <meshColour>
d004c796:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004c79a:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c79e:	eeb0 2a48 	vmov.f32	s4, s16
d004c7a2:	eeb0 1a61 	vmov.f32	s2, s3
d004c7a6:	eef0 0a61 	vmov.f32	s1, s3
d004c7aa:	eeb0 0a61 	vmov.f32	s0, s3
d004c7ae:	f002 f873 	bl	d004e898 <meshSetMaterial>
d004c7b2:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c7b6:	2127      	movs	r1, #39	; 0x27
d004c7b8:	f004 fec8 	bl	d005154c <meshColour>
d004c7bc:	eddf 0a20 	vldr	s1, [pc, #128]	; d004c840 <InitLasers+0x150>
d004c7c0:	eeb0 1a48 	vmov.f32	s2, s16
d004c7c4:	3406      	adds	r4, #6
d004c7c6:	eeb0 0a60 	vmov.f32	s0, s1
d004c7ca:	f003 fe65 	bl	d0050498 <vec3>
d004c7ce:	4648      	mov	r0, r9
d004c7d0:	f004 fddc 	bl	d005138c <entityWorldSpawn>
d004c7d4:	f804 8c06 	strb.w	r8, [r4, #-6]
d004c7d8:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c7dc:	2100      	movs	r1, #0
d004c7de:	f824 8c04 	strh.w	r8, [r4, #-4]
d004c7e2:	b280      	uxth	r0, r0
d004c7e4:	f005 fa36 	bl	d0051c54 <entityVisible>
d004c7e8:	42bc      	cmp	r4, r7
d004c7ea:	d1e7      	bne.n	d004c7bc <InitLasers+0xcc>
d004c7ec:	4c15      	ldr	r4, [pc, #84]	; (d004c844 <InitLasers+0x154>)
d004c7ee:	2500      	movs	r5, #0
d004c7f0:	ed9f 8a13 	vldr	s16, [pc, #76]	; d004c840 <InitLasers+0x150>
d004c7f4:	f104 0730 	add.w	r7, r4, #48	; 0x30
d004c7f8:	4e10      	ldr	r6, [pc, #64]	; (d004c83c <InitLasers+0x14c>)
d004c7fa:	eddf 0a11 	vldr	s1, [pc, #68]	; d004c840 <InitLasers+0x150>
d004c7fe:	eeb0 1a48 	vmov.f32	s2, s16
d004c802:	3406      	adds	r4, #6
d004c804:	eeb0 0a60 	vmov.f32	s0, s1
d004c808:	f003 fe46 	bl	d0050498 <vec3>
d004c80c:	4630      	mov	r0, r6
d004c80e:	f004 fdbd 	bl	d005138c <entityWorldSpawn>
d004c812:	f804 5c06 	strb.w	r5, [r4, #-6]
d004c816:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c81a:	2100      	movs	r1, #0
d004c81c:	f824 5c04 	strh.w	r5, [r4, #-4]
d004c820:	b280      	uxth	r0, r0
d004c822:	f005 fa17 	bl	d0051c54 <entityVisible>
d004c826:	42bc      	cmp	r4, r7
d004c828:	d1e7      	bne.n	d004c7fa <InitLasers+0x10a>
d004c82a:	b017      	add	sp, #92	; 0x5c
d004c82c:	ecbd 8b02 	vpop	{d8}
d004c830:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004c834:	d00f462c 	.word	0xd00f462c
d004c838:	d00f4560 	.word	0xd00f4560
d004c83c:	d00f46c0 	.word	0xd00f46c0
d004c840:	00000000 	.word	0x00000000
d004c844:	d00f4700 	.word	0xd00f4700
d004c848:	42480000 	.word	0x42480000

d004c84c <FireTurret>:
d004c84c:	b530      	push	{r4, r5, lr}
d004c84e:	ed2d 8b02 	vpush	{d8}
d004c852:	b091      	sub	sp, #68	; 0x44
d004c854:	eeb0 8a60 	vmov.f32	s16, s1
d004c858:	4604      	mov	r4, r0
d004c85a:	ed8d 0a01 	vstr	s0, [sp, #4]
d004c85e:	ed8d 1a03 	vstr	s2, [sp, #12]
d004c862:	f004 fdfd 	bl	d0051460 <entityGetPosition>
d004c866:	eef0 6a40 	vmov.f32	s13, s0
d004c86a:	4620      	mov	r0, r4
d004c86c:	eeb0 7a60 	vmov.f32	s14, s1
d004c870:	eddf 0a3b 	vldr	s1, [pc, #236]	; d004c960 <FireTurret+0x114>
d004c874:	eef0 7a41 	vmov.f32	s15, s2
d004c878:	ed9d 0a01 	vldr	s0, [sp, #4]
d004c87c:	ee78 0a60 	vsub.f32	s1, s16, s1
d004c880:	ed9d 1a03 	vldr	s2, [sp, #12]
d004c884:	2100      	movs	r1, #0
d004c886:	edcd 6a04 	vstr	s13, [sp, #16]
d004c88a:	ed8d 7a05 	vstr	s14, [sp, #20]
d004c88e:	edcd 7a06 	vstr	s15, [sp, #24]
d004c892:	f005 f959 	bl	d0051b48 <entityLookAtPosition>
d004c896:	4b33      	ldr	r3, [pc, #204]	; (d004c964 <FireTurret+0x118>)
d004c898:	ed8d 0a07 	vstr	s0, [sp, #28]
d004c89c:	781a      	ldrb	r2, [r3, #0]
d004c89e:	edcd 0a08 	vstr	s1, [sp, #32]
d004c8a2:	b1d2      	cbz	r2, d004c8da <FireTurret+0x8e>
d004c8a4:	799a      	ldrb	r2, [r3, #6]
d004c8a6:	2a00      	cmp	r2, #0
d004c8a8:	d04d      	beq.n	d004c946 <FireTurret+0xfa>
d004c8aa:	7b1a      	ldrb	r2, [r3, #12]
d004c8ac:	2a00      	cmp	r2, #0
d004c8ae:	d04c      	beq.n	d004c94a <FireTurret+0xfe>
d004c8b0:	7c9a      	ldrb	r2, [r3, #18]
d004c8b2:	2a00      	cmp	r2, #0
d004c8b4:	d04b      	beq.n	d004c94e <FireTurret+0x102>
d004c8b6:	7e1a      	ldrb	r2, [r3, #24]
d004c8b8:	2a00      	cmp	r2, #0
d004c8ba:	d04a      	beq.n	d004c952 <FireTurret+0x106>
d004c8bc:	7f9a      	ldrb	r2, [r3, #30]
d004c8be:	2a00      	cmp	r2, #0
d004c8c0:	d049      	beq.n	d004c956 <FireTurret+0x10a>
d004c8c2:	f893 2024 	ldrb.w	r2, [r3, #36]	; 0x24
d004c8c6:	b13a      	cbz	r2, d004c8d8 <FireTurret+0x8c>
d004c8c8:	f893 202a 	ldrb.w	r2, [r3, #42]	; 0x2a
d004c8cc:	2a00      	cmp	r2, #0
d004c8ce:	d044      	beq.n	d004c95a <FireTurret+0x10e>
d004c8d0:	b011      	add	sp, #68	; 0x44
d004c8d2:	ecbd 8b02 	vpop	{d8}
d004c8d6:	bd30      	pop	{r4, r5, pc}
d004c8d8:	2206      	movs	r2, #6
d004c8da:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d004c8de:	2132      	movs	r1, #50	; 0x32
d004c8e0:	2501      	movs	r5, #1
d004c8e2:	4620      	mov	r0, r4
d004c8e4:	eb03 0442 	add.w	r4, r3, r2, lsl #1
d004c8e8:	f803 5012 	strb.w	r5, [r3, r2, lsl #1]
d004c8ec:	8061      	strh	r1, [r4, #2]
d004c8ee:	f004 fdd5 	bl	d005149c <entityGetForward>
d004c8f2:	eddf 7a1b 	vldr	s15, [pc, #108]	; d004c960 <FireTurret+0x114>
d004c8f6:	eddd 0a05 	vldr	s1, [sp, #20]
d004c8fa:	ed9d 0a04 	vldr	s0, [sp, #16]
d004c8fe:	ee70 0aa7 	vadd.f32	s1, s1, s15
d004c902:	ed9d 1a06 	vldr	s2, [sp, #24]
d004c906:	88a0      	ldrh	r0, [r4, #4]
d004c908:	f004 fd86 	bl	d0051418 <entitySetPosition>
d004c90c:	ed9f 1a16 	vldr	s2, [pc, #88]	; d004c968 <FireTurret+0x11c>
d004c910:	4629      	mov	r1, r5
d004c912:	ed9d 0a08 	vldr	s0, [sp, #32]
d004c916:	eef0 0a41 	vmov.f32	s1, s2
d004c91a:	88a0      	ldrh	r0, [r4, #4]
d004c91c:	f004 fef4 	bl	d0051708 <entityRotation>
d004c920:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004c968 <FireTurret+0x11c>
d004c924:	88a0      	ldrh	r0, [r4, #4]
d004c926:	2100      	movs	r1, #0
d004c928:	eeb0 0a41 	vmov.f32	s0, s2
d004c92c:	eddd 0a07 	vldr	s1, [sp, #28]
d004c930:	f004 feea 	bl	d0051708 <entityRotation>
d004c934:	4629      	mov	r1, r5
d004c936:	88a0      	ldrh	r0, [r4, #4]
d004c938:	b011      	add	sp, #68	; 0x44
d004c93a:	ecbd 8b02 	vpop	{d8}
d004c93e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004c942:	f005 b987 	b.w	d0051c54 <entityVisible>
d004c946:	2201      	movs	r2, #1
d004c948:	e7c7      	b.n	d004c8da <FireTurret+0x8e>
d004c94a:	2202      	movs	r2, #2
d004c94c:	e7c5      	b.n	d004c8da <FireTurret+0x8e>
d004c94e:	2203      	movs	r2, #3
d004c950:	e7c3      	b.n	d004c8da <FireTurret+0x8e>
d004c952:	2204      	movs	r2, #4
d004c954:	e7c1      	b.n	d004c8da <FireTurret+0x8e>
d004c956:	2205      	movs	r2, #5
d004c958:	e7bf      	b.n	d004c8da <FireTurret+0x8e>
d004c95a:	2207      	movs	r2, #7
d004c95c:	e7bd      	b.n	d004c8da <FireTurret+0x8e>
d004c95e:	bf00      	nop
d004c960:	42480000 	.word	0x42480000
d004c964:	d00f462c 	.word	0xd00f462c
d004c968:	00000000 	.word	0x00000000

d004c96c <UpdateTurretTest.part.0>:
d004c96c:	b500      	push	{lr}
d004c96e:	b085      	sub	sp, #20
d004c970:	f008 fcf8 	bl	d0055364 <rand>
d004c974:	4a24      	ldr	r2, [pc, #144]	; (d004ca08 <UpdateTurretTest.part.0+0x9c>)
d004c976:	fb82 3200 	smull	r3, r2, r2, r0
d004c97a:	17c3      	asrs	r3, r0, #31
d004c97c:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d004c980:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004c984:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004c988:	1ac0      	subs	r0, r0, r3
d004c98a:	2802      	cmp	r0, #2
d004c98c:	dc1f      	bgt.n	d004c9ce <UpdateTurretTest.part.0+0x62>
d004c98e:	4b1f      	ldr	r3, [pc, #124]	; (d004ca0c <UpdateTurretTest.part.0+0xa0>)
d004c990:	6818      	ldr	r0, [r3, #0]
d004c992:	f004 fd65 	bl	d0051460 <entityGetPosition>
d004c996:	4b1e      	ldr	r3, [pc, #120]	; (d004ca10 <UpdateTurretTest.part.0+0xa4>)
d004c998:	8818      	ldrh	r0, [r3, #0]
d004c99a:	f7ff ff57 	bl	d004c84c <FireTurret>
d004c99e:	4a1d      	ldr	r2, [pc, #116]	; (d004ca14 <UpdateTurretTest.part.0+0xa8>)
d004c9a0:	8813      	ldrh	r3, [r2, #0]
d004c9a2:	3b01      	subs	r3, #1
d004c9a4:	b21b      	sxth	r3, r3
d004c9a6:	2b00      	cmp	r3, #0
d004c9a8:	8013      	strh	r3, [r2, #0]
d004c9aa:	dd1c      	ble.n	d004c9e6 <UpdateTurretTest.part.0+0x7a>
d004c9ac:	f008 fcda 	bl	d0055364 <rand>
d004c9b0:	4a19      	ldr	r2, [pc, #100]	; (d004ca18 <UpdateTurretTest.part.0+0xac>)
d004c9b2:	491a      	ldr	r1, [pc, #104]	; (d004ca1c <UpdateTurretTest.part.0+0xb0>)
d004c9b4:	fb82 3200 	smull	r3, r2, r2, r0
d004c9b8:	17c3      	asrs	r3, r0, #31
d004c9ba:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d004c9be:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004c9c2:	1ac0      	subs	r0, r0, r3
d004c9c4:	3004      	adds	r0, #4
d004c9c6:	8008      	strh	r0, [r1, #0]
d004c9c8:	b005      	add	sp, #20
d004c9ca:	f85d fb04 	ldr.w	pc, [sp], #4
d004c9ce:	4b14      	ldr	r3, [pc, #80]	; (d004ca20 <UpdateTurretTest.part.0+0xb4>)
d004c9d0:	4a0f      	ldr	r2, [pc, #60]	; (d004ca10 <UpdateTurretTest.part.0+0xa4>)
d004c9d2:	ed93 0a00 	vldr	s0, [r3]
d004c9d6:	edd3 0a01 	vldr	s1, [r3, #4]
d004c9da:	ed93 1a02 	vldr	s2, [r3, #8]
d004c9de:	8810      	ldrh	r0, [r2, #0]
d004c9e0:	f7ff ff34 	bl	d004c84c <FireTurret>
d004c9e4:	e7db      	b.n	d004c99e <UpdateTurretTest.part.0+0x32>
d004c9e6:	f008 fcbd 	bl	d0055364 <rand>
d004c9ea:	4b0e      	ldr	r3, [pc, #56]	; (d004ca24 <UpdateTurretTest.part.0+0xb8>)
d004c9ec:	4a0b      	ldr	r2, [pc, #44]	; (d004ca1c <UpdateTurretTest.part.0+0xb0>)
d004c9ee:	fb83 1300 	smull	r1, r3, r3, r0
d004c9f2:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d004c9f6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d004c9fa:	eba0 0043 	sub.w	r0, r0, r3, lsl #1
d004c9fe:	300f      	adds	r0, #15
d004ca00:	8010      	strh	r0, [r2, #0]
d004ca02:	b005      	add	sp, #20
d004ca04:	f85d fb04 	ldr.w	pc, [sp], #4
d004ca08:	2e8ba2e9 	.word	0x2e8ba2e9
d004ca0c:	d005a0a0 	.word	0xd005a0a0
d004ca10:	d005a250 	.word	0xd005a250
d004ca14:	d005a254 	.word	0xd005a254
d004ca18:	66666667 	.word	0x66666667
d004ca1c:	d005a256 	.word	0xd005a256
d004ca20:	d005a040 	.word	0xd005a040
d004ca24:	2aaaaaab 	.word	0x2aaaaaab

d004ca28 <FirePlayerLaser>:
d004ca28:	b570      	push	{r4, r5, r6, lr}
d004ca2a:	4db0      	ldr	r5, [pc, #704]	; (d004ccec <FirePlayerLaser+0x2c4>)
d004ca2c:	2100      	movs	r1, #0
d004ca2e:	4cb0      	ldr	r4, [pc, #704]	; (d004ccf0 <FirePlayerLaser+0x2c8>)
d004ca30:	4628      	mov	r0, r5
d004ca32:	ed2d 8b06 	vpush	{d8-d10}
d004ca36:	b086      	sub	sp, #24
d004ca38:	f003 ff14 	bl	d0050864 <cameraGetRotation>
d004ca3c:	eeb3 5a0e 	vmov.f32	s10, #62	; 0x41f00000  30.0
d004ca40:	edd5 7a0e 	vldr	s15, [r5, #56]	; 0x38
d004ca44:	eeb9 6a00 	vmov.f32	s12, #144	; 0xc0800000 -4.0
d004ca48:	edd5 6a0c 	vldr	s13, [r5, #48]	; 0x30
d004ca4c:	eef0 9a60 	vmov.f32	s19, s1
d004ca50:	ee67 7a85 	vmul.f32	s15, s15, s10
d004ca54:	ed95 7a0d 	vldr	s14, [r5, #52]	; 0x34
d004ca58:	ee66 6a85 	vmul.f32	s13, s13, s10
d004ca5c:	eddf 5aa5 	vldr	s11, [pc, #660]	; d004ccf4 <FirePlayerLaser+0x2cc>
d004ca60:	ee27 7a05 	vmul.f32	s14, s14, s10
d004ca64:	edd5 3a08 	vldr	s7, [r5, #32]
d004ca68:	eeb0 4a67 	vmov.f32	s8, s15
d004ca6c:	edd5 2a06 	vldr	s5, [r5, #24]
d004ca70:	eef0 4a66 	vmov.f32	s9, s13
d004ca74:	ed95 3a07 	vldr	s6, [r5, #28]
d004ca78:	eeb0 5a47 	vmov.f32	s10, s14
d004ca7c:	edd5 1a09 	vldr	s3, [r5, #36]	; 0x24
d004ca80:	eea3 4aa5 	vfma.f32	s8, s7, s11
d004ca84:	ed95 9a00 	vldr	s18, [r5]
d004ca88:	eee2 4aa5 	vfma.f32	s9, s5, s11
d004ca8c:	edd5 8a01 	vldr	s17, [r5, #4]
d004ca90:	eea3 5a25 	vfma.f32	s10, s6, s11
d004ca94:	ed95 2a0b 	vldr	s4, [r5, #44]	; 0x2c
d004ca98:	ed95 8a02 	vldr	s16, [r5, #8]
d004ca9c:	eee1 6a86 	vfma.f32	s13, s3, s12
d004caa0:	eee2 7a06 	vfma.f32	s15, s4, s12
d004caa4:	7823      	ldrb	r3, [r4, #0]
d004caa6:	eeb0 aa40 	vmov.f32	s20, s0
d004caaa:	edcd 0a01 	vstr	s1, [sp, #4]
d004caae:	eef0 5a44 	vmov.f32	s11, s8
d004cab2:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d004cab6:	ee74 4a89 	vadd.f32	s9, s9, s18
d004caba:	ed8d 1a02 	vstr	s2, [sp, #8]
d004cabe:	eea4 7a06 	vfma.f32	s14, s8, s12
d004cac2:	ed8d 0a00 	vstr	s0, [sp]
d004cac6:	ee35 5a28 	vadd.f32	s10, s10, s17
d004caca:	ee75 5a88 	vadd.f32	s11, s11, s16
d004cace:	eee1 4a86 	vfma.f32	s9, s3, s12
d004cad2:	eea4 5a06 	vfma.f32	s10, s8, s12
d004cad6:	ed9f 4a88 	vldr	s8, [pc, #544]	; d004ccf8 <FirePlayerLaser+0x2d0>
d004cada:	eee2 5a06 	vfma.f32	s11, s4, s12
d004cade:	ee36 9a89 	vadd.f32	s18, s13, s18
d004cae2:	ee77 8a28 	vadd.f32	s17, s14, s17
d004cae6:	ee37 8a88 	vadd.f32	s16, s15, s16
d004caea:	eea2 9a84 	vfma.f32	s18, s5, s8
d004caee:	edcd 4a03 	vstr	s9, [sp, #12]
d004caf2:	eee3 8a04 	vfma.f32	s17, s6, s8
d004caf6:	ed8d 5a04 	vstr	s10, [sp, #16]
d004cafa:	eea3 8a84 	vfma.f32	s16, s7, s8
d004cafe:	edcd 5a05 	vstr	s11, [sp, #20]
d004cb02:	2b00      	cmp	r3, #0
d004cb04:	f000 80af 	beq.w	d004cc66 <FirePlayerLaser+0x23e>
d004cb08:	79a3      	ldrb	r3, [r4, #6]
d004cb0a:	2b00      	cmp	r3, #0
d004cb0c:	f000 80d8 	beq.w	d004ccc0 <FirePlayerLaser+0x298>
d004cb10:	7b23      	ldrb	r3, [r4, #12]
d004cb12:	2b00      	cmp	r3, #0
d004cb14:	f000 80d8 	beq.w	d004ccc8 <FirePlayerLaser+0x2a0>
d004cb18:	7ca3      	ldrb	r3, [r4, #18]
d004cb1a:	2b00      	cmp	r3, #0
d004cb1c:	f000 80d8 	beq.w	d004ccd0 <FirePlayerLaser+0x2a8>
d004cb20:	7e23      	ldrb	r3, [r4, #24]
d004cb22:	2b00      	cmp	r3, #0
d004cb24:	f000 80d8 	beq.w	d004ccd8 <FirePlayerLaser+0x2b0>
d004cb28:	7fa3      	ldrb	r3, [r4, #30]
d004cb2a:	2b00      	cmp	r3, #0
d004cb2c:	f000 80d8 	beq.w	d004cce0 <FirePlayerLaser+0x2b8>
d004cb30:	f894 3024 	ldrb.w	r3, [r4, #36]	; 0x24
d004cb34:	2b00      	cmp	r3, #0
d004cb36:	f000 8095 	beq.w	d004cc64 <FirePlayerLaser+0x23c>
d004cb3a:	f894 302a 	ldrb.w	r3, [r4, #42]	; 0x2a
d004cb3e:	2b00      	cmp	r3, #0
d004cb40:	f000 80d2 	beq.w	d004cce8 <FirePlayerLaser+0x2c0>
d004cb44:	2500      	movs	r5, #0
d004cb46:	7823      	ldrb	r3, [r4, #0]
d004cb48:	ed8d 9a03 	vstr	s18, [sp, #12]
d004cb4c:	edcd 8a04 	vstr	s17, [sp, #16]
d004cb50:	ed8d 8a05 	vstr	s16, [sp, #20]
d004cb54:	b30b      	cbz	r3, d004cb9a <FirePlayerLaser+0x172>
d004cb56:	79a3      	ldrb	r3, [r4, #6]
d004cb58:	2b00      	cmp	r3, #0
d004cb5a:	f000 80af 	beq.w	d004ccbc <FirePlayerLaser+0x294>
d004cb5e:	7b23      	ldrb	r3, [r4, #12]
d004cb60:	2b00      	cmp	r3, #0
d004cb62:	f000 80af 	beq.w	d004ccc4 <FirePlayerLaser+0x29c>
d004cb66:	7ca3      	ldrb	r3, [r4, #18]
d004cb68:	2b00      	cmp	r3, #0
d004cb6a:	f000 80af 	beq.w	d004cccc <FirePlayerLaser+0x2a4>
d004cb6e:	7e23      	ldrb	r3, [r4, #24]
d004cb70:	2b00      	cmp	r3, #0
d004cb72:	f000 80af 	beq.w	d004ccd4 <FirePlayerLaser+0x2ac>
d004cb76:	7fa3      	ldrb	r3, [r4, #30]
d004cb78:	2b00      	cmp	r3, #0
d004cb7a:	f000 80af 	beq.w	d004ccdc <FirePlayerLaser+0x2b4>
d004cb7e:	f894 3024 	ldrb.w	r3, [r4, #36]	; 0x24
d004cb82:	b14b      	cbz	r3, d004cb98 <FirePlayerLaser+0x170>
d004cb84:	f894 302a 	ldrb.w	r3, [r4, #42]	; 0x2a
d004cb88:	2b00      	cmp	r3, #0
d004cb8a:	f000 80ab 	beq.w	d004cce4 <FirePlayerLaser+0x2bc>
d004cb8e:	bb75      	cbnz	r5, d004cbee <FirePlayerLaser+0x1c6>
d004cb90:	b006      	add	sp, #24
d004cb92:	ecbd 8b06 	vpop	{d8-d10}
d004cb96:	bd70      	pop	{r4, r5, r6, pc}
d004cb98:	2306      	movs	r3, #6
d004cb9a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d004cb9e:	2232      	movs	r2, #50	; 0x32
d004cba0:	2601      	movs	r6, #1
d004cba2:	ed9d 0a03 	vldr	s0, [sp, #12]
d004cba6:	eb04 0543 	add.w	r5, r4, r3, lsl #1
d004cbaa:	eddd 0a04 	vldr	s1, [sp, #16]
d004cbae:	f804 6013 	strb.w	r6, [r4, r3, lsl #1]
d004cbb2:	806a      	strh	r2, [r5, #2]
d004cbb4:	ed9d 1a05 	vldr	s2, [sp, #20]
d004cbb8:	88a8      	ldrh	r0, [r5, #4]
d004cbba:	f004 fc2d 	bl	d0051418 <entitySetPosition>
d004cbbe:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d004ccfc <FirePlayerLaser+0x2d4>
d004cbc2:	eeb0 0a4a 	vmov.f32	s0, s20
d004cbc6:	4631      	mov	r1, r6
d004cbc8:	eef0 0a41 	vmov.f32	s1, s2
d004cbcc:	88a8      	ldrh	r0, [r5, #4]
d004cbce:	f004 fd9b 	bl	d0051708 <entityRotation>
d004cbd2:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d004ccfc <FirePlayerLaser+0x2d4>
d004cbd6:	88a8      	ldrh	r0, [r5, #4]
d004cbd8:	2100      	movs	r1, #0
d004cbda:	eef1 0a69 	vneg.f32	s1, s19
d004cbde:	eeb0 0a41 	vmov.f32	s0, s2
d004cbe2:	f004 fd91 	bl	d0051708 <entityRotation>
d004cbe6:	4631      	mov	r1, r6
d004cbe8:	88a8      	ldrh	r0, [r5, #4]
d004cbea:	f005 f833 	bl	d0051c54 <entityVisible>
d004cbee:	4a44      	ldr	r2, [pc, #272]	; (d004cd00 <FirePlayerLaser+0x2d8>)
d004cbf0:	4c44      	ldr	r4, [pc, #272]	; (d004cd04 <FirePlayerLaser+0x2dc>)
d004cbf2:	7813      	ldrb	r3, [r2, #0]
d004cbf4:	f1c3 0301 	rsb	r3, r3, #1
d004cbf8:	b2db      	uxtb	r3, r3
d004cbfa:	7013      	strb	r3, [r2, #0]
d004cbfc:	bb03      	cbnz	r3, d004cc40 <FirePlayerLaser+0x218>
d004cbfe:	7d23      	ldrb	r3, [r4, #20]
d004cc00:	2007      	movs	r0, #7
d004cc02:	7d62      	ldrb	r2, [r4, #21]
d004cc04:	7da1      	ldrb	r1, [r4, #22]
d004cc06:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004cc0a:	7de2      	ldrb	r2, [r4, #23]
d004cc0c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004cc10:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004cc14:	689b      	ldr	r3, [r3, #8]
d004cc16:	689b      	ldr	r3, [r3, #8]
d004cc18:	4798      	blx	r3
d004cc1a:	7d23      	ldrb	r3, [r4, #20]
d004cc1c:	2007      	movs	r0, #7
d004cc1e:	7d62      	ldrb	r2, [r4, #21]
d004cc20:	7da1      	ldrb	r1, [r4, #22]
d004cc22:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004cc26:	7de2      	ldrb	r2, [r4, #23]
d004cc28:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004cc2c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004cc30:	689b      	ldr	r3, [r3, #8]
d004cc32:	685b      	ldr	r3, [r3, #4]
d004cc34:	b006      	add	sp, #24
d004cc36:	ecbd 8b06 	vpop	{d8-d10}
d004cc3a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004cc3e:	4718      	bx	r3
d004cc40:	7d23      	ldrb	r3, [r4, #20]
d004cc42:	2006      	movs	r0, #6
d004cc44:	7d62      	ldrb	r2, [r4, #21]
d004cc46:	7da1      	ldrb	r1, [r4, #22]
d004cc48:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004cc4c:	7de2      	ldrb	r2, [r4, #23]
d004cc4e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004cc52:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004cc56:	689b      	ldr	r3, [r3, #8]
d004cc58:	689b      	ldr	r3, [r3, #8]
d004cc5a:	4798      	blx	r3
d004cc5c:	7d23      	ldrb	r3, [r4, #20]
d004cc5e:	2006      	movs	r0, #6
d004cc60:	7d62      	ldrb	r2, [r4, #21]
d004cc62:	e7dd      	b.n	d004cc20 <FirePlayerLaser+0x1f8>
d004cc64:	2306      	movs	r3, #6
d004cc66:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d004cc6a:	2232      	movs	r2, #50	; 0x32
d004cc6c:	2501      	movs	r5, #1
d004cc6e:	ed9d 0a03 	vldr	s0, [sp, #12]
d004cc72:	eb04 0643 	add.w	r6, r4, r3, lsl #1
d004cc76:	eddd 0a04 	vldr	s1, [sp, #16]
d004cc7a:	f804 5013 	strb.w	r5, [r4, r3, lsl #1]
d004cc7e:	8072      	strh	r2, [r6, #2]
d004cc80:	ed9d 1a05 	vldr	s2, [sp, #20]
d004cc84:	88b0      	ldrh	r0, [r6, #4]
d004cc86:	f004 fbc7 	bl	d0051418 <entitySetPosition>
d004cc8a:	ed9f 1a1c 	vldr	s2, [pc, #112]	; d004ccfc <FirePlayerLaser+0x2d4>
d004cc8e:	eeb0 0a4a 	vmov.f32	s0, s20
d004cc92:	4629      	mov	r1, r5
d004cc94:	eef0 0a41 	vmov.f32	s1, s2
d004cc98:	88b0      	ldrh	r0, [r6, #4]
d004cc9a:	f004 fd35 	bl	d0051708 <entityRotation>
d004cc9e:	ed9f 1a17 	vldr	s2, [pc, #92]	; d004ccfc <FirePlayerLaser+0x2d4>
d004cca2:	88b0      	ldrh	r0, [r6, #4]
d004cca4:	eef1 0a69 	vneg.f32	s1, s19
d004cca8:	eeb0 0a41 	vmov.f32	s0, s2
d004ccac:	2100      	movs	r1, #0
d004ccae:	f004 fd2b 	bl	d0051708 <entityRotation>
d004ccb2:	4629      	mov	r1, r5
d004ccb4:	88b0      	ldrh	r0, [r6, #4]
d004ccb6:	f004 ffcd 	bl	d0051c54 <entityVisible>
d004ccba:	e744      	b.n	d004cb46 <FirePlayerLaser+0x11e>
d004ccbc:	2301      	movs	r3, #1
d004ccbe:	e76c      	b.n	d004cb9a <FirePlayerLaser+0x172>
d004ccc0:	2301      	movs	r3, #1
d004ccc2:	e7d0      	b.n	d004cc66 <FirePlayerLaser+0x23e>
d004ccc4:	2302      	movs	r3, #2
d004ccc6:	e768      	b.n	d004cb9a <FirePlayerLaser+0x172>
d004ccc8:	2302      	movs	r3, #2
d004ccca:	e7cc      	b.n	d004cc66 <FirePlayerLaser+0x23e>
d004cccc:	2303      	movs	r3, #3
d004ccce:	e764      	b.n	d004cb9a <FirePlayerLaser+0x172>
d004ccd0:	2303      	movs	r3, #3
d004ccd2:	e7c8      	b.n	d004cc66 <FirePlayerLaser+0x23e>
d004ccd4:	2304      	movs	r3, #4
d004ccd6:	e760      	b.n	d004cb9a <FirePlayerLaser+0x172>
d004ccd8:	2304      	movs	r3, #4
d004ccda:	e7c4      	b.n	d004cc66 <FirePlayerLaser+0x23e>
d004ccdc:	2305      	movs	r3, #5
d004ccde:	e75c      	b.n	d004cb9a <FirePlayerLaser+0x172>
d004cce0:	2305      	movs	r3, #5
d004cce2:	e7c0      	b.n	d004cc66 <FirePlayerLaser+0x23e>
d004cce4:	2307      	movs	r3, #7
d004cce6:	e758      	b.n	d004cb9a <FirePlayerLaser+0x172>
d004cce8:	2307      	movs	r3, #7
d004ccea:	e7bc      	b.n	d004cc66 <FirePlayerLaser+0x23e>
d004ccec:	d005a040 	.word	0xd005a040
d004ccf0:	d00f4700 	.word	0xd00f4700
d004ccf4:	c2680000 	.word	0xc2680000
d004ccf8:	42680000 	.word	0x42680000
d004ccfc:	00000000 	.word	0x00000000
d004cd00:	d005a22d 	.word	0xd005a22d
d004cd04:	2001f000 	.word	0x2001f000

d004cd08 <UpdateLasers>:
d004cd08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004cd0c:	eddf 7a89 	vldr	s15, [pc, #548]	; d004cf34 <UpdateLasers+0x22c>
d004cd10:	2600      	movs	r6, #0
d004cd12:	4c89      	ldr	r4, [pc, #548]	; (d004cf38 <UpdateLasers+0x230>)
d004cd14:	ed2d 8b02 	vpush	{d8}
d004cd18:	f104 0530 	add.w	r5, r4, #48	; 0x30
d004cd1c:	ee20 8a27 	vmul.f32	s16, s0, s15
d004cd20:	b08b      	sub	sp, #44	; 0x2c
d004cd22:	e007      	b.n	d004cd34 <UpdateLasers+0x2c>
d004cd24:	2100      	movs	r1, #0
d004cd26:	88a0      	ldrh	r0, [r4, #4]
d004cd28:	7026      	strb	r6, [r4, #0]
d004cd2a:	f004 ff93 	bl	d0051c54 <entityVisible>
d004cd2e:	3406      	adds	r4, #6
d004cd30:	42a5      	cmp	r5, r4
d004cd32:	d012      	beq.n	d004cd5a <UpdateLasers+0x52>
d004cd34:	7823      	ldrb	r3, [r4, #0]
d004cd36:	2b00      	cmp	r3, #0
d004cd38:	d0f9      	beq.n	d004cd2e <UpdateLasers+0x26>
d004cd3a:	8863      	ldrh	r3, [r4, #2]
d004cd3c:	2b00      	cmp	r3, #0
d004cd3e:	d0f1      	beq.n	d004cd24 <UpdateLasers+0x1c>
d004cd40:	3b01      	subs	r3, #1
d004cd42:	eeb0 0a48 	vmov.f32	s0, s16
d004cd46:	88a0      	ldrh	r0, [r4, #4]
d004cd48:	8063      	strh	r3, [r4, #2]
d004cd4a:	f004 fbc9 	bl	d00514e0 <entityMoveForward>
d004cd4e:	8863      	ldrh	r3, [r4, #2]
d004cd50:	2b00      	cmp	r3, #0
d004cd52:	d0e7      	beq.n	d004cd24 <UpdateLasers+0x1c>
d004cd54:	3406      	adds	r4, #6
d004cd56:	42a5      	cmp	r5, r4
d004cd58:	d1ec      	bne.n	d004cd34 <UpdateLasers+0x2c>
d004cd5a:	4c78      	ldr	r4, [pc, #480]	; (d004cf3c <UpdateLasers+0x234>)
d004cd5c:	f04f 0a00 	mov.w	sl, #0
d004cd60:	f8df 91e4 	ldr.w	r9, [pc, #484]	; d004cf48 <UpdateLasers+0x240>
d004cd64:	f104 0530 	add.w	r5, r4, #48	; 0x30
d004cd68:	f8df 81e0 	ldr.w	r8, [pc, #480]	; d004cf4c <UpdateLasers+0x244>
d004cd6c:	e007      	b.n	d004cd7e <UpdateLasers+0x76>
d004cd6e:	2100      	movs	r1, #0
d004cd70:	88a0      	ldrh	r0, [r4, #4]
d004cd72:	7021      	strb	r1, [r4, #0]
d004cd74:	f004 ff6e 	bl	d0051c54 <entityVisible>
d004cd78:	3406      	adds	r4, #6
d004cd7a:	42a5      	cmp	r5, r4
d004cd7c:	d01a      	beq.n	d004cdb4 <UpdateLasers+0xac>
d004cd7e:	7823      	ldrb	r3, [r4, #0]
d004cd80:	2b00      	cmp	r3, #0
d004cd82:	d0f9      	beq.n	d004cd78 <UpdateLasers+0x70>
d004cd84:	8863      	ldrh	r3, [r4, #2]
d004cd86:	2b00      	cmp	r3, #0
d004cd88:	d0f1      	beq.n	d004cd6e <UpdateLasers+0x66>
d004cd8a:	3b01      	subs	r3, #1
d004cd8c:	88a0      	ldrh	r0, [r4, #4]
d004cd8e:	eeb0 0a48 	vmov.f32	s0, s16
d004cd92:	8063      	strh	r3, [r4, #2]
d004cd94:	f004 fba4 	bl	d00514e0 <entityMoveForward>
d004cd98:	4969      	ldr	r1, [pc, #420]	; (d004cf40 <UpdateLasers+0x238>)
d004cd9a:	2300      	movs	r3, #0
d004cd9c:	aa01      	add	r2, sp, #4
d004cd9e:	88a0      	ldrh	r0, [r4, #4]
d004cda0:	6809      	ldr	r1, [r1, #0]
d004cda2:	f004 ff71 	bl	d0051c88 <entitySweepRaycastTest>
d004cda6:	b950      	cbnz	r0, d004cdbe <UpdateLasers+0xb6>
d004cda8:	8863      	ldrh	r3, [r4, #2]
d004cdaa:	2b00      	cmp	r3, #0
d004cdac:	d0df      	beq.n	d004cd6e <UpdateLasers+0x66>
d004cdae:	3406      	adds	r4, #6
d004cdb0:	42a5      	cmp	r5, r4
d004cdb2:	d1e4      	bne.n	d004cd7e <UpdateLasers+0x76>
d004cdb4:	b00b      	add	sp, #44	; 0x2c
d004cdb6:	ecbd 8b02 	vpop	{d8}
d004cdba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004cdbe:	f04f 0b00 	mov.w	fp, #0
d004cdc2:	ed9d 1a03 	vldr	s2, [sp, #12]
d004cdc6:	eddd 0a02 	vldr	s1, [sp, #8]
d004cdca:	af07      	add	r7, sp, #28
d004cdcc:	ed9d 0a01 	vldr	s0, [sp, #4]
d004cdd0:	f8a4 b002 	strh.w	fp, [r4, #2]
d004cdd4:	f003 fb60 	bl	d0050498 <vec3>
d004cdd8:	4e5a      	ldr	r6, [pc, #360]	; (d004cf44 <UpdateLasers+0x23c>)
d004cdda:	aa04      	add	r2, sp, #16
d004cddc:	ed8d 0a04 	vstr	s0, [sp, #16]
d004cde0:	edcd 0a05 	vstr	s1, [sp, #20]
d004cde4:	ed8d 1a06 	vstr	s2, [sp, #24]
d004cde8:	7833      	ldrb	r3, [r6, #0]
d004cdea:	ca07      	ldmia	r2, {r0, r1, r2}
d004cdec:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d004cdf0:	2b00      	cmp	r3, #0
d004cdf2:	d058      	beq.n	d004cea6 <UpdateLasers+0x19e>
d004cdf4:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d004cdf8:	edd6 7a04 	vldr	s15, [r6, #16]
d004cdfc:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce04:	dd62      	ble.n	d004cecc <UpdateLasers+0x1c4>
d004ce06:	465b      	mov	r3, fp
d004ce08:	7f32      	ldrb	r2, [r6, #28]
d004ce0a:	2a00      	cmp	r2, #0
d004ce0c:	f000 8086 	beq.w	d004cf1c <UpdateLasers+0x214>
d004ce10:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d004ce14:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce1c:	d45b      	bmi.n	d004ced6 <UpdateLasers+0x1ce>
d004ce1e:	f896 2038 	ldrb.w	r2, [r6, #56]	; 0x38
d004ce22:	2a00      	cmp	r2, #0
d004ce24:	d07c      	beq.n	d004cf20 <UpdateLasers+0x218>
d004ce26:	ed96 7a12 	vldr	s14, [r6, #72]	; 0x48
d004ce2a:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce32:	d454      	bmi.n	d004cede <UpdateLasers+0x1d6>
d004ce34:	f896 2054 	ldrb.w	r2, [r6, #84]	; 0x54
d004ce38:	2a00      	cmp	r2, #0
d004ce3a:	d073      	beq.n	d004cf24 <UpdateLasers+0x21c>
d004ce3c:	ed96 7a19 	vldr	s14, [r6, #100]	; 0x64
d004ce40:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce48:	d44d      	bmi.n	d004cee6 <UpdateLasers+0x1de>
d004ce4a:	f896 2070 	ldrb.w	r2, [r6, #112]	; 0x70
d004ce4e:	2a00      	cmp	r2, #0
d004ce50:	d06a      	beq.n	d004cf28 <UpdateLasers+0x220>
d004ce52:	ed96 7a20 	vldr	s14, [r6, #128]	; 0x80
d004ce56:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce5e:	d446      	bmi.n	d004ceee <UpdateLasers+0x1e6>
d004ce60:	f896 208c 	ldrb.w	r2, [r6, #140]	; 0x8c
d004ce64:	2a00      	cmp	r2, #0
d004ce66:	d061      	beq.n	d004cf2c <UpdateLasers+0x224>
d004ce68:	ed96 7a27 	vldr	s14, [r6, #156]	; 0x9c
d004ce6c:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce74:	d43f      	bmi.n	d004cef6 <UpdateLasers+0x1ee>
d004ce76:	f896 20a8 	ldrb.w	r2, [r6, #168]	; 0xa8
d004ce7a:	2a00      	cmp	r2, #0
d004ce7c:	d058      	beq.n	d004cf30 <UpdateLasers+0x228>
d004ce7e:	ed96 7a2e 	vldr	s14, [r6, #184]	; 0xb8
d004ce82:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ce8a:	d438      	bmi.n	d004cefe <UpdateLasers+0x1f6>
d004ce8c:	f896 20c4 	ldrb.w	r2, [r6, #196]	; 0xc4
d004ce90:	2a00      	cmp	r2, #0
d004ce92:	d041      	beq.n	d004cf18 <UpdateLasers+0x210>
d004ce94:	ed96 7a35 	vldr	s14, [r6, #212]	; 0xd4
d004ce98:	eef4 7ac7 	vcmpe.f32	s15, s14
d004ce9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004cea0:	d43a      	bmi.n	d004cf18 <UpdateLasers+0x210>
d004cea2:	1c5a      	adds	r2, r3, #1
d004cea4:	d080      	beq.n	d004cda8 <UpdateLasers+0xa0>
d004cea6:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d004ceaa:	2101      	movs	r1, #1
d004ceac:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d004ceb0:	f806 1023 	strb.w	r1, [r6, r3, lsl #2]
d004ceb4:	f8c2 a010 	str.w	sl, [r2, #16]
d004ceb8:	1d13      	adds	r3, r2, #4
d004ceba:	f8c2 9014 	str.w	r9, [r2, #20]
d004cebe:	f8c2 8018 	str.w	r8, [r2, #24]
d004cec2:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d004cec6:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004ceca:	e76d      	b.n	d004cda8 <UpdateLasers+0xa0>
d004cecc:	eef0 7a47 	vmov.f32	s15, s14
d004ced0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d004ced4:	e798      	b.n	d004ce08 <UpdateLasers+0x100>
d004ced6:	eef0 7a47 	vmov.f32	s15, s14
d004ceda:	2301      	movs	r3, #1
d004cedc:	e79f      	b.n	d004ce1e <UpdateLasers+0x116>
d004cede:	eef0 7a47 	vmov.f32	s15, s14
d004cee2:	2302      	movs	r3, #2
d004cee4:	e7a6      	b.n	d004ce34 <UpdateLasers+0x12c>
d004cee6:	eef0 7a47 	vmov.f32	s15, s14
d004ceea:	2303      	movs	r3, #3
d004ceec:	e7ad      	b.n	d004ce4a <UpdateLasers+0x142>
d004ceee:	eef0 7a47 	vmov.f32	s15, s14
d004cef2:	2304      	movs	r3, #4
d004cef4:	e7b4      	b.n	d004ce60 <UpdateLasers+0x158>
d004cef6:	eef0 7a47 	vmov.f32	s15, s14
d004cefa:	2305      	movs	r3, #5
d004cefc:	e7bb      	b.n	d004ce76 <UpdateLasers+0x16e>
d004cefe:	f896 30c4 	ldrb.w	r3, [r6, #196]	; 0xc4
d004cf02:	b14b      	cbz	r3, d004cf18 <UpdateLasers+0x210>
d004cf04:	edd6 7a35 	vldr	s15, [r6, #212]	; 0xd4
d004cf08:	eef4 7ac7 	vcmpe.f32	s15, s14
d004cf0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004cf10:	bfcc      	ite	gt
d004cf12:	2307      	movgt	r3, #7
d004cf14:	2306      	movle	r3, #6
d004cf16:	e7c6      	b.n	d004cea6 <UpdateLasers+0x19e>
d004cf18:	2307      	movs	r3, #7
d004cf1a:	e7c4      	b.n	d004cea6 <UpdateLasers+0x19e>
d004cf1c:	2301      	movs	r3, #1
d004cf1e:	e7c2      	b.n	d004cea6 <UpdateLasers+0x19e>
d004cf20:	2302      	movs	r3, #2
d004cf22:	e7c0      	b.n	d004cea6 <UpdateLasers+0x19e>
d004cf24:	2303      	movs	r3, #3
d004cf26:	e7be      	b.n	d004cea6 <UpdateLasers+0x19e>
d004cf28:	2304      	movs	r3, #4
d004cf2a:	e7bc      	b.n	d004cea6 <UpdateLasers+0x19e>
d004cf2c:	2305      	movs	r3, #5
d004cf2e:	e7ba      	b.n	d004cea6 <UpdateLasers+0x19e>
d004cf30:	2306      	movs	r3, #6
d004cf32:	e7b8      	b.n	d004cea6 <UpdateLasers+0x19e>
d004cf34:	44fa0000 	.word	0x44fa0000
d004cf38:	d00f462c 	.word	0xd00f462c
d004cf3c:	d00f4700 	.word	0xd00f4700
d004cf40:	d005a224 	.word	0xd005a224
d004cf44:	d005a0c4 	.word	0xd005a0c4
d004cf48:	3f866666 	.word	0x3f866666
d004cf4c:	3f333333 	.word	0x3f333333

d004cf50 <initSmoke>:
d004cf50:	b530      	push	{r4, r5, lr}
d004cf52:	4c0d      	ldr	r4, [pc, #52]	; (d004cf88 <initSmoke+0x38>)
d004cf54:	b085      	sub	sp, #20
d004cf56:	f104 0580 	add.w	r5, r4, #128	; 0x80
d004cf5a:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d004cf5e:	ed9f 0a0b 	vldr	s0, [pc, #44]	; d004cf8c <initSmoke+0x3c>
d004cf62:	eeb0 2a08 	vmov.f32	s4, #8	; 0x40400000  3.0
d004cf66:	2100      	movs	r1, #0
d004cf68:	eef0 0a40 	vmov.f32	s1, s0
d004cf6c:	2021      	movs	r0, #33	; 0x21
d004cf6e:	eef0 1a62 	vmov.f32	s3, s5
d004cf72:	eeb0 1a40 	vmov.f32	s2, s0
d004cf76:	f007 fa9d 	bl	d00544b4 <sb3dParticleSpawnQuad>
d004cf7a:	f844 0f04 	str.w	r0, [r4, #4]!
d004cf7e:	42ac      	cmp	r4, r5
d004cf80:	d1eb      	bne.n	d004cf5a <initSmoke+0xa>
d004cf82:	b005      	add	sp, #20
d004cf84:	bd30      	pop	{r4, r5, pc}
d004cf86:	bf00      	nop
d004cf88:	d00f44dc 	.word	0xd00f44dc
d004cf8c:	00000000 	.word	0x00000000

d004cf90 <updateSmoke>:
d004cf90:	b5f0      	push	{r4, r5, r6, r7, lr}
d004cf92:	ed2d 8b0e 	vpush	{d8-d14}
d004cf96:	ed9f aa42 	vldr	s20, [pc, #264]	; d004d0a0 <updateSmoke+0x110>
d004cf9a:	b089      	sub	sp, #36	; 0x24
d004cf9c:	eddf ba41 	vldr	s23, [pc, #260]	; d004d0a4 <updateSmoke+0x114>
d004cfa0:	2500      	movs	r5, #0
d004cfa2:	ed9f ba41 	vldr	s22, [pc, #260]	; d004d0a8 <updateSmoke+0x118>
d004cfa6:	eef0 9a4a 	vmov.f32	s19, s20
d004cfaa:	4c40      	ldr	r4, [pc, #256]	; (d004d0ac <updateSmoke+0x11c>)
d004cfac:	eef0 da6b 	vmov.f32	s27, s23
d004cfb0:	ee20 aa0a 	vmul.f32	s20, s0, s20
d004cfb4:	eddf aa3e 	vldr	s21, [pc, #248]	; d004d0b0 <updateSmoke+0x120>
d004cfb8:	ee60 ba2b 	vmul.f32	s23, s0, s23
d004cfbc:	f104 0780 	add.w	r7, r4, #128	; 0x80
d004cfc0:	ee20 ba0b 	vmul.f32	s22, s0, s22
d004cfc4:	ed9f da3b 	vldr	s26, [pc, #236]	; d004d0b4 <updateSmoke+0x124>
d004cfc8:	eddf ca3b 	vldr	s25, [pc, #236]	; d004d0b8 <updateSmoke+0x128>
d004cfcc:	ed9f ca3b 	vldr	s24, [pc, #236]	; d004d0bc <updateSmoke+0x12c>
d004cfd0:	edcd 0a01 	vstr	s1, [sp, #4]
d004cfd4:	ed8d 1a02 	vstr	s2, [sp, #8]
d004cfd8:	edcd 1a03 	vstr	s3, [sp, #12]
d004cfdc:	ee07 5a90 	vmov	s15, r5
d004cfe0:	f854 6f04 	ldr.w	r6, [r4, #4]!
d004cfe4:	eeb0 0a4a 	vmov.f32	s0, s20
d004cfe8:	3501      	adds	r5, #1
d004cfea:	eeb8 9ae7 	vcvt.f32.s32	s18, s15
d004cfee:	2e00      	cmp	r6, #0
d004cff0:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004cff4:	eeb3 ea00 	vmov.f32	s28, #48	; 0x41800000  16.0
d004cff8:	eea9 0a2a 	vfma.f32	s0, s18, s21
d004cffc:	db4a      	blt.n	d004d094 <updateSmoke+0x104>
d004cffe:	f009 fcbd 	bl	d005697c <fmodf>
d004d002:	eeb0 8a40 	vmov.f32	s16, s0
d004d006:	eeb0 0a6b 	vmov.f32	s0, s23
d004d00a:	eef0 ea69 	vmov.f32	s29, s19
d004d00e:	eea9 0a0d 	vfma.f32	s0, s18, s26
d004d012:	f009 fc11 	bl	d0056838 <sinf>
d004d016:	eef7 7a04 	vmov.f32	s15, #116	; 0x3fa00000  1.250
d004d01a:	eef0 8a40 	vmov.f32	s17, s0
d004d01e:	eeb0 0a4b 	vmov.f32	s0, s22
d004d022:	eee8 ea27 	vfma.f32	s29, s16, s15
d004d026:	ee68 8a8e 	vmul.f32	s17, s17, s28
d004d02a:	eea9 0a2c 	vfma.f32	s0, s18, s25
d004d02e:	f009 fa1f 	bl	d0056470 <cosf>
d004d032:	eeb0 9a6d 	vmov.f32	s18, s27
d004d036:	eef0 7a0c 	vmov.f32	s15, #12	; 0x40600000  3.5
d004d03a:	eddd 6a01 	vldr	s13, [sp, #4]
d004d03e:	ee38 7a29 	vadd.f32	s14, s16, s19
d004d042:	ed9d 1a03 	vldr	s2, [sp, #12]
d004d046:	eeee 6aa8 	vfma.f32	s13, s29, s17
d004d04a:	eddd 0a02 	vldr	s1, [sp, #8]
d004d04e:	eea8 9a27 	vfma.f32	s18, s16, s15
d004d052:	4630      	mov	r0, r6
d004d054:	ee60 7a0e 	vmul.f32	s15, s0, s28
d004d058:	eee8 0a0c 	vfma.f32	s1, s16, s24
d004d05c:	eea7 1a27 	vfma.f32	s2, s14, s15
d004d060:	eeb0 0a66 	vmov.f32	s0, s13
d004d064:	f007 fa6e 	bl	d0054544 <sb3dParticleSetPosition>
d004d068:	ee29 0a0e 	vmul.f32	s0, s18, s28
d004d06c:	6820      	ldr	r0, [r4, #0]
d004d06e:	f007 fa81 	bl	d0054574 <sb3dParticleSetSize>
d004d072:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d076:	6820      	ldr	r0, [r4, #0]
d004d078:	ee38 0a00 	vadd.f32	s0, s16, s0
d004d07c:	ee30 0a00 	vadd.f32	s0, s0, s0
d004d080:	f007 fa8e 	bl	d00545a0 <sb3dParticleSetShade>
d004d084:	2121      	movs	r1, #33	; 0x21
d004d086:	6820      	ldr	r0, [r4, #0]
d004d088:	f007 faa0 	bl	d00545cc <sb3dParticleSetColor>
d004d08c:	2100      	movs	r1, #0
d004d08e:	6820      	ldr	r0, [r4, #0]
d004d090:	f007 faa8 	bl	d00545e4 <sb3dParticleSetEmission>
d004d094:	42a7      	cmp	r7, r4
d004d096:	d1a1      	bne.n	d004cfdc <updateSmoke+0x4c>
d004d098:	b009      	add	sp, #36	; 0x24
d004d09a:	ecbd 8b0e 	vpop	{d8-d14}
d004d09e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004d0a0:	3eb33333 	.word	0x3eb33333
d004d0a4:	3f99999a 	.word	0x3f99999a
d004d0a8:	3f666666 	.word	0x3f666666
d004d0ac:	d00f44dc 	.word	0xd00f44dc
d004d0b0:	3d000000 	.word	0x3d000000
d004d0b4:	3faf5c29 	.word	0x3faf5c29
d004d0b8:	3ff47ae1 	.word	0x3ff47ae1
d004d0bc:	43600000 	.word	0x43600000

d004d0c0 <main>:
d004d0c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004d0c4:	ed2d 8b10 	vpush	{d8-d15}
d004d0c8:	f5ad 4d8a 	sub.w	sp, sp, #17664	; 0x4500
d004d0cc:	4ccc      	ldr	r4, [pc, #816]	; (d004d400 <main+0x340>)
d004d0ce:	f244 2587 	movw	r5, #17031	; 0x4287
d004d0d2:	ed9f 8acc 	vldr	s16, [pc, #816]	; d004d404 <main+0x344>
d004d0d6:	b091      	sub	sp, #68	; 0x44
d004d0d8:	f8df a35c 	ldr.w	sl, [pc, #860]	; d004d438 <main+0x378>
d004d0dc:	f7fe fe82 	bl	d004bde4 <initSystem>
d004d0e0:	7b23      	ldrb	r3, [r4, #12]
d004d0e2:	7b62      	ldrb	r2, [r4, #13]
d004d0e4:	446d      	add	r5, sp
d004d0e6:	7ba1      	ldrb	r1, [r4, #14]
d004d0e8:	2064      	movs	r0, #100	; 0x64
d004d0ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d0ee:	7be2      	ldrb	r2, [r4, #15]
d004d0f0:	f025 051f 	bic.w	r5, r5, #31
d004d0f4:	f8df 8344 	ldr.w	r8, [pc, #836]	; d004d43c <main+0x37c>
d004d0f8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d0fc:	f8df b340 	ldr.w	fp, [pc, #832]	; d004d440 <main+0x380>
d004d100:	f505 7600 	add.w	r6, r5, #512	; 0x200
d004d104:	f505 7710 	add.w	r7, r5, #576	; 0x240
d004d108:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d10c:	f505 72c0 	add.w	r2, r5, #384	; 0x180
d004d110:	9604      	str	r6, [sp, #16]
d004d112:	f505 76e0 	add.w	r6, r5, #448	; 0x1c0
d004d116:	681b      	ldr	r3, [r3, #0]
d004d118:	f505 79a0 	add.w	r9, r5, #320	; 0x140
d004d11c:	9206      	str	r2, [sp, #24]
d004d11e:	689b      	ldr	r3, [r3, #8]
d004d120:	9605      	str	r6, [sp, #20]
d004d122:	4798      	blx	r3
d004d124:	f003 fa3e 	bl	d00505a4 <worldClear>
d004d128:	4eb7      	ldr	r6, [pc, #732]	; (d004d408 <main+0x348>)
d004d12a:	f005 fdd3 	bl	d0052cd4 <setDefaultRenderMode>
d004d12e:	a81c      	add	r0, sp, #112	; 0x70
d004d130:	f003 faa2 	bl	d0050678 <cameraCreate>
d004d134:	a91c      	add	r1, sp, #112	; 0x70
d004d136:	2260      	movs	r2, #96	; 0x60
d004d138:	48b4      	ldr	r0, [pc, #720]	; (d004d40c <main+0x34c>)
d004d13a:	f008 f853 	bl	d00551e4 <memcpy>
d004d13e:	48b3      	ldr	r0, [pc, #716]	; (d004d40c <main+0x34c>)
d004d140:	eddf 0ab3 	vldr	s1, [pc, #716]	; d004d410 <main+0x350>
d004d144:	ed9f 0ab3 	vldr	s0, [pc, #716]	; d004d414 <main+0x354>
d004d148:	f003 fdec 	bl	d0050d24 <cameraSetRange>
d004d14c:	eeb0 1a48 	vmov.f32	s2, s16
d004d150:	eeb0 0a48 	vmov.f32	s0, s16
d004d154:	eddf 0ab0 	vldr	s1, [pc, #704]	; d004d418 <main+0x358>
d004d158:	f003 f99e 	bl	d0050498 <vec3>
d004d15c:	48ab      	ldr	r0, [pc, #684]	; (d004d40c <main+0x34c>)
d004d15e:	edcd 0a46 	vstr	s1, [sp, #280]	; 0x118
d004d162:	ed8d 0a45 	vstr	s0, [sp, #276]	; 0x114
d004d166:	ed8d 1a47 	vstr	s2, [sp, #284]	; 0x11c
d004d16a:	f003 fa8f 	bl	d005068c <cameraSetPosition>
d004d16e:	48a7      	ldr	r0, [pc, #668]	; (d004d40c <main+0x34c>)
d004d170:	f003 fa2c 	bl	d00505cc <cameraNormalize>
d004d174:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d004d178:	f505 7020 	add.w	r0, r5, #640	; 0x280
d004d17c:	eddf 9aa7 	vldr	s19, [pc, #668]	; d004d41c <main+0x35c>
d004d180:	ed9f 9aa7 	vldr	s18, [pc, #668]	; d004d420 <main+0x360>
d004d184:	eef0 0a41 	vmov.f32	s1, s2
d004d188:	eeb0 0a41 	vmov.f32	s0, s2
d004d18c:	f004 facc 	bl	d0051728 <createBox>
d004d190:	eeb0 1a48 	vmov.f32	s2, s16
d004d194:	eef0 0a48 	vmov.f32	s1, s16
d004d198:	eeb0 0a48 	vmov.f32	s0, s16
d004d19c:	f003 f97c 	bl	d0050498 <vec3>
d004d1a0:	a834      	add	r0, sp, #208	; 0xd0
d004d1a2:	edcd 0a49 	vstr	s1, [sp, #292]	; 0x124
d004d1a6:	ed8d 0a48 	vstr	s0, [sp, #288]	; 0x120
d004d1aa:	ed8d 1a4a 	vstr	s2, [sp, #296]	; 0x128
d004d1ae:	f004 f8ed 	bl	d005138c <entityWorldSpawn>
d004d1b2:	f244 5340 	movw	r3, #17728	; 0x4540
d004d1b6:	446b      	add	r3, sp
d004d1b8:	f843 000a 	str.w	r0, [r3, sl]
d004d1bc:	f7ff fec8 	bl	d004cf50 <initSmoke>
d004d1c0:	f7ff f83c 	bl	d004c23c <initImpactFlames>
d004d1c4:	f50d 7cea 	add.w	ip, sp, #468	; 0x1d4
d004d1c8:	f04f 4a7f 	mov.w	sl, #4278190080	; 0xff000000
d004d1cc:	f50d 7ee0 	add.w	lr, sp, #448	; 0x1c0
d004d1d0:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d1d4:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d1d8:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d1dc:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d1e0:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d1e4:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d1e8:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d004d1ec:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004d1f0:	f108 0c10 	add.w	ip, r8, #16
d004d1f4:	f8c6 a000 	str.w	sl, [r6]
d004d1f8:	f8cd e000 	str.w	lr, [sp]
d004d1fc:	f108 0824 	add.w	r8, r8, #36	; 0x24
d004d200:	f8c6 a040 	str.w	sl, [r6, #64]	; 0x40
d004d204:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d208:	f8dc c000 	ldr.w	ip, [ip]
d004d20c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004d210:	4653      	mov	r3, sl
d004d212:	f8ce c000 	str.w	ip, [lr]
d004d216:	4630      	mov	r0, r6
d004d218:	a975      	add	r1, sp, #468	; 0x1d4
d004d21a:	2210      	movs	r2, #16
d004d21c:	46aa      	mov	sl, r5
d004d21e:	f004 fd8d 	bl	d0051d3c <buildLightingCLUT>
d004d222:	7b23      	ldrb	r3, [r4, #12]
d004d224:	f505 7180 	add.w	r1, r5, #256	; 0x100
d004d228:	7b62      	ldrb	r2, [r4, #13]
d004d22a:	4630      	mov	r0, r6
d004d22c:	4e7d      	ldr	r6, [pc, #500]	; (d004d424 <main+0x364>)
d004d22e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d232:	9107      	str	r1, [sp, #28]
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
d004d252:	f003 f921 	bl	d0050498 <vec3>
d004d256:	eddf 1a6f 	vldr	s3, [pc, #444]	; d004d414 <main+0x354>
d004d25a:	2001      	movs	r0, #1
d004d25c:	edcd 0a4c 	vstr	s1, [sp, #304]	; 0x130
d004d260:	ed8d 0a4b 	vstr	s0, [sp, #300]	; 0x12c
d004d264:	ed8d 1a4d 	vstr	s2, [sp, #308]	; 0x134
d004d268:	f004 ffd6 	bl	d0052218 <addPointLight>
d004d26c:	b2c0      	uxtb	r0, r0
d004d26e:	ab39      	add	r3, sp, #228	; 0xe4
d004d270:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d274:	ee0f 0a90 	vmov	s31, r0
d004d278:	e898 0007 	ldmia.w	r8, {r0, r1, r2}
d004d27c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004d280:	2001      	movs	r0, #1
d004d282:	edd3 0a01 	vldr	s1, [r3, #4]
d004d286:	ed93 1a02 	vldr	s2, [r3, #8]
d004d28a:	ed93 0a00 	vldr	s0, [r3]
d004d28e:	f004 ffff 	bl	d0052290 <addDirectionalLight>
d004d292:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d296:	b2c3      	uxtb	r3, r0
d004d298:	4698      	mov	r8, r3
d004d29a:	4618      	mov	r0, r3
d004d29c:	930b      	str	r3, [sp, #44]	; 0x2c
d004d29e:	f005 f843 	bl	d0052328 <lightSetIntensity>
d004d2a2:	4640      	mov	r0, r8
d004d2a4:	2100      	movs	r1, #0
d004d2a6:	f004 ffa9 	bl	d00521fc <lightEnable>
d004d2aa:	495f      	ldr	r1, [pc, #380]	; (d004d428 <main+0x368>)
d004d2ac:	485f      	ldr	r0, [pc, #380]	; (d004d42c <main+0x36c>)
d004d2ae:	f7fd ff41 	bl	d004b134 <LoadSFX>
d004d2b2:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d2b6:	4602      	mov	r2, r0
d004d2b8:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d2bc:	485a      	ldr	r0, [pc, #360]	; (d004d428 <main+0x368>)
d004d2be:	2300      	movs	r3, #0
d004d2c0:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d2c4:	f8cb 2000 	str.w	r2, [fp]
d004d2c8:	6801      	ldr	r1, [r0, #0]
d004d2ca:	7da0      	ldrb	r0, [r4, #22]
d004d2cc:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d2d0:	7de0      	ldrb	r0, [r4, #23]
d004d2d2:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d2d6:	4618      	mov	r0, r3
d004d2d8:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d2dc:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d2e0:	47c0      	blx	r8
d004d2e2:	7d23      	ldrb	r3, [r4, #20]
d004d2e4:	7d62      	ldrb	r2, [r4, #21]
d004d2e6:	f644 6184 	movw	r1, #20100	; 0x4e84
d004d2ea:	7da0      	ldrb	r0, [r4, #22]
d004d2ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d2f0:	7de2      	ldrb	r2, [r4, #23]
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
d004d360:	4933      	ldr	r1, [pc, #204]	; (d004d430 <main+0x370>)
d004d362:	4834      	ldr	r0, [pc, #208]	; (d004d434 <main+0x374>)
d004d364:	f7fd fee6 	bl	d004b134 <LoadSFX>
d004d368:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d36c:	4602      	mov	r2, r0
d004d36e:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d372:	482f      	ldr	r0, [pc, #188]	; (d004d430 <main+0x370>)
d004d374:	2300      	movs	r3, #0
d004d376:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d37a:	f8cb 2000 	str.w	r2, [fp]
d004d37e:	6801      	ldr	r1, [r0, #0]
d004d380:	7da0      	ldrb	r0, [r4, #22]
d004d382:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d386:	7de0      	ldrb	r0, [r4, #23]
d004d388:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d38c:	2001      	movs	r0, #1
d004d38e:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d392:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d396:	47c0      	blx	r8
d004d398:	7d23      	ldrb	r3, [r4, #20]
d004d39a:	7d62      	ldrb	r2, [r4, #21]
d004d39c:	f244 21cc 	movw	r1, #17100	; 0x42cc
d004d3a0:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d3a4:	2001      	movs	r0, #1
d004d3a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3aa:	7de2      	ldrb	r2, [r4, #23]
d004d3ac:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d3b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3b4:	689b      	ldr	r3, [r3, #8]
d004d3b6:	691b      	ldr	r3, [r3, #16]
d004d3b8:	4798      	blx	r3
d004d3ba:	7d23      	ldrb	r3, [r4, #20]
d004d3bc:	7d62      	ldrb	r2, [r4, #21]
d004d3be:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d3c2:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d3c6:	2001      	movs	r0, #1
d004d3c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3cc:	7de2      	ldrb	r2, [r4, #23]
d004d3ce:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d3d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3d6:	689b      	ldr	r3, [r3, #8]
d004d3d8:	695b      	ldr	r3, [r3, #20]
d004d3da:	4798      	blx	r3
d004d3dc:	7d23      	ldrb	r3, [r4, #20]
d004d3de:	7d62      	ldrb	r2, [r4, #21]
d004d3e0:	2140      	movs	r1, #64	; 0x40
d004d3e2:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d3e6:	2001      	movs	r0, #1
d004d3e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3ec:	7de2      	ldrb	r2, [r4, #23]
d004d3ee:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d3f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3f6:	689b      	ldr	r3, [r3, #8]
d004d3f8:	699b      	ldr	r3, [r3, #24]
d004d3fa:	4798      	blx	r3
d004d3fc:	7d23      	ldrb	r3, [r4, #20]
d004d3fe:	e021      	b.n	d004d444 <main+0x384>
d004d400:	2001f000 	.word	0x2001f000
d004d404:	00000000 	.word	0x00000000
d004d408:	d0059b68 	.word	0xd0059b68
d004d40c:	d005a040 	.word	0xd005a040
d004d410:	459c4000 	.word	0x459c4000
d004d414:	3c23d70a 	.word	0x3c23d70a
d004d418:	42480000 	.word	0x42480000
d004d41c:	42280000 	.word	0x42280000
d004d420:	c3750000 	.word	0xc3750000
d004d424:	d00f46a0 	.word	0xd00f46a0
d004d428:	d00f4600 	.word	0xd00f4600
d004d42c:	d0057154 	.word	0xd0057154
d004d430:	d00f4620 	.word	0xd00f4620
d004d434:	d0057164 	.word	0xd0057164
d004d438:	ffffbb90 	.word	0xffffbb90
d004d43c:	d0057214 	.word	0xd0057214
d004d440:	d00f4628 	.word	0xd00f4628
d004d444:	7d62      	ldrb	r2, [r4, #21]
d004d446:	2100      	movs	r1, #0
d004d448:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d44c:	2001      	movs	r0, #1
d004d44e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d452:	7de2      	ldrb	r2, [r4, #23]
d004d454:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d458:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d45c:	689b      	ldr	r3, [r3, #8]
d004d45e:	6a1b      	ldr	r3, [r3, #32]
d004d460:	4798      	blx	r3
d004d462:	49bb      	ldr	r1, [pc, #748]	; (d004d750 <main+0x690>)
d004d464:	48bb      	ldr	r0, [pc, #748]	; (d004d754 <main+0x694>)
d004d466:	f7fd fe65 	bl	d004b134 <LoadSFX>
d004d46a:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d46e:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d472:	4602      	mov	r2, r0
d004d474:	7da1      	ldrb	r1, [r4, #22]
d004d476:	2300      	movs	r3, #0
d004d478:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d47c:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d480:	f8cb 0000 	str.w	r0, [fp]
d004d484:	2002      	movs	r0, #2
d004d486:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d48a:	6831      	ldr	r1, [r6, #0]
d004d48c:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d490:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d494:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d498:	47c0      	blx	r8
d004d49a:	7d23      	ldrb	r3, [r4, #20]
d004d49c:	7d62      	ldrb	r2, [r4, #21]
d004d49e:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d4a2:	7da0      	ldrb	r0, [r4, #22]
d004d4a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4a8:	7de2      	ldrb	r2, [r4, #23]
d004d4aa:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4ae:	2002      	movs	r0, #2
d004d4b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4b4:	689b      	ldr	r3, [r3, #8]
d004d4b6:	691b      	ldr	r3, [r3, #16]
d004d4b8:	4798      	blx	r3
d004d4ba:	7d23      	ldrb	r3, [r4, #20]
d004d4bc:	7d62      	ldrb	r2, [r4, #21]
d004d4be:	2128      	movs	r1, #40	; 0x28
d004d4c0:	7da0      	ldrb	r0, [r4, #22]
d004d4c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4c6:	7de2      	ldrb	r2, [r4, #23]
d004d4c8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4cc:	2002      	movs	r0, #2
d004d4ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4d2:	689b      	ldr	r3, [r3, #8]
d004d4d4:	695b      	ldr	r3, [r3, #20]
d004d4d6:	4798      	blx	r3
d004d4d8:	7d23      	ldrb	r3, [r4, #20]
d004d4da:	7d62      	ldrb	r2, [r4, #21]
d004d4dc:	2100      	movs	r1, #0
d004d4de:	7da0      	ldrb	r0, [r4, #22]
d004d4e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4e4:	7de2      	ldrb	r2, [r4, #23]
d004d4e6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4ea:	2002      	movs	r0, #2
d004d4ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4f0:	689b      	ldr	r3, [r3, #8]
d004d4f2:	699b      	ldr	r3, [r3, #24]
d004d4f4:	4798      	blx	r3
d004d4f6:	7d23      	ldrb	r3, [r4, #20]
d004d4f8:	7d62      	ldrb	r2, [r4, #21]
d004d4fa:	2101      	movs	r1, #1
d004d4fc:	7da0      	ldrb	r0, [r4, #22]
d004d4fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d502:	7de2      	ldrb	r2, [r4, #23]
d004d504:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d508:	2002      	movs	r0, #2
d004d50a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d50e:	689b      	ldr	r3, [r3, #8]
d004d510:	6a1b      	ldr	r3, [r3, #32]
d004d512:	4798      	blx	r3
d004d514:	7d23      	ldrb	r3, [r4, #20]
d004d516:	7d60      	ldrb	r0, [r4, #21]
d004d518:	2100      	movs	r1, #0
d004d51a:	7da2      	ldrb	r2, [r4, #22]
d004d51c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004d520:	7de0      	ldrb	r0, [r4, #23]
d004d522:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d526:	f8db 2000 	ldr.w	r2, [fp]
d004d52a:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004d52e:	2002      	movs	r0, #2
d004d530:	689b      	ldr	r3, [r3, #8]
d004d532:	69db      	ldr	r3, [r3, #28]
d004d534:	4798      	blx	r3
d004d536:	7d23      	ldrb	r3, [r4, #20]
d004d538:	7d62      	ldrb	r2, [r4, #21]
d004d53a:	2002      	movs	r0, #2
d004d53c:	7da1      	ldrb	r1, [r4, #22]
d004d53e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d542:	7de2      	ldrb	r2, [r4, #23]
d004d544:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d548:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d54c:	689b      	ldr	r3, [r3, #8]
d004d54e:	685b      	ldr	r3, [r3, #4]
d004d550:	4798      	blx	r3
d004d552:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d556:	7d61      	ldrb	r1, [r4, #21]
d004d558:	2300      	movs	r3, #0
d004d55a:	7da2      	ldrb	r2, [r4, #22]
d004d55c:	ea4c 2c01 	orr.w	ip, ip, r1, lsl #8
d004d560:	7de0      	ldrb	r0, [r4, #23]
d004d562:	6831      	ldr	r1, [r6, #0]
d004d564:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
d004d568:	f8db 2000 	ldr.w	r2, [fp]
d004d56c:	4e7a      	ldr	r6, [pc, #488]	; (d004d758 <main+0x698>)
d004d56e:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d572:	2003      	movs	r0, #3
d004d574:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d578:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d57c:	47c0      	blx	r8
d004d57e:	7d23      	ldrb	r3, [r4, #20]
d004d580:	7d62      	ldrb	r2, [r4, #21]
d004d582:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d586:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d58a:	2003      	movs	r0, #3
d004d58c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d590:	7de2      	ldrb	r2, [r4, #23]
d004d592:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d596:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d59a:	689b      	ldr	r3, [r3, #8]
d004d59c:	691b      	ldr	r3, [r3, #16]
d004d59e:	4798      	blx	r3
d004d5a0:	7d23      	ldrb	r3, [r4, #20]
d004d5a2:	7d62      	ldrb	r2, [r4, #21]
d004d5a4:	2128      	movs	r1, #40	; 0x28
d004d5a6:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5aa:	2003      	movs	r0, #3
d004d5ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5b0:	7de2      	ldrb	r2, [r4, #23]
d004d5b2:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5ba:	689b      	ldr	r3, [r3, #8]
d004d5bc:	695b      	ldr	r3, [r3, #20]
d004d5be:	4798      	blx	r3
d004d5c0:	7d23      	ldrb	r3, [r4, #20]
d004d5c2:	7d62      	ldrb	r2, [r4, #21]
d004d5c4:	2100      	movs	r1, #0
d004d5c6:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5ca:	2003      	movs	r0, #3
d004d5cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5d0:	7de2      	ldrb	r2, [r4, #23]
d004d5d2:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5da:	689b      	ldr	r3, [r3, #8]
d004d5dc:	699b      	ldr	r3, [r3, #24]
d004d5de:	4798      	blx	r3
d004d5e0:	7d23      	ldrb	r3, [r4, #20]
d004d5e2:	7d62      	ldrb	r2, [r4, #21]
d004d5e4:	2101      	movs	r1, #1
d004d5e6:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5ea:	2003      	movs	r0, #3
d004d5ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5f0:	7de2      	ldrb	r2, [r4, #23]
d004d5f2:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5fa:	689b      	ldr	r3, [r3, #8]
d004d5fc:	6a1b      	ldr	r3, [r3, #32]
d004d5fe:	4798      	blx	r3
d004d600:	7d23      	ldrb	r3, [r4, #20]
d004d602:	f894 c015 	ldrb.w	ip, [r4, #21]
d004d606:	2100      	movs	r1, #0
d004d608:	7da2      	ldrb	r2, [r4, #22]
d004d60a:	2003      	movs	r0, #3
d004d60c:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d004d610:	f894 c017 	ldrb.w	ip, [r4, #23]
d004d614:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d618:	f8db 2000 	ldr.w	r2, [fp]
d004d61c:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d004d620:	689b      	ldr	r3, [r3, #8]
d004d622:	69db      	ldr	r3, [r3, #28]
d004d624:	4798      	blx	r3
d004d626:	7d23      	ldrb	r3, [r4, #20]
d004d628:	7d62      	ldrb	r2, [r4, #21]
d004d62a:	2003      	movs	r0, #3
d004d62c:	7da1      	ldrb	r1, [r4, #22]
d004d62e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d632:	7de2      	ldrb	r2, [r4, #23]
d004d634:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d638:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d63c:	689b      	ldr	r3, [r3, #8]
d004d63e:	685b      	ldr	r3, [r3, #4]
d004d640:	4798      	blx	r3
d004d642:	4945      	ldr	r1, [pc, #276]	; (d004d758 <main+0x698>)
d004d644:	4845      	ldr	r0, [pc, #276]	; (d004d75c <main+0x69c>)
d004d646:	f7fd fd75 	bl	d004b134 <LoadSFX>
d004d64a:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d64e:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d652:	4602      	mov	r2, r0
d004d654:	7da1      	ldrb	r1, [r4, #22]
d004d656:	2300      	movs	r3, #0
d004d658:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d65c:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d660:	f8cb 0000 	str.w	r0, [fp]
d004d664:	2006      	movs	r0, #6
d004d666:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d66a:	6831      	ldr	r1, [r6, #0]
d004d66c:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d670:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d674:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d678:	47c0      	blx	r8
d004d67a:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d67e:	7d62      	ldrb	r2, [r4, #21]
d004d680:	2300      	movs	r3, #0
d004d682:	7da1      	ldrb	r1, [r4, #22]
d004d684:	2007      	movs	r0, #7
d004d686:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d004d68a:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d68e:	f8db 2000 	ldr.w	r2, [fp]
d004d692:	469b      	mov	fp, r3
d004d694:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d698:	6831      	ldr	r1, [r6, #0]
d004d69a:	f10d 08fc 	add.w	r8, sp, #252	; 0xfc
d004d69e:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d6a2:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d6a6:	f8dc 600c 	ldr.w	r6, [ip, #12]
d004d6aa:	47b0      	blx	r6
d004d6ac:	7d23      	ldrb	r3, [r4, #20]
d004d6ae:	7d62      	ldrb	r2, [r4, #21]
d004d6b0:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d6b4:	7da0      	ldrb	r0, [r4, #22]
d004d6b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d6ba:	7de2      	ldrb	r2, [r4, #23]
d004d6bc:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d6c0:	2006      	movs	r0, #6
d004d6c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d6c6:	689b      	ldr	r3, [r3, #8]
d004d6c8:	691b      	ldr	r3, [r3, #16]
d004d6ca:	4798      	blx	r3
d004d6cc:	7d23      	ldrb	r3, [r4, #20]
d004d6ce:	7d62      	ldrb	r2, [r4, #21]
d004d6d0:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d6d4:	2007      	movs	r0, #7
d004d6d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d6da:	7da2      	ldrb	r2, [r4, #22]
d004d6dc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d6e0:	7de2      	ldrb	r2, [r4, #23]
d004d6e2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d6e6:	689b      	ldr	r3, [r3, #8]
d004d6e8:	691b      	ldr	r3, [r3, #16]
d004d6ea:	4798      	blx	r3
d004d6ec:	7d23      	ldrb	r3, [r4, #20]
d004d6ee:	7d62      	ldrb	r2, [r4, #21]
d004d6f0:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d6f4:	2006      	movs	r0, #6
d004d6f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d6fa:	7da2      	ldrb	r2, [r4, #22]
d004d6fc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d700:	7de2      	ldrb	r2, [r4, #23]
d004d702:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d706:	689b      	ldr	r3, [r3, #8]
d004d708:	695b      	ldr	r3, [r3, #20]
d004d70a:	4798      	blx	r3
d004d70c:	7d23      	ldrb	r3, [r4, #20]
d004d70e:	7d62      	ldrb	r2, [r4, #21]
d004d710:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d714:	2007      	movs	r0, #7
d004d716:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d71a:	7da2      	ldrb	r2, [r4, #22]
d004d71c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d720:	7de2      	ldrb	r2, [r4, #23]
d004d722:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d726:	689b      	ldr	r3, [r3, #8]
d004d728:	695b      	ldr	r3, [r3, #20]
d004d72a:	4798      	blx	r3
d004d72c:	7d23      	ldrb	r3, [r4, #20]
d004d72e:	7d62      	ldrb	r2, [r4, #21]
d004d730:	f06f 0127 	mvn.w	r1, #39	; 0x27
d004d734:	2006      	movs	r0, #6
d004d736:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d73a:	7da2      	ldrb	r2, [r4, #22]
d004d73c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d740:	7de2      	ldrb	r2, [r4, #23]
d004d742:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d746:	689b      	ldr	r3, [r3, #8]
d004d748:	699b      	ldr	r3, [r3, #24]
d004d74a:	4798      	blx	r3
d004d74c:	e008      	b.n	d004d760 <main+0x6a0>
d004d74e:	bf00      	nop
d004d750:	d00f46a0 	.word	0xd00f46a0
d004d754:	d0057174 	.word	0xd0057174
d004d758:	d00f45c0 	.word	0xd00f45c0
d004d75c:	d0057184 	.word	0xd0057184
d004d760:	7d23      	ldrb	r3, [r4, #20]
d004d762:	7d62      	ldrb	r2, [r4, #21]
d004d764:	2128      	movs	r1, #40	; 0x28
d004d766:	2007      	movs	r0, #7
d004d768:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d76c:	7da2      	ldrb	r2, [r4, #22]
d004d76e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d772:	7de2      	ldrb	r2, [r4, #23]
d004d774:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d778:	689b      	ldr	r3, [r3, #8]
d004d77a:	699b      	ldr	r3, [r3, #24]
d004d77c:	4798      	blx	r3
d004d77e:	7d23      	ldrb	r3, [r4, #20]
d004d780:	7d62      	ldrb	r2, [r4, #21]
d004d782:	4659      	mov	r1, fp
d004d784:	2006      	movs	r0, #6
d004d786:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d78a:	7da2      	ldrb	r2, [r4, #22]
d004d78c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d790:	7de2      	ldrb	r2, [r4, #23]
d004d792:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d796:	689b      	ldr	r3, [r3, #8]
d004d798:	6a1b      	ldr	r3, [r3, #32]
d004d79a:	4798      	blx	r3
d004d79c:	7d23      	ldrb	r3, [r4, #20]
d004d79e:	7d62      	ldrb	r2, [r4, #21]
d004d7a0:	4659      	mov	r1, fp
d004d7a2:	2007      	movs	r0, #7
d004d7a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d7a8:	7da2      	ldrb	r2, [r4, #22]
d004d7aa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d7ae:	7de2      	ldrb	r2, [r4, #23]
d004d7b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d7b4:	689b      	ldr	r3, [r3, #8]
d004d7b6:	6a1b      	ldr	r3, [r3, #32]
d004d7b8:	4798      	blx	r3
d004d7ba:	4639      	mov	r1, r7
d004d7bc:	eeb3 0a09 	vmov.f32	s0, #57	; 0x41c80000  25.0
d004d7c0:	48da      	ldr	r0, [pc, #872]	; (d004db2c <main+0xa6c>)
d004d7c2:	f007 f8e1 	bl	d0054988 <loadMeshSB3D>
d004d7c6:	ed9f 1ada 	vldr	s2, [pc, #872]	; d004db30 <main+0xa70>
d004d7ca:	eddf 0ada 	vldr	s1, [pc, #872]	; d004db34 <main+0xa74>
d004d7ce:	ed9f 0ada 	vldr	s0, [pc, #872]	; d004db38 <main+0xa78>
d004d7d2:	f002 fe61 	bl	d0050498 <vec3>
d004d7d6:	4638      	mov	r0, r7
d004d7d8:	ed8d 0a4e 	vstr	s0, [sp, #312]	; 0x138
d004d7dc:	edcd 0a4f 	vstr	s1, [sp, #316]	; 0x13c
d004d7e0:	ed8d 1a50 	vstr	s2, [sp, #320]	; 0x140
d004d7e4:	f003 fdd2 	bl	d005138c <entityWorldSpawn>
d004d7e8:	4bd4      	ldr	r3, [pc, #848]	; (d004db3c <main+0xa7c>)
d004d7ea:	4602      	mov	r2, r0
d004d7ec:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004d7f0:	ed9f 2ad3 	vldr	s4, [pc, #844]	; d004db40 <main+0xa80>
d004d7f4:	eeb0 1a48 	vmov.f32	s2, s16
d004d7f8:	4638      	mov	r0, r7
d004d7fa:	eddf 0ad2 	vldr	s1, [pc, #840]	; d004db44 <main+0xa84>
d004d7fe:	eeb0 0a48 	vmov.f32	s0, s16
d004d802:	601a      	str	r2, [r3, #0]
d004d804:	f001 f848 	bl	d004e898 <meshSetMaterial>
d004d808:	f7fe ff72 	bl	d004c6f0 <InitLasers>
d004d80c:	9e04      	ldr	r6, [sp, #16]
d004d80e:	ed9f 0ace 	vldr	s0, [pc, #824]	; d004db48 <main+0xa88>
d004d812:	4631      	mov	r1, r6
d004d814:	48cd      	ldr	r0, [pc, #820]	; (d004db4c <main+0xa8c>)
d004d816:	f007 f8b7 	bl	d0054988 <loadMeshSB3D>
d004d81a:	eeb0 1a48 	vmov.f32	s2, s16
d004d81e:	eef0 0a48 	vmov.f32	s1, s16
d004d822:	eeb0 0a48 	vmov.f32	s0, s16
d004d826:	f002 fe37 	bl	d0050498 <vec3>
d004d82a:	4630      	mov	r0, r6
d004d82c:	edcd 0a52 	vstr	s1, [sp, #328]	; 0x148
d004d830:	ed8d 0a51 	vstr	s0, [sp, #324]	; 0x144
d004d834:	ed8d 1a53 	vstr	s2, [sp, #332]	; 0x14c
d004d838:	f003 fda8 	bl	d005138c <entityWorldSpawn>
d004d83c:	4bc4      	ldr	r3, [pc, #784]	; (d004db50 <main+0xa90>)
d004d83e:	2101      	movs	r1, #1
d004d840:	6018      	str	r0, [r3, #0]
d004d842:	f004 f9ed 	bl	d0051c20 <entityAllowHit>
d004d846:	eeb0 2a48 	vmov.f32	s4, s16
d004d84a:	eddf 1ac2 	vldr	s3, [pc, #776]	; d004db54 <main+0xa94>
d004d84e:	4630      	mov	r0, r6
d004d850:	eeb0 1a48 	vmov.f32	s2, s16
d004d854:	eeb0 0a48 	vmov.f32	s0, s16
d004d858:	2664      	movs	r6, #100	; 0x64
d004d85a:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004d85e:	f001 f81b 	bl	d004e898 <meshSetMaterial>
d004d862:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d004d866:	ed9d aa05 	vldr	s20, [sp, #20]
d004d86a:	eef0 0a41 	vmov.f32	s1, s2
d004d86e:	ee1a 0a10 	vmov	r0, s20
d004d872:	eeb0 0a41 	vmov.f32	s0, s2
d004d876:	f003 ff57 	bl	d0051728 <createBox>
d004d87a:	eef0 0a48 	vmov.f32	s1, s16
d004d87e:	eeb0 1a48 	vmov.f32	s2, s16
d004d882:	ee1a 0a10 	vmov	r0, s20
d004d886:	eeb0 0a48 	vmov.f32	s0, s16
d004d88a:	ed8d 8a3c 	vstr	s16, [sp, #240]	; 0xf0
d004d88e:	ed8d 8a3d 	vstr	s16, [sp, #244]	; 0xf4
d004d892:	ed8d 8a3e 	vstr	s16, [sp, #248]	; 0xf8
d004d896:	f003 fd79 	bl	d005138c <entityWorldSpawn>
d004d89a:	eddd 8a06 	vldr	s17, [sp, #24]
d004d89e:	ed9f 0aae 	vldr	s0, [pc, #696]	; d004db58 <main+0xa98>
d004d8a2:	ee18 1a90 	vmov	r1, s17
d004d8a6:	48ad      	ldr	r0, [pc, #692]	; (d004db5c <main+0xa9c>)
d004d8a8:	f007 f86e 	bl	d0054988 <loadMeshSB3D>
d004d8ac:	eef0 0a48 	vmov.f32	s1, s16
d004d8b0:	ed9f 1aab 	vldr	s2, [pc, #684]	; d004db60 <main+0xaa0>
d004d8b4:	ed9f 0aab 	vldr	s0, [pc, #684]	; d004db64 <main+0xaa4>
d004d8b8:	f002 fdee 	bl	d0050498 <vec3>
d004d8bc:	ee18 0a90 	vmov	r0, s17
d004d8c0:	edcd 0a55 	vstr	s1, [sp, #340]	; 0x154
d004d8c4:	ed8d 1a56 	vstr	s2, [sp, #344]	; 0x158
d004d8c8:	ed8d 0a54 	vstr	s0, [sp, #336]	; 0x150
d004d8cc:	f003 fd5e 	bl	d005138c <entityWorldSpawn>
d004d8d0:	4aa5      	ldr	r2, [pc, #660]	; (d004db68 <main+0xaa8>)
d004d8d2:	4603      	mov	r3, r0
d004d8d4:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d004d8d8:	4649      	mov	r1, r9
d004d8da:	48a4      	ldr	r0, [pc, #656]	; (d004db6c <main+0xaac>)
d004d8dc:	6013      	str	r3, [r2, #0]
d004d8de:	f007 f853 	bl	d0054988 <loadMeshSB3D>
d004d8e2:	9f07      	ldr	r7, [sp, #28]
d004d8e4:	4649      	mov	r1, r9
d004d8e6:	eddf 8aa2 	vldr	s17, [pc, #648]	; d004db70 <main+0xab0>
d004d8ea:	4638      	mov	r0, r7
d004d8ec:	f004 f89c 	bl	d0051a28 <copyMesh>
d004d8f0:	ed9f 1aa0 	vldr	s2, [pc, #640]	; d004db74 <main+0xab4>
d004d8f4:	eddf 0a98 	vldr	s1, [pc, #608]	; d004db58 <main+0xa98>
d004d8f8:	ed9f 0a9f 	vldr	s0, [pc, #636]	; d004db78 <main+0xab8>
d004d8fc:	f002 fdcc 	bl	d0050498 <vec3>
d004d900:	4638      	mov	r0, r7
d004d902:	ed8d 0a57 	vstr	s0, [sp, #348]	; 0x15c
d004d906:	edcd 0a58 	vstr	s1, [sp, #352]	; 0x160
d004d90a:	ed8d 1a59 	vstr	s2, [sp, #356]	; 0x164
d004d90e:	f003 fd3d 	bl	d005138c <entityWorldSpawn>
d004d912:	eeb0 1a48 	vmov.f32	s2, s16
d004d916:	ee0f 0a10 	vmov	s30, r0
d004d91a:	eef0 0a48 	vmov.f32	s1, s16
d004d91e:	eeb0 0a48 	vmov.f32	s0, s16
d004d922:	f002 fdb9 	bl	d0050498 <vec3>
d004d926:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d92a:	2001      	movs	r0, #1
d004d92c:	edcd 0a5b 	vstr	s1, [sp, #364]	; 0x16c
d004d930:	ed8d 0a5a 	vstr	s0, [sp, #360]	; 0x168
d004d934:	ed8d 1a5c 	vstr	s2, [sp, #368]	; 0x170
d004d938:	f004 fc6e 	bl	d0052218 <addPointLight>
d004d93c:	b2c3      	uxtb	r3, r0
d004d93e:	ed9f 1a8f 	vldr	s2, [pc, #572]	; d004db7c <main+0xabc>
d004d942:	eddf 0a8f 	vldr	s1, [pc, #572]	; d004db80 <main+0xac0>
d004d946:	4618      	mov	r0, r3
d004d948:	ed9f 0a8e 	vldr	s0, [pc, #568]	; d004db84 <main+0xac4>
d004d94c:	9308      	str	r3, [sp, #32]
d004d94e:	f004 fc2b 	bl	d00521a8 <lightSetRanges>
d004d952:	eb05 178b 	add.w	r7, r5, fp, lsl #6
d004d956:	f10b 0b01 	add.w	fp, fp, #1
d004d95a:	4649      	mov	r1, r9
d004d95c:	a80c      	add	r0, sp, #48	; 0x30
d004d95e:	f004 f863 	bl	d0051a28 <copyMesh>
d004d962:	fb06 f30b 	mul.w	r3, r6, fp
d004d966:	f10d 0c30 	add.w	ip, sp, #48	; 0x30
d004d96a:	eef0 0a69 	vmov.f32	s1, s19
d004d96e:	ee01 3a10 	vmov	s2, r3
d004d972:	eeb0 0a49 	vmov.f32	s0, s18
d004d976:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d97a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d97c:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d980:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d982:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d986:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d004d98a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d98c:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d004d990:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
d004d994:	f002 fd80 	bl	d0050498 <vec3>
d004d998:	4650      	mov	r0, sl
d004d99a:	edcd 0a5e 	vstr	s1, [sp, #376]	; 0x178
d004d99e:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
d004d9a2:	ed8d 1a5f 	vstr	s2, [sp, #380]	; 0x17c
d004d9a6:	ed8d 0a5d 	vstr	s0, [sp, #372]	; 0x174
d004d9aa:	f003 fcef 	bl	d005138c <entityWorldSpawn>
d004d9ae:	4607      	mov	r7, r0
d004d9b0:	f848 0b04 	str.w	r0, [r8], #4
d004d9b4:	eeb0 0a68 	vmov.f32	s0, s17
d004d9b8:	f002 fd72 	bl	d00504a0 <degrees>
d004d9bc:	eeb0 1a48 	vmov.f32	s2, s16
d004d9c0:	4638      	mov	r0, r7
d004d9c2:	2101      	movs	r1, #1
d004d9c4:	eddf 0a70 	vldr	s1, [pc, #448]	; d004db88 <main+0xac8>
d004d9c8:	f003 fe9e 	bl	d0051708 <entityRotation>
d004d9cc:	f1bb 0f03 	cmp.w	fp, #3
d004d9d0:	d1bf      	bne.n	d004d952 <main+0x892>
d004d9d2:	2301      	movs	r3, #1
d004d9d4:	9840      	ldr	r0, [sp, #256]	; 0x100
d004d9d6:	ed9f 1a5c 	vldr	s2, [pc, #368]	; d004db48 <main+0xa88>
d004d9da:	35c0      	adds	r5, #192	; 0xc0
d004d9dc:	9307      	str	r3, [sp, #28]
d004d9de:	2300      	movs	r3, #0
d004d9e0:	eddf 0a6a 	vldr	s1, [pc, #424]	; d004db8c <main+0xacc>
d004d9e4:	ed9f 0a6a 	vldr	s0, [pc, #424]	; d004db90 <main+0xad0>
d004d9e8:	9304      	str	r3, [sp, #16]
d004d9ea:	9005      	str	r0, [sp, #20]
d004d9ec:	f002 fd54 	bl	d0050498 <vec3>
d004d9f0:	9805      	ldr	r0, [sp, #20]
d004d9f2:	edcd 0a61 	vstr	s1, [sp, #388]	; 0x184
d004d9f6:	ed8d 1a62 	vstr	s2, [sp, #392]	; 0x188
d004d9fa:	ed8d 0a60 	vstr	s0, [sp, #384]	; 0x180
d004d9fe:	f003 fd0b 	bl	d0051418 <entitySetPosition>
d004da02:	4629      	mov	r1, r5
d004da04:	ed9f 0a54 	vldr	s0, [pc, #336]	; d004db58 <main+0xa98>
d004da08:	4862      	ldr	r0, [pc, #392]	; (d004db94 <main+0xad4>)
d004da0a:	f006 ffbd 	bl	d0054988 <loadMeshSB3D>
d004da0e:	ed9f 1a4e 	vldr	s2, [pc, #312]	; d004db48 <main+0xa88>
d004da12:	eddf 0a61 	vldr	s1, [pc, #388]	; d004db98 <main+0xad8>
d004da16:	ed9f 0a61 	vldr	s0, [pc, #388]	; d004db9c <main+0xadc>
d004da1a:	f002 fd3d 	bl	d0050498 <vec3>
d004da1e:	4628      	mov	r0, r5
d004da20:	ed8d 0a63 	vstr	s0, [sp, #396]	; 0x18c
d004da24:	edcd 0a64 	vstr	s1, [sp, #400]	; 0x190
d004da28:	ed8d 1a65 	vstr	s2, [sp, #404]	; 0x194
d004da2c:	f003 fcae 	bl	d005138c <entityWorldSpawn>
d004da30:	ed9f 1a55 	vldr	s2, [pc, #340]	; d004db88 <main+0xac8>
d004da34:	4603      	mov	r3, r0
d004da36:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004da3a:	ed9f 2a41 	vldr	s4, [pc, #260]	; d004db40 <main+0xa80>
d004da3e:	eeb0 0a41 	vmov.f32	s0, s2
d004da42:	4628      	mov	r0, r5
d004da44:	eddf 0a3f 	vldr	s1, [pc, #252]	; d004db44 <main+0xa84>
d004da48:	9309      	str	r3, [sp, #36]	; 0x24
d004da4a:	f000 ff25 	bl	d004e898 <meshSetMaterial>
d004da4e:	2301      	movs	r3, #1
d004da50:	2216      	movs	r2, #22
d004da52:	4953      	ldr	r1, [pc, #332]	; (d004dba0 <main+0xae0>)
d004da54:	a885      	add	r0, sp, #532	; 0x214
d004da56:	ed9f 0a53 	vldr	s0, [pc, #332]	; d004dba4 <main+0xae4>
d004da5a:	f7fd ff8b 	bl	d004b974 <splineRailInit>
d004da5e:	a885      	add	r0, sp, #532	; 0x214
d004da60:	ed9f 1a51 	vldr	s2, [pc, #324]	; d004dba8 <main+0xae8>
d004da64:	eddf 0a51 	vldr	s1, [pc, #324]	; d004dbac <main+0xaec>
d004da68:	ed9f 0a51 	vldr	s0, [pc, #324]	; d004dbb0 <main+0xaf0>
d004da6c:	f7fd ffb0 	bl	d004b9d0 <splineRailSetTuning>
d004da70:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d004da74:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004da78:	ed9f 1a4e 	vldr	s2, [pc, #312]	; d004dbb4 <main+0xaf4>
d004da7c:	a885      	add	r0, sp, #532	; 0x214
d004da7e:	4d4e      	ldr	r5, [pc, #312]	; (d004dbb8 <main+0xaf8>)
d004da80:	f7fd ffae 	bl	d004b9e0 <splineRailSetBanking>
d004da84:	7b23      	ldrb	r3, [r4, #12]
d004da86:	7b62      	ldrb	r2, [r4, #13]
d004da88:	7ba1      	ldrb	r1, [r4, #14]
d004da8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004da8e:	7be2      	ldrb	r2, [r4, #15]
d004da90:	6828      	ldr	r0, [r5, #0]
d004da92:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004da96:	f8df a128 	ldr.w	sl, [pc, #296]	; d004dbc0 <main+0xb00>
d004da9a:	eddf aa48 	vldr	s21, [pc, #288]	; d004dbbc <main+0xafc>
d004da9e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004daa2:	46d0      	mov	r8, sl
d004daa4:	ed9f ba37 	vldr	s22, [pc, #220]	; d004db84 <main+0xac4>
d004daa8:	681b      	ldr	r3, [r3, #0]
d004daaa:	eddf ba2b 	vldr	s23, [pc, #172]	; d004db58 <main+0xa98>
d004daae:	69db      	ldr	r3, [r3, #28]
d004dab0:	4798      	blx	r3
d004dab2:	7b23      	ldrb	r3, [r4, #12]
d004dab4:	7b62      	ldrb	r2, [r4, #13]
d004dab6:	7ba1      	ldrb	r1, [r4, #14]
d004dab8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dabc:	7be2      	ldrb	r2, [r4, #15]
d004dabe:	6828      	ldr	r0, [r5, #0]
d004dac0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dac4:	ed9f aa30 	vldr	s20, [pc, #192]	; d004db88 <main+0xac8>
d004dac8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dacc:	681b      	ldr	r3, [r3, #0]
d004dace:	699b      	ldr	r3, [r3, #24]
d004dad0:	4798      	blx	r3
d004dad2:	7b23      	ldrb	r3, [r4, #12]
d004dad4:	7b62      	ldrb	r2, [r4, #13]
d004dad6:	2001      	movs	r0, #1
d004dad8:	7ba1      	ldrb	r1, [r4, #14]
d004dada:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dade:	7be2      	ldrb	r2, [r4, #15]
d004dae0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dae4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dae8:	685b      	ldr	r3, [r3, #4]
d004daea:	68db      	ldr	r3, [r3, #12]
d004daec:	4798      	blx	r3
d004daee:	7b23      	ldrb	r3, [r4, #12]
d004daf0:	7b62      	ldrb	r2, [r4, #13]
d004daf2:	211e      	movs	r1, #30
d004daf4:	7ba5      	ldrb	r5, [r4, #14]
d004daf6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dafa:	7be2      	ldrb	r2, [r4, #15]
d004dafc:	4608      	mov	r0, r1
d004dafe:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004db02:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004db06:	685b      	ldr	r3, [r3, #4]
d004db08:	689b      	ldr	r3, [r3, #8]
d004db0a:	4798      	blx	r3
d004db0c:	7823      	ldrb	r3, [r4, #0]
d004db0e:	7862      	ldrb	r2, [r4, #1]
d004db10:	a936      	add	r1, sp, #216	; 0xd8
d004db12:	78a0      	ldrb	r0, [r4, #2]
d004db14:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004db18:	78e2      	ldrb	r2, [r4, #3]
d004db1a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004db1e:	a835      	add	r0, sp, #212	; 0xd4
d004db20:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004db24:	691b      	ldr	r3, [r3, #16]
d004db26:	4798      	blx	r3
d004db28:	e04c      	b.n	d004dbc4 <main+0xb04>
d004db2a:	bf00      	nop
d004db2c:	d0057190 	.word	0xd0057190
d004db30:	44460000 	.word	0x44460000
d004db34:	42a00000 	.word	0x42a00000
d004db38:	c4080000 	.word	0xc4080000
d004db3c:	d005a250 	.word	0xd005a250
d004db40:	42c00000 	.word	0x42c00000
d004db44:	3ee66666 	.word	0x3ee66666
d004db48:	43480000 	.word	0x43480000
d004db4c:	d00571a0 	.word	0xd00571a0
d004db50:	d005a224 	.word	0xd005a224
d004db54:	3e4ccccd 	.word	0x3e4ccccd
d004db58:	42480000 	.word	0x42480000
d004db5c:	d00571b0 	.word	0xd00571b0
d004db60:	c2c80000 	.word	0xc2c80000
d004db64:	44f3c000 	.word	0x44f3c000
d004db68:	d005a0a0 	.word	0xd005a0a0
d004db6c:	d00571c0 	.word	0xd00571c0
d004db70:	42b40000 	.word	0x42b40000
d004db74:	c3480000 	.word	0xc3480000
d004db78:	c3070000 	.word	0xc3070000
d004db7c:	44048000 	.word	0x44048000
d004db80:	43a00000 	.word	0x43a00000
d004db84:	42c80000 	.word	0x42c80000
d004db88:	00000000 	.word	0x00000000
d004db8c:	42a40000 	.word	0x42a40000
d004db90:	c3750000 	.word	0xc3750000
d004db94:	d00571cc 	.word	0xd00571cc
d004db98:	43af0000 	.word	0x43af0000
d004db9c:	44fa0000 	.word	0x44fa0000
d004dba0:	d0057274 	.word	0xd0057274
d004dba4:	43340000 	.word	0x43340000
d004dba8:	402ccccd 	.word	0x402ccccd
d004dbac:	3fe66666 	.word	0x3fe66666
d004dbb0:	3fb33333 	.word	0x3fb33333
d004dbb4:	3f59999a 	.word	0x3f59999a
d004dbb8:	d00f4680 	.word	0xd00f4680
d004dbbc:	3b83126f 	.word	0x3b83126f
d004dbc0:	d005a040 	.word	0xd005a040
d004dbc4:	7823      	ldrb	r3, [r4, #0]
d004dbc6:	7862      	ldrb	r2, [r4, #1]
d004dbc8:	78a1      	ldrb	r1, [r4, #2]
d004dbca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dbce:	78e2      	ldrb	r2, [r4, #3]
d004dbd0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dbd4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dbd8:	69db      	ldr	r3, [r3, #28]
d004dbda:	4798      	blx	r3
d004dbdc:	7823      	ldrb	r3, [r4, #0]
d004dbde:	7862      	ldrb	r2, [r4, #1]
d004dbe0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dbe4:	78a2      	ldrb	r2, [r4, #2]
d004dbe6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004dbea:	78e2      	ldrb	r2, [r4, #3]
d004dbec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dbf0:	689b      	ldr	r3, [r3, #8]
d004dbf2:	4798      	blx	r3
d004dbf4:	2313      	movs	r3, #19
d004dbf6:	4605      	mov	r5, r0
d004dbf8:	48cd      	ldr	r0, [pc, #820]	; (d004df30 <main+0xe70>)
d004dbfa:	2112      	movs	r1, #18
d004dbfc:	2215      	movs	r2, #21
d004dbfe:	7003      	strb	r3, [r0, #0]
d004dc00:	2319      	movs	r3, #25
d004dc02:	48cc      	ldr	r0, [pc, #816]	; (d004df34 <main+0xe74>)
d004dc04:	7001      	strb	r1, [r0, #0]
d004dc06:	49cc      	ldr	r1, [pc, #816]	; (d004df38 <main+0xe78>)
d004dc08:	ed9f 9bc7 	vldr	d9, [pc, #796]	; d004df28 <main+0xe68>
d004dc0c:	700a      	strb	r2, [r1, #0]
d004dc0e:	4acb      	ldr	r2, [pc, #812]	; (d004df3c <main+0xe7c>)
d004dc10:	7013      	strb	r3, [r2, #0]
d004dc12:	7b20      	ldrb	r0, [r4, #12]
d004dc14:	ee6a 7a8b 	vmul.f32	s15, s21, s22
d004dc18:	7b61      	ldrb	r1, [r4, #13]
d004dc1a:	7ba2      	ldrb	r2, [r4, #14]
d004dc1c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dc20:	7be3      	ldrb	r3, [r4, #15]
d004dc22:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004dc26:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dc2a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dc2e:	edcd 7a05 	vstr	s15, [sp, #20]
d004dc32:	f89d 0014 	ldrb.w	r0, [sp, #20]
d004dc36:	681b      	ldr	r3, [r3, #0]
d004dc38:	689b      	ldr	r3, [r3, #8]
d004dc3a:	4798      	blx	r3
d004dc3c:	7820      	ldrb	r0, [r4, #0]
d004dc3e:	7861      	ldrb	r1, [r4, #1]
d004dc40:	78a2      	ldrb	r2, [r4, #2]
d004dc42:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dc46:	78e3      	ldrb	r3, [r4, #3]
d004dc48:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dc4c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dc50:	689b      	ldr	r3, [r3, #8]
d004dc52:	4798      	blx	r3
d004dc54:	1b43      	subs	r3, r0, r5
d004dc56:	eddf 7aba 	vldr	s15, [pc, #744]	; d004df40 <main+0xe80>
d004dc5a:	ee08 3a10 	vmov	s16, r3
d004dc5e:	9005      	str	r0, [sp, #20]
d004dc60:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d004dc64:	eeb4 8ae7 	vcmpe.f32	s16, s15
d004dc68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dc6c:	f300 851c 	bgt.w	d004e6a8 <main+0x15e8>
d004dc70:	eddf 7ab4 	vldr	s15, [pc, #720]	; d004df44 <main+0xe84>
d004dc74:	eeb2 da04 	vmov.f32	s26, #36	; 0x41200000  10.0
d004dc78:	eeb2 ca08 	vmov.f32	s24, #40	; 0x41400000  12.0
d004dc7c:	eddf eab2 	vldr	s29, [pc, #712]	; d004df48 <main+0xe88>
d004dc80:	ee28 8a27 	vmul.f32	s16, s16, s15
d004dc84:	ed9f eab1 	vldr	s28, [pc, #708]	; d004df4c <main+0xe8c>
d004dc88:	eddf 7ab1 	vldr	s15, [pc, #708]	; d004df50 <main+0xe90>
d004dc8c:	eddf dab1 	vldr	s27, [pc, #708]	; d004df54 <main+0xe94>
d004dc90:	ee28 da0d 	vmul.f32	s26, s16, s26
d004dc94:	eddf cab0 	vldr	s25, [pc, #704]	; d004df58 <main+0xe98>
d004dc98:	ee28 ea0e 	vmul.f32	s28, s16, s28
d004dc9c:	ee68 da2d 	vmul.f32	s27, s16, s27
d004dca0:	ee6d ea2e 	vmul.f32	s29, s26, s29
d004dca4:	ee68 ca2c 	vmul.f32	s25, s16, s25
d004dca8:	ee2d da27 	vmul.f32	s26, s26, s15
d004dcac:	ee28 ca0c 	vmul.f32	s24, s16, s24
d004dcb0:	7820      	ldrb	r0, [r4, #0]
d004dcb2:	7861      	ldrb	r1, [r4, #1]
d004dcb4:	78a2      	ldrb	r2, [r4, #2]
d004dcb6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dcba:	78e3      	ldrb	r3, [r4, #3]
d004dcbc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dcc0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dcc4:	6a1b      	ldr	r3, [r3, #32]
d004dcc6:	4798      	blx	r3
d004dcc8:	7826      	ldrb	r6, [r4, #0]
d004dcca:	7863      	ldrb	r3, [r4, #1]
d004dccc:	a938      	add	r1, sp, #224	; 0xe0
d004dcce:	78a2      	ldrb	r2, [r4, #2]
d004dcd0:	4607      	mov	r7, r0
d004dcd2:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d004dcd6:	78e3      	ldrb	r3, [r4, #3]
d004dcd8:	a837      	add	r0, sp, #220	; 0xdc
d004dcda:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d004dcde:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dce2:	699b      	ldr	r3, [r3, #24]
d004dce4:	4798      	blx	r3
d004dce6:	9a37      	ldr	r2, [sp, #220]	; 0xdc
d004dce8:	9b38      	ldr	r3, [sp, #224]	; 0xe0
d004dcea:	eef0 0a4a 	vmov.f32	s1, s20
d004dcee:	4252      	negs	r2, r2
d004dcf0:	ed9f 1a9a 	vldr	s2, [pc, #616]	; d004df5c <main+0xe9c>
d004dcf4:	425b      	negs	r3, r3
d004dcf6:	ed9f 0a9a 	vldr	s0, [pc, #616]	; d004df60 <main+0xea0>
d004dcfa:	ee07 2a90 	vmov	s15, r2
d004dcfe:	2100      	movs	r1, #0
d004dd00:	4640      	mov	r0, r8
d004dd02:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004dd06:	ee07 3a90 	vmov	s15, r3
d004dd0a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004dd0e:	ee27 1a01 	vmul.f32	s2, s14, s2
d004dd12:	ee27 0a80 	vmul.f32	s0, s15, s0
d004dd16:	f002 fe55 	bl	d00509c4 <cameraTurn>
d004dd1a:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d004dd1e:	edda 8a07 	vldr	s17, [sl, #28]
d004dd22:	ee68 8aa7 	vmul.f32	s17, s17, s15
d004dd26:	ee68 0a28 	vmul.f32	s1, s16, s17
d004dd2a:	eef5 0a40 	vcmp.f32	s1, #0.0
d004dd2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dd32:	f040 84fa 	bne.w	d004e72a <main+0x166a>
d004dd36:	4b8b      	ldr	r3, [pc, #556]	; (d004df64 <main+0xea4>)
d004dd38:	eeb0 1a4a 	vmov.f32	s2, s20
d004dd3c:	eddf 0a8a 	vldr	s1, [pc, #552]	; d004df68 <main+0xea8>
d004dd40:	eeb0 0a6e 	vmov.f32	s0, s29
d004dd44:	461d      	mov	r5, r3
d004dd46:	6818      	ldr	r0, [r3, #0]
d004dd48:	f003 fc0e 	bl	d0051568 <entityTurnLocal>
d004dd4c:	eeb0 0a4d 	vmov.f32	s0, s26
d004dd50:	6828      	ldr	r0, [r5, #0]
d004dd52:	f003 fbc5 	bl	d00514e0 <entityMoveForward>
d004dd56:	eeb0 1a4a 	vmov.f32	s2, s20
d004dd5a:	eddf 0a83 	vldr	s1, [pc, #524]	; d004df68 <main+0xea8>
d004dd5e:	eeb0 0a4e 	vmov.f32	s0, s28
d004dd62:	9809      	ldr	r0, [sp, #36]	; 0x24
d004dd64:	f003 fc00 	bl	d0051568 <entityTurnLocal>
d004dd68:	eeb0 0a6d 	vmov.f32	s0, s27
d004dd6c:	ee1f 0a10 	vmov	r0, s30
d004dd70:	f003 fbb6 	bl	d00514e0 <entityMoveForward>
d004dd74:	ee1f 0a10 	vmov	r0, s30
d004dd78:	f003 fb72 	bl	d0051460 <entityGetPosition>
d004dd7c:	eddf 7a7b 	vldr	s15, [pc, #492]	; d004df6c <main+0xeac>
d004dd80:	ed8d 0a42 	vstr	s0, [sp, #264]	; 0x108
d004dd84:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004dd88:	edcd 0a43 	vstr	s1, [sp, #268]	; 0x10c
d004dd8c:	ed8d 1a44 	vstr	s2, [sp, #272]	; 0x110
d004dd90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dd94:	f300 84b5 	bgt.w	d004e702 <main+0x1642>
d004dd98:	ed9d 0a42 	vldr	s0, [sp, #264]	; 0x108
d004dd9c:	9808      	ldr	r0, [sp, #32]
d004dd9e:	eddd 0a43 	vldr	s1, [sp, #268]	; 0x10c
d004dda2:	ed9d 1a44 	vldr	s2, [sp, #272]	; 0x110
d004dda6:	f004 faa3 	bl	d00522f0 <lightSetPosition>
d004ddaa:	edda 0a01 	vldr	s1, [sl, #4]
d004ddae:	ed9a 1a02 	vldr	s2, [sl, #8]
d004ddb2:	ed9a 0a00 	vldr	s0, [sl]
d004ddb6:	9834      	ldr	r0, [sp, #208]	; 0xd0
d004ddb8:	f003 fb2e 	bl	d0051418 <entitySetPosition>
d004ddbc:	4641      	mov	r1, r8
d004ddbe:	9834      	ldr	r0, [sp, #208]	; 0xd0
d004ddc0:	f003 ff94 	bl	d0051cec <entityMatchOrientationCamera>
d004ddc4:	eeb0 0a48 	vmov.f32	s0, s16
d004ddc8:	ee1f 1a10 	vmov	r1, s30
d004ddcc:	9834      	ldr	r0, [sp, #208]	; 0xd0
d004ddce:	f006 fd8b 	bl	d00548e8 <sb3dEntityAudioInfoDefault>
d004ddd2:	7d20      	ldrb	r0, [r4, #20]
d004ddd4:	7d62      	ldrb	r2, [r4, #21]
d004ddd6:	eddf 7a66 	vldr	s15, [pc, #408]	; d004df70 <main+0xeb0>
d004ddda:	ea40 2102 	orr.w	r1, r0, r2, lsl #8
d004ddde:	7da2      	ldrb	r2, [r4, #22]
d004dde0:	ee60 7aa7 	vmul.f32	s15, s1, s15
d004dde4:	7de3      	ldrb	r3, [r4, #23]
d004dde6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004ddea:	2003      	movs	r0, #3
d004ddec:	edcd 1a6f 	vstr	s3, [sp, #444]	; 0x1bc
d004ddf0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004ddf4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004ddf8:	ed8d 0a6c 	vstr	s0, [sp, #432]	; 0x1b0
d004ddfc:	689b      	ldr	r3, [r3, #8]
d004ddfe:	edcd 7a06 	vstr	s15, [sp, #24]
d004de02:	699b      	ldr	r3, [r3, #24]
d004de04:	f99d 1018 	ldrsb.w	r1, [sp, #24]
d004de08:	edcd 0a6d 	vstr	s1, [sp, #436]	; 0x1b4
d004de0c:	ed8d 1a6e 	vstr	s2, [sp, #440]	; 0x1b8
d004de10:	4798      	blx	r3
d004de12:	ed9f 7a58 	vldr	s14, [pc, #352]	; d004df74 <main+0xeb4>
d004de16:	2003      	movs	r0, #3
d004de18:	eddd 7a6c 	vldr	s15, [sp, #432]	; 0x1b0
d004de1c:	7d26      	ldrb	r6, [r4, #20]
d004de1e:	ee67 7a87 	vmul.f32	s15, s15, s14
d004de22:	7d62      	ldrb	r2, [r4, #21]
d004de24:	ea46 2102 	orr.w	r1, r6, r2, lsl #8
d004de28:	7da2      	ldrb	r2, [r4, #22]
d004de2a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004de2e:	7de3      	ldrb	r3, [r4, #23]
d004de30:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004de34:	4950      	ldr	r1, [pc, #320]	; (d004df78 <main+0xeb8>)
d004de36:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004de3a:	ee17 2a90 	vmov	r2, s15
d004de3e:	689b      	ldr	r3, [r3, #8]
d004de40:	440a      	add	r2, r1
d004de42:	691b      	ldr	r3, [r3, #16]
d004de44:	b291      	uxth	r1, r2
d004de46:	4798      	blx	r3
d004de48:	7d26      	ldrb	r6, [r4, #20]
d004de4a:	7d62      	ldrb	r2, [r4, #21]
d004de4c:	2003      	movs	r0, #3
d004de4e:	ed9f 7a4b 	vldr	s14, [pc, #300]	; d004df7c <main+0xebc>
d004de52:	7da3      	ldrb	r3, [r4, #22]
d004de54:	ea46 2102 	orr.w	r1, r6, r2, lsl #8
d004de58:	eddd 7a6e 	vldr	s15, [sp, #440]	; 0x1b8
d004de5c:	ea41 4203 	orr.w	r2, r1, r3, lsl #16
d004de60:	7de3      	ldrb	r3, [r4, #23]
d004de62:	ee67 7a87 	vmul.f32	s15, s15, s14
d004de66:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004de6a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004de6e:	689b      	ldr	r3, [r3, #8]
d004de70:	695b      	ldr	r3, [r3, #20]
d004de72:	edcd 7a06 	vstr	s15, [sp, #24]
d004de76:	f89d 1018 	ldrb.w	r1, [sp, #24]
d004de7a:	4798      	blx	r3
d004de7c:	edda 0a01 	vldr	s1, [sl, #4]
d004de80:	ed9a 1a02 	vldr	s2, [sl, #8]
d004de84:	ee1f 0a90 	vmov	r0, s31
d004de88:	ed9a 0a00 	vldr	s0, [sl]
d004de8c:	f004 fa30 	bl	d00522f0 <lightSetPosition>
d004de90:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004de94:	ee1f 0a90 	vmov	r0, s31
d004de98:	f004 fa46 	bl	d0052328 <lightSetIntensity>
d004de9c:	eeb0 0a4b 	vmov.f32	s0, s22
d004dea0:	ed9f 1a37 	vldr	s2, [pc, #220]	; d004df80 <main+0xec0>
d004dea4:	ee1f 0a90 	vmov	r0, s31
d004dea8:	eddf 0a36 	vldr	s1, [pc, #216]	; d004df84 <main+0xec4>
d004deac:	f004 f97c 	bl	d00521a8 <lightSetRanges>
d004deb0:	9b04      	ldr	r3, [sp, #16]
d004deb2:	2b00      	cmp	r3, #0
d004deb4:	f040 83f0 	bne.w	d004e698 <main+0x15d8>
d004deb8:	2101      	movs	r1, #1
d004deba:	ee1f 0a90 	vmov	r0, s31
d004debe:	f004 f99d 	bl	d00521fc <lightEnable>
d004dec2:	eeb0 0a48 	vmov.f32	s0, s16
d004dec6:	980b      	ldr	r0, [sp, #44]	; 0x2c
d004dec8:	f7fe f816 	bl	d004bef8 <weatherLightning>
d004decc:	9006      	str	r0, [sp, #24]
d004dece:	7820      	ldrb	r0, [r4, #0]
d004ded0:	f007 0601 	and.w	r6, r7, #1
d004ded4:	7861      	ldrb	r1, [r4, #1]
d004ded6:	78a2      	ldrb	r2, [r4, #2]
d004ded8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dedc:	78e3      	ldrb	r3, [r4, #3]
d004dede:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dee2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dee6:	69db      	ldr	r3, [r3, #28]
d004dee8:	4798      	blx	r3
d004deea:	4b27      	ldr	r3, [pc, #156]	; (d004df88 <main+0xec8>)
d004deec:	681b      	ldr	r3, [r3, #0]
d004deee:	b933      	cbnz	r3, d004defe <main+0xe3e>
d004def0:	07fb      	lsls	r3, r7, #31
d004def2:	d504      	bpl.n	d004defe <main+0xe3e>
d004def4:	2301      	movs	r3, #1
d004def6:	4a24      	ldr	r2, [pc, #144]	; (d004df88 <main+0xec8>)
d004def8:	6013      	str	r3, [r2, #0]
d004defa:	f7fe fd95 	bl	d004ca28 <FirePlayerLaser>
d004defe:	f006 03ff 	and.w	r3, r6, #255	; 0xff
d004df02:	b90e      	cbnz	r6, d004df08 <main+0xe48>
d004df04:	4a20      	ldr	r2, [pc, #128]	; (d004df88 <main+0xec8>)
d004df06:	6013      	str	r3, [r2, #0]
d004df08:	f017 0702 	ands.w	r7, r7, #2
d004df0c:	f040 8419 	bne.w	d004e742 <main+0x1682>
d004df10:	eeb0 0a48 	vmov.f32	s0, s16
d004df14:	f7fe fef8 	bl	d004cd08 <UpdateLasers>
d004df18:	4a1c      	ldr	r2, [pc, #112]	; (d004df8c <main+0xecc>)
d004df1a:	8813      	ldrh	r3, [r2, #0]
d004df1c:	3b01      	subs	r3, #1
d004df1e:	b21b      	sxth	r3, r3
d004df20:	2b00      	cmp	r3, #0
d004df22:	8013      	strh	r3, [r2, #0]
d004df24:	dc3c      	bgt.n	d004dfa0 <main+0xee0>
d004df26:	e033      	b.n	d004df90 <main+0xed0>
d004df28:	47ae147b 	.word	0x47ae147b
d004df2c:	3f847ae1 	.word	0x3f847ae1
d004df30:	d00f4624 	.word	0xd00f4624
d004df34:	d00f45a0 	.word	0xd00f45a0
d004df38:	d00f465c 	.word	0xd00f465c
d004df3c:	d00f4604 	.word	0xd00f4604
d004df40:	4d7bc521 	.word	0x4d7bc521
d004df44:	310f2a63 	.word	0x310f2a63
d004df48:	bb449ba6 	.word	0xbb449ba6
d004df4c:	3f99999a 	.word	0x3f99999a
d004df50:	40d9999a 	.word	0x40d9999a
d004df54:	43852666 	.word	0x43852666
d004df58:	435c0000 	.word	0x435c0000
d004df5c:	3ba3d70a 	.word	0x3ba3d70a
d004df60:	3c088889 	.word	0x3c088889
d004df64:	d005a0a0 	.word	0xd005a0a0
d004df68:	00000000 	.word	0x00000000
d004df6c:	451c4000 	.word	0x451c4000
d004df70:	42fe0000 	.word	0x42fe0000
d004df74:	45abe000 	.word	0x45abe000
d004df78:	ffffac44 	.word	0xffffac44
d004df7c:	430c0000 	.word	0x430c0000
d004df80:	44048000 	.word	0x44048000
d004df84:	43a00000 	.word	0x43a00000
d004df88:	d005a228 	.word	0xd005a228
d004df8c:	d005a256 	.word	0xd005a256
d004df90:	4bb8      	ldr	r3, [pc, #736]	; (d004e274 <main+0x11b4>)
d004df92:	f9b3 3000 	ldrsh.w	r3, [r3]
d004df96:	2b00      	cmp	r3, #0
d004df98:	f340 8402 	ble.w	d004e7a0 <main+0x16e0>
d004df9c:	f7fe fce6 	bl	d004c96c <UpdateTurretTest.part.0>
d004dfa0:	eeb0 0a48 	vmov.f32	s0, s16
d004dfa4:	f7fe fa0a 	bl	d004c3bc <updateImpactFlames>
d004dfa8:	4bb3      	ldr	r3, [pc, #716]	; (d004e278 <main+0x11b8>)
d004dfaa:	ed9f 0ab4 	vldr	s0, [pc, #720]	; d004e27c <main+0x11bc>
d004dfae:	ed93 7a00 	vldr	s14, [r3]
d004dfb2:	eddf 0ab3 	vldr	s1, [pc, #716]	; d004e280 <main+0x11c0>
d004dfb6:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d004dfba:	ed9f 1ab2 	vldr	s2, [pc, #712]	; d004e284 <main+0x11c4>
d004dfbe:	ee37 7b09 	vadd.f64	d7, d7, d9
d004dfc2:	eef7 cbc7 	vcvt.f32.f64	s25, d7
d004dfc6:	edc3 ca00 	vstr	s25, [r3]
d004dfca:	f002 fa65 	bl	d0050498 <vec3>
d004dfce:	eef0 7a40 	vmov.f32	s15, s0
d004dfd2:	eeb0 7a60 	vmov.f32	s14, s1
d004dfd6:	eef0 1a41 	vmov.f32	s3, s2
d004dfda:	eeb0 0a6c 	vmov.f32	s0, s25
d004dfde:	edcd 7a69 	vstr	s15, [sp, #420]	; 0x1a4
d004dfe2:	eeb0 1a60 	vmov.f32	s2, s1
d004dfe6:	ed8d 7a6a 	vstr	s14, [sp, #424]	; 0x1a8
d004dfea:	eef0 0a67 	vmov.f32	s1, s15
d004dfee:	edcd 1a6b 	vstr	s3, [sp, #428]	; 0x1ac
d004dff2:	f7fe ffcd 	bl	d004cf90 <updateSmoke>
d004dff6:	7b20      	ldrb	r0, [r4, #12]
d004dff8:	7b61      	ldrb	r1, [r4, #13]
d004dffa:	7ba2      	ldrb	r2, [r4, #14]
d004dffc:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e000:	7be3      	ldrb	r3, [r4, #15]
d004e002:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e006:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e00a:	681b      	ldr	r3, [r3, #0]
d004e00c:	68db      	ldr	r3, [r3, #12]
d004e00e:	4798      	blx	r3
d004e010:	4a9d      	ldr	r2, [pc, #628]	; (d004e288 <main+0x11c8>)
d004e012:	7813      	ldrb	r3, [r2, #0]
d004e014:	f1c3 0301 	rsb	r3, r3, #1
d004e018:	b2db      	uxtb	r3, r3
d004e01a:	7013      	strb	r3, [r2, #0]
d004e01c:	7813      	ldrb	r3, [r2, #0]
d004e01e:	7b21      	ldrb	r1, [r4, #12]
d004e020:	7b60      	ldrb	r0, [r4, #13]
d004e022:	7ba2      	ldrb	r2, [r4, #14]
d004e024:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e028:	2b00      	cmp	r3, #0
d004e02a:	f000 830e 	beq.w	d004e64a <main+0x158a>
d004e02e:	4d97      	ldr	r5, [pc, #604]	; (d004e28c <main+0x11cc>)
d004e030:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e034:	7be3      	ldrb	r3, [r4, #15]
d004e036:	6829      	ldr	r1, [r5, #0]
d004e038:	4895      	ldr	r0, [pc, #596]	; (d004e290 <main+0x11d0>)
d004e03a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e03e:	6800      	ldr	r0, [r0, #0]
d004e040:	f8df 9260 	ldr.w	r9, [pc, #608]	; d004e2a4 <main+0x11e4>
d004e044:	2600      	movs	r6, #0
d004e046:	681b      	ldr	r3, [r3, #0]
d004e048:	46bb      	mov	fp, r7
d004e04a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e04c:	4798      	blx	r3
d004e04e:	682b      	ldr	r3, [r5, #0]
d004e050:	4d90      	ldr	r5, [pc, #576]	; (d004e294 <main+0x11d4>)
d004e052:	6818      	ldr	r0, [r3, #0]
d004e054:	f000 fc6e 	bl	d004e934 <set3DRenderBuffer>
d004e058:	f819 3b01 	ldrb.w	r3, [r9], #1
d004e05c:	b333      	cbz	r3, d004e0ac <main+0xfec>
d004e05e:	682f      	ldr	r7, [r5, #0]
d004e060:	4630      	mov	r0, r6
d004e062:	1e79      	subs	r1, r7, #1
d004e064:	2f00      	cmp	r7, #0
d004e066:	f000 82f7 	beq.w	d004e658 <main+0x1598>
d004e06a:	6029      	str	r1, [r5, #0]
d004e06c:	910a      	str	r1, [sp, #40]	; 0x28
d004e06e:	b9e9      	cbnz	r1, d004e0ac <main+0xfec>
d004e070:	7d27      	ldrb	r7, [r4, #20]
d004e072:	7d63      	ldrb	r3, [r4, #21]
d004e074:	7da2      	ldrb	r2, [r4, #22]
d004e076:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
d004e07a:	7de3      	ldrb	r3, [r4, #23]
d004e07c:	ea47 4202 	orr.w	r2, r7, r2, lsl #16
d004e080:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e084:	689b      	ldr	r3, [r3, #8]
d004e086:	689b      	ldr	r3, [r3, #8]
d004e088:	4798      	blx	r3
d004e08a:	7d27      	ldrb	r7, [r4, #20]
d004e08c:	7d63      	ldrb	r3, [r4, #21]
d004e08e:	4630      	mov	r0, r6
d004e090:	7da2      	ldrb	r2, [r4, #22]
d004e092:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
d004e096:	7de3      	ldrb	r3, [r4, #23]
d004e098:	ea47 4202 	orr.w	r2, r7, r2, lsl #16
d004e09c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e0a0:	689b      	ldr	r3, [r3, #8]
d004e0a2:	685b      	ldr	r3, [r3, #4]
d004e0a4:	4798      	blx	r3
d004e0a6:	990a      	ldr	r1, [sp, #40]	; 0x28
d004e0a8:	f809 1c01 	strb.w	r1, [r9, #-1]
d004e0ac:	3504      	adds	r5, #4
d004e0ae:	2e00      	cmp	r6, #0
d004e0b0:	f000 8282 	beq.w	d004e5b8 <main+0x14f8>
d004e0b4:	9b07      	ldr	r3, [sp, #28]
d004e0b6:	465f      	mov	r7, fp
d004e0b8:	2b00      	cmp	r3, #0
d004e0ba:	f040 834f 	bne.w	d004e75c <main+0x169c>
d004e0be:	9b04      	ldr	r3, [sp, #16]
d004e0c0:	2b00      	cmp	r3, #0
d004e0c2:	f040 830b 	bne.w	d004e6dc <main+0x161c>
d004e0c6:	9b06      	ldr	r3, [sp, #24]
d004e0c8:	eeb0 0a4a 	vmov.f32	s0, s20
d004e0cc:	2b00      	cmp	r3, #0
d004e0ce:	f000 82fb 	beq.w	d004e6c8 <main+0x1608>
d004e0d2:	4971      	ldr	r1, [pc, #452]	; (d004e298 <main+0x11d8>)
d004e0d4:	2305      	movs	r3, #5
d004e0d6:	2215      	movs	r2, #21
d004e0d8:	4640      	mov	r0, r8
d004e0da:	7809      	ldrb	r1, [r1, #0]
d004e0dc:	f005 f950 	bl	d0053380 <drawFakeHorizon>
d004e0e0:	496e      	ldr	r1, [pc, #440]	; (d004e29c <main+0x11dc>)
d004e0e2:	780b      	ldrb	r3, [r1, #0]
d004e0e4:	2b00      	cmp	r3, #0
d004e0e6:	f040 8357 	bne.w	d004e798 <main+0x16d8>
d004e0ea:	486d      	ldr	r0, [pc, #436]	; (d004e2a0 <main+0x11e0>)
d004e0ec:	2205      	movs	r2, #5
d004e0ee:	4d6d      	ldr	r5, [pc, #436]	; (d004e2a4 <main+0x11e4>)
d004e0f0:	7803      	ldrb	r3, [r0, #0]
d004e0f2:	700a      	strb	r2, [r1, #0]
d004e0f4:	f1c3 0301 	rsb	r3, r3, #1
d004e0f8:	b2db      	uxtb	r3, r3
d004e0fa:	5cea      	ldrb	r2, [r5, r3]
d004e0fc:	7003      	strb	r3, [r0, #0]
d004e0fe:	b92a      	cbnz	r2, d004e10c <main+0x104c>
d004e100:	2101      	movs	r1, #1
d004e102:	2278      	movs	r2, #120	; 0x78
d004e104:	54e9      	strb	r1, [r5, r3]
d004e106:	4963      	ldr	r1, [pc, #396]	; (d004e294 <main+0x11d4>)
d004e108:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d004e10c:	2008      	movs	r0, #8
d004e10e:	2320      	movs	r3, #32
d004e110:	2280      	movs	r2, #128	; 0x80
d004e112:	2105      	movs	r1, #5
d004e114:	9000      	str	r0, [sp, #0]
d004e116:	4640      	mov	r0, r8
d004e118:	f005 f83c 	bl	d0053194 <drawFakeSkyDots>
d004e11c:	4962      	ldr	r1, [pc, #392]	; (d004e2a8 <main+0x11e8>)
d004e11e:	eeb0 0a4a 	vmov.f32	s0, s20
d004e122:	236e      	movs	r3, #110	; 0x6e
d004e124:	2280      	movs	r2, #128	; 0x80
d004e126:	7809      	ldrb	r1, [r1, #0]
d004e128:	4640      	mov	r0, r8
d004e12a:	f004 ff1b 	bl	d0052f64 <drawFakeHorizonDots>
d004e12e:	7820      	ldrb	r0, [r4, #0]
d004e130:	7861      	ldrb	r1, [r4, #1]
d004e132:	78a2      	ldrb	r2, [r4, #2]
d004e134:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e138:	78e3      	ldrb	r3, [r4, #3]
d004e13a:	4d5c      	ldr	r5, [pc, #368]	; (d004e2ac <main+0x11ec>)
d004e13c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e140:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e144:	689b      	ldr	r3, [r3, #8]
d004e146:	4798      	blx	r3
d004e148:	4603      	mov	r3, r0
d004e14a:	4640      	mov	r0, r8
d004e14c:	602b      	str	r3, [r5, #0]
d004e14e:	f006 f951 	bl	d00543f4 <Render3D>
d004e152:	7820      	ldrb	r0, [r4, #0]
d004e154:	7861      	ldrb	r1, [r4, #1]
d004e156:	78a2      	ldrb	r2, [r4, #2]
d004e158:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e15c:	78e3      	ldrb	r3, [r4, #3]
d004e15e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e162:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e166:	689b      	ldr	r3, [r3, #8]
d004e168:	4798      	blx	r3
d004e16a:	4951      	ldr	r1, [pc, #324]	; (d004e2b0 <main+0x11f0>)
d004e16c:	eeb5 7a00 	vmov.f32	s14, #80	; 0x3e800000  0.250
d004e170:	682a      	ldr	r2, [r5, #0]
d004e172:	edd1 7a00 	vldr	s15, [r1]
d004e176:	4d4f      	ldr	r5, [pc, #316]	; (d004e2b4 <main+0x11f4>)
d004e178:	1a80      	subs	r0, r0, r2
d004e17a:	ee78 7a27 	vadd.f32	s15, s16, s15
d004e17e:	4a4e      	ldr	r2, [pc, #312]	; (d004e2b8 <main+0x11f8>)
d004e180:	682b      	ldr	r3, [r5, #0]
d004e182:	6010      	str	r0, [r2, #0]
d004e184:	eef4 7ac7 	vcmpe.f32	s15, s14
d004e188:	3301      	adds	r3, #1
d004e18a:	edc1 7a00 	vstr	s15, [r1]
d004e18e:	602b      	str	r3, [r5, #0]
d004e190:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e194:	db24      	blt.n	d004e1e0 <main+0x1120>
d004e196:	ed9f 7a49 	vldr	s14, [pc, #292]	; d004e2bc <main+0x11fc>
d004e19a:	eef4 7ac7 	vcmpe.f32	s15, s14
d004e19e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e1a2:	f340 82e2 	ble.w	d004e76a <main+0x16aa>
d004e1a6:	ee07 3a10 	vmov	s14, r3
d004e1aa:	4b45      	ldr	r3, [pc, #276]	; (d004e2c0 <main+0x1200>)
d004e1ac:	2164      	movs	r1, #100	; 0x64
d004e1ae:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004e1b2:	ee27 7a0b 	vmul.f32	s14, s14, s22
d004e1b6:	eec7 6a27 	vdiv.f32	s13, s14, s15
d004e1ba:	eefc 7ae6 	vcvt.u32.f32	s15, s13
d004e1be:	ee17 2a90 	vmov	r2, s15
d004e1c2:	fba3 0302 	umull	r0, r3, r3, r2
d004e1c6:	095b      	lsrs	r3, r3, #5
d004e1c8:	fb01 2213 	mls	r2, r1, r3, r2
d004e1cc:	483d      	ldr	r0, [pc, #244]	; (d004e2c4 <main+0x1204>)
d004e1ce:	2100      	movs	r1, #0
d004e1d0:	6003      	str	r3, [r0, #0]
d004e1d2:	4b3d      	ldr	r3, [pc, #244]	; (d004e2c8 <main+0x1208>)
d004e1d4:	601a      	str	r2, [r3, #0]
d004e1d6:	4b36      	ldr	r3, [pc, #216]	; (d004e2b0 <main+0x11f0>)
d004e1d8:	ed83 aa00 	vstr	s20, [r3]
d004e1dc:	4b35      	ldr	r3, [pc, #212]	; (d004e2b4 <main+0x11f4>)
d004e1de:	6019      	str	r1, [r3, #0]
d004e1e0:	a885      	add	r0, sp, #532	; 0x214
d004e1e2:	f7fd fdeb 	bl	d004bdbc <splineRailGetCurrentNode>
d004e1e6:	2f00      	cmp	r7, #0
d004e1e8:	f040 81fe 	bne.w	d004e5e8 <main+0x1528>
d004e1ec:	4b32      	ldr	r3, [pc, #200]	; (d004e2b8 <main+0x11f8>)
d004e1ee:	b2c5      	uxtb	r5, r0
d004e1f0:	4f36      	ldr	r7, [pc, #216]	; (d004e2cc <main+0x120c>)
d004e1f2:	f44f 767a 	mov.w	r6, #1000	; 0x3e8
d004e1f6:	f8d3 9000 	ldr.w	r9, [r3]
d004e1fa:	4b32      	ldr	r3, [pc, #200]	; (d004e2c4 <main+0x1204>)
d004e1fc:	681a      	ldr	r2, [r3, #0]
d004e1fe:	4b32      	ldr	r3, [pc, #200]	; (d004e2c8 <main+0x1208>)
d004e200:	920a      	str	r2, [sp, #40]	; 0x28
d004e202:	681b      	ldr	r3, [r3, #0]
d004e204:	9306      	str	r3, [sp, #24]
d004e206:	f004 fea7 	bl	d0052f58 <getRenderTriCount>
d004e20a:	f8df c0d0 	ldr.w	ip, [pc, #208]	; d004e2dc <main+0x121c>
d004e20e:	9003      	str	r0, [sp, #12]
d004e210:	fbac 3109 	umull	r3, r1, ip, r9
d004e214:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004e216:	9b06      	ldr	r3, [sp, #24]
d004e218:	ea4f 4e51 	mov.w	lr, r1, lsr #17
d004e21c:	482c      	ldr	r0, [pc, #176]	; (d004e2d0 <main+0x1210>)
d004e21e:	492d      	ldr	r1, [pc, #180]	; (d004e2d4 <main+0x1214>)
d004e220:	fb07 971e 	mls	r7, r7, lr, r9
d004e224:	9502      	str	r5, [sp, #8]
d004e226:	fb06 f607 	mul.w	r6, r6, r7
d004e22a:	f8cd e000 	str.w	lr, [sp]
d004e22e:	fbac 7606 	umull	r7, r6, ip, r6
d004e232:	0c76      	lsrs	r6, r6, #17
d004e234:	9601      	str	r6, [sp, #4]
d004e236:	f007 f9a3 	bl	d0055580 <siprintf>
d004e23a:	4b27      	ldr	r3, [pc, #156]	; (d004e2d8 <main+0x1218>)
d004e23c:	781b      	ldrb	r3, [r3, #0]
d004e23e:	42ab      	cmp	r3, r5
d004e240:	d002      	beq.n	d004e248 <main+0x1188>
d004e242:	2d14      	cmp	r5, #20
d004e244:	f000 8294 	beq.w	d004e770 <main+0x16b0>
d004e248:	9b04      	ldr	r3, [sp, #16]
d004e24a:	0118      	lsls	r0, r3, #4
d004e24c:	3001      	adds	r0, #1
d004e24e:	7b23      	ldrb	r3, [r4, #12]
d004e250:	2640      	movs	r6, #64	; 0x40
d004e252:	7b62      	ldrb	r2, [r4, #13]
d004e254:	7ba7      	ldrb	r7, [r4, #14]
d004e256:	ea43 2102 	orr.w	r1, r3, r2, lsl #8
d004e25a:	4a1f      	ldr	r2, [pc, #124]	; (d004e2d8 <main+0x1218>)
d004e25c:	7be3      	ldrb	r3, [r4, #15]
d004e25e:	7015      	strb	r5, [r2, #0]
d004e260:	ea41 4207 	orr.w	r2, r1, r7, lsl #16
d004e264:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e268:	685b      	ldr	r3, [r3, #4]
d004e26a:	68db      	ldr	r3, [r3, #12]
d004e26c:	4798      	blx	r3
d004e26e:	7b20      	ldrb	r0, [r4, #12]
d004e270:	e036      	b.n	d004e2e0 <main+0x1220>
d004e272:	bf00      	nop
d004e274:	d005a254 	.word	0xd005a254
d004e278:	d005a258 	.word	0xd005a258
d004e27c:	c40d4000 	.word	0xc40d4000
d004e280:	43d70000 	.word	0x43d70000
d004e284:	c4480000 	.word	0xc4480000
d004e288:	d005a0c0 	.word	0xd005a0c0
d004e28c:	d00f4660 	.word	0xd00f4660
d004e290:	d00f4680 	.word	0xd00f4680
d004e294:	d005a240 	.word	0xd005a240
d004e298:	d00f4624 	.word	0xd00f4624
d004e29c:	d0059f6c 	.word	0xd0059f6c
d004e2a0:	d005a028 	.word	0xd005a028
d004e2a4:	d005a23c 	.word	0xd005a23c
d004e2a8:	d00f4604 	.word	0xd00f4604
d004e2ac:	d005a248 	.word	0xd005a248
d004e2b0:	d005a0b8 	.word	0xd005a0b8
d004e2b4:	d005a0b4 	.word	0xd005a0b4
d004e2b8:	d005a24c 	.word	0xd005a24c
d004e2bc:	3727c5ac 	.word	0x3727c5ac
d004e2c0:	51eb851f 	.word	0x51eb851f
d004e2c4:	d005a0bc 	.word	0xd005a0bc
d004e2c8:	d005a0b0 	.word	0xd005a0b0
d004e2cc:	00075300 	.word	0x00075300
d004e2d0:	d0059f74 	.word	0xd0059f74
d004e2d4:	d00571d8 	.word	0xd00571d8
d004e2d8:	d005a22c 	.word	0xd005a22c
d004e2dc:	45e7b273 	.word	0x45e7b273
d004e2e0:	7b65      	ldrb	r5, [r4, #13]
d004e2e2:	2108      	movs	r1, #8
d004e2e4:	7ba3      	ldrb	r3, [r4, #14]
d004e2e6:	ea40 2505 	orr.w	r5, r0, r5, lsl #8
d004e2ea:	7be7      	ldrb	r7, [r4, #15]
d004e2ec:	4608      	mov	r0, r1
d004e2ee:	4ab3      	ldr	r2, [pc, #716]	; (d004e5bc <main+0x14fc>)
d004e2f0:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
d004e2f4:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d004e2f8:	687b      	ldr	r3, [r7, #4]
d004e2fa:	4fb1      	ldr	r7, [pc, #708]	; (d004e5c0 <main+0x1500>)
d004e2fc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d004e2fe:	4798      	blx	r3
d004e300:	eddf 7ab0 	vldr	s15, [pc, #704]	; d004e5c4 <main+0x1504>
d004e304:	7d25      	ldrb	r5, [r4, #20]
d004e306:	2002      	movs	r0, #2
d004e308:	ee68 7aa7 	vmul.f32	s15, s17, s15
d004e30c:	7d62      	ldrb	r2, [r4, #21]
d004e30e:	ed9f 7aae 	vldr	s14, [pc, #696]	; d004e5c8 <main+0x1508>
d004e312:	ee68 8aab 	vmul.f32	s17, s17, s23
d004e316:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004e31a:	7da2      	ldrb	r2, [r4, #22]
d004e31c:	eef0 7ae7 	vabs.f32	s15, s15
d004e320:	7de3      	ldrb	r3, [r4, #23]
d004e322:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e326:	ee77 7a87 	vadd.f32	s15, s15, s14
d004e32a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e32e:	689b      	ldr	r3, [r3, #8]
d004e330:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004e334:	691b      	ldr	r3, [r3, #16]
d004e336:	ee17 2a90 	vmov	r2, s15
d004e33a:	b291      	uxth	r1, r2
d004e33c:	4798      	blx	r3
d004e33e:	ed9f 7aa3 	vldr	s14, [pc, #652]	; d004e5cc <main+0x150c>
d004e342:	edd7 7a00 	vldr	s15, [r7]
d004e346:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004e34a:	eeb4 8a47 	vcmp.f32	s16, s14
d004e34e:	7b21      	ldrb	r1, [r4, #12]
d004e350:	ee78 8ae7 	vsub.f32	s17, s17, s15
d004e354:	7b62      	ldrb	r2, [r4, #13]
d004e356:	7ba3      	ldrb	r3, [r4, #14]
d004e358:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004e35c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e360:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d004e364:	7be0      	ldrb	r0, [r4, #15]
d004e366:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d004e36a:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d004e36e:	f04f 010a 	mov.w	r1, #10
d004e372:	fe36 ca0c 	vselgt.f32	s24, s12, s24
d004e376:	eee8 7a8c 	vfma.f32	s15, s17, s24
d004e37a:	ea43 6000 	orr.w	r0, r3, r0, lsl #24
d004e37e:	f44f 7280 	mov.w	r2, #256	; 0x100
d004e382:	4633      	mov	r3, r6
d004e384:	6845      	ldr	r5, [r0, #4]
d004e386:	9600      	str	r6, [sp, #0]
d004e388:	4891      	ldr	r0, [pc, #580]	; (d004e5d0 <main+0x1510>)
d004e38a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004e38e:	69ad      	ldr	r5, [r5, #24]
d004e390:	edc7 7a00 	vstr	s15, [r7]
d004e394:	eeb0 8a67 	vmov.f32	s16, s15
d004e398:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e39c:	fe67 8a26 	vselge.f32	s17, s14, s13
d004e3a0:	47a8      	blx	r5
d004e3a2:	4b8c      	ldr	r3, [pc, #560]	; (d004e5d4 <main+0x1514>)
d004e3a4:	781b      	ldrb	r3, [r3, #0]
d004e3a6:	b1cb      	cbz	r3, d004e3dc <main+0x131c>
d004e3a8:	7b21      	ldrb	r1, [r4, #12]
d004e3aa:	ee38 8a28 	vadd.f32	s16, s16, s17
d004e3ae:	7b60      	ldrb	r0, [r4, #13]
d004e3b0:	4633      	mov	r3, r6
d004e3b2:	7ba5      	ldrb	r5, [r4, #14]
d004e3b4:	2280      	movs	r2, #128	; 0x80
d004e3b6:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d004e3ba:	eefd 7ac8 	vcvt.s32.f32	s15, s16
d004e3be:	7be7      	ldrb	r7, [r4, #15]
d004e3c0:	ea41 4005 	orr.w	r0, r1, r5, lsl #16
d004e3c4:	ee17 1a90 	vmov	r1, s15
d004e3c8:	ea40 6507 	orr.w	r5, r0, r7, lsl #24
d004e3cc:	4882      	ldr	r0, [pc, #520]	; (d004e5d8 <main+0x1518>)
d004e3ce:	f1c1 01d0 	rsb	r1, r1, #208	; 0xd0
d004e3d2:	686d      	ldr	r5, [r5, #4]
d004e3d4:	b209      	sxth	r1, r1
d004e3d6:	9600      	str	r6, [sp, #0]
d004e3d8:	69ad      	ldr	r5, [r5, #24]
d004e3da:	47a8      	blx	r5
d004e3dc:	4f7f      	ldr	r7, [pc, #508]	; (d004e5dc <main+0x151c>)
d004e3de:	2633      	movs	r6, #51	; 0x33
d004e3e0:	e035      	b.n	d004e44e <main+0x138e>
d004e3e2:	883b      	ldrh	r3, [r7, #0]
d004e3e4:	f1c3 0332 	rsb	r3, r3, #50	; 0x32
d004e3e8:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d004e3ec:	005d      	lsls	r5, r3, #1
d004e3ee:	f115 0f31 	cmn.w	r5, #49	; 0x31
d004e3f2:	f2c0 80c0 	blt.w	d004e576 <main+0x14b6>
d004e3f6:	f894 c00c 	ldrb.w	ip, [r4, #12]
d004e3fa:	2000      	movs	r0, #0
d004e3fc:	7b61      	ldrb	r1, [r4, #13]
d004e3fe:	7ba2      	ldrb	r2, [r4, #14]
d004e400:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e404:	7be3      	ldrb	r3, [r4, #15]
d004e406:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e40a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e40e:	685b      	ldr	r3, [r3, #4]
d004e410:	68db      	ldr	r3, [r3, #12]
d004e412:	4798      	blx	r3
d004e414:	7b21      	ldrb	r1, [r4, #12]
d004e416:	7b60      	ldrb	r0, [r4, #13]
d004e418:	2312      	movs	r3, #18
d004e41a:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e41e:	2206      	movs	r2, #6
d004e420:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e424:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e428:	b231      	sxth	r1, r6
d004e42a:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d004e42e:	2009      	movs	r0, #9
d004e430:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004e434:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e438:	f8dc 9004 	ldr.w	r9, [ip, #4]
d004e43c:	47c8      	blx	r9
d004e43e:	2d31      	cmp	r5, #49	; 0x31
d004e440:	f300 81de 	bgt.w	d004e800 <main+0x1740>
d004e444:	3616      	adds	r6, #22
d004e446:	3706      	adds	r7, #6
d004e448:	b2b6      	uxth	r6, r6
d004e44a:	2ee3      	cmp	r6, #227	; 0xe3
d004e44c:	d078      	beq.n	d004e540 <main+0x1480>
d004e44e:	7b25      	ldrb	r5, [r4, #12]
d004e450:	201b      	movs	r0, #27
d004e452:	7b61      	ldrb	r1, [r4, #13]
d004e454:	7ba2      	ldrb	r2, [r4, #14]
d004e456:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e45a:	7be3      	ldrb	r3, [r4, #15]
d004e45c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e460:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e464:	685b      	ldr	r3, [r3, #4]
d004e466:	68db      	ldr	r3, [r3, #12]
d004e468:	4798      	blx	r3
d004e46a:	7b20      	ldrb	r0, [r4, #12]
d004e46c:	f894 c00d 	ldrb.w	ip, [r4, #13]
d004e470:	2208      	movs	r2, #8
d004e472:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e476:	1e71      	subs	r1, r6, #1
d004e478:	ea40 230c 	orr.w	r3, r0, ip, lsl #8
d004e47c:	7be5      	ldrb	r5, [r4, #15]
d004e47e:	4610      	mov	r0, r2
d004e480:	b209      	sxth	r1, r1
d004e482:	ea43 4c0e 	orr.w	ip, r3, lr, lsl #16
d004e486:	2314      	movs	r3, #20
d004e488:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e48c:	686d      	ldr	r5, [r5, #4]
d004e48e:	686d      	ldr	r5, [r5, #4]
d004e490:	47a8      	blx	r5
d004e492:	f817 0c02 	ldrb.w	r0, [r7, #-2]
d004e496:	2800      	cmp	r0, #0
d004e498:	d1a3      	bne.n	d004e3e2 <main+0x1322>
d004e49a:	7b23      	ldrb	r3, [r4, #12]
d004e49c:	2512      	movs	r5, #18
d004e49e:	7b61      	ldrb	r1, [r4, #13]
d004e4a0:	7ba2      	ldrb	r2, [r4, #14]
d004e4a2:	46a9      	mov	r9, r5
d004e4a4:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d004e4a8:	7be3      	ldrb	r3, [r4, #15]
d004e4aa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e4ae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e4b2:	685b      	ldr	r3, [r3, #4]
d004e4b4:	68db      	ldr	r3, [r3, #12]
d004e4b6:	4798      	blx	r3
d004e4b8:	f894 e00c 	ldrb.w	lr, [r4, #12]
d004e4bc:	7b60      	ldrb	r0, [r4, #13]
d004e4be:	462b      	mov	r3, r5
d004e4c0:	7ba1      	ldrb	r1, [r4, #14]
d004e4c2:	2206      	movs	r2, #6
d004e4c4:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d004e4c8:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e4cc:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d004e4d0:	2009      	movs	r0, #9
d004e4d2:	ea41 6c0c 	orr.w	ip, r1, ip, lsl #24
d004e4d6:	b231      	sxth	r1, r6
d004e4d8:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e4dc:	f8dc b004 	ldr.w	fp, [ip, #4]
d004e4e0:	47d8      	blx	fp
d004e4e2:	7b20      	ldrb	r0, [r4, #12]
d004e4e4:	3706      	adds	r7, #6
d004e4e6:	7b61      	ldrb	r1, [r4, #13]
d004e4e8:	7ba2      	ldrb	r2, [r4, #14]
d004e4ea:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e4ee:	7be3      	ldrb	r3, [r4, #15]
d004e4f0:	f817 0c08 	ldrb.w	r0, [r7, #-8]
d004e4f4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e4f8:	2800      	cmp	r0, #0
d004e4fa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e4fe:	bf14      	ite	ne
d004e500:	200e      	movne	r0, #14
d004e502:	201b      	moveq	r0, #27
d004e504:	685b      	ldr	r3, [r3, #4]
d004e506:	68db      	ldr	r3, [r3, #12]
d004e508:	4798      	blx	r3
d004e50a:	7b22      	ldrb	r2, [r4, #12]
d004e50c:	7b60      	ldrb	r0, [r4, #13]
d004e50e:	462b      	mov	r3, r5
d004e510:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e514:	f106 0112 	add.w	r1, r6, #18
d004e518:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004e51c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e520:	3616      	adds	r6, #22
d004e522:	eba1 0109 	sub.w	r1, r1, r9
d004e526:	ea40 450e 	orr.w	r5, r0, lr, lsl #16
d004e52a:	2206      	movs	r2, #6
d004e52c:	b2b6      	uxth	r6, r6
d004e52e:	2009      	movs	r0, #9
d004e530:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004e534:	b209      	sxth	r1, r1
d004e536:	686d      	ldr	r5, [r5, #4]
d004e538:	686d      	ldr	r5, [r5, #4]
d004e53a:	47a8      	blx	r5
d004e53c:	2ee3      	cmp	r6, #227	; 0xe3
d004e53e:	d186      	bne.n	d004e44e <main+0x138e>
d004e540:	7b20      	ldrb	r0, [r4, #12]
d004e542:	7b61      	ldrb	r1, [r4, #13]
d004e544:	7ba2      	ldrb	r2, [r4, #14]
d004e546:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e54a:	7be3      	ldrb	r3, [r4, #15]
d004e54c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e550:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e554:	681b      	ldr	r3, [r3, #0]
d004e556:	681b      	ldr	r3, [r3, #0]
d004e558:	4798      	blx	r3
d004e55a:	eddf 7a21 	vldr	s15, [pc, #132]	; d004e5e0 <main+0x1520>
d004e55e:	eef4 aae7 	vcmpe.f32	s21, s15
d004e562:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e566:	dc6d      	bgt.n	d004e644 <main+0x1584>
d004e568:	eddf 7a1e 	vldr	s15, [pc, #120]	; d004e5e4 <main+0x1524>
d004e56c:	ee7a aaa7 	vadd.f32	s21, s21, s15
d004e570:	9d05      	ldr	r5, [sp, #20]
d004e572:	f7ff bb4e 	b.w	d004dc12 <main+0xb52>
d004e576:	7b25      	ldrb	r5, [r4, #12]
d004e578:	2000      	movs	r0, #0
d004e57a:	7b61      	ldrb	r1, [r4, #13]
d004e57c:	7ba2      	ldrb	r2, [r4, #14]
d004e57e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e582:	7be3      	ldrb	r3, [r4, #15]
d004e584:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e588:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e58c:	685b      	ldr	r3, [r3, #4]
d004e58e:	68db      	ldr	r3, [r3, #12]
d004e590:	4798      	blx	r3
d004e592:	7b21      	ldrb	r1, [r4, #12]
d004e594:	7b60      	ldrb	r0, [r4, #13]
d004e596:	2312      	movs	r3, #18
d004e598:	f894 c00e 	ldrb.w	ip, [r4, #14]
d004e59c:	2206      	movs	r2, #6
d004e59e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e5a2:	7be5      	ldrb	r5, [r4, #15]
d004e5a4:	b231      	sxth	r1, r6
d004e5a6:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004e5aa:	2009      	movs	r0, #9
d004e5ac:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e5b0:	686d      	ldr	r5, [r5, #4]
d004e5b2:	686d      	ldr	r5, [r5, #4]
d004e5b4:	47a8      	blx	r5
d004e5b6:	e745      	b.n	d004e444 <main+0x1384>
d004e5b8:	2601      	movs	r6, #1
d004e5ba:	e54d      	b.n	d004e058 <main+0xf98>
d004e5bc:	d0059f74 	.word	0xd0059f74
d004e5c0:	d005a238 	.word	0xd005a238
d004e5c4:	448fc000 	.word	0x448fc000
d004e5c8:	472c4400 	.word	0x472c4400
d004e5cc:	3daaaaab 	.word	0x3daaaaab
d004e5d0:	d0057b68 	.word	0xd0057b68
d004e5d4:	d005a0c0 	.word	0xd005a0c0
d004e5d8:	d0058b68 	.word	0xd0058b68
d004e5dc:	d00f4702 	.word	0xd00f4702
d004e5e0:	3f7ef9db 	.word	0x3f7ef9db
d004e5e4:	3b83126f 	.word	0x3b83126f
d004e5e8:	4b89      	ldr	r3, [pc, #548]	; (d004e810 <main+0x1750>)
d004e5ea:	4f8a      	ldr	r7, [pc, #552]	; (d004e814 <main+0x1754>)
d004e5ec:	f8d3 9000 	ldr.w	r9, [r3]
d004e5f0:	4b89      	ldr	r3, [pc, #548]	; (d004e818 <main+0x1758>)
d004e5f2:	4e8a      	ldr	r6, [pc, #552]	; (d004e81c <main+0x175c>)
d004e5f4:	681a      	ldr	r2, [r3, #0]
d004e5f6:	4b8a      	ldr	r3, [pc, #552]	; (d004e820 <main+0x1760>)
d004e5f8:	920a      	str	r2, [sp, #40]	; 0x28
d004e5fa:	681b      	ldr	r3, [r3, #0]
d004e5fc:	9306      	str	r3, [sp, #24]
d004e5fe:	f004 fcab 	bl	d0052f58 <getRenderTriCount>
d004e602:	fba7 3509 	umull	r3, r5, r7, r9
d004e606:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d004e60a:	9003      	str	r0, [sp, #12]
d004e60c:	0c68      	lsrs	r0, r5, #17
d004e60e:	2514      	movs	r5, #20
d004e610:	9b06      	ldr	r3, [sp, #24]
d004e612:	fb06 9610 	mls	r6, r6, r0, r9
d004e616:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004e618:	9502      	str	r5, [sp, #8]
d004e61a:	fb01 f606 	mul.w	r6, r1, r6
d004e61e:	4981      	ldr	r1, [pc, #516]	; (d004e824 <main+0x1764>)
d004e620:	9000      	str	r0, [sp, #0]
d004e622:	fba7 5606 	umull	r5, r6, r7, r6
d004e626:	4880      	ldr	r0, [pc, #512]	; (d004e828 <main+0x1768>)
d004e628:	0c76      	lsrs	r6, r6, #17
d004e62a:	9601      	str	r6, [sp, #4]
d004e62c:	f006 ffa8 	bl	d0055580 <siprintf>
d004e630:	4b7e      	ldr	r3, [pc, #504]	; (d004e82c <main+0x176c>)
d004e632:	781d      	ldrb	r5, [r3, #0]
d004e634:	2d14      	cmp	r5, #20
d004e636:	f040 809b 	bne.w	d004e770 <main+0x16b0>
d004e63a:	9b04      	ldr	r3, [sp, #16]
d004e63c:	0118      	lsls	r0, r3, #4
d004e63e:	3001      	adds	r0, #1
d004e640:	b2c0      	uxtb	r0, r0
d004e642:	e604      	b.n	d004e24e <main+0x118e>
d004e644:	eef7 aa00 	vmov.f32	s21, #112	; 0x3f800000  1.0
d004e648:	e792      	b.n	d004e570 <main+0x14b0>
d004e64a:	4d79      	ldr	r5, [pc, #484]	; (d004e830 <main+0x1770>)
d004e64c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e650:	7be3      	ldrb	r3, [r4, #15]
d004e652:	6829      	ldr	r1, [r5, #0]
d004e654:	4877      	ldr	r0, [pc, #476]	; (d004e834 <main+0x1774>)
d004e656:	e4f0      	b.n	d004e03a <main+0xf7a>
d004e658:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e65c:	7d61      	ldrb	r1, [r4, #21]
d004e65e:	7da2      	ldrb	r2, [r4, #22]
d004e660:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e664:	7de3      	ldrb	r3, [r4, #23]
d004e666:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e66a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e66e:	689b      	ldr	r3, [r3, #8]
d004e670:	689b      	ldr	r3, [r3, #8]
d004e672:	4798      	blx	r3
d004e674:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e678:	7d61      	ldrb	r1, [r4, #21]
d004e67a:	4630      	mov	r0, r6
d004e67c:	7da2      	ldrb	r2, [r4, #22]
d004e67e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e682:	7de3      	ldrb	r3, [r4, #23]
d004e684:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e688:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e68c:	689b      	ldr	r3, [r3, #8]
d004e68e:	685b      	ldr	r3, [r3, #4]
d004e690:	4798      	blx	r3
d004e692:	f809 7c01 	strb.w	r7, [r9, #-1]
d004e696:	e509      	b.n	d004e0ac <main+0xfec>
d004e698:	2300      	movs	r3, #0
d004e69a:	ee1f 0a90 	vmov	r0, s31
d004e69e:	4619      	mov	r1, r3
d004e6a0:	9306      	str	r3, [sp, #24]
d004e6a2:	f003 fdab 	bl	d00521fc <lightEnable>
d004e6a6:	e412      	b.n	d004dece <main+0xe0e>
d004e6a8:	ed9f ca63 	vldr	s24, [pc, #396]	; d004e838 <main+0x1778>
d004e6ac:	eddf ca63 	vldr	s25, [pc, #396]	; d004e83c <main+0x177c>
d004e6b0:	eddf da63 	vldr	s27, [pc, #396]	; d004e840 <main+0x1780>
d004e6b4:	ed9f ea63 	vldr	s28, [pc, #396]	; d004e844 <main+0x1784>
d004e6b8:	ed9f da63 	vldr	s26, [pc, #396]	; d004e848 <main+0x1788>
d004e6bc:	eddf ea63 	vldr	s29, [pc, #396]	; d004e84c <main+0x178c>
d004e6c0:	ed9f 8a63 	vldr	s16, [pc, #396]	; d004e850 <main+0x1790>
d004e6c4:	f7ff baf4 	b.w	d004dcb0 <main+0xbf0>
d004e6c8:	4b62      	ldr	r3, [pc, #392]	; (d004e854 <main+0x1794>)
d004e6ca:	4640      	mov	r0, r8
d004e6cc:	4a62      	ldr	r2, [pc, #392]	; (d004e858 <main+0x1798>)
d004e6ce:	4963      	ldr	r1, [pc, #396]	; (d004e85c <main+0x179c>)
d004e6d0:	781b      	ldrb	r3, [r3, #0]
d004e6d2:	7812      	ldrb	r2, [r2, #0]
d004e6d4:	7809      	ldrb	r1, [r1, #0]
d004e6d6:	f004 fe53 	bl	d0053380 <drawFakeHorizon>
d004e6da:	e517      	b.n	d004e10c <main+0x104c>
d004e6dc:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
d004e6de:	2101      	movs	r1, #1
d004e6e0:	4628      	mov	r0, r5
d004e6e2:	f003 fd8b 	bl	d00521fc <lightEnable>
d004e6e6:	4628      	mov	r0, r5
d004e6e8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004e6ec:	f003 fe1c 	bl	d0052328 <lightSetIntensity>
d004e6f0:	eeb0 0a4a 	vmov.f32	s0, s20
d004e6f4:	2301      	movs	r3, #1
d004e6f6:	2224      	movs	r2, #36	; 0x24
d004e6f8:	212b      	movs	r1, #43	; 0x2b
d004e6fa:	4640      	mov	r0, r8
d004e6fc:	f004 fe40 	bl	d0053380 <drawFakeHorizon>
d004e700:	e50c      	b.n	d004e11c <main+0x105c>
d004e702:	eef0 0a6b 	vmov.f32	s1, s23
d004e706:	ed9f 1a56 	vldr	s2, [pc, #344]	; d004e860 <main+0x17a0>
d004e70a:	ed9f 0a56 	vldr	s0, [pc, #344]	; d004e864 <main+0x17a4>
d004e70e:	f001 fec3 	bl	d0050498 <vec3>
d004e712:	ee1f 0a10 	vmov	r0, s30
d004e716:	ed8d 0a66 	vstr	s0, [sp, #408]	; 0x198
d004e71a:	edcd 0a67 	vstr	s1, [sp, #412]	; 0x19c
d004e71e:	ed8d 1a68 	vstr	s2, [sp, #416]	; 0x1a0
d004e722:	f002 fe79 	bl	d0051418 <entitySetPosition>
d004e726:	f7ff bb37 	b.w	d004dd98 <main+0xcd8>
d004e72a:	eef1 0a60 	vneg.f32	s1, s1
d004e72e:	2101      	movs	r1, #1
d004e730:	eeb0 1a4a 	vmov.f32	s2, s20
d004e734:	ed9f 0a4c 	vldr	s0, [pc, #304]	; d004e868 <main+0x17a8>
d004e738:	4640      	mov	r0, r8
d004e73a:	f002 f943 	bl	d00509c4 <cameraTurn>
d004e73e:	f7ff bafa 	b.w	d004dd36 <main+0xc76>
d004e742:	2300      	movs	r3, #0
d004e744:	eeb0 1a6c 	vmov.f32	s2, s25
d004e748:	eef0 0a4a 	vmov.f32	s1, s20
d004e74c:	ed9f 0a46 	vldr	s0, [pc, #280]	; d004e868 <main+0x17a8>
d004e750:	4640      	mov	r0, r8
d004e752:	9307      	str	r3, [sp, #28]
d004e754:	f002 fb12 	bl	d0050d7c <cameraMove>
d004e758:	f7ff bbda 	b.w	d004df10 <main+0xe50>
d004e75c:	eeb0 0a48 	vmov.f32	s0, s16
d004e760:	4641      	mov	r1, r8
d004e762:	a885      	add	r0, sp, #532	; 0x214
d004e764:	f7fd f944 	bl	d004b9f0 <splineRailUpdate>
d004e768:	e4a9      	b.n	d004e0be <main+0xffe>
d004e76a:	2200      	movs	r2, #0
d004e76c:	4613      	mov	r3, r2
d004e76e:	e52d      	b.n	d004e1cc <main+0x110c>
d004e770:	9b04      	ldr	r3, [sp, #16]
d004e772:	2b00      	cmp	r3, #0
d004e774:	d033      	beq.n	d004e7de <main+0x171e>
d004e776:	4d39      	ldr	r5, [pc, #228]	; (d004e85c <main+0x179c>)
d004e778:	4618      	mov	r0, r3
d004e77a:	2313      	movs	r3, #19
d004e77c:	2112      	movs	r1, #18
d004e77e:	2215      	movs	r2, #21
d004e780:	702b      	strb	r3, [r5, #0]
d004e782:	2319      	movs	r3, #25
d004e784:	4d34      	ldr	r5, [pc, #208]	; (d004e858 <main+0x1798>)
d004e786:	7029      	strb	r1, [r5, #0]
d004e788:	2514      	movs	r5, #20
d004e78a:	4932      	ldr	r1, [pc, #200]	; (d004e854 <main+0x1794>)
d004e78c:	700a      	strb	r2, [r1, #0]
d004e78e:	2200      	movs	r2, #0
d004e790:	9204      	str	r2, [sp, #16]
d004e792:	4a36      	ldr	r2, [pc, #216]	; (d004e86c <main+0x17ac>)
d004e794:	7013      	strb	r3, [r2, #0]
d004e796:	e55a      	b.n	d004e24e <main+0x118e>
d004e798:	3b01      	subs	r3, #1
d004e79a:	4a35      	ldr	r2, [pc, #212]	; (d004e870 <main+0x17b0>)
d004e79c:	7013      	strb	r3, [r2, #0]
d004e79e:	e4b5      	b.n	d004e10c <main+0x104c>
d004e7a0:	f006 fde0 	bl	d0055364 <rand>
d004e7a4:	4242      	negs	r2, r0
d004e7a6:	f000 0303 	and.w	r3, r0, #3
d004e7aa:	f002 0203 	and.w	r2, r2, #3
d004e7ae:	bf58      	it	pl
d004e7b0:	4253      	negpl	r3, r2
d004e7b2:	4a30      	ldr	r2, [pc, #192]	; (d004e874 <main+0x17b4>)
d004e7b4:	3303      	adds	r3, #3
d004e7b6:	8013      	strh	r3, [r2, #0]
d004e7b8:	f006 fdd4 	bl	d0055364 <rand>
d004e7bc:	4b2e      	ldr	r3, [pc, #184]	; (d004e878 <main+0x17b8>)
d004e7be:	fb83 2300 	smull	r2, r3, r3, r0
d004e7c2:	17c2      	asrs	r2, r0, #31
d004e7c4:	4403      	add	r3, r0
d004e7c6:	ebc2 12a3 	rsb	r2, r2, r3, asr #6
d004e7ca:	eb02 03c2 	add.w	r3, r2, r2, lsl #3
d004e7ce:	ebc2 02c3 	rsb	r2, r2, r3, lsl #3
d004e7d2:	1a83      	subs	r3, r0, r2
d004e7d4:	4a29      	ldr	r2, [pc, #164]	; (d004e87c <main+0x17bc>)
d004e7d6:	3314      	adds	r3, #20
d004e7d8:	8013      	strh	r3, [r2, #0]
d004e7da:	f7ff bbe1 	b.w	d004dfa0 <main+0xee0>
d004e7de:	2009      	movs	r0, #9
d004e7e0:	4d1e      	ldr	r5, [pc, #120]	; (d004e85c <main+0x179c>)
d004e7e2:	213b      	movs	r1, #59	; 0x3b
d004e7e4:	222b      	movs	r2, #43	; 0x2b
d004e7e6:	7028      	strb	r0, [r5, #0]
d004e7e8:	2001      	movs	r0, #1
d004e7ea:	2302      	movs	r3, #2
d004e7ec:	2514      	movs	r5, #20
d004e7ee:	9004      	str	r0, [sp, #16]
d004e7f0:	4819      	ldr	r0, [pc, #100]	; (d004e858 <main+0x1798>)
d004e7f2:	7001      	strb	r1, [r0, #0]
d004e7f4:	2011      	movs	r0, #17
d004e7f6:	4917      	ldr	r1, [pc, #92]	; (d004e854 <main+0x1794>)
d004e7f8:	700a      	strb	r2, [r1, #0]
d004e7fa:	4a1c      	ldr	r2, [pc, #112]	; (d004e86c <main+0x17ac>)
d004e7fc:	7013      	strb	r3, [r2, #0]
d004e7fe:	e526      	b.n	d004e24e <main+0x118e>
d004e800:	2332      	movs	r3, #50	; 0x32
d004e802:	fb95 f5f3 	sdiv	r5, r5, r3
d004e806:	fa1f f985 	uxth.w	r9, r5
d004e80a:	b22d      	sxth	r5, r5
d004e80c:	e669      	b.n	d004e4e2 <main+0x1422>
d004e80e:	bf00      	nop
d004e810:	d005a24c 	.word	0xd005a24c
d004e814:	45e7b273 	.word	0x45e7b273
d004e818:	d005a0bc 	.word	0xd005a0bc
d004e81c:	00075300 	.word	0x00075300
d004e820:	d005a0b0 	.word	0xd005a0b0
d004e824:	d00571d8 	.word	0xd00571d8
d004e828:	d0059f74 	.word	0xd0059f74
d004e82c:	d005a22c 	.word	0xd005a22c
d004e830:	d00f4680 	.word	0xd00f4680
d004e834:	d00f4660 	.word	0xd00f4660
d004e838:	40d33334 	.word	0x40d33334
d004e83c:	42f20000 	.word	0x42f20000
d004e840:	4312770a 	.word	0x4312770a
d004e844:	3f28f5c3 	.word	0x3f28f5c3
d004e848:	4215999a 	.word	0x4215999a
d004e84c:	bc872b02 	.word	0xbc872b02
d004e850:	3f0ccccd 	.word	0x3f0ccccd
d004e854:	d00f465c 	.word	0xd00f465c
d004e858:	d00f45a0 	.word	0xd00f45a0
d004e85c:	d00f4624 	.word	0xd00f4624
d004e860:	c3c80000 	.word	0xc3c80000
d004e864:	c3070000 	.word	0xc3070000
d004e868:	00000000 	.word	0x00000000
d004e86c:	d00f4604 	.word	0xd00f4604
d004e870:	d0059f6c 	.word	0xd0059f6c
d004e874:	d005a254 	.word	0xd005a254
d004e878:	e6c2b449 	.word	0xe6c2b449
d004e87c:	d005a256 	.word	0xd005a256

d004e880 <meshSetDefaultMaterial>:
d004e880:	b148      	cbz	r0, d004e896 <meshSetDefaultMaterial+0x16>
d004e882:	2300      	movs	r3, #0
d004e884:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d004e888:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d004e88c:	6203      	str	r3, [r0, #32]
d004e88e:	6241      	str	r1, [r0, #36]	; 0x24
d004e890:	62c2      	str	r2, [r0, #44]	; 0x2c
d004e892:	6303      	str	r3, [r0, #48]	; 0x30
d004e894:	6283      	str	r3, [r0, #40]	; 0x28
d004e896:	4770      	bx	lr

d004e898 <meshSetMaterial>:
d004e898:	b148      	cbz	r0, d004e8ae <meshSetMaterial+0x16>
d004e89a:	ed80 0a08 	vstr	s0, [r0, #32]
d004e89e:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d004e8a2:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d004e8a6:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d004e8aa:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d004e8ae:	4770      	bx	lr

d004e8b0 <initDepthBandMem>:
d004e8b0:	b510      	push	{r4, lr}
d004e8b2:	4c0c      	ldr	r4, [pc, #48]	; (d004e8e4 <initDepthBandMem+0x34>)
d004e8b4:	6823      	ldr	r3, [r4, #0]
d004e8b6:	b103      	cbz	r3, d004e8ba <initDepthBandMem+0xa>
d004e8b8:	bd10      	pop	{r4, pc}
d004e8ba:	4a0b      	ldr	r2, [pc, #44]	; (d004e8e8 <initDepthBandMem+0x38>)
d004e8bc:	7813      	ldrb	r3, [r2, #0]
d004e8be:	7850      	ldrb	r0, [r2, #1]
d004e8c0:	7891      	ldrb	r1, [r2, #2]
d004e8c2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004e8c6:	78d2      	ldrb	r2, [r2, #3]
d004e8c8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004e8cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004e8d0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e8d2:	4798      	blx	r3
d004e8d4:	2800      	cmp	r0, #0
d004e8d6:	d0ef      	beq.n	d004e8b8 <initDepthBandMem+0x8>
d004e8d8:	301f      	adds	r0, #31
d004e8da:	f020 001f 	bic.w	r0, r0, #31
d004e8de:	6020      	str	r0, [r4, #0]
d004e8e0:	bd10      	pop	{r4, pc}
d004e8e2:	bf00      	nop
d004e8e4:	d005a264 	.word	0xd005a264
d004e8e8:	2001f000 	.word	0x2001f000

d004e8ec <beginDepthBand>:
d004e8ec:	f100 031f 	add.w	r3, r0, #31
d004e8f0:	4a0d      	ldr	r2, [pc, #52]	; (d004e928 <beginDepthBand+0x3c>)
d004e8f2:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d004e8f6:	6010      	str	r0, [r2, #0]
d004e8f8:	da08      	bge.n	d004e90c <beginDepthBand+0x20>
d004e8fa:	490c      	ldr	r1, [pc, #48]	; (d004e92c <beginDepthBand+0x40>)
d004e8fc:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d004e900:	600b      	str	r3, [r1, #0]
d004e902:	21ff      	movs	r1, #255	; 0xff
d004e904:	4b0a      	ldr	r3, [pc, #40]	; (d004e930 <beginDepthBand+0x44>)
d004e906:	6818      	ldr	r0, [r3, #0]
d004e908:	f006 bc7a 	b.w	d0055200 <memset>
d004e90c:	4b07      	ldr	r3, [pc, #28]	; (d004e92c <beginDepthBand+0x40>)
d004e90e:	f240 123f 	movw	r2, #319	; 0x13f
d004e912:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d004e916:	21ff      	movs	r1, #255	; 0xff
d004e918:	601a      	str	r2, [r3, #0]
d004e91a:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d004e91e:	4b04      	ldr	r3, [pc, #16]	; (d004e930 <beginDepthBand+0x44>)
d004e920:	0182      	lsls	r2, r0, #6
d004e922:	6818      	ldr	r0, [r3, #0]
d004e924:	f006 bc6c 	b.w	d0055200 <memset>
d004e928:	d005a25c 	.word	0xd005a25c
d004e92c:	d005a260 	.word	0xd005a260
d004e930:	d005a264 	.word	0xd005a264

d004e934 <set3DRenderBuffer>:
d004e934:	4b01      	ldr	r3, [pc, #4]	; (d004e93c <set3DRenderBuffer+0x8>)
d004e936:	6018      	str	r0, [r3, #0]
d004e938:	4770      	bx	lr
d004e93a:	bf00      	nop
d004e93c:	d00f4730 	.word	0xd00f4730

d004e940 <putPixel>:
d004e940:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d004e944:	d209      	bcs.n	d004e95a <putPixel+0x1a>
d004e946:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d004e94a:	d206      	bcs.n	d004e95a <putPixel+0x1a>
d004e94c:	4b03      	ldr	r3, [pc, #12]	; (d004e95c <putPixel+0x1c>)
d004e94e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004e952:	681b      	ldr	r3, [r3, #0]
d004e954:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d004e958:	5442      	strb	r2, [r0, r1]
d004e95a:	4770      	bx	lr
d004e95c:	d00f4730 	.word	0xd00f4730

d004e960 <drawLine>:
d004e960:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004e964:	b085      	sub	sp, #20
d004e966:	eba2 0c00 	sub.w	ip, r2, r0
d004e96a:	eba3 0901 	sub.w	r9, r3, r1
d004e96e:	f240 1edf 	movw	lr, #479	; 0x1df
d004e972:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d004e976:	f240 1a3f 	movw	sl, #319	; 0x13f
d004e97a:	f8df b07c 	ldr.w	fp, [pc, #124]	; d004e9f8 <drawLine+0x98>
d004e97e:	9401      	str	r4, [sp, #4]
d004e980:	4282      	cmp	r2, r0
d004e982:	bfcc      	ite	gt
d004e984:	2401      	movgt	r4, #1
d004e986:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004e98a:	9402      	str	r4, [sp, #8]
d004e98c:	428b      	cmp	r3, r1
d004e98e:	bfcc      	ite	gt
d004e990:	2401      	movgt	r4, #1
d004e992:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004e996:	f1bc 0f00 	cmp.w	ip, #0
d004e99a:	9403      	str	r4, [sp, #12]
d004e99c:	bfb8      	it	lt
d004e99e:	f1cc 0c00 	rsblt	ip, ip, #0
d004e9a2:	f1b9 0f00 	cmp.w	r9, #0
d004e9a6:	bfb8      	it	lt
d004e9a8:	f1c9 0900 	rsblt	r9, r9, #0
d004e9ac:	ebac 0409 	sub.w	r4, ip, r9
d004e9b0:	f1c9 0800 	rsb	r8, r9, #0
d004e9b4:	4570      	cmp	r0, lr
d004e9b6:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d004e9ba:	ea4f 0644 	mov.w	r6, r4, lsl #1
d004e9be:	d807      	bhi.n	d004e9d0 <drawLine+0x70>
d004e9c0:	4551      	cmp	r1, sl
d004e9c2:	d805      	bhi.n	d004e9d0 <drawLine+0x70>
d004e9c4:	f8db 5000 	ldr.w	r5, [fp]
d004e9c8:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d004e9cc:	9f01      	ldr	r7, [sp, #4]
d004e9ce:	546f      	strb	r7, [r5, r1]
d004e9d0:	4290      	cmp	r0, r2
d004e9d2:	d101      	bne.n	d004e9d8 <drawLine+0x78>
d004e9d4:	4299      	cmp	r1, r3
d004e9d6:	d00c      	beq.n	d004e9f2 <drawLine+0x92>
d004e9d8:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d004e9dc:	dc05      	bgt.n	d004e9ea <drawLine+0x8a>
d004e9de:	9d02      	ldr	r5, [sp, #8]
d004e9e0:	45b4      	cmp	ip, r6
d004e9e2:	eba4 0409 	sub.w	r4, r4, r9
d004e9e6:	4428      	add	r0, r5
d004e9e8:	dbe4      	blt.n	d004e9b4 <drawLine+0x54>
d004e9ea:	9d03      	ldr	r5, [sp, #12]
d004e9ec:	4464      	add	r4, ip
d004e9ee:	4429      	add	r1, r5
d004e9f0:	e7e0      	b.n	d004e9b4 <drawLine+0x54>
d004e9f2:	b005      	add	sp, #20
d004e9f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004e9f8:	d00f4730 	.word	0xd00f4730

d004e9fc <fillTriangleDitherBayer>:
d004e9fc:	eddf 7ac9 	vldr	s15, [pc, #804]	; d004ed24 <fillTriangleDitherBayer+0x328>
d004ea00:	eef4 0ae7 	vcmpe.f32	s1, s15
d004ea04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004ea08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ea0c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004ea10:	ed2d 8b10 	vpush	{d8-d15}
d004ea14:	b09b      	sub	sp, #108	; 0x6c
d004ea16:	9202      	str	r2, [sp, #8]
d004ea18:	bf94      	ite	ls
d004ea1a:	2201      	movls	r2, #1
d004ea1c:	2200      	movhi	r2, #0
d004ea1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ea22:	9303      	str	r3, [sp, #12]
d004ea24:	f8bd 40d8 	ldrh.w	r4, [sp, #216]	; 0xd8
d004ea28:	bf98      	it	ls
d004ea2a:	f042 0201 	orrls.w	r2, r2, #1
d004ea2e:	f89d 30e4 	ldrb.w	r3, [sp, #228]	; 0xe4
d004ea32:	e9cd 0100 	strd	r0, r1, [sp]
d004ea36:	f8bd 00dc 	ldrh.w	r0, [sp, #220]	; 0xdc
d004ea3a:	f8bd 10e0 	ldrh.w	r1, [sp, #224]	; 0xe0
d004ea3e:	2a00      	cmp	r2, #0
d004ea40:	f040 81d8 	bne.w	d004edf4 <fillTriangleDitherBayer+0x3f8>
d004ea44:	eeb4 0a67 	vcmp.f32	s0, s15
d004ea48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ea4c:	f240 81d2 	bls.w	d004edf4 <fillTriangleDitherBayer+0x3f8>
d004ea50:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004ea54:	eddf 7aac 	vldr	s15, [pc, #688]	; d004ed08 <fillTriangleDitherBayer+0x30c>
d004ea58:	eef1 5a04 	vmov.f32	s11, #20	; 0x40a00000  5.0
d004ea5c:	fec1 1aa7 	vmaxnm.f32	s3, s3, s15
d004ea60:	ee07 4a90 	vmov	s15, r4
d004ea64:	eec7 2a00 	vdiv.f32	s5, s14, s0
d004ea68:	fec1 5ae5 	vminnm.f32	s11, s3, s11
d004ea6c:	ee87 3a01 	vdiv.f32	s6, s14, s2
d004ea70:	eec7 1a20 	vdiv.f32	s3, s14, s1
d004ea74:	eebd 7ae5 	vcvt.s32.f32	s14, s11
d004ea78:	eef8 7a67 	vcvt.f32.u32	s15, s15
d004ea7c:	ee17 2a10 	vmov	r2, s14
d004ea80:	ee07 0a10 	vmov	s14, r0
d004ea84:	ee67 7aa2 	vmul.f32	s15, s15, s5
d004ea88:	eef8 6a47 	vcvt.f32.u32	s13, s14
d004ea8c:	ee07 1a10 	vmov	s14, r1
d004ea90:	1c51      	adds	r1, r2, #1
d004ea92:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004ea96:	2905      	cmp	r1, #5
d004ea98:	bfa8      	it	ge
d004ea9a:	2105      	movge	r1, #5
d004ea9c:	2a04      	cmp	r2, #4
d004ea9e:	ee66 6aa1 	vmul.f32	s13, s13, s3
d004eaa2:	ee27 1a03 	vmul.f32	s2, s14, s6
d004eaa6:	f300 85ed 	bgt.w	d004f684 <fillTriangleDitherBayer+0xc88>
d004eaaa:	f003 030f 	and.w	r3, r3, #15
d004eaae:	2a03      	cmp	r2, #3
d004eab0:	f103 0320 	add.w	r3, r3, #32
d004eab4:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004eab8:	fa5f fb80 	uxtb.w	fp, r0
d004eabc:	f300 85e4 	bgt.w	d004f688 <fillTriangleDitherBayer+0xc8c>
d004eac0:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004eac4:	b2db      	uxtb	r3, r3
d004eac6:	9304      	str	r3, [sp, #16]
d004eac8:	ed9d 7a01 	vldr	s14, [sp, #4]
d004eacc:	ed9d 5a02 	vldr	s10, [sp, #8]
d004ead0:	eeb8 6ac7 	vcvt.f32.s32	s12, s14
d004ead4:	ed9d 7a03 	vldr	s14, [sp, #12]
d004ead8:	eeb8 4ac5 	vcvt.f32.s32	s8, s10
d004eadc:	ed9d 5a34 	vldr	s10, [sp, #208]	; 0xd0
d004eae0:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004eae4:	ed9d 7a00 	vldr	s14, [sp]
d004eae8:	eef8 0ac5 	vcvt.f32.s32	s1, s10
d004eaec:	ed9d 5a35 	vldr	s10, [sp, #212]	; 0xd4
d004eaf0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004eaf4:	eeb4 6ae3 	vcmpe.f32	s12, s7
d004eaf8:	eef8 4ac5 	vcvt.f32.s32	s9, s10
d004eafc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb00:	f300 817d 	bgt.w	d004edfe <fillTriangleDitherBayer+0x402>
d004eb04:	eeb4 6ae4 	vcmpe.f32	s12, s9
d004eb08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb0c:	f300 81cb 	bgt.w	d004eea6 <fillTriangleDitherBayer+0x4aa>
d004eb10:	eef4 3ae4 	vcmpe.f32	s7, s9
d004eb14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb18:	dd17      	ble.n	d004eb4a <fillTriangleDitherBayer+0x14e>
d004eb1a:	eeb0 8a66 	vmov.f32	s16, s13
d004eb1e:	eeb0 0a61 	vmov.f32	s0, s3
d004eb22:	eeb0 2a63 	vmov.f32	s4, s7
d004eb26:	eeb0 5a44 	vmov.f32	s10, s8
d004eb2a:	eef0 6a41 	vmov.f32	s13, s2
d004eb2e:	eef0 1a43 	vmov.f32	s3, s6
d004eb32:	eef0 3a64 	vmov.f32	s7, s9
d004eb36:	eeb0 4a60 	vmov.f32	s8, s1
d004eb3a:	eeb0 1a48 	vmov.f32	s2, s16
d004eb3e:	eeb0 3a40 	vmov.f32	s6, s0
d004eb42:	eef0 4a42 	vmov.f32	s9, s4
d004eb46:	eef0 0a45 	vmov.f32	s1, s10
d004eb4a:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d004eb4e:	ee34 2a85 	vadd.f32	s4, s9, s10
d004eb52:	ee36 5a05 	vadd.f32	s10, s12, s10
d004eb56:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d004eb5a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004eb5e:	ee12 1a10 	vmov	r1, s4
d004eb62:	ee15 3a10 	vmov	r3, s10
d004eb66:	428b      	cmp	r3, r1
d004eb68:	f000 8144 	beq.w	d004edf4 <fillTriangleDitherBayer+0x3f8>
d004eb6c:	ee34 5ac6 	vsub.f32	s10, s9, s12
d004eb70:	ed9f 2a6c 	vldr	s4, [pc, #432]	; d004ed24 <fillTriangleDitherBayer+0x328>
d004eb74:	eeb4 5ac2 	vcmpe.f32	s10, s4
d004eb78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb7c:	f240 813a 	bls.w	d004edf4 <fillTriangleDitherBayer+0x3f8>
d004eb80:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004eb84:	ee73 9ac6 	vsub.f32	s19, s7, s12
d004eb88:	ee30 0ac7 	vsub.f32	s0, s1, s14
d004eb8c:	ee8a 9a05 	vdiv.f32	s18, s20, s10
d004eb90:	eef4 9ac2 	vcmpe.f32	s19, s4
d004eb94:	ee33 8a62 	vsub.f32	s16, s6, s5
d004eb98:	ee71 8a67 	vsub.f32	s17, s2, s15
d004eb9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eba0:	ee20 0a09 	vmul.f32	s0, s0, s18
d004eba4:	ee28 8a09 	vmul.f32	s16, s16, s18
d004eba8:	ee68 8a89 	vmul.f32	s17, s17, s18
d004ebac:	f300 8145 	bgt.w	d004ee3a <fillTriangleDitherBayer+0x43e>
d004ebb0:	ee05 2a10 	vmov	s10, r2
d004ebb4:	ee34 9ae3 	vsub.f32	s18, s9, s7
d004ebb8:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004ebbc:	eeb4 9ac2 	vcmpe.f32	s18, s4
d004ebc0:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d004ebc4:	ee75 5ac5 	vsub.f32	s11, s11, s10
d004ebc8:	eeb0 5a65 	vmov.f32	s10, s11
d004ebcc:	eebe 5ace 	vcvt.s32.f32	s10, s10, #4
d004ebd0:	ee15 3a10 	vmov	r3, s10
d004ebd4:	f383 0204 	usat	r2, #4, r3
d004ebd8:	9207      	str	r2, [sp, #28]
d004ebda:	9a04      	ldr	r2, [sp, #16]
d004ebdc:	455a      	cmp	r2, fp
d004ebde:	bf18      	it	ne
d004ebe0:	2b00      	cmpne	r3, #0
d004ebe2:	bfd4      	ite	le
d004ebe4:	2301      	movle	r3, #1
d004ebe6:	2300      	movgt	r3, #0
d004ebe8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ebec:	9302      	str	r3, [sp, #8]
d004ebee:	f340 8101 	ble.w	d004edf4 <fillTriangleDitherBayer+0x3f8>
d004ebf2:	eddf fa45 	vldr	s31, [pc, #276]	; d004ed08 <fillTriangleDitherBayer+0x30c>
d004ebf6:	eef0 5a49 	vmov.f32	s11, s18
d004ebfa:	eeb0 ba6f 	vmov.f32	s22, s31
d004ebfe:	eef0 da6f 	vmov.f32	s27, s31
d004ec02:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d004ec06:	ed9f 5a47 	vldr	s10, [pc, #284]	; d004ed24 <fillTriangleDitherBayer+0x328>
d004ec0a:	ee70 0ac4 	vsub.f32	s1, s1, s8
d004ec0e:	ee33 3a61 	vsub.f32	s6, s6, s3
d004ec12:	eec2 5a25 	vdiv.f32	s11, s4, s11
d004ec16:	ee31 1a66 	vsub.f32	s2, s2, s13
d004ec1a:	eef4 9ac5 	vcmpe.f32	s19, s10
d004ec1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec22:	ee20 2aa5 	vmul.f32	s4, s1, s11
d004ec26:	ee23 3a25 	vmul.f32	s6, s6, s11
d004ec2a:	ee61 5a25 	vmul.f32	s11, s2, s11
d004ec2e:	ed8d 2a12 	vstr	s4, [sp, #72]	; 0x48
d004ec32:	ed8d 3a13 	vstr	s6, [sp, #76]	; 0x4c
d004ec36:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d004ec3a:	f300 82e1 	bgt.w	d004f200 <fillTriangleDitherBayer+0x804>
d004ec3e:	eefd 5ae3 	vcvt.s32.f32	s11, s7
d004ec42:	4a32      	ldr	r2, [pc, #200]	; (d004ed0c <fillTriangleDitherBayer+0x310>)
d004ec44:	4b32      	ldr	r3, [pc, #200]	; (d004ed10 <fillTriangleDitherBayer+0x314>)
d004ec46:	6812      	ldr	r2, [r2, #0]
d004ec48:	edcd 5a0b 	vstr	s11, [sp, #44]	; 0x2c
d004ec4c:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ec50:	681b      	ldr	r3, [r3, #0]
d004ec52:	920c      	str	r2, [sp, #48]	; 0x30
d004ec54:	edcd 5a10 	vstr	s11, [sp, #64]	; 0x40
d004ec58:	930f      	str	r3, [sp, #60]	; 0x3c
d004ec5a:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d004ec5e:	eef4 3ae5 	vcmpe.f32	s7, s11
d004ec62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec66:	dd02      	ble.n	d004ec6e <fillTriangleDitherBayer+0x272>
d004ec68:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004ec6a:	3301      	adds	r3, #1
d004ec6c:	930b      	str	r3, [sp, #44]	; 0x2c
d004ec6e:	eefd 5ae4 	vcvt.s32.f32	s11, s9
d004ec72:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004ec74:	980c      	ldr	r0, [sp, #48]	; 0x30
d004ec76:	ee15 2a90 	vmov	r2, s11
d004ec7a:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ec7e:	eef4 4ae5 	vcmpe.f32	s9, s11
d004ec82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec86:	bfd8      	it	le
d004ec88:	f102 32ff 	addle.w	r2, r2, #4294967295	; 0xffffffff
d004ec8c:	4293      	cmp	r3, r2
d004ec8e:	bfa8      	it	ge
d004ec90:	4613      	movge	r3, r2
d004ec92:	461a      	mov	r2, r3
d004ec94:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004ec96:	4283      	cmp	r3, r0
d004ec98:	bfb8      	it	lt
d004ec9a:	4603      	movlt	r3, r0
d004ec9c:	429a      	cmp	r2, r3
d004ec9e:	9305      	str	r3, [sp, #20]
d004eca0:	f2c0 80a8 	blt.w	d004edf4 <fillTriangleDitherBayer+0x3f8>
d004eca4:	ee05 3a90 	vmov	s11, r3
d004eca8:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d004ecac:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004ecb0:	4918      	ldr	r1, [pc, #96]	; (d004ed14 <fillTriangleDitherBayer+0x318>)
d004ecb2:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ecb6:	ed9d ca12 	vldr	s24, [sp, #72]	; 0x48
d004ecba:	015b      	lsls	r3, r3, #5
d004ecbc:	eddd ca13 	vldr	s25, [sp, #76]	; 0x4c
d004ecc0:	eddd ba11 	vldr	s23, [sp, #68]	; 0x44
d004ecc4:	ee75 5a85 	vadd.f32	s11, s11, s10
d004ecc8:	930d      	str	r3, [sp, #52]	; 0x34
d004ecca:	1c53      	adds	r3, r2, #1
d004eccc:	eddf 0a15 	vldr	s1, [pc, #84]	; d004ed24 <fillTriangleDitherBayer+0x328>
d004ecd0:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004ed18 <fillTriangleDitherBayer+0x31c>
d004ecd4:	ee35 6ac6 	vsub.f32	s12, s11, s12
d004ecd8:	9309      	str	r3, [sp, #36]	; 0x24
d004ecda:	ee75 3ae3 	vsub.f32	s7, s11, s7
d004ecde:	680b      	ldr	r3, [r1, #0]
d004ece0:	ed9f 9a09 	vldr	s18, [pc, #36]	; d004ed08 <fillTriangleDitherBayer+0x30c>
d004ece4:	eea0 7a06 	vfma.f32	s14, s0, s12
d004ece8:	eddf 9a0c 	vldr	s19, [pc, #48]	; d004ed1c <fillTriangleDitherBayer+0x320>
d004ecec:	eee8 2a06 	vfma.f32	s5, s16, s12
d004ecf0:	ed9f aa0b 	vldr	s20, [pc, #44]	; d004ed20 <fillTriangleDitherBayer+0x324>
d004ecf4:	eee8 7a86 	vfma.f32	s15, s17, s12
d004ecf8:	930c      	str	r3, [sp, #48]	; 0x30
d004ecfa:	eea3 4a8c 	vfma.f32	s8, s7, s24
d004ecfe:	eeec 1aa3 	vfma.f32	s3, s25, s7
d004ed02:	eeeb 6aa3 	vfma.f32	s13, s23, s7
d004ed06:	e051      	b.n	d004edac <fillTriangleDitherBayer+0x3b0>
d004ed08:	00000000 	.word	0x00000000
d004ed0c:	d005a25c 	.word	0xd005a25c
d004ed10:	d005a260 	.word	0xd005a260
d004ed14:	d005a264 	.word	0xd005a264
d004ed18:	33d6bf95 	.word	0x33d6bf95
d004ed1c:	477fff00 	.word	0x477fff00
d004ed20:	43800000 	.word	0x43800000
d004ed24:	38d1b717 	.word	0x38d1b717
d004ed28:	eeb0 2a67 	vmov.f32	s4, s15
d004ed2c:	eeb0 3a62 	vmov.f32	s6, s5
d004ed30:	eeb0 6a47 	vmov.f32	s12, s14
d004ed34:	eef0 4a66 	vmov.f32	s9, s13
d004ed38:	eef0 5a61 	vmov.f32	s11, s3
d004ed3c:	eeb0 5a44 	vmov.f32	s10, s8
d004ed40:	eefd 3ac5 	vcvt.s32.f32	s7, s10
d004ed44:	f240 12df 	movw	r2, #479	; 0x1df
d004ed48:	ee13 1a90 	vmov	r1, s7
d004ed4c:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004ed50:	eeb4 5ae3 	vcmpe.f32	s10, s7
d004ed54:	eefd 3ac6 	vcvt.s32.f32	s7, s12
d004ed58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed5c:	ee13 3a90 	vmov	r3, s7
d004ed60:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004ed64:	bfc8      	it	gt
d004ed66:	3101      	addgt	r1, #1
d004ed68:	eeb4 6ae3 	vcmpe.f32	s12, s7
d004ed6c:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004ed70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed74:	bfd8      	it	le
d004ed76:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004ed7a:	4293      	cmp	r3, r2
d004ed7c:	bfa8      	it	ge
d004ed7e:	4613      	movge	r3, r2
d004ed80:	428b      	cmp	r3, r1
d004ed82:	469a      	mov	sl, r3
d004ed84:	f280 80c1 	bge.w	d004ef0a <fillTriangleDitherBayer+0x50e>
d004ed88:	9b05      	ldr	r3, [sp, #20]
d004ed8a:	ee37 7a00 	vadd.f32	s14, s14, s0
d004ed8e:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004ed90:	ee72 2a88 	vadd.f32	s5, s5, s16
d004ed94:	3301      	adds	r3, #1
d004ed96:	ee77 7aa8 	vadd.f32	s15, s15, s17
d004ed9a:	ee34 4a0c 	vadd.f32	s8, s8, s24
d004ed9e:	4293      	cmp	r3, r2
d004eda0:	ee71 1aac 	vadd.f32	s3, s3, s25
d004eda4:	ee76 6aab 	vadd.f32	s13, s13, s23
d004eda8:	9305      	str	r3, [sp, #20]
d004edaa:	d023      	beq.n	d004edf4 <fillTriangleDitherBayer+0x3f8>
d004edac:	eeb4 7ac4 	vcmpe.f32	s14, s8
d004edb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004edb4:	dcb8      	bgt.n	d004ed28 <fillTriangleDitherBayer+0x32c>
d004edb6:	eeb0 2a66 	vmov.f32	s4, s13
d004edba:	eeb0 3a61 	vmov.f32	s6, s3
d004edbe:	eeb0 6a44 	vmov.f32	s12, s8
d004edc2:	eef0 4a67 	vmov.f32	s9, s15
d004edc6:	eef0 5a62 	vmov.f32	s11, s5
d004edca:	eeb0 5a47 	vmov.f32	s10, s14
d004edce:	e7b7      	b.n	d004ed40 <fillTriangleDitherBayer+0x344>
d004edd0:	ed9d 4a16 	vldr	s8, [sp, #88]	; 0x58
d004edd4:	ed9d 6a17 	vldr	s12, [sp, #92]	; 0x5c
d004edd8:	eddd 6a18 	vldr	s13, [sp, #96]	; 0x60
d004eddc:	ed9d 7a19 	vldr	s14, [sp, #100]	; 0x64
d004ede0:	ed5f 5a30 	vldr	s11, [pc, #-192]	; d004ed24 <fillTriangleDitherBayer+0x328>
d004ede4:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d004ede8:	eeb4 5ae5 	vcmpe.f32	s10, s11
d004edec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004edf0:	f73f af33 	bgt.w	d004ec5a <fillTriangleDitherBayer+0x25e>
d004edf4:	b01b      	add	sp, #108	; 0x6c
d004edf6:	ecbd 8b10 	vpop	{d8-d15}
d004edfa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004edfe:	eef4 3ae4 	vcmpe.f32	s7, s9
d004ee02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee06:	dd67      	ble.n	d004eed8 <fillTriangleDitherBayer+0x4dc>
d004ee08:	eeb0 8a41 	vmov.f32	s16, s2
d004ee0c:	eeb0 0a43 	vmov.f32	s0, s6
d004ee10:	eeb0 2a64 	vmov.f32	s4, s9
d004ee14:	eeb0 5a60 	vmov.f32	s10, s1
d004ee18:	eeb0 1a67 	vmov.f32	s2, s15
d004ee1c:	eeb0 3a62 	vmov.f32	s6, s5
d004ee20:	eef0 4a46 	vmov.f32	s9, s12
d004ee24:	eef0 0a47 	vmov.f32	s1, s14
d004ee28:	eef0 7a48 	vmov.f32	s15, s16
d004ee2c:	eef0 2a40 	vmov.f32	s5, s0
d004ee30:	eeb0 6a42 	vmov.f32	s12, s4
d004ee34:	eeb0 7a45 	vmov.f32	s14, s10
d004ee38:	e687      	b.n	d004eb4a <fillTriangleDitherBayer+0x14e>
d004ee3a:	ee05 2a10 	vmov	s10, r2
d004ee3e:	ee8a 9a29 	vdiv.f32	s18, s20, s19
d004ee42:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004ee46:	ee74 bae3 	vsub.f32	s23, s9, s7
d004ee4a:	ee74 aa47 	vsub.f32	s21, s8, s14
d004ee4e:	ee75 5ac5 	vsub.f32	s11, s11, s10
d004ee52:	ee31 aae2 	vsub.f32	s20, s3, s5
d004ee56:	edcd ba0a 	vstr	s23, [sp, #40]	; 0x28
d004ee5a:	eef4 bac2 	vcmpe.f32	s23, s4
d004ee5e:	eeb0 ba65 	vmov.f32	s22, s11
d004ee62:	ee36 5ae7 	vsub.f32	s10, s13, s15
d004ee66:	eebe bace 	vcvt.s32.f32	s22, s22, #4
d004ee6a:	ee6a 5a89 	vmul.f32	s11, s21, s18
d004ee6e:	ee1b 3a10 	vmov	r3, s22
d004ee72:	ee65 fa09 	vmul.f32	s31, s10, s18
d004ee76:	f383 0204 	usat	r2, #4, r3
d004ee7a:	eef0 da65 	vmov.f32	s27, s11
d004ee7e:	ee6a 5a09 	vmul.f32	s11, s20, s18
d004ee82:	9207      	str	r2, [sp, #28]
d004ee84:	9a04      	ldr	r2, [sp, #16]
d004ee86:	eeb0 ba65 	vmov.f32	s22, s11
d004ee8a:	455a      	cmp	r2, fp
d004ee8c:	bf18      	it	ne
d004ee8e:	2b00      	cmpne	r3, #0
d004ee90:	bfd4      	ite	le
d004ee92:	2301      	movle	r3, #1
d004ee94:	2300      	movgt	r3, #0
d004ee96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee9a:	9302      	str	r3, [sp, #8]
d004ee9c:	f340 81a8 	ble.w	d004f1f0 <fillTriangleDitherBayer+0x7f4>
d004eea0:	eef0 5a6b 	vmov.f32	s11, s23
d004eea4:	e6ad      	b.n	d004ec02 <fillTriangleDitherBayer+0x206>
d004eea6:	eeb0 8a67 	vmov.f32	s16, s15
d004eeaa:	eeb0 0a62 	vmov.f32	s0, s5
d004eeae:	eeb0 2a46 	vmov.f32	s4, s12
d004eeb2:	eeb0 5a47 	vmov.f32	s10, s14
d004eeb6:	eef0 7a41 	vmov.f32	s15, s2
d004eeba:	eef0 2a43 	vmov.f32	s5, s6
d004eebe:	eeb0 6a64 	vmov.f32	s12, s9
d004eec2:	eeb0 7a60 	vmov.f32	s14, s1
d004eec6:	eeb0 1a48 	vmov.f32	s2, s16
d004eeca:	eeb0 3a40 	vmov.f32	s6, s0
d004eece:	eef0 4a42 	vmov.f32	s9, s4
d004eed2:	eef0 0a45 	vmov.f32	s1, s10
d004eed6:	e61b      	b.n	d004eb10 <fillTriangleDitherBayer+0x114>
d004eed8:	eeb0 8a67 	vmov.f32	s16, s15
d004eedc:	eeb0 0a62 	vmov.f32	s0, s5
d004eee0:	eeb0 2a46 	vmov.f32	s4, s12
d004eee4:	eeb0 5a47 	vmov.f32	s10, s14
d004eee8:	eef0 7a66 	vmov.f32	s15, s13
d004eeec:	eef0 2a61 	vmov.f32	s5, s3
d004eef0:	eeb0 6a63 	vmov.f32	s12, s7
d004eef4:	eeb0 7a44 	vmov.f32	s14, s8
d004eef8:	eef0 6a48 	vmov.f32	s13, s16
d004eefc:	eef0 1a40 	vmov.f32	s3, s0
d004ef00:	eef0 3a42 	vmov.f32	s7, s4
d004ef04:	eeb0 4a45 	vmov.f32	s8, s10
d004ef08:	e602      	b.n	d004eb10 <fillTriangleDitherBayer+0x114>
d004ef0a:	ee36 6a45 	vsub.f32	s12, s12, s10
d004ef0e:	eeb4 6ae0 	vcmpe.f32	s12, s1
d004ef12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ef16:	f340 83c0 	ble.w	d004f69a <fillTriangleDitherBayer+0xc9e>
d004ef1a:	eef7 aa00 	vmov.f32	s21, #112	; 0x3f800000  1.0
d004ef1e:	ee33 3a65 	vsub.f32	s6, s6, s11
d004ef22:	ee32 2a64 	vsub.f32	s4, s4, s9
d004ef26:	eeca 3a86 	vdiv.f32	s7, s21, s12
d004ef2a:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004ef2e:	ee36 6a45 	vsub.f32	s12, s12, s10
d004ef32:	ee05 1a10 	vmov	s10, r1
d004ef36:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004ef3a:	ee35 5a06 	vadd.f32	s10, s10, s12
d004ef3e:	ee23 3a23 	vmul.f32	s6, s6, s7
d004ef42:	ee22 2a23 	vmul.f32	s4, s4, s7
d004ef46:	eee5 5a03 	vfma.f32	s11, s10, s6
d004ef4a:	eee5 4a02 	vfma.f32	s9, s10, s4
d004ef4e:	9805      	ldr	r0, [sp, #20]
d004ef50:	eb01 0681 	add.w	r6, r1, r1, lsl #2
d004ef54:	9d0d      	ldr	r5, [sp, #52]	; 0x34
d004ef56:	eef6 aa00 	vmov.f32	s21, #96	; 0x3f000000  0.5
d004ef5a:	ebc0 1200 	rsb	r2, r0, r0, lsl #4
d004ef5e:	4ba0      	ldr	r3, [pc, #640]	; (d004f1e0 <fillTriangleDitherBayer+0x7e4>)
d004ef60:	4ca0      	ldr	r4, [pc, #640]	; (d004f1e4 <fillTriangleDitherBayer+0x7e8>)
d004ef62:	eebe ba00 	vmov.f32	s22, #224	; 0xbf000000 -0.5
d004ef66:	eb05 1242 	add.w	r2, r5, r2, lsl #5
d004ef6a:	4605      	mov	r5, r0
d004ef6c:	681b      	ldr	r3, [r3, #0]
d004ef6e:	f000 0003 	and.w	r0, r0, #3
d004ef72:	eb05 1686 	add.w	r6, r5, r6, lsl #6
d004ef76:	440a      	add	r2, r1
d004ef78:	441e      	add	r6, r3
d004ef7a:	eb04 0380 	add.w	r3, r4, r0, lsl #2
d004ef7e:	9306      	str	r3, [sp, #24]
d004ef80:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004ef82:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004ef86:	e9cd 3a00 	strd	r3, sl, [sp]
d004ef8a:	9b01      	ldr	r3, [sp, #4]
d004ef8c:	eef4 5ac1 	vcmpe.f32	s11, s2
d004ef90:	eba3 0e01 	sub.w	lr, r3, r1
d004ef94:	f10e 0301 	add.w	r3, lr, #1
d004ef98:	2b30      	cmp	r3, #48	; 0x30
d004ef9a:	bfa8      	it	ge
d004ef9c:	2330      	movge	r3, #48	; 0x30
d004ef9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004efa2:	ee06 3a10 	vmov	s12, r3
d004efa6:	eef8 3ac6 	vcvt.f32.s32	s7, s12
d004efaa:	d97b      	bls.n	d004f0a4 <fillTriangleDitherBayer+0x6a8>
d004efac:	f1be 0f00 	cmp.w	lr, #0
d004efb0:	ee84 6aa5 	vdiv.f32	s12, s9, s11
d004efb4:	f340 8084 	ble.w	d004f0c0 <fillTriangleDitherBayer+0x6c4>
d004efb8:	1e5a      	subs	r2, r3, #1
d004efba:	ee05 2a10 	vmov	s10, r2
d004efbe:	eeb0 da65 	vmov.f32	s26, s11
d004efc2:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004efc6:	eea3 da05 	vfma.f32	s26, s6, s10
d004efca:	eeb4 dac1 	vcmpe.f32	s26, s2
d004efce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004efd2:	f340 809e 	ble.w	d004f112 <fillTriangleDitherBayer+0x716>
d004efd6:	eef0 da64 	vmov.f32	s27, s9
d004efda:	eee2 da05 	vfma.f32	s27, s4, s10
d004efde:	ee8d 5a8d 	vdiv.f32	s10, s27, s26
d004efe2:	4a81      	ldr	r2, [pc, #516]	; (d004f1e8 <fillTriangleDitherBayer+0x7ec>)
d004efe4:	fe86 6a09 	vmaxnm.f32	s12, s12, s18
d004efe8:	fe85 5a09 	vmaxnm.f32	s10, s10, s18
d004efec:	fe86 6a69 	vminnm.f32	s12, s12, s19
d004eff0:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d004eff4:	fe85 5a69 	vminnm.f32	s10, s10, s19
d004eff8:	ed92 da00 	vldr	s26, [r2]
d004effc:	ee35 5a46 	vsub.f32	s10, s10, s12
d004f000:	eef0 da6a 	vmov.f32	s27, s21
d004f004:	009a      	lsls	r2, r3, #2
d004f006:	ee2d da0a 	vmul.f32	s26, s26, s20
d004f00a:	9203      	str	r2, [sp, #12]
d004f00c:	eee6 da0a 	vfma.f32	s27, s12, s20
d004f010:	9a02      	ldr	r2, [sp, #8]
d004f012:	ee25 5a0d 	vmul.f32	s10, s10, s26
d004f016:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d004f01a:	eebd 6aed 	vcvt.s32.f32	s12, s27
d004f01e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f022:	fe2a da8b 	vselge.f32	s26, s21, s22
d004f026:	ee3d 5a05 	vadd.f32	s10, s26, s10
d004f02a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004f02e:	ee15 7a10 	vmov	r7, s10
d004f032:	2a00      	cmp	r2, #0
d004f034:	d070      	beq.n	d004f118 <fillTriangleDitherBayer+0x71c>
d004f036:	2f00      	cmp	r7, #0
d004f038:	f000 8334 	beq.w	d004f6a4 <fillTriangleDitherBayer+0xca8>
d004f03c:	9800      	ldr	r0, [sp, #0]
d004f03e:	ee16 2a10 	vmov	r2, s12
d004f042:	1e85      	subs	r5, r0, #2
d004f044:	3280      	adds	r2, #128	; 0x80
d004f046:	2000      	movs	r0, #0
d004f048:	f3c2 2c0f 	ubfx	ip, r2, #8, #16
d004f04c:	f835 8f02 	ldrh.w	r8, [r5, #2]!
d004f050:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f054:	443a      	add	r2, r7
d004f056:	45e0      	cmp	r8, ip
d004f058:	f100 0001 	add.w	r0, r0, #1
d004f05c:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f060:	d903      	bls.n	d004f06a <fillTriangleDitherBayer+0x66e>
d004f062:	f8a5 c000 	strh.w	ip, [r5]
d004f066:	f806 b004 	strb.w	fp, [r6, r4]
d004f06a:	4283      	cmp	r3, r0
d004f06c:	dcec      	bgt.n	d004f048 <fillTriangleDitherBayer+0x64c>
d004f06e:	9a03      	ldr	r2, [sp, #12]
d004f070:	f1be 0f00 	cmp.w	lr, #0
d004f074:	ea4f 0043 	mov.w	r0, r3, lsl #1
d004f078:	9c00      	ldr	r4, [sp, #0]
d004f07a:	441a      	add	r2, r3
d004f07c:	bfb8      	it	lt
d004f07e:	2002      	movlt	r0, #2
d004f080:	ea4f 1282 	mov.w	r2, r2, lsl #6
d004f084:	bfb8      	it	lt
d004f086:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d004f08a:	4404      	add	r4, r0
d004f08c:	4416      	add	r6, r2
d004f08e:	9400      	str	r4, [sp, #0]
d004f090:	eee3 5a23 	vfma.f32	s11, s6, s7
d004f094:	4419      	add	r1, r3
d004f096:	eee2 4a23 	vfma.f32	s9, s4, s7
d004f09a:	9b01      	ldr	r3, [sp, #4]
d004f09c:	428b      	cmp	r3, r1
d004f09e:	f6bf af74 	bge.w	d004ef8a <fillTriangleDitherBayer+0x58e>
d004f0a2:	e671      	b.n	d004ed88 <fillTriangleDitherBayer+0x38c>
d004f0a4:	9800      	ldr	r0, [sp, #0]
d004f0a6:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004f0aa:	eee3 5a23 	vfma.f32	s11, s6, s7
d004f0ae:	4419      	add	r1, r3
d004f0b0:	eb00 0043 	add.w	r0, r0, r3, lsl #1
d004f0b4:	eee2 4a23 	vfma.f32	s9, s4, s7
d004f0b8:	eb06 1682 	add.w	r6, r6, r2, lsl #6
d004f0bc:	9000      	str	r0, [sp, #0]
d004f0be:	e7ec      	b.n	d004f09a <fillTriangleDitherBayer+0x69e>
d004f0c0:	eeb0 5a6a 	vmov.f32	s10, s21
d004f0c4:	fe86 6a09 	vmaxnm.f32	s12, s12, s18
d004f0c8:	fe86 6a69 	vminnm.f32	s12, s12, s19
d004f0cc:	9a02      	ldr	r2, [sp, #8]
d004f0ce:	eea6 5a0a 	vfma.f32	s10, s12, s20
d004f0d2:	eebd 6ac5 	vcvt.s32.f32	s12, s10
d004f0d6:	2a00      	cmp	r2, #0
d004f0d8:	d052      	beq.n	d004f180 <fillTriangleDitherBayer+0x784>
d004f0da:	ee16 7a10 	vmov	r7, s12
d004f0de:	3780      	adds	r7, #128	; 0x80
d004f0e0:	f3c7 270f 	ubfx	r7, r7, #8, #16
d004f0e4:	f1be 0f00 	cmp.w	lr, #0
d004f0e8:	d1d2      	bne.n	d004f090 <fillTriangleDitherBayer+0x694>
d004f0ea:	009a      	lsls	r2, r3, #2
d004f0ec:	9203      	str	r2, [sp, #12]
d004f0ee:	9a00      	ldr	r2, [sp, #0]
d004f0f0:	1e94      	subs	r4, r2, #2
d004f0f2:	2200      	movs	r2, #0
d004f0f4:	f834 5f02 	ldrh.w	r5, [r4, #2]!
d004f0f8:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d004f0fc:	3201      	adds	r2, #1
d004f0fe:	42bd      	cmp	r5, r7
d004f100:	ea4f 1080 	mov.w	r0, r0, lsl #6
d004f104:	d902      	bls.n	d004f10c <fillTriangleDitherBayer+0x710>
d004f106:	8027      	strh	r7, [r4, #0]
d004f108:	f806 b000 	strb.w	fp, [r6, r0]
d004f10c:	4293      	cmp	r3, r2
d004f10e:	dcf1      	bgt.n	d004f0f4 <fillTriangleDitherBayer+0x6f8>
d004f110:	e7ad      	b.n	d004f06e <fillTriangleDitherBayer+0x672>
d004f112:	eeb0 5a46 	vmov.f32	s10, s12
d004f116:	e764      	b.n	d004efe2 <fillTriangleDitherBayer+0x5e6>
d004f118:	f001 0003 	and.w	r0, r1, #3
d004f11c:	2f00      	cmp	r7, #0
d004f11e:	f000 82d3 	beq.w	d004f6c8 <fillTriangleDitherBayer+0xccc>
d004f122:	9c00      	ldr	r4, [sp, #0]
d004f124:	ee16 2a10 	vmov	r2, s12
d004f128:	f8cd e028 	str.w	lr, [sp, #40]	; 0x28
d004f12c:	f1a4 0c02 	sub.w	ip, r4, #2
d004f130:	910b      	str	r1, [sp, #44]	; 0x2c
d004f132:	3280      	adds	r2, #128	; 0x80
d004f134:	9907      	ldr	r1, [sp, #28]
d004f136:	9c02      	ldr	r4, [sp, #8]
d004f138:	f8dd e010 	ldr.w	lr, [sp, #16]
d004f13c:	9108      	str	r1, [sp, #32]
d004f13e:	f3c2 280f 	ubfx	r8, r2, #8, #16
d004f142:	f83c af02 	ldrh.w	sl, [ip, #2]!
d004f146:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f14a:	f100 0901 	add.w	r9, r0, #1
d004f14e:	45c2      	cmp	sl, r8
d004f150:	443a      	add	r2, r7
d004f152:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f156:	f104 0401 	add.w	r4, r4, #1
d004f15a:	d909      	bls.n	d004f170 <fillTriangleDitherBayer+0x774>
d004f15c:	9906      	ldr	r1, [sp, #24]
d004f15e:	f8ac 8000 	strh.w	r8, [ip]
d004f162:	5c08      	ldrb	r0, [r1, r0]
d004f164:	9908      	ldr	r1, [sp, #32]
d004f166:	4288      	cmp	r0, r1
d004f168:	bfb4      	ite	lt
d004f16a:	4670      	movlt	r0, lr
d004f16c:	4658      	movge	r0, fp
d004f16e:	5570      	strb	r0, [r6, r5]
d004f170:	42a3      	cmp	r3, r4
d004f172:	f009 0003 	and.w	r0, r9, #3
d004f176:	dce2      	bgt.n	d004f13e <fillTriangleDitherBayer+0x742>
d004f178:	f8dd e028 	ldr.w	lr, [sp, #40]	; 0x28
d004f17c:	990b      	ldr	r1, [sp, #44]	; 0x2c
d004f17e:	e776      	b.n	d004f06e <fillTriangleDitherBayer+0x672>
d004f180:	ee16 2a10 	vmov	r2, s12
d004f184:	f001 0003 	and.w	r0, r1, #3
d004f188:	3280      	adds	r2, #128	; 0x80
d004f18a:	f3c2 220f 	ubfx	r2, r2, #8, #16
d004f18e:	f1be 0f00 	cmp.w	lr, #0
d004f192:	f47f af7d 	bne.w	d004f090 <fillTriangleDitherBayer+0x694>
d004f196:	009c      	lsls	r4, r3, #2
d004f198:	9403      	str	r4, [sp, #12]
d004f19a:	9c00      	ldr	r4, [sp, #0]
d004f19c:	9108      	str	r1, [sp, #32]
d004f19e:	1ea7      	subs	r7, r4, #2
d004f1a0:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004f1a4:	2400      	movs	r4, #0
d004f1a6:	9907      	ldr	r1, [sp, #28]
d004f1a8:	f8dd a018 	ldr.w	sl, [sp, #24]
d004f1ac:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f1b0:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f1b4:	f100 0c01 	add.w	ip, r0, #1
d004f1b8:	3401      	adds	r4, #1
d004f1ba:	4590      	cmp	r8, r2
d004f1bc:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f1c0:	d907      	bls.n	d004f1d2 <fillTriangleDitherBayer+0x7d6>
d004f1c2:	803a      	strh	r2, [r7, #0]
d004f1c4:	f81a 0000 	ldrb.w	r0, [sl, r0]
d004f1c8:	4288      	cmp	r0, r1
d004f1ca:	bfb4      	ite	lt
d004f1cc:	4648      	movlt	r0, r9
d004f1ce:	4658      	movge	r0, fp
d004f1d0:	5570      	strb	r0, [r6, r5]
d004f1d2:	42a3      	cmp	r3, r4
d004f1d4:	f00c 0003 	and.w	r0, ip, #3
d004f1d8:	dce8      	bgt.n	d004f1ac <fillTriangleDitherBayer+0x7b0>
d004f1da:	9908      	ldr	r1, [sp, #32]
d004f1dc:	e747      	b.n	d004f06e <fillTriangleDitherBayer+0x672>
d004f1de:	bf00      	nop
d004f1e0:	d00f4730 	.word	0xd00f4730
d004f1e4:	d0057440 	.word	0xd0057440
d004f1e8:	d0057460 	.word	0xd0057460
d004f1ec:	00000000 	.word	0x00000000
d004f1f0:	ed5f 5a02 	vldr	s11, [pc, #-8]	; d004f1ec <fillTriangleDitherBayer+0x7f0>
d004f1f4:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d004f1f8:	edcd 5a13 	vstr	s11, [sp, #76]	; 0x4c
d004f1fc:	edcd 5a12 	vstr	s11, [sp, #72]	; 0x48
d004f200:	eefd 5ac6 	vcvt.s32.f32	s11, s12
d004f204:	48cd      	ldr	r0, [pc, #820]	; (d004f53c <fillTriangleDitherBayer+0xb40>)
d004f206:	49ce      	ldr	r1, [pc, #824]	; (d004f540 <fillTriangleDitherBayer+0xb44>)
d004f208:	6800      	ldr	r0, [r0, #0]
d004f20a:	ee15 2a90 	vmov	r2, s11
d004f20e:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004f212:	6809      	ldr	r1, [r1, #0]
d004f214:	900c      	str	r0, [sp, #48]	; 0x30
d004f216:	eeb4 6ae5 	vcmpe.f32	s12, s11
d004f21a:	910f      	str	r1, [sp, #60]	; 0x3c
d004f21c:	eefd 5ae3 	vcvt.s32.f32	s11, s7
d004f220:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f224:	eeb8 5ae5 	vcvt.f32.s32	s10, s11
d004f228:	ee15 3a90 	vmov	r3, s11
d004f22c:	edcd 5a0b 	vstr	s11, [sp, #44]	; 0x2c
d004f230:	bfc8      	it	gt
d004f232:	3201      	addgt	r2, #1
d004f234:	eef4 3ac5 	vcmpe.f32	s7, s10
d004f238:	ed8d 5a10 	vstr	s10, [sp, #64]	; 0x40
d004f23c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f240:	bfd8      	it	le
d004f242:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f246:	4282      	cmp	r2, r0
d004f248:	bfb8      	it	lt
d004f24a:	4602      	movlt	r2, r0
d004f24c:	428b      	cmp	r3, r1
d004f24e:	bfa8      	it	ge
d004f250:	460b      	movge	r3, r1
d004f252:	9205      	str	r2, [sp, #20]
d004f254:	4293      	cmp	r3, r2
d004f256:	f6ff adc3 	blt.w	d004ede0 <fillTriangleDitherBayer+0x3e4>
d004f25a:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004f25e:	3301      	adds	r3, #1
d004f260:	eef0 ba62 	vmov.f32	s23, s5
d004f264:	49b7      	ldr	r1, [pc, #732]	; (d004f544 <fillTriangleDitherBayer+0xb48>)
d004f266:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d004f26a:	9309      	str	r3, [sp, #36]	; 0x24
d004f26c:	ee35 5ac6 	vsub.f32	s10, s11, s12
d004f270:	eddd 5a05 	vldr	s11, [sp, #20]
d004f274:	680b      	ldr	r3, [r1, #0]
d004f276:	eeb0 aa47 	vmov.f32	s20, s14
d004f27a:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004f27e:	eddf aab2 	vldr	s21, [pc, #712]	; d004f548 <fillTriangleDitherBayer+0xb4c>
d004f282:	eef0 ca62 	vmov.f32	s25, s5
d004f286:	9314      	str	r3, [sp, #80]	; 0x50
d004f288:	eeb0 ca67 	vmov.f32	s24, s15
d004f28c:	0153      	lsls	r3, r2, #5
d004f28e:	ee75 5a85 	vadd.f32	s11, s11, s10
d004f292:	ed9f daae 	vldr	s26, [pc, #696]	; d004f54c <fillTriangleDitherBayer+0xb50>
d004f296:	eef0 9a47 	vmov.f32	s19, s14
d004f29a:	ed9f eaad 	vldr	s28, [pc, #692]	; d004f550 <fillTriangleDitherBayer+0xb54>
d004f29e:	eeb0 9a4b 	vmov.f32	s18, s22
d004f2a2:	ed9f faac 	vldr	s30, [pc, #688]	; d004f554 <fillTriangleDitherBayer+0xb58>
d004f2a6:	eeeb ba25 	vfma.f32	s23, s22, s11
d004f2aa:	9315      	str	r3, [sp, #84]	; 0x54
d004f2ac:	eeb0 ba67 	vmov.f32	s22, s15
d004f2b0:	ed8d 4a16 	vstr	s8, [sp, #88]	; 0x58
d004f2b4:	eea0 aa25 	vfma.f32	s20, s0, s11
d004f2b8:	ed8d 6a17 	vstr	s12, [sp, #92]	; 0x5c
d004f2bc:	eee8 ca25 	vfma.f32	s25, s16, s11
d004f2c0:	edcd 6a18 	vstr	s13, [sp, #96]	; 0x60
d004f2c4:	eea8 caa5 	vfma.f32	s24, s17, s11
d004f2c8:	ed8d 7a19 	vstr	s14, [sp, #100]	; 0x64
d004f2cc:	eeed 9aa5 	vfma.f32	s19, s27, s11
d004f2d0:	eeaf baa5 	vfma.f32	s22, s31, s11
d004f2d4:	e041      	b.n	d004f35a <fillTriangleDitherBayer+0x95e>
d004f2d6:	eeb0 3a4c 	vmov.f32	s6, s24
d004f2da:	eeb0 4a6c 	vmov.f32	s8, s25
d004f2de:	eef0 6a4a 	vmov.f32	s13, s20
d004f2e2:	eeb0 6a4b 	vmov.f32	s12, s22
d004f2e6:	eeb0 7a6b 	vmov.f32	s14, s23
d004f2ea:	eef0 5a69 	vmov.f32	s11, s19
d004f2ee:	eebd 5ae5 	vcvt.s32.f32	s10, s11
d004f2f2:	f240 12df 	movw	r2, #479	; 0x1df
d004f2f6:	ee15 1a10 	vmov	r1, s10
d004f2fa:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f2fe:	eef4 5ac5 	vcmpe.f32	s11, s10
d004f302:	eebd 5ae6 	vcvt.s32.f32	s10, s13
d004f306:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f30a:	ee15 3a10 	vmov	r3, s10
d004f30e:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f312:	bfc8      	it	gt
d004f314:	3101      	addgt	r1, #1
d004f316:	eef4 6ac5 	vcmpe.f32	s13, s10
d004f31a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004f31e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f322:	bfd8      	it	le
d004f324:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f328:	4293      	cmp	r3, r2
d004f32a:	bfa8      	it	ge
d004f32c:	4613      	movge	r3, r2
d004f32e:	428b      	cmp	r3, r1
d004f330:	469a      	mov	sl, r3
d004f332:	da24      	bge.n	d004f37e <fillTriangleDitherBayer+0x982>
d004f334:	9b05      	ldr	r3, [sp, #20]
d004f336:	ee3a aa00 	vadd.f32	s20, s20, s0
d004f33a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004f33c:	ee7c ca88 	vadd.f32	s25, s25, s16
d004f340:	3301      	adds	r3, #1
d004f342:	ee3c ca28 	vadd.f32	s24, s24, s17
d004f346:	ee79 9aad 	vadd.f32	s19, s19, s27
d004f34a:	429a      	cmp	r2, r3
d004f34c:	ee7b ba89 	vadd.f32	s23, s23, s18
d004f350:	ee3b ba2f 	vadd.f32	s22, s22, s31
d004f354:	9305      	str	r3, [sp, #20]
d004f356:	f43f ad3b 	beq.w	d004edd0 <fillTriangleDitherBayer+0x3d4>
d004f35a:	eeb4 aae9 	vcmpe.f32	s20, s19
d004f35e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f362:	dcb8      	bgt.n	d004f2d6 <fillTriangleDitherBayer+0x8da>
d004f364:	eeb0 3a4b 	vmov.f32	s6, s22
d004f368:	eeb0 4a6b 	vmov.f32	s8, s23
d004f36c:	eef0 6a69 	vmov.f32	s13, s19
d004f370:	eeb0 6a4c 	vmov.f32	s12, s24
d004f374:	eeb0 7a6c 	vmov.f32	s14, s25
d004f378:	eef0 5a4a 	vmov.f32	s11, s20
d004f37c:	e7b7      	b.n	d004f2ee <fillTriangleDitherBayer+0x8f2>
d004f37e:	ee76 6ae5 	vsub.f32	s13, s13, s11
d004f382:	ed9f 5a75 	vldr	s10, [pc, #468]	; d004f558 <fillTriangleDitherBayer+0xb5c>
d004f386:	eef4 6ac5 	vcmpe.f32	s13, s10
d004f38a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f38e:	f340 817f 	ble.w	d004f690 <fillTriangleDitherBayer+0xc94>
d004f392:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d004f396:	ee34 4a47 	vsub.f32	s8, s8, s14
d004f39a:	ee33 3a46 	vsub.f32	s6, s6, s12
d004f39e:	ee82 5a26 	vdiv.f32	s10, s4, s13
d004f3a2:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004f3a6:	ee76 5ae5 	vsub.f32	s11, s13, s11
d004f3aa:	ee06 1a90 	vmov	s13, r1
d004f3ae:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004f3b2:	ee76 5aa5 	vadd.f32	s11, s13, s11
d004f3b6:	ee24 4a05 	vmul.f32	s8, s8, s10
d004f3ba:	ee23 3a05 	vmul.f32	s6, s6, s10
d004f3be:	eea5 7a84 	vfma.f32	s14, s11, s8
d004f3c2:	eea5 6a83 	vfma.f32	s12, s11, s6
d004f3c6:	9805      	ldr	r0, [sp, #20]
d004f3c8:	eb01 0681 	add.w	r6, r1, r1, lsl #2
d004f3cc:	9d15      	ldr	r5, [sp, #84]	; 0x54
d004f3ce:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d004f3d2:	ebc0 1200 	rsb	r2, r0, r0, lsl #4
d004f3d6:	4b61      	ldr	r3, [pc, #388]	; (d004f55c <fillTriangleDitherBayer+0xb60>)
d004f3d8:	4c61      	ldr	r4, [pc, #388]	; (d004f560 <fillTriangleDitherBayer+0xb64>)
d004f3da:	eefe 0a00 	vmov.f32	s1, #224	; 0xbf000000 -0.5
d004f3de:	eb05 1242 	add.w	r2, r5, r2, lsl #5
d004f3e2:	4605      	mov	r5, r0
d004f3e4:	681b      	ldr	r3, [r3, #0]
d004f3e6:	f000 0003 	and.w	r0, r0, #3
d004f3ea:	eb05 1686 	add.w	r6, r5, r6, lsl #6
d004f3ee:	440a      	add	r2, r1
d004f3f0:	441e      	add	r6, r3
d004f3f2:	eb04 0380 	add.w	r3, r4, r0, lsl #2
d004f3f6:	9306      	str	r3, [sp, #24]
d004f3f8:	9b14      	ldr	r3, [sp, #80]	; 0x50
d004f3fa:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004f3fe:	e9cd 3a00 	strd	r3, sl, [sp]
d004f402:	9b01      	ldr	r3, [sp, #4]
d004f404:	eeb4 7aea 	vcmpe.f32	s14, s21
d004f408:	eba3 0e01 	sub.w	lr, r3, r1
d004f40c:	f10e 0201 	add.w	r2, lr, #1
d004f410:	2a30      	cmp	r2, #48	; 0x30
d004f412:	bfa8      	it	ge
d004f414:	2230      	movge	r2, #48	; 0x30
d004f416:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f41a:	ee06 2a90 	vmov	s13, r2
d004f41e:	eef8 5ae6 	vcvt.f32.s32	s11, s13
d004f422:	d97c      	bls.n	d004f51e <fillTriangleDitherBayer+0xb22>
d004f424:	f1be 0f00 	cmp.w	lr, #0
d004f428:	eec6 6a07 	vdiv.f32	s13, s12, s14
d004f42c:	f340 809c 	ble.w	d004f568 <fillTriangleDitherBayer+0xb6c>
d004f430:	1e53      	subs	r3, r2, #1
d004f432:	ee05 3a10 	vmov	s10, r3
d004f436:	eeb0 1a47 	vmov.f32	s2, s14
d004f43a:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f43e:	eea4 1a05 	vfma.f32	s2, s8, s10
d004f442:	eeb4 1aea 	vcmpe.f32	s2, s21
d004f446:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f44a:	f340 80b6 	ble.w	d004f5ba <fillTriangleDitherBayer+0xbbe>
d004f44e:	eef0 ea46 	vmov.f32	s29, s12
d004f452:	eee3 ea05 	vfma.f32	s29, s6, s10
d004f456:	ee8e 5a81 	vdiv.f32	s10, s29, s2
d004f45a:	4b42      	ldr	r3, [pc, #264]	; (d004f564 <fillTriangleDitherBayer+0xb68>)
d004f45c:	fec6 6a8d 	vmaxnm.f32	s13, s13, s26
d004f460:	fe85 5a0d 	vmaxnm.f32	s10, s10, s26
d004f464:	fec6 6ace 	vminnm.f32	s13, s13, s28
d004f468:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d004f46c:	fe85 5a4e 	vminnm.f32	s10, s10, s28
d004f470:	ed93 1a00 	vldr	s2, [r3]
d004f474:	ee35 5a66 	vsub.f32	s10, s10, s13
d004f478:	eef0 ea42 	vmov.f32	s29, s4
d004f47c:	0093      	lsls	r3, r2, #2
d004f47e:	ee21 1a0f 	vmul.f32	s2, s2, s30
d004f482:	9303      	str	r3, [sp, #12]
d004f484:	eee6 ea8f 	vfma.f32	s29, s13, s30
d004f488:	9b02      	ldr	r3, [sp, #8]
d004f48a:	ee25 5a01 	vmul.f32	s10, s10, s2
d004f48e:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d004f492:	eefd 6aee 	vcvt.s32.f32	s13, s29
d004f496:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f49a:	fe22 1a20 	vselge.f32	s2, s4, s1
d004f49e:	ee31 5a05 	vadd.f32	s10, s2, s10
d004f4a2:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004f4a6:	ee15 5a10 	vmov	r5, s10
d004f4aa:	2b00      	cmp	r3, #0
d004f4ac:	f000 8088 	beq.w	d004f5c0 <fillTriangleDitherBayer+0xbc4>
d004f4b0:	2d00      	cmp	r5, #0
d004f4b2:	f000 8103 	beq.w	d004f6bc <fillTriangleDitherBayer+0xcc0>
d004f4b6:	9800      	ldr	r0, [sp, #0]
d004f4b8:	ee16 3a90 	vmov	r3, s13
d004f4bc:	1e87      	subs	r7, r0, #2
d004f4be:	3380      	adds	r3, #128	; 0x80
d004f4c0:	2000      	movs	r0, #0
d004f4c2:	f3c3 2c0f 	ubfx	ip, r3, #8, #16
d004f4c6:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f4ca:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f4ce:	442b      	add	r3, r5
d004f4d0:	45e0      	cmp	r8, ip
d004f4d2:	f100 0001 	add.w	r0, r0, #1
d004f4d6:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f4da:	d903      	bls.n	d004f4e4 <fillTriangleDitherBayer+0xae8>
d004f4dc:	f8a7 c000 	strh.w	ip, [r7]
d004f4e0:	f806 b004 	strb.w	fp, [r6, r4]
d004f4e4:	4282      	cmp	r2, r0
d004f4e6:	dcec      	bgt.n	d004f4c2 <fillTriangleDitherBayer+0xac6>
d004f4e8:	9b03      	ldr	r3, [sp, #12]
d004f4ea:	f1be 0f00 	cmp.w	lr, #0
d004f4ee:	ea4f 0042 	mov.w	r0, r2, lsl #1
d004f4f2:	9c00      	ldr	r4, [sp, #0]
d004f4f4:	4413      	add	r3, r2
d004f4f6:	bfb8      	it	lt
d004f4f8:	2002      	movlt	r0, #2
d004f4fa:	ea4f 1383 	mov.w	r3, r3, lsl #6
d004f4fe:	bfb8      	it	lt
d004f500:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004f504:	4404      	add	r4, r0
d004f506:	441e      	add	r6, r3
d004f508:	9400      	str	r4, [sp, #0]
d004f50a:	eea4 7a25 	vfma.f32	s14, s8, s11
d004f50e:	4411      	add	r1, r2
d004f510:	eea3 6a25 	vfma.f32	s12, s6, s11
d004f514:	9b01      	ldr	r3, [sp, #4]
d004f516:	4299      	cmp	r1, r3
d004f518:	f77f af73 	ble.w	d004f402 <fillTriangleDitherBayer+0xa06>
d004f51c:	e70a      	b.n	d004f334 <fillTriangleDitherBayer+0x938>
d004f51e:	9800      	ldr	r0, [sp, #0]
d004f520:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004f524:	eea4 7a25 	vfma.f32	s14, s8, s11
d004f528:	4411      	add	r1, r2
d004f52a:	eb00 0042 	add.w	r0, r0, r2, lsl #1
d004f52e:	eea3 6a25 	vfma.f32	s12, s6, s11
d004f532:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d004f536:	9000      	str	r0, [sp, #0]
d004f538:	e7ec      	b.n	d004f514 <fillTriangleDitherBayer+0xb18>
d004f53a:	bf00      	nop
d004f53c:	d005a25c 	.word	0xd005a25c
d004f540:	d005a260 	.word	0xd005a260
d004f544:	d005a264 	.word	0xd005a264
d004f548:	33d6bf95 	.word	0x33d6bf95
d004f54c:	00000000 	.word	0x00000000
d004f550:	477fff00 	.word	0x477fff00
d004f554:	43800000 	.word	0x43800000
d004f558:	38d1b717 	.word	0x38d1b717
d004f55c:	d00f4730 	.word	0xd00f4730
d004f560:	d0057440 	.word	0xd0057440
d004f564:	d0057460 	.word	0xd0057460
d004f568:	eeb0 5a42 	vmov.f32	s10, s4
d004f56c:	fec6 6a8d 	vmaxnm.f32	s13, s13, s26
d004f570:	fec6 6ace 	vminnm.f32	s13, s13, s28
d004f574:	9b02      	ldr	r3, [sp, #8]
d004f576:	eea6 5a8f 	vfma.f32	s10, s13, s30
d004f57a:	eefd 6ac5 	vcvt.s32.f32	s13, s10
d004f57e:	2b00      	cmp	r3, #0
d004f580:	d051      	beq.n	d004f626 <fillTriangleDitherBayer+0xc2a>
d004f582:	ee16 3a90 	vmov	r3, s13
d004f586:	3380      	adds	r3, #128	; 0x80
d004f588:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f58c:	f1be 0f00 	cmp.w	lr, #0
d004f590:	d1bb      	bne.n	d004f50a <fillTriangleDitherBayer+0xb0e>
d004f592:	0090      	lsls	r0, r2, #2
d004f594:	9003      	str	r0, [sp, #12]
d004f596:	9800      	ldr	r0, [sp, #0]
d004f598:	1e85      	subs	r5, r0, #2
d004f59a:	2000      	movs	r0, #0
d004f59c:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d004f5a0:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f5a4:	3001      	adds	r0, #1
d004f5a6:	429f      	cmp	r7, r3
d004f5a8:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f5ac:	d902      	bls.n	d004f5b4 <fillTriangleDitherBayer+0xbb8>
d004f5ae:	802b      	strh	r3, [r5, #0]
d004f5b0:	f806 b004 	strb.w	fp, [r6, r4]
d004f5b4:	4282      	cmp	r2, r0
d004f5b6:	dcf1      	bgt.n	d004f59c <fillTriangleDitherBayer+0xba0>
d004f5b8:	e796      	b.n	d004f4e8 <fillTriangleDitherBayer+0xaec>
d004f5ba:	eeb0 5a66 	vmov.f32	s10, s13
d004f5be:	e74c      	b.n	d004f45a <fillTriangleDitherBayer+0xa5e>
d004f5c0:	f001 0003 	and.w	r0, r1, #3
d004f5c4:	2d00      	cmp	r5, #0
d004f5c6:	d073      	beq.n	d004f6b0 <fillTriangleDitherBayer+0xcb4>
d004f5c8:	9c00      	ldr	r4, [sp, #0]
d004f5ca:	ee16 3a90 	vmov	r3, s13
d004f5ce:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
d004f5d2:	f1a4 0c02 	sub.w	ip, r4, #2
d004f5d6:	910e      	str	r1, [sp, #56]	; 0x38
d004f5d8:	3380      	adds	r3, #128	; 0x80
d004f5da:	9907      	ldr	r1, [sp, #28]
d004f5dc:	9c02      	ldr	r4, [sp, #8]
d004f5de:	f8dd e010 	ldr.w	lr, [sp, #16]
d004f5e2:	9108      	str	r1, [sp, #32]
d004f5e4:	f3c3 280f 	ubfx	r8, r3, #8, #16
d004f5e8:	f83c af02 	ldrh.w	sl, [ip, #2]!
d004f5ec:	eb04 0784 	add.w	r7, r4, r4, lsl #2
d004f5f0:	f100 0901 	add.w	r9, r0, #1
d004f5f4:	45c2      	cmp	sl, r8
d004f5f6:	442b      	add	r3, r5
d004f5f8:	ea4f 1787 	mov.w	r7, r7, lsl #6
d004f5fc:	f104 0401 	add.w	r4, r4, #1
d004f600:	d909      	bls.n	d004f616 <fillTriangleDitherBayer+0xc1a>
d004f602:	9906      	ldr	r1, [sp, #24]
d004f604:	f8ac 8000 	strh.w	r8, [ip]
d004f608:	5c08      	ldrb	r0, [r1, r0]
d004f60a:	9908      	ldr	r1, [sp, #32]
d004f60c:	4288      	cmp	r0, r1
d004f60e:	bfac      	ite	ge
d004f610:	4658      	movge	r0, fp
d004f612:	4670      	movlt	r0, lr
d004f614:	55f0      	strb	r0, [r6, r7]
d004f616:	42a2      	cmp	r2, r4
d004f618:	f009 0003 	and.w	r0, r9, #3
d004f61c:	dce2      	bgt.n	d004f5e4 <fillTriangleDitherBayer+0xbe8>
d004f61e:	f8dd e034 	ldr.w	lr, [sp, #52]	; 0x34
d004f622:	990e      	ldr	r1, [sp, #56]	; 0x38
d004f624:	e760      	b.n	d004f4e8 <fillTriangleDitherBayer+0xaec>
d004f626:	ee16 3a90 	vmov	r3, s13
d004f62a:	f001 0003 	and.w	r0, r1, #3
d004f62e:	3380      	adds	r3, #128	; 0x80
d004f630:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f634:	f1be 0f00 	cmp.w	lr, #0
d004f638:	f47f af67 	bne.w	d004f50a <fillTriangleDitherBayer+0xb0e>
d004f63c:	0094      	lsls	r4, r2, #2
d004f63e:	9403      	str	r4, [sp, #12]
d004f640:	9c00      	ldr	r4, [sp, #0]
d004f642:	9108      	str	r1, [sp, #32]
d004f644:	1ea7      	subs	r7, r4, #2
d004f646:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004f64a:	2400      	movs	r4, #0
d004f64c:	f8dd a018 	ldr.w	sl, [sp, #24]
d004f650:	9907      	ldr	r1, [sp, #28]
d004f652:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f656:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f65a:	f100 0c01 	add.w	ip, r0, #1
d004f65e:	3401      	adds	r4, #1
d004f660:	4598      	cmp	r8, r3
d004f662:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f666:	d907      	bls.n	d004f678 <fillTriangleDitherBayer+0xc7c>
d004f668:	803b      	strh	r3, [r7, #0]
d004f66a:	f81a 0000 	ldrb.w	r0, [sl, r0]
d004f66e:	4288      	cmp	r0, r1
d004f670:	bfac      	ite	ge
d004f672:	4658      	movge	r0, fp
d004f674:	4648      	movlt	r0, r9
d004f676:	5570      	strb	r0, [r6, r5]
d004f678:	42a2      	cmp	r2, r4
d004f67a:	f00c 0003 	and.w	r0, ip, #3
d004f67e:	dce8      	bgt.n	d004f652 <fillTriangleDitherBayer+0xc56>
d004f680:	9908      	ldr	r1, [sp, #32]
d004f682:	e731      	b.n	d004f4e8 <fillTriangleDitherBayer+0xaec>
d004f684:	f04f 0b10 	mov.w	fp, #16
d004f688:	2310      	movs	r3, #16
d004f68a:	9304      	str	r3, [sp, #16]
d004f68c:	f7ff ba1c 	b.w	d004eac8 <fillTriangleDitherBayer+0xcc>
d004f690:	eeb0 3a4d 	vmov.f32	s6, s26
d004f694:	eeb0 4a4d 	vmov.f32	s8, s26
d004f698:	e695      	b.n	d004f3c6 <fillTriangleDitherBayer+0x9ca>
d004f69a:	eeb0 2a49 	vmov.f32	s4, s18
d004f69e:	eeb0 3a49 	vmov.f32	s6, s18
d004f6a2:	e454      	b.n	d004ef4e <fillTriangleDitherBayer+0x552>
d004f6a4:	ee16 7a10 	vmov	r7, s12
d004f6a8:	3780      	adds	r7, #128	; 0x80
d004f6aa:	f3c7 270f 	ubfx	r7, r7, #8, #16
d004f6ae:	e51e      	b.n	d004f0ee <fillTriangleDitherBayer+0x6f2>
d004f6b0:	ee16 3a90 	vmov	r3, s13
d004f6b4:	3380      	adds	r3, #128	; 0x80
d004f6b6:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f6ba:	e7c1      	b.n	d004f640 <fillTriangleDitherBayer+0xc44>
d004f6bc:	ee16 3a90 	vmov	r3, s13
d004f6c0:	3380      	adds	r3, #128	; 0x80
d004f6c2:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f6c6:	e766      	b.n	d004f596 <fillTriangleDitherBayer+0xb9a>
d004f6c8:	ee16 2a10 	vmov	r2, s12
d004f6cc:	3280      	adds	r2, #128	; 0x80
d004f6ce:	f3c2 220f 	ubfx	r2, r2, #8, #16
d004f6d2:	e562      	b.n	d004f19a <fillTriangleDitherBayer+0x79e>

d004f6d4 <fillTriangleDitherBayerT>:
d004f6d4:	eddf 7aca 	vldr	s15, [pc, #808]	; d004fa00 <fillTriangleDitherBayerT+0x32c>
d004f6d8:	eef4 0ae7 	vcmpe.f32	s1, s15
d004f6dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004f6e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f6e4:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004f6e8:	ed2d 8b10 	vpush	{d8-d15}
d004f6ec:	b099      	sub	sp, #100	; 0x64
d004f6ee:	9205      	str	r2, [sp, #20]
d004f6f0:	bf94      	ite	ls
d004f6f2:	2201      	movls	r2, #1
d004f6f4:	2200      	movhi	r2, #0
d004f6f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f6fa:	9002      	str	r0, [sp, #8]
d004f6fc:	9104      	str	r1, [sp, #16]
d004f6fe:	bf98      	it	ls
d004f700:	f042 0201 	orrls.w	r2, r2, #1
d004f704:	9306      	str	r3, [sp, #24]
d004f706:	f8bd 40d0 	ldrh.w	r4, [sp, #208]	; 0xd0
d004f70a:	f8bd 00d4 	ldrh.w	r0, [sp, #212]	; 0xd4
d004f70e:	f8bd 10d8 	ldrh.w	r1, [sp, #216]	; 0xd8
d004f712:	f89d 30dc 	ldrb.w	r3, [sp, #220]	; 0xdc
d004f716:	f89d 50e0 	ldrb.w	r5, [sp, #224]	; 0xe0
d004f71a:	2a00      	cmp	r2, #0
d004f71c:	f040 81d7 	bne.w	d004face <fillTriangleDitherBayerT+0x3fa>
d004f720:	eeb4 0a67 	vcmp.f32	s0, s15
d004f724:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f728:	f240 81d1 	bls.w	d004face <fillTriangleDitherBayerT+0x3fa>
d004f72c:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004f730:	eddf 6ab4 	vldr	s13, [pc, #720]	; d004fa04 <fillTriangleDitherBayerT+0x330>
d004f734:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d004f738:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d004f73c:	ee06 4a90 	vmov	s13, r4
d004f740:	ee87 8a00 	vdiv.f32	s16, s14, s0
d004f744:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d004f748:	ee87 0a20 	vdiv.f32	s0, s14, s1
d004f74c:	ee87 3a01 	vdiv.f32	s6, s14, s2
d004f750:	eebd 7ae7 	vcvt.s32.f32	s14, s15
d004f754:	eeb8 5a66 	vcvt.f32.u32	s10, s13
d004f758:	ee17 2a10 	vmov	r2, s14
d004f75c:	ee07 0a10 	vmov	s14, r0
d004f760:	ee25 5a08 	vmul.f32	s10, s10, s16
d004f764:	eeb8 4a47 	vcvt.f32.u32	s8, s14
d004f768:	ee07 1a10 	vmov	s14, r1
d004f76c:	1c51      	adds	r1, r2, #1
d004f76e:	eef8 6a47 	vcvt.f32.u32	s13, s14
d004f772:	2905      	cmp	r1, #5
d004f774:	ee24 4a00 	vmul.f32	s8, s8, s0
d004f778:	bfa8      	it	ge
d004f77a:	2105      	movge	r1, #5
d004f77c:	2a04      	cmp	r2, #4
d004f77e:	ee66 6a83 	vmul.f32	s13, s13, s6
d004f782:	f300 853c 	bgt.w	d00501fe <fillTriangleDitherBayerT+0xb2a>
d004f786:	f003 030f 	and.w	r3, r3, #15
d004f78a:	2a03      	cmp	r2, #3
d004f78c:	f103 0320 	add.w	r3, r3, #32
d004f790:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004f794:	b2c0      	uxtb	r0, r0
d004f796:	9001      	str	r0, [sp, #4]
d004f798:	f300 8533 	bgt.w	d0050202 <fillTriangleDitherBayerT+0xb2e>
d004f79c:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004f7a0:	b2db      	uxtb	r3, r3
d004f7a2:	9303      	str	r3, [sp, #12]
d004f7a4:	ed9d 7a04 	vldr	s14, [sp, #16]
d004f7a8:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004f7ac:	ed9d 7a06 	vldr	s14, [sp, #24]
d004f7b0:	eef8 1ac7 	vcvt.f32.s32	s3, s14
d004f7b4:	ed9d 7a02 	vldr	s14, [sp, #8]
d004f7b8:	eef8 4ac7 	vcvt.f32.s32	s9, s14
d004f7bc:	ed9d 7a05 	vldr	s14, [sp, #20]
d004f7c0:	eef4 3ae1 	vcmpe.f32	s7, s3
d004f7c4:	eeb8 2ac7 	vcvt.f32.s32	s4, s14
d004f7c8:	ed9d 7a32 	vldr	s14, [sp, #200]	; 0xc8
d004f7cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f7d0:	eeb8 6ac7 	vcvt.f32.s32	s12, s14
d004f7d4:	ed9d 7a33 	vldr	s14, [sp, #204]	; 0xcc
d004f7d8:	eef8 2ac7 	vcvt.f32.s32	s5, s14
d004f7dc:	f300 817c 	bgt.w	d004fad8 <fillTriangleDitherBayerT+0x404>
d004f7e0:	eef4 3ae2 	vcmpe.f32	s7, s5
d004f7e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f7e8:	f300 82ae 	bgt.w	d004fd48 <fillTriangleDitherBayerT+0x674>
d004f7ec:	eef4 2ae1 	vcmpe.f32	s5, s3
d004f7f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f7f4:	d517      	bpl.n	d004f826 <fillTriangleDitherBayerT+0x152>
d004f7f6:	eef0 0a44 	vmov.f32	s1, s8
d004f7fa:	eeb0 1a40 	vmov.f32	s2, s0
d004f7fe:	eef0 5a61 	vmov.f32	s11, s3
d004f802:	eeb0 7a42 	vmov.f32	s14, s4
d004f806:	eeb0 4a66 	vmov.f32	s8, s13
d004f80a:	eeb0 0a43 	vmov.f32	s0, s6
d004f80e:	eef0 1a62 	vmov.f32	s3, s5
d004f812:	eeb0 2a46 	vmov.f32	s4, s12
d004f816:	eef0 6a60 	vmov.f32	s13, s1
d004f81a:	eeb0 3a41 	vmov.f32	s6, s2
d004f81e:	eef0 2a65 	vmov.f32	s5, s11
d004f822:	eeb0 6a47 	vmov.f32	s12, s14
d004f826:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004f82a:	ee73 5a87 	vadd.f32	s11, s7, s14
d004f82e:	ee32 7a87 	vadd.f32	s14, s5, s14
d004f832:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004f836:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d004f83a:	ee15 3a90 	vmov	r3, s11
d004f83e:	ee17 1a10 	vmov	r1, s14
d004f842:	428b      	cmp	r3, r1
d004f844:	f000 8143 	beq.w	d004face <fillTriangleDitherBayerT+0x3fa>
d004f848:	ee32 7ae3 	vsub.f32	s14, s5, s7
d004f84c:	eddf 5a6c 	vldr	s11, [pc, #432]	; d004fa00 <fillTriangleDitherBayerT+0x32c>
d004f850:	eeb4 7ae5 	vcmpe.f32	s14, s11
d004f854:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f858:	f240 8139 	bls.w	d004face <fillTriangleDitherBayerT+0x3fa>
d004f85c:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004f860:	ee71 0ae3 	vsub.f32	s1, s3, s7
d004f864:	ee76 8a64 	vsub.f32	s17, s12, s9
d004f868:	ee8a 1a07 	vdiv.f32	s2, s20, s14
d004f86c:	eef4 0ae5 	vcmpe.f32	s1, s11
d004f870:	ee33 9a48 	vsub.f32	s18, s6, s16
d004f874:	ee76 9ac5 	vsub.f32	s19, s13, s10
d004f878:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f87c:	ee68 8a81 	vmul.f32	s17, s17, s2
d004f880:	ee29 9a01 	vmul.f32	s18, s18, s2
d004f884:	ee69 9a81 	vmul.f32	s19, s19, s2
d004f888:	f300 8145 	bgt.w	d004fb16 <fillTriangleDitherBayerT+0x442>
d004f88c:	ee07 2a10 	vmov	s14, r2
d004f890:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004f894:	ee32 1ae1 	vsub.f32	s2, s5, s3
d004f898:	9901      	ldr	r1, [sp, #4]
d004f89a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004f89e:	122b      	asrs	r3, r5, #8
d004f8a0:	930d      	str	r3, [sp, #52]	; 0x34
d004f8a2:	eeb4 1ae5 	vcmpe.f32	s2, s11
d004f8a6:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004f8aa:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004f8ae:	eeb0 7a67 	vmov.f32	s14, s15
d004f8b2:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004f8b6:	ee17 3a10 	vmov	r3, s14
d004f8ba:	f383 0204 	usat	r2, #4, r3
d004f8be:	9204      	str	r2, [sp, #16]
d004f8c0:	9a03      	ldr	r2, [sp, #12]
d004f8c2:	428a      	cmp	r2, r1
d004f8c4:	bf18      	it	ne
d004f8c6:	2b00      	cmpne	r3, #0
d004f8c8:	bfd4      	ite	le
d004f8ca:	2301      	movle	r3, #1
d004f8cc:	2300      	movgt	r3, #0
d004f8ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f8d2:	9305      	str	r3, [sp, #20]
d004f8d4:	f340 80fb 	ble.w	d004face <fillTriangleDitherBayerT+0x3fa>
d004f8d8:	ed9f ea4a 	vldr	s28, [pc, #296]	; d004fa04 <fillTriangleDitherBayerT+0x330>
d004f8dc:	eeb0 aa4e 	vmov.f32	s20, s28
d004f8e0:	eeb0 ca4e 	vmov.f32	s24, s28
d004f8e4:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004f8e8:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d004f8ec:	ee36 6a42 	vsub.f32	s12, s12, s4
d004f8f0:	ed9f 7a43 	vldr	s14, [pc, #268]	; d004fa00 <fillTriangleDitherBayerT+0x32c>
d004f8f4:	ee33 3a40 	vsub.f32	s6, s6, s0
d004f8f8:	eec5 7aa7 	vdiv.f32	s15, s11, s15
d004f8fc:	eef4 0ac7 	vcmpe.f32	s1, s14
d004f900:	ee76 6ac4 	vsub.f32	s13, s13, s8
d004f904:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f908:	ee26 6a27 	vmul.f32	s12, s12, s15
d004f90c:	ee66 faa7 	vmul.f32	s31, s13, s15
d004f910:	ed8d 6a12 	vstr	s12, [sp, #72]	; 0x48
d004f914:	ee23 6a27 	vmul.f32	s12, s6, s15
d004f918:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d004f91c:	f300 8139 	bgt.w	d004fb92 <fillTriangleDitherBayerT+0x4be>
d004f920:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d004f924:	4a31      	ldr	r2, [pc, #196]	; (d004f9ec <fillTriangleDitherBayerT+0x318>)
d004f926:	4b32      	ldr	r3, [pc, #200]	; (d004f9f0 <fillTriangleDitherBayerT+0x31c>)
d004f928:	6812      	ldr	r2, [r2, #0]
d004f92a:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d004f92e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f932:	681b      	ldr	r3, [r3, #0]
d004f934:	920e      	str	r2, [sp, #56]	; 0x38
d004f936:	edcd 7a10 	vstr	s15, [sp, #64]	; 0x40
d004f93a:	930f      	str	r3, [sp, #60]	; 0x3c
d004f93c:	eddd 7a10 	vldr	s15, [sp, #64]	; 0x40
d004f940:	eef4 1ae7 	vcmpe.f32	s3, s15
d004f944:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f948:	dd02      	ble.n	d004f950 <fillTriangleDitherBayerT+0x27c>
d004f94a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004f94c:	3301      	adds	r3, #1
d004f94e:	930c      	str	r3, [sp, #48]	; 0x30
d004f950:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004f954:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004f958:	eef4 2ac7 	vcmpe.f32	s5, s14
d004f95c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f960:	dc04      	bgt.n	d004f96c <fillTriangleDitherBayerT+0x298>
d004f962:	ee17 3a90 	vmov	r3, s15
d004f966:	3b01      	subs	r3, #1
d004f968:	ee07 3a90 	vmov	s15, r3
d004f96c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004f96e:	ee17 2a90 	vmov	r2, s15
d004f972:	980e      	ldr	r0, [sp, #56]	; 0x38
d004f974:	4293      	cmp	r3, r2
d004f976:	bfa8      	it	ge
d004f978:	4613      	movge	r3, r2
d004f97a:	461a      	mov	r2, r3
d004f97c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004f97e:	4283      	cmp	r3, r0
d004f980:	bfb8      	it	lt
d004f982:	4603      	movlt	r3, r0
d004f984:	4293      	cmp	r3, r2
d004f986:	9306      	str	r3, [sp, #24]
d004f988:	f300 80a1 	bgt.w	d004face <fillTriangleDitherBayerT+0x3fa>
d004f98c:	ee07 3a90 	vmov	s15, r3
d004f990:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004f994:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004f998:	4916      	ldr	r1, [pc, #88]	; (d004f9f4 <fillTriangleDitherBayerT+0x320>)
d004f99a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f99e:	ed9d ba12 	vldr	s22, [sp, #72]	; 0x48
d004f9a2:	015b      	lsls	r3, r3, #5
d004f9a4:	eddd aa11 	vldr	s21, [sp, #68]	; 0x44
d004f9a8:	ed9f 1a15 	vldr	s2, [pc, #84]	; d004fa00 <fillTriangleDitherBayerT+0x32c>
d004f9ac:	ee77 7a87 	vadd.f32	s15, s15, s14
d004f9b0:	930c      	str	r3, [sp, #48]	; 0x30
d004f9b2:	1c53      	adds	r3, r2, #1
d004f9b4:	eddf 0a10 	vldr	s1, [pc, #64]	; d004f9f8 <fillTriangleDitherBayerT+0x324>
d004f9b8:	ed9f 6a12 	vldr	s12, [pc, #72]	; d004fa04 <fillTriangleDitherBayerT+0x330>
d004f9bc:	ee77 3ae3 	vsub.f32	s7, s15, s7
d004f9c0:	930a      	str	r3, [sp, #40]	; 0x28
d004f9c2:	ee77 1ae1 	vsub.f32	s3, s15, s3
d004f9c6:	680b      	ldr	r3, [r1, #0]
d004f9c8:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
d004f9cc:	eee8 4aa3 	vfma.f32	s9, s17, s7
d004f9d0:	930b      	str	r3, [sp, #44]	; 0x2c
d004f9d2:	eea9 8a23 	vfma.f32	s16, s18, s7
d004f9d6:	eea9 5aa3 	vfma.f32	s10, s19, s7
d004f9da:	eddf 3a08 	vldr	s7, [pc, #32]	; d004f9fc <fillTriangleDitherBayerT+0x328>
d004f9de:	eeab 2a21 	vfma.f32	s4, s22, s3
d004f9e2:	eeaa 0aa1 	vfma.f32	s0, s21, s3
d004f9e6:	eea1 4aaf 	vfma.f32	s8, s3, s31
d004f9ea:	e04e      	b.n	d004fa8a <fillTriangleDitherBayerT+0x3b6>
d004f9ec:	d005a25c 	.word	0xd005a25c
d004f9f0:	d005a260 	.word	0xd005a260
d004f9f4:	d005a264 	.word	0xd005a264
d004f9f8:	33d6bf95 	.word	0x33d6bf95
d004f9fc:	477fff00 	.word	0x477fff00
d004fa00:	38d1b717 	.word	0x38d1b717
d004fa04:	00000000 	.word	0x00000000
d004fa08:	eeb0 aa45 	vmov.f32	s20, s10
d004fa0c:	eef0 1a48 	vmov.f32	s3, s16
d004fa10:	eef0 7a64 	vmov.f32	s15, s9
d004fa14:	eef0 2a44 	vmov.f32	s5, s8
d004fa18:	eeb0 3a40 	vmov.f32	s6, s0
d004fa1c:	eeb0 7a42 	vmov.f32	s14, s4
d004fa20:	eefd 6ac7 	vcvt.s32.f32	s13, s14
d004fa24:	f240 13df 	movw	r3, #479	; 0x1df
d004fa28:	ee16 0a90 	vmov	r0, s13
d004fa2c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004fa30:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004fa34:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d004fa38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa3c:	ee16 5a90 	vmov	r5, s13
d004fa40:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004fa44:	bfc8      	it	gt
d004fa46:	3001      	addgt	r0, #1
d004fa48:	eef4 7ae6 	vcmpe.f32	s15, s13
d004fa4c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004fa50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa54:	bfd8      	it	le
d004fa56:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d004fa5a:	429d      	cmp	r5, r3
d004fa5c:	bfa8      	it	ge
d004fa5e:	461d      	movge	r5, r3
d004fa60:	42a8      	cmp	r0, r5
d004fa62:	f340 818a 	ble.w	d004fd7a <fillTriangleDitherBayerT+0x6a6>
d004fa66:	9b06      	ldr	r3, [sp, #24]
d004fa68:	ee74 4aa8 	vadd.f32	s9, s9, s17
d004fa6c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004fa6e:	ee38 8a09 	vadd.f32	s16, s16, s18
d004fa72:	3301      	adds	r3, #1
d004fa74:	ee35 5a29 	vadd.f32	s10, s10, s19
d004fa78:	ee32 2a0b 	vadd.f32	s4, s4, s22
d004fa7c:	4293      	cmp	r3, r2
d004fa7e:	ee30 0a2a 	vadd.f32	s0, s0, s21
d004fa82:	ee34 4a2f 	vadd.f32	s8, s8, s31
d004fa86:	9306      	str	r3, [sp, #24]
d004fa88:	d021      	beq.n	d004face <fillTriangleDitherBayerT+0x3fa>
d004fa8a:	eef4 4ac2 	vcmpe.f32	s9, s4
d004fa8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa92:	dcb9      	bgt.n	d004fa08 <fillTriangleDitherBayerT+0x334>
d004fa94:	eeb0 aa44 	vmov.f32	s20, s8
d004fa98:	eef0 1a40 	vmov.f32	s3, s0
d004fa9c:	eef0 7a42 	vmov.f32	s15, s4
d004faa0:	eef0 2a45 	vmov.f32	s5, s10
d004faa4:	eeb0 3a48 	vmov.f32	s6, s16
d004faa8:	eeb0 7a64 	vmov.f32	s14, s9
d004faac:	e7b8      	b.n	d004fa20 <fillTriangleDitherBayerT+0x34c>
d004faae:	eddd 2a15 	vldr	s5, [sp, #84]	; 0x54
d004fab2:	ed9d 5a16 	vldr	s10, [sp, #88]	; 0x58
d004fab6:	ed9d 8a17 	vldr	s16, [sp, #92]	; 0x5c
d004faba:	ed5f 7a2f 	vldr	s15, [pc, #-188]	; d004fa00 <fillTriangleDitherBayerT+0x32c>
d004fabe:	ed9d 7a0b 	vldr	s14, [sp, #44]	; 0x2c
d004fac2:	eeb4 7ae7 	vcmpe.f32	s14, s15
d004fac6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004faca:	f73f af37 	bgt.w	d004f93c <fillTriangleDitherBayerT+0x268>
d004face:	b019      	add	sp, #100	; 0x64
d004fad0:	ecbd 8b10 	vpop	{d8-d15}
d004fad4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004fad8:	eef4 1ae2 	vcmpe.f32	s3, s5
d004fadc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fae0:	f340 8119 	ble.w	d004fd16 <fillTriangleDitherBayerT+0x642>
d004fae4:	eef0 0a66 	vmov.f32	s1, s13
d004fae8:	eeb0 1a43 	vmov.f32	s2, s6
d004faec:	eef0 5a62 	vmov.f32	s11, s5
d004faf0:	eeb0 7a46 	vmov.f32	s14, s12
d004faf4:	eef0 6a45 	vmov.f32	s13, s10
d004faf8:	eeb0 3a48 	vmov.f32	s6, s16
d004fafc:	eef0 2a63 	vmov.f32	s5, s7
d004fb00:	eeb0 6a64 	vmov.f32	s12, s9
d004fb04:	eeb0 5a60 	vmov.f32	s10, s1
d004fb08:	eeb0 8a41 	vmov.f32	s16, s2
d004fb0c:	eef0 3a65 	vmov.f32	s7, s11
d004fb10:	eef0 4a47 	vmov.f32	s9, s14
d004fb14:	e687      	b.n	d004f826 <fillTriangleDitherBayerT+0x152>
d004fb16:	ee07 2a10 	vmov	s14, r2
d004fb1a:	ee8a 1a20 	vdiv.f32	s2, s20, s1
d004fb1e:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004fb22:	9901      	ldr	r1, [sp, #4]
d004fb24:	122b      	asrs	r3, r5, #8
d004fb26:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004fb2a:	930d      	str	r3, [sp, #52]	; 0x34
d004fb2c:	ee72 aa64 	vsub.f32	s21, s4, s9
d004fb30:	ee30 aa48 	vsub.f32	s20, s0, s16
d004fb34:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fb38:	ee34 ea45 	vsub.f32	s28, s8, s10
d004fb3c:	eeb0 7a67 	vmov.f32	s14, s15
d004fb40:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004fb44:	ee6a 7a81 	vmul.f32	s15, s21, s2
d004fb48:	ee17 3a10 	vmov	r3, s14
d004fb4c:	ee32 7ae1 	vsub.f32	s14, s5, s3
d004fb50:	ee2e ea01 	vmul.f32	s28, s28, s2
d004fb54:	f383 0204 	usat	r2, #4, r3
d004fb58:	eeb0 ca67 	vmov.f32	s24, s15
d004fb5c:	eeb4 7ae5 	vcmpe.f32	s14, s11
d004fb60:	ed8d 7a0b 	vstr	s14, [sp, #44]	; 0x2c
d004fb64:	9204      	str	r2, [sp, #16]
d004fb66:	ee6a 7a01 	vmul.f32	s15, s20, s2
d004fb6a:	9a03      	ldr	r2, [sp, #12]
d004fb6c:	428a      	cmp	r2, r1
d004fb6e:	bf18      	it	ne
d004fb70:	2b00      	cmpne	r3, #0
d004fb72:	eeb0 aa67 	vmov.f32	s20, s15
d004fb76:	bfd4      	ite	le
d004fb78:	2301      	movle	r3, #1
d004fb7a:	2300      	movgt	r3, #0
d004fb7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb80:	9305      	str	r3, [sp, #20]
d004fb82:	f73f aeaf 	bgt.w	d004f8e4 <fillTriangleDitherBayerT+0x210>
d004fb86:	ed5f fa61 	vldr	s31, [pc, #-388]	; d004fa04 <fillTriangleDitherBayerT+0x330>
d004fb8a:	edcd fa11 	vstr	s31, [sp, #68]	; 0x44
d004fb8e:	edcd fa12 	vstr	s31, [sp, #72]	; 0x48
d004fb92:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004fb96:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004fb9a:	eeb4 7ae3 	vcmpe.f32	s14, s7
d004fb9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fba2:	d504      	bpl.n	d004fbae <fillTriangleDitherBayerT+0x4da>
d004fba4:	ee17 3a90 	vmov	r3, s15
d004fba8:	3301      	adds	r3, #1
d004fbaa:	ee07 3a90 	vmov	s15, r3
d004fbae:	eebd 7ae1 	vcvt.s32.f32	s14, s3
d004fbb2:	49de      	ldr	r1, [pc, #888]	; (d004ff2c <fillTriangleDitherBayerT+0x858>)
d004fbb4:	ee17 0a90 	vmov	r0, s15
d004fbb8:	4add      	ldr	r2, [pc, #884]	; (d004ff30 <fillTriangleDitherBayerT+0x85c>)
d004fbba:	6809      	ldr	r1, [r1, #0]
d004fbbc:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d004fbc0:	ee17 3a10 	vmov	r3, s14
d004fbc4:	6812      	ldr	r2, [r2, #0]
d004fbc6:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d004fbca:	eef4 1ae6 	vcmpe.f32	s3, s13
d004fbce:	edcd 6a10 	vstr	s13, [sp, #64]	; 0x40
d004fbd2:	910e      	str	r1, [sp, #56]	; 0x38
d004fbd4:	920f      	str	r2, [sp, #60]	; 0x3c
d004fbd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fbda:	bfd8      	it	le
d004fbdc:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004fbe0:	4288      	cmp	r0, r1
d004fbe2:	bfb8      	it	lt
d004fbe4:	4608      	movlt	r0, r1
d004fbe6:	4293      	cmp	r3, r2
d004fbe8:	bfa8      	it	ge
d004fbea:	4613      	movge	r3, r2
d004fbec:	9002      	str	r0, [sp, #8]
d004fbee:	4283      	cmp	r3, r0
d004fbf0:	f6ff af63 	blt.w	d004faba <fillTriangleDitherBayerT+0x3e6>
d004fbf4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fbf8:	3301      	adds	r3, #1
d004fbfa:	eef0 aa64 	vmov.f32	s21, s9
d004fbfe:	49cd      	ldr	r1, [pc, #820]	; (d004ff34 <fillTriangleDitherBayerT+0x860>)
d004fc00:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d004fc02:	eef0 da48 	vmov.f32	s27, s16
d004fc06:	ee37 7ae3 	vsub.f32	s14, s15, s7
d004fc0a:	eddd 7a02 	vldr	s15, [sp, #8]
d004fc0e:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d004fc12:	930a      	str	r3, [sp, #40]	; 0x28
d004fc14:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fc18:	680b      	ldr	r3, [r1, #0]
d004fc1a:	eef0 ca48 	vmov.f32	s25, s16
d004fc1e:	ed8d 8a17 	vstr	s16, [sp, #92]	; 0x5c
d004fc22:	eeb0 ba64 	vmov.f32	s22, s9
d004fc26:	9313      	str	r3, [sp, #76]	; 0x4c
d004fc28:	ee77 7a87 	vadd.f32	s15, s15, s14
d004fc2c:	0153      	lsls	r3, r2, #5
d004fc2e:	eeb0 7a4c 	vmov.f32	s14, s24
d004fc32:	eddf bac1 	vldr	s23, [pc, #772]	; d004ff38 <fillTriangleDitherBayerT+0x864>
d004fc36:	eeb0 da45 	vmov.f32	s26, s10
d004fc3a:	eddf 6ac0 	vldr	s13, [pc, #768]	; d004ff3c <fillTriangleDitherBayerT+0x868>
d004fc3e:	eee7 aa8c 	vfma.f32	s21, s15, s24
d004fc42:	eddf 5abf 	vldr	s11, [pc, #764]	; d004ff40 <fillTriangleDitherBayerT+0x86c>
d004fc46:	eeb0 ca45 	vmov.f32	s24, s10
d004fc4a:	9314      	str	r3, [sp, #80]	; 0x50
d004fc4c:	eea8 baa7 	vfma.f32	s22, s17, s15
d004fc50:	edcd 2a15 	vstr	s5, [sp, #84]	; 0x54
d004fc54:	eee9 da27 	vfma.f32	s27, s18, s15
d004fc58:	ed8d 5a16 	vstr	s10, [sp, #88]	; 0x58
d004fc5c:	eea9 daa7 	vfma.f32	s26, s19, s15
d004fc60:	eee7 ca8a 	vfma.f32	s25, s15, s20
d004fc64:	eea7 ca8e 	vfma.f32	s24, s15, s28
d004fc68:	eeb0 8a47 	vmov.f32	s16, s14
d004fc6c:	e041      	b.n	d004fcf2 <fillTriangleDitherBayerT+0x61e>
d004fc6e:	eeb0 1a4d 	vmov.f32	s2, s26
d004fc72:	eef0 2a6d 	vmov.f32	s5, s27
d004fc76:	eef0 7a4b 	vmov.f32	s15, s22
d004fc7a:	eeb0 3a4c 	vmov.f32	s6, s24
d004fc7e:	eeb0 5a6c 	vmov.f32	s10, s25
d004fc82:	eeb0 7a6a 	vmov.f32	s14, s21
d004fc86:	eebd 6ac7 	vcvt.s32.f32	s12, s14
d004fc8a:	f240 13df 	movw	r3, #479	; 0x1df
d004fc8e:	ee16 0a10 	vmov	r0, s12
d004fc92:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004fc96:	eeb4 7ac6 	vcmpe.f32	s14, s12
d004fc9a:	eebd 6ae7 	vcvt.s32.f32	s12, s15
d004fc9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fca2:	ee16 5a10 	vmov	r5, s12
d004fca6:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004fcaa:	bfc8      	it	gt
d004fcac:	3001      	addgt	r0, #1
d004fcae:	eef4 7ac6 	vcmpe.f32	s15, s12
d004fcb2:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004fcb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fcba:	bfd8      	it	le
d004fcbc:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d004fcc0:	429d      	cmp	r5, r3
d004fcc2:	bfa8      	it	ge
d004fcc4:	461d      	movge	r5, r3
d004fcc6:	4285      	cmp	r5, r0
d004fcc8:	f280 817f 	bge.w	d004ffca <fillTriangleDitherBayerT+0x8f6>
d004fccc:	9b02      	ldr	r3, [sp, #8]
d004fcce:	ee3b ba28 	vadd.f32	s22, s22, s17
d004fcd2:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004fcd4:	ee7d da89 	vadd.f32	s27, s27, s18
d004fcd8:	3301      	adds	r3, #1
d004fcda:	ee3d da29 	vadd.f32	s26, s26, s19
d004fcde:	ee7a aa88 	vadd.f32	s21, s21, s16
d004fce2:	4293      	cmp	r3, r2
d004fce4:	ee7c ca8a 	vadd.f32	s25, s25, s20
d004fce8:	ee3c ca0e 	vadd.f32	s24, s24, s28
d004fcec:	9302      	str	r3, [sp, #8]
d004fcee:	f43f aede 	beq.w	d004faae <fillTriangleDitherBayerT+0x3da>
d004fcf2:	eeb4 baea 	vcmpe.f32	s22, s21
d004fcf6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fcfa:	dcb8      	bgt.n	d004fc6e <fillTriangleDitherBayerT+0x59a>
d004fcfc:	eeb0 1a4c 	vmov.f32	s2, s24
d004fd00:	eef0 2a6c 	vmov.f32	s5, s25
d004fd04:	eef0 7a6a 	vmov.f32	s15, s21
d004fd08:	eeb0 3a4d 	vmov.f32	s6, s26
d004fd0c:	eeb0 5a6d 	vmov.f32	s10, s27
d004fd10:	eeb0 7a4b 	vmov.f32	s14, s22
d004fd14:	e7b7      	b.n	d004fc86 <fillTriangleDitherBayerT+0x5b2>
d004fd16:	eef0 0a45 	vmov.f32	s1, s10
d004fd1a:	eeb0 1a48 	vmov.f32	s2, s16
d004fd1e:	eef0 5a63 	vmov.f32	s11, s7
d004fd22:	eeb0 7a64 	vmov.f32	s14, s9
d004fd26:	eeb0 5a44 	vmov.f32	s10, s8
d004fd2a:	eeb0 8a40 	vmov.f32	s16, s0
d004fd2e:	eef0 3a61 	vmov.f32	s7, s3
d004fd32:	eef0 4a42 	vmov.f32	s9, s4
d004fd36:	eeb0 4a60 	vmov.f32	s8, s1
d004fd3a:	eeb0 0a41 	vmov.f32	s0, s2
d004fd3e:	eef0 1a65 	vmov.f32	s3, s11
d004fd42:	eeb0 2a47 	vmov.f32	s4, s14
d004fd46:	e551      	b.n	d004f7ec <fillTriangleDitherBayerT+0x118>
d004fd48:	eef0 0a45 	vmov.f32	s1, s10
d004fd4c:	eeb0 1a48 	vmov.f32	s2, s16
d004fd50:	eef0 5a63 	vmov.f32	s11, s7
d004fd54:	eeb0 7a64 	vmov.f32	s14, s9
d004fd58:	eeb0 5a66 	vmov.f32	s10, s13
d004fd5c:	eeb0 8a43 	vmov.f32	s16, s6
d004fd60:	eef0 3a62 	vmov.f32	s7, s5
d004fd64:	eef0 4a46 	vmov.f32	s9, s12
d004fd68:	eef0 6a60 	vmov.f32	s13, s1
d004fd6c:	eeb0 3a41 	vmov.f32	s6, s2
d004fd70:	eef0 2a65 	vmov.f32	s5, s11
d004fd74:	eeb0 6a47 	vmov.f32	s12, s14
d004fd78:	e538      	b.n	d004f7ec <fillTriangleDitherBayerT+0x118>
d004fd7a:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fd7e:	eef4 7ac1 	vcmpe.f32	s15, s2
d004fd82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fd86:	f340 8240 	ble.w	d005020a <fillTriangleDitherBayerT+0xb36>
d004fd8a:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004fd8e:	ee71 1ac3 	vsub.f32	s3, s3, s6
d004fd92:	ee3a aa62 	vsub.f32	s20, s20, s5
d004fd96:	eec5 6aa7 	vdiv.f32	s13, s11, s15
d004fd9a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fd9e:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fda2:	ee07 0a10 	vmov	s14, r0
d004fda6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004fdaa:	ee37 7a27 	vadd.f32	s14, s14, s15
d004fdae:	ee61 1aa6 	vmul.f32	s3, s3, s13
d004fdb2:	ee2a aa26 	vmul.f32	s20, s20, s13
d004fdb6:	eea7 3a21 	vfma.f32	s6, s14, s3
d004fdba:	eee7 2a0a 	vfma.f32	s5, s14, s20
d004fdbe:	9c06      	ldr	r4, [sp, #24]
d004fdc0:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004fdc4:	4a5f      	ldr	r2, [pc, #380]	; (d004ff44 <fillTriangleDitherBayerT+0x870>)
d004fdc6:	ebc4 1304 	rsb	r3, r4, r4, lsl #4
d004fdca:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d004fdcc:	6817      	ldr	r7, [r2, #0]
d004fdce:	eb00 0280 	add.w	r2, r0, r0, lsl #2
d004fdd2:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d004fdd6:	495c      	ldr	r1, [pc, #368]	; (d004ff48 <fillTriangleDitherBayerT+0x874>)
d004fdd8:	eb04 1282 	add.w	r2, r4, r2, lsl #6
d004fddc:	f004 0e03 	and.w	lr, r4, #3
d004fde0:	4403      	add	r3, r0
d004fde2:	9502      	str	r5, [sp, #8]
d004fde4:	4417      	add	r7, r2
d004fde6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d004fde8:	eb01 0e8e 	add.w	lr, r1, lr, lsl #2
d004fdec:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d004fdf0:	461d      	mov	r5, r3
d004fdf2:	9b02      	ldr	r3, [sp, #8]
d004fdf4:	eeb4 3ae0 	vcmpe.f32	s6, s1
d004fdf8:	eba3 0c00 	sub.w	ip, r3, r0
d004fdfc:	f10c 0301 	add.w	r3, ip, #1
d004fe00:	2b30      	cmp	r3, #48	; 0x30
d004fe02:	bfa8      	it	ge
d004fe04:	2330      	movge	r3, #48	; 0x30
d004fe06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fe0a:	d969      	bls.n	d004fee0 <fillTriangleDitherBayerT+0x80c>
d004fe0c:	f1bc 0f00 	cmp.w	ip, #0
d004fe10:	ee82 7a83 	vdiv.f32	s14, s5, s6
d004fe14:	dd74      	ble.n	d004ff00 <fillTriangleDitherBayerT+0x82c>
d004fe16:	1e5a      	subs	r2, r3, #1
d004fe18:	ee07 2a90 	vmov	s15, r2
d004fe1c:	eef0 ba43 	vmov.f32	s23, s6
d004fe20:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fe24:	eee7 baa1 	vfma.f32	s23, s15, s3
d004fe28:	eef4 bae0 	vcmpe.f32	s23, s1
d004fe2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fe30:	dd71      	ble.n	d004ff16 <fillTriangleDitherBayerT+0x842>
d004fe32:	eeb0 ca62 	vmov.f32	s24, s5
d004fe36:	4a45      	ldr	r2, [pc, #276]	; (d004ff4c <fillTriangleDitherBayerT+0x878>)
d004fe38:	009e      	lsls	r6, r3, #2
d004fe3a:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d004fe3e:	eea7 ca8a 	vfma.f32	s24, s15, s20
d004fe42:	edd2 7a00 	vldr	s15, [r2]
d004fe46:	9a05      	ldr	r2, [sp, #20]
d004fe48:	eecc 6a2b 	vdiv.f32	s13, s24, s23
d004fe4c:	ee76 6ac7 	vsub.f32	s13, s13, s14
d004fe50:	ee66 6aa7 	vmul.f32	s13, s13, s15
d004fe54:	2a00      	cmp	r2, #0
d004fe56:	f000 81c9 	beq.w	d00501ec <fillTriangleDitherBayerT+0xb18>
d004fe5a:	f000 0403 	and.w	r4, r0, #3
d004fe5e:	f1a5 0902 	sub.w	r9, r5, #2
d004fe62:	2100      	movs	r1, #0
d004fe64:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d004fe68:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004fe6c:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004fe70:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d004fe74:	ee37 7a26 	vadd.f32	s14, s14, s13
d004fe78:	f104 0a01 	add.w	sl, r4, #1
d004fe7c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004fe80:	ee17 2a90 	vmov	r2, s15
d004fe84:	b292      	uxth	r2, r2
d004fe86:	4593      	cmp	fp, r2
d004fe88:	d90b      	bls.n	d004fea2 <fillTriangleDitherBayerT+0x7ce>
d004fe8a:	f81e b004 	ldrb.w	fp, [lr, r4]
d004fe8e:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d004fe92:	45c3      	cmp	fp, r8
d004fe94:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004fe98:	db03      	blt.n	d004fea2 <fillTriangleDitherBayerT+0x7ce>
d004fe9a:	f8a9 2000 	strh.w	r2, [r9]
d004fe9e:	9a01      	ldr	r2, [sp, #4]
d004fea0:	553a      	strb	r2, [r7, r4]
d004fea2:	3101      	adds	r1, #1
d004fea4:	f00a 0403 	and.w	r4, sl, #3
d004fea8:	428b      	cmp	r3, r1
d004feaa:	dcdb      	bgt.n	d004fe64 <fillTriangleDitherBayerT+0x790>
d004feac:	f1bc 0f00 	cmp.w	ip, #0
d004feb0:	441e      	add	r6, r3
d004feb2:	ea4f 0243 	mov.w	r2, r3, lsl #1
d004feb6:	ea4f 1686 	mov.w	r6, r6, lsl #6
d004feba:	bfbc      	itt	lt
d004febc:	2202      	movlt	r2, #2
d004febe:	f44f 76a0 	movlt.w	r6, #320	; 0x140
d004fec2:	4415      	add	r5, r2
d004fec4:	4437      	add	r7, r6
d004fec6:	ee07 3a90 	vmov	s15, r3
d004feca:	4418      	add	r0, r3
d004fecc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fed0:	eea7 3aa1 	vfma.f32	s6, s15, s3
d004fed4:	eee7 2a8a 	vfma.f32	s5, s15, s20
d004fed8:	9b02      	ldr	r3, [sp, #8]
d004feda:	4283      	cmp	r3, r0
d004fedc:	da89      	bge.n	d004fdf2 <fillTriangleDitherBayerT+0x71e>
d004fede:	e5c2      	b.n	d004fa66 <fillTriangleDitherBayerT+0x392>
d004fee0:	ee07 3a90 	vmov	s15, r3
d004fee4:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004fee8:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d004feec:	4418      	add	r0, r3
d004feee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fef2:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d004fef6:	eea7 3aa1 	vfma.f32	s6, s15, s3
d004fefa:	eee7 2a8a 	vfma.f32	s5, s15, s20
d004fefe:	e7eb      	b.n	d004fed8 <fillTriangleDitherBayerT+0x804>
d004ff00:	9a05      	ldr	r2, [sp, #20]
d004ff02:	f000 0403 	and.w	r4, r0, #3
d004ff06:	b32a      	cbz	r2, d004ff54 <fillTriangleDitherBayerT+0x880>
d004ff08:	f1bc 0f00 	cmp.w	ip, #0
d004ff0c:	dbdb      	blt.n	d004fec6 <fillTriangleDitherBayerT+0x7f2>
d004ff0e:	eef0 6a46 	vmov.f32	s13, s12
d004ff12:	009e      	lsls	r6, r3, #2
d004ff14:	e7a3      	b.n	d004fe5e <fillTriangleDitherBayerT+0x78a>
d004ff16:	9a05      	ldr	r2, [sp, #20]
d004ff18:	2a00      	cmp	r2, #0
d004ff1a:	f000 816a 	beq.w	d00501f2 <fillTriangleDitherBayerT+0xb1e>
d004ff1e:	eef0 6a46 	vmov.f32	s13, s12
d004ff22:	f000 0403 	and.w	r4, r0, #3
d004ff26:	009e      	lsls	r6, r3, #2
d004ff28:	e799      	b.n	d004fe5e <fillTriangleDitherBayerT+0x78a>
d004ff2a:	bf00      	nop
d004ff2c:	d005a25c 	.word	0xd005a25c
d004ff30:	d005a260 	.word	0xd005a260
d004ff34:	d005a264 	.word	0xd005a264
d004ff38:	33d6bf95 	.word	0x33d6bf95
d004ff3c:	00000000 	.word	0x00000000
d004ff40:	477fff00 	.word	0x477fff00
d004ff44:	d00f4730 	.word	0xd00f4730
d004ff48:	d0057440 	.word	0xd0057440
d004ff4c:	d0057460 	.word	0xd0057460
d004ff50:	38d1b717 	.word	0x38d1b717
d004ff54:	f1bc 0f00 	cmp.w	ip, #0
d004ff58:	dbb5      	blt.n	d004fec6 <fillTriangleDitherBayerT+0x7f2>
d004ff5a:	eef0 6a46 	vmov.f32	s13, s12
d004ff5e:	009e      	lsls	r6, r3, #2
d004ff60:	f1a5 0902 	sub.w	r9, r5, #2
d004ff64:	2100      	movs	r1, #0
d004ff66:	9507      	str	r5, [sp, #28]
d004ff68:	9008      	str	r0, [sp, #32]
d004ff6a:	9609      	str	r6, [sp, #36]	; 0x24
d004ff6c:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d004ff70:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004ff74:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004ff78:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d004ff7c:	ee37 7a26 	vadd.f32	s14, s14, s13
d004ff80:	f104 0a01 	add.w	sl, r4, #1
d004ff84:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004ff88:	ee17 2a90 	vmov	r2, s15
d004ff8c:	b292      	uxth	r2, r2
d004ff8e:	4593      	cmp	fp, r2
d004ff90:	d912      	bls.n	d004ffb8 <fillTriangleDitherBayerT+0x8e4>
d004ff92:	f81e b004 	ldrb.w	fp, [lr, r4]
d004ff96:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d004ff9a:	45c3      	cmp	fp, r8
d004ff9c:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004ffa0:	db0a      	blt.n	d004ffb8 <fillTriangleDitherBayerT+0x8e4>
d004ffa2:	9803      	ldr	r0, [sp, #12]
d004ffa4:	f8a9 2000 	strh.w	r2, [r9]
d004ffa8:	4605      	mov	r5, r0
d004ffaa:	9801      	ldr	r0, [sp, #4]
d004ffac:	4606      	mov	r6, r0
d004ffae:	9804      	ldr	r0, [sp, #16]
d004ffb0:	4583      	cmp	fp, r0
d004ffb2:	bfa8      	it	ge
d004ffb4:	4635      	movge	r5, r6
d004ffb6:	553d      	strb	r5, [r7, r4]
d004ffb8:	3101      	adds	r1, #1
d004ffba:	f00a 0403 	and.w	r4, sl, #3
d004ffbe:	428b      	cmp	r3, r1
d004ffc0:	dcd4      	bgt.n	d004ff6c <fillTriangleDitherBayerT+0x898>
d004ffc2:	9d07      	ldr	r5, [sp, #28]
d004ffc4:	9808      	ldr	r0, [sp, #32]
d004ffc6:	9e09      	ldr	r6, [sp, #36]	; 0x24
d004ffc8:	e770      	b.n	d004feac <fillTriangleDitherBayerT+0x7d8>
d004ffca:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004ffce:	ed1f 6a20 	vldr	s12, [pc, #-128]	; d004ff50 <fillTriangleDitherBayerT+0x87c>
d004ffd2:	eef4 7ac6 	vcmpe.f32	s15, s12
d004ffd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ffda:	f340 811b 	ble.w	d0050214 <fillTriangleDitherBayerT+0xb40>
d004ffde:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004ffe2:	ee72 2ac5 	vsub.f32	s5, s5, s10
d004ffe6:	ee31 1a43 	vsub.f32	s2, s2, s6
d004ffea:	ee80 6aa7 	vdiv.f32	s12, s1, s15
d004ffee:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fff2:	ee37 7ac7 	vsub.f32	s14, s15, s14
d004fff6:	ee07 0a90 	vmov	s15, r0
d004fffa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fffe:	ee37 7a87 	vadd.f32	s14, s15, s14
d0050002:	ee62 2a86 	vmul.f32	s5, s5, s12
d0050006:	ee21 1a06 	vmul.f32	s2, s2, s12
d005000a:	eea7 5a22 	vfma.f32	s10, s14, s5
d005000e:	eea7 3a01 	vfma.f32	s6, s14, s2
d0050012:	9902      	ldr	r1, [sp, #8]
d0050014:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0050018:	4b81      	ldr	r3, [pc, #516]	; (d0050220 <fillTriangleDitherBayerT+0xb4c>)
d005001a:	ebc1 1e01 	rsb	lr, r1, r1, lsl #4
d005001e:	9c14      	ldr	r4, [sp, #80]	; 0x50
d0050020:	681f      	ldr	r7, [r3, #0]
d0050022:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0050026:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d005002a:	4a7e      	ldr	r2, [pc, #504]	; (d0050224 <fillTriangleDitherBayerT+0xb50>)
d005002c:	eb01 1383 	add.w	r3, r1, r3, lsl #6
d0050030:	f001 0803 	and.w	r8, r1, #3
d0050034:	4486      	add	lr, r0
d0050036:	f8dd c034 	ldr.w	ip, [sp, #52]	; 0x34
d005003a:	441f      	add	r7, r3
d005003c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d005003e:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d0050042:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d0050046:	1a2e      	subs	r6, r5, r0
d0050048:	eeb4 5aeb 	vcmpe.f32	s10, s23
d005004c:	1c72      	adds	r2, r6, #1
d005004e:	2a30      	cmp	r2, #48	; 0x30
d0050050:	bfa8      	it	ge
d0050052:	2230      	movge	r2, #48	; 0x30
d0050054:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050058:	d969      	bls.n	d005012e <fillTriangleDitherBayerT+0xa5a>
d005005a:	2e00      	cmp	r6, #0
d005005c:	ee83 7a05 	vdiv.f32	s14, s6, s10
d0050060:	dd75      	ble.n	d005014e <fillTriangleDitherBayerT+0xa7a>
d0050062:	1e53      	subs	r3, r2, #1
d0050064:	ee07 3a90 	vmov	s15, r3
d0050068:	eef0 ea45 	vmov.f32	s29, s10
d005006c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050070:	eee7 eaa2 	vfma.f32	s29, s15, s5
d0050074:	eef4 eaeb 	vcmpe.f32	s29, s23
d0050078:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005007c:	f340 80aa 	ble.w	d00501d4 <fillTriangleDitherBayerT+0xb00>
d0050080:	eeb0 fa43 	vmov.f32	s30, s6
d0050084:	4b68      	ldr	r3, [pc, #416]	; (d0050228 <fillTriangleDitherBayerT+0xb54>)
d0050086:	0091      	lsls	r1, r2, #2
d0050088:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d005008c:	eea7 fa81 	vfma.f32	s30, s15, s2
d0050090:	9106      	str	r1, [sp, #24]
d0050092:	edd3 7a00 	vldr	s15, [r3]
d0050096:	eecf 0a2e 	vdiv.f32	s1, s30, s29
d005009a:	ee70 0ac7 	vsub.f32	s1, s1, s14
d005009e:	ee60 0aa7 	vmul.f32	s1, s1, s15
d00500a2:	9b05      	ldr	r3, [sp, #20]
d00500a4:	2b00      	cmp	r3, #0
d00500a6:	d05e      	beq.n	d0050166 <fillTriangleDitherBayerT+0xa92>
d00500a8:	f000 0403 	and.w	r4, r0, #3
d00500ac:	f1ae 0902 	sub.w	r9, lr, #2
d00500b0:	2100      	movs	r1, #0
d00500b2:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d00500b6:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d00500ba:	ee77 7a86 	vadd.f32	s15, s15, s12
d00500be:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00500c2:	ee37 7a20 	vadd.f32	s14, s14, s1
d00500c6:	f104 0a01 	add.w	sl, r4, #1
d00500ca:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00500ce:	ee17 3a90 	vmov	r3, s15
d00500d2:	b29b      	uxth	r3, r3
d00500d4:	459b      	cmp	fp, r3
d00500d6:	d90b      	bls.n	d00500f0 <fillTriangleDitherBayerT+0xa1c>
d00500d8:	f818 b004 	ldrb.w	fp, [r8, r4]
d00500dc:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00500e0:	45e3      	cmp	fp, ip
d00500e2:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00500e6:	db03      	blt.n	d00500f0 <fillTriangleDitherBayerT+0xa1c>
d00500e8:	f8a9 3000 	strh.w	r3, [r9]
d00500ec:	9b01      	ldr	r3, [sp, #4]
d00500ee:	553b      	strb	r3, [r7, r4]
d00500f0:	3101      	adds	r1, #1
d00500f2:	f00a 0403 	and.w	r4, sl, #3
d00500f6:	428a      	cmp	r2, r1
d00500f8:	dcdb      	bgt.n	d00500b2 <fillTriangleDitherBayerT+0x9de>
d00500fa:	9b06      	ldr	r3, [sp, #24]
d00500fc:	2e00      	cmp	r6, #0
d00500fe:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0050102:	4413      	add	r3, r2
d0050104:	bfb8      	it	lt
d0050106:	2102      	movlt	r1, #2
d0050108:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005010c:	bfb8      	it	lt
d005010e:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0050112:	448e      	add	lr, r1
d0050114:	441f      	add	r7, r3
d0050116:	ee07 2a90 	vmov	s15, r2
d005011a:	4410      	add	r0, r2
d005011c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050120:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0050124:	eea7 3a81 	vfma.f32	s6, s15, s2
d0050128:	4285      	cmp	r5, r0
d005012a:	da8c      	bge.n	d0050046 <fillTriangleDitherBayerT+0x972>
d005012c:	e5ce      	b.n	d004fccc <fillTriangleDitherBayerT+0x5f8>
d005012e:	ee07 2a90 	vmov	s15, r2
d0050132:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0050136:	eb0e 0e42 	add.w	lr, lr, r2, lsl #1
d005013a:	4410      	add	r0, r2
d005013c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050140:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0050144:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0050148:	eea7 3a81 	vfma.f32	s6, s15, s2
d005014c:	e7ec      	b.n	d0050128 <fillTriangleDitherBayerT+0xa54>
d005014e:	9b05      	ldr	r3, [sp, #20]
d0050150:	f000 0403 	and.w	r4, r0, #3
d0050154:	2b00      	cmp	r3, #0
d0050156:	d042      	beq.n	d00501de <fillTriangleDitherBayerT+0xb0a>
d0050158:	2e00      	cmp	r6, #0
d005015a:	d1dc      	bne.n	d0050116 <fillTriangleDitherBayerT+0xa42>
d005015c:	0093      	lsls	r3, r2, #2
d005015e:	eef0 0a66 	vmov.f32	s1, s13
d0050162:	9306      	str	r3, [sp, #24]
d0050164:	e7a2      	b.n	d00500ac <fillTriangleDitherBayerT+0x9d8>
d0050166:	f000 0403 	and.w	r4, r0, #3
d005016a:	f1ae 0902 	sub.w	r9, lr, #2
d005016e:	2100      	movs	r1, #0
d0050170:	9507      	str	r5, [sp, #28]
d0050172:	9608      	str	r6, [sp, #32]
d0050174:	9009      	str	r0, [sp, #36]	; 0x24
d0050176:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d005017a:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d005017e:	ee77 7a86 	vadd.f32	s15, s15, s12
d0050182:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0050186:	ee37 7a20 	vadd.f32	s14, s14, s1
d005018a:	f104 0a01 	add.w	sl, r4, #1
d005018e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0050192:	ee17 3a90 	vmov	r3, s15
d0050196:	b29b      	uxth	r3, r3
d0050198:	459b      	cmp	fp, r3
d005019a:	d912      	bls.n	d00501c2 <fillTriangleDitherBayerT+0xaee>
d005019c:	f818 b004 	ldrb.w	fp, [r8, r4]
d00501a0:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00501a4:	45e3      	cmp	fp, ip
d00501a6:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00501aa:	db0a      	blt.n	d00501c2 <fillTriangleDitherBayerT+0xaee>
d00501ac:	9801      	ldr	r0, [sp, #4]
d00501ae:	f8a9 3000 	strh.w	r3, [r9]
d00501b2:	4605      	mov	r5, r0
d00501b4:	9803      	ldr	r0, [sp, #12]
d00501b6:	4606      	mov	r6, r0
d00501b8:	9804      	ldr	r0, [sp, #16]
d00501ba:	4583      	cmp	fp, r0
d00501bc:	bfb8      	it	lt
d00501be:	4635      	movlt	r5, r6
d00501c0:	553d      	strb	r5, [r7, r4]
d00501c2:	3101      	adds	r1, #1
d00501c4:	f00a 0403 	and.w	r4, sl, #3
d00501c8:	428a      	cmp	r2, r1
d00501ca:	dcd4      	bgt.n	d0050176 <fillTriangleDitherBayerT+0xaa2>
d00501cc:	9d07      	ldr	r5, [sp, #28]
d00501ce:	9e08      	ldr	r6, [sp, #32]
d00501d0:	9809      	ldr	r0, [sp, #36]	; 0x24
d00501d2:	e792      	b.n	d00500fa <fillTriangleDitherBayerT+0xa26>
d00501d4:	0093      	lsls	r3, r2, #2
d00501d6:	eef0 0a66 	vmov.f32	s1, s13
d00501da:	9306      	str	r3, [sp, #24]
d00501dc:	e761      	b.n	d00500a2 <fillTriangleDitherBayerT+0x9ce>
d00501de:	2e00      	cmp	r6, #0
d00501e0:	db99      	blt.n	d0050116 <fillTriangleDitherBayerT+0xa42>
d00501e2:	0093      	lsls	r3, r2, #2
d00501e4:	eef0 0a66 	vmov.f32	s1, s13
d00501e8:	9306      	str	r3, [sp, #24]
d00501ea:	e7be      	b.n	d005016a <fillTriangleDitherBayerT+0xa96>
d00501ec:	f000 0403 	and.w	r4, r0, #3
d00501f0:	e6b6      	b.n	d004ff60 <fillTriangleDitherBayerT+0x88c>
d00501f2:	eef0 6a46 	vmov.f32	s13, s12
d00501f6:	f000 0403 	and.w	r4, r0, #3
d00501fa:	009e      	lsls	r6, r3, #2
d00501fc:	e6b0      	b.n	d004ff60 <fillTriangleDitherBayerT+0x88c>
d00501fe:	2310      	movs	r3, #16
d0050200:	9301      	str	r3, [sp, #4]
d0050202:	2310      	movs	r3, #16
d0050204:	9303      	str	r3, [sp, #12]
d0050206:	f7ff bacd 	b.w	d004f7a4 <fillTriangleDitherBayerT+0xd0>
d005020a:	eeb0 aa46 	vmov.f32	s20, s12
d005020e:	eef0 1a46 	vmov.f32	s3, s12
d0050212:	e5d4      	b.n	d004fdbe <fillTriangleDitherBayerT+0x6ea>
d0050214:	eeb0 1a66 	vmov.f32	s2, s13
d0050218:	eef0 2a66 	vmov.f32	s5, s13
d005021c:	e6f9      	b.n	d0050012 <fillTriangleDitherBayerT+0x93e>
d005021e:	bf00      	nop
d0050220:	d00f4730 	.word	0xd00f4730
d0050224:	d0057440 	.word	0xd0057440
d0050228:	d0057460 	.word	0xd0057460

d005022c <vec3Add>:
d005022c:	ee30 0a21 	vadd.f32	s0, s0, s3
d0050230:	b08e      	sub	sp, #56	; 0x38
d0050232:	ee70 0a82 	vadd.f32	s1, s1, s4
d0050236:	ee31 1a22 	vadd.f32	s2, s2, s5
d005023a:	b00e      	add	sp, #56	; 0x38
d005023c:	4770      	bx	lr
d005023e:	bf00      	nop

d0050240 <vec3Scale>:
d0050240:	ee20 0a21 	vmul.f32	s0, s0, s3
d0050244:	b08c      	sub	sp, #48	; 0x30
d0050246:	ee61 0aa0 	vmul.f32	s1, s3, s1
d005024a:	ee21 1a81 	vmul.f32	s2, s3, s2
d005024e:	b00c      	add	sp, #48	; 0x30
d0050250:	4770      	bx	lr
d0050252:	bf00      	nop

d0050254 <vec3Dot>:
d0050254:	ee20 2a82 	vmul.f32	s4, s1, s4
d0050258:	b086      	sub	sp, #24
d005025a:	eea0 2a21 	vfma.f32	s4, s0, s3
d005025e:	eea1 2a22 	vfma.f32	s4, s2, s5
d0050262:	eeb0 0a42 	vmov.f32	s0, s4
d0050266:	b006      	add	sp, #24
d0050268:	4770      	bx	lr
d005026a:	bf00      	nop

d005026c <vec3Cross>:
d005026c:	eeb0 7a60 	vmov.f32	s14, s1
d0050270:	b08e      	sub	sp, #56	; 0x38
d0050272:	eef0 7a40 	vmov.f32	s15, s0
d0050276:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d005027a:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d005027e:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0050282:	eee1 0a21 	vfma.f32	s1, s2, s3
d0050286:	eee7 6a82 	vfma.f32	s13, s15, s4
d005028a:	eea7 0a22 	vfma.f32	s0, s14, s5
d005028e:	eeb0 1a66 	vmov.f32	s2, s13
d0050292:	b00e      	add	sp, #56	; 0x38
d0050294:	4770      	bx	lr
d0050296:	bf00      	nop

d0050298 <vec3Normalize>:
d0050298:	ee60 7aa0 	vmul.f32	s15, s1, s1
d005029c:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0050328 <vec3Normalize+0x90>
d00502a0:	b08c      	sub	sp, #48	; 0x30
d00502a2:	eee0 7a00 	vfma.f32	s15, s0, s0
d00502a6:	eee1 7a01 	vfma.f32	s15, s2, s2
d00502aa:	eef4 7ac7 	vcmpe.f32	s15, s14
d00502ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502b2:	d934      	bls.n	d005031e <vec3Normalize+0x86>
d00502b4:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d005032c <vec3Normalize+0x94>
d00502b8:	eef4 7a47 	vcmp.f32	s15, s14
d00502bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502c0:	dd06      	ble.n	d00502d0 <vec3Normalize+0x38>
d00502c2:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0050330 <vec3Normalize+0x98>
d00502c6:	eef4 7a47 	vcmp.f32	s15, s14
d00502ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502ce:	d418      	bmi.n	d0050302 <vec3Normalize+0x6a>
d00502d0:	ee17 2a90 	vmov	r2, s15
d00502d4:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00502d8:	4b16      	ldr	r3, [pc, #88]	; (d0050334 <vec3Normalize+0x9c>)
d00502da:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d00502de:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00502e2:	ee67 7a86 	vmul.f32	s15, s15, s12
d00502e6:	ee06 3a90 	vmov	s13, r3
d00502ea:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00502ee:	eea6 7ae7 	vfms.f32	s14, s13, s15
d00502f2:	ee67 7a26 	vmul.f32	s15, s14, s13
d00502f6:	ee27 0a80 	vmul.f32	s0, s15, s0
d00502fa:	ee67 0aa0 	vmul.f32	s1, s15, s1
d00502fe:	ee27 1a81 	vmul.f32	s2, s15, s2
d0050302:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0050306:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d005030a:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d005030e:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0050312:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0050316:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d005031a:	b00c      	add	sp, #48	; 0x30
d005031c:	4770      	bx	lr
d005031e:	2300      	movs	r3, #0
d0050320:	9309      	str	r3, [sp, #36]	; 0x24
d0050322:	930a      	str	r3, [sp, #40]	; 0x28
d0050324:	930b      	str	r3, [sp, #44]	; 0x2c
d0050326:	e7f2      	b.n	d005030e <vec3Normalize+0x76>
d0050328:	358637bd 	.word	0x358637bd
d005032c:	3f7fbe77 	.word	0x3f7fbe77
d0050330:	3f8020c5 	.word	0x3f8020c5
d0050334:	5f3759df 	.word	0x5f3759df

d0050338 <rotateAroundAxis>:
d0050338:	ee62 7a02 	vmul.f32	s15, s4, s4
d005033c:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0050484 <rotateAroundAxis+0x14c>
d0050340:	b500      	push	{lr}
d0050342:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0050346:	ed2d 8b0c 	vpush	{d8-d13}
d005034a:	eef0 ca40 	vmov.f32	s25, s0
d005034e:	b08f      	sub	sp, #60	; 0x3c
d0050350:	eeb0 ca60 	vmov.f32	s24, s1
d0050354:	eef0 ba41 	vmov.f32	s23, s2
d0050358:	eee2 7aa2 	vfma.f32	s15, s5, s5
d005035c:	eeb0 da43 	vmov.f32	s26, s6
d0050360:	eef4 7ac7 	vcmpe.f32	s15, s14
d0050364:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050368:	d97c      	bls.n	d0050464 <rotateAroundAxis+0x12c>
d005036a:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0050488 <rotateAroundAxis+0x150>
d005036e:	eef4 7a47 	vcmp.f32	s15, s14
d0050372:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050376:	dd55      	ble.n	d0050424 <rotateAroundAxis+0xec>
d0050378:	ed9f 7a44 	vldr	s14, [pc, #272]	; d005048c <rotateAroundAxis+0x154>
d005037c:	eef4 7a47 	vcmp.f32	s15, s14
d0050380:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050384:	d54e      	bpl.n	d0050424 <rotateAroundAxis+0xec>
d0050386:	eef0 da42 	vmov.f32	s27, s4
d005038a:	eeb0 9a61 	vmov.f32	s18, s3
d005038e:	eeb0 8a62 	vmov.f32	s16, s5
d0050392:	ee60 8a82 	vmul.f32	s17, s1, s4
d0050396:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d005039a:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d005039e:	eeec 8a89 	vfma.f32	s17, s25, s18
d00503a2:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d00503a6:	eeeb 5aad 	vfma.f32	s11, s23, s27
d00503aa:	eeac 6a88 	vfma.f32	s12, s25, s16
d00503ae:	eeec 7a09 	vfma.f32	s15, s24, s18
d00503b2:	eeeb 8a88 	vfma.f32	s17, s23, s16
d00503b6:	eeb0 ba65 	vmov.f32	s22, s11
d00503ba:	eeb0 aa46 	vmov.f32	s20, s12
d00503be:	eef0 aa67 	vmov.f32	s21, s15
d00503c2:	eeb0 0a4d 	vmov.f32	s0, s26
d00503c6:	f006 f853 	bl	d0056470 <cosf>
d00503ca:	eef0 9a40 	vmov.f32	s19, s0
d00503ce:	eeb0 0a4d 	vmov.f32	s0, s26
d00503d2:	f006 fa31 	bl	d0056838 <sinf>
d00503d6:	ee60 5a0b 	vmul.f32	s11, s0, s22
d00503da:	ee20 6a0a 	vmul.f32	s12, s0, s20
d00503de:	ee60 7a2a 	vmul.f32	s15, s0, s21
d00503e2:	eee9 5aac 	vfma.f32	s11, s19, s25
d00503e6:	eea9 6a8c 	vfma.f32	s12, s19, s24
d00503ea:	eee9 7aab 	vfma.f32	s15, s19, s23
d00503ee:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00503f2:	ee29 9a28 	vmul.f32	s18, s18, s17
d00503f6:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d00503fa:	ee76 9ae9 	vsub.f32	s19, s13, s19
d00503fe:	ee28 8a28 	vmul.f32	s16, s16, s17
d0050402:	eeb0 0a65 	vmov.f32	s0, s11
d0050406:	eef0 0a46 	vmov.f32	s1, s12
d005040a:	eeb0 1a67 	vmov.f32	s2, s15
d005040e:	eea9 0a89 	vfma.f32	s0, s19, s18
d0050412:	eee9 0a87 	vfma.f32	s1, s19, s14
d0050416:	eea9 1a88 	vfma.f32	s2, s19, s16
d005041a:	b00f      	add	sp, #60	; 0x3c
d005041c:	ecbd 8b0c 	vpop	{d8-d13}
d0050420:	f85d fb04 	ldr.w	pc, [sp], #4
d0050424:	ee17 2a90 	vmov	r2, s15
d0050428:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005042c:	4b18      	ldr	r3, [pc, #96]	; (d0050490 <rotateAroundAxis+0x158>)
d005042e:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0050432:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0050436:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005043a:	ee07 3a10 	vmov	s14, r3
d005043e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0050442:	eea7 8a67 	vfms.f32	s16, s14, s15
d0050446:	ee27 8a08 	vmul.f32	s16, s14, s16
d005044a:	ee62 da08 	vmul.f32	s27, s4, s16
d005044e:	ee21 9a88 	vmul.f32	s18, s3, s16
d0050452:	ee22 8a88 	vmul.f32	s16, s5, s16
d0050456:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d005045a:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d005045e:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0050462:	e79c      	b.n	d005039e <rotateAroundAxis+0x66>
d0050464:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0050494 <rotateAroundAxis+0x15c>
d0050468:	eef0 aa68 	vmov.f32	s21, s17
d005046c:	eeb0 aa68 	vmov.f32	s20, s17
d0050470:	eeb0 ba68 	vmov.f32	s22, s17
d0050474:	eeb0 8a68 	vmov.f32	s16, s17
d0050478:	eef0 da68 	vmov.f32	s27, s17
d005047c:	eeb0 9a68 	vmov.f32	s18, s17
d0050480:	e79f      	b.n	d00503c2 <rotateAroundAxis+0x8a>
d0050482:	bf00      	nop
d0050484:	358637bd 	.word	0x358637bd
d0050488:	3f7fbe77 	.word	0x3f7fbe77
d005048c:	3f8020c5 	.word	0x3f8020c5
d0050490:	5f3759df 	.word	0x5f3759df
d0050494:	00000000 	.word	0x00000000

d0050498 <vec3>:
d0050498:	b088      	sub	sp, #32
d005049a:	b008      	add	sp, #32
d005049c:	4770      	bx	lr
d005049e:	bf00      	nop

d00504a0 <degrees>:
d00504a0:	eddf 7a02 	vldr	s15, [pc, #8]	; d00504ac <degrees+0xc>
d00504a4:	ee20 0a27 	vmul.f32	s0, s0, s15
d00504a8:	4770      	bx	lr
d00504aa:	bf00      	nop
d00504ac:	3c8efa35 	.word	0x3c8efa35

d00504b0 <powfxt>:
d00504b0:	eef5 0a40 	vcmp.f32	s1, #0.0
d00504b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00504b8:	d040      	beq.n	d005053c <powfxt+0x8c>
d00504ba:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00504be:	eef0 7a40 	vmov.f32	s15, s0
d00504c2:	eef4 0a47 	vcmp.f32	s1, s14
d00504c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00504ca:	d034      	beq.n	d0050536 <powfxt+0x86>
d00504cc:	eeb4 0a47 	vcmp.f32	s0, s14
d00504d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00504d4:	d02f      	beq.n	d0050536 <powfxt+0x86>
d00504d6:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00504da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00504de:	d030      	beq.n	d0050542 <powfxt+0x92>
d00504e0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00504e4:	eef4 0a66 	vcmp.f32	s1, s13
d00504e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00504ec:	d042      	beq.n	d0050574 <powfxt+0xc4>
d00504ee:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d00504f2:	eef4 0a66 	vcmp.f32	s1, s13
d00504f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00504fa:	d03e      	beq.n	d005057a <powfxt+0xca>
d00504fc:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0050500:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0050504:	eeb4 6a60 	vcmp.f32	s12, s1
d0050508:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005050c:	d022      	beq.n	d0050554 <powfxt+0xa4>
d005050e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050512:	b500      	push	{lr}
d0050514:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050518:	b083      	sub	sp, #12
d005051a:	edcd 0a01 	vstr	s1, [sp, #4]
d005051e:	d431      	bmi.n	d0050584 <powfxt+0xd4>
d0050520:	f006 f8f8 	bl	d0056714 <logf>
d0050524:	eddd 0a01 	vldr	s1, [sp, #4]
d0050528:	ee20 0a20 	vmul.f32	s0, s0, s1
d005052c:	b003      	add	sp, #12
d005052e:	f85d eb04 	ldr.w	lr, [sp], #4
d0050532:	f006 b879 	b.w	d0056628 <expf>
d0050536:	eeb0 0a67 	vmov.f32	s0, s15
d005053a:	4770      	bx	lr
d005053c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050540:	4770      	bx	lr
d0050542:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0050546:	ed9f 0a15 	vldr	s0, [pc, #84]	; d005059c <powfxt+0xec>
d005054a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005054e:	fe37 0a80 	vselgt.f32	s0, s15, s0
d0050552:	4770      	bx	lr
d0050554:	ee16 3a90 	vmov	r3, s13
d0050558:	2b00      	cmp	r3, #0
d005055a:	db18      	blt.n	d005058e <powfxt+0xde>
d005055c:	d01b      	beq.n	d0050596 <powfxt+0xe6>
d005055e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050562:	07da      	lsls	r2, r3, #31
d0050564:	bf48      	it	mi
d0050566:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d005056a:	085b      	lsrs	r3, r3, #1
d005056c:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0050570:	d1f7      	bne.n	d0050562 <powfxt+0xb2>
d0050572:	4770      	bx	lr
d0050574:	eeb1 0ae7 	vsqrt.f32	s0, s15
d0050578:	4770      	bx	lr
d005057a:	eef1 6ac0 	vsqrt.f32	s13, s0
d005057e:	ee87 0a26 	vdiv.f32	s0, s14, s13
d0050582:	4770      	bx	lr
d0050584:	ed9f 0a06 	vldr	s0, [pc, #24]	; d00505a0 <powfxt+0xf0>
d0050588:	b003      	add	sp, #12
d005058a:	f85d fb04 	ldr.w	pc, [sp], #4
d005058e:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0050592:	425b      	negs	r3, r3
d0050594:	e7e3      	b.n	d005055e <powfxt+0xae>
d0050596:	eeb0 0a47 	vmov.f32	s0, s14
d005059a:	4770      	bx	lr
d005059c:	7f800000 	.word	0x7f800000
d00505a0:	7fc00000 	.word	0x7fc00000

d00505a4 <worldClear>:
d00505a4:	b508      	push	{r3, lr}
d00505a6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
d00505aa:	2100      	movs	r1, #0
d00505ac:	4806      	ldr	r0, [pc, #24]	; (d00505c8 <worldClear+0x24>)
d00505ae:	f004 fe27 	bl	d0055200 <memset>
d00505b2:	f001 fe17 	bl	d00521e4 <lightsClear>
d00505b6:	f003 ff57 	bl	d0054468 <sb3dParticlesClear>
d00505ba:	f002 fb93 	bl	d0052ce4 <initClipScratch>
d00505be:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d00505c2:	f004 b81b 	b.w	d00545fc <sb3dWorldAudioDefaults>
d00505c6:	bf00      	nop
d00505c8:	d00f4740 	.word	0xd00f4740

d00505cc <cameraNormalize>:
d00505cc:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d00505d0:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d00505d4:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00505d8:	b510      	push	{r4, lr}
d00505da:	4604      	mov	r4, r0
d00505dc:	f7ff fe5c 	bl	d0050298 <vec3Normalize>
d00505e0:	eeb0 7a60 	vmov.f32	s14, s1
d00505e4:	eef0 7a41 	vmov.f32	s15, s2
d00505e8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00505ec:	ed94 0a06 	vldr	s0, [r4, #24]
d00505f0:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d00505f4:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d00505f8:	edd4 0a07 	vldr	s1, [r4, #28]
d00505fc:	ed94 1a08 	vldr	s2, [r4, #32]
d0050600:	f7ff fe4a 	bl	d0050298 <vec3Normalize>
d0050604:	eef0 1a40 	vmov.f32	s3, s0
d0050608:	eeb0 2a60 	vmov.f32	s4, s1
d005060c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050610:	eef0 2a41 	vmov.f32	s5, s2
d0050614:	edc4 0a07 	vstr	s1, [r4, #28]
d0050618:	ed84 1a08 	vstr	s2, [r4, #32]
d005061c:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050620:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050624:	edc4 1a06 	vstr	s3, [r4, #24]
d0050628:	f7ff fe20 	bl	d005026c <vec3Cross>
d005062c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050630:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050634:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050638:	f7ff fe2e 	bl	d0050298 <vec3Normalize>
d005063c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050640:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050644:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050648:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005064c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050650:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050654:	f7ff fe0a 	bl	d005026c <vec3Cross>
d0050658:	ed84 0a06 	vstr	s0, [r4, #24]
d005065c:	edc4 0a07 	vstr	s1, [r4, #28]
d0050660:	ed84 1a08 	vstr	s2, [r4, #32]
d0050664:	f7ff fe18 	bl	d0050298 <vec3Normalize>
d0050668:	ed84 0a06 	vstr	s0, [r4, #24]
d005066c:	edc4 0a07 	vstr	s1, [r4, #28]
d0050670:	ed84 1a08 	vstr	s2, [r4, #32]
d0050674:	bd10      	pop	{r4, pc}
d0050676:	bf00      	nop

d0050678 <cameraCreate>:
d0050678:	b510      	push	{r4, lr}
d005067a:	4604      	mov	r4, r0
d005067c:	2260      	movs	r2, #96	; 0x60
d005067e:	4902      	ldr	r1, [pc, #8]	; (d0050688 <cameraCreate+0x10>)
d0050680:	f004 fdb0 	bl	d00551e4 <memcpy>
d0050684:	4620      	mov	r0, r4
d0050686:	bd10      	pop	{r4, pc}
d0050688:	d0057540 	.word	0xd0057540

d005068c <cameraSetPosition>:
d005068c:	b084      	sub	sp, #16
d005068e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0050692:	edcd 0a02 	vstr	s1, [sp, #8]
d0050696:	ed8d 1a03 	vstr	s2, [sp, #12]
d005069a:	b128      	cbz	r0, d00506a8 <cameraSetPosition+0x1c>
d005069c:	aa04      	add	r2, sp, #16
d005069e:	4603      	mov	r3, r0
d00506a0:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00506a4:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00506a8:	b004      	add	sp, #16
d00506aa:	4770      	bx	lr

d00506ac <cameraRotate>:
d00506ac:	2800      	cmp	r0, #0
d00506ae:	f000 80a8 	beq.w	d0050802 <cameraRotate+0x156>
d00506b2:	b510      	push	{r4, lr}
d00506b4:	ed2d 8b04 	vpush	{d8-d9}
d00506b8:	edc0 0a04 	vstr	s1, [r0, #16]
d00506bc:	b084      	sub	sp, #16
d00506be:	ed80 1a05 	vstr	s2, [r0, #20]
d00506c2:	eef0 8a40 	vmov.f32	s17, s0
d00506c6:	ed80 0a03 	vstr	s0, [r0, #12]
d00506ca:	4604      	mov	r4, r0
d00506cc:	eeb0 8a60 	vmov.f32	s16, s1
d00506d0:	f005 fece 	bl	d0056470 <cosf>
d00506d4:	eeb0 1a40 	vmov.f32	s2, s0
d00506d8:	eeb0 0a68 	vmov.f32	s0, s17
d00506dc:	eef0 8a41 	vmov.f32	s17, s2
d00506e0:	f006 f8aa 	bl	d0056838 <sinf>
d00506e4:	eeb0 9a40 	vmov.f32	s18, s0
d00506e8:	eeb0 0a48 	vmov.f32	s0, s16
d00506ec:	f005 fec0 	bl	d0056470 <cosf>
d00506f0:	eeb0 1a40 	vmov.f32	s2, s0
d00506f4:	eeb0 0a48 	vmov.f32	s0, s16
d00506f8:	eeb0 8a41 	vmov.f32	s16, s2
d00506fc:	f006 f89c 	bl	d0056838 <sinf>
d0050700:	eef0 0a40 	vmov.f32	s1, s0
d0050704:	ee28 1a88 	vmul.f32	s2, s17, s16
d0050708:	ee29 9a08 	vmul.f32	s18, s18, s16
d005070c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050710:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050714:	eeb0 0a49 	vmov.f32	s0, s18
d0050718:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d005071c:	f7ff fdbc 	bl	d0050298 <vec3Normalize>
d0050720:	eef0 7a41 	vmov.f32	s15, s2
d0050724:	eeb0 7a60 	vmov.f32	s14, s1
d0050728:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d005085c <cameraRotate+0x1b0>
d005072c:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050730:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050734:	eeb0 0a41 	vmov.f32	s0, s2
d0050738:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d005073c:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0050740:	f7ff feaa 	bl	d0050498 <vec3>
d0050744:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050748:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d005074c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050750:	f7ff fd8c 	bl	d005026c <vec3Cross>
d0050754:	eef0 1a40 	vmov.f32	s3, s0
d0050758:	eeb0 2a60 	vmov.f32	s4, s1
d005075c:	ed84 0a06 	vstr	s0, [r4, #24]
d0050760:	eef0 2a41 	vmov.f32	s5, s2
d0050764:	edc4 0a07 	vstr	s1, [r4, #28]
d0050768:	ed84 1a08 	vstr	s2, [r4, #32]
d005076c:	f7ff fd72 	bl	d0050254 <vec3Dot>
d0050770:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0050860 <cameraRotate+0x1b4>
d0050774:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050778:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005077c:	d438      	bmi.n	d00507f0 <cameraRotate+0x144>
d005077e:	ed94 0a06 	vldr	s0, [r4, #24]
d0050782:	edd4 0a07 	vldr	s1, [r4, #28]
d0050786:	ed94 1a08 	vldr	s2, [r4, #32]
d005078a:	f7ff fd85 	bl	d0050298 <vec3Normalize>
d005078e:	eef0 1a40 	vmov.f32	s3, s0
d0050792:	ed84 0a06 	vstr	s0, [r4, #24]
d0050796:	eeb0 2a60 	vmov.f32	s4, s1
d005079a:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005079e:	eef0 2a41 	vmov.f32	s5, s2
d00507a2:	edc4 0a07 	vstr	s1, [r4, #28]
d00507a6:	ed84 1a08 	vstr	s2, [r4, #32]
d00507aa:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00507ae:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00507b2:	f7ff fd5b 	bl	d005026c <vec3Cross>
d00507b6:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00507ba:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00507be:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00507c2:	f7ff fd69 	bl	d0050298 <vec3Normalize>
d00507c6:	ed94 3a05 	vldr	s6, [r4, #20]
d00507ca:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00507ce:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00507d2:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00507d6:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00507da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00507de:	d111      	bne.n	d0050804 <cameraRotate+0x158>
d00507e0:	4620      	mov	r0, r4
d00507e2:	b004      	add	sp, #16
d00507e4:	ecbd 8b04 	vpop	{d8-d9}
d00507e8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00507ec:	f7ff beee 	b.w	d00505cc <cameraNormalize>
d00507f0:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d005085c <cameraRotate+0x1b0>
d00507f4:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00507f8:	eef0 0a41 	vmov.f32	s1, s2
d00507fc:	f7ff fe4c 	bl	d0050498 <vec3>
d0050800:	e7c5      	b.n	d005078e <cameraRotate+0xe2>
d0050802:	4770      	bx	lr
d0050804:	ed94 0a06 	vldr	s0, [r4, #24]
d0050808:	edd4 0a07 	vldr	s1, [r4, #28]
d005080c:	ed94 1a08 	vldr	s2, [r4, #32]
d0050810:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050814:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050818:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005081c:	f7ff fd8c 	bl	d0050338 <rotateAroundAxis>
d0050820:	ed84 0a06 	vstr	s0, [r4, #24]
d0050824:	edc4 0a07 	vstr	s1, [r4, #28]
d0050828:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d005082c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050830:	ed84 1a08 	vstr	s2, [r4, #32]
d0050834:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050838:	ed94 3a05 	vldr	s6, [r4, #20]
d005083c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050840:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050844:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050848:	f7ff fd76 	bl	d0050338 <rotateAroundAxis>
d005084c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050850:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050854:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050858:	e7c2      	b.n	d00507e0 <cameraRotate+0x134>
d005085a:	bf00      	nop
d005085c:	00000000 	.word	0x00000000
d0050860:	322bcc77 	.word	0x322bcc77

d0050864 <cameraGetRotation>:
d0050864:	b510      	push	{r4, lr}
d0050866:	ed2d 8b04 	vpush	{d8-d9}
d005086a:	b08e      	sub	sp, #56	; 0x38
d005086c:	b100      	cbz	r0, d0050870 <cameraGetRotation+0xc>
d005086e:	b169      	cbz	r1, d005088c <cameraGetRotation+0x28>
d0050870:	2300      	movs	r3, #0
d0050872:	930b      	str	r3, [sp, #44]	; 0x2c
d0050874:	930c      	str	r3, [sp, #48]	; 0x30
d0050876:	930d      	str	r3, [sp, #52]	; 0x34
d0050878:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d005087c:	eddd 0a0c 	vldr	s1, [sp, #48]	; 0x30
d0050880:	ed9d 1a0d 	vldr	s2, [sp, #52]	; 0x34
d0050884:	b00e      	add	sp, #56	; 0x38
d0050886:	ecbd 8b04 	vpop	{d8-d9}
d005088a:	bd10      	pop	{r4, pc}
d005088c:	edd0 0a0e 	vldr	s1, [r0, #56]	; 0x38
d0050890:	4604      	mov	r4, r0
d0050892:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0050896:	ee60 7aa0 	vmul.f32	s15, s1, s1
d005089a:	eee0 7a00 	vfma.f32	s15, s0, s0
d005089e:	eeb1 8ae7 	vsqrt.f32	s16, s15
d00508a2:	f006 f869 	bl	d0056978 <atan2f>
d00508a6:	eef0 8a40 	vmov.f32	s17, s0
d00508aa:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00508ae:	eef0 0a48 	vmov.f32	s1, s16
d00508b2:	f006 f861 	bl	d0056978 <atan2f>
d00508b6:	ed9f 1a41 	vldr	s2, [pc, #260]	; d00509bc <cameraGetRotation+0x158>
d00508ba:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00508be:	eeb0 8a40 	vmov.f32	s16, s0
d00508c2:	eeb0 0a41 	vmov.f32	s0, s2
d00508c6:	f7ff fde7 	bl	d0050498 <vec3>
d00508ca:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00508ce:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00508d2:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00508d6:	f7ff fcc9 	bl	d005026c <vec3Cross>
d00508da:	eef0 1a40 	vmov.f32	s3, s0
d00508de:	eeb0 2a60 	vmov.f32	s4, s1
d00508e2:	ed8d 0a05 	vstr	s0, [sp, #20]
d00508e6:	eef0 2a41 	vmov.f32	s5, s2
d00508ea:	edcd 0a06 	vstr	s1, [sp, #24]
d00508ee:	ed8d 1a07 	vstr	s2, [sp, #28]
d00508f2:	f7ff fcaf 	bl	d0050254 <vec3Dot>
d00508f6:	eddf 7a32 	vldr	s15, [pc, #200]	; d00509c0 <cameraGetRotation+0x15c>
d00508fa:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00508fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050902:	d552      	bpl.n	d00509aa <cameraGetRotation+0x146>
d0050904:	ed9f 1a2d 	vldr	s2, [pc, #180]	; d00509bc <cameraGetRotation+0x158>
d0050908:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005090c:	eef0 0a41 	vmov.f32	s1, s2
d0050910:	f7ff fdc2 	bl	d0050498 <vec3>
d0050914:	eef0 1a40 	vmov.f32	s3, s0
d0050918:	ed8d 0a05 	vstr	s0, [sp, #20]
d005091c:	eeb0 2a60 	vmov.f32	s4, s1
d0050920:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050924:	eef0 2a41 	vmov.f32	s5, s2
d0050928:	edcd 0a06 	vstr	s1, [sp, #24]
d005092c:	ed8d 1a07 	vstr	s2, [sp, #28]
d0050930:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050934:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050938:	f7ff fc98 	bl	d005026c <vec3Cross>
d005093c:	f7ff fcac 	bl	d0050298 <vec3Normalize>
d0050940:	eef0 6a40 	vmov.f32	s13, s0
d0050944:	eeb0 7a60 	vmov.f32	s14, s1
d0050948:	eddd 1a05 	vldr	s3, [sp, #20]
d005094c:	eef0 7a41 	vmov.f32	s15, s2
d0050950:	ed9d 2a06 	vldr	s4, [sp, #24]
d0050954:	eddd 2a07 	vldr	s5, [sp, #28]
d0050958:	edd4 0a07 	vldr	s1, [r4, #28]
d005095c:	ed94 1a08 	vldr	s2, [r4, #32]
d0050960:	ed94 0a06 	vldr	s0, [r4, #24]
d0050964:	edcd 6a08 	vstr	s13, [sp, #32]
d0050968:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d005096c:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0050970:	f7ff fc70 	bl	d0050254 <vec3Dot>
d0050974:	eeb0 9a40 	vmov.f32	s18, s0
d0050978:	eddd 1a08 	vldr	s3, [sp, #32]
d005097c:	ed9d 2a09 	vldr	s4, [sp, #36]	; 0x24
d0050980:	eddd 2a0a 	vldr	s5, [sp, #40]	; 0x28
d0050984:	edd4 0a07 	vldr	s1, [r4, #28]
d0050988:	ed94 1a08 	vldr	s2, [r4, #32]
d005098c:	ed94 0a06 	vldr	s0, [r4, #24]
d0050990:	f7ff fc60 	bl	d0050254 <vec3Dot>
d0050994:	eef0 0a49 	vmov.f32	s1, s18
d0050998:	f005 ffee 	bl	d0056978 <atan2f>
d005099c:	edcd 8a0b 	vstr	s17, [sp, #44]	; 0x2c
d00509a0:	ed8d 8a0c 	vstr	s16, [sp, #48]	; 0x30
d00509a4:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d00509a8:	e766      	b.n	d0050878 <cameraGetRotation+0x14>
d00509aa:	ed9d 0a05 	vldr	s0, [sp, #20]
d00509ae:	eddd 0a06 	vldr	s1, [sp, #24]
d00509b2:	ed9d 1a07 	vldr	s2, [sp, #28]
d00509b6:	f7ff fc6f 	bl	d0050298 <vec3Normalize>
d00509ba:	e7ab      	b.n	d0050914 <cameraGetRotation+0xb0>
d00509bc:	00000000 	.word	0x00000000
d00509c0:	322bcc77 	.word	0x322bcc77

d00509c4 <cameraTurn>:
d00509c4:	2800      	cmp	r0, #0
d00509c6:	f000 8144 	beq.w	d0050c52 <cameraTurn+0x28e>
d00509ca:	b570      	push	{r4, r5, r6, lr}
d00509cc:	4604      	mov	r4, r0
d00509ce:	ed2d 8b04 	vpush	{d8-d9}
d00509d2:	eef0 8a40 	vmov.f32	s17, s0
d00509d6:	b08a      	sub	sp, #40	; 0x28
d00509d8:	eeb0 9a60 	vmov.f32	s18, s1
d00509dc:	eeb0 8a41 	vmov.f32	s16, s2
d00509e0:	bb69      	cbnz	r1, d0050a3e <cameraTurn+0x7a>
d00509e2:	f100 0318 	add.w	r3, r0, #24
d00509e6:	ae01      	add	r6, sp, #4
d00509e8:	f100 0524 	add.w	r5, r0, #36	; 0x24
d00509ec:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00509f0:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00509f4:	f104 0330 	add.w	r3, r4, #48	; 0x30
d00509f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00509fc:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050a00:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0050a04:	ae04      	add	r6, sp, #16
d0050a06:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050a0a:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050a0e:	ab0a      	add	r3, sp, #40	; 0x28
d0050a10:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0050a14:	d14a      	bne.n	d0050aac <cameraTurn+0xe8>
d0050a16:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050a1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a1e:	f040 808d 	bne.w	d0050b3c <cameraTurn+0x178>
d0050a22:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050a26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a2a:	f040 80cf 	bne.w	d0050bcc <cameraTurn+0x208>
d0050a2e:	4620      	mov	r0, r4
d0050a30:	b00a      	add	sp, #40	; 0x28
d0050a32:	ecbd 8b04 	vpop	{d8-d9}
d0050a36:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050a3a:	f7ff bdc7 	b.w	d00505cc <cameraNormalize>
d0050a3e:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0050c54 <cameraTurn+0x290>
d0050a42:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050a46:	eef0 0a41 	vmov.f32	s1, s2
d0050a4a:	f7ff fd25 	bl	d0050498 <vec3>
d0050a4e:	eef0 7a41 	vmov.f32	s15, s2
d0050a52:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0050c54 <cameraTurn+0x290>
d0050a56:	eeb0 7a60 	vmov.f32	s14, s1
d0050a5a:	ed8d 0a01 	vstr	s0, [sp, #4]
d0050a5e:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050a62:	edcd 7a03 	vstr	s15, [sp, #12]
d0050a66:	eeb0 0a41 	vmov.f32	s0, s2
d0050a6a:	ed8d 7a02 	vstr	s14, [sp, #8]
d0050a6e:	f7ff fd13 	bl	d0050498 <vec3>
d0050a72:	eeb0 7a60 	vmov.f32	s14, s1
d0050a76:	eddf 0a77 	vldr	s1, [pc, #476]	; d0050c54 <cameraTurn+0x290>
d0050a7a:	eef0 7a41 	vmov.f32	s15, s2
d0050a7e:	ed8d 0a04 	vstr	s0, [sp, #16]
d0050a82:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0050a86:	eeb0 0a60 	vmov.f32	s0, s1
d0050a8a:	ed8d 7a05 	vstr	s14, [sp, #20]
d0050a8e:	edcd 7a06 	vstr	s15, [sp, #24]
d0050a92:	f7ff fd01 	bl	d0050498 <vec3>
d0050a96:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0050a9a:	edcd 0a08 	vstr	s1, [sp, #32]
d0050a9e:	ed8d 0a07 	vstr	s0, [sp, #28]
d0050aa2:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0050aa6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050aaa:	d0b4      	beq.n	d0050a16 <cameraTurn+0x52>
d0050aac:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050ab0:	eeb0 3a49 	vmov.f32	s6, s18
d0050ab4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050ab8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050abc:	eddd 1a04 	vldr	s3, [sp, #16]
d0050ac0:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050ac4:	eddd 2a06 	vldr	s5, [sp, #24]
d0050ac8:	f7ff fc36 	bl	d0050338 <rotateAroundAxis>
d0050acc:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050ad0:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050ad4:	eeb0 3a49 	vmov.f32	s6, s18
d0050ad8:	ed94 0a06 	vldr	s0, [r4, #24]
d0050adc:	edd4 0a07 	vldr	s1, [r4, #28]
d0050ae0:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050ae4:	ed94 1a08 	vldr	s2, [r4, #32]
d0050ae8:	eddd 1a04 	vldr	s3, [sp, #16]
d0050aec:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050af0:	eddd 2a06 	vldr	s5, [sp, #24]
d0050af4:	f7ff fc20 	bl	d0050338 <rotateAroundAxis>
d0050af8:	eeb0 3a49 	vmov.f32	s6, s18
d0050afc:	ed84 0a06 	vstr	s0, [r4, #24]
d0050b00:	edc4 0a07 	vstr	s1, [r4, #28]
d0050b04:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050b08:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050b0c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050b10:	eddd 1a04 	vldr	s3, [sp, #16]
d0050b14:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050b18:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050b1c:	eddd 2a06 	vldr	s5, [sp, #24]
d0050b20:	f7ff fc0a 	bl	d0050338 <rotateAroundAxis>
d0050b24:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050b28:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050b2c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050b30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b34:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050b38:	f43f af73 	beq.w	d0050a22 <cameraTurn+0x5e>
d0050b3c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050b40:	eeb0 3a68 	vmov.f32	s6, s17
d0050b44:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050b48:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050b4c:	eddd 1a01 	vldr	s3, [sp, #4]
d0050b50:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050b54:	eddd 2a03 	vldr	s5, [sp, #12]
d0050b58:	f7ff fbee 	bl	d0050338 <rotateAroundAxis>
d0050b5c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050b60:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050b64:	eeb0 3a68 	vmov.f32	s6, s17
d0050b68:	ed94 0a06 	vldr	s0, [r4, #24]
d0050b6c:	edd4 0a07 	vldr	s1, [r4, #28]
d0050b70:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050b74:	ed94 1a08 	vldr	s2, [r4, #32]
d0050b78:	eddd 1a01 	vldr	s3, [sp, #4]
d0050b7c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050b80:	eddd 2a03 	vldr	s5, [sp, #12]
d0050b84:	f7ff fbd8 	bl	d0050338 <rotateAroundAxis>
d0050b88:	eeb0 3a68 	vmov.f32	s6, s17
d0050b8c:	ed84 0a06 	vstr	s0, [r4, #24]
d0050b90:	edc4 0a07 	vstr	s1, [r4, #28]
d0050b94:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050b98:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050b9c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050ba0:	eddd 1a01 	vldr	s3, [sp, #4]
d0050ba4:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050ba8:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050bac:	eddd 2a03 	vldr	s5, [sp, #12]
d0050bb0:	f7ff fbc2 	bl	d0050338 <rotateAroundAxis>
d0050bb4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050bb8:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050bbc:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050bc0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050bc4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050bc8:	f43f af31 	beq.w	d0050a2e <cameraTurn+0x6a>
d0050bcc:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050bd0:	eeb0 3a48 	vmov.f32	s6, s16
d0050bd4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050bd8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050bdc:	eddd 1a07 	vldr	s3, [sp, #28]
d0050be0:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050be4:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050be8:	f7ff fba6 	bl	d0050338 <rotateAroundAxis>
d0050bec:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050bf0:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050bf4:	eeb0 3a48 	vmov.f32	s6, s16
d0050bf8:	ed94 0a06 	vldr	s0, [r4, #24]
d0050bfc:	edd4 0a07 	vldr	s1, [r4, #28]
d0050c00:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050c04:	ed94 1a08 	vldr	s2, [r4, #32]
d0050c08:	eddd 1a07 	vldr	s3, [sp, #28]
d0050c0c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050c10:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050c14:	f7ff fb90 	bl	d0050338 <rotateAroundAxis>
d0050c18:	ed84 0a06 	vstr	s0, [r4, #24]
d0050c1c:	edc4 0a07 	vstr	s1, [r4, #28]
d0050c20:	eeb0 3a48 	vmov.f32	s6, s16
d0050c24:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050c28:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050c2c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050c30:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050c34:	eddd 1a07 	vldr	s3, [sp, #28]
d0050c38:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050c3c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050c40:	f7ff fb7a 	bl	d0050338 <rotateAroundAxis>
d0050c44:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050c48:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050c4c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050c50:	e6ed      	b.n	d0050a2e <cameraTurn+0x6a>
d0050c52:	4770      	bx	lr
d0050c54:	00000000 	.word	0x00000000

d0050c58 <worldToCamera>:
d0050c58:	b084      	sub	sp, #16
d0050c5a:	b510      	push	{r4, lr}
d0050c5c:	ed2d 8b02 	vpush	{d8}
d0050c60:	b0ac      	sub	sp, #176	; 0xb0
d0050c62:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0050c66:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0050c6a:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0050c6e:	f024 041f 	bic.w	r4, r4, #31
d0050c72:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0050c76:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0050c7a:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0050c7e:	2260      	movs	r2, #96	; 0x60
d0050c80:	4661      	mov	r1, ip
d0050c82:	4620      	mov	r0, r4
d0050c84:	f004 faae 	bl	d00551e4 <memcpy>
d0050c88:	edd4 7a00 	vldr	s15, [r4]
d0050c8c:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0050c90:	ed94 7a01 	vldr	s14, [r4, #4]
d0050c94:	ee30 0a67 	vsub.f32	s0, s0, s15
d0050c98:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0050c9c:	edd4 7a02 	vldr	s15, [r4, #8]
d0050ca0:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0050ca4:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0050ca8:	edd4 1a06 	vldr	s3, [r4, #24]
d0050cac:	ee31 1a67 	vsub.f32	s2, s2, s15
d0050cb0:	ed94 2a07 	vldr	s4, [r4, #28]
d0050cb4:	edd4 2a08 	vldr	s5, [r4, #32]
d0050cb8:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0050cbc:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0050cc0:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0050cc4:	f7ff fac6 	bl	d0050254 <vec3Dot>
d0050cc8:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0050ccc:	eef0 8a40 	vmov.f32	s17, s0
d0050cd0:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0050cd4:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0050cd8:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0050cdc:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0050ce0:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0050ce4:	f7ff fab6 	bl	d0050254 <vec3Dot>
d0050ce8:	eeb0 8a40 	vmov.f32	s16, s0
d0050cec:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0050cf0:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0050cf4:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050cf8:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0050cfc:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050d00:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050d04:	f7ff faa6 	bl	d0050254 <vec3Dot>
d0050d08:	eef0 0a48 	vmov.f32	s1, s16
d0050d0c:	eeb0 1a40 	vmov.f32	s2, s0
d0050d10:	eeb0 0a68 	vmov.f32	s0, s17
d0050d14:	b02c      	add	sp, #176	; 0xb0
d0050d16:	ecbd 8b02 	vpop	{d8}
d0050d1a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0050d1e:	b004      	add	sp, #16
d0050d20:	4770      	bx	lr
d0050d22:	bf00      	nop

d0050d24 <cameraSetRange>:
d0050d24:	b1d8      	cbz	r0, d0050d5e <cameraSetRange+0x3a>
d0050d26:	eddf 7a11 	vldr	s15, [pc, #68]	; d0050d6c <cameraSetRange+0x48>
d0050d2a:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0050d2e:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0050d32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050d36:	da13      	bge.n	d0050d60 <cameraSetRange+0x3c>
d0050d38:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0050d3c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050d40:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0050d44:	4b0a      	ldr	r3, [pc, #40]	; (d0050d70 <cameraSetRange+0x4c>)
d0050d46:	490b      	ldr	r1, [pc, #44]	; (d0050d74 <cameraSetRange+0x50>)
d0050d48:	4a0b      	ldr	r2, [pc, #44]	; (d0050d78 <cameraSetRange+0x54>)
d0050d4a:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0050d4e:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0050d52:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0050d56:	6483      	str	r3, [r0, #72]	; 0x48
d0050d58:	64c3      	str	r3, [r0, #76]	; 0x4c
d0050d5a:	6501      	str	r1, [r0, #80]	; 0x50
d0050d5c:	6542      	str	r2, [r0, #84]	; 0x54
d0050d5e:	4770      	bx	lr
d0050d60:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0050d64:	ee70 0a27 	vadd.f32	s1, s0, s15
d0050d68:	e7ec      	b.n	d0050d44 <cameraSetRange+0x20>
d0050d6a:	bf00      	nop
d0050d6c:	3a83126f 	.word	0x3a83126f
d0050d70:	43700000 	.word	0x43700000
d0050d74:	43200000 	.word	0x43200000
d0050d78:	3f2aaaab 	.word	0x3f2aaaab

d0050d7c <cameraMove>:
d0050d7c:	b3a8      	cbz	r0, d0050dea <cameraMove+0x6e>
d0050d7e:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0050d82:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0050d86:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d0050d8a:	ee20 7a87 	vmul.f32	s14, s1, s14
d0050d8e:	edd0 5a06 	vldr	s11, [r0, #24]
d0050d92:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0050d96:	ed90 6a08 	vldr	s12, [r0, #32]
d0050d9a:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0050d9e:	edd0 6a07 	vldr	s13, [r0, #28]
d0050da2:	eea5 7a80 	vfma.f32	s14, s11, s0
d0050da6:	edd0 4a01 	vldr	s9, [r0, #4]
d0050daa:	eee6 7a80 	vfma.f32	s15, s13, s0
d0050dae:	ed90 5a02 	vldr	s10, [r0, #8]
d0050db2:	eee6 0a00 	vfma.f32	s1, s12, s0
d0050db6:	edd0 6a00 	vldr	s13, [r0]
d0050dba:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0050dbe:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0050dc2:	ee37 7a26 	vadd.f32	s14, s14, s13
d0050dc6:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0050dca:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0050dce:	ee70 0a85 	vadd.f32	s1, s1, s10
d0050dd2:	eea5 7a81 	vfma.f32	s14, s11, s2
d0050dd6:	eee6 7a01 	vfma.f32	s15, s12, s2
d0050dda:	eee6 0a81 	vfma.f32	s1, s13, s2
d0050dde:	ed80 7a00 	vstr	s14, [r0]
d0050de2:	edc0 7a01 	vstr	s15, [r0, #4]
d0050de6:	edc0 0a02 	vstr	s1, [r0, #8]
d0050dea:	4770      	bx	lr

d0050dec <normalizeEntity.part.0>:
d0050dec:	edd0 0a08 	vldr	s1, [r0, #32]
d0050df0:	ed90 1a09 	vldr	s2, [r0, #36]	; 0x24
d0050df4:	ed90 0a07 	vldr	s0, [r0, #28]
d0050df8:	b510      	push	{r4, lr}
d0050dfa:	4604      	mov	r4, r0
d0050dfc:	f7ff fa4c 	bl	d0050298 <vec3Normalize>
d0050e00:	eeb0 7a60 	vmov.f32	s14, s1
d0050e04:	eef0 7a41 	vmov.f32	s15, s2
d0050e08:	ed84 0a07 	vstr	s0, [r4, #28]
d0050e0c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0050e10:	ed84 7a08 	vstr	s14, [r4, #32]
d0050e14:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0050e18:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0050e1c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0050e20:	f7ff fa3a 	bl	d0050298 <vec3Normalize>
d0050e24:	eef0 1a40 	vmov.f32	s3, s0
d0050e28:	eeb0 2a60 	vmov.f32	s4, s1
d0050e2c:	ed94 0a07 	vldr	s0, [r4, #28]
d0050e30:	eef0 2a41 	vmov.f32	s5, s2
d0050e34:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0050e38:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0050e3c:	edd4 0a08 	vldr	s1, [r4, #32]
d0050e40:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0050e44:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0050e48:	f7ff fa10 	bl	d005026c <vec3Cross>
d0050e4c:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0050e50:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0050e54:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0050e58:	f7ff fa1e 	bl	d0050298 <vec3Normalize>
d0050e5c:	edd4 1a07 	vldr	s3, [r4, #28]
d0050e60:	ed94 2a08 	vldr	s4, [r4, #32]
d0050e64:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0050e68:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0050e6c:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0050e70:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0050e74:	f7ff f9fa 	bl	d005026c <vec3Cross>
d0050e78:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0050e7c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0050e80:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0050e84:	f7ff fa08 	bl	d0050298 <vec3Normalize>
d0050e88:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0050e8c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0050e90:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0050e94:	bd10      	pop	{r4, pc}
d0050e96:	bf00      	nop

d0050e98 <entityRotation.part.0>:
d0050e98:	b5f0      	push	{r4, r5, r6, r7, lr}
d0050e9a:	4db5      	ldr	r5, [pc, #724]	; (d0051170 <entityRotation.part.0+0x2d8>)
d0050e9c:	ed2d 8b04 	vpush	{d8-d9}
d0050ea0:	eb05 14c0 	add.w	r4, r5, r0, lsl #7
d0050ea4:	eeb0 9a40 	vmov.f32	s18, s0
d0050ea8:	eef0 8a60 	vmov.f32	s17, s1
d0050eac:	b08b      	sub	sp, #44	; 0x2c
d0050eae:	eeb0 8a41 	vmov.f32	s16, s2
d0050eb2:	2900      	cmp	r1, #0
d0050eb4:	d040      	beq.n	d0050f38 <entityRotation.part.0+0xa0>
d0050eb6:	eddf 1aaf 	vldr	s3, [pc, #700]	; d0051174 <entityRotation.part.0+0x2dc>
d0050eba:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0050ebe:	eeb4 0a61 	vcmp.f32	s0, s3
d0050ec2:	edc4 1a0b 	vstr	s3, [r4, #44]	; 0x2c
d0050ec6:	ed84 2a0a 	vstr	s4, [r4, #40]	; 0x28
d0050eca:	ed84 2a0e 	vstr	s4, [r4, #56]	; 0x38
d0050ece:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ed2:	ed84 2a09 	vstr	s4, [r4, #36]	; 0x24
d0050ed6:	ed8d 2a02 	vstr	s4, [sp, #8]
d0050eda:	ed8d 2a04 	vstr	s4, [sp, #16]
d0050ede:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0050ee2:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0050ee6:	edc4 1a0d 	vstr	s3, [r4, #52]	; 0x34
d0050eea:	edc4 1a0f 	vstr	s3, [r4, #60]	; 0x3c
d0050eee:	edc4 1a07 	vstr	s3, [r4, #28]
d0050ef2:	edc4 1a08 	vstr	s3, [r4, #32]
d0050ef6:	edcd 1a01 	vstr	s3, [sp, #4]
d0050efa:	edcd 1a03 	vstr	s3, [sp, #12]
d0050efe:	edcd 1a05 	vstr	s3, [sp, #20]
d0050f02:	edcd 1a06 	vstr	s3, [sp, #24]
d0050f06:	edcd 1a07 	vstr	s3, [sp, #28]
d0050f0a:	edcd 1a08 	vstr	s3, [sp, #32]
d0050f0e:	d17b      	bne.n	d0051008 <entityRotation.part.0+0x170>
d0050f10:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050f14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f18:	f040 80c6 	bne.w	d00510a8 <entityRotation.part.0+0x210>
d0050f1c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050f20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f24:	f040 8114 	bne.w	d0051150 <entityRotation.part.0+0x2b8>
d0050f28:	4620      	mov	r0, r4
d0050f2a:	b00b      	add	sp, #44	; 0x2c
d0050f2c:	ecbd 8b04 	vpop	{d8-d9}
d0050f30:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0050f34:	f7ff bf5a 	b.w	d0050dec <normalizeEntity.part.0>
d0050f38:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0050f3c:	01c6      	lsls	r6, r0, #7
d0050f3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f42:	f040 8119 	bne.w	d0051178 <entityRotation.part.0+0x2e0>
d0050f46:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050f4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f4e:	f040 816e 	bne.w	d005122e <entityRotation.part.0+0x396>
d0050f52:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050f56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f5a:	d0e5      	beq.n	d0050f28 <entityRotation.part.0+0x90>
d0050f5c:	19ab      	adds	r3, r5, r6
d0050f5e:	eeb0 3a48 	vmov.f32	s6, s16
d0050f62:	ed94 0a07 	vldr	s0, [r4, #28]
d0050f66:	331c      	adds	r3, #28
d0050f68:	edd4 0a08 	vldr	s1, [r4, #32]
d0050f6c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0050f70:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050f74:	ab0a      	add	r3, sp, #40	; 0x28
d0050f76:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0050f7a:	eddd 1a07 	vldr	s3, [sp, #28]
d0050f7e:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050f82:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050f86:	f7ff f9d7 	bl	d0050338 <rotateAroundAxis>
d0050f8a:	eef0 6a40 	vmov.f32	s13, s0
d0050f8e:	eeb0 7a60 	vmov.f32	s14, s1
d0050f92:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0050f96:	eef0 7a41 	vmov.f32	s15, s2
d0050f9a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0050f9e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0050fa2:	eeb0 3a48 	vmov.f32	s6, s16
d0050fa6:	eddd 1a07 	vldr	s3, [sp, #28]
d0050faa:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050fae:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050fb2:	edc4 6a07 	vstr	s13, [r4, #28]
d0050fb6:	ed84 7a08 	vstr	s14, [r4, #32]
d0050fba:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0050fbe:	f7ff f9bb 	bl	d0050338 <rotateAroundAxis>
d0050fc2:	eef0 6a40 	vmov.f32	s13, s0
d0050fc6:	eeb0 7a60 	vmov.f32	s14, s1
d0050fca:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0050fce:	eef0 7a41 	vmov.f32	s15, s2
d0050fd2:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0050fd6:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0050fda:	eeb0 3a48 	vmov.f32	s6, s16
d0050fde:	eddd 1a07 	vldr	s3, [sp, #28]
d0050fe2:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050fe6:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050fea:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0050fee:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0050ff2:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0050ff6:	f7ff f99f 	bl	d0050338 <rotateAroundAxis>
d0050ffa:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0050ffe:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051002:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051006:	e78f      	b.n	d0050f28 <entityRotation.part.0+0x90>
d0051008:	eeb0 1a42 	vmov.f32	s2, s4
d005100c:	eef0 0a61 	vmov.f32	s1, s3
d0051010:	eeb0 3a40 	vmov.f32	s6, s0
d0051014:	eeb0 0a61 	vmov.f32	s0, s3
d0051018:	eef0 2a61 	vmov.f32	s5, s3
d005101c:	f7ff f98c 	bl	d0050338 <rotateAroundAxis>
d0051020:	eeb0 7a60 	vmov.f32	s14, s1
d0051024:	eef0 6a40 	vmov.f32	s13, s0
d0051028:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005102c:	eef0 7a41 	vmov.f32	s15, s2
d0051030:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051034:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051038:	eeb0 3a49 	vmov.f32	s6, s18
d005103c:	eddd 1a01 	vldr	s3, [sp, #4]
d0051040:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051044:	eddd 2a03 	vldr	s5, [sp, #12]
d0051048:	edc4 6a07 	vstr	s13, [r4, #28]
d005104c:	ed84 7a08 	vstr	s14, [r4, #32]
d0051050:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051054:	f7ff f970 	bl	d0050338 <rotateAroundAxis>
d0051058:	eef0 6a40 	vmov.f32	s13, s0
d005105c:	eeb0 7a60 	vmov.f32	s14, s1
d0051060:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051064:	eef0 7a41 	vmov.f32	s15, s2
d0051068:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005106c:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051070:	eeb0 3a49 	vmov.f32	s6, s18
d0051074:	eddd 1a01 	vldr	s3, [sp, #4]
d0051078:	ed9d 2a02 	vldr	s4, [sp, #8]
d005107c:	eddd 2a03 	vldr	s5, [sp, #12]
d0051080:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051084:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051088:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005108c:	f7ff f954 	bl	d0050338 <rotateAroundAxis>
d0051090:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051094:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051098:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005109c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00510a0:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00510a4:	f43f af3a 	beq.w	d0050f1c <entityRotation.part.0+0x84>
d00510a8:	ed94 0a07 	vldr	s0, [r4, #28]
d00510ac:	eeb0 3a68 	vmov.f32	s6, s17
d00510b0:	edd4 0a08 	vldr	s1, [r4, #32]
d00510b4:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00510b8:	eddd 1a04 	vldr	s3, [sp, #16]
d00510bc:	ed9d 2a05 	vldr	s4, [sp, #20]
d00510c0:	eddd 2a06 	vldr	s5, [sp, #24]
d00510c4:	f7ff f938 	bl	d0050338 <rotateAroundAxis>
d00510c8:	eef0 6a40 	vmov.f32	s13, s0
d00510cc:	eeb0 7a60 	vmov.f32	s14, s1
d00510d0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00510d4:	eef0 7a41 	vmov.f32	s15, s2
d00510d8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00510dc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00510e0:	eeb0 3a68 	vmov.f32	s6, s17
d00510e4:	eddd 1a04 	vldr	s3, [sp, #16]
d00510e8:	ed9d 2a05 	vldr	s4, [sp, #20]
d00510ec:	eddd 2a06 	vldr	s5, [sp, #24]
d00510f0:	edc4 6a07 	vstr	s13, [r4, #28]
d00510f4:	ed84 7a08 	vstr	s14, [r4, #32]
d00510f8:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00510fc:	f7ff f91c 	bl	d0050338 <rotateAroundAxis>
d0051100:	eef0 6a40 	vmov.f32	s13, s0
d0051104:	eeb0 7a60 	vmov.f32	s14, s1
d0051108:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d005110c:	eef0 7a41 	vmov.f32	s15, s2
d0051110:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051114:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051118:	eeb0 3a68 	vmov.f32	s6, s17
d005111c:	eddd 1a04 	vldr	s3, [sp, #16]
d0051120:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051124:	eddd 2a06 	vldr	s5, [sp, #24]
d0051128:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d005112c:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051130:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051134:	f7ff f900 	bl	d0050338 <rotateAroundAxis>
d0051138:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005113c:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051140:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051144:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051148:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005114c:	f43f aeec 	beq.w	d0050f28 <entityRotation.part.0+0x90>
d0051150:	eeb0 3a48 	vmov.f32	s6, s16
d0051154:	eddd 1a07 	vldr	s3, [sp, #28]
d0051158:	ed9d 2a08 	vldr	s4, [sp, #32]
d005115c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051160:	ed94 0a07 	vldr	s0, [r4, #28]
d0051164:	edd4 0a08 	vldr	s1, [r4, #32]
d0051168:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005116c:	e70b      	b.n	d0050f86 <entityRotation.part.0+0xee>
d005116e:	bf00      	nop
d0051170:	d00f4740 	.word	0xd00f4740
d0051174:	00000000 	.word	0x00000000
d0051178:	f104 0334 	add.w	r3, r4, #52	; 0x34
d005117c:	af01      	add	r7, sp, #4
d005117e:	eeb0 3a40 	vmov.f32	s6, s0
d0051182:	edd4 0a08 	vldr	s1, [r4, #32]
d0051186:	ed94 0a07 	vldr	s0, [r4, #28]
d005118a:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005118e:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051192:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0051196:	eddd 1a01 	vldr	s3, [sp, #4]
d005119a:	ed9d 2a02 	vldr	s4, [sp, #8]
d005119e:	eddd 2a03 	vldr	s5, [sp, #12]
d00511a2:	f7ff f8c9 	bl	d0050338 <rotateAroundAxis>
d00511a6:	eef0 6a40 	vmov.f32	s13, s0
d00511aa:	eeb0 7a60 	vmov.f32	s14, s1
d00511ae:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00511b2:	eef0 7a41 	vmov.f32	s15, s2
d00511b6:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00511ba:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00511be:	eeb0 3a49 	vmov.f32	s6, s18
d00511c2:	eddd 1a01 	vldr	s3, [sp, #4]
d00511c6:	ed9d 2a02 	vldr	s4, [sp, #8]
d00511ca:	eddd 2a03 	vldr	s5, [sp, #12]
d00511ce:	edc4 6a07 	vstr	s13, [r4, #28]
d00511d2:	ed84 7a08 	vstr	s14, [r4, #32]
d00511d6:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00511da:	f7ff f8ad 	bl	d0050338 <rotateAroundAxis>
d00511de:	eef0 6a40 	vmov.f32	s13, s0
d00511e2:	eeb0 7a60 	vmov.f32	s14, s1
d00511e6:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00511ea:	eef0 7a41 	vmov.f32	s15, s2
d00511ee:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00511f2:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00511f6:	eeb0 3a49 	vmov.f32	s6, s18
d00511fa:	eddd 1a01 	vldr	s3, [sp, #4]
d00511fe:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051202:	eddd 2a03 	vldr	s5, [sp, #12]
d0051206:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d005120a:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d005120e:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051212:	f7ff f891 	bl	d0050338 <rotateAroundAxis>
d0051216:	eef5 8a40 	vcmp.f32	s17, #0.0
d005121a:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d005121e:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051222:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051226:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005122a:	f43f ae92 	beq.w	d0050f52 <entityRotation.part.0+0xba>
d005122e:	19ab      	adds	r3, r5, r6
d0051230:	af04      	add	r7, sp, #16
d0051232:	ed94 0a07 	vldr	s0, [r4, #28]
d0051236:	eeb0 3a68 	vmov.f32	s6, s17
d005123a:	3328      	adds	r3, #40	; 0x28
d005123c:	edd4 0a08 	vldr	s1, [r4, #32]
d0051240:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051244:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051248:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d005124c:	eddd 1a04 	vldr	s3, [sp, #16]
d0051250:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051254:	eddd 2a06 	vldr	s5, [sp, #24]
d0051258:	f7ff f86e 	bl	d0050338 <rotateAroundAxis>
d005125c:	eef0 6a40 	vmov.f32	s13, s0
d0051260:	eeb0 7a60 	vmov.f32	s14, s1
d0051264:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051268:	eef0 7a41 	vmov.f32	s15, s2
d005126c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051270:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051274:	eeb0 3a68 	vmov.f32	s6, s17
d0051278:	eddd 1a04 	vldr	s3, [sp, #16]
d005127c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051280:	eddd 2a06 	vldr	s5, [sp, #24]
d0051284:	edc4 6a07 	vstr	s13, [r4, #28]
d0051288:	ed84 7a08 	vstr	s14, [r4, #32]
d005128c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051290:	f7ff f852 	bl	d0050338 <rotateAroundAxis>
d0051294:	eef0 6a40 	vmov.f32	s13, s0
d0051298:	eeb0 7a60 	vmov.f32	s14, s1
d005129c:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00512a0:	eef0 7a41 	vmov.f32	s15, s2
d00512a4:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00512a8:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00512ac:	eeb0 3a68 	vmov.f32	s6, s17
d00512b0:	eddd 1a04 	vldr	s3, [sp, #16]
d00512b4:	ed9d 2a05 	vldr	s4, [sp, #20]
d00512b8:	eddd 2a06 	vldr	s5, [sp, #24]
d00512bc:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00512c0:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00512c4:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00512c8:	f7ff f836 	bl	d0050338 <rotateAroundAxis>
d00512cc:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00512d0:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00512d4:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00512d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00512dc:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00512e0:	f43f ae22 	beq.w	d0050f28 <entityRotation.part.0+0x90>
d00512e4:	e63a      	b.n	d0050f5c <entityRotation.part.0+0xc4>
d00512e6:	bf00      	nop

d00512e8 <entityIdValid>:
d00512e8:	28ff      	cmp	r0, #255	; 0xff
d00512ea:	d80a      	bhi.n	d0051302 <entityIdValid+0x1a>
d00512ec:	4b06      	ldr	r3, [pc, #24]	; (d0051308 <entityIdValid+0x20>)
d00512ee:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d00512f2:	f893 0040 	ldrb.w	r0, [r3, #64]	; 0x40
d00512f6:	b128      	cbz	r0, d0051304 <entityIdValid+0x1c>
d00512f8:	6998      	ldr	r0, [r3, #24]
d00512fa:	3800      	subs	r0, #0
d00512fc:	bf18      	it	ne
d00512fe:	2001      	movne	r0, #1
d0051300:	4770      	bx	lr
d0051302:	2000      	movs	r0, #0
d0051304:	4770      	bx	lr
d0051306:	bf00      	nop
d0051308:	d00f4740 	.word	0xd00f4740

d005130c <freeMesh>:
d005130c:	b1b8      	cbz	r0, d005133e <freeMesh+0x32>
d005130e:	b510      	push	{r4, lr}
d0051310:	4604      	mov	r4, r0
d0051312:	6800      	ldr	r0, [r0, #0]
d0051314:	b108      	cbz	r0, d005131a <freeMesh+0xe>
d0051316:	f003 ff4f 	bl	d00551b8 <free>
d005131a:	6920      	ldr	r0, [r4, #16]
d005131c:	b108      	cbz	r0, d0051322 <freeMesh+0x16>
d005131e:	f003 ff4b 	bl	d00551b8 <free>
d0051322:	68a0      	ldr	r0, [r4, #8]
d0051324:	b108      	cbz	r0, d005132a <freeMesh+0x1e>
d0051326:	f003 ff47 	bl	d00551b8 <free>
d005132a:	2300      	movs	r3, #0
d005132c:	2200      	movs	r2, #0
d005132e:	6023      	str	r3, [r4, #0]
d0051330:	6123      	str	r3, [r4, #16]
d0051332:	60a3      	str	r3, [r4, #8]
d0051334:	6063      	str	r3, [r4, #4]
d0051336:	6163      	str	r3, [r4, #20]
d0051338:	60e3      	str	r3, [r4, #12]
d005133a:	61a2      	str	r2, [r4, #24]
d005133c:	bd10      	pop	{r4, pc}
d005133e:	4770      	bx	lr

d0051340 <meshComputeBoundsRadius>:
d0051340:	b1f0      	cbz	r0, d0051380 <meshComputeBoundsRadius+0x40>
d0051342:	6803      	ldr	r3, [r0, #0]
d0051344:	b1e3      	cbz	r3, d0051380 <meshComputeBoundsRadius+0x40>
d0051346:	6842      	ldr	r2, [r0, #4]
d0051348:	2a00      	cmp	r2, #0
d005134a:	dd19      	ble.n	d0051380 <meshComputeBoundsRadius+0x40>
d005134c:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0051350:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0051388 <meshComputeBoundsRadius+0x48>
d0051354:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0051358:	edd3 7a01 	vldr	s15, [r3, #4]
d005135c:	330c      	adds	r3, #12
d005135e:	ed53 6a03 	vldr	s13, [r3, #-12]
d0051362:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0051366:	ed13 7a01 	vldr	s14, [r3, #-4]
d005136a:	429a      	cmp	r2, r3
d005136c:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0051370:	eee7 7a07 	vfma.f32	s15, s14, s14
d0051374:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0051378:	d1ee      	bne.n	d0051358 <meshComputeBoundsRadius+0x18>
d005137a:	eeb1 0ac6 	vsqrt.f32	s0, s12
d005137e:	4770      	bx	lr
d0051380:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0051388 <meshComputeBoundsRadius+0x48>
d0051384:	4770      	bx	lr
d0051386:	bf00      	nop
d0051388:	00000000 	.word	0x00000000

d005138c <entityWorldSpawn>:
d005138c:	b5f0      	push	{r4, r5, r6, r7, lr}
d005138e:	4d20      	ldr	r5, [pc, #128]	; (d0051410 <entityWorldSpawn+0x84>)
d0051390:	b085      	sub	sp, #20
d0051392:	2300      	movs	r3, #0
d0051394:	462a      	mov	r2, r5
d0051396:	ed8d 0a01 	vstr	s0, [sp, #4]
d005139a:	edcd 0a02 	vstr	s1, [sp, #8]
d005139e:	ed8d 1a03 	vstr	s2, [sp, #12]
d00513a2:	e003      	b.n	d00513ac <entityWorldSpawn+0x20>
d00513a4:	3301      	adds	r3, #1
d00513a6:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00513aa:	d02c      	beq.n	d0051406 <entityWorldSpawn+0x7a>
d00513ac:	f892 4040 	ldrb.w	r4, [r2, #64]	; 0x40
d00513b0:	3280      	adds	r2, #128	; 0x80
d00513b2:	2c00      	cmp	r4, #0
d00513b4:	d1f6      	bne.n	d00513a4 <entityWorldSpawn+0x18>
d00513b6:	eb05 15c3 	add.w	r5, r5, r3, lsl #7
d00513ba:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00513be:	af01      	add	r7, sp, #4
d00513c0:	2600      	movs	r6, #0
d00513c2:	61a8      	str	r0, [r5, #24]
d00513c4:	f105 0e0c 	add.w	lr, r5, #12
d00513c8:	62aa      	str	r2, [r5, #40]	; 0x28
d00513ca:	ea4f 1cc3 	mov.w	ip, r3, lsl #7
d00513ce:	63aa      	str	r2, [r5, #56]	; 0x38
d00513d0:	626a      	str	r2, [r5, #36]	; 0x24
d00513d2:	62ee      	str	r6, [r5, #44]	; 0x2c
d00513d4:	632e      	str	r6, [r5, #48]	; 0x30
d00513d6:	636e      	str	r6, [r5, #52]	; 0x34
d00513d8:	63ee      	str	r6, [r5, #60]	; 0x3c
d00513da:	61ee      	str	r6, [r5, #28]
d00513dc:	622e      	str	r6, [r5, #32]
d00513de:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d00513e2:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00513e6:	e88e 0007 	stmia.w	lr, {r0, r1, r2}
d00513ea:	4a0a      	ldr	r2, [pc, #40]	; (d0051414 <entityWorldSpawn+0x88>)
d00513ec:	f240 1101 	movw	r1, #257	; 0x101
d00513f0:	4618      	mov	r0, r3
d00513f2:	f82c 1002 	strh.w	r1, [ip, r2]
d00513f6:	f885 4042 	strb.w	r4, [r5, #66]	; 0x42
d00513fa:	64ae      	str	r6, [r5, #72]	; 0x48
d00513fc:	64ee      	str	r6, [r5, #76]	; 0x4c
d00513fe:	652e      	str	r6, [r5, #80]	; 0x50
d0051400:	646e      	str	r6, [r5, #68]	; 0x44
d0051402:	b005      	add	sp, #20
d0051404:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0051406:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d005140a:	4618      	mov	r0, r3
d005140c:	b005      	add	sp, #20
d005140e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0051410:	d00f4740 	.word	0xd00f4740
d0051414:	d00f4780 	.word	0xd00f4780

d0051418 <entitySetPosition>:
d0051418:	b410      	push	{r4}
d005141a:	28ff      	cmp	r0, #255	; 0xff
d005141c:	b085      	sub	sp, #20
d005141e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0051422:	edcd 0a02 	vstr	s1, [sp, #8]
d0051426:	ed8d 1a03 	vstr	s2, [sp, #12]
d005142a:	d812      	bhi.n	d0051452 <entitySetPosition+0x3a>
d005142c:	4b0b      	ldr	r3, [pc, #44]	; (d005145c <entitySetPosition+0x44>)
d005142e:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0051432:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0051436:	b162      	cbz	r2, d0051452 <entitySetPosition+0x3a>
d0051438:	699a      	ldr	r2, [r3, #24]
d005143a:	b152      	cbz	r2, d0051452 <entitySetPosition+0x3a>
d005143c:	f103 040c 	add.w	r4, r3, #12
d0051440:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051444:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0051448:	aa04      	add	r2, sp, #16
d005144a:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d005144e:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0051452:	b005      	add	sp, #20
d0051454:	f85d 4b04 	ldr.w	r4, [sp], #4
d0051458:	4770      	bx	lr
d005145a:	bf00      	nop
d005145c:	d00f4740 	.word	0xd00f4740

d0051460 <entityGetPosition>:
d0051460:	28ff      	cmp	r0, #255	; 0xff
d0051462:	b088      	sub	sp, #32
d0051464:	d80c      	bhi.n	d0051480 <entityGetPosition+0x20>
d0051466:	4b0c      	ldr	r3, [pc, #48]	; (d0051498 <entityGetPosition+0x38>)
d0051468:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d005146c:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0051470:	b133      	cbz	r3, d0051480 <entityGetPosition+0x20>
d0051472:	6983      	ldr	r3, [r0, #24]
d0051474:	b123      	cbz	r3, d0051480 <entityGetPosition+0x20>
d0051476:	ab08      	add	r3, sp, #32
d0051478:	c807      	ldmia	r0, {r0, r1, r2}
d005147a:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005147e:	e003      	b.n	d0051488 <entityGetPosition+0x28>
d0051480:	2300      	movs	r3, #0
d0051482:	9305      	str	r3, [sp, #20]
d0051484:	9306      	str	r3, [sp, #24]
d0051486:	9307      	str	r3, [sp, #28]
d0051488:	ed9d 0a05 	vldr	s0, [sp, #20]
d005148c:	eddd 0a06 	vldr	s1, [sp, #24]
d0051490:	ed9d 1a07 	vldr	s2, [sp, #28]
d0051494:	b008      	add	sp, #32
d0051496:	4770      	bx	lr
d0051498:	d00f4740 	.word	0xd00f4740

d005149c <entityGetForward>:
d005149c:	28ff      	cmp	r0, #255	; 0xff
d005149e:	b088      	sub	sp, #32
d00514a0:	d80d      	bhi.n	d00514be <entityGetForward+0x22>
d00514a2:	4b0e      	ldr	r3, [pc, #56]	; (d00514dc <entityGetForward+0x40>)
d00514a4:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d00514a8:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d00514ac:	b13b      	cbz	r3, d00514be <entityGetForward+0x22>
d00514ae:	6983      	ldr	r3, [r0, #24]
d00514b0:	b12b      	cbz	r3, d00514be <entityGetForward+0x22>
d00514b2:	301c      	adds	r0, #28
d00514b4:	ab08      	add	r3, sp, #32
d00514b6:	c807      	ldmia	r0, {r0, r1, r2}
d00514b8:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00514bc:	e005      	b.n	d00514ca <entityGetForward+0x2e>
d00514be:	2300      	movs	r3, #0
d00514c0:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00514c4:	9305      	str	r3, [sp, #20]
d00514c6:	9207      	str	r2, [sp, #28]
d00514c8:	9306      	str	r3, [sp, #24]
d00514ca:	ed9d 0a05 	vldr	s0, [sp, #20]
d00514ce:	eddd 0a06 	vldr	s1, [sp, #24]
d00514d2:	ed9d 1a07 	vldr	s2, [sp, #28]
d00514d6:	b008      	add	sp, #32
d00514d8:	4770      	bx	lr
d00514da:	bf00      	nop
d00514dc:	d00f4740 	.word	0xd00f4740

d00514e0 <entityMoveForward>:
d00514e0:	28ff      	cmp	r0, #255	; 0xff
d00514e2:	d82f      	bhi.n	d0051544 <entityMoveForward+0x64>
d00514e4:	b510      	push	{r4, lr}
d00514e6:	4c18      	ldr	r4, [pc, #96]	; (d0051548 <entityMoveForward+0x68>)
d00514e8:	b084      	sub	sp, #16
d00514ea:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d00514ee:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d00514f2:	b32b      	cbz	r3, d0051540 <entityMoveForward+0x60>
d00514f4:	69a3      	ldr	r3, [r4, #24]
d00514f6:	b31b      	cbz	r3, d0051540 <entityMoveForward+0x60>
d00514f8:	f104 030c 	add.w	r3, r4, #12
d00514fc:	eef0 1a40 	vmov.f32	s3, s0
d0051500:	edd4 0a08 	vldr	s1, [r4, #32]
d0051504:	ed94 0a07 	vldr	s0, [r4, #28]
d0051508:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005150c:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d0051510:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0051514:	f7fe fe94 	bl	d0050240 <vec3Scale>
d0051518:	eef0 1a40 	vmov.f32	s3, s0
d005151c:	eeb0 2a60 	vmov.f32	s4, s1
d0051520:	ed94 0a00 	vldr	s0, [r4]
d0051524:	eef0 2a41 	vmov.f32	s5, s2
d0051528:	edd4 0a01 	vldr	s1, [r4, #4]
d005152c:	ed94 1a02 	vldr	s2, [r4, #8]
d0051530:	f7fe fe7c 	bl	d005022c <vec3Add>
d0051534:	ed84 0a00 	vstr	s0, [r4]
d0051538:	edc4 0a01 	vstr	s1, [r4, #4]
d005153c:	ed84 1a02 	vstr	s2, [r4, #8]
d0051540:	b004      	add	sp, #16
d0051542:	bd10      	pop	{r4, pc}
d0051544:	4770      	bx	lr
d0051546:	bf00      	nop
d0051548:	d00f4740 	.word	0xd00f4740

d005154c <meshColour>:
d005154c:	b150      	cbz	r0, d0051564 <meshColour+0x18>
d005154e:	6903      	ldr	r3, [r0, #16]
d0051550:	b143      	cbz	r3, d0051564 <meshColour+0x18>
d0051552:	6942      	ldr	r2, [r0, #20]
d0051554:	2a00      	cmp	r2, #0
d0051556:	dd05      	ble.n	d0051564 <meshColour+0x18>
d0051558:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d005155c:	7319      	strb	r1, [r3, #12]
d005155e:	3310      	adds	r3, #16
d0051560:	429a      	cmp	r2, r3
d0051562:	d1fb      	bne.n	d005155c <meshColour+0x10>
d0051564:	4770      	bx	lr
d0051566:	bf00      	nop

d0051568 <entityTurnLocal>:
d0051568:	28ff      	cmp	r0, #255	; 0xff
d005156a:	d82a      	bhi.n	d00515c2 <entityTurnLocal+0x5a>
d005156c:	b510      	push	{r4, lr}
d005156e:	4c65      	ldr	r4, [pc, #404]	; (d0051704 <entityTurnLocal+0x19c>)
d0051570:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0051574:	ed2d 8b04 	vpush	{d8-d9}
d0051578:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d005157c:	b1f3      	cbz	r3, d00515bc <entityTurnLocal+0x54>
d005157e:	69a3      	ldr	r3, [r4, #24]
d0051580:	b1e3      	cbz	r3, d00515bc <entityTurnLocal+0x54>
d0051582:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0051586:	eeb0 9a40 	vmov.f32	s18, s0
d005158a:	eef0 8a60 	vmov.f32	s17, s1
d005158e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051592:	eeb0 8a41 	vmov.f32	s16, s2
d0051596:	f040 8081 	bne.w	d005169c <entityTurnLocal+0x134>
d005159a:	eef5 8a40 	vcmp.f32	s17, #0.0
d005159e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00515a2:	d148      	bne.n	d0051636 <entityTurnLocal+0xce>
d00515a4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00515a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00515ac:	d10a      	bne.n	d00515c4 <entityTurnLocal+0x5c>
d00515ae:	4620      	mov	r0, r4
d00515b0:	ecbd 8b04 	vpop	{d8-d9}
d00515b4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00515b8:	f7ff bc18 	b.w	d0050dec <normalizeEntity.part.0>
d00515bc:	ecbd 8b04 	vpop	{d8-d9}
d00515c0:	bd10      	pop	{r4, pc}
d00515c2:	4770      	bx	lr
d00515c4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00515c8:	eeb0 3a48 	vmov.f32	s6, s16
d00515cc:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00515d0:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00515d4:	edd4 1a07 	vldr	s3, [r4, #28]
d00515d8:	ed94 2a08 	vldr	s4, [r4, #32]
d00515dc:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d00515e0:	f7fe feaa 	bl	d0050338 <rotateAroundAxis>
d00515e4:	eef0 6a40 	vmov.f32	s13, s0
d00515e8:	eeb0 7a60 	vmov.f32	s14, s1
d00515ec:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00515f0:	eef0 7a41 	vmov.f32	s15, s2
d00515f4:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00515f8:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00515fc:	eeb0 3a48 	vmov.f32	s6, s16
d0051600:	edd4 1a07 	vldr	s3, [r4, #28]
d0051604:	ed94 2a08 	vldr	s4, [r4, #32]
d0051608:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d005160c:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051610:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051614:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051618:	f7fe fe8e 	bl	d0050338 <rotateAroundAxis>
d005161c:	4620      	mov	r0, r4
d005161e:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051622:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051626:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005162a:	ecbd 8b04 	vpop	{d8-d9}
d005162e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0051632:	f7ff bbdb 	b.w	d0050dec <normalizeEntity.part.0>
d0051636:	ed94 0a07 	vldr	s0, [r4, #28]
d005163a:	eeb0 3a68 	vmov.f32	s6, s17
d005163e:	edd4 0a08 	vldr	s1, [r4, #32]
d0051642:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051646:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d005164a:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d005164e:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0051652:	f7fe fe71 	bl	d0050338 <rotateAroundAxis>
d0051656:	eef0 6a40 	vmov.f32	s13, s0
d005165a:	eeb0 7a60 	vmov.f32	s14, s1
d005165e:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051662:	eef0 7a41 	vmov.f32	s15, s2
d0051666:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005166a:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d005166e:	eeb0 3a68 	vmov.f32	s6, s17
d0051672:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0051676:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d005167a:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d005167e:	edc4 6a07 	vstr	s13, [r4, #28]
d0051682:	ed84 7a08 	vstr	s14, [r4, #32]
d0051686:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005168a:	f7fe fe55 	bl	d0050338 <rotateAroundAxis>
d005168e:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051692:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051696:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005169a:	e783      	b.n	d00515a4 <entityTurnLocal+0x3c>
d005169c:	eeb0 3a40 	vmov.f32	s6, s0
d00516a0:	edd4 0a08 	vldr	s1, [r4, #32]
d00516a4:	ed94 0a07 	vldr	s0, [r4, #28]
d00516a8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00516ac:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d00516b0:	ed94 2a0e 	vldr	s4, [r4, #56]	; 0x38
d00516b4:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d00516b8:	f7fe fe3e 	bl	d0050338 <rotateAroundAxis>
d00516bc:	eef0 6a40 	vmov.f32	s13, s0
d00516c0:	eeb0 7a60 	vmov.f32	s14, s1
d00516c4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00516c8:	eef0 7a41 	vmov.f32	s15, s2
d00516cc:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00516d0:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00516d4:	eeb0 3a49 	vmov.f32	s6, s18
d00516d8:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d00516dc:	ed94 2a0e 	vldr	s4, [r4, #56]	; 0x38
d00516e0:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d00516e4:	edc4 6a07 	vstr	s13, [r4, #28]
d00516e8:	ed84 7a08 	vstr	s14, [r4, #32]
d00516ec:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00516f0:	f7fe fe22 	bl	d0050338 <rotateAroundAxis>
d00516f4:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00516f8:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00516fc:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051700:	e74b      	b.n	d005159a <entityTurnLocal+0x32>
d0051702:	bf00      	nop
d0051704:	d00f4740 	.word	0xd00f4740

d0051708 <entityRotation>:
d0051708:	28ff      	cmp	r0, #255	; 0xff
d005170a:	d809      	bhi.n	d0051720 <entityRotation+0x18>
d005170c:	4a05      	ldr	r2, [pc, #20]	; (d0051724 <entityRotation+0x1c>)
d005170e:	eb02 13c0 	add.w	r3, r2, r0, lsl #7
d0051712:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0051716:	b11a      	cbz	r2, d0051720 <entityRotation+0x18>
d0051718:	699b      	ldr	r3, [r3, #24]
d005171a:	b10b      	cbz	r3, d0051720 <entityRotation+0x18>
d005171c:	f7ff bbbc 	b.w	d0050e98 <entityRotation.part.0>
d0051720:	4770      	bx	lr
d0051722:	bf00      	nop
d0051724:	d00f4740 	.word	0xd00f4740

d0051728 <createBox>:
d0051728:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005172c:	ed2d 8b04 	vpush	{d8-d9}
d0051730:	b0e1      	sub	sp, #388	; 0x184
d0051732:	f04f 0824 	mov.w	r8, #36	; 0x24
d0051736:	4606      	mov	r6, r0
d0051738:	2100      	movs	r1, #0
d005173a:	f20d 1547 	addw	r5, sp, #327	; 0x147
d005173e:	4642      	mov	r2, r8
d0051740:	eeb0 8a41 	vmov.f32	s16, s2
d0051744:	9601      	str	r6, [sp, #4]
d0051746:	f025 051f 	bic.w	r5, r5, #31
d005174a:	eeb0 9a40 	vmov.f32	s18, s0
d005174e:	eef0 8a60 	vmov.f32	s17, s1
d0051752:	f04f 090c 	mov.w	r9, #12
d0051756:	f105 001c 	add.w	r0, r5, #28
d005175a:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d005175e:	f003 fd4f 	bl	d0055200 <memset>
d0051762:	2308      	movs	r3, #8
d0051764:	2060      	movs	r0, #96	; 0x60
d0051766:	f04f 0b04 	mov.w	fp, #4
d005176a:	606b      	str	r3, [r5, #4]
d005176c:	f003 fd1c 	bl	d00551a8 <malloc>
d0051770:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d0051774:	4604      	mov	r4, r0
d0051776:	2060      	movs	r0, #96	; 0x60
d0051778:	f8c5 900c 	str.w	r9, [r5, #12]
d005177c:	602c      	str	r4, [r5, #0]
d005177e:	2604      	movs	r6, #4
d0051780:	ee29 0a01 	vmul.f32	s0, s18, s2
d0051784:	ee68 0a81 	vmul.f32	s1, s17, s2
d0051788:	ee28 1a01 	vmul.f32	s2, s16, s2
d005178c:	eef1 6a40 	vneg.f32	s13, s0
d0051790:	ed84 0a03 	vstr	s0, [r4, #12]
d0051794:	eeb1 7a60 	vneg.f32	s14, s1
d0051798:	ed84 0a06 	vstr	s0, [r4, #24]
d005179c:	eef1 7a41 	vneg.f32	s15, s2
d00517a0:	ed84 1a08 	vstr	s2, [r4, #32]
d00517a4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00517a8:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00517ac:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d00517b0:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d00517b4:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d00517b8:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d00517bc:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d00517c0:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d00517c4:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d00517c8:	edc4 6a00 	vstr	s13, [r4]
d00517cc:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d00517d0:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d00517d4:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d00517d8:	ed84 7a01 	vstr	s14, [r4, #4]
d00517dc:	ed84 7a04 	vstr	s14, [r4, #16]
d00517e0:	ed84 7a07 	vstr	s14, [r4, #28]
d00517e4:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d00517e8:	edc4 7a02 	vstr	s15, [r4, #8]
d00517ec:	edc4 7a05 	vstr	s15, [r4, #20]
d00517f0:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d00517f4:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d00517f8:	f003 fcd6 	bl	d00551a8 <malloc>
d00517fc:	4607      	mov	r7, r0
d00517fe:	2260      	movs	r2, #96	; 0x60
d0051800:	a802      	add	r0, sp, #8
d0051802:	4987      	ldr	r1, [pc, #540]	; (d0051a20 <createBox+0x2f8>)
d0051804:	60af      	str	r7, [r5, #8]
d0051806:	f003 fced 	bl	d00551e4 <memcpy>
d005180a:	a902      	add	r1, sp, #8
d005180c:	2260      	movs	r2, #96	; 0x60
d005180e:	4638      	mov	r0, r7
d0051810:	f003 fce8 	bl	d00551e4 <memcpy>
d0051814:	4650      	mov	r0, sl
d0051816:	f8c5 9014 	str.w	r9, [r5, #20]
d005181a:	f003 fcc5 	bl	d00551a8 <malloc>
d005181e:	4607      	mov	r7, r0
d0051820:	4652      	mov	r2, sl
d0051822:	a81a      	add	r0, sp, #104	; 0x68
d0051824:	2100      	movs	r1, #0
d0051826:	612f      	str	r7, [r5, #16]
d0051828:	f003 fcea 	bl	d0055200 <memset>
d005182c:	f04f 0c02 	mov.w	ip, #2
d0051830:	4638      	mov	r0, r7
d0051832:	2705      	movs	r7, #5
d0051834:	4652      	mov	r2, sl
d0051836:	f04f 0903 	mov.w	r9, #3
d005183a:	f04f 0a06 	mov.w	sl, #6
d005183e:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d0051842:	f04f 0e01 	mov.w	lr, #1
d0051846:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d005184a:	f04f 0804 	mov.w	r8, #4
d005184e:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d0051852:	2307      	movs	r3, #7
d0051854:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d0051858:	2122      	movs	r1, #34	; 0x22
d005185a:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d005185e:	f04f 0c06 	mov.w	ip, #6
d0051862:	9724      	str	r7, [sp, #144]	; 0x90
d0051864:	972c      	str	r7, [sp, #176]	; 0xb0
d0051866:	972f      	str	r7, [sp, #188]	; 0xbc
d0051868:	2707      	movs	r7, #7
d005186a:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d005186e:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d0051872:	f04f 0905 	mov.w	r9, #5
d0051876:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d005187a:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d005187e:	f04f 0a01 	mov.w	sl, #1
d0051882:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d0051886:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d005188a:	f04f 0801 	mov.w	r8, #1
d005188e:	933c      	str	r3, [sp, #240]	; 0xf0
d0051890:	2323      	movs	r3, #35	; 0x23
d0051892:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d0051896:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d005189a:	f04f 0e25 	mov.w	lr, #37	; 0x25
d005189e:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d00518a2:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d00518a6:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d00518aa:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d00518ae:	a91a      	add	r1, sp, #104	; 0x68
d00518b0:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d00518b4:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d00518b8:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d00518bc:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d00518c0:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d00518c4:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d00518c8:	f04f 0b06 	mov.w	fp, #6
d00518cc:	2602      	movs	r6, #2
d00518ce:	2706      	movs	r7, #6
d00518d0:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d00518d4:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d00518d8:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d00518dc:	f04f 0802 	mov.w	r8, #2
d00518e0:	f04f 0907 	mov.w	r9, #7
d00518e4:	f04f 0a03 	mov.w	sl, #3
d00518e8:	f04f 0b07 	mov.w	fp, #7
d00518ec:	2603      	movs	r6, #3
d00518ee:	2704      	movs	r7, #4
d00518f0:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d00518f4:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d00518f8:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d00518fc:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d0051900:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d0051904:	f003 fc6e 	bl	d00551e4 <memcpy>
d0051908:	edd4 7a01 	vldr	s15, [r4, #4]
d005190c:	ed94 6a04 	vldr	s12, [r4, #16]
d0051910:	4628      	mov	r0, r5
d0051912:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d0051916:	ee67 6aa7 	vmul.f32	s13, s15, s15
d005191a:	ed94 7a07 	vldr	s14, [r4, #28]
d005191e:	ee66 7a06 	vmul.f32	s15, s12, s12
d0051922:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d0051926:	ee25 4aa5 	vmul.f32	s8, s11, s11
d005192a:	ed94 3a00 	vldr	s6, [r4]
d005192e:	ee27 7a07 	vmul.f32	s14, s14, s14
d0051932:	edd4 3a03 	vldr	s7, [r4, #12]
d0051936:	ee66 4a06 	vmul.f32	s9, s12, s12
d005193a:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d005193e:	eee3 6a03 	vfma.f32	s13, s6, s6
d0051942:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d0051946:	eee3 7aa3 	vfma.f32	s15, s7, s7
d005194a:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d005194e:	ee25 5a05 	vmul.f32	s10, s10, s10
d0051952:	edd4 2a06 	vldr	s5, [r4, #24]
d0051956:	ee65 5aa5 	vmul.f32	s11, s11, s11
d005195a:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d005195e:	ee26 6a06 	vmul.f32	s12, s12, s12
d0051962:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d0051966:	eea2 7aa2 	vfma.f32	s14, s5, s5
d005196a:	eea3 4a03 	vfma.f32	s8, s6, s6
d005196e:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0051972:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d0051976:	eee3 4aa3 	vfma.f32	s9, s7, s7
d005197a:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d005197e:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0051982:	eee3 5a03 	vfma.f32	s11, s6, s6
d0051986:	ed94 3a02 	vldr	s6, [r4, #8]
d005198a:	eea3 6aa3 	vfma.f32	s12, s7, s7
d005198e:	edd4 3a05 	vldr	s7, [r4, #20]
d0051992:	eee3 6a03 	vfma.f32	s13, s6, s6
d0051996:	edd4 2a08 	vldr	s5, [r4, #32]
d005199a:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d005199e:	eee3 7aa3 	vfma.f32	s15, s7, s7
d00519a2:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d00519a6:	eea2 7aa2 	vfma.f32	s14, s5, s5
d00519aa:	eea3 4a03 	vfma.f32	s8, s6, s6
d00519ae:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d00519b2:	eee3 4aa3 	vfma.f32	s9, s7, s7
d00519b6:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d00519ba:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d00519be:	eea2 5aa2 	vfma.f32	s10, s5, s5
d00519c2:	eee3 5a03 	vfma.f32	s11, s6, s6
d00519c6:	ed9f 3a17 	vldr	s6, [pc, #92]	; d0051a24 <createBox+0x2fc>
d00519ca:	eea3 6aa3 	vfma.f32	s12, s7, s7
d00519ce:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d00519d2:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d00519d6:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d00519da:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d00519de:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d00519e2:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d00519e6:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d00519ea:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d00519ee:	eeb1 7ae7 	vsqrt.f32	s14, s15
d00519f2:	ed85 7a06 	vstr	s14, [r5, #24]
d00519f6:	f7fc ff43 	bl	d004e880 <meshSetDefaultMaterial>
d00519fa:	9e01      	ldr	r6, [sp, #4]
d00519fc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00519fe:	4634      	mov	r4, r6
d0051a00:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051a02:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051a04:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051a06:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051a08:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051a0a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051a0e:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0051a12:	4630      	mov	r0, r6
d0051a14:	b061      	add	sp, #388	; 0x184
d0051a16:	ecbd 8b04 	vpop	{d8-d9}
d0051a1a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051a1e:	bf00      	nop
d0051a20:	d00575a0 	.word	0xd00575a0
d0051a24:	00000000 	.word	0x00000000

d0051a28 <copyMesh>:
d0051a28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051a2c:	460f      	mov	r7, r1
d0051a2e:	b083      	sub	sp, #12
d0051a30:	2240      	movs	r2, #64	; 0x40
d0051a32:	2100      	movs	r1, #0
d0051a34:	4606      	mov	r6, r0
d0051a36:	f003 fbe3 	bl	d0055200 <memset>
d0051a3a:	2f00      	cmp	r7, #0
d0051a3c:	d077      	beq.n	d0051b2e <copyMesh+0x106>
d0051a3e:	687b      	ldr	r3, [r7, #4]
d0051a40:	697a      	ldr	r2, [r7, #20]
d0051a42:	2b00      	cmp	r3, #0
d0051a44:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0051a48:	9301      	str	r3, [sp, #4]
d0051a4a:	9200      	str	r2, [sp, #0]
d0051a4c:	dc59      	bgt.n	d0051b02 <copyMesh+0xda>
d0051a4e:	f1b8 0f00 	cmp.w	r8, #0
d0051a52:	f04f 0900 	mov.w	r9, #0
d0051a56:	dc5d      	bgt.n	d0051b14 <copyMesh+0xec>
d0051a58:	9b00      	ldr	r3, [sp, #0]
d0051a5a:	f04f 0a00 	mov.w	sl, #0
d0051a5e:	2b00      	cmp	r3, #0
d0051a60:	dc60      	bgt.n	d0051b24 <copyMesh+0xfc>
d0051a62:	f04f 0c00 	mov.w	ip, #0
d0051a66:	9b01      	ldr	r3, [sp, #4]
d0051a68:	2b00      	cmp	r3, #0
d0051a6a:	dd0f      	ble.n	d0051a8c <copyMesh+0x64>
d0051a6c:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0051a70:	f8d7 e000 	ldr.w	lr, [r7]
d0051a74:	2300      	movs	r3, #0
d0051a76:	00ad      	lsls	r5, r5, #2
d0051a78:	eb0e 0203 	add.w	r2, lr, r3
d0051a7c:	eb09 0403 	add.w	r4, r9, r3
d0051a80:	330c      	adds	r3, #12
d0051a82:	ca07      	ldmia	r2, {r0, r1, r2}
d0051a84:	429d      	cmp	r5, r3
d0051a86:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0051a8a:	d1f5      	bne.n	d0051a78 <copyMesh+0x50>
d0051a8c:	f1b8 0f00 	cmp.w	r8, #0
d0051a90:	dd0b      	ble.n	d0051aaa <copyMesh+0x82>
d0051a92:	68bc      	ldr	r4, [r7, #8]
d0051a94:	2300      	movs	r3, #0
d0051a96:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0051a9a:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0051a9e:	3301      	adds	r3, #1
d0051aa0:	c903      	ldmia	r1, {r0, r1}
d0051aa2:	4598      	cmp	r8, r3
d0051aa4:	e882 0003 	stmia.w	r2, {r0, r1}
d0051aa8:	d1f5      	bne.n	d0051a96 <copyMesh+0x6e>
d0051aaa:	9b00      	ldr	r3, [sp, #0]
d0051aac:	2b00      	cmp	r3, #0
d0051aae:	dd0e      	ble.n	d0051ace <copyMesh+0xa6>
d0051ab0:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0051ab4:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0051ab8:	2400      	movs	r4, #0
d0051aba:	eb0b 0304 	add.w	r3, fp, r4
d0051abe:	eb0c 0504 	add.w	r5, ip, r4
d0051ac2:	3410      	adds	r4, #16
d0051ac4:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0051ac6:	4574      	cmp	r4, lr
d0051ac8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051acc:	d1f5      	bne.n	d0051aba <copyMesh+0x92>
d0051ace:	9a01      	ldr	r2, [sp, #4]
d0051ad0:	f107 0520 	add.w	r5, r7, #32
d0051ad4:	69bb      	ldr	r3, [r7, #24]
d0051ad6:	f106 0420 	add.w	r4, r6, #32
d0051ada:	6072      	str	r2, [r6, #4]
d0051adc:	9a00      	ldr	r2, [sp, #0]
d0051ade:	61b3      	str	r3, [r6, #24]
d0051ae0:	6172      	str	r2, [r6, #20]
d0051ae2:	f8c6 9000 	str.w	r9, [r6]
d0051ae6:	f8c6 c010 	str.w	ip, [r6, #16]
d0051aea:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051aec:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051aee:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051af2:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0051af6:	4630      	mov	r0, r6
d0051af8:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0051afc:	b003      	add	sp, #12
d0051afe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051b02:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0051b06:	0080      	lsls	r0, r0, #2
d0051b08:	f003 fb4e 	bl	d00551a8 <malloc>
d0051b0c:	f1b8 0f00 	cmp.w	r8, #0
d0051b10:	4681      	mov	r9, r0
d0051b12:	dda1      	ble.n	d0051a58 <copyMesh+0x30>
d0051b14:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0051b18:	f003 fb46 	bl	d00551a8 <malloc>
d0051b1c:	9b00      	ldr	r3, [sp, #0]
d0051b1e:	4682      	mov	sl, r0
d0051b20:	2b00      	cmp	r3, #0
d0051b22:	dd9e      	ble.n	d0051a62 <copyMesh+0x3a>
d0051b24:	0118      	lsls	r0, r3, #4
d0051b26:	f003 fb3f 	bl	d00551a8 <malloc>
d0051b2a:	4684      	mov	ip, r0
d0051b2c:	e79b      	b.n	d0051a66 <copyMesh+0x3e>
d0051b2e:	2300      	movs	r3, #0
d0051b30:	4630      	mov	r0, r6
d0051b32:	e9c6 7700 	strd	r7, r7, [r6]
d0051b36:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0051b3a:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0051b3e:	61b3      	str	r3, [r6, #24]
d0051b40:	b003      	add	sp, #12
d0051b42:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051b46:	bf00      	nop

d0051b48 <entityLookAtPosition>:
d0051b48:	28ff      	cmp	r0, #255	; 0xff
d0051b4a:	b530      	push	{r4, r5, lr}
d0051b4c:	ed2d 8b04 	vpush	{d8-d9}
d0051b50:	b08d      	sub	sp, #52	; 0x34
d0051b52:	d848      	bhi.n	d0051be6 <entityLookAtPosition+0x9e>
d0051b54:	4b30      	ldr	r3, [pc, #192]	; (d0051c18 <entityLookAtPosition+0xd0>)
d0051b56:	4604      	mov	r4, r0
d0051b58:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0051b5c:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0051b60:	2a00      	cmp	r2, #0
d0051b62:	d040      	beq.n	d0051be6 <entityLookAtPosition+0x9e>
d0051b64:	699a      	ldr	r2, [r3, #24]
d0051b66:	2a00      	cmp	r2, #0
d0051b68:	d03d      	beq.n	d0051be6 <entityLookAtPosition+0x9e>
d0051b6a:	edd3 8a00 	vldr	s17, [r3]
d0051b6e:	460d      	mov	r5, r1
d0051b70:	ed93 9a01 	vldr	s18, [r3, #4]
d0051b74:	ee70 8a68 	vsub.f32	s17, s0, s17
d0051b78:	ed93 8a02 	vldr	s16, [r3, #8]
d0051b7c:	ee30 9ac9 	vsub.f32	s18, s1, s18
d0051b80:	ee31 8a48 	vsub.f32	s16, s2, s16
d0051b84:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051b88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b8c:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0051b90:	bf14      	ite	ne
d0051b92:	2300      	movne	r3, #0
d0051b94:	2301      	moveq	r3, #1
d0051b96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b9a:	bf18      	it	ne
d0051b9c:	2300      	movne	r3, #0
d0051b9e:	b123      	cbz	r3, d0051baa <entityLookAtPosition+0x62>
d0051ba0:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051ba4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051ba8:	d01d      	beq.n	d0051be6 <entityLookAtPosition+0x9e>
d0051baa:	eef0 0a48 	vmov.f32	s1, s16
d0051bae:	ee28 8a08 	vmul.f32	s16, s16, s16
d0051bb2:	eeb0 0a68 	vmov.f32	s0, s17
d0051bb6:	f004 fedf 	bl	d0056978 <atan2f>
d0051bba:	eef0 7a40 	vmov.f32	s15, s0
d0051bbe:	eea8 8aa8 	vfma.f32	s16, s17, s17
d0051bc2:	eeb0 0a49 	vmov.f32	s0, s18
d0051bc6:	eeb0 9a67 	vmov.f32	s18, s15
d0051bca:	eef1 0ac8 	vsqrt.f32	s1, s16
d0051bce:	f004 fed3 	bl	d0056978 <atan2f>
d0051bd2:	eeb1 8a40 	vneg.f32	s16, s0
d0051bd6:	b9a5      	cbnz	r5, d0051c02 <entityLookAtPosition+0xba>
d0051bd8:	2300      	movs	r3, #0
d0051bda:	ed8d 8a09 	vstr	s16, [sp, #36]	; 0x24
d0051bde:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d0051be2:	930b      	str	r3, [sp, #44]	; 0x2c
d0051be4:	e003      	b.n	d0051bee <entityLookAtPosition+0xa6>
d0051be6:	2300      	movs	r3, #0
d0051be8:	9309      	str	r3, [sp, #36]	; 0x24
d0051bea:	930a      	str	r3, [sp, #40]	; 0x28
d0051bec:	930b      	str	r3, [sp, #44]	; 0x2c
d0051bee:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0051bf2:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0051bf6:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d0051bfa:	b00d      	add	sp, #52	; 0x34
d0051bfc:	ecbd 8b04 	vpop	{d8-d9}
d0051c00:	bd30      	pop	{r4, r5, pc}
d0051c02:	eef0 0a48 	vmov.f32	s1, s16
d0051c06:	4620      	mov	r0, r4
d0051c08:	eeb0 0a49 	vmov.f32	s0, s18
d0051c0c:	2101      	movs	r1, #1
d0051c0e:	ed9f 1a03 	vldr	s2, [pc, #12]	; d0051c1c <entityLookAtPosition+0xd4>
d0051c12:	f7ff f941 	bl	d0050e98 <entityRotation.part.0>
d0051c16:	e7df      	b.n	d0051bd8 <entityLookAtPosition+0x90>
d0051c18:	d00f4740 	.word	0xd00f4740
d0051c1c:	00000000 	.word	0x00000000

d0051c20 <entityAllowHit>:
d0051c20:	28ff      	cmp	r0, #255	; 0xff
d0051c22:	d813      	bhi.n	d0051c4c <entityAllowHit+0x2c>
d0051c24:	4b0a      	ldr	r3, [pc, #40]	; (d0051c50 <entityAllowHit+0x30>)
d0051c26:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0051c2a:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0051c2e:	b16b      	cbz	r3, d0051c4c <entityAllowHit+0x2c>
d0051c30:	6983      	ldr	r3, [r0, #24]
d0051c32:	b15b      	cbz	r3, d0051c4c <entityAllowHit+0x2c>
d0051c34:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d0051c38:	b121      	cbz	r1, d0051c44 <entityAllowHit+0x24>
d0051c3a:	f043 0302 	orr.w	r3, r3, #2
d0051c3e:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0051c42:	4770      	bx	lr
d0051c44:	f023 0302 	bic.w	r3, r3, #2
d0051c48:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0051c4c:	4770      	bx	lr
d0051c4e:	bf00      	nop
d0051c50:	d00f4740 	.word	0xd00f4740

d0051c54 <entityVisible>:
d0051c54:	28ff      	cmp	r0, #255	; 0xff
d0051c56:	d813      	bhi.n	d0051c80 <entityVisible+0x2c>
d0051c58:	4b0a      	ldr	r3, [pc, #40]	; (d0051c84 <entityVisible+0x30>)
d0051c5a:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0051c5e:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0051c62:	b16b      	cbz	r3, d0051c80 <entityVisible+0x2c>
d0051c64:	6983      	ldr	r3, [r0, #24]
d0051c66:	b15b      	cbz	r3, d0051c80 <entityVisible+0x2c>
d0051c68:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d0051c6c:	b121      	cbz	r1, d0051c78 <entityVisible+0x24>
d0051c6e:	f043 0301 	orr.w	r3, r3, #1
d0051c72:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0051c76:	4770      	bx	lr
d0051c78:	f023 0301 	bic.w	r3, r3, #1
d0051c7c:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0051c80:	4770      	bx	lr
d0051c82:	bf00      	nop
d0051c84:	d00f4740 	.word	0xd00f4740

d0051c88 <entitySweepRaycastTest>:
d0051c88:	b5f0      	push	{r4, r5, r6, r7, lr}
d0051c8a:	4f16      	ldr	r7, [pc, #88]	; (d0051ce4 <entitySweepRaycastTest+0x5c>)
d0051c8c:	b08b      	sub	sp, #44	; 0x2c
d0051c8e:	4616      	mov	r6, r2
d0051c90:	7c3c      	ldrb	r4, [r7, #16]
d0051c92:	7c7d      	ldrb	r5, [r7, #17]
d0051c94:	f897 c012 	ldrb.w	ip, [r7, #18]
d0051c98:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
d0051c9c:	7cff      	ldrb	r7, [r7, #19]
d0051c9e:	461d      	mov	r5, r3
d0051ca0:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
d0051ca4:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d0051ca8:	6823      	ldr	r3, [r4, #0]
d0051caa:	685c      	ldr	r4, [r3, #4]
d0051cac:	b102      	cbz	r2, d0051cb0 <entitySweepRaycastTest+0x28>
d0051cae:	aa03      	add	r2, sp, #12
d0051cb0:	b1b5      	cbz	r5, d0051ce0 <entitySweepRaycastTest+0x58>
d0051cb2:	ab06      	add	r3, sp, #24
d0051cb4:	4f0c      	ldr	r7, [pc, #48]	; (d0051ce8 <entitySweepRaycastTest+0x60>)
d0051cb6:	9700      	str	r7, [sp, #0]
d0051cb8:	47a0      	blx	r4
d0051cba:	b178      	cbz	r0, d0051cdc <entitySweepRaycastTest+0x54>
d0051cbc:	b12e      	cbz	r6, d0051cca <entitySweepRaycastTest+0x42>
d0051cbe:	9903      	ldr	r1, [sp, #12]
d0051cc0:	9a04      	ldr	r2, [sp, #16]
d0051cc2:	9b05      	ldr	r3, [sp, #20]
d0051cc4:	6031      	str	r1, [r6, #0]
d0051cc6:	6072      	str	r2, [r6, #4]
d0051cc8:	60b3      	str	r3, [r6, #8]
d0051cca:	b13d      	cbz	r5, d0051cdc <entitySweepRaycastTest+0x54>
d0051ccc:	9c07      	ldr	r4, [sp, #28]
d0051cce:	9908      	ldr	r1, [sp, #32]
d0051cd0:	9a06      	ldr	r2, [sp, #24]
d0051cd2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0051cd4:	606c      	str	r4, [r5, #4]
d0051cd6:	60a9      	str	r1, [r5, #8]
d0051cd8:	602a      	str	r2, [r5, #0]
d0051cda:	60eb      	str	r3, [r5, #12]
d0051cdc:	b00b      	add	sp, #44	; 0x2c
d0051cde:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0051ce0:	462b      	mov	r3, r5
d0051ce2:	e7e7      	b.n	d0051cb4 <entitySweepRaycastTest+0x2c>
d0051ce4:	2001f000 	.word	0x2001f000
d0051ce8:	d00f4740 	.word	0xd00f4740

d0051cec <entityMatchOrientationCamera>:
d0051cec:	28ff      	cmp	r0, #255	; 0xff
d0051cee:	d821      	bhi.n	d0051d34 <entityMatchOrientationCamera+0x48>
d0051cf0:	b470      	push	{r4, r5, r6}
d0051cf2:	4c11      	ldr	r4, [pc, #68]	; (d0051d38 <entityMatchOrientationCamera+0x4c>)
d0051cf4:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0051cf8:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0051cfc:	b1c3      	cbz	r3, d0051d30 <entityMatchOrientationCamera+0x44>
d0051cfe:	69a3      	ldr	r3, [r4, #24]
d0051d00:	b1b3      	cbz	r3, d0051d30 <entityMatchOrientationCamera+0x44>
d0051d02:	b1a9      	cbz	r1, d0051d30 <entityMatchOrientationCamera+0x44>
d0051d04:	f101 0218 	add.w	r2, r1, #24
d0051d08:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0051d0c:	f101 0624 	add.w	r6, r1, #36	; 0x24
d0051d10:	f101 0330 	add.w	r3, r1, #48	; 0x30
d0051d14:	ca07      	ldmia	r2, {r0, r1, r2}
d0051d16:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0051d1a:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0051d1e:	f104 0534 	add.w	r5, r4, #52	; 0x34
d0051d22:	341c      	adds	r4, #28
d0051d24:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0051d28:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051d2c:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0051d30:	bc70      	pop	{r4, r5, r6}
d0051d32:	4770      	bx	lr
d0051d34:	4770      	bx	lr
d0051d36:	bf00      	nop
d0051d38:	d00f4740 	.word	0xd00f4740

d0051d3c <buildLightingCLUT>:
d0051d3c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051d40:	f1b2 0900 	subs.w	r9, r2, #0
d0051d44:	b085      	sub	sp, #20
d0051d46:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0051d48:	f340 8212 	ble.w	d0052170 <buildLightingCLUT+0x434>
d0051d4c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0051d50:	4f24      	ldr	r7, [pc, #144]	; (d0051de4 <buildLightingCLUT+0xa8>)
d0051d52:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0051d56:	edd4 4a00 	vldr	s9, [r4]
d0051d5a:	ed94 5a01 	vldr	s10, [r4, #4]
d0051d5e:	eb09 0807 	add.w	r8, r9, r7
d0051d62:	edd4 5a02 	vldr	s11, [r4, #8]
d0051d66:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d0051d6a:	ed94 6a03 	vldr	s12, [r4, #12]
d0051d6e:	44bc      	add	ip, r7
d0051d70:	edd4 6a04 	vldr	s13, [r4, #16]
d0051d74:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0051d78:	3904      	subs	r1, #4
d0051d7a:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0051d7e:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0051d82:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0051de8 <buildLightingCLUT+0xac>
d0051d86:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0051d8a:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0051d8e:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0051d92:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0051d96:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0051d9a:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0051d9e:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0051da2:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0051da6:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0051daa:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0051dae:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0051db2:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0051db6:	0e1c      	lsrs	r4, r3, #24
d0051db8:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0051dbc:	b2da      	uxtb	r2, r3
d0051dbe:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0051dc2:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0051dc6:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0051dca:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0051dce:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0051dd2:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0051dd6:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0051dda:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0051dde:	9601      	str	r6, [sp, #4]
d0051de0:	e004      	b.n	d0051dec <buildLightingCLUT+0xb0>
d0051de2:	bf00      	nop
d0051de4:	4000001f 	.word	0x4000001f
d0051de8:	00000000 	.word	0x00000000
d0051dec:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0051df0:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0051df4:	0e1e      	lsrs	r6, r3, #24
d0051df6:	fa5f fa83 	uxtb.w	sl, r3
d0051dfa:	4549      	cmp	r1, r9
d0051dfc:	ee07 6a10 	vmov	s14, r6
d0051e00:	eba5 060b 	sub.w	r6, r5, fp
d0051e04:	ee04 ba10 	vmov	s8, fp
d0051e08:	ee07 6a90 	vmov	s15, r6
d0051e0c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0051e10:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0051e14:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0051e18:	ee02 6a10 	vmov	s4, r6
d0051e1c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051e20:	eba2 060a 	sub.w	r6, r2, sl
d0051e24:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0051e28:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0051e2c:	ee04 aa10 	vmov	s8, sl
d0051e30:	ee02 6a90 	vmov	s5, r6
d0051e34:	eba0 0603 	sub.w	r6, r0, r3
d0051e38:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0051e3c:	ee07 3a90 	vmov	s15, r3
d0051e40:	eea4 7a82 	vfma.f32	s14, s9, s4
d0051e44:	ee03 6a10 	vmov	s6, r6
d0051e48:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0051e4c:	9e01      	ldr	r6, [sp, #4]
d0051e4e:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0051e52:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0051e56:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051e5a:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0051e5e:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0051e62:	eee4 7a83 	vfma.f32	s15, s9, s6
d0051e66:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0051e6a:	edcd 3a02 	vstr	s7, [sp, #8]
d0051e6e:	f89d a008 	ldrb.w	sl, [sp, #8]
d0051e72:	ee17 3a10 	vmov	r3, s14
d0051e76:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0051e7a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0051e7e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0051e82:	ed8d 7a02 	vstr	s14, [sp, #8]
d0051e86:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0051e8a:	f89d b008 	ldrb.w	fp, [sp, #8]
d0051e8e:	edcd 7a03 	vstr	s15, [sp, #12]
d0051e92:	ea43 030b 	orr.w	r3, r3, fp
d0051e96:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0051e9a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0051e9e:	f846 3f04 	str.w	r3, [r6, #4]!
d0051ea2:	680b      	ldr	r3, [r1, #0]
d0051ea4:	9601      	str	r6, [sp, #4]
d0051ea6:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0051eaa:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0051eae:	fa5f fa83 	uxtb.w	sl, r3
d0051eb2:	ee07 6a10 	vmov	s14, r6
d0051eb6:	eba5 060b 	sub.w	r6, r5, fp
d0051eba:	ee04 ba10 	vmov	s8, fp
d0051ebe:	ee07 6a90 	vmov	s15, r6
d0051ec2:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0051ec6:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0051eca:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0051ece:	ee02 6a10 	vmov	s4, r6
d0051ed2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051ed6:	eba2 060a 	sub.w	r6, r2, sl
d0051eda:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0051ede:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0051ee2:	ee04 aa10 	vmov	s8, sl
d0051ee6:	ee02 6a90 	vmov	s5, r6
d0051eea:	eba0 0603 	sub.w	r6, r0, r3
d0051eee:	eee5 3a27 	vfma.f32	s7, s10, s15
d0051ef2:	ee07 3a90 	vmov	s15, r3
d0051ef6:	eea5 7a02 	vfma.f32	s14, s10, s4
d0051efa:	ee03 6a10 	vmov	s6, r6
d0051efe:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0051f02:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0051f06:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0051f0a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051f0e:	eea5 4a22 	vfma.f32	s8, s10, s5
d0051f12:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0051f16:	eee5 7a03 	vfma.f32	s15, s10, s6
d0051f1a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0051f1e:	edcd 3a02 	vstr	s7, [sp, #8]
d0051f22:	f89d a008 	ldrb.w	sl, [sp, #8]
d0051f26:	ee17 3a10 	vmov	r3, s14
d0051f2a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0051f2e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0051f32:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0051f36:	ed8d 7a02 	vstr	s14, [sp, #8]
d0051f3a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0051f3e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0051f42:	edcd 7a03 	vstr	s15, [sp, #12]
d0051f46:	ea43 030b 	orr.w	r3, r3, fp
d0051f4a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0051f4e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0051f52:	f848 3f04 	str.w	r3, [r8, #4]!
d0051f56:	680b      	ldr	r3, [r1, #0]
d0051f58:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0051f5c:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0051f60:	fa5f fa83 	uxtb.w	sl, r3
d0051f64:	ee07 6a10 	vmov	s14, r6
d0051f68:	eba5 060b 	sub.w	r6, r5, fp
d0051f6c:	ee04 ba10 	vmov	s8, fp
d0051f70:	ee07 6a90 	vmov	s15, r6
d0051f74:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0051f78:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0051f7c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0051f80:	ee02 6a10 	vmov	s4, r6
d0051f84:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051f88:	eba2 060a 	sub.w	r6, r2, sl
d0051f8c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0051f90:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0051f94:	ee04 aa10 	vmov	s8, sl
d0051f98:	ee02 6a90 	vmov	s5, r6
d0051f9c:	eba0 0603 	sub.w	r6, r0, r3
d0051fa0:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0051fa4:	ee07 3a90 	vmov	s15, r3
d0051fa8:	eea5 7a82 	vfma.f32	s14, s11, s4
d0051fac:	ee03 6a10 	vmov	s6, r6
d0051fb0:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0051fb4:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0051fb8:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0051fbc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051fc0:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0051fc4:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0051fc8:	eee5 7a83 	vfma.f32	s15, s11, s6
d0051fcc:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0051fd0:	edcd 3a02 	vstr	s7, [sp, #8]
d0051fd4:	f89d a008 	ldrb.w	sl, [sp, #8]
d0051fd8:	ee17 3a10 	vmov	r3, s14
d0051fdc:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0051fe0:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0051fe4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0051fe8:	ed8d 7a02 	vstr	s14, [sp, #8]
d0051fec:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0051ff0:	f89d b008 	ldrb.w	fp, [sp, #8]
d0051ff4:	edcd 7a03 	vstr	s15, [sp, #12]
d0051ff8:	ea43 030b 	orr.w	r3, r3, fp
d0051ffc:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052000:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052004:	f84e 3f04 	str.w	r3, [lr, #4]!
d0052008:	680b      	ldr	r3, [r1, #0]
d005200a:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d005200e:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0052012:	fa5f fa83 	uxtb.w	sl, r3
d0052016:	ee07 6a10 	vmov	s14, r6
d005201a:	eba5 060b 	sub.w	r6, r5, fp
d005201e:	ee04 ba10 	vmov	s8, fp
d0052022:	ee07 6a90 	vmov	s15, r6
d0052026:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005202a:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005202e:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052032:	ee02 6a10 	vmov	s4, r6
d0052036:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005203a:	eba2 060a 	sub.w	r6, r2, sl
d005203e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052042:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052046:	ee04 aa10 	vmov	s8, sl
d005204a:	ee02 6a90 	vmov	s5, r6
d005204e:	eba0 0603 	sub.w	r6, r0, r3
d0052052:	eee6 3a27 	vfma.f32	s7, s12, s15
d0052056:	ee07 3a90 	vmov	s15, r3
d005205a:	eea6 7a02 	vfma.f32	s14, s12, s4
d005205e:	ee03 6a10 	vmov	s6, r6
d0052062:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0052066:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005206a:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005206e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052072:	eea6 4a22 	vfma.f32	s8, s12, s5
d0052076:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005207a:	eee6 7a03 	vfma.f32	s15, s12, s6
d005207e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052082:	edcd 3a02 	vstr	s7, [sp, #8]
d0052086:	f89d a008 	ldrb.w	sl, [sp, #8]
d005208a:	ee17 3a10 	vmov	r3, s14
d005208e:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052092:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052096:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005209a:	ed8d 7a02 	vstr	s14, [sp, #8]
d005209e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00520a2:	f89d b008 	ldrb.w	fp, [sp, #8]
d00520a6:	edcd 7a03 	vstr	s15, [sp, #12]
d00520aa:	ea43 030b 	orr.w	r3, r3, fp
d00520ae:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00520b2:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00520b6:	f84c 3f04 	str.w	r3, [ip, #4]!
d00520ba:	680b      	ldr	r3, [r1, #0]
d00520bc:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00520c0:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00520c4:	fa5f fa83 	uxtb.w	sl, r3
d00520c8:	ee07 6a10 	vmov	s14, r6
d00520cc:	eba5 060b 	sub.w	r6, r5, fp
d00520d0:	ee04 ba10 	vmov	s8, fp
d00520d4:	ee07 6a90 	vmov	s15, r6
d00520d8:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00520dc:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00520e0:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00520e4:	ee02 6a10 	vmov	s4, r6
d00520e8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00520ec:	eba2 060a 	sub.w	r6, r2, sl
d00520f0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00520f4:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00520f8:	ee04 aa10 	vmov	s8, sl
d00520fc:	ee02 6a90 	vmov	s5, r6
d0052100:	eba0 0603 	sub.w	r6, r0, r3
d0052104:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0052108:	ee07 3a90 	vmov	s15, r3
d005210c:	eea6 7a82 	vfma.f32	s14, s13, s4
d0052110:	ee03 6a10 	vmov	s6, r6
d0052114:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052118:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005211c:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0052120:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052124:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0052128:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005212c:	eee6 7a83 	vfma.f32	s15, s13, s6
d0052130:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052134:	edcd 3a02 	vstr	s7, [sp, #8]
d0052138:	f89d a008 	ldrb.w	sl, [sp, #8]
d005213c:	ee17 3a10 	vmov	r3, s14
d0052140:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052144:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052148:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005214c:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052150:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052154:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052158:	edcd 7a03 	vstr	s15, [sp, #12]
d005215c:	ea43 030b 	orr.w	r3, r3, fp
d0052160:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052164:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052168:	f847 3f04 	str.w	r3, [r7, #4]!
d005216c:	f47f ae3e 	bne.w	d0051dec <buildLightingCLUT+0xb0>
d0052170:	b005      	add	sp, #20
d0052172:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052176:	bf00      	nop

d0052178 <brightnessToShadeF>:
d0052178:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005217c:	eddf 7a09 	vldr	s15, [pc, #36]	; d00521a4 <brightnessToShadeF+0x2c>
d0052180:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0052184:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0052188:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d005218c:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0052190:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0052194:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0052198:	eea6 7ae7 	vfms.f32	s14, s13, s15
d005219c:	ee27 0a00 	vmul.f32	s0, s14, s0
d00521a0:	4770      	bx	lr
d00521a2:	bf00      	nop
d00521a4:	00000000 	.word	0x00000000

d00521a8 <lightSetRanges>:
d00521a8:	2800      	cmp	r0, #0
d00521aa:	db0c      	blt.n	d00521c6 <lightSetRanges+0x1e>
d00521ac:	4b06      	ldr	r3, [pc, #24]	; (d00521c8 <lightSetRanges+0x20>)
d00521ae:	681b      	ldr	r3, [r3, #0]
d00521b0:	4283      	cmp	r3, r0
d00521b2:	dd08      	ble.n	d00521c6 <lightSetRanges+0x1e>
d00521b4:	4b05      	ldr	r3, [pc, #20]	; (d00521cc <lightSetRanges+0x24>)
d00521b6:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00521ba:	ed80 0a08 	vstr	s0, [r0, #32]
d00521be:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d00521c2:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d00521c6:	4770      	bx	lr
d00521c8:	d005a268 	.word	0xd005a268
d00521cc:	d005a280 	.word	0xd005a280

d00521d0 <lightsGet>:
d00521d0:	4800      	ldr	r0, [pc, #0]	; (d00521d4 <lightsGet+0x4>)
d00521d2:	4770      	bx	lr
d00521d4:	d005a280 	.word	0xd005a280

d00521d8 <lightsGetCount>:
d00521d8:	4b01      	ldr	r3, [pc, #4]	; (d00521e0 <lightsGetCount+0x8>)
d00521da:	6818      	ldr	r0, [r3, #0]
d00521dc:	4770      	bx	lr
d00521de:	bf00      	nop
d00521e0:	d005a268 	.word	0xd005a268

d00521e4 <lightsClear>:
d00521e4:	2100      	movs	r1, #0
d00521e6:	4b03      	ldr	r3, [pc, #12]	; (d00521f4 <lightsClear+0x10>)
d00521e8:	f44f 7200 	mov.w	r2, #512	; 0x200
d00521ec:	4802      	ldr	r0, [pc, #8]	; (d00521f8 <lightsClear+0x14>)
d00521ee:	6019      	str	r1, [r3, #0]
d00521f0:	f003 b806 	b.w	d0055200 <memset>
d00521f4:	d005a268 	.word	0xd005a268
d00521f8:	d005a280 	.word	0xd005a280

d00521fc <lightEnable>:
d00521fc:	4b04      	ldr	r3, [pc, #16]	; (d0052210 <lightEnable+0x14>)
d00521fe:	681b      	ldr	r3, [r3, #0]
d0052200:	4298      	cmp	r0, r3
d0052202:	da03      	bge.n	d005220c <lightEnable+0x10>
d0052204:	4b03      	ldr	r3, [pc, #12]	; (d0052214 <lightEnable+0x18>)
d0052206:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005220a:	62c1      	str	r1, [r0, #44]	; 0x2c
d005220c:	4770      	bx	lr
d005220e:	bf00      	nop
d0052210:	d005a268 	.word	0xd005a268
d0052214:	d005a280 	.word	0xd005a280

d0052218 <addPointLight>:
d0052218:	4918      	ldr	r1, [pc, #96]	; (d005227c <addPointLight+0x64>)
d005221a:	b5f0      	push	{r4, r5, r6, r7, lr}
d005221c:	680c      	ldr	r4, [r1, #0]
d005221e:	b085      	sub	sp, #20
d0052220:	2c07      	cmp	r4, #7
d0052222:	ed8d 0a01 	vstr	s0, [sp, #4]
d0052226:	edcd 0a02 	vstr	s1, [sp, #8]
d005222a:	ed8d 1a03 	vstr	s2, [sp, #12]
d005222e:	dc21      	bgt.n	d0052274 <addPointLight+0x5c>
d0052230:	4d13      	ldr	r5, [pc, #76]	; (d0052280 <addPointLight+0x68>)
d0052232:	01a2      	lsls	r2, r4, #6
d0052234:	2600      	movs	r6, #0
d0052236:	f8df e050 	ldr.w	lr, [pc, #80]	; d0052288 <addPointLight+0x70>
d005223a:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d005223e:	f8df c04c 	ldr.w	ip, [pc, #76]	; d005228c <addPointLight+0x74>
d0052242:	54ae      	strb	r6, [r5, r2]
d0052244:	2200      	movs	r2, #0
d0052246:	4f0f      	ldr	r7, [pc, #60]	; (d0052284 <addPointLight+0x6c>)
d0052248:	1d1d      	adds	r5, r3, #4
d005224a:	62d8      	str	r0, [r3, #44]	; 0x2c
d005224c:	1c66      	adds	r6, r4, #1
d005224e:	611a      	str	r2, [r3, #16]
d0052250:	615a      	str	r2, [r3, #20]
d0052252:	619a      	str	r2, [r3, #24]
d0052254:	edc3 1a07 	vstr	s3, [r3, #28]
d0052258:	f8c3 e020 	str.w	lr, [r3, #32]
d005225c:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d0052260:	629f      	str	r7, [r3, #40]	; 0x28
d0052262:	ab04      	add	r3, sp, #16
d0052264:	600e      	str	r6, [r1, #0]
d0052266:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d005226a:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d005226e:	4620      	mov	r0, r4
d0052270:	b005      	add	sp, #20
d0052272:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0052274:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0052278:	e7f9      	b.n	d005226e <addPointLight+0x56>
d005227a:	bf00      	nop
d005227c:	d005a268 	.word	0xd005a268
d0052280:	d005a280 	.word	0xd005a280
d0052284:	44020000 	.word	0x44020000
d0052288:	42c80000 	.word	0x42c80000
d005228c:	43660000 	.word	0x43660000

d0052290 <addDirectionalLight>:
d0052290:	b5f0      	push	{r4, r5, r6, r7, lr}
d0052292:	4f15      	ldr	r7, [pc, #84]	; (d00522e8 <addDirectionalLight+0x58>)
d0052294:	683d      	ldr	r5, [r7, #0]
d0052296:	2d07      	cmp	r5, #7
d0052298:	ed2d 8b02 	vpush	{d8}
d005229c:	b085      	sub	sp, #20
d005229e:	dc1f      	bgt.n	d00522e0 <addDirectionalLight+0x50>
d00522a0:	4912      	ldr	r1, [pc, #72]	; (d00522ec <addDirectionalLight+0x5c>)
d00522a2:	2300      	movs	r3, #0
d00522a4:	4606      	mov	r6, r0
d00522a6:	01aa      	lsls	r2, r5, #6
d00522a8:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d00522ac:	2001      	movs	r0, #1
d00522ae:	eeb0 8a61 	vmov.f32	s16, s3
d00522b2:	6063      	str	r3, [r4, #4]
d00522b4:	60a3      	str	r3, [r4, #8]
d00522b6:	60e3      	str	r3, [r4, #12]
d00522b8:	5488      	strb	r0, [r1, r2]
d00522ba:	f7fd ffed 	bl	d0050298 <vec3Normalize>
d00522be:	683b      	ldr	r3, [r7, #0]
d00522c0:	ed84 8a07 	vstr	s16, [r4, #28]
d00522c4:	3301      	adds	r3, #1
d00522c6:	62e6      	str	r6, [r4, #44]	; 0x2c
d00522c8:	ed84 0a04 	vstr	s0, [r4, #16]
d00522cc:	edc4 0a05 	vstr	s1, [r4, #20]
d00522d0:	ed84 1a06 	vstr	s2, [r4, #24]
d00522d4:	603b      	str	r3, [r7, #0]
d00522d6:	4628      	mov	r0, r5
d00522d8:	b005      	add	sp, #20
d00522da:	ecbd 8b02 	vpop	{d8}
d00522de:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00522e0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00522e4:	e7f7      	b.n	d00522d6 <addDirectionalLight+0x46>
d00522e6:	bf00      	nop
d00522e8:	d005a268 	.word	0xd005a268
d00522ec:	d005a280 	.word	0xd005a280

d00522f0 <lightSetPosition>:
d00522f0:	b084      	sub	sp, #16
d00522f2:	2800      	cmp	r0, #0
d00522f4:	ed8d 0a01 	vstr	s0, [sp, #4]
d00522f8:	edcd 0a02 	vstr	s1, [sp, #8]
d00522fc:	ed8d 1a03 	vstr	s2, [sp, #12]
d0052300:	db0c      	blt.n	d005231c <lightSetPosition+0x2c>
d0052302:	4b07      	ldr	r3, [pc, #28]	; (d0052320 <lightSetPosition+0x30>)
d0052304:	681b      	ldr	r3, [r3, #0]
d0052306:	4283      	cmp	r3, r0
d0052308:	dd08      	ble.n	d005231c <lightSetPosition+0x2c>
d005230a:	4b06      	ldr	r3, [pc, #24]	; (d0052324 <lightSetPosition+0x34>)
d005230c:	aa04      	add	r2, sp, #16
d005230e:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d0052312:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0052316:	3304      	adds	r3, #4
d0052318:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d005231c:	b004      	add	sp, #16
d005231e:	4770      	bx	lr
d0052320:	d005a268 	.word	0xd005a268
d0052324:	d005a280 	.word	0xd005a280

d0052328 <lightSetIntensity>:
d0052328:	2800      	cmp	r0, #0
d005232a:	db08      	blt.n	d005233e <lightSetIntensity+0x16>
d005232c:	4b04      	ldr	r3, [pc, #16]	; (d0052340 <lightSetIntensity+0x18>)
d005232e:	681b      	ldr	r3, [r3, #0]
d0052330:	4283      	cmp	r3, r0
d0052332:	dd04      	ble.n	d005233e <lightSetIntensity+0x16>
d0052334:	4b03      	ldr	r3, [pc, #12]	; (d0052344 <lightSetIntensity+0x1c>)
d0052336:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005233a:	ed80 0a07 	vstr	s0, [r0, #28]
d005233e:	4770      	bx	lr
d0052340:	d005a268 	.word	0xd005a268
d0052344:	d005a280 	.word	0xd005a280

d0052348 <Render3DStandard>:
d0052348:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005234c:	2600      	movs	r6, #0
d005234e:	b088      	sub	sp, #32
d0052350:	4f2e      	ldr	r7, [pc, #184]	; (d005240c <Render3DStandard+0xc4>)
d0052352:	0170      	lsls	r0, r6, #5
d0052354:	f7fc faca 	bl	d004e8ec <beginDepthBand>
d0052358:	683a      	ldr	r2, [r7, #0]
d005235a:	2a00      	cmp	r2, #0
d005235c:	dd50      	ble.n	d0052400 <Render3DStandard+0xb8>
d005235e:	4c2c      	ldr	r4, [pc, #176]	; (d0052410 <Render3DStandard+0xc8>)
d0052360:	2500      	movs	r5, #0
d0052362:	e01d      	b.n	d00523a0 <Render3DStandard+0x58>
d0052364:	8c63      	ldrh	r3, [r4, #34]	; 0x22
d0052366:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d0052368:	9303      	str	r3, [sp, #12]
d005236a:	6963      	ldr	r3, [r4, #20]
d005236c:	8c20      	ldrh	r0, [r4, #32]
d005236e:	9301      	str	r3, [sp, #4]
d0052370:	6923      	ldr	r3, [r4, #16]
d0052372:	9205      	str	r2, [sp, #20]
d0052374:	9104      	str	r1, [sp, #16]
d0052376:	9002      	str	r0, [sp, #8]
d0052378:	9300      	str	r3, [sp, #0]
d005237a:	edd4 1a07 	vldr	s3, [r4, #28]
d005237e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0052382:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0052386:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005238a:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d005238e:	e9d4 0100 	ldrd	r0, r1, [r4]
d0052392:	f7fc fb33 	bl	d004e9fc <fillTriangleDitherBayer>
d0052396:	683a      	ldr	r2, [r7, #0]
d0052398:	3501      	adds	r5, #1
d005239a:	3440      	adds	r4, #64	; 0x40
d005239c:	4295      	cmp	r5, r2
d005239e:	da2f      	bge.n	d0052400 <Render3DStandard+0xb8>
d00523a0:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d00523a4:	42b3      	cmp	r3, r6
d00523a6:	dcf7      	bgt.n	d0052398 <Render3DStandard+0x50>
d00523a8:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d00523ac:	42b3      	cmp	r3, r6
d00523ae:	dbf3      	blt.n	d0052398 <Render3DStandard+0x50>
d00523b0:	f994 3034 	ldrsb.w	r3, [r4, #52]	; 0x34
d00523b4:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d00523b8:	2b00      	cmp	r3, #0
d00523ba:	dad3      	bge.n	d0052364 <Render3DStandard+0x1c>
d00523bc:	8c63      	ldrh	r3, [r4, #34]	; 0x22
d00523be:	3501      	adds	r5, #1
d00523c0:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d00523c2:	9303      	str	r3, [sp, #12]
d00523c4:	6963      	ldr	r3, [r4, #20]
d00523c6:	8c20      	ldrh	r0, [r4, #32]
d00523c8:	f894 8036 	ldrb.w	r8, [r4, #54]	; 0x36
d00523cc:	9301      	str	r3, [sp, #4]
d00523ce:	6923      	ldr	r3, [r4, #16]
d00523d0:	edd4 1a07 	vldr	s3, [r4, #28]
d00523d4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00523d8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00523dc:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00523e0:	9205      	str	r2, [sp, #20]
d00523e2:	9104      	str	r1, [sp, #16]
d00523e4:	9002      	str	r0, [sp, #8]
d00523e6:	9300      	str	r3, [sp, #0]
d00523e8:	f8cd 8018 	str.w	r8, [sp, #24]
d00523ec:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00523f0:	e9d4 0100 	ldrd	r0, r1, [r4]
d00523f4:	f7fd f96e 	bl	d004f6d4 <fillTriangleDitherBayerT>
d00523f8:	683a      	ldr	r2, [r7, #0]
d00523fa:	3440      	adds	r4, #64	; 0x40
d00523fc:	4295      	cmp	r5, r2
d00523fe:	dbcf      	blt.n	d00523a0 <Render3DStandard+0x58>
d0052400:	3601      	adds	r6, #1
d0052402:	2e0a      	cmp	r6, #10
d0052404:	d1a5      	bne.n	d0052352 <Render3DStandard+0xa>
d0052406:	b008      	add	sp, #32
d0052408:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d005240c:	d00684a0 	.word	0xd00684a0
d0052410:	d00684c0 	.word	0xd00684c0

d0052414 <submitClippedTri.constprop.0>:
d0052414:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052418:	4d83      	ldr	r5, [pc, #524]	; (d0052628 <submitClippedTri.constprop.0+0x214>)
d005241a:	682c      	ldr	r4, [r5, #0]
d005241c:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d0052420:	ed2d 8b04 	vpush	{d8-d9}
d0052424:	b08b      	sub	sp, #44	; 0x2c
d0052426:	f280 80f0 	bge.w	d005260a <submitClippedTri.constprop.0+0x1f6>
d005242a:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d005242e:	edd0 6a14 	vldr	s13, [r0, #80]	; 0x50
d0052432:	eeb6 9a00 	vmov.f32	s18, #96	; 0x3f000000  0.5
d0052436:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d005243a:	ed90 6a12 	vldr	s12, [r0, #72]	; 0x48
d005243e:	ea4f 1c84 	mov.w	ip, r4, lsl #6
d0052442:	eec5 8a81 	vdiv.f32	s17, s11, s2
d0052446:	4b79      	ldr	r3, [pc, #484]	; (d005262c <submitClippedTri.constprop.0+0x218>)
d0052448:	f10c 0808 	add.w	r8, ip, #8
d005244c:	4693      	mov	fp, r2
d005244e:	eb03 1784 	add.w	r7, r3, r4, lsl #6
d0052452:	3401      	adds	r4, #1
d0052454:	f10c 0e10 	add.w	lr, ip, #16
d0052458:	f04f 0980 	mov.w	r9, #128	; 0x80
d005245c:	602c      	str	r4, [r5, #0]
d005245e:	eb03 0408 	add.w	r4, r3, r8
d0052462:	eec5 7aa2 	vdiv.f32	s15, s11, s5
d0052466:	eb03 0a0e 	add.w	sl, r3, lr
d005246a:	ed9f 5a71 	vldr	s10, [pc, #452]	; d0052630 <submitClippedTri.constprop.0+0x21c>
d005246e:	ee76 6a89 	vadd.f32	s13, s13, s18
d0052472:	ee85 8a84 	vdiv.f32	s16, s11, s8
d0052476:	ee37 7a09 	vadd.f32	s14, s14, s18
d005247a:	ee68 0aa0 	vmul.f32	s1, s17, s1
d005247e:	ee28 0a80 	vmul.f32	s0, s17, s0
d0052482:	eef0 8a47 	vmov.f32	s17, s14
d0052486:	ee67 1aa1 	vmul.f32	s3, s15, s3
d005248a:	ee27 2a82 	vmul.f32	s4, s15, s4
d005248e:	eef0 7a66 	vmov.f32	s15, s13
d0052492:	eee6 8a00 	vfma.f32	s17, s12, s0
d0052496:	ed9f 0a67 	vldr	s0, [pc, #412]	; d0052634 <submitClippedTri.constprop.0+0x220>
d005249a:	eee6 7a60 	vfms.f32	s15, s12, s1
d005249e:	eef0 0a47 	vmov.f32	s1, s14
d00524a2:	ee28 3a03 	vmul.f32	s6, s16, s6
d00524a6:	ee68 3a23 	vmul.f32	s7, s16, s7
d00524aa:	eee6 0a21 	vfma.f32	s1, s12, s3
d00524ae:	eea6 7a03 	vfma.f32	s14, s12, s6
d00524b2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00524b6:	eefd 8ae8 	vcvt.s32.f32	s17, s17
d00524ba:	ee17 5a90 	vmov	r5, s15
d00524be:	eef0 1a60 	vmov.f32	s3, s1
d00524c2:	ee18 6a90 	vmov	r6, s17
d00524c6:	eef0 0a66 	vmov.f32	s1, s13
d00524ca:	eee6 6a63 	vfms.f32	s13, s12, s7
d00524ce:	f843 600c 	str.w	r6, [r3, ip]
d00524d2:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d00524d6:	607d      	str	r5, [r7, #4]
d00524d8:	eee6 0a42 	vfms.f32	s1, s12, s4
d00524dc:	b22d      	sxth	r5, r5
d00524de:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00524e2:	ee11 2a90 	vmov	r2, s3
d00524e6:	f843 2008 	str.w	r2, [r3, r8]
d00524ea:	ee17 2a10 	vmov	r2, s14
d00524ee:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d00524f2:	edc4 7a01 	vstr	s15, [r4, #4]
d00524f6:	ee17 6a90 	vmov	r6, s15
d00524fa:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00524fe:	f843 200e 	str.w	r2, [r3, lr]
d0052502:	42ae      	cmp	r6, r5
d0052504:	46ae      	mov	lr, r5
d0052506:	edca 7a01 	vstr	s15, [sl, #4]
d005250a:	ee17 4a90 	vmov	r4, s15
d005250e:	f887 1034 	strb.w	r1, [r7, #52]	; 0x34
d0052512:	f887 b035 	strb.w	fp, [r7, #53]	; 0x35
d0052516:	edc7 4a07 	vstr	s9, [r7, #28]
d005251a:	f887 9036 	strb.w	r9, [r7, #54]	; 0x36
d005251e:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0052522:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0052526:	ee31 7a47 	vsub.f32	s14, s2, s14
d005252a:	ee27 7a27 	vmul.f32	s14, s14, s15
d005252e:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0052532:	fe87 7a65 	vminnm.f32	s14, s14, s11
d0052536:	ee27 7a00 	vmul.f32	s14, s14, s0
d005253a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005253e:	ee17 2a10 	vmov	r2, s14
d0052542:	843a      	strh	r2, [r7, #32]
d0052544:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0052548:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d005254c:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0052550:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052554:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0052558:	fe87 7a65 	vminnm.f32	s14, s14, s11
d005255c:	ee27 7a00 	vmul.f32	s14, s14, s0
d0052560:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052564:	ee17 2a10 	vmov	r2, s14
d0052568:	847a      	strh	r2, [r7, #34]	; 0x22
d005256a:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d005256e:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0052572:	ee74 7a67 	vsub.f32	s15, s8, s15
d0052576:	ed87 1a0a 	vstr	s2, [r7, #40]	; 0x28
d005257a:	edc7 2a0b 	vstr	s5, [r7, #44]	; 0x2c
d005257e:	ed87 4a0c 	vstr	s8, [r7, #48]	; 0x30
d0052582:	ee67 7a87 	vmul.f32	s15, s15, s14
d0052586:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d005258a:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d005258e:	ee67 7a80 	vmul.f32	s15, s15, s0
d0052592:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052596:	ee17 2a90 	vmov	r2, s15
d005259a:	84ba      	strh	r2, [r7, #36]	; 0x24
d005259c:	db3a      	blt.n	d0052614 <submitClippedTri.constprop.0+0x200>
d005259e:	462a      	mov	r2, r5
d00525a0:	873d      	strh	r5, [r7, #56]	; 0x38
d00525a2:	42a2      	cmp	r2, r4
d00525a4:	dd02      	ble.n	d00525ac <submitClippedTri.constprop.0+0x198>
d00525a6:	eb03 020c 	add.w	r2, r3, ip
d00525aa:	8714      	strh	r4, [r2, #56]	; 0x38
d00525ac:	42ae      	cmp	r6, r5
d00525ae:	dc35      	bgt.n	d005261c <submitClippedTri.constprop.0+0x208>
d00525b0:	eb03 020c 	add.w	r2, r3, ip
d00525b4:	8755      	strh	r5, [r2, #58]	; 0x3a
d00525b6:	45a6      	cmp	lr, r4
d00525b8:	da02      	bge.n	d00525c0 <submitClippedTri.constprop.0+0x1ac>
d00525ba:	eb03 020c 	add.w	r2, r3, ip
d00525be:	8754      	strh	r4, [r2, #58]	; 0x3a
d00525c0:	eb03 020c 	add.w	r2, r3, ip
d00525c4:	f9b2 1038 	ldrsh.w	r1, [r2, #56]	; 0x38
d00525c8:	2900      	cmp	r1, #0
d00525ca:	da01      	bge.n	d00525d0 <submitClippedTri.constprop.0+0x1bc>
d00525cc:	2100      	movs	r1, #0
d00525ce:	8711      	strh	r1, [r2, #56]	; 0x38
d00525d0:	eb03 020c 	add.w	r2, r3, ip
d00525d4:	f9b2 103a 	ldrsh.w	r1, [r2, #58]	; 0x3a
d00525d8:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d00525dc:	db02      	blt.n	d00525e4 <submitClippedTri.constprop.0+0x1d0>
d00525de:	f240 113f 	movw	r1, #319	; 0x13f
d00525e2:	8751      	strh	r1, [r2, #58]	; 0x3a
d00525e4:	eb03 000c 	add.w	r0, r3, ip
d00525e8:	4463      	add	r3, ip
d00525ea:	f9b0 2038 	ldrsh.w	r2, [r0, #56]	; 0x38
d00525ee:	2a00      	cmp	r2, #0
d00525f0:	bfb8      	it	lt
d00525f2:	321f      	addlt	r2, #31
d00525f4:	1151      	asrs	r1, r2, #5
d00525f6:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d00525fa:	2a00      	cmp	r2, #0
d00525fc:	f880 103c 	strb.w	r1, [r0, #60]	; 0x3c
d0052600:	bfb8      	it	lt
d0052602:	321f      	addlt	r2, #31
d0052604:	1152      	asrs	r2, r2, #5
d0052606:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
d005260a:	b00b      	add	sp, #44	; 0x2c
d005260c:	ecbd 8b04 	vpop	{d8-d9}
d0052610:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052614:	b231      	sxth	r1, r6
d0052616:	460a      	mov	r2, r1
d0052618:	8739      	strh	r1, [r7, #56]	; 0x38
d005261a:	e7c2      	b.n	d00525a2 <submitClippedTri.constprop.0+0x18e>
d005261c:	b236      	sxth	r6, r6
d005261e:	eb03 020c 	add.w	r2, r3, ip
d0052622:	46b6      	mov	lr, r6
d0052624:	8756      	strh	r6, [r2, #58]	; 0x3a
d0052626:	e7c6      	b.n	d00525b6 <submitClippedTri.constprop.0+0x1a2>
d0052628:	d00684a0 	.word	0xd00684a0
d005262c:	d00684c0 	.word	0xd00684c0
d0052630:	00000000 	.word	0x00000000
d0052634:	477fff00 	.word	0x477fff00

d0052638 <sb3dParticlesRender.part.0>:
d0052638:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005263c:	edd0 7a00 	vldr	s15, [r0]
d0052640:	4605      	mov	r5, r0
d0052642:	4c1a      	ldr	r4, [pc, #104]	; (d00526ac <sb3dParticlesRender.part.0+0x74>)
d0052644:	f8df b068 	ldr.w	fp, [pc, #104]	; d00526b0 <sb3dParticlesRender.part.0+0x78>
d0052648:	f504 5800 	add.w	r8, r4, #8192	; 0x2000
d005264c:	ed2d 8b10 	vpush	{d8-d15}
d0052650:	b0d9      	sub	sp, #356	; 0x164
d0052652:	ed90 ea06 	vldr	s28, [r0, #24]
d0052656:	edd0 aa09 	vldr	s21, [r0, #36]	; 0x24
d005265a:	edcd 7a17 	vstr	s15, [sp, #92]	; 0x5c
d005265e:	edd0 7a01 	vldr	s15, [r0, #4]
d0052662:	ed90 aa0a 	vldr	s20, [r0, #40]	; 0x28
d0052666:	edcd 7a18 	vstr	s15, [sp, #96]	; 0x60
d005266a:	edd0 7a02 	vldr	s15, [r0, #8]
d005266e:	edd0 9a0b 	vldr	s19, [r0, #44]	; 0x2c
d0052672:	edcd 7a19 	vstr	s15, [sp, #100]	; 0x64
d0052676:	edd0 7a07 	vldr	s15, [r0, #28]
d005267a:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d005267e:	edcd 7a1a 	vstr	s15, [sp, #104]	; 0x68
d0052682:	edd0 7a08 	vldr	s15, [r0, #32]
d0052686:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d005268a:	edcd 7a1b 	vstr	s15, [sp, #108]	; 0x6c
d005268e:	ed90 ba0e 	vldr	s22, [r0, #56]	; 0x38
d0052692:	edd0 ca10 	vldr	s25, [r0, #64]	; 0x40
d0052696:	f7ff fd9b 	bl	d00521d0 <lightsGet>
d005269a:	4606      	mov	r6, r0
d005269c:	901d      	str	r0, [sp, #116]	; 0x74
d005269e:	f7ff fd9b 	bl	d00521d8 <lightsGetCount>
d00526a2:	901c      	str	r0, [sp, #112]	; 0x70
d00526a4:	eb06 1a80 	add.w	sl, r6, r0, lsl #6
d00526a8:	e177      	b.n	d005299a <sb3dParticlesRender.part.0+0x362>
d00526aa:	bf00      	nop
d00526ac:	d00664a0 	.word	0xd00664a0
d00526b0:	d0066480 	.word	0xd0066480
d00526b4:	00000000 	.word	0x00000000
d00526b8:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00526bc:	edd4 ea04 	vldr	s29, [r4, #16]
d00526c0:	ed1f 5a04 	vldr	s10, [pc, #-16]	; d00526b4 <sb3dParticlesRender.part.0+0x7c>
d00526c4:	fece ea85 	vmaxnm.f32	s29, s29, s10
d00526c8:	fece eac7 	vminnm.f32	s29, s29, s14
d00526cc:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d00526d0:	eddd 3a1b 	vldr	s7, [sp, #108]	; 0x6c
d00526d4:	eeb0 4a46 	vmov.f32	s8, s12
d00526d8:	f105 0610 	add.w	r6, r5, #16
d00526dc:	eef0 4a66 	vmov.f32	s9, s13
d00526e0:	2250      	movs	r2, #80	; 0x50
d00526e2:	ee67 7a87 	vmul.f32	s15, s15, s14
d00526e6:	ed9d 7a1a 	vldr	s14, [sp, #104]	; 0x68
d00526ea:	eeb0 5a65 	vmov.f32	s10, s11
d00526ee:	4631      	mov	r1, r6
d00526f0:	4668      	mov	r0, sp
d00526f2:	eeae 6a27 	vfma.f32	s12, s28, s15
d00526f6:	eee7 4a67 	vfms.f32	s9, s14, s15
d00526fa:	eee7 6a27 	vfma.f32	s13, s14, s15
d00526fe:	eeb0 7a65 	vmov.f32	s14, s11
d0052702:	eea3 5ae7 	vfms.f32	s10, s7, s15
d0052706:	eeae 4a67 	vfms.f32	s8, s28, s15
d005270a:	eea3 7aa7 	vfma.f32	s14, s7, s15
d005270e:	eef0 3a46 	vmov.f32	s7, s12
d0052712:	eeaa 6ae7 	vfms.f32	s12, s21, s15
d0052716:	eef0 fa64 	vmov.f32	s31, s9
d005271a:	eef0 5a66 	vmov.f32	s11, s13
d005271e:	eeb0 8a44 	vmov.f32	s16, s8
d0052722:	eeb0 fa45 	vmov.f32	s30, s10
d0052726:	eeea fa27 	vfma.f32	s31, s20, s15
d005272a:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d005272e:	eeb0 6a47 	vmov.f32	s12, s14
d0052732:	eeaa 8aa7 	vfma.f32	s16, s21, s15
d0052736:	eea9 faa7 	vfma.f32	s30, s19, s15
d005273a:	eeaa 4ae7 	vfms.f32	s8, s21, s15
d005273e:	eeea 3aa7 	vfma.f32	s7, s21, s15
d0052742:	eeea 4a67 	vfms.f32	s9, s20, s15
d0052746:	edcd fa20 	vstr	s31, [sp, #128]	; 0x80
d005274a:	eeea 5a27 	vfma.f32	s11, s20, s15
d005274e:	eeea 6a67 	vfms.f32	s13, s20, s15
d0052752:	ed8d 8a1f 	vstr	s16, [sp, #124]	; 0x7c
d0052756:	eea9 5ae7 	vfms.f32	s10, s19, s15
d005275a:	ed8d fa21 	vstr	s30, [sp, #132]	; 0x84
d005275e:	eea9 6aa7 	vfma.f32	s12, s19, s15
d0052762:	ed8d 4a28 	vstr	s8, [sp, #160]	; 0xa0
d0052766:	eea9 7ae7 	vfms.f32	s14, s19, s15
d005276a:	edcd 3a22 	vstr	s7, [sp, #136]	; 0x88
d005276e:	edcd 4a29 	vstr	s9, [sp, #164]	; 0xa4
d0052772:	edcd 5a23 	vstr	s11, [sp, #140]	; 0x8c
d0052776:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d005277a:	ed8d 5a2a 	vstr	s10, [sp, #168]	; 0xa8
d005277e:	ed8d 6a24 	vstr	s12, [sp, #144]	; 0x90
d0052782:	ed8d 7a27 	vstr	s14, [sp, #156]	; 0x9c
d0052786:	f002 fd2d 	bl	d00551e4 <memcpy>
d005278a:	eeb0 1a4f 	vmov.f32	s2, s30
d005278e:	eeb0 0a48 	vmov.f32	s0, s16
d0052792:	eef0 0a6f 	vmov.f32	s1, s31
d0052796:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005279a:	f7fe fa5d 	bl	d0050c58 <worldToCamera>
d005279e:	eeb0 fa41 	vmov.f32	s30, s2
d00527a2:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d00527a6:	4631      	mov	r1, r6
d00527a8:	ed9d 8a22 	vldr	s16, [sp, #136]	; 0x88
d00527ac:	2250      	movs	r2, #80	; 0x50
d00527ae:	eddd fa23 	vldr	s31, [sp, #140]	; 0x8c
d00527b2:	4668      	mov	r0, sp
d00527b4:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d00527b8:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d00527bc:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d00527c0:	ed8d fa2d 	vstr	s30, [sp, #180]	; 0xb4
d00527c4:	f002 fd0e 	bl	d00551e4 <memcpy>
d00527c8:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d00527cc:	eeb0 0a48 	vmov.f32	s0, s16
d00527d0:	eef0 0a6f 	vmov.f32	s1, s31
d00527d4:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00527d8:	f7fe fa3e 	bl	d0050c58 <worldToCamera>
d00527dc:	eef0 2a41 	vmov.f32	s5, s2
d00527e0:	ed9d 1a27 	vldr	s2, [sp, #156]	; 0x9c
d00527e4:	4631      	mov	r1, r6
d00527e6:	ed9d 8a25 	vldr	s16, [sp, #148]	; 0x94
d00527ea:	2250      	movs	r2, #80	; 0x50
d00527ec:	eddd fa26 	vldr	s31, [sp, #152]	; 0x98
d00527f0:	4668      	mov	r0, sp
d00527f2:	edcd 2a30 	vstr	s5, [sp, #192]	; 0xc0
d00527f6:	edcd 2a16 	vstr	s5, [sp, #88]	; 0x58
d00527fa:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d00527fe:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d0052802:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d0052806:	f002 fced 	bl	d00551e4 <memcpy>
d005280a:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d005280e:	eeb0 0a48 	vmov.f32	s0, s16
d0052812:	eef0 0a6f 	vmov.f32	s1, s31
d0052816:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005281a:	f7fe fa1d 	bl	d0050c58 <worldToCamera>
d005281e:	eef0 8a41 	vmov.f32	s17, s2
d0052822:	eddd fa29 	vldr	s31, [sp, #164]	; 0xa4
d0052826:	4631      	mov	r1, r6
d0052828:	ed9d 1a2a 	vldr	s2, [sp, #168]	; 0xa8
d005282c:	2250      	movs	r2, #80	; 0x50
d005282e:	ed9d 8a28 	vldr	s16, [sp, #160]	; 0xa0
d0052832:	4668      	mov	r0, sp
d0052834:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052838:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d005283c:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d0052840:	edcd 8a33 	vstr	s17, [sp, #204]	; 0xcc
d0052844:	f002 fcce 	bl	d00551e4 <memcpy>
d0052848:	eef0 0a6f 	vmov.f32	s1, s31
d005284c:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052850:	eeb0 0a48 	vmov.f32	s0, s16
d0052854:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052858:	f7fe f9fe 	bl	d0050c58 <worldToCamera>
d005285c:	eef4 cacf 	vcmpe.f32	s25, s30
d0052860:	eef0 fa41 	vmov.f32	s31, s2
d0052864:	eddd 2a16 	vldr	s5, [sp, #88]	; 0x58
d0052868:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d005286c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052870:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d0052874:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d0052878:	db0e      	blt.n	d0052898 <sb3dParticlesRender.part.0+0x260>
d005287a:	eef4 cae2 	vcmpe.f32	s25, s5
d005287e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052882:	db09      	blt.n	d0052898 <sb3dParticlesRender.part.0+0x260>
d0052884:	eef4 cae8 	vcmpe.f32	s25, s17
d0052888:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005288c:	db04      	blt.n	d0052898 <sb3dParticlesRender.part.0+0x260>
d005288e:	eef4 cac1 	vcmpe.f32	s25, s2
d0052892:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052896:	da7c      	bge.n	d0052992 <sb3dParticlesRender.part.0+0x35a>
d0052898:	4ed6      	ldr	r6, [pc, #856]	; (d0052bf4 <sb3dParticlesRender.part.0+0x5bc>)
d005289a:	eeb0 4a68 	vmov.f32	s8, s17
d005289e:	ed9d da2b 	vldr	s26, [sp, #172]	; 0xac
d00528a2:	eeb0 1a4f 	vmov.f32	s2, s30
d00528a6:	7c33      	ldrb	r3, [r6, #16]
d00528a8:	a840      	add	r0, sp, #256	; 0x100
d00528aa:	7c72      	ldrb	r2, [r6, #17]
d00528ac:	eeb0 0a4d 	vmov.f32	s0, s26
d00528b0:	7cb7      	ldrb	r7, [r6, #18]
d00528b2:	4629      	mov	r1, r5
d00528b4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00528b8:	7cf2      	ldrb	r2, [r6, #19]
d00528ba:	ed9d 9a2c 	vldr	s18, [sp, #176]	; 0xb0
d00528be:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d00528c2:	eddd da31 	vldr	s27, [sp, #196]	; 0xc4
d00528c6:	ed9d 8a32 	vldr	s16, [sp, #200]	; 0xc8
d00528ca:	eef0 0a49 	vmov.f32	s1, s18
d00528ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00528d2:	f8df 9334 	ldr.w	r9, [pc, #820]	; d0052c08 <sb3dParticlesRender.part.0+0x5d0>
d00528d6:	eddd 1a2e 	vldr	s3, [sp, #184]	; 0xb8
d00528da:	eeb0 3a6d 	vmov.f32	s6, s27
d00528de:	681b      	ldr	r3, [r3, #0]
d00528e0:	eef0 3a48 	vmov.f32	s7, s16
d00528e4:	ed9d 2a2f 	vldr	s4, [sp, #188]	; 0xbc
d00528e8:	681f      	ldr	r7, [r3, #0]
d00528ea:	f8db 2000 	ldr.w	r2, [fp]
d00528ee:	f8d9 3000 	ldr.w	r3, [r9]
d00528f2:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d00528f6:	edcd 2a3c 	vstr	s5, [sp, #240]	; 0xf0
d00528fa:	edcd 8a3f 	vstr	s17, [sp, #252]	; 0xfc
d00528fe:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d0052902:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d0052906:	edcd 1a3a 	vstr	s3, [sp, #232]	; 0xe8
d005290a:	ed8d 2a3b 	vstr	s4, [sp, #236]	; 0xec
d005290e:	edcd da3d 	vstr	s27, [sp, #244]	; 0xf4
d0052912:	ed8d 8a3e 	vstr	s16, [sp, #248]	; 0xf8
d0052916:	47b8      	blx	r7
d0052918:	2802      	cmp	r0, #2
d005291a:	f300 8179 	bgt.w	d0052c10 <sb3dParticlesRender.part.0+0x5d8>
d005291e:	7c31      	ldrb	r1, [r6, #16]
d0052920:	eeb0 0a4d 	vmov.f32	s0, s26
d0052924:	7c72      	ldrb	r2, [r6, #17]
d0052926:	eef0 0a49 	vmov.f32	s1, s18
d005292a:	7cb3      	ldrb	r3, [r6, #18]
d005292c:	eeb0 1a4f 	vmov.f32	s2, s30
d0052930:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0052934:	7cf2      	ldrb	r2, [r6, #19]
d0052936:	ed9d 3a34 	vldr	s6, [sp, #208]	; 0xd0
d005293a:	eef0 1a6d 	vmov.f32	s3, s27
d005293e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0052942:	eddd 3a35 	vldr	s7, [sp, #212]	; 0xd4
d0052946:	eeb0 2a48 	vmov.f32	s4, s16
d005294a:	a840      	add	r0, sp, #256	; 0x100
d005294c:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0052950:	eef0 2a68 	vmov.f32	s5, s17
d0052954:	eeb0 4a6f 	vmov.f32	s8, s31
d0052958:	f8d9 3000 	ldr.w	r3, [r9]
d005295c:	680e      	ldr	r6, [r1, #0]
d005295e:	4629      	mov	r1, r5
d0052960:	f8db 2000 	ldr.w	r2, [fp]
d0052964:	6836      	ldr	r6, [r6, #0]
d0052966:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d005296a:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d005296e:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d0052972:	edcd da3a 	vstr	s27, [sp, #232]	; 0xe8
d0052976:	ed8d 8a3b 	vstr	s16, [sp, #236]	; 0xec
d005297a:	edcd 8a3c 	vstr	s17, [sp, #240]	; 0xf0
d005297e:	edcd fa3f 	vstr	s31, [sp, #252]	; 0xfc
d0052982:	ed8d 3a3d 	vstr	s6, [sp, #244]	; 0xf4
d0052986:	edcd 3a3e 	vstr	s7, [sp, #248]	; 0xf8
d005298a:	47b0      	blx	r6
d005298c:	2802      	cmp	r0, #2
d005298e:	f300 80fd 	bgt.w	d0052b8c <sb3dParticlesRender.part.0+0x554>
d0052992:	3420      	adds	r4, #32
d0052994:	45a0      	cmp	r8, r4
d0052996:	f000 8128 	beq.w	d0052bea <sb3dParticlesRender.part.0+0x5b2>
d005299a:	7ea3      	ldrb	r3, [r4, #26]
d005299c:	2b00      	cmp	r3, #0
d005299e:	d0f8      	beq.n	d0052992 <sb3dParticlesRender.part.0+0x35a>
d00529a0:	edd4 7a03 	vldr	s15, [r4, #12]
d00529a4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00529a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00529ac:	d9f1      	bls.n	d0052992 <sb3dParticlesRender.part.0+0x35a>
d00529ae:	edd4 6a01 	vldr	s13, [r4, #4]
d00529b2:	eeb1 5a67 	vneg.f32	s10, s15
d00529b6:	ed9d 7a18 	vldr	s14, [sp, #96]	; 0x60
d00529ba:	eddd 4a17 	vldr	s9, [sp, #92]	; 0x5c
d00529be:	ee36 7ac7 	vsub.f32	s14, s13, s14
d00529c2:	ed94 6a00 	vldr	s12, [r4]
d00529c6:	edd4 5a02 	vldr	s11, [r4, #8]
d00529ca:	ee36 4a64 	vsub.f32	s8, s12, s9
d00529ce:	eddd 4a19 	vldr	s9, [sp, #100]	; 0x64
d00529d2:	ee27 7a2b 	vmul.f32	s14, s14, s23
d00529d6:	ee75 4ae4 	vsub.f32	s9, s11, s9
d00529da:	eeac 7a04 	vfma.f32	s14, s24, s8
d00529de:	eeab 7a24 	vfma.f32	s14, s22, s9
d00529e2:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00529e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00529ea:	d9d2      	bls.n	d0052992 <sb3dParticlesRender.part.0+0x35a>
d00529ec:	ed94 7a05 	vldr	s14, [r4, #20]
d00529f0:	ed9f 5a81 	vldr	s10, [pc, #516]	; d0052bf8 <sb3dParticlesRender.part.0+0x5c0>
d00529f4:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00529f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00529fc:	f67f ae5c 	bls.w	d00526b8 <sb3dParticlesRender.part.0+0x80>
d0052a00:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d0052a02:	2b00      	cmp	r3, #0
d0052a04:	f340 8092 	ble.w	d0052b2c <sb3dParticlesRender.part.0+0x4f4>
d0052a08:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0052a0c:	9b1d      	ldr	r3, [sp, #116]	; 0x74
d0052a0e:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0052a12:	ed9f 0a7a 	vldr	s0, [pc, #488]	; d0052bfc <sb3dParticlesRender.part.0+0x5c4>
d0052a16:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0052a1a:	e072      	b.n	d0052b02 <sb3dParticlesRender.part.0+0x4ca>
d0052a1c:	edd3 7a02 	vldr	s15, [r3, #8]
d0052a20:	edd3 4a01 	vldr	s9, [r3, #4]
d0052a24:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0052a28:	ed93 5a03 	vldr	s10, [r3, #12]
d0052a2c:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0052a30:	edd3 2a0a 	vldr	s5, [r3, #40]	; 0x28
d0052a34:	ee35 5a65 	vsub.f32	s10, s10, s11
d0052a38:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0052a3c:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0052a40:	eea4 7aa4 	vfma.f32	s14, s9, s9
d0052a44:	eea5 7a05 	vfma.f32	s14, s10, s10
d0052a48:	eeb4 7a42 	vcmp.f32	s14, s4
d0052a4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052a50:	d554      	bpl.n	d0052afc <sb3dParticlesRender.part.0+0x4c4>
d0052a52:	ed9f 2a6b 	vldr	s4, [pc, #428]	; d0052c00 <sb3dParticlesRender.part.0+0x5c8>
d0052a56:	eeb4 7a42 	vcmp.f32	s14, s4
d0052a5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052a5e:	dd4d      	ble.n	d0052afc <sb3dParticlesRender.part.0+0x4c4>
d0052a60:	eef1 0ac7 	vsqrt.f32	s1, s14
d0052a64:	edd3 1a08 	vldr	s3, [r3, #32]
d0052a68:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0052a6c:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0052a70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052a74:	ee84 2a20 	vdiv.f32	s4, s8, s1
d0052a78:	ee64 4a82 	vmul.f32	s9, s9, s4
d0052a7c:	ee67 7a82 	vmul.f32	s15, s15, s4
d0052a80:	ee25 5a02 	vmul.f32	s10, s10, s4
d0052a84:	f240 80fb 	bls.w	d0052c7e <sb3dParticlesRender.part.0+0x646>
d0052a88:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0052a8c:	eef4 1ac1 	vcmpe.f32	s3, s2
d0052a90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052a94:	da32      	bge.n	d0052afc <sb3dParticlesRender.part.0+0x4c4>
d0052a96:	eef4 2ac1 	vcmpe.f32	s5, s2
d0052a9a:	ee27 7a02 	vmul.f32	s14, s14, s4
d0052a9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052aa2:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0052aa6:	f200 80ed 	bhi.w	d0052c84 <sb3dParticlesRender.part.0+0x64c>
d0052aaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052aae:	da25      	bge.n	d0052afc <sb3dParticlesRender.part.0+0x4c4>
d0052ab0:	ee37 7a61 	vsub.f32	s14, s14, s3
d0052ab4:	ee31 2a61 	vsub.f32	s4, s2, s3
d0052ab8:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0052abc:	ed9f 7a53 	vldr	s14, [pc, #332]	; d0052c0c <sb3dParticlesRender.part.0+0x5d4>
d0052ac0:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0052ac4:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0052ac8:	ee34 7a47 	vsub.f32	s14, s8, s14
d0052acc:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0052ad0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ad4:	d912      	bls.n	d0052afc <sb3dParticlesRender.part.0+0x4c4>
d0052ad6:	ee6b 7aa7 	vmul.f32	s15, s23, s15
d0052ada:	eeec 7a24 	vfma.f32	s15, s24, s9
d0052ade:	eeeb 7a05 	vfma.f32	s15, s22, s10
d0052ae2:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0052ae6:	eeb1 5a67 	vneg.f32	s10, s15
d0052aea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052aee:	da05      	bge.n	d0052afc <sb3dParticlesRender.part.0+0x4c4>
d0052af0:	edd3 7a07 	vldr	s15, [r3, #28]
d0052af4:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052af8:	eea5 0a07 	vfma.f32	s0, s10, s14
d0052afc:	3340      	adds	r3, #64	; 0x40
d0052afe:	459a      	cmp	sl, r3
d0052b00:	d016      	beq.n	d0052b30 <sb3dParticlesRender.part.0+0x4f8>
d0052b02:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0052b04:	2a00      	cmp	r2, #0
d0052b06:	d0f9      	beq.n	d0052afc <sb3dParticlesRender.part.0+0x4c4>
d0052b08:	781a      	ldrb	r2, [r3, #0]
d0052b0a:	2a00      	cmp	r2, #0
d0052b0c:	d086      	beq.n	d0052a1c <sb3dParticlesRender.part.0+0x3e4>
d0052b0e:	edd3 4a04 	vldr	s9, [r3, #16]
d0052b12:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0052b16:	edd3 7a05 	vldr	s15, [r3, #20]
d0052b1a:	ed93 5a06 	vldr	s10, [r3, #24]
d0052b1e:	eef1 4a64 	vneg.f32	s9, s9
d0052b22:	eef1 7a67 	vneg.f32	s15, s15
d0052b26:	eeb1 5a45 	vneg.f32	s10, s10
d0052b2a:	e7d4      	b.n	d0052ad6 <sb3dParticlesRender.part.0+0x49e>
d0052b2c:	ed9f 0a33 	vldr	s0, [pc, #204]	; d0052bfc <sb3dParticlesRender.part.0+0x5c4>
d0052b30:	7e63      	ldrb	r3, [r4, #25]
d0052b32:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0052b36:	ed9f 7a33 	vldr	s14, [pc, #204]	; d0052c04 <sb3dParticlesRender.part.0+0x5cc>
d0052b3a:	ee07 3a90 	vmov	s15, r3
d0052b3e:	ed9f 8a33 	vldr	s16, [pc, #204]	; d0052c0c <sb3dParticlesRender.part.0+0x5d4>
d0052b42:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0052b46:	ee67 7a87 	vmul.f32	s15, s15, s14
d0052b4a:	fec7 7a88 	vmaxnm.f32	s15, s15, s16
d0052b4e:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0052b52:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0052b56:	f7ff fb0f 	bl	d0052178 <brightnessToShadeF>
d0052b5a:	edd4 ea05 	vldr	s29, [r4, #20]
d0052b5e:	ed94 5a04 	vldr	s10, [r4, #16]
d0052b62:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0052b66:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0052b6a:	edd4 7a03 	vldr	s15, [r4, #12]
d0052b6e:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0052b72:	ed94 6a00 	vldr	s12, [r4]
d0052b76:	edd4 6a01 	vldr	s13, [r4, #4]
d0052b7a:	edd4 5a02 	vldr	s11, [r4, #8]
d0052b7e:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0052b82:	fece ea88 	vmaxnm.f32	s29, s29, s16
d0052b86:	fece eac7 	vminnm.f32	s29, s29, s14
d0052b8a:	e59f      	b.n	d00526cc <sb3dParticlesRender.part.0+0x94>
d0052b8c:	eef0 4a6e 	vmov.f32	s9, s29
d0052b90:	1e46      	subs	r6, r0, #1
d0052b92:	2701      	movs	r7, #1
d0052b94:	463b      	mov	r3, r7
d0052b96:	aa58      	add	r2, sp, #352	; 0x160
d0052b98:	3701      	adds	r7, #1
d0052b9a:	a858      	add	r0, sp, #352	; 0x160
d0052b9c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0052ba0:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0052ba4:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0052ba8:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0052bac:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0052bb0:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0052bb4:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0052bb8:	7e62      	ldrb	r2, [r4, #25]
d0052bba:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0052bbe:	4628      	mov	r0, r5
d0052bc0:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0052bc4:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0052bc8:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0052bcc:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0052bd0:	ed9c 2a01 	vldr	s4, [ip, #4]
d0052bd4:	7e21      	ldrb	r1, [r4, #24]
d0052bd6:	eddc 2a02 	vldr	s5, [ip, #8]
d0052bda:	f7ff fc1b 	bl	d0052414 <submitClippedTri.constprop.0>
d0052bde:	42b7      	cmp	r7, r6
d0052be0:	d1d8      	bne.n	d0052b94 <sb3dParticlesRender.part.0+0x55c>
d0052be2:	3420      	adds	r4, #32
d0052be4:	45a0      	cmp	r8, r4
d0052be6:	f47f aed8 	bne.w	d005299a <sb3dParticlesRender.part.0+0x362>
d0052bea:	b059      	add	sp, #356	; 0x164
d0052bec:	ecbd 8b10 	vpop	{d8-d15}
d0052bf0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052bf4:	2001f000 	.word	0x2001f000
d0052bf8:	38d1b717 	.word	0x38d1b717
d0052bfc:	3dcccccd 	.word	0x3dcccccd
d0052c00:	358637bd 	.word	0x358637bd
d0052c04:	3b808081 	.word	0x3b808081
d0052c08:	d0066484 	.word	0xd0066484
d0052c0c:	00000000 	.word	0x00000000
d0052c10:	1e43      	subs	r3, r0, #1
d0052c12:	eef0 4a6e 	vmov.f32	s9, s29
d0052c16:	f8cd a054 	str.w	sl, [sp, #84]	; 0x54
d0052c1a:	2701      	movs	r7, #1
d0052c1c:	46aa      	mov	sl, r5
d0052c1e:	4625      	mov	r5, r4
d0052c20:	461c      	mov	r4, r3
d0052c22:	463b      	mov	r3, r7
d0052c24:	aa58      	add	r2, sp, #352	; 0x160
d0052c26:	3701      	adds	r7, #1
d0052c28:	a858      	add	r0, sp, #352	; 0x160
d0052c2a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0052c2e:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0052c32:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0052c36:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0052c3a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0052c3e:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0052c42:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0052c46:	7e6a      	ldrb	r2, [r5, #25]
d0052c48:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0052c4c:	4650      	mov	r0, sl
d0052c4e:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0052c52:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0052c56:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0052c5a:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0052c5e:	ed9c 2a01 	vldr	s4, [ip, #4]
d0052c62:	7e29      	ldrb	r1, [r5, #24]
d0052c64:	eddc 2a02 	vldr	s5, [ip, #8]
d0052c68:	f7ff fbd4 	bl	d0052414 <submitClippedTri.constprop.0>
d0052c6c:	42a7      	cmp	r7, r4
d0052c6e:	d1d8      	bne.n	d0052c22 <sb3dParticlesRender.part.0+0x5ea>
d0052c70:	462c      	mov	r4, r5
d0052c72:	eef0 ea64 	vmov.f32	s29, s9
d0052c76:	4655      	mov	r5, sl
d0052c78:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
d0052c7c:	e64f      	b.n	d005291e <sb3dParticlesRender.part.0+0x2e6>
d0052c7e:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0052c82:	e728      	b.n	d0052ad6 <sb3dParticlesRender.part.0+0x49e>
d0052c84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c88:	d812      	bhi.n	d0052cb0 <sb3dParticlesRender.part.0+0x678>
d0052c8a:	ee37 7a61 	vsub.f32	s14, s14, s3
d0052c8e:	ee31 2a61 	vsub.f32	s4, s2, s3
d0052c92:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0052c96:	ed1f 7a23 	vldr	s14, [pc, #-140]	; d0052c0c <sb3dParticlesRender.part.0+0x5d4>
d0052c9a:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0052c9e:	eef0 2a44 	vmov.f32	s5, s8
d0052ca2:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0052ca6:	eee7 2a63 	vfms.f32	s5, s14, s7
d0052caa:	eeb0 7a62 	vmov.f32	s14, s5
d0052cae:	e70d      	b.n	d0052acc <sb3dParticlesRender.part.0+0x494>
d0052cb0:	ee37 7a41 	vsub.f32	s14, s14, s2
d0052cb4:	ee32 2ac1 	vsub.f32	s4, s5, s2
d0052cb8:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0052cbc:	ed1f 7a2d 	vldr	s14, [pc, #-180]	; d0052c0c <sb3dParticlesRender.part.0+0x5d4>
d0052cc0:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0052cc4:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0052cc8:	ee34 7a47 	vsub.f32	s14, s8, s14
d0052ccc:	ee27 7a03 	vmul.f32	s14, s14, s6
d0052cd0:	e6fc      	b.n	d0052acc <sb3dParticlesRender.part.0+0x494>
d0052cd2:	bf00      	nop

d0052cd4 <setDefaultRenderMode>:
d0052cd4:	4b01      	ldr	r3, [pc, #4]	; (d0052cdc <setDefaultRenderMode+0x8>)
d0052cd6:	4a02      	ldr	r2, [pc, #8]	; (d0052ce0 <setDefaultRenderMode+0xc>)
d0052cd8:	601a      	str	r2, [r3, #0]
d0052cda:	4770      	bx	lr
d0052cdc:	d00fc740 	.word	0xd00fc740
d0052ce0:	d0052349 	.word	0xd0052349

d0052ce4 <initClipScratch>:
d0052ce4:	b510      	push	{r4, lr}
d0052ce6:	4c0f      	ldr	r4, [pc, #60]	; (d0052d24 <initClipScratch+0x40>)
d0052ce8:	6823      	ldr	r3, [r4, #0]
d0052cea:	b11b      	cbz	r3, d0052cf4 <initClipScratch+0x10>
d0052cec:	4b0e      	ldr	r3, [pc, #56]	; (d0052d28 <initClipScratch+0x44>)
d0052cee:	681b      	ldr	r3, [r3, #0]
d0052cf0:	b103      	cbz	r3, d0052cf4 <initClipScratch+0x10>
d0052cf2:	bd10      	pop	{r4, pc}
d0052cf4:	4a0d      	ldr	r2, [pc, #52]	; (d0052d2c <initClipScratch+0x48>)
d0052cf6:	7813      	ldrb	r3, [r2, #0]
d0052cf8:	7850      	ldrb	r0, [r2, #1]
d0052cfa:	7891      	ldrb	r1, [r2, #2]
d0052cfc:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0052d00:	78d2      	ldrb	r2, [r2, #3]
d0052d02:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0052d06:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052d0a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0052d0c:	4798      	blx	r3
d0052d0e:	2800      	cmp	r0, #0
d0052d10:	d0ef      	beq.n	d0052cf2 <initClipScratch+0xe>
d0052d12:	301f      	adds	r0, #31
d0052d14:	4b04      	ldr	r3, [pc, #16]	; (d0052d28 <initClipScratch+0x44>)
d0052d16:	f020 001f 	bic.w	r0, r0, #31
d0052d1a:	f100 0260 	add.w	r2, r0, #96	; 0x60
d0052d1e:	6020      	str	r0, [r4, #0]
d0052d20:	601a      	str	r2, [r3, #0]
d0052d22:	bd10      	pop	{r4, pc}
d0052d24:	d0066480 	.word	0xd0066480
d0052d28:	d0066484 	.word	0xd0066484
d0052d2c:	2001f000 	.word	0x2001f000

d0052d30 <submitClippedTri>:
d0052d30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052d34:	4f84      	ldr	r7, [pc, #528]	; (d0052f48 <submitClippedTri+0x218>)
d0052d36:	683d      	ldr	r5, [r7, #0]
d0052d38:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0052d3c:	ed2d 8b04 	vpush	{d8-d9}
d0052d40:	b08b      	sub	sp, #44	; 0x2c
d0052d42:	f280 80ee 	bge.w	d0052f22 <submitClippedTri+0x1f2>
d0052d46:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0052d4a:	edd0 6a14 	vldr	s13, [r0, #80]	; 0x50
d0052d4e:	eeb6 9a00 	vmov.f32	s18, #96	; 0x3f000000  0.5
d0052d52:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d0052d56:	ed90 5a12 	vldr	s10, [r0, #72]	; 0x48
d0052d5a:	ea4f 1c85 	mov.w	ip, r5, lsl #6
d0052d5e:	eec6 8a01 	vdiv.f32	s17, s12, s2
d0052d62:	4c7a      	ldr	r4, [pc, #488]	; (d0052f4c <submitClippedTri+0x21c>)
d0052d64:	469b      	mov	fp, r3
d0052d66:	f10c 0a08 	add.w	sl, ip, #8
d0052d6a:	eb04 1685 	add.w	r6, r4, r5, lsl #6
d0052d6e:	3501      	adds	r5, #1
d0052d70:	f10c 0810 	add.w	r8, ip, #16
d0052d74:	eddf 5a76 	vldr	s11, [pc, #472]	; d0052f50 <submitClippedTri+0x220>
d0052d78:	603d      	str	r5, [r7, #0]
d0052d7a:	eb04 050a 	add.w	r5, r4, sl
d0052d7e:	eec6 7a22 	vdiv.f32	s15, s12, s5
d0052d82:	eb04 0908 	add.w	r9, r4, r8
d0052d86:	ee76 6a89 	vadd.f32	s13, s13, s18
d0052d8a:	ee86 8a04 	vdiv.f32	s16, s12, s8
d0052d8e:	ee37 7a09 	vadd.f32	s14, s14, s18
d0052d92:	ee68 0aa0 	vmul.f32	s1, s17, s1
d0052d96:	ee20 0a28 	vmul.f32	s0, s0, s17
d0052d9a:	eef0 8a47 	vmov.f32	s17, s14
d0052d9e:	ee61 1aa7 	vmul.f32	s3, s3, s15
d0052da2:	ee27 2a82 	vmul.f32	s4, s15, s4
d0052da6:	eef0 7a66 	vmov.f32	s15, s13
d0052daa:	eee5 8a00 	vfma.f32	s17, s10, s0
d0052dae:	ed9f 0a69 	vldr	s0, [pc, #420]	; d0052f54 <submitClippedTri+0x224>
d0052db2:	eee5 7a60 	vfms.f32	s15, s10, s1
d0052db6:	eef0 0a47 	vmov.f32	s1, s14
d0052dba:	ee23 3a08 	vmul.f32	s6, s6, s16
d0052dbe:	ee68 3a23 	vmul.f32	s7, s16, s7
d0052dc2:	eee5 0a21 	vfma.f32	s1, s10, s3
d0052dc6:	eea5 7a03 	vfma.f32	s14, s10, s6
d0052dca:	eefd 8ae8 	vcvt.s32.f32	s17, s17
d0052dce:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052dd2:	ee18 3a90 	vmov	r3, s17
d0052dd6:	eef0 1a60 	vmov.f32	s3, s1
d0052dda:	ee17 7a90 	vmov	r7, s15
d0052dde:	eef0 0a66 	vmov.f32	s1, s13
d0052de2:	f844 300c 	str.w	r3, [r4, ip]
d0052de6:	eee5 6a63 	vfms.f32	s13, s10, s7
d0052dea:	6077      	str	r7, [r6, #4]
d0052dec:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d0052df0:	b23f      	sxth	r7, r7
d0052df2:	eee5 0a42 	vfms.f32	s1, s10, s4
d0052df6:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0052dfa:	ee11 3a90 	vmov	r3, s3
d0052dfe:	f844 300a 	str.w	r3, [r4, sl]
d0052e02:	ee17 3a10 	vmov	r3, s14
d0052e06:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0052e0a:	edc5 7a01 	vstr	s15, [r5, #4]
d0052e0e:	ee17 ea90 	vmov	lr, s15
d0052e12:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0052e16:	f844 3008 	str.w	r3, [r4, r8]
d0052e1a:	45be      	cmp	lr, r7
d0052e1c:	46b8      	mov	r8, r7
d0052e1e:	edc9 7a01 	vstr	s15, [r9, #4]
d0052e22:	ee17 5a90 	vmov	r5, s15
d0052e26:	f886 1034 	strb.w	r1, [r6, #52]	; 0x34
d0052e2a:	f886 2035 	strb.w	r2, [r6, #53]	; 0x35
d0052e2e:	edc6 4a07 	vstr	s9, [r6, #28]
d0052e32:	f886 b036 	strb.w	fp, [r6, #54]	; 0x36
d0052e36:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0052e3a:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0052e3e:	ee31 7a47 	vsub.f32	s14, s2, s14
d0052e42:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052e46:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0052e4a:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0052e4e:	ee27 7a00 	vmul.f32	s14, s14, s0
d0052e52:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052e56:	ee17 3a10 	vmov	r3, s14
d0052e5a:	8433      	strh	r3, [r6, #32]
d0052e5c:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0052e60:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0052e64:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0052e68:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052e6c:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0052e70:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0052e74:	ee27 7a00 	vmul.f32	s14, s14, s0
d0052e78:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052e7c:	ee17 3a10 	vmov	r3, s14
d0052e80:	8473      	strh	r3, [r6, #34]	; 0x22
d0052e82:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0052e86:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0052e8a:	ee74 7a67 	vsub.f32	s15, s8, s15
d0052e8e:	ed86 1a0a 	vstr	s2, [r6, #40]	; 0x28
d0052e92:	edc6 2a0b 	vstr	s5, [r6, #44]	; 0x2c
d0052e96:	ed86 4a0c 	vstr	s8, [r6, #48]	; 0x30
d0052e9a:	ee67 7a87 	vmul.f32	s15, s15, s14
d0052e9e:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0052ea2:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0052ea6:	ee67 7a80 	vmul.f32	s15, s15, s0
d0052eaa:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052eae:	ee17 3a90 	vmov	r3, s15
d0052eb2:	84b3      	strh	r3, [r6, #36]	; 0x24
d0052eb4:	db3a      	blt.n	d0052f2c <submitClippedTri+0x1fc>
d0052eb6:	463b      	mov	r3, r7
d0052eb8:	8737      	strh	r7, [r6, #56]	; 0x38
d0052eba:	42ab      	cmp	r3, r5
d0052ebc:	dd02      	ble.n	d0052ec4 <submitClippedTri+0x194>
d0052ebe:	eb04 030c 	add.w	r3, r4, ip
d0052ec2:	871d      	strh	r5, [r3, #56]	; 0x38
d0052ec4:	45be      	cmp	lr, r7
d0052ec6:	dc36      	bgt.n	d0052f36 <submitClippedTri+0x206>
d0052ec8:	eb04 030c 	add.w	r3, r4, ip
d0052ecc:	875f      	strh	r7, [r3, #58]	; 0x3a
d0052ece:	45a8      	cmp	r8, r5
d0052ed0:	da02      	bge.n	d0052ed8 <submitClippedTri+0x1a8>
d0052ed2:	eb04 030c 	add.w	r3, r4, ip
d0052ed6:	875d      	strh	r5, [r3, #58]	; 0x3a
d0052ed8:	eb04 030c 	add.w	r3, r4, ip
d0052edc:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d0052ee0:	2a00      	cmp	r2, #0
d0052ee2:	da01      	bge.n	d0052ee8 <submitClippedTri+0x1b8>
d0052ee4:	2200      	movs	r2, #0
d0052ee6:	871a      	strh	r2, [r3, #56]	; 0x38
d0052ee8:	eb04 030c 	add.w	r3, r4, ip
d0052eec:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d0052ef0:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0052ef4:	db02      	blt.n	d0052efc <submitClippedTri+0x1cc>
d0052ef6:	f240 123f 	movw	r2, #319	; 0x13f
d0052efa:	875a      	strh	r2, [r3, #58]	; 0x3a
d0052efc:	eb04 010c 	add.w	r1, r4, ip
d0052f00:	4464      	add	r4, ip
d0052f02:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d0052f06:	2b00      	cmp	r3, #0
d0052f08:	bfb8      	it	lt
d0052f0a:	331f      	addlt	r3, #31
d0052f0c:	115a      	asrs	r2, r3, #5
d0052f0e:	f9b4 303a 	ldrsh.w	r3, [r4, #58]	; 0x3a
d0052f12:	2b00      	cmp	r3, #0
d0052f14:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d0052f18:	bfb8      	it	lt
d0052f1a:	331f      	addlt	r3, #31
d0052f1c:	115b      	asrs	r3, r3, #5
d0052f1e:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
d0052f22:	b00b      	add	sp, #44	; 0x2c
d0052f24:	ecbd 8b04 	vpop	{d8-d9}
d0052f28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052f2c:	fa0f f28e 	sxth.w	r2, lr
d0052f30:	4613      	mov	r3, r2
d0052f32:	8732      	strh	r2, [r6, #56]	; 0x38
d0052f34:	e7c1      	b.n	d0052eba <submitClippedTri+0x18a>
d0052f36:	fa0f fe8e 	sxth.w	lr, lr
d0052f3a:	eb04 030c 	add.w	r3, r4, ip
d0052f3e:	46f0      	mov	r8, lr
d0052f40:	f8a3 e03a 	strh.w	lr, [r3, #58]	; 0x3a
d0052f44:	e7c3      	b.n	d0052ece <submitClippedTri+0x19e>
d0052f46:	bf00      	nop
d0052f48:	d00684a0 	.word	0xd00684a0
d0052f4c:	d00684c0 	.word	0xd00684c0
d0052f50:	00000000 	.word	0x00000000
d0052f54:	477fff00 	.word	0x477fff00

d0052f58 <getRenderTriCount>:
d0052f58:	4b01      	ldr	r3, [pc, #4]	; (d0052f60 <getRenderTriCount+0x8>)
d0052f5a:	6818      	ldr	r0, [r3, #0]
d0052f5c:	4770      	bx	lr
d0052f5e:	bf00      	nop
d0052f60:	d00684a0 	.word	0xd00684a0

d0052f64 <drawFakeHorizonDots>:
d0052f64:	2800      	cmp	r0, #0
d0052f66:	f000 8107 	beq.w	d0053178 <drawFakeHorizonDots+0x214>
d0052f6a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052f6e:	4699      	mov	r9, r3
d0052f70:	ed2d 8b10 	vpush	{d8-d15}
d0052f74:	b085      	sub	sp, #20
d0052f76:	2b00      	cmp	r3, #0
d0052f78:	f000 80f9 	beq.w	d005316e <drawFakeHorizonDots+0x20a>
d0052f7c:	4617      	mov	r7, r2
d0052f7e:	ed90 9a02 	vldr	s18, [r0, #8]
d0052f82:	edd0 8a00 	vldr	s17, [r0]
d0052f86:	4606      	mov	r6, r0
d0052f88:	2f02      	cmp	r7, #2
d0052f8a:	ed90 6a01 	vldr	s12, [r0, #4]
d0052f8e:	ed90 da07 	vldr	s26, [r0, #28]
d0052f92:	460a      	mov	r2, r1
d0052f94:	bfb8      	it	lt
d0052f96:	2702      	movlt	r7, #2
d0052f98:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d0052f9c:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0052fa0:	ee30 ba46 	vsub.f32	s22, s0, s12
d0052fa4:	ee07 7a90 	vmov	s15, r7
d0052fa8:	ed90 fa06 	vldr	s30, [r0, #24]
d0052fac:	edd0 ea08 	vldr	s29, [r0, #32]
d0052fb0:	f06f 0311 	mvn.w	r3, #17
d0052fb4:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0052fb8:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d0052fbc:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d0052fc0:	ee2b da0d 	vmul.f32	s26, s22, s26
d0052fc4:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0052fc8:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0052fcc:	ee89 7a08 	vdiv.f32	s14, s18, s16
d0052fd0:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d0052fd4:	eddf 5a69 	vldr	s11, [pc, #420]	; d005317c <drawFakeHorizonDots+0x218>
d0052fd8:	4d69      	ldr	r5, [pc, #420]	; (d0053180 <drawFakeHorizonDots+0x21c>)
d0052fda:	4c6a      	ldr	r4, [pc, #424]	; (d0053184 <drawFakeHorizonDots+0x220>)
d0052fdc:	eddf 9a6a 	vldr	s19, [pc, #424]	; d0053188 <drawFakeHorizonDots+0x224>
d0052fe0:	eec8 7a88 	vdiv.f32	s15, s17, s16
d0052fe4:	9302      	str	r3, [sp, #8]
d0052fe6:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d0053190 <drawFakeHorizonDots+0x22c>
d0052fea:	4623      	mov	r3, r4
d0052fec:	ee28 8a25 	vmul.f32	s16, s16, s11
d0052ff0:	ee2b ba26 	vmul.f32	s22, s22, s13
d0052ff4:	ee68 9a29 	vmul.f32	s19, s16, s19
d0052ff8:	febb 7a47 	vrintm.f32	s14, s14
d0052ffc:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0053000:	ee17 0a10 	vmov	r0, s14
d0053004:	fefb 7a67 	vrintm.f32	s15, s15
d0053008:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005300c:	3812      	subs	r0, #18
d005300e:	ee17 1a90 	vmov	r1, s15
d0053012:	fb05 f500 	mul.w	r5, r5, r0
d0053016:	fb00 f007 	mul.w	r0, r0, r7
d005301a:	fb04 5a01 	mla	sl, r4, r1, r5
d005301e:	3912      	subs	r1, #18
d0053020:	9001      	str	r0, [sp, #4]
d0053022:	fb07 f101 	mul.w	r1, r7, r1
d0053026:	9103      	str	r1, [sp, #12]
d0053028:	eddd 7a01 	vldr	s15, [sp, #4]
d005302c:	ee39 aa08 	vadd.f32	s20, s18, s16
d0053030:	9902      	ldr	r1, [sp, #8]
d0053032:	ee78 aa88 	vadd.f32	s21, s17, s16
d0053036:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005303a:	9d03      	ldr	r5, [sp, #12]
d005303c:	fb01 f801 	mul.w	r8, r1, r1
d0053040:	f06f 0411 	mvn.w	r4, #17
d0053044:	ee37 aaca 	vsub.f32	s20, s15, s20
d0053048:	e078      	b.n	d005313c <drawFakeHorizonDots+0x1d8>
d005304a:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d005304e:	fb09 f000 	mul.w	r0, r9, r0
d0053052:	2850      	cmp	r0, #80	; 0x50
d0053054:	dd6e      	ble.n	d0053134 <drawFakeHorizonDots+0x1d0>
d0053056:	494d      	ldr	r1, [pc, #308]	; (d005318c <drawFakeHorizonDots+0x228>)
d0053058:	fba1 1000 	umull	r1, r0, r1, r0
d005305c:	f3c0 1087 	ubfx	r0, r0, #6, #8
d0053060:	fb03 a104 	mla	r1, r3, r4, sl
d0053064:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d0053068:	fb0b f101 	mul.w	r1, fp, r1
d005306c:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d0053070:	fa5f fc81 	uxtb.w	ip, r1
d0053074:	4584      	cmp	ip, r0
d0053076:	d85d      	bhi.n	d0053134 <drawFakeHorizonDots+0x1d0>
d0053078:	ee07 5a10 	vmov	s14, r5
d005307c:	f3c1 4007 	ubfx	r0, r1, #16, #8
d0053080:	f3c1 2107 	ubfx	r1, r1, #8, #8
d0053084:	eef0 4a4a 	vmov.f32	s9, s20
d0053088:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005308c:	ee06 0a90 	vmov	s13, r0
d0053090:	ee07 1a90 	vmov	s15, r1
d0053094:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d0053098:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d005309c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00530a0:	ee37 7a6a 	vsub.f32	s14, s14, s21
d00530a4:	eee6 4aa9 	vfma.f32	s9, s13, s19
d00530a8:	eea7 7aa9 	vfma.f32	s14, s15, s19
d00530ac:	eef0 7a47 	vmov.f32	s15, s14
d00530b0:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d00530b4:	eeac 7a27 	vfma.f32	s14, s24, s15
d00530b8:	ee3b 7a07 	vadd.f32	s14, s22, s14
d00530bc:	eeb4 6ac7 	vcmpe.f32	s12, s14
d00530c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00530c4:	da36      	bge.n	d0053134 <drawFakeHorizonDots+0x1d0>
d00530c6:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d00530ca:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d00530ce:	ee2f 6a27 	vmul.f32	s12, s30, s15
d00530d2:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d00530d6:	ee6e 7a27 	vmul.f32	s15, s28, s15
d00530da:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d00530de:	ee83 4a87 	vdiv.f32	s8, s7, s14
d00530e2:	eeae 6aa4 	vfma.f32	s12, s29, s9
d00530e6:	eeed 7aa4 	vfma.f32	s15, s27, s9
d00530ea:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d00530ee:	ee36 7aa4 	vadd.f32	s14, s13, s9
d00530f2:	ee7d 6a06 	vadd.f32	s13, s26, s12
d00530f6:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d00530fa:	ee35 6aa4 	vadd.f32	s12, s11, s9
d00530fe:	ee66 6a85 	vmul.f32	s13, s13, s10
d0053102:	ee65 7a67 	vnmul.f32	s15, s10, s15
d0053106:	eea6 7a84 	vfma.f32	s14, s13, s8
d005310a:	eea7 6a84 	vfma.f32	s12, s15, s8
d005310e:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0053112:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0053116:	ee17 0a10 	vmov	r0, s14
d005311a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d005311e:	d209      	bcs.n	d0053134 <drawFakeHorizonDots+0x1d0>
d0053120:	ee17 1a90 	vmov	r1, s15
d0053124:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0053128:	d204      	bcs.n	d0053134 <drawFakeHorizonDots+0x1d0>
d005312a:	9200      	str	r2, [sp, #0]
d005312c:	f7fb fc08 	bl	d004e940 <putPixel>
d0053130:	4b14      	ldr	r3, [pc, #80]	; (d0053184 <drawFakeHorizonDots+0x220>)
d0053132:	9a00      	ldr	r2, [sp, #0]
d0053134:	3401      	adds	r4, #1
d0053136:	443d      	add	r5, r7
d0053138:	2c13      	cmp	r4, #19
d005313a:	d009      	beq.n	d0053150 <drawFakeHorizonDots+0x1ec>
d005313c:	fb04 8004 	mla	r0, r4, r4, r8
d0053140:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0053144:	dcf6      	bgt.n	d0053134 <drawFakeHorizonDots+0x1d0>
d0053146:	28f3      	cmp	r0, #243	; 0xf3
d0053148:	f73f af7f 	bgt.w	d005304a <drawFakeHorizonDots+0xe6>
d005314c:	4648      	mov	r0, r9
d005314e:	e787      	b.n	d0053060 <drawFakeHorizonDots+0xfc>
d0053150:	9902      	ldr	r1, [sp, #8]
d0053152:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d0053156:	9801      	ldr	r0, [sp, #4]
d0053158:	3101      	adds	r1, #1
d005315a:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d005315e:	4438      	add	r0, r7
d0053160:	2913      	cmp	r1, #19
d0053162:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d0053166:	9102      	str	r1, [sp, #8]
d0053168:	9001      	str	r0, [sp, #4]
d005316a:	f47f af5d 	bne.w	d0053028 <drawFakeHorizonDots+0xc4>
d005316e:	b005      	add	sp, #20
d0053170:	ecbd 8b10 	vpop	{d8-d15}
d0053174:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053178:	4770      	bx	lr
d005317a:	bf00      	nop
d005317c:	3eb33333 	.word	0x3eb33333
d0053180:	27d4eb2f 	.word	0x27d4eb2f
d0053184:	165667b1 	.word	0x165667b1
d0053188:	3c008081 	.word	0x3c008081
d005318c:	ca4587e7 	.word	0xca4587e7
d0053190:	4bf19f61 	.word	0x4bf19f61

d0053194 <drawFakeSkyDots>:
d0053194:	2a10      	cmp	r2, #16
d0053196:	ed9f 6a73 	vldr	s12, [pc, #460]	; d0053364 <drawFakeSkyDots+0x1d0>
d005319a:	ed9f 7a73 	vldr	s14, [pc, #460]	; d0053368 <drawFakeSkyDots+0x1d4>
d005319e:	bfb8      	it	lt
d00531a0:	2210      	movlt	r2, #16
d00531a2:	2b08      	cmp	r3, #8
d00531a4:	ee07 2a90 	vmov	s15, r2
d00531a8:	bfb8      	it	lt
d00531aa:	2308      	movlt	r3, #8
d00531ac:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d00531b0:	ee07 3a90 	vmov	s15, r3
d00531b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00531b8:	ed2d 8b10 	vpush	{d8-d15}
d00531bc:	eec6 da26 	vdiv.f32	s27, s12, s13
d00531c0:	b085      	sub	sp, #20
d00531c2:	4617      	mov	r7, r2
d00531c4:	4682      	mov	sl, r0
d00531c6:	9303      	str	r3, [sp, #12]
d00531c8:	468b      	mov	fp, r1
d00531ca:	2300      	movs	r3, #0
d00531cc:	edd0 ea06 	vldr	s29, [r0, #24]
d00531d0:	ed90 ea07 	vldr	s28, [r0, #28]
d00531d4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00531d8:	ed90 da08 	vldr	s26, [r0, #32]
d00531dc:	edd0 ca09 	vldr	s25, [r0, #36]	; 0x24
d00531e0:	ed90 ca0a 	vldr	s24, [r0, #40]	; 0x28
d00531e4:	eec7 aa27 	vdiv.f32	s21, s14, s15
d00531e8:	edd0 7a0d 	vldr	s15, [r0, #52]	; 0x34
d00531ec:	edd0 ba0b 	vldr	s23, [r0, #44]	; 0x2c
d00531f0:	edcd 7a00 	vstr	s15, [sp]
d00531f4:	ed90 ba0c 	vldr	s22, [r0, #48]	; 0x30
d00531f8:	edd0 7a0e 	vldr	s15, [r0, #56]	; 0x38
d00531fc:	f89d 9078 	ldrb.w	r9, [sp, #120]	; 0x78
d0053200:	f8df 8178 	ldr.w	r8, [pc, #376]	; d005337c <drawFakeSkyDots+0x1e8>
d0053204:	ed9f fa59 	vldr	s30, [pc, #356]	; d005336c <drawFakeSkyDots+0x1d8>
d0053208:	9302      	str	r3, [sp, #8]
d005320a:	edcd 7a01 	vstr	s15, [sp, #4]
d005320e:	eddd 7a02 	vldr	s15, [sp, #8]
d0053212:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0053216:	4b56      	ldr	r3, [pc, #344]	; (d0053370 <drawFakeSkyDots+0x1dc>)
d0053218:	2400      	movs	r4, #0
d005321a:	ee17 2a90 	vmov	r2, s15
d005321e:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0053222:	4e54      	ldr	r6, [pc, #336]	; (d0053374 <drawFakeSkyDots+0x1e0>)
d0053224:	fb03 f502 	mul.w	r5, r3, r2
d0053228:	ea85 3355 	eor.w	r3, r5, r5, lsr #13
d005322c:	ee07 4a90 	vmov	s15, r4
d0053230:	eef0 fa48 	vmov.f32	s31, s16
d0053234:	3401      	adds	r4, #1
d0053236:	fb08 f303 	mul.w	r3, r8, r3
d005323a:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d005323e:	4435      	add	r5, r6
d0053240:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d0053244:	f3c3 4207 	ubfx	r2, r3, #16, #8
d0053248:	ee07 2a90 	vmov	s15, r2
d005324c:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0053250:	b2db      	uxtb	r3, r3
d0053252:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053256:	ee07 2a10 	vmov	s14, r2
d005325a:	454b      	cmp	r3, r9
d005325c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0053260:	eee7 fa8f 	vfma.f32	s31, s15, s30
d0053264:	d86f      	bhi.n	d0053346 <drawFakeSkyDots+0x1b2>
d0053266:	eee7 6a0f 	vfma.f32	s13, s14, s30
d005326a:	ee6f faaa 	vmul.f32	s31, s31, s21
d005326e:	eeb0 0a6f 	vmov.f32	s0, s31
d0053272:	ee26 aaad 	vmul.f32	s20, s13, s27
d0053276:	f003 fadf 	bl	d0056838 <sinf>
d005327a:	eeb0 9a40 	vmov.f32	s18, s0
d005327e:	eeb0 0a6f 	vmov.f32	s0, s31
d0053282:	f003 f8f5 	bl	d0056470 <cosf>
d0053286:	eef0 fa40 	vmov.f32	s31, s0
d005328a:	eeb0 0a4a 	vmov.f32	s0, s20
d005328e:	f003 fad3 	bl	d0056838 <sinf>
d0053292:	eef0 9a40 	vmov.f32	s19, s0
d0053296:	eeb0 0a4a 	vmov.f32	s0, s20
d005329a:	f003 f8e9 	bl	d0056470 <cosf>
d005329e:	eddd 6a01 	vldr	s13, [sp, #4]
d00532a2:	ee2f 7aa9 	vmul.f32	s14, s31, s19
d00532a6:	ee6f 7a80 	vmul.f32	s15, s31, s0
d00532aa:	ee26 6a87 	vmul.f32	s12, s13, s14
d00532ae:	ee6c 4aa7 	vmul.f32	s9, s25, s15
d00532b2:	ee6e 6aa7 	vmul.f32	s13, s29, s15
d00532b6:	eeab 6a27 	vfma.f32	s12, s22, s15
d00532ba:	eef0 7a66 	vmov.f32	s15, s13
d00532be:	eef0 6a64 	vmov.f32	s13, s9
d00532c2:	eeed 7a07 	vfma.f32	s15, s26, s14
d00532c6:	eeeb 6a87 	vfma.f32	s13, s23, s14
d00532ca:	eeb0 7a46 	vmov.f32	s14, s12
d00532ce:	ed9d 6a00 	vldr	s12, [sp]
d00532d2:	eea6 7a09 	vfma.f32	s14, s12, s18
d00532d6:	ed9f 6a28 	vldr	s12, [pc, #160]	; d0053378 <drawFakeSkyDots+0x1e4>
d00532da:	eeee 7a09 	vfma.f32	s15, s28, s18
d00532de:	eeec 6a09 	vfma.f32	s13, s24, s18
d00532e2:	eeb4 7ac6 	vcmpe.f32	s14, s12
d00532e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00532ea:	d92c      	bls.n	d0053346 <drawFakeSkyDots+0x1b2>
d00532ec:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00532f0:	ed9a 5a12 	vldr	s10, [sl, #72]	; 0x48
d00532f4:	ee65 7a27 	vmul.f32	s15, s10, s15
d00532f8:	eec6 4a07 	vdiv.f32	s9, s12, s14
d00532fc:	ed9a 7a13 	vldr	s14, [sl, #76]	; 0x4c
d0053300:	ed9a 6a14 	vldr	s12, [sl, #80]	; 0x50
d0053304:	ee37 7a28 	vadd.f32	s14, s14, s17
d0053308:	ee36 6a28 	vadd.f32	s12, s12, s17
d005330c:	ee65 6a26 	vmul.f32	s13, s10, s13
d0053310:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0053314:	eef0 7a47 	vmov.f32	s15, s14
d0053318:	eeb0 7a46 	vmov.f32	s14, s12
d005331c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053320:	eea4 7ae6 	vfms.f32	s14, s9, s13
d0053324:	ee17 0a90 	vmov	r0, s15
d0053328:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d005332c:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0053330:	d209      	bcs.n	d0053346 <drawFakeSkyDots+0x1b2>
d0053332:	ee17 3a90 	vmov	r3, s15
d0053336:	465a      	mov	r2, fp
d0053338:	ee17 1a90 	vmov	r1, s15
d005333c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0053340:	d201      	bcs.n	d0053346 <drawFakeSkyDots+0x1b2>
d0053342:	f7fb fafd 	bl	d004e940 <putPixel>
d0053346:	42a7      	cmp	r7, r4
d0053348:	f47f af6e 	bne.w	d0053228 <drawFakeSkyDots+0x94>
d005334c:	9b02      	ldr	r3, [sp, #8]
d005334e:	9a03      	ldr	r2, [sp, #12]
d0053350:	3301      	adds	r3, #1
d0053352:	429a      	cmp	r2, r3
d0053354:	9302      	str	r3, [sp, #8]
d0053356:	f47f af5a 	bne.w	d005320e <drawFakeSkyDots+0x7a>
d005335a:	b005      	add	sp, #20
d005335c:	ecbd 8b10 	vpop	{d8-d15}
d0053360:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053364:	40c90fdb 	.word	0x40c90fdb
d0053368:	3fc90fdb 	.word	0x3fc90fdb
d005336c:	3b808081 	.word	0x3b808081
d0053370:	27d4eb2f 	.word	0x27d4eb2f
d0053374:	165667b1 	.word	0x165667b1
d0053378:	3a83126f 	.word	0x3a83126f
d005337c:	4bf19f61 	.word	0x4bf19f61

d0053380 <drawFakeHorizon>:
d0053380:	2800      	cmp	r0, #0
d0053382:	f000 813e 	beq.w	d0053602 <drawFakeHorizon+0x282>
d0053386:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005338a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005338e:	ed2d 8b0e 	vpush	{d8-d14}
d0053392:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d0053396:	b083      	sub	sp, #12
d0053398:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d005339c:	460f      	mov	r7, r1
d005339e:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d00533a2:	eddf 7a9c 	vldr	s15, [pc, #624]	; d0053614 <drawFakeHorizon+0x294>
d00533a6:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d00533aa:	4690      	mov	r8, r2
d00533ac:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d00533b0:	4699      	mov	r9, r3
d00533b2:	ed90 ea07 	vldr	s28, [r0, #28]
d00533b6:	2400      	movs	r4, #0
d00533b8:	ed90 9a01 	vldr	s18, [r0, #4]
d00533bc:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d00533c0:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d00533c4:	ee2b 7aad 	vmul.f32	s14, s23, s27
d00533c8:	4e93      	ldr	r6, [pc, #588]	; (d0053618 <drawFakeHorizon+0x298>)
d00533ca:	eef0 aa4c 	vmov.f32	s21, s24
d00533ce:	ed9f 8a93 	vldr	s16, [pc, #588]	; d005361c <drawFakeHorizon+0x29c>
d00533d2:	eeb0 aa4c 	vmov.f32	s20, s24
d00533d6:	eecd ca2d 	vdiv.f32	s25, s26, s27
d00533da:	eeb0 baed 	vabs.f32	s22, s27
d00533de:	ee30 9a49 	vsub.f32	s18, s0, s18
d00533e2:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00533e6:	eee7 aa28 	vfma.f32	s21, s14, s17
d00533ea:	ee6e 8a28 	vmul.f32	s17, s28, s17
d00533ee:	eea7 aaad 	vfma.f32	s20, s15, s27
d00533f2:	e056      	b.n	d00534a2 <drawFakeHorizon+0x122>
d00533f4:	ee89 6a26 	vdiv.f32	s12, s18, s13
d00533f8:	eef0 6ac7 	vabs.f32	s13, s14
d00533fc:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0053400:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053404:	eef4 6ac8 	vcmpe.f32	s13, s16
d0053408:	bfcc      	ite	gt
d005340a:	2201      	movgt	r2, #1
d005340c:	2200      	movle	r2, #0
d005340e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053412:	da61      	bge.n	d00534d8 <drawFakeHorizon+0x158>
d0053414:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0053418:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d005341c:	6833      	ldr	r3, [r6, #0]
d005341e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053422:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0053426:	f240 80a8 	bls.w	d005357a <drawFakeHorizon+0x1fa>
d005342a:	eeb4 bac8 	vcmpe.f32	s22, s16
d005342e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053432:	f100 809a 	bmi.w	d005356a <drawFakeHorizon+0x1ea>
d0053436:	ee7c 7a27 	vadd.f32	s15, s24, s15
d005343a:	eeb0 7a6b 	vmov.f32	s14, s23
d005343e:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0053442:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0053446:	ee17 ba90 	vmov	fp, s15
d005344a:	f1bb 0f00 	cmp.w	fp, #0
d005344e:	f2c0 80aa 	blt.w	d00535a6 <drawFakeHorizon+0x226>
d0053452:	2201      	movs	r2, #1
d0053454:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0053458:	46da      	mov	sl, fp
d005345a:	bfa8      	it	ge
d005345c:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0053460:	2a00      	cmp	r2, #0
d0053462:	f000 8091 	beq.w	d0053588 <drawFakeHorizon+0x208>
d0053466:	f1bb 0f00 	cmp.w	fp, #0
d005346a:	d009      	beq.n	d0053480 <drawFakeHorizon+0x100>
d005346c:	f1ba 0f00 	cmp.w	sl, #0
d0053470:	4628      	mov	r0, r5
d0053472:	4641      	mov	r1, r8
d0053474:	bfcc      	ite	gt
d0053476:	4652      	movgt	r2, sl
d0053478:	2201      	movle	r2, #1
d005347a:	4415      	add	r5, r2
d005347c:	f001 fec0 	bl	d0055200 <memset>
d0053480:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0053484:	d009      	beq.n	d005349a <drawFakeHorizon+0x11a>
d0053486:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d005348a:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d005348e:	4628      	mov	r0, r5
d0053490:	4639      	mov	r1, r7
d0053492:	bfa8      	it	ge
d0053494:	2201      	movge	r2, #1
d0053496:	f001 feb3 	bl	d0055200 <memset>
d005349a:	3401      	adds	r4, #1
d005349c:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00534a0:	d04e      	beq.n	d0053540 <drawFakeHorizon+0x1c0>
d00534a2:	ee07 4a90 	vmov	s15, r4
d00534a6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00534aa:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00534ae:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00534b2:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d00534b6:	ee3a 7a27 	vadd.f32	s14, s20, s15
d00534ba:	eeb0 6ae6 	vabs.f32	s12, s13
d00534be:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00534c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00534c6:	da95      	bge.n	d00533f4 <drawFakeHorizon+0x74>
d00534c8:	eef0 6ac7 	vabs.f32	s13, s14
d00534cc:	eef4 6ac8 	vcmpe.f32	s13, s16
d00534d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00534d4:	db4c      	blt.n	d0053570 <drawFakeHorizon+0x1f0>
d00534d6:	2200      	movs	r2, #0
d00534d8:	eec9 6a07 	vdiv.f32	s13, s18, s14
d00534dc:	6833      	ldr	r3, [r6, #0]
d00534de:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00534e2:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00534e6:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00534ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00534ee:	bfcc      	ite	gt
d00534f0:	2301      	movgt	r3, #1
d00534f2:	2300      	movle	r3, #0
d00534f4:	4293      	cmp	r3, r2
d00534f6:	f000 8085 	beq.w	d0053604 <drawFakeHorizon+0x284>
d00534fa:	eeb4 bac8 	vcmpe.f32	s22, s16
d00534fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053502:	d429      	bmi.n	d0053558 <drawFakeHorizon+0x1d8>
d0053504:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0053508:	eeb0 7a6b 	vmov.f32	s14, s23
d005350c:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0053510:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0053514:	ee17 ba90 	vmov	fp, s15
d0053518:	f1bb 0f00 	cmp.w	fp, #0
d005351c:	da9a      	bge.n	d0053454 <drawFakeHorizon+0xd4>
d005351e:	2a00      	cmp	r2, #0
d0053520:	d141      	bne.n	d00535a6 <drawFakeHorizon+0x226>
d0053522:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0053526:	f104 0401 	add.w	r4, r4, #1
d005352a:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d005352e:	4628      	mov	r0, r5
d0053530:	bfa8      	it	ge
d0053532:	2201      	movge	r2, #1
d0053534:	4641      	mov	r1, r8
d0053536:	f001 fe63 	bl	d0055200 <memset>
d005353a:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d005353e:	d1b0      	bne.n	d00534a2 <drawFakeHorizon+0x122>
d0053540:	eddf 7a36 	vldr	s15, [pc, #216]	; d005361c <drawFakeHorizon+0x29c>
d0053544:	eeb4 bae7 	vcmpe.f32	s22, s15
d0053548:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005354c:	da31      	bge.n	d00535b2 <drawFakeHorizon+0x232>
d005354e:	b003      	add	sp, #12
d0053550:	ecbd 8b0e 	vpop	{d8-d14}
d0053554:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053558:	b93a      	cbnz	r2, d005356a <drawFakeHorizon+0x1ea>
d005355a:	22a0      	movs	r2, #160	; 0xa0
d005355c:	4628      	mov	r0, r5
d005355e:	4639      	mov	r1, r7
d0053560:	4415      	add	r5, r2
d0053562:	f001 fe4d 	bl	d0055200 <memset>
d0053566:	22a0      	movs	r2, #160	; 0xa0
d0053568:	e7db      	b.n	d0053522 <drawFakeHorizon+0x1a2>
d005356a:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d005356e:	e77d      	b.n	d005346c <drawFakeHorizon+0xec>
d0053570:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0053574:	6832      	ldr	r2, [r6, #0]
d0053576:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d005357a:	4639      	mov	r1, r7
d005357c:	4628      	mov	r0, r5
d005357e:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0053582:	f001 fe3d 	bl	d0055200 <memset>
d0053586:	e788      	b.n	d005349a <drawFakeHorizon+0x11a>
d0053588:	f1bb 0f00 	cmp.w	fp, #0
d005358c:	d00e      	beq.n	d00535ac <drawFakeHorizon+0x22c>
d005358e:	4628      	mov	r0, r5
d0053590:	4652      	mov	r2, sl
d0053592:	4639      	mov	r1, r7
d0053594:	4455      	add	r5, sl
d0053596:	f001 fe33 	bl	d0055200 <memset>
d005359a:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d005359e:	f6bf af7c 	bge.w	d005349a <drawFakeHorizon+0x11a>
d00535a2:	4652      	mov	r2, sl
d00535a4:	e7bd      	b.n	d0053522 <drawFakeHorizon+0x1a2>
d00535a6:	f04f 0a00 	mov.w	sl, #0
d00535aa:	e76c      	b.n	d0053486 <drawFakeHorizon+0x106>
d00535ac:	46da      	mov	sl, fp
d00535ae:	4652      	mov	r2, sl
d00535b0:	e7b7      	b.n	d0053522 <drawFakeHorizon+0x1a2>
d00535b2:	ee2d ca0c 	vmul.f32	s24, s26, s24
d00535b6:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0053620 <drawFakeHorizon+0x2a0>
d00535ba:	f240 12df 	movw	r2, #479	; 0x1df
d00535be:	2000      	movs	r0, #0
d00535c0:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00535c4:	f8cd 9000 	str.w	r9, [sp]
d00535c8:	eef0 6a4c 	vmov.f32	s13, s24
d00535cc:	eea7 ca8e 	vfma.f32	s24, s15, s28
d00535d0:	eee9 6ace 	vfms.f32	s13, s19, s28
d00535d4:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d00535d8:	ee86 7aad 	vdiv.f32	s14, s13, s27
d00535dc:	ee37 7a2b 	vadd.f32	s14, s14, s23
d00535e0:	ee77 baab 	vadd.f32	s23, s15, s23
d00535e4:	febc 7ac7 	vcvta.s32.f32	s14, s14
d00535e8:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d00535ec:	ee17 1a10 	vmov	r1, s14
d00535f0:	ee17 3a90 	vmov	r3, s15
d00535f4:	f7fb f9b4 	bl	d004e960 <drawLine>
d00535f8:	b003      	add	sp, #12
d00535fa:	ecbd 8b0e 	vpop	{d8-d14}
d00535fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053602:	4770      	bx	lr
d0053604:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0053608:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005360c:	ddb5      	ble.n	d005357a <drawFakeHorizon+0x1fa>
d005360e:	4641      	mov	r1, r8
d0053610:	e7b4      	b.n	d005357c <drawFakeHorizon+0x1fc>
d0053612:	bf00      	nop
d0053614:	439f8000 	.word	0x439f8000
d0053618:	d00f4730 	.word	0xd00f4730
d005361c:	38d1b717 	.word	0x38d1b717
d0053620:	43ef8000 	.word	0x43ef8000

d0053624 <submitEntitySolid>:
d0053624:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053628:	ed2d 8b10 	vpush	{d8-d15}
d005362c:	b0c5      	sub	sp, #276	; 0x114
d005362e:	f10d 03b7 	add.w	r3, sp, #183	; 0xb7
d0053632:	9101      	str	r1, [sp, #4]
d0053634:	f023 031f 	bic.w	r3, r3, #31
d0053638:	9302      	str	r3, [sp, #8]
d005363a:	2800      	cmp	r0, #0
d005363c:	f000 835e 	beq.w	d0053cfc <submitEntitySolid+0x6d8>
d0053640:	f8d0 8018 	ldr.w	r8, [r0, #24]
d0053644:	4604      	mov	r4, r0
d0053646:	f1b8 0f00 	cmp.w	r8, #0
d005364a:	f000 8357 	beq.w	d0053cfc <submitEntitySolid+0x6d8>
d005364e:	f8d8 3000 	ldr.w	r3, [r8]
d0053652:	2b00      	cmp	r3, #0
d0053654:	f000 8352 	beq.w	d0053cfc <submitEntitySolid+0x6d8>
d0053658:	f8d8 3010 	ldr.w	r3, [r8, #16]
d005365c:	2b00      	cmp	r3, #0
d005365e:	f000 834d 	beq.w	d0053cfc <submitEntitySolid+0x6d8>
d0053662:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0053666:	3b01      	subs	r3, #1
d0053668:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d005366c:	f080 8346 	bcs.w	d0053cfc <submitEntitySolid+0x6d8>
d0053670:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053674:	2b00      	cmp	r3, #0
d0053676:	f340 8341 	ble.w	d0053cfc <submitEntitySolid+0x6d8>
d005367a:	edd1 7a15 	vldr	s15, [r1, #84]	; 0x54
d005367e:	460e      	mov	r6, r1
d0053680:	edd1 ba11 	vldr	s23, [r1, #68]	; 0x44
d0053684:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0053688:	edd1 8a10 	vldr	s17, [r1, #64]	; 0x40
d005368c:	f7fe fda0 	bl	d00521d0 <lightsGet>
d0053690:	4605      	mov	r5, r0
d0053692:	f7fe fda1 	bl	d00521d8 <lightsGetCount>
d0053696:	edd8 7a09 	vldr	s15, [r8, #36]	; 0x24
d005369a:	ed98 7a0a 	vldr	s14, [r8, #40]	; 0x28
d005369e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00536a2:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d00536a6:	edd8 7a08 	vldr	s15, [r8, #32]
d00536aa:	edd4 3a00 	vldr	s7, [r4]
d00536ae:	edcd 7a06 	vstr	s15, [sp, #24]
d00536b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00536b6:	edd8 7a0c 	vldr	s15, [r8, #48]	; 0x30
d00536ba:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d00536be:	edd4 1a01 	vldr	s3, [r4, #4]
d00536c2:	edcd 7a07 	vstr	s15, [sp, #28]
d00536c6:	bfc8      	it	gt
d00536c8:	2301      	movgt	r3, #1
d00536ca:	edd8 7a0b 	vldr	s15, [r8, #44]	; 0x2c
d00536ce:	bfd8      	it	le
d00536d0:	2300      	movle	r3, #0
d00536d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00536d6:	edd4 0a02 	vldr	s1, [r4, #8]
d00536da:	edcd 7a0e 	vstr	s15, [sp, #56]	; 0x38
d00536de:	edd6 7a00 	vldr	s15, [r6]
d00536e2:	bfc8      	it	gt
d00536e4:	f043 0301 	orrgt.w	r3, r3, #1
d00536e8:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d00536ec:	edcd 7a08 	vstr	s15, [sp, #32]
d00536f0:	edd6 7a01 	vldr	s15, [r6, #4]
d00536f4:	ed94 ba0a 	vldr	s22, [r4, #40]	; 0x28
d00536f8:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d00536fc:	edd6 7a02 	vldr	s15, [r6, #8]
d0053700:	edd4 fa0b 	vldr	s31, [r4, #44]	; 0x2c
d0053704:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0053708:	ed94 ca0c 	vldr	s24, [r4, #48]	; 0x30
d005370c:	edd4 ca0d 	vldr	s25, [r4, #52]	; 0x34
d0053710:	ed94 da0e 	vldr	s26, [r4, #56]	; 0x38
d0053714:	edd4 da0f 	vldr	s27, [r4, #60]	; 0x3c
d0053718:	ed94 ea07 	vldr	s28, [r4, #28]
d005371c:	edd4 ea08 	vldr	s29, [r4, #32]
d0053720:	ed94 fa09 	vldr	s30, [r4, #36]	; 0x24
d0053724:	ed96 5a06 	vldr	s10, [r6, #24]
d0053728:	edcd 3a00 	vstr	s7, [sp]
d005372c:	edcd 1a03 	vstr	s3, [sp, #12]
d0053730:	edcd 0a04 	vstr	s1, [sp, #16]
d0053734:	ed96 3a07 	vldr	s6, [r6, #28]
d0053738:	edd6 6a08 	vldr	s13, [r6, #32]
d005373c:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d0053740:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d0053744:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d0053748:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d005374c:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d0053750:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d0053754:	b113      	cbz	r3, d005375c <submitEntitySolid+0x138>
d0053756:	2800      	cmp	r0, #0
d0053758:	f300 8495 	bgt.w	d0054086 <submitEntitySolid+0xa62>
d005375c:	2300      	movs	r3, #0
d005375e:	9305      	str	r3, [sp, #20]
d0053760:	eddd 4a03 	vldr	s9, [sp, #12]
d0053764:	ee6f 1a83 	vmul.f32	s3, s31, s6
d0053768:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d005376c:	ee2d 1a03 	vmul.f32	s2, s26, s6
d0053770:	ee6f 0aa2 	vmul.f32	s1, s31, s5
d0053774:	f8d8 0004 	ldr.w	r0, [r8, #4]
d0053778:	ee74 3ac4 	vsub.f32	s7, s9, s8
d005377c:	eddd 4a00 	vldr	s9, [sp]
d0053780:	ed9d 4a08 	vldr	s8, [sp, #32]
d0053784:	ee2d 0a22 	vmul.f32	s0, s26, s5
d0053788:	ee2f 9a82 	vmul.f32	s18, s31, s4
d005378c:	2800      	cmp	r0, #0
d005378e:	ee74 4ac4 	vsub.f32	s9, s9, s8
d0053792:	ee23 aa23 	vmul.f32	s20, s6, s7
d0053796:	ee62 aaa3 	vmul.f32	s21, s5, s7
d005379a:	ee6d 9a02 	vmul.f32	s19, s26, s4
d005379e:	ee62 3a23 	vmul.f32	s7, s4, s7
d00537a2:	ee2e 3a83 	vmul.f32	s6, s29, s6
d00537a6:	ee6e 2aa2 	vmul.f32	s5, s29, s5
d00537aa:	ee2e 2a82 	vmul.f32	s4, s29, s4
d00537ae:	eee5 aaa4 	vfma.f32	s21, s11, s9
d00537b2:	eee6 3a24 	vfma.f32	s7, s12, s9
d00537b6:	eeeb 0a25 	vfma.f32	s1, s22, s11
d00537ba:	eeac 0aa5 	vfma.f32	s0, s25, s11
d00537be:	eeee 2a25 	vfma.f32	s5, s28, s11
d00537c2:	eddd 5a0a 	vldr	s11, [sp, #40]	; 0x28
d00537c6:	eeab 9a06 	vfma.f32	s18, s22, s12
d00537ca:	eeec 9a86 	vfma.f32	s19, s25, s12
d00537ce:	eeae 2a06 	vfma.f32	s4, s28, s12
d00537d2:	ed9d 6a04 	vldr	s12, [sp, #16]
d00537d6:	eea5 aa24 	vfma.f32	s20, s10, s9
d00537da:	eeeb 1a05 	vfma.f32	s3, s22, s10
d00537de:	eeac 1a85 	vfma.f32	s2, s25, s10
d00537e2:	eeae 3a05 	vfma.f32	s6, s28, s10
d00537e6:	ee36 6a65 	vsub.f32	s12, s12, s11
d00537ea:	eeec 0a07 	vfma.f32	s1, s24, s14
d00537ee:	eead 0a87 	vfma.f32	s0, s27, s14
d00537f2:	eeec 1a26 	vfma.f32	s3, s24, s13
d00537f6:	eead 1aa6 	vfma.f32	s2, s27, s13
d00537fa:	eea6 aa86 	vfma.f32	s20, s13, s12
d00537fe:	eee7 aa06 	vfma.f32	s21, s14, s12
d0053802:	eee7 3a86 	vfma.f32	s7, s15, s12
d0053806:	eeaf 3a26 	vfma.f32	s6, s30, s13
d005380a:	eeef 2a07 	vfma.f32	s5, s30, s14
d005380e:	eeac 9a27 	vfma.f32	s18, s24, s15
d0053812:	eeed 9aa7 	vfma.f32	s19, s27, s15
d0053816:	eeaf 2a27 	vfma.f32	s4, s30, s15
d005381a:	dd61      	ble.n	d00538e0 <submitEntitySolid+0x2bc>
d005381c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0053820:	f8d8 3000 	ldr.w	r3, [r8]
d0053824:	ed8d 8a0f 	vstr	s16, [sp, #60]	; 0x3c
d0053828:	edcd ba10 	vstr	s23, [sp, #64]	; 0x40
d005382c:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0053830:	edcd 8a11 	vstr	s17, [sp, #68]	; 0x44
d0053834:	4936      	ldr	r1, [pc, #216]	; (d0053910 <submitEntitySolid+0x2ec>)
d0053836:	4a37      	ldr	r2, [pc, #220]	; (d0053914 <submitEntitySolid+0x2f0>)
d0053838:	ed9d 8a00 	vldr	s16, [sp]
d005383c:	eddd 8a03 	vldr	s17, [sp, #12]
d0053840:	eddd ba04 	vldr	s23, [sp, #16]
d0053844:	edd3 7a01 	vldr	s15, [r3, #4]
d0053848:	330c      	adds	r3, #12
d005384a:	ed13 4a03 	vldr	s8, [r3, #-12]
d005384e:	310c      	adds	r1, #12
d0053850:	ee2c 5aa7 	vmul.f32	s10, s25, s15
d0053854:	ed53 4a01 	vldr	s9, [r3, #-4]
d0053858:	ee6d 5a27 	vmul.f32	s11, s26, s15
d005385c:	4298      	cmp	r0, r3
d005385e:	ee2d 6aa7 	vmul.f32	s12, s27, s15
d0053862:	f102 020c 	add.w	r2, r2, #12
d0053866:	ee61 6a27 	vmul.f32	s13, s2, s15
d005386a:	ee20 7a27 	vmul.f32	s14, s0, s15
d005386e:	ee69 7aa7 	vmul.f32	s15, s19, s15
d0053872:	eeab 5a04 	vfma.f32	s10, s22, s8
d0053876:	eeef 5a84 	vfma.f32	s11, s31, s8
d005387a:	eeac 6a04 	vfma.f32	s12, s24, s8
d005387e:	eee1 6a84 	vfma.f32	s13, s3, s8
d0053882:	eea0 7a84 	vfma.f32	s14, s1, s8
d0053886:	eee9 7a04 	vfma.f32	s15, s18, s8
d005388a:	ee38 5a05 	vadd.f32	s10, s16, s10
d005388e:	ee78 5aa5 	vadd.f32	s11, s17, s11
d0053892:	ee3b 6a86 	vadd.f32	s12, s23, s12
d0053896:	ee76 6a8a 	vadd.f32	s13, s13, s20
d005389a:	ee37 7a2a 	vadd.f32	s14, s14, s21
d005389e:	ee77 7aa3 	vadd.f32	s15, s15, s7
d00538a2:	eeae 5a24 	vfma.f32	s10, s28, s9
d00538a6:	eeee 5aa4 	vfma.f32	s11, s29, s9
d00538aa:	eeaf 6a24 	vfma.f32	s12, s30, s9
d00538ae:	eee3 6a24 	vfma.f32	s13, s6, s9
d00538b2:	eea2 7aa4 	vfma.f32	s14, s5, s9
d00538b6:	eee2 7a24 	vfma.f32	s15, s4, s9
d00538ba:	ed01 5a03 	vstr	s10, [r1, #-12]
d00538be:	ed41 5a02 	vstr	s11, [r1, #-8]
d00538c2:	ed01 6a01 	vstr	s12, [r1, #-4]
d00538c6:	ed42 6a03 	vstr	s13, [r2, #-12]
d00538ca:	ed02 7a02 	vstr	s14, [r2, #-8]
d00538ce:	ed42 7a01 	vstr	s15, [r2, #-4]
d00538d2:	d1b7      	bne.n	d0053844 <submitEntitySolid+0x220>
d00538d4:	ed9d 8a0f 	vldr	s16, [sp, #60]	; 0x3c
d00538d8:	eddd ba10 	vldr	s23, [sp, #64]	; 0x40
d00538dc:	eddd 8a11 	vldr	s17, [sp, #68]	; 0x44
d00538e0:	f8d8 3014 	ldr.w	r3, [r8, #20]
d00538e4:	2b00      	cmp	r3, #0
d00538e6:	9300      	str	r3, [sp, #0]
d00538e8:	f340 8208 	ble.w	d0053cfc <submitEntitySolid+0x6d8>
d00538ec:	f04f 0a00 	mov.w	sl, #0
d00538f0:	f8df b020 	ldr.w	fp, [pc, #32]	; d0053914 <submitEntitySolid+0x2f0>
d00538f4:	eddf aa08 	vldr	s21, [pc, #32]	; d0053918 <submitEntitySolid+0x2f4>
d00538f8:	ed9f ba08 	vldr	s22, [pc, #32]	; d005391c <submitEntitySolid+0x2f8>
d00538fc:	ed9d ca0b 	vldr	s24, [sp, #44]	; 0x2c
d0053900:	eddd ca0c 	vldr	s25, [sp, #48]	; 0x30
d0053904:	ed9d da0d 	vldr	s26, [sp, #52]	; 0x34
d0053908:	eddd da0e 	vldr	s27, [sp, #56]	; 0x38
d005390c:	e04e      	b.n	d00539ac <submitEntitySolid+0x388>
d005390e:	bf00      	nop
d0053910:	d00e84c0 	.word	0xd00e84c0
d0053914:	d005a480 	.word	0xd005a480
d0053918:	358637bd 	.word	0x358637bd
d005391c:	3b808081 	.word	0x3b808081
d0053920:	437f0000 	.word	0x437f0000
d0053924:	ed5f 5a02 	vldr	s11, [pc, #-8]	; d0053920 <submitEntitySolid+0x2fc>
d0053928:	eeb4 8a65 	vcmp.f32	s16, s11
d005392c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053930:	d009      	beq.n	d0053946 <submitEntitySolid+0x322>
d0053932:	eddd 5a06 	vldr	s11, [sp, #24]
d0053936:	ed9d 5a07 	vldr	s10, [sp, #28]
d005393a:	9b05      	ldr	r3, [sp, #20]
d005393c:	ee35 8a85 	vadd.f32	s16, s11, s10
d0053940:	2b00      	cmp	r3, #0
d0053942:	f040 824a 	bne.w	d0053dda <submitEntitySolid+0x7b6>
d0053946:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005394a:	fe88 8a0e 	vmaxnm.f32	s16, s16, s28
d005394e:	fe88 8a67 	vminnm.f32	s16, s16, s15
d0053952:	eeb0 0a48 	vmov.f32	s0, s16
d0053956:	f7fe fc0f 	bl	d0052178 <brightnessToShadeF>
d005395a:	9b03      	ldr	r3, [sp, #12]
d005395c:	eeb0 9a40 	vmov.f32	s18, s0
d0053960:	2b00      	cmp	r3, #0
d0053962:	f000 81d0 	beq.w	d0053d06 <submitEntitySolid+0x6e2>
d0053966:	eef0 4a40 	vmov.f32	s9, s0
d005396a:	7ba3      	ldrb	r3, [r4, #14]
d005396c:	7b62      	ldrb	r2, [r4, #13]
d005396e:	9801      	ldr	r0, [sp, #4]
d0053970:	7b21      	ldrb	r1, [r4, #12]
d0053972:	ed97 3a00 	vldr	s6, [r7]
d0053976:	edd7 3a01 	vldr	s7, [r7, #4]
d005397a:	ed97 4a02 	vldr	s8, [r7, #8]
d005397e:	edd6 1a00 	vldr	s3, [r6]
d0053982:	ed96 2a01 	vldr	s4, [r6, #4]
d0053986:	edd6 2a02 	vldr	s5, [r6, #8]
d005398a:	ed95 0a00 	vldr	s0, [r5]
d005398e:	edd5 0a01 	vldr	s1, [r5, #4]
d0053992:	ed95 1a02 	vldr	s2, [r5, #8]
d0053996:	f7ff f9cb 	bl	d0052d30 <submitClippedTri>
d005399a:	f8d8 3014 	ldr.w	r3, [r8, #20]
d005399e:	9300      	str	r3, [sp, #0]
d00539a0:	f10a 0a01 	add.w	sl, sl, #1
d00539a4:	9b00      	ldr	r3, [sp, #0]
d00539a6:	459a      	cmp	sl, r3
d00539a8:	f280 81a8 	bge.w	d0053cfc <submitEntitySolid+0x6d8>
d00539ac:	f8d8 4010 	ldr.w	r4, [r8, #16]
d00539b0:	ea4f 130a 	mov.w	r3, sl, lsl #4
d00539b4:	58e3      	ldr	r3, [r4, r3]
d00539b6:	eb04 140a 	add.w	r4, r4, sl, lsl #4
d00539ba:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d00539be:	6861      	ldr	r1, [r4, #4]
d00539c0:	68a2      	ldr	r2, [r4, #8]
d00539c2:	ea4f 0c43 	mov.w	ip, r3, lsl #1
d00539c6:	eb0b 0585 	add.w	r5, fp, r5, lsl #2
d00539ca:	eb01 0641 	add.w	r6, r1, r1, lsl #1
d00539ce:	edd5 7a02 	vldr	s15, [r5, #8]
d00539d2:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d00539d6:	0048      	lsls	r0, r1, #1
d00539d8:	eef4 7aeb 	vcmpe.f32	s15, s23
d00539dc:	eb0b 0686 	add.w	r6, fp, r6, lsl #2
d00539e0:	eb0b 0787 	add.w	r7, fp, r7, lsl #2
d00539e4:	9003      	str	r0, [sp, #12]
d00539e6:	ea4f 0942 	mov.w	r9, r2, lsl #1
d00539ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539ee:	dd0d      	ble.n	d0053a0c <submitEntitySolid+0x3e8>
d00539f0:	ed96 7a02 	vldr	s14, [r6, #8]
d00539f4:	eeb4 7aeb 	vcmpe.f32	s14, s23
d00539f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539fc:	dd06      	ble.n	d0053a0c <submitEntitySolid+0x3e8>
d00539fe:	ed97 7a02 	vldr	s14, [r7, #8]
d0053a02:	eeb4 7aeb 	vcmpe.f32	s14, s23
d0053a06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a0a:	dcc9      	bgt.n	d00539a0 <submitEntitySolid+0x37c>
d0053a0c:	eef4 7ae8 	vcmpe.f32	s15, s17
d0053a10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a14:	d516      	bpl.n	d0053a44 <submitEntitySolid+0x420>
d0053a16:	0048      	lsls	r0, r1, #1
d0053a18:	eb00 0e01 	add.w	lr, r0, r1
d0053a1c:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053a20:	ed9e 7a02 	vldr	s14, [lr, #8]
d0053a24:	eeb4 7ae8 	vcmpe.f32	s14, s17
d0053a28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a2c:	d50a      	bpl.n	d0053a44 <submitEntitySolid+0x420>
d0053a2e:	eb09 0e02 	add.w	lr, r9, r2
d0053a32:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053a36:	ed9e 7a02 	vldr	s14, [lr, #8]
d0053a3a:	eeb4 7ae8 	vcmpe.f32	s14, s17
d0053a3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a42:	d4ad      	bmi.n	d00539a0 <submitEntitySolid+0x37c>
d0053a44:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0053a48:	f01e 0f10 	tst.w	lr, #16
d0053a4c:	d135      	bne.n	d0053aba <submitEntitySolid+0x496>
d0053a4e:	edd5 2a00 	vldr	s5, [r5]
d0053a52:	edd5 3a02 	vldr	s7, [r5, #8]
d0053a56:	edd6 5a00 	vldr	s11, [r6]
d0053a5a:	ed97 5a02 	vldr	s10, [r7, #8]
d0053a5e:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0053a62:	ed95 7a01 	vldr	s14, [r5, #4]
d0053a66:	ee35 5a63 	vsub.f32	s10, s10, s7
d0053a6a:	ed96 4a02 	vldr	s8, [r6, #8]
d0053a6e:	ed97 6a01 	vldr	s12, [r7, #4]
d0053a72:	edd7 6a00 	vldr	s13, [r7]
d0053a76:	ee34 4a63 	vsub.f32	s8, s8, s7
d0053a7a:	ee36 6a47 	vsub.f32	s12, s12, s14
d0053a7e:	edd6 4a01 	vldr	s9, [r6, #4]
d0053a82:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0053a86:	ee25 2a65 	vnmul.f32	s4, s10, s11
d0053a8a:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0053a8e:	ee26 3a44 	vnmul.f32	s6, s12, s8
d0053a92:	eea4 2a26 	vfma.f32	s4, s8, s13
d0053a96:	ee66 6ae4 	vnmul.f32	s13, s13, s9
d0053a9a:	eea4 3a85 	vfma.f32	s6, s9, s10
d0053a9e:	eee5 6a86 	vfma.f32	s13, s11, s12
d0053aa2:	ee27 7a02 	vmul.f32	s14, s14, s4
d0053aa6:	eea2 7a83 	vfma.f32	s14, s5, s6
d0053aaa:	eea3 7aa6 	vfma.f32	s14, s7, s13
d0053aae:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0053ab2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ab6:	f6bf af73 	bge.w	d00539a0 <submitEntitySolid+0x37c>
d0053aba:	eb0c 0e03 	add.w	lr, ip, r3
d0053abe:	eef1 5a67 	vneg.f32	s11, s15
d0053ac2:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053ac6:	ed9e 7a00 	vldr	s14, [lr]
d0053aca:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0053ace:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ad2:	d51f      	bpl.n	d0053b14 <submitEntitySolid+0x4f0>
d0053ad4:	0048      	lsls	r0, r1, #1
d0053ad6:	eb00 0e01 	add.w	lr, r0, r1
d0053ada:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053ade:	edde 6a02 	vldr	s13, [lr, #8]
d0053ae2:	ed9e 6a00 	vldr	s12, [lr]
d0053ae6:	eef1 6a66 	vneg.f32	s13, s13
d0053aea:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053aee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053af2:	d50f      	bpl.n	d0053b14 <submitEntitySolid+0x4f0>
d0053af4:	eb09 0e02 	add.w	lr, r9, r2
d0053af8:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053afc:	edde 6a02 	vldr	s13, [lr, #8]
d0053b00:	ed9e 6a00 	vldr	s12, [lr]
d0053b04:	eef1 6a66 	vneg.f32	s13, s13
d0053b08:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053b0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b10:	f53f af46 	bmi.w	d00539a0 <submitEntitySolid+0x37c>
d0053b14:	eef4 7ac7 	vcmpe.f32	s15, s14
d0053b18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b1c:	d51b      	bpl.n	d0053b56 <submitEntitySolid+0x532>
d0053b1e:	0048      	lsls	r0, r1, #1
d0053b20:	eb00 0e01 	add.w	lr, r0, r1
d0053b24:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053b28:	ed9e 6a00 	vldr	s12, [lr]
d0053b2c:	edde 6a02 	vldr	s13, [lr, #8]
d0053b30:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053b34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b38:	dd0d      	ble.n	d0053b56 <submitEntitySolid+0x532>
d0053b3a:	eb09 0e02 	add.w	lr, r9, r2
d0053b3e:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053b42:	ed9e 6a00 	vldr	s12, [lr]
d0053b46:	edde 6a02 	vldr	s13, [lr, #8]
d0053b4a:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053b4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b52:	f73f af25 	bgt.w	d00539a0 <submitEntitySolid+0x37c>
d0053b56:	ee27 6a8c 	vmul.f32	s12, s15, s24
d0053b5a:	eb0c 0e03 	add.w	lr, ip, r3
d0053b5e:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053b62:	eeb1 5a46 	vneg.f32	s10, s12
d0053b66:	edde 6a01 	vldr	s13, [lr, #4]
d0053b6a:	eef4 6ac5 	vcmpe.f32	s13, s10
d0053b6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b72:	d51f      	bpl.n	d0053bb4 <submitEntitySolid+0x590>
d0053b74:	0048      	lsls	r0, r1, #1
d0053b76:	eb00 0e01 	add.w	lr, r0, r1
d0053b7a:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053b7e:	edde 4a02 	vldr	s9, [lr, #8]
d0053b82:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053b86:	ee64 4acc 	vnmul.f32	s9, s9, s24
d0053b8a:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0053b8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b92:	d50f      	bpl.n	d0053bb4 <submitEntitySolid+0x590>
d0053b94:	eb09 0e02 	add.w	lr, r9, r2
d0053b98:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053b9c:	edde 4a02 	vldr	s9, [lr, #8]
d0053ba0:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053ba4:	ee64 4acc 	vnmul.f32	s9, s9, s24
d0053ba8:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0053bac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bb0:	f53f aef6 	bmi.w	d00539a0 <submitEntitySolid+0x37c>
d0053bb4:	eef4 6ac6 	vcmpe.f32	s13, s12
d0053bb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bbc:	dd1f      	ble.n	d0053bfe <submitEntitySolid+0x5da>
d0053bbe:	0048      	lsls	r0, r1, #1
d0053bc0:	eb00 0e01 	add.w	lr, r0, r1
d0053bc4:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053bc8:	edde 4a02 	vldr	s9, [lr, #8]
d0053bcc:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053bd0:	ee6c 4a24 	vmul.f32	s9, s24, s9
d0053bd4:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0053bd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bdc:	dd0f      	ble.n	d0053bfe <submitEntitySolid+0x5da>
d0053bde:	eb09 0e02 	add.w	lr, r9, r2
d0053be2:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053be6:	edde 4a02 	vldr	s9, [lr, #8]
d0053bea:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053bee:	ee6c 4a24 	vmul.f32	s9, s24, s9
d0053bf2:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0053bf6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bfa:	f73f aed1 	bgt.w	d00539a0 <submitEntitySolid+0x37c>
d0053bfe:	eef4 7ae8 	vcmpe.f32	s15, s17
d0053c02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c06:	db28      	blt.n	d0053c5a <submitEntitySolid+0x636>
d0053c08:	0048      	lsls	r0, r1, #1
d0053c0a:	eb00 0e01 	add.w	lr, r0, r1
d0053c0e:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053c12:	edde 4a02 	vldr	s9, [lr, #8]
d0053c16:	eef4 4ae8 	vcmpe.f32	s9, s17
d0053c1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c1e:	db1c      	blt.n	d0053c5a <submitEntitySolid+0x636>
d0053c20:	eb09 0002 	add.w	r0, r9, r2
d0053c24:	eef4 7ac7 	vcmpe.f32	s15, s14
d0053c28:	eb0b 0080 	add.w	r0, fp, r0, lsl #2
d0053c2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c30:	edd0 7a02 	vldr	s15, [r0, #8]
d0053c34:	9003      	str	r0, [sp, #12]
d0053c36:	eef4 7ae8 	vcmpe.f32	s15, s17
d0053c3a:	bfac      	ite	ge
d0053c3c:	2001      	movge	r0, #1
d0053c3e:	2000      	movlt	r0, #0
d0053c40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c44:	f000 0001 	and.w	r0, r0, #1
d0053c48:	bfb8      	it	lt
d0053c4a:	2000      	movlt	r0, #0
d0053c4c:	b128      	cbz	r0, d0053c5a <submitEntitySolid+0x636>
d0053c4e:	eeb4 7a65 	vcmp.f32	s14, s11
d0053c52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c56:	f280 82be 	bge.w	d00541d6 <submitEntitySolid+0xbb2>
d0053c5a:	2000      	movs	r0, #0
d0053c5c:	9003      	str	r0, [sp, #12]
d0053c5e:	0048      	lsls	r0, r1, #1
d0053c60:	eb09 0e02 	add.w	lr, r9, r2
d0053c64:	4463      	add	r3, ip
d0053c66:	4a9a      	ldr	r2, [pc, #616]	; (d0053ed0 <submitEntitySolid+0x8ac>)
d0053c68:	4401      	add	r1, r0
d0053c6a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0053c6e:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0053c72:	eb02 028e 	add.w	r2, r2, lr, lsl #2
d0053c76:	ed93 6a00 	vldr	s12, [r3]
d0053c7a:	ed93 7a02 	vldr	s14, [r3, #8]
d0053c7e:	edd1 3a00 	vldr	s7, [r1]
d0053c82:	ed92 3a02 	vldr	s6, [r2, #8]
d0053c86:	ee73 5ac6 	vsub.f32	s11, s7, s12
d0053c8a:	edd3 6a01 	vldr	s13, [r3, #4]
d0053c8e:	ee33 5a47 	vsub.f32	s10, s6, s14
d0053c92:	edd1 4a02 	vldr	s9, [r1, #8]
d0053c96:	edd2 2a01 	vldr	s5, [r2, #4]
d0053c9a:	ed92 2a00 	vldr	s4, [r2]
d0053c9e:	ee34 1ac7 	vsub.f32	s2, s9, s14
d0053ca2:	ee72 7ae6 	vsub.f32	s15, s5, s13
d0053ca6:	ed91 4a01 	vldr	s8, [r1, #4]
d0053caa:	ee32 9a46 	vsub.f32	s18, s4, s12
d0053cae:	ee65 9a65 	vnmul.f32	s19, s10, s11
d0053cb2:	ee74 1a66 	vsub.f32	s3, s8, s13
d0053cb6:	ee27 aac1 	vnmul.f32	s20, s15, s2
d0053cba:	eee1 9a09 	vfma.f32	s19, s2, s18
d0053cbe:	ee29 9a61 	vnmul.f32	s18, s18, s3
d0053cc2:	eea1 aa85 	vfma.f32	s20, s3, s10
d0053cc6:	eea5 9aa7 	vfma.f32	s18, s11, s15
d0053cca:	ee69 7aa9 	vmul.f32	s15, s19, s19
d0053cce:	eeea 7a0a 	vfma.f32	s15, s20, s20
d0053cd2:	eee9 7a09 	vfma.f32	s15, s18, s18
d0053cd6:	eef4 7aea 	vcmpe.f32	s15, s21
d0053cda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053cde:	f67f ae5f 	bls.w	d00539a0 <submitEntitySolid+0x37c>
d0053ce2:	7b63      	ldrb	r3, [r4, #13]
d0053ce4:	ee05 3a90 	vmov	s11, r3
d0053ce8:	2bf8      	cmp	r3, #248	; 0xf8
d0053cea:	eeb8 ea65 	vcvt.f32.u32	s28, s11
d0053cee:	ee2e ea0b 	vmul.f32	s28, s28, s22
d0053cf2:	f67f ae17 	bls.w	d0053924 <submitEntitySolid+0x300>
d0053cf6:	ed9f 8a77 	vldr	s16, [pc, #476]	; d0053ed4 <submitEntitySolid+0x8b0>
d0053cfa:	e624      	b.n	d0053946 <submitEntitySolid+0x322>
d0053cfc:	b045      	add	sp, #276	; 0x114
d0053cfe:	ecbd 8b10 	vpop	{d8-d15}
d0053d02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053d06:	4a74      	ldr	r2, [pc, #464]	; (d0053ed8 <submitEntitySolid+0x8b4>)
d0053d08:	edd6 1a00 	vldr	s3, [r6]
d0053d0c:	7c13      	ldrb	r3, [r2, #16]
d0053d0e:	7c50      	ldrb	r0, [r2, #17]
d0053d10:	ed96 2a01 	vldr	s4, [r6, #4]
d0053d14:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0053d18:	7c90      	ldrb	r0, [r2, #18]
d0053d1a:	7cd2      	ldrb	r2, [r2, #19]
d0053d1c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0053d20:	edd6 2a02 	vldr	s5, [r6, #8]
d0053d24:	f8dd 9008 	ldr.w	r9, [sp, #8]
d0053d28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0053d2c:	4a6b      	ldr	r2, [pc, #428]	; (d0053edc <submitEntitySolid+0x8b8>)
d0053d2e:	edd5 0a01 	vldr	s1, [r5, #4]
d0053d32:	4648      	mov	r0, r9
d0053d34:	681e      	ldr	r6, [r3, #0]
d0053d36:	4b6a      	ldr	r3, [pc, #424]	; (d0053ee0 <submitEntitySolid+0x8bc>)
d0053d38:	ed95 1a02 	vldr	s2, [r5, #8]
d0053d3c:	ed95 0a00 	vldr	s0, [r5]
d0053d40:	ed97 3a00 	vldr	s6, [r7]
d0053d44:	edd7 3a01 	vldr	s7, [r7, #4]
d0053d48:	ed97 4a02 	vldr	s8, [r7, #8]
d0053d4c:	9901      	ldr	r1, [sp, #4]
d0053d4e:	6835      	ldr	r5, [r6, #0]
d0053d50:	6812      	ldr	r2, [r2, #0]
d0053d52:	681b      	ldr	r3, [r3, #0]
d0053d54:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d0053d58:	ed8d 1a17 	vstr	s2, [sp, #92]	; 0x5c
d0053d5c:	edcd 1a18 	vstr	s3, [sp, #96]	; 0x60
d0053d60:	ed8d 2a19 	vstr	s4, [sp, #100]	; 0x64
d0053d64:	edcd 2a1a 	vstr	s5, [sp, #104]	; 0x68
d0053d68:	ed8d 3a1b 	vstr	s6, [sp, #108]	; 0x6c
d0053d6c:	edcd 3a1c 	vstr	s7, [sp, #112]	; 0x70
d0053d70:	ed8d 4a1d 	vstr	s8, [sp, #116]	; 0x74
d0053d74:	ed8d 0a15 	vstr	s0, [sp, #84]	; 0x54
d0053d78:	47a8      	blx	r5
d0053d7a:	2802      	cmp	r0, #2
d0053d7c:	dc03      	bgt.n	d0053d86 <submitEntitySolid+0x762>
d0053d7e:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053d82:	9300      	str	r3, [sp, #0]
d0053d84:	e60c      	b.n	d00539a0 <submitEntitySolid+0x37c>
d0053d86:	eef0 4a49 	vmov.f32	s9, s18
d0053d8a:	1e46      	subs	r6, r0, #1
d0053d8c:	2501      	movs	r5, #1
d0053d8e:	464f      	mov	r7, r9
d0053d90:	9801      	ldr	r0, [sp, #4]
d0053d92:	4629      	mov	r1, r5
d0053d94:	3501      	adds	r5, #1
d0053d96:	7ba3      	ldrb	r3, [r4, #14]
d0053d98:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0053d9c:	7b62      	ldrb	r2, [r4, #13]
d0053d9e:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0053da2:	ed97 0a00 	vldr	s0, [r7]
d0053da6:	eb07 0181 	add.w	r1, r7, r1, lsl #2
d0053daa:	edd7 0a01 	vldr	s1, [r7, #4]
d0053dae:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d0053db2:	ed97 1a02 	vldr	s2, [r7, #8]
d0053db6:	edd1 1a00 	vldr	s3, [r1]
d0053dba:	ed91 2a01 	vldr	s4, [r1, #4]
d0053dbe:	edd1 2a02 	vldr	s5, [r1, #8]
d0053dc2:	ed9c 3a00 	vldr	s6, [ip]
d0053dc6:	eddc 3a01 	vldr	s7, [ip, #4]
d0053dca:	ed9c 4a02 	vldr	s8, [ip, #8]
d0053dce:	7b21      	ldrb	r1, [r4, #12]
d0053dd0:	f7fe ffae 	bl	d0052d30 <submitClippedTri>
d0053dd4:	42b5      	cmp	r5, r6
d0053dd6:	d1dc      	bne.n	d0053d92 <submitEntitySolid+0x76e>
d0053dd8:	e7d1      	b.n	d0053d7e <submitEntitySolid+0x75a>
d0053dda:	ee73 ea86 	vadd.f32	s29, s7, s12
d0053dde:	eddf fa41 	vldr	s31, [pc, #260]	; d0053ee4 <submitEntitySolid+0x8c0>
d0053de2:	ee34 fa26 	vadd.f32	s30, s8, s13
d0053de6:	ee34 7a87 	vadd.f32	s14, s9, s14
d0053dea:	eeb5 dac0 	vcmpe.f32	s26, #0.0
d0053dee:	ee7e ea82 	vadd.f32	s29, s29, s4
d0053df2:	ee3f fa22 	vadd.f32	s30, s30, s5
d0053df6:	ee37 3a03 	vadd.f32	s6, s14, s6
d0053dfa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053dfe:	ee6e eaaf 	vmul.f32	s29, s29, s31
d0053e02:	ee2f fa2f 	vmul.f32	s30, s30, s31
d0053e06:	ee63 fa2f 	vmul.f32	s31, s6, s31
d0053e0a:	f340 8175 	ble.w	d00540f8 <submitEntitySolid+0xad4>
d0053e0e:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0053e12:	ee77 2a4f 	vsub.f32	s5, s14, s30
d0053e16:	ed9d 7a08 	vldr	s14, [sp, #32]
d0053e1a:	ee37 3a6e 	vsub.f32	s6, s14, s29
d0053e1e:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0053e22:	ee37 4a6f 	vsub.f32	s8, s14, s31
d0053e26:	ee22 7aa2 	vmul.f32	s14, s5, s5
d0053e2a:	eea3 7a03 	vfma.f32	s14, s6, s6
d0053e2e:	eea4 7a04 	vfma.f32	s14, s8, s8
d0053e32:	eeb4 7aea 	vcmpe.f32	s14, s21
d0053e36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e3a:	f340 815d 	ble.w	d00540f8 <submitEntitySolid+0xad4>
d0053e3e:	eddf 6a2a 	vldr	s13, [pc, #168]	; d0053ee8 <submitEntitySolid+0x8c4>
d0053e42:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0053e46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e4a:	f100 8244 	bmi.w	d00542d6 <submitEntitySolid+0xcb2>
d0053e4e:	eddf 6a27 	vldr	s13, [pc, #156]	; d0053eec <submitEntitySolid+0x8c8>
d0053e52:	eeb4 7a66 	vcmp.f32	s14, s13
d0053e56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e5a:	f300 823c 	bgt.w	d00542d6 <submitEntitySolid+0xcb2>
d0053e5e:	eef1 6ae7 	vsqrt.f32	s13, s15
d0053e62:	aa1d      	add	r2, sp, #116	; 0x74
d0053e64:	4639      	mov	r1, r7
d0053e66:	4650      	mov	r0, sl
d0053e68:	f04f 0900 	mov.w	r9, #0
d0053e6c:	46aa      	mov	sl, r5
d0053e6e:	4627      	mov	r7, r4
d0053e70:	4615      	mov	r5, r2
d0053e72:	4632      	mov	r2, r6
d0053e74:	9e05      	ldr	r6, [sp, #20]
d0053e76:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0053e7a:	eeb0 6a4c 	vmov.f32	s12, s24
d0053e7e:	eef0 0a6d 	vmov.f32	s1, s27
d0053e82:	eeb0 5a47 	vmov.f32	s10, s14
d0053e86:	eef0 5a4e 	vmov.f32	s11, s28
d0053e8a:	eeb0 ca62 	vmov.f32	s24, s5
d0053e8e:	eef0 da44 	vmov.f32	s27, s8
d0053e92:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0053e96:	eeb0 7a6b 	vmov.f32	s14, s23
d0053e9a:	eef0 6a68 	vmov.f32	s13, s17
d0053e9e:	eef0 ba43 	vmov.f32	s23, s6
d0053ea2:	eef0 8a6f 	vmov.f32	s17, s31
d0053ea6:	eef0 fa4f 	vmov.f32	s31, s30
d0053eaa:	eeb0 fa6e 	vmov.f32	s30, s29
d0053eae:	ee29 9a27 	vmul.f32	s18, s18, s15
d0053eb2:	ee2a aa27 	vmul.f32	s20, s20, s15
d0053eb6:	ee69 9aa7 	vmul.f32	s19, s19, s15
d0053eba:	ee39 2a09 	vadd.f32	s4, s18, s18
d0053ebe:	ee3a 1a0a 	vadd.f32	s2, s20, s20
d0053ec2:	ee79 1aa9 	vadd.f32	s3, s19, s19
d0053ec6:	eef0 ea49 	vmov.f32	s29, s18
d0053eca:	eeb0 ea42 	vmov.f32	s28, s4
d0053ece:	e0c5      	b.n	d005405c <submitEntitySolid+0xa38>
d0053ed0:	d00e84c0 	.word	0xd00e84c0
d0053ed4:	437f0000 	.word	0x437f0000
d0053ed8:	2001f000 	.word	0x2001f000
d0053edc:	d0066480 	.word	0xd0066480
d0053ee0:	d0066484 	.word	0xd0066484
d0053ee4:	3eaab368 	.word	0x3eaab368
d0053ee8:	3f7fbe77 	.word	0x3f7fbe77
d0053eec:	3f8020c5 	.word	0x3f8020c5
d0053ef0:	00000000 	.word	0x00000000
d0053ef4:	edd4 7a02 	vldr	s15, [r4, #8]
d0053ef8:	edd4 3a01 	vldr	s7, [r4, #4]
d0053efc:	ee77 7aef 	vsub.f32	s15, s15, s31
d0053f00:	ed94 4a03 	vldr	s8, [r4, #12]
d0053f04:	ee73 3acf 	vsub.f32	s7, s7, s30
d0053f08:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d0053f0c:	ee34 4a68 	vsub.f32	s8, s8, s17
d0053f10:	ee67 4aa7 	vmul.f32	s9, s15, s15
d0053f14:	ee63 2a03 	vmul.f32	s5, s6, s6
d0053f18:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0053f1c:	eee4 4a04 	vfma.f32	s9, s8, s8
d0053f20:	eef4 2a64 	vcmp.f32	s5, s9
d0053f24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f28:	f340 8094 	ble.w	d0054054 <submitEntitySolid+0xa30>
d0053f2c:	eef4 4a6a 	vcmp.f32	s9, s21
d0053f30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f34:	f340 808e 	ble.w	d0054054 <submitEntitySolid+0xa30>
d0053f38:	eeb1 9ae4 	vsqrt.f32	s18, s9
d0053f3c:	ed94 2a08 	vldr	s4, [r4, #32]
d0053f40:	ee22 0a02 	vmul.f32	s0, s4, s4
d0053f44:	eeb4 0ae4 	vcmpe.f32	s0, s9
d0053f48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f4c:	eec5 2a09 	vdiv.f32	s5, s10, s18
d0053f50:	ee63 3aa2 	vmul.f32	s7, s7, s5
d0053f54:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0053f58:	ee24 4a22 	vmul.f32	s8, s8, s5
d0053f5c:	f140 80d3 	bpl.w	d0054106 <submitEntitySolid+0xae2>
d0053f60:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0053f64:	eeb4 2ac0 	vcmpe.f32	s4, s0
d0053f68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f6c:	da72      	bge.n	d0054054 <submitEntitySolid+0xa30>
d0053f6e:	eeb4 3ac0 	vcmpe.f32	s6, s0
d0053f72:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0053f76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f7a:	eeb4 0ae4 	vcmpe.f32	s0, s9
d0053f7e:	f200 8114 	bhi.w	d00541aa <submitEntitySolid+0xb86>
d0053f82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f86:	d965      	bls.n	d0054054 <submitEntitySolid+0xa30>
d0053f88:	ee74 4ac2 	vsub.f32	s9, s9, s4
d0053f8c:	ee30 2a42 	vsub.f32	s4, s0, s4
d0053f90:	ee84 9a82 	vdiv.f32	s18, s9, s4
d0053f94:	ed5f 4a2a 	vldr	s9, [pc, #-168]	; d0053ef0 <submitEntitySolid+0x8cc>
d0053f98:	fe89 9a24 	vmaxnm.f32	s18, s18, s9
d0053f9c:	fe89 9a45 	vminnm.f32	s18, s18, s10
d0053fa0:	ee35 9a49 	vsub.f32	s18, s10, s18
d0053fa4:	eeb5 9ac0 	vcmpe.f32	s18, #0.0
d0053fa8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fac:	d952      	bls.n	d0054054 <submitEntitySolid+0xa30>
d0053fae:	ee67 4aa9 	vmul.f32	s9, s15, s19
d0053fb2:	eee3 4a8a 	vfma.f32	s9, s7, s20
d0053fb6:	eee4 4a2e 	vfma.f32	s9, s8, s29
d0053fba:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0053fbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fc2:	d947      	bls.n	d0054054 <submitEntitySolid+0xa30>
d0053fc4:	eef5 cac0 	vcmpe.f32	s25, #0.0
d0053fc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fcc:	dd07      	ble.n	d0053fde <submitEntitySolid+0x9ba>
d0053fce:	ed94 3a07 	vldr	s6, [r4, #28]
d0053fd2:	ee2c 3a83 	vmul.f32	s6, s25, s6
d0053fd6:	ee23 3a09 	vmul.f32	s6, s6, s18
d0053fda:	eea4 8a83 	vfma.f32	s16, s9, s6
d0053fde:	eeb5 dac0 	vcmpe.f32	s26, #0.0
d0053fe2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fe6:	dd2f      	ble.n	d0054048 <submitEntitySolid+0xa24>
d0053fe8:	eed4 7aa1 	vfnms.f32	s15, s9, s3
d0053fec:	eed4 3a81 	vfnms.f32	s7, s9, s2
d0053ff0:	ee94 4a8e 	vfnms.f32	s8, s9, s28
d0053ff4:	ee2c 0a27 	vmul.f32	s0, s24, s15
d0053ff8:	eeab 0aa3 	vfma.f32	s0, s23, s7
d0053ffc:	eead 0a84 	vfma.f32	s0, s27, s8
d0054000:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0054004:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054008:	dd1e      	ble.n	d0054048 <submitEntitySolid+0xa24>
d005400a:	eef2 7a00 	vmov.f32	s15, #32	; 0x41000000  8.0
d005400e:	eef4 0a67 	vcmp.f32	s1, s15
d0054012:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054016:	d009      	beq.n	d005402c <submitEntitySolid+0xa08>
d0054018:	eef3 7a00 	vmov.f32	s15, #48	; 0x41800000  16.0
d005401c:	eef4 0a67 	vcmp.f32	s1, s15
d0054020:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054024:	f040 8085 	bne.w	d0054132 <submitEntitySolid+0xb0e>
d0054028:	ee20 0a00 	vmul.f32	s0, s0, s0
d005402c:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054030:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054034:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054038:	edd4 7a07 	vldr	s15, [r4, #28]
d005403c:	ee6d 7a27 	vmul.f32	s15, s26, s15
d0054040:	ee27 9a89 	vmul.f32	s18, s15, s18
d0054044:	eea9 8a00 	vfma.f32	s16, s18, s0
d0054048:	eeb4 8ac5 	vcmpe.f32	s16, s10
d005404c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054050:	f280 8098 	bge.w	d0054184 <submitEntitySolid+0xb60>
d0054054:	f109 0901 	add.w	r9, r9, #1
d0054058:	454e      	cmp	r6, r9
d005405a:	d05a      	beq.n	d0054112 <submitEntitySolid+0xaee>
d005405c:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0054060:	7823      	ldrb	r3, [r4, #0]
d0054062:	2b00      	cmp	r3, #0
d0054064:	f43f af46 	beq.w	d0053ef4 <submitEntitySolid+0x8d0>
d0054068:	edd4 3a04 	vldr	s7, [r4, #16]
d005406c:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0054070:	edd4 7a05 	vldr	s15, [r4, #20]
d0054074:	ed94 4a06 	vldr	s8, [r4, #24]
d0054078:	eef1 3a63 	vneg.f32	s7, s7
d005407c:	eef1 7a67 	vneg.f32	s15, s15
d0054080:	eeb1 4a44 	vneg.f32	s8, s8
d0054084:	e793      	b.n	d0053fae <submitEntitySolid+0x98a>
d0054086:	2200      	movs	r2, #0
d0054088:	ed98 1a06 	vldr	s2, [r8, #24]
d005408c:	4611      	mov	r1, r2
d005408e:	e026      	b.n	d00540de <submitEntitySolid+0xaba>
d0054090:	edd5 4a02 	vldr	s9, [r5, #8]
d0054094:	ab44      	add	r3, sp, #272	; 0x110
d0054096:	ed95 9a01 	vldr	s18, [r5, #4]
d005409a:	ee74 4ae1 	vsub.f32	s9, s9, s3
d005409e:	ed95 0a03 	vldr	s0, [r5, #12]
d00540a2:	ee39 9a63 	vsub.f32	s18, s18, s7
d00540a6:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d00540aa:	ee30 0a60 	vsub.f32	s0, s0, s1
d00540ae:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d00540b2:	ee64 4aa4 	vmul.f32	s9, s9, s9
d00540b6:	ee31 4a04 	vadd.f32	s8, s2, s8
d00540ba:	eee9 4a09 	vfma.f32	s9, s18, s18
d00540be:	ee24 4a04 	vmul.f32	s8, s8, s8
d00540c2:	eee0 4a00 	vfma.f32	s9, s0, s0
d00540c6:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00540ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540ce:	db02      	blt.n	d00540d6 <submitEntitySolid+0xab2>
d00540d0:	3101      	adds	r1, #1
d00540d2:	f843 5c98 	str.w	r5, [r3, #-152]
d00540d6:	3201      	adds	r2, #1
d00540d8:	3540      	adds	r5, #64	; 0x40
d00540da:	4290      	cmp	r0, r2
d00540dc:	dd16      	ble.n	d005410c <submitEntitySolid+0xae8>
d00540de:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d00540e0:	2b00      	cmp	r3, #0
d00540e2:	d0f8      	beq.n	d00540d6 <submitEntitySolid+0xab2>
d00540e4:	782b      	ldrb	r3, [r5, #0]
d00540e6:	2b01      	cmp	r3, #1
d00540e8:	d1d2      	bne.n	d0054090 <submitEntitySolid+0xa6c>
d00540ea:	ab44      	add	r3, sp, #272	; 0x110
d00540ec:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d00540f0:	3101      	adds	r1, #1
d00540f2:	f843 5c98 	str.w	r5, [r3, #-152]
d00540f6:	e7ee      	b.n	d00540d6 <submitEntitySolid+0xab2>
d00540f8:	ed1f 4a83 	vldr	s8, [pc, #-524]	; d0053ef0 <submitEntitySolid+0x8cc>
d00540fc:	eef0 2a44 	vmov.f32	s5, s8
d0054100:	eeb0 3a44 	vmov.f32	s6, s8
d0054104:	e6ab      	b.n	d0053e5e <submitEntitySolid+0x83a>
d0054106:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d005410a:	e750      	b.n	d0053fae <submitEntitySolid+0x98a>
d005410c:	9105      	str	r1, [sp, #20]
d005410e:	f7ff bb27 	b.w	d0053760 <submitEntitySolid+0x13c>
d0054112:	463c      	mov	r4, r7
d0054114:	4655      	mov	r5, sl
d0054116:	eef0 ba47 	vmov.f32	s23, s14
d005411a:	4616      	mov	r6, r2
d005411c:	eef0 8a66 	vmov.f32	s17, s13
d0054120:	460f      	mov	r7, r1
d0054122:	eeb0 ca46 	vmov.f32	s24, s12
d0054126:	4682      	mov	sl, r0
d0054128:	eef0 da60 	vmov.f32	s27, s1
d005412c:	eeb0 ea65 	vmov.f32	s28, s11
d0054130:	e409      	b.n	d0053946 <submitEntitySolid+0x322>
d0054132:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0054136:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d005413a:	9011      	str	r0, [sp, #68]	; 0x44
d005413c:	edcd 5a10 	vstr	s11, [sp, #64]	; 0x40
d0054140:	910f      	str	r1, [sp, #60]	; 0x3c
d0054142:	920e      	str	r2, [sp, #56]	; 0x38
d0054144:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d0054148:	edcd 6a0c 	vstr	s13, [sp, #48]	; 0x30
d005414c:	ed8d 7a0b 	vstr	s14, [sp, #44]	; 0x2c
d0054150:	ed8d 5a04 	vstr	s10, [sp, #16]
d0054154:	edcd 0a00 	vstr	s1, [sp]
d0054158:	f7fc f9aa 	bl	d00504b0 <powfxt>
d005415c:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0054160:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0054164:	9811      	ldr	r0, [sp, #68]	; 0x44
d0054166:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d005416a:	990f      	ldr	r1, [sp, #60]	; 0x3c
d005416c:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d005416e:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d0054172:	eddd 6a0c 	vldr	s13, [sp, #48]	; 0x30
d0054176:	ed9d 7a0b 	vldr	s14, [sp, #44]	; 0x2c
d005417a:	ed9d 5a04 	vldr	s10, [sp, #16]
d005417e:	eddd 0a00 	vldr	s1, [sp]
d0054182:	e759      	b.n	d0054038 <submitEntitySolid+0xa14>
d0054184:	463c      	mov	r4, r7
d0054186:	4655      	mov	r5, sl
d0054188:	eef0 ba47 	vmov.f32	s23, s14
d005418c:	4616      	mov	r6, r2
d005418e:	eef0 8a66 	vmov.f32	s17, s13
d0054192:	460f      	mov	r7, r1
d0054194:	eeb0 ca46 	vmov.f32	s24, s12
d0054198:	4682      	mov	sl, r0
d005419a:	eef0 da60 	vmov.f32	s27, s1
d005419e:	eeb0 ea65 	vmov.f32	s28, s11
d00541a2:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d00541a6:	f7ff bbce 	b.w	d0053946 <submitEntitySolid+0x322>
d00541aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541ae:	db7f      	blt.n	d00542b0 <submitEntitySolid+0xc8c>
d00541b0:	ee74 4ac2 	vsub.f32	s9, s9, s4
d00541b4:	ee30 2a42 	vsub.f32	s4, s0, s4
d00541b8:	eef6 2a08 	vmov.f32	s5, #104	; 0x3f400000  0.750
d00541bc:	eeb0 9a45 	vmov.f32	s18, s10
d00541c0:	ee84 3a82 	vdiv.f32	s6, s9, s4
d00541c4:	ed5f 4ab6 	vldr	s9, [pc, #-728]	; d0053ef0 <submitEntitySolid+0x8cc>
d00541c8:	fec3 4a24 	vmaxnm.f32	s9, s6, s9
d00541cc:	fec4 4ac5 	vminnm.f32	s9, s9, s10
d00541d0:	eea4 9ae2 	vfms.f32	s18, s9, s5
d00541d4:	e6e6      	b.n	d0053fa4 <submitEntitySolid+0x980>
d00541d6:	eeb1 7a64 	vneg.f32	s14, s9
d00541da:	edde 5a00 	vldr	s11, [lr]
d00541de:	eef4 5a47 	vcmp.f32	s11, s14
d00541e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541e6:	f6ff ad38 	blt.w	d0053c5a <submitEntitySolid+0x636>
d00541ea:	eef4 4a65 	vcmp.f32	s9, s11
d00541ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541f2:	f6ff ad32 	blt.w	d0053c5a <submitEntitySolid+0x636>
d00541f6:	9803      	ldr	r0, [sp, #12]
d00541f8:	eeb1 7a67 	vneg.f32	s14, s15
d00541fc:	edd0 5a00 	vldr	s11, [r0]
d0054200:	eef4 5ac7 	vcmpe.f32	s11, s14
d0054204:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054208:	eef4 6ac6 	vcmpe.f32	s13, s12
d005420c:	bfac      	ite	ge
d005420e:	f04f 0e01 	movge.w	lr, #1
d0054212:	f04f 0e00 	movlt.w	lr, #0
d0054216:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005421a:	eef4 7ae5 	vcmpe.f32	s15, s11
d005421e:	f00e 0e01 	and.w	lr, lr, #1
d0054222:	bf88      	it	hi
d0054224:	f04f 0e00 	movhi.w	lr, #0
d0054228:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005422c:	f00e 0e01 	and.w	lr, lr, #1
d0054230:	bfb8      	it	lt
d0054232:	f04f 0e00 	movlt.w	lr, #0
d0054236:	f1be 0f00 	cmp.w	lr, #0
d005423a:	f43f ad0e 	beq.w	d0053c5a <submitEntitySolid+0x636>
d005423e:	eef4 6a45 	vcmp.f32	s13, s10
d0054242:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054246:	f6ff ad08 	blt.w	d0053c5a <submitEntitySolid+0x636>
d005424a:	ee64 4a8c 	vmul.f32	s9, s9, s24
d005424e:	f04f 0e0c 	mov.w	lr, #12
d0054252:	fb0e be01 	mla	lr, lr, r1, fp
d0054256:	eef1 6a64 	vneg.f32	s13, s9
d005425a:	ed9e 7a01 	vldr	s14, [lr, #4]
d005425e:	eeb4 7a66 	vcmp.f32	s14, s13
d0054262:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054266:	f6ff acf8 	blt.w	d0053c5a <submitEntitySolid+0x636>
d005426a:	eeb4 7a64 	vcmp.f32	s14, s9
d005426e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054272:	f63f acf2 	bhi.w	d0053c5a <submitEntitySolid+0x636>
d0054276:	ee67 7a8c 	vmul.f32	s15, s15, s24
d005427a:	f04f 0e0c 	mov.w	lr, #12
d005427e:	fb0e be02 	mla	lr, lr, r2, fp
d0054282:	eef1 6a67 	vneg.f32	s13, s15
d0054286:	ed9e 7a01 	vldr	s14, [lr, #4]
d005428a:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005428e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054292:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0054296:	bfac      	ite	ge
d0054298:	f04f 0e01 	movge.w	lr, #1
d005429c:	f04f 0e00 	movlt.w	lr, #0
d00542a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542a4:	f00e 0001 	and.w	r0, lr, #1
d00542a8:	bf88      	it	hi
d00542aa:	2000      	movhi	r0, #0
d00542ac:	9003      	str	r0, [sp, #12]
d00542ae:	e4d6      	b.n	d0053c5e <submitEntitySolid+0x63a>
d00542b0:	ee74 4ac0 	vsub.f32	s9, s9, s0
d00542b4:	ee33 3a40 	vsub.f32	s6, s6, s0
d00542b8:	eef5 2a00 	vmov.f32	s5, #80	; 0x3e800000  0.250
d00542bc:	ee84 9a83 	vdiv.f32	s18, s9, s6
d00542c0:	eddf 4a0b 	vldr	s9, [pc, #44]	; d00542f0 <submitEntitySolid+0xccc>
d00542c4:	fe89 9a24 	vmaxnm.f32	s18, s18, s9
d00542c8:	fe89 9a45 	vminnm.f32	s18, s18, s10
d00542cc:	ee35 9a49 	vsub.f32	s18, s10, s18
d00542d0:	ee29 9a22 	vmul.f32	s18, s18, s5
d00542d4:	e666      	b.n	d0053fa4 <submitEntitySolid+0x980>
d00542d6:	eef1 6ac7 	vsqrt.f32	s13, s14
d00542da:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00542de:	ee86 7a26 	vdiv.f32	s14, s12, s13
d00542e2:	ee23 3a07 	vmul.f32	s6, s6, s14
d00542e6:	ee62 2a87 	vmul.f32	s5, s5, s14
d00542ea:	ee24 4a07 	vmul.f32	s8, s8, s14
d00542ee:	e5b6      	b.n	d0053e5e <submitEntitySolid+0x83a>
d00542f0:	00000000 	.word	0x00000000

d00542f4 <submitWorldEntities>:
d00542f4:	b570      	push	{r4, r5, r6, lr}
d00542f6:	4c3e      	ldr	r4, [pc, #248]	; (d00543f0 <submitWorldEntities+0xfc>)
d00542f8:	4605      	mov	r5, r0
d00542fa:	f504 4600 	add.w	r6, r4, #32768	; 0x8000
d00542fe:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0054302:	2b00      	cmp	r3, #0
d0054304:	d070      	beq.n	d00543e8 <submitWorldEntities+0xf4>
d0054306:	69a3      	ldr	r3, [r4, #24]
d0054308:	2b00      	cmp	r3, #0
d005430a:	d06d      	beq.n	d00543e8 <submitWorldEntities+0xf4>
d005430c:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
d0054310:	07d2      	lsls	r2, r2, #31
d0054312:	d569      	bpl.n	d00543e8 <submitWorldEntities+0xf4>
d0054314:	edd5 6a01 	vldr	s13, [r5, #4]
d0054318:	ed94 7a01 	vldr	s14, [r4, #4]
d005431c:	ed95 5a00 	vldr	s10, [r5]
d0054320:	ee37 7a66 	vsub.f32	s14, s14, s13
d0054324:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d0054328:	edd4 6a00 	vldr	s13, [r4]
d005432c:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0054330:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0054334:	ed94 6a02 	vldr	s12, [r4, #8]
d0054338:	ee67 7a27 	vmul.f32	s15, s14, s15
d005433c:	ed95 5a02 	vldr	s10, [r5, #8]
d0054340:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d0054344:	ee36 6a45 	vsub.f32	s12, s12, s10
d0054348:	ed93 5a06 	vldr	s10, [r3, #24]
d005434c:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0054350:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d0054354:	eee6 7a24 	vfma.f32	s15, s12, s9
d0054358:	ee77 4ac5 	vsub.f32	s9, s15, s10
d005435c:	eef4 4ae5 	vcmpe.f32	s9, s11
d0054360:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054364:	dc40      	bgt.n	d00543e8 <submitWorldEntities+0xf4>
d0054366:	ee75 4a27 	vadd.f32	s9, s10, s15
d005436a:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d005436e:	eef4 4ae5 	vcmpe.f32	s9, s11
d0054372:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054376:	d437      	bmi.n	d00543e8 <submitWorldEntities+0xf4>
d0054378:	edd5 5a07 	vldr	s11, [r5, #28]
d005437c:	eeb1 4a64 	vneg.f32	s8, s9
d0054380:	ed95 3a08 	vldr	s6, [r5, #32]
d0054384:	ee67 5a25 	vmul.f32	s11, s14, s11
d0054388:	edd5 3a06 	vldr	s7, [r5, #24]
d005438c:	eee6 5a03 	vfma.f32	s11, s12, s6
d0054390:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0054394:	eef4 5ac4 	vcmpe.f32	s11, s8
d0054398:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005439c:	d424      	bmi.n	d00543e8 <submitWorldEntities+0xf4>
d005439e:	eef4 5ae4 	vcmpe.f32	s11, s9
d00543a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543a6:	dc1f      	bgt.n	d00543e8 <submitWorldEntities+0xf4>
d00543a8:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d00543ac:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d00543b0:	ee27 7a25 	vmul.f32	s14, s14, s11
d00543b4:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d00543b8:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d00543bc:	eea7 5a84 	vfma.f32	s10, s15, s8
d00543c0:	eea6 7a24 	vfma.f32	s14, s12, s9
d00543c4:	eef1 7a45 	vneg.f32	s15, s10
d00543c8:	eea6 7aa5 	vfma.f32	s14, s13, s11
d00543cc:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00543d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543d4:	d408      	bmi.n	d00543e8 <submitWorldEntities+0xf4>
d00543d6:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00543da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00543de:	dc03      	bgt.n	d00543e8 <submitWorldEntities+0xf4>
d00543e0:	4629      	mov	r1, r5
d00543e2:	4620      	mov	r0, r4
d00543e4:	f7ff f91e 	bl	d0053624 <submitEntitySolid>
d00543e8:	3480      	adds	r4, #128	; 0x80
d00543ea:	42a6      	cmp	r6, r4
d00543ec:	d187      	bne.n	d00542fe <submitWorldEntities+0xa>
d00543ee:	bd70      	pop	{r4, r5, r6, pc}
d00543f0:	d00f4740 	.word	0xd00f4740

d00543f4 <Render3D>:
d00543f4:	b570      	push	{r4, r5, r6, lr}
d00543f6:	4d17      	ldr	r5, [pc, #92]	; (d0054454 <Render3D+0x60>)
d00543f8:	4604      	mov	r4, r0
d00543fa:	682b      	ldr	r3, [r5, #0]
d00543fc:	b193      	cbz	r3, d0054424 <Render3D+0x30>
d00543fe:	4b16      	ldr	r3, [pc, #88]	; (d0054458 <Render3D+0x64>)
d0054400:	681b      	ldr	r3, [r3, #0]
d0054402:	b17b      	cbz	r3, d0054424 <Render3D+0x30>
d0054404:	4b15      	ldr	r3, [pc, #84]	; (d005445c <Render3D+0x68>)
d0054406:	2200      	movs	r2, #0
d0054408:	4620      	mov	r0, r4
d005440a:	601a      	str	r2, [r3, #0]
d005440c:	f7ff ff72 	bl	d00542f4 <submitWorldEntities>
d0054410:	b114      	cbz	r4, d0054418 <Render3D+0x24>
d0054412:	4620      	mov	r0, r4
d0054414:	f7fe f910 	bl	d0052638 <sb3dParticlesRender.part.0>
d0054418:	4b11      	ldr	r3, [pc, #68]	; (d0054460 <Render3D+0x6c>)
d005441a:	4620      	mov	r0, r4
d005441c:	681b      	ldr	r3, [r3, #0]
d005441e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0054422:	4718      	bx	r3
d0054424:	4a0f      	ldr	r2, [pc, #60]	; (d0054464 <Render3D+0x70>)
d0054426:	7813      	ldrb	r3, [r2, #0]
d0054428:	7850      	ldrb	r0, [r2, #1]
d005442a:	7891      	ldrb	r1, [r2, #2]
d005442c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0054430:	78d2      	ldrb	r2, [r2, #3]
d0054432:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0054436:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005443a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d005443c:	4798      	blx	r3
d005443e:	2800      	cmp	r0, #0
d0054440:	d0e0      	beq.n	d0054404 <Render3D+0x10>
d0054442:	301f      	adds	r0, #31
d0054444:	4b04      	ldr	r3, [pc, #16]	; (d0054458 <Render3D+0x64>)
d0054446:	f020 001f 	bic.w	r0, r0, #31
d005444a:	f100 0260 	add.w	r2, r0, #96	; 0x60
d005444e:	6028      	str	r0, [r5, #0]
d0054450:	601a      	str	r2, [r3, #0]
d0054452:	e7d7      	b.n	d0054404 <Render3D+0x10>
d0054454:	d0066480 	.word	0xd0066480
d0054458:	d0066484 	.word	0xd0066484
d005445c:	d00684a0 	.word	0xd00684a0
d0054460:	d00fc740 	.word	0xd00fc740
d0054464:	2001f000 	.word	0x2001f000

d0054468 <sb3dParticlesClear>:
d0054468:	b538      	push	{r3, r4, r5, lr}
d005446a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
d005446e:	2100      	movs	r1, #0
d0054470:	480f      	ldr	r0, [pc, #60]	; (d00544b0 <sb3dParticlesClear+0x48>)
d0054472:	2421      	movs	r4, #33	; 0x21
d0054474:	f000 fec4 	bl	d0055200 <memset>
d0054478:	4b0d      	ldr	r3, [pc, #52]	; (d00544b0 <sb3dParticlesClear+0x48>)
d005447a:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d005447e:	2100      	movs	r1, #0
d0054480:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0054484:	2200      	movs	r2, #0
d0054486:	7699      	strb	r1, [r3, #26]
d0054488:	3320      	adds	r3, #32
d005448a:	f843 2c20 	str.w	r2, [r3, #-32]
d005448e:	f843 2c1c 	str.w	r2, [r3, #-28]
d0054492:	f843 2c18 	str.w	r2, [r3, #-24]
d0054496:	f843 0c14 	str.w	r0, [r3, #-20]
d005449a:	f843 2c10 	str.w	r2, [r3, #-16]
d005449e:	f843 0c0c 	str.w	r0, [r3, #-12]
d00544a2:	f803 4c08 	strb.w	r4, [r3, #-8]
d00544a6:	f803 1c07 	strb.w	r1, [r3, #-7]
d00544aa:	42ab      	cmp	r3, r5
d00544ac:	d1eb      	bne.n	d0054486 <sb3dParticlesClear+0x1e>
d00544ae:	bd38      	pop	{r3, r4, r5, pc}
d00544b0:	d00664a0 	.word	0xd00664a0

d00544b4 <sb3dParticleSpawnQuad>:
d00544b4:	eef5 1ac0 	vcmpe.f32	s3, #0.0
d00544b8:	eddf 7a20 	vldr	s15, [pc, #128]	; d005453c <sb3dParticleSpawnQuad+0x88>
d00544bc:	eef1 6a04 	vmov.f32	s13, #20	; 0x40a00000  5.0
d00544c0:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00544c4:	fe82 2a27 	vmaxnm.f32	s4, s4, s15
d00544c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544cc:	fec2 2aa7 	vmaxnm.f32	s5, s5, s15
d00544d0:	fe82 2a66 	vminnm.f32	s4, s4, s13
d00544d4:	b430      	push	{r4, r5}
d00544d6:	fec2 2ac7 	vminnm.f32	s5, s5, s14
d00544da:	b084      	sub	sp, #16
d00544dc:	4d18      	ldr	r5, [pc, #96]	; (d0054540 <sb3dParticleSpawnQuad+0x8c>)
d00544de:	bf98      	it	ls
d00544e0:	eef7 1a00 	vmovls.f32	s3, #112	; 0x3f800000  1.0
d00544e4:	2400      	movs	r4, #0
d00544e6:	462b      	mov	r3, r5
d00544e8:	ed8d 0a01 	vstr	s0, [sp, #4]
d00544ec:	edcd 0a02 	vstr	s1, [sp, #8]
d00544f0:	ed8d 1a03 	vstr	s2, [sp, #12]
d00544f4:	e003      	b.n	d00544fe <sb3dParticleSpawnQuad+0x4a>
d00544f6:	3401      	adds	r4, #1
d00544f8:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
d00544fc:	d018      	beq.n	d0054530 <sb3dParticleSpawnQuad+0x7c>
d00544fe:	7e9a      	ldrb	r2, [r3, #26]
d0054500:	3320      	adds	r3, #32
d0054502:	2a00      	cmp	r2, #0
d0054504:	d1f7      	bne.n	d00544f6 <sb3dParticleSpawnQuad+0x42>
d0054506:	eb05 1344 	add.w	r3, r5, r4, lsl #5
d005450a:	2201      	movs	r2, #1
d005450c:	769a      	strb	r2, [r3, #26]
d005450e:	aa04      	add	r2, sp, #16
d0054510:	7618      	strb	r0, [r3, #24]
d0054512:	7659      	strb	r1, [r3, #25]
d0054514:	edc3 1a03 	vstr	s3, [r3, #12]
d0054518:	ed83 2a04 	vstr	s4, [r3, #16]
d005451c:	edc3 2a05 	vstr	s5, [r3, #20]
d0054520:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0054524:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0054528:	4620      	mov	r0, r4
d005452a:	b004      	add	sp, #16
d005452c:	bc30      	pop	{r4, r5}
d005452e:	4770      	bx	lr
d0054530:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0054534:	4620      	mov	r0, r4
d0054536:	b004      	add	sp, #16
d0054538:	bc30      	pop	{r4, r5}
d005453a:	4770      	bx	lr
d005453c:	00000000 	.word	0x00000000
d0054540:	d00664a0 	.word	0xd00664a0

d0054544 <sb3dParticleSetPosition>:
d0054544:	b084      	sub	sp, #16
d0054546:	28ff      	cmp	r0, #255	; 0xff
d0054548:	ed8d 0a01 	vstr	s0, [sp, #4]
d005454c:	edcd 0a02 	vstr	s1, [sp, #8]
d0054550:	ed8d 1a03 	vstr	s2, [sp, #12]
d0054554:	d809      	bhi.n	d005456a <sb3dParticleSetPosition+0x26>
d0054556:	4b06      	ldr	r3, [pc, #24]	; (d0054570 <sb3dParticleSetPosition+0x2c>)
d0054558:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d005455c:	7e9a      	ldrb	r2, [r3, #26]
d005455e:	b122      	cbz	r2, d005456a <sb3dParticleSetPosition+0x26>
d0054560:	aa04      	add	r2, sp, #16
d0054562:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0054566:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d005456a:	b004      	add	sp, #16
d005456c:	4770      	bx	lr
d005456e:	bf00      	nop
d0054570:	d00664a0 	.word	0xd00664a0

d0054574 <sb3dParticleSetSize>:
d0054574:	28ff      	cmp	r0, #255	; 0xff
d0054576:	d80f      	bhi.n	d0054598 <sb3dParticleSetSize+0x24>
d0054578:	4b08      	ldr	r3, [pc, #32]	; (d005459c <sb3dParticleSetSize+0x28>)
d005457a:	0141      	lsls	r1, r0, #5
d005457c:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054580:	7e82      	ldrb	r2, [r0, #26]
d0054582:	b14a      	cbz	r2, d0054598 <sb3dParticleSetSize+0x24>
d0054584:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0054588:	440b      	add	r3, r1
d005458a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005458e:	bf98      	it	ls
d0054590:	eeb7 0a00 	vmovls.f32	s0, #112	; 0x3f800000  1.0
d0054594:	ed83 0a03 	vstr	s0, [r3, #12]
d0054598:	4770      	bx	lr
d005459a:	bf00      	nop
d005459c:	d00664a0 	.word	0xd00664a0

d00545a0 <sb3dParticleSetShade>:
d00545a0:	28ff      	cmp	r0, #255	; 0xff
d00545a2:	d80e      	bhi.n	d00545c2 <sb3dParticleSetShade+0x22>
d00545a4:	4b07      	ldr	r3, [pc, #28]	; (d00545c4 <sb3dParticleSetShade+0x24>)
d00545a6:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00545aa:	7e83      	ldrb	r3, [r0, #26]
d00545ac:	b14b      	cbz	r3, d00545c2 <sb3dParticleSetShade+0x22>
d00545ae:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d00545b2:	ed9f 7a05 	vldr	s14, [pc, #20]	; d00545c8 <sb3dParticleSetShade+0x28>
d00545b6:	fe80 0a07 	vmaxnm.f32	s0, s0, s14
d00545ba:	fe80 0a67 	vminnm.f32	s0, s0, s15
d00545be:	ed80 0a04 	vstr	s0, [r0, #16]
d00545c2:	4770      	bx	lr
d00545c4:	d00664a0 	.word	0xd00664a0
d00545c8:	00000000 	.word	0x00000000

d00545cc <sb3dParticleSetColor>:
d00545cc:	28ff      	cmp	r0, #255	; 0xff
d00545ce:	d805      	bhi.n	d00545dc <sb3dParticleSetColor+0x10>
d00545d0:	4b03      	ldr	r3, [pc, #12]	; (d00545e0 <sb3dParticleSetColor+0x14>)
d00545d2:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00545d6:	7e83      	ldrb	r3, [r0, #26]
d00545d8:	b103      	cbz	r3, d00545dc <sb3dParticleSetColor+0x10>
d00545da:	7601      	strb	r1, [r0, #24]
d00545dc:	4770      	bx	lr
d00545de:	bf00      	nop
d00545e0:	d00664a0 	.word	0xd00664a0

d00545e4 <sb3dParticleSetEmission>:
d00545e4:	28ff      	cmp	r0, #255	; 0xff
d00545e6:	d805      	bhi.n	d00545f4 <sb3dParticleSetEmission+0x10>
d00545e8:	4b03      	ldr	r3, [pc, #12]	; (d00545f8 <sb3dParticleSetEmission+0x14>)
d00545ea:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00545ee:	7e83      	ldrb	r3, [r0, #26]
d00545f0:	b103      	cbz	r3, d00545f4 <sb3dParticleSetEmission+0x10>
d00545f2:	7641      	strb	r1, [r0, #25]
d00545f4:	4770      	bx	lr
d00545f6:	bf00      	nop
d00545f8:	d00664a0 	.word	0xd00664a0

d00545fc <sb3dWorldAudioDefaults>:
d00545fc:	b410      	push	{r4}
d00545fe:	4b06      	ldr	r3, [pc, #24]	; (d0054618 <sb3dWorldAudioDefaults+0x1c>)
d0054600:	f04f 547e 	mov.w	r4, #1065353216	; 0x3f800000
d0054604:	4805      	ldr	r0, [pc, #20]	; (d005461c <sb3dWorldAudioDefaults+0x20>)
d0054606:	4906      	ldr	r1, [pc, #24]	; (d0054620 <sb3dWorldAudioDefaults+0x24>)
d0054608:	4a06      	ldr	r2, [pc, #24]	; (d0054624 <sb3dWorldAudioDefaults+0x28>)
d005460a:	605c      	str	r4, [r3, #4]
d005460c:	6018      	str	r0, [r3, #0]
d005460e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0054612:	6099      	str	r1, [r3, #8]
d0054614:	60da      	str	r2, [r3, #12]
d0054616:	4770      	bx	lr
d0054618:	d00fc744 	.word	0xd00fc744
d005461c:	3ba3d70a 	.word	0x3ba3d70a
d0054620:	3c23d70a 	.word	0x3c23d70a
d0054624:	447a0000 	.word	0x447a0000

d0054628 <dopplerValueEntityToEntity>:
d0054628:	b538      	push	{r3, r4, r5, lr}
d005462a:	ed2d 8b04 	vpush	{d8-d9}
d005462e:	460c      	mov	r4, r1
d0054630:	eef0 9a40 	vmov.f32	s19, s0
d0054634:	eeb0 9a60 	vmov.f32	s18, s1
d0054638:	4605      	mov	r5, r0
d005463a:	eef0 8a41 	vmov.f32	s17, s2
d005463e:	eeb0 8a61 	vmov.f32	s16, s3
d0054642:	f7fc fe51 	bl	d00512e8 <entityIdValid>
d0054646:	b920      	cbnz	r0, d0054652 <dopplerValueEntityToEntity+0x2a>
d0054648:	ed9f 0a53 	vldr	s0, [pc, #332]	; d0054798 <dopplerValueEntityToEntity+0x170>
d005464c:	ecbd 8b04 	vpop	{d8-d9}
d0054650:	bd38      	pop	{r3, r4, r5, pc}
d0054652:	4620      	mov	r0, r4
d0054654:	f7fc fe48 	bl	d00512e8 <entityIdValid>
d0054658:	eddf 7a50 	vldr	s15, [pc, #320]	; d005479c <dopplerValueEntityToEntity+0x174>
d005465c:	eef4 9ae7 	vcmpe.f32	s19, s15
d0054660:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054664:	d9f0      	bls.n	d0054648 <dopplerValueEntityToEntity+0x20>
d0054666:	2800      	cmp	r0, #0
d0054668:	d0ee      	beq.n	d0054648 <dopplerValueEntityToEntity+0x20>
d005466a:	484d      	ldr	r0, [pc, #308]	; (d00547a0 <dopplerValueEntityToEntity+0x178>)
d005466c:	ed9f 5a4d 	vldr	s10, [pc, #308]	; d00547a4 <dopplerValueEntityToEntity+0x17c>
d0054670:	eb00 11c4 	add.w	r1, r0, r4, lsl #7
d0054674:	eb00 10c5 	add.w	r0, r0, r5, lsl #7
d0054678:	ed91 7a01 	vldr	s14, [r1, #4]
d005467c:	edd0 5a01 	vldr	s11, [r0, #4]
d0054680:	edd0 7a00 	vldr	s15, [r0]
d0054684:	ee77 5a65 	vsub.f32	s11, s14, s11
d0054688:	ed91 6a00 	vldr	s12, [r1]
d005468c:	edd1 6a02 	vldr	s13, [r1, #8]
d0054690:	ee36 6a67 	vsub.f32	s12, s12, s15
d0054694:	ed90 7a02 	vldr	s14, [r0, #8]
d0054698:	ee65 7aa5 	vmul.f32	s15, s11, s11
d005469c:	ee76 6ac7 	vsub.f32	s13, s13, s14
d00546a0:	eee6 7a06 	vfma.f32	s15, s12, s12
d00546a4:	eee6 7aa6 	vfma.f32	s15, s13, s13
d00546a8:	eef4 7ac5 	vcmpe.f32	s15, s10
d00546ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546b0:	d9ca      	bls.n	d0054648 <dopplerValueEntityToEntity+0x20>
d00546b2:	edd1 3a04 	vldr	s7, [r1, #16]
d00546b6:	eeb1 4ae7 	vsqrt.f32	s8, s15
d00546ba:	ed90 7a04 	vldr	s14, [r0, #16]
d00546be:	edd1 7a03 	vldr	s15, [r1, #12]
d00546c2:	edd0 4a03 	vldr	s9, [r0, #12]
d00546c6:	ed90 5a05 	vldr	s10, [r0, #20]
d00546ca:	ee37 7a63 	vsub.f32	s14, s14, s7
d00546ce:	edd1 3a05 	vldr	s7, [r1, #20]
d00546d2:	ee74 4ae7 	vsub.f32	s9, s9, s15
d00546d6:	eddf 7a30 	vldr	s15, [pc, #192]	; d0054798 <dopplerValueEntityToEntity+0x170>
d00546da:	ee35 5a63 	vsub.f32	s10, s10, s7
d00546de:	ee37 7a25 	vadd.f32	s14, s14, s11
d00546e2:	fe88 1aa7 	vmaxnm.f32	s2, s17, s15
d00546e6:	ee74 4a86 	vadd.f32	s9, s9, s12
d00546ea:	fec8 1a01 	vmaxnm.f32	s3, s16, s2
d00546ee:	ee35 5a26 	vadd.f32	s10, s10, s13
d00546f2:	fec9 0a27 	vmaxnm.f32	s1, s18, s15
d00546f6:	ee27 7a25 	vmul.f32	s14, s14, s11
d00546fa:	eeb4 1ae1 	vcmpe.f32	s2, s3
d00546fe:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0054702:	eea6 7a24 	vfma.f32	s14, s12, s9
d0054706:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005470a:	eea6 7a85 	vfma.f32	s14, s13, s10
d005470e:	eec7 6a29 	vdiv.f32	s13, s14, s19
d0054712:	ee86 7a84 	vdiv.f32	s14, s13, s8
d0054716:	da04      	bge.n	d0054722 <dopplerValueEntityToEntity+0xfa>
d0054718:	eeb4 1a44 	vcmp.f32	s2, s8
d005471c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054720:	db14      	blt.n	d005474c <dopplerValueEntityToEntity+0x124>
d0054722:	ee60 7a87 	vmul.f32	s15, s1, s14
d0054726:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d005472a:	eebf 6a00 	vmov.f32	s12, #240	; 0xbf800000 -1.0
d005472e:	eeb0 7ae7 	vabs.f32	s14, s15
d0054732:	eef1 7a67 	vneg.f32	s15, s15
d0054736:	ee37 7a26 	vadd.f32	s14, s14, s13
d005473a:	ecbd 8b04 	vpop	{d8-d9}
d005473e:	ee87 0a87 	vdiv.f32	s0, s15, s14
d0054742:	fe80 0a06 	vmaxnm.f32	s0, s0, s12
d0054746:	fe80 0a66 	vminnm.f32	s0, s0, s13
d005474a:	bd38      	pop	{r3, r4, r5, pc}
d005474c:	eef4 1ac4 	vcmpe.f32	s3, s8
d0054750:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054754:	d91c      	bls.n	d0054790 <dopplerValueEntityToEntity+0x168>
d0054756:	ee34 4a41 	vsub.f32	s8, s8, s2
d005475a:	ee31 1ac1 	vsub.f32	s2, s3, s2
d005475e:	ee60 7a87 	vmul.f32	s15, s1, s14
d0054762:	eeff 6a00 	vmov.f32	s13, #240	; 0xbf800000 -1.0
d0054766:	ee84 7a01 	vdiv.f32	s14, s8, s2
d005476a:	ee35 7ac7 	vsub.f32	s14, s11, s14
d005476e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054772:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054776:	eeb0 7ae7 	vabs.f32	s14, s15
d005477a:	eef1 7a67 	vneg.f32	s15, s15
d005477e:	ee37 7a25 	vadd.f32	s14, s14, s11
d0054782:	ee87 0a87 	vdiv.f32	s0, s15, s14
d0054786:	fe80 0a26 	vmaxnm.f32	s0, s0, s13
d005478a:	fe80 0a65 	vminnm.f32	s0, s0, s11
d005478e:	e75d      	b.n	d005464c <dopplerValueEntityToEntity+0x24>
d0054790:	eeb0 0a67 	vmov.f32	s0, s15
d0054794:	e75a      	b.n	d005464c <dopplerValueEntityToEntity+0x24>
d0054796:	bf00      	nop
d0054798:	00000000 	.word	0x00000000
d005479c:	358637bd 	.word	0x358637bd
d00547a0:	d00f4740 	.word	0xd00f4740
d00547a4:	2b8cbccd 	.word	0x2b8cbccd

d00547a8 <entityAudio>:
d00547a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00547aa:	4604      	mov	r4, r0
d00547ac:	460f      	mov	r7, r1
d00547ae:	461d      	mov	r5, r3
d00547b0:	4616      	mov	r6, r2
d00547b2:	ed2d 8b04 	vpush	{d8-d9}
d00547b6:	eeb0 9a40 	vmov.f32	s18, s0
d00547ba:	eeb0 8a60 	vmov.f32	s16, s1
d00547be:	eef0 8a41 	vmov.f32	s17, s2
d00547c2:	b10a      	cbz	r2, d00547c8 <entityAudio+0x20>
d00547c4:	2300      	movs	r3, #0
d00547c6:	6013      	str	r3, [r2, #0]
d00547c8:	b10d      	cbz	r5, d00547ce <entityAudio+0x26>
d00547ca:	2300      	movs	r3, #0
d00547cc:	602b      	str	r3, [r5, #0]
d00547ce:	4620      	mov	r0, r4
d00547d0:	f7fc fd8a 	bl	d00512e8 <entityIdValid>
d00547d4:	b910      	cbnz	r0, d00547dc <entityAudio+0x34>
d00547d6:	ecbd 8b04 	vpop	{d8-d9}
d00547da:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00547dc:	4638      	mov	r0, r7
d00547de:	f7fc fd83 	bl	d00512e8 <entityIdValid>
d00547e2:	2800      	cmp	r0, #0
d00547e4:	d0f7      	beq.n	d00547d6 <entityAudio+0x2e>
d00547e6:	4b3d      	ldr	r3, [pc, #244]	; (d00548dc <entityAudio+0x134>)
d00547e8:	01e2      	lsls	r2, r4, #7
d00547ea:	ed9f 6a3d 	vldr	s12, [pc, #244]	; d00548e0 <entityAudio+0x138>
d00547ee:	eb03 11c7 	add.w	r1, r3, r7, lsl #7
d00547f2:	eb03 14c4 	add.w	r4, r3, r4, lsl #7
d00547f6:	fec8 0a06 	vmaxnm.f32	s1, s16, s12
d00547fa:	edd1 7a02 	vldr	s15, [r1, #8]
d00547fe:	fe88 1aa0 	vmaxnm.f32	s2, s17, s1
d0054802:	ed94 7a02 	vldr	s14, [r4, #8]
d0054806:	eef4 0ac1 	vcmpe.f32	s1, s2
d005480a:	edd1 6a00 	vldr	s13, [r1]
d005480e:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0054812:	ed94 7a00 	vldr	s14, [r4]
d0054816:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005481a:	ee76 6ac7 	vsub.f32	s13, s13, s14
d005481e:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0054822:	eea6 7aa6 	vfma.f32	s14, s13, s13
d0054826:	d50e      	bpl.n	d0054846 <entityAudio+0x9e>
d0054828:	ee61 5a01 	vmul.f32	s11, s2, s2
d005482c:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0054830:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054834:	db07      	blt.n	d0054846 <entityAudio+0x9e>
d0054836:	b10e      	cbz	r6, d005483c <entityAudio+0x94>
d0054838:	ed86 6a00 	vstr	s12, [r6]
d005483c:	2d00      	cmp	r5, #0
d005483e:	d0ca      	beq.n	d00547d6 <entityAudio+0x2e>
d0054840:	2300      	movs	r3, #0
d0054842:	602b      	str	r3, [r5, #0]
d0054844:	e7c7      	b.n	d00547d6 <entityAudio+0x2e>
d0054846:	ed9f 6a27 	vldr	s12, [pc, #156]	; d00548e4 <entityAudio+0x13c>
d005484a:	eeb4 7ac6 	vcmpe.f32	s14, s12
d005484e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054852:	d93a      	bls.n	d00548ca <entityAudio+0x122>
d0054854:	eef1 5ac7 	vsqrt.f32	s11, s14
d0054858:	4413      	add	r3, r2
d005485a:	ed9f 7a21 	vldr	s14, [pc, #132]	; d00548e0 <entityAudio+0x138>
d005485e:	ed93 6a0c 	vldr	s12, [r3, #48]	; 0x30
d0054862:	edd3 4a0a 	vldr	s9, [r3, #40]	; 0x28
d0054866:	fe89 7a07 	vmaxnm.f32	s14, s18, s14
d005486a:	ee67 7a86 	vmul.f32	s15, s15, s12
d005486e:	eef4 0ac1 	vcmpe.f32	s1, s2
d0054872:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054876:	eee6 7aa4 	vfma.f32	s15, s13, s9
d005487a:	eebf 5a00 	vmov.f32	s10, #240	; 0xbf800000 -1.0
d005487e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054882:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0054886:	eec7 6aa5 	vdiv.f32	s13, s15, s11
d005488a:	fec6 6a85 	vmaxnm.f32	s13, s13, s10
d005488e:	fec6 7ac6 	vminnm.f32	s15, s13, s12
d0054892:	ee67 7a27 	vmul.f32	s15, s14, s15
d0054896:	da1d      	bge.n	d00548d4 <entityAudio+0x12c>
d0054898:	eef4 0ae5 	vcmpe.f32	s1, s11
d005489c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00548a0:	da18      	bge.n	d00548d4 <entityAudio+0x12c>
d00548a2:	ee75 5ae0 	vsub.f32	s11, s11, s1
d00548a6:	ee31 1a60 	vsub.f32	s2, s2, s1
d00548aa:	ee85 7a81 	vdiv.f32	s14, s11, s2
d00548ae:	ee36 6a47 	vsub.f32	s12, s12, s14
d00548b2:	ee26 6a06 	vmul.f32	s12, s12, s12
d00548b6:	b10e      	cbz	r6, d00548bc <entityAudio+0x114>
d00548b8:	edc6 7a00 	vstr	s15, [r6]
d00548bc:	2d00      	cmp	r5, #0
d00548be:	d08a      	beq.n	d00547d6 <entityAudio+0x2e>
d00548c0:	ed85 6a00 	vstr	s12, [r5]
d00548c4:	ecbd 8b04 	vpop	{d8-d9}
d00548c8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00548ca:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00548ce:	eddf 7a04 	vldr	s15, [pc, #16]	; d00548e0 <entityAudio+0x138>
d00548d2:	e7f0      	b.n	d00548b6 <entityAudio+0x10e>
d00548d4:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00548d8:	e7ed      	b.n	d00548b6 <entityAudio+0x10e>
d00548da:	bf00      	nop
d00548dc:	d00f4740 	.word	0xd00f4740
d00548e0:	00000000 	.word	0x00000000
d00548e4:	358637bd 	.word	0x358637bd

d00548e8 <sb3dEntityAudioInfoDefault>:
d00548e8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00548ea:	2300      	movs	r3, #0
d00548ec:	460d      	mov	r5, r1
d00548ee:	4606      	mov	r6, r0
d00548f0:	ed2d 8b02 	vpush	{d8}
d00548f4:	b08d      	sub	sp, #52	; 0x34
d00548f6:	eeb0 8a40 	vmov.f32	s16, s0
d00548fa:	9304      	str	r3, [sp, #16]
d00548fc:	9305      	str	r3, [sp, #20]
d00548fe:	9306      	str	r3, [sp, #24]
d0054900:	f7fc fcf2 	bl	d00512e8 <entityIdValid>
d0054904:	b9a8      	cbnz	r0, d0054932 <sb3dEntityAudioInfoDefault+0x4a>
d0054906:	ac04      	add	r4, sp, #16
d0054908:	ad08      	add	r5, sp, #32
d005490a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d005490e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0054912:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054916:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d005491a:	ed9d 0a04 	vldr	s0, [sp, #16]
d005491e:	eddd 0a05 	vldr	s1, [sp, #20]
d0054922:	ed9d 1a06 	vldr	s2, [sp, #24]
d0054926:	eddd 1a07 	vldr	s3, [sp, #28]
d005492a:	b00d      	add	sp, #52	; 0x34
d005492c:	ecbd 8b02 	vpop	{d8}
d0054930:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0054932:	4628      	mov	r0, r5
d0054934:	f7fc fcd8 	bl	d00512e8 <entityIdValid>
d0054938:	2800      	cmp	r0, #0
d005493a:	d0e4      	beq.n	d0054906 <sb3dEntityAudioInfoDefault+0x1e>
d005493c:	4f11      	ldr	r7, [pc, #68]	; (d0054984 <sb3dEntityAudioInfoDefault+0x9c>)
d005493e:	4629      	mov	r1, r5
d0054940:	4630      	mov	r0, r6
d0054942:	eeb0 0a48 	vmov.f32	s0, s16
d0054946:	edd7 1a03 	vldr	s3, [r7, #12]
d005494a:	ac04      	add	r4, sp, #16
d005494c:	ed97 1a02 	vldr	s2, [r7, #8]
d0054950:	edd7 0a00 	vldr	s1, [r7]
d0054954:	f7ff fe68 	bl	d0054628 <dopplerValueEntityToEntity>
d0054958:	eef0 7a40 	vmov.f32	s15, s0
d005495c:	4629      	mov	r1, r5
d005495e:	4630      	mov	r0, r6
d0054960:	ab06      	add	r3, sp, #24
d0054962:	aa05      	add	r2, sp, #20
d0054964:	ed97 1a03 	vldr	s2, [r7, #12]
d0054968:	ad08      	add	r5, sp, #32
d005496a:	edd7 0a02 	vldr	s1, [r7, #8]
d005496e:	ed97 0a01 	vldr	s0, [r7, #4]
d0054972:	edcd 7a04 	vstr	s15, [sp, #16]
d0054976:	f7ff ff17 	bl	d00547a8 <entityAudio>
d005497a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d005497e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0054982:	e7c6      	b.n	d0054912 <sb3dEntityAudioInfoDefault+0x2a>
d0054984:	d00fc744 	.word	0xd00fc744

d0054988 <loadMeshSB3D>:
d0054988:	2800      	cmp	r0, #0
d005498a:	f000 80e4 	beq.w	d0054b56 <loadMeshSB3D+0x1ce>
d005498e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0054992:	fab1 f781 	clz	r7, r1
d0054996:	460c      	mov	r4, r1
d0054998:	ed2d 8b02 	vpush	{d8}
d005499c:	097f      	lsrs	r7, r7, #5
d005499e:	b08c      	sub	sp, #48	; 0x30
d00549a0:	2900      	cmp	r1, #0
d00549a2:	f000 80d2 	beq.w	d0054b4a <loadMeshSB3D+0x1c2>
d00549a6:	4e6d      	ldr	r6, [pc, #436]	; (d0054b5c <loadMeshSB3D+0x1d4>)
d00549a8:	4605      	mov	r5, r0
d00549aa:	2240      	movs	r2, #64	; 0x40
d00549ac:	4639      	mov	r1, r7
d00549ae:	4620      	mov	r0, r4
d00549b0:	eeb0 8a40 	vmov.f32	s16, s0
d00549b4:	f000 fc24 	bl	d0055200 <memset>
d00549b8:	7933      	ldrb	r3, [r6, #4]
d00549ba:	f896 c005 	ldrb.w	ip, [r6, #5]
d00549be:	4629      	mov	r1, r5
d00549c0:	79b2      	ldrb	r2, [r6, #6]
d00549c2:	4638      	mov	r0, r7
d00549c4:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d00549c8:	79f5      	ldrb	r5, [r6, #7]
d00549ca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00549ce:	2201      	movs	r2, #1
d00549d0:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00549d4:	681b      	ldr	r3, [r3, #0]
d00549d6:	681b      	ldr	r3, [r3, #0]
d00549d8:	4798      	blx	r3
d00549da:	2800      	cmp	r0, #0
d00549dc:	f040 80b5 	bne.w	d0054b4a <loadMeshSB3D+0x1c2>
d00549e0:	f896 c004 	ldrb.w	ip, [r6, #4]
d00549e4:	2204      	movs	r2, #4
d00549e6:	7971      	ldrb	r1, [r6, #5]
d00549e8:	ab02      	add	r3, sp, #8
d00549ea:	79b7      	ldrb	r7, [r6, #6]
d00549ec:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00549f0:	79f5      	ldrb	r5, [r6, #7]
d00549f2:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00549f6:	a903      	add	r1, sp, #12
d00549f8:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d00549fc:	682d      	ldr	r5, [r5, #0]
d00549fe:	68ad      	ldr	r5, [r5, #8]
d0054a00:	47a8      	blx	r5
d0054a02:	2800      	cmp	r0, #0
d0054a04:	f040 809e 	bne.w	d0054b44 <loadMeshSB3D+0x1bc>
d0054a08:	9a02      	ldr	r2, [sp, #8]
d0054a0a:	2a04      	cmp	r2, #4
d0054a0c:	f040 809a 	bne.w	d0054b44 <loadMeshSB3D+0x1bc>
d0054a10:	4b53      	ldr	r3, [pc, #332]	; (d0054b60 <loadMeshSB3D+0x1d8>)
d0054a12:	9903      	ldr	r1, [sp, #12]
d0054a14:	4299      	cmp	r1, r3
d0054a16:	f040 8095 	bne.w	d0054b44 <loadMeshSB3D+0x1bc>
d0054a1a:	7931      	ldrb	r1, [r6, #4]
d0054a1c:	ab02      	add	r3, sp, #8
d0054a1e:	7975      	ldrb	r5, [r6, #5]
d0054a20:	79b7      	ldrb	r7, [r6, #6]
d0054a22:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0054a26:	79f5      	ldrb	r5, [r6, #7]
d0054a28:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054a2c:	a904      	add	r1, sp, #16
d0054a2e:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054a32:	682d      	ldr	r5, [r5, #0]
d0054a34:	68ad      	ldr	r5, [r5, #8]
d0054a36:	47a8      	blx	r5
d0054a38:	2800      	cmp	r0, #0
d0054a3a:	f040 8083 	bne.w	d0054b44 <loadMeshSB3D+0x1bc>
d0054a3e:	9a02      	ldr	r2, [sp, #8]
d0054a40:	2a04      	cmp	r2, #4
d0054a42:	d17f      	bne.n	d0054b44 <loadMeshSB3D+0x1bc>
d0054a44:	9b04      	ldr	r3, [sp, #16]
d0054a46:	2b05      	cmp	r3, #5
d0054a48:	d17c      	bne.n	d0054b44 <loadMeshSB3D+0x1bc>
d0054a4a:	7931      	ldrb	r1, [r6, #4]
d0054a4c:	ab02      	add	r3, sp, #8
d0054a4e:	7975      	ldrb	r5, [r6, #5]
d0054a50:	79b7      	ldrb	r7, [r6, #6]
d0054a52:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0054a56:	79f5      	ldrb	r5, [r6, #7]
d0054a58:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054a5c:	a905      	add	r1, sp, #20
d0054a5e:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054a62:	682d      	ldr	r5, [r5, #0]
d0054a64:	68ad      	ldr	r5, [r5, #8]
d0054a66:	47a8      	blx	r5
d0054a68:	2800      	cmp	r0, #0
d0054a6a:	d16b      	bne.n	d0054b44 <loadMeshSB3D+0x1bc>
d0054a6c:	9a02      	ldr	r2, [sp, #8]
d0054a6e:	2a04      	cmp	r2, #4
d0054a70:	d168      	bne.n	d0054b44 <loadMeshSB3D+0x1bc>
d0054a72:	7930      	ldrb	r0, [r6, #4]
d0054a74:	ab02      	add	r3, sp, #8
d0054a76:	7975      	ldrb	r5, [r6, #5]
d0054a78:	a906      	add	r1, sp, #24
d0054a7a:	79b7      	ldrb	r7, [r6, #6]
d0054a7c:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0054a80:	79f5      	ldrb	r5, [r6, #7]
d0054a82:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0054a86:	2000      	movs	r0, #0
d0054a88:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054a8c:	682d      	ldr	r5, [r5, #0]
d0054a8e:	68ad      	ldr	r5, [r5, #8]
d0054a90:	47a8      	blx	r5
d0054a92:	4605      	mov	r5, r0
d0054a94:	2800      	cmp	r0, #0
d0054a96:	d155      	bne.n	d0054b44 <loadMeshSB3D+0x1bc>
d0054a98:	9b02      	ldr	r3, [sp, #8]
d0054a9a:	2b04      	cmp	r3, #4
d0054a9c:	d152      	bne.n	d0054b44 <loadMeshSB3D+0x1bc>
d0054a9e:	9b05      	ldr	r3, [sp, #20]
d0054aa0:	2b00      	cmp	r3, #0
d0054aa2:	d04f      	beq.n	d0054b44 <loadMeshSB3D+0x1bc>
d0054aa4:	9f06      	ldr	r7, [sp, #24]
d0054aa6:	2f00      	cmp	r7, #0
d0054aa8:	d04c      	beq.n	d0054b44 <loadMeshSB3D+0x1bc>
d0054aaa:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0054aae:	6063      	str	r3, [r4, #4]
d0054ab0:	6167      	str	r7, [r4, #20]
d0054ab2:	0080      	lsls	r0, r0, #2
d0054ab4:	60e5      	str	r5, [r4, #12]
d0054ab6:	f000 fb77 	bl	d00551a8 <malloc>
d0054aba:	4603      	mov	r3, r0
d0054abc:	0138      	lsls	r0, r7, #4
d0054abe:	461f      	mov	r7, r3
d0054ac0:	6023      	str	r3, [r4, #0]
d0054ac2:	f000 fb71 	bl	d00551a8 <malloc>
d0054ac6:	60a5      	str	r5, [r4, #8]
d0054ac8:	6120      	str	r0, [r4, #16]
d0054aca:	2f00      	cmp	r7, #0
d0054acc:	d037      	beq.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054ace:	fab0 f880 	clz	r8, r0
d0054ad2:	ea4f 1858 	mov.w	r8, r8, lsr #5
d0054ad6:	b9d8      	cbnz	r0, d0054b10 <loadMeshSB3D+0x188>
d0054ad8:	e031      	b.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054ada:	9b02      	ldr	r3, [sp, #8]
d0054adc:	2b0c      	cmp	r3, #12
d0054ade:	d12e      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054ae0:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0054ae4:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0054ae8:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0054aec:	ee66 6a88 	vmul.f32	s13, s13, s16
d0054af0:	6823      	ldr	r3, [r4, #0]
d0054af2:	ee27 7a08 	vmul.f32	s14, s14, s16
d0054af6:	9905      	ldr	r1, [sp, #20]
d0054af8:	ee67 7a88 	vmul.f32	s15, s15, s16
d0054afc:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0054b00:	4541      	cmp	r1, r8
d0054b02:	edc3 6a00 	vstr	s13, [r3]
d0054b06:	ed83 7a01 	vstr	s14, [r3, #4]
d0054b0a:	edc3 7a02 	vstr	s15, [r3, #8]
d0054b0e:	d929      	bls.n	d0054b64 <loadMeshSB3D+0x1dc>
d0054b10:	7930      	ldrb	r0, [r6, #4]
d0054b12:	220c      	movs	r2, #12
d0054b14:	7975      	ldrb	r5, [r6, #5]
d0054b16:	ab02      	add	r3, sp, #8
d0054b18:	79b7      	ldrb	r7, [r6, #6]
d0054b1a:	a909      	add	r1, sp, #36	; 0x24
d0054b1c:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0054b20:	79f5      	ldrb	r5, [r6, #7]
d0054b22:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0054b26:	2000      	movs	r0, #0
d0054b28:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054b2c:	682d      	ldr	r5, [r5, #0]
d0054b2e:	68ad      	ldr	r5, [r5, #8]
d0054b30:	47a8      	blx	r5
d0054b32:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0054b36:	f108 0801 	add.w	r8, r8, #1
d0054b3a:	2800      	cmp	r0, #0
d0054b3c:	d0cd      	beq.n	d0054ada <loadMeshSB3D+0x152>
d0054b3e:	4620      	mov	r0, r4
d0054b40:	f7fc fbe4 	bl	d005130c <freeMesh>
d0054b44:	2000      	movs	r0, #0
d0054b46:	f000 f96b 	bl	d0054e20 <fclose>
d0054b4a:	2000      	movs	r0, #0
d0054b4c:	b00c      	add	sp, #48	; 0x30
d0054b4e:	ecbd 8b02 	vpop	{d8}
d0054b52:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0054b56:	2000      	movs	r0, #0
d0054b58:	4770      	bx	lr
d0054b5a:	bf00      	nop
d0054b5c:	2001f000 	.word	0x2001f000
d0054b60:	44334253 	.word	0x44334253
d0054b64:	9b06      	ldr	r3, [sp, #24]
d0054b66:	2b00      	cmp	r3, #0
d0054b68:	f000 80db 	beq.w	d0054d22 <loadMeshSB3D+0x39a>
d0054b6c:	4605      	mov	r5, r0
d0054b6e:	7937      	ldrb	r7, [r6, #4]
d0054b70:	ab02      	add	r3, sp, #8
d0054b72:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054b76:	2204      	movs	r2, #4
d0054b78:	79b0      	ldrb	r0, [r6, #6]
d0054b7a:	a907      	add	r1, sp, #28
d0054b7c:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0054b80:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054b84:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0054b88:	2000      	movs	r0, #0
d0054b8a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054b8e:	683f      	ldr	r7, [r7, #0]
d0054b90:	68bf      	ldr	r7, [r7, #8]
d0054b92:	47b8      	blx	r7
d0054b94:	2800      	cmp	r0, #0
d0054b96:	d1d2      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054b98:	9a02      	ldr	r2, [sp, #8]
d0054b9a:	2a04      	cmp	r2, #4
d0054b9c:	d1cf      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054b9e:	7931      	ldrb	r1, [r6, #4]
d0054ba0:	ab02      	add	r3, sp, #8
d0054ba2:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054ba6:	f896 e006 	ldrb.w	lr, [r6, #6]
d0054baa:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0054bae:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054bb2:	a908      	add	r1, sp, #32
d0054bb4:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0054bb8:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054bbc:	683f      	ldr	r7, [r7, #0]
d0054bbe:	68bf      	ldr	r7, [r7, #8]
d0054bc0:	47b8      	blx	r7
d0054bc2:	2800      	cmp	r0, #0
d0054bc4:	d1bb      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054bc6:	9a02      	ldr	r2, [sp, #8]
d0054bc8:	2a04      	cmp	r2, #4
d0054bca:	d1b8      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054bcc:	7931      	ldrb	r1, [r6, #4]
d0054bce:	ab02      	add	r3, sp, #8
d0054bd0:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054bd4:	f896 e006 	ldrb.w	lr, [r6, #6]
d0054bd8:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0054bdc:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054be0:	a909      	add	r1, sp, #36	; 0x24
d0054be2:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0054be6:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054bea:	683f      	ldr	r7, [r7, #0]
d0054bec:	68bf      	ldr	r7, [r7, #8]
d0054bee:	47b8      	blx	r7
d0054bf0:	2800      	cmp	r0, #0
d0054bf2:	d1a4      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054bf4:	9b02      	ldr	r3, [sp, #8]
d0054bf6:	2b04      	cmp	r3, #4
d0054bf8:	d1a1      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054bfa:	7937      	ldrb	r7, [r6, #4]
d0054bfc:	ab02      	add	r3, sp, #8
d0054bfe:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054c02:	2201      	movs	r2, #1
d0054c04:	79b1      	ldrb	r1, [r6, #6]
d0054c06:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0054c0a:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054c0e:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d0054c12:	a901      	add	r1, sp, #4
d0054c14:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054c18:	683f      	ldr	r7, [r7, #0]
d0054c1a:	68bf      	ldr	r7, [r7, #8]
d0054c1c:	47b8      	blx	r7
d0054c1e:	2800      	cmp	r0, #0
d0054c20:	d18d      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054c22:	9a02      	ldr	r2, [sp, #8]
d0054c24:	2a01      	cmp	r2, #1
d0054c26:	d18a      	bne.n	d0054b3e <loadMeshSB3D+0x1b6>
d0054c28:	7931      	ldrb	r1, [r6, #4]
d0054c2a:	ab02      	add	r3, sp, #8
d0054c2c:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054c30:	f896 e006 	ldrb.w	lr, [r6, #6]
d0054c34:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0054c38:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054c3c:	f10d 0105 	add.w	r1, sp, #5
d0054c40:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0054c44:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054c48:	683f      	ldr	r7, [r7, #0]
d0054c4a:	68bf      	ldr	r7, [r7, #8]
d0054c4c:	47b8      	blx	r7
d0054c4e:	2800      	cmp	r0, #0
d0054c50:	f47f af75 	bne.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054c54:	9b02      	ldr	r3, [sp, #8]
d0054c56:	2b01      	cmp	r3, #1
d0054c58:	f47f af71 	bne.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054c5c:	7937      	ldrb	r7, [r6, #4]
d0054c5e:	ab02      	add	r3, sp, #8
d0054c60:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054c64:	2201      	movs	r2, #1
d0054c66:	79b0      	ldrb	r0, [r6, #6]
d0054c68:	f10d 0106 	add.w	r1, sp, #6
d0054c6c:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0054c70:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054c74:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0054c78:	2000      	movs	r0, #0
d0054c7a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054c7e:	683f      	ldr	r7, [r7, #0]
d0054c80:	68bf      	ldr	r7, [r7, #8]
d0054c82:	47b8      	blx	r7
d0054c84:	2800      	cmp	r0, #0
d0054c86:	f47f af5a 	bne.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054c8a:	9a02      	ldr	r2, [sp, #8]
d0054c8c:	2a01      	cmp	r2, #1
d0054c8e:	f47f af56 	bne.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054c92:	7931      	ldrb	r1, [r6, #4]
d0054c94:	ab02      	add	r3, sp, #8
d0054c96:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054c9a:	f896 e006 	ldrb.w	lr, [r6, #6]
d0054c9e:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0054ca2:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054ca6:	f10d 0107 	add.w	r1, sp, #7
d0054caa:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0054cae:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054cb2:	683f      	ldr	r7, [r7, #0]
d0054cb4:	68bf      	ldr	r7, [r7, #8]
d0054cb6:	47b8      	blx	r7
d0054cb8:	2800      	cmp	r0, #0
d0054cba:	f47f af40 	bne.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054cbe:	9b02      	ldr	r3, [sp, #8]
d0054cc0:	2b01      	cmp	r3, #1
d0054cc2:	f47f af3c 	bne.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054cc6:	f8dd c01c 	ldr.w	ip, [sp, #28]
d0054cca:	9b05      	ldr	r3, [sp, #20]
d0054ccc:	459c      	cmp	ip, r3
d0054cce:	f4bf af36 	bcs.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054cd2:	9f08      	ldr	r7, [sp, #32]
d0054cd4:	42bb      	cmp	r3, r7
d0054cd6:	f67f af32 	bls.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054cda:	9909      	ldr	r1, [sp, #36]	; 0x24
d0054cdc:	428b      	cmp	r3, r1
d0054cde:	f67f af2e 	bls.w	d0054b3e <loadMeshSB3D+0x1b6>
d0054ce2:	6922      	ldr	r2, [r4, #16]
d0054ce4:	ea4f 1e05 	mov.w	lr, r5, lsl #4
d0054ce8:	4603      	mov	r3, r0
d0054cea:	9806      	ldr	r0, [sp, #24]
d0054cec:	f842 c00e 	str.w	ip, [r2, lr]
d0054cf0:	eb02 1205 	add.w	r2, r2, r5, lsl #4
d0054cf4:	f89d c004 	ldrb.w	ip, [sp, #4]
d0054cf8:	3501      	adds	r5, #1
d0054cfa:	f89d e005 	ldrb.w	lr, [sp, #5]
d0054cfe:	f36c 0307 	bfi	r3, ip, #0, #8
d0054d02:	f89d c006 	ldrb.w	ip, [sp, #6]
d0054d06:	6057      	str	r7, [r2, #4]
d0054d08:	42a8      	cmp	r0, r5
d0054d0a:	f36e 230f 	bfi	r3, lr, #8, #8
d0054d0e:	f89d 7007 	ldrb.w	r7, [sp, #7]
d0054d12:	6091      	str	r1, [r2, #8]
d0054d14:	f36c 4317 	bfi	r3, ip, #16, #8
d0054d18:	f367 631f 	bfi	r3, r7, #24, #8
d0054d1c:	60d3      	str	r3, [r2, #12]
d0054d1e:	f63f af26 	bhi.w	d0054b6e <loadMeshSB3D+0x1e6>
d0054d22:	2000      	movs	r0, #0
d0054d24:	f000 f87c 	bl	d0054e20 <fclose>
d0054d28:	4620      	mov	r0, r4
d0054d2a:	f7fc fb09 	bl	d0051340 <meshComputeBoundsRadius>
d0054d2e:	4620      	mov	r0, r4
d0054d30:	ed84 0a06 	vstr	s0, [r4, #24]
d0054d34:	f7f9 fda4 	bl	d004e880 <meshSetDefaultMaterial>
d0054d38:	2001      	movs	r0, #1
d0054d3a:	e707      	b.n	d0054b4c <loadMeshSB3D+0x1c4>

d0054d3c <__errno>:
d0054d3c:	4b01      	ldr	r3, [pc, #4]	; (d0054d44 <__errno+0x8>)
d0054d3e:	6818      	ldr	r0, [r3, #0]
d0054d40:	4770      	bx	lr
d0054d42:	bf00      	nop
d0054d44:	d0059fb4 	.word	0xd0059fb4

d0054d48 <_fclose_r>:
d0054d48:	b570      	push	{r4, r5, r6, lr}
d0054d4a:	4605      	mov	r5, r0
d0054d4c:	460c      	mov	r4, r1
d0054d4e:	b911      	cbnz	r1, d0054d56 <_fclose_r+0xe>
d0054d50:	2600      	movs	r6, #0
d0054d52:	4630      	mov	r0, r6
d0054d54:	bd70      	pop	{r4, r5, r6, pc}
d0054d56:	b118      	cbz	r0, d0054d60 <_fclose_r+0x18>
d0054d58:	6983      	ldr	r3, [r0, #24]
d0054d5a:	b90b      	cbnz	r3, d0054d60 <_fclose_r+0x18>
d0054d5c:	f000 f982 	bl	d0055064 <__sinit>
d0054d60:	4b2c      	ldr	r3, [pc, #176]	; (d0054e14 <_fclose_r+0xcc>)
d0054d62:	429c      	cmp	r4, r3
d0054d64:	d114      	bne.n	d0054d90 <_fclose_r+0x48>
d0054d66:	686c      	ldr	r4, [r5, #4]
d0054d68:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0054d6a:	07d8      	lsls	r0, r3, #31
d0054d6c:	d405      	bmi.n	d0054d7a <_fclose_r+0x32>
d0054d6e:	89a3      	ldrh	r3, [r4, #12]
d0054d70:	0599      	lsls	r1, r3, #22
d0054d72:	d402      	bmi.n	d0054d7a <_fclose_r+0x32>
d0054d74:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0054d76:	f000 fa14 	bl	d00551a2 <__retarget_lock_acquire_recursive>
d0054d7a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0054d7e:	b98b      	cbnz	r3, d0054da4 <_fclose_r+0x5c>
d0054d80:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0054d82:	f016 0601 	ands.w	r6, r6, #1
d0054d86:	d1e3      	bne.n	d0054d50 <_fclose_r+0x8>
d0054d88:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0054d8a:	f000 fa0b 	bl	d00551a4 <__retarget_lock_release_recursive>
d0054d8e:	e7e0      	b.n	d0054d52 <_fclose_r+0xa>
d0054d90:	4b21      	ldr	r3, [pc, #132]	; (d0054e18 <_fclose_r+0xd0>)
d0054d92:	429c      	cmp	r4, r3
d0054d94:	d101      	bne.n	d0054d9a <_fclose_r+0x52>
d0054d96:	68ac      	ldr	r4, [r5, #8]
d0054d98:	e7e6      	b.n	d0054d68 <_fclose_r+0x20>
d0054d9a:	4b20      	ldr	r3, [pc, #128]	; (d0054e1c <_fclose_r+0xd4>)
d0054d9c:	429c      	cmp	r4, r3
d0054d9e:	bf08      	it	eq
d0054da0:	68ec      	ldreq	r4, [r5, #12]
d0054da2:	e7e1      	b.n	d0054d68 <_fclose_r+0x20>
d0054da4:	4621      	mov	r1, r4
d0054da6:	4628      	mov	r0, r5
d0054da8:	f000 f842 	bl	d0054e30 <__sflush_r>
d0054dac:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0054dae:	4606      	mov	r6, r0
d0054db0:	b133      	cbz	r3, d0054dc0 <_fclose_r+0x78>
d0054db2:	6a21      	ldr	r1, [r4, #32]
d0054db4:	4628      	mov	r0, r5
d0054db6:	4798      	blx	r3
d0054db8:	2800      	cmp	r0, #0
d0054dba:	bfb8      	it	lt
d0054dbc:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0054dc0:	89a3      	ldrh	r3, [r4, #12]
d0054dc2:	061a      	lsls	r2, r3, #24
d0054dc4:	d503      	bpl.n	d0054dce <_fclose_r+0x86>
d0054dc6:	6921      	ldr	r1, [r4, #16]
d0054dc8:	4628      	mov	r0, r5
d0054dca:	f000 fa21 	bl	d0055210 <_free_r>
d0054dce:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0054dd0:	b141      	cbz	r1, d0054de4 <_fclose_r+0x9c>
d0054dd2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0054dd6:	4299      	cmp	r1, r3
d0054dd8:	d002      	beq.n	d0054de0 <_fclose_r+0x98>
d0054dda:	4628      	mov	r0, r5
d0054ddc:	f000 fa18 	bl	d0055210 <_free_r>
d0054de0:	2300      	movs	r3, #0
d0054de2:	6363      	str	r3, [r4, #52]	; 0x34
d0054de4:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0054de6:	b121      	cbz	r1, d0054df2 <_fclose_r+0xaa>
d0054de8:	4628      	mov	r0, r5
d0054dea:	f000 fa11 	bl	d0055210 <_free_r>
d0054dee:	2300      	movs	r3, #0
d0054df0:	64a3      	str	r3, [r4, #72]	; 0x48
d0054df2:	f000 f91f 	bl	d0055034 <__sfp_lock_acquire>
d0054df6:	2300      	movs	r3, #0
d0054df8:	81a3      	strh	r3, [r4, #12]
d0054dfa:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0054dfc:	07db      	lsls	r3, r3, #31
d0054dfe:	d402      	bmi.n	d0054e06 <_fclose_r+0xbe>
d0054e00:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0054e02:	f000 f9cf 	bl	d00551a4 <__retarget_lock_release_recursive>
d0054e06:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0054e08:	f000 f9ca 	bl	d00551a0 <__retarget_lock_close_recursive>
d0054e0c:	f000 f918 	bl	d0055040 <__sfp_lock_release>
d0054e10:	e79f      	b.n	d0054d52 <_fclose_r+0xa>
d0054e12:	bf00      	nop
d0054e14:	d0057648 	.word	0xd0057648
d0054e18:	d0057668 	.word	0xd0057668
d0054e1c:	d0057628 	.word	0xd0057628

d0054e20 <fclose>:
d0054e20:	4b02      	ldr	r3, [pc, #8]	; (d0054e2c <fclose+0xc>)
d0054e22:	4601      	mov	r1, r0
d0054e24:	6818      	ldr	r0, [r3, #0]
d0054e26:	f7ff bf8f 	b.w	d0054d48 <_fclose_r>
d0054e2a:	bf00      	nop
d0054e2c:	d0059fb4 	.word	0xd0059fb4

d0054e30 <__sflush_r>:
d0054e30:	898a      	ldrh	r2, [r1, #12]
d0054e32:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0054e36:	4605      	mov	r5, r0
d0054e38:	0710      	lsls	r0, r2, #28
d0054e3a:	460c      	mov	r4, r1
d0054e3c:	d458      	bmi.n	d0054ef0 <__sflush_r+0xc0>
d0054e3e:	684b      	ldr	r3, [r1, #4]
d0054e40:	2b00      	cmp	r3, #0
d0054e42:	dc05      	bgt.n	d0054e50 <__sflush_r+0x20>
d0054e44:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0054e46:	2b00      	cmp	r3, #0
d0054e48:	dc02      	bgt.n	d0054e50 <__sflush_r+0x20>
d0054e4a:	2000      	movs	r0, #0
d0054e4c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0054e50:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0054e52:	2e00      	cmp	r6, #0
d0054e54:	d0f9      	beq.n	d0054e4a <__sflush_r+0x1a>
d0054e56:	2300      	movs	r3, #0
d0054e58:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0054e5c:	682f      	ldr	r7, [r5, #0]
d0054e5e:	602b      	str	r3, [r5, #0]
d0054e60:	d032      	beq.n	d0054ec8 <__sflush_r+0x98>
d0054e62:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0054e64:	89a3      	ldrh	r3, [r4, #12]
d0054e66:	075a      	lsls	r2, r3, #29
d0054e68:	d505      	bpl.n	d0054e76 <__sflush_r+0x46>
d0054e6a:	6863      	ldr	r3, [r4, #4]
d0054e6c:	1ac0      	subs	r0, r0, r3
d0054e6e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0054e70:	b10b      	cbz	r3, d0054e76 <__sflush_r+0x46>
d0054e72:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0054e74:	1ac0      	subs	r0, r0, r3
d0054e76:	2300      	movs	r3, #0
d0054e78:	4602      	mov	r2, r0
d0054e7a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0054e7c:	6a21      	ldr	r1, [r4, #32]
d0054e7e:	4628      	mov	r0, r5
d0054e80:	47b0      	blx	r6
d0054e82:	1c43      	adds	r3, r0, #1
d0054e84:	89a3      	ldrh	r3, [r4, #12]
d0054e86:	d106      	bne.n	d0054e96 <__sflush_r+0x66>
d0054e88:	6829      	ldr	r1, [r5, #0]
d0054e8a:	291d      	cmp	r1, #29
d0054e8c:	d82c      	bhi.n	d0054ee8 <__sflush_r+0xb8>
d0054e8e:	4a2a      	ldr	r2, [pc, #168]	; (d0054f38 <__sflush_r+0x108>)
d0054e90:	40ca      	lsrs	r2, r1
d0054e92:	07d6      	lsls	r6, r2, #31
d0054e94:	d528      	bpl.n	d0054ee8 <__sflush_r+0xb8>
d0054e96:	2200      	movs	r2, #0
d0054e98:	6062      	str	r2, [r4, #4]
d0054e9a:	04d9      	lsls	r1, r3, #19
d0054e9c:	6922      	ldr	r2, [r4, #16]
d0054e9e:	6022      	str	r2, [r4, #0]
d0054ea0:	d504      	bpl.n	d0054eac <__sflush_r+0x7c>
d0054ea2:	1c42      	adds	r2, r0, #1
d0054ea4:	d101      	bne.n	d0054eaa <__sflush_r+0x7a>
d0054ea6:	682b      	ldr	r3, [r5, #0]
d0054ea8:	b903      	cbnz	r3, d0054eac <__sflush_r+0x7c>
d0054eaa:	6560      	str	r0, [r4, #84]	; 0x54
d0054eac:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0054eae:	602f      	str	r7, [r5, #0]
d0054eb0:	2900      	cmp	r1, #0
d0054eb2:	d0ca      	beq.n	d0054e4a <__sflush_r+0x1a>
d0054eb4:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0054eb8:	4299      	cmp	r1, r3
d0054eba:	d002      	beq.n	d0054ec2 <__sflush_r+0x92>
d0054ebc:	4628      	mov	r0, r5
d0054ebe:	f000 f9a7 	bl	d0055210 <_free_r>
d0054ec2:	2000      	movs	r0, #0
d0054ec4:	6360      	str	r0, [r4, #52]	; 0x34
d0054ec6:	e7c1      	b.n	d0054e4c <__sflush_r+0x1c>
d0054ec8:	6a21      	ldr	r1, [r4, #32]
d0054eca:	2301      	movs	r3, #1
d0054ecc:	4628      	mov	r0, r5
d0054ece:	47b0      	blx	r6
d0054ed0:	1c41      	adds	r1, r0, #1
d0054ed2:	d1c7      	bne.n	d0054e64 <__sflush_r+0x34>
d0054ed4:	682b      	ldr	r3, [r5, #0]
d0054ed6:	2b00      	cmp	r3, #0
d0054ed8:	d0c4      	beq.n	d0054e64 <__sflush_r+0x34>
d0054eda:	2b1d      	cmp	r3, #29
d0054edc:	d001      	beq.n	d0054ee2 <__sflush_r+0xb2>
d0054ede:	2b16      	cmp	r3, #22
d0054ee0:	d101      	bne.n	d0054ee6 <__sflush_r+0xb6>
d0054ee2:	602f      	str	r7, [r5, #0]
d0054ee4:	e7b1      	b.n	d0054e4a <__sflush_r+0x1a>
d0054ee6:	89a3      	ldrh	r3, [r4, #12]
d0054ee8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0054eec:	81a3      	strh	r3, [r4, #12]
d0054eee:	e7ad      	b.n	d0054e4c <__sflush_r+0x1c>
d0054ef0:	690f      	ldr	r7, [r1, #16]
d0054ef2:	2f00      	cmp	r7, #0
d0054ef4:	d0a9      	beq.n	d0054e4a <__sflush_r+0x1a>
d0054ef6:	0793      	lsls	r3, r2, #30
d0054ef8:	680e      	ldr	r6, [r1, #0]
d0054efa:	bf08      	it	eq
d0054efc:	694b      	ldreq	r3, [r1, #20]
d0054efe:	600f      	str	r7, [r1, #0]
d0054f00:	bf18      	it	ne
d0054f02:	2300      	movne	r3, #0
d0054f04:	eba6 0807 	sub.w	r8, r6, r7
d0054f08:	608b      	str	r3, [r1, #8]
d0054f0a:	f1b8 0f00 	cmp.w	r8, #0
d0054f0e:	dd9c      	ble.n	d0054e4a <__sflush_r+0x1a>
d0054f10:	6a21      	ldr	r1, [r4, #32]
d0054f12:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0054f14:	4643      	mov	r3, r8
d0054f16:	463a      	mov	r2, r7
d0054f18:	4628      	mov	r0, r5
d0054f1a:	47b0      	blx	r6
d0054f1c:	2800      	cmp	r0, #0
d0054f1e:	dc06      	bgt.n	d0054f2e <__sflush_r+0xfe>
d0054f20:	89a3      	ldrh	r3, [r4, #12]
d0054f22:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0054f26:	81a3      	strh	r3, [r4, #12]
d0054f28:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0054f2c:	e78e      	b.n	d0054e4c <__sflush_r+0x1c>
d0054f2e:	4407      	add	r7, r0
d0054f30:	eba8 0800 	sub.w	r8, r8, r0
d0054f34:	e7e9      	b.n	d0054f0a <__sflush_r+0xda>
d0054f36:	bf00      	nop
d0054f38:	20400001 	.word	0x20400001

d0054f3c <_fflush_r>:
d0054f3c:	b538      	push	{r3, r4, r5, lr}
d0054f3e:	690b      	ldr	r3, [r1, #16]
d0054f40:	4605      	mov	r5, r0
d0054f42:	460c      	mov	r4, r1
d0054f44:	b913      	cbnz	r3, d0054f4c <_fflush_r+0x10>
d0054f46:	2500      	movs	r5, #0
d0054f48:	4628      	mov	r0, r5
d0054f4a:	bd38      	pop	{r3, r4, r5, pc}
d0054f4c:	b118      	cbz	r0, d0054f56 <_fflush_r+0x1a>
d0054f4e:	6983      	ldr	r3, [r0, #24]
d0054f50:	b90b      	cbnz	r3, d0054f56 <_fflush_r+0x1a>
d0054f52:	f000 f887 	bl	d0055064 <__sinit>
d0054f56:	4b14      	ldr	r3, [pc, #80]	; (d0054fa8 <_fflush_r+0x6c>)
d0054f58:	429c      	cmp	r4, r3
d0054f5a:	d11b      	bne.n	d0054f94 <_fflush_r+0x58>
d0054f5c:	686c      	ldr	r4, [r5, #4]
d0054f5e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0054f62:	2b00      	cmp	r3, #0
d0054f64:	d0ef      	beq.n	d0054f46 <_fflush_r+0xa>
d0054f66:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0054f68:	07d0      	lsls	r0, r2, #31
d0054f6a:	d404      	bmi.n	d0054f76 <_fflush_r+0x3a>
d0054f6c:	0599      	lsls	r1, r3, #22
d0054f6e:	d402      	bmi.n	d0054f76 <_fflush_r+0x3a>
d0054f70:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0054f72:	f000 f916 	bl	d00551a2 <__retarget_lock_acquire_recursive>
d0054f76:	4628      	mov	r0, r5
d0054f78:	4621      	mov	r1, r4
d0054f7a:	f7ff ff59 	bl	d0054e30 <__sflush_r>
d0054f7e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0054f80:	07da      	lsls	r2, r3, #31
d0054f82:	4605      	mov	r5, r0
d0054f84:	d4e0      	bmi.n	d0054f48 <_fflush_r+0xc>
d0054f86:	89a3      	ldrh	r3, [r4, #12]
d0054f88:	059b      	lsls	r3, r3, #22
d0054f8a:	d4dd      	bmi.n	d0054f48 <_fflush_r+0xc>
d0054f8c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0054f8e:	f000 f909 	bl	d00551a4 <__retarget_lock_release_recursive>
d0054f92:	e7d9      	b.n	d0054f48 <_fflush_r+0xc>
d0054f94:	4b05      	ldr	r3, [pc, #20]	; (d0054fac <_fflush_r+0x70>)
d0054f96:	429c      	cmp	r4, r3
d0054f98:	d101      	bne.n	d0054f9e <_fflush_r+0x62>
d0054f9a:	68ac      	ldr	r4, [r5, #8]
d0054f9c:	e7df      	b.n	d0054f5e <_fflush_r+0x22>
d0054f9e:	4b04      	ldr	r3, [pc, #16]	; (d0054fb0 <_fflush_r+0x74>)
d0054fa0:	429c      	cmp	r4, r3
d0054fa2:	bf08      	it	eq
d0054fa4:	68ec      	ldreq	r4, [r5, #12]
d0054fa6:	e7da      	b.n	d0054f5e <_fflush_r+0x22>
d0054fa8:	d0057648 	.word	0xd0057648
d0054fac:	d0057668 	.word	0xd0057668
d0054fb0:	d0057628 	.word	0xd0057628

d0054fb4 <std>:
d0054fb4:	2300      	movs	r3, #0
d0054fb6:	b510      	push	{r4, lr}
d0054fb8:	4604      	mov	r4, r0
d0054fba:	e9c0 3300 	strd	r3, r3, [r0]
d0054fbe:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0054fc2:	6083      	str	r3, [r0, #8]
d0054fc4:	8181      	strh	r1, [r0, #12]
d0054fc6:	6643      	str	r3, [r0, #100]	; 0x64
d0054fc8:	81c2      	strh	r2, [r0, #14]
d0054fca:	6183      	str	r3, [r0, #24]
d0054fcc:	4619      	mov	r1, r3
d0054fce:	2208      	movs	r2, #8
d0054fd0:	305c      	adds	r0, #92	; 0x5c
d0054fd2:	f000 f915 	bl	d0055200 <memset>
d0054fd6:	4b05      	ldr	r3, [pc, #20]	; (d0054fec <std+0x38>)
d0054fd8:	6263      	str	r3, [r4, #36]	; 0x24
d0054fda:	4b05      	ldr	r3, [pc, #20]	; (d0054ff0 <std+0x3c>)
d0054fdc:	62a3      	str	r3, [r4, #40]	; 0x28
d0054fde:	4b05      	ldr	r3, [pc, #20]	; (d0054ff4 <std+0x40>)
d0054fe0:	62e3      	str	r3, [r4, #44]	; 0x2c
d0054fe2:	4b05      	ldr	r3, [pc, #20]	; (d0054ff8 <std+0x44>)
d0054fe4:	6224      	str	r4, [r4, #32]
d0054fe6:	6323      	str	r3, [r4, #48]	; 0x30
d0054fe8:	bd10      	pop	{r4, pc}
d0054fea:	bf00      	nop
d0054fec:	d00555c1 	.word	0xd00555c1
d0054ff0:	d00555e3 	.word	0xd00555e3
d0054ff4:	d005561b 	.word	0xd005561b
d0054ff8:	d005563f 	.word	0xd005563f

d0054ffc <_cleanup_r>:
d0054ffc:	4901      	ldr	r1, [pc, #4]	; (d0055004 <_cleanup_r+0x8>)
d0054ffe:	f000 b8af 	b.w	d0055160 <_fwalk_reent>
d0055002:	bf00      	nop
d0055004:	d0054f3d 	.word	0xd0054f3d

d0055008 <__sfmoreglue>:
d0055008:	b570      	push	{r4, r5, r6, lr}
d005500a:	1e4a      	subs	r2, r1, #1
d005500c:	2568      	movs	r5, #104	; 0x68
d005500e:	4355      	muls	r5, r2
d0055010:	460e      	mov	r6, r1
d0055012:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0055016:	f000 f94b 	bl	d00552b0 <_malloc_r>
d005501a:	4604      	mov	r4, r0
d005501c:	b140      	cbz	r0, d0055030 <__sfmoreglue+0x28>
d005501e:	2100      	movs	r1, #0
d0055020:	e9c0 1600 	strd	r1, r6, [r0]
d0055024:	300c      	adds	r0, #12
d0055026:	60a0      	str	r0, [r4, #8]
d0055028:	f105 0268 	add.w	r2, r5, #104	; 0x68
d005502c:	f000 f8e8 	bl	d0055200 <memset>
d0055030:	4620      	mov	r0, r4
d0055032:	bd70      	pop	{r4, r5, r6, pc}

d0055034 <__sfp_lock_acquire>:
d0055034:	4801      	ldr	r0, [pc, #4]	; (d005503c <__sfp_lock_acquire+0x8>)
d0055036:	f000 b8b4 	b.w	d00551a2 <__retarget_lock_acquire_recursive>
d005503a:	bf00      	nop
d005503c:	d00fc75c 	.word	0xd00fc75c

d0055040 <__sfp_lock_release>:
d0055040:	4801      	ldr	r0, [pc, #4]	; (d0055048 <__sfp_lock_release+0x8>)
d0055042:	f000 b8af 	b.w	d00551a4 <__retarget_lock_release_recursive>
d0055046:	bf00      	nop
d0055048:	d00fc75c 	.word	0xd00fc75c

d005504c <__sinit_lock_acquire>:
d005504c:	4801      	ldr	r0, [pc, #4]	; (d0055054 <__sinit_lock_acquire+0x8>)
d005504e:	f000 b8a8 	b.w	d00551a2 <__retarget_lock_acquire_recursive>
d0055052:	bf00      	nop
d0055054:	d00fc757 	.word	0xd00fc757

d0055058 <__sinit_lock_release>:
d0055058:	4801      	ldr	r0, [pc, #4]	; (d0055060 <__sinit_lock_release+0x8>)
d005505a:	f000 b8a3 	b.w	d00551a4 <__retarget_lock_release_recursive>
d005505e:	bf00      	nop
d0055060:	d00fc757 	.word	0xd00fc757

d0055064 <__sinit>:
d0055064:	b510      	push	{r4, lr}
d0055066:	4604      	mov	r4, r0
d0055068:	f7ff fff0 	bl	d005504c <__sinit_lock_acquire>
d005506c:	69a3      	ldr	r3, [r4, #24]
d005506e:	b11b      	cbz	r3, d0055078 <__sinit+0x14>
d0055070:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0055074:	f7ff bff0 	b.w	d0055058 <__sinit_lock_release>
d0055078:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d005507c:	6523      	str	r3, [r4, #80]	; 0x50
d005507e:	4b13      	ldr	r3, [pc, #76]	; (d00550cc <__sinit+0x68>)
d0055080:	4a13      	ldr	r2, [pc, #76]	; (d00550d0 <__sinit+0x6c>)
d0055082:	681b      	ldr	r3, [r3, #0]
d0055084:	62a2      	str	r2, [r4, #40]	; 0x28
d0055086:	42a3      	cmp	r3, r4
d0055088:	bf04      	itt	eq
d005508a:	2301      	moveq	r3, #1
d005508c:	61a3      	streq	r3, [r4, #24]
d005508e:	4620      	mov	r0, r4
d0055090:	f000 f820 	bl	d00550d4 <__sfp>
d0055094:	6060      	str	r0, [r4, #4]
d0055096:	4620      	mov	r0, r4
d0055098:	f000 f81c 	bl	d00550d4 <__sfp>
d005509c:	60a0      	str	r0, [r4, #8]
d005509e:	4620      	mov	r0, r4
d00550a0:	f000 f818 	bl	d00550d4 <__sfp>
d00550a4:	2200      	movs	r2, #0
d00550a6:	60e0      	str	r0, [r4, #12]
d00550a8:	2104      	movs	r1, #4
d00550aa:	6860      	ldr	r0, [r4, #4]
d00550ac:	f7ff ff82 	bl	d0054fb4 <std>
d00550b0:	68a0      	ldr	r0, [r4, #8]
d00550b2:	2201      	movs	r2, #1
d00550b4:	2109      	movs	r1, #9
d00550b6:	f7ff ff7d 	bl	d0054fb4 <std>
d00550ba:	68e0      	ldr	r0, [r4, #12]
d00550bc:	2202      	movs	r2, #2
d00550be:	2112      	movs	r1, #18
d00550c0:	f7ff ff78 	bl	d0054fb4 <std>
d00550c4:	2301      	movs	r3, #1
d00550c6:	61a3      	str	r3, [r4, #24]
d00550c8:	e7d2      	b.n	d0055070 <__sinit+0xc>
d00550ca:	bf00      	nop
d00550cc:	d0057688 	.word	0xd0057688
d00550d0:	d0054ffd 	.word	0xd0054ffd

d00550d4 <__sfp>:
d00550d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00550d6:	4607      	mov	r7, r0
d00550d8:	f7ff ffac 	bl	d0055034 <__sfp_lock_acquire>
d00550dc:	4b1e      	ldr	r3, [pc, #120]	; (d0055158 <__sfp+0x84>)
d00550de:	681e      	ldr	r6, [r3, #0]
d00550e0:	69b3      	ldr	r3, [r6, #24]
d00550e2:	b913      	cbnz	r3, d00550ea <__sfp+0x16>
d00550e4:	4630      	mov	r0, r6
d00550e6:	f7ff ffbd 	bl	d0055064 <__sinit>
d00550ea:	3648      	adds	r6, #72	; 0x48
d00550ec:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00550f0:	3b01      	subs	r3, #1
d00550f2:	d503      	bpl.n	d00550fc <__sfp+0x28>
d00550f4:	6833      	ldr	r3, [r6, #0]
d00550f6:	b30b      	cbz	r3, d005513c <__sfp+0x68>
d00550f8:	6836      	ldr	r6, [r6, #0]
d00550fa:	e7f7      	b.n	d00550ec <__sfp+0x18>
d00550fc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0055100:	b9d5      	cbnz	r5, d0055138 <__sfp+0x64>
d0055102:	4b16      	ldr	r3, [pc, #88]	; (d005515c <__sfp+0x88>)
d0055104:	60e3      	str	r3, [r4, #12]
d0055106:	f104 0058 	add.w	r0, r4, #88	; 0x58
d005510a:	6665      	str	r5, [r4, #100]	; 0x64
d005510c:	f000 f847 	bl	d005519e <__retarget_lock_init_recursive>
d0055110:	f7ff ff96 	bl	d0055040 <__sfp_lock_release>
d0055114:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0055118:	e9c4 5504 	strd	r5, r5, [r4, #16]
d005511c:	6025      	str	r5, [r4, #0]
d005511e:	61a5      	str	r5, [r4, #24]
d0055120:	2208      	movs	r2, #8
d0055122:	4629      	mov	r1, r5
d0055124:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0055128:	f000 f86a 	bl	d0055200 <memset>
d005512c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0055130:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0055134:	4620      	mov	r0, r4
d0055136:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0055138:	3468      	adds	r4, #104	; 0x68
d005513a:	e7d9      	b.n	d00550f0 <__sfp+0x1c>
d005513c:	2104      	movs	r1, #4
d005513e:	4638      	mov	r0, r7
d0055140:	f7ff ff62 	bl	d0055008 <__sfmoreglue>
d0055144:	4604      	mov	r4, r0
d0055146:	6030      	str	r0, [r6, #0]
d0055148:	2800      	cmp	r0, #0
d005514a:	d1d5      	bne.n	d00550f8 <__sfp+0x24>
d005514c:	f7ff ff78 	bl	d0055040 <__sfp_lock_release>
d0055150:	230c      	movs	r3, #12
d0055152:	603b      	str	r3, [r7, #0]
d0055154:	e7ee      	b.n	d0055134 <__sfp+0x60>
d0055156:	bf00      	nop
d0055158:	d0057688 	.word	0xd0057688
d005515c:	ffff0001 	.word	0xffff0001

d0055160 <_fwalk_reent>:
d0055160:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0055164:	4606      	mov	r6, r0
d0055166:	4688      	mov	r8, r1
d0055168:	f100 0448 	add.w	r4, r0, #72	; 0x48
d005516c:	2700      	movs	r7, #0
d005516e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0055172:	f1b9 0901 	subs.w	r9, r9, #1
d0055176:	d505      	bpl.n	d0055184 <_fwalk_reent+0x24>
d0055178:	6824      	ldr	r4, [r4, #0]
d005517a:	2c00      	cmp	r4, #0
d005517c:	d1f7      	bne.n	d005516e <_fwalk_reent+0xe>
d005517e:	4638      	mov	r0, r7
d0055180:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0055184:	89ab      	ldrh	r3, [r5, #12]
d0055186:	2b01      	cmp	r3, #1
d0055188:	d907      	bls.n	d005519a <_fwalk_reent+0x3a>
d005518a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d005518e:	3301      	adds	r3, #1
d0055190:	d003      	beq.n	d005519a <_fwalk_reent+0x3a>
d0055192:	4629      	mov	r1, r5
d0055194:	4630      	mov	r0, r6
d0055196:	47c0      	blx	r8
d0055198:	4307      	orrs	r7, r0
d005519a:	3568      	adds	r5, #104	; 0x68
d005519c:	e7e9      	b.n	d0055172 <_fwalk_reent+0x12>

d005519e <__retarget_lock_init_recursive>:
d005519e:	4770      	bx	lr

d00551a0 <__retarget_lock_close_recursive>:
d00551a0:	4770      	bx	lr

d00551a2 <__retarget_lock_acquire_recursive>:
d00551a2:	4770      	bx	lr

d00551a4 <__retarget_lock_release_recursive>:
d00551a4:	4770      	bx	lr
	...

d00551a8 <malloc>:
d00551a8:	4b02      	ldr	r3, [pc, #8]	; (d00551b4 <malloc+0xc>)
d00551aa:	4601      	mov	r1, r0
d00551ac:	6818      	ldr	r0, [r3, #0]
d00551ae:	f000 b87f 	b.w	d00552b0 <_malloc_r>
d00551b2:	bf00      	nop
d00551b4:	d0059fb4 	.word	0xd0059fb4

d00551b8 <free>:
d00551b8:	4b02      	ldr	r3, [pc, #8]	; (d00551c4 <free+0xc>)
d00551ba:	4601      	mov	r1, r0
d00551bc:	6818      	ldr	r0, [r3, #0]
d00551be:	f000 b827 	b.w	d0055210 <_free_r>
d00551c2:	bf00      	nop
d00551c4:	d0059fb4 	.word	0xd0059fb4

d00551c8 <memcmp>:
d00551c8:	b530      	push	{r4, r5, lr}
d00551ca:	3901      	subs	r1, #1
d00551cc:	2400      	movs	r4, #0
d00551ce:	42a2      	cmp	r2, r4
d00551d0:	d101      	bne.n	d00551d6 <memcmp+0xe>
d00551d2:	2000      	movs	r0, #0
d00551d4:	e005      	b.n	d00551e2 <memcmp+0x1a>
d00551d6:	5d03      	ldrb	r3, [r0, r4]
d00551d8:	3401      	adds	r4, #1
d00551da:	5d0d      	ldrb	r5, [r1, r4]
d00551dc:	42ab      	cmp	r3, r5
d00551de:	d0f6      	beq.n	d00551ce <memcmp+0x6>
d00551e0:	1b58      	subs	r0, r3, r5
d00551e2:	bd30      	pop	{r4, r5, pc}

d00551e4 <memcpy>:
d00551e4:	440a      	add	r2, r1
d00551e6:	4291      	cmp	r1, r2
d00551e8:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00551ec:	d100      	bne.n	d00551f0 <memcpy+0xc>
d00551ee:	4770      	bx	lr
d00551f0:	b510      	push	{r4, lr}
d00551f2:	f811 4b01 	ldrb.w	r4, [r1], #1
d00551f6:	f803 4f01 	strb.w	r4, [r3, #1]!
d00551fa:	4291      	cmp	r1, r2
d00551fc:	d1f9      	bne.n	d00551f2 <memcpy+0xe>
d00551fe:	bd10      	pop	{r4, pc}

d0055200 <memset>:
d0055200:	4402      	add	r2, r0
d0055202:	4603      	mov	r3, r0
d0055204:	4293      	cmp	r3, r2
d0055206:	d100      	bne.n	d005520a <memset+0xa>
d0055208:	4770      	bx	lr
d005520a:	f803 1b01 	strb.w	r1, [r3], #1
d005520e:	e7f9      	b.n	d0055204 <memset+0x4>

d0055210 <_free_r>:
d0055210:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0055212:	2900      	cmp	r1, #0
d0055214:	d048      	beq.n	d00552a8 <_free_r+0x98>
d0055216:	f851 3c04 	ldr.w	r3, [r1, #-4]
d005521a:	9001      	str	r0, [sp, #4]
d005521c:	2b00      	cmp	r3, #0
d005521e:	f1a1 0404 	sub.w	r4, r1, #4
d0055222:	bfb8      	it	lt
d0055224:	18e4      	addlt	r4, r4, r3
d0055226:	f000 fac5 	bl	d00557b4 <__malloc_lock>
d005522a:	4a20      	ldr	r2, [pc, #128]	; (d00552ac <_free_r+0x9c>)
d005522c:	9801      	ldr	r0, [sp, #4]
d005522e:	6813      	ldr	r3, [r2, #0]
d0055230:	4615      	mov	r5, r2
d0055232:	b933      	cbnz	r3, d0055242 <_free_r+0x32>
d0055234:	6063      	str	r3, [r4, #4]
d0055236:	6014      	str	r4, [r2, #0]
d0055238:	b003      	add	sp, #12
d005523a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005523e:	f000 babf 	b.w	d00557c0 <__malloc_unlock>
d0055242:	42a3      	cmp	r3, r4
d0055244:	d90b      	bls.n	d005525e <_free_r+0x4e>
d0055246:	6821      	ldr	r1, [r4, #0]
d0055248:	1862      	adds	r2, r4, r1
d005524a:	4293      	cmp	r3, r2
d005524c:	bf04      	itt	eq
d005524e:	681a      	ldreq	r2, [r3, #0]
d0055250:	685b      	ldreq	r3, [r3, #4]
d0055252:	6063      	str	r3, [r4, #4]
d0055254:	bf04      	itt	eq
d0055256:	1852      	addeq	r2, r2, r1
d0055258:	6022      	streq	r2, [r4, #0]
d005525a:	602c      	str	r4, [r5, #0]
d005525c:	e7ec      	b.n	d0055238 <_free_r+0x28>
d005525e:	461a      	mov	r2, r3
d0055260:	685b      	ldr	r3, [r3, #4]
d0055262:	b10b      	cbz	r3, d0055268 <_free_r+0x58>
d0055264:	42a3      	cmp	r3, r4
d0055266:	d9fa      	bls.n	d005525e <_free_r+0x4e>
d0055268:	6811      	ldr	r1, [r2, #0]
d005526a:	1855      	adds	r5, r2, r1
d005526c:	42a5      	cmp	r5, r4
d005526e:	d10b      	bne.n	d0055288 <_free_r+0x78>
d0055270:	6824      	ldr	r4, [r4, #0]
d0055272:	4421      	add	r1, r4
d0055274:	1854      	adds	r4, r2, r1
d0055276:	42a3      	cmp	r3, r4
d0055278:	6011      	str	r1, [r2, #0]
d005527a:	d1dd      	bne.n	d0055238 <_free_r+0x28>
d005527c:	681c      	ldr	r4, [r3, #0]
d005527e:	685b      	ldr	r3, [r3, #4]
d0055280:	6053      	str	r3, [r2, #4]
d0055282:	4421      	add	r1, r4
d0055284:	6011      	str	r1, [r2, #0]
d0055286:	e7d7      	b.n	d0055238 <_free_r+0x28>
d0055288:	d902      	bls.n	d0055290 <_free_r+0x80>
d005528a:	230c      	movs	r3, #12
d005528c:	6003      	str	r3, [r0, #0]
d005528e:	e7d3      	b.n	d0055238 <_free_r+0x28>
d0055290:	6825      	ldr	r5, [r4, #0]
d0055292:	1961      	adds	r1, r4, r5
d0055294:	428b      	cmp	r3, r1
d0055296:	bf04      	itt	eq
d0055298:	6819      	ldreq	r1, [r3, #0]
d005529a:	685b      	ldreq	r3, [r3, #4]
d005529c:	6063      	str	r3, [r4, #4]
d005529e:	bf04      	itt	eq
d00552a0:	1949      	addeq	r1, r1, r5
d00552a2:	6021      	streq	r1, [r4, #0]
d00552a4:	6054      	str	r4, [r2, #4]
d00552a6:	e7c7      	b.n	d0055238 <_free_r+0x28>
d00552a8:	b003      	add	sp, #12
d00552aa:	bd30      	pop	{r4, r5, pc}
d00552ac:	d00f44c0 	.word	0xd00f44c0

d00552b0 <_malloc_r>:
d00552b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00552b2:	1ccd      	adds	r5, r1, #3
d00552b4:	f025 0503 	bic.w	r5, r5, #3
d00552b8:	3508      	adds	r5, #8
d00552ba:	2d0c      	cmp	r5, #12
d00552bc:	bf38      	it	cc
d00552be:	250c      	movcc	r5, #12
d00552c0:	2d00      	cmp	r5, #0
d00552c2:	4606      	mov	r6, r0
d00552c4:	db01      	blt.n	d00552ca <_malloc_r+0x1a>
d00552c6:	42a9      	cmp	r1, r5
d00552c8:	d903      	bls.n	d00552d2 <_malloc_r+0x22>
d00552ca:	230c      	movs	r3, #12
d00552cc:	6033      	str	r3, [r6, #0]
d00552ce:	2000      	movs	r0, #0
d00552d0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00552d2:	f000 fa6f 	bl	d00557b4 <__malloc_lock>
d00552d6:	4921      	ldr	r1, [pc, #132]	; (d005535c <_malloc_r+0xac>)
d00552d8:	680a      	ldr	r2, [r1, #0]
d00552da:	4614      	mov	r4, r2
d00552dc:	b99c      	cbnz	r4, d0055306 <_malloc_r+0x56>
d00552de:	4f20      	ldr	r7, [pc, #128]	; (d0055360 <_malloc_r+0xb0>)
d00552e0:	683b      	ldr	r3, [r7, #0]
d00552e2:	b923      	cbnz	r3, d00552ee <_malloc_r+0x3e>
d00552e4:	4621      	mov	r1, r4
d00552e6:	4630      	mov	r0, r6
d00552e8:	f7f5 fefa 	bl	d004b0e0 <_sbrk_r>
d00552ec:	6038      	str	r0, [r7, #0]
d00552ee:	4629      	mov	r1, r5
d00552f0:	4630      	mov	r0, r6
d00552f2:	f7f5 fef5 	bl	d004b0e0 <_sbrk_r>
d00552f6:	1c43      	adds	r3, r0, #1
d00552f8:	d123      	bne.n	d0055342 <_malloc_r+0x92>
d00552fa:	230c      	movs	r3, #12
d00552fc:	6033      	str	r3, [r6, #0]
d00552fe:	4630      	mov	r0, r6
d0055300:	f000 fa5e 	bl	d00557c0 <__malloc_unlock>
d0055304:	e7e3      	b.n	d00552ce <_malloc_r+0x1e>
d0055306:	6823      	ldr	r3, [r4, #0]
d0055308:	1b5b      	subs	r3, r3, r5
d005530a:	d417      	bmi.n	d005533c <_malloc_r+0x8c>
d005530c:	2b0b      	cmp	r3, #11
d005530e:	d903      	bls.n	d0055318 <_malloc_r+0x68>
d0055310:	6023      	str	r3, [r4, #0]
d0055312:	441c      	add	r4, r3
d0055314:	6025      	str	r5, [r4, #0]
d0055316:	e004      	b.n	d0055322 <_malloc_r+0x72>
d0055318:	6863      	ldr	r3, [r4, #4]
d005531a:	42a2      	cmp	r2, r4
d005531c:	bf0c      	ite	eq
d005531e:	600b      	streq	r3, [r1, #0]
d0055320:	6053      	strne	r3, [r2, #4]
d0055322:	4630      	mov	r0, r6
d0055324:	f000 fa4c 	bl	d00557c0 <__malloc_unlock>
d0055328:	f104 000b 	add.w	r0, r4, #11
d005532c:	1d23      	adds	r3, r4, #4
d005532e:	f020 0007 	bic.w	r0, r0, #7
d0055332:	1ac2      	subs	r2, r0, r3
d0055334:	d0cc      	beq.n	d00552d0 <_malloc_r+0x20>
d0055336:	1a1b      	subs	r3, r3, r0
d0055338:	50a3      	str	r3, [r4, r2]
d005533a:	e7c9      	b.n	d00552d0 <_malloc_r+0x20>
d005533c:	4622      	mov	r2, r4
d005533e:	6864      	ldr	r4, [r4, #4]
d0055340:	e7cc      	b.n	d00552dc <_malloc_r+0x2c>
d0055342:	1cc4      	adds	r4, r0, #3
d0055344:	f024 0403 	bic.w	r4, r4, #3
d0055348:	42a0      	cmp	r0, r4
d005534a:	d0e3      	beq.n	d0055314 <_malloc_r+0x64>
d005534c:	1a21      	subs	r1, r4, r0
d005534e:	4630      	mov	r0, r6
d0055350:	f7f5 fec6 	bl	d004b0e0 <_sbrk_r>
d0055354:	3001      	adds	r0, #1
d0055356:	d1dd      	bne.n	d0055314 <_malloc_r+0x64>
d0055358:	e7cf      	b.n	d00552fa <_malloc_r+0x4a>
d005535a:	bf00      	nop
d005535c:	d00f44c0 	.word	0xd00f44c0
d0055360:	d00f44c4 	.word	0xd00f44c4

d0055364 <rand>:
d0055364:	4b17      	ldr	r3, [pc, #92]	; (d00553c4 <rand+0x60>)
d0055366:	b510      	push	{r4, lr}
d0055368:	681c      	ldr	r4, [r3, #0]
d005536a:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d005536c:	b9b3      	cbnz	r3, d005539c <rand+0x38>
d005536e:	2018      	movs	r0, #24
d0055370:	f7ff ff1a 	bl	d00551a8 <malloc>
d0055374:	63a0      	str	r0, [r4, #56]	; 0x38
d0055376:	b928      	cbnz	r0, d0055384 <rand+0x20>
d0055378:	4602      	mov	r2, r0
d005537a:	4b13      	ldr	r3, [pc, #76]	; (d00553c8 <rand+0x64>)
d005537c:	4813      	ldr	r0, [pc, #76]	; (d00553cc <rand+0x68>)
d005537e:	214e      	movs	r1, #78	; 0x4e
d0055380:	f000 f962 	bl	d0055648 <__assert_func>
d0055384:	4a12      	ldr	r2, [pc, #72]	; (d00553d0 <rand+0x6c>)
d0055386:	4b13      	ldr	r3, [pc, #76]	; (d00553d4 <rand+0x70>)
d0055388:	e9c0 2300 	strd	r2, r3, [r0]
d005538c:	4b12      	ldr	r3, [pc, #72]	; (d00553d8 <rand+0x74>)
d005538e:	6083      	str	r3, [r0, #8]
d0055390:	230b      	movs	r3, #11
d0055392:	8183      	strh	r3, [r0, #12]
d0055394:	2201      	movs	r2, #1
d0055396:	2300      	movs	r3, #0
d0055398:	e9c0 2304 	strd	r2, r3, [r0, #16]
d005539c:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d005539e:	480f      	ldr	r0, [pc, #60]	; (d00553dc <rand+0x78>)
d00553a0:	690a      	ldr	r2, [r1, #16]
d00553a2:	694b      	ldr	r3, [r1, #20]
d00553a4:	4c0e      	ldr	r4, [pc, #56]	; (d00553e0 <rand+0x7c>)
d00553a6:	4350      	muls	r0, r2
d00553a8:	fb04 0003 	mla	r0, r4, r3, r0
d00553ac:	fba2 3404 	umull	r3, r4, r2, r4
d00553b0:	1c5a      	adds	r2, r3, #1
d00553b2:	4404      	add	r4, r0
d00553b4:	f144 0000 	adc.w	r0, r4, #0
d00553b8:	e9c1 2004 	strd	r2, r0, [r1, #16]
d00553bc:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d00553c0:	bd10      	pop	{r4, pc}
d00553c2:	bf00      	nop
d00553c4:	d0059fb4 	.word	0xd0059fb4
d00553c8:	d005768c 	.word	0xd005768c
d00553cc:	d00576a3 	.word	0xd00576a3
d00553d0:	abcd330e 	.word	0xabcd330e
d00553d4:	e66d1234 	.word	0xe66d1234
d00553d8:	0005deec 	.word	0x0005deec
d00553dc:	5851f42d 	.word	0x5851f42d
d00553e0:	4c957f2d 	.word	0x4c957f2d

d00553e4 <setbuf>:
d00553e4:	2900      	cmp	r1, #0
d00553e6:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00553ea:	bf0c      	ite	eq
d00553ec:	2202      	moveq	r2, #2
d00553ee:	2200      	movne	r2, #0
d00553f0:	f000 b800 	b.w	d00553f4 <setvbuf>

d00553f4 <setvbuf>:
d00553f4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00553f8:	461d      	mov	r5, r3
d00553fa:	4b5d      	ldr	r3, [pc, #372]	; (d0055570 <setvbuf+0x17c>)
d00553fc:	681f      	ldr	r7, [r3, #0]
d00553fe:	4604      	mov	r4, r0
d0055400:	460e      	mov	r6, r1
d0055402:	4690      	mov	r8, r2
d0055404:	b127      	cbz	r7, d0055410 <setvbuf+0x1c>
d0055406:	69bb      	ldr	r3, [r7, #24]
d0055408:	b913      	cbnz	r3, d0055410 <setvbuf+0x1c>
d005540a:	4638      	mov	r0, r7
d005540c:	f7ff fe2a 	bl	d0055064 <__sinit>
d0055410:	4b58      	ldr	r3, [pc, #352]	; (d0055574 <setvbuf+0x180>)
d0055412:	429c      	cmp	r4, r3
d0055414:	d167      	bne.n	d00554e6 <setvbuf+0xf2>
d0055416:	687c      	ldr	r4, [r7, #4]
d0055418:	f1b8 0f02 	cmp.w	r8, #2
d005541c:	d006      	beq.n	d005542c <setvbuf+0x38>
d005541e:	f1b8 0f01 	cmp.w	r8, #1
d0055422:	f200 809f 	bhi.w	d0055564 <setvbuf+0x170>
d0055426:	2d00      	cmp	r5, #0
d0055428:	f2c0 809c 	blt.w	d0055564 <setvbuf+0x170>
d005542c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005542e:	07db      	lsls	r3, r3, #31
d0055430:	d405      	bmi.n	d005543e <setvbuf+0x4a>
d0055432:	89a3      	ldrh	r3, [r4, #12]
d0055434:	0598      	lsls	r0, r3, #22
d0055436:	d402      	bmi.n	d005543e <setvbuf+0x4a>
d0055438:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005543a:	f7ff feb2 	bl	d00551a2 <__retarget_lock_acquire_recursive>
d005543e:	4621      	mov	r1, r4
d0055440:	4638      	mov	r0, r7
d0055442:	f7ff fd7b 	bl	d0054f3c <_fflush_r>
d0055446:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0055448:	b141      	cbz	r1, d005545c <setvbuf+0x68>
d005544a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005544e:	4299      	cmp	r1, r3
d0055450:	d002      	beq.n	d0055458 <setvbuf+0x64>
d0055452:	4638      	mov	r0, r7
d0055454:	f7ff fedc 	bl	d0055210 <_free_r>
d0055458:	2300      	movs	r3, #0
d005545a:	6363      	str	r3, [r4, #52]	; 0x34
d005545c:	2300      	movs	r3, #0
d005545e:	61a3      	str	r3, [r4, #24]
d0055460:	6063      	str	r3, [r4, #4]
d0055462:	89a3      	ldrh	r3, [r4, #12]
d0055464:	0619      	lsls	r1, r3, #24
d0055466:	d503      	bpl.n	d0055470 <setvbuf+0x7c>
d0055468:	6921      	ldr	r1, [r4, #16]
d005546a:	4638      	mov	r0, r7
d005546c:	f7ff fed0 	bl	d0055210 <_free_r>
d0055470:	89a3      	ldrh	r3, [r4, #12]
d0055472:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0055476:	f023 0303 	bic.w	r3, r3, #3
d005547a:	f1b8 0f02 	cmp.w	r8, #2
d005547e:	81a3      	strh	r3, [r4, #12]
d0055480:	d06c      	beq.n	d005555c <setvbuf+0x168>
d0055482:	ab01      	add	r3, sp, #4
d0055484:	466a      	mov	r2, sp
d0055486:	4621      	mov	r1, r4
d0055488:	4638      	mov	r0, r7
d005548a:	f000 f92f 	bl	d00556ec <__swhatbuf_r>
d005548e:	89a3      	ldrh	r3, [r4, #12]
d0055490:	4318      	orrs	r0, r3
d0055492:	81a0      	strh	r0, [r4, #12]
d0055494:	2d00      	cmp	r5, #0
d0055496:	d130      	bne.n	d00554fa <setvbuf+0x106>
d0055498:	9d00      	ldr	r5, [sp, #0]
d005549a:	4628      	mov	r0, r5
d005549c:	f7ff fe84 	bl	d00551a8 <malloc>
d00554a0:	4606      	mov	r6, r0
d00554a2:	2800      	cmp	r0, #0
d00554a4:	d155      	bne.n	d0055552 <setvbuf+0x15e>
d00554a6:	f8dd 9000 	ldr.w	r9, [sp]
d00554aa:	45a9      	cmp	r9, r5
d00554ac:	d14a      	bne.n	d0055544 <setvbuf+0x150>
d00554ae:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00554b2:	2200      	movs	r2, #0
d00554b4:	60a2      	str	r2, [r4, #8]
d00554b6:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00554ba:	6022      	str	r2, [r4, #0]
d00554bc:	6122      	str	r2, [r4, #16]
d00554be:	2201      	movs	r2, #1
d00554c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00554c4:	6162      	str	r2, [r4, #20]
d00554c6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00554c8:	f043 0302 	orr.w	r3, r3, #2
d00554cc:	07d2      	lsls	r2, r2, #31
d00554ce:	81a3      	strh	r3, [r4, #12]
d00554d0:	d405      	bmi.n	d00554de <setvbuf+0xea>
d00554d2:	f413 7f00 	tst.w	r3, #512	; 0x200
d00554d6:	d102      	bne.n	d00554de <setvbuf+0xea>
d00554d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00554da:	f7ff fe63 	bl	d00551a4 <__retarget_lock_release_recursive>
d00554de:	4628      	mov	r0, r5
d00554e0:	b003      	add	sp, #12
d00554e2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00554e6:	4b24      	ldr	r3, [pc, #144]	; (d0055578 <setvbuf+0x184>)
d00554e8:	429c      	cmp	r4, r3
d00554ea:	d101      	bne.n	d00554f0 <setvbuf+0xfc>
d00554ec:	68bc      	ldr	r4, [r7, #8]
d00554ee:	e793      	b.n	d0055418 <setvbuf+0x24>
d00554f0:	4b22      	ldr	r3, [pc, #136]	; (d005557c <setvbuf+0x188>)
d00554f2:	429c      	cmp	r4, r3
d00554f4:	bf08      	it	eq
d00554f6:	68fc      	ldreq	r4, [r7, #12]
d00554f8:	e78e      	b.n	d0055418 <setvbuf+0x24>
d00554fa:	2e00      	cmp	r6, #0
d00554fc:	d0cd      	beq.n	d005549a <setvbuf+0xa6>
d00554fe:	69bb      	ldr	r3, [r7, #24]
d0055500:	b913      	cbnz	r3, d0055508 <setvbuf+0x114>
d0055502:	4638      	mov	r0, r7
d0055504:	f7ff fdae 	bl	d0055064 <__sinit>
d0055508:	f1b8 0f01 	cmp.w	r8, #1
d005550c:	bf08      	it	eq
d005550e:	89a3      	ldrheq	r3, [r4, #12]
d0055510:	6026      	str	r6, [r4, #0]
d0055512:	bf04      	itt	eq
d0055514:	f043 0301 	orreq.w	r3, r3, #1
d0055518:	81a3      	strheq	r3, [r4, #12]
d005551a:	89a2      	ldrh	r2, [r4, #12]
d005551c:	f012 0308 	ands.w	r3, r2, #8
d0055520:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0055524:	d01c      	beq.n	d0055560 <setvbuf+0x16c>
d0055526:	07d3      	lsls	r3, r2, #31
d0055528:	bf41      	itttt	mi
d005552a:	2300      	movmi	r3, #0
d005552c:	426d      	negmi	r5, r5
d005552e:	60a3      	strmi	r3, [r4, #8]
d0055530:	61a5      	strmi	r5, [r4, #24]
d0055532:	bf58      	it	pl
d0055534:	60a5      	strpl	r5, [r4, #8]
d0055536:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0055538:	f015 0501 	ands.w	r5, r5, #1
d005553c:	d115      	bne.n	d005556a <setvbuf+0x176>
d005553e:	f412 7f00 	tst.w	r2, #512	; 0x200
d0055542:	e7c8      	b.n	d00554d6 <setvbuf+0xe2>
d0055544:	4648      	mov	r0, r9
d0055546:	f7ff fe2f 	bl	d00551a8 <malloc>
d005554a:	4606      	mov	r6, r0
d005554c:	2800      	cmp	r0, #0
d005554e:	d0ae      	beq.n	d00554ae <setvbuf+0xba>
d0055550:	464d      	mov	r5, r9
d0055552:	89a3      	ldrh	r3, [r4, #12]
d0055554:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055558:	81a3      	strh	r3, [r4, #12]
d005555a:	e7d0      	b.n	d00554fe <setvbuf+0x10a>
d005555c:	2500      	movs	r5, #0
d005555e:	e7a8      	b.n	d00554b2 <setvbuf+0xbe>
d0055560:	60a3      	str	r3, [r4, #8]
d0055562:	e7e8      	b.n	d0055536 <setvbuf+0x142>
d0055564:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0055568:	e7b9      	b.n	d00554de <setvbuf+0xea>
d005556a:	2500      	movs	r5, #0
d005556c:	e7b7      	b.n	d00554de <setvbuf+0xea>
d005556e:	bf00      	nop
d0055570:	d0059fb4 	.word	0xd0059fb4
d0055574:	d0057648 	.word	0xd0057648
d0055578:	d0057668 	.word	0xd0057668
d005557c:	d0057628 	.word	0xd0057628

d0055580 <siprintf>:
d0055580:	b40e      	push	{r1, r2, r3}
d0055582:	b500      	push	{lr}
d0055584:	b09c      	sub	sp, #112	; 0x70
d0055586:	ab1d      	add	r3, sp, #116	; 0x74
d0055588:	9002      	str	r0, [sp, #8]
d005558a:	9006      	str	r0, [sp, #24]
d005558c:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0055590:	4809      	ldr	r0, [pc, #36]	; (d00555b8 <siprintf+0x38>)
d0055592:	9107      	str	r1, [sp, #28]
d0055594:	9104      	str	r1, [sp, #16]
d0055596:	4909      	ldr	r1, [pc, #36]	; (d00555bc <siprintf+0x3c>)
d0055598:	f853 2b04 	ldr.w	r2, [r3], #4
d005559c:	9105      	str	r1, [sp, #20]
d005559e:	6800      	ldr	r0, [r0, #0]
d00555a0:	9301      	str	r3, [sp, #4]
d00555a2:	a902      	add	r1, sp, #8
d00555a4:	f000 f994 	bl	d00558d0 <_svfiprintf_r>
d00555a8:	9b02      	ldr	r3, [sp, #8]
d00555aa:	2200      	movs	r2, #0
d00555ac:	701a      	strb	r2, [r3, #0]
d00555ae:	b01c      	add	sp, #112	; 0x70
d00555b0:	f85d eb04 	ldr.w	lr, [sp], #4
d00555b4:	b003      	add	sp, #12
d00555b6:	4770      	bx	lr
d00555b8:	d0059fb4 	.word	0xd0059fb4
d00555bc:	ffff0208 	.word	0xffff0208

d00555c0 <__sread>:
d00555c0:	b510      	push	{r4, lr}
d00555c2:	460c      	mov	r4, r1
d00555c4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00555c8:	f000 fd70 	bl	d00560ac <_read_r>
d00555cc:	2800      	cmp	r0, #0
d00555ce:	bfab      	itete	ge
d00555d0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00555d2:	89a3      	ldrhlt	r3, [r4, #12]
d00555d4:	181b      	addge	r3, r3, r0
d00555d6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00555da:	bfac      	ite	ge
d00555dc:	6563      	strge	r3, [r4, #84]	; 0x54
d00555de:	81a3      	strhlt	r3, [r4, #12]
d00555e0:	bd10      	pop	{r4, pc}

d00555e2 <__swrite>:
d00555e2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00555e6:	461f      	mov	r7, r3
d00555e8:	898b      	ldrh	r3, [r1, #12]
d00555ea:	05db      	lsls	r3, r3, #23
d00555ec:	4605      	mov	r5, r0
d00555ee:	460c      	mov	r4, r1
d00555f0:	4616      	mov	r6, r2
d00555f2:	d505      	bpl.n	d0055600 <__swrite+0x1e>
d00555f4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00555f8:	2302      	movs	r3, #2
d00555fa:	2200      	movs	r2, #0
d00555fc:	f000 f864 	bl	d00556c8 <_lseek_r>
d0055600:	89a3      	ldrh	r3, [r4, #12]
d0055602:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0055606:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d005560a:	81a3      	strh	r3, [r4, #12]
d005560c:	4632      	mov	r2, r6
d005560e:	463b      	mov	r3, r7
d0055610:	4628      	mov	r0, r5
d0055612:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0055616:	f7f5 bd1d 	b.w	d004b054 <_write_r>

d005561a <__sseek>:
d005561a:	b510      	push	{r4, lr}
d005561c:	460c      	mov	r4, r1
d005561e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055622:	f000 f851 	bl	d00556c8 <_lseek_r>
d0055626:	1c43      	adds	r3, r0, #1
d0055628:	89a3      	ldrh	r3, [r4, #12]
d005562a:	bf15      	itete	ne
d005562c:	6560      	strne	r0, [r4, #84]	; 0x54
d005562e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0055632:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0055636:	81a3      	strheq	r3, [r4, #12]
d0055638:	bf18      	it	ne
d005563a:	81a3      	strhne	r3, [r4, #12]
d005563c:	bd10      	pop	{r4, pc}

d005563e <__sclose>:
d005563e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055642:	f000 b81f 	b.w	d0055684 <_close_r>
	...

d0055648 <__assert_func>:
d0055648:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d005564a:	4614      	mov	r4, r2
d005564c:	461a      	mov	r2, r3
d005564e:	4b09      	ldr	r3, [pc, #36]	; (d0055674 <__assert_func+0x2c>)
d0055650:	681b      	ldr	r3, [r3, #0]
d0055652:	4605      	mov	r5, r0
d0055654:	68d8      	ldr	r0, [r3, #12]
d0055656:	b14c      	cbz	r4, d005566c <__assert_func+0x24>
d0055658:	4b07      	ldr	r3, [pc, #28]	; (d0055678 <__assert_func+0x30>)
d005565a:	9100      	str	r1, [sp, #0]
d005565c:	e9cd 3401 	strd	r3, r4, [sp, #4]
d0055660:	4906      	ldr	r1, [pc, #24]	; (d005567c <__assert_func+0x34>)
d0055662:	462b      	mov	r3, r5
d0055664:	f000 f81e 	bl	d00556a4 <fiprintf>
d0055668:	f000 fdf2 	bl	d0056250 <abort>
d005566c:	4b04      	ldr	r3, [pc, #16]	; (d0055680 <__assert_func+0x38>)
d005566e:	461c      	mov	r4, r3
d0055670:	e7f3      	b.n	d005565a <__assert_func+0x12>
d0055672:	bf00      	nop
d0055674:	d0059fb4 	.word	0xd0059fb4
d0055678:	d0057702 	.word	0xd0057702
d005567c:	d005770f 	.word	0xd005770f
d0055680:	d005773d 	.word	0xd005773d

d0055684 <_close_r>:
d0055684:	b538      	push	{r3, r4, r5, lr}
d0055686:	4d06      	ldr	r5, [pc, #24]	; (d00556a0 <_close_r+0x1c>)
d0055688:	2300      	movs	r3, #0
d005568a:	4604      	mov	r4, r0
d005568c:	4608      	mov	r0, r1
d005568e:	602b      	str	r3, [r5, #0]
d0055690:	f7f5 fd1a 	bl	d004b0c8 <_close>
d0055694:	1c43      	adds	r3, r0, #1
d0055696:	d102      	bne.n	d005569e <_close_r+0x1a>
d0055698:	682b      	ldr	r3, [r5, #0]
d005569a:	b103      	cbz	r3, d005569e <_close_r+0x1a>
d005569c:	6023      	str	r3, [r4, #0]
d005569e:	bd38      	pop	{r3, r4, r5, pc}
d00556a0:	d00fc760 	.word	0xd00fc760

d00556a4 <fiprintf>:
d00556a4:	b40e      	push	{r1, r2, r3}
d00556a6:	b503      	push	{r0, r1, lr}
d00556a8:	4601      	mov	r1, r0
d00556aa:	ab03      	add	r3, sp, #12
d00556ac:	4805      	ldr	r0, [pc, #20]	; (d00556c4 <fiprintf+0x20>)
d00556ae:	f853 2b04 	ldr.w	r2, [r3], #4
d00556b2:	6800      	ldr	r0, [r0, #0]
d00556b4:	9301      	str	r3, [sp, #4]
d00556b6:	f000 fa35 	bl	d0055b24 <_vfiprintf_r>
d00556ba:	b002      	add	sp, #8
d00556bc:	f85d eb04 	ldr.w	lr, [sp], #4
d00556c0:	b003      	add	sp, #12
d00556c2:	4770      	bx	lr
d00556c4:	d0059fb4 	.word	0xd0059fb4

d00556c8 <_lseek_r>:
d00556c8:	b538      	push	{r3, r4, r5, lr}
d00556ca:	4d07      	ldr	r5, [pc, #28]	; (d00556e8 <_lseek_r+0x20>)
d00556cc:	4604      	mov	r4, r0
d00556ce:	4608      	mov	r0, r1
d00556d0:	4611      	mov	r1, r2
d00556d2:	2200      	movs	r2, #0
d00556d4:	602a      	str	r2, [r5, #0]
d00556d6:	461a      	mov	r2, r3
d00556d8:	f7f5 fd00 	bl	d004b0dc <_lseek>
d00556dc:	1c43      	adds	r3, r0, #1
d00556de:	d102      	bne.n	d00556e6 <_lseek_r+0x1e>
d00556e0:	682b      	ldr	r3, [r5, #0]
d00556e2:	b103      	cbz	r3, d00556e6 <_lseek_r+0x1e>
d00556e4:	6023      	str	r3, [r4, #0]
d00556e6:	bd38      	pop	{r3, r4, r5, pc}
d00556e8:	d00fc760 	.word	0xd00fc760

d00556ec <__swhatbuf_r>:
d00556ec:	b570      	push	{r4, r5, r6, lr}
d00556ee:	460e      	mov	r6, r1
d00556f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00556f4:	2900      	cmp	r1, #0
d00556f6:	b096      	sub	sp, #88	; 0x58
d00556f8:	4614      	mov	r4, r2
d00556fa:	461d      	mov	r5, r3
d00556fc:	da07      	bge.n	d005570e <__swhatbuf_r+0x22>
d00556fe:	2300      	movs	r3, #0
d0055700:	602b      	str	r3, [r5, #0]
d0055702:	89b3      	ldrh	r3, [r6, #12]
d0055704:	061a      	lsls	r2, r3, #24
d0055706:	d410      	bmi.n	d005572a <__swhatbuf_r+0x3e>
d0055708:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005570c:	e00e      	b.n	d005572c <__swhatbuf_r+0x40>
d005570e:	466a      	mov	r2, sp
d0055710:	f000 fda6 	bl	d0056260 <_fstat_r>
d0055714:	2800      	cmp	r0, #0
d0055716:	dbf2      	blt.n	d00556fe <__swhatbuf_r+0x12>
d0055718:	9a01      	ldr	r2, [sp, #4]
d005571a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d005571e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0055722:	425a      	negs	r2, r3
d0055724:	415a      	adcs	r2, r3
d0055726:	602a      	str	r2, [r5, #0]
d0055728:	e7ee      	b.n	d0055708 <__swhatbuf_r+0x1c>
d005572a:	2340      	movs	r3, #64	; 0x40
d005572c:	2000      	movs	r0, #0
d005572e:	6023      	str	r3, [r4, #0]
d0055730:	b016      	add	sp, #88	; 0x58
d0055732:	bd70      	pop	{r4, r5, r6, pc}

d0055734 <__smakebuf_r>:
d0055734:	898b      	ldrh	r3, [r1, #12]
d0055736:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0055738:	079d      	lsls	r5, r3, #30
d005573a:	4606      	mov	r6, r0
d005573c:	460c      	mov	r4, r1
d005573e:	d507      	bpl.n	d0055750 <__smakebuf_r+0x1c>
d0055740:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0055744:	6023      	str	r3, [r4, #0]
d0055746:	6123      	str	r3, [r4, #16]
d0055748:	2301      	movs	r3, #1
d005574a:	6163      	str	r3, [r4, #20]
d005574c:	b002      	add	sp, #8
d005574e:	bd70      	pop	{r4, r5, r6, pc}
d0055750:	ab01      	add	r3, sp, #4
d0055752:	466a      	mov	r2, sp
d0055754:	f7ff ffca 	bl	d00556ec <__swhatbuf_r>
d0055758:	9900      	ldr	r1, [sp, #0]
d005575a:	4605      	mov	r5, r0
d005575c:	4630      	mov	r0, r6
d005575e:	f7ff fda7 	bl	d00552b0 <_malloc_r>
d0055762:	b948      	cbnz	r0, d0055778 <__smakebuf_r+0x44>
d0055764:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055768:	059a      	lsls	r2, r3, #22
d005576a:	d4ef      	bmi.n	d005574c <__smakebuf_r+0x18>
d005576c:	f023 0303 	bic.w	r3, r3, #3
d0055770:	f043 0302 	orr.w	r3, r3, #2
d0055774:	81a3      	strh	r3, [r4, #12]
d0055776:	e7e3      	b.n	d0055740 <__smakebuf_r+0xc>
d0055778:	4b0d      	ldr	r3, [pc, #52]	; (d00557b0 <__smakebuf_r+0x7c>)
d005577a:	62b3      	str	r3, [r6, #40]	; 0x28
d005577c:	89a3      	ldrh	r3, [r4, #12]
d005577e:	6020      	str	r0, [r4, #0]
d0055780:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055784:	81a3      	strh	r3, [r4, #12]
d0055786:	9b00      	ldr	r3, [sp, #0]
d0055788:	6163      	str	r3, [r4, #20]
d005578a:	9b01      	ldr	r3, [sp, #4]
d005578c:	6120      	str	r0, [r4, #16]
d005578e:	b15b      	cbz	r3, d00557a8 <__smakebuf_r+0x74>
d0055790:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0055794:	4630      	mov	r0, r6
d0055796:	f000 fd75 	bl	d0056284 <_isatty_r>
d005579a:	b128      	cbz	r0, d00557a8 <__smakebuf_r+0x74>
d005579c:	89a3      	ldrh	r3, [r4, #12]
d005579e:	f023 0303 	bic.w	r3, r3, #3
d00557a2:	f043 0301 	orr.w	r3, r3, #1
d00557a6:	81a3      	strh	r3, [r4, #12]
d00557a8:	89a0      	ldrh	r0, [r4, #12]
d00557aa:	4305      	orrs	r5, r0
d00557ac:	81a5      	strh	r5, [r4, #12]
d00557ae:	e7cd      	b.n	d005574c <__smakebuf_r+0x18>
d00557b0:	d0054ffd 	.word	0xd0054ffd

d00557b4 <__malloc_lock>:
d00557b4:	4801      	ldr	r0, [pc, #4]	; (d00557bc <__malloc_lock+0x8>)
d00557b6:	f7ff bcf4 	b.w	d00551a2 <__retarget_lock_acquire_recursive>
d00557ba:	bf00      	nop
d00557bc:	d00fc758 	.word	0xd00fc758

d00557c0 <__malloc_unlock>:
d00557c0:	4801      	ldr	r0, [pc, #4]	; (d00557c8 <__malloc_unlock+0x8>)
d00557c2:	f7ff bcef 	b.w	d00551a4 <__retarget_lock_release_recursive>
d00557c6:	bf00      	nop
d00557c8:	d00fc758 	.word	0xd00fc758

d00557cc <_realloc_r>:
d00557cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00557ce:	4607      	mov	r7, r0
d00557d0:	4614      	mov	r4, r2
d00557d2:	460e      	mov	r6, r1
d00557d4:	b921      	cbnz	r1, d00557e0 <_realloc_r+0x14>
d00557d6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00557da:	4611      	mov	r1, r2
d00557dc:	f7ff bd68 	b.w	d00552b0 <_malloc_r>
d00557e0:	b922      	cbnz	r2, d00557ec <_realloc_r+0x20>
d00557e2:	f7ff fd15 	bl	d0055210 <_free_r>
d00557e6:	4625      	mov	r5, r4
d00557e8:	4628      	mov	r0, r5
d00557ea:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00557ec:	f000 fdca 	bl	d0056384 <_malloc_usable_size_r>
d00557f0:	42a0      	cmp	r0, r4
d00557f2:	d20f      	bcs.n	d0055814 <_realloc_r+0x48>
d00557f4:	4621      	mov	r1, r4
d00557f6:	4638      	mov	r0, r7
d00557f8:	f7ff fd5a 	bl	d00552b0 <_malloc_r>
d00557fc:	4605      	mov	r5, r0
d00557fe:	2800      	cmp	r0, #0
d0055800:	d0f2      	beq.n	d00557e8 <_realloc_r+0x1c>
d0055802:	4631      	mov	r1, r6
d0055804:	4622      	mov	r2, r4
d0055806:	f7ff fced 	bl	d00551e4 <memcpy>
d005580a:	4631      	mov	r1, r6
d005580c:	4638      	mov	r0, r7
d005580e:	f7ff fcff 	bl	d0055210 <_free_r>
d0055812:	e7e9      	b.n	d00557e8 <_realloc_r+0x1c>
d0055814:	4635      	mov	r5, r6
d0055816:	e7e7      	b.n	d00557e8 <_realloc_r+0x1c>

d0055818 <__ssputs_r>:
d0055818:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d005581c:	688e      	ldr	r6, [r1, #8]
d005581e:	429e      	cmp	r6, r3
d0055820:	4682      	mov	sl, r0
d0055822:	460c      	mov	r4, r1
d0055824:	4690      	mov	r8, r2
d0055826:	461f      	mov	r7, r3
d0055828:	d838      	bhi.n	d005589c <__ssputs_r+0x84>
d005582a:	898a      	ldrh	r2, [r1, #12]
d005582c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0055830:	d032      	beq.n	d0055898 <__ssputs_r+0x80>
d0055832:	6825      	ldr	r5, [r4, #0]
d0055834:	6909      	ldr	r1, [r1, #16]
d0055836:	eba5 0901 	sub.w	r9, r5, r1
d005583a:	6965      	ldr	r5, [r4, #20]
d005583c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0055840:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0055844:	3301      	adds	r3, #1
d0055846:	444b      	add	r3, r9
d0055848:	106d      	asrs	r5, r5, #1
d005584a:	429d      	cmp	r5, r3
d005584c:	bf38      	it	cc
d005584e:	461d      	movcc	r5, r3
d0055850:	0553      	lsls	r3, r2, #21
d0055852:	d531      	bpl.n	d00558b8 <__ssputs_r+0xa0>
d0055854:	4629      	mov	r1, r5
d0055856:	f7ff fd2b 	bl	d00552b0 <_malloc_r>
d005585a:	4606      	mov	r6, r0
d005585c:	b950      	cbnz	r0, d0055874 <__ssputs_r+0x5c>
d005585e:	230c      	movs	r3, #12
d0055860:	f8ca 3000 	str.w	r3, [sl]
d0055864:	89a3      	ldrh	r3, [r4, #12]
d0055866:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d005586a:	81a3      	strh	r3, [r4, #12]
d005586c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055870:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0055874:	6921      	ldr	r1, [r4, #16]
d0055876:	464a      	mov	r2, r9
d0055878:	f7ff fcb4 	bl	d00551e4 <memcpy>
d005587c:	89a3      	ldrh	r3, [r4, #12]
d005587e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0055882:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055886:	81a3      	strh	r3, [r4, #12]
d0055888:	6126      	str	r6, [r4, #16]
d005588a:	6165      	str	r5, [r4, #20]
d005588c:	444e      	add	r6, r9
d005588e:	eba5 0509 	sub.w	r5, r5, r9
d0055892:	6026      	str	r6, [r4, #0]
d0055894:	60a5      	str	r5, [r4, #8]
d0055896:	463e      	mov	r6, r7
d0055898:	42be      	cmp	r6, r7
d005589a:	d900      	bls.n	d005589e <__ssputs_r+0x86>
d005589c:	463e      	mov	r6, r7
d005589e:	4632      	mov	r2, r6
d00558a0:	6820      	ldr	r0, [r4, #0]
d00558a2:	4641      	mov	r1, r8
d00558a4:	f000 fd54 	bl	d0056350 <memmove>
d00558a8:	68a3      	ldr	r3, [r4, #8]
d00558aa:	6822      	ldr	r2, [r4, #0]
d00558ac:	1b9b      	subs	r3, r3, r6
d00558ae:	4432      	add	r2, r6
d00558b0:	60a3      	str	r3, [r4, #8]
d00558b2:	6022      	str	r2, [r4, #0]
d00558b4:	2000      	movs	r0, #0
d00558b6:	e7db      	b.n	d0055870 <__ssputs_r+0x58>
d00558b8:	462a      	mov	r2, r5
d00558ba:	f7ff ff87 	bl	d00557cc <_realloc_r>
d00558be:	4606      	mov	r6, r0
d00558c0:	2800      	cmp	r0, #0
d00558c2:	d1e1      	bne.n	d0055888 <__ssputs_r+0x70>
d00558c4:	6921      	ldr	r1, [r4, #16]
d00558c6:	4650      	mov	r0, sl
d00558c8:	f7ff fca2 	bl	d0055210 <_free_r>
d00558cc:	e7c7      	b.n	d005585e <__ssputs_r+0x46>
	...

d00558d0 <_svfiprintf_r>:
d00558d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00558d4:	4698      	mov	r8, r3
d00558d6:	898b      	ldrh	r3, [r1, #12]
d00558d8:	061b      	lsls	r3, r3, #24
d00558da:	b09d      	sub	sp, #116	; 0x74
d00558dc:	4607      	mov	r7, r0
d00558de:	460d      	mov	r5, r1
d00558e0:	4614      	mov	r4, r2
d00558e2:	d50e      	bpl.n	d0055902 <_svfiprintf_r+0x32>
d00558e4:	690b      	ldr	r3, [r1, #16]
d00558e6:	b963      	cbnz	r3, d0055902 <_svfiprintf_r+0x32>
d00558e8:	2140      	movs	r1, #64	; 0x40
d00558ea:	f7ff fce1 	bl	d00552b0 <_malloc_r>
d00558ee:	6028      	str	r0, [r5, #0]
d00558f0:	6128      	str	r0, [r5, #16]
d00558f2:	b920      	cbnz	r0, d00558fe <_svfiprintf_r+0x2e>
d00558f4:	230c      	movs	r3, #12
d00558f6:	603b      	str	r3, [r7, #0]
d00558f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00558fc:	e0d1      	b.n	d0055aa2 <_svfiprintf_r+0x1d2>
d00558fe:	2340      	movs	r3, #64	; 0x40
d0055900:	616b      	str	r3, [r5, #20]
d0055902:	2300      	movs	r3, #0
d0055904:	9309      	str	r3, [sp, #36]	; 0x24
d0055906:	2320      	movs	r3, #32
d0055908:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d005590c:	f8cd 800c 	str.w	r8, [sp, #12]
d0055910:	2330      	movs	r3, #48	; 0x30
d0055912:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0055abc <_svfiprintf_r+0x1ec>
d0055916:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d005591a:	f04f 0901 	mov.w	r9, #1
d005591e:	4623      	mov	r3, r4
d0055920:	469a      	mov	sl, r3
d0055922:	f813 2b01 	ldrb.w	r2, [r3], #1
d0055926:	b10a      	cbz	r2, d005592c <_svfiprintf_r+0x5c>
d0055928:	2a25      	cmp	r2, #37	; 0x25
d005592a:	d1f9      	bne.n	d0055920 <_svfiprintf_r+0x50>
d005592c:	ebba 0b04 	subs.w	fp, sl, r4
d0055930:	d00b      	beq.n	d005594a <_svfiprintf_r+0x7a>
d0055932:	465b      	mov	r3, fp
d0055934:	4622      	mov	r2, r4
d0055936:	4629      	mov	r1, r5
d0055938:	4638      	mov	r0, r7
d005593a:	f7ff ff6d 	bl	d0055818 <__ssputs_r>
d005593e:	3001      	adds	r0, #1
d0055940:	f000 80aa 	beq.w	d0055a98 <_svfiprintf_r+0x1c8>
d0055944:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0055946:	445a      	add	r2, fp
d0055948:	9209      	str	r2, [sp, #36]	; 0x24
d005594a:	f89a 3000 	ldrb.w	r3, [sl]
d005594e:	2b00      	cmp	r3, #0
d0055950:	f000 80a2 	beq.w	d0055a98 <_svfiprintf_r+0x1c8>
d0055954:	2300      	movs	r3, #0
d0055956:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d005595a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d005595e:	f10a 0a01 	add.w	sl, sl, #1
d0055962:	9304      	str	r3, [sp, #16]
d0055964:	9307      	str	r3, [sp, #28]
d0055966:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d005596a:	931a      	str	r3, [sp, #104]	; 0x68
d005596c:	4654      	mov	r4, sl
d005596e:	2205      	movs	r2, #5
d0055970:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055974:	4851      	ldr	r0, [pc, #324]	; (d0055abc <_svfiprintf_r+0x1ec>)
d0055976:	f000 fc9b 	bl	d00562b0 <memchr>
d005597a:	9a04      	ldr	r2, [sp, #16]
d005597c:	b9d8      	cbnz	r0, d00559b6 <_svfiprintf_r+0xe6>
d005597e:	06d0      	lsls	r0, r2, #27
d0055980:	bf44      	itt	mi
d0055982:	2320      	movmi	r3, #32
d0055984:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055988:	0711      	lsls	r1, r2, #28
d005598a:	bf44      	itt	mi
d005598c:	232b      	movmi	r3, #43	; 0x2b
d005598e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055992:	f89a 3000 	ldrb.w	r3, [sl]
d0055996:	2b2a      	cmp	r3, #42	; 0x2a
d0055998:	d015      	beq.n	d00559c6 <_svfiprintf_r+0xf6>
d005599a:	9a07      	ldr	r2, [sp, #28]
d005599c:	4654      	mov	r4, sl
d005599e:	2000      	movs	r0, #0
d00559a0:	f04f 0c0a 	mov.w	ip, #10
d00559a4:	4621      	mov	r1, r4
d00559a6:	f811 3b01 	ldrb.w	r3, [r1], #1
d00559aa:	3b30      	subs	r3, #48	; 0x30
d00559ac:	2b09      	cmp	r3, #9
d00559ae:	d94e      	bls.n	d0055a4e <_svfiprintf_r+0x17e>
d00559b0:	b1b0      	cbz	r0, d00559e0 <_svfiprintf_r+0x110>
d00559b2:	9207      	str	r2, [sp, #28]
d00559b4:	e014      	b.n	d00559e0 <_svfiprintf_r+0x110>
d00559b6:	eba0 0308 	sub.w	r3, r0, r8
d00559ba:	fa09 f303 	lsl.w	r3, r9, r3
d00559be:	4313      	orrs	r3, r2
d00559c0:	9304      	str	r3, [sp, #16]
d00559c2:	46a2      	mov	sl, r4
d00559c4:	e7d2      	b.n	d005596c <_svfiprintf_r+0x9c>
d00559c6:	9b03      	ldr	r3, [sp, #12]
d00559c8:	1d19      	adds	r1, r3, #4
d00559ca:	681b      	ldr	r3, [r3, #0]
d00559cc:	9103      	str	r1, [sp, #12]
d00559ce:	2b00      	cmp	r3, #0
d00559d0:	bfbb      	ittet	lt
d00559d2:	425b      	neglt	r3, r3
d00559d4:	f042 0202 	orrlt.w	r2, r2, #2
d00559d8:	9307      	strge	r3, [sp, #28]
d00559da:	9307      	strlt	r3, [sp, #28]
d00559dc:	bfb8      	it	lt
d00559de:	9204      	strlt	r2, [sp, #16]
d00559e0:	7823      	ldrb	r3, [r4, #0]
d00559e2:	2b2e      	cmp	r3, #46	; 0x2e
d00559e4:	d10c      	bne.n	d0055a00 <_svfiprintf_r+0x130>
d00559e6:	7863      	ldrb	r3, [r4, #1]
d00559e8:	2b2a      	cmp	r3, #42	; 0x2a
d00559ea:	d135      	bne.n	d0055a58 <_svfiprintf_r+0x188>
d00559ec:	9b03      	ldr	r3, [sp, #12]
d00559ee:	1d1a      	adds	r2, r3, #4
d00559f0:	681b      	ldr	r3, [r3, #0]
d00559f2:	9203      	str	r2, [sp, #12]
d00559f4:	2b00      	cmp	r3, #0
d00559f6:	bfb8      	it	lt
d00559f8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d00559fc:	3402      	adds	r4, #2
d00559fe:	9305      	str	r3, [sp, #20]
d0055a00:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0055acc <_svfiprintf_r+0x1fc>
d0055a04:	7821      	ldrb	r1, [r4, #0]
d0055a06:	2203      	movs	r2, #3
d0055a08:	4650      	mov	r0, sl
d0055a0a:	f000 fc51 	bl	d00562b0 <memchr>
d0055a0e:	b140      	cbz	r0, d0055a22 <_svfiprintf_r+0x152>
d0055a10:	2340      	movs	r3, #64	; 0x40
d0055a12:	eba0 000a 	sub.w	r0, r0, sl
d0055a16:	fa03 f000 	lsl.w	r0, r3, r0
d0055a1a:	9b04      	ldr	r3, [sp, #16]
d0055a1c:	4303      	orrs	r3, r0
d0055a1e:	3401      	adds	r4, #1
d0055a20:	9304      	str	r3, [sp, #16]
d0055a22:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055a26:	4826      	ldr	r0, [pc, #152]	; (d0055ac0 <_svfiprintf_r+0x1f0>)
d0055a28:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0055a2c:	2206      	movs	r2, #6
d0055a2e:	f000 fc3f 	bl	d00562b0 <memchr>
d0055a32:	2800      	cmp	r0, #0
d0055a34:	d038      	beq.n	d0055aa8 <_svfiprintf_r+0x1d8>
d0055a36:	4b23      	ldr	r3, [pc, #140]	; (d0055ac4 <_svfiprintf_r+0x1f4>)
d0055a38:	bb1b      	cbnz	r3, d0055a82 <_svfiprintf_r+0x1b2>
d0055a3a:	9b03      	ldr	r3, [sp, #12]
d0055a3c:	3307      	adds	r3, #7
d0055a3e:	f023 0307 	bic.w	r3, r3, #7
d0055a42:	3308      	adds	r3, #8
d0055a44:	9303      	str	r3, [sp, #12]
d0055a46:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0055a48:	4433      	add	r3, r6
d0055a4a:	9309      	str	r3, [sp, #36]	; 0x24
d0055a4c:	e767      	b.n	d005591e <_svfiprintf_r+0x4e>
d0055a4e:	fb0c 3202 	mla	r2, ip, r2, r3
d0055a52:	460c      	mov	r4, r1
d0055a54:	2001      	movs	r0, #1
d0055a56:	e7a5      	b.n	d00559a4 <_svfiprintf_r+0xd4>
d0055a58:	2300      	movs	r3, #0
d0055a5a:	3401      	adds	r4, #1
d0055a5c:	9305      	str	r3, [sp, #20]
d0055a5e:	4619      	mov	r1, r3
d0055a60:	f04f 0c0a 	mov.w	ip, #10
d0055a64:	4620      	mov	r0, r4
d0055a66:	f810 2b01 	ldrb.w	r2, [r0], #1
d0055a6a:	3a30      	subs	r2, #48	; 0x30
d0055a6c:	2a09      	cmp	r2, #9
d0055a6e:	d903      	bls.n	d0055a78 <_svfiprintf_r+0x1a8>
d0055a70:	2b00      	cmp	r3, #0
d0055a72:	d0c5      	beq.n	d0055a00 <_svfiprintf_r+0x130>
d0055a74:	9105      	str	r1, [sp, #20]
d0055a76:	e7c3      	b.n	d0055a00 <_svfiprintf_r+0x130>
d0055a78:	fb0c 2101 	mla	r1, ip, r1, r2
d0055a7c:	4604      	mov	r4, r0
d0055a7e:	2301      	movs	r3, #1
d0055a80:	e7f0      	b.n	d0055a64 <_svfiprintf_r+0x194>
d0055a82:	ab03      	add	r3, sp, #12
d0055a84:	9300      	str	r3, [sp, #0]
d0055a86:	462a      	mov	r2, r5
d0055a88:	4b0f      	ldr	r3, [pc, #60]	; (d0055ac8 <_svfiprintf_r+0x1f8>)
d0055a8a:	a904      	add	r1, sp, #16
d0055a8c:	4638      	mov	r0, r7
d0055a8e:	f3af 8000 	nop.w
d0055a92:	1c42      	adds	r2, r0, #1
d0055a94:	4606      	mov	r6, r0
d0055a96:	d1d6      	bne.n	d0055a46 <_svfiprintf_r+0x176>
d0055a98:	89ab      	ldrh	r3, [r5, #12]
d0055a9a:	065b      	lsls	r3, r3, #25
d0055a9c:	f53f af2c 	bmi.w	d00558f8 <_svfiprintf_r+0x28>
d0055aa0:	9809      	ldr	r0, [sp, #36]	; 0x24
d0055aa2:	b01d      	add	sp, #116	; 0x74
d0055aa4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055aa8:	ab03      	add	r3, sp, #12
d0055aaa:	9300      	str	r3, [sp, #0]
d0055aac:	462a      	mov	r2, r5
d0055aae:	4b06      	ldr	r3, [pc, #24]	; (d0055ac8 <_svfiprintf_r+0x1f8>)
d0055ab0:	a904      	add	r1, sp, #16
d0055ab2:	4638      	mov	r0, r7
d0055ab4:	f000 f9d4 	bl	d0055e60 <_printf_i>
d0055ab8:	e7eb      	b.n	d0055a92 <_svfiprintf_r+0x1c2>
d0055aba:	bf00      	nop
d0055abc:	d005773e 	.word	0xd005773e
d0055ac0:	d0057748 	.word	0xd0057748
d0055ac4:	00000000 	.word	0x00000000
d0055ac8:	d0055819 	.word	0xd0055819
d0055acc:	d0057744 	.word	0xd0057744

d0055ad0 <__sfputc_r>:
d0055ad0:	6893      	ldr	r3, [r2, #8]
d0055ad2:	3b01      	subs	r3, #1
d0055ad4:	2b00      	cmp	r3, #0
d0055ad6:	b410      	push	{r4}
d0055ad8:	6093      	str	r3, [r2, #8]
d0055ada:	da08      	bge.n	d0055aee <__sfputc_r+0x1e>
d0055adc:	6994      	ldr	r4, [r2, #24]
d0055ade:	42a3      	cmp	r3, r4
d0055ae0:	db01      	blt.n	d0055ae6 <__sfputc_r+0x16>
d0055ae2:	290a      	cmp	r1, #10
d0055ae4:	d103      	bne.n	d0055aee <__sfputc_r+0x1e>
d0055ae6:	f85d 4b04 	ldr.w	r4, [sp], #4
d0055aea:	f000 baf1 	b.w	d00560d0 <__swbuf_r>
d0055aee:	6813      	ldr	r3, [r2, #0]
d0055af0:	1c58      	adds	r0, r3, #1
d0055af2:	6010      	str	r0, [r2, #0]
d0055af4:	7019      	strb	r1, [r3, #0]
d0055af6:	4608      	mov	r0, r1
d0055af8:	f85d 4b04 	ldr.w	r4, [sp], #4
d0055afc:	4770      	bx	lr

d0055afe <__sfputs_r>:
d0055afe:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055b00:	4606      	mov	r6, r0
d0055b02:	460f      	mov	r7, r1
d0055b04:	4614      	mov	r4, r2
d0055b06:	18d5      	adds	r5, r2, r3
d0055b08:	42ac      	cmp	r4, r5
d0055b0a:	d101      	bne.n	d0055b10 <__sfputs_r+0x12>
d0055b0c:	2000      	movs	r0, #0
d0055b0e:	e007      	b.n	d0055b20 <__sfputs_r+0x22>
d0055b10:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055b14:	463a      	mov	r2, r7
d0055b16:	4630      	mov	r0, r6
d0055b18:	f7ff ffda 	bl	d0055ad0 <__sfputc_r>
d0055b1c:	1c43      	adds	r3, r0, #1
d0055b1e:	d1f3      	bne.n	d0055b08 <__sfputs_r+0xa>
d0055b20:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0055b24 <_vfiprintf_r>:
d0055b24:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055b28:	460d      	mov	r5, r1
d0055b2a:	b09d      	sub	sp, #116	; 0x74
d0055b2c:	4614      	mov	r4, r2
d0055b2e:	4698      	mov	r8, r3
d0055b30:	4606      	mov	r6, r0
d0055b32:	b118      	cbz	r0, d0055b3c <_vfiprintf_r+0x18>
d0055b34:	6983      	ldr	r3, [r0, #24]
d0055b36:	b90b      	cbnz	r3, d0055b3c <_vfiprintf_r+0x18>
d0055b38:	f7ff fa94 	bl	d0055064 <__sinit>
d0055b3c:	4b89      	ldr	r3, [pc, #548]	; (d0055d64 <_vfiprintf_r+0x240>)
d0055b3e:	429d      	cmp	r5, r3
d0055b40:	d11b      	bne.n	d0055b7a <_vfiprintf_r+0x56>
d0055b42:	6875      	ldr	r5, [r6, #4]
d0055b44:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0055b46:	07d9      	lsls	r1, r3, #31
d0055b48:	d405      	bmi.n	d0055b56 <_vfiprintf_r+0x32>
d0055b4a:	89ab      	ldrh	r3, [r5, #12]
d0055b4c:	059a      	lsls	r2, r3, #22
d0055b4e:	d402      	bmi.n	d0055b56 <_vfiprintf_r+0x32>
d0055b50:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0055b52:	f7ff fb26 	bl	d00551a2 <__retarget_lock_acquire_recursive>
d0055b56:	89ab      	ldrh	r3, [r5, #12]
d0055b58:	071b      	lsls	r3, r3, #28
d0055b5a:	d501      	bpl.n	d0055b60 <_vfiprintf_r+0x3c>
d0055b5c:	692b      	ldr	r3, [r5, #16]
d0055b5e:	b9eb      	cbnz	r3, d0055b9c <_vfiprintf_r+0x78>
d0055b60:	4629      	mov	r1, r5
d0055b62:	4630      	mov	r0, r6
d0055b64:	f000 fb06 	bl	d0056174 <__swsetup_r>
d0055b68:	b1c0      	cbz	r0, d0055b9c <_vfiprintf_r+0x78>
d0055b6a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0055b6c:	07dc      	lsls	r4, r3, #31
d0055b6e:	d50e      	bpl.n	d0055b8e <_vfiprintf_r+0x6a>
d0055b70:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055b74:	b01d      	add	sp, #116	; 0x74
d0055b76:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055b7a:	4b7b      	ldr	r3, [pc, #492]	; (d0055d68 <_vfiprintf_r+0x244>)
d0055b7c:	429d      	cmp	r5, r3
d0055b7e:	d101      	bne.n	d0055b84 <_vfiprintf_r+0x60>
d0055b80:	68b5      	ldr	r5, [r6, #8]
d0055b82:	e7df      	b.n	d0055b44 <_vfiprintf_r+0x20>
d0055b84:	4b79      	ldr	r3, [pc, #484]	; (d0055d6c <_vfiprintf_r+0x248>)
d0055b86:	429d      	cmp	r5, r3
d0055b88:	bf08      	it	eq
d0055b8a:	68f5      	ldreq	r5, [r6, #12]
d0055b8c:	e7da      	b.n	d0055b44 <_vfiprintf_r+0x20>
d0055b8e:	89ab      	ldrh	r3, [r5, #12]
d0055b90:	0598      	lsls	r0, r3, #22
d0055b92:	d4ed      	bmi.n	d0055b70 <_vfiprintf_r+0x4c>
d0055b94:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0055b96:	f7ff fb05 	bl	d00551a4 <__retarget_lock_release_recursive>
d0055b9a:	e7e9      	b.n	d0055b70 <_vfiprintf_r+0x4c>
d0055b9c:	2300      	movs	r3, #0
d0055b9e:	9309      	str	r3, [sp, #36]	; 0x24
d0055ba0:	2320      	movs	r3, #32
d0055ba2:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0055ba6:	f8cd 800c 	str.w	r8, [sp, #12]
d0055baa:	2330      	movs	r3, #48	; 0x30
d0055bac:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d0055d70 <_vfiprintf_r+0x24c>
d0055bb0:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0055bb4:	f04f 0901 	mov.w	r9, #1
d0055bb8:	4623      	mov	r3, r4
d0055bba:	469a      	mov	sl, r3
d0055bbc:	f813 2b01 	ldrb.w	r2, [r3], #1
d0055bc0:	b10a      	cbz	r2, d0055bc6 <_vfiprintf_r+0xa2>
d0055bc2:	2a25      	cmp	r2, #37	; 0x25
d0055bc4:	d1f9      	bne.n	d0055bba <_vfiprintf_r+0x96>
d0055bc6:	ebba 0b04 	subs.w	fp, sl, r4
d0055bca:	d00b      	beq.n	d0055be4 <_vfiprintf_r+0xc0>
d0055bcc:	465b      	mov	r3, fp
d0055bce:	4622      	mov	r2, r4
d0055bd0:	4629      	mov	r1, r5
d0055bd2:	4630      	mov	r0, r6
d0055bd4:	f7ff ff93 	bl	d0055afe <__sfputs_r>
d0055bd8:	3001      	adds	r0, #1
d0055bda:	f000 80aa 	beq.w	d0055d32 <_vfiprintf_r+0x20e>
d0055bde:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0055be0:	445a      	add	r2, fp
d0055be2:	9209      	str	r2, [sp, #36]	; 0x24
d0055be4:	f89a 3000 	ldrb.w	r3, [sl]
d0055be8:	2b00      	cmp	r3, #0
d0055bea:	f000 80a2 	beq.w	d0055d32 <_vfiprintf_r+0x20e>
d0055bee:	2300      	movs	r3, #0
d0055bf0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0055bf4:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0055bf8:	f10a 0a01 	add.w	sl, sl, #1
d0055bfc:	9304      	str	r3, [sp, #16]
d0055bfe:	9307      	str	r3, [sp, #28]
d0055c00:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0055c04:	931a      	str	r3, [sp, #104]	; 0x68
d0055c06:	4654      	mov	r4, sl
d0055c08:	2205      	movs	r2, #5
d0055c0a:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055c0e:	4858      	ldr	r0, [pc, #352]	; (d0055d70 <_vfiprintf_r+0x24c>)
d0055c10:	f000 fb4e 	bl	d00562b0 <memchr>
d0055c14:	9a04      	ldr	r2, [sp, #16]
d0055c16:	b9d8      	cbnz	r0, d0055c50 <_vfiprintf_r+0x12c>
d0055c18:	06d1      	lsls	r1, r2, #27
d0055c1a:	bf44      	itt	mi
d0055c1c:	2320      	movmi	r3, #32
d0055c1e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055c22:	0713      	lsls	r3, r2, #28
d0055c24:	bf44      	itt	mi
d0055c26:	232b      	movmi	r3, #43	; 0x2b
d0055c28:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055c2c:	f89a 3000 	ldrb.w	r3, [sl]
d0055c30:	2b2a      	cmp	r3, #42	; 0x2a
d0055c32:	d015      	beq.n	d0055c60 <_vfiprintf_r+0x13c>
d0055c34:	9a07      	ldr	r2, [sp, #28]
d0055c36:	4654      	mov	r4, sl
d0055c38:	2000      	movs	r0, #0
d0055c3a:	f04f 0c0a 	mov.w	ip, #10
d0055c3e:	4621      	mov	r1, r4
d0055c40:	f811 3b01 	ldrb.w	r3, [r1], #1
d0055c44:	3b30      	subs	r3, #48	; 0x30
d0055c46:	2b09      	cmp	r3, #9
d0055c48:	d94e      	bls.n	d0055ce8 <_vfiprintf_r+0x1c4>
d0055c4a:	b1b0      	cbz	r0, d0055c7a <_vfiprintf_r+0x156>
d0055c4c:	9207      	str	r2, [sp, #28]
d0055c4e:	e014      	b.n	d0055c7a <_vfiprintf_r+0x156>
d0055c50:	eba0 0308 	sub.w	r3, r0, r8
d0055c54:	fa09 f303 	lsl.w	r3, r9, r3
d0055c58:	4313      	orrs	r3, r2
d0055c5a:	9304      	str	r3, [sp, #16]
d0055c5c:	46a2      	mov	sl, r4
d0055c5e:	e7d2      	b.n	d0055c06 <_vfiprintf_r+0xe2>
d0055c60:	9b03      	ldr	r3, [sp, #12]
d0055c62:	1d19      	adds	r1, r3, #4
d0055c64:	681b      	ldr	r3, [r3, #0]
d0055c66:	9103      	str	r1, [sp, #12]
d0055c68:	2b00      	cmp	r3, #0
d0055c6a:	bfbb      	ittet	lt
d0055c6c:	425b      	neglt	r3, r3
d0055c6e:	f042 0202 	orrlt.w	r2, r2, #2
d0055c72:	9307      	strge	r3, [sp, #28]
d0055c74:	9307      	strlt	r3, [sp, #28]
d0055c76:	bfb8      	it	lt
d0055c78:	9204      	strlt	r2, [sp, #16]
d0055c7a:	7823      	ldrb	r3, [r4, #0]
d0055c7c:	2b2e      	cmp	r3, #46	; 0x2e
d0055c7e:	d10c      	bne.n	d0055c9a <_vfiprintf_r+0x176>
d0055c80:	7863      	ldrb	r3, [r4, #1]
d0055c82:	2b2a      	cmp	r3, #42	; 0x2a
d0055c84:	d135      	bne.n	d0055cf2 <_vfiprintf_r+0x1ce>
d0055c86:	9b03      	ldr	r3, [sp, #12]
d0055c88:	1d1a      	adds	r2, r3, #4
d0055c8a:	681b      	ldr	r3, [r3, #0]
d0055c8c:	9203      	str	r2, [sp, #12]
d0055c8e:	2b00      	cmp	r3, #0
d0055c90:	bfb8      	it	lt
d0055c92:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0055c96:	3402      	adds	r4, #2
d0055c98:	9305      	str	r3, [sp, #20]
d0055c9a:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d0055d80 <_vfiprintf_r+0x25c>
d0055c9e:	7821      	ldrb	r1, [r4, #0]
d0055ca0:	2203      	movs	r2, #3
d0055ca2:	4650      	mov	r0, sl
d0055ca4:	f000 fb04 	bl	d00562b0 <memchr>
d0055ca8:	b140      	cbz	r0, d0055cbc <_vfiprintf_r+0x198>
d0055caa:	2340      	movs	r3, #64	; 0x40
d0055cac:	eba0 000a 	sub.w	r0, r0, sl
d0055cb0:	fa03 f000 	lsl.w	r0, r3, r0
d0055cb4:	9b04      	ldr	r3, [sp, #16]
d0055cb6:	4303      	orrs	r3, r0
d0055cb8:	3401      	adds	r4, #1
d0055cba:	9304      	str	r3, [sp, #16]
d0055cbc:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055cc0:	482c      	ldr	r0, [pc, #176]	; (d0055d74 <_vfiprintf_r+0x250>)
d0055cc2:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0055cc6:	2206      	movs	r2, #6
d0055cc8:	f000 faf2 	bl	d00562b0 <memchr>
d0055ccc:	2800      	cmp	r0, #0
d0055cce:	d03f      	beq.n	d0055d50 <_vfiprintf_r+0x22c>
d0055cd0:	4b29      	ldr	r3, [pc, #164]	; (d0055d78 <_vfiprintf_r+0x254>)
d0055cd2:	bb1b      	cbnz	r3, d0055d1c <_vfiprintf_r+0x1f8>
d0055cd4:	9b03      	ldr	r3, [sp, #12]
d0055cd6:	3307      	adds	r3, #7
d0055cd8:	f023 0307 	bic.w	r3, r3, #7
d0055cdc:	3308      	adds	r3, #8
d0055cde:	9303      	str	r3, [sp, #12]
d0055ce0:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0055ce2:	443b      	add	r3, r7
d0055ce4:	9309      	str	r3, [sp, #36]	; 0x24
d0055ce6:	e767      	b.n	d0055bb8 <_vfiprintf_r+0x94>
d0055ce8:	fb0c 3202 	mla	r2, ip, r2, r3
d0055cec:	460c      	mov	r4, r1
d0055cee:	2001      	movs	r0, #1
d0055cf0:	e7a5      	b.n	d0055c3e <_vfiprintf_r+0x11a>
d0055cf2:	2300      	movs	r3, #0
d0055cf4:	3401      	adds	r4, #1
d0055cf6:	9305      	str	r3, [sp, #20]
d0055cf8:	4619      	mov	r1, r3
d0055cfa:	f04f 0c0a 	mov.w	ip, #10
d0055cfe:	4620      	mov	r0, r4
d0055d00:	f810 2b01 	ldrb.w	r2, [r0], #1
d0055d04:	3a30      	subs	r2, #48	; 0x30
d0055d06:	2a09      	cmp	r2, #9
d0055d08:	d903      	bls.n	d0055d12 <_vfiprintf_r+0x1ee>
d0055d0a:	2b00      	cmp	r3, #0
d0055d0c:	d0c5      	beq.n	d0055c9a <_vfiprintf_r+0x176>
d0055d0e:	9105      	str	r1, [sp, #20]
d0055d10:	e7c3      	b.n	d0055c9a <_vfiprintf_r+0x176>
d0055d12:	fb0c 2101 	mla	r1, ip, r1, r2
d0055d16:	4604      	mov	r4, r0
d0055d18:	2301      	movs	r3, #1
d0055d1a:	e7f0      	b.n	d0055cfe <_vfiprintf_r+0x1da>
d0055d1c:	ab03      	add	r3, sp, #12
d0055d1e:	9300      	str	r3, [sp, #0]
d0055d20:	462a      	mov	r2, r5
d0055d22:	4b16      	ldr	r3, [pc, #88]	; (d0055d7c <_vfiprintf_r+0x258>)
d0055d24:	a904      	add	r1, sp, #16
d0055d26:	4630      	mov	r0, r6
d0055d28:	f3af 8000 	nop.w
d0055d2c:	4607      	mov	r7, r0
d0055d2e:	1c78      	adds	r0, r7, #1
d0055d30:	d1d6      	bne.n	d0055ce0 <_vfiprintf_r+0x1bc>
d0055d32:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0055d34:	07d9      	lsls	r1, r3, #31
d0055d36:	d405      	bmi.n	d0055d44 <_vfiprintf_r+0x220>
d0055d38:	89ab      	ldrh	r3, [r5, #12]
d0055d3a:	059a      	lsls	r2, r3, #22
d0055d3c:	d402      	bmi.n	d0055d44 <_vfiprintf_r+0x220>
d0055d3e:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0055d40:	f7ff fa30 	bl	d00551a4 <__retarget_lock_release_recursive>
d0055d44:	89ab      	ldrh	r3, [r5, #12]
d0055d46:	065b      	lsls	r3, r3, #25
d0055d48:	f53f af12 	bmi.w	d0055b70 <_vfiprintf_r+0x4c>
d0055d4c:	9809      	ldr	r0, [sp, #36]	; 0x24
d0055d4e:	e711      	b.n	d0055b74 <_vfiprintf_r+0x50>
d0055d50:	ab03      	add	r3, sp, #12
d0055d52:	9300      	str	r3, [sp, #0]
d0055d54:	462a      	mov	r2, r5
d0055d56:	4b09      	ldr	r3, [pc, #36]	; (d0055d7c <_vfiprintf_r+0x258>)
d0055d58:	a904      	add	r1, sp, #16
d0055d5a:	4630      	mov	r0, r6
d0055d5c:	f000 f880 	bl	d0055e60 <_printf_i>
d0055d60:	e7e4      	b.n	d0055d2c <_vfiprintf_r+0x208>
d0055d62:	bf00      	nop
d0055d64:	d0057648 	.word	0xd0057648
d0055d68:	d0057668 	.word	0xd0057668
d0055d6c:	d0057628 	.word	0xd0057628
d0055d70:	d005773e 	.word	0xd005773e
d0055d74:	d0057748 	.word	0xd0057748
d0055d78:	00000000 	.word	0x00000000
d0055d7c:	d0055aff 	.word	0xd0055aff
d0055d80:	d0057744 	.word	0xd0057744

d0055d84 <_printf_common>:
d0055d84:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0055d88:	4616      	mov	r6, r2
d0055d8a:	4699      	mov	r9, r3
d0055d8c:	688a      	ldr	r2, [r1, #8]
d0055d8e:	690b      	ldr	r3, [r1, #16]
d0055d90:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0055d94:	4293      	cmp	r3, r2
d0055d96:	bfb8      	it	lt
d0055d98:	4613      	movlt	r3, r2
d0055d9a:	6033      	str	r3, [r6, #0]
d0055d9c:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0055da0:	4607      	mov	r7, r0
d0055da2:	460c      	mov	r4, r1
d0055da4:	b10a      	cbz	r2, d0055daa <_printf_common+0x26>
d0055da6:	3301      	adds	r3, #1
d0055da8:	6033      	str	r3, [r6, #0]
d0055daa:	6823      	ldr	r3, [r4, #0]
d0055dac:	0699      	lsls	r1, r3, #26
d0055dae:	bf42      	ittt	mi
d0055db0:	6833      	ldrmi	r3, [r6, #0]
d0055db2:	3302      	addmi	r3, #2
d0055db4:	6033      	strmi	r3, [r6, #0]
d0055db6:	6825      	ldr	r5, [r4, #0]
d0055db8:	f015 0506 	ands.w	r5, r5, #6
d0055dbc:	d106      	bne.n	d0055dcc <_printf_common+0x48>
d0055dbe:	f104 0a19 	add.w	sl, r4, #25
d0055dc2:	68e3      	ldr	r3, [r4, #12]
d0055dc4:	6832      	ldr	r2, [r6, #0]
d0055dc6:	1a9b      	subs	r3, r3, r2
d0055dc8:	42ab      	cmp	r3, r5
d0055dca:	dc26      	bgt.n	d0055e1a <_printf_common+0x96>
d0055dcc:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0055dd0:	1e13      	subs	r3, r2, #0
d0055dd2:	6822      	ldr	r2, [r4, #0]
d0055dd4:	bf18      	it	ne
d0055dd6:	2301      	movne	r3, #1
d0055dd8:	0692      	lsls	r2, r2, #26
d0055dda:	d42b      	bmi.n	d0055e34 <_printf_common+0xb0>
d0055ddc:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0055de0:	4649      	mov	r1, r9
d0055de2:	4638      	mov	r0, r7
d0055de4:	47c0      	blx	r8
d0055de6:	3001      	adds	r0, #1
d0055de8:	d01e      	beq.n	d0055e28 <_printf_common+0xa4>
d0055dea:	6823      	ldr	r3, [r4, #0]
d0055dec:	68e5      	ldr	r5, [r4, #12]
d0055dee:	6832      	ldr	r2, [r6, #0]
d0055df0:	f003 0306 	and.w	r3, r3, #6
d0055df4:	2b04      	cmp	r3, #4
d0055df6:	bf08      	it	eq
d0055df8:	1aad      	subeq	r5, r5, r2
d0055dfa:	68a3      	ldr	r3, [r4, #8]
d0055dfc:	6922      	ldr	r2, [r4, #16]
d0055dfe:	bf0c      	ite	eq
d0055e00:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0055e04:	2500      	movne	r5, #0
d0055e06:	4293      	cmp	r3, r2
d0055e08:	bfc4      	itt	gt
d0055e0a:	1a9b      	subgt	r3, r3, r2
d0055e0c:	18ed      	addgt	r5, r5, r3
d0055e0e:	2600      	movs	r6, #0
d0055e10:	341a      	adds	r4, #26
d0055e12:	42b5      	cmp	r5, r6
d0055e14:	d11a      	bne.n	d0055e4c <_printf_common+0xc8>
d0055e16:	2000      	movs	r0, #0
d0055e18:	e008      	b.n	d0055e2c <_printf_common+0xa8>
d0055e1a:	2301      	movs	r3, #1
d0055e1c:	4652      	mov	r2, sl
d0055e1e:	4649      	mov	r1, r9
d0055e20:	4638      	mov	r0, r7
d0055e22:	47c0      	blx	r8
d0055e24:	3001      	adds	r0, #1
d0055e26:	d103      	bne.n	d0055e30 <_printf_common+0xac>
d0055e28:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055e2c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0055e30:	3501      	adds	r5, #1
d0055e32:	e7c6      	b.n	d0055dc2 <_printf_common+0x3e>
d0055e34:	18e1      	adds	r1, r4, r3
d0055e36:	1c5a      	adds	r2, r3, #1
d0055e38:	2030      	movs	r0, #48	; 0x30
d0055e3a:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0055e3e:	4422      	add	r2, r4
d0055e40:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0055e44:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0055e48:	3302      	adds	r3, #2
d0055e4a:	e7c7      	b.n	d0055ddc <_printf_common+0x58>
d0055e4c:	2301      	movs	r3, #1
d0055e4e:	4622      	mov	r2, r4
d0055e50:	4649      	mov	r1, r9
d0055e52:	4638      	mov	r0, r7
d0055e54:	47c0      	blx	r8
d0055e56:	3001      	adds	r0, #1
d0055e58:	d0e6      	beq.n	d0055e28 <_printf_common+0xa4>
d0055e5a:	3601      	adds	r6, #1
d0055e5c:	e7d9      	b.n	d0055e12 <_printf_common+0x8e>
	...

d0055e60 <_printf_i>:
d0055e60:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0055e64:	460c      	mov	r4, r1
d0055e66:	4691      	mov	r9, r2
d0055e68:	7e27      	ldrb	r7, [r4, #24]
d0055e6a:	990c      	ldr	r1, [sp, #48]	; 0x30
d0055e6c:	2f78      	cmp	r7, #120	; 0x78
d0055e6e:	4680      	mov	r8, r0
d0055e70:	469a      	mov	sl, r3
d0055e72:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0055e76:	d807      	bhi.n	d0055e88 <_printf_i+0x28>
d0055e78:	2f62      	cmp	r7, #98	; 0x62
d0055e7a:	d80a      	bhi.n	d0055e92 <_printf_i+0x32>
d0055e7c:	2f00      	cmp	r7, #0
d0055e7e:	f000 80d8 	beq.w	d0056032 <_printf_i+0x1d2>
d0055e82:	2f58      	cmp	r7, #88	; 0x58
d0055e84:	f000 80a3 	beq.w	d0055fce <_printf_i+0x16e>
d0055e88:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0055e8c:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0055e90:	e03a      	b.n	d0055f08 <_printf_i+0xa8>
d0055e92:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0055e96:	2b15      	cmp	r3, #21
d0055e98:	d8f6      	bhi.n	d0055e88 <_printf_i+0x28>
d0055e9a:	a001      	add	r0, pc, #4	; (adr r0, d0055ea0 <_printf_i+0x40>)
d0055e9c:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0055ea0:	d0055ef9 	.word	0xd0055ef9
d0055ea4:	d0055f0d 	.word	0xd0055f0d
d0055ea8:	d0055e89 	.word	0xd0055e89
d0055eac:	d0055e89 	.word	0xd0055e89
d0055eb0:	d0055e89 	.word	0xd0055e89
d0055eb4:	d0055e89 	.word	0xd0055e89
d0055eb8:	d0055f0d 	.word	0xd0055f0d
d0055ebc:	d0055e89 	.word	0xd0055e89
d0055ec0:	d0055e89 	.word	0xd0055e89
d0055ec4:	d0055e89 	.word	0xd0055e89
d0055ec8:	d0055e89 	.word	0xd0055e89
d0055ecc:	d0056019 	.word	0xd0056019
d0055ed0:	d0055f3d 	.word	0xd0055f3d
d0055ed4:	d0055ffb 	.word	0xd0055ffb
d0055ed8:	d0055e89 	.word	0xd0055e89
d0055edc:	d0055e89 	.word	0xd0055e89
d0055ee0:	d005603b 	.word	0xd005603b
d0055ee4:	d0055e89 	.word	0xd0055e89
d0055ee8:	d0055f3d 	.word	0xd0055f3d
d0055eec:	d0055e89 	.word	0xd0055e89
d0055ef0:	d0055e89 	.word	0xd0055e89
d0055ef4:	d0056003 	.word	0xd0056003
d0055ef8:	680b      	ldr	r3, [r1, #0]
d0055efa:	1d1a      	adds	r2, r3, #4
d0055efc:	681b      	ldr	r3, [r3, #0]
d0055efe:	600a      	str	r2, [r1, #0]
d0055f00:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0055f04:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0055f08:	2301      	movs	r3, #1
d0055f0a:	e0a3      	b.n	d0056054 <_printf_i+0x1f4>
d0055f0c:	6825      	ldr	r5, [r4, #0]
d0055f0e:	6808      	ldr	r0, [r1, #0]
d0055f10:	062e      	lsls	r6, r5, #24
d0055f12:	f100 0304 	add.w	r3, r0, #4
d0055f16:	d50a      	bpl.n	d0055f2e <_printf_i+0xce>
d0055f18:	6805      	ldr	r5, [r0, #0]
d0055f1a:	600b      	str	r3, [r1, #0]
d0055f1c:	2d00      	cmp	r5, #0
d0055f1e:	da03      	bge.n	d0055f28 <_printf_i+0xc8>
d0055f20:	232d      	movs	r3, #45	; 0x2d
d0055f22:	426d      	negs	r5, r5
d0055f24:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0055f28:	485e      	ldr	r0, [pc, #376]	; (d00560a4 <_printf_i+0x244>)
d0055f2a:	230a      	movs	r3, #10
d0055f2c:	e019      	b.n	d0055f62 <_printf_i+0x102>
d0055f2e:	f015 0f40 	tst.w	r5, #64	; 0x40
d0055f32:	6805      	ldr	r5, [r0, #0]
d0055f34:	600b      	str	r3, [r1, #0]
d0055f36:	bf18      	it	ne
d0055f38:	b22d      	sxthne	r5, r5
d0055f3a:	e7ef      	b.n	d0055f1c <_printf_i+0xbc>
d0055f3c:	680b      	ldr	r3, [r1, #0]
d0055f3e:	6825      	ldr	r5, [r4, #0]
d0055f40:	1d18      	adds	r0, r3, #4
d0055f42:	6008      	str	r0, [r1, #0]
d0055f44:	0628      	lsls	r0, r5, #24
d0055f46:	d501      	bpl.n	d0055f4c <_printf_i+0xec>
d0055f48:	681d      	ldr	r5, [r3, #0]
d0055f4a:	e002      	b.n	d0055f52 <_printf_i+0xf2>
d0055f4c:	0669      	lsls	r1, r5, #25
d0055f4e:	d5fb      	bpl.n	d0055f48 <_printf_i+0xe8>
d0055f50:	881d      	ldrh	r5, [r3, #0]
d0055f52:	4854      	ldr	r0, [pc, #336]	; (d00560a4 <_printf_i+0x244>)
d0055f54:	2f6f      	cmp	r7, #111	; 0x6f
d0055f56:	bf0c      	ite	eq
d0055f58:	2308      	moveq	r3, #8
d0055f5a:	230a      	movne	r3, #10
d0055f5c:	2100      	movs	r1, #0
d0055f5e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0055f62:	6866      	ldr	r6, [r4, #4]
d0055f64:	60a6      	str	r6, [r4, #8]
d0055f66:	2e00      	cmp	r6, #0
d0055f68:	bfa2      	ittt	ge
d0055f6a:	6821      	ldrge	r1, [r4, #0]
d0055f6c:	f021 0104 	bicge.w	r1, r1, #4
d0055f70:	6021      	strge	r1, [r4, #0]
d0055f72:	b90d      	cbnz	r5, d0055f78 <_printf_i+0x118>
d0055f74:	2e00      	cmp	r6, #0
d0055f76:	d04d      	beq.n	d0056014 <_printf_i+0x1b4>
d0055f78:	4616      	mov	r6, r2
d0055f7a:	fbb5 f1f3 	udiv	r1, r5, r3
d0055f7e:	fb03 5711 	mls	r7, r3, r1, r5
d0055f82:	5dc7      	ldrb	r7, [r0, r7]
d0055f84:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0055f88:	462f      	mov	r7, r5
d0055f8a:	42bb      	cmp	r3, r7
d0055f8c:	460d      	mov	r5, r1
d0055f8e:	d9f4      	bls.n	d0055f7a <_printf_i+0x11a>
d0055f90:	2b08      	cmp	r3, #8
d0055f92:	d10b      	bne.n	d0055fac <_printf_i+0x14c>
d0055f94:	6823      	ldr	r3, [r4, #0]
d0055f96:	07df      	lsls	r7, r3, #31
d0055f98:	d508      	bpl.n	d0055fac <_printf_i+0x14c>
d0055f9a:	6923      	ldr	r3, [r4, #16]
d0055f9c:	6861      	ldr	r1, [r4, #4]
d0055f9e:	4299      	cmp	r1, r3
d0055fa0:	bfde      	ittt	le
d0055fa2:	2330      	movle	r3, #48	; 0x30
d0055fa4:	f806 3c01 	strble.w	r3, [r6, #-1]
d0055fa8:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0055fac:	1b92      	subs	r2, r2, r6
d0055fae:	6122      	str	r2, [r4, #16]
d0055fb0:	f8cd a000 	str.w	sl, [sp]
d0055fb4:	464b      	mov	r3, r9
d0055fb6:	aa03      	add	r2, sp, #12
d0055fb8:	4621      	mov	r1, r4
d0055fba:	4640      	mov	r0, r8
d0055fbc:	f7ff fee2 	bl	d0055d84 <_printf_common>
d0055fc0:	3001      	adds	r0, #1
d0055fc2:	d14c      	bne.n	d005605e <_printf_i+0x1fe>
d0055fc4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055fc8:	b004      	add	sp, #16
d0055fca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0055fce:	4835      	ldr	r0, [pc, #212]	; (d00560a4 <_printf_i+0x244>)
d0055fd0:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0055fd4:	6823      	ldr	r3, [r4, #0]
d0055fd6:	680e      	ldr	r6, [r1, #0]
d0055fd8:	061f      	lsls	r7, r3, #24
d0055fda:	f856 5b04 	ldr.w	r5, [r6], #4
d0055fde:	600e      	str	r6, [r1, #0]
d0055fe0:	d514      	bpl.n	d005600c <_printf_i+0x1ac>
d0055fe2:	07d9      	lsls	r1, r3, #31
d0055fe4:	bf44      	itt	mi
d0055fe6:	f043 0320 	orrmi.w	r3, r3, #32
d0055fea:	6023      	strmi	r3, [r4, #0]
d0055fec:	b91d      	cbnz	r5, d0055ff6 <_printf_i+0x196>
d0055fee:	6823      	ldr	r3, [r4, #0]
d0055ff0:	f023 0320 	bic.w	r3, r3, #32
d0055ff4:	6023      	str	r3, [r4, #0]
d0055ff6:	2310      	movs	r3, #16
d0055ff8:	e7b0      	b.n	d0055f5c <_printf_i+0xfc>
d0055ffa:	6823      	ldr	r3, [r4, #0]
d0055ffc:	f043 0320 	orr.w	r3, r3, #32
d0056000:	6023      	str	r3, [r4, #0]
d0056002:	2378      	movs	r3, #120	; 0x78
d0056004:	4828      	ldr	r0, [pc, #160]	; (d00560a8 <_printf_i+0x248>)
d0056006:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d005600a:	e7e3      	b.n	d0055fd4 <_printf_i+0x174>
d005600c:	065e      	lsls	r6, r3, #25
d005600e:	bf48      	it	mi
d0056010:	b2ad      	uxthmi	r5, r5
d0056012:	e7e6      	b.n	d0055fe2 <_printf_i+0x182>
d0056014:	4616      	mov	r6, r2
d0056016:	e7bb      	b.n	d0055f90 <_printf_i+0x130>
d0056018:	680b      	ldr	r3, [r1, #0]
d005601a:	6826      	ldr	r6, [r4, #0]
d005601c:	6960      	ldr	r0, [r4, #20]
d005601e:	1d1d      	adds	r5, r3, #4
d0056020:	600d      	str	r5, [r1, #0]
d0056022:	0635      	lsls	r5, r6, #24
d0056024:	681b      	ldr	r3, [r3, #0]
d0056026:	d501      	bpl.n	d005602c <_printf_i+0x1cc>
d0056028:	6018      	str	r0, [r3, #0]
d005602a:	e002      	b.n	d0056032 <_printf_i+0x1d2>
d005602c:	0671      	lsls	r1, r6, #25
d005602e:	d5fb      	bpl.n	d0056028 <_printf_i+0x1c8>
d0056030:	8018      	strh	r0, [r3, #0]
d0056032:	2300      	movs	r3, #0
d0056034:	6123      	str	r3, [r4, #16]
d0056036:	4616      	mov	r6, r2
d0056038:	e7ba      	b.n	d0055fb0 <_printf_i+0x150>
d005603a:	680b      	ldr	r3, [r1, #0]
d005603c:	1d1a      	adds	r2, r3, #4
d005603e:	600a      	str	r2, [r1, #0]
d0056040:	681e      	ldr	r6, [r3, #0]
d0056042:	6862      	ldr	r2, [r4, #4]
d0056044:	2100      	movs	r1, #0
d0056046:	4630      	mov	r0, r6
d0056048:	f000 f932 	bl	d00562b0 <memchr>
d005604c:	b108      	cbz	r0, d0056052 <_printf_i+0x1f2>
d005604e:	1b80      	subs	r0, r0, r6
d0056050:	6060      	str	r0, [r4, #4]
d0056052:	6863      	ldr	r3, [r4, #4]
d0056054:	6123      	str	r3, [r4, #16]
d0056056:	2300      	movs	r3, #0
d0056058:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d005605c:	e7a8      	b.n	d0055fb0 <_printf_i+0x150>
d005605e:	6923      	ldr	r3, [r4, #16]
d0056060:	4632      	mov	r2, r6
d0056062:	4649      	mov	r1, r9
d0056064:	4640      	mov	r0, r8
d0056066:	47d0      	blx	sl
d0056068:	3001      	adds	r0, #1
d005606a:	d0ab      	beq.n	d0055fc4 <_printf_i+0x164>
d005606c:	6823      	ldr	r3, [r4, #0]
d005606e:	079b      	lsls	r3, r3, #30
d0056070:	d413      	bmi.n	d005609a <_printf_i+0x23a>
d0056072:	68e0      	ldr	r0, [r4, #12]
d0056074:	9b03      	ldr	r3, [sp, #12]
d0056076:	4298      	cmp	r0, r3
d0056078:	bfb8      	it	lt
d005607a:	4618      	movlt	r0, r3
d005607c:	e7a4      	b.n	d0055fc8 <_printf_i+0x168>
d005607e:	2301      	movs	r3, #1
d0056080:	4632      	mov	r2, r6
d0056082:	4649      	mov	r1, r9
d0056084:	4640      	mov	r0, r8
d0056086:	47d0      	blx	sl
d0056088:	3001      	adds	r0, #1
d005608a:	d09b      	beq.n	d0055fc4 <_printf_i+0x164>
d005608c:	3501      	adds	r5, #1
d005608e:	68e3      	ldr	r3, [r4, #12]
d0056090:	9903      	ldr	r1, [sp, #12]
d0056092:	1a5b      	subs	r3, r3, r1
d0056094:	42ab      	cmp	r3, r5
d0056096:	dcf2      	bgt.n	d005607e <_printf_i+0x21e>
d0056098:	e7eb      	b.n	d0056072 <_printf_i+0x212>
d005609a:	2500      	movs	r5, #0
d005609c:	f104 0619 	add.w	r6, r4, #25
d00560a0:	e7f5      	b.n	d005608e <_printf_i+0x22e>
d00560a2:	bf00      	nop
d00560a4:	d005774f 	.word	0xd005774f
d00560a8:	d0057760 	.word	0xd0057760

d00560ac <_read_r>:
d00560ac:	b538      	push	{r3, r4, r5, lr}
d00560ae:	4d07      	ldr	r5, [pc, #28]	; (d00560cc <_read_r+0x20>)
d00560b0:	4604      	mov	r4, r0
d00560b2:	4608      	mov	r0, r1
d00560b4:	4611      	mov	r1, r2
d00560b6:	2200      	movs	r2, #0
d00560b8:	602a      	str	r2, [r5, #0]
d00560ba:	461a      	mov	r2, r3
d00560bc:	f7f4 fffa 	bl	d004b0b4 <_read>
d00560c0:	1c43      	adds	r3, r0, #1
d00560c2:	d102      	bne.n	d00560ca <_read_r+0x1e>
d00560c4:	682b      	ldr	r3, [r5, #0]
d00560c6:	b103      	cbz	r3, d00560ca <_read_r+0x1e>
d00560c8:	6023      	str	r3, [r4, #0]
d00560ca:	bd38      	pop	{r3, r4, r5, pc}
d00560cc:	d00fc760 	.word	0xd00fc760

d00560d0 <__swbuf_r>:
d00560d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00560d2:	460e      	mov	r6, r1
d00560d4:	4614      	mov	r4, r2
d00560d6:	4605      	mov	r5, r0
d00560d8:	b118      	cbz	r0, d00560e2 <__swbuf_r+0x12>
d00560da:	6983      	ldr	r3, [r0, #24]
d00560dc:	b90b      	cbnz	r3, d00560e2 <__swbuf_r+0x12>
d00560de:	f7fe ffc1 	bl	d0055064 <__sinit>
d00560e2:	4b21      	ldr	r3, [pc, #132]	; (d0056168 <__swbuf_r+0x98>)
d00560e4:	429c      	cmp	r4, r3
d00560e6:	d12b      	bne.n	d0056140 <__swbuf_r+0x70>
d00560e8:	686c      	ldr	r4, [r5, #4]
d00560ea:	69a3      	ldr	r3, [r4, #24]
d00560ec:	60a3      	str	r3, [r4, #8]
d00560ee:	89a3      	ldrh	r3, [r4, #12]
d00560f0:	071a      	lsls	r2, r3, #28
d00560f2:	d52f      	bpl.n	d0056154 <__swbuf_r+0x84>
d00560f4:	6923      	ldr	r3, [r4, #16]
d00560f6:	b36b      	cbz	r3, d0056154 <__swbuf_r+0x84>
d00560f8:	6923      	ldr	r3, [r4, #16]
d00560fa:	6820      	ldr	r0, [r4, #0]
d00560fc:	1ac0      	subs	r0, r0, r3
d00560fe:	6963      	ldr	r3, [r4, #20]
d0056100:	b2f6      	uxtb	r6, r6
d0056102:	4283      	cmp	r3, r0
d0056104:	4637      	mov	r7, r6
d0056106:	dc04      	bgt.n	d0056112 <__swbuf_r+0x42>
d0056108:	4621      	mov	r1, r4
d005610a:	4628      	mov	r0, r5
d005610c:	f7fe ff16 	bl	d0054f3c <_fflush_r>
d0056110:	bb30      	cbnz	r0, d0056160 <__swbuf_r+0x90>
d0056112:	68a3      	ldr	r3, [r4, #8]
d0056114:	3b01      	subs	r3, #1
d0056116:	60a3      	str	r3, [r4, #8]
d0056118:	6823      	ldr	r3, [r4, #0]
d005611a:	1c5a      	adds	r2, r3, #1
d005611c:	6022      	str	r2, [r4, #0]
d005611e:	701e      	strb	r6, [r3, #0]
d0056120:	6963      	ldr	r3, [r4, #20]
d0056122:	3001      	adds	r0, #1
d0056124:	4283      	cmp	r3, r0
d0056126:	d004      	beq.n	d0056132 <__swbuf_r+0x62>
d0056128:	89a3      	ldrh	r3, [r4, #12]
d005612a:	07db      	lsls	r3, r3, #31
d005612c:	d506      	bpl.n	d005613c <__swbuf_r+0x6c>
d005612e:	2e0a      	cmp	r6, #10
d0056130:	d104      	bne.n	d005613c <__swbuf_r+0x6c>
d0056132:	4621      	mov	r1, r4
d0056134:	4628      	mov	r0, r5
d0056136:	f7fe ff01 	bl	d0054f3c <_fflush_r>
d005613a:	b988      	cbnz	r0, d0056160 <__swbuf_r+0x90>
d005613c:	4638      	mov	r0, r7
d005613e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0056140:	4b0a      	ldr	r3, [pc, #40]	; (d005616c <__swbuf_r+0x9c>)
d0056142:	429c      	cmp	r4, r3
d0056144:	d101      	bne.n	d005614a <__swbuf_r+0x7a>
d0056146:	68ac      	ldr	r4, [r5, #8]
d0056148:	e7cf      	b.n	d00560ea <__swbuf_r+0x1a>
d005614a:	4b09      	ldr	r3, [pc, #36]	; (d0056170 <__swbuf_r+0xa0>)
d005614c:	429c      	cmp	r4, r3
d005614e:	bf08      	it	eq
d0056150:	68ec      	ldreq	r4, [r5, #12]
d0056152:	e7ca      	b.n	d00560ea <__swbuf_r+0x1a>
d0056154:	4621      	mov	r1, r4
d0056156:	4628      	mov	r0, r5
d0056158:	f000 f80c 	bl	d0056174 <__swsetup_r>
d005615c:	2800      	cmp	r0, #0
d005615e:	d0cb      	beq.n	d00560f8 <__swbuf_r+0x28>
d0056160:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0056164:	e7ea      	b.n	d005613c <__swbuf_r+0x6c>
d0056166:	bf00      	nop
d0056168:	d0057648 	.word	0xd0057648
d005616c:	d0057668 	.word	0xd0057668
d0056170:	d0057628 	.word	0xd0057628

d0056174 <__swsetup_r>:
d0056174:	4b32      	ldr	r3, [pc, #200]	; (d0056240 <__swsetup_r+0xcc>)
d0056176:	b570      	push	{r4, r5, r6, lr}
d0056178:	681d      	ldr	r5, [r3, #0]
d005617a:	4606      	mov	r6, r0
d005617c:	460c      	mov	r4, r1
d005617e:	b125      	cbz	r5, d005618a <__swsetup_r+0x16>
d0056180:	69ab      	ldr	r3, [r5, #24]
d0056182:	b913      	cbnz	r3, d005618a <__swsetup_r+0x16>
d0056184:	4628      	mov	r0, r5
d0056186:	f7fe ff6d 	bl	d0055064 <__sinit>
d005618a:	4b2e      	ldr	r3, [pc, #184]	; (d0056244 <__swsetup_r+0xd0>)
d005618c:	429c      	cmp	r4, r3
d005618e:	d10f      	bne.n	d00561b0 <__swsetup_r+0x3c>
d0056190:	686c      	ldr	r4, [r5, #4]
d0056192:	89a3      	ldrh	r3, [r4, #12]
d0056194:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0056198:	0719      	lsls	r1, r3, #28
d005619a:	d42c      	bmi.n	d00561f6 <__swsetup_r+0x82>
d005619c:	06dd      	lsls	r5, r3, #27
d005619e:	d411      	bmi.n	d00561c4 <__swsetup_r+0x50>
d00561a0:	2309      	movs	r3, #9
d00561a2:	6033      	str	r3, [r6, #0]
d00561a4:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00561a8:	81a3      	strh	r3, [r4, #12]
d00561aa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00561ae:	e03e      	b.n	d005622e <__swsetup_r+0xba>
d00561b0:	4b25      	ldr	r3, [pc, #148]	; (d0056248 <__swsetup_r+0xd4>)
d00561b2:	429c      	cmp	r4, r3
d00561b4:	d101      	bne.n	d00561ba <__swsetup_r+0x46>
d00561b6:	68ac      	ldr	r4, [r5, #8]
d00561b8:	e7eb      	b.n	d0056192 <__swsetup_r+0x1e>
d00561ba:	4b24      	ldr	r3, [pc, #144]	; (d005624c <__swsetup_r+0xd8>)
d00561bc:	429c      	cmp	r4, r3
d00561be:	bf08      	it	eq
d00561c0:	68ec      	ldreq	r4, [r5, #12]
d00561c2:	e7e6      	b.n	d0056192 <__swsetup_r+0x1e>
d00561c4:	0758      	lsls	r0, r3, #29
d00561c6:	d512      	bpl.n	d00561ee <__swsetup_r+0x7a>
d00561c8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00561ca:	b141      	cbz	r1, d00561de <__swsetup_r+0x6a>
d00561cc:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00561d0:	4299      	cmp	r1, r3
d00561d2:	d002      	beq.n	d00561da <__swsetup_r+0x66>
d00561d4:	4630      	mov	r0, r6
d00561d6:	f7ff f81b 	bl	d0055210 <_free_r>
d00561da:	2300      	movs	r3, #0
d00561dc:	6363      	str	r3, [r4, #52]	; 0x34
d00561de:	89a3      	ldrh	r3, [r4, #12]
d00561e0:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d00561e4:	81a3      	strh	r3, [r4, #12]
d00561e6:	2300      	movs	r3, #0
d00561e8:	6063      	str	r3, [r4, #4]
d00561ea:	6923      	ldr	r3, [r4, #16]
d00561ec:	6023      	str	r3, [r4, #0]
d00561ee:	89a3      	ldrh	r3, [r4, #12]
d00561f0:	f043 0308 	orr.w	r3, r3, #8
d00561f4:	81a3      	strh	r3, [r4, #12]
d00561f6:	6923      	ldr	r3, [r4, #16]
d00561f8:	b94b      	cbnz	r3, d005620e <__swsetup_r+0x9a>
d00561fa:	89a3      	ldrh	r3, [r4, #12]
d00561fc:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0056200:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0056204:	d003      	beq.n	d005620e <__swsetup_r+0x9a>
d0056206:	4621      	mov	r1, r4
d0056208:	4630      	mov	r0, r6
d005620a:	f7ff fa93 	bl	d0055734 <__smakebuf_r>
d005620e:	89a0      	ldrh	r0, [r4, #12]
d0056210:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0056214:	f010 0301 	ands.w	r3, r0, #1
d0056218:	d00a      	beq.n	d0056230 <__swsetup_r+0xbc>
d005621a:	2300      	movs	r3, #0
d005621c:	60a3      	str	r3, [r4, #8]
d005621e:	6963      	ldr	r3, [r4, #20]
d0056220:	425b      	negs	r3, r3
d0056222:	61a3      	str	r3, [r4, #24]
d0056224:	6923      	ldr	r3, [r4, #16]
d0056226:	b943      	cbnz	r3, d005623a <__swsetup_r+0xc6>
d0056228:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d005622c:	d1ba      	bne.n	d00561a4 <__swsetup_r+0x30>
d005622e:	bd70      	pop	{r4, r5, r6, pc}
d0056230:	0781      	lsls	r1, r0, #30
d0056232:	bf58      	it	pl
d0056234:	6963      	ldrpl	r3, [r4, #20]
d0056236:	60a3      	str	r3, [r4, #8]
d0056238:	e7f4      	b.n	d0056224 <__swsetup_r+0xb0>
d005623a:	2000      	movs	r0, #0
d005623c:	e7f7      	b.n	d005622e <__swsetup_r+0xba>
d005623e:	bf00      	nop
d0056240:	d0059fb4 	.word	0xd0059fb4
d0056244:	d0057648 	.word	0xd0057648
d0056248:	d0057668 	.word	0xd0057668
d005624c:	d0057628 	.word	0xd0057628

d0056250 <abort>:
d0056250:	b508      	push	{r3, lr}
d0056252:	2006      	movs	r0, #6
d0056254:	f000 f8c6 	bl	d00563e4 <raise>
d0056258:	2001      	movs	r0, #1
d005625a:	f7f4 ff63 	bl	d004b124 <_exit>
	...

d0056260 <_fstat_r>:
d0056260:	b538      	push	{r3, r4, r5, lr}
d0056262:	4d07      	ldr	r5, [pc, #28]	; (d0056280 <_fstat_r+0x20>)
d0056264:	2300      	movs	r3, #0
d0056266:	4604      	mov	r4, r0
d0056268:	4608      	mov	r0, r1
d005626a:	4611      	mov	r1, r2
d005626c:	602b      	str	r3, [r5, #0]
d005626e:	f7f4 ff2f 	bl	d004b0d0 <_fstat>
d0056272:	1c43      	adds	r3, r0, #1
d0056274:	d102      	bne.n	d005627c <_fstat_r+0x1c>
d0056276:	682b      	ldr	r3, [r5, #0]
d0056278:	b103      	cbz	r3, d005627c <_fstat_r+0x1c>
d005627a:	6023      	str	r3, [r4, #0]
d005627c:	bd38      	pop	{r3, r4, r5, pc}
d005627e:	bf00      	nop
d0056280:	d00fc760 	.word	0xd00fc760

d0056284 <_isatty_r>:
d0056284:	b538      	push	{r3, r4, r5, lr}
d0056286:	4d06      	ldr	r5, [pc, #24]	; (d00562a0 <_isatty_r+0x1c>)
d0056288:	2300      	movs	r3, #0
d005628a:	4604      	mov	r4, r0
d005628c:	4608      	mov	r0, r1
d005628e:	602b      	str	r3, [r5, #0]
d0056290:	f7f4 ff46 	bl	d004b120 <_isatty>
d0056294:	1c43      	adds	r3, r0, #1
d0056296:	d102      	bne.n	d005629e <_isatty_r+0x1a>
d0056298:	682b      	ldr	r3, [r5, #0]
d005629a:	b103      	cbz	r3, d005629e <_isatty_r+0x1a>
d005629c:	6023      	str	r3, [r4, #0]
d005629e:	bd38      	pop	{r3, r4, r5, pc}
d00562a0:	d00fc760 	.word	0xd00fc760
	...

d00562b0 <memchr>:
d00562b0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00562b4:	2a10      	cmp	r2, #16
d00562b6:	db2b      	blt.n	d0056310 <memchr+0x60>
d00562b8:	f010 0f07 	tst.w	r0, #7
d00562bc:	d008      	beq.n	d00562d0 <memchr+0x20>
d00562be:	f810 3b01 	ldrb.w	r3, [r0], #1
d00562c2:	3a01      	subs	r2, #1
d00562c4:	428b      	cmp	r3, r1
d00562c6:	d02d      	beq.n	d0056324 <memchr+0x74>
d00562c8:	f010 0f07 	tst.w	r0, #7
d00562cc:	b342      	cbz	r2, d0056320 <memchr+0x70>
d00562ce:	d1f6      	bne.n	d00562be <memchr+0xe>
d00562d0:	b4f0      	push	{r4, r5, r6, r7}
d00562d2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00562d6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00562da:	f022 0407 	bic.w	r4, r2, #7
d00562de:	f07f 0700 	mvns.w	r7, #0
d00562e2:	2300      	movs	r3, #0
d00562e4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00562e8:	3c08      	subs	r4, #8
d00562ea:	ea85 0501 	eor.w	r5, r5, r1
d00562ee:	ea86 0601 	eor.w	r6, r6, r1
d00562f2:	fa85 f547 	uadd8	r5, r5, r7
d00562f6:	faa3 f587 	sel	r5, r3, r7
d00562fa:	fa86 f647 	uadd8	r6, r6, r7
d00562fe:	faa5 f687 	sel	r6, r5, r7
d0056302:	b98e      	cbnz	r6, d0056328 <memchr+0x78>
d0056304:	d1ee      	bne.n	d00562e4 <memchr+0x34>
d0056306:	bcf0      	pop	{r4, r5, r6, r7}
d0056308:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005630c:	f002 0207 	and.w	r2, r2, #7
d0056310:	b132      	cbz	r2, d0056320 <memchr+0x70>
d0056312:	f810 3b01 	ldrb.w	r3, [r0], #1
d0056316:	3a01      	subs	r2, #1
d0056318:	ea83 0301 	eor.w	r3, r3, r1
d005631c:	b113      	cbz	r3, d0056324 <memchr+0x74>
d005631e:	d1f8      	bne.n	d0056312 <memchr+0x62>
d0056320:	2000      	movs	r0, #0
d0056322:	4770      	bx	lr
d0056324:	3801      	subs	r0, #1
d0056326:	4770      	bx	lr
d0056328:	2d00      	cmp	r5, #0
d005632a:	bf06      	itte	eq
d005632c:	4635      	moveq	r5, r6
d005632e:	3803      	subeq	r0, #3
d0056330:	3807      	subne	r0, #7
d0056332:	f015 0f01 	tst.w	r5, #1
d0056336:	d107      	bne.n	d0056348 <memchr+0x98>
d0056338:	3001      	adds	r0, #1
d005633a:	f415 7f80 	tst.w	r5, #256	; 0x100
d005633e:	bf02      	ittt	eq
d0056340:	3001      	addeq	r0, #1
d0056342:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0056346:	3001      	addeq	r0, #1
d0056348:	bcf0      	pop	{r4, r5, r6, r7}
d005634a:	3801      	subs	r0, #1
d005634c:	4770      	bx	lr
d005634e:	bf00      	nop

d0056350 <memmove>:
d0056350:	4288      	cmp	r0, r1
d0056352:	b510      	push	{r4, lr}
d0056354:	eb01 0402 	add.w	r4, r1, r2
d0056358:	d902      	bls.n	d0056360 <memmove+0x10>
d005635a:	4284      	cmp	r4, r0
d005635c:	4623      	mov	r3, r4
d005635e:	d807      	bhi.n	d0056370 <memmove+0x20>
d0056360:	1e43      	subs	r3, r0, #1
d0056362:	42a1      	cmp	r1, r4
d0056364:	d008      	beq.n	d0056378 <memmove+0x28>
d0056366:	f811 2b01 	ldrb.w	r2, [r1], #1
d005636a:	f803 2f01 	strb.w	r2, [r3, #1]!
d005636e:	e7f8      	b.n	d0056362 <memmove+0x12>
d0056370:	4402      	add	r2, r0
d0056372:	4601      	mov	r1, r0
d0056374:	428a      	cmp	r2, r1
d0056376:	d100      	bne.n	d005637a <memmove+0x2a>
d0056378:	bd10      	pop	{r4, pc}
d005637a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d005637e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0056382:	e7f7      	b.n	d0056374 <memmove+0x24>

d0056384 <_malloc_usable_size_r>:
d0056384:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0056388:	1f18      	subs	r0, r3, #4
d005638a:	2b00      	cmp	r3, #0
d005638c:	bfbc      	itt	lt
d005638e:	580b      	ldrlt	r3, [r1, r0]
d0056390:	18c0      	addlt	r0, r0, r3
d0056392:	4770      	bx	lr

d0056394 <_raise_r>:
d0056394:	291f      	cmp	r1, #31
d0056396:	b538      	push	{r3, r4, r5, lr}
d0056398:	4604      	mov	r4, r0
d005639a:	460d      	mov	r5, r1
d005639c:	d904      	bls.n	d00563a8 <_raise_r+0x14>
d005639e:	2316      	movs	r3, #22
d00563a0:	6003      	str	r3, [r0, #0]
d00563a2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00563a6:	bd38      	pop	{r3, r4, r5, pc}
d00563a8:	6c42      	ldr	r2, [r0, #68]	; 0x44
d00563aa:	b112      	cbz	r2, d00563b2 <_raise_r+0x1e>
d00563ac:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d00563b0:	b94b      	cbnz	r3, d00563c6 <_raise_r+0x32>
d00563b2:	4620      	mov	r0, r4
d00563b4:	f000 f830 	bl	d0056418 <_getpid_r>
d00563b8:	462a      	mov	r2, r5
d00563ba:	4601      	mov	r1, r0
d00563bc:	4620      	mov	r0, r4
d00563be:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d00563c2:	f000 b817 	b.w	d00563f4 <_kill_r>
d00563c6:	2b01      	cmp	r3, #1
d00563c8:	d00a      	beq.n	d00563e0 <_raise_r+0x4c>
d00563ca:	1c59      	adds	r1, r3, #1
d00563cc:	d103      	bne.n	d00563d6 <_raise_r+0x42>
d00563ce:	2316      	movs	r3, #22
d00563d0:	6003      	str	r3, [r0, #0]
d00563d2:	2001      	movs	r0, #1
d00563d4:	e7e7      	b.n	d00563a6 <_raise_r+0x12>
d00563d6:	2400      	movs	r4, #0
d00563d8:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d00563dc:	4628      	mov	r0, r5
d00563de:	4798      	blx	r3
d00563e0:	2000      	movs	r0, #0
d00563e2:	e7e0      	b.n	d00563a6 <_raise_r+0x12>

d00563e4 <raise>:
d00563e4:	4b02      	ldr	r3, [pc, #8]	; (d00563f0 <raise+0xc>)
d00563e6:	4601      	mov	r1, r0
d00563e8:	6818      	ldr	r0, [r3, #0]
d00563ea:	f7ff bfd3 	b.w	d0056394 <_raise_r>
d00563ee:	bf00      	nop
d00563f0:	d0059fb4 	.word	0xd0059fb4

d00563f4 <_kill_r>:
d00563f4:	b538      	push	{r3, r4, r5, lr}
d00563f6:	4d07      	ldr	r5, [pc, #28]	; (d0056414 <_kill_r+0x20>)
d00563f8:	2300      	movs	r3, #0
d00563fa:	4604      	mov	r4, r0
d00563fc:	4608      	mov	r0, r1
d00563fe:	4611      	mov	r1, r2
d0056400:	602b      	str	r3, [r5, #0]
d0056402:	f7f4 fe93 	bl	d004b12c <_kill>
d0056406:	1c43      	adds	r3, r0, #1
d0056408:	d102      	bne.n	d0056410 <_kill_r+0x1c>
d005640a:	682b      	ldr	r3, [r5, #0]
d005640c:	b103      	cbz	r3, d0056410 <_kill_r+0x1c>
d005640e:	6023      	str	r3, [r4, #0]
d0056410:	bd38      	pop	{r3, r4, r5, pc}
d0056412:	bf00      	nop
d0056414:	d00fc760 	.word	0xd00fc760

d0056418 <_getpid_r>:
d0056418:	f7f4 be86 	b.w	d004b128 <_getpid>

d005641c <sinf_poly>:
d005641c:	07cb      	lsls	r3, r1, #31
d005641e:	d412      	bmi.n	d0056446 <sinf_poly+0x2a>
d0056420:	ee21 6b00 	vmul.f64	d6, d1, d0
d0056424:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0056428:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005642c:	eea5 7b01 	vfma.f64	d7, d5, d1
d0056430:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0056434:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056438:	eea5 0b06 	vfma.f64	d0, d5, d6
d005643c:	eea7 0b01 	vfma.f64	d0, d7, d1
d0056440:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056444:	4770      	bx	lr
d0056446:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005644a:	ee21 6b01 	vmul.f64	d6, d1, d1
d005644e:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0056452:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0056456:	eea1 7b05 	vfma.f64	d7, d1, d5
d005645a:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005645e:	eea1 0b05 	vfma.f64	d0, d1, d5
d0056462:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0056466:	ee21 1b06 	vmul.f64	d1, d1, d6
d005646a:	eea6 0b05 	vfma.f64	d0, d6, d5
d005646e:	e7e5      	b.n	d005643c <sinf_poly+0x20>

d0056470 <cosf>:
d0056470:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0056472:	ee10 4a10 	vmov	r4, s0
d0056476:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005647a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005647e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0056482:	d20c      	bcs.n	d005649e <cosf+0x2e>
d0056484:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056488:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005648c:	d378      	bcc.n	d0056580 <cosf+0x110>
d005648e:	eeb0 0b46 	vmov.f64	d0, d6
d0056492:	483f      	ldr	r0, [pc, #252]	; (d0056590 <cosf+0x120>)
d0056494:	2101      	movs	r1, #1
d0056496:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005649a:	f7ff bfbf 	b.w	d005641c <sinf_poly>
d005649e:	f240 422e 	movw	r2, #1070	; 0x42e
d00564a2:	4293      	cmp	r3, r2
d00564a4:	d826      	bhi.n	d00564f4 <cosf+0x84>
d00564a6:	4b3a      	ldr	r3, [pc, #232]	; (d0056590 <cosf+0x120>)
d00564a8:	ed93 7b08 	vldr	d7, [r3, #32]
d00564ac:	ee26 7b07 	vmul.f64	d7, d6, d7
d00564b0:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00564b4:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00564b8:	ee17 1a90 	vmov	r1, s15
d00564bc:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00564c0:	1609      	asrs	r1, r1, #24
d00564c2:	ee07 1a90 	vmov	s15, r1
d00564c6:	f001 0203 	and.w	r2, r1, #3
d00564ca:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00564ce:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00564d2:	ed92 0b00 	vldr	d0, [r2]
d00564d6:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00564da:	f011 0f02 	tst.w	r1, #2
d00564de:	eea5 6b47 	vfms.f64	d6, d5, d7
d00564e2:	f081 0101 	eor.w	r1, r1, #1
d00564e6:	bf08      	it	eq
d00564e8:	4618      	moveq	r0, r3
d00564ea:	ee26 1b06 	vmul.f64	d1, d6, d6
d00564ee:	ee20 0b06 	vmul.f64	d0, d0, d6
d00564f2:	e7d0      	b.n	d0056496 <cosf+0x26>
d00564f4:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00564f8:	d23e      	bcs.n	d0056578 <cosf+0x108>
d00564fa:	4b26      	ldr	r3, [pc, #152]	; (d0056594 <cosf+0x124>)
d00564fc:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0056500:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0056504:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0056508:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005650c:	6a06      	ldr	r6, [r0, #32]
d005650e:	6900      	ldr	r0, [r0, #16]
d0056510:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0056514:	40a9      	lsls	r1, r5
d0056516:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005651a:	fba1 6706 	umull	r6, r7, r1, r6
d005651e:	fb05 f301 	mul.w	r3, r5, r1
d0056522:	463a      	mov	r2, r7
d0056524:	fbe0 2301 	umlal	r2, r3, r0, r1
d0056528:	1c11      	adds	r1, r2, #0
d005652a:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005652e:	2000      	movs	r0, #0
d0056530:	1a10      	subs	r0, r2, r0
d0056532:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0056536:	eb63 0101 	sbc.w	r1, r3, r1
d005653a:	f000 fdd5 	bl	d00570e8 <__aeabi_l2d>
d005653e:	0fb5      	lsrs	r5, r6, #30
d0056540:	4b13      	ldr	r3, [pc, #76]	; (d0056590 <cosf+0x120>)
d0056542:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0056546:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0056588 <cosf+0x118>
d005654a:	ec41 0b17 	vmov	d7, r0, r1
d005654e:	f004 0203 	and.w	r2, r4, #3
d0056552:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0056556:	ee27 0b00 	vmul.f64	d0, d7, d0
d005655a:	ed92 7b00 	vldr	d7, [r2]
d005655e:	ee20 1b00 	vmul.f64	d1, d0, d0
d0056562:	f014 0f02 	tst.w	r4, #2
d0056566:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005656a:	f085 0101 	eor.w	r1, r5, #1
d005656e:	bf08      	it	eq
d0056570:	4618      	moveq	r0, r3
d0056572:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056576:	e78e      	b.n	d0056496 <cosf+0x26>
d0056578:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005657c:	f000 b844 	b.w	d0056608 <__math_invalidf>
d0056580:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0056584:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0056586:	bf00      	nop
d0056588:	54442d18 	.word	0x54442d18
d005658c:	3c1921fb 	.word	0x3c1921fb
d0056590:	d0057a40 	.word	0xd0057a40
d0056594:	d00579e0 	.word	0xd00579e0

d0056598 <with_errnof>:
d0056598:	b513      	push	{r0, r1, r4, lr}
d005659a:	4604      	mov	r4, r0
d005659c:	ed8d 0a01 	vstr	s0, [sp, #4]
d00565a0:	f7fe fbcc 	bl	d0054d3c <__errno>
d00565a4:	ed9d 0a01 	vldr	s0, [sp, #4]
d00565a8:	6004      	str	r4, [r0, #0]
d00565aa:	b002      	add	sp, #8
d00565ac:	bd10      	pop	{r4, pc}

d00565ae <xflowf>:
d00565ae:	b130      	cbz	r0, d00565be <xflowf+0x10>
d00565b0:	eef1 7a40 	vneg.f32	s15, s0
d00565b4:	ee27 0a80 	vmul.f32	s0, s15, s0
d00565b8:	2022      	movs	r0, #34	; 0x22
d00565ba:	f7ff bfed 	b.w	d0056598 <with_errnof>
d00565be:	eef0 7a40 	vmov.f32	s15, s0
d00565c2:	e7f7      	b.n	d00565b4 <xflowf+0x6>

d00565c4 <__math_uflowf>:
d00565c4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00565cc <__math_uflowf+0x8>
d00565c8:	f7ff bff1 	b.w	d00565ae <xflowf>
d00565cc:	10000000 	.word	0x10000000

d00565d0 <__math_may_uflowf>:
d00565d0:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00565d8 <__math_may_uflowf+0x8>
d00565d4:	f7ff bfeb 	b.w	d00565ae <xflowf>
d00565d8:	1a200000 	.word	0x1a200000

d00565dc <__math_oflowf>:
d00565dc:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00565e4 <__math_oflowf+0x8>
d00565e0:	f7ff bfe5 	b.w	d00565ae <xflowf>
d00565e4:	70000000 	.word	0x70000000

d00565e8 <__math_divzerof>:
d00565e8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00565ec:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d00565f0:	2800      	cmp	r0, #0
d00565f2:	fe40 7a27 	vseleq.f32	s15, s0, s15
d00565f6:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0056604 <__math_divzerof+0x1c>
d00565fa:	2022      	movs	r0, #34	; 0x22
d00565fc:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0056600:	f7ff bfca 	b.w	d0056598 <with_errnof>
d0056604:	00000000 	.word	0x00000000

d0056608 <__math_invalidf>:
d0056608:	eef0 7a40 	vmov.f32	s15, s0
d005660c:	ee30 7a40 	vsub.f32	s14, s0, s0
d0056610:	eef4 7a67 	vcmp.f32	s15, s15
d0056614:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056618:	ee87 0a07 	vdiv.f32	s0, s14, s14
d005661c:	d602      	bvs.n	d0056624 <__math_invalidf+0x1c>
d005661e:	2021      	movs	r0, #33	; 0x21
d0056620:	f7ff bfba 	b.w	d0056598 <with_errnof>
d0056624:	4770      	bx	lr
	...

d0056628 <expf>:
d0056628:	ee10 2a10 	vmov	r2, s0
d005662c:	b470      	push	{r4, r5, r6}
d005662e:	f3c2 530a 	ubfx	r3, r2, #20, #11
d0056632:	f240 442a 	movw	r4, #1066	; 0x42a
d0056636:	42a3      	cmp	r3, r4
d0056638:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005663c:	d92a      	bls.n	d0056694 <expf+0x6c>
d005663e:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d0056642:	d059      	beq.n	d00566f8 <expf+0xd0>
d0056644:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056648:	d303      	bcc.n	d0056652 <expf+0x2a>
d005664a:	ee30 0a00 	vadd.f32	s0, s0, s0
d005664e:	bc70      	pop	{r4, r5, r6}
d0056650:	4770      	bx	lr
d0056652:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0056700 <expf+0xd8>
d0056656:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005665a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005665e:	dd03      	ble.n	d0056668 <expf+0x40>
d0056660:	bc70      	pop	{r4, r5, r6}
d0056662:	2000      	movs	r0, #0
d0056664:	f7ff bfba 	b.w	d00565dc <__math_oflowf>
d0056668:	eddf 7a26 	vldr	s15, [pc, #152]	; d0056704 <expf+0xdc>
d005666c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0056670:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056674:	d503      	bpl.n	d005667e <expf+0x56>
d0056676:	bc70      	pop	{r4, r5, r6}
d0056678:	2000      	movs	r0, #0
d005667a:	f7ff bfa3 	b.w	d00565c4 <__math_uflowf>
d005667e:	eddf 7a22 	vldr	s15, [pc, #136]	; d0056708 <expf+0xe0>
d0056682:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0056686:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005668a:	d503      	bpl.n	d0056694 <expf+0x6c>
d005668c:	bc70      	pop	{r4, r5, r6}
d005668e:	2000      	movs	r0, #0
d0056690:	f7ff bf9e 	b.w	d00565d0 <__math_may_uflowf>
d0056694:	4b1d      	ldr	r3, [pc, #116]	; (d005670c <expf+0xe4>)
d0056696:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d005669a:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d005669e:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d00566a2:	eeb0 7b44 	vmov.f64	d7, d4
d00566a6:	eea5 7b06 	vfma.f64	d7, d5, d6
d00566aa:	ee17 5a10 	vmov	r5, s14
d00566ae:	ee37 7b44 	vsub.f64	d7, d7, d4
d00566b2:	f005 021f 	and.w	r2, r5, #31
d00566b6:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00566ba:	e9d2 4600 	ldrd	r4, r6, [r2]
d00566be:	ee95 7b06 	vfnms.f64	d7, d5, d6
d00566c2:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d00566c6:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d00566ca:	eea4 0b07 	vfma.f64	d0, d4, d7
d00566ce:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d00566d2:	2300      	movs	r3, #0
d00566d4:	1918      	adds	r0, r3, r4
d00566d6:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d00566da:	eb42 0106 	adc.w	r1, r2, r6
d00566de:	eea5 6b07 	vfma.f64	d6, d5, d7
d00566e2:	ee27 5b07 	vmul.f64	d5, d7, d7
d00566e6:	ec41 0b17 	vmov	d7, r0, r1
d00566ea:	eea6 0b05 	vfma.f64	d0, d6, d5
d00566ee:	ee20 0b07 	vmul.f64	d0, d0, d7
d00566f2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00566f6:	e7aa      	b.n	d005664e <expf+0x26>
d00566f8:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0056710 <expf+0xe8>
d00566fc:	e7a7      	b.n	d005664e <expf+0x26>
d00566fe:	bf00      	nop
d0056700:	42b17217 	.word	0x42b17217
d0056704:	c2cff1b4 	.word	0xc2cff1b4
d0056708:	c2ce8ecf 	.word	0xc2ce8ecf
d005670c:	d0057778 	.word	0xd0057778
d0056710:	00000000 	.word	0x00000000

d0056714 <logf>:
d0056714:	ee10 3a10 	vmov	r3, s0
d0056718:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d005671c:	b410      	push	{r4}
d005671e:	d055      	beq.n	d00567cc <logf+0xb8>
d0056720:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0056724:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0056728:	d31a      	bcc.n	d0056760 <logf+0x4c>
d005672a:	005a      	lsls	r2, r3, #1
d005672c:	d104      	bne.n	d0056738 <logf+0x24>
d005672e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056732:	2001      	movs	r0, #1
d0056734:	f7ff bf58 	b.w	d00565e8 <__math_divzerof>
d0056738:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005673c:	d043      	beq.n	d00567c6 <logf+0xb2>
d005673e:	2b00      	cmp	r3, #0
d0056740:	db02      	blt.n	d0056748 <logf+0x34>
d0056742:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0056746:	d303      	bcc.n	d0056750 <logf+0x3c>
d0056748:	f85d 4b04 	ldr.w	r4, [sp], #4
d005674c:	f7ff bf5c 	b.w	d0056608 <__math_invalidf>
d0056750:	eddf 7a20 	vldr	s15, [pc, #128]	; d00567d4 <logf+0xc0>
d0056754:	ee20 0a27 	vmul.f32	s0, s0, s15
d0056758:	ee10 3a10 	vmov	r3, s0
d005675c:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0056760:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0056764:	491c      	ldr	r1, [pc, #112]	; (d00567d8 <logf+0xc4>)
d0056766:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d005676a:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d005676e:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0056772:	0dd4      	lsrs	r4, r2, #23
d0056774:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0056778:	05e4      	lsls	r4, r4, #23
d005677a:	ed90 6b00 	vldr	d6, [r0]
d005677e:	1b1b      	subs	r3, r3, r4
d0056780:	ee07 3a90 	vmov	s15, r3
d0056784:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0056788:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d005678c:	15d2      	asrs	r2, r2, #23
d005678e:	eea6 0b07 	vfma.f64	d0, d6, d7
d0056792:	ed90 6b02 	vldr	d6, [r0, #8]
d0056796:	ee07 2a90 	vmov	s15, r2
d005679a:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d005679e:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d00567a2:	eea7 6b05 	vfma.f64	d6, d7, d5
d00567a6:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d00567aa:	ee20 5b00 	vmul.f64	d5, d0, d0
d00567ae:	eea4 7b00 	vfma.f64	d7, d4, d0
d00567b2:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d00567b6:	ee30 0b06 	vadd.f64	d0, d0, d6
d00567ba:	eea4 7b05 	vfma.f64	d7, d4, d5
d00567be:	eea5 0b07 	vfma.f64	d0, d5, d7
d00567c2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00567c6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00567ca:	4770      	bx	lr
d00567cc:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00567dc <logf+0xc8>
d00567d0:	e7f9      	b.n	d00567c6 <logf+0xb2>
d00567d2:	bf00      	nop
d00567d4:	4b000000 	.word	0x4b000000
d00567d8:	d00578c0 	.word	0xd00578c0
d00567dc:	00000000 	.word	0x00000000

d00567e0 <sinf_poly>:
d00567e0:	07cb      	lsls	r3, r1, #31
d00567e2:	d412      	bmi.n	d005680a <sinf_poly+0x2a>
d00567e4:	ee21 6b00 	vmul.f64	d6, d1, d0
d00567e8:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d00567ec:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d00567f0:	eea5 7b01 	vfma.f64	d7, d5, d1
d00567f4:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d00567f8:	ee21 1b06 	vmul.f64	d1, d1, d6
d00567fc:	eea5 0b06 	vfma.f64	d0, d5, d6
d0056800:	eea7 0b01 	vfma.f64	d0, d7, d1
d0056804:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056808:	4770      	bx	lr
d005680a:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005680e:	ee21 6b01 	vmul.f64	d6, d1, d1
d0056812:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0056816:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d005681a:	eea1 7b05 	vfma.f64	d7, d1, d5
d005681e:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0056822:	eea1 0b05 	vfma.f64	d0, d1, d5
d0056826:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d005682a:	ee21 1b06 	vmul.f64	d1, d1, d6
d005682e:	eea6 0b05 	vfma.f64	d0, d6, d5
d0056832:	e7e5      	b.n	d0056800 <sinf_poly+0x20>
d0056834:	0000      	movs	r0, r0
	...

d0056838 <sinf>:
d0056838:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d005683a:	ee10 4a10 	vmov	r4, s0
d005683e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0056842:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0056846:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005684a:	eef0 7a40 	vmov.f32	s15, s0
d005684e:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0056852:	d218      	bcs.n	d0056886 <sinf+0x4e>
d0056854:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056858:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005685c:	d20a      	bcs.n	d0056874 <sinf+0x3c>
d005685e:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0056862:	d103      	bne.n	d005686c <sinf+0x34>
d0056864:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0056868:	ed8d 1a01 	vstr	s2, [sp, #4]
d005686c:	eeb0 0a67 	vmov.f32	s0, s15
d0056870:	b003      	add	sp, #12
d0056872:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056874:	483e      	ldr	r0, [pc, #248]	; (d0056970 <sinf+0x138>)
d0056876:	eeb0 0b46 	vmov.f64	d0, d6
d005687a:	2100      	movs	r1, #0
d005687c:	b003      	add	sp, #12
d005687e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056882:	f7ff bfad 	b.w	d00567e0 <sinf_poly>
d0056886:	f240 422e 	movw	r2, #1070	; 0x42e
d005688a:	4293      	cmp	r3, r2
d005688c:	d824      	bhi.n	d00568d8 <sinf+0xa0>
d005688e:	4b38      	ldr	r3, [pc, #224]	; (d0056970 <sinf+0x138>)
d0056890:	ed93 7b08 	vldr	d7, [r3, #32]
d0056894:	ee26 7b07 	vmul.f64	d7, d6, d7
d0056898:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005689c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00568a0:	ee17 1a90 	vmov	r1, s15
d00568a4:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00568a8:	1609      	asrs	r1, r1, #24
d00568aa:	ee07 1a90 	vmov	s15, r1
d00568ae:	f001 0203 	and.w	r2, r1, #3
d00568b2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00568b6:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00568ba:	ed92 0b00 	vldr	d0, [r2]
d00568be:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00568c2:	f011 0f02 	tst.w	r1, #2
d00568c6:	eea5 6b47 	vfms.f64	d6, d5, d7
d00568ca:	bf08      	it	eq
d00568cc:	4618      	moveq	r0, r3
d00568ce:	ee26 1b06 	vmul.f64	d1, d6, d6
d00568d2:	ee20 0b06 	vmul.f64	d0, d0, d6
d00568d6:	e7d1      	b.n	d005687c <sinf+0x44>
d00568d8:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00568dc:	d23d      	bcs.n	d005695a <sinf+0x122>
d00568de:	4b25      	ldr	r3, [pc, #148]	; (d0056974 <sinf+0x13c>)
d00568e0:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00568e4:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00568e8:	f3c4 0116 	ubfx	r1, r4, #0, #23
d00568ec:	6a06      	ldr	r6, [r0, #32]
d00568ee:	6900      	ldr	r0, [r0, #16]
d00568f0:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d00568f4:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d00568f8:	40a9      	lsls	r1, r5
d00568fa:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d00568fe:	fba1 6706 	umull	r6, r7, r1, r6
d0056902:	fb05 f301 	mul.w	r3, r5, r1
d0056906:	463a      	mov	r2, r7
d0056908:	fbe0 2301 	umlal	r2, r3, r0, r1
d005690c:	1c11      	adds	r1, r2, #0
d005690e:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0056912:	2000      	movs	r0, #0
d0056914:	1a10      	subs	r0, r2, r0
d0056916:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005691a:	eb63 0101 	sbc.w	r1, r3, r1
d005691e:	f000 fbe3 	bl	d00570e8 <__aeabi_l2d>
d0056922:	0fb5      	lsrs	r5, r6, #30
d0056924:	4a12      	ldr	r2, [pc, #72]	; (d0056970 <sinf+0x138>)
d0056926:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d005692a:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0056968 <sinf+0x130>
d005692e:	ec41 0b17 	vmov	d7, r0, r1
d0056932:	f003 0103 	and.w	r1, r3, #3
d0056936:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d005693a:	ee27 0b00 	vmul.f64	d0, d7, d0
d005693e:	ed91 7b00 	vldr	d7, [r1]
d0056942:	ee20 1b00 	vmul.f64	d1, d0, d0
d0056946:	f013 0f02 	tst.w	r3, #2
d005694a:	f102 0070 	add.w	r0, r2, #112	; 0x70
d005694e:	4629      	mov	r1, r5
d0056950:	bf08      	it	eq
d0056952:	4610      	moveq	r0, r2
d0056954:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056958:	e790      	b.n	d005687c <sinf+0x44>
d005695a:	b003      	add	sp, #12
d005695c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056960:	f7ff be52 	b.w	d0056608 <__math_invalidf>
d0056964:	f3af 8000 	nop.w
d0056968:	54442d18 	.word	0x54442d18
d005696c:	3c1921fb 	.word	0x3c1921fb
d0056970:	d0057a40 	.word	0xd0057a40
d0056974:	d00579e0 	.word	0xd00579e0

d0056978 <atan2f>:
d0056978:	f000 b82c 	b.w	d00569d4 <__ieee754_atan2f>

d005697c <fmodf>:
d005697c:	b508      	push	{r3, lr}
d005697e:	ed2d 8b02 	vpush	{d8}
d0056982:	eef0 8a40 	vmov.f32	s17, s0
d0056986:	eeb0 8a60 	vmov.f32	s16, s1
d005698a:	f000 f8c1 	bl	d0056b10 <__ieee754_fmodf>
d005698e:	4b0f      	ldr	r3, [pc, #60]	; (d00569cc <fmodf+0x50>)
d0056990:	f993 3000 	ldrsb.w	r3, [r3]
d0056994:	3301      	adds	r3, #1
d0056996:	d016      	beq.n	d00569c6 <fmodf+0x4a>
d0056998:	eeb4 8a48 	vcmp.f32	s16, s16
d005699c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00569a0:	d611      	bvs.n	d00569c6 <fmodf+0x4a>
d00569a2:	eef4 8a68 	vcmp.f32	s17, s17
d00569a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00569aa:	d60c      	bvs.n	d00569c6 <fmodf+0x4a>
d00569ac:	eddf 8a08 	vldr	s17, [pc, #32]	; d00569d0 <fmodf+0x54>
d00569b0:	eeb4 8a68 	vcmp.f32	s16, s17
d00569b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00569b8:	d105      	bne.n	d00569c6 <fmodf+0x4a>
d00569ba:	f7fe f9bf 	bl	d0054d3c <__errno>
d00569be:	ee88 0aa8 	vdiv.f32	s0, s17, s17
d00569c2:	2321      	movs	r3, #33	; 0x21
d00569c4:	6003      	str	r3, [r0, #0]
d00569c6:	ecbd 8b02 	vpop	{d8}
d00569ca:	bd08      	pop	{r3, pc}
d00569cc:	d005a018 	.word	0xd005a018
d00569d0:	00000000 	.word	0x00000000

d00569d4 <__ieee754_atan2f>:
d00569d4:	ee10 2a90 	vmov	r2, s1
d00569d8:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d00569dc:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d00569e0:	b510      	push	{r4, lr}
d00569e2:	eef0 7a40 	vmov.f32	s15, s0
d00569e6:	dc06      	bgt.n	d00569f6 <__ieee754_atan2f+0x22>
d00569e8:	ee10 0a10 	vmov	r0, s0
d00569ec:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d00569f0:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d00569f4:	dd04      	ble.n	d0056a00 <__ieee754_atan2f+0x2c>
d00569f6:	ee77 7aa0 	vadd.f32	s15, s15, s1
d00569fa:	eeb0 0a67 	vmov.f32	s0, s15
d00569fe:	bd10      	pop	{r4, pc}
d0056a00:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d0056a04:	d103      	bne.n	d0056a0e <__ieee754_atan2f+0x3a>
d0056a06:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0056a0a:	f000 b903 	b.w	d0056c14 <atanf>
d0056a0e:	1794      	asrs	r4, r2, #30
d0056a10:	f004 0402 	and.w	r4, r4, #2
d0056a14:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d0056a18:	b93b      	cbnz	r3, d0056a2a <__ieee754_atan2f+0x56>
d0056a1a:	2c02      	cmp	r4, #2
d0056a1c:	d05c      	beq.n	d0056ad8 <__ieee754_atan2f+0x104>
d0056a1e:	ed9f 7a33 	vldr	s14, [pc, #204]	; d0056aec <__ieee754_atan2f+0x118>
d0056a22:	2c03      	cmp	r4, #3
d0056a24:	fe47 7a00 	vseleq.f32	s15, s14, s0
d0056a28:	e7e7      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056a2a:	b939      	cbnz	r1, d0056a3c <__ieee754_atan2f+0x68>
d0056a2c:	eddf 7a30 	vldr	s15, [pc, #192]	; d0056af0 <__ieee754_atan2f+0x11c>
d0056a30:	ed9f 0a30 	vldr	s0, [pc, #192]	; d0056af4 <__ieee754_atan2f+0x120>
d0056a34:	2800      	cmp	r0, #0
d0056a36:	fe67 7a80 	vselge.f32	s15, s15, s0
d0056a3a:	e7de      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056a3c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0056a40:	d110      	bne.n	d0056a64 <__ieee754_atan2f+0x90>
d0056a42:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056a46:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d0056a4a:	d107      	bne.n	d0056a5c <__ieee754_atan2f+0x88>
d0056a4c:	2c02      	cmp	r4, #2
d0056a4e:	d846      	bhi.n	d0056ade <__ieee754_atan2f+0x10a>
d0056a50:	4b29      	ldr	r3, [pc, #164]	; (d0056af8 <__ieee754_atan2f+0x124>)
d0056a52:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d0056a56:	edd4 7a00 	vldr	s15, [r4]
d0056a5a:	e7ce      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056a5c:	2c02      	cmp	r4, #2
d0056a5e:	d841      	bhi.n	d0056ae4 <__ieee754_atan2f+0x110>
d0056a60:	4b26      	ldr	r3, [pc, #152]	; (d0056afc <__ieee754_atan2f+0x128>)
d0056a62:	e7f6      	b.n	d0056a52 <__ieee754_atan2f+0x7e>
d0056a64:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056a68:	d0e0      	beq.n	d0056a2c <__ieee754_atan2f+0x58>
d0056a6a:	1a5b      	subs	r3, r3, r1
d0056a6c:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d0056a70:	ea4f 51e3 	mov.w	r1, r3, asr #23
d0056a74:	da1a      	bge.n	d0056aac <__ieee754_atan2f+0xd8>
d0056a76:	2a00      	cmp	r2, #0
d0056a78:	da01      	bge.n	d0056a7e <__ieee754_atan2f+0xaa>
d0056a7a:	313c      	adds	r1, #60	; 0x3c
d0056a7c:	db19      	blt.n	d0056ab2 <__ieee754_atan2f+0xde>
d0056a7e:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0056a82:	f000 f99b 	bl	d0056dbc <fabsf>
d0056a86:	f000 f8c5 	bl	d0056c14 <atanf>
d0056a8a:	eef0 7a40 	vmov.f32	s15, s0
d0056a8e:	2c01      	cmp	r4, #1
d0056a90:	d012      	beq.n	d0056ab8 <__ieee754_atan2f+0xe4>
d0056a92:	2c02      	cmp	r4, #2
d0056a94:	d017      	beq.n	d0056ac6 <__ieee754_atan2f+0xf2>
d0056a96:	2c00      	cmp	r4, #0
d0056a98:	d0af      	beq.n	d00569fa <__ieee754_atan2f+0x26>
d0056a9a:	ed9f 0a19 	vldr	s0, [pc, #100]	; d0056b00 <__ieee754_atan2f+0x12c>
d0056a9e:	ee77 7a80 	vadd.f32	s15, s15, s0
d0056aa2:	ed9f 0a18 	vldr	s0, [pc, #96]	; d0056b04 <__ieee754_atan2f+0x130>
d0056aa6:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0056aaa:	e7a6      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056aac:	eddf 7a10 	vldr	s15, [pc, #64]	; d0056af0 <__ieee754_atan2f+0x11c>
d0056ab0:	e7ed      	b.n	d0056a8e <__ieee754_atan2f+0xba>
d0056ab2:	eddf 7a15 	vldr	s15, [pc, #84]	; d0056b08 <__ieee754_atan2f+0x134>
d0056ab6:	e7ea      	b.n	d0056a8e <__ieee754_atan2f+0xba>
d0056ab8:	ee17 3a90 	vmov	r3, s15
d0056abc:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d0056ac0:	ee07 3a90 	vmov	s15, r3
d0056ac4:	e799      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056ac6:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d0056b00 <__ieee754_atan2f+0x12c>
d0056aca:	ee77 7a80 	vadd.f32	s15, s15, s0
d0056ace:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0056b04 <__ieee754_atan2f+0x130>
d0056ad2:	ee70 7a67 	vsub.f32	s15, s0, s15
d0056ad6:	e790      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056ad8:	eddf 7a0a 	vldr	s15, [pc, #40]	; d0056b04 <__ieee754_atan2f+0x130>
d0056adc:	e78d      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056ade:	eddf 7a0b 	vldr	s15, [pc, #44]	; d0056b0c <__ieee754_atan2f+0x138>
d0056ae2:	e78a      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056ae4:	eddf 7a08 	vldr	s15, [pc, #32]	; d0056b08 <__ieee754_atan2f+0x134>
d0056ae8:	e787      	b.n	d00569fa <__ieee754_atan2f+0x26>
d0056aea:	bf00      	nop
d0056aec:	c0490fdb 	.word	0xc0490fdb
d0056af0:	3fc90fdb 	.word	0x3fc90fdb
d0056af4:	bfc90fdb 	.word	0xbfc90fdb
d0056af8:	d0057b20 	.word	0xd0057b20
d0056afc:	d0057b2c 	.word	0xd0057b2c
d0056b00:	33bbbd2e 	.word	0x33bbbd2e
d0056b04:	40490fdb 	.word	0x40490fdb
d0056b08:	00000000 	.word	0x00000000
d0056b0c:	3f490fdb 	.word	0x3f490fdb

d0056b10 <__ieee754_fmodf>:
d0056b10:	b5f0      	push	{r4, r5, r6, r7, lr}
d0056b12:	ee10 6a90 	vmov	r6, s1
d0056b16:	f036 4500 	bics.w	r5, r6, #2147483648	; 0x80000000
d0056b1a:	d009      	beq.n	d0056b30 <__ieee754_fmodf+0x20>
d0056b1c:	ee10 2a10 	vmov	r2, s0
d0056b20:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
d0056b24:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056b28:	da02      	bge.n	d0056b30 <__ieee754_fmodf+0x20>
d0056b2a:	f1b5 4fff 	cmp.w	r5, #2139095040	; 0x7f800000
d0056b2e:	dd04      	ble.n	d0056b3a <__ieee754_fmodf+0x2a>
d0056b30:	ee60 0a20 	vmul.f32	s1, s0, s1
d0056b34:	ee80 0aa0 	vdiv.f32	s0, s1, s1
d0056b38:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056b3a:	42ab      	cmp	r3, r5
d0056b3c:	dbfc      	blt.n	d0056b38 <__ieee754_fmodf+0x28>
d0056b3e:	f002 4400 	and.w	r4, r2, #2147483648	; 0x80000000
d0056b42:	d106      	bne.n	d0056b52 <__ieee754_fmodf+0x42>
d0056b44:	4a32      	ldr	r2, [pc, #200]	; (d0056c10 <__ieee754_fmodf+0x100>)
d0056b46:	0fe3      	lsrs	r3, r4, #31
d0056b48:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0056b4c:	ed93 0a00 	vldr	s0, [r3]
d0056b50:	e7f2      	b.n	d0056b38 <__ieee754_fmodf+0x28>
d0056b52:	f012 4fff 	tst.w	r2, #2139095040	; 0x7f800000
d0056b56:	d13f      	bne.n	d0056bd8 <__ieee754_fmodf+0xc8>
d0056b58:	0219      	lsls	r1, r3, #8
d0056b5a:	f06f 007d 	mvn.w	r0, #125	; 0x7d
d0056b5e:	2900      	cmp	r1, #0
d0056b60:	dc37      	bgt.n	d0056bd2 <__ieee754_fmodf+0xc2>
d0056b62:	f016 4fff 	tst.w	r6, #2139095040	; 0x7f800000
d0056b66:	d13d      	bne.n	d0056be4 <__ieee754_fmodf+0xd4>
d0056b68:	022f      	lsls	r7, r5, #8
d0056b6a:	f06f 017d 	mvn.w	r1, #125	; 0x7d
d0056b6e:	2f00      	cmp	r7, #0
d0056b70:	da35      	bge.n	d0056bde <__ieee754_fmodf+0xce>
d0056b72:	f110 0f7e 	cmn.w	r0, #126	; 0x7e
d0056b76:	bfbb      	ittet	lt
d0056b78:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0056b7c:	1a12      	sublt	r2, r2, r0
d0056b7e:	f3c2 0316 	ubfxge	r3, r2, #0, #23
d0056b82:	4093      	lsllt	r3, r2
d0056b84:	bfa8      	it	ge
d0056b86:	f443 0300 	orrge.w	r3, r3, #8388608	; 0x800000
d0056b8a:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d0056b8e:	bfb5      	itete	lt
d0056b90:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0056b94:	f3c6 0516 	ubfxge	r5, r6, #0, #23
d0056b98:	1a52      	sublt	r2, r2, r1
d0056b9a:	f445 0500 	orrge.w	r5, r5, #8388608	; 0x800000
d0056b9e:	bfb8      	it	lt
d0056ba0:	4095      	lsllt	r5, r2
d0056ba2:	1a40      	subs	r0, r0, r1
d0056ba4:	1b5a      	subs	r2, r3, r5
d0056ba6:	bb00      	cbnz	r0, d0056bea <__ieee754_fmodf+0xda>
d0056ba8:	ea13 0322 	ands.w	r3, r3, r2, asr #32
d0056bac:	bf38      	it	cc
d0056bae:	4613      	movcc	r3, r2
d0056bb0:	2b00      	cmp	r3, #0
d0056bb2:	d0c7      	beq.n	d0056b44 <__ieee754_fmodf+0x34>
d0056bb4:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
d0056bb8:	db1f      	blt.n	d0056bfa <__ieee754_fmodf+0xea>
d0056bba:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d0056bbe:	db1f      	blt.n	d0056c00 <__ieee754_fmodf+0xf0>
d0056bc0:	f5a3 0300 	sub.w	r3, r3, #8388608	; 0x800000
d0056bc4:	317f      	adds	r1, #127	; 0x7f
d0056bc6:	4323      	orrs	r3, r4
d0056bc8:	ea43 53c1 	orr.w	r3, r3, r1, lsl #23
d0056bcc:	ee00 3a10 	vmov	s0, r3
d0056bd0:	e7b2      	b.n	d0056b38 <__ieee754_fmodf+0x28>
d0056bd2:	3801      	subs	r0, #1
d0056bd4:	0049      	lsls	r1, r1, #1
d0056bd6:	e7c2      	b.n	d0056b5e <__ieee754_fmodf+0x4e>
d0056bd8:	15d8      	asrs	r0, r3, #23
d0056bda:	387f      	subs	r0, #127	; 0x7f
d0056bdc:	e7c1      	b.n	d0056b62 <__ieee754_fmodf+0x52>
d0056bde:	3901      	subs	r1, #1
d0056be0:	007f      	lsls	r7, r7, #1
d0056be2:	e7c4      	b.n	d0056b6e <__ieee754_fmodf+0x5e>
d0056be4:	15e9      	asrs	r1, r5, #23
d0056be6:	397f      	subs	r1, #127	; 0x7f
d0056be8:	e7c3      	b.n	d0056b72 <__ieee754_fmodf+0x62>
d0056bea:	2a00      	cmp	r2, #0
d0056bec:	da02      	bge.n	d0056bf4 <__ieee754_fmodf+0xe4>
d0056bee:	005b      	lsls	r3, r3, #1
d0056bf0:	3801      	subs	r0, #1
d0056bf2:	e7d7      	b.n	d0056ba4 <__ieee754_fmodf+0x94>
d0056bf4:	d0a6      	beq.n	d0056b44 <__ieee754_fmodf+0x34>
d0056bf6:	0053      	lsls	r3, r2, #1
d0056bf8:	e7fa      	b.n	d0056bf0 <__ieee754_fmodf+0xe0>
d0056bfa:	005b      	lsls	r3, r3, #1
d0056bfc:	3901      	subs	r1, #1
d0056bfe:	e7d9      	b.n	d0056bb4 <__ieee754_fmodf+0xa4>
d0056c00:	f1c1 21ff 	rsb	r1, r1, #4278255360	; 0xff00ff00
d0056c04:	f501 017f 	add.w	r1, r1, #16711680	; 0xff0000
d0056c08:	3182      	adds	r1, #130	; 0x82
d0056c0a:	410b      	asrs	r3, r1
d0056c0c:	4323      	orrs	r3, r4
d0056c0e:	e7dd      	b.n	d0056bcc <__ieee754_fmodf+0xbc>
d0056c10:	d0057b38 	.word	0xd0057b38

d0056c14 <atanf>:
d0056c14:	b538      	push	{r3, r4, r5, lr}
d0056c16:	ee10 5a10 	vmov	r5, s0
d0056c1a:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d0056c1e:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d0056c22:	eef0 7a40 	vmov.f32	s15, s0
d0056c26:	db0f      	blt.n	d0056c48 <atanf+0x34>
d0056c28:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d0056c2c:	dd04      	ble.n	d0056c38 <atanf+0x24>
d0056c2e:	ee70 7a00 	vadd.f32	s15, s0, s0
d0056c32:	eeb0 0a67 	vmov.f32	s0, s15
d0056c36:	bd38      	pop	{r3, r4, r5, pc}
d0056c38:	eddf 7a4d 	vldr	s15, [pc, #308]	; d0056d70 <atanf+0x15c>
d0056c3c:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d0056d74 <atanf+0x160>
d0056c40:	2d00      	cmp	r5, #0
d0056c42:	fe77 7a80 	vselgt.f32	s15, s15, s0
d0056c46:	e7f4      	b.n	d0056c32 <atanf+0x1e>
d0056c48:	4b4b      	ldr	r3, [pc, #300]	; (d0056d78 <atanf+0x164>)
d0056c4a:	429c      	cmp	r4, r3
d0056c4c:	dc10      	bgt.n	d0056c70 <atanf+0x5c>
d0056c4e:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d0056c52:	da0a      	bge.n	d0056c6a <atanf+0x56>
d0056c54:	ed9f 7a49 	vldr	s14, [pc, #292]	; d0056d7c <atanf+0x168>
d0056c58:	ee30 7a07 	vadd.f32	s14, s0, s14
d0056c5c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0056c60:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0056c64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056c68:	dce3      	bgt.n	d0056c32 <atanf+0x1e>
d0056c6a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0056c6e:	e013      	b.n	d0056c98 <atanf+0x84>
d0056c70:	f000 f8a4 	bl	d0056dbc <fabsf>
d0056c74:	4b42      	ldr	r3, [pc, #264]	; (d0056d80 <atanf+0x16c>)
d0056c76:	429c      	cmp	r4, r3
d0056c78:	dc4f      	bgt.n	d0056d1a <atanf+0x106>
d0056c7a:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d0056c7e:	429c      	cmp	r4, r3
d0056c80:	dc41      	bgt.n	d0056d06 <atanf+0xf2>
d0056c82:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0056c86:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d0056c8a:	eea0 7a27 	vfma.f32	s14, s0, s15
d0056c8e:	2300      	movs	r3, #0
d0056c90:	ee30 0a27 	vadd.f32	s0, s0, s15
d0056c94:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0056c98:	1c5a      	adds	r2, r3, #1
d0056c9a:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0056c9e:	eddf 5a39 	vldr	s11, [pc, #228]	; d0056d84 <atanf+0x170>
d0056ca2:	ed9f 6a39 	vldr	s12, [pc, #228]	; d0056d88 <atanf+0x174>
d0056ca6:	ed9f 5a39 	vldr	s10, [pc, #228]	; d0056d8c <atanf+0x178>
d0056caa:	ed9f 0a39 	vldr	s0, [pc, #228]	; d0056d90 <atanf+0x17c>
d0056cae:	ee26 7aa6 	vmul.f32	s14, s13, s13
d0056cb2:	eea7 6a25 	vfma.f32	s12, s14, s11
d0056cb6:	eddf 5a37 	vldr	s11, [pc, #220]	; d0056d94 <atanf+0x180>
d0056cba:	eee6 5a07 	vfma.f32	s11, s12, s14
d0056cbe:	ed9f 6a36 	vldr	s12, [pc, #216]	; d0056d98 <atanf+0x184>
d0056cc2:	eea5 6a87 	vfma.f32	s12, s11, s14
d0056cc6:	eddf 5a35 	vldr	s11, [pc, #212]	; d0056d9c <atanf+0x188>
d0056cca:	eee6 5a07 	vfma.f32	s11, s12, s14
d0056cce:	ed9f 6a34 	vldr	s12, [pc, #208]	; d0056da0 <atanf+0x18c>
d0056cd2:	eea5 6a87 	vfma.f32	s12, s11, s14
d0056cd6:	eddf 5a33 	vldr	s11, [pc, #204]	; d0056da4 <atanf+0x190>
d0056cda:	eee7 5a05 	vfma.f32	s11, s14, s10
d0056cde:	ed9f 5a32 	vldr	s10, [pc, #200]	; d0056da8 <atanf+0x194>
d0056ce2:	eea5 5a87 	vfma.f32	s10, s11, s14
d0056ce6:	eddf 5a31 	vldr	s11, [pc, #196]	; d0056dac <atanf+0x198>
d0056cea:	eee5 5a07 	vfma.f32	s11, s10, s14
d0056cee:	eea5 0a87 	vfma.f32	s0, s11, s14
d0056cf2:	ee20 0a07 	vmul.f32	s0, s0, s14
d0056cf6:	eea6 0a26 	vfma.f32	s0, s12, s13
d0056cfa:	ee27 0a80 	vmul.f32	s0, s15, s0
d0056cfe:	d121      	bne.n	d0056d44 <atanf+0x130>
d0056d00:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0056d04:	e795      	b.n	d0056c32 <atanf+0x1e>
d0056d06:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0056d0a:	ee30 7a67 	vsub.f32	s14, s0, s15
d0056d0e:	ee30 0a27 	vadd.f32	s0, s0, s15
d0056d12:	2301      	movs	r3, #1
d0056d14:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0056d18:	e7be      	b.n	d0056c98 <atanf+0x84>
d0056d1a:	4b25      	ldr	r3, [pc, #148]	; (d0056db0 <atanf+0x19c>)
d0056d1c:	429c      	cmp	r4, r3
d0056d1e:	dc0b      	bgt.n	d0056d38 <atanf+0x124>
d0056d20:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d0056d24:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0056d28:	eea0 7a27 	vfma.f32	s14, s0, s15
d0056d2c:	2302      	movs	r3, #2
d0056d2e:	ee70 6a67 	vsub.f32	s13, s0, s15
d0056d32:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0056d36:	e7af      	b.n	d0056c98 <atanf+0x84>
d0056d38:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d0056d3c:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0056d40:	2303      	movs	r3, #3
d0056d42:	e7a9      	b.n	d0056c98 <atanf+0x84>
d0056d44:	4a1b      	ldr	r2, [pc, #108]	; (d0056db4 <atanf+0x1a0>)
d0056d46:	491c      	ldr	r1, [pc, #112]	; (d0056db8 <atanf+0x1a4>)
d0056d48:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d0056d4c:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0056d50:	ed93 7a00 	vldr	s14, [r3]
d0056d54:	ee30 0a47 	vsub.f32	s0, s0, s14
d0056d58:	2d00      	cmp	r5, #0
d0056d5a:	ee70 7a67 	vsub.f32	s15, s0, s15
d0056d5e:	ed92 0a00 	vldr	s0, [r2]
d0056d62:	ee70 7a67 	vsub.f32	s15, s0, s15
d0056d66:	bfb8      	it	lt
d0056d68:	eef1 7a67 	vneglt.f32	s15, s15
d0056d6c:	e761      	b.n	d0056c32 <atanf+0x1e>
d0056d6e:	bf00      	nop
d0056d70:	3fc90fdb 	.word	0x3fc90fdb
d0056d74:	bfc90fdb 	.word	0xbfc90fdb
d0056d78:	3edfffff 	.word	0x3edfffff
d0056d7c:	7149f2ca 	.word	0x7149f2ca
d0056d80:	3f97ffff 	.word	0x3f97ffff
d0056d84:	3c8569d7 	.word	0x3c8569d7
d0056d88:	3d4bda59 	.word	0x3d4bda59
d0056d8c:	bd15a221 	.word	0xbd15a221
d0056d90:	be4ccccd 	.word	0xbe4ccccd
d0056d94:	3d886b35 	.word	0x3d886b35
d0056d98:	3dba2e6e 	.word	0x3dba2e6e
d0056d9c:	3e124925 	.word	0x3e124925
d0056da0:	3eaaaaab 	.word	0x3eaaaaab
d0056da4:	bd6ef16b 	.word	0xbd6ef16b
d0056da8:	bd9d8795 	.word	0xbd9d8795
d0056dac:	bde38e38 	.word	0xbde38e38
d0056db0:	401bffff 	.word	0x401bffff
d0056db4:	d0057b40 	.word	0xd0057b40
d0056db8:	d0057b50 	.word	0xd0057b50

d0056dbc <fabsf>:
d0056dbc:	ee10 3a10 	vmov	r3, s0
d0056dc0:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d0056dc4:	ee00 3a10 	vmov	s0, r3
d0056dc8:	4770      	bx	lr
	...

d0056dcc <__aeabi_drsub>:
d0056dcc:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0056dd0:	e002      	b.n	d0056dd8 <__adddf3>
d0056dd2:	bf00      	nop

d0056dd4 <__aeabi_dsub>:
d0056dd4:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d0056dd8 <__adddf3>:
d0056dd8:	b530      	push	{r4, r5, lr}
d0056dda:	ea4f 0441 	mov.w	r4, r1, lsl #1
d0056dde:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0056de2:	ea94 0f05 	teq	r4, r5
d0056de6:	bf08      	it	eq
d0056de8:	ea90 0f02 	teqeq	r0, r2
d0056dec:	bf1f      	itttt	ne
d0056dee:	ea54 0c00 	orrsne.w	ip, r4, r0
d0056df2:	ea55 0c02 	orrsne.w	ip, r5, r2
d0056df6:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d0056dfa:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0056dfe:	f000 80e2 	beq.w	d0056fc6 <__adddf3+0x1ee>
d0056e02:	ea4f 5454 	mov.w	r4, r4, lsr #21
d0056e06:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d0056e0a:	bfb8      	it	lt
d0056e0c:	426d      	neglt	r5, r5
d0056e0e:	dd0c      	ble.n	d0056e2a <__adddf3+0x52>
d0056e10:	442c      	add	r4, r5
d0056e12:	ea80 0202 	eor.w	r2, r0, r2
d0056e16:	ea81 0303 	eor.w	r3, r1, r3
d0056e1a:	ea82 0000 	eor.w	r0, r2, r0
d0056e1e:	ea83 0101 	eor.w	r1, r3, r1
d0056e22:	ea80 0202 	eor.w	r2, r0, r2
d0056e26:	ea81 0303 	eor.w	r3, r1, r3
d0056e2a:	2d36      	cmp	r5, #54	; 0x36
d0056e2c:	bf88      	it	hi
d0056e2e:	bd30      	pophi	{r4, r5, pc}
d0056e30:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0056e34:	ea4f 3101 	mov.w	r1, r1, lsl #12
d0056e38:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d0056e3c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0056e40:	d002      	beq.n	d0056e48 <__adddf3+0x70>
d0056e42:	4240      	negs	r0, r0
d0056e44:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0056e48:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d0056e4c:	ea4f 3303 	mov.w	r3, r3, lsl #12
d0056e50:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0056e54:	d002      	beq.n	d0056e5c <__adddf3+0x84>
d0056e56:	4252      	negs	r2, r2
d0056e58:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d0056e5c:	ea94 0f05 	teq	r4, r5
d0056e60:	f000 80a7 	beq.w	d0056fb2 <__adddf3+0x1da>
d0056e64:	f1a4 0401 	sub.w	r4, r4, #1
d0056e68:	f1d5 0e20 	rsbs	lr, r5, #32
d0056e6c:	db0d      	blt.n	d0056e8a <__adddf3+0xb2>
d0056e6e:	fa02 fc0e 	lsl.w	ip, r2, lr
d0056e72:	fa22 f205 	lsr.w	r2, r2, r5
d0056e76:	1880      	adds	r0, r0, r2
d0056e78:	f141 0100 	adc.w	r1, r1, #0
d0056e7c:	fa03 f20e 	lsl.w	r2, r3, lr
d0056e80:	1880      	adds	r0, r0, r2
d0056e82:	fa43 f305 	asr.w	r3, r3, r5
d0056e86:	4159      	adcs	r1, r3
d0056e88:	e00e      	b.n	d0056ea8 <__adddf3+0xd0>
d0056e8a:	f1a5 0520 	sub.w	r5, r5, #32
d0056e8e:	f10e 0e20 	add.w	lr, lr, #32
d0056e92:	2a01      	cmp	r2, #1
d0056e94:	fa03 fc0e 	lsl.w	ip, r3, lr
d0056e98:	bf28      	it	cs
d0056e9a:	f04c 0c02 	orrcs.w	ip, ip, #2
d0056e9e:	fa43 f305 	asr.w	r3, r3, r5
d0056ea2:	18c0      	adds	r0, r0, r3
d0056ea4:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d0056ea8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0056eac:	d507      	bpl.n	d0056ebe <__adddf3+0xe6>
d0056eae:	f04f 0e00 	mov.w	lr, #0
d0056eb2:	f1dc 0c00 	rsbs	ip, ip, #0
d0056eb6:	eb7e 0000 	sbcs.w	r0, lr, r0
d0056eba:	eb6e 0101 	sbc.w	r1, lr, r1
d0056ebe:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d0056ec2:	d31b      	bcc.n	d0056efc <__adddf3+0x124>
d0056ec4:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d0056ec8:	d30c      	bcc.n	d0056ee4 <__adddf3+0x10c>
d0056eca:	0849      	lsrs	r1, r1, #1
d0056ecc:	ea5f 0030 	movs.w	r0, r0, rrx
d0056ed0:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0056ed4:	f104 0401 	add.w	r4, r4, #1
d0056ed8:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0056edc:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0056ee0:	f080 809a 	bcs.w	d0057018 <__adddf3+0x240>
d0056ee4:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d0056ee8:	bf08      	it	eq
d0056eea:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d0056eee:	f150 0000 	adcs.w	r0, r0, #0
d0056ef2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d0056ef6:	ea41 0105 	orr.w	r1, r1, r5
d0056efa:	bd30      	pop	{r4, r5, pc}
d0056efc:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0056f00:	4140      	adcs	r0, r0
d0056f02:	eb41 0101 	adc.w	r1, r1, r1
d0056f06:	3c01      	subs	r4, #1
d0056f08:	bf28      	it	cs
d0056f0a:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d0056f0e:	d2e9      	bcs.n	d0056ee4 <__adddf3+0x10c>
d0056f10:	f091 0f00 	teq	r1, #0
d0056f14:	bf04      	itt	eq
d0056f16:	4601      	moveq	r1, r0
d0056f18:	2000      	moveq	r0, #0
d0056f1a:	fab1 f381 	clz	r3, r1
d0056f1e:	bf08      	it	eq
d0056f20:	3320      	addeq	r3, #32
d0056f22:	f1a3 030b 	sub.w	r3, r3, #11
d0056f26:	f1b3 0220 	subs.w	r2, r3, #32
d0056f2a:	da0c      	bge.n	d0056f46 <__adddf3+0x16e>
d0056f2c:	320c      	adds	r2, #12
d0056f2e:	dd08      	ble.n	d0056f42 <__adddf3+0x16a>
d0056f30:	f102 0c14 	add.w	ip, r2, #20
d0056f34:	f1c2 020c 	rsb	r2, r2, #12
d0056f38:	fa01 f00c 	lsl.w	r0, r1, ip
d0056f3c:	fa21 f102 	lsr.w	r1, r1, r2
d0056f40:	e00c      	b.n	d0056f5c <__adddf3+0x184>
d0056f42:	f102 0214 	add.w	r2, r2, #20
d0056f46:	bfd8      	it	le
d0056f48:	f1c2 0c20 	rsble	ip, r2, #32
d0056f4c:	fa01 f102 	lsl.w	r1, r1, r2
d0056f50:	fa20 fc0c 	lsr.w	ip, r0, ip
d0056f54:	bfdc      	itt	le
d0056f56:	ea41 010c 	orrle.w	r1, r1, ip
d0056f5a:	4090      	lslle	r0, r2
d0056f5c:	1ae4      	subs	r4, r4, r3
d0056f5e:	bfa2      	ittt	ge
d0056f60:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0056f64:	4329      	orrge	r1, r5
d0056f66:	bd30      	popge	{r4, r5, pc}
d0056f68:	ea6f 0404 	mvn.w	r4, r4
d0056f6c:	3c1f      	subs	r4, #31
d0056f6e:	da1c      	bge.n	d0056faa <__adddf3+0x1d2>
d0056f70:	340c      	adds	r4, #12
d0056f72:	dc0e      	bgt.n	d0056f92 <__adddf3+0x1ba>
d0056f74:	f104 0414 	add.w	r4, r4, #20
d0056f78:	f1c4 0220 	rsb	r2, r4, #32
d0056f7c:	fa20 f004 	lsr.w	r0, r0, r4
d0056f80:	fa01 f302 	lsl.w	r3, r1, r2
d0056f84:	ea40 0003 	orr.w	r0, r0, r3
d0056f88:	fa21 f304 	lsr.w	r3, r1, r4
d0056f8c:	ea45 0103 	orr.w	r1, r5, r3
d0056f90:	bd30      	pop	{r4, r5, pc}
d0056f92:	f1c4 040c 	rsb	r4, r4, #12
d0056f96:	f1c4 0220 	rsb	r2, r4, #32
d0056f9a:	fa20 f002 	lsr.w	r0, r0, r2
d0056f9e:	fa01 f304 	lsl.w	r3, r1, r4
d0056fa2:	ea40 0003 	orr.w	r0, r0, r3
d0056fa6:	4629      	mov	r1, r5
d0056fa8:	bd30      	pop	{r4, r5, pc}
d0056faa:	fa21 f004 	lsr.w	r0, r1, r4
d0056fae:	4629      	mov	r1, r5
d0056fb0:	bd30      	pop	{r4, r5, pc}
d0056fb2:	f094 0f00 	teq	r4, #0
d0056fb6:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d0056fba:	bf06      	itte	eq
d0056fbc:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0056fc0:	3401      	addeq	r4, #1
d0056fc2:	3d01      	subne	r5, #1
d0056fc4:	e74e      	b.n	d0056e64 <__adddf3+0x8c>
d0056fc6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0056fca:	bf18      	it	ne
d0056fcc:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0056fd0:	d029      	beq.n	d0057026 <__adddf3+0x24e>
d0056fd2:	ea94 0f05 	teq	r4, r5
d0056fd6:	bf08      	it	eq
d0056fd8:	ea90 0f02 	teqeq	r0, r2
d0056fdc:	d005      	beq.n	d0056fea <__adddf3+0x212>
d0056fde:	ea54 0c00 	orrs.w	ip, r4, r0
d0056fe2:	bf04      	itt	eq
d0056fe4:	4619      	moveq	r1, r3
d0056fe6:	4610      	moveq	r0, r2
d0056fe8:	bd30      	pop	{r4, r5, pc}
d0056fea:	ea91 0f03 	teq	r1, r3
d0056fee:	bf1e      	ittt	ne
d0056ff0:	2100      	movne	r1, #0
d0056ff2:	2000      	movne	r0, #0
d0056ff4:	bd30      	popne	{r4, r5, pc}
d0056ff6:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d0056ffa:	d105      	bne.n	d0057008 <__adddf3+0x230>
d0056ffc:	0040      	lsls	r0, r0, #1
d0056ffe:	4149      	adcs	r1, r1
d0057000:	bf28      	it	cs
d0057002:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0057006:	bd30      	pop	{r4, r5, pc}
d0057008:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d005700c:	bf3c      	itt	cc
d005700e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0057012:	bd30      	popcc	{r4, r5, pc}
d0057014:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0057018:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d005701c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0057020:	f04f 0000 	mov.w	r0, #0
d0057024:	bd30      	pop	{r4, r5, pc}
d0057026:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005702a:	bf1a      	itte	ne
d005702c:	4619      	movne	r1, r3
d005702e:	4610      	movne	r0, r2
d0057030:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0057034:	bf1c      	itt	ne
d0057036:	460b      	movne	r3, r1
d0057038:	4602      	movne	r2, r0
d005703a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005703e:	bf06      	itte	eq
d0057040:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0057044:	ea91 0f03 	teqeq	r1, r3
d0057048:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005704c:	bd30      	pop	{r4, r5, pc}
d005704e:	bf00      	nop

d0057050 <__aeabi_ui2d>:
d0057050:	f090 0f00 	teq	r0, #0
d0057054:	bf04      	itt	eq
d0057056:	2100      	moveq	r1, #0
d0057058:	4770      	bxeq	lr
d005705a:	b530      	push	{r4, r5, lr}
d005705c:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057060:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057064:	f04f 0500 	mov.w	r5, #0
d0057068:	f04f 0100 	mov.w	r1, #0
d005706c:	e750      	b.n	d0056f10 <__adddf3+0x138>
d005706e:	bf00      	nop

d0057070 <__aeabi_i2d>:
d0057070:	f090 0f00 	teq	r0, #0
d0057074:	bf04      	itt	eq
d0057076:	2100      	moveq	r1, #0
d0057078:	4770      	bxeq	lr
d005707a:	b530      	push	{r4, r5, lr}
d005707c:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057080:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057084:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0057088:	bf48      	it	mi
d005708a:	4240      	negmi	r0, r0
d005708c:	f04f 0100 	mov.w	r1, #0
d0057090:	e73e      	b.n	d0056f10 <__adddf3+0x138>
d0057092:	bf00      	nop

d0057094 <__aeabi_f2d>:
d0057094:	0042      	lsls	r2, r0, #1
d0057096:	ea4f 01e2 	mov.w	r1, r2, asr #3
d005709a:	ea4f 0131 	mov.w	r1, r1, rrx
d005709e:	ea4f 7002 	mov.w	r0, r2, lsl #28
d00570a2:	bf1f      	itttt	ne
d00570a4:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d00570a8:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d00570ac:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d00570b0:	4770      	bxne	lr
d00570b2:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d00570b6:	bf08      	it	eq
d00570b8:	4770      	bxeq	lr
d00570ba:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d00570be:	bf04      	itt	eq
d00570c0:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d00570c4:	4770      	bxeq	lr
d00570c6:	b530      	push	{r4, r5, lr}
d00570c8:	f44f 7460 	mov.w	r4, #896	; 0x380
d00570cc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d00570d0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d00570d4:	e71c      	b.n	d0056f10 <__adddf3+0x138>
d00570d6:	bf00      	nop

d00570d8 <__aeabi_ul2d>:
d00570d8:	ea50 0201 	orrs.w	r2, r0, r1
d00570dc:	bf08      	it	eq
d00570de:	4770      	bxeq	lr
d00570e0:	b530      	push	{r4, r5, lr}
d00570e2:	f04f 0500 	mov.w	r5, #0
d00570e6:	e00a      	b.n	d00570fe <__aeabi_l2d+0x16>

d00570e8 <__aeabi_l2d>:
d00570e8:	ea50 0201 	orrs.w	r2, r0, r1
d00570ec:	bf08      	it	eq
d00570ee:	4770      	bxeq	lr
d00570f0:	b530      	push	{r4, r5, lr}
d00570f2:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d00570f6:	d502      	bpl.n	d00570fe <__aeabi_l2d+0x16>
d00570f8:	4240      	negs	r0, r0
d00570fa:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d00570fe:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057102:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057106:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005710a:	f43f aed8 	beq.w	d0056ebe <__adddf3+0xe6>
d005710e:	f04f 0203 	mov.w	r2, #3
d0057112:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0057116:	bf18      	it	ne
d0057118:	3203      	addne	r2, #3
d005711a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005711e:	bf18      	it	ne
d0057120:	3203      	addne	r2, #3
d0057122:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0057126:	f1c2 0320 	rsb	r3, r2, #32
d005712a:	fa00 fc03 	lsl.w	ip, r0, r3
d005712e:	fa20 f002 	lsr.w	r0, r0, r2
d0057132:	fa01 fe03 	lsl.w	lr, r1, r3
d0057136:	ea40 000e 	orr.w	r0, r0, lr
d005713a:	fa21 f102 	lsr.w	r1, r1, r2
d005713e:	4414      	add	r4, r2
d0057140:	e6bd      	b.n	d0056ebe <__adddf3+0xe6>
d0057142:	bf00      	nop
d0057144:	46464952 	.word	0x46464952
d0057148:	00000000 	.word	0x00000000
d005714c:	45564157 	.word	0x45564157
d0057150:	00000000 	.word	0x00000000
d0057154:	6e756874 	.word	0x6e756874
d0057158:	31726564 	.word	0x31726564
d005715c:	7661772e 	.word	0x7661772e
d0057160:	00000000 	.word	0x00000000
d0057164:	6e756874 	.word	0x6e756874
d0057168:	32726564 	.word	0x32726564
d005716c:	7661772e 	.word	0x7661772e
d0057170:	00000000 	.word	0x00000000
d0057174:	746e616d 	.word	0x746e616d
d0057178:	6e655f61 	.word	0x6e655f61
d005717c:	772e3167 	.word	0x772e3167
d0057180:	00007661 	.word	0x00007661
d0057184:	70776570 	.word	0x70776570
d0057188:	772e7765 	.word	0x772e7765
d005718c:	00007661 	.word	0x00007661
d0057190:	72727574 	.word	0x72727574
d0057194:	2e317465 	.word	0x2e317465
d0057198:	64336273 	.word	0x64336273
d005719c:	00000000 	.word	0x00000000
d00571a0:	616c7369 	.word	0x616c7369
d00571a4:	2e78646e 	.word	0x2e78646e
d00571a8:	64336273 	.word	0x64336273
d00571ac:	00000000 	.word	0x00000000
d00571b0:	72726163 	.word	0x72726163
d00571b4:	2e726569 	.word	0x2e726569
d00571b8:	64336273 	.word	0x64336273
d00571bc:	00000000 	.word	0x00000000
d00571c0:	70696873 	.word	0x70696873
d00571c4:	732e3176 	.word	0x732e3176
d00571c8:	00643362 	.word	0x00643362
d00571cc:	74786574 	.word	0x74786574
d00571d0:	3362732e 	.word	0x3362732e
d00571d4:	00000064 	.word	0x00000064
d00571d8:	3a535046 	.word	0x3a535046
d00571dc:	2e756c25 	.word	0x2e756c25
d00571e0:	6c323025 	.word	0x6c323025
d00571e4:	4d202075 	.word	0x4d202075
d00571e8:	33253a53 	.word	0x33253a53
d00571ec:	252e756c 	.word	0x252e756c
d00571f0:	756c3330 	.word	0x756c3330
d00571f4:	50572020 	.word	0x50572020
d00571f8:	7532253a 	.word	0x7532253a
d00571fc:	52542020 	.word	0x52542020
d0057200:	253a5349 	.word	0x253a5349
d0057204:	0000756c 	.word	0x0000756c
d0057208:	497423f0 	.word	0x497423f0
d005720c:	497423f0 	.word	0x497423f0
d0057210:	497423f0 	.word	0x497423f0
d0057214:	ff5516e3 	.word	0xff5516e3
d0057218:	ffffffff 	.word	0xffffffff
d005721c:	ffff0000 	.word	0xffff0000
d0057220:	ff00ff00 	.word	0xff00ff00
d0057224:	ff0000ff 	.word	0xff0000ff
d0057228:	ffffff00 	.word	0xffffff00
d005722c:	ffff00ff 	.word	0xffff00ff
d0057230:	ff00ffff 	.word	0xff00ffff
d0057234:	ff808080 	.word	0xff808080
d0057238:	ffff8000 	.word	0xffff8000
d005723c:	ff8000ff 	.word	0xff8000ff
d0057240:	ff0080ff 	.word	0xff0080ff
d0057244:	ff80ff00 	.word	0xff80ff00
d0057248:	ffff0080 	.word	0xffff0080
d005724c:	ff00ff80 	.word	0xff00ff80
d0057250:	ffc0c0c0 	.word	0xffc0c0c0
d0057254:	3f800000 	.word	0x3f800000
d0057258:	3f400000 	.word	0x3f400000
d005725c:	3f0ccccd 	.word	0x3f0ccccd
d0057260:	3eb33333 	.word	0x3eb33333
d0057264:	3e4ccccd 	.word	0x3e4ccccd
d0057268:	bf800000 	.word	0xbf800000
d005726c:	bf000000 	.word	0xbf000000
d0057270:	3e99999a 	.word	0x3e99999a

d0057274 <museumRail>:
d0057274:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d0057284:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d005729c:	c1f00000 43340000 44870000 00000000     ......4C...D....
d00572ac:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d00572bc:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d00572cc:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d00572dc:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d00572ec:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d00572fc:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d005730c:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d005731c:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d005732c:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d005733c:	c487c000 43300000 43320000 00000000     ......0C..2C....
d005734c:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d005735c:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d005736c:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d005737c:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d005738c:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d005739c:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d00573ac:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d00573bc:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d00573cc:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d00573dc:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d00573ec:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d00573fc:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d005740c:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d005741c:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>
	...

d0057440 <bayer4x4>:
d0057440:	0a020800 060e040c 09010b03 050d070f     ................
	...

d0057460 <g_invBlockMinus1>:
	...
d0057468:	3f800000 3f000000 3eaaaaab 3e800000     ...?...?...>...>
d0057478:	3e4ccccd 3e2aaaab 3e124925 3e000000     ..L>..*>%I.>...>
d0057488:	3de38e39 3dcccccd 3dba2e8c 3daaaaab     9..=...=...=...=
d0057498:	3d9d89d9 3d924925 3d888889 3d800000     ...=%I.=...=...=
d00574a8:	3d70f0f1 3d638e39 3d579436 3d4ccccd     ..p=9.c=6.W=..L=
d00574b8:	3d430c31 3d3a2e8c 3d321643 3d2aaaab     1.C=..:=C.2=..*=
d00574c8:	3d23d70a 3d1d89d9 3d17b426 3d124925     ..#=...=&..=%I.=
d00574d8:	3d0d3dcb 3d088889 3d042108 3d000000     .=.=...=.!.=...=
d00574e8:	3cf83e10 3cf0f0f1 3cea0ea1 3ce38e39     .>.<...<...<9..<
d00574f8:	3cdd67c9 3cd79436 3cd20d21 3ccccccd     .g.<6..<!..<...<
d0057508:	3cc7ce0c 3cc30c31 3cbe82fa 3cba2e8c     ...<1..<...<...<
d0057518:	3cb60b61 3cb21643 3cae4c41 00000000     a..<C..<AL.<....
	...
d0057558:	3f800000 00000000 00000000 00000000     ...?............
d0057568:	3f800000 00000000 00000000 00000000     ...?............
d0057578:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d0057588:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d00575a4:	00000001 00000001 00000002 00000002     ................
d00575b4:	00000003 00000003 00000000 00000004     ................
d00575c4:	00000005 00000005 00000006 00000006     ................
d00575d4:	00000007 00000007 00000004 00000000     ................
d00575e4:	00000004 00000001 00000005 00000002     ................
d00575f4:	00000006 00000003 00000007 00000001     ................
d0057604:	00000002 00000002 00000003 00000001     ................
d0057614:	00000004 00000002 00000004 00000003     ................
d0057624:	00000004                                ....

d0057628 <__sf_fake_stderr>:
	...

d0057648 <__sf_fake_stdin>:
	...

d0057668 <__sf_fake_stdout>:
	...

d0057688 <_global_impure_ptr>:
d0057688:	d0059fb8 4e454552 616d2054 636f6c6c     ....REENT malloc
d0057698:	63757320 64656563 2f006465 6c697562      succeeded./buil
d00576a8:	6e672f64 6f742d75 2d736c6f 2d726f66     d/gnu-tools-for-
d00576b8:	336d7473 2d395f32 30323032 2d32712d     stm32_9-2020-q2-
d00576c8:	61647075 322e6574 31303230 2d313030     update.20201001-
d00576d8:	31323631 6372732f 77656e2f 2f62696c     1621/src/newlib/
d00576e8:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
d00576f8:	722f6269 2e646e61 202c0063 636e7566     ib/rand.c., func
d0057708:	6e6f6974 6100203a 72657373 6e6f6974     tion: .assertion
d0057718:	73252220 61662022 64656c69 6966203a      "%s" failed: fi
d0057728:	2220656c 2c227325 6e696c20 64252065     le "%s", line %d
d0057738:	73257325 2d23000a 00202b30 004c6c68     %s%s..#-0+ .hlL.
d0057748:	45676665 30004746 34333231 38373635     efgEFG.012345678
d0057758:	43424139 00464544 33323130 37363534     9ABCDEF.01234567
d0057768:	62613938 66656463 00000000 00000000     89abcdef........

d0057778 <__exp2f_data>:
d0057778:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0057788:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0057798:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d00577a8:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d00577b8:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d00577c8:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d00577d8:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d00577e8:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d00577f8:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0057808:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0057818:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0057828:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0057838:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0057848:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0057858:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0057868:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0057878:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0057888:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0057898:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d00578a8:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d00578b8:	ff0c52d6 3f962e42                       .R..B..?

d00578c0 <__logf_data>:
d00578c0:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d00578d0:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d00578e0:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d00578f0:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0057900:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0057910:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0057920:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0057930:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0057940:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0057950:	00000000 3ff00000 00000000 00000000     .......?........
d0057960:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0057970:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0057980:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0057990:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d00579a0:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d00579b0:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d00579c0:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d00579d0:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d00579e0 <__inv_pio4>:
d00579e0:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d00579f0:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0057a00:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0057a10:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0057a20:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0057a30:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0057a40 <__sincosf_table>:
d0057a40:	00000000 3ff00000 00000000 bff00000     .......?........
d0057a50:	00000000 bff00000 00000000 3ff00000     ...............?
d0057a60:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0057a70:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0057a80:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0057a90:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0057aa0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0057ab0:	00000000 3ff00000 00000000 bff00000     .......?........
d0057ac0:	00000000 bff00000 00000000 3ff00000     ...............?
d0057ad0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0057ae0:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d0057af0:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d0057b00:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d0057b10:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d0057b20 <CSWTCH.8>:
d0057b20:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d0057b2c <CSWTCH.9>:
d0057b2c:	80000000 40490fdb c0490fdb              ......I@..I.

d0057b38 <Zero>:
d0057b38:	00000000 80000000                       ........

d0057b40 <atanhi>:
d0057b40:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d0057b50 <atanlo>:
d0057b50:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d0057b60 <_init>:
d0057b60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0057b62:	bf00      	nop

Disassembly of section .fini:

d0057b64 <_fini>:
d0057b64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0057b66:	bf00      	nop
