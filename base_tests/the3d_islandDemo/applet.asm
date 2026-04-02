
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
d004b01e:	f00a fc51 	bl	d00558c4 <setbuf>
d004b022:	6833      	ldr	r3, [r6, #0]
d004b024:	2100      	movs	r1, #0
d004b026:	68d8      	ldr	r0, [r3, #12]
d004b028:	f00a fc4c 	bl	d00558c4 <setbuf>
d004b02c:	4629      	mov	r1, r5
d004b02e:	4620      	mov	r0, r4
d004b030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004b034:	f002 b844 	b.w	d004d0c0 <main>
d004b038:	d005a494 	.word	0xd005a494

d004b03c <initMalloc>:
d004b03c:	4902      	ldr	r1, [pc, #8]	; (d004b048 <initMalloc+0xc>)
d004b03e:	4b03      	ldr	r3, [pc, #12]	; (d004b04c <initMalloc+0x10>)
d004b040:	4a03      	ldr	r2, [pc, #12]	; (d004b050 <initMalloc+0x14>)
d004b042:	1a5b      	subs	r3, r3, r1
d004b044:	6013      	str	r3, [r2, #0]
d004b046:	4770      	bx	lr
d004b048:	d00fec48 	.word	0xd00fec48
d004b04c:	d0600000 	.word	0xd0600000
d004b050:	d00f49a8 	.word	0xd00f49a8

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
d004b09c:	f00a f8be 	bl	d005521c <__errno>
d004b0a0:	2209      	movs	r2, #9
d004b0a2:	4603      	mov	r3, r0
d004b0a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0a8:	601a      	str	r2, [r3, #0]
d004b0aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0ac:	d005a504 	.word	0xd005a504
d004b0b0:	2001f000 	.word	0x2001f000

d004b0b4 <_read>:
d004b0b4:	b508      	push	{r3, lr}
d004b0b6:	f00a f8b1 	bl	d005521c <__errno>
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
d004b102:	f00a f88b 	bl	d005521c <__errno>
d004b106:	220c      	movs	r2, #12
d004b108:	4603      	mov	r3, r0
d004b10a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b10e:	601a      	str	r2, [r3, #0]
d004b110:	bd10      	pop	{r4, pc}
d004b112:	bf00      	nop
d004b114:	d005a500 	.word	0xd005a500
d004b118:	d00fec48 	.word	0xd00fec48
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
d004b184:	f00a fa90 	bl	d00556a8 <memcmp>
d004b188:	b950      	cbnz	r0, d004b1a0 <LoadSFX+0x6c>
d004b18a:	2204      	movs	r2, #4
d004b18c:	492c      	ldr	r1, [pc, #176]	; (d004b240 <LoadSFX+0x10c>)
d004b18e:	a805      	add	r0, sp, #20
d004b190:	f00a fa8a 	bl	d00556a8 <memcmp>
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
d004b1c8:	f00a fa5e 	bl	d0055688 <malloc>
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
d004b23c:	d0057624 	.word	0xd0057624
d004b240:	d005762c 	.word	0xd005762c

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
d004b2b2:	f00b fdd1 	bl	d0056e58 <atan2f>
d004b2b6:	eef1 0ac9 	vsqrt.f32	s1, s18
d004b2ba:	eddf 7a36 	vldr	s15, [pc, #216]	; d004b394 <sr_steer_camera_to_tangent+0x150>
d004b2be:	eef0 9a40 	vmov.f32	s19, s0
d004b2c2:	eeb1 0a4a 	vneg.f32	s0, s20
d004b2c6:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d004b2ca:	f00b fdc5 	bl	d0056e58 <atan2f>
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
d004b358:	f005 ba3a 	b.w	d00507d0 <cameraRotate>
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
d004beec:	d00f4b60 	.word	0xd00f4b60
d004bef0:	d00f4b40 	.word	0xd00f4b40

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
d004bf3e:	f006 fbcd 	bl	d00526dc <lightEnable>
d004bf42:	4628      	mov	r0, r5
d004bf44:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d004c1f0 <weatherLightning+0x2fc>
d004bf48:	f006 fc5e 	bl	d0052808 <lightSetIntensity>
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
d004bfca:	f006 fb87 	bl	d00526dc <lightEnable>
d004bfce:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d004c1fc <weatherLightning+0x308>
d004bfd2:	ee07 4a90 	vmov	s15, r4
d004bfd6:	ed9a 0a00 	vldr	s0, [sl]
d004bfda:	4628      	mov	r0, r5
d004bfdc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004bfe0:	eea7 0a87 	vfma.f32	s0, s15, s14
d004bfe4:	f006 fc10 	bl	d0052808 <lightSetIntensity>
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
d004c04c:	f006 fb46 	bl	d00526dc <lightEnable>
d004c050:	4628      	mov	r0, r5
d004c052:	ed9f 0a67 	vldr	s0, [pc, #412]	; d004c1f0 <weatherLightning+0x2fc>
d004c056:	f006 fbd7 	bl	d0052808 <lightSetIntensity>
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
d004c1ca:	f006 fa87 	bl	d00526dc <lightEnable>
d004c1ce:	4628      	mov	r0, r5
d004c1d0:	ed9f 0a07 	vldr	s0, [pc, #28]	; d004c1f0 <weatherLightning+0x2fc>
d004c1d4:	f006 fb18 	bl	d0052808 <lightSetIntensity>
d004c1d8:	2300      	movs	r3, #0
d004c1da:	603b      	str	r3, [r7, #0]
d004c1dc:	e6c0      	b.n	d004bf60 <weatherLightning+0x6c>
d004c1de:	bf00      	nop
d004c1e0:	3dcccccd 	.word	0x3dcccccd
d004c1e4:	d005a450 	.word	0xd005a450
d004c1e8:	d005a710 	.word	0xd005a710
d004c1ec:	d005a448 	.word	0xd005a448
d004c1f0:	00000000 	.word	0x00000000
d004c1f4:	3c83126f 	.word	0x3c83126f
d004c1f8:	d005a588 	.word	0xd005a588
d004c1fc:	3ab3e71b 	.word	0x3ab3e71b
d004c200:	d005a58c 	.word	0xd005a58c
d004c204:	38cd000c 	.word	0x38cd000c
d004c208:	3ca3d70a 	.word	0x3ca3d70a
d004c20c:	d005a714 	.word	0xd005a714
d004c210:	3ad9d00e 	.word	0x3ad9d00e
d004c214:	3e99999a 	.word	0x3e99999a
d004c218:	3b33e71b 	.word	0x3b33e71b
d004c21c:	3f266666 	.word	0x3f266666
d004c220:	3776000e 	.word	0x3776000e
d004c224:	3ccccccd 	.word	0x3ccccccd
d004c228:	d005a584 	.word	0xd005a584
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
d004c348:	f008 fb24 	bl	d0054994 <sb3dParticleSpawnQuad>
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
d004c37c:	f008 fb52 	bl	d0054a24 <sb3dParticleSetPosition>
d004c380:	eeb0 0a48 	vmov.f32	s0, s16
d004c384:	6820      	ldr	r0, [r4, #0]
d004c386:	f008 fb65 	bl	d0054a54 <sb3dParticleSetSize>
d004c38a:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c38e:	6820      	ldr	r0, [r4, #0]
d004c390:	f008 fb76 	bl	d0054a80 <sb3dParticleSetShade>
d004c394:	2100      	movs	r1, #0
d004c396:	6820      	ldr	r0, [r4, #0]
d004c398:	f008 fb94 	bl	d0054ac4 <sb3dParticleSetEmission>
d004c39c:	42b4      	cmp	r4, r6
d004c39e:	d1c5      	bne.n	d004c32c <initImpactFlames+0xf4>
d004c3a0:	b006      	add	sp, #24
d004c3a2:	ecbd 8b02 	vpop	{d8}
d004c3a6:	bd70      	pop	{r4, r5, r6, pc}
d004c3a8:	00000000 	.word	0x00000000
d004c3ac:	d005a5a4 	.word	0xd005a5a4
d004c3b0:	d005a680 	.word	0xd005a680
d004c3b4:	d00576fc 	.word	0xd00576fc

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
d004c494:	f00a fc40 	bl	d0056d18 <sinf>
d004c498:	eee0 fa0d 	vfma.f32	s31, s0, s26
d004c49c:	eeb0 0a48 	vmov.f32	s0, s16
d004c4a0:	f00a fa56 	bl	d0056950 <cosf>
d004c4a4:	eef0 6a40 	vmov.f32	s13, s0
d004c4a8:	edd4 7a01 	vldr	s15, [r4, #4]
d004c4ac:	eeb0 0a48 	vmov.f32	s0, s16
d004c4b0:	ed94 7a02 	vldr	s14, [r4, #8]
d004c4b4:	eeb0 8a4a 	vmov.f32	s16, s20
d004c4b8:	eee6 7a89 	vfma.f32	s15, s13, s18
d004c4bc:	ee37 7a29 	vadd.f32	s14, s14, s19
d004c4c0:	ed8d 7a02 	vstr	s14, [sp, #8]
d004c4c4:	edcd 7a01 	vstr	s15, [sp, #4]
d004c4c8:	f00a fc26 	bl	d0056d18 <sinf>
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
d004c51e:	f008 fa81 	bl	d0054a24 <sb3dParticleSetPosition>
d004c522:	eeb0 0a48 	vmov.f32	s0, s16
d004c526:	4628      	mov	r0, r5
d004c528:	f008 fa94 	bl	d0054a54 <sb3dParticleSetSize>
d004c52c:	eeb0 0a6b 	vmov.f32	s0, s23
d004c530:	4628      	mov	r0, r5
d004c532:	f008 faa5 	bl	d0054a80 <sb3dParticleSetShade>
d004c536:	4649      	mov	r1, r9
d004c538:	4628      	mov	r0, r5
d004c53a:	f008 fab7 	bl	d0054aac <sb3dParticleSetColor>
d004c53e:	4628      	mov	r0, r5
d004c540:	21c8      	movs	r1, #200	; 0xc8
d004c542:	f008 fabf 	bl	d0054ac4 <sb3dParticleSetEmission>
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
d004c58e:	f008 fa49 	bl	d0054a24 <sb3dParticleSetPosition>
d004c592:	ed9f 0a54 	vldr	s0, [pc, #336]	; d004c6e4 <updateImpactFlames+0x32c>
d004c596:	4628      	mov	r0, r5
d004c598:	f008 fa5c 	bl	d0054a54 <sb3dParticleSetSize>
d004c59c:	4628      	mov	r0, r5
d004c59e:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5a2:	f008 fa6d 	bl	d0054a80 <sb3dParticleSetShade>
d004c5a6:	4631      	mov	r1, r6
d004c5a8:	4628      	mov	r0, r5
d004c5aa:	f008 fa8b 	bl	d0054ac4 <sb3dParticleSetEmission>
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
d004c5d0:	f008 fa28 	bl	d0054a24 <sb3dParticleSetPosition>
d004c5d4:	ed9f 0a43 	vldr	s0, [pc, #268]	; d004c6e4 <updateImpactFlames+0x32c>
d004c5d8:	4628      	mov	r0, r5
d004c5da:	f008 fa3b 	bl	d0054a54 <sb3dParticleSetSize>
d004c5de:	4628      	mov	r0, r5
d004c5e0:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5e4:	f008 fa4c 	bl	d0054a80 <sb3dParticleSetShade>
d004c5e8:	4628      	mov	r0, r5
d004c5ea:	2100      	movs	r1, #0
d004c5ec:	f008 fa6a 	bl	d0054ac4 <sb3dParticleSetEmission>
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
d004c612:	f008 fa07 	bl	d0054a24 <sb3dParticleSetPosition>
d004c616:	ed9f 0a33 	vldr	s0, [pc, #204]	; d004c6e4 <updateImpactFlames+0x32c>
d004c61a:	4628      	mov	r0, r5
d004c61c:	f008 fa1a 	bl	d0054a54 <sb3dParticleSetSize>
d004c620:	4628      	mov	r0, r5
d004c622:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c626:	f008 fa2b 	bl	d0054a80 <sb3dParticleSetShade>
d004c62a:	4628      	mov	r0, r5
d004c62c:	2100      	movs	r1, #0
d004c62e:	f008 fa49 	bl	d0054ac4 <sb3dParticleSetEmission>
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
d004c654:	f008 f9e6 	bl	d0054a24 <sb3dParticleSetPosition>
d004c658:	4628      	mov	r0, r5
d004c65a:	ed9f 0a22 	vldr	s0, [pc, #136]	; d004c6e4 <updateImpactFlames+0x32c>
d004c65e:	f008 f9f9 	bl	d0054a54 <sb3dParticleSetSize>
d004c662:	4628      	mov	r0, r5
d004c664:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c668:	f008 fa0a 	bl	d0054a80 <sb3dParticleSetShade>
d004c66c:	4628      	mov	r0, r5
d004c66e:	2100      	movs	r1, #0
d004c670:	f008 fa28 	bl	d0054ac4 <sb3dParticleSetEmission>
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
d004c698:	f008 f9c4 	bl	d0054a24 <sb3dParticleSetPosition>
d004c69c:	4630      	mov	r0, r6
d004c69e:	ed9f 0a11 	vldr	s0, [pc, #68]	; d004c6e4 <updateImpactFlames+0x32c>
d004c6a2:	f008 f9d7 	bl	d0054a54 <sb3dParticleSetSize>
d004c6a6:	4630      	mov	r0, r6
d004c6a8:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c6ac:	f008 f9e8 	bl	d0054a80 <sb3dParticleSetShade>
d004c6b0:	4629      	mov	r1, r5
d004c6b2:	4630      	mov	r0, r6
d004c6b4:	f008 fa06 	bl	d0054ac4 <sb3dParticleSetEmission>
d004c6b8:	e779      	b.n	d004c5ae <updateImpactFlames+0x1f6>
d004c6ba:	bf00      	nop
d004c6bc:	d005a5a4 	.word	0xd005a5a4
d004c6c0:	3f266666 	.word	0x3f266666
d004c6c4:	3eb33333 	.word	0x3eb33333
d004c6c8:	3fc90fdb 	.word	0x3fc90fdb
d004c6cc:	3fd9999a 	.word	0x3fd9999a
d004c6d0:	3c23d70a 	.word	0x3c23d70a
d004c6d4:	42200000 	.word	0x42200000
d004c6d8:	3e99999a 	.word	0x3e99999a
d004c6dc:	3f333333 	.word	0x3f333333
d004c6e0:	d00576fc 	.word	0xd00576fc
d004c6e4:	00000000 	.word	0x00000000
d004c6e8:	d005a684 	.word	0xd005a684

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
d004c708:	f008 ffea 	bl	d00556e0 <memset>
d004c70c:	2230      	movs	r2, #48	; 0x30
d004c70e:	2100      	movs	r1, #0
d004c710:	484b      	ldr	r0, [pc, #300]	; (d004c840 <InitLasers+0x154>)
d004c712:	f008 ffe5 	bl	d00556e0 <memset>
d004c716:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d004c71a:	466c      	mov	r4, sp
d004c71c:	4668      	mov	r0, sp
d004c71e:	ed9f 1a49 	vldr	s2, [pc, #292]	; d004c844 <InitLasers+0x158>
d004c722:	466f      	mov	r7, sp
d004c724:	eeb0 0a60 	vmov.f32	s0, s1
d004c728:	f005 f95e 	bl	d00519e8 <createBox>
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
d004c752:	f005 f949 	bl	d00519e8 <createBox>
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
d004c786:	f002 f917 	bl	d004e9b8 <meshSetMaterial>
d004c78a:	2122      	movs	r1, #34	; 0x22
d004c78c:	4648      	mov	r0, r9
d004c78e:	f004 ff6b 	bl	d0051668 <meshColour>
d004c792:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004c796:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c79a:	eeb0 2a48 	vmov.f32	s4, s16
d004c79e:	eeb0 1a61 	vmov.f32	s2, s3
d004c7a2:	eef0 0a61 	vmov.f32	s1, s3
d004c7a6:	eeb0 0a61 	vmov.f32	s0, s3
d004c7aa:	f002 f905 	bl	d004e9b8 <meshSetMaterial>
d004c7ae:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c7b2:	2127      	movs	r1, #39	; 0x27
d004c7b4:	f004 ff58 	bl	d0051668 <meshColour>
d004c7b8:	eddf 0a20 	vldr	s1, [pc, #128]	; d004c83c <InitLasers+0x150>
d004c7bc:	eeb0 1a48 	vmov.f32	s2, s16
d004c7c0:	3406      	adds	r4, #6
d004c7c2:	eeb0 0a60 	vmov.f32	s0, s1
d004c7c6:	f003 fef7 	bl	d00505b8 <vec3>
d004c7ca:	4648      	mov	r0, r9
d004c7cc:	f004 fe6c 	bl	d00514a8 <entityWorldSpawn>
d004c7d0:	f804 8c06 	strb.w	r8, [r4, #-6]
d004c7d4:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c7d8:	2100      	movs	r1, #0
d004c7da:	f824 8c04 	strh.w	r8, [r4, #-4]
d004c7de:	b280      	uxth	r0, r0
d004c7e0:	f005 fca8 	bl	d0052134 <entityVisible>
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
d004c804:	f003 fed8 	bl	d00505b8 <vec3>
d004c808:	4630      	mov	r0, r6
d004c80a:	f004 fe4d 	bl	d00514a8 <entityWorldSpawn>
d004c80e:	f804 5c06 	strb.w	r5, [r4, #-6]
d004c812:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c816:	2100      	movs	r1, #0
d004c818:	f824 5c04 	strh.w	r5, [r4, #-4]
d004c81c:	b280      	uxth	r0, r0
d004c81e:	f005 fc89 	bl	d0052134 <entityVisible>
d004c822:	42bc      	cmp	r4, r7
d004c824:	d1e7      	bne.n	d004c7f6 <InitLasers+0x10a>
d004c826:	b017      	add	sp, #92	; 0x5c
d004c828:	ecbd 8b02 	vpop	{d8}
d004c82c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004c830:	d00f4b0c 	.word	0xd00f4b0c
d004c834:	d00f4a40 	.word	0xd00f4a40
d004c838:	d00f4ba0 	.word	0xd00f4ba0
d004c83c:	00000000 	.word	0x00000000
d004c840:	d00f4be0 	.word	0xd00f4be0
d004c844:	42480000 	.word	0x42480000

d004c848 <FireTurret>:
d004c848:	b530      	push	{r4, r5, lr}
d004c84a:	ed2d 8b02 	vpush	{d8}
d004c84e:	b091      	sub	sp, #68	; 0x44
d004c850:	eeb0 8a60 	vmov.f32	s16, s1
d004c854:	4604      	mov	r4, r0
d004c856:	ed8d 0a01 	vstr	s0, [sp, #4]
d004c85a:	ed8d 1a03 	vstr	s2, [sp, #12]
d004c85e:	f004 fe8d 	bl	d005157c <entityGetPosition>
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
d004c88e:	f005 fbcb 	bl	d0052028 <entityLookAtPosition>
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
d004c8ea:	f004 fe65 	bl	d00515b8 <entityGetForward>
d004c8ee:	eddf 7a1b 	vldr	s15, [pc, #108]	; d004c95c <FireTurret+0x114>
d004c8f2:	eddd 0a05 	vldr	s1, [sp, #20]
d004c8f6:	ed9d 0a04 	vldr	s0, [sp, #16]
d004c8fa:	ee70 0aa7 	vadd.f32	s1, s1, s15
d004c8fe:	ed9d 1a06 	vldr	s2, [sp, #24]
d004c902:	88a0      	ldrh	r0, [r4, #4]
d004c904:	f004 fe16 	bl	d0051534 <entitySetPosition>
d004c908:	ed9f 1a16 	vldr	s2, [pc, #88]	; d004c964 <FireTurret+0x11c>
d004c90c:	4629      	mov	r1, r5
d004c90e:	ed9d 0a08 	vldr	s0, [sp, #32]
d004c912:	eef0 0a41 	vmov.f32	s1, s2
d004c916:	88a0      	ldrh	r0, [r4, #4]
d004c918:	f005 f856 	bl	d00519c8 <entityRotation>
d004c91c:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004c964 <FireTurret+0x11c>
d004c920:	88a0      	ldrh	r0, [r4, #4]
d004c922:	2100      	movs	r1, #0
d004c924:	eeb0 0a41 	vmov.f32	s0, s2
d004c928:	eddd 0a07 	vldr	s1, [sp, #28]
d004c92c:	f005 f84c 	bl	d00519c8 <entityRotation>
d004c930:	4629      	mov	r1, r5
d004c932:	88a0      	ldrh	r0, [r4, #4]
d004c934:	b011      	add	sp, #68	; 0x44
d004c936:	ecbd 8b02 	vpop	{d8}
d004c93a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004c93e:	f005 bbf9 	b.w	d0052134 <entityVisible>
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
d004c960:	d00f4b0c 	.word	0xd00f4b0c
d004c964:	00000000 	.word	0x00000000

d004c968 <UpdateTurretTest.part.0>:
d004c968:	b500      	push	{lr}
d004c96a:	b085      	sub	sp, #20
d004c96c:	f008 ff6a 	bl	d0055844 <rand>
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
d004c98e:	f004 fdf5 	bl	d005157c <entityGetPosition>
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
d004c9a8:	f008 ff4c 	bl	d0055844 <rand>
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
d004c9e2:	f008 ff2f 	bl	d0055844 <rand>
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
d004ca08:	d005a580 	.word	0xd005a580
d004ca0c:	d005a730 	.word	0xd005a730
d004ca10:	d005a734 	.word	0xd005a734
d004ca14:	66666667 	.word	0x66666667
d004ca18:	d005a736 	.word	0xd005a736
d004ca1c:	d005a520 	.word	0xd005a520
d004ca20:	2aaaaaab 	.word	0x2aaaaaab

d004ca24 <FirePlayerLaser>:
d004ca24:	b570      	push	{r4, r5, r6, lr}
d004ca26:	4db0      	ldr	r5, [pc, #704]	; (d004cce8 <FirePlayerLaser+0x2c4>)
d004ca28:	2100      	movs	r1, #0
d004ca2a:	4cb0      	ldr	r4, [pc, #704]	; (d004ccec <FirePlayerLaser+0x2c8>)
d004ca2c:	4628      	mov	r0, r5
d004ca2e:	ed2d 8b06 	vpush	{d8-d10}
d004ca32:	b086      	sub	sp, #24
d004ca34:	f003 ffa8 	bl	d0050988 <cameraGetRotation>
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
d004cbb6:	f004 fcbd 	bl	d0051534 <entitySetPosition>
d004cbba:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cbbe:	eeb0 0a4a 	vmov.f32	s0, s20
d004cbc2:	4631      	mov	r1, r6
d004cbc4:	eef0 0a41 	vmov.f32	s1, s2
d004cbc8:	88a8      	ldrh	r0, [r5, #4]
d004cbca:	f004 fefd 	bl	d00519c8 <entityRotation>
d004cbce:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cbd2:	88a8      	ldrh	r0, [r5, #4]
d004cbd4:	2100      	movs	r1, #0
d004cbd6:	eef1 0a69 	vneg.f32	s1, s19
d004cbda:	eeb0 0a41 	vmov.f32	s0, s2
d004cbde:	f004 fef3 	bl	d00519c8 <entityRotation>
d004cbe2:	4631      	mov	r1, r6
d004cbe4:	88a8      	ldrh	r0, [r5, #4]
d004cbe6:	f005 faa5 	bl	d0052134 <entityVisible>
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
d004cc82:	f004 fc57 	bl	d0051534 <entitySetPosition>
d004cc86:	ed9f 1a1c 	vldr	s2, [pc, #112]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cc8a:	eeb0 0a4a 	vmov.f32	s0, s20
d004cc8e:	4629      	mov	r1, r5
d004cc90:	eef0 0a41 	vmov.f32	s1, s2
d004cc94:	88b0      	ldrh	r0, [r6, #4]
d004cc96:	f004 fe97 	bl	d00519c8 <entityRotation>
d004cc9a:	ed9f 1a17 	vldr	s2, [pc, #92]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cc9e:	88b0      	ldrh	r0, [r6, #4]
d004cca0:	eef1 0a69 	vneg.f32	s1, s19
d004cca4:	eeb0 0a41 	vmov.f32	s0, s2
d004cca8:	2100      	movs	r1, #0
d004ccaa:	f004 fe8d 	bl	d00519c8 <entityRotation>
d004ccae:	4629      	mov	r1, r5
d004ccb0:	88b0      	ldrh	r0, [r6, #4]
d004ccb2:	f005 fa3f 	bl	d0052134 <entityVisible>
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
d004cce8:	d005a520 	.word	0xd005a520
d004ccec:	d00f4be0 	.word	0xd00f4be0
d004ccf0:	c2680000 	.word	0xc2680000
d004ccf4:	42680000 	.word	0x42680000
d004ccf8:	00000000 	.word	0x00000000
d004ccfc:	d005a70d 	.word	0xd005a70d
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
d004cd26:	f005 fa05 	bl	d0052134 <entityVisible>
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
d004cd46:	f004 fc59 	bl	d00515fc <entityMoveForward>
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
d004cd70:	f005 f9e0 	bl	d0052134 <entityVisible>
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
d004cd90:	f004 fc34 	bl	d00515fc <entityMoveForward>
d004cd94:	4969      	ldr	r1, [pc, #420]	; (d004cf3c <UpdateLasers+0x238>)
d004cd96:	2300      	movs	r3, #0
d004cd98:	aa01      	add	r2, sp, #4
d004cd9a:	88a0      	ldrh	r0, [r4, #4]
d004cd9c:	6809      	ldr	r1, [r1, #0]
d004cd9e:	f005 f9e3 	bl	d0052168 <entitySweepRaycastTest>
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
d004cdd0:	f003 fbf2 	bl	d00505b8 <vec3>
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
d004cf34:	d00f4b0c 	.word	0xd00f4b0c
d004cf38:	d00f4be0 	.word	0xd00f4be0
d004cf3c:	d005a704 	.word	0xd005a704
d004cf40:	d005a5a4 	.word	0xd005a5a4
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
d004cf72:	f007 fd0f 	bl	d0054994 <sb3dParticleSpawnQuad>
d004cf76:	f844 0f04 	str.w	r0, [r4, #4]!
d004cf7a:	42ac      	cmp	r4, r5
d004cf7c:	d1eb      	bne.n	d004cf56 <initSmoke+0xa>
d004cf7e:	b005      	add	sp, #20
d004cf80:	bd30      	pop	{r4, r5, pc}
d004cf82:	bf00      	nop
d004cf84:	d00f49bc 	.word	0xd00f49bc
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
d004cffa:	f009 ff2f 	bl	d0056e5c <fmodf>
d004cffe:	eeb0 8a40 	vmov.f32	s16, s0
d004d002:	eeb0 0a6b 	vmov.f32	s0, s23
d004d006:	eef0 ea69 	vmov.f32	s29, s19
d004d00a:	eea9 0a0d 	vfma.f32	s0, s18, s26
d004d00e:	f009 fe83 	bl	d0056d18 <sinf>
d004d012:	eef7 7a04 	vmov.f32	s15, #116	; 0x3fa00000  1.250
d004d016:	eef0 8a40 	vmov.f32	s17, s0
d004d01a:	eeb0 0a4b 	vmov.f32	s0, s22
d004d01e:	eee8 ea27 	vfma.f32	s29, s16, s15
d004d022:	ee68 8a8e 	vmul.f32	s17, s17, s28
d004d026:	eea9 0a2c 	vfma.f32	s0, s18, s25
d004d02a:	f009 fc91 	bl	d0056950 <cosf>
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
d004d060:	f007 fce0 	bl	d0054a24 <sb3dParticleSetPosition>
d004d064:	ee29 0a0e 	vmul.f32	s0, s18, s28
d004d068:	6820      	ldr	r0, [r4, #0]
d004d06a:	f007 fcf3 	bl	d0054a54 <sb3dParticleSetSize>
d004d06e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d072:	6820      	ldr	r0, [r4, #0]
d004d074:	ee38 0a00 	vadd.f32	s0, s16, s0
d004d078:	ee30 0a00 	vadd.f32	s0, s0, s0
d004d07c:	f007 fd00 	bl	d0054a80 <sb3dParticleSetShade>
d004d080:	2121      	movs	r1, #33	; 0x21
d004d082:	6820      	ldr	r0, [r4, #0]
d004d084:	f007 fd12 	bl	d0054aac <sb3dParticleSetColor>
d004d088:	2100      	movs	r1, #0
d004d08a:	6820      	ldr	r0, [r4, #0]
d004d08c:	f007 fd1a 	bl	d0054ac4 <sb3dParticleSetEmission>
d004d090:	42a7      	cmp	r7, r4
d004d092:	d1a1      	bne.n	d004cfd8 <updateSmoke+0x4c>
d004d094:	b009      	add	sp, #36	; 0x24
d004d096:	ecbd 8b0e 	vpop	{d8-d14}
d004d09a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004d09c:	3eb33333 	.word	0x3eb33333
d004d0a0:	3f99999a 	.word	0x3f99999a
d004d0a4:	3f666666 	.word	0x3f666666
d004d0a8:	d00f49bc 	.word	0xd00f49bc
d004d0ac:	3d000000 	.word	0x3d000000
d004d0b0:	3faf5c29 	.word	0x3faf5c29
d004d0b4:	3ff47ae1 	.word	0x3ff47ae1
d004d0b8:	43600000 	.word	0x43600000
d004d0bc:	00000000 	.word	0x00000000

d004d0c0 <main>:
d004d0c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004d0c4:	ed2d 8b10 	vpush	{d8-d15}
d004d0c8:	f5ad 4d8b 	sub.w	sp, sp, #17792	; 0x4580
d004d0cc:	4ccb      	ldr	r4, [pc, #812]	; (d004d3fc <main+0x33c>)
d004d0ce:	f244 2597 	movw	r5, #17047	; 0x4297
d004d0d2:	ed9f 8acb 	vldr	s16, [pc, #812]	; d004d400 <main+0x340>
d004d0d6:	b085      	sub	sp, #20
d004d0d8:	f8df b360 	ldr.w	fp, [pc, #864]	; d004d43c <main+0x37c>
d004d0dc:	f7fe fe82 	bl	d004bde4 <initSystem>
d004d0e0:	7d23      	ldrb	r3, [r4, #20]
d004d0e2:	7d62      	ldrb	r2, [r4, #21]
d004d0e4:	446d      	add	r5, sp
d004d0e6:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d0ea:	2100      	movs	r1, #0
d004d0ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d0f0:	7de2      	ldrb	r2, [r4, #23]
d004d0f2:	f025 051f 	bic.w	r5, r5, #31
d004d0f6:	f8df 8348 	ldr.w	r8, [pc, #840]	; d004d440 <main+0x380>
d004d0fa:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d0fe:	4fc1      	ldr	r7, [pc, #772]	; (d004d404 <main+0x344>)
d004d100:	f505 7020 	add.w	r0, r5, #640	; 0x280
d004d104:	f505 7610 	add.w	r6, r5, #576	; 0x240
d004d108:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d10c:	f505 72e0 	add.w	r2, r5, #448	; 0x1c0
d004d110:	9005      	str	r0, [sp, #20]
d004d112:	f505 7900 	add.w	r9, r5, #512	; 0x200
d004d116:	685b      	ldr	r3, [r3, #4]
d004d118:	f505 7aa0 	add.w	sl, r5, #320	; 0x140
d004d11c:	9207      	str	r2, [sp, #28]
d004d11e:	f505 72c0 	add.w	r2, r5, #384	; 0x180
d004d122:	48b9      	ldr	r0, [pc, #740]	; (d004d408 <main+0x348>)
d004d124:	681b      	ldr	r3, [r3, #0]
d004d126:	9606      	str	r6, [sp, #24]
d004d128:	9209      	str	r2, [sp, #36]	; 0x24
d004d12a:	4798      	blx	r3
d004d12c:	7b23      	ldrb	r3, [r4, #12]
d004d12e:	2064      	movs	r0, #100	; 0x64
d004d130:	7b62      	ldrb	r2, [r4, #13]
d004d132:	7ba1      	ldrb	r1, [r4, #14]
d004d134:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d138:	7be2      	ldrb	r2, [r4, #15]
d004d13a:	4eb4      	ldr	r6, [pc, #720]	; (d004d40c <main+0x34c>)
d004d13c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d140:	eddf 9ab3 	vldr	s19, [pc, #716]	; d004d410 <main+0x350>
d004d144:	ed9f 9ab3 	vldr	s18, [pc, #716]	; d004d414 <main+0x354>
d004d148:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d14c:	681b      	ldr	r3, [r3, #0]
d004d14e:	689b      	ldr	r3, [r3, #8]
d004d150:	4798      	blx	r3
d004d152:	f003 fab7 	bl	d00506c4 <worldClear>
d004d156:	f006 f82d 	bl	d00531b4 <setDefaultRenderMode>
d004d15a:	ab1c      	add	r3, sp, #112	; 0x70
d004d15c:	4618      	mov	r0, r3
d004d15e:	f003 fb1d 	bl	d005079c <cameraCreate>
d004d162:	a91c      	add	r1, sp, #112	; 0x70
d004d164:	2260      	movs	r2, #96	; 0x60
d004d166:	48ac      	ldr	r0, [pc, #688]	; (d004d418 <main+0x358>)
d004d168:	f008 faac 	bl	d00556c4 <memcpy>
d004d16c:	48aa      	ldr	r0, [pc, #680]	; (d004d418 <main+0x358>)
d004d16e:	eddf 0aab 	vldr	s1, [pc, #684]	; d004d41c <main+0x35c>
d004d172:	ed9f 0aab 	vldr	s0, [pc, #684]	; d004d420 <main+0x360>
d004d176:	f003 fe67 	bl	d0050e48 <cameraSetRange>
d004d17a:	eeb0 1a48 	vmov.f32	s2, s16
d004d17e:	eeb0 0a48 	vmov.f32	s0, s16
d004d182:	eddf 0aa8 	vldr	s1, [pc, #672]	; d004d424 <main+0x364>
d004d186:	f003 fa17 	bl	d00505b8 <vec3>
d004d18a:	48a3      	ldr	r0, [pc, #652]	; (d004d418 <main+0x358>)
d004d18c:	edcd 0a47 	vstr	s1, [sp, #284]	; 0x11c
d004d190:	ed8d 0a46 	vstr	s0, [sp, #280]	; 0x118
d004d194:	ed8d 1a48 	vstr	s2, [sp, #288]	; 0x120
d004d198:	f003 fb0a 	bl	d00507b0 <cameraSetPosition>
d004d19c:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d004d1a0:	f505 7030 	add.w	r0, r5, #704	; 0x2c0
d004d1a4:	eef0 0a41 	vmov.f32	s1, s2
d004d1a8:	eeb0 0a41 	vmov.f32	s0, s2
d004d1ac:	f004 fc1c 	bl	d00519e8 <createBox>
d004d1b0:	eeb0 1a48 	vmov.f32	s2, s16
d004d1b4:	eef0 0a48 	vmov.f32	s1, s16
d004d1b8:	eeb0 0a48 	vmov.f32	s0, s16
d004d1bc:	f003 f9fc 	bl	d00505b8 <vec3>
d004d1c0:	ab35      	add	r3, sp, #212	; 0xd4
d004d1c2:	edcd 0a4a 	vstr	s1, [sp, #296]	; 0x128
d004d1c6:	4618      	mov	r0, r3
d004d1c8:	ed8d 0a49 	vstr	s0, [sp, #292]	; 0x124
d004d1cc:	ed8d 1a4b 	vstr	s2, [sp, #300]	; 0x12c
d004d1d0:	f004 f96a 	bl	d00514a8 <entityWorldSpawn>
d004d1d4:	f244 5390 	movw	r3, #17808	; 0x4590
d004d1d8:	446b      	add	r3, sp
d004d1da:	f843 000b 	str.w	r0, [r3, fp]
d004d1de:	f7ff feb5 	bl	d004cf4c <initSmoke>
d004d1e2:	f7ff f829 	bl	d004c238 <initImpactFlames>
d004d1e6:	f50d 7cf2 	add.w	ip, sp, #484	; 0x1e4
d004d1ea:	f04f 4b7f 	mov.w	fp, #4278190080	; 0xff000000
d004d1ee:	f50d 7ee8 	add.w	lr, sp, #464	; 0x1d0
d004d1f2:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d1f6:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d1fa:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d1fe:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d202:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d206:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d20a:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d004d20e:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004d212:	f108 0c10 	add.w	ip, r8, #16
d004d216:	f8c7 b000 	str.w	fp, [r7]
d004d21a:	f8cd e000 	str.w	lr, [sp]
d004d21e:	f108 0824 	add.w	r8, r8, #36	; 0x24
d004d222:	f8c7 b040 	str.w	fp, [r7, #64]	; 0x40
d004d226:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d22a:	f8dc c000 	ldr.w	ip, [ip]
d004d22e:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004d232:	465b      	mov	r3, fp
d004d234:	f8ce c000 	str.w	ip, [lr]
d004d238:	4638      	mov	r0, r7
d004d23a:	a979      	add	r1, sp, #484	; 0x1e4
d004d23c:	2210      	movs	r2, #16
d004d23e:	f8df b204 	ldr.w	fp, [pc, #516]	; d004d444 <main+0x384>
d004d242:	f004 ffeb 	bl	d005221c <buildLightingCLUT>
d004d246:	7b23      	ldrb	r3, [r4, #12]
d004d248:	f505 7180 	add.w	r1, r5, #256	; 0x100
d004d24c:	7b62      	ldrb	r2, [r4, #13]
d004d24e:	4638      	mov	r0, r7
d004d250:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d254:	910a      	str	r1, [sp, #40]	; 0x28
d004d256:	7ba1      	ldrb	r1, [r4, #14]
d004d258:	7be2      	ldrb	r2, [r4, #15]
d004d25a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d25e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d262:	681b      	ldr	r3, [r3, #0]
d004d264:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004d266:	4798      	blx	r3
d004d268:	eeb0 1a48 	vmov.f32	s2, s16
d004d26c:	eef0 0a48 	vmov.f32	s1, s16
d004d270:	eeb0 0a48 	vmov.f32	s0, s16
d004d274:	f003 f9a0 	bl	d00505b8 <vec3>
d004d278:	eddf 1a69 	vldr	s3, [pc, #420]	; d004d420 <main+0x360>
d004d27c:	2001      	movs	r0, #1
d004d27e:	edcd 0a4d 	vstr	s1, [sp, #308]	; 0x134
d004d282:	ed8d 0a4c 	vstr	s0, [sp, #304]	; 0x130
d004d286:	ed8d 1a4e 	vstr	s2, [sp, #312]	; 0x138
d004d28a:	f005 fa35 	bl	d00526f8 <addPointLight>
d004d28e:	ab3a      	add	r3, sp, #232	; 0xe8
d004d290:	b2c7      	uxtb	r7, r0
d004d292:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d296:	ee0f 7a10 	vmov	s30, r7
d004d29a:	e898 0007 	ldmia.w	r8, {r0, r1, r2}
d004d29e:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004d2a2:	2001      	movs	r0, #1
d004d2a4:	edd3 0a01 	vldr	s1, [r3, #4]
d004d2a8:	ed93 1a02 	vldr	s2, [r3, #8]
d004d2ac:	ed93 0a00 	vldr	s0, [r3]
d004d2b0:	f005 fa5e 	bl	d0052770 <addDirectionalLight>
d004d2b4:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d2b8:	b2c3      	uxtb	r3, r0
d004d2ba:	461f      	mov	r7, r3
d004d2bc:	4618      	mov	r0, r3
d004d2be:	930b      	str	r3, [sp, #44]	; 0x2c
d004d2c0:	f005 faa2 	bl	d0052808 <lightSetIntensity>
d004d2c4:	4638      	mov	r0, r7
d004d2c6:	2100      	movs	r1, #0
d004d2c8:	f005 fa08 	bl	d00526dc <lightEnable>
d004d2cc:	4956      	ldr	r1, [pc, #344]	; (d004d428 <main+0x368>)
d004d2ce:	4857      	ldr	r0, [pc, #348]	; (d004d42c <main+0x36c>)
d004d2d0:	f7fd ff30 	bl	d004b134 <LoadSFX>
d004d2d4:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d2d8:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d2dc:	4602      	mov	r2, r0
d004d2de:	7da0      	ldrb	r0, [r4, #22]
d004d2e0:	2300      	movs	r3, #0
d004d2e2:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d2e6:	4f50      	ldr	r7, [pc, #320]	; (d004d428 <main+0x368>)
d004d2e8:	6032      	str	r2, [r6, #0]
d004d2ea:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d2ee:	7de0      	ldrb	r0, [r4, #23]
d004d2f0:	6839      	ldr	r1, [r7, #0]
d004d2f2:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d2f6:	4618      	mov	r0, r3
d004d2f8:	4f4d      	ldr	r7, [pc, #308]	; (d004d430 <main+0x370>)
d004d2fa:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d2fe:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d302:	47c0      	blx	r8
d004d304:	7d23      	ldrb	r3, [r4, #20]
d004d306:	7d62      	ldrb	r2, [r4, #21]
d004d308:	f644 6184 	movw	r1, #20100	; 0x4e84
d004d30c:	7da0      	ldrb	r0, [r4, #22]
d004d30e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d312:	7de2      	ldrb	r2, [r4, #23]
d004d314:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d318:	2000      	movs	r0, #0
d004d31a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d31e:	689b      	ldr	r3, [r3, #8]
d004d320:	691b      	ldr	r3, [r3, #16]
d004d322:	4798      	blx	r3
d004d324:	7d23      	ldrb	r3, [r4, #20]
d004d326:	7d62      	ldrb	r2, [r4, #21]
d004d328:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d32c:	7da0      	ldrb	r0, [r4, #22]
d004d32e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d332:	7de2      	ldrb	r2, [r4, #23]
d004d334:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d338:	2000      	movs	r0, #0
d004d33a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d33e:	689b      	ldr	r3, [r3, #8]
d004d340:	695b      	ldr	r3, [r3, #20]
d004d342:	4798      	blx	r3
d004d344:	7d23      	ldrb	r3, [r4, #20]
d004d346:	7d62      	ldrb	r2, [r4, #21]
d004d348:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d004d34c:	7da0      	ldrb	r0, [r4, #22]
d004d34e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d352:	7de2      	ldrb	r2, [r4, #23]
d004d354:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d358:	2000      	movs	r0, #0
d004d35a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d35e:	689b      	ldr	r3, [r3, #8]
d004d360:	699b      	ldr	r3, [r3, #24]
d004d362:	4798      	blx	r3
d004d364:	7d23      	ldrb	r3, [r4, #20]
d004d366:	7d62      	ldrb	r2, [r4, #21]
d004d368:	2100      	movs	r1, #0
d004d36a:	7da0      	ldrb	r0, [r4, #22]
d004d36c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d370:	7de2      	ldrb	r2, [r4, #23]
d004d372:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d376:	4608      	mov	r0, r1
d004d378:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d37c:	689b      	ldr	r3, [r3, #8]
d004d37e:	6a1b      	ldr	r3, [r3, #32]
d004d380:	4798      	blx	r3
d004d382:	492b      	ldr	r1, [pc, #172]	; (d004d430 <main+0x370>)
d004d384:	482b      	ldr	r0, [pc, #172]	; (d004d434 <main+0x374>)
d004d386:	f7fd fed5 	bl	d004b134 <LoadSFX>
d004d38a:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d38e:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d392:	4602      	mov	r2, r0
d004d394:	7da0      	ldrb	r0, [r4, #22]
d004d396:	2300      	movs	r3, #0
d004d398:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d39c:	6839      	ldr	r1, [r7, #0]
d004d39e:	6032      	str	r2, [r6, #0]
d004d3a0:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d3a4:	7de0      	ldrb	r0, [r4, #23]
d004d3a6:	4f24      	ldr	r7, [pc, #144]	; (d004d438 <main+0x378>)
d004d3a8:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d3ac:	2001      	movs	r0, #1
d004d3ae:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d3b2:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d3b6:	47c0      	blx	r8
d004d3b8:	7d23      	ldrb	r3, [r4, #20]
d004d3ba:	7d62      	ldrb	r2, [r4, #21]
d004d3bc:	f244 21cc 	movw	r1, #17100	; 0x42cc
d004d3c0:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d3c4:	2001      	movs	r0, #1
d004d3c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3ca:	7de2      	ldrb	r2, [r4, #23]
d004d3cc:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d3d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3d4:	689b      	ldr	r3, [r3, #8]
d004d3d6:	691b      	ldr	r3, [r3, #16]
d004d3d8:	4798      	blx	r3
d004d3da:	7d23      	ldrb	r3, [r4, #20]
d004d3dc:	7d62      	ldrb	r2, [r4, #21]
d004d3de:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d3e2:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d3e6:	2001      	movs	r0, #1
d004d3e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3ec:	7de2      	ldrb	r2, [r4, #23]
d004d3ee:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d3f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3f6:	689b      	ldr	r3, [r3, #8]
d004d3f8:	695b      	ldr	r3, [r3, #20]
d004d3fa:	e025      	b.n	d004d448 <main+0x388>
d004d3fc:	2001f000 	.word	0x2001f000
d004d400:	00000000 	.word	0x00000000
d004d404:	d005a048 	.word	0xd005a048
d004d408:	d0057634 	.word	0xd0057634
d004d40c:	d00f4b08 	.word	0xd00f4b08
d004d410:	42280000 	.word	0x42280000
d004d414:	c3750000 	.word	0xc3750000
d004d418:	d005a520 	.word	0xd005a520
d004d41c:	459c4000 	.word	0x459c4000
d004d420:	3c23d70a 	.word	0x3c23d70a
d004d424:	42480000 	.word	0x42480000
d004d428:	d00f4ae0 	.word	0xd00f4ae0
d004d42c:	d0057648 	.word	0xd0057648
d004d430:	d00f4b00 	.word	0xd00f4b00
d004d434:	d0057658 	.word	0xd0057658
d004d438:	d00f4b80 	.word	0xd00f4b80
d004d43c:	ffffbb44 	.word	0xffffbb44
d004d440:	d0057708 	.word	0xd0057708
d004d444:	d00f4aa0 	.word	0xd00f4aa0
d004d448:	4798      	blx	r3
d004d44a:	7d23      	ldrb	r3, [r4, #20]
d004d44c:	7d62      	ldrb	r2, [r4, #21]
d004d44e:	2140      	movs	r1, #64	; 0x40
d004d450:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d454:	2001      	movs	r0, #1
d004d456:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d45a:	7de2      	ldrb	r2, [r4, #23]
d004d45c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d460:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d464:	689b      	ldr	r3, [r3, #8]
d004d466:	699b      	ldr	r3, [r3, #24]
d004d468:	4798      	blx	r3
d004d46a:	7d23      	ldrb	r3, [r4, #20]
d004d46c:	7d62      	ldrb	r2, [r4, #21]
d004d46e:	2100      	movs	r1, #0
d004d470:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d474:	2001      	movs	r0, #1
d004d476:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d47a:	7de2      	ldrb	r2, [r4, #23]
d004d47c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d480:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d484:	689b      	ldr	r3, [r3, #8]
d004d486:	6a1b      	ldr	r3, [r3, #32]
d004d488:	4798      	blx	r3
d004d48a:	49bb      	ldr	r1, [pc, #748]	; (d004d778 <main+0x6b8>)
d004d48c:	48bb      	ldr	r0, [pc, #748]	; (d004d77c <main+0x6bc>)
d004d48e:	f7fd fe51 	bl	d004b134 <LoadSFX>
d004d492:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d496:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d49a:	4602      	mov	r2, r0
d004d49c:	7da1      	ldrb	r1, [r4, #22]
d004d49e:	2300      	movs	r3, #0
d004d4a0:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d4a4:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d4a8:	6030      	str	r0, [r6, #0]
d004d4aa:	2002      	movs	r0, #2
d004d4ac:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d4b0:	6839      	ldr	r1, [r7, #0]
d004d4b2:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d4b6:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d4ba:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d4be:	47c0      	blx	r8
d004d4c0:	7d23      	ldrb	r3, [r4, #20]
d004d4c2:	7d62      	ldrb	r2, [r4, #21]
d004d4c4:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d4c8:	7da0      	ldrb	r0, [r4, #22]
d004d4ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4ce:	7de2      	ldrb	r2, [r4, #23]
d004d4d0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4d4:	2002      	movs	r0, #2
d004d4d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4da:	689b      	ldr	r3, [r3, #8]
d004d4dc:	691b      	ldr	r3, [r3, #16]
d004d4de:	4798      	blx	r3
d004d4e0:	7d23      	ldrb	r3, [r4, #20]
d004d4e2:	7d62      	ldrb	r2, [r4, #21]
d004d4e4:	2128      	movs	r1, #40	; 0x28
d004d4e6:	7da0      	ldrb	r0, [r4, #22]
d004d4e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4ec:	7de2      	ldrb	r2, [r4, #23]
d004d4ee:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4f2:	2002      	movs	r0, #2
d004d4f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4f8:	689b      	ldr	r3, [r3, #8]
d004d4fa:	695b      	ldr	r3, [r3, #20]
d004d4fc:	4798      	blx	r3
d004d4fe:	7d23      	ldrb	r3, [r4, #20]
d004d500:	7d62      	ldrb	r2, [r4, #21]
d004d502:	2100      	movs	r1, #0
d004d504:	7da0      	ldrb	r0, [r4, #22]
d004d506:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d50a:	7de2      	ldrb	r2, [r4, #23]
d004d50c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d510:	2002      	movs	r0, #2
d004d512:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d516:	689b      	ldr	r3, [r3, #8]
d004d518:	699b      	ldr	r3, [r3, #24]
d004d51a:	4798      	blx	r3
d004d51c:	7d23      	ldrb	r3, [r4, #20]
d004d51e:	7d62      	ldrb	r2, [r4, #21]
d004d520:	2101      	movs	r1, #1
d004d522:	7da0      	ldrb	r0, [r4, #22]
d004d524:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d528:	7de2      	ldrb	r2, [r4, #23]
d004d52a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d52e:	2002      	movs	r0, #2
d004d530:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d534:	689b      	ldr	r3, [r3, #8]
d004d536:	6a1b      	ldr	r3, [r3, #32]
d004d538:	4798      	blx	r3
d004d53a:	7d23      	ldrb	r3, [r4, #20]
d004d53c:	7d60      	ldrb	r0, [r4, #21]
d004d53e:	2100      	movs	r1, #0
d004d540:	7da2      	ldrb	r2, [r4, #22]
d004d542:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004d546:	7de0      	ldrb	r0, [r4, #23]
d004d548:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d54c:	6832      	ldr	r2, [r6, #0]
d004d54e:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004d552:	2002      	movs	r0, #2
d004d554:	689b      	ldr	r3, [r3, #8]
d004d556:	69db      	ldr	r3, [r3, #28]
d004d558:	4798      	blx	r3
d004d55a:	7d23      	ldrb	r3, [r4, #20]
d004d55c:	7d62      	ldrb	r2, [r4, #21]
d004d55e:	2002      	movs	r0, #2
d004d560:	7da1      	ldrb	r1, [r4, #22]
d004d562:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d566:	7de2      	ldrb	r2, [r4, #23]
d004d568:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d56c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d570:	689b      	ldr	r3, [r3, #8]
d004d572:	685b      	ldr	r3, [r3, #4]
d004d574:	4798      	blx	r3
d004d576:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d57a:	7d61      	ldrb	r1, [r4, #21]
d004d57c:	2300      	movs	r3, #0
d004d57e:	7da2      	ldrb	r2, [r4, #22]
d004d580:	ea4c 2c01 	orr.w	ip, ip, r1, lsl #8
d004d584:	7de0      	ldrb	r0, [r4, #23]
d004d586:	6839      	ldr	r1, [r7, #0]
d004d588:	af40      	add	r7, sp, #256	; 0x100
d004d58a:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
d004d58e:	6832      	ldr	r2, [r6, #0]
d004d590:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d594:	2003      	movs	r0, #3
d004d596:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d59a:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d59e:	47c0      	blx	r8
d004d5a0:	7d23      	ldrb	r3, [r4, #20]
d004d5a2:	7d62      	ldrb	r2, [r4, #21]
d004d5a4:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d5a8:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5ac:	2003      	movs	r0, #3
d004d5ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5b2:	7de2      	ldrb	r2, [r4, #23]
d004d5b4:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5bc:	689b      	ldr	r3, [r3, #8]
d004d5be:	691b      	ldr	r3, [r3, #16]
d004d5c0:	4798      	blx	r3
d004d5c2:	7d23      	ldrb	r3, [r4, #20]
d004d5c4:	7d62      	ldrb	r2, [r4, #21]
d004d5c6:	2128      	movs	r1, #40	; 0x28
d004d5c8:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5cc:	2003      	movs	r0, #3
d004d5ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5d2:	7de2      	ldrb	r2, [r4, #23]
d004d5d4:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5dc:	689b      	ldr	r3, [r3, #8]
d004d5de:	695b      	ldr	r3, [r3, #20]
d004d5e0:	4798      	blx	r3
d004d5e2:	7d23      	ldrb	r3, [r4, #20]
d004d5e4:	7d62      	ldrb	r2, [r4, #21]
d004d5e6:	2100      	movs	r1, #0
d004d5e8:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5ec:	2003      	movs	r0, #3
d004d5ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5f2:	7de2      	ldrb	r2, [r4, #23]
d004d5f4:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5fc:	689b      	ldr	r3, [r3, #8]
d004d5fe:	699b      	ldr	r3, [r3, #24]
d004d600:	4798      	blx	r3
d004d602:	7d23      	ldrb	r3, [r4, #20]
d004d604:	7d62      	ldrb	r2, [r4, #21]
d004d606:	2101      	movs	r1, #1
d004d608:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d60c:	2003      	movs	r0, #3
d004d60e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d612:	7de2      	ldrb	r2, [r4, #23]
d004d614:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d618:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d61c:	689b      	ldr	r3, [r3, #8]
d004d61e:	6a1b      	ldr	r3, [r3, #32]
d004d620:	4798      	blx	r3
d004d622:	7d23      	ldrb	r3, [r4, #20]
d004d624:	f894 c015 	ldrb.w	ip, [r4, #21]
d004d628:	2100      	movs	r1, #0
d004d62a:	7da2      	ldrb	r2, [r4, #22]
d004d62c:	2003      	movs	r0, #3
d004d62e:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d004d632:	f894 c017 	ldrb.w	ip, [r4, #23]
d004d636:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d63a:	6832      	ldr	r2, [r6, #0]
d004d63c:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d004d640:	689b      	ldr	r3, [r3, #8]
d004d642:	69db      	ldr	r3, [r3, #28]
d004d644:	4798      	blx	r3
d004d646:	7d23      	ldrb	r3, [r4, #20]
d004d648:	7d62      	ldrb	r2, [r4, #21]
d004d64a:	2003      	movs	r0, #3
d004d64c:	7da1      	ldrb	r1, [r4, #22]
d004d64e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d652:	7de2      	ldrb	r2, [r4, #23]
d004d654:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d658:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d65c:	689b      	ldr	r3, [r3, #8]
d004d65e:	685b      	ldr	r3, [r3, #4]
d004d660:	4798      	blx	r3
d004d662:	4659      	mov	r1, fp
d004d664:	4846      	ldr	r0, [pc, #280]	; (d004d780 <main+0x6c0>)
d004d666:	f7fd fd65 	bl	d004b134 <LoadSFX>
d004d66a:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d66e:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d672:	4602      	mov	r2, r0
d004d674:	7da1      	ldrb	r1, [r4, #22]
d004d676:	2300      	movs	r3, #0
d004d678:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d67c:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d680:	6030      	str	r0, [r6, #0]
d004d682:	2006      	movs	r0, #6
d004d684:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d688:	f8db 1000 	ldr.w	r1, [fp]
d004d68c:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d690:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d694:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d698:	47c0      	blx	r8
d004d69a:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d69e:	7d62      	ldrb	r2, [r4, #21]
d004d6a0:	2300      	movs	r3, #0
d004d6a2:	7da1      	ldrb	r1, [r4, #22]
d004d6a4:	2007      	movs	r0, #7
d004d6a6:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d004d6aa:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d6ae:	6832      	ldr	r2, [r6, #0]
d004d6b0:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d6b4:	f8db 1000 	ldr.w	r1, [fp]
d004d6b8:	9704      	str	r7, [sp, #16]
d004d6ba:	f505 7710 	add.w	r7, r5, #576	; 0x240
d004d6be:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d6c2:	46ab      	mov	fp, r5
d004d6c4:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d6c8:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d6cc:	47c0      	blx	r8
d004d6ce:	7d23      	ldrb	r3, [r4, #20]
d004d6d0:	7d62      	ldrb	r2, [r4, #21]
d004d6d2:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d6d6:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d6da:	2006      	movs	r0, #6
d004d6dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d6e0:	7de2      	ldrb	r2, [r4, #23]
d004d6e2:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d6e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d6ea:	689b      	ldr	r3, [r3, #8]
d004d6ec:	691b      	ldr	r3, [r3, #16]
d004d6ee:	4798      	blx	r3
d004d6f0:	7d23      	ldrb	r3, [r4, #20]
d004d6f2:	7d62      	ldrb	r2, [r4, #21]
d004d6f4:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d6f8:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d6fc:	2007      	movs	r0, #7
d004d6fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d702:	7de2      	ldrb	r2, [r4, #23]
d004d704:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d708:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d70c:	689b      	ldr	r3, [r3, #8]
d004d70e:	691b      	ldr	r3, [r3, #16]
d004d710:	4798      	blx	r3
d004d712:	7d23      	ldrb	r3, [r4, #20]
d004d714:	7d62      	ldrb	r2, [r4, #21]
d004d716:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d71a:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d71e:	2006      	movs	r0, #6
d004d720:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d724:	7de2      	ldrb	r2, [r4, #23]
d004d726:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d72a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d72e:	689b      	ldr	r3, [r3, #8]
d004d730:	695b      	ldr	r3, [r3, #20]
d004d732:	4798      	blx	r3
d004d734:	7d23      	ldrb	r3, [r4, #20]
d004d736:	7d62      	ldrb	r2, [r4, #21]
d004d738:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d73c:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d740:	2007      	movs	r0, #7
d004d742:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d746:	7de2      	ldrb	r2, [r4, #23]
d004d748:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d74c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d750:	689b      	ldr	r3, [r3, #8]
d004d752:	695b      	ldr	r3, [r3, #20]
d004d754:	4798      	blx	r3
d004d756:	7d23      	ldrb	r3, [r4, #20]
d004d758:	7d62      	ldrb	r2, [r4, #21]
d004d75a:	f06f 0127 	mvn.w	r1, #39	; 0x27
d004d75e:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d762:	2006      	movs	r0, #6
d004d764:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d768:	7de2      	ldrb	r2, [r4, #23]
d004d76a:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d76e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d772:	689b      	ldr	r3, [r3, #8]
d004d774:	699b      	ldr	r3, [r3, #24]
d004d776:	e005      	b.n	d004d784 <main+0x6c4>
d004d778:	d00f4b80 	.word	0xd00f4b80
d004d77c:	d0057668 	.word	0xd0057668
d004d780:	d0057678 	.word	0xd0057678
d004d784:	4798      	blx	r3
d004d786:	7d23      	ldrb	r3, [r4, #20]
d004d788:	7d62      	ldrb	r2, [r4, #21]
d004d78a:	2128      	movs	r1, #40	; 0x28
d004d78c:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d790:	2007      	movs	r0, #7
d004d792:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d796:	7de2      	ldrb	r2, [r4, #23]
d004d798:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d79c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d7a0:	689b      	ldr	r3, [r3, #8]
d004d7a2:	699b      	ldr	r3, [r3, #24]
d004d7a4:	4798      	blx	r3
d004d7a6:	7d23      	ldrb	r3, [r4, #20]
d004d7a8:	7d62      	ldrb	r2, [r4, #21]
d004d7aa:	2100      	movs	r1, #0
d004d7ac:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d7b0:	2006      	movs	r0, #6
d004d7b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d7b6:	7de2      	ldrb	r2, [r4, #23]
d004d7b8:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d7bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d7c0:	689b      	ldr	r3, [r3, #8]
d004d7c2:	6a1b      	ldr	r3, [r3, #32]
d004d7c4:	4798      	blx	r3
d004d7c6:	7d23      	ldrb	r3, [r4, #20]
d004d7c8:	7d62      	ldrb	r2, [r4, #21]
d004d7ca:	2100      	movs	r1, #0
d004d7cc:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d7d0:	2007      	movs	r0, #7
d004d7d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d7d6:	7de2      	ldrb	r2, [r4, #23]
d004d7d8:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d7dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d7e0:	689b      	ldr	r3, [r3, #8]
d004d7e2:	6a1b      	ldr	r3, [r3, #32]
d004d7e4:	4798      	blx	r3
d004d7e6:	eddd 8a05 	vldr	s17, [sp, #20]
d004d7ea:	eeb3 0a09 	vmov.f32	s0, #57	; 0x41c80000  25.0
d004d7ee:	48e7      	ldr	r0, [pc, #924]	; (d004db8c <main+0xacc>)
d004d7f0:	ee18 1a90 	vmov	r1, s17
d004d7f4:	f007 fb38 	bl	d0054e68 <loadMeshSB3D>
d004d7f8:	ed9f 1ae5 	vldr	s2, [pc, #916]	; d004db90 <main+0xad0>
d004d7fc:	eddf 0ae5 	vldr	s1, [pc, #916]	; d004db94 <main+0xad4>
d004d800:	ed9f 0ae5 	vldr	s0, [pc, #916]	; d004db98 <main+0xad8>
d004d804:	f002 fed8 	bl	d00505b8 <vec3>
d004d808:	ee18 0a90 	vmov	r0, s17
d004d80c:	ed8d 0a4f 	vstr	s0, [sp, #316]	; 0x13c
d004d810:	edcd 0a50 	vstr	s1, [sp, #320]	; 0x140
d004d814:	ed8d 1a51 	vstr	s2, [sp, #324]	; 0x144
d004d818:	f003 fe46 	bl	d00514a8 <entityWorldSpawn>
d004d81c:	4bdf      	ldr	r3, [pc, #892]	; (d004db9c <main+0xadc>)
d004d81e:	4602      	mov	r2, r0
d004d820:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004d824:	ed9f 2ade 	vldr	s4, [pc, #888]	; d004dba0 <main+0xae0>
d004d828:	eeb0 1a48 	vmov.f32	s2, s16
d004d82c:	ee18 0a90 	vmov	r0, s17
d004d830:	eeb0 0a48 	vmov.f32	s0, s16
d004d834:	eddf 0adb 	vldr	s1, [pc, #876]	; d004dba4 <main+0xae4>
d004d838:	601a      	str	r2, [r3, #0]
d004d83a:	f001 f8bd 	bl	d004e9b8 <meshSetMaterial>
d004d83e:	f7fe ff55 	bl	d004c6ec <InitLasers>
d004d842:	eef3 0a04 	vmov.f32	s1, #52	; 0x41a00000  20.0
d004d846:	ed9f 0ad8 	vldr	s0, [pc, #864]	; d004dba8 <main+0xae8>
d004d84a:	220a      	movs	r2, #10
d004d84c:	a80c      	add	r0, sp, #48	; 0x30
d004d84e:	2118      	movs	r1, #24
d004d850:	f004 fa4a 	bl	d0051ce8 <createTorus>
d004d854:	f10d 0c30 	add.w	ip, sp, #48	; 0x30
d004d858:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d85c:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d85e:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d862:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d864:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d868:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d86a:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d004d86e:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
d004d872:	9e06      	ldr	r6, [sp, #24]
d004d874:	2125      	movs	r1, #37	; 0x25
d004d876:	2700      	movs	r7, #0
d004d878:	4630      	mov	r0, r6
d004d87a:	f003 fef5 	bl	d0051668 <meshColour>
d004d87e:	eeb0 1a48 	vmov.f32	s2, s16
d004d882:	eddf 0aca 	vldr	s1, [pc, #808]	; d004dbac <main+0xaec>
d004d886:	ed9f 0aca 	vldr	s0, [pc, #808]	; d004dbb0 <main+0xaf0>
d004d88a:	f002 fe95 	bl	d00505b8 <vec3>
d004d88e:	4630      	mov	r0, r6
d004d890:	ed8d 0a52 	vstr	s0, [sp, #328]	; 0x148
d004d894:	edcd 0a53 	vstr	s1, [sp, #332]	; 0x14c
d004d898:	ed8d 1a54 	vstr	s2, [sp, #336]	; 0x150
d004d89c:	f003 fe04 	bl	d00514a8 <entityWorldSpawn>
d004d8a0:	4603      	mov	r3, r0
d004d8a2:	eef7 1a08 	vmov.f32	s3, #120	; 0x3fc00000  1.5
d004d8a6:	ed9f 2abe 	vldr	s4, [pc, #760]	; d004dba0 <main+0xae0>
d004d8aa:	eeb0 1a48 	vmov.f32	s2, s16
d004d8ae:	eeb0 0a48 	vmov.f32	s0, s16
d004d8b2:	4630      	mov	r0, r6
d004d8b4:	eddf 0abb 	vldr	s1, [pc, #748]	; d004dba4 <main+0xae4>
d004d8b8:	2664      	movs	r6, #100	; 0x64
d004d8ba:	9308      	str	r3, [sp, #32]
d004d8bc:	f001 f87c 	bl	d004e9b8 <meshSetMaterial>
d004d8c0:	4649      	mov	r1, r9
d004d8c2:	ed9f 0abc 	vldr	s0, [pc, #752]	; d004dbb4 <main+0xaf4>
d004d8c6:	48bc      	ldr	r0, [pc, #752]	; (d004dbb8 <main+0xaf8>)
d004d8c8:	f007 face 	bl	d0054e68 <loadMeshSB3D>
d004d8cc:	eeb0 1a48 	vmov.f32	s2, s16
d004d8d0:	eef0 0a48 	vmov.f32	s1, s16
d004d8d4:	eeb0 0a48 	vmov.f32	s0, s16
d004d8d8:	f002 fe6e 	bl	d00505b8 <vec3>
d004d8dc:	4648      	mov	r0, r9
d004d8de:	edcd 0a56 	vstr	s1, [sp, #344]	; 0x158
d004d8e2:	ed8d 0a55 	vstr	s0, [sp, #340]	; 0x154
d004d8e6:	ed8d 1a57 	vstr	s2, [sp, #348]	; 0x15c
d004d8ea:	f003 fddd 	bl	d00514a8 <entityWorldSpawn>
d004d8ee:	4bb3      	ldr	r3, [pc, #716]	; (d004dbbc <main+0xafc>)
d004d8f0:	2101      	movs	r1, #1
d004d8f2:	6018      	str	r0, [r3, #0]
d004d8f4:	f004 fc04 	bl	d0052100 <entityAllowHit>
d004d8f8:	eeb0 2a48 	vmov.f32	s4, s16
d004d8fc:	eddf 1ab0 	vldr	s3, [pc, #704]	; d004dbc0 <main+0xb00>
d004d900:	eeb0 1a48 	vmov.f32	s2, s16
d004d904:	4648      	mov	r0, r9
d004d906:	eeb0 0a48 	vmov.f32	s0, s16
d004d90a:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004d90e:	f001 f853 	bl	d004e9b8 <meshSetMaterial>
d004d912:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d004d916:	eddd 8a07 	vldr	s17, [sp, #28]
d004d91a:	eef0 0a41 	vmov.f32	s1, s2
d004d91e:	ee18 0a90 	vmov	r0, s17
d004d922:	eeb0 0a41 	vmov.f32	s0, s2
d004d926:	f004 f85f 	bl	d00519e8 <createBox>
d004d92a:	eef0 0a48 	vmov.f32	s1, s16
d004d92e:	eeb0 1a48 	vmov.f32	s2, s16
d004d932:	ee18 0a90 	vmov	r0, s17
d004d936:	eeb0 0a48 	vmov.f32	s0, s16
d004d93a:	ed8d 8a3d 	vstr	s16, [sp, #244]	; 0xf4
d004d93e:	ed8d 8a3e 	vstr	s16, [sp, #248]	; 0xf8
d004d942:	ed8d 8a3f 	vstr	s16, [sp, #252]	; 0xfc
d004d946:	f003 fdaf 	bl	d00514a8 <entityWorldSpawn>
d004d94a:	ed9d 8a09 	vldr	s16, [sp, #36]	; 0x24
d004d94e:	ed9f 0a9d 	vldr	s0, [pc, #628]	; d004dbc4 <main+0xb04>
d004d952:	ee18 1a10 	vmov	r1, s16
d004d956:	489c      	ldr	r0, [pc, #624]	; (d004dbc8 <main+0xb08>)
d004d958:	f007 fa86 	bl	d0054e68 <loadMeshSB3D>
d004d95c:	ed9f 1a9b 	vldr	s2, [pc, #620]	; d004dbcc <main+0xb0c>
d004d960:	eddf 0a9b 	vldr	s1, [pc, #620]	; d004dbd0 <main+0xb10>
d004d964:	ed9f 0a9b 	vldr	s0, [pc, #620]	; d004dbd4 <main+0xb14>
d004d968:	f002 fe26 	bl	d00505b8 <vec3>
d004d96c:	ee18 0a10 	vmov	r0, s16
d004d970:	edcd 0a59 	vstr	s1, [sp, #356]	; 0x164
d004d974:	ed8d 1a5a 	vstr	s2, [sp, #360]	; 0x168
d004d978:	ed8d 0a58 	vstr	s0, [sp, #352]	; 0x160
d004d97c:	f003 fd94 	bl	d00514a8 <entityWorldSpawn>
d004d980:	4a95      	ldr	r2, [pc, #596]	; (d004dbd8 <main+0xb18>)
d004d982:	4603      	mov	r3, r0
d004d984:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d004d988:	4651      	mov	r1, sl
d004d98a:	4894      	ldr	r0, [pc, #592]	; (d004dbdc <main+0xb1c>)
d004d98c:	6013      	str	r3, [r2, #0]
d004d98e:	f007 fa6b 	bl	d0054e68 <loadMeshSB3D>
d004d992:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
d004d996:	4651      	mov	r1, sl
d004d998:	eddf 8a91 	vldr	s17, [pc, #580]	; d004dbe0 <main+0xb20>
d004d99c:	4648      	mov	r0, r9
d004d99e:	f004 fab3 	bl	d0051f08 <copyMesh>
d004d9a2:	ed9f 1a90 	vldr	s2, [pc, #576]	; d004dbe4 <main+0xb24>
d004d9a6:	eddf 0a87 	vldr	s1, [pc, #540]	; d004dbc4 <main+0xb04>
d004d9aa:	ed9f 0a8f 	vldr	s0, [pc, #572]	; d004dbe8 <main+0xb28>
d004d9ae:	f002 fe03 	bl	d00505b8 <vec3>
d004d9b2:	4648      	mov	r0, r9
d004d9b4:	ed8d 0a5b 	vstr	s0, [sp, #364]	; 0x16c
d004d9b8:	edcd 0a5c 	vstr	s1, [sp, #368]	; 0x170
d004d9bc:	ed8d 1a5d 	vstr	s2, [sp, #372]	; 0x174
d004d9c0:	f003 fd72 	bl	d00514a8 <entityWorldSpawn>
d004d9c4:	ed9f 1a82 	vldr	s2, [pc, #520]	; d004dbd0 <main+0xb10>
d004d9c8:	ee0e 0a90 	vmov	s29, r0
d004d9cc:	eef0 0a41 	vmov.f32	s1, s2
d004d9d0:	eeb0 0a41 	vmov.f32	s0, s2
d004d9d4:	eeb0 8a41 	vmov.f32	s16, s2
d004d9d8:	f002 fdee 	bl	d00505b8 <vec3>
d004d9dc:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d9e0:	2001      	movs	r0, #1
d004d9e2:	ed8d 0a5e 	vstr	s0, [sp, #376]	; 0x178
d004d9e6:	edcd 0a5f 	vstr	s1, [sp, #380]	; 0x17c
d004d9ea:	ed8d 1a60 	vstr	s2, [sp, #384]	; 0x180
d004d9ee:	f004 fe83 	bl	d00526f8 <addPointLight>
d004d9f2:	b2c3      	uxtb	r3, r0
d004d9f4:	ed9f 1a7d 	vldr	s2, [pc, #500]	; d004dbec <main+0xb2c>
d004d9f8:	eddf 0a7d 	vldr	s1, [pc, #500]	; d004dbf0 <main+0xb30>
d004d9fc:	ed9f 0a6a 	vldr	s0, [pc, #424]	; d004dba8 <main+0xae8>
d004da00:	4618      	mov	r0, r3
d004da02:	ee0f 3a90 	vmov	s31, r3
d004da06:	f004 fe3f 	bl	d0052688 <lightSetRanges>
d004da0a:	f8dd 8010 	ldr.w	r8, [sp, #16]
d004da0e:	4651      	mov	r1, sl
d004da10:	a80c      	add	r0, sp, #48	; 0x30
d004da12:	f004 fa79 	bl	d0051f08 <copyMesh>
d004da16:	f10d 0e30 	add.w	lr, sp, #48	; 0x30
d004da1a:	eb05 1c87 	add.w	ip, r5, r7, lsl #6
d004da1e:	3701      	adds	r7, #1
d004da20:	eef0 0a69 	vmov.f32	s1, s19
d004da24:	fb06 f307 	mul.w	r3, r6, r7
d004da28:	eeb0 0a49 	vmov.f32	s0, s18
d004da2c:	ee01 3a10 	vmov	s2, r3
d004da30:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004da34:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004da38:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004da3c:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004da40:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004da44:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d004da48:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004da4c:	e89e 000f 	ldmia.w	lr, {r0, r1, r2, r3}
d004da50:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004da54:	f002 fdb0 	bl	d00505b8 <vec3>
d004da58:	4658      	mov	r0, fp
d004da5a:	edcd 0a62 	vstr	s1, [sp, #392]	; 0x188
d004da5e:	f10b 0b40 	add.w	fp, fp, #64	; 0x40
d004da62:	ed8d 1a63 	vstr	s2, [sp, #396]	; 0x18c
d004da66:	ed8d 0a61 	vstr	s0, [sp, #388]	; 0x184
d004da6a:	f003 fd1d 	bl	d00514a8 <entityWorldSpawn>
d004da6e:	4681      	mov	r9, r0
d004da70:	f848 0b04 	str.w	r0, [r8], #4
d004da74:	eeb0 0a68 	vmov.f32	s0, s17
d004da78:	f002 fda2 	bl	d00505c0 <degrees>
d004da7c:	eeb0 1a48 	vmov.f32	s2, s16
d004da80:	4648      	mov	r0, r9
d004da82:	2101      	movs	r1, #1
d004da84:	eddf 0a52 	vldr	s1, [pc, #328]	; d004dbd0 <main+0xb10>
d004da88:	f003 ff9e 	bl	d00519c8 <entityRotation>
d004da8c:	2f03      	cmp	r7, #3
d004da8e:	d1be      	bne.n	d004da0e <main+0x94e>
d004da90:	2300      	movs	r3, #0
d004da92:	9841      	ldr	r0, [sp, #260]	; 0x104
d004da94:	ed9f 1a47 	vldr	s2, [pc, #284]	; d004dbb4 <main+0xaf4>
d004da98:	35c0      	adds	r5, #192	; 0xc0
d004da9a:	9304      	str	r3, [sp, #16]
d004da9c:	2301      	movs	r3, #1
d004da9e:	eddf 0a55 	vldr	s1, [pc, #340]	; d004dbf4 <main+0xb34>
d004daa2:	ed9f 0a55 	vldr	s0, [pc, #340]	; d004dbf8 <main+0xb38>
d004daa6:	9307      	str	r3, [sp, #28]
d004daa8:	9005      	str	r0, [sp, #20]
d004daaa:	f002 fd85 	bl	d00505b8 <vec3>
d004daae:	9805      	ldr	r0, [sp, #20]
d004dab0:	edcd 0a65 	vstr	s1, [sp, #404]	; 0x194
d004dab4:	ed8d 1a66 	vstr	s2, [sp, #408]	; 0x198
d004dab8:	ed8d 0a64 	vstr	s0, [sp, #400]	; 0x190
d004dabc:	f003 fd3a 	bl	d0051534 <entitySetPosition>
d004dac0:	4629      	mov	r1, r5
d004dac2:	ed9f 0a40 	vldr	s0, [pc, #256]	; d004dbc4 <main+0xb04>
d004dac6:	484d      	ldr	r0, [pc, #308]	; (d004dbfc <main+0xb3c>)
d004dac8:	f007 f9ce 	bl	d0054e68 <loadMeshSB3D>
d004dacc:	ed9f 1a39 	vldr	s2, [pc, #228]	; d004dbb4 <main+0xaf4>
d004dad0:	eddf 0a4b 	vldr	s1, [pc, #300]	; d004dc00 <main+0xb40>
d004dad4:	ed9f 0a4b 	vldr	s0, [pc, #300]	; d004dc04 <main+0xb44>
d004dad8:	f002 fd6e 	bl	d00505b8 <vec3>
d004dadc:	4628      	mov	r0, r5
d004dade:	ed8d 0a67 	vstr	s0, [sp, #412]	; 0x19c
d004dae2:	edcd 0a68 	vstr	s1, [sp, #416]	; 0x1a0
d004dae6:	ed8d 1a69 	vstr	s2, [sp, #420]	; 0x1a4
d004daea:	f003 fcdd 	bl	d00514a8 <entityWorldSpawn>
d004daee:	ed9f 1a38 	vldr	s2, [pc, #224]	; d004dbd0 <main+0xb10>
d004daf2:	4603      	mov	r3, r0
d004daf4:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004daf8:	ed9f 2a29 	vldr	s4, [pc, #164]	; d004dba0 <main+0xae0>
d004dafc:	eeb0 0a41 	vmov.f32	s0, s2
d004db00:	4628      	mov	r0, r5
d004db02:	eddf 0a28 	vldr	s1, [pc, #160]	; d004dba4 <main+0xae4>
d004db06:	9309      	str	r3, [sp, #36]	; 0x24
d004db08:	f000 ff56 	bl	d004e9b8 <meshSetMaterial>
d004db0c:	2301      	movs	r3, #1
d004db0e:	2216      	movs	r2, #22
d004db10:	493d      	ldr	r1, [pc, #244]	; (d004dc08 <main+0xb48>)
d004db12:	a889      	add	r0, sp, #548	; 0x224
d004db14:	ed9f 0a3d 	vldr	s0, [pc, #244]	; d004dc0c <main+0xb4c>
d004db18:	f7fd ff2c 	bl	d004b974 <splineRailInit>
d004db1c:	a889      	add	r0, sp, #548	; 0x224
d004db1e:	ed9f 1a3c 	vldr	s2, [pc, #240]	; d004dc10 <main+0xb50>
d004db22:	eddf 0a3c 	vldr	s1, [pc, #240]	; d004dc14 <main+0xb54>
d004db26:	ed9f 0a3c 	vldr	s0, [pc, #240]	; d004dc18 <main+0xb58>
d004db2a:	f7fd ff51 	bl	d004b9d0 <splineRailSetTuning>
d004db2e:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d004db32:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004db36:	ed9f 1a39 	vldr	s2, [pc, #228]	; d004dc1c <main+0xb5c>
d004db3a:	a889      	add	r0, sp, #548	; 0x224
d004db3c:	4d38      	ldr	r5, [pc, #224]	; (d004dc20 <main+0xb60>)
d004db3e:	f7fd ff4f 	bl	d004b9e0 <splineRailSetBanking>
d004db42:	7b23      	ldrb	r3, [r4, #12]
d004db44:	7b62      	ldrb	r2, [r4, #13]
d004db46:	7ba1      	ldrb	r1, [r4, #14]
d004db48:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004db4c:	7be2      	ldrb	r2, [r4, #15]
d004db4e:	6828      	ldr	r0, [r5, #0]
d004db50:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004db54:	f8df a0d0 	ldr.w	sl, [pc, #208]	; d004dc28 <main+0xb68>
d004db58:	eddf 9a32 	vldr	s19, [pc, #200]	; d004dc24 <main+0xb64>
d004db5c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004db60:	46d0      	mov	r8, sl
d004db62:	ed9f aa11 	vldr	s20, [pc, #68]	; d004dba8 <main+0xae8>
d004db66:	681b      	ldr	r3, [r3, #0]
d004db68:	eddf aa16 	vldr	s21, [pc, #88]	; d004dbc4 <main+0xb04>
d004db6c:	69db      	ldr	r3, [r3, #28]
d004db6e:	4798      	blx	r3
d004db70:	7b23      	ldrb	r3, [r4, #12]
d004db72:	7b62      	ldrb	r2, [r4, #13]
d004db74:	7ba1      	ldrb	r1, [r4, #14]
d004db76:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004db7a:	7be2      	ldrb	r2, [r4, #15]
d004db7c:	6828      	ldr	r0, [r5, #0]
d004db7e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004db82:	ed9f 9a13 	vldr	s18, [pc, #76]	; d004dbd0 <main+0xb10>
d004db86:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004db8a:	e04f      	b.n	d004dc2c <main+0xb6c>
d004db8c:	d0057684 	.word	0xd0057684
d004db90:	44460000 	.word	0x44460000
d004db94:	42a00000 	.word	0x42a00000
d004db98:	c4080000 	.word	0xc4080000
d004db9c:	d005a730 	.word	0xd005a730
d004dba0:	42c00000 	.word	0x42c00000
d004dba4:	3ee66666 	.word	0x3ee66666
d004dba8:	42c80000 	.word	0x42c80000
d004dbac:	43960000 	.word	0x43960000
d004dbb0:	c3fa0000 	.word	0xc3fa0000
d004dbb4:	43480000 	.word	0x43480000
d004dbb8:	d0057694 	.word	0xd0057694
d004dbbc:	d005a704 	.word	0xd005a704
d004dbc0:	3e4ccccd 	.word	0x3e4ccccd
d004dbc4:	42480000 	.word	0x42480000
d004dbc8:	d00576a4 	.word	0xd00576a4
d004dbcc:	c2c80000 	.word	0xc2c80000
d004dbd0:	00000000 	.word	0x00000000
d004dbd4:	44f3c000 	.word	0x44f3c000
d004dbd8:	d005a580 	.word	0xd005a580
d004dbdc:	d00576b4 	.word	0xd00576b4
d004dbe0:	42b40000 	.word	0x42b40000
d004dbe4:	c3480000 	.word	0xc3480000
d004dbe8:	c3070000 	.word	0xc3070000
d004dbec:	44048000 	.word	0x44048000
d004dbf0:	43a00000 	.word	0x43a00000
d004dbf4:	42a40000 	.word	0x42a40000
d004dbf8:	c3750000 	.word	0xc3750000
d004dbfc:	d00576c0 	.word	0xd00576c0
d004dc00:	43af0000 	.word	0x43af0000
d004dc04:	44fa0000 	.word	0x44fa0000
d004dc08:	d0057768 	.word	0xd0057768
d004dc0c:	43340000 	.word	0x43340000
d004dc10:	402ccccd 	.word	0x402ccccd
d004dc14:	3fe66666 	.word	0x3fe66666
d004dc18:	3fb33333 	.word	0x3fb33333
d004dc1c:	3f59999a 	.word	0x3f59999a
d004dc20:	d00f4b60 	.word	0xd00f4b60
d004dc24:	3b83126f 	.word	0x3b83126f
d004dc28:	d005a520 	.word	0xd005a520
d004dc2c:	681b      	ldr	r3, [r3, #0]
d004dc2e:	699b      	ldr	r3, [r3, #24]
d004dc30:	4798      	blx	r3
d004dc32:	7b23      	ldrb	r3, [r4, #12]
d004dc34:	7b62      	ldrb	r2, [r4, #13]
d004dc36:	2001      	movs	r0, #1
d004dc38:	7ba1      	ldrb	r1, [r4, #14]
d004dc3a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc3e:	7be2      	ldrb	r2, [r4, #15]
d004dc40:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dc44:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc48:	685b      	ldr	r3, [r3, #4]
d004dc4a:	68db      	ldr	r3, [r3, #12]
d004dc4c:	4798      	blx	r3
d004dc4e:	7b23      	ldrb	r3, [r4, #12]
d004dc50:	7b62      	ldrb	r2, [r4, #13]
d004dc52:	211e      	movs	r1, #30
d004dc54:	7ba5      	ldrb	r5, [r4, #14]
d004dc56:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc5a:	7be2      	ldrb	r2, [r4, #15]
d004dc5c:	4608      	mov	r0, r1
d004dc5e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004dc62:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc66:	685b      	ldr	r3, [r3, #4]
d004dc68:	689b      	ldr	r3, [r3, #8]
d004dc6a:	4798      	blx	r3
d004dc6c:	7823      	ldrb	r3, [r4, #0]
d004dc6e:	7862      	ldrb	r2, [r4, #1]
d004dc70:	a937      	add	r1, sp, #220	; 0xdc
d004dc72:	78a0      	ldrb	r0, [r4, #2]
d004dc74:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc78:	78e2      	ldrb	r2, [r4, #3]
d004dc7a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004dc7e:	a836      	add	r0, sp, #216	; 0xd8
d004dc80:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc84:	691b      	ldr	r3, [r3, #16]
d004dc86:	4798      	blx	r3
d004dc88:	7823      	ldrb	r3, [r4, #0]
d004dc8a:	7862      	ldrb	r2, [r4, #1]
d004dc8c:	78a1      	ldrb	r1, [r4, #2]
d004dc8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc92:	78e2      	ldrb	r2, [r4, #3]
d004dc94:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dc98:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc9c:	69db      	ldr	r3, [r3, #28]
d004dc9e:	4798      	blx	r3
d004dca0:	7823      	ldrb	r3, [r4, #0]
d004dca2:	7862      	ldrb	r2, [r4, #1]
d004dca4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dca8:	78a2      	ldrb	r2, [r4, #2]
d004dcaa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004dcae:	78e2      	ldrb	r2, [r4, #3]
d004dcb0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dcb4:	689b      	ldr	r3, [r3, #8]
d004dcb6:	4798      	blx	r3
d004dcb8:	2313      	movs	r3, #19
d004dcba:	4605      	mov	r5, r0
d004dcbc:	48cf      	ldr	r0, [pc, #828]	; (d004dffc <main+0xf3c>)
d004dcbe:	2112      	movs	r1, #18
d004dcc0:	2215      	movs	r2, #21
d004dcc2:	7003      	strb	r3, [r0, #0]
d004dcc4:	2319      	movs	r3, #25
d004dcc6:	48ce      	ldr	r0, [pc, #824]	; (d004e000 <main+0xf40>)
d004dcc8:	7001      	strb	r1, [r0, #0]
d004dcca:	49ce      	ldr	r1, [pc, #824]	; (d004e004 <main+0xf44>)
d004dccc:	700a      	strb	r2, [r1, #0]
d004dcce:	4ace      	ldr	r2, [pc, #824]	; (d004e008 <main+0xf48>)
d004dcd0:	7013      	strb	r3, [r2, #0]
d004dcd2:	7b20      	ldrb	r0, [r4, #12]
d004dcd4:	ee69 7a8a 	vmul.f32	s15, s19, s20
d004dcd8:	7b61      	ldrb	r1, [r4, #13]
d004dcda:	7ba2      	ldrb	r2, [r4, #14]
d004dcdc:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dce0:	7be3      	ldrb	r3, [r4, #15]
d004dce2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004dce6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dcea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dcee:	edcd 7a05 	vstr	s15, [sp, #20]
d004dcf2:	f89d 0014 	ldrb.w	r0, [sp, #20]
d004dcf6:	681b      	ldr	r3, [r3, #0]
d004dcf8:	689b      	ldr	r3, [r3, #8]
d004dcfa:	4798      	blx	r3
d004dcfc:	7820      	ldrb	r0, [r4, #0]
d004dcfe:	7861      	ldrb	r1, [r4, #1]
d004dd00:	78a2      	ldrb	r2, [r4, #2]
d004dd02:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dd06:	78e3      	ldrb	r3, [r4, #3]
d004dd08:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dd0c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dd10:	689b      	ldr	r3, [r3, #8]
d004dd12:	4798      	blx	r3
d004dd14:	1b43      	subs	r3, r0, r5
d004dd16:	eddf 7abd 	vldr	s15, [pc, #756]	; d004e00c <main+0xf4c>
d004dd1a:	ee08 3a10 	vmov	s16, r3
d004dd1e:	9005      	str	r0, [sp, #20]
d004dd20:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d004dd24:	eeb4 8ae7 	vcmpe.f32	s16, s15
d004dd28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dd2c:	f300 8549 	bgt.w	d004e7c2 <main+0x1702>
d004dd30:	eddf 7ab7 	vldr	s15, [pc, #732]	; d004e010 <main+0xf50>
d004dd34:	eef2 ca04 	vmov.f32	s25, #36	; 0x41200000  10.0
d004dd38:	eeb2 ba08 	vmov.f32	s22, #40	; 0x41400000  12.0
d004dd3c:	ed9f eab5 	vldr	s28, [pc, #724]	; d004e014 <main+0xf54>
d004dd40:	ee28 8a27 	vmul.f32	s16, s16, s15
d004dd44:	eddf dab4 	vldr	s27, [pc, #720]	; d004e018 <main+0xf58>
d004dd48:	eddf 7ab4 	vldr	s15, [pc, #720]	; d004e01c <main+0xf5c>
d004dd4c:	ed9f dab4 	vldr	s26, [pc, #720]	; d004e020 <main+0xf60>
d004dd50:	ee68 ca2c 	vmul.f32	s25, s16, s25
d004dd54:	eddf bab3 	vldr	s23, [pc, #716]	; d004e024 <main+0xf64>
d004dd58:	ee68 da2d 	vmul.f32	s27, s16, s27
d004dd5c:	ee28 da0d 	vmul.f32	s26, s16, s26
d004dd60:	ee2c ea8e 	vmul.f32	s28, s25, s28
d004dd64:	ee38 ca08 	vadd.f32	s24, s16, s16
d004dd68:	ee6c caa7 	vmul.f32	s25, s25, s15
d004dd6c:	ee68 ba2b 	vmul.f32	s23, s16, s23
d004dd70:	ee28 ba0b 	vmul.f32	s22, s16, s22
d004dd74:	7820      	ldrb	r0, [r4, #0]
d004dd76:	7861      	ldrb	r1, [r4, #1]
d004dd78:	78a2      	ldrb	r2, [r4, #2]
d004dd7a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dd7e:	78e3      	ldrb	r3, [r4, #3]
d004dd80:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dd84:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dd88:	6a1b      	ldr	r3, [r3, #32]
d004dd8a:	4798      	blx	r3
d004dd8c:	7825      	ldrb	r5, [r4, #0]
d004dd8e:	7863      	ldrb	r3, [r4, #1]
d004dd90:	a939      	add	r1, sp, #228	; 0xe4
d004dd92:	78a2      	ldrb	r2, [r4, #2]
d004dd94:	4606      	mov	r6, r0
d004dd96:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d004dd9a:	78e3      	ldrb	r3, [r4, #3]
d004dd9c:	a838      	add	r0, sp, #224	; 0xe0
d004dd9e:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d004dda2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dda6:	699b      	ldr	r3, [r3, #24]
d004dda8:	4798      	blx	r3
d004ddaa:	ed9f 1a9f 	vldr	s2, [pc, #636]	; d004e028 <main+0xf68>
d004ddae:	ed9f 0a9f 	vldr	s0, [pc, #636]	; d004e02c <main+0xf6c>
d004ddb2:	eef0 0a49 	vmov.f32	s1, s18
d004ddb6:	2100      	movs	r1, #0
d004ddb8:	4640      	mov	r0, r8
d004ddba:	e9dd 2338 	ldrd	r2, r3, [sp, #224]	; 0xe0
d004ddbe:	4252      	negs	r2, r2
d004ddc0:	425b      	negs	r3, r3
d004ddc2:	ee07 2a90 	vmov	s15, r2
d004ddc6:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004ddca:	ee07 3a90 	vmov	s15, r3
d004ddce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ddd2:	ee27 1a01 	vmul.f32	s2, s14, s2
d004ddd6:	ee27 0a80 	vmul.f32	s0, s15, s0
d004ddda:	f002 fe85 	bl	d0050ae8 <cameraTurn>
d004ddde:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d004dde2:	edda 8a07 	vldr	s17, [sl, #28]
d004dde6:	ee68 8aa7 	vmul.f32	s17, s17, s15
d004ddea:	ee68 0a28 	vmul.f32	s1, s16, s17
d004ddee:	eef5 0a40 	vcmp.f32	s1, #0.0
d004ddf2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ddf6:	f040 8527 	bne.w	d004e848 <main+0x1788>
d004ddfa:	4b8d      	ldr	r3, [pc, #564]	; (d004e030 <main+0xf70>)
d004ddfc:	eeb0 1a49 	vmov.f32	s2, s18
d004de00:	2100      	movs	r1, #0
d004de02:	eddf 0a8c 	vldr	s1, [pc, #560]	; d004e034 <main+0xf74>
d004de06:	461d      	mov	r5, r3
d004de08:	6818      	ldr	r0, [r3, #0]
d004de0a:	eeb0 0a4e 	vmov.f32	s0, s28
d004de0e:	f003 fc39 	bl	d0051684 <entityTurn>
d004de12:	eeb0 0a6c 	vmov.f32	s0, s25
d004de16:	6828      	ldr	r0, [r5, #0]
d004de18:	f003 fbf0 	bl	d00515fc <entityMoveForward>
d004de1c:	eeb0 1a49 	vmov.f32	s2, s18
d004de20:	eddf 0a84 	vldr	s1, [pc, #528]	; d004e034 <main+0xf74>
d004de24:	2100      	movs	r1, #0
d004de26:	eeb0 0a6d 	vmov.f32	s0, s27
d004de2a:	9809      	ldr	r0, [sp, #36]	; 0x24
d004de2c:	f003 fc2a 	bl	d0051684 <entityTurn>
d004de30:	eeb0 0a4d 	vmov.f32	s0, s26
d004de34:	ee1e 0a90 	vmov	r0, s29
d004de38:	f003 fbe0 	bl	d00515fc <entityMoveForward>
d004de3c:	ee1e 0a90 	vmov	r0, s29
d004de40:	f003 fb9c 	bl	d005157c <entityGetPosition>
d004de44:	eddf 7a7c 	vldr	s15, [pc, #496]	; d004e038 <main+0xf78>
d004de48:	ed8d 0a43 	vstr	s0, [sp, #268]	; 0x10c
d004de4c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004de50:	edcd 0a44 	vstr	s1, [sp, #272]	; 0x110
d004de54:	ed8d 1a45 	vstr	s2, [sp, #276]	; 0x114
d004de58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004de5c:	f300 84e0 	bgt.w	d004e820 <main+0x1760>
d004de60:	ed9d 0a43 	vldr	s0, [sp, #268]	; 0x10c
d004de64:	ee1f 0a90 	vmov	r0, s31
d004de68:	eddd 0a44 	vldr	s1, [sp, #272]	; 0x110
d004de6c:	ed9d 1a45 	vldr	s2, [sp, #276]	; 0x114
d004de70:	f004 fcae 	bl	d00527d0 <lightSetPosition>
d004de74:	edda 0a01 	vldr	s1, [sl, #4]
d004de78:	ed9a 1a02 	vldr	s2, [sl, #8]
d004de7c:	ed9a 0a00 	vldr	s0, [sl]
d004de80:	9835      	ldr	r0, [sp, #212]	; 0xd4
d004de82:	f003 fb57 	bl	d0051534 <entitySetPosition>
d004de86:	4641      	mov	r1, r8
d004de88:	9835      	ldr	r0, [sp, #212]	; 0xd4
d004de8a:	f004 f99f 	bl	d00521cc <entityMatchOrientationCamera>
d004de8e:	eeb0 0a48 	vmov.f32	s0, s16
d004de92:	ee1e 1a90 	vmov	r1, s29
d004de96:	9835      	ldr	r0, [sp, #212]	; 0xd4
d004de98:	f006 ff96 	bl	d0054dc8 <sb3dEntityAudioInfoDefault>
d004de9c:	7d20      	ldrb	r0, [r4, #20]
d004de9e:	7d62      	ldrb	r2, [r4, #21]
d004dea0:	eddf 7a66 	vldr	s15, [pc, #408]	; d004e03c <main+0xf7c>
d004dea4:	ea40 2102 	orr.w	r1, r0, r2, lsl #8
d004dea8:	7da2      	ldrb	r2, [r4, #22]
d004deaa:	ee60 7aa7 	vmul.f32	s15, s1, s15
d004deae:	7de3      	ldrb	r3, [r4, #23]
d004deb0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004deb4:	2003      	movs	r0, #3
d004deb6:	edcd 1a73 	vstr	s3, [sp, #460]	; 0x1cc
d004deba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004debe:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004dec2:	ed8d 0a70 	vstr	s0, [sp, #448]	; 0x1c0
d004dec6:	689b      	ldr	r3, [r3, #8]
d004dec8:	edcd 7a06 	vstr	s15, [sp, #24]
d004decc:	699b      	ldr	r3, [r3, #24]
d004dece:	f99d 1018 	ldrsb.w	r1, [sp, #24]
d004ded2:	edcd 0a71 	vstr	s1, [sp, #452]	; 0x1c4
d004ded6:	ed8d 1a72 	vstr	s2, [sp, #456]	; 0x1c8
d004deda:	4798      	blx	r3
d004dedc:	ed9f 7a58 	vldr	s14, [pc, #352]	; d004e040 <main+0xf80>
d004dee0:	2003      	movs	r0, #3
d004dee2:	eddd 7a70 	vldr	s15, [sp, #448]	; 0x1c0
d004dee6:	7d25      	ldrb	r5, [r4, #20]
d004dee8:	ee67 7a87 	vmul.f32	s15, s15, s14
d004deec:	7d62      	ldrb	r2, [r4, #21]
d004deee:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004def2:	7da2      	ldrb	r2, [r4, #22]
d004def4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004def8:	7de3      	ldrb	r3, [r4, #23]
d004defa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004defe:	4951      	ldr	r1, [pc, #324]	; (d004e044 <main+0xf84>)
d004df00:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004df04:	ee17 2a90 	vmov	r2, s15
d004df08:	689b      	ldr	r3, [r3, #8]
d004df0a:	440a      	add	r2, r1
d004df0c:	691b      	ldr	r3, [r3, #16]
d004df0e:	b291      	uxth	r1, r2
d004df10:	4798      	blx	r3
d004df12:	7d25      	ldrb	r5, [r4, #20]
d004df14:	7d62      	ldrb	r2, [r4, #21]
d004df16:	2003      	movs	r0, #3
d004df18:	ed9f 7a4b 	vldr	s14, [pc, #300]	; d004e048 <main+0xf88>
d004df1c:	7da3      	ldrb	r3, [r4, #22]
d004df1e:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004df22:	eddd 7a72 	vldr	s15, [sp, #456]	; 0x1c8
d004df26:	ea41 4203 	orr.w	r2, r1, r3, lsl #16
d004df2a:	7de3      	ldrb	r3, [r4, #23]
d004df2c:	ee67 7a87 	vmul.f32	s15, s15, s14
d004df30:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004df34:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004df38:	689b      	ldr	r3, [r3, #8]
d004df3a:	695b      	ldr	r3, [r3, #20]
d004df3c:	edcd 7a06 	vstr	s15, [sp, #24]
d004df40:	f89d 1018 	ldrb.w	r1, [sp, #24]
d004df44:	4798      	blx	r3
d004df46:	edda 0a01 	vldr	s1, [sl, #4]
d004df4a:	ed9a 1a02 	vldr	s2, [sl, #8]
d004df4e:	ee1f 0a10 	vmov	r0, s30
d004df52:	ed9a 0a00 	vldr	s0, [sl]
d004df56:	f004 fc3b 	bl	d00527d0 <lightSetPosition>
d004df5a:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004df5e:	ee1f 0a10 	vmov	r0, s30
d004df62:	f004 fc51 	bl	d0052808 <lightSetIntensity>
d004df66:	eeb0 0a4a 	vmov.f32	s0, s20
d004df6a:	ed9f 1a38 	vldr	s2, [pc, #224]	; d004e04c <main+0xf8c>
d004df6e:	ee1f 0a10 	vmov	r0, s30
d004df72:	eddf 0a37 	vldr	s1, [pc, #220]	; d004e050 <main+0xf90>
d004df76:	f004 fb87 	bl	d0052688 <lightSetRanges>
d004df7a:	9b04      	ldr	r3, [sp, #16]
d004df7c:	2b00      	cmp	r3, #0
d004df7e:	f040 8417 	bne.w	d004e7b0 <main+0x16f0>
d004df82:	2101      	movs	r1, #1
d004df84:	ee1f 0a10 	vmov	r0, s30
d004df88:	f004 fba8 	bl	d00526dc <lightEnable>
d004df8c:	eeb0 0a48 	vmov.f32	s0, s16
d004df90:	980b      	ldr	r0, [sp, #44]	; 0x2c
d004df92:	f7fd ffaf 	bl	d004bef4 <weatherLightning>
d004df96:	4681      	mov	r9, r0
d004df98:	7820      	ldrb	r0, [r4, #0]
d004df9a:	f006 0501 	and.w	r5, r6, #1
d004df9e:	7861      	ldrb	r1, [r4, #1]
d004dfa0:	78a2      	ldrb	r2, [r4, #2]
d004dfa2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dfa6:	78e3      	ldrb	r3, [r4, #3]
d004dfa8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dfac:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dfb0:	69db      	ldr	r3, [r3, #28]
d004dfb2:	4798      	blx	r3
d004dfb4:	4b27      	ldr	r3, [pc, #156]	; (d004e054 <main+0xf94>)
d004dfb6:	681b      	ldr	r3, [r3, #0]
d004dfb8:	b933      	cbnz	r3, d004dfc8 <main+0xf08>
d004dfba:	07f3      	lsls	r3, r6, #31
d004dfbc:	d504      	bpl.n	d004dfc8 <main+0xf08>
d004dfbe:	2301      	movs	r3, #1
d004dfc0:	4a24      	ldr	r2, [pc, #144]	; (d004e054 <main+0xf94>)
d004dfc2:	6013      	str	r3, [r2, #0]
d004dfc4:	f7fe fd2e 	bl	d004ca24 <FirePlayerLaser>
d004dfc8:	f005 03ff 	and.w	r3, r5, #255	; 0xff
d004dfcc:	b90d      	cbnz	r5, d004dfd2 <main+0xf12>
d004dfce:	4a21      	ldr	r2, [pc, #132]	; (d004e054 <main+0xf94>)
d004dfd0:	6013      	str	r3, [r2, #0]
d004dfd2:	f016 0602 	ands.w	r6, r6, #2
d004dfd6:	f040 8443 	bne.w	d004e860 <main+0x17a0>
d004dfda:	eeb0 0a48 	vmov.f32	s0, s16
d004dfde:	f7fe fe91 	bl	d004cd04 <UpdateLasers>
d004dfe2:	4a1d      	ldr	r2, [pc, #116]	; (d004e058 <main+0xf98>)
d004dfe4:	8813      	ldrh	r3, [r2, #0]
d004dfe6:	3b01      	subs	r3, #1
d004dfe8:	b21b      	sxth	r3, r3
d004dfea:	2b00      	cmp	r3, #0
d004dfec:	8013      	strh	r3, [r2, #0]
d004dfee:	dc3b      	bgt.n	d004e068 <main+0xfa8>
d004dff0:	4b1a      	ldr	r3, [pc, #104]	; (d004e05c <main+0xf9c>)
d004dff2:	f9b3 3000 	ldrsh.w	r3, [r3]
d004dff6:	2b00      	cmp	r3, #0
d004dff8:	e032      	b.n	d004e060 <main+0xfa0>
d004dffa:	bf00      	nop
d004dffc:	d00f4b04 	.word	0xd00f4b04
d004e000:	d00f4a80 	.word	0xd00f4a80
d004e004:	d00f4b3c 	.word	0xd00f4b3c
d004e008:	d00f4ae4 	.word	0xd00f4ae4
d004e00c:	4d7bc521 	.word	0x4d7bc521
d004e010:	310f2a63 	.word	0x310f2a63
d004e014:	bb449ba6 	.word	0xbb449ba6
d004e018:	3f99999a 	.word	0x3f99999a
d004e01c:	40d9999a 	.word	0x40d9999a
d004e020:	43852666 	.word	0x43852666
d004e024:	435c0000 	.word	0x435c0000
d004e028:	3ba3d70a 	.word	0x3ba3d70a
d004e02c:	3c088889 	.word	0x3c088889
d004e030:	d005a580 	.word	0xd005a580
d004e034:	00000000 	.word	0x00000000
d004e038:	451c4000 	.word	0x451c4000
d004e03c:	42fe0000 	.word	0x42fe0000
d004e040:	45abe000 	.word	0x45abe000
d004e044:	ffffac44 	.word	0xffffac44
d004e048:	430c0000 	.word	0x430c0000
d004e04c:	44048000 	.word	0x44048000
d004e050:	43a00000 	.word	0x43a00000
d004e054:	d005a708 	.word	0xd005a708
d004e058:	d005a736 	.word	0xd005a736
d004e05c:	d005a734 	.word	0xd005a734
d004e060:	f340 842d 	ble.w	d004e8be <main+0x17fe>
d004e064:	f7fe fc80 	bl	d004c968 <UpdateTurretTest.part.0>
d004e068:	eeb0 0a48 	vmov.f32	s0, s16
d004e06c:	f7fe f9a4 	bl	d004c3b8 <updateImpactFlames>
d004e070:	4bb9      	ldr	r3, [pc, #740]	; (d004e358 <main+0x1298>)
d004e072:	ed9f 0aba 	vldr	s0, [pc, #744]	; d004e35c <main+0x129c>
d004e076:	ed93 7a00 	vldr	s14, [r3]
d004e07a:	eddf 0ab9 	vldr	s1, [pc, #740]	; d004e360 <main+0x12a0>
d004e07e:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d004e082:	ed9f 1ab8 	vldr	s2, [pc, #736]	; d004e364 <main+0x12a4>
d004e086:	ed9f 6bb2 	vldr	d6, [pc, #712]	; d004e350 <main+0x1290>
d004e08a:	ee37 7b06 	vadd.f64	d7, d7, d6
d004e08e:	eef7 bbc7 	vcvt.f32.f64	s23, d7
d004e092:	edc3 ba00 	vstr	s23, [r3]
d004e096:	f002 fa8f 	bl	d00505b8 <vec3>
d004e09a:	eef0 7a40 	vmov.f32	s15, s0
d004e09e:	eeb0 7a60 	vmov.f32	s14, s1
d004e0a2:	eef0 1a41 	vmov.f32	s3, s2
d004e0a6:	eeb0 0a6b 	vmov.f32	s0, s23
d004e0aa:	edcd 7a6d 	vstr	s15, [sp, #436]	; 0x1b4
d004e0ae:	eeb0 1a60 	vmov.f32	s2, s1
d004e0b2:	ed8d 7a6e 	vstr	s14, [sp, #440]	; 0x1b8
d004e0b6:	eef0 0a67 	vmov.f32	s1, s15
d004e0ba:	edcd 1a6f 	vstr	s3, [sp, #444]	; 0x1bc
d004e0be:	f7fe ff65 	bl	d004cf8c <updateSmoke>
d004e0c2:	9d08      	ldr	r5, [sp, #32]
d004e0c4:	eeb0 1a4c 	vmov.f32	s2, s24
d004e0c8:	2100      	movs	r1, #0
d004e0ca:	eef0 0a49 	vmov.f32	s1, s18
d004e0ce:	ed9f 0aa6 	vldr	s0, [pc, #664]	; d004e368 <main+0x12a8>
d004e0d2:	4628      	mov	r0, r5
d004e0d4:	f003 fad6 	bl	d0051684 <entityTurn>
d004e0d8:	eeb0 1a49 	vmov.f32	s2, s18
d004e0dc:	eef0 0a48 	vmov.f32	s1, s16
d004e0e0:	2100      	movs	r1, #0
d004e0e2:	ed9f 0aa1 	vldr	s0, [pc, #644]	; d004e368 <main+0x12a8>
d004e0e6:	4628      	mov	r0, r5
d004e0e8:	f003 facc 	bl	d0051684 <entityTurn>
d004e0ec:	7b20      	ldrb	r0, [r4, #12]
d004e0ee:	7b61      	ldrb	r1, [r4, #13]
d004e0f0:	7ba2      	ldrb	r2, [r4, #14]
d004e0f2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e0f6:	7be3      	ldrb	r3, [r4, #15]
d004e0f8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e0fc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e100:	681b      	ldr	r3, [r3, #0]
d004e102:	68db      	ldr	r3, [r3, #12]
d004e104:	4798      	blx	r3
d004e106:	4a99      	ldr	r2, [pc, #612]	; (d004e36c <main+0x12ac>)
d004e108:	7813      	ldrb	r3, [r2, #0]
d004e10a:	f1c3 0301 	rsb	r3, r3, #1
d004e10e:	b2db      	uxtb	r3, r3
d004e110:	7013      	strb	r3, [r2, #0]
d004e112:	7813      	ldrb	r3, [r2, #0]
d004e114:	7b21      	ldrb	r1, [r4, #12]
d004e116:	7b60      	ldrb	r0, [r4, #13]
d004e118:	7ba2      	ldrb	r2, [r4, #14]
d004e11a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e11e:	2b00      	cmp	r3, #0
d004e120:	f000 831b 	beq.w	d004e75a <main+0x169a>
d004e124:	4d92      	ldr	r5, [pc, #584]	; (d004e370 <main+0x12b0>)
d004e126:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e12a:	7be3      	ldrb	r3, [r4, #15]
d004e12c:	6829      	ldr	r1, [r5, #0]
d004e12e:	4891      	ldr	r0, [pc, #580]	; (d004e374 <main+0x12b4>)
d004e130:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e134:	6800      	ldr	r0, [r0, #0]
d004e136:	f8df b250 	ldr.w	fp, [pc, #592]	; d004e388 <main+0x12c8>
d004e13a:	2700      	movs	r7, #0
d004e13c:	681b      	ldr	r3, [r3, #0]
d004e13e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e140:	4798      	blx	r3
d004e142:	682b      	ldr	r3, [r5, #0]
d004e144:	4d8c      	ldr	r5, [pc, #560]	; (d004e378 <main+0x12b8>)
d004e146:	6818      	ldr	r0, [r3, #0]
d004e148:	f000 fc84 	bl	d004ea54 <set3DRenderBuffer>
d004e14c:	4649      	mov	r1, r9
d004e14e:	46b1      	mov	r9, r6
d004e150:	f81b 3b01 	ldrb.w	r3, [fp], #1
d004e154:	b353      	cbz	r3, d004e1ac <main+0x10ec>
d004e156:	682e      	ldr	r6, [r5, #0]
d004e158:	4638      	mov	r0, r7
d004e15a:	1e72      	subs	r2, r6, #1
d004e15c:	2e00      	cmp	r6, #0
d004e15e:	f000 8303 	beq.w	d004e768 <main+0x16a8>
d004e162:	602a      	str	r2, [r5, #0]
d004e164:	9206      	str	r2, [sp, #24]
d004e166:	bb0a      	cbnz	r2, d004e1ac <main+0x10ec>
d004e168:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e16c:	7d63      	ldrb	r3, [r4, #21]
d004e16e:	7da6      	ldrb	r6, [r4, #22]
d004e170:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d004e174:	7de3      	ldrb	r3, [r4, #23]
d004e176:	910a      	str	r1, [sp, #40]	; 0x28
d004e178:	ea4c 4606 	orr.w	r6, ip, r6, lsl #16
d004e17c:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d004e180:	689b      	ldr	r3, [r3, #8]
d004e182:	689b      	ldr	r3, [r3, #8]
d004e184:	4798      	blx	r3
d004e186:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e18a:	7d63      	ldrb	r3, [r4, #21]
d004e18c:	4638      	mov	r0, r7
d004e18e:	7da6      	ldrb	r6, [r4, #22]
d004e190:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d004e194:	7de3      	ldrb	r3, [r4, #23]
d004e196:	ea4c 4606 	orr.w	r6, ip, r6, lsl #16
d004e19a:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d004e19e:	689b      	ldr	r3, [r3, #8]
d004e1a0:	685b      	ldr	r3, [r3, #4]
d004e1a2:	4798      	blx	r3
d004e1a4:	9a06      	ldr	r2, [sp, #24]
d004e1a6:	990a      	ldr	r1, [sp, #40]	; 0x28
d004e1a8:	f80b 2c01 	strb.w	r2, [fp, #-1]
d004e1ac:	3504      	adds	r5, #4
d004e1ae:	2f00      	cmp	r7, #0
d004e1b0:	f000 82a0 	beq.w	d004e6f4 <main+0x1634>
d004e1b4:	9b07      	ldr	r3, [sp, #28]
d004e1b6:	464e      	mov	r6, r9
d004e1b8:	4689      	mov	r9, r1
d004e1ba:	2b00      	cmp	r3, #0
d004e1bc:	f040 835d 	bne.w	d004e87a <main+0x17ba>
d004e1c0:	9b04      	ldr	r3, [sp, #16]
d004e1c2:	2b00      	cmp	r3, #0
d004e1c4:	f040 8319 	bne.w	d004e7fa <main+0x173a>
d004e1c8:	eeb0 0a49 	vmov.f32	s0, s18
d004e1cc:	f1b9 0f00 	cmp.w	r9, #0
d004e1d0:	f000 8309 	beq.w	d004e7e6 <main+0x1726>
d004e1d4:	4969      	ldr	r1, [pc, #420]	; (d004e37c <main+0x12bc>)
d004e1d6:	2305      	movs	r3, #5
d004e1d8:	2215      	movs	r2, #21
d004e1da:	4640      	mov	r0, r8
d004e1dc:	7809      	ldrb	r1, [r1, #0]
d004e1de:	f005 fb3f 	bl	d0053860 <drawFakeHorizon>
d004e1e2:	4967      	ldr	r1, [pc, #412]	; (d004e380 <main+0x12c0>)
d004e1e4:	780b      	ldrb	r3, [r1, #0]
d004e1e6:	2b00      	cmp	r3, #0
d004e1e8:	f040 8365 	bne.w	d004e8b6 <main+0x17f6>
d004e1ec:	4865      	ldr	r0, [pc, #404]	; (d004e384 <main+0x12c4>)
d004e1ee:	2205      	movs	r2, #5
d004e1f0:	4d65      	ldr	r5, [pc, #404]	; (d004e388 <main+0x12c8>)
d004e1f2:	7803      	ldrb	r3, [r0, #0]
d004e1f4:	700a      	strb	r2, [r1, #0]
d004e1f6:	f1c3 0301 	rsb	r3, r3, #1
d004e1fa:	b2db      	uxtb	r3, r3
d004e1fc:	5cea      	ldrb	r2, [r5, r3]
d004e1fe:	7003      	strb	r3, [r0, #0]
d004e200:	b92a      	cbnz	r2, d004e20e <main+0x114e>
d004e202:	2101      	movs	r1, #1
d004e204:	2278      	movs	r2, #120	; 0x78
d004e206:	54e9      	strb	r1, [r5, r3]
d004e208:	495b      	ldr	r1, [pc, #364]	; (d004e378 <main+0x12b8>)
d004e20a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d004e20e:	2008      	movs	r0, #8
d004e210:	2320      	movs	r3, #32
d004e212:	2280      	movs	r2, #128	; 0x80
d004e214:	2105      	movs	r1, #5
d004e216:	9000      	str	r0, [sp, #0]
d004e218:	4640      	mov	r0, r8
d004e21a:	f005 fa2b 	bl	d0053674 <drawFakeSkyDots>
d004e21e:	495b      	ldr	r1, [pc, #364]	; (d004e38c <main+0x12cc>)
d004e220:	eeb0 0a49 	vmov.f32	s0, s18
d004e224:	236e      	movs	r3, #110	; 0x6e
d004e226:	2280      	movs	r2, #128	; 0x80
d004e228:	7809      	ldrb	r1, [r1, #0]
d004e22a:	4640      	mov	r0, r8
d004e22c:	f005 f90a 	bl	d0053444 <drawFakeHorizonDots>
d004e230:	7820      	ldrb	r0, [r4, #0]
d004e232:	7861      	ldrb	r1, [r4, #1]
d004e234:	78a2      	ldrb	r2, [r4, #2]
d004e236:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e23a:	78e3      	ldrb	r3, [r4, #3]
d004e23c:	4d54      	ldr	r5, [pc, #336]	; (d004e390 <main+0x12d0>)
d004e23e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e242:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e246:	689b      	ldr	r3, [r3, #8]
d004e248:	4798      	blx	r3
d004e24a:	4603      	mov	r3, r0
d004e24c:	4640      	mov	r0, r8
d004e24e:	602b      	str	r3, [r5, #0]
d004e250:	f006 fb40 	bl	d00548d4 <Render3D>
d004e254:	7820      	ldrb	r0, [r4, #0]
d004e256:	7861      	ldrb	r1, [r4, #1]
d004e258:	78a2      	ldrb	r2, [r4, #2]
d004e25a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e25e:	78e3      	ldrb	r3, [r4, #3]
d004e260:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e264:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e268:	689b      	ldr	r3, [r3, #8]
d004e26a:	4798      	blx	r3
d004e26c:	4949      	ldr	r1, [pc, #292]	; (d004e394 <main+0x12d4>)
d004e26e:	eeb5 7a00 	vmov.f32	s14, #80	; 0x3e800000  0.250
d004e272:	682a      	ldr	r2, [r5, #0]
d004e274:	edd1 7a00 	vldr	s15, [r1]
d004e278:	4d47      	ldr	r5, [pc, #284]	; (d004e398 <main+0x12d8>)
d004e27a:	1a80      	subs	r0, r0, r2
d004e27c:	ee78 7a27 	vadd.f32	s15, s16, s15
d004e280:	4a46      	ldr	r2, [pc, #280]	; (d004e39c <main+0x12dc>)
d004e282:	682b      	ldr	r3, [r5, #0]
d004e284:	6010      	str	r0, [r2, #0]
d004e286:	eef4 7ac7 	vcmpe.f32	s15, s14
d004e28a:	3301      	adds	r3, #1
d004e28c:	edc1 7a00 	vstr	s15, [r1]
d004e290:	602b      	str	r3, [r5, #0]
d004e292:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e296:	db24      	blt.n	d004e2e2 <main+0x1222>
d004e298:	ed9f 7a41 	vldr	s14, [pc, #260]	; d004e3a0 <main+0x12e0>
d004e29c:	eef4 7ac7 	vcmpe.f32	s15, s14
d004e2a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e2a4:	f340 82f0 	ble.w	d004e888 <main+0x17c8>
d004e2a8:	ee07 3a10 	vmov	s14, r3
d004e2ac:	4b3d      	ldr	r3, [pc, #244]	; (d004e3a4 <main+0x12e4>)
d004e2ae:	2164      	movs	r1, #100	; 0x64
d004e2b0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004e2b4:	ee27 7a0a 	vmul.f32	s14, s14, s20
d004e2b8:	eec7 6a27 	vdiv.f32	s13, s14, s15
d004e2bc:	eefc 7ae6 	vcvt.u32.f32	s15, s13
d004e2c0:	ee17 2a90 	vmov	r2, s15
d004e2c4:	fba3 0302 	umull	r0, r3, r3, r2
d004e2c8:	095b      	lsrs	r3, r3, #5
d004e2ca:	fb01 2213 	mls	r2, r1, r3, r2
d004e2ce:	4936      	ldr	r1, [pc, #216]	; (d004e3a8 <main+0x12e8>)
d004e2d0:	600b      	str	r3, [r1, #0]
d004e2d2:	4b36      	ldr	r3, [pc, #216]	; (d004e3ac <main+0x12ec>)
d004e2d4:	601a      	str	r2, [r3, #0]
d004e2d6:	2200      	movs	r2, #0
d004e2d8:	4b2f      	ldr	r3, [pc, #188]	; (d004e398 <main+0x12d8>)
d004e2da:	601a      	str	r2, [r3, #0]
d004e2dc:	4b2d      	ldr	r3, [pc, #180]	; (d004e394 <main+0x12d4>)
d004e2de:	ed83 9a00 	vstr	s18, [r3]
d004e2e2:	a889      	add	r0, sp, #548	; 0x224
d004e2e4:	f7fd fd6a 	bl	d004bdbc <splineRailGetCurrentNode>
d004e2e8:	2e00      	cmp	r6, #0
d004e2ea:	f040 8205 	bne.w	d004e6f8 <main+0x1638>
d004e2ee:	4b2b      	ldr	r3, [pc, #172]	; (d004e39c <main+0x12dc>)
d004e2f0:	b2c5      	uxtb	r5, r0
d004e2f2:	4f2f      	ldr	r7, [pc, #188]	; (d004e3b0 <main+0x12f0>)
d004e2f4:	f44f 767a 	mov.w	r6, #1000	; 0x3e8
d004e2f8:	f8d3 9000 	ldr.w	r9, [r3]
d004e2fc:	4b2a      	ldr	r3, [pc, #168]	; (d004e3a8 <main+0x12e8>)
d004e2fe:	681a      	ldr	r2, [r3, #0]
d004e300:	4b2a      	ldr	r3, [pc, #168]	; (d004e3ac <main+0x12ec>)
d004e302:	920a      	str	r2, [sp, #40]	; 0x28
d004e304:	681b      	ldr	r3, [r3, #0]
d004e306:	9306      	str	r3, [sp, #24]
d004e308:	f005 f896 	bl	d0053438 <getRenderTriCount>
d004e30c:	f8df c0b0 	ldr.w	ip, [pc, #176]	; d004e3c0 <main+0x1300>
d004e310:	9003      	str	r0, [sp, #12]
d004e312:	fbac 3109 	umull	r3, r1, ip, r9
d004e316:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004e318:	9b06      	ldr	r3, [sp, #24]
d004e31a:	ea4f 4e51 	mov.w	lr, r1, lsr #17
d004e31e:	4825      	ldr	r0, [pc, #148]	; (d004e3b4 <main+0x12f4>)
d004e320:	4925      	ldr	r1, [pc, #148]	; (d004e3b8 <main+0x12f8>)
d004e322:	fb07 971e 	mls	r7, r7, lr, r9
d004e326:	9502      	str	r5, [sp, #8]
d004e328:	fb06 f607 	mul.w	r6, r6, r7
d004e32c:	f8cd e000 	str.w	lr, [sp]
d004e330:	fbac 7606 	umull	r7, r6, ip, r6
d004e334:	0c76      	lsrs	r6, r6, #17
d004e336:	9601      	str	r6, [sp, #4]
d004e338:	f007 fb92 	bl	d0055a60 <siprintf>
d004e33c:	4b1f      	ldr	r3, [pc, #124]	; (d004e3bc <main+0x12fc>)
d004e33e:	781b      	ldrb	r3, [r3, #0]
d004e340:	42ab      	cmp	r3, r5
d004e342:	d03f      	beq.n	d004e3c4 <main+0x1304>
d004e344:	2d14      	cmp	r5, #20
d004e346:	f000 82a2 	beq.w	d004e88e <main+0x17ce>
d004e34a:	e03b      	b.n	d004e3c4 <main+0x1304>
d004e34c:	f3af 8000 	nop.w
d004e350:	47ae147b 	.word	0x47ae147b
d004e354:	3f847ae1 	.word	0x3f847ae1
d004e358:	d005a738 	.word	0xd005a738
d004e35c:	c40d4000 	.word	0xc40d4000
d004e360:	43d70000 	.word	0x43d70000
d004e364:	c4480000 	.word	0xc4480000
d004e368:	00000000 	.word	0x00000000
d004e36c:	d005a5a0 	.word	0xd005a5a0
d004e370:	d00f4b40 	.word	0xd00f4b40
d004e374:	d00f4b60 	.word	0xd00f4b60
d004e378:	d005a720 	.word	0xd005a720
d004e37c:	d00f4b04 	.word	0xd00f4b04
d004e380:	d005a44c 	.word	0xd005a44c
d004e384:	d005a508 	.word	0xd005a508
d004e388:	d005a71c 	.word	0xd005a71c
d004e38c:	d00f4ae4 	.word	0xd00f4ae4
d004e390:	d005a728 	.word	0xd005a728
d004e394:	d005a598 	.word	0xd005a598
d004e398:	d005a594 	.word	0xd005a594
d004e39c:	d005a72c 	.word	0xd005a72c
d004e3a0:	3727c5ac 	.word	0x3727c5ac
d004e3a4:	51eb851f 	.word	0x51eb851f
d004e3a8:	d005a59c 	.word	0xd005a59c
d004e3ac:	d005a590 	.word	0xd005a590
d004e3b0:	00075300 	.word	0x00075300
d004e3b4:	d005a454 	.word	0xd005a454
d004e3b8:	d00576cc 	.word	0xd00576cc
d004e3bc:	d005a70c 	.word	0xd005a70c
d004e3c0:	45e7b273 	.word	0x45e7b273
d004e3c4:	9b04      	ldr	r3, [sp, #16]
d004e3c6:	0118      	lsls	r0, r3, #4
d004e3c8:	3001      	adds	r0, #1
d004e3ca:	7b23      	ldrb	r3, [r4, #12]
d004e3cc:	2640      	movs	r6, #64	; 0x40
d004e3ce:	7b62      	ldrb	r2, [r4, #13]
d004e3d0:	7ba7      	ldrb	r7, [r4, #14]
d004e3d2:	ea43 2102 	orr.w	r1, r3, r2, lsl #8
d004e3d6:	4abb      	ldr	r2, [pc, #748]	; (d004e6c4 <main+0x1604>)
d004e3d8:	7be3      	ldrb	r3, [r4, #15]
d004e3da:	7015      	strb	r5, [r2, #0]
d004e3dc:	ea41 4207 	orr.w	r2, r1, r7, lsl #16
d004e3e0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e3e4:	685b      	ldr	r3, [r3, #4]
d004e3e6:	68db      	ldr	r3, [r3, #12]
d004e3e8:	4798      	blx	r3
d004e3ea:	7b22      	ldrb	r2, [r4, #12]
d004e3ec:	7b65      	ldrb	r5, [r4, #13]
d004e3ee:	2108      	movs	r1, #8
d004e3f0:	7ba3      	ldrb	r3, [r4, #14]
d004e3f2:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
d004e3f6:	7be7      	ldrb	r7, [r4, #15]
d004e3f8:	4608      	mov	r0, r1
d004e3fa:	4ab3      	ldr	r2, [pc, #716]	; (d004e6c8 <main+0x1608>)
d004e3fc:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
d004e400:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d004e404:	687b      	ldr	r3, [r7, #4]
d004e406:	4fb1      	ldr	r7, [pc, #708]	; (d004e6cc <main+0x160c>)
d004e408:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d004e40a:	4798      	blx	r3
d004e40c:	eddf 7ab0 	vldr	s15, [pc, #704]	; d004e6d0 <main+0x1610>
d004e410:	7d25      	ldrb	r5, [r4, #20]
d004e412:	2002      	movs	r0, #2
d004e414:	ee68 7aa7 	vmul.f32	s15, s17, s15
d004e418:	7d62      	ldrb	r2, [r4, #21]
d004e41a:	ed9f 7aae 	vldr	s14, [pc, #696]	; d004e6d4 <main+0x1614>
d004e41e:	ee68 8aaa 	vmul.f32	s17, s17, s21
d004e422:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004e426:	7da2      	ldrb	r2, [r4, #22]
d004e428:	eef0 7ae7 	vabs.f32	s15, s15
d004e42c:	7de3      	ldrb	r3, [r4, #23]
d004e42e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e432:	ee77 7a87 	vadd.f32	s15, s15, s14
d004e436:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e43a:	689b      	ldr	r3, [r3, #8]
d004e43c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004e440:	691b      	ldr	r3, [r3, #16]
d004e442:	ee17 2a90 	vmov	r2, s15
d004e446:	b291      	uxth	r1, r2
d004e448:	4798      	blx	r3
d004e44a:	ed9f 7aa3 	vldr	s14, [pc, #652]	; d004e6d8 <main+0x1618>
d004e44e:	edd7 7a00 	vldr	s15, [r7]
d004e452:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004e456:	eeb4 8a47 	vcmp.f32	s16, s14
d004e45a:	7b21      	ldrb	r1, [r4, #12]
d004e45c:	ee78 8ae7 	vsub.f32	s17, s17, s15
d004e460:	7b62      	ldrb	r2, [r4, #13]
d004e462:	7ba3      	ldrb	r3, [r4, #14]
d004e464:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004e468:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e46c:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d004e470:	7be0      	ldrb	r0, [r4, #15]
d004e472:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d004e476:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d004e47a:	f04f 010a 	mov.w	r1, #10
d004e47e:	fe36 ba0b 	vselgt.f32	s22, s12, s22
d004e482:	eee8 7a8b 	vfma.f32	s15, s17, s22
d004e486:	ea43 6000 	orr.w	r0, r3, r0, lsl #24
d004e48a:	f44f 7280 	mov.w	r2, #256	; 0x100
d004e48e:	4633      	mov	r3, r6
d004e490:	6845      	ldr	r5, [r0, #4]
d004e492:	9600      	str	r6, [sp, #0]
d004e494:	4891      	ldr	r0, [pc, #580]	; (d004e6dc <main+0x161c>)
d004e496:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004e49a:	69ad      	ldr	r5, [r5, #24]
d004e49c:	edc7 7a00 	vstr	s15, [r7]
d004e4a0:	eeb0 8a67 	vmov.f32	s16, s15
d004e4a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e4a8:	fe67 8a26 	vselge.f32	s17, s14, s13
d004e4ac:	47a8      	blx	r5
d004e4ae:	4b8c      	ldr	r3, [pc, #560]	; (d004e6e0 <main+0x1620>)
d004e4b0:	781b      	ldrb	r3, [r3, #0]
d004e4b2:	b1cb      	cbz	r3, d004e4e8 <main+0x1428>
d004e4b4:	7b21      	ldrb	r1, [r4, #12]
d004e4b6:	ee38 8a28 	vadd.f32	s16, s16, s17
d004e4ba:	7b60      	ldrb	r0, [r4, #13]
d004e4bc:	4633      	mov	r3, r6
d004e4be:	7ba5      	ldrb	r5, [r4, #14]
d004e4c0:	2280      	movs	r2, #128	; 0x80
d004e4c2:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d004e4c6:	eefd 7ac8 	vcvt.s32.f32	s15, s16
d004e4ca:	7be7      	ldrb	r7, [r4, #15]
d004e4cc:	ea41 4005 	orr.w	r0, r1, r5, lsl #16
d004e4d0:	ee17 1a90 	vmov	r1, s15
d004e4d4:	ea40 6507 	orr.w	r5, r0, r7, lsl #24
d004e4d8:	4882      	ldr	r0, [pc, #520]	; (d004e6e4 <main+0x1624>)
d004e4da:	f1c1 01d0 	rsb	r1, r1, #208	; 0xd0
d004e4de:	686d      	ldr	r5, [r5, #4]
d004e4e0:	b209      	sxth	r1, r1
d004e4e2:	9600      	str	r6, [sp, #0]
d004e4e4:	69ad      	ldr	r5, [r5, #24]
d004e4e6:	47a8      	blx	r5
d004e4e8:	4f7f      	ldr	r7, [pc, #508]	; (d004e6e8 <main+0x1628>)
d004e4ea:	2633      	movs	r6, #51	; 0x33
d004e4ec:	e035      	b.n	d004e55a <main+0x149a>
d004e4ee:	883b      	ldrh	r3, [r7, #0]
d004e4f0:	f1c3 0332 	rsb	r3, r3, #50	; 0x32
d004e4f4:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d004e4f8:	005d      	lsls	r5, r3, #1
d004e4fa:	f115 0f31 	cmn.w	r5, #49	; 0x31
d004e4fe:	f2c0 80c0 	blt.w	d004e682 <main+0x15c2>
d004e502:	f894 c00c 	ldrb.w	ip, [r4, #12]
d004e506:	2000      	movs	r0, #0
d004e508:	7b61      	ldrb	r1, [r4, #13]
d004e50a:	7ba2      	ldrb	r2, [r4, #14]
d004e50c:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e510:	7be3      	ldrb	r3, [r4, #15]
d004e512:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e516:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e51a:	685b      	ldr	r3, [r3, #4]
d004e51c:	68db      	ldr	r3, [r3, #12]
d004e51e:	4798      	blx	r3
d004e520:	7b21      	ldrb	r1, [r4, #12]
d004e522:	7b60      	ldrb	r0, [r4, #13]
d004e524:	2312      	movs	r3, #18
d004e526:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e52a:	2206      	movs	r2, #6
d004e52c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e530:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e534:	b231      	sxth	r1, r6
d004e536:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d004e53a:	2009      	movs	r0, #9
d004e53c:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004e540:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e544:	f8dc 9004 	ldr.w	r9, [ip, #4]
d004e548:	47c8      	blx	r9
d004e54a:	2d31      	cmp	r5, #49	; 0x31
d004e54c:	f300 81e7 	bgt.w	d004e91e <main+0x185e>
d004e550:	3616      	adds	r6, #22
d004e552:	3706      	adds	r7, #6
d004e554:	b2b6      	uxth	r6, r6
d004e556:	2ee3      	cmp	r6, #227	; 0xe3
d004e558:	d078      	beq.n	d004e64c <main+0x158c>
d004e55a:	7b25      	ldrb	r5, [r4, #12]
d004e55c:	201b      	movs	r0, #27
d004e55e:	7b61      	ldrb	r1, [r4, #13]
d004e560:	7ba2      	ldrb	r2, [r4, #14]
d004e562:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e566:	7be3      	ldrb	r3, [r4, #15]
d004e568:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e56c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e570:	685b      	ldr	r3, [r3, #4]
d004e572:	68db      	ldr	r3, [r3, #12]
d004e574:	4798      	blx	r3
d004e576:	7b20      	ldrb	r0, [r4, #12]
d004e578:	f894 c00d 	ldrb.w	ip, [r4, #13]
d004e57c:	2208      	movs	r2, #8
d004e57e:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e582:	1e71      	subs	r1, r6, #1
d004e584:	ea40 230c 	orr.w	r3, r0, ip, lsl #8
d004e588:	7be5      	ldrb	r5, [r4, #15]
d004e58a:	4610      	mov	r0, r2
d004e58c:	b209      	sxth	r1, r1
d004e58e:	ea43 4c0e 	orr.w	ip, r3, lr, lsl #16
d004e592:	2314      	movs	r3, #20
d004e594:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e598:	686d      	ldr	r5, [r5, #4]
d004e59a:	686d      	ldr	r5, [r5, #4]
d004e59c:	47a8      	blx	r5
d004e59e:	f817 0c02 	ldrb.w	r0, [r7, #-2]
d004e5a2:	2800      	cmp	r0, #0
d004e5a4:	d1a3      	bne.n	d004e4ee <main+0x142e>
d004e5a6:	7b23      	ldrb	r3, [r4, #12]
d004e5a8:	2512      	movs	r5, #18
d004e5aa:	7b61      	ldrb	r1, [r4, #13]
d004e5ac:	7ba2      	ldrb	r2, [r4, #14]
d004e5ae:	46a9      	mov	r9, r5
d004e5b0:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d004e5b4:	7be3      	ldrb	r3, [r4, #15]
d004e5b6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e5ba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e5be:	685b      	ldr	r3, [r3, #4]
d004e5c0:	68db      	ldr	r3, [r3, #12]
d004e5c2:	4798      	blx	r3
d004e5c4:	f894 e00c 	ldrb.w	lr, [r4, #12]
d004e5c8:	7b60      	ldrb	r0, [r4, #13]
d004e5ca:	462b      	mov	r3, r5
d004e5cc:	7ba1      	ldrb	r1, [r4, #14]
d004e5ce:	2206      	movs	r2, #6
d004e5d0:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d004e5d4:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e5d8:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d004e5dc:	2009      	movs	r0, #9
d004e5de:	ea41 6c0c 	orr.w	ip, r1, ip, lsl #24
d004e5e2:	b231      	sxth	r1, r6
d004e5e4:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e5e8:	f8dc b004 	ldr.w	fp, [ip, #4]
d004e5ec:	47d8      	blx	fp
d004e5ee:	7b20      	ldrb	r0, [r4, #12]
d004e5f0:	3706      	adds	r7, #6
d004e5f2:	7b61      	ldrb	r1, [r4, #13]
d004e5f4:	7ba2      	ldrb	r2, [r4, #14]
d004e5f6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e5fa:	7be3      	ldrb	r3, [r4, #15]
d004e5fc:	f817 0c08 	ldrb.w	r0, [r7, #-8]
d004e600:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e604:	2800      	cmp	r0, #0
d004e606:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e60a:	bf14      	ite	ne
d004e60c:	200e      	movne	r0, #14
d004e60e:	201b      	moveq	r0, #27
d004e610:	685b      	ldr	r3, [r3, #4]
d004e612:	68db      	ldr	r3, [r3, #12]
d004e614:	4798      	blx	r3
d004e616:	7b22      	ldrb	r2, [r4, #12]
d004e618:	7b60      	ldrb	r0, [r4, #13]
d004e61a:	462b      	mov	r3, r5
d004e61c:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e620:	f106 0112 	add.w	r1, r6, #18
d004e624:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004e628:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e62c:	3616      	adds	r6, #22
d004e62e:	eba1 0109 	sub.w	r1, r1, r9
d004e632:	ea40 450e 	orr.w	r5, r0, lr, lsl #16
d004e636:	2206      	movs	r2, #6
d004e638:	b2b6      	uxth	r6, r6
d004e63a:	2009      	movs	r0, #9
d004e63c:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004e640:	b209      	sxth	r1, r1
d004e642:	686d      	ldr	r5, [r5, #4]
d004e644:	686d      	ldr	r5, [r5, #4]
d004e646:	47a8      	blx	r5
d004e648:	2ee3      	cmp	r6, #227	; 0xe3
d004e64a:	d186      	bne.n	d004e55a <main+0x149a>
d004e64c:	7b20      	ldrb	r0, [r4, #12]
d004e64e:	7b61      	ldrb	r1, [r4, #13]
d004e650:	7ba2      	ldrb	r2, [r4, #14]
d004e652:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e656:	7be3      	ldrb	r3, [r4, #15]
d004e658:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e65c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e660:	681b      	ldr	r3, [r3, #0]
d004e662:	681b      	ldr	r3, [r3, #0]
d004e664:	4798      	blx	r3
d004e666:	eddf 7a21 	vldr	s15, [pc, #132]	; d004e6ec <main+0x162c>
d004e66a:	eef4 9ae7 	vcmpe.f32	s19, s15
d004e66e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e672:	dc6f      	bgt.n	d004e754 <main+0x1694>
d004e674:	eddf 7a1e 	vldr	s15, [pc, #120]	; d004e6f0 <main+0x1630>
d004e678:	ee79 9aa7 	vadd.f32	s19, s19, s15
d004e67c:	9d05      	ldr	r5, [sp, #20]
d004e67e:	f7ff bb28 	b.w	d004dcd2 <main+0xc12>
d004e682:	7b25      	ldrb	r5, [r4, #12]
d004e684:	2000      	movs	r0, #0
d004e686:	7b61      	ldrb	r1, [r4, #13]
d004e688:	7ba2      	ldrb	r2, [r4, #14]
d004e68a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e68e:	7be3      	ldrb	r3, [r4, #15]
d004e690:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e694:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e698:	685b      	ldr	r3, [r3, #4]
d004e69a:	68db      	ldr	r3, [r3, #12]
d004e69c:	4798      	blx	r3
d004e69e:	7b21      	ldrb	r1, [r4, #12]
d004e6a0:	7b60      	ldrb	r0, [r4, #13]
d004e6a2:	2312      	movs	r3, #18
d004e6a4:	f894 c00e 	ldrb.w	ip, [r4, #14]
d004e6a8:	2206      	movs	r2, #6
d004e6aa:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e6ae:	7be5      	ldrb	r5, [r4, #15]
d004e6b0:	b231      	sxth	r1, r6
d004e6b2:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004e6b6:	2009      	movs	r0, #9
d004e6b8:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e6bc:	686d      	ldr	r5, [r5, #4]
d004e6be:	686d      	ldr	r5, [r5, #4]
d004e6c0:	47a8      	blx	r5
d004e6c2:	e745      	b.n	d004e550 <main+0x1490>
d004e6c4:	d005a70c 	.word	0xd005a70c
d004e6c8:	d005a454 	.word	0xd005a454
d004e6cc:	d005a718 	.word	0xd005a718
d004e6d0:	448fc000 	.word	0x448fc000
d004e6d4:	472c4400 	.word	0x472c4400
d004e6d8:	3daaaaab 	.word	0x3daaaaab
d004e6dc:	d0058048 	.word	0xd0058048
d004e6e0:	d005a5a0 	.word	0xd005a5a0
d004e6e4:	d0059048 	.word	0xd0059048
d004e6e8:	d00f4be2 	.word	0xd00f4be2
d004e6ec:	3f7ef9db 	.word	0x3f7ef9db
d004e6f0:	3b83126f 	.word	0x3b83126f
d004e6f4:	2701      	movs	r7, #1
d004e6f6:	e52b      	b.n	d004e150 <main+0x1090>
d004e6f8:	4b8c      	ldr	r3, [pc, #560]	; (d004e92c <main+0x186c>)
d004e6fa:	4f8d      	ldr	r7, [pc, #564]	; (d004e930 <main+0x1870>)
d004e6fc:	f8d3 9000 	ldr.w	r9, [r3]
d004e700:	4b8c      	ldr	r3, [pc, #560]	; (d004e934 <main+0x1874>)
d004e702:	4e8d      	ldr	r6, [pc, #564]	; (d004e938 <main+0x1878>)
d004e704:	681a      	ldr	r2, [r3, #0]
d004e706:	4b8d      	ldr	r3, [pc, #564]	; (d004e93c <main+0x187c>)
d004e708:	920a      	str	r2, [sp, #40]	; 0x28
d004e70a:	681b      	ldr	r3, [r3, #0]
d004e70c:	9306      	str	r3, [sp, #24]
d004e70e:	f004 fe93 	bl	d0053438 <getRenderTriCount>
d004e712:	fba7 3509 	umull	r3, r5, r7, r9
d004e716:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d004e71a:	9003      	str	r0, [sp, #12]
d004e71c:	2014      	movs	r0, #20
d004e71e:	0c6d      	lsrs	r5, r5, #17
d004e720:	9b06      	ldr	r3, [sp, #24]
d004e722:	9002      	str	r0, [sp, #8]
d004e724:	fb06 9615 	mls	r6, r6, r5, r9
d004e728:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004e72a:	9500      	str	r5, [sp, #0]
d004e72c:	fb01 f606 	mul.w	r6, r1, r6
d004e730:	4983      	ldr	r1, [pc, #524]	; (d004e940 <main+0x1880>)
d004e732:	fba7 0706 	umull	r0, r7, r7, r6
d004e736:	4883      	ldr	r0, [pc, #524]	; (d004e944 <main+0x1884>)
d004e738:	0c7f      	lsrs	r7, r7, #17
d004e73a:	9701      	str	r7, [sp, #4]
d004e73c:	f007 f990 	bl	d0055a60 <siprintf>
d004e740:	4b81      	ldr	r3, [pc, #516]	; (d004e948 <main+0x1888>)
d004e742:	781d      	ldrb	r5, [r3, #0]
d004e744:	2d14      	cmp	r5, #20
d004e746:	f040 80a2 	bne.w	d004e88e <main+0x17ce>
d004e74a:	9b04      	ldr	r3, [sp, #16]
d004e74c:	0118      	lsls	r0, r3, #4
d004e74e:	3001      	adds	r0, #1
d004e750:	b2c0      	uxtb	r0, r0
d004e752:	e63a      	b.n	d004e3ca <main+0x130a>
d004e754:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d004e758:	e790      	b.n	d004e67c <main+0x15bc>
d004e75a:	4d7c      	ldr	r5, [pc, #496]	; (d004e94c <main+0x188c>)
d004e75c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e760:	7be3      	ldrb	r3, [r4, #15]
d004e762:	6829      	ldr	r1, [r5, #0]
d004e764:	487a      	ldr	r0, [pc, #488]	; (d004e950 <main+0x1890>)
d004e766:	e4e3      	b.n	d004e130 <main+0x1070>
d004e768:	f894 e014 	ldrb.w	lr, [r4, #20]
d004e76c:	f894 c015 	ldrb.w	ip, [r4, #21]
d004e770:	7da2      	ldrb	r2, [r4, #22]
d004e772:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d004e776:	7de3      	ldrb	r3, [r4, #23]
d004e778:	9106      	str	r1, [sp, #24]
d004e77a:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004e77e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e782:	689b      	ldr	r3, [r3, #8]
d004e784:	689b      	ldr	r3, [r3, #8]
d004e786:	4798      	blx	r3
d004e788:	f894 e014 	ldrb.w	lr, [r4, #20]
d004e78c:	f894 c015 	ldrb.w	ip, [r4, #21]
d004e790:	4638      	mov	r0, r7
d004e792:	7da2      	ldrb	r2, [r4, #22]
d004e794:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d004e798:	7de3      	ldrb	r3, [r4, #23]
d004e79a:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004e79e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e7a2:	689b      	ldr	r3, [r3, #8]
d004e7a4:	685b      	ldr	r3, [r3, #4]
d004e7a6:	4798      	blx	r3
d004e7a8:	9906      	ldr	r1, [sp, #24]
d004e7aa:	f80b 6c01 	strb.w	r6, [fp, #-1]
d004e7ae:	e4fd      	b.n	d004e1ac <main+0x10ec>
d004e7b0:	f04f 0900 	mov.w	r9, #0
d004e7b4:	ee1f 0a10 	vmov	r0, s30
d004e7b8:	4649      	mov	r1, r9
d004e7ba:	f003 ff8f 	bl	d00526dc <lightEnable>
d004e7be:	f7ff bbeb 	b.w	d004df98 <main+0xed8>
d004e7c2:	ed9f ba64 	vldr	s22, [pc, #400]	; d004e954 <main+0x1894>
d004e7c6:	eddf ba64 	vldr	s23, [pc, #400]	; d004e958 <main+0x1898>
d004e7ca:	ed9f ca64 	vldr	s24, [pc, #400]	; d004e95c <main+0x189c>
d004e7ce:	ed9f da64 	vldr	s26, [pc, #400]	; d004e960 <main+0x18a0>
d004e7d2:	eddf da64 	vldr	s27, [pc, #400]	; d004e964 <main+0x18a4>
d004e7d6:	eddf ca64 	vldr	s25, [pc, #400]	; d004e968 <main+0x18a8>
d004e7da:	ed9f ea64 	vldr	s28, [pc, #400]	; d004e96c <main+0x18ac>
d004e7de:	ed9f 8a64 	vldr	s16, [pc, #400]	; d004e970 <main+0x18b0>
d004e7e2:	f7ff bac7 	b.w	d004dd74 <main+0xcb4>
d004e7e6:	4b63      	ldr	r3, [pc, #396]	; (d004e974 <main+0x18b4>)
d004e7e8:	4640      	mov	r0, r8
d004e7ea:	4a63      	ldr	r2, [pc, #396]	; (d004e978 <main+0x18b8>)
d004e7ec:	4963      	ldr	r1, [pc, #396]	; (d004e97c <main+0x18bc>)
d004e7ee:	781b      	ldrb	r3, [r3, #0]
d004e7f0:	7812      	ldrb	r2, [r2, #0]
d004e7f2:	7809      	ldrb	r1, [r1, #0]
d004e7f4:	f005 f834 	bl	d0053860 <drawFakeHorizon>
d004e7f8:	e509      	b.n	d004e20e <main+0x114e>
d004e7fa:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
d004e7fc:	2101      	movs	r1, #1
d004e7fe:	4628      	mov	r0, r5
d004e800:	f003 ff6c 	bl	d00526dc <lightEnable>
d004e804:	4628      	mov	r0, r5
d004e806:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004e80a:	f003 fffd 	bl	d0052808 <lightSetIntensity>
d004e80e:	eeb0 0a49 	vmov.f32	s0, s18
d004e812:	2301      	movs	r3, #1
d004e814:	2224      	movs	r2, #36	; 0x24
d004e816:	212b      	movs	r1, #43	; 0x2b
d004e818:	4640      	mov	r0, r8
d004e81a:	f005 f821 	bl	d0053860 <drawFakeHorizon>
d004e81e:	e4fe      	b.n	d004e21e <main+0x115e>
d004e820:	eef0 0a6a 	vmov.f32	s1, s21
d004e824:	ed9f 1a56 	vldr	s2, [pc, #344]	; d004e980 <main+0x18c0>
d004e828:	ed9f 0a56 	vldr	s0, [pc, #344]	; d004e984 <main+0x18c4>
d004e82c:	f001 fec4 	bl	d00505b8 <vec3>
d004e830:	ee1e 0a90 	vmov	r0, s29
d004e834:	ed8d 0a6a 	vstr	s0, [sp, #424]	; 0x1a8
d004e838:	edcd 0a6b 	vstr	s1, [sp, #428]	; 0x1ac
d004e83c:	ed8d 1a6c 	vstr	s2, [sp, #432]	; 0x1b0
d004e840:	f002 fe78 	bl	d0051534 <entitySetPosition>
d004e844:	f7ff bb0c 	b.w	d004de60 <main+0xda0>
d004e848:	eef1 0a60 	vneg.f32	s1, s1
d004e84c:	2101      	movs	r1, #1
d004e84e:	eeb0 1a49 	vmov.f32	s2, s18
d004e852:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d004e988 <main+0x18c8>
d004e856:	4640      	mov	r0, r8
d004e858:	f002 f946 	bl	d0050ae8 <cameraTurn>
d004e85c:	f7ff bacd 	b.w	d004ddfa <main+0xd3a>
d004e860:	2300      	movs	r3, #0
d004e862:	eeb0 1a6b 	vmov.f32	s2, s23
d004e866:	eef0 0a49 	vmov.f32	s1, s18
d004e86a:	ed9f 0a47 	vldr	s0, [pc, #284]	; d004e988 <main+0x18c8>
d004e86e:	4640      	mov	r0, r8
d004e870:	9307      	str	r3, [sp, #28]
d004e872:	f002 fb15 	bl	d0050ea0 <cameraMove>
d004e876:	f7ff bbb0 	b.w	d004dfda <main+0xf1a>
d004e87a:	eeb0 0a48 	vmov.f32	s0, s16
d004e87e:	4641      	mov	r1, r8
d004e880:	a889      	add	r0, sp, #548	; 0x224
d004e882:	f7fd f8b5 	bl	d004b9f0 <splineRailUpdate>
d004e886:	e49b      	b.n	d004e1c0 <main+0x1100>
d004e888:	2200      	movs	r2, #0
d004e88a:	4613      	mov	r3, r2
d004e88c:	e51f      	b.n	d004e2ce <main+0x120e>
d004e88e:	9b04      	ldr	r3, [sp, #16]
d004e890:	2b00      	cmp	r3, #0
d004e892:	d033      	beq.n	d004e8fc <main+0x183c>
d004e894:	4d39      	ldr	r5, [pc, #228]	; (d004e97c <main+0x18bc>)
d004e896:	4618      	mov	r0, r3
d004e898:	2313      	movs	r3, #19
d004e89a:	2112      	movs	r1, #18
d004e89c:	2215      	movs	r2, #21
d004e89e:	702b      	strb	r3, [r5, #0]
d004e8a0:	2319      	movs	r3, #25
d004e8a2:	4d35      	ldr	r5, [pc, #212]	; (d004e978 <main+0x18b8>)
d004e8a4:	7029      	strb	r1, [r5, #0]
d004e8a6:	2514      	movs	r5, #20
d004e8a8:	4932      	ldr	r1, [pc, #200]	; (d004e974 <main+0x18b4>)
d004e8aa:	700a      	strb	r2, [r1, #0]
d004e8ac:	2200      	movs	r2, #0
d004e8ae:	9204      	str	r2, [sp, #16]
d004e8b0:	4a36      	ldr	r2, [pc, #216]	; (d004e98c <main+0x18cc>)
d004e8b2:	7013      	strb	r3, [r2, #0]
d004e8b4:	e589      	b.n	d004e3ca <main+0x130a>
d004e8b6:	3b01      	subs	r3, #1
d004e8b8:	4a35      	ldr	r2, [pc, #212]	; (d004e990 <main+0x18d0>)
d004e8ba:	7013      	strb	r3, [r2, #0]
d004e8bc:	e4a7      	b.n	d004e20e <main+0x114e>
d004e8be:	f006 ffc1 	bl	d0055844 <rand>
d004e8c2:	4242      	negs	r2, r0
d004e8c4:	f000 0303 	and.w	r3, r0, #3
d004e8c8:	f002 0203 	and.w	r2, r2, #3
d004e8cc:	bf58      	it	pl
d004e8ce:	4253      	negpl	r3, r2
d004e8d0:	4a30      	ldr	r2, [pc, #192]	; (d004e994 <main+0x18d4>)
d004e8d2:	3303      	adds	r3, #3
d004e8d4:	8013      	strh	r3, [r2, #0]
d004e8d6:	f006 ffb5 	bl	d0055844 <rand>
d004e8da:	4b2f      	ldr	r3, [pc, #188]	; (d004e998 <main+0x18d8>)
d004e8dc:	fb83 2300 	smull	r2, r3, r3, r0
d004e8e0:	17c2      	asrs	r2, r0, #31
d004e8e2:	4403      	add	r3, r0
d004e8e4:	ebc2 12a3 	rsb	r2, r2, r3, asr #6
d004e8e8:	eb02 03c2 	add.w	r3, r2, r2, lsl #3
d004e8ec:	ebc2 02c3 	rsb	r2, r2, r3, lsl #3
d004e8f0:	1a83      	subs	r3, r0, r2
d004e8f2:	4a2a      	ldr	r2, [pc, #168]	; (d004e99c <main+0x18dc>)
d004e8f4:	3314      	adds	r3, #20
d004e8f6:	8013      	strh	r3, [r2, #0]
d004e8f8:	f7ff bbb6 	b.w	d004e068 <main+0xfa8>
d004e8fc:	2009      	movs	r0, #9
d004e8fe:	4d1f      	ldr	r5, [pc, #124]	; (d004e97c <main+0x18bc>)
d004e900:	213b      	movs	r1, #59	; 0x3b
d004e902:	222b      	movs	r2, #43	; 0x2b
d004e904:	7028      	strb	r0, [r5, #0]
d004e906:	2001      	movs	r0, #1
d004e908:	2302      	movs	r3, #2
d004e90a:	2514      	movs	r5, #20
d004e90c:	9004      	str	r0, [sp, #16]
d004e90e:	481a      	ldr	r0, [pc, #104]	; (d004e978 <main+0x18b8>)
d004e910:	7001      	strb	r1, [r0, #0]
d004e912:	2011      	movs	r0, #17
d004e914:	4917      	ldr	r1, [pc, #92]	; (d004e974 <main+0x18b4>)
d004e916:	700a      	strb	r2, [r1, #0]
d004e918:	4a1c      	ldr	r2, [pc, #112]	; (d004e98c <main+0x18cc>)
d004e91a:	7013      	strb	r3, [r2, #0]
d004e91c:	e555      	b.n	d004e3ca <main+0x130a>
d004e91e:	2332      	movs	r3, #50	; 0x32
d004e920:	fb95 f5f3 	sdiv	r5, r5, r3
d004e924:	fa1f f985 	uxth.w	r9, r5
d004e928:	b22d      	sxth	r5, r5
d004e92a:	e660      	b.n	d004e5ee <main+0x152e>
d004e92c:	d005a72c 	.word	0xd005a72c
d004e930:	45e7b273 	.word	0x45e7b273
d004e934:	d005a59c 	.word	0xd005a59c
d004e938:	00075300 	.word	0x00075300
d004e93c:	d005a590 	.word	0xd005a590
d004e940:	d00576cc 	.word	0xd00576cc
d004e944:	d005a454 	.word	0xd005a454
d004e948:	d005a70c 	.word	0xd005a70c
d004e94c:	d00f4b60 	.word	0xd00f4b60
d004e950:	d00f4b40 	.word	0xd00f4b40
d004e954:	40d33334 	.word	0x40d33334
d004e958:	42f20000 	.word	0x42f20000
d004e95c:	3f8ccccd 	.word	0x3f8ccccd
d004e960:	4312770a 	.word	0x4312770a
d004e964:	3f28f5c3 	.word	0x3f28f5c3
d004e968:	4215999a 	.word	0x4215999a
d004e96c:	bc872b02 	.word	0xbc872b02
d004e970:	3f0ccccd 	.word	0x3f0ccccd
d004e974:	d00f4b3c 	.word	0xd00f4b3c
d004e978:	d00f4a80 	.word	0xd00f4a80
d004e97c:	d00f4b04 	.word	0xd00f4b04
d004e980:	c3c80000 	.word	0xc3c80000
d004e984:	c3070000 	.word	0xc3070000
d004e988:	00000000 	.word	0x00000000
d004e98c:	d00f4ae4 	.word	0xd00f4ae4
d004e990:	d005a44c 	.word	0xd005a44c
d004e994:	d005a734 	.word	0xd005a734
d004e998:	e6c2b449 	.word	0xe6c2b449
d004e99c:	d005a736 	.word	0xd005a736

d004e9a0 <meshSetDefaultMaterial>:
d004e9a0:	b148      	cbz	r0, d004e9b6 <meshSetDefaultMaterial+0x16>
d004e9a2:	2300      	movs	r3, #0
d004e9a4:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d004e9a8:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d004e9ac:	6203      	str	r3, [r0, #32]
d004e9ae:	6241      	str	r1, [r0, #36]	; 0x24
d004e9b0:	62c2      	str	r2, [r0, #44]	; 0x2c
d004e9b2:	6303      	str	r3, [r0, #48]	; 0x30
d004e9b4:	6283      	str	r3, [r0, #40]	; 0x28
d004e9b6:	4770      	bx	lr

d004e9b8 <meshSetMaterial>:
d004e9b8:	b148      	cbz	r0, d004e9ce <meshSetMaterial+0x16>
d004e9ba:	ed80 0a08 	vstr	s0, [r0, #32]
d004e9be:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d004e9c2:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d004e9c6:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d004e9ca:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d004e9ce:	4770      	bx	lr

d004e9d0 <initDepthBandMem>:
d004e9d0:	b510      	push	{r4, lr}
d004e9d2:	4c0c      	ldr	r4, [pc, #48]	; (d004ea04 <initDepthBandMem+0x34>)
d004e9d4:	6823      	ldr	r3, [r4, #0]
d004e9d6:	b103      	cbz	r3, d004e9da <initDepthBandMem+0xa>
d004e9d8:	bd10      	pop	{r4, pc}
d004e9da:	4a0b      	ldr	r2, [pc, #44]	; (d004ea08 <initDepthBandMem+0x38>)
d004e9dc:	7813      	ldrb	r3, [r2, #0]
d004e9de:	7850      	ldrb	r0, [r2, #1]
d004e9e0:	7891      	ldrb	r1, [r2, #2]
d004e9e2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004e9e6:	78d2      	ldrb	r2, [r2, #3]
d004e9e8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004e9ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004e9f0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e9f2:	4798      	blx	r3
d004e9f4:	2800      	cmp	r0, #0
d004e9f6:	d0ef      	beq.n	d004e9d8 <initDepthBandMem+0x8>
d004e9f8:	301f      	adds	r0, #31
d004e9fa:	f020 001f 	bic.w	r0, r0, #31
d004e9fe:	6020      	str	r0, [r4, #0]
d004ea00:	bd10      	pop	{r4, pc}
d004ea02:	bf00      	nop
d004ea04:	d005a744 	.word	0xd005a744
d004ea08:	2001f000 	.word	0x2001f000

d004ea0c <beginDepthBand>:
d004ea0c:	f100 031f 	add.w	r3, r0, #31
d004ea10:	4a0d      	ldr	r2, [pc, #52]	; (d004ea48 <beginDepthBand+0x3c>)
d004ea12:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d004ea16:	6010      	str	r0, [r2, #0]
d004ea18:	da08      	bge.n	d004ea2c <beginDepthBand+0x20>
d004ea1a:	490c      	ldr	r1, [pc, #48]	; (d004ea4c <beginDepthBand+0x40>)
d004ea1c:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d004ea20:	600b      	str	r3, [r1, #0]
d004ea22:	21ff      	movs	r1, #255	; 0xff
d004ea24:	4b0a      	ldr	r3, [pc, #40]	; (d004ea50 <beginDepthBand+0x44>)
d004ea26:	6818      	ldr	r0, [r3, #0]
d004ea28:	f006 be5a 	b.w	d00556e0 <memset>
d004ea2c:	4b07      	ldr	r3, [pc, #28]	; (d004ea4c <beginDepthBand+0x40>)
d004ea2e:	f240 123f 	movw	r2, #319	; 0x13f
d004ea32:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d004ea36:	21ff      	movs	r1, #255	; 0xff
d004ea38:	601a      	str	r2, [r3, #0]
d004ea3a:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d004ea3e:	4b04      	ldr	r3, [pc, #16]	; (d004ea50 <beginDepthBand+0x44>)
d004ea40:	0182      	lsls	r2, r0, #6
d004ea42:	6818      	ldr	r0, [r3, #0]
d004ea44:	f006 be4c 	b.w	d00556e0 <memset>
d004ea48:	d005a73c 	.word	0xd005a73c
d004ea4c:	d005a740 	.word	0xd005a740
d004ea50:	d005a744 	.word	0xd005a744

d004ea54 <set3DRenderBuffer>:
d004ea54:	4b01      	ldr	r3, [pc, #4]	; (d004ea5c <set3DRenderBuffer+0x8>)
d004ea56:	6018      	str	r0, [r3, #0]
d004ea58:	4770      	bx	lr
d004ea5a:	bf00      	nop
d004ea5c:	d00f4c10 	.word	0xd00f4c10

d004ea60 <putPixel>:
d004ea60:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d004ea64:	d209      	bcs.n	d004ea7a <putPixel+0x1a>
d004ea66:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d004ea6a:	d206      	bcs.n	d004ea7a <putPixel+0x1a>
d004ea6c:	4b03      	ldr	r3, [pc, #12]	; (d004ea7c <putPixel+0x1c>)
d004ea6e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004ea72:	681b      	ldr	r3, [r3, #0]
d004ea74:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d004ea78:	5442      	strb	r2, [r0, r1]
d004ea7a:	4770      	bx	lr
d004ea7c:	d00f4c10 	.word	0xd00f4c10

d004ea80 <drawLine>:
d004ea80:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004ea84:	b085      	sub	sp, #20
d004ea86:	eba2 0c00 	sub.w	ip, r2, r0
d004ea8a:	eba3 0901 	sub.w	r9, r3, r1
d004ea8e:	f240 1edf 	movw	lr, #479	; 0x1df
d004ea92:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d004ea96:	f240 1a3f 	movw	sl, #319	; 0x13f
d004ea9a:	f8df b07c 	ldr.w	fp, [pc, #124]	; d004eb18 <drawLine+0x98>
d004ea9e:	9401      	str	r4, [sp, #4]
d004eaa0:	4282      	cmp	r2, r0
d004eaa2:	bfcc      	ite	gt
d004eaa4:	2401      	movgt	r4, #1
d004eaa6:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004eaaa:	9402      	str	r4, [sp, #8]
d004eaac:	428b      	cmp	r3, r1
d004eaae:	bfcc      	ite	gt
d004eab0:	2401      	movgt	r4, #1
d004eab2:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004eab6:	f1bc 0f00 	cmp.w	ip, #0
d004eaba:	9403      	str	r4, [sp, #12]
d004eabc:	bfb8      	it	lt
d004eabe:	f1cc 0c00 	rsblt	ip, ip, #0
d004eac2:	f1b9 0f00 	cmp.w	r9, #0
d004eac6:	bfb8      	it	lt
d004eac8:	f1c9 0900 	rsblt	r9, r9, #0
d004eacc:	ebac 0409 	sub.w	r4, ip, r9
d004ead0:	f1c9 0800 	rsb	r8, r9, #0
d004ead4:	4570      	cmp	r0, lr
d004ead6:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d004eada:	ea4f 0644 	mov.w	r6, r4, lsl #1
d004eade:	d807      	bhi.n	d004eaf0 <drawLine+0x70>
d004eae0:	4551      	cmp	r1, sl
d004eae2:	d805      	bhi.n	d004eaf0 <drawLine+0x70>
d004eae4:	f8db 5000 	ldr.w	r5, [fp]
d004eae8:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d004eaec:	9f01      	ldr	r7, [sp, #4]
d004eaee:	546f      	strb	r7, [r5, r1]
d004eaf0:	4290      	cmp	r0, r2
d004eaf2:	d101      	bne.n	d004eaf8 <drawLine+0x78>
d004eaf4:	4299      	cmp	r1, r3
d004eaf6:	d00c      	beq.n	d004eb12 <drawLine+0x92>
d004eaf8:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d004eafc:	dc05      	bgt.n	d004eb0a <drawLine+0x8a>
d004eafe:	9d02      	ldr	r5, [sp, #8]
d004eb00:	45b4      	cmp	ip, r6
d004eb02:	eba4 0409 	sub.w	r4, r4, r9
d004eb06:	4428      	add	r0, r5
d004eb08:	dbe4      	blt.n	d004ead4 <drawLine+0x54>
d004eb0a:	9d03      	ldr	r5, [sp, #12]
d004eb0c:	4464      	add	r4, ip
d004eb0e:	4429      	add	r1, r5
d004eb10:	e7e0      	b.n	d004ead4 <drawLine+0x54>
d004eb12:	b005      	add	sp, #20
d004eb14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004eb18:	d00f4c10 	.word	0xd00f4c10

d004eb1c <fillTriangleDitherBayer>:
d004eb1c:	eddf 7ac9 	vldr	s15, [pc, #804]	; d004ee44 <fillTriangleDitherBayer+0x328>
d004eb20:	eef4 0ae7 	vcmpe.f32	s1, s15
d004eb24:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004eb28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb2c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004eb30:	ed2d 8b10 	vpush	{d8-d15}
d004eb34:	b09b      	sub	sp, #108	; 0x6c
d004eb36:	9202      	str	r2, [sp, #8]
d004eb38:	bf94      	ite	ls
d004eb3a:	2201      	movls	r2, #1
d004eb3c:	2200      	movhi	r2, #0
d004eb3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb42:	9303      	str	r3, [sp, #12]
d004eb44:	f8bd 40d8 	ldrh.w	r4, [sp, #216]	; 0xd8
d004eb48:	bf98      	it	ls
d004eb4a:	f042 0201 	orrls.w	r2, r2, #1
d004eb4e:	f89d 30e4 	ldrb.w	r3, [sp, #228]	; 0xe4
d004eb52:	e9cd 0100 	strd	r0, r1, [sp]
d004eb56:	f8bd 00dc 	ldrh.w	r0, [sp, #220]	; 0xdc
d004eb5a:	f8bd 10e0 	ldrh.w	r1, [sp, #224]	; 0xe0
d004eb5e:	2a00      	cmp	r2, #0
d004eb60:	f040 81d8 	bne.w	d004ef14 <fillTriangleDitherBayer+0x3f8>
d004eb64:	eeb4 0a67 	vcmp.f32	s0, s15
d004eb68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb6c:	f240 81d2 	bls.w	d004ef14 <fillTriangleDitherBayer+0x3f8>
d004eb70:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004eb74:	eddf 7aac 	vldr	s15, [pc, #688]	; d004ee28 <fillTriangleDitherBayer+0x30c>
d004eb78:	eef1 5a04 	vmov.f32	s11, #20	; 0x40a00000  5.0
d004eb7c:	fec1 1aa7 	vmaxnm.f32	s3, s3, s15
d004eb80:	ee07 4a90 	vmov	s15, r4
d004eb84:	eec7 2a00 	vdiv.f32	s5, s14, s0
d004eb88:	fec1 5ae5 	vminnm.f32	s11, s3, s11
d004eb8c:	ee87 3a01 	vdiv.f32	s6, s14, s2
d004eb90:	eec7 1a20 	vdiv.f32	s3, s14, s1
d004eb94:	eebd 7ae5 	vcvt.s32.f32	s14, s11
d004eb98:	eef8 7a67 	vcvt.f32.u32	s15, s15
d004eb9c:	ee17 2a10 	vmov	r2, s14
d004eba0:	ee07 0a10 	vmov	s14, r0
d004eba4:	ee67 7aa2 	vmul.f32	s15, s15, s5
d004eba8:	eef8 6a47 	vcvt.f32.u32	s13, s14
d004ebac:	ee07 1a10 	vmov	s14, r1
d004ebb0:	1c51      	adds	r1, r2, #1
d004ebb2:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004ebb6:	2905      	cmp	r1, #5
d004ebb8:	bfa8      	it	ge
d004ebba:	2105      	movge	r1, #5
d004ebbc:	2a04      	cmp	r2, #4
d004ebbe:	ee66 6aa1 	vmul.f32	s13, s13, s3
d004ebc2:	ee27 1a03 	vmul.f32	s2, s14, s6
d004ebc6:	f300 85ed 	bgt.w	d004f7a4 <fillTriangleDitherBayer+0xc88>
d004ebca:	f003 030f 	and.w	r3, r3, #15
d004ebce:	2a03      	cmp	r2, #3
d004ebd0:	f103 0320 	add.w	r3, r3, #32
d004ebd4:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004ebd8:	fa5f fb80 	uxtb.w	fp, r0
d004ebdc:	f300 85e4 	bgt.w	d004f7a8 <fillTriangleDitherBayer+0xc8c>
d004ebe0:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004ebe4:	b2db      	uxtb	r3, r3
d004ebe6:	9304      	str	r3, [sp, #16]
d004ebe8:	ed9d 7a01 	vldr	s14, [sp, #4]
d004ebec:	ed9d 5a02 	vldr	s10, [sp, #8]
d004ebf0:	eeb8 6ac7 	vcvt.f32.s32	s12, s14
d004ebf4:	ed9d 7a03 	vldr	s14, [sp, #12]
d004ebf8:	eeb8 4ac5 	vcvt.f32.s32	s8, s10
d004ebfc:	ed9d 5a34 	vldr	s10, [sp, #208]	; 0xd0
d004ec00:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004ec04:	ed9d 7a00 	vldr	s14, [sp]
d004ec08:	eef8 0ac5 	vcvt.f32.s32	s1, s10
d004ec0c:	ed9d 5a35 	vldr	s10, [sp, #212]	; 0xd4
d004ec10:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004ec14:	eeb4 6ae3 	vcmpe.f32	s12, s7
d004ec18:	eef8 4ac5 	vcvt.f32.s32	s9, s10
d004ec1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec20:	f300 817d 	bgt.w	d004ef1e <fillTriangleDitherBayer+0x402>
d004ec24:	eeb4 6ae4 	vcmpe.f32	s12, s9
d004ec28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec2c:	f300 81cb 	bgt.w	d004efc6 <fillTriangleDitherBayer+0x4aa>
d004ec30:	eef4 3ae4 	vcmpe.f32	s7, s9
d004ec34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec38:	dd17      	ble.n	d004ec6a <fillTriangleDitherBayer+0x14e>
d004ec3a:	eeb0 8a66 	vmov.f32	s16, s13
d004ec3e:	eeb0 0a61 	vmov.f32	s0, s3
d004ec42:	eeb0 2a63 	vmov.f32	s4, s7
d004ec46:	eeb0 5a44 	vmov.f32	s10, s8
d004ec4a:	eef0 6a41 	vmov.f32	s13, s2
d004ec4e:	eef0 1a43 	vmov.f32	s3, s6
d004ec52:	eef0 3a64 	vmov.f32	s7, s9
d004ec56:	eeb0 4a60 	vmov.f32	s8, s1
d004ec5a:	eeb0 1a48 	vmov.f32	s2, s16
d004ec5e:	eeb0 3a40 	vmov.f32	s6, s0
d004ec62:	eef0 4a42 	vmov.f32	s9, s4
d004ec66:	eef0 0a45 	vmov.f32	s1, s10
d004ec6a:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d004ec6e:	ee34 2a85 	vadd.f32	s4, s9, s10
d004ec72:	ee36 5a05 	vadd.f32	s10, s12, s10
d004ec76:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d004ec7a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004ec7e:	ee12 1a10 	vmov	r1, s4
d004ec82:	ee15 3a10 	vmov	r3, s10
d004ec86:	428b      	cmp	r3, r1
d004ec88:	f000 8144 	beq.w	d004ef14 <fillTriangleDitherBayer+0x3f8>
d004ec8c:	ee34 5ac6 	vsub.f32	s10, s9, s12
d004ec90:	ed9f 2a6c 	vldr	s4, [pc, #432]	; d004ee44 <fillTriangleDitherBayer+0x328>
d004ec94:	eeb4 5ac2 	vcmpe.f32	s10, s4
d004ec98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec9c:	f240 813a 	bls.w	d004ef14 <fillTriangleDitherBayer+0x3f8>
d004eca0:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004eca4:	ee73 9ac6 	vsub.f32	s19, s7, s12
d004eca8:	ee30 0ac7 	vsub.f32	s0, s1, s14
d004ecac:	ee8a 9a05 	vdiv.f32	s18, s20, s10
d004ecb0:	eef4 9ac2 	vcmpe.f32	s19, s4
d004ecb4:	ee33 8a62 	vsub.f32	s16, s6, s5
d004ecb8:	ee71 8a67 	vsub.f32	s17, s2, s15
d004ecbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ecc0:	ee20 0a09 	vmul.f32	s0, s0, s18
d004ecc4:	ee28 8a09 	vmul.f32	s16, s16, s18
d004ecc8:	ee68 8a89 	vmul.f32	s17, s17, s18
d004eccc:	f300 8145 	bgt.w	d004ef5a <fillTriangleDitherBayer+0x43e>
d004ecd0:	ee05 2a10 	vmov	s10, r2
d004ecd4:	ee34 9ae3 	vsub.f32	s18, s9, s7
d004ecd8:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004ecdc:	eeb4 9ac2 	vcmpe.f32	s18, s4
d004ece0:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d004ece4:	ee75 5ac5 	vsub.f32	s11, s11, s10
d004ece8:	eeb0 5a65 	vmov.f32	s10, s11
d004ecec:	eebe 5ace 	vcvt.s32.f32	s10, s10, #4
d004ecf0:	ee15 3a10 	vmov	r3, s10
d004ecf4:	f383 0204 	usat	r2, #4, r3
d004ecf8:	9207      	str	r2, [sp, #28]
d004ecfa:	9a04      	ldr	r2, [sp, #16]
d004ecfc:	455a      	cmp	r2, fp
d004ecfe:	bf18      	it	ne
d004ed00:	2b00      	cmpne	r3, #0
d004ed02:	bfd4      	ite	le
d004ed04:	2301      	movle	r3, #1
d004ed06:	2300      	movgt	r3, #0
d004ed08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed0c:	9302      	str	r3, [sp, #8]
d004ed0e:	f340 8101 	ble.w	d004ef14 <fillTriangleDitherBayer+0x3f8>
d004ed12:	eddf fa45 	vldr	s31, [pc, #276]	; d004ee28 <fillTriangleDitherBayer+0x30c>
d004ed16:	eef0 5a49 	vmov.f32	s11, s18
d004ed1a:	eeb0 ba6f 	vmov.f32	s22, s31
d004ed1e:	eef0 da6f 	vmov.f32	s27, s31
d004ed22:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d004ed26:	ed9f 5a47 	vldr	s10, [pc, #284]	; d004ee44 <fillTriangleDitherBayer+0x328>
d004ed2a:	ee70 0ac4 	vsub.f32	s1, s1, s8
d004ed2e:	ee33 3a61 	vsub.f32	s6, s6, s3
d004ed32:	eec2 5a25 	vdiv.f32	s11, s4, s11
d004ed36:	ee31 1a66 	vsub.f32	s2, s2, s13
d004ed3a:	eef4 9ac5 	vcmpe.f32	s19, s10
d004ed3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed42:	ee20 2aa5 	vmul.f32	s4, s1, s11
d004ed46:	ee23 3a25 	vmul.f32	s6, s6, s11
d004ed4a:	ee61 5a25 	vmul.f32	s11, s2, s11
d004ed4e:	ed8d 2a12 	vstr	s4, [sp, #72]	; 0x48
d004ed52:	ed8d 3a13 	vstr	s6, [sp, #76]	; 0x4c
d004ed56:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d004ed5a:	f300 82e1 	bgt.w	d004f320 <fillTriangleDitherBayer+0x804>
d004ed5e:	eefd 5ae3 	vcvt.s32.f32	s11, s7
d004ed62:	4a32      	ldr	r2, [pc, #200]	; (d004ee2c <fillTriangleDitherBayer+0x310>)
d004ed64:	4b32      	ldr	r3, [pc, #200]	; (d004ee30 <fillTriangleDitherBayer+0x314>)
d004ed66:	6812      	ldr	r2, [r2, #0]
d004ed68:	edcd 5a0b 	vstr	s11, [sp, #44]	; 0x2c
d004ed6c:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ed70:	681b      	ldr	r3, [r3, #0]
d004ed72:	920c      	str	r2, [sp, #48]	; 0x30
d004ed74:	edcd 5a10 	vstr	s11, [sp, #64]	; 0x40
d004ed78:	930f      	str	r3, [sp, #60]	; 0x3c
d004ed7a:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d004ed7e:	eef4 3ae5 	vcmpe.f32	s7, s11
d004ed82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed86:	dd02      	ble.n	d004ed8e <fillTriangleDitherBayer+0x272>
d004ed88:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004ed8a:	3301      	adds	r3, #1
d004ed8c:	930b      	str	r3, [sp, #44]	; 0x2c
d004ed8e:	eefd 5ae4 	vcvt.s32.f32	s11, s9
d004ed92:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004ed94:	980c      	ldr	r0, [sp, #48]	; 0x30
d004ed96:	ee15 2a90 	vmov	r2, s11
d004ed9a:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ed9e:	eef4 4ae5 	vcmpe.f32	s9, s11
d004eda2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eda6:	bfd8      	it	le
d004eda8:	f102 32ff 	addle.w	r2, r2, #4294967295	; 0xffffffff
d004edac:	4293      	cmp	r3, r2
d004edae:	bfa8      	it	ge
d004edb0:	4613      	movge	r3, r2
d004edb2:	461a      	mov	r2, r3
d004edb4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004edb6:	4283      	cmp	r3, r0
d004edb8:	bfb8      	it	lt
d004edba:	4603      	movlt	r3, r0
d004edbc:	429a      	cmp	r2, r3
d004edbe:	9305      	str	r3, [sp, #20]
d004edc0:	f2c0 80a8 	blt.w	d004ef14 <fillTriangleDitherBayer+0x3f8>
d004edc4:	ee05 3a90 	vmov	s11, r3
d004edc8:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d004edcc:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004edd0:	4918      	ldr	r1, [pc, #96]	; (d004ee34 <fillTriangleDitherBayer+0x318>)
d004edd2:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004edd6:	ed9d ca12 	vldr	s24, [sp, #72]	; 0x48
d004edda:	015b      	lsls	r3, r3, #5
d004eddc:	eddd ca13 	vldr	s25, [sp, #76]	; 0x4c
d004ede0:	eddd ba11 	vldr	s23, [sp, #68]	; 0x44
d004ede4:	ee75 5a85 	vadd.f32	s11, s11, s10
d004ede8:	930d      	str	r3, [sp, #52]	; 0x34
d004edea:	1c53      	adds	r3, r2, #1
d004edec:	eddf 0a15 	vldr	s1, [pc, #84]	; d004ee44 <fillTriangleDitherBayer+0x328>
d004edf0:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004ee38 <fillTriangleDitherBayer+0x31c>
d004edf4:	ee35 6ac6 	vsub.f32	s12, s11, s12
d004edf8:	9309      	str	r3, [sp, #36]	; 0x24
d004edfa:	ee75 3ae3 	vsub.f32	s7, s11, s7
d004edfe:	680b      	ldr	r3, [r1, #0]
d004ee00:	ed9f 9a09 	vldr	s18, [pc, #36]	; d004ee28 <fillTriangleDitherBayer+0x30c>
d004ee04:	eea0 7a06 	vfma.f32	s14, s0, s12
d004ee08:	eddf 9a0c 	vldr	s19, [pc, #48]	; d004ee3c <fillTriangleDitherBayer+0x320>
d004ee0c:	eee8 2a06 	vfma.f32	s5, s16, s12
d004ee10:	ed9f aa0b 	vldr	s20, [pc, #44]	; d004ee40 <fillTriangleDitherBayer+0x324>
d004ee14:	eee8 7a86 	vfma.f32	s15, s17, s12
d004ee18:	930c      	str	r3, [sp, #48]	; 0x30
d004ee1a:	eea3 4a8c 	vfma.f32	s8, s7, s24
d004ee1e:	eeec 1aa3 	vfma.f32	s3, s25, s7
d004ee22:	eeeb 6aa3 	vfma.f32	s13, s23, s7
d004ee26:	e051      	b.n	d004eecc <fillTriangleDitherBayer+0x3b0>
d004ee28:	00000000 	.word	0x00000000
d004ee2c:	d005a73c 	.word	0xd005a73c
d004ee30:	d005a740 	.word	0xd005a740
d004ee34:	d005a744 	.word	0xd005a744
d004ee38:	33d6bf95 	.word	0x33d6bf95
d004ee3c:	477fff00 	.word	0x477fff00
d004ee40:	43800000 	.word	0x43800000
d004ee44:	38d1b717 	.word	0x38d1b717
d004ee48:	eeb0 2a67 	vmov.f32	s4, s15
d004ee4c:	eeb0 3a62 	vmov.f32	s6, s5
d004ee50:	eeb0 6a47 	vmov.f32	s12, s14
d004ee54:	eef0 4a66 	vmov.f32	s9, s13
d004ee58:	eef0 5a61 	vmov.f32	s11, s3
d004ee5c:	eeb0 5a44 	vmov.f32	s10, s8
d004ee60:	eefd 3ac5 	vcvt.s32.f32	s7, s10
d004ee64:	f240 12df 	movw	r2, #479	; 0x1df
d004ee68:	ee13 1a90 	vmov	r1, s7
d004ee6c:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004ee70:	eeb4 5ae3 	vcmpe.f32	s10, s7
d004ee74:	eefd 3ac6 	vcvt.s32.f32	s7, s12
d004ee78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee7c:	ee13 3a90 	vmov	r3, s7
d004ee80:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004ee84:	bfc8      	it	gt
d004ee86:	3101      	addgt	r1, #1
d004ee88:	eeb4 6ae3 	vcmpe.f32	s12, s7
d004ee8c:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004ee90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee94:	bfd8      	it	le
d004ee96:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004ee9a:	4293      	cmp	r3, r2
d004ee9c:	bfa8      	it	ge
d004ee9e:	4613      	movge	r3, r2
d004eea0:	428b      	cmp	r3, r1
d004eea2:	469a      	mov	sl, r3
d004eea4:	f280 80c1 	bge.w	d004f02a <fillTriangleDitherBayer+0x50e>
d004eea8:	9b05      	ldr	r3, [sp, #20]
d004eeaa:	ee37 7a00 	vadd.f32	s14, s14, s0
d004eeae:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004eeb0:	ee72 2a88 	vadd.f32	s5, s5, s16
d004eeb4:	3301      	adds	r3, #1
d004eeb6:	ee77 7aa8 	vadd.f32	s15, s15, s17
d004eeba:	ee34 4a0c 	vadd.f32	s8, s8, s24
d004eebe:	4293      	cmp	r3, r2
d004eec0:	ee71 1aac 	vadd.f32	s3, s3, s25
d004eec4:	ee76 6aab 	vadd.f32	s13, s13, s23
d004eec8:	9305      	str	r3, [sp, #20]
d004eeca:	d023      	beq.n	d004ef14 <fillTriangleDitherBayer+0x3f8>
d004eecc:	eeb4 7ac4 	vcmpe.f32	s14, s8
d004eed0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eed4:	dcb8      	bgt.n	d004ee48 <fillTriangleDitherBayer+0x32c>
d004eed6:	eeb0 2a66 	vmov.f32	s4, s13
d004eeda:	eeb0 3a61 	vmov.f32	s6, s3
d004eede:	eeb0 6a44 	vmov.f32	s12, s8
d004eee2:	eef0 4a67 	vmov.f32	s9, s15
d004eee6:	eef0 5a62 	vmov.f32	s11, s5
d004eeea:	eeb0 5a47 	vmov.f32	s10, s14
d004eeee:	e7b7      	b.n	d004ee60 <fillTriangleDitherBayer+0x344>
d004eef0:	ed9d 4a16 	vldr	s8, [sp, #88]	; 0x58
d004eef4:	ed9d 6a17 	vldr	s12, [sp, #92]	; 0x5c
d004eef8:	eddd 6a18 	vldr	s13, [sp, #96]	; 0x60
d004eefc:	ed9d 7a19 	vldr	s14, [sp, #100]	; 0x64
d004ef00:	ed5f 5a30 	vldr	s11, [pc, #-192]	; d004ee44 <fillTriangleDitherBayer+0x328>
d004ef04:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d004ef08:	eeb4 5ae5 	vcmpe.f32	s10, s11
d004ef0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ef10:	f73f af33 	bgt.w	d004ed7a <fillTriangleDitherBayer+0x25e>
d004ef14:	b01b      	add	sp, #108	; 0x6c
d004ef16:	ecbd 8b10 	vpop	{d8-d15}
d004ef1a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004ef1e:	eef4 3ae4 	vcmpe.f32	s7, s9
d004ef22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ef26:	dd67      	ble.n	d004eff8 <fillTriangleDitherBayer+0x4dc>
d004ef28:	eeb0 8a41 	vmov.f32	s16, s2
d004ef2c:	eeb0 0a43 	vmov.f32	s0, s6
d004ef30:	eeb0 2a64 	vmov.f32	s4, s9
d004ef34:	eeb0 5a60 	vmov.f32	s10, s1
d004ef38:	eeb0 1a67 	vmov.f32	s2, s15
d004ef3c:	eeb0 3a62 	vmov.f32	s6, s5
d004ef40:	eef0 4a46 	vmov.f32	s9, s12
d004ef44:	eef0 0a47 	vmov.f32	s1, s14
d004ef48:	eef0 7a48 	vmov.f32	s15, s16
d004ef4c:	eef0 2a40 	vmov.f32	s5, s0
d004ef50:	eeb0 6a42 	vmov.f32	s12, s4
d004ef54:	eeb0 7a45 	vmov.f32	s14, s10
d004ef58:	e687      	b.n	d004ec6a <fillTriangleDitherBayer+0x14e>
d004ef5a:	ee05 2a10 	vmov	s10, r2
d004ef5e:	ee8a 9a29 	vdiv.f32	s18, s20, s19
d004ef62:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004ef66:	ee74 bae3 	vsub.f32	s23, s9, s7
d004ef6a:	ee74 aa47 	vsub.f32	s21, s8, s14
d004ef6e:	ee75 5ac5 	vsub.f32	s11, s11, s10
d004ef72:	ee31 aae2 	vsub.f32	s20, s3, s5
d004ef76:	edcd ba0a 	vstr	s23, [sp, #40]	; 0x28
d004ef7a:	eef4 bac2 	vcmpe.f32	s23, s4
d004ef7e:	eeb0 ba65 	vmov.f32	s22, s11
d004ef82:	ee36 5ae7 	vsub.f32	s10, s13, s15
d004ef86:	eebe bace 	vcvt.s32.f32	s22, s22, #4
d004ef8a:	ee6a 5a89 	vmul.f32	s11, s21, s18
d004ef8e:	ee1b 3a10 	vmov	r3, s22
d004ef92:	ee65 fa09 	vmul.f32	s31, s10, s18
d004ef96:	f383 0204 	usat	r2, #4, r3
d004ef9a:	eef0 da65 	vmov.f32	s27, s11
d004ef9e:	ee6a 5a09 	vmul.f32	s11, s20, s18
d004efa2:	9207      	str	r2, [sp, #28]
d004efa4:	9a04      	ldr	r2, [sp, #16]
d004efa6:	eeb0 ba65 	vmov.f32	s22, s11
d004efaa:	455a      	cmp	r2, fp
d004efac:	bf18      	it	ne
d004efae:	2b00      	cmpne	r3, #0
d004efb0:	bfd4      	ite	le
d004efb2:	2301      	movle	r3, #1
d004efb4:	2300      	movgt	r3, #0
d004efb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004efba:	9302      	str	r3, [sp, #8]
d004efbc:	f340 81a8 	ble.w	d004f310 <fillTriangleDitherBayer+0x7f4>
d004efc0:	eef0 5a6b 	vmov.f32	s11, s23
d004efc4:	e6ad      	b.n	d004ed22 <fillTriangleDitherBayer+0x206>
d004efc6:	eeb0 8a67 	vmov.f32	s16, s15
d004efca:	eeb0 0a62 	vmov.f32	s0, s5
d004efce:	eeb0 2a46 	vmov.f32	s4, s12
d004efd2:	eeb0 5a47 	vmov.f32	s10, s14
d004efd6:	eef0 7a41 	vmov.f32	s15, s2
d004efda:	eef0 2a43 	vmov.f32	s5, s6
d004efde:	eeb0 6a64 	vmov.f32	s12, s9
d004efe2:	eeb0 7a60 	vmov.f32	s14, s1
d004efe6:	eeb0 1a48 	vmov.f32	s2, s16
d004efea:	eeb0 3a40 	vmov.f32	s6, s0
d004efee:	eef0 4a42 	vmov.f32	s9, s4
d004eff2:	eef0 0a45 	vmov.f32	s1, s10
d004eff6:	e61b      	b.n	d004ec30 <fillTriangleDitherBayer+0x114>
d004eff8:	eeb0 8a67 	vmov.f32	s16, s15
d004effc:	eeb0 0a62 	vmov.f32	s0, s5
d004f000:	eeb0 2a46 	vmov.f32	s4, s12
d004f004:	eeb0 5a47 	vmov.f32	s10, s14
d004f008:	eef0 7a66 	vmov.f32	s15, s13
d004f00c:	eef0 2a61 	vmov.f32	s5, s3
d004f010:	eeb0 6a63 	vmov.f32	s12, s7
d004f014:	eeb0 7a44 	vmov.f32	s14, s8
d004f018:	eef0 6a48 	vmov.f32	s13, s16
d004f01c:	eef0 1a40 	vmov.f32	s3, s0
d004f020:	eef0 3a42 	vmov.f32	s7, s4
d004f024:	eeb0 4a45 	vmov.f32	s8, s10
d004f028:	e602      	b.n	d004ec30 <fillTriangleDitherBayer+0x114>
d004f02a:	ee36 6a45 	vsub.f32	s12, s12, s10
d004f02e:	eeb4 6ae0 	vcmpe.f32	s12, s1
d004f032:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f036:	f340 83c0 	ble.w	d004f7ba <fillTriangleDitherBayer+0xc9e>
d004f03a:	eef7 aa00 	vmov.f32	s21, #112	; 0x3f800000  1.0
d004f03e:	ee33 3a65 	vsub.f32	s6, s6, s11
d004f042:	ee32 2a64 	vsub.f32	s4, s4, s9
d004f046:	eeca 3a86 	vdiv.f32	s7, s21, s12
d004f04a:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004f04e:	ee36 6a45 	vsub.f32	s12, s12, s10
d004f052:	ee05 1a10 	vmov	s10, r1
d004f056:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f05a:	ee35 5a06 	vadd.f32	s10, s10, s12
d004f05e:	ee23 3a23 	vmul.f32	s6, s6, s7
d004f062:	ee22 2a23 	vmul.f32	s4, s4, s7
d004f066:	eee5 5a03 	vfma.f32	s11, s10, s6
d004f06a:	eee5 4a02 	vfma.f32	s9, s10, s4
d004f06e:	9805      	ldr	r0, [sp, #20]
d004f070:	eb01 0681 	add.w	r6, r1, r1, lsl #2
d004f074:	9d0d      	ldr	r5, [sp, #52]	; 0x34
d004f076:	eef6 aa00 	vmov.f32	s21, #96	; 0x3f000000  0.5
d004f07a:	ebc0 1200 	rsb	r2, r0, r0, lsl #4
d004f07e:	4ba0      	ldr	r3, [pc, #640]	; (d004f300 <fillTriangleDitherBayer+0x7e4>)
d004f080:	4ca0      	ldr	r4, [pc, #640]	; (d004f304 <fillTriangleDitherBayer+0x7e8>)
d004f082:	eebe ba00 	vmov.f32	s22, #224	; 0xbf000000 -0.5
d004f086:	eb05 1242 	add.w	r2, r5, r2, lsl #5
d004f08a:	4605      	mov	r5, r0
d004f08c:	681b      	ldr	r3, [r3, #0]
d004f08e:	f000 0003 	and.w	r0, r0, #3
d004f092:	eb05 1686 	add.w	r6, r5, r6, lsl #6
d004f096:	440a      	add	r2, r1
d004f098:	441e      	add	r6, r3
d004f09a:	eb04 0380 	add.w	r3, r4, r0, lsl #2
d004f09e:	9306      	str	r3, [sp, #24]
d004f0a0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004f0a2:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004f0a6:	e9cd 3a00 	strd	r3, sl, [sp]
d004f0aa:	9b01      	ldr	r3, [sp, #4]
d004f0ac:	eef4 5ac1 	vcmpe.f32	s11, s2
d004f0b0:	eba3 0e01 	sub.w	lr, r3, r1
d004f0b4:	f10e 0301 	add.w	r3, lr, #1
d004f0b8:	2b30      	cmp	r3, #48	; 0x30
d004f0ba:	bfa8      	it	ge
d004f0bc:	2330      	movge	r3, #48	; 0x30
d004f0be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f0c2:	ee06 3a10 	vmov	s12, r3
d004f0c6:	eef8 3ac6 	vcvt.f32.s32	s7, s12
d004f0ca:	d97b      	bls.n	d004f1c4 <fillTriangleDitherBayer+0x6a8>
d004f0cc:	f1be 0f00 	cmp.w	lr, #0
d004f0d0:	ee84 6aa5 	vdiv.f32	s12, s9, s11
d004f0d4:	f340 8084 	ble.w	d004f1e0 <fillTriangleDitherBayer+0x6c4>
d004f0d8:	1e5a      	subs	r2, r3, #1
d004f0da:	ee05 2a10 	vmov	s10, r2
d004f0de:	eeb0 da65 	vmov.f32	s26, s11
d004f0e2:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f0e6:	eea3 da05 	vfma.f32	s26, s6, s10
d004f0ea:	eeb4 dac1 	vcmpe.f32	s26, s2
d004f0ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f0f2:	f340 809e 	ble.w	d004f232 <fillTriangleDitherBayer+0x716>
d004f0f6:	eef0 da64 	vmov.f32	s27, s9
d004f0fa:	eee2 da05 	vfma.f32	s27, s4, s10
d004f0fe:	ee8d 5a8d 	vdiv.f32	s10, s27, s26
d004f102:	4a81      	ldr	r2, [pc, #516]	; (d004f308 <fillTriangleDitherBayer+0x7ec>)
d004f104:	fe86 6a09 	vmaxnm.f32	s12, s12, s18
d004f108:	fe85 5a09 	vmaxnm.f32	s10, s10, s18
d004f10c:	fe86 6a69 	vminnm.f32	s12, s12, s19
d004f110:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d004f114:	fe85 5a69 	vminnm.f32	s10, s10, s19
d004f118:	ed92 da00 	vldr	s26, [r2]
d004f11c:	ee35 5a46 	vsub.f32	s10, s10, s12
d004f120:	eef0 da6a 	vmov.f32	s27, s21
d004f124:	009a      	lsls	r2, r3, #2
d004f126:	ee2d da0a 	vmul.f32	s26, s26, s20
d004f12a:	9203      	str	r2, [sp, #12]
d004f12c:	eee6 da0a 	vfma.f32	s27, s12, s20
d004f130:	9a02      	ldr	r2, [sp, #8]
d004f132:	ee25 5a0d 	vmul.f32	s10, s10, s26
d004f136:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d004f13a:	eebd 6aed 	vcvt.s32.f32	s12, s27
d004f13e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f142:	fe2a da8b 	vselge.f32	s26, s21, s22
d004f146:	ee3d 5a05 	vadd.f32	s10, s26, s10
d004f14a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004f14e:	ee15 7a10 	vmov	r7, s10
d004f152:	2a00      	cmp	r2, #0
d004f154:	d070      	beq.n	d004f238 <fillTriangleDitherBayer+0x71c>
d004f156:	2f00      	cmp	r7, #0
d004f158:	f000 8334 	beq.w	d004f7c4 <fillTriangleDitherBayer+0xca8>
d004f15c:	9800      	ldr	r0, [sp, #0]
d004f15e:	ee16 2a10 	vmov	r2, s12
d004f162:	1e85      	subs	r5, r0, #2
d004f164:	3280      	adds	r2, #128	; 0x80
d004f166:	2000      	movs	r0, #0
d004f168:	f3c2 2c0f 	ubfx	ip, r2, #8, #16
d004f16c:	f835 8f02 	ldrh.w	r8, [r5, #2]!
d004f170:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f174:	443a      	add	r2, r7
d004f176:	45e0      	cmp	r8, ip
d004f178:	f100 0001 	add.w	r0, r0, #1
d004f17c:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f180:	d903      	bls.n	d004f18a <fillTriangleDitherBayer+0x66e>
d004f182:	f8a5 c000 	strh.w	ip, [r5]
d004f186:	f806 b004 	strb.w	fp, [r6, r4]
d004f18a:	4283      	cmp	r3, r0
d004f18c:	dcec      	bgt.n	d004f168 <fillTriangleDitherBayer+0x64c>
d004f18e:	9a03      	ldr	r2, [sp, #12]
d004f190:	f1be 0f00 	cmp.w	lr, #0
d004f194:	ea4f 0043 	mov.w	r0, r3, lsl #1
d004f198:	9c00      	ldr	r4, [sp, #0]
d004f19a:	441a      	add	r2, r3
d004f19c:	bfb8      	it	lt
d004f19e:	2002      	movlt	r0, #2
d004f1a0:	ea4f 1282 	mov.w	r2, r2, lsl #6
d004f1a4:	bfb8      	it	lt
d004f1a6:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d004f1aa:	4404      	add	r4, r0
d004f1ac:	4416      	add	r6, r2
d004f1ae:	9400      	str	r4, [sp, #0]
d004f1b0:	eee3 5a23 	vfma.f32	s11, s6, s7
d004f1b4:	4419      	add	r1, r3
d004f1b6:	eee2 4a23 	vfma.f32	s9, s4, s7
d004f1ba:	9b01      	ldr	r3, [sp, #4]
d004f1bc:	428b      	cmp	r3, r1
d004f1be:	f6bf af74 	bge.w	d004f0aa <fillTriangleDitherBayer+0x58e>
d004f1c2:	e671      	b.n	d004eea8 <fillTriangleDitherBayer+0x38c>
d004f1c4:	9800      	ldr	r0, [sp, #0]
d004f1c6:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004f1ca:	eee3 5a23 	vfma.f32	s11, s6, s7
d004f1ce:	4419      	add	r1, r3
d004f1d0:	eb00 0043 	add.w	r0, r0, r3, lsl #1
d004f1d4:	eee2 4a23 	vfma.f32	s9, s4, s7
d004f1d8:	eb06 1682 	add.w	r6, r6, r2, lsl #6
d004f1dc:	9000      	str	r0, [sp, #0]
d004f1de:	e7ec      	b.n	d004f1ba <fillTriangleDitherBayer+0x69e>
d004f1e0:	eeb0 5a6a 	vmov.f32	s10, s21
d004f1e4:	fe86 6a09 	vmaxnm.f32	s12, s12, s18
d004f1e8:	fe86 6a69 	vminnm.f32	s12, s12, s19
d004f1ec:	9a02      	ldr	r2, [sp, #8]
d004f1ee:	eea6 5a0a 	vfma.f32	s10, s12, s20
d004f1f2:	eebd 6ac5 	vcvt.s32.f32	s12, s10
d004f1f6:	2a00      	cmp	r2, #0
d004f1f8:	d052      	beq.n	d004f2a0 <fillTriangleDitherBayer+0x784>
d004f1fa:	ee16 7a10 	vmov	r7, s12
d004f1fe:	3780      	adds	r7, #128	; 0x80
d004f200:	f3c7 270f 	ubfx	r7, r7, #8, #16
d004f204:	f1be 0f00 	cmp.w	lr, #0
d004f208:	d1d2      	bne.n	d004f1b0 <fillTriangleDitherBayer+0x694>
d004f20a:	009a      	lsls	r2, r3, #2
d004f20c:	9203      	str	r2, [sp, #12]
d004f20e:	9a00      	ldr	r2, [sp, #0]
d004f210:	1e94      	subs	r4, r2, #2
d004f212:	2200      	movs	r2, #0
d004f214:	f834 5f02 	ldrh.w	r5, [r4, #2]!
d004f218:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d004f21c:	3201      	adds	r2, #1
d004f21e:	42bd      	cmp	r5, r7
d004f220:	ea4f 1080 	mov.w	r0, r0, lsl #6
d004f224:	d902      	bls.n	d004f22c <fillTriangleDitherBayer+0x710>
d004f226:	8027      	strh	r7, [r4, #0]
d004f228:	f806 b000 	strb.w	fp, [r6, r0]
d004f22c:	4293      	cmp	r3, r2
d004f22e:	dcf1      	bgt.n	d004f214 <fillTriangleDitherBayer+0x6f8>
d004f230:	e7ad      	b.n	d004f18e <fillTriangleDitherBayer+0x672>
d004f232:	eeb0 5a46 	vmov.f32	s10, s12
d004f236:	e764      	b.n	d004f102 <fillTriangleDitherBayer+0x5e6>
d004f238:	f001 0003 	and.w	r0, r1, #3
d004f23c:	2f00      	cmp	r7, #0
d004f23e:	f000 82d3 	beq.w	d004f7e8 <fillTriangleDitherBayer+0xccc>
d004f242:	9c00      	ldr	r4, [sp, #0]
d004f244:	ee16 2a10 	vmov	r2, s12
d004f248:	f8cd e028 	str.w	lr, [sp, #40]	; 0x28
d004f24c:	f1a4 0c02 	sub.w	ip, r4, #2
d004f250:	910b      	str	r1, [sp, #44]	; 0x2c
d004f252:	3280      	adds	r2, #128	; 0x80
d004f254:	9907      	ldr	r1, [sp, #28]
d004f256:	9c02      	ldr	r4, [sp, #8]
d004f258:	f8dd e010 	ldr.w	lr, [sp, #16]
d004f25c:	9108      	str	r1, [sp, #32]
d004f25e:	f3c2 280f 	ubfx	r8, r2, #8, #16
d004f262:	f83c af02 	ldrh.w	sl, [ip, #2]!
d004f266:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f26a:	f100 0901 	add.w	r9, r0, #1
d004f26e:	45c2      	cmp	sl, r8
d004f270:	443a      	add	r2, r7
d004f272:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f276:	f104 0401 	add.w	r4, r4, #1
d004f27a:	d909      	bls.n	d004f290 <fillTriangleDitherBayer+0x774>
d004f27c:	9906      	ldr	r1, [sp, #24]
d004f27e:	f8ac 8000 	strh.w	r8, [ip]
d004f282:	5c08      	ldrb	r0, [r1, r0]
d004f284:	9908      	ldr	r1, [sp, #32]
d004f286:	4288      	cmp	r0, r1
d004f288:	bfb4      	ite	lt
d004f28a:	4670      	movlt	r0, lr
d004f28c:	4658      	movge	r0, fp
d004f28e:	5570      	strb	r0, [r6, r5]
d004f290:	42a3      	cmp	r3, r4
d004f292:	f009 0003 	and.w	r0, r9, #3
d004f296:	dce2      	bgt.n	d004f25e <fillTriangleDitherBayer+0x742>
d004f298:	f8dd e028 	ldr.w	lr, [sp, #40]	; 0x28
d004f29c:	990b      	ldr	r1, [sp, #44]	; 0x2c
d004f29e:	e776      	b.n	d004f18e <fillTriangleDitherBayer+0x672>
d004f2a0:	ee16 2a10 	vmov	r2, s12
d004f2a4:	f001 0003 	and.w	r0, r1, #3
d004f2a8:	3280      	adds	r2, #128	; 0x80
d004f2aa:	f3c2 220f 	ubfx	r2, r2, #8, #16
d004f2ae:	f1be 0f00 	cmp.w	lr, #0
d004f2b2:	f47f af7d 	bne.w	d004f1b0 <fillTriangleDitherBayer+0x694>
d004f2b6:	009c      	lsls	r4, r3, #2
d004f2b8:	9403      	str	r4, [sp, #12]
d004f2ba:	9c00      	ldr	r4, [sp, #0]
d004f2bc:	9108      	str	r1, [sp, #32]
d004f2be:	1ea7      	subs	r7, r4, #2
d004f2c0:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004f2c4:	2400      	movs	r4, #0
d004f2c6:	9907      	ldr	r1, [sp, #28]
d004f2c8:	f8dd a018 	ldr.w	sl, [sp, #24]
d004f2cc:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f2d0:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f2d4:	f100 0c01 	add.w	ip, r0, #1
d004f2d8:	3401      	adds	r4, #1
d004f2da:	4590      	cmp	r8, r2
d004f2dc:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f2e0:	d907      	bls.n	d004f2f2 <fillTriangleDitherBayer+0x7d6>
d004f2e2:	803a      	strh	r2, [r7, #0]
d004f2e4:	f81a 0000 	ldrb.w	r0, [sl, r0]
d004f2e8:	4288      	cmp	r0, r1
d004f2ea:	bfb4      	ite	lt
d004f2ec:	4648      	movlt	r0, r9
d004f2ee:	4658      	movge	r0, fp
d004f2f0:	5570      	strb	r0, [r6, r5]
d004f2f2:	42a3      	cmp	r3, r4
d004f2f4:	f00c 0003 	and.w	r0, ip, #3
d004f2f8:	dce8      	bgt.n	d004f2cc <fillTriangleDitherBayer+0x7b0>
d004f2fa:	9908      	ldr	r1, [sp, #32]
d004f2fc:	e747      	b.n	d004f18e <fillTriangleDitherBayer+0x672>
d004f2fe:	bf00      	nop
d004f300:	d00f4c10 	.word	0xd00f4c10
d004f304:	d0057920 	.word	0xd0057920
d004f308:	d0057940 	.word	0xd0057940
d004f30c:	00000000 	.word	0x00000000
d004f310:	ed5f 5a02 	vldr	s11, [pc, #-8]	; d004f30c <fillTriangleDitherBayer+0x7f0>
d004f314:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d004f318:	edcd 5a13 	vstr	s11, [sp, #76]	; 0x4c
d004f31c:	edcd 5a12 	vstr	s11, [sp, #72]	; 0x48
d004f320:	eefd 5ac6 	vcvt.s32.f32	s11, s12
d004f324:	48cd      	ldr	r0, [pc, #820]	; (d004f65c <fillTriangleDitherBayer+0xb40>)
d004f326:	49ce      	ldr	r1, [pc, #824]	; (d004f660 <fillTriangleDitherBayer+0xb44>)
d004f328:	6800      	ldr	r0, [r0, #0]
d004f32a:	ee15 2a90 	vmov	r2, s11
d004f32e:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004f332:	6809      	ldr	r1, [r1, #0]
d004f334:	900c      	str	r0, [sp, #48]	; 0x30
d004f336:	eeb4 6ae5 	vcmpe.f32	s12, s11
d004f33a:	910f      	str	r1, [sp, #60]	; 0x3c
d004f33c:	eefd 5ae3 	vcvt.s32.f32	s11, s7
d004f340:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f344:	eeb8 5ae5 	vcvt.f32.s32	s10, s11
d004f348:	ee15 3a90 	vmov	r3, s11
d004f34c:	edcd 5a0b 	vstr	s11, [sp, #44]	; 0x2c
d004f350:	bfc8      	it	gt
d004f352:	3201      	addgt	r2, #1
d004f354:	eef4 3ac5 	vcmpe.f32	s7, s10
d004f358:	ed8d 5a10 	vstr	s10, [sp, #64]	; 0x40
d004f35c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f360:	bfd8      	it	le
d004f362:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f366:	4282      	cmp	r2, r0
d004f368:	bfb8      	it	lt
d004f36a:	4602      	movlt	r2, r0
d004f36c:	428b      	cmp	r3, r1
d004f36e:	bfa8      	it	ge
d004f370:	460b      	movge	r3, r1
d004f372:	9205      	str	r2, [sp, #20]
d004f374:	4293      	cmp	r3, r2
d004f376:	f6ff adc3 	blt.w	d004ef00 <fillTriangleDitherBayer+0x3e4>
d004f37a:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004f37e:	3301      	adds	r3, #1
d004f380:	eef0 ba62 	vmov.f32	s23, s5
d004f384:	49b7      	ldr	r1, [pc, #732]	; (d004f664 <fillTriangleDitherBayer+0xb48>)
d004f386:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d004f38a:	9309      	str	r3, [sp, #36]	; 0x24
d004f38c:	ee35 5ac6 	vsub.f32	s10, s11, s12
d004f390:	eddd 5a05 	vldr	s11, [sp, #20]
d004f394:	680b      	ldr	r3, [r1, #0]
d004f396:	eeb0 aa47 	vmov.f32	s20, s14
d004f39a:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004f39e:	eddf aab2 	vldr	s21, [pc, #712]	; d004f668 <fillTriangleDitherBayer+0xb4c>
d004f3a2:	eef0 ca62 	vmov.f32	s25, s5
d004f3a6:	9314      	str	r3, [sp, #80]	; 0x50
d004f3a8:	eeb0 ca67 	vmov.f32	s24, s15
d004f3ac:	0153      	lsls	r3, r2, #5
d004f3ae:	ee75 5a85 	vadd.f32	s11, s11, s10
d004f3b2:	ed9f daae 	vldr	s26, [pc, #696]	; d004f66c <fillTriangleDitherBayer+0xb50>
d004f3b6:	eef0 9a47 	vmov.f32	s19, s14
d004f3ba:	ed9f eaad 	vldr	s28, [pc, #692]	; d004f670 <fillTriangleDitherBayer+0xb54>
d004f3be:	eeb0 9a4b 	vmov.f32	s18, s22
d004f3c2:	ed9f faac 	vldr	s30, [pc, #688]	; d004f674 <fillTriangleDitherBayer+0xb58>
d004f3c6:	eeeb ba25 	vfma.f32	s23, s22, s11
d004f3ca:	9315      	str	r3, [sp, #84]	; 0x54
d004f3cc:	eeb0 ba67 	vmov.f32	s22, s15
d004f3d0:	ed8d 4a16 	vstr	s8, [sp, #88]	; 0x58
d004f3d4:	eea0 aa25 	vfma.f32	s20, s0, s11
d004f3d8:	ed8d 6a17 	vstr	s12, [sp, #92]	; 0x5c
d004f3dc:	eee8 ca25 	vfma.f32	s25, s16, s11
d004f3e0:	edcd 6a18 	vstr	s13, [sp, #96]	; 0x60
d004f3e4:	eea8 caa5 	vfma.f32	s24, s17, s11
d004f3e8:	ed8d 7a19 	vstr	s14, [sp, #100]	; 0x64
d004f3ec:	eeed 9aa5 	vfma.f32	s19, s27, s11
d004f3f0:	eeaf baa5 	vfma.f32	s22, s31, s11
d004f3f4:	e041      	b.n	d004f47a <fillTriangleDitherBayer+0x95e>
d004f3f6:	eeb0 3a4c 	vmov.f32	s6, s24
d004f3fa:	eeb0 4a6c 	vmov.f32	s8, s25
d004f3fe:	eef0 6a4a 	vmov.f32	s13, s20
d004f402:	eeb0 6a4b 	vmov.f32	s12, s22
d004f406:	eeb0 7a6b 	vmov.f32	s14, s23
d004f40a:	eef0 5a69 	vmov.f32	s11, s19
d004f40e:	eebd 5ae5 	vcvt.s32.f32	s10, s11
d004f412:	f240 12df 	movw	r2, #479	; 0x1df
d004f416:	ee15 1a10 	vmov	r1, s10
d004f41a:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f41e:	eef4 5ac5 	vcmpe.f32	s11, s10
d004f422:	eebd 5ae6 	vcvt.s32.f32	s10, s13
d004f426:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f42a:	ee15 3a10 	vmov	r3, s10
d004f42e:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f432:	bfc8      	it	gt
d004f434:	3101      	addgt	r1, #1
d004f436:	eef4 6ac5 	vcmpe.f32	s13, s10
d004f43a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004f43e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f442:	bfd8      	it	le
d004f444:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f448:	4293      	cmp	r3, r2
d004f44a:	bfa8      	it	ge
d004f44c:	4613      	movge	r3, r2
d004f44e:	428b      	cmp	r3, r1
d004f450:	469a      	mov	sl, r3
d004f452:	da24      	bge.n	d004f49e <fillTriangleDitherBayer+0x982>
d004f454:	9b05      	ldr	r3, [sp, #20]
d004f456:	ee3a aa00 	vadd.f32	s20, s20, s0
d004f45a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004f45c:	ee7c ca88 	vadd.f32	s25, s25, s16
d004f460:	3301      	adds	r3, #1
d004f462:	ee3c ca28 	vadd.f32	s24, s24, s17
d004f466:	ee79 9aad 	vadd.f32	s19, s19, s27
d004f46a:	429a      	cmp	r2, r3
d004f46c:	ee7b ba89 	vadd.f32	s23, s23, s18
d004f470:	ee3b ba2f 	vadd.f32	s22, s22, s31
d004f474:	9305      	str	r3, [sp, #20]
d004f476:	f43f ad3b 	beq.w	d004eef0 <fillTriangleDitherBayer+0x3d4>
d004f47a:	eeb4 aae9 	vcmpe.f32	s20, s19
d004f47e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f482:	dcb8      	bgt.n	d004f3f6 <fillTriangleDitherBayer+0x8da>
d004f484:	eeb0 3a4b 	vmov.f32	s6, s22
d004f488:	eeb0 4a6b 	vmov.f32	s8, s23
d004f48c:	eef0 6a69 	vmov.f32	s13, s19
d004f490:	eeb0 6a4c 	vmov.f32	s12, s24
d004f494:	eeb0 7a6c 	vmov.f32	s14, s25
d004f498:	eef0 5a4a 	vmov.f32	s11, s20
d004f49c:	e7b7      	b.n	d004f40e <fillTriangleDitherBayer+0x8f2>
d004f49e:	ee76 6ae5 	vsub.f32	s13, s13, s11
d004f4a2:	ed9f 5a75 	vldr	s10, [pc, #468]	; d004f678 <fillTriangleDitherBayer+0xb5c>
d004f4a6:	eef4 6ac5 	vcmpe.f32	s13, s10
d004f4aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f4ae:	f340 817f 	ble.w	d004f7b0 <fillTriangleDitherBayer+0xc94>
d004f4b2:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d004f4b6:	ee34 4a47 	vsub.f32	s8, s8, s14
d004f4ba:	ee33 3a46 	vsub.f32	s6, s6, s12
d004f4be:	ee82 5a26 	vdiv.f32	s10, s4, s13
d004f4c2:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004f4c6:	ee76 5ae5 	vsub.f32	s11, s13, s11
d004f4ca:	ee06 1a90 	vmov	s13, r1
d004f4ce:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004f4d2:	ee76 5aa5 	vadd.f32	s11, s13, s11
d004f4d6:	ee24 4a05 	vmul.f32	s8, s8, s10
d004f4da:	ee23 3a05 	vmul.f32	s6, s6, s10
d004f4de:	eea5 7a84 	vfma.f32	s14, s11, s8
d004f4e2:	eea5 6a83 	vfma.f32	s12, s11, s6
d004f4e6:	9805      	ldr	r0, [sp, #20]
d004f4e8:	eb01 0681 	add.w	r6, r1, r1, lsl #2
d004f4ec:	9d15      	ldr	r5, [sp, #84]	; 0x54
d004f4ee:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d004f4f2:	ebc0 1200 	rsb	r2, r0, r0, lsl #4
d004f4f6:	4b61      	ldr	r3, [pc, #388]	; (d004f67c <fillTriangleDitherBayer+0xb60>)
d004f4f8:	4c61      	ldr	r4, [pc, #388]	; (d004f680 <fillTriangleDitherBayer+0xb64>)
d004f4fa:	eefe 0a00 	vmov.f32	s1, #224	; 0xbf000000 -0.5
d004f4fe:	eb05 1242 	add.w	r2, r5, r2, lsl #5
d004f502:	4605      	mov	r5, r0
d004f504:	681b      	ldr	r3, [r3, #0]
d004f506:	f000 0003 	and.w	r0, r0, #3
d004f50a:	eb05 1686 	add.w	r6, r5, r6, lsl #6
d004f50e:	440a      	add	r2, r1
d004f510:	441e      	add	r6, r3
d004f512:	eb04 0380 	add.w	r3, r4, r0, lsl #2
d004f516:	9306      	str	r3, [sp, #24]
d004f518:	9b14      	ldr	r3, [sp, #80]	; 0x50
d004f51a:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004f51e:	e9cd 3a00 	strd	r3, sl, [sp]
d004f522:	9b01      	ldr	r3, [sp, #4]
d004f524:	eeb4 7aea 	vcmpe.f32	s14, s21
d004f528:	eba3 0e01 	sub.w	lr, r3, r1
d004f52c:	f10e 0201 	add.w	r2, lr, #1
d004f530:	2a30      	cmp	r2, #48	; 0x30
d004f532:	bfa8      	it	ge
d004f534:	2230      	movge	r2, #48	; 0x30
d004f536:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f53a:	ee06 2a90 	vmov	s13, r2
d004f53e:	eef8 5ae6 	vcvt.f32.s32	s11, s13
d004f542:	d97c      	bls.n	d004f63e <fillTriangleDitherBayer+0xb22>
d004f544:	f1be 0f00 	cmp.w	lr, #0
d004f548:	eec6 6a07 	vdiv.f32	s13, s12, s14
d004f54c:	f340 809c 	ble.w	d004f688 <fillTriangleDitherBayer+0xb6c>
d004f550:	1e53      	subs	r3, r2, #1
d004f552:	ee05 3a10 	vmov	s10, r3
d004f556:	eeb0 1a47 	vmov.f32	s2, s14
d004f55a:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f55e:	eea4 1a05 	vfma.f32	s2, s8, s10
d004f562:	eeb4 1aea 	vcmpe.f32	s2, s21
d004f566:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f56a:	f340 80b6 	ble.w	d004f6da <fillTriangleDitherBayer+0xbbe>
d004f56e:	eef0 ea46 	vmov.f32	s29, s12
d004f572:	eee3 ea05 	vfma.f32	s29, s6, s10
d004f576:	ee8e 5a81 	vdiv.f32	s10, s29, s2
d004f57a:	4b42      	ldr	r3, [pc, #264]	; (d004f684 <fillTriangleDitherBayer+0xb68>)
d004f57c:	fec6 6a8d 	vmaxnm.f32	s13, s13, s26
d004f580:	fe85 5a0d 	vmaxnm.f32	s10, s10, s26
d004f584:	fec6 6ace 	vminnm.f32	s13, s13, s28
d004f588:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d004f58c:	fe85 5a4e 	vminnm.f32	s10, s10, s28
d004f590:	ed93 1a00 	vldr	s2, [r3]
d004f594:	ee35 5a66 	vsub.f32	s10, s10, s13
d004f598:	eef0 ea42 	vmov.f32	s29, s4
d004f59c:	0093      	lsls	r3, r2, #2
d004f59e:	ee21 1a0f 	vmul.f32	s2, s2, s30
d004f5a2:	9303      	str	r3, [sp, #12]
d004f5a4:	eee6 ea8f 	vfma.f32	s29, s13, s30
d004f5a8:	9b02      	ldr	r3, [sp, #8]
d004f5aa:	ee25 5a01 	vmul.f32	s10, s10, s2
d004f5ae:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d004f5b2:	eefd 6aee 	vcvt.s32.f32	s13, s29
d004f5b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f5ba:	fe22 1a20 	vselge.f32	s2, s4, s1
d004f5be:	ee31 5a05 	vadd.f32	s10, s2, s10
d004f5c2:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004f5c6:	ee15 5a10 	vmov	r5, s10
d004f5ca:	2b00      	cmp	r3, #0
d004f5cc:	f000 8088 	beq.w	d004f6e0 <fillTriangleDitherBayer+0xbc4>
d004f5d0:	2d00      	cmp	r5, #0
d004f5d2:	f000 8103 	beq.w	d004f7dc <fillTriangleDitherBayer+0xcc0>
d004f5d6:	9800      	ldr	r0, [sp, #0]
d004f5d8:	ee16 3a90 	vmov	r3, s13
d004f5dc:	1e87      	subs	r7, r0, #2
d004f5de:	3380      	adds	r3, #128	; 0x80
d004f5e0:	2000      	movs	r0, #0
d004f5e2:	f3c3 2c0f 	ubfx	ip, r3, #8, #16
d004f5e6:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f5ea:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f5ee:	442b      	add	r3, r5
d004f5f0:	45e0      	cmp	r8, ip
d004f5f2:	f100 0001 	add.w	r0, r0, #1
d004f5f6:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f5fa:	d903      	bls.n	d004f604 <fillTriangleDitherBayer+0xae8>
d004f5fc:	f8a7 c000 	strh.w	ip, [r7]
d004f600:	f806 b004 	strb.w	fp, [r6, r4]
d004f604:	4282      	cmp	r2, r0
d004f606:	dcec      	bgt.n	d004f5e2 <fillTriangleDitherBayer+0xac6>
d004f608:	9b03      	ldr	r3, [sp, #12]
d004f60a:	f1be 0f00 	cmp.w	lr, #0
d004f60e:	ea4f 0042 	mov.w	r0, r2, lsl #1
d004f612:	9c00      	ldr	r4, [sp, #0]
d004f614:	4413      	add	r3, r2
d004f616:	bfb8      	it	lt
d004f618:	2002      	movlt	r0, #2
d004f61a:	ea4f 1383 	mov.w	r3, r3, lsl #6
d004f61e:	bfb8      	it	lt
d004f620:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004f624:	4404      	add	r4, r0
d004f626:	441e      	add	r6, r3
d004f628:	9400      	str	r4, [sp, #0]
d004f62a:	eea4 7a25 	vfma.f32	s14, s8, s11
d004f62e:	4411      	add	r1, r2
d004f630:	eea3 6a25 	vfma.f32	s12, s6, s11
d004f634:	9b01      	ldr	r3, [sp, #4]
d004f636:	4299      	cmp	r1, r3
d004f638:	f77f af73 	ble.w	d004f522 <fillTriangleDitherBayer+0xa06>
d004f63c:	e70a      	b.n	d004f454 <fillTriangleDitherBayer+0x938>
d004f63e:	9800      	ldr	r0, [sp, #0]
d004f640:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004f644:	eea4 7a25 	vfma.f32	s14, s8, s11
d004f648:	4411      	add	r1, r2
d004f64a:	eb00 0042 	add.w	r0, r0, r2, lsl #1
d004f64e:	eea3 6a25 	vfma.f32	s12, s6, s11
d004f652:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d004f656:	9000      	str	r0, [sp, #0]
d004f658:	e7ec      	b.n	d004f634 <fillTriangleDitherBayer+0xb18>
d004f65a:	bf00      	nop
d004f65c:	d005a73c 	.word	0xd005a73c
d004f660:	d005a740 	.word	0xd005a740
d004f664:	d005a744 	.word	0xd005a744
d004f668:	33d6bf95 	.word	0x33d6bf95
d004f66c:	00000000 	.word	0x00000000
d004f670:	477fff00 	.word	0x477fff00
d004f674:	43800000 	.word	0x43800000
d004f678:	38d1b717 	.word	0x38d1b717
d004f67c:	d00f4c10 	.word	0xd00f4c10
d004f680:	d0057920 	.word	0xd0057920
d004f684:	d0057940 	.word	0xd0057940
d004f688:	eeb0 5a42 	vmov.f32	s10, s4
d004f68c:	fec6 6a8d 	vmaxnm.f32	s13, s13, s26
d004f690:	fec6 6ace 	vminnm.f32	s13, s13, s28
d004f694:	9b02      	ldr	r3, [sp, #8]
d004f696:	eea6 5a8f 	vfma.f32	s10, s13, s30
d004f69a:	eefd 6ac5 	vcvt.s32.f32	s13, s10
d004f69e:	2b00      	cmp	r3, #0
d004f6a0:	d051      	beq.n	d004f746 <fillTriangleDitherBayer+0xc2a>
d004f6a2:	ee16 3a90 	vmov	r3, s13
d004f6a6:	3380      	adds	r3, #128	; 0x80
d004f6a8:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f6ac:	f1be 0f00 	cmp.w	lr, #0
d004f6b0:	d1bb      	bne.n	d004f62a <fillTriangleDitherBayer+0xb0e>
d004f6b2:	0090      	lsls	r0, r2, #2
d004f6b4:	9003      	str	r0, [sp, #12]
d004f6b6:	9800      	ldr	r0, [sp, #0]
d004f6b8:	1e85      	subs	r5, r0, #2
d004f6ba:	2000      	movs	r0, #0
d004f6bc:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d004f6c0:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f6c4:	3001      	adds	r0, #1
d004f6c6:	429f      	cmp	r7, r3
d004f6c8:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f6cc:	d902      	bls.n	d004f6d4 <fillTriangleDitherBayer+0xbb8>
d004f6ce:	802b      	strh	r3, [r5, #0]
d004f6d0:	f806 b004 	strb.w	fp, [r6, r4]
d004f6d4:	4282      	cmp	r2, r0
d004f6d6:	dcf1      	bgt.n	d004f6bc <fillTriangleDitherBayer+0xba0>
d004f6d8:	e796      	b.n	d004f608 <fillTriangleDitherBayer+0xaec>
d004f6da:	eeb0 5a66 	vmov.f32	s10, s13
d004f6de:	e74c      	b.n	d004f57a <fillTriangleDitherBayer+0xa5e>
d004f6e0:	f001 0003 	and.w	r0, r1, #3
d004f6e4:	2d00      	cmp	r5, #0
d004f6e6:	d073      	beq.n	d004f7d0 <fillTriangleDitherBayer+0xcb4>
d004f6e8:	9c00      	ldr	r4, [sp, #0]
d004f6ea:	ee16 3a90 	vmov	r3, s13
d004f6ee:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
d004f6f2:	f1a4 0c02 	sub.w	ip, r4, #2
d004f6f6:	910e      	str	r1, [sp, #56]	; 0x38
d004f6f8:	3380      	adds	r3, #128	; 0x80
d004f6fa:	9907      	ldr	r1, [sp, #28]
d004f6fc:	9c02      	ldr	r4, [sp, #8]
d004f6fe:	f8dd e010 	ldr.w	lr, [sp, #16]
d004f702:	9108      	str	r1, [sp, #32]
d004f704:	f3c3 280f 	ubfx	r8, r3, #8, #16
d004f708:	f83c af02 	ldrh.w	sl, [ip, #2]!
d004f70c:	eb04 0784 	add.w	r7, r4, r4, lsl #2
d004f710:	f100 0901 	add.w	r9, r0, #1
d004f714:	45c2      	cmp	sl, r8
d004f716:	442b      	add	r3, r5
d004f718:	ea4f 1787 	mov.w	r7, r7, lsl #6
d004f71c:	f104 0401 	add.w	r4, r4, #1
d004f720:	d909      	bls.n	d004f736 <fillTriangleDitherBayer+0xc1a>
d004f722:	9906      	ldr	r1, [sp, #24]
d004f724:	f8ac 8000 	strh.w	r8, [ip]
d004f728:	5c08      	ldrb	r0, [r1, r0]
d004f72a:	9908      	ldr	r1, [sp, #32]
d004f72c:	4288      	cmp	r0, r1
d004f72e:	bfac      	ite	ge
d004f730:	4658      	movge	r0, fp
d004f732:	4670      	movlt	r0, lr
d004f734:	55f0      	strb	r0, [r6, r7]
d004f736:	42a2      	cmp	r2, r4
d004f738:	f009 0003 	and.w	r0, r9, #3
d004f73c:	dce2      	bgt.n	d004f704 <fillTriangleDitherBayer+0xbe8>
d004f73e:	f8dd e034 	ldr.w	lr, [sp, #52]	; 0x34
d004f742:	990e      	ldr	r1, [sp, #56]	; 0x38
d004f744:	e760      	b.n	d004f608 <fillTriangleDitherBayer+0xaec>
d004f746:	ee16 3a90 	vmov	r3, s13
d004f74a:	f001 0003 	and.w	r0, r1, #3
d004f74e:	3380      	adds	r3, #128	; 0x80
d004f750:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f754:	f1be 0f00 	cmp.w	lr, #0
d004f758:	f47f af67 	bne.w	d004f62a <fillTriangleDitherBayer+0xb0e>
d004f75c:	0094      	lsls	r4, r2, #2
d004f75e:	9403      	str	r4, [sp, #12]
d004f760:	9c00      	ldr	r4, [sp, #0]
d004f762:	9108      	str	r1, [sp, #32]
d004f764:	1ea7      	subs	r7, r4, #2
d004f766:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004f76a:	2400      	movs	r4, #0
d004f76c:	f8dd a018 	ldr.w	sl, [sp, #24]
d004f770:	9907      	ldr	r1, [sp, #28]
d004f772:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f776:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f77a:	f100 0c01 	add.w	ip, r0, #1
d004f77e:	3401      	adds	r4, #1
d004f780:	4598      	cmp	r8, r3
d004f782:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f786:	d907      	bls.n	d004f798 <fillTriangleDitherBayer+0xc7c>
d004f788:	803b      	strh	r3, [r7, #0]
d004f78a:	f81a 0000 	ldrb.w	r0, [sl, r0]
d004f78e:	4288      	cmp	r0, r1
d004f790:	bfac      	ite	ge
d004f792:	4658      	movge	r0, fp
d004f794:	4648      	movlt	r0, r9
d004f796:	5570      	strb	r0, [r6, r5]
d004f798:	42a2      	cmp	r2, r4
d004f79a:	f00c 0003 	and.w	r0, ip, #3
d004f79e:	dce8      	bgt.n	d004f772 <fillTriangleDitherBayer+0xc56>
d004f7a0:	9908      	ldr	r1, [sp, #32]
d004f7a2:	e731      	b.n	d004f608 <fillTriangleDitherBayer+0xaec>
d004f7a4:	f04f 0b10 	mov.w	fp, #16
d004f7a8:	2310      	movs	r3, #16
d004f7aa:	9304      	str	r3, [sp, #16]
d004f7ac:	f7ff ba1c 	b.w	d004ebe8 <fillTriangleDitherBayer+0xcc>
d004f7b0:	eeb0 3a4d 	vmov.f32	s6, s26
d004f7b4:	eeb0 4a4d 	vmov.f32	s8, s26
d004f7b8:	e695      	b.n	d004f4e6 <fillTriangleDitherBayer+0x9ca>
d004f7ba:	eeb0 2a49 	vmov.f32	s4, s18
d004f7be:	eeb0 3a49 	vmov.f32	s6, s18
d004f7c2:	e454      	b.n	d004f06e <fillTriangleDitherBayer+0x552>
d004f7c4:	ee16 7a10 	vmov	r7, s12
d004f7c8:	3780      	adds	r7, #128	; 0x80
d004f7ca:	f3c7 270f 	ubfx	r7, r7, #8, #16
d004f7ce:	e51e      	b.n	d004f20e <fillTriangleDitherBayer+0x6f2>
d004f7d0:	ee16 3a90 	vmov	r3, s13
d004f7d4:	3380      	adds	r3, #128	; 0x80
d004f7d6:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f7da:	e7c1      	b.n	d004f760 <fillTriangleDitherBayer+0xc44>
d004f7dc:	ee16 3a90 	vmov	r3, s13
d004f7e0:	3380      	adds	r3, #128	; 0x80
d004f7e2:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f7e6:	e766      	b.n	d004f6b6 <fillTriangleDitherBayer+0xb9a>
d004f7e8:	ee16 2a10 	vmov	r2, s12
d004f7ec:	3280      	adds	r2, #128	; 0x80
d004f7ee:	f3c2 220f 	ubfx	r2, r2, #8, #16
d004f7f2:	e562      	b.n	d004f2ba <fillTriangleDitherBayer+0x79e>

d004f7f4 <fillTriangleDitherBayerT>:
d004f7f4:	eddf 7aca 	vldr	s15, [pc, #808]	; d004fb20 <fillTriangleDitherBayerT+0x32c>
d004f7f8:	eef4 0ae7 	vcmpe.f32	s1, s15
d004f7fc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004f800:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f804:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004f808:	ed2d 8b10 	vpush	{d8-d15}
d004f80c:	b099      	sub	sp, #100	; 0x64
d004f80e:	9205      	str	r2, [sp, #20]
d004f810:	bf94      	ite	ls
d004f812:	2201      	movls	r2, #1
d004f814:	2200      	movhi	r2, #0
d004f816:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f81a:	9002      	str	r0, [sp, #8]
d004f81c:	9104      	str	r1, [sp, #16]
d004f81e:	bf98      	it	ls
d004f820:	f042 0201 	orrls.w	r2, r2, #1
d004f824:	9306      	str	r3, [sp, #24]
d004f826:	f8bd 40d0 	ldrh.w	r4, [sp, #208]	; 0xd0
d004f82a:	f8bd 00d4 	ldrh.w	r0, [sp, #212]	; 0xd4
d004f82e:	f8bd 10d8 	ldrh.w	r1, [sp, #216]	; 0xd8
d004f832:	f89d 30dc 	ldrb.w	r3, [sp, #220]	; 0xdc
d004f836:	f89d 50e0 	ldrb.w	r5, [sp, #224]	; 0xe0
d004f83a:	2a00      	cmp	r2, #0
d004f83c:	f040 81d7 	bne.w	d004fbee <fillTriangleDitherBayerT+0x3fa>
d004f840:	eeb4 0a67 	vcmp.f32	s0, s15
d004f844:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f848:	f240 81d1 	bls.w	d004fbee <fillTriangleDitherBayerT+0x3fa>
d004f84c:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004f850:	eddf 6ab4 	vldr	s13, [pc, #720]	; d004fb24 <fillTriangleDitherBayerT+0x330>
d004f854:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d004f858:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d004f85c:	ee06 4a90 	vmov	s13, r4
d004f860:	ee87 8a00 	vdiv.f32	s16, s14, s0
d004f864:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d004f868:	ee87 0a20 	vdiv.f32	s0, s14, s1
d004f86c:	ee87 3a01 	vdiv.f32	s6, s14, s2
d004f870:	eebd 7ae7 	vcvt.s32.f32	s14, s15
d004f874:	eeb8 5a66 	vcvt.f32.u32	s10, s13
d004f878:	ee17 2a10 	vmov	r2, s14
d004f87c:	ee07 0a10 	vmov	s14, r0
d004f880:	ee25 5a08 	vmul.f32	s10, s10, s16
d004f884:	eeb8 4a47 	vcvt.f32.u32	s8, s14
d004f888:	ee07 1a10 	vmov	s14, r1
d004f88c:	1c51      	adds	r1, r2, #1
d004f88e:	eef8 6a47 	vcvt.f32.u32	s13, s14
d004f892:	2905      	cmp	r1, #5
d004f894:	ee24 4a00 	vmul.f32	s8, s8, s0
d004f898:	bfa8      	it	ge
d004f89a:	2105      	movge	r1, #5
d004f89c:	2a04      	cmp	r2, #4
d004f89e:	ee66 6a83 	vmul.f32	s13, s13, s6
d004f8a2:	f300 853c 	bgt.w	d005031e <fillTriangleDitherBayerT+0xb2a>
d004f8a6:	f003 030f 	and.w	r3, r3, #15
d004f8aa:	2a03      	cmp	r2, #3
d004f8ac:	f103 0320 	add.w	r3, r3, #32
d004f8b0:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004f8b4:	b2c0      	uxtb	r0, r0
d004f8b6:	9001      	str	r0, [sp, #4]
d004f8b8:	f300 8533 	bgt.w	d0050322 <fillTriangleDitherBayerT+0xb2e>
d004f8bc:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004f8c0:	b2db      	uxtb	r3, r3
d004f8c2:	9303      	str	r3, [sp, #12]
d004f8c4:	ed9d 7a04 	vldr	s14, [sp, #16]
d004f8c8:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004f8cc:	ed9d 7a06 	vldr	s14, [sp, #24]
d004f8d0:	eef8 1ac7 	vcvt.f32.s32	s3, s14
d004f8d4:	ed9d 7a02 	vldr	s14, [sp, #8]
d004f8d8:	eef8 4ac7 	vcvt.f32.s32	s9, s14
d004f8dc:	ed9d 7a05 	vldr	s14, [sp, #20]
d004f8e0:	eef4 3ae1 	vcmpe.f32	s7, s3
d004f8e4:	eeb8 2ac7 	vcvt.f32.s32	s4, s14
d004f8e8:	ed9d 7a32 	vldr	s14, [sp, #200]	; 0xc8
d004f8ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f8f0:	eeb8 6ac7 	vcvt.f32.s32	s12, s14
d004f8f4:	ed9d 7a33 	vldr	s14, [sp, #204]	; 0xcc
d004f8f8:	eef8 2ac7 	vcvt.f32.s32	s5, s14
d004f8fc:	f300 817c 	bgt.w	d004fbf8 <fillTriangleDitherBayerT+0x404>
d004f900:	eef4 3ae2 	vcmpe.f32	s7, s5
d004f904:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f908:	f300 82ae 	bgt.w	d004fe68 <fillTriangleDitherBayerT+0x674>
d004f90c:	eef4 2ae1 	vcmpe.f32	s5, s3
d004f910:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f914:	d517      	bpl.n	d004f946 <fillTriangleDitherBayerT+0x152>
d004f916:	eef0 0a44 	vmov.f32	s1, s8
d004f91a:	eeb0 1a40 	vmov.f32	s2, s0
d004f91e:	eef0 5a61 	vmov.f32	s11, s3
d004f922:	eeb0 7a42 	vmov.f32	s14, s4
d004f926:	eeb0 4a66 	vmov.f32	s8, s13
d004f92a:	eeb0 0a43 	vmov.f32	s0, s6
d004f92e:	eef0 1a62 	vmov.f32	s3, s5
d004f932:	eeb0 2a46 	vmov.f32	s4, s12
d004f936:	eef0 6a60 	vmov.f32	s13, s1
d004f93a:	eeb0 3a41 	vmov.f32	s6, s2
d004f93e:	eef0 2a65 	vmov.f32	s5, s11
d004f942:	eeb0 6a47 	vmov.f32	s12, s14
d004f946:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004f94a:	ee73 5a87 	vadd.f32	s11, s7, s14
d004f94e:	ee32 7a87 	vadd.f32	s14, s5, s14
d004f952:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004f956:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d004f95a:	ee15 3a90 	vmov	r3, s11
d004f95e:	ee17 1a10 	vmov	r1, s14
d004f962:	428b      	cmp	r3, r1
d004f964:	f000 8143 	beq.w	d004fbee <fillTriangleDitherBayerT+0x3fa>
d004f968:	ee32 7ae3 	vsub.f32	s14, s5, s7
d004f96c:	eddf 5a6c 	vldr	s11, [pc, #432]	; d004fb20 <fillTriangleDitherBayerT+0x32c>
d004f970:	eeb4 7ae5 	vcmpe.f32	s14, s11
d004f974:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f978:	f240 8139 	bls.w	d004fbee <fillTriangleDitherBayerT+0x3fa>
d004f97c:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004f980:	ee71 0ae3 	vsub.f32	s1, s3, s7
d004f984:	ee76 8a64 	vsub.f32	s17, s12, s9
d004f988:	ee8a 1a07 	vdiv.f32	s2, s20, s14
d004f98c:	eef4 0ae5 	vcmpe.f32	s1, s11
d004f990:	ee33 9a48 	vsub.f32	s18, s6, s16
d004f994:	ee76 9ac5 	vsub.f32	s19, s13, s10
d004f998:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f99c:	ee68 8a81 	vmul.f32	s17, s17, s2
d004f9a0:	ee29 9a01 	vmul.f32	s18, s18, s2
d004f9a4:	ee69 9a81 	vmul.f32	s19, s19, s2
d004f9a8:	f300 8145 	bgt.w	d004fc36 <fillTriangleDitherBayerT+0x442>
d004f9ac:	ee07 2a10 	vmov	s14, r2
d004f9b0:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004f9b4:	ee32 1ae1 	vsub.f32	s2, s5, s3
d004f9b8:	9901      	ldr	r1, [sp, #4]
d004f9ba:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004f9be:	122b      	asrs	r3, r5, #8
d004f9c0:	930d      	str	r3, [sp, #52]	; 0x34
d004f9c2:	eeb4 1ae5 	vcmpe.f32	s2, s11
d004f9c6:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004f9ca:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004f9ce:	eeb0 7a67 	vmov.f32	s14, s15
d004f9d2:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004f9d6:	ee17 3a10 	vmov	r3, s14
d004f9da:	f383 0204 	usat	r2, #4, r3
d004f9de:	9204      	str	r2, [sp, #16]
d004f9e0:	9a03      	ldr	r2, [sp, #12]
d004f9e2:	428a      	cmp	r2, r1
d004f9e4:	bf18      	it	ne
d004f9e6:	2b00      	cmpne	r3, #0
d004f9e8:	bfd4      	ite	le
d004f9ea:	2301      	movle	r3, #1
d004f9ec:	2300      	movgt	r3, #0
d004f9ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f9f2:	9305      	str	r3, [sp, #20]
d004f9f4:	f340 80fb 	ble.w	d004fbee <fillTriangleDitherBayerT+0x3fa>
d004f9f8:	ed9f ea4a 	vldr	s28, [pc, #296]	; d004fb24 <fillTriangleDitherBayerT+0x330>
d004f9fc:	eeb0 aa4e 	vmov.f32	s20, s28
d004fa00:	eeb0 ca4e 	vmov.f32	s24, s28
d004fa04:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004fa08:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d004fa0c:	ee36 6a42 	vsub.f32	s12, s12, s4
d004fa10:	ed9f 7a43 	vldr	s14, [pc, #268]	; d004fb20 <fillTriangleDitherBayerT+0x32c>
d004fa14:	ee33 3a40 	vsub.f32	s6, s6, s0
d004fa18:	eec5 7aa7 	vdiv.f32	s15, s11, s15
d004fa1c:	eef4 0ac7 	vcmpe.f32	s1, s14
d004fa20:	ee76 6ac4 	vsub.f32	s13, s13, s8
d004fa24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa28:	ee26 6a27 	vmul.f32	s12, s12, s15
d004fa2c:	ee66 faa7 	vmul.f32	s31, s13, s15
d004fa30:	ed8d 6a12 	vstr	s12, [sp, #72]	; 0x48
d004fa34:	ee23 6a27 	vmul.f32	s12, s6, s15
d004fa38:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d004fa3c:	f300 8139 	bgt.w	d004fcb2 <fillTriangleDitherBayerT+0x4be>
d004fa40:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d004fa44:	4a31      	ldr	r2, [pc, #196]	; (d004fb0c <fillTriangleDitherBayerT+0x318>)
d004fa46:	4b32      	ldr	r3, [pc, #200]	; (d004fb10 <fillTriangleDitherBayerT+0x31c>)
d004fa48:	6812      	ldr	r2, [r2, #0]
d004fa4a:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d004fa4e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fa52:	681b      	ldr	r3, [r3, #0]
d004fa54:	920e      	str	r2, [sp, #56]	; 0x38
d004fa56:	edcd 7a10 	vstr	s15, [sp, #64]	; 0x40
d004fa5a:	930f      	str	r3, [sp, #60]	; 0x3c
d004fa5c:	eddd 7a10 	vldr	s15, [sp, #64]	; 0x40
d004fa60:	eef4 1ae7 	vcmpe.f32	s3, s15
d004fa64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa68:	dd02      	ble.n	d004fa70 <fillTriangleDitherBayerT+0x27c>
d004fa6a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004fa6c:	3301      	adds	r3, #1
d004fa6e:	930c      	str	r3, [sp, #48]	; 0x30
d004fa70:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004fa74:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004fa78:	eef4 2ac7 	vcmpe.f32	s5, s14
d004fa7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa80:	dc04      	bgt.n	d004fa8c <fillTriangleDitherBayerT+0x298>
d004fa82:	ee17 3a90 	vmov	r3, s15
d004fa86:	3b01      	subs	r3, #1
d004fa88:	ee07 3a90 	vmov	s15, r3
d004fa8c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004fa8e:	ee17 2a90 	vmov	r2, s15
d004fa92:	980e      	ldr	r0, [sp, #56]	; 0x38
d004fa94:	4293      	cmp	r3, r2
d004fa96:	bfa8      	it	ge
d004fa98:	4613      	movge	r3, r2
d004fa9a:	461a      	mov	r2, r3
d004fa9c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004fa9e:	4283      	cmp	r3, r0
d004faa0:	bfb8      	it	lt
d004faa2:	4603      	movlt	r3, r0
d004faa4:	4293      	cmp	r3, r2
d004faa6:	9306      	str	r3, [sp, #24]
d004faa8:	f300 80a1 	bgt.w	d004fbee <fillTriangleDitherBayerT+0x3fa>
d004faac:	ee07 3a90 	vmov	s15, r3
d004fab0:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004fab4:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004fab8:	4916      	ldr	r1, [pc, #88]	; (d004fb14 <fillTriangleDitherBayerT+0x320>)
d004faba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fabe:	ed9d ba12 	vldr	s22, [sp, #72]	; 0x48
d004fac2:	015b      	lsls	r3, r3, #5
d004fac4:	eddd aa11 	vldr	s21, [sp, #68]	; 0x44
d004fac8:	ed9f 1a15 	vldr	s2, [pc, #84]	; d004fb20 <fillTriangleDitherBayerT+0x32c>
d004facc:	ee77 7a87 	vadd.f32	s15, s15, s14
d004fad0:	930c      	str	r3, [sp, #48]	; 0x30
d004fad2:	1c53      	adds	r3, r2, #1
d004fad4:	eddf 0a10 	vldr	s1, [pc, #64]	; d004fb18 <fillTriangleDitherBayerT+0x324>
d004fad8:	ed9f 6a12 	vldr	s12, [pc, #72]	; d004fb24 <fillTriangleDitherBayerT+0x330>
d004fadc:	ee77 3ae3 	vsub.f32	s7, s15, s7
d004fae0:	930a      	str	r3, [sp, #40]	; 0x28
d004fae2:	ee77 1ae1 	vsub.f32	s3, s15, s3
d004fae6:	680b      	ldr	r3, [r1, #0]
d004fae8:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
d004faec:	eee8 4aa3 	vfma.f32	s9, s17, s7
d004faf0:	930b      	str	r3, [sp, #44]	; 0x2c
d004faf2:	eea9 8a23 	vfma.f32	s16, s18, s7
d004faf6:	eea9 5aa3 	vfma.f32	s10, s19, s7
d004fafa:	eddf 3a08 	vldr	s7, [pc, #32]	; d004fb1c <fillTriangleDitherBayerT+0x328>
d004fafe:	eeab 2a21 	vfma.f32	s4, s22, s3
d004fb02:	eeaa 0aa1 	vfma.f32	s0, s21, s3
d004fb06:	eea1 4aaf 	vfma.f32	s8, s3, s31
d004fb0a:	e04e      	b.n	d004fbaa <fillTriangleDitherBayerT+0x3b6>
d004fb0c:	d005a73c 	.word	0xd005a73c
d004fb10:	d005a740 	.word	0xd005a740
d004fb14:	d005a744 	.word	0xd005a744
d004fb18:	33d6bf95 	.word	0x33d6bf95
d004fb1c:	477fff00 	.word	0x477fff00
d004fb20:	38d1b717 	.word	0x38d1b717
d004fb24:	00000000 	.word	0x00000000
d004fb28:	eeb0 aa45 	vmov.f32	s20, s10
d004fb2c:	eef0 1a48 	vmov.f32	s3, s16
d004fb30:	eef0 7a64 	vmov.f32	s15, s9
d004fb34:	eef0 2a44 	vmov.f32	s5, s8
d004fb38:	eeb0 3a40 	vmov.f32	s6, s0
d004fb3c:	eeb0 7a42 	vmov.f32	s14, s4
d004fb40:	eefd 6ac7 	vcvt.s32.f32	s13, s14
d004fb44:	f240 13df 	movw	r3, #479	; 0x1df
d004fb48:	ee16 0a90 	vmov	r0, s13
d004fb4c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004fb50:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004fb54:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d004fb58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb5c:	ee16 5a90 	vmov	r5, s13
d004fb60:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004fb64:	bfc8      	it	gt
d004fb66:	3001      	addgt	r0, #1
d004fb68:	eef4 7ae6 	vcmpe.f32	s15, s13
d004fb6c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004fb70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb74:	bfd8      	it	le
d004fb76:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d004fb7a:	429d      	cmp	r5, r3
d004fb7c:	bfa8      	it	ge
d004fb7e:	461d      	movge	r5, r3
d004fb80:	42a8      	cmp	r0, r5
d004fb82:	f340 818a 	ble.w	d004fe9a <fillTriangleDitherBayerT+0x6a6>
d004fb86:	9b06      	ldr	r3, [sp, #24]
d004fb88:	ee74 4aa8 	vadd.f32	s9, s9, s17
d004fb8c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004fb8e:	ee38 8a09 	vadd.f32	s16, s16, s18
d004fb92:	3301      	adds	r3, #1
d004fb94:	ee35 5a29 	vadd.f32	s10, s10, s19
d004fb98:	ee32 2a0b 	vadd.f32	s4, s4, s22
d004fb9c:	4293      	cmp	r3, r2
d004fb9e:	ee30 0a2a 	vadd.f32	s0, s0, s21
d004fba2:	ee34 4a2f 	vadd.f32	s8, s8, s31
d004fba6:	9306      	str	r3, [sp, #24]
d004fba8:	d021      	beq.n	d004fbee <fillTriangleDitherBayerT+0x3fa>
d004fbaa:	eef4 4ac2 	vcmpe.f32	s9, s4
d004fbae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fbb2:	dcb9      	bgt.n	d004fb28 <fillTriangleDitherBayerT+0x334>
d004fbb4:	eeb0 aa44 	vmov.f32	s20, s8
d004fbb8:	eef0 1a40 	vmov.f32	s3, s0
d004fbbc:	eef0 7a42 	vmov.f32	s15, s4
d004fbc0:	eef0 2a45 	vmov.f32	s5, s10
d004fbc4:	eeb0 3a48 	vmov.f32	s6, s16
d004fbc8:	eeb0 7a64 	vmov.f32	s14, s9
d004fbcc:	e7b8      	b.n	d004fb40 <fillTriangleDitherBayerT+0x34c>
d004fbce:	eddd 2a15 	vldr	s5, [sp, #84]	; 0x54
d004fbd2:	ed9d 5a16 	vldr	s10, [sp, #88]	; 0x58
d004fbd6:	ed9d 8a17 	vldr	s16, [sp, #92]	; 0x5c
d004fbda:	ed5f 7a2f 	vldr	s15, [pc, #-188]	; d004fb20 <fillTriangleDitherBayerT+0x32c>
d004fbde:	ed9d 7a0b 	vldr	s14, [sp, #44]	; 0x2c
d004fbe2:	eeb4 7ae7 	vcmpe.f32	s14, s15
d004fbe6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fbea:	f73f af37 	bgt.w	d004fa5c <fillTriangleDitherBayerT+0x268>
d004fbee:	b019      	add	sp, #100	; 0x64
d004fbf0:	ecbd 8b10 	vpop	{d8-d15}
d004fbf4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004fbf8:	eef4 1ae2 	vcmpe.f32	s3, s5
d004fbfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fc00:	f340 8119 	ble.w	d004fe36 <fillTriangleDitherBayerT+0x642>
d004fc04:	eef0 0a66 	vmov.f32	s1, s13
d004fc08:	eeb0 1a43 	vmov.f32	s2, s6
d004fc0c:	eef0 5a62 	vmov.f32	s11, s5
d004fc10:	eeb0 7a46 	vmov.f32	s14, s12
d004fc14:	eef0 6a45 	vmov.f32	s13, s10
d004fc18:	eeb0 3a48 	vmov.f32	s6, s16
d004fc1c:	eef0 2a63 	vmov.f32	s5, s7
d004fc20:	eeb0 6a64 	vmov.f32	s12, s9
d004fc24:	eeb0 5a60 	vmov.f32	s10, s1
d004fc28:	eeb0 8a41 	vmov.f32	s16, s2
d004fc2c:	eef0 3a65 	vmov.f32	s7, s11
d004fc30:	eef0 4a47 	vmov.f32	s9, s14
d004fc34:	e687      	b.n	d004f946 <fillTriangleDitherBayerT+0x152>
d004fc36:	ee07 2a10 	vmov	s14, r2
d004fc3a:	ee8a 1a20 	vdiv.f32	s2, s20, s1
d004fc3e:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004fc42:	9901      	ldr	r1, [sp, #4]
d004fc44:	122b      	asrs	r3, r5, #8
d004fc46:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004fc4a:	930d      	str	r3, [sp, #52]	; 0x34
d004fc4c:	ee72 aa64 	vsub.f32	s21, s4, s9
d004fc50:	ee30 aa48 	vsub.f32	s20, s0, s16
d004fc54:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fc58:	ee34 ea45 	vsub.f32	s28, s8, s10
d004fc5c:	eeb0 7a67 	vmov.f32	s14, s15
d004fc60:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004fc64:	ee6a 7a81 	vmul.f32	s15, s21, s2
d004fc68:	ee17 3a10 	vmov	r3, s14
d004fc6c:	ee32 7ae1 	vsub.f32	s14, s5, s3
d004fc70:	ee2e ea01 	vmul.f32	s28, s28, s2
d004fc74:	f383 0204 	usat	r2, #4, r3
d004fc78:	eeb0 ca67 	vmov.f32	s24, s15
d004fc7c:	eeb4 7ae5 	vcmpe.f32	s14, s11
d004fc80:	ed8d 7a0b 	vstr	s14, [sp, #44]	; 0x2c
d004fc84:	9204      	str	r2, [sp, #16]
d004fc86:	ee6a 7a01 	vmul.f32	s15, s20, s2
d004fc8a:	9a03      	ldr	r2, [sp, #12]
d004fc8c:	428a      	cmp	r2, r1
d004fc8e:	bf18      	it	ne
d004fc90:	2b00      	cmpne	r3, #0
d004fc92:	eeb0 aa67 	vmov.f32	s20, s15
d004fc96:	bfd4      	ite	le
d004fc98:	2301      	movle	r3, #1
d004fc9a:	2300      	movgt	r3, #0
d004fc9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fca0:	9305      	str	r3, [sp, #20]
d004fca2:	f73f aeaf 	bgt.w	d004fa04 <fillTriangleDitherBayerT+0x210>
d004fca6:	ed5f fa61 	vldr	s31, [pc, #-388]	; d004fb24 <fillTriangleDitherBayerT+0x330>
d004fcaa:	edcd fa11 	vstr	s31, [sp, #68]	; 0x44
d004fcae:	edcd fa12 	vstr	s31, [sp, #72]	; 0x48
d004fcb2:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004fcb6:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004fcba:	eeb4 7ae3 	vcmpe.f32	s14, s7
d004fcbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fcc2:	d504      	bpl.n	d004fcce <fillTriangleDitherBayerT+0x4da>
d004fcc4:	ee17 3a90 	vmov	r3, s15
d004fcc8:	3301      	adds	r3, #1
d004fcca:	ee07 3a90 	vmov	s15, r3
d004fcce:	eebd 7ae1 	vcvt.s32.f32	s14, s3
d004fcd2:	49de      	ldr	r1, [pc, #888]	; (d005004c <fillTriangleDitherBayerT+0x858>)
d004fcd4:	ee17 0a90 	vmov	r0, s15
d004fcd8:	4add      	ldr	r2, [pc, #884]	; (d0050050 <fillTriangleDitherBayerT+0x85c>)
d004fcda:	6809      	ldr	r1, [r1, #0]
d004fcdc:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d004fce0:	ee17 3a10 	vmov	r3, s14
d004fce4:	6812      	ldr	r2, [r2, #0]
d004fce6:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d004fcea:	eef4 1ae6 	vcmpe.f32	s3, s13
d004fcee:	edcd 6a10 	vstr	s13, [sp, #64]	; 0x40
d004fcf2:	910e      	str	r1, [sp, #56]	; 0x38
d004fcf4:	920f      	str	r2, [sp, #60]	; 0x3c
d004fcf6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fcfa:	bfd8      	it	le
d004fcfc:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004fd00:	4288      	cmp	r0, r1
d004fd02:	bfb8      	it	lt
d004fd04:	4608      	movlt	r0, r1
d004fd06:	4293      	cmp	r3, r2
d004fd08:	bfa8      	it	ge
d004fd0a:	4613      	movge	r3, r2
d004fd0c:	9002      	str	r0, [sp, #8]
d004fd0e:	4283      	cmp	r3, r0
d004fd10:	f6ff af63 	blt.w	d004fbda <fillTriangleDitherBayerT+0x3e6>
d004fd14:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fd18:	3301      	adds	r3, #1
d004fd1a:	eef0 aa64 	vmov.f32	s21, s9
d004fd1e:	49cd      	ldr	r1, [pc, #820]	; (d0050054 <fillTriangleDitherBayerT+0x860>)
d004fd20:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d004fd22:	eef0 da48 	vmov.f32	s27, s16
d004fd26:	ee37 7ae3 	vsub.f32	s14, s15, s7
d004fd2a:	eddd 7a02 	vldr	s15, [sp, #8]
d004fd2e:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d004fd32:	930a      	str	r3, [sp, #40]	; 0x28
d004fd34:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fd38:	680b      	ldr	r3, [r1, #0]
d004fd3a:	eef0 ca48 	vmov.f32	s25, s16
d004fd3e:	ed8d 8a17 	vstr	s16, [sp, #92]	; 0x5c
d004fd42:	eeb0 ba64 	vmov.f32	s22, s9
d004fd46:	9313      	str	r3, [sp, #76]	; 0x4c
d004fd48:	ee77 7a87 	vadd.f32	s15, s15, s14
d004fd4c:	0153      	lsls	r3, r2, #5
d004fd4e:	eeb0 7a4c 	vmov.f32	s14, s24
d004fd52:	eddf bac1 	vldr	s23, [pc, #772]	; d0050058 <fillTriangleDitherBayerT+0x864>
d004fd56:	eeb0 da45 	vmov.f32	s26, s10
d004fd5a:	eddf 6ac0 	vldr	s13, [pc, #768]	; d005005c <fillTriangleDitherBayerT+0x868>
d004fd5e:	eee7 aa8c 	vfma.f32	s21, s15, s24
d004fd62:	eddf 5abf 	vldr	s11, [pc, #764]	; d0050060 <fillTriangleDitherBayerT+0x86c>
d004fd66:	eeb0 ca45 	vmov.f32	s24, s10
d004fd6a:	9314      	str	r3, [sp, #80]	; 0x50
d004fd6c:	eea8 baa7 	vfma.f32	s22, s17, s15
d004fd70:	edcd 2a15 	vstr	s5, [sp, #84]	; 0x54
d004fd74:	eee9 da27 	vfma.f32	s27, s18, s15
d004fd78:	ed8d 5a16 	vstr	s10, [sp, #88]	; 0x58
d004fd7c:	eea9 daa7 	vfma.f32	s26, s19, s15
d004fd80:	eee7 ca8a 	vfma.f32	s25, s15, s20
d004fd84:	eea7 ca8e 	vfma.f32	s24, s15, s28
d004fd88:	eeb0 8a47 	vmov.f32	s16, s14
d004fd8c:	e041      	b.n	d004fe12 <fillTriangleDitherBayerT+0x61e>
d004fd8e:	eeb0 1a4d 	vmov.f32	s2, s26
d004fd92:	eef0 2a6d 	vmov.f32	s5, s27
d004fd96:	eef0 7a4b 	vmov.f32	s15, s22
d004fd9a:	eeb0 3a4c 	vmov.f32	s6, s24
d004fd9e:	eeb0 5a6c 	vmov.f32	s10, s25
d004fda2:	eeb0 7a6a 	vmov.f32	s14, s21
d004fda6:	eebd 6ac7 	vcvt.s32.f32	s12, s14
d004fdaa:	f240 13df 	movw	r3, #479	; 0x1df
d004fdae:	ee16 0a10 	vmov	r0, s12
d004fdb2:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004fdb6:	eeb4 7ac6 	vcmpe.f32	s14, s12
d004fdba:	eebd 6ae7 	vcvt.s32.f32	s12, s15
d004fdbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fdc2:	ee16 5a10 	vmov	r5, s12
d004fdc6:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004fdca:	bfc8      	it	gt
d004fdcc:	3001      	addgt	r0, #1
d004fdce:	eef4 7ac6 	vcmpe.f32	s15, s12
d004fdd2:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004fdd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fdda:	bfd8      	it	le
d004fddc:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d004fde0:	429d      	cmp	r5, r3
d004fde2:	bfa8      	it	ge
d004fde4:	461d      	movge	r5, r3
d004fde6:	4285      	cmp	r5, r0
d004fde8:	f280 817f 	bge.w	d00500ea <fillTriangleDitherBayerT+0x8f6>
d004fdec:	9b02      	ldr	r3, [sp, #8]
d004fdee:	ee3b ba28 	vadd.f32	s22, s22, s17
d004fdf2:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004fdf4:	ee7d da89 	vadd.f32	s27, s27, s18
d004fdf8:	3301      	adds	r3, #1
d004fdfa:	ee3d da29 	vadd.f32	s26, s26, s19
d004fdfe:	ee7a aa88 	vadd.f32	s21, s21, s16
d004fe02:	4293      	cmp	r3, r2
d004fe04:	ee7c ca8a 	vadd.f32	s25, s25, s20
d004fe08:	ee3c ca0e 	vadd.f32	s24, s24, s28
d004fe0c:	9302      	str	r3, [sp, #8]
d004fe0e:	f43f aede 	beq.w	d004fbce <fillTriangleDitherBayerT+0x3da>
d004fe12:	eeb4 baea 	vcmpe.f32	s22, s21
d004fe16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fe1a:	dcb8      	bgt.n	d004fd8e <fillTriangleDitherBayerT+0x59a>
d004fe1c:	eeb0 1a4c 	vmov.f32	s2, s24
d004fe20:	eef0 2a6c 	vmov.f32	s5, s25
d004fe24:	eef0 7a6a 	vmov.f32	s15, s21
d004fe28:	eeb0 3a4d 	vmov.f32	s6, s26
d004fe2c:	eeb0 5a6d 	vmov.f32	s10, s27
d004fe30:	eeb0 7a4b 	vmov.f32	s14, s22
d004fe34:	e7b7      	b.n	d004fda6 <fillTriangleDitherBayerT+0x5b2>
d004fe36:	eef0 0a45 	vmov.f32	s1, s10
d004fe3a:	eeb0 1a48 	vmov.f32	s2, s16
d004fe3e:	eef0 5a63 	vmov.f32	s11, s7
d004fe42:	eeb0 7a64 	vmov.f32	s14, s9
d004fe46:	eeb0 5a44 	vmov.f32	s10, s8
d004fe4a:	eeb0 8a40 	vmov.f32	s16, s0
d004fe4e:	eef0 3a61 	vmov.f32	s7, s3
d004fe52:	eef0 4a42 	vmov.f32	s9, s4
d004fe56:	eeb0 4a60 	vmov.f32	s8, s1
d004fe5a:	eeb0 0a41 	vmov.f32	s0, s2
d004fe5e:	eef0 1a65 	vmov.f32	s3, s11
d004fe62:	eeb0 2a47 	vmov.f32	s4, s14
d004fe66:	e551      	b.n	d004f90c <fillTriangleDitherBayerT+0x118>
d004fe68:	eef0 0a45 	vmov.f32	s1, s10
d004fe6c:	eeb0 1a48 	vmov.f32	s2, s16
d004fe70:	eef0 5a63 	vmov.f32	s11, s7
d004fe74:	eeb0 7a64 	vmov.f32	s14, s9
d004fe78:	eeb0 5a66 	vmov.f32	s10, s13
d004fe7c:	eeb0 8a43 	vmov.f32	s16, s6
d004fe80:	eef0 3a62 	vmov.f32	s7, s5
d004fe84:	eef0 4a46 	vmov.f32	s9, s12
d004fe88:	eef0 6a60 	vmov.f32	s13, s1
d004fe8c:	eeb0 3a41 	vmov.f32	s6, s2
d004fe90:	eef0 2a65 	vmov.f32	s5, s11
d004fe94:	eeb0 6a47 	vmov.f32	s12, s14
d004fe98:	e538      	b.n	d004f90c <fillTriangleDitherBayerT+0x118>
d004fe9a:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fe9e:	eef4 7ac1 	vcmpe.f32	s15, s2
d004fea2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fea6:	f340 8240 	ble.w	d005032a <fillTriangleDitherBayerT+0xb36>
d004feaa:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004feae:	ee71 1ac3 	vsub.f32	s3, s3, s6
d004feb2:	ee3a aa62 	vsub.f32	s20, s20, s5
d004feb6:	eec5 6aa7 	vdiv.f32	s13, s11, s15
d004feba:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004febe:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fec2:	ee07 0a10 	vmov	s14, r0
d004fec6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004feca:	ee37 7a27 	vadd.f32	s14, s14, s15
d004fece:	ee61 1aa6 	vmul.f32	s3, s3, s13
d004fed2:	ee2a aa26 	vmul.f32	s20, s20, s13
d004fed6:	eea7 3a21 	vfma.f32	s6, s14, s3
d004feda:	eee7 2a0a 	vfma.f32	s5, s14, s20
d004fede:	9c06      	ldr	r4, [sp, #24]
d004fee0:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004fee4:	4a5f      	ldr	r2, [pc, #380]	; (d0050064 <fillTriangleDitherBayerT+0x870>)
d004fee6:	ebc4 1304 	rsb	r3, r4, r4, lsl #4
d004feea:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d004feec:	6817      	ldr	r7, [r2, #0]
d004feee:	eb00 0280 	add.w	r2, r0, r0, lsl #2
d004fef2:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d004fef6:	495c      	ldr	r1, [pc, #368]	; (d0050068 <fillTriangleDitherBayerT+0x874>)
d004fef8:	eb04 1282 	add.w	r2, r4, r2, lsl #6
d004fefc:	f004 0e03 	and.w	lr, r4, #3
d004ff00:	4403      	add	r3, r0
d004ff02:	9502      	str	r5, [sp, #8]
d004ff04:	4417      	add	r7, r2
d004ff06:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d004ff08:	eb01 0e8e 	add.w	lr, r1, lr, lsl #2
d004ff0c:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d004ff10:	461d      	mov	r5, r3
d004ff12:	9b02      	ldr	r3, [sp, #8]
d004ff14:	eeb4 3ae0 	vcmpe.f32	s6, s1
d004ff18:	eba3 0c00 	sub.w	ip, r3, r0
d004ff1c:	f10c 0301 	add.w	r3, ip, #1
d004ff20:	2b30      	cmp	r3, #48	; 0x30
d004ff22:	bfa8      	it	ge
d004ff24:	2330      	movge	r3, #48	; 0x30
d004ff26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ff2a:	d969      	bls.n	d0050000 <fillTriangleDitherBayerT+0x80c>
d004ff2c:	f1bc 0f00 	cmp.w	ip, #0
d004ff30:	ee82 7a83 	vdiv.f32	s14, s5, s6
d004ff34:	dd74      	ble.n	d0050020 <fillTriangleDitherBayerT+0x82c>
d004ff36:	1e5a      	subs	r2, r3, #1
d004ff38:	ee07 2a90 	vmov	s15, r2
d004ff3c:	eef0 ba43 	vmov.f32	s23, s6
d004ff40:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ff44:	eee7 baa1 	vfma.f32	s23, s15, s3
d004ff48:	eef4 bae0 	vcmpe.f32	s23, s1
d004ff4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ff50:	dd71      	ble.n	d0050036 <fillTriangleDitherBayerT+0x842>
d004ff52:	eeb0 ca62 	vmov.f32	s24, s5
d004ff56:	4a45      	ldr	r2, [pc, #276]	; (d005006c <fillTriangleDitherBayerT+0x878>)
d004ff58:	009e      	lsls	r6, r3, #2
d004ff5a:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d004ff5e:	eea7 ca8a 	vfma.f32	s24, s15, s20
d004ff62:	edd2 7a00 	vldr	s15, [r2]
d004ff66:	9a05      	ldr	r2, [sp, #20]
d004ff68:	eecc 6a2b 	vdiv.f32	s13, s24, s23
d004ff6c:	ee76 6ac7 	vsub.f32	s13, s13, s14
d004ff70:	ee66 6aa7 	vmul.f32	s13, s13, s15
d004ff74:	2a00      	cmp	r2, #0
d004ff76:	f000 81c9 	beq.w	d005030c <fillTriangleDitherBayerT+0xb18>
d004ff7a:	f000 0403 	and.w	r4, r0, #3
d004ff7e:	f1a5 0902 	sub.w	r9, r5, #2
d004ff82:	2100      	movs	r1, #0
d004ff84:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d004ff88:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004ff8c:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004ff90:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d004ff94:	ee37 7a26 	vadd.f32	s14, s14, s13
d004ff98:	f104 0a01 	add.w	sl, r4, #1
d004ff9c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004ffa0:	ee17 2a90 	vmov	r2, s15
d004ffa4:	b292      	uxth	r2, r2
d004ffa6:	4593      	cmp	fp, r2
d004ffa8:	d90b      	bls.n	d004ffc2 <fillTriangleDitherBayerT+0x7ce>
d004ffaa:	f81e b004 	ldrb.w	fp, [lr, r4]
d004ffae:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d004ffb2:	45c3      	cmp	fp, r8
d004ffb4:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004ffb8:	db03      	blt.n	d004ffc2 <fillTriangleDitherBayerT+0x7ce>
d004ffba:	f8a9 2000 	strh.w	r2, [r9]
d004ffbe:	9a01      	ldr	r2, [sp, #4]
d004ffc0:	553a      	strb	r2, [r7, r4]
d004ffc2:	3101      	adds	r1, #1
d004ffc4:	f00a 0403 	and.w	r4, sl, #3
d004ffc8:	428b      	cmp	r3, r1
d004ffca:	dcdb      	bgt.n	d004ff84 <fillTriangleDitherBayerT+0x790>
d004ffcc:	f1bc 0f00 	cmp.w	ip, #0
d004ffd0:	441e      	add	r6, r3
d004ffd2:	ea4f 0243 	mov.w	r2, r3, lsl #1
d004ffd6:	ea4f 1686 	mov.w	r6, r6, lsl #6
d004ffda:	bfbc      	itt	lt
d004ffdc:	2202      	movlt	r2, #2
d004ffde:	f44f 76a0 	movlt.w	r6, #320	; 0x140
d004ffe2:	4415      	add	r5, r2
d004ffe4:	4437      	add	r7, r6
d004ffe6:	ee07 3a90 	vmov	s15, r3
d004ffea:	4418      	add	r0, r3
d004ffec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fff0:	eea7 3aa1 	vfma.f32	s6, s15, s3
d004fff4:	eee7 2a8a 	vfma.f32	s5, s15, s20
d004fff8:	9b02      	ldr	r3, [sp, #8]
d004fffa:	4283      	cmp	r3, r0
d004fffc:	da89      	bge.n	d004ff12 <fillTriangleDitherBayerT+0x71e>
d004fffe:	e5c2      	b.n	d004fb86 <fillTriangleDitherBayerT+0x392>
d0050000:	ee07 3a90 	vmov	s15, r3
d0050004:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0050008:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d005000c:	4418      	add	r0, r3
d005000e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050012:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0050016:	eea7 3aa1 	vfma.f32	s6, s15, s3
d005001a:	eee7 2a8a 	vfma.f32	s5, s15, s20
d005001e:	e7eb      	b.n	d004fff8 <fillTriangleDitherBayerT+0x804>
d0050020:	9a05      	ldr	r2, [sp, #20]
d0050022:	f000 0403 	and.w	r4, r0, #3
d0050026:	b32a      	cbz	r2, d0050074 <fillTriangleDitherBayerT+0x880>
d0050028:	f1bc 0f00 	cmp.w	ip, #0
d005002c:	dbdb      	blt.n	d004ffe6 <fillTriangleDitherBayerT+0x7f2>
d005002e:	eef0 6a46 	vmov.f32	s13, s12
d0050032:	009e      	lsls	r6, r3, #2
d0050034:	e7a3      	b.n	d004ff7e <fillTriangleDitherBayerT+0x78a>
d0050036:	9a05      	ldr	r2, [sp, #20]
d0050038:	2a00      	cmp	r2, #0
d005003a:	f000 816a 	beq.w	d0050312 <fillTriangleDitherBayerT+0xb1e>
d005003e:	eef0 6a46 	vmov.f32	s13, s12
d0050042:	f000 0403 	and.w	r4, r0, #3
d0050046:	009e      	lsls	r6, r3, #2
d0050048:	e799      	b.n	d004ff7e <fillTriangleDitherBayerT+0x78a>
d005004a:	bf00      	nop
d005004c:	d005a73c 	.word	0xd005a73c
d0050050:	d005a740 	.word	0xd005a740
d0050054:	d005a744 	.word	0xd005a744
d0050058:	33d6bf95 	.word	0x33d6bf95
d005005c:	00000000 	.word	0x00000000
d0050060:	477fff00 	.word	0x477fff00
d0050064:	d00f4c10 	.word	0xd00f4c10
d0050068:	d0057920 	.word	0xd0057920
d005006c:	d0057940 	.word	0xd0057940
d0050070:	38d1b717 	.word	0x38d1b717
d0050074:	f1bc 0f00 	cmp.w	ip, #0
d0050078:	dbb5      	blt.n	d004ffe6 <fillTriangleDitherBayerT+0x7f2>
d005007a:	eef0 6a46 	vmov.f32	s13, s12
d005007e:	009e      	lsls	r6, r3, #2
d0050080:	f1a5 0902 	sub.w	r9, r5, #2
d0050084:	2100      	movs	r1, #0
d0050086:	9507      	str	r5, [sp, #28]
d0050088:	9008      	str	r0, [sp, #32]
d005008a:	9609      	str	r6, [sp, #36]	; 0x24
d005008c:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0050090:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0050094:	ee77 7aa5 	vadd.f32	s15, s15, s11
d0050098:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d005009c:	ee37 7a26 	vadd.f32	s14, s14, s13
d00500a0:	f104 0a01 	add.w	sl, r4, #1
d00500a4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00500a8:	ee17 2a90 	vmov	r2, s15
d00500ac:	b292      	uxth	r2, r2
d00500ae:	4593      	cmp	fp, r2
d00500b0:	d912      	bls.n	d00500d8 <fillTriangleDitherBayerT+0x8e4>
d00500b2:	f81e b004 	ldrb.w	fp, [lr, r4]
d00500b6:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00500ba:	45c3      	cmp	fp, r8
d00500bc:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00500c0:	db0a      	blt.n	d00500d8 <fillTriangleDitherBayerT+0x8e4>
d00500c2:	9803      	ldr	r0, [sp, #12]
d00500c4:	f8a9 2000 	strh.w	r2, [r9]
d00500c8:	4605      	mov	r5, r0
d00500ca:	9801      	ldr	r0, [sp, #4]
d00500cc:	4606      	mov	r6, r0
d00500ce:	9804      	ldr	r0, [sp, #16]
d00500d0:	4583      	cmp	fp, r0
d00500d2:	bfa8      	it	ge
d00500d4:	4635      	movge	r5, r6
d00500d6:	553d      	strb	r5, [r7, r4]
d00500d8:	3101      	adds	r1, #1
d00500da:	f00a 0403 	and.w	r4, sl, #3
d00500de:	428b      	cmp	r3, r1
d00500e0:	dcd4      	bgt.n	d005008c <fillTriangleDitherBayerT+0x898>
d00500e2:	9d07      	ldr	r5, [sp, #28]
d00500e4:	9808      	ldr	r0, [sp, #32]
d00500e6:	9e09      	ldr	r6, [sp, #36]	; 0x24
d00500e8:	e770      	b.n	d004ffcc <fillTriangleDitherBayerT+0x7d8>
d00500ea:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00500ee:	ed1f 6a20 	vldr	s12, [pc, #-128]	; d0050070 <fillTriangleDitherBayerT+0x87c>
d00500f2:	eef4 7ac6 	vcmpe.f32	s15, s12
d00500f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00500fa:	f340 811b 	ble.w	d0050334 <fillTriangleDitherBayerT+0xb40>
d00500fe:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050102:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0050106:	ee31 1a43 	vsub.f32	s2, s2, s6
d005010a:	ee80 6aa7 	vdiv.f32	s12, s1, s15
d005010e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0050112:	ee37 7ac7 	vsub.f32	s14, s15, s14
d0050116:	ee07 0a90 	vmov	s15, r0
d005011a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005011e:	ee37 7a87 	vadd.f32	s14, s15, s14
d0050122:	ee62 2a86 	vmul.f32	s5, s5, s12
d0050126:	ee21 1a06 	vmul.f32	s2, s2, s12
d005012a:	eea7 5a22 	vfma.f32	s10, s14, s5
d005012e:	eea7 3a01 	vfma.f32	s6, s14, s2
d0050132:	9902      	ldr	r1, [sp, #8]
d0050134:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0050138:	4b81      	ldr	r3, [pc, #516]	; (d0050340 <fillTriangleDitherBayerT+0xb4c>)
d005013a:	ebc1 1e01 	rsb	lr, r1, r1, lsl #4
d005013e:	9c14      	ldr	r4, [sp, #80]	; 0x50
d0050140:	681f      	ldr	r7, [r3, #0]
d0050142:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0050146:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d005014a:	4a7e      	ldr	r2, [pc, #504]	; (d0050344 <fillTriangleDitherBayerT+0xb50>)
d005014c:	eb01 1383 	add.w	r3, r1, r3, lsl #6
d0050150:	f001 0803 	and.w	r8, r1, #3
d0050154:	4486      	add	lr, r0
d0050156:	f8dd c034 	ldr.w	ip, [sp, #52]	; 0x34
d005015a:	441f      	add	r7, r3
d005015c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d005015e:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d0050162:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d0050166:	1a2e      	subs	r6, r5, r0
d0050168:	eeb4 5aeb 	vcmpe.f32	s10, s23
d005016c:	1c72      	adds	r2, r6, #1
d005016e:	2a30      	cmp	r2, #48	; 0x30
d0050170:	bfa8      	it	ge
d0050172:	2230      	movge	r2, #48	; 0x30
d0050174:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050178:	d969      	bls.n	d005024e <fillTriangleDitherBayerT+0xa5a>
d005017a:	2e00      	cmp	r6, #0
d005017c:	ee83 7a05 	vdiv.f32	s14, s6, s10
d0050180:	dd75      	ble.n	d005026e <fillTriangleDitherBayerT+0xa7a>
d0050182:	1e53      	subs	r3, r2, #1
d0050184:	ee07 3a90 	vmov	s15, r3
d0050188:	eef0 ea45 	vmov.f32	s29, s10
d005018c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050190:	eee7 eaa2 	vfma.f32	s29, s15, s5
d0050194:	eef4 eaeb 	vcmpe.f32	s29, s23
d0050198:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005019c:	f340 80aa 	ble.w	d00502f4 <fillTriangleDitherBayerT+0xb00>
d00501a0:	eeb0 fa43 	vmov.f32	s30, s6
d00501a4:	4b68      	ldr	r3, [pc, #416]	; (d0050348 <fillTriangleDitherBayerT+0xb54>)
d00501a6:	0091      	lsls	r1, r2, #2
d00501a8:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d00501ac:	eea7 fa81 	vfma.f32	s30, s15, s2
d00501b0:	9106      	str	r1, [sp, #24]
d00501b2:	edd3 7a00 	vldr	s15, [r3]
d00501b6:	eecf 0a2e 	vdiv.f32	s1, s30, s29
d00501ba:	ee70 0ac7 	vsub.f32	s1, s1, s14
d00501be:	ee60 0aa7 	vmul.f32	s1, s1, s15
d00501c2:	9b05      	ldr	r3, [sp, #20]
d00501c4:	2b00      	cmp	r3, #0
d00501c6:	d05e      	beq.n	d0050286 <fillTriangleDitherBayerT+0xa92>
d00501c8:	f000 0403 	and.w	r4, r0, #3
d00501cc:	f1ae 0902 	sub.w	r9, lr, #2
d00501d0:	2100      	movs	r1, #0
d00501d2:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d00501d6:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d00501da:	ee77 7a86 	vadd.f32	s15, s15, s12
d00501de:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00501e2:	ee37 7a20 	vadd.f32	s14, s14, s1
d00501e6:	f104 0a01 	add.w	sl, r4, #1
d00501ea:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00501ee:	ee17 3a90 	vmov	r3, s15
d00501f2:	b29b      	uxth	r3, r3
d00501f4:	459b      	cmp	fp, r3
d00501f6:	d90b      	bls.n	d0050210 <fillTriangleDitherBayerT+0xa1c>
d00501f8:	f818 b004 	ldrb.w	fp, [r8, r4]
d00501fc:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0050200:	45e3      	cmp	fp, ip
d0050202:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0050206:	db03      	blt.n	d0050210 <fillTriangleDitherBayerT+0xa1c>
d0050208:	f8a9 3000 	strh.w	r3, [r9]
d005020c:	9b01      	ldr	r3, [sp, #4]
d005020e:	553b      	strb	r3, [r7, r4]
d0050210:	3101      	adds	r1, #1
d0050212:	f00a 0403 	and.w	r4, sl, #3
d0050216:	428a      	cmp	r2, r1
d0050218:	dcdb      	bgt.n	d00501d2 <fillTriangleDitherBayerT+0x9de>
d005021a:	9b06      	ldr	r3, [sp, #24]
d005021c:	2e00      	cmp	r6, #0
d005021e:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0050222:	4413      	add	r3, r2
d0050224:	bfb8      	it	lt
d0050226:	2102      	movlt	r1, #2
d0050228:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005022c:	bfb8      	it	lt
d005022e:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0050232:	448e      	add	lr, r1
d0050234:	441f      	add	r7, r3
d0050236:	ee07 2a90 	vmov	s15, r2
d005023a:	4410      	add	r0, r2
d005023c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050240:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0050244:	eea7 3a81 	vfma.f32	s6, s15, s2
d0050248:	4285      	cmp	r5, r0
d005024a:	da8c      	bge.n	d0050166 <fillTriangleDitherBayerT+0x972>
d005024c:	e5ce      	b.n	d004fdec <fillTriangleDitherBayerT+0x5f8>
d005024e:	ee07 2a90 	vmov	s15, r2
d0050252:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0050256:	eb0e 0e42 	add.w	lr, lr, r2, lsl #1
d005025a:	4410      	add	r0, r2
d005025c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050260:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0050264:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0050268:	eea7 3a81 	vfma.f32	s6, s15, s2
d005026c:	e7ec      	b.n	d0050248 <fillTriangleDitherBayerT+0xa54>
d005026e:	9b05      	ldr	r3, [sp, #20]
d0050270:	f000 0403 	and.w	r4, r0, #3
d0050274:	2b00      	cmp	r3, #0
d0050276:	d042      	beq.n	d00502fe <fillTriangleDitherBayerT+0xb0a>
d0050278:	2e00      	cmp	r6, #0
d005027a:	d1dc      	bne.n	d0050236 <fillTriangleDitherBayerT+0xa42>
d005027c:	0093      	lsls	r3, r2, #2
d005027e:	eef0 0a66 	vmov.f32	s1, s13
d0050282:	9306      	str	r3, [sp, #24]
d0050284:	e7a2      	b.n	d00501cc <fillTriangleDitherBayerT+0x9d8>
d0050286:	f000 0403 	and.w	r4, r0, #3
d005028a:	f1ae 0902 	sub.w	r9, lr, #2
d005028e:	2100      	movs	r1, #0
d0050290:	9507      	str	r5, [sp, #28]
d0050292:	9608      	str	r6, [sp, #32]
d0050294:	9009      	str	r0, [sp, #36]	; 0x24
d0050296:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d005029a:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d005029e:	ee77 7a86 	vadd.f32	s15, s15, s12
d00502a2:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00502a6:	ee37 7a20 	vadd.f32	s14, s14, s1
d00502aa:	f104 0a01 	add.w	sl, r4, #1
d00502ae:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00502b2:	ee17 3a90 	vmov	r3, s15
d00502b6:	b29b      	uxth	r3, r3
d00502b8:	459b      	cmp	fp, r3
d00502ba:	d912      	bls.n	d00502e2 <fillTriangleDitherBayerT+0xaee>
d00502bc:	f818 b004 	ldrb.w	fp, [r8, r4]
d00502c0:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00502c4:	45e3      	cmp	fp, ip
d00502c6:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00502ca:	db0a      	blt.n	d00502e2 <fillTriangleDitherBayerT+0xaee>
d00502cc:	9801      	ldr	r0, [sp, #4]
d00502ce:	f8a9 3000 	strh.w	r3, [r9]
d00502d2:	4605      	mov	r5, r0
d00502d4:	9803      	ldr	r0, [sp, #12]
d00502d6:	4606      	mov	r6, r0
d00502d8:	9804      	ldr	r0, [sp, #16]
d00502da:	4583      	cmp	fp, r0
d00502dc:	bfb8      	it	lt
d00502de:	4635      	movlt	r5, r6
d00502e0:	553d      	strb	r5, [r7, r4]
d00502e2:	3101      	adds	r1, #1
d00502e4:	f00a 0403 	and.w	r4, sl, #3
d00502e8:	428a      	cmp	r2, r1
d00502ea:	dcd4      	bgt.n	d0050296 <fillTriangleDitherBayerT+0xaa2>
d00502ec:	9d07      	ldr	r5, [sp, #28]
d00502ee:	9e08      	ldr	r6, [sp, #32]
d00502f0:	9809      	ldr	r0, [sp, #36]	; 0x24
d00502f2:	e792      	b.n	d005021a <fillTriangleDitherBayerT+0xa26>
d00502f4:	0093      	lsls	r3, r2, #2
d00502f6:	eef0 0a66 	vmov.f32	s1, s13
d00502fa:	9306      	str	r3, [sp, #24]
d00502fc:	e761      	b.n	d00501c2 <fillTriangleDitherBayerT+0x9ce>
d00502fe:	2e00      	cmp	r6, #0
d0050300:	db99      	blt.n	d0050236 <fillTriangleDitherBayerT+0xa42>
d0050302:	0093      	lsls	r3, r2, #2
d0050304:	eef0 0a66 	vmov.f32	s1, s13
d0050308:	9306      	str	r3, [sp, #24]
d005030a:	e7be      	b.n	d005028a <fillTriangleDitherBayerT+0xa96>
d005030c:	f000 0403 	and.w	r4, r0, #3
d0050310:	e6b6      	b.n	d0050080 <fillTriangleDitherBayerT+0x88c>
d0050312:	eef0 6a46 	vmov.f32	s13, s12
d0050316:	f000 0403 	and.w	r4, r0, #3
d005031a:	009e      	lsls	r6, r3, #2
d005031c:	e6b0      	b.n	d0050080 <fillTriangleDitherBayerT+0x88c>
d005031e:	2310      	movs	r3, #16
d0050320:	9301      	str	r3, [sp, #4]
d0050322:	2310      	movs	r3, #16
d0050324:	9303      	str	r3, [sp, #12]
d0050326:	f7ff bacd 	b.w	d004f8c4 <fillTriangleDitherBayerT+0xd0>
d005032a:	eeb0 aa46 	vmov.f32	s20, s12
d005032e:	eef0 1a46 	vmov.f32	s3, s12
d0050332:	e5d4      	b.n	d004fede <fillTriangleDitherBayerT+0x6ea>
d0050334:	eeb0 1a66 	vmov.f32	s2, s13
d0050338:	eef0 2a66 	vmov.f32	s5, s13
d005033c:	e6f9      	b.n	d0050132 <fillTriangleDitherBayerT+0x93e>
d005033e:	bf00      	nop
d0050340:	d00f4c10 	.word	0xd00f4c10
d0050344:	d0057920 	.word	0xd0057920
d0050348:	d0057940 	.word	0xd0057940

d005034c <vec3Add>:
d005034c:	ee30 0a21 	vadd.f32	s0, s0, s3
d0050350:	b08e      	sub	sp, #56	; 0x38
d0050352:	ee70 0a82 	vadd.f32	s1, s1, s4
d0050356:	ee31 1a22 	vadd.f32	s2, s2, s5
d005035a:	b00e      	add	sp, #56	; 0x38
d005035c:	4770      	bx	lr
d005035e:	bf00      	nop

d0050360 <vec3Scale>:
d0050360:	ee20 0a21 	vmul.f32	s0, s0, s3
d0050364:	b08c      	sub	sp, #48	; 0x30
d0050366:	ee61 0aa0 	vmul.f32	s1, s3, s1
d005036a:	ee21 1a81 	vmul.f32	s2, s3, s2
d005036e:	b00c      	add	sp, #48	; 0x30
d0050370:	4770      	bx	lr
d0050372:	bf00      	nop

d0050374 <vec3Dot>:
d0050374:	ee20 2a82 	vmul.f32	s4, s1, s4
d0050378:	b086      	sub	sp, #24
d005037a:	eea0 2a21 	vfma.f32	s4, s0, s3
d005037e:	eea1 2a22 	vfma.f32	s4, s2, s5
d0050382:	eeb0 0a42 	vmov.f32	s0, s4
d0050386:	b006      	add	sp, #24
d0050388:	4770      	bx	lr
d005038a:	bf00      	nop

d005038c <vec3Cross>:
d005038c:	eeb0 7a60 	vmov.f32	s14, s1
d0050390:	b08e      	sub	sp, #56	; 0x38
d0050392:	eef0 7a40 	vmov.f32	s15, s0
d0050396:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d005039a:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d005039e:	ee22 0a41 	vnmul.f32	s0, s4, s2
d00503a2:	eee1 0a21 	vfma.f32	s1, s2, s3
d00503a6:	eee7 6a82 	vfma.f32	s13, s15, s4
d00503aa:	eea7 0a22 	vfma.f32	s0, s14, s5
d00503ae:	eeb0 1a66 	vmov.f32	s2, s13
d00503b2:	b00e      	add	sp, #56	; 0x38
d00503b4:	4770      	bx	lr
d00503b6:	bf00      	nop

d00503b8 <vec3Normalize>:
d00503b8:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00503bc:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0050448 <vec3Normalize+0x90>
d00503c0:	b08c      	sub	sp, #48	; 0x30
d00503c2:	eee0 7a00 	vfma.f32	s15, s0, s0
d00503c6:	eee1 7a01 	vfma.f32	s15, s2, s2
d00503ca:	eef4 7ac7 	vcmpe.f32	s15, s14
d00503ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00503d2:	d934      	bls.n	d005043e <vec3Normalize+0x86>
d00503d4:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d005044c <vec3Normalize+0x94>
d00503d8:	eef4 7a47 	vcmp.f32	s15, s14
d00503dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00503e0:	dd06      	ble.n	d00503f0 <vec3Normalize+0x38>
d00503e2:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0050450 <vec3Normalize+0x98>
d00503e6:	eef4 7a47 	vcmp.f32	s15, s14
d00503ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00503ee:	d418      	bmi.n	d0050422 <vec3Normalize+0x6a>
d00503f0:	ee17 2a90 	vmov	r2, s15
d00503f4:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00503f8:	4b16      	ldr	r3, [pc, #88]	; (d0050454 <vec3Normalize+0x9c>)
d00503fa:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d00503fe:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0050402:	ee67 7a86 	vmul.f32	s15, s15, s12
d0050406:	ee06 3a90 	vmov	s13, r3
d005040a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005040e:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0050412:	ee67 7a26 	vmul.f32	s15, s14, s13
d0050416:	ee27 0a80 	vmul.f32	s0, s15, s0
d005041a:	ee67 0aa0 	vmul.f32	s1, s15, s1
d005041e:	ee27 1a81 	vmul.f32	s2, s15, s2
d0050422:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0050426:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d005042a:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d005042e:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0050432:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0050436:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d005043a:	b00c      	add	sp, #48	; 0x30
d005043c:	4770      	bx	lr
d005043e:	2300      	movs	r3, #0
d0050440:	9309      	str	r3, [sp, #36]	; 0x24
d0050442:	930a      	str	r3, [sp, #40]	; 0x28
d0050444:	930b      	str	r3, [sp, #44]	; 0x2c
d0050446:	e7f2      	b.n	d005042e <vec3Normalize+0x76>
d0050448:	358637bd 	.word	0x358637bd
d005044c:	3f7fbe77 	.word	0x3f7fbe77
d0050450:	3f8020c5 	.word	0x3f8020c5
d0050454:	5f3759df 	.word	0x5f3759df

d0050458 <rotateAroundAxis>:
d0050458:	ee62 7a02 	vmul.f32	s15, s4, s4
d005045c:	ed9f 7a51 	vldr	s14, [pc, #324]	; d00505a4 <rotateAroundAxis+0x14c>
d0050460:	b500      	push	{lr}
d0050462:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0050466:	ed2d 8b0c 	vpush	{d8-d13}
d005046a:	eef0 ca40 	vmov.f32	s25, s0
d005046e:	b08f      	sub	sp, #60	; 0x3c
d0050470:	eeb0 ca60 	vmov.f32	s24, s1
d0050474:	eef0 ba41 	vmov.f32	s23, s2
d0050478:	eee2 7aa2 	vfma.f32	s15, s5, s5
d005047c:	eeb0 da43 	vmov.f32	s26, s6
d0050480:	eef4 7ac7 	vcmpe.f32	s15, s14
d0050484:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050488:	d97c      	bls.n	d0050584 <rotateAroundAxis+0x12c>
d005048a:	ed9f 7a47 	vldr	s14, [pc, #284]	; d00505a8 <rotateAroundAxis+0x150>
d005048e:	eef4 7a47 	vcmp.f32	s15, s14
d0050492:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050496:	dd55      	ble.n	d0050544 <rotateAroundAxis+0xec>
d0050498:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00505ac <rotateAroundAxis+0x154>
d005049c:	eef4 7a47 	vcmp.f32	s15, s14
d00504a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00504a4:	d54e      	bpl.n	d0050544 <rotateAroundAxis+0xec>
d00504a6:	eef0 da42 	vmov.f32	s27, s4
d00504aa:	eeb0 9a61 	vmov.f32	s18, s3
d00504ae:	eeb0 8a62 	vmov.f32	s16, s5
d00504b2:	ee60 8a82 	vmul.f32	s17, s1, s4
d00504b6:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d00504ba:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d00504be:	eeec 8a89 	vfma.f32	s17, s25, s18
d00504c2:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d00504c6:	eeeb 5aad 	vfma.f32	s11, s23, s27
d00504ca:	eeac 6a88 	vfma.f32	s12, s25, s16
d00504ce:	eeec 7a09 	vfma.f32	s15, s24, s18
d00504d2:	eeeb 8a88 	vfma.f32	s17, s23, s16
d00504d6:	eeb0 ba65 	vmov.f32	s22, s11
d00504da:	eeb0 aa46 	vmov.f32	s20, s12
d00504de:	eef0 aa67 	vmov.f32	s21, s15
d00504e2:	eeb0 0a4d 	vmov.f32	s0, s26
d00504e6:	f006 fa33 	bl	d0056950 <cosf>
d00504ea:	eef0 9a40 	vmov.f32	s19, s0
d00504ee:	eeb0 0a4d 	vmov.f32	s0, s26
d00504f2:	f006 fc11 	bl	d0056d18 <sinf>
d00504f6:	ee60 5a0b 	vmul.f32	s11, s0, s22
d00504fa:	ee20 6a0a 	vmul.f32	s12, s0, s20
d00504fe:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0050502:	eee9 5aac 	vfma.f32	s11, s19, s25
d0050506:	eea9 6a8c 	vfma.f32	s12, s19, s24
d005050a:	eee9 7aab 	vfma.f32	s15, s19, s23
d005050e:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050512:	ee29 9a28 	vmul.f32	s18, s18, s17
d0050516:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d005051a:	ee76 9ae9 	vsub.f32	s19, s13, s19
d005051e:	ee28 8a28 	vmul.f32	s16, s16, s17
d0050522:	eeb0 0a65 	vmov.f32	s0, s11
d0050526:	eef0 0a46 	vmov.f32	s1, s12
d005052a:	eeb0 1a67 	vmov.f32	s2, s15
d005052e:	eea9 0a89 	vfma.f32	s0, s19, s18
d0050532:	eee9 0a87 	vfma.f32	s1, s19, s14
d0050536:	eea9 1a88 	vfma.f32	s2, s19, s16
d005053a:	b00f      	add	sp, #60	; 0x3c
d005053c:	ecbd 8b0c 	vpop	{d8-d13}
d0050540:	f85d fb04 	ldr.w	pc, [sp], #4
d0050544:	ee17 2a90 	vmov	r2, s15
d0050548:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005054c:	4b18      	ldr	r3, [pc, #96]	; (d00505b0 <rotateAroundAxis+0x158>)
d005054e:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0050552:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0050556:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005055a:	ee07 3a10 	vmov	s14, r3
d005055e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0050562:	eea7 8a67 	vfms.f32	s16, s14, s15
d0050566:	ee27 8a08 	vmul.f32	s16, s14, s16
d005056a:	ee62 da08 	vmul.f32	s27, s4, s16
d005056e:	ee21 9a88 	vmul.f32	s18, s3, s16
d0050572:	ee22 8a88 	vmul.f32	s16, s5, s16
d0050576:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d005057a:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d005057e:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0050582:	e79c      	b.n	d00504be <rotateAroundAxis+0x66>
d0050584:	eddf 8a0b 	vldr	s17, [pc, #44]	; d00505b4 <rotateAroundAxis+0x15c>
d0050588:	eef0 aa68 	vmov.f32	s21, s17
d005058c:	eeb0 aa68 	vmov.f32	s20, s17
d0050590:	eeb0 ba68 	vmov.f32	s22, s17
d0050594:	eeb0 8a68 	vmov.f32	s16, s17
d0050598:	eef0 da68 	vmov.f32	s27, s17
d005059c:	eeb0 9a68 	vmov.f32	s18, s17
d00505a0:	e79f      	b.n	d00504e2 <rotateAroundAxis+0x8a>
d00505a2:	bf00      	nop
d00505a4:	358637bd 	.word	0x358637bd
d00505a8:	3f7fbe77 	.word	0x3f7fbe77
d00505ac:	3f8020c5 	.word	0x3f8020c5
d00505b0:	5f3759df 	.word	0x5f3759df
d00505b4:	00000000 	.word	0x00000000

d00505b8 <vec3>:
d00505b8:	b088      	sub	sp, #32
d00505ba:	b008      	add	sp, #32
d00505bc:	4770      	bx	lr
d00505be:	bf00      	nop

d00505c0 <degrees>:
d00505c0:	eddf 7a02 	vldr	s15, [pc, #8]	; d00505cc <degrees+0xc>
d00505c4:	ee20 0a27 	vmul.f32	s0, s0, s15
d00505c8:	4770      	bx	lr
d00505ca:	bf00      	nop
d00505cc:	3c8efa35 	.word	0x3c8efa35

d00505d0 <powfxt>:
d00505d0:	eef5 0a40 	vcmp.f32	s1, #0.0
d00505d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505d8:	d040      	beq.n	d005065c <powfxt+0x8c>
d00505da:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00505de:	eef0 7a40 	vmov.f32	s15, s0
d00505e2:	eef4 0a47 	vcmp.f32	s1, s14
d00505e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505ea:	d034      	beq.n	d0050656 <powfxt+0x86>
d00505ec:	eeb4 0a47 	vcmp.f32	s0, s14
d00505f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505f4:	d02f      	beq.n	d0050656 <powfxt+0x86>
d00505f6:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00505fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505fe:	d030      	beq.n	d0050662 <powfxt+0x92>
d0050600:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0050604:	eef4 0a66 	vcmp.f32	s1, s13
d0050608:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005060c:	d042      	beq.n	d0050694 <powfxt+0xc4>
d005060e:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d0050612:	eef4 0a66 	vcmp.f32	s1, s13
d0050616:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005061a:	d03e      	beq.n	d005069a <powfxt+0xca>
d005061c:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0050620:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0050624:	eeb4 6a60 	vcmp.f32	s12, s1
d0050628:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005062c:	d022      	beq.n	d0050674 <powfxt+0xa4>
d005062e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050632:	b500      	push	{lr}
d0050634:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050638:	b083      	sub	sp, #12
d005063a:	edcd 0a01 	vstr	s1, [sp, #4]
d005063e:	d431      	bmi.n	d00506a4 <powfxt+0xd4>
d0050640:	f006 fad8 	bl	d0056bf4 <logf>
d0050644:	eddd 0a01 	vldr	s1, [sp, #4]
d0050648:	ee20 0a20 	vmul.f32	s0, s0, s1
d005064c:	b003      	add	sp, #12
d005064e:	f85d eb04 	ldr.w	lr, [sp], #4
d0050652:	f006 ba59 	b.w	d0056b08 <expf>
d0050656:	eeb0 0a67 	vmov.f32	s0, s15
d005065a:	4770      	bx	lr
d005065c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050660:	4770      	bx	lr
d0050662:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0050666:	ed9f 0a15 	vldr	s0, [pc, #84]	; d00506bc <powfxt+0xec>
d005066a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005066e:	fe37 0a80 	vselgt.f32	s0, s15, s0
d0050672:	4770      	bx	lr
d0050674:	ee16 3a90 	vmov	r3, s13
d0050678:	2b00      	cmp	r3, #0
d005067a:	db18      	blt.n	d00506ae <powfxt+0xde>
d005067c:	d01b      	beq.n	d00506b6 <powfxt+0xe6>
d005067e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050682:	07da      	lsls	r2, r3, #31
d0050684:	bf48      	it	mi
d0050686:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d005068a:	085b      	lsrs	r3, r3, #1
d005068c:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0050690:	d1f7      	bne.n	d0050682 <powfxt+0xb2>
d0050692:	4770      	bx	lr
d0050694:	eeb1 0ae7 	vsqrt.f32	s0, s15
d0050698:	4770      	bx	lr
d005069a:	eef1 6ac0 	vsqrt.f32	s13, s0
d005069e:	ee87 0a26 	vdiv.f32	s0, s14, s13
d00506a2:	4770      	bx	lr
d00506a4:	ed9f 0a06 	vldr	s0, [pc, #24]	; d00506c0 <powfxt+0xf0>
d00506a8:	b003      	add	sp, #12
d00506aa:	f85d fb04 	ldr.w	pc, [sp], #4
d00506ae:	eec7 7a00 	vdiv.f32	s15, s14, s0
d00506b2:	425b      	negs	r3, r3
d00506b4:	e7e3      	b.n	d005067e <powfxt+0xae>
d00506b6:	eeb0 0a47 	vmov.f32	s0, s14
d00506ba:	4770      	bx	lr
d00506bc:	7f800000 	.word	0x7f800000
d00506c0:	7fc00000 	.word	0x7fc00000

d00506c4 <worldClear>:
d00506c4:	b508      	push	{r3, lr}
d00506c6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
d00506ca:	2100      	movs	r1, #0
d00506cc:	4807      	ldr	r0, [pc, #28]	; (d00506ec <worldClear+0x28>)
d00506ce:	f005 f807 	bl	d00556e0 <memset>
d00506d2:	f001 fff7 	bl	d00526c4 <lightsClear>
d00506d6:	f7fe f97b 	bl	d004e9d0 <initDepthBandMem>
d00506da:	f004 f935 	bl	d0054948 <sb3dParticlesClear>
d00506de:	f002 fd71 	bl	d00531c4 <initClipScratch>
d00506e2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d00506e6:	f004 b9f9 	b.w	d0054adc <sb3dWorldAudioDefaults>
d00506ea:	bf00      	nop
d00506ec:	d00f4c20 	.word	0xd00f4c20

d00506f0 <cameraNormalize>:
d00506f0:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d00506f4:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d00506f8:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00506fc:	b510      	push	{r4, lr}
d00506fe:	4604      	mov	r4, r0
d0050700:	f7ff fe5a 	bl	d00503b8 <vec3Normalize>
d0050704:	eeb0 7a60 	vmov.f32	s14, s1
d0050708:	eef0 7a41 	vmov.f32	s15, s2
d005070c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050710:	ed94 0a06 	vldr	s0, [r4, #24]
d0050714:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0050718:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d005071c:	edd4 0a07 	vldr	s1, [r4, #28]
d0050720:	ed94 1a08 	vldr	s2, [r4, #32]
d0050724:	f7ff fe48 	bl	d00503b8 <vec3Normalize>
d0050728:	eef0 1a40 	vmov.f32	s3, s0
d005072c:	eeb0 2a60 	vmov.f32	s4, s1
d0050730:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050734:	eef0 2a41 	vmov.f32	s5, s2
d0050738:	edc4 0a07 	vstr	s1, [r4, #28]
d005073c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050740:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050744:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050748:	edc4 1a06 	vstr	s3, [r4, #24]
d005074c:	f7ff fe1e 	bl	d005038c <vec3Cross>
d0050750:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050754:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050758:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005075c:	f7ff fe2c 	bl	d00503b8 <vec3Normalize>
d0050760:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050764:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050768:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005076c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050770:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050774:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050778:	f7ff fe08 	bl	d005038c <vec3Cross>
d005077c:	ed84 0a06 	vstr	s0, [r4, #24]
d0050780:	edc4 0a07 	vstr	s1, [r4, #28]
d0050784:	ed84 1a08 	vstr	s2, [r4, #32]
d0050788:	f7ff fe16 	bl	d00503b8 <vec3Normalize>
d005078c:	ed84 0a06 	vstr	s0, [r4, #24]
d0050790:	edc4 0a07 	vstr	s1, [r4, #28]
d0050794:	ed84 1a08 	vstr	s2, [r4, #32]
d0050798:	bd10      	pop	{r4, pc}
d005079a:	bf00      	nop

d005079c <cameraCreate>:
d005079c:	b510      	push	{r4, lr}
d005079e:	4604      	mov	r4, r0
d00507a0:	2260      	movs	r2, #96	; 0x60
d00507a2:	4902      	ldr	r1, [pc, #8]	; (d00507ac <cameraCreate+0x10>)
d00507a4:	f004 ff8e 	bl	d00556c4 <memcpy>
d00507a8:	4620      	mov	r0, r4
d00507aa:	bd10      	pop	{r4, pc}
d00507ac:	d0057a20 	.word	0xd0057a20

d00507b0 <cameraSetPosition>:
d00507b0:	b084      	sub	sp, #16
d00507b2:	ed8d 0a01 	vstr	s0, [sp, #4]
d00507b6:	edcd 0a02 	vstr	s1, [sp, #8]
d00507ba:	ed8d 1a03 	vstr	s2, [sp, #12]
d00507be:	b128      	cbz	r0, d00507cc <cameraSetPosition+0x1c>
d00507c0:	aa04      	add	r2, sp, #16
d00507c2:	4603      	mov	r3, r0
d00507c4:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00507c8:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00507cc:	b004      	add	sp, #16
d00507ce:	4770      	bx	lr

d00507d0 <cameraRotate>:
d00507d0:	2800      	cmp	r0, #0
d00507d2:	f000 80a8 	beq.w	d0050926 <cameraRotate+0x156>
d00507d6:	b510      	push	{r4, lr}
d00507d8:	ed2d 8b04 	vpush	{d8-d9}
d00507dc:	edc0 0a04 	vstr	s1, [r0, #16]
d00507e0:	b084      	sub	sp, #16
d00507e2:	ed80 1a05 	vstr	s2, [r0, #20]
d00507e6:	eef0 8a40 	vmov.f32	s17, s0
d00507ea:	ed80 0a03 	vstr	s0, [r0, #12]
d00507ee:	4604      	mov	r4, r0
d00507f0:	eeb0 8a60 	vmov.f32	s16, s1
d00507f4:	f006 f8ac 	bl	d0056950 <cosf>
d00507f8:	eeb0 1a40 	vmov.f32	s2, s0
d00507fc:	eeb0 0a68 	vmov.f32	s0, s17
d0050800:	eef0 8a41 	vmov.f32	s17, s2
d0050804:	f006 fa88 	bl	d0056d18 <sinf>
d0050808:	eeb0 9a40 	vmov.f32	s18, s0
d005080c:	eeb0 0a48 	vmov.f32	s0, s16
d0050810:	f006 f89e 	bl	d0056950 <cosf>
d0050814:	eeb0 1a40 	vmov.f32	s2, s0
d0050818:	eeb0 0a48 	vmov.f32	s0, s16
d005081c:	eeb0 8a41 	vmov.f32	s16, s2
d0050820:	f006 fa7a 	bl	d0056d18 <sinf>
d0050824:	eef0 0a40 	vmov.f32	s1, s0
d0050828:	ee28 1a88 	vmul.f32	s2, s17, s16
d005082c:	ee29 9a08 	vmul.f32	s18, s18, s16
d0050830:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050834:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050838:	eeb0 0a49 	vmov.f32	s0, s18
d005083c:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d0050840:	f7ff fdba 	bl	d00503b8 <vec3Normalize>
d0050844:	eef0 7a41 	vmov.f32	s15, s2
d0050848:	eeb0 7a60 	vmov.f32	s14, s1
d005084c:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0050980 <cameraRotate+0x1b0>
d0050850:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050854:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050858:	eeb0 0a41 	vmov.f32	s0, s2
d005085c:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0050860:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0050864:	f7ff fea8 	bl	d00505b8 <vec3>
d0050868:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005086c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050870:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050874:	f7ff fd8a 	bl	d005038c <vec3Cross>
d0050878:	eef0 1a40 	vmov.f32	s3, s0
d005087c:	eeb0 2a60 	vmov.f32	s4, s1
d0050880:	ed84 0a06 	vstr	s0, [r4, #24]
d0050884:	eef0 2a41 	vmov.f32	s5, s2
d0050888:	edc4 0a07 	vstr	s1, [r4, #28]
d005088c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050890:	f7ff fd70 	bl	d0050374 <vec3Dot>
d0050894:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0050984 <cameraRotate+0x1b4>
d0050898:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005089c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508a0:	d438      	bmi.n	d0050914 <cameraRotate+0x144>
d00508a2:	ed94 0a06 	vldr	s0, [r4, #24]
d00508a6:	edd4 0a07 	vldr	s1, [r4, #28]
d00508aa:	ed94 1a08 	vldr	s2, [r4, #32]
d00508ae:	f7ff fd83 	bl	d00503b8 <vec3Normalize>
d00508b2:	eef0 1a40 	vmov.f32	s3, s0
d00508b6:	ed84 0a06 	vstr	s0, [r4, #24]
d00508ba:	eeb0 2a60 	vmov.f32	s4, s1
d00508be:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00508c2:	eef0 2a41 	vmov.f32	s5, s2
d00508c6:	edc4 0a07 	vstr	s1, [r4, #28]
d00508ca:	ed84 1a08 	vstr	s2, [r4, #32]
d00508ce:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00508d2:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00508d6:	f7ff fd59 	bl	d005038c <vec3Cross>
d00508da:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00508de:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00508e2:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00508e6:	f7ff fd67 	bl	d00503b8 <vec3Normalize>
d00508ea:	ed94 3a05 	vldr	s6, [r4, #20]
d00508ee:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00508f2:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00508f6:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00508fa:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00508fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050902:	d111      	bne.n	d0050928 <cameraRotate+0x158>
d0050904:	4620      	mov	r0, r4
d0050906:	b004      	add	sp, #16
d0050908:	ecbd 8b04 	vpop	{d8-d9}
d005090c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0050910:	f7ff beee 	b.w	d00506f0 <cameraNormalize>
d0050914:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d0050980 <cameraRotate+0x1b0>
d0050918:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005091c:	eef0 0a41 	vmov.f32	s1, s2
d0050920:	f7ff fe4a 	bl	d00505b8 <vec3>
d0050924:	e7c5      	b.n	d00508b2 <cameraRotate+0xe2>
d0050926:	4770      	bx	lr
d0050928:	ed94 0a06 	vldr	s0, [r4, #24]
d005092c:	edd4 0a07 	vldr	s1, [r4, #28]
d0050930:	ed94 1a08 	vldr	s2, [r4, #32]
d0050934:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050938:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d005093c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050940:	f7ff fd8a 	bl	d0050458 <rotateAroundAxis>
d0050944:	ed84 0a06 	vstr	s0, [r4, #24]
d0050948:	edc4 0a07 	vstr	s1, [r4, #28]
d005094c:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050950:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050954:	ed84 1a08 	vstr	s2, [r4, #32]
d0050958:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d005095c:	ed94 3a05 	vldr	s6, [r4, #20]
d0050960:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050964:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050968:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005096c:	f7ff fd74 	bl	d0050458 <rotateAroundAxis>
d0050970:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050974:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050978:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005097c:	e7c2      	b.n	d0050904 <cameraRotate+0x134>
d005097e:	bf00      	nop
d0050980:	00000000 	.word	0x00000000
d0050984:	322bcc77 	.word	0x322bcc77

d0050988 <cameraGetRotation>:
d0050988:	b510      	push	{r4, lr}
d005098a:	ed2d 8b04 	vpush	{d8-d9}
d005098e:	b08e      	sub	sp, #56	; 0x38
d0050990:	b100      	cbz	r0, d0050994 <cameraGetRotation+0xc>
d0050992:	b169      	cbz	r1, d00509b0 <cameraGetRotation+0x28>
d0050994:	2300      	movs	r3, #0
d0050996:	930b      	str	r3, [sp, #44]	; 0x2c
d0050998:	930c      	str	r3, [sp, #48]	; 0x30
d005099a:	930d      	str	r3, [sp, #52]	; 0x34
d005099c:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d00509a0:	eddd 0a0c 	vldr	s1, [sp, #48]	; 0x30
d00509a4:	ed9d 1a0d 	vldr	s2, [sp, #52]	; 0x34
d00509a8:	b00e      	add	sp, #56	; 0x38
d00509aa:	ecbd 8b04 	vpop	{d8-d9}
d00509ae:	bd10      	pop	{r4, pc}
d00509b0:	edd0 0a0e 	vldr	s1, [r0, #56]	; 0x38
d00509b4:	4604      	mov	r4, r0
d00509b6:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00509ba:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00509be:	eee0 7a00 	vfma.f32	s15, s0, s0
d00509c2:	eeb1 8ae7 	vsqrt.f32	s16, s15
d00509c6:	f006 fa47 	bl	d0056e58 <atan2f>
d00509ca:	eef0 8a40 	vmov.f32	s17, s0
d00509ce:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00509d2:	eef0 0a48 	vmov.f32	s1, s16
d00509d6:	f006 fa3f 	bl	d0056e58 <atan2f>
d00509da:	ed9f 1a41 	vldr	s2, [pc, #260]	; d0050ae0 <cameraGetRotation+0x158>
d00509de:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00509e2:	eeb0 8a40 	vmov.f32	s16, s0
d00509e6:	eeb0 0a41 	vmov.f32	s0, s2
d00509ea:	f7ff fde5 	bl	d00505b8 <vec3>
d00509ee:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00509f2:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00509f6:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00509fa:	f7ff fcc7 	bl	d005038c <vec3Cross>
d00509fe:	eef0 1a40 	vmov.f32	s3, s0
d0050a02:	eeb0 2a60 	vmov.f32	s4, s1
d0050a06:	ed8d 0a05 	vstr	s0, [sp, #20]
d0050a0a:	eef0 2a41 	vmov.f32	s5, s2
d0050a0e:	edcd 0a06 	vstr	s1, [sp, #24]
d0050a12:	ed8d 1a07 	vstr	s2, [sp, #28]
d0050a16:	f7ff fcad 	bl	d0050374 <vec3Dot>
d0050a1a:	eddf 7a32 	vldr	s15, [pc, #200]	; d0050ae4 <cameraGetRotation+0x15c>
d0050a1e:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050a22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a26:	d552      	bpl.n	d0050ace <cameraGetRotation+0x146>
d0050a28:	ed9f 1a2d 	vldr	s2, [pc, #180]	; d0050ae0 <cameraGetRotation+0x158>
d0050a2c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050a30:	eef0 0a41 	vmov.f32	s1, s2
d0050a34:	f7ff fdc0 	bl	d00505b8 <vec3>
d0050a38:	eef0 1a40 	vmov.f32	s3, s0
d0050a3c:	ed8d 0a05 	vstr	s0, [sp, #20]
d0050a40:	eeb0 2a60 	vmov.f32	s4, s1
d0050a44:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050a48:	eef0 2a41 	vmov.f32	s5, s2
d0050a4c:	edcd 0a06 	vstr	s1, [sp, #24]
d0050a50:	ed8d 1a07 	vstr	s2, [sp, #28]
d0050a54:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050a58:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050a5c:	f7ff fc96 	bl	d005038c <vec3Cross>
d0050a60:	f7ff fcaa 	bl	d00503b8 <vec3Normalize>
d0050a64:	eef0 6a40 	vmov.f32	s13, s0
d0050a68:	eeb0 7a60 	vmov.f32	s14, s1
d0050a6c:	eddd 1a05 	vldr	s3, [sp, #20]
d0050a70:	eef0 7a41 	vmov.f32	s15, s2
d0050a74:	ed9d 2a06 	vldr	s4, [sp, #24]
d0050a78:	eddd 2a07 	vldr	s5, [sp, #28]
d0050a7c:	edd4 0a07 	vldr	s1, [r4, #28]
d0050a80:	ed94 1a08 	vldr	s2, [r4, #32]
d0050a84:	ed94 0a06 	vldr	s0, [r4, #24]
d0050a88:	edcd 6a08 	vstr	s13, [sp, #32]
d0050a8c:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0050a90:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0050a94:	f7ff fc6e 	bl	d0050374 <vec3Dot>
d0050a98:	eeb0 9a40 	vmov.f32	s18, s0
d0050a9c:	eddd 1a08 	vldr	s3, [sp, #32]
d0050aa0:	ed9d 2a09 	vldr	s4, [sp, #36]	; 0x24
d0050aa4:	eddd 2a0a 	vldr	s5, [sp, #40]	; 0x28
d0050aa8:	edd4 0a07 	vldr	s1, [r4, #28]
d0050aac:	ed94 1a08 	vldr	s2, [r4, #32]
d0050ab0:	ed94 0a06 	vldr	s0, [r4, #24]
d0050ab4:	f7ff fc5e 	bl	d0050374 <vec3Dot>
d0050ab8:	eef0 0a49 	vmov.f32	s1, s18
d0050abc:	f006 f9cc 	bl	d0056e58 <atan2f>
d0050ac0:	edcd 8a0b 	vstr	s17, [sp, #44]	; 0x2c
d0050ac4:	ed8d 8a0c 	vstr	s16, [sp, #48]	; 0x30
d0050ac8:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d0050acc:	e766      	b.n	d005099c <cameraGetRotation+0x14>
d0050ace:	ed9d 0a05 	vldr	s0, [sp, #20]
d0050ad2:	eddd 0a06 	vldr	s1, [sp, #24]
d0050ad6:	ed9d 1a07 	vldr	s2, [sp, #28]
d0050ada:	f7ff fc6d 	bl	d00503b8 <vec3Normalize>
d0050ade:	e7ab      	b.n	d0050a38 <cameraGetRotation+0xb0>
d0050ae0:	00000000 	.word	0x00000000
d0050ae4:	322bcc77 	.word	0x322bcc77

d0050ae8 <cameraTurn>:
d0050ae8:	2800      	cmp	r0, #0
d0050aea:	f000 8144 	beq.w	d0050d76 <cameraTurn+0x28e>
d0050aee:	b570      	push	{r4, r5, r6, lr}
d0050af0:	4604      	mov	r4, r0
d0050af2:	ed2d 8b04 	vpush	{d8-d9}
d0050af6:	eef0 8a40 	vmov.f32	s17, s0
d0050afa:	b08a      	sub	sp, #40	; 0x28
d0050afc:	eeb0 9a60 	vmov.f32	s18, s1
d0050b00:	eeb0 8a41 	vmov.f32	s16, s2
d0050b04:	bb69      	cbnz	r1, d0050b62 <cameraTurn+0x7a>
d0050b06:	f100 0318 	add.w	r3, r0, #24
d0050b0a:	ae01      	add	r6, sp, #4
d0050b0c:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0050b10:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0050b14:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050b18:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0050b1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b20:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050b24:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0050b28:	ae04      	add	r6, sp, #16
d0050b2a:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050b2e:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050b32:	ab0a      	add	r3, sp, #40	; 0x28
d0050b34:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0050b38:	d14a      	bne.n	d0050bd0 <cameraTurn+0xe8>
d0050b3a:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050b3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b42:	f040 808d 	bne.w	d0050c60 <cameraTurn+0x178>
d0050b46:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050b4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b4e:	f040 80cf 	bne.w	d0050cf0 <cameraTurn+0x208>
d0050b52:	4620      	mov	r0, r4
d0050b54:	b00a      	add	sp, #40	; 0x28
d0050b56:	ecbd 8b04 	vpop	{d8-d9}
d0050b5a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050b5e:	f7ff bdc7 	b.w	d00506f0 <cameraNormalize>
d0050b62:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0050d78 <cameraTurn+0x290>
d0050b66:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050b6a:	eef0 0a41 	vmov.f32	s1, s2
d0050b6e:	f7ff fd23 	bl	d00505b8 <vec3>
d0050b72:	eef0 7a41 	vmov.f32	s15, s2
d0050b76:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0050d78 <cameraTurn+0x290>
d0050b7a:	eeb0 7a60 	vmov.f32	s14, s1
d0050b7e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0050b82:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050b86:	edcd 7a03 	vstr	s15, [sp, #12]
d0050b8a:	eeb0 0a41 	vmov.f32	s0, s2
d0050b8e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0050b92:	f7ff fd11 	bl	d00505b8 <vec3>
d0050b96:	eeb0 7a60 	vmov.f32	s14, s1
d0050b9a:	eddf 0a77 	vldr	s1, [pc, #476]	; d0050d78 <cameraTurn+0x290>
d0050b9e:	eef0 7a41 	vmov.f32	s15, s2
d0050ba2:	ed8d 0a04 	vstr	s0, [sp, #16]
d0050ba6:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0050baa:	eeb0 0a60 	vmov.f32	s0, s1
d0050bae:	ed8d 7a05 	vstr	s14, [sp, #20]
d0050bb2:	edcd 7a06 	vstr	s15, [sp, #24]
d0050bb6:	f7ff fcff 	bl	d00505b8 <vec3>
d0050bba:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0050bbe:	edcd 0a08 	vstr	s1, [sp, #32]
d0050bc2:	ed8d 0a07 	vstr	s0, [sp, #28]
d0050bc6:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0050bca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050bce:	d0b4      	beq.n	d0050b3a <cameraTurn+0x52>
d0050bd0:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050bd4:	eeb0 3a49 	vmov.f32	s6, s18
d0050bd8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050bdc:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050be0:	eddd 1a04 	vldr	s3, [sp, #16]
d0050be4:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050be8:	eddd 2a06 	vldr	s5, [sp, #24]
d0050bec:	f7ff fc34 	bl	d0050458 <rotateAroundAxis>
d0050bf0:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050bf4:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050bf8:	eeb0 3a49 	vmov.f32	s6, s18
d0050bfc:	ed94 0a06 	vldr	s0, [r4, #24]
d0050c00:	edd4 0a07 	vldr	s1, [r4, #28]
d0050c04:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050c08:	ed94 1a08 	vldr	s2, [r4, #32]
d0050c0c:	eddd 1a04 	vldr	s3, [sp, #16]
d0050c10:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050c14:	eddd 2a06 	vldr	s5, [sp, #24]
d0050c18:	f7ff fc1e 	bl	d0050458 <rotateAroundAxis>
d0050c1c:	eeb0 3a49 	vmov.f32	s6, s18
d0050c20:	ed84 0a06 	vstr	s0, [r4, #24]
d0050c24:	edc4 0a07 	vstr	s1, [r4, #28]
d0050c28:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050c2c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050c30:	ed84 1a08 	vstr	s2, [r4, #32]
d0050c34:	eddd 1a04 	vldr	s3, [sp, #16]
d0050c38:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050c3c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050c40:	eddd 2a06 	vldr	s5, [sp, #24]
d0050c44:	f7ff fc08 	bl	d0050458 <rotateAroundAxis>
d0050c48:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050c4c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050c50:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050c54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c58:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050c5c:	f43f af73 	beq.w	d0050b46 <cameraTurn+0x5e>
d0050c60:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050c64:	eeb0 3a68 	vmov.f32	s6, s17
d0050c68:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050c6c:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050c70:	eddd 1a01 	vldr	s3, [sp, #4]
d0050c74:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050c78:	eddd 2a03 	vldr	s5, [sp, #12]
d0050c7c:	f7ff fbec 	bl	d0050458 <rotateAroundAxis>
d0050c80:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050c84:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050c88:	eeb0 3a68 	vmov.f32	s6, s17
d0050c8c:	ed94 0a06 	vldr	s0, [r4, #24]
d0050c90:	edd4 0a07 	vldr	s1, [r4, #28]
d0050c94:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050c98:	ed94 1a08 	vldr	s2, [r4, #32]
d0050c9c:	eddd 1a01 	vldr	s3, [sp, #4]
d0050ca0:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050ca4:	eddd 2a03 	vldr	s5, [sp, #12]
d0050ca8:	f7ff fbd6 	bl	d0050458 <rotateAroundAxis>
d0050cac:	eeb0 3a68 	vmov.f32	s6, s17
d0050cb0:	ed84 0a06 	vstr	s0, [r4, #24]
d0050cb4:	edc4 0a07 	vstr	s1, [r4, #28]
d0050cb8:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050cbc:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050cc0:	ed84 1a08 	vstr	s2, [r4, #32]
d0050cc4:	eddd 1a01 	vldr	s3, [sp, #4]
d0050cc8:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050ccc:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050cd0:	eddd 2a03 	vldr	s5, [sp, #12]
d0050cd4:	f7ff fbc0 	bl	d0050458 <rotateAroundAxis>
d0050cd8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050cdc:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050ce0:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050ce4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ce8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050cec:	f43f af31 	beq.w	d0050b52 <cameraTurn+0x6a>
d0050cf0:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050cf4:	eeb0 3a48 	vmov.f32	s6, s16
d0050cf8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050cfc:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050d00:	eddd 1a07 	vldr	s3, [sp, #28]
d0050d04:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050d08:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050d0c:	f7ff fba4 	bl	d0050458 <rotateAroundAxis>
d0050d10:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050d14:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050d18:	eeb0 3a48 	vmov.f32	s6, s16
d0050d1c:	ed94 0a06 	vldr	s0, [r4, #24]
d0050d20:	edd4 0a07 	vldr	s1, [r4, #28]
d0050d24:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050d28:	ed94 1a08 	vldr	s2, [r4, #32]
d0050d2c:	eddd 1a07 	vldr	s3, [sp, #28]
d0050d30:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050d34:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050d38:	f7ff fb8e 	bl	d0050458 <rotateAroundAxis>
d0050d3c:	ed84 0a06 	vstr	s0, [r4, #24]
d0050d40:	edc4 0a07 	vstr	s1, [r4, #28]
d0050d44:	eeb0 3a48 	vmov.f32	s6, s16
d0050d48:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050d4c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050d50:	ed84 1a08 	vstr	s2, [r4, #32]
d0050d54:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050d58:	eddd 1a07 	vldr	s3, [sp, #28]
d0050d5c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050d60:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050d64:	f7ff fb78 	bl	d0050458 <rotateAroundAxis>
d0050d68:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050d6c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050d70:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050d74:	e6ed      	b.n	d0050b52 <cameraTurn+0x6a>
d0050d76:	4770      	bx	lr
d0050d78:	00000000 	.word	0x00000000

d0050d7c <worldToCamera>:
d0050d7c:	b084      	sub	sp, #16
d0050d7e:	b510      	push	{r4, lr}
d0050d80:	ed2d 8b02 	vpush	{d8}
d0050d84:	b0ac      	sub	sp, #176	; 0xb0
d0050d86:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0050d8a:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0050d8e:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0050d92:	f024 041f 	bic.w	r4, r4, #31
d0050d96:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0050d9a:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0050d9e:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0050da2:	2260      	movs	r2, #96	; 0x60
d0050da4:	4661      	mov	r1, ip
d0050da6:	4620      	mov	r0, r4
d0050da8:	f004 fc8c 	bl	d00556c4 <memcpy>
d0050dac:	edd4 7a00 	vldr	s15, [r4]
d0050db0:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0050db4:	ed94 7a01 	vldr	s14, [r4, #4]
d0050db8:	ee30 0a67 	vsub.f32	s0, s0, s15
d0050dbc:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0050dc0:	edd4 7a02 	vldr	s15, [r4, #8]
d0050dc4:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0050dc8:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0050dcc:	edd4 1a06 	vldr	s3, [r4, #24]
d0050dd0:	ee31 1a67 	vsub.f32	s2, s2, s15
d0050dd4:	ed94 2a07 	vldr	s4, [r4, #28]
d0050dd8:	edd4 2a08 	vldr	s5, [r4, #32]
d0050ddc:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0050de0:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0050de4:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0050de8:	f7ff fac4 	bl	d0050374 <vec3Dot>
d0050dec:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0050df0:	eef0 8a40 	vmov.f32	s17, s0
d0050df4:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0050df8:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0050dfc:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0050e00:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0050e04:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0050e08:	f7ff fab4 	bl	d0050374 <vec3Dot>
d0050e0c:	eeb0 8a40 	vmov.f32	s16, s0
d0050e10:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0050e14:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0050e18:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050e1c:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0050e20:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050e24:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050e28:	f7ff faa4 	bl	d0050374 <vec3Dot>
d0050e2c:	eef0 0a48 	vmov.f32	s1, s16
d0050e30:	eeb0 1a40 	vmov.f32	s2, s0
d0050e34:	eeb0 0a68 	vmov.f32	s0, s17
d0050e38:	b02c      	add	sp, #176	; 0xb0
d0050e3a:	ecbd 8b02 	vpop	{d8}
d0050e3e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0050e42:	b004      	add	sp, #16
d0050e44:	4770      	bx	lr
d0050e46:	bf00      	nop

d0050e48 <cameraSetRange>:
d0050e48:	b1d8      	cbz	r0, d0050e82 <cameraSetRange+0x3a>
d0050e4a:	eddf 7a11 	vldr	s15, [pc, #68]	; d0050e90 <cameraSetRange+0x48>
d0050e4e:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0050e52:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0050e56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050e5a:	da13      	bge.n	d0050e84 <cameraSetRange+0x3c>
d0050e5c:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0050e60:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050e64:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0050e68:	4b0a      	ldr	r3, [pc, #40]	; (d0050e94 <cameraSetRange+0x4c>)
d0050e6a:	490b      	ldr	r1, [pc, #44]	; (d0050e98 <cameraSetRange+0x50>)
d0050e6c:	4a0b      	ldr	r2, [pc, #44]	; (d0050e9c <cameraSetRange+0x54>)
d0050e6e:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0050e72:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0050e76:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0050e7a:	6483      	str	r3, [r0, #72]	; 0x48
d0050e7c:	64c3      	str	r3, [r0, #76]	; 0x4c
d0050e7e:	6501      	str	r1, [r0, #80]	; 0x50
d0050e80:	6542      	str	r2, [r0, #84]	; 0x54
d0050e82:	4770      	bx	lr
d0050e84:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0050e88:	ee70 0a27 	vadd.f32	s1, s0, s15
d0050e8c:	e7ec      	b.n	d0050e68 <cameraSetRange+0x20>
d0050e8e:	bf00      	nop
d0050e90:	3a83126f 	.word	0x3a83126f
d0050e94:	43700000 	.word	0x43700000
d0050e98:	43200000 	.word	0x43200000
d0050e9c:	3f2aaaab 	.word	0x3f2aaaab

d0050ea0 <cameraMove>:
d0050ea0:	b3a8      	cbz	r0, d0050f0e <cameraMove+0x6e>
d0050ea2:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0050ea6:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0050eaa:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d0050eae:	ee20 7a87 	vmul.f32	s14, s1, s14
d0050eb2:	edd0 5a06 	vldr	s11, [r0, #24]
d0050eb6:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0050eba:	ed90 6a08 	vldr	s12, [r0, #32]
d0050ebe:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0050ec2:	edd0 6a07 	vldr	s13, [r0, #28]
d0050ec6:	eea5 7a80 	vfma.f32	s14, s11, s0
d0050eca:	edd0 4a01 	vldr	s9, [r0, #4]
d0050ece:	eee6 7a80 	vfma.f32	s15, s13, s0
d0050ed2:	ed90 5a02 	vldr	s10, [r0, #8]
d0050ed6:	eee6 0a00 	vfma.f32	s1, s12, s0
d0050eda:	edd0 6a00 	vldr	s13, [r0]
d0050ede:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0050ee2:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0050ee6:	ee37 7a26 	vadd.f32	s14, s14, s13
d0050eea:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0050eee:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0050ef2:	ee70 0a85 	vadd.f32	s1, s1, s10
d0050ef6:	eea5 7a81 	vfma.f32	s14, s11, s2
d0050efa:	eee6 7a01 	vfma.f32	s15, s12, s2
d0050efe:	eee6 0a81 	vfma.f32	s1, s13, s2
d0050f02:	ed80 7a00 	vstr	s14, [r0]
d0050f06:	edc0 7a01 	vstr	s15, [r0, #4]
d0050f0a:	edc0 0a02 	vstr	s1, [r0, #8]
d0050f0e:	4770      	bx	lr

d0050f10 <entityRotation.part.0>:
d0050f10:	b5f0      	push	{r4, r5, r6, r7, lr}
d0050f12:	4dde      	ldr	r5, [pc, #888]	; (d005128c <entityRotation.part.0+0x37c>)
d0050f14:	ed2d 8b04 	vpush	{d8-d9}
d0050f18:	eb05 14c0 	add.w	r4, r5, r0, lsl #7
d0050f1c:	eeb0 9a40 	vmov.f32	s18, s0
d0050f20:	eef0 8a60 	vmov.f32	s17, s1
d0050f24:	b08b      	sub	sp, #44	; 0x2c
d0050f26:	eeb0 8a41 	vmov.f32	s16, s2
d0050f2a:	2900      	cmp	r1, #0
d0050f2c:	f000 8092 	beq.w	d0051054 <entityRotation.part.0+0x144>
d0050f30:	eddf 1ad7 	vldr	s3, [pc, #860]	; d0051290 <entityRotation.part.0+0x380>
d0050f34:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0050f38:	eeb4 0a61 	vcmp.f32	s0, s3
d0050f3c:	edc4 1a0b 	vstr	s3, [r4, #44]	; 0x2c
d0050f40:	ed84 2a0a 	vstr	s4, [r4, #40]	; 0x28
d0050f44:	ed84 2a0e 	vstr	s4, [r4, #56]	; 0x38
d0050f48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f4c:	ed84 2a09 	vstr	s4, [r4, #36]	; 0x24
d0050f50:	ed8d 2a02 	vstr	s4, [sp, #8]
d0050f54:	ed8d 2a04 	vstr	s4, [sp, #16]
d0050f58:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0050f5c:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0050f60:	edc4 1a0d 	vstr	s3, [r4, #52]	; 0x34
d0050f64:	edc4 1a0f 	vstr	s3, [r4, #60]	; 0x3c
d0050f68:	edc4 1a07 	vstr	s3, [r4, #28]
d0050f6c:	edc4 1a08 	vstr	s3, [r4, #32]
d0050f70:	edcd 1a01 	vstr	s3, [sp, #4]
d0050f74:	edcd 1a03 	vstr	s3, [sp, #12]
d0050f78:	edcd 1a05 	vstr	s3, [sp, #20]
d0050f7c:	edcd 1a06 	vstr	s3, [sp, #24]
d0050f80:	edcd 1a07 	vstr	s3, [sp, #28]
d0050f84:	edcd 1a08 	vstr	s3, [sp, #32]
d0050f88:	f040 80cc 	bne.w	d0051124 <entityRotation.part.0+0x214>
d0050f8c:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050f90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f94:	f040 8116 	bne.w	d00511c4 <entityRotation.part.0+0x2b4>
d0050f98:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050f9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050fa0:	f040 8164 	bne.w	d005126c <entityRotation.part.0+0x35c>
d0050fa4:	ed94 0a07 	vldr	s0, [r4, #28]
d0050fa8:	edd4 0a08 	vldr	s1, [r4, #32]
d0050fac:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0050fb0:	f7ff fa02 	bl	d00503b8 <vec3Normalize>
d0050fb4:	eef0 6a40 	vmov.f32	s13, s0
d0050fb8:	eeb0 7a60 	vmov.f32	s14, s1
d0050fbc:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0050fc0:	eef0 7a41 	vmov.f32	s15, s2
d0050fc4:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0050fc8:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0050fcc:	edc4 6a07 	vstr	s13, [r4, #28]
d0050fd0:	ed84 7a08 	vstr	s14, [r4, #32]
d0050fd4:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0050fd8:	f7ff f9ee 	bl	d00503b8 <vec3Normalize>
d0050fdc:	eef0 1a40 	vmov.f32	s3, s0
d0050fe0:	eeb0 2a60 	vmov.f32	s4, s1
d0050fe4:	ed94 0a07 	vldr	s0, [r4, #28]
d0050fe8:	eef0 2a41 	vmov.f32	s5, s2
d0050fec:	edd4 0a08 	vldr	s1, [r4, #32]
d0050ff0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0050ff4:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0050ff8:	edc4 2a0c 	vstr	s5, [r4, #48]	; 0x30
d0050ffc:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0051000:	f7ff f9c4 	bl	d005038c <vec3Cross>
d0051004:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051008:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005100c:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051010:	f7ff f9d2 	bl	d00503b8 <vec3Normalize>
d0051014:	edd4 1a07 	vldr	s3, [r4, #28]
d0051018:	ed94 2a08 	vldr	s4, [r4, #32]
d005101c:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0051020:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051024:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051028:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005102c:	f7ff f9ae 	bl	d005038c <vec3Cross>
d0051030:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0051034:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0051038:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005103c:	f7ff f9bc 	bl	d00503b8 <vec3Normalize>
d0051040:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0051044:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0051048:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005104c:	b00b      	add	sp, #44	; 0x2c
d005104e:	ecbd 8b04 	vpop	{d8-d9}
d0051052:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0051054:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0051058:	01c6      	lsls	r6, r0, #7
d005105a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005105e:	f040 8119 	bne.w	d0051294 <entityRotation.part.0+0x384>
d0051062:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051066:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005106a:	f040 816e 	bne.w	d005134a <entityRotation.part.0+0x43a>
d005106e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051072:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051076:	d095      	beq.n	d0050fa4 <entityRotation.part.0+0x94>
d0051078:	19ab      	adds	r3, r5, r6
d005107a:	eeb0 3a48 	vmov.f32	s6, s16
d005107e:	ed94 0a07 	vldr	s0, [r4, #28]
d0051082:	331c      	adds	r3, #28
d0051084:	edd4 0a08 	vldr	s1, [r4, #32]
d0051088:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005108c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051090:	ab0a      	add	r3, sp, #40	; 0x28
d0051092:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0051096:	eddd 1a07 	vldr	s3, [sp, #28]
d005109a:	ed9d 2a08 	vldr	s4, [sp, #32]
d005109e:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00510a2:	f7ff f9d9 	bl	d0050458 <rotateAroundAxis>
d00510a6:	eef0 6a40 	vmov.f32	s13, s0
d00510aa:	eeb0 7a60 	vmov.f32	s14, s1
d00510ae:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00510b2:	eef0 7a41 	vmov.f32	s15, s2
d00510b6:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00510ba:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00510be:	eeb0 3a48 	vmov.f32	s6, s16
d00510c2:	eddd 1a07 	vldr	s3, [sp, #28]
d00510c6:	ed9d 2a08 	vldr	s4, [sp, #32]
d00510ca:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00510ce:	edc4 6a07 	vstr	s13, [r4, #28]
d00510d2:	ed84 7a08 	vstr	s14, [r4, #32]
d00510d6:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00510da:	f7ff f9bd 	bl	d0050458 <rotateAroundAxis>
d00510de:	eef0 6a40 	vmov.f32	s13, s0
d00510e2:	eeb0 7a60 	vmov.f32	s14, s1
d00510e6:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00510ea:	eef0 7a41 	vmov.f32	s15, s2
d00510ee:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00510f2:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00510f6:	eeb0 3a48 	vmov.f32	s6, s16
d00510fa:	eddd 1a07 	vldr	s3, [sp, #28]
d00510fe:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051102:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051106:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d005110a:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d005110e:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051112:	f7ff f9a1 	bl	d0050458 <rotateAroundAxis>
d0051116:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d005111a:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005111e:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051122:	e73f      	b.n	d0050fa4 <entityRotation.part.0+0x94>
d0051124:	eeb0 1a42 	vmov.f32	s2, s4
d0051128:	eef0 0a61 	vmov.f32	s1, s3
d005112c:	eeb0 3a40 	vmov.f32	s6, s0
d0051130:	eeb0 0a61 	vmov.f32	s0, s3
d0051134:	eef0 2a61 	vmov.f32	s5, s3
d0051138:	f7ff f98e 	bl	d0050458 <rotateAroundAxis>
d005113c:	eeb0 7a60 	vmov.f32	s14, s1
d0051140:	eef0 6a40 	vmov.f32	s13, s0
d0051144:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051148:	eef0 7a41 	vmov.f32	s15, s2
d005114c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051150:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051154:	eeb0 3a49 	vmov.f32	s6, s18
d0051158:	eddd 1a01 	vldr	s3, [sp, #4]
d005115c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051160:	eddd 2a03 	vldr	s5, [sp, #12]
d0051164:	edc4 6a07 	vstr	s13, [r4, #28]
d0051168:	ed84 7a08 	vstr	s14, [r4, #32]
d005116c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051170:	f7ff f972 	bl	d0050458 <rotateAroundAxis>
d0051174:	eef0 6a40 	vmov.f32	s13, s0
d0051178:	eeb0 7a60 	vmov.f32	s14, s1
d005117c:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051180:	eef0 7a41 	vmov.f32	s15, s2
d0051184:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051188:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d005118c:	eeb0 3a49 	vmov.f32	s6, s18
d0051190:	eddd 1a01 	vldr	s3, [sp, #4]
d0051194:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051198:	eddd 2a03 	vldr	s5, [sp, #12]
d005119c:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00511a0:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00511a4:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00511a8:	f7ff f956 	bl	d0050458 <rotateAroundAxis>
d00511ac:	eef5 8a40 	vcmp.f32	s17, #0.0
d00511b0:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00511b4:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00511b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00511bc:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00511c0:	f43f aeea 	beq.w	d0050f98 <entityRotation.part.0+0x88>
d00511c4:	ed94 0a07 	vldr	s0, [r4, #28]
d00511c8:	eeb0 3a68 	vmov.f32	s6, s17
d00511cc:	edd4 0a08 	vldr	s1, [r4, #32]
d00511d0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00511d4:	eddd 1a04 	vldr	s3, [sp, #16]
d00511d8:	ed9d 2a05 	vldr	s4, [sp, #20]
d00511dc:	eddd 2a06 	vldr	s5, [sp, #24]
d00511e0:	f7ff f93a 	bl	d0050458 <rotateAroundAxis>
d00511e4:	eef0 6a40 	vmov.f32	s13, s0
d00511e8:	eeb0 7a60 	vmov.f32	s14, s1
d00511ec:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00511f0:	eef0 7a41 	vmov.f32	s15, s2
d00511f4:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00511f8:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00511fc:	eeb0 3a68 	vmov.f32	s6, s17
d0051200:	eddd 1a04 	vldr	s3, [sp, #16]
d0051204:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051208:	eddd 2a06 	vldr	s5, [sp, #24]
d005120c:	edc4 6a07 	vstr	s13, [r4, #28]
d0051210:	ed84 7a08 	vstr	s14, [r4, #32]
d0051214:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051218:	f7ff f91e 	bl	d0050458 <rotateAroundAxis>
d005121c:	eef0 6a40 	vmov.f32	s13, s0
d0051220:	eeb0 7a60 	vmov.f32	s14, s1
d0051224:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051228:	eef0 7a41 	vmov.f32	s15, s2
d005122c:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051230:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051234:	eeb0 3a68 	vmov.f32	s6, s17
d0051238:	eddd 1a04 	vldr	s3, [sp, #16]
d005123c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051240:	eddd 2a06 	vldr	s5, [sp, #24]
d0051244:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051248:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d005124c:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051250:	f7ff f902 	bl	d0050458 <rotateAroundAxis>
d0051254:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051258:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d005125c:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051260:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051264:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051268:	f43f ae9c 	beq.w	d0050fa4 <entityRotation.part.0+0x94>
d005126c:	eeb0 3a48 	vmov.f32	s6, s16
d0051270:	eddd 1a07 	vldr	s3, [sp, #28]
d0051274:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051278:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d005127c:	ed94 0a07 	vldr	s0, [r4, #28]
d0051280:	edd4 0a08 	vldr	s1, [r4, #32]
d0051284:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051288:	e70b      	b.n	d00510a2 <entityRotation.part.0+0x192>
d005128a:	bf00      	nop
d005128c:	d00f4c20 	.word	0xd00f4c20
d0051290:	00000000 	.word	0x00000000
d0051294:	f104 0334 	add.w	r3, r4, #52	; 0x34
d0051298:	af01      	add	r7, sp, #4
d005129a:	eeb0 3a40 	vmov.f32	s6, s0
d005129e:	edd4 0a08 	vldr	s1, [r4, #32]
d00512a2:	ed94 0a07 	vldr	s0, [r4, #28]
d00512a6:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00512aa:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00512ae:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d00512b2:	eddd 1a01 	vldr	s3, [sp, #4]
d00512b6:	ed9d 2a02 	vldr	s4, [sp, #8]
d00512ba:	eddd 2a03 	vldr	s5, [sp, #12]
d00512be:	f7ff f8cb 	bl	d0050458 <rotateAroundAxis>
d00512c2:	eef0 6a40 	vmov.f32	s13, s0
d00512c6:	eeb0 7a60 	vmov.f32	s14, s1
d00512ca:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00512ce:	eef0 7a41 	vmov.f32	s15, s2
d00512d2:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00512d6:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00512da:	eeb0 3a49 	vmov.f32	s6, s18
d00512de:	eddd 1a01 	vldr	s3, [sp, #4]
d00512e2:	ed9d 2a02 	vldr	s4, [sp, #8]
d00512e6:	eddd 2a03 	vldr	s5, [sp, #12]
d00512ea:	edc4 6a07 	vstr	s13, [r4, #28]
d00512ee:	ed84 7a08 	vstr	s14, [r4, #32]
d00512f2:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00512f6:	f7ff f8af 	bl	d0050458 <rotateAroundAxis>
d00512fa:	eef0 6a40 	vmov.f32	s13, s0
d00512fe:	eeb0 7a60 	vmov.f32	s14, s1
d0051302:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051306:	eef0 7a41 	vmov.f32	s15, s2
d005130a:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005130e:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051312:	eeb0 3a49 	vmov.f32	s6, s18
d0051316:	eddd 1a01 	vldr	s3, [sp, #4]
d005131a:	ed9d 2a02 	vldr	s4, [sp, #8]
d005131e:	eddd 2a03 	vldr	s5, [sp, #12]
d0051322:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051326:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d005132a:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005132e:	f7ff f893 	bl	d0050458 <rotateAroundAxis>
d0051332:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051336:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d005133a:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005133e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051342:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051346:	f43f ae92 	beq.w	d005106e <entityRotation.part.0+0x15e>
d005134a:	19ab      	adds	r3, r5, r6
d005134c:	af04      	add	r7, sp, #16
d005134e:	ed94 0a07 	vldr	s0, [r4, #28]
d0051352:	eeb0 3a68 	vmov.f32	s6, s17
d0051356:	3328      	adds	r3, #40	; 0x28
d0051358:	edd4 0a08 	vldr	s1, [r4, #32]
d005135c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051360:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051364:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0051368:	eddd 1a04 	vldr	s3, [sp, #16]
d005136c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051370:	eddd 2a06 	vldr	s5, [sp, #24]
d0051374:	f7ff f870 	bl	d0050458 <rotateAroundAxis>
d0051378:	eef0 6a40 	vmov.f32	s13, s0
d005137c:	eeb0 7a60 	vmov.f32	s14, s1
d0051380:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051384:	eef0 7a41 	vmov.f32	s15, s2
d0051388:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005138c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051390:	eeb0 3a68 	vmov.f32	s6, s17
d0051394:	eddd 1a04 	vldr	s3, [sp, #16]
d0051398:	ed9d 2a05 	vldr	s4, [sp, #20]
d005139c:	eddd 2a06 	vldr	s5, [sp, #24]
d00513a0:	edc4 6a07 	vstr	s13, [r4, #28]
d00513a4:	ed84 7a08 	vstr	s14, [r4, #32]
d00513a8:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00513ac:	f7ff f854 	bl	d0050458 <rotateAroundAxis>
d00513b0:	eef0 6a40 	vmov.f32	s13, s0
d00513b4:	eeb0 7a60 	vmov.f32	s14, s1
d00513b8:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00513bc:	eef0 7a41 	vmov.f32	s15, s2
d00513c0:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00513c4:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00513c8:	eeb0 3a68 	vmov.f32	s6, s17
d00513cc:	eddd 1a04 	vldr	s3, [sp, #16]
d00513d0:	ed9d 2a05 	vldr	s4, [sp, #20]
d00513d4:	eddd 2a06 	vldr	s5, [sp, #24]
d00513d8:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00513dc:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00513e0:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00513e4:	f7ff f838 	bl	d0050458 <rotateAroundAxis>
d00513e8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00513ec:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00513f0:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00513f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00513f8:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00513fc:	f43f add2 	beq.w	d0050fa4 <entityRotation.part.0+0x94>
d0051400:	e63a      	b.n	d0051078 <entityRotation.part.0+0x168>
d0051402:	bf00      	nop

d0051404 <entityIdValid>:
d0051404:	28ff      	cmp	r0, #255	; 0xff
d0051406:	d80a      	bhi.n	d005141e <entityIdValid+0x1a>
d0051408:	4b06      	ldr	r3, [pc, #24]	; (d0051424 <entityIdValid+0x20>)
d005140a:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d005140e:	f893 0040 	ldrb.w	r0, [r3, #64]	; 0x40
d0051412:	b128      	cbz	r0, d0051420 <entityIdValid+0x1c>
d0051414:	6998      	ldr	r0, [r3, #24]
d0051416:	3800      	subs	r0, #0
d0051418:	bf18      	it	ne
d005141a:	2001      	movne	r0, #1
d005141c:	4770      	bx	lr
d005141e:	2000      	movs	r0, #0
d0051420:	4770      	bx	lr
d0051422:	bf00      	nop
d0051424:	d00f4c20 	.word	0xd00f4c20

d0051428 <freeMesh>:
d0051428:	b1b8      	cbz	r0, d005145a <freeMesh+0x32>
d005142a:	b510      	push	{r4, lr}
d005142c:	4604      	mov	r4, r0
d005142e:	6800      	ldr	r0, [r0, #0]
d0051430:	b108      	cbz	r0, d0051436 <freeMesh+0xe>
d0051432:	f004 f931 	bl	d0055698 <free>
d0051436:	6920      	ldr	r0, [r4, #16]
d0051438:	b108      	cbz	r0, d005143e <freeMesh+0x16>
d005143a:	f004 f92d 	bl	d0055698 <free>
d005143e:	68a0      	ldr	r0, [r4, #8]
d0051440:	b108      	cbz	r0, d0051446 <freeMesh+0x1e>
d0051442:	f004 f929 	bl	d0055698 <free>
d0051446:	2300      	movs	r3, #0
d0051448:	2200      	movs	r2, #0
d005144a:	6023      	str	r3, [r4, #0]
d005144c:	6123      	str	r3, [r4, #16]
d005144e:	60a3      	str	r3, [r4, #8]
d0051450:	6063      	str	r3, [r4, #4]
d0051452:	6163      	str	r3, [r4, #20]
d0051454:	60e3      	str	r3, [r4, #12]
d0051456:	61a2      	str	r2, [r4, #24]
d0051458:	bd10      	pop	{r4, pc}
d005145a:	4770      	bx	lr

d005145c <meshComputeBoundsRadius>:
d005145c:	b1f0      	cbz	r0, d005149c <meshComputeBoundsRadius+0x40>
d005145e:	6803      	ldr	r3, [r0, #0]
d0051460:	b1e3      	cbz	r3, d005149c <meshComputeBoundsRadius+0x40>
d0051462:	6842      	ldr	r2, [r0, #4]
d0051464:	2a00      	cmp	r2, #0
d0051466:	dd19      	ble.n	d005149c <meshComputeBoundsRadius+0x40>
d0051468:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d005146c:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d00514a4 <meshComputeBoundsRadius+0x48>
d0051470:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0051474:	edd3 7a01 	vldr	s15, [r3, #4]
d0051478:	330c      	adds	r3, #12
d005147a:	ed53 6a03 	vldr	s13, [r3, #-12]
d005147e:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0051482:	ed13 7a01 	vldr	s14, [r3, #-4]
d0051486:	429a      	cmp	r2, r3
d0051488:	eee6 7aa6 	vfma.f32	s15, s13, s13
d005148c:	eee7 7a07 	vfma.f32	s15, s14, s14
d0051490:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0051494:	d1ee      	bne.n	d0051474 <meshComputeBoundsRadius+0x18>
d0051496:	eeb1 0ac6 	vsqrt.f32	s0, s12
d005149a:	4770      	bx	lr
d005149c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00514a4 <meshComputeBoundsRadius+0x48>
d00514a0:	4770      	bx	lr
d00514a2:	bf00      	nop
d00514a4:	00000000 	.word	0x00000000

d00514a8 <entityWorldSpawn>:
d00514a8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00514aa:	4d20      	ldr	r5, [pc, #128]	; (d005152c <entityWorldSpawn+0x84>)
d00514ac:	b085      	sub	sp, #20
d00514ae:	2300      	movs	r3, #0
d00514b0:	462a      	mov	r2, r5
d00514b2:	ed8d 0a01 	vstr	s0, [sp, #4]
d00514b6:	edcd 0a02 	vstr	s1, [sp, #8]
d00514ba:	ed8d 1a03 	vstr	s2, [sp, #12]
d00514be:	e003      	b.n	d00514c8 <entityWorldSpawn+0x20>
d00514c0:	3301      	adds	r3, #1
d00514c2:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00514c6:	d02c      	beq.n	d0051522 <entityWorldSpawn+0x7a>
d00514c8:	f892 4040 	ldrb.w	r4, [r2, #64]	; 0x40
d00514cc:	3280      	adds	r2, #128	; 0x80
d00514ce:	2c00      	cmp	r4, #0
d00514d0:	d1f6      	bne.n	d00514c0 <entityWorldSpawn+0x18>
d00514d2:	eb05 15c3 	add.w	r5, r5, r3, lsl #7
d00514d6:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00514da:	af01      	add	r7, sp, #4
d00514dc:	2600      	movs	r6, #0
d00514de:	61a8      	str	r0, [r5, #24]
d00514e0:	f105 0e0c 	add.w	lr, r5, #12
d00514e4:	62aa      	str	r2, [r5, #40]	; 0x28
d00514e6:	ea4f 1cc3 	mov.w	ip, r3, lsl #7
d00514ea:	63aa      	str	r2, [r5, #56]	; 0x38
d00514ec:	626a      	str	r2, [r5, #36]	; 0x24
d00514ee:	62ee      	str	r6, [r5, #44]	; 0x2c
d00514f0:	632e      	str	r6, [r5, #48]	; 0x30
d00514f2:	636e      	str	r6, [r5, #52]	; 0x34
d00514f4:	63ee      	str	r6, [r5, #60]	; 0x3c
d00514f6:	61ee      	str	r6, [r5, #28]
d00514f8:	622e      	str	r6, [r5, #32]
d00514fa:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d00514fe:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0051502:	e88e 0007 	stmia.w	lr, {r0, r1, r2}
d0051506:	4a0a      	ldr	r2, [pc, #40]	; (d0051530 <entityWorldSpawn+0x88>)
d0051508:	f240 1101 	movw	r1, #257	; 0x101
d005150c:	4618      	mov	r0, r3
d005150e:	f82c 1002 	strh.w	r1, [ip, r2]
d0051512:	f885 4042 	strb.w	r4, [r5, #66]	; 0x42
d0051516:	64ae      	str	r6, [r5, #72]	; 0x48
d0051518:	64ee      	str	r6, [r5, #76]	; 0x4c
d005151a:	652e      	str	r6, [r5, #80]	; 0x50
d005151c:	646e      	str	r6, [r5, #68]	; 0x44
d005151e:	b005      	add	sp, #20
d0051520:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0051522:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0051526:	4618      	mov	r0, r3
d0051528:	b005      	add	sp, #20
d005152a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005152c:	d00f4c20 	.word	0xd00f4c20
d0051530:	d00f4c60 	.word	0xd00f4c60

d0051534 <entitySetPosition>:
d0051534:	b410      	push	{r4}
d0051536:	28ff      	cmp	r0, #255	; 0xff
d0051538:	b085      	sub	sp, #20
d005153a:	ed8d 0a01 	vstr	s0, [sp, #4]
d005153e:	edcd 0a02 	vstr	s1, [sp, #8]
d0051542:	ed8d 1a03 	vstr	s2, [sp, #12]
d0051546:	d812      	bhi.n	d005156e <entitySetPosition+0x3a>
d0051548:	4b0b      	ldr	r3, [pc, #44]	; (d0051578 <entitySetPosition+0x44>)
d005154a:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d005154e:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0051552:	b162      	cbz	r2, d005156e <entitySetPosition+0x3a>
d0051554:	699a      	ldr	r2, [r3, #24]
d0051556:	b152      	cbz	r2, d005156e <entitySetPosition+0x3a>
d0051558:	f103 040c 	add.w	r4, r3, #12
d005155c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051560:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0051564:	aa04      	add	r2, sp, #16
d0051566:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d005156a:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d005156e:	b005      	add	sp, #20
d0051570:	f85d 4b04 	ldr.w	r4, [sp], #4
d0051574:	4770      	bx	lr
d0051576:	bf00      	nop
d0051578:	d00f4c20 	.word	0xd00f4c20

d005157c <entityGetPosition>:
d005157c:	28ff      	cmp	r0, #255	; 0xff
d005157e:	b088      	sub	sp, #32
d0051580:	d80c      	bhi.n	d005159c <entityGetPosition+0x20>
d0051582:	4b0c      	ldr	r3, [pc, #48]	; (d00515b4 <entityGetPosition+0x38>)
d0051584:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0051588:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d005158c:	b133      	cbz	r3, d005159c <entityGetPosition+0x20>
d005158e:	6983      	ldr	r3, [r0, #24]
d0051590:	b123      	cbz	r3, d005159c <entityGetPosition+0x20>
d0051592:	ab08      	add	r3, sp, #32
d0051594:	c807      	ldmia	r0, {r0, r1, r2}
d0051596:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005159a:	e003      	b.n	d00515a4 <entityGetPosition+0x28>
d005159c:	2300      	movs	r3, #0
d005159e:	9305      	str	r3, [sp, #20]
d00515a0:	9306      	str	r3, [sp, #24]
d00515a2:	9307      	str	r3, [sp, #28]
d00515a4:	ed9d 0a05 	vldr	s0, [sp, #20]
d00515a8:	eddd 0a06 	vldr	s1, [sp, #24]
d00515ac:	ed9d 1a07 	vldr	s2, [sp, #28]
d00515b0:	b008      	add	sp, #32
d00515b2:	4770      	bx	lr
d00515b4:	d00f4c20 	.word	0xd00f4c20

d00515b8 <entityGetForward>:
d00515b8:	28ff      	cmp	r0, #255	; 0xff
d00515ba:	b088      	sub	sp, #32
d00515bc:	d80d      	bhi.n	d00515da <entityGetForward+0x22>
d00515be:	4b0e      	ldr	r3, [pc, #56]	; (d00515f8 <entityGetForward+0x40>)
d00515c0:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d00515c4:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d00515c8:	b13b      	cbz	r3, d00515da <entityGetForward+0x22>
d00515ca:	6983      	ldr	r3, [r0, #24]
d00515cc:	b12b      	cbz	r3, d00515da <entityGetForward+0x22>
d00515ce:	301c      	adds	r0, #28
d00515d0:	ab08      	add	r3, sp, #32
d00515d2:	c807      	ldmia	r0, {r0, r1, r2}
d00515d4:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00515d8:	e005      	b.n	d00515e6 <entityGetForward+0x2e>
d00515da:	2300      	movs	r3, #0
d00515dc:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00515e0:	9305      	str	r3, [sp, #20]
d00515e2:	9207      	str	r2, [sp, #28]
d00515e4:	9306      	str	r3, [sp, #24]
d00515e6:	ed9d 0a05 	vldr	s0, [sp, #20]
d00515ea:	eddd 0a06 	vldr	s1, [sp, #24]
d00515ee:	ed9d 1a07 	vldr	s2, [sp, #28]
d00515f2:	b008      	add	sp, #32
d00515f4:	4770      	bx	lr
d00515f6:	bf00      	nop
d00515f8:	d00f4c20 	.word	0xd00f4c20

d00515fc <entityMoveForward>:
d00515fc:	28ff      	cmp	r0, #255	; 0xff
d00515fe:	d82f      	bhi.n	d0051660 <entityMoveForward+0x64>
d0051600:	b510      	push	{r4, lr}
d0051602:	4c18      	ldr	r4, [pc, #96]	; (d0051664 <entityMoveForward+0x68>)
d0051604:	b084      	sub	sp, #16
d0051606:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d005160a:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d005160e:	b32b      	cbz	r3, d005165c <entityMoveForward+0x60>
d0051610:	69a3      	ldr	r3, [r4, #24]
d0051612:	b31b      	cbz	r3, d005165c <entityMoveForward+0x60>
d0051614:	f104 030c 	add.w	r3, r4, #12
d0051618:	eef0 1a40 	vmov.f32	s3, s0
d005161c:	edd4 0a08 	vldr	s1, [r4, #32]
d0051620:	ed94 0a07 	vldr	s0, [r4, #28]
d0051624:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051628:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d005162c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0051630:	f7fe fe96 	bl	d0050360 <vec3Scale>
d0051634:	eef0 1a40 	vmov.f32	s3, s0
d0051638:	eeb0 2a60 	vmov.f32	s4, s1
d005163c:	ed94 0a00 	vldr	s0, [r4]
d0051640:	eef0 2a41 	vmov.f32	s5, s2
d0051644:	edd4 0a01 	vldr	s1, [r4, #4]
d0051648:	ed94 1a02 	vldr	s2, [r4, #8]
d005164c:	f7fe fe7e 	bl	d005034c <vec3Add>
d0051650:	ed84 0a00 	vstr	s0, [r4]
d0051654:	edc4 0a01 	vstr	s1, [r4, #4]
d0051658:	ed84 1a02 	vstr	s2, [r4, #8]
d005165c:	b004      	add	sp, #16
d005165e:	bd10      	pop	{r4, pc}
d0051660:	4770      	bx	lr
d0051662:	bf00      	nop
d0051664:	d00f4c20 	.word	0xd00f4c20

d0051668 <meshColour>:
d0051668:	b150      	cbz	r0, d0051680 <meshColour+0x18>
d005166a:	6903      	ldr	r3, [r0, #16]
d005166c:	b143      	cbz	r3, d0051680 <meshColour+0x18>
d005166e:	6942      	ldr	r2, [r0, #20]
d0051670:	2a00      	cmp	r2, #0
d0051672:	dd05      	ble.n	d0051680 <meshColour+0x18>
d0051674:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d0051678:	7319      	strb	r1, [r3, #12]
d005167a:	3310      	adds	r3, #16
d005167c:	429a      	cmp	r2, r3
d005167e:	d1fb      	bne.n	d0051678 <meshColour+0x10>
d0051680:	4770      	bx	lr
d0051682:	bf00      	nop

d0051684 <entityTurn>:
d0051684:	28ff      	cmp	r0, #255	; 0xff
d0051686:	f200 808b 	bhi.w	d00517a0 <entityTurn+0x11c>
d005168a:	b570      	push	{r4, r5, r6, lr}
d005168c:	4ccd      	ldr	r4, [pc, #820]	; (d00519c4 <entityTurn+0x340>)
d005168e:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0051692:	ed2d 8b04 	vpush	{d8-d9}
d0051696:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d005169a:	b08a      	sub	sp, #40	; 0x28
d005169c:	2b00      	cmp	r3, #0
d005169e:	d07b      	beq.n	d0051798 <entityTurn+0x114>
d00516a0:	69a3      	ldr	r3, [r4, #24]
d00516a2:	2b00      	cmp	r3, #0
d00516a4:	d078      	beq.n	d0051798 <entityTurn+0x114>
d00516a6:	eef0 8a40 	vmov.f32	s17, s0
d00516aa:	eeb0 8a60 	vmov.f32	s16, s1
d00516ae:	eeb0 9a41 	vmov.f32	s18, s2
d00516b2:	2900      	cmp	r1, #0
d00516b4:	d075      	beq.n	d00517a2 <entityTurn+0x11e>
d00516b6:	eef5 8a40 	vcmp.f32	s17, #0.0
d00516ba:	2300      	movs	r3, #0
d00516bc:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00516c0:	9301      	str	r3, [sp, #4]
d00516c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00516c6:	9202      	str	r2, [sp, #8]
d00516c8:	9204      	str	r2, [sp, #16]
d00516ca:	9209      	str	r2, [sp, #36]	; 0x24
d00516cc:	9303      	str	r3, [sp, #12]
d00516ce:	9305      	str	r3, [sp, #20]
d00516d0:	9306      	str	r3, [sp, #24]
d00516d2:	9307      	str	r3, [sp, #28]
d00516d4:	9308      	str	r3, [sp, #32]
d00516d6:	d17e      	bne.n	d00517d6 <entityTurn+0x152>
d00516d8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00516dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00516e0:	f040 80cd 	bne.w	d005187e <entityTurn+0x1fa>
d00516e4:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00516e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00516ec:	f040 811b 	bne.w	d0051926 <entityTurn+0x2a2>
d00516f0:	ed94 0a07 	vldr	s0, [r4, #28]
d00516f4:	edd4 0a08 	vldr	s1, [r4, #32]
d00516f8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00516fc:	f7fe fe5c 	bl	d00503b8 <vec3Normalize>
d0051700:	eef0 6a40 	vmov.f32	s13, s0
d0051704:	eeb0 7a60 	vmov.f32	s14, s1
d0051708:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005170c:	eef0 7a41 	vmov.f32	s15, s2
d0051710:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051714:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051718:	edc4 6a07 	vstr	s13, [r4, #28]
d005171c:	ed84 7a08 	vstr	s14, [r4, #32]
d0051720:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051724:	f7fe fe48 	bl	d00503b8 <vec3Normalize>
d0051728:	eef0 1a40 	vmov.f32	s3, s0
d005172c:	eeb0 2a60 	vmov.f32	s4, s1
d0051730:	ed94 0a07 	vldr	s0, [r4, #28]
d0051734:	eef0 2a41 	vmov.f32	s5, s2
d0051738:	edd4 0a08 	vldr	s1, [r4, #32]
d005173c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051740:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0051744:	edc4 2a0c 	vstr	s5, [r4, #48]	; 0x30
d0051748:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d005174c:	f7fe fe1e 	bl	d005038c <vec3Cross>
d0051750:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051754:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051758:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005175c:	f7fe fe2c 	bl	d00503b8 <vec3Normalize>
d0051760:	edd4 1a07 	vldr	s3, [r4, #28]
d0051764:	ed94 2a08 	vldr	s4, [r4, #32]
d0051768:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d005176c:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051770:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051774:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051778:	f7fe fe08 	bl	d005038c <vec3Cross>
d005177c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0051780:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0051784:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051788:	f7fe fe16 	bl	d00503b8 <vec3Normalize>
d005178c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0051790:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0051794:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051798:	b00a      	add	sp, #40	; 0x28
d005179a:	ecbd 8b04 	vpop	{d8-d9}
d005179e:	bd70      	pop	{r4, r5, r6, pc}
d00517a0:	4770      	bx	lr
d00517a2:	f104 0334 	add.w	r3, r4, #52	; 0x34
d00517a6:	ae01      	add	r6, sp, #4
d00517a8:	eef5 8a40 	vcmp.f32	s17, #0.0
d00517ac:	f104 0528 	add.w	r5, r4, #40	; 0x28
d00517b0:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00517b4:	f104 031c 	add.w	r3, r4, #28
d00517b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00517bc:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d00517c0:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d00517c4:	ae04      	add	r6, sp, #16
d00517c6:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d00517ca:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00517ce:	ab0a      	add	r3, sp, #40	; 0x28
d00517d0:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00517d4:	d080      	beq.n	d00516d8 <entityTurn+0x54>
d00517d6:	ed94 0a07 	vldr	s0, [r4, #28]
d00517da:	eeb0 3a68 	vmov.f32	s6, s17
d00517de:	edd4 0a08 	vldr	s1, [r4, #32]
d00517e2:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00517e6:	eddd 1a01 	vldr	s3, [sp, #4]
d00517ea:	ed9d 2a02 	vldr	s4, [sp, #8]
d00517ee:	eddd 2a03 	vldr	s5, [sp, #12]
d00517f2:	f7fe fe31 	bl	d0050458 <rotateAroundAxis>
d00517f6:	eef0 6a40 	vmov.f32	s13, s0
d00517fa:	eeb0 7a60 	vmov.f32	s14, s1
d00517fe:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051802:	eef0 7a41 	vmov.f32	s15, s2
d0051806:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005180a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005180e:	eeb0 3a68 	vmov.f32	s6, s17
d0051812:	eddd 1a01 	vldr	s3, [sp, #4]
d0051816:	ed9d 2a02 	vldr	s4, [sp, #8]
d005181a:	eddd 2a03 	vldr	s5, [sp, #12]
d005181e:	edc4 6a07 	vstr	s13, [r4, #28]
d0051822:	ed84 7a08 	vstr	s14, [r4, #32]
d0051826:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005182a:	f7fe fe15 	bl	d0050458 <rotateAroundAxis>
d005182e:	eef0 6a40 	vmov.f32	s13, s0
d0051832:	eeb0 7a60 	vmov.f32	s14, s1
d0051836:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d005183a:	eef0 7a41 	vmov.f32	s15, s2
d005183e:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051842:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051846:	eeb0 3a68 	vmov.f32	s6, s17
d005184a:	eddd 1a01 	vldr	s3, [sp, #4]
d005184e:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051852:	eddd 2a03 	vldr	s5, [sp, #12]
d0051856:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d005185a:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d005185e:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051862:	f7fe fdf9 	bl	d0050458 <rotateAroundAxis>
d0051866:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005186a:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d005186e:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051872:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051876:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005187a:	f43f af33 	beq.w	d00516e4 <entityTurn+0x60>
d005187e:	ed94 0a07 	vldr	s0, [r4, #28]
d0051882:	eeb0 3a48 	vmov.f32	s6, s16
d0051886:	edd4 0a08 	vldr	s1, [r4, #32]
d005188a:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005188e:	eddd 1a04 	vldr	s3, [sp, #16]
d0051892:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051896:	eddd 2a06 	vldr	s5, [sp, #24]
d005189a:	f7fe fddd 	bl	d0050458 <rotateAroundAxis>
d005189e:	eef0 6a40 	vmov.f32	s13, s0
d00518a2:	eeb0 7a60 	vmov.f32	s14, s1
d00518a6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00518aa:	eef0 7a41 	vmov.f32	s15, s2
d00518ae:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00518b2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00518b6:	eeb0 3a48 	vmov.f32	s6, s16
d00518ba:	eddd 1a04 	vldr	s3, [sp, #16]
d00518be:	ed9d 2a05 	vldr	s4, [sp, #20]
d00518c2:	eddd 2a06 	vldr	s5, [sp, #24]
d00518c6:	edc4 6a07 	vstr	s13, [r4, #28]
d00518ca:	ed84 7a08 	vstr	s14, [r4, #32]
d00518ce:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00518d2:	f7fe fdc1 	bl	d0050458 <rotateAroundAxis>
d00518d6:	eef0 6a40 	vmov.f32	s13, s0
d00518da:	eeb0 7a60 	vmov.f32	s14, s1
d00518de:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00518e2:	eef0 7a41 	vmov.f32	s15, s2
d00518e6:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00518ea:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00518ee:	eeb0 3a48 	vmov.f32	s6, s16
d00518f2:	eddd 1a04 	vldr	s3, [sp, #16]
d00518f6:	ed9d 2a05 	vldr	s4, [sp, #20]
d00518fa:	eddd 2a06 	vldr	s5, [sp, #24]
d00518fe:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051902:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051906:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005190a:	f7fe fda5 	bl	d0050458 <rotateAroundAxis>
d005190e:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0051912:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051916:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005191a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005191e:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051922:	f43f aee5 	beq.w	d00516f0 <entityTurn+0x6c>
d0051926:	ed94 0a07 	vldr	s0, [r4, #28]
d005192a:	eeb0 3a49 	vmov.f32	s6, s18
d005192e:	edd4 0a08 	vldr	s1, [r4, #32]
d0051932:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051936:	eddd 1a07 	vldr	s3, [sp, #28]
d005193a:	ed9d 2a08 	vldr	s4, [sp, #32]
d005193e:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051942:	f7fe fd89 	bl	d0050458 <rotateAroundAxis>
d0051946:	eef0 6a40 	vmov.f32	s13, s0
d005194a:	eeb0 7a60 	vmov.f32	s14, s1
d005194e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051952:	eef0 7a41 	vmov.f32	s15, s2
d0051956:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005195a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005195e:	eeb0 3a49 	vmov.f32	s6, s18
d0051962:	eddd 1a07 	vldr	s3, [sp, #28]
d0051966:	ed9d 2a08 	vldr	s4, [sp, #32]
d005196a:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d005196e:	edc4 6a07 	vstr	s13, [r4, #28]
d0051972:	ed84 7a08 	vstr	s14, [r4, #32]
d0051976:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005197a:	f7fe fd6d 	bl	d0050458 <rotateAroundAxis>
d005197e:	eef0 6a40 	vmov.f32	s13, s0
d0051982:	eeb0 7a60 	vmov.f32	s14, s1
d0051986:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d005198a:	eef0 7a41 	vmov.f32	s15, s2
d005198e:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051992:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051996:	eeb0 3a49 	vmov.f32	s6, s18
d005199a:	eddd 1a07 	vldr	s3, [sp, #28]
d005199e:	ed9d 2a08 	vldr	s4, [sp, #32]
d00519a2:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00519a6:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00519aa:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00519ae:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00519b2:	f7fe fd51 	bl	d0050458 <rotateAroundAxis>
d00519b6:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00519ba:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00519be:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00519c2:	e695      	b.n	d00516f0 <entityTurn+0x6c>
d00519c4:	d00f4c20 	.word	0xd00f4c20

d00519c8 <entityRotation>:
d00519c8:	28ff      	cmp	r0, #255	; 0xff
d00519ca:	d809      	bhi.n	d00519e0 <entityRotation+0x18>
d00519cc:	4a05      	ldr	r2, [pc, #20]	; (d00519e4 <entityRotation+0x1c>)
d00519ce:	eb02 13c0 	add.w	r3, r2, r0, lsl #7
d00519d2:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d00519d6:	b11a      	cbz	r2, d00519e0 <entityRotation+0x18>
d00519d8:	699b      	ldr	r3, [r3, #24]
d00519da:	b10b      	cbz	r3, d00519e0 <entityRotation+0x18>
d00519dc:	f7ff ba98 	b.w	d0050f10 <entityRotation.part.0>
d00519e0:	4770      	bx	lr
d00519e2:	bf00      	nop
d00519e4:	d00f4c20 	.word	0xd00f4c20

d00519e8 <createBox>:
d00519e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00519ec:	ed2d 8b04 	vpush	{d8-d9}
d00519f0:	b0e1      	sub	sp, #388	; 0x184
d00519f2:	f04f 0824 	mov.w	r8, #36	; 0x24
d00519f6:	4606      	mov	r6, r0
d00519f8:	2100      	movs	r1, #0
d00519fa:	f20d 1547 	addw	r5, sp, #327	; 0x147
d00519fe:	4642      	mov	r2, r8
d0051a00:	eeb0 8a41 	vmov.f32	s16, s2
d0051a04:	9601      	str	r6, [sp, #4]
d0051a06:	f025 051f 	bic.w	r5, r5, #31
d0051a0a:	eeb0 9a40 	vmov.f32	s18, s0
d0051a0e:	eef0 8a60 	vmov.f32	s17, s1
d0051a12:	f04f 090c 	mov.w	r9, #12
d0051a16:	f105 001c 	add.w	r0, r5, #28
d0051a1a:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d0051a1e:	f003 fe5f 	bl	d00556e0 <memset>
d0051a22:	2308      	movs	r3, #8
d0051a24:	2060      	movs	r0, #96	; 0x60
d0051a26:	f04f 0b04 	mov.w	fp, #4
d0051a2a:	606b      	str	r3, [r5, #4]
d0051a2c:	f003 fe2c 	bl	d0055688 <malloc>
d0051a30:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d0051a34:	4604      	mov	r4, r0
d0051a36:	2060      	movs	r0, #96	; 0x60
d0051a38:	f8c5 900c 	str.w	r9, [r5, #12]
d0051a3c:	602c      	str	r4, [r5, #0]
d0051a3e:	2604      	movs	r6, #4
d0051a40:	ee29 0a01 	vmul.f32	s0, s18, s2
d0051a44:	ee68 0a81 	vmul.f32	s1, s17, s2
d0051a48:	ee28 1a01 	vmul.f32	s2, s16, s2
d0051a4c:	eef1 6a40 	vneg.f32	s13, s0
d0051a50:	ed84 0a03 	vstr	s0, [r4, #12]
d0051a54:	eeb1 7a60 	vneg.f32	s14, s1
d0051a58:	ed84 0a06 	vstr	s0, [r4, #24]
d0051a5c:	eef1 7a41 	vneg.f32	s15, s2
d0051a60:	ed84 1a08 	vstr	s2, [r4, #32]
d0051a64:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0051a68:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0051a6c:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d0051a70:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d0051a74:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0051a78:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d0051a7c:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d0051a80:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d0051a84:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d0051a88:	edc4 6a00 	vstr	s13, [r4]
d0051a8c:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d0051a90:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d0051a94:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d0051a98:	ed84 7a01 	vstr	s14, [r4, #4]
d0051a9c:	ed84 7a04 	vstr	s14, [r4, #16]
d0051aa0:	ed84 7a07 	vstr	s14, [r4, #28]
d0051aa4:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d0051aa8:	edc4 7a02 	vstr	s15, [r4, #8]
d0051aac:	edc4 7a05 	vstr	s15, [r4, #20]
d0051ab0:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0051ab4:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d0051ab8:	f003 fde6 	bl	d0055688 <malloc>
d0051abc:	4607      	mov	r7, r0
d0051abe:	2260      	movs	r2, #96	; 0x60
d0051ac0:	a802      	add	r0, sp, #8
d0051ac2:	4987      	ldr	r1, [pc, #540]	; (d0051ce0 <createBox+0x2f8>)
d0051ac4:	60af      	str	r7, [r5, #8]
d0051ac6:	f003 fdfd 	bl	d00556c4 <memcpy>
d0051aca:	a902      	add	r1, sp, #8
d0051acc:	2260      	movs	r2, #96	; 0x60
d0051ace:	4638      	mov	r0, r7
d0051ad0:	f003 fdf8 	bl	d00556c4 <memcpy>
d0051ad4:	4650      	mov	r0, sl
d0051ad6:	f8c5 9014 	str.w	r9, [r5, #20]
d0051ada:	f003 fdd5 	bl	d0055688 <malloc>
d0051ade:	4607      	mov	r7, r0
d0051ae0:	4652      	mov	r2, sl
d0051ae2:	a81a      	add	r0, sp, #104	; 0x68
d0051ae4:	2100      	movs	r1, #0
d0051ae6:	612f      	str	r7, [r5, #16]
d0051ae8:	f003 fdfa 	bl	d00556e0 <memset>
d0051aec:	f04f 0c02 	mov.w	ip, #2
d0051af0:	4638      	mov	r0, r7
d0051af2:	2705      	movs	r7, #5
d0051af4:	4652      	mov	r2, sl
d0051af6:	f04f 0903 	mov.w	r9, #3
d0051afa:	f04f 0a06 	mov.w	sl, #6
d0051afe:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d0051b02:	f04f 0e01 	mov.w	lr, #1
d0051b06:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d0051b0a:	f04f 0804 	mov.w	r8, #4
d0051b0e:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d0051b12:	2307      	movs	r3, #7
d0051b14:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d0051b18:	2122      	movs	r1, #34	; 0x22
d0051b1a:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d0051b1e:	f04f 0c06 	mov.w	ip, #6
d0051b22:	9724      	str	r7, [sp, #144]	; 0x90
d0051b24:	972c      	str	r7, [sp, #176]	; 0xb0
d0051b26:	972f      	str	r7, [sp, #188]	; 0xbc
d0051b28:	2707      	movs	r7, #7
d0051b2a:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d0051b2e:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d0051b32:	f04f 0905 	mov.w	r9, #5
d0051b36:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d0051b3a:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d0051b3e:	f04f 0a01 	mov.w	sl, #1
d0051b42:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d0051b46:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d0051b4a:	f04f 0801 	mov.w	r8, #1
d0051b4e:	933c      	str	r3, [sp, #240]	; 0xf0
d0051b50:	2323      	movs	r3, #35	; 0x23
d0051b52:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d0051b56:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d0051b5a:	f04f 0e25 	mov.w	lr, #37	; 0x25
d0051b5e:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d0051b62:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d0051b66:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d0051b6a:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d0051b6e:	a91a      	add	r1, sp, #104	; 0x68
d0051b70:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d0051b74:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d0051b78:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d0051b7c:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d0051b80:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d0051b84:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d0051b88:	f04f 0b06 	mov.w	fp, #6
d0051b8c:	2602      	movs	r6, #2
d0051b8e:	2706      	movs	r7, #6
d0051b90:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d0051b94:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d0051b98:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d0051b9c:	f04f 0802 	mov.w	r8, #2
d0051ba0:	f04f 0907 	mov.w	r9, #7
d0051ba4:	f04f 0a03 	mov.w	sl, #3
d0051ba8:	f04f 0b07 	mov.w	fp, #7
d0051bac:	2603      	movs	r6, #3
d0051bae:	2704      	movs	r7, #4
d0051bb0:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d0051bb4:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d0051bb8:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d0051bbc:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d0051bc0:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d0051bc4:	f003 fd7e 	bl	d00556c4 <memcpy>
d0051bc8:	edd4 7a01 	vldr	s15, [r4, #4]
d0051bcc:	ed94 6a04 	vldr	s12, [r4, #16]
d0051bd0:	4628      	mov	r0, r5
d0051bd2:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d0051bd6:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0051bda:	ed94 7a07 	vldr	s14, [r4, #28]
d0051bde:	ee66 7a06 	vmul.f32	s15, s12, s12
d0051be2:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d0051be6:	ee25 4aa5 	vmul.f32	s8, s11, s11
d0051bea:	ed94 3a00 	vldr	s6, [r4]
d0051bee:	ee27 7a07 	vmul.f32	s14, s14, s14
d0051bf2:	edd4 3a03 	vldr	s7, [r4, #12]
d0051bf6:	ee66 4a06 	vmul.f32	s9, s12, s12
d0051bfa:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d0051bfe:	eee3 6a03 	vfma.f32	s13, s6, s6
d0051c02:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d0051c06:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0051c0a:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d0051c0e:	ee25 5a05 	vmul.f32	s10, s10, s10
d0051c12:	edd4 2a06 	vldr	s5, [r4, #24]
d0051c16:	ee65 5aa5 	vmul.f32	s11, s11, s11
d0051c1a:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d0051c1e:	ee26 6a06 	vmul.f32	s12, s12, s12
d0051c22:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d0051c26:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0051c2a:	eea3 4a03 	vfma.f32	s8, s6, s6
d0051c2e:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0051c32:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d0051c36:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0051c3a:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d0051c3e:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0051c42:	eee3 5a03 	vfma.f32	s11, s6, s6
d0051c46:	ed94 3a02 	vldr	s6, [r4, #8]
d0051c4a:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0051c4e:	edd4 3a05 	vldr	s7, [r4, #20]
d0051c52:	eee3 6a03 	vfma.f32	s13, s6, s6
d0051c56:	edd4 2a08 	vldr	s5, [r4, #32]
d0051c5a:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d0051c5e:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0051c62:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d0051c66:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0051c6a:	eea3 4a03 	vfma.f32	s8, s6, s6
d0051c6e:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d0051c72:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0051c76:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d0051c7a:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d0051c7e:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0051c82:	eee3 5a03 	vfma.f32	s11, s6, s6
d0051c86:	ed9f 3a17 	vldr	s6, [pc, #92]	; d0051ce4 <createBox+0x2fc>
d0051c8a:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0051c8e:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d0051c92:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d0051c96:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d0051c9a:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d0051c9e:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d0051ca2:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0051ca6:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0051caa:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d0051cae:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0051cb2:	ed85 7a06 	vstr	s14, [r5, #24]
d0051cb6:	f7fc fe73 	bl	d004e9a0 <meshSetDefaultMaterial>
d0051cba:	9e01      	ldr	r6, [sp, #4]
d0051cbc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051cbe:	4634      	mov	r4, r6
d0051cc0:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051cc2:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051cc4:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051cc6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051cc8:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051cca:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051cce:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0051cd2:	4630      	mov	r0, r6
d0051cd4:	b061      	add	sp, #388	; 0x184
d0051cd6:	ecbd 8b04 	vpop	{d8-d9}
d0051cda:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051cde:	bf00      	nop
d0051ce0:	d0057a80 	.word	0xd0057a80
d0051ce4:	00000000 	.word	0x00000000

d0051ce8 <createTorus>:
d0051ce8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051cec:	ed2d 8b0a 	vpush	{d8-d12}
d0051cf0:	b09d      	sub	sp, #116	; 0x74
d0051cf2:	4616      	mov	r6, r2
d0051cf4:	f101 0a01 	add.w	sl, r1, #1
d0051cf8:	460d      	mov	r5, r1
d0051cfa:	f10d 0437 	add.w	r4, sp, #55	; 0x37
d0051cfe:	4603      	mov	r3, r0
d0051d00:	fb06 a10a 	mla	r1, r6, sl, sl
d0051d04:	2228      	movs	r2, #40	; 0x28
d0051d06:	f024 041f 	bic.w	r4, r4, #31
d0051d0a:	eeb0 aa40 	vmov.f32	s20, s0
d0051d0e:	9102      	str	r1, [sp, #8]
d0051d10:	2100      	movs	r1, #0
d0051d12:	f104 0018 	add.w	r0, r4, #24
d0051d16:	eef0 8a60 	vmov.f32	s17, s1
d0051d1a:	9305      	str	r3, [sp, #20]
d0051d1c:	2700      	movs	r7, #0
d0051d1e:	9500      	str	r5, [sp, #0]
d0051d20:	f003 fcde 	bl	d00556e0 <memset>
d0051d24:	9a02      	ldr	r2, [sp, #8]
d0051d26:	fb06 f505 	mul.w	r5, r6, r5
d0051d2a:	60e7      	str	r7, [r4, #12]
d0051d2c:	eb02 0042 	add.w	r0, r2, r2, lsl #1
d0051d30:	6062      	str	r2, [r4, #4]
d0051d32:	006b      	lsls	r3, r5, #1
d0051d34:	9403      	str	r4, [sp, #12]
d0051d36:	0080      	lsls	r0, r0, #2
d0051d38:	6163      	str	r3, [r4, #20]
d0051d3a:	f003 fca5 	bl	d0055688 <malloc>
d0051d3e:	4603      	mov	r3, r0
d0051d40:	0168      	lsls	r0, r5, #5
d0051d42:	9d03      	ldr	r5, [sp, #12]
d0051d44:	9304      	str	r3, [sp, #16]
d0051d46:	602b      	str	r3, [r5, #0]
d0051d48:	f003 fc9e 	bl	d0055688 <malloc>
d0051d4c:	9b00      	ldr	r3, [sp, #0]
d0051d4e:	60af      	str	r7, [r5, #8]
d0051d50:	42bb      	cmp	r3, r7
d0051d52:	9001      	str	r0, [sp, #4]
d0051d54:	6128      	str	r0, [r5, #16]
d0051d56:	f2c0 8099 	blt.w	d0051e8c <createTorus+0x1a4>
d0051d5a:	ee07 3a90 	vmov	s15, r3
d0051d5e:	42be      	cmp	r6, r7
d0051d60:	f106 0401 	add.w	r4, r6, #1
d0051d64:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0051d68:	ee07 6a90 	vmov	s15, r6
d0051d6c:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0051d70:	db5d      	blt.n	d0051e2e <createTorus+0x146>
d0051d72:	eddf 7a63 	vldr	s15, [pc, #396]	; d0051f00 <createTorus+0x218>
d0051d76:	eb04 0844 	add.w	r8, r4, r4, lsl #1
d0051d7a:	ed9f 9a62 	vldr	s18, [pc, #392]	; d0051f04 <createTorus+0x21c>
d0051d7e:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0051d82:	eec7 aaa6 	vdiv.f32	s21, s15, s13
d0051d86:	ea4f 0888 	mov.w	r8, r8, lsl #2
d0051d8a:	9d04      	ldr	r5, [sp, #16]
d0051d8c:	ee87 ca87 	vdiv.f32	s24, s15, s14
d0051d90:	eef0 ba49 	vmov.f32	s23, s18
d0051d94:	ee38 ba8a 	vadd.f32	s22, s17, s20
d0051d98:	ee29 7a8b 	vmul.f32	s14, s19, s22
d0051d9c:	edc5 ba01 	vstr	s23, [r5, #4]
d0051da0:	ee69 7a0b 	vmul.f32	s15, s18, s22
d0051da4:	ed85 7a00 	vstr	s14, [r5]
d0051da8:	edc5 7a02 	vstr	s15, [r5, #8]
d0051dac:	b346      	cbz	r6, d0051e00 <createTorus+0x118>
d0051dae:	46a9      	mov	r9, r5
d0051db0:	f04f 0b01 	mov.w	fp, #1
d0051db4:	ee07 ba90 	vmov	s15, fp
d0051db8:	f10b 0b01 	add.w	fp, fp, #1
d0051dbc:	f109 090c 	add.w	r9, r9, #12
d0051dc0:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0051dc4:	ee6a ca88 	vmul.f32	s25, s21, s16
d0051dc8:	eeb0 0a6c 	vmov.f32	s0, s25
d0051dcc:	f004 fdc0 	bl	d0056950 <cosf>
d0051dd0:	eeb0 8a40 	vmov.f32	s16, s0
d0051dd4:	eeb0 0a6c 	vmov.f32	s0, s25
d0051dd8:	f004 ff9e 	bl	d0056d18 <sinf>
d0051ddc:	eef0 7a4a 	vmov.f32	s15, s20
d0051de0:	ee28 7a80 	vmul.f32	s14, s17, s0
d0051de4:	455c      	cmp	r4, fp
d0051de6:	eee8 7a88 	vfma.f32	s15, s17, s16
d0051dea:	ed89 7a01 	vstr	s14, [r9, #4]
d0051dee:	ee27 7aa9 	vmul.f32	s14, s15, s19
d0051df2:	ee67 7a89 	vmul.f32	s15, s15, s18
d0051df6:	ed89 7a00 	vstr	s14, [r9]
d0051dfa:	edc9 7a02 	vstr	s15, [r9, #8]
d0051dfe:	d1d9      	bne.n	d0051db4 <createTorus+0xcc>
d0051e00:	3701      	adds	r7, #1
d0051e02:	4445      	add	r5, r8
d0051e04:	4557      	cmp	r7, sl
d0051e06:	d012      	beq.n	d0051e2e <createTorus+0x146>
d0051e08:	ee07 7a90 	vmov	s15, r7
d0051e0c:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0051e10:	ee28 8a0c 	vmul.f32	s16, s16, s24
d0051e14:	eeb0 0a48 	vmov.f32	s0, s16
d0051e18:	f004 fd9a 	bl	d0056950 <cosf>
d0051e1c:	eef0 9a40 	vmov.f32	s19, s0
d0051e20:	eeb0 0a48 	vmov.f32	s0, s16
d0051e24:	f004 ff78 	bl	d0056d18 <sinf>
d0051e28:	eeb0 9a40 	vmov.f32	s18, s0
d0051e2c:	e7b4      	b.n	d0051d98 <createTorus+0xb0>
d0051e2e:	9b00      	ldr	r3, [sp, #0]
d0051e30:	2b00      	cmp	r3, #0
d0051e32:	dd2b      	ble.n	d0051e8c <createTorus+0x1a4>
d0051e34:	2e00      	cmp	r6, #0
d0051e36:	dd29      	ble.n	d0051e8c <createTorus+0x1a4>
d0051e38:	f04f 0a00 	mov.w	sl, #0
d0051e3c:	0173      	lsls	r3, r6, #5
d0051e3e:	46b6      	mov	lr, r6
d0051e40:	f106 0802 	add.w	r8, r6, #2
d0051e44:	46d3      	mov	fp, sl
d0051e46:	4656      	mov	r6, sl
d0051e48:	2521      	movs	r5, #33	; 0x21
d0051e4a:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0051e4e:	9301      	str	r3, [sp, #4]
d0051e50:	4652      	mov	r2, sl
d0051e52:	464b      	mov	r3, r9
d0051e54:	4610      	mov	r0, r2
d0051e56:	18a1      	adds	r1, r4, r2
d0051e58:	3201      	adds	r2, #1
d0051e5a:	60de      	str	r6, [r3, #12]
d0051e5c:	eb08 0700 	add.w	r7, r8, r0
d0051e60:	61de      	str	r6, [r3, #28]
d0051e62:	4596      	cmp	lr, r2
d0051e64:	6018      	str	r0, [r3, #0]
d0051e66:	731d      	strb	r5, [r3, #12]
d0051e68:	6099      	str	r1, [r3, #8]
d0051e6a:	605a      	str	r2, [r3, #4]
d0051e6c:	6199      	str	r1, [r3, #24]
d0051e6e:	771d      	strb	r5, [r3, #28]
d0051e70:	e9c3 2704 	strd	r2, r7, [r3, #16]
d0051e74:	f103 0320 	add.w	r3, r3, #32
d0051e78:	d1ec      	bne.n	d0051e54 <createTorus+0x16c>
d0051e7a:	9b01      	ldr	r3, [sp, #4]
d0051e7c:	f10b 0b01 	add.w	fp, fp, #1
d0051e80:	44a2      	add	sl, r4
d0051e82:	44a6      	add	lr, r4
d0051e84:	4499      	add	r9, r3
d0051e86:	9b00      	ldr	r3, [sp, #0]
d0051e88:	455b      	cmp	r3, fp
d0051e8a:	d1e1      	bne.n	d0051e50 <createTorus+0x168>
d0051e8c:	9902      	ldr	r1, [sp, #8]
d0051e8e:	2900      	cmp	r1, #0
d0051e90:	dd32      	ble.n	d0051ef8 <createTorus+0x210>
d0051e92:	9b04      	ldr	r3, [sp, #16]
d0051e94:	fab3 f283 	clz	r2, r3
d0051e98:	0952      	lsrs	r2, r2, #5
d0051e9a:	b36b      	cbz	r3, d0051ef8 <createTorus+0x210>
d0051e9c:	ed9f 6a19 	vldr	s12, [pc, #100]	; d0051f04 <createTorus+0x21c>
d0051ea0:	edd3 7a01 	vldr	s15, [r3, #4]
d0051ea4:	3201      	adds	r2, #1
d0051ea6:	edd3 6a00 	vldr	s13, [r3]
d0051eaa:	330c      	adds	r3, #12
d0051eac:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0051eb0:	ed13 7a01 	vldr	s14, [r3, #-4]
d0051eb4:	4291      	cmp	r1, r2
d0051eb6:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0051eba:	eee7 7a07 	vfma.f32	s15, s14, s14
d0051ebe:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0051ec2:	dced      	bgt.n	d0051ea0 <createTorus+0x1b8>
d0051ec4:	eef1 7ac6 	vsqrt.f32	s15, s12
d0051ec8:	9c03      	ldr	r4, [sp, #12]
d0051eca:	4620      	mov	r0, r4
d0051ecc:	edc4 7a06 	vstr	s15, [r4, #24]
d0051ed0:	f7fc fd66 	bl	d004e9a0 <meshSetDefaultMaterial>
d0051ed4:	9e05      	ldr	r6, [sp, #20]
d0051ed6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051ed8:	4635      	mov	r5, r6
d0051eda:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051edc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051ede:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051ee0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051ee2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051ee4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0051ee8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051eec:	4630      	mov	r0, r6
d0051eee:	b01d      	add	sp, #116	; 0x74
d0051ef0:	ecbd 8b0a 	vpop	{d8-d12}
d0051ef4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051ef8:	eddf 7a02 	vldr	s15, [pc, #8]	; d0051f04 <createTorus+0x21c>
d0051efc:	e7e4      	b.n	d0051ec8 <createTorus+0x1e0>
d0051efe:	bf00      	nop
d0051f00:	40c90fdb 	.word	0x40c90fdb
d0051f04:	00000000 	.word	0x00000000

d0051f08 <copyMesh>:
d0051f08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051f0c:	460f      	mov	r7, r1
d0051f0e:	b083      	sub	sp, #12
d0051f10:	2240      	movs	r2, #64	; 0x40
d0051f12:	2100      	movs	r1, #0
d0051f14:	4606      	mov	r6, r0
d0051f16:	f003 fbe3 	bl	d00556e0 <memset>
d0051f1a:	2f00      	cmp	r7, #0
d0051f1c:	d077      	beq.n	d005200e <copyMesh+0x106>
d0051f1e:	687b      	ldr	r3, [r7, #4]
d0051f20:	697a      	ldr	r2, [r7, #20]
d0051f22:	2b00      	cmp	r3, #0
d0051f24:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0051f28:	9301      	str	r3, [sp, #4]
d0051f2a:	9200      	str	r2, [sp, #0]
d0051f2c:	dc59      	bgt.n	d0051fe2 <copyMesh+0xda>
d0051f2e:	f1b8 0f00 	cmp.w	r8, #0
d0051f32:	f04f 0900 	mov.w	r9, #0
d0051f36:	dc5d      	bgt.n	d0051ff4 <copyMesh+0xec>
d0051f38:	9b00      	ldr	r3, [sp, #0]
d0051f3a:	f04f 0a00 	mov.w	sl, #0
d0051f3e:	2b00      	cmp	r3, #0
d0051f40:	dc60      	bgt.n	d0052004 <copyMesh+0xfc>
d0051f42:	f04f 0c00 	mov.w	ip, #0
d0051f46:	9b01      	ldr	r3, [sp, #4]
d0051f48:	2b00      	cmp	r3, #0
d0051f4a:	dd0f      	ble.n	d0051f6c <copyMesh+0x64>
d0051f4c:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0051f50:	f8d7 e000 	ldr.w	lr, [r7]
d0051f54:	2300      	movs	r3, #0
d0051f56:	00ad      	lsls	r5, r5, #2
d0051f58:	eb0e 0203 	add.w	r2, lr, r3
d0051f5c:	eb09 0403 	add.w	r4, r9, r3
d0051f60:	330c      	adds	r3, #12
d0051f62:	ca07      	ldmia	r2, {r0, r1, r2}
d0051f64:	429d      	cmp	r5, r3
d0051f66:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0051f6a:	d1f5      	bne.n	d0051f58 <copyMesh+0x50>
d0051f6c:	f1b8 0f00 	cmp.w	r8, #0
d0051f70:	dd0b      	ble.n	d0051f8a <copyMesh+0x82>
d0051f72:	68bc      	ldr	r4, [r7, #8]
d0051f74:	2300      	movs	r3, #0
d0051f76:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0051f7a:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0051f7e:	3301      	adds	r3, #1
d0051f80:	c903      	ldmia	r1, {r0, r1}
d0051f82:	4598      	cmp	r8, r3
d0051f84:	e882 0003 	stmia.w	r2, {r0, r1}
d0051f88:	d1f5      	bne.n	d0051f76 <copyMesh+0x6e>
d0051f8a:	9b00      	ldr	r3, [sp, #0]
d0051f8c:	2b00      	cmp	r3, #0
d0051f8e:	dd0e      	ble.n	d0051fae <copyMesh+0xa6>
d0051f90:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0051f94:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0051f98:	2400      	movs	r4, #0
d0051f9a:	eb0b 0304 	add.w	r3, fp, r4
d0051f9e:	eb0c 0504 	add.w	r5, ip, r4
d0051fa2:	3410      	adds	r4, #16
d0051fa4:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0051fa6:	4574      	cmp	r4, lr
d0051fa8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051fac:	d1f5      	bne.n	d0051f9a <copyMesh+0x92>
d0051fae:	9a01      	ldr	r2, [sp, #4]
d0051fb0:	f107 0520 	add.w	r5, r7, #32
d0051fb4:	69bb      	ldr	r3, [r7, #24]
d0051fb6:	f106 0420 	add.w	r4, r6, #32
d0051fba:	6072      	str	r2, [r6, #4]
d0051fbc:	9a00      	ldr	r2, [sp, #0]
d0051fbe:	61b3      	str	r3, [r6, #24]
d0051fc0:	6172      	str	r2, [r6, #20]
d0051fc2:	f8c6 9000 	str.w	r9, [r6]
d0051fc6:	f8c6 c010 	str.w	ip, [r6, #16]
d0051fca:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051fcc:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051fce:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051fd2:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0051fd6:	4630      	mov	r0, r6
d0051fd8:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0051fdc:	b003      	add	sp, #12
d0051fde:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051fe2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0051fe6:	0080      	lsls	r0, r0, #2
d0051fe8:	f003 fb4e 	bl	d0055688 <malloc>
d0051fec:	f1b8 0f00 	cmp.w	r8, #0
d0051ff0:	4681      	mov	r9, r0
d0051ff2:	dda1      	ble.n	d0051f38 <copyMesh+0x30>
d0051ff4:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0051ff8:	f003 fb46 	bl	d0055688 <malloc>
d0051ffc:	9b00      	ldr	r3, [sp, #0]
d0051ffe:	4682      	mov	sl, r0
d0052000:	2b00      	cmp	r3, #0
d0052002:	dd9e      	ble.n	d0051f42 <copyMesh+0x3a>
d0052004:	0118      	lsls	r0, r3, #4
d0052006:	f003 fb3f 	bl	d0055688 <malloc>
d005200a:	4684      	mov	ip, r0
d005200c:	e79b      	b.n	d0051f46 <copyMesh+0x3e>
d005200e:	2300      	movs	r3, #0
d0052010:	4630      	mov	r0, r6
d0052012:	e9c6 7700 	strd	r7, r7, [r6]
d0052016:	e9c6 7702 	strd	r7, r7, [r6, #8]
d005201a:	e9c6 7704 	strd	r7, r7, [r6, #16]
d005201e:	61b3      	str	r3, [r6, #24]
d0052020:	b003      	add	sp, #12
d0052022:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052026:	bf00      	nop

d0052028 <entityLookAtPosition>:
d0052028:	28ff      	cmp	r0, #255	; 0xff
d005202a:	b530      	push	{r4, r5, lr}
d005202c:	ed2d 8b04 	vpush	{d8-d9}
d0052030:	b08d      	sub	sp, #52	; 0x34
d0052032:	d848      	bhi.n	d00520c6 <entityLookAtPosition+0x9e>
d0052034:	4b30      	ldr	r3, [pc, #192]	; (d00520f8 <entityLookAtPosition+0xd0>)
d0052036:	4604      	mov	r4, r0
d0052038:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d005203c:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0052040:	2a00      	cmp	r2, #0
d0052042:	d040      	beq.n	d00520c6 <entityLookAtPosition+0x9e>
d0052044:	699a      	ldr	r2, [r3, #24]
d0052046:	2a00      	cmp	r2, #0
d0052048:	d03d      	beq.n	d00520c6 <entityLookAtPosition+0x9e>
d005204a:	edd3 8a00 	vldr	s17, [r3]
d005204e:	460d      	mov	r5, r1
d0052050:	ed93 9a01 	vldr	s18, [r3, #4]
d0052054:	ee70 8a68 	vsub.f32	s17, s0, s17
d0052058:	ed93 8a02 	vldr	s16, [r3, #8]
d005205c:	ee30 9ac9 	vsub.f32	s18, s1, s18
d0052060:	ee31 8a48 	vsub.f32	s16, s2, s16
d0052064:	eef5 8a40 	vcmp.f32	s17, #0.0
d0052068:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005206c:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0052070:	bf14      	ite	ne
d0052072:	2300      	movne	r3, #0
d0052074:	2301      	moveq	r3, #1
d0052076:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005207a:	bf18      	it	ne
d005207c:	2300      	movne	r3, #0
d005207e:	b123      	cbz	r3, d005208a <entityLookAtPosition+0x62>
d0052080:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0052084:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052088:	d01d      	beq.n	d00520c6 <entityLookAtPosition+0x9e>
d005208a:	eef0 0a48 	vmov.f32	s1, s16
d005208e:	ee28 8a08 	vmul.f32	s16, s16, s16
d0052092:	eeb0 0a68 	vmov.f32	s0, s17
d0052096:	f004 fedf 	bl	d0056e58 <atan2f>
d005209a:	eef0 7a40 	vmov.f32	s15, s0
d005209e:	eea8 8aa8 	vfma.f32	s16, s17, s17
d00520a2:	eeb0 0a49 	vmov.f32	s0, s18
d00520a6:	eeb0 9a67 	vmov.f32	s18, s15
d00520aa:	eef1 0ac8 	vsqrt.f32	s1, s16
d00520ae:	f004 fed3 	bl	d0056e58 <atan2f>
d00520b2:	eeb1 8a40 	vneg.f32	s16, s0
d00520b6:	b9a5      	cbnz	r5, d00520e2 <entityLookAtPosition+0xba>
d00520b8:	2300      	movs	r3, #0
d00520ba:	ed8d 8a09 	vstr	s16, [sp, #36]	; 0x24
d00520be:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d00520c2:	930b      	str	r3, [sp, #44]	; 0x2c
d00520c4:	e003      	b.n	d00520ce <entityLookAtPosition+0xa6>
d00520c6:	2300      	movs	r3, #0
d00520c8:	9309      	str	r3, [sp, #36]	; 0x24
d00520ca:	930a      	str	r3, [sp, #40]	; 0x28
d00520cc:	930b      	str	r3, [sp, #44]	; 0x2c
d00520ce:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d00520d2:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d00520d6:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d00520da:	b00d      	add	sp, #52	; 0x34
d00520dc:	ecbd 8b04 	vpop	{d8-d9}
d00520e0:	bd30      	pop	{r4, r5, pc}
d00520e2:	eef0 0a48 	vmov.f32	s1, s16
d00520e6:	4620      	mov	r0, r4
d00520e8:	eeb0 0a49 	vmov.f32	s0, s18
d00520ec:	2101      	movs	r1, #1
d00520ee:	ed9f 1a03 	vldr	s2, [pc, #12]	; d00520fc <entityLookAtPosition+0xd4>
d00520f2:	f7fe ff0d 	bl	d0050f10 <entityRotation.part.0>
d00520f6:	e7df      	b.n	d00520b8 <entityLookAtPosition+0x90>
d00520f8:	d00f4c20 	.word	0xd00f4c20
d00520fc:	00000000 	.word	0x00000000

d0052100 <entityAllowHit>:
d0052100:	28ff      	cmp	r0, #255	; 0xff
d0052102:	d813      	bhi.n	d005212c <entityAllowHit+0x2c>
d0052104:	4b0a      	ldr	r3, [pc, #40]	; (d0052130 <entityAllowHit+0x30>)
d0052106:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d005210a:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d005210e:	b16b      	cbz	r3, d005212c <entityAllowHit+0x2c>
d0052110:	6983      	ldr	r3, [r0, #24]
d0052112:	b15b      	cbz	r3, d005212c <entityAllowHit+0x2c>
d0052114:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d0052118:	b121      	cbz	r1, d0052124 <entityAllowHit+0x24>
d005211a:	f043 0302 	orr.w	r3, r3, #2
d005211e:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0052122:	4770      	bx	lr
d0052124:	f023 0302 	bic.w	r3, r3, #2
d0052128:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d005212c:	4770      	bx	lr
d005212e:	bf00      	nop
d0052130:	d00f4c20 	.word	0xd00f4c20

d0052134 <entityVisible>:
d0052134:	28ff      	cmp	r0, #255	; 0xff
d0052136:	d813      	bhi.n	d0052160 <entityVisible+0x2c>
d0052138:	4b0a      	ldr	r3, [pc, #40]	; (d0052164 <entityVisible+0x30>)
d005213a:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d005213e:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0052142:	b16b      	cbz	r3, d0052160 <entityVisible+0x2c>
d0052144:	6983      	ldr	r3, [r0, #24]
d0052146:	b15b      	cbz	r3, d0052160 <entityVisible+0x2c>
d0052148:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d005214c:	b121      	cbz	r1, d0052158 <entityVisible+0x24>
d005214e:	f043 0301 	orr.w	r3, r3, #1
d0052152:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0052156:	4770      	bx	lr
d0052158:	f023 0301 	bic.w	r3, r3, #1
d005215c:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0052160:	4770      	bx	lr
d0052162:	bf00      	nop
d0052164:	d00f4c20 	.word	0xd00f4c20

d0052168 <entitySweepRaycastTest>:
d0052168:	b5f0      	push	{r4, r5, r6, r7, lr}
d005216a:	4f16      	ldr	r7, [pc, #88]	; (d00521c4 <entitySweepRaycastTest+0x5c>)
d005216c:	b08b      	sub	sp, #44	; 0x2c
d005216e:	4616      	mov	r6, r2
d0052170:	7c3c      	ldrb	r4, [r7, #16]
d0052172:	7c7d      	ldrb	r5, [r7, #17]
d0052174:	f897 c012 	ldrb.w	ip, [r7, #18]
d0052178:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
d005217c:	7cff      	ldrb	r7, [r7, #19]
d005217e:	461d      	mov	r5, r3
d0052180:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
d0052184:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d0052188:	6823      	ldr	r3, [r4, #0]
d005218a:	685c      	ldr	r4, [r3, #4]
d005218c:	b102      	cbz	r2, d0052190 <entitySweepRaycastTest+0x28>
d005218e:	aa03      	add	r2, sp, #12
d0052190:	b1b5      	cbz	r5, d00521c0 <entitySweepRaycastTest+0x58>
d0052192:	ab06      	add	r3, sp, #24
d0052194:	4f0c      	ldr	r7, [pc, #48]	; (d00521c8 <entitySweepRaycastTest+0x60>)
d0052196:	9700      	str	r7, [sp, #0]
d0052198:	47a0      	blx	r4
d005219a:	b178      	cbz	r0, d00521bc <entitySweepRaycastTest+0x54>
d005219c:	b12e      	cbz	r6, d00521aa <entitySweepRaycastTest+0x42>
d005219e:	9903      	ldr	r1, [sp, #12]
d00521a0:	9a04      	ldr	r2, [sp, #16]
d00521a2:	9b05      	ldr	r3, [sp, #20]
d00521a4:	6031      	str	r1, [r6, #0]
d00521a6:	6072      	str	r2, [r6, #4]
d00521a8:	60b3      	str	r3, [r6, #8]
d00521aa:	b13d      	cbz	r5, d00521bc <entitySweepRaycastTest+0x54>
d00521ac:	9c07      	ldr	r4, [sp, #28]
d00521ae:	9908      	ldr	r1, [sp, #32]
d00521b0:	9a06      	ldr	r2, [sp, #24]
d00521b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00521b4:	606c      	str	r4, [r5, #4]
d00521b6:	60a9      	str	r1, [r5, #8]
d00521b8:	602a      	str	r2, [r5, #0]
d00521ba:	60eb      	str	r3, [r5, #12]
d00521bc:	b00b      	add	sp, #44	; 0x2c
d00521be:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00521c0:	462b      	mov	r3, r5
d00521c2:	e7e7      	b.n	d0052194 <entitySweepRaycastTest+0x2c>
d00521c4:	2001f000 	.word	0x2001f000
d00521c8:	d00f4c20 	.word	0xd00f4c20

d00521cc <entityMatchOrientationCamera>:
d00521cc:	28ff      	cmp	r0, #255	; 0xff
d00521ce:	d821      	bhi.n	d0052214 <entityMatchOrientationCamera+0x48>
d00521d0:	b470      	push	{r4, r5, r6}
d00521d2:	4c11      	ldr	r4, [pc, #68]	; (d0052218 <entityMatchOrientationCamera+0x4c>)
d00521d4:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d00521d8:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d00521dc:	b1c3      	cbz	r3, d0052210 <entityMatchOrientationCamera+0x44>
d00521de:	69a3      	ldr	r3, [r4, #24]
d00521e0:	b1b3      	cbz	r3, d0052210 <entityMatchOrientationCamera+0x44>
d00521e2:	b1a9      	cbz	r1, d0052210 <entityMatchOrientationCamera+0x44>
d00521e4:	f101 0218 	add.w	r2, r1, #24
d00521e8:	f104 0528 	add.w	r5, r4, #40	; 0x28
d00521ec:	f101 0624 	add.w	r6, r1, #36	; 0x24
d00521f0:	f101 0330 	add.w	r3, r1, #48	; 0x30
d00521f4:	ca07      	ldmia	r2, {r0, r1, r2}
d00521f6:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00521fa:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d00521fe:	f104 0534 	add.w	r5, r4, #52	; 0x34
d0052202:	341c      	adds	r4, #28
d0052204:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0052208:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005220c:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0052210:	bc70      	pop	{r4, r5, r6}
d0052212:	4770      	bx	lr
d0052214:	4770      	bx	lr
d0052216:	bf00      	nop
d0052218:	d00f4c20 	.word	0xd00f4c20

d005221c <buildLightingCLUT>:
d005221c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052220:	f1b2 0900 	subs.w	r9, r2, #0
d0052224:	b085      	sub	sp, #20
d0052226:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0052228:	f340 8212 	ble.w	d0052650 <buildLightingCLUT+0x434>
d005222c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052230:	4f24      	ldr	r7, [pc, #144]	; (d00522c4 <buildLightingCLUT+0xa8>)
d0052232:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0052236:	edd4 4a00 	vldr	s9, [r4]
d005223a:	ed94 5a01 	vldr	s10, [r4, #4]
d005223e:	eb09 0807 	add.w	r8, r9, r7
d0052242:	edd4 5a02 	vldr	s11, [r4, #8]
d0052246:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d005224a:	ed94 6a03 	vldr	s12, [r4, #12]
d005224e:	44bc      	add	ip, r7
d0052250:	edd4 6a04 	vldr	s13, [r4, #16]
d0052254:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0052258:	3904      	subs	r1, #4
d005225a:	ee77 4ae4 	vsub.f32	s9, s15, s9
d005225e:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0052262:	ed9f 7a19 	vldr	s14, [pc, #100]	; d00522c8 <buildLightingCLUT+0xac>
d0052266:	ee77 5ae5 	vsub.f32	s11, s15, s11
d005226a:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d005226e:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0052272:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0052276:	ee77 6ae6 	vsub.f32	s13, s15, s13
d005227a:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d005227e:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0052282:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0052286:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d005228a:	f3c3 2007 	ubfx	r0, r3, #8, #8
d005228e:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0052292:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0052296:	0e1c      	lsrs	r4, r3, #24
d0052298:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d005229c:	b2da      	uxtb	r2, r3
d005229e:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d00522a2:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d00522a6:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d00522aa:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d00522ae:	fe85 5a67 	vminnm.f32	s10, s10, s15
d00522b2:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d00522b6:	fe86 6a67 	vminnm.f32	s12, s12, s15
d00522ba:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d00522be:	9601      	str	r6, [sp, #4]
d00522c0:	e004      	b.n	d00522cc <buildLightingCLUT+0xb0>
d00522c2:	bf00      	nop
d00522c4:	4000001f 	.word	0x4000001f
d00522c8:	00000000 	.word	0x00000000
d00522cc:	f851 3f04 	ldr.w	r3, [r1, #4]!
d00522d0:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00522d4:	0e1e      	lsrs	r6, r3, #24
d00522d6:	fa5f fa83 	uxtb.w	sl, r3
d00522da:	4549      	cmp	r1, r9
d00522dc:	ee07 6a10 	vmov	s14, r6
d00522e0:	eba5 060b 	sub.w	r6, r5, fp
d00522e4:	ee04 ba10 	vmov	s8, fp
d00522e8:	ee07 6a90 	vmov	s15, r6
d00522ec:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00522f0:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00522f4:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00522f8:	ee02 6a10 	vmov	s4, r6
d00522fc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052300:	eba2 060a 	sub.w	r6, r2, sl
d0052304:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052308:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005230c:	ee04 aa10 	vmov	s8, sl
d0052310:	ee02 6a90 	vmov	s5, r6
d0052314:	eba0 0603 	sub.w	r6, r0, r3
d0052318:	eee4 3aa7 	vfma.f32	s7, s9, s15
d005231c:	ee07 3a90 	vmov	s15, r3
d0052320:	eea4 7a82 	vfma.f32	s14, s9, s4
d0052324:	ee03 6a10 	vmov	s6, r6
d0052328:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005232c:	9e01      	ldr	r6, [sp, #4]
d005232e:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052332:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0052336:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005233a:	eea4 4aa2 	vfma.f32	s8, s9, s5
d005233e:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0052342:	eee4 7a83 	vfma.f32	s15, s9, s6
d0052346:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005234a:	edcd 3a02 	vstr	s7, [sp, #8]
d005234e:	f89d a008 	ldrb.w	sl, [sp, #8]
d0052352:	ee17 3a10 	vmov	r3, s14
d0052356:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d005235a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005235e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052362:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052366:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d005236a:	f89d b008 	ldrb.w	fp, [sp, #8]
d005236e:	edcd 7a03 	vstr	s15, [sp, #12]
d0052372:	ea43 030b 	orr.w	r3, r3, fp
d0052376:	f89d a00c 	ldrb.w	sl, [sp, #12]
d005237a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005237e:	f846 3f04 	str.w	r3, [r6, #4]!
d0052382:	680b      	ldr	r3, [r1, #0]
d0052384:	9601      	str	r6, [sp, #4]
d0052386:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d005238a:	ea4f 6613 	mov.w	r6, r3, lsr #24
d005238e:	fa5f fa83 	uxtb.w	sl, r3
d0052392:	ee07 6a10 	vmov	s14, r6
d0052396:	eba5 060b 	sub.w	r6, r5, fp
d005239a:	ee04 ba10 	vmov	s8, fp
d005239e:	ee07 6a90 	vmov	s15, r6
d00523a2:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00523a6:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00523aa:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00523ae:	ee02 6a10 	vmov	s4, r6
d00523b2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00523b6:	eba2 060a 	sub.w	r6, r2, sl
d00523ba:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00523be:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00523c2:	ee04 aa10 	vmov	s8, sl
d00523c6:	ee02 6a90 	vmov	s5, r6
d00523ca:	eba0 0603 	sub.w	r6, r0, r3
d00523ce:	eee5 3a27 	vfma.f32	s7, s10, s15
d00523d2:	ee07 3a90 	vmov	s15, r3
d00523d6:	eea5 7a02 	vfma.f32	s14, s10, s4
d00523da:	ee03 6a10 	vmov	s6, r6
d00523de:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00523e2:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00523e6:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00523ea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00523ee:	eea5 4a22 	vfma.f32	s8, s10, s5
d00523f2:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00523f6:	eee5 7a03 	vfma.f32	s15, s10, s6
d00523fa:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00523fe:	edcd 3a02 	vstr	s7, [sp, #8]
d0052402:	f89d a008 	ldrb.w	sl, [sp, #8]
d0052406:	ee17 3a10 	vmov	r3, s14
d005240a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d005240e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052412:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052416:	ed8d 7a02 	vstr	s14, [sp, #8]
d005241a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d005241e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052422:	edcd 7a03 	vstr	s15, [sp, #12]
d0052426:	ea43 030b 	orr.w	r3, r3, fp
d005242a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d005242e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052432:	f848 3f04 	str.w	r3, [r8, #4]!
d0052436:	680b      	ldr	r3, [r1, #0]
d0052438:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d005243c:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0052440:	fa5f fa83 	uxtb.w	sl, r3
d0052444:	ee07 6a10 	vmov	s14, r6
d0052448:	eba5 060b 	sub.w	r6, r5, fp
d005244c:	ee04 ba10 	vmov	s8, fp
d0052450:	ee07 6a90 	vmov	s15, r6
d0052454:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052458:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005245c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052460:	ee02 6a10 	vmov	s4, r6
d0052464:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052468:	eba2 060a 	sub.w	r6, r2, sl
d005246c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052470:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052474:	ee04 aa10 	vmov	s8, sl
d0052478:	ee02 6a90 	vmov	s5, r6
d005247c:	eba0 0603 	sub.w	r6, r0, r3
d0052480:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0052484:	ee07 3a90 	vmov	s15, r3
d0052488:	eea5 7a82 	vfma.f32	s14, s11, s4
d005248c:	ee03 6a10 	vmov	s6, r6
d0052490:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0052494:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052498:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005249c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00524a0:	eea5 4aa2 	vfma.f32	s8, s11, s5
d00524a4:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00524a8:	eee5 7a83 	vfma.f32	s15, s11, s6
d00524ac:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00524b0:	edcd 3a02 	vstr	s7, [sp, #8]
d00524b4:	f89d a008 	ldrb.w	sl, [sp, #8]
d00524b8:	ee17 3a10 	vmov	r3, s14
d00524bc:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00524c0:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00524c4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00524c8:	ed8d 7a02 	vstr	s14, [sp, #8]
d00524cc:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00524d0:	f89d b008 	ldrb.w	fp, [sp, #8]
d00524d4:	edcd 7a03 	vstr	s15, [sp, #12]
d00524d8:	ea43 030b 	orr.w	r3, r3, fp
d00524dc:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00524e0:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00524e4:	f84e 3f04 	str.w	r3, [lr, #4]!
d00524e8:	680b      	ldr	r3, [r1, #0]
d00524ea:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00524ee:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00524f2:	fa5f fa83 	uxtb.w	sl, r3
d00524f6:	ee07 6a10 	vmov	s14, r6
d00524fa:	eba5 060b 	sub.w	r6, r5, fp
d00524fe:	ee04 ba10 	vmov	s8, fp
d0052502:	ee07 6a90 	vmov	s15, r6
d0052506:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005250a:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005250e:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052512:	ee02 6a10 	vmov	s4, r6
d0052516:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005251a:	eba2 060a 	sub.w	r6, r2, sl
d005251e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052522:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052526:	ee04 aa10 	vmov	s8, sl
d005252a:	ee02 6a90 	vmov	s5, r6
d005252e:	eba0 0603 	sub.w	r6, r0, r3
d0052532:	eee6 3a27 	vfma.f32	s7, s12, s15
d0052536:	ee07 3a90 	vmov	s15, r3
d005253a:	eea6 7a02 	vfma.f32	s14, s12, s4
d005253e:	ee03 6a10 	vmov	s6, r6
d0052542:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0052546:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005254a:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005254e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052552:	eea6 4a22 	vfma.f32	s8, s12, s5
d0052556:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005255a:	eee6 7a03 	vfma.f32	s15, s12, s6
d005255e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052562:	edcd 3a02 	vstr	s7, [sp, #8]
d0052566:	f89d a008 	ldrb.w	sl, [sp, #8]
d005256a:	ee17 3a10 	vmov	r3, s14
d005256e:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052572:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052576:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005257a:	ed8d 7a02 	vstr	s14, [sp, #8]
d005257e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052582:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052586:	edcd 7a03 	vstr	s15, [sp, #12]
d005258a:	ea43 030b 	orr.w	r3, r3, fp
d005258e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052592:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052596:	f84c 3f04 	str.w	r3, [ip, #4]!
d005259a:	680b      	ldr	r3, [r1, #0]
d005259c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00525a0:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00525a4:	fa5f fa83 	uxtb.w	sl, r3
d00525a8:	ee07 6a10 	vmov	s14, r6
d00525ac:	eba5 060b 	sub.w	r6, r5, fp
d00525b0:	ee04 ba10 	vmov	s8, fp
d00525b4:	ee07 6a90 	vmov	s15, r6
d00525b8:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00525bc:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00525c0:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00525c4:	ee02 6a10 	vmov	s4, r6
d00525c8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00525cc:	eba2 060a 	sub.w	r6, r2, sl
d00525d0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00525d4:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00525d8:	ee04 aa10 	vmov	s8, sl
d00525dc:	ee02 6a90 	vmov	s5, r6
d00525e0:	eba0 0603 	sub.w	r6, r0, r3
d00525e4:	eee6 3aa7 	vfma.f32	s7, s13, s15
d00525e8:	ee07 3a90 	vmov	s15, r3
d00525ec:	eea6 7a82 	vfma.f32	s14, s13, s4
d00525f0:	ee03 6a10 	vmov	s6, r6
d00525f4:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00525f8:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00525fc:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0052600:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052604:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0052608:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005260c:	eee6 7a83 	vfma.f32	s15, s13, s6
d0052610:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052614:	edcd 3a02 	vstr	s7, [sp, #8]
d0052618:	f89d a008 	ldrb.w	sl, [sp, #8]
d005261c:	ee17 3a10 	vmov	r3, s14
d0052620:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052624:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052628:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005262c:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052630:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052634:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052638:	edcd 7a03 	vstr	s15, [sp, #12]
d005263c:	ea43 030b 	orr.w	r3, r3, fp
d0052640:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052644:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052648:	f847 3f04 	str.w	r3, [r7, #4]!
d005264c:	f47f ae3e 	bne.w	d00522cc <buildLightingCLUT+0xb0>
d0052650:	b005      	add	sp, #20
d0052652:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052656:	bf00      	nop

d0052658 <brightnessToShadeF>:
d0052658:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005265c:	eddf 7a09 	vldr	s15, [pc, #36]	; d0052684 <brightnessToShadeF+0x2c>
d0052660:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0052664:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0052668:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d005266c:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0052670:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0052674:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0052678:	eea6 7ae7 	vfms.f32	s14, s13, s15
d005267c:	ee27 0a00 	vmul.f32	s0, s14, s0
d0052680:	4770      	bx	lr
d0052682:	bf00      	nop
d0052684:	00000000 	.word	0x00000000

d0052688 <lightSetRanges>:
d0052688:	2800      	cmp	r0, #0
d005268a:	db0c      	blt.n	d00526a6 <lightSetRanges+0x1e>
d005268c:	4b06      	ldr	r3, [pc, #24]	; (d00526a8 <lightSetRanges+0x20>)
d005268e:	681b      	ldr	r3, [r3, #0]
d0052690:	4283      	cmp	r3, r0
d0052692:	dd08      	ble.n	d00526a6 <lightSetRanges+0x1e>
d0052694:	4b05      	ldr	r3, [pc, #20]	; (d00526ac <lightSetRanges+0x24>)
d0052696:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005269a:	ed80 0a08 	vstr	s0, [r0, #32]
d005269e:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d00526a2:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d00526a6:	4770      	bx	lr
d00526a8:	d005a748 	.word	0xd005a748
d00526ac:	d005a760 	.word	0xd005a760

d00526b0 <lightsGet>:
d00526b0:	4800      	ldr	r0, [pc, #0]	; (d00526b4 <lightsGet+0x4>)
d00526b2:	4770      	bx	lr
d00526b4:	d005a760 	.word	0xd005a760

d00526b8 <lightsGetCount>:
d00526b8:	4b01      	ldr	r3, [pc, #4]	; (d00526c0 <lightsGetCount+0x8>)
d00526ba:	6818      	ldr	r0, [r3, #0]
d00526bc:	4770      	bx	lr
d00526be:	bf00      	nop
d00526c0:	d005a748 	.word	0xd005a748

d00526c4 <lightsClear>:
d00526c4:	2100      	movs	r1, #0
d00526c6:	4b03      	ldr	r3, [pc, #12]	; (d00526d4 <lightsClear+0x10>)
d00526c8:	f44f 7200 	mov.w	r2, #512	; 0x200
d00526cc:	4802      	ldr	r0, [pc, #8]	; (d00526d8 <lightsClear+0x14>)
d00526ce:	6019      	str	r1, [r3, #0]
d00526d0:	f003 b806 	b.w	d00556e0 <memset>
d00526d4:	d005a748 	.word	0xd005a748
d00526d8:	d005a760 	.word	0xd005a760

d00526dc <lightEnable>:
d00526dc:	4b04      	ldr	r3, [pc, #16]	; (d00526f0 <lightEnable+0x14>)
d00526de:	681b      	ldr	r3, [r3, #0]
d00526e0:	4298      	cmp	r0, r3
d00526e2:	da03      	bge.n	d00526ec <lightEnable+0x10>
d00526e4:	4b03      	ldr	r3, [pc, #12]	; (d00526f4 <lightEnable+0x18>)
d00526e6:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00526ea:	62c1      	str	r1, [r0, #44]	; 0x2c
d00526ec:	4770      	bx	lr
d00526ee:	bf00      	nop
d00526f0:	d005a748 	.word	0xd005a748
d00526f4:	d005a760 	.word	0xd005a760

d00526f8 <addPointLight>:
d00526f8:	4918      	ldr	r1, [pc, #96]	; (d005275c <addPointLight+0x64>)
d00526fa:	b5f0      	push	{r4, r5, r6, r7, lr}
d00526fc:	680c      	ldr	r4, [r1, #0]
d00526fe:	b085      	sub	sp, #20
d0052700:	2c07      	cmp	r4, #7
d0052702:	ed8d 0a01 	vstr	s0, [sp, #4]
d0052706:	edcd 0a02 	vstr	s1, [sp, #8]
d005270a:	ed8d 1a03 	vstr	s2, [sp, #12]
d005270e:	dc21      	bgt.n	d0052754 <addPointLight+0x5c>
d0052710:	4d13      	ldr	r5, [pc, #76]	; (d0052760 <addPointLight+0x68>)
d0052712:	01a2      	lsls	r2, r4, #6
d0052714:	2600      	movs	r6, #0
d0052716:	f8df e050 	ldr.w	lr, [pc, #80]	; d0052768 <addPointLight+0x70>
d005271a:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d005271e:	f8df c04c 	ldr.w	ip, [pc, #76]	; d005276c <addPointLight+0x74>
d0052722:	54ae      	strb	r6, [r5, r2]
d0052724:	2200      	movs	r2, #0
d0052726:	4f0f      	ldr	r7, [pc, #60]	; (d0052764 <addPointLight+0x6c>)
d0052728:	1d1d      	adds	r5, r3, #4
d005272a:	62d8      	str	r0, [r3, #44]	; 0x2c
d005272c:	1c66      	adds	r6, r4, #1
d005272e:	611a      	str	r2, [r3, #16]
d0052730:	615a      	str	r2, [r3, #20]
d0052732:	619a      	str	r2, [r3, #24]
d0052734:	edc3 1a07 	vstr	s3, [r3, #28]
d0052738:	f8c3 e020 	str.w	lr, [r3, #32]
d005273c:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d0052740:	629f      	str	r7, [r3, #40]	; 0x28
d0052742:	ab04      	add	r3, sp, #16
d0052744:	600e      	str	r6, [r1, #0]
d0052746:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d005274a:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d005274e:	4620      	mov	r0, r4
d0052750:	b005      	add	sp, #20
d0052752:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0052754:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0052758:	e7f9      	b.n	d005274e <addPointLight+0x56>
d005275a:	bf00      	nop
d005275c:	d005a748 	.word	0xd005a748
d0052760:	d005a760 	.word	0xd005a760
d0052764:	44020000 	.word	0x44020000
d0052768:	42c80000 	.word	0x42c80000
d005276c:	43660000 	.word	0x43660000

d0052770 <addDirectionalLight>:
d0052770:	b5f0      	push	{r4, r5, r6, r7, lr}
d0052772:	4f15      	ldr	r7, [pc, #84]	; (d00527c8 <addDirectionalLight+0x58>)
d0052774:	683d      	ldr	r5, [r7, #0]
d0052776:	2d07      	cmp	r5, #7
d0052778:	ed2d 8b02 	vpush	{d8}
d005277c:	b085      	sub	sp, #20
d005277e:	dc1f      	bgt.n	d00527c0 <addDirectionalLight+0x50>
d0052780:	4912      	ldr	r1, [pc, #72]	; (d00527cc <addDirectionalLight+0x5c>)
d0052782:	2300      	movs	r3, #0
d0052784:	4606      	mov	r6, r0
d0052786:	01aa      	lsls	r2, r5, #6
d0052788:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d005278c:	2001      	movs	r0, #1
d005278e:	eeb0 8a61 	vmov.f32	s16, s3
d0052792:	6063      	str	r3, [r4, #4]
d0052794:	60a3      	str	r3, [r4, #8]
d0052796:	60e3      	str	r3, [r4, #12]
d0052798:	5488      	strb	r0, [r1, r2]
d005279a:	f7fd fe0d 	bl	d00503b8 <vec3Normalize>
d005279e:	683b      	ldr	r3, [r7, #0]
d00527a0:	ed84 8a07 	vstr	s16, [r4, #28]
d00527a4:	3301      	adds	r3, #1
d00527a6:	62e6      	str	r6, [r4, #44]	; 0x2c
d00527a8:	ed84 0a04 	vstr	s0, [r4, #16]
d00527ac:	edc4 0a05 	vstr	s1, [r4, #20]
d00527b0:	ed84 1a06 	vstr	s2, [r4, #24]
d00527b4:	603b      	str	r3, [r7, #0]
d00527b6:	4628      	mov	r0, r5
d00527b8:	b005      	add	sp, #20
d00527ba:	ecbd 8b02 	vpop	{d8}
d00527be:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00527c0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00527c4:	e7f7      	b.n	d00527b6 <addDirectionalLight+0x46>
d00527c6:	bf00      	nop
d00527c8:	d005a748 	.word	0xd005a748
d00527cc:	d005a760 	.word	0xd005a760

d00527d0 <lightSetPosition>:
d00527d0:	b084      	sub	sp, #16
d00527d2:	2800      	cmp	r0, #0
d00527d4:	ed8d 0a01 	vstr	s0, [sp, #4]
d00527d8:	edcd 0a02 	vstr	s1, [sp, #8]
d00527dc:	ed8d 1a03 	vstr	s2, [sp, #12]
d00527e0:	db0c      	blt.n	d00527fc <lightSetPosition+0x2c>
d00527e2:	4b07      	ldr	r3, [pc, #28]	; (d0052800 <lightSetPosition+0x30>)
d00527e4:	681b      	ldr	r3, [r3, #0]
d00527e6:	4283      	cmp	r3, r0
d00527e8:	dd08      	ble.n	d00527fc <lightSetPosition+0x2c>
d00527ea:	4b06      	ldr	r3, [pc, #24]	; (d0052804 <lightSetPosition+0x34>)
d00527ec:	aa04      	add	r2, sp, #16
d00527ee:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d00527f2:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00527f6:	3304      	adds	r3, #4
d00527f8:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00527fc:	b004      	add	sp, #16
d00527fe:	4770      	bx	lr
d0052800:	d005a748 	.word	0xd005a748
d0052804:	d005a760 	.word	0xd005a760

d0052808 <lightSetIntensity>:
d0052808:	2800      	cmp	r0, #0
d005280a:	db08      	blt.n	d005281e <lightSetIntensity+0x16>
d005280c:	4b04      	ldr	r3, [pc, #16]	; (d0052820 <lightSetIntensity+0x18>)
d005280e:	681b      	ldr	r3, [r3, #0]
d0052810:	4283      	cmp	r3, r0
d0052812:	dd04      	ble.n	d005281e <lightSetIntensity+0x16>
d0052814:	4b03      	ldr	r3, [pc, #12]	; (d0052824 <lightSetIntensity+0x1c>)
d0052816:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005281a:	ed80 0a07 	vstr	s0, [r0, #28]
d005281e:	4770      	bx	lr
d0052820:	d005a748 	.word	0xd005a748
d0052824:	d005a760 	.word	0xd005a760

d0052828 <Render3DStandard>:
d0052828:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005282c:	2600      	movs	r6, #0
d005282e:	b088      	sub	sp, #32
d0052830:	4f2e      	ldr	r7, [pc, #184]	; (d00528ec <Render3DStandard+0xc4>)
d0052832:	0170      	lsls	r0, r6, #5
d0052834:	f7fc f8ea 	bl	d004ea0c <beginDepthBand>
d0052838:	683a      	ldr	r2, [r7, #0]
d005283a:	2a00      	cmp	r2, #0
d005283c:	dd50      	ble.n	d00528e0 <Render3DStandard+0xb8>
d005283e:	4c2c      	ldr	r4, [pc, #176]	; (d00528f0 <Render3DStandard+0xc8>)
d0052840:	2500      	movs	r5, #0
d0052842:	e01d      	b.n	d0052880 <Render3DStandard+0x58>
d0052844:	8c63      	ldrh	r3, [r4, #34]	; 0x22
d0052846:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d0052848:	9303      	str	r3, [sp, #12]
d005284a:	6963      	ldr	r3, [r4, #20]
d005284c:	8c20      	ldrh	r0, [r4, #32]
d005284e:	9301      	str	r3, [sp, #4]
d0052850:	6923      	ldr	r3, [r4, #16]
d0052852:	9205      	str	r2, [sp, #20]
d0052854:	9104      	str	r1, [sp, #16]
d0052856:	9002      	str	r0, [sp, #8]
d0052858:	9300      	str	r3, [sp, #0]
d005285a:	edd4 1a07 	vldr	s3, [r4, #28]
d005285e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0052862:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0052866:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005286a:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d005286e:	e9d4 0100 	ldrd	r0, r1, [r4]
d0052872:	f7fc f953 	bl	d004eb1c <fillTriangleDitherBayer>
d0052876:	683a      	ldr	r2, [r7, #0]
d0052878:	3501      	adds	r5, #1
d005287a:	3440      	adds	r4, #64	; 0x40
d005287c:	4295      	cmp	r5, r2
d005287e:	da2f      	bge.n	d00528e0 <Render3DStandard+0xb8>
d0052880:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0052884:	42b3      	cmp	r3, r6
d0052886:	dcf7      	bgt.n	d0052878 <Render3DStandard+0x50>
d0052888:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d005288c:	42b3      	cmp	r3, r6
d005288e:	dbf3      	blt.n	d0052878 <Render3DStandard+0x50>
d0052890:	f994 3034 	ldrsb.w	r3, [r4, #52]	; 0x34
d0052894:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0052898:	2b00      	cmp	r3, #0
d005289a:	dad3      	bge.n	d0052844 <Render3DStandard+0x1c>
d005289c:	8c63      	ldrh	r3, [r4, #34]	; 0x22
d005289e:	3501      	adds	r5, #1
d00528a0:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d00528a2:	9303      	str	r3, [sp, #12]
d00528a4:	6963      	ldr	r3, [r4, #20]
d00528a6:	8c20      	ldrh	r0, [r4, #32]
d00528a8:	f894 8036 	ldrb.w	r8, [r4, #54]	; 0x36
d00528ac:	9301      	str	r3, [sp, #4]
d00528ae:	6923      	ldr	r3, [r4, #16]
d00528b0:	edd4 1a07 	vldr	s3, [r4, #28]
d00528b4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00528b8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00528bc:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00528c0:	9205      	str	r2, [sp, #20]
d00528c2:	9104      	str	r1, [sp, #16]
d00528c4:	9002      	str	r0, [sp, #8]
d00528c6:	9300      	str	r3, [sp, #0]
d00528c8:	f8cd 8018 	str.w	r8, [sp, #24]
d00528cc:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00528d0:	e9d4 0100 	ldrd	r0, r1, [r4]
d00528d4:	f7fc ff8e 	bl	d004f7f4 <fillTriangleDitherBayerT>
d00528d8:	683a      	ldr	r2, [r7, #0]
d00528da:	3440      	adds	r4, #64	; 0x40
d00528dc:	4295      	cmp	r5, r2
d00528de:	dbcf      	blt.n	d0052880 <Render3DStandard+0x58>
d00528e0:	3601      	adds	r6, #1
d00528e2:	2e0a      	cmp	r6, #10
d00528e4:	d1a5      	bne.n	d0052832 <Render3DStandard+0xa>
d00528e6:	b008      	add	sp, #32
d00528e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00528ec:	d0068980 	.word	0xd0068980
d00528f0:	d00689a0 	.word	0xd00689a0

d00528f4 <submitClippedTri.constprop.0>:
d00528f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00528f8:	4d83      	ldr	r5, [pc, #524]	; (d0052b08 <submitClippedTri.constprop.0+0x214>)
d00528fa:	682c      	ldr	r4, [r5, #0]
d00528fc:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d0052900:	ed2d 8b04 	vpush	{d8-d9}
d0052904:	b08b      	sub	sp, #44	; 0x2c
d0052906:	f280 80f0 	bge.w	d0052aea <submitClippedTri.constprop.0+0x1f6>
d005290a:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d005290e:	edd0 6a14 	vldr	s13, [r0, #80]	; 0x50
d0052912:	eeb6 9a00 	vmov.f32	s18, #96	; 0x3f000000  0.5
d0052916:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d005291a:	ed90 6a12 	vldr	s12, [r0, #72]	; 0x48
d005291e:	ea4f 1c84 	mov.w	ip, r4, lsl #6
d0052922:	eec5 8a81 	vdiv.f32	s17, s11, s2
d0052926:	4b79      	ldr	r3, [pc, #484]	; (d0052b0c <submitClippedTri.constprop.0+0x218>)
d0052928:	f10c 0808 	add.w	r8, ip, #8
d005292c:	4693      	mov	fp, r2
d005292e:	eb03 1784 	add.w	r7, r3, r4, lsl #6
d0052932:	3401      	adds	r4, #1
d0052934:	f10c 0e10 	add.w	lr, ip, #16
d0052938:	f04f 0980 	mov.w	r9, #128	; 0x80
d005293c:	602c      	str	r4, [r5, #0]
d005293e:	eb03 0408 	add.w	r4, r3, r8
d0052942:	eec5 7aa2 	vdiv.f32	s15, s11, s5
d0052946:	eb03 0a0e 	add.w	sl, r3, lr
d005294a:	ed9f 5a71 	vldr	s10, [pc, #452]	; d0052b10 <submitClippedTri.constprop.0+0x21c>
d005294e:	ee76 6a89 	vadd.f32	s13, s13, s18
d0052952:	ee85 8a84 	vdiv.f32	s16, s11, s8
d0052956:	ee37 7a09 	vadd.f32	s14, s14, s18
d005295a:	ee68 0aa0 	vmul.f32	s1, s17, s1
d005295e:	ee28 0a80 	vmul.f32	s0, s17, s0
d0052962:	eef0 8a47 	vmov.f32	s17, s14
d0052966:	ee67 1aa1 	vmul.f32	s3, s15, s3
d005296a:	ee27 2a82 	vmul.f32	s4, s15, s4
d005296e:	eef0 7a66 	vmov.f32	s15, s13
d0052972:	eee6 8a00 	vfma.f32	s17, s12, s0
d0052976:	ed9f 0a67 	vldr	s0, [pc, #412]	; d0052b14 <submitClippedTri.constprop.0+0x220>
d005297a:	eee6 7a60 	vfms.f32	s15, s12, s1
d005297e:	eef0 0a47 	vmov.f32	s1, s14
d0052982:	ee28 3a03 	vmul.f32	s6, s16, s6
d0052986:	ee68 3a23 	vmul.f32	s7, s16, s7
d005298a:	eee6 0a21 	vfma.f32	s1, s12, s3
d005298e:	eea6 7a03 	vfma.f32	s14, s12, s6
d0052992:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052996:	eefd 8ae8 	vcvt.s32.f32	s17, s17
d005299a:	ee17 5a90 	vmov	r5, s15
d005299e:	eef0 1a60 	vmov.f32	s3, s1
d00529a2:	ee18 6a90 	vmov	r6, s17
d00529a6:	eef0 0a66 	vmov.f32	s1, s13
d00529aa:	eee6 6a63 	vfms.f32	s13, s12, s7
d00529ae:	f843 600c 	str.w	r6, [r3, ip]
d00529b2:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d00529b6:	607d      	str	r5, [r7, #4]
d00529b8:	eee6 0a42 	vfms.f32	s1, s12, s4
d00529bc:	b22d      	sxth	r5, r5
d00529be:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00529c2:	ee11 2a90 	vmov	r2, s3
d00529c6:	f843 2008 	str.w	r2, [r3, r8]
d00529ca:	ee17 2a10 	vmov	r2, s14
d00529ce:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d00529d2:	edc4 7a01 	vstr	s15, [r4, #4]
d00529d6:	ee17 6a90 	vmov	r6, s15
d00529da:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00529de:	f843 200e 	str.w	r2, [r3, lr]
d00529e2:	42ae      	cmp	r6, r5
d00529e4:	46ae      	mov	lr, r5
d00529e6:	edca 7a01 	vstr	s15, [sl, #4]
d00529ea:	ee17 4a90 	vmov	r4, s15
d00529ee:	f887 1034 	strb.w	r1, [r7, #52]	; 0x34
d00529f2:	f887 b035 	strb.w	fp, [r7, #53]	; 0x35
d00529f6:	edc7 4a07 	vstr	s9, [r7, #28]
d00529fa:	f887 9036 	strb.w	r9, [r7, #54]	; 0x36
d00529fe:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0052a02:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0052a06:	ee31 7a47 	vsub.f32	s14, s2, s14
d0052a0a:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052a0e:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0052a12:	fe87 7a65 	vminnm.f32	s14, s14, s11
d0052a16:	ee27 7a00 	vmul.f32	s14, s14, s0
d0052a1a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052a1e:	ee17 2a10 	vmov	r2, s14
d0052a22:	843a      	strh	r2, [r7, #32]
d0052a24:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0052a28:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0052a2c:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0052a30:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052a34:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0052a38:	fe87 7a65 	vminnm.f32	s14, s14, s11
d0052a3c:	ee27 7a00 	vmul.f32	s14, s14, s0
d0052a40:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052a44:	ee17 2a10 	vmov	r2, s14
d0052a48:	847a      	strh	r2, [r7, #34]	; 0x22
d0052a4a:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0052a4e:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0052a52:	ee74 7a67 	vsub.f32	s15, s8, s15
d0052a56:	ed87 1a0a 	vstr	s2, [r7, #40]	; 0x28
d0052a5a:	edc7 2a0b 	vstr	s5, [r7, #44]	; 0x2c
d0052a5e:	ed87 4a0c 	vstr	s8, [r7, #48]	; 0x30
d0052a62:	ee67 7a87 	vmul.f32	s15, s15, s14
d0052a66:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0052a6a:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d0052a6e:	ee67 7a80 	vmul.f32	s15, s15, s0
d0052a72:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052a76:	ee17 2a90 	vmov	r2, s15
d0052a7a:	84ba      	strh	r2, [r7, #36]	; 0x24
d0052a7c:	db3a      	blt.n	d0052af4 <submitClippedTri.constprop.0+0x200>
d0052a7e:	462a      	mov	r2, r5
d0052a80:	873d      	strh	r5, [r7, #56]	; 0x38
d0052a82:	42a2      	cmp	r2, r4
d0052a84:	dd02      	ble.n	d0052a8c <submitClippedTri.constprop.0+0x198>
d0052a86:	eb03 020c 	add.w	r2, r3, ip
d0052a8a:	8714      	strh	r4, [r2, #56]	; 0x38
d0052a8c:	42ae      	cmp	r6, r5
d0052a8e:	dc35      	bgt.n	d0052afc <submitClippedTri.constprop.0+0x208>
d0052a90:	eb03 020c 	add.w	r2, r3, ip
d0052a94:	8755      	strh	r5, [r2, #58]	; 0x3a
d0052a96:	45a6      	cmp	lr, r4
d0052a98:	da02      	bge.n	d0052aa0 <submitClippedTri.constprop.0+0x1ac>
d0052a9a:	eb03 020c 	add.w	r2, r3, ip
d0052a9e:	8754      	strh	r4, [r2, #58]	; 0x3a
d0052aa0:	eb03 020c 	add.w	r2, r3, ip
d0052aa4:	f9b2 1038 	ldrsh.w	r1, [r2, #56]	; 0x38
d0052aa8:	2900      	cmp	r1, #0
d0052aaa:	da01      	bge.n	d0052ab0 <submitClippedTri.constprop.0+0x1bc>
d0052aac:	2100      	movs	r1, #0
d0052aae:	8711      	strh	r1, [r2, #56]	; 0x38
d0052ab0:	eb03 020c 	add.w	r2, r3, ip
d0052ab4:	f9b2 103a 	ldrsh.w	r1, [r2, #58]	; 0x3a
d0052ab8:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0052abc:	db02      	blt.n	d0052ac4 <submitClippedTri.constprop.0+0x1d0>
d0052abe:	f240 113f 	movw	r1, #319	; 0x13f
d0052ac2:	8751      	strh	r1, [r2, #58]	; 0x3a
d0052ac4:	eb03 000c 	add.w	r0, r3, ip
d0052ac8:	4463      	add	r3, ip
d0052aca:	f9b0 2038 	ldrsh.w	r2, [r0, #56]	; 0x38
d0052ace:	2a00      	cmp	r2, #0
d0052ad0:	bfb8      	it	lt
d0052ad2:	321f      	addlt	r2, #31
d0052ad4:	1151      	asrs	r1, r2, #5
d0052ad6:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d0052ada:	2a00      	cmp	r2, #0
d0052adc:	f880 103c 	strb.w	r1, [r0, #60]	; 0x3c
d0052ae0:	bfb8      	it	lt
d0052ae2:	321f      	addlt	r2, #31
d0052ae4:	1152      	asrs	r2, r2, #5
d0052ae6:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
d0052aea:	b00b      	add	sp, #44	; 0x2c
d0052aec:	ecbd 8b04 	vpop	{d8-d9}
d0052af0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052af4:	b231      	sxth	r1, r6
d0052af6:	460a      	mov	r2, r1
d0052af8:	8739      	strh	r1, [r7, #56]	; 0x38
d0052afa:	e7c2      	b.n	d0052a82 <submitClippedTri.constprop.0+0x18e>
d0052afc:	b236      	sxth	r6, r6
d0052afe:	eb03 020c 	add.w	r2, r3, ip
d0052b02:	46b6      	mov	lr, r6
d0052b04:	8756      	strh	r6, [r2, #58]	; 0x3a
d0052b06:	e7c6      	b.n	d0052a96 <submitClippedTri.constprop.0+0x1a2>
d0052b08:	d0068980 	.word	0xd0068980
d0052b0c:	d00689a0 	.word	0xd00689a0
d0052b10:	00000000 	.word	0x00000000
d0052b14:	477fff00 	.word	0x477fff00

d0052b18 <sb3dParticlesRender.part.0>:
d0052b18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052b1c:	edd0 7a00 	vldr	s15, [r0]
d0052b20:	4605      	mov	r5, r0
d0052b22:	4c1a      	ldr	r4, [pc, #104]	; (d0052b8c <sb3dParticlesRender.part.0+0x74>)
d0052b24:	f8df b068 	ldr.w	fp, [pc, #104]	; d0052b90 <sb3dParticlesRender.part.0+0x78>
d0052b28:	f504 5800 	add.w	r8, r4, #8192	; 0x2000
d0052b2c:	ed2d 8b10 	vpush	{d8-d15}
d0052b30:	b0d9      	sub	sp, #356	; 0x164
d0052b32:	ed90 ea06 	vldr	s28, [r0, #24]
d0052b36:	edd0 aa09 	vldr	s21, [r0, #36]	; 0x24
d0052b3a:	edcd 7a17 	vstr	s15, [sp, #92]	; 0x5c
d0052b3e:	edd0 7a01 	vldr	s15, [r0, #4]
d0052b42:	ed90 aa0a 	vldr	s20, [r0, #40]	; 0x28
d0052b46:	edcd 7a18 	vstr	s15, [sp, #96]	; 0x60
d0052b4a:	edd0 7a02 	vldr	s15, [r0, #8]
d0052b4e:	edd0 9a0b 	vldr	s19, [r0, #44]	; 0x2c
d0052b52:	edcd 7a19 	vstr	s15, [sp, #100]	; 0x64
d0052b56:	edd0 7a07 	vldr	s15, [r0, #28]
d0052b5a:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0052b5e:	edcd 7a1a 	vstr	s15, [sp, #104]	; 0x68
d0052b62:	edd0 7a08 	vldr	s15, [r0, #32]
d0052b66:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d0052b6a:	edcd 7a1b 	vstr	s15, [sp, #108]	; 0x6c
d0052b6e:	ed90 ba0e 	vldr	s22, [r0, #56]	; 0x38
d0052b72:	edd0 ca10 	vldr	s25, [r0, #64]	; 0x40
d0052b76:	f7ff fd9b 	bl	d00526b0 <lightsGet>
d0052b7a:	4606      	mov	r6, r0
d0052b7c:	901d      	str	r0, [sp, #116]	; 0x74
d0052b7e:	f7ff fd9b 	bl	d00526b8 <lightsGetCount>
d0052b82:	901c      	str	r0, [sp, #112]	; 0x70
d0052b84:	eb06 1a80 	add.w	sl, r6, r0, lsl #6
d0052b88:	e177      	b.n	d0052e7a <sb3dParticlesRender.part.0+0x362>
d0052b8a:	bf00      	nop
d0052b8c:	d0066980 	.word	0xd0066980
d0052b90:	d0066960 	.word	0xd0066960
d0052b94:	00000000 	.word	0x00000000
d0052b98:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0052b9c:	edd4 ea04 	vldr	s29, [r4, #16]
d0052ba0:	ed1f 5a04 	vldr	s10, [pc, #-16]	; d0052b94 <sb3dParticlesRender.part.0+0x7c>
d0052ba4:	fece ea85 	vmaxnm.f32	s29, s29, s10
d0052ba8:	fece eac7 	vminnm.f32	s29, s29, s14
d0052bac:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0052bb0:	eddd 3a1b 	vldr	s7, [sp, #108]	; 0x6c
d0052bb4:	eeb0 4a46 	vmov.f32	s8, s12
d0052bb8:	f105 0610 	add.w	r6, r5, #16
d0052bbc:	eef0 4a66 	vmov.f32	s9, s13
d0052bc0:	2250      	movs	r2, #80	; 0x50
d0052bc2:	ee67 7a87 	vmul.f32	s15, s15, s14
d0052bc6:	ed9d 7a1a 	vldr	s14, [sp, #104]	; 0x68
d0052bca:	eeb0 5a65 	vmov.f32	s10, s11
d0052bce:	4631      	mov	r1, r6
d0052bd0:	4668      	mov	r0, sp
d0052bd2:	eeae 6a27 	vfma.f32	s12, s28, s15
d0052bd6:	eee7 4a67 	vfms.f32	s9, s14, s15
d0052bda:	eee7 6a27 	vfma.f32	s13, s14, s15
d0052bde:	eeb0 7a65 	vmov.f32	s14, s11
d0052be2:	eea3 5ae7 	vfms.f32	s10, s7, s15
d0052be6:	eeae 4a67 	vfms.f32	s8, s28, s15
d0052bea:	eea3 7aa7 	vfma.f32	s14, s7, s15
d0052bee:	eef0 3a46 	vmov.f32	s7, s12
d0052bf2:	eeaa 6ae7 	vfms.f32	s12, s21, s15
d0052bf6:	eef0 fa64 	vmov.f32	s31, s9
d0052bfa:	eef0 5a66 	vmov.f32	s11, s13
d0052bfe:	eeb0 8a44 	vmov.f32	s16, s8
d0052c02:	eeb0 fa45 	vmov.f32	s30, s10
d0052c06:	eeea fa27 	vfma.f32	s31, s20, s15
d0052c0a:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d0052c0e:	eeb0 6a47 	vmov.f32	s12, s14
d0052c12:	eeaa 8aa7 	vfma.f32	s16, s21, s15
d0052c16:	eea9 faa7 	vfma.f32	s30, s19, s15
d0052c1a:	eeaa 4ae7 	vfms.f32	s8, s21, s15
d0052c1e:	eeea 3aa7 	vfma.f32	s7, s21, s15
d0052c22:	eeea 4a67 	vfms.f32	s9, s20, s15
d0052c26:	edcd fa20 	vstr	s31, [sp, #128]	; 0x80
d0052c2a:	eeea 5a27 	vfma.f32	s11, s20, s15
d0052c2e:	eeea 6a67 	vfms.f32	s13, s20, s15
d0052c32:	ed8d 8a1f 	vstr	s16, [sp, #124]	; 0x7c
d0052c36:	eea9 5ae7 	vfms.f32	s10, s19, s15
d0052c3a:	ed8d fa21 	vstr	s30, [sp, #132]	; 0x84
d0052c3e:	eea9 6aa7 	vfma.f32	s12, s19, s15
d0052c42:	ed8d 4a28 	vstr	s8, [sp, #160]	; 0xa0
d0052c46:	eea9 7ae7 	vfms.f32	s14, s19, s15
d0052c4a:	edcd 3a22 	vstr	s7, [sp, #136]	; 0x88
d0052c4e:	edcd 4a29 	vstr	s9, [sp, #164]	; 0xa4
d0052c52:	edcd 5a23 	vstr	s11, [sp, #140]	; 0x8c
d0052c56:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d0052c5a:	ed8d 5a2a 	vstr	s10, [sp, #168]	; 0xa8
d0052c5e:	ed8d 6a24 	vstr	s12, [sp, #144]	; 0x90
d0052c62:	ed8d 7a27 	vstr	s14, [sp, #156]	; 0x9c
d0052c66:	f002 fd2d 	bl	d00556c4 <memcpy>
d0052c6a:	eeb0 1a4f 	vmov.f32	s2, s30
d0052c6e:	eeb0 0a48 	vmov.f32	s0, s16
d0052c72:	eef0 0a6f 	vmov.f32	s1, s31
d0052c76:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052c7a:	f7fe f87f 	bl	d0050d7c <worldToCamera>
d0052c7e:	eeb0 fa41 	vmov.f32	s30, s2
d0052c82:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0052c86:	4631      	mov	r1, r6
d0052c88:	ed9d 8a22 	vldr	s16, [sp, #136]	; 0x88
d0052c8c:	2250      	movs	r2, #80	; 0x50
d0052c8e:	eddd fa23 	vldr	s31, [sp, #140]	; 0x8c
d0052c92:	4668      	mov	r0, sp
d0052c94:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052c98:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0052c9c:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0052ca0:	ed8d fa2d 	vstr	s30, [sp, #180]	; 0xb4
d0052ca4:	f002 fd0e 	bl	d00556c4 <memcpy>
d0052ca8:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052cac:	eeb0 0a48 	vmov.f32	s0, s16
d0052cb0:	eef0 0a6f 	vmov.f32	s1, s31
d0052cb4:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052cb8:	f7fe f860 	bl	d0050d7c <worldToCamera>
d0052cbc:	eef0 2a41 	vmov.f32	s5, s2
d0052cc0:	ed9d 1a27 	vldr	s2, [sp, #156]	; 0x9c
d0052cc4:	4631      	mov	r1, r6
d0052cc6:	ed9d 8a25 	vldr	s16, [sp, #148]	; 0x94
d0052cca:	2250      	movs	r2, #80	; 0x50
d0052ccc:	eddd fa26 	vldr	s31, [sp, #152]	; 0x98
d0052cd0:	4668      	mov	r0, sp
d0052cd2:	edcd 2a30 	vstr	s5, [sp, #192]	; 0xc0
d0052cd6:	edcd 2a16 	vstr	s5, [sp, #88]	; 0x58
d0052cda:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052cde:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d0052ce2:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d0052ce6:	f002 fced 	bl	d00556c4 <memcpy>
d0052cea:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052cee:	eeb0 0a48 	vmov.f32	s0, s16
d0052cf2:	eef0 0a6f 	vmov.f32	s1, s31
d0052cf6:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052cfa:	f7fe f83f 	bl	d0050d7c <worldToCamera>
d0052cfe:	eef0 8a41 	vmov.f32	s17, s2
d0052d02:	eddd fa29 	vldr	s31, [sp, #164]	; 0xa4
d0052d06:	4631      	mov	r1, r6
d0052d08:	ed9d 1a2a 	vldr	s2, [sp, #168]	; 0xa8
d0052d0c:	2250      	movs	r2, #80	; 0x50
d0052d0e:	ed9d 8a28 	vldr	s16, [sp, #160]	; 0xa0
d0052d12:	4668      	mov	r0, sp
d0052d14:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052d18:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d0052d1c:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d0052d20:	edcd 8a33 	vstr	s17, [sp, #204]	; 0xcc
d0052d24:	f002 fcce 	bl	d00556c4 <memcpy>
d0052d28:	eef0 0a6f 	vmov.f32	s1, s31
d0052d2c:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052d30:	eeb0 0a48 	vmov.f32	s0, s16
d0052d34:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052d38:	f7fe f820 	bl	d0050d7c <worldToCamera>
d0052d3c:	eef4 cacf 	vcmpe.f32	s25, s30
d0052d40:	eef0 fa41 	vmov.f32	s31, s2
d0052d44:	eddd 2a16 	vldr	s5, [sp, #88]	; 0x58
d0052d48:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d0052d4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d50:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d0052d54:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d0052d58:	db0e      	blt.n	d0052d78 <sb3dParticlesRender.part.0+0x260>
d0052d5a:	eef4 cae2 	vcmpe.f32	s25, s5
d0052d5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d62:	db09      	blt.n	d0052d78 <sb3dParticlesRender.part.0+0x260>
d0052d64:	eef4 cae8 	vcmpe.f32	s25, s17
d0052d68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d6c:	db04      	blt.n	d0052d78 <sb3dParticlesRender.part.0+0x260>
d0052d6e:	eef4 cac1 	vcmpe.f32	s25, s2
d0052d72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d76:	da7c      	bge.n	d0052e72 <sb3dParticlesRender.part.0+0x35a>
d0052d78:	4ed6      	ldr	r6, [pc, #856]	; (d00530d4 <sb3dParticlesRender.part.0+0x5bc>)
d0052d7a:	eeb0 4a68 	vmov.f32	s8, s17
d0052d7e:	ed9d da2b 	vldr	s26, [sp, #172]	; 0xac
d0052d82:	eeb0 1a4f 	vmov.f32	s2, s30
d0052d86:	7c33      	ldrb	r3, [r6, #16]
d0052d88:	a840      	add	r0, sp, #256	; 0x100
d0052d8a:	7c72      	ldrb	r2, [r6, #17]
d0052d8c:	eeb0 0a4d 	vmov.f32	s0, s26
d0052d90:	7cb7      	ldrb	r7, [r6, #18]
d0052d92:	4629      	mov	r1, r5
d0052d94:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0052d98:	7cf2      	ldrb	r2, [r6, #19]
d0052d9a:	ed9d 9a2c 	vldr	s18, [sp, #176]	; 0xb0
d0052d9e:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0052da2:	eddd da31 	vldr	s27, [sp, #196]	; 0xc4
d0052da6:	ed9d 8a32 	vldr	s16, [sp, #200]	; 0xc8
d0052daa:	eef0 0a49 	vmov.f32	s1, s18
d0052dae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052db2:	f8df 9334 	ldr.w	r9, [pc, #820]	; d00530e8 <sb3dParticlesRender.part.0+0x5d0>
d0052db6:	eddd 1a2e 	vldr	s3, [sp, #184]	; 0xb8
d0052dba:	eeb0 3a6d 	vmov.f32	s6, s27
d0052dbe:	681b      	ldr	r3, [r3, #0]
d0052dc0:	eef0 3a48 	vmov.f32	s7, s16
d0052dc4:	ed9d 2a2f 	vldr	s4, [sp, #188]	; 0xbc
d0052dc8:	681f      	ldr	r7, [r3, #0]
d0052dca:	f8db 2000 	ldr.w	r2, [fp]
d0052dce:	f8d9 3000 	ldr.w	r3, [r9]
d0052dd2:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d0052dd6:	edcd 2a3c 	vstr	s5, [sp, #240]	; 0xf0
d0052dda:	edcd 8a3f 	vstr	s17, [sp, #252]	; 0xfc
d0052dde:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d0052de2:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d0052de6:	edcd 1a3a 	vstr	s3, [sp, #232]	; 0xe8
d0052dea:	ed8d 2a3b 	vstr	s4, [sp, #236]	; 0xec
d0052dee:	edcd da3d 	vstr	s27, [sp, #244]	; 0xf4
d0052df2:	ed8d 8a3e 	vstr	s16, [sp, #248]	; 0xf8
d0052df6:	47b8      	blx	r7
d0052df8:	2802      	cmp	r0, #2
d0052dfa:	f300 8179 	bgt.w	d00530f0 <sb3dParticlesRender.part.0+0x5d8>
d0052dfe:	7c31      	ldrb	r1, [r6, #16]
d0052e00:	eeb0 0a4d 	vmov.f32	s0, s26
d0052e04:	7c72      	ldrb	r2, [r6, #17]
d0052e06:	eef0 0a49 	vmov.f32	s1, s18
d0052e0a:	7cb3      	ldrb	r3, [r6, #18]
d0052e0c:	eeb0 1a4f 	vmov.f32	s2, s30
d0052e10:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0052e14:	7cf2      	ldrb	r2, [r6, #19]
d0052e16:	ed9d 3a34 	vldr	s6, [sp, #208]	; 0xd0
d0052e1a:	eef0 1a6d 	vmov.f32	s3, s27
d0052e1e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0052e22:	eddd 3a35 	vldr	s7, [sp, #212]	; 0xd4
d0052e26:	eeb0 2a48 	vmov.f32	s4, s16
d0052e2a:	a840      	add	r0, sp, #256	; 0x100
d0052e2c:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0052e30:	eef0 2a68 	vmov.f32	s5, s17
d0052e34:	eeb0 4a6f 	vmov.f32	s8, s31
d0052e38:	f8d9 3000 	ldr.w	r3, [r9]
d0052e3c:	680e      	ldr	r6, [r1, #0]
d0052e3e:	4629      	mov	r1, r5
d0052e40:	f8db 2000 	ldr.w	r2, [fp]
d0052e44:	6836      	ldr	r6, [r6, #0]
d0052e46:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d0052e4a:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d0052e4e:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d0052e52:	edcd da3a 	vstr	s27, [sp, #232]	; 0xe8
d0052e56:	ed8d 8a3b 	vstr	s16, [sp, #236]	; 0xec
d0052e5a:	edcd 8a3c 	vstr	s17, [sp, #240]	; 0xf0
d0052e5e:	edcd fa3f 	vstr	s31, [sp, #252]	; 0xfc
d0052e62:	ed8d 3a3d 	vstr	s6, [sp, #244]	; 0xf4
d0052e66:	edcd 3a3e 	vstr	s7, [sp, #248]	; 0xf8
d0052e6a:	47b0      	blx	r6
d0052e6c:	2802      	cmp	r0, #2
d0052e6e:	f300 80fd 	bgt.w	d005306c <sb3dParticlesRender.part.0+0x554>
d0052e72:	3420      	adds	r4, #32
d0052e74:	45a0      	cmp	r8, r4
d0052e76:	f000 8128 	beq.w	d00530ca <sb3dParticlesRender.part.0+0x5b2>
d0052e7a:	7ea3      	ldrb	r3, [r4, #26]
d0052e7c:	2b00      	cmp	r3, #0
d0052e7e:	d0f8      	beq.n	d0052e72 <sb3dParticlesRender.part.0+0x35a>
d0052e80:	edd4 7a03 	vldr	s15, [r4, #12]
d0052e84:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0052e88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e8c:	d9f1      	bls.n	d0052e72 <sb3dParticlesRender.part.0+0x35a>
d0052e8e:	edd4 6a01 	vldr	s13, [r4, #4]
d0052e92:	eeb1 5a67 	vneg.f32	s10, s15
d0052e96:	ed9d 7a18 	vldr	s14, [sp, #96]	; 0x60
d0052e9a:	eddd 4a17 	vldr	s9, [sp, #92]	; 0x5c
d0052e9e:	ee36 7ac7 	vsub.f32	s14, s13, s14
d0052ea2:	ed94 6a00 	vldr	s12, [r4]
d0052ea6:	edd4 5a02 	vldr	s11, [r4, #8]
d0052eaa:	ee36 4a64 	vsub.f32	s8, s12, s9
d0052eae:	eddd 4a19 	vldr	s9, [sp, #100]	; 0x64
d0052eb2:	ee27 7a2b 	vmul.f32	s14, s14, s23
d0052eb6:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0052eba:	eeac 7a04 	vfma.f32	s14, s24, s8
d0052ebe:	eeab 7a24 	vfma.f32	s14, s22, s9
d0052ec2:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0052ec6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052eca:	d9d2      	bls.n	d0052e72 <sb3dParticlesRender.part.0+0x35a>
d0052ecc:	ed94 7a05 	vldr	s14, [r4, #20]
d0052ed0:	ed9f 5a81 	vldr	s10, [pc, #516]	; d00530d8 <sb3dParticlesRender.part.0+0x5c0>
d0052ed4:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0052ed8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052edc:	f67f ae5c 	bls.w	d0052b98 <sb3dParticlesRender.part.0+0x80>
d0052ee0:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d0052ee2:	2b00      	cmp	r3, #0
d0052ee4:	f340 8092 	ble.w	d005300c <sb3dParticlesRender.part.0+0x4f4>
d0052ee8:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0052eec:	9b1d      	ldr	r3, [sp, #116]	; 0x74
d0052eee:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0052ef2:	ed9f 0a7a 	vldr	s0, [pc, #488]	; d00530dc <sb3dParticlesRender.part.0+0x5c4>
d0052ef6:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0052efa:	e072      	b.n	d0052fe2 <sb3dParticlesRender.part.0+0x4ca>
d0052efc:	edd3 7a02 	vldr	s15, [r3, #8]
d0052f00:	edd3 4a01 	vldr	s9, [r3, #4]
d0052f04:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0052f08:	ed93 5a03 	vldr	s10, [r3, #12]
d0052f0c:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0052f10:	edd3 2a0a 	vldr	s5, [r3, #40]	; 0x28
d0052f14:	ee35 5a65 	vsub.f32	s10, s10, s11
d0052f18:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0052f1c:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0052f20:	eea4 7aa4 	vfma.f32	s14, s9, s9
d0052f24:	eea5 7a05 	vfma.f32	s14, s10, s10
d0052f28:	eeb4 7a42 	vcmp.f32	s14, s4
d0052f2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f30:	d554      	bpl.n	d0052fdc <sb3dParticlesRender.part.0+0x4c4>
d0052f32:	ed9f 2a6b 	vldr	s4, [pc, #428]	; d00530e0 <sb3dParticlesRender.part.0+0x5c8>
d0052f36:	eeb4 7a42 	vcmp.f32	s14, s4
d0052f3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f3e:	dd4d      	ble.n	d0052fdc <sb3dParticlesRender.part.0+0x4c4>
d0052f40:	eef1 0ac7 	vsqrt.f32	s1, s14
d0052f44:	edd3 1a08 	vldr	s3, [r3, #32]
d0052f48:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0052f4c:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0052f50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f54:	ee84 2a20 	vdiv.f32	s4, s8, s1
d0052f58:	ee64 4a82 	vmul.f32	s9, s9, s4
d0052f5c:	ee67 7a82 	vmul.f32	s15, s15, s4
d0052f60:	ee25 5a02 	vmul.f32	s10, s10, s4
d0052f64:	f240 80fb 	bls.w	d005315e <sb3dParticlesRender.part.0+0x646>
d0052f68:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0052f6c:	eef4 1ac1 	vcmpe.f32	s3, s2
d0052f70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f74:	da32      	bge.n	d0052fdc <sb3dParticlesRender.part.0+0x4c4>
d0052f76:	eef4 2ac1 	vcmpe.f32	s5, s2
d0052f7a:	ee27 7a02 	vmul.f32	s14, s14, s4
d0052f7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f82:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0052f86:	f200 80ed 	bhi.w	d0053164 <sb3dParticlesRender.part.0+0x64c>
d0052f8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f8e:	da25      	bge.n	d0052fdc <sb3dParticlesRender.part.0+0x4c4>
d0052f90:	ee37 7a61 	vsub.f32	s14, s14, s3
d0052f94:	ee31 2a61 	vsub.f32	s4, s2, s3
d0052f98:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0052f9c:	ed9f 7a53 	vldr	s14, [pc, #332]	; d00530ec <sb3dParticlesRender.part.0+0x5d4>
d0052fa0:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0052fa4:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0052fa8:	ee34 7a47 	vsub.f32	s14, s8, s14
d0052fac:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0052fb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052fb4:	d912      	bls.n	d0052fdc <sb3dParticlesRender.part.0+0x4c4>
d0052fb6:	ee6b 7aa7 	vmul.f32	s15, s23, s15
d0052fba:	eeec 7a24 	vfma.f32	s15, s24, s9
d0052fbe:	eeeb 7a05 	vfma.f32	s15, s22, s10
d0052fc2:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0052fc6:	eeb1 5a67 	vneg.f32	s10, s15
d0052fca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052fce:	da05      	bge.n	d0052fdc <sb3dParticlesRender.part.0+0x4c4>
d0052fd0:	edd3 7a07 	vldr	s15, [r3, #28]
d0052fd4:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052fd8:	eea5 0a07 	vfma.f32	s0, s10, s14
d0052fdc:	3340      	adds	r3, #64	; 0x40
d0052fde:	459a      	cmp	sl, r3
d0052fe0:	d016      	beq.n	d0053010 <sb3dParticlesRender.part.0+0x4f8>
d0052fe2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0052fe4:	2a00      	cmp	r2, #0
d0052fe6:	d0f9      	beq.n	d0052fdc <sb3dParticlesRender.part.0+0x4c4>
d0052fe8:	781a      	ldrb	r2, [r3, #0]
d0052fea:	2a00      	cmp	r2, #0
d0052fec:	d086      	beq.n	d0052efc <sb3dParticlesRender.part.0+0x3e4>
d0052fee:	edd3 4a04 	vldr	s9, [r3, #16]
d0052ff2:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0052ff6:	edd3 7a05 	vldr	s15, [r3, #20]
d0052ffa:	ed93 5a06 	vldr	s10, [r3, #24]
d0052ffe:	eef1 4a64 	vneg.f32	s9, s9
d0053002:	eef1 7a67 	vneg.f32	s15, s15
d0053006:	eeb1 5a45 	vneg.f32	s10, s10
d005300a:	e7d4      	b.n	d0052fb6 <sb3dParticlesRender.part.0+0x49e>
d005300c:	ed9f 0a33 	vldr	s0, [pc, #204]	; d00530dc <sb3dParticlesRender.part.0+0x5c4>
d0053010:	7e63      	ldrb	r3, [r4, #25]
d0053012:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0053016:	ed9f 7a33 	vldr	s14, [pc, #204]	; d00530e4 <sb3dParticlesRender.part.0+0x5cc>
d005301a:	ee07 3a90 	vmov	s15, r3
d005301e:	ed9f 8a33 	vldr	s16, [pc, #204]	; d00530ec <sb3dParticlesRender.part.0+0x5d4>
d0053022:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0053026:	ee67 7a87 	vmul.f32	s15, s15, s14
d005302a:	fec7 7a88 	vmaxnm.f32	s15, s15, s16
d005302e:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0053032:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0053036:	f7ff fb0f 	bl	d0052658 <brightnessToShadeF>
d005303a:	edd4 ea05 	vldr	s29, [r4, #20]
d005303e:	ed94 5a04 	vldr	s10, [r4, #16]
d0053042:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0053046:	ee3f fa6e 	vsub.f32	s30, s30, s29
d005304a:	edd4 7a03 	vldr	s15, [r4, #12]
d005304e:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0053052:	ed94 6a00 	vldr	s12, [r4]
d0053056:	edd4 6a01 	vldr	s13, [r4, #4]
d005305a:	edd4 5a02 	vldr	s11, [r4, #8]
d005305e:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0053062:	fece ea88 	vmaxnm.f32	s29, s29, s16
d0053066:	fece eac7 	vminnm.f32	s29, s29, s14
d005306a:	e59f      	b.n	d0052bac <sb3dParticlesRender.part.0+0x94>
d005306c:	eef0 4a6e 	vmov.f32	s9, s29
d0053070:	1e46      	subs	r6, r0, #1
d0053072:	2701      	movs	r7, #1
d0053074:	463b      	mov	r3, r7
d0053076:	aa58      	add	r2, sp, #352	; 0x160
d0053078:	3701      	adds	r7, #1
d005307a:	a858      	add	r0, sp, #352	; 0x160
d005307c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0053080:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0053084:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0053088:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d005308c:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0053090:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0053094:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0053098:	7e62      	ldrb	r2, [r4, #25]
d005309a:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d005309e:	4628      	mov	r0, r5
d00530a0:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d00530a4:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d00530a8:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d00530ac:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d00530b0:	ed9c 2a01 	vldr	s4, [ip, #4]
d00530b4:	7e21      	ldrb	r1, [r4, #24]
d00530b6:	eddc 2a02 	vldr	s5, [ip, #8]
d00530ba:	f7ff fc1b 	bl	d00528f4 <submitClippedTri.constprop.0>
d00530be:	42b7      	cmp	r7, r6
d00530c0:	d1d8      	bne.n	d0053074 <sb3dParticlesRender.part.0+0x55c>
d00530c2:	3420      	adds	r4, #32
d00530c4:	45a0      	cmp	r8, r4
d00530c6:	f47f aed8 	bne.w	d0052e7a <sb3dParticlesRender.part.0+0x362>
d00530ca:	b059      	add	sp, #356	; 0x164
d00530cc:	ecbd 8b10 	vpop	{d8-d15}
d00530d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00530d4:	2001f000 	.word	0x2001f000
d00530d8:	38d1b717 	.word	0x38d1b717
d00530dc:	3dcccccd 	.word	0x3dcccccd
d00530e0:	358637bd 	.word	0x358637bd
d00530e4:	3b808081 	.word	0x3b808081
d00530e8:	d0066964 	.word	0xd0066964
d00530ec:	00000000 	.word	0x00000000
d00530f0:	1e43      	subs	r3, r0, #1
d00530f2:	eef0 4a6e 	vmov.f32	s9, s29
d00530f6:	f8cd a054 	str.w	sl, [sp, #84]	; 0x54
d00530fa:	2701      	movs	r7, #1
d00530fc:	46aa      	mov	sl, r5
d00530fe:	4625      	mov	r5, r4
d0053100:	461c      	mov	r4, r3
d0053102:	463b      	mov	r3, r7
d0053104:	aa58      	add	r2, sp, #352	; 0x160
d0053106:	3701      	adds	r7, #1
d0053108:	a858      	add	r0, sp, #352	; 0x160
d005310a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d005310e:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0053112:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0053116:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d005311a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d005311e:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0053122:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0053126:	7e6a      	ldrb	r2, [r5, #25]
d0053128:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d005312c:	4650      	mov	r0, sl
d005312e:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0053132:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0053136:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d005313a:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d005313e:	ed9c 2a01 	vldr	s4, [ip, #4]
d0053142:	7e29      	ldrb	r1, [r5, #24]
d0053144:	eddc 2a02 	vldr	s5, [ip, #8]
d0053148:	f7ff fbd4 	bl	d00528f4 <submitClippedTri.constprop.0>
d005314c:	42a7      	cmp	r7, r4
d005314e:	d1d8      	bne.n	d0053102 <sb3dParticlesRender.part.0+0x5ea>
d0053150:	462c      	mov	r4, r5
d0053152:	eef0 ea64 	vmov.f32	s29, s9
d0053156:	4655      	mov	r5, sl
d0053158:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
d005315c:	e64f      	b.n	d0052dfe <sb3dParticlesRender.part.0+0x2e6>
d005315e:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0053162:	e728      	b.n	d0052fb6 <sb3dParticlesRender.part.0+0x49e>
d0053164:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053168:	d812      	bhi.n	d0053190 <sb3dParticlesRender.part.0+0x678>
d005316a:	ee37 7a61 	vsub.f32	s14, s14, s3
d005316e:	ee31 2a61 	vsub.f32	s4, s2, s3
d0053172:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0053176:	ed1f 7a23 	vldr	s14, [pc, #-140]	; d00530ec <sb3dParticlesRender.part.0+0x5d4>
d005317a:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d005317e:	eef0 2a44 	vmov.f32	s5, s8
d0053182:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0053186:	eee7 2a63 	vfms.f32	s5, s14, s7
d005318a:	eeb0 7a62 	vmov.f32	s14, s5
d005318e:	e70d      	b.n	d0052fac <sb3dParticlesRender.part.0+0x494>
d0053190:	ee37 7a41 	vsub.f32	s14, s14, s2
d0053194:	ee32 2ac1 	vsub.f32	s4, s5, s2
d0053198:	eec7 2a02 	vdiv.f32	s5, s14, s4
d005319c:	ed1f 7a2d 	vldr	s14, [pc, #-180]	; d00530ec <sb3dParticlesRender.part.0+0x5d4>
d00531a0:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d00531a4:	fe87 7a44 	vminnm.f32	s14, s14, s8
d00531a8:	ee34 7a47 	vsub.f32	s14, s8, s14
d00531ac:	ee27 7a03 	vmul.f32	s14, s14, s6
d00531b0:	e6fc      	b.n	d0052fac <sb3dParticlesRender.part.0+0x494>
d00531b2:	bf00      	nop

d00531b4 <setDefaultRenderMode>:
d00531b4:	4b01      	ldr	r3, [pc, #4]	; (d00531bc <setDefaultRenderMode+0x8>)
d00531b6:	4a02      	ldr	r2, [pc, #8]	; (d00531c0 <setDefaultRenderMode+0xc>)
d00531b8:	601a      	str	r2, [r3, #0]
d00531ba:	4770      	bx	lr
d00531bc:	d00fcc20 	.word	0xd00fcc20
d00531c0:	d0052829 	.word	0xd0052829

d00531c4 <initClipScratch>:
d00531c4:	b510      	push	{r4, lr}
d00531c6:	4c0f      	ldr	r4, [pc, #60]	; (d0053204 <initClipScratch+0x40>)
d00531c8:	6823      	ldr	r3, [r4, #0]
d00531ca:	b11b      	cbz	r3, d00531d4 <initClipScratch+0x10>
d00531cc:	4b0e      	ldr	r3, [pc, #56]	; (d0053208 <initClipScratch+0x44>)
d00531ce:	681b      	ldr	r3, [r3, #0]
d00531d0:	b103      	cbz	r3, d00531d4 <initClipScratch+0x10>
d00531d2:	bd10      	pop	{r4, pc}
d00531d4:	4a0d      	ldr	r2, [pc, #52]	; (d005320c <initClipScratch+0x48>)
d00531d6:	7813      	ldrb	r3, [r2, #0]
d00531d8:	7850      	ldrb	r0, [r2, #1]
d00531da:	7891      	ldrb	r1, [r2, #2]
d00531dc:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00531e0:	78d2      	ldrb	r2, [r2, #3]
d00531e2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00531e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00531ea:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d00531ec:	4798      	blx	r3
d00531ee:	2800      	cmp	r0, #0
d00531f0:	d0ef      	beq.n	d00531d2 <initClipScratch+0xe>
d00531f2:	301f      	adds	r0, #31
d00531f4:	4b04      	ldr	r3, [pc, #16]	; (d0053208 <initClipScratch+0x44>)
d00531f6:	f020 001f 	bic.w	r0, r0, #31
d00531fa:	f100 0260 	add.w	r2, r0, #96	; 0x60
d00531fe:	6020      	str	r0, [r4, #0]
d0053200:	601a      	str	r2, [r3, #0]
d0053202:	bd10      	pop	{r4, pc}
d0053204:	d0066960 	.word	0xd0066960
d0053208:	d0066964 	.word	0xd0066964
d005320c:	2001f000 	.word	0x2001f000

d0053210 <submitClippedTri>:
d0053210:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053214:	4f84      	ldr	r7, [pc, #528]	; (d0053428 <submitClippedTri+0x218>)
d0053216:	683d      	ldr	r5, [r7, #0]
d0053218:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d005321c:	ed2d 8b04 	vpush	{d8-d9}
d0053220:	b08b      	sub	sp, #44	; 0x2c
d0053222:	f280 80ee 	bge.w	d0053402 <submitClippedTri+0x1f2>
d0053226:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d005322a:	edd0 6a14 	vldr	s13, [r0, #80]	; 0x50
d005322e:	eeb6 9a00 	vmov.f32	s18, #96	; 0x3f000000  0.5
d0053232:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d0053236:	ed90 5a12 	vldr	s10, [r0, #72]	; 0x48
d005323a:	ea4f 1c85 	mov.w	ip, r5, lsl #6
d005323e:	eec6 8a01 	vdiv.f32	s17, s12, s2
d0053242:	4c7a      	ldr	r4, [pc, #488]	; (d005342c <submitClippedTri+0x21c>)
d0053244:	469b      	mov	fp, r3
d0053246:	f10c 0a08 	add.w	sl, ip, #8
d005324a:	eb04 1685 	add.w	r6, r4, r5, lsl #6
d005324e:	3501      	adds	r5, #1
d0053250:	f10c 0810 	add.w	r8, ip, #16
d0053254:	eddf 5a76 	vldr	s11, [pc, #472]	; d0053430 <submitClippedTri+0x220>
d0053258:	603d      	str	r5, [r7, #0]
d005325a:	eb04 050a 	add.w	r5, r4, sl
d005325e:	eec6 7a22 	vdiv.f32	s15, s12, s5
d0053262:	eb04 0908 	add.w	r9, r4, r8
d0053266:	ee76 6a89 	vadd.f32	s13, s13, s18
d005326a:	ee86 8a04 	vdiv.f32	s16, s12, s8
d005326e:	ee37 7a09 	vadd.f32	s14, s14, s18
d0053272:	ee68 0aa0 	vmul.f32	s1, s17, s1
d0053276:	ee20 0a28 	vmul.f32	s0, s0, s17
d005327a:	eef0 8a47 	vmov.f32	s17, s14
d005327e:	ee61 1aa7 	vmul.f32	s3, s3, s15
d0053282:	ee27 2a82 	vmul.f32	s4, s15, s4
d0053286:	eef0 7a66 	vmov.f32	s15, s13
d005328a:	eee5 8a00 	vfma.f32	s17, s10, s0
d005328e:	ed9f 0a69 	vldr	s0, [pc, #420]	; d0053434 <submitClippedTri+0x224>
d0053292:	eee5 7a60 	vfms.f32	s15, s10, s1
d0053296:	eef0 0a47 	vmov.f32	s1, s14
d005329a:	ee23 3a08 	vmul.f32	s6, s6, s16
d005329e:	ee68 3a23 	vmul.f32	s7, s16, s7
d00532a2:	eee5 0a21 	vfma.f32	s1, s10, s3
d00532a6:	eea5 7a03 	vfma.f32	s14, s10, s6
d00532aa:	eefd 8ae8 	vcvt.s32.f32	s17, s17
d00532ae:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00532b2:	ee18 3a90 	vmov	r3, s17
d00532b6:	eef0 1a60 	vmov.f32	s3, s1
d00532ba:	ee17 7a90 	vmov	r7, s15
d00532be:	eef0 0a66 	vmov.f32	s1, s13
d00532c2:	f844 300c 	str.w	r3, [r4, ip]
d00532c6:	eee5 6a63 	vfms.f32	s13, s10, s7
d00532ca:	6077      	str	r7, [r6, #4]
d00532cc:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d00532d0:	b23f      	sxth	r7, r7
d00532d2:	eee5 0a42 	vfms.f32	s1, s10, s4
d00532d6:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00532da:	ee11 3a90 	vmov	r3, s3
d00532de:	f844 300a 	str.w	r3, [r4, sl]
d00532e2:	ee17 3a10 	vmov	r3, s14
d00532e6:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d00532ea:	edc5 7a01 	vstr	s15, [r5, #4]
d00532ee:	ee17 ea90 	vmov	lr, s15
d00532f2:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00532f6:	f844 3008 	str.w	r3, [r4, r8]
d00532fa:	45be      	cmp	lr, r7
d00532fc:	46b8      	mov	r8, r7
d00532fe:	edc9 7a01 	vstr	s15, [r9, #4]
d0053302:	ee17 5a90 	vmov	r5, s15
d0053306:	f886 1034 	strb.w	r1, [r6, #52]	; 0x34
d005330a:	f886 2035 	strb.w	r2, [r6, #53]	; 0x35
d005330e:	edc6 4a07 	vstr	s9, [r6, #28]
d0053312:	f886 b036 	strb.w	fp, [r6, #54]	; 0x36
d0053316:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d005331a:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d005331e:	ee31 7a47 	vsub.f32	s14, s2, s14
d0053322:	ee27 7a27 	vmul.f32	s14, s14, s15
d0053326:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d005332a:	fe87 7a46 	vminnm.f32	s14, s14, s12
d005332e:	ee27 7a00 	vmul.f32	s14, s14, s0
d0053332:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0053336:	ee17 3a10 	vmov	r3, s14
d005333a:	8433      	strh	r3, [r6, #32]
d005333c:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0053340:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0053344:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0053348:	ee27 7a27 	vmul.f32	s14, s14, s15
d005334c:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0053350:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0053354:	ee27 7a00 	vmul.f32	s14, s14, s0
d0053358:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005335c:	ee17 3a10 	vmov	r3, s14
d0053360:	8473      	strh	r3, [r6, #34]	; 0x22
d0053362:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0053366:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d005336a:	ee74 7a67 	vsub.f32	s15, s8, s15
d005336e:	ed86 1a0a 	vstr	s2, [r6, #40]	; 0x28
d0053372:	edc6 2a0b 	vstr	s5, [r6, #44]	; 0x2c
d0053376:	ed86 4a0c 	vstr	s8, [r6, #48]	; 0x30
d005337a:	ee67 7a87 	vmul.f32	s15, s15, s14
d005337e:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0053382:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0053386:	ee67 7a80 	vmul.f32	s15, s15, s0
d005338a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005338e:	ee17 3a90 	vmov	r3, s15
d0053392:	84b3      	strh	r3, [r6, #36]	; 0x24
d0053394:	db3a      	blt.n	d005340c <submitClippedTri+0x1fc>
d0053396:	463b      	mov	r3, r7
d0053398:	8737      	strh	r7, [r6, #56]	; 0x38
d005339a:	42ab      	cmp	r3, r5
d005339c:	dd02      	ble.n	d00533a4 <submitClippedTri+0x194>
d005339e:	eb04 030c 	add.w	r3, r4, ip
d00533a2:	871d      	strh	r5, [r3, #56]	; 0x38
d00533a4:	45be      	cmp	lr, r7
d00533a6:	dc36      	bgt.n	d0053416 <submitClippedTri+0x206>
d00533a8:	eb04 030c 	add.w	r3, r4, ip
d00533ac:	875f      	strh	r7, [r3, #58]	; 0x3a
d00533ae:	45a8      	cmp	r8, r5
d00533b0:	da02      	bge.n	d00533b8 <submitClippedTri+0x1a8>
d00533b2:	eb04 030c 	add.w	r3, r4, ip
d00533b6:	875d      	strh	r5, [r3, #58]	; 0x3a
d00533b8:	eb04 030c 	add.w	r3, r4, ip
d00533bc:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d00533c0:	2a00      	cmp	r2, #0
d00533c2:	da01      	bge.n	d00533c8 <submitClippedTri+0x1b8>
d00533c4:	2200      	movs	r2, #0
d00533c6:	871a      	strh	r2, [r3, #56]	; 0x38
d00533c8:	eb04 030c 	add.w	r3, r4, ip
d00533cc:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d00533d0:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00533d4:	db02      	blt.n	d00533dc <submitClippedTri+0x1cc>
d00533d6:	f240 123f 	movw	r2, #319	; 0x13f
d00533da:	875a      	strh	r2, [r3, #58]	; 0x3a
d00533dc:	eb04 010c 	add.w	r1, r4, ip
d00533e0:	4464      	add	r4, ip
d00533e2:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d00533e6:	2b00      	cmp	r3, #0
d00533e8:	bfb8      	it	lt
d00533ea:	331f      	addlt	r3, #31
d00533ec:	115a      	asrs	r2, r3, #5
d00533ee:	f9b4 303a 	ldrsh.w	r3, [r4, #58]	; 0x3a
d00533f2:	2b00      	cmp	r3, #0
d00533f4:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d00533f8:	bfb8      	it	lt
d00533fa:	331f      	addlt	r3, #31
d00533fc:	115b      	asrs	r3, r3, #5
d00533fe:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
d0053402:	b00b      	add	sp, #44	; 0x2c
d0053404:	ecbd 8b04 	vpop	{d8-d9}
d0053408:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005340c:	fa0f f28e 	sxth.w	r2, lr
d0053410:	4613      	mov	r3, r2
d0053412:	8732      	strh	r2, [r6, #56]	; 0x38
d0053414:	e7c1      	b.n	d005339a <submitClippedTri+0x18a>
d0053416:	fa0f fe8e 	sxth.w	lr, lr
d005341a:	eb04 030c 	add.w	r3, r4, ip
d005341e:	46f0      	mov	r8, lr
d0053420:	f8a3 e03a 	strh.w	lr, [r3, #58]	; 0x3a
d0053424:	e7c3      	b.n	d00533ae <submitClippedTri+0x19e>
d0053426:	bf00      	nop
d0053428:	d0068980 	.word	0xd0068980
d005342c:	d00689a0 	.word	0xd00689a0
d0053430:	00000000 	.word	0x00000000
d0053434:	477fff00 	.word	0x477fff00

d0053438 <getRenderTriCount>:
d0053438:	4b01      	ldr	r3, [pc, #4]	; (d0053440 <getRenderTriCount+0x8>)
d005343a:	6818      	ldr	r0, [r3, #0]
d005343c:	4770      	bx	lr
d005343e:	bf00      	nop
d0053440:	d0068980 	.word	0xd0068980

d0053444 <drawFakeHorizonDots>:
d0053444:	2800      	cmp	r0, #0
d0053446:	f000 8107 	beq.w	d0053658 <drawFakeHorizonDots+0x214>
d005344a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005344e:	4699      	mov	r9, r3
d0053450:	ed2d 8b10 	vpush	{d8-d15}
d0053454:	b085      	sub	sp, #20
d0053456:	2b00      	cmp	r3, #0
d0053458:	f000 80f9 	beq.w	d005364e <drawFakeHorizonDots+0x20a>
d005345c:	4617      	mov	r7, r2
d005345e:	ed90 9a02 	vldr	s18, [r0, #8]
d0053462:	edd0 8a00 	vldr	s17, [r0]
d0053466:	4606      	mov	r6, r0
d0053468:	2f02      	cmp	r7, #2
d005346a:	ed90 6a01 	vldr	s12, [r0, #4]
d005346e:	ed90 da07 	vldr	s26, [r0, #28]
d0053472:	460a      	mov	r2, r1
d0053474:	bfb8      	it	lt
d0053476:	2702      	movlt	r7, #2
d0053478:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d005347c:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0053480:	ee30 ba46 	vsub.f32	s22, s0, s12
d0053484:	ee07 7a90 	vmov	s15, r7
d0053488:	ed90 fa06 	vldr	s30, [r0, #24]
d005348c:	edd0 ea08 	vldr	s29, [r0, #32]
d0053490:	f06f 0311 	mvn.w	r3, #17
d0053494:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0053498:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d005349c:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d00534a0:	ee2b da0d 	vmul.f32	s26, s22, s26
d00534a4:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d00534a8:	ee6b ca2c 	vmul.f32	s25, s22, s25
d00534ac:	ee89 7a08 	vdiv.f32	s14, s18, s16
d00534b0:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d00534b4:	eddf 5a69 	vldr	s11, [pc, #420]	; d005365c <drawFakeHorizonDots+0x218>
d00534b8:	4d69      	ldr	r5, [pc, #420]	; (d0053660 <drawFakeHorizonDots+0x21c>)
d00534ba:	4c6a      	ldr	r4, [pc, #424]	; (d0053664 <drawFakeHorizonDots+0x220>)
d00534bc:	eddf 9a6a 	vldr	s19, [pc, #424]	; d0053668 <drawFakeHorizonDots+0x224>
d00534c0:	eec8 7a88 	vdiv.f32	s15, s17, s16
d00534c4:	9302      	str	r3, [sp, #8]
d00534c6:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d0053670 <drawFakeHorizonDots+0x22c>
d00534ca:	4623      	mov	r3, r4
d00534cc:	ee28 8a25 	vmul.f32	s16, s16, s11
d00534d0:	ee2b ba26 	vmul.f32	s22, s22, s13
d00534d4:	ee68 9a29 	vmul.f32	s19, s16, s19
d00534d8:	febb 7a47 	vrintm.f32	s14, s14
d00534dc:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00534e0:	ee17 0a10 	vmov	r0, s14
d00534e4:	fefb 7a67 	vrintm.f32	s15, s15
d00534e8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00534ec:	3812      	subs	r0, #18
d00534ee:	ee17 1a90 	vmov	r1, s15
d00534f2:	fb05 f500 	mul.w	r5, r5, r0
d00534f6:	fb00 f007 	mul.w	r0, r0, r7
d00534fa:	fb04 5a01 	mla	sl, r4, r1, r5
d00534fe:	3912      	subs	r1, #18
d0053500:	9001      	str	r0, [sp, #4]
d0053502:	fb07 f101 	mul.w	r1, r7, r1
d0053506:	9103      	str	r1, [sp, #12]
d0053508:	eddd 7a01 	vldr	s15, [sp, #4]
d005350c:	ee39 aa08 	vadd.f32	s20, s18, s16
d0053510:	9902      	ldr	r1, [sp, #8]
d0053512:	ee78 aa88 	vadd.f32	s21, s17, s16
d0053516:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005351a:	9d03      	ldr	r5, [sp, #12]
d005351c:	fb01 f801 	mul.w	r8, r1, r1
d0053520:	f06f 0411 	mvn.w	r4, #17
d0053524:	ee37 aaca 	vsub.f32	s20, s15, s20
d0053528:	e078      	b.n	d005361c <drawFakeHorizonDots+0x1d8>
d005352a:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d005352e:	fb09 f000 	mul.w	r0, r9, r0
d0053532:	2850      	cmp	r0, #80	; 0x50
d0053534:	dd6e      	ble.n	d0053614 <drawFakeHorizonDots+0x1d0>
d0053536:	494d      	ldr	r1, [pc, #308]	; (d005366c <drawFakeHorizonDots+0x228>)
d0053538:	fba1 1000 	umull	r1, r0, r1, r0
d005353c:	f3c0 1087 	ubfx	r0, r0, #6, #8
d0053540:	fb03 a104 	mla	r1, r3, r4, sl
d0053544:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d0053548:	fb0b f101 	mul.w	r1, fp, r1
d005354c:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d0053550:	fa5f fc81 	uxtb.w	ip, r1
d0053554:	4584      	cmp	ip, r0
d0053556:	d85d      	bhi.n	d0053614 <drawFakeHorizonDots+0x1d0>
d0053558:	ee07 5a10 	vmov	s14, r5
d005355c:	f3c1 4007 	ubfx	r0, r1, #16, #8
d0053560:	f3c1 2107 	ubfx	r1, r1, #8, #8
d0053564:	eef0 4a4a 	vmov.f32	s9, s20
d0053568:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005356c:	ee06 0a90 	vmov	s13, r0
d0053570:	ee07 1a90 	vmov	s15, r1
d0053574:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d0053578:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d005357c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053580:	ee37 7a6a 	vsub.f32	s14, s14, s21
d0053584:	eee6 4aa9 	vfma.f32	s9, s13, s19
d0053588:	eea7 7aa9 	vfma.f32	s14, s15, s19
d005358c:	eef0 7a47 	vmov.f32	s15, s14
d0053590:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d0053594:	eeac 7a27 	vfma.f32	s14, s24, s15
d0053598:	ee3b 7a07 	vadd.f32	s14, s22, s14
d005359c:	eeb4 6ac7 	vcmpe.f32	s12, s14
d00535a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00535a4:	da36      	bge.n	d0053614 <drawFakeHorizonDots+0x1d0>
d00535a6:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d00535aa:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d00535ae:	ee2f 6a27 	vmul.f32	s12, s30, s15
d00535b2:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d00535b6:	ee6e 7a27 	vmul.f32	s15, s28, s15
d00535ba:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d00535be:	ee83 4a87 	vdiv.f32	s8, s7, s14
d00535c2:	eeae 6aa4 	vfma.f32	s12, s29, s9
d00535c6:	eeed 7aa4 	vfma.f32	s15, s27, s9
d00535ca:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d00535ce:	ee36 7aa4 	vadd.f32	s14, s13, s9
d00535d2:	ee7d 6a06 	vadd.f32	s13, s26, s12
d00535d6:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d00535da:	ee35 6aa4 	vadd.f32	s12, s11, s9
d00535de:	ee66 6a85 	vmul.f32	s13, s13, s10
d00535e2:	ee65 7a67 	vnmul.f32	s15, s10, s15
d00535e6:	eea6 7a84 	vfma.f32	s14, s13, s8
d00535ea:	eea7 6a84 	vfma.f32	s12, s15, s8
d00535ee:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00535f2:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d00535f6:	ee17 0a10 	vmov	r0, s14
d00535fa:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00535fe:	d209      	bcs.n	d0053614 <drawFakeHorizonDots+0x1d0>
d0053600:	ee17 1a90 	vmov	r1, s15
d0053604:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0053608:	d204      	bcs.n	d0053614 <drawFakeHorizonDots+0x1d0>
d005360a:	9200      	str	r2, [sp, #0]
d005360c:	f7fb fa28 	bl	d004ea60 <putPixel>
d0053610:	4b14      	ldr	r3, [pc, #80]	; (d0053664 <drawFakeHorizonDots+0x220>)
d0053612:	9a00      	ldr	r2, [sp, #0]
d0053614:	3401      	adds	r4, #1
d0053616:	443d      	add	r5, r7
d0053618:	2c13      	cmp	r4, #19
d005361a:	d009      	beq.n	d0053630 <drawFakeHorizonDots+0x1ec>
d005361c:	fb04 8004 	mla	r0, r4, r4, r8
d0053620:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0053624:	dcf6      	bgt.n	d0053614 <drawFakeHorizonDots+0x1d0>
d0053626:	28f3      	cmp	r0, #243	; 0xf3
d0053628:	f73f af7f 	bgt.w	d005352a <drawFakeHorizonDots+0xe6>
d005362c:	4648      	mov	r0, r9
d005362e:	e787      	b.n	d0053540 <drawFakeHorizonDots+0xfc>
d0053630:	9902      	ldr	r1, [sp, #8]
d0053632:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d0053636:	9801      	ldr	r0, [sp, #4]
d0053638:	3101      	adds	r1, #1
d005363a:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d005363e:	4438      	add	r0, r7
d0053640:	2913      	cmp	r1, #19
d0053642:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d0053646:	9102      	str	r1, [sp, #8]
d0053648:	9001      	str	r0, [sp, #4]
d005364a:	f47f af5d 	bne.w	d0053508 <drawFakeHorizonDots+0xc4>
d005364e:	b005      	add	sp, #20
d0053650:	ecbd 8b10 	vpop	{d8-d15}
d0053654:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053658:	4770      	bx	lr
d005365a:	bf00      	nop
d005365c:	3eb33333 	.word	0x3eb33333
d0053660:	27d4eb2f 	.word	0x27d4eb2f
d0053664:	165667b1 	.word	0x165667b1
d0053668:	3c008081 	.word	0x3c008081
d005366c:	ca4587e7 	.word	0xca4587e7
d0053670:	4bf19f61 	.word	0x4bf19f61

d0053674 <drawFakeSkyDots>:
d0053674:	2a10      	cmp	r2, #16
d0053676:	ed9f 6a73 	vldr	s12, [pc, #460]	; d0053844 <drawFakeSkyDots+0x1d0>
d005367a:	ed9f 7a73 	vldr	s14, [pc, #460]	; d0053848 <drawFakeSkyDots+0x1d4>
d005367e:	bfb8      	it	lt
d0053680:	2210      	movlt	r2, #16
d0053682:	2b08      	cmp	r3, #8
d0053684:	ee07 2a90 	vmov	s15, r2
d0053688:	bfb8      	it	lt
d005368a:	2308      	movlt	r3, #8
d005368c:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0053690:	ee07 3a90 	vmov	s15, r3
d0053694:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053698:	ed2d 8b10 	vpush	{d8-d15}
d005369c:	eec6 da26 	vdiv.f32	s27, s12, s13
d00536a0:	b085      	sub	sp, #20
d00536a2:	4617      	mov	r7, r2
d00536a4:	4682      	mov	sl, r0
d00536a6:	9303      	str	r3, [sp, #12]
d00536a8:	468b      	mov	fp, r1
d00536aa:	2300      	movs	r3, #0
d00536ac:	edd0 ea06 	vldr	s29, [r0, #24]
d00536b0:	ed90 ea07 	vldr	s28, [r0, #28]
d00536b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00536b8:	ed90 da08 	vldr	s26, [r0, #32]
d00536bc:	edd0 ca09 	vldr	s25, [r0, #36]	; 0x24
d00536c0:	ed90 ca0a 	vldr	s24, [r0, #40]	; 0x28
d00536c4:	eec7 aa27 	vdiv.f32	s21, s14, s15
d00536c8:	edd0 7a0d 	vldr	s15, [r0, #52]	; 0x34
d00536cc:	edd0 ba0b 	vldr	s23, [r0, #44]	; 0x2c
d00536d0:	edcd 7a00 	vstr	s15, [sp]
d00536d4:	ed90 ba0c 	vldr	s22, [r0, #48]	; 0x30
d00536d8:	edd0 7a0e 	vldr	s15, [r0, #56]	; 0x38
d00536dc:	f89d 9078 	ldrb.w	r9, [sp, #120]	; 0x78
d00536e0:	f8df 8178 	ldr.w	r8, [pc, #376]	; d005385c <drawFakeSkyDots+0x1e8>
d00536e4:	ed9f fa59 	vldr	s30, [pc, #356]	; d005384c <drawFakeSkyDots+0x1d8>
d00536e8:	9302      	str	r3, [sp, #8]
d00536ea:	edcd 7a01 	vstr	s15, [sp, #4]
d00536ee:	eddd 7a02 	vldr	s15, [sp, #8]
d00536f2:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d00536f6:	4b56      	ldr	r3, [pc, #344]	; (d0053850 <drawFakeSkyDots+0x1dc>)
d00536f8:	2400      	movs	r4, #0
d00536fa:	ee17 2a90 	vmov	r2, s15
d00536fe:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0053702:	4e54      	ldr	r6, [pc, #336]	; (d0053854 <drawFakeSkyDots+0x1e0>)
d0053704:	fb03 f502 	mul.w	r5, r3, r2
d0053708:	ea85 3355 	eor.w	r3, r5, r5, lsr #13
d005370c:	ee07 4a90 	vmov	s15, r4
d0053710:	eef0 fa48 	vmov.f32	s31, s16
d0053714:	3401      	adds	r4, #1
d0053716:	fb08 f303 	mul.w	r3, r8, r3
d005371a:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d005371e:	4435      	add	r5, r6
d0053720:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d0053724:	f3c3 4207 	ubfx	r2, r3, #16, #8
d0053728:	ee07 2a90 	vmov	s15, r2
d005372c:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0053730:	b2db      	uxtb	r3, r3
d0053732:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053736:	ee07 2a10 	vmov	s14, r2
d005373a:	454b      	cmp	r3, r9
d005373c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0053740:	eee7 fa8f 	vfma.f32	s31, s15, s30
d0053744:	d86f      	bhi.n	d0053826 <drawFakeSkyDots+0x1b2>
d0053746:	eee7 6a0f 	vfma.f32	s13, s14, s30
d005374a:	ee6f faaa 	vmul.f32	s31, s31, s21
d005374e:	eeb0 0a6f 	vmov.f32	s0, s31
d0053752:	ee26 aaad 	vmul.f32	s20, s13, s27
d0053756:	f003 fadf 	bl	d0056d18 <sinf>
d005375a:	eeb0 9a40 	vmov.f32	s18, s0
d005375e:	eeb0 0a6f 	vmov.f32	s0, s31
d0053762:	f003 f8f5 	bl	d0056950 <cosf>
d0053766:	eef0 fa40 	vmov.f32	s31, s0
d005376a:	eeb0 0a4a 	vmov.f32	s0, s20
d005376e:	f003 fad3 	bl	d0056d18 <sinf>
d0053772:	eef0 9a40 	vmov.f32	s19, s0
d0053776:	eeb0 0a4a 	vmov.f32	s0, s20
d005377a:	f003 f8e9 	bl	d0056950 <cosf>
d005377e:	eddd 6a01 	vldr	s13, [sp, #4]
d0053782:	ee2f 7aa9 	vmul.f32	s14, s31, s19
d0053786:	ee6f 7a80 	vmul.f32	s15, s31, s0
d005378a:	ee26 6a87 	vmul.f32	s12, s13, s14
d005378e:	ee6c 4aa7 	vmul.f32	s9, s25, s15
d0053792:	ee6e 6aa7 	vmul.f32	s13, s29, s15
d0053796:	eeab 6a27 	vfma.f32	s12, s22, s15
d005379a:	eef0 7a66 	vmov.f32	s15, s13
d005379e:	eef0 6a64 	vmov.f32	s13, s9
d00537a2:	eeed 7a07 	vfma.f32	s15, s26, s14
d00537a6:	eeeb 6a87 	vfma.f32	s13, s23, s14
d00537aa:	eeb0 7a46 	vmov.f32	s14, s12
d00537ae:	ed9d 6a00 	vldr	s12, [sp]
d00537b2:	eea6 7a09 	vfma.f32	s14, s12, s18
d00537b6:	ed9f 6a28 	vldr	s12, [pc, #160]	; d0053858 <drawFakeSkyDots+0x1e4>
d00537ba:	eeee 7a09 	vfma.f32	s15, s28, s18
d00537be:	eeec 6a09 	vfma.f32	s13, s24, s18
d00537c2:	eeb4 7ac6 	vcmpe.f32	s14, s12
d00537c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537ca:	d92c      	bls.n	d0053826 <drawFakeSkyDots+0x1b2>
d00537cc:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00537d0:	ed9a 5a12 	vldr	s10, [sl, #72]	; 0x48
d00537d4:	ee65 7a27 	vmul.f32	s15, s10, s15
d00537d8:	eec6 4a07 	vdiv.f32	s9, s12, s14
d00537dc:	ed9a 7a13 	vldr	s14, [sl, #76]	; 0x4c
d00537e0:	ed9a 6a14 	vldr	s12, [sl, #80]	; 0x50
d00537e4:	ee37 7a28 	vadd.f32	s14, s14, s17
d00537e8:	ee36 6a28 	vadd.f32	s12, s12, s17
d00537ec:	ee65 6a26 	vmul.f32	s13, s10, s13
d00537f0:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00537f4:	eef0 7a47 	vmov.f32	s15, s14
d00537f8:	eeb0 7a46 	vmov.f32	s14, s12
d00537fc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053800:	eea4 7ae6 	vfms.f32	s14, s9, s13
d0053804:	ee17 0a90 	vmov	r0, s15
d0053808:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d005380c:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0053810:	d209      	bcs.n	d0053826 <drawFakeSkyDots+0x1b2>
d0053812:	ee17 3a90 	vmov	r3, s15
d0053816:	465a      	mov	r2, fp
d0053818:	ee17 1a90 	vmov	r1, s15
d005381c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0053820:	d201      	bcs.n	d0053826 <drawFakeSkyDots+0x1b2>
d0053822:	f7fb f91d 	bl	d004ea60 <putPixel>
d0053826:	42a7      	cmp	r7, r4
d0053828:	f47f af6e 	bne.w	d0053708 <drawFakeSkyDots+0x94>
d005382c:	9b02      	ldr	r3, [sp, #8]
d005382e:	9a03      	ldr	r2, [sp, #12]
d0053830:	3301      	adds	r3, #1
d0053832:	429a      	cmp	r2, r3
d0053834:	9302      	str	r3, [sp, #8]
d0053836:	f47f af5a 	bne.w	d00536ee <drawFakeSkyDots+0x7a>
d005383a:	b005      	add	sp, #20
d005383c:	ecbd 8b10 	vpop	{d8-d15}
d0053840:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053844:	40c90fdb 	.word	0x40c90fdb
d0053848:	3fc90fdb 	.word	0x3fc90fdb
d005384c:	3b808081 	.word	0x3b808081
d0053850:	27d4eb2f 	.word	0x27d4eb2f
d0053854:	165667b1 	.word	0x165667b1
d0053858:	3a83126f 	.word	0x3a83126f
d005385c:	4bf19f61 	.word	0x4bf19f61

d0053860 <drawFakeHorizon>:
d0053860:	2800      	cmp	r0, #0
d0053862:	f000 813e 	beq.w	d0053ae2 <drawFakeHorizon+0x282>
d0053866:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005386a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005386e:	ed2d 8b0e 	vpush	{d8-d14}
d0053872:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d0053876:	b083      	sub	sp, #12
d0053878:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d005387c:	460f      	mov	r7, r1
d005387e:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d0053882:	eddf 7a9c 	vldr	s15, [pc, #624]	; d0053af4 <drawFakeHorizon+0x294>
d0053886:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d005388a:	4690      	mov	r8, r2
d005388c:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d0053890:	4699      	mov	r9, r3
d0053892:	ed90 ea07 	vldr	s28, [r0, #28]
d0053896:	2400      	movs	r4, #0
d0053898:	ed90 9a01 	vldr	s18, [r0, #4]
d005389c:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d00538a0:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d00538a4:	ee2b 7aad 	vmul.f32	s14, s23, s27
d00538a8:	4e93      	ldr	r6, [pc, #588]	; (d0053af8 <drawFakeHorizon+0x298>)
d00538aa:	eef0 aa4c 	vmov.f32	s21, s24
d00538ae:	ed9f 8a93 	vldr	s16, [pc, #588]	; d0053afc <drawFakeHorizon+0x29c>
d00538b2:	eeb0 aa4c 	vmov.f32	s20, s24
d00538b6:	eecd ca2d 	vdiv.f32	s25, s26, s27
d00538ba:	eeb0 baed 	vabs.f32	s22, s27
d00538be:	ee30 9a49 	vsub.f32	s18, s0, s18
d00538c2:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00538c6:	eee7 aa28 	vfma.f32	s21, s14, s17
d00538ca:	ee6e 8a28 	vmul.f32	s17, s28, s17
d00538ce:	eea7 aaad 	vfma.f32	s20, s15, s27
d00538d2:	e056      	b.n	d0053982 <drawFakeHorizon+0x122>
d00538d4:	ee89 6a26 	vdiv.f32	s12, s18, s13
d00538d8:	eef0 6ac7 	vabs.f32	s13, s14
d00538dc:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00538e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538e4:	eef4 6ac8 	vcmpe.f32	s13, s16
d00538e8:	bfcc      	ite	gt
d00538ea:	2201      	movgt	r2, #1
d00538ec:	2200      	movle	r2, #0
d00538ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00538f2:	da61      	bge.n	d00539b8 <drawFakeHorizon+0x158>
d00538f4:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00538f8:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00538fc:	6833      	ldr	r3, [r6, #0]
d00538fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053902:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0053906:	f240 80a8 	bls.w	d0053a5a <drawFakeHorizon+0x1fa>
d005390a:	eeb4 bac8 	vcmpe.f32	s22, s16
d005390e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053912:	f100 809a 	bmi.w	d0053a4a <drawFakeHorizon+0x1ea>
d0053916:	ee7c 7a27 	vadd.f32	s15, s24, s15
d005391a:	eeb0 7a6b 	vmov.f32	s14, s23
d005391e:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0053922:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0053926:	ee17 ba90 	vmov	fp, s15
d005392a:	f1bb 0f00 	cmp.w	fp, #0
d005392e:	f2c0 80aa 	blt.w	d0053a86 <drawFakeHorizon+0x226>
d0053932:	2201      	movs	r2, #1
d0053934:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0053938:	46da      	mov	sl, fp
d005393a:	bfa8      	it	ge
d005393c:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0053940:	2a00      	cmp	r2, #0
d0053942:	f000 8091 	beq.w	d0053a68 <drawFakeHorizon+0x208>
d0053946:	f1bb 0f00 	cmp.w	fp, #0
d005394a:	d009      	beq.n	d0053960 <drawFakeHorizon+0x100>
d005394c:	f1ba 0f00 	cmp.w	sl, #0
d0053950:	4628      	mov	r0, r5
d0053952:	4641      	mov	r1, r8
d0053954:	bfcc      	ite	gt
d0053956:	4652      	movgt	r2, sl
d0053958:	2201      	movle	r2, #1
d005395a:	4415      	add	r5, r2
d005395c:	f001 fec0 	bl	d00556e0 <memset>
d0053960:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0053964:	d009      	beq.n	d005397a <drawFakeHorizon+0x11a>
d0053966:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d005396a:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d005396e:	4628      	mov	r0, r5
d0053970:	4639      	mov	r1, r7
d0053972:	bfa8      	it	ge
d0053974:	2201      	movge	r2, #1
d0053976:	f001 feb3 	bl	d00556e0 <memset>
d005397a:	3401      	adds	r4, #1
d005397c:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0053980:	d04e      	beq.n	d0053a20 <drawFakeHorizon+0x1c0>
d0053982:	ee07 4a90 	vmov	s15, r4
d0053986:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005398a:	ee77 7ae9 	vsub.f32	s15, s15, s19
d005398e:	ee67 7aa8 	vmul.f32	s15, s15, s17
d0053992:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d0053996:	ee3a 7a27 	vadd.f32	s14, s20, s15
d005399a:	eeb0 6ae6 	vabs.f32	s12, s13
d005399e:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00539a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539a6:	da95      	bge.n	d00538d4 <drawFakeHorizon+0x74>
d00539a8:	eef0 6ac7 	vabs.f32	s13, s14
d00539ac:	eef4 6ac8 	vcmpe.f32	s13, s16
d00539b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539b4:	db4c      	blt.n	d0053a50 <drawFakeHorizon+0x1f0>
d00539b6:	2200      	movs	r2, #0
d00539b8:	eec9 6a07 	vdiv.f32	s13, s18, s14
d00539bc:	6833      	ldr	r3, [r6, #0]
d00539be:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00539c2:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00539c6:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00539ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539ce:	bfcc      	ite	gt
d00539d0:	2301      	movgt	r3, #1
d00539d2:	2300      	movle	r3, #0
d00539d4:	4293      	cmp	r3, r2
d00539d6:	f000 8085 	beq.w	d0053ae4 <drawFakeHorizon+0x284>
d00539da:	eeb4 bac8 	vcmpe.f32	s22, s16
d00539de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539e2:	d429      	bmi.n	d0053a38 <drawFakeHorizon+0x1d8>
d00539e4:	ee7c 7a27 	vadd.f32	s15, s24, s15
d00539e8:	eeb0 7a6b 	vmov.f32	s14, s23
d00539ec:	eeac 7aa7 	vfma.f32	s14, s25, s15
d00539f0:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00539f4:	ee17 ba90 	vmov	fp, s15
d00539f8:	f1bb 0f00 	cmp.w	fp, #0
d00539fc:	da9a      	bge.n	d0053934 <drawFakeHorizon+0xd4>
d00539fe:	2a00      	cmp	r2, #0
d0053a00:	d141      	bne.n	d0053a86 <drawFakeHorizon+0x226>
d0053a02:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0053a06:	f104 0401 	add.w	r4, r4, #1
d0053a0a:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0053a0e:	4628      	mov	r0, r5
d0053a10:	bfa8      	it	ge
d0053a12:	2201      	movge	r2, #1
d0053a14:	4641      	mov	r1, r8
d0053a16:	f001 fe63 	bl	d00556e0 <memset>
d0053a1a:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0053a1e:	d1b0      	bne.n	d0053982 <drawFakeHorizon+0x122>
d0053a20:	eddf 7a36 	vldr	s15, [pc, #216]	; d0053afc <drawFakeHorizon+0x29c>
d0053a24:	eeb4 bae7 	vcmpe.f32	s22, s15
d0053a28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a2c:	da31      	bge.n	d0053a92 <drawFakeHorizon+0x232>
d0053a2e:	b003      	add	sp, #12
d0053a30:	ecbd 8b0e 	vpop	{d8-d14}
d0053a34:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053a38:	b93a      	cbnz	r2, d0053a4a <drawFakeHorizon+0x1ea>
d0053a3a:	22a0      	movs	r2, #160	; 0xa0
d0053a3c:	4628      	mov	r0, r5
d0053a3e:	4639      	mov	r1, r7
d0053a40:	4415      	add	r5, r2
d0053a42:	f001 fe4d 	bl	d00556e0 <memset>
d0053a46:	22a0      	movs	r2, #160	; 0xa0
d0053a48:	e7db      	b.n	d0053a02 <drawFakeHorizon+0x1a2>
d0053a4a:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d0053a4e:	e77d      	b.n	d005394c <drawFakeHorizon+0xec>
d0053a50:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0053a54:	6832      	ldr	r2, [r6, #0]
d0053a56:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d0053a5a:	4639      	mov	r1, r7
d0053a5c:	4628      	mov	r0, r5
d0053a5e:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0053a62:	f001 fe3d 	bl	d00556e0 <memset>
d0053a66:	e788      	b.n	d005397a <drawFakeHorizon+0x11a>
d0053a68:	f1bb 0f00 	cmp.w	fp, #0
d0053a6c:	d00e      	beq.n	d0053a8c <drawFakeHorizon+0x22c>
d0053a6e:	4628      	mov	r0, r5
d0053a70:	4652      	mov	r2, sl
d0053a72:	4639      	mov	r1, r7
d0053a74:	4455      	add	r5, sl
d0053a76:	f001 fe33 	bl	d00556e0 <memset>
d0053a7a:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0053a7e:	f6bf af7c 	bge.w	d005397a <drawFakeHorizon+0x11a>
d0053a82:	4652      	mov	r2, sl
d0053a84:	e7bd      	b.n	d0053a02 <drawFakeHorizon+0x1a2>
d0053a86:	f04f 0a00 	mov.w	sl, #0
d0053a8a:	e76c      	b.n	d0053966 <drawFakeHorizon+0x106>
d0053a8c:	46da      	mov	sl, fp
d0053a8e:	4652      	mov	r2, sl
d0053a90:	e7b7      	b.n	d0053a02 <drawFakeHorizon+0x1a2>
d0053a92:	ee2d ca0c 	vmul.f32	s24, s26, s24
d0053a96:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0053b00 <drawFakeHorizon+0x2a0>
d0053a9a:	f240 12df 	movw	r2, #479	; 0x1df
d0053a9e:	2000      	movs	r0, #0
d0053aa0:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0053aa4:	f8cd 9000 	str.w	r9, [sp]
d0053aa8:	eef0 6a4c 	vmov.f32	s13, s24
d0053aac:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0053ab0:	eee9 6ace 	vfms.f32	s13, s19, s28
d0053ab4:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d0053ab8:	ee86 7aad 	vdiv.f32	s14, s13, s27
d0053abc:	ee37 7a2b 	vadd.f32	s14, s14, s23
d0053ac0:	ee77 baab 	vadd.f32	s23, s15, s23
d0053ac4:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0053ac8:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d0053acc:	ee17 1a10 	vmov	r1, s14
d0053ad0:	ee17 3a90 	vmov	r3, s15
d0053ad4:	f7fa ffd4 	bl	d004ea80 <drawLine>
d0053ad8:	b003      	add	sp, #12
d0053ada:	ecbd 8b0e 	vpop	{d8-d14}
d0053ade:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053ae2:	4770      	bx	lr
d0053ae4:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0053ae8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053aec:	ddb5      	ble.n	d0053a5a <drawFakeHorizon+0x1fa>
d0053aee:	4641      	mov	r1, r8
d0053af0:	e7b4      	b.n	d0053a5c <drawFakeHorizon+0x1fc>
d0053af2:	bf00      	nop
d0053af4:	439f8000 	.word	0x439f8000
d0053af8:	d00f4c10 	.word	0xd00f4c10
d0053afc:	38d1b717 	.word	0x38d1b717
d0053b00:	43ef8000 	.word	0x43ef8000

d0053b04 <submitEntitySolid>:
d0053b04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053b08:	ed2d 8b10 	vpush	{d8-d15}
d0053b0c:	b0c5      	sub	sp, #276	; 0x114
d0053b0e:	f10d 03b7 	add.w	r3, sp, #183	; 0xb7
d0053b12:	9101      	str	r1, [sp, #4]
d0053b14:	f023 031f 	bic.w	r3, r3, #31
d0053b18:	9302      	str	r3, [sp, #8]
d0053b1a:	2800      	cmp	r0, #0
d0053b1c:	f000 835e 	beq.w	d00541dc <submitEntitySolid+0x6d8>
d0053b20:	f8d0 8018 	ldr.w	r8, [r0, #24]
d0053b24:	4604      	mov	r4, r0
d0053b26:	f1b8 0f00 	cmp.w	r8, #0
d0053b2a:	f000 8357 	beq.w	d00541dc <submitEntitySolid+0x6d8>
d0053b2e:	f8d8 3000 	ldr.w	r3, [r8]
d0053b32:	2b00      	cmp	r3, #0
d0053b34:	f000 8352 	beq.w	d00541dc <submitEntitySolid+0x6d8>
d0053b38:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0053b3c:	2b00      	cmp	r3, #0
d0053b3e:	f000 834d 	beq.w	d00541dc <submitEntitySolid+0x6d8>
d0053b42:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0053b46:	3b01      	subs	r3, #1
d0053b48:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0053b4c:	f080 8346 	bcs.w	d00541dc <submitEntitySolid+0x6d8>
d0053b50:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053b54:	2b00      	cmp	r3, #0
d0053b56:	f340 8341 	ble.w	d00541dc <submitEntitySolid+0x6d8>
d0053b5a:	edd1 7a15 	vldr	s15, [r1, #84]	; 0x54
d0053b5e:	460e      	mov	r6, r1
d0053b60:	edd1 ba11 	vldr	s23, [r1, #68]	; 0x44
d0053b64:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0053b68:	edd1 8a10 	vldr	s17, [r1, #64]	; 0x40
d0053b6c:	f7fe fda0 	bl	d00526b0 <lightsGet>
d0053b70:	4605      	mov	r5, r0
d0053b72:	f7fe fda1 	bl	d00526b8 <lightsGetCount>
d0053b76:	edd8 7a09 	vldr	s15, [r8, #36]	; 0x24
d0053b7a:	ed98 7a0a 	vldr	s14, [r8, #40]	; 0x28
d0053b7e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0053b82:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d0053b86:	edd8 7a08 	vldr	s15, [r8, #32]
d0053b8a:	edd4 3a00 	vldr	s7, [r4]
d0053b8e:	edcd 7a06 	vstr	s15, [sp, #24]
d0053b92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b96:	edd8 7a0c 	vldr	s15, [r8, #48]	; 0x30
d0053b9a:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0053b9e:	edd4 1a01 	vldr	s3, [r4, #4]
d0053ba2:	edcd 7a07 	vstr	s15, [sp, #28]
d0053ba6:	bfc8      	it	gt
d0053ba8:	2301      	movgt	r3, #1
d0053baa:	edd8 7a0b 	vldr	s15, [r8, #44]	; 0x2c
d0053bae:	bfd8      	it	le
d0053bb0:	2300      	movle	r3, #0
d0053bb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bb6:	edd4 0a02 	vldr	s1, [r4, #8]
d0053bba:	edcd 7a0e 	vstr	s15, [sp, #56]	; 0x38
d0053bbe:	edd6 7a00 	vldr	s15, [r6]
d0053bc2:	bfc8      	it	gt
d0053bc4:	f043 0301 	orrgt.w	r3, r3, #1
d0053bc8:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d0053bcc:	edcd 7a08 	vstr	s15, [sp, #32]
d0053bd0:	edd6 7a01 	vldr	s15, [r6, #4]
d0053bd4:	ed94 ba0a 	vldr	s22, [r4, #40]	; 0x28
d0053bd8:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0053bdc:	edd6 7a02 	vldr	s15, [r6, #8]
d0053be0:	edd4 fa0b 	vldr	s31, [r4, #44]	; 0x2c
d0053be4:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0053be8:	ed94 ca0c 	vldr	s24, [r4, #48]	; 0x30
d0053bec:	edd4 ca0d 	vldr	s25, [r4, #52]	; 0x34
d0053bf0:	ed94 da0e 	vldr	s26, [r4, #56]	; 0x38
d0053bf4:	edd4 da0f 	vldr	s27, [r4, #60]	; 0x3c
d0053bf8:	ed94 ea07 	vldr	s28, [r4, #28]
d0053bfc:	edd4 ea08 	vldr	s29, [r4, #32]
d0053c00:	ed94 fa09 	vldr	s30, [r4, #36]	; 0x24
d0053c04:	ed96 5a06 	vldr	s10, [r6, #24]
d0053c08:	edcd 3a00 	vstr	s7, [sp]
d0053c0c:	edcd 1a03 	vstr	s3, [sp, #12]
d0053c10:	edcd 0a04 	vstr	s1, [sp, #16]
d0053c14:	ed96 3a07 	vldr	s6, [r6, #28]
d0053c18:	edd6 6a08 	vldr	s13, [r6, #32]
d0053c1c:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d0053c20:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d0053c24:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d0053c28:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d0053c2c:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d0053c30:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d0053c34:	b113      	cbz	r3, d0053c3c <submitEntitySolid+0x138>
d0053c36:	2800      	cmp	r0, #0
d0053c38:	f300 8495 	bgt.w	d0054566 <submitEntitySolid+0xa62>
d0053c3c:	2300      	movs	r3, #0
d0053c3e:	9305      	str	r3, [sp, #20]
d0053c40:	eddd 4a03 	vldr	s9, [sp, #12]
d0053c44:	ee6f 1a83 	vmul.f32	s3, s31, s6
d0053c48:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d0053c4c:	ee2d 1a03 	vmul.f32	s2, s26, s6
d0053c50:	ee6f 0aa2 	vmul.f32	s1, s31, s5
d0053c54:	f8d8 0004 	ldr.w	r0, [r8, #4]
d0053c58:	ee74 3ac4 	vsub.f32	s7, s9, s8
d0053c5c:	eddd 4a00 	vldr	s9, [sp]
d0053c60:	ed9d 4a08 	vldr	s8, [sp, #32]
d0053c64:	ee2d 0a22 	vmul.f32	s0, s26, s5
d0053c68:	ee2f 9a82 	vmul.f32	s18, s31, s4
d0053c6c:	2800      	cmp	r0, #0
d0053c6e:	ee74 4ac4 	vsub.f32	s9, s9, s8
d0053c72:	ee23 aa23 	vmul.f32	s20, s6, s7
d0053c76:	ee62 aaa3 	vmul.f32	s21, s5, s7
d0053c7a:	ee6d 9a02 	vmul.f32	s19, s26, s4
d0053c7e:	ee62 3a23 	vmul.f32	s7, s4, s7
d0053c82:	ee2e 3a83 	vmul.f32	s6, s29, s6
d0053c86:	ee6e 2aa2 	vmul.f32	s5, s29, s5
d0053c8a:	ee2e 2a82 	vmul.f32	s4, s29, s4
d0053c8e:	eee5 aaa4 	vfma.f32	s21, s11, s9
d0053c92:	eee6 3a24 	vfma.f32	s7, s12, s9
d0053c96:	eeeb 0a25 	vfma.f32	s1, s22, s11
d0053c9a:	eeac 0aa5 	vfma.f32	s0, s25, s11
d0053c9e:	eeee 2a25 	vfma.f32	s5, s28, s11
d0053ca2:	eddd 5a0a 	vldr	s11, [sp, #40]	; 0x28
d0053ca6:	eeab 9a06 	vfma.f32	s18, s22, s12
d0053caa:	eeec 9a86 	vfma.f32	s19, s25, s12
d0053cae:	eeae 2a06 	vfma.f32	s4, s28, s12
d0053cb2:	ed9d 6a04 	vldr	s12, [sp, #16]
d0053cb6:	eea5 aa24 	vfma.f32	s20, s10, s9
d0053cba:	eeeb 1a05 	vfma.f32	s3, s22, s10
d0053cbe:	eeac 1a85 	vfma.f32	s2, s25, s10
d0053cc2:	eeae 3a05 	vfma.f32	s6, s28, s10
d0053cc6:	ee36 6a65 	vsub.f32	s12, s12, s11
d0053cca:	eeec 0a07 	vfma.f32	s1, s24, s14
d0053cce:	eead 0a87 	vfma.f32	s0, s27, s14
d0053cd2:	eeec 1a26 	vfma.f32	s3, s24, s13
d0053cd6:	eead 1aa6 	vfma.f32	s2, s27, s13
d0053cda:	eea6 aa86 	vfma.f32	s20, s13, s12
d0053cde:	eee7 aa06 	vfma.f32	s21, s14, s12
d0053ce2:	eee7 3a86 	vfma.f32	s7, s15, s12
d0053ce6:	eeaf 3a26 	vfma.f32	s6, s30, s13
d0053cea:	eeef 2a07 	vfma.f32	s5, s30, s14
d0053cee:	eeac 9a27 	vfma.f32	s18, s24, s15
d0053cf2:	eeed 9aa7 	vfma.f32	s19, s27, s15
d0053cf6:	eeaf 2a27 	vfma.f32	s4, s30, s15
d0053cfa:	dd61      	ble.n	d0053dc0 <submitEntitySolid+0x2bc>
d0053cfc:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0053d00:	f8d8 3000 	ldr.w	r3, [r8]
d0053d04:	ed8d 8a0f 	vstr	s16, [sp, #60]	; 0x3c
d0053d08:	edcd ba10 	vstr	s23, [sp, #64]	; 0x40
d0053d0c:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0053d10:	edcd 8a11 	vstr	s17, [sp, #68]	; 0x44
d0053d14:	4936      	ldr	r1, [pc, #216]	; (d0053df0 <submitEntitySolid+0x2ec>)
d0053d16:	4a37      	ldr	r2, [pc, #220]	; (d0053df4 <submitEntitySolid+0x2f0>)
d0053d18:	ed9d 8a00 	vldr	s16, [sp]
d0053d1c:	eddd 8a03 	vldr	s17, [sp, #12]
d0053d20:	eddd ba04 	vldr	s23, [sp, #16]
d0053d24:	edd3 7a01 	vldr	s15, [r3, #4]
d0053d28:	330c      	adds	r3, #12
d0053d2a:	ed13 4a03 	vldr	s8, [r3, #-12]
d0053d2e:	310c      	adds	r1, #12
d0053d30:	ee2c 5aa7 	vmul.f32	s10, s25, s15
d0053d34:	ed53 4a01 	vldr	s9, [r3, #-4]
d0053d38:	ee6d 5a27 	vmul.f32	s11, s26, s15
d0053d3c:	4298      	cmp	r0, r3
d0053d3e:	ee2d 6aa7 	vmul.f32	s12, s27, s15
d0053d42:	f102 020c 	add.w	r2, r2, #12
d0053d46:	ee61 6a27 	vmul.f32	s13, s2, s15
d0053d4a:	ee20 7a27 	vmul.f32	s14, s0, s15
d0053d4e:	ee69 7aa7 	vmul.f32	s15, s19, s15
d0053d52:	eeab 5a04 	vfma.f32	s10, s22, s8
d0053d56:	eeef 5a84 	vfma.f32	s11, s31, s8
d0053d5a:	eeac 6a04 	vfma.f32	s12, s24, s8
d0053d5e:	eee1 6a84 	vfma.f32	s13, s3, s8
d0053d62:	eea0 7a84 	vfma.f32	s14, s1, s8
d0053d66:	eee9 7a04 	vfma.f32	s15, s18, s8
d0053d6a:	ee38 5a05 	vadd.f32	s10, s16, s10
d0053d6e:	ee78 5aa5 	vadd.f32	s11, s17, s11
d0053d72:	ee3b 6a86 	vadd.f32	s12, s23, s12
d0053d76:	ee76 6a8a 	vadd.f32	s13, s13, s20
d0053d7a:	ee37 7a2a 	vadd.f32	s14, s14, s21
d0053d7e:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0053d82:	eeae 5a24 	vfma.f32	s10, s28, s9
d0053d86:	eeee 5aa4 	vfma.f32	s11, s29, s9
d0053d8a:	eeaf 6a24 	vfma.f32	s12, s30, s9
d0053d8e:	eee3 6a24 	vfma.f32	s13, s6, s9
d0053d92:	eea2 7aa4 	vfma.f32	s14, s5, s9
d0053d96:	eee2 7a24 	vfma.f32	s15, s4, s9
d0053d9a:	ed01 5a03 	vstr	s10, [r1, #-12]
d0053d9e:	ed41 5a02 	vstr	s11, [r1, #-8]
d0053da2:	ed01 6a01 	vstr	s12, [r1, #-4]
d0053da6:	ed42 6a03 	vstr	s13, [r2, #-12]
d0053daa:	ed02 7a02 	vstr	s14, [r2, #-8]
d0053dae:	ed42 7a01 	vstr	s15, [r2, #-4]
d0053db2:	d1b7      	bne.n	d0053d24 <submitEntitySolid+0x220>
d0053db4:	ed9d 8a0f 	vldr	s16, [sp, #60]	; 0x3c
d0053db8:	eddd ba10 	vldr	s23, [sp, #64]	; 0x40
d0053dbc:	eddd 8a11 	vldr	s17, [sp, #68]	; 0x44
d0053dc0:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053dc4:	2b00      	cmp	r3, #0
d0053dc6:	9300      	str	r3, [sp, #0]
d0053dc8:	f340 8208 	ble.w	d00541dc <submitEntitySolid+0x6d8>
d0053dcc:	f04f 0a00 	mov.w	sl, #0
d0053dd0:	f8df b020 	ldr.w	fp, [pc, #32]	; d0053df4 <submitEntitySolid+0x2f0>
d0053dd4:	eddf aa08 	vldr	s21, [pc, #32]	; d0053df8 <submitEntitySolid+0x2f4>
d0053dd8:	ed9f ba08 	vldr	s22, [pc, #32]	; d0053dfc <submitEntitySolid+0x2f8>
d0053ddc:	ed9d ca0b 	vldr	s24, [sp, #44]	; 0x2c
d0053de0:	eddd ca0c 	vldr	s25, [sp, #48]	; 0x30
d0053de4:	ed9d da0d 	vldr	s26, [sp, #52]	; 0x34
d0053de8:	eddd da0e 	vldr	s27, [sp, #56]	; 0x38
d0053dec:	e04e      	b.n	d0053e8c <submitEntitySolid+0x388>
d0053dee:	bf00      	nop
d0053df0:	d00e89a0 	.word	0xd00e89a0
d0053df4:	d005a960 	.word	0xd005a960
d0053df8:	358637bd 	.word	0x358637bd
d0053dfc:	3b808081 	.word	0x3b808081
d0053e00:	437f0000 	.word	0x437f0000
d0053e04:	ed5f 5a02 	vldr	s11, [pc, #-8]	; d0053e00 <submitEntitySolid+0x2fc>
d0053e08:	eeb4 8a65 	vcmp.f32	s16, s11
d0053e0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e10:	d009      	beq.n	d0053e26 <submitEntitySolid+0x322>
d0053e12:	eddd 5a06 	vldr	s11, [sp, #24]
d0053e16:	ed9d 5a07 	vldr	s10, [sp, #28]
d0053e1a:	9b05      	ldr	r3, [sp, #20]
d0053e1c:	ee35 8a85 	vadd.f32	s16, s11, s10
d0053e20:	2b00      	cmp	r3, #0
d0053e22:	f040 824a 	bne.w	d00542ba <submitEntitySolid+0x7b6>
d0053e26:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053e2a:	fe88 8a0e 	vmaxnm.f32	s16, s16, s28
d0053e2e:	fe88 8a67 	vminnm.f32	s16, s16, s15
d0053e32:	eeb0 0a48 	vmov.f32	s0, s16
d0053e36:	f7fe fc0f 	bl	d0052658 <brightnessToShadeF>
d0053e3a:	9b03      	ldr	r3, [sp, #12]
d0053e3c:	eeb0 9a40 	vmov.f32	s18, s0
d0053e40:	2b00      	cmp	r3, #0
d0053e42:	f000 81d0 	beq.w	d00541e6 <submitEntitySolid+0x6e2>
d0053e46:	eef0 4a40 	vmov.f32	s9, s0
d0053e4a:	7ba3      	ldrb	r3, [r4, #14]
d0053e4c:	7b62      	ldrb	r2, [r4, #13]
d0053e4e:	9801      	ldr	r0, [sp, #4]
d0053e50:	7b21      	ldrb	r1, [r4, #12]
d0053e52:	ed97 3a00 	vldr	s6, [r7]
d0053e56:	edd7 3a01 	vldr	s7, [r7, #4]
d0053e5a:	ed97 4a02 	vldr	s8, [r7, #8]
d0053e5e:	edd6 1a00 	vldr	s3, [r6]
d0053e62:	ed96 2a01 	vldr	s4, [r6, #4]
d0053e66:	edd6 2a02 	vldr	s5, [r6, #8]
d0053e6a:	ed95 0a00 	vldr	s0, [r5]
d0053e6e:	edd5 0a01 	vldr	s1, [r5, #4]
d0053e72:	ed95 1a02 	vldr	s2, [r5, #8]
d0053e76:	f7ff f9cb 	bl	d0053210 <submitClippedTri>
d0053e7a:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053e7e:	9300      	str	r3, [sp, #0]
d0053e80:	f10a 0a01 	add.w	sl, sl, #1
d0053e84:	9b00      	ldr	r3, [sp, #0]
d0053e86:	459a      	cmp	sl, r3
d0053e88:	f280 81a8 	bge.w	d00541dc <submitEntitySolid+0x6d8>
d0053e8c:	f8d8 4010 	ldr.w	r4, [r8, #16]
d0053e90:	ea4f 130a 	mov.w	r3, sl, lsl #4
d0053e94:	58e3      	ldr	r3, [r4, r3]
d0053e96:	eb04 140a 	add.w	r4, r4, sl, lsl #4
d0053e9a:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0053e9e:	6861      	ldr	r1, [r4, #4]
d0053ea0:	68a2      	ldr	r2, [r4, #8]
d0053ea2:	ea4f 0c43 	mov.w	ip, r3, lsl #1
d0053ea6:	eb0b 0585 	add.w	r5, fp, r5, lsl #2
d0053eaa:	eb01 0641 	add.w	r6, r1, r1, lsl #1
d0053eae:	edd5 7a02 	vldr	s15, [r5, #8]
d0053eb2:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d0053eb6:	0048      	lsls	r0, r1, #1
d0053eb8:	eef4 7aeb 	vcmpe.f32	s15, s23
d0053ebc:	eb0b 0686 	add.w	r6, fp, r6, lsl #2
d0053ec0:	eb0b 0787 	add.w	r7, fp, r7, lsl #2
d0053ec4:	9003      	str	r0, [sp, #12]
d0053ec6:	ea4f 0942 	mov.w	r9, r2, lsl #1
d0053eca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ece:	dd0d      	ble.n	d0053eec <submitEntitySolid+0x3e8>
d0053ed0:	ed96 7a02 	vldr	s14, [r6, #8]
d0053ed4:	eeb4 7aeb 	vcmpe.f32	s14, s23
d0053ed8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053edc:	dd06      	ble.n	d0053eec <submitEntitySolid+0x3e8>
d0053ede:	ed97 7a02 	vldr	s14, [r7, #8]
d0053ee2:	eeb4 7aeb 	vcmpe.f32	s14, s23
d0053ee6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053eea:	dcc9      	bgt.n	d0053e80 <submitEntitySolid+0x37c>
d0053eec:	eef4 7ae8 	vcmpe.f32	s15, s17
d0053ef0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ef4:	d516      	bpl.n	d0053f24 <submitEntitySolid+0x420>
d0053ef6:	0048      	lsls	r0, r1, #1
d0053ef8:	eb00 0e01 	add.w	lr, r0, r1
d0053efc:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053f00:	ed9e 7a02 	vldr	s14, [lr, #8]
d0053f04:	eeb4 7ae8 	vcmpe.f32	s14, s17
d0053f08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f0c:	d50a      	bpl.n	d0053f24 <submitEntitySolid+0x420>
d0053f0e:	eb09 0e02 	add.w	lr, r9, r2
d0053f12:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053f16:	ed9e 7a02 	vldr	s14, [lr, #8]
d0053f1a:	eeb4 7ae8 	vcmpe.f32	s14, s17
d0053f1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f22:	d4ad      	bmi.n	d0053e80 <submitEntitySolid+0x37c>
d0053f24:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0053f28:	f01e 0f10 	tst.w	lr, #16
d0053f2c:	d135      	bne.n	d0053f9a <submitEntitySolid+0x496>
d0053f2e:	edd5 2a00 	vldr	s5, [r5]
d0053f32:	edd5 3a02 	vldr	s7, [r5, #8]
d0053f36:	edd6 5a00 	vldr	s11, [r6]
d0053f3a:	ed97 5a02 	vldr	s10, [r7, #8]
d0053f3e:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0053f42:	ed95 7a01 	vldr	s14, [r5, #4]
d0053f46:	ee35 5a63 	vsub.f32	s10, s10, s7
d0053f4a:	ed96 4a02 	vldr	s8, [r6, #8]
d0053f4e:	ed97 6a01 	vldr	s12, [r7, #4]
d0053f52:	edd7 6a00 	vldr	s13, [r7]
d0053f56:	ee34 4a63 	vsub.f32	s8, s8, s7
d0053f5a:	ee36 6a47 	vsub.f32	s12, s12, s14
d0053f5e:	edd6 4a01 	vldr	s9, [r6, #4]
d0053f62:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0053f66:	ee25 2a65 	vnmul.f32	s4, s10, s11
d0053f6a:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0053f6e:	ee26 3a44 	vnmul.f32	s6, s12, s8
d0053f72:	eea4 2a26 	vfma.f32	s4, s8, s13
d0053f76:	ee66 6ae4 	vnmul.f32	s13, s13, s9
d0053f7a:	eea4 3a85 	vfma.f32	s6, s9, s10
d0053f7e:	eee5 6a86 	vfma.f32	s13, s11, s12
d0053f82:	ee27 7a02 	vmul.f32	s14, s14, s4
d0053f86:	eea2 7a83 	vfma.f32	s14, s5, s6
d0053f8a:	eea3 7aa6 	vfma.f32	s14, s7, s13
d0053f8e:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0053f92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f96:	f6bf af73 	bge.w	d0053e80 <submitEntitySolid+0x37c>
d0053f9a:	eb0c 0e03 	add.w	lr, ip, r3
d0053f9e:	eef1 5a67 	vneg.f32	s11, s15
d0053fa2:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053fa6:	ed9e 7a00 	vldr	s14, [lr]
d0053faa:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0053fae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fb2:	d51f      	bpl.n	d0053ff4 <submitEntitySolid+0x4f0>
d0053fb4:	0048      	lsls	r0, r1, #1
d0053fb6:	eb00 0e01 	add.w	lr, r0, r1
d0053fba:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053fbe:	edde 6a02 	vldr	s13, [lr, #8]
d0053fc2:	ed9e 6a00 	vldr	s12, [lr]
d0053fc6:	eef1 6a66 	vneg.f32	s13, s13
d0053fca:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053fce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fd2:	d50f      	bpl.n	d0053ff4 <submitEntitySolid+0x4f0>
d0053fd4:	eb09 0e02 	add.w	lr, r9, r2
d0053fd8:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053fdc:	edde 6a02 	vldr	s13, [lr, #8]
d0053fe0:	ed9e 6a00 	vldr	s12, [lr]
d0053fe4:	eef1 6a66 	vneg.f32	s13, s13
d0053fe8:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053fec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ff0:	f53f af46 	bmi.w	d0053e80 <submitEntitySolid+0x37c>
d0053ff4:	eef4 7ac7 	vcmpe.f32	s15, s14
d0053ff8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ffc:	d51b      	bpl.n	d0054036 <submitEntitySolid+0x532>
d0053ffe:	0048      	lsls	r0, r1, #1
d0054000:	eb00 0e01 	add.w	lr, r0, r1
d0054004:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0054008:	ed9e 6a00 	vldr	s12, [lr]
d005400c:	edde 6a02 	vldr	s13, [lr, #8]
d0054010:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0054014:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054018:	dd0d      	ble.n	d0054036 <submitEntitySolid+0x532>
d005401a:	eb09 0e02 	add.w	lr, r9, r2
d005401e:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0054022:	ed9e 6a00 	vldr	s12, [lr]
d0054026:	edde 6a02 	vldr	s13, [lr, #8]
d005402a:	eeb4 6ae6 	vcmpe.f32	s12, s13
d005402e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054032:	f73f af25 	bgt.w	d0053e80 <submitEntitySolid+0x37c>
d0054036:	ee27 6a8c 	vmul.f32	s12, s15, s24
d005403a:	eb0c 0e03 	add.w	lr, ip, r3
d005403e:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0054042:	eeb1 5a46 	vneg.f32	s10, s12
d0054046:	edde 6a01 	vldr	s13, [lr, #4]
d005404a:	eef4 6ac5 	vcmpe.f32	s13, s10
d005404e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054052:	d51f      	bpl.n	d0054094 <submitEntitySolid+0x590>
d0054054:	0048      	lsls	r0, r1, #1
d0054056:	eb00 0e01 	add.w	lr, r0, r1
d005405a:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d005405e:	edde 4a02 	vldr	s9, [lr, #8]
d0054062:	ed9e 4a01 	vldr	s8, [lr, #4]
d0054066:	ee64 4acc 	vnmul.f32	s9, s9, s24
d005406a:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005406e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054072:	d50f      	bpl.n	d0054094 <submitEntitySolid+0x590>
d0054074:	eb09 0e02 	add.w	lr, r9, r2
d0054078:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d005407c:	edde 4a02 	vldr	s9, [lr, #8]
d0054080:	ed9e 4a01 	vldr	s8, [lr, #4]
d0054084:	ee64 4acc 	vnmul.f32	s9, s9, s24
d0054088:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005408c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054090:	f53f aef6 	bmi.w	d0053e80 <submitEntitySolid+0x37c>
d0054094:	eef4 6ac6 	vcmpe.f32	s13, s12
d0054098:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005409c:	dd1f      	ble.n	d00540de <submitEntitySolid+0x5da>
d005409e:	0048      	lsls	r0, r1, #1
d00540a0:	eb00 0e01 	add.w	lr, r0, r1
d00540a4:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d00540a8:	edde 4a02 	vldr	s9, [lr, #8]
d00540ac:	ed9e 4a01 	vldr	s8, [lr, #4]
d00540b0:	ee6c 4a24 	vmul.f32	s9, s24, s9
d00540b4:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00540b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540bc:	dd0f      	ble.n	d00540de <submitEntitySolid+0x5da>
d00540be:	eb09 0e02 	add.w	lr, r9, r2
d00540c2:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d00540c6:	edde 4a02 	vldr	s9, [lr, #8]
d00540ca:	ed9e 4a01 	vldr	s8, [lr, #4]
d00540ce:	ee6c 4a24 	vmul.f32	s9, s24, s9
d00540d2:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00540d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540da:	f73f aed1 	bgt.w	d0053e80 <submitEntitySolid+0x37c>
d00540de:	eef4 7ae8 	vcmpe.f32	s15, s17
d00540e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540e6:	db28      	blt.n	d005413a <submitEntitySolid+0x636>
d00540e8:	0048      	lsls	r0, r1, #1
d00540ea:	eb00 0e01 	add.w	lr, r0, r1
d00540ee:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d00540f2:	edde 4a02 	vldr	s9, [lr, #8]
d00540f6:	eef4 4ae8 	vcmpe.f32	s9, s17
d00540fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540fe:	db1c      	blt.n	d005413a <submitEntitySolid+0x636>
d0054100:	eb09 0002 	add.w	r0, r9, r2
d0054104:	eef4 7ac7 	vcmpe.f32	s15, s14
d0054108:	eb0b 0080 	add.w	r0, fp, r0, lsl #2
d005410c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054110:	edd0 7a02 	vldr	s15, [r0, #8]
d0054114:	9003      	str	r0, [sp, #12]
d0054116:	eef4 7ae8 	vcmpe.f32	s15, s17
d005411a:	bfac      	ite	ge
d005411c:	2001      	movge	r0, #1
d005411e:	2000      	movlt	r0, #0
d0054120:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054124:	f000 0001 	and.w	r0, r0, #1
d0054128:	bfb8      	it	lt
d005412a:	2000      	movlt	r0, #0
d005412c:	b128      	cbz	r0, d005413a <submitEntitySolid+0x636>
d005412e:	eeb4 7a65 	vcmp.f32	s14, s11
d0054132:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054136:	f280 82be 	bge.w	d00546b6 <submitEntitySolid+0xbb2>
d005413a:	2000      	movs	r0, #0
d005413c:	9003      	str	r0, [sp, #12]
d005413e:	0048      	lsls	r0, r1, #1
d0054140:	eb09 0e02 	add.w	lr, r9, r2
d0054144:	4463      	add	r3, ip
d0054146:	4a9a      	ldr	r2, [pc, #616]	; (d00543b0 <submitEntitySolid+0x8ac>)
d0054148:	4401      	add	r1, r0
d005414a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d005414e:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0054152:	eb02 028e 	add.w	r2, r2, lr, lsl #2
d0054156:	ed93 6a00 	vldr	s12, [r3]
d005415a:	ed93 7a02 	vldr	s14, [r3, #8]
d005415e:	edd1 3a00 	vldr	s7, [r1]
d0054162:	ed92 3a02 	vldr	s6, [r2, #8]
d0054166:	ee73 5ac6 	vsub.f32	s11, s7, s12
d005416a:	edd3 6a01 	vldr	s13, [r3, #4]
d005416e:	ee33 5a47 	vsub.f32	s10, s6, s14
d0054172:	edd1 4a02 	vldr	s9, [r1, #8]
d0054176:	edd2 2a01 	vldr	s5, [r2, #4]
d005417a:	ed92 2a00 	vldr	s4, [r2]
d005417e:	ee34 1ac7 	vsub.f32	s2, s9, s14
d0054182:	ee72 7ae6 	vsub.f32	s15, s5, s13
d0054186:	ed91 4a01 	vldr	s8, [r1, #4]
d005418a:	ee32 9a46 	vsub.f32	s18, s4, s12
d005418e:	ee65 9a65 	vnmul.f32	s19, s10, s11
d0054192:	ee74 1a66 	vsub.f32	s3, s8, s13
d0054196:	ee27 aac1 	vnmul.f32	s20, s15, s2
d005419a:	eee1 9a09 	vfma.f32	s19, s2, s18
d005419e:	ee29 9a61 	vnmul.f32	s18, s18, s3
d00541a2:	eea1 aa85 	vfma.f32	s20, s3, s10
d00541a6:	eea5 9aa7 	vfma.f32	s18, s11, s15
d00541aa:	ee69 7aa9 	vmul.f32	s15, s19, s19
d00541ae:	eeea 7a0a 	vfma.f32	s15, s20, s20
d00541b2:	eee9 7a09 	vfma.f32	s15, s18, s18
d00541b6:	eef4 7aea 	vcmpe.f32	s15, s21
d00541ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541be:	f67f ae5f 	bls.w	d0053e80 <submitEntitySolid+0x37c>
d00541c2:	7b63      	ldrb	r3, [r4, #13]
d00541c4:	ee05 3a90 	vmov	s11, r3
d00541c8:	2bf8      	cmp	r3, #248	; 0xf8
d00541ca:	eeb8 ea65 	vcvt.f32.u32	s28, s11
d00541ce:	ee2e ea0b 	vmul.f32	s28, s28, s22
d00541d2:	f67f ae17 	bls.w	d0053e04 <submitEntitySolid+0x300>
d00541d6:	ed9f 8a77 	vldr	s16, [pc, #476]	; d00543b4 <submitEntitySolid+0x8b0>
d00541da:	e624      	b.n	d0053e26 <submitEntitySolid+0x322>
d00541dc:	b045      	add	sp, #276	; 0x114
d00541de:	ecbd 8b10 	vpop	{d8-d15}
d00541e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00541e6:	4a74      	ldr	r2, [pc, #464]	; (d00543b8 <submitEntitySolid+0x8b4>)
d00541e8:	edd6 1a00 	vldr	s3, [r6]
d00541ec:	7c13      	ldrb	r3, [r2, #16]
d00541ee:	7c50      	ldrb	r0, [r2, #17]
d00541f0:	ed96 2a01 	vldr	s4, [r6, #4]
d00541f4:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00541f8:	7c90      	ldrb	r0, [r2, #18]
d00541fa:	7cd2      	ldrb	r2, [r2, #19]
d00541fc:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0054200:	edd6 2a02 	vldr	s5, [r6, #8]
d0054204:	f8dd 9008 	ldr.w	r9, [sp, #8]
d0054208:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005420c:	4a6b      	ldr	r2, [pc, #428]	; (d00543bc <submitEntitySolid+0x8b8>)
d005420e:	edd5 0a01 	vldr	s1, [r5, #4]
d0054212:	4648      	mov	r0, r9
d0054214:	681e      	ldr	r6, [r3, #0]
d0054216:	4b6a      	ldr	r3, [pc, #424]	; (d00543c0 <submitEntitySolid+0x8bc>)
d0054218:	ed95 1a02 	vldr	s2, [r5, #8]
d005421c:	ed95 0a00 	vldr	s0, [r5]
d0054220:	ed97 3a00 	vldr	s6, [r7]
d0054224:	edd7 3a01 	vldr	s7, [r7, #4]
d0054228:	ed97 4a02 	vldr	s8, [r7, #8]
d005422c:	9901      	ldr	r1, [sp, #4]
d005422e:	6835      	ldr	r5, [r6, #0]
d0054230:	6812      	ldr	r2, [r2, #0]
d0054232:	681b      	ldr	r3, [r3, #0]
d0054234:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d0054238:	ed8d 1a17 	vstr	s2, [sp, #92]	; 0x5c
d005423c:	edcd 1a18 	vstr	s3, [sp, #96]	; 0x60
d0054240:	ed8d 2a19 	vstr	s4, [sp, #100]	; 0x64
d0054244:	edcd 2a1a 	vstr	s5, [sp, #104]	; 0x68
d0054248:	ed8d 3a1b 	vstr	s6, [sp, #108]	; 0x6c
d005424c:	edcd 3a1c 	vstr	s7, [sp, #112]	; 0x70
d0054250:	ed8d 4a1d 	vstr	s8, [sp, #116]	; 0x74
d0054254:	ed8d 0a15 	vstr	s0, [sp, #84]	; 0x54
d0054258:	47a8      	blx	r5
d005425a:	2802      	cmp	r0, #2
d005425c:	dc03      	bgt.n	d0054266 <submitEntitySolid+0x762>
d005425e:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0054262:	9300      	str	r3, [sp, #0]
d0054264:	e60c      	b.n	d0053e80 <submitEntitySolid+0x37c>
d0054266:	eef0 4a49 	vmov.f32	s9, s18
d005426a:	1e46      	subs	r6, r0, #1
d005426c:	2501      	movs	r5, #1
d005426e:	464f      	mov	r7, r9
d0054270:	9801      	ldr	r0, [sp, #4]
d0054272:	4629      	mov	r1, r5
d0054274:	3501      	adds	r5, #1
d0054276:	7ba3      	ldrb	r3, [r4, #14]
d0054278:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d005427c:	7b62      	ldrb	r2, [r4, #13]
d005427e:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0054282:	ed97 0a00 	vldr	s0, [r7]
d0054286:	eb07 0181 	add.w	r1, r7, r1, lsl #2
d005428a:	edd7 0a01 	vldr	s1, [r7, #4]
d005428e:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d0054292:	ed97 1a02 	vldr	s2, [r7, #8]
d0054296:	edd1 1a00 	vldr	s3, [r1]
d005429a:	ed91 2a01 	vldr	s4, [r1, #4]
d005429e:	edd1 2a02 	vldr	s5, [r1, #8]
d00542a2:	ed9c 3a00 	vldr	s6, [ip]
d00542a6:	eddc 3a01 	vldr	s7, [ip, #4]
d00542aa:	ed9c 4a02 	vldr	s8, [ip, #8]
d00542ae:	7b21      	ldrb	r1, [r4, #12]
d00542b0:	f7fe ffae 	bl	d0053210 <submitClippedTri>
d00542b4:	42b5      	cmp	r5, r6
d00542b6:	d1dc      	bne.n	d0054272 <submitEntitySolid+0x76e>
d00542b8:	e7d1      	b.n	d005425e <submitEntitySolid+0x75a>
d00542ba:	ee73 ea86 	vadd.f32	s29, s7, s12
d00542be:	eddf fa41 	vldr	s31, [pc, #260]	; d00543c4 <submitEntitySolid+0x8c0>
d00542c2:	ee34 fa26 	vadd.f32	s30, s8, s13
d00542c6:	ee34 7a87 	vadd.f32	s14, s9, s14
d00542ca:	eeb5 dac0 	vcmpe.f32	s26, #0.0
d00542ce:	ee7e ea82 	vadd.f32	s29, s29, s4
d00542d2:	ee3f fa22 	vadd.f32	s30, s30, s5
d00542d6:	ee37 3a03 	vadd.f32	s6, s14, s6
d00542da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542de:	ee6e eaaf 	vmul.f32	s29, s29, s31
d00542e2:	ee2f fa2f 	vmul.f32	s30, s30, s31
d00542e6:	ee63 fa2f 	vmul.f32	s31, s6, s31
d00542ea:	f340 8175 	ble.w	d00545d8 <submitEntitySolid+0xad4>
d00542ee:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d00542f2:	ee77 2a4f 	vsub.f32	s5, s14, s30
d00542f6:	ed9d 7a08 	vldr	s14, [sp, #32]
d00542fa:	ee37 3a6e 	vsub.f32	s6, s14, s29
d00542fe:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0054302:	ee37 4a6f 	vsub.f32	s8, s14, s31
d0054306:	ee22 7aa2 	vmul.f32	s14, s5, s5
d005430a:	eea3 7a03 	vfma.f32	s14, s6, s6
d005430e:	eea4 7a04 	vfma.f32	s14, s8, s8
d0054312:	eeb4 7aea 	vcmpe.f32	s14, s21
d0054316:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005431a:	f340 815d 	ble.w	d00545d8 <submitEntitySolid+0xad4>
d005431e:	eddf 6a2a 	vldr	s13, [pc, #168]	; d00543c8 <submitEntitySolid+0x8c4>
d0054322:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0054326:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005432a:	f100 8244 	bmi.w	d00547b6 <submitEntitySolid+0xcb2>
d005432e:	eddf 6a27 	vldr	s13, [pc, #156]	; d00543cc <submitEntitySolid+0x8c8>
d0054332:	eeb4 7a66 	vcmp.f32	s14, s13
d0054336:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005433a:	f300 823c 	bgt.w	d00547b6 <submitEntitySolid+0xcb2>
d005433e:	eef1 6ae7 	vsqrt.f32	s13, s15
d0054342:	aa1d      	add	r2, sp, #116	; 0x74
d0054344:	4639      	mov	r1, r7
d0054346:	4650      	mov	r0, sl
d0054348:	f04f 0900 	mov.w	r9, #0
d005434c:	46aa      	mov	sl, r5
d005434e:	4627      	mov	r7, r4
d0054350:	4615      	mov	r5, r2
d0054352:	4632      	mov	r2, r6
d0054354:	9e05      	ldr	r6, [sp, #20]
d0054356:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005435a:	eeb0 6a4c 	vmov.f32	s12, s24
d005435e:	eef0 0a6d 	vmov.f32	s1, s27
d0054362:	eeb0 5a47 	vmov.f32	s10, s14
d0054366:	eef0 5a4e 	vmov.f32	s11, s28
d005436a:	eeb0 ca62 	vmov.f32	s24, s5
d005436e:	eef0 da44 	vmov.f32	s27, s8
d0054372:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0054376:	eeb0 7a6b 	vmov.f32	s14, s23
d005437a:	eef0 6a68 	vmov.f32	s13, s17
d005437e:	eef0 ba43 	vmov.f32	s23, s6
d0054382:	eef0 8a6f 	vmov.f32	s17, s31
d0054386:	eef0 fa4f 	vmov.f32	s31, s30
d005438a:	eeb0 fa6e 	vmov.f32	s30, s29
d005438e:	ee29 9a27 	vmul.f32	s18, s18, s15
d0054392:	ee2a aa27 	vmul.f32	s20, s20, s15
d0054396:	ee69 9aa7 	vmul.f32	s19, s19, s15
d005439a:	ee39 2a09 	vadd.f32	s4, s18, s18
d005439e:	ee3a 1a0a 	vadd.f32	s2, s20, s20
d00543a2:	ee79 1aa9 	vadd.f32	s3, s19, s19
d00543a6:	eef0 ea49 	vmov.f32	s29, s18
d00543aa:	eeb0 ea42 	vmov.f32	s28, s4
d00543ae:	e0c5      	b.n	d005453c <submitEntitySolid+0xa38>
d00543b0:	d00e89a0 	.word	0xd00e89a0
d00543b4:	437f0000 	.word	0x437f0000
d00543b8:	2001f000 	.word	0x2001f000
d00543bc:	d0066960 	.word	0xd0066960
d00543c0:	d0066964 	.word	0xd0066964
d00543c4:	3eaab368 	.word	0x3eaab368
d00543c8:	3f7fbe77 	.word	0x3f7fbe77
d00543cc:	3f8020c5 	.word	0x3f8020c5
d00543d0:	00000000 	.word	0x00000000
d00543d4:	edd4 7a02 	vldr	s15, [r4, #8]
d00543d8:	edd4 3a01 	vldr	s7, [r4, #4]
d00543dc:	ee77 7aef 	vsub.f32	s15, s15, s31
d00543e0:	ed94 4a03 	vldr	s8, [r4, #12]
d00543e4:	ee73 3acf 	vsub.f32	s7, s7, s30
d00543e8:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d00543ec:	ee34 4a68 	vsub.f32	s8, s8, s17
d00543f0:	ee67 4aa7 	vmul.f32	s9, s15, s15
d00543f4:	ee63 2a03 	vmul.f32	s5, s6, s6
d00543f8:	eee3 4aa3 	vfma.f32	s9, s7, s7
d00543fc:	eee4 4a04 	vfma.f32	s9, s8, s8
d0054400:	eef4 2a64 	vcmp.f32	s5, s9
d0054404:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054408:	f340 8094 	ble.w	d0054534 <submitEntitySolid+0xa30>
d005440c:	eef4 4a6a 	vcmp.f32	s9, s21
d0054410:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054414:	f340 808e 	ble.w	d0054534 <submitEntitySolid+0xa30>
d0054418:	eeb1 9ae4 	vsqrt.f32	s18, s9
d005441c:	ed94 2a08 	vldr	s4, [r4, #32]
d0054420:	ee22 0a02 	vmul.f32	s0, s4, s4
d0054424:	eeb4 0ae4 	vcmpe.f32	s0, s9
d0054428:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005442c:	eec5 2a09 	vdiv.f32	s5, s10, s18
d0054430:	ee63 3aa2 	vmul.f32	s7, s7, s5
d0054434:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0054438:	ee24 4a22 	vmul.f32	s8, s8, s5
d005443c:	f140 80d3 	bpl.w	d00545e6 <submitEntitySolid+0xae2>
d0054440:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0054444:	eeb4 2ac0 	vcmpe.f32	s4, s0
d0054448:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005444c:	da72      	bge.n	d0054534 <submitEntitySolid+0xa30>
d005444e:	eeb4 3ac0 	vcmpe.f32	s6, s0
d0054452:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0054456:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005445a:	eeb4 0ae4 	vcmpe.f32	s0, s9
d005445e:	f200 8114 	bhi.w	d005468a <submitEntitySolid+0xb86>
d0054462:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054466:	d965      	bls.n	d0054534 <submitEntitySolid+0xa30>
d0054468:	ee74 4ac2 	vsub.f32	s9, s9, s4
d005446c:	ee30 2a42 	vsub.f32	s4, s0, s4
d0054470:	ee84 9a82 	vdiv.f32	s18, s9, s4
d0054474:	ed5f 4a2a 	vldr	s9, [pc, #-168]	; d00543d0 <submitEntitySolid+0x8cc>
d0054478:	fe89 9a24 	vmaxnm.f32	s18, s18, s9
d005447c:	fe89 9a45 	vminnm.f32	s18, s18, s10
d0054480:	ee35 9a49 	vsub.f32	s18, s10, s18
d0054484:	eeb5 9ac0 	vcmpe.f32	s18, #0.0
d0054488:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005448c:	d952      	bls.n	d0054534 <submitEntitySolid+0xa30>
d005448e:	ee67 4aa9 	vmul.f32	s9, s15, s19
d0054492:	eee3 4a8a 	vfma.f32	s9, s7, s20
d0054496:	eee4 4a2e 	vfma.f32	s9, s8, s29
d005449a:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d005449e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544a2:	d947      	bls.n	d0054534 <submitEntitySolid+0xa30>
d00544a4:	eef5 cac0 	vcmpe.f32	s25, #0.0
d00544a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544ac:	dd07      	ble.n	d00544be <submitEntitySolid+0x9ba>
d00544ae:	ed94 3a07 	vldr	s6, [r4, #28]
d00544b2:	ee2c 3a83 	vmul.f32	s6, s25, s6
d00544b6:	ee23 3a09 	vmul.f32	s6, s6, s18
d00544ba:	eea4 8a83 	vfma.f32	s16, s9, s6
d00544be:	eeb5 dac0 	vcmpe.f32	s26, #0.0
d00544c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544c6:	dd2f      	ble.n	d0054528 <submitEntitySolid+0xa24>
d00544c8:	eed4 7aa1 	vfnms.f32	s15, s9, s3
d00544cc:	eed4 3a81 	vfnms.f32	s7, s9, s2
d00544d0:	ee94 4a8e 	vfnms.f32	s8, s9, s28
d00544d4:	ee2c 0a27 	vmul.f32	s0, s24, s15
d00544d8:	eeab 0aa3 	vfma.f32	s0, s23, s7
d00544dc:	eead 0a84 	vfma.f32	s0, s27, s8
d00544e0:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00544e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544e8:	dd1e      	ble.n	d0054528 <submitEntitySolid+0xa24>
d00544ea:	eef2 7a00 	vmov.f32	s15, #32	; 0x41000000  8.0
d00544ee:	eef4 0a67 	vcmp.f32	s1, s15
d00544f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544f6:	d009      	beq.n	d005450c <submitEntitySolid+0xa08>
d00544f8:	eef3 7a00 	vmov.f32	s15, #48	; 0x41800000  16.0
d00544fc:	eef4 0a67 	vcmp.f32	s1, s15
d0054500:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054504:	f040 8085 	bne.w	d0054612 <submitEntitySolid+0xb0e>
d0054508:	ee20 0a00 	vmul.f32	s0, s0, s0
d005450c:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054510:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054514:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054518:	edd4 7a07 	vldr	s15, [r4, #28]
d005451c:	ee6d 7a27 	vmul.f32	s15, s26, s15
d0054520:	ee27 9a89 	vmul.f32	s18, s15, s18
d0054524:	eea9 8a00 	vfma.f32	s16, s18, s0
d0054528:	eeb4 8ac5 	vcmpe.f32	s16, s10
d005452c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054530:	f280 8098 	bge.w	d0054664 <submitEntitySolid+0xb60>
d0054534:	f109 0901 	add.w	r9, r9, #1
d0054538:	454e      	cmp	r6, r9
d005453a:	d05a      	beq.n	d00545f2 <submitEntitySolid+0xaee>
d005453c:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0054540:	7823      	ldrb	r3, [r4, #0]
d0054542:	2b00      	cmp	r3, #0
d0054544:	f43f af46 	beq.w	d00543d4 <submitEntitySolid+0x8d0>
d0054548:	edd4 3a04 	vldr	s7, [r4, #16]
d005454c:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0054550:	edd4 7a05 	vldr	s15, [r4, #20]
d0054554:	ed94 4a06 	vldr	s8, [r4, #24]
d0054558:	eef1 3a63 	vneg.f32	s7, s7
d005455c:	eef1 7a67 	vneg.f32	s15, s15
d0054560:	eeb1 4a44 	vneg.f32	s8, s8
d0054564:	e793      	b.n	d005448e <submitEntitySolid+0x98a>
d0054566:	2200      	movs	r2, #0
d0054568:	ed98 1a06 	vldr	s2, [r8, #24]
d005456c:	4611      	mov	r1, r2
d005456e:	e026      	b.n	d00545be <submitEntitySolid+0xaba>
d0054570:	edd5 4a02 	vldr	s9, [r5, #8]
d0054574:	ab44      	add	r3, sp, #272	; 0x110
d0054576:	ed95 9a01 	vldr	s18, [r5, #4]
d005457a:	ee74 4ae1 	vsub.f32	s9, s9, s3
d005457e:	ed95 0a03 	vldr	s0, [r5, #12]
d0054582:	ee39 9a63 	vsub.f32	s18, s18, s7
d0054586:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d005458a:	ee30 0a60 	vsub.f32	s0, s0, s1
d005458e:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0054592:	ee64 4aa4 	vmul.f32	s9, s9, s9
d0054596:	ee31 4a04 	vadd.f32	s8, s2, s8
d005459a:	eee9 4a09 	vfma.f32	s9, s18, s18
d005459e:	ee24 4a04 	vmul.f32	s8, s8, s8
d00545a2:	eee0 4a00 	vfma.f32	s9, s0, s0
d00545a6:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00545aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545ae:	db02      	blt.n	d00545b6 <submitEntitySolid+0xab2>
d00545b0:	3101      	adds	r1, #1
d00545b2:	f843 5c98 	str.w	r5, [r3, #-152]
d00545b6:	3201      	adds	r2, #1
d00545b8:	3540      	adds	r5, #64	; 0x40
d00545ba:	4290      	cmp	r0, r2
d00545bc:	dd16      	ble.n	d00545ec <submitEntitySolid+0xae8>
d00545be:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d00545c0:	2b00      	cmp	r3, #0
d00545c2:	d0f8      	beq.n	d00545b6 <submitEntitySolid+0xab2>
d00545c4:	782b      	ldrb	r3, [r5, #0]
d00545c6:	2b01      	cmp	r3, #1
d00545c8:	d1d2      	bne.n	d0054570 <submitEntitySolid+0xa6c>
d00545ca:	ab44      	add	r3, sp, #272	; 0x110
d00545cc:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d00545d0:	3101      	adds	r1, #1
d00545d2:	f843 5c98 	str.w	r5, [r3, #-152]
d00545d6:	e7ee      	b.n	d00545b6 <submitEntitySolid+0xab2>
d00545d8:	ed1f 4a83 	vldr	s8, [pc, #-524]	; d00543d0 <submitEntitySolid+0x8cc>
d00545dc:	eef0 2a44 	vmov.f32	s5, s8
d00545e0:	eeb0 3a44 	vmov.f32	s6, s8
d00545e4:	e6ab      	b.n	d005433e <submitEntitySolid+0x83a>
d00545e6:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00545ea:	e750      	b.n	d005448e <submitEntitySolid+0x98a>
d00545ec:	9105      	str	r1, [sp, #20]
d00545ee:	f7ff bb27 	b.w	d0053c40 <submitEntitySolid+0x13c>
d00545f2:	463c      	mov	r4, r7
d00545f4:	4655      	mov	r5, sl
d00545f6:	eef0 ba47 	vmov.f32	s23, s14
d00545fa:	4616      	mov	r6, r2
d00545fc:	eef0 8a66 	vmov.f32	s17, s13
d0054600:	460f      	mov	r7, r1
d0054602:	eeb0 ca46 	vmov.f32	s24, s12
d0054606:	4682      	mov	sl, r0
d0054608:	eef0 da60 	vmov.f32	s27, s1
d005460c:	eeb0 ea65 	vmov.f32	s28, s11
d0054610:	e409      	b.n	d0053e26 <submitEntitySolid+0x322>
d0054612:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0054616:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d005461a:	9011      	str	r0, [sp, #68]	; 0x44
d005461c:	edcd 5a10 	vstr	s11, [sp, #64]	; 0x40
d0054620:	910f      	str	r1, [sp, #60]	; 0x3c
d0054622:	920e      	str	r2, [sp, #56]	; 0x38
d0054624:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d0054628:	edcd 6a0c 	vstr	s13, [sp, #48]	; 0x30
d005462c:	ed8d 7a0b 	vstr	s14, [sp, #44]	; 0x2c
d0054630:	ed8d 5a04 	vstr	s10, [sp, #16]
d0054634:	edcd 0a00 	vstr	s1, [sp]
d0054638:	f7fb ffca 	bl	d00505d0 <powfxt>
d005463c:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0054640:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0054644:	9811      	ldr	r0, [sp, #68]	; 0x44
d0054646:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d005464a:	990f      	ldr	r1, [sp, #60]	; 0x3c
d005464c:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d005464e:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d0054652:	eddd 6a0c 	vldr	s13, [sp, #48]	; 0x30
d0054656:	ed9d 7a0b 	vldr	s14, [sp, #44]	; 0x2c
d005465a:	ed9d 5a04 	vldr	s10, [sp, #16]
d005465e:	eddd 0a00 	vldr	s1, [sp]
d0054662:	e759      	b.n	d0054518 <submitEntitySolid+0xa14>
d0054664:	463c      	mov	r4, r7
d0054666:	4655      	mov	r5, sl
d0054668:	eef0 ba47 	vmov.f32	s23, s14
d005466c:	4616      	mov	r6, r2
d005466e:	eef0 8a66 	vmov.f32	s17, s13
d0054672:	460f      	mov	r7, r1
d0054674:	eeb0 ca46 	vmov.f32	s24, s12
d0054678:	4682      	mov	sl, r0
d005467a:	eef0 da60 	vmov.f32	s27, s1
d005467e:	eeb0 ea65 	vmov.f32	s28, s11
d0054682:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0054686:	f7ff bbce 	b.w	d0053e26 <submitEntitySolid+0x322>
d005468a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005468e:	db7f      	blt.n	d0054790 <submitEntitySolid+0xc8c>
d0054690:	ee74 4ac2 	vsub.f32	s9, s9, s4
d0054694:	ee30 2a42 	vsub.f32	s4, s0, s4
d0054698:	eef6 2a08 	vmov.f32	s5, #104	; 0x3f400000  0.750
d005469c:	eeb0 9a45 	vmov.f32	s18, s10
d00546a0:	ee84 3a82 	vdiv.f32	s6, s9, s4
d00546a4:	ed5f 4ab6 	vldr	s9, [pc, #-728]	; d00543d0 <submitEntitySolid+0x8cc>
d00546a8:	fec3 4a24 	vmaxnm.f32	s9, s6, s9
d00546ac:	fec4 4ac5 	vminnm.f32	s9, s9, s10
d00546b0:	eea4 9ae2 	vfms.f32	s18, s9, s5
d00546b4:	e6e6      	b.n	d0054484 <submitEntitySolid+0x980>
d00546b6:	eeb1 7a64 	vneg.f32	s14, s9
d00546ba:	edde 5a00 	vldr	s11, [lr]
d00546be:	eef4 5a47 	vcmp.f32	s11, s14
d00546c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546c6:	f6ff ad38 	blt.w	d005413a <submitEntitySolid+0x636>
d00546ca:	eef4 4a65 	vcmp.f32	s9, s11
d00546ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546d2:	f6ff ad32 	blt.w	d005413a <submitEntitySolid+0x636>
d00546d6:	9803      	ldr	r0, [sp, #12]
d00546d8:	eeb1 7a67 	vneg.f32	s14, s15
d00546dc:	edd0 5a00 	vldr	s11, [r0]
d00546e0:	eef4 5ac7 	vcmpe.f32	s11, s14
d00546e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546e8:	eef4 6ac6 	vcmpe.f32	s13, s12
d00546ec:	bfac      	ite	ge
d00546ee:	f04f 0e01 	movge.w	lr, #1
d00546f2:	f04f 0e00 	movlt.w	lr, #0
d00546f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546fa:	eef4 7ae5 	vcmpe.f32	s15, s11
d00546fe:	f00e 0e01 	and.w	lr, lr, #1
d0054702:	bf88      	it	hi
d0054704:	f04f 0e00 	movhi.w	lr, #0
d0054708:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005470c:	f00e 0e01 	and.w	lr, lr, #1
d0054710:	bfb8      	it	lt
d0054712:	f04f 0e00 	movlt.w	lr, #0
d0054716:	f1be 0f00 	cmp.w	lr, #0
d005471a:	f43f ad0e 	beq.w	d005413a <submitEntitySolid+0x636>
d005471e:	eef4 6a45 	vcmp.f32	s13, s10
d0054722:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054726:	f6ff ad08 	blt.w	d005413a <submitEntitySolid+0x636>
d005472a:	ee64 4a8c 	vmul.f32	s9, s9, s24
d005472e:	f04f 0e0c 	mov.w	lr, #12
d0054732:	fb0e be01 	mla	lr, lr, r1, fp
d0054736:	eef1 6a64 	vneg.f32	s13, s9
d005473a:	ed9e 7a01 	vldr	s14, [lr, #4]
d005473e:	eeb4 7a66 	vcmp.f32	s14, s13
d0054742:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054746:	f6ff acf8 	blt.w	d005413a <submitEntitySolid+0x636>
d005474a:	eeb4 7a64 	vcmp.f32	s14, s9
d005474e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054752:	f63f acf2 	bhi.w	d005413a <submitEntitySolid+0x636>
d0054756:	ee67 7a8c 	vmul.f32	s15, s15, s24
d005475a:	f04f 0e0c 	mov.w	lr, #12
d005475e:	fb0e be02 	mla	lr, lr, r2, fp
d0054762:	eef1 6a67 	vneg.f32	s13, s15
d0054766:	ed9e 7a01 	vldr	s14, [lr, #4]
d005476a:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005476e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054772:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0054776:	bfac      	ite	ge
d0054778:	f04f 0e01 	movge.w	lr, #1
d005477c:	f04f 0e00 	movlt.w	lr, #0
d0054780:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054784:	f00e 0001 	and.w	r0, lr, #1
d0054788:	bf88      	it	hi
d005478a:	2000      	movhi	r0, #0
d005478c:	9003      	str	r0, [sp, #12]
d005478e:	e4d6      	b.n	d005413e <submitEntitySolid+0x63a>
d0054790:	ee74 4ac0 	vsub.f32	s9, s9, s0
d0054794:	ee33 3a40 	vsub.f32	s6, s6, s0
d0054798:	eef5 2a00 	vmov.f32	s5, #80	; 0x3e800000  0.250
d005479c:	ee84 9a83 	vdiv.f32	s18, s9, s6
d00547a0:	eddf 4a0b 	vldr	s9, [pc, #44]	; d00547d0 <submitEntitySolid+0xccc>
d00547a4:	fe89 9a24 	vmaxnm.f32	s18, s18, s9
d00547a8:	fe89 9a45 	vminnm.f32	s18, s18, s10
d00547ac:	ee35 9a49 	vsub.f32	s18, s10, s18
d00547b0:	ee29 9a22 	vmul.f32	s18, s18, s5
d00547b4:	e666      	b.n	d0054484 <submitEntitySolid+0x980>
d00547b6:	eef1 6ac7 	vsqrt.f32	s13, s14
d00547ba:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00547be:	ee86 7a26 	vdiv.f32	s14, s12, s13
d00547c2:	ee23 3a07 	vmul.f32	s6, s6, s14
d00547c6:	ee62 2a87 	vmul.f32	s5, s5, s14
d00547ca:	ee24 4a07 	vmul.f32	s8, s8, s14
d00547ce:	e5b6      	b.n	d005433e <submitEntitySolid+0x83a>
d00547d0:	00000000 	.word	0x00000000

d00547d4 <submitWorldEntities>:
d00547d4:	b570      	push	{r4, r5, r6, lr}
d00547d6:	4c3e      	ldr	r4, [pc, #248]	; (d00548d0 <submitWorldEntities+0xfc>)
d00547d8:	4605      	mov	r5, r0
d00547da:	f504 4600 	add.w	r6, r4, #32768	; 0x8000
d00547de:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d00547e2:	2b00      	cmp	r3, #0
d00547e4:	d070      	beq.n	d00548c8 <submitWorldEntities+0xf4>
d00547e6:	69a3      	ldr	r3, [r4, #24]
d00547e8:	2b00      	cmp	r3, #0
d00547ea:	d06d      	beq.n	d00548c8 <submitWorldEntities+0xf4>
d00547ec:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
d00547f0:	07d2      	lsls	r2, r2, #31
d00547f2:	d569      	bpl.n	d00548c8 <submitWorldEntities+0xf4>
d00547f4:	edd5 6a01 	vldr	s13, [r5, #4]
d00547f8:	ed94 7a01 	vldr	s14, [r4, #4]
d00547fc:	ed95 5a00 	vldr	s10, [r5]
d0054800:	ee37 7a66 	vsub.f32	s14, s14, s13
d0054804:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d0054808:	edd4 6a00 	vldr	s13, [r4]
d005480c:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0054810:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0054814:	ed94 6a02 	vldr	s12, [r4, #8]
d0054818:	ee67 7a27 	vmul.f32	s15, s14, s15
d005481c:	ed95 5a02 	vldr	s10, [r5, #8]
d0054820:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d0054824:	ee36 6a45 	vsub.f32	s12, s12, s10
d0054828:	ed93 5a06 	vldr	s10, [r3, #24]
d005482c:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0054830:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d0054834:	eee6 7a24 	vfma.f32	s15, s12, s9
d0054838:	ee77 4ac5 	vsub.f32	s9, s15, s10
d005483c:	eef4 4ae5 	vcmpe.f32	s9, s11
d0054840:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054844:	dc40      	bgt.n	d00548c8 <submitWorldEntities+0xf4>
d0054846:	ee75 4a27 	vadd.f32	s9, s10, s15
d005484a:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d005484e:	eef4 4ae5 	vcmpe.f32	s9, s11
d0054852:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054856:	d437      	bmi.n	d00548c8 <submitWorldEntities+0xf4>
d0054858:	edd5 5a07 	vldr	s11, [r5, #28]
d005485c:	eeb1 4a64 	vneg.f32	s8, s9
d0054860:	ed95 3a08 	vldr	s6, [r5, #32]
d0054864:	ee67 5a25 	vmul.f32	s11, s14, s11
d0054868:	edd5 3a06 	vldr	s7, [r5, #24]
d005486c:	eee6 5a03 	vfma.f32	s11, s12, s6
d0054870:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0054874:	eef4 5ac4 	vcmpe.f32	s11, s8
d0054878:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005487c:	d424      	bmi.n	d00548c8 <submitWorldEntities+0xf4>
d005487e:	eef4 5ae4 	vcmpe.f32	s11, s9
d0054882:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054886:	dc1f      	bgt.n	d00548c8 <submitWorldEntities+0xf4>
d0054888:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d005488c:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d0054890:	ee27 7a25 	vmul.f32	s14, s14, s11
d0054894:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d0054898:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d005489c:	eea7 5a84 	vfma.f32	s10, s15, s8
d00548a0:	eea6 7a24 	vfma.f32	s14, s12, s9
d00548a4:	eef1 7a45 	vneg.f32	s15, s10
d00548a8:	eea6 7aa5 	vfma.f32	s14, s13, s11
d00548ac:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00548b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00548b4:	d408      	bmi.n	d00548c8 <submitWorldEntities+0xf4>
d00548b6:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00548ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00548be:	dc03      	bgt.n	d00548c8 <submitWorldEntities+0xf4>
d00548c0:	4629      	mov	r1, r5
d00548c2:	4620      	mov	r0, r4
d00548c4:	f7ff f91e 	bl	d0053b04 <submitEntitySolid>
d00548c8:	3480      	adds	r4, #128	; 0x80
d00548ca:	42a6      	cmp	r6, r4
d00548cc:	d187      	bne.n	d00547de <submitWorldEntities+0xa>
d00548ce:	bd70      	pop	{r4, r5, r6, pc}
d00548d0:	d00f4c20 	.word	0xd00f4c20

d00548d4 <Render3D>:
d00548d4:	b570      	push	{r4, r5, r6, lr}
d00548d6:	4d17      	ldr	r5, [pc, #92]	; (d0054934 <Render3D+0x60>)
d00548d8:	4604      	mov	r4, r0
d00548da:	682b      	ldr	r3, [r5, #0]
d00548dc:	b193      	cbz	r3, d0054904 <Render3D+0x30>
d00548de:	4b16      	ldr	r3, [pc, #88]	; (d0054938 <Render3D+0x64>)
d00548e0:	681b      	ldr	r3, [r3, #0]
d00548e2:	b17b      	cbz	r3, d0054904 <Render3D+0x30>
d00548e4:	4b15      	ldr	r3, [pc, #84]	; (d005493c <Render3D+0x68>)
d00548e6:	2200      	movs	r2, #0
d00548e8:	4620      	mov	r0, r4
d00548ea:	601a      	str	r2, [r3, #0]
d00548ec:	f7ff ff72 	bl	d00547d4 <submitWorldEntities>
d00548f0:	b114      	cbz	r4, d00548f8 <Render3D+0x24>
d00548f2:	4620      	mov	r0, r4
d00548f4:	f7fe f910 	bl	d0052b18 <sb3dParticlesRender.part.0>
d00548f8:	4b11      	ldr	r3, [pc, #68]	; (d0054940 <Render3D+0x6c>)
d00548fa:	4620      	mov	r0, r4
d00548fc:	681b      	ldr	r3, [r3, #0]
d00548fe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0054902:	4718      	bx	r3
d0054904:	4a0f      	ldr	r2, [pc, #60]	; (d0054944 <Render3D+0x70>)
d0054906:	7813      	ldrb	r3, [r2, #0]
d0054908:	7850      	ldrb	r0, [r2, #1]
d005490a:	7891      	ldrb	r1, [r2, #2]
d005490c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0054910:	78d2      	ldrb	r2, [r2, #3]
d0054912:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0054916:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005491a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d005491c:	4798      	blx	r3
d005491e:	2800      	cmp	r0, #0
d0054920:	d0e0      	beq.n	d00548e4 <Render3D+0x10>
d0054922:	301f      	adds	r0, #31
d0054924:	4b04      	ldr	r3, [pc, #16]	; (d0054938 <Render3D+0x64>)
d0054926:	f020 001f 	bic.w	r0, r0, #31
d005492a:	f100 0260 	add.w	r2, r0, #96	; 0x60
d005492e:	6028      	str	r0, [r5, #0]
d0054930:	601a      	str	r2, [r3, #0]
d0054932:	e7d7      	b.n	d00548e4 <Render3D+0x10>
d0054934:	d0066960 	.word	0xd0066960
d0054938:	d0066964 	.word	0xd0066964
d005493c:	d0068980 	.word	0xd0068980
d0054940:	d00fcc20 	.word	0xd00fcc20
d0054944:	2001f000 	.word	0x2001f000

d0054948 <sb3dParticlesClear>:
d0054948:	b538      	push	{r3, r4, r5, lr}
d005494a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
d005494e:	2100      	movs	r1, #0
d0054950:	480f      	ldr	r0, [pc, #60]	; (d0054990 <sb3dParticlesClear+0x48>)
d0054952:	2421      	movs	r4, #33	; 0x21
d0054954:	f000 fec4 	bl	d00556e0 <memset>
d0054958:	4b0d      	ldr	r3, [pc, #52]	; (d0054990 <sb3dParticlesClear+0x48>)
d005495a:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d005495e:	2100      	movs	r1, #0
d0054960:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0054964:	2200      	movs	r2, #0
d0054966:	7699      	strb	r1, [r3, #26]
d0054968:	3320      	adds	r3, #32
d005496a:	f843 2c20 	str.w	r2, [r3, #-32]
d005496e:	f843 2c1c 	str.w	r2, [r3, #-28]
d0054972:	f843 2c18 	str.w	r2, [r3, #-24]
d0054976:	f843 0c14 	str.w	r0, [r3, #-20]
d005497a:	f843 2c10 	str.w	r2, [r3, #-16]
d005497e:	f843 0c0c 	str.w	r0, [r3, #-12]
d0054982:	f803 4c08 	strb.w	r4, [r3, #-8]
d0054986:	f803 1c07 	strb.w	r1, [r3, #-7]
d005498a:	42ab      	cmp	r3, r5
d005498c:	d1eb      	bne.n	d0054966 <sb3dParticlesClear+0x1e>
d005498e:	bd38      	pop	{r3, r4, r5, pc}
d0054990:	d0066980 	.word	0xd0066980

d0054994 <sb3dParticleSpawnQuad>:
d0054994:	eef5 1ac0 	vcmpe.f32	s3, #0.0
d0054998:	eddf 7a20 	vldr	s15, [pc, #128]	; d0054a1c <sb3dParticleSpawnQuad+0x88>
d005499c:	eef1 6a04 	vmov.f32	s13, #20	; 0x40a00000  5.0
d00549a0:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00549a4:	fe82 2a27 	vmaxnm.f32	s4, s4, s15
d00549a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549ac:	fec2 2aa7 	vmaxnm.f32	s5, s5, s15
d00549b0:	fe82 2a66 	vminnm.f32	s4, s4, s13
d00549b4:	b430      	push	{r4, r5}
d00549b6:	fec2 2ac7 	vminnm.f32	s5, s5, s14
d00549ba:	b084      	sub	sp, #16
d00549bc:	4d18      	ldr	r5, [pc, #96]	; (d0054a20 <sb3dParticleSpawnQuad+0x8c>)
d00549be:	bf98      	it	ls
d00549c0:	eef7 1a00 	vmovls.f32	s3, #112	; 0x3f800000  1.0
d00549c4:	2400      	movs	r4, #0
d00549c6:	462b      	mov	r3, r5
d00549c8:	ed8d 0a01 	vstr	s0, [sp, #4]
d00549cc:	edcd 0a02 	vstr	s1, [sp, #8]
d00549d0:	ed8d 1a03 	vstr	s2, [sp, #12]
d00549d4:	e003      	b.n	d00549de <sb3dParticleSpawnQuad+0x4a>
d00549d6:	3401      	adds	r4, #1
d00549d8:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
d00549dc:	d018      	beq.n	d0054a10 <sb3dParticleSpawnQuad+0x7c>
d00549de:	7e9a      	ldrb	r2, [r3, #26]
d00549e0:	3320      	adds	r3, #32
d00549e2:	2a00      	cmp	r2, #0
d00549e4:	d1f7      	bne.n	d00549d6 <sb3dParticleSpawnQuad+0x42>
d00549e6:	eb05 1344 	add.w	r3, r5, r4, lsl #5
d00549ea:	2201      	movs	r2, #1
d00549ec:	769a      	strb	r2, [r3, #26]
d00549ee:	aa04      	add	r2, sp, #16
d00549f0:	7618      	strb	r0, [r3, #24]
d00549f2:	7659      	strb	r1, [r3, #25]
d00549f4:	edc3 1a03 	vstr	s3, [r3, #12]
d00549f8:	ed83 2a04 	vstr	s4, [r3, #16]
d00549fc:	edc3 2a05 	vstr	s5, [r3, #20]
d0054a00:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0054a04:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0054a08:	4620      	mov	r0, r4
d0054a0a:	b004      	add	sp, #16
d0054a0c:	bc30      	pop	{r4, r5}
d0054a0e:	4770      	bx	lr
d0054a10:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0054a14:	4620      	mov	r0, r4
d0054a16:	b004      	add	sp, #16
d0054a18:	bc30      	pop	{r4, r5}
d0054a1a:	4770      	bx	lr
d0054a1c:	00000000 	.word	0x00000000
d0054a20:	d0066980 	.word	0xd0066980

d0054a24 <sb3dParticleSetPosition>:
d0054a24:	b084      	sub	sp, #16
d0054a26:	28ff      	cmp	r0, #255	; 0xff
d0054a28:	ed8d 0a01 	vstr	s0, [sp, #4]
d0054a2c:	edcd 0a02 	vstr	s1, [sp, #8]
d0054a30:	ed8d 1a03 	vstr	s2, [sp, #12]
d0054a34:	d809      	bhi.n	d0054a4a <sb3dParticleSetPosition+0x26>
d0054a36:	4b06      	ldr	r3, [pc, #24]	; (d0054a50 <sb3dParticleSetPosition+0x2c>)
d0054a38:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d0054a3c:	7e9a      	ldrb	r2, [r3, #26]
d0054a3e:	b122      	cbz	r2, d0054a4a <sb3dParticleSetPosition+0x26>
d0054a40:	aa04      	add	r2, sp, #16
d0054a42:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0054a46:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0054a4a:	b004      	add	sp, #16
d0054a4c:	4770      	bx	lr
d0054a4e:	bf00      	nop
d0054a50:	d0066980 	.word	0xd0066980

d0054a54 <sb3dParticleSetSize>:
d0054a54:	28ff      	cmp	r0, #255	; 0xff
d0054a56:	d80f      	bhi.n	d0054a78 <sb3dParticleSetSize+0x24>
d0054a58:	4b08      	ldr	r3, [pc, #32]	; (d0054a7c <sb3dParticleSetSize+0x28>)
d0054a5a:	0141      	lsls	r1, r0, #5
d0054a5c:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054a60:	7e82      	ldrb	r2, [r0, #26]
d0054a62:	b14a      	cbz	r2, d0054a78 <sb3dParticleSetSize+0x24>
d0054a64:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0054a68:	440b      	add	r3, r1
d0054a6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a6e:	bf98      	it	ls
d0054a70:	eeb7 0a00 	vmovls.f32	s0, #112	; 0x3f800000  1.0
d0054a74:	ed83 0a03 	vstr	s0, [r3, #12]
d0054a78:	4770      	bx	lr
d0054a7a:	bf00      	nop
d0054a7c:	d0066980 	.word	0xd0066980

d0054a80 <sb3dParticleSetShade>:
d0054a80:	28ff      	cmp	r0, #255	; 0xff
d0054a82:	d80e      	bhi.n	d0054aa2 <sb3dParticleSetShade+0x22>
d0054a84:	4b07      	ldr	r3, [pc, #28]	; (d0054aa4 <sb3dParticleSetShade+0x24>)
d0054a86:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054a8a:	7e83      	ldrb	r3, [r0, #26]
d0054a8c:	b14b      	cbz	r3, d0054aa2 <sb3dParticleSetShade+0x22>
d0054a8e:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0054a92:	ed9f 7a05 	vldr	s14, [pc, #20]	; d0054aa8 <sb3dParticleSetShade+0x28>
d0054a96:	fe80 0a07 	vmaxnm.f32	s0, s0, s14
d0054a9a:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0054a9e:	ed80 0a04 	vstr	s0, [r0, #16]
d0054aa2:	4770      	bx	lr
d0054aa4:	d0066980 	.word	0xd0066980
d0054aa8:	00000000 	.word	0x00000000

d0054aac <sb3dParticleSetColor>:
d0054aac:	28ff      	cmp	r0, #255	; 0xff
d0054aae:	d805      	bhi.n	d0054abc <sb3dParticleSetColor+0x10>
d0054ab0:	4b03      	ldr	r3, [pc, #12]	; (d0054ac0 <sb3dParticleSetColor+0x14>)
d0054ab2:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054ab6:	7e83      	ldrb	r3, [r0, #26]
d0054ab8:	b103      	cbz	r3, d0054abc <sb3dParticleSetColor+0x10>
d0054aba:	7601      	strb	r1, [r0, #24]
d0054abc:	4770      	bx	lr
d0054abe:	bf00      	nop
d0054ac0:	d0066980 	.word	0xd0066980

d0054ac4 <sb3dParticleSetEmission>:
d0054ac4:	28ff      	cmp	r0, #255	; 0xff
d0054ac6:	d805      	bhi.n	d0054ad4 <sb3dParticleSetEmission+0x10>
d0054ac8:	4b03      	ldr	r3, [pc, #12]	; (d0054ad8 <sb3dParticleSetEmission+0x14>)
d0054aca:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054ace:	7e83      	ldrb	r3, [r0, #26]
d0054ad0:	b103      	cbz	r3, d0054ad4 <sb3dParticleSetEmission+0x10>
d0054ad2:	7641      	strb	r1, [r0, #25]
d0054ad4:	4770      	bx	lr
d0054ad6:	bf00      	nop
d0054ad8:	d0066980 	.word	0xd0066980

d0054adc <sb3dWorldAudioDefaults>:
d0054adc:	b410      	push	{r4}
d0054ade:	4b06      	ldr	r3, [pc, #24]	; (d0054af8 <sb3dWorldAudioDefaults+0x1c>)
d0054ae0:	f04f 547e 	mov.w	r4, #1065353216	; 0x3f800000
d0054ae4:	4805      	ldr	r0, [pc, #20]	; (d0054afc <sb3dWorldAudioDefaults+0x20>)
d0054ae6:	4906      	ldr	r1, [pc, #24]	; (d0054b00 <sb3dWorldAudioDefaults+0x24>)
d0054ae8:	4a06      	ldr	r2, [pc, #24]	; (d0054b04 <sb3dWorldAudioDefaults+0x28>)
d0054aea:	605c      	str	r4, [r3, #4]
d0054aec:	6018      	str	r0, [r3, #0]
d0054aee:	f85d 4b04 	ldr.w	r4, [sp], #4
d0054af2:	6099      	str	r1, [r3, #8]
d0054af4:	60da      	str	r2, [r3, #12]
d0054af6:	4770      	bx	lr
d0054af8:	d00fcc24 	.word	0xd00fcc24
d0054afc:	3ba3d70a 	.word	0x3ba3d70a
d0054b00:	3c23d70a 	.word	0x3c23d70a
d0054b04:	447a0000 	.word	0x447a0000

d0054b08 <dopplerValueEntityToEntity>:
d0054b08:	b538      	push	{r3, r4, r5, lr}
d0054b0a:	ed2d 8b04 	vpush	{d8-d9}
d0054b0e:	460c      	mov	r4, r1
d0054b10:	eef0 9a40 	vmov.f32	s19, s0
d0054b14:	eeb0 9a60 	vmov.f32	s18, s1
d0054b18:	4605      	mov	r5, r0
d0054b1a:	eef0 8a41 	vmov.f32	s17, s2
d0054b1e:	eeb0 8a61 	vmov.f32	s16, s3
d0054b22:	f7fc fc6f 	bl	d0051404 <entityIdValid>
d0054b26:	b920      	cbnz	r0, d0054b32 <dopplerValueEntityToEntity+0x2a>
d0054b28:	ed9f 0a53 	vldr	s0, [pc, #332]	; d0054c78 <dopplerValueEntityToEntity+0x170>
d0054b2c:	ecbd 8b04 	vpop	{d8-d9}
d0054b30:	bd38      	pop	{r3, r4, r5, pc}
d0054b32:	4620      	mov	r0, r4
d0054b34:	f7fc fc66 	bl	d0051404 <entityIdValid>
d0054b38:	eddf 7a50 	vldr	s15, [pc, #320]	; d0054c7c <dopplerValueEntityToEntity+0x174>
d0054b3c:	eef4 9ae7 	vcmpe.f32	s19, s15
d0054b40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b44:	d9f0      	bls.n	d0054b28 <dopplerValueEntityToEntity+0x20>
d0054b46:	2800      	cmp	r0, #0
d0054b48:	d0ee      	beq.n	d0054b28 <dopplerValueEntityToEntity+0x20>
d0054b4a:	484d      	ldr	r0, [pc, #308]	; (d0054c80 <dopplerValueEntityToEntity+0x178>)
d0054b4c:	ed9f 5a4d 	vldr	s10, [pc, #308]	; d0054c84 <dopplerValueEntityToEntity+0x17c>
d0054b50:	eb00 11c4 	add.w	r1, r0, r4, lsl #7
d0054b54:	eb00 10c5 	add.w	r0, r0, r5, lsl #7
d0054b58:	ed91 7a01 	vldr	s14, [r1, #4]
d0054b5c:	edd0 5a01 	vldr	s11, [r0, #4]
d0054b60:	edd0 7a00 	vldr	s15, [r0]
d0054b64:	ee77 5a65 	vsub.f32	s11, s14, s11
d0054b68:	ed91 6a00 	vldr	s12, [r1]
d0054b6c:	edd1 6a02 	vldr	s13, [r1, #8]
d0054b70:	ee36 6a67 	vsub.f32	s12, s12, s15
d0054b74:	ed90 7a02 	vldr	s14, [r0, #8]
d0054b78:	ee65 7aa5 	vmul.f32	s15, s11, s11
d0054b7c:	ee76 6ac7 	vsub.f32	s13, s13, s14
d0054b80:	eee6 7a06 	vfma.f32	s15, s12, s12
d0054b84:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0054b88:	eef4 7ac5 	vcmpe.f32	s15, s10
d0054b8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b90:	d9ca      	bls.n	d0054b28 <dopplerValueEntityToEntity+0x20>
d0054b92:	edd1 3a04 	vldr	s7, [r1, #16]
d0054b96:	eeb1 4ae7 	vsqrt.f32	s8, s15
d0054b9a:	ed90 7a04 	vldr	s14, [r0, #16]
d0054b9e:	edd1 7a03 	vldr	s15, [r1, #12]
d0054ba2:	edd0 4a03 	vldr	s9, [r0, #12]
d0054ba6:	ed90 5a05 	vldr	s10, [r0, #20]
d0054baa:	ee37 7a63 	vsub.f32	s14, s14, s7
d0054bae:	edd1 3a05 	vldr	s7, [r1, #20]
d0054bb2:	ee74 4ae7 	vsub.f32	s9, s9, s15
d0054bb6:	eddf 7a30 	vldr	s15, [pc, #192]	; d0054c78 <dopplerValueEntityToEntity+0x170>
d0054bba:	ee35 5a63 	vsub.f32	s10, s10, s7
d0054bbe:	ee37 7a25 	vadd.f32	s14, s14, s11
d0054bc2:	fe88 1aa7 	vmaxnm.f32	s2, s17, s15
d0054bc6:	ee74 4a86 	vadd.f32	s9, s9, s12
d0054bca:	fec8 1a01 	vmaxnm.f32	s3, s16, s2
d0054bce:	ee35 5a26 	vadd.f32	s10, s10, s13
d0054bd2:	fec9 0a27 	vmaxnm.f32	s1, s18, s15
d0054bd6:	ee27 7a25 	vmul.f32	s14, s14, s11
d0054bda:	eeb4 1ae1 	vcmpe.f32	s2, s3
d0054bde:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0054be2:	eea6 7a24 	vfma.f32	s14, s12, s9
d0054be6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bea:	eea6 7a85 	vfma.f32	s14, s13, s10
d0054bee:	eec7 6a29 	vdiv.f32	s13, s14, s19
d0054bf2:	ee86 7a84 	vdiv.f32	s14, s13, s8
d0054bf6:	da04      	bge.n	d0054c02 <dopplerValueEntityToEntity+0xfa>
d0054bf8:	eeb4 1a44 	vcmp.f32	s2, s8
d0054bfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c00:	db14      	blt.n	d0054c2c <dopplerValueEntityToEntity+0x124>
d0054c02:	ee60 7a87 	vmul.f32	s15, s1, s14
d0054c06:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0054c0a:	eebf 6a00 	vmov.f32	s12, #240	; 0xbf800000 -1.0
d0054c0e:	eeb0 7ae7 	vabs.f32	s14, s15
d0054c12:	eef1 7a67 	vneg.f32	s15, s15
d0054c16:	ee37 7a26 	vadd.f32	s14, s14, s13
d0054c1a:	ecbd 8b04 	vpop	{d8-d9}
d0054c1e:	ee87 0a87 	vdiv.f32	s0, s15, s14
d0054c22:	fe80 0a06 	vmaxnm.f32	s0, s0, s12
d0054c26:	fe80 0a66 	vminnm.f32	s0, s0, s13
d0054c2a:	bd38      	pop	{r3, r4, r5, pc}
d0054c2c:	eef4 1ac4 	vcmpe.f32	s3, s8
d0054c30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c34:	d91c      	bls.n	d0054c70 <dopplerValueEntityToEntity+0x168>
d0054c36:	ee34 4a41 	vsub.f32	s8, s8, s2
d0054c3a:	ee31 1ac1 	vsub.f32	s2, s3, s2
d0054c3e:	ee60 7a87 	vmul.f32	s15, s1, s14
d0054c42:	eeff 6a00 	vmov.f32	s13, #240	; 0xbf800000 -1.0
d0054c46:	ee84 7a01 	vdiv.f32	s14, s8, s2
d0054c4a:	ee35 7ac7 	vsub.f32	s14, s11, s14
d0054c4e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054c52:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054c56:	eeb0 7ae7 	vabs.f32	s14, s15
d0054c5a:	eef1 7a67 	vneg.f32	s15, s15
d0054c5e:	ee37 7a25 	vadd.f32	s14, s14, s11
d0054c62:	ee87 0a87 	vdiv.f32	s0, s15, s14
d0054c66:	fe80 0a26 	vmaxnm.f32	s0, s0, s13
d0054c6a:	fe80 0a65 	vminnm.f32	s0, s0, s11
d0054c6e:	e75d      	b.n	d0054b2c <dopplerValueEntityToEntity+0x24>
d0054c70:	eeb0 0a67 	vmov.f32	s0, s15
d0054c74:	e75a      	b.n	d0054b2c <dopplerValueEntityToEntity+0x24>
d0054c76:	bf00      	nop
d0054c78:	00000000 	.word	0x00000000
d0054c7c:	358637bd 	.word	0x358637bd
d0054c80:	d00f4c20 	.word	0xd00f4c20
d0054c84:	2b8cbccd 	.word	0x2b8cbccd

d0054c88 <entityAudio>:
d0054c88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0054c8a:	4604      	mov	r4, r0
d0054c8c:	460f      	mov	r7, r1
d0054c8e:	461d      	mov	r5, r3
d0054c90:	4616      	mov	r6, r2
d0054c92:	ed2d 8b04 	vpush	{d8-d9}
d0054c96:	eeb0 9a40 	vmov.f32	s18, s0
d0054c9a:	eeb0 8a60 	vmov.f32	s16, s1
d0054c9e:	eef0 8a41 	vmov.f32	s17, s2
d0054ca2:	b10a      	cbz	r2, d0054ca8 <entityAudio+0x20>
d0054ca4:	2300      	movs	r3, #0
d0054ca6:	6013      	str	r3, [r2, #0]
d0054ca8:	b10d      	cbz	r5, d0054cae <entityAudio+0x26>
d0054caa:	2300      	movs	r3, #0
d0054cac:	602b      	str	r3, [r5, #0]
d0054cae:	4620      	mov	r0, r4
d0054cb0:	f7fc fba8 	bl	d0051404 <entityIdValid>
d0054cb4:	b910      	cbnz	r0, d0054cbc <entityAudio+0x34>
d0054cb6:	ecbd 8b04 	vpop	{d8-d9}
d0054cba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0054cbc:	4638      	mov	r0, r7
d0054cbe:	f7fc fba1 	bl	d0051404 <entityIdValid>
d0054cc2:	2800      	cmp	r0, #0
d0054cc4:	d0f7      	beq.n	d0054cb6 <entityAudio+0x2e>
d0054cc6:	4b3d      	ldr	r3, [pc, #244]	; (d0054dbc <entityAudio+0x134>)
d0054cc8:	01e2      	lsls	r2, r4, #7
d0054cca:	ed9f 6a3d 	vldr	s12, [pc, #244]	; d0054dc0 <entityAudio+0x138>
d0054cce:	eb03 11c7 	add.w	r1, r3, r7, lsl #7
d0054cd2:	eb03 14c4 	add.w	r4, r3, r4, lsl #7
d0054cd6:	fec8 0a06 	vmaxnm.f32	s1, s16, s12
d0054cda:	edd1 7a02 	vldr	s15, [r1, #8]
d0054cde:	fe88 1aa0 	vmaxnm.f32	s2, s17, s1
d0054ce2:	ed94 7a02 	vldr	s14, [r4, #8]
d0054ce6:	eef4 0ac1 	vcmpe.f32	s1, s2
d0054cea:	edd1 6a00 	vldr	s13, [r1]
d0054cee:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0054cf2:	ed94 7a00 	vldr	s14, [r4]
d0054cf6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054cfa:	ee76 6ac7 	vsub.f32	s13, s13, s14
d0054cfe:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0054d02:	eea6 7aa6 	vfma.f32	s14, s13, s13
d0054d06:	d50e      	bpl.n	d0054d26 <entityAudio+0x9e>
d0054d08:	ee61 5a01 	vmul.f32	s11, s2, s2
d0054d0c:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0054d10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054d14:	db07      	blt.n	d0054d26 <entityAudio+0x9e>
d0054d16:	b10e      	cbz	r6, d0054d1c <entityAudio+0x94>
d0054d18:	ed86 6a00 	vstr	s12, [r6]
d0054d1c:	2d00      	cmp	r5, #0
d0054d1e:	d0ca      	beq.n	d0054cb6 <entityAudio+0x2e>
d0054d20:	2300      	movs	r3, #0
d0054d22:	602b      	str	r3, [r5, #0]
d0054d24:	e7c7      	b.n	d0054cb6 <entityAudio+0x2e>
d0054d26:	ed9f 6a27 	vldr	s12, [pc, #156]	; d0054dc4 <entityAudio+0x13c>
d0054d2a:	eeb4 7ac6 	vcmpe.f32	s14, s12
d0054d2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054d32:	d93a      	bls.n	d0054daa <entityAudio+0x122>
d0054d34:	eef1 5ac7 	vsqrt.f32	s11, s14
d0054d38:	4413      	add	r3, r2
d0054d3a:	ed9f 7a21 	vldr	s14, [pc, #132]	; d0054dc0 <entityAudio+0x138>
d0054d3e:	ed93 6a0c 	vldr	s12, [r3, #48]	; 0x30
d0054d42:	edd3 4a0a 	vldr	s9, [r3, #40]	; 0x28
d0054d46:	fe89 7a07 	vmaxnm.f32	s14, s18, s14
d0054d4a:	ee67 7a86 	vmul.f32	s15, s15, s12
d0054d4e:	eef4 0ac1 	vcmpe.f32	s1, s2
d0054d52:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054d56:	eee6 7aa4 	vfma.f32	s15, s13, s9
d0054d5a:	eebf 5a00 	vmov.f32	s10, #240	; 0xbf800000 -1.0
d0054d5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054d62:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0054d66:	eec7 6aa5 	vdiv.f32	s13, s15, s11
d0054d6a:	fec6 6a85 	vmaxnm.f32	s13, s13, s10
d0054d6e:	fec6 7ac6 	vminnm.f32	s15, s13, s12
d0054d72:	ee67 7a27 	vmul.f32	s15, s14, s15
d0054d76:	da1d      	bge.n	d0054db4 <entityAudio+0x12c>
d0054d78:	eef4 0ae5 	vcmpe.f32	s1, s11
d0054d7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054d80:	da18      	bge.n	d0054db4 <entityAudio+0x12c>
d0054d82:	ee75 5ae0 	vsub.f32	s11, s11, s1
d0054d86:	ee31 1a60 	vsub.f32	s2, s2, s1
d0054d8a:	ee85 7a81 	vdiv.f32	s14, s11, s2
d0054d8e:	ee36 6a47 	vsub.f32	s12, s12, s14
d0054d92:	ee26 6a06 	vmul.f32	s12, s12, s12
d0054d96:	b10e      	cbz	r6, d0054d9c <entityAudio+0x114>
d0054d98:	edc6 7a00 	vstr	s15, [r6]
d0054d9c:	2d00      	cmp	r5, #0
d0054d9e:	d08a      	beq.n	d0054cb6 <entityAudio+0x2e>
d0054da0:	ed85 6a00 	vstr	s12, [r5]
d0054da4:	ecbd 8b04 	vpop	{d8-d9}
d0054da8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0054daa:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054dae:	eddf 7a04 	vldr	s15, [pc, #16]	; d0054dc0 <entityAudio+0x138>
d0054db2:	e7f0      	b.n	d0054d96 <entityAudio+0x10e>
d0054db4:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054db8:	e7ed      	b.n	d0054d96 <entityAudio+0x10e>
d0054dba:	bf00      	nop
d0054dbc:	d00f4c20 	.word	0xd00f4c20
d0054dc0:	00000000 	.word	0x00000000
d0054dc4:	358637bd 	.word	0x358637bd

d0054dc8 <sb3dEntityAudioInfoDefault>:
d0054dc8:	b5f0      	push	{r4, r5, r6, r7, lr}
d0054dca:	2300      	movs	r3, #0
d0054dcc:	460d      	mov	r5, r1
d0054dce:	4606      	mov	r6, r0
d0054dd0:	ed2d 8b02 	vpush	{d8}
d0054dd4:	b08d      	sub	sp, #52	; 0x34
d0054dd6:	eeb0 8a40 	vmov.f32	s16, s0
d0054dda:	9304      	str	r3, [sp, #16]
d0054ddc:	9305      	str	r3, [sp, #20]
d0054dde:	9306      	str	r3, [sp, #24]
d0054de0:	f7fc fb10 	bl	d0051404 <entityIdValid>
d0054de4:	b9a8      	cbnz	r0, d0054e12 <sb3dEntityAudioInfoDefault+0x4a>
d0054de6:	ac04      	add	r4, sp, #16
d0054de8:	ad08      	add	r5, sp, #32
d0054dea:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0054dee:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0054df2:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054df6:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0054dfa:	ed9d 0a04 	vldr	s0, [sp, #16]
d0054dfe:	eddd 0a05 	vldr	s1, [sp, #20]
d0054e02:	ed9d 1a06 	vldr	s2, [sp, #24]
d0054e06:	eddd 1a07 	vldr	s3, [sp, #28]
d0054e0a:	b00d      	add	sp, #52	; 0x34
d0054e0c:	ecbd 8b02 	vpop	{d8}
d0054e10:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0054e12:	4628      	mov	r0, r5
d0054e14:	f7fc faf6 	bl	d0051404 <entityIdValid>
d0054e18:	2800      	cmp	r0, #0
d0054e1a:	d0e4      	beq.n	d0054de6 <sb3dEntityAudioInfoDefault+0x1e>
d0054e1c:	4f11      	ldr	r7, [pc, #68]	; (d0054e64 <sb3dEntityAudioInfoDefault+0x9c>)
d0054e1e:	4629      	mov	r1, r5
d0054e20:	4630      	mov	r0, r6
d0054e22:	eeb0 0a48 	vmov.f32	s0, s16
d0054e26:	edd7 1a03 	vldr	s3, [r7, #12]
d0054e2a:	ac04      	add	r4, sp, #16
d0054e2c:	ed97 1a02 	vldr	s2, [r7, #8]
d0054e30:	edd7 0a00 	vldr	s1, [r7]
d0054e34:	f7ff fe68 	bl	d0054b08 <dopplerValueEntityToEntity>
d0054e38:	eef0 7a40 	vmov.f32	s15, s0
d0054e3c:	4629      	mov	r1, r5
d0054e3e:	4630      	mov	r0, r6
d0054e40:	ab06      	add	r3, sp, #24
d0054e42:	aa05      	add	r2, sp, #20
d0054e44:	ed97 1a03 	vldr	s2, [r7, #12]
d0054e48:	ad08      	add	r5, sp, #32
d0054e4a:	edd7 0a02 	vldr	s1, [r7, #8]
d0054e4e:	ed97 0a01 	vldr	s0, [r7, #4]
d0054e52:	edcd 7a04 	vstr	s15, [sp, #16]
d0054e56:	f7ff ff17 	bl	d0054c88 <entityAudio>
d0054e5a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0054e5e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0054e62:	e7c6      	b.n	d0054df2 <sb3dEntityAudioInfoDefault+0x2a>
d0054e64:	d00fcc24 	.word	0xd00fcc24

d0054e68 <loadMeshSB3D>:
d0054e68:	2800      	cmp	r0, #0
d0054e6a:	f000 80e4 	beq.w	d0055036 <loadMeshSB3D+0x1ce>
d0054e6e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0054e72:	fab1 f781 	clz	r7, r1
d0054e76:	460c      	mov	r4, r1
d0054e78:	ed2d 8b02 	vpush	{d8}
d0054e7c:	097f      	lsrs	r7, r7, #5
d0054e7e:	b08c      	sub	sp, #48	; 0x30
d0054e80:	2900      	cmp	r1, #0
d0054e82:	f000 80d2 	beq.w	d005502a <loadMeshSB3D+0x1c2>
d0054e86:	4e6d      	ldr	r6, [pc, #436]	; (d005503c <loadMeshSB3D+0x1d4>)
d0054e88:	4605      	mov	r5, r0
d0054e8a:	2240      	movs	r2, #64	; 0x40
d0054e8c:	4639      	mov	r1, r7
d0054e8e:	4620      	mov	r0, r4
d0054e90:	eeb0 8a40 	vmov.f32	s16, s0
d0054e94:	f000 fc24 	bl	d00556e0 <memset>
d0054e98:	7933      	ldrb	r3, [r6, #4]
d0054e9a:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054e9e:	4629      	mov	r1, r5
d0054ea0:	79b2      	ldrb	r2, [r6, #6]
d0054ea2:	4638      	mov	r0, r7
d0054ea4:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0054ea8:	79f5      	ldrb	r5, [r6, #7]
d0054eaa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0054eae:	2201      	movs	r2, #1
d0054eb0:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0054eb4:	681b      	ldr	r3, [r3, #0]
d0054eb6:	681b      	ldr	r3, [r3, #0]
d0054eb8:	4798      	blx	r3
d0054eba:	2800      	cmp	r0, #0
d0054ebc:	f040 80b5 	bne.w	d005502a <loadMeshSB3D+0x1c2>
d0054ec0:	f896 c004 	ldrb.w	ip, [r6, #4]
d0054ec4:	2204      	movs	r2, #4
d0054ec6:	7971      	ldrb	r1, [r6, #5]
d0054ec8:	ab02      	add	r3, sp, #8
d0054eca:	79b7      	ldrb	r7, [r6, #6]
d0054ecc:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0054ed0:	79f5      	ldrb	r5, [r6, #7]
d0054ed2:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054ed6:	a903      	add	r1, sp, #12
d0054ed8:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054edc:	682d      	ldr	r5, [r5, #0]
d0054ede:	68ad      	ldr	r5, [r5, #8]
d0054ee0:	47a8      	blx	r5
d0054ee2:	2800      	cmp	r0, #0
d0054ee4:	f040 809e 	bne.w	d0055024 <loadMeshSB3D+0x1bc>
d0054ee8:	9a02      	ldr	r2, [sp, #8]
d0054eea:	2a04      	cmp	r2, #4
d0054eec:	f040 809a 	bne.w	d0055024 <loadMeshSB3D+0x1bc>
d0054ef0:	4b53      	ldr	r3, [pc, #332]	; (d0055040 <loadMeshSB3D+0x1d8>)
d0054ef2:	9903      	ldr	r1, [sp, #12]
d0054ef4:	4299      	cmp	r1, r3
d0054ef6:	f040 8095 	bne.w	d0055024 <loadMeshSB3D+0x1bc>
d0054efa:	7931      	ldrb	r1, [r6, #4]
d0054efc:	ab02      	add	r3, sp, #8
d0054efe:	7975      	ldrb	r5, [r6, #5]
d0054f00:	79b7      	ldrb	r7, [r6, #6]
d0054f02:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0054f06:	79f5      	ldrb	r5, [r6, #7]
d0054f08:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054f0c:	a904      	add	r1, sp, #16
d0054f0e:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054f12:	682d      	ldr	r5, [r5, #0]
d0054f14:	68ad      	ldr	r5, [r5, #8]
d0054f16:	47a8      	blx	r5
d0054f18:	2800      	cmp	r0, #0
d0054f1a:	f040 8083 	bne.w	d0055024 <loadMeshSB3D+0x1bc>
d0054f1e:	9a02      	ldr	r2, [sp, #8]
d0054f20:	2a04      	cmp	r2, #4
d0054f22:	d17f      	bne.n	d0055024 <loadMeshSB3D+0x1bc>
d0054f24:	9b04      	ldr	r3, [sp, #16]
d0054f26:	2b05      	cmp	r3, #5
d0054f28:	d17c      	bne.n	d0055024 <loadMeshSB3D+0x1bc>
d0054f2a:	7931      	ldrb	r1, [r6, #4]
d0054f2c:	ab02      	add	r3, sp, #8
d0054f2e:	7975      	ldrb	r5, [r6, #5]
d0054f30:	79b7      	ldrb	r7, [r6, #6]
d0054f32:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0054f36:	79f5      	ldrb	r5, [r6, #7]
d0054f38:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054f3c:	a905      	add	r1, sp, #20
d0054f3e:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054f42:	682d      	ldr	r5, [r5, #0]
d0054f44:	68ad      	ldr	r5, [r5, #8]
d0054f46:	47a8      	blx	r5
d0054f48:	2800      	cmp	r0, #0
d0054f4a:	d16b      	bne.n	d0055024 <loadMeshSB3D+0x1bc>
d0054f4c:	9a02      	ldr	r2, [sp, #8]
d0054f4e:	2a04      	cmp	r2, #4
d0054f50:	d168      	bne.n	d0055024 <loadMeshSB3D+0x1bc>
d0054f52:	7930      	ldrb	r0, [r6, #4]
d0054f54:	ab02      	add	r3, sp, #8
d0054f56:	7975      	ldrb	r5, [r6, #5]
d0054f58:	a906      	add	r1, sp, #24
d0054f5a:	79b7      	ldrb	r7, [r6, #6]
d0054f5c:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0054f60:	79f5      	ldrb	r5, [r6, #7]
d0054f62:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0054f66:	2000      	movs	r0, #0
d0054f68:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054f6c:	682d      	ldr	r5, [r5, #0]
d0054f6e:	68ad      	ldr	r5, [r5, #8]
d0054f70:	47a8      	blx	r5
d0054f72:	4605      	mov	r5, r0
d0054f74:	2800      	cmp	r0, #0
d0054f76:	d155      	bne.n	d0055024 <loadMeshSB3D+0x1bc>
d0054f78:	9b02      	ldr	r3, [sp, #8]
d0054f7a:	2b04      	cmp	r3, #4
d0054f7c:	d152      	bne.n	d0055024 <loadMeshSB3D+0x1bc>
d0054f7e:	9b05      	ldr	r3, [sp, #20]
d0054f80:	2b00      	cmp	r3, #0
d0054f82:	d04f      	beq.n	d0055024 <loadMeshSB3D+0x1bc>
d0054f84:	9f06      	ldr	r7, [sp, #24]
d0054f86:	2f00      	cmp	r7, #0
d0054f88:	d04c      	beq.n	d0055024 <loadMeshSB3D+0x1bc>
d0054f8a:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0054f8e:	6063      	str	r3, [r4, #4]
d0054f90:	6167      	str	r7, [r4, #20]
d0054f92:	0080      	lsls	r0, r0, #2
d0054f94:	60e5      	str	r5, [r4, #12]
d0054f96:	f000 fb77 	bl	d0055688 <malloc>
d0054f9a:	4603      	mov	r3, r0
d0054f9c:	0138      	lsls	r0, r7, #4
d0054f9e:	461f      	mov	r7, r3
d0054fa0:	6023      	str	r3, [r4, #0]
d0054fa2:	f000 fb71 	bl	d0055688 <malloc>
d0054fa6:	60a5      	str	r5, [r4, #8]
d0054fa8:	6120      	str	r0, [r4, #16]
d0054faa:	2f00      	cmp	r7, #0
d0054fac:	d037      	beq.n	d005501e <loadMeshSB3D+0x1b6>
d0054fae:	fab0 f880 	clz	r8, r0
d0054fb2:	ea4f 1858 	mov.w	r8, r8, lsr #5
d0054fb6:	b9d8      	cbnz	r0, d0054ff0 <loadMeshSB3D+0x188>
d0054fb8:	e031      	b.n	d005501e <loadMeshSB3D+0x1b6>
d0054fba:	9b02      	ldr	r3, [sp, #8]
d0054fbc:	2b0c      	cmp	r3, #12
d0054fbe:	d12e      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d0054fc0:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0054fc4:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0054fc8:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0054fcc:	ee66 6a88 	vmul.f32	s13, s13, s16
d0054fd0:	6823      	ldr	r3, [r4, #0]
d0054fd2:	ee27 7a08 	vmul.f32	s14, s14, s16
d0054fd6:	9905      	ldr	r1, [sp, #20]
d0054fd8:	ee67 7a88 	vmul.f32	s15, s15, s16
d0054fdc:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0054fe0:	4541      	cmp	r1, r8
d0054fe2:	edc3 6a00 	vstr	s13, [r3]
d0054fe6:	ed83 7a01 	vstr	s14, [r3, #4]
d0054fea:	edc3 7a02 	vstr	s15, [r3, #8]
d0054fee:	d929      	bls.n	d0055044 <loadMeshSB3D+0x1dc>
d0054ff0:	7930      	ldrb	r0, [r6, #4]
d0054ff2:	220c      	movs	r2, #12
d0054ff4:	7975      	ldrb	r5, [r6, #5]
d0054ff6:	ab02      	add	r3, sp, #8
d0054ff8:	79b7      	ldrb	r7, [r6, #6]
d0054ffa:	a909      	add	r1, sp, #36	; 0x24
d0054ffc:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0055000:	79f5      	ldrb	r5, [r6, #7]
d0055002:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0055006:	2000      	movs	r0, #0
d0055008:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d005500c:	682d      	ldr	r5, [r5, #0]
d005500e:	68ad      	ldr	r5, [r5, #8]
d0055010:	47a8      	blx	r5
d0055012:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0055016:	f108 0801 	add.w	r8, r8, #1
d005501a:	2800      	cmp	r0, #0
d005501c:	d0cd      	beq.n	d0054fba <loadMeshSB3D+0x152>
d005501e:	4620      	mov	r0, r4
d0055020:	f7fc fa02 	bl	d0051428 <freeMesh>
d0055024:	2000      	movs	r0, #0
d0055026:	f000 f96b 	bl	d0055300 <fclose>
d005502a:	2000      	movs	r0, #0
d005502c:	b00c      	add	sp, #48	; 0x30
d005502e:	ecbd 8b02 	vpop	{d8}
d0055032:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0055036:	2000      	movs	r0, #0
d0055038:	4770      	bx	lr
d005503a:	bf00      	nop
d005503c:	2001f000 	.word	0x2001f000
d0055040:	44334253 	.word	0x44334253
d0055044:	9b06      	ldr	r3, [sp, #24]
d0055046:	2b00      	cmp	r3, #0
d0055048:	f000 80db 	beq.w	d0055202 <loadMeshSB3D+0x39a>
d005504c:	4605      	mov	r5, r0
d005504e:	7937      	ldrb	r7, [r6, #4]
d0055050:	ab02      	add	r3, sp, #8
d0055052:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055056:	2204      	movs	r2, #4
d0055058:	79b0      	ldrb	r0, [r6, #6]
d005505a:	a907      	add	r1, sp, #28
d005505c:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0055060:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055064:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0055068:	2000      	movs	r0, #0
d005506a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005506e:	683f      	ldr	r7, [r7, #0]
d0055070:	68bf      	ldr	r7, [r7, #8]
d0055072:	47b8      	blx	r7
d0055074:	2800      	cmp	r0, #0
d0055076:	d1d2      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d0055078:	9a02      	ldr	r2, [sp, #8]
d005507a:	2a04      	cmp	r2, #4
d005507c:	d1cf      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d005507e:	7931      	ldrb	r1, [r6, #4]
d0055080:	ab02      	add	r3, sp, #8
d0055082:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055086:	f896 e006 	ldrb.w	lr, [r6, #6]
d005508a:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d005508e:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055092:	a908      	add	r1, sp, #32
d0055094:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0055098:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005509c:	683f      	ldr	r7, [r7, #0]
d005509e:	68bf      	ldr	r7, [r7, #8]
d00550a0:	47b8      	blx	r7
d00550a2:	2800      	cmp	r0, #0
d00550a4:	d1bb      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d00550a6:	9a02      	ldr	r2, [sp, #8]
d00550a8:	2a04      	cmp	r2, #4
d00550aa:	d1b8      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d00550ac:	7931      	ldrb	r1, [r6, #4]
d00550ae:	ab02      	add	r3, sp, #8
d00550b0:	f896 c005 	ldrb.w	ip, [r6, #5]
d00550b4:	f896 e006 	ldrb.w	lr, [r6, #6]
d00550b8:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d00550bc:	f896 c007 	ldrb.w	ip, [r6, #7]
d00550c0:	a909      	add	r1, sp, #36	; 0x24
d00550c2:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d00550c6:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00550ca:	683f      	ldr	r7, [r7, #0]
d00550cc:	68bf      	ldr	r7, [r7, #8]
d00550ce:	47b8      	blx	r7
d00550d0:	2800      	cmp	r0, #0
d00550d2:	d1a4      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d00550d4:	9b02      	ldr	r3, [sp, #8]
d00550d6:	2b04      	cmp	r3, #4
d00550d8:	d1a1      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d00550da:	7937      	ldrb	r7, [r6, #4]
d00550dc:	ab02      	add	r3, sp, #8
d00550de:	f896 c005 	ldrb.w	ip, [r6, #5]
d00550e2:	2201      	movs	r2, #1
d00550e4:	79b1      	ldrb	r1, [r6, #6]
d00550e6:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d00550ea:	f896 c007 	ldrb.w	ip, [r6, #7]
d00550ee:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d00550f2:	a901      	add	r1, sp, #4
d00550f4:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00550f8:	683f      	ldr	r7, [r7, #0]
d00550fa:	68bf      	ldr	r7, [r7, #8]
d00550fc:	47b8      	blx	r7
d00550fe:	2800      	cmp	r0, #0
d0055100:	d18d      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d0055102:	9a02      	ldr	r2, [sp, #8]
d0055104:	2a01      	cmp	r2, #1
d0055106:	d18a      	bne.n	d005501e <loadMeshSB3D+0x1b6>
d0055108:	7931      	ldrb	r1, [r6, #4]
d005510a:	ab02      	add	r3, sp, #8
d005510c:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055110:	f896 e006 	ldrb.w	lr, [r6, #6]
d0055114:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0055118:	f896 c007 	ldrb.w	ip, [r6, #7]
d005511c:	f10d 0105 	add.w	r1, sp, #5
d0055120:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0055124:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055128:	683f      	ldr	r7, [r7, #0]
d005512a:	68bf      	ldr	r7, [r7, #8]
d005512c:	47b8      	blx	r7
d005512e:	2800      	cmp	r0, #0
d0055130:	f47f af75 	bne.w	d005501e <loadMeshSB3D+0x1b6>
d0055134:	9b02      	ldr	r3, [sp, #8]
d0055136:	2b01      	cmp	r3, #1
d0055138:	f47f af71 	bne.w	d005501e <loadMeshSB3D+0x1b6>
d005513c:	7937      	ldrb	r7, [r6, #4]
d005513e:	ab02      	add	r3, sp, #8
d0055140:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055144:	2201      	movs	r2, #1
d0055146:	79b0      	ldrb	r0, [r6, #6]
d0055148:	f10d 0106 	add.w	r1, sp, #6
d005514c:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0055150:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055154:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0055158:	2000      	movs	r0, #0
d005515a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005515e:	683f      	ldr	r7, [r7, #0]
d0055160:	68bf      	ldr	r7, [r7, #8]
d0055162:	47b8      	blx	r7
d0055164:	2800      	cmp	r0, #0
d0055166:	f47f af5a 	bne.w	d005501e <loadMeshSB3D+0x1b6>
d005516a:	9a02      	ldr	r2, [sp, #8]
d005516c:	2a01      	cmp	r2, #1
d005516e:	f47f af56 	bne.w	d005501e <loadMeshSB3D+0x1b6>
d0055172:	7931      	ldrb	r1, [r6, #4]
d0055174:	ab02      	add	r3, sp, #8
d0055176:	f896 c005 	ldrb.w	ip, [r6, #5]
d005517a:	f896 e006 	ldrb.w	lr, [r6, #6]
d005517e:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0055182:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055186:	f10d 0107 	add.w	r1, sp, #7
d005518a:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d005518e:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055192:	683f      	ldr	r7, [r7, #0]
d0055194:	68bf      	ldr	r7, [r7, #8]
d0055196:	47b8      	blx	r7
d0055198:	2800      	cmp	r0, #0
d005519a:	f47f af40 	bne.w	d005501e <loadMeshSB3D+0x1b6>
d005519e:	9b02      	ldr	r3, [sp, #8]
d00551a0:	2b01      	cmp	r3, #1
d00551a2:	f47f af3c 	bne.w	d005501e <loadMeshSB3D+0x1b6>
d00551a6:	f8dd c01c 	ldr.w	ip, [sp, #28]
d00551aa:	9b05      	ldr	r3, [sp, #20]
d00551ac:	459c      	cmp	ip, r3
d00551ae:	f4bf af36 	bcs.w	d005501e <loadMeshSB3D+0x1b6>
d00551b2:	9f08      	ldr	r7, [sp, #32]
d00551b4:	42bb      	cmp	r3, r7
d00551b6:	f67f af32 	bls.w	d005501e <loadMeshSB3D+0x1b6>
d00551ba:	9909      	ldr	r1, [sp, #36]	; 0x24
d00551bc:	428b      	cmp	r3, r1
d00551be:	f67f af2e 	bls.w	d005501e <loadMeshSB3D+0x1b6>
d00551c2:	6922      	ldr	r2, [r4, #16]
d00551c4:	ea4f 1e05 	mov.w	lr, r5, lsl #4
d00551c8:	4603      	mov	r3, r0
d00551ca:	9806      	ldr	r0, [sp, #24]
d00551cc:	f842 c00e 	str.w	ip, [r2, lr]
d00551d0:	eb02 1205 	add.w	r2, r2, r5, lsl #4
d00551d4:	f89d c004 	ldrb.w	ip, [sp, #4]
d00551d8:	3501      	adds	r5, #1
d00551da:	f89d e005 	ldrb.w	lr, [sp, #5]
d00551de:	f36c 0307 	bfi	r3, ip, #0, #8
d00551e2:	f89d c006 	ldrb.w	ip, [sp, #6]
d00551e6:	6057      	str	r7, [r2, #4]
d00551e8:	42a8      	cmp	r0, r5
d00551ea:	f36e 230f 	bfi	r3, lr, #8, #8
d00551ee:	f89d 7007 	ldrb.w	r7, [sp, #7]
d00551f2:	6091      	str	r1, [r2, #8]
d00551f4:	f36c 4317 	bfi	r3, ip, #16, #8
d00551f8:	f367 631f 	bfi	r3, r7, #24, #8
d00551fc:	60d3      	str	r3, [r2, #12]
d00551fe:	f63f af26 	bhi.w	d005504e <loadMeshSB3D+0x1e6>
d0055202:	2000      	movs	r0, #0
d0055204:	f000 f87c 	bl	d0055300 <fclose>
d0055208:	4620      	mov	r0, r4
d005520a:	f7fc f927 	bl	d005145c <meshComputeBoundsRadius>
d005520e:	4620      	mov	r0, r4
d0055210:	ed84 0a06 	vstr	s0, [r4, #24]
d0055214:	f7f9 fbc4 	bl	d004e9a0 <meshSetDefaultMaterial>
d0055218:	2001      	movs	r0, #1
d005521a:	e707      	b.n	d005502c <loadMeshSB3D+0x1c4>

d005521c <__errno>:
d005521c:	4b01      	ldr	r3, [pc, #4]	; (d0055224 <__errno+0x8>)
d005521e:	6818      	ldr	r0, [r3, #0]
d0055220:	4770      	bx	lr
d0055222:	bf00      	nop
d0055224:	d005a494 	.word	0xd005a494

d0055228 <_fclose_r>:
d0055228:	b570      	push	{r4, r5, r6, lr}
d005522a:	4605      	mov	r5, r0
d005522c:	460c      	mov	r4, r1
d005522e:	b911      	cbnz	r1, d0055236 <_fclose_r+0xe>
d0055230:	2600      	movs	r6, #0
d0055232:	4630      	mov	r0, r6
d0055234:	bd70      	pop	{r4, r5, r6, pc}
d0055236:	b118      	cbz	r0, d0055240 <_fclose_r+0x18>
d0055238:	6983      	ldr	r3, [r0, #24]
d005523a:	b90b      	cbnz	r3, d0055240 <_fclose_r+0x18>
d005523c:	f000 f982 	bl	d0055544 <__sinit>
d0055240:	4b2c      	ldr	r3, [pc, #176]	; (d00552f4 <_fclose_r+0xcc>)
d0055242:	429c      	cmp	r4, r3
d0055244:	d114      	bne.n	d0055270 <_fclose_r+0x48>
d0055246:	686c      	ldr	r4, [r5, #4]
d0055248:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005524a:	07d8      	lsls	r0, r3, #31
d005524c:	d405      	bmi.n	d005525a <_fclose_r+0x32>
d005524e:	89a3      	ldrh	r3, [r4, #12]
d0055250:	0599      	lsls	r1, r3, #22
d0055252:	d402      	bmi.n	d005525a <_fclose_r+0x32>
d0055254:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055256:	f000 fa14 	bl	d0055682 <__retarget_lock_acquire_recursive>
d005525a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005525e:	b98b      	cbnz	r3, d0055284 <_fclose_r+0x5c>
d0055260:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0055262:	f016 0601 	ands.w	r6, r6, #1
d0055266:	d1e3      	bne.n	d0055230 <_fclose_r+0x8>
d0055268:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005526a:	f000 fa0b 	bl	d0055684 <__retarget_lock_release_recursive>
d005526e:	e7e0      	b.n	d0055232 <_fclose_r+0xa>
d0055270:	4b21      	ldr	r3, [pc, #132]	; (d00552f8 <_fclose_r+0xd0>)
d0055272:	429c      	cmp	r4, r3
d0055274:	d101      	bne.n	d005527a <_fclose_r+0x52>
d0055276:	68ac      	ldr	r4, [r5, #8]
d0055278:	e7e6      	b.n	d0055248 <_fclose_r+0x20>
d005527a:	4b20      	ldr	r3, [pc, #128]	; (d00552fc <_fclose_r+0xd4>)
d005527c:	429c      	cmp	r4, r3
d005527e:	bf08      	it	eq
d0055280:	68ec      	ldreq	r4, [r5, #12]
d0055282:	e7e1      	b.n	d0055248 <_fclose_r+0x20>
d0055284:	4621      	mov	r1, r4
d0055286:	4628      	mov	r0, r5
d0055288:	f000 f842 	bl	d0055310 <__sflush_r>
d005528c:	6b23      	ldr	r3, [r4, #48]	; 0x30
d005528e:	4606      	mov	r6, r0
d0055290:	b133      	cbz	r3, d00552a0 <_fclose_r+0x78>
d0055292:	6a21      	ldr	r1, [r4, #32]
d0055294:	4628      	mov	r0, r5
d0055296:	4798      	blx	r3
d0055298:	2800      	cmp	r0, #0
d005529a:	bfb8      	it	lt
d005529c:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d00552a0:	89a3      	ldrh	r3, [r4, #12]
d00552a2:	061a      	lsls	r2, r3, #24
d00552a4:	d503      	bpl.n	d00552ae <_fclose_r+0x86>
d00552a6:	6921      	ldr	r1, [r4, #16]
d00552a8:	4628      	mov	r0, r5
d00552aa:	f000 fa21 	bl	d00556f0 <_free_r>
d00552ae:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00552b0:	b141      	cbz	r1, d00552c4 <_fclose_r+0x9c>
d00552b2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00552b6:	4299      	cmp	r1, r3
d00552b8:	d002      	beq.n	d00552c0 <_fclose_r+0x98>
d00552ba:	4628      	mov	r0, r5
d00552bc:	f000 fa18 	bl	d00556f0 <_free_r>
d00552c0:	2300      	movs	r3, #0
d00552c2:	6363      	str	r3, [r4, #52]	; 0x34
d00552c4:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d00552c6:	b121      	cbz	r1, d00552d2 <_fclose_r+0xaa>
d00552c8:	4628      	mov	r0, r5
d00552ca:	f000 fa11 	bl	d00556f0 <_free_r>
d00552ce:	2300      	movs	r3, #0
d00552d0:	64a3      	str	r3, [r4, #72]	; 0x48
d00552d2:	f000 f91f 	bl	d0055514 <__sfp_lock_acquire>
d00552d6:	2300      	movs	r3, #0
d00552d8:	81a3      	strh	r3, [r4, #12]
d00552da:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00552dc:	07db      	lsls	r3, r3, #31
d00552de:	d402      	bmi.n	d00552e6 <_fclose_r+0xbe>
d00552e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00552e2:	f000 f9cf 	bl	d0055684 <__retarget_lock_release_recursive>
d00552e6:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00552e8:	f000 f9ca 	bl	d0055680 <__retarget_lock_close_recursive>
d00552ec:	f000 f918 	bl	d0055520 <__sfp_lock_release>
d00552f0:	e79f      	b.n	d0055232 <_fclose_r+0xa>
d00552f2:	bf00      	nop
d00552f4:	d0057b28 	.word	0xd0057b28
d00552f8:	d0057b48 	.word	0xd0057b48
d00552fc:	d0057b08 	.word	0xd0057b08

d0055300 <fclose>:
d0055300:	4b02      	ldr	r3, [pc, #8]	; (d005530c <fclose+0xc>)
d0055302:	4601      	mov	r1, r0
d0055304:	6818      	ldr	r0, [r3, #0]
d0055306:	f7ff bf8f 	b.w	d0055228 <_fclose_r>
d005530a:	bf00      	nop
d005530c:	d005a494 	.word	0xd005a494

d0055310 <__sflush_r>:
d0055310:	898a      	ldrh	r2, [r1, #12]
d0055312:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0055316:	4605      	mov	r5, r0
d0055318:	0710      	lsls	r0, r2, #28
d005531a:	460c      	mov	r4, r1
d005531c:	d458      	bmi.n	d00553d0 <__sflush_r+0xc0>
d005531e:	684b      	ldr	r3, [r1, #4]
d0055320:	2b00      	cmp	r3, #0
d0055322:	dc05      	bgt.n	d0055330 <__sflush_r+0x20>
d0055324:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0055326:	2b00      	cmp	r3, #0
d0055328:	dc02      	bgt.n	d0055330 <__sflush_r+0x20>
d005532a:	2000      	movs	r0, #0
d005532c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0055330:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0055332:	2e00      	cmp	r6, #0
d0055334:	d0f9      	beq.n	d005532a <__sflush_r+0x1a>
d0055336:	2300      	movs	r3, #0
d0055338:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d005533c:	682f      	ldr	r7, [r5, #0]
d005533e:	602b      	str	r3, [r5, #0]
d0055340:	d032      	beq.n	d00553a8 <__sflush_r+0x98>
d0055342:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0055344:	89a3      	ldrh	r3, [r4, #12]
d0055346:	075a      	lsls	r2, r3, #29
d0055348:	d505      	bpl.n	d0055356 <__sflush_r+0x46>
d005534a:	6863      	ldr	r3, [r4, #4]
d005534c:	1ac0      	subs	r0, r0, r3
d005534e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0055350:	b10b      	cbz	r3, d0055356 <__sflush_r+0x46>
d0055352:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0055354:	1ac0      	subs	r0, r0, r3
d0055356:	2300      	movs	r3, #0
d0055358:	4602      	mov	r2, r0
d005535a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d005535c:	6a21      	ldr	r1, [r4, #32]
d005535e:	4628      	mov	r0, r5
d0055360:	47b0      	blx	r6
d0055362:	1c43      	adds	r3, r0, #1
d0055364:	89a3      	ldrh	r3, [r4, #12]
d0055366:	d106      	bne.n	d0055376 <__sflush_r+0x66>
d0055368:	6829      	ldr	r1, [r5, #0]
d005536a:	291d      	cmp	r1, #29
d005536c:	d82c      	bhi.n	d00553c8 <__sflush_r+0xb8>
d005536e:	4a2a      	ldr	r2, [pc, #168]	; (d0055418 <__sflush_r+0x108>)
d0055370:	40ca      	lsrs	r2, r1
d0055372:	07d6      	lsls	r6, r2, #31
d0055374:	d528      	bpl.n	d00553c8 <__sflush_r+0xb8>
d0055376:	2200      	movs	r2, #0
d0055378:	6062      	str	r2, [r4, #4]
d005537a:	04d9      	lsls	r1, r3, #19
d005537c:	6922      	ldr	r2, [r4, #16]
d005537e:	6022      	str	r2, [r4, #0]
d0055380:	d504      	bpl.n	d005538c <__sflush_r+0x7c>
d0055382:	1c42      	adds	r2, r0, #1
d0055384:	d101      	bne.n	d005538a <__sflush_r+0x7a>
d0055386:	682b      	ldr	r3, [r5, #0]
d0055388:	b903      	cbnz	r3, d005538c <__sflush_r+0x7c>
d005538a:	6560      	str	r0, [r4, #84]	; 0x54
d005538c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005538e:	602f      	str	r7, [r5, #0]
d0055390:	2900      	cmp	r1, #0
d0055392:	d0ca      	beq.n	d005532a <__sflush_r+0x1a>
d0055394:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0055398:	4299      	cmp	r1, r3
d005539a:	d002      	beq.n	d00553a2 <__sflush_r+0x92>
d005539c:	4628      	mov	r0, r5
d005539e:	f000 f9a7 	bl	d00556f0 <_free_r>
d00553a2:	2000      	movs	r0, #0
d00553a4:	6360      	str	r0, [r4, #52]	; 0x34
d00553a6:	e7c1      	b.n	d005532c <__sflush_r+0x1c>
d00553a8:	6a21      	ldr	r1, [r4, #32]
d00553aa:	2301      	movs	r3, #1
d00553ac:	4628      	mov	r0, r5
d00553ae:	47b0      	blx	r6
d00553b0:	1c41      	adds	r1, r0, #1
d00553b2:	d1c7      	bne.n	d0055344 <__sflush_r+0x34>
d00553b4:	682b      	ldr	r3, [r5, #0]
d00553b6:	2b00      	cmp	r3, #0
d00553b8:	d0c4      	beq.n	d0055344 <__sflush_r+0x34>
d00553ba:	2b1d      	cmp	r3, #29
d00553bc:	d001      	beq.n	d00553c2 <__sflush_r+0xb2>
d00553be:	2b16      	cmp	r3, #22
d00553c0:	d101      	bne.n	d00553c6 <__sflush_r+0xb6>
d00553c2:	602f      	str	r7, [r5, #0]
d00553c4:	e7b1      	b.n	d005532a <__sflush_r+0x1a>
d00553c6:	89a3      	ldrh	r3, [r4, #12]
d00553c8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00553cc:	81a3      	strh	r3, [r4, #12]
d00553ce:	e7ad      	b.n	d005532c <__sflush_r+0x1c>
d00553d0:	690f      	ldr	r7, [r1, #16]
d00553d2:	2f00      	cmp	r7, #0
d00553d4:	d0a9      	beq.n	d005532a <__sflush_r+0x1a>
d00553d6:	0793      	lsls	r3, r2, #30
d00553d8:	680e      	ldr	r6, [r1, #0]
d00553da:	bf08      	it	eq
d00553dc:	694b      	ldreq	r3, [r1, #20]
d00553de:	600f      	str	r7, [r1, #0]
d00553e0:	bf18      	it	ne
d00553e2:	2300      	movne	r3, #0
d00553e4:	eba6 0807 	sub.w	r8, r6, r7
d00553e8:	608b      	str	r3, [r1, #8]
d00553ea:	f1b8 0f00 	cmp.w	r8, #0
d00553ee:	dd9c      	ble.n	d005532a <__sflush_r+0x1a>
d00553f0:	6a21      	ldr	r1, [r4, #32]
d00553f2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00553f4:	4643      	mov	r3, r8
d00553f6:	463a      	mov	r2, r7
d00553f8:	4628      	mov	r0, r5
d00553fa:	47b0      	blx	r6
d00553fc:	2800      	cmp	r0, #0
d00553fe:	dc06      	bgt.n	d005540e <__sflush_r+0xfe>
d0055400:	89a3      	ldrh	r3, [r4, #12]
d0055402:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055406:	81a3      	strh	r3, [r4, #12]
d0055408:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005540c:	e78e      	b.n	d005532c <__sflush_r+0x1c>
d005540e:	4407      	add	r7, r0
d0055410:	eba8 0800 	sub.w	r8, r8, r0
d0055414:	e7e9      	b.n	d00553ea <__sflush_r+0xda>
d0055416:	bf00      	nop
d0055418:	20400001 	.word	0x20400001

d005541c <_fflush_r>:
d005541c:	b538      	push	{r3, r4, r5, lr}
d005541e:	690b      	ldr	r3, [r1, #16]
d0055420:	4605      	mov	r5, r0
d0055422:	460c      	mov	r4, r1
d0055424:	b913      	cbnz	r3, d005542c <_fflush_r+0x10>
d0055426:	2500      	movs	r5, #0
d0055428:	4628      	mov	r0, r5
d005542a:	bd38      	pop	{r3, r4, r5, pc}
d005542c:	b118      	cbz	r0, d0055436 <_fflush_r+0x1a>
d005542e:	6983      	ldr	r3, [r0, #24]
d0055430:	b90b      	cbnz	r3, d0055436 <_fflush_r+0x1a>
d0055432:	f000 f887 	bl	d0055544 <__sinit>
d0055436:	4b14      	ldr	r3, [pc, #80]	; (d0055488 <_fflush_r+0x6c>)
d0055438:	429c      	cmp	r4, r3
d005543a:	d11b      	bne.n	d0055474 <_fflush_r+0x58>
d005543c:	686c      	ldr	r4, [r5, #4]
d005543e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055442:	2b00      	cmp	r3, #0
d0055444:	d0ef      	beq.n	d0055426 <_fflush_r+0xa>
d0055446:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0055448:	07d0      	lsls	r0, r2, #31
d005544a:	d404      	bmi.n	d0055456 <_fflush_r+0x3a>
d005544c:	0599      	lsls	r1, r3, #22
d005544e:	d402      	bmi.n	d0055456 <_fflush_r+0x3a>
d0055450:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055452:	f000 f916 	bl	d0055682 <__retarget_lock_acquire_recursive>
d0055456:	4628      	mov	r0, r5
d0055458:	4621      	mov	r1, r4
d005545a:	f7ff ff59 	bl	d0055310 <__sflush_r>
d005545e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0055460:	07da      	lsls	r2, r3, #31
d0055462:	4605      	mov	r5, r0
d0055464:	d4e0      	bmi.n	d0055428 <_fflush_r+0xc>
d0055466:	89a3      	ldrh	r3, [r4, #12]
d0055468:	059b      	lsls	r3, r3, #22
d005546a:	d4dd      	bmi.n	d0055428 <_fflush_r+0xc>
d005546c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005546e:	f000 f909 	bl	d0055684 <__retarget_lock_release_recursive>
d0055472:	e7d9      	b.n	d0055428 <_fflush_r+0xc>
d0055474:	4b05      	ldr	r3, [pc, #20]	; (d005548c <_fflush_r+0x70>)
d0055476:	429c      	cmp	r4, r3
d0055478:	d101      	bne.n	d005547e <_fflush_r+0x62>
d005547a:	68ac      	ldr	r4, [r5, #8]
d005547c:	e7df      	b.n	d005543e <_fflush_r+0x22>
d005547e:	4b04      	ldr	r3, [pc, #16]	; (d0055490 <_fflush_r+0x74>)
d0055480:	429c      	cmp	r4, r3
d0055482:	bf08      	it	eq
d0055484:	68ec      	ldreq	r4, [r5, #12]
d0055486:	e7da      	b.n	d005543e <_fflush_r+0x22>
d0055488:	d0057b28 	.word	0xd0057b28
d005548c:	d0057b48 	.word	0xd0057b48
d0055490:	d0057b08 	.word	0xd0057b08

d0055494 <std>:
d0055494:	2300      	movs	r3, #0
d0055496:	b510      	push	{r4, lr}
d0055498:	4604      	mov	r4, r0
d005549a:	e9c0 3300 	strd	r3, r3, [r0]
d005549e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00554a2:	6083      	str	r3, [r0, #8]
d00554a4:	8181      	strh	r1, [r0, #12]
d00554a6:	6643      	str	r3, [r0, #100]	; 0x64
d00554a8:	81c2      	strh	r2, [r0, #14]
d00554aa:	6183      	str	r3, [r0, #24]
d00554ac:	4619      	mov	r1, r3
d00554ae:	2208      	movs	r2, #8
d00554b0:	305c      	adds	r0, #92	; 0x5c
d00554b2:	f000 f915 	bl	d00556e0 <memset>
d00554b6:	4b05      	ldr	r3, [pc, #20]	; (d00554cc <std+0x38>)
d00554b8:	6263      	str	r3, [r4, #36]	; 0x24
d00554ba:	4b05      	ldr	r3, [pc, #20]	; (d00554d0 <std+0x3c>)
d00554bc:	62a3      	str	r3, [r4, #40]	; 0x28
d00554be:	4b05      	ldr	r3, [pc, #20]	; (d00554d4 <std+0x40>)
d00554c0:	62e3      	str	r3, [r4, #44]	; 0x2c
d00554c2:	4b05      	ldr	r3, [pc, #20]	; (d00554d8 <std+0x44>)
d00554c4:	6224      	str	r4, [r4, #32]
d00554c6:	6323      	str	r3, [r4, #48]	; 0x30
d00554c8:	bd10      	pop	{r4, pc}
d00554ca:	bf00      	nop
d00554cc:	d0055aa1 	.word	0xd0055aa1
d00554d0:	d0055ac3 	.word	0xd0055ac3
d00554d4:	d0055afb 	.word	0xd0055afb
d00554d8:	d0055b1f 	.word	0xd0055b1f

d00554dc <_cleanup_r>:
d00554dc:	4901      	ldr	r1, [pc, #4]	; (d00554e4 <_cleanup_r+0x8>)
d00554de:	f000 b8af 	b.w	d0055640 <_fwalk_reent>
d00554e2:	bf00      	nop
d00554e4:	d005541d 	.word	0xd005541d

d00554e8 <__sfmoreglue>:
d00554e8:	b570      	push	{r4, r5, r6, lr}
d00554ea:	1e4a      	subs	r2, r1, #1
d00554ec:	2568      	movs	r5, #104	; 0x68
d00554ee:	4355      	muls	r5, r2
d00554f0:	460e      	mov	r6, r1
d00554f2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00554f6:	f000 f94b 	bl	d0055790 <_malloc_r>
d00554fa:	4604      	mov	r4, r0
d00554fc:	b140      	cbz	r0, d0055510 <__sfmoreglue+0x28>
d00554fe:	2100      	movs	r1, #0
d0055500:	e9c0 1600 	strd	r1, r6, [r0]
d0055504:	300c      	adds	r0, #12
d0055506:	60a0      	str	r0, [r4, #8]
d0055508:	f105 0268 	add.w	r2, r5, #104	; 0x68
d005550c:	f000 f8e8 	bl	d00556e0 <memset>
d0055510:	4620      	mov	r0, r4
d0055512:	bd70      	pop	{r4, r5, r6, pc}

d0055514 <__sfp_lock_acquire>:
d0055514:	4801      	ldr	r0, [pc, #4]	; (d005551c <__sfp_lock_acquire+0x8>)
d0055516:	f000 b8b4 	b.w	d0055682 <__retarget_lock_acquire_recursive>
d005551a:	bf00      	nop
d005551c:	d00fcc3c 	.word	0xd00fcc3c

d0055520 <__sfp_lock_release>:
d0055520:	4801      	ldr	r0, [pc, #4]	; (d0055528 <__sfp_lock_release+0x8>)
d0055522:	f000 b8af 	b.w	d0055684 <__retarget_lock_release_recursive>
d0055526:	bf00      	nop
d0055528:	d00fcc3c 	.word	0xd00fcc3c

d005552c <__sinit_lock_acquire>:
d005552c:	4801      	ldr	r0, [pc, #4]	; (d0055534 <__sinit_lock_acquire+0x8>)
d005552e:	f000 b8a8 	b.w	d0055682 <__retarget_lock_acquire_recursive>
d0055532:	bf00      	nop
d0055534:	d00fcc37 	.word	0xd00fcc37

d0055538 <__sinit_lock_release>:
d0055538:	4801      	ldr	r0, [pc, #4]	; (d0055540 <__sinit_lock_release+0x8>)
d005553a:	f000 b8a3 	b.w	d0055684 <__retarget_lock_release_recursive>
d005553e:	bf00      	nop
d0055540:	d00fcc37 	.word	0xd00fcc37

d0055544 <__sinit>:
d0055544:	b510      	push	{r4, lr}
d0055546:	4604      	mov	r4, r0
d0055548:	f7ff fff0 	bl	d005552c <__sinit_lock_acquire>
d005554c:	69a3      	ldr	r3, [r4, #24]
d005554e:	b11b      	cbz	r3, d0055558 <__sinit+0x14>
d0055550:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0055554:	f7ff bff0 	b.w	d0055538 <__sinit_lock_release>
d0055558:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d005555c:	6523      	str	r3, [r4, #80]	; 0x50
d005555e:	4b13      	ldr	r3, [pc, #76]	; (d00555ac <__sinit+0x68>)
d0055560:	4a13      	ldr	r2, [pc, #76]	; (d00555b0 <__sinit+0x6c>)
d0055562:	681b      	ldr	r3, [r3, #0]
d0055564:	62a2      	str	r2, [r4, #40]	; 0x28
d0055566:	42a3      	cmp	r3, r4
d0055568:	bf04      	itt	eq
d005556a:	2301      	moveq	r3, #1
d005556c:	61a3      	streq	r3, [r4, #24]
d005556e:	4620      	mov	r0, r4
d0055570:	f000 f820 	bl	d00555b4 <__sfp>
d0055574:	6060      	str	r0, [r4, #4]
d0055576:	4620      	mov	r0, r4
d0055578:	f000 f81c 	bl	d00555b4 <__sfp>
d005557c:	60a0      	str	r0, [r4, #8]
d005557e:	4620      	mov	r0, r4
d0055580:	f000 f818 	bl	d00555b4 <__sfp>
d0055584:	2200      	movs	r2, #0
d0055586:	60e0      	str	r0, [r4, #12]
d0055588:	2104      	movs	r1, #4
d005558a:	6860      	ldr	r0, [r4, #4]
d005558c:	f7ff ff82 	bl	d0055494 <std>
d0055590:	68a0      	ldr	r0, [r4, #8]
d0055592:	2201      	movs	r2, #1
d0055594:	2109      	movs	r1, #9
d0055596:	f7ff ff7d 	bl	d0055494 <std>
d005559a:	68e0      	ldr	r0, [r4, #12]
d005559c:	2202      	movs	r2, #2
d005559e:	2112      	movs	r1, #18
d00555a0:	f7ff ff78 	bl	d0055494 <std>
d00555a4:	2301      	movs	r3, #1
d00555a6:	61a3      	str	r3, [r4, #24]
d00555a8:	e7d2      	b.n	d0055550 <__sinit+0xc>
d00555aa:	bf00      	nop
d00555ac:	d0057b68 	.word	0xd0057b68
d00555b0:	d00554dd 	.word	0xd00554dd

d00555b4 <__sfp>:
d00555b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00555b6:	4607      	mov	r7, r0
d00555b8:	f7ff ffac 	bl	d0055514 <__sfp_lock_acquire>
d00555bc:	4b1e      	ldr	r3, [pc, #120]	; (d0055638 <__sfp+0x84>)
d00555be:	681e      	ldr	r6, [r3, #0]
d00555c0:	69b3      	ldr	r3, [r6, #24]
d00555c2:	b913      	cbnz	r3, d00555ca <__sfp+0x16>
d00555c4:	4630      	mov	r0, r6
d00555c6:	f7ff ffbd 	bl	d0055544 <__sinit>
d00555ca:	3648      	adds	r6, #72	; 0x48
d00555cc:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00555d0:	3b01      	subs	r3, #1
d00555d2:	d503      	bpl.n	d00555dc <__sfp+0x28>
d00555d4:	6833      	ldr	r3, [r6, #0]
d00555d6:	b30b      	cbz	r3, d005561c <__sfp+0x68>
d00555d8:	6836      	ldr	r6, [r6, #0]
d00555da:	e7f7      	b.n	d00555cc <__sfp+0x18>
d00555dc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00555e0:	b9d5      	cbnz	r5, d0055618 <__sfp+0x64>
d00555e2:	4b16      	ldr	r3, [pc, #88]	; (d005563c <__sfp+0x88>)
d00555e4:	60e3      	str	r3, [r4, #12]
d00555e6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00555ea:	6665      	str	r5, [r4, #100]	; 0x64
d00555ec:	f000 f847 	bl	d005567e <__retarget_lock_init_recursive>
d00555f0:	f7ff ff96 	bl	d0055520 <__sfp_lock_release>
d00555f4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00555f8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00555fc:	6025      	str	r5, [r4, #0]
d00555fe:	61a5      	str	r5, [r4, #24]
d0055600:	2208      	movs	r2, #8
d0055602:	4629      	mov	r1, r5
d0055604:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0055608:	f000 f86a 	bl	d00556e0 <memset>
d005560c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0055610:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0055614:	4620      	mov	r0, r4
d0055616:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0055618:	3468      	adds	r4, #104	; 0x68
d005561a:	e7d9      	b.n	d00555d0 <__sfp+0x1c>
d005561c:	2104      	movs	r1, #4
d005561e:	4638      	mov	r0, r7
d0055620:	f7ff ff62 	bl	d00554e8 <__sfmoreglue>
d0055624:	4604      	mov	r4, r0
d0055626:	6030      	str	r0, [r6, #0]
d0055628:	2800      	cmp	r0, #0
d005562a:	d1d5      	bne.n	d00555d8 <__sfp+0x24>
d005562c:	f7ff ff78 	bl	d0055520 <__sfp_lock_release>
d0055630:	230c      	movs	r3, #12
d0055632:	603b      	str	r3, [r7, #0]
d0055634:	e7ee      	b.n	d0055614 <__sfp+0x60>
d0055636:	bf00      	nop
d0055638:	d0057b68 	.word	0xd0057b68
d005563c:	ffff0001 	.word	0xffff0001

d0055640 <_fwalk_reent>:
d0055640:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0055644:	4606      	mov	r6, r0
d0055646:	4688      	mov	r8, r1
d0055648:	f100 0448 	add.w	r4, r0, #72	; 0x48
d005564c:	2700      	movs	r7, #0
d005564e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0055652:	f1b9 0901 	subs.w	r9, r9, #1
d0055656:	d505      	bpl.n	d0055664 <_fwalk_reent+0x24>
d0055658:	6824      	ldr	r4, [r4, #0]
d005565a:	2c00      	cmp	r4, #0
d005565c:	d1f7      	bne.n	d005564e <_fwalk_reent+0xe>
d005565e:	4638      	mov	r0, r7
d0055660:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0055664:	89ab      	ldrh	r3, [r5, #12]
d0055666:	2b01      	cmp	r3, #1
d0055668:	d907      	bls.n	d005567a <_fwalk_reent+0x3a>
d005566a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d005566e:	3301      	adds	r3, #1
d0055670:	d003      	beq.n	d005567a <_fwalk_reent+0x3a>
d0055672:	4629      	mov	r1, r5
d0055674:	4630      	mov	r0, r6
d0055676:	47c0      	blx	r8
d0055678:	4307      	orrs	r7, r0
d005567a:	3568      	adds	r5, #104	; 0x68
d005567c:	e7e9      	b.n	d0055652 <_fwalk_reent+0x12>

d005567e <__retarget_lock_init_recursive>:
d005567e:	4770      	bx	lr

d0055680 <__retarget_lock_close_recursive>:
d0055680:	4770      	bx	lr

d0055682 <__retarget_lock_acquire_recursive>:
d0055682:	4770      	bx	lr

d0055684 <__retarget_lock_release_recursive>:
d0055684:	4770      	bx	lr
	...

d0055688 <malloc>:
d0055688:	4b02      	ldr	r3, [pc, #8]	; (d0055694 <malloc+0xc>)
d005568a:	4601      	mov	r1, r0
d005568c:	6818      	ldr	r0, [r3, #0]
d005568e:	f000 b87f 	b.w	d0055790 <_malloc_r>
d0055692:	bf00      	nop
d0055694:	d005a494 	.word	0xd005a494

d0055698 <free>:
d0055698:	4b02      	ldr	r3, [pc, #8]	; (d00556a4 <free+0xc>)
d005569a:	4601      	mov	r1, r0
d005569c:	6818      	ldr	r0, [r3, #0]
d005569e:	f000 b827 	b.w	d00556f0 <_free_r>
d00556a2:	bf00      	nop
d00556a4:	d005a494 	.word	0xd005a494

d00556a8 <memcmp>:
d00556a8:	b530      	push	{r4, r5, lr}
d00556aa:	3901      	subs	r1, #1
d00556ac:	2400      	movs	r4, #0
d00556ae:	42a2      	cmp	r2, r4
d00556b0:	d101      	bne.n	d00556b6 <memcmp+0xe>
d00556b2:	2000      	movs	r0, #0
d00556b4:	e005      	b.n	d00556c2 <memcmp+0x1a>
d00556b6:	5d03      	ldrb	r3, [r0, r4]
d00556b8:	3401      	adds	r4, #1
d00556ba:	5d0d      	ldrb	r5, [r1, r4]
d00556bc:	42ab      	cmp	r3, r5
d00556be:	d0f6      	beq.n	d00556ae <memcmp+0x6>
d00556c0:	1b58      	subs	r0, r3, r5
d00556c2:	bd30      	pop	{r4, r5, pc}

d00556c4 <memcpy>:
d00556c4:	440a      	add	r2, r1
d00556c6:	4291      	cmp	r1, r2
d00556c8:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00556cc:	d100      	bne.n	d00556d0 <memcpy+0xc>
d00556ce:	4770      	bx	lr
d00556d0:	b510      	push	{r4, lr}
d00556d2:	f811 4b01 	ldrb.w	r4, [r1], #1
d00556d6:	f803 4f01 	strb.w	r4, [r3, #1]!
d00556da:	4291      	cmp	r1, r2
d00556dc:	d1f9      	bne.n	d00556d2 <memcpy+0xe>
d00556de:	bd10      	pop	{r4, pc}

d00556e0 <memset>:
d00556e0:	4402      	add	r2, r0
d00556e2:	4603      	mov	r3, r0
d00556e4:	4293      	cmp	r3, r2
d00556e6:	d100      	bne.n	d00556ea <memset+0xa>
d00556e8:	4770      	bx	lr
d00556ea:	f803 1b01 	strb.w	r1, [r3], #1
d00556ee:	e7f9      	b.n	d00556e4 <memset+0x4>

d00556f0 <_free_r>:
d00556f0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00556f2:	2900      	cmp	r1, #0
d00556f4:	d048      	beq.n	d0055788 <_free_r+0x98>
d00556f6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00556fa:	9001      	str	r0, [sp, #4]
d00556fc:	2b00      	cmp	r3, #0
d00556fe:	f1a1 0404 	sub.w	r4, r1, #4
d0055702:	bfb8      	it	lt
d0055704:	18e4      	addlt	r4, r4, r3
d0055706:	f000 fac5 	bl	d0055c94 <__malloc_lock>
d005570a:	4a20      	ldr	r2, [pc, #128]	; (d005578c <_free_r+0x9c>)
d005570c:	9801      	ldr	r0, [sp, #4]
d005570e:	6813      	ldr	r3, [r2, #0]
d0055710:	4615      	mov	r5, r2
d0055712:	b933      	cbnz	r3, d0055722 <_free_r+0x32>
d0055714:	6063      	str	r3, [r4, #4]
d0055716:	6014      	str	r4, [r2, #0]
d0055718:	b003      	add	sp, #12
d005571a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005571e:	f000 babf 	b.w	d0055ca0 <__malloc_unlock>
d0055722:	42a3      	cmp	r3, r4
d0055724:	d90b      	bls.n	d005573e <_free_r+0x4e>
d0055726:	6821      	ldr	r1, [r4, #0]
d0055728:	1862      	adds	r2, r4, r1
d005572a:	4293      	cmp	r3, r2
d005572c:	bf04      	itt	eq
d005572e:	681a      	ldreq	r2, [r3, #0]
d0055730:	685b      	ldreq	r3, [r3, #4]
d0055732:	6063      	str	r3, [r4, #4]
d0055734:	bf04      	itt	eq
d0055736:	1852      	addeq	r2, r2, r1
d0055738:	6022      	streq	r2, [r4, #0]
d005573a:	602c      	str	r4, [r5, #0]
d005573c:	e7ec      	b.n	d0055718 <_free_r+0x28>
d005573e:	461a      	mov	r2, r3
d0055740:	685b      	ldr	r3, [r3, #4]
d0055742:	b10b      	cbz	r3, d0055748 <_free_r+0x58>
d0055744:	42a3      	cmp	r3, r4
d0055746:	d9fa      	bls.n	d005573e <_free_r+0x4e>
d0055748:	6811      	ldr	r1, [r2, #0]
d005574a:	1855      	adds	r5, r2, r1
d005574c:	42a5      	cmp	r5, r4
d005574e:	d10b      	bne.n	d0055768 <_free_r+0x78>
d0055750:	6824      	ldr	r4, [r4, #0]
d0055752:	4421      	add	r1, r4
d0055754:	1854      	adds	r4, r2, r1
d0055756:	42a3      	cmp	r3, r4
d0055758:	6011      	str	r1, [r2, #0]
d005575a:	d1dd      	bne.n	d0055718 <_free_r+0x28>
d005575c:	681c      	ldr	r4, [r3, #0]
d005575e:	685b      	ldr	r3, [r3, #4]
d0055760:	6053      	str	r3, [r2, #4]
d0055762:	4421      	add	r1, r4
d0055764:	6011      	str	r1, [r2, #0]
d0055766:	e7d7      	b.n	d0055718 <_free_r+0x28>
d0055768:	d902      	bls.n	d0055770 <_free_r+0x80>
d005576a:	230c      	movs	r3, #12
d005576c:	6003      	str	r3, [r0, #0]
d005576e:	e7d3      	b.n	d0055718 <_free_r+0x28>
d0055770:	6825      	ldr	r5, [r4, #0]
d0055772:	1961      	adds	r1, r4, r5
d0055774:	428b      	cmp	r3, r1
d0055776:	bf04      	itt	eq
d0055778:	6819      	ldreq	r1, [r3, #0]
d005577a:	685b      	ldreq	r3, [r3, #4]
d005577c:	6063      	str	r3, [r4, #4]
d005577e:	bf04      	itt	eq
d0055780:	1949      	addeq	r1, r1, r5
d0055782:	6021      	streq	r1, [r4, #0]
d0055784:	6054      	str	r4, [r2, #4]
d0055786:	e7c7      	b.n	d0055718 <_free_r+0x28>
d0055788:	b003      	add	sp, #12
d005578a:	bd30      	pop	{r4, r5, pc}
d005578c:	d00f49a0 	.word	0xd00f49a0

d0055790 <_malloc_r>:
d0055790:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055792:	1ccd      	adds	r5, r1, #3
d0055794:	f025 0503 	bic.w	r5, r5, #3
d0055798:	3508      	adds	r5, #8
d005579a:	2d0c      	cmp	r5, #12
d005579c:	bf38      	it	cc
d005579e:	250c      	movcc	r5, #12
d00557a0:	2d00      	cmp	r5, #0
d00557a2:	4606      	mov	r6, r0
d00557a4:	db01      	blt.n	d00557aa <_malloc_r+0x1a>
d00557a6:	42a9      	cmp	r1, r5
d00557a8:	d903      	bls.n	d00557b2 <_malloc_r+0x22>
d00557aa:	230c      	movs	r3, #12
d00557ac:	6033      	str	r3, [r6, #0]
d00557ae:	2000      	movs	r0, #0
d00557b0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00557b2:	f000 fa6f 	bl	d0055c94 <__malloc_lock>
d00557b6:	4921      	ldr	r1, [pc, #132]	; (d005583c <_malloc_r+0xac>)
d00557b8:	680a      	ldr	r2, [r1, #0]
d00557ba:	4614      	mov	r4, r2
d00557bc:	b99c      	cbnz	r4, d00557e6 <_malloc_r+0x56>
d00557be:	4f20      	ldr	r7, [pc, #128]	; (d0055840 <_malloc_r+0xb0>)
d00557c0:	683b      	ldr	r3, [r7, #0]
d00557c2:	b923      	cbnz	r3, d00557ce <_malloc_r+0x3e>
d00557c4:	4621      	mov	r1, r4
d00557c6:	4630      	mov	r0, r6
d00557c8:	f7f5 fc8a 	bl	d004b0e0 <_sbrk_r>
d00557cc:	6038      	str	r0, [r7, #0]
d00557ce:	4629      	mov	r1, r5
d00557d0:	4630      	mov	r0, r6
d00557d2:	f7f5 fc85 	bl	d004b0e0 <_sbrk_r>
d00557d6:	1c43      	adds	r3, r0, #1
d00557d8:	d123      	bne.n	d0055822 <_malloc_r+0x92>
d00557da:	230c      	movs	r3, #12
d00557dc:	6033      	str	r3, [r6, #0]
d00557de:	4630      	mov	r0, r6
d00557e0:	f000 fa5e 	bl	d0055ca0 <__malloc_unlock>
d00557e4:	e7e3      	b.n	d00557ae <_malloc_r+0x1e>
d00557e6:	6823      	ldr	r3, [r4, #0]
d00557e8:	1b5b      	subs	r3, r3, r5
d00557ea:	d417      	bmi.n	d005581c <_malloc_r+0x8c>
d00557ec:	2b0b      	cmp	r3, #11
d00557ee:	d903      	bls.n	d00557f8 <_malloc_r+0x68>
d00557f0:	6023      	str	r3, [r4, #0]
d00557f2:	441c      	add	r4, r3
d00557f4:	6025      	str	r5, [r4, #0]
d00557f6:	e004      	b.n	d0055802 <_malloc_r+0x72>
d00557f8:	6863      	ldr	r3, [r4, #4]
d00557fa:	42a2      	cmp	r2, r4
d00557fc:	bf0c      	ite	eq
d00557fe:	600b      	streq	r3, [r1, #0]
d0055800:	6053      	strne	r3, [r2, #4]
d0055802:	4630      	mov	r0, r6
d0055804:	f000 fa4c 	bl	d0055ca0 <__malloc_unlock>
d0055808:	f104 000b 	add.w	r0, r4, #11
d005580c:	1d23      	adds	r3, r4, #4
d005580e:	f020 0007 	bic.w	r0, r0, #7
d0055812:	1ac2      	subs	r2, r0, r3
d0055814:	d0cc      	beq.n	d00557b0 <_malloc_r+0x20>
d0055816:	1a1b      	subs	r3, r3, r0
d0055818:	50a3      	str	r3, [r4, r2]
d005581a:	e7c9      	b.n	d00557b0 <_malloc_r+0x20>
d005581c:	4622      	mov	r2, r4
d005581e:	6864      	ldr	r4, [r4, #4]
d0055820:	e7cc      	b.n	d00557bc <_malloc_r+0x2c>
d0055822:	1cc4      	adds	r4, r0, #3
d0055824:	f024 0403 	bic.w	r4, r4, #3
d0055828:	42a0      	cmp	r0, r4
d005582a:	d0e3      	beq.n	d00557f4 <_malloc_r+0x64>
d005582c:	1a21      	subs	r1, r4, r0
d005582e:	4630      	mov	r0, r6
d0055830:	f7f5 fc56 	bl	d004b0e0 <_sbrk_r>
d0055834:	3001      	adds	r0, #1
d0055836:	d1dd      	bne.n	d00557f4 <_malloc_r+0x64>
d0055838:	e7cf      	b.n	d00557da <_malloc_r+0x4a>
d005583a:	bf00      	nop
d005583c:	d00f49a0 	.word	0xd00f49a0
d0055840:	d00f49a4 	.word	0xd00f49a4

d0055844 <rand>:
d0055844:	4b17      	ldr	r3, [pc, #92]	; (d00558a4 <rand+0x60>)
d0055846:	b510      	push	{r4, lr}
d0055848:	681c      	ldr	r4, [r3, #0]
d005584a:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d005584c:	b9b3      	cbnz	r3, d005587c <rand+0x38>
d005584e:	2018      	movs	r0, #24
d0055850:	f7ff ff1a 	bl	d0055688 <malloc>
d0055854:	63a0      	str	r0, [r4, #56]	; 0x38
d0055856:	b928      	cbnz	r0, d0055864 <rand+0x20>
d0055858:	4602      	mov	r2, r0
d005585a:	4b13      	ldr	r3, [pc, #76]	; (d00558a8 <rand+0x64>)
d005585c:	4813      	ldr	r0, [pc, #76]	; (d00558ac <rand+0x68>)
d005585e:	214e      	movs	r1, #78	; 0x4e
d0055860:	f000 f962 	bl	d0055b28 <__assert_func>
d0055864:	4a12      	ldr	r2, [pc, #72]	; (d00558b0 <rand+0x6c>)
d0055866:	4b13      	ldr	r3, [pc, #76]	; (d00558b4 <rand+0x70>)
d0055868:	e9c0 2300 	strd	r2, r3, [r0]
d005586c:	4b12      	ldr	r3, [pc, #72]	; (d00558b8 <rand+0x74>)
d005586e:	6083      	str	r3, [r0, #8]
d0055870:	230b      	movs	r3, #11
d0055872:	8183      	strh	r3, [r0, #12]
d0055874:	2201      	movs	r2, #1
d0055876:	2300      	movs	r3, #0
d0055878:	e9c0 2304 	strd	r2, r3, [r0, #16]
d005587c:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d005587e:	480f      	ldr	r0, [pc, #60]	; (d00558bc <rand+0x78>)
d0055880:	690a      	ldr	r2, [r1, #16]
d0055882:	694b      	ldr	r3, [r1, #20]
d0055884:	4c0e      	ldr	r4, [pc, #56]	; (d00558c0 <rand+0x7c>)
d0055886:	4350      	muls	r0, r2
d0055888:	fb04 0003 	mla	r0, r4, r3, r0
d005588c:	fba2 3404 	umull	r3, r4, r2, r4
d0055890:	1c5a      	adds	r2, r3, #1
d0055892:	4404      	add	r4, r0
d0055894:	f144 0000 	adc.w	r0, r4, #0
d0055898:	e9c1 2004 	strd	r2, r0, [r1, #16]
d005589c:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d00558a0:	bd10      	pop	{r4, pc}
d00558a2:	bf00      	nop
d00558a4:	d005a494 	.word	0xd005a494
d00558a8:	d0057b6c 	.word	0xd0057b6c
d00558ac:	d0057b83 	.word	0xd0057b83
d00558b0:	abcd330e 	.word	0xabcd330e
d00558b4:	e66d1234 	.word	0xe66d1234
d00558b8:	0005deec 	.word	0x0005deec
d00558bc:	5851f42d 	.word	0x5851f42d
d00558c0:	4c957f2d 	.word	0x4c957f2d

d00558c4 <setbuf>:
d00558c4:	2900      	cmp	r1, #0
d00558c6:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00558ca:	bf0c      	ite	eq
d00558cc:	2202      	moveq	r2, #2
d00558ce:	2200      	movne	r2, #0
d00558d0:	f000 b800 	b.w	d00558d4 <setvbuf>

d00558d4 <setvbuf>:
d00558d4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00558d8:	461d      	mov	r5, r3
d00558da:	4b5d      	ldr	r3, [pc, #372]	; (d0055a50 <setvbuf+0x17c>)
d00558dc:	681f      	ldr	r7, [r3, #0]
d00558de:	4604      	mov	r4, r0
d00558e0:	460e      	mov	r6, r1
d00558e2:	4690      	mov	r8, r2
d00558e4:	b127      	cbz	r7, d00558f0 <setvbuf+0x1c>
d00558e6:	69bb      	ldr	r3, [r7, #24]
d00558e8:	b913      	cbnz	r3, d00558f0 <setvbuf+0x1c>
d00558ea:	4638      	mov	r0, r7
d00558ec:	f7ff fe2a 	bl	d0055544 <__sinit>
d00558f0:	4b58      	ldr	r3, [pc, #352]	; (d0055a54 <setvbuf+0x180>)
d00558f2:	429c      	cmp	r4, r3
d00558f4:	d167      	bne.n	d00559c6 <setvbuf+0xf2>
d00558f6:	687c      	ldr	r4, [r7, #4]
d00558f8:	f1b8 0f02 	cmp.w	r8, #2
d00558fc:	d006      	beq.n	d005590c <setvbuf+0x38>
d00558fe:	f1b8 0f01 	cmp.w	r8, #1
d0055902:	f200 809f 	bhi.w	d0055a44 <setvbuf+0x170>
d0055906:	2d00      	cmp	r5, #0
d0055908:	f2c0 809c 	blt.w	d0055a44 <setvbuf+0x170>
d005590c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005590e:	07db      	lsls	r3, r3, #31
d0055910:	d405      	bmi.n	d005591e <setvbuf+0x4a>
d0055912:	89a3      	ldrh	r3, [r4, #12]
d0055914:	0598      	lsls	r0, r3, #22
d0055916:	d402      	bmi.n	d005591e <setvbuf+0x4a>
d0055918:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005591a:	f7ff feb2 	bl	d0055682 <__retarget_lock_acquire_recursive>
d005591e:	4621      	mov	r1, r4
d0055920:	4638      	mov	r0, r7
d0055922:	f7ff fd7b 	bl	d005541c <_fflush_r>
d0055926:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0055928:	b141      	cbz	r1, d005593c <setvbuf+0x68>
d005592a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005592e:	4299      	cmp	r1, r3
d0055930:	d002      	beq.n	d0055938 <setvbuf+0x64>
d0055932:	4638      	mov	r0, r7
d0055934:	f7ff fedc 	bl	d00556f0 <_free_r>
d0055938:	2300      	movs	r3, #0
d005593a:	6363      	str	r3, [r4, #52]	; 0x34
d005593c:	2300      	movs	r3, #0
d005593e:	61a3      	str	r3, [r4, #24]
d0055940:	6063      	str	r3, [r4, #4]
d0055942:	89a3      	ldrh	r3, [r4, #12]
d0055944:	0619      	lsls	r1, r3, #24
d0055946:	d503      	bpl.n	d0055950 <setvbuf+0x7c>
d0055948:	6921      	ldr	r1, [r4, #16]
d005594a:	4638      	mov	r0, r7
d005594c:	f7ff fed0 	bl	d00556f0 <_free_r>
d0055950:	89a3      	ldrh	r3, [r4, #12]
d0055952:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0055956:	f023 0303 	bic.w	r3, r3, #3
d005595a:	f1b8 0f02 	cmp.w	r8, #2
d005595e:	81a3      	strh	r3, [r4, #12]
d0055960:	d06c      	beq.n	d0055a3c <setvbuf+0x168>
d0055962:	ab01      	add	r3, sp, #4
d0055964:	466a      	mov	r2, sp
d0055966:	4621      	mov	r1, r4
d0055968:	4638      	mov	r0, r7
d005596a:	f000 f92f 	bl	d0055bcc <__swhatbuf_r>
d005596e:	89a3      	ldrh	r3, [r4, #12]
d0055970:	4318      	orrs	r0, r3
d0055972:	81a0      	strh	r0, [r4, #12]
d0055974:	2d00      	cmp	r5, #0
d0055976:	d130      	bne.n	d00559da <setvbuf+0x106>
d0055978:	9d00      	ldr	r5, [sp, #0]
d005597a:	4628      	mov	r0, r5
d005597c:	f7ff fe84 	bl	d0055688 <malloc>
d0055980:	4606      	mov	r6, r0
d0055982:	2800      	cmp	r0, #0
d0055984:	d155      	bne.n	d0055a32 <setvbuf+0x15e>
d0055986:	f8dd 9000 	ldr.w	r9, [sp]
d005598a:	45a9      	cmp	r9, r5
d005598c:	d14a      	bne.n	d0055a24 <setvbuf+0x150>
d005598e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0055992:	2200      	movs	r2, #0
d0055994:	60a2      	str	r2, [r4, #8]
d0055996:	f104 0247 	add.w	r2, r4, #71	; 0x47
d005599a:	6022      	str	r2, [r4, #0]
d005599c:	6122      	str	r2, [r4, #16]
d005599e:	2201      	movs	r2, #1
d00559a0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00559a4:	6162      	str	r2, [r4, #20]
d00559a6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00559a8:	f043 0302 	orr.w	r3, r3, #2
d00559ac:	07d2      	lsls	r2, r2, #31
d00559ae:	81a3      	strh	r3, [r4, #12]
d00559b0:	d405      	bmi.n	d00559be <setvbuf+0xea>
d00559b2:	f413 7f00 	tst.w	r3, #512	; 0x200
d00559b6:	d102      	bne.n	d00559be <setvbuf+0xea>
d00559b8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00559ba:	f7ff fe63 	bl	d0055684 <__retarget_lock_release_recursive>
d00559be:	4628      	mov	r0, r5
d00559c0:	b003      	add	sp, #12
d00559c2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00559c6:	4b24      	ldr	r3, [pc, #144]	; (d0055a58 <setvbuf+0x184>)
d00559c8:	429c      	cmp	r4, r3
d00559ca:	d101      	bne.n	d00559d0 <setvbuf+0xfc>
d00559cc:	68bc      	ldr	r4, [r7, #8]
d00559ce:	e793      	b.n	d00558f8 <setvbuf+0x24>
d00559d0:	4b22      	ldr	r3, [pc, #136]	; (d0055a5c <setvbuf+0x188>)
d00559d2:	429c      	cmp	r4, r3
d00559d4:	bf08      	it	eq
d00559d6:	68fc      	ldreq	r4, [r7, #12]
d00559d8:	e78e      	b.n	d00558f8 <setvbuf+0x24>
d00559da:	2e00      	cmp	r6, #0
d00559dc:	d0cd      	beq.n	d005597a <setvbuf+0xa6>
d00559de:	69bb      	ldr	r3, [r7, #24]
d00559e0:	b913      	cbnz	r3, d00559e8 <setvbuf+0x114>
d00559e2:	4638      	mov	r0, r7
d00559e4:	f7ff fdae 	bl	d0055544 <__sinit>
d00559e8:	f1b8 0f01 	cmp.w	r8, #1
d00559ec:	bf08      	it	eq
d00559ee:	89a3      	ldrheq	r3, [r4, #12]
d00559f0:	6026      	str	r6, [r4, #0]
d00559f2:	bf04      	itt	eq
d00559f4:	f043 0301 	orreq.w	r3, r3, #1
d00559f8:	81a3      	strheq	r3, [r4, #12]
d00559fa:	89a2      	ldrh	r2, [r4, #12]
d00559fc:	f012 0308 	ands.w	r3, r2, #8
d0055a00:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0055a04:	d01c      	beq.n	d0055a40 <setvbuf+0x16c>
d0055a06:	07d3      	lsls	r3, r2, #31
d0055a08:	bf41      	itttt	mi
d0055a0a:	2300      	movmi	r3, #0
d0055a0c:	426d      	negmi	r5, r5
d0055a0e:	60a3      	strmi	r3, [r4, #8]
d0055a10:	61a5      	strmi	r5, [r4, #24]
d0055a12:	bf58      	it	pl
d0055a14:	60a5      	strpl	r5, [r4, #8]
d0055a16:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0055a18:	f015 0501 	ands.w	r5, r5, #1
d0055a1c:	d115      	bne.n	d0055a4a <setvbuf+0x176>
d0055a1e:	f412 7f00 	tst.w	r2, #512	; 0x200
d0055a22:	e7c8      	b.n	d00559b6 <setvbuf+0xe2>
d0055a24:	4648      	mov	r0, r9
d0055a26:	f7ff fe2f 	bl	d0055688 <malloc>
d0055a2a:	4606      	mov	r6, r0
d0055a2c:	2800      	cmp	r0, #0
d0055a2e:	d0ae      	beq.n	d005598e <setvbuf+0xba>
d0055a30:	464d      	mov	r5, r9
d0055a32:	89a3      	ldrh	r3, [r4, #12]
d0055a34:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055a38:	81a3      	strh	r3, [r4, #12]
d0055a3a:	e7d0      	b.n	d00559de <setvbuf+0x10a>
d0055a3c:	2500      	movs	r5, #0
d0055a3e:	e7a8      	b.n	d0055992 <setvbuf+0xbe>
d0055a40:	60a3      	str	r3, [r4, #8]
d0055a42:	e7e8      	b.n	d0055a16 <setvbuf+0x142>
d0055a44:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0055a48:	e7b9      	b.n	d00559be <setvbuf+0xea>
d0055a4a:	2500      	movs	r5, #0
d0055a4c:	e7b7      	b.n	d00559be <setvbuf+0xea>
d0055a4e:	bf00      	nop
d0055a50:	d005a494 	.word	0xd005a494
d0055a54:	d0057b28 	.word	0xd0057b28
d0055a58:	d0057b48 	.word	0xd0057b48
d0055a5c:	d0057b08 	.word	0xd0057b08

d0055a60 <siprintf>:
d0055a60:	b40e      	push	{r1, r2, r3}
d0055a62:	b500      	push	{lr}
d0055a64:	b09c      	sub	sp, #112	; 0x70
d0055a66:	ab1d      	add	r3, sp, #116	; 0x74
d0055a68:	9002      	str	r0, [sp, #8]
d0055a6a:	9006      	str	r0, [sp, #24]
d0055a6c:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0055a70:	4809      	ldr	r0, [pc, #36]	; (d0055a98 <siprintf+0x38>)
d0055a72:	9107      	str	r1, [sp, #28]
d0055a74:	9104      	str	r1, [sp, #16]
d0055a76:	4909      	ldr	r1, [pc, #36]	; (d0055a9c <siprintf+0x3c>)
d0055a78:	f853 2b04 	ldr.w	r2, [r3], #4
d0055a7c:	9105      	str	r1, [sp, #20]
d0055a7e:	6800      	ldr	r0, [r0, #0]
d0055a80:	9301      	str	r3, [sp, #4]
d0055a82:	a902      	add	r1, sp, #8
d0055a84:	f000 f994 	bl	d0055db0 <_svfiprintf_r>
d0055a88:	9b02      	ldr	r3, [sp, #8]
d0055a8a:	2200      	movs	r2, #0
d0055a8c:	701a      	strb	r2, [r3, #0]
d0055a8e:	b01c      	add	sp, #112	; 0x70
d0055a90:	f85d eb04 	ldr.w	lr, [sp], #4
d0055a94:	b003      	add	sp, #12
d0055a96:	4770      	bx	lr
d0055a98:	d005a494 	.word	0xd005a494
d0055a9c:	ffff0208 	.word	0xffff0208

d0055aa0 <__sread>:
d0055aa0:	b510      	push	{r4, lr}
d0055aa2:	460c      	mov	r4, r1
d0055aa4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055aa8:	f000 fd70 	bl	d005658c <_read_r>
d0055aac:	2800      	cmp	r0, #0
d0055aae:	bfab      	itete	ge
d0055ab0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0055ab2:	89a3      	ldrhlt	r3, [r4, #12]
d0055ab4:	181b      	addge	r3, r3, r0
d0055ab6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0055aba:	bfac      	ite	ge
d0055abc:	6563      	strge	r3, [r4, #84]	; 0x54
d0055abe:	81a3      	strhlt	r3, [r4, #12]
d0055ac0:	bd10      	pop	{r4, pc}

d0055ac2 <__swrite>:
d0055ac2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0055ac6:	461f      	mov	r7, r3
d0055ac8:	898b      	ldrh	r3, [r1, #12]
d0055aca:	05db      	lsls	r3, r3, #23
d0055acc:	4605      	mov	r5, r0
d0055ace:	460c      	mov	r4, r1
d0055ad0:	4616      	mov	r6, r2
d0055ad2:	d505      	bpl.n	d0055ae0 <__swrite+0x1e>
d0055ad4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055ad8:	2302      	movs	r3, #2
d0055ada:	2200      	movs	r2, #0
d0055adc:	f000 f864 	bl	d0055ba8 <_lseek_r>
d0055ae0:	89a3      	ldrh	r3, [r4, #12]
d0055ae2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0055ae6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0055aea:	81a3      	strh	r3, [r4, #12]
d0055aec:	4632      	mov	r2, r6
d0055aee:	463b      	mov	r3, r7
d0055af0:	4628      	mov	r0, r5
d0055af2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0055af6:	f7f5 baad 	b.w	d004b054 <_write_r>

d0055afa <__sseek>:
d0055afa:	b510      	push	{r4, lr}
d0055afc:	460c      	mov	r4, r1
d0055afe:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055b02:	f000 f851 	bl	d0055ba8 <_lseek_r>
d0055b06:	1c43      	adds	r3, r0, #1
d0055b08:	89a3      	ldrh	r3, [r4, #12]
d0055b0a:	bf15      	itete	ne
d0055b0c:	6560      	strne	r0, [r4, #84]	; 0x54
d0055b0e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0055b12:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0055b16:	81a3      	strheq	r3, [r4, #12]
d0055b18:	bf18      	it	ne
d0055b1a:	81a3      	strhne	r3, [r4, #12]
d0055b1c:	bd10      	pop	{r4, pc}

d0055b1e <__sclose>:
d0055b1e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055b22:	f000 b81f 	b.w	d0055b64 <_close_r>
	...

d0055b28 <__assert_func>:
d0055b28:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d0055b2a:	4614      	mov	r4, r2
d0055b2c:	461a      	mov	r2, r3
d0055b2e:	4b09      	ldr	r3, [pc, #36]	; (d0055b54 <__assert_func+0x2c>)
d0055b30:	681b      	ldr	r3, [r3, #0]
d0055b32:	4605      	mov	r5, r0
d0055b34:	68d8      	ldr	r0, [r3, #12]
d0055b36:	b14c      	cbz	r4, d0055b4c <__assert_func+0x24>
d0055b38:	4b07      	ldr	r3, [pc, #28]	; (d0055b58 <__assert_func+0x30>)
d0055b3a:	9100      	str	r1, [sp, #0]
d0055b3c:	e9cd 3401 	strd	r3, r4, [sp, #4]
d0055b40:	4906      	ldr	r1, [pc, #24]	; (d0055b5c <__assert_func+0x34>)
d0055b42:	462b      	mov	r3, r5
d0055b44:	f000 f81e 	bl	d0055b84 <fiprintf>
d0055b48:	f000 fdf2 	bl	d0056730 <abort>
d0055b4c:	4b04      	ldr	r3, [pc, #16]	; (d0055b60 <__assert_func+0x38>)
d0055b4e:	461c      	mov	r4, r3
d0055b50:	e7f3      	b.n	d0055b3a <__assert_func+0x12>
d0055b52:	bf00      	nop
d0055b54:	d005a494 	.word	0xd005a494
d0055b58:	d0057be2 	.word	0xd0057be2
d0055b5c:	d0057bef 	.word	0xd0057bef
d0055b60:	d0057c1d 	.word	0xd0057c1d

d0055b64 <_close_r>:
d0055b64:	b538      	push	{r3, r4, r5, lr}
d0055b66:	4d06      	ldr	r5, [pc, #24]	; (d0055b80 <_close_r+0x1c>)
d0055b68:	2300      	movs	r3, #0
d0055b6a:	4604      	mov	r4, r0
d0055b6c:	4608      	mov	r0, r1
d0055b6e:	602b      	str	r3, [r5, #0]
d0055b70:	f7f5 faaa 	bl	d004b0c8 <_close>
d0055b74:	1c43      	adds	r3, r0, #1
d0055b76:	d102      	bne.n	d0055b7e <_close_r+0x1a>
d0055b78:	682b      	ldr	r3, [r5, #0]
d0055b7a:	b103      	cbz	r3, d0055b7e <_close_r+0x1a>
d0055b7c:	6023      	str	r3, [r4, #0]
d0055b7e:	bd38      	pop	{r3, r4, r5, pc}
d0055b80:	d00fcc40 	.word	0xd00fcc40

d0055b84 <fiprintf>:
d0055b84:	b40e      	push	{r1, r2, r3}
d0055b86:	b503      	push	{r0, r1, lr}
d0055b88:	4601      	mov	r1, r0
d0055b8a:	ab03      	add	r3, sp, #12
d0055b8c:	4805      	ldr	r0, [pc, #20]	; (d0055ba4 <fiprintf+0x20>)
d0055b8e:	f853 2b04 	ldr.w	r2, [r3], #4
d0055b92:	6800      	ldr	r0, [r0, #0]
d0055b94:	9301      	str	r3, [sp, #4]
d0055b96:	f000 fa35 	bl	d0056004 <_vfiprintf_r>
d0055b9a:	b002      	add	sp, #8
d0055b9c:	f85d eb04 	ldr.w	lr, [sp], #4
d0055ba0:	b003      	add	sp, #12
d0055ba2:	4770      	bx	lr
d0055ba4:	d005a494 	.word	0xd005a494

d0055ba8 <_lseek_r>:
d0055ba8:	b538      	push	{r3, r4, r5, lr}
d0055baa:	4d07      	ldr	r5, [pc, #28]	; (d0055bc8 <_lseek_r+0x20>)
d0055bac:	4604      	mov	r4, r0
d0055bae:	4608      	mov	r0, r1
d0055bb0:	4611      	mov	r1, r2
d0055bb2:	2200      	movs	r2, #0
d0055bb4:	602a      	str	r2, [r5, #0]
d0055bb6:	461a      	mov	r2, r3
d0055bb8:	f7f5 fa90 	bl	d004b0dc <_lseek>
d0055bbc:	1c43      	adds	r3, r0, #1
d0055bbe:	d102      	bne.n	d0055bc6 <_lseek_r+0x1e>
d0055bc0:	682b      	ldr	r3, [r5, #0]
d0055bc2:	b103      	cbz	r3, d0055bc6 <_lseek_r+0x1e>
d0055bc4:	6023      	str	r3, [r4, #0]
d0055bc6:	bd38      	pop	{r3, r4, r5, pc}
d0055bc8:	d00fcc40 	.word	0xd00fcc40

d0055bcc <__swhatbuf_r>:
d0055bcc:	b570      	push	{r4, r5, r6, lr}
d0055bce:	460e      	mov	r6, r1
d0055bd0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055bd4:	2900      	cmp	r1, #0
d0055bd6:	b096      	sub	sp, #88	; 0x58
d0055bd8:	4614      	mov	r4, r2
d0055bda:	461d      	mov	r5, r3
d0055bdc:	da07      	bge.n	d0055bee <__swhatbuf_r+0x22>
d0055bde:	2300      	movs	r3, #0
d0055be0:	602b      	str	r3, [r5, #0]
d0055be2:	89b3      	ldrh	r3, [r6, #12]
d0055be4:	061a      	lsls	r2, r3, #24
d0055be6:	d410      	bmi.n	d0055c0a <__swhatbuf_r+0x3e>
d0055be8:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0055bec:	e00e      	b.n	d0055c0c <__swhatbuf_r+0x40>
d0055bee:	466a      	mov	r2, sp
d0055bf0:	f000 fda6 	bl	d0056740 <_fstat_r>
d0055bf4:	2800      	cmp	r0, #0
d0055bf6:	dbf2      	blt.n	d0055bde <__swhatbuf_r+0x12>
d0055bf8:	9a01      	ldr	r2, [sp, #4]
d0055bfa:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0055bfe:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0055c02:	425a      	negs	r2, r3
d0055c04:	415a      	adcs	r2, r3
d0055c06:	602a      	str	r2, [r5, #0]
d0055c08:	e7ee      	b.n	d0055be8 <__swhatbuf_r+0x1c>
d0055c0a:	2340      	movs	r3, #64	; 0x40
d0055c0c:	2000      	movs	r0, #0
d0055c0e:	6023      	str	r3, [r4, #0]
d0055c10:	b016      	add	sp, #88	; 0x58
d0055c12:	bd70      	pop	{r4, r5, r6, pc}

d0055c14 <__smakebuf_r>:
d0055c14:	898b      	ldrh	r3, [r1, #12]
d0055c16:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0055c18:	079d      	lsls	r5, r3, #30
d0055c1a:	4606      	mov	r6, r0
d0055c1c:	460c      	mov	r4, r1
d0055c1e:	d507      	bpl.n	d0055c30 <__smakebuf_r+0x1c>
d0055c20:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0055c24:	6023      	str	r3, [r4, #0]
d0055c26:	6123      	str	r3, [r4, #16]
d0055c28:	2301      	movs	r3, #1
d0055c2a:	6163      	str	r3, [r4, #20]
d0055c2c:	b002      	add	sp, #8
d0055c2e:	bd70      	pop	{r4, r5, r6, pc}
d0055c30:	ab01      	add	r3, sp, #4
d0055c32:	466a      	mov	r2, sp
d0055c34:	f7ff ffca 	bl	d0055bcc <__swhatbuf_r>
d0055c38:	9900      	ldr	r1, [sp, #0]
d0055c3a:	4605      	mov	r5, r0
d0055c3c:	4630      	mov	r0, r6
d0055c3e:	f7ff fda7 	bl	d0055790 <_malloc_r>
d0055c42:	b948      	cbnz	r0, d0055c58 <__smakebuf_r+0x44>
d0055c44:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055c48:	059a      	lsls	r2, r3, #22
d0055c4a:	d4ef      	bmi.n	d0055c2c <__smakebuf_r+0x18>
d0055c4c:	f023 0303 	bic.w	r3, r3, #3
d0055c50:	f043 0302 	orr.w	r3, r3, #2
d0055c54:	81a3      	strh	r3, [r4, #12]
d0055c56:	e7e3      	b.n	d0055c20 <__smakebuf_r+0xc>
d0055c58:	4b0d      	ldr	r3, [pc, #52]	; (d0055c90 <__smakebuf_r+0x7c>)
d0055c5a:	62b3      	str	r3, [r6, #40]	; 0x28
d0055c5c:	89a3      	ldrh	r3, [r4, #12]
d0055c5e:	6020      	str	r0, [r4, #0]
d0055c60:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055c64:	81a3      	strh	r3, [r4, #12]
d0055c66:	9b00      	ldr	r3, [sp, #0]
d0055c68:	6163      	str	r3, [r4, #20]
d0055c6a:	9b01      	ldr	r3, [sp, #4]
d0055c6c:	6120      	str	r0, [r4, #16]
d0055c6e:	b15b      	cbz	r3, d0055c88 <__smakebuf_r+0x74>
d0055c70:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0055c74:	4630      	mov	r0, r6
d0055c76:	f000 fd75 	bl	d0056764 <_isatty_r>
d0055c7a:	b128      	cbz	r0, d0055c88 <__smakebuf_r+0x74>
d0055c7c:	89a3      	ldrh	r3, [r4, #12]
d0055c7e:	f023 0303 	bic.w	r3, r3, #3
d0055c82:	f043 0301 	orr.w	r3, r3, #1
d0055c86:	81a3      	strh	r3, [r4, #12]
d0055c88:	89a0      	ldrh	r0, [r4, #12]
d0055c8a:	4305      	orrs	r5, r0
d0055c8c:	81a5      	strh	r5, [r4, #12]
d0055c8e:	e7cd      	b.n	d0055c2c <__smakebuf_r+0x18>
d0055c90:	d00554dd 	.word	0xd00554dd

d0055c94 <__malloc_lock>:
d0055c94:	4801      	ldr	r0, [pc, #4]	; (d0055c9c <__malloc_lock+0x8>)
d0055c96:	f7ff bcf4 	b.w	d0055682 <__retarget_lock_acquire_recursive>
d0055c9a:	bf00      	nop
d0055c9c:	d00fcc38 	.word	0xd00fcc38

d0055ca0 <__malloc_unlock>:
d0055ca0:	4801      	ldr	r0, [pc, #4]	; (d0055ca8 <__malloc_unlock+0x8>)
d0055ca2:	f7ff bcef 	b.w	d0055684 <__retarget_lock_release_recursive>
d0055ca6:	bf00      	nop
d0055ca8:	d00fcc38 	.word	0xd00fcc38

d0055cac <_realloc_r>:
d0055cac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055cae:	4607      	mov	r7, r0
d0055cb0:	4614      	mov	r4, r2
d0055cb2:	460e      	mov	r6, r1
d0055cb4:	b921      	cbnz	r1, d0055cc0 <_realloc_r+0x14>
d0055cb6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0055cba:	4611      	mov	r1, r2
d0055cbc:	f7ff bd68 	b.w	d0055790 <_malloc_r>
d0055cc0:	b922      	cbnz	r2, d0055ccc <_realloc_r+0x20>
d0055cc2:	f7ff fd15 	bl	d00556f0 <_free_r>
d0055cc6:	4625      	mov	r5, r4
d0055cc8:	4628      	mov	r0, r5
d0055cca:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0055ccc:	f000 fdca 	bl	d0056864 <_malloc_usable_size_r>
d0055cd0:	42a0      	cmp	r0, r4
d0055cd2:	d20f      	bcs.n	d0055cf4 <_realloc_r+0x48>
d0055cd4:	4621      	mov	r1, r4
d0055cd6:	4638      	mov	r0, r7
d0055cd8:	f7ff fd5a 	bl	d0055790 <_malloc_r>
d0055cdc:	4605      	mov	r5, r0
d0055cde:	2800      	cmp	r0, #0
d0055ce0:	d0f2      	beq.n	d0055cc8 <_realloc_r+0x1c>
d0055ce2:	4631      	mov	r1, r6
d0055ce4:	4622      	mov	r2, r4
d0055ce6:	f7ff fced 	bl	d00556c4 <memcpy>
d0055cea:	4631      	mov	r1, r6
d0055cec:	4638      	mov	r0, r7
d0055cee:	f7ff fcff 	bl	d00556f0 <_free_r>
d0055cf2:	e7e9      	b.n	d0055cc8 <_realloc_r+0x1c>
d0055cf4:	4635      	mov	r5, r6
d0055cf6:	e7e7      	b.n	d0055cc8 <_realloc_r+0x1c>

d0055cf8 <__ssputs_r>:
d0055cf8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0055cfc:	688e      	ldr	r6, [r1, #8]
d0055cfe:	429e      	cmp	r6, r3
d0055d00:	4682      	mov	sl, r0
d0055d02:	460c      	mov	r4, r1
d0055d04:	4690      	mov	r8, r2
d0055d06:	461f      	mov	r7, r3
d0055d08:	d838      	bhi.n	d0055d7c <__ssputs_r+0x84>
d0055d0a:	898a      	ldrh	r2, [r1, #12]
d0055d0c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0055d10:	d032      	beq.n	d0055d78 <__ssputs_r+0x80>
d0055d12:	6825      	ldr	r5, [r4, #0]
d0055d14:	6909      	ldr	r1, [r1, #16]
d0055d16:	eba5 0901 	sub.w	r9, r5, r1
d0055d1a:	6965      	ldr	r5, [r4, #20]
d0055d1c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0055d20:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0055d24:	3301      	adds	r3, #1
d0055d26:	444b      	add	r3, r9
d0055d28:	106d      	asrs	r5, r5, #1
d0055d2a:	429d      	cmp	r5, r3
d0055d2c:	bf38      	it	cc
d0055d2e:	461d      	movcc	r5, r3
d0055d30:	0553      	lsls	r3, r2, #21
d0055d32:	d531      	bpl.n	d0055d98 <__ssputs_r+0xa0>
d0055d34:	4629      	mov	r1, r5
d0055d36:	f7ff fd2b 	bl	d0055790 <_malloc_r>
d0055d3a:	4606      	mov	r6, r0
d0055d3c:	b950      	cbnz	r0, d0055d54 <__ssputs_r+0x5c>
d0055d3e:	230c      	movs	r3, #12
d0055d40:	f8ca 3000 	str.w	r3, [sl]
d0055d44:	89a3      	ldrh	r3, [r4, #12]
d0055d46:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055d4a:	81a3      	strh	r3, [r4, #12]
d0055d4c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055d50:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0055d54:	6921      	ldr	r1, [r4, #16]
d0055d56:	464a      	mov	r2, r9
d0055d58:	f7ff fcb4 	bl	d00556c4 <memcpy>
d0055d5c:	89a3      	ldrh	r3, [r4, #12]
d0055d5e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0055d62:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055d66:	81a3      	strh	r3, [r4, #12]
d0055d68:	6126      	str	r6, [r4, #16]
d0055d6a:	6165      	str	r5, [r4, #20]
d0055d6c:	444e      	add	r6, r9
d0055d6e:	eba5 0509 	sub.w	r5, r5, r9
d0055d72:	6026      	str	r6, [r4, #0]
d0055d74:	60a5      	str	r5, [r4, #8]
d0055d76:	463e      	mov	r6, r7
d0055d78:	42be      	cmp	r6, r7
d0055d7a:	d900      	bls.n	d0055d7e <__ssputs_r+0x86>
d0055d7c:	463e      	mov	r6, r7
d0055d7e:	4632      	mov	r2, r6
d0055d80:	6820      	ldr	r0, [r4, #0]
d0055d82:	4641      	mov	r1, r8
d0055d84:	f000 fd54 	bl	d0056830 <memmove>
d0055d88:	68a3      	ldr	r3, [r4, #8]
d0055d8a:	6822      	ldr	r2, [r4, #0]
d0055d8c:	1b9b      	subs	r3, r3, r6
d0055d8e:	4432      	add	r2, r6
d0055d90:	60a3      	str	r3, [r4, #8]
d0055d92:	6022      	str	r2, [r4, #0]
d0055d94:	2000      	movs	r0, #0
d0055d96:	e7db      	b.n	d0055d50 <__ssputs_r+0x58>
d0055d98:	462a      	mov	r2, r5
d0055d9a:	f7ff ff87 	bl	d0055cac <_realloc_r>
d0055d9e:	4606      	mov	r6, r0
d0055da0:	2800      	cmp	r0, #0
d0055da2:	d1e1      	bne.n	d0055d68 <__ssputs_r+0x70>
d0055da4:	6921      	ldr	r1, [r4, #16]
d0055da6:	4650      	mov	r0, sl
d0055da8:	f7ff fca2 	bl	d00556f0 <_free_r>
d0055dac:	e7c7      	b.n	d0055d3e <__ssputs_r+0x46>
	...

d0055db0 <_svfiprintf_r>:
d0055db0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055db4:	4698      	mov	r8, r3
d0055db6:	898b      	ldrh	r3, [r1, #12]
d0055db8:	061b      	lsls	r3, r3, #24
d0055dba:	b09d      	sub	sp, #116	; 0x74
d0055dbc:	4607      	mov	r7, r0
d0055dbe:	460d      	mov	r5, r1
d0055dc0:	4614      	mov	r4, r2
d0055dc2:	d50e      	bpl.n	d0055de2 <_svfiprintf_r+0x32>
d0055dc4:	690b      	ldr	r3, [r1, #16]
d0055dc6:	b963      	cbnz	r3, d0055de2 <_svfiprintf_r+0x32>
d0055dc8:	2140      	movs	r1, #64	; 0x40
d0055dca:	f7ff fce1 	bl	d0055790 <_malloc_r>
d0055dce:	6028      	str	r0, [r5, #0]
d0055dd0:	6128      	str	r0, [r5, #16]
d0055dd2:	b920      	cbnz	r0, d0055dde <_svfiprintf_r+0x2e>
d0055dd4:	230c      	movs	r3, #12
d0055dd6:	603b      	str	r3, [r7, #0]
d0055dd8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055ddc:	e0d1      	b.n	d0055f82 <_svfiprintf_r+0x1d2>
d0055dde:	2340      	movs	r3, #64	; 0x40
d0055de0:	616b      	str	r3, [r5, #20]
d0055de2:	2300      	movs	r3, #0
d0055de4:	9309      	str	r3, [sp, #36]	; 0x24
d0055de6:	2320      	movs	r3, #32
d0055de8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0055dec:	f8cd 800c 	str.w	r8, [sp, #12]
d0055df0:	2330      	movs	r3, #48	; 0x30
d0055df2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0055f9c <_svfiprintf_r+0x1ec>
d0055df6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0055dfa:	f04f 0901 	mov.w	r9, #1
d0055dfe:	4623      	mov	r3, r4
d0055e00:	469a      	mov	sl, r3
d0055e02:	f813 2b01 	ldrb.w	r2, [r3], #1
d0055e06:	b10a      	cbz	r2, d0055e0c <_svfiprintf_r+0x5c>
d0055e08:	2a25      	cmp	r2, #37	; 0x25
d0055e0a:	d1f9      	bne.n	d0055e00 <_svfiprintf_r+0x50>
d0055e0c:	ebba 0b04 	subs.w	fp, sl, r4
d0055e10:	d00b      	beq.n	d0055e2a <_svfiprintf_r+0x7a>
d0055e12:	465b      	mov	r3, fp
d0055e14:	4622      	mov	r2, r4
d0055e16:	4629      	mov	r1, r5
d0055e18:	4638      	mov	r0, r7
d0055e1a:	f7ff ff6d 	bl	d0055cf8 <__ssputs_r>
d0055e1e:	3001      	adds	r0, #1
d0055e20:	f000 80aa 	beq.w	d0055f78 <_svfiprintf_r+0x1c8>
d0055e24:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0055e26:	445a      	add	r2, fp
d0055e28:	9209      	str	r2, [sp, #36]	; 0x24
d0055e2a:	f89a 3000 	ldrb.w	r3, [sl]
d0055e2e:	2b00      	cmp	r3, #0
d0055e30:	f000 80a2 	beq.w	d0055f78 <_svfiprintf_r+0x1c8>
d0055e34:	2300      	movs	r3, #0
d0055e36:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0055e3a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0055e3e:	f10a 0a01 	add.w	sl, sl, #1
d0055e42:	9304      	str	r3, [sp, #16]
d0055e44:	9307      	str	r3, [sp, #28]
d0055e46:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0055e4a:	931a      	str	r3, [sp, #104]	; 0x68
d0055e4c:	4654      	mov	r4, sl
d0055e4e:	2205      	movs	r2, #5
d0055e50:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055e54:	4851      	ldr	r0, [pc, #324]	; (d0055f9c <_svfiprintf_r+0x1ec>)
d0055e56:	f000 fc9b 	bl	d0056790 <memchr>
d0055e5a:	9a04      	ldr	r2, [sp, #16]
d0055e5c:	b9d8      	cbnz	r0, d0055e96 <_svfiprintf_r+0xe6>
d0055e5e:	06d0      	lsls	r0, r2, #27
d0055e60:	bf44      	itt	mi
d0055e62:	2320      	movmi	r3, #32
d0055e64:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055e68:	0711      	lsls	r1, r2, #28
d0055e6a:	bf44      	itt	mi
d0055e6c:	232b      	movmi	r3, #43	; 0x2b
d0055e6e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055e72:	f89a 3000 	ldrb.w	r3, [sl]
d0055e76:	2b2a      	cmp	r3, #42	; 0x2a
d0055e78:	d015      	beq.n	d0055ea6 <_svfiprintf_r+0xf6>
d0055e7a:	9a07      	ldr	r2, [sp, #28]
d0055e7c:	4654      	mov	r4, sl
d0055e7e:	2000      	movs	r0, #0
d0055e80:	f04f 0c0a 	mov.w	ip, #10
d0055e84:	4621      	mov	r1, r4
d0055e86:	f811 3b01 	ldrb.w	r3, [r1], #1
d0055e8a:	3b30      	subs	r3, #48	; 0x30
d0055e8c:	2b09      	cmp	r3, #9
d0055e8e:	d94e      	bls.n	d0055f2e <_svfiprintf_r+0x17e>
d0055e90:	b1b0      	cbz	r0, d0055ec0 <_svfiprintf_r+0x110>
d0055e92:	9207      	str	r2, [sp, #28]
d0055e94:	e014      	b.n	d0055ec0 <_svfiprintf_r+0x110>
d0055e96:	eba0 0308 	sub.w	r3, r0, r8
d0055e9a:	fa09 f303 	lsl.w	r3, r9, r3
d0055e9e:	4313      	orrs	r3, r2
d0055ea0:	9304      	str	r3, [sp, #16]
d0055ea2:	46a2      	mov	sl, r4
d0055ea4:	e7d2      	b.n	d0055e4c <_svfiprintf_r+0x9c>
d0055ea6:	9b03      	ldr	r3, [sp, #12]
d0055ea8:	1d19      	adds	r1, r3, #4
d0055eaa:	681b      	ldr	r3, [r3, #0]
d0055eac:	9103      	str	r1, [sp, #12]
d0055eae:	2b00      	cmp	r3, #0
d0055eb0:	bfbb      	ittet	lt
d0055eb2:	425b      	neglt	r3, r3
d0055eb4:	f042 0202 	orrlt.w	r2, r2, #2
d0055eb8:	9307      	strge	r3, [sp, #28]
d0055eba:	9307      	strlt	r3, [sp, #28]
d0055ebc:	bfb8      	it	lt
d0055ebe:	9204      	strlt	r2, [sp, #16]
d0055ec0:	7823      	ldrb	r3, [r4, #0]
d0055ec2:	2b2e      	cmp	r3, #46	; 0x2e
d0055ec4:	d10c      	bne.n	d0055ee0 <_svfiprintf_r+0x130>
d0055ec6:	7863      	ldrb	r3, [r4, #1]
d0055ec8:	2b2a      	cmp	r3, #42	; 0x2a
d0055eca:	d135      	bne.n	d0055f38 <_svfiprintf_r+0x188>
d0055ecc:	9b03      	ldr	r3, [sp, #12]
d0055ece:	1d1a      	adds	r2, r3, #4
d0055ed0:	681b      	ldr	r3, [r3, #0]
d0055ed2:	9203      	str	r2, [sp, #12]
d0055ed4:	2b00      	cmp	r3, #0
d0055ed6:	bfb8      	it	lt
d0055ed8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0055edc:	3402      	adds	r4, #2
d0055ede:	9305      	str	r3, [sp, #20]
d0055ee0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0055fac <_svfiprintf_r+0x1fc>
d0055ee4:	7821      	ldrb	r1, [r4, #0]
d0055ee6:	2203      	movs	r2, #3
d0055ee8:	4650      	mov	r0, sl
d0055eea:	f000 fc51 	bl	d0056790 <memchr>
d0055eee:	b140      	cbz	r0, d0055f02 <_svfiprintf_r+0x152>
d0055ef0:	2340      	movs	r3, #64	; 0x40
d0055ef2:	eba0 000a 	sub.w	r0, r0, sl
d0055ef6:	fa03 f000 	lsl.w	r0, r3, r0
d0055efa:	9b04      	ldr	r3, [sp, #16]
d0055efc:	4303      	orrs	r3, r0
d0055efe:	3401      	adds	r4, #1
d0055f00:	9304      	str	r3, [sp, #16]
d0055f02:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055f06:	4826      	ldr	r0, [pc, #152]	; (d0055fa0 <_svfiprintf_r+0x1f0>)
d0055f08:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0055f0c:	2206      	movs	r2, #6
d0055f0e:	f000 fc3f 	bl	d0056790 <memchr>
d0055f12:	2800      	cmp	r0, #0
d0055f14:	d038      	beq.n	d0055f88 <_svfiprintf_r+0x1d8>
d0055f16:	4b23      	ldr	r3, [pc, #140]	; (d0055fa4 <_svfiprintf_r+0x1f4>)
d0055f18:	bb1b      	cbnz	r3, d0055f62 <_svfiprintf_r+0x1b2>
d0055f1a:	9b03      	ldr	r3, [sp, #12]
d0055f1c:	3307      	adds	r3, #7
d0055f1e:	f023 0307 	bic.w	r3, r3, #7
d0055f22:	3308      	adds	r3, #8
d0055f24:	9303      	str	r3, [sp, #12]
d0055f26:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0055f28:	4433      	add	r3, r6
d0055f2a:	9309      	str	r3, [sp, #36]	; 0x24
d0055f2c:	e767      	b.n	d0055dfe <_svfiprintf_r+0x4e>
d0055f2e:	fb0c 3202 	mla	r2, ip, r2, r3
d0055f32:	460c      	mov	r4, r1
d0055f34:	2001      	movs	r0, #1
d0055f36:	e7a5      	b.n	d0055e84 <_svfiprintf_r+0xd4>
d0055f38:	2300      	movs	r3, #0
d0055f3a:	3401      	adds	r4, #1
d0055f3c:	9305      	str	r3, [sp, #20]
d0055f3e:	4619      	mov	r1, r3
d0055f40:	f04f 0c0a 	mov.w	ip, #10
d0055f44:	4620      	mov	r0, r4
d0055f46:	f810 2b01 	ldrb.w	r2, [r0], #1
d0055f4a:	3a30      	subs	r2, #48	; 0x30
d0055f4c:	2a09      	cmp	r2, #9
d0055f4e:	d903      	bls.n	d0055f58 <_svfiprintf_r+0x1a8>
d0055f50:	2b00      	cmp	r3, #0
d0055f52:	d0c5      	beq.n	d0055ee0 <_svfiprintf_r+0x130>
d0055f54:	9105      	str	r1, [sp, #20]
d0055f56:	e7c3      	b.n	d0055ee0 <_svfiprintf_r+0x130>
d0055f58:	fb0c 2101 	mla	r1, ip, r1, r2
d0055f5c:	4604      	mov	r4, r0
d0055f5e:	2301      	movs	r3, #1
d0055f60:	e7f0      	b.n	d0055f44 <_svfiprintf_r+0x194>
d0055f62:	ab03      	add	r3, sp, #12
d0055f64:	9300      	str	r3, [sp, #0]
d0055f66:	462a      	mov	r2, r5
d0055f68:	4b0f      	ldr	r3, [pc, #60]	; (d0055fa8 <_svfiprintf_r+0x1f8>)
d0055f6a:	a904      	add	r1, sp, #16
d0055f6c:	4638      	mov	r0, r7
d0055f6e:	f3af 8000 	nop.w
d0055f72:	1c42      	adds	r2, r0, #1
d0055f74:	4606      	mov	r6, r0
d0055f76:	d1d6      	bne.n	d0055f26 <_svfiprintf_r+0x176>
d0055f78:	89ab      	ldrh	r3, [r5, #12]
d0055f7a:	065b      	lsls	r3, r3, #25
d0055f7c:	f53f af2c 	bmi.w	d0055dd8 <_svfiprintf_r+0x28>
d0055f80:	9809      	ldr	r0, [sp, #36]	; 0x24
d0055f82:	b01d      	add	sp, #116	; 0x74
d0055f84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055f88:	ab03      	add	r3, sp, #12
d0055f8a:	9300      	str	r3, [sp, #0]
d0055f8c:	462a      	mov	r2, r5
d0055f8e:	4b06      	ldr	r3, [pc, #24]	; (d0055fa8 <_svfiprintf_r+0x1f8>)
d0055f90:	a904      	add	r1, sp, #16
d0055f92:	4638      	mov	r0, r7
d0055f94:	f000 f9d4 	bl	d0056340 <_printf_i>
d0055f98:	e7eb      	b.n	d0055f72 <_svfiprintf_r+0x1c2>
d0055f9a:	bf00      	nop
d0055f9c:	d0057c1e 	.word	0xd0057c1e
d0055fa0:	d0057c28 	.word	0xd0057c28
d0055fa4:	00000000 	.word	0x00000000
d0055fa8:	d0055cf9 	.word	0xd0055cf9
d0055fac:	d0057c24 	.word	0xd0057c24

d0055fb0 <__sfputc_r>:
d0055fb0:	6893      	ldr	r3, [r2, #8]
d0055fb2:	3b01      	subs	r3, #1
d0055fb4:	2b00      	cmp	r3, #0
d0055fb6:	b410      	push	{r4}
d0055fb8:	6093      	str	r3, [r2, #8]
d0055fba:	da08      	bge.n	d0055fce <__sfputc_r+0x1e>
d0055fbc:	6994      	ldr	r4, [r2, #24]
d0055fbe:	42a3      	cmp	r3, r4
d0055fc0:	db01      	blt.n	d0055fc6 <__sfputc_r+0x16>
d0055fc2:	290a      	cmp	r1, #10
d0055fc4:	d103      	bne.n	d0055fce <__sfputc_r+0x1e>
d0055fc6:	f85d 4b04 	ldr.w	r4, [sp], #4
d0055fca:	f000 baf1 	b.w	d00565b0 <__swbuf_r>
d0055fce:	6813      	ldr	r3, [r2, #0]
d0055fd0:	1c58      	adds	r0, r3, #1
d0055fd2:	6010      	str	r0, [r2, #0]
d0055fd4:	7019      	strb	r1, [r3, #0]
d0055fd6:	4608      	mov	r0, r1
d0055fd8:	f85d 4b04 	ldr.w	r4, [sp], #4
d0055fdc:	4770      	bx	lr

d0055fde <__sfputs_r>:
d0055fde:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055fe0:	4606      	mov	r6, r0
d0055fe2:	460f      	mov	r7, r1
d0055fe4:	4614      	mov	r4, r2
d0055fe6:	18d5      	adds	r5, r2, r3
d0055fe8:	42ac      	cmp	r4, r5
d0055fea:	d101      	bne.n	d0055ff0 <__sfputs_r+0x12>
d0055fec:	2000      	movs	r0, #0
d0055fee:	e007      	b.n	d0056000 <__sfputs_r+0x22>
d0055ff0:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055ff4:	463a      	mov	r2, r7
d0055ff6:	4630      	mov	r0, r6
d0055ff8:	f7ff ffda 	bl	d0055fb0 <__sfputc_r>
d0055ffc:	1c43      	adds	r3, r0, #1
d0055ffe:	d1f3      	bne.n	d0055fe8 <__sfputs_r+0xa>
d0056000:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0056004 <_vfiprintf_r>:
d0056004:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056008:	460d      	mov	r5, r1
d005600a:	b09d      	sub	sp, #116	; 0x74
d005600c:	4614      	mov	r4, r2
d005600e:	4698      	mov	r8, r3
d0056010:	4606      	mov	r6, r0
d0056012:	b118      	cbz	r0, d005601c <_vfiprintf_r+0x18>
d0056014:	6983      	ldr	r3, [r0, #24]
d0056016:	b90b      	cbnz	r3, d005601c <_vfiprintf_r+0x18>
d0056018:	f7ff fa94 	bl	d0055544 <__sinit>
d005601c:	4b89      	ldr	r3, [pc, #548]	; (d0056244 <_vfiprintf_r+0x240>)
d005601e:	429d      	cmp	r5, r3
d0056020:	d11b      	bne.n	d005605a <_vfiprintf_r+0x56>
d0056022:	6875      	ldr	r5, [r6, #4]
d0056024:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0056026:	07d9      	lsls	r1, r3, #31
d0056028:	d405      	bmi.n	d0056036 <_vfiprintf_r+0x32>
d005602a:	89ab      	ldrh	r3, [r5, #12]
d005602c:	059a      	lsls	r2, r3, #22
d005602e:	d402      	bmi.n	d0056036 <_vfiprintf_r+0x32>
d0056030:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0056032:	f7ff fb26 	bl	d0055682 <__retarget_lock_acquire_recursive>
d0056036:	89ab      	ldrh	r3, [r5, #12]
d0056038:	071b      	lsls	r3, r3, #28
d005603a:	d501      	bpl.n	d0056040 <_vfiprintf_r+0x3c>
d005603c:	692b      	ldr	r3, [r5, #16]
d005603e:	b9eb      	cbnz	r3, d005607c <_vfiprintf_r+0x78>
d0056040:	4629      	mov	r1, r5
d0056042:	4630      	mov	r0, r6
d0056044:	f000 fb06 	bl	d0056654 <__swsetup_r>
d0056048:	b1c0      	cbz	r0, d005607c <_vfiprintf_r+0x78>
d005604a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d005604c:	07dc      	lsls	r4, r3, #31
d005604e:	d50e      	bpl.n	d005606e <_vfiprintf_r+0x6a>
d0056050:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056054:	b01d      	add	sp, #116	; 0x74
d0056056:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005605a:	4b7b      	ldr	r3, [pc, #492]	; (d0056248 <_vfiprintf_r+0x244>)
d005605c:	429d      	cmp	r5, r3
d005605e:	d101      	bne.n	d0056064 <_vfiprintf_r+0x60>
d0056060:	68b5      	ldr	r5, [r6, #8]
d0056062:	e7df      	b.n	d0056024 <_vfiprintf_r+0x20>
d0056064:	4b79      	ldr	r3, [pc, #484]	; (d005624c <_vfiprintf_r+0x248>)
d0056066:	429d      	cmp	r5, r3
d0056068:	bf08      	it	eq
d005606a:	68f5      	ldreq	r5, [r6, #12]
d005606c:	e7da      	b.n	d0056024 <_vfiprintf_r+0x20>
d005606e:	89ab      	ldrh	r3, [r5, #12]
d0056070:	0598      	lsls	r0, r3, #22
d0056072:	d4ed      	bmi.n	d0056050 <_vfiprintf_r+0x4c>
d0056074:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0056076:	f7ff fb05 	bl	d0055684 <__retarget_lock_release_recursive>
d005607a:	e7e9      	b.n	d0056050 <_vfiprintf_r+0x4c>
d005607c:	2300      	movs	r3, #0
d005607e:	9309      	str	r3, [sp, #36]	; 0x24
d0056080:	2320      	movs	r3, #32
d0056082:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0056086:	f8cd 800c 	str.w	r8, [sp, #12]
d005608a:	2330      	movs	r3, #48	; 0x30
d005608c:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d0056250 <_vfiprintf_r+0x24c>
d0056090:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0056094:	f04f 0901 	mov.w	r9, #1
d0056098:	4623      	mov	r3, r4
d005609a:	469a      	mov	sl, r3
d005609c:	f813 2b01 	ldrb.w	r2, [r3], #1
d00560a0:	b10a      	cbz	r2, d00560a6 <_vfiprintf_r+0xa2>
d00560a2:	2a25      	cmp	r2, #37	; 0x25
d00560a4:	d1f9      	bne.n	d005609a <_vfiprintf_r+0x96>
d00560a6:	ebba 0b04 	subs.w	fp, sl, r4
d00560aa:	d00b      	beq.n	d00560c4 <_vfiprintf_r+0xc0>
d00560ac:	465b      	mov	r3, fp
d00560ae:	4622      	mov	r2, r4
d00560b0:	4629      	mov	r1, r5
d00560b2:	4630      	mov	r0, r6
d00560b4:	f7ff ff93 	bl	d0055fde <__sfputs_r>
d00560b8:	3001      	adds	r0, #1
d00560ba:	f000 80aa 	beq.w	d0056212 <_vfiprintf_r+0x20e>
d00560be:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00560c0:	445a      	add	r2, fp
d00560c2:	9209      	str	r2, [sp, #36]	; 0x24
d00560c4:	f89a 3000 	ldrb.w	r3, [sl]
d00560c8:	2b00      	cmp	r3, #0
d00560ca:	f000 80a2 	beq.w	d0056212 <_vfiprintf_r+0x20e>
d00560ce:	2300      	movs	r3, #0
d00560d0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00560d4:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00560d8:	f10a 0a01 	add.w	sl, sl, #1
d00560dc:	9304      	str	r3, [sp, #16]
d00560de:	9307      	str	r3, [sp, #28]
d00560e0:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00560e4:	931a      	str	r3, [sp, #104]	; 0x68
d00560e6:	4654      	mov	r4, sl
d00560e8:	2205      	movs	r2, #5
d00560ea:	f814 1b01 	ldrb.w	r1, [r4], #1
d00560ee:	4858      	ldr	r0, [pc, #352]	; (d0056250 <_vfiprintf_r+0x24c>)
d00560f0:	f000 fb4e 	bl	d0056790 <memchr>
d00560f4:	9a04      	ldr	r2, [sp, #16]
d00560f6:	b9d8      	cbnz	r0, d0056130 <_vfiprintf_r+0x12c>
d00560f8:	06d1      	lsls	r1, r2, #27
d00560fa:	bf44      	itt	mi
d00560fc:	2320      	movmi	r3, #32
d00560fe:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0056102:	0713      	lsls	r3, r2, #28
d0056104:	bf44      	itt	mi
d0056106:	232b      	movmi	r3, #43	; 0x2b
d0056108:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005610c:	f89a 3000 	ldrb.w	r3, [sl]
d0056110:	2b2a      	cmp	r3, #42	; 0x2a
d0056112:	d015      	beq.n	d0056140 <_vfiprintf_r+0x13c>
d0056114:	9a07      	ldr	r2, [sp, #28]
d0056116:	4654      	mov	r4, sl
d0056118:	2000      	movs	r0, #0
d005611a:	f04f 0c0a 	mov.w	ip, #10
d005611e:	4621      	mov	r1, r4
d0056120:	f811 3b01 	ldrb.w	r3, [r1], #1
d0056124:	3b30      	subs	r3, #48	; 0x30
d0056126:	2b09      	cmp	r3, #9
d0056128:	d94e      	bls.n	d00561c8 <_vfiprintf_r+0x1c4>
d005612a:	b1b0      	cbz	r0, d005615a <_vfiprintf_r+0x156>
d005612c:	9207      	str	r2, [sp, #28]
d005612e:	e014      	b.n	d005615a <_vfiprintf_r+0x156>
d0056130:	eba0 0308 	sub.w	r3, r0, r8
d0056134:	fa09 f303 	lsl.w	r3, r9, r3
d0056138:	4313      	orrs	r3, r2
d005613a:	9304      	str	r3, [sp, #16]
d005613c:	46a2      	mov	sl, r4
d005613e:	e7d2      	b.n	d00560e6 <_vfiprintf_r+0xe2>
d0056140:	9b03      	ldr	r3, [sp, #12]
d0056142:	1d19      	adds	r1, r3, #4
d0056144:	681b      	ldr	r3, [r3, #0]
d0056146:	9103      	str	r1, [sp, #12]
d0056148:	2b00      	cmp	r3, #0
d005614a:	bfbb      	ittet	lt
d005614c:	425b      	neglt	r3, r3
d005614e:	f042 0202 	orrlt.w	r2, r2, #2
d0056152:	9307      	strge	r3, [sp, #28]
d0056154:	9307      	strlt	r3, [sp, #28]
d0056156:	bfb8      	it	lt
d0056158:	9204      	strlt	r2, [sp, #16]
d005615a:	7823      	ldrb	r3, [r4, #0]
d005615c:	2b2e      	cmp	r3, #46	; 0x2e
d005615e:	d10c      	bne.n	d005617a <_vfiprintf_r+0x176>
d0056160:	7863      	ldrb	r3, [r4, #1]
d0056162:	2b2a      	cmp	r3, #42	; 0x2a
d0056164:	d135      	bne.n	d00561d2 <_vfiprintf_r+0x1ce>
d0056166:	9b03      	ldr	r3, [sp, #12]
d0056168:	1d1a      	adds	r2, r3, #4
d005616a:	681b      	ldr	r3, [r3, #0]
d005616c:	9203      	str	r2, [sp, #12]
d005616e:	2b00      	cmp	r3, #0
d0056170:	bfb8      	it	lt
d0056172:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0056176:	3402      	adds	r4, #2
d0056178:	9305      	str	r3, [sp, #20]
d005617a:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d0056260 <_vfiprintf_r+0x25c>
d005617e:	7821      	ldrb	r1, [r4, #0]
d0056180:	2203      	movs	r2, #3
d0056182:	4650      	mov	r0, sl
d0056184:	f000 fb04 	bl	d0056790 <memchr>
d0056188:	b140      	cbz	r0, d005619c <_vfiprintf_r+0x198>
d005618a:	2340      	movs	r3, #64	; 0x40
d005618c:	eba0 000a 	sub.w	r0, r0, sl
d0056190:	fa03 f000 	lsl.w	r0, r3, r0
d0056194:	9b04      	ldr	r3, [sp, #16]
d0056196:	4303      	orrs	r3, r0
d0056198:	3401      	adds	r4, #1
d005619a:	9304      	str	r3, [sp, #16]
d005619c:	f814 1b01 	ldrb.w	r1, [r4], #1
d00561a0:	482c      	ldr	r0, [pc, #176]	; (d0056254 <_vfiprintf_r+0x250>)
d00561a2:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00561a6:	2206      	movs	r2, #6
d00561a8:	f000 faf2 	bl	d0056790 <memchr>
d00561ac:	2800      	cmp	r0, #0
d00561ae:	d03f      	beq.n	d0056230 <_vfiprintf_r+0x22c>
d00561b0:	4b29      	ldr	r3, [pc, #164]	; (d0056258 <_vfiprintf_r+0x254>)
d00561b2:	bb1b      	cbnz	r3, d00561fc <_vfiprintf_r+0x1f8>
d00561b4:	9b03      	ldr	r3, [sp, #12]
d00561b6:	3307      	adds	r3, #7
d00561b8:	f023 0307 	bic.w	r3, r3, #7
d00561bc:	3308      	adds	r3, #8
d00561be:	9303      	str	r3, [sp, #12]
d00561c0:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00561c2:	443b      	add	r3, r7
d00561c4:	9309      	str	r3, [sp, #36]	; 0x24
d00561c6:	e767      	b.n	d0056098 <_vfiprintf_r+0x94>
d00561c8:	fb0c 3202 	mla	r2, ip, r2, r3
d00561cc:	460c      	mov	r4, r1
d00561ce:	2001      	movs	r0, #1
d00561d0:	e7a5      	b.n	d005611e <_vfiprintf_r+0x11a>
d00561d2:	2300      	movs	r3, #0
d00561d4:	3401      	adds	r4, #1
d00561d6:	9305      	str	r3, [sp, #20]
d00561d8:	4619      	mov	r1, r3
d00561da:	f04f 0c0a 	mov.w	ip, #10
d00561de:	4620      	mov	r0, r4
d00561e0:	f810 2b01 	ldrb.w	r2, [r0], #1
d00561e4:	3a30      	subs	r2, #48	; 0x30
d00561e6:	2a09      	cmp	r2, #9
d00561e8:	d903      	bls.n	d00561f2 <_vfiprintf_r+0x1ee>
d00561ea:	2b00      	cmp	r3, #0
d00561ec:	d0c5      	beq.n	d005617a <_vfiprintf_r+0x176>
d00561ee:	9105      	str	r1, [sp, #20]
d00561f0:	e7c3      	b.n	d005617a <_vfiprintf_r+0x176>
d00561f2:	fb0c 2101 	mla	r1, ip, r1, r2
d00561f6:	4604      	mov	r4, r0
d00561f8:	2301      	movs	r3, #1
d00561fa:	e7f0      	b.n	d00561de <_vfiprintf_r+0x1da>
d00561fc:	ab03      	add	r3, sp, #12
d00561fe:	9300      	str	r3, [sp, #0]
d0056200:	462a      	mov	r2, r5
d0056202:	4b16      	ldr	r3, [pc, #88]	; (d005625c <_vfiprintf_r+0x258>)
d0056204:	a904      	add	r1, sp, #16
d0056206:	4630      	mov	r0, r6
d0056208:	f3af 8000 	nop.w
d005620c:	4607      	mov	r7, r0
d005620e:	1c78      	adds	r0, r7, #1
d0056210:	d1d6      	bne.n	d00561c0 <_vfiprintf_r+0x1bc>
d0056212:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0056214:	07d9      	lsls	r1, r3, #31
d0056216:	d405      	bmi.n	d0056224 <_vfiprintf_r+0x220>
d0056218:	89ab      	ldrh	r3, [r5, #12]
d005621a:	059a      	lsls	r2, r3, #22
d005621c:	d402      	bmi.n	d0056224 <_vfiprintf_r+0x220>
d005621e:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0056220:	f7ff fa30 	bl	d0055684 <__retarget_lock_release_recursive>
d0056224:	89ab      	ldrh	r3, [r5, #12]
d0056226:	065b      	lsls	r3, r3, #25
d0056228:	f53f af12 	bmi.w	d0056050 <_vfiprintf_r+0x4c>
d005622c:	9809      	ldr	r0, [sp, #36]	; 0x24
d005622e:	e711      	b.n	d0056054 <_vfiprintf_r+0x50>
d0056230:	ab03      	add	r3, sp, #12
d0056232:	9300      	str	r3, [sp, #0]
d0056234:	462a      	mov	r2, r5
d0056236:	4b09      	ldr	r3, [pc, #36]	; (d005625c <_vfiprintf_r+0x258>)
d0056238:	a904      	add	r1, sp, #16
d005623a:	4630      	mov	r0, r6
d005623c:	f000 f880 	bl	d0056340 <_printf_i>
d0056240:	e7e4      	b.n	d005620c <_vfiprintf_r+0x208>
d0056242:	bf00      	nop
d0056244:	d0057b28 	.word	0xd0057b28
d0056248:	d0057b48 	.word	0xd0057b48
d005624c:	d0057b08 	.word	0xd0057b08
d0056250:	d0057c1e 	.word	0xd0057c1e
d0056254:	d0057c28 	.word	0xd0057c28
d0056258:	00000000 	.word	0x00000000
d005625c:	d0055fdf 	.word	0xd0055fdf
d0056260:	d0057c24 	.word	0xd0057c24

d0056264 <_printf_common>:
d0056264:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0056268:	4616      	mov	r6, r2
d005626a:	4699      	mov	r9, r3
d005626c:	688a      	ldr	r2, [r1, #8]
d005626e:	690b      	ldr	r3, [r1, #16]
d0056270:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0056274:	4293      	cmp	r3, r2
d0056276:	bfb8      	it	lt
d0056278:	4613      	movlt	r3, r2
d005627a:	6033      	str	r3, [r6, #0]
d005627c:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0056280:	4607      	mov	r7, r0
d0056282:	460c      	mov	r4, r1
d0056284:	b10a      	cbz	r2, d005628a <_printf_common+0x26>
d0056286:	3301      	adds	r3, #1
d0056288:	6033      	str	r3, [r6, #0]
d005628a:	6823      	ldr	r3, [r4, #0]
d005628c:	0699      	lsls	r1, r3, #26
d005628e:	bf42      	ittt	mi
d0056290:	6833      	ldrmi	r3, [r6, #0]
d0056292:	3302      	addmi	r3, #2
d0056294:	6033      	strmi	r3, [r6, #0]
d0056296:	6825      	ldr	r5, [r4, #0]
d0056298:	f015 0506 	ands.w	r5, r5, #6
d005629c:	d106      	bne.n	d00562ac <_printf_common+0x48>
d005629e:	f104 0a19 	add.w	sl, r4, #25
d00562a2:	68e3      	ldr	r3, [r4, #12]
d00562a4:	6832      	ldr	r2, [r6, #0]
d00562a6:	1a9b      	subs	r3, r3, r2
d00562a8:	42ab      	cmp	r3, r5
d00562aa:	dc26      	bgt.n	d00562fa <_printf_common+0x96>
d00562ac:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d00562b0:	1e13      	subs	r3, r2, #0
d00562b2:	6822      	ldr	r2, [r4, #0]
d00562b4:	bf18      	it	ne
d00562b6:	2301      	movne	r3, #1
d00562b8:	0692      	lsls	r2, r2, #26
d00562ba:	d42b      	bmi.n	d0056314 <_printf_common+0xb0>
d00562bc:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00562c0:	4649      	mov	r1, r9
d00562c2:	4638      	mov	r0, r7
d00562c4:	47c0      	blx	r8
d00562c6:	3001      	adds	r0, #1
d00562c8:	d01e      	beq.n	d0056308 <_printf_common+0xa4>
d00562ca:	6823      	ldr	r3, [r4, #0]
d00562cc:	68e5      	ldr	r5, [r4, #12]
d00562ce:	6832      	ldr	r2, [r6, #0]
d00562d0:	f003 0306 	and.w	r3, r3, #6
d00562d4:	2b04      	cmp	r3, #4
d00562d6:	bf08      	it	eq
d00562d8:	1aad      	subeq	r5, r5, r2
d00562da:	68a3      	ldr	r3, [r4, #8]
d00562dc:	6922      	ldr	r2, [r4, #16]
d00562de:	bf0c      	ite	eq
d00562e0:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00562e4:	2500      	movne	r5, #0
d00562e6:	4293      	cmp	r3, r2
d00562e8:	bfc4      	itt	gt
d00562ea:	1a9b      	subgt	r3, r3, r2
d00562ec:	18ed      	addgt	r5, r5, r3
d00562ee:	2600      	movs	r6, #0
d00562f0:	341a      	adds	r4, #26
d00562f2:	42b5      	cmp	r5, r6
d00562f4:	d11a      	bne.n	d005632c <_printf_common+0xc8>
d00562f6:	2000      	movs	r0, #0
d00562f8:	e008      	b.n	d005630c <_printf_common+0xa8>
d00562fa:	2301      	movs	r3, #1
d00562fc:	4652      	mov	r2, sl
d00562fe:	4649      	mov	r1, r9
d0056300:	4638      	mov	r0, r7
d0056302:	47c0      	blx	r8
d0056304:	3001      	adds	r0, #1
d0056306:	d103      	bne.n	d0056310 <_printf_common+0xac>
d0056308:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005630c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0056310:	3501      	adds	r5, #1
d0056312:	e7c6      	b.n	d00562a2 <_printf_common+0x3e>
d0056314:	18e1      	adds	r1, r4, r3
d0056316:	1c5a      	adds	r2, r3, #1
d0056318:	2030      	movs	r0, #48	; 0x30
d005631a:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d005631e:	4422      	add	r2, r4
d0056320:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0056324:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0056328:	3302      	adds	r3, #2
d005632a:	e7c7      	b.n	d00562bc <_printf_common+0x58>
d005632c:	2301      	movs	r3, #1
d005632e:	4622      	mov	r2, r4
d0056330:	4649      	mov	r1, r9
d0056332:	4638      	mov	r0, r7
d0056334:	47c0      	blx	r8
d0056336:	3001      	adds	r0, #1
d0056338:	d0e6      	beq.n	d0056308 <_printf_common+0xa4>
d005633a:	3601      	adds	r6, #1
d005633c:	e7d9      	b.n	d00562f2 <_printf_common+0x8e>
	...

d0056340 <_printf_i>:
d0056340:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0056344:	460c      	mov	r4, r1
d0056346:	4691      	mov	r9, r2
d0056348:	7e27      	ldrb	r7, [r4, #24]
d005634a:	990c      	ldr	r1, [sp, #48]	; 0x30
d005634c:	2f78      	cmp	r7, #120	; 0x78
d005634e:	4680      	mov	r8, r0
d0056350:	469a      	mov	sl, r3
d0056352:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0056356:	d807      	bhi.n	d0056368 <_printf_i+0x28>
d0056358:	2f62      	cmp	r7, #98	; 0x62
d005635a:	d80a      	bhi.n	d0056372 <_printf_i+0x32>
d005635c:	2f00      	cmp	r7, #0
d005635e:	f000 80d8 	beq.w	d0056512 <_printf_i+0x1d2>
d0056362:	2f58      	cmp	r7, #88	; 0x58
d0056364:	f000 80a3 	beq.w	d00564ae <_printf_i+0x16e>
d0056368:	f104 0642 	add.w	r6, r4, #66	; 0x42
d005636c:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0056370:	e03a      	b.n	d00563e8 <_printf_i+0xa8>
d0056372:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0056376:	2b15      	cmp	r3, #21
d0056378:	d8f6      	bhi.n	d0056368 <_printf_i+0x28>
d005637a:	a001      	add	r0, pc, #4	; (adr r0, d0056380 <_printf_i+0x40>)
d005637c:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0056380:	d00563d9 	.word	0xd00563d9
d0056384:	d00563ed 	.word	0xd00563ed
d0056388:	d0056369 	.word	0xd0056369
d005638c:	d0056369 	.word	0xd0056369
d0056390:	d0056369 	.word	0xd0056369
d0056394:	d0056369 	.word	0xd0056369
d0056398:	d00563ed 	.word	0xd00563ed
d005639c:	d0056369 	.word	0xd0056369
d00563a0:	d0056369 	.word	0xd0056369
d00563a4:	d0056369 	.word	0xd0056369
d00563a8:	d0056369 	.word	0xd0056369
d00563ac:	d00564f9 	.word	0xd00564f9
d00563b0:	d005641d 	.word	0xd005641d
d00563b4:	d00564db 	.word	0xd00564db
d00563b8:	d0056369 	.word	0xd0056369
d00563bc:	d0056369 	.word	0xd0056369
d00563c0:	d005651b 	.word	0xd005651b
d00563c4:	d0056369 	.word	0xd0056369
d00563c8:	d005641d 	.word	0xd005641d
d00563cc:	d0056369 	.word	0xd0056369
d00563d0:	d0056369 	.word	0xd0056369
d00563d4:	d00564e3 	.word	0xd00564e3
d00563d8:	680b      	ldr	r3, [r1, #0]
d00563da:	1d1a      	adds	r2, r3, #4
d00563dc:	681b      	ldr	r3, [r3, #0]
d00563de:	600a      	str	r2, [r1, #0]
d00563e0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00563e4:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00563e8:	2301      	movs	r3, #1
d00563ea:	e0a3      	b.n	d0056534 <_printf_i+0x1f4>
d00563ec:	6825      	ldr	r5, [r4, #0]
d00563ee:	6808      	ldr	r0, [r1, #0]
d00563f0:	062e      	lsls	r6, r5, #24
d00563f2:	f100 0304 	add.w	r3, r0, #4
d00563f6:	d50a      	bpl.n	d005640e <_printf_i+0xce>
d00563f8:	6805      	ldr	r5, [r0, #0]
d00563fa:	600b      	str	r3, [r1, #0]
d00563fc:	2d00      	cmp	r5, #0
d00563fe:	da03      	bge.n	d0056408 <_printf_i+0xc8>
d0056400:	232d      	movs	r3, #45	; 0x2d
d0056402:	426d      	negs	r5, r5
d0056404:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0056408:	485e      	ldr	r0, [pc, #376]	; (d0056584 <_printf_i+0x244>)
d005640a:	230a      	movs	r3, #10
d005640c:	e019      	b.n	d0056442 <_printf_i+0x102>
d005640e:	f015 0f40 	tst.w	r5, #64	; 0x40
d0056412:	6805      	ldr	r5, [r0, #0]
d0056414:	600b      	str	r3, [r1, #0]
d0056416:	bf18      	it	ne
d0056418:	b22d      	sxthne	r5, r5
d005641a:	e7ef      	b.n	d00563fc <_printf_i+0xbc>
d005641c:	680b      	ldr	r3, [r1, #0]
d005641e:	6825      	ldr	r5, [r4, #0]
d0056420:	1d18      	adds	r0, r3, #4
d0056422:	6008      	str	r0, [r1, #0]
d0056424:	0628      	lsls	r0, r5, #24
d0056426:	d501      	bpl.n	d005642c <_printf_i+0xec>
d0056428:	681d      	ldr	r5, [r3, #0]
d005642a:	e002      	b.n	d0056432 <_printf_i+0xf2>
d005642c:	0669      	lsls	r1, r5, #25
d005642e:	d5fb      	bpl.n	d0056428 <_printf_i+0xe8>
d0056430:	881d      	ldrh	r5, [r3, #0]
d0056432:	4854      	ldr	r0, [pc, #336]	; (d0056584 <_printf_i+0x244>)
d0056434:	2f6f      	cmp	r7, #111	; 0x6f
d0056436:	bf0c      	ite	eq
d0056438:	2308      	moveq	r3, #8
d005643a:	230a      	movne	r3, #10
d005643c:	2100      	movs	r1, #0
d005643e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0056442:	6866      	ldr	r6, [r4, #4]
d0056444:	60a6      	str	r6, [r4, #8]
d0056446:	2e00      	cmp	r6, #0
d0056448:	bfa2      	ittt	ge
d005644a:	6821      	ldrge	r1, [r4, #0]
d005644c:	f021 0104 	bicge.w	r1, r1, #4
d0056450:	6021      	strge	r1, [r4, #0]
d0056452:	b90d      	cbnz	r5, d0056458 <_printf_i+0x118>
d0056454:	2e00      	cmp	r6, #0
d0056456:	d04d      	beq.n	d00564f4 <_printf_i+0x1b4>
d0056458:	4616      	mov	r6, r2
d005645a:	fbb5 f1f3 	udiv	r1, r5, r3
d005645e:	fb03 5711 	mls	r7, r3, r1, r5
d0056462:	5dc7      	ldrb	r7, [r0, r7]
d0056464:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0056468:	462f      	mov	r7, r5
d005646a:	42bb      	cmp	r3, r7
d005646c:	460d      	mov	r5, r1
d005646e:	d9f4      	bls.n	d005645a <_printf_i+0x11a>
d0056470:	2b08      	cmp	r3, #8
d0056472:	d10b      	bne.n	d005648c <_printf_i+0x14c>
d0056474:	6823      	ldr	r3, [r4, #0]
d0056476:	07df      	lsls	r7, r3, #31
d0056478:	d508      	bpl.n	d005648c <_printf_i+0x14c>
d005647a:	6923      	ldr	r3, [r4, #16]
d005647c:	6861      	ldr	r1, [r4, #4]
d005647e:	4299      	cmp	r1, r3
d0056480:	bfde      	ittt	le
d0056482:	2330      	movle	r3, #48	; 0x30
d0056484:	f806 3c01 	strble.w	r3, [r6, #-1]
d0056488:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d005648c:	1b92      	subs	r2, r2, r6
d005648e:	6122      	str	r2, [r4, #16]
d0056490:	f8cd a000 	str.w	sl, [sp]
d0056494:	464b      	mov	r3, r9
d0056496:	aa03      	add	r2, sp, #12
d0056498:	4621      	mov	r1, r4
d005649a:	4640      	mov	r0, r8
d005649c:	f7ff fee2 	bl	d0056264 <_printf_common>
d00564a0:	3001      	adds	r0, #1
d00564a2:	d14c      	bne.n	d005653e <_printf_i+0x1fe>
d00564a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00564a8:	b004      	add	sp, #16
d00564aa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00564ae:	4835      	ldr	r0, [pc, #212]	; (d0056584 <_printf_i+0x244>)
d00564b0:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00564b4:	6823      	ldr	r3, [r4, #0]
d00564b6:	680e      	ldr	r6, [r1, #0]
d00564b8:	061f      	lsls	r7, r3, #24
d00564ba:	f856 5b04 	ldr.w	r5, [r6], #4
d00564be:	600e      	str	r6, [r1, #0]
d00564c0:	d514      	bpl.n	d00564ec <_printf_i+0x1ac>
d00564c2:	07d9      	lsls	r1, r3, #31
d00564c4:	bf44      	itt	mi
d00564c6:	f043 0320 	orrmi.w	r3, r3, #32
d00564ca:	6023      	strmi	r3, [r4, #0]
d00564cc:	b91d      	cbnz	r5, d00564d6 <_printf_i+0x196>
d00564ce:	6823      	ldr	r3, [r4, #0]
d00564d0:	f023 0320 	bic.w	r3, r3, #32
d00564d4:	6023      	str	r3, [r4, #0]
d00564d6:	2310      	movs	r3, #16
d00564d8:	e7b0      	b.n	d005643c <_printf_i+0xfc>
d00564da:	6823      	ldr	r3, [r4, #0]
d00564dc:	f043 0320 	orr.w	r3, r3, #32
d00564e0:	6023      	str	r3, [r4, #0]
d00564e2:	2378      	movs	r3, #120	; 0x78
d00564e4:	4828      	ldr	r0, [pc, #160]	; (d0056588 <_printf_i+0x248>)
d00564e6:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00564ea:	e7e3      	b.n	d00564b4 <_printf_i+0x174>
d00564ec:	065e      	lsls	r6, r3, #25
d00564ee:	bf48      	it	mi
d00564f0:	b2ad      	uxthmi	r5, r5
d00564f2:	e7e6      	b.n	d00564c2 <_printf_i+0x182>
d00564f4:	4616      	mov	r6, r2
d00564f6:	e7bb      	b.n	d0056470 <_printf_i+0x130>
d00564f8:	680b      	ldr	r3, [r1, #0]
d00564fa:	6826      	ldr	r6, [r4, #0]
d00564fc:	6960      	ldr	r0, [r4, #20]
d00564fe:	1d1d      	adds	r5, r3, #4
d0056500:	600d      	str	r5, [r1, #0]
d0056502:	0635      	lsls	r5, r6, #24
d0056504:	681b      	ldr	r3, [r3, #0]
d0056506:	d501      	bpl.n	d005650c <_printf_i+0x1cc>
d0056508:	6018      	str	r0, [r3, #0]
d005650a:	e002      	b.n	d0056512 <_printf_i+0x1d2>
d005650c:	0671      	lsls	r1, r6, #25
d005650e:	d5fb      	bpl.n	d0056508 <_printf_i+0x1c8>
d0056510:	8018      	strh	r0, [r3, #0]
d0056512:	2300      	movs	r3, #0
d0056514:	6123      	str	r3, [r4, #16]
d0056516:	4616      	mov	r6, r2
d0056518:	e7ba      	b.n	d0056490 <_printf_i+0x150>
d005651a:	680b      	ldr	r3, [r1, #0]
d005651c:	1d1a      	adds	r2, r3, #4
d005651e:	600a      	str	r2, [r1, #0]
d0056520:	681e      	ldr	r6, [r3, #0]
d0056522:	6862      	ldr	r2, [r4, #4]
d0056524:	2100      	movs	r1, #0
d0056526:	4630      	mov	r0, r6
d0056528:	f000 f932 	bl	d0056790 <memchr>
d005652c:	b108      	cbz	r0, d0056532 <_printf_i+0x1f2>
d005652e:	1b80      	subs	r0, r0, r6
d0056530:	6060      	str	r0, [r4, #4]
d0056532:	6863      	ldr	r3, [r4, #4]
d0056534:	6123      	str	r3, [r4, #16]
d0056536:	2300      	movs	r3, #0
d0056538:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d005653c:	e7a8      	b.n	d0056490 <_printf_i+0x150>
d005653e:	6923      	ldr	r3, [r4, #16]
d0056540:	4632      	mov	r2, r6
d0056542:	4649      	mov	r1, r9
d0056544:	4640      	mov	r0, r8
d0056546:	47d0      	blx	sl
d0056548:	3001      	adds	r0, #1
d005654a:	d0ab      	beq.n	d00564a4 <_printf_i+0x164>
d005654c:	6823      	ldr	r3, [r4, #0]
d005654e:	079b      	lsls	r3, r3, #30
d0056550:	d413      	bmi.n	d005657a <_printf_i+0x23a>
d0056552:	68e0      	ldr	r0, [r4, #12]
d0056554:	9b03      	ldr	r3, [sp, #12]
d0056556:	4298      	cmp	r0, r3
d0056558:	bfb8      	it	lt
d005655a:	4618      	movlt	r0, r3
d005655c:	e7a4      	b.n	d00564a8 <_printf_i+0x168>
d005655e:	2301      	movs	r3, #1
d0056560:	4632      	mov	r2, r6
d0056562:	4649      	mov	r1, r9
d0056564:	4640      	mov	r0, r8
d0056566:	47d0      	blx	sl
d0056568:	3001      	adds	r0, #1
d005656a:	d09b      	beq.n	d00564a4 <_printf_i+0x164>
d005656c:	3501      	adds	r5, #1
d005656e:	68e3      	ldr	r3, [r4, #12]
d0056570:	9903      	ldr	r1, [sp, #12]
d0056572:	1a5b      	subs	r3, r3, r1
d0056574:	42ab      	cmp	r3, r5
d0056576:	dcf2      	bgt.n	d005655e <_printf_i+0x21e>
d0056578:	e7eb      	b.n	d0056552 <_printf_i+0x212>
d005657a:	2500      	movs	r5, #0
d005657c:	f104 0619 	add.w	r6, r4, #25
d0056580:	e7f5      	b.n	d005656e <_printf_i+0x22e>
d0056582:	bf00      	nop
d0056584:	d0057c2f 	.word	0xd0057c2f
d0056588:	d0057c40 	.word	0xd0057c40

d005658c <_read_r>:
d005658c:	b538      	push	{r3, r4, r5, lr}
d005658e:	4d07      	ldr	r5, [pc, #28]	; (d00565ac <_read_r+0x20>)
d0056590:	4604      	mov	r4, r0
d0056592:	4608      	mov	r0, r1
d0056594:	4611      	mov	r1, r2
d0056596:	2200      	movs	r2, #0
d0056598:	602a      	str	r2, [r5, #0]
d005659a:	461a      	mov	r2, r3
d005659c:	f7f4 fd8a 	bl	d004b0b4 <_read>
d00565a0:	1c43      	adds	r3, r0, #1
d00565a2:	d102      	bne.n	d00565aa <_read_r+0x1e>
d00565a4:	682b      	ldr	r3, [r5, #0]
d00565a6:	b103      	cbz	r3, d00565aa <_read_r+0x1e>
d00565a8:	6023      	str	r3, [r4, #0]
d00565aa:	bd38      	pop	{r3, r4, r5, pc}
d00565ac:	d00fcc40 	.word	0xd00fcc40

d00565b0 <__swbuf_r>:
d00565b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00565b2:	460e      	mov	r6, r1
d00565b4:	4614      	mov	r4, r2
d00565b6:	4605      	mov	r5, r0
d00565b8:	b118      	cbz	r0, d00565c2 <__swbuf_r+0x12>
d00565ba:	6983      	ldr	r3, [r0, #24]
d00565bc:	b90b      	cbnz	r3, d00565c2 <__swbuf_r+0x12>
d00565be:	f7fe ffc1 	bl	d0055544 <__sinit>
d00565c2:	4b21      	ldr	r3, [pc, #132]	; (d0056648 <__swbuf_r+0x98>)
d00565c4:	429c      	cmp	r4, r3
d00565c6:	d12b      	bne.n	d0056620 <__swbuf_r+0x70>
d00565c8:	686c      	ldr	r4, [r5, #4]
d00565ca:	69a3      	ldr	r3, [r4, #24]
d00565cc:	60a3      	str	r3, [r4, #8]
d00565ce:	89a3      	ldrh	r3, [r4, #12]
d00565d0:	071a      	lsls	r2, r3, #28
d00565d2:	d52f      	bpl.n	d0056634 <__swbuf_r+0x84>
d00565d4:	6923      	ldr	r3, [r4, #16]
d00565d6:	b36b      	cbz	r3, d0056634 <__swbuf_r+0x84>
d00565d8:	6923      	ldr	r3, [r4, #16]
d00565da:	6820      	ldr	r0, [r4, #0]
d00565dc:	1ac0      	subs	r0, r0, r3
d00565de:	6963      	ldr	r3, [r4, #20]
d00565e0:	b2f6      	uxtb	r6, r6
d00565e2:	4283      	cmp	r3, r0
d00565e4:	4637      	mov	r7, r6
d00565e6:	dc04      	bgt.n	d00565f2 <__swbuf_r+0x42>
d00565e8:	4621      	mov	r1, r4
d00565ea:	4628      	mov	r0, r5
d00565ec:	f7fe ff16 	bl	d005541c <_fflush_r>
d00565f0:	bb30      	cbnz	r0, d0056640 <__swbuf_r+0x90>
d00565f2:	68a3      	ldr	r3, [r4, #8]
d00565f4:	3b01      	subs	r3, #1
d00565f6:	60a3      	str	r3, [r4, #8]
d00565f8:	6823      	ldr	r3, [r4, #0]
d00565fa:	1c5a      	adds	r2, r3, #1
d00565fc:	6022      	str	r2, [r4, #0]
d00565fe:	701e      	strb	r6, [r3, #0]
d0056600:	6963      	ldr	r3, [r4, #20]
d0056602:	3001      	adds	r0, #1
d0056604:	4283      	cmp	r3, r0
d0056606:	d004      	beq.n	d0056612 <__swbuf_r+0x62>
d0056608:	89a3      	ldrh	r3, [r4, #12]
d005660a:	07db      	lsls	r3, r3, #31
d005660c:	d506      	bpl.n	d005661c <__swbuf_r+0x6c>
d005660e:	2e0a      	cmp	r6, #10
d0056610:	d104      	bne.n	d005661c <__swbuf_r+0x6c>
d0056612:	4621      	mov	r1, r4
d0056614:	4628      	mov	r0, r5
d0056616:	f7fe ff01 	bl	d005541c <_fflush_r>
d005661a:	b988      	cbnz	r0, d0056640 <__swbuf_r+0x90>
d005661c:	4638      	mov	r0, r7
d005661e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0056620:	4b0a      	ldr	r3, [pc, #40]	; (d005664c <__swbuf_r+0x9c>)
d0056622:	429c      	cmp	r4, r3
d0056624:	d101      	bne.n	d005662a <__swbuf_r+0x7a>
d0056626:	68ac      	ldr	r4, [r5, #8]
d0056628:	e7cf      	b.n	d00565ca <__swbuf_r+0x1a>
d005662a:	4b09      	ldr	r3, [pc, #36]	; (d0056650 <__swbuf_r+0xa0>)
d005662c:	429c      	cmp	r4, r3
d005662e:	bf08      	it	eq
d0056630:	68ec      	ldreq	r4, [r5, #12]
d0056632:	e7ca      	b.n	d00565ca <__swbuf_r+0x1a>
d0056634:	4621      	mov	r1, r4
d0056636:	4628      	mov	r0, r5
d0056638:	f000 f80c 	bl	d0056654 <__swsetup_r>
d005663c:	2800      	cmp	r0, #0
d005663e:	d0cb      	beq.n	d00565d8 <__swbuf_r+0x28>
d0056640:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0056644:	e7ea      	b.n	d005661c <__swbuf_r+0x6c>
d0056646:	bf00      	nop
d0056648:	d0057b28 	.word	0xd0057b28
d005664c:	d0057b48 	.word	0xd0057b48
d0056650:	d0057b08 	.word	0xd0057b08

d0056654 <__swsetup_r>:
d0056654:	4b32      	ldr	r3, [pc, #200]	; (d0056720 <__swsetup_r+0xcc>)
d0056656:	b570      	push	{r4, r5, r6, lr}
d0056658:	681d      	ldr	r5, [r3, #0]
d005665a:	4606      	mov	r6, r0
d005665c:	460c      	mov	r4, r1
d005665e:	b125      	cbz	r5, d005666a <__swsetup_r+0x16>
d0056660:	69ab      	ldr	r3, [r5, #24]
d0056662:	b913      	cbnz	r3, d005666a <__swsetup_r+0x16>
d0056664:	4628      	mov	r0, r5
d0056666:	f7fe ff6d 	bl	d0055544 <__sinit>
d005666a:	4b2e      	ldr	r3, [pc, #184]	; (d0056724 <__swsetup_r+0xd0>)
d005666c:	429c      	cmp	r4, r3
d005666e:	d10f      	bne.n	d0056690 <__swsetup_r+0x3c>
d0056670:	686c      	ldr	r4, [r5, #4]
d0056672:	89a3      	ldrh	r3, [r4, #12]
d0056674:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0056678:	0719      	lsls	r1, r3, #28
d005667a:	d42c      	bmi.n	d00566d6 <__swsetup_r+0x82>
d005667c:	06dd      	lsls	r5, r3, #27
d005667e:	d411      	bmi.n	d00566a4 <__swsetup_r+0x50>
d0056680:	2309      	movs	r3, #9
d0056682:	6033      	str	r3, [r6, #0]
d0056684:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0056688:	81a3      	strh	r3, [r4, #12]
d005668a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005668e:	e03e      	b.n	d005670e <__swsetup_r+0xba>
d0056690:	4b25      	ldr	r3, [pc, #148]	; (d0056728 <__swsetup_r+0xd4>)
d0056692:	429c      	cmp	r4, r3
d0056694:	d101      	bne.n	d005669a <__swsetup_r+0x46>
d0056696:	68ac      	ldr	r4, [r5, #8]
d0056698:	e7eb      	b.n	d0056672 <__swsetup_r+0x1e>
d005669a:	4b24      	ldr	r3, [pc, #144]	; (d005672c <__swsetup_r+0xd8>)
d005669c:	429c      	cmp	r4, r3
d005669e:	bf08      	it	eq
d00566a0:	68ec      	ldreq	r4, [r5, #12]
d00566a2:	e7e6      	b.n	d0056672 <__swsetup_r+0x1e>
d00566a4:	0758      	lsls	r0, r3, #29
d00566a6:	d512      	bpl.n	d00566ce <__swsetup_r+0x7a>
d00566a8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00566aa:	b141      	cbz	r1, d00566be <__swsetup_r+0x6a>
d00566ac:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00566b0:	4299      	cmp	r1, r3
d00566b2:	d002      	beq.n	d00566ba <__swsetup_r+0x66>
d00566b4:	4630      	mov	r0, r6
d00566b6:	f7ff f81b 	bl	d00556f0 <_free_r>
d00566ba:	2300      	movs	r3, #0
d00566bc:	6363      	str	r3, [r4, #52]	; 0x34
d00566be:	89a3      	ldrh	r3, [r4, #12]
d00566c0:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d00566c4:	81a3      	strh	r3, [r4, #12]
d00566c6:	2300      	movs	r3, #0
d00566c8:	6063      	str	r3, [r4, #4]
d00566ca:	6923      	ldr	r3, [r4, #16]
d00566cc:	6023      	str	r3, [r4, #0]
d00566ce:	89a3      	ldrh	r3, [r4, #12]
d00566d0:	f043 0308 	orr.w	r3, r3, #8
d00566d4:	81a3      	strh	r3, [r4, #12]
d00566d6:	6923      	ldr	r3, [r4, #16]
d00566d8:	b94b      	cbnz	r3, d00566ee <__swsetup_r+0x9a>
d00566da:	89a3      	ldrh	r3, [r4, #12]
d00566dc:	f403 7320 	and.w	r3, r3, #640	; 0x280
d00566e0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d00566e4:	d003      	beq.n	d00566ee <__swsetup_r+0x9a>
d00566e6:	4621      	mov	r1, r4
d00566e8:	4630      	mov	r0, r6
d00566ea:	f7ff fa93 	bl	d0055c14 <__smakebuf_r>
d00566ee:	89a0      	ldrh	r0, [r4, #12]
d00566f0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00566f4:	f010 0301 	ands.w	r3, r0, #1
d00566f8:	d00a      	beq.n	d0056710 <__swsetup_r+0xbc>
d00566fa:	2300      	movs	r3, #0
d00566fc:	60a3      	str	r3, [r4, #8]
d00566fe:	6963      	ldr	r3, [r4, #20]
d0056700:	425b      	negs	r3, r3
d0056702:	61a3      	str	r3, [r4, #24]
d0056704:	6923      	ldr	r3, [r4, #16]
d0056706:	b943      	cbnz	r3, d005671a <__swsetup_r+0xc6>
d0056708:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d005670c:	d1ba      	bne.n	d0056684 <__swsetup_r+0x30>
d005670e:	bd70      	pop	{r4, r5, r6, pc}
d0056710:	0781      	lsls	r1, r0, #30
d0056712:	bf58      	it	pl
d0056714:	6963      	ldrpl	r3, [r4, #20]
d0056716:	60a3      	str	r3, [r4, #8]
d0056718:	e7f4      	b.n	d0056704 <__swsetup_r+0xb0>
d005671a:	2000      	movs	r0, #0
d005671c:	e7f7      	b.n	d005670e <__swsetup_r+0xba>
d005671e:	bf00      	nop
d0056720:	d005a494 	.word	0xd005a494
d0056724:	d0057b28 	.word	0xd0057b28
d0056728:	d0057b48 	.word	0xd0057b48
d005672c:	d0057b08 	.word	0xd0057b08

d0056730 <abort>:
d0056730:	b508      	push	{r3, lr}
d0056732:	2006      	movs	r0, #6
d0056734:	f000 f8c6 	bl	d00568c4 <raise>
d0056738:	2001      	movs	r0, #1
d005673a:	f7f4 fcf3 	bl	d004b124 <_exit>
	...

d0056740 <_fstat_r>:
d0056740:	b538      	push	{r3, r4, r5, lr}
d0056742:	4d07      	ldr	r5, [pc, #28]	; (d0056760 <_fstat_r+0x20>)
d0056744:	2300      	movs	r3, #0
d0056746:	4604      	mov	r4, r0
d0056748:	4608      	mov	r0, r1
d005674a:	4611      	mov	r1, r2
d005674c:	602b      	str	r3, [r5, #0]
d005674e:	f7f4 fcbf 	bl	d004b0d0 <_fstat>
d0056752:	1c43      	adds	r3, r0, #1
d0056754:	d102      	bne.n	d005675c <_fstat_r+0x1c>
d0056756:	682b      	ldr	r3, [r5, #0]
d0056758:	b103      	cbz	r3, d005675c <_fstat_r+0x1c>
d005675a:	6023      	str	r3, [r4, #0]
d005675c:	bd38      	pop	{r3, r4, r5, pc}
d005675e:	bf00      	nop
d0056760:	d00fcc40 	.word	0xd00fcc40

d0056764 <_isatty_r>:
d0056764:	b538      	push	{r3, r4, r5, lr}
d0056766:	4d06      	ldr	r5, [pc, #24]	; (d0056780 <_isatty_r+0x1c>)
d0056768:	2300      	movs	r3, #0
d005676a:	4604      	mov	r4, r0
d005676c:	4608      	mov	r0, r1
d005676e:	602b      	str	r3, [r5, #0]
d0056770:	f7f4 fcd6 	bl	d004b120 <_isatty>
d0056774:	1c43      	adds	r3, r0, #1
d0056776:	d102      	bne.n	d005677e <_isatty_r+0x1a>
d0056778:	682b      	ldr	r3, [r5, #0]
d005677a:	b103      	cbz	r3, d005677e <_isatty_r+0x1a>
d005677c:	6023      	str	r3, [r4, #0]
d005677e:	bd38      	pop	{r3, r4, r5, pc}
d0056780:	d00fcc40 	.word	0xd00fcc40
	...

d0056790 <memchr>:
d0056790:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0056794:	2a10      	cmp	r2, #16
d0056796:	db2b      	blt.n	d00567f0 <memchr+0x60>
d0056798:	f010 0f07 	tst.w	r0, #7
d005679c:	d008      	beq.n	d00567b0 <memchr+0x20>
d005679e:	f810 3b01 	ldrb.w	r3, [r0], #1
d00567a2:	3a01      	subs	r2, #1
d00567a4:	428b      	cmp	r3, r1
d00567a6:	d02d      	beq.n	d0056804 <memchr+0x74>
d00567a8:	f010 0f07 	tst.w	r0, #7
d00567ac:	b342      	cbz	r2, d0056800 <memchr+0x70>
d00567ae:	d1f6      	bne.n	d005679e <memchr+0xe>
d00567b0:	b4f0      	push	{r4, r5, r6, r7}
d00567b2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00567b6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00567ba:	f022 0407 	bic.w	r4, r2, #7
d00567be:	f07f 0700 	mvns.w	r7, #0
d00567c2:	2300      	movs	r3, #0
d00567c4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00567c8:	3c08      	subs	r4, #8
d00567ca:	ea85 0501 	eor.w	r5, r5, r1
d00567ce:	ea86 0601 	eor.w	r6, r6, r1
d00567d2:	fa85 f547 	uadd8	r5, r5, r7
d00567d6:	faa3 f587 	sel	r5, r3, r7
d00567da:	fa86 f647 	uadd8	r6, r6, r7
d00567de:	faa5 f687 	sel	r6, r5, r7
d00567e2:	b98e      	cbnz	r6, d0056808 <memchr+0x78>
d00567e4:	d1ee      	bne.n	d00567c4 <memchr+0x34>
d00567e6:	bcf0      	pop	{r4, r5, r6, r7}
d00567e8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00567ec:	f002 0207 	and.w	r2, r2, #7
d00567f0:	b132      	cbz	r2, d0056800 <memchr+0x70>
d00567f2:	f810 3b01 	ldrb.w	r3, [r0], #1
d00567f6:	3a01      	subs	r2, #1
d00567f8:	ea83 0301 	eor.w	r3, r3, r1
d00567fc:	b113      	cbz	r3, d0056804 <memchr+0x74>
d00567fe:	d1f8      	bne.n	d00567f2 <memchr+0x62>
d0056800:	2000      	movs	r0, #0
d0056802:	4770      	bx	lr
d0056804:	3801      	subs	r0, #1
d0056806:	4770      	bx	lr
d0056808:	2d00      	cmp	r5, #0
d005680a:	bf06      	itte	eq
d005680c:	4635      	moveq	r5, r6
d005680e:	3803      	subeq	r0, #3
d0056810:	3807      	subne	r0, #7
d0056812:	f015 0f01 	tst.w	r5, #1
d0056816:	d107      	bne.n	d0056828 <memchr+0x98>
d0056818:	3001      	adds	r0, #1
d005681a:	f415 7f80 	tst.w	r5, #256	; 0x100
d005681e:	bf02      	ittt	eq
d0056820:	3001      	addeq	r0, #1
d0056822:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0056826:	3001      	addeq	r0, #1
d0056828:	bcf0      	pop	{r4, r5, r6, r7}
d005682a:	3801      	subs	r0, #1
d005682c:	4770      	bx	lr
d005682e:	bf00      	nop

d0056830 <memmove>:
d0056830:	4288      	cmp	r0, r1
d0056832:	b510      	push	{r4, lr}
d0056834:	eb01 0402 	add.w	r4, r1, r2
d0056838:	d902      	bls.n	d0056840 <memmove+0x10>
d005683a:	4284      	cmp	r4, r0
d005683c:	4623      	mov	r3, r4
d005683e:	d807      	bhi.n	d0056850 <memmove+0x20>
d0056840:	1e43      	subs	r3, r0, #1
d0056842:	42a1      	cmp	r1, r4
d0056844:	d008      	beq.n	d0056858 <memmove+0x28>
d0056846:	f811 2b01 	ldrb.w	r2, [r1], #1
d005684a:	f803 2f01 	strb.w	r2, [r3, #1]!
d005684e:	e7f8      	b.n	d0056842 <memmove+0x12>
d0056850:	4402      	add	r2, r0
d0056852:	4601      	mov	r1, r0
d0056854:	428a      	cmp	r2, r1
d0056856:	d100      	bne.n	d005685a <memmove+0x2a>
d0056858:	bd10      	pop	{r4, pc}
d005685a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d005685e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0056862:	e7f7      	b.n	d0056854 <memmove+0x24>

d0056864 <_malloc_usable_size_r>:
d0056864:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0056868:	1f18      	subs	r0, r3, #4
d005686a:	2b00      	cmp	r3, #0
d005686c:	bfbc      	itt	lt
d005686e:	580b      	ldrlt	r3, [r1, r0]
d0056870:	18c0      	addlt	r0, r0, r3
d0056872:	4770      	bx	lr

d0056874 <_raise_r>:
d0056874:	291f      	cmp	r1, #31
d0056876:	b538      	push	{r3, r4, r5, lr}
d0056878:	4604      	mov	r4, r0
d005687a:	460d      	mov	r5, r1
d005687c:	d904      	bls.n	d0056888 <_raise_r+0x14>
d005687e:	2316      	movs	r3, #22
d0056880:	6003      	str	r3, [r0, #0]
d0056882:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056886:	bd38      	pop	{r3, r4, r5, pc}
d0056888:	6c42      	ldr	r2, [r0, #68]	; 0x44
d005688a:	b112      	cbz	r2, d0056892 <_raise_r+0x1e>
d005688c:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d0056890:	b94b      	cbnz	r3, d00568a6 <_raise_r+0x32>
d0056892:	4620      	mov	r0, r4
d0056894:	f000 f830 	bl	d00568f8 <_getpid_r>
d0056898:	462a      	mov	r2, r5
d005689a:	4601      	mov	r1, r0
d005689c:	4620      	mov	r0, r4
d005689e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d00568a2:	f000 b817 	b.w	d00568d4 <_kill_r>
d00568a6:	2b01      	cmp	r3, #1
d00568a8:	d00a      	beq.n	d00568c0 <_raise_r+0x4c>
d00568aa:	1c59      	adds	r1, r3, #1
d00568ac:	d103      	bne.n	d00568b6 <_raise_r+0x42>
d00568ae:	2316      	movs	r3, #22
d00568b0:	6003      	str	r3, [r0, #0]
d00568b2:	2001      	movs	r0, #1
d00568b4:	e7e7      	b.n	d0056886 <_raise_r+0x12>
d00568b6:	2400      	movs	r4, #0
d00568b8:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d00568bc:	4628      	mov	r0, r5
d00568be:	4798      	blx	r3
d00568c0:	2000      	movs	r0, #0
d00568c2:	e7e0      	b.n	d0056886 <_raise_r+0x12>

d00568c4 <raise>:
d00568c4:	4b02      	ldr	r3, [pc, #8]	; (d00568d0 <raise+0xc>)
d00568c6:	4601      	mov	r1, r0
d00568c8:	6818      	ldr	r0, [r3, #0]
d00568ca:	f7ff bfd3 	b.w	d0056874 <_raise_r>
d00568ce:	bf00      	nop
d00568d0:	d005a494 	.word	0xd005a494

d00568d4 <_kill_r>:
d00568d4:	b538      	push	{r3, r4, r5, lr}
d00568d6:	4d07      	ldr	r5, [pc, #28]	; (d00568f4 <_kill_r+0x20>)
d00568d8:	2300      	movs	r3, #0
d00568da:	4604      	mov	r4, r0
d00568dc:	4608      	mov	r0, r1
d00568de:	4611      	mov	r1, r2
d00568e0:	602b      	str	r3, [r5, #0]
d00568e2:	f7f4 fc23 	bl	d004b12c <_kill>
d00568e6:	1c43      	adds	r3, r0, #1
d00568e8:	d102      	bne.n	d00568f0 <_kill_r+0x1c>
d00568ea:	682b      	ldr	r3, [r5, #0]
d00568ec:	b103      	cbz	r3, d00568f0 <_kill_r+0x1c>
d00568ee:	6023      	str	r3, [r4, #0]
d00568f0:	bd38      	pop	{r3, r4, r5, pc}
d00568f2:	bf00      	nop
d00568f4:	d00fcc40 	.word	0xd00fcc40

d00568f8 <_getpid_r>:
d00568f8:	f7f4 bc16 	b.w	d004b128 <_getpid>

d00568fc <sinf_poly>:
d00568fc:	07cb      	lsls	r3, r1, #31
d00568fe:	d412      	bmi.n	d0056926 <sinf_poly+0x2a>
d0056900:	ee21 6b00 	vmul.f64	d6, d1, d0
d0056904:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0056908:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005690c:	eea5 7b01 	vfma.f64	d7, d5, d1
d0056910:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0056914:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056918:	eea5 0b06 	vfma.f64	d0, d5, d6
d005691c:	eea7 0b01 	vfma.f64	d0, d7, d1
d0056920:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056924:	4770      	bx	lr
d0056926:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005692a:	ee21 6b01 	vmul.f64	d6, d1, d1
d005692e:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0056932:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0056936:	eea1 7b05 	vfma.f64	d7, d1, d5
d005693a:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005693e:	eea1 0b05 	vfma.f64	d0, d1, d5
d0056942:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0056946:	ee21 1b06 	vmul.f64	d1, d1, d6
d005694a:	eea6 0b05 	vfma.f64	d0, d6, d5
d005694e:	e7e5      	b.n	d005691c <sinf_poly+0x20>

d0056950 <cosf>:
d0056950:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0056952:	ee10 4a10 	vmov	r4, s0
d0056956:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005695a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005695e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0056962:	d20c      	bcs.n	d005697e <cosf+0x2e>
d0056964:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056968:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005696c:	d378      	bcc.n	d0056a60 <cosf+0x110>
d005696e:	eeb0 0b46 	vmov.f64	d0, d6
d0056972:	483f      	ldr	r0, [pc, #252]	; (d0056a70 <cosf+0x120>)
d0056974:	2101      	movs	r1, #1
d0056976:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005697a:	f7ff bfbf 	b.w	d00568fc <sinf_poly>
d005697e:	f240 422e 	movw	r2, #1070	; 0x42e
d0056982:	4293      	cmp	r3, r2
d0056984:	d826      	bhi.n	d00569d4 <cosf+0x84>
d0056986:	4b3a      	ldr	r3, [pc, #232]	; (d0056a70 <cosf+0x120>)
d0056988:	ed93 7b08 	vldr	d7, [r3, #32]
d005698c:	ee26 7b07 	vmul.f64	d7, d6, d7
d0056990:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0056994:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0056998:	ee17 1a90 	vmov	r1, s15
d005699c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00569a0:	1609      	asrs	r1, r1, #24
d00569a2:	ee07 1a90 	vmov	s15, r1
d00569a6:	f001 0203 	and.w	r2, r1, #3
d00569aa:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00569ae:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00569b2:	ed92 0b00 	vldr	d0, [r2]
d00569b6:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00569ba:	f011 0f02 	tst.w	r1, #2
d00569be:	eea5 6b47 	vfms.f64	d6, d5, d7
d00569c2:	f081 0101 	eor.w	r1, r1, #1
d00569c6:	bf08      	it	eq
d00569c8:	4618      	moveq	r0, r3
d00569ca:	ee26 1b06 	vmul.f64	d1, d6, d6
d00569ce:	ee20 0b06 	vmul.f64	d0, d0, d6
d00569d2:	e7d0      	b.n	d0056976 <cosf+0x26>
d00569d4:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00569d8:	d23e      	bcs.n	d0056a58 <cosf+0x108>
d00569da:	4b26      	ldr	r3, [pc, #152]	; (d0056a74 <cosf+0x124>)
d00569dc:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00569e0:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00569e4:	f3c4 0116 	ubfx	r1, r4, #0, #23
d00569e8:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d00569ec:	6a06      	ldr	r6, [r0, #32]
d00569ee:	6900      	ldr	r0, [r0, #16]
d00569f0:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d00569f4:	40a9      	lsls	r1, r5
d00569f6:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d00569fa:	fba1 6706 	umull	r6, r7, r1, r6
d00569fe:	fb05 f301 	mul.w	r3, r5, r1
d0056a02:	463a      	mov	r2, r7
d0056a04:	fbe0 2301 	umlal	r2, r3, r0, r1
d0056a08:	1c11      	adds	r1, r2, #0
d0056a0a:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0056a0e:	2000      	movs	r0, #0
d0056a10:	1a10      	subs	r0, r2, r0
d0056a12:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0056a16:	eb63 0101 	sbc.w	r1, r3, r1
d0056a1a:	f000 fdd5 	bl	d00575c8 <__aeabi_l2d>
d0056a1e:	0fb5      	lsrs	r5, r6, #30
d0056a20:	4b13      	ldr	r3, [pc, #76]	; (d0056a70 <cosf+0x120>)
d0056a22:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0056a26:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0056a68 <cosf+0x118>
d0056a2a:	ec41 0b17 	vmov	d7, r0, r1
d0056a2e:	f004 0203 	and.w	r2, r4, #3
d0056a32:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0056a36:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056a3a:	ed92 7b00 	vldr	d7, [r2]
d0056a3e:	ee20 1b00 	vmul.f64	d1, d0, d0
d0056a42:	f014 0f02 	tst.w	r4, #2
d0056a46:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0056a4a:	f085 0101 	eor.w	r1, r5, #1
d0056a4e:	bf08      	it	eq
d0056a50:	4618      	moveq	r0, r3
d0056a52:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056a56:	e78e      	b.n	d0056976 <cosf+0x26>
d0056a58:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0056a5c:	f000 b844 	b.w	d0056ae8 <__math_invalidf>
d0056a60:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0056a64:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0056a66:	bf00      	nop
d0056a68:	54442d18 	.word	0x54442d18
d0056a6c:	3c1921fb 	.word	0x3c1921fb
d0056a70:	d0057f20 	.word	0xd0057f20
d0056a74:	d0057ec0 	.word	0xd0057ec0

d0056a78 <with_errnof>:
d0056a78:	b513      	push	{r0, r1, r4, lr}
d0056a7a:	4604      	mov	r4, r0
d0056a7c:	ed8d 0a01 	vstr	s0, [sp, #4]
d0056a80:	f7fe fbcc 	bl	d005521c <__errno>
d0056a84:	ed9d 0a01 	vldr	s0, [sp, #4]
d0056a88:	6004      	str	r4, [r0, #0]
d0056a8a:	b002      	add	sp, #8
d0056a8c:	bd10      	pop	{r4, pc}

d0056a8e <xflowf>:
d0056a8e:	b130      	cbz	r0, d0056a9e <xflowf+0x10>
d0056a90:	eef1 7a40 	vneg.f32	s15, s0
d0056a94:	ee27 0a80 	vmul.f32	s0, s15, s0
d0056a98:	2022      	movs	r0, #34	; 0x22
d0056a9a:	f7ff bfed 	b.w	d0056a78 <with_errnof>
d0056a9e:	eef0 7a40 	vmov.f32	s15, s0
d0056aa2:	e7f7      	b.n	d0056a94 <xflowf+0x6>

d0056aa4 <__math_uflowf>:
d0056aa4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056aac <__math_uflowf+0x8>
d0056aa8:	f7ff bff1 	b.w	d0056a8e <xflowf>
d0056aac:	10000000 	.word	0x10000000

d0056ab0 <__math_may_uflowf>:
d0056ab0:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056ab8 <__math_may_uflowf+0x8>
d0056ab4:	f7ff bfeb 	b.w	d0056a8e <xflowf>
d0056ab8:	1a200000 	.word	0x1a200000

d0056abc <__math_oflowf>:
d0056abc:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056ac4 <__math_oflowf+0x8>
d0056ac0:	f7ff bfe5 	b.w	d0056a8e <xflowf>
d0056ac4:	70000000 	.word	0x70000000

d0056ac8 <__math_divzerof>:
d0056ac8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0056acc:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0056ad0:	2800      	cmp	r0, #0
d0056ad2:	fe40 7a27 	vseleq.f32	s15, s0, s15
d0056ad6:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0056ae4 <__math_divzerof+0x1c>
d0056ada:	2022      	movs	r0, #34	; 0x22
d0056adc:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0056ae0:	f7ff bfca 	b.w	d0056a78 <with_errnof>
d0056ae4:	00000000 	.word	0x00000000

d0056ae8 <__math_invalidf>:
d0056ae8:	eef0 7a40 	vmov.f32	s15, s0
d0056aec:	ee30 7a40 	vsub.f32	s14, s0, s0
d0056af0:	eef4 7a67 	vcmp.f32	s15, s15
d0056af4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056af8:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0056afc:	d602      	bvs.n	d0056b04 <__math_invalidf+0x1c>
d0056afe:	2021      	movs	r0, #33	; 0x21
d0056b00:	f7ff bfba 	b.w	d0056a78 <with_errnof>
d0056b04:	4770      	bx	lr
	...

d0056b08 <expf>:
d0056b08:	ee10 2a10 	vmov	r2, s0
d0056b0c:	b470      	push	{r4, r5, r6}
d0056b0e:	f3c2 530a 	ubfx	r3, r2, #20, #11
d0056b12:	f240 442a 	movw	r4, #1066	; 0x42a
d0056b16:	42a3      	cmp	r3, r4
d0056b18:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0056b1c:	d92a      	bls.n	d0056b74 <expf+0x6c>
d0056b1e:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d0056b22:	d059      	beq.n	d0056bd8 <expf+0xd0>
d0056b24:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056b28:	d303      	bcc.n	d0056b32 <expf+0x2a>
d0056b2a:	ee30 0a00 	vadd.f32	s0, s0, s0
d0056b2e:	bc70      	pop	{r4, r5, r6}
d0056b30:	4770      	bx	lr
d0056b32:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0056be0 <expf+0xd8>
d0056b36:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0056b3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056b3e:	dd03      	ble.n	d0056b48 <expf+0x40>
d0056b40:	bc70      	pop	{r4, r5, r6}
d0056b42:	2000      	movs	r0, #0
d0056b44:	f7ff bfba 	b.w	d0056abc <__math_oflowf>
d0056b48:	eddf 7a26 	vldr	s15, [pc, #152]	; d0056be4 <expf+0xdc>
d0056b4c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0056b50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056b54:	d503      	bpl.n	d0056b5e <expf+0x56>
d0056b56:	bc70      	pop	{r4, r5, r6}
d0056b58:	2000      	movs	r0, #0
d0056b5a:	f7ff bfa3 	b.w	d0056aa4 <__math_uflowf>
d0056b5e:	eddf 7a22 	vldr	s15, [pc, #136]	; d0056be8 <expf+0xe0>
d0056b62:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0056b66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056b6a:	d503      	bpl.n	d0056b74 <expf+0x6c>
d0056b6c:	bc70      	pop	{r4, r5, r6}
d0056b6e:	2000      	movs	r0, #0
d0056b70:	f7ff bf9e 	b.w	d0056ab0 <__math_may_uflowf>
d0056b74:	4b1d      	ldr	r3, [pc, #116]	; (d0056bec <expf+0xe4>)
d0056b76:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d0056b7a:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d0056b7e:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d0056b82:	eeb0 7b44 	vmov.f64	d7, d4
d0056b86:	eea5 7b06 	vfma.f64	d7, d5, d6
d0056b8a:	ee17 5a10 	vmov	r5, s14
d0056b8e:	ee37 7b44 	vsub.f64	d7, d7, d4
d0056b92:	f005 021f 	and.w	r2, r5, #31
d0056b96:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0056b9a:	e9d2 4600 	ldrd	r4, r6, [r2]
d0056b9e:	ee95 7b06 	vfnms.f64	d7, d5, d6
d0056ba2:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d0056ba6:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d0056baa:	eea4 0b07 	vfma.f64	d0, d4, d7
d0056bae:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d0056bb2:	2300      	movs	r3, #0
d0056bb4:	1918      	adds	r0, r3, r4
d0056bb6:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d0056bba:	eb42 0106 	adc.w	r1, r2, r6
d0056bbe:	eea5 6b07 	vfma.f64	d6, d5, d7
d0056bc2:	ee27 5b07 	vmul.f64	d5, d7, d7
d0056bc6:	ec41 0b17 	vmov	d7, r0, r1
d0056bca:	eea6 0b05 	vfma.f64	d0, d6, d5
d0056bce:	ee20 0b07 	vmul.f64	d0, d0, d7
d0056bd2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056bd6:	e7aa      	b.n	d0056b2e <expf+0x26>
d0056bd8:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0056bf0 <expf+0xe8>
d0056bdc:	e7a7      	b.n	d0056b2e <expf+0x26>
d0056bde:	bf00      	nop
d0056be0:	42b17217 	.word	0x42b17217
d0056be4:	c2cff1b4 	.word	0xc2cff1b4
d0056be8:	c2ce8ecf 	.word	0xc2ce8ecf
d0056bec:	d0057c58 	.word	0xd0057c58
d0056bf0:	00000000 	.word	0x00000000

d0056bf4 <logf>:
d0056bf4:	ee10 3a10 	vmov	r3, s0
d0056bf8:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d0056bfc:	b410      	push	{r4}
d0056bfe:	d055      	beq.n	d0056cac <logf+0xb8>
d0056c00:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0056c04:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0056c08:	d31a      	bcc.n	d0056c40 <logf+0x4c>
d0056c0a:	005a      	lsls	r2, r3, #1
d0056c0c:	d104      	bne.n	d0056c18 <logf+0x24>
d0056c0e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056c12:	2001      	movs	r0, #1
d0056c14:	f7ff bf58 	b.w	d0056ac8 <__math_divzerof>
d0056c18:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056c1c:	d043      	beq.n	d0056ca6 <logf+0xb2>
d0056c1e:	2b00      	cmp	r3, #0
d0056c20:	db02      	blt.n	d0056c28 <logf+0x34>
d0056c22:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0056c26:	d303      	bcc.n	d0056c30 <logf+0x3c>
d0056c28:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056c2c:	f7ff bf5c 	b.w	d0056ae8 <__math_invalidf>
d0056c30:	eddf 7a20 	vldr	s15, [pc, #128]	; d0056cb4 <logf+0xc0>
d0056c34:	ee20 0a27 	vmul.f32	s0, s0, s15
d0056c38:	ee10 3a10 	vmov	r3, s0
d0056c3c:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0056c40:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0056c44:	491c      	ldr	r1, [pc, #112]	; (d0056cb8 <logf+0xc4>)
d0056c46:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d0056c4a:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d0056c4e:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0056c52:	0dd4      	lsrs	r4, r2, #23
d0056c54:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0056c58:	05e4      	lsls	r4, r4, #23
d0056c5a:	ed90 6b00 	vldr	d6, [r0]
d0056c5e:	1b1b      	subs	r3, r3, r4
d0056c60:	ee07 3a90 	vmov	s15, r3
d0056c64:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0056c68:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0056c6c:	15d2      	asrs	r2, r2, #23
d0056c6e:	eea6 0b07 	vfma.f64	d0, d6, d7
d0056c72:	ed90 6b02 	vldr	d6, [r0, #8]
d0056c76:	ee07 2a90 	vmov	s15, r2
d0056c7a:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0056c7e:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d0056c82:	eea7 6b05 	vfma.f64	d6, d7, d5
d0056c86:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d0056c8a:	ee20 5b00 	vmul.f64	d5, d0, d0
d0056c8e:	eea4 7b00 	vfma.f64	d7, d4, d0
d0056c92:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d0056c96:	ee30 0b06 	vadd.f64	d0, d0, d6
d0056c9a:	eea4 7b05 	vfma.f64	d7, d4, d5
d0056c9e:	eea5 0b07 	vfma.f64	d0, d5, d7
d0056ca2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056ca6:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056caa:	4770      	bx	lr
d0056cac:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0056cbc <logf+0xc8>
d0056cb0:	e7f9      	b.n	d0056ca6 <logf+0xb2>
d0056cb2:	bf00      	nop
d0056cb4:	4b000000 	.word	0x4b000000
d0056cb8:	d0057da0 	.word	0xd0057da0
d0056cbc:	00000000 	.word	0x00000000

d0056cc0 <sinf_poly>:
d0056cc0:	07cb      	lsls	r3, r1, #31
d0056cc2:	d412      	bmi.n	d0056cea <sinf_poly+0x2a>
d0056cc4:	ee21 6b00 	vmul.f64	d6, d1, d0
d0056cc8:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0056ccc:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0056cd0:	eea5 7b01 	vfma.f64	d7, d5, d1
d0056cd4:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0056cd8:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056cdc:	eea5 0b06 	vfma.f64	d0, d5, d6
d0056ce0:	eea7 0b01 	vfma.f64	d0, d7, d1
d0056ce4:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056ce8:	4770      	bx	lr
d0056cea:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0056cee:	ee21 6b01 	vmul.f64	d6, d1, d1
d0056cf2:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0056cf6:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0056cfa:	eea1 7b05 	vfma.f64	d7, d1, d5
d0056cfe:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0056d02:	eea1 0b05 	vfma.f64	d0, d1, d5
d0056d06:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0056d0a:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056d0e:	eea6 0b05 	vfma.f64	d0, d6, d5
d0056d12:	e7e5      	b.n	d0056ce0 <sinf_poly+0x20>
d0056d14:	0000      	movs	r0, r0
	...

d0056d18 <sinf>:
d0056d18:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d0056d1a:	ee10 4a10 	vmov	r4, s0
d0056d1e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0056d22:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0056d26:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0056d2a:	eef0 7a40 	vmov.f32	s15, s0
d0056d2e:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0056d32:	d218      	bcs.n	d0056d66 <sinf+0x4e>
d0056d34:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056d38:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0056d3c:	d20a      	bcs.n	d0056d54 <sinf+0x3c>
d0056d3e:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0056d42:	d103      	bne.n	d0056d4c <sinf+0x34>
d0056d44:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0056d48:	ed8d 1a01 	vstr	s2, [sp, #4]
d0056d4c:	eeb0 0a67 	vmov.f32	s0, s15
d0056d50:	b003      	add	sp, #12
d0056d52:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056d54:	483e      	ldr	r0, [pc, #248]	; (d0056e50 <sinf+0x138>)
d0056d56:	eeb0 0b46 	vmov.f64	d0, d6
d0056d5a:	2100      	movs	r1, #0
d0056d5c:	b003      	add	sp, #12
d0056d5e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056d62:	f7ff bfad 	b.w	d0056cc0 <sinf_poly>
d0056d66:	f240 422e 	movw	r2, #1070	; 0x42e
d0056d6a:	4293      	cmp	r3, r2
d0056d6c:	d824      	bhi.n	d0056db8 <sinf+0xa0>
d0056d6e:	4b38      	ldr	r3, [pc, #224]	; (d0056e50 <sinf+0x138>)
d0056d70:	ed93 7b08 	vldr	d7, [r3, #32]
d0056d74:	ee26 7b07 	vmul.f64	d7, d6, d7
d0056d78:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0056d7c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0056d80:	ee17 1a90 	vmov	r1, s15
d0056d84:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0056d88:	1609      	asrs	r1, r1, #24
d0056d8a:	ee07 1a90 	vmov	s15, r1
d0056d8e:	f001 0203 	and.w	r2, r1, #3
d0056d92:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0056d96:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0056d9a:	ed92 0b00 	vldr	d0, [r2]
d0056d9e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0056da2:	f011 0f02 	tst.w	r1, #2
d0056da6:	eea5 6b47 	vfms.f64	d6, d5, d7
d0056daa:	bf08      	it	eq
d0056dac:	4618      	moveq	r0, r3
d0056dae:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056db2:	ee20 0b06 	vmul.f64	d0, d0, d6
d0056db6:	e7d1      	b.n	d0056d5c <sinf+0x44>
d0056db8:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056dbc:	d23d      	bcs.n	d0056e3a <sinf+0x122>
d0056dbe:	4b25      	ldr	r3, [pc, #148]	; (d0056e54 <sinf+0x13c>)
d0056dc0:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0056dc4:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0056dc8:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0056dcc:	6a06      	ldr	r6, [r0, #32]
d0056dce:	6900      	ldr	r0, [r0, #16]
d0056dd0:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0056dd4:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0056dd8:	40a9      	lsls	r1, r5
d0056dda:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0056dde:	fba1 6706 	umull	r6, r7, r1, r6
d0056de2:	fb05 f301 	mul.w	r3, r5, r1
d0056de6:	463a      	mov	r2, r7
d0056de8:	fbe0 2301 	umlal	r2, r3, r0, r1
d0056dec:	1c11      	adds	r1, r2, #0
d0056dee:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0056df2:	2000      	movs	r0, #0
d0056df4:	1a10      	subs	r0, r2, r0
d0056df6:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0056dfa:	eb63 0101 	sbc.w	r1, r3, r1
d0056dfe:	f000 fbe3 	bl	d00575c8 <__aeabi_l2d>
d0056e02:	0fb5      	lsrs	r5, r6, #30
d0056e04:	4a12      	ldr	r2, [pc, #72]	; (d0056e50 <sinf+0x138>)
d0056e06:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d0056e0a:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0056e48 <sinf+0x130>
d0056e0e:	ec41 0b17 	vmov	d7, r0, r1
d0056e12:	f003 0103 	and.w	r1, r3, #3
d0056e16:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d0056e1a:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056e1e:	ed91 7b00 	vldr	d7, [r1]
d0056e22:	ee20 1b00 	vmul.f64	d1, d0, d0
d0056e26:	f013 0f02 	tst.w	r3, #2
d0056e2a:	f102 0070 	add.w	r0, r2, #112	; 0x70
d0056e2e:	4629      	mov	r1, r5
d0056e30:	bf08      	it	eq
d0056e32:	4610      	moveq	r0, r2
d0056e34:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056e38:	e790      	b.n	d0056d5c <sinf+0x44>
d0056e3a:	b003      	add	sp, #12
d0056e3c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056e40:	f7ff be52 	b.w	d0056ae8 <__math_invalidf>
d0056e44:	f3af 8000 	nop.w
d0056e48:	54442d18 	.word	0x54442d18
d0056e4c:	3c1921fb 	.word	0x3c1921fb
d0056e50:	d0057f20 	.word	0xd0057f20
d0056e54:	d0057ec0 	.word	0xd0057ec0

d0056e58 <atan2f>:
d0056e58:	f000 b82c 	b.w	d0056eb4 <__ieee754_atan2f>

d0056e5c <fmodf>:
d0056e5c:	b508      	push	{r3, lr}
d0056e5e:	ed2d 8b02 	vpush	{d8}
d0056e62:	eef0 8a40 	vmov.f32	s17, s0
d0056e66:	eeb0 8a60 	vmov.f32	s16, s1
d0056e6a:	f000 f8c1 	bl	d0056ff0 <__ieee754_fmodf>
d0056e6e:	4b0f      	ldr	r3, [pc, #60]	; (d0056eac <fmodf+0x50>)
d0056e70:	f993 3000 	ldrsb.w	r3, [r3]
d0056e74:	3301      	adds	r3, #1
d0056e76:	d016      	beq.n	d0056ea6 <fmodf+0x4a>
d0056e78:	eeb4 8a48 	vcmp.f32	s16, s16
d0056e7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056e80:	d611      	bvs.n	d0056ea6 <fmodf+0x4a>
d0056e82:	eef4 8a68 	vcmp.f32	s17, s17
d0056e86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056e8a:	d60c      	bvs.n	d0056ea6 <fmodf+0x4a>
d0056e8c:	eddf 8a08 	vldr	s17, [pc, #32]	; d0056eb0 <fmodf+0x54>
d0056e90:	eeb4 8a68 	vcmp.f32	s16, s17
d0056e94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056e98:	d105      	bne.n	d0056ea6 <fmodf+0x4a>
d0056e9a:	f7fe f9bf 	bl	d005521c <__errno>
d0056e9e:	ee88 0aa8 	vdiv.f32	s0, s17, s17
d0056ea2:	2321      	movs	r3, #33	; 0x21
d0056ea4:	6003      	str	r3, [r0, #0]
d0056ea6:	ecbd 8b02 	vpop	{d8}
d0056eaa:	bd08      	pop	{r3, pc}
d0056eac:	d005a4f8 	.word	0xd005a4f8
d0056eb0:	00000000 	.word	0x00000000

d0056eb4 <__ieee754_atan2f>:
d0056eb4:	ee10 2a90 	vmov	r2, s1
d0056eb8:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d0056ebc:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0056ec0:	b510      	push	{r4, lr}
d0056ec2:	eef0 7a40 	vmov.f32	s15, s0
d0056ec6:	dc06      	bgt.n	d0056ed6 <__ieee754_atan2f+0x22>
d0056ec8:	ee10 0a10 	vmov	r0, s0
d0056ecc:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d0056ed0:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056ed4:	dd04      	ble.n	d0056ee0 <__ieee754_atan2f+0x2c>
d0056ed6:	ee77 7aa0 	vadd.f32	s15, s15, s1
d0056eda:	eeb0 0a67 	vmov.f32	s0, s15
d0056ede:	bd10      	pop	{r4, pc}
d0056ee0:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d0056ee4:	d103      	bne.n	d0056eee <__ieee754_atan2f+0x3a>
d0056ee6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0056eea:	f000 b903 	b.w	d00570f4 <atanf>
d0056eee:	1794      	asrs	r4, r2, #30
d0056ef0:	f004 0402 	and.w	r4, r4, #2
d0056ef4:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d0056ef8:	b93b      	cbnz	r3, d0056f0a <__ieee754_atan2f+0x56>
d0056efa:	2c02      	cmp	r4, #2
d0056efc:	d05c      	beq.n	d0056fb8 <__ieee754_atan2f+0x104>
d0056efe:	ed9f 7a33 	vldr	s14, [pc, #204]	; d0056fcc <__ieee754_atan2f+0x118>
d0056f02:	2c03      	cmp	r4, #3
d0056f04:	fe47 7a00 	vseleq.f32	s15, s14, s0
d0056f08:	e7e7      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056f0a:	b939      	cbnz	r1, d0056f1c <__ieee754_atan2f+0x68>
d0056f0c:	eddf 7a30 	vldr	s15, [pc, #192]	; d0056fd0 <__ieee754_atan2f+0x11c>
d0056f10:	ed9f 0a30 	vldr	s0, [pc, #192]	; d0056fd4 <__ieee754_atan2f+0x120>
d0056f14:	2800      	cmp	r0, #0
d0056f16:	fe67 7a80 	vselge.f32	s15, s15, s0
d0056f1a:	e7de      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056f1c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0056f20:	d110      	bne.n	d0056f44 <__ieee754_atan2f+0x90>
d0056f22:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056f26:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d0056f2a:	d107      	bne.n	d0056f3c <__ieee754_atan2f+0x88>
d0056f2c:	2c02      	cmp	r4, #2
d0056f2e:	d846      	bhi.n	d0056fbe <__ieee754_atan2f+0x10a>
d0056f30:	4b29      	ldr	r3, [pc, #164]	; (d0056fd8 <__ieee754_atan2f+0x124>)
d0056f32:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d0056f36:	edd4 7a00 	vldr	s15, [r4]
d0056f3a:	e7ce      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056f3c:	2c02      	cmp	r4, #2
d0056f3e:	d841      	bhi.n	d0056fc4 <__ieee754_atan2f+0x110>
d0056f40:	4b26      	ldr	r3, [pc, #152]	; (d0056fdc <__ieee754_atan2f+0x128>)
d0056f42:	e7f6      	b.n	d0056f32 <__ieee754_atan2f+0x7e>
d0056f44:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056f48:	d0e0      	beq.n	d0056f0c <__ieee754_atan2f+0x58>
d0056f4a:	1a5b      	subs	r3, r3, r1
d0056f4c:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d0056f50:	ea4f 51e3 	mov.w	r1, r3, asr #23
d0056f54:	da1a      	bge.n	d0056f8c <__ieee754_atan2f+0xd8>
d0056f56:	2a00      	cmp	r2, #0
d0056f58:	da01      	bge.n	d0056f5e <__ieee754_atan2f+0xaa>
d0056f5a:	313c      	adds	r1, #60	; 0x3c
d0056f5c:	db19      	blt.n	d0056f92 <__ieee754_atan2f+0xde>
d0056f5e:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0056f62:	f000 f99b 	bl	d005729c <fabsf>
d0056f66:	f000 f8c5 	bl	d00570f4 <atanf>
d0056f6a:	eef0 7a40 	vmov.f32	s15, s0
d0056f6e:	2c01      	cmp	r4, #1
d0056f70:	d012      	beq.n	d0056f98 <__ieee754_atan2f+0xe4>
d0056f72:	2c02      	cmp	r4, #2
d0056f74:	d017      	beq.n	d0056fa6 <__ieee754_atan2f+0xf2>
d0056f76:	2c00      	cmp	r4, #0
d0056f78:	d0af      	beq.n	d0056eda <__ieee754_atan2f+0x26>
d0056f7a:	ed9f 0a19 	vldr	s0, [pc, #100]	; d0056fe0 <__ieee754_atan2f+0x12c>
d0056f7e:	ee77 7a80 	vadd.f32	s15, s15, s0
d0056f82:	ed9f 0a18 	vldr	s0, [pc, #96]	; d0056fe4 <__ieee754_atan2f+0x130>
d0056f86:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0056f8a:	e7a6      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056f8c:	eddf 7a10 	vldr	s15, [pc, #64]	; d0056fd0 <__ieee754_atan2f+0x11c>
d0056f90:	e7ed      	b.n	d0056f6e <__ieee754_atan2f+0xba>
d0056f92:	eddf 7a15 	vldr	s15, [pc, #84]	; d0056fe8 <__ieee754_atan2f+0x134>
d0056f96:	e7ea      	b.n	d0056f6e <__ieee754_atan2f+0xba>
d0056f98:	ee17 3a90 	vmov	r3, s15
d0056f9c:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d0056fa0:	ee07 3a90 	vmov	s15, r3
d0056fa4:	e799      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056fa6:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d0056fe0 <__ieee754_atan2f+0x12c>
d0056faa:	ee77 7a80 	vadd.f32	s15, s15, s0
d0056fae:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0056fe4 <__ieee754_atan2f+0x130>
d0056fb2:	ee70 7a67 	vsub.f32	s15, s0, s15
d0056fb6:	e790      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056fb8:	eddf 7a0a 	vldr	s15, [pc, #40]	; d0056fe4 <__ieee754_atan2f+0x130>
d0056fbc:	e78d      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056fbe:	eddf 7a0b 	vldr	s15, [pc, #44]	; d0056fec <__ieee754_atan2f+0x138>
d0056fc2:	e78a      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056fc4:	eddf 7a08 	vldr	s15, [pc, #32]	; d0056fe8 <__ieee754_atan2f+0x134>
d0056fc8:	e787      	b.n	d0056eda <__ieee754_atan2f+0x26>
d0056fca:	bf00      	nop
d0056fcc:	c0490fdb 	.word	0xc0490fdb
d0056fd0:	3fc90fdb 	.word	0x3fc90fdb
d0056fd4:	bfc90fdb 	.word	0xbfc90fdb
d0056fd8:	d0058000 	.word	0xd0058000
d0056fdc:	d005800c 	.word	0xd005800c
d0056fe0:	33bbbd2e 	.word	0x33bbbd2e
d0056fe4:	40490fdb 	.word	0x40490fdb
d0056fe8:	00000000 	.word	0x00000000
d0056fec:	3f490fdb 	.word	0x3f490fdb

d0056ff0 <__ieee754_fmodf>:
d0056ff0:	b5f0      	push	{r4, r5, r6, r7, lr}
d0056ff2:	ee10 6a90 	vmov	r6, s1
d0056ff6:	f036 4500 	bics.w	r5, r6, #2147483648	; 0x80000000
d0056ffa:	d009      	beq.n	d0057010 <__ieee754_fmodf+0x20>
d0056ffc:	ee10 2a10 	vmov	r2, s0
d0057000:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
d0057004:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0057008:	da02      	bge.n	d0057010 <__ieee754_fmodf+0x20>
d005700a:	f1b5 4fff 	cmp.w	r5, #2139095040	; 0x7f800000
d005700e:	dd04      	ble.n	d005701a <__ieee754_fmodf+0x2a>
d0057010:	ee60 0a20 	vmul.f32	s1, s0, s1
d0057014:	ee80 0aa0 	vdiv.f32	s0, s1, s1
d0057018:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005701a:	42ab      	cmp	r3, r5
d005701c:	dbfc      	blt.n	d0057018 <__ieee754_fmodf+0x28>
d005701e:	f002 4400 	and.w	r4, r2, #2147483648	; 0x80000000
d0057022:	d106      	bne.n	d0057032 <__ieee754_fmodf+0x42>
d0057024:	4a32      	ldr	r2, [pc, #200]	; (d00570f0 <__ieee754_fmodf+0x100>)
d0057026:	0fe3      	lsrs	r3, r4, #31
d0057028:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d005702c:	ed93 0a00 	vldr	s0, [r3]
d0057030:	e7f2      	b.n	d0057018 <__ieee754_fmodf+0x28>
d0057032:	f012 4fff 	tst.w	r2, #2139095040	; 0x7f800000
d0057036:	d13f      	bne.n	d00570b8 <__ieee754_fmodf+0xc8>
d0057038:	0219      	lsls	r1, r3, #8
d005703a:	f06f 007d 	mvn.w	r0, #125	; 0x7d
d005703e:	2900      	cmp	r1, #0
d0057040:	dc37      	bgt.n	d00570b2 <__ieee754_fmodf+0xc2>
d0057042:	f016 4fff 	tst.w	r6, #2139095040	; 0x7f800000
d0057046:	d13d      	bne.n	d00570c4 <__ieee754_fmodf+0xd4>
d0057048:	022f      	lsls	r7, r5, #8
d005704a:	f06f 017d 	mvn.w	r1, #125	; 0x7d
d005704e:	2f00      	cmp	r7, #0
d0057050:	da35      	bge.n	d00570be <__ieee754_fmodf+0xce>
d0057052:	f110 0f7e 	cmn.w	r0, #126	; 0x7e
d0057056:	bfbb      	ittet	lt
d0057058:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d005705c:	1a12      	sublt	r2, r2, r0
d005705e:	f3c2 0316 	ubfxge	r3, r2, #0, #23
d0057062:	4093      	lsllt	r3, r2
d0057064:	bfa8      	it	ge
d0057066:	f443 0300 	orrge.w	r3, r3, #8388608	; 0x800000
d005706a:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d005706e:	bfb5      	itete	lt
d0057070:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0057074:	f3c6 0516 	ubfxge	r5, r6, #0, #23
d0057078:	1a52      	sublt	r2, r2, r1
d005707a:	f445 0500 	orrge.w	r5, r5, #8388608	; 0x800000
d005707e:	bfb8      	it	lt
d0057080:	4095      	lsllt	r5, r2
d0057082:	1a40      	subs	r0, r0, r1
d0057084:	1b5a      	subs	r2, r3, r5
d0057086:	bb00      	cbnz	r0, d00570ca <__ieee754_fmodf+0xda>
d0057088:	ea13 0322 	ands.w	r3, r3, r2, asr #32
d005708c:	bf38      	it	cc
d005708e:	4613      	movcc	r3, r2
d0057090:	2b00      	cmp	r3, #0
d0057092:	d0c7      	beq.n	d0057024 <__ieee754_fmodf+0x34>
d0057094:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
d0057098:	db1f      	blt.n	d00570da <__ieee754_fmodf+0xea>
d005709a:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d005709e:	db1f      	blt.n	d00570e0 <__ieee754_fmodf+0xf0>
d00570a0:	f5a3 0300 	sub.w	r3, r3, #8388608	; 0x800000
d00570a4:	317f      	adds	r1, #127	; 0x7f
d00570a6:	4323      	orrs	r3, r4
d00570a8:	ea43 53c1 	orr.w	r3, r3, r1, lsl #23
d00570ac:	ee00 3a10 	vmov	s0, r3
d00570b0:	e7b2      	b.n	d0057018 <__ieee754_fmodf+0x28>
d00570b2:	3801      	subs	r0, #1
d00570b4:	0049      	lsls	r1, r1, #1
d00570b6:	e7c2      	b.n	d005703e <__ieee754_fmodf+0x4e>
d00570b8:	15d8      	asrs	r0, r3, #23
d00570ba:	387f      	subs	r0, #127	; 0x7f
d00570bc:	e7c1      	b.n	d0057042 <__ieee754_fmodf+0x52>
d00570be:	3901      	subs	r1, #1
d00570c0:	007f      	lsls	r7, r7, #1
d00570c2:	e7c4      	b.n	d005704e <__ieee754_fmodf+0x5e>
d00570c4:	15e9      	asrs	r1, r5, #23
d00570c6:	397f      	subs	r1, #127	; 0x7f
d00570c8:	e7c3      	b.n	d0057052 <__ieee754_fmodf+0x62>
d00570ca:	2a00      	cmp	r2, #0
d00570cc:	da02      	bge.n	d00570d4 <__ieee754_fmodf+0xe4>
d00570ce:	005b      	lsls	r3, r3, #1
d00570d0:	3801      	subs	r0, #1
d00570d2:	e7d7      	b.n	d0057084 <__ieee754_fmodf+0x94>
d00570d4:	d0a6      	beq.n	d0057024 <__ieee754_fmodf+0x34>
d00570d6:	0053      	lsls	r3, r2, #1
d00570d8:	e7fa      	b.n	d00570d0 <__ieee754_fmodf+0xe0>
d00570da:	005b      	lsls	r3, r3, #1
d00570dc:	3901      	subs	r1, #1
d00570de:	e7d9      	b.n	d0057094 <__ieee754_fmodf+0xa4>
d00570e0:	f1c1 21ff 	rsb	r1, r1, #4278255360	; 0xff00ff00
d00570e4:	f501 017f 	add.w	r1, r1, #16711680	; 0xff0000
d00570e8:	3182      	adds	r1, #130	; 0x82
d00570ea:	410b      	asrs	r3, r1
d00570ec:	4323      	orrs	r3, r4
d00570ee:	e7dd      	b.n	d00570ac <__ieee754_fmodf+0xbc>
d00570f0:	d0058018 	.word	0xd0058018

d00570f4 <atanf>:
d00570f4:	b538      	push	{r3, r4, r5, lr}
d00570f6:	ee10 5a10 	vmov	r5, s0
d00570fa:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d00570fe:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d0057102:	eef0 7a40 	vmov.f32	s15, s0
d0057106:	db0f      	blt.n	d0057128 <atanf+0x34>
d0057108:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d005710c:	dd04      	ble.n	d0057118 <atanf+0x24>
d005710e:	ee70 7a00 	vadd.f32	s15, s0, s0
d0057112:	eeb0 0a67 	vmov.f32	s0, s15
d0057116:	bd38      	pop	{r3, r4, r5, pc}
d0057118:	eddf 7a4d 	vldr	s15, [pc, #308]	; d0057250 <atanf+0x15c>
d005711c:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d0057254 <atanf+0x160>
d0057120:	2d00      	cmp	r5, #0
d0057122:	fe77 7a80 	vselgt.f32	s15, s15, s0
d0057126:	e7f4      	b.n	d0057112 <atanf+0x1e>
d0057128:	4b4b      	ldr	r3, [pc, #300]	; (d0057258 <atanf+0x164>)
d005712a:	429c      	cmp	r4, r3
d005712c:	dc10      	bgt.n	d0057150 <atanf+0x5c>
d005712e:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d0057132:	da0a      	bge.n	d005714a <atanf+0x56>
d0057134:	ed9f 7a49 	vldr	s14, [pc, #292]	; d005725c <atanf+0x168>
d0057138:	ee30 7a07 	vadd.f32	s14, s0, s14
d005713c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0057140:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0057144:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057148:	dce3      	bgt.n	d0057112 <atanf+0x1e>
d005714a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d005714e:	e013      	b.n	d0057178 <atanf+0x84>
d0057150:	f000 f8a4 	bl	d005729c <fabsf>
d0057154:	4b42      	ldr	r3, [pc, #264]	; (d0057260 <atanf+0x16c>)
d0057156:	429c      	cmp	r4, r3
d0057158:	dc4f      	bgt.n	d00571fa <atanf+0x106>
d005715a:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d005715e:	429c      	cmp	r4, r3
d0057160:	dc41      	bgt.n	d00571e6 <atanf+0xf2>
d0057162:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0057166:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005716a:	eea0 7a27 	vfma.f32	s14, s0, s15
d005716e:	2300      	movs	r3, #0
d0057170:	ee30 0a27 	vadd.f32	s0, s0, s15
d0057174:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057178:	1c5a      	adds	r2, r3, #1
d005717a:	ee67 6aa7 	vmul.f32	s13, s15, s15
d005717e:	eddf 5a39 	vldr	s11, [pc, #228]	; d0057264 <atanf+0x170>
d0057182:	ed9f 6a39 	vldr	s12, [pc, #228]	; d0057268 <atanf+0x174>
d0057186:	ed9f 5a39 	vldr	s10, [pc, #228]	; d005726c <atanf+0x178>
d005718a:	ed9f 0a39 	vldr	s0, [pc, #228]	; d0057270 <atanf+0x17c>
d005718e:	ee26 7aa6 	vmul.f32	s14, s13, s13
d0057192:	eea7 6a25 	vfma.f32	s12, s14, s11
d0057196:	eddf 5a37 	vldr	s11, [pc, #220]	; d0057274 <atanf+0x180>
d005719a:	eee6 5a07 	vfma.f32	s11, s12, s14
d005719e:	ed9f 6a36 	vldr	s12, [pc, #216]	; d0057278 <atanf+0x184>
d00571a2:	eea5 6a87 	vfma.f32	s12, s11, s14
d00571a6:	eddf 5a35 	vldr	s11, [pc, #212]	; d005727c <atanf+0x188>
d00571aa:	eee6 5a07 	vfma.f32	s11, s12, s14
d00571ae:	ed9f 6a34 	vldr	s12, [pc, #208]	; d0057280 <atanf+0x18c>
d00571b2:	eea5 6a87 	vfma.f32	s12, s11, s14
d00571b6:	eddf 5a33 	vldr	s11, [pc, #204]	; d0057284 <atanf+0x190>
d00571ba:	eee7 5a05 	vfma.f32	s11, s14, s10
d00571be:	ed9f 5a32 	vldr	s10, [pc, #200]	; d0057288 <atanf+0x194>
d00571c2:	eea5 5a87 	vfma.f32	s10, s11, s14
d00571c6:	eddf 5a31 	vldr	s11, [pc, #196]	; d005728c <atanf+0x198>
d00571ca:	eee5 5a07 	vfma.f32	s11, s10, s14
d00571ce:	eea5 0a87 	vfma.f32	s0, s11, s14
d00571d2:	ee20 0a07 	vmul.f32	s0, s0, s14
d00571d6:	eea6 0a26 	vfma.f32	s0, s12, s13
d00571da:	ee27 0a80 	vmul.f32	s0, s15, s0
d00571de:	d121      	bne.n	d0057224 <atanf+0x130>
d00571e0:	ee77 7ac0 	vsub.f32	s15, s15, s0
d00571e4:	e795      	b.n	d0057112 <atanf+0x1e>
d00571e6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00571ea:	ee30 7a67 	vsub.f32	s14, s0, s15
d00571ee:	ee30 0a27 	vadd.f32	s0, s0, s15
d00571f2:	2301      	movs	r3, #1
d00571f4:	eec7 7a00 	vdiv.f32	s15, s14, s0
d00571f8:	e7be      	b.n	d0057178 <atanf+0x84>
d00571fa:	4b25      	ldr	r3, [pc, #148]	; (d0057290 <atanf+0x19c>)
d00571fc:	429c      	cmp	r4, r3
d00571fe:	dc0b      	bgt.n	d0057218 <atanf+0x124>
d0057200:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d0057204:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0057208:	eea0 7a27 	vfma.f32	s14, s0, s15
d005720c:	2302      	movs	r3, #2
d005720e:	ee70 6a67 	vsub.f32	s13, s0, s15
d0057212:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0057216:	e7af      	b.n	d0057178 <atanf+0x84>
d0057218:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005721c:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057220:	2303      	movs	r3, #3
d0057222:	e7a9      	b.n	d0057178 <atanf+0x84>
d0057224:	4a1b      	ldr	r2, [pc, #108]	; (d0057294 <atanf+0x1a0>)
d0057226:	491c      	ldr	r1, [pc, #112]	; (d0057298 <atanf+0x1a4>)
d0057228:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d005722c:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0057230:	ed93 7a00 	vldr	s14, [r3]
d0057234:	ee30 0a47 	vsub.f32	s0, s0, s14
d0057238:	2d00      	cmp	r5, #0
d005723a:	ee70 7a67 	vsub.f32	s15, s0, s15
d005723e:	ed92 0a00 	vldr	s0, [r2]
d0057242:	ee70 7a67 	vsub.f32	s15, s0, s15
d0057246:	bfb8      	it	lt
d0057248:	eef1 7a67 	vneglt.f32	s15, s15
d005724c:	e761      	b.n	d0057112 <atanf+0x1e>
d005724e:	bf00      	nop
d0057250:	3fc90fdb 	.word	0x3fc90fdb
d0057254:	bfc90fdb 	.word	0xbfc90fdb
d0057258:	3edfffff 	.word	0x3edfffff
d005725c:	7149f2ca 	.word	0x7149f2ca
d0057260:	3f97ffff 	.word	0x3f97ffff
d0057264:	3c8569d7 	.word	0x3c8569d7
d0057268:	3d4bda59 	.word	0x3d4bda59
d005726c:	bd15a221 	.word	0xbd15a221
d0057270:	be4ccccd 	.word	0xbe4ccccd
d0057274:	3d886b35 	.word	0x3d886b35
d0057278:	3dba2e6e 	.word	0x3dba2e6e
d005727c:	3e124925 	.word	0x3e124925
d0057280:	3eaaaaab 	.word	0x3eaaaaab
d0057284:	bd6ef16b 	.word	0xbd6ef16b
d0057288:	bd9d8795 	.word	0xbd9d8795
d005728c:	bde38e38 	.word	0xbde38e38
d0057290:	401bffff 	.word	0x401bffff
d0057294:	d0058020 	.word	0xd0058020
d0057298:	d0058030 	.word	0xd0058030

d005729c <fabsf>:
d005729c:	ee10 3a10 	vmov	r3, s0
d00572a0:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d00572a4:	ee00 3a10 	vmov	s0, r3
d00572a8:	4770      	bx	lr
	...

d00572ac <__aeabi_drsub>:
d00572ac:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d00572b0:	e002      	b.n	d00572b8 <__adddf3>
d00572b2:	bf00      	nop

d00572b4 <__aeabi_dsub>:
d00572b4:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d00572b8 <__adddf3>:
d00572b8:	b530      	push	{r4, r5, lr}
d00572ba:	ea4f 0441 	mov.w	r4, r1, lsl #1
d00572be:	ea4f 0543 	mov.w	r5, r3, lsl #1
d00572c2:	ea94 0f05 	teq	r4, r5
d00572c6:	bf08      	it	eq
d00572c8:	ea90 0f02 	teqeq	r0, r2
d00572cc:	bf1f      	itttt	ne
d00572ce:	ea54 0c00 	orrsne.w	ip, r4, r0
d00572d2:	ea55 0c02 	orrsne.w	ip, r5, r2
d00572d6:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d00572da:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d00572de:	f000 80e2 	beq.w	d00574a6 <__adddf3+0x1ee>
d00572e2:	ea4f 5454 	mov.w	r4, r4, lsr #21
d00572e6:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d00572ea:	bfb8      	it	lt
d00572ec:	426d      	neglt	r5, r5
d00572ee:	dd0c      	ble.n	d005730a <__adddf3+0x52>
d00572f0:	442c      	add	r4, r5
d00572f2:	ea80 0202 	eor.w	r2, r0, r2
d00572f6:	ea81 0303 	eor.w	r3, r1, r3
d00572fa:	ea82 0000 	eor.w	r0, r2, r0
d00572fe:	ea83 0101 	eor.w	r1, r3, r1
d0057302:	ea80 0202 	eor.w	r2, r0, r2
d0057306:	ea81 0303 	eor.w	r3, r1, r3
d005730a:	2d36      	cmp	r5, #54	; 0x36
d005730c:	bf88      	it	hi
d005730e:	bd30      	pophi	{r4, r5, pc}
d0057310:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0057314:	ea4f 3101 	mov.w	r1, r1, lsl #12
d0057318:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d005731c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0057320:	d002      	beq.n	d0057328 <__adddf3+0x70>
d0057322:	4240      	negs	r0, r0
d0057324:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0057328:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d005732c:	ea4f 3303 	mov.w	r3, r3, lsl #12
d0057330:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0057334:	d002      	beq.n	d005733c <__adddf3+0x84>
d0057336:	4252      	negs	r2, r2
d0057338:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d005733c:	ea94 0f05 	teq	r4, r5
d0057340:	f000 80a7 	beq.w	d0057492 <__adddf3+0x1da>
d0057344:	f1a4 0401 	sub.w	r4, r4, #1
d0057348:	f1d5 0e20 	rsbs	lr, r5, #32
d005734c:	db0d      	blt.n	d005736a <__adddf3+0xb2>
d005734e:	fa02 fc0e 	lsl.w	ip, r2, lr
d0057352:	fa22 f205 	lsr.w	r2, r2, r5
d0057356:	1880      	adds	r0, r0, r2
d0057358:	f141 0100 	adc.w	r1, r1, #0
d005735c:	fa03 f20e 	lsl.w	r2, r3, lr
d0057360:	1880      	adds	r0, r0, r2
d0057362:	fa43 f305 	asr.w	r3, r3, r5
d0057366:	4159      	adcs	r1, r3
d0057368:	e00e      	b.n	d0057388 <__adddf3+0xd0>
d005736a:	f1a5 0520 	sub.w	r5, r5, #32
d005736e:	f10e 0e20 	add.w	lr, lr, #32
d0057372:	2a01      	cmp	r2, #1
d0057374:	fa03 fc0e 	lsl.w	ip, r3, lr
d0057378:	bf28      	it	cs
d005737a:	f04c 0c02 	orrcs.w	ip, ip, #2
d005737e:	fa43 f305 	asr.w	r3, r3, r5
d0057382:	18c0      	adds	r0, r0, r3
d0057384:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d0057388:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005738c:	d507      	bpl.n	d005739e <__adddf3+0xe6>
d005738e:	f04f 0e00 	mov.w	lr, #0
d0057392:	f1dc 0c00 	rsbs	ip, ip, #0
d0057396:	eb7e 0000 	sbcs.w	r0, lr, r0
d005739a:	eb6e 0101 	sbc.w	r1, lr, r1
d005739e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d00573a2:	d31b      	bcc.n	d00573dc <__adddf3+0x124>
d00573a4:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d00573a8:	d30c      	bcc.n	d00573c4 <__adddf3+0x10c>
d00573aa:	0849      	lsrs	r1, r1, #1
d00573ac:	ea5f 0030 	movs.w	r0, r0, rrx
d00573b0:	ea4f 0c3c 	mov.w	ip, ip, rrx
d00573b4:	f104 0401 	add.w	r4, r4, #1
d00573b8:	ea4f 5244 	mov.w	r2, r4, lsl #21
d00573bc:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d00573c0:	f080 809a 	bcs.w	d00574f8 <__adddf3+0x240>
d00573c4:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d00573c8:	bf08      	it	eq
d00573ca:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d00573ce:	f150 0000 	adcs.w	r0, r0, #0
d00573d2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d00573d6:	ea41 0105 	orr.w	r1, r1, r5
d00573da:	bd30      	pop	{r4, r5, pc}
d00573dc:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d00573e0:	4140      	adcs	r0, r0
d00573e2:	eb41 0101 	adc.w	r1, r1, r1
d00573e6:	3c01      	subs	r4, #1
d00573e8:	bf28      	it	cs
d00573ea:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d00573ee:	d2e9      	bcs.n	d00573c4 <__adddf3+0x10c>
d00573f0:	f091 0f00 	teq	r1, #0
d00573f4:	bf04      	itt	eq
d00573f6:	4601      	moveq	r1, r0
d00573f8:	2000      	moveq	r0, #0
d00573fa:	fab1 f381 	clz	r3, r1
d00573fe:	bf08      	it	eq
d0057400:	3320      	addeq	r3, #32
d0057402:	f1a3 030b 	sub.w	r3, r3, #11
d0057406:	f1b3 0220 	subs.w	r2, r3, #32
d005740a:	da0c      	bge.n	d0057426 <__adddf3+0x16e>
d005740c:	320c      	adds	r2, #12
d005740e:	dd08      	ble.n	d0057422 <__adddf3+0x16a>
d0057410:	f102 0c14 	add.w	ip, r2, #20
d0057414:	f1c2 020c 	rsb	r2, r2, #12
d0057418:	fa01 f00c 	lsl.w	r0, r1, ip
d005741c:	fa21 f102 	lsr.w	r1, r1, r2
d0057420:	e00c      	b.n	d005743c <__adddf3+0x184>
d0057422:	f102 0214 	add.w	r2, r2, #20
d0057426:	bfd8      	it	le
d0057428:	f1c2 0c20 	rsble	ip, r2, #32
d005742c:	fa01 f102 	lsl.w	r1, r1, r2
d0057430:	fa20 fc0c 	lsr.w	ip, r0, ip
d0057434:	bfdc      	itt	le
d0057436:	ea41 010c 	orrle.w	r1, r1, ip
d005743a:	4090      	lslle	r0, r2
d005743c:	1ae4      	subs	r4, r4, r3
d005743e:	bfa2      	ittt	ge
d0057440:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0057444:	4329      	orrge	r1, r5
d0057446:	bd30      	popge	{r4, r5, pc}
d0057448:	ea6f 0404 	mvn.w	r4, r4
d005744c:	3c1f      	subs	r4, #31
d005744e:	da1c      	bge.n	d005748a <__adddf3+0x1d2>
d0057450:	340c      	adds	r4, #12
d0057452:	dc0e      	bgt.n	d0057472 <__adddf3+0x1ba>
d0057454:	f104 0414 	add.w	r4, r4, #20
d0057458:	f1c4 0220 	rsb	r2, r4, #32
d005745c:	fa20 f004 	lsr.w	r0, r0, r4
d0057460:	fa01 f302 	lsl.w	r3, r1, r2
d0057464:	ea40 0003 	orr.w	r0, r0, r3
d0057468:	fa21 f304 	lsr.w	r3, r1, r4
d005746c:	ea45 0103 	orr.w	r1, r5, r3
d0057470:	bd30      	pop	{r4, r5, pc}
d0057472:	f1c4 040c 	rsb	r4, r4, #12
d0057476:	f1c4 0220 	rsb	r2, r4, #32
d005747a:	fa20 f002 	lsr.w	r0, r0, r2
d005747e:	fa01 f304 	lsl.w	r3, r1, r4
d0057482:	ea40 0003 	orr.w	r0, r0, r3
d0057486:	4629      	mov	r1, r5
d0057488:	bd30      	pop	{r4, r5, pc}
d005748a:	fa21 f004 	lsr.w	r0, r1, r4
d005748e:	4629      	mov	r1, r5
d0057490:	bd30      	pop	{r4, r5, pc}
d0057492:	f094 0f00 	teq	r4, #0
d0057496:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d005749a:	bf06      	itte	eq
d005749c:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d00574a0:	3401      	addeq	r4, #1
d00574a2:	3d01      	subne	r5, #1
d00574a4:	e74e      	b.n	d0057344 <__adddf3+0x8c>
d00574a6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d00574aa:	bf18      	it	ne
d00574ac:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d00574b0:	d029      	beq.n	d0057506 <__adddf3+0x24e>
d00574b2:	ea94 0f05 	teq	r4, r5
d00574b6:	bf08      	it	eq
d00574b8:	ea90 0f02 	teqeq	r0, r2
d00574bc:	d005      	beq.n	d00574ca <__adddf3+0x212>
d00574be:	ea54 0c00 	orrs.w	ip, r4, r0
d00574c2:	bf04      	itt	eq
d00574c4:	4619      	moveq	r1, r3
d00574c6:	4610      	moveq	r0, r2
d00574c8:	bd30      	pop	{r4, r5, pc}
d00574ca:	ea91 0f03 	teq	r1, r3
d00574ce:	bf1e      	ittt	ne
d00574d0:	2100      	movne	r1, #0
d00574d2:	2000      	movne	r0, #0
d00574d4:	bd30      	popne	{r4, r5, pc}
d00574d6:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d00574da:	d105      	bne.n	d00574e8 <__adddf3+0x230>
d00574dc:	0040      	lsls	r0, r0, #1
d00574de:	4149      	adcs	r1, r1
d00574e0:	bf28      	it	cs
d00574e2:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d00574e6:	bd30      	pop	{r4, r5, pc}
d00574e8:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d00574ec:	bf3c      	itt	cc
d00574ee:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d00574f2:	bd30      	popcc	{r4, r5, pc}
d00574f4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d00574f8:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d00574fc:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0057500:	f04f 0000 	mov.w	r0, #0
d0057504:	bd30      	pop	{r4, r5, pc}
d0057506:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005750a:	bf1a      	itte	ne
d005750c:	4619      	movne	r1, r3
d005750e:	4610      	movne	r0, r2
d0057510:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0057514:	bf1c      	itt	ne
d0057516:	460b      	movne	r3, r1
d0057518:	4602      	movne	r2, r0
d005751a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005751e:	bf06      	itte	eq
d0057520:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0057524:	ea91 0f03 	teqeq	r1, r3
d0057528:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005752c:	bd30      	pop	{r4, r5, pc}
d005752e:	bf00      	nop

d0057530 <__aeabi_ui2d>:
d0057530:	f090 0f00 	teq	r0, #0
d0057534:	bf04      	itt	eq
d0057536:	2100      	moveq	r1, #0
d0057538:	4770      	bxeq	lr
d005753a:	b530      	push	{r4, r5, lr}
d005753c:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057540:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057544:	f04f 0500 	mov.w	r5, #0
d0057548:	f04f 0100 	mov.w	r1, #0
d005754c:	e750      	b.n	d00573f0 <__adddf3+0x138>
d005754e:	bf00      	nop

d0057550 <__aeabi_i2d>:
d0057550:	f090 0f00 	teq	r0, #0
d0057554:	bf04      	itt	eq
d0057556:	2100      	moveq	r1, #0
d0057558:	4770      	bxeq	lr
d005755a:	b530      	push	{r4, r5, lr}
d005755c:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057560:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057564:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0057568:	bf48      	it	mi
d005756a:	4240      	negmi	r0, r0
d005756c:	f04f 0100 	mov.w	r1, #0
d0057570:	e73e      	b.n	d00573f0 <__adddf3+0x138>
d0057572:	bf00      	nop

d0057574 <__aeabi_f2d>:
d0057574:	0042      	lsls	r2, r0, #1
d0057576:	ea4f 01e2 	mov.w	r1, r2, asr #3
d005757a:	ea4f 0131 	mov.w	r1, r1, rrx
d005757e:	ea4f 7002 	mov.w	r0, r2, lsl #28
d0057582:	bf1f      	itttt	ne
d0057584:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d0057588:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d005758c:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0057590:	4770      	bxne	lr
d0057592:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0057596:	bf08      	it	eq
d0057598:	4770      	bxeq	lr
d005759a:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d005759e:	bf04      	itt	eq
d00575a0:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d00575a4:	4770      	bxeq	lr
d00575a6:	b530      	push	{r4, r5, lr}
d00575a8:	f44f 7460 	mov.w	r4, #896	; 0x380
d00575ac:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d00575b0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d00575b4:	e71c      	b.n	d00573f0 <__adddf3+0x138>
d00575b6:	bf00      	nop

d00575b8 <__aeabi_ul2d>:
d00575b8:	ea50 0201 	orrs.w	r2, r0, r1
d00575bc:	bf08      	it	eq
d00575be:	4770      	bxeq	lr
d00575c0:	b530      	push	{r4, r5, lr}
d00575c2:	f04f 0500 	mov.w	r5, #0
d00575c6:	e00a      	b.n	d00575de <__aeabi_l2d+0x16>

d00575c8 <__aeabi_l2d>:
d00575c8:	ea50 0201 	orrs.w	r2, r0, r1
d00575cc:	bf08      	it	eq
d00575ce:	4770      	bxeq	lr
d00575d0:	b530      	push	{r4, r5, lr}
d00575d2:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d00575d6:	d502      	bpl.n	d00575de <__aeabi_l2d+0x16>
d00575d8:	4240      	negs	r0, r0
d00575da:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d00575de:	f44f 6480 	mov.w	r4, #1024	; 0x400
d00575e2:	f104 0432 	add.w	r4, r4, #50	; 0x32
d00575e6:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d00575ea:	f43f aed8 	beq.w	d005739e <__adddf3+0xe6>
d00575ee:	f04f 0203 	mov.w	r2, #3
d00575f2:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d00575f6:	bf18      	it	ne
d00575f8:	3203      	addne	r2, #3
d00575fa:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d00575fe:	bf18      	it	ne
d0057600:	3203      	addne	r2, #3
d0057602:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0057606:	f1c2 0320 	rsb	r3, r2, #32
d005760a:	fa00 fc03 	lsl.w	ip, r0, r3
d005760e:	fa20 f002 	lsr.w	r0, r0, r2
d0057612:	fa01 fe03 	lsl.w	lr, r1, r3
d0057616:	ea40 000e 	orr.w	r0, r0, lr
d005761a:	fa21 f102 	lsr.w	r1, r1, r2
d005761e:	4414      	add	r4, r2
d0057620:	e6bd      	b.n	d005739e <__adddf3+0xe6>
d0057622:	bf00      	nop
d0057624:	46464952 	.word	0x46464952
d0057628:	00000000 	.word	0x00000000
d005762c:	45564157 	.word	0x45564157
d0057630:	00000000 	.word	0x00000000
d0057634:	63616c62 	.word	0x63616c62
d0057638:	62615f6b 	.word	0x62615f6b
d005763c:	62726f73 	.word	0x62726f73
d0057640:	6d2e7265 	.word	0x6d2e7265
d0057644:	0000646f 	.word	0x0000646f
d0057648:	6e756874 	.word	0x6e756874
d005764c:	31726564 	.word	0x31726564
d0057650:	7661772e 	.word	0x7661772e
d0057654:	00000000 	.word	0x00000000
d0057658:	6e756874 	.word	0x6e756874
d005765c:	32726564 	.word	0x32726564
d0057660:	7661772e 	.word	0x7661772e
d0057664:	00000000 	.word	0x00000000
d0057668:	746e616d 	.word	0x746e616d
d005766c:	6e655f61 	.word	0x6e655f61
d0057670:	772e3167 	.word	0x772e3167
d0057674:	00007661 	.word	0x00007661
d0057678:	70776570 	.word	0x70776570
d005767c:	772e7765 	.word	0x772e7765
d0057680:	00007661 	.word	0x00007661
d0057684:	72727574 	.word	0x72727574
d0057688:	2e317465 	.word	0x2e317465
d005768c:	64336273 	.word	0x64336273
d0057690:	00000000 	.word	0x00000000
d0057694:	616c7369 	.word	0x616c7369
d0057698:	2e78646e 	.word	0x2e78646e
d005769c:	64336273 	.word	0x64336273
d00576a0:	00000000 	.word	0x00000000
d00576a4:	72726163 	.word	0x72726163
d00576a8:	2e726569 	.word	0x2e726569
d00576ac:	64336273 	.word	0x64336273
d00576b0:	00000000 	.word	0x00000000
d00576b4:	70696873 	.word	0x70696873
d00576b8:	732e3176 	.word	0x732e3176
d00576bc:	00643362 	.word	0x00643362
d00576c0:	74786574 	.word	0x74786574
d00576c4:	3362732e 	.word	0x3362732e
d00576c8:	00000064 	.word	0x00000064
d00576cc:	3a535046 	.word	0x3a535046
d00576d0:	2e756c25 	.word	0x2e756c25
d00576d4:	6c323025 	.word	0x6c323025
d00576d8:	4d202075 	.word	0x4d202075
d00576dc:	33253a53 	.word	0x33253a53
d00576e0:	252e756c 	.word	0x252e756c
d00576e4:	756c3330 	.word	0x756c3330
d00576e8:	50572020 	.word	0x50572020
d00576ec:	7532253a 	.word	0x7532253a
d00576f0:	52542020 	.word	0x52542020
d00576f4:	253a5349 	.word	0x253a5349
d00576f8:	0000756c 	.word	0x0000756c
d00576fc:	497423f0 	.word	0x497423f0
d0057700:	497423f0 	.word	0x497423f0
d0057704:	497423f0 	.word	0x497423f0
d0057708:	ff5516e3 	.word	0xff5516e3
d005770c:	ffffffff 	.word	0xffffffff
d0057710:	ffff0000 	.word	0xffff0000
d0057714:	ff00ff00 	.word	0xff00ff00
d0057718:	ff0000ff 	.word	0xff0000ff
d005771c:	ffffff00 	.word	0xffffff00
d0057720:	ffff00ff 	.word	0xffff00ff
d0057724:	ff00ffff 	.word	0xff00ffff
d0057728:	ff808080 	.word	0xff808080
d005772c:	ffff8000 	.word	0xffff8000
d0057730:	ff8000ff 	.word	0xff8000ff
d0057734:	ff0080ff 	.word	0xff0080ff
d0057738:	ff80ff00 	.word	0xff80ff00
d005773c:	ffff0080 	.word	0xffff0080
d0057740:	ff00ff80 	.word	0xff00ff80
d0057744:	ffc0c0c0 	.word	0xffc0c0c0
d0057748:	3f800000 	.word	0x3f800000
d005774c:	3f400000 	.word	0x3f400000
d0057750:	3f0ccccd 	.word	0x3f0ccccd
d0057754:	3eb33333 	.word	0x3eb33333
d0057758:	3e4ccccd 	.word	0x3e4ccccd
d005775c:	bf800000 	.word	0xbf800000
d0057760:	bf000000 	.word	0xbf000000
d0057764:	3e99999a 	.word	0x3e99999a

d0057768 <museumRail>:
d0057768:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d0057778:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d0057790:	c1f00000 43340000 44870000 00000000     ......4C...D....
d00577a0:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d00577b0:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d00577c0:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d00577d0:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d00577e0:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d00577f0:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d0057800:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d0057810:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d0057820:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d0057830:	c487c000 43300000 43320000 00000000     ......0C..2C....
d0057840:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d0057850:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d0057860:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d0057870:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d0057880:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d0057890:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d00578a0:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d00578b0:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d00578c0:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d00578d0:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d00578e0:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d00578f0:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d0057900:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d0057910:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>

d0057920 <bayer4x4>:
d0057920:	0a020800 060e040c 09010b03 050d070f     ................
	...

d0057940 <g_invBlockMinus1>:
	...
d0057948:	3f800000 3f000000 3eaaaaab 3e800000     ...?...?...>...>
d0057958:	3e4ccccd 3e2aaaab 3e124925 3e000000     ..L>..*>%I.>...>
d0057968:	3de38e39 3dcccccd 3dba2e8c 3daaaaab     9..=...=...=...=
d0057978:	3d9d89d9 3d924925 3d888889 3d800000     ...=%I.=...=...=
d0057988:	3d70f0f1 3d638e39 3d579436 3d4ccccd     ..p=9.c=6.W=..L=
d0057998:	3d430c31 3d3a2e8c 3d321643 3d2aaaab     1.C=..:=C.2=..*=
d00579a8:	3d23d70a 3d1d89d9 3d17b426 3d124925     ..#=...=&..=%I.=
d00579b8:	3d0d3dcb 3d088889 3d042108 3d000000     .=.=...=.!.=...=
d00579c8:	3cf83e10 3cf0f0f1 3cea0ea1 3ce38e39     .>.<...<...<9..<
d00579d8:	3cdd67c9 3cd79436 3cd20d21 3ccccccd     .g.<6..<!..<...<
d00579e8:	3cc7ce0c 3cc30c31 3cbe82fa 3cba2e8c     ...<1..<...<...<
d00579f8:	3cb60b61 3cb21643 3cae4c41 00000000     a..<C..<AL.<....
	...
d0057a38:	3f800000 00000000 00000000 00000000     ...?............
d0057a48:	3f800000 00000000 00000000 00000000     ...?............
d0057a58:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d0057a68:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d0057a84:	00000001 00000001 00000002 00000002     ................
d0057a94:	00000003 00000003 00000000 00000004     ................
d0057aa4:	00000005 00000005 00000006 00000006     ................
d0057ab4:	00000007 00000007 00000004 00000000     ................
d0057ac4:	00000004 00000001 00000005 00000002     ................
d0057ad4:	00000006 00000003 00000007 00000001     ................
d0057ae4:	00000002 00000002 00000003 00000001     ................
d0057af4:	00000004 00000002 00000004 00000003     ................
d0057b04:	00000004                                ....

d0057b08 <__sf_fake_stderr>:
	...

d0057b28 <__sf_fake_stdin>:
	...

d0057b48 <__sf_fake_stdout>:
	...

d0057b68 <_global_impure_ptr>:
d0057b68:	d005a498 4e454552 616d2054 636f6c6c     ....REENT malloc
d0057b78:	63757320 64656563 2f006465 6c697562      succeeded./buil
d0057b88:	6e672f64 6f742d75 2d736c6f 2d726f66     d/gnu-tools-for-
d0057b98:	336d7473 2d395f32 30323032 2d32712d     stm32_9-2020-q2-
d0057ba8:	61647075 322e6574 31303230 2d313030     update.20201001-
d0057bb8:	31323631 6372732f 77656e2f 2f62696c     1621/src/newlib/
d0057bc8:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
d0057bd8:	722f6269 2e646e61 202c0063 636e7566     ib/rand.c., func
d0057be8:	6e6f6974 6100203a 72657373 6e6f6974     tion: .assertion
d0057bf8:	73252220 61662022 64656c69 6966203a      "%s" failed: fi
d0057c08:	2220656c 2c227325 6e696c20 64252065     le "%s", line %d
d0057c18:	73257325 2d23000a 00202b30 004c6c68     %s%s..#-0+ .hlL.
d0057c28:	45676665 30004746 34333231 38373635     efgEFG.012345678
d0057c38:	43424139 00464544 33323130 37363534     9ABCDEF.01234567
d0057c48:	62613938 66656463 00000000 00000000     89abcdef........

d0057c58 <__exp2f_data>:
d0057c58:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0057c68:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0057c78:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0057c88:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0057c98:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0057ca8:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0057cb8:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0057cc8:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0057cd8:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0057ce8:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0057cf8:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0057d08:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0057d18:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0057d28:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0057d38:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0057d48:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0057d58:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0057d68:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0057d78:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0057d88:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0057d98:	ff0c52d6 3f962e42                       .R..B..?

d0057da0 <__logf_data>:
d0057da0:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0057db0:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0057dc0:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0057dd0:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0057de0:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0057df0:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0057e00:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0057e10:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0057e20:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0057e30:	00000000 3ff00000 00000000 00000000     .......?........
d0057e40:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0057e50:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0057e60:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0057e70:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0057e80:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0057e90:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0057ea0:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d0057eb0:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0057ec0 <__inv_pio4>:
d0057ec0:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d0057ed0:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0057ee0:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0057ef0:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0057f00:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0057f10:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0057f20 <__sincosf_table>:
d0057f20:	00000000 3ff00000 00000000 bff00000     .......?........
d0057f30:	00000000 bff00000 00000000 3ff00000     ...............?
d0057f40:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0057f50:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0057f60:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0057f70:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0057f80:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0057f90:	00000000 3ff00000 00000000 bff00000     .......?........
d0057fa0:	00000000 bff00000 00000000 3ff00000     ...............?
d0057fb0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0057fc0:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d0057fd0:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d0057fe0:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d0057ff0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d0058000 <CSWTCH.8>:
d0058000:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d005800c <CSWTCH.9>:
d005800c:	80000000 40490fdb c0490fdb              ......I@..I.

d0058018 <Zero>:
d0058018:	00000000 80000000                       ........

d0058020 <atanhi>:
d0058020:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d0058030 <atanlo>:
d0058030:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d0058040 <_init>:
d0058040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0058042:	bf00      	nop

Disassembly of section .fini:

d0058044 <_fini>:
d0058044:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0058046:	bf00      	nop
