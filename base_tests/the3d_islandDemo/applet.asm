
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
d004b01e:	f00a fb7b 	bl	d0055718 <setbuf>
d004b022:	6833      	ldr	r3, [r6, #0]
d004b024:	2100      	movs	r1, #0
d004b026:	68d8      	ldr	r0, [r3, #12]
d004b028:	f00a fb76 	bl	d0055718 <setbuf>
d004b02c:	4629      	mov	r1, r5
d004b02e:	4620      	mov	r0, r4
d004b030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004b034:	f002 b844 	b.w	d004d0c0 <main>
d004b038:	d005a2f4 	.word	0xd005a2f4

d004b03c <initMalloc>:
d004b03c:	4902      	ldr	r1, [pc, #8]	; (d004b048 <initMalloc+0xc>)
d004b03e:	4b03      	ldr	r3, [pc, #12]	; (d004b04c <initMalloc+0x10>)
d004b040:	4a03      	ldr	r2, [pc, #12]	; (d004b050 <initMalloc+0x14>)
d004b042:	1a5b      	subs	r3, r3, r1
d004b044:	6013      	str	r3, [r2, #0]
d004b046:	4770      	bx	lr
d004b048:	d00feaa8 	.word	0xd00feaa8
d004b04c:	d0600000 	.word	0xd0600000
d004b050:	d00f4808 	.word	0xd00f4808

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
d004b09c:	f009 ffe8 	bl	d0055070 <__errno>
d004b0a0:	2209      	movs	r2, #9
d004b0a2:	4603      	mov	r3, r0
d004b0a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0a8:	601a      	str	r2, [r3, #0]
d004b0aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0ac:	d005a364 	.word	0xd005a364
d004b0b0:	2001f000 	.word	0x2001f000

d004b0b4 <_read>:
d004b0b4:	b508      	push	{r3, lr}
d004b0b6:	f009 ffdb 	bl	d0055070 <__errno>
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
d004b102:	f009 ffb5 	bl	d0055070 <__errno>
d004b106:	220c      	movs	r2, #12
d004b108:	4603      	mov	r3, r0
d004b10a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b10e:	601a      	str	r2, [r3, #0]
d004b110:	bd10      	pop	{r4, pc}
d004b112:	bf00      	nop
d004b114:	d005a360 	.word	0xd005a360
d004b118:	d00feaa8 	.word	0xd00feaa8
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
d004b184:	f00a f9ba 	bl	d00554fc <memcmp>
d004b188:	b950      	cbnz	r0, d004b1a0 <LoadSFX+0x6c>
d004b18a:	2204      	movs	r2, #4
d004b18c:	492c      	ldr	r1, [pc, #176]	; (d004b240 <LoadSFX+0x10c>)
d004b18e:	a805      	add	r0, sp, #20
d004b190:	f00a f9b4 	bl	d00554fc <memcmp>
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
d004b1c8:	f00a f988 	bl	d00554dc <malloc>
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
d004b23c:	d0057474 	.word	0xd0057474
d004b240:	d005747c 	.word	0xd005747c

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
d004b2b2:	f00b fcf9 	bl	d0056ca8 <atan2f>
d004b2b6:	eef1 0ac9 	vsqrt.f32	s1, s18
d004b2ba:	eddf 7a36 	vldr	s15, [pc, #216]	; d004b394 <sr_steer_camera_to_tangent+0x150>
d004b2be:	eef0 9a40 	vmov.f32	s19, s0
d004b2c2:	eeb1 0a4a 	vneg.f32	s0, s20
d004b2c6:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d004b2ca:	f00b fced 	bl	d0056ca8 <atan2f>
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
d004b358:	f005 ba32 	b.w	d00507c0 <cameraRotate>
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
d004beec:	d00f49c0 	.word	0xd00f49c0
d004bef0:	d00f49a0 	.word	0xd00f49a0

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
d004bf3e:	f006 faf7 	bl	d0052530 <lightEnable>
d004bf42:	4628      	mov	r0, r5
d004bf44:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d004c1f0 <weatherLightning+0x2fc>
d004bf48:	f006 fb88 	bl	d005265c <lightSetIntensity>
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
d004bfca:	f006 fab1 	bl	d0052530 <lightEnable>
d004bfce:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d004c1fc <weatherLightning+0x308>
d004bfd2:	ee07 4a90 	vmov	s15, r4
d004bfd6:	ed9a 0a00 	vldr	s0, [sl]
d004bfda:	4628      	mov	r0, r5
d004bfdc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004bfe0:	eea7 0a87 	vfma.f32	s0, s15, s14
d004bfe4:	f006 fb3a 	bl	d005265c <lightSetIntensity>
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
d004c04c:	f006 fa70 	bl	d0052530 <lightEnable>
d004c050:	4628      	mov	r0, r5
d004c052:	ed9f 0a67 	vldr	s0, [pc, #412]	; d004c1f0 <weatherLightning+0x2fc>
d004c056:	f006 fb01 	bl	d005265c <lightSetIntensity>
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
d004c1ca:	f006 f9b1 	bl	d0052530 <lightEnable>
d004c1ce:	4628      	mov	r0, r5
d004c1d0:	ed9f 0a07 	vldr	s0, [pc, #28]	; d004c1f0 <weatherLightning+0x2fc>
d004c1d4:	f006 fa42 	bl	d005265c <lightSetIntensity>
d004c1d8:	2300      	movs	r3, #0
d004c1da:	603b      	str	r3, [r7, #0]
d004c1dc:	e6c0      	b.n	d004bf60 <weatherLightning+0x6c>
d004c1de:	bf00      	nop
d004c1e0:	3dcccccd 	.word	0x3dcccccd
d004c1e4:	d005a2b0 	.word	0xd005a2b0
d004c1e8:	d005a570 	.word	0xd005a570
d004c1ec:	d005a2a8 	.word	0xd005a2a8
d004c1f0:	00000000 	.word	0x00000000
d004c1f4:	3c83126f 	.word	0x3c83126f
d004c1f8:	d005a3e8 	.word	0xd005a3e8
d004c1fc:	3ab3e71b 	.word	0x3ab3e71b
d004c200:	d005a3ec 	.word	0xd005a3ec
d004c204:	38cd000c 	.word	0x38cd000c
d004c208:	3ca3d70a 	.word	0x3ca3d70a
d004c20c:	d005a574 	.word	0xd005a574
d004c210:	3ad9d00e 	.word	0x3ad9d00e
d004c214:	3e99999a 	.word	0x3e99999a
d004c218:	3b33e71b 	.word	0x3b33e71b
d004c21c:	3f266666 	.word	0x3f266666
d004c220:	3776000e 	.word	0x3776000e
d004c224:	3ccccccd 	.word	0x3ccccccd
d004c228:	d005a3e4 	.word	0xd005a3e4
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
d004c348:	f008 fa4e 	bl	d00547e8 <sb3dParticleSpawnQuad>
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
d004c37c:	f008 fa7c 	bl	d0054878 <sb3dParticleSetPosition>
d004c380:	eeb0 0a48 	vmov.f32	s0, s16
d004c384:	6820      	ldr	r0, [r4, #0]
d004c386:	f008 fa8f 	bl	d00548a8 <sb3dParticleSetSize>
d004c38a:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c38e:	6820      	ldr	r0, [r4, #0]
d004c390:	f008 faa0 	bl	d00548d4 <sb3dParticleSetShade>
d004c394:	2100      	movs	r1, #0
d004c396:	6820      	ldr	r0, [r4, #0]
d004c398:	f008 fabe 	bl	d0054918 <sb3dParticleSetEmission>
d004c39c:	42b4      	cmp	r4, r6
d004c39e:	d1c5      	bne.n	d004c32c <initImpactFlames+0xf4>
d004c3a0:	b006      	add	sp, #24
d004c3a2:	ecbd 8b02 	vpop	{d8}
d004c3a6:	bd70      	pop	{r4, r5, r6, pc}
d004c3a8:	00000000 	.word	0x00000000
d004c3ac:	d005a404 	.word	0xd005a404
d004c3b0:	d005a4e0 	.word	0xd005a4e0
d004c3b4:	d005754c 	.word	0xd005754c

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
d004c494:	f00a fb68 	bl	d0056b68 <sinf>
d004c498:	eee0 fa0d 	vfma.f32	s31, s0, s26
d004c49c:	eeb0 0a48 	vmov.f32	s0, s16
d004c4a0:	f00a f97e 	bl	d00567a0 <cosf>
d004c4a4:	eef0 6a40 	vmov.f32	s13, s0
d004c4a8:	edd4 7a01 	vldr	s15, [r4, #4]
d004c4ac:	eeb0 0a48 	vmov.f32	s0, s16
d004c4b0:	ed94 7a02 	vldr	s14, [r4, #8]
d004c4b4:	eeb0 8a4a 	vmov.f32	s16, s20
d004c4b8:	eee6 7a89 	vfma.f32	s15, s13, s18
d004c4bc:	ee37 7a29 	vadd.f32	s14, s14, s19
d004c4c0:	ed8d 7a02 	vstr	s14, [sp, #8]
d004c4c4:	edcd 7a01 	vstr	s15, [sp, #4]
d004c4c8:	f00a fb4e 	bl	d0056b68 <sinf>
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
d004c51e:	f008 f9ab 	bl	d0054878 <sb3dParticleSetPosition>
d004c522:	eeb0 0a48 	vmov.f32	s0, s16
d004c526:	4628      	mov	r0, r5
d004c528:	f008 f9be 	bl	d00548a8 <sb3dParticleSetSize>
d004c52c:	eeb0 0a6b 	vmov.f32	s0, s23
d004c530:	4628      	mov	r0, r5
d004c532:	f008 f9cf 	bl	d00548d4 <sb3dParticleSetShade>
d004c536:	4649      	mov	r1, r9
d004c538:	4628      	mov	r0, r5
d004c53a:	f008 f9e1 	bl	d0054900 <sb3dParticleSetColor>
d004c53e:	4628      	mov	r0, r5
d004c540:	21c8      	movs	r1, #200	; 0xc8
d004c542:	f008 f9e9 	bl	d0054918 <sb3dParticleSetEmission>
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
d004c58e:	f008 f973 	bl	d0054878 <sb3dParticleSetPosition>
d004c592:	ed9f 0a54 	vldr	s0, [pc, #336]	; d004c6e4 <updateImpactFlames+0x32c>
d004c596:	4628      	mov	r0, r5
d004c598:	f008 f986 	bl	d00548a8 <sb3dParticleSetSize>
d004c59c:	4628      	mov	r0, r5
d004c59e:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5a2:	f008 f997 	bl	d00548d4 <sb3dParticleSetShade>
d004c5a6:	4631      	mov	r1, r6
d004c5a8:	4628      	mov	r0, r5
d004c5aa:	f008 f9b5 	bl	d0054918 <sb3dParticleSetEmission>
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
d004c5d0:	f008 f952 	bl	d0054878 <sb3dParticleSetPosition>
d004c5d4:	ed9f 0a43 	vldr	s0, [pc, #268]	; d004c6e4 <updateImpactFlames+0x32c>
d004c5d8:	4628      	mov	r0, r5
d004c5da:	f008 f965 	bl	d00548a8 <sb3dParticleSetSize>
d004c5de:	4628      	mov	r0, r5
d004c5e0:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5e4:	f008 f976 	bl	d00548d4 <sb3dParticleSetShade>
d004c5e8:	4628      	mov	r0, r5
d004c5ea:	2100      	movs	r1, #0
d004c5ec:	f008 f994 	bl	d0054918 <sb3dParticleSetEmission>
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
d004c612:	f008 f931 	bl	d0054878 <sb3dParticleSetPosition>
d004c616:	ed9f 0a33 	vldr	s0, [pc, #204]	; d004c6e4 <updateImpactFlames+0x32c>
d004c61a:	4628      	mov	r0, r5
d004c61c:	f008 f944 	bl	d00548a8 <sb3dParticleSetSize>
d004c620:	4628      	mov	r0, r5
d004c622:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c626:	f008 f955 	bl	d00548d4 <sb3dParticleSetShade>
d004c62a:	4628      	mov	r0, r5
d004c62c:	2100      	movs	r1, #0
d004c62e:	f008 f973 	bl	d0054918 <sb3dParticleSetEmission>
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
d004c654:	f008 f910 	bl	d0054878 <sb3dParticleSetPosition>
d004c658:	4628      	mov	r0, r5
d004c65a:	ed9f 0a22 	vldr	s0, [pc, #136]	; d004c6e4 <updateImpactFlames+0x32c>
d004c65e:	f008 f923 	bl	d00548a8 <sb3dParticleSetSize>
d004c662:	4628      	mov	r0, r5
d004c664:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c668:	f008 f934 	bl	d00548d4 <sb3dParticleSetShade>
d004c66c:	4628      	mov	r0, r5
d004c66e:	2100      	movs	r1, #0
d004c670:	f008 f952 	bl	d0054918 <sb3dParticleSetEmission>
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
d004c698:	f008 f8ee 	bl	d0054878 <sb3dParticleSetPosition>
d004c69c:	4630      	mov	r0, r6
d004c69e:	ed9f 0a11 	vldr	s0, [pc, #68]	; d004c6e4 <updateImpactFlames+0x32c>
d004c6a2:	f008 f901 	bl	d00548a8 <sb3dParticleSetSize>
d004c6a6:	4630      	mov	r0, r6
d004c6a8:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c6ac:	f008 f912 	bl	d00548d4 <sb3dParticleSetShade>
d004c6b0:	4629      	mov	r1, r5
d004c6b2:	4630      	mov	r0, r6
d004c6b4:	f008 f930 	bl	d0054918 <sb3dParticleSetEmission>
d004c6b8:	e779      	b.n	d004c5ae <updateImpactFlames+0x1f6>
d004c6ba:	bf00      	nop
d004c6bc:	d005a404 	.word	0xd005a404
d004c6c0:	3f266666 	.word	0x3f266666
d004c6c4:	3eb33333 	.word	0x3eb33333
d004c6c8:	3fc90fdb 	.word	0x3fc90fdb
d004c6cc:	3fd9999a 	.word	0x3fd9999a
d004c6d0:	3c23d70a 	.word	0x3c23d70a
d004c6d4:	42200000 	.word	0x42200000
d004c6d8:	3e99999a 	.word	0x3e99999a
d004c6dc:	3f333333 	.word	0x3f333333
d004c6e0:	d005754c 	.word	0xd005754c
d004c6e4:	00000000 	.word	0x00000000
d004c6e8:	d005a4e4 	.word	0xd005a4e4

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
d004c708:	f008 ff14 	bl	d0055534 <memset>
d004c70c:	2230      	movs	r2, #48	; 0x30
d004c70e:	2100      	movs	r1, #0
d004c710:	484b      	ldr	r0, [pc, #300]	; (d004c840 <InitLasers+0x154>)
d004c712:	f008 ff0f 	bl	d0055534 <memset>
d004c716:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d004c71a:	466c      	mov	r4, sp
d004c71c:	4668      	mov	r0, sp
d004c71e:	ed9f 1a49 	vldr	s2, [pc, #292]	; d004c844 <InitLasers+0x158>
d004c722:	466f      	mov	r7, sp
d004c724:	eeb0 0a60 	vmov.f32	s0, s1
d004c728:	f005 f888 	bl	d005183c <createBox>
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
d004c752:	f005 f873 	bl	d005183c <createBox>
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
d004c786:	f002 f90f 	bl	d004e9a8 <meshSetMaterial>
d004c78a:	2122      	movs	r1, #34	; 0x22
d004c78c:	4648      	mov	r0, r9
d004c78e:	f004 ff67 	bl	d0051660 <meshColour>
d004c792:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004c796:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c79a:	eeb0 2a48 	vmov.f32	s4, s16
d004c79e:	eeb0 1a61 	vmov.f32	s2, s3
d004c7a2:	eef0 0a61 	vmov.f32	s1, s3
d004c7a6:	eeb0 0a61 	vmov.f32	s0, s3
d004c7aa:	f002 f8fd 	bl	d004e9a8 <meshSetMaterial>
d004c7ae:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c7b2:	2127      	movs	r1, #39	; 0x27
d004c7b4:	f004 ff54 	bl	d0051660 <meshColour>
d004c7b8:	eddf 0a20 	vldr	s1, [pc, #128]	; d004c83c <InitLasers+0x150>
d004c7bc:	eeb0 1a48 	vmov.f32	s2, s16
d004c7c0:	3406      	adds	r4, #6
d004c7c2:	eeb0 0a60 	vmov.f32	s0, s1
d004c7c6:	f003 feef 	bl	d00505a8 <vec3>
d004c7ca:	4648      	mov	r0, r9
d004c7cc:	f004 fe68 	bl	d00514a0 <entityWorldSpawn>
d004c7d0:	f804 8c06 	strb.w	r8, [r4, #-6]
d004c7d4:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c7d8:	2100      	movs	r1, #0
d004c7da:	f824 8c04 	strh.w	r8, [r4, #-4]
d004c7de:	b280      	uxth	r0, r0
d004c7e0:	f005 fbd2 	bl	d0051f88 <entityVisible>
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
d004c804:	f003 fed0 	bl	d00505a8 <vec3>
d004c808:	4630      	mov	r0, r6
d004c80a:	f004 fe49 	bl	d00514a0 <entityWorldSpawn>
d004c80e:	f804 5c06 	strb.w	r5, [r4, #-6]
d004c812:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c816:	2100      	movs	r1, #0
d004c818:	f824 5c04 	strh.w	r5, [r4, #-4]
d004c81c:	b280      	uxth	r0, r0
d004c81e:	f005 fbb3 	bl	d0051f88 <entityVisible>
d004c822:	42bc      	cmp	r4, r7
d004c824:	d1e7      	bne.n	d004c7f6 <InitLasers+0x10a>
d004c826:	b017      	add	sp, #92	; 0x5c
d004c828:	ecbd 8b02 	vpop	{d8}
d004c82c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004c830:	d00f496c 	.word	0xd00f496c
d004c834:	d00f48a0 	.word	0xd00f48a0
d004c838:	d00f4a00 	.word	0xd00f4a00
d004c83c:	00000000 	.word	0x00000000
d004c840:	d00f4a40 	.word	0xd00f4a40
d004c844:	42480000 	.word	0x42480000

d004c848 <FireTurret>:
d004c848:	b530      	push	{r4, r5, lr}
d004c84a:	ed2d 8b02 	vpush	{d8}
d004c84e:	b091      	sub	sp, #68	; 0x44
d004c850:	eeb0 8a60 	vmov.f32	s16, s1
d004c854:	4604      	mov	r4, r0
d004c856:	ed8d 0a01 	vstr	s0, [sp, #4]
d004c85a:	ed8d 1a03 	vstr	s2, [sp, #12]
d004c85e:	f004 fe89 	bl	d0051574 <entityGetPosition>
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
d004c88e:	f005 faf5 	bl	d0051e7c <entityLookAtPosition>
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
d004c8ea:	f004 fe61 	bl	d00515b0 <entityGetForward>
d004c8ee:	eddf 7a1b 	vldr	s15, [pc, #108]	; d004c95c <FireTurret+0x114>
d004c8f2:	eddd 0a05 	vldr	s1, [sp, #20]
d004c8f6:	ed9d 0a04 	vldr	s0, [sp, #16]
d004c8fa:	ee70 0aa7 	vadd.f32	s1, s1, s15
d004c8fe:	ed9d 1a06 	vldr	s2, [sp, #24]
d004c902:	88a0      	ldrh	r0, [r4, #4]
d004c904:	f004 fe12 	bl	d005152c <entitySetPosition>
d004c908:	ed9f 1a16 	vldr	s2, [pc, #88]	; d004c964 <FireTurret+0x11c>
d004c90c:	4629      	mov	r1, r5
d004c90e:	ed9d 0a08 	vldr	s0, [sp, #32]
d004c912:	eef0 0a41 	vmov.f32	s1, s2
d004c916:	88a0      	ldrh	r0, [r4, #4]
d004c918:	f004 ff80 	bl	d005181c <entityRotation>
d004c91c:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004c964 <FireTurret+0x11c>
d004c920:	88a0      	ldrh	r0, [r4, #4]
d004c922:	2100      	movs	r1, #0
d004c924:	eeb0 0a41 	vmov.f32	s0, s2
d004c928:	eddd 0a07 	vldr	s1, [sp, #28]
d004c92c:	f004 ff76 	bl	d005181c <entityRotation>
d004c930:	4629      	mov	r1, r5
d004c932:	88a0      	ldrh	r0, [r4, #4]
d004c934:	b011      	add	sp, #68	; 0x44
d004c936:	ecbd 8b02 	vpop	{d8}
d004c93a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004c93e:	f005 bb23 	b.w	d0051f88 <entityVisible>
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
d004c960:	d00f496c 	.word	0xd00f496c
d004c964:	00000000 	.word	0x00000000

d004c968 <UpdateTurretTest.part.0>:
d004c968:	b500      	push	{lr}
d004c96a:	b085      	sub	sp, #20
d004c96c:	f008 fe94 	bl	d0055698 <rand>
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
d004c98e:	f004 fdf1 	bl	d0051574 <entityGetPosition>
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
d004c9a8:	f008 fe76 	bl	d0055698 <rand>
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
d004c9e2:	f008 fe59 	bl	d0055698 <rand>
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
d004ca08:	d005a3e0 	.word	0xd005a3e0
d004ca0c:	d005a590 	.word	0xd005a590
d004ca10:	d005a594 	.word	0xd005a594
d004ca14:	66666667 	.word	0x66666667
d004ca18:	d005a596 	.word	0xd005a596
d004ca1c:	d005a380 	.word	0xd005a380
d004ca20:	2aaaaaab 	.word	0x2aaaaaab

d004ca24 <FirePlayerLaser>:
d004ca24:	b570      	push	{r4, r5, r6, lr}
d004ca26:	4db0      	ldr	r5, [pc, #704]	; (d004cce8 <FirePlayerLaser+0x2c4>)
d004ca28:	2100      	movs	r1, #0
d004ca2a:	4cb0      	ldr	r4, [pc, #704]	; (d004ccec <FirePlayerLaser+0x2c8>)
d004ca2c:	4628      	mov	r0, r5
d004ca2e:	ed2d 8b06 	vpush	{d8-d10}
d004ca32:	b086      	sub	sp, #24
d004ca34:	f003 ffa0 	bl	d0050978 <cameraGetRotation>
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
d004cbb6:	f004 fcb9 	bl	d005152c <entitySetPosition>
d004cbba:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cbbe:	eeb0 0a4a 	vmov.f32	s0, s20
d004cbc2:	4631      	mov	r1, r6
d004cbc4:	eef0 0a41 	vmov.f32	s1, s2
d004cbc8:	88a8      	ldrh	r0, [r5, #4]
d004cbca:	f004 fe27 	bl	d005181c <entityRotation>
d004cbce:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cbd2:	88a8      	ldrh	r0, [r5, #4]
d004cbd4:	2100      	movs	r1, #0
d004cbd6:	eef1 0a69 	vneg.f32	s1, s19
d004cbda:	eeb0 0a41 	vmov.f32	s0, s2
d004cbde:	f004 fe1d 	bl	d005181c <entityRotation>
d004cbe2:	4631      	mov	r1, r6
d004cbe4:	88a8      	ldrh	r0, [r5, #4]
d004cbe6:	f005 f9cf 	bl	d0051f88 <entityVisible>
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
d004cc82:	f004 fc53 	bl	d005152c <entitySetPosition>
d004cc86:	ed9f 1a1c 	vldr	s2, [pc, #112]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cc8a:	eeb0 0a4a 	vmov.f32	s0, s20
d004cc8e:	4629      	mov	r1, r5
d004cc90:	eef0 0a41 	vmov.f32	s1, s2
d004cc94:	88b0      	ldrh	r0, [r6, #4]
d004cc96:	f004 fdc1 	bl	d005181c <entityRotation>
d004cc9a:	ed9f 1a17 	vldr	s2, [pc, #92]	; d004ccf8 <FirePlayerLaser+0x2d4>
d004cc9e:	88b0      	ldrh	r0, [r6, #4]
d004cca0:	eef1 0a69 	vneg.f32	s1, s19
d004cca4:	eeb0 0a41 	vmov.f32	s0, s2
d004cca8:	2100      	movs	r1, #0
d004ccaa:	f004 fdb7 	bl	d005181c <entityRotation>
d004ccae:	4629      	mov	r1, r5
d004ccb0:	88b0      	ldrh	r0, [r6, #4]
d004ccb2:	f005 f969 	bl	d0051f88 <entityVisible>
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
d004cce8:	d005a380 	.word	0xd005a380
d004ccec:	d00f4a40 	.word	0xd00f4a40
d004ccf0:	c2680000 	.word	0xc2680000
d004ccf4:	42680000 	.word	0x42680000
d004ccf8:	00000000 	.word	0x00000000
d004ccfc:	d005a56d 	.word	0xd005a56d
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
d004cd26:	f005 f92f 	bl	d0051f88 <entityVisible>
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
d004cd46:	f004 fc55 	bl	d00515f4 <entityMoveForward>
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
d004cd70:	f005 f90a 	bl	d0051f88 <entityVisible>
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
d004cd90:	f004 fc30 	bl	d00515f4 <entityMoveForward>
d004cd94:	4969      	ldr	r1, [pc, #420]	; (d004cf3c <UpdateLasers+0x238>)
d004cd96:	2300      	movs	r3, #0
d004cd98:	aa01      	add	r2, sp, #4
d004cd9a:	88a0      	ldrh	r0, [r4, #4]
d004cd9c:	6809      	ldr	r1, [r1, #0]
d004cd9e:	f005 f90d 	bl	d0051fbc <entitySweepRaycastTest>
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
d004cdd0:	f003 fbea 	bl	d00505a8 <vec3>
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
d004cf34:	d00f496c 	.word	0xd00f496c
d004cf38:	d00f4a40 	.word	0xd00f4a40
d004cf3c:	d005a564 	.word	0xd005a564
d004cf40:	d005a404 	.word	0xd005a404
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
d004cf72:	f007 fc39 	bl	d00547e8 <sb3dParticleSpawnQuad>
d004cf76:	f844 0f04 	str.w	r0, [r4, #4]!
d004cf7a:	42ac      	cmp	r4, r5
d004cf7c:	d1eb      	bne.n	d004cf56 <initSmoke+0xa>
d004cf7e:	b005      	add	sp, #20
d004cf80:	bd30      	pop	{r4, r5, pc}
d004cf82:	bf00      	nop
d004cf84:	d00f481c 	.word	0xd00f481c
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
d004cffa:	f009 fe57 	bl	d0056cac <fmodf>
d004cffe:	eeb0 8a40 	vmov.f32	s16, s0
d004d002:	eeb0 0a6b 	vmov.f32	s0, s23
d004d006:	eef0 ea69 	vmov.f32	s29, s19
d004d00a:	eea9 0a0d 	vfma.f32	s0, s18, s26
d004d00e:	f009 fdab 	bl	d0056b68 <sinf>
d004d012:	eef7 7a04 	vmov.f32	s15, #116	; 0x3fa00000  1.250
d004d016:	eef0 8a40 	vmov.f32	s17, s0
d004d01a:	eeb0 0a4b 	vmov.f32	s0, s22
d004d01e:	eee8 ea27 	vfma.f32	s29, s16, s15
d004d022:	ee68 8a8e 	vmul.f32	s17, s17, s28
d004d026:	eea9 0a2c 	vfma.f32	s0, s18, s25
d004d02a:	f009 fbb9 	bl	d00567a0 <cosf>
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
d004d060:	f007 fc0a 	bl	d0054878 <sb3dParticleSetPosition>
d004d064:	ee29 0a0e 	vmul.f32	s0, s18, s28
d004d068:	6820      	ldr	r0, [r4, #0]
d004d06a:	f007 fc1d 	bl	d00548a8 <sb3dParticleSetSize>
d004d06e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d072:	6820      	ldr	r0, [r4, #0]
d004d074:	ee38 0a00 	vadd.f32	s0, s16, s0
d004d078:	ee30 0a00 	vadd.f32	s0, s0, s0
d004d07c:	f007 fc2a 	bl	d00548d4 <sb3dParticleSetShade>
d004d080:	2121      	movs	r1, #33	; 0x21
d004d082:	6820      	ldr	r0, [r4, #0]
d004d084:	f007 fc3c 	bl	d0054900 <sb3dParticleSetColor>
d004d088:	2100      	movs	r1, #0
d004d08a:	6820      	ldr	r0, [r4, #0]
d004d08c:	f007 fc44 	bl	d0054918 <sb3dParticleSetEmission>
d004d090:	42a7      	cmp	r7, r4
d004d092:	d1a1      	bne.n	d004cfd8 <updateSmoke+0x4c>
d004d094:	b009      	add	sp, #36	; 0x24
d004d096:	ecbd 8b0e 	vpop	{d8-d14}
d004d09a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004d09c:	3eb33333 	.word	0x3eb33333
d004d0a0:	3f99999a 	.word	0x3f99999a
d004d0a4:	3f666666 	.word	0x3f666666
d004d0a8:	d00f481c 	.word	0xd00f481c
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
d004d0ce:	f244 259f 	movw	r5, #17055	; 0x429f
d004d0d2:	ed9f 8acb 	vldr	s16, [pc, #812]	; d004d400 <main+0x340>
d004d0d6:	b087      	sub	sp, #28
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
d004d11c:	9208      	str	r2, [sp, #32]
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
d004d152:	f003 faaf 	bl	d00506b4 <worldClear>
d004d156:	f005 ff57 	bl	d0053008 <setDefaultRenderMode>
d004d15a:	ab1e      	add	r3, sp, #120	; 0x78
d004d15c:	4618      	mov	r0, r3
d004d15e:	f003 fb15 	bl	d005078c <cameraCreate>
d004d162:	a91e      	add	r1, sp, #120	; 0x78
d004d164:	2260      	movs	r2, #96	; 0x60
d004d166:	48ac      	ldr	r0, [pc, #688]	; (d004d418 <main+0x358>)
d004d168:	f008 f9d6 	bl	d0055518 <memcpy>
d004d16c:	48aa      	ldr	r0, [pc, #680]	; (d004d418 <main+0x358>)
d004d16e:	eddf 0aab 	vldr	s1, [pc, #684]	; d004d41c <main+0x35c>
d004d172:	ed9f 0aab 	vldr	s0, [pc, #684]	; d004d420 <main+0x360>
d004d176:	f003 fe5f 	bl	d0050e38 <cameraSetRange>
d004d17a:	eeb0 1a48 	vmov.f32	s2, s16
d004d17e:	eeb0 0a48 	vmov.f32	s0, s16
d004d182:	eddf 0aa8 	vldr	s1, [pc, #672]	; d004d424 <main+0x364>
d004d186:	f003 fa0f 	bl	d00505a8 <vec3>
d004d18a:	48a3      	ldr	r0, [pc, #652]	; (d004d418 <main+0x358>)
d004d18c:	edcd 0a49 	vstr	s1, [sp, #292]	; 0x124
d004d190:	ed8d 0a48 	vstr	s0, [sp, #288]	; 0x120
d004d194:	ed8d 1a4a 	vstr	s2, [sp, #296]	; 0x128
d004d198:	f003 fb02 	bl	d00507a0 <cameraSetPosition>
d004d19c:	489e      	ldr	r0, [pc, #632]	; (d004d418 <main+0x358>)
d004d19e:	f003 fa9f 	bl	d00506e0 <cameraNormalize>
d004d1a2:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d004d1a6:	f505 7030 	add.w	r0, r5, #704	; 0x2c0
d004d1aa:	eef0 0a41 	vmov.f32	s1, s2
d004d1ae:	eeb0 0a41 	vmov.f32	s0, s2
d004d1b2:	f004 fb43 	bl	d005183c <createBox>
d004d1b6:	eeb0 1a48 	vmov.f32	s2, s16
d004d1ba:	eef0 0a48 	vmov.f32	s1, s16
d004d1be:	eeb0 0a48 	vmov.f32	s0, s16
d004d1c2:	f003 f9f1 	bl	d00505a8 <vec3>
d004d1c6:	ab37      	add	r3, sp, #220	; 0xdc
d004d1c8:	edcd 0a4c 	vstr	s1, [sp, #304]	; 0x130
d004d1cc:	4618      	mov	r0, r3
d004d1ce:	ed8d 0a4b 	vstr	s0, [sp, #300]	; 0x12c
d004d1d2:	ed8d 1a4d 	vstr	s2, [sp, #308]	; 0x134
d004d1d6:	f004 f963 	bl	d00514a0 <entityWorldSpawn>
d004d1da:	f244 5398 	movw	r3, #17816	; 0x4598
d004d1de:	446b      	add	r3, sp
d004d1e0:	f843 000b 	str.w	r0, [r3, fp]
d004d1e4:	f7ff feb2 	bl	d004cf4c <initSmoke>
d004d1e8:	f7ff f826 	bl	d004c238 <initImpactFlames>
d004d1ec:	f50d 7cf6 	add.w	ip, sp, #492	; 0x1ec
d004d1f0:	f04f 4b7f 	mov.w	fp, #4278190080	; 0xff000000
d004d1f4:	f50d 7eec 	add.w	lr, sp, #472	; 0x1d8
d004d1f8:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d1fc:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d200:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d204:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d208:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d20c:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d210:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d004d214:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004d218:	f108 0c10 	add.w	ip, r8, #16
d004d21c:	f8c7 b000 	str.w	fp, [r7]
d004d220:	f8cd e000 	str.w	lr, [sp]
d004d224:	f108 0824 	add.w	r8, r8, #36	; 0x24
d004d228:	f8c7 b040 	str.w	fp, [r7, #64]	; 0x40
d004d22c:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d230:	f8dc c000 	ldr.w	ip, [ip]
d004d234:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004d238:	465b      	mov	r3, fp
d004d23a:	f8ce c000 	str.w	ip, [lr]
d004d23e:	4638      	mov	r0, r7
d004d240:	a97b      	add	r1, sp, #492	; 0x1ec
d004d242:	2210      	movs	r2, #16
d004d244:	f8df b1fc 	ldr.w	fp, [pc, #508]	; d004d444 <main+0x384>
d004d248:	f004 ff12 	bl	d0052070 <buildLightingCLUT>
d004d24c:	7b23      	ldrb	r3, [r4, #12]
d004d24e:	f505 7180 	add.w	r1, r5, #256	; 0x100
d004d252:	7b62      	ldrb	r2, [r4, #13]
d004d254:	4638      	mov	r0, r7
d004d256:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d25a:	910b      	str	r1, [sp, #44]	; 0x2c
d004d25c:	7ba1      	ldrb	r1, [r4, #14]
d004d25e:	7be2      	ldrb	r2, [r4, #15]
d004d260:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d264:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d268:	681b      	ldr	r3, [r3, #0]
d004d26a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004d26c:	4798      	blx	r3
d004d26e:	eeb0 1a48 	vmov.f32	s2, s16
d004d272:	eef0 0a48 	vmov.f32	s1, s16
d004d276:	eeb0 0a48 	vmov.f32	s0, s16
d004d27a:	f003 f995 	bl	d00505a8 <vec3>
d004d27e:	eddf 1a68 	vldr	s3, [pc, #416]	; d004d420 <main+0x360>
d004d282:	2001      	movs	r0, #1
d004d284:	edcd 0a4f 	vstr	s1, [sp, #316]	; 0x13c
d004d288:	ed8d 0a4e 	vstr	s0, [sp, #312]	; 0x138
d004d28c:	ed8d 1a50 	vstr	s2, [sp, #320]	; 0x140
d004d290:	f005 f95c 	bl	d005254c <addPointLight>
d004d294:	ab3c      	add	r3, sp, #240	; 0xf0
d004d296:	b2c7      	uxtb	r7, r0
d004d298:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d29c:	9707      	str	r7, [sp, #28]
d004d29e:	e898 0007 	ldmia.w	r8, {r0, r1, r2}
d004d2a2:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004d2a6:	2001      	movs	r0, #1
d004d2a8:	edd3 0a01 	vldr	s1, [r3, #4]
d004d2ac:	ed93 1a02 	vldr	s2, [r3, #8]
d004d2b0:	ed93 0a00 	vldr	s0, [r3]
d004d2b4:	f005 f986 	bl	d00525c4 <addDirectionalLight>
d004d2b8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d2bc:	b2c3      	uxtb	r3, r0
d004d2be:	461f      	mov	r7, r3
d004d2c0:	4618      	mov	r0, r3
d004d2c2:	930d      	str	r3, [sp, #52]	; 0x34
d004d2c4:	f005 f9ca 	bl	d005265c <lightSetIntensity>
d004d2c8:	4638      	mov	r0, r7
d004d2ca:	2100      	movs	r1, #0
d004d2cc:	f005 f930 	bl	d0052530 <lightEnable>
d004d2d0:	4955      	ldr	r1, [pc, #340]	; (d004d428 <main+0x368>)
d004d2d2:	4856      	ldr	r0, [pc, #344]	; (d004d42c <main+0x36c>)
d004d2d4:	f7fd ff2e 	bl	d004b134 <LoadSFX>
d004d2d8:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d2dc:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d2e0:	4602      	mov	r2, r0
d004d2e2:	7da0      	ldrb	r0, [r4, #22]
d004d2e4:	2300      	movs	r3, #0
d004d2e6:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d2ea:	4f4f      	ldr	r7, [pc, #316]	; (d004d428 <main+0x368>)
d004d2ec:	6032      	str	r2, [r6, #0]
d004d2ee:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d2f2:	7de0      	ldrb	r0, [r4, #23]
d004d2f4:	6839      	ldr	r1, [r7, #0]
d004d2f6:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d2fa:	4618      	mov	r0, r3
d004d2fc:	4f4c      	ldr	r7, [pc, #304]	; (d004d430 <main+0x370>)
d004d2fe:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d302:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d306:	47c0      	blx	r8
d004d308:	7d23      	ldrb	r3, [r4, #20]
d004d30a:	7d62      	ldrb	r2, [r4, #21]
d004d30c:	f644 6184 	movw	r1, #20100	; 0x4e84
d004d310:	7da0      	ldrb	r0, [r4, #22]
d004d312:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d316:	7de2      	ldrb	r2, [r4, #23]
d004d318:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d31c:	2000      	movs	r0, #0
d004d31e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d322:	689b      	ldr	r3, [r3, #8]
d004d324:	691b      	ldr	r3, [r3, #16]
d004d326:	4798      	blx	r3
d004d328:	7d23      	ldrb	r3, [r4, #20]
d004d32a:	7d62      	ldrb	r2, [r4, #21]
d004d32c:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d330:	7da0      	ldrb	r0, [r4, #22]
d004d332:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d336:	7de2      	ldrb	r2, [r4, #23]
d004d338:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d33c:	2000      	movs	r0, #0
d004d33e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d342:	689b      	ldr	r3, [r3, #8]
d004d344:	695b      	ldr	r3, [r3, #20]
d004d346:	4798      	blx	r3
d004d348:	7d23      	ldrb	r3, [r4, #20]
d004d34a:	7d62      	ldrb	r2, [r4, #21]
d004d34c:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d004d350:	7da0      	ldrb	r0, [r4, #22]
d004d352:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d356:	7de2      	ldrb	r2, [r4, #23]
d004d358:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d35c:	2000      	movs	r0, #0
d004d35e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d362:	689b      	ldr	r3, [r3, #8]
d004d364:	699b      	ldr	r3, [r3, #24]
d004d366:	4798      	blx	r3
d004d368:	7d23      	ldrb	r3, [r4, #20]
d004d36a:	7d62      	ldrb	r2, [r4, #21]
d004d36c:	2100      	movs	r1, #0
d004d36e:	7da0      	ldrb	r0, [r4, #22]
d004d370:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d374:	7de2      	ldrb	r2, [r4, #23]
d004d376:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d37a:	4608      	mov	r0, r1
d004d37c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d380:	689b      	ldr	r3, [r3, #8]
d004d382:	6a1b      	ldr	r3, [r3, #32]
d004d384:	4798      	blx	r3
d004d386:	492a      	ldr	r1, [pc, #168]	; (d004d430 <main+0x370>)
d004d388:	482a      	ldr	r0, [pc, #168]	; (d004d434 <main+0x374>)
d004d38a:	f7fd fed3 	bl	d004b134 <LoadSFX>
d004d38e:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d392:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d396:	4602      	mov	r2, r0
d004d398:	7da0      	ldrb	r0, [r4, #22]
d004d39a:	2300      	movs	r3, #0
d004d39c:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d3a0:	6839      	ldr	r1, [r7, #0]
d004d3a2:	6032      	str	r2, [r6, #0]
d004d3a4:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d3a8:	7de0      	ldrb	r0, [r4, #23]
d004d3aa:	4f23      	ldr	r7, [pc, #140]	; (d004d438 <main+0x378>)
d004d3ac:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d3b0:	2001      	movs	r0, #1
d004d3b2:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d3b6:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d3ba:	47c0      	blx	r8
d004d3bc:	7d23      	ldrb	r3, [r4, #20]
d004d3be:	7d62      	ldrb	r2, [r4, #21]
d004d3c0:	f244 21cc 	movw	r1, #17100	; 0x42cc
d004d3c4:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d3c8:	2001      	movs	r0, #1
d004d3ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3ce:	7de2      	ldrb	r2, [r4, #23]
d004d3d0:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d3d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3d8:	689b      	ldr	r3, [r3, #8]
d004d3da:	691b      	ldr	r3, [r3, #16]
d004d3dc:	4798      	blx	r3
d004d3de:	7d23      	ldrb	r3, [r4, #20]
d004d3e0:	7d62      	ldrb	r2, [r4, #21]
d004d3e2:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d3e6:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d3ea:	2001      	movs	r0, #1
d004d3ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3f0:	7de2      	ldrb	r2, [r4, #23]
d004d3f2:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d3f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3fa:	e025      	b.n	d004d448 <main+0x388>
d004d3fc:	2001f000 	.word	0x2001f000
d004d400:	00000000 	.word	0x00000000
d004d404:	d0059ea8 	.word	0xd0059ea8
d004d408:	d0057484 	.word	0xd0057484
d004d40c:	d00f4968 	.word	0xd00f4968
d004d410:	42280000 	.word	0x42280000
d004d414:	c3750000 	.word	0xc3750000
d004d418:	d005a380 	.word	0xd005a380
d004d41c:	459c4000 	.word	0x459c4000
d004d420:	3c23d70a 	.word	0x3c23d70a
d004d424:	42480000 	.word	0x42480000
d004d428:	d00f4940 	.word	0xd00f4940
d004d42c:	d0057498 	.word	0xd0057498
d004d430:	d00f4960 	.word	0xd00f4960
d004d434:	d00574a8 	.word	0xd00574a8
d004d438:	d00f49e0 	.word	0xd00f49e0
d004d43c:	ffffbb44 	.word	0xffffbb44
d004d440:	d0057558 	.word	0xd0057558
d004d444:	d00f4900 	.word	0xd00f4900
d004d448:	689b      	ldr	r3, [r3, #8]
d004d44a:	695b      	ldr	r3, [r3, #20]
d004d44c:	4798      	blx	r3
d004d44e:	7d23      	ldrb	r3, [r4, #20]
d004d450:	7d62      	ldrb	r2, [r4, #21]
d004d452:	2140      	movs	r1, #64	; 0x40
d004d454:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d458:	2001      	movs	r0, #1
d004d45a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d45e:	7de2      	ldrb	r2, [r4, #23]
d004d460:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d464:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d468:	689b      	ldr	r3, [r3, #8]
d004d46a:	699b      	ldr	r3, [r3, #24]
d004d46c:	4798      	blx	r3
d004d46e:	7d23      	ldrb	r3, [r4, #20]
d004d470:	7d62      	ldrb	r2, [r4, #21]
d004d472:	2100      	movs	r1, #0
d004d474:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d478:	2001      	movs	r0, #1
d004d47a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d47e:	7de2      	ldrb	r2, [r4, #23]
d004d480:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d484:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d488:	689b      	ldr	r3, [r3, #8]
d004d48a:	6a1b      	ldr	r3, [r3, #32]
d004d48c:	4798      	blx	r3
d004d48e:	49bb      	ldr	r1, [pc, #748]	; (d004d77c <main+0x6bc>)
d004d490:	48bb      	ldr	r0, [pc, #748]	; (d004d780 <main+0x6c0>)
d004d492:	f7fd fe4f 	bl	d004b134 <LoadSFX>
d004d496:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d49a:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d49e:	4602      	mov	r2, r0
d004d4a0:	7da1      	ldrb	r1, [r4, #22]
d004d4a2:	2300      	movs	r3, #0
d004d4a4:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d4a8:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d4ac:	6030      	str	r0, [r6, #0]
d004d4ae:	2002      	movs	r0, #2
d004d4b0:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d4b4:	6839      	ldr	r1, [r7, #0]
d004d4b6:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d4ba:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d4be:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d4c2:	47c0      	blx	r8
d004d4c4:	7d23      	ldrb	r3, [r4, #20]
d004d4c6:	7d62      	ldrb	r2, [r4, #21]
d004d4c8:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d4cc:	7da0      	ldrb	r0, [r4, #22]
d004d4ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4d2:	7de2      	ldrb	r2, [r4, #23]
d004d4d4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4d8:	2002      	movs	r0, #2
d004d4da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4de:	689b      	ldr	r3, [r3, #8]
d004d4e0:	691b      	ldr	r3, [r3, #16]
d004d4e2:	4798      	blx	r3
d004d4e4:	7d23      	ldrb	r3, [r4, #20]
d004d4e6:	7d62      	ldrb	r2, [r4, #21]
d004d4e8:	2128      	movs	r1, #40	; 0x28
d004d4ea:	7da0      	ldrb	r0, [r4, #22]
d004d4ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4f0:	7de2      	ldrb	r2, [r4, #23]
d004d4f2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d4f6:	2002      	movs	r0, #2
d004d4f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4fc:	689b      	ldr	r3, [r3, #8]
d004d4fe:	695b      	ldr	r3, [r3, #20]
d004d500:	4798      	blx	r3
d004d502:	7d23      	ldrb	r3, [r4, #20]
d004d504:	7d62      	ldrb	r2, [r4, #21]
d004d506:	2100      	movs	r1, #0
d004d508:	7da0      	ldrb	r0, [r4, #22]
d004d50a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d50e:	7de2      	ldrb	r2, [r4, #23]
d004d510:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d514:	2002      	movs	r0, #2
d004d516:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d51a:	689b      	ldr	r3, [r3, #8]
d004d51c:	699b      	ldr	r3, [r3, #24]
d004d51e:	4798      	blx	r3
d004d520:	7d23      	ldrb	r3, [r4, #20]
d004d522:	7d62      	ldrb	r2, [r4, #21]
d004d524:	2101      	movs	r1, #1
d004d526:	7da0      	ldrb	r0, [r4, #22]
d004d528:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d52c:	7de2      	ldrb	r2, [r4, #23]
d004d52e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d532:	2002      	movs	r0, #2
d004d534:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d538:	689b      	ldr	r3, [r3, #8]
d004d53a:	6a1b      	ldr	r3, [r3, #32]
d004d53c:	4798      	blx	r3
d004d53e:	7d23      	ldrb	r3, [r4, #20]
d004d540:	7d60      	ldrb	r0, [r4, #21]
d004d542:	2100      	movs	r1, #0
d004d544:	7da2      	ldrb	r2, [r4, #22]
d004d546:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004d54a:	7de0      	ldrb	r0, [r4, #23]
d004d54c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d550:	6832      	ldr	r2, [r6, #0]
d004d552:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004d556:	2002      	movs	r0, #2
d004d558:	689b      	ldr	r3, [r3, #8]
d004d55a:	69db      	ldr	r3, [r3, #28]
d004d55c:	4798      	blx	r3
d004d55e:	7d23      	ldrb	r3, [r4, #20]
d004d560:	7d62      	ldrb	r2, [r4, #21]
d004d562:	2002      	movs	r0, #2
d004d564:	7da1      	ldrb	r1, [r4, #22]
d004d566:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d56a:	7de2      	ldrb	r2, [r4, #23]
d004d56c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d570:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d574:	689b      	ldr	r3, [r3, #8]
d004d576:	685b      	ldr	r3, [r3, #4]
d004d578:	4798      	blx	r3
d004d57a:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d57e:	7d61      	ldrb	r1, [r4, #21]
d004d580:	2300      	movs	r3, #0
d004d582:	7da2      	ldrb	r2, [r4, #22]
d004d584:	ea4c 2c01 	orr.w	ip, ip, r1, lsl #8
d004d588:	7de0      	ldrb	r0, [r4, #23]
d004d58a:	6839      	ldr	r1, [r7, #0]
d004d58c:	af42      	add	r7, sp, #264	; 0x108
d004d58e:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
d004d592:	6832      	ldr	r2, [r6, #0]
d004d594:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d598:	2003      	movs	r0, #3
d004d59a:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d59e:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d5a2:	47c0      	blx	r8
d004d5a4:	7d23      	ldrb	r3, [r4, #20]
d004d5a6:	7d62      	ldrb	r2, [r4, #21]
d004d5a8:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d5ac:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5b0:	2003      	movs	r0, #3
d004d5b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5b6:	7de2      	ldrb	r2, [r4, #23]
d004d5b8:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5c0:	689b      	ldr	r3, [r3, #8]
d004d5c2:	691b      	ldr	r3, [r3, #16]
d004d5c4:	4798      	blx	r3
d004d5c6:	7d23      	ldrb	r3, [r4, #20]
d004d5c8:	7d62      	ldrb	r2, [r4, #21]
d004d5ca:	2128      	movs	r1, #40	; 0x28
d004d5cc:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5d0:	2003      	movs	r0, #3
d004d5d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5d6:	7de2      	ldrb	r2, [r4, #23]
d004d5d8:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5e0:	689b      	ldr	r3, [r3, #8]
d004d5e2:	695b      	ldr	r3, [r3, #20]
d004d5e4:	4798      	blx	r3
d004d5e6:	7d23      	ldrb	r3, [r4, #20]
d004d5e8:	7d62      	ldrb	r2, [r4, #21]
d004d5ea:	2100      	movs	r1, #0
d004d5ec:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d5f0:	2003      	movs	r0, #3
d004d5f2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5f6:	7de2      	ldrb	r2, [r4, #23]
d004d5f8:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d5fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d600:	689b      	ldr	r3, [r3, #8]
d004d602:	699b      	ldr	r3, [r3, #24]
d004d604:	4798      	blx	r3
d004d606:	7d23      	ldrb	r3, [r4, #20]
d004d608:	7d62      	ldrb	r2, [r4, #21]
d004d60a:	2101      	movs	r1, #1
d004d60c:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d610:	2003      	movs	r0, #3
d004d612:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d616:	7de2      	ldrb	r2, [r4, #23]
d004d618:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d61c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d620:	689b      	ldr	r3, [r3, #8]
d004d622:	6a1b      	ldr	r3, [r3, #32]
d004d624:	4798      	blx	r3
d004d626:	7d23      	ldrb	r3, [r4, #20]
d004d628:	f894 c015 	ldrb.w	ip, [r4, #21]
d004d62c:	2100      	movs	r1, #0
d004d62e:	7da2      	ldrb	r2, [r4, #22]
d004d630:	2003      	movs	r0, #3
d004d632:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d004d636:	f894 c017 	ldrb.w	ip, [r4, #23]
d004d63a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d63e:	6832      	ldr	r2, [r6, #0]
d004d640:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d004d644:	689b      	ldr	r3, [r3, #8]
d004d646:	69db      	ldr	r3, [r3, #28]
d004d648:	4798      	blx	r3
d004d64a:	7d23      	ldrb	r3, [r4, #20]
d004d64c:	7d62      	ldrb	r2, [r4, #21]
d004d64e:	2003      	movs	r0, #3
d004d650:	7da1      	ldrb	r1, [r4, #22]
d004d652:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d656:	7de2      	ldrb	r2, [r4, #23]
d004d658:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d65c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d660:	689b      	ldr	r3, [r3, #8]
d004d662:	685b      	ldr	r3, [r3, #4]
d004d664:	4798      	blx	r3
d004d666:	4659      	mov	r1, fp
d004d668:	4846      	ldr	r0, [pc, #280]	; (d004d784 <main+0x6c4>)
d004d66a:	f7fd fd63 	bl	d004b134 <LoadSFX>
d004d66e:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d672:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d676:	4602      	mov	r2, r0
d004d678:	7da1      	ldrb	r1, [r4, #22]
d004d67a:	2300      	movs	r3, #0
d004d67c:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d680:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d684:	6030      	str	r0, [r6, #0]
d004d686:	2006      	movs	r0, #6
d004d688:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d68c:	f8db 1000 	ldr.w	r1, [fp]
d004d690:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d694:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d698:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d69c:	47c0      	blx	r8
d004d69e:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d6a2:	7d62      	ldrb	r2, [r4, #21]
d004d6a4:	2300      	movs	r3, #0
d004d6a6:	7da1      	ldrb	r1, [r4, #22]
d004d6a8:	2007      	movs	r0, #7
d004d6aa:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d004d6ae:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d6b2:	6832      	ldr	r2, [r6, #0]
d004d6b4:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d6b8:	f8db 1000 	ldr.w	r1, [fp]
d004d6bc:	9704      	str	r7, [sp, #16]
d004d6be:	f505 7710 	add.w	r7, r5, #576	; 0x240
d004d6c2:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d6c6:	46ab      	mov	fp, r5
d004d6c8:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d6cc:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d6d0:	47c0      	blx	r8
d004d6d2:	7d23      	ldrb	r3, [r4, #20]
d004d6d4:	7d62      	ldrb	r2, [r4, #21]
d004d6d6:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d6da:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d6de:	2006      	movs	r0, #6
d004d6e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d6e4:	7de2      	ldrb	r2, [r4, #23]
d004d6e6:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d6ea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d6ee:	689b      	ldr	r3, [r3, #8]
d004d6f0:	691b      	ldr	r3, [r3, #16]
d004d6f2:	4798      	blx	r3
d004d6f4:	7d23      	ldrb	r3, [r4, #20]
d004d6f6:	7d62      	ldrb	r2, [r4, #21]
d004d6f8:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d6fc:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d700:	2007      	movs	r0, #7
d004d702:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d706:	7de2      	ldrb	r2, [r4, #23]
d004d708:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d70c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d710:	689b      	ldr	r3, [r3, #8]
d004d712:	691b      	ldr	r3, [r3, #16]
d004d714:	4798      	blx	r3
d004d716:	7d23      	ldrb	r3, [r4, #20]
d004d718:	7d62      	ldrb	r2, [r4, #21]
d004d71a:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d71e:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d722:	2006      	movs	r0, #6
d004d724:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d728:	7de2      	ldrb	r2, [r4, #23]
d004d72a:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d72e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d732:	689b      	ldr	r3, [r3, #8]
d004d734:	695b      	ldr	r3, [r3, #20]
d004d736:	4798      	blx	r3
d004d738:	7d23      	ldrb	r3, [r4, #20]
d004d73a:	7d62      	ldrb	r2, [r4, #21]
d004d73c:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d740:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d744:	2007      	movs	r0, #7
d004d746:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d74a:	7de2      	ldrb	r2, [r4, #23]
d004d74c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d750:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d754:	689b      	ldr	r3, [r3, #8]
d004d756:	695b      	ldr	r3, [r3, #20]
d004d758:	4798      	blx	r3
d004d75a:	7d23      	ldrb	r3, [r4, #20]
d004d75c:	7d62      	ldrb	r2, [r4, #21]
d004d75e:	f06f 0127 	mvn.w	r1, #39	; 0x27
d004d762:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d766:	2006      	movs	r0, #6
d004d768:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d76c:	7de2      	ldrb	r2, [r4, #23]
d004d76e:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d772:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d776:	689b      	ldr	r3, [r3, #8]
d004d778:	699b      	ldr	r3, [r3, #24]
d004d77a:	e005      	b.n	d004d788 <main+0x6c8>
d004d77c:	d00f49e0 	.word	0xd00f49e0
d004d780:	d00574b8 	.word	0xd00574b8
d004d784:	d00574c8 	.word	0xd00574c8
d004d788:	4798      	blx	r3
d004d78a:	7d23      	ldrb	r3, [r4, #20]
d004d78c:	7d62      	ldrb	r2, [r4, #21]
d004d78e:	2128      	movs	r1, #40	; 0x28
d004d790:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d794:	2007      	movs	r0, #7
d004d796:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d79a:	7de2      	ldrb	r2, [r4, #23]
d004d79c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d7a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d7a4:	689b      	ldr	r3, [r3, #8]
d004d7a6:	699b      	ldr	r3, [r3, #24]
d004d7a8:	4798      	blx	r3
d004d7aa:	7d23      	ldrb	r3, [r4, #20]
d004d7ac:	7d62      	ldrb	r2, [r4, #21]
d004d7ae:	2100      	movs	r1, #0
d004d7b0:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d7b4:	2006      	movs	r0, #6
d004d7b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d7ba:	7de2      	ldrb	r2, [r4, #23]
d004d7bc:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d7c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d7c4:	689b      	ldr	r3, [r3, #8]
d004d7c6:	6a1b      	ldr	r3, [r3, #32]
d004d7c8:	4798      	blx	r3
d004d7ca:	7d23      	ldrb	r3, [r4, #20]
d004d7cc:	7d62      	ldrb	r2, [r4, #21]
d004d7ce:	2100      	movs	r1, #0
d004d7d0:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d7d4:	2007      	movs	r0, #7
d004d7d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d7da:	7de2      	ldrb	r2, [r4, #23]
d004d7dc:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d7e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d7e4:	689b      	ldr	r3, [r3, #8]
d004d7e6:	6a1b      	ldr	r3, [r3, #32]
d004d7e8:	4798      	blx	r3
d004d7ea:	eddd 8a05 	vldr	s17, [sp, #20]
d004d7ee:	eeb3 0a09 	vmov.f32	s0, #57	; 0x41c80000  25.0
d004d7f2:	48e7      	ldr	r0, [pc, #924]	; (d004db90 <main+0xad0>)
d004d7f4:	ee18 1a90 	vmov	r1, s17
d004d7f8:	f007 fa60 	bl	d0054cbc <loadMeshSB3D>
d004d7fc:	ed9f 1ae5 	vldr	s2, [pc, #916]	; d004db94 <main+0xad4>
d004d800:	eddf 0ae5 	vldr	s1, [pc, #916]	; d004db98 <main+0xad8>
d004d804:	ed9f 0ae5 	vldr	s0, [pc, #916]	; d004db9c <main+0xadc>
d004d808:	f002 fece 	bl	d00505a8 <vec3>
d004d80c:	ee18 0a90 	vmov	r0, s17
d004d810:	ed8d 0a51 	vstr	s0, [sp, #324]	; 0x144
d004d814:	edcd 0a52 	vstr	s1, [sp, #328]	; 0x148
d004d818:	ed8d 1a53 	vstr	s2, [sp, #332]	; 0x14c
d004d81c:	f003 fe40 	bl	d00514a0 <entityWorldSpawn>
d004d820:	4bdf      	ldr	r3, [pc, #892]	; (d004dba0 <main+0xae0>)
d004d822:	4602      	mov	r2, r0
d004d824:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004d828:	ed9f 2ade 	vldr	s4, [pc, #888]	; d004dba4 <main+0xae4>
d004d82c:	eeb0 1a48 	vmov.f32	s2, s16
d004d830:	ee18 0a90 	vmov	r0, s17
d004d834:	eeb0 0a48 	vmov.f32	s0, s16
d004d838:	eddf 0adb 	vldr	s1, [pc, #876]	; d004dba8 <main+0xae8>
d004d83c:	601a      	str	r2, [r3, #0]
d004d83e:	f001 f8b3 	bl	d004e9a8 <meshSetMaterial>
d004d842:	f7fe ff53 	bl	d004c6ec <InitLasers>
d004d846:	eef3 0a04 	vmov.f32	s1, #52	; 0x41a00000  20.0
d004d84a:	ed9f 0ad8 	vldr	s0, [pc, #864]	; d004dbac <main+0xaec>
d004d84e:	220a      	movs	r2, #10
d004d850:	a80e      	add	r0, sp, #56	; 0x38
d004d852:	2118      	movs	r1, #24
d004d854:	f004 f972 	bl	d0051b3c <createTorus>
d004d858:	f10d 0c38 	add.w	ip, sp, #56	; 0x38
d004d85c:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d860:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d862:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d866:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d868:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d86c:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d86e:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d004d872:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
d004d876:	9e06      	ldr	r6, [sp, #24]
d004d878:	2125      	movs	r1, #37	; 0x25
d004d87a:	2700      	movs	r7, #0
d004d87c:	4630      	mov	r0, r6
d004d87e:	f003 feef 	bl	d0051660 <meshColour>
d004d882:	eeb0 1a48 	vmov.f32	s2, s16
d004d886:	eddf 0aca 	vldr	s1, [pc, #808]	; d004dbb0 <main+0xaf0>
d004d88a:	ed9f 0aca 	vldr	s0, [pc, #808]	; d004dbb4 <main+0xaf4>
d004d88e:	f002 fe8b 	bl	d00505a8 <vec3>
d004d892:	4630      	mov	r0, r6
d004d894:	ed8d 0a54 	vstr	s0, [sp, #336]	; 0x150
d004d898:	edcd 0a55 	vstr	s1, [sp, #340]	; 0x154
d004d89c:	ed8d 1a56 	vstr	s2, [sp, #344]	; 0x158
d004d8a0:	f003 fdfe 	bl	d00514a0 <entityWorldSpawn>
d004d8a4:	4603      	mov	r3, r0
d004d8a6:	eef7 1a08 	vmov.f32	s3, #120	; 0x3fc00000  1.5
d004d8aa:	ed9f 2abe 	vldr	s4, [pc, #760]	; d004dba4 <main+0xae4>
d004d8ae:	eeb0 1a48 	vmov.f32	s2, s16
d004d8b2:	eeb0 0a48 	vmov.f32	s0, s16
d004d8b6:	4630      	mov	r0, r6
d004d8b8:	eddf 0abb 	vldr	s1, [pc, #748]	; d004dba8 <main+0xae8>
d004d8bc:	2664      	movs	r6, #100	; 0x64
d004d8be:	930a      	str	r3, [sp, #40]	; 0x28
d004d8c0:	f001 f872 	bl	d004e9a8 <meshSetMaterial>
d004d8c4:	4649      	mov	r1, r9
d004d8c6:	ed9f 0abc 	vldr	s0, [pc, #752]	; d004dbb8 <main+0xaf8>
d004d8ca:	48bc      	ldr	r0, [pc, #752]	; (d004dbbc <main+0xafc>)
d004d8cc:	f007 f9f6 	bl	d0054cbc <loadMeshSB3D>
d004d8d0:	eeb0 1a48 	vmov.f32	s2, s16
d004d8d4:	eef0 0a48 	vmov.f32	s1, s16
d004d8d8:	eeb0 0a48 	vmov.f32	s0, s16
d004d8dc:	f002 fe64 	bl	d00505a8 <vec3>
d004d8e0:	4648      	mov	r0, r9
d004d8e2:	edcd 0a58 	vstr	s1, [sp, #352]	; 0x160
d004d8e6:	ed8d 0a57 	vstr	s0, [sp, #348]	; 0x15c
d004d8ea:	ed8d 1a59 	vstr	s2, [sp, #356]	; 0x164
d004d8ee:	f003 fdd7 	bl	d00514a0 <entityWorldSpawn>
d004d8f2:	4bb3      	ldr	r3, [pc, #716]	; (d004dbc0 <main+0xb00>)
d004d8f4:	2101      	movs	r1, #1
d004d8f6:	6018      	str	r0, [r3, #0]
d004d8f8:	f004 fb2c 	bl	d0051f54 <entityAllowHit>
d004d8fc:	eeb0 2a48 	vmov.f32	s4, s16
d004d900:	eddf 1ab0 	vldr	s3, [pc, #704]	; d004dbc4 <main+0xb04>
d004d904:	eeb0 1a48 	vmov.f32	s2, s16
d004d908:	4648      	mov	r0, r9
d004d90a:	eeb0 0a48 	vmov.f32	s0, s16
d004d90e:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004d912:	f001 f849 	bl	d004e9a8 <meshSetMaterial>
d004d916:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d004d91a:	eddd 8a08 	vldr	s17, [sp, #32]
d004d91e:	eef0 0a41 	vmov.f32	s1, s2
d004d922:	ee18 0a90 	vmov	r0, s17
d004d926:	eeb0 0a41 	vmov.f32	s0, s2
d004d92a:	f003 ff87 	bl	d005183c <createBox>
d004d92e:	eef0 0a48 	vmov.f32	s1, s16
d004d932:	eeb0 1a48 	vmov.f32	s2, s16
d004d936:	ee18 0a90 	vmov	r0, s17
d004d93a:	eeb0 0a48 	vmov.f32	s0, s16
d004d93e:	ed8d 8a3f 	vstr	s16, [sp, #252]	; 0xfc
d004d942:	ed8d 8a40 	vstr	s16, [sp, #256]	; 0x100
d004d946:	ed8d 8a41 	vstr	s16, [sp, #260]	; 0x104
d004d94a:	f003 fda9 	bl	d00514a0 <entityWorldSpawn>
d004d94e:	ed9d 8a09 	vldr	s16, [sp, #36]	; 0x24
d004d952:	ed9f 0a9d 	vldr	s0, [pc, #628]	; d004dbc8 <main+0xb08>
d004d956:	ee18 1a10 	vmov	r1, s16
d004d95a:	489c      	ldr	r0, [pc, #624]	; (d004dbcc <main+0xb0c>)
d004d95c:	f007 f9ae 	bl	d0054cbc <loadMeshSB3D>
d004d960:	ed9f 1a9b 	vldr	s2, [pc, #620]	; d004dbd0 <main+0xb10>
d004d964:	eddf 0a9b 	vldr	s1, [pc, #620]	; d004dbd4 <main+0xb14>
d004d968:	ed9f 0a9b 	vldr	s0, [pc, #620]	; d004dbd8 <main+0xb18>
d004d96c:	f002 fe1c 	bl	d00505a8 <vec3>
d004d970:	ee18 0a10 	vmov	r0, s16
d004d974:	edcd 0a5b 	vstr	s1, [sp, #364]	; 0x16c
d004d978:	ed8d 1a5c 	vstr	s2, [sp, #368]	; 0x170
d004d97c:	ed8d 0a5a 	vstr	s0, [sp, #360]	; 0x168
d004d980:	f003 fd8e 	bl	d00514a0 <entityWorldSpawn>
d004d984:	4a95      	ldr	r2, [pc, #596]	; (d004dbdc <main+0xb1c>)
d004d986:	4603      	mov	r3, r0
d004d988:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d004d98c:	4651      	mov	r1, sl
d004d98e:	4894      	ldr	r0, [pc, #592]	; (d004dbe0 <main+0xb20>)
d004d990:	6013      	str	r3, [r2, #0]
d004d992:	f007 f993 	bl	d0054cbc <loadMeshSB3D>
d004d996:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
d004d99a:	4651      	mov	r1, sl
d004d99c:	eddf 8a91 	vldr	s17, [pc, #580]	; d004dbe4 <main+0xb24>
d004d9a0:	4648      	mov	r0, r9
d004d9a2:	f004 f9db 	bl	d0051d5c <copyMesh>
d004d9a6:	ed9f 1a90 	vldr	s2, [pc, #576]	; d004dbe8 <main+0xb28>
d004d9aa:	eddf 0a87 	vldr	s1, [pc, #540]	; d004dbc8 <main+0xb08>
d004d9ae:	ed9f 0a8f 	vldr	s0, [pc, #572]	; d004dbec <main+0xb2c>
d004d9b2:	f002 fdf9 	bl	d00505a8 <vec3>
d004d9b6:	4648      	mov	r0, r9
d004d9b8:	ed8d 0a5d 	vstr	s0, [sp, #372]	; 0x174
d004d9bc:	edcd 0a5e 	vstr	s1, [sp, #376]	; 0x178
d004d9c0:	ed8d 1a5f 	vstr	s2, [sp, #380]	; 0x17c
d004d9c4:	f003 fd6c 	bl	d00514a0 <entityWorldSpawn>
d004d9c8:	ed9f 1a82 	vldr	s2, [pc, #520]	; d004dbd4 <main+0xb14>
d004d9cc:	ee0f 0a90 	vmov	s31, r0
d004d9d0:	eef0 0a41 	vmov.f32	s1, s2
d004d9d4:	eeb0 0a41 	vmov.f32	s0, s2
d004d9d8:	eeb0 8a41 	vmov.f32	s16, s2
d004d9dc:	f002 fde4 	bl	d00505a8 <vec3>
d004d9e0:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d9e4:	2001      	movs	r0, #1
d004d9e6:	ed8d 0a60 	vstr	s0, [sp, #384]	; 0x180
d004d9ea:	edcd 0a61 	vstr	s1, [sp, #388]	; 0x184
d004d9ee:	ed8d 1a62 	vstr	s2, [sp, #392]	; 0x188
d004d9f2:	f004 fdab 	bl	d005254c <addPointLight>
d004d9f6:	b2c3      	uxtb	r3, r0
d004d9f8:	ed9f 1a7d 	vldr	s2, [pc, #500]	; d004dbf0 <main+0xb30>
d004d9fc:	eddf 0a7d 	vldr	s1, [pc, #500]	; d004dbf4 <main+0xb34>
d004da00:	ed9f 0a6a 	vldr	s0, [pc, #424]	; d004dbac <main+0xaec>
d004da04:	4618      	mov	r0, r3
d004da06:	9309      	str	r3, [sp, #36]	; 0x24
d004da08:	f004 fd68 	bl	d00524dc <lightSetRanges>
d004da0c:	f8dd 8010 	ldr.w	r8, [sp, #16]
d004da10:	4651      	mov	r1, sl
d004da12:	a80e      	add	r0, sp, #56	; 0x38
d004da14:	f004 f9a2 	bl	d0051d5c <copyMesh>
d004da18:	f10d 0e38 	add.w	lr, sp, #56	; 0x38
d004da1c:	eb05 1c87 	add.w	ip, r5, r7, lsl #6
d004da20:	3701      	adds	r7, #1
d004da22:	eef0 0a69 	vmov.f32	s1, s19
d004da26:	fb06 f307 	mul.w	r3, r6, r7
d004da2a:	eeb0 0a49 	vmov.f32	s0, s18
d004da2e:	ee01 3a10 	vmov	s2, r3
d004da32:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004da36:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004da3a:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004da3e:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004da42:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d004da46:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d004da4a:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004da4e:	e89e 000f 	ldmia.w	lr, {r0, r1, r2, r3}
d004da52:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004da56:	f002 fda7 	bl	d00505a8 <vec3>
d004da5a:	4658      	mov	r0, fp
d004da5c:	edcd 0a64 	vstr	s1, [sp, #400]	; 0x190
d004da60:	f10b 0b40 	add.w	fp, fp, #64	; 0x40
d004da64:	ed8d 1a65 	vstr	s2, [sp, #404]	; 0x194
d004da68:	ed8d 0a63 	vstr	s0, [sp, #396]	; 0x18c
d004da6c:	f003 fd18 	bl	d00514a0 <entityWorldSpawn>
d004da70:	4681      	mov	r9, r0
d004da72:	f848 0b04 	str.w	r0, [r8], #4
d004da76:	eeb0 0a68 	vmov.f32	s0, s17
d004da7a:	f002 fd99 	bl	d00505b0 <degrees>
d004da7e:	eeb0 1a48 	vmov.f32	s2, s16
d004da82:	4648      	mov	r0, r9
d004da84:	2101      	movs	r1, #1
d004da86:	eddf 0a53 	vldr	s1, [pc, #332]	; d004dbd4 <main+0xb14>
d004da8a:	f003 fec7 	bl	d005181c <entityRotation>
d004da8e:	2f03      	cmp	r7, #3
d004da90:	d1be      	bne.n	d004da10 <main+0x950>
d004da92:	2301      	movs	r3, #1
d004da94:	9843      	ldr	r0, [sp, #268]	; 0x10c
d004da96:	ed9f 1a48 	vldr	s2, [pc, #288]	; d004dbb8 <main+0xaf8>
d004da9a:	35c0      	adds	r5, #192	; 0xc0
d004da9c:	9308      	str	r3, [sp, #32]
d004da9e:	2300      	movs	r3, #0
d004daa0:	eddf 0a55 	vldr	s1, [pc, #340]	; d004dbf8 <main+0xb38>
d004daa4:	ed9f 0a55 	vldr	s0, [pc, #340]	; d004dbfc <main+0xb3c>
d004daa8:	9304      	str	r3, [sp, #16]
d004daaa:	9005      	str	r0, [sp, #20]
d004daac:	f002 fd7c 	bl	d00505a8 <vec3>
d004dab0:	9805      	ldr	r0, [sp, #20]
d004dab2:	edcd 0a67 	vstr	s1, [sp, #412]	; 0x19c
d004dab6:	ed8d 1a68 	vstr	s2, [sp, #416]	; 0x1a0
d004daba:	ed8d 0a66 	vstr	s0, [sp, #408]	; 0x198
d004dabe:	f003 fd35 	bl	d005152c <entitySetPosition>
d004dac2:	4629      	mov	r1, r5
d004dac4:	ed9f 0a40 	vldr	s0, [pc, #256]	; d004dbc8 <main+0xb08>
d004dac8:	484d      	ldr	r0, [pc, #308]	; (d004dc00 <main+0xb40>)
d004daca:	f007 f8f7 	bl	d0054cbc <loadMeshSB3D>
d004dace:	ed9f 1a3a 	vldr	s2, [pc, #232]	; d004dbb8 <main+0xaf8>
d004dad2:	eddf 0a4c 	vldr	s1, [pc, #304]	; d004dc04 <main+0xb44>
d004dad6:	ed9f 0a4c 	vldr	s0, [pc, #304]	; d004dc08 <main+0xb48>
d004dada:	f002 fd65 	bl	d00505a8 <vec3>
d004dade:	4628      	mov	r0, r5
d004dae0:	ed8d 0a69 	vstr	s0, [sp, #420]	; 0x1a4
d004dae4:	edcd 0a6a 	vstr	s1, [sp, #424]	; 0x1a8
d004dae8:	ed8d 1a6b 	vstr	s2, [sp, #428]	; 0x1ac
d004daec:	f003 fcd8 	bl	d00514a0 <entityWorldSpawn>
d004daf0:	ed9f 1a38 	vldr	s2, [pc, #224]	; d004dbd4 <main+0xb14>
d004daf4:	4603      	mov	r3, r0
d004daf6:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004dafa:	ed9f 2a2a 	vldr	s4, [pc, #168]	; d004dba4 <main+0xae4>
d004dafe:	eeb0 0a41 	vmov.f32	s0, s2
d004db02:	4628      	mov	r0, r5
d004db04:	eddf 0a28 	vldr	s1, [pc, #160]	; d004dba8 <main+0xae8>
d004db08:	930b      	str	r3, [sp, #44]	; 0x2c
d004db0a:	f000 ff4d 	bl	d004e9a8 <meshSetMaterial>
d004db0e:	2301      	movs	r3, #1
d004db10:	2216      	movs	r2, #22
d004db12:	493e      	ldr	r1, [pc, #248]	; (d004dc0c <main+0xb4c>)
d004db14:	a88b      	add	r0, sp, #556	; 0x22c
d004db16:	ed9f 0a3e 	vldr	s0, [pc, #248]	; d004dc10 <main+0xb50>
d004db1a:	f7fd ff2b 	bl	d004b974 <splineRailInit>
d004db1e:	a88b      	add	r0, sp, #556	; 0x22c
d004db20:	ed9f 1a3c 	vldr	s2, [pc, #240]	; d004dc14 <main+0xb54>
d004db24:	eddf 0a3c 	vldr	s1, [pc, #240]	; d004dc18 <main+0xb58>
d004db28:	ed9f 0a3c 	vldr	s0, [pc, #240]	; d004dc1c <main+0xb5c>
d004db2c:	f7fd ff50 	bl	d004b9d0 <splineRailSetTuning>
d004db30:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d004db34:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004db38:	ed9f 1a39 	vldr	s2, [pc, #228]	; d004dc20 <main+0xb60>
d004db3c:	a88b      	add	r0, sp, #556	; 0x22c
d004db3e:	4d39      	ldr	r5, [pc, #228]	; (d004dc24 <main+0xb64>)
d004db40:	f7fd ff4e 	bl	d004b9e0 <splineRailSetBanking>
d004db44:	7b23      	ldrb	r3, [r4, #12]
d004db46:	7b62      	ldrb	r2, [r4, #13]
d004db48:	7ba1      	ldrb	r1, [r4, #14]
d004db4a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004db4e:	7be2      	ldrb	r2, [r4, #15]
d004db50:	6828      	ldr	r0, [r5, #0]
d004db52:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004db56:	f8df a0d4 	ldr.w	sl, [pc, #212]	; d004dc2c <main+0xb6c>
d004db5a:	eddf aa33 	vldr	s21, [pc, #204]	; d004dc28 <main+0xb68>
d004db5e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004db62:	46d0      	mov	r8, sl
d004db64:	ed9f ba11 	vldr	s22, [pc, #68]	; d004dbac <main+0xaec>
d004db68:	681b      	ldr	r3, [r3, #0]
d004db6a:	eddf ba17 	vldr	s23, [pc, #92]	; d004dbc8 <main+0xb08>
d004db6e:	69db      	ldr	r3, [r3, #28]
d004db70:	4798      	blx	r3
d004db72:	7b23      	ldrb	r3, [r4, #12]
d004db74:	7b62      	ldrb	r2, [r4, #13]
d004db76:	7ba1      	ldrb	r1, [r4, #14]
d004db78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004db7c:	7be2      	ldrb	r2, [r4, #15]
d004db7e:	6828      	ldr	r0, [r5, #0]
d004db80:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004db84:	ed9f aa13 	vldr	s20, [pc, #76]	; d004dbd4 <main+0xb14>
d004db88:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004db8c:	e050      	b.n	d004dc30 <main+0xb70>
d004db8e:	bf00      	nop
d004db90:	d00574d4 	.word	0xd00574d4
d004db94:	44460000 	.word	0x44460000
d004db98:	42a00000 	.word	0x42a00000
d004db9c:	c4080000 	.word	0xc4080000
d004dba0:	d005a590 	.word	0xd005a590
d004dba4:	42c00000 	.word	0x42c00000
d004dba8:	3ee66666 	.word	0x3ee66666
d004dbac:	42c80000 	.word	0x42c80000
d004dbb0:	43960000 	.word	0x43960000
d004dbb4:	c3fa0000 	.word	0xc3fa0000
d004dbb8:	43480000 	.word	0x43480000
d004dbbc:	d00574e4 	.word	0xd00574e4
d004dbc0:	d005a564 	.word	0xd005a564
d004dbc4:	3e4ccccd 	.word	0x3e4ccccd
d004dbc8:	42480000 	.word	0x42480000
d004dbcc:	d00574f4 	.word	0xd00574f4
d004dbd0:	c2c80000 	.word	0xc2c80000
d004dbd4:	00000000 	.word	0x00000000
d004dbd8:	44f3c000 	.word	0x44f3c000
d004dbdc:	d005a3e0 	.word	0xd005a3e0
d004dbe0:	d0057504 	.word	0xd0057504
d004dbe4:	42b40000 	.word	0x42b40000
d004dbe8:	c3480000 	.word	0xc3480000
d004dbec:	c3070000 	.word	0xc3070000
d004dbf0:	44048000 	.word	0x44048000
d004dbf4:	43a00000 	.word	0x43a00000
d004dbf8:	42a40000 	.word	0x42a40000
d004dbfc:	c3750000 	.word	0xc3750000
d004dc00:	d0057510 	.word	0xd0057510
d004dc04:	43af0000 	.word	0x43af0000
d004dc08:	44fa0000 	.word	0x44fa0000
d004dc0c:	d00575b8 	.word	0xd00575b8
d004dc10:	43340000 	.word	0x43340000
d004dc14:	402ccccd 	.word	0x402ccccd
d004dc18:	3fe66666 	.word	0x3fe66666
d004dc1c:	3fb33333 	.word	0x3fb33333
d004dc20:	3f59999a 	.word	0x3f59999a
d004dc24:	d00f49c0 	.word	0xd00f49c0
d004dc28:	3b83126f 	.word	0x3b83126f
d004dc2c:	d005a380 	.word	0xd005a380
d004dc30:	681b      	ldr	r3, [r3, #0]
d004dc32:	699b      	ldr	r3, [r3, #24]
d004dc34:	4798      	blx	r3
d004dc36:	7b23      	ldrb	r3, [r4, #12]
d004dc38:	7b62      	ldrb	r2, [r4, #13]
d004dc3a:	2001      	movs	r0, #1
d004dc3c:	7ba1      	ldrb	r1, [r4, #14]
d004dc3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc42:	7be2      	ldrb	r2, [r4, #15]
d004dc44:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dc48:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc4c:	685b      	ldr	r3, [r3, #4]
d004dc4e:	68db      	ldr	r3, [r3, #12]
d004dc50:	4798      	blx	r3
d004dc52:	7b23      	ldrb	r3, [r4, #12]
d004dc54:	7b62      	ldrb	r2, [r4, #13]
d004dc56:	211e      	movs	r1, #30
d004dc58:	7ba5      	ldrb	r5, [r4, #14]
d004dc5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc5e:	7be2      	ldrb	r2, [r4, #15]
d004dc60:	4608      	mov	r0, r1
d004dc62:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004dc66:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc6a:	685b      	ldr	r3, [r3, #4]
d004dc6c:	689b      	ldr	r3, [r3, #8]
d004dc6e:	4798      	blx	r3
d004dc70:	7823      	ldrb	r3, [r4, #0]
d004dc72:	7862      	ldrb	r2, [r4, #1]
d004dc74:	a939      	add	r1, sp, #228	; 0xe4
d004dc76:	78a0      	ldrb	r0, [r4, #2]
d004dc78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc7c:	78e2      	ldrb	r2, [r4, #3]
d004dc7e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004dc82:	a838      	add	r0, sp, #224	; 0xe0
d004dc84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dc88:	691b      	ldr	r3, [r3, #16]
d004dc8a:	4798      	blx	r3
d004dc8c:	7823      	ldrb	r3, [r4, #0]
d004dc8e:	7862      	ldrb	r2, [r4, #1]
d004dc90:	78a1      	ldrb	r1, [r4, #2]
d004dc92:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dc96:	78e2      	ldrb	r2, [r4, #3]
d004dc98:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004dc9c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dca0:	69db      	ldr	r3, [r3, #28]
d004dca2:	4798      	blx	r3
d004dca4:	7823      	ldrb	r3, [r4, #0]
d004dca6:	7862      	ldrb	r2, [r4, #1]
d004dca8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004dcac:	78a2      	ldrb	r2, [r4, #2]
d004dcae:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004dcb2:	78e2      	ldrb	r2, [r4, #3]
d004dcb4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004dcb8:	689b      	ldr	r3, [r3, #8]
d004dcba:	4798      	blx	r3
d004dcbc:	2313      	movs	r3, #19
d004dcbe:	4605      	mov	r5, r0
d004dcc0:	48cf      	ldr	r0, [pc, #828]	; (d004e000 <main+0xf40>)
d004dcc2:	2112      	movs	r1, #18
d004dcc4:	2215      	movs	r2, #21
d004dcc6:	7003      	strb	r3, [r0, #0]
d004dcc8:	2319      	movs	r3, #25
d004dcca:	48ce      	ldr	r0, [pc, #824]	; (d004e004 <main+0xf44>)
d004dccc:	7001      	strb	r1, [r0, #0]
d004dcce:	49ce      	ldr	r1, [pc, #824]	; (d004e008 <main+0xf48>)
d004dcd0:	ed9f 9bc9 	vldr	d9, [pc, #804]	; d004dff8 <main+0xf38>
d004dcd4:	700a      	strb	r2, [r1, #0]
d004dcd6:	4acd      	ldr	r2, [pc, #820]	; (d004e00c <main+0xf4c>)
d004dcd8:	7013      	strb	r3, [r2, #0]
d004dcda:	7b20      	ldrb	r0, [r4, #12]
d004dcdc:	ee6a 7a8b 	vmul.f32	s15, s21, s22
d004dce0:	7b61      	ldrb	r1, [r4, #13]
d004dce2:	7ba2      	ldrb	r2, [r4, #14]
d004dce4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dce8:	7be3      	ldrb	r3, [r4, #15]
d004dcea:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004dcee:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dcf2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dcf6:	edcd 7a05 	vstr	s15, [sp, #20]
d004dcfa:	f89d 0014 	ldrb.w	r0, [sp, #20]
d004dcfe:	681b      	ldr	r3, [r3, #0]
d004dd00:	689b      	ldr	r3, [r3, #8]
d004dd02:	4798      	blx	r3
d004dd04:	7820      	ldrb	r0, [r4, #0]
d004dd06:	7861      	ldrb	r1, [r4, #1]
d004dd08:	78a2      	ldrb	r2, [r4, #2]
d004dd0a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dd0e:	78e3      	ldrb	r3, [r4, #3]
d004dd10:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dd14:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dd18:	689b      	ldr	r3, [r3, #8]
d004dd1a:	4798      	blx	r3
d004dd1c:	1b43      	subs	r3, r0, r5
d004dd1e:	eddf 7abc 	vldr	s15, [pc, #752]	; d004e010 <main+0xf50>
d004dd22:	ee08 3a10 	vmov	s16, r3
d004dd26:	9005      	str	r0, [sp, #20]
d004dd28:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d004dd2c:	eeb4 8ae7 	vcmpe.f32	s16, s15
d004dd30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dd34:	f300 853c 	bgt.w	d004e7b0 <main+0x16f0>
d004dd38:	eddf 7ab6 	vldr	s15, [pc, #728]	; d004e014 <main+0xf54>
d004dd3c:	eef2 da04 	vmov.f32	s27, #36	; 0x41200000  10.0
d004dd40:	eeb2 ca08 	vmov.f32	s24, #40	; 0x41400000  12.0
d004dd44:	ed9f fab4 	vldr	s30, [pc, #720]	; d004e018 <main+0xf58>
d004dd48:	ee28 8a27 	vmul.f32	s16, s16, s15
d004dd4c:	eddf eab3 	vldr	s29, [pc, #716]	; d004e01c <main+0xf5c>
d004dd50:	eddf 7ab3 	vldr	s15, [pc, #716]	; d004e020 <main+0xf60>
d004dd54:	ed9f eab3 	vldr	s28, [pc, #716]	; d004e024 <main+0xf64>
d004dd58:	ee68 da2d 	vmul.f32	s27, s16, s27
d004dd5c:	eddf cab2 	vldr	s25, [pc, #712]	; d004e028 <main+0xf68>
d004dd60:	ee68 ea2e 	vmul.f32	s29, s16, s29
d004dd64:	ee28 ea0e 	vmul.f32	s28, s16, s28
d004dd68:	ee2d fa8f 	vmul.f32	s30, s27, s30
d004dd6c:	ee38 da08 	vadd.f32	s26, s16, s16
d004dd70:	ee6d daa7 	vmul.f32	s27, s27, s15
d004dd74:	ee68 ca2c 	vmul.f32	s25, s16, s25
d004dd78:	ee28 ca0c 	vmul.f32	s24, s16, s24
d004dd7c:	7820      	ldrb	r0, [r4, #0]
d004dd7e:	7861      	ldrb	r1, [r4, #1]
d004dd80:	78a2      	ldrb	r2, [r4, #2]
d004dd82:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dd86:	78e3      	ldrb	r3, [r4, #3]
d004dd88:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dd8c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dd90:	6a1b      	ldr	r3, [r3, #32]
d004dd92:	4798      	blx	r3
d004dd94:	7825      	ldrb	r5, [r4, #0]
d004dd96:	7863      	ldrb	r3, [r4, #1]
d004dd98:	a93b      	add	r1, sp, #236	; 0xec
d004dd9a:	78a2      	ldrb	r2, [r4, #2]
d004dd9c:	4606      	mov	r6, r0
d004dd9e:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d004dda2:	78e3      	ldrb	r3, [r4, #3]
d004dda4:	a83a      	add	r0, sp, #232	; 0xe8
d004dda6:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d004ddaa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004ddae:	699b      	ldr	r3, [r3, #24]
d004ddb0:	4798      	blx	r3
d004ddb2:	ed9f 1a9e 	vldr	s2, [pc, #632]	; d004e02c <main+0xf6c>
d004ddb6:	ed9f 0a9e 	vldr	s0, [pc, #632]	; d004e030 <main+0xf70>
d004ddba:	eef0 0a4a 	vmov.f32	s1, s20
d004ddbe:	2100      	movs	r1, #0
d004ddc0:	4640      	mov	r0, r8
d004ddc2:	e9dd 233a 	ldrd	r2, r3, [sp, #232]	; 0xe8
d004ddc6:	4252      	negs	r2, r2
d004ddc8:	425b      	negs	r3, r3
d004ddca:	ee07 2a90 	vmov	s15, r2
d004ddce:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004ddd2:	ee07 3a90 	vmov	s15, r3
d004ddd6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ddda:	ee27 1a01 	vmul.f32	s2, s14, s2
d004ddde:	ee27 0a80 	vmul.f32	s0, s15, s0
d004dde2:	f002 fe79 	bl	d0050ad8 <cameraTurn>
d004dde6:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d004ddea:	edda 8a07 	vldr	s17, [sl, #28]
d004ddee:	ee68 8aa7 	vmul.f32	s17, s17, s15
d004ddf2:	ee68 0a28 	vmul.f32	s1, s16, s17
d004ddf6:	eef5 0a40 	vcmp.f32	s1, #0.0
d004ddfa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ddfe:	f040 851a 	bne.w	d004e836 <main+0x1776>
d004de02:	4b8c      	ldr	r3, [pc, #560]	; (d004e034 <main+0xf74>)
d004de04:	eeb0 1a4a 	vmov.f32	s2, s20
d004de08:	eddf 0a8b 	vldr	s1, [pc, #556]	; d004e038 <main+0xf78>
d004de0c:	eeb0 0a4f 	vmov.f32	s0, s30
d004de10:	461d      	mov	r5, r3
d004de12:	6818      	ldr	r0, [r3, #0]
d004de14:	f003 fc32 	bl	d005167c <entityTurnLocal>
d004de18:	eeb0 0a6d 	vmov.f32	s0, s27
d004de1c:	6828      	ldr	r0, [r5, #0]
d004de1e:	f003 fbe9 	bl	d00515f4 <entityMoveForward>
d004de22:	eeb0 1a4a 	vmov.f32	s2, s20
d004de26:	eddf 0a84 	vldr	s1, [pc, #528]	; d004e038 <main+0xf78>
d004de2a:	eeb0 0a6e 	vmov.f32	s0, s29
d004de2e:	980b      	ldr	r0, [sp, #44]	; 0x2c
d004de30:	f003 fc24 	bl	d005167c <entityTurnLocal>
d004de34:	eeb0 0a4e 	vmov.f32	s0, s28
d004de38:	ee1f 0a90 	vmov	r0, s31
d004de3c:	f003 fbda 	bl	d00515f4 <entityMoveForward>
d004de40:	ee1f 0a90 	vmov	r0, s31
d004de44:	f003 fb96 	bl	d0051574 <entityGetPosition>
d004de48:	eddf 7a7c 	vldr	s15, [pc, #496]	; d004e03c <main+0xf7c>
d004de4c:	ed8d 0a45 	vstr	s0, [sp, #276]	; 0x114
d004de50:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004de54:	edcd 0a46 	vstr	s1, [sp, #280]	; 0x118
d004de58:	ed8d 1a47 	vstr	s2, [sp, #284]	; 0x11c
d004de5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004de60:	f300 84d5 	bgt.w	d004e80e <main+0x174e>
d004de64:	ed9d 0a45 	vldr	s0, [sp, #276]	; 0x114
d004de68:	9809      	ldr	r0, [sp, #36]	; 0x24
d004de6a:	eddd 0a46 	vldr	s1, [sp, #280]	; 0x118
d004de6e:	ed9d 1a47 	vldr	s2, [sp, #284]	; 0x11c
d004de72:	f004 fbd7 	bl	d0052624 <lightSetPosition>
d004de76:	edda 0a01 	vldr	s1, [sl, #4]
d004de7a:	ed9a 1a02 	vldr	s2, [sl, #8]
d004de7e:	ed9a 0a00 	vldr	s0, [sl]
d004de82:	9837      	ldr	r0, [sp, #220]	; 0xdc
d004de84:	f003 fb52 	bl	d005152c <entitySetPosition>
d004de88:	4641      	mov	r1, r8
d004de8a:	9837      	ldr	r0, [sp, #220]	; 0xdc
d004de8c:	f004 f8c8 	bl	d0052020 <entityMatchOrientationCamera>
d004de90:	eeb0 0a48 	vmov.f32	s0, s16
d004de94:	ee1f 1a90 	vmov	r1, s31
d004de98:	9837      	ldr	r0, [sp, #220]	; 0xdc
d004de9a:	f006 febf 	bl	d0054c1c <sb3dEntityAudioInfoDefault>
d004de9e:	7d20      	ldrb	r0, [r4, #20]
d004dea0:	7d62      	ldrb	r2, [r4, #21]
d004dea2:	eddf 7a67 	vldr	s15, [pc, #412]	; d004e040 <main+0xf80>
d004dea6:	ea40 2102 	orr.w	r1, r0, r2, lsl #8
d004deaa:	7da2      	ldrb	r2, [r4, #22]
d004deac:	ee60 7aa7 	vmul.f32	s15, s1, s15
d004deb0:	7de3      	ldrb	r3, [r4, #23]
d004deb2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004deb6:	2003      	movs	r0, #3
d004deb8:	edcd 1a75 	vstr	s3, [sp, #468]	; 0x1d4
d004debc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dec0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004dec4:	ed8d 0a72 	vstr	s0, [sp, #456]	; 0x1c8
d004dec8:	689b      	ldr	r3, [r3, #8]
d004deca:	edcd 7a06 	vstr	s15, [sp, #24]
d004dece:	699b      	ldr	r3, [r3, #24]
d004ded0:	f99d 1018 	ldrsb.w	r1, [sp, #24]
d004ded4:	edcd 0a73 	vstr	s1, [sp, #460]	; 0x1cc
d004ded8:	ed8d 1a74 	vstr	s2, [sp, #464]	; 0x1d0
d004dedc:	4798      	blx	r3
d004dede:	ed9f 7a59 	vldr	s14, [pc, #356]	; d004e044 <main+0xf84>
d004dee2:	2003      	movs	r0, #3
d004dee4:	eddd 7a72 	vldr	s15, [sp, #456]	; 0x1c8
d004dee8:	7d25      	ldrb	r5, [r4, #20]
d004deea:	ee67 7a87 	vmul.f32	s15, s15, s14
d004deee:	7d62      	ldrb	r2, [r4, #21]
d004def0:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004def4:	7da2      	ldrb	r2, [r4, #22]
d004def6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004defa:	7de3      	ldrb	r3, [r4, #23]
d004defc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004df00:	4951      	ldr	r1, [pc, #324]	; (d004e048 <main+0xf88>)
d004df02:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004df06:	ee17 2a90 	vmov	r2, s15
d004df0a:	689b      	ldr	r3, [r3, #8]
d004df0c:	440a      	add	r2, r1
d004df0e:	691b      	ldr	r3, [r3, #16]
d004df10:	b291      	uxth	r1, r2
d004df12:	4798      	blx	r3
d004df14:	7d25      	ldrb	r5, [r4, #20]
d004df16:	7d62      	ldrb	r2, [r4, #21]
d004df18:	2003      	movs	r0, #3
d004df1a:	ed9f 7a4c 	vldr	s14, [pc, #304]	; d004e04c <main+0xf8c>
d004df1e:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004df22:	7da3      	ldrb	r3, [r4, #22]
d004df24:	eddd 7a74 	vldr	s15, [sp, #464]	; 0x1d0
d004df28:	ea41 4203 	orr.w	r2, r1, r3, lsl #16
d004df2c:	7de3      	ldrb	r3, [r4, #23]
d004df2e:	ee67 7a87 	vmul.f32	s15, s15, s14
d004df32:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004df36:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004df3a:	689b      	ldr	r3, [r3, #8]
d004df3c:	695b      	ldr	r3, [r3, #20]
d004df3e:	edcd 7a06 	vstr	s15, [sp, #24]
d004df42:	f89d 1018 	ldrb.w	r1, [sp, #24]
d004df46:	4798      	blx	r3
d004df48:	9d07      	ldr	r5, [sp, #28]
d004df4a:	edda 0a01 	vldr	s1, [sl, #4]
d004df4e:	ed9a 1a02 	vldr	s2, [sl, #8]
d004df52:	4628      	mov	r0, r5
d004df54:	ed9a 0a00 	vldr	s0, [sl]
d004df58:	f004 fb64 	bl	d0052624 <lightSetPosition>
d004df5c:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004df60:	4628      	mov	r0, r5
d004df62:	f004 fb7b 	bl	d005265c <lightSetIntensity>
d004df66:	eeb0 0a4b 	vmov.f32	s0, s22
d004df6a:	ed9f 1a39 	vldr	s2, [pc, #228]	; d004e050 <main+0xf90>
d004df6e:	4628      	mov	r0, r5
d004df70:	eddf 0a38 	vldr	s1, [pc, #224]	; d004e054 <main+0xf94>
d004df74:	f004 fab2 	bl	d00524dc <lightSetRanges>
d004df78:	9b04      	ldr	r3, [sp, #16]
d004df7a:	2b00      	cmp	r3, #0
d004df7c:	f040 8410 	bne.w	d004e7a0 <main+0x16e0>
d004df80:	2101      	movs	r1, #1
d004df82:	4628      	mov	r0, r5
d004df84:	f004 fad4 	bl	d0052530 <lightEnable>
d004df88:	eeb0 0a48 	vmov.f32	s0, s16
d004df8c:	980d      	ldr	r0, [sp, #52]	; 0x34
d004df8e:	f7fd ffb1 	bl	d004bef4 <weatherLightning>
d004df92:	4681      	mov	r9, r0
d004df94:	7820      	ldrb	r0, [r4, #0]
d004df96:	f006 0501 	and.w	r5, r6, #1
d004df9a:	7861      	ldrb	r1, [r4, #1]
d004df9c:	78a2      	ldrb	r2, [r4, #2]
d004df9e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dfa2:	78e3      	ldrb	r3, [r4, #3]
d004dfa4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dfa8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dfac:	69db      	ldr	r3, [r3, #28]
d004dfae:	4798      	blx	r3
d004dfb0:	4b29      	ldr	r3, [pc, #164]	; (d004e058 <main+0xf98>)
d004dfb2:	681b      	ldr	r3, [r3, #0]
d004dfb4:	b933      	cbnz	r3, d004dfc4 <main+0xf04>
d004dfb6:	07f3      	lsls	r3, r6, #31
d004dfb8:	d504      	bpl.n	d004dfc4 <main+0xf04>
d004dfba:	2301      	movs	r3, #1
d004dfbc:	4a26      	ldr	r2, [pc, #152]	; (d004e058 <main+0xf98>)
d004dfbe:	6013      	str	r3, [r2, #0]
d004dfc0:	f7fe fd30 	bl	d004ca24 <FirePlayerLaser>
d004dfc4:	f005 03ff 	and.w	r3, r5, #255	; 0xff
d004dfc8:	b90d      	cbnz	r5, d004dfce <main+0xf0e>
d004dfca:	4a23      	ldr	r2, [pc, #140]	; (d004e058 <main+0xf98>)
d004dfcc:	6013      	str	r3, [r2, #0]
d004dfce:	f016 0602 	ands.w	r6, r6, #2
d004dfd2:	f040 843c 	bne.w	d004e84e <main+0x178e>
d004dfd6:	eeb0 0a48 	vmov.f32	s0, s16
d004dfda:	f7fe fe93 	bl	d004cd04 <UpdateLasers>
d004dfde:	4a1f      	ldr	r2, [pc, #124]	; (d004e05c <main+0xf9c>)
d004dfe0:	8813      	ldrh	r3, [r2, #0]
d004dfe2:	3b01      	subs	r3, #1
d004dfe4:	b21b      	sxth	r3, r3
d004dfe6:	2b00      	cmp	r3, #0
d004dfe8:	8013      	strh	r3, [r2, #0]
d004dfea:	dc40      	bgt.n	d004e06e <main+0xfae>
d004dfec:	4b1c      	ldr	r3, [pc, #112]	; (d004e060 <main+0xfa0>)
d004dfee:	f9b3 3000 	ldrsh.w	r3, [r3]
d004dff2:	e037      	b.n	d004e064 <main+0xfa4>
d004dff4:	f3af 8000 	nop.w
d004dff8:	47ae147b 	.word	0x47ae147b
d004dffc:	3f847ae1 	.word	0x3f847ae1
d004e000:	d00f4964 	.word	0xd00f4964
d004e004:	d00f48e0 	.word	0xd00f48e0
d004e008:	d00f499c 	.word	0xd00f499c
d004e00c:	d00f4944 	.word	0xd00f4944
d004e010:	4d7bc521 	.word	0x4d7bc521
d004e014:	310f2a63 	.word	0x310f2a63
d004e018:	bb449ba6 	.word	0xbb449ba6
d004e01c:	3f99999a 	.word	0x3f99999a
d004e020:	40d9999a 	.word	0x40d9999a
d004e024:	43852666 	.word	0x43852666
d004e028:	435c0000 	.word	0x435c0000
d004e02c:	3ba3d70a 	.word	0x3ba3d70a
d004e030:	3c088889 	.word	0x3c088889
d004e034:	d005a3e0 	.word	0xd005a3e0
d004e038:	00000000 	.word	0x00000000
d004e03c:	451c4000 	.word	0x451c4000
d004e040:	42fe0000 	.word	0x42fe0000
d004e044:	45abe000 	.word	0x45abe000
d004e048:	ffffac44 	.word	0xffffac44
d004e04c:	430c0000 	.word	0x430c0000
d004e050:	44048000 	.word	0x44048000
d004e054:	43a00000 	.word	0x43a00000
d004e058:	d005a568 	.word	0xd005a568
d004e05c:	d005a596 	.word	0xd005a596
d004e060:	d005a594 	.word	0xd005a594
d004e064:	2b00      	cmp	r3, #0
d004e066:	f340 8421 	ble.w	d004e8ac <main+0x17ec>
d004e06a:	f7fe fc7d 	bl	d004c968 <UpdateTurretTest.part.0>
d004e06e:	eeb0 0a48 	vmov.f32	s0, s16
d004e072:	f7fe f9a1 	bl	d004c3b8 <updateImpactFlames>
d004e076:	4bbb      	ldr	r3, [pc, #748]	; (d004e364 <main+0x12a4>)
d004e078:	ed9f 0abb 	vldr	s0, [pc, #748]	; d004e368 <main+0x12a8>
d004e07c:	ed93 7a00 	vldr	s14, [r3]
d004e080:	eddf 0aba 	vldr	s1, [pc, #744]	; d004e36c <main+0x12ac>
d004e084:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d004e088:	ed9f 1ab9 	vldr	s2, [pc, #740]	; d004e370 <main+0x12b0>
d004e08c:	ee37 7b09 	vadd.f64	d7, d7, d9
d004e090:	eef7 cbc7 	vcvt.f32.f64	s25, d7
d004e094:	edc3 ca00 	vstr	s25, [r3]
d004e098:	f002 fa86 	bl	d00505a8 <vec3>
d004e09c:	eef0 7a40 	vmov.f32	s15, s0
d004e0a0:	eeb0 7a60 	vmov.f32	s14, s1
d004e0a4:	eef0 1a41 	vmov.f32	s3, s2
d004e0a8:	eeb0 0a6c 	vmov.f32	s0, s25
d004e0ac:	edcd 7a6f 	vstr	s15, [sp, #444]	; 0x1bc
d004e0b0:	eeb0 1a60 	vmov.f32	s2, s1
d004e0b4:	ed8d 7a70 	vstr	s14, [sp, #448]	; 0x1c0
d004e0b8:	eef0 0a67 	vmov.f32	s1, s15
d004e0bc:	edcd 1a71 	vstr	s3, [sp, #452]	; 0x1c4
d004e0c0:	f7fe ff64 	bl	d004cf8c <updateSmoke>
d004e0c4:	9d0a      	ldr	r5, [sp, #40]	; 0x28
d004e0c6:	eeb0 1a4d 	vmov.f32	s2, s26
d004e0ca:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d004e374 <main+0x12b4>
d004e0ce:	eef0 0a4a 	vmov.f32	s1, s20
d004e0d2:	4628      	mov	r0, r5
d004e0d4:	f003 fad2 	bl	d005167c <entityTurnLocal>
d004e0d8:	eeb0 1a4a 	vmov.f32	s2, s20
d004e0dc:	eef0 0a48 	vmov.f32	s1, s16
d004e0e0:	ed9f 0aa4 	vldr	s0, [pc, #656]	; d004e374 <main+0x12b4>
d004e0e4:	4628      	mov	r0, r5
d004e0e6:	f003 fac9 	bl	d005167c <entityTurnLocal>
d004e0ea:	7b20      	ldrb	r0, [r4, #12]
d004e0ec:	7b61      	ldrb	r1, [r4, #13]
d004e0ee:	7ba2      	ldrb	r2, [r4, #14]
d004e0f0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e0f4:	7be3      	ldrb	r3, [r4, #15]
d004e0f6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e0fa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e0fe:	681b      	ldr	r3, [r3, #0]
d004e100:	68db      	ldr	r3, [r3, #12]
d004e102:	4798      	blx	r3
d004e104:	4a9c      	ldr	r2, [pc, #624]	; (d004e378 <main+0x12b8>)
d004e106:	7813      	ldrb	r3, [r2, #0]
d004e108:	f1c3 0301 	rsb	r3, r3, #1
d004e10c:	b2db      	uxtb	r3, r3
d004e10e:	7013      	strb	r3, [r2, #0]
d004e110:	7813      	ldrb	r3, [r2, #0]
d004e112:	7b21      	ldrb	r1, [r4, #12]
d004e114:	7b60      	ldrb	r0, [r4, #13]
d004e116:	7ba2      	ldrb	r2, [r4, #14]
d004e118:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e11c:	2b00      	cmp	r3, #0
d004e11e:	f000 8314 	beq.w	d004e74a <main+0x168a>
d004e122:	4d96      	ldr	r5, [pc, #600]	; (d004e37c <main+0x12bc>)
d004e124:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e128:	7be3      	ldrb	r3, [r4, #15]
d004e12a:	6829      	ldr	r1, [r5, #0]
d004e12c:	4894      	ldr	r0, [pc, #592]	; (d004e380 <main+0x12c0>)
d004e12e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e132:	6800      	ldr	r0, [r0, #0]
d004e134:	f8df b25c 	ldr.w	fp, [pc, #604]	; d004e394 <main+0x12d4>
d004e138:	2700      	movs	r7, #0
d004e13a:	681b      	ldr	r3, [r3, #0]
d004e13c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e13e:	4798      	blx	r3
d004e140:	682b      	ldr	r3, [r5, #0]
d004e142:	4d90      	ldr	r5, [pc, #576]	; (d004e384 <main+0x12c4>)
d004e144:	6818      	ldr	r0, [r3, #0]
d004e146:	f000 fc7d 	bl	d004ea44 <set3DRenderBuffer>
d004e14a:	4649      	mov	r1, r9
d004e14c:	46b1      	mov	r9, r6
d004e14e:	f81b 3b01 	ldrb.w	r3, [fp], #1
d004e152:	b353      	cbz	r3, d004e1aa <main+0x10ea>
d004e154:	682e      	ldr	r6, [r5, #0]
d004e156:	4638      	mov	r0, r7
d004e158:	1e72      	subs	r2, r6, #1
d004e15a:	2e00      	cmp	r6, #0
d004e15c:	f000 82fc 	beq.w	d004e758 <main+0x1698>
d004e160:	602a      	str	r2, [r5, #0]
d004e162:	9206      	str	r2, [sp, #24]
d004e164:	bb0a      	cbnz	r2, d004e1aa <main+0x10ea>
d004e166:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e16a:	7d63      	ldrb	r3, [r4, #21]
d004e16c:	7da6      	ldrb	r6, [r4, #22]
d004e16e:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d004e172:	7de3      	ldrb	r3, [r4, #23]
d004e174:	910c      	str	r1, [sp, #48]	; 0x30
d004e176:	ea4c 4606 	orr.w	r6, ip, r6, lsl #16
d004e17a:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d004e17e:	689b      	ldr	r3, [r3, #8]
d004e180:	689b      	ldr	r3, [r3, #8]
d004e182:	4798      	blx	r3
d004e184:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e188:	7d63      	ldrb	r3, [r4, #21]
d004e18a:	4638      	mov	r0, r7
d004e18c:	7da6      	ldrb	r6, [r4, #22]
d004e18e:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d004e192:	7de3      	ldrb	r3, [r4, #23]
d004e194:	ea4c 4606 	orr.w	r6, ip, r6, lsl #16
d004e198:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d004e19c:	689b      	ldr	r3, [r3, #8]
d004e19e:	685b      	ldr	r3, [r3, #4]
d004e1a0:	4798      	blx	r3
d004e1a2:	9a06      	ldr	r2, [sp, #24]
d004e1a4:	990c      	ldr	r1, [sp, #48]	; 0x30
d004e1a6:	f80b 2c01 	strb.w	r2, [fp, #-1]
d004e1aa:	3504      	adds	r5, #4
d004e1ac:	2f00      	cmp	r7, #0
d004e1ae:	f000 8283 	beq.w	d004e6b8 <main+0x15f8>
d004e1b2:	9b08      	ldr	r3, [sp, #32]
d004e1b4:	464e      	mov	r6, r9
d004e1b6:	4689      	mov	r9, r1
d004e1b8:	2b00      	cmp	r3, #0
d004e1ba:	f040 8355 	bne.w	d004e868 <main+0x17a8>
d004e1be:	9b04      	ldr	r3, [sp, #16]
d004e1c0:	2b00      	cmp	r3, #0
d004e1c2:	f040 8311 	bne.w	d004e7e8 <main+0x1728>
d004e1c6:	eeb0 0a4a 	vmov.f32	s0, s20
d004e1ca:	f1b9 0f00 	cmp.w	r9, #0
d004e1ce:	f000 8301 	beq.w	d004e7d4 <main+0x1714>
d004e1d2:	496d      	ldr	r1, [pc, #436]	; (d004e388 <main+0x12c8>)
d004e1d4:	2305      	movs	r3, #5
d004e1d6:	2215      	movs	r2, #21
d004e1d8:	4640      	mov	r0, r8
d004e1da:	7809      	ldrb	r1, [r1, #0]
d004e1dc:	f005 fa6a 	bl	d00536b4 <drawFakeHorizon>
d004e1e0:	496a      	ldr	r1, [pc, #424]	; (d004e38c <main+0x12cc>)
d004e1e2:	780b      	ldrb	r3, [r1, #0]
d004e1e4:	2b00      	cmp	r3, #0
d004e1e6:	f040 835d 	bne.w	d004e8a4 <main+0x17e4>
d004e1ea:	4869      	ldr	r0, [pc, #420]	; (d004e390 <main+0x12d0>)
d004e1ec:	2205      	movs	r2, #5
d004e1ee:	4d69      	ldr	r5, [pc, #420]	; (d004e394 <main+0x12d4>)
d004e1f0:	7803      	ldrb	r3, [r0, #0]
d004e1f2:	700a      	strb	r2, [r1, #0]
d004e1f4:	f1c3 0301 	rsb	r3, r3, #1
d004e1f8:	b2db      	uxtb	r3, r3
d004e1fa:	5cea      	ldrb	r2, [r5, r3]
d004e1fc:	7003      	strb	r3, [r0, #0]
d004e1fe:	b92a      	cbnz	r2, d004e20c <main+0x114c>
d004e200:	2101      	movs	r1, #1
d004e202:	2278      	movs	r2, #120	; 0x78
d004e204:	54e9      	strb	r1, [r5, r3]
d004e206:	495f      	ldr	r1, [pc, #380]	; (d004e384 <main+0x12c4>)
d004e208:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d004e20c:	2008      	movs	r0, #8
d004e20e:	2320      	movs	r3, #32
d004e210:	2280      	movs	r2, #128	; 0x80
d004e212:	2105      	movs	r1, #5
d004e214:	9000      	str	r0, [sp, #0]
d004e216:	4640      	mov	r0, r8
d004e218:	f005 f956 	bl	d00534c8 <drawFakeSkyDots>
d004e21c:	495e      	ldr	r1, [pc, #376]	; (d004e398 <main+0x12d8>)
d004e21e:	eeb0 0a4a 	vmov.f32	s0, s20
d004e222:	236e      	movs	r3, #110	; 0x6e
d004e224:	2280      	movs	r2, #128	; 0x80
d004e226:	7809      	ldrb	r1, [r1, #0]
d004e228:	4640      	mov	r0, r8
d004e22a:	f005 f835 	bl	d0053298 <drawFakeHorizonDots>
d004e22e:	7820      	ldrb	r0, [r4, #0]
d004e230:	7861      	ldrb	r1, [r4, #1]
d004e232:	78a2      	ldrb	r2, [r4, #2]
d004e234:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e238:	78e3      	ldrb	r3, [r4, #3]
d004e23a:	4d58      	ldr	r5, [pc, #352]	; (d004e39c <main+0x12dc>)
d004e23c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e240:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e244:	689b      	ldr	r3, [r3, #8]
d004e246:	4798      	blx	r3
d004e248:	4603      	mov	r3, r0
d004e24a:	4640      	mov	r0, r8
d004e24c:	602b      	str	r3, [r5, #0]
d004e24e:	f006 fa6b 	bl	d0054728 <Render3D>
d004e252:	7820      	ldrb	r0, [r4, #0]
d004e254:	7861      	ldrb	r1, [r4, #1]
d004e256:	78a2      	ldrb	r2, [r4, #2]
d004e258:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e25c:	78e3      	ldrb	r3, [r4, #3]
d004e25e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e262:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e266:	689b      	ldr	r3, [r3, #8]
d004e268:	4798      	blx	r3
d004e26a:	494d      	ldr	r1, [pc, #308]	; (d004e3a0 <main+0x12e0>)
d004e26c:	eeb5 7a00 	vmov.f32	s14, #80	; 0x3e800000  0.250
d004e270:	682a      	ldr	r2, [r5, #0]
d004e272:	edd1 7a00 	vldr	s15, [r1]
d004e276:	4d4b      	ldr	r5, [pc, #300]	; (d004e3a4 <main+0x12e4>)
d004e278:	1a80      	subs	r0, r0, r2
d004e27a:	ee78 7a27 	vadd.f32	s15, s16, s15
d004e27e:	4a4a      	ldr	r2, [pc, #296]	; (d004e3a8 <main+0x12e8>)
d004e280:	682b      	ldr	r3, [r5, #0]
d004e282:	6010      	str	r0, [r2, #0]
d004e284:	eef4 7ac7 	vcmpe.f32	s15, s14
d004e288:	3301      	adds	r3, #1
d004e28a:	edc1 7a00 	vstr	s15, [r1]
d004e28e:	602b      	str	r3, [r5, #0]
d004e290:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e294:	db24      	blt.n	d004e2e0 <main+0x1220>
d004e296:	ed9f 7a45 	vldr	s14, [pc, #276]	; d004e3ac <main+0x12ec>
d004e29a:	eef4 7ac7 	vcmpe.f32	s15, s14
d004e29e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e2a2:	f340 82e8 	ble.w	d004e876 <main+0x17b6>
d004e2a6:	ee07 3a10 	vmov	s14, r3
d004e2aa:	4b41      	ldr	r3, [pc, #260]	; (d004e3b0 <main+0x12f0>)
d004e2ac:	2164      	movs	r1, #100	; 0x64
d004e2ae:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004e2b2:	ee27 7a0b 	vmul.f32	s14, s14, s22
d004e2b6:	eec7 6a27 	vdiv.f32	s13, s14, s15
d004e2ba:	eefc 7ae6 	vcvt.u32.f32	s15, s13
d004e2be:	ee17 2a90 	vmov	r2, s15
d004e2c2:	fba3 0302 	umull	r0, r3, r3, r2
d004e2c6:	095b      	lsrs	r3, r3, #5
d004e2c8:	fb01 2213 	mls	r2, r1, r3, r2
d004e2cc:	4839      	ldr	r0, [pc, #228]	; (d004e3b4 <main+0x12f4>)
d004e2ce:	2100      	movs	r1, #0
d004e2d0:	6003      	str	r3, [r0, #0]
d004e2d2:	4b39      	ldr	r3, [pc, #228]	; (d004e3b8 <main+0x12f8>)
d004e2d4:	601a      	str	r2, [r3, #0]
d004e2d6:	4b32      	ldr	r3, [pc, #200]	; (d004e3a0 <main+0x12e0>)
d004e2d8:	ed83 aa00 	vstr	s20, [r3]
d004e2dc:	4b31      	ldr	r3, [pc, #196]	; (d004e3a4 <main+0x12e4>)
d004e2de:	6019      	str	r1, [r3, #0]
d004e2e0:	a88b      	add	r0, sp, #556	; 0x22c
d004e2e2:	f7fd fd6b 	bl	d004bdbc <splineRailGetCurrentNode>
d004e2e6:	2e00      	cmp	r6, #0
d004e2e8:	f040 81fe 	bne.w	d004e6e8 <main+0x1628>
d004e2ec:	4b2e      	ldr	r3, [pc, #184]	; (d004e3a8 <main+0x12e8>)
d004e2ee:	b2c5      	uxtb	r5, r0
d004e2f0:	4f32      	ldr	r7, [pc, #200]	; (d004e3bc <main+0x12fc>)
d004e2f2:	f44f 767a 	mov.w	r6, #1000	; 0x3e8
d004e2f6:	f8d3 9000 	ldr.w	r9, [r3]
d004e2fa:	4b2e      	ldr	r3, [pc, #184]	; (d004e3b4 <main+0x12f4>)
d004e2fc:	681a      	ldr	r2, [r3, #0]
d004e2fe:	4b2e      	ldr	r3, [pc, #184]	; (d004e3b8 <main+0x12f8>)
d004e300:	920c      	str	r2, [sp, #48]	; 0x30
d004e302:	681b      	ldr	r3, [r3, #0]
d004e304:	9306      	str	r3, [sp, #24]
d004e306:	f004 ffc1 	bl	d005328c <getRenderTriCount>
d004e30a:	f8df c0c0 	ldr.w	ip, [pc, #192]	; d004e3cc <main+0x130c>
d004e30e:	9003      	str	r0, [sp, #12]
d004e310:	fbac 3109 	umull	r3, r1, ip, r9
d004e314:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d004e316:	9b06      	ldr	r3, [sp, #24]
d004e318:	ea4f 4e51 	mov.w	lr, r1, lsr #17
d004e31c:	4828      	ldr	r0, [pc, #160]	; (d004e3c0 <main+0x1300>)
d004e31e:	4929      	ldr	r1, [pc, #164]	; (d004e3c4 <main+0x1304>)
d004e320:	fb07 971e 	mls	r7, r7, lr, r9
d004e324:	9502      	str	r5, [sp, #8]
d004e326:	fb06 f607 	mul.w	r6, r6, r7
d004e32a:	f8cd e000 	str.w	lr, [sp]
d004e32e:	fbac 7606 	umull	r7, r6, ip, r6
d004e332:	0c76      	lsrs	r6, r6, #17
d004e334:	9601      	str	r6, [sp, #4]
d004e336:	f007 fabd 	bl	d00558b4 <siprintf>
d004e33a:	4b23      	ldr	r3, [pc, #140]	; (d004e3c8 <main+0x1308>)
d004e33c:	781b      	ldrb	r3, [r3, #0]
d004e33e:	42ab      	cmp	r3, r5
d004e340:	d002      	beq.n	d004e348 <main+0x1288>
d004e342:	2d14      	cmp	r5, #20
d004e344:	f000 829a 	beq.w	d004e87c <main+0x17bc>
d004e348:	9b04      	ldr	r3, [sp, #16]
d004e34a:	0118      	lsls	r0, r3, #4
d004e34c:	3001      	adds	r0, #1
d004e34e:	7b23      	ldrb	r3, [r4, #12]
d004e350:	2640      	movs	r6, #64	; 0x40
d004e352:	7b62      	ldrb	r2, [r4, #13]
d004e354:	7ba7      	ldrb	r7, [r4, #14]
d004e356:	ea43 2102 	orr.w	r1, r3, r2, lsl #8
d004e35a:	4a1b      	ldr	r2, [pc, #108]	; (d004e3c8 <main+0x1308>)
d004e35c:	7be3      	ldrb	r3, [r4, #15]
d004e35e:	7015      	strb	r5, [r2, #0]
d004e360:	e036      	b.n	d004e3d0 <main+0x1310>
d004e362:	bf00      	nop
d004e364:	d005a598 	.word	0xd005a598
d004e368:	c40d4000 	.word	0xc40d4000
d004e36c:	43d70000 	.word	0x43d70000
d004e370:	c4480000 	.word	0xc4480000
d004e374:	00000000 	.word	0x00000000
d004e378:	d005a400 	.word	0xd005a400
d004e37c:	d00f49a0 	.word	0xd00f49a0
d004e380:	d00f49c0 	.word	0xd00f49c0
d004e384:	d005a580 	.word	0xd005a580
d004e388:	d00f4964 	.word	0xd00f4964
d004e38c:	d005a2ac 	.word	0xd005a2ac
d004e390:	d005a368 	.word	0xd005a368
d004e394:	d005a57c 	.word	0xd005a57c
d004e398:	d00f4944 	.word	0xd00f4944
d004e39c:	d005a588 	.word	0xd005a588
d004e3a0:	d005a3f8 	.word	0xd005a3f8
d004e3a4:	d005a3f4 	.word	0xd005a3f4
d004e3a8:	d005a58c 	.word	0xd005a58c
d004e3ac:	3727c5ac 	.word	0x3727c5ac
d004e3b0:	51eb851f 	.word	0x51eb851f
d004e3b4:	d005a3fc 	.word	0xd005a3fc
d004e3b8:	d005a3f0 	.word	0xd005a3f0
d004e3bc:	00075300 	.word	0x00075300
d004e3c0:	d005a2b4 	.word	0xd005a2b4
d004e3c4:	d005751c 	.word	0xd005751c
d004e3c8:	d005a56c 	.word	0xd005a56c
d004e3cc:	45e7b273 	.word	0x45e7b273
d004e3d0:	ea41 4207 	orr.w	r2, r1, r7, lsl #16
d004e3d4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e3d8:	685b      	ldr	r3, [r3, #4]
d004e3da:	68db      	ldr	r3, [r3, #12]
d004e3dc:	4798      	blx	r3
d004e3de:	7b20      	ldrb	r0, [r4, #12]
d004e3e0:	7b65      	ldrb	r5, [r4, #13]
d004e3e2:	2108      	movs	r1, #8
d004e3e4:	7ba3      	ldrb	r3, [r4, #14]
d004e3e6:	ea40 2505 	orr.w	r5, r0, r5, lsl #8
d004e3ea:	7be7      	ldrb	r7, [r4, #15]
d004e3ec:	4608      	mov	r0, r1
d004e3ee:	4ab3      	ldr	r2, [pc, #716]	; (d004e6bc <main+0x15fc>)
d004e3f0:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
d004e3f4:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d004e3f8:	687b      	ldr	r3, [r7, #4]
d004e3fa:	4fb1      	ldr	r7, [pc, #708]	; (d004e6c0 <main+0x1600>)
d004e3fc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d004e3fe:	4798      	blx	r3
d004e400:	eddf 7ab0 	vldr	s15, [pc, #704]	; d004e6c4 <main+0x1604>
d004e404:	7d25      	ldrb	r5, [r4, #20]
d004e406:	2002      	movs	r0, #2
d004e408:	ee68 7aa7 	vmul.f32	s15, s17, s15
d004e40c:	7d62      	ldrb	r2, [r4, #21]
d004e40e:	ed9f 7aae 	vldr	s14, [pc, #696]	; d004e6c8 <main+0x1608>
d004e412:	ee68 8aab 	vmul.f32	s17, s17, s23
d004e416:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004e41a:	7da2      	ldrb	r2, [r4, #22]
d004e41c:	eef0 7ae7 	vabs.f32	s15, s15
d004e420:	7de3      	ldrb	r3, [r4, #23]
d004e422:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e426:	ee77 7a87 	vadd.f32	s15, s15, s14
d004e42a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e42e:	689b      	ldr	r3, [r3, #8]
d004e430:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004e434:	691b      	ldr	r3, [r3, #16]
d004e436:	ee17 2a90 	vmov	r2, s15
d004e43a:	b291      	uxth	r1, r2
d004e43c:	4798      	blx	r3
d004e43e:	ed9f 7aa3 	vldr	s14, [pc, #652]	; d004e6cc <main+0x160c>
d004e442:	edd7 7a00 	vldr	s15, [r7]
d004e446:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004e44a:	eeb4 8a47 	vcmp.f32	s16, s14
d004e44e:	7b21      	ldrb	r1, [r4, #12]
d004e450:	ee78 8ae7 	vsub.f32	s17, s17, s15
d004e454:	7b62      	ldrb	r2, [r4, #13]
d004e456:	7ba3      	ldrb	r3, [r4, #14]
d004e458:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004e45c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e460:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d004e464:	7be0      	ldrb	r0, [r4, #15]
d004e466:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d004e46a:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d004e46e:	f04f 010a 	mov.w	r1, #10
d004e472:	fe36 ca0c 	vselgt.f32	s24, s12, s24
d004e476:	eee8 7a8c 	vfma.f32	s15, s17, s24
d004e47a:	ea43 6000 	orr.w	r0, r3, r0, lsl #24
d004e47e:	f44f 7280 	mov.w	r2, #256	; 0x100
d004e482:	4633      	mov	r3, r6
d004e484:	6845      	ldr	r5, [r0, #4]
d004e486:	9600      	str	r6, [sp, #0]
d004e488:	4891      	ldr	r0, [pc, #580]	; (d004e6d0 <main+0x1610>)
d004e48a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004e48e:	69ad      	ldr	r5, [r5, #24]
d004e490:	edc7 7a00 	vstr	s15, [r7]
d004e494:	eeb0 8a67 	vmov.f32	s16, s15
d004e498:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e49c:	fe67 8a26 	vselge.f32	s17, s14, s13
d004e4a0:	47a8      	blx	r5
d004e4a2:	4b8c      	ldr	r3, [pc, #560]	; (d004e6d4 <main+0x1614>)
d004e4a4:	781b      	ldrb	r3, [r3, #0]
d004e4a6:	b1cb      	cbz	r3, d004e4dc <main+0x141c>
d004e4a8:	7b21      	ldrb	r1, [r4, #12]
d004e4aa:	ee38 8a28 	vadd.f32	s16, s16, s17
d004e4ae:	7b60      	ldrb	r0, [r4, #13]
d004e4b0:	4633      	mov	r3, r6
d004e4b2:	7ba5      	ldrb	r5, [r4, #14]
d004e4b4:	2280      	movs	r2, #128	; 0x80
d004e4b6:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d004e4ba:	eefd 7ac8 	vcvt.s32.f32	s15, s16
d004e4be:	7be7      	ldrb	r7, [r4, #15]
d004e4c0:	ea41 4005 	orr.w	r0, r1, r5, lsl #16
d004e4c4:	ee17 1a90 	vmov	r1, s15
d004e4c8:	ea40 6507 	orr.w	r5, r0, r7, lsl #24
d004e4cc:	4882      	ldr	r0, [pc, #520]	; (d004e6d8 <main+0x1618>)
d004e4ce:	f1c1 01d0 	rsb	r1, r1, #208	; 0xd0
d004e4d2:	686d      	ldr	r5, [r5, #4]
d004e4d4:	b209      	sxth	r1, r1
d004e4d6:	9600      	str	r6, [sp, #0]
d004e4d8:	69ad      	ldr	r5, [r5, #24]
d004e4da:	47a8      	blx	r5
d004e4dc:	4f7f      	ldr	r7, [pc, #508]	; (d004e6dc <main+0x161c>)
d004e4de:	2633      	movs	r6, #51	; 0x33
d004e4e0:	e035      	b.n	d004e54e <main+0x148e>
d004e4e2:	883b      	ldrh	r3, [r7, #0]
d004e4e4:	f1c3 0332 	rsb	r3, r3, #50	; 0x32
d004e4e8:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d004e4ec:	005d      	lsls	r5, r3, #1
d004e4ee:	f115 0f31 	cmn.w	r5, #49	; 0x31
d004e4f2:	f2c0 80c0 	blt.w	d004e676 <main+0x15b6>
d004e4f6:	f894 c00c 	ldrb.w	ip, [r4, #12]
d004e4fa:	2000      	movs	r0, #0
d004e4fc:	7b61      	ldrb	r1, [r4, #13]
d004e4fe:	7ba2      	ldrb	r2, [r4, #14]
d004e500:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e504:	7be3      	ldrb	r3, [r4, #15]
d004e506:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e50a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e50e:	685b      	ldr	r3, [r3, #4]
d004e510:	68db      	ldr	r3, [r3, #12]
d004e512:	4798      	blx	r3
d004e514:	7b21      	ldrb	r1, [r4, #12]
d004e516:	7b60      	ldrb	r0, [r4, #13]
d004e518:	2312      	movs	r3, #18
d004e51a:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e51e:	2206      	movs	r2, #6
d004e520:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e524:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e528:	b231      	sxth	r1, r6
d004e52a:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d004e52e:	2009      	movs	r0, #9
d004e530:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004e534:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e538:	f8dc 9004 	ldr.w	r9, [ip, #4]
d004e53c:	47c8      	blx	r9
d004e53e:	2d31      	cmp	r5, #49	; 0x31
d004e540:	f300 81e4 	bgt.w	d004e90c <main+0x184c>
d004e544:	3616      	adds	r6, #22
d004e546:	3706      	adds	r7, #6
d004e548:	b2b6      	uxth	r6, r6
d004e54a:	2ee3      	cmp	r6, #227	; 0xe3
d004e54c:	d078      	beq.n	d004e640 <main+0x1580>
d004e54e:	7b25      	ldrb	r5, [r4, #12]
d004e550:	201b      	movs	r0, #27
d004e552:	7b61      	ldrb	r1, [r4, #13]
d004e554:	7ba2      	ldrb	r2, [r4, #14]
d004e556:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e55a:	7be3      	ldrb	r3, [r4, #15]
d004e55c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e560:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e564:	685b      	ldr	r3, [r3, #4]
d004e566:	68db      	ldr	r3, [r3, #12]
d004e568:	4798      	blx	r3
d004e56a:	7b20      	ldrb	r0, [r4, #12]
d004e56c:	f894 c00d 	ldrb.w	ip, [r4, #13]
d004e570:	2208      	movs	r2, #8
d004e572:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e576:	1e71      	subs	r1, r6, #1
d004e578:	ea40 230c 	orr.w	r3, r0, ip, lsl #8
d004e57c:	7be5      	ldrb	r5, [r4, #15]
d004e57e:	4610      	mov	r0, r2
d004e580:	b209      	sxth	r1, r1
d004e582:	ea43 4c0e 	orr.w	ip, r3, lr, lsl #16
d004e586:	2314      	movs	r3, #20
d004e588:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e58c:	686d      	ldr	r5, [r5, #4]
d004e58e:	686d      	ldr	r5, [r5, #4]
d004e590:	47a8      	blx	r5
d004e592:	f817 0c02 	ldrb.w	r0, [r7, #-2]
d004e596:	2800      	cmp	r0, #0
d004e598:	d1a3      	bne.n	d004e4e2 <main+0x1422>
d004e59a:	7b23      	ldrb	r3, [r4, #12]
d004e59c:	2512      	movs	r5, #18
d004e59e:	7b61      	ldrb	r1, [r4, #13]
d004e5a0:	7ba2      	ldrb	r2, [r4, #14]
d004e5a2:	46a9      	mov	r9, r5
d004e5a4:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d004e5a8:	7be3      	ldrb	r3, [r4, #15]
d004e5aa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e5ae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e5b2:	685b      	ldr	r3, [r3, #4]
d004e5b4:	68db      	ldr	r3, [r3, #12]
d004e5b6:	4798      	blx	r3
d004e5b8:	f894 e00c 	ldrb.w	lr, [r4, #12]
d004e5bc:	7b60      	ldrb	r0, [r4, #13]
d004e5be:	462b      	mov	r3, r5
d004e5c0:	7ba1      	ldrb	r1, [r4, #14]
d004e5c2:	2206      	movs	r2, #6
d004e5c4:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d004e5c8:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e5cc:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d004e5d0:	2009      	movs	r0, #9
d004e5d2:	ea41 6c0c 	orr.w	ip, r1, ip, lsl #24
d004e5d6:	b231      	sxth	r1, r6
d004e5d8:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e5dc:	f8dc b004 	ldr.w	fp, [ip, #4]
d004e5e0:	47d8      	blx	fp
d004e5e2:	7b20      	ldrb	r0, [r4, #12]
d004e5e4:	3706      	adds	r7, #6
d004e5e6:	7b61      	ldrb	r1, [r4, #13]
d004e5e8:	7ba2      	ldrb	r2, [r4, #14]
d004e5ea:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e5ee:	7be3      	ldrb	r3, [r4, #15]
d004e5f0:	f817 0c08 	ldrb.w	r0, [r7, #-8]
d004e5f4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e5f8:	2800      	cmp	r0, #0
d004e5fa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e5fe:	bf14      	ite	ne
d004e600:	200e      	movne	r0, #14
d004e602:	201b      	moveq	r0, #27
d004e604:	685b      	ldr	r3, [r3, #4]
d004e606:	68db      	ldr	r3, [r3, #12]
d004e608:	4798      	blx	r3
d004e60a:	7b22      	ldrb	r2, [r4, #12]
d004e60c:	7b60      	ldrb	r0, [r4, #13]
d004e60e:	462b      	mov	r3, r5
d004e610:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e614:	f106 0112 	add.w	r1, r6, #18
d004e618:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004e61c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e620:	3616      	adds	r6, #22
d004e622:	eba1 0109 	sub.w	r1, r1, r9
d004e626:	ea40 450e 	orr.w	r5, r0, lr, lsl #16
d004e62a:	2206      	movs	r2, #6
d004e62c:	b2b6      	uxth	r6, r6
d004e62e:	2009      	movs	r0, #9
d004e630:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004e634:	b209      	sxth	r1, r1
d004e636:	686d      	ldr	r5, [r5, #4]
d004e638:	686d      	ldr	r5, [r5, #4]
d004e63a:	47a8      	blx	r5
d004e63c:	2ee3      	cmp	r6, #227	; 0xe3
d004e63e:	d186      	bne.n	d004e54e <main+0x148e>
d004e640:	7b20      	ldrb	r0, [r4, #12]
d004e642:	7b61      	ldrb	r1, [r4, #13]
d004e644:	7ba2      	ldrb	r2, [r4, #14]
d004e646:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e64a:	7be3      	ldrb	r3, [r4, #15]
d004e64c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e650:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e654:	681b      	ldr	r3, [r3, #0]
d004e656:	681b      	ldr	r3, [r3, #0]
d004e658:	4798      	blx	r3
d004e65a:	eddf 7a21 	vldr	s15, [pc, #132]	; d004e6e0 <main+0x1620>
d004e65e:	eef4 aae7 	vcmpe.f32	s21, s15
d004e662:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e666:	dc6d      	bgt.n	d004e744 <main+0x1684>
d004e668:	eddf 7a1e 	vldr	s15, [pc, #120]	; d004e6e4 <main+0x1624>
d004e66c:	ee7a aaa7 	vadd.f32	s21, s21, s15
d004e670:	9d05      	ldr	r5, [sp, #20]
d004e672:	f7ff bb32 	b.w	d004dcda <main+0xc1a>
d004e676:	7b25      	ldrb	r5, [r4, #12]
d004e678:	2000      	movs	r0, #0
d004e67a:	7b61      	ldrb	r1, [r4, #13]
d004e67c:	7ba2      	ldrb	r2, [r4, #14]
d004e67e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e682:	7be3      	ldrb	r3, [r4, #15]
d004e684:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e688:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e68c:	685b      	ldr	r3, [r3, #4]
d004e68e:	68db      	ldr	r3, [r3, #12]
d004e690:	4798      	blx	r3
d004e692:	7b21      	ldrb	r1, [r4, #12]
d004e694:	7b60      	ldrb	r0, [r4, #13]
d004e696:	2312      	movs	r3, #18
d004e698:	f894 c00e 	ldrb.w	ip, [r4, #14]
d004e69c:	2206      	movs	r2, #6
d004e69e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e6a2:	7be5      	ldrb	r5, [r4, #15]
d004e6a4:	b231      	sxth	r1, r6
d004e6a6:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004e6aa:	2009      	movs	r0, #9
d004e6ac:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e6b0:	686d      	ldr	r5, [r5, #4]
d004e6b2:	686d      	ldr	r5, [r5, #4]
d004e6b4:	47a8      	blx	r5
d004e6b6:	e745      	b.n	d004e544 <main+0x1484>
d004e6b8:	2701      	movs	r7, #1
d004e6ba:	e548      	b.n	d004e14e <main+0x108e>
d004e6bc:	d005a2b4 	.word	0xd005a2b4
d004e6c0:	d005a578 	.word	0xd005a578
d004e6c4:	448fc000 	.word	0x448fc000
d004e6c8:	472c4400 	.word	0x472c4400
d004e6cc:	3daaaaab 	.word	0x3daaaaab
d004e6d0:	d0057ea8 	.word	0xd0057ea8
d004e6d4:	d005a400 	.word	0xd005a400
d004e6d8:	d0058ea8 	.word	0xd0058ea8
d004e6dc:	d00f4a42 	.word	0xd00f4a42
d004e6e0:	3f7ef9db 	.word	0x3f7ef9db
d004e6e4:	3b83126f 	.word	0x3b83126f
d004e6e8:	4b8c      	ldr	r3, [pc, #560]	; (d004e91c <main+0x185c>)
d004e6ea:	4f8d      	ldr	r7, [pc, #564]	; (d004e920 <main+0x1860>)
d004e6ec:	f8d3 9000 	ldr.w	r9, [r3]
d004e6f0:	4b8c      	ldr	r3, [pc, #560]	; (d004e924 <main+0x1864>)
d004e6f2:	4e8d      	ldr	r6, [pc, #564]	; (d004e928 <main+0x1868>)
d004e6f4:	681a      	ldr	r2, [r3, #0]
d004e6f6:	4b8d      	ldr	r3, [pc, #564]	; (d004e92c <main+0x186c>)
d004e6f8:	920c      	str	r2, [sp, #48]	; 0x30
d004e6fa:	681b      	ldr	r3, [r3, #0]
d004e6fc:	9306      	str	r3, [sp, #24]
d004e6fe:	f004 fdc5 	bl	d005328c <getRenderTriCount>
d004e702:	fba7 3509 	umull	r3, r5, r7, r9
d004e706:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d004e70a:	9003      	str	r0, [sp, #12]
d004e70c:	0c68      	lsrs	r0, r5, #17
d004e70e:	2514      	movs	r5, #20
d004e710:	9b06      	ldr	r3, [sp, #24]
d004e712:	fb06 9610 	mls	r6, r6, r0, r9
d004e716:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d004e718:	9502      	str	r5, [sp, #8]
d004e71a:	fb01 f606 	mul.w	r6, r1, r6
d004e71e:	4984      	ldr	r1, [pc, #528]	; (d004e930 <main+0x1870>)
d004e720:	9000      	str	r0, [sp, #0]
d004e722:	fba7 5606 	umull	r5, r6, r7, r6
d004e726:	4883      	ldr	r0, [pc, #524]	; (d004e934 <main+0x1874>)
d004e728:	0c76      	lsrs	r6, r6, #17
d004e72a:	9601      	str	r6, [sp, #4]
d004e72c:	f007 f8c2 	bl	d00558b4 <siprintf>
d004e730:	4b81      	ldr	r3, [pc, #516]	; (d004e938 <main+0x1878>)
d004e732:	781d      	ldrb	r5, [r3, #0]
d004e734:	2d14      	cmp	r5, #20
d004e736:	f040 80a1 	bne.w	d004e87c <main+0x17bc>
d004e73a:	9b04      	ldr	r3, [sp, #16]
d004e73c:	0118      	lsls	r0, r3, #4
d004e73e:	3001      	adds	r0, #1
d004e740:	b2c0      	uxtb	r0, r0
d004e742:	e604      	b.n	d004e34e <main+0x128e>
d004e744:	eef7 aa00 	vmov.f32	s21, #112	; 0x3f800000  1.0
d004e748:	e792      	b.n	d004e670 <main+0x15b0>
d004e74a:	4d7c      	ldr	r5, [pc, #496]	; (d004e93c <main+0x187c>)
d004e74c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e750:	7be3      	ldrb	r3, [r4, #15]
d004e752:	6829      	ldr	r1, [r5, #0]
d004e754:	487a      	ldr	r0, [pc, #488]	; (d004e940 <main+0x1880>)
d004e756:	e4ea      	b.n	d004e12e <main+0x106e>
d004e758:	f894 e014 	ldrb.w	lr, [r4, #20]
d004e75c:	f894 c015 	ldrb.w	ip, [r4, #21]
d004e760:	7da2      	ldrb	r2, [r4, #22]
d004e762:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d004e766:	7de3      	ldrb	r3, [r4, #23]
d004e768:	9106      	str	r1, [sp, #24]
d004e76a:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004e76e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e772:	689b      	ldr	r3, [r3, #8]
d004e774:	689b      	ldr	r3, [r3, #8]
d004e776:	4798      	blx	r3
d004e778:	f894 e014 	ldrb.w	lr, [r4, #20]
d004e77c:	f894 c015 	ldrb.w	ip, [r4, #21]
d004e780:	4638      	mov	r0, r7
d004e782:	7da2      	ldrb	r2, [r4, #22]
d004e784:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d004e788:	7de3      	ldrb	r3, [r4, #23]
d004e78a:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004e78e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e792:	689b      	ldr	r3, [r3, #8]
d004e794:	685b      	ldr	r3, [r3, #4]
d004e796:	4798      	blx	r3
d004e798:	9906      	ldr	r1, [sp, #24]
d004e79a:	f80b 6c01 	strb.w	r6, [fp, #-1]
d004e79e:	e504      	b.n	d004e1aa <main+0x10ea>
d004e7a0:	f04f 0900 	mov.w	r9, #0
d004e7a4:	9807      	ldr	r0, [sp, #28]
d004e7a6:	4649      	mov	r1, r9
d004e7a8:	f003 fec2 	bl	d0052530 <lightEnable>
d004e7ac:	f7ff bbf2 	b.w	d004df94 <main+0xed4>
d004e7b0:	ed9f ca64 	vldr	s24, [pc, #400]	; d004e944 <main+0x1884>
d004e7b4:	eddf ca64 	vldr	s25, [pc, #400]	; d004e948 <main+0x1888>
d004e7b8:	ed9f da64 	vldr	s26, [pc, #400]	; d004e94c <main+0x188c>
d004e7bc:	ed9f ea64 	vldr	s28, [pc, #400]	; d004e950 <main+0x1890>
d004e7c0:	eddf ea64 	vldr	s29, [pc, #400]	; d004e954 <main+0x1894>
d004e7c4:	eddf da64 	vldr	s27, [pc, #400]	; d004e958 <main+0x1898>
d004e7c8:	ed9f fa64 	vldr	s30, [pc, #400]	; d004e95c <main+0x189c>
d004e7cc:	ed9f 8a64 	vldr	s16, [pc, #400]	; d004e960 <main+0x18a0>
d004e7d0:	f7ff bad4 	b.w	d004dd7c <main+0xcbc>
d004e7d4:	4b63      	ldr	r3, [pc, #396]	; (d004e964 <main+0x18a4>)
d004e7d6:	4640      	mov	r0, r8
d004e7d8:	4a63      	ldr	r2, [pc, #396]	; (d004e968 <main+0x18a8>)
d004e7da:	4964      	ldr	r1, [pc, #400]	; (d004e96c <main+0x18ac>)
d004e7dc:	781b      	ldrb	r3, [r3, #0]
d004e7de:	7812      	ldrb	r2, [r2, #0]
d004e7e0:	7809      	ldrb	r1, [r1, #0]
d004e7e2:	f004 ff67 	bl	d00536b4 <drawFakeHorizon>
d004e7e6:	e511      	b.n	d004e20c <main+0x114c>
d004e7e8:	9d0d      	ldr	r5, [sp, #52]	; 0x34
d004e7ea:	2101      	movs	r1, #1
d004e7ec:	4628      	mov	r0, r5
d004e7ee:	f003 fe9f 	bl	d0052530 <lightEnable>
d004e7f2:	4628      	mov	r0, r5
d004e7f4:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004e7f8:	f003 ff30 	bl	d005265c <lightSetIntensity>
d004e7fc:	eeb0 0a4a 	vmov.f32	s0, s20
d004e800:	2301      	movs	r3, #1
d004e802:	2224      	movs	r2, #36	; 0x24
d004e804:	212b      	movs	r1, #43	; 0x2b
d004e806:	4640      	mov	r0, r8
d004e808:	f004 ff54 	bl	d00536b4 <drawFakeHorizon>
d004e80c:	e506      	b.n	d004e21c <main+0x115c>
d004e80e:	eef0 0a6b 	vmov.f32	s1, s23
d004e812:	ed9f 1a57 	vldr	s2, [pc, #348]	; d004e970 <main+0x18b0>
d004e816:	ed9f 0a57 	vldr	s0, [pc, #348]	; d004e974 <main+0x18b4>
d004e81a:	f001 fec5 	bl	d00505a8 <vec3>
d004e81e:	ee1f 0a90 	vmov	r0, s31
d004e822:	ed8d 0a6c 	vstr	s0, [sp, #432]	; 0x1b0
d004e826:	edcd 0a6d 	vstr	s1, [sp, #436]	; 0x1b4
d004e82a:	ed8d 1a6e 	vstr	s2, [sp, #440]	; 0x1b8
d004e82e:	f002 fe7d 	bl	d005152c <entitySetPosition>
d004e832:	f7ff bb17 	b.w	d004de64 <main+0xda4>
d004e836:	eef1 0a60 	vneg.f32	s1, s1
d004e83a:	2101      	movs	r1, #1
d004e83c:	eeb0 1a4a 	vmov.f32	s2, s20
d004e840:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d004e978 <main+0x18b8>
d004e844:	4640      	mov	r0, r8
d004e846:	f002 f947 	bl	d0050ad8 <cameraTurn>
d004e84a:	f7ff bada 	b.w	d004de02 <main+0xd42>
d004e84e:	2300      	movs	r3, #0
d004e850:	eeb0 1a6c 	vmov.f32	s2, s25
d004e854:	eef0 0a4a 	vmov.f32	s1, s20
d004e858:	ed9f 0a47 	vldr	s0, [pc, #284]	; d004e978 <main+0x18b8>
d004e85c:	4640      	mov	r0, r8
d004e85e:	9308      	str	r3, [sp, #32]
d004e860:	f002 fb16 	bl	d0050e90 <cameraMove>
d004e864:	f7ff bbb7 	b.w	d004dfd6 <main+0xf16>
d004e868:	eeb0 0a48 	vmov.f32	s0, s16
d004e86c:	4641      	mov	r1, r8
d004e86e:	a88b      	add	r0, sp, #556	; 0x22c
d004e870:	f7fd f8be 	bl	d004b9f0 <splineRailUpdate>
d004e874:	e4a3      	b.n	d004e1be <main+0x10fe>
d004e876:	2200      	movs	r2, #0
d004e878:	4613      	mov	r3, r2
d004e87a:	e527      	b.n	d004e2cc <main+0x120c>
d004e87c:	9b04      	ldr	r3, [sp, #16]
d004e87e:	2b00      	cmp	r3, #0
d004e880:	d033      	beq.n	d004e8ea <main+0x182a>
d004e882:	4d3a      	ldr	r5, [pc, #232]	; (d004e96c <main+0x18ac>)
d004e884:	4618      	mov	r0, r3
d004e886:	2313      	movs	r3, #19
d004e888:	2112      	movs	r1, #18
d004e88a:	2215      	movs	r2, #21
d004e88c:	702b      	strb	r3, [r5, #0]
d004e88e:	2319      	movs	r3, #25
d004e890:	4d35      	ldr	r5, [pc, #212]	; (d004e968 <main+0x18a8>)
d004e892:	7029      	strb	r1, [r5, #0]
d004e894:	2514      	movs	r5, #20
d004e896:	4933      	ldr	r1, [pc, #204]	; (d004e964 <main+0x18a4>)
d004e898:	700a      	strb	r2, [r1, #0]
d004e89a:	2200      	movs	r2, #0
d004e89c:	9204      	str	r2, [sp, #16]
d004e89e:	4a37      	ldr	r2, [pc, #220]	; (d004e97c <main+0x18bc>)
d004e8a0:	7013      	strb	r3, [r2, #0]
d004e8a2:	e554      	b.n	d004e34e <main+0x128e>
d004e8a4:	3b01      	subs	r3, #1
d004e8a6:	4a36      	ldr	r2, [pc, #216]	; (d004e980 <main+0x18c0>)
d004e8a8:	7013      	strb	r3, [r2, #0]
d004e8aa:	e4af      	b.n	d004e20c <main+0x114c>
d004e8ac:	f006 fef4 	bl	d0055698 <rand>
d004e8b0:	4242      	negs	r2, r0
d004e8b2:	f000 0303 	and.w	r3, r0, #3
d004e8b6:	f002 0203 	and.w	r2, r2, #3
d004e8ba:	bf58      	it	pl
d004e8bc:	4253      	negpl	r3, r2
d004e8be:	4a31      	ldr	r2, [pc, #196]	; (d004e984 <main+0x18c4>)
d004e8c0:	3303      	adds	r3, #3
d004e8c2:	8013      	strh	r3, [r2, #0]
d004e8c4:	f006 fee8 	bl	d0055698 <rand>
d004e8c8:	4b2f      	ldr	r3, [pc, #188]	; (d004e988 <main+0x18c8>)
d004e8ca:	fb83 2300 	smull	r2, r3, r3, r0
d004e8ce:	17c2      	asrs	r2, r0, #31
d004e8d0:	4403      	add	r3, r0
d004e8d2:	ebc2 12a3 	rsb	r2, r2, r3, asr #6
d004e8d6:	eb02 03c2 	add.w	r3, r2, r2, lsl #3
d004e8da:	ebc2 02c3 	rsb	r2, r2, r3, lsl #3
d004e8de:	1a83      	subs	r3, r0, r2
d004e8e0:	4a2a      	ldr	r2, [pc, #168]	; (d004e98c <main+0x18cc>)
d004e8e2:	3314      	adds	r3, #20
d004e8e4:	8013      	strh	r3, [r2, #0]
d004e8e6:	f7ff bbc2 	b.w	d004e06e <main+0xfae>
d004e8ea:	2009      	movs	r0, #9
d004e8ec:	4d1f      	ldr	r5, [pc, #124]	; (d004e96c <main+0x18ac>)
d004e8ee:	213b      	movs	r1, #59	; 0x3b
d004e8f0:	222b      	movs	r2, #43	; 0x2b
d004e8f2:	7028      	strb	r0, [r5, #0]
d004e8f4:	2001      	movs	r0, #1
d004e8f6:	2302      	movs	r3, #2
d004e8f8:	2514      	movs	r5, #20
d004e8fa:	9004      	str	r0, [sp, #16]
d004e8fc:	481a      	ldr	r0, [pc, #104]	; (d004e968 <main+0x18a8>)
d004e8fe:	7001      	strb	r1, [r0, #0]
d004e900:	2011      	movs	r0, #17
d004e902:	4918      	ldr	r1, [pc, #96]	; (d004e964 <main+0x18a4>)
d004e904:	700a      	strb	r2, [r1, #0]
d004e906:	4a1d      	ldr	r2, [pc, #116]	; (d004e97c <main+0x18bc>)
d004e908:	7013      	strb	r3, [r2, #0]
d004e90a:	e520      	b.n	d004e34e <main+0x128e>
d004e90c:	2332      	movs	r3, #50	; 0x32
d004e90e:	fb95 f5f3 	sdiv	r5, r5, r3
d004e912:	fa1f f985 	uxth.w	r9, r5
d004e916:	b22d      	sxth	r5, r5
d004e918:	e663      	b.n	d004e5e2 <main+0x1522>
d004e91a:	bf00      	nop
d004e91c:	d005a58c 	.word	0xd005a58c
d004e920:	45e7b273 	.word	0x45e7b273
d004e924:	d005a3fc 	.word	0xd005a3fc
d004e928:	00075300 	.word	0x00075300
d004e92c:	d005a3f0 	.word	0xd005a3f0
d004e930:	d005751c 	.word	0xd005751c
d004e934:	d005a2b4 	.word	0xd005a2b4
d004e938:	d005a56c 	.word	0xd005a56c
d004e93c:	d00f49c0 	.word	0xd00f49c0
d004e940:	d00f49a0 	.word	0xd00f49a0
d004e944:	40d33334 	.word	0x40d33334
d004e948:	42f20000 	.word	0x42f20000
d004e94c:	3f8ccccd 	.word	0x3f8ccccd
d004e950:	4312770a 	.word	0x4312770a
d004e954:	3f28f5c3 	.word	0x3f28f5c3
d004e958:	4215999a 	.word	0x4215999a
d004e95c:	bc872b02 	.word	0xbc872b02
d004e960:	3f0ccccd 	.word	0x3f0ccccd
d004e964:	d00f499c 	.word	0xd00f499c
d004e968:	d00f48e0 	.word	0xd00f48e0
d004e96c:	d00f4964 	.word	0xd00f4964
d004e970:	c3c80000 	.word	0xc3c80000
d004e974:	c3070000 	.word	0xc3070000
d004e978:	00000000 	.word	0x00000000
d004e97c:	d00f4944 	.word	0xd00f4944
d004e980:	d005a2ac 	.word	0xd005a2ac
d004e984:	d005a594 	.word	0xd005a594
d004e988:	e6c2b449 	.word	0xe6c2b449
d004e98c:	d005a596 	.word	0xd005a596

d004e990 <meshSetDefaultMaterial>:
d004e990:	b148      	cbz	r0, d004e9a6 <meshSetDefaultMaterial+0x16>
d004e992:	2300      	movs	r3, #0
d004e994:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d004e998:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d004e99c:	6203      	str	r3, [r0, #32]
d004e99e:	6241      	str	r1, [r0, #36]	; 0x24
d004e9a0:	62c2      	str	r2, [r0, #44]	; 0x2c
d004e9a2:	6303      	str	r3, [r0, #48]	; 0x30
d004e9a4:	6283      	str	r3, [r0, #40]	; 0x28
d004e9a6:	4770      	bx	lr

d004e9a8 <meshSetMaterial>:
d004e9a8:	b148      	cbz	r0, d004e9be <meshSetMaterial+0x16>
d004e9aa:	ed80 0a08 	vstr	s0, [r0, #32]
d004e9ae:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d004e9b2:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d004e9b6:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d004e9ba:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d004e9be:	4770      	bx	lr

d004e9c0 <initDepthBandMem>:
d004e9c0:	b510      	push	{r4, lr}
d004e9c2:	4c0c      	ldr	r4, [pc, #48]	; (d004e9f4 <initDepthBandMem+0x34>)
d004e9c4:	6823      	ldr	r3, [r4, #0]
d004e9c6:	b103      	cbz	r3, d004e9ca <initDepthBandMem+0xa>
d004e9c8:	bd10      	pop	{r4, pc}
d004e9ca:	4a0b      	ldr	r2, [pc, #44]	; (d004e9f8 <initDepthBandMem+0x38>)
d004e9cc:	7813      	ldrb	r3, [r2, #0]
d004e9ce:	7850      	ldrb	r0, [r2, #1]
d004e9d0:	7891      	ldrb	r1, [r2, #2]
d004e9d2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004e9d6:	78d2      	ldrb	r2, [r2, #3]
d004e9d8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004e9dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004e9e0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e9e2:	4798      	blx	r3
d004e9e4:	2800      	cmp	r0, #0
d004e9e6:	d0ef      	beq.n	d004e9c8 <initDepthBandMem+0x8>
d004e9e8:	301f      	adds	r0, #31
d004e9ea:	f020 001f 	bic.w	r0, r0, #31
d004e9ee:	6020      	str	r0, [r4, #0]
d004e9f0:	bd10      	pop	{r4, pc}
d004e9f2:	bf00      	nop
d004e9f4:	d005a5a4 	.word	0xd005a5a4
d004e9f8:	2001f000 	.word	0x2001f000

d004e9fc <beginDepthBand>:
d004e9fc:	f100 031f 	add.w	r3, r0, #31
d004ea00:	4a0d      	ldr	r2, [pc, #52]	; (d004ea38 <beginDepthBand+0x3c>)
d004ea02:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d004ea06:	6010      	str	r0, [r2, #0]
d004ea08:	da08      	bge.n	d004ea1c <beginDepthBand+0x20>
d004ea0a:	490c      	ldr	r1, [pc, #48]	; (d004ea3c <beginDepthBand+0x40>)
d004ea0c:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d004ea10:	600b      	str	r3, [r1, #0]
d004ea12:	21ff      	movs	r1, #255	; 0xff
d004ea14:	4b0a      	ldr	r3, [pc, #40]	; (d004ea40 <beginDepthBand+0x44>)
d004ea16:	6818      	ldr	r0, [r3, #0]
d004ea18:	f006 bd8c 	b.w	d0055534 <memset>
d004ea1c:	4b07      	ldr	r3, [pc, #28]	; (d004ea3c <beginDepthBand+0x40>)
d004ea1e:	f240 123f 	movw	r2, #319	; 0x13f
d004ea22:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d004ea26:	21ff      	movs	r1, #255	; 0xff
d004ea28:	601a      	str	r2, [r3, #0]
d004ea2a:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d004ea2e:	4b04      	ldr	r3, [pc, #16]	; (d004ea40 <beginDepthBand+0x44>)
d004ea30:	0182      	lsls	r2, r0, #6
d004ea32:	6818      	ldr	r0, [r3, #0]
d004ea34:	f006 bd7e 	b.w	d0055534 <memset>
d004ea38:	d005a59c 	.word	0xd005a59c
d004ea3c:	d005a5a0 	.word	0xd005a5a0
d004ea40:	d005a5a4 	.word	0xd005a5a4

d004ea44 <set3DRenderBuffer>:
d004ea44:	4b01      	ldr	r3, [pc, #4]	; (d004ea4c <set3DRenderBuffer+0x8>)
d004ea46:	6018      	str	r0, [r3, #0]
d004ea48:	4770      	bx	lr
d004ea4a:	bf00      	nop
d004ea4c:	d00f4a70 	.word	0xd00f4a70

d004ea50 <putPixel>:
d004ea50:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d004ea54:	d209      	bcs.n	d004ea6a <putPixel+0x1a>
d004ea56:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d004ea5a:	d206      	bcs.n	d004ea6a <putPixel+0x1a>
d004ea5c:	4b03      	ldr	r3, [pc, #12]	; (d004ea6c <putPixel+0x1c>)
d004ea5e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004ea62:	681b      	ldr	r3, [r3, #0]
d004ea64:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d004ea68:	5442      	strb	r2, [r0, r1]
d004ea6a:	4770      	bx	lr
d004ea6c:	d00f4a70 	.word	0xd00f4a70

d004ea70 <drawLine>:
d004ea70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004ea74:	b085      	sub	sp, #20
d004ea76:	eba2 0c00 	sub.w	ip, r2, r0
d004ea7a:	eba3 0901 	sub.w	r9, r3, r1
d004ea7e:	f240 1edf 	movw	lr, #479	; 0x1df
d004ea82:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d004ea86:	f240 1a3f 	movw	sl, #319	; 0x13f
d004ea8a:	f8df b07c 	ldr.w	fp, [pc, #124]	; d004eb08 <drawLine+0x98>
d004ea8e:	9401      	str	r4, [sp, #4]
d004ea90:	4282      	cmp	r2, r0
d004ea92:	bfcc      	ite	gt
d004ea94:	2401      	movgt	r4, #1
d004ea96:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004ea9a:	9402      	str	r4, [sp, #8]
d004ea9c:	428b      	cmp	r3, r1
d004ea9e:	bfcc      	ite	gt
d004eaa0:	2401      	movgt	r4, #1
d004eaa2:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004eaa6:	f1bc 0f00 	cmp.w	ip, #0
d004eaaa:	9403      	str	r4, [sp, #12]
d004eaac:	bfb8      	it	lt
d004eaae:	f1cc 0c00 	rsblt	ip, ip, #0
d004eab2:	f1b9 0f00 	cmp.w	r9, #0
d004eab6:	bfb8      	it	lt
d004eab8:	f1c9 0900 	rsblt	r9, r9, #0
d004eabc:	ebac 0409 	sub.w	r4, ip, r9
d004eac0:	f1c9 0800 	rsb	r8, r9, #0
d004eac4:	4570      	cmp	r0, lr
d004eac6:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d004eaca:	ea4f 0644 	mov.w	r6, r4, lsl #1
d004eace:	d807      	bhi.n	d004eae0 <drawLine+0x70>
d004ead0:	4551      	cmp	r1, sl
d004ead2:	d805      	bhi.n	d004eae0 <drawLine+0x70>
d004ead4:	f8db 5000 	ldr.w	r5, [fp]
d004ead8:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d004eadc:	9f01      	ldr	r7, [sp, #4]
d004eade:	546f      	strb	r7, [r5, r1]
d004eae0:	4290      	cmp	r0, r2
d004eae2:	d101      	bne.n	d004eae8 <drawLine+0x78>
d004eae4:	4299      	cmp	r1, r3
d004eae6:	d00c      	beq.n	d004eb02 <drawLine+0x92>
d004eae8:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d004eaec:	dc05      	bgt.n	d004eafa <drawLine+0x8a>
d004eaee:	9d02      	ldr	r5, [sp, #8]
d004eaf0:	45b4      	cmp	ip, r6
d004eaf2:	eba4 0409 	sub.w	r4, r4, r9
d004eaf6:	4428      	add	r0, r5
d004eaf8:	dbe4      	blt.n	d004eac4 <drawLine+0x54>
d004eafa:	9d03      	ldr	r5, [sp, #12]
d004eafc:	4464      	add	r4, ip
d004eafe:	4429      	add	r1, r5
d004eb00:	e7e0      	b.n	d004eac4 <drawLine+0x54>
d004eb02:	b005      	add	sp, #20
d004eb04:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004eb08:	d00f4a70 	.word	0xd00f4a70

d004eb0c <fillTriangleDitherBayer>:
d004eb0c:	eddf 7ac9 	vldr	s15, [pc, #804]	; d004ee34 <fillTriangleDitherBayer+0x328>
d004eb10:	eef4 0ae7 	vcmpe.f32	s1, s15
d004eb14:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004eb18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb1c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004eb20:	ed2d 8b10 	vpush	{d8-d15}
d004eb24:	b09b      	sub	sp, #108	; 0x6c
d004eb26:	9202      	str	r2, [sp, #8]
d004eb28:	bf94      	ite	ls
d004eb2a:	2201      	movls	r2, #1
d004eb2c:	2200      	movhi	r2, #0
d004eb2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb32:	9303      	str	r3, [sp, #12]
d004eb34:	f8bd 40d8 	ldrh.w	r4, [sp, #216]	; 0xd8
d004eb38:	bf98      	it	ls
d004eb3a:	f042 0201 	orrls.w	r2, r2, #1
d004eb3e:	f89d 30e4 	ldrb.w	r3, [sp, #228]	; 0xe4
d004eb42:	e9cd 0100 	strd	r0, r1, [sp]
d004eb46:	f8bd 00dc 	ldrh.w	r0, [sp, #220]	; 0xdc
d004eb4a:	f8bd 10e0 	ldrh.w	r1, [sp, #224]	; 0xe0
d004eb4e:	2a00      	cmp	r2, #0
d004eb50:	f040 81d8 	bne.w	d004ef04 <fillTriangleDitherBayer+0x3f8>
d004eb54:	eeb4 0a67 	vcmp.f32	s0, s15
d004eb58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb5c:	f240 81d2 	bls.w	d004ef04 <fillTriangleDitherBayer+0x3f8>
d004eb60:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004eb64:	eddf 7aac 	vldr	s15, [pc, #688]	; d004ee18 <fillTriangleDitherBayer+0x30c>
d004eb68:	eef1 5a04 	vmov.f32	s11, #20	; 0x40a00000  5.0
d004eb6c:	fec1 1aa7 	vmaxnm.f32	s3, s3, s15
d004eb70:	ee07 4a90 	vmov	s15, r4
d004eb74:	eec7 2a00 	vdiv.f32	s5, s14, s0
d004eb78:	fec1 5ae5 	vminnm.f32	s11, s3, s11
d004eb7c:	ee87 3a01 	vdiv.f32	s6, s14, s2
d004eb80:	eec7 1a20 	vdiv.f32	s3, s14, s1
d004eb84:	eebd 7ae5 	vcvt.s32.f32	s14, s11
d004eb88:	eef8 7a67 	vcvt.f32.u32	s15, s15
d004eb8c:	ee17 2a10 	vmov	r2, s14
d004eb90:	ee07 0a10 	vmov	s14, r0
d004eb94:	ee67 7aa2 	vmul.f32	s15, s15, s5
d004eb98:	eef8 6a47 	vcvt.f32.u32	s13, s14
d004eb9c:	ee07 1a10 	vmov	s14, r1
d004eba0:	1c51      	adds	r1, r2, #1
d004eba2:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004eba6:	2905      	cmp	r1, #5
d004eba8:	bfa8      	it	ge
d004ebaa:	2105      	movge	r1, #5
d004ebac:	2a04      	cmp	r2, #4
d004ebae:	ee66 6aa1 	vmul.f32	s13, s13, s3
d004ebb2:	ee27 1a03 	vmul.f32	s2, s14, s6
d004ebb6:	f300 85ed 	bgt.w	d004f794 <fillTriangleDitherBayer+0xc88>
d004ebba:	f003 030f 	and.w	r3, r3, #15
d004ebbe:	2a03      	cmp	r2, #3
d004ebc0:	f103 0320 	add.w	r3, r3, #32
d004ebc4:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004ebc8:	fa5f fb80 	uxtb.w	fp, r0
d004ebcc:	f300 85e4 	bgt.w	d004f798 <fillTriangleDitherBayer+0xc8c>
d004ebd0:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004ebd4:	b2db      	uxtb	r3, r3
d004ebd6:	9304      	str	r3, [sp, #16]
d004ebd8:	ed9d 7a01 	vldr	s14, [sp, #4]
d004ebdc:	ed9d 5a02 	vldr	s10, [sp, #8]
d004ebe0:	eeb8 6ac7 	vcvt.f32.s32	s12, s14
d004ebe4:	ed9d 7a03 	vldr	s14, [sp, #12]
d004ebe8:	eeb8 4ac5 	vcvt.f32.s32	s8, s10
d004ebec:	ed9d 5a34 	vldr	s10, [sp, #208]	; 0xd0
d004ebf0:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004ebf4:	ed9d 7a00 	vldr	s14, [sp]
d004ebf8:	eef8 0ac5 	vcvt.f32.s32	s1, s10
d004ebfc:	ed9d 5a35 	vldr	s10, [sp, #212]	; 0xd4
d004ec00:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004ec04:	eeb4 6ae3 	vcmpe.f32	s12, s7
d004ec08:	eef8 4ac5 	vcvt.f32.s32	s9, s10
d004ec0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec10:	f300 817d 	bgt.w	d004ef0e <fillTriangleDitherBayer+0x402>
d004ec14:	eeb4 6ae4 	vcmpe.f32	s12, s9
d004ec18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec1c:	f300 81cb 	bgt.w	d004efb6 <fillTriangleDitherBayer+0x4aa>
d004ec20:	eef4 3ae4 	vcmpe.f32	s7, s9
d004ec24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec28:	dd17      	ble.n	d004ec5a <fillTriangleDitherBayer+0x14e>
d004ec2a:	eeb0 8a66 	vmov.f32	s16, s13
d004ec2e:	eeb0 0a61 	vmov.f32	s0, s3
d004ec32:	eeb0 2a63 	vmov.f32	s4, s7
d004ec36:	eeb0 5a44 	vmov.f32	s10, s8
d004ec3a:	eef0 6a41 	vmov.f32	s13, s2
d004ec3e:	eef0 1a43 	vmov.f32	s3, s6
d004ec42:	eef0 3a64 	vmov.f32	s7, s9
d004ec46:	eeb0 4a60 	vmov.f32	s8, s1
d004ec4a:	eeb0 1a48 	vmov.f32	s2, s16
d004ec4e:	eeb0 3a40 	vmov.f32	s6, s0
d004ec52:	eef0 4a42 	vmov.f32	s9, s4
d004ec56:	eef0 0a45 	vmov.f32	s1, s10
d004ec5a:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d004ec5e:	ee34 2a85 	vadd.f32	s4, s9, s10
d004ec62:	ee36 5a05 	vadd.f32	s10, s12, s10
d004ec66:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d004ec6a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004ec6e:	ee12 1a10 	vmov	r1, s4
d004ec72:	ee15 3a10 	vmov	r3, s10
d004ec76:	428b      	cmp	r3, r1
d004ec78:	f000 8144 	beq.w	d004ef04 <fillTriangleDitherBayer+0x3f8>
d004ec7c:	ee34 5ac6 	vsub.f32	s10, s9, s12
d004ec80:	ed9f 2a6c 	vldr	s4, [pc, #432]	; d004ee34 <fillTriangleDitherBayer+0x328>
d004ec84:	eeb4 5ac2 	vcmpe.f32	s10, s4
d004ec88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec8c:	f240 813a 	bls.w	d004ef04 <fillTriangleDitherBayer+0x3f8>
d004ec90:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004ec94:	ee73 9ac6 	vsub.f32	s19, s7, s12
d004ec98:	ee30 0ac7 	vsub.f32	s0, s1, s14
d004ec9c:	ee8a 9a05 	vdiv.f32	s18, s20, s10
d004eca0:	eef4 9ac2 	vcmpe.f32	s19, s4
d004eca4:	ee33 8a62 	vsub.f32	s16, s6, s5
d004eca8:	ee71 8a67 	vsub.f32	s17, s2, s15
d004ecac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ecb0:	ee20 0a09 	vmul.f32	s0, s0, s18
d004ecb4:	ee28 8a09 	vmul.f32	s16, s16, s18
d004ecb8:	ee68 8a89 	vmul.f32	s17, s17, s18
d004ecbc:	f300 8145 	bgt.w	d004ef4a <fillTriangleDitherBayer+0x43e>
d004ecc0:	ee05 2a10 	vmov	s10, r2
d004ecc4:	ee34 9ae3 	vsub.f32	s18, s9, s7
d004ecc8:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004eccc:	eeb4 9ac2 	vcmpe.f32	s18, s4
d004ecd0:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d004ecd4:	ee75 5ac5 	vsub.f32	s11, s11, s10
d004ecd8:	eeb0 5a65 	vmov.f32	s10, s11
d004ecdc:	eebe 5ace 	vcvt.s32.f32	s10, s10, #4
d004ece0:	ee15 3a10 	vmov	r3, s10
d004ece4:	f383 0204 	usat	r2, #4, r3
d004ece8:	9207      	str	r2, [sp, #28]
d004ecea:	9a04      	ldr	r2, [sp, #16]
d004ecec:	455a      	cmp	r2, fp
d004ecee:	bf18      	it	ne
d004ecf0:	2b00      	cmpne	r3, #0
d004ecf2:	bfd4      	ite	le
d004ecf4:	2301      	movle	r3, #1
d004ecf6:	2300      	movgt	r3, #0
d004ecf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ecfc:	9302      	str	r3, [sp, #8]
d004ecfe:	f340 8101 	ble.w	d004ef04 <fillTriangleDitherBayer+0x3f8>
d004ed02:	eddf fa45 	vldr	s31, [pc, #276]	; d004ee18 <fillTriangleDitherBayer+0x30c>
d004ed06:	eef0 5a49 	vmov.f32	s11, s18
d004ed0a:	eeb0 ba6f 	vmov.f32	s22, s31
d004ed0e:	eef0 da6f 	vmov.f32	s27, s31
d004ed12:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d004ed16:	ed9f 5a47 	vldr	s10, [pc, #284]	; d004ee34 <fillTriangleDitherBayer+0x328>
d004ed1a:	ee70 0ac4 	vsub.f32	s1, s1, s8
d004ed1e:	ee33 3a61 	vsub.f32	s6, s6, s3
d004ed22:	eec2 5a25 	vdiv.f32	s11, s4, s11
d004ed26:	ee31 1a66 	vsub.f32	s2, s2, s13
d004ed2a:	eef4 9ac5 	vcmpe.f32	s19, s10
d004ed2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed32:	ee20 2aa5 	vmul.f32	s4, s1, s11
d004ed36:	ee23 3a25 	vmul.f32	s6, s6, s11
d004ed3a:	ee61 5a25 	vmul.f32	s11, s2, s11
d004ed3e:	ed8d 2a12 	vstr	s4, [sp, #72]	; 0x48
d004ed42:	ed8d 3a13 	vstr	s6, [sp, #76]	; 0x4c
d004ed46:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d004ed4a:	f300 82e1 	bgt.w	d004f310 <fillTriangleDitherBayer+0x804>
d004ed4e:	eefd 5ae3 	vcvt.s32.f32	s11, s7
d004ed52:	4a32      	ldr	r2, [pc, #200]	; (d004ee1c <fillTriangleDitherBayer+0x310>)
d004ed54:	4b32      	ldr	r3, [pc, #200]	; (d004ee20 <fillTriangleDitherBayer+0x314>)
d004ed56:	6812      	ldr	r2, [r2, #0]
d004ed58:	edcd 5a0b 	vstr	s11, [sp, #44]	; 0x2c
d004ed5c:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ed60:	681b      	ldr	r3, [r3, #0]
d004ed62:	920c      	str	r2, [sp, #48]	; 0x30
d004ed64:	edcd 5a10 	vstr	s11, [sp, #64]	; 0x40
d004ed68:	930f      	str	r3, [sp, #60]	; 0x3c
d004ed6a:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d004ed6e:	eef4 3ae5 	vcmpe.f32	s7, s11
d004ed72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed76:	dd02      	ble.n	d004ed7e <fillTriangleDitherBayer+0x272>
d004ed78:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004ed7a:	3301      	adds	r3, #1
d004ed7c:	930b      	str	r3, [sp, #44]	; 0x2c
d004ed7e:	eefd 5ae4 	vcvt.s32.f32	s11, s9
d004ed82:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004ed84:	980c      	ldr	r0, [sp, #48]	; 0x30
d004ed86:	ee15 2a90 	vmov	r2, s11
d004ed8a:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004ed8e:	eef4 4ae5 	vcmpe.f32	s9, s11
d004ed92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed96:	bfd8      	it	le
d004ed98:	f102 32ff 	addle.w	r2, r2, #4294967295	; 0xffffffff
d004ed9c:	4293      	cmp	r3, r2
d004ed9e:	bfa8      	it	ge
d004eda0:	4613      	movge	r3, r2
d004eda2:	461a      	mov	r2, r3
d004eda4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004eda6:	4283      	cmp	r3, r0
d004eda8:	bfb8      	it	lt
d004edaa:	4603      	movlt	r3, r0
d004edac:	429a      	cmp	r2, r3
d004edae:	9305      	str	r3, [sp, #20]
d004edb0:	f2c0 80a8 	blt.w	d004ef04 <fillTriangleDitherBayer+0x3f8>
d004edb4:	ee05 3a90 	vmov	s11, r3
d004edb8:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d004edbc:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004edc0:	4918      	ldr	r1, [pc, #96]	; (d004ee24 <fillTriangleDitherBayer+0x318>)
d004edc2:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004edc6:	ed9d ca12 	vldr	s24, [sp, #72]	; 0x48
d004edca:	015b      	lsls	r3, r3, #5
d004edcc:	eddd ca13 	vldr	s25, [sp, #76]	; 0x4c
d004edd0:	eddd ba11 	vldr	s23, [sp, #68]	; 0x44
d004edd4:	ee75 5a85 	vadd.f32	s11, s11, s10
d004edd8:	930d      	str	r3, [sp, #52]	; 0x34
d004edda:	1c53      	adds	r3, r2, #1
d004eddc:	eddf 0a15 	vldr	s1, [pc, #84]	; d004ee34 <fillTriangleDitherBayer+0x328>
d004ede0:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004ee28 <fillTriangleDitherBayer+0x31c>
d004ede4:	ee35 6ac6 	vsub.f32	s12, s11, s12
d004ede8:	9309      	str	r3, [sp, #36]	; 0x24
d004edea:	ee75 3ae3 	vsub.f32	s7, s11, s7
d004edee:	680b      	ldr	r3, [r1, #0]
d004edf0:	ed9f 9a09 	vldr	s18, [pc, #36]	; d004ee18 <fillTriangleDitherBayer+0x30c>
d004edf4:	eea0 7a06 	vfma.f32	s14, s0, s12
d004edf8:	eddf 9a0c 	vldr	s19, [pc, #48]	; d004ee2c <fillTriangleDitherBayer+0x320>
d004edfc:	eee8 2a06 	vfma.f32	s5, s16, s12
d004ee00:	ed9f aa0b 	vldr	s20, [pc, #44]	; d004ee30 <fillTriangleDitherBayer+0x324>
d004ee04:	eee8 7a86 	vfma.f32	s15, s17, s12
d004ee08:	930c      	str	r3, [sp, #48]	; 0x30
d004ee0a:	eea3 4a8c 	vfma.f32	s8, s7, s24
d004ee0e:	eeec 1aa3 	vfma.f32	s3, s25, s7
d004ee12:	eeeb 6aa3 	vfma.f32	s13, s23, s7
d004ee16:	e051      	b.n	d004eebc <fillTriangleDitherBayer+0x3b0>
d004ee18:	00000000 	.word	0x00000000
d004ee1c:	d005a59c 	.word	0xd005a59c
d004ee20:	d005a5a0 	.word	0xd005a5a0
d004ee24:	d005a5a4 	.word	0xd005a5a4
d004ee28:	33d6bf95 	.word	0x33d6bf95
d004ee2c:	477fff00 	.word	0x477fff00
d004ee30:	43800000 	.word	0x43800000
d004ee34:	38d1b717 	.word	0x38d1b717
d004ee38:	eeb0 2a67 	vmov.f32	s4, s15
d004ee3c:	eeb0 3a62 	vmov.f32	s6, s5
d004ee40:	eeb0 6a47 	vmov.f32	s12, s14
d004ee44:	eef0 4a66 	vmov.f32	s9, s13
d004ee48:	eef0 5a61 	vmov.f32	s11, s3
d004ee4c:	eeb0 5a44 	vmov.f32	s10, s8
d004ee50:	eefd 3ac5 	vcvt.s32.f32	s7, s10
d004ee54:	f240 12df 	movw	r2, #479	; 0x1df
d004ee58:	ee13 1a90 	vmov	r1, s7
d004ee5c:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004ee60:	eeb4 5ae3 	vcmpe.f32	s10, s7
d004ee64:	eefd 3ac6 	vcvt.s32.f32	s7, s12
d004ee68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee6c:	ee13 3a90 	vmov	r3, s7
d004ee70:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004ee74:	bfc8      	it	gt
d004ee76:	3101      	addgt	r1, #1
d004ee78:	eeb4 6ae3 	vcmpe.f32	s12, s7
d004ee7c:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004ee80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee84:	bfd8      	it	le
d004ee86:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004ee8a:	4293      	cmp	r3, r2
d004ee8c:	bfa8      	it	ge
d004ee8e:	4613      	movge	r3, r2
d004ee90:	428b      	cmp	r3, r1
d004ee92:	469a      	mov	sl, r3
d004ee94:	f280 80c1 	bge.w	d004f01a <fillTriangleDitherBayer+0x50e>
d004ee98:	9b05      	ldr	r3, [sp, #20]
d004ee9a:	ee37 7a00 	vadd.f32	s14, s14, s0
d004ee9e:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004eea0:	ee72 2a88 	vadd.f32	s5, s5, s16
d004eea4:	3301      	adds	r3, #1
d004eea6:	ee77 7aa8 	vadd.f32	s15, s15, s17
d004eeaa:	ee34 4a0c 	vadd.f32	s8, s8, s24
d004eeae:	4293      	cmp	r3, r2
d004eeb0:	ee71 1aac 	vadd.f32	s3, s3, s25
d004eeb4:	ee76 6aab 	vadd.f32	s13, s13, s23
d004eeb8:	9305      	str	r3, [sp, #20]
d004eeba:	d023      	beq.n	d004ef04 <fillTriangleDitherBayer+0x3f8>
d004eebc:	eeb4 7ac4 	vcmpe.f32	s14, s8
d004eec0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eec4:	dcb8      	bgt.n	d004ee38 <fillTriangleDitherBayer+0x32c>
d004eec6:	eeb0 2a66 	vmov.f32	s4, s13
d004eeca:	eeb0 3a61 	vmov.f32	s6, s3
d004eece:	eeb0 6a44 	vmov.f32	s12, s8
d004eed2:	eef0 4a67 	vmov.f32	s9, s15
d004eed6:	eef0 5a62 	vmov.f32	s11, s5
d004eeda:	eeb0 5a47 	vmov.f32	s10, s14
d004eede:	e7b7      	b.n	d004ee50 <fillTriangleDitherBayer+0x344>
d004eee0:	ed9d 4a16 	vldr	s8, [sp, #88]	; 0x58
d004eee4:	ed9d 6a17 	vldr	s12, [sp, #92]	; 0x5c
d004eee8:	eddd 6a18 	vldr	s13, [sp, #96]	; 0x60
d004eeec:	ed9d 7a19 	vldr	s14, [sp, #100]	; 0x64
d004eef0:	ed5f 5a30 	vldr	s11, [pc, #-192]	; d004ee34 <fillTriangleDitherBayer+0x328>
d004eef4:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d004eef8:	eeb4 5ae5 	vcmpe.f32	s10, s11
d004eefc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ef00:	f73f af33 	bgt.w	d004ed6a <fillTriangleDitherBayer+0x25e>
d004ef04:	b01b      	add	sp, #108	; 0x6c
d004ef06:	ecbd 8b10 	vpop	{d8-d15}
d004ef0a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004ef0e:	eef4 3ae4 	vcmpe.f32	s7, s9
d004ef12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ef16:	dd67      	ble.n	d004efe8 <fillTriangleDitherBayer+0x4dc>
d004ef18:	eeb0 8a41 	vmov.f32	s16, s2
d004ef1c:	eeb0 0a43 	vmov.f32	s0, s6
d004ef20:	eeb0 2a64 	vmov.f32	s4, s9
d004ef24:	eeb0 5a60 	vmov.f32	s10, s1
d004ef28:	eeb0 1a67 	vmov.f32	s2, s15
d004ef2c:	eeb0 3a62 	vmov.f32	s6, s5
d004ef30:	eef0 4a46 	vmov.f32	s9, s12
d004ef34:	eef0 0a47 	vmov.f32	s1, s14
d004ef38:	eef0 7a48 	vmov.f32	s15, s16
d004ef3c:	eef0 2a40 	vmov.f32	s5, s0
d004ef40:	eeb0 6a42 	vmov.f32	s12, s4
d004ef44:	eeb0 7a45 	vmov.f32	s14, s10
d004ef48:	e687      	b.n	d004ec5a <fillTriangleDitherBayer+0x14e>
d004ef4a:	ee05 2a10 	vmov	s10, r2
d004ef4e:	ee8a 9a29 	vdiv.f32	s18, s20, s19
d004ef52:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004ef56:	ee74 bae3 	vsub.f32	s23, s9, s7
d004ef5a:	ee74 aa47 	vsub.f32	s21, s8, s14
d004ef5e:	ee75 5ac5 	vsub.f32	s11, s11, s10
d004ef62:	ee31 aae2 	vsub.f32	s20, s3, s5
d004ef66:	edcd ba0a 	vstr	s23, [sp, #40]	; 0x28
d004ef6a:	eef4 bac2 	vcmpe.f32	s23, s4
d004ef6e:	eeb0 ba65 	vmov.f32	s22, s11
d004ef72:	ee36 5ae7 	vsub.f32	s10, s13, s15
d004ef76:	eebe bace 	vcvt.s32.f32	s22, s22, #4
d004ef7a:	ee6a 5a89 	vmul.f32	s11, s21, s18
d004ef7e:	ee1b 3a10 	vmov	r3, s22
d004ef82:	ee65 fa09 	vmul.f32	s31, s10, s18
d004ef86:	f383 0204 	usat	r2, #4, r3
d004ef8a:	eef0 da65 	vmov.f32	s27, s11
d004ef8e:	ee6a 5a09 	vmul.f32	s11, s20, s18
d004ef92:	9207      	str	r2, [sp, #28]
d004ef94:	9a04      	ldr	r2, [sp, #16]
d004ef96:	eeb0 ba65 	vmov.f32	s22, s11
d004ef9a:	455a      	cmp	r2, fp
d004ef9c:	bf18      	it	ne
d004ef9e:	2b00      	cmpne	r3, #0
d004efa0:	bfd4      	ite	le
d004efa2:	2301      	movle	r3, #1
d004efa4:	2300      	movgt	r3, #0
d004efa6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004efaa:	9302      	str	r3, [sp, #8]
d004efac:	f340 81a8 	ble.w	d004f300 <fillTriangleDitherBayer+0x7f4>
d004efb0:	eef0 5a6b 	vmov.f32	s11, s23
d004efb4:	e6ad      	b.n	d004ed12 <fillTriangleDitherBayer+0x206>
d004efb6:	eeb0 8a67 	vmov.f32	s16, s15
d004efba:	eeb0 0a62 	vmov.f32	s0, s5
d004efbe:	eeb0 2a46 	vmov.f32	s4, s12
d004efc2:	eeb0 5a47 	vmov.f32	s10, s14
d004efc6:	eef0 7a41 	vmov.f32	s15, s2
d004efca:	eef0 2a43 	vmov.f32	s5, s6
d004efce:	eeb0 6a64 	vmov.f32	s12, s9
d004efd2:	eeb0 7a60 	vmov.f32	s14, s1
d004efd6:	eeb0 1a48 	vmov.f32	s2, s16
d004efda:	eeb0 3a40 	vmov.f32	s6, s0
d004efde:	eef0 4a42 	vmov.f32	s9, s4
d004efe2:	eef0 0a45 	vmov.f32	s1, s10
d004efe6:	e61b      	b.n	d004ec20 <fillTriangleDitherBayer+0x114>
d004efe8:	eeb0 8a67 	vmov.f32	s16, s15
d004efec:	eeb0 0a62 	vmov.f32	s0, s5
d004eff0:	eeb0 2a46 	vmov.f32	s4, s12
d004eff4:	eeb0 5a47 	vmov.f32	s10, s14
d004eff8:	eef0 7a66 	vmov.f32	s15, s13
d004effc:	eef0 2a61 	vmov.f32	s5, s3
d004f000:	eeb0 6a63 	vmov.f32	s12, s7
d004f004:	eeb0 7a44 	vmov.f32	s14, s8
d004f008:	eef0 6a48 	vmov.f32	s13, s16
d004f00c:	eef0 1a40 	vmov.f32	s3, s0
d004f010:	eef0 3a42 	vmov.f32	s7, s4
d004f014:	eeb0 4a45 	vmov.f32	s8, s10
d004f018:	e602      	b.n	d004ec20 <fillTriangleDitherBayer+0x114>
d004f01a:	ee36 6a45 	vsub.f32	s12, s12, s10
d004f01e:	eeb4 6ae0 	vcmpe.f32	s12, s1
d004f022:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f026:	f340 83c0 	ble.w	d004f7aa <fillTriangleDitherBayer+0xc9e>
d004f02a:	eef7 aa00 	vmov.f32	s21, #112	; 0x3f800000  1.0
d004f02e:	ee33 3a65 	vsub.f32	s6, s6, s11
d004f032:	ee32 2a64 	vsub.f32	s4, s4, s9
d004f036:	eeca 3a86 	vdiv.f32	s7, s21, s12
d004f03a:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004f03e:	ee36 6a45 	vsub.f32	s12, s12, s10
d004f042:	ee05 1a10 	vmov	s10, r1
d004f046:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f04a:	ee35 5a06 	vadd.f32	s10, s10, s12
d004f04e:	ee23 3a23 	vmul.f32	s6, s6, s7
d004f052:	ee22 2a23 	vmul.f32	s4, s4, s7
d004f056:	eee5 5a03 	vfma.f32	s11, s10, s6
d004f05a:	eee5 4a02 	vfma.f32	s9, s10, s4
d004f05e:	9805      	ldr	r0, [sp, #20]
d004f060:	eb01 0681 	add.w	r6, r1, r1, lsl #2
d004f064:	9d0d      	ldr	r5, [sp, #52]	; 0x34
d004f066:	eef6 aa00 	vmov.f32	s21, #96	; 0x3f000000  0.5
d004f06a:	ebc0 1200 	rsb	r2, r0, r0, lsl #4
d004f06e:	4ba0      	ldr	r3, [pc, #640]	; (d004f2f0 <fillTriangleDitherBayer+0x7e4>)
d004f070:	4ca0      	ldr	r4, [pc, #640]	; (d004f2f4 <fillTriangleDitherBayer+0x7e8>)
d004f072:	eebe ba00 	vmov.f32	s22, #224	; 0xbf000000 -0.5
d004f076:	eb05 1242 	add.w	r2, r5, r2, lsl #5
d004f07a:	4605      	mov	r5, r0
d004f07c:	681b      	ldr	r3, [r3, #0]
d004f07e:	f000 0003 	and.w	r0, r0, #3
d004f082:	eb05 1686 	add.w	r6, r5, r6, lsl #6
d004f086:	440a      	add	r2, r1
d004f088:	441e      	add	r6, r3
d004f08a:	eb04 0380 	add.w	r3, r4, r0, lsl #2
d004f08e:	9306      	str	r3, [sp, #24]
d004f090:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004f092:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004f096:	e9cd 3a00 	strd	r3, sl, [sp]
d004f09a:	9b01      	ldr	r3, [sp, #4]
d004f09c:	eef4 5ac1 	vcmpe.f32	s11, s2
d004f0a0:	eba3 0e01 	sub.w	lr, r3, r1
d004f0a4:	f10e 0301 	add.w	r3, lr, #1
d004f0a8:	2b30      	cmp	r3, #48	; 0x30
d004f0aa:	bfa8      	it	ge
d004f0ac:	2330      	movge	r3, #48	; 0x30
d004f0ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f0b2:	ee06 3a10 	vmov	s12, r3
d004f0b6:	eef8 3ac6 	vcvt.f32.s32	s7, s12
d004f0ba:	d97b      	bls.n	d004f1b4 <fillTriangleDitherBayer+0x6a8>
d004f0bc:	f1be 0f00 	cmp.w	lr, #0
d004f0c0:	ee84 6aa5 	vdiv.f32	s12, s9, s11
d004f0c4:	f340 8084 	ble.w	d004f1d0 <fillTriangleDitherBayer+0x6c4>
d004f0c8:	1e5a      	subs	r2, r3, #1
d004f0ca:	ee05 2a10 	vmov	s10, r2
d004f0ce:	eeb0 da65 	vmov.f32	s26, s11
d004f0d2:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f0d6:	eea3 da05 	vfma.f32	s26, s6, s10
d004f0da:	eeb4 dac1 	vcmpe.f32	s26, s2
d004f0de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f0e2:	f340 809e 	ble.w	d004f222 <fillTriangleDitherBayer+0x716>
d004f0e6:	eef0 da64 	vmov.f32	s27, s9
d004f0ea:	eee2 da05 	vfma.f32	s27, s4, s10
d004f0ee:	ee8d 5a8d 	vdiv.f32	s10, s27, s26
d004f0f2:	4a81      	ldr	r2, [pc, #516]	; (d004f2f8 <fillTriangleDitherBayer+0x7ec>)
d004f0f4:	fe86 6a09 	vmaxnm.f32	s12, s12, s18
d004f0f8:	fe85 5a09 	vmaxnm.f32	s10, s10, s18
d004f0fc:	fe86 6a69 	vminnm.f32	s12, s12, s19
d004f100:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d004f104:	fe85 5a69 	vminnm.f32	s10, s10, s19
d004f108:	ed92 da00 	vldr	s26, [r2]
d004f10c:	ee35 5a46 	vsub.f32	s10, s10, s12
d004f110:	eef0 da6a 	vmov.f32	s27, s21
d004f114:	009a      	lsls	r2, r3, #2
d004f116:	ee2d da0a 	vmul.f32	s26, s26, s20
d004f11a:	9203      	str	r2, [sp, #12]
d004f11c:	eee6 da0a 	vfma.f32	s27, s12, s20
d004f120:	9a02      	ldr	r2, [sp, #8]
d004f122:	ee25 5a0d 	vmul.f32	s10, s10, s26
d004f126:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d004f12a:	eebd 6aed 	vcvt.s32.f32	s12, s27
d004f12e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f132:	fe2a da8b 	vselge.f32	s26, s21, s22
d004f136:	ee3d 5a05 	vadd.f32	s10, s26, s10
d004f13a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004f13e:	ee15 7a10 	vmov	r7, s10
d004f142:	2a00      	cmp	r2, #0
d004f144:	d070      	beq.n	d004f228 <fillTriangleDitherBayer+0x71c>
d004f146:	2f00      	cmp	r7, #0
d004f148:	f000 8334 	beq.w	d004f7b4 <fillTriangleDitherBayer+0xca8>
d004f14c:	9800      	ldr	r0, [sp, #0]
d004f14e:	ee16 2a10 	vmov	r2, s12
d004f152:	1e85      	subs	r5, r0, #2
d004f154:	3280      	adds	r2, #128	; 0x80
d004f156:	2000      	movs	r0, #0
d004f158:	f3c2 2c0f 	ubfx	ip, r2, #8, #16
d004f15c:	f835 8f02 	ldrh.w	r8, [r5, #2]!
d004f160:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f164:	443a      	add	r2, r7
d004f166:	45e0      	cmp	r8, ip
d004f168:	f100 0001 	add.w	r0, r0, #1
d004f16c:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f170:	d903      	bls.n	d004f17a <fillTriangleDitherBayer+0x66e>
d004f172:	f8a5 c000 	strh.w	ip, [r5]
d004f176:	f806 b004 	strb.w	fp, [r6, r4]
d004f17a:	4283      	cmp	r3, r0
d004f17c:	dcec      	bgt.n	d004f158 <fillTriangleDitherBayer+0x64c>
d004f17e:	9a03      	ldr	r2, [sp, #12]
d004f180:	f1be 0f00 	cmp.w	lr, #0
d004f184:	ea4f 0043 	mov.w	r0, r3, lsl #1
d004f188:	9c00      	ldr	r4, [sp, #0]
d004f18a:	441a      	add	r2, r3
d004f18c:	bfb8      	it	lt
d004f18e:	2002      	movlt	r0, #2
d004f190:	ea4f 1282 	mov.w	r2, r2, lsl #6
d004f194:	bfb8      	it	lt
d004f196:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d004f19a:	4404      	add	r4, r0
d004f19c:	4416      	add	r6, r2
d004f19e:	9400      	str	r4, [sp, #0]
d004f1a0:	eee3 5a23 	vfma.f32	s11, s6, s7
d004f1a4:	4419      	add	r1, r3
d004f1a6:	eee2 4a23 	vfma.f32	s9, s4, s7
d004f1aa:	9b01      	ldr	r3, [sp, #4]
d004f1ac:	428b      	cmp	r3, r1
d004f1ae:	f6bf af74 	bge.w	d004f09a <fillTriangleDitherBayer+0x58e>
d004f1b2:	e671      	b.n	d004ee98 <fillTriangleDitherBayer+0x38c>
d004f1b4:	9800      	ldr	r0, [sp, #0]
d004f1b6:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004f1ba:	eee3 5a23 	vfma.f32	s11, s6, s7
d004f1be:	4419      	add	r1, r3
d004f1c0:	eb00 0043 	add.w	r0, r0, r3, lsl #1
d004f1c4:	eee2 4a23 	vfma.f32	s9, s4, s7
d004f1c8:	eb06 1682 	add.w	r6, r6, r2, lsl #6
d004f1cc:	9000      	str	r0, [sp, #0]
d004f1ce:	e7ec      	b.n	d004f1aa <fillTriangleDitherBayer+0x69e>
d004f1d0:	eeb0 5a6a 	vmov.f32	s10, s21
d004f1d4:	fe86 6a09 	vmaxnm.f32	s12, s12, s18
d004f1d8:	fe86 6a69 	vminnm.f32	s12, s12, s19
d004f1dc:	9a02      	ldr	r2, [sp, #8]
d004f1de:	eea6 5a0a 	vfma.f32	s10, s12, s20
d004f1e2:	eebd 6ac5 	vcvt.s32.f32	s12, s10
d004f1e6:	2a00      	cmp	r2, #0
d004f1e8:	d052      	beq.n	d004f290 <fillTriangleDitherBayer+0x784>
d004f1ea:	ee16 7a10 	vmov	r7, s12
d004f1ee:	3780      	adds	r7, #128	; 0x80
d004f1f0:	f3c7 270f 	ubfx	r7, r7, #8, #16
d004f1f4:	f1be 0f00 	cmp.w	lr, #0
d004f1f8:	d1d2      	bne.n	d004f1a0 <fillTriangleDitherBayer+0x694>
d004f1fa:	009a      	lsls	r2, r3, #2
d004f1fc:	9203      	str	r2, [sp, #12]
d004f1fe:	9a00      	ldr	r2, [sp, #0]
d004f200:	1e94      	subs	r4, r2, #2
d004f202:	2200      	movs	r2, #0
d004f204:	f834 5f02 	ldrh.w	r5, [r4, #2]!
d004f208:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d004f20c:	3201      	adds	r2, #1
d004f20e:	42bd      	cmp	r5, r7
d004f210:	ea4f 1080 	mov.w	r0, r0, lsl #6
d004f214:	d902      	bls.n	d004f21c <fillTriangleDitherBayer+0x710>
d004f216:	8027      	strh	r7, [r4, #0]
d004f218:	f806 b000 	strb.w	fp, [r6, r0]
d004f21c:	4293      	cmp	r3, r2
d004f21e:	dcf1      	bgt.n	d004f204 <fillTriangleDitherBayer+0x6f8>
d004f220:	e7ad      	b.n	d004f17e <fillTriangleDitherBayer+0x672>
d004f222:	eeb0 5a46 	vmov.f32	s10, s12
d004f226:	e764      	b.n	d004f0f2 <fillTriangleDitherBayer+0x5e6>
d004f228:	f001 0003 	and.w	r0, r1, #3
d004f22c:	2f00      	cmp	r7, #0
d004f22e:	f000 82d3 	beq.w	d004f7d8 <fillTriangleDitherBayer+0xccc>
d004f232:	9c00      	ldr	r4, [sp, #0]
d004f234:	ee16 2a10 	vmov	r2, s12
d004f238:	f8cd e028 	str.w	lr, [sp, #40]	; 0x28
d004f23c:	f1a4 0c02 	sub.w	ip, r4, #2
d004f240:	910b      	str	r1, [sp, #44]	; 0x2c
d004f242:	3280      	adds	r2, #128	; 0x80
d004f244:	9907      	ldr	r1, [sp, #28]
d004f246:	9c02      	ldr	r4, [sp, #8]
d004f248:	f8dd e010 	ldr.w	lr, [sp, #16]
d004f24c:	9108      	str	r1, [sp, #32]
d004f24e:	f3c2 280f 	ubfx	r8, r2, #8, #16
d004f252:	f83c af02 	ldrh.w	sl, [ip, #2]!
d004f256:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f25a:	f100 0901 	add.w	r9, r0, #1
d004f25e:	45c2      	cmp	sl, r8
d004f260:	443a      	add	r2, r7
d004f262:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f266:	f104 0401 	add.w	r4, r4, #1
d004f26a:	d909      	bls.n	d004f280 <fillTriangleDitherBayer+0x774>
d004f26c:	9906      	ldr	r1, [sp, #24]
d004f26e:	f8ac 8000 	strh.w	r8, [ip]
d004f272:	5c08      	ldrb	r0, [r1, r0]
d004f274:	9908      	ldr	r1, [sp, #32]
d004f276:	4288      	cmp	r0, r1
d004f278:	bfb4      	ite	lt
d004f27a:	4670      	movlt	r0, lr
d004f27c:	4658      	movge	r0, fp
d004f27e:	5570      	strb	r0, [r6, r5]
d004f280:	42a3      	cmp	r3, r4
d004f282:	f009 0003 	and.w	r0, r9, #3
d004f286:	dce2      	bgt.n	d004f24e <fillTriangleDitherBayer+0x742>
d004f288:	f8dd e028 	ldr.w	lr, [sp, #40]	; 0x28
d004f28c:	990b      	ldr	r1, [sp, #44]	; 0x2c
d004f28e:	e776      	b.n	d004f17e <fillTriangleDitherBayer+0x672>
d004f290:	ee16 2a10 	vmov	r2, s12
d004f294:	f001 0003 	and.w	r0, r1, #3
d004f298:	3280      	adds	r2, #128	; 0x80
d004f29a:	f3c2 220f 	ubfx	r2, r2, #8, #16
d004f29e:	f1be 0f00 	cmp.w	lr, #0
d004f2a2:	f47f af7d 	bne.w	d004f1a0 <fillTriangleDitherBayer+0x694>
d004f2a6:	009c      	lsls	r4, r3, #2
d004f2a8:	9403      	str	r4, [sp, #12]
d004f2aa:	9c00      	ldr	r4, [sp, #0]
d004f2ac:	9108      	str	r1, [sp, #32]
d004f2ae:	1ea7      	subs	r7, r4, #2
d004f2b0:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004f2b4:	2400      	movs	r4, #0
d004f2b6:	9907      	ldr	r1, [sp, #28]
d004f2b8:	f8dd a018 	ldr.w	sl, [sp, #24]
d004f2bc:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f2c0:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f2c4:	f100 0c01 	add.w	ip, r0, #1
d004f2c8:	3401      	adds	r4, #1
d004f2ca:	4590      	cmp	r8, r2
d004f2cc:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f2d0:	d907      	bls.n	d004f2e2 <fillTriangleDitherBayer+0x7d6>
d004f2d2:	803a      	strh	r2, [r7, #0]
d004f2d4:	f81a 0000 	ldrb.w	r0, [sl, r0]
d004f2d8:	4288      	cmp	r0, r1
d004f2da:	bfb4      	ite	lt
d004f2dc:	4648      	movlt	r0, r9
d004f2de:	4658      	movge	r0, fp
d004f2e0:	5570      	strb	r0, [r6, r5]
d004f2e2:	42a3      	cmp	r3, r4
d004f2e4:	f00c 0003 	and.w	r0, ip, #3
d004f2e8:	dce8      	bgt.n	d004f2bc <fillTriangleDitherBayer+0x7b0>
d004f2ea:	9908      	ldr	r1, [sp, #32]
d004f2ec:	e747      	b.n	d004f17e <fillTriangleDitherBayer+0x672>
d004f2ee:	bf00      	nop
d004f2f0:	d00f4a70 	.word	0xd00f4a70
d004f2f4:	d0057780 	.word	0xd0057780
d004f2f8:	d00577a0 	.word	0xd00577a0
d004f2fc:	00000000 	.word	0x00000000
d004f300:	ed5f 5a02 	vldr	s11, [pc, #-8]	; d004f2fc <fillTriangleDitherBayer+0x7f0>
d004f304:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d004f308:	edcd 5a13 	vstr	s11, [sp, #76]	; 0x4c
d004f30c:	edcd 5a12 	vstr	s11, [sp, #72]	; 0x48
d004f310:	eefd 5ac6 	vcvt.s32.f32	s11, s12
d004f314:	48cd      	ldr	r0, [pc, #820]	; (d004f64c <fillTriangleDitherBayer+0xb40>)
d004f316:	49ce      	ldr	r1, [pc, #824]	; (d004f650 <fillTriangleDitherBayer+0xb44>)
d004f318:	6800      	ldr	r0, [r0, #0]
d004f31a:	ee15 2a90 	vmov	r2, s11
d004f31e:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004f322:	6809      	ldr	r1, [r1, #0]
d004f324:	900c      	str	r0, [sp, #48]	; 0x30
d004f326:	eeb4 6ae5 	vcmpe.f32	s12, s11
d004f32a:	910f      	str	r1, [sp, #60]	; 0x3c
d004f32c:	eefd 5ae3 	vcvt.s32.f32	s11, s7
d004f330:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f334:	eeb8 5ae5 	vcvt.f32.s32	s10, s11
d004f338:	ee15 3a90 	vmov	r3, s11
d004f33c:	edcd 5a0b 	vstr	s11, [sp, #44]	; 0x2c
d004f340:	bfc8      	it	gt
d004f342:	3201      	addgt	r2, #1
d004f344:	eef4 3ac5 	vcmpe.f32	s7, s10
d004f348:	ed8d 5a10 	vstr	s10, [sp, #64]	; 0x40
d004f34c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f350:	bfd8      	it	le
d004f352:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f356:	4282      	cmp	r2, r0
d004f358:	bfb8      	it	lt
d004f35a:	4602      	movlt	r2, r0
d004f35c:	428b      	cmp	r3, r1
d004f35e:	bfa8      	it	ge
d004f360:	460b      	movge	r3, r1
d004f362:	9205      	str	r2, [sp, #20]
d004f364:	4293      	cmp	r3, r2
d004f366:	f6ff adc3 	blt.w	d004eef0 <fillTriangleDitherBayer+0x3e4>
d004f36a:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004f36e:	3301      	adds	r3, #1
d004f370:	eef0 ba62 	vmov.f32	s23, s5
d004f374:	49b7      	ldr	r1, [pc, #732]	; (d004f654 <fillTriangleDitherBayer+0xb48>)
d004f376:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d004f37a:	9309      	str	r3, [sp, #36]	; 0x24
d004f37c:	ee35 5ac6 	vsub.f32	s10, s11, s12
d004f380:	eddd 5a05 	vldr	s11, [sp, #20]
d004f384:	680b      	ldr	r3, [r1, #0]
d004f386:	eeb0 aa47 	vmov.f32	s20, s14
d004f38a:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d004f38e:	eddf aab2 	vldr	s21, [pc, #712]	; d004f658 <fillTriangleDitherBayer+0xb4c>
d004f392:	eef0 ca62 	vmov.f32	s25, s5
d004f396:	9314      	str	r3, [sp, #80]	; 0x50
d004f398:	eeb0 ca67 	vmov.f32	s24, s15
d004f39c:	0153      	lsls	r3, r2, #5
d004f39e:	ee75 5a85 	vadd.f32	s11, s11, s10
d004f3a2:	ed9f daae 	vldr	s26, [pc, #696]	; d004f65c <fillTriangleDitherBayer+0xb50>
d004f3a6:	eef0 9a47 	vmov.f32	s19, s14
d004f3aa:	ed9f eaad 	vldr	s28, [pc, #692]	; d004f660 <fillTriangleDitherBayer+0xb54>
d004f3ae:	eeb0 9a4b 	vmov.f32	s18, s22
d004f3b2:	ed9f faac 	vldr	s30, [pc, #688]	; d004f664 <fillTriangleDitherBayer+0xb58>
d004f3b6:	eeeb ba25 	vfma.f32	s23, s22, s11
d004f3ba:	9315      	str	r3, [sp, #84]	; 0x54
d004f3bc:	eeb0 ba67 	vmov.f32	s22, s15
d004f3c0:	ed8d 4a16 	vstr	s8, [sp, #88]	; 0x58
d004f3c4:	eea0 aa25 	vfma.f32	s20, s0, s11
d004f3c8:	ed8d 6a17 	vstr	s12, [sp, #92]	; 0x5c
d004f3cc:	eee8 ca25 	vfma.f32	s25, s16, s11
d004f3d0:	edcd 6a18 	vstr	s13, [sp, #96]	; 0x60
d004f3d4:	eea8 caa5 	vfma.f32	s24, s17, s11
d004f3d8:	ed8d 7a19 	vstr	s14, [sp, #100]	; 0x64
d004f3dc:	eeed 9aa5 	vfma.f32	s19, s27, s11
d004f3e0:	eeaf baa5 	vfma.f32	s22, s31, s11
d004f3e4:	e041      	b.n	d004f46a <fillTriangleDitherBayer+0x95e>
d004f3e6:	eeb0 3a4c 	vmov.f32	s6, s24
d004f3ea:	eeb0 4a6c 	vmov.f32	s8, s25
d004f3ee:	eef0 6a4a 	vmov.f32	s13, s20
d004f3f2:	eeb0 6a4b 	vmov.f32	s12, s22
d004f3f6:	eeb0 7a6b 	vmov.f32	s14, s23
d004f3fa:	eef0 5a69 	vmov.f32	s11, s19
d004f3fe:	eebd 5ae5 	vcvt.s32.f32	s10, s11
d004f402:	f240 12df 	movw	r2, #479	; 0x1df
d004f406:	ee15 1a10 	vmov	r1, s10
d004f40a:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f40e:	eef4 5ac5 	vcmpe.f32	s11, s10
d004f412:	eebd 5ae6 	vcvt.s32.f32	s10, s13
d004f416:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f41a:	ee15 3a10 	vmov	r3, s10
d004f41e:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f422:	bfc8      	it	gt
d004f424:	3101      	addgt	r1, #1
d004f426:	eef4 6ac5 	vcmpe.f32	s13, s10
d004f42a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004f42e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f432:	bfd8      	it	le
d004f434:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f438:	4293      	cmp	r3, r2
d004f43a:	bfa8      	it	ge
d004f43c:	4613      	movge	r3, r2
d004f43e:	428b      	cmp	r3, r1
d004f440:	469a      	mov	sl, r3
d004f442:	da24      	bge.n	d004f48e <fillTriangleDitherBayer+0x982>
d004f444:	9b05      	ldr	r3, [sp, #20]
d004f446:	ee3a aa00 	vadd.f32	s20, s20, s0
d004f44a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004f44c:	ee7c ca88 	vadd.f32	s25, s25, s16
d004f450:	3301      	adds	r3, #1
d004f452:	ee3c ca28 	vadd.f32	s24, s24, s17
d004f456:	ee79 9aad 	vadd.f32	s19, s19, s27
d004f45a:	429a      	cmp	r2, r3
d004f45c:	ee7b ba89 	vadd.f32	s23, s23, s18
d004f460:	ee3b ba2f 	vadd.f32	s22, s22, s31
d004f464:	9305      	str	r3, [sp, #20]
d004f466:	f43f ad3b 	beq.w	d004eee0 <fillTriangleDitherBayer+0x3d4>
d004f46a:	eeb4 aae9 	vcmpe.f32	s20, s19
d004f46e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f472:	dcb8      	bgt.n	d004f3e6 <fillTriangleDitherBayer+0x8da>
d004f474:	eeb0 3a4b 	vmov.f32	s6, s22
d004f478:	eeb0 4a6b 	vmov.f32	s8, s23
d004f47c:	eef0 6a69 	vmov.f32	s13, s19
d004f480:	eeb0 6a4c 	vmov.f32	s12, s24
d004f484:	eeb0 7a6c 	vmov.f32	s14, s25
d004f488:	eef0 5a4a 	vmov.f32	s11, s20
d004f48c:	e7b7      	b.n	d004f3fe <fillTriangleDitherBayer+0x8f2>
d004f48e:	ee76 6ae5 	vsub.f32	s13, s13, s11
d004f492:	ed9f 5a75 	vldr	s10, [pc, #468]	; d004f668 <fillTriangleDitherBayer+0xb5c>
d004f496:	eef4 6ac5 	vcmpe.f32	s13, s10
d004f49a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f49e:	f340 817f 	ble.w	d004f7a0 <fillTriangleDitherBayer+0xc94>
d004f4a2:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d004f4a6:	ee34 4a47 	vsub.f32	s8, s8, s14
d004f4aa:	ee33 3a46 	vsub.f32	s6, s6, s12
d004f4ae:	ee82 5a26 	vdiv.f32	s10, s4, s13
d004f4b2:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004f4b6:	ee76 5ae5 	vsub.f32	s11, s13, s11
d004f4ba:	ee06 1a90 	vmov	s13, r1
d004f4be:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004f4c2:	ee76 5aa5 	vadd.f32	s11, s13, s11
d004f4c6:	ee24 4a05 	vmul.f32	s8, s8, s10
d004f4ca:	ee23 3a05 	vmul.f32	s6, s6, s10
d004f4ce:	eea5 7a84 	vfma.f32	s14, s11, s8
d004f4d2:	eea5 6a83 	vfma.f32	s12, s11, s6
d004f4d6:	9805      	ldr	r0, [sp, #20]
d004f4d8:	eb01 0681 	add.w	r6, r1, r1, lsl #2
d004f4dc:	9d15      	ldr	r5, [sp, #84]	; 0x54
d004f4de:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d004f4e2:	ebc0 1200 	rsb	r2, r0, r0, lsl #4
d004f4e6:	4b61      	ldr	r3, [pc, #388]	; (d004f66c <fillTriangleDitherBayer+0xb60>)
d004f4e8:	4c61      	ldr	r4, [pc, #388]	; (d004f670 <fillTriangleDitherBayer+0xb64>)
d004f4ea:	eefe 0a00 	vmov.f32	s1, #224	; 0xbf000000 -0.5
d004f4ee:	eb05 1242 	add.w	r2, r5, r2, lsl #5
d004f4f2:	4605      	mov	r5, r0
d004f4f4:	681b      	ldr	r3, [r3, #0]
d004f4f6:	f000 0003 	and.w	r0, r0, #3
d004f4fa:	eb05 1686 	add.w	r6, r5, r6, lsl #6
d004f4fe:	440a      	add	r2, r1
d004f500:	441e      	add	r6, r3
d004f502:	eb04 0380 	add.w	r3, r4, r0, lsl #2
d004f506:	9306      	str	r3, [sp, #24]
d004f508:	9b14      	ldr	r3, [sp, #80]	; 0x50
d004f50a:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d004f50e:	e9cd 3a00 	strd	r3, sl, [sp]
d004f512:	9b01      	ldr	r3, [sp, #4]
d004f514:	eeb4 7aea 	vcmpe.f32	s14, s21
d004f518:	eba3 0e01 	sub.w	lr, r3, r1
d004f51c:	f10e 0201 	add.w	r2, lr, #1
d004f520:	2a30      	cmp	r2, #48	; 0x30
d004f522:	bfa8      	it	ge
d004f524:	2230      	movge	r2, #48	; 0x30
d004f526:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f52a:	ee06 2a90 	vmov	s13, r2
d004f52e:	eef8 5ae6 	vcvt.f32.s32	s11, s13
d004f532:	d97c      	bls.n	d004f62e <fillTriangleDitherBayer+0xb22>
d004f534:	f1be 0f00 	cmp.w	lr, #0
d004f538:	eec6 6a07 	vdiv.f32	s13, s12, s14
d004f53c:	f340 809c 	ble.w	d004f678 <fillTriangleDitherBayer+0xb6c>
d004f540:	1e53      	subs	r3, r2, #1
d004f542:	ee05 3a10 	vmov	s10, r3
d004f546:	eeb0 1a47 	vmov.f32	s2, s14
d004f54a:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d004f54e:	eea4 1a05 	vfma.f32	s2, s8, s10
d004f552:	eeb4 1aea 	vcmpe.f32	s2, s21
d004f556:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f55a:	f340 80b6 	ble.w	d004f6ca <fillTriangleDitherBayer+0xbbe>
d004f55e:	eef0 ea46 	vmov.f32	s29, s12
d004f562:	eee3 ea05 	vfma.f32	s29, s6, s10
d004f566:	ee8e 5a81 	vdiv.f32	s10, s29, s2
d004f56a:	4b42      	ldr	r3, [pc, #264]	; (d004f674 <fillTriangleDitherBayer+0xb68>)
d004f56c:	fec6 6a8d 	vmaxnm.f32	s13, s13, s26
d004f570:	fe85 5a0d 	vmaxnm.f32	s10, s10, s26
d004f574:	fec6 6ace 	vminnm.f32	s13, s13, s28
d004f578:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d004f57c:	fe85 5a4e 	vminnm.f32	s10, s10, s28
d004f580:	ed93 1a00 	vldr	s2, [r3]
d004f584:	ee35 5a66 	vsub.f32	s10, s10, s13
d004f588:	eef0 ea42 	vmov.f32	s29, s4
d004f58c:	0093      	lsls	r3, r2, #2
d004f58e:	ee21 1a0f 	vmul.f32	s2, s2, s30
d004f592:	9303      	str	r3, [sp, #12]
d004f594:	eee6 ea8f 	vfma.f32	s29, s13, s30
d004f598:	9b02      	ldr	r3, [sp, #8]
d004f59a:	ee25 5a01 	vmul.f32	s10, s10, s2
d004f59e:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d004f5a2:	eefd 6aee 	vcvt.s32.f32	s13, s29
d004f5a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f5aa:	fe22 1a20 	vselge.f32	s2, s4, s1
d004f5ae:	ee31 5a05 	vadd.f32	s10, s2, s10
d004f5b2:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d004f5b6:	ee15 5a10 	vmov	r5, s10
d004f5ba:	2b00      	cmp	r3, #0
d004f5bc:	f000 8088 	beq.w	d004f6d0 <fillTriangleDitherBayer+0xbc4>
d004f5c0:	2d00      	cmp	r5, #0
d004f5c2:	f000 8103 	beq.w	d004f7cc <fillTriangleDitherBayer+0xcc0>
d004f5c6:	9800      	ldr	r0, [sp, #0]
d004f5c8:	ee16 3a90 	vmov	r3, s13
d004f5cc:	1e87      	subs	r7, r0, #2
d004f5ce:	3380      	adds	r3, #128	; 0x80
d004f5d0:	2000      	movs	r0, #0
d004f5d2:	f3c3 2c0f 	ubfx	ip, r3, #8, #16
d004f5d6:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f5da:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f5de:	442b      	add	r3, r5
d004f5e0:	45e0      	cmp	r8, ip
d004f5e2:	f100 0001 	add.w	r0, r0, #1
d004f5e6:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f5ea:	d903      	bls.n	d004f5f4 <fillTriangleDitherBayer+0xae8>
d004f5ec:	f8a7 c000 	strh.w	ip, [r7]
d004f5f0:	f806 b004 	strb.w	fp, [r6, r4]
d004f5f4:	4282      	cmp	r2, r0
d004f5f6:	dcec      	bgt.n	d004f5d2 <fillTriangleDitherBayer+0xac6>
d004f5f8:	9b03      	ldr	r3, [sp, #12]
d004f5fa:	f1be 0f00 	cmp.w	lr, #0
d004f5fe:	ea4f 0042 	mov.w	r0, r2, lsl #1
d004f602:	9c00      	ldr	r4, [sp, #0]
d004f604:	4413      	add	r3, r2
d004f606:	bfb8      	it	lt
d004f608:	2002      	movlt	r0, #2
d004f60a:	ea4f 1383 	mov.w	r3, r3, lsl #6
d004f60e:	bfb8      	it	lt
d004f610:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004f614:	4404      	add	r4, r0
d004f616:	441e      	add	r6, r3
d004f618:	9400      	str	r4, [sp, #0]
d004f61a:	eea4 7a25 	vfma.f32	s14, s8, s11
d004f61e:	4411      	add	r1, r2
d004f620:	eea3 6a25 	vfma.f32	s12, s6, s11
d004f624:	9b01      	ldr	r3, [sp, #4]
d004f626:	4299      	cmp	r1, r3
d004f628:	f77f af73 	ble.w	d004f512 <fillTriangleDitherBayer+0xa06>
d004f62c:	e70a      	b.n	d004f444 <fillTriangleDitherBayer+0x938>
d004f62e:	9800      	ldr	r0, [sp, #0]
d004f630:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004f634:	eea4 7a25 	vfma.f32	s14, s8, s11
d004f638:	4411      	add	r1, r2
d004f63a:	eb00 0042 	add.w	r0, r0, r2, lsl #1
d004f63e:	eea3 6a25 	vfma.f32	s12, s6, s11
d004f642:	eb06 1683 	add.w	r6, r6, r3, lsl #6
d004f646:	9000      	str	r0, [sp, #0]
d004f648:	e7ec      	b.n	d004f624 <fillTriangleDitherBayer+0xb18>
d004f64a:	bf00      	nop
d004f64c:	d005a59c 	.word	0xd005a59c
d004f650:	d005a5a0 	.word	0xd005a5a0
d004f654:	d005a5a4 	.word	0xd005a5a4
d004f658:	33d6bf95 	.word	0x33d6bf95
d004f65c:	00000000 	.word	0x00000000
d004f660:	477fff00 	.word	0x477fff00
d004f664:	43800000 	.word	0x43800000
d004f668:	38d1b717 	.word	0x38d1b717
d004f66c:	d00f4a70 	.word	0xd00f4a70
d004f670:	d0057780 	.word	0xd0057780
d004f674:	d00577a0 	.word	0xd00577a0
d004f678:	eeb0 5a42 	vmov.f32	s10, s4
d004f67c:	fec6 6a8d 	vmaxnm.f32	s13, s13, s26
d004f680:	fec6 6ace 	vminnm.f32	s13, s13, s28
d004f684:	9b02      	ldr	r3, [sp, #8]
d004f686:	eea6 5a8f 	vfma.f32	s10, s13, s30
d004f68a:	eefd 6ac5 	vcvt.s32.f32	s13, s10
d004f68e:	2b00      	cmp	r3, #0
d004f690:	d051      	beq.n	d004f736 <fillTriangleDitherBayer+0xc2a>
d004f692:	ee16 3a90 	vmov	r3, s13
d004f696:	3380      	adds	r3, #128	; 0x80
d004f698:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f69c:	f1be 0f00 	cmp.w	lr, #0
d004f6a0:	d1bb      	bne.n	d004f61a <fillTriangleDitherBayer+0xb0e>
d004f6a2:	0090      	lsls	r0, r2, #2
d004f6a4:	9003      	str	r0, [sp, #12]
d004f6a6:	9800      	ldr	r0, [sp, #0]
d004f6a8:	1e85      	subs	r5, r0, #2
d004f6aa:	2000      	movs	r0, #0
d004f6ac:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d004f6b0:	eb00 0480 	add.w	r4, r0, r0, lsl #2
d004f6b4:	3001      	adds	r0, #1
d004f6b6:	429f      	cmp	r7, r3
d004f6b8:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004f6bc:	d902      	bls.n	d004f6c4 <fillTriangleDitherBayer+0xbb8>
d004f6be:	802b      	strh	r3, [r5, #0]
d004f6c0:	f806 b004 	strb.w	fp, [r6, r4]
d004f6c4:	4282      	cmp	r2, r0
d004f6c6:	dcf1      	bgt.n	d004f6ac <fillTriangleDitherBayer+0xba0>
d004f6c8:	e796      	b.n	d004f5f8 <fillTriangleDitherBayer+0xaec>
d004f6ca:	eeb0 5a66 	vmov.f32	s10, s13
d004f6ce:	e74c      	b.n	d004f56a <fillTriangleDitherBayer+0xa5e>
d004f6d0:	f001 0003 	and.w	r0, r1, #3
d004f6d4:	2d00      	cmp	r5, #0
d004f6d6:	d073      	beq.n	d004f7c0 <fillTriangleDitherBayer+0xcb4>
d004f6d8:	9c00      	ldr	r4, [sp, #0]
d004f6da:	ee16 3a90 	vmov	r3, s13
d004f6de:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
d004f6e2:	f1a4 0c02 	sub.w	ip, r4, #2
d004f6e6:	910e      	str	r1, [sp, #56]	; 0x38
d004f6e8:	3380      	adds	r3, #128	; 0x80
d004f6ea:	9907      	ldr	r1, [sp, #28]
d004f6ec:	9c02      	ldr	r4, [sp, #8]
d004f6ee:	f8dd e010 	ldr.w	lr, [sp, #16]
d004f6f2:	9108      	str	r1, [sp, #32]
d004f6f4:	f3c3 280f 	ubfx	r8, r3, #8, #16
d004f6f8:	f83c af02 	ldrh.w	sl, [ip, #2]!
d004f6fc:	eb04 0784 	add.w	r7, r4, r4, lsl #2
d004f700:	f100 0901 	add.w	r9, r0, #1
d004f704:	45c2      	cmp	sl, r8
d004f706:	442b      	add	r3, r5
d004f708:	ea4f 1787 	mov.w	r7, r7, lsl #6
d004f70c:	f104 0401 	add.w	r4, r4, #1
d004f710:	d909      	bls.n	d004f726 <fillTriangleDitherBayer+0xc1a>
d004f712:	9906      	ldr	r1, [sp, #24]
d004f714:	f8ac 8000 	strh.w	r8, [ip]
d004f718:	5c08      	ldrb	r0, [r1, r0]
d004f71a:	9908      	ldr	r1, [sp, #32]
d004f71c:	4288      	cmp	r0, r1
d004f71e:	bfac      	ite	ge
d004f720:	4658      	movge	r0, fp
d004f722:	4670      	movlt	r0, lr
d004f724:	55f0      	strb	r0, [r6, r7]
d004f726:	42a2      	cmp	r2, r4
d004f728:	f009 0003 	and.w	r0, r9, #3
d004f72c:	dce2      	bgt.n	d004f6f4 <fillTriangleDitherBayer+0xbe8>
d004f72e:	f8dd e034 	ldr.w	lr, [sp, #52]	; 0x34
d004f732:	990e      	ldr	r1, [sp, #56]	; 0x38
d004f734:	e760      	b.n	d004f5f8 <fillTriangleDitherBayer+0xaec>
d004f736:	ee16 3a90 	vmov	r3, s13
d004f73a:	f001 0003 	and.w	r0, r1, #3
d004f73e:	3380      	adds	r3, #128	; 0x80
d004f740:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f744:	f1be 0f00 	cmp.w	lr, #0
d004f748:	f47f af67 	bne.w	d004f61a <fillTriangleDitherBayer+0xb0e>
d004f74c:	0094      	lsls	r4, r2, #2
d004f74e:	9403      	str	r4, [sp, #12]
d004f750:	9c00      	ldr	r4, [sp, #0]
d004f752:	9108      	str	r1, [sp, #32]
d004f754:	1ea7      	subs	r7, r4, #2
d004f756:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004f75a:	2400      	movs	r4, #0
d004f75c:	f8dd a018 	ldr.w	sl, [sp, #24]
d004f760:	9907      	ldr	r1, [sp, #28]
d004f762:	f837 8f02 	ldrh.w	r8, [r7, #2]!
d004f766:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004f76a:	f100 0c01 	add.w	ip, r0, #1
d004f76e:	3401      	adds	r4, #1
d004f770:	4598      	cmp	r8, r3
d004f772:	ea4f 1585 	mov.w	r5, r5, lsl #6
d004f776:	d907      	bls.n	d004f788 <fillTriangleDitherBayer+0xc7c>
d004f778:	803b      	strh	r3, [r7, #0]
d004f77a:	f81a 0000 	ldrb.w	r0, [sl, r0]
d004f77e:	4288      	cmp	r0, r1
d004f780:	bfac      	ite	ge
d004f782:	4658      	movge	r0, fp
d004f784:	4648      	movlt	r0, r9
d004f786:	5570      	strb	r0, [r6, r5]
d004f788:	42a2      	cmp	r2, r4
d004f78a:	f00c 0003 	and.w	r0, ip, #3
d004f78e:	dce8      	bgt.n	d004f762 <fillTriangleDitherBayer+0xc56>
d004f790:	9908      	ldr	r1, [sp, #32]
d004f792:	e731      	b.n	d004f5f8 <fillTriangleDitherBayer+0xaec>
d004f794:	f04f 0b10 	mov.w	fp, #16
d004f798:	2310      	movs	r3, #16
d004f79a:	9304      	str	r3, [sp, #16]
d004f79c:	f7ff ba1c 	b.w	d004ebd8 <fillTriangleDitherBayer+0xcc>
d004f7a0:	eeb0 3a4d 	vmov.f32	s6, s26
d004f7a4:	eeb0 4a4d 	vmov.f32	s8, s26
d004f7a8:	e695      	b.n	d004f4d6 <fillTriangleDitherBayer+0x9ca>
d004f7aa:	eeb0 2a49 	vmov.f32	s4, s18
d004f7ae:	eeb0 3a49 	vmov.f32	s6, s18
d004f7b2:	e454      	b.n	d004f05e <fillTriangleDitherBayer+0x552>
d004f7b4:	ee16 7a10 	vmov	r7, s12
d004f7b8:	3780      	adds	r7, #128	; 0x80
d004f7ba:	f3c7 270f 	ubfx	r7, r7, #8, #16
d004f7be:	e51e      	b.n	d004f1fe <fillTriangleDitherBayer+0x6f2>
d004f7c0:	ee16 3a90 	vmov	r3, s13
d004f7c4:	3380      	adds	r3, #128	; 0x80
d004f7c6:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f7ca:	e7c1      	b.n	d004f750 <fillTriangleDitherBayer+0xc44>
d004f7cc:	ee16 3a90 	vmov	r3, s13
d004f7d0:	3380      	adds	r3, #128	; 0x80
d004f7d2:	f3c3 230f 	ubfx	r3, r3, #8, #16
d004f7d6:	e766      	b.n	d004f6a6 <fillTriangleDitherBayer+0xb9a>
d004f7d8:	ee16 2a10 	vmov	r2, s12
d004f7dc:	3280      	adds	r2, #128	; 0x80
d004f7de:	f3c2 220f 	ubfx	r2, r2, #8, #16
d004f7e2:	e562      	b.n	d004f2aa <fillTriangleDitherBayer+0x79e>

d004f7e4 <fillTriangleDitherBayerT>:
d004f7e4:	eddf 7aca 	vldr	s15, [pc, #808]	; d004fb10 <fillTriangleDitherBayerT+0x32c>
d004f7e8:	eef4 0ae7 	vcmpe.f32	s1, s15
d004f7ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004f7f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f7f4:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004f7f8:	ed2d 8b10 	vpush	{d8-d15}
d004f7fc:	b099      	sub	sp, #100	; 0x64
d004f7fe:	9205      	str	r2, [sp, #20]
d004f800:	bf94      	ite	ls
d004f802:	2201      	movls	r2, #1
d004f804:	2200      	movhi	r2, #0
d004f806:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f80a:	9002      	str	r0, [sp, #8]
d004f80c:	9104      	str	r1, [sp, #16]
d004f80e:	bf98      	it	ls
d004f810:	f042 0201 	orrls.w	r2, r2, #1
d004f814:	9306      	str	r3, [sp, #24]
d004f816:	f8bd 40d0 	ldrh.w	r4, [sp, #208]	; 0xd0
d004f81a:	f8bd 00d4 	ldrh.w	r0, [sp, #212]	; 0xd4
d004f81e:	f8bd 10d8 	ldrh.w	r1, [sp, #216]	; 0xd8
d004f822:	f89d 30dc 	ldrb.w	r3, [sp, #220]	; 0xdc
d004f826:	f89d 50e0 	ldrb.w	r5, [sp, #224]	; 0xe0
d004f82a:	2a00      	cmp	r2, #0
d004f82c:	f040 81d7 	bne.w	d004fbde <fillTriangleDitherBayerT+0x3fa>
d004f830:	eeb4 0a67 	vcmp.f32	s0, s15
d004f834:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f838:	f240 81d1 	bls.w	d004fbde <fillTriangleDitherBayerT+0x3fa>
d004f83c:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004f840:	eddf 6ab4 	vldr	s13, [pc, #720]	; d004fb14 <fillTriangleDitherBayerT+0x330>
d004f844:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d004f848:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d004f84c:	ee06 4a90 	vmov	s13, r4
d004f850:	ee87 8a00 	vdiv.f32	s16, s14, s0
d004f854:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d004f858:	ee87 0a20 	vdiv.f32	s0, s14, s1
d004f85c:	ee87 3a01 	vdiv.f32	s6, s14, s2
d004f860:	eebd 7ae7 	vcvt.s32.f32	s14, s15
d004f864:	eeb8 5a66 	vcvt.f32.u32	s10, s13
d004f868:	ee17 2a10 	vmov	r2, s14
d004f86c:	ee07 0a10 	vmov	s14, r0
d004f870:	ee25 5a08 	vmul.f32	s10, s10, s16
d004f874:	eeb8 4a47 	vcvt.f32.u32	s8, s14
d004f878:	ee07 1a10 	vmov	s14, r1
d004f87c:	1c51      	adds	r1, r2, #1
d004f87e:	eef8 6a47 	vcvt.f32.u32	s13, s14
d004f882:	2905      	cmp	r1, #5
d004f884:	ee24 4a00 	vmul.f32	s8, s8, s0
d004f888:	bfa8      	it	ge
d004f88a:	2105      	movge	r1, #5
d004f88c:	2a04      	cmp	r2, #4
d004f88e:	ee66 6a83 	vmul.f32	s13, s13, s6
d004f892:	f300 853c 	bgt.w	d005030e <fillTriangleDitherBayerT+0xb2a>
d004f896:	f003 030f 	and.w	r3, r3, #15
d004f89a:	2a03      	cmp	r2, #3
d004f89c:	f103 0320 	add.w	r3, r3, #32
d004f8a0:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004f8a4:	b2c0      	uxtb	r0, r0
d004f8a6:	9001      	str	r0, [sp, #4]
d004f8a8:	f300 8533 	bgt.w	d0050312 <fillTriangleDitherBayerT+0xb2e>
d004f8ac:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004f8b0:	b2db      	uxtb	r3, r3
d004f8b2:	9303      	str	r3, [sp, #12]
d004f8b4:	ed9d 7a04 	vldr	s14, [sp, #16]
d004f8b8:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004f8bc:	ed9d 7a06 	vldr	s14, [sp, #24]
d004f8c0:	eef8 1ac7 	vcvt.f32.s32	s3, s14
d004f8c4:	ed9d 7a02 	vldr	s14, [sp, #8]
d004f8c8:	eef8 4ac7 	vcvt.f32.s32	s9, s14
d004f8cc:	ed9d 7a05 	vldr	s14, [sp, #20]
d004f8d0:	eef4 3ae1 	vcmpe.f32	s7, s3
d004f8d4:	eeb8 2ac7 	vcvt.f32.s32	s4, s14
d004f8d8:	ed9d 7a32 	vldr	s14, [sp, #200]	; 0xc8
d004f8dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f8e0:	eeb8 6ac7 	vcvt.f32.s32	s12, s14
d004f8e4:	ed9d 7a33 	vldr	s14, [sp, #204]	; 0xcc
d004f8e8:	eef8 2ac7 	vcvt.f32.s32	s5, s14
d004f8ec:	f300 817c 	bgt.w	d004fbe8 <fillTriangleDitherBayerT+0x404>
d004f8f0:	eef4 3ae2 	vcmpe.f32	s7, s5
d004f8f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f8f8:	f300 82ae 	bgt.w	d004fe58 <fillTriangleDitherBayerT+0x674>
d004f8fc:	eef4 2ae1 	vcmpe.f32	s5, s3
d004f900:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f904:	d517      	bpl.n	d004f936 <fillTriangleDitherBayerT+0x152>
d004f906:	eef0 0a44 	vmov.f32	s1, s8
d004f90a:	eeb0 1a40 	vmov.f32	s2, s0
d004f90e:	eef0 5a61 	vmov.f32	s11, s3
d004f912:	eeb0 7a42 	vmov.f32	s14, s4
d004f916:	eeb0 4a66 	vmov.f32	s8, s13
d004f91a:	eeb0 0a43 	vmov.f32	s0, s6
d004f91e:	eef0 1a62 	vmov.f32	s3, s5
d004f922:	eeb0 2a46 	vmov.f32	s4, s12
d004f926:	eef0 6a60 	vmov.f32	s13, s1
d004f92a:	eeb0 3a41 	vmov.f32	s6, s2
d004f92e:	eef0 2a65 	vmov.f32	s5, s11
d004f932:	eeb0 6a47 	vmov.f32	s12, s14
d004f936:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004f93a:	ee73 5a87 	vadd.f32	s11, s7, s14
d004f93e:	ee32 7a87 	vadd.f32	s14, s5, s14
d004f942:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004f946:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d004f94a:	ee15 3a90 	vmov	r3, s11
d004f94e:	ee17 1a10 	vmov	r1, s14
d004f952:	428b      	cmp	r3, r1
d004f954:	f000 8143 	beq.w	d004fbde <fillTriangleDitherBayerT+0x3fa>
d004f958:	ee32 7ae3 	vsub.f32	s14, s5, s7
d004f95c:	eddf 5a6c 	vldr	s11, [pc, #432]	; d004fb10 <fillTriangleDitherBayerT+0x32c>
d004f960:	eeb4 7ae5 	vcmpe.f32	s14, s11
d004f964:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f968:	f240 8139 	bls.w	d004fbde <fillTriangleDitherBayerT+0x3fa>
d004f96c:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004f970:	ee71 0ae3 	vsub.f32	s1, s3, s7
d004f974:	ee76 8a64 	vsub.f32	s17, s12, s9
d004f978:	ee8a 1a07 	vdiv.f32	s2, s20, s14
d004f97c:	eef4 0ae5 	vcmpe.f32	s1, s11
d004f980:	ee33 9a48 	vsub.f32	s18, s6, s16
d004f984:	ee76 9ac5 	vsub.f32	s19, s13, s10
d004f988:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f98c:	ee68 8a81 	vmul.f32	s17, s17, s2
d004f990:	ee29 9a01 	vmul.f32	s18, s18, s2
d004f994:	ee69 9a81 	vmul.f32	s19, s19, s2
d004f998:	f300 8145 	bgt.w	d004fc26 <fillTriangleDitherBayerT+0x442>
d004f99c:	ee07 2a10 	vmov	s14, r2
d004f9a0:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004f9a4:	ee32 1ae1 	vsub.f32	s2, s5, s3
d004f9a8:	9901      	ldr	r1, [sp, #4]
d004f9aa:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004f9ae:	122b      	asrs	r3, r5, #8
d004f9b0:	930d      	str	r3, [sp, #52]	; 0x34
d004f9b2:	eeb4 1ae5 	vcmpe.f32	s2, s11
d004f9b6:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004f9ba:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004f9be:	eeb0 7a67 	vmov.f32	s14, s15
d004f9c2:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004f9c6:	ee17 3a10 	vmov	r3, s14
d004f9ca:	f383 0204 	usat	r2, #4, r3
d004f9ce:	9204      	str	r2, [sp, #16]
d004f9d0:	9a03      	ldr	r2, [sp, #12]
d004f9d2:	428a      	cmp	r2, r1
d004f9d4:	bf18      	it	ne
d004f9d6:	2b00      	cmpne	r3, #0
d004f9d8:	bfd4      	ite	le
d004f9da:	2301      	movle	r3, #1
d004f9dc:	2300      	movgt	r3, #0
d004f9de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f9e2:	9305      	str	r3, [sp, #20]
d004f9e4:	f340 80fb 	ble.w	d004fbde <fillTriangleDitherBayerT+0x3fa>
d004f9e8:	ed9f ea4a 	vldr	s28, [pc, #296]	; d004fb14 <fillTriangleDitherBayerT+0x330>
d004f9ec:	eeb0 aa4e 	vmov.f32	s20, s28
d004f9f0:	eeb0 ca4e 	vmov.f32	s24, s28
d004f9f4:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004f9f8:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d004f9fc:	ee36 6a42 	vsub.f32	s12, s12, s4
d004fa00:	ed9f 7a43 	vldr	s14, [pc, #268]	; d004fb10 <fillTriangleDitherBayerT+0x32c>
d004fa04:	ee33 3a40 	vsub.f32	s6, s6, s0
d004fa08:	eec5 7aa7 	vdiv.f32	s15, s11, s15
d004fa0c:	eef4 0ac7 	vcmpe.f32	s1, s14
d004fa10:	ee76 6ac4 	vsub.f32	s13, s13, s8
d004fa14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa18:	ee26 6a27 	vmul.f32	s12, s12, s15
d004fa1c:	ee66 faa7 	vmul.f32	s31, s13, s15
d004fa20:	ed8d 6a12 	vstr	s12, [sp, #72]	; 0x48
d004fa24:	ee23 6a27 	vmul.f32	s12, s6, s15
d004fa28:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d004fa2c:	f300 8139 	bgt.w	d004fca2 <fillTriangleDitherBayerT+0x4be>
d004fa30:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d004fa34:	4a31      	ldr	r2, [pc, #196]	; (d004fafc <fillTriangleDitherBayerT+0x318>)
d004fa36:	4b32      	ldr	r3, [pc, #200]	; (d004fb00 <fillTriangleDitherBayerT+0x31c>)
d004fa38:	6812      	ldr	r2, [r2, #0]
d004fa3a:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d004fa3e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fa42:	681b      	ldr	r3, [r3, #0]
d004fa44:	920e      	str	r2, [sp, #56]	; 0x38
d004fa46:	edcd 7a10 	vstr	s15, [sp, #64]	; 0x40
d004fa4a:	930f      	str	r3, [sp, #60]	; 0x3c
d004fa4c:	eddd 7a10 	vldr	s15, [sp, #64]	; 0x40
d004fa50:	eef4 1ae7 	vcmpe.f32	s3, s15
d004fa54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa58:	dd02      	ble.n	d004fa60 <fillTriangleDitherBayerT+0x27c>
d004fa5a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004fa5c:	3301      	adds	r3, #1
d004fa5e:	930c      	str	r3, [sp, #48]	; 0x30
d004fa60:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004fa64:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004fa68:	eef4 2ac7 	vcmpe.f32	s5, s14
d004fa6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa70:	dc04      	bgt.n	d004fa7c <fillTriangleDitherBayerT+0x298>
d004fa72:	ee17 3a90 	vmov	r3, s15
d004fa76:	3b01      	subs	r3, #1
d004fa78:	ee07 3a90 	vmov	s15, r3
d004fa7c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004fa7e:	ee17 2a90 	vmov	r2, s15
d004fa82:	980e      	ldr	r0, [sp, #56]	; 0x38
d004fa84:	4293      	cmp	r3, r2
d004fa86:	bfa8      	it	ge
d004fa88:	4613      	movge	r3, r2
d004fa8a:	461a      	mov	r2, r3
d004fa8c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004fa8e:	4283      	cmp	r3, r0
d004fa90:	bfb8      	it	lt
d004fa92:	4603      	movlt	r3, r0
d004fa94:	4293      	cmp	r3, r2
d004fa96:	9306      	str	r3, [sp, #24]
d004fa98:	f300 80a1 	bgt.w	d004fbde <fillTriangleDitherBayerT+0x3fa>
d004fa9c:	ee07 3a90 	vmov	s15, r3
d004faa0:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004faa4:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004faa8:	4916      	ldr	r1, [pc, #88]	; (d004fb04 <fillTriangleDitherBayerT+0x320>)
d004faaa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004faae:	ed9d ba12 	vldr	s22, [sp, #72]	; 0x48
d004fab2:	015b      	lsls	r3, r3, #5
d004fab4:	eddd aa11 	vldr	s21, [sp, #68]	; 0x44
d004fab8:	ed9f 1a15 	vldr	s2, [pc, #84]	; d004fb10 <fillTriangleDitherBayerT+0x32c>
d004fabc:	ee77 7a87 	vadd.f32	s15, s15, s14
d004fac0:	930c      	str	r3, [sp, #48]	; 0x30
d004fac2:	1c53      	adds	r3, r2, #1
d004fac4:	eddf 0a10 	vldr	s1, [pc, #64]	; d004fb08 <fillTriangleDitherBayerT+0x324>
d004fac8:	ed9f 6a12 	vldr	s12, [pc, #72]	; d004fb14 <fillTriangleDitherBayerT+0x330>
d004facc:	ee77 3ae3 	vsub.f32	s7, s15, s7
d004fad0:	930a      	str	r3, [sp, #40]	; 0x28
d004fad2:	ee77 1ae1 	vsub.f32	s3, s15, s3
d004fad6:	680b      	ldr	r3, [r1, #0]
d004fad8:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
d004fadc:	eee8 4aa3 	vfma.f32	s9, s17, s7
d004fae0:	930b      	str	r3, [sp, #44]	; 0x2c
d004fae2:	eea9 8a23 	vfma.f32	s16, s18, s7
d004fae6:	eea9 5aa3 	vfma.f32	s10, s19, s7
d004faea:	eddf 3a08 	vldr	s7, [pc, #32]	; d004fb0c <fillTriangleDitherBayerT+0x328>
d004faee:	eeab 2a21 	vfma.f32	s4, s22, s3
d004faf2:	eeaa 0aa1 	vfma.f32	s0, s21, s3
d004faf6:	eea1 4aaf 	vfma.f32	s8, s3, s31
d004fafa:	e04e      	b.n	d004fb9a <fillTriangleDitherBayerT+0x3b6>
d004fafc:	d005a59c 	.word	0xd005a59c
d004fb00:	d005a5a0 	.word	0xd005a5a0
d004fb04:	d005a5a4 	.word	0xd005a5a4
d004fb08:	33d6bf95 	.word	0x33d6bf95
d004fb0c:	477fff00 	.word	0x477fff00
d004fb10:	38d1b717 	.word	0x38d1b717
d004fb14:	00000000 	.word	0x00000000
d004fb18:	eeb0 aa45 	vmov.f32	s20, s10
d004fb1c:	eef0 1a48 	vmov.f32	s3, s16
d004fb20:	eef0 7a64 	vmov.f32	s15, s9
d004fb24:	eef0 2a44 	vmov.f32	s5, s8
d004fb28:	eeb0 3a40 	vmov.f32	s6, s0
d004fb2c:	eeb0 7a42 	vmov.f32	s14, s4
d004fb30:	eefd 6ac7 	vcvt.s32.f32	s13, s14
d004fb34:	f240 13df 	movw	r3, #479	; 0x1df
d004fb38:	ee16 0a90 	vmov	r0, s13
d004fb3c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004fb40:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004fb44:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d004fb48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb4c:	ee16 5a90 	vmov	r5, s13
d004fb50:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004fb54:	bfc8      	it	gt
d004fb56:	3001      	addgt	r0, #1
d004fb58:	eef4 7ae6 	vcmpe.f32	s15, s13
d004fb5c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004fb60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb64:	bfd8      	it	le
d004fb66:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d004fb6a:	429d      	cmp	r5, r3
d004fb6c:	bfa8      	it	ge
d004fb6e:	461d      	movge	r5, r3
d004fb70:	42a8      	cmp	r0, r5
d004fb72:	f340 818a 	ble.w	d004fe8a <fillTriangleDitherBayerT+0x6a6>
d004fb76:	9b06      	ldr	r3, [sp, #24]
d004fb78:	ee74 4aa8 	vadd.f32	s9, s9, s17
d004fb7c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004fb7e:	ee38 8a09 	vadd.f32	s16, s16, s18
d004fb82:	3301      	adds	r3, #1
d004fb84:	ee35 5a29 	vadd.f32	s10, s10, s19
d004fb88:	ee32 2a0b 	vadd.f32	s4, s4, s22
d004fb8c:	4293      	cmp	r3, r2
d004fb8e:	ee30 0a2a 	vadd.f32	s0, s0, s21
d004fb92:	ee34 4a2f 	vadd.f32	s8, s8, s31
d004fb96:	9306      	str	r3, [sp, #24]
d004fb98:	d021      	beq.n	d004fbde <fillTriangleDitherBayerT+0x3fa>
d004fb9a:	eef4 4ac2 	vcmpe.f32	s9, s4
d004fb9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fba2:	dcb9      	bgt.n	d004fb18 <fillTriangleDitherBayerT+0x334>
d004fba4:	eeb0 aa44 	vmov.f32	s20, s8
d004fba8:	eef0 1a40 	vmov.f32	s3, s0
d004fbac:	eef0 7a42 	vmov.f32	s15, s4
d004fbb0:	eef0 2a45 	vmov.f32	s5, s10
d004fbb4:	eeb0 3a48 	vmov.f32	s6, s16
d004fbb8:	eeb0 7a64 	vmov.f32	s14, s9
d004fbbc:	e7b8      	b.n	d004fb30 <fillTriangleDitherBayerT+0x34c>
d004fbbe:	eddd 2a15 	vldr	s5, [sp, #84]	; 0x54
d004fbc2:	ed9d 5a16 	vldr	s10, [sp, #88]	; 0x58
d004fbc6:	ed9d 8a17 	vldr	s16, [sp, #92]	; 0x5c
d004fbca:	ed5f 7a2f 	vldr	s15, [pc, #-188]	; d004fb10 <fillTriangleDitherBayerT+0x32c>
d004fbce:	ed9d 7a0b 	vldr	s14, [sp, #44]	; 0x2c
d004fbd2:	eeb4 7ae7 	vcmpe.f32	s14, s15
d004fbd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fbda:	f73f af37 	bgt.w	d004fa4c <fillTriangleDitherBayerT+0x268>
d004fbde:	b019      	add	sp, #100	; 0x64
d004fbe0:	ecbd 8b10 	vpop	{d8-d15}
d004fbe4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004fbe8:	eef4 1ae2 	vcmpe.f32	s3, s5
d004fbec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fbf0:	f340 8119 	ble.w	d004fe26 <fillTriangleDitherBayerT+0x642>
d004fbf4:	eef0 0a66 	vmov.f32	s1, s13
d004fbf8:	eeb0 1a43 	vmov.f32	s2, s6
d004fbfc:	eef0 5a62 	vmov.f32	s11, s5
d004fc00:	eeb0 7a46 	vmov.f32	s14, s12
d004fc04:	eef0 6a45 	vmov.f32	s13, s10
d004fc08:	eeb0 3a48 	vmov.f32	s6, s16
d004fc0c:	eef0 2a63 	vmov.f32	s5, s7
d004fc10:	eeb0 6a64 	vmov.f32	s12, s9
d004fc14:	eeb0 5a60 	vmov.f32	s10, s1
d004fc18:	eeb0 8a41 	vmov.f32	s16, s2
d004fc1c:	eef0 3a65 	vmov.f32	s7, s11
d004fc20:	eef0 4a47 	vmov.f32	s9, s14
d004fc24:	e687      	b.n	d004f936 <fillTriangleDitherBayerT+0x152>
d004fc26:	ee07 2a10 	vmov	s14, r2
d004fc2a:	ee8a 1a20 	vdiv.f32	s2, s20, s1
d004fc2e:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004fc32:	9901      	ldr	r1, [sp, #4]
d004fc34:	122b      	asrs	r3, r5, #8
d004fc36:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004fc3a:	930d      	str	r3, [sp, #52]	; 0x34
d004fc3c:	ee72 aa64 	vsub.f32	s21, s4, s9
d004fc40:	ee30 aa48 	vsub.f32	s20, s0, s16
d004fc44:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fc48:	ee34 ea45 	vsub.f32	s28, s8, s10
d004fc4c:	eeb0 7a67 	vmov.f32	s14, s15
d004fc50:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004fc54:	ee6a 7a81 	vmul.f32	s15, s21, s2
d004fc58:	ee17 3a10 	vmov	r3, s14
d004fc5c:	ee32 7ae1 	vsub.f32	s14, s5, s3
d004fc60:	ee2e ea01 	vmul.f32	s28, s28, s2
d004fc64:	f383 0204 	usat	r2, #4, r3
d004fc68:	eeb0 ca67 	vmov.f32	s24, s15
d004fc6c:	eeb4 7ae5 	vcmpe.f32	s14, s11
d004fc70:	ed8d 7a0b 	vstr	s14, [sp, #44]	; 0x2c
d004fc74:	9204      	str	r2, [sp, #16]
d004fc76:	ee6a 7a01 	vmul.f32	s15, s20, s2
d004fc7a:	9a03      	ldr	r2, [sp, #12]
d004fc7c:	428a      	cmp	r2, r1
d004fc7e:	bf18      	it	ne
d004fc80:	2b00      	cmpne	r3, #0
d004fc82:	eeb0 aa67 	vmov.f32	s20, s15
d004fc86:	bfd4      	ite	le
d004fc88:	2301      	movle	r3, #1
d004fc8a:	2300      	movgt	r3, #0
d004fc8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fc90:	9305      	str	r3, [sp, #20]
d004fc92:	f73f aeaf 	bgt.w	d004f9f4 <fillTriangleDitherBayerT+0x210>
d004fc96:	ed5f fa61 	vldr	s31, [pc, #-388]	; d004fb14 <fillTriangleDitherBayerT+0x330>
d004fc9a:	edcd fa11 	vstr	s31, [sp, #68]	; 0x44
d004fc9e:	edcd fa12 	vstr	s31, [sp, #72]	; 0x48
d004fca2:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004fca6:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004fcaa:	eeb4 7ae3 	vcmpe.f32	s14, s7
d004fcae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fcb2:	d504      	bpl.n	d004fcbe <fillTriangleDitherBayerT+0x4da>
d004fcb4:	ee17 3a90 	vmov	r3, s15
d004fcb8:	3301      	adds	r3, #1
d004fcba:	ee07 3a90 	vmov	s15, r3
d004fcbe:	eebd 7ae1 	vcvt.s32.f32	s14, s3
d004fcc2:	49de      	ldr	r1, [pc, #888]	; (d005003c <fillTriangleDitherBayerT+0x858>)
d004fcc4:	ee17 0a90 	vmov	r0, s15
d004fcc8:	4add      	ldr	r2, [pc, #884]	; (d0050040 <fillTriangleDitherBayerT+0x85c>)
d004fcca:	6809      	ldr	r1, [r1, #0]
d004fccc:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d004fcd0:	ee17 3a10 	vmov	r3, s14
d004fcd4:	6812      	ldr	r2, [r2, #0]
d004fcd6:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d004fcda:	eef4 1ae6 	vcmpe.f32	s3, s13
d004fcde:	edcd 6a10 	vstr	s13, [sp, #64]	; 0x40
d004fce2:	910e      	str	r1, [sp, #56]	; 0x38
d004fce4:	920f      	str	r2, [sp, #60]	; 0x3c
d004fce6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fcea:	bfd8      	it	le
d004fcec:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004fcf0:	4288      	cmp	r0, r1
d004fcf2:	bfb8      	it	lt
d004fcf4:	4608      	movlt	r0, r1
d004fcf6:	4293      	cmp	r3, r2
d004fcf8:	bfa8      	it	ge
d004fcfa:	4613      	movge	r3, r2
d004fcfc:	9002      	str	r0, [sp, #8]
d004fcfe:	4283      	cmp	r3, r0
d004fd00:	f6ff af63 	blt.w	d004fbca <fillTriangleDitherBayerT+0x3e6>
d004fd04:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fd08:	3301      	adds	r3, #1
d004fd0a:	eef0 aa64 	vmov.f32	s21, s9
d004fd0e:	49cd      	ldr	r1, [pc, #820]	; (d0050044 <fillTriangleDitherBayerT+0x860>)
d004fd10:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d004fd12:	eef0 da48 	vmov.f32	s27, s16
d004fd16:	ee37 7ae3 	vsub.f32	s14, s15, s7
d004fd1a:	eddd 7a02 	vldr	s15, [sp, #8]
d004fd1e:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d004fd22:	930a      	str	r3, [sp, #40]	; 0x28
d004fd24:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fd28:	680b      	ldr	r3, [r1, #0]
d004fd2a:	eef0 ca48 	vmov.f32	s25, s16
d004fd2e:	ed8d 8a17 	vstr	s16, [sp, #92]	; 0x5c
d004fd32:	eeb0 ba64 	vmov.f32	s22, s9
d004fd36:	9313      	str	r3, [sp, #76]	; 0x4c
d004fd38:	ee77 7a87 	vadd.f32	s15, s15, s14
d004fd3c:	0153      	lsls	r3, r2, #5
d004fd3e:	eeb0 7a4c 	vmov.f32	s14, s24
d004fd42:	eddf bac1 	vldr	s23, [pc, #772]	; d0050048 <fillTriangleDitherBayerT+0x864>
d004fd46:	eeb0 da45 	vmov.f32	s26, s10
d004fd4a:	eddf 6ac0 	vldr	s13, [pc, #768]	; d005004c <fillTriangleDitherBayerT+0x868>
d004fd4e:	eee7 aa8c 	vfma.f32	s21, s15, s24
d004fd52:	eddf 5abf 	vldr	s11, [pc, #764]	; d0050050 <fillTriangleDitherBayerT+0x86c>
d004fd56:	eeb0 ca45 	vmov.f32	s24, s10
d004fd5a:	9314      	str	r3, [sp, #80]	; 0x50
d004fd5c:	eea8 baa7 	vfma.f32	s22, s17, s15
d004fd60:	edcd 2a15 	vstr	s5, [sp, #84]	; 0x54
d004fd64:	eee9 da27 	vfma.f32	s27, s18, s15
d004fd68:	ed8d 5a16 	vstr	s10, [sp, #88]	; 0x58
d004fd6c:	eea9 daa7 	vfma.f32	s26, s19, s15
d004fd70:	eee7 ca8a 	vfma.f32	s25, s15, s20
d004fd74:	eea7 ca8e 	vfma.f32	s24, s15, s28
d004fd78:	eeb0 8a47 	vmov.f32	s16, s14
d004fd7c:	e041      	b.n	d004fe02 <fillTriangleDitherBayerT+0x61e>
d004fd7e:	eeb0 1a4d 	vmov.f32	s2, s26
d004fd82:	eef0 2a6d 	vmov.f32	s5, s27
d004fd86:	eef0 7a4b 	vmov.f32	s15, s22
d004fd8a:	eeb0 3a4c 	vmov.f32	s6, s24
d004fd8e:	eeb0 5a6c 	vmov.f32	s10, s25
d004fd92:	eeb0 7a6a 	vmov.f32	s14, s21
d004fd96:	eebd 6ac7 	vcvt.s32.f32	s12, s14
d004fd9a:	f240 13df 	movw	r3, #479	; 0x1df
d004fd9e:	ee16 0a10 	vmov	r0, s12
d004fda2:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004fda6:	eeb4 7ac6 	vcmpe.f32	s14, s12
d004fdaa:	eebd 6ae7 	vcvt.s32.f32	s12, s15
d004fdae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fdb2:	ee16 5a10 	vmov	r5, s12
d004fdb6:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004fdba:	bfc8      	it	gt
d004fdbc:	3001      	addgt	r0, #1
d004fdbe:	eef4 7ac6 	vcmpe.f32	s15, s12
d004fdc2:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004fdc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fdca:	bfd8      	it	le
d004fdcc:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d004fdd0:	429d      	cmp	r5, r3
d004fdd2:	bfa8      	it	ge
d004fdd4:	461d      	movge	r5, r3
d004fdd6:	4285      	cmp	r5, r0
d004fdd8:	f280 817f 	bge.w	d00500da <fillTriangleDitherBayerT+0x8f6>
d004fddc:	9b02      	ldr	r3, [sp, #8]
d004fdde:	ee3b ba28 	vadd.f32	s22, s22, s17
d004fde2:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004fde4:	ee7d da89 	vadd.f32	s27, s27, s18
d004fde8:	3301      	adds	r3, #1
d004fdea:	ee3d da29 	vadd.f32	s26, s26, s19
d004fdee:	ee7a aa88 	vadd.f32	s21, s21, s16
d004fdf2:	4293      	cmp	r3, r2
d004fdf4:	ee7c ca8a 	vadd.f32	s25, s25, s20
d004fdf8:	ee3c ca0e 	vadd.f32	s24, s24, s28
d004fdfc:	9302      	str	r3, [sp, #8]
d004fdfe:	f43f aede 	beq.w	d004fbbe <fillTriangleDitherBayerT+0x3da>
d004fe02:	eeb4 baea 	vcmpe.f32	s22, s21
d004fe06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fe0a:	dcb8      	bgt.n	d004fd7e <fillTriangleDitherBayerT+0x59a>
d004fe0c:	eeb0 1a4c 	vmov.f32	s2, s24
d004fe10:	eef0 2a6c 	vmov.f32	s5, s25
d004fe14:	eef0 7a6a 	vmov.f32	s15, s21
d004fe18:	eeb0 3a4d 	vmov.f32	s6, s26
d004fe1c:	eeb0 5a6d 	vmov.f32	s10, s27
d004fe20:	eeb0 7a4b 	vmov.f32	s14, s22
d004fe24:	e7b7      	b.n	d004fd96 <fillTriangleDitherBayerT+0x5b2>
d004fe26:	eef0 0a45 	vmov.f32	s1, s10
d004fe2a:	eeb0 1a48 	vmov.f32	s2, s16
d004fe2e:	eef0 5a63 	vmov.f32	s11, s7
d004fe32:	eeb0 7a64 	vmov.f32	s14, s9
d004fe36:	eeb0 5a44 	vmov.f32	s10, s8
d004fe3a:	eeb0 8a40 	vmov.f32	s16, s0
d004fe3e:	eef0 3a61 	vmov.f32	s7, s3
d004fe42:	eef0 4a42 	vmov.f32	s9, s4
d004fe46:	eeb0 4a60 	vmov.f32	s8, s1
d004fe4a:	eeb0 0a41 	vmov.f32	s0, s2
d004fe4e:	eef0 1a65 	vmov.f32	s3, s11
d004fe52:	eeb0 2a47 	vmov.f32	s4, s14
d004fe56:	e551      	b.n	d004f8fc <fillTriangleDitherBayerT+0x118>
d004fe58:	eef0 0a45 	vmov.f32	s1, s10
d004fe5c:	eeb0 1a48 	vmov.f32	s2, s16
d004fe60:	eef0 5a63 	vmov.f32	s11, s7
d004fe64:	eeb0 7a64 	vmov.f32	s14, s9
d004fe68:	eeb0 5a66 	vmov.f32	s10, s13
d004fe6c:	eeb0 8a43 	vmov.f32	s16, s6
d004fe70:	eef0 3a62 	vmov.f32	s7, s5
d004fe74:	eef0 4a46 	vmov.f32	s9, s12
d004fe78:	eef0 6a60 	vmov.f32	s13, s1
d004fe7c:	eeb0 3a41 	vmov.f32	s6, s2
d004fe80:	eef0 2a65 	vmov.f32	s5, s11
d004fe84:	eeb0 6a47 	vmov.f32	s12, s14
d004fe88:	e538      	b.n	d004f8fc <fillTriangleDitherBayerT+0x118>
d004fe8a:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fe8e:	eef4 7ac1 	vcmpe.f32	s15, s2
d004fe92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fe96:	f340 8240 	ble.w	d005031a <fillTriangleDitherBayerT+0xb36>
d004fe9a:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004fe9e:	ee71 1ac3 	vsub.f32	s3, s3, s6
d004fea2:	ee3a aa62 	vsub.f32	s20, s20, s5
d004fea6:	eec5 6aa7 	vdiv.f32	s13, s11, s15
d004feaa:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004feae:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004feb2:	ee07 0a10 	vmov	s14, r0
d004feb6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004feba:	ee37 7a27 	vadd.f32	s14, s14, s15
d004febe:	ee61 1aa6 	vmul.f32	s3, s3, s13
d004fec2:	ee2a aa26 	vmul.f32	s20, s20, s13
d004fec6:	eea7 3a21 	vfma.f32	s6, s14, s3
d004feca:	eee7 2a0a 	vfma.f32	s5, s14, s20
d004fece:	9c06      	ldr	r4, [sp, #24]
d004fed0:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004fed4:	4a5f      	ldr	r2, [pc, #380]	; (d0050054 <fillTriangleDitherBayerT+0x870>)
d004fed6:	ebc4 1304 	rsb	r3, r4, r4, lsl #4
d004feda:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d004fedc:	6817      	ldr	r7, [r2, #0]
d004fede:	eb00 0280 	add.w	r2, r0, r0, lsl #2
d004fee2:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d004fee6:	495c      	ldr	r1, [pc, #368]	; (d0050058 <fillTriangleDitherBayerT+0x874>)
d004fee8:	eb04 1282 	add.w	r2, r4, r2, lsl #6
d004feec:	f004 0e03 	and.w	lr, r4, #3
d004fef0:	4403      	add	r3, r0
d004fef2:	9502      	str	r5, [sp, #8]
d004fef4:	4417      	add	r7, r2
d004fef6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d004fef8:	eb01 0e8e 	add.w	lr, r1, lr, lsl #2
d004fefc:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d004ff00:	461d      	mov	r5, r3
d004ff02:	9b02      	ldr	r3, [sp, #8]
d004ff04:	eeb4 3ae0 	vcmpe.f32	s6, s1
d004ff08:	eba3 0c00 	sub.w	ip, r3, r0
d004ff0c:	f10c 0301 	add.w	r3, ip, #1
d004ff10:	2b30      	cmp	r3, #48	; 0x30
d004ff12:	bfa8      	it	ge
d004ff14:	2330      	movge	r3, #48	; 0x30
d004ff16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ff1a:	d969      	bls.n	d004fff0 <fillTriangleDitherBayerT+0x80c>
d004ff1c:	f1bc 0f00 	cmp.w	ip, #0
d004ff20:	ee82 7a83 	vdiv.f32	s14, s5, s6
d004ff24:	dd74      	ble.n	d0050010 <fillTriangleDitherBayerT+0x82c>
d004ff26:	1e5a      	subs	r2, r3, #1
d004ff28:	ee07 2a90 	vmov	s15, r2
d004ff2c:	eef0 ba43 	vmov.f32	s23, s6
d004ff30:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ff34:	eee7 baa1 	vfma.f32	s23, s15, s3
d004ff38:	eef4 bae0 	vcmpe.f32	s23, s1
d004ff3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ff40:	dd71      	ble.n	d0050026 <fillTriangleDitherBayerT+0x842>
d004ff42:	eeb0 ca62 	vmov.f32	s24, s5
d004ff46:	4a45      	ldr	r2, [pc, #276]	; (d005005c <fillTriangleDitherBayerT+0x878>)
d004ff48:	009e      	lsls	r6, r3, #2
d004ff4a:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d004ff4e:	eea7 ca8a 	vfma.f32	s24, s15, s20
d004ff52:	edd2 7a00 	vldr	s15, [r2]
d004ff56:	9a05      	ldr	r2, [sp, #20]
d004ff58:	eecc 6a2b 	vdiv.f32	s13, s24, s23
d004ff5c:	ee76 6ac7 	vsub.f32	s13, s13, s14
d004ff60:	ee66 6aa7 	vmul.f32	s13, s13, s15
d004ff64:	2a00      	cmp	r2, #0
d004ff66:	f000 81c9 	beq.w	d00502fc <fillTriangleDitherBayerT+0xb18>
d004ff6a:	f000 0403 	and.w	r4, r0, #3
d004ff6e:	f1a5 0902 	sub.w	r9, r5, #2
d004ff72:	2100      	movs	r1, #0
d004ff74:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d004ff78:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004ff7c:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004ff80:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d004ff84:	ee37 7a26 	vadd.f32	s14, s14, s13
d004ff88:	f104 0a01 	add.w	sl, r4, #1
d004ff8c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004ff90:	ee17 2a90 	vmov	r2, s15
d004ff94:	b292      	uxth	r2, r2
d004ff96:	4593      	cmp	fp, r2
d004ff98:	d90b      	bls.n	d004ffb2 <fillTriangleDitherBayerT+0x7ce>
d004ff9a:	f81e b004 	ldrb.w	fp, [lr, r4]
d004ff9e:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d004ffa2:	45c3      	cmp	fp, r8
d004ffa4:	ea4f 1484 	mov.w	r4, r4, lsl #6
d004ffa8:	db03      	blt.n	d004ffb2 <fillTriangleDitherBayerT+0x7ce>
d004ffaa:	f8a9 2000 	strh.w	r2, [r9]
d004ffae:	9a01      	ldr	r2, [sp, #4]
d004ffb0:	553a      	strb	r2, [r7, r4]
d004ffb2:	3101      	adds	r1, #1
d004ffb4:	f00a 0403 	and.w	r4, sl, #3
d004ffb8:	428b      	cmp	r3, r1
d004ffba:	dcdb      	bgt.n	d004ff74 <fillTriangleDitherBayerT+0x790>
d004ffbc:	f1bc 0f00 	cmp.w	ip, #0
d004ffc0:	441e      	add	r6, r3
d004ffc2:	ea4f 0243 	mov.w	r2, r3, lsl #1
d004ffc6:	ea4f 1686 	mov.w	r6, r6, lsl #6
d004ffca:	bfbc      	itt	lt
d004ffcc:	2202      	movlt	r2, #2
d004ffce:	f44f 76a0 	movlt.w	r6, #320	; 0x140
d004ffd2:	4415      	add	r5, r2
d004ffd4:	4437      	add	r7, r6
d004ffd6:	ee07 3a90 	vmov	s15, r3
d004ffda:	4418      	add	r0, r3
d004ffdc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ffe0:	eea7 3aa1 	vfma.f32	s6, s15, s3
d004ffe4:	eee7 2a8a 	vfma.f32	s5, s15, s20
d004ffe8:	9b02      	ldr	r3, [sp, #8]
d004ffea:	4283      	cmp	r3, r0
d004ffec:	da89      	bge.n	d004ff02 <fillTriangleDitherBayerT+0x71e>
d004ffee:	e5c2      	b.n	d004fb76 <fillTriangleDitherBayerT+0x392>
d004fff0:	ee07 3a90 	vmov	s15, r3
d004fff4:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004fff8:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d004fffc:	4418      	add	r0, r3
d004fffe:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050002:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0050006:	eea7 3aa1 	vfma.f32	s6, s15, s3
d005000a:	eee7 2a8a 	vfma.f32	s5, s15, s20
d005000e:	e7eb      	b.n	d004ffe8 <fillTriangleDitherBayerT+0x804>
d0050010:	9a05      	ldr	r2, [sp, #20]
d0050012:	f000 0403 	and.w	r4, r0, #3
d0050016:	b32a      	cbz	r2, d0050064 <fillTriangleDitherBayerT+0x880>
d0050018:	f1bc 0f00 	cmp.w	ip, #0
d005001c:	dbdb      	blt.n	d004ffd6 <fillTriangleDitherBayerT+0x7f2>
d005001e:	eef0 6a46 	vmov.f32	s13, s12
d0050022:	009e      	lsls	r6, r3, #2
d0050024:	e7a3      	b.n	d004ff6e <fillTriangleDitherBayerT+0x78a>
d0050026:	9a05      	ldr	r2, [sp, #20]
d0050028:	2a00      	cmp	r2, #0
d005002a:	f000 816a 	beq.w	d0050302 <fillTriangleDitherBayerT+0xb1e>
d005002e:	eef0 6a46 	vmov.f32	s13, s12
d0050032:	f000 0403 	and.w	r4, r0, #3
d0050036:	009e      	lsls	r6, r3, #2
d0050038:	e799      	b.n	d004ff6e <fillTriangleDitherBayerT+0x78a>
d005003a:	bf00      	nop
d005003c:	d005a59c 	.word	0xd005a59c
d0050040:	d005a5a0 	.word	0xd005a5a0
d0050044:	d005a5a4 	.word	0xd005a5a4
d0050048:	33d6bf95 	.word	0x33d6bf95
d005004c:	00000000 	.word	0x00000000
d0050050:	477fff00 	.word	0x477fff00
d0050054:	d00f4a70 	.word	0xd00f4a70
d0050058:	d0057780 	.word	0xd0057780
d005005c:	d00577a0 	.word	0xd00577a0
d0050060:	38d1b717 	.word	0x38d1b717
d0050064:	f1bc 0f00 	cmp.w	ip, #0
d0050068:	dbb5      	blt.n	d004ffd6 <fillTriangleDitherBayerT+0x7f2>
d005006a:	eef0 6a46 	vmov.f32	s13, s12
d005006e:	009e      	lsls	r6, r3, #2
d0050070:	f1a5 0902 	sub.w	r9, r5, #2
d0050074:	2100      	movs	r1, #0
d0050076:	9507      	str	r5, [sp, #28]
d0050078:	9008      	str	r0, [sp, #32]
d005007a:	9609      	str	r6, [sp, #36]	; 0x24
d005007c:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0050080:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0050084:	ee77 7aa5 	vadd.f32	s15, s15, s11
d0050088:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d005008c:	ee37 7a26 	vadd.f32	s14, s14, s13
d0050090:	f104 0a01 	add.w	sl, r4, #1
d0050094:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0050098:	ee17 2a90 	vmov	r2, s15
d005009c:	b292      	uxth	r2, r2
d005009e:	4593      	cmp	fp, r2
d00500a0:	d912      	bls.n	d00500c8 <fillTriangleDitherBayerT+0x8e4>
d00500a2:	f81e b004 	ldrb.w	fp, [lr, r4]
d00500a6:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00500aa:	45c3      	cmp	fp, r8
d00500ac:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00500b0:	db0a      	blt.n	d00500c8 <fillTriangleDitherBayerT+0x8e4>
d00500b2:	9803      	ldr	r0, [sp, #12]
d00500b4:	f8a9 2000 	strh.w	r2, [r9]
d00500b8:	4605      	mov	r5, r0
d00500ba:	9801      	ldr	r0, [sp, #4]
d00500bc:	4606      	mov	r6, r0
d00500be:	9804      	ldr	r0, [sp, #16]
d00500c0:	4583      	cmp	fp, r0
d00500c2:	bfa8      	it	ge
d00500c4:	4635      	movge	r5, r6
d00500c6:	553d      	strb	r5, [r7, r4]
d00500c8:	3101      	adds	r1, #1
d00500ca:	f00a 0403 	and.w	r4, sl, #3
d00500ce:	428b      	cmp	r3, r1
d00500d0:	dcd4      	bgt.n	d005007c <fillTriangleDitherBayerT+0x898>
d00500d2:	9d07      	ldr	r5, [sp, #28]
d00500d4:	9808      	ldr	r0, [sp, #32]
d00500d6:	9e09      	ldr	r6, [sp, #36]	; 0x24
d00500d8:	e770      	b.n	d004ffbc <fillTriangleDitherBayerT+0x7d8>
d00500da:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00500de:	ed1f 6a20 	vldr	s12, [pc, #-128]	; d0050060 <fillTriangleDitherBayerT+0x87c>
d00500e2:	eef4 7ac6 	vcmpe.f32	s15, s12
d00500e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00500ea:	f340 811b 	ble.w	d0050324 <fillTriangleDitherBayerT+0xb40>
d00500ee:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00500f2:	ee72 2ac5 	vsub.f32	s5, s5, s10
d00500f6:	ee31 1a43 	vsub.f32	s2, s2, s6
d00500fa:	ee80 6aa7 	vdiv.f32	s12, s1, s15
d00500fe:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0050102:	ee37 7ac7 	vsub.f32	s14, s15, s14
d0050106:	ee07 0a90 	vmov	s15, r0
d005010a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005010e:	ee37 7a87 	vadd.f32	s14, s15, s14
d0050112:	ee62 2a86 	vmul.f32	s5, s5, s12
d0050116:	ee21 1a06 	vmul.f32	s2, s2, s12
d005011a:	eea7 5a22 	vfma.f32	s10, s14, s5
d005011e:	eea7 3a01 	vfma.f32	s6, s14, s2
d0050122:	9902      	ldr	r1, [sp, #8]
d0050124:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0050128:	4b81      	ldr	r3, [pc, #516]	; (d0050330 <fillTriangleDitherBayerT+0xb4c>)
d005012a:	ebc1 1e01 	rsb	lr, r1, r1, lsl #4
d005012e:	9c14      	ldr	r4, [sp, #80]	; 0x50
d0050130:	681f      	ldr	r7, [r3, #0]
d0050132:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0050136:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d005013a:	4a7e      	ldr	r2, [pc, #504]	; (d0050334 <fillTriangleDitherBayerT+0xb50>)
d005013c:	eb01 1383 	add.w	r3, r1, r3, lsl #6
d0050140:	f001 0803 	and.w	r8, r1, #3
d0050144:	4486      	add	lr, r0
d0050146:	f8dd c034 	ldr.w	ip, [sp, #52]	; 0x34
d005014a:	441f      	add	r7, r3
d005014c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d005014e:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d0050152:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d0050156:	1a2e      	subs	r6, r5, r0
d0050158:	eeb4 5aeb 	vcmpe.f32	s10, s23
d005015c:	1c72      	adds	r2, r6, #1
d005015e:	2a30      	cmp	r2, #48	; 0x30
d0050160:	bfa8      	it	ge
d0050162:	2230      	movge	r2, #48	; 0x30
d0050164:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050168:	d969      	bls.n	d005023e <fillTriangleDitherBayerT+0xa5a>
d005016a:	2e00      	cmp	r6, #0
d005016c:	ee83 7a05 	vdiv.f32	s14, s6, s10
d0050170:	dd75      	ble.n	d005025e <fillTriangleDitherBayerT+0xa7a>
d0050172:	1e53      	subs	r3, r2, #1
d0050174:	ee07 3a90 	vmov	s15, r3
d0050178:	eef0 ea45 	vmov.f32	s29, s10
d005017c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050180:	eee7 eaa2 	vfma.f32	s29, s15, s5
d0050184:	eef4 eaeb 	vcmpe.f32	s29, s23
d0050188:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005018c:	f340 80aa 	ble.w	d00502e4 <fillTriangleDitherBayerT+0xb00>
d0050190:	eeb0 fa43 	vmov.f32	s30, s6
d0050194:	4b68      	ldr	r3, [pc, #416]	; (d0050338 <fillTriangleDitherBayerT+0xb54>)
d0050196:	0091      	lsls	r1, r2, #2
d0050198:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d005019c:	eea7 fa81 	vfma.f32	s30, s15, s2
d00501a0:	9106      	str	r1, [sp, #24]
d00501a2:	edd3 7a00 	vldr	s15, [r3]
d00501a6:	eecf 0a2e 	vdiv.f32	s1, s30, s29
d00501aa:	ee70 0ac7 	vsub.f32	s1, s1, s14
d00501ae:	ee60 0aa7 	vmul.f32	s1, s1, s15
d00501b2:	9b05      	ldr	r3, [sp, #20]
d00501b4:	2b00      	cmp	r3, #0
d00501b6:	d05e      	beq.n	d0050276 <fillTriangleDitherBayerT+0xa92>
d00501b8:	f000 0403 	and.w	r4, r0, #3
d00501bc:	f1ae 0902 	sub.w	r9, lr, #2
d00501c0:	2100      	movs	r1, #0
d00501c2:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d00501c6:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d00501ca:	ee77 7a86 	vadd.f32	s15, s15, s12
d00501ce:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00501d2:	ee37 7a20 	vadd.f32	s14, s14, s1
d00501d6:	f104 0a01 	add.w	sl, r4, #1
d00501da:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00501de:	ee17 3a90 	vmov	r3, s15
d00501e2:	b29b      	uxth	r3, r3
d00501e4:	459b      	cmp	fp, r3
d00501e6:	d90b      	bls.n	d0050200 <fillTriangleDitherBayerT+0xa1c>
d00501e8:	f818 b004 	ldrb.w	fp, [r8, r4]
d00501ec:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00501f0:	45e3      	cmp	fp, ip
d00501f2:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00501f6:	db03      	blt.n	d0050200 <fillTriangleDitherBayerT+0xa1c>
d00501f8:	f8a9 3000 	strh.w	r3, [r9]
d00501fc:	9b01      	ldr	r3, [sp, #4]
d00501fe:	553b      	strb	r3, [r7, r4]
d0050200:	3101      	adds	r1, #1
d0050202:	f00a 0403 	and.w	r4, sl, #3
d0050206:	428a      	cmp	r2, r1
d0050208:	dcdb      	bgt.n	d00501c2 <fillTriangleDitherBayerT+0x9de>
d005020a:	9b06      	ldr	r3, [sp, #24]
d005020c:	2e00      	cmp	r6, #0
d005020e:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0050212:	4413      	add	r3, r2
d0050214:	bfb8      	it	lt
d0050216:	2102      	movlt	r1, #2
d0050218:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005021c:	bfb8      	it	lt
d005021e:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0050222:	448e      	add	lr, r1
d0050224:	441f      	add	r7, r3
d0050226:	ee07 2a90 	vmov	s15, r2
d005022a:	4410      	add	r0, r2
d005022c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050230:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0050234:	eea7 3a81 	vfma.f32	s6, s15, s2
d0050238:	4285      	cmp	r5, r0
d005023a:	da8c      	bge.n	d0050156 <fillTriangleDitherBayerT+0x972>
d005023c:	e5ce      	b.n	d004fddc <fillTriangleDitherBayerT+0x5f8>
d005023e:	ee07 2a90 	vmov	s15, r2
d0050242:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0050246:	eb0e 0e42 	add.w	lr, lr, r2, lsl #1
d005024a:	4410      	add	r0, r2
d005024c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050250:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0050254:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0050258:	eea7 3a81 	vfma.f32	s6, s15, s2
d005025c:	e7ec      	b.n	d0050238 <fillTriangleDitherBayerT+0xa54>
d005025e:	9b05      	ldr	r3, [sp, #20]
d0050260:	f000 0403 	and.w	r4, r0, #3
d0050264:	2b00      	cmp	r3, #0
d0050266:	d042      	beq.n	d00502ee <fillTriangleDitherBayerT+0xb0a>
d0050268:	2e00      	cmp	r6, #0
d005026a:	d1dc      	bne.n	d0050226 <fillTriangleDitherBayerT+0xa42>
d005026c:	0093      	lsls	r3, r2, #2
d005026e:	eef0 0a66 	vmov.f32	s1, s13
d0050272:	9306      	str	r3, [sp, #24]
d0050274:	e7a2      	b.n	d00501bc <fillTriangleDitherBayerT+0x9d8>
d0050276:	f000 0403 	and.w	r4, r0, #3
d005027a:	f1ae 0902 	sub.w	r9, lr, #2
d005027e:	2100      	movs	r1, #0
d0050280:	9507      	str	r5, [sp, #28]
d0050282:	9608      	str	r6, [sp, #32]
d0050284:	9009      	str	r0, [sp, #36]	; 0x24
d0050286:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d005028a:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d005028e:	ee77 7a86 	vadd.f32	s15, s15, s12
d0050292:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0050296:	ee37 7a20 	vadd.f32	s14, s14, s1
d005029a:	f104 0a01 	add.w	sl, r4, #1
d005029e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00502a2:	ee17 3a90 	vmov	r3, s15
d00502a6:	b29b      	uxth	r3, r3
d00502a8:	459b      	cmp	fp, r3
d00502aa:	d912      	bls.n	d00502d2 <fillTriangleDitherBayerT+0xaee>
d00502ac:	f818 b004 	ldrb.w	fp, [r8, r4]
d00502b0:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00502b4:	45e3      	cmp	fp, ip
d00502b6:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00502ba:	db0a      	blt.n	d00502d2 <fillTriangleDitherBayerT+0xaee>
d00502bc:	9801      	ldr	r0, [sp, #4]
d00502be:	f8a9 3000 	strh.w	r3, [r9]
d00502c2:	4605      	mov	r5, r0
d00502c4:	9803      	ldr	r0, [sp, #12]
d00502c6:	4606      	mov	r6, r0
d00502c8:	9804      	ldr	r0, [sp, #16]
d00502ca:	4583      	cmp	fp, r0
d00502cc:	bfb8      	it	lt
d00502ce:	4635      	movlt	r5, r6
d00502d0:	553d      	strb	r5, [r7, r4]
d00502d2:	3101      	adds	r1, #1
d00502d4:	f00a 0403 	and.w	r4, sl, #3
d00502d8:	428a      	cmp	r2, r1
d00502da:	dcd4      	bgt.n	d0050286 <fillTriangleDitherBayerT+0xaa2>
d00502dc:	9d07      	ldr	r5, [sp, #28]
d00502de:	9e08      	ldr	r6, [sp, #32]
d00502e0:	9809      	ldr	r0, [sp, #36]	; 0x24
d00502e2:	e792      	b.n	d005020a <fillTriangleDitherBayerT+0xa26>
d00502e4:	0093      	lsls	r3, r2, #2
d00502e6:	eef0 0a66 	vmov.f32	s1, s13
d00502ea:	9306      	str	r3, [sp, #24]
d00502ec:	e761      	b.n	d00501b2 <fillTriangleDitherBayerT+0x9ce>
d00502ee:	2e00      	cmp	r6, #0
d00502f0:	db99      	blt.n	d0050226 <fillTriangleDitherBayerT+0xa42>
d00502f2:	0093      	lsls	r3, r2, #2
d00502f4:	eef0 0a66 	vmov.f32	s1, s13
d00502f8:	9306      	str	r3, [sp, #24]
d00502fa:	e7be      	b.n	d005027a <fillTriangleDitherBayerT+0xa96>
d00502fc:	f000 0403 	and.w	r4, r0, #3
d0050300:	e6b6      	b.n	d0050070 <fillTriangleDitherBayerT+0x88c>
d0050302:	eef0 6a46 	vmov.f32	s13, s12
d0050306:	f000 0403 	and.w	r4, r0, #3
d005030a:	009e      	lsls	r6, r3, #2
d005030c:	e6b0      	b.n	d0050070 <fillTriangleDitherBayerT+0x88c>
d005030e:	2310      	movs	r3, #16
d0050310:	9301      	str	r3, [sp, #4]
d0050312:	2310      	movs	r3, #16
d0050314:	9303      	str	r3, [sp, #12]
d0050316:	f7ff bacd 	b.w	d004f8b4 <fillTriangleDitherBayerT+0xd0>
d005031a:	eeb0 aa46 	vmov.f32	s20, s12
d005031e:	eef0 1a46 	vmov.f32	s3, s12
d0050322:	e5d4      	b.n	d004fece <fillTriangleDitherBayerT+0x6ea>
d0050324:	eeb0 1a66 	vmov.f32	s2, s13
d0050328:	eef0 2a66 	vmov.f32	s5, s13
d005032c:	e6f9      	b.n	d0050122 <fillTriangleDitherBayerT+0x93e>
d005032e:	bf00      	nop
d0050330:	d00f4a70 	.word	0xd00f4a70
d0050334:	d0057780 	.word	0xd0057780
d0050338:	d00577a0 	.word	0xd00577a0

d005033c <vec3Add>:
d005033c:	ee30 0a21 	vadd.f32	s0, s0, s3
d0050340:	b08e      	sub	sp, #56	; 0x38
d0050342:	ee70 0a82 	vadd.f32	s1, s1, s4
d0050346:	ee31 1a22 	vadd.f32	s2, s2, s5
d005034a:	b00e      	add	sp, #56	; 0x38
d005034c:	4770      	bx	lr
d005034e:	bf00      	nop

d0050350 <vec3Scale>:
d0050350:	ee20 0a21 	vmul.f32	s0, s0, s3
d0050354:	b08c      	sub	sp, #48	; 0x30
d0050356:	ee61 0aa0 	vmul.f32	s1, s3, s1
d005035a:	ee21 1a81 	vmul.f32	s2, s3, s2
d005035e:	b00c      	add	sp, #48	; 0x30
d0050360:	4770      	bx	lr
d0050362:	bf00      	nop

d0050364 <vec3Dot>:
d0050364:	ee20 2a82 	vmul.f32	s4, s1, s4
d0050368:	b086      	sub	sp, #24
d005036a:	eea0 2a21 	vfma.f32	s4, s0, s3
d005036e:	eea1 2a22 	vfma.f32	s4, s2, s5
d0050372:	eeb0 0a42 	vmov.f32	s0, s4
d0050376:	b006      	add	sp, #24
d0050378:	4770      	bx	lr
d005037a:	bf00      	nop

d005037c <vec3Cross>:
d005037c:	eeb0 7a60 	vmov.f32	s14, s1
d0050380:	b08e      	sub	sp, #56	; 0x38
d0050382:	eef0 7a40 	vmov.f32	s15, s0
d0050386:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d005038a:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d005038e:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0050392:	eee1 0a21 	vfma.f32	s1, s2, s3
d0050396:	eee7 6a82 	vfma.f32	s13, s15, s4
d005039a:	eea7 0a22 	vfma.f32	s0, s14, s5
d005039e:	eeb0 1a66 	vmov.f32	s2, s13
d00503a2:	b00e      	add	sp, #56	; 0x38
d00503a4:	4770      	bx	lr
d00503a6:	bf00      	nop

d00503a8 <vec3Normalize>:
d00503a8:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00503ac:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0050438 <vec3Normalize+0x90>
d00503b0:	b08c      	sub	sp, #48	; 0x30
d00503b2:	eee0 7a00 	vfma.f32	s15, s0, s0
d00503b6:	eee1 7a01 	vfma.f32	s15, s2, s2
d00503ba:	eef4 7ac7 	vcmpe.f32	s15, s14
d00503be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00503c2:	d934      	bls.n	d005042e <vec3Normalize+0x86>
d00503c4:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d005043c <vec3Normalize+0x94>
d00503c8:	eef4 7a47 	vcmp.f32	s15, s14
d00503cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00503d0:	dd06      	ble.n	d00503e0 <vec3Normalize+0x38>
d00503d2:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0050440 <vec3Normalize+0x98>
d00503d6:	eef4 7a47 	vcmp.f32	s15, s14
d00503da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00503de:	d418      	bmi.n	d0050412 <vec3Normalize+0x6a>
d00503e0:	ee17 2a90 	vmov	r2, s15
d00503e4:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00503e8:	4b16      	ldr	r3, [pc, #88]	; (d0050444 <vec3Normalize+0x9c>)
d00503ea:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d00503ee:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00503f2:	ee67 7a86 	vmul.f32	s15, s15, s12
d00503f6:	ee06 3a90 	vmov	s13, r3
d00503fa:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00503fe:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0050402:	ee67 7a26 	vmul.f32	s15, s14, s13
d0050406:	ee27 0a80 	vmul.f32	s0, s15, s0
d005040a:	ee67 0aa0 	vmul.f32	s1, s15, s1
d005040e:	ee27 1a81 	vmul.f32	s2, s15, s2
d0050412:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0050416:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d005041a:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d005041e:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0050422:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0050426:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d005042a:	b00c      	add	sp, #48	; 0x30
d005042c:	4770      	bx	lr
d005042e:	2300      	movs	r3, #0
d0050430:	9309      	str	r3, [sp, #36]	; 0x24
d0050432:	930a      	str	r3, [sp, #40]	; 0x28
d0050434:	930b      	str	r3, [sp, #44]	; 0x2c
d0050436:	e7f2      	b.n	d005041e <vec3Normalize+0x76>
d0050438:	358637bd 	.word	0x358637bd
d005043c:	3f7fbe77 	.word	0x3f7fbe77
d0050440:	3f8020c5 	.word	0x3f8020c5
d0050444:	5f3759df 	.word	0x5f3759df

d0050448 <rotateAroundAxis>:
d0050448:	ee62 7a02 	vmul.f32	s15, s4, s4
d005044c:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0050594 <rotateAroundAxis+0x14c>
d0050450:	b500      	push	{lr}
d0050452:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0050456:	ed2d 8b0c 	vpush	{d8-d13}
d005045a:	eef0 ca40 	vmov.f32	s25, s0
d005045e:	b08f      	sub	sp, #60	; 0x3c
d0050460:	eeb0 ca60 	vmov.f32	s24, s1
d0050464:	eef0 ba41 	vmov.f32	s23, s2
d0050468:	eee2 7aa2 	vfma.f32	s15, s5, s5
d005046c:	eeb0 da43 	vmov.f32	s26, s6
d0050470:	eef4 7ac7 	vcmpe.f32	s15, s14
d0050474:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050478:	d97c      	bls.n	d0050574 <rotateAroundAxis+0x12c>
d005047a:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0050598 <rotateAroundAxis+0x150>
d005047e:	eef4 7a47 	vcmp.f32	s15, s14
d0050482:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050486:	dd55      	ble.n	d0050534 <rotateAroundAxis+0xec>
d0050488:	ed9f 7a44 	vldr	s14, [pc, #272]	; d005059c <rotateAroundAxis+0x154>
d005048c:	eef4 7a47 	vcmp.f32	s15, s14
d0050490:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050494:	d54e      	bpl.n	d0050534 <rotateAroundAxis+0xec>
d0050496:	eef0 da42 	vmov.f32	s27, s4
d005049a:	eeb0 9a61 	vmov.f32	s18, s3
d005049e:	eeb0 8a62 	vmov.f32	s16, s5
d00504a2:	ee60 8a82 	vmul.f32	s17, s1, s4
d00504a6:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d00504aa:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d00504ae:	eeec 8a89 	vfma.f32	s17, s25, s18
d00504b2:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d00504b6:	eeeb 5aad 	vfma.f32	s11, s23, s27
d00504ba:	eeac 6a88 	vfma.f32	s12, s25, s16
d00504be:	eeec 7a09 	vfma.f32	s15, s24, s18
d00504c2:	eeeb 8a88 	vfma.f32	s17, s23, s16
d00504c6:	eeb0 ba65 	vmov.f32	s22, s11
d00504ca:	eeb0 aa46 	vmov.f32	s20, s12
d00504ce:	eef0 aa67 	vmov.f32	s21, s15
d00504d2:	eeb0 0a4d 	vmov.f32	s0, s26
d00504d6:	f006 f963 	bl	d00567a0 <cosf>
d00504da:	eef0 9a40 	vmov.f32	s19, s0
d00504de:	eeb0 0a4d 	vmov.f32	s0, s26
d00504e2:	f006 fb41 	bl	d0056b68 <sinf>
d00504e6:	ee60 5a0b 	vmul.f32	s11, s0, s22
d00504ea:	ee20 6a0a 	vmul.f32	s12, s0, s20
d00504ee:	ee60 7a2a 	vmul.f32	s15, s0, s21
d00504f2:	eee9 5aac 	vfma.f32	s11, s19, s25
d00504f6:	eea9 6a8c 	vfma.f32	s12, s19, s24
d00504fa:	eee9 7aab 	vfma.f32	s15, s19, s23
d00504fe:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050502:	ee29 9a28 	vmul.f32	s18, s18, s17
d0050506:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d005050a:	ee76 9ae9 	vsub.f32	s19, s13, s19
d005050e:	ee28 8a28 	vmul.f32	s16, s16, s17
d0050512:	eeb0 0a65 	vmov.f32	s0, s11
d0050516:	eef0 0a46 	vmov.f32	s1, s12
d005051a:	eeb0 1a67 	vmov.f32	s2, s15
d005051e:	eea9 0a89 	vfma.f32	s0, s19, s18
d0050522:	eee9 0a87 	vfma.f32	s1, s19, s14
d0050526:	eea9 1a88 	vfma.f32	s2, s19, s16
d005052a:	b00f      	add	sp, #60	; 0x3c
d005052c:	ecbd 8b0c 	vpop	{d8-d13}
d0050530:	f85d fb04 	ldr.w	pc, [sp], #4
d0050534:	ee17 2a90 	vmov	r2, s15
d0050538:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005053c:	4b18      	ldr	r3, [pc, #96]	; (d00505a0 <rotateAroundAxis+0x158>)
d005053e:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0050542:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0050546:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005054a:	ee07 3a10 	vmov	s14, r3
d005054e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0050552:	eea7 8a67 	vfms.f32	s16, s14, s15
d0050556:	ee27 8a08 	vmul.f32	s16, s14, s16
d005055a:	ee62 da08 	vmul.f32	s27, s4, s16
d005055e:	ee21 9a88 	vmul.f32	s18, s3, s16
d0050562:	ee22 8a88 	vmul.f32	s16, s5, s16
d0050566:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d005056a:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d005056e:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0050572:	e79c      	b.n	d00504ae <rotateAroundAxis+0x66>
d0050574:	eddf 8a0b 	vldr	s17, [pc, #44]	; d00505a4 <rotateAroundAxis+0x15c>
d0050578:	eef0 aa68 	vmov.f32	s21, s17
d005057c:	eeb0 aa68 	vmov.f32	s20, s17
d0050580:	eeb0 ba68 	vmov.f32	s22, s17
d0050584:	eeb0 8a68 	vmov.f32	s16, s17
d0050588:	eef0 da68 	vmov.f32	s27, s17
d005058c:	eeb0 9a68 	vmov.f32	s18, s17
d0050590:	e79f      	b.n	d00504d2 <rotateAroundAxis+0x8a>
d0050592:	bf00      	nop
d0050594:	358637bd 	.word	0x358637bd
d0050598:	3f7fbe77 	.word	0x3f7fbe77
d005059c:	3f8020c5 	.word	0x3f8020c5
d00505a0:	5f3759df 	.word	0x5f3759df
d00505a4:	00000000 	.word	0x00000000

d00505a8 <vec3>:
d00505a8:	b088      	sub	sp, #32
d00505aa:	b008      	add	sp, #32
d00505ac:	4770      	bx	lr
d00505ae:	bf00      	nop

d00505b0 <degrees>:
d00505b0:	eddf 7a02 	vldr	s15, [pc, #8]	; d00505bc <degrees+0xc>
d00505b4:	ee20 0a27 	vmul.f32	s0, s0, s15
d00505b8:	4770      	bx	lr
d00505ba:	bf00      	nop
d00505bc:	3c8efa35 	.word	0x3c8efa35

d00505c0 <powfxt>:
d00505c0:	eef5 0a40 	vcmp.f32	s1, #0.0
d00505c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505c8:	d040      	beq.n	d005064c <powfxt+0x8c>
d00505ca:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00505ce:	eef0 7a40 	vmov.f32	s15, s0
d00505d2:	eef4 0a47 	vcmp.f32	s1, s14
d00505d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505da:	d034      	beq.n	d0050646 <powfxt+0x86>
d00505dc:	eeb4 0a47 	vcmp.f32	s0, s14
d00505e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505e4:	d02f      	beq.n	d0050646 <powfxt+0x86>
d00505e6:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00505ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505ee:	d030      	beq.n	d0050652 <powfxt+0x92>
d00505f0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00505f4:	eef4 0a66 	vcmp.f32	s1, s13
d00505f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505fc:	d042      	beq.n	d0050684 <powfxt+0xc4>
d00505fe:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d0050602:	eef4 0a66 	vcmp.f32	s1, s13
d0050606:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005060a:	d03e      	beq.n	d005068a <powfxt+0xca>
d005060c:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0050610:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0050614:	eeb4 6a60 	vcmp.f32	s12, s1
d0050618:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005061c:	d022      	beq.n	d0050664 <powfxt+0xa4>
d005061e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050622:	b500      	push	{lr}
d0050624:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050628:	b083      	sub	sp, #12
d005062a:	edcd 0a01 	vstr	s1, [sp, #4]
d005062e:	d431      	bmi.n	d0050694 <powfxt+0xd4>
d0050630:	f006 fa08 	bl	d0056a44 <logf>
d0050634:	eddd 0a01 	vldr	s1, [sp, #4]
d0050638:	ee20 0a20 	vmul.f32	s0, s0, s1
d005063c:	b003      	add	sp, #12
d005063e:	f85d eb04 	ldr.w	lr, [sp], #4
d0050642:	f006 b989 	b.w	d0056958 <expf>
d0050646:	eeb0 0a67 	vmov.f32	s0, s15
d005064a:	4770      	bx	lr
d005064c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050650:	4770      	bx	lr
d0050652:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0050656:	ed9f 0a15 	vldr	s0, [pc, #84]	; d00506ac <powfxt+0xec>
d005065a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005065e:	fe37 0a80 	vselgt.f32	s0, s15, s0
d0050662:	4770      	bx	lr
d0050664:	ee16 3a90 	vmov	r3, s13
d0050668:	2b00      	cmp	r3, #0
d005066a:	db18      	blt.n	d005069e <powfxt+0xde>
d005066c:	d01b      	beq.n	d00506a6 <powfxt+0xe6>
d005066e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050672:	07da      	lsls	r2, r3, #31
d0050674:	bf48      	it	mi
d0050676:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d005067a:	085b      	lsrs	r3, r3, #1
d005067c:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0050680:	d1f7      	bne.n	d0050672 <powfxt+0xb2>
d0050682:	4770      	bx	lr
d0050684:	eeb1 0ae7 	vsqrt.f32	s0, s15
d0050688:	4770      	bx	lr
d005068a:	eef1 6ac0 	vsqrt.f32	s13, s0
d005068e:	ee87 0a26 	vdiv.f32	s0, s14, s13
d0050692:	4770      	bx	lr
d0050694:	ed9f 0a06 	vldr	s0, [pc, #24]	; d00506b0 <powfxt+0xf0>
d0050698:	b003      	add	sp, #12
d005069a:	f85d fb04 	ldr.w	pc, [sp], #4
d005069e:	eec7 7a00 	vdiv.f32	s15, s14, s0
d00506a2:	425b      	negs	r3, r3
d00506a4:	e7e3      	b.n	d005066e <powfxt+0xae>
d00506a6:	eeb0 0a47 	vmov.f32	s0, s14
d00506aa:	4770      	bx	lr
d00506ac:	7f800000 	.word	0x7f800000
d00506b0:	7fc00000 	.word	0x7fc00000

d00506b4 <worldClear>:
d00506b4:	b508      	push	{r3, lr}
d00506b6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
d00506ba:	2100      	movs	r1, #0
d00506bc:	4807      	ldr	r0, [pc, #28]	; (d00506dc <worldClear+0x28>)
d00506be:	f004 ff39 	bl	d0055534 <memset>
d00506c2:	f001 ff29 	bl	d0052518 <lightsClear>
d00506c6:	f7fe f97b 	bl	d004e9c0 <initDepthBandMem>
d00506ca:	f004 f867 	bl	d005479c <sb3dParticlesClear>
d00506ce:	f002 fca3 	bl	d0053018 <initClipScratch>
d00506d2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d00506d6:	f004 b92b 	b.w	d0054930 <sb3dWorldAudioDefaults>
d00506da:	bf00      	nop
d00506dc:	d00f4a80 	.word	0xd00f4a80

d00506e0 <cameraNormalize>:
d00506e0:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d00506e4:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d00506e8:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00506ec:	b510      	push	{r4, lr}
d00506ee:	4604      	mov	r4, r0
d00506f0:	f7ff fe5a 	bl	d00503a8 <vec3Normalize>
d00506f4:	eeb0 7a60 	vmov.f32	s14, s1
d00506f8:	eef0 7a41 	vmov.f32	s15, s2
d00506fc:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050700:	ed94 0a06 	vldr	s0, [r4, #24]
d0050704:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0050708:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d005070c:	edd4 0a07 	vldr	s1, [r4, #28]
d0050710:	ed94 1a08 	vldr	s2, [r4, #32]
d0050714:	f7ff fe48 	bl	d00503a8 <vec3Normalize>
d0050718:	eef0 1a40 	vmov.f32	s3, s0
d005071c:	eeb0 2a60 	vmov.f32	s4, s1
d0050720:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050724:	eef0 2a41 	vmov.f32	s5, s2
d0050728:	edc4 0a07 	vstr	s1, [r4, #28]
d005072c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050730:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050734:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050738:	edc4 1a06 	vstr	s3, [r4, #24]
d005073c:	f7ff fe1e 	bl	d005037c <vec3Cross>
d0050740:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050744:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050748:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005074c:	f7ff fe2c 	bl	d00503a8 <vec3Normalize>
d0050750:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050754:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050758:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005075c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050760:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050764:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050768:	f7ff fe08 	bl	d005037c <vec3Cross>
d005076c:	ed84 0a06 	vstr	s0, [r4, #24]
d0050770:	edc4 0a07 	vstr	s1, [r4, #28]
d0050774:	ed84 1a08 	vstr	s2, [r4, #32]
d0050778:	f7ff fe16 	bl	d00503a8 <vec3Normalize>
d005077c:	ed84 0a06 	vstr	s0, [r4, #24]
d0050780:	edc4 0a07 	vstr	s1, [r4, #28]
d0050784:	ed84 1a08 	vstr	s2, [r4, #32]
d0050788:	bd10      	pop	{r4, pc}
d005078a:	bf00      	nop

d005078c <cameraCreate>:
d005078c:	b510      	push	{r4, lr}
d005078e:	4604      	mov	r4, r0
d0050790:	2260      	movs	r2, #96	; 0x60
d0050792:	4902      	ldr	r1, [pc, #8]	; (d005079c <cameraCreate+0x10>)
d0050794:	f004 fec0 	bl	d0055518 <memcpy>
d0050798:	4620      	mov	r0, r4
d005079a:	bd10      	pop	{r4, pc}
d005079c:	d0057880 	.word	0xd0057880

d00507a0 <cameraSetPosition>:
d00507a0:	b084      	sub	sp, #16
d00507a2:	ed8d 0a01 	vstr	s0, [sp, #4]
d00507a6:	edcd 0a02 	vstr	s1, [sp, #8]
d00507aa:	ed8d 1a03 	vstr	s2, [sp, #12]
d00507ae:	b128      	cbz	r0, d00507bc <cameraSetPosition+0x1c>
d00507b0:	aa04      	add	r2, sp, #16
d00507b2:	4603      	mov	r3, r0
d00507b4:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00507b8:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00507bc:	b004      	add	sp, #16
d00507be:	4770      	bx	lr

d00507c0 <cameraRotate>:
d00507c0:	2800      	cmp	r0, #0
d00507c2:	f000 80a8 	beq.w	d0050916 <cameraRotate+0x156>
d00507c6:	b510      	push	{r4, lr}
d00507c8:	ed2d 8b04 	vpush	{d8-d9}
d00507cc:	edc0 0a04 	vstr	s1, [r0, #16]
d00507d0:	b084      	sub	sp, #16
d00507d2:	ed80 1a05 	vstr	s2, [r0, #20]
d00507d6:	eef0 8a40 	vmov.f32	s17, s0
d00507da:	ed80 0a03 	vstr	s0, [r0, #12]
d00507de:	4604      	mov	r4, r0
d00507e0:	eeb0 8a60 	vmov.f32	s16, s1
d00507e4:	f005 ffdc 	bl	d00567a0 <cosf>
d00507e8:	eeb0 1a40 	vmov.f32	s2, s0
d00507ec:	eeb0 0a68 	vmov.f32	s0, s17
d00507f0:	eef0 8a41 	vmov.f32	s17, s2
d00507f4:	f006 f9b8 	bl	d0056b68 <sinf>
d00507f8:	eeb0 9a40 	vmov.f32	s18, s0
d00507fc:	eeb0 0a48 	vmov.f32	s0, s16
d0050800:	f005 ffce 	bl	d00567a0 <cosf>
d0050804:	eeb0 1a40 	vmov.f32	s2, s0
d0050808:	eeb0 0a48 	vmov.f32	s0, s16
d005080c:	eeb0 8a41 	vmov.f32	s16, s2
d0050810:	f006 f9aa 	bl	d0056b68 <sinf>
d0050814:	eef0 0a40 	vmov.f32	s1, s0
d0050818:	ee28 1a88 	vmul.f32	s2, s17, s16
d005081c:	ee29 9a08 	vmul.f32	s18, s18, s16
d0050820:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050824:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050828:	eeb0 0a49 	vmov.f32	s0, s18
d005082c:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d0050830:	f7ff fdba 	bl	d00503a8 <vec3Normalize>
d0050834:	eef0 7a41 	vmov.f32	s15, s2
d0050838:	eeb0 7a60 	vmov.f32	s14, s1
d005083c:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0050970 <cameraRotate+0x1b0>
d0050840:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050844:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050848:	eeb0 0a41 	vmov.f32	s0, s2
d005084c:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0050850:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0050854:	f7ff fea8 	bl	d00505a8 <vec3>
d0050858:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005085c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050860:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050864:	f7ff fd8a 	bl	d005037c <vec3Cross>
d0050868:	eef0 1a40 	vmov.f32	s3, s0
d005086c:	eeb0 2a60 	vmov.f32	s4, s1
d0050870:	ed84 0a06 	vstr	s0, [r4, #24]
d0050874:	eef0 2a41 	vmov.f32	s5, s2
d0050878:	edc4 0a07 	vstr	s1, [r4, #28]
d005087c:	ed84 1a08 	vstr	s2, [r4, #32]
d0050880:	f7ff fd70 	bl	d0050364 <vec3Dot>
d0050884:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0050974 <cameraRotate+0x1b4>
d0050888:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005088c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050890:	d438      	bmi.n	d0050904 <cameraRotate+0x144>
d0050892:	ed94 0a06 	vldr	s0, [r4, #24]
d0050896:	edd4 0a07 	vldr	s1, [r4, #28]
d005089a:	ed94 1a08 	vldr	s2, [r4, #32]
d005089e:	f7ff fd83 	bl	d00503a8 <vec3Normalize>
d00508a2:	eef0 1a40 	vmov.f32	s3, s0
d00508a6:	ed84 0a06 	vstr	s0, [r4, #24]
d00508aa:	eeb0 2a60 	vmov.f32	s4, s1
d00508ae:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00508b2:	eef0 2a41 	vmov.f32	s5, s2
d00508b6:	edc4 0a07 	vstr	s1, [r4, #28]
d00508ba:	ed84 1a08 	vstr	s2, [r4, #32]
d00508be:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00508c2:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00508c6:	f7ff fd59 	bl	d005037c <vec3Cross>
d00508ca:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00508ce:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00508d2:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00508d6:	f7ff fd67 	bl	d00503a8 <vec3Normalize>
d00508da:	ed94 3a05 	vldr	s6, [r4, #20]
d00508de:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00508e2:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00508e6:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00508ea:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00508ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508f2:	d111      	bne.n	d0050918 <cameraRotate+0x158>
d00508f4:	4620      	mov	r0, r4
d00508f6:	b004      	add	sp, #16
d00508f8:	ecbd 8b04 	vpop	{d8-d9}
d00508fc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0050900:	f7ff beee 	b.w	d00506e0 <cameraNormalize>
d0050904:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d0050970 <cameraRotate+0x1b0>
d0050908:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005090c:	eef0 0a41 	vmov.f32	s1, s2
d0050910:	f7ff fe4a 	bl	d00505a8 <vec3>
d0050914:	e7c5      	b.n	d00508a2 <cameraRotate+0xe2>
d0050916:	4770      	bx	lr
d0050918:	ed94 0a06 	vldr	s0, [r4, #24]
d005091c:	edd4 0a07 	vldr	s1, [r4, #28]
d0050920:	ed94 1a08 	vldr	s2, [r4, #32]
d0050924:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050928:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d005092c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050930:	f7ff fd8a 	bl	d0050448 <rotateAroundAxis>
d0050934:	ed84 0a06 	vstr	s0, [r4, #24]
d0050938:	edc4 0a07 	vstr	s1, [r4, #28]
d005093c:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050940:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050944:	ed84 1a08 	vstr	s2, [r4, #32]
d0050948:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d005094c:	ed94 3a05 	vldr	s6, [r4, #20]
d0050950:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050954:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050958:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005095c:	f7ff fd74 	bl	d0050448 <rotateAroundAxis>
d0050960:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050964:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050968:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005096c:	e7c2      	b.n	d00508f4 <cameraRotate+0x134>
d005096e:	bf00      	nop
d0050970:	00000000 	.word	0x00000000
d0050974:	322bcc77 	.word	0x322bcc77

d0050978 <cameraGetRotation>:
d0050978:	b510      	push	{r4, lr}
d005097a:	ed2d 8b04 	vpush	{d8-d9}
d005097e:	b08e      	sub	sp, #56	; 0x38
d0050980:	b100      	cbz	r0, d0050984 <cameraGetRotation+0xc>
d0050982:	b169      	cbz	r1, d00509a0 <cameraGetRotation+0x28>
d0050984:	2300      	movs	r3, #0
d0050986:	930b      	str	r3, [sp, #44]	; 0x2c
d0050988:	930c      	str	r3, [sp, #48]	; 0x30
d005098a:	930d      	str	r3, [sp, #52]	; 0x34
d005098c:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0050990:	eddd 0a0c 	vldr	s1, [sp, #48]	; 0x30
d0050994:	ed9d 1a0d 	vldr	s2, [sp, #52]	; 0x34
d0050998:	b00e      	add	sp, #56	; 0x38
d005099a:	ecbd 8b04 	vpop	{d8-d9}
d005099e:	bd10      	pop	{r4, pc}
d00509a0:	edd0 0a0e 	vldr	s1, [r0, #56]	; 0x38
d00509a4:	4604      	mov	r4, r0
d00509a6:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00509aa:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00509ae:	eee0 7a00 	vfma.f32	s15, s0, s0
d00509b2:	eeb1 8ae7 	vsqrt.f32	s16, s15
d00509b6:	f006 f977 	bl	d0056ca8 <atan2f>
d00509ba:	eef0 8a40 	vmov.f32	s17, s0
d00509be:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00509c2:	eef0 0a48 	vmov.f32	s1, s16
d00509c6:	f006 f96f 	bl	d0056ca8 <atan2f>
d00509ca:	ed9f 1a41 	vldr	s2, [pc, #260]	; d0050ad0 <cameraGetRotation+0x158>
d00509ce:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00509d2:	eeb0 8a40 	vmov.f32	s16, s0
d00509d6:	eeb0 0a41 	vmov.f32	s0, s2
d00509da:	f7ff fde5 	bl	d00505a8 <vec3>
d00509de:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00509e2:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00509e6:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00509ea:	f7ff fcc7 	bl	d005037c <vec3Cross>
d00509ee:	eef0 1a40 	vmov.f32	s3, s0
d00509f2:	eeb0 2a60 	vmov.f32	s4, s1
d00509f6:	ed8d 0a05 	vstr	s0, [sp, #20]
d00509fa:	eef0 2a41 	vmov.f32	s5, s2
d00509fe:	edcd 0a06 	vstr	s1, [sp, #24]
d0050a02:	ed8d 1a07 	vstr	s2, [sp, #28]
d0050a06:	f7ff fcad 	bl	d0050364 <vec3Dot>
d0050a0a:	eddf 7a32 	vldr	s15, [pc, #200]	; d0050ad4 <cameraGetRotation+0x15c>
d0050a0e:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050a12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a16:	d552      	bpl.n	d0050abe <cameraGetRotation+0x146>
d0050a18:	ed9f 1a2d 	vldr	s2, [pc, #180]	; d0050ad0 <cameraGetRotation+0x158>
d0050a1c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050a20:	eef0 0a41 	vmov.f32	s1, s2
d0050a24:	f7ff fdc0 	bl	d00505a8 <vec3>
d0050a28:	eef0 1a40 	vmov.f32	s3, s0
d0050a2c:	ed8d 0a05 	vstr	s0, [sp, #20]
d0050a30:	eeb0 2a60 	vmov.f32	s4, s1
d0050a34:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050a38:	eef0 2a41 	vmov.f32	s5, s2
d0050a3c:	edcd 0a06 	vstr	s1, [sp, #24]
d0050a40:	ed8d 1a07 	vstr	s2, [sp, #28]
d0050a44:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050a48:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050a4c:	f7ff fc96 	bl	d005037c <vec3Cross>
d0050a50:	f7ff fcaa 	bl	d00503a8 <vec3Normalize>
d0050a54:	eef0 6a40 	vmov.f32	s13, s0
d0050a58:	eeb0 7a60 	vmov.f32	s14, s1
d0050a5c:	eddd 1a05 	vldr	s3, [sp, #20]
d0050a60:	eef0 7a41 	vmov.f32	s15, s2
d0050a64:	ed9d 2a06 	vldr	s4, [sp, #24]
d0050a68:	eddd 2a07 	vldr	s5, [sp, #28]
d0050a6c:	edd4 0a07 	vldr	s1, [r4, #28]
d0050a70:	ed94 1a08 	vldr	s2, [r4, #32]
d0050a74:	ed94 0a06 	vldr	s0, [r4, #24]
d0050a78:	edcd 6a08 	vstr	s13, [sp, #32]
d0050a7c:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0050a80:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0050a84:	f7ff fc6e 	bl	d0050364 <vec3Dot>
d0050a88:	eeb0 9a40 	vmov.f32	s18, s0
d0050a8c:	eddd 1a08 	vldr	s3, [sp, #32]
d0050a90:	ed9d 2a09 	vldr	s4, [sp, #36]	; 0x24
d0050a94:	eddd 2a0a 	vldr	s5, [sp, #40]	; 0x28
d0050a98:	edd4 0a07 	vldr	s1, [r4, #28]
d0050a9c:	ed94 1a08 	vldr	s2, [r4, #32]
d0050aa0:	ed94 0a06 	vldr	s0, [r4, #24]
d0050aa4:	f7ff fc5e 	bl	d0050364 <vec3Dot>
d0050aa8:	eef0 0a49 	vmov.f32	s1, s18
d0050aac:	f006 f8fc 	bl	d0056ca8 <atan2f>
d0050ab0:	edcd 8a0b 	vstr	s17, [sp, #44]	; 0x2c
d0050ab4:	ed8d 8a0c 	vstr	s16, [sp, #48]	; 0x30
d0050ab8:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d0050abc:	e766      	b.n	d005098c <cameraGetRotation+0x14>
d0050abe:	ed9d 0a05 	vldr	s0, [sp, #20]
d0050ac2:	eddd 0a06 	vldr	s1, [sp, #24]
d0050ac6:	ed9d 1a07 	vldr	s2, [sp, #28]
d0050aca:	f7ff fc6d 	bl	d00503a8 <vec3Normalize>
d0050ace:	e7ab      	b.n	d0050a28 <cameraGetRotation+0xb0>
d0050ad0:	00000000 	.word	0x00000000
d0050ad4:	322bcc77 	.word	0x322bcc77

d0050ad8 <cameraTurn>:
d0050ad8:	2800      	cmp	r0, #0
d0050ada:	f000 8144 	beq.w	d0050d66 <cameraTurn+0x28e>
d0050ade:	b570      	push	{r4, r5, r6, lr}
d0050ae0:	4604      	mov	r4, r0
d0050ae2:	ed2d 8b04 	vpush	{d8-d9}
d0050ae6:	eef0 8a40 	vmov.f32	s17, s0
d0050aea:	b08a      	sub	sp, #40	; 0x28
d0050aec:	eeb0 9a60 	vmov.f32	s18, s1
d0050af0:	eeb0 8a41 	vmov.f32	s16, s2
d0050af4:	bb69      	cbnz	r1, d0050b52 <cameraTurn+0x7a>
d0050af6:	f100 0318 	add.w	r3, r0, #24
d0050afa:	ae01      	add	r6, sp, #4
d0050afc:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0050b00:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0050b04:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050b08:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0050b0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b10:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050b14:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0050b18:	ae04      	add	r6, sp, #16
d0050b1a:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050b1e:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050b22:	ab0a      	add	r3, sp, #40	; 0x28
d0050b24:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0050b28:	d14a      	bne.n	d0050bc0 <cameraTurn+0xe8>
d0050b2a:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050b2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b32:	f040 808d 	bne.w	d0050c50 <cameraTurn+0x178>
d0050b36:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050b3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b3e:	f040 80cf 	bne.w	d0050ce0 <cameraTurn+0x208>
d0050b42:	4620      	mov	r0, r4
d0050b44:	b00a      	add	sp, #40	; 0x28
d0050b46:	ecbd 8b04 	vpop	{d8-d9}
d0050b4a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050b4e:	f7ff bdc7 	b.w	d00506e0 <cameraNormalize>
d0050b52:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0050d68 <cameraTurn+0x290>
d0050b56:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050b5a:	eef0 0a41 	vmov.f32	s1, s2
d0050b5e:	f7ff fd23 	bl	d00505a8 <vec3>
d0050b62:	eef0 7a41 	vmov.f32	s15, s2
d0050b66:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0050d68 <cameraTurn+0x290>
d0050b6a:	eeb0 7a60 	vmov.f32	s14, s1
d0050b6e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0050b72:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050b76:	edcd 7a03 	vstr	s15, [sp, #12]
d0050b7a:	eeb0 0a41 	vmov.f32	s0, s2
d0050b7e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0050b82:	f7ff fd11 	bl	d00505a8 <vec3>
d0050b86:	eeb0 7a60 	vmov.f32	s14, s1
d0050b8a:	eddf 0a77 	vldr	s1, [pc, #476]	; d0050d68 <cameraTurn+0x290>
d0050b8e:	eef0 7a41 	vmov.f32	s15, s2
d0050b92:	ed8d 0a04 	vstr	s0, [sp, #16]
d0050b96:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0050b9a:	eeb0 0a60 	vmov.f32	s0, s1
d0050b9e:	ed8d 7a05 	vstr	s14, [sp, #20]
d0050ba2:	edcd 7a06 	vstr	s15, [sp, #24]
d0050ba6:	f7ff fcff 	bl	d00505a8 <vec3>
d0050baa:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0050bae:	edcd 0a08 	vstr	s1, [sp, #32]
d0050bb2:	ed8d 0a07 	vstr	s0, [sp, #28]
d0050bb6:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0050bba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050bbe:	d0b4      	beq.n	d0050b2a <cameraTurn+0x52>
d0050bc0:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050bc4:	eeb0 3a49 	vmov.f32	s6, s18
d0050bc8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050bcc:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050bd0:	eddd 1a04 	vldr	s3, [sp, #16]
d0050bd4:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050bd8:	eddd 2a06 	vldr	s5, [sp, #24]
d0050bdc:	f7ff fc34 	bl	d0050448 <rotateAroundAxis>
d0050be0:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050be4:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050be8:	eeb0 3a49 	vmov.f32	s6, s18
d0050bec:	ed94 0a06 	vldr	s0, [r4, #24]
d0050bf0:	edd4 0a07 	vldr	s1, [r4, #28]
d0050bf4:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050bf8:	ed94 1a08 	vldr	s2, [r4, #32]
d0050bfc:	eddd 1a04 	vldr	s3, [sp, #16]
d0050c00:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050c04:	eddd 2a06 	vldr	s5, [sp, #24]
d0050c08:	f7ff fc1e 	bl	d0050448 <rotateAroundAxis>
d0050c0c:	eeb0 3a49 	vmov.f32	s6, s18
d0050c10:	ed84 0a06 	vstr	s0, [r4, #24]
d0050c14:	edc4 0a07 	vstr	s1, [r4, #28]
d0050c18:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050c1c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050c20:	ed84 1a08 	vstr	s2, [r4, #32]
d0050c24:	eddd 1a04 	vldr	s3, [sp, #16]
d0050c28:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050c2c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0050c30:	eddd 2a06 	vldr	s5, [sp, #24]
d0050c34:	f7ff fc08 	bl	d0050448 <rotateAroundAxis>
d0050c38:	eef5 8a40 	vcmp.f32	s17, #0.0
d0050c3c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050c40:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050c44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c48:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050c4c:	f43f af73 	beq.w	d0050b36 <cameraTurn+0x5e>
d0050c50:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050c54:	eeb0 3a68 	vmov.f32	s6, s17
d0050c58:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050c5c:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050c60:	eddd 1a01 	vldr	s3, [sp, #4]
d0050c64:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050c68:	eddd 2a03 	vldr	s5, [sp, #12]
d0050c6c:	f7ff fbec 	bl	d0050448 <rotateAroundAxis>
d0050c70:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050c74:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050c78:	eeb0 3a68 	vmov.f32	s6, s17
d0050c7c:	ed94 0a06 	vldr	s0, [r4, #24]
d0050c80:	edd4 0a07 	vldr	s1, [r4, #28]
d0050c84:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050c88:	ed94 1a08 	vldr	s2, [r4, #32]
d0050c8c:	eddd 1a01 	vldr	s3, [sp, #4]
d0050c90:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050c94:	eddd 2a03 	vldr	s5, [sp, #12]
d0050c98:	f7ff fbd6 	bl	d0050448 <rotateAroundAxis>
d0050c9c:	eeb0 3a68 	vmov.f32	s6, s17
d0050ca0:	ed84 0a06 	vstr	s0, [r4, #24]
d0050ca4:	edc4 0a07 	vstr	s1, [r4, #28]
d0050ca8:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050cac:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050cb0:	ed84 1a08 	vstr	s2, [r4, #32]
d0050cb4:	eddd 1a01 	vldr	s3, [sp, #4]
d0050cb8:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050cbc:	ed9d 2a02 	vldr	s4, [sp, #8]
d0050cc0:	eddd 2a03 	vldr	s5, [sp, #12]
d0050cc4:	f7ff fbc0 	bl	d0050448 <rotateAroundAxis>
d0050cc8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0050ccc:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050cd0:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050cd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050cd8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050cdc:	f43f af31 	beq.w	d0050b42 <cameraTurn+0x6a>
d0050ce0:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0050ce4:	eeb0 3a48 	vmov.f32	s6, s16
d0050ce8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0050cec:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0050cf0:	eddd 1a07 	vldr	s3, [sp, #28]
d0050cf4:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050cf8:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050cfc:	f7ff fba4 	bl	d0050448 <rotateAroundAxis>
d0050d00:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0050d04:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0050d08:	eeb0 3a48 	vmov.f32	s6, s16
d0050d0c:	ed94 0a06 	vldr	s0, [r4, #24]
d0050d10:	edd4 0a07 	vldr	s1, [r4, #28]
d0050d14:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0050d18:	ed94 1a08 	vldr	s2, [r4, #32]
d0050d1c:	eddd 1a07 	vldr	s3, [sp, #28]
d0050d20:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050d24:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050d28:	f7ff fb8e 	bl	d0050448 <rotateAroundAxis>
d0050d2c:	ed84 0a06 	vstr	s0, [r4, #24]
d0050d30:	edc4 0a07 	vstr	s1, [r4, #28]
d0050d34:	eeb0 3a48 	vmov.f32	s6, s16
d0050d38:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0050d3c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0050d40:	ed84 1a08 	vstr	s2, [r4, #32]
d0050d44:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0050d48:	eddd 1a07 	vldr	s3, [sp, #28]
d0050d4c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0050d50:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0050d54:	f7ff fb78 	bl	d0050448 <rotateAroundAxis>
d0050d58:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0050d5c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0050d60:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0050d64:	e6ed      	b.n	d0050b42 <cameraTurn+0x6a>
d0050d66:	4770      	bx	lr
d0050d68:	00000000 	.word	0x00000000

d0050d6c <worldToCamera>:
d0050d6c:	b084      	sub	sp, #16
d0050d6e:	b510      	push	{r4, lr}
d0050d70:	ed2d 8b02 	vpush	{d8}
d0050d74:	b0ac      	sub	sp, #176	; 0xb0
d0050d76:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0050d7a:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0050d7e:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0050d82:	f024 041f 	bic.w	r4, r4, #31
d0050d86:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0050d8a:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0050d8e:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0050d92:	2260      	movs	r2, #96	; 0x60
d0050d94:	4661      	mov	r1, ip
d0050d96:	4620      	mov	r0, r4
d0050d98:	f004 fbbe 	bl	d0055518 <memcpy>
d0050d9c:	edd4 7a00 	vldr	s15, [r4]
d0050da0:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0050da4:	ed94 7a01 	vldr	s14, [r4, #4]
d0050da8:	ee30 0a67 	vsub.f32	s0, s0, s15
d0050dac:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0050db0:	edd4 7a02 	vldr	s15, [r4, #8]
d0050db4:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0050db8:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0050dbc:	edd4 1a06 	vldr	s3, [r4, #24]
d0050dc0:	ee31 1a67 	vsub.f32	s2, s2, s15
d0050dc4:	ed94 2a07 	vldr	s4, [r4, #28]
d0050dc8:	edd4 2a08 	vldr	s5, [r4, #32]
d0050dcc:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0050dd0:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0050dd4:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0050dd8:	f7ff fac4 	bl	d0050364 <vec3Dot>
d0050ddc:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0050de0:	eef0 8a40 	vmov.f32	s17, s0
d0050de4:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0050de8:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0050dec:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0050df0:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0050df4:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0050df8:	f7ff fab4 	bl	d0050364 <vec3Dot>
d0050dfc:	eeb0 8a40 	vmov.f32	s16, s0
d0050e00:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0050e04:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0050e08:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0050e0c:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0050e10:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0050e14:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0050e18:	f7ff faa4 	bl	d0050364 <vec3Dot>
d0050e1c:	eef0 0a48 	vmov.f32	s1, s16
d0050e20:	eeb0 1a40 	vmov.f32	s2, s0
d0050e24:	eeb0 0a68 	vmov.f32	s0, s17
d0050e28:	b02c      	add	sp, #176	; 0xb0
d0050e2a:	ecbd 8b02 	vpop	{d8}
d0050e2e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0050e32:	b004      	add	sp, #16
d0050e34:	4770      	bx	lr
d0050e36:	bf00      	nop

d0050e38 <cameraSetRange>:
d0050e38:	b1d8      	cbz	r0, d0050e72 <cameraSetRange+0x3a>
d0050e3a:	eddf 7a11 	vldr	s15, [pc, #68]	; d0050e80 <cameraSetRange+0x48>
d0050e3e:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0050e42:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0050e46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050e4a:	da13      	bge.n	d0050e74 <cameraSetRange+0x3c>
d0050e4c:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0050e50:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050e54:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0050e58:	4b0a      	ldr	r3, [pc, #40]	; (d0050e84 <cameraSetRange+0x4c>)
d0050e5a:	490b      	ldr	r1, [pc, #44]	; (d0050e88 <cameraSetRange+0x50>)
d0050e5c:	4a0b      	ldr	r2, [pc, #44]	; (d0050e8c <cameraSetRange+0x54>)
d0050e5e:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0050e62:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0050e66:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0050e6a:	6483      	str	r3, [r0, #72]	; 0x48
d0050e6c:	64c3      	str	r3, [r0, #76]	; 0x4c
d0050e6e:	6501      	str	r1, [r0, #80]	; 0x50
d0050e70:	6542      	str	r2, [r0, #84]	; 0x54
d0050e72:	4770      	bx	lr
d0050e74:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0050e78:	ee70 0a27 	vadd.f32	s1, s0, s15
d0050e7c:	e7ec      	b.n	d0050e58 <cameraSetRange+0x20>
d0050e7e:	bf00      	nop
d0050e80:	3a83126f 	.word	0x3a83126f
d0050e84:	43700000 	.word	0x43700000
d0050e88:	43200000 	.word	0x43200000
d0050e8c:	3f2aaaab 	.word	0x3f2aaaab

d0050e90 <cameraMove>:
d0050e90:	b3a8      	cbz	r0, d0050efe <cameraMove+0x6e>
d0050e92:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0050e96:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0050e9a:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d0050e9e:	ee20 7a87 	vmul.f32	s14, s1, s14
d0050ea2:	edd0 5a06 	vldr	s11, [r0, #24]
d0050ea6:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0050eaa:	ed90 6a08 	vldr	s12, [r0, #32]
d0050eae:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0050eb2:	edd0 6a07 	vldr	s13, [r0, #28]
d0050eb6:	eea5 7a80 	vfma.f32	s14, s11, s0
d0050eba:	edd0 4a01 	vldr	s9, [r0, #4]
d0050ebe:	eee6 7a80 	vfma.f32	s15, s13, s0
d0050ec2:	ed90 5a02 	vldr	s10, [r0, #8]
d0050ec6:	eee6 0a00 	vfma.f32	s1, s12, s0
d0050eca:	edd0 6a00 	vldr	s13, [r0]
d0050ece:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0050ed2:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0050ed6:	ee37 7a26 	vadd.f32	s14, s14, s13
d0050eda:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0050ede:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0050ee2:	ee70 0a85 	vadd.f32	s1, s1, s10
d0050ee6:	eea5 7a81 	vfma.f32	s14, s11, s2
d0050eea:	eee6 7a01 	vfma.f32	s15, s12, s2
d0050eee:	eee6 0a81 	vfma.f32	s1, s13, s2
d0050ef2:	ed80 7a00 	vstr	s14, [r0]
d0050ef6:	edc0 7a01 	vstr	s15, [r0, #4]
d0050efa:	edc0 0a02 	vstr	s1, [r0, #8]
d0050efe:	4770      	bx	lr

d0050f00 <normalizeEntity.part.0>:
d0050f00:	edd0 0a08 	vldr	s1, [r0, #32]
d0050f04:	ed90 1a09 	vldr	s2, [r0, #36]	; 0x24
d0050f08:	ed90 0a07 	vldr	s0, [r0, #28]
d0050f0c:	b510      	push	{r4, lr}
d0050f0e:	4604      	mov	r4, r0
d0050f10:	f7ff fa4a 	bl	d00503a8 <vec3Normalize>
d0050f14:	eeb0 7a60 	vmov.f32	s14, s1
d0050f18:	eef0 7a41 	vmov.f32	s15, s2
d0050f1c:	ed84 0a07 	vstr	s0, [r4, #28]
d0050f20:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0050f24:	ed84 7a08 	vstr	s14, [r4, #32]
d0050f28:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0050f2c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0050f30:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0050f34:	f7ff fa38 	bl	d00503a8 <vec3Normalize>
d0050f38:	eef0 1a40 	vmov.f32	s3, s0
d0050f3c:	eeb0 2a60 	vmov.f32	s4, s1
d0050f40:	ed94 0a07 	vldr	s0, [r4, #28]
d0050f44:	eef0 2a41 	vmov.f32	s5, s2
d0050f48:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0050f4c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0050f50:	edd4 0a08 	vldr	s1, [r4, #32]
d0050f54:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0050f58:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0050f5c:	f7ff fa0e 	bl	d005037c <vec3Cross>
d0050f60:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0050f64:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0050f68:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0050f6c:	f7ff fa1c 	bl	d00503a8 <vec3Normalize>
d0050f70:	edd4 1a07 	vldr	s3, [r4, #28]
d0050f74:	ed94 2a08 	vldr	s4, [r4, #32]
d0050f78:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0050f7c:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0050f80:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0050f84:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0050f88:	f7ff f9f8 	bl	d005037c <vec3Cross>
d0050f8c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0050f90:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0050f94:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0050f98:	f7ff fa06 	bl	d00503a8 <vec3Normalize>
d0050f9c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0050fa0:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0050fa4:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0050fa8:	bd10      	pop	{r4, pc}
d0050faa:	bf00      	nop

d0050fac <entityRotation.part.0>:
d0050fac:	b5f0      	push	{r4, r5, r6, r7, lr}
d0050fae:	4db5      	ldr	r5, [pc, #724]	; (d0051284 <entityRotation.part.0+0x2d8>)
d0050fb0:	ed2d 8b04 	vpush	{d8-d9}
d0050fb4:	eb05 14c0 	add.w	r4, r5, r0, lsl #7
d0050fb8:	eeb0 9a40 	vmov.f32	s18, s0
d0050fbc:	eef0 8a60 	vmov.f32	s17, s1
d0050fc0:	b08b      	sub	sp, #44	; 0x2c
d0050fc2:	eeb0 8a41 	vmov.f32	s16, s2
d0050fc6:	2900      	cmp	r1, #0
d0050fc8:	d040      	beq.n	d005104c <entityRotation.part.0+0xa0>
d0050fca:	eddf 1aaf 	vldr	s3, [pc, #700]	; d0051288 <entityRotation.part.0+0x2dc>
d0050fce:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0050fd2:	eeb4 0a61 	vcmp.f32	s0, s3
d0050fd6:	edc4 1a0b 	vstr	s3, [r4, #44]	; 0x2c
d0050fda:	ed84 2a0a 	vstr	s4, [r4, #40]	; 0x28
d0050fde:	ed84 2a0e 	vstr	s4, [r4, #56]	; 0x38
d0050fe2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050fe6:	ed84 2a09 	vstr	s4, [r4, #36]	; 0x24
d0050fea:	ed8d 2a02 	vstr	s4, [sp, #8]
d0050fee:	ed8d 2a04 	vstr	s4, [sp, #16]
d0050ff2:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0050ff6:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0050ffa:	edc4 1a0d 	vstr	s3, [r4, #52]	; 0x34
d0050ffe:	edc4 1a0f 	vstr	s3, [r4, #60]	; 0x3c
d0051002:	edc4 1a07 	vstr	s3, [r4, #28]
d0051006:	edc4 1a08 	vstr	s3, [r4, #32]
d005100a:	edcd 1a01 	vstr	s3, [sp, #4]
d005100e:	edcd 1a03 	vstr	s3, [sp, #12]
d0051012:	edcd 1a05 	vstr	s3, [sp, #20]
d0051016:	edcd 1a06 	vstr	s3, [sp, #24]
d005101a:	edcd 1a07 	vstr	s3, [sp, #28]
d005101e:	edcd 1a08 	vstr	s3, [sp, #32]
d0051022:	d17b      	bne.n	d005111c <entityRotation.part.0+0x170>
d0051024:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051028:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005102c:	f040 80c6 	bne.w	d00511bc <entityRotation.part.0+0x210>
d0051030:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051034:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051038:	f040 8114 	bne.w	d0051264 <entityRotation.part.0+0x2b8>
d005103c:	4620      	mov	r0, r4
d005103e:	b00b      	add	sp, #44	; 0x2c
d0051040:	ecbd 8b04 	vpop	{d8-d9}
d0051044:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0051048:	f7ff bf5a 	b.w	d0050f00 <normalizeEntity.part.0>
d005104c:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0051050:	01c6      	lsls	r6, r0, #7
d0051052:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051056:	f040 8119 	bne.w	d005128c <entityRotation.part.0+0x2e0>
d005105a:	eef5 8a40 	vcmp.f32	s17, #0.0
d005105e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051062:	f040 816e 	bne.w	d0051342 <entityRotation.part.0+0x396>
d0051066:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005106a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005106e:	d0e5      	beq.n	d005103c <entityRotation.part.0+0x90>
d0051070:	19ab      	adds	r3, r5, r6
d0051072:	eeb0 3a48 	vmov.f32	s6, s16
d0051076:	ed94 0a07 	vldr	s0, [r4, #28]
d005107a:	331c      	adds	r3, #28
d005107c:	edd4 0a08 	vldr	s1, [r4, #32]
d0051080:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051084:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051088:	ab0a      	add	r3, sp, #40	; 0x28
d005108a:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005108e:	eddd 1a07 	vldr	s3, [sp, #28]
d0051092:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051096:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d005109a:	f7ff f9d5 	bl	d0050448 <rotateAroundAxis>
d005109e:	eef0 6a40 	vmov.f32	s13, s0
d00510a2:	eeb0 7a60 	vmov.f32	s14, s1
d00510a6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00510aa:	eef0 7a41 	vmov.f32	s15, s2
d00510ae:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00510b2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00510b6:	eeb0 3a48 	vmov.f32	s6, s16
d00510ba:	eddd 1a07 	vldr	s3, [sp, #28]
d00510be:	ed9d 2a08 	vldr	s4, [sp, #32]
d00510c2:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00510c6:	edc4 6a07 	vstr	s13, [r4, #28]
d00510ca:	ed84 7a08 	vstr	s14, [r4, #32]
d00510ce:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00510d2:	f7ff f9b9 	bl	d0050448 <rotateAroundAxis>
d00510d6:	eef0 6a40 	vmov.f32	s13, s0
d00510da:	eeb0 7a60 	vmov.f32	s14, s1
d00510de:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00510e2:	eef0 7a41 	vmov.f32	s15, s2
d00510e6:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00510ea:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00510ee:	eeb0 3a48 	vmov.f32	s6, s16
d00510f2:	eddd 1a07 	vldr	s3, [sp, #28]
d00510f6:	ed9d 2a08 	vldr	s4, [sp, #32]
d00510fa:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00510fe:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051102:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051106:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005110a:	f7ff f99d 	bl	d0050448 <rotateAroundAxis>
d005110e:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051112:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051116:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005111a:	e78f      	b.n	d005103c <entityRotation.part.0+0x90>
d005111c:	eeb0 1a42 	vmov.f32	s2, s4
d0051120:	eef0 0a61 	vmov.f32	s1, s3
d0051124:	eeb0 3a40 	vmov.f32	s6, s0
d0051128:	eeb0 0a61 	vmov.f32	s0, s3
d005112c:	eef0 2a61 	vmov.f32	s5, s3
d0051130:	f7ff f98a 	bl	d0050448 <rotateAroundAxis>
d0051134:	eeb0 7a60 	vmov.f32	s14, s1
d0051138:	eef0 6a40 	vmov.f32	s13, s0
d005113c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051140:	eef0 7a41 	vmov.f32	s15, s2
d0051144:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051148:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005114c:	eeb0 3a49 	vmov.f32	s6, s18
d0051150:	eddd 1a01 	vldr	s3, [sp, #4]
d0051154:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051158:	eddd 2a03 	vldr	s5, [sp, #12]
d005115c:	edc4 6a07 	vstr	s13, [r4, #28]
d0051160:	ed84 7a08 	vstr	s14, [r4, #32]
d0051164:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051168:	f7ff f96e 	bl	d0050448 <rotateAroundAxis>
d005116c:	eef0 6a40 	vmov.f32	s13, s0
d0051170:	eeb0 7a60 	vmov.f32	s14, s1
d0051174:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051178:	eef0 7a41 	vmov.f32	s15, s2
d005117c:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051180:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051184:	eeb0 3a49 	vmov.f32	s6, s18
d0051188:	eddd 1a01 	vldr	s3, [sp, #4]
d005118c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051190:	eddd 2a03 	vldr	s5, [sp, #12]
d0051194:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051198:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d005119c:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00511a0:	f7ff f952 	bl	d0050448 <rotateAroundAxis>
d00511a4:	eef5 8a40 	vcmp.f32	s17, #0.0
d00511a8:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00511ac:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00511b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00511b4:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00511b8:	f43f af3a 	beq.w	d0051030 <entityRotation.part.0+0x84>
d00511bc:	ed94 0a07 	vldr	s0, [r4, #28]
d00511c0:	eeb0 3a68 	vmov.f32	s6, s17
d00511c4:	edd4 0a08 	vldr	s1, [r4, #32]
d00511c8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00511cc:	eddd 1a04 	vldr	s3, [sp, #16]
d00511d0:	ed9d 2a05 	vldr	s4, [sp, #20]
d00511d4:	eddd 2a06 	vldr	s5, [sp, #24]
d00511d8:	f7ff f936 	bl	d0050448 <rotateAroundAxis>
d00511dc:	eef0 6a40 	vmov.f32	s13, s0
d00511e0:	eeb0 7a60 	vmov.f32	s14, s1
d00511e4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00511e8:	eef0 7a41 	vmov.f32	s15, s2
d00511ec:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00511f0:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00511f4:	eeb0 3a68 	vmov.f32	s6, s17
d00511f8:	eddd 1a04 	vldr	s3, [sp, #16]
d00511fc:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051200:	eddd 2a06 	vldr	s5, [sp, #24]
d0051204:	edc4 6a07 	vstr	s13, [r4, #28]
d0051208:	ed84 7a08 	vstr	s14, [r4, #32]
d005120c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051210:	f7ff f91a 	bl	d0050448 <rotateAroundAxis>
d0051214:	eef0 6a40 	vmov.f32	s13, s0
d0051218:	eeb0 7a60 	vmov.f32	s14, s1
d005121c:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051220:	eef0 7a41 	vmov.f32	s15, s2
d0051224:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051228:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d005122c:	eeb0 3a68 	vmov.f32	s6, s17
d0051230:	eddd 1a04 	vldr	s3, [sp, #16]
d0051234:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051238:	eddd 2a06 	vldr	s5, [sp, #24]
d005123c:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051240:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051244:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051248:	f7ff f8fe 	bl	d0050448 <rotateAroundAxis>
d005124c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051250:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051254:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051258:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005125c:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051260:	f43f aeec 	beq.w	d005103c <entityRotation.part.0+0x90>
d0051264:	eeb0 3a48 	vmov.f32	s6, s16
d0051268:	eddd 1a07 	vldr	s3, [sp, #28]
d005126c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051270:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051274:	ed94 0a07 	vldr	s0, [r4, #28]
d0051278:	edd4 0a08 	vldr	s1, [r4, #32]
d005127c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051280:	e70b      	b.n	d005109a <entityRotation.part.0+0xee>
d0051282:	bf00      	nop
d0051284:	d00f4a80 	.word	0xd00f4a80
d0051288:	00000000 	.word	0x00000000
d005128c:	f104 0334 	add.w	r3, r4, #52	; 0x34
d0051290:	af01      	add	r7, sp, #4
d0051292:	eeb0 3a40 	vmov.f32	s6, s0
d0051296:	edd4 0a08 	vldr	s1, [r4, #32]
d005129a:	ed94 0a07 	vldr	s0, [r4, #28]
d005129e:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00512a2:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00512a6:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d00512aa:	eddd 1a01 	vldr	s3, [sp, #4]
d00512ae:	ed9d 2a02 	vldr	s4, [sp, #8]
d00512b2:	eddd 2a03 	vldr	s5, [sp, #12]
d00512b6:	f7ff f8c7 	bl	d0050448 <rotateAroundAxis>
d00512ba:	eef0 6a40 	vmov.f32	s13, s0
d00512be:	eeb0 7a60 	vmov.f32	s14, s1
d00512c2:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00512c6:	eef0 7a41 	vmov.f32	s15, s2
d00512ca:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00512ce:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00512d2:	eeb0 3a49 	vmov.f32	s6, s18
d00512d6:	eddd 1a01 	vldr	s3, [sp, #4]
d00512da:	ed9d 2a02 	vldr	s4, [sp, #8]
d00512de:	eddd 2a03 	vldr	s5, [sp, #12]
d00512e2:	edc4 6a07 	vstr	s13, [r4, #28]
d00512e6:	ed84 7a08 	vstr	s14, [r4, #32]
d00512ea:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00512ee:	f7ff f8ab 	bl	d0050448 <rotateAroundAxis>
d00512f2:	eef0 6a40 	vmov.f32	s13, s0
d00512f6:	eeb0 7a60 	vmov.f32	s14, s1
d00512fa:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00512fe:	eef0 7a41 	vmov.f32	s15, s2
d0051302:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0051306:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d005130a:	eeb0 3a49 	vmov.f32	s6, s18
d005130e:	eddd 1a01 	vldr	s3, [sp, #4]
d0051312:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051316:	eddd 2a03 	vldr	s5, [sp, #12]
d005131a:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d005131e:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051322:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0051326:	f7ff f88f 	bl	d0050448 <rotateAroundAxis>
d005132a:	eef5 8a40 	vcmp.f32	s17, #0.0
d005132e:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051332:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051336:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005133a:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005133e:	f43f ae92 	beq.w	d0051066 <entityRotation.part.0+0xba>
d0051342:	19ab      	adds	r3, r5, r6
d0051344:	af04      	add	r7, sp, #16
d0051346:	ed94 0a07 	vldr	s0, [r4, #28]
d005134a:	eeb0 3a68 	vmov.f32	s6, s17
d005134e:	3328      	adds	r3, #40	; 0x28
d0051350:	edd4 0a08 	vldr	s1, [r4, #32]
d0051354:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051358:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005135c:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0051360:	eddd 1a04 	vldr	s3, [sp, #16]
d0051364:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051368:	eddd 2a06 	vldr	s5, [sp, #24]
d005136c:	f7ff f86c 	bl	d0050448 <rotateAroundAxis>
d0051370:	eef0 6a40 	vmov.f32	s13, s0
d0051374:	eeb0 7a60 	vmov.f32	s14, s1
d0051378:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005137c:	eef0 7a41 	vmov.f32	s15, s2
d0051380:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051384:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051388:	eeb0 3a68 	vmov.f32	s6, s17
d005138c:	eddd 1a04 	vldr	s3, [sp, #16]
d0051390:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051394:	eddd 2a06 	vldr	s5, [sp, #24]
d0051398:	edc4 6a07 	vstr	s13, [r4, #28]
d005139c:	ed84 7a08 	vstr	s14, [r4, #32]
d00513a0:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00513a4:	f7ff f850 	bl	d0050448 <rotateAroundAxis>
d00513a8:	eef0 6a40 	vmov.f32	s13, s0
d00513ac:	eeb0 7a60 	vmov.f32	s14, s1
d00513b0:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00513b4:	eef0 7a41 	vmov.f32	s15, s2
d00513b8:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00513bc:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00513c0:	eeb0 3a68 	vmov.f32	s6, s17
d00513c4:	eddd 1a04 	vldr	s3, [sp, #16]
d00513c8:	ed9d 2a05 	vldr	s4, [sp, #20]
d00513cc:	eddd 2a06 	vldr	s5, [sp, #24]
d00513d0:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00513d4:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00513d8:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00513dc:	f7ff f834 	bl	d0050448 <rotateAroundAxis>
d00513e0:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00513e4:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00513e8:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00513ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00513f0:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00513f4:	f43f ae22 	beq.w	d005103c <entityRotation.part.0+0x90>
d00513f8:	e63a      	b.n	d0051070 <entityRotation.part.0+0xc4>
d00513fa:	bf00      	nop

d00513fc <entityIdValid>:
d00513fc:	28ff      	cmp	r0, #255	; 0xff
d00513fe:	d80a      	bhi.n	d0051416 <entityIdValid+0x1a>
d0051400:	4b06      	ldr	r3, [pc, #24]	; (d005141c <entityIdValid+0x20>)
d0051402:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0051406:	f893 0040 	ldrb.w	r0, [r3, #64]	; 0x40
d005140a:	b128      	cbz	r0, d0051418 <entityIdValid+0x1c>
d005140c:	6998      	ldr	r0, [r3, #24]
d005140e:	3800      	subs	r0, #0
d0051410:	bf18      	it	ne
d0051412:	2001      	movne	r0, #1
d0051414:	4770      	bx	lr
d0051416:	2000      	movs	r0, #0
d0051418:	4770      	bx	lr
d005141a:	bf00      	nop
d005141c:	d00f4a80 	.word	0xd00f4a80

d0051420 <freeMesh>:
d0051420:	b1b8      	cbz	r0, d0051452 <freeMesh+0x32>
d0051422:	b510      	push	{r4, lr}
d0051424:	4604      	mov	r4, r0
d0051426:	6800      	ldr	r0, [r0, #0]
d0051428:	b108      	cbz	r0, d005142e <freeMesh+0xe>
d005142a:	f004 f85f 	bl	d00554ec <free>
d005142e:	6920      	ldr	r0, [r4, #16]
d0051430:	b108      	cbz	r0, d0051436 <freeMesh+0x16>
d0051432:	f004 f85b 	bl	d00554ec <free>
d0051436:	68a0      	ldr	r0, [r4, #8]
d0051438:	b108      	cbz	r0, d005143e <freeMesh+0x1e>
d005143a:	f004 f857 	bl	d00554ec <free>
d005143e:	2300      	movs	r3, #0
d0051440:	2200      	movs	r2, #0
d0051442:	6023      	str	r3, [r4, #0]
d0051444:	6123      	str	r3, [r4, #16]
d0051446:	60a3      	str	r3, [r4, #8]
d0051448:	6063      	str	r3, [r4, #4]
d005144a:	6163      	str	r3, [r4, #20]
d005144c:	60e3      	str	r3, [r4, #12]
d005144e:	61a2      	str	r2, [r4, #24]
d0051450:	bd10      	pop	{r4, pc}
d0051452:	4770      	bx	lr

d0051454 <meshComputeBoundsRadius>:
d0051454:	b1f0      	cbz	r0, d0051494 <meshComputeBoundsRadius+0x40>
d0051456:	6803      	ldr	r3, [r0, #0]
d0051458:	b1e3      	cbz	r3, d0051494 <meshComputeBoundsRadius+0x40>
d005145a:	6842      	ldr	r2, [r0, #4]
d005145c:	2a00      	cmp	r2, #0
d005145e:	dd19      	ble.n	d0051494 <meshComputeBoundsRadius+0x40>
d0051460:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0051464:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d005149c <meshComputeBoundsRadius+0x48>
d0051468:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d005146c:	edd3 7a01 	vldr	s15, [r3, #4]
d0051470:	330c      	adds	r3, #12
d0051472:	ed53 6a03 	vldr	s13, [r3, #-12]
d0051476:	ee67 7aa7 	vmul.f32	s15, s15, s15
d005147a:	ed13 7a01 	vldr	s14, [r3, #-4]
d005147e:	429a      	cmp	r2, r3
d0051480:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0051484:	eee7 7a07 	vfma.f32	s15, s14, s14
d0051488:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d005148c:	d1ee      	bne.n	d005146c <meshComputeBoundsRadius+0x18>
d005148e:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0051492:	4770      	bx	lr
d0051494:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005149c <meshComputeBoundsRadius+0x48>
d0051498:	4770      	bx	lr
d005149a:	bf00      	nop
d005149c:	00000000 	.word	0x00000000

d00514a0 <entityWorldSpawn>:
d00514a0:	b5f0      	push	{r4, r5, r6, r7, lr}
d00514a2:	4d20      	ldr	r5, [pc, #128]	; (d0051524 <entityWorldSpawn+0x84>)
d00514a4:	b085      	sub	sp, #20
d00514a6:	2300      	movs	r3, #0
d00514a8:	462a      	mov	r2, r5
d00514aa:	ed8d 0a01 	vstr	s0, [sp, #4]
d00514ae:	edcd 0a02 	vstr	s1, [sp, #8]
d00514b2:	ed8d 1a03 	vstr	s2, [sp, #12]
d00514b6:	e003      	b.n	d00514c0 <entityWorldSpawn+0x20>
d00514b8:	3301      	adds	r3, #1
d00514ba:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00514be:	d02c      	beq.n	d005151a <entityWorldSpawn+0x7a>
d00514c0:	f892 4040 	ldrb.w	r4, [r2, #64]	; 0x40
d00514c4:	3280      	adds	r2, #128	; 0x80
d00514c6:	2c00      	cmp	r4, #0
d00514c8:	d1f6      	bne.n	d00514b8 <entityWorldSpawn+0x18>
d00514ca:	eb05 15c3 	add.w	r5, r5, r3, lsl #7
d00514ce:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00514d2:	af01      	add	r7, sp, #4
d00514d4:	2600      	movs	r6, #0
d00514d6:	61a8      	str	r0, [r5, #24]
d00514d8:	f105 0e0c 	add.w	lr, r5, #12
d00514dc:	62aa      	str	r2, [r5, #40]	; 0x28
d00514de:	ea4f 1cc3 	mov.w	ip, r3, lsl #7
d00514e2:	63aa      	str	r2, [r5, #56]	; 0x38
d00514e4:	626a      	str	r2, [r5, #36]	; 0x24
d00514e6:	62ee      	str	r6, [r5, #44]	; 0x2c
d00514e8:	632e      	str	r6, [r5, #48]	; 0x30
d00514ea:	636e      	str	r6, [r5, #52]	; 0x34
d00514ec:	63ee      	str	r6, [r5, #60]	; 0x3c
d00514ee:	61ee      	str	r6, [r5, #28]
d00514f0:	622e      	str	r6, [r5, #32]
d00514f2:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d00514f6:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00514fa:	e88e 0007 	stmia.w	lr, {r0, r1, r2}
d00514fe:	4a0a      	ldr	r2, [pc, #40]	; (d0051528 <entityWorldSpawn+0x88>)
d0051500:	f240 1101 	movw	r1, #257	; 0x101
d0051504:	4618      	mov	r0, r3
d0051506:	f82c 1002 	strh.w	r1, [ip, r2]
d005150a:	f885 4042 	strb.w	r4, [r5, #66]	; 0x42
d005150e:	64ae      	str	r6, [r5, #72]	; 0x48
d0051510:	64ee      	str	r6, [r5, #76]	; 0x4c
d0051512:	652e      	str	r6, [r5, #80]	; 0x50
d0051514:	646e      	str	r6, [r5, #68]	; 0x44
d0051516:	b005      	add	sp, #20
d0051518:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005151a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d005151e:	4618      	mov	r0, r3
d0051520:	b005      	add	sp, #20
d0051522:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0051524:	d00f4a80 	.word	0xd00f4a80
d0051528:	d00f4ac0 	.word	0xd00f4ac0

d005152c <entitySetPosition>:
d005152c:	b410      	push	{r4}
d005152e:	28ff      	cmp	r0, #255	; 0xff
d0051530:	b085      	sub	sp, #20
d0051532:	ed8d 0a01 	vstr	s0, [sp, #4]
d0051536:	edcd 0a02 	vstr	s1, [sp, #8]
d005153a:	ed8d 1a03 	vstr	s2, [sp, #12]
d005153e:	d812      	bhi.n	d0051566 <entitySetPosition+0x3a>
d0051540:	4b0b      	ldr	r3, [pc, #44]	; (d0051570 <entitySetPosition+0x44>)
d0051542:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0051546:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d005154a:	b162      	cbz	r2, d0051566 <entitySetPosition+0x3a>
d005154c:	699a      	ldr	r2, [r3, #24]
d005154e:	b152      	cbz	r2, d0051566 <entitySetPosition+0x3a>
d0051550:	f103 040c 	add.w	r4, r3, #12
d0051554:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051558:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d005155c:	aa04      	add	r2, sp, #16
d005155e:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0051562:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0051566:	b005      	add	sp, #20
d0051568:	f85d 4b04 	ldr.w	r4, [sp], #4
d005156c:	4770      	bx	lr
d005156e:	bf00      	nop
d0051570:	d00f4a80 	.word	0xd00f4a80

d0051574 <entityGetPosition>:
d0051574:	28ff      	cmp	r0, #255	; 0xff
d0051576:	b088      	sub	sp, #32
d0051578:	d80c      	bhi.n	d0051594 <entityGetPosition+0x20>
d005157a:	4b0c      	ldr	r3, [pc, #48]	; (d00515ac <entityGetPosition+0x38>)
d005157c:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0051580:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0051584:	b133      	cbz	r3, d0051594 <entityGetPosition+0x20>
d0051586:	6983      	ldr	r3, [r0, #24]
d0051588:	b123      	cbz	r3, d0051594 <entityGetPosition+0x20>
d005158a:	ab08      	add	r3, sp, #32
d005158c:	c807      	ldmia	r0, {r0, r1, r2}
d005158e:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0051592:	e003      	b.n	d005159c <entityGetPosition+0x28>
d0051594:	2300      	movs	r3, #0
d0051596:	9305      	str	r3, [sp, #20]
d0051598:	9306      	str	r3, [sp, #24]
d005159a:	9307      	str	r3, [sp, #28]
d005159c:	ed9d 0a05 	vldr	s0, [sp, #20]
d00515a0:	eddd 0a06 	vldr	s1, [sp, #24]
d00515a4:	ed9d 1a07 	vldr	s2, [sp, #28]
d00515a8:	b008      	add	sp, #32
d00515aa:	4770      	bx	lr
d00515ac:	d00f4a80 	.word	0xd00f4a80

d00515b0 <entityGetForward>:
d00515b0:	28ff      	cmp	r0, #255	; 0xff
d00515b2:	b088      	sub	sp, #32
d00515b4:	d80d      	bhi.n	d00515d2 <entityGetForward+0x22>
d00515b6:	4b0e      	ldr	r3, [pc, #56]	; (d00515f0 <entityGetForward+0x40>)
d00515b8:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d00515bc:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d00515c0:	b13b      	cbz	r3, d00515d2 <entityGetForward+0x22>
d00515c2:	6983      	ldr	r3, [r0, #24]
d00515c4:	b12b      	cbz	r3, d00515d2 <entityGetForward+0x22>
d00515c6:	301c      	adds	r0, #28
d00515c8:	ab08      	add	r3, sp, #32
d00515ca:	c807      	ldmia	r0, {r0, r1, r2}
d00515cc:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00515d0:	e005      	b.n	d00515de <entityGetForward+0x2e>
d00515d2:	2300      	movs	r3, #0
d00515d4:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00515d8:	9305      	str	r3, [sp, #20]
d00515da:	9207      	str	r2, [sp, #28]
d00515dc:	9306      	str	r3, [sp, #24]
d00515de:	ed9d 0a05 	vldr	s0, [sp, #20]
d00515e2:	eddd 0a06 	vldr	s1, [sp, #24]
d00515e6:	ed9d 1a07 	vldr	s2, [sp, #28]
d00515ea:	b008      	add	sp, #32
d00515ec:	4770      	bx	lr
d00515ee:	bf00      	nop
d00515f0:	d00f4a80 	.word	0xd00f4a80

d00515f4 <entityMoveForward>:
d00515f4:	28ff      	cmp	r0, #255	; 0xff
d00515f6:	d82f      	bhi.n	d0051658 <entityMoveForward+0x64>
d00515f8:	b510      	push	{r4, lr}
d00515fa:	4c18      	ldr	r4, [pc, #96]	; (d005165c <entityMoveForward+0x68>)
d00515fc:	b084      	sub	sp, #16
d00515fe:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0051602:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0051606:	b32b      	cbz	r3, d0051654 <entityMoveForward+0x60>
d0051608:	69a3      	ldr	r3, [r4, #24]
d005160a:	b31b      	cbz	r3, d0051654 <entityMoveForward+0x60>
d005160c:	f104 030c 	add.w	r3, r4, #12
d0051610:	eef0 1a40 	vmov.f32	s3, s0
d0051614:	edd4 0a08 	vldr	s1, [r4, #32]
d0051618:	ed94 0a07 	vldr	s0, [r4, #28]
d005161c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051620:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d0051624:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0051628:	f7fe fe92 	bl	d0050350 <vec3Scale>
d005162c:	eef0 1a40 	vmov.f32	s3, s0
d0051630:	eeb0 2a60 	vmov.f32	s4, s1
d0051634:	ed94 0a00 	vldr	s0, [r4]
d0051638:	eef0 2a41 	vmov.f32	s5, s2
d005163c:	edd4 0a01 	vldr	s1, [r4, #4]
d0051640:	ed94 1a02 	vldr	s2, [r4, #8]
d0051644:	f7fe fe7a 	bl	d005033c <vec3Add>
d0051648:	ed84 0a00 	vstr	s0, [r4]
d005164c:	edc4 0a01 	vstr	s1, [r4, #4]
d0051650:	ed84 1a02 	vstr	s2, [r4, #8]
d0051654:	b004      	add	sp, #16
d0051656:	bd10      	pop	{r4, pc}
d0051658:	4770      	bx	lr
d005165a:	bf00      	nop
d005165c:	d00f4a80 	.word	0xd00f4a80

d0051660 <meshColour>:
d0051660:	b150      	cbz	r0, d0051678 <meshColour+0x18>
d0051662:	6903      	ldr	r3, [r0, #16]
d0051664:	b143      	cbz	r3, d0051678 <meshColour+0x18>
d0051666:	6942      	ldr	r2, [r0, #20]
d0051668:	2a00      	cmp	r2, #0
d005166a:	dd05      	ble.n	d0051678 <meshColour+0x18>
d005166c:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d0051670:	7319      	strb	r1, [r3, #12]
d0051672:	3310      	adds	r3, #16
d0051674:	429a      	cmp	r2, r3
d0051676:	d1fb      	bne.n	d0051670 <meshColour+0x10>
d0051678:	4770      	bx	lr
d005167a:	bf00      	nop

d005167c <entityTurnLocal>:
d005167c:	28ff      	cmp	r0, #255	; 0xff
d005167e:	d82a      	bhi.n	d00516d6 <entityTurnLocal+0x5a>
d0051680:	b510      	push	{r4, lr}
d0051682:	4c65      	ldr	r4, [pc, #404]	; (d0051818 <entityTurnLocal+0x19c>)
d0051684:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0051688:	ed2d 8b04 	vpush	{d8-d9}
d005168c:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0051690:	b1f3      	cbz	r3, d00516d0 <entityTurnLocal+0x54>
d0051692:	69a3      	ldr	r3, [r4, #24]
d0051694:	b1e3      	cbz	r3, d00516d0 <entityTurnLocal+0x54>
d0051696:	eeb5 0a40 	vcmp.f32	s0, #0.0
d005169a:	eeb0 9a40 	vmov.f32	s18, s0
d005169e:	eef0 8a60 	vmov.f32	s17, s1
d00516a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00516a6:	eeb0 8a41 	vmov.f32	s16, s2
d00516aa:	f040 8081 	bne.w	d00517b0 <entityTurnLocal+0x134>
d00516ae:	eef5 8a40 	vcmp.f32	s17, #0.0
d00516b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00516b6:	d148      	bne.n	d005174a <entityTurnLocal+0xce>
d00516b8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00516bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00516c0:	d10a      	bne.n	d00516d8 <entityTurnLocal+0x5c>
d00516c2:	4620      	mov	r0, r4
d00516c4:	ecbd 8b04 	vpop	{d8-d9}
d00516c8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00516cc:	f7ff bc18 	b.w	d0050f00 <normalizeEntity.part.0>
d00516d0:	ecbd 8b04 	vpop	{d8-d9}
d00516d4:	bd10      	pop	{r4, pc}
d00516d6:	4770      	bx	lr
d00516d8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00516dc:	eeb0 3a48 	vmov.f32	s6, s16
d00516e0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00516e4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00516e8:	edd4 1a07 	vldr	s3, [r4, #28]
d00516ec:	ed94 2a08 	vldr	s4, [r4, #32]
d00516f0:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d00516f4:	f7fe fea8 	bl	d0050448 <rotateAroundAxis>
d00516f8:	eef0 6a40 	vmov.f32	s13, s0
d00516fc:	eeb0 7a60 	vmov.f32	s14, s1
d0051700:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051704:	eef0 7a41 	vmov.f32	s15, s2
d0051708:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005170c:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051710:	eeb0 3a48 	vmov.f32	s6, s16
d0051714:	edd4 1a07 	vldr	s3, [r4, #28]
d0051718:	ed94 2a08 	vldr	s4, [r4, #32]
d005171c:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0051720:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0051724:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0051728:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005172c:	f7fe fe8c 	bl	d0050448 <rotateAroundAxis>
d0051730:	4620      	mov	r0, r4
d0051732:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051736:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d005173a:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005173e:	ecbd 8b04 	vpop	{d8-d9}
d0051742:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0051746:	f7ff bbdb 	b.w	d0050f00 <normalizeEntity.part.0>
d005174a:	ed94 0a07 	vldr	s0, [r4, #28]
d005174e:	eeb0 3a68 	vmov.f32	s6, s17
d0051752:	edd4 0a08 	vldr	s1, [r4, #32]
d0051756:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005175a:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d005175e:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0051762:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0051766:	f7fe fe6f 	bl	d0050448 <rotateAroundAxis>
d005176a:	eef0 6a40 	vmov.f32	s13, s0
d005176e:	eeb0 7a60 	vmov.f32	s14, s1
d0051772:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0051776:	eef0 7a41 	vmov.f32	s15, s2
d005177a:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005177e:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0051782:	eeb0 3a68 	vmov.f32	s6, s17
d0051786:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d005178a:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d005178e:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0051792:	edc4 6a07 	vstr	s13, [r4, #28]
d0051796:	ed84 7a08 	vstr	s14, [r4, #32]
d005179a:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005179e:	f7fe fe53 	bl	d0050448 <rotateAroundAxis>
d00517a2:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00517a6:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00517aa:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00517ae:	e783      	b.n	d00516b8 <entityTurnLocal+0x3c>
d00517b0:	eeb0 3a40 	vmov.f32	s6, s0
d00517b4:	edd4 0a08 	vldr	s1, [r4, #32]
d00517b8:	ed94 0a07 	vldr	s0, [r4, #28]
d00517bc:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00517c0:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d00517c4:	ed94 2a0e 	vldr	s4, [r4, #56]	; 0x38
d00517c8:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d00517cc:	f7fe fe3c 	bl	d0050448 <rotateAroundAxis>
d00517d0:	eef0 6a40 	vmov.f32	s13, s0
d00517d4:	eeb0 7a60 	vmov.f32	s14, s1
d00517d8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00517dc:	eef0 7a41 	vmov.f32	s15, s2
d00517e0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00517e4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00517e8:	eeb0 3a49 	vmov.f32	s6, s18
d00517ec:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d00517f0:	ed94 2a0e 	vldr	s4, [r4, #56]	; 0x38
d00517f4:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d00517f8:	edc4 6a07 	vstr	s13, [r4, #28]
d00517fc:	ed84 7a08 	vstr	s14, [r4, #32]
d0051800:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051804:	f7fe fe20 	bl	d0050448 <rotateAroundAxis>
d0051808:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d005180c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0051810:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051814:	e74b      	b.n	d00516ae <entityTurnLocal+0x32>
d0051816:	bf00      	nop
d0051818:	d00f4a80 	.word	0xd00f4a80

d005181c <entityRotation>:
d005181c:	28ff      	cmp	r0, #255	; 0xff
d005181e:	d809      	bhi.n	d0051834 <entityRotation+0x18>
d0051820:	4a05      	ldr	r2, [pc, #20]	; (d0051838 <entityRotation+0x1c>)
d0051822:	eb02 13c0 	add.w	r3, r2, r0, lsl #7
d0051826:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d005182a:	b11a      	cbz	r2, d0051834 <entityRotation+0x18>
d005182c:	699b      	ldr	r3, [r3, #24]
d005182e:	b10b      	cbz	r3, d0051834 <entityRotation+0x18>
d0051830:	f7ff bbbc 	b.w	d0050fac <entityRotation.part.0>
d0051834:	4770      	bx	lr
d0051836:	bf00      	nop
d0051838:	d00f4a80 	.word	0xd00f4a80

d005183c <createBox>:
d005183c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051840:	ed2d 8b04 	vpush	{d8-d9}
d0051844:	b0e1      	sub	sp, #388	; 0x184
d0051846:	f04f 0824 	mov.w	r8, #36	; 0x24
d005184a:	4606      	mov	r6, r0
d005184c:	2100      	movs	r1, #0
d005184e:	f20d 1547 	addw	r5, sp, #327	; 0x147
d0051852:	4642      	mov	r2, r8
d0051854:	eeb0 8a41 	vmov.f32	s16, s2
d0051858:	9601      	str	r6, [sp, #4]
d005185a:	f025 051f 	bic.w	r5, r5, #31
d005185e:	eeb0 9a40 	vmov.f32	s18, s0
d0051862:	eef0 8a60 	vmov.f32	s17, s1
d0051866:	f04f 090c 	mov.w	r9, #12
d005186a:	f105 001c 	add.w	r0, r5, #28
d005186e:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d0051872:	f003 fe5f 	bl	d0055534 <memset>
d0051876:	2308      	movs	r3, #8
d0051878:	2060      	movs	r0, #96	; 0x60
d005187a:	f04f 0b04 	mov.w	fp, #4
d005187e:	606b      	str	r3, [r5, #4]
d0051880:	f003 fe2c 	bl	d00554dc <malloc>
d0051884:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d0051888:	4604      	mov	r4, r0
d005188a:	2060      	movs	r0, #96	; 0x60
d005188c:	f8c5 900c 	str.w	r9, [r5, #12]
d0051890:	602c      	str	r4, [r5, #0]
d0051892:	2604      	movs	r6, #4
d0051894:	ee29 0a01 	vmul.f32	s0, s18, s2
d0051898:	ee68 0a81 	vmul.f32	s1, s17, s2
d005189c:	ee28 1a01 	vmul.f32	s2, s16, s2
d00518a0:	eef1 6a40 	vneg.f32	s13, s0
d00518a4:	ed84 0a03 	vstr	s0, [r4, #12]
d00518a8:	eeb1 7a60 	vneg.f32	s14, s1
d00518ac:	ed84 0a06 	vstr	s0, [r4, #24]
d00518b0:	eef1 7a41 	vneg.f32	s15, s2
d00518b4:	ed84 1a08 	vstr	s2, [r4, #32]
d00518b8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00518bc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00518c0:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d00518c4:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d00518c8:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d00518cc:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d00518d0:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d00518d4:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d00518d8:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d00518dc:	edc4 6a00 	vstr	s13, [r4]
d00518e0:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d00518e4:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d00518e8:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d00518ec:	ed84 7a01 	vstr	s14, [r4, #4]
d00518f0:	ed84 7a04 	vstr	s14, [r4, #16]
d00518f4:	ed84 7a07 	vstr	s14, [r4, #28]
d00518f8:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d00518fc:	edc4 7a02 	vstr	s15, [r4, #8]
d0051900:	edc4 7a05 	vstr	s15, [r4, #20]
d0051904:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0051908:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d005190c:	f003 fde6 	bl	d00554dc <malloc>
d0051910:	4607      	mov	r7, r0
d0051912:	2260      	movs	r2, #96	; 0x60
d0051914:	a802      	add	r0, sp, #8
d0051916:	4987      	ldr	r1, [pc, #540]	; (d0051b34 <createBox+0x2f8>)
d0051918:	60af      	str	r7, [r5, #8]
d005191a:	f003 fdfd 	bl	d0055518 <memcpy>
d005191e:	a902      	add	r1, sp, #8
d0051920:	2260      	movs	r2, #96	; 0x60
d0051922:	4638      	mov	r0, r7
d0051924:	f003 fdf8 	bl	d0055518 <memcpy>
d0051928:	4650      	mov	r0, sl
d005192a:	f8c5 9014 	str.w	r9, [r5, #20]
d005192e:	f003 fdd5 	bl	d00554dc <malloc>
d0051932:	4607      	mov	r7, r0
d0051934:	4652      	mov	r2, sl
d0051936:	a81a      	add	r0, sp, #104	; 0x68
d0051938:	2100      	movs	r1, #0
d005193a:	612f      	str	r7, [r5, #16]
d005193c:	f003 fdfa 	bl	d0055534 <memset>
d0051940:	f04f 0c02 	mov.w	ip, #2
d0051944:	4638      	mov	r0, r7
d0051946:	2705      	movs	r7, #5
d0051948:	4652      	mov	r2, sl
d005194a:	f04f 0903 	mov.w	r9, #3
d005194e:	f04f 0a06 	mov.w	sl, #6
d0051952:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d0051956:	f04f 0e01 	mov.w	lr, #1
d005195a:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d005195e:	f04f 0804 	mov.w	r8, #4
d0051962:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d0051966:	2307      	movs	r3, #7
d0051968:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d005196c:	2122      	movs	r1, #34	; 0x22
d005196e:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d0051972:	f04f 0c06 	mov.w	ip, #6
d0051976:	9724      	str	r7, [sp, #144]	; 0x90
d0051978:	972c      	str	r7, [sp, #176]	; 0xb0
d005197a:	972f      	str	r7, [sp, #188]	; 0xbc
d005197c:	2707      	movs	r7, #7
d005197e:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d0051982:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d0051986:	f04f 0905 	mov.w	r9, #5
d005198a:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d005198e:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d0051992:	f04f 0a01 	mov.w	sl, #1
d0051996:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d005199a:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d005199e:	f04f 0801 	mov.w	r8, #1
d00519a2:	933c      	str	r3, [sp, #240]	; 0xf0
d00519a4:	2323      	movs	r3, #35	; 0x23
d00519a6:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d00519aa:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d00519ae:	f04f 0e25 	mov.w	lr, #37	; 0x25
d00519b2:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d00519b6:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d00519ba:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d00519be:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d00519c2:	a91a      	add	r1, sp, #104	; 0x68
d00519c4:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d00519c8:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d00519cc:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d00519d0:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d00519d4:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d00519d8:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d00519dc:	f04f 0b06 	mov.w	fp, #6
d00519e0:	2602      	movs	r6, #2
d00519e2:	2706      	movs	r7, #6
d00519e4:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d00519e8:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d00519ec:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d00519f0:	f04f 0802 	mov.w	r8, #2
d00519f4:	f04f 0907 	mov.w	r9, #7
d00519f8:	f04f 0a03 	mov.w	sl, #3
d00519fc:	f04f 0b07 	mov.w	fp, #7
d0051a00:	2603      	movs	r6, #3
d0051a02:	2704      	movs	r7, #4
d0051a04:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d0051a08:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d0051a0c:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d0051a10:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d0051a14:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d0051a18:	f003 fd7e 	bl	d0055518 <memcpy>
d0051a1c:	edd4 7a01 	vldr	s15, [r4, #4]
d0051a20:	ed94 6a04 	vldr	s12, [r4, #16]
d0051a24:	4628      	mov	r0, r5
d0051a26:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d0051a2a:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0051a2e:	ed94 7a07 	vldr	s14, [r4, #28]
d0051a32:	ee66 7a06 	vmul.f32	s15, s12, s12
d0051a36:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d0051a3a:	ee25 4aa5 	vmul.f32	s8, s11, s11
d0051a3e:	ed94 3a00 	vldr	s6, [r4]
d0051a42:	ee27 7a07 	vmul.f32	s14, s14, s14
d0051a46:	edd4 3a03 	vldr	s7, [r4, #12]
d0051a4a:	ee66 4a06 	vmul.f32	s9, s12, s12
d0051a4e:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d0051a52:	eee3 6a03 	vfma.f32	s13, s6, s6
d0051a56:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d0051a5a:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0051a5e:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d0051a62:	ee25 5a05 	vmul.f32	s10, s10, s10
d0051a66:	edd4 2a06 	vldr	s5, [r4, #24]
d0051a6a:	ee65 5aa5 	vmul.f32	s11, s11, s11
d0051a6e:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d0051a72:	ee26 6a06 	vmul.f32	s12, s12, s12
d0051a76:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d0051a7a:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0051a7e:	eea3 4a03 	vfma.f32	s8, s6, s6
d0051a82:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0051a86:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d0051a8a:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0051a8e:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d0051a92:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0051a96:	eee3 5a03 	vfma.f32	s11, s6, s6
d0051a9a:	ed94 3a02 	vldr	s6, [r4, #8]
d0051a9e:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0051aa2:	edd4 3a05 	vldr	s7, [r4, #20]
d0051aa6:	eee3 6a03 	vfma.f32	s13, s6, s6
d0051aaa:	edd4 2a08 	vldr	s5, [r4, #32]
d0051aae:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d0051ab2:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0051ab6:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d0051aba:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0051abe:	eea3 4a03 	vfma.f32	s8, s6, s6
d0051ac2:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d0051ac6:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0051aca:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d0051ace:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d0051ad2:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0051ad6:	eee3 5a03 	vfma.f32	s11, s6, s6
d0051ada:	ed9f 3a17 	vldr	s6, [pc, #92]	; d0051b38 <createBox+0x2fc>
d0051ade:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0051ae2:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d0051ae6:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d0051aea:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d0051aee:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d0051af2:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d0051af6:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0051afa:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0051afe:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d0051b02:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0051b06:	ed85 7a06 	vstr	s14, [r5, #24]
d0051b0a:	f7fc ff41 	bl	d004e990 <meshSetDefaultMaterial>
d0051b0e:	9e01      	ldr	r6, [sp, #4]
d0051b10:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051b12:	4634      	mov	r4, r6
d0051b14:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051b16:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051b18:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051b1a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051b1c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051b1e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051b22:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0051b26:	4630      	mov	r0, r6
d0051b28:	b061      	add	sp, #388	; 0x184
d0051b2a:	ecbd 8b04 	vpop	{d8-d9}
d0051b2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051b32:	bf00      	nop
d0051b34:	d00578e0 	.word	0xd00578e0
d0051b38:	00000000 	.word	0x00000000

d0051b3c <createTorus>:
d0051b3c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051b40:	ed2d 8b0a 	vpush	{d8-d12}
d0051b44:	b09d      	sub	sp, #116	; 0x74
d0051b46:	4616      	mov	r6, r2
d0051b48:	f101 0a01 	add.w	sl, r1, #1
d0051b4c:	460d      	mov	r5, r1
d0051b4e:	f10d 0437 	add.w	r4, sp, #55	; 0x37
d0051b52:	4603      	mov	r3, r0
d0051b54:	fb06 a10a 	mla	r1, r6, sl, sl
d0051b58:	2228      	movs	r2, #40	; 0x28
d0051b5a:	f024 041f 	bic.w	r4, r4, #31
d0051b5e:	eeb0 aa40 	vmov.f32	s20, s0
d0051b62:	9102      	str	r1, [sp, #8]
d0051b64:	2100      	movs	r1, #0
d0051b66:	f104 0018 	add.w	r0, r4, #24
d0051b6a:	eef0 8a60 	vmov.f32	s17, s1
d0051b6e:	9305      	str	r3, [sp, #20]
d0051b70:	2700      	movs	r7, #0
d0051b72:	9500      	str	r5, [sp, #0]
d0051b74:	f003 fcde 	bl	d0055534 <memset>
d0051b78:	9a02      	ldr	r2, [sp, #8]
d0051b7a:	fb06 f505 	mul.w	r5, r6, r5
d0051b7e:	60e7      	str	r7, [r4, #12]
d0051b80:	eb02 0042 	add.w	r0, r2, r2, lsl #1
d0051b84:	6062      	str	r2, [r4, #4]
d0051b86:	006b      	lsls	r3, r5, #1
d0051b88:	9403      	str	r4, [sp, #12]
d0051b8a:	0080      	lsls	r0, r0, #2
d0051b8c:	6163      	str	r3, [r4, #20]
d0051b8e:	f003 fca5 	bl	d00554dc <malloc>
d0051b92:	4603      	mov	r3, r0
d0051b94:	0168      	lsls	r0, r5, #5
d0051b96:	9d03      	ldr	r5, [sp, #12]
d0051b98:	9304      	str	r3, [sp, #16]
d0051b9a:	602b      	str	r3, [r5, #0]
d0051b9c:	f003 fc9e 	bl	d00554dc <malloc>
d0051ba0:	9b00      	ldr	r3, [sp, #0]
d0051ba2:	60af      	str	r7, [r5, #8]
d0051ba4:	42bb      	cmp	r3, r7
d0051ba6:	9001      	str	r0, [sp, #4]
d0051ba8:	6128      	str	r0, [r5, #16]
d0051baa:	f2c0 8099 	blt.w	d0051ce0 <createTorus+0x1a4>
d0051bae:	ee07 3a90 	vmov	s15, r3
d0051bb2:	42be      	cmp	r6, r7
d0051bb4:	f106 0401 	add.w	r4, r6, #1
d0051bb8:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0051bbc:	ee07 6a90 	vmov	s15, r6
d0051bc0:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0051bc4:	db5d      	blt.n	d0051c82 <createTorus+0x146>
d0051bc6:	eddf 7a63 	vldr	s15, [pc, #396]	; d0051d54 <createTorus+0x218>
d0051bca:	eb04 0844 	add.w	r8, r4, r4, lsl #1
d0051bce:	ed9f 9a62 	vldr	s18, [pc, #392]	; d0051d58 <createTorus+0x21c>
d0051bd2:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0051bd6:	eec7 aaa6 	vdiv.f32	s21, s15, s13
d0051bda:	ea4f 0888 	mov.w	r8, r8, lsl #2
d0051bde:	9d04      	ldr	r5, [sp, #16]
d0051be0:	ee87 ca87 	vdiv.f32	s24, s15, s14
d0051be4:	eef0 ba49 	vmov.f32	s23, s18
d0051be8:	ee38 ba8a 	vadd.f32	s22, s17, s20
d0051bec:	ee29 7a8b 	vmul.f32	s14, s19, s22
d0051bf0:	edc5 ba01 	vstr	s23, [r5, #4]
d0051bf4:	ee69 7a0b 	vmul.f32	s15, s18, s22
d0051bf8:	ed85 7a00 	vstr	s14, [r5]
d0051bfc:	edc5 7a02 	vstr	s15, [r5, #8]
d0051c00:	b346      	cbz	r6, d0051c54 <createTorus+0x118>
d0051c02:	46a9      	mov	r9, r5
d0051c04:	f04f 0b01 	mov.w	fp, #1
d0051c08:	ee07 ba90 	vmov	s15, fp
d0051c0c:	f10b 0b01 	add.w	fp, fp, #1
d0051c10:	f109 090c 	add.w	r9, r9, #12
d0051c14:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0051c18:	ee6a ca88 	vmul.f32	s25, s21, s16
d0051c1c:	eeb0 0a6c 	vmov.f32	s0, s25
d0051c20:	f004 fdbe 	bl	d00567a0 <cosf>
d0051c24:	eeb0 8a40 	vmov.f32	s16, s0
d0051c28:	eeb0 0a6c 	vmov.f32	s0, s25
d0051c2c:	f004 ff9c 	bl	d0056b68 <sinf>
d0051c30:	eef0 7a4a 	vmov.f32	s15, s20
d0051c34:	ee28 7a80 	vmul.f32	s14, s17, s0
d0051c38:	455c      	cmp	r4, fp
d0051c3a:	eee8 7a88 	vfma.f32	s15, s17, s16
d0051c3e:	ed89 7a01 	vstr	s14, [r9, #4]
d0051c42:	ee27 7aa9 	vmul.f32	s14, s15, s19
d0051c46:	ee67 7a89 	vmul.f32	s15, s15, s18
d0051c4a:	ed89 7a00 	vstr	s14, [r9]
d0051c4e:	edc9 7a02 	vstr	s15, [r9, #8]
d0051c52:	d1d9      	bne.n	d0051c08 <createTorus+0xcc>
d0051c54:	3701      	adds	r7, #1
d0051c56:	4445      	add	r5, r8
d0051c58:	4557      	cmp	r7, sl
d0051c5a:	d012      	beq.n	d0051c82 <createTorus+0x146>
d0051c5c:	ee07 7a90 	vmov	s15, r7
d0051c60:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0051c64:	ee28 8a0c 	vmul.f32	s16, s16, s24
d0051c68:	eeb0 0a48 	vmov.f32	s0, s16
d0051c6c:	f004 fd98 	bl	d00567a0 <cosf>
d0051c70:	eef0 9a40 	vmov.f32	s19, s0
d0051c74:	eeb0 0a48 	vmov.f32	s0, s16
d0051c78:	f004 ff76 	bl	d0056b68 <sinf>
d0051c7c:	eeb0 9a40 	vmov.f32	s18, s0
d0051c80:	e7b4      	b.n	d0051bec <createTorus+0xb0>
d0051c82:	9b00      	ldr	r3, [sp, #0]
d0051c84:	2b00      	cmp	r3, #0
d0051c86:	dd2b      	ble.n	d0051ce0 <createTorus+0x1a4>
d0051c88:	2e00      	cmp	r6, #0
d0051c8a:	dd29      	ble.n	d0051ce0 <createTorus+0x1a4>
d0051c8c:	f04f 0a00 	mov.w	sl, #0
d0051c90:	0173      	lsls	r3, r6, #5
d0051c92:	46b6      	mov	lr, r6
d0051c94:	f106 0802 	add.w	r8, r6, #2
d0051c98:	46d3      	mov	fp, sl
d0051c9a:	4656      	mov	r6, sl
d0051c9c:	2521      	movs	r5, #33	; 0x21
d0051c9e:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0051ca2:	9301      	str	r3, [sp, #4]
d0051ca4:	4652      	mov	r2, sl
d0051ca6:	464b      	mov	r3, r9
d0051ca8:	4610      	mov	r0, r2
d0051caa:	18a1      	adds	r1, r4, r2
d0051cac:	3201      	adds	r2, #1
d0051cae:	60de      	str	r6, [r3, #12]
d0051cb0:	eb08 0700 	add.w	r7, r8, r0
d0051cb4:	61de      	str	r6, [r3, #28]
d0051cb6:	4596      	cmp	lr, r2
d0051cb8:	6018      	str	r0, [r3, #0]
d0051cba:	731d      	strb	r5, [r3, #12]
d0051cbc:	6099      	str	r1, [r3, #8]
d0051cbe:	605a      	str	r2, [r3, #4]
d0051cc0:	6199      	str	r1, [r3, #24]
d0051cc2:	771d      	strb	r5, [r3, #28]
d0051cc4:	e9c3 2704 	strd	r2, r7, [r3, #16]
d0051cc8:	f103 0320 	add.w	r3, r3, #32
d0051ccc:	d1ec      	bne.n	d0051ca8 <createTorus+0x16c>
d0051cce:	9b01      	ldr	r3, [sp, #4]
d0051cd0:	f10b 0b01 	add.w	fp, fp, #1
d0051cd4:	44a2      	add	sl, r4
d0051cd6:	44a6      	add	lr, r4
d0051cd8:	4499      	add	r9, r3
d0051cda:	9b00      	ldr	r3, [sp, #0]
d0051cdc:	455b      	cmp	r3, fp
d0051cde:	d1e1      	bne.n	d0051ca4 <createTorus+0x168>
d0051ce0:	9902      	ldr	r1, [sp, #8]
d0051ce2:	2900      	cmp	r1, #0
d0051ce4:	dd32      	ble.n	d0051d4c <createTorus+0x210>
d0051ce6:	9b04      	ldr	r3, [sp, #16]
d0051ce8:	fab3 f283 	clz	r2, r3
d0051cec:	0952      	lsrs	r2, r2, #5
d0051cee:	b36b      	cbz	r3, d0051d4c <createTorus+0x210>
d0051cf0:	ed9f 6a19 	vldr	s12, [pc, #100]	; d0051d58 <createTorus+0x21c>
d0051cf4:	edd3 7a01 	vldr	s15, [r3, #4]
d0051cf8:	3201      	adds	r2, #1
d0051cfa:	edd3 6a00 	vldr	s13, [r3]
d0051cfe:	330c      	adds	r3, #12
d0051d00:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0051d04:	ed13 7a01 	vldr	s14, [r3, #-4]
d0051d08:	4291      	cmp	r1, r2
d0051d0a:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0051d0e:	eee7 7a07 	vfma.f32	s15, s14, s14
d0051d12:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0051d16:	dced      	bgt.n	d0051cf4 <createTorus+0x1b8>
d0051d18:	eef1 7ac6 	vsqrt.f32	s15, s12
d0051d1c:	9c03      	ldr	r4, [sp, #12]
d0051d1e:	4620      	mov	r0, r4
d0051d20:	edc4 7a06 	vstr	s15, [r4, #24]
d0051d24:	f7fc fe34 	bl	d004e990 <meshSetDefaultMaterial>
d0051d28:	9e05      	ldr	r6, [sp, #20]
d0051d2a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051d2c:	4635      	mov	r5, r6
d0051d2e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051d30:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051d32:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051d34:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051d36:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051d38:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0051d3c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051d40:	4630      	mov	r0, r6
d0051d42:	b01d      	add	sp, #116	; 0x74
d0051d44:	ecbd 8b0a 	vpop	{d8-d12}
d0051d48:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051d4c:	eddf 7a02 	vldr	s15, [pc, #8]	; d0051d58 <createTorus+0x21c>
d0051d50:	e7e4      	b.n	d0051d1c <createTorus+0x1e0>
d0051d52:	bf00      	nop
d0051d54:	40c90fdb 	.word	0x40c90fdb
d0051d58:	00000000 	.word	0x00000000

d0051d5c <copyMesh>:
d0051d5c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051d60:	460f      	mov	r7, r1
d0051d62:	b083      	sub	sp, #12
d0051d64:	2240      	movs	r2, #64	; 0x40
d0051d66:	2100      	movs	r1, #0
d0051d68:	4606      	mov	r6, r0
d0051d6a:	f003 fbe3 	bl	d0055534 <memset>
d0051d6e:	2f00      	cmp	r7, #0
d0051d70:	d077      	beq.n	d0051e62 <copyMesh+0x106>
d0051d72:	687b      	ldr	r3, [r7, #4]
d0051d74:	697a      	ldr	r2, [r7, #20]
d0051d76:	2b00      	cmp	r3, #0
d0051d78:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0051d7c:	9301      	str	r3, [sp, #4]
d0051d7e:	9200      	str	r2, [sp, #0]
d0051d80:	dc59      	bgt.n	d0051e36 <copyMesh+0xda>
d0051d82:	f1b8 0f00 	cmp.w	r8, #0
d0051d86:	f04f 0900 	mov.w	r9, #0
d0051d8a:	dc5d      	bgt.n	d0051e48 <copyMesh+0xec>
d0051d8c:	9b00      	ldr	r3, [sp, #0]
d0051d8e:	f04f 0a00 	mov.w	sl, #0
d0051d92:	2b00      	cmp	r3, #0
d0051d94:	dc60      	bgt.n	d0051e58 <copyMesh+0xfc>
d0051d96:	f04f 0c00 	mov.w	ip, #0
d0051d9a:	9b01      	ldr	r3, [sp, #4]
d0051d9c:	2b00      	cmp	r3, #0
d0051d9e:	dd0f      	ble.n	d0051dc0 <copyMesh+0x64>
d0051da0:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0051da4:	f8d7 e000 	ldr.w	lr, [r7]
d0051da8:	2300      	movs	r3, #0
d0051daa:	00ad      	lsls	r5, r5, #2
d0051dac:	eb0e 0203 	add.w	r2, lr, r3
d0051db0:	eb09 0403 	add.w	r4, r9, r3
d0051db4:	330c      	adds	r3, #12
d0051db6:	ca07      	ldmia	r2, {r0, r1, r2}
d0051db8:	429d      	cmp	r5, r3
d0051dba:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0051dbe:	d1f5      	bne.n	d0051dac <copyMesh+0x50>
d0051dc0:	f1b8 0f00 	cmp.w	r8, #0
d0051dc4:	dd0b      	ble.n	d0051dde <copyMesh+0x82>
d0051dc6:	68bc      	ldr	r4, [r7, #8]
d0051dc8:	2300      	movs	r3, #0
d0051dca:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0051dce:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0051dd2:	3301      	adds	r3, #1
d0051dd4:	c903      	ldmia	r1, {r0, r1}
d0051dd6:	4598      	cmp	r8, r3
d0051dd8:	e882 0003 	stmia.w	r2, {r0, r1}
d0051ddc:	d1f5      	bne.n	d0051dca <copyMesh+0x6e>
d0051dde:	9b00      	ldr	r3, [sp, #0]
d0051de0:	2b00      	cmp	r3, #0
d0051de2:	dd0e      	ble.n	d0051e02 <copyMesh+0xa6>
d0051de4:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0051de8:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0051dec:	2400      	movs	r4, #0
d0051dee:	eb0b 0304 	add.w	r3, fp, r4
d0051df2:	eb0c 0504 	add.w	r5, ip, r4
d0051df6:	3410      	adds	r4, #16
d0051df8:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0051dfa:	4574      	cmp	r4, lr
d0051dfc:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051e00:	d1f5      	bne.n	d0051dee <copyMesh+0x92>
d0051e02:	9a01      	ldr	r2, [sp, #4]
d0051e04:	f107 0520 	add.w	r5, r7, #32
d0051e08:	69bb      	ldr	r3, [r7, #24]
d0051e0a:	f106 0420 	add.w	r4, r6, #32
d0051e0e:	6072      	str	r2, [r6, #4]
d0051e10:	9a00      	ldr	r2, [sp, #0]
d0051e12:	61b3      	str	r3, [r6, #24]
d0051e14:	6172      	str	r2, [r6, #20]
d0051e16:	f8c6 9000 	str.w	r9, [r6]
d0051e1a:	f8c6 c010 	str.w	ip, [r6, #16]
d0051e1e:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051e20:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0051e22:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051e26:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0051e2a:	4630      	mov	r0, r6
d0051e2c:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0051e30:	b003      	add	sp, #12
d0051e32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051e36:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0051e3a:	0080      	lsls	r0, r0, #2
d0051e3c:	f003 fb4e 	bl	d00554dc <malloc>
d0051e40:	f1b8 0f00 	cmp.w	r8, #0
d0051e44:	4681      	mov	r9, r0
d0051e46:	dda1      	ble.n	d0051d8c <copyMesh+0x30>
d0051e48:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0051e4c:	f003 fb46 	bl	d00554dc <malloc>
d0051e50:	9b00      	ldr	r3, [sp, #0]
d0051e52:	4682      	mov	sl, r0
d0051e54:	2b00      	cmp	r3, #0
d0051e56:	dd9e      	ble.n	d0051d96 <copyMesh+0x3a>
d0051e58:	0118      	lsls	r0, r3, #4
d0051e5a:	f003 fb3f 	bl	d00554dc <malloc>
d0051e5e:	4684      	mov	ip, r0
d0051e60:	e79b      	b.n	d0051d9a <copyMesh+0x3e>
d0051e62:	2300      	movs	r3, #0
d0051e64:	4630      	mov	r0, r6
d0051e66:	e9c6 7700 	strd	r7, r7, [r6]
d0051e6a:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0051e6e:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0051e72:	61b3      	str	r3, [r6, #24]
d0051e74:	b003      	add	sp, #12
d0051e76:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051e7a:	bf00      	nop

d0051e7c <entityLookAtPosition>:
d0051e7c:	28ff      	cmp	r0, #255	; 0xff
d0051e7e:	b530      	push	{r4, r5, lr}
d0051e80:	ed2d 8b04 	vpush	{d8-d9}
d0051e84:	b08d      	sub	sp, #52	; 0x34
d0051e86:	d848      	bhi.n	d0051f1a <entityLookAtPosition+0x9e>
d0051e88:	4b30      	ldr	r3, [pc, #192]	; (d0051f4c <entityLookAtPosition+0xd0>)
d0051e8a:	4604      	mov	r4, r0
d0051e8c:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0051e90:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0051e94:	2a00      	cmp	r2, #0
d0051e96:	d040      	beq.n	d0051f1a <entityLookAtPosition+0x9e>
d0051e98:	699a      	ldr	r2, [r3, #24]
d0051e9a:	2a00      	cmp	r2, #0
d0051e9c:	d03d      	beq.n	d0051f1a <entityLookAtPosition+0x9e>
d0051e9e:	edd3 8a00 	vldr	s17, [r3]
d0051ea2:	460d      	mov	r5, r1
d0051ea4:	ed93 9a01 	vldr	s18, [r3, #4]
d0051ea8:	ee70 8a68 	vsub.f32	s17, s0, s17
d0051eac:	ed93 8a02 	vldr	s16, [r3, #8]
d0051eb0:	ee30 9ac9 	vsub.f32	s18, s1, s18
d0051eb4:	ee31 8a48 	vsub.f32	s16, s2, s16
d0051eb8:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051ebc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051ec0:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0051ec4:	bf14      	ite	ne
d0051ec6:	2300      	movne	r3, #0
d0051ec8:	2301      	moveq	r3, #1
d0051eca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051ece:	bf18      	it	ne
d0051ed0:	2300      	movne	r3, #0
d0051ed2:	b123      	cbz	r3, d0051ede <entityLookAtPosition+0x62>
d0051ed4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051ed8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051edc:	d01d      	beq.n	d0051f1a <entityLookAtPosition+0x9e>
d0051ede:	eef0 0a48 	vmov.f32	s1, s16
d0051ee2:	ee28 8a08 	vmul.f32	s16, s16, s16
d0051ee6:	eeb0 0a68 	vmov.f32	s0, s17
d0051eea:	f004 fedd 	bl	d0056ca8 <atan2f>
d0051eee:	eef0 7a40 	vmov.f32	s15, s0
d0051ef2:	eea8 8aa8 	vfma.f32	s16, s17, s17
d0051ef6:	eeb0 0a49 	vmov.f32	s0, s18
d0051efa:	eeb0 9a67 	vmov.f32	s18, s15
d0051efe:	eef1 0ac8 	vsqrt.f32	s1, s16
d0051f02:	f004 fed1 	bl	d0056ca8 <atan2f>
d0051f06:	eeb1 8a40 	vneg.f32	s16, s0
d0051f0a:	b9a5      	cbnz	r5, d0051f36 <entityLookAtPosition+0xba>
d0051f0c:	2300      	movs	r3, #0
d0051f0e:	ed8d 8a09 	vstr	s16, [sp, #36]	; 0x24
d0051f12:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d0051f16:	930b      	str	r3, [sp, #44]	; 0x2c
d0051f18:	e003      	b.n	d0051f22 <entityLookAtPosition+0xa6>
d0051f1a:	2300      	movs	r3, #0
d0051f1c:	9309      	str	r3, [sp, #36]	; 0x24
d0051f1e:	930a      	str	r3, [sp, #40]	; 0x28
d0051f20:	930b      	str	r3, [sp, #44]	; 0x2c
d0051f22:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0051f26:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0051f2a:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d0051f2e:	b00d      	add	sp, #52	; 0x34
d0051f30:	ecbd 8b04 	vpop	{d8-d9}
d0051f34:	bd30      	pop	{r4, r5, pc}
d0051f36:	eef0 0a48 	vmov.f32	s1, s16
d0051f3a:	4620      	mov	r0, r4
d0051f3c:	eeb0 0a49 	vmov.f32	s0, s18
d0051f40:	2101      	movs	r1, #1
d0051f42:	ed9f 1a03 	vldr	s2, [pc, #12]	; d0051f50 <entityLookAtPosition+0xd4>
d0051f46:	f7ff f831 	bl	d0050fac <entityRotation.part.0>
d0051f4a:	e7df      	b.n	d0051f0c <entityLookAtPosition+0x90>
d0051f4c:	d00f4a80 	.word	0xd00f4a80
d0051f50:	00000000 	.word	0x00000000

d0051f54 <entityAllowHit>:
d0051f54:	28ff      	cmp	r0, #255	; 0xff
d0051f56:	d813      	bhi.n	d0051f80 <entityAllowHit+0x2c>
d0051f58:	4b0a      	ldr	r3, [pc, #40]	; (d0051f84 <entityAllowHit+0x30>)
d0051f5a:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0051f5e:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0051f62:	b16b      	cbz	r3, d0051f80 <entityAllowHit+0x2c>
d0051f64:	6983      	ldr	r3, [r0, #24]
d0051f66:	b15b      	cbz	r3, d0051f80 <entityAllowHit+0x2c>
d0051f68:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d0051f6c:	b121      	cbz	r1, d0051f78 <entityAllowHit+0x24>
d0051f6e:	f043 0302 	orr.w	r3, r3, #2
d0051f72:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0051f76:	4770      	bx	lr
d0051f78:	f023 0302 	bic.w	r3, r3, #2
d0051f7c:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0051f80:	4770      	bx	lr
d0051f82:	bf00      	nop
d0051f84:	d00f4a80 	.word	0xd00f4a80

d0051f88 <entityVisible>:
d0051f88:	28ff      	cmp	r0, #255	; 0xff
d0051f8a:	d813      	bhi.n	d0051fb4 <entityVisible+0x2c>
d0051f8c:	4b0a      	ldr	r3, [pc, #40]	; (d0051fb8 <entityVisible+0x30>)
d0051f8e:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0051f92:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0051f96:	b16b      	cbz	r3, d0051fb4 <entityVisible+0x2c>
d0051f98:	6983      	ldr	r3, [r0, #24]
d0051f9a:	b15b      	cbz	r3, d0051fb4 <entityVisible+0x2c>
d0051f9c:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d0051fa0:	b121      	cbz	r1, d0051fac <entityVisible+0x24>
d0051fa2:	f043 0301 	orr.w	r3, r3, #1
d0051fa6:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0051faa:	4770      	bx	lr
d0051fac:	f023 0301 	bic.w	r3, r3, #1
d0051fb0:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0051fb4:	4770      	bx	lr
d0051fb6:	bf00      	nop
d0051fb8:	d00f4a80 	.word	0xd00f4a80

d0051fbc <entitySweepRaycastTest>:
d0051fbc:	b5f0      	push	{r4, r5, r6, r7, lr}
d0051fbe:	4f16      	ldr	r7, [pc, #88]	; (d0052018 <entitySweepRaycastTest+0x5c>)
d0051fc0:	b08b      	sub	sp, #44	; 0x2c
d0051fc2:	4616      	mov	r6, r2
d0051fc4:	7c3c      	ldrb	r4, [r7, #16]
d0051fc6:	7c7d      	ldrb	r5, [r7, #17]
d0051fc8:	f897 c012 	ldrb.w	ip, [r7, #18]
d0051fcc:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
d0051fd0:	7cff      	ldrb	r7, [r7, #19]
d0051fd2:	461d      	mov	r5, r3
d0051fd4:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
d0051fd8:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d0051fdc:	6823      	ldr	r3, [r4, #0]
d0051fde:	685c      	ldr	r4, [r3, #4]
d0051fe0:	b102      	cbz	r2, d0051fe4 <entitySweepRaycastTest+0x28>
d0051fe2:	aa03      	add	r2, sp, #12
d0051fe4:	b1b5      	cbz	r5, d0052014 <entitySweepRaycastTest+0x58>
d0051fe6:	ab06      	add	r3, sp, #24
d0051fe8:	4f0c      	ldr	r7, [pc, #48]	; (d005201c <entitySweepRaycastTest+0x60>)
d0051fea:	9700      	str	r7, [sp, #0]
d0051fec:	47a0      	blx	r4
d0051fee:	b178      	cbz	r0, d0052010 <entitySweepRaycastTest+0x54>
d0051ff0:	b12e      	cbz	r6, d0051ffe <entitySweepRaycastTest+0x42>
d0051ff2:	9903      	ldr	r1, [sp, #12]
d0051ff4:	9a04      	ldr	r2, [sp, #16]
d0051ff6:	9b05      	ldr	r3, [sp, #20]
d0051ff8:	6031      	str	r1, [r6, #0]
d0051ffa:	6072      	str	r2, [r6, #4]
d0051ffc:	60b3      	str	r3, [r6, #8]
d0051ffe:	b13d      	cbz	r5, d0052010 <entitySweepRaycastTest+0x54>
d0052000:	9c07      	ldr	r4, [sp, #28]
d0052002:	9908      	ldr	r1, [sp, #32]
d0052004:	9a06      	ldr	r2, [sp, #24]
d0052006:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0052008:	606c      	str	r4, [r5, #4]
d005200a:	60a9      	str	r1, [r5, #8]
d005200c:	602a      	str	r2, [r5, #0]
d005200e:	60eb      	str	r3, [r5, #12]
d0052010:	b00b      	add	sp, #44	; 0x2c
d0052012:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0052014:	462b      	mov	r3, r5
d0052016:	e7e7      	b.n	d0051fe8 <entitySweepRaycastTest+0x2c>
d0052018:	2001f000 	.word	0x2001f000
d005201c:	d00f4a80 	.word	0xd00f4a80

d0052020 <entityMatchOrientationCamera>:
d0052020:	28ff      	cmp	r0, #255	; 0xff
d0052022:	d821      	bhi.n	d0052068 <entityMatchOrientationCamera+0x48>
d0052024:	b470      	push	{r4, r5, r6}
d0052026:	4c11      	ldr	r4, [pc, #68]	; (d005206c <entityMatchOrientationCamera+0x4c>)
d0052028:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d005202c:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0052030:	b1c3      	cbz	r3, d0052064 <entityMatchOrientationCamera+0x44>
d0052032:	69a3      	ldr	r3, [r4, #24]
d0052034:	b1b3      	cbz	r3, d0052064 <entityMatchOrientationCamera+0x44>
d0052036:	b1a9      	cbz	r1, d0052064 <entityMatchOrientationCamera+0x44>
d0052038:	f101 0218 	add.w	r2, r1, #24
d005203c:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0052040:	f101 0624 	add.w	r6, r1, #36	; 0x24
d0052044:	f101 0330 	add.w	r3, r1, #48	; 0x30
d0052048:	ca07      	ldmia	r2, {r0, r1, r2}
d005204a:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d005204e:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0052052:	f104 0534 	add.w	r5, r4, #52	; 0x34
d0052056:	341c      	adds	r4, #28
d0052058:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d005205c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0052060:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0052064:	bc70      	pop	{r4, r5, r6}
d0052066:	4770      	bx	lr
d0052068:	4770      	bx	lr
d005206a:	bf00      	nop
d005206c:	d00f4a80 	.word	0xd00f4a80

d0052070 <buildLightingCLUT>:
d0052070:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052074:	f1b2 0900 	subs.w	r9, r2, #0
d0052078:	b085      	sub	sp, #20
d005207a:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d005207c:	f340 8212 	ble.w	d00524a4 <buildLightingCLUT+0x434>
d0052080:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052084:	4f24      	ldr	r7, [pc, #144]	; (d0052118 <buildLightingCLUT+0xa8>)
d0052086:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d005208a:	edd4 4a00 	vldr	s9, [r4]
d005208e:	ed94 5a01 	vldr	s10, [r4, #4]
d0052092:	eb09 0807 	add.w	r8, r9, r7
d0052096:	edd4 5a02 	vldr	s11, [r4, #8]
d005209a:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d005209e:	ed94 6a03 	vldr	s12, [r4, #12]
d00520a2:	44bc      	add	ip, r7
d00520a4:	edd4 6a04 	vldr	s13, [r4, #16]
d00520a8:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d00520ac:	3904      	subs	r1, #4
d00520ae:	ee77 4ae4 	vsub.f32	s9, s15, s9
d00520b2:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00520b6:	ed9f 7a19 	vldr	s14, [pc, #100]	; d005211c <buildLightingCLUT+0xac>
d00520ba:	ee77 5ae5 	vsub.f32	s11, s15, s11
d00520be:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d00520c2:	ee37 6ac6 	vsub.f32	s12, s15, s12
d00520c6:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d00520ca:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00520ce:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d00520d2:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d00520d6:	f3c3 4507 	ubfx	r5, r3, #16, #8
d00520da:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d00520de:	f3c3 2007 	ubfx	r0, r3, #8, #8
d00520e2:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d00520e6:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d00520ea:	0e1c      	lsrs	r4, r3, #24
d00520ec:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d00520f0:	b2da      	uxtb	r2, r3
d00520f2:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d00520f6:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d00520fa:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d00520fe:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0052102:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0052106:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d005210a:	fe86 6a67 	vminnm.f32	s12, s12, s15
d005210e:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0052112:	9601      	str	r6, [sp, #4]
d0052114:	e004      	b.n	d0052120 <buildLightingCLUT+0xb0>
d0052116:	bf00      	nop
d0052118:	4000001f 	.word	0x4000001f
d005211c:	00000000 	.word	0x00000000
d0052120:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0052124:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052128:	0e1e      	lsrs	r6, r3, #24
d005212a:	fa5f fa83 	uxtb.w	sl, r3
d005212e:	4549      	cmp	r1, r9
d0052130:	ee07 6a10 	vmov	s14, r6
d0052134:	eba5 060b 	sub.w	r6, r5, fp
d0052138:	ee04 ba10 	vmov	s8, fp
d005213c:	ee07 6a90 	vmov	s15, r6
d0052140:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052144:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052148:	f3c3 2307 	ubfx	r3, r3, #8, #8
d005214c:	ee02 6a10 	vmov	s4, r6
d0052150:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052154:	eba2 060a 	sub.w	r6, r2, sl
d0052158:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005215c:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052160:	ee04 aa10 	vmov	s8, sl
d0052164:	ee02 6a90 	vmov	s5, r6
d0052168:	eba0 0603 	sub.w	r6, r0, r3
d005216c:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0052170:	ee07 3a90 	vmov	s15, r3
d0052174:	eea4 7a82 	vfma.f32	s14, s9, s4
d0052178:	ee03 6a10 	vmov	s6, r6
d005217c:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0052180:	9e01      	ldr	r6, [sp, #4]
d0052182:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052186:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005218a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005218e:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0052192:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0052196:	eee4 7a83 	vfma.f32	s15, s9, s6
d005219a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005219e:	edcd 3a02 	vstr	s7, [sp, #8]
d00521a2:	f89d a008 	ldrb.w	sl, [sp, #8]
d00521a6:	ee17 3a10 	vmov	r3, s14
d00521aa:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00521ae:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00521b2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00521b6:	ed8d 7a02 	vstr	s14, [sp, #8]
d00521ba:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00521be:	f89d b008 	ldrb.w	fp, [sp, #8]
d00521c2:	edcd 7a03 	vstr	s15, [sp, #12]
d00521c6:	ea43 030b 	orr.w	r3, r3, fp
d00521ca:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00521ce:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00521d2:	f846 3f04 	str.w	r3, [r6, #4]!
d00521d6:	680b      	ldr	r3, [r1, #0]
d00521d8:	9601      	str	r6, [sp, #4]
d00521da:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00521de:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00521e2:	fa5f fa83 	uxtb.w	sl, r3
d00521e6:	ee07 6a10 	vmov	s14, r6
d00521ea:	eba5 060b 	sub.w	r6, r5, fp
d00521ee:	ee04 ba10 	vmov	s8, fp
d00521f2:	ee07 6a90 	vmov	s15, r6
d00521f6:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00521fa:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00521fe:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052202:	ee02 6a10 	vmov	s4, r6
d0052206:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005220a:	eba2 060a 	sub.w	r6, r2, sl
d005220e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052212:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052216:	ee04 aa10 	vmov	s8, sl
d005221a:	ee02 6a90 	vmov	s5, r6
d005221e:	eba0 0603 	sub.w	r6, r0, r3
d0052222:	eee5 3a27 	vfma.f32	s7, s10, s15
d0052226:	ee07 3a90 	vmov	s15, r3
d005222a:	eea5 7a02 	vfma.f32	s14, s10, s4
d005222e:	ee03 6a10 	vmov	s6, r6
d0052232:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0052236:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005223a:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005223e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052242:	eea5 4a22 	vfma.f32	s8, s10, s5
d0052246:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005224a:	eee5 7a03 	vfma.f32	s15, s10, s6
d005224e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052252:	edcd 3a02 	vstr	s7, [sp, #8]
d0052256:	f89d a008 	ldrb.w	sl, [sp, #8]
d005225a:	ee17 3a10 	vmov	r3, s14
d005225e:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052262:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052266:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005226a:	ed8d 7a02 	vstr	s14, [sp, #8]
d005226e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052272:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052276:	edcd 7a03 	vstr	s15, [sp, #12]
d005227a:	ea43 030b 	orr.w	r3, r3, fp
d005227e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052282:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052286:	f848 3f04 	str.w	r3, [r8, #4]!
d005228a:	680b      	ldr	r3, [r1, #0]
d005228c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052290:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0052294:	fa5f fa83 	uxtb.w	sl, r3
d0052298:	ee07 6a10 	vmov	s14, r6
d005229c:	eba5 060b 	sub.w	r6, r5, fp
d00522a0:	ee04 ba10 	vmov	s8, fp
d00522a4:	ee07 6a90 	vmov	s15, r6
d00522a8:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00522ac:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00522b0:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00522b4:	ee02 6a10 	vmov	s4, r6
d00522b8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00522bc:	eba2 060a 	sub.w	r6, r2, sl
d00522c0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00522c4:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00522c8:	ee04 aa10 	vmov	s8, sl
d00522cc:	ee02 6a90 	vmov	s5, r6
d00522d0:	eba0 0603 	sub.w	r6, r0, r3
d00522d4:	eee5 3aa7 	vfma.f32	s7, s11, s15
d00522d8:	ee07 3a90 	vmov	s15, r3
d00522dc:	eea5 7a82 	vfma.f32	s14, s11, s4
d00522e0:	ee03 6a10 	vmov	s6, r6
d00522e4:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00522e8:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00522ec:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00522f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00522f4:	eea5 4aa2 	vfma.f32	s8, s11, s5
d00522f8:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00522fc:	eee5 7a83 	vfma.f32	s15, s11, s6
d0052300:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052304:	edcd 3a02 	vstr	s7, [sp, #8]
d0052308:	f89d a008 	ldrb.w	sl, [sp, #8]
d005230c:	ee17 3a10 	vmov	r3, s14
d0052310:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052314:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052318:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005231c:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052320:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052324:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052328:	edcd 7a03 	vstr	s15, [sp, #12]
d005232c:	ea43 030b 	orr.w	r3, r3, fp
d0052330:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052334:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052338:	f84e 3f04 	str.w	r3, [lr, #4]!
d005233c:	680b      	ldr	r3, [r1, #0]
d005233e:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052342:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0052346:	fa5f fa83 	uxtb.w	sl, r3
d005234a:	ee07 6a10 	vmov	s14, r6
d005234e:	eba5 060b 	sub.w	r6, r5, fp
d0052352:	ee04 ba10 	vmov	s8, fp
d0052356:	ee07 6a90 	vmov	s15, r6
d005235a:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005235e:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052362:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052366:	ee02 6a10 	vmov	s4, r6
d005236a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005236e:	eba2 060a 	sub.w	r6, r2, sl
d0052372:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052376:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005237a:	ee04 aa10 	vmov	s8, sl
d005237e:	ee02 6a90 	vmov	s5, r6
d0052382:	eba0 0603 	sub.w	r6, r0, r3
d0052386:	eee6 3a27 	vfma.f32	s7, s12, s15
d005238a:	ee07 3a90 	vmov	s15, r3
d005238e:	eea6 7a02 	vfma.f32	s14, s12, s4
d0052392:	ee03 6a10 	vmov	s6, r6
d0052396:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005239a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005239e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00523a2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00523a6:	eea6 4a22 	vfma.f32	s8, s12, s5
d00523aa:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00523ae:	eee6 7a03 	vfma.f32	s15, s12, s6
d00523b2:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00523b6:	edcd 3a02 	vstr	s7, [sp, #8]
d00523ba:	f89d a008 	ldrb.w	sl, [sp, #8]
d00523be:	ee17 3a10 	vmov	r3, s14
d00523c2:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00523c6:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00523ca:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00523ce:	ed8d 7a02 	vstr	s14, [sp, #8]
d00523d2:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00523d6:	f89d b008 	ldrb.w	fp, [sp, #8]
d00523da:	edcd 7a03 	vstr	s15, [sp, #12]
d00523de:	ea43 030b 	orr.w	r3, r3, fp
d00523e2:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00523e6:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00523ea:	f84c 3f04 	str.w	r3, [ip, #4]!
d00523ee:	680b      	ldr	r3, [r1, #0]
d00523f0:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00523f4:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00523f8:	fa5f fa83 	uxtb.w	sl, r3
d00523fc:	ee07 6a10 	vmov	s14, r6
d0052400:	eba5 060b 	sub.w	r6, r5, fp
d0052404:	ee04 ba10 	vmov	s8, fp
d0052408:	ee07 6a90 	vmov	s15, r6
d005240c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052410:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052414:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052418:	ee02 6a10 	vmov	s4, r6
d005241c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052420:	eba2 060a 	sub.w	r6, r2, sl
d0052424:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052428:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005242c:	ee04 aa10 	vmov	s8, sl
d0052430:	ee02 6a90 	vmov	s5, r6
d0052434:	eba0 0603 	sub.w	r6, r0, r3
d0052438:	eee6 3aa7 	vfma.f32	s7, s13, s15
d005243c:	ee07 3a90 	vmov	s15, r3
d0052440:	eea6 7a82 	vfma.f32	s14, s13, s4
d0052444:	ee03 6a10 	vmov	s6, r6
d0052448:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005244c:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0052450:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0052454:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052458:	eea6 4aa2 	vfma.f32	s8, s13, s5
d005245c:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0052460:	eee6 7a83 	vfma.f32	s15, s13, s6
d0052464:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052468:	edcd 3a02 	vstr	s7, [sp, #8]
d005246c:	f89d a008 	ldrb.w	sl, [sp, #8]
d0052470:	ee17 3a10 	vmov	r3, s14
d0052474:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052478:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005247c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052480:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052484:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052488:	f89d b008 	ldrb.w	fp, [sp, #8]
d005248c:	edcd 7a03 	vstr	s15, [sp, #12]
d0052490:	ea43 030b 	orr.w	r3, r3, fp
d0052494:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052498:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005249c:	f847 3f04 	str.w	r3, [r7, #4]!
d00524a0:	f47f ae3e 	bne.w	d0052120 <buildLightingCLUT+0xb0>
d00524a4:	b005      	add	sp, #20
d00524a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00524aa:	bf00      	nop

d00524ac <brightnessToShadeF>:
d00524ac:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00524b0:	eddf 7a09 	vldr	s15, [pc, #36]	; d00524d8 <brightnessToShadeF+0x2c>
d00524b4:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00524b8:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d00524bc:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d00524c0:	fec0 7a47 	vminnm.f32	s15, s0, s14
d00524c4:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d00524c8:	eee7 6ac6 	vfms.f32	s13, s15, s12
d00524cc:	eea6 7ae7 	vfms.f32	s14, s13, s15
d00524d0:	ee27 0a00 	vmul.f32	s0, s14, s0
d00524d4:	4770      	bx	lr
d00524d6:	bf00      	nop
d00524d8:	00000000 	.word	0x00000000

d00524dc <lightSetRanges>:
d00524dc:	2800      	cmp	r0, #0
d00524de:	db0c      	blt.n	d00524fa <lightSetRanges+0x1e>
d00524e0:	4b06      	ldr	r3, [pc, #24]	; (d00524fc <lightSetRanges+0x20>)
d00524e2:	681b      	ldr	r3, [r3, #0]
d00524e4:	4283      	cmp	r3, r0
d00524e6:	dd08      	ble.n	d00524fa <lightSetRanges+0x1e>
d00524e8:	4b05      	ldr	r3, [pc, #20]	; (d0052500 <lightSetRanges+0x24>)
d00524ea:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00524ee:	ed80 0a08 	vstr	s0, [r0, #32]
d00524f2:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d00524f6:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d00524fa:	4770      	bx	lr
d00524fc:	d005a5a8 	.word	0xd005a5a8
d0052500:	d005a5c0 	.word	0xd005a5c0

d0052504 <lightsGet>:
d0052504:	4800      	ldr	r0, [pc, #0]	; (d0052508 <lightsGet+0x4>)
d0052506:	4770      	bx	lr
d0052508:	d005a5c0 	.word	0xd005a5c0

d005250c <lightsGetCount>:
d005250c:	4b01      	ldr	r3, [pc, #4]	; (d0052514 <lightsGetCount+0x8>)
d005250e:	6818      	ldr	r0, [r3, #0]
d0052510:	4770      	bx	lr
d0052512:	bf00      	nop
d0052514:	d005a5a8 	.word	0xd005a5a8

d0052518 <lightsClear>:
d0052518:	2100      	movs	r1, #0
d005251a:	4b03      	ldr	r3, [pc, #12]	; (d0052528 <lightsClear+0x10>)
d005251c:	f44f 7200 	mov.w	r2, #512	; 0x200
d0052520:	4802      	ldr	r0, [pc, #8]	; (d005252c <lightsClear+0x14>)
d0052522:	6019      	str	r1, [r3, #0]
d0052524:	f003 b806 	b.w	d0055534 <memset>
d0052528:	d005a5a8 	.word	0xd005a5a8
d005252c:	d005a5c0 	.word	0xd005a5c0

d0052530 <lightEnable>:
d0052530:	4b04      	ldr	r3, [pc, #16]	; (d0052544 <lightEnable+0x14>)
d0052532:	681b      	ldr	r3, [r3, #0]
d0052534:	4298      	cmp	r0, r3
d0052536:	da03      	bge.n	d0052540 <lightEnable+0x10>
d0052538:	4b03      	ldr	r3, [pc, #12]	; (d0052548 <lightEnable+0x18>)
d005253a:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005253e:	62c1      	str	r1, [r0, #44]	; 0x2c
d0052540:	4770      	bx	lr
d0052542:	bf00      	nop
d0052544:	d005a5a8 	.word	0xd005a5a8
d0052548:	d005a5c0 	.word	0xd005a5c0

d005254c <addPointLight>:
d005254c:	4918      	ldr	r1, [pc, #96]	; (d00525b0 <addPointLight+0x64>)
d005254e:	b5f0      	push	{r4, r5, r6, r7, lr}
d0052550:	680c      	ldr	r4, [r1, #0]
d0052552:	b085      	sub	sp, #20
d0052554:	2c07      	cmp	r4, #7
d0052556:	ed8d 0a01 	vstr	s0, [sp, #4]
d005255a:	edcd 0a02 	vstr	s1, [sp, #8]
d005255e:	ed8d 1a03 	vstr	s2, [sp, #12]
d0052562:	dc21      	bgt.n	d00525a8 <addPointLight+0x5c>
d0052564:	4d13      	ldr	r5, [pc, #76]	; (d00525b4 <addPointLight+0x68>)
d0052566:	01a2      	lsls	r2, r4, #6
d0052568:	2600      	movs	r6, #0
d005256a:	f8df e050 	ldr.w	lr, [pc, #80]	; d00525bc <addPointLight+0x70>
d005256e:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d0052572:	f8df c04c 	ldr.w	ip, [pc, #76]	; d00525c0 <addPointLight+0x74>
d0052576:	54ae      	strb	r6, [r5, r2]
d0052578:	2200      	movs	r2, #0
d005257a:	4f0f      	ldr	r7, [pc, #60]	; (d00525b8 <addPointLight+0x6c>)
d005257c:	1d1d      	adds	r5, r3, #4
d005257e:	62d8      	str	r0, [r3, #44]	; 0x2c
d0052580:	1c66      	adds	r6, r4, #1
d0052582:	611a      	str	r2, [r3, #16]
d0052584:	615a      	str	r2, [r3, #20]
d0052586:	619a      	str	r2, [r3, #24]
d0052588:	edc3 1a07 	vstr	s3, [r3, #28]
d005258c:	f8c3 e020 	str.w	lr, [r3, #32]
d0052590:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d0052594:	629f      	str	r7, [r3, #40]	; 0x28
d0052596:	ab04      	add	r3, sp, #16
d0052598:	600e      	str	r6, [r1, #0]
d005259a:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d005259e:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00525a2:	4620      	mov	r0, r4
d00525a4:	b005      	add	sp, #20
d00525a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00525a8:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d00525ac:	e7f9      	b.n	d00525a2 <addPointLight+0x56>
d00525ae:	bf00      	nop
d00525b0:	d005a5a8 	.word	0xd005a5a8
d00525b4:	d005a5c0 	.word	0xd005a5c0
d00525b8:	44020000 	.word	0x44020000
d00525bc:	42c80000 	.word	0x42c80000
d00525c0:	43660000 	.word	0x43660000

d00525c4 <addDirectionalLight>:
d00525c4:	b5f0      	push	{r4, r5, r6, r7, lr}
d00525c6:	4f15      	ldr	r7, [pc, #84]	; (d005261c <addDirectionalLight+0x58>)
d00525c8:	683d      	ldr	r5, [r7, #0]
d00525ca:	2d07      	cmp	r5, #7
d00525cc:	ed2d 8b02 	vpush	{d8}
d00525d0:	b085      	sub	sp, #20
d00525d2:	dc1f      	bgt.n	d0052614 <addDirectionalLight+0x50>
d00525d4:	4912      	ldr	r1, [pc, #72]	; (d0052620 <addDirectionalLight+0x5c>)
d00525d6:	2300      	movs	r3, #0
d00525d8:	4606      	mov	r6, r0
d00525da:	01aa      	lsls	r2, r5, #6
d00525dc:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d00525e0:	2001      	movs	r0, #1
d00525e2:	eeb0 8a61 	vmov.f32	s16, s3
d00525e6:	6063      	str	r3, [r4, #4]
d00525e8:	60a3      	str	r3, [r4, #8]
d00525ea:	60e3      	str	r3, [r4, #12]
d00525ec:	5488      	strb	r0, [r1, r2]
d00525ee:	f7fd fedb 	bl	d00503a8 <vec3Normalize>
d00525f2:	683b      	ldr	r3, [r7, #0]
d00525f4:	ed84 8a07 	vstr	s16, [r4, #28]
d00525f8:	3301      	adds	r3, #1
d00525fa:	62e6      	str	r6, [r4, #44]	; 0x2c
d00525fc:	ed84 0a04 	vstr	s0, [r4, #16]
d0052600:	edc4 0a05 	vstr	s1, [r4, #20]
d0052604:	ed84 1a06 	vstr	s2, [r4, #24]
d0052608:	603b      	str	r3, [r7, #0]
d005260a:	4628      	mov	r0, r5
d005260c:	b005      	add	sp, #20
d005260e:	ecbd 8b02 	vpop	{d8}
d0052612:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0052614:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0052618:	e7f7      	b.n	d005260a <addDirectionalLight+0x46>
d005261a:	bf00      	nop
d005261c:	d005a5a8 	.word	0xd005a5a8
d0052620:	d005a5c0 	.word	0xd005a5c0

d0052624 <lightSetPosition>:
d0052624:	b084      	sub	sp, #16
d0052626:	2800      	cmp	r0, #0
d0052628:	ed8d 0a01 	vstr	s0, [sp, #4]
d005262c:	edcd 0a02 	vstr	s1, [sp, #8]
d0052630:	ed8d 1a03 	vstr	s2, [sp, #12]
d0052634:	db0c      	blt.n	d0052650 <lightSetPosition+0x2c>
d0052636:	4b07      	ldr	r3, [pc, #28]	; (d0052654 <lightSetPosition+0x30>)
d0052638:	681b      	ldr	r3, [r3, #0]
d005263a:	4283      	cmp	r3, r0
d005263c:	dd08      	ble.n	d0052650 <lightSetPosition+0x2c>
d005263e:	4b06      	ldr	r3, [pc, #24]	; (d0052658 <lightSetPosition+0x34>)
d0052640:	aa04      	add	r2, sp, #16
d0052642:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d0052646:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d005264a:	3304      	adds	r3, #4
d005264c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0052650:	b004      	add	sp, #16
d0052652:	4770      	bx	lr
d0052654:	d005a5a8 	.word	0xd005a5a8
d0052658:	d005a5c0 	.word	0xd005a5c0

d005265c <lightSetIntensity>:
d005265c:	2800      	cmp	r0, #0
d005265e:	db08      	blt.n	d0052672 <lightSetIntensity+0x16>
d0052660:	4b04      	ldr	r3, [pc, #16]	; (d0052674 <lightSetIntensity+0x18>)
d0052662:	681b      	ldr	r3, [r3, #0]
d0052664:	4283      	cmp	r3, r0
d0052666:	dd04      	ble.n	d0052672 <lightSetIntensity+0x16>
d0052668:	4b03      	ldr	r3, [pc, #12]	; (d0052678 <lightSetIntensity+0x1c>)
d005266a:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005266e:	ed80 0a07 	vstr	s0, [r0, #28]
d0052672:	4770      	bx	lr
d0052674:	d005a5a8 	.word	0xd005a5a8
d0052678:	d005a5c0 	.word	0xd005a5c0

d005267c <Render3DStandard>:
d005267c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0052680:	2600      	movs	r6, #0
d0052682:	b088      	sub	sp, #32
d0052684:	4f2e      	ldr	r7, [pc, #184]	; (d0052740 <Render3DStandard+0xc4>)
d0052686:	0170      	lsls	r0, r6, #5
d0052688:	f7fc f9b8 	bl	d004e9fc <beginDepthBand>
d005268c:	683a      	ldr	r2, [r7, #0]
d005268e:	2a00      	cmp	r2, #0
d0052690:	dd50      	ble.n	d0052734 <Render3DStandard+0xb8>
d0052692:	4c2c      	ldr	r4, [pc, #176]	; (d0052744 <Render3DStandard+0xc8>)
d0052694:	2500      	movs	r5, #0
d0052696:	e01d      	b.n	d00526d4 <Render3DStandard+0x58>
d0052698:	8c63      	ldrh	r3, [r4, #34]	; 0x22
d005269a:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d005269c:	9303      	str	r3, [sp, #12]
d005269e:	6963      	ldr	r3, [r4, #20]
d00526a0:	8c20      	ldrh	r0, [r4, #32]
d00526a2:	9301      	str	r3, [sp, #4]
d00526a4:	6923      	ldr	r3, [r4, #16]
d00526a6:	9205      	str	r2, [sp, #20]
d00526a8:	9104      	str	r1, [sp, #16]
d00526aa:	9002      	str	r0, [sp, #8]
d00526ac:	9300      	str	r3, [sp, #0]
d00526ae:	edd4 1a07 	vldr	s3, [r4, #28]
d00526b2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00526b6:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00526ba:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00526be:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00526c2:	e9d4 0100 	ldrd	r0, r1, [r4]
d00526c6:	f7fc fa21 	bl	d004eb0c <fillTriangleDitherBayer>
d00526ca:	683a      	ldr	r2, [r7, #0]
d00526cc:	3501      	adds	r5, #1
d00526ce:	3440      	adds	r4, #64	; 0x40
d00526d0:	4295      	cmp	r5, r2
d00526d2:	da2f      	bge.n	d0052734 <Render3DStandard+0xb8>
d00526d4:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d00526d8:	42b3      	cmp	r3, r6
d00526da:	dcf7      	bgt.n	d00526cc <Render3DStandard+0x50>
d00526dc:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d00526e0:	42b3      	cmp	r3, r6
d00526e2:	dbf3      	blt.n	d00526cc <Render3DStandard+0x50>
d00526e4:	f994 3034 	ldrsb.w	r3, [r4, #52]	; 0x34
d00526e8:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d00526ec:	2b00      	cmp	r3, #0
d00526ee:	dad3      	bge.n	d0052698 <Render3DStandard+0x1c>
d00526f0:	8c63      	ldrh	r3, [r4, #34]	; 0x22
d00526f2:	3501      	adds	r5, #1
d00526f4:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
d00526f6:	9303      	str	r3, [sp, #12]
d00526f8:	6963      	ldr	r3, [r4, #20]
d00526fa:	8c20      	ldrh	r0, [r4, #32]
d00526fc:	f894 8036 	ldrb.w	r8, [r4, #54]	; 0x36
d0052700:	9301      	str	r3, [sp, #4]
d0052702:	6923      	ldr	r3, [r4, #16]
d0052704:	edd4 1a07 	vldr	s3, [r4, #28]
d0052708:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005270c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0052710:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0052714:	9205      	str	r2, [sp, #20]
d0052716:	9104      	str	r1, [sp, #16]
d0052718:	9002      	str	r0, [sp, #8]
d005271a:	9300      	str	r3, [sp, #0]
d005271c:	f8cd 8018 	str.w	r8, [sp, #24]
d0052720:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0052724:	e9d4 0100 	ldrd	r0, r1, [r4]
d0052728:	f7fd f85c 	bl	d004f7e4 <fillTriangleDitherBayerT>
d005272c:	683a      	ldr	r2, [r7, #0]
d005272e:	3440      	adds	r4, #64	; 0x40
d0052730:	4295      	cmp	r5, r2
d0052732:	dbcf      	blt.n	d00526d4 <Render3DStandard+0x58>
d0052734:	3601      	adds	r6, #1
d0052736:	2e0a      	cmp	r6, #10
d0052738:	d1a5      	bne.n	d0052686 <Render3DStandard+0xa>
d005273a:	b008      	add	sp, #32
d005273c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0052740:	d00687e0 	.word	0xd00687e0
d0052744:	d0068800 	.word	0xd0068800

d0052748 <submitClippedTri.constprop.0>:
d0052748:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005274c:	4d83      	ldr	r5, [pc, #524]	; (d005295c <submitClippedTri.constprop.0+0x214>)
d005274e:	682c      	ldr	r4, [r5, #0]
d0052750:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d0052754:	ed2d 8b04 	vpush	{d8-d9}
d0052758:	b08b      	sub	sp, #44	; 0x2c
d005275a:	f280 80f0 	bge.w	d005293e <submitClippedTri.constprop.0+0x1f6>
d005275e:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0052762:	edd0 6a14 	vldr	s13, [r0, #80]	; 0x50
d0052766:	eeb6 9a00 	vmov.f32	s18, #96	; 0x3f000000  0.5
d005276a:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d005276e:	ed90 6a12 	vldr	s12, [r0, #72]	; 0x48
d0052772:	ea4f 1c84 	mov.w	ip, r4, lsl #6
d0052776:	eec5 8a81 	vdiv.f32	s17, s11, s2
d005277a:	4b79      	ldr	r3, [pc, #484]	; (d0052960 <submitClippedTri.constprop.0+0x218>)
d005277c:	f10c 0808 	add.w	r8, ip, #8
d0052780:	4693      	mov	fp, r2
d0052782:	eb03 1784 	add.w	r7, r3, r4, lsl #6
d0052786:	3401      	adds	r4, #1
d0052788:	f10c 0e10 	add.w	lr, ip, #16
d005278c:	f04f 0980 	mov.w	r9, #128	; 0x80
d0052790:	602c      	str	r4, [r5, #0]
d0052792:	eb03 0408 	add.w	r4, r3, r8
d0052796:	eec5 7aa2 	vdiv.f32	s15, s11, s5
d005279a:	eb03 0a0e 	add.w	sl, r3, lr
d005279e:	ed9f 5a71 	vldr	s10, [pc, #452]	; d0052964 <submitClippedTri.constprop.0+0x21c>
d00527a2:	ee76 6a89 	vadd.f32	s13, s13, s18
d00527a6:	ee85 8a84 	vdiv.f32	s16, s11, s8
d00527aa:	ee37 7a09 	vadd.f32	s14, s14, s18
d00527ae:	ee68 0aa0 	vmul.f32	s1, s17, s1
d00527b2:	ee28 0a80 	vmul.f32	s0, s17, s0
d00527b6:	eef0 8a47 	vmov.f32	s17, s14
d00527ba:	ee67 1aa1 	vmul.f32	s3, s15, s3
d00527be:	ee27 2a82 	vmul.f32	s4, s15, s4
d00527c2:	eef0 7a66 	vmov.f32	s15, s13
d00527c6:	eee6 8a00 	vfma.f32	s17, s12, s0
d00527ca:	ed9f 0a67 	vldr	s0, [pc, #412]	; d0052968 <submitClippedTri.constprop.0+0x220>
d00527ce:	eee6 7a60 	vfms.f32	s15, s12, s1
d00527d2:	eef0 0a47 	vmov.f32	s1, s14
d00527d6:	ee28 3a03 	vmul.f32	s6, s16, s6
d00527da:	ee68 3a23 	vmul.f32	s7, s16, s7
d00527de:	eee6 0a21 	vfma.f32	s1, s12, s3
d00527e2:	eea6 7a03 	vfma.f32	s14, s12, s6
d00527e6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00527ea:	eefd 8ae8 	vcvt.s32.f32	s17, s17
d00527ee:	ee17 5a90 	vmov	r5, s15
d00527f2:	eef0 1a60 	vmov.f32	s3, s1
d00527f6:	ee18 6a90 	vmov	r6, s17
d00527fa:	eef0 0a66 	vmov.f32	s1, s13
d00527fe:	eee6 6a63 	vfms.f32	s13, s12, s7
d0052802:	f843 600c 	str.w	r6, [r3, ip]
d0052806:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d005280a:	607d      	str	r5, [r7, #4]
d005280c:	eee6 0a42 	vfms.f32	s1, s12, s4
d0052810:	b22d      	sxth	r5, r5
d0052812:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0052816:	ee11 2a90 	vmov	r2, s3
d005281a:	f843 2008 	str.w	r2, [r3, r8]
d005281e:	ee17 2a10 	vmov	r2, s14
d0052822:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0052826:	edc4 7a01 	vstr	s15, [r4, #4]
d005282a:	ee17 6a90 	vmov	r6, s15
d005282e:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0052832:	f843 200e 	str.w	r2, [r3, lr]
d0052836:	42ae      	cmp	r6, r5
d0052838:	46ae      	mov	lr, r5
d005283a:	edca 7a01 	vstr	s15, [sl, #4]
d005283e:	ee17 4a90 	vmov	r4, s15
d0052842:	f887 1034 	strb.w	r1, [r7, #52]	; 0x34
d0052846:	f887 b035 	strb.w	fp, [r7, #53]	; 0x35
d005284a:	edc7 4a07 	vstr	s9, [r7, #28]
d005284e:	f887 9036 	strb.w	r9, [r7, #54]	; 0x36
d0052852:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0052856:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d005285a:	ee31 7a47 	vsub.f32	s14, s2, s14
d005285e:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052862:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0052866:	fe87 7a65 	vminnm.f32	s14, s14, s11
d005286a:	ee27 7a00 	vmul.f32	s14, s14, s0
d005286e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052872:	ee17 2a10 	vmov	r2, s14
d0052876:	843a      	strh	r2, [r7, #32]
d0052878:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d005287c:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0052880:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0052884:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052888:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d005288c:	fe87 7a65 	vminnm.f32	s14, s14, s11
d0052890:	ee27 7a00 	vmul.f32	s14, s14, s0
d0052894:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052898:	ee17 2a10 	vmov	r2, s14
d005289c:	847a      	strh	r2, [r7, #34]	; 0x22
d005289e:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00528a2:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d00528a6:	ee74 7a67 	vsub.f32	s15, s8, s15
d00528aa:	ed87 1a0a 	vstr	s2, [r7, #40]	; 0x28
d00528ae:	edc7 2a0b 	vstr	s5, [r7, #44]	; 0x2c
d00528b2:	ed87 4a0c 	vstr	s8, [r7, #48]	; 0x30
d00528b6:	ee67 7a87 	vmul.f32	s15, s15, s14
d00528ba:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d00528be:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d00528c2:	ee67 7a80 	vmul.f32	s15, s15, s0
d00528c6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00528ca:	ee17 2a90 	vmov	r2, s15
d00528ce:	84ba      	strh	r2, [r7, #36]	; 0x24
d00528d0:	db3a      	blt.n	d0052948 <submitClippedTri.constprop.0+0x200>
d00528d2:	462a      	mov	r2, r5
d00528d4:	873d      	strh	r5, [r7, #56]	; 0x38
d00528d6:	42a2      	cmp	r2, r4
d00528d8:	dd02      	ble.n	d00528e0 <submitClippedTri.constprop.0+0x198>
d00528da:	eb03 020c 	add.w	r2, r3, ip
d00528de:	8714      	strh	r4, [r2, #56]	; 0x38
d00528e0:	42ae      	cmp	r6, r5
d00528e2:	dc35      	bgt.n	d0052950 <submitClippedTri.constprop.0+0x208>
d00528e4:	eb03 020c 	add.w	r2, r3, ip
d00528e8:	8755      	strh	r5, [r2, #58]	; 0x3a
d00528ea:	45a6      	cmp	lr, r4
d00528ec:	da02      	bge.n	d00528f4 <submitClippedTri.constprop.0+0x1ac>
d00528ee:	eb03 020c 	add.w	r2, r3, ip
d00528f2:	8754      	strh	r4, [r2, #58]	; 0x3a
d00528f4:	eb03 020c 	add.w	r2, r3, ip
d00528f8:	f9b2 1038 	ldrsh.w	r1, [r2, #56]	; 0x38
d00528fc:	2900      	cmp	r1, #0
d00528fe:	da01      	bge.n	d0052904 <submitClippedTri.constprop.0+0x1bc>
d0052900:	2100      	movs	r1, #0
d0052902:	8711      	strh	r1, [r2, #56]	; 0x38
d0052904:	eb03 020c 	add.w	r2, r3, ip
d0052908:	f9b2 103a 	ldrsh.w	r1, [r2, #58]	; 0x3a
d005290c:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0052910:	db02      	blt.n	d0052918 <submitClippedTri.constprop.0+0x1d0>
d0052912:	f240 113f 	movw	r1, #319	; 0x13f
d0052916:	8751      	strh	r1, [r2, #58]	; 0x3a
d0052918:	eb03 000c 	add.w	r0, r3, ip
d005291c:	4463      	add	r3, ip
d005291e:	f9b0 2038 	ldrsh.w	r2, [r0, #56]	; 0x38
d0052922:	2a00      	cmp	r2, #0
d0052924:	bfb8      	it	lt
d0052926:	321f      	addlt	r2, #31
d0052928:	1151      	asrs	r1, r2, #5
d005292a:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d005292e:	2a00      	cmp	r2, #0
d0052930:	f880 103c 	strb.w	r1, [r0, #60]	; 0x3c
d0052934:	bfb8      	it	lt
d0052936:	321f      	addlt	r2, #31
d0052938:	1152      	asrs	r2, r2, #5
d005293a:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
d005293e:	b00b      	add	sp, #44	; 0x2c
d0052940:	ecbd 8b04 	vpop	{d8-d9}
d0052944:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052948:	b231      	sxth	r1, r6
d005294a:	460a      	mov	r2, r1
d005294c:	8739      	strh	r1, [r7, #56]	; 0x38
d005294e:	e7c2      	b.n	d00528d6 <submitClippedTri.constprop.0+0x18e>
d0052950:	b236      	sxth	r6, r6
d0052952:	eb03 020c 	add.w	r2, r3, ip
d0052956:	46b6      	mov	lr, r6
d0052958:	8756      	strh	r6, [r2, #58]	; 0x3a
d005295a:	e7c6      	b.n	d00528ea <submitClippedTri.constprop.0+0x1a2>
d005295c:	d00687e0 	.word	0xd00687e0
d0052960:	d0068800 	.word	0xd0068800
d0052964:	00000000 	.word	0x00000000
d0052968:	477fff00 	.word	0x477fff00

d005296c <sb3dParticlesRender.part.0>:
d005296c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052970:	edd0 7a00 	vldr	s15, [r0]
d0052974:	4605      	mov	r5, r0
d0052976:	4c1a      	ldr	r4, [pc, #104]	; (d00529e0 <sb3dParticlesRender.part.0+0x74>)
d0052978:	f8df b068 	ldr.w	fp, [pc, #104]	; d00529e4 <sb3dParticlesRender.part.0+0x78>
d005297c:	f504 5800 	add.w	r8, r4, #8192	; 0x2000
d0052980:	ed2d 8b10 	vpush	{d8-d15}
d0052984:	b0d9      	sub	sp, #356	; 0x164
d0052986:	ed90 ea06 	vldr	s28, [r0, #24]
d005298a:	edd0 aa09 	vldr	s21, [r0, #36]	; 0x24
d005298e:	edcd 7a17 	vstr	s15, [sp, #92]	; 0x5c
d0052992:	edd0 7a01 	vldr	s15, [r0, #4]
d0052996:	ed90 aa0a 	vldr	s20, [r0, #40]	; 0x28
d005299a:	edcd 7a18 	vstr	s15, [sp, #96]	; 0x60
d005299e:	edd0 7a02 	vldr	s15, [r0, #8]
d00529a2:	edd0 9a0b 	vldr	s19, [r0, #44]	; 0x2c
d00529a6:	edcd 7a19 	vstr	s15, [sp, #100]	; 0x64
d00529aa:	edd0 7a07 	vldr	s15, [r0, #28]
d00529ae:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d00529b2:	edcd 7a1a 	vstr	s15, [sp, #104]	; 0x68
d00529b6:	edd0 7a08 	vldr	s15, [r0, #32]
d00529ba:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d00529be:	edcd 7a1b 	vstr	s15, [sp, #108]	; 0x6c
d00529c2:	ed90 ba0e 	vldr	s22, [r0, #56]	; 0x38
d00529c6:	edd0 ca10 	vldr	s25, [r0, #64]	; 0x40
d00529ca:	f7ff fd9b 	bl	d0052504 <lightsGet>
d00529ce:	4606      	mov	r6, r0
d00529d0:	901d      	str	r0, [sp, #116]	; 0x74
d00529d2:	f7ff fd9b 	bl	d005250c <lightsGetCount>
d00529d6:	901c      	str	r0, [sp, #112]	; 0x70
d00529d8:	eb06 1a80 	add.w	sl, r6, r0, lsl #6
d00529dc:	e177      	b.n	d0052cce <sb3dParticlesRender.part.0+0x362>
d00529de:	bf00      	nop
d00529e0:	d00667e0 	.word	0xd00667e0
d00529e4:	d00667c0 	.word	0xd00667c0
d00529e8:	00000000 	.word	0x00000000
d00529ec:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00529f0:	edd4 ea04 	vldr	s29, [r4, #16]
d00529f4:	ed1f 5a04 	vldr	s10, [pc, #-16]	; d00529e8 <sb3dParticlesRender.part.0+0x7c>
d00529f8:	fece ea85 	vmaxnm.f32	s29, s29, s10
d00529fc:	fece eac7 	vminnm.f32	s29, s29, s14
d0052a00:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0052a04:	eddd 3a1b 	vldr	s7, [sp, #108]	; 0x6c
d0052a08:	eeb0 4a46 	vmov.f32	s8, s12
d0052a0c:	f105 0610 	add.w	r6, r5, #16
d0052a10:	eef0 4a66 	vmov.f32	s9, s13
d0052a14:	2250      	movs	r2, #80	; 0x50
d0052a16:	ee67 7a87 	vmul.f32	s15, s15, s14
d0052a1a:	ed9d 7a1a 	vldr	s14, [sp, #104]	; 0x68
d0052a1e:	eeb0 5a65 	vmov.f32	s10, s11
d0052a22:	4631      	mov	r1, r6
d0052a24:	4668      	mov	r0, sp
d0052a26:	eeae 6a27 	vfma.f32	s12, s28, s15
d0052a2a:	eee7 4a67 	vfms.f32	s9, s14, s15
d0052a2e:	eee7 6a27 	vfma.f32	s13, s14, s15
d0052a32:	eeb0 7a65 	vmov.f32	s14, s11
d0052a36:	eea3 5ae7 	vfms.f32	s10, s7, s15
d0052a3a:	eeae 4a67 	vfms.f32	s8, s28, s15
d0052a3e:	eea3 7aa7 	vfma.f32	s14, s7, s15
d0052a42:	eef0 3a46 	vmov.f32	s7, s12
d0052a46:	eeaa 6ae7 	vfms.f32	s12, s21, s15
d0052a4a:	eef0 fa64 	vmov.f32	s31, s9
d0052a4e:	eef0 5a66 	vmov.f32	s11, s13
d0052a52:	eeb0 8a44 	vmov.f32	s16, s8
d0052a56:	eeb0 fa45 	vmov.f32	s30, s10
d0052a5a:	eeea fa27 	vfma.f32	s31, s20, s15
d0052a5e:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d0052a62:	eeb0 6a47 	vmov.f32	s12, s14
d0052a66:	eeaa 8aa7 	vfma.f32	s16, s21, s15
d0052a6a:	eea9 faa7 	vfma.f32	s30, s19, s15
d0052a6e:	eeaa 4ae7 	vfms.f32	s8, s21, s15
d0052a72:	eeea 3aa7 	vfma.f32	s7, s21, s15
d0052a76:	eeea 4a67 	vfms.f32	s9, s20, s15
d0052a7a:	edcd fa20 	vstr	s31, [sp, #128]	; 0x80
d0052a7e:	eeea 5a27 	vfma.f32	s11, s20, s15
d0052a82:	eeea 6a67 	vfms.f32	s13, s20, s15
d0052a86:	ed8d 8a1f 	vstr	s16, [sp, #124]	; 0x7c
d0052a8a:	eea9 5ae7 	vfms.f32	s10, s19, s15
d0052a8e:	ed8d fa21 	vstr	s30, [sp, #132]	; 0x84
d0052a92:	eea9 6aa7 	vfma.f32	s12, s19, s15
d0052a96:	ed8d 4a28 	vstr	s8, [sp, #160]	; 0xa0
d0052a9a:	eea9 7ae7 	vfms.f32	s14, s19, s15
d0052a9e:	edcd 3a22 	vstr	s7, [sp, #136]	; 0x88
d0052aa2:	edcd 4a29 	vstr	s9, [sp, #164]	; 0xa4
d0052aa6:	edcd 5a23 	vstr	s11, [sp, #140]	; 0x8c
d0052aaa:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d0052aae:	ed8d 5a2a 	vstr	s10, [sp, #168]	; 0xa8
d0052ab2:	ed8d 6a24 	vstr	s12, [sp, #144]	; 0x90
d0052ab6:	ed8d 7a27 	vstr	s14, [sp, #156]	; 0x9c
d0052aba:	f002 fd2d 	bl	d0055518 <memcpy>
d0052abe:	eeb0 1a4f 	vmov.f32	s2, s30
d0052ac2:	eeb0 0a48 	vmov.f32	s0, s16
d0052ac6:	eef0 0a6f 	vmov.f32	s1, s31
d0052aca:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052ace:	f7fe f94d 	bl	d0050d6c <worldToCamera>
d0052ad2:	eeb0 fa41 	vmov.f32	s30, s2
d0052ad6:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0052ada:	4631      	mov	r1, r6
d0052adc:	ed9d 8a22 	vldr	s16, [sp, #136]	; 0x88
d0052ae0:	2250      	movs	r2, #80	; 0x50
d0052ae2:	eddd fa23 	vldr	s31, [sp, #140]	; 0x8c
d0052ae6:	4668      	mov	r0, sp
d0052ae8:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052aec:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0052af0:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0052af4:	ed8d fa2d 	vstr	s30, [sp, #180]	; 0xb4
d0052af8:	f002 fd0e 	bl	d0055518 <memcpy>
d0052afc:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052b00:	eeb0 0a48 	vmov.f32	s0, s16
d0052b04:	eef0 0a6f 	vmov.f32	s1, s31
d0052b08:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052b0c:	f7fe f92e 	bl	d0050d6c <worldToCamera>
d0052b10:	eef0 2a41 	vmov.f32	s5, s2
d0052b14:	ed9d 1a27 	vldr	s2, [sp, #156]	; 0x9c
d0052b18:	4631      	mov	r1, r6
d0052b1a:	ed9d 8a25 	vldr	s16, [sp, #148]	; 0x94
d0052b1e:	2250      	movs	r2, #80	; 0x50
d0052b20:	eddd fa26 	vldr	s31, [sp, #152]	; 0x98
d0052b24:	4668      	mov	r0, sp
d0052b26:	edcd 2a30 	vstr	s5, [sp, #192]	; 0xc0
d0052b2a:	edcd 2a16 	vstr	s5, [sp, #88]	; 0x58
d0052b2e:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052b32:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d0052b36:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d0052b3a:	f002 fced 	bl	d0055518 <memcpy>
d0052b3e:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052b42:	eeb0 0a48 	vmov.f32	s0, s16
d0052b46:	eef0 0a6f 	vmov.f32	s1, s31
d0052b4a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052b4e:	f7fe f90d 	bl	d0050d6c <worldToCamera>
d0052b52:	eef0 8a41 	vmov.f32	s17, s2
d0052b56:	eddd fa29 	vldr	s31, [sp, #164]	; 0xa4
d0052b5a:	4631      	mov	r1, r6
d0052b5c:	ed9d 1a2a 	vldr	s2, [sp, #168]	; 0xa8
d0052b60:	2250      	movs	r2, #80	; 0x50
d0052b62:	ed9d 8a28 	vldr	s16, [sp, #160]	; 0xa0
d0052b66:	4668      	mov	r0, sp
d0052b68:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0052b6c:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d0052b70:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d0052b74:	edcd 8a33 	vstr	s17, [sp, #204]	; 0xcc
d0052b78:	f002 fcce 	bl	d0055518 <memcpy>
d0052b7c:	eef0 0a6f 	vmov.f32	s1, s31
d0052b80:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0052b84:	eeb0 0a48 	vmov.f32	s0, s16
d0052b88:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052b8c:	f7fe f8ee 	bl	d0050d6c <worldToCamera>
d0052b90:	eef4 cacf 	vcmpe.f32	s25, s30
d0052b94:	eef0 fa41 	vmov.f32	s31, s2
d0052b98:	eddd 2a16 	vldr	s5, [sp, #88]	; 0x58
d0052b9c:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d0052ba0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ba4:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d0052ba8:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d0052bac:	db0e      	blt.n	d0052bcc <sb3dParticlesRender.part.0+0x260>
d0052bae:	eef4 cae2 	vcmpe.f32	s25, s5
d0052bb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bb6:	db09      	blt.n	d0052bcc <sb3dParticlesRender.part.0+0x260>
d0052bb8:	eef4 cae8 	vcmpe.f32	s25, s17
d0052bbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bc0:	db04      	blt.n	d0052bcc <sb3dParticlesRender.part.0+0x260>
d0052bc2:	eef4 cac1 	vcmpe.f32	s25, s2
d0052bc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bca:	da7c      	bge.n	d0052cc6 <sb3dParticlesRender.part.0+0x35a>
d0052bcc:	4ed6      	ldr	r6, [pc, #856]	; (d0052f28 <sb3dParticlesRender.part.0+0x5bc>)
d0052bce:	eeb0 4a68 	vmov.f32	s8, s17
d0052bd2:	ed9d da2b 	vldr	s26, [sp, #172]	; 0xac
d0052bd6:	eeb0 1a4f 	vmov.f32	s2, s30
d0052bda:	7c33      	ldrb	r3, [r6, #16]
d0052bdc:	a840      	add	r0, sp, #256	; 0x100
d0052bde:	7c72      	ldrb	r2, [r6, #17]
d0052be0:	eeb0 0a4d 	vmov.f32	s0, s26
d0052be4:	7cb7      	ldrb	r7, [r6, #18]
d0052be6:	4629      	mov	r1, r5
d0052be8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0052bec:	7cf2      	ldrb	r2, [r6, #19]
d0052bee:	ed9d 9a2c 	vldr	s18, [sp, #176]	; 0xb0
d0052bf2:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0052bf6:	eddd da31 	vldr	s27, [sp, #196]	; 0xc4
d0052bfa:	ed9d 8a32 	vldr	s16, [sp, #200]	; 0xc8
d0052bfe:	eef0 0a49 	vmov.f32	s1, s18
d0052c02:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052c06:	f8df 9334 	ldr.w	r9, [pc, #820]	; d0052f3c <sb3dParticlesRender.part.0+0x5d0>
d0052c0a:	eddd 1a2e 	vldr	s3, [sp, #184]	; 0xb8
d0052c0e:	eeb0 3a6d 	vmov.f32	s6, s27
d0052c12:	681b      	ldr	r3, [r3, #0]
d0052c14:	eef0 3a48 	vmov.f32	s7, s16
d0052c18:	ed9d 2a2f 	vldr	s4, [sp, #188]	; 0xbc
d0052c1c:	681f      	ldr	r7, [r3, #0]
d0052c1e:	f8db 2000 	ldr.w	r2, [fp]
d0052c22:	f8d9 3000 	ldr.w	r3, [r9]
d0052c26:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d0052c2a:	edcd 2a3c 	vstr	s5, [sp, #240]	; 0xf0
d0052c2e:	edcd 8a3f 	vstr	s17, [sp, #252]	; 0xfc
d0052c32:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d0052c36:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d0052c3a:	edcd 1a3a 	vstr	s3, [sp, #232]	; 0xe8
d0052c3e:	ed8d 2a3b 	vstr	s4, [sp, #236]	; 0xec
d0052c42:	edcd da3d 	vstr	s27, [sp, #244]	; 0xf4
d0052c46:	ed8d 8a3e 	vstr	s16, [sp, #248]	; 0xf8
d0052c4a:	47b8      	blx	r7
d0052c4c:	2802      	cmp	r0, #2
d0052c4e:	f300 8179 	bgt.w	d0052f44 <sb3dParticlesRender.part.0+0x5d8>
d0052c52:	7c31      	ldrb	r1, [r6, #16]
d0052c54:	eeb0 0a4d 	vmov.f32	s0, s26
d0052c58:	7c72      	ldrb	r2, [r6, #17]
d0052c5a:	eef0 0a49 	vmov.f32	s1, s18
d0052c5e:	7cb3      	ldrb	r3, [r6, #18]
d0052c60:	eeb0 1a4f 	vmov.f32	s2, s30
d0052c64:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0052c68:	7cf2      	ldrb	r2, [r6, #19]
d0052c6a:	ed9d 3a34 	vldr	s6, [sp, #208]	; 0xd0
d0052c6e:	eef0 1a6d 	vmov.f32	s3, s27
d0052c72:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0052c76:	eddd 3a35 	vldr	s7, [sp, #212]	; 0xd4
d0052c7a:	eeb0 2a48 	vmov.f32	s4, s16
d0052c7e:	a840      	add	r0, sp, #256	; 0x100
d0052c80:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0052c84:	eef0 2a68 	vmov.f32	s5, s17
d0052c88:	eeb0 4a6f 	vmov.f32	s8, s31
d0052c8c:	f8d9 3000 	ldr.w	r3, [r9]
d0052c90:	680e      	ldr	r6, [r1, #0]
d0052c92:	4629      	mov	r1, r5
d0052c94:	f8db 2000 	ldr.w	r2, [fp]
d0052c98:	6836      	ldr	r6, [r6, #0]
d0052c9a:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d0052c9e:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d0052ca2:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d0052ca6:	edcd da3a 	vstr	s27, [sp, #232]	; 0xe8
d0052caa:	ed8d 8a3b 	vstr	s16, [sp, #236]	; 0xec
d0052cae:	edcd 8a3c 	vstr	s17, [sp, #240]	; 0xf0
d0052cb2:	edcd fa3f 	vstr	s31, [sp, #252]	; 0xfc
d0052cb6:	ed8d 3a3d 	vstr	s6, [sp, #244]	; 0xf4
d0052cba:	edcd 3a3e 	vstr	s7, [sp, #248]	; 0xf8
d0052cbe:	47b0      	blx	r6
d0052cc0:	2802      	cmp	r0, #2
d0052cc2:	f300 80fd 	bgt.w	d0052ec0 <sb3dParticlesRender.part.0+0x554>
d0052cc6:	3420      	adds	r4, #32
d0052cc8:	45a0      	cmp	r8, r4
d0052cca:	f000 8128 	beq.w	d0052f1e <sb3dParticlesRender.part.0+0x5b2>
d0052cce:	7ea3      	ldrb	r3, [r4, #26]
d0052cd0:	2b00      	cmp	r3, #0
d0052cd2:	d0f8      	beq.n	d0052cc6 <sb3dParticlesRender.part.0+0x35a>
d0052cd4:	edd4 7a03 	vldr	s15, [r4, #12]
d0052cd8:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0052cdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ce0:	d9f1      	bls.n	d0052cc6 <sb3dParticlesRender.part.0+0x35a>
d0052ce2:	edd4 6a01 	vldr	s13, [r4, #4]
d0052ce6:	eeb1 5a67 	vneg.f32	s10, s15
d0052cea:	ed9d 7a18 	vldr	s14, [sp, #96]	; 0x60
d0052cee:	eddd 4a17 	vldr	s9, [sp, #92]	; 0x5c
d0052cf2:	ee36 7ac7 	vsub.f32	s14, s13, s14
d0052cf6:	ed94 6a00 	vldr	s12, [r4]
d0052cfa:	edd4 5a02 	vldr	s11, [r4, #8]
d0052cfe:	ee36 4a64 	vsub.f32	s8, s12, s9
d0052d02:	eddd 4a19 	vldr	s9, [sp, #100]	; 0x64
d0052d06:	ee27 7a2b 	vmul.f32	s14, s14, s23
d0052d0a:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0052d0e:	eeac 7a04 	vfma.f32	s14, s24, s8
d0052d12:	eeab 7a24 	vfma.f32	s14, s22, s9
d0052d16:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0052d1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d1e:	d9d2      	bls.n	d0052cc6 <sb3dParticlesRender.part.0+0x35a>
d0052d20:	ed94 7a05 	vldr	s14, [r4, #20]
d0052d24:	ed9f 5a81 	vldr	s10, [pc, #516]	; d0052f2c <sb3dParticlesRender.part.0+0x5c0>
d0052d28:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0052d2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d30:	f67f ae5c 	bls.w	d00529ec <sb3dParticlesRender.part.0+0x80>
d0052d34:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d0052d36:	2b00      	cmp	r3, #0
d0052d38:	f340 8092 	ble.w	d0052e60 <sb3dParticlesRender.part.0+0x4f4>
d0052d3c:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0052d40:	9b1d      	ldr	r3, [sp, #116]	; 0x74
d0052d42:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0052d46:	ed9f 0a7a 	vldr	s0, [pc, #488]	; d0052f30 <sb3dParticlesRender.part.0+0x5c4>
d0052d4a:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0052d4e:	e072      	b.n	d0052e36 <sb3dParticlesRender.part.0+0x4ca>
d0052d50:	edd3 7a02 	vldr	s15, [r3, #8]
d0052d54:	edd3 4a01 	vldr	s9, [r3, #4]
d0052d58:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0052d5c:	ed93 5a03 	vldr	s10, [r3, #12]
d0052d60:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0052d64:	edd3 2a0a 	vldr	s5, [r3, #40]	; 0x28
d0052d68:	ee35 5a65 	vsub.f32	s10, s10, s11
d0052d6c:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0052d70:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0052d74:	eea4 7aa4 	vfma.f32	s14, s9, s9
d0052d78:	eea5 7a05 	vfma.f32	s14, s10, s10
d0052d7c:	eeb4 7a42 	vcmp.f32	s14, s4
d0052d80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d84:	d554      	bpl.n	d0052e30 <sb3dParticlesRender.part.0+0x4c4>
d0052d86:	ed9f 2a6b 	vldr	s4, [pc, #428]	; d0052f34 <sb3dParticlesRender.part.0+0x5c8>
d0052d8a:	eeb4 7a42 	vcmp.f32	s14, s4
d0052d8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d92:	dd4d      	ble.n	d0052e30 <sb3dParticlesRender.part.0+0x4c4>
d0052d94:	eef1 0ac7 	vsqrt.f32	s1, s14
d0052d98:	edd3 1a08 	vldr	s3, [r3, #32]
d0052d9c:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0052da0:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0052da4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052da8:	ee84 2a20 	vdiv.f32	s4, s8, s1
d0052dac:	ee64 4a82 	vmul.f32	s9, s9, s4
d0052db0:	ee67 7a82 	vmul.f32	s15, s15, s4
d0052db4:	ee25 5a02 	vmul.f32	s10, s10, s4
d0052db8:	f240 80fb 	bls.w	d0052fb2 <sb3dParticlesRender.part.0+0x646>
d0052dbc:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0052dc0:	eef4 1ac1 	vcmpe.f32	s3, s2
d0052dc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052dc8:	da32      	bge.n	d0052e30 <sb3dParticlesRender.part.0+0x4c4>
d0052dca:	eef4 2ac1 	vcmpe.f32	s5, s2
d0052dce:	ee27 7a02 	vmul.f32	s14, s14, s4
d0052dd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052dd6:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0052dda:	f200 80ed 	bhi.w	d0052fb8 <sb3dParticlesRender.part.0+0x64c>
d0052dde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052de2:	da25      	bge.n	d0052e30 <sb3dParticlesRender.part.0+0x4c4>
d0052de4:	ee37 7a61 	vsub.f32	s14, s14, s3
d0052de8:	ee31 2a61 	vsub.f32	s4, s2, s3
d0052dec:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0052df0:	ed9f 7a53 	vldr	s14, [pc, #332]	; d0052f40 <sb3dParticlesRender.part.0+0x5d4>
d0052df4:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0052df8:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0052dfc:	ee34 7a47 	vsub.f32	s14, s8, s14
d0052e00:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0052e04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e08:	d912      	bls.n	d0052e30 <sb3dParticlesRender.part.0+0x4c4>
d0052e0a:	ee6b 7aa7 	vmul.f32	s15, s23, s15
d0052e0e:	eeec 7a24 	vfma.f32	s15, s24, s9
d0052e12:	eeeb 7a05 	vfma.f32	s15, s22, s10
d0052e16:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0052e1a:	eeb1 5a67 	vneg.f32	s10, s15
d0052e1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e22:	da05      	bge.n	d0052e30 <sb3dParticlesRender.part.0+0x4c4>
d0052e24:	edd3 7a07 	vldr	s15, [r3, #28]
d0052e28:	ee27 7a27 	vmul.f32	s14, s14, s15
d0052e2c:	eea5 0a07 	vfma.f32	s0, s10, s14
d0052e30:	3340      	adds	r3, #64	; 0x40
d0052e32:	459a      	cmp	sl, r3
d0052e34:	d016      	beq.n	d0052e64 <sb3dParticlesRender.part.0+0x4f8>
d0052e36:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0052e38:	2a00      	cmp	r2, #0
d0052e3a:	d0f9      	beq.n	d0052e30 <sb3dParticlesRender.part.0+0x4c4>
d0052e3c:	781a      	ldrb	r2, [r3, #0]
d0052e3e:	2a00      	cmp	r2, #0
d0052e40:	d086      	beq.n	d0052d50 <sb3dParticlesRender.part.0+0x3e4>
d0052e42:	edd3 4a04 	vldr	s9, [r3, #16]
d0052e46:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0052e4a:	edd3 7a05 	vldr	s15, [r3, #20]
d0052e4e:	ed93 5a06 	vldr	s10, [r3, #24]
d0052e52:	eef1 4a64 	vneg.f32	s9, s9
d0052e56:	eef1 7a67 	vneg.f32	s15, s15
d0052e5a:	eeb1 5a45 	vneg.f32	s10, s10
d0052e5e:	e7d4      	b.n	d0052e0a <sb3dParticlesRender.part.0+0x49e>
d0052e60:	ed9f 0a33 	vldr	s0, [pc, #204]	; d0052f30 <sb3dParticlesRender.part.0+0x5c4>
d0052e64:	7e63      	ldrb	r3, [r4, #25]
d0052e66:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0052e6a:	ed9f 7a33 	vldr	s14, [pc, #204]	; d0052f38 <sb3dParticlesRender.part.0+0x5cc>
d0052e6e:	ee07 3a90 	vmov	s15, r3
d0052e72:	ed9f 8a33 	vldr	s16, [pc, #204]	; d0052f40 <sb3dParticlesRender.part.0+0x5d4>
d0052e76:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0052e7a:	ee67 7a87 	vmul.f32	s15, s15, s14
d0052e7e:	fec7 7a88 	vmaxnm.f32	s15, s15, s16
d0052e82:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0052e86:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0052e8a:	f7ff fb0f 	bl	d00524ac <brightnessToShadeF>
d0052e8e:	edd4 ea05 	vldr	s29, [r4, #20]
d0052e92:	ed94 5a04 	vldr	s10, [r4, #16]
d0052e96:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0052e9a:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0052e9e:	edd4 7a03 	vldr	s15, [r4, #12]
d0052ea2:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0052ea6:	ed94 6a00 	vldr	s12, [r4]
d0052eaa:	edd4 6a01 	vldr	s13, [r4, #4]
d0052eae:	edd4 5a02 	vldr	s11, [r4, #8]
d0052eb2:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0052eb6:	fece ea88 	vmaxnm.f32	s29, s29, s16
d0052eba:	fece eac7 	vminnm.f32	s29, s29, s14
d0052ebe:	e59f      	b.n	d0052a00 <sb3dParticlesRender.part.0+0x94>
d0052ec0:	eef0 4a6e 	vmov.f32	s9, s29
d0052ec4:	1e46      	subs	r6, r0, #1
d0052ec6:	2701      	movs	r7, #1
d0052ec8:	463b      	mov	r3, r7
d0052eca:	aa58      	add	r2, sp, #352	; 0x160
d0052ecc:	3701      	adds	r7, #1
d0052ece:	a858      	add	r0, sp, #352	; 0x160
d0052ed0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0052ed4:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0052ed8:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0052edc:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0052ee0:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0052ee4:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0052ee8:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0052eec:	7e62      	ldrb	r2, [r4, #25]
d0052eee:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0052ef2:	4628      	mov	r0, r5
d0052ef4:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0052ef8:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0052efc:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0052f00:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0052f04:	ed9c 2a01 	vldr	s4, [ip, #4]
d0052f08:	7e21      	ldrb	r1, [r4, #24]
d0052f0a:	eddc 2a02 	vldr	s5, [ip, #8]
d0052f0e:	f7ff fc1b 	bl	d0052748 <submitClippedTri.constprop.0>
d0052f12:	42b7      	cmp	r7, r6
d0052f14:	d1d8      	bne.n	d0052ec8 <sb3dParticlesRender.part.0+0x55c>
d0052f16:	3420      	adds	r4, #32
d0052f18:	45a0      	cmp	r8, r4
d0052f1a:	f47f aed8 	bne.w	d0052cce <sb3dParticlesRender.part.0+0x362>
d0052f1e:	b059      	add	sp, #356	; 0x164
d0052f20:	ecbd 8b10 	vpop	{d8-d15}
d0052f24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052f28:	2001f000 	.word	0x2001f000
d0052f2c:	38d1b717 	.word	0x38d1b717
d0052f30:	3dcccccd 	.word	0x3dcccccd
d0052f34:	358637bd 	.word	0x358637bd
d0052f38:	3b808081 	.word	0x3b808081
d0052f3c:	d00667c4 	.word	0xd00667c4
d0052f40:	00000000 	.word	0x00000000
d0052f44:	1e43      	subs	r3, r0, #1
d0052f46:	eef0 4a6e 	vmov.f32	s9, s29
d0052f4a:	f8cd a054 	str.w	sl, [sp, #84]	; 0x54
d0052f4e:	2701      	movs	r7, #1
d0052f50:	46aa      	mov	sl, r5
d0052f52:	4625      	mov	r5, r4
d0052f54:	461c      	mov	r4, r3
d0052f56:	463b      	mov	r3, r7
d0052f58:	aa58      	add	r2, sp, #352	; 0x160
d0052f5a:	3701      	adds	r7, #1
d0052f5c:	a858      	add	r0, sp, #352	; 0x160
d0052f5e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0052f62:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0052f66:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0052f6a:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0052f6e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0052f72:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0052f76:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0052f7a:	7e6a      	ldrb	r2, [r5, #25]
d0052f7c:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0052f80:	4650      	mov	r0, sl
d0052f82:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0052f86:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0052f8a:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0052f8e:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0052f92:	ed9c 2a01 	vldr	s4, [ip, #4]
d0052f96:	7e29      	ldrb	r1, [r5, #24]
d0052f98:	eddc 2a02 	vldr	s5, [ip, #8]
d0052f9c:	f7ff fbd4 	bl	d0052748 <submitClippedTri.constprop.0>
d0052fa0:	42a7      	cmp	r7, r4
d0052fa2:	d1d8      	bne.n	d0052f56 <sb3dParticlesRender.part.0+0x5ea>
d0052fa4:	462c      	mov	r4, r5
d0052fa6:	eef0 ea64 	vmov.f32	s29, s9
d0052faa:	4655      	mov	r5, sl
d0052fac:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
d0052fb0:	e64f      	b.n	d0052c52 <sb3dParticlesRender.part.0+0x2e6>
d0052fb2:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0052fb6:	e728      	b.n	d0052e0a <sb3dParticlesRender.part.0+0x49e>
d0052fb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052fbc:	d812      	bhi.n	d0052fe4 <sb3dParticlesRender.part.0+0x678>
d0052fbe:	ee37 7a61 	vsub.f32	s14, s14, s3
d0052fc2:	ee31 2a61 	vsub.f32	s4, s2, s3
d0052fc6:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0052fca:	ed1f 7a23 	vldr	s14, [pc, #-140]	; d0052f40 <sb3dParticlesRender.part.0+0x5d4>
d0052fce:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0052fd2:	eef0 2a44 	vmov.f32	s5, s8
d0052fd6:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0052fda:	eee7 2a63 	vfms.f32	s5, s14, s7
d0052fde:	eeb0 7a62 	vmov.f32	s14, s5
d0052fe2:	e70d      	b.n	d0052e00 <sb3dParticlesRender.part.0+0x494>
d0052fe4:	ee37 7a41 	vsub.f32	s14, s14, s2
d0052fe8:	ee32 2ac1 	vsub.f32	s4, s5, s2
d0052fec:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0052ff0:	ed1f 7a2d 	vldr	s14, [pc, #-180]	; d0052f40 <sb3dParticlesRender.part.0+0x5d4>
d0052ff4:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0052ff8:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0052ffc:	ee34 7a47 	vsub.f32	s14, s8, s14
d0053000:	ee27 7a03 	vmul.f32	s14, s14, s6
d0053004:	e6fc      	b.n	d0052e00 <sb3dParticlesRender.part.0+0x494>
d0053006:	bf00      	nop

d0053008 <setDefaultRenderMode>:
d0053008:	4b01      	ldr	r3, [pc, #4]	; (d0053010 <setDefaultRenderMode+0x8>)
d005300a:	4a02      	ldr	r2, [pc, #8]	; (d0053014 <setDefaultRenderMode+0xc>)
d005300c:	601a      	str	r2, [r3, #0]
d005300e:	4770      	bx	lr
d0053010:	d00fca80 	.word	0xd00fca80
d0053014:	d005267d 	.word	0xd005267d

d0053018 <initClipScratch>:
d0053018:	b510      	push	{r4, lr}
d005301a:	4c0f      	ldr	r4, [pc, #60]	; (d0053058 <initClipScratch+0x40>)
d005301c:	6823      	ldr	r3, [r4, #0]
d005301e:	b11b      	cbz	r3, d0053028 <initClipScratch+0x10>
d0053020:	4b0e      	ldr	r3, [pc, #56]	; (d005305c <initClipScratch+0x44>)
d0053022:	681b      	ldr	r3, [r3, #0]
d0053024:	b103      	cbz	r3, d0053028 <initClipScratch+0x10>
d0053026:	bd10      	pop	{r4, pc}
d0053028:	4a0d      	ldr	r2, [pc, #52]	; (d0053060 <initClipScratch+0x48>)
d005302a:	7813      	ldrb	r3, [r2, #0]
d005302c:	7850      	ldrb	r0, [r2, #1]
d005302e:	7891      	ldrb	r1, [r2, #2]
d0053030:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0053034:	78d2      	ldrb	r2, [r2, #3]
d0053036:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005303a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005303e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0053040:	4798      	blx	r3
d0053042:	2800      	cmp	r0, #0
d0053044:	d0ef      	beq.n	d0053026 <initClipScratch+0xe>
d0053046:	301f      	adds	r0, #31
d0053048:	4b04      	ldr	r3, [pc, #16]	; (d005305c <initClipScratch+0x44>)
d005304a:	f020 001f 	bic.w	r0, r0, #31
d005304e:	f100 0260 	add.w	r2, r0, #96	; 0x60
d0053052:	6020      	str	r0, [r4, #0]
d0053054:	601a      	str	r2, [r3, #0]
d0053056:	bd10      	pop	{r4, pc}
d0053058:	d00667c0 	.word	0xd00667c0
d005305c:	d00667c4 	.word	0xd00667c4
d0053060:	2001f000 	.word	0x2001f000

d0053064 <submitClippedTri>:
d0053064:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053068:	4f84      	ldr	r7, [pc, #528]	; (d005327c <submitClippedTri+0x218>)
d005306a:	683d      	ldr	r5, [r7, #0]
d005306c:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0053070:	ed2d 8b04 	vpush	{d8-d9}
d0053074:	b08b      	sub	sp, #44	; 0x2c
d0053076:	f280 80ee 	bge.w	d0053256 <submitClippedTri+0x1f2>
d005307a:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d005307e:	edd0 6a14 	vldr	s13, [r0, #80]	; 0x50
d0053082:	eeb6 9a00 	vmov.f32	s18, #96	; 0x3f000000  0.5
d0053086:	ed90 7a13 	vldr	s14, [r0, #76]	; 0x4c
d005308a:	ed90 5a12 	vldr	s10, [r0, #72]	; 0x48
d005308e:	ea4f 1c85 	mov.w	ip, r5, lsl #6
d0053092:	eec6 8a01 	vdiv.f32	s17, s12, s2
d0053096:	4c7a      	ldr	r4, [pc, #488]	; (d0053280 <submitClippedTri+0x21c>)
d0053098:	469b      	mov	fp, r3
d005309a:	f10c 0a08 	add.w	sl, ip, #8
d005309e:	eb04 1685 	add.w	r6, r4, r5, lsl #6
d00530a2:	3501      	adds	r5, #1
d00530a4:	f10c 0810 	add.w	r8, ip, #16
d00530a8:	eddf 5a76 	vldr	s11, [pc, #472]	; d0053284 <submitClippedTri+0x220>
d00530ac:	603d      	str	r5, [r7, #0]
d00530ae:	eb04 050a 	add.w	r5, r4, sl
d00530b2:	eec6 7a22 	vdiv.f32	s15, s12, s5
d00530b6:	eb04 0908 	add.w	r9, r4, r8
d00530ba:	ee76 6a89 	vadd.f32	s13, s13, s18
d00530be:	ee86 8a04 	vdiv.f32	s16, s12, s8
d00530c2:	ee37 7a09 	vadd.f32	s14, s14, s18
d00530c6:	ee68 0aa0 	vmul.f32	s1, s17, s1
d00530ca:	ee20 0a28 	vmul.f32	s0, s0, s17
d00530ce:	eef0 8a47 	vmov.f32	s17, s14
d00530d2:	ee61 1aa7 	vmul.f32	s3, s3, s15
d00530d6:	ee27 2a82 	vmul.f32	s4, s15, s4
d00530da:	eef0 7a66 	vmov.f32	s15, s13
d00530de:	eee5 8a00 	vfma.f32	s17, s10, s0
d00530e2:	ed9f 0a69 	vldr	s0, [pc, #420]	; d0053288 <submitClippedTri+0x224>
d00530e6:	eee5 7a60 	vfms.f32	s15, s10, s1
d00530ea:	eef0 0a47 	vmov.f32	s1, s14
d00530ee:	ee23 3a08 	vmul.f32	s6, s6, s16
d00530f2:	ee68 3a23 	vmul.f32	s7, s16, s7
d00530f6:	eee5 0a21 	vfma.f32	s1, s10, s3
d00530fa:	eea5 7a03 	vfma.f32	s14, s10, s6
d00530fe:	eefd 8ae8 	vcvt.s32.f32	s17, s17
d0053102:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053106:	ee18 3a90 	vmov	r3, s17
d005310a:	eef0 1a60 	vmov.f32	s3, s1
d005310e:	ee17 7a90 	vmov	r7, s15
d0053112:	eef0 0a66 	vmov.f32	s1, s13
d0053116:	f844 300c 	str.w	r3, [r4, ip]
d005311a:	eee5 6a63 	vfms.f32	s13, s10, s7
d005311e:	6077      	str	r7, [r6, #4]
d0053120:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d0053124:	b23f      	sxth	r7, r7
d0053126:	eee5 0a42 	vfms.f32	s1, s10, s4
d005312a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d005312e:	ee11 3a90 	vmov	r3, s3
d0053132:	f844 300a 	str.w	r3, [r4, sl]
d0053136:	ee17 3a10 	vmov	r3, s14
d005313a:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d005313e:	edc5 7a01 	vstr	s15, [r5, #4]
d0053142:	ee17 ea90 	vmov	lr, s15
d0053146:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d005314a:	f844 3008 	str.w	r3, [r4, r8]
d005314e:	45be      	cmp	lr, r7
d0053150:	46b8      	mov	r8, r7
d0053152:	edc9 7a01 	vstr	s15, [r9, #4]
d0053156:	ee17 5a90 	vmov	r5, s15
d005315a:	f886 1034 	strb.w	r1, [r6, #52]	; 0x34
d005315e:	f886 2035 	strb.w	r2, [r6, #53]	; 0x35
d0053162:	edc6 4a07 	vstr	s9, [r6, #28]
d0053166:	f886 b036 	strb.w	fp, [r6, #54]	; 0x36
d005316a:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d005316e:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0053172:	ee31 7a47 	vsub.f32	s14, s2, s14
d0053176:	ee27 7a27 	vmul.f32	s14, s14, s15
d005317a:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d005317e:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0053182:	ee27 7a00 	vmul.f32	s14, s14, s0
d0053186:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005318a:	ee17 3a10 	vmov	r3, s14
d005318e:	8433      	strh	r3, [r6, #32]
d0053190:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0053194:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0053198:	ee32 7ac7 	vsub.f32	s14, s5, s14
d005319c:	ee27 7a27 	vmul.f32	s14, s14, s15
d00531a0:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d00531a4:	fe87 7a46 	vminnm.f32	s14, s14, s12
d00531a8:	ee27 7a00 	vmul.f32	s14, s14, s0
d00531ac:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00531b0:	ee17 3a10 	vmov	r3, s14
d00531b4:	8473      	strh	r3, [r6, #34]	; 0x22
d00531b6:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00531ba:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d00531be:	ee74 7a67 	vsub.f32	s15, s8, s15
d00531c2:	ed86 1a0a 	vstr	s2, [r6, #40]	; 0x28
d00531c6:	edc6 2a0b 	vstr	s5, [r6, #44]	; 0x2c
d00531ca:	ed86 4a0c 	vstr	s8, [r6, #48]	; 0x30
d00531ce:	ee67 7a87 	vmul.f32	s15, s15, s14
d00531d2:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d00531d6:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00531da:	ee67 7a80 	vmul.f32	s15, s15, s0
d00531de:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00531e2:	ee17 3a90 	vmov	r3, s15
d00531e6:	84b3      	strh	r3, [r6, #36]	; 0x24
d00531e8:	db3a      	blt.n	d0053260 <submitClippedTri+0x1fc>
d00531ea:	463b      	mov	r3, r7
d00531ec:	8737      	strh	r7, [r6, #56]	; 0x38
d00531ee:	42ab      	cmp	r3, r5
d00531f0:	dd02      	ble.n	d00531f8 <submitClippedTri+0x194>
d00531f2:	eb04 030c 	add.w	r3, r4, ip
d00531f6:	871d      	strh	r5, [r3, #56]	; 0x38
d00531f8:	45be      	cmp	lr, r7
d00531fa:	dc36      	bgt.n	d005326a <submitClippedTri+0x206>
d00531fc:	eb04 030c 	add.w	r3, r4, ip
d0053200:	875f      	strh	r7, [r3, #58]	; 0x3a
d0053202:	45a8      	cmp	r8, r5
d0053204:	da02      	bge.n	d005320c <submitClippedTri+0x1a8>
d0053206:	eb04 030c 	add.w	r3, r4, ip
d005320a:	875d      	strh	r5, [r3, #58]	; 0x3a
d005320c:	eb04 030c 	add.w	r3, r4, ip
d0053210:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d0053214:	2a00      	cmp	r2, #0
d0053216:	da01      	bge.n	d005321c <submitClippedTri+0x1b8>
d0053218:	2200      	movs	r2, #0
d005321a:	871a      	strh	r2, [r3, #56]	; 0x38
d005321c:	eb04 030c 	add.w	r3, r4, ip
d0053220:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d0053224:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0053228:	db02      	blt.n	d0053230 <submitClippedTri+0x1cc>
d005322a:	f240 123f 	movw	r2, #319	; 0x13f
d005322e:	875a      	strh	r2, [r3, #58]	; 0x3a
d0053230:	eb04 010c 	add.w	r1, r4, ip
d0053234:	4464      	add	r4, ip
d0053236:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d005323a:	2b00      	cmp	r3, #0
d005323c:	bfb8      	it	lt
d005323e:	331f      	addlt	r3, #31
d0053240:	115a      	asrs	r2, r3, #5
d0053242:	f9b4 303a 	ldrsh.w	r3, [r4, #58]	; 0x3a
d0053246:	2b00      	cmp	r3, #0
d0053248:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d005324c:	bfb8      	it	lt
d005324e:	331f      	addlt	r3, #31
d0053250:	115b      	asrs	r3, r3, #5
d0053252:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
d0053256:	b00b      	add	sp, #44	; 0x2c
d0053258:	ecbd 8b04 	vpop	{d8-d9}
d005325c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053260:	fa0f f28e 	sxth.w	r2, lr
d0053264:	4613      	mov	r3, r2
d0053266:	8732      	strh	r2, [r6, #56]	; 0x38
d0053268:	e7c1      	b.n	d00531ee <submitClippedTri+0x18a>
d005326a:	fa0f fe8e 	sxth.w	lr, lr
d005326e:	eb04 030c 	add.w	r3, r4, ip
d0053272:	46f0      	mov	r8, lr
d0053274:	f8a3 e03a 	strh.w	lr, [r3, #58]	; 0x3a
d0053278:	e7c3      	b.n	d0053202 <submitClippedTri+0x19e>
d005327a:	bf00      	nop
d005327c:	d00687e0 	.word	0xd00687e0
d0053280:	d0068800 	.word	0xd0068800
d0053284:	00000000 	.word	0x00000000
d0053288:	477fff00 	.word	0x477fff00

d005328c <getRenderTriCount>:
d005328c:	4b01      	ldr	r3, [pc, #4]	; (d0053294 <getRenderTriCount+0x8>)
d005328e:	6818      	ldr	r0, [r3, #0]
d0053290:	4770      	bx	lr
d0053292:	bf00      	nop
d0053294:	d00687e0 	.word	0xd00687e0

d0053298 <drawFakeHorizonDots>:
d0053298:	2800      	cmp	r0, #0
d005329a:	f000 8107 	beq.w	d00534ac <drawFakeHorizonDots+0x214>
d005329e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00532a2:	4699      	mov	r9, r3
d00532a4:	ed2d 8b10 	vpush	{d8-d15}
d00532a8:	b085      	sub	sp, #20
d00532aa:	2b00      	cmp	r3, #0
d00532ac:	f000 80f9 	beq.w	d00534a2 <drawFakeHorizonDots+0x20a>
d00532b0:	4617      	mov	r7, r2
d00532b2:	ed90 9a02 	vldr	s18, [r0, #8]
d00532b6:	edd0 8a00 	vldr	s17, [r0]
d00532ba:	4606      	mov	r6, r0
d00532bc:	2f02      	cmp	r7, #2
d00532be:	ed90 6a01 	vldr	s12, [r0, #4]
d00532c2:	ed90 da07 	vldr	s26, [r0, #28]
d00532c6:	460a      	mov	r2, r1
d00532c8:	bfb8      	it	lt
d00532ca:	2702      	movlt	r7, #2
d00532cc:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d00532d0:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d00532d4:	ee30 ba46 	vsub.f32	s22, s0, s12
d00532d8:	ee07 7a90 	vmov	s15, r7
d00532dc:	ed90 fa06 	vldr	s30, [r0, #24]
d00532e0:	edd0 ea08 	vldr	s29, [r0, #32]
d00532e4:	f06f 0311 	mvn.w	r3, #17
d00532e8:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d00532ec:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d00532f0:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d00532f4:	ee2b da0d 	vmul.f32	s26, s22, s26
d00532f8:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d00532fc:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0053300:	ee89 7a08 	vdiv.f32	s14, s18, s16
d0053304:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d0053308:	eddf 5a69 	vldr	s11, [pc, #420]	; d00534b0 <drawFakeHorizonDots+0x218>
d005330c:	4d69      	ldr	r5, [pc, #420]	; (d00534b4 <drawFakeHorizonDots+0x21c>)
d005330e:	4c6a      	ldr	r4, [pc, #424]	; (d00534b8 <drawFakeHorizonDots+0x220>)
d0053310:	eddf 9a6a 	vldr	s19, [pc, #424]	; d00534bc <drawFakeHorizonDots+0x224>
d0053314:	eec8 7a88 	vdiv.f32	s15, s17, s16
d0053318:	9302      	str	r3, [sp, #8]
d005331a:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d00534c4 <drawFakeHorizonDots+0x22c>
d005331e:	4623      	mov	r3, r4
d0053320:	ee28 8a25 	vmul.f32	s16, s16, s11
d0053324:	ee2b ba26 	vmul.f32	s22, s22, s13
d0053328:	ee68 9a29 	vmul.f32	s19, s16, s19
d005332c:	febb 7a47 	vrintm.f32	s14, s14
d0053330:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0053334:	ee17 0a10 	vmov	r0, s14
d0053338:	fefb 7a67 	vrintm.f32	s15, s15
d005333c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053340:	3812      	subs	r0, #18
d0053342:	ee17 1a90 	vmov	r1, s15
d0053346:	fb05 f500 	mul.w	r5, r5, r0
d005334a:	fb00 f007 	mul.w	r0, r0, r7
d005334e:	fb04 5a01 	mla	sl, r4, r1, r5
d0053352:	3912      	subs	r1, #18
d0053354:	9001      	str	r0, [sp, #4]
d0053356:	fb07 f101 	mul.w	r1, r7, r1
d005335a:	9103      	str	r1, [sp, #12]
d005335c:	eddd 7a01 	vldr	s15, [sp, #4]
d0053360:	ee39 aa08 	vadd.f32	s20, s18, s16
d0053364:	9902      	ldr	r1, [sp, #8]
d0053366:	ee78 aa88 	vadd.f32	s21, s17, s16
d005336a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005336e:	9d03      	ldr	r5, [sp, #12]
d0053370:	fb01 f801 	mul.w	r8, r1, r1
d0053374:	f06f 0411 	mvn.w	r4, #17
d0053378:	ee37 aaca 	vsub.f32	s20, s15, s20
d005337c:	e078      	b.n	d0053470 <drawFakeHorizonDots+0x1d8>
d005337e:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d0053382:	fb09 f000 	mul.w	r0, r9, r0
d0053386:	2850      	cmp	r0, #80	; 0x50
d0053388:	dd6e      	ble.n	d0053468 <drawFakeHorizonDots+0x1d0>
d005338a:	494d      	ldr	r1, [pc, #308]	; (d00534c0 <drawFakeHorizonDots+0x228>)
d005338c:	fba1 1000 	umull	r1, r0, r1, r0
d0053390:	f3c0 1087 	ubfx	r0, r0, #6, #8
d0053394:	fb03 a104 	mla	r1, r3, r4, sl
d0053398:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d005339c:	fb0b f101 	mul.w	r1, fp, r1
d00533a0:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d00533a4:	fa5f fc81 	uxtb.w	ip, r1
d00533a8:	4584      	cmp	ip, r0
d00533aa:	d85d      	bhi.n	d0053468 <drawFakeHorizonDots+0x1d0>
d00533ac:	ee07 5a10 	vmov	s14, r5
d00533b0:	f3c1 4007 	ubfx	r0, r1, #16, #8
d00533b4:	f3c1 2107 	ubfx	r1, r1, #8, #8
d00533b8:	eef0 4a4a 	vmov.f32	s9, s20
d00533bc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00533c0:	ee06 0a90 	vmov	s13, r0
d00533c4:	ee07 1a90 	vmov	s15, r1
d00533c8:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d00533cc:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00533d0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00533d4:	ee37 7a6a 	vsub.f32	s14, s14, s21
d00533d8:	eee6 4aa9 	vfma.f32	s9, s13, s19
d00533dc:	eea7 7aa9 	vfma.f32	s14, s15, s19
d00533e0:	eef0 7a47 	vmov.f32	s15, s14
d00533e4:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d00533e8:	eeac 7a27 	vfma.f32	s14, s24, s15
d00533ec:	ee3b 7a07 	vadd.f32	s14, s22, s14
d00533f0:	eeb4 6ac7 	vcmpe.f32	s12, s14
d00533f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533f8:	da36      	bge.n	d0053468 <drawFakeHorizonDots+0x1d0>
d00533fa:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d00533fe:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d0053402:	ee2f 6a27 	vmul.f32	s12, s30, s15
d0053406:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d005340a:	ee6e 7a27 	vmul.f32	s15, s28, s15
d005340e:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d0053412:	ee83 4a87 	vdiv.f32	s8, s7, s14
d0053416:	eeae 6aa4 	vfma.f32	s12, s29, s9
d005341a:	eeed 7aa4 	vfma.f32	s15, s27, s9
d005341e:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d0053422:	ee36 7aa4 	vadd.f32	s14, s13, s9
d0053426:	ee7d 6a06 	vadd.f32	s13, s26, s12
d005342a:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d005342e:	ee35 6aa4 	vadd.f32	s12, s11, s9
d0053432:	ee66 6a85 	vmul.f32	s13, s13, s10
d0053436:	ee65 7a67 	vnmul.f32	s15, s10, s15
d005343a:	eea6 7a84 	vfma.f32	s14, s13, s8
d005343e:	eea7 6a84 	vfma.f32	s12, s15, s8
d0053442:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0053446:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d005344a:	ee17 0a10 	vmov	r0, s14
d005344e:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0053452:	d209      	bcs.n	d0053468 <drawFakeHorizonDots+0x1d0>
d0053454:	ee17 1a90 	vmov	r1, s15
d0053458:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d005345c:	d204      	bcs.n	d0053468 <drawFakeHorizonDots+0x1d0>
d005345e:	9200      	str	r2, [sp, #0]
d0053460:	f7fb faf6 	bl	d004ea50 <putPixel>
d0053464:	4b14      	ldr	r3, [pc, #80]	; (d00534b8 <drawFakeHorizonDots+0x220>)
d0053466:	9a00      	ldr	r2, [sp, #0]
d0053468:	3401      	adds	r4, #1
d005346a:	443d      	add	r5, r7
d005346c:	2c13      	cmp	r4, #19
d005346e:	d009      	beq.n	d0053484 <drawFakeHorizonDots+0x1ec>
d0053470:	fb04 8004 	mla	r0, r4, r4, r8
d0053474:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0053478:	dcf6      	bgt.n	d0053468 <drawFakeHorizonDots+0x1d0>
d005347a:	28f3      	cmp	r0, #243	; 0xf3
d005347c:	f73f af7f 	bgt.w	d005337e <drawFakeHorizonDots+0xe6>
d0053480:	4648      	mov	r0, r9
d0053482:	e787      	b.n	d0053394 <drawFakeHorizonDots+0xfc>
d0053484:	9902      	ldr	r1, [sp, #8]
d0053486:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d005348a:	9801      	ldr	r0, [sp, #4]
d005348c:	3101      	adds	r1, #1
d005348e:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d0053492:	4438      	add	r0, r7
d0053494:	2913      	cmp	r1, #19
d0053496:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d005349a:	9102      	str	r1, [sp, #8]
d005349c:	9001      	str	r0, [sp, #4]
d005349e:	f47f af5d 	bne.w	d005335c <drawFakeHorizonDots+0xc4>
d00534a2:	b005      	add	sp, #20
d00534a4:	ecbd 8b10 	vpop	{d8-d15}
d00534a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00534ac:	4770      	bx	lr
d00534ae:	bf00      	nop
d00534b0:	3eb33333 	.word	0x3eb33333
d00534b4:	27d4eb2f 	.word	0x27d4eb2f
d00534b8:	165667b1 	.word	0x165667b1
d00534bc:	3c008081 	.word	0x3c008081
d00534c0:	ca4587e7 	.word	0xca4587e7
d00534c4:	4bf19f61 	.word	0x4bf19f61

d00534c8 <drawFakeSkyDots>:
d00534c8:	2a10      	cmp	r2, #16
d00534ca:	ed9f 6a73 	vldr	s12, [pc, #460]	; d0053698 <drawFakeSkyDots+0x1d0>
d00534ce:	ed9f 7a73 	vldr	s14, [pc, #460]	; d005369c <drawFakeSkyDots+0x1d4>
d00534d2:	bfb8      	it	lt
d00534d4:	2210      	movlt	r2, #16
d00534d6:	2b08      	cmp	r3, #8
d00534d8:	ee07 2a90 	vmov	s15, r2
d00534dc:	bfb8      	it	lt
d00534de:	2308      	movlt	r3, #8
d00534e0:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d00534e4:	ee07 3a90 	vmov	s15, r3
d00534e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00534ec:	ed2d 8b10 	vpush	{d8-d15}
d00534f0:	eec6 da26 	vdiv.f32	s27, s12, s13
d00534f4:	b085      	sub	sp, #20
d00534f6:	4617      	mov	r7, r2
d00534f8:	4682      	mov	sl, r0
d00534fa:	9303      	str	r3, [sp, #12]
d00534fc:	468b      	mov	fp, r1
d00534fe:	2300      	movs	r3, #0
d0053500:	edd0 ea06 	vldr	s29, [r0, #24]
d0053504:	ed90 ea07 	vldr	s28, [r0, #28]
d0053508:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005350c:	ed90 da08 	vldr	s26, [r0, #32]
d0053510:	edd0 ca09 	vldr	s25, [r0, #36]	; 0x24
d0053514:	ed90 ca0a 	vldr	s24, [r0, #40]	; 0x28
d0053518:	eec7 aa27 	vdiv.f32	s21, s14, s15
d005351c:	edd0 7a0d 	vldr	s15, [r0, #52]	; 0x34
d0053520:	edd0 ba0b 	vldr	s23, [r0, #44]	; 0x2c
d0053524:	edcd 7a00 	vstr	s15, [sp]
d0053528:	ed90 ba0c 	vldr	s22, [r0, #48]	; 0x30
d005352c:	edd0 7a0e 	vldr	s15, [r0, #56]	; 0x38
d0053530:	f89d 9078 	ldrb.w	r9, [sp, #120]	; 0x78
d0053534:	f8df 8178 	ldr.w	r8, [pc, #376]	; d00536b0 <drawFakeSkyDots+0x1e8>
d0053538:	ed9f fa59 	vldr	s30, [pc, #356]	; d00536a0 <drawFakeSkyDots+0x1d8>
d005353c:	9302      	str	r3, [sp, #8]
d005353e:	edcd 7a01 	vstr	s15, [sp, #4]
d0053542:	eddd 7a02 	vldr	s15, [sp, #8]
d0053546:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d005354a:	4b56      	ldr	r3, [pc, #344]	; (d00536a4 <drawFakeSkyDots+0x1dc>)
d005354c:	2400      	movs	r4, #0
d005354e:	ee17 2a90 	vmov	r2, s15
d0053552:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0053556:	4e54      	ldr	r6, [pc, #336]	; (d00536a8 <drawFakeSkyDots+0x1e0>)
d0053558:	fb03 f502 	mul.w	r5, r3, r2
d005355c:	ea85 3355 	eor.w	r3, r5, r5, lsr #13
d0053560:	ee07 4a90 	vmov	s15, r4
d0053564:	eef0 fa48 	vmov.f32	s31, s16
d0053568:	3401      	adds	r4, #1
d005356a:	fb08 f303 	mul.w	r3, r8, r3
d005356e:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0053572:	4435      	add	r5, r6
d0053574:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d0053578:	f3c3 4207 	ubfx	r2, r3, #16, #8
d005357c:	ee07 2a90 	vmov	s15, r2
d0053580:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0053584:	b2db      	uxtb	r3, r3
d0053586:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005358a:	ee07 2a10 	vmov	s14, r2
d005358e:	454b      	cmp	r3, r9
d0053590:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0053594:	eee7 fa8f 	vfma.f32	s31, s15, s30
d0053598:	d86f      	bhi.n	d005367a <drawFakeSkyDots+0x1b2>
d005359a:	eee7 6a0f 	vfma.f32	s13, s14, s30
d005359e:	ee6f faaa 	vmul.f32	s31, s31, s21
d00535a2:	eeb0 0a6f 	vmov.f32	s0, s31
d00535a6:	ee26 aaad 	vmul.f32	s20, s13, s27
d00535aa:	f003 fadd 	bl	d0056b68 <sinf>
d00535ae:	eeb0 9a40 	vmov.f32	s18, s0
d00535b2:	eeb0 0a6f 	vmov.f32	s0, s31
d00535b6:	f003 f8f3 	bl	d00567a0 <cosf>
d00535ba:	eef0 fa40 	vmov.f32	s31, s0
d00535be:	eeb0 0a4a 	vmov.f32	s0, s20
d00535c2:	f003 fad1 	bl	d0056b68 <sinf>
d00535c6:	eef0 9a40 	vmov.f32	s19, s0
d00535ca:	eeb0 0a4a 	vmov.f32	s0, s20
d00535ce:	f003 f8e7 	bl	d00567a0 <cosf>
d00535d2:	eddd 6a01 	vldr	s13, [sp, #4]
d00535d6:	ee2f 7aa9 	vmul.f32	s14, s31, s19
d00535da:	ee6f 7a80 	vmul.f32	s15, s31, s0
d00535de:	ee26 6a87 	vmul.f32	s12, s13, s14
d00535e2:	ee6c 4aa7 	vmul.f32	s9, s25, s15
d00535e6:	ee6e 6aa7 	vmul.f32	s13, s29, s15
d00535ea:	eeab 6a27 	vfma.f32	s12, s22, s15
d00535ee:	eef0 7a66 	vmov.f32	s15, s13
d00535f2:	eef0 6a64 	vmov.f32	s13, s9
d00535f6:	eeed 7a07 	vfma.f32	s15, s26, s14
d00535fa:	eeeb 6a87 	vfma.f32	s13, s23, s14
d00535fe:	eeb0 7a46 	vmov.f32	s14, s12
d0053602:	ed9d 6a00 	vldr	s12, [sp]
d0053606:	eea6 7a09 	vfma.f32	s14, s12, s18
d005360a:	ed9f 6a28 	vldr	s12, [pc, #160]	; d00536ac <drawFakeSkyDots+0x1e4>
d005360e:	eeee 7a09 	vfma.f32	s15, s28, s18
d0053612:	eeec 6a09 	vfma.f32	s13, s24, s18
d0053616:	eeb4 7ac6 	vcmpe.f32	s14, s12
d005361a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005361e:	d92c      	bls.n	d005367a <drawFakeSkyDots+0x1b2>
d0053620:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0053624:	ed9a 5a12 	vldr	s10, [sl, #72]	; 0x48
d0053628:	ee65 7a27 	vmul.f32	s15, s10, s15
d005362c:	eec6 4a07 	vdiv.f32	s9, s12, s14
d0053630:	ed9a 7a13 	vldr	s14, [sl, #76]	; 0x4c
d0053634:	ed9a 6a14 	vldr	s12, [sl, #80]	; 0x50
d0053638:	ee37 7a28 	vadd.f32	s14, s14, s17
d005363c:	ee36 6a28 	vadd.f32	s12, s12, s17
d0053640:	ee65 6a26 	vmul.f32	s13, s10, s13
d0053644:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0053648:	eef0 7a47 	vmov.f32	s15, s14
d005364c:	eeb0 7a46 	vmov.f32	s14, s12
d0053650:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053654:	eea4 7ae6 	vfms.f32	s14, s9, s13
d0053658:	ee17 0a90 	vmov	r0, s15
d005365c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0053660:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0053664:	d209      	bcs.n	d005367a <drawFakeSkyDots+0x1b2>
d0053666:	ee17 3a90 	vmov	r3, s15
d005366a:	465a      	mov	r2, fp
d005366c:	ee17 1a90 	vmov	r1, s15
d0053670:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0053674:	d201      	bcs.n	d005367a <drawFakeSkyDots+0x1b2>
d0053676:	f7fb f9eb 	bl	d004ea50 <putPixel>
d005367a:	42a7      	cmp	r7, r4
d005367c:	f47f af6e 	bne.w	d005355c <drawFakeSkyDots+0x94>
d0053680:	9b02      	ldr	r3, [sp, #8]
d0053682:	9a03      	ldr	r2, [sp, #12]
d0053684:	3301      	adds	r3, #1
d0053686:	429a      	cmp	r2, r3
d0053688:	9302      	str	r3, [sp, #8]
d005368a:	f47f af5a 	bne.w	d0053542 <drawFakeSkyDots+0x7a>
d005368e:	b005      	add	sp, #20
d0053690:	ecbd 8b10 	vpop	{d8-d15}
d0053694:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053698:	40c90fdb 	.word	0x40c90fdb
d005369c:	3fc90fdb 	.word	0x3fc90fdb
d00536a0:	3b808081 	.word	0x3b808081
d00536a4:	27d4eb2f 	.word	0x27d4eb2f
d00536a8:	165667b1 	.word	0x165667b1
d00536ac:	3a83126f 	.word	0x3a83126f
d00536b0:	4bf19f61 	.word	0x4bf19f61

d00536b4 <drawFakeHorizon>:
d00536b4:	2800      	cmp	r0, #0
d00536b6:	f000 813e 	beq.w	d0053936 <drawFakeHorizon+0x282>
d00536ba:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00536be:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00536c2:	ed2d 8b0e 	vpush	{d8-d14}
d00536c6:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d00536ca:	b083      	sub	sp, #12
d00536cc:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d00536d0:	460f      	mov	r7, r1
d00536d2:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d00536d6:	eddf 7a9c 	vldr	s15, [pc, #624]	; d0053948 <drawFakeHorizon+0x294>
d00536da:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d00536de:	4690      	mov	r8, r2
d00536e0:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d00536e4:	4699      	mov	r9, r3
d00536e6:	ed90 ea07 	vldr	s28, [r0, #28]
d00536ea:	2400      	movs	r4, #0
d00536ec:	ed90 9a01 	vldr	s18, [r0, #4]
d00536f0:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d00536f4:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d00536f8:	ee2b 7aad 	vmul.f32	s14, s23, s27
d00536fc:	4e93      	ldr	r6, [pc, #588]	; (d005394c <drawFakeHorizon+0x298>)
d00536fe:	eef0 aa4c 	vmov.f32	s21, s24
d0053702:	ed9f 8a93 	vldr	s16, [pc, #588]	; d0053950 <drawFakeHorizon+0x29c>
d0053706:	eeb0 aa4c 	vmov.f32	s20, s24
d005370a:	eecd ca2d 	vdiv.f32	s25, s26, s27
d005370e:	eeb0 baed 	vabs.f32	s22, s27
d0053712:	ee30 9a49 	vsub.f32	s18, s0, s18
d0053716:	ee67 7aa8 	vmul.f32	s15, s15, s17
d005371a:	eee7 aa28 	vfma.f32	s21, s14, s17
d005371e:	ee6e 8a28 	vmul.f32	s17, s28, s17
d0053722:	eea7 aaad 	vfma.f32	s20, s15, s27
d0053726:	e056      	b.n	d00537d6 <drawFakeHorizon+0x122>
d0053728:	ee89 6a26 	vdiv.f32	s12, s18, s13
d005372c:	eef0 6ac7 	vabs.f32	s13, s14
d0053730:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0053734:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053738:	eef4 6ac8 	vcmpe.f32	s13, s16
d005373c:	bfcc      	ite	gt
d005373e:	2201      	movgt	r2, #1
d0053740:	2200      	movle	r2, #0
d0053742:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053746:	da61      	bge.n	d005380c <drawFakeHorizon+0x158>
d0053748:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d005374c:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0053750:	6833      	ldr	r3, [r6, #0]
d0053752:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053756:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d005375a:	f240 80a8 	bls.w	d00538ae <drawFakeHorizon+0x1fa>
d005375e:	eeb4 bac8 	vcmpe.f32	s22, s16
d0053762:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053766:	f100 809a 	bmi.w	d005389e <drawFakeHorizon+0x1ea>
d005376a:	ee7c 7a27 	vadd.f32	s15, s24, s15
d005376e:	eeb0 7a6b 	vmov.f32	s14, s23
d0053772:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0053776:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d005377a:	ee17 ba90 	vmov	fp, s15
d005377e:	f1bb 0f00 	cmp.w	fp, #0
d0053782:	f2c0 80aa 	blt.w	d00538da <drawFakeHorizon+0x226>
d0053786:	2201      	movs	r2, #1
d0053788:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d005378c:	46da      	mov	sl, fp
d005378e:	bfa8      	it	ge
d0053790:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0053794:	2a00      	cmp	r2, #0
d0053796:	f000 8091 	beq.w	d00538bc <drawFakeHorizon+0x208>
d005379a:	f1bb 0f00 	cmp.w	fp, #0
d005379e:	d009      	beq.n	d00537b4 <drawFakeHorizon+0x100>
d00537a0:	f1ba 0f00 	cmp.w	sl, #0
d00537a4:	4628      	mov	r0, r5
d00537a6:	4641      	mov	r1, r8
d00537a8:	bfcc      	ite	gt
d00537aa:	4652      	movgt	r2, sl
d00537ac:	2201      	movle	r2, #1
d00537ae:	4415      	add	r5, r2
d00537b0:	f001 fec0 	bl	d0055534 <memset>
d00537b4:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00537b8:	d009      	beq.n	d00537ce <drawFakeHorizon+0x11a>
d00537ba:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00537be:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00537c2:	4628      	mov	r0, r5
d00537c4:	4639      	mov	r1, r7
d00537c6:	bfa8      	it	ge
d00537c8:	2201      	movge	r2, #1
d00537ca:	f001 feb3 	bl	d0055534 <memset>
d00537ce:	3401      	adds	r4, #1
d00537d0:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00537d4:	d04e      	beq.n	d0053874 <drawFakeHorizon+0x1c0>
d00537d6:	ee07 4a90 	vmov	s15, r4
d00537da:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00537de:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00537e2:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00537e6:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d00537ea:	ee3a 7a27 	vadd.f32	s14, s20, s15
d00537ee:	eeb0 6ae6 	vabs.f32	s12, s13
d00537f2:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00537f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537fa:	da95      	bge.n	d0053728 <drawFakeHorizon+0x74>
d00537fc:	eef0 6ac7 	vabs.f32	s13, s14
d0053800:	eef4 6ac8 	vcmpe.f32	s13, s16
d0053804:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053808:	db4c      	blt.n	d00538a4 <drawFakeHorizon+0x1f0>
d005380a:	2200      	movs	r2, #0
d005380c:	eec9 6a07 	vdiv.f32	s13, s18, s14
d0053810:	6833      	ldr	r3, [r6, #0]
d0053812:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0053816:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d005381a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d005381e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053822:	bfcc      	ite	gt
d0053824:	2301      	movgt	r3, #1
d0053826:	2300      	movle	r3, #0
d0053828:	4293      	cmp	r3, r2
d005382a:	f000 8085 	beq.w	d0053938 <drawFakeHorizon+0x284>
d005382e:	eeb4 bac8 	vcmpe.f32	s22, s16
d0053832:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053836:	d429      	bmi.n	d005388c <drawFakeHorizon+0x1d8>
d0053838:	ee7c 7a27 	vadd.f32	s15, s24, s15
d005383c:	eeb0 7a6b 	vmov.f32	s14, s23
d0053840:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0053844:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0053848:	ee17 ba90 	vmov	fp, s15
d005384c:	f1bb 0f00 	cmp.w	fp, #0
d0053850:	da9a      	bge.n	d0053788 <drawFakeHorizon+0xd4>
d0053852:	2a00      	cmp	r2, #0
d0053854:	d141      	bne.n	d00538da <drawFakeHorizon+0x226>
d0053856:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d005385a:	f104 0401 	add.w	r4, r4, #1
d005385e:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0053862:	4628      	mov	r0, r5
d0053864:	bfa8      	it	ge
d0053866:	2201      	movge	r2, #1
d0053868:	4641      	mov	r1, r8
d005386a:	f001 fe63 	bl	d0055534 <memset>
d005386e:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0053872:	d1b0      	bne.n	d00537d6 <drawFakeHorizon+0x122>
d0053874:	eddf 7a36 	vldr	s15, [pc, #216]	; d0053950 <drawFakeHorizon+0x29c>
d0053878:	eeb4 bae7 	vcmpe.f32	s22, s15
d005387c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053880:	da31      	bge.n	d00538e6 <drawFakeHorizon+0x232>
d0053882:	b003      	add	sp, #12
d0053884:	ecbd 8b0e 	vpop	{d8-d14}
d0053888:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005388c:	b93a      	cbnz	r2, d005389e <drawFakeHorizon+0x1ea>
d005388e:	22a0      	movs	r2, #160	; 0xa0
d0053890:	4628      	mov	r0, r5
d0053892:	4639      	mov	r1, r7
d0053894:	4415      	add	r5, r2
d0053896:	f001 fe4d 	bl	d0055534 <memset>
d005389a:	22a0      	movs	r2, #160	; 0xa0
d005389c:	e7db      	b.n	d0053856 <drawFakeHorizon+0x1a2>
d005389e:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d00538a2:	e77d      	b.n	d00537a0 <drawFakeHorizon+0xec>
d00538a4:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00538a8:	6832      	ldr	r2, [r6, #0]
d00538aa:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d00538ae:	4639      	mov	r1, r7
d00538b0:	4628      	mov	r0, r5
d00538b2:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00538b6:	f001 fe3d 	bl	d0055534 <memset>
d00538ba:	e788      	b.n	d00537ce <drawFakeHorizon+0x11a>
d00538bc:	f1bb 0f00 	cmp.w	fp, #0
d00538c0:	d00e      	beq.n	d00538e0 <drawFakeHorizon+0x22c>
d00538c2:	4628      	mov	r0, r5
d00538c4:	4652      	mov	r2, sl
d00538c6:	4639      	mov	r1, r7
d00538c8:	4455      	add	r5, sl
d00538ca:	f001 fe33 	bl	d0055534 <memset>
d00538ce:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00538d2:	f6bf af7c 	bge.w	d00537ce <drawFakeHorizon+0x11a>
d00538d6:	4652      	mov	r2, sl
d00538d8:	e7bd      	b.n	d0053856 <drawFakeHorizon+0x1a2>
d00538da:	f04f 0a00 	mov.w	sl, #0
d00538de:	e76c      	b.n	d00537ba <drawFakeHorizon+0x106>
d00538e0:	46da      	mov	sl, fp
d00538e2:	4652      	mov	r2, sl
d00538e4:	e7b7      	b.n	d0053856 <drawFakeHorizon+0x1a2>
d00538e6:	ee2d ca0c 	vmul.f32	s24, s26, s24
d00538ea:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0053954 <drawFakeHorizon+0x2a0>
d00538ee:	f240 12df 	movw	r2, #479	; 0x1df
d00538f2:	2000      	movs	r0, #0
d00538f4:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00538f8:	f8cd 9000 	str.w	r9, [sp]
d00538fc:	eef0 6a4c 	vmov.f32	s13, s24
d0053900:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0053904:	eee9 6ace 	vfms.f32	s13, s19, s28
d0053908:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d005390c:	ee86 7aad 	vdiv.f32	s14, s13, s27
d0053910:	ee37 7a2b 	vadd.f32	s14, s14, s23
d0053914:	ee77 baab 	vadd.f32	s23, s15, s23
d0053918:	febc 7ac7 	vcvta.s32.f32	s14, s14
d005391c:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d0053920:	ee17 1a10 	vmov	r1, s14
d0053924:	ee17 3a90 	vmov	r3, s15
d0053928:	f7fb f8a2 	bl	d004ea70 <drawLine>
d005392c:	b003      	add	sp, #12
d005392e:	ecbd 8b0e 	vpop	{d8-d14}
d0053932:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053936:	4770      	bx	lr
d0053938:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d005393c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053940:	ddb5      	ble.n	d00538ae <drawFakeHorizon+0x1fa>
d0053942:	4641      	mov	r1, r8
d0053944:	e7b4      	b.n	d00538b0 <drawFakeHorizon+0x1fc>
d0053946:	bf00      	nop
d0053948:	439f8000 	.word	0x439f8000
d005394c:	d00f4a70 	.word	0xd00f4a70
d0053950:	38d1b717 	.word	0x38d1b717
d0053954:	43ef8000 	.word	0x43ef8000

d0053958 <submitEntitySolid>:
d0053958:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005395c:	ed2d 8b10 	vpush	{d8-d15}
d0053960:	b0c5      	sub	sp, #276	; 0x114
d0053962:	f10d 03b7 	add.w	r3, sp, #183	; 0xb7
d0053966:	9101      	str	r1, [sp, #4]
d0053968:	f023 031f 	bic.w	r3, r3, #31
d005396c:	9302      	str	r3, [sp, #8]
d005396e:	2800      	cmp	r0, #0
d0053970:	f000 835e 	beq.w	d0054030 <submitEntitySolid+0x6d8>
d0053974:	f8d0 8018 	ldr.w	r8, [r0, #24]
d0053978:	4604      	mov	r4, r0
d005397a:	f1b8 0f00 	cmp.w	r8, #0
d005397e:	f000 8357 	beq.w	d0054030 <submitEntitySolid+0x6d8>
d0053982:	f8d8 3000 	ldr.w	r3, [r8]
d0053986:	2b00      	cmp	r3, #0
d0053988:	f000 8352 	beq.w	d0054030 <submitEntitySolid+0x6d8>
d005398c:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0053990:	2b00      	cmp	r3, #0
d0053992:	f000 834d 	beq.w	d0054030 <submitEntitySolid+0x6d8>
d0053996:	f8d8 3004 	ldr.w	r3, [r8, #4]
d005399a:	3b01      	subs	r3, #1
d005399c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d00539a0:	f080 8346 	bcs.w	d0054030 <submitEntitySolid+0x6d8>
d00539a4:	f8d8 3014 	ldr.w	r3, [r8, #20]
d00539a8:	2b00      	cmp	r3, #0
d00539aa:	f340 8341 	ble.w	d0054030 <submitEntitySolid+0x6d8>
d00539ae:	edd1 7a15 	vldr	s15, [r1, #84]	; 0x54
d00539b2:	460e      	mov	r6, r1
d00539b4:	edd1 ba11 	vldr	s23, [r1, #68]	; 0x44
d00539b8:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d00539bc:	edd1 8a10 	vldr	s17, [r1, #64]	; 0x40
d00539c0:	f7fe fda0 	bl	d0052504 <lightsGet>
d00539c4:	4605      	mov	r5, r0
d00539c6:	f7fe fda1 	bl	d005250c <lightsGetCount>
d00539ca:	edd8 7a09 	vldr	s15, [r8, #36]	; 0x24
d00539ce:	ed98 7a0a 	vldr	s14, [r8, #40]	; 0x28
d00539d2:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00539d6:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d00539da:	edd8 7a08 	vldr	s15, [r8, #32]
d00539de:	edd4 3a00 	vldr	s7, [r4]
d00539e2:	edcd 7a06 	vstr	s15, [sp, #24]
d00539e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539ea:	edd8 7a0c 	vldr	s15, [r8, #48]	; 0x30
d00539ee:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d00539f2:	edd4 1a01 	vldr	s3, [r4, #4]
d00539f6:	edcd 7a07 	vstr	s15, [sp, #28]
d00539fa:	bfc8      	it	gt
d00539fc:	2301      	movgt	r3, #1
d00539fe:	edd8 7a0b 	vldr	s15, [r8, #44]	; 0x2c
d0053a02:	bfd8      	it	le
d0053a04:	2300      	movle	r3, #0
d0053a06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a0a:	edd4 0a02 	vldr	s1, [r4, #8]
d0053a0e:	edcd 7a0e 	vstr	s15, [sp, #56]	; 0x38
d0053a12:	edd6 7a00 	vldr	s15, [r6]
d0053a16:	bfc8      	it	gt
d0053a18:	f043 0301 	orrgt.w	r3, r3, #1
d0053a1c:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d0053a20:	edcd 7a08 	vstr	s15, [sp, #32]
d0053a24:	edd6 7a01 	vldr	s15, [r6, #4]
d0053a28:	ed94 ba0a 	vldr	s22, [r4, #40]	; 0x28
d0053a2c:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0053a30:	edd6 7a02 	vldr	s15, [r6, #8]
d0053a34:	edd4 fa0b 	vldr	s31, [r4, #44]	; 0x2c
d0053a38:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0053a3c:	ed94 ca0c 	vldr	s24, [r4, #48]	; 0x30
d0053a40:	edd4 ca0d 	vldr	s25, [r4, #52]	; 0x34
d0053a44:	ed94 da0e 	vldr	s26, [r4, #56]	; 0x38
d0053a48:	edd4 da0f 	vldr	s27, [r4, #60]	; 0x3c
d0053a4c:	ed94 ea07 	vldr	s28, [r4, #28]
d0053a50:	edd4 ea08 	vldr	s29, [r4, #32]
d0053a54:	ed94 fa09 	vldr	s30, [r4, #36]	; 0x24
d0053a58:	ed96 5a06 	vldr	s10, [r6, #24]
d0053a5c:	edcd 3a00 	vstr	s7, [sp]
d0053a60:	edcd 1a03 	vstr	s3, [sp, #12]
d0053a64:	edcd 0a04 	vstr	s1, [sp, #16]
d0053a68:	ed96 3a07 	vldr	s6, [r6, #28]
d0053a6c:	edd6 6a08 	vldr	s13, [r6, #32]
d0053a70:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d0053a74:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d0053a78:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d0053a7c:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d0053a80:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d0053a84:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d0053a88:	b113      	cbz	r3, d0053a90 <submitEntitySolid+0x138>
d0053a8a:	2800      	cmp	r0, #0
d0053a8c:	f300 8495 	bgt.w	d00543ba <submitEntitySolid+0xa62>
d0053a90:	2300      	movs	r3, #0
d0053a92:	9305      	str	r3, [sp, #20]
d0053a94:	eddd 4a03 	vldr	s9, [sp, #12]
d0053a98:	ee6f 1a83 	vmul.f32	s3, s31, s6
d0053a9c:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d0053aa0:	ee2d 1a03 	vmul.f32	s2, s26, s6
d0053aa4:	ee6f 0aa2 	vmul.f32	s1, s31, s5
d0053aa8:	f8d8 0004 	ldr.w	r0, [r8, #4]
d0053aac:	ee74 3ac4 	vsub.f32	s7, s9, s8
d0053ab0:	eddd 4a00 	vldr	s9, [sp]
d0053ab4:	ed9d 4a08 	vldr	s8, [sp, #32]
d0053ab8:	ee2d 0a22 	vmul.f32	s0, s26, s5
d0053abc:	ee2f 9a82 	vmul.f32	s18, s31, s4
d0053ac0:	2800      	cmp	r0, #0
d0053ac2:	ee74 4ac4 	vsub.f32	s9, s9, s8
d0053ac6:	ee23 aa23 	vmul.f32	s20, s6, s7
d0053aca:	ee62 aaa3 	vmul.f32	s21, s5, s7
d0053ace:	ee6d 9a02 	vmul.f32	s19, s26, s4
d0053ad2:	ee62 3a23 	vmul.f32	s7, s4, s7
d0053ad6:	ee2e 3a83 	vmul.f32	s6, s29, s6
d0053ada:	ee6e 2aa2 	vmul.f32	s5, s29, s5
d0053ade:	ee2e 2a82 	vmul.f32	s4, s29, s4
d0053ae2:	eee5 aaa4 	vfma.f32	s21, s11, s9
d0053ae6:	eee6 3a24 	vfma.f32	s7, s12, s9
d0053aea:	eeeb 0a25 	vfma.f32	s1, s22, s11
d0053aee:	eeac 0aa5 	vfma.f32	s0, s25, s11
d0053af2:	eeee 2a25 	vfma.f32	s5, s28, s11
d0053af6:	eddd 5a0a 	vldr	s11, [sp, #40]	; 0x28
d0053afa:	eeab 9a06 	vfma.f32	s18, s22, s12
d0053afe:	eeec 9a86 	vfma.f32	s19, s25, s12
d0053b02:	eeae 2a06 	vfma.f32	s4, s28, s12
d0053b06:	ed9d 6a04 	vldr	s12, [sp, #16]
d0053b0a:	eea5 aa24 	vfma.f32	s20, s10, s9
d0053b0e:	eeeb 1a05 	vfma.f32	s3, s22, s10
d0053b12:	eeac 1a85 	vfma.f32	s2, s25, s10
d0053b16:	eeae 3a05 	vfma.f32	s6, s28, s10
d0053b1a:	ee36 6a65 	vsub.f32	s12, s12, s11
d0053b1e:	eeec 0a07 	vfma.f32	s1, s24, s14
d0053b22:	eead 0a87 	vfma.f32	s0, s27, s14
d0053b26:	eeec 1a26 	vfma.f32	s3, s24, s13
d0053b2a:	eead 1aa6 	vfma.f32	s2, s27, s13
d0053b2e:	eea6 aa86 	vfma.f32	s20, s13, s12
d0053b32:	eee7 aa06 	vfma.f32	s21, s14, s12
d0053b36:	eee7 3a86 	vfma.f32	s7, s15, s12
d0053b3a:	eeaf 3a26 	vfma.f32	s6, s30, s13
d0053b3e:	eeef 2a07 	vfma.f32	s5, s30, s14
d0053b42:	eeac 9a27 	vfma.f32	s18, s24, s15
d0053b46:	eeed 9aa7 	vfma.f32	s19, s27, s15
d0053b4a:	eeaf 2a27 	vfma.f32	s4, s30, s15
d0053b4e:	dd61      	ble.n	d0053c14 <submitEntitySolid+0x2bc>
d0053b50:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0053b54:	f8d8 3000 	ldr.w	r3, [r8]
d0053b58:	ed8d 8a0f 	vstr	s16, [sp, #60]	; 0x3c
d0053b5c:	edcd ba10 	vstr	s23, [sp, #64]	; 0x40
d0053b60:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0053b64:	edcd 8a11 	vstr	s17, [sp, #68]	; 0x44
d0053b68:	4936      	ldr	r1, [pc, #216]	; (d0053c44 <submitEntitySolid+0x2ec>)
d0053b6a:	4a37      	ldr	r2, [pc, #220]	; (d0053c48 <submitEntitySolid+0x2f0>)
d0053b6c:	ed9d 8a00 	vldr	s16, [sp]
d0053b70:	eddd 8a03 	vldr	s17, [sp, #12]
d0053b74:	eddd ba04 	vldr	s23, [sp, #16]
d0053b78:	edd3 7a01 	vldr	s15, [r3, #4]
d0053b7c:	330c      	adds	r3, #12
d0053b7e:	ed13 4a03 	vldr	s8, [r3, #-12]
d0053b82:	310c      	adds	r1, #12
d0053b84:	ee2c 5aa7 	vmul.f32	s10, s25, s15
d0053b88:	ed53 4a01 	vldr	s9, [r3, #-4]
d0053b8c:	ee6d 5a27 	vmul.f32	s11, s26, s15
d0053b90:	4298      	cmp	r0, r3
d0053b92:	ee2d 6aa7 	vmul.f32	s12, s27, s15
d0053b96:	f102 020c 	add.w	r2, r2, #12
d0053b9a:	ee61 6a27 	vmul.f32	s13, s2, s15
d0053b9e:	ee20 7a27 	vmul.f32	s14, s0, s15
d0053ba2:	ee69 7aa7 	vmul.f32	s15, s19, s15
d0053ba6:	eeab 5a04 	vfma.f32	s10, s22, s8
d0053baa:	eeef 5a84 	vfma.f32	s11, s31, s8
d0053bae:	eeac 6a04 	vfma.f32	s12, s24, s8
d0053bb2:	eee1 6a84 	vfma.f32	s13, s3, s8
d0053bb6:	eea0 7a84 	vfma.f32	s14, s1, s8
d0053bba:	eee9 7a04 	vfma.f32	s15, s18, s8
d0053bbe:	ee38 5a05 	vadd.f32	s10, s16, s10
d0053bc2:	ee78 5aa5 	vadd.f32	s11, s17, s11
d0053bc6:	ee3b 6a86 	vadd.f32	s12, s23, s12
d0053bca:	ee76 6a8a 	vadd.f32	s13, s13, s20
d0053bce:	ee37 7a2a 	vadd.f32	s14, s14, s21
d0053bd2:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0053bd6:	eeae 5a24 	vfma.f32	s10, s28, s9
d0053bda:	eeee 5aa4 	vfma.f32	s11, s29, s9
d0053bde:	eeaf 6a24 	vfma.f32	s12, s30, s9
d0053be2:	eee3 6a24 	vfma.f32	s13, s6, s9
d0053be6:	eea2 7aa4 	vfma.f32	s14, s5, s9
d0053bea:	eee2 7a24 	vfma.f32	s15, s4, s9
d0053bee:	ed01 5a03 	vstr	s10, [r1, #-12]
d0053bf2:	ed41 5a02 	vstr	s11, [r1, #-8]
d0053bf6:	ed01 6a01 	vstr	s12, [r1, #-4]
d0053bfa:	ed42 6a03 	vstr	s13, [r2, #-12]
d0053bfe:	ed02 7a02 	vstr	s14, [r2, #-8]
d0053c02:	ed42 7a01 	vstr	s15, [r2, #-4]
d0053c06:	d1b7      	bne.n	d0053b78 <submitEntitySolid+0x220>
d0053c08:	ed9d 8a0f 	vldr	s16, [sp, #60]	; 0x3c
d0053c0c:	eddd ba10 	vldr	s23, [sp, #64]	; 0x40
d0053c10:	eddd 8a11 	vldr	s17, [sp, #68]	; 0x44
d0053c14:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053c18:	2b00      	cmp	r3, #0
d0053c1a:	9300      	str	r3, [sp, #0]
d0053c1c:	f340 8208 	ble.w	d0054030 <submitEntitySolid+0x6d8>
d0053c20:	f04f 0a00 	mov.w	sl, #0
d0053c24:	f8df b020 	ldr.w	fp, [pc, #32]	; d0053c48 <submitEntitySolid+0x2f0>
d0053c28:	eddf aa08 	vldr	s21, [pc, #32]	; d0053c4c <submitEntitySolid+0x2f4>
d0053c2c:	ed9f ba08 	vldr	s22, [pc, #32]	; d0053c50 <submitEntitySolid+0x2f8>
d0053c30:	ed9d ca0b 	vldr	s24, [sp, #44]	; 0x2c
d0053c34:	eddd ca0c 	vldr	s25, [sp, #48]	; 0x30
d0053c38:	ed9d da0d 	vldr	s26, [sp, #52]	; 0x34
d0053c3c:	eddd da0e 	vldr	s27, [sp, #56]	; 0x38
d0053c40:	e04e      	b.n	d0053ce0 <submitEntitySolid+0x388>
d0053c42:	bf00      	nop
d0053c44:	d00e8800 	.word	0xd00e8800
d0053c48:	d005a7c0 	.word	0xd005a7c0
d0053c4c:	358637bd 	.word	0x358637bd
d0053c50:	3b808081 	.word	0x3b808081
d0053c54:	437f0000 	.word	0x437f0000
d0053c58:	ed5f 5a02 	vldr	s11, [pc, #-8]	; d0053c54 <submitEntitySolid+0x2fc>
d0053c5c:	eeb4 8a65 	vcmp.f32	s16, s11
d0053c60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c64:	d009      	beq.n	d0053c7a <submitEntitySolid+0x322>
d0053c66:	eddd 5a06 	vldr	s11, [sp, #24]
d0053c6a:	ed9d 5a07 	vldr	s10, [sp, #28]
d0053c6e:	9b05      	ldr	r3, [sp, #20]
d0053c70:	ee35 8a85 	vadd.f32	s16, s11, s10
d0053c74:	2b00      	cmp	r3, #0
d0053c76:	f040 824a 	bne.w	d005410e <submitEntitySolid+0x7b6>
d0053c7a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053c7e:	fe88 8a0e 	vmaxnm.f32	s16, s16, s28
d0053c82:	fe88 8a67 	vminnm.f32	s16, s16, s15
d0053c86:	eeb0 0a48 	vmov.f32	s0, s16
d0053c8a:	f7fe fc0f 	bl	d00524ac <brightnessToShadeF>
d0053c8e:	9b03      	ldr	r3, [sp, #12]
d0053c90:	eeb0 9a40 	vmov.f32	s18, s0
d0053c94:	2b00      	cmp	r3, #0
d0053c96:	f000 81d0 	beq.w	d005403a <submitEntitySolid+0x6e2>
d0053c9a:	eef0 4a40 	vmov.f32	s9, s0
d0053c9e:	7ba3      	ldrb	r3, [r4, #14]
d0053ca0:	7b62      	ldrb	r2, [r4, #13]
d0053ca2:	9801      	ldr	r0, [sp, #4]
d0053ca4:	7b21      	ldrb	r1, [r4, #12]
d0053ca6:	ed97 3a00 	vldr	s6, [r7]
d0053caa:	edd7 3a01 	vldr	s7, [r7, #4]
d0053cae:	ed97 4a02 	vldr	s8, [r7, #8]
d0053cb2:	edd6 1a00 	vldr	s3, [r6]
d0053cb6:	ed96 2a01 	vldr	s4, [r6, #4]
d0053cba:	edd6 2a02 	vldr	s5, [r6, #8]
d0053cbe:	ed95 0a00 	vldr	s0, [r5]
d0053cc2:	edd5 0a01 	vldr	s1, [r5, #4]
d0053cc6:	ed95 1a02 	vldr	s2, [r5, #8]
d0053cca:	f7ff f9cb 	bl	d0053064 <submitClippedTri>
d0053cce:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0053cd2:	9300      	str	r3, [sp, #0]
d0053cd4:	f10a 0a01 	add.w	sl, sl, #1
d0053cd8:	9b00      	ldr	r3, [sp, #0]
d0053cda:	459a      	cmp	sl, r3
d0053cdc:	f280 81a8 	bge.w	d0054030 <submitEntitySolid+0x6d8>
d0053ce0:	f8d8 4010 	ldr.w	r4, [r8, #16]
d0053ce4:	ea4f 130a 	mov.w	r3, sl, lsl #4
d0053ce8:	58e3      	ldr	r3, [r4, r3]
d0053cea:	eb04 140a 	add.w	r4, r4, sl, lsl #4
d0053cee:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0053cf2:	6861      	ldr	r1, [r4, #4]
d0053cf4:	68a2      	ldr	r2, [r4, #8]
d0053cf6:	ea4f 0c43 	mov.w	ip, r3, lsl #1
d0053cfa:	eb0b 0585 	add.w	r5, fp, r5, lsl #2
d0053cfe:	eb01 0641 	add.w	r6, r1, r1, lsl #1
d0053d02:	edd5 7a02 	vldr	s15, [r5, #8]
d0053d06:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d0053d0a:	0048      	lsls	r0, r1, #1
d0053d0c:	eef4 7aeb 	vcmpe.f32	s15, s23
d0053d10:	eb0b 0686 	add.w	r6, fp, r6, lsl #2
d0053d14:	eb0b 0787 	add.w	r7, fp, r7, lsl #2
d0053d18:	9003      	str	r0, [sp, #12]
d0053d1a:	ea4f 0942 	mov.w	r9, r2, lsl #1
d0053d1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d22:	dd0d      	ble.n	d0053d40 <submitEntitySolid+0x3e8>
d0053d24:	ed96 7a02 	vldr	s14, [r6, #8]
d0053d28:	eeb4 7aeb 	vcmpe.f32	s14, s23
d0053d2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d30:	dd06      	ble.n	d0053d40 <submitEntitySolid+0x3e8>
d0053d32:	ed97 7a02 	vldr	s14, [r7, #8]
d0053d36:	eeb4 7aeb 	vcmpe.f32	s14, s23
d0053d3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d3e:	dcc9      	bgt.n	d0053cd4 <submitEntitySolid+0x37c>
d0053d40:	eef4 7ae8 	vcmpe.f32	s15, s17
d0053d44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d48:	d516      	bpl.n	d0053d78 <submitEntitySolid+0x420>
d0053d4a:	0048      	lsls	r0, r1, #1
d0053d4c:	eb00 0e01 	add.w	lr, r0, r1
d0053d50:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053d54:	ed9e 7a02 	vldr	s14, [lr, #8]
d0053d58:	eeb4 7ae8 	vcmpe.f32	s14, s17
d0053d5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d60:	d50a      	bpl.n	d0053d78 <submitEntitySolid+0x420>
d0053d62:	eb09 0e02 	add.w	lr, r9, r2
d0053d66:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053d6a:	ed9e 7a02 	vldr	s14, [lr, #8]
d0053d6e:	eeb4 7ae8 	vcmpe.f32	s14, s17
d0053d72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d76:	d4ad      	bmi.n	d0053cd4 <submitEntitySolid+0x37c>
d0053d78:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0053d7c:	f01e 0f10 	tst.w	lr, #16
d0053d80:	d135      	bne.n	d0053dee <submitEntitySolid+0x496>
d0053d82:	edd5 2a00 	vldr	s5, [r5]
d0053d86:	edd5 3a02 	vldr	s7, [r5, #8]
d0053d8a:	edd6 5a00 	vldr	s11, [r6]
d0053d8e:	ed97 5a02 	vldr	s10, [r7, #8]
d0053d92:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0053d96:	ed95 7a01 	vldr	s14, [r5, #4]
d0053d9a:	ee35 5a63 	vsub.f32	s10, s10, s7
d0053d9e:	ed96 4a02 	vldr	s8, [r6, #8]
d0053da2:	ed97 6a01 	vldr	s12, [r7, #4]
d0053da6:	edd7 6a00 	vldr	s13, [r7]
d0053daa:	ee34 4a63 	vsub.f32	s8, s8, s7
d0053dae:	ee36 6a47 	vsub.f32	s12, s12, s14
d0053db2:	edd6 4a01 	vldr	s9, [r6, #4]
d0053db6:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0053dba:	ee25 2a65 	vnmul.f32	s4, s10, s11
d0053dbe:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0053dc2:	ee26 3a44 	vnmul.f32	s6, s12, s8
d0053dc6:	eea4 2a26 	vfma.f32	s4, s8, s13
d0053dca:	ee66 6ae4 	vnmul.f32	s13, s13, s9
d0053dce:	eea4 3a85 	vfma.f32	s6, s9, s10
d0053dd2:	eee5 6a86 	vfma.f32	s13, s11, s12
d0053dd6:	ee27 7a02 	vmul.f32	s14, s14, s4
d0053dda:	eea2 7a83 	vfma.f32	s14, s5, s6
d0053dde:	eea3 7aa6 	vfma.f32	s14, s7, s13
d0053de2:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0053de6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053dea:	f6bf af73 	bge.w	d0053cd4 <submitEntitySolid+0x37c>
d0053dee:	eb0c 0e03 	add.w	lr, ip, r3
d0053df2:	eef1 5a67 	vneg.f32	s11, s15
d0053df6:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053dfa:	ed9e 7a00 	vldr	s14, [lr]
d0053dfe:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0053e02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e06:	d51f      	bpl.n	d0053e48 <submitEntitySolid+0x4f0>
d0053e08:	0048      	lsls	r0, r1, #1
d0053e0a:	eb00 0e01 	add.w	lr, r0, r1
d0053e0e:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053e12:	edde 6a02 	vldr	s13, [lr, #8]
d0053e16:	ed9e 6a00 	vldr	s12, [lr]
d0053e1a:	eef1 6a66 	vneg.f32	s13, s13
d0053e1e:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053e22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e26:	d50f      	bpl.n	d0053e48 <submitEntitySolid+0x4f0>
d0053e28:	eb09 0e02 	add.w	lr, r9, r2
d0053e2c:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053e30:	edde 6a02 	vldr	s13, [lr, #8]
d0053e34:	ed9e 6a00 	vldr	s12, [lr]
d0053e38:	eef1 6a66 	vneg.f32	s13, s13
d0053e3c:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053e40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e44:	f53f af46 	bmi.w	d0053cd4 <submitEntitySolid+0x37c>
d0053e48:	eef4 7ac7 	vcmpe.f32	s15, s14
d0053e4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e50:	d51b      	bpl.n	d0053e8a <submitEntitySolid+0x532>
d0053e52:	0048      	lsls	r0, r1, #1
d0053e54:	eb00 0e01 	add.w	lr, r0, r1
d0053e58:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053e5c:	ed9e 6a00 	vldr	s12, [lr]
d0053e60:	edde 6a02 	vldr	s13, [lr, #8]
d0053e64:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053e68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e6c:	dd0d      	ble.n	d0053e8a <submitEntitySolid+0x532>
d0053e6e:	eb09 0e02 	add.w	lr, r9, r2
d0053e72:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053e76:	ed9e 6a00 	vldr	s12, [lr]
d0053e7a:	edde 6a02 	vldr	s13, [lr, #8]
d0053e7e:	eeb4 6ae6 	vcmpe.f32	s12, s13
d0053e82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e86:	f73f af25 	bgt.w	d0053cd4 <submitEntitySolid+0x37c>
d0053e8a:	ee27 6a8c 	vmul.f32	s12, s15, s24
d0053e8e:	eb0c 0e03 	add.w	lr, ip, r3
d0053e92:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053e96:	eeb1 5a46 	vneg.f32	s10, s12
d0053e9a:	edde 6a01 	vldr	s13, [lr, #4]
d0053e9e:	eef4 6ac5 	vcmpe.f32	s13, s10
d0053ea2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ea6:	d51f      	bpl.n	d0053ee8 <submitEntitySolid+0x590>
d0053ea8:	0048      	lsls	r0, r1, #1
d0053eaa:	eb00 0e01 	add.w	lr, r0, r1
d0053eae:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053eb2:	edde 4a02 	vldr	s9, [lr, #8]
d0053eb6:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053eba:	ee64 4acc 	vnmul.f32	s9, s9, s24
d0053ebe:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0053ec2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ec6:	d50f      	bpl.n	d0053ee8 <submitEntitySolid+0x590>
d0053ec8:	eb09 0e02 	add.w	lr, r9, r2
d0053ecc:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053ed0:	edde 4a02 	vldr	s9, [lr, #8]
d0053ed4:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053ed8:	ee64 4acc 	vnmul.f32	s9, s9, s24
d0053edc:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0053ee0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ee4:	f53f aef6 	bmi.w	d0053cd4 <submitEntitySolid+0x37c>
d0053ee8:	eef4 6ac6 	vcmpe.f32	s13, s12
d0053eec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ef0:	dd1f      	ble.n	d0053f32 <submitEntitySolid+0x5da>
d0053ef2:	0048      	lsls	r0, r1, #1
d0053ef4:	eb00 0e01 	add.w	lr, r0, r1
d0053ef8:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053efc:	edde 4a02 	vldr	s9, [lr, #8]
d0053f00:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053f04:	ee6c 4a24 	vmul.f32	s9, s24, s9
d0053f08:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0053f0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f10:	dd0f      	ble.n	d0053f32 <submitEntitySolid+0x5da>
d0053f12:	eb09 0e02 	add.w	lr, r9, r2
d0053f16:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053f1a:	edde 4a02 	vldr	s9, [lr, #8]
d0053f1e:	ed9e 4a01 	vldr	s8, [lr, #4]
d0053f22:	ee6c 4a24 	vmul.f32	s9, s24, s9
d0053f26:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0053f2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f2e:	f73f aed1 	bgt.w	d0053cd4 <submitEntitySolid+0x37c>
d0053f32:	eef4 7ae8 	vcmpe.f32	s15, s17
d0053f36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f3a:	db28      	blt.n	d0053f8e <submitEntitySolid+0x636>
d0053f3c:	0048      	lsls	r0, r1, #1
d0053f3e:	eb00 0e01 	add.w	lr, r0, r1
d0053f42:	eb0b 0e8e 	add.w	lr, fp, lr, lsl #2
d0053f46:	edde 4a02 	vldr	s9, [lr, #8]
d0053f4a:	eef4 4ae8 	vcmpe.f32	s9, s17
d0053f4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f52:	db1c      	blt.n	d0053f8e <submitEntitySolid+0x636>
d0053f54:	eb09 0002 	add.w	r0, r9, r2
d0053f58:	eef4 7ac7 	vcmpe.f32	s15, s14
d0053f5c:	eb0b 0080 	add.w	r0, fp, r0, lsl #2
d0053f60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f64:	edd0 7a02 	vldr	s15, [r0, #8]
d0053f68:	9003      	str	r0, [sp, #12]
d0053f6a:	eef4 7ae8 	vcmpe.f32	s15, s17
d0053f6e:	bfac      	ite	ge
d0053f70:	2001      	movge	r0, #1
d0053f72:	2000      	movlt	r0, #0
d0053f74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f78:	f000 0001 	and.w	r0, r0, #1
d0053f7c:	bfb8      	it	lt
d0053f7e:	2000      	movlt	r0, #0
d0053f80:	b128      	cbz	r0, d0053f8e <submitEntitySolid+0x636>
d0053f82:	eeb4 7a65 	vcmp.f32	s14, s11
d0053f86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f8a:	f280 82be 	bge.w	d005450a <submitEntitySolid+0xbb2>
d0053f8e:	2000      	movs	r0, #0
d0053f90:	9003      	str	r0, [sp, #12]
d0053f92:	0048      	lsls	r0, r1, #1
d0053f94:	eb09 0e02 	add.w	lr, r9, r2
d0053f98:	4463      	add	r3, ip
d0053f9a:	4a9a      	ldr	r2, [pc, #616]	; (d0054204 <submitEntitySolid+0x8ac>)
d0053f9c:	4401      	add	r1, r0
d0053f9e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0053fa2:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0053fa6:	eb02 028e 	add.w	r2, r2, lr, lsl #2
d0053faa:	ed93 6a00 	vldr	s12, [r3]
d0053fae:	ed93 7a02 	vldr	s14, [r3, #8]
d0053fb2:	edd1 3a00 	vldr	s7, [r1]
d0053fb6:	ed92 3a02 	vldr	s6, [r2, #8]
d0053fba:	ee73 5ac6 	vsub.f32	s11, s7, s12
d0053fbe:	edd3 6a01 	vldr	s13, [r3, #4]
d0053fc2:	ee33 5a47 	vsub.f32	s10, s6, s14
d0053fc6:	edd1 4a02 	vldr	s9, [r1, #8]
d0053fca:	edd2 2a01 	vldr	s5, [r2, #4]
d0053fce:	ed92 2a00 	vldr	s4, [r2]
d0053fd2:	ee34 1ac7 	vsub.f32	s2, s9, s14
d0053fd6:	ee72 7ae6 	vsub.f32	s15, s5, s13
d0053fda:	ed91 4a01 	vldr	s8, [r1, #4]
d0053fde:	ee32 9a46 	vsub.f32	s18, s4, s12
d0053fe2:	ee65 9a65 	vnmul.f32	s19, s10, s11
d0053fe6:	ee74 1a66 	vsub.f32	s3, s8, s13
d0053fea:	ee27 aac1 	vnmul.f32	s20, s15, s2
d0053fee:	eee1 9a09 	vfma.f32	s19, s2, s18
d0053ff2:	ee29 9a61 	vnmul.f32	s18, s18, s3
d0053ff6:	eea1 aa85 	vfma.f32	s20, s3, s10
d0053ffa:	eea5 9aa7 	vfma.f32	s18, s11, s15
d0053ffe:	ee69 7aa9 	vmul.f32	s15, s19, s19
d0054002:	eeea 7a0a 	vfma.f32	s15, s20, s20
d0054006:	eee9 7a09 	vfma.f32	s15, s18, s18
d005400a:	eef4 7aea 	vcmpe.f32	s15, s21
d005400e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054012:	f67f ae5f 	bls.w	d0053cd4 <submitEntitySolid+0x37c>
d0054016:	7b63      	ldrb	r3, [r4, #13]
d0054018:	ee05 3a90 	vmov	s11, r3
d005401c:	2bf8      	cmp	r3, #248	; 0xf8
d005401e:	eeb8 ea65 	vcvt.f32.u32	s28, s11
d0054022:	ee2e ea0b 	vmul.f32	s28, s28, s22
d0054026:	f67f ae17 	bls.w	d0053c58 <submitEntitySolid+0x300>
d005402a:	ed9f 8a77 	vldr	s16, [pc, #476]	; d0054208 <submitEntitySolid+0x8b0>
d005402e:	e624      	b.n	d0053c7a <submitEntitySolid+0x322>
d0054030:	b045      	add	sp, #276	; 0x114
d0054032:	ecbd 8b10 	vpop	{d8-d15}
d0054036:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005403a:	4a74      	ldr	r2, [pc, #464]	; (d005420c <submitEntitySolid+0x8b4>)
d005403c:	edd6 1a00 	vldr	s3, [r6]
d0054040:	7c13      	ldrb	r3, [r2, #16]
d0054042:	7c50      	ldrb	r0, [r2, #17]
d0054044:	ed96 2a01 	vldr	s4, [r6, #4]
d0054048:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d005404c:	7c90      	ldrb	r0, [r2, #18]
d005404e:	7cd2      	ldrb	r2, [r2, #19]
d0054050:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0054054:	edd6 2a02 	vldr	s5, [r6, #8]
d0054058:	f8dd 9008 	ldr.w	r9, [sp, #8]
d005405c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0054060:	4a6b      	ldr	r2, [pc, #428]	; (d0054210 <submitEntitySolid+0x8b8>)
d0054062:	edd5 0a01 	vldr	s1, [r5, #4]
d0054066:	4648      	mov	r0, r9
d0054068:	681e      	ldr	r6, [r3, #0]
d005406a:	4b6a      	ldr	r3, [pc, #424]	; (d0054214 <submitEntitySolid+0x8bc>)
d005406c:	ed95 1a02 	vldr	s2, [r5, #8]
d0054070:	ed95 0a00 	vldr	s0, [r5]
d0054074:	ed97 3a00 	vldr	s6, [r7]
d0054078:	edd7 3a01 	vldr	s7, [r7, #4]
d005407c:	ed97 4a02 	vldr	s8, [r7, #8]
d0054080:	9901      	ldr	r1, [sp, #4]
d0054082:	6835      	ldr	r5, [r6, #0]
d0054084:	6812      	ldr	r2, [r2, #0]
d0054086:	681b      	ldr	r3, [r3, #0]
d0054088:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d005408c:	ed8d 1a17 	vstr	s2, [sp, #92]	; 0x5c
d0054090:	edcd 1a18 	vstr	s3, [sp, #96]	; 0x60
d0054094:	ed8d 2a19 	vstr	s4, [sp, #100]	; 0x64
d0054098:	edcd 2a1a 	vstr	s5, [sp, #104]	; 0x68
d005409c:	ed8d 3a1b 	vstr	s6, [sp, #108]	; 0x6c
d00540a0:	edcd 3a1c 	vstr	s7, [sp, #112]	; 0x70
d00540a4:	ed8d 4a1d 	vstr	s8, [sp, #116]	; 0x74
d00540a8:	ed8d 0a15 	vstr	s0, [sp, #84]	; 0x54
d00540ac:	47a8      	blx	r5
d00540ae:	2802      	cmp	r0, #2
d00540b0:	dc03      	bgt.n	d00540ba <submitEntitySolid+0x762>
d00540b2:	f8d8 3014 	ldr.w	r3, [r8, #20]
d00540b6:	9300      	str	r3, [sp, #0]
d00540b8:	e60c      	b.n	d0053cd4 <submitEntitySolid+0x37c>
d00540ba:	eef0 4a49 	vmov.f32	s9, s18
d00540be:	1e46      	subs	r6, r0, #1
d00540c0:	2501      	movs	r5, #1
d00540c2:	464f      	mov	r7, r9
d00540c4:	9801      	ldr	r0, [sp, #4]
d00540c6:	4629      	mov	r1, r5
d00540c8:	3501      	adds	r5, #1
d00540ca:	7ba3      	ldrb	r3, [r4, #14]
d00540cc:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00540d0:	7b62      	ldrb	r2, [r4, #13]
d00540d2:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d00540d6:	ed97 0a00 	vldr	s0, [r7]
d00540da:	eb07 0181 	add.w	r1, r7, r1, lsl #2
d00540de:	edd7 0a01 	vldr	s1, [r7, #4]
d00540e2:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d00540e6:	ed97 1a02 	vldr	s2, [r7, #8]
d00540ea:	edd1 1a00 	vldr	s3, [r1]
d00540ee:	ed91 2a01 	vldr	s4, [r1, #4]
d00540f2:	edd1 2a02 	vldr	s5, [r1, #8]
d00540f6:	ed9c 3a00 	vldr	s6, [ip]
d00540fa:	eddc 3a01 	vldr	s7, [ip, #4]
d00540fe:	ed9c 4a02 	vldr	s8, [ip, #8]
d0054102:	7b21      	ldrb	r1, [r4, #12]
d0054104:	f7fe ffae 	bl	d0053064 <submitClippedTri>
d0054108:	42b5      	cmp	r5, r6
d005410a:	d1dc      	bne.n	d00540c6 <submitEntitySolid+0x76e>
d005410c:	e7d1      	b.n	d00540b2 <submitEntitySolid+0x75a>
d005410e:	ee73 ea86 	vadd.f32	s29, s7, s12
d0054112:	eddf fa41 	vldr	s31, [pc, #260]	; d0054218 <submitEntitySolid+0x8c0>
d0054116:	ee34 fa26 	vadd.f32	s30, s8, s13
d005411a:	ee34 7a87 	vadd.f32	s14, s9, s14
d005411e:	eeb5 dac0 	vcmpe.f32	s26, #0.0
d0054122:	ee7e ea82 	vadd.f32	s29, s29, s4
d0054126:	ee3f fa22 	vadd.f32	s30, s30, s5
d005412a:	ee37 3a03 	vadd.f32	s6, s14, s6
d005412e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054132:	ee6e eaaf 	vmul.f32	s29, s29, s31
d0054136:	ee2f fa2f 	vmul.f32	s30, s30, s31
d005413a:	ee63 fa2f 	vmul.f32	s31, s6, s31
d005413e:	f340 8175 	ble.w	d005442c <submitEntitySolid+0xad4>
d0054142:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0054146:	ee77 2a4f 	vsub.f32	s5, s14, s30
d005414a:	ed9d 7a08 	vldr	s14, [sp, #32]
d005414e:	ee37 3a6e 	vsub.f32	s6, s14, s29
d0054152:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0054156:	ee37 4a6f 	vsub.f32	s8, s14, s31
d005415a:	ee22 7aa2 	vmul.f32	s14, s5, s5
d005415e:	eea3 7a03 	vfma.f32	s14, s6, s6
d0054162:	eea4 7a04 	vfma.f32	s14, s8, s8
d0054166:	eeb4 7aea 	vcmpe.f32	s14, s21
d005416a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005416e:	f340 815d 	ble.w	d005442c <submitEntitySolid+0xad4>
d0054172:	eddf 6a2a 	vldr	s13, [pc, #168]	; d005421c <submitEntitySolid+0x8c4>
d0054176:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005417a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005417e:	f100 8244 	bmi.w	d005460a <submitEntitySolid+0xcb2>
d0054182:	eddf 6a27 	vldr	s13, [pc, #156]	; d0054220 <submitEntitySolid+0x8c8>
d0054186:	eeb4 7a66 	vcmp.f32	s14, s13
d005418a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005418e:	f300 823c 	bgt.w	d005460a <submitEntitySolid+0xcb2>
d0054192:	eef1 6ae7 	vsqrt.f32	s13, s15
d0054196:	aa1d      	add	r2, sp, #116	; 0x74
d0054198:	4639      	mov	r1, r7
d005419a:	4650      	mov	r0, sl
d005419c:	f04f 0900 	mov.w	r9, #0
d00541a0:	46aa      	mov	sl, r5
d00541a2:	4627      	mov	r7, r4
d00541a4:	4615      	mov	r5, r2
d00541a6:	4632      	mov	r2, r6
d00541a8:	9e05      	ldr	r6, [sp, #20]
d00541aa:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00541ae:	eeb0 6a4c 	vmov.f32	s12, s24
d00541b2:	eef0 0a6d 	vmov.f32	s1, s27
d00541b6:	eeb0 5a47 	vmov.f32	s10, s14
d00541ba:	eef0 5a4e 	vmov.f32	s11, s28
d00541be:	eeb0 ca62 	vmov.f32	s24, s5
d00541c2:	eef0 da44 	vmov.f32	s27, s8
d00541c6:	eec7 7a26 	vdiv.f32	s15, s14, s13
d00541ca:	eeb0 7a6b 	vmov.f32	s14, s23
d00541ce:	eef0 6a68 	vmov.f32	s13, s17
d00541d2:	eef0 ba43 	vmov.f32	s23, s6
d00541d6:	eef0 8a6f 	vmov.f32	s17, s31
d00541da:	eef0 fa4f 	vmov.f32	s31, s30
d00541de:	eeb0 fa6e 	vmov.f32	s30, s29
d00541e2:	ee29 9a27 	vmul.f32	s18, s18, s15
d00541e6:	ee2a aa27 	vmul.f32	s20, s20, s15
d00541ea:	ee69 9aa7 	vmul.f32	s19, s19, s15
d00541ee:	ee39 2a09 	vadd.f32	s4, s18, s18
d00541f2:	ee3a 1a0a 	vadd.f32	s2, s20, s20
d00541f6:	ee79 1aa9 	vadd.f32	s3, s19, s19
d00541fa:	eef0 ea49 	vmov.f32	s29, s18
d00541fe:	eeb0 ea42 	vmov.f32	s28, s4
d0054202:	e0c5      	b.n	d0054390 <submitEntitySolid+0xa38>
d0054204:	d00e8800 	.word	0xd00e8800
d0054208:	437f0000 	.word	0x437f0000
d005420c:	2001f000 	.word	0x2001f000
d0054210:	d00667c0 	.word	0xd00667c0
d0054214:	d00667c4 	.word	0xd00667c4
d0054218:	3eaab368 	.word	0x3eaab368
d005421c:	3f7fbe77 	.word	0x3f7fbe77
d0054220:	3f8020c5 	.word	0x3f8020c5
d0054224:	00000000 	.word	0x00000000
d0054228:	edd4 7a02 	vldr	s15, [r4, #8]
d005422c:	edd4 3a01 	vldr	s7, [r4, #4]
d0054230:	ee77 7aef 	vsub.f32	s15, s15, s31
d0054234:	ed94 4a03 	vldr	s8, [r4, #12]
d0054238:	ee73 3acf 	vsub.f32	s7, s7, s30
d005423c:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d0054240:	ee34 4a68 	vsub.f32	s8, s8, s17
d0054244:	ee67 4aa7 	vmul.f32	s9, s15, s15
d0054248:	ee63 2a03 	vmul.f32	s5, s6, s6
d005424c:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0054250:	eee4 4a04 	vfma.f32	s9, s8, s8
d0054254:	eef4 2a64 	vcmp.f32	s5, s9
d0054258:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005425c:	f340 8094 	ble.w	d0054388 <submitEntitySolid+0xa30>
d0054260:	eef4 4a6a 	vcmp.f32	s9, s21
d0054264:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054268:	f340 808e 	ble.w	d0054388 <submitEntitySolid+0xa30>
d005426c:	eeb1 9ae4 	vsqrt.f32	s18, s9
d0054270:	ed94 2a08 	vldr	s4, [r4, #32]
d0054274:	ee22 0a02 	vmul.f32	s0, s4, s4
d0054278:	eeb4 0ae4 	vcmpe.f32	s0, s9
d005427c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054280:	eec5 2a09 	vdiv.f32	s5, s10, s18
d0054284:	ee63 3aa2 	vmul.f32	s7, s7, s5
d0054288:	ee67 7aa2 	vmul.f32	s15, s15, s5
d005428c:	ee24 4a22 	vmul.f32	s8, s8, s5
d0054290:	f140 80d3 	bpl.w	d005443a <submitEntitySolid+0xae2>
d0054294:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0054298:	eeb4 2ac0 	vcmpe.f32	s4, s0
d005429c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542a0:	da72      	bge.n	d0054388 <submitEntitySolid+0xa30>
d00542a2:	eeb4 3ac0 	vcmpe.f32	s6, s0
d00542a6:	ee64 4aa2 	vmul.f32	s9, s9, s5
d00542aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542ae:	eeb4 0ae4 	vcmpe.f32	s0, s9
d00542b2:	f200 8114 	bhi.w	d00544de <submitEntitySolid+0xb86>
d00542b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542ba:	d965      	bls.n	d0054388 <submitEntitySolid+0xa30>
d00542bc:	ee74 4ac2 	vsub.f32	s9, s9, s4
d00542c0:	ee30 2a42 	vsub.f32	s4, s0, s4
d00542c4:	ee84 9a82 	vdiv.f32	s18, s9, s4
d00542c8:	ed5f 4a2a 	vldr	s9, [pc, #-168]	; d0054224 <submitEntitySolid+0x8cc>
d00542cc:	fe89 9a24 	vmaxnm.f32	s18, s18, s9
d00542d0:	fe89 9a45 	vminnm.f32	s18, s18, s10
d00542d4:	ee35 9a49 	vsub.f32	s18, s10, s18
d00542d8:	eeb5 9ac0 	vcmpe.f32	s18, #0.0
d00542dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542e0:	d952      	bls.n	d0054388 <submitEntitySolid+0xa30>
d00542e2:	ee67 4aa9 	vmul.f32	s9, s15, s19
d00542e6:	eee3 4a8a 	vfma.f32	s9, s7, s20
d00542ea:	eee4 4a2e 	vfma.f32	s9, s8, s29
d00542ee:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d00542f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542f6:	d947      	bls.n	d0054388 <submitEntitySolid+0xa30>
d00542f8:	eef5 cac0 	vcmpe.f32	s25, #0.0
d00542fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054300:	dd07      	ble.n	d0054312 <submitEntitySolid+0x9ba>
d0054302:	ed94 3a07 	vldr	s6, [r4, #28]
d0054306:	ee2c 3a83 	vmul.f32	s6, s25, s6
d005430a:	ee23 3a09 	vmul.f32	s6, s6, s18
d005430e:	eea4 8a83 	vfma.f32	s16, s9, s6
d0054312:	eeb5 dac0 	vcmpe.f32	s26, #0.0
d0054316:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005431a:	dd2f      	ble.n	d005437c <submitEntitySolid+0xa24>
d005431c:	eed4 7aa1 	vfnms.f32	s15, s9, s3
d0054320:	eed4 3a81 	vfnms.f32	s7, s9, s2
d0054324:	ee94 4a8e 	vfnms.f32	s8, s9, s28
d0054328:	ee2c 0a27 	vmul.f32	s0, s24, s15
d005432c:	eeab 0aa3 	vfma.f32	s0, s23, s7
d0054330:	eead 0a84 	vfma.f32	s0, s27, s8
d0054334:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0054338:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005433c:	dd1e      	ble.n	d005437c <submitEntitySolid+0xa24>
d005433e:	eef2 7a00 	vmov.f32	s15, #32	; 0x41000000  8.0
d0054342:	eef4 0a67 	vcmp.f32	s1, s15
d0054346:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005434a:	d009      	beq.n	d0054360 <submitEntitySolid+0xa08>
d005434c:	eef3 7a00 	vmov.f32	s15, #48	; 0x41800000  16.0
d0054350:	eef4 0a67 	vcmp.f32	s1, s15
d0054354:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054358:	f040 8085 	bne.w	d0054466 <submitEntitySolid+0xb0e>
d005435c:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054360:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054364:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054368:	ee20 0a00 	vmul.f32	s0, s0, s0
d005436c:	edd4 7a07 	vldr	s15, [r4, #28]
d0054370:	ee6d 7a27 	vmul.f32	s15, s26, s15
d0054374:	ee27 9a89 	vmul.f32	s18, s15, s18
d0054378:	eea9 8a00 	vfma.f32	s16, s18, s0
d005437c:	eeb4 8ac5 	vcmpe.f32	s16, s10
d0054380:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054384:	f280 8098 	bge.w	d00544b8 <submitEntitySolid+0xb60>
d0054388:	f109 0901 	add.w	r9, r9, #1
d005438c:	454e      	cmp	r6, r9
d005438e:	d05a      	beq.n	d0054446 <submitEntitySolid+0xaee>
d0054390:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0054394:	7823      	ldrb	r3, [r4, #0]
d0054396:	2b00      	cmp	r3, #0
d0054398:	f43f af46 	beq.w	d0054228 <submitEntitySolid+0x8d0>
d005439c:	edd4 3a04 	vldr	s7, [r4, #16]
d00543a0:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00543a4:	edd4 7a05 	vldr	s15, [r4, #20]
d00543a8:	ed94 4a06 	vldr	s8, [r4, #24]
d00543ac:	eef1 3a63 	vneg.f32	s7, s7
d00543b0:	eef1 7a67 	vneg.f32	s15, s15
d00543b4:	eeb1 4a44 	vneg.f32	s8, s8
d00543b8:	e793      	b.n	d00542e2 <submitEntitySolid+0x98a>
d00543ba:	2200      	movs	r2, #0
d00543bc:	ed98 1a06 	vldr	s2, [r8, #24]
d00543c0:	4611      	mov	r1, r2
d00543c2:	e026      	b.n	d0054412 <submitEntitySolid+0xaba>
d00543c4:	edd5 4a02 	vldr	s9, [r5, #8]
d00543c8:	ab44      	add	r3, sp, #272	; 0x110
d00543ca:	ed95 9a01 	vldr	s18, [r5, #4]
d00543ce:	ee74 4ae1 	vsub.f32	s9, s9, s3
d00543d2:	ed95 0a03 	vldr	s0, [r5, #12]
d00543d6:	ee39 9a63 	vsub.f32	s18, s18, s7
d00543da:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d00543de:	ee30 0a60 	vsub.f32	s0, s0, s1
d00543e2:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d00543e6:	ee64 4aa4 	vmul.f32	s9, s9, s9
d00543ea:	ee31 4a04 	vadd.f32	s8, s2, s8
d00543ee:	eee9 4a09 	vfma.f32	s9, s18, s18
d00543f2:	ee24 4a04 	vmul.f32	s8, s8, s8
d00543f6:	eee0 4a00 	vfma.f32	s9, s0, s0
d00543fa:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00543fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054402:	db02      	blt.n	d005440a <submitEntitySolid+0xab2>
d0054404:	3101      	adds	r1, #1
d0054406:	f843 5c98 	str.w	r5, [r3, #-152]
d005440a:	3201      	adds	r2, #1
d005440c:	3540      	adds	r5, #64	; 0x40
d005440e:	4290      	cmp	r0, r2
d0054410:	dd16      	ble.n	d0054440 <submitEntitySolid+0xae8>
d0054412:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d0054414:	2b00      	cmp	r3, #0
d0054416:	d0f8      	beq.n	d005440a <submitEntitySolid+0xab2>
d0054418:	782b      	ldrb	r3, [r5, #0]
d005441a:	2b01      	cmp	r3, #1
d005441c:	d1d2      	bne.n	d00543c4 <submitEntitySolid+0xa6c>
d005441e:	ab44      	add	r3, sp, #272	; 0x110
d0054420:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0054424:	3101      	adds	r1, #1
d0054426:	f843 5c98 	str.w	r5, [r3, #-152]
d005442a:	e7ee      	b.n	d005440a <submitEntitySolid+0xab2>
d005442c:	ed1f 4a83 	vldr	s8, [pc, #-524]	; d0054224 <submitEntitySolid+0x8cc>
d0054430:	eef0 2a44 	vmov.f32	s5, s8
d0054434:	eeb0 3a44 	vmov.f32	s6, s8
d0054438:	e6ab      	b.n	d0054192 <submitEntitySolid+0x83a>
d005443a:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d005443e:	e750      	b.n	d00542e2 <submitEntitySolid+0x98a>
d0054440:	9105      	str	r1, [sp, #20]
d0054442:	f7ff bb27 	b.w	d0053a94 <submitEntitySolid+0x13c>
d0054446:	463c      	mov	r4, r7
d0054448:	4655      	mov	r5, sl
d005444a:	eef0 ba47 	vmov.f32	s23, s14
d005444e:	4616      	mov	r6, r2
d0054450:	eef0 8a66 	vmov.f32	s17, s13
d0054454:	460f      	mov	r7, r1
d0054456:	eeb0 ca46 	vmov.f32	s24, s12
d005445a:	4682      	mov	sl, r0
d005445c:	eef0 da60 	vmov.f32	s27, s1
d0054460:	eeb0 ea65 	vmov.f32	s28, s11
d0054464:	e409      	b.n	d0053c7a <submitEntitySolid+0x322>
d0054466:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d005446a:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d005446e:	9011      	str	r0, [sp, #68]	; 0x44
d0054470:	edcd 5a10 	vstr	s11, [sp, #64]	; 0x40
d0054474:	910f      	str	r1, [sp, #60]	; 0x3c
d0054476:	920e      	str	r2, [sp, #56]	; 0x38
d0054478:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d005447c:	edcd 6a0c 	vstr	s13, [sp, #48]	; 0x30
d0054480:	ed8d 7a0b 	vstr	s14, [sp, #44]	; 0x2c
d0054484:	ed8d 5a04 	vstr	s10, [sp, #16]
d0054488:	edcd 0a00 	vstr	s1, [sp]
d005448c:	f7fc f898 	bl	d00505c0 <powfxt>
d0054490:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0054494:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0054498:	9811      	ldr	r0, [sp, #68]	; 0x44
d005449a:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d005449e:	990f      	ldr	r1, [sp, #60]	; 0x3c
d00544a0:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d00544a2:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d00544a6:	eddd 6a0c 	vldr	s13, [sp, #48]	; 0x30
d00544aa:	ed9d 7a0b 	vldr	s14, [sp, #44]	; 0x2c
d00544ae:	ed9d 5a04 	vldr	s10, [sp, #16]
d00544b2:	eddd 0a00 	vldr	s1, [sp]
d00544b6:	e759      	b.n	d005436c <submitEntitySolid+0xa14>
d00544b8:	463c      	mov	r4, r7
d00544ba:	4655      	mov	r5, sl
d00544bc:	eef0 ba47 	vmov.f32	s23, s14
d00544c0:	4616      	mov	r6, r2
d00544c2:	eef0 8a66 	vmov.f32	s17, s13
d00544c6:	460f      	mov	r7, r1
d00544c8:	eeb0 ca46 	vmov.f32	s24, s12
d00544cc:	4682      	mov	sl, r0
d00544ce:	eef0 da60 	vmov.f32	s27, s1
d00544d2:	eeb0 ea65 	vmov.f32	s28, s11
d00544d6:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d00544da:	f7ff bbce 	b.w	d0053c7a <submitEntitySolid+0x322>
d00544de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00544e2:	db7f      	blt.n	d00545e4 <submitEntitySolid+0xc8c>
d00544e4:	ee74 4ac2 	vsub.f32	s9, s9, s4
d00544e8:	ee30 2a42 	vsub.f32	s4, s0, s4
d00544ec:	eef6 2a08 	vmov.f32	s5, #104	; 0x3f400000  0.750
d00544f0:	eeb0 9a45 	vmov.f32	s18, s10
d00544f4:	ee84 3a82 	vdiv.f32	s6, s9, s4
d00544f8:	ed5f 4ab6 	vldr	s9, [pc, #-728]	; d0054224 <submitEntitySolid+0x8cc>
d00544fc:	fec3 4a24 	vmaxnm.f32	s9, s6, s9
d0054500:	fec4 4ac5 	vminnm.f32	s9, s9, s10
d0054504:	eea4 9ae2 	vfms.f32	s18, s9, s5
d0054508:	e6e6      	b.n	d00542d8 <submitEntitySolid+0x980>
d005450a:	eeb1 7a64 	vneg.f32	s14, s9
d005450e:	edde 5a00 	vldr	s11, [lr]
d0054512:	eef4 5a47 	vcmp.f32	s11, s14
d0054516:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005451a:	f6ff ad38 	blt.w	d0053f8e <submitEntitySolid+0x636>
d005451e:	eef4 4a65 	vcmp.f32	s9, s11
d0054522:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054526:	f6ff ad32 	blt.w	d0053f8e <submitEntitySolid+0x636>
d005452a:	9803      	ldr	r0, [sp, #12]
d005452c:	eeb1 7a67 	vneg.f32	s14, s15
d0054530:	edd0 5a00 	vldr	s11, [r0]
d0054534:	eef4 5ac7 	vcmpe.f32	s11, s14
d0054538:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005453c:	eef4 6ac6 	vcmpe.f32	s13, s12
d0054540:	bfac      	ite	ge
d0054542:	f04f 0e01 	movge.w	lr, #1
d0054546:	f04f 0e00 	movlt.w	lr, #0
d005454a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005454e:	eef4 7ae5 	vcmpe.f32	s15, s11
d0054552:	f00e 0e01 	and.w	lr, lr, #1
d0054556:	bf88      	it	hi
d0054558:	f04f 0e00 	movhi.w	lr, #0
d005455c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054560:	f00e 0e01 	and.w	lr, lr, #1
d0054564:	bfb8      	it	lt
d0054566:	f04f 0e00 	movlt.w	lr, #0
d005456a:	f1be 0f00 	cmp.w	lr, #0
d005456e:	f43f ad0e 	beq.w	d0053f8e <submitEntitySolid+0x636>
d0054572:	eef4 6a45 	vcmp.f32	s13, s10
d0054576:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005457a:	f6ff ad08 	blt.w	d0053f8e <submitEntitySolid+0x636>
d005457e:	ee64 4a8c 	vmul.f32	s9, s9, s24
d0054582:	f04f 0e0c 	mov.w	lr, #12
d0054586:	fb0e be01 	mla	lr, lr, r1, fp
d005458a:	eef1 6a64 	vneg.f32	s13, s9
d005458e:	ed9e 7a01 	vldr	s14, [lr, #4]
d0054592:	eeb4 7a66 	vcmp.f32	s14, s13
d0054596:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005459a:	f6ff acf8 	blt.w	d0053f8e <submitEntitySolid+0x636>
d005459e:	eeb4 7a64 	vcmp.f32	s14, s9
d00545a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545a6:	f63f acf2 	bhi.w	d0053f8e <submitEntitySolid+0x636>
d00545aa:	ee67 7a8c 	vmul.f32	s15, s15, s24
d00545ae:	f04f 0e0c 	mov.w	lr, #12
d00545b2:	fb0e be02 	mla	lr, lr, r2, fp
d00545b6:	eef1 6a67 	vneg.f32	s13, s15
d00545ba:	ed9e 7a01 	vldr	s14, [lr, #4]
d00545be:	eeb4 7ae6 	vcmpe.f32	s14, s13
d00545c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545c6:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00545ca:	bfac      	ite	ge
d00545cc:	f04f 0e01 	movge.w	lr, #1
d00545d0:	f04f 0e00 	movlt.w	lr, #0
d00545d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545d8:	f00e 0001 	and.w	r0, lr, #1
d00545dc:	bf88      	it	hi
d00545de:	2000      	movhi	r0, #0
d00545e0:	9003      	str	r0, [sp, #12]
d00545e2:	e4d6      	b.n	d0053f92 <submitEntitySolid+0x63a>
d00545e4:	ee74 4ac0 	vsub.f32	s9, s9, s0
d00545e8:	ee33 3a40 	vsub.f32	s6, s6, s0
d00545ec:	eef5 2a00 	vmov.f32	s5, #80	; 0x3e800000  0.250
d00545f0:	ee84 9a83 	vdiv.f32	s18, s9, s6
d00545f4:	eddf 4a0b 	vldr	s9, [pc, #44]	; d0054624 <submitEntitySolid+0xccc>
d00545f8:	fe89 9a24 	vmaxnm.f32	s18, s18, s9
d00545fc:	fe89 9a45 	vminnm.f32	s18, s18, s10
d0054600:	ee35 9a49 	vsub.f32	s18, s10, s18
d0054604:	ee29 9a22 	vmul.f32	s18, s18, s5
d0054608:	e666      	b.n	d00542d8 <submitEntitySolid+0x980>
d005460a:	eef1 6ac7 	vsqrt.f32	s13, s14
d005460e:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054612:	ee86 7a26 	vdiv.f32	s14, s12, s13
d0054616:	ee23 3a07 	vmul.f32	s6, s6, s14
d005461a:	ee62 2a87 	vmul.f32	s5, s5, s14
d005461e:	ee24 4a07 	vmul.f32	s8, s8, s14
d0054622:	e5b6      	b.n	d0054192 <submitEntitySolid+0x83a>
d0054624:	00000000 	.word	0x00000000

d0054628 <submitWorldEntities>:
d0054628:	b570      	push	{r4, r5, r6, lr}
d005462a:	4c3e      	ldr	r4, [pc, #248]	; (d0054724 <submitWorldEntities+0xfc>)
d005462c:	4605      	mov	r5, r0
d005462e:	f504 4600 	add.w	r6, r4, #32768	; 0x8000
d0054632:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d0054636:	2b00      	cmp	r3, #0
d0054638:	d070      	beq.n	d005471c <submitWorldEntities+0xf4>
d005463a:	69a3      	ldr	r3, [r4, #24]
d005463c:	2b00      	cmp	r3, #0
d005463e:	d06d      	beq.n	d005471c <submitWorldEntities+0xf4>
d0054640:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
d0054644:	07d2      	lsls	r2, r2, #31
d0054646:	d569      	bpl.n	d005471c <submitWorldEntities+0xf4>
d0054648:	edd5 6a01 	vldr	s13, [r5, #4]
d005464c:	ed94 7a01 	vldr	s14, [r4, #4]
d0054650:	ed95 5a00 	vldr	s10, [r5]
d0054654:	ee37 7a66 	vsub.f32	s14, s14, s13
d0054658:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d005465c:	edd4 6a00 	vldr	s13, [r4]
d0054660:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0054664:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0054668:	ed94 6a02 	vldr	s12, [r4, #8]
d005466c:	ee67 7a27 	vmul.f32	s15, s14, s15
d0054670:	ed95 5a02 	vldr	s10, [r5, #8]
d0054674:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d0054678:	ee36 6a45 	vsub.f32	s12, s12, s10
d005467c:	ed93 5a06 	vldr	s10, [r3, #24]
d0054680:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0054684:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d0054688:	eee6 7a24 	vfma.f32	s15, s12, s9
d005468c:	ee77 4ac5 	vsub.f32	s9, s15, s10
d0054690:	eef4 4ae5 	vcmpe.f32	s9, s11
d0054694:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054698:	dc40      	bgt.n	d005471c <submitWorldEntities+0xf4>
d005469a:	ee75 4a27 	vadd.f32	s9, s10, s15
d005469e:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d00546a2:	eef4 4ae5 	vcmpe.f32	s9, s11
d00546a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546aa:	d437      	bmi.n	d005471c <submitWorldEntities+0xf4>
d00546ac:	edd5 5a07 	vldr	s11, [r5, #28]
d00546b0:	eeb1 4a64 	vneg.f32	s8, s9
d00546b4:	ed95 3a08 	vldr	s6, [r5, #32]
d00546b8:	ee67 5a25 	vmul.f32	s11, s14, s11
d00546bc:	edd5 3a06 	vldr	s7, [r5, #24]
d00546c0:	eee6 5a03 	vfma.f32	s11, s12, s6
d00546c4:	eee6 5aa3 	vfma.f32	s11, s13, s7
d00546c8:	eef4 5ac4 	vcmpe.f32	s11, s8
d00546cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546d0:	d424      	bmi.n	d005471c <submitWorldEntities+0xf4>
d00546d2:	eef4 5ae4 	vcmpe.f32	s11, s9
d00546d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546da:	dc1f      	bgt.n	d005471c <submitWorldEntities+0xf4>
d00546dc:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d00546e0:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d00546e4:	ee27 7a25 	vmul.f32	s14, s14, s11
d00546e8:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d00546ec:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d00546f0:	eea7 5a84 	vfma.f32	s10, s15, s8
d00546f4:	eea6 7a24 	vfma.f32	s14, s12, s9
d00546f8:	eef1 7a45 	vneg.f32	s15, s10
d00546fc:	eea6 7aa5 	vfma.f32	s14, s13, s11
d0054700:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0054704:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054708:	d408      	bmi.n	d005471c <submitWorldEntities+0xf4>
d005470a:	eeb4 7ac5 	vcmpe.f32	s14, s10
d005470e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054712:	dc03      	bgt.n	d005471c <submitWorldEntities+0xf4>
d0054714:	4629      	mov	r1, r5
d0054716:	4620      	mov	r0, r4
d0054718:	f7ff f91e 	bl	d0053958 <submitEntitySolid>
d005471c:	3480      	adds	r4, #128	; 0x80
d005471e:	42a6      	cmp	r6, r4
d0054720:	d187      	bne.n	d0054632 <submitWorldEntities+0xa>
d0054722:	bd70      	pop	{r4, r5, r6, pc}
d0054724:	d00f4a80 	.word	0xd00f4a80

d0054728 <Render3D>:
d0054728:	b570      	push	{r4, r5, r6, lr}
d005472a:	4d17      	ldr	r5, [pc, #92]	; (d0054788 <Render3D+0x60>)
d005472c:	4604      	mov	r4, r0
d005472e:	682b      	ldr	r3, [r5, #0]
d0054730:	b193      	cbz	r3, d0054758 <Render3D+0x30>
d0054732:	4b16      	ldr	r3, [pc, #88]	; (d005478c <Render3D+0x64>)
d0054734:	681b      	ldr	r3, [r3, #0]
d0054736:	b17b      	cbz	r3, d0054758 <Render3D+0x30>
d0054738:	4b15      	ldr	r3, [pc, #84]	; (d0054790 <Render3D+0x68>)
d005473a:	2200      	movs	r2, #0
d005473c:	4620      	mov	r0, r4
d005473e:	601a      	str	r2, [r3, #0]
d0054740:	f7ff ff72 	bl	d0054628 <submitWorldEntities>
d0054744:	b114      	cbz	r4, d005474c <Render3D+0x24>
d0054746:	4620      	mov	r0, r4
d0054748:	f7fe f910 	bl	d005296c <sb3dParticlesRender.part.0>
d005474c:	4b11      	ldr	r3, [pc, #68]	; (d0054794 <Render3D+0x6c>)
d005474e:	4620      	mov	r0, r4
d0054750:	681b      	ldr	r3, [r3, #0]
d0054752:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0054756:	4718      	bx	r3
d0054758:	4a0f      	ldr	r2, [pc, #60]	; (d0054798 <Render3D+0x70>)
d005475a:	7813      	ldrb	r3, [r2, #0]
d005475c:	7850      	ldrb	r0, [r2, #1]
d005475e:	7891      	ldrb	r1, [r2, #2]
d0054760:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0054764:	78d2      	ldrb	r2, [r2, #3]
d0054766:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005476a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005476e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0054770:	4798      	blx	r3
d0054772:	2800      	cmp	r0, #0
d0054774:	d0e0      	beq.n	d0054738 <Render3D+0x10>
d0054776:	301f      	adds	r0, #31
d0054778:	4b04      	ldr	r3, [pc, #16]	; (d005478c <Render3D+0x64>)
d005477a:	f020 001f 	bic.w	r0, r0, #31
d005477e:	f100 0260 	add.w	r2, r0, #96	; 0x60
d0054782:	6028      	str	r0, [r5, #0]
d0054784:	601a      	str	r2, [r3, #0]
d0054786:	e7d7      	b.n	d0054738 <Render3D+0x10>
d0054788:	d00667c0 	.word	0xd00667c0
d005478c:	d00667c4 	.word	0xd00667c4
d0054790:	d00687e0 	.word	0xd00687e0
d0054794:	d00fca80 	.word	0xd00fca80
d0054798:	2001f000 	.word	0x2001f000

d005479c <sb3dParticlesClear>:
d005479c:	b538      	push	{r3, r4, r5, lr}
d005479e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
d00547a2:	2100      	movs	r1, #0
d00547a4:	480f      	ldr	r0, [pc, #60]	; (d00547e4 <sb3dParticlesClear+0x48>)
d00547a6:	2421      	movs	r4, #33	; 0x21
d00547a8:	f000 fec4 	bl	d0055534 <memset>
d00547ac:	4b0d      	ldr	r3, [pc, #52]	; (d00547e4 <sb3dParticlesClear+0x48>)
d00547ae:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d00547b2:	2100      	movs	r1, #0
d00547b4:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d00547b8:	2200      	movs	r2, #0
d00547ba:	7699      	strb	r1, [r3, #26]
d00547bc:	3320      	adds	r3, #32
d00547be:	f843 2c20 	str.w	r2, [r3, #-32]
d00547c2:	f843 2c1c 	str.w	r2, [r3, #-28]
d00547c6:	f843 2c18 	str.w	r2, [r3, #-24]
d00547ca:	f843 0c14 	str.w	r0, [r3, #-20]
d00547ce:	f843 2c10 	str.w	r2, [r3, #-16]
d00547d2:	f843 0c0c 	str.w	r0, [r3, #-12]
d00547d6:	f803 4c08 	strb.w	r4, [r3, #-8]
d00547da:	f803 1c07 	strb.w	r1, [r3, #-7]
d00547de:	42ab      	cmp	r3, r5
d00547e0:	d1eb      	bne.n	d00547ba <sb3dParticlesClear+0x1e>
d00547e2:	bd38      	pop	{r3, r4, r5, pc}
d00547e4:	d00667e0 	.word	0xd00667e0

d00547e8 <sb3dParticleSpawnQuad>:
d00547e8:	eef5 1ac0 	vcmpe.f32	s3, #0.0
d00547ec:	eddf 7a20 	vldr	s15, [pc, #128]	; d0054870 <sb3dParticleSpawnQuad+0x88>
d00547f0:	eef1 6a04 	vmov.f32	s13, #20	; 0x40a00000  5.0
d00547f4:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00547f8:	fe82 2a27 	vmaxnm.f32	s4, s4, s15
d00547fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054800:	fec2 2aa7 	vmaxnm.f32	s5, s5, s15
d0054804:	fe82 2a66 	vminnm.f32	s4, s4, s13
d0054808:	b430      	push	{r4, r5}
d005480a:	fec2 2ac7 	vminnm.f32	s5, s5, s14
d005480e:	b084      	sub	sp, #16
d0054810:	4d18      	ldr	r5, [pc, #96]	; (d0054874 <sb3dParticleSpawnQuad+0x8c>)
d0054812:	bf98      	it	ls
d0054814:	eef7 1a00 	vmovls.f32	s3, #112	; 0x3f800000  1.0
d0054818:	2400      	movs	r4, #0
d005481a:	462b      	mov	r3, r5
d005481c:	ed8d 0a01 	vstr	s0, [sp, #4]
d0054820:	edcd 0a02 	vstr	s1, [sp, #8]
d0054824:	ed8d 1a03 	vstr	s2, [sp, #12]
d0054828:	e003      	b.n	d0054832 <sb3dParticleSpawnQuad+0x4a>
d005482a:	3401      	adds	r4, #1
d005482c:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
d0054830:	d018      	beq.n	d0054864 <sb3dParticleSpawnQuad+0x7c>
d0054832:	7e9a      	ldrb	r2, [r3, #26]
d0054834:	3320      	adds	r3, #32
d0054836:	2a00      	cmp	r2, #0
d0054838:	d1f7      	bne.n	d005482a <sb3dParticleSpawnQuad+0x42>
d005483a:	eb05 1344 	add.w	r3, r5, r4, lsl #5
d005483e:	2201      	movs	r2, #1
d0054840:	769a      	strb	r2, [r3, #26]
d0054842:	aa04      	add	r2, sp, #16
d0054844:	7618      	strb	r0, [r3, #24]
d0054846:	7659      	strb	r1, [r3, #25]
d0054848:	edc3 1a03 	vstr	s3, [r3, #12]
d005484c:	ed83 2a04 	vstr	s4, [r3, #16]
d0054850:	edc3 2a05 	vstr	s5, [r3, #20]
d0054854:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0054858:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d005485c:	4620      	mov	r0, r4
d005485e:	b004      	add	sp, #16
d0054860:	bc30      	pop	{r4, r5}
d0054862:	4770      	bx	lr
d0054864:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0054868:	4620      	mov	r0, r4
d005486a:	b004      	add	sp, #16
d005486c:	bc30      	pop	{r4, r5}
d005486e:	4770      	bx	lr
d0054870:	00000000 	.word	0x00000000
d0054874:	d00667e0 	.word	0xd00667e0

d0054878 <sb3dParticleSetPosition>:
d0054878:	b084      	sub	sp, #16
d005487a:	28ff      	cmp	r0, #255	; 0xff
d005487c:	ed8d 0a01 	vstr	s0, [sp, #4]
d0054880:	edcd 0a02 	vstr	s1, [sp, #8]
d0054884:	ed8d 1a03 	vstr	s2, [sp, #12]
d0054888:	d809      	bhi.n	d005489e <sb3dParticleSetPosition+0x26>
d005488a:	4b06      	ldr	r3, [pc, #24]	; (d00548a4 <sb3dParticleSetPosition+0x2c>)
d005488c:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d0054890:	7e9a      	ldrb	r2, [r3, #26]
d0054892:	b122      	cbz	r2, d005489e <sb3dParticleSetPosition+0x26>
d0054894:	aa04      	add	r2, sp, #16
d0054896:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d005489a:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d005489e:	b004      	add	sp, #16
d00548a0:	4770      	bx	lr
d00548a2:	bf00      	nop
d00548a4:	d00667e0 	.word	0xd00667e0

d00548a8 <sb3dParticleSetSize>:
d00548a8:	28ff      	cmp	r0, #255	; 0xff
d00548aa:	d80f      	bhi.n	d00548cc <sb3dParticleSetSize+0x24>
d00548ac:	4b08      	ldr	r3, [pc, #32]	; (d00548d0 <sb3dParticleSetSize+0x28>)
d00548ae:	0141      	lsls	r1, r0, #5
d00548b0:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00548b4:	7e82      	ldrb	r2, [r0, #26]
d00548b6:	b14a      	cbz	r2, d00548cc <sb3dParticleSetSize+0x24>
d00548b8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00548bc:	440b      	add	r3, r1
d00548be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00548c2:	bf98      	it	ls
d00548c4:	eeb7 0a00 	vmovls.f32	s0, #112	; 0x3f800000  1.0
d00548c8:	ed83 0a03 	vstr	s0, [r3, #12]
d00548cc:	4770      	bx	lr
d00548ce:	bf00      	nop
d00548d0:	d00667e0 	.word	0xd00667e0

d00548d4 <sb3dParticleSetShade>:
d00548d4:	28ff      	cmp	r0, #255	; 0xff
d00548d6:	d80e      	bhi.n	d00548f6 <sb3dParticleSetShade+0x22>
d00548d8:	4b07      	ldr	r3, [pc, #28]	; (d00548f8 <sb3dParticleSetShade+0x24>)
d00548da:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00548de:	7e83      	ldrb	r3, [r0, #26]
d00548e0:	b14b      	cbz	r3, d00548f6 <sb3dParticleSetShade+0x22>
d00548e2:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d00548e6:	ed9f 7a05 	vldr	s14, [pc, #20]	; d00548fc <sb3dParticleSetShade+0x28>
d00548ea:	fe80 0a07 	vmaxnm.f32	s0, s0, s14
d00548ee:	fe80 0a67 	vminnm.f32	s0, s0, s15
d00548f2:	ed80 0a04 	vstr	s0, [r0, #16]
d00548f6:	4770      	bx	lr
d00548f8:	d00667e0 	.word	0xd00667e0
d00548fc:	00000000 	.word	0x00000000

d0054900 <sb3dParticleSetColor>:
d0054900:	28ff      	cmp	r0, #255	; 0xff
d0054902:	d805      	bhi.n	d0054910 <sb3dParticleSetColor+0x10>
d0054904:	4b03      	ldr	r3, [pc, #12]	; (d0054914 <sb3dParticleSetColor+0x14>)
d0054906:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d005490a:	7e83      	ldrb	r3, [r0, #26]
d005490c:	b103      	cbz	r3, d0054910 <sb3dParticleSetColor+0x10>
d005490e:	7601      	strb	r1, [r0, #24]
d0054910:	4770      	bx	lr
d0054912:	bf00      	nop
d0054914:	d00667e0 	.word	0xd00667e0

d0054918 <sb3dParticleSetEmission>:
d0054918:	28ff      	cmp	r0, #255	; 0xff
d005491a:	d805      	bhi.n	d0054928 <sb3dParticleSetEmission+0x10>
d005491c:	4b03      	ldr	r3, [pc, #12]	; (d005492c <sb3dParticleSetEmission+0x14>)
d005491e:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0054922:	7e83      	ldrb	r3, [r0, #26]
d0054924:	b103      	cbz	r3, d0054928 <sb3dParticleSetEmission+0x10>
d0054926:	7641      	strb	r1, [r0, #25]
d0054928:	4770      	bx	lr
d005492a:	bf00      	nop
d005492c:	d00667e0 	.word	0xd00667e0

d0054930 <sb3dWorldAudioDefaults>:
d0054930:	b410      	push	{r4}
d0054932:	4b06      	ldr	r3, [pc, #24]	; (d005494c <sb3dWorldAudioDefaults+0x1c>)
d0054934:	f04f 547e 	mov.w	r4, #1065353216	; 0x3f800000
d0054938:	4805      	ldr	r0, [pc, #20]	; (d0054950 <sb3dWorldAudioDefaults+0x20>)
d005493a:	4906      	ldr	r1, [pc, #24]	; (d0054954 <sb3dWorldAudioDefaults+0x24>)
d005493c:	4a06      	ldr	r2, [pc, #24]	; (d0054958 <sb3dWorldAudioDefaults+0x28>)
d005493e:	605c      	str	r4, [r3, #4]
d0054940:	6018      	str	r0, [r3, #0]
d0054942:	f85d 4b04 	ldr.w	r4, [sp], #4
d0054946:	6099      	str	r1, [r3, #8]
d0054948:	60da      	str	r2, [r3, #12]
d005494a:	4770      	bx	lr
d005494c:	d00fca84 	.word	0xd00fca84
d0054950:	3ba3d70a 	.word	0x3ba3d70a
d0054954:	3c23d70a 	.word	0x3c23d70a
d0054958:	447a0000 	.word	0x447a0000

d005495c <dopplerValueEntityToEntity>:
d005495c:	b538      	push	{r3, r4, r5, lr}
d005495e:	ed2d 8b04 	vpush	{d8-d9}
d0054962:	460c      	mov	r4, r1
d0054964:	eef0 9a40 	vmov.f32	s19, s0
d0054968:	eeb0 9a60 	vmov.f32	s18, s1
d005496c:	4605      	mov	r5, r0
d005496e:	eef0 8a41 	vmov.f32	s17, s2
d0054972:	eeb0 8a61 	vmov.f32	s16, s3
d0054976:	f7fc fd41 	bl	d00513fc <entityIdValid>
d005497a:	b920      	cbnz	r0, d0054986 <dopplerValueEntityToEntity+0x2a>
d005497c:	ed9f 0a53 	vldr	s0, [pc, #332]	; d0054acc <dopplerValueEntityToEntity+0x170>
d0054980:	ecbd 8b04 	vpop	{d8-d9}
d0054984:	bd38      	pop	{r3, r4, r5, pc}
d0054986:	4620      	mov	r0, r4
d0054988:	f7fc fd38 	bl	d00513fc <entityIdValid>
d005498c:	eddf 7a50 	vldr	s15, [pc, #320]	; d0054ad0 <dopplerValueEntityToEntity+0x174>
d0054990:	eef4 9ae7 	vcmpe.f32	s19, s15
d0054994:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054998:	d9f0      	bls.n	d005497c <dopplerValueEntityToEntity+0x20>
d005499a:	2800      	cmp	r0, #0
d005499c:	d0ee      	beq.n	d005497c <dopplerValueEntityToEntity+0x20>
d005499e:	484d      	ldr	r0, [pc, #308]	; (d0054ad4 <dopplerValueEntityToEntity+0x178>)
d00549a0:	ed9f 5a4d 	vldr	s10, [pc, #308]	; d0054ad8 <dopplerValueEntityToEntity+0x17c>
d00549a4:	eb00 11c4 	add.w	r1, r0, r4, lsl #7
d00549a8:	eb00 10c5 	add.w	r0, r0, r5, lsl #7
d00549ac:	ed91 7a01 	vldr	s14, [r1, #4]
d00549b0:	edd0 5a01 	vldr	s11, [r0, #4]
d00549b4:	edd0 7a00 	vldr	s15, [r0]
d00549b8:	ee77 5a65 	vsub.f32	s11, s14, s11
d00549bc:	ed91 6a00 	vldr	s12, [r1]
d00549c0:	edd1 6a02 	vldr	s13, [r1, #8]
d00549c4:	ee36 6a67 	vsub.f32	s12, s12, s15
d00549c8:	ed90 7a02 	vldr	s14, [r0, #8]
d00549cc:	ee65 7aa5 	vmul.f32	s15, s11, s11
d00549d0:	ee76 6ac7 	vsub.f32	s13, s13, s14
d00549d4:	eee6 7a06 	vfma.f32	s15, s12, s12
d00549d8:	eee6 7aa6 	vfma.f32	s15, s13, s13
d00549dc:	eef4 7ac5 	vcmpe.f32	s15, s10
d00549e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549e4:	d9ca      	bls.n	d005497c <dopplerValueEntityToEntity+0x20>
d00549e6:	edd1 3a04 	vldr	s7, [r1, #16]
d00549ea:	eeb1 4ae7 	vsqrt.f32	s8, s15
d00549ee:	ed90 7a04 	vldr	s14, [r0, #16]
d00549f2:	edd1 7a03 	vldr	s15, [r1, #12]
d00549f6:	edd0 4a03 	vldr	s9, [r0, #12]
d00549fa:	ed90 5a05 	vldr	s10, [r0, #20]
d00549fe:	ee37 7a63 	vsub.f32	s14, s14, s7
d0054a02:	edd1 3a05 	vldr	s7, [r1, #20]
d0054a06:	ee74 4ae7 	vsub.f32	s9, s9, s15
d0054a0a:	eddf 7a30 	vldr	s15, [pc, #192]	; d0054acc <dopplerValueEntityToEntity+0x170>
d0054a0e:	ee35 5a63 	vsub.f32	s10, s10, s7
d0054a12:	ee37 7a25 	vadd.f32	s14, s14, s11
d0054a16:	fe88 1aa7 	vmaxnm.f32	s2, s17, s15
d0054a1a:	ee74 4a86 	vadd.f32	s9, s9, s12
d0054a1e:	fec8 1a01 	vmaxnm.f32	s3, s16, s2
d0054a22:	ee35 5a26 	vadd.f32	s10, s10, s13
d0054a26:	fec9 0a27 	vmaxnm.f32	s1, s18, s15
d0054a2a:	ee27 7a25 	vmul.f32	s14, s14, s11
d0054a2e:	eeb4 1ae1 	vcmpe.f32	s2, s3
d0054a32:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0054a36:	eea6 7a24 	vfma.f32	s14, s12, s9
d0054a3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a3e:	eea6 7a85 	vfma.f32	s14, s13, s10
d0054a42:	eec7 6a29 	vdiv.f32	s13, s14, s19
d0054a46:	ee86 7a84 	vdiv.f32	s14, s13, s8
d0054a4a:	da04      	bge.n	d0054a56 <dopplerValueEntityToEntity+0xfa>
d0054a4c:	eeb4 1a44 	vcmp.f32	s2, s8
d0054a50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a54:	db14      	blt.n	d0054a80 <dopplerValueEntityToEntity+0x124>
d0054a56:	ee60 7a87 	vmul.f32	s15, s1, s14
d0054a5a:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0054a5e:	eebf 6a00 	vmov.f32	s12, #240	; 0xbf800000 -1.0
d0054a62:	eeb0 7ae7 	vabs.f32	s14, s15
d0054a66:	eef1 7a67 	vneg.f32	s15, s15
d0054a6a:	ee37 7a26 	vadd.f32	s14, s14, s13
d0054a6e:	ecbd 8b04 	vpop	{d8-d9}
d0054a72:	ee87 0a87 	vdiv.f32	s0, s15, s14
d0054a76:	fe80 0a06 	vmaxnm.f32	s0, s0, s12
d0054a7a:	fe80 0a66 	vminnm.f32	s0, s0, s13
d0054a7e:	bd38      	pop	{r3, r4, r5, pc}
d0054a80:	eef4 1ac4 	vcmpe.f32	s3, s8
d0054a84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a88:	d91c      	bls.n	d0054ac4 <dopplerValueEntityToEntity+0x168>
d0054a8a:	ee34 4a41 	vsub.f32	s8, s8, s2
d0054a8e:	ee31 1ac1 	vsub.f32	s2, s3, s2
d0054a92:	ee60 7a87 	vmul.f32	s15, s1, s14
d0054a96:	eeff 6a00 	vmov.f32	s13, #240	; 0xbf800000 -1.0
d0054a9a:	ee84 7a01 	vdiv.f32	s14, s8, s2
d0054a9e:	ee35 7ac7 	vsub.f32	s14, s11, s14
d0054aa2:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054aa6:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054aaa:	eeb0 7ae7 	vabs.f32	s14, s15
d0054aae:	eef1 7a67 	vneg.f32	s15, s15
d0054ab2:	ee37 7a25 	vadd.f32	s14, s14, s11
d0054ab6:	ee87 0a87 	vdiv.f32	s0, s15, s14
d0054aba:	fe80 0a26 	vmaxnm.f32	s0, s0, s13
d0054abe:	fe80 0a65 	vminnm.f32	s0, s0, s11
d0054ac2:	e75d      	b.n	d0054980 <dopplerValueEntityToEntity+0x24>
d0054ac4:	eeb0 0a67 	vmov.f32	s0, s15
d0054ac8:	e75a      	b.n	d0054980 <dopplerValueEntityToEntity+0x24>
d0054aca:	bf00      	nop
d0054acc:	00000000 	.word	0x00000000
d0054ad0:	358637bd 	.word	0x358637bd
d0054ad4:	d00f4a80 	.word	0xd00f4a80
d0054ad8:	2b8cbccd 	.word	0x2b8cbccd

d0054adc <entityAudio>:
d0054adc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0054ade:	4604      	mov	r4, r0
d0054ae0:	460f      	mov	r7, r1
d0054ae2:	461d      	mov	r5, r3
d0054ae4:	4616      	mov	r6, r2
d0054ae6:	ed2d 8b04 	vpush	{d8-d9}
d0054aea:	eeb0 9a40 	vmov.f32	s18, s0
d0054aee:	eeb0 8a60 	vmov.f32	s16, s1
d0054af2:	eef0 8a41 	vmov.f32	s17, s2
d0054af6:	b10a      	cbz	r2, d0054afc <entityAudio+0x20>
d0054af8:	2300      	movs	r3, #0
d0054afa:	6013      	str	r3, [r2, #0]
d0054afc:	b10d      	cbz	r5, d0054b02 <entityAudio+0x26>
d0054afe:	2300      	movs	r3, #0
d0054b00:	602b      	str	r3, [r5, #0]
d0054b02:	4620      	mov	r0, r4
d0054b04:	f7fc fc7a 	bl	d00513fc <entityIdValid>
d0054b08:	b910      	cbnz	r0, d0054b10 <entityAudio+0x34>
d0054b0a:	ecbd 8b04 	vpop	{d8-d9}
d0054b0e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0054b10:	4638      	mov	r0, r7
d0054b12:	f7fc fc73 	bl	d00513fc <entityIdValid>
d0054b16:	2800      	cmp	r0, #0
d0054b18:	d0f7      	beq.n	d0054b0a <entityAudio+0x2e>
d0054b1a:	4b3d      	ldr	r3, [pc, #244]	; (d0054c10 <entityAudio+0x134>)
d0054b1c:	01e2      	lsls	r2, r4, #7
d0054b1e:	ed9f 6a3d 	vldr	s12, [pc, #244]	; d0054c14 <entityAudio+0x138>
d0054b22:	eb03 11c7 	add.w	r1, r3, r7, lsl #7
d0054b26:	eb03 14c4 	add.w	r4, r3, r4, lsl #7
d0054b2a:	fec8 0a06 	vmaxnm.f32	s1, s16, s12
d0054b2e:	edd1 7a02 	vldr	s15, [r1, #8]
d0054b32:	fe88 1aa0 	vmaxnm.f32	s2, s17, s1
d0054b36:	ed94 7a02 	vldr	s14, [r4, #8]
d0054b3a:	eef4 0ac1 	vcmpe.f32	s1, s2
d0054b3e:	edd1 6a00 	vldr	s13, [r1]
d0054b42:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0054b46:	ed94 7a00 	vldr	s14, [r4]
d0054b4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b4e:	ee76 6ac7 	vsub.f32	s13, s13, s14
d0054b52:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0054b56:	eea6 7aa6 	vfma.f32	s14, s13, s13
d0054b5a:	d50e      	bpl.n	d0054b7a <entityAudio+0x9e>
d0054b5c:	ee61 5a01 	vmul.f32	s11, s2, s2
d0054b60:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0054b64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b68:	db07      	blt.n	d0054b7a <entityAudio+0x9e>
d0054b6a:	b10e      	cbz	r6, d0054b70 <entityAudio+0x94>
d0054b6c:	ed86 6a00 	vstr	s12, [r6]
d0054b70:	2d00      	cmp	r5, #0
d0054b72:	d0ca      	beq.n	d0054b0a <entityAudio+0x2e>
d0054b74:	2300      	movs	r3, #0
d0054b76:	602b      	str	r3, [r5, #0]
d0054b78:	e7c7      	b.n	d0054b0a <entityAudio+0x2e>
d0054b7a:	ed9f 6a27 	vldr	s12, [pc, #156]	; d0054c18 <entityAudio+0x13c>
d0054b7e:	eeb4 7ac6 	vcmpe.f32	s14, s12
d0054b82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b86:	d93a      	bls.n	d0054bfe <entityAudio+0x122>
d0054b88:	eef1 5ac7 	vsqrt.f32	s11, s14
d0054b8c:	4413      	add	r3, r2
d0054b8e:	ed9f 7a21 	vldr	s14, [pc, #132]	; d0054c14 <entityAudio+0x138>
d0054b92:	ed93 6a0c 	vldr	s12, [r3, #48]	; 0x30
d0054b96:	edd3 4a0a 	vldr	s9, [r3, #40]	; 0x28
d0054b9a:	fe89 7a07 	vmaxnm.f32	s14, s18, s14
d0054b9e:	ee67 7a86 	vmul.f32	s15, s15, s12
d0054ba2:	eef4 0ac1 	vcmpe.f32	s1, s2
d0054ba6:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054baa:	eee6 7aa4 	vfma.f32	s15, s13, s9
d0054bae:	eebf 5a00 	vmov.f32	s10, #240	; 0xbf800000 -1.0
d0054bb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bb6:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0054bba:	eec7 6aa5 	vdiv.f32	s13, s15, s11
d0054bbe:	fec6 6a85 	vmaxnm.f32	s13, s13, s10
d0054bc2:	fec6 7ac6 	vminnm.f32	s15, s13, s12
d0054bc6:	ee67 7a27 	vmul.f32	s15, s14, s15
d0054bca:	da1d      	bge.n	d0054c08 <entityAudio+0x12c>
d0054bcc:	eef4 0ae5 	vcmpe.f32	s1, s11
d0054bd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bd4:	da18      	bge.n	d0054c08 <entityAudio+0x12c>
d0054bd6:	ee75 5ae0 	vsub.f32	s11, s11, s1
d0054bda:	ee31 1a60 	vsub.f32	s2, s2, s1
d0054bde:	ee85 7a81 	vdiv.f32	s14, s11, s2
d0054be2:	ee36 6a47 	vsub.f32	s12, s12, s14
d0054be6:	ee26 6a06 	vmul.f32	s12, s12, s12
d0054bea:	b10e      	cbz	r6, d0054bf0 <entityAudio+0x114>
d0054bec:	edc6 7a00 	vstr	s15, [r6]
d0054bf0:	2d00      	cmp	r5, #0
d0054bf2:	d08a      	beq.n	d0054b0a <entityAudio+0x2e>
d0054bf4:	ed85 6a00 	vstr	s12, [r5]
d0054bf8:	ecbd 8b04 	vpop	{d8-d9}
d0054bfc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0054bfe:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054c02:	eddf 7a04 	vldr	s15, [pc, #16]	; d0054c14 <entityAudio+0x138>
d0054c06:	e7f0      	b.n	d0054bea <entityAudio+0x10e>
d0054c08:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054c0c:	e7ed      	b.n	d0054bea <entityAudio+0x10e>
d0054c0e:	bf00      	nop
d0054c10:	d00f4a80 	.word	0xd00f4a80
d0054c14:	00000000 	.word	0x00000000
d0054c18:	358637bd 	.word	0x358637bd

d0054c1c <sb3dEntityAudioInfoDefault>:
d0054c1c:	b5f0      	push	{r4, r5, r6, r7, lr}
d0054c1e:	2300      	movs	r3, #0
d0054c20:	460d      	mov	r5, r1
d0054c22:	4606      	mov	r6, r0
d0054c24:	ed2d 8b02 	vpush	{d8}
d0054c28:	b08d      	sub	sp, #52	; 0x34
d0054c2a:	eeb0 8a40 	vmov.f32	s16, s0
d0054c2e:	9304      	str	r3, [sp, #16]
d0054c30:	9305      	str	r3, [sp, #20]
d0054c32:	9306      	str	r3, [sp, #24]
d0054c34:	f7fc fbe2 	bl	d00513fc <entityIdValid>
d0054c38:	b9a8      	cbnz	r0, d0054c66 <sb3dEntityAudioInfoDefault+0x4a>
d0054c3a:	ac04      	add	r4, sp, #16
d0054c3c:	ad08      	add	r5, sp, #32
d0054c3e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0054c42:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0054c46:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054c4a:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0054c4e:	ed9d 0a04 	vldr	s0, [sp, #16]
d0054c52:	eddd 0a05 	vldr	s1, [sp, #20]
d0054c56:	ed9d 1a06 	vldr	s2, [sp, #24]
d0054c5a:	eddd 1a07 	vldr	s3, [sp, #28]
d0054c5e:	b00d      	add	sp, #52	; 0x34
d0054c60:	ecbd 8b02 	vpop	{d8}
d0054c64:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0054c66:	4628      	mov	r0, r5
d0054c68:	f7fc fbc8 	bl	d00513fc <entityIdValid>
d0054c6c:	2800      	cmp	r0, #0
d0054c6e:	d0e4      	beq.n	d0054c3a <sb3dEntityAudioInfoDefault+0x1e>
d0054c70:	4f11      	ldr	r7, [pc, #68]	; (d0054cb8 <sb3dEntityAudioInfoDefault+0x9c>)
d0054c72:	4629      	mov	r1, r5
d0054c74:	4630      	mov	r0, r6
d0054c76:	eeb0 0a48 	vmov.f32	s0, s16
d0054c7a:	edd7 1a03 	vldr	s3, [r7, #12]
d0054c7e:	ac04      	add	r4, sp, #16
d0054c80:	ed97 1a02 	vldr	s2, [r7, #8]
d0054c84:	edd7 0a00 	vldr	s1, [r7]
d0054c88:	f7ff fe68 	bl	d005495c <dopplerValueEntityToEntity>
d0054c8c:	eef0 7a40 	vmov.f32	s15, s0
d0054c90:	4629      	mov	r1, r5
d0054c92:	4630      	mov	r0, r6
d0054c94:	ab06      	add	r3, sp, #24
d0054c96:	aa05      	add	r2, sp, #20
d0054c98:	ed97 1a03 	vldr	s2, [r7, #12]
d0054c9c:	ad08      	add	r5, sp, #32
d0054c9e:	edd7 0a02 	vldr	s1, [r7, #8]
d0054ca2:	ed97 0a01 	vldr	s0, [r7, #4]
d0054ca6:	edcd 7a04 	vstr	s15, [sp, #16]
d0054caa:	f7ff ff17 	bl	d0054adc <entityAudio>
d0054cae:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0054cb2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0054cb6:	e7c6      	b.n	d0054c46 <sb3dEntityAudioInfoDefault+0x2a>
d0054cb8:	d00fca84 	.word	0xd00fca84

d0054cbc <loadMeshSB3D>:
d0054cbc:	2800      	cmp	r0, #0
d0054cbe:	f000 80e4 	beq.w	d0054e8a <loadMeshSB3D+0x1ce>
d0054cc2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0054cc6:	fab1 f781 	clz	r7, r1
d0054cca:	460c      	mov	r4, r1
d0054ccc:	ed2d 8b02 	vpush	{d8}
d0054cd0:	097f      	lsrs	r7, r7, #5
d0054cd2:	b08c      	sub	sp, #48	; 0x30
d0054cd4:	2900      	cmp	r1, #0
d0054cd6:	f000 80d2 	beq.w	d0054e7e <loadMeshSB3D+0x1c2>
d0054cda:	4e6d      	ldr	r6, [pc, #436]	; (d0054e90 <loadMeshSB3D+0x1d4>)
d0054cdc:	4605      	mov	r5, r0
d0054cde:	2240      	movs	r2, #64	; 0x40
d0054ce0:	4639      	mov	r1, r7
d0054ce2:	4620      	mov	r0, r4
d0054ce4:	eeb0 8a40 	vmov.f32	s16, s0
d0054ce8:	f000 fc24 	bl	d0055534 <memset>
d0054cec:	7933      	ldrb	r3, [r6, #4]
d0054cee:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054cf2:	4629      	mov	r1, r5
d0054cf4:	79b2      	ldrb	r2, [r6, #6]
d0054cf6:	4638      	mov	r0, r7
d0054cf8:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0054cfc:	79f5      	ldrb	r5, [r6, #7]
d0054cfe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0054d02:	2201      	movs	r2, #1
d0054d04:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0054d08:	681b      	ldr	r3, [r3, #0]
d0054d0a:	681b      	ldr	r3, [r3, #0]
d0054d0c:	4798      	blx	r3
d0054d0e:	2800      	cmp	r0, #0
d0054d10:	f040 80b5 	bne.w	d0054e7e <loadMeshSB3D+0x1c2>
d0054d14:	f896 c004 	ldrb.w	ip, [r6, #4]
d0054d18:	2204      	movs	r2, #4
d0054d1a:	7971      	ldrb	r1, [r6, #5]
d0054d1c:	ab02      	add	r3, sp, #8
d0054d1e:	79b7      	ldrb	r7, [r6, #6]
d0054d20:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0054d24:	79f5      	ldrb	r5, [r6, #7]
d0054d26:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054d2a:	a903      	add	r1, sp, #12
d0054d2c:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054d30:	682d      	ldr	r5, [r5, #0]
d0054d32:	68ad      	ldr	r5, [r5, #8]
d0054d34:	47a8      	blx	r5
d0054d36:	2800      	cmp	r0, #0
d0054d38:	f040 809e 	bne.w	d0054e78 <loadMeshSB3D+0x1bc>
d0054d3c:	9a02      	ldr	r2, [sp, #8]
d0054d3e:	2a04      	cmp	r2, #4
d0054d40:	f040 809a 	bne.w	d0054e78 <loadMeshSB3D+0x1bc>
d0054d44:	4b53      	ldr	r3, [pc, #332]	; (d0054e94 <loadMeshSB3D+0x1d8>)
d0054d46:	9903      	ldr	r1, [sp, #12]
d0054d48:	4299      	cmp	r1, r3
d0054d4a:	f040 8095 	bne.w	d0054e78 <loadMeshSB3D+0x1bc>
d0054d4e:	7931      	ldrb	r1, [r6, #4]
d0054d50:	ab02      	add	r3, sp, #8
d0054d52:	7975      	ldrb	r5, [r6, #5]
d0054d54:	79b7      	ldrb	r7, [r6, #6]
d0054d56:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0054d5a:	79f5      	ldrb	r5, [r6, #7]
d0054d5c:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054d60:	a904      	add	r1, sp, #16
d0054d62:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054d66:	682d      	ldr	r5, [r5, #0]
d0054d68:	68ad      	ldr	r5, [r5, #8]
d0054d6a:	47a8      	blx	r5
d0054d6c:	2800      	cmp	r0, #0
d0054d6e:	f040 8083 	bne.w	d0054e78 <loadMeshSB3D+0x1bc>
d0054d72:	9a02      	ldr	r2, [sp, #8]
d0054d74:	2a04      	cmp	r2, #4
d0054d76:	d17f      	bne.n	d0054e78 <loadMeshSB3D+0x1bc>
d0054d78:	9b04      	ldr	r3, [sp, #16]
d0054d7a:	2b05      	cmp	r3, #5
d0054d7c:	d17c      	bne.n	d0054e78 <loadMeshSB3D+0x1bc>
d0054d7e:	7931      	ldrb	r1, [r6, #4]
d0054d80:	ab02      	add	r3, sp, #8
d0054d82:	7975      	ldrb	r5, [r6, #5]
d0054d84:	79b7      	ldrb	r7, [r6, #6]
d0054d86:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0054d8a:	79f5      	ldrb	r5, [r6, #7]
d0054d8c:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0054d90:	a905      	add	r1, sp, #20
d0054d92:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054d96:	682d      	ldr	r5, [r5, #0]
d0054d98:	68ad      	ldr	r5, [r5, #8]
d0054d9a:	47a8      	blx	r5
d0054d9c:	2800      	cmp	r0, #0
d0054d9e:	d16b      	bne.n	d0054e78 <loadMeshSB3D+0x1bc>
d0054da0:	9a02      	ldr	r2, [sp, #8]
d0054da2:	2a04      	cmp	r2, #4
d0054da4:	d168      	bne.n	d0054e78 <loadMeshSB3D+0x1bc>
d0054da6:	7930      	ldrb	r0, [r6, #4]
d0054da8:	ab02      	add	r3, sp, #8
d0054daa:	7975      	ldrb	r5, [r6, #5]
d0054dac:	a906      	add	r1, sp, #24
d0054dae:	79b7      	ldrb	r7, [r6, #6]
d0054db0:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0054db4:	79f5      	ldrb	r5, [r6, #7]
d0054db6:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0054dba:	2000      	movs	r0, #0
d0054dbc:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054dc0:	682d      	ldr	r5, [r5, #0]
d0054dc2:	68ad      	ldr	r5, [r5, #8]
d0054dc4:	47a8      	blx	r5
d0054dc6:	4605      	mov	r5, r0
d0054dc8:	2800      	cmp	r0, #0
d0054dca:	d155      	bne.n	d0054e78 <loadMeshSB3D+0x1bc>
d0054dcc:	9b02      	ldr	r3, [sp, #8]
d0054dce:	2b04      	cmp	r3, #4
d0054dd0:	d152      	bne.n	d0054e78 <loadMeshSB3D+0x1bc>
d0054dd2:	9b05      	ldr	r3, [sp, #20]
d0054dd4:	2b00      	cmp	r3, #0
d0054dd6:	d04f      	beq.n	d0054e78 <loadMeshSB3D+0x1bc>
d0054dd8:	9f06      	ldr	r7, [sp, #24]
d0054dda:	2f00      	cmp	r7, #0
d0054ddc:	d04c      	beq.n	d0054e78 <loadMeshSB3D+0x1bc>
d0054dde:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0054de2:	6063      	str	r3, [r4, #4]
d0054de4:	6167      	str	r7, [r4, #20]
d0054de6:	0080      	lsls	r0, r0, #2
d0054de8:	60e5      	str	r5, [r4, #12]
d0054dea:	f000 fb77 	bl	d00554dc <malloc>
d0054dee:	4603      	mov	r3, r0
d0054df0:	0138      	lsls	r0, r7, #4
d0054df2:	461f      	mov	r7, r3
d0054df4:	6023      	str	r3, [r4, #0]
d0054df6:	f000 fb71 	bl	d00554dc <malloc>
d0054dfa:	60a5      	str	r5, [r4, #8]
d0054dfc:	6120      	str	r0, [r4, #16]
d0054dfe:	2f00      	cmp	r7, #0
d0054e00:	d037      	beq.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054e02:	fab0 f880 	clz	r8, r0
d0054e06:	ea4f 1858 	mov.w	r8, r8, lsr #5
d0054e0a:	b9d8      	cbnz	r0, d0054e44 <loadMeshSB3D+0x188>
d0054e0c:	e031      	b.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054e0e:	9b02      	ldr	r3, [sp, #8]
d0054e10:	2b0c      	cmp	r3, #12
d0054e12:	d12e      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054e14:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0054e18:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0054e1c:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0054e20:	ee66 6a88 	vmul.f32	s13, s13, s16
d0054e24:	6823      	ldr	r3, [r4, #0]
d0054e26:	ee27 7a08 	vmul.f32	s14, s14, s16
d0054e2a:	9905      	ldr	r1, [sp, #20]
d0054e2c:	ee67 7a88 	vmul.f32	s15, s15, s16
d0054e30:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0054e34:	4541      	cmp	r1, r8
d0054e36:	edc3 6a00 	vstr	s13, [r3]
d0054e3a:	ed83 7a01 	vstr	s14, [r3, #4]
d0054e3e:	edc3 7a02 	vstr	s15, [r3, #8]
d0054e42:	d929      	bls.n	d0054e98 <loadMeshSB3D+0x1dc>
d0054e44:	7930      	ldrb	r0, [r6, #4]
d0054e46:	220c      	movs	r2, #12
d0054e48:	7975      	ldrb	r5, [r6, #5]
d0054e4a:	ab02      	add	r3, sp, #8
d0054e4c:	79b7      	ldrb	r7, [r6, #6]
d0054e4e:	a909      	add	r1, sp, #36	; 0x24
d0054e50:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0054e54:	79f5      	ldrb	r5, [r6, #7]
d0054e56:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0054e5a:	2000      	movs	r0, #0
d0054e5c:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0054e60:	682d      	ldr	r5, [r5, #0]
d0054e62:	68ad      	ldr	r5, [r5, #8]
d0054e64:	47a8      	blx	r5
d0054e66:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0054e6a:	f108 0801 	add.w	r8, r8, #1
d0054e6e:	2800      	cmp	r0, #0
d0054e70:	d0cd      	beq.n	d0054e0e <loadMeshSB3D+0x152>
d0054e72:	4620      	mov	r0, r4
d0054e74:	f7fc fad4 	bl	d0051420 <freeMesh>
d0054e78:	2000      	movs	r0, #0
d0054e7a:	f000 f96b 	bl	d0055154 <fclose>
d0054e7e:	2000      	movs	r0, #0
d0054e80:	b00c      	add	sp, #48	; 0x30
d0054e82:	ecbd 8b02 	vpop	{d8}
d0054e86:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0054e8a:	2000      	movs	r0, #0
d0054e8c:	4770      	bx	lr
d0054e8e:	bf00      	nop
d0054e90:	2001f000 	.word	0x2001f000
d0054e94:	44334253 	.word	0x44334253
d0054e98:	9b06      	ldr	r3, [sp, #24]
d0054e9a:	2b00      	cmp	r3, #0
d0054e9c:	f000 80db 	beq.w	d0055056 <loadMeshSB3D+0x39a>
d0054ea0:	4605      	mov	r5, r0
d0054ea2:	7937      	ldrb	r7, [r6, #4]
d0054ea4:	ab02      	add	r3, sp, #8
d0054ea6:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054eaa:	2204      	movs	r2, #4
d0054eac:	79b0      	ldrb	r0, [r6, #6]
d0054eae:	a907      	add	r1, sp, #28
d0054eb0:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0054eb4:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054eb8:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0054ebc:	2000      	movs	r0, #0
d0054ebe:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054ec2:	683f      	ldr	r7, [r7, #0]
d0054ec4:	68bf      	ldr	r7, [r7, #8]
d0054ec6:	47b8      	blx	r7
d0054ec8:	2800      	cmp	r0, #0
d0054eca:	d1d2      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054ecc:	9a02      	ldr	r2, [sp, #8]
d0054ece:	2a04      	cmp	r2, #4
d0054ed0:	d1cf      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054ed2:	7931      	ldrb	r1, [r6, #4]
d0054ed4:	ab02      	add	r3, sp, #8
d0054ed6:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054eda:	f896 e006 	ldrb.w	lr, [r6, #6]
d0054ede:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0054ee2:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054ee6:	a908      	add	r1, sp, #32
d0054ee8:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0054eec:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054ef0:	683f      	ldr	r7, [r7, #0]
d0054ef2:	68bf      	ldr	r7, [r7, #8]
d0054ef4:	47b8      	blx	r7
d0054ef6:	2800      	cmp	r0, #0
d0054ef8:	d1bb      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054efa:	9a02      	ldr	r2, [sp, #8]
d0054efc:	2a04      	cmp	r2, #4
d0054efe:	d1b8      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054f00:	7931      	ldrb	r1, [r6, #4]
d0054f02:	ab02      	add	r3, sp, #8
d0054f04:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054f08:	f896 e006 	ldrb.w	lr, [r6, #6]
d0054f0c:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0054f10:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054f14:	a909      	add	r1, sp, #36	; 0x24
d0054f16:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0054f1a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054f1e:	683f      	ldr	r7, [r7, #0]
d0054f20:	68bf      	ldr	r7, [r7, #8]
d0054f22:	47b8      	blx	r7
d0054f24:	2800      	cmp	r0, #0
d0054f26:	d1a4      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054f28:	9b02      	ldr	r3, [sp, #8]
d0054f2a:	2b04      	cmp	r3, #4
d0054f2c:	d1a1      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054f2e:	7937      	ldrb	r7, [r6, #4]
d0054f30:	ab02      	add	r3, sp, #8
d0054f32:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054f36:	2201      	movs	r2, #1
d0054f38:	79b1      	ldrb	r1, [r6, #6]
d0054f3a:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0054f3e:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054f42:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d0054f46:	a901      	add	r1, sp, #4
d0054f48:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054f4c:	683f      	ldr	r7, [r7, #0]
d0054f4e:	68bf      	ldr	r7, [r7, #8]
d0054f50:	47b8      	blx	r7
d0054f52:	2800      	cmp	r0, #0
d0054f54:	d18d      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054f56:	9a02      	ldr	r2, [sp, #8]
d0054f58:	2a01      	cmp	r2, #1
d0054f5a:	d18a      	bne.n	d0054e72 <loadMeshSB3D+0x1b6>
d0054f5c:	7931      	ldrb	r1, [r6, #4]
d0054f5e:	ab02      	add	r3, sp, #8
d0054f60:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054f64:	f896 e006 	ldrb.w	lr, [r6, #6]
d0054f68:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0054f6c:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054f70:	f10d 0105 	add.w	r1, sp, #5
d0054f74:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0054f78:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054f7c:	683f      	ldr	r7, [r7, #0]
d0054f7e:	68bf      	ldr	r7, [r7, #8]
d0054f80:	47b8      	blx	r7
d0054f82:	2800      	cmp	r0, #0
d0054f84:	f47f af75 	bne.w	d0054e72 <loadMeshSB3D+0x1b6>
d0054f88:	9b02      	ldr	r3, [sp, #8]
d0054f8a:	2b01      	cmp	r3, #1
d0054f8c:	f47f af71 	bne.w	d0054e72 <loadMeshSB3D+0x1b6>
d0054f90:	7937      	ldrb	r7, [r6, #4]
d0054f92:	ab02      	add	r3, sp, #8
d0054f94:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054f98:	2201      	movs	r2, #1
d0054f9a:	79b0      	ldrb	r0, [r6, #6]
d0054f9c:	f10d 0106 	add.w	r1, sp, #6
d0054fa0:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0054fa4:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054fa8:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0054fac:	2000      	movs	r0, #0
d0054fae:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054fb2:	683f      	ldr	r7, [r7, #0]
d0054fb4:	68bf      	ldr	r7, [r7, #8]
d0054fb6:	47b8      	blx	r7
d0054fb8:	2800      	cmp	r0, #0
d0054fba:	f47f af5a 	bne.w	d0054e72 <loadMeshSB3D+0x1b6>
d0054fbe:	9a02      	ldr	r2, [sp, #8]
d0054fc0:	2a01      	cmp	r2, #1
d0054fc2:	f47f af56 	bne.w	d0054e72 <loadMeshSB3D+0x1b6>
d0054fc6:	7931      	ldrb	r1, [r6, #4]
d0054fc8:	ab02      	add	r3, sp, #8
d0054fca:	f896 c005 	ldrb.w	ip, [r6, #5]
d0054fce:	f896 e006 	ldrb.w	lr, [r6, #6]
d0054fd2:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0054fd6:	f896 c007 	ldrb.w	ip, [r6, #7]
d0054fda:	f10d 0107 	add.w	r1, sp, #7
d0054fde:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0054fe2:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0054fe6:	683f      	ldr	r7, [r7, #0]
d0054fe8:	68bf      	ldr	r7, [r7, #8]
d0054fea:	47b8      	blx	r7
d0054fec:	2800      	cmp	r0, #0
d0054fee:	f47f af40 	bne.w	d0054e72 <loadMeshSB3D+0x1b6>
d0054ff2:	9b02      	ldr	r3, [sp, #8]
d0054ff4:	2b01      	cmp	r3, #1
d0054ff6:	f47f af3c 	bne.w	d0054e72 <loadMeshSB3D+0x1b6>
d0054ffa:	f8dd c01c 	ldr.w	ip, [sp, #28]
d0054ffe:	9b05      	ldr	r3, [sp, #20]
d0055000:	459c      	cmp	ip, r3
d0055002:	f4bf af36 	bcs.w	d0054e72 <loadMeshSB3D+0x1b6>
d0055006:	9f08      	ldr	r7, [sp, #32]
d0055008:	42bb      	cmp	r3, r7
d005500a:	f67f af32 	bls.w	d0054e72 <loadMeshSB3D+0x1b6>
d005500e:	9909      	ldr	r1, [sp, #36]	; 0x24
d0055010:	428b      	cmp	r3, r1
d0055012:	f67f af2e 	bls.w	d0054e72 <loadMeshSB3D+0x1b6>
d0055016:	6922      	ldr	r2, [r4, #16]
d0055018:	ea4f 1e05 	mov.w	lr, r5, lsl #4
d005501c:	4603      	mov	r3, r0
d005501e:	9806      	ldr	r0, [sp, #24]
d0055020:	f842 c00e 	str.w	ip, [r2, lr]
d0055024:	eb02 1205 	add.w	r2, r2, r5, lsl #4
d0055028:	f89d c004 	ldrb.w	ip, [sp, #4]
d005502c:	3501      	adds	r5, #1
d005502e:	f89d e005 	ldrb.w	lr, [sp, #5]
d0055032:	f36c 0307 	bfi	r3, ip, #0, #8
d0055036:	f89d c006 	ldrb.w	ip, [sp, #6]
d005503a:	6057      	str	r7, [r2, #4]
d005503c:	42a8      	cmp	r0, r5
d005503e:	f36e 230f 	bfi	r3, lr, #8, #8
d0055042:	f89d 7007 	ldrb.w	r7, [sp, #7]
d0055046:	6091      	str	r1, [r2, #8]
d0055048:	f36c 4317 	bfi	r3, ip, #16, #8
d005504c:	f367 631f 	bfi	r3, r7, #24, #8
d0055050:	60d3      	str	r3, [r2, #12]
d0055052:	f63f af26 	bhi.w	d0054ea2 <loadMeshSB3D+0x1e6>
d0055056:	2000      	movs	r0, #0
d0055058:	f000 f87c 	bl	d0055154 <fclose>
d005505c:	4620      	mov	r0, r4
d005505e:	f7fc f9f9 	bl	d0051454 <meshComputeBoundsRadius>
d0055062:	4620      	mov	r0, r4
d0055064:	ed84 0a06 	vstr	s0, [r4, #24]
d0055068:	f7f9 fc92 	bl	d004e990 <meshSetDefaultMaterial>
d005506c:	2001      	movs	r0, #1
d005506e:	e707      	b.n	d0054e80 <loadMeshSB3D+0x1c4>

d0055070 <__errno>:
d0055070:	4b01      	ldr	r3, [pc, #4]	; (d0055078 <__errno+0x8>)
d0055072:	6818      	ldr	r0, [r3, #0]
d0055074:	4770      	bx	lr
d0055076:	bf00      	nop
d0055078:	d005a2f4 	.word	0xd005a2f4

d005507c <_fclose_r>:
d005507c:	b570      	push	{r4, r5, r6, lr}
d005507e:	4605      	mov	r5, r0
d0055080:	460c      	mov	r4, r1
d0055082:	b911      	cbnz	r1, d005508a <_fclose_r+0xe>
d0055084:	2600      	movs	r6, #0
d0055086:	4630      	mov	r0, r6
d0055088:	bd70      	pop	{r4, r5, r6, pc}
d005508a:	b118      	cbz	r0, d0055094 <_fclose_r+0x18>
d005508c:	6983      	ldr	r3, [r0, #24]
d005508e:	b90b      	cbnz	r3, d0055094 <_fclose_r+0x18>
d0055090:	f000 f982 	bl	d0055398 <__sinit>
d0055094:	4b2c      	ldr	r3, [pc, #176]	; (d0055148 <_fclose_r+0xcc>)
d0055096:	429c      	cmp	r4, r3
d0055098:	d114      	bne.n	d00550c4 <_fclose_r+0x48>
d005509a:	686c      	ldr	r4, [r5, #4]
d005509c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005509e:	07d8      	lsls	r0, r3, #31
d00550a0:	d405      	bmi.n	d00550ae <_fclose_r+0x32>
d00550a2:	89a3      	ldrh	r3, [r4, #12]
d00550a4:	0599      	lsls	r1, r3, #22
d00550a6:	d402      	bmi.n	d00550ae <_fclose_r+0x32>
d00550a8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00550aa:	f000 fa14 	bl	d00554d6 <__retarget_lock_acquire_recursive>
d00550ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00550b2:	b98b      	cbnz	r3, d00550d8 <_fclose_r+0x5c>
d00550b4:	6e66      	ldr	r6, [r4, #100]	; 0x64
d00550b6:	f016 0601 	ands.w	r6, r6, #1
d00550ba:	d1e3      	bne.n	d0055084 <_fclose_r+0x8>
d00550bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00550be:	f000 fa0b 	bl	d00554d8 <__retarget_lock_release_recursive>
d00550c2:	e7e0      	b.n	d0055086 <_fclose_r+0xa>
d00550c4:	4b21      	ldr	r3, [pc, #132]	; (d005514c <_fclose_r+0xd0>)
d00550c6:	429c      	cmp	r4, r3
d00550c8:	d101      	bne.n	d00550ce <_fclose_r+0x52>
d00550ca:	68ac      	ldr	r4, [r5, #8]
d00550cc:	e7e6      	b.n	d005509c <_fclose_r+0x20>
d00550ce:	4b20      	ldr	r3, [pc, #128]	; (d0055150 <_fclose_r+0xd4>)
d00550d0:	429c      	cmp	r4, r3
d00550d2:	bf08      	it	eq
d00550d4:	68ec      	ldreq	r4, [r5, #12]
d00550d6:	e7e1      	b.n	d005509c <_fclose_r+0x20>
d00550d8:	4621      	mov	r1, r4
d00550da:	4628      	mov	r0, r5
d00550dc:	f000 f842 	bl	d0055164 <__sflush_r>
d00550e0:	6b23      	ldr	r3, [r4, #48]	; 0x30
d00550e2:	4606      	mov	r6, r0
d00550e4:	b133      	cbz	r3, d00550f4 <_fclose_r+0x78>
d00550e6:	6a21      	ldr	r1, [r4, #32]
d00550e8:	4628      	mov	r0, r5
d00550ea:	4798      	blx	r3
d00550ec:	2800      	cmp	r0, #0
d00550ee:	bfb8      	it	lt
d00550f0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d00550f4:	89a3      	ldrh	r3, [r4, #12]
d00550f6:	061a      	lsls	r2, r3, #24
d00550f8:	d503      	bpl.n	d0055102 <_fclose_r+0x86>
d00550fa:	6921      	ldr	r1, [r4, #16]
d00550fc:	4628      	mov	r0, r5
d00550fe:	f000 fa21 	bl	d0055544 <_free_r>
d0055102:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0055104:	b141      	cbz	r1, d0055118 <_fclose_r+0x9c>
d0055106:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005510a:	4299      	cmp	r1, r3
d005510c:	d002      	beq.n	d0055114 <_fclose_r+0x98>
d005510e:	4628      	mov	r0, r5
d0055110:	f000 fa18 	bl	d0055544 <_free_r>
d0055114:	2300      	movs	r3, #0
d0055116:	6363      	str	r3, [r4, #52]	; 0x34
d0055118:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d005511a:	b121      	cbz	r1, d0055126 <_fclose_r+0xaa>
d005511c:	4628      	mov	r0, r5
d005511e:	f000 fa11 	bl	d0055544 <_free_r>
d0055122:	2300      	movs	r3, #0
d0055124:	64a3      	str	r3, [r4, #72]	; 0x48
d0055126:	f000 f91f 	bl	d0055368 <__sfp_lock_acquire>
d005512a:	2300      	movs	r3, #0
d005512c:	81a3      	strh	r3, [r4, #12]
d005512e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0055130:	07db      	lsls	r3, r3, #31
d0055132:	d402      	bmi.n	d005513a <_fclose_r+0xbe>
d0055134:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055136:	f000 f9cf 	bl	d00554d8 <__retarget_lock_release_recursive>
d005513a:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005513c:	f000 f9ca 	bl	d00554d4 <__retarget_lock_close_recursive>
d0055140:	f000 f918 	bl	d0055374 <__sfp_lock_release>
d0055144:	e79f      	b.n	d0055086 <_fclose_r+0xa>
d0055146:	bf00      	nop
d0055148:	d0057988 	.word	0xd0057988
d005514c:	d00579a8 	.word	0xd00579a8
d0055150:	d0057968 	.word	0xd0057968

d0055154 <fclose>:
d0055154:	4b02      	ldr	r3, [pc, #8]	; (d0055160 <fclose+0xc>)
d0055156:	4601      	mov	r1, r0
d0055158:	6818      	ldr	r0, [r3, #0]
d005515a:	f7ff bf8f 	b.w	d005507c <_fclose_r>
d005515e:	bf00      	nop
d0055160:	d005a2f4 	.word	0xd005a2f4

d0055164 <__sflush_r>:
d0055164:	898a      	ldrh	r2, [r1, #12]
d0055166:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005516a:	4605      	mov	r5, r0
d005516c:	0710      	lsls	r0, r2, #28
d005516e:	460c      	mov	r4, r1
d0055170:	d458      	bmi.n	d0055224 <__sflush_r+0xc0>
d0055172:	684b      	ldr	r3, [r1, #4]
d0055174:	2b00      	cmp	r3, #0
d0055176:	dc05      	bgt.n	d0055184 <__sflush_r+0x20>
d0055178:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d005517a:	2b00      	cmp	r3, #0
d005517c:	dc02      	bgt.n	d0055184 <__sflush_r+0x20>
d005517e:	2000      	movs	r0, #0
d0055180:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0055184:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0055186:	2e00      	cmp	r6, #0
d0055188:	d0f9      	beq.n	d005517e <__sflush_r+0x1a>
d005518a:	2300      	movs	r3, #0
d005518c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0055190:	682f      	ldr	r7, [r5, #0]
d0055192:	602b      	str	r3, [r5, #0]
d0055194:	d032      	beq.n	d00551fc <__sflush_r+0x98>
d0055196:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0055198:	89a3      	ldrh	r3, [r4, #12]
d005519a:	075a      	lsls	r2, r3, #29
d005519c:	d505      	bpl.n	d00551aa <__sflush_r+0x46>
d005519e:	6863      	ldr	r3, [r4, #4]
d00551a0:	1ac0      	subs	r0, r0, r3
d00551a2:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00551a4:	b10b      	cbz	r3, d00551aa <__sflush_r+0x46>
d00551a6:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00551a8:	1ac0      	subs	r0, r0, r3
d00551aa:	2300      	movs	r3, #0
d00551ac:	4602      	mov	r2, r0
d00551ae:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00551b0:	6a21      	ldr	r1, [r4, #32]
d00551b2:	4628      	mov	r0, r5
d00551b4:	47b0      	blx	r6
d00551b6:	1c43      	adds	r3, r0, #1
d00551b8:	89a3      	ldrh	r3, [r4, #12]
d00551ba:	d106      	bne.n	d00551ca <__sflush_r+0x66>
d00551bc:	6829      	ldr	r1, [r5, #0]
d00551be:	291d      	cmp	r1, #29
d00551c0:	d82c      	bhi.n	d005521c <__sflush_r+0xb8>
d00551c2:	4a2a      	ldr	r2, [pc, #168]	; (d005526c <__sflush_r+0x108>)
d00551c4:	40ca      	lsrs	r2, r1
d00551c6:	07d6      	lsls	r6, r2, #31
d00551c8:	d528      	bpl.n	d005521c <__sflush_r+0xb8>
d00551ca:	2200      	movs	r2, #0
d00551cc:	6062      	str	r2, [r4, #4]
d00551ce:	04d9      	lsls	r1, r3, #19
d00551d0:	6922      	ldr	r2, [r4, #16]
d00551d2:	6022      	str	r2, [r4, #0]
d00551d4:	d504      	bpl.n	d00551e0 <__sflush_r+0x7c>
d00551d6:	1c42      	adds	r2, r0, #1
d00551d8:	d101      	bne.n	d00551de <__sflush_r+0x7a>
d00551da:	682b      	ldr	r3, [r5, #0]
d00551dc:	b903      	cbnz	r3, d00551e0 <__sflush_r+0x7c>
d00551de:	6560      	str	r0, [r4, #84]	; 0x54
d00551e0:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00551e2:	602f      	str	r7, [r5, #0]
d00551e4:	2900      	cmp	r1, #0
d00551e6:	d0ca      	beq.n	d005517e <__sflush_r+0x1a>
d00551e8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00551ec:	4299      	cmp	r1, r3
d00551ee:	d002      	beq.n	d00551f6 <__sflush_r+0x92>
d00551f0:	4628      	mov	r0, r5
d00551f2:	f000 f9a7 	bl	d0055544 <_free_r>
d00551f6:	2000      	movs	r0, #0
d00551f8:	6360      	str	r0, [r4, #52]	; 0x34
d00551fa:	e7c1      	b.n	d0055180 <__sflush_r+0x1c>
d00551fc:	6a21      	ldr	r1, [r4, #32]
d00551fe:	2301      	movs	r3, #1
d0055200:	4628      	mov	r0, r5
d0055202:	47b0      	blx	r6
d0055204:	1c41      	adds	r1, r0, #1
d0055206:	d1c7      	bne.n	d0055198 <__sflush_r+0x34>
d0055208:	682b      	ldr	r3, [r5, #0]
d005520a:	2b00      	cmp	r3, #0
d005520c:	d0c4      	beq.n	d0055198 <__sflush_r+0x34>
d005520e:	2b1d      	cmp	r3, #29
d0055210:	d001      	beq.n	d0055216 <__sflush_r+0xb2>
d0055212:	2b16      	cmp	r3, #22
d0055214:	d101      	bne.n	d005521a <__sflush_r+0xb6>
d0055216:	602f      	str	r7, [r5, #0]
d0055218:	e7b1      	b.n	d005517e <__sflush_r+0x1a>
d005521a:	89a3      	ldrh	r3, [r4, #12]
d005521c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055220:	81a3      	strh	r3, [r4, #12]
d0055222:	e7ad      	b.n	d0055180 <__sflush_r+0x1c>
d0055224:	690f      	ldr	r7, [r1, #16]
d0055226:	2f00      	cmp	r7, #0
d0055228:	d0a9      	beq.n	d005517e <__sflush_r+0x1a>
d005522a:	0793      	lsls	r3, r2, #30
d005522c:	680e      	ldr	r6, [r1, #0]
d005522e:	bf08      	it	eq
d0055230:	694b      	ldreq	r3, [r1, #20]
d0055232:	600f      	str	r7, [r1, #0]
d0055234:	bf18      	it	ne
d0055236:	2300      	movne	r3, #0
d0055238:	eba6 0807 	sub.w	r8, r6, r7
d005523c:	608b      	str	r3, [r1, #8]
d005523e:	f1b8 0f00 	cmp.w	r8, #0
d0055242:	dd9c      	ble.n	d005517e <__sflush_r+0x1a>
d0055244:	6a21      	ldr	r1, [r4, #32]
d0055246:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0055248:	4643      	mov	r3, r8
d005524a:	463a      	mov	r2, r7
d005524c:	4628      	mov	r0, r5
d005524e:	47b0      	blx	r6
d0055250:	2800      	cmp	r0, #0
d0055252:	dc06      	bgt.n	d0055262 <__sflush_r+0xfe>
d0055254:	89a3      	ldrh	r3, [r4, #12]
d0055256:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d005525a:	81a3      	strh	r3, [r4, #12]
d005525c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055260:	e78e      	b.n	d0055180 <__sflush_r+0x1c>
d0055262:	4407      	add	r7, r0
d0055264:	eba8 0800 	sub.w	r8, r8, r0
d0055268:	e7e9      	b.n	d005523e <__sflush_r+0xda>
d005526a:	bf00      	nop
d005526c:	20400001 	.word	0x20400001

d0055270 <_fflush_r>:
d0055270:	b538      	push	{r3, r4, r5, lr}
d0055272:	690b      	ldr	r3, [r1, #16]
d0055274:	4605      	mov	r5, r0
d0055276:	460c      	mov	r4, r1
d0055278:	b913      	cbnz	r3, d0055280 <_fflush_r+0x10>
d005527a:	2500      	movs	r5, #0
d005527c:	4628      	mov	r0, r5
d005527e:	bd38      	pop	{r3, r4, r5, pc}
d0055280:	b118      	cbz	r0, d005528a <_fflush_r+0x1a>
d0055282:	6983      	ldr	r3, [r0, #24]
d0055284:	b90b      	cbnz	r3, d005528a <_fflush_r+0x1a>
d0055286:	f000 f887 	bl	d0055398 <__sinit>
d005528a:	4b14      	ldr	r3, [pc, #80]	; (d00552dc <_fflush_r+0x6c>)
d005528c:	429c      	cmp	r4, r3
d005528e:	d11b      	bne.n	d00552c8 <_fflush_r+0x58>
d0055290:	686c      	ldr	r4, [r5, #4]
d0055292:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055296:	2b00      	cmp	r3, #0
d0055298:	d0ef      	beq.n	d005527a <_fflush_r+0xa>
d005529a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d005529c:	07d0      	lsls	r0, r2, #31
d005529e:	d404      	bmi.n	d00552aa <_fflush_r+0x3a>
d00552a0:	0599      	lsls	r1, r3, #22
d00552a2:	d402      	bmi.n	d00552aa <_fflush_r+0x3a>
d00552a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00552a6:	f000 f916 	bl	d00554d6 <__retarget_lock_acquire_recursive>
d00552aa:	4628      	mov	r0, r5
d00552ac:	4621      	mov	r1, r4
d00552ae:	f7ff ff59 	bl	d0055164 <__sflush_r>
d00552b2:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00552b4:	07da      	lsls	r2, r3, #31
d00552b6:	4605      	mov	r5, r0
d00552b8:	d4e0      	bmi.n	d005527c <_fflush_r+0xc>
d00552ba:	89a3      	ldrh	r3, [r4, #12]
d00552bc:	059b      	lsls	r3, r3, #22
d00552be:	d4dd      	bmi.n	d005527c <_fflush_r+0xc>
d00552c0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00552c2:	f000 f909 	bl	d00554d8 <__retarget_lock_release_recursive>
d00552c6:	e7d9      	b.n	d005527c <_fflush_r+0xc>
d00552c8:	4b05      	ldr	r3, [pc, #20]	; (d00552e0 <_fflush_r+0x70>)
d00552ca:	429c      	cmp	r4, r3
d00552cc:	d101      	bne.n	d00552d2 <_fflush_r+0x62>
d00552ce:	68ac      	ldr	r4, [r5, #8]
d00552d0:	e7df      	b.n	d0055292 <_fflush_r+0x22>
d00552d2:	4b04      	ldr	r3, [pc, #16]	; (d00552e4 <_fflush_r+0x74>)
d00552d4:	429c      	cmp	r4, r3
d00552d6:	bf08      	it	eq
d00552d8:	68ec      	ldreq	r4, [r5, #12]
d00552da:	e7da      	b.n	d0055292 <_fflush_r+0x22>
d00552dc:	d0057988 	.word	0xd0057988
d00552e0:	d00579a8 	.word	0xd00579a8
d00552e4:	d0057968 	.word	0xd0057968

d00552e8 <std>:
d00552e8:	2300      	movs	r3, #0
d00552ea:	b510      	push	{r4, lr}
d00552ec:	4604      	mov	r4, r0
d00552ee:	e9c0 3300 	strd	r3, r3, [r0]
d00552f2:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00552f6:	6083      	str	r3, [r0, #8]
d00552f8:	8181      	strh	r1, [r0, #12]
d00552fa:	6643      	str	r3, [r0, #100]	; 0x64
d00552fc:	81c2      	strh	r2, [r0, #14]
d00552fe:	6183      	str	r3, [r0, #24]
d0055300:	4619      	mov	r1, r3
d0055302:	2208      	movs	r2, #8
d0055304:	305c      	adds	r0, #92	; 0x5c
d0055306:	f000 f915 	bl	d0055534 <memset>
d005530a:	4b05      	ldr	r3, [pc, #20]	; (d0055320 <std+0x38>)
d005530c:	6263      	str	r3, [r4, #36]	; 0x24
d005530e:	4b05      	ldr	r3, [pc, #20]	; (d0055324 <std+0x3c>)
d0055310:	62a3      	str	r3, [r4, #40]	; 0x28
d0055312:	4b05      	ldr	r3, [pc, #20]	; (d0055328 <std+0x40>)
d0055314:	62e3      	str	r3, [r4, #44]	; 0x2c
d0055316:	4b05      	ldr	r3, [pc, #20]	; (d005532c <std+0x44>)
d0055318:	6224      	str	r4, [r4, #32]
d005531a:	6323      	str	r3, [r4, #48]	; 0x30
d005531c:	bd10      	pop	{r4, pc}
d005531e:	bf00      	nop
d0055320:	d00558f5 	.word	0xd00558f5
d0055324:	d0055917 	.word	0xd0055917
d0055328:	d005594f 	.word	0xd005594f
d005532c:	d0055973 	.word	0xd0055973

d0055330 <_cleanup_r>:
d0055330:	4901      	ldr	r1, [pc, #4]	; (d0055338 <_cleanup_r+0x8>)
d0055332:	f000 b8af 	b.w	d0055494 <_fwalk_reent>
d0055336:	bf00      	nop
d0055338:	d0055271 	.word	0xd0055271

d005533c <__sfmoreglue>:
d005533c:	b570      	push	{r4, r5, r6, lr}
d005533e:	1e4a      	subs	r2, r1, #1
d0055340:	2568      	movs	r5, #104	; 0x68
d0055342:	4355      	muls	r5, r2
d0055344:	460e      	mov	r6, r1
d0055346:	f105 0174 	add.w	r1, r5, #116	; 0x74
d005534a:	f000 f94b 	bl	d00555e4 <_malloc_r>
d005534e:	4604      	mov	r4, r0
d0055350:	b140      	cbz	r0, d0055364 <__sfmoreglue+0x28>
d0055352:	2100      	movs	r1, #0
d0055354:	e9c0 1600 	strd	r1, r6, [r0]
d0055358:	300c      	adds	r0, #12
d005535a:	60a0      	str	r0, [r4, #8]
d005535c:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0055360:	f000 f8e8 	bl	d0055534 <memset>
d0055364:	4620      	mov	r0, r4
d0055366:	bd70      	pop	{r4, r5, r6, pc}

d0055368 <__sfp_lock_acquire>:
d0055368:	4801      	ldr	r0, [pc, #4]	; (d0055370 <__sfp_lock_acquire+0x8>)
d005536a:	f000 b8b4 	b.w	d00554d6 <__retarget_lock_acquire_recursive>
d005536e:	bf00      	nop
d0055370:	d00fca9c 	.word	0xd00fca9c

d0055374 <__sfp_lock_release>:
d0055374:	4801      	ldr	r0, [pc, #4]	; (d005537c <__sfp_lock_release+0x8>)
d0055376:	f000 b8af 	b.w	d00554d8 <__retarget_lock_release_recursive>
d005537a:	bf00      	nop
d005537c:	d00fca9c 	.word	0xd00fca9c

d0055380 <__sinit_lock_acquire>:
d0055380:	4801      	ldr	r0, [pc, #4]	; (d0055388 <__sinit_lock_acquire+0x8>)
d0055382:	f000 b8a8 	b.w	d00554d6 <__retarget_lock_acquire_recursive>
d0055386:	bf00      	nop
d0055388:	d00fca97 	.word	0xd00fca97

d005538c <__sinit_lock_release>:
d005538c:	4801      	ldr	r0, [pc, #4]	; (d0055394 <__sinit_lock_release+0x8>)
d005538e:	f000 b8a3 	b.w	d00554d8 <__retarget_lock_release_recursive>
d0055392:	bf00      	nop
d0055394:	d00fca97 	.word	0xd00fca97

d0055398 <__sinit>:
d0055398:	b510      	push	{r4, lr}
d005539a:	4604      	mov	r4, r0
d005539c:	f7ff fff0 	bl	d0055380 <__sinit_lock_acquire>
d00553a0:	69a3      	ldr	r3, [r4, #24]
d00553a2:	b11b      	cbz	r3, d00553ac <__sinit+0x14>
d00553a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00553a8:	f7ff bff0 	b.w	d005538c <__sinit_lock_release>
d00553ac:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00553b0:	6523      	str	r3, [r4, #80]	; 0x50
d00553b2:	4b13      	ldr	r3, [pc, #76]	; (d0055400 <__sinit+0x68>)
d00553b4:	4a13      	ldr	r2, [pc, #76]	; (d0055404 <__sinit+0x6c>)
d00553b6:	681b      	ldr	r3, [r3, #0]
d00553b8:	62a2      	str	r2, [r4, #40]	; 0x28
d00553ba:	42a3      	cmp	r3, r4
d00553bc:	bf04      	itt	eq
d00553be:	2301      	moveq	r3, #1
d00553c0:	61a3      	streq	r3, [r4, #24]
d00553c2:	4620      	mov	r0, r4
d00553c4:	f000 f820 	bl	d0055408 <__sfp>
d00553c8:	6060      	str	r0, [r4, #4]
d00553ca:	4620      	mov	r0, r4
d00553cc:	f000 f81c 	bl	d0055408 <__sfp>
d00553d0:	60a0      	str	r0, [r4, #8]
d00553d2:	4620      	mov	r0, r4
d00553d4:	f000 f818 	bl	d0055408 <__sfp>
d00553d8:	2200      	movs	r2, #0
d00553da:	60e0      	str	r0, [r4, #12]
d00553dc:	2104      	movs	r1, #4
d00553de:	6860      	ldr	r0, [r4, #4]
d00553e0:	f7ff ff82 	bl	d00552e8 <std>
d00553e4:	68a0      	ldr	r0, [r4, #8]
d00553e6:	2201      	movs	r2, #1
d00553e8:	2109      	movs	r1, #9
d00553ea:	f7ff ff7d 	bl	d00552e8 <std>
d00553ee:	68e0      	ldr	r0, [r4, #12]
d00553f0:	2202      	movs	r2, #2
d00553f2:	2112      	movs	r1, #18
d00553f4:	f7ff ff78 	bl	d00552e8 <std>
d00553f8:	2301      	movs	r3, #1
d00553fa:	61a3      	str	r3, [r4, #24]
d00553fc:	e7d2      	b.n	d00553a4 <__sinit+0xc>
d00553fe:	bf00      	nop
d0055400:	d00579c8 	.word	0xd00579c8
d0055404:	d0055331 	.word	0xd0055331

d0055408 <__sfp>:
d0055408:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005540a:	4607      	mov	r7, r0
d005540c:	f7ff ffac 	bl	d0055368 <__sfp_lock_acquire>
d0055410:	4b1e      	ldr	r3, [pc, #120]	; (d005548c <__sfp+0x84>)
d0055412:	681e      	ldr	r6, [r3, #0]
d0055414:	69b3      	ldr	r3, [r6, #24]
d0055416:	b913      	cbnz	r3, d005541e <__sfp+0x16>
d0055418:	4630      	mov	r0, r6
d005541a:	f7ff ffbd 	bl	d0055398 <__sinit>
d005541e:	3648      	adds	r6, #72	; 0x48
d0055420:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0055424:	3b01      	subs	r3, #1
d0055426:	d503      	bpl.n	d0055430 <__sfp+0x28>
d0055428:	6833      	ldr	r3, [r6, #0]
d005542a:	b30b      	cbz	r3, d0055470 <__sfp+0x68>
d005542c:	6836      	ldr	r6, [r6, #0]
d005542e:	e7f7      	b.n	d0055420 <__sfp+0x18>
d0055430:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0055434:	b9d5      	cbnz	r5, d005546c <__sfp+0x64>
d0055436:	4b16      	ldr	r3, [pc, #88]	; (d0055490 <__sfp+0x88>)
d0055438:	60e3      	str	r3, [r4, #12]
d005543a:	f104 0058 	add.w	r0, r4, #88	; 0x58
d005543e:	6665      	str	r5, [r4, #100]	; 0x64
d0055440:	f000 f847 	bl	d00554d2 <__retarget_lock_init_recursive>
d0055444:	f7ff ff96 	bl	d0055374 <__sfp_lock_release>
d0055448:	e9c4 5501 	strd	r5, r5, [r4, #4]
d005544c:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0055450:	6025      	str	r5, [r4, #0]
d0055452:	61a5      	str	r5, [r4, #24]
d0055454:	2208      	movs	r2, #8
d0055456:	4629      	mov	r1, r5
d0055458:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d005545c:	f000 f86a 	bl	d0055534 <memset>
d0055460:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0055464:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0055468:	4620      	mov	r0, r4
d005546a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005546c:	3468      	adds	r4, #104	; 0x68
d005546e:	e7d9      	b.n	d0055424 <__sfp+0x1c>
d0055470:	2104      	movs	r1, #4
d0055472:	4638      	mov	r0, r7
d0055474:	f7ff ff62 	bl	d005533c <__sfmoreglue>
d0055478:	4604      	mov	r4, r0
d005547a:	6030      	str	r0, [r6, #0]
d005547c:	2800      	cmp	r0, #0
d005547e:	d1d5      	bne.n	d005542c <__sfp+0x24>
d0055480:	f7ff ff78 	bl	d0055374 <__sfp_lock_release>
d0055484:	230c      	movs	r3, #12
d0055486:	603b      	str	r3, [r7, #0]
d0055488:	e7ee      	b.n	d0055468 <__sfp+0x60>
d005548a:	bf00      	nop
d005548c:	d00579c8 	.word	0xd00579c8
d0055490:	ffff0001 	.word	0xffff0001

d0055494 <_fwalk_reent>:
d0055494:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0055498:	4606      	mov	r6, r0
d005549a:	4688      	mov	r8, r1
d005549c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d00554a0:	2700      	movs	r7, #0
d00554a2:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00554a6:	f1b9 0901 	subs.w	r9, r9, #1
d00554aa:	d505      	bpl.n	d00554b8 <_fwalk_reent+0x24>
d00554ac:	6824      	ldr	r4, [r4, #0]
d00554ae:	2c00      	cmp	r4, #0
d00554b0:	d1f7      	bne.n	d00554a2 <_fwalk_reent+0xe>
d00554b2:	4638      	mov	r0, r7
d00554b4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00554b8:	89ab      	ldrh	r3, [r5, #12]
d00554ba:	2b01      	cmp	r3, #1
d00554bc:	d907      	bls.n	d00554ce <_fwalk_reent+0x3a>
d00554be:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00554c2:	3301      	adds	r3, #1
d00554c4:	d003      	beq.n	d00554ce <_fwalk_reent+0x3a>
d00554c6:	4629      	mov	r1, r5
d00554c8:	4630      	mov	r0, r6
d00554ca:	47c0      	blx	r8
d00554cc:	4307      	orrs	r7, r0
d00554ce:	3568      	adds	r5, #104	; 0x68
d00554d0:	e7e9      	b.n	d00554a6 <_fwalk_reent+0x12>

d00554d2 <__retarget_lock_init_recursive>:
d00554d2:	4770      	bx	lr

d00554d4 <__retarget_lock_close_recursive>:
d00554d4:	4770      	bx	lr

d00554d6 <__retarget_lock_acquire_recursive>:
d00554d6:	4770      	bx	lr

d00554d8 <__retarget_lock_release_recursive>:
d00554d8:	4770      	bx	lr
	...

d00554dc <malloc>:
d00554dc:	4b02      	ldr	r3, [pc, #8]	; (d00554e8 <malloc+0xc>)
d00554de:	4601      	mov	r1, r0
d00554e0:	6818      	ldr	r0, [r3, #0]
d00554e2:	f000 b87f 	b.w	d00555e4 <_malloc_r>
d00554e6:	bf00      	nop
d00554e8:	d005a2f4 	.word	0xd005a2f4

d00554ec <free>:
d00554ec:	4b02      	ldr	r3, [pc, #8]	; (d00554f8 <free+0xc>)
d00554ee:	4601      	mov	r1, r0
d00554f0:	6818      	ldr	r0, [r3, #0]
d00554f2:	f000 b827 	b.w	d0055544 <_free_r>
d00554f6:	bf00      	nop
d00554f8:	d005a2f4 	.word	0xd005a2f4

d00554fc <memcmp>:
d00554fc:	b530      	push	{r4, r5, lr}
d00554fe:	3901      	subs	r1, #1
d0055500:	2400      	movs	r4, #0
d0055502:	42a2      	cmp	r2, r4
d0055504:	d101      	bne.n	d005550a <memcmp+0xe>
d0055506:	2000      	movs	r0, #0
d0055508:	e005      	b.n	d0055516 <memcmp+0x1a>
d005550a:	5d03      	ldrb	r3, [r0, r4]
d005550c:	3401      	adds	r4, #1
d005550e:	5d0d      	ldrb	r5, [r1, r4]
d0055510:	42ab      	cmp	r3, r5
d0055512:	d0f6      	beq.n	d0055502 <memcmp+0x6>
d0055514:	1b58      	subs	r0, r3, r5
d0055516:	bd30      	pop	{r4, r5, pc}

d0055518 <memcpy>:
d0055518:	440a      	add	r2, r1
d005551a:	4291      	cmp	r1, r2
d005551c:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0055520:	d100      	bne.n	d0055524 <memcpy+0xc>
d0055522:	4770      	bx	lr
d0055524:	b510      	push	{r4, lr}
d0055526:	f811 4b01 	ldrb.w	r4, [r1], #1
d005552a:	f803 4f01 	strb.w	r4, [r3, #1]!
d005552e:	4291      	cmp	r1, r2
d0055530:	d1f9      	bne.n	d0055526 <memcpy+0xe>
d0055532:	bd10      	pop	{r4, pc}

d0055534 <memset>:
d0055534:	4402      	add	r2, r0
d0055536:	4603      	mov	r3, r0
d0055538:	4293      	cmp	r3, r2
d005553a:	d100      	bne.n	d005553e <memset+0xa>
d005553c:	4770      	bx	lr
d005553e:	f803 1b01 	strb.w	r1, [r3], #1
d0055542:	e7f9      	b.n	d0055538 <memset+0x4>

d0055544 <_free_r>:
d0055544:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0055546:	2900      	cmp	r1, #0
d0055548:	d048      	beq.n	d00555dc <_free_r+0x98>
d005554a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d005554e:	9001      	str	r0, [sp, #4]
d0055550:	2b00      	cmp	r3, #0
d0055552:	f1a1 0404 	sub.w	r4, r1, #4
d0055556:	bfb8      	it	lt
d0055558:	18e4      	addlt	r4, r4, r3
d005555a:	f000 fac5 	bl	d0055ae8 <__malloc_lock>
d005555e:	4a20      	ldr	r2, [pc, #128]	; (d00555e0 <_free_r+0x9c>)
d0055560:	9801      	ldr	r0, [sp, #4]
d0055562:	6813      	ldr	r3, [r2, #0]
d0055564:	4615      	mov	r5, r2
d0055566:	b933      	cbnz	r3, d0055576 <_free_r+0x32>
d0055568:	6063      	str	r3, [r4, #4]
d005556a:	6014      	str	r4, [r2, #0]
d005556c:	b003      	add	sp, #12
d005556e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0055572:	f000 babf 	b.w	d0055af4 <__malloc_unlock>
d0055576:	42a3      	cmp	r3, r4
d0055578:	d90b      	bls.n	d0055592 <_free_r+0x4e>
d005557a:	6821      	ldr	r1, [r4, #0]
d005557c:	1862      	adds	r2, r4, r1
d005557e:	4293      	cmp	r3, r2
d0055580:	bf04      	itt	eq
d0055582:	681a      	ldreq	r2, [r3, #0]
d0055584:	685b      	ldreq	r3, [r3, #4]
d0055586:	6063      	str	r3, [r4, #4]
d0055588:	bf04      	itt	eq
d005558a:	1852      	addeq	r2, r2, r1
d005558c:	6022      	streq	r2, [r4, #0]
d005558e:	602c      	str	r4, [r5, #0]
d0055590:	e7ec      	b.n	d005556c <_free_r+0x28>
d0055592:	461a      	mov	r2, r3
d0055594:	685b      	ldr	r3, [r3, #4]
d0055596:	b10b      	cbz	r3, d005559c <_free_r+0x58>
d0055598:	42a3      	cmp	r3, r4
d005559a:	d9fa      	bls.n	d0055592 <_free_r+0x4e>
d005559c:	6811      	ldr	r1, [r2, #0]
d005559e:	1855      	adds	r5, r2, r1
d00555a0:	42a5      	cmp	r5, r4
d00555a2:	d10b      	bne.n	d00555bc <_free_r+0x78>
d00555a4:	6824      	ldr	r4, [r4, #0]
d00555a6:	4421      	add	r1, r4
d00555a8:	1854      	adds	r4, r2, r1
d00555aa:	42a3      	cmp	r3, r4
d00555ac:	6011      	str	r1, [r2, #0]
d00555ae:	d1dd      	bne.n	d005556c <_free_r+0x28>
d00555b0:	681c      	ldr	r4, [r3, #0]
d00555b2:	685b      	ldr	r3, [r3, #4]
d00555b4:	6053      	str	r3, [r2, #4]
d00555b6:	4421      	add	r1, r4
d00555b8:	6011      	str	r1, [r2, #0]
d00555ba:	e7d7      	b.n	d005556c <_free_r+0x28>
d00555bc:	d902      	bls.n	d00555c4 <_free_r+0x80>
d00555be:	230c      	movs	r3, #12
d00555c0:	6003      	str	r3, [r0, #0]
d00555c2:	e7d3      	b.n	d005556c <_free_r+0x28>
d00555c4:	6825      	ldr	r5, [r4, #0]
d00555c6:	1961      	adds	r1, r4, r5
d00555c8:	428b      	cmp	r3, r1
d00555ca:	bf04      	itt	eq
d00555cc:	6819      	ldreq	r1, [r3, #0]
d00555ce:	685b      	ldreq	r3, [r3, #4]
d00555d0:	6063      	str	r3, [r4, #4]
d00555d2:	bf04      	itt	eq
d00555d4:	1949      	addeq	r1, r1, r5
d00555d6:	6021      	streq	r1, [r4, #0]
d00555d8:	6054      	str	r4, [r2, #4]
d00555da:	e7c7      	b.n	d005556c <_free_r+0x28>
d00555dc:	b003      	add	sp, #12
d00555de:	bd30      	pop	{r4, r5, pc}
d00555e0:	d00f4800 	.word	0xd00f4800

d00555e4 <_malloc_r>:
d00555e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00555e6:	1ccd      	adds	r5, r1, #3
d00555e8:	f025 0503 	bic.w	r5, r5, #3
d00555ec:	3508      	adds	r5, #8
d00555ee:	2d0c      	cmp	r5, #12
d00555f0:	bf38      	it	cc
d00555f2:	250c      	movcc	r5, #12
d00555f4:	2d00      	cmp	r5, #0
d00555f6:	4606      	mov	r6, r0
d00555f8:	db01      	blt.n	d00555fe <_malloc_r+0x1a>
d00555fa:	42a9      	cmp	r1, r5
d00555fc:	d903      	bls.n	d0055606 <_malloc_r+0x22>
d00555fe:	230c      	movs	r3, #12
d0055600:	6033      	str	r3, [r6, #0]
d0055602:	2000      	movs	r0, #0
d0055604:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0055606:	f000 fa6f 	bl	d0055ae8 <__malloc_lock>
d005560a:	4921      	ldr	r1, [pc, #132]	; (d0055690 <_malloc_r+0xac>)
d005560c:	680a      	ldr	r2, [r1, #0]
d005560e:	4614      	mov	r4, r2
d0055610:	b99c      	cbnz	r4, d005563a <_malloc_r+0x56>
d0055612:	4f20      	ldr	r7, [pc, #128]	; (d0055694 <_malloc_r+0xb0>)
d0055614:	683b      	ldr	r3, [r7, #0]
d0055616:	b923      	cbnz	r3, d0055622 <_malloc_r+0x3e>
d0055618:	4621      	mov	r1, r4
d005561a:	4630      	mov	r0, r6
d005561c:	f7f5 fd60 	bl	d004b0e0 <_sbrk_r>
d0055620:	6038      	str	r0, [r7, #0]
d0055622:	4629      	mov	r1, r5
d0055624:	4630      	mov	r0, r6
d0055626:	f7f5 fd5b 	bl	d004b0e0 <_sbrk_r>
d005562a:	1c43      	adds	r3, r0, #1
d005562c:	d123      	bne.n	d0055676 <_malloc_r+0x92>
d005562e:	230c      	movs	r3, #12
d0055630:	6033      	str	r3, [r6, #0]
d0055632:	4630      	mov	r0, r6
d0055634:	f000 fa5e 	bl	d0055af4 <__malloc_unlock>
d0055638:	e7e3      	b.n	d0055602 <_malloc_r+0x1e>
d005563a:	6823      	ldr	r3, [r4, #0]
d005563c:	1b5b      	subs	r3, r3, r5
d005563e:	d417      	bmi.n	d0055670 <_malloc_r+0x8c>
d0055640:	2b0b      	cmp	r3, #11
d0055642:	d903      	bls.n	d005564c <_malloc_r+0x68>
d0055644:	6023      	str	r3, [r4, #0]
d0055646:	441c      	add	r4, r3
d0055648:	6025      	str	r5, [r4, #0]
d005564a:	e004      	b.n	d0055656 <_malloc_r+0x72>
d005564c:	6863      	ldr	r3, [r4, #4]
d005564e:	42a2      	cmp	r2, r4
d0055650:	bf0c      	ite	eq
d0055652:	600b      	streq	r3, [r1, #0]
d0055654:	6053      	strne	r3, [r2, #4]
d0055656:	4630      	mov	r0, r6
d0055658:	f000 fa4c 	bl	d0055af4 <__malloc_unlock>
d005565c:	f104 000b 	add.w	r0, r4, #11
d0055660:	1d23      	adds	r3, r4, #4
d0055662:	f020 0007 	bic.w	r0, r0, #7
d0055666:	1ac2      	subs	r2, r0, r3
d0055668:	d0cc      	beq.n	d0055604 <_malloc_r+0x20>
d005566a:	1a1b      	subs	r3, r3, r0
d005566c:	50a3      	str	r3, [r4, r2]
d005566e:	e7c9      	b.n	d0055604 <_malloc_r+0x20>
d0055670:	4622      	mov	r2, r4
d0055672:	6864      	ldr	r4, [r4, #4]
d0055674:	e7cc      	b.n	d0055610 <_malloc_r+0x2c>
d0055676:	1cc4      	adds	r4, r0, #3
d0055678:	f024 0403 	bic.w	r4, r4, #3
d005567c:	42a0      	cmp	r0, r4
d005567e:	d0e3      	beq.n	d0055648 <_malloc_r+0x64>
d0055680:	1a21      	subs	r1, r4, r0
d0055682:	4630      	mov	r0, r6
d0055684:	f7f5 fd2c 	bl	d004b0e0 <_sbrk_r>
d0055688:	3001      	adds	r0, #1
d005568a:	d1dd      	bne.n	d0055648 <_malloc_r+0x64>
d005568c:	e7cf      	b.n	d005562e <_malloc_r+0x4a>
d005568e:	bf00      	nop
d0055690:	d00f4800 	.word	0xd00f4800
d0055694:	d00f4804 	.word	0xd00f4804

d0055698 <rand>:
d0055698:	4b17      	ldr	r3, [pc, #92]	; (d00556f8 <rand+0x60>)
d005569a:	b510      	push	{r4, lr}
d005569c:	681c      	ldr	r4, [r3, #0]
d005569e:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d00556a0:	b9b3      	cbnz	r3, d00556d0 <rand+0x38>
d00556a2:	2018      	movs	r0, #24
d00556a4:	f7ff ff1a 	bl	d00554dc <malloc>
d00556a8:	63a0      	str	r0, [r4, #56]	; 0x38
d00556aa:	b928      	cbnz	r0, d00556b8 <rand+0x20>
d00556ac:	4602      	mov	r2, r0
d00556ae:	4b13      	ldr	r3, [pc, #76]	; (d00556fc <rand+0x64>)
d00556b0:	4813      	ldr	r0, [pc, #76]	; (d0055700 <rand+0x68>)
d00556b2:	214e      	movs	r1, #78	; 0x4e
d00556b4:	f000 f962 	bl	d005597c <__assert_func>
d00556b8:	4a12      	ldr	r2, [pc, #72]	; (d0055704 <rand+0x6c>)
d00556ba:	4b13      	ldr	r3, [pc, #76]	; (d0055708 <rand+0x70>)
d00556bc:	e9c0 2300 	strd	r2, r3, [r0]
d00556c0:	4b12      	ldr	r3, [pc, #72]	; (d005570c <rand+0x74>)
d00556c2:	6083      	str	r3, [r0, #8]
d00556c4:	230b      	movs	r3, #11
d00556c6:	8183      	strh	r3, [r0, #12]
d00556c8:	2201      	movs	r2, #1
d00556ca:	2300      	movs	r3, #0
d00556cc:	e9c0 2304 	strd	r2, r3, [r0, #16]
d00556d0:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d00556d2:	480f      	ldr	r0, [pc, #60]	; (d0055710 <rand+0x78>)
d00556d4:	690a      	ldr	r2, [r1, #16]
d00556d6:	694b      	ldr	r3, [r1, #20]
d00556d8:	4c0e      	ldr	r4, [pc, #56]	; (d0055714 <rand+0x7c>)
d00556da:	4350      	muls	r0, r2
d00556dc:	fb04 0003 	mla	r0, r4, r3, r0
d00556e0:	fba2 3404 	umull	r3, r4, r2, r4
d00556e4:	1c5a      	adds	r2, r3, #1
d00556e6:	4404      	add	r4, r0
d00556e8:	f144 0000 	adc.w	r0, r4, #0
d00556ec:	e9c1 2004 	strd	r2, r0, [r1, #16]
d00556f0:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d00556f4:	bd10      	pop	{r4, pc}
d00556f6:	bf00      	nop
d00556f8:	d005a2f4 	.word	0xd005a2f4
d00556fc:	d00579cc 	.word	0xd00579cc
d0055700:	d00579e3 	.word	0xd00579e3
d0055704:	abcd330e 	.word	0xabcd330e
d0055708:	e66d1234 	.word	0xe66d1234
d005570c:	0005deec 	.word	0x0005deec
d0055710:	5851f42d 	.word	0x5851f42d
d0055714:	4c957f2d 	.word	0x4c957f2d

d0055718 <setbuf>:
d0055718:	2900      	cmp	r1, #0
d005571a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005571e:	bf0c      	ite	eq
d0055720:	2202      	moveq	r2, #2
d0055722:	2200      	movne	r2, #0
d0055724:	f000 b800 	b.w	d0055728 <setvbuf>

d0055728 <setvbuf>:
d0055728:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d005572c:	461d      	mov	r5, r3
d005572e:	4b5d      	ldr	r3, [pc, #372]	; (d00558a4 <setvbuf+0x17c>)
d0055730:	681f      	ldr	r7, [r3, #0]
d0055732:	4604      	mov	r4, r0
d0055734:	460e      	mov	r6, r1
d0055736:	4690      	mov	r8, r2
d0055738:	b127      	cbz	r7, d0055744 <setvbuf+0x1c>
d005573a:	69bb      	ldr	r3, [r7, #24]
d005573c:	b913      	cbnz	r3, d0055744 <setvbuf+0x1c>
d005573e:	4638      	mov	r0, r7
d0055740:	f7ff fe2a 	bl	d0055398 <__sinit>
d0055744:	4b58      	ldr	r3, [pc, #352]	; (d00558a8 <setvbuf+0x180>)
d0055746:	429c      	cmp	r4, r3
d0055748:	d167      	bne.n	d005581a <setvbuf+0xf2>
d005574a:	687c      	ldr	r4, [r7, #4]
d005574c:	f1b8 0f02 	cmp.w	r8, #2
d0055750:	d006      	beq.n	d0055760 <setvbuf+0x38>
d0055752:	f1b8 0f01 	cmp.w	r8, #1
d0055756:	f200 809f 	bhi.w	d0055898 <setvbuf+0x170>
d005575a:	2d00      	cmp	r5, #0
d005575c:	f2c0 809c 	blt.w	d0055898 <setvbuf+0x170>
d0055760:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0055762:	07db      	lsls	r3, r3, #31
d0055764:	d405      	bmi.n	d0055772 <setvbuf+0x4a>
d0055766:	89a3      	ldrh	r3, [r4, #12]
d0055768:	0598      	lsls	r0, r3, #22
d005576a:	d402      	bmi.n	d0055772 <setvbuf+0x4a>
d005576c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005576e:	f7ff feb2 	bl	d00554d6 <__retarget_lock_acquire_recursive>
d0055772:	4621      	mov	r1, r4
d0055774:	4638      	mov	r0, r7
d0055776:	f7ff fd7b 	bl	d0055270 <_fflush_r>
d005577a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005577c:	b141      	cbz	r1, d0055790 <setvbuf+0x68>
d005577e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0055782:	4299      	cmp	r1, r3
d0055784:	d002      	beq.n	d005578c <setvbuf+0x64>
d0055786:	4638      	mov	r0, r7
d0055788:	f7ff fedc 	bl	d0055544 <_free_r>
d005578c:	2300      	movs	r3, #0
d005578e:	6363      	str	r3, [r4, #52]	; 0x34
d0055790:	2300      	movs	r3, #0
d0055792:	61a3      	str	r3, [r4, #24]
d0055794:	6063      	str	r3, [r4, #4]
d0055796:	89a3      	ldrh	r3, [r4, #12]
d0055798:	0619      	lsls	r1, r3, #24
d005579a:	d503      	bpl.n	d00557a4 <setvbuf+0x7c>
d005579c:	6921      	ldr	r1, [r4, #16]
d005579e:	4638      	mov	r0, r7
d00557a0:	f7ff fed0 	bl	d0055544 <_free_r>
d00557a4:	89a3      	ldrh	r3, [r4, #12]
d00557a6:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00557aa:	f023 0303 	bic.w	r3, r3, #3
d00557ae:	f1b8 0f02 	cmp.w	r8, #2
d00557b2:	81a3      	strh	r3, [r4, #12]
d00557b4:	d06c      	beq.n	d0055890 <setvbuf+0x168>
d00557b6:	ab01      	add	r3, sp, #4
d00557b8:	466a      	mov	r2, sp
d00557ba:	4621      	mov	r1, r4
d00557bc:	4638      	mov	r0, r7
d00557be:	f000 f92f 	bl	d0055a20 <__swhatbuf_r>
d00557c2:	89a3      	ldrh	r3, [r4, #12]
d00557c4:	4318      	orrs	r0, r3
d00557c6:	81a0      	strh	r0, [r4, #12]
d00557c8:	2d00      	cmp	r5, #0
d00557ca:	d130      	bne.n	d005582e <setvbuf+0x106>
d00557cc:	9d00      	ldr	r5, [sp, #0]
d00557ce:	4628      	mov	r0, r5
d00557d0:	f7ff fe84 	bl	d00554dc <malloc>
d00557d4:	4606      	mov	r6, r0
d00557d6:	2800      	cmp	r0, #0
d00557d8:	d155      	bne.n	d0055886 <setvbuf+0x15e>
d00557da:	f8dd 9000 	ldr.w	r9, [sp]
d00557de:	45a9      	cmp	r9, r5
d00557e0:	d14a      	bne.n	d0055878 <setvbuf+0x150>
d00557e2:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00557e6:	2200      	movs	r2, #0
d00557e8:	60a2      	str	r2, [r4, #8]
d00557ea:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00557ee:	6022      	str	r2, [r4, #0]
d00557f0:	6122      	str	r2, [r4, #16]
d00557f2:	2201      	movs	r2, #1
d00557f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00557f8:	6162      	str	r2, [r4, #20]
d00557fa:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00557fc:	f043 0302 	orr.w	r3, r3, #2
d0055800:	07d2      	lsls	r2, r2, #31
d0055802:	81a3      	strh	r3, [r4, #12]
d0055804:	d405      	bmi.n	d0055812 <setvbuf+0xea>
d0055806:	f413 7f00 	tst.w	r3, #512	; 0x200
d005580a:	d102      	bne.n	d0055812 <setvbuf+0xea>
d005580c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005580e:	f7ff fe63 	bl	d00554d8 <__retarget_lock_release_recursive>
d0055812:	4628      	mov	r0, r5
d0055814:	b003      	add	sp, #12
d0055816:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d005581a:	4b24      	ldr	r3, [pc, #144]	; (d00558ac <setvbuf+0x184>)
d005581c:	429c      	cmp	r4, r3
d005581e:	d101      	bne.n	d0055824 <setvbuf+0xfc>
d0055820:	68bc      	ldr	r4, [r7, #8]
d0055822:	e793      	b.n	d005574c <setvbuf+0x24>
d0055824:	4b22      	ldr	r3, [pc, #136]	; (d00558b0 <setvbuf+0x188>)
d0055826:	429c      	cmp	r4, r3
d0055828:	bf08      	it	eq
d005582a:	68fc      	ldreq	r4, [r7, #12]
d005582c:	e78e      	b.n	d005574c <setvbuf+0x24>
d005582e:	2e00      	cmp	r6, #0
d0055830:	d0cd      	beq.n	d00557ce <setvbuf+0xa6>
d0055832:	69bb      	ldr	r3, [r7, #24]
d0055834:	b913      	cbnz	r3, d005583c <setvbuf+0x114>
d0055836:	4638      	mov	r0, r7
d0055838:	f7ff fdae 	bl	d0055398 <__sinit>
d005583c:	f1b8 0f01 	cmp.w	r8, #1
d0055840:	bf08      	it	eq
d0055842:	89a3      	ldrheq	r3, [r4, #12]
d0055844:	6026      	str	r6, [r4, #0]
d0055846:	bf04      	itt	eq
d0055848:	f043 0301 	orreq.w	r3, r3, #1
d005584c:	81a3      	strheq	r3, [r4, #12]
d005584e:	89a2      	ldrh	r2, [r4, #12]
d0055850:	f012 0308 	ands.w	r3, r2, #8
d0055854:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0055858:	d01c      	beq.n	d0055894 <setvbuf+0x16c>
d005585a:	07d3      	lsls	r3, r2, #31
d005585c:	bf41      	itttt	mi
d005585e:	2300      	movmi	r3, #0
d0055860:	426d      	negmi	r5, r5
d0055862:	60a3      	strmi	r3, [r4, #8]
d0055864:	61a5      	strmi	r5, [r4, #24]
d0055866:	bf58      	it	pl
d0055868:	60a5      	strpl	r5, [r4, #8]
d005586a:	6e65      	ldr	r5, [r4, #100]	; 0x64
d005586c:	f015 0501 	ands.w	r5, r5, #1
d0055870:	d115      	bne.n	d005589e <setvbuf+0x176>
d0055872:	f412 7f00 	tst.w	r2, #512	; 0x200
d0055876:	e7c8      	b.n	d005580a <setvbuf+0xe2>
d0055878:	4648      	mov	r0, r9
d005587a:	f7ff fe2f 	bl	d00554dc <malloc>
d005587e:	4606      	mov	r6, r0
d0055880:	2800      	cmp	r0, #0
d0055882:	d0ae      	beq.n	d00557e2 <setvbuf+0xba>
d0055884:	464d      	mov	r5, r9
d0055886:	89a3      	ldrh	r3, [r4, #12]
d0055888:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d005588c:	81a3      	strh	r3, [r4, #12]
d005588e:	e7d0      	b.n	d0055832 <setvbuf+0x10a>
d0055890:	2500      	movs	r5, #0
d0055892:	e7a8      	b.n	d00557e6 <setvbuf+0xbe>
d0055894:	60a3      	str	r3, [r4, #8]
d0055896:	e7e8      	b.n	d005586a <setvbuf+0x142>
d0055898:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d005589c:	e7b9      	b.n	d0055812 <setvbuf+0xea>
d005589e:	2500      	movs	r5, #0
d00558a0:	e7b7      	b.n	d0055812 <setvbuf+0xea>
d00558a2:	bf00      	nop
d00558a4:	d005a2f4 	.word	0xd005a2f4
d00558a8:	d0057988 	.word	0xd0057988
d00558ac:	d00579a8 	.word	0xd00579a8
d00558b0:	d0057968 	.word	0xd0057968

d00558b4 <siprintf>:
d00558b4:	b40e      	push	{r1, r2, r3}
d00558b6:	b500      	push	{lr}
d00558b8:	b09c      	sub	sp, #112	; 0x70
d00558ba:	ab1d      	add	r3, sp, #116	; 0x74
d00558bc:	9002      	str	r0, [sp, #8]
d00558be:	9006      	str	r0, [sp, #24]
d00558c0:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00558c4:	4809      	ldr	r0, [pc, #36]	; (d00558ec <siprintf+0x38>)
d00558c6:	9107      	str	r1, [sp, #28]
d00558c8:	9104      	str	r1, [sp, #16]
d00558ca:	4909      	ldr	r1, [pc, #36]	; (d00558f0 <siprintf+0x3c>)
d00558cc:	f853 2b04 	ldr.w	r2, [r3], #4
d00558d0:	9105      	str	r1, [sp, #20]
d00558d2:	6800      	ldr	r0, [r0, #0]
d00558d4:	9301      	str	r3, [sp, #4]
d00558d6:	a902      	add	r1, sp, #8
d00558d8:	f000 f994 	bl	d0055c04 <_svfiprintf_r>
d00558dc:	9b02      	ldr	r3, [sp, #8]
d00558de:	2200      	movs	r2, #0
d00558e0:	701a      	strb	r2, [r3, #0]
d00558e2:	b01c      	add	sp, #112	; 0x70
d00558e4:	f85d eb04 	ldr.w	lr, [sp], #4
d00558e8:	b003      	add	sp, #12
d00558ea:	4770      	bx	lr
d00558ec:	d005a2f4 	.word	0xd005a2f4
d00558f0:	ffff0208 	.word	0xffff0208

d00558f4 <__sread>:
d00558f4:	b510      	push	{r4, lr}
d00558f6:	460c      	mov	r4, r1
d00558f8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00558fc:	f000 fd70 	bl	d00563e0 <_read_r>
d0055900:	2800      	cmp	r0, #0
d0055902:	bfab      	itete	ge
d0055904:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0055906:	89a3      	ldrhlt	r3, [r4, #12]
d0055908:	181b      	addge	r3, r3, r0
d005590a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d005590e:	bfac      	ite	ge
d0055910:	6563      	strge	r3, [r4, #84]	; 0x54
d0055912:	81a3      	strhlt	r3, [r4, #12]
d0055914:	bd10      	pop	{r4, pc}

d0055916 <__swrite>:
d0055916:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005591a:	461f      	mov	r7, r3
d005591c:	898b      	ldrh	r3, [r1, #12]
d005591e:	05db      	lsls	r3, r3, #23
d0055920:	4605      	mov	r5, r0
d0055922:	460c      	mov	r4, r1
d0055924:	4616      	mov	r6, r2
d0055926:	d505      	bpl.n	d0055934 <__swrite+0x1e>
d0055928:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005592c:	2302      	movs	r3, #2
d005592e:	2200      	movs	r2, #0
d0055930:	f000 f864 	bl	d00559fc <_lseek_r>
d0055934:	89a3      	ldrh	r3, [r4, #12]
d0055936:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d005593a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d005593e:	81a3      	strh	r3, [r4, #12]
d0055940:	4632      	mov	r2, r6
d0055942:	463b      	mov	r3, r7
d0055944:	4628      	mov	r0, r5
d0055946:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d005594a:	f7f5 bb83 	b.w	d004b054 <_write_r>

d005594e <__sseek>:
d005594e:	b510      	push	{r4, lr}
d0055950:	460c      	mov	r4, r1
d0055952:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055956:	f000 f851 	bl	d00559fc <_lseek_r>
d005595a:	1c43      	adds	r3, r0, #1
d005595c:	89a3      	ldrh	r3, [r4, #12]
d005595e:	bf15      	itete	ne
d0055960:	6560      	strne	r0, [r4, #84]	; 0x54
d0055962:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0055966:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d005596a:	81a3      	strheq	r3, [r4, #12]
d005596c:	bf18      	it	ne
d005596e:	81a3      	strhne	r3, [r4, #12]
d0055970:	bd10      	pop	{r4, pc}

d0055972 <__sclose>:
d0055972:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055976:	f000 b81f 	b.w	d00559b8 <_close_r>
	...

d005597c <__assert_func>:
d005597c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d005597e:	4614      	mov	r4, r2
d0055980:	461a      	mov	r2, r3
d0055982:	4b09      	ldr	r3, [pc, #36]	; (d00559a8 <__assert_func+0x2c>)
d0055984:	681b      	ldr	r3, [r3, #0]
d0055986:	4605      	mov	r5, r0
d0055988:	68d8      	ldr	r0, [r3, #12]
d005598a:	b14c      	cbz	r4, d00559a0 <__assert_func+0x24>
d005598c:	4b07      	ldr	r3, [pc, #28]	; (d00559ac <__assert_func+0x30>)
d005598e:	9100      	str	r1, [sp, #0]
d0055990:	e9cd 3401 	strd	r3, r4, [sp, #4]
d0055994:	4906      	ldr	r1, [pc, #24]	; (d00559b0 <__assert_func+0x34>)
d0055996:	462b      	mov	r3, r5
d0055998:	f000 f81e 	bl	d00559d8 <fiprintf>
d005599c:	f000 fdf2 	bl	d0056584 <abort>
d00559a0:	4b04      	ldr	r3, [pc, #16]	; (d00559b4 <__assert_func+0x38>)
d00559a2:	461c      	mov	r4, r3
d00559a4:	e7f3      	b.n	d005598e <__assert_func+0x12>
d00559a6:	bf00      	nop
d00559a8:	d005a2f4 	.word	0xd005a2f4
d00559ac:	d0057a42 	.word	0xd0057a42
d00559b0:	d0057a4f 	.word	0xd0057a4f
d00559b4:	d0057a7d 	.word	0xd0057a7d

d00559b8 <_close_r>:
d00559b8:	b538      	push	{r3, r4, r5, lr}
d00559ba:	4d06      	ldr	r5, [pc, #24]	; (d00559d4 <_close_r+0x1c>)
d00559bc:	2300      	movs	r3, #0
d00559be:	4604      	mov	r4, r0
d00559c0:	4608      	mov	r0, r1
d00559c2:	602b      	str	r3, [r5, #0]
d00559c4:	f7f5 fb80 	bl	d004b0c8 <_close>
d00559c8:	1c43      	adds	r3, r0, #1
d00559ca:	d102      	bne.n	d00559d2 <_close_r+0x1a>
d00559cc:	682b      	ldr	r3, [r5, #0]
d00559ce:	b103      	cbz	r3, d00559d2 <_close_r+0x1a>
d00559d0:	6023      	str	r3, [r4, #0]
d00559d2:	bd38      	pop	{r3, r4, r5, pc}
d00559d4:	d00fcaa0 	.word	0xd00fcaa0

d00559d8 <fiprintf>:
d00559d8:	b40e      	push	{r1, r2, r3}
d00559da:	b503      	push	{r0, r1, lr}
d00559dc:	4601      	mov	r1, r0
d00559de:	ab03      	add	r3, sp, #12
d00559e0:	4805      	ldr	r0, [pc, #20]	; (d00559f8 <fiprintf+0x20>)
d00559e2:	f853 2b04 	ldr.w	r2, [r3], #4
d00559e6:	6800      	ldr	r0, [r0, #0]
d00559e8:	9301      	str	r3, [sp, #4]
d00559ea:	f000 fa35 	bl	d0055e58 <_vfiprintf_r>
d00559ee:	b002      	add	sp, #8
d00559f0:	f85d eb04 	ldr.w	lr, [sp], #4
d00559f4:	b003      	add	sp, #12
d00559f6:	4770      	bx	lr
d00559f8:	d005a2f4 	.word	0xd005a2f4

d00559fc <_lseek_r>:
d00559fc:	b538      	push	{r3, r4, r5, lr}
d00559fe:	4d07      	ldr	r5, [pc, #28]	; (d0055a1c <_lseek_r+0x20>)
d0055a00:	4604      	mov	r4, r0
d0055a02:	4608      	mov	r0, r1
d0055a04:	4611      	mov	r1, r2
d0055a06:	2200      	movs	r2, #0
d0055a08:	602a      	str	r2, [r5, #0]
d0055a0a:	461a      	mov	r2, r3
d0055a0c:	f7f5 fb66 	bl	d004b0dc <_lseek>
d0055a10:	1c43      	adds	r3, r0, #1
d0055a12:	d102      	bne.n	d0055a1a <_lseek_r+0x1e>
d0055a14:	682b      	ldr	r3, [r5, #0]
d0055a16:	b103      	cbz	r3, d0055a1a <_lseek_r+0x1e>
d0055a18:	6023      	str	r3, [r4, #0]
d0055a1a:	bd38      	pop	{r3, r4, r5, pc}
d0055a1c:	d00fcaa0 	.word	0xd00fcaa0

d0055a20 <__swhatbuf_r>:
d0055a20:	b570      	push	{r4, r5, r6, lr}
d0055a22:	460e      	mov	r6, r1
d0055a24:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0055a28:	2900      	cmp	r1, #0
d0055a2a:	b096      	sub	sp, #88	; 0x58
d0055a2c:	4614      	mov	r4, r2
d0055a2e:	461d      	mov	r5, r3
d0055a30:	da07      	bge.n	d0055a42 <__swhatbuf_r+0x22>
d0055a32:	2300      	movs	r3, #0
d0055a34:	602b      	str	r3, [r5, #0]
d0055a36:	89b3      	ldrh	r3, [r6, #12]
d0055a38:	061a      	lsls	r2, r3, #24
d0055a3a:	d410      	bmi.n	d0055a5e <__swhatbuf_r+0x3e>
d0055a3c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0055a40:	e00e      	b.n	d0055a60 <__swhatbuf_r+0x40>
d0055a42:	466a      	mov	r2, sp
d0055a44:	f000 fda6 	bl	d0056594 <_fstat_r>
d0055a48:	2800      	cmp	r0, #0
d0055a4a:	dbf2      	blt.n	d0055a32 <__swhatbuf_r+0x12>
d0055a4c:	9a01      	ldr	r2, [sp, #4]
d0055a4e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0055a52:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0055a56:	425a      	negs	r2, r3
d0055a58:	415a      	adcs	r2, r3
d0055a5a:	602a      	str	r2, [r5, #0]
d0055a5c:	e7ee      	b.n	d0055a3c <__swhatbuf_r+0x1c>
d0055a5e:	2340      	movs	r3, #64	; 0x40
d0055a60:	2000      	movs	r0, #0
d0055a62:	6023      	str	r3, [r4, #0]
d0055a64:	b016      	add	sp, #88	; 0x58
d0055a66:	bd70      	pop	{r4, r5, r6, pc}

d0055a68 <__smakebuf_r>:
d0055a68:	898b      	ldrh	r3, [r1, #12]
d0055a6a:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0055a6c:	079d      	lsls	r5, r3, #30
d0055a6e:	4606      	mov	r6, r0
d0055a70:	460c      	mov	r4, r1
d0055a72:	d507      	bpl.n	d0055a84 <__smakebuf_r+0x1c>
d0055a74:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0055a78:	6023      	str	r3, [r4, #0]
d0055a7a:	6123      	str	r3, [r4, #16]
d0055a7c:	2301      	movs	r3, #1
d0055a7e:	6163      	str	r3, [r4, #20]
d0055a80:	b002      	add	sp, #8
d0055a82:	bd70      	pop	{r4, r5, r6, pc}
d0055a84:	ab01      	add	r3, sp, #4
d0055a86:	466a      	mov	r2, sp
d0055a88:	f7ff ffca 	bl	d0055a20 <__swhatbuf_r>
d0055a8c:	9900      	ldr	r1, [sp, #0]
d0055a8e:	4605      	mov	r5, r0
d0055a90:	4630      	mov	r0, r6
d0055a92:	f7ff fda7 	bl	d00555e4 <_malloc_r>
d0055a96:	b948      	cbnz	r0, d0055aac <__smakebuf_r+0x44>
d0055a98:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055a9c:	059a      	lsls	r2, r3, #22
d0055a9e:	d4ef      	bmi.n	d0055a80 <__smakebuf_r+0x18>
d0055aa0:	f023 0303 	bic.w	r3, r3, #3
d0055aa4:	f043 0302 	orr.w	r3, r3, #2
d0055aa8:	81a3      	strh	r3, [r4, #12]
d0055aaa:	e7e3      	b.n	d0055a74 <__smakebuf_r+0xc>
d0055aac:	4b0d      	ldr	r3, [pc, #52]	; (d0055ae4 <__smakebuf_r+0x7c>)
d0055aae:	62b3      	str	r3, [r6, #40]	; 0x28
d0055ab0:	89a3      	ldrh	r3, [r4, #12]
d0055ab2:	6020      	str	r0, [r4, #0]
d0055ab4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055ab8:	81a3      	strh	r3, [r4, #12]
d0055aba:	9b00      	ldr	r3, [sp, #0]
d0055abc:	6163      	str	r3, [r4, #20]
d0055abe:	9b01      	ldr	r3, [sp, #4]
d0055ac0:	6120      	str	r0, [r4, #16]
d0055ac2:	b15b      	cbz	r3, d0055adc <__smakebuf_r+0x74>
d0055ac4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0055ac8:	4630      	mov	r0, r6
d0055aca:	f000 fd75 	bl	d00565b8 <_isatty_r>
d0055ace:	b128      	cbz	r0, d0055adc <__smakebuf_r+0x74>
d0055ad0:	89a3      	ldrh	r3, [r4, #12]
d0055ad2:	f023 0303 	bic.w	r3, r3, #3
d0055ad6:	f043 0301 	orr.w	r3, r3, #1
d0055ada:	81a3      	strh	r3, [r4, #12]
d0055adc:	89a0      	ldrh	r0, [r4, #12]
d0055ade:	4305      	orrs	r5, r0
d0055ae0:	81a5      	strh	r5, [r4, #12]
d0055ae2:	e7cd      	b.n	d0055a80 <__smakebuf_r+0x18>
d0055ae4:	d0055331 	.word	0xd0055331

d0055ae8 <__malloc_lock>:
d0055ae8:	4801      	ldr	r0, [pc, #4]	; (d0055af0 <__malloc_lock+0x8>)
d0055aea:	f7ff bcf4 	b.w	d00554d6 <__retarget_lock_acquire_recursive>
d0055aee:	bf00      	nop
d0055af0:	d00fca98 	.word	0xd00fca98

d0055af4 <__malloc_unlock>:
d0055af4:	4801      	ldr	r0, [pc, #4]	; (d0055afc <__malloc_unlock+0x8>)
d0055af6:	f7ff bcef 	b.w	d00554d8 <__retarget_lock_release_recursive>
d0055afa:	bf00      	nop
d0055afc:	d00fca98 	.word	0xd00fca98

d0055b00 <_realloc_r>:
d0055b00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055b02:	4607      	mov	r7, r0
d0055b04:	4614      	mov	r4, r2
d0055b06:	460e      	mov	r6, r1
d0055b08:	b921      	cbnz	r1, d0055b14 <_realloc_r+0x14>
d0055b0a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0055b0e:	4611      	mov	r1, r2
d0055b10:	f7ff bd68 	b.w	d00555e4 <_malloc_r>
d0055b14:	b922      	cbnz	r2, d0055b20 <_realloc_r+0x20>
d0055b16:	f7ff fd15 	bl	d0055544 <_free_r>
d0055b1a:	4625      	mov	r5, r4
d0055b1c:	4628      	mov	r0, r5
d0055b1e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0055b20:	f000 fdc8 	bl	d00566b4 <_malloc_usable_size_r>
d0055b24:	42a0      	cmp	r0, r4
d0055b26:	d20f      	bcs.n	d0055b48 <_realloc_r+0x48>
d0055b28:	4621      	mov	r1, r4
d0055b2a:	4638      	mov	r0, r7
d0055b2c:	f7ff fd5a 	bl	d00555e4 <_malloc_r>
d0055b30:	4605      	mov	r5, r0
d0055b32:	2800      	cmp	r0, #0
d0055b34:	d0f2      	beq.n	d0055b1c <_realloc_r+0x1c>
d0055b36:	4631      	mov	r1, r6
d0055b38:	4622      	mov	r2, r4
d0055b3a:	f7ff fced 	bl	d0055518 <memcpy>
d0055b3e:	4631      	mov	r1, r6
d0055b40:	4638      	mov	r0, r7
d0055b42:	f7ff fcff 	bl	d0055544 <_free_r>
d0055b46:	e7e9      	b.n	d0055b1c <_realloc_r+0x1c>
d0055b48:	4635      	mov	r5, r6
d0055b4a:	e7e7      	b.n	d0055b1c <_realloc_r+0x1c>

d0055b4c <__ssputs_r>:
d0055b4c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0055b50:	688e      	ldr	r6, [r1, #8]
d0055b52:	429e      	cmp	r6, r3
d0055b54:	4682      	mov	sl, r0
d0055b56:	460c      	mov	r4, r1
d0055b58:	4690      	mov	r8, r2
d0055b5a:	461f      	mov	r7, r3
d0055b5c:	d838      	bhi.n	d0055bd0 <__ssputs_r+0x84>
d0055b5e:	898a      	ldrh	r2, [r1, #12]
d0055b60:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0055b64:	d032      	beq.n	d0055bcc <__ssputs_r+0x80>
d0055b66:	6825      	ldr	r5, [r4, #0]
d0055b68:	6909      	ldr	r1, [r1, #16]
d0055b6a:	eba5 0901 	sub.w	r9, r5, r1
d0055b6e:	6965      	ldr	r5, [r4, #20]
d0055b70:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0055b74:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0055b78:	3301      	adds	r3, #1
d0055b7a:	444b      	add	r3, r9
d0055b7c:	106d      	asrs	r5, r5, #1
d0055b7e:	429d      	cmp	r5, r3
d0055b80:	bf38      	it	cc
d0055b82:	461d      	movcc	r5, r3
d0055b84:	0553      	lsls	r3, r2, #21
d0055b86:	d531      	bpl.n	d0055bec <__ssputs_r+0xa0>
d0055b88:	4629      	mov	r1, r5
d0055b8a:	f7ff fd2b 	bl	d00555e4 <_malloc_r>
d0055b8e:	4606      	mov	r6, r0
d0055b90:	b950      	cbnz	r0, d0055ba8 <__ssputs_r+0x5c>
d0055b92:	230c      	movs	r3, #12
d0055b94:	f8ca 3000 	str.w	r3, [sl]
d0055b98:	89a3      	ldrh	r3, [r4, #12]
d0055b9a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055b9e:	81a3      	strh	r3, [r4, #12]
d0055ba0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055ba4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0055ba8:	6921      	ldr	r1, [r4, #16]
d0055baa:	464a      	mov	r2, r9
d0055bac:	f7ff fcb4 	bl	d0055518 <memcpy>
d0055bb0:	89a3      	ldrh	r3, [r4, #12]
d0055bb2:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0055bb6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0055bba:	81a3      	strh	r3, [r4, #12]
d0055bbc:	6126      	str	r6, [r4, #16]
d0055bbe:	6165      	str	r5, [r4, #20]
d0055bc0:	444e      	add	r6, r9
d0055bc2:	eba5 0509 	sub.w	r5, r5, r9
d0055bc6:	6026      	str	r6, [r4, #0]
d0055bc8:	60a5      	str	r5, [r4, #8]
d0055bca:	463e      	mov	r6, r7
d0055bcc:	42be      	cmp	r6, r7
d0055bce:	d900      	bls.n	d0055bd2 <__ssputs_r+0x86>
d0055bd0:	463e      	mov	r6, r7
d0055bd2:	4632      	mov	r2, r6
d0055bd4:	6820      	ldr	r0, [r4, #0]
d0055bd6:	4641      	mov	r1, r8
d0055bd8:	f000 fd52 	bl	d0056680 <memmove>
d0055bdc:	68a3      	ldr	r3, [r4, #8]
d0055bde:	6822      	ldr	r2, [r4, #0]
d0055be0:	1b9b      	subs	r3, r3, r6
d0055be2:	4432      	add	r2, r6
d0055be4:	60a3      	str	r3, [r4, #8]
d0055be6:	6022      	str	r2, [r4, #0]
d0055be8:	2000      	movs	r0, #0
d0055bea:	e7db      	b.n	d0055ba4 <__ssputs_r+0x58>
d0055bec:	462a      	mov	r2, r5
d0055bee:	f7ff ff87 	bl	d0055b00 <_realloc_r>
d0055bf2:	4606      	mov	r6, r0
d0055bf4:	2800      	cmp	r0, #0
d0055bf6:	d1e1      	bne.n	d0055bbc <__ssputs_r+0x70>
d0055bf8:	6921      	ldr	r1, [r4, #16]
d0055bfa:	4650      	mov	r0, sl
d0055bfc:	f7ff fca2 	bl	d0055544 <_free_r>
d0055c00:	e7c7      	b.n	d0055b92 <__ssputs_r+0x46>
	...

d0055c04 <_svfiprintf_r>:
d0055c04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055c08:	4698      	mov	r8, r3
d0055c0a:	898b      	ldrh	r3, [r1, #12]
d0055c0c:	061b      	lsls	r3, r3, #24
d0055c0e:	b09d      	sub	sp, #116	; 0x74
d0055c10:	4607      	mov	r7, r0
d0055c12:	460d      	mov	r5, r1
d0055c14:	4614      	mov	r4, r2
d0055c16:	d50e      	bpl.n	d0055c36 <_svfiprintf_r+0x32>
d0055c18:	690b      	ldr	r3, [r1, #16]
d0055c1a:	b963      	cbnz	r3, d0055c36 <_svfiprintf_r+0x32>
d0055c1c:	2140      	movs	r1, #64	; 0x40
d0055c1e:	f7ff fce1 	bl	d00555e4 <_malloc_r>
d0055c22:	6028      	str	r0, [r5, #0]
d0055c24:	6128      	str	r0, [r5, #16]
d0055c26:	b920      	cbnz	r0, d0055c32 <_svfiprintf_r+0x2e>
d0055c28:	230c      	movs	r3, #12
d0055c2a:	603b      	str	r3, [r7, #0]
d0055c2c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055c30:	e0d1      	b.n	d0055dd6 <_svfiprintf_r+0x1d2>
d0055c32:	2340      	movs	r3, #64	; 0x40
d0055c34:	616b      	str	r3, [r5, #20]
d0055c36:	2300      	movs	r3, #0
d0055c38:	9309      	str	r3, [sp, #36]	; 0x24
d0055c3a:	2320      	movs	r3, #32
d0055c3c:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0055c40:	f8cd 800c 	str.w	r8, [sp, #12]
d0055c44:	2330      	movs	r3, #48	; 0x30
d0055c46:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0055df0 <_svfiprintf_r+0x1ec>
d0055c4a:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0055c4e:	f04f 0901 	mov.w	r9, #1
d0055c52:	4623      	mov	r3, r4
d0055c54:	469a      	mov	sl, r3
d0055c56:	f813 2b01 	ldrb.w	r2, [r3], #1
d0055c5a:	b10a      	cbz	r2, d0055c60 <_svfiprintf_r+0x5c>
d0055c5c:	2a25      	cmp	r2, #37	; 0x25
d0055c5e:	d1f9      	bne.n	d0055c54 <_svfiprintf_r+0x50>
d0055c60:	ebba 0b04 	subs.w	fp, sl, r4
d0055c64:	d00b      	beq.n	d0055c7e <_svfiprintf_r+0x7a>
d0055c66:	465b      	mov	r3, fp
d0055c68:	4622      	mov	r2, r4
d0055c6a:	4629      	mov	r1, r5
d0055c6c:	4638      	mov	r0, r7
d0055c6e:	f7ff ff6d 	bl	d0055b4c <__ssputs_r>
d0055c72:	3001      	adds	r0, #1
d0055c74:	f000 80aa 	beq.w	d0055dcc <_svfiprintf_r+0x1c8>
d0055c78:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0055c7a:	445a      	add	r2, fp
d0055c7c:	9209      	str	r2, [sp, #36]	; 0x24
d0055c7e:	f89a 3000 	ldrb.w	r3, [sl]
d0055c82:	2b00      	cmp	r3, #0
d0055c84:	f000 80a2 	beq.w	d0055dcc <_svfiprintf_r+0x1c8>
d0055c88:	2300      	movs	r3, #0
d0055c8a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0055c8e:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0055c92:	f10a 0a01 	add.w	sl, sl, #1
d0055c96:	9304      	str	r3, [sp, #16]
d0055c98:	9307      	str	r3, [sp, #28]
d0055c9a:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0055c9e:	931a      	str	r3, [sp, #104]	; 0x68
d0055ca0:	4654      	mov	r4, sl
d0055ca2:	2205      	movs	r2, #5
d0055ca4:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055ca8:	4851      	ldr	r0, [pc, #324]	; (d0055df0 <_svfiprintf_r+0x1ec>)
d0055caa:	f000 fc99 	bl	d00565e0 <memchr>
d0055cae:	9a04      	ldr	r2, [sp, #16]
d0055cb0:	b9d8      	cbnz	r0, d0055cea <_svfiprintf_r+0xe6>
d0055cb2:	06d0      	lsls	r0, r2, #27
d0055cb4:	bf44      	itt	mi
d0055cb6:	2320      	movmi	r3, #32
d0055cb8:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055cbc:	0711      	lsls	r1, r2, #28
d0055cbe:	bf44      	itt	mi
d0055cc0:	232b      	movmi	r3, #43	; 0x2b
d0055cc2:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055cc6:	f89a 3000 	ldrb.w	r3, [sl]
d0055cca:	2b2a      	cmp	r3, #42	; 0x2a
d0055ccc:	d015      	beq.n	d0055cfa <_svfiprintf_r+0xf6>
d0055cce:	9a07      	ldr	r2, [sp, #28]
d0055cd0:	4654      	mov	r4, sl
d0055cd2:	2000      	movs	r0, #0
d0055cd4:	f04f 0c0a 	mov.w	ip, #10
d0055cd8:	4621      	mov	r1, r4
d0055cda:	f811 3b01 	ldrb.w	r3, [r1], #1
d0055cde:	3b30      	subs	r3, #48	; 0x30
d0055ce0:	2b09      	cmp	r3, #9
d0055ce2:	d94e      	bls.n	d0055d82 <_svfiprintf_r+0x17e>
d0055ce4:	b1b0      	cbz	r0, d0055d14 <_svfiprintf_r+0x110>
d0055ce6:	9207      	str	r2, [sp, #28]
d0055ce8:	e014      	b.n	d0055d14 <_svfiprintf_r+0x110>
d0055cea:	eba0 0308 	sub.w	r3, r0, r8
d0055cee:	fa09 f303 	lsl.w	r3, r9, r3
d0055cf2:	4313      	orrs	r3, r2
d0055cf4:	9304      	str	r3, [sp, #16]
d0055cf6:	46a2      	mov	sl, r4
d0055cf8:	e7d2      	b.n	d0055ca0 <_svfiprintf_r+0x9c>
d0055cfa:	9b03      	ldr	r3, [sp, #12]
d0055cfc:	1d19      	adds	r1, r3, #4
d0055cfe:	681b      	ldr	r3, [r3, #0]
d0055d00:	9103      	str	r1, [sp, #12]
d0055d02:	2b00      	cmp	r3, #0
d0055d04:	bfbb      	ittet	lt
d0055d06:	425b      	neglt	r3, r3
d0055d08:	f042 0202 	orrlt.w	r2, r2, #2
d0055d0c:	9307      	strge	r3, [sp, #28]
d0055d0e:	9307      	strlt	r3, [sp, #28]
d0055d10:	bfb8      	it	lt
d0055d12:	9204      	strlt	r2, [sp, #16]
d0055d14:	7823      	ldrb	r3, [r4, #0]
d0055d16:	2b2e      	cmp	r3, #46	; 0x2e
d0055d18:	d10c      	bne.n	d0055d34 <_svfiprintf_r+0x130>
d0055d1a:	7863      	ldrb	r3, [r4, #1]
d0055d1c:	2b2a      	cmp	r3, #42	; 0x2a
d0055d1e:	d135      	bne.n	d0055d8c <_svfiprintf_r+0x188>
d0055d20:	9b03      	ldr	r3, [sp, #12]
d0055d22:	1d1a      	adds	r2, r3, #4
d0055d24:	681b      	ldr	r3, [r3, #0]
d0055d26:	9203      	str	r2, [sp, #12]
d0055d28:	2b00      	cmp	r3, #0
d0055d2a:	bfb8      	it	lt
d0055d2c:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0055d30:	3402      	adds	r4, #2
d0055d32:	9305      	str	r3, [sp, #20]
d0055d34:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0055e00 <_svfiprintf_r+0x1fc>
d0055d38:	7821      	ldrb	r1, [r4, #0]
d0055d3a:	2203      	movs	r2, #3
d0055d3c:	4650      	mov	r0, sl
d0055d3e:	f000 fc4f 	bl	d00565e0 <memchr>
d0055d42:	b140      	cbz	r0, d0055d56 <_svfiprintf_r+0x152>
d0055d44:	2340      	movs	r3, #64	; 0x40
d0055d46:	eba0 000a 	sub.w	r0, r0, sl
d0055d4a:	fa03 f000 	lsl.w	r0, r3, r0
d0055d4e:	9b04      	ldr	r3, [sp, #16]
d0055d50:	4303      	orrs	r3, r0
d0055d52:	3401      	adds	r4, #1
d0055d54:	9304      	str	r3, [sp, #16]
d0055d56:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055d5a:	4826      	ldr	r0, [pc, #152]	; (d0055df4 <_svfiprintf_r+0x1f0>)
d0055d5c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0055d60:	2206      	movs	r2, #6
d0055d62:	f000 fc3d 	bl	d00565e0 <memchr>
d0055d66:	2800      	cmp	r0, #0
d0055d68:	d038      	beq.n	d0055ddc <_svfiprintf_r+0x1d8>
d0055d6a:	4b23      	ldr	r3, [pc, #140]	; (d0055df8 <_svfiprintf_r+0x1f4>)
d0055d6c:	bb1b      	cbnz	r3, d0055db6 <_svfiprintf_r+0x1b2>
d0055d6e:	9b03      	ldr	r3, [sp, #12]
d0055d70:	3307      	adds	r3, #7
d0055d72:	f023 0307 	bic.w	r3, r3, #7
d0055d76:	3308      	adds	r3, #8
d0055d78:	9303      	str	r3, [sp, #12]
d0055d7a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0055d7c:	4433      	add	r3, r6
d0055d7e:	9309      	str	r3, [sp, #36]	; 0x24
d0055d80:	e767      	b.n	d0055c52 <_svfiprintf_r+0x4e>
d0055d82:	fb0c 3202 	mla	r2, ip, r2, r3
d0055d86:	460c      	mov	r4, r1
d0055d88:	2001      	movs	r0, #1
d0055d8a:	e7a5      	b.n	d0055cd8 <_svfiprintf_r+0xd4>
d0055d8c:	2300      	movs	r3, #0
d0055d8e:	3401      	adds	r4, #1
d0055d90:	9305      	str	r3, [sp, #20]
d0055d92:	4619      	mov	r1, r3
d0055d94:	f04f 0c0a 	mov.w	ip, #10
d0055d98:	4620      	mov	r0, r4
d0055d9a:	f810 2b01 	ldrb.w	r2, [r0], #1
d0055d9e:	3a30      	subs	r2, #48	; 0x30
d0055da0:	2a09      	cmp	r2, #9
d0055da2:	d903      	bls.n	d0055dac <_svfiprintf_r+0x1a8>
d0055da4:	2b00      	cmp	r3, #0
d0055da6:	d0c5      	beq.n	d0055d34 <_svfiprintf_r+0x130>
d0055da8:	9105      	str	r1, [sp, #20]
d0055daa:	e7c3      	b.n	d0055d34 <_svfiprintf_r+0x130>
d0055dac:	fb0c 2101 	mla	r1, ip, r1, r2
d0055db0:	4604      	mov	r4, r0
d0055db2:	2301      	movs	r3, #1
d0055db4:	e7f0      	b.n	d0055d98 <_svfiprintf_r+0x194>
d0055db6:	ab03      	add	r3, sp, #12
d0055db8:	9300      	str	r3, [sp, #0]
d0055dba:	462a      	mov	r2, r5
d0055dbc:	4b0f      	ldr	r3, [pc, #60]	; (d0055dfc <_svfiprintf_r+0x1f8>)
d0055dbe:	a904      	add	r1, sp, #16
d0055dc0:	4638      	mov	r0, r7
d0055dc2:	f3af 8000 	nop.w
d0055dc6:	1c42      	adds	r2, r0, #1
d0055dc8:	4606      	mov	r6, r0
d0055dca:	d1d6      	bne.n	d0055d7a <_svfiprintf_r+0x176>
d0055dcc:	89ab      	ldrh	r3, [r5, #12]
d0055dce:	065b      	lsls	r3, r3, #25
d0055dd0:	f53f af2c 	bmi.w	d0055c2c <_svfiprintf_r+0x28>
d0055dd4:	9809      	ldr	r0, [sp, #36]	; 0x24
d0055dd6:	b01d      	add	sp, #116	; 0x74
d0055dd8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055ddc:	ab03      	add	r3, sp, #12
d0055dde:	9300      	str	r3, [sp, #0]
d0055de0:	462a      	mov	r2, r5
d0055de2:	4b06      	ldr	r3, [pc, #24]	; (d0055dfc <_svfiprintf_r+0x1f8>)
d0055de4:	a904      	add	r1, sp, #16
d0055de6:	4638      	mov	r0, r7
d0055de8:	f000 f9d4 	bl	d0056194 <_printf_i>
d0055dec:	e7eb      	b.n	d0055dc6 <_svfiprintf_r+0x1c2>
d0055dee:	bf00      	nop
d0055df0:	d0057a7e 	.word	0xd0057a7e
d0055df4:	d0057a88 	.word	0xd0057a88
d0055df8:	00000000 	.word	0x00000000
d0055dfc:	d0055b4d 	.word	0xd0055b4d
d0055e00:	d0057a84 	.word	0xd0057a84

d0055e04 <__sfputc_r>:
d0055e04:	6893      	ldr	r3, [r2, #8]
d0055e06:	3b01      	subs	r3, #1
d0055e08:	2b00      	cmp	r3, #0
d0055e0a:	b410      	push	{r4}
d0055e0c:	6093      	str	r3, [r2, #8]
d0055e0e:	da08      	bge.n	d0055e22 <__sfputc_r+0x1e>
d0055e10:	6994      	ldr	r4, [r2, #24]
d0055e12:	42a3      	cmp	r3, r4
d0055e14:	db01      	blt.n	d0055e1a <__sfputc_r+0x16>
d0055e16:	290a      	cmp	r1, #10
d0055e18:	d103      	bne.n	d0055e22 <__sfputc_r+0x1e>
d0055e1a:	f85d 4b04 	ldr.w	r4, [sp], #4
d0055e1e:	f000 baf1 	b.w	d0056404 <__swbuf_r>
d0055e22:	6813      	ldr	r3, [r2, #0]
d0055e24:	1c58      	adds	r0, r3, #1
d0055e26:	6010      	str	r0, [r2, #0]
d0055e28:	7019      	strb	r1, [r3, #0]
d0055e2a:	4608      	mov	r0, r1
d0055e2c:	f85d 4b04 	ldr.w	r4, [sp], #4
d0055e30:	4770      	bx	lr

d0055e32 <__sfputs_r>:
d0055e32:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055e34:	4606      	mov	r6, r0
d0055e36:	460f      	mov	r7, r1
d0055e38:	4614      	mov	r4, r2
d0055e3a:	18d5      	adds	r5, r2, r3
d0055e3c:	42ac      	cmp	r4, r5
d0055e3e:	d101      	bne.n	d0055e44 <__sfputs_r+0x12>
d0055e40:	2000      	movs	r0, #0
d0055e42:	e007      	b.n	d0055e54 <__sfputs_r+0x22>
d0055e44:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055e48:	463a      	mov	r2, r7
d0055e4a:	4630      	mov	r0, r6
d0055e4c:	f7ff ffda 	bl	d0055e04 <__sfputc_r>
d0055e50:	1c43      	adds	r3, r0, #1
d0055e52:	d1f3      	bne.n	d0055e3c <__sfputs_r+0xa>
d0055e54:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0055e58 <_vfiprintf_r>:
d0055e58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055e5c:	460d      	mov	r5, r1
d0055e5e:	b09d      	sub	sp, #116	; 0x74
d0055e60:	4614      	mov	r4, r2
d0055e62:	4698      	mov	r8, r3
d0055e64:	4606      	mov	r6, r0
d0055e66:	b118      	cbz	r0, d0055e70 <_vfiprintf_r+0x18>
d0055e68:	6983      	ldr	r3, [r0, #24]
d0055e6a:	b90b      	cbnz	r3, d0055e70 <_vfiprintf_r+0x18>
d0055e6c:	f7ff fa94 	bl	d0055398 <__sinit>
d0055e70:	4b89      	ldr	r3, [pc, #548]	; (d0056098 <_vfiprintf_r+0x240>)
d0055e72:	429d      	cmp	r5, r3
d0055e74:	d11b      	bne.n	d0055eae <_vfiprintf_r+0x56>
d0055e76:	6875      	ldr	r5, [r6, #4]
d0055e78:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0055e7a:	07d9      	lsls	r1, r3, #31
d0055e7c:	d405      	bmi.n	d0055e8a <_vfiprintf_r+0x32>
d0055e7e:	89ab      	ldrh	r3, [r5, #12]
d0055e80:	059a      	lsls	r2, r3, #22
d0055e82:	d402      	bmi.n	d0055e8a <_vfiprintf_r+0x32>
d0055e84:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0055e86:	f7ff fb26 	bl	d00554d6 <__retarget_lock_acquire_recursive>
d0055e8a:	89ab      	ldrh	r3, [r5, #12]
d0055e8c:	071b      	lsls	r3, r3, #28
d0055e8e:	d501      	bpl.n	d0055e94 <_vfiprintf_r+0x3c>
d0055e90:	692b      	ldr	r3, [r5, #16]
d0055e92:	b9eb      	cbnz	r3, d0055ed0 <_vfiprintf_r+0x78>
d0055e94:	4629      	mov	r1, r5
d0055e96:	4630      	mov	r0, r6
d0055e98:	f000 fb06 	bl	d00564a8 <__swsetup_r>
d0055e9c:	b1c0      	cbz	r0, d0055ed0 <_vfiprintf_r+0x78>
d0055e9e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0055ea0:	07dc      	lsls	r4, r3, #31
d0055ea2:	d50e      	bpl.n	d0055ec2 <_vfiprintf_r+0x6a>
d0055ea4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055ea8:	b01d      	add	sp, #116	; 0x74
d0055eaa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055eae:	4b7b      	ldr	r3, [pc, #492]	; (d005609c <_vfiprintf_r+0x244>)
d0055eb0:	429d      	cmp	r5, r3
d0055eb2:	d101      	bne.n	d0055eb8 <_vfiprintf_r+0x60>
d0055eb4:	68b5      	ldr	r5, [r6, #8]
d0055eb6:	e7df      	b.n	d0055e78 <_vfiprintf_r+0x20>
d0055eb8:	4b79      	ldr	r3, [pc, #484]	; (d00560a0 <_vfiprintf_r+0x248>)
d0055eba:	429d      	cmp	r5, r3
d0055ebc:	bf08      	it	eq
d0055ebe:	68f5      	ldreq	r5, [r6, #12]
d0055ec0:	e7da      	b.n	d0055e78 <_vfiprintf_r+0x20>
d0055ec2:	89ab      	ldrh	r3, [r5, #12]
d0055ec4:	0598      	lsls	r0, r3, #22
d0055ec6:	d4ed      	bmi.n	d0055ea4 <_vfiprintf_r+0x4c>
d0055ec8:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0055eca:	f7ff fb05 	bl	d00554d8 <__retarget_lock_release_recursive>
d0055ece:	e7e9      	b.n	d0055ea4 <_vfiprintf_r+0x4c>
d0055ed0:	2300      	movs	r3, #0
d0055ed2:	9309      	str	r3, [sp, #36]	; 0x24
d0055ed4:	2320      	movs	r3, #32
d0055ed6:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0055eda:	f8cd 800c 	str.w	r8, [sp, #12]
d0055ede:	2330      	movs	r3, #48	; 0x30
d0055ee0:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d00560a4 <_vfiprintf_r+0x24c>
d0055ee4:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0055ee8:	f04f 0901 	mov.w	r9, #1
d0055eec:	4623      	mov	r3, r4
d0055eee:	469a      	mov	sl, r3
d0055ef0:	f813 2b01 	ldrb.w	r2, [r3], #1
d0055ef4:	b10a      	cbz	r2, d0055efa <_vfiprintf_r+0xa2>
d0055ef6:	2a25      	cmp	r2, #37	; 0x25
d0055ef8:	d1f9      	bne.n	d0055eee <_vfiprintf_r+0x96>
d0055efa:	ebba 0b04 	subs.w	fp, sl, r4
d0055efe:	d00b      	beq.n	d0055f18 <_vfiprintf_r+0xc0>
d0055f00:	465b      	mov	r3, fp
d0055f02:	4622      	mov	r2, r4
d0055f04:	4629      	mov	r1, r5
d0055f06:	4630      	mov	r0, r6
d0055f08:	f7ff ff93 	bl	d0055e32 <__sfputs_r>
d0055f0c:	3001      	adds	r0, #1
d0055f0e:	f000 80aa 	beq.w	d0056066 <_vfiprintf_r+0x20e>
d0055f12:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0055f14:	445a      	add	r2, fp
d0055f16:	9209      	str	r2, [sp, #36]	; 0x24
d0055f18:	f89a 3000 	ldrb.w	r3, [sl]
d0055f1c:	2b00      	cmp	r3, #0
d0055f1e:	f000 80a2 	beq.w	d0056066 <_vfiprintf_r+0x20e>
d0055f22:	2300      	movs	r3, #0
d0055f24:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0055f28:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0055f2c:	f10a 0a01 	add.w	sl, sl, #1
d0055f30:	9304      	str	r3, [sp, #16]
d0055f32:	9307      	str	r3, [sp, #28]
d0055f34:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0055f38:	931a      	str	r3, [sp, #104]	; 0x68
d0055f3a:	4654      	mov	r4, sl
d0055f3c:	2205      	movs	r2, #5
d0055f3e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055f42:	4858      	ldr	r0, [pc, #352]	; (d00560a4 <_vfiprintf_r+0x24c>)
d0055f44:	f000 fb4c 	bl	d00565e0 <memchr>
d0055f48:	9a04      	ldr	r2, [sp, #16]
d0055f4a:	b9d8      	cbnz	r0, d0055f84 <_vfiprintf_r+0x12c>
d0055f4c:	06d1      	lsls	r1, r2, #27
d0055f4e:	bf44      	itt	mi
d0055f50:	2320      	movmi	r3, #32
d0055f52:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055f56:	0713      	lsls	r3, r2, #28
d0055f58:	bf44      	itt	mi
d0055f5a:	232b      	movmi	r3, #43	; 0x2b
d0055f5c:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0055f60:	f89a 3000 	ldrb.w	r3, [sl]
d0055f64:	2b2a      	cmp	r3, #42	; 0x2a
d0055f66:	d015      	beq.n	d0055f94 <_vfiprintf_r+0x13c>
d0055f68:	9a07      	ldr	r2, [sp, #28]
d0055f6a:	4654      	mov	r4, sl
d0055f6c:	2000      	movs	r0, #0
d0055f6e:	f04f 0c0a 	mov.w	ip, #10
d0055f72:	4621      	mov	r1, r4
d0055f74:	f811 3b01 	ldrb.w	r3, [r1], #1
d0055f78:	3b30      	subs	r3, #48	; 0x30
d0055f7a:	2b09      	cmp	r3, #9
d0055f7c:	d94e      	bls.n	d005601c <_vfiprintf_r+0x1c4>
d0055f7e:	b1b0      	cbz	r0, d0055fae <_vfiprintf_r+0x156>
d0055f80:	9207      	str	r2, [sp, #28]
d0055f82:	e014      	b.n	d0055fae <_vfiprintf_r+0x156>
d0055f84:	eba0 0308 	sub.w	r3, r0, r8
d0055f88:	fa09 f303 	lsl.w	r3, r9, r3
d0055f8c:	4313      	orrs	r3, r2
d0055f8e:	9304      	str	r3, [sp, #16]
d0055f90:	46a2      	mov	sl, r4
d0055f92:	e7d2      	b.n	d0055f3a <_vfiprintf_r+0xe2>
d0055f94:	9b03      	ldr	r3, [sp, #12]
d0055f96:	1d19      	adds	r1, r3, #4
d0055f98:	681b      	ldr	r3, [r3, #0]
d0055f9a:	9103      	str	r1, [sp, #12]
d0055f9c:	2b00      	cmp	r3, #0
d0055f9e:	bfbb      	ittet	lt
d0055fa0:	425b      	neglt	r3, r3
d0055fa2:	f042 0202 	orrlt.w	r2, r2, #2
d0055fa6:	9307      	strge	r3, [sp, #28]
d0055fa8:	9307      	strlt	r3, [sp, #28]
d0055faa:	bfb8      	it	lt
d0055fac:	9204      	strlt	r2, [sp, #16]
d0055fae:	7823      	ldrb	r3, [r4, #0]
d0055fb0:	2b2e      	cmp	r3, #46	; 0x2e
d0055fb2:	d10c      	bne.n	d0055fce <_vfiprintf_r+0x176>
d0055fb4:	7863      	ldrb	r3, [r4, #1]
d0055fb6:	2b2a      	cmp	r3, #42	; 0x2a
d0055fb8:	d135      	bne.n	d0056026 <_vfiprintf_r+0x1ce>
d0055fba:	9b03      	ldr	r3, [sp, #12]
d0055fbc:	1d1a      	adds	r2, r3, #4
d0055fbe:	681b      	ldr	r3, [r3, #0]
d0055fc0:	9203      	str	r2, [sp, #12]
d0055fc2:	2b00      	cmp	r3, #0
d0055fc4:	bfb8      	it	lt
d0055fc6:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0055fca:	3402      	adds	r4, #2
d0055fcc:	9305      	str	r3, [sp, #20]
d0055fce:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d00560b4 <_vfiprintf_r+0x25c>
d0055fd2:	7821      	ldrb	r1, [r4, #0]
d0055fd4:	2203      	movs	r2, #3
d0055fd6:	4650      	mov	r0, sl
d0055fd8:	f000 fb02 	bl	d00565e0 <memchr>
d0055fdc:	b140      	cbz	r0, d0055ff0 <_vfiprintf_r+0x198>
d0055fde:	2340      	movs	r3, #64	; 0x40
d0055fe0:	eba0 000a 	sub.w	r0, r0, sl
d0055fe4:	fa03 f000 	lsl.w	r0, r3, r0
d0055fe8:	9b04      	ldr	r3, [sp, #16]
d0055fea:	4303      	orrs	r3, r0
d0055fec:	3401      	adds	r4, #1
d0055fee:	9304      	str	r3, [sp, #16]
d0055ff0:	f814 1b01 	ldrb.w	r1, [r4], #1
d0055ff4:	482c      	ldr	r0, [pc, #176]	; (d00560a8 <_vfiprintf_r+0x250>)
d0055ff6:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0055ffa:	2206      	movs	r2, #6
d0055ffc:	f000 faf0 	bl	d00565e0 <memchr>
d0056000:	2800      	cmp	r0, #0
d0056002:	d03f      	beq.n	d0056084 <_vfiprintf_r+0x22c>
d0056004:	4b29      	ldr	r3, [pc, #164]	; (d00560ac <_vfiprintf_r+0x254>)
d0056006:	bb1b      	cbnz	r3, d0056050 <_vfiprintf_r+0x1f8>
d0056008:	9b03      	ldr	r3, [sp, #12]
d005600a:	3307      	adds	r3, #7
d005600c:	f023 0307 	bic.w	r3, r3, #7
d0056010:	3308      	adds	r3, #8
d0056012:	9303      	str	r3, [sp, #12]
d0056014:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0056016:	443b      	add	r3, r7
d0056018:	9309      	str	r3, [sp, #36]	; 0x24
d005601a:	e767      	b.n	d0055eec <_vfiprintf_r+0x94>
d005601c:	fb0c 3202 	mla	r2, ip, r2, r3
d0056020:	460c      	mov	r4, r1
d0056022:	2001      	movs	r0, #1
d0056024:	e7a5      	b.n	d0055f72 <_vfiprintf_r+0x11a>
d0056026:	2300      	movs	r3, #0
d0056028:	3401      	adds	r4, #1
d005602a:	9305      	str	r3, [sp, #20]
d005602c:	4619      	mov	r1, r3
d005602e:	f04f 0c0a 	mov.w	ip, #10
d0056032:	4620      	mov	r0, r4
d0056034:	f810 2b01 	ldrb.w	r2, [r0], #1
d0056038:	3a30      	subs	r2, #48	; 0x30
d005603a:	2a09      	cmp	r2, #9
d005603c:	d903      	bls.n	d0056046 <_vfiprintf_r+0x1ee>
d005603e:	2b00      	cmp	r3, #0
d0056040:	d0c5      	beq.n	d0055fce <_vfiprintf_r+0x176>
d0056042:	9105      	str	r1, [sp, #20]
d0056044:	e7c3      	b.n	d0055fce <_vfiprintf_r+0x176>
d0056046:	fb0c 2101 	mla	r1, ip, r1, r2
d005604a:	4604      	mov	r4, r0
d005604c:	2301      	movs	r3, #1
d005604e:	e7f0      	b.n	d0056032 <_vfiprintf_r+0x1da>
d0056050:	ab03      	add	r3, sp, #12
d0056052:	9300      	str	r3, [sp, #0]
d0056054:	462a      	mov	r2, r5
d0056056:	4b16      	ldr	r3, [pc, #88]	; (d00560b0 <_vfiprintf_r+0x258>)
d0056058:	a904      	add	r1, sp, #16
d005605a:	4630      	mov	r0, r6
d005605c:	f3af 8000 	nop.w
d0056060:	4607      	mov	r7, r0
d0056062:	1c78      	adds	r0, r7, #1
d0056064:	d1d6      	bne.n	d0056014 <_vfiprintf_r+0x1bc>
d0056066:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0056068:	07d9      	lsls	r1, r3, #31
d005606a:	d405      	bmi.n	d0056078 <_vfiprintf_r+0x220>
d005606c:	89ab      	ldrh	r3, [r5, #12]
d005606e:	059a      	lsls	r2, r3, #22
d0056070:	d402      	bmi.n	d0056078 <_vfiprintf_r+0x220>
d0056072:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0056074:	f7ff fa30 	bl	d00554d8 <__retarget_lock_release_recursive>
d0056078:	89ab      	ldrh	r3, [r5, #12]
d005607a:	065b      	lsls	r3, r3, #25
d005607c:	f53f af12 	bmi.w	d0055ea4 <_vfiprintf_r+0x4c>
d0056080:	9809      	ldr	r0, [sp, #36]	; 0x24
d0056082:	e711      	b.n	d0055ea8 <_vfiprintf_r+0x50>
d0056084:	ab03      	add	r3, sp, #12
d0056086:	9300      	str	r3, [sp, #0]
d0056088:	462a      	mov	r2, r5
d005608a:	4b09      	ldr	r3, [pc, #36]	; (d00560b0 <_vfiprintf_r+0x258>)
d005608c:	a904      	add	r1, sp, #16
d005608e:	4630      	mov	r0, r6
d0056090:	f000 f880 	bl	d0056194 <_printf_i>
d0056094:	e7e4      	b.n	d0056060 <_vfiprintf_r+0x208>
d0056096:	bf00      	nop
d0056098:	d0057988 	.word	0xd0057988
d005609c:	d00579a8 	.word	0xd00579a8
d00560a0:	d0057968 	.word	0xd0057968
d00560a4:	d0057a7e 	.word	0xd0057a7e
d00560a8:	d0057a88 	.word	0xd0057a88
d00560ac:	00000000 	.word	0x00000000
d00560b0:	d0055e33 	.word	0xd0055e33
d00560b4:	d0057a84 	.word	0xd0057a84

d00560b8 <_printf_common>:
d00560b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00560bc:	4616      	mov	r6, r2
d00560be:	4699      	mov	r9, r3
d00560c0:	688a      	ldr	r2, [r1, #8]
d00560c2:	690b      	ldr	r3, [r1, #16]
d00560c4:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00560c8:	4293      	cmp	r3, r2
d00560ca:	bfb8      	it	lt
d00560cc:	4613      	movlt	r3, r2
d00560ce:	6033      	str	r3, [r6, #0]
d00560d0:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00560d4:	4607      	mov	r7, r0
d00560d6:	460c      	mov	r4, r1
d00560d8:	b10a      	cbz	r2, d00560de <_printf_common+0x26>
d00560da:	3301      	adds	r3, #1
d00560dc:	6033      	str	r3, [r6, #0]
d00560de:	6823      	ldr	r3, [r4, #0]
d00560e0:	0699      	lsls	r1, r3, #26
d00560e2:	bf42      	ittt	mi
d00560e4:	6833      	ldrmi	r3, [r6, #0]
d00560e6:	3302      	addmi	r3, #2
d00560e8:	6033      	strmi	r3, [r6, #0]
d00560ea:	6825      	ldr	r5, [r4, #0]
d00560ec:	f015 0506 	ands.w	r5, r5, #6
d00560f0:	d106      	bne.n	d0056100 <_printf_common+0x48>
d00560f2:	f104 0a19 	add.w	sl, r4, #25
d00560f6:	68e3      	ldr	r3, [r4, #12]
d00560f8:	6832      	ldr	r2, [r6, #0]
d00560fa:	1a9b      	subs	r3, r3, r2
d00560fc:	42ab      	cmp	r3, r5
d00560fe:	dc26      	bgt.n	d005614e <_printf_common+0x96>
d0056100:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0056104:	1e13      	subs	r3, r2, #0
d0056106:	6822      	ldr	r2, [r4, #0]
d0056108:	bf18      	it	ne
d005610a:	2301      	movne	r3, #1
d005610c:	0692      	lsls	r2, r2, #26
d005610e:	d42b      	bmi.n	d0056168 <_printf_common+0xb0>
d0056110:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0056114:	4649      	mov	r1, r9
d0056116:	4638      	mov	r0, r7
d0056118:	47c0      	blx	r8
d005611a:	3001      	adds	r0, #1
d005611c:	d01e      	beq.n	d005615c <_printf_common+0xa4>
d005611e:	6823      	ldr	r3, [r4, #0]
d0056120:	68e5      	ldr	r5, [r4, #12]
d0056122:	6832      	ldr	r2, [r6, #0]
d0056124:	f003 0306 	and.w	r3, r3, #6
d0056128:	2b04      	cmp	r3, #4
d005612a:	bf08      	it	eq
d005612c:	1aad      	subeq	r5, r5, r2
d005612e:	68a3      	ldr	r3, [r4, #8]
d0056130:	6922      	ldr	r2, [r4, #16]
d0056132:	bf0c      	ite	eq
d0056134:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0056138:	2500      	movne	r5, #0
d005613a:	4293      	cmp	r3, r2
d005613c:	bfc4      	itt	gt
d005613e:	1a9b      	subgt	r3, r3, r2
d0056140:	18ed      	addgt	r5, r5, r3
d0056142:	2600      	movs	r6, #0
d0056144:	341a      	adds	r4, #26
d0056146:	42b5      	cmp	r5, r6
d0056148:	d11a      	bne.n	d0056180 <_printf_common+0xc8>
d005614a:	2000      	movs	r0, #0
d005614c:	e008      	b.n	d0056160 <_printf_common+0xa8>
d005614e:	2301      	movs	r3, #1
d0056150:	4652      	mov	r2, sl
d0056152:	4649      	mov	r1, r9
d0056154:	4638      	mov	r0, r7
d0056156:	47c0      	blx	r8
d0056158:	3001      	adds	r0, #1
d005615a:	d103      	bne.n	d0056164 <_printf_common+0xac>
d005615c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056160:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0056164:	3501      	adds	r5, #1
d0056166:	e7c6      	b.n	d00560f6 <_printf_common+0x3e>
d0056168:	18e1      	adds	r1, r4, r3
d005616a:	1c5a      	adds	r2, r3, #1
d005616c:	2030      	movs	r0, #48	; 0x30
d005616e:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0056172:	4422      	add	r2, r4
d0056174:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0056178:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d005617c:	3302      	adds	r3, #2
d005617e:	e7c7      	b.n	d0056110 <_printf_common+0x58>
d0056180:	2301      	movs	r3, #1
d0056182:	4622      	mov	r2, r4
d0056184:	4649      	mov	r1, r9
d0056186:	4638      	mov	r0, r7
d0056188:	47c0      	blx	r8
d005618a:	3001      	adds	r0, #1
d005618c:	d0e6      	beq.n	d005615c <_printf_common+0xa4>
d005618e:	3601      	adds	r6, #1
d0056190:	e7d9      	b.n	d0056146 <_printf_common+0x8e>
	...

d0056194 <_printf_i>:
d0056194:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0056198:	460c      	mov	r4, r1
d005619a:	4691      	mov	r9, r2
d005619c:	7e27      	ldrb	r7, [r4, #24]
d005619e:	990c      	ldr	r1, [sp, #48]	; 0x30
d00561a0:	2f78      	cmp	r7, #120	; 0x78
d00561a2:	4680      	mov	r8, r0
d00561a4:	469a      	mov	sl, r3
d00561a6:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00561aa:	d807      	bhi.n	d00561bc <_printf_i+0x28>
d00561ac:	2f62      	cmp	r7, #98	; 0x62
d00561ae:	d80a      	bhi.n	d00561c6 <_printf_i+0x32>
d00561b0:	2f00      	cmp	r7, #0
d00561b2:	f000 80d8 	beq.w	d0056366 <_printf_i+0x1d2>
d00561b6:	2f58      	cmp	r7, #88	; 0x58
d00561b8:	f000 80a3 	beq.w	d0056302 <_printf_i+0x16e>
d00561bc:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00561c0:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00561c4:	e03a      	b.n	d005623c <_printf_i+0xa8>
d00561c6:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00561ca:	2b15      	cmp	r3, #21
d00561cc:	d8f6      	bhi.n	d00561bc <_printf_i+0x28>
d00561ce:	a001      	add	r0, pc, #4	; (adr r0, d00561d4 <_printf_i+0x40>)
d00561d0:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00561d4:	d005622d 	.word	0xd005622d
d00561d8:	d0056241 	.word	0xd0056241
d00561dc:	d00561bd 	.word	0xd00561bd
d00561e0:	d00561bd 	.word	0xd00561bd
d00561e4:	d00561bd 	.word	0xd00561bd
d00561e8:	d00561bd 	.word	0xd00561bd
d00561ec:	d0056241 	.word	0xd0056241
d00561f0:	d00561bd 	.word	0xd00561bd
d00561f4:	d00561bd 	.word	0xd00561bd
d00561f8:	d00561bd 	.word	0xd00561bd
d00561fc:	d00561bd 	.word	0xd00561bd
d0056200:	d005634d 	.word	0xd005634d
d0056204:	d0056271 	.word	0xd0056271
d0056208:	d005632f 	.word	0xd005632f
d005620c:	d00561bd 	.word	0xd00561bd
d0056210:	d00561bd 	.word	0xd00561bd
d0056214:	d005636f 	.word	0xd005636f
d0056218:	d00561bd 	.word	0xd00561bd
d005621c:	d0056271 	.word	0xd0056271
d0056220:	d00561bd 	.word	0xd00561bd
d0056224:	d00561bd 	.word	0xd00561bd
d0056228:	d0056337 	.word	0xd0056337
d005622c:	680b      	ldr	r3, [r1, #0]
d005622e:	1d1a      	adds	r2, r3, #4
d0056230:	681b      	ldr	r3, [r3, #0]
d0056232:	600a      	str	r2, [r1, #0]
d0056234:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0056238:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d005623c:	2301      	movs	r3, #1
d005623e:	e0a3      	b.n	d0056388 <_printf_i+0x1f4>
d0056240:	6825      	ldr	r5, [r4, #0]
d0056242:	6808      	ldr	r0, [r1, #0]
d0056244:	062e      	lsls	r6, r5, #24
d0056246:	f100 0304 	add.w	r3, r0, #4
d005624a:	d50a      	bpl.n	d0056262 <_printf_i+0xce>
d005624c:	6805      	ldr	r5, [r0, #0]
d005624e:	600b      	str	r3, [r1, #0]
d0056250:	2d00      	cmp	r5, #0
d0056252:	da03      	bge.n	d005625c <_printf_i+0xc8>
d0056254:	232d      	movs	r3, #45	; 0x2d
d0056256:	426d      	negs	r5, r5
d0056258:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d005625c:	485e      	ldr	r0, [pc, #376]	; (d00563d8 <_printf_i+0x244>)
d005625e:	230a      	movs	r3, #10
d0056260:	e019      	b.n	d0056296 <_printf_i+0x102>
d0056262:	f015 0f40 	tst.w	r5, #64	; 0x40
d0056266:	6805      	ldr	r5, [r0, #0]
d0056268:	600b      	str	r3, [r1, #0]
d005626a:	bf18      	it	ne
d005626c:	b22d      	sxthne	r5, r5
d005626e:	e7ef      	b.n	d0056250 <_printf_i+0xbc>
d0056270:	680b      	ldr	r3, [r1, #0]
d0056272:	6825      	ldr	r5, [r4, #0]
d0056274:	1d18      	adds	r0, r3, #4
d0056276:	6008      	str	r0, [r1, #0]
d0056278:	0628      	lsls	r0, r5, #24
d005627a:	d501      	bpl.n	d0056280 <_printf_i+0xec>
d005627c:	681d      	ldr	r5, [r3, #0]
d005627e:	e002      	b.n	d0056286 <_printf_i+0xf2>
d0056280:	0669      	lsls	r1, r5, #25
d0056282:	d5fb      	bpl.n	d005627c <_printf_i+0xe8>
d0056284:	881d      	ldrh	r5, [r3, #0]
d0056286:	4854      	ldr	r0, [pc, #336]	; (d00563d8 <_printf_i+0x244>)
d0056288:	2f6f      	cmp	r7, #111	; 0x6f
d005628a:	bf0c      	ite	eq
d005628c:	2308      	moveq	r3, #8
d005628e:	230a      	movne	r3, #10
d0056290:	2100      	movs	r1, #0
d0056292:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0056296:	6866      	ldr	r6, [r4, #4]
d0056298:	60a6      	str	r6, [r4, #8]
d005629a:	2e00      	cmp	r6, #0
d005629c:	bfa2      	ittt	ge
d005629e:	6821      	ldrge	r1, [r4, #0]
d00562a0:	f021 0104 	bicge.w	r1, r1, #4
d00562a4:	6021      	strge	r1, [r4, #0]
d00562a6:	b90d      	cbnz	r5, d00562ac <_printf_i+0x118>
d00562a8:	2e00      	cmp	r6, #0
d00562aa:	d04d      	beq.n	d0056348 <_printf_i+0x1b4>
d00562ac:	4616      	mov	r6, r2
d00562ae:	fbb5 f1f3 	udiv	r1, r5, r3
d00562b2:	fb03 5711 	mls	r7, r3, r1, r5
d00562b6:	5dc7      	ldrb	r7, [r0, r7]
d00562b8:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00562bc:	462f      	mov	r7, r5
d00562be:	42bb      	cmp	r3, r7
d00562c0:	460d      	mov	r5, r1
d00562c2:	d9f4      	bls.n	d00562ae <_printf_i+0x11a>
d00562c4:	2b08      	cmp	r3, #8
d00562c6:	d10b      	bne.n	d00562e0 <_printf_i+0x14c>
d00562c8:	6823      	ldr	r3, [r4, #0]
d00562ca:	07df      	lsls	r7, r3, #31
d00562cc:	d508      	bpl.n	d00562e0 <_printf_i+0x14c>
d00562ce:	6923      	ldr	r3, [r4, #16]
d00562d0:	6861      	ldr	r1, [r4, #4]
d00562d2:	4299      	cmp	r1, r3
d00562d4:	bfde      	ittt	le
d00562d6:	2330      	movle	r3, #48	; 0x30
d00562d8:	f806 3c01 	strble.w	r3, [r6, #-1]
d00562dc:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00562e0:	1b92      	subs	r2, r2, r6
d00562e2:	6122      	str	r2, [r4, #16]
d00562e4:	f8cd a000 	str.w	sl, [sp]
d00562e8:	464b      	mov	r3, r9
d00562ea:	aa03      	add	r2, sp, #12
d00562ec:	4621      	mov	r1, r4
d00562ee:	4640      	mov	r0, r8
d00562f0:	f7ff fee2 	bl	d00560b8 <_printf_common>
d00562f4:	3001      	adds	r0, #1
d00562f6:	d14c      	bne.n	d0056392 <_printf_i+0x1fe>
d00562f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00562fc:	b004      	add	sp, #16
d00562fe:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0056302:	4835      	ldr	r0, [pc, #212]	; (d00563d8 <_printf_i+0x244>)
d0056304:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0056308:	6823      	ldr	r3, [r4, #0]
d005630a:	680e      	ldr	r6, [r1, #0]
d005630c:	061f      	lsls	r7, r3, #24
d005630e:	f856 5b04 	ldr.w	r5, [r6], #4
d0056312:	600e      	str	r6, [r1, #0]
d0056314:	d514      	bpl.n	d0056340 <_printf_i+0x1ac>
d0056316:	07d9      	lsls	r1, r3, #31
d0056318:	bf44      	itt	mi
d005631a:	f043 0320 	orrmi.w	r3, r3, #32
d005631e:	6023      	strmi	r3, [r4, #0]
d0056320:	b91d      	cbnz	r5, d005632a <_printf_i+0x196>
d0056322:	6823      	ldr	r3, [r4, #0]
d0056324:	f023 0320 	bic.w	r3, r3, #32
d0056328:	6023      	str	r3, [r4, #0]
d005632a:	2310      	movs	r3, #16
d005632c:	e7b0      	b.n	d0056290 <_printf_i+0xfc>
d005632e:	6823      	ldr	r3, [r4, #0]
d0056330:	f043 0320 	orr.w	r3, r3, #32
d0056334:	6023      	str	r3, [r4, #0]
d0056336:	2378      	movs	r3, #120	; 0x78
d0056338:	4828      	ldr	r0, [pc, #160]	; (d00563dc <_printf_i+0x248>)
d005633a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d005633e:	e7e3      	b.n	d0056308 <_printf_i+0x174>
d0056340:	065e      	lsls	r6, r3, #25
d0056342:	bf48      	it	mi
d0056344:	b2ad      	uxthmi	r5, r5
d0056346:	e7e6      	b.n	d0056316 <_printf_i+0x182>
d0056348:	4616      	mov	r6, r2
d005634a:	e7bb      	b.n	d00562c4 <_printf_i+0x130>
d005634c:	680b      	ldr	r3, [r1, #0]
d005634e:	6826      	ldr	r6, [r4, #0]
d0056350:	6960      	ldr	r0, [r4, #20]
d0056352:	1d1d      	adds	r5, r3, #4
d0056354:	600d      	str	r5, [r1, #0]
d0056356:	0635      	lsls	r5, r6, #24
d0056358:	681b      	ldr	r3, [r3, #0]
d005635a:	d501      	bpl.n	d0056360 <_printf_i+0x1cc>
d005635c:	6018      	str	r0, [r3, #0]
d005635e:	e002      	b.n	d0056366 <_printf_i+0x1d2>
d0056360:	0671      	lsls	r1, r6, #25
d0056362:	d5fb      	bpl.n	d005635c <_printf_i+0x1c8>
d0056364:	8018      	strh	r0, [r3, #0]
d0056366:	2300      	movs	r3, #0
d0056368:	6123      	str	r3, [r4, #16]
d005636a:	4616      	mov	r6, r2
d005636c:	e7ba      	b.n	d00562e4 <_printf_i+0x150>
d005636e:	680b      	ldr	r3, [r1, #0]
d0056370:	1d1a      	adds	r2, r3, #4
d0056372:	600a      	str	r2, [r1, #0]
d0056374:	681e      	ldr	r6, [r3, #0]
d0056376:	6862      	ldr	r2, [r4, #4]
d0056378:	2100      	movs	r1, #0
d005637a:	4630      	mov	r0, r6
d005637c:	f000 f930 	bl	d00565e0 <memchr>
d0056380:	b108      	cbz	r0, d0056386 <_printf_i+0x1f2>
d0056382:	1b80      	subs	r0, r0, r6
d0056384:	6060      	str	r0, [r4, #4]
d0056386:	6863      	ldr	r3, [r4, #4]
d0056388:	6123      	str	r3, [r4, #16]
d005638a:	2300      	movs	r3, #0
d005638c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0056390:	e7a8      	b.n	d00562e4 <_printf_i+0x150>
d0056392:	6923      	ldr	r3, [r4, #16]
d0056394:	4632      	mov	r2, r6
d0056396:	4649      	mov	r1, r9
d0056398:	4640      	mov	r0, r8
d005639a:	47d0      	blx	sl
d005639c:	3001      	adds	r0, #1
d005639e:	d0ab      	beq.n	d00562f8 <_printf_i+0x164>
d00563a0:	6823      	ldr	r3, [r4, #0]
d00563a2:	079b      	lsls	r3, r3, #30
d00563a4:	d413      	bmi.n	d00563ce <_printf_i+0x23a>
d00563a6:	68e0      	ldr	r0, [r4, #12]
d00563a8:	9b03      	ldr	r3, [sp, #12]
d00563aa:	4298      	cmp	r0, r3
d00563ac:	bfb8      	it	lt
d00563ae:	4618      	movlt	r0, r3
d00563b0:	e7a4      	b.n	d00562fc <_printf_i+0x168>
d00563b2:	2301      	movs	r3, #1
d00563b4:	4632      	mov	r2, r6
d00563b6:	4649      	mov	r1, r9
d00563b8:	4640      	mov	r0, r8
d00563ba:	47d0      	blx	sl
d00563bc:	3001      	adds	r0, #1
d00563be:	d09b      	beq.n	d00562f8 <_printf_i+0x164>
d00563c0:	3501      	adds	r5, #1
d00563c2:	68e3      	ldr	r3, [r4, #12]
d00563c4:	9903      	ldr	r1, [sp, #12]
d00563c6:	1a5b      	subs	r3, r3, r1
d00563c8:	42ab      	cmp	r3, r5
d00563ca:	dcf2      	bgt.n	d00563b2 <_printf_i+0x21e>
d00563cc:	e7eb      	b.n	d00563a6 <_printf_i+0x212>
d00563ce:	2500      	movs	r5, #0
d00563d0:	f104 0619 	add.w	r6, r4, #25
d00563d4:	e7f5      	b.n	d00563c2 <_printf_i+0x22e>
d00563d6:	bf00      	nop
d00563d8:	d0057a8f 	.word	0xd0057a8f
d00563dc:	d0057aa0 	.word	0xd0057aa0

d00563e0 <_read_r>:
d00563e0:	b538      	push	{r3, r4, r5, lr}
d00563e2:	4d07      	ldr	r5, [pc, #28]	; (d0056400 <_read_r+0x20>)
d00563e4:	4604      	mov	r4, r0
d00563e6:	4608      	mov	r0, r1
d00563e8:	4611      	mov	r1, r2
d00563ea:	2200      	movs	r2, #0
d00563ec:	602a      	str	r2, [r5, #0]
d00563ee:	461a      	mov	r2, r3
d00563f0:	f7f4 fe60 	bl	d004b0b4 <_read>
d00563f4:	1c43      	adds	r3, r0, #1
d00563f6:	d102      	bne.n	d00563fe <_read_r+0x1e>
d00563f8:	682b      	ldr	r3, [r5, #0]
d00563fa:	b103      	cbz	r3, d00563fe <_read_r+0x1e>
d00563fc:	6023      	str	r3, [r4, #0]
d00563fe:	bd38      	pop	{r3, r4, r5, pc}
d0056400:	d00fcaa0 	.word	0xd00fcaa0

d0056404 <__swbuf_r>:
d0056404:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0056406:	460e      	mov	r6, r1
d0056408:	4614      	mov	r4, r2
d005640a:	4605      	mov	r5, r0
d005640c:	b118      	cbz	r0, d0056416 <__swbuf_r+0x12>
d005640e:	6983      	ldr	r3, [r0, #24]
d0056410:	b90b      	cbnz	r3, d0056416 <__swbuf_r+0x12>
d0056412:	f7fe ffc1 	bl	d0055398 <__sinit>
d0056416:	4b21      	ldr	r3, [pc, #132]	; (d005649c <__swbuf_r+0x98>)
d0056418:	429c      	cmp	r4, r3
d005641a:	d12b      	bne.n	d0056474 <__swbuf_r+0x70>
d005641c:	686c      	ldr	r4, [r5, #4]
d005641e:	69a3      	ldr	r3, [r4, #24]
d0056420:	60a3      	str	r3, [r4, #8]
d0056422:	89a3      	ldrh	r3, [r4, #12]
d0056424:	071a      	lsls	r2, r3, #28
d0056426:	d52f      	bpl.n	d0056488 <__swbuf_r+0x84>
d0056428:	6923      	ldr	r3, [r4, #16]
d005642a:	b36b      	cbz	r3, d0056488 <__swbuf_r+0x84>
d005642c:	6923      	ldr	r3, [r4, #16]
d005642e:	6820      	ldr	r0, [r4, #0]
d0056430:	1ac0      	subs	r0, r0, r3
d0056432:	6963      	ldr	r3, [r4, #20]
d0056434:	b2f6      	uxtb	r6, r6
d0056436:	4283      	cmp	r3, r0
d0056438:	4637      	mov	r7, r6
d005643a:	dc04      	bgt.n	d0056446 <__swbuf_r+0x42>
d005643c:	4621      	mov	r1, r4
d005643e:	4628      	mov	r0, r5
d0056440:	f7fe ff16 	bl	d0055270 <_fflush_r>
d0056444:	bb30      	cbnz	r0, d0056494 <__swbuf_r+0x90>
d0056446:	68a3      	ldr	r3, [r4, #8]
d0056448:	3b01      	subs	r3, #1
d005644a:	60a3      	str	r3, [r4, #8]
d005644c:	6823      	ldr	r3, [r4, #0]
d005644e:	1c5a      	adds	r2, r3, #1
d0056450:	6022      	str	r2, [r4, #0]
d0056452:	701e      	strb	r6, [r3, #0]
d0056454:	6963      	ldr	r3, [r4, #20]
d0056456:	3001      	adds	r0, #1
d0056458:	4283      	cmp	r3, r0
d005645a:	d004      	beq.n	d0056466 <__swbuf_r+0x62>
d005645c:	89a3      	ldrh	r3, [r4, #12]
d005645e:	07db      	lsls	r3, r3, #31
d0056460:	d506      	bpl.n	d0056470 <__swbuf_r+0x6c>
d0056462:	2e0a      	cmp	r6, #10
d0056464:	d104      	bne.n	d0056470 <__swbuf_r+0x6c>
d0056466:	4621      	mov	r1, r4
d0056468:	4628      	mov	r0, r5
d005646a:	f7fe ff01 	bl	d0055270 <_fflush_r>
d005646e:	b988      	cbnz	r0, d0056494 <__swbuf_r+0x90>
d0056470:	4638      	mov	r0, r7
d0056472:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0056474:	4b0a      	ldr	r3, [pc, #40]	; (d00564a0 <__swbuf_r+0x9c>)
d0056476:	429c      	cmp	r4, r3
d0056478:	d101      	bne.n	d005647e <__swbuf_r+0x7a>
d005647a:	68ac      	ldr	r4, [r5, #8]
d005647c:	e7cf      	b.n	d005641e <__swbuf_r+0x1a>
d005647e:	4b09      	ldr	r3, [pc, #36]	; (d00564a4 <__swbuf_r+0xa0>)
d0056480:	429c      	cmp	r4, r3
d0056482:	bf08      	it	eq
d0056484:	68ec      	ldreq	r4, [r5, #12]
d0056486:	e7ca      	b.n	d005641e <__swbuf_r+0x1a>
d0056488:	4621      	mov	r1, r4
d005648a:	4628      	mov	r0, r5
d005648c:	f000 f80c 	bl	d00564a8 <__swsetup_r>
d0056490:	2800      	cmp	r0, #0
d0056492:	d0cb      	beq.n	d005642c <__swbuf_r+0x28>
d0056494:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0056498:	e7ea      	b.n	d0056470 <__swbuf_r+0x6c>
d005649a:	bf00      	nop
d005649c:	d0057988 	.word	0xd0057988
d00564a0:	d00579a8 	.word	0xd00579a8
d00564a4:	d0057968 	.word	0xd0057968

d00564a8 <__swsetup_r>:
d00564a8:	4b32      	ldr	r3, [pc, #200]	; (d0056574 <__swsetup_r+0xcc>)
d00564aa:	b570      	push	{r4, r5, r6, lr}
d00564ac:	681d      	ldr	r5, [r3, #0]
d00564ae:	4606      	mov	r6, r0
d00564b0:	460c      	mov	r4, r1
d00564b2:	b125      	cbz	r5, d00564be <__swsetup_r+0x16>
d00564b4:	69ab      	ldr	r3, [r5, #24]
d00564b6:	b913      	cbnz	r3, d00564be <__swsetup_r+0x16>
d00564b8:	4628      	mov	r0, r5
d00564ba:	f7fe ff6d 	bl	d0055398 <__sinit>
d00564be:	4b2e      	ldr	r3, [pc, #184]	; (d0056578 <__swsetup_r+0xd0>)
d00564c0:	429c      	cmp	r4, r3
d00564c2:	d10f      	bne.n	d00564e4 <__swsetup_r+0x3c>
d00564c4:	686c      	ldr	r4, [r5, #4]
d00564c6:	89a3      	ldrh	r3, [r4, #12]
d00564c8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00564cc:	0719      	lsls	r1, r3, #28
d00564ce:	d42c      	bmi.n	d005652a <__swsetup_r+0x82>
d00564d0:	06dd      	lsls	r5, r3, #27
d00564d2:	d411      	bmi.n	d00564f8 <__swsetup_r+0x50>
d00564d4:	2309      	movs	r3, #9
d00564d6:	6033      	str	r3, [r6, #0]
d00564d8:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00564dc:	81a3      	strh	r3, [r4, #12]
d00564de:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00564e2:	e03e      	b.n	d0056562 <__swsetup_r+0xba>
d00564e4:	4b25      	ldr	r3, [pc, #148]	; (d005657c <__swsetup_r+0xd4>)
d00564e6:	429c      	cmp	r4, r3
d00564e8:	d101      	bne.n	d00564ee <__swsetup_r+0x46>
d00564ea:	68ac      	ldr	r4, [r5, #8]
d00564ec:	e7eb      	b.n	d00564c6 <__swsetup_r+0x1e>
d00564ee:	4b24      	ldr	r3, [pc, #144]	; (d0056580 <__swsetup_r+0xd8>)
d00564f0:	429c      	cmp	r4, r3
d00564f2:	bf08      	it	eq
d00564f4:	68ec      	ldreq	r4, [r5, #12]
d00564f6:	e7e6      	b.n	d00564c6 <__swsetup_r+0x1e>
d00564f8:	0758      	lsls	r0, r3, #29
d00564fa:	d512      	bpl.n	d0056522 <__swsetup_r+0x7a>
d00564fc:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00564fe:	b141      	cbz	r1, d0056512 <__swsetup_r+0x6a>
d0056500:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0056504:	4299      	cmp	r1, r3
d0056506:	d002      	beq.n	d005650e <__swsetup_r+0x66>
d0056508:	4630      	mov	r0, r6
d005650a:	f7ff f81b 	bl	d0055544 <_free_r>
d005650e:	2300      	movs	r3, #0
d0056510:	6363      	str	r3, [r4, #52]	; 0x34
d0056512:	89a3      	ldrh	r3, [r4, #12]
d0056514:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0056518:	81a3      	strh	r3, [r4, #12]
d005651a:	2300      	movs	r3, #0
d005651c:	6063      	str	r3, [r4, #4]
d005651e:	6923      	ldr	r3, [r4, #16]
d0056520:	6023      	str	r3, [r4, #0]
d0056522:	89a3      	ldrh	r3, [r4, #12]
d0056524:	f043 0308 	orr.w	r3, r3, #8
d0056528:	81a3      	strh	r3, [r4, #12]
d005652a:	6923      	ldr	r3, [r4, #16]
d005652c:	b94b      	cbnz	r3, d0056542 <__swsetup_r+0x9a>
d005652e:	89a3      	ldrh	r3, [r4, #12]
d0056530:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0056534:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0056538:	d003      	beq.n	d0056542 <__swsetup_r+0x9a>
d005653a:	4621      	mov	r1, r4
d005653c:	4630      	mov	r0, r6
d005653e:	f7ff fa93 	bl	d0055a68 <__smakebuf_r>
d0056542:	89a0      	ldrh	r0, [r4, #12]
d0056544:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0056548:	f010 0301 	ands.w	r3, r0, #1
d005654c:	d00a      	beq.n	d0056564 <__swsetup_r+0xbc>
d005654e:	2300      	movs	r3, #0
d0056550:	60a3      	str	r3, [r4, #8]
d0056552:	6963      	ldr	r3, [r4, #20]
d0056554:	425b      	negs	r3, r3
d0056556:	61a3      	str	r3, [r4, #24]
d0056558:	6923      	ldr	r3, [r4, #16]
d005655a:	b943      	cbnz	r3, d005656e <__swsetup_r+0xc6>
d005655c:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0056560:	d1ba      	bne.n	d00564d8 <__swsetup_r+0x30>
d0056562:	bd70      	pop	{r4, r5, r6, pc}
d0056564:	0781      	lsls	r1, r0, #30
d0056566:	bf58      	it	pl
d0056568:	6963      	ldrpl	r3, [r4, #20]
d005656a:	60a3      	str	r3, [r4, #8]
d005656c:	e7f4      	b.n	d0056558 <__swsetup_r+0xb0>
d005656e:	2000      	movs	r0, #0
d0056570:	e7f7      	b.n	d0056562 <__swsetup_r+0xba>
d0056572:	bf00      	nop
d0056574:	d005a2f4 	.word	0xd005a2f4
d0056578:	d0057988 	.word	0xd0057988
d005657c:	d00579a8 	.word	0xd00579a8
d0056580:	d0057968 	.word	0xd0057968

d0056584 <abort>:
d0056584:	b508      	push	{r3, lr}
d0056586:	2006      	movs	r0, #6
d0056588:	f000 f8c4 	bl	d0056714 <raise>
d005658c:	2001      	movs	r0, #1
d005658e:	f7f4 fdc9 	bl	d004b124 <_exit>
	...

d0056594 <_fstat_r>:
d0056594:	b538      	push	{r3, r4, r5, lr}
d0056596:	4d07      	ldr	r5, [pc, #28]	; (d00565b4 <_fstat_r+0x20>)
d0056598:	2300      	movs	r3, #0
d005659a:	4604      	mov	r4, r0
d005659c:	4608      	mov	r0, r1
d005659e:	4611      	mov	r1, r2
d00565a0:	602b      	str	r3, [r5, #0]
d00565a2:	f7f4 fd95 	bl	d004b0d0 <_fstat>
d00565a6:	1c43      	adds	r3, r0, #1
d00565a8:	d102      	bne.n	d00565b0 <_fstat_r+0x1c>
d00565aa:	682b      	ldr	r3, [r5, #0]
d00565ac:	b103      	cbz	r3, d00565b0 <_fstat_r+0x1c>
d00565ae:	6023      	str	r3, [r4, #0]
d00565b0:	bd38      	pop	{r3, r4, r5, pc}
d00565b2:	bf00      	nop
d00565b4:	d00fcaa0 	.word	0xd00fcaa0

d00565b8 <_isatty_r>:
d00565b8:	b538      	push	{r3, r4, r5, lr}
d00565ba:	4d06      	ldr	r5, [pc, #24]	; (d00565d4 <_isatty_r+0x1c>)
d00565bc:	2300      	movs	r3, #0
d00565be:	4604      	mov	r4, r0
d00565c0:	4608      	mov	r0, r1
d00565c2:	602b      	str	r3, [r5, #0]
d00565c4:	f7f4 fdac 	bl	d004b120 <_isatty>
d00565c8:	1c43      	adds	r3, r0, #1
d00565ca:	d102      	bne.n	d00565d2 <_isatty_r+0x1a>
d00565cc:	682b      	ldr	r3, [r5, #0]
d00565ce:	b103      	cbz	r3, d00565d2 <_isatty_r+0x1a>
d00565d0:	6023      	str	r3, [r4, #0]
d00565d2:	bd38      	pop	{r3, r4, r5, pc}
d00565d4:	d00fcaa0 	.word	0xd00fcaa0
	...

d00565e0 <memchr>:
d00565e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00565e4:	2a10      	cmp	r2, #16
d00565e6:	db2b      	blt.n	d0056640 <memchr+0x60>
d00565e8:	f010 0f07 	tst.w	r0, #7
d00565ec:	d008      	beq.n	d0056600 <memchr+0x20>
d00565ee:	f810 3b01 	ldrb.w	r3, [r0], #1
d00565f2:	3a01      	subs	r2, #1
d00565f4:	428b      	cmp	r3, r1
d00565f6:	d02d      	beq.n	d0056654 <memchr+0x74>
d00565f8:	f010 0f07 	tst.w	r0, #7
d00565fc:	b342      	cbz	r2, d0056650 <memchr+0x70>
d00565fe:	d1f6      	bne.n	d00565ee <memchr+0xe>
d0056600:	b4f0      	push	{r4, r5, r6, r7}
d0056602:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0056606:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d005660a:	f022 0407 	bic.w	r4, r2, #7
d005660e:	f07f 0700 	mvns.w	r7, #0
d0056612:	2300      	movs	r3, #0
d0056614:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0056618:	3c08      	subs	r4, #8
d005661a:	ea85 0501 	eor.w	r5, r5, r1
d005661e:	ea86 0601 	eor.w	r6, r6, r1
d0056622:	fa85 f547 	uadd8	r5, r5, r7
d0056626:	faa3 f587 	sel	r5, r3, r7
d005662a:	fa86 f647 	uadd8	r6, r6, r7
d005662e:	faa5 f687 	sel	r6, r5, r7
d0056632:	b98e      	cbnz	r6, d0056658 <memchr+0x78>
d0056634:	d1ee      	bne.n	d0056614 <memchr+0x34>
d0056636:	bcf0      	pop	{r4, r5, r6, r7}
d0056638:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005663c:	f002 0207 	and.w	r2, r2, #7
d0056640:	b132      	cbz	r2, d0056650 <memchr+0x70>
d0056642:	f810 3b01 	ldrb.w	r3, [r0], #1
d0056646:	3a01      	subs	r2, #1
d0056648:	ea83 0301 	eor.w	r3, r3, r1
d005664c:	b113      	cbz	r3, d0056654 <memchr+0x74>
d005664e:	d1f8      	bne.n	d0056642 <memchr+0x62>
d0056650:	2000      	movs	r0, #0
d0056652:	4770      	bx	lr
d0056654:	3801      	subs	r0, #1
d0056656:	4770      	bx	lr
d0056658:	2d00      	cmp	r5, #0
d005665a:	bf06      	itte	eq
d005665c:	4635      	moveq	r5, r6
d005665e:	3803      	subeq	r0, #3
d0056660:	3807      	subne	r0, #7
d0056662:	f015 0f01 	tst.w	r5, #1
d0056666:	d107      	bne.n	d0056678 <memchr+0x98>
d0056668:	3001      	adds	r0, #1
d005666a:	f415 7f80 	tst.w	r5, #256	; 0x100
d005666e:	bf02      	ittt	eq
d0056670:	3001      	addeq	r0, #1
d0056672:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0056676:	3001      	addeq	r0, #1
d0056678:	bcf0      	pop	{r4, r5, r6, r7}
d005667a:	3801      	subs	r0, #1
d005667c:	4770      	bx	lr
d005667e:	bf00      	nop

d0056680 <memmove>:
d0056680:	4288      	cmp	r0, r1
d0056682:	b510      	push	{r4, lr}
d0056684:	eb01 0402 	add.w	r4, r1, r2
d0056688:	d902      	bls.n	d0056690 <memmove+0x10>
d005668a:	4284      	cmp	r4, r0
d005668c:	4623      	mov	r3, r4
d005668e:	d807      	bhi.n	d00566a0 <memmove+0x20>
d0056690:	1e43      	subs	r3, r0, #1
d0056692:	42a1      	cmp	r1, r4
d0056694:	d008      	beq.n	d00566a8 <memmove+0x28>
d0056696:	f811 2b01 	ldrb.w	r2, [r1], #1
d005669a:	f803 2f01 	strb.w	r2, [r3, #1]!
d005669e:	e7f8      	b.n	d0056692 <memmove+0x12>
d00566a0:	4402      	add	r2, r0
d00566a2:	4601      	mov	r1, r0
d00566a4:	428a      	cmp	r2, r1
d00566a6:	d100      	bne.n	d00566aa <memmove+0x2a>
d00566a8:	bd10      	pop	{r4, pc}
d00566aa:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00566ae:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00566b2:	e7f7      	b.n	d00566a4 <memmove+0x24>

d00566b4 <_malloc_usable_size_r>:
d00566b4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00566b8:	1f18      	subs	r0, r3, #4
d00566ba:	2b00      	cmp	r3, #0
d00566bc:	bfbc      	itt	lt
d00566be:	580b      	ldrlt	r3, [r1, r0]
d00566c0:	18c0      	addlt	r0, r0, r3
d00566c2:	4770      	bx	lr

d00566c4 <_raise_r>:
d00566c4:	291f      	cmp	r1, #31
d00566c6:	b538      	push	{r3, r4, r5, lr}
d00566c8:	4604      	mov	r4, r0
d00566ca:	460d      	mov	r5, r1
d00566cc:	d904      	bls.n	d00566d8 <_raise_r+0x14>
d00566ce:	2316      	movs	r3, #22
d00566d0:	6003      	str	r3, [r0, #0]
d00566d2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00566d6:	bd38      	pop	{r3, r4, r5, pc}
d00566d8:	6c42      	ldr	r2, [r0, #68]	; 0x44
d00566da:	b112      	cbz	r2, d00566e2 <_raise_r+0x1e>
d00566dc:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d00566e0:	b94b      	cbnz	r3, d00566f6 <_raise_r+0x32>
d00566e2:	4620      	mov	r0, r4
d00566e4:	f000 f830 	bl	d0056748 <_getpid_r>
d00566e8:	462a      	mov	r2, r5
d00566ea:	4601      	mov	r1, r0
d00566ec:	4620      	mov	r0, r4
d00566ee:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d00566f2:	f000 b817 	b.w	d0056724 <_kill_r>
d00566f6:	2b01      	cmp	r3, #1
d00566f8:	d00a      	beq.n	d0056710 <_raise_r+0x4c>
d00566fa:	1c59      	adds	r1, r3, #1
d00566fc:	d103      	bne.n	d0056706 <_raise_r+0x42>
d00566fe:	2316      	movs	r3, #22
d0056700:	6003      	str	r3, [r0, #0]
d0056702:	2001      	movs	r0, #1
d0056704:	e7e7      	b.n	d00566d6 <_raise_r+0x12>
d0056706:	2400      	movs	r4, #0
d0056708:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d005670c:	4628      	mov	r0, r5
d005670e:	4798      	blx	r3
d0056710:	2000      	movs	r0, #0
d0056712:	e7e0      	b.n	d00566d6 <_raise_r+0x12>

d0056714 <raise>:
d0056714:	4b02      	ldr	r3, [pc, #8]	; (d0056720 <raise+0xc>)
d0056716:	4601      	mov	r1, r0
d0056718:	6818      	ldr	r0, [r3, #0]
d005671a:	f7ff bfd3 	b.w	d00566c4 <_raise_r>
d005671e:	bf00      	nop
d0056720:	d005a2f4 	.word	0xd005a2f4

d0056724 <_kill_r>:
d0056724:	b538      	push	{r3, r4, r5, lr}
d0056726:	4d07      	ldr	r5, [pc, #28]	; (d0056744 <_kill_r+0x20>)
d0056728:	2300      	movs	r3, #0
d005672a:	4604      	mov	r4, r0
d005672c:	4608      	mov	r0, r1
d005672e:	4611      	mov	r1, r2
d0056730:	602b      	str	r3, [r5, #0]
d0056732:	f7f4 fcfb 	bl	d004b12c <_kill>
d0056736:	1c43      	adds	r3, r0, #1
d0056738:	d102      	bne.n	d0056740 <_kill_r+0x1c>
d005673a:	682b      	ldr	r3, [r5, #0]
d005673c:	b103      	cbz	r3, d0056740 <_kill_r+0x1c>
d005673e:	6023      	str	r3, [r4, #0]
d0056740:	bd38      	pop	{r3, r4, r5, pc}
d0056742:	bf00      	nop
d0056744:	d00fcaa0 	.word	0xd00fcaa0

d0056748 <_getpid_r>:
d0056748:	f7f4 bcee 	b.w	d004b128 <_getpid>

d005674c <sinf_poly>:
d005674c:	07cb      	lsls	r3, r1, #31
d005674e:	d412      	bmi.n	d0056776 <sinf_poly+0x2a>
d0056750:	ee21 6b00 	vmul.f64	d6, d1, d0
d0056754:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0056758:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005675c:	eea5 7b01 	vfma.f64	d7, d5, d1
d0056760:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0056764:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056768:	eea5 0b06 	vfma.f64	d0, d5, d6
d005676c:	eea7 0b01 	vfma.f64	d0, d7, d1
d0056770:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056774:	4770      	bx	lr
d0056776:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005677a:	ee21 6b01 	vmul.f64	d6, d1, d1
d005677e:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0056782:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0056786:	eea1 7b05 	vfma.f64	d7, d1, d5
d005678a:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005678e:	eea1 0b05 	vfma.f64	d0, d1, d5
d0056792:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0056796:	ee21 1b06 	vmul.f64	d1, d1, d6
d005679a:	eea6 0b05 	vfma.f64	d0, d6, d5
d005679e:	e7e5      	b.n	d005676c <sinf_poly+0x20>

d00567a0 <cosf>:
d00567a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00567a2:	ee10 4a10 	vmov	r4, s0
d00567a6:	f3c4 530a 	ubfx	r3, r4, #20, #11
d00567aa:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d00567ae:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00567b2:	d20c      	bcs.n	d00567ce <cosf+0x2e>
d00567b4:	ee26 1b06 	vmul.f64	d1, d6, d6
d00567b8:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d00567bc:	d378      	bcc.n	d00568b0 <cosf+0x110>
d00567be:	eeb0 0b46 	vmov.f64	d0, d6
d00567c2:	483f      	ldr	r0, [pc, #252]	; (d00568c0 <cosf+0x120>)
d00567c4:	2101      	movs	r1, #1
d00567c6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00567ca:	f7ff bfbf 	b.w	d005674c <sinf_poly>
d00567ce:	f240 422e 	movw	r2, #1070	; 0x42e
d00567d2:	4293      	cmp	r3, r2
d00567d4:	d826      	bhi.n	d0056824 <cosf+0x84>
d00567d6:	4b3a      	ldr	r3, [pc, #232]	; (d00568c0 <cosf+0x120>)
d00567d8:	ed93 7b08 	vldr	d7, [r3, #32]
d00567dc:	ee26 7b07 	vmul.f64	d7, d6, d7
d00567e0:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00567e4:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00567e8:	ee17 1a90 	vmov	r1, s15
d00567ec:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00567f0:	1609      	asrs	r1, r1, #24
d00567f2:	ee07 1a90 	vmov	s15, r1
d00567f6:	f001 0203 	and.w	r2, r1, #3
d00567fa:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00567fe:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0056802:	ed92 0b00 	vldr	d0, [r2]
d0056806:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d005680a:	f011 0f02 	tst.w	r1, #2
d005680e:	eea5 6b47 	vfms.f64	d6, d5, d7
d0056812:	f081 0101 	eor.w	r1, r1, #1
d0056816:	bf08      	it	eq
d0056818:	4618      	moveq	r0, r3
d005681a:	ee26 1b06 	vmul.f64	d1, d6, d6
d005681e:	ee20 0b06 	vmul.f64	d0, d0, d6
d0056822:	e7d0      	b.n	d00567c6 <cosf+0x26>
d0056824:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056828:	d23e      	bcs.n	d00568a8 <cosf+0x108>
d005682a:	4b26      	ldr	r3, [pc, #152]	; (d00568c4 <cosf+0x124>)
d005682c:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0056830:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0056834:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0056838:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005683c:	6a06      	ldr	r6, [r0, #32]
d005683e:	6900      	ldr	r0, [r0, #16]
d0056840:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0056844:	40a9      	lsls	r1, r5
d0056846:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005684a:	fba1 6706 	umull	r6, r7, r1, r6
d005684e:	fb05 f301 	mul.w	r3, r5, r1
d0056852:	463a      	mov	r2, r7
d0056854:	fbe0 2301 	umlal	r2, r3, r0, r1
d0056858:	1c11      	adds	r1, r2, #0
d005685a:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005685e:	2000      	movs	r0, #0
d0056860:	1a10      	subs	r0, r2, r0
d0056862:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0056866:	eb63 0101 	sbc.w	r1, r3, r1
d005686a:	f000 fdd5 	bl	d0057418 <__aeabi_l2d>
d005686e:	0fb5      	lsrs	r5, r6, #30
d0056870:	4b13      	ldr	r3, [pc, #76]	; (d00568c0 <cosf+0x120>)
d0056872:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0056876:	ed9f 0b10 	vldr	d0, [pc, #64]	; d00568b8 <cosf+0x118>
d005687a:	ec41 0b17 	vmov	d7, r0, r1
d005687e:	f004 0203 	and.w	r2, r4, #3
d0056882:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0056886:	ee27 0b00 	vmul.f64	d0, d7, d0
d005688a:	ed92 7b00 	vldr	d7, [r2]
d005688e:	ee20 1b00 	vmul.f64	d1, d0, d0
d0056892:	f014 0f02 	tst.w	r4, #2
d0056896:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005689a:	f085 0101 	eor.w	r1, r5, #1
d005689e:	bf08      	it	eq
d00568a0:	4618      	moveq	r0, r3
d00568a2:	ee27 0b00 	vmul.f64	d0, d7, d0
d00568a6:	e78e      	b.n	d00567c6 <cosf+0x26>
d00568a8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00568ac:	f000 b844 	b.w	d0056938 <__math_invalidf>
d00568b0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00568b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00568b6:	bf00      	nop
d00568b8:	54442d18 	.word	0x54442d18
d00568bc:	3c1921fb 	.word	0x3c1921fb
d00568c0:	d0057d80 	.word	0xd0057d80
d00568c4:	d0057d20 	.word	0xd0057d20

d00568c8 <with_errnof>:
d00568c8:	b513      	push	{r0, r1, r4, lr}
d00568ca:	4604      	mov	r4, r0
d00568cc:	ed8d 0a01 	vstr	s0, [sp, #4]
d00568d0:	f7fe fbce 	bl	d0055070 <__errno>
d00568d4:	ed9d 0a01 	vldr	s0, [sp, #4]
d00568d8:	6004      	str	r4, [r0, #0]
d00568da:	b002      	add	sp, #8
d00568dc:	bd10      	pop	{r4, pc}

d00568de <xflowf>:
d00568de:	b130      	cbz	r0, d00568ee <xflowf+0x10>
d00568e0:	eef1 7a40 	vneg.f32	s15, s0
d00568e4:	ee27 0a80 	vmul.f32	s0, s15, s0
d00568e8:	2022      	movs	r0, #34	; 0x22
d00568ea:	f7ff bfed 	b.w	d00568c8 <with_errnof>
d00568ee:	eef0 7a40 	vmov.f32	s15, s0
d00568f2:	e7f7      	b.n	d00568e4 <xflowf+0x6>

d00568f4 <__math_uflowf>:
d00568f4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00568fc <__math_uflowf+0x8>
d00568f8:	f7ff bff1 	b.w	d00568de <xflowf>
d00568fc:	10000000 	.word	0x10000000

d0056900 <__math_may_uflowf>:
d0056900:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056908 <__math_may_uflowf+0x8>
d0056904:	f7ff bfeb 	b.w	d00568de <xflowf>
d0056908:	1a200000 	.word	0x1a200000

d005690c <__math_oflowf>:
d005690c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0056914 <__math_oflowf+0x8>
d0056910:	f7ff bfe5 	b.w	d00568de <xflowf>
d0056914:	70000000 	.word	0x70000000

d0056918 <__math_divzerof>:
d0056918:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005691c:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0056920:	2800      	cmp	r0, #0
d0056922:	fe40 7a27 	vseleq.f32	s15, s0, s15
d0056926:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0056934 <__math_divzerof+0x1c>
d005692a:	2022      	movs	r0, #34	; 0x22
d005692c:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0056930:	f7ff bfca 	b.w	d00568c8 <with_errnof>
d0056934:	00000000 	.word	0x00000000

d0056938 <__math_invalidf>:
d0056938:	eef0 7a40 	vmov.f32	s15, s0
d005693c:	ee30 7a40 	vsub.f32	s14, s0, s0
d0056940:	eef4 7a67 	vcmp.f32	s15, s15
d0056944:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056948:	ee87 0a07 	vdiv.f32	s0, s14, s14
d005694c:	d602      	bvs.n	d0056954 <__math_invalidf+0x1c>
d005694e:	2021      	movs	r0, #33	; 0x21
d0056950:	f7ff bfba 	b.w	d00568c8 <with_errnof>
d0056954:	4770      	bx	lr
	...

d0056958 <expf>:
d0056958:	ee10 2a10 	vmov	r2, s0
d005695c:	b470      	push	{r4, r5, r6}
d005695e:	f3c2 530a 	ubfx	r3, r2, #20, #11
d0056962:	f240 442a 	movw	r4, #1066	; 0x42a
d0056966:	42a3      	cmp	r3, r4
d0056968:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005696c:	d92a      	bls.n	d00569c4 <expf+0x6c>
d005696e:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d0056972:	d059      	beq.n	d0056a28 <expf+0xd0>
d0056974:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056978:	d303      	bcc.n	d0056982 <expf+0x2a>
d005697a:	ee30 0a00 	vadd.f32	s0, s0, s0
d005697e:	bc70      	pop	{r4, r5, r6}
d0056980:	4770      	bx	lr
d0056982:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0056a30 <expf+0xd8>
d0056986:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005698a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005698e:	dd03      	ble.n	d0056998 <expf+0x40>
d0056990:	bc70      	pop	{r4, r5, r6}
d0056992:	2000      	movs	r0, #0
d0056994:	f7ff bfba 	b.w	d005690c <__math_oflowf>
d0056998:	eddf 7a26 	vldr	s15, [pc, #152]	; d0056a34 <expf+0xdc>
d005699c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00569a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00569a4:	d503      	bpl.n	d00569ae <expf+0x56>
d00569a6:	bc70      	pop	{r4, r5, r6}
d00569a8:	2000      	movs	r0, #0
d00569aa:	f7ff bfa3 	b.w	d00568f4 <__math_uflowf>
d00569ae:	eddf 7a22 	vldr	s15, [pc, #136]	; d0056a38 <expf+0xe0>
d00569b2:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00569b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00569ba:	d503      	bpl.n	d00569c4 <expf+0x6c>
d00569bc:	bc70      	pop	{r4, r5, r6}
d00569be:	2000      	movs	r0, #0
d00569c0:	f7ff bf9e 	b.w	d0056900 <__math_may_uflowf>
d00569c4:	4b1d      	ldr	r3, [pc, #116]	; (d0056a3c <expf+0xe4>)
d00569c6:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d00569ca:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d00569ce:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d00569d2:	eeb0 7b44 	vmov.f64	d7, d4
d00569d6:	eea5 7b06 	vfma.f64	d7, d5, d6
d00569da:	ee17 5a10 	vmov	r5, s14
d00569de:	ee37 7b44 	vsub.f64	d7, d7, d4
d00569e2:	f005 021f 	and.w	r2, r5, #31
d00569e6:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00569ea:	e9d2 4600 	ldrd	r4, r6, [r2]
d00569ee:	ee95 7b06 	vfnms.f64	d7, d5, d6
d00569f2:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d00569f6:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d00569fa:	eea4 0b07 	vfma.f64	d0, d4, d7
d00569fe:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d0056a02:	2300      	movs	r3, #0
d0056a04:	1918      	adds	r0, r3, r4
d0056a06:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d0056a0a:	eb42 0106 	adc.w	r1, r2, r6
d0056a0e:	eea5 6b07 	vfma.f64	d6, d5, d7
d0056a12:	ee27 5b07 	vmul.f64	d5, d7, d7
d0056a16:	ec41 0b17 	vmov	d7, r0, r1
d0056a1a:	eea6 0b05 	vfma.f64	d0, d6, d5
d0056a1e:	ee20 0b07 	vmul.f64	d0, d0, d7
d0056a22:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056a26:	e7aa      	b.n	d005697e <expf+0x26>
d0056a28:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0056a40 <expf+0xe8>
d0056a2c:	e7a7      	b.n	d005697e <expf+0x26>
d0056a2e:	bf00      	nop
d0056a30:	42b17217 	.word	0x42b17217
d0056a34:	c2cff1b4 	.word	0xc2cff1b4
d0056a38:	c2ce8ecf 	.word	0xc2ce8ecf
d0056a3c:	d0057ab8 	.word	0xd0057ab8
d0056a40:	00000000 	.word	0x00000000

d0056a44 <logf>:
d0056a44:	ee10 3a10 	vmov	r3, s0
d0056a48:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d0056a4c:	b410      	push	{r4}
d0056a4e:	d055      	beq.n	d0056afc <logf+0xb8>
d0056a50:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0056a54:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0056a58:	d31a      	bcc.n	d0056a90 <logf+0x4c>
d0056a5a:	005a      	lsls	r2, r3, #1
d0056a5c:	d104      	bne.n	d0056a68 <logf+0x24>
d0056a5e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056a62:	2001      	movs	r0, #1
d0056a64:	f7ff bf58 	b.w	d0056918 <__math_divzerof>
d0056a68:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056a6c:	d043      	beq.n	d0056af6 <logf+0xb2>
d0056a6e:	2b00      	cmp	r3, #0
d0056a70:	db02      	blt.n	d0056a78 <logf+0x34>
d0056a72:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0056a76:	d303      	bcc.n	d0056a80 <logf+0x3c>
d0056a78:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056a7c:	f7ff bf5c 	b.w	d0056938 <__math_invalidf>
d0056a80:	eddf 7a20 	vldr	s15, [pc, #128]	; d0056b04 <logf+0xc0>
d0056a84:	ee20 0a27 	vmul.f32	s0, s0, s15
d0056a88:	ee10 3a10 	vmov	r3, s0
d0056a8c:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0056a90:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0056a94:	491c      	ldr	r1, [pc, #112]	; (d0056b08 <logf+0xc4>)
d0056a96:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d0056a9a:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d0056a9e:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0056aa2:	0dd4      	lsrs	r4, r2, #23
d0056aa4:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0056aa8:	05e4      	lsls	r4, r4, #23
d0056aaa:	ed90 6b00 	vldr	d6, [r0]
d0056aae:	1b1b      	subs	r3, r3, r4
d0056ab0:	ee07 3a90 	vmov	s15, r3
d0056ab4:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0056ab8:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0056abc:	15d2      	asrs	r2, r2, #23
d0056abe:	eea6 0b07 	vfma.f64	d0, d6, d7
d0056ac2:	ed90 6b02 	vldr	d6, [r0, #8]
d0056ac6:	ee07 2a90 	vmov	s15, r2
d0056aca:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0056ace:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d0056ad2:	eea7 6b05 	vfma.f64	d6, d7, d5
d0056ad6:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d0056ada:	ee20 5b00 	vmul.f64	d5, d0, d0
d0056ade:	eea4 7b00 	vfma.f64	d7, d4, d0
d0056ae2:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d0056ae6:	ee30 0b06 	vadd.f64	d0, d0, d6
d0056aea:	eea4 7b05 	vfma.f64	d7, d4, d5
d0056aee:	eea5 0b07 	vfma.f64	d0, d5, d7
d0056af2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056af6:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056afa:	4770      	bx	lr
d0056afc:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0056b0c <logf+0xc8>
d0056b00:	e7f9      	b.n	d0056af6 <logf+0xb2>
d0056b02:	bf00      	nop
d0056b04:	4b000000 	.word	0x4b000000
d0056b08:	d0057c00 	.word	0xd0057c00
d0056b0c:	00000000 	.word	0x00000000

d0056b10 <sinf_poly>:
d0056b10:	07cb      	lsls	r3, r1, #31
d0056b12:	d412      	bmi.n	d0056b3a <sinf_poly+0x2a>
d0056b14:	ee21 6b00 	vmul.f64	d6, d1, d0
d0056b18:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0056b1c:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0056b20:	eea5 7b01 	vfma.f64	d7, d5, d1
d0056b24:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0056b28:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056b2c:	eea5 0b06 	vfma.f64	d0, d5, d6
d0056b30:	eea7 0b01 	vfma.f64	d0, d7, d1
d0056b34:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0056b38:	4770      	bx	lr
d0056b3a:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0056b3e:	ee21 6b01 	vmul.f64	d6, d1, d1
d0056b42:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0056b46:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0056b4a:	eea1 7b05 	vfma.f64	d7, d1, d5
d0056b4e:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0056b52:	eea1 0b05 	vfma.f64	d0, d1, d5
d0056b56:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0056b5a:	ee21 1b06 	vmul.f64	d1, d1, d6
d0056b5e:	eea6 0b05 	vfma.f64	d0, d6, d5
d0056b62:	e7e5      	b.n	d0056b30 <sinf_poly+0x20>
d0056b64:	0000      	movs	r0, r0
	...

d0056b68 <sinf>:
d0056b68:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d0056b6a:	ee10 4a10 	vmov	r4, s0
d0056b6e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0056b72:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0056b76:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0056b7a:	eef0 7a40 	vmov.f32	s15, s0
d0056b7e:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0056b82:	d218      	bcs.n	d0056bb6 <sinf+0x4e>
d0056b84:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056b88:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0056b8c:	d20a      	bcs.n	d0056ba4 <sinf+0x3c>
d0056b8e:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0056b92:	d103      	bne.n	d0056b9c <sinf+0x34>
d0056b94:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0056b98:	ed8d 1a01 	vstr	s2, [sp, #4]
d0056b9c:	eeb0 0a67 	vmov.f32	s0, s15
d0056ba0:	b003      	add	sp, #12
d0056ba2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056ba4:	483e      	ldr	r0, [pc, #248]	; (d0056ca0 <sinf+0x138>)
d0056ba6:	eeb0 0b46 	vmov.f64	d0, d6
d0056baa:	2100      	movs	r1, #0
d0056bac:	b003      	add	sp, #12
d0056bae:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056bb2:	f7ff bfad 	b.w	d0056b10 <sinf_poly>
d0056bb6:	f240 422e 	movw	r2, #1070	; 0x42e
d0056bba:	4293      	cmp	r3, r2
d0056bbc:	d824      	bhi.n	d0056c08 <sinf+0xa0>
d0056bbe:	4b38      	ldr	r3, [pc, #224]	; (d0056ca0 <sinf+0x138>)
d0056bc0:	ed93 7b08 	vldr	d7, [r3, #32]
d0056bc4:	ee26 7b07 	vmul.f64	d7, d6, d7
d0056bc8:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0056bcc:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0056bd0:	ee17 1a90 	vmov	r1, s15
d0056bd4:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0056bd8:	1609      	asrs	r1, r1, #24
d0056bda:	ee07 1a90 	vmov	s15, r1
d0056bde:	f001 0203 	and.w	r2, r1, #3
d0056be2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0056be6:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0056bea:	ed92 0b00 	vldr	d0, [r2]
d0056bee:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0056bf2:	f011 0f02 	tst.w	r1, #2
d0056bf6:	eea5 6b47 	vfms.f64	d6, d5, d7
d0056bfa:	bf08      	it	eq
d0056bfc:	4618      	moveq	r0, r3
d0056bfe:	ee26 1b06 	vmul.f64	d1, d6, d6
d0056c02:	ee20 0b06 	vmul.f64	d0, d0, d6
d0056c06:	e7d1      	b.n	d0056bac <sinf+0x44>
d0056c08:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0056c0c:	d23d      	bcs.n	d0056c8a <sinf+0x122>
d0056c0e:	4b25      	ldr	r3, [pc, #148]	; (d0056ca4 <sinf+0x13c>)
d0056c10:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0056c14:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0056c18:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0056c1c:	6a06      	ldr	r6, [r0, #32]
d0056c1e:	6900      	ldr	r0, [r0, #16]
d0056c20:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0056c24:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0056c28:	40a9      	lsls	r1, r5
d0056c2a:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0056c2e:	fba1 6706 	umull	r6, r7, r1, r6
d0056c32:	fb05 f301 	mul.w	r3, r5, r1
d0056c36:	463a      	mov	r2, r7
d0056c38:	fbe0 2301 	umlal	r2, r3, r0, r1
d0056c3c:	1c11      	adds	r1, r2, #0
d0056c3e:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0056c42:	2000      	movs	r0, #0
d0056c44:	1a10      	subs	r0, r2, r0
d0056c46:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0056c4a:	eb63 0101 	sbc.w	r1, r3, r1
d0056c4e:	f000 fbe3 	bl	d0057418 <__aeabi_l2d>
d0056c52:	0fb5      	lsrs	r5, r6, #30
d0056c54:	4a12      	ldr	r2, [pc, #72]	; (d0056ca0 <sinf+0x138>)
d0056c56:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d0056c5a:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0056c98 <sinf+0x130>
d0056c5e:	ec41 0b17 	vmov	d7, r0, r1
d0056c62:	f003 0103 	and.w	r1, r3, #3
d0056c66:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d0056c6a:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056c6e:	ed91 7b00 	vldr	d7, [r1]
d0056c72:	ee20 1b00 	vmul.f64	d1, d0, d0
d0056c76:	f013 0f02 	tst.w	r3, #2
d0056c7a:	f102 0070 	add.w	r0, r2, #112	; 0x70
d0056c7e:	4629      	mov	r1, r5
d0056c80:	bf08      	it	eq
d0056c82:	4610      	moveq	r0, r2
d0056c84:	ee27 0b00 	vmul.f64	d0, d7, d0
d0056c88:	e790      	b.n	d0056bac <sinf+0x44>
d0056c8a:	b003      	add	sp, #12
d0056c8c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0056c90:	f7ff be52 	b.w	d0056938 <__math_invalidf>
d0056c94:	f3af 8000 	nop.w
d0056c98:	54442d18 	.word	0x54442d18
d0056c9c:	3c1921fb 	.word	0x3c1921fb
d0056ca0:	d0057d80 	.word	0xd0057d80
d0056ca4:	d0057d20 	.word	0xd0057d20

d0056ca8 <atan2f>:
d0056ca8:	f000 b82c 	b.w	d0056d04 <__ieee754_atan2f>

d0056cac <fmodf>:
d0056cac:	b508      	push	{r3, lr}
d0056cae:	ed2d 8b02 	vpush	{d8}
d0056cb2:	eef0 8a40 	vmov.f32	s17, s0
d0056cb6:	eeb0 8a60 	vmov.f32	s16, s1
d0056cba:	f000 f8c1 	bl	d0056e40 <__ieee754_fmodf>
d0056cbe:	4b0f      	ldr	r3, [pc, #60]	; (d0056cfc <fmodf+0x50>)
d0056cc0:	f993 3000 	ldrsb.w	r3, [r3]
d0056cc4:	3301      	adds	r3, #1
d0056cc6:	d016      	beq.n	d0056cf6 <fmodf+0x4a>
d0056cc8:	eeb4 8a48 	vcmp.f32	s16, s16
d0056ccc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056cd0:	d611      	bvs.n	d0056cf6 <fmodf+0x4a>
d0056cd2:	eef4 8a68 	vcmp.f32	s17, s17
d0056cd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056cda:	d60c      	bvs.n	d0056cf6 <fmodf+0x4a>
d0056cdc:	eddf 8a08 	vldr	s17, [pc, #32]	; d0056d00 <fmodf+0x54>
d0056ce0:	eeb4 8a68 	vcmp.f32	s16, s17
d0056ce4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056ce8:	d105      	bne.n	d0056cf6 <fmodf+0x4a>
d0056cea:	f7fe f9c1 	bl	d0055070 <__errno>
d0056cee:	ee88 0aa8 	vdiv.f32	s0, s17, s17
d0056cf2:	2321      	movs	r3, #33	; 0x21
d0056cf4:	6003      	str	r3, [r0, #0]
d0056cf6:	ecbd 8b02 	vpop	{d8}
d0056cfa:	bd08      	pop	{r3, pc}
d0056cfc:	d005a358 	.word	0xd005a358
d0056d00:	00000000 	.word	0x00000000

d0056d04 <__ieee754_atan2f>:
d0056d04:	ee10 2a90 	vmov	r2, s1
d0056d08:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d0056d0c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0056d10:	b510      	push	{r4, lr}
d0056d12:	eef0 7a40 	vmov.f32	s15, s0
d0056d16:	dc06      	bgt.n	d0056d26 <__ieee754_atan2f+0x22>
d0056d18:	ee10 0a10 	vmov	r0, s0
d0056d1c:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d0056d20:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056d24:	dd04      	ble.n	d0056d30 <__ieee754_atan2f+0x2c>
d0056d26:	ee77 7aa0 	vadd.f32	s15, s15, s1
d0056d2a:	eeb0 0a67 	vmov.f32	s0, s15
d0056d2e:	bd10      	pop	{r4, pc}
d0056d30:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d0056d34:	d103      	bne.n	d0056d3e <__ieee754_atan2f+0x3a>
d0056d36:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0056d3a:	f000 b903 	b.w	d0056f44 <atanf>
d0056d3e:	1794      	asrs	r4, r2, #30
d0056d40:	f004 0402 	and.w	r4, r4, #2
d0056d44:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d0056d48:	b93b      	cbnz	r3, d0056d5a <__ieee754_atan2f+0x56>
d0056d4a:	2c02      	cmp	r4, #2
d0056d4c:	d05c      	beq.n	d0056e08 <__ieee754_atan2f+0x104>
d0056d4e:	ed9f 7a33 	vldr	s14, [pc, #204]	; d0056e1c <__ieee754_atan2f+0x118>
d0056d52:	2c03      	cmp	r4, #3
d0056d54:	fe47 7a00 	vseleq.f32	s15, s14, s0
d0056d58:	e7e7      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056d5a:	b939      	cbnz	r1, d0056d6c <__ieee754_atan2f+0x68>
d0056d5c:	eddf 7a30 	vldr	s15, [pc, #192]	; d0056e20 <__ieee754_atan2f+0x11c>
d0056d60:	ed9f 0a30 	vldr	s0, [pc, #192]	; d0056e24 <__ieee754_atan2f+0x120>
d0056d64:	2800      	cmp	r0, #0
d0056d66:	fe67 7a80 	vselge.f32	s15, s15, s0
d0056d6a:	e7de      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056d6c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0056d70:	d110      	bne.n	d0056d94 <__ieee754_atan2f+0x90>
d0056d72:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056d76:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d0056d7a:	d107      	bne.n	d0056d8c <__ieee754_atan2f+0x88>
d0056d7c:	2c02      	cmp	r4, #2
d0056d7e:	d846      	bhi.n	d0056e0e <__ieee754_atan2f+0x10a>
d0056d80:	4b29      	ldr	r3, [pc, #164]	; (d0056e28 <__ieee754_atan2f+0x124>)
d0056d82:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d0056d86:	edd4 7a00 	vldr	s15, [r4]
d0056d8a:	e7ce      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056d8c:	2c02      	cmp	r4, #2
d0056d8e:	d841      	bhi.n	d0056e14 <__ieee754_atan2f+0x110>
d0056d90:	4b26      	ldr	r3, [pc, #152]	; (d0056e2c <__ieee754_atan2f+0x128>)
d0056d92:	e7f6      	b.n	d0056d82 <__ieee754_atan2f+0x7e>
d0056d94:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056d98:	d0e0      	beq.n	d0056d5c <__ieee754_atan2f+0x58>
d0056d9a:	1a5b      	subs	r3, r3, r1
d0056d9c:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d0056da0:	ea4f 51e3 	mov.w	r1, r3, asr #23
d0056da4:	da1a      	bge.n	d0056ddc <__ieee754_atan2f+0xd8>
d0056da6:	2a00      	cmp	r2, #0
d0056da8:	da01      	bge.n	d0056dae <__ieee754_atan2f+0xaa>
d0056daa:	313c      	adds	r1, #60	; 0x3c
d0056dac:	db19      	blt.n	d0056de2 <__ieee754_atan2f+0xde>
d0056dae:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0056db2:	f000 f99b 	bl	d00570ec <fabsf>
d0056db6:	f000 f8c5 	bl	d0056f44 <atanf>
d0056dba:	eef0 7a40 	vmov.f32	s15, s0
d0056dbe:	2c01      	cmp	r4, #1
d0056dc0:	d012      	beq.n	d0056de8 <__ieee754_atan2f+0xe4>
d0056dc2:	2c02      	cmp	r4, #2
d0056dc4:	d017      	beq.n	d0056df6 <__ieee754_atan2f+0xf2>
d0056dc6:	2c00      	cmp	r4, #0
d0056dc8:	d0af      	beq.n	d0056d2a <__ieee754_atan2f+0x26>
d0056dca:	ed9f 0a19 	vldr	s0, [pc, #100]	; d0056e30 <__ieee754_atan2f+0x12c>
d0056dce:	ee77 7a80 	vadd.f32	s15, s15, s0
d0056dd2:	ed9f 0a18 	vldr	s0, [pc, #96]	; d0056e34 <__ieee754_atan2f+0x130>
d0056dd6:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0056dda:	e7a6      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056ddc:	eddf 7a10 	vldr	s15, [pc, #64]	; d0056e20 <__ieee754_atan2f+0x11c>
d0056de0:	e7ed      	b.n	d0056dbe <__ieee754_atan2f+0xba>
d0056de2:	eddf 7a15 	vldr	s15, [pc, #84]	; d0056e38 <__ieee754_atan2f+0x134>
d0056de6:	e7ea      	b.n	d0056dbe <__ieee754_atan2f+0xba>
d0056de8:	ee17 3a90 	vmov	r3, s15
d0056dec:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d0056df0:	ee07 3a90 	vmov	s15, r3
d0056df4:	e799      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056df6:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d0056e30 <__ieee754_atan2f+0x12c>
d0056dfa:	ee77 7a80 	vadd.f32	s15, s15, s0
d0056dfe:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0056e34 <__ieee754_atan2f+0x130>
d0056e02:	ee70 7a67 	vsub.f32	s15, s0, s15
d0056e06:	e790      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056e08:	eddf 7a0a 	vldr	s15, [pc, #40]	; d0056e34 <__ieee754_atan2f+0x130>
d0056e0c:	e78d      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056e0e:	eddf 7a0b 	vldr	s15, [pc, #44]	; d0056e3c <__ieee754_atan2f+0x138>
d0056e12:	e78a      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056e14:	eddf 7a08 	vldr	s15, [pc, #32]	; d0056e38 <__ieee754_atan2f+0x134>
d0056e18:	e787      	b.n	d0056d2a <__ieee754_atan2f+0x26>
d0056e1a:	bf00      	nop
d0056e1c:	c0490fdb 	.word	0xc0490fdb
d0056e20:	3fc90fdb 	.word	0x3fc90fdb
d0056e24:	bfc90fdb 	.word	0xbfc90fdb
d0056e28:	d0057e60 	.word	0xd0057e60
d0056e2c:	d0057e6c 	.word	0xd0057e6c
d0056e30:	33bbbd2e 	.word	0x33bbbd2e
d0056e34:	40490fdb 	.word	0x40490fdb
d0056e38:	00000000 	.word	0x00000000
d0056e3c:	3f490fdb 	.word	0x3f490fdb

d0056e40 <__ieee754_fmodf>:
d0056e40:	b5f0      	push	{r4, r5, r6, r7, lr}
d0056e42:	ee10 6a90 	vmov	r6, s1
d0056e46:	f036 4500 	bics.w	r5, r6, #2147483648	; 0x80000000
d0056e4a:	d009      	beq.n	d0056e60 <__ieee754_fmodf+0x20>
d0056e4c:	ee10 2a10 	vmov	r2, s0
d0056e50:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
d0056e54:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0056e58:	da02      	bge.n	d0056e60 <__ieee754_fmodf+0x20>
d0056e5a:	f1b5 4fff 	cmp.w	r5, #2139095040	; 0x7f800000
d0056e5e:	dd04      	ble.n	d0056e6a <__ieee754_fmodf+0x2a>
d0056e60:	ee60 0a20 	vmul.f32	s1, s0, s1
d0056e64:	ee80 0aa0 	vdiv.f32	s0, s1, s1
d0056e68:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056e6a:	42ab      	cmp	r3, r5
d0056e6c:	dbfc      	blt.n	d0056e68 <__ieee754_fmodf+0x28>
d0056e6e:	f002 4400 	and.w	r4, r2, #2147483648	; 0x80000000
d0056e72:	d106      	bne.n	d0056e82 <__ieee754_fmodf+0x42>
d0056e74:	4a32      	ldr	r2, [pc, #200]	; (d0056f40 <__ieee754_fmodf+0x100>)
d0056e76:	0fe3      	lsrs	r3, r4, #31
d0056e78:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0056e7c:	ed93 0a00 	vldr	s0, [r3]
d0056e80:	e7f2      	b.n	d0056e68 <__ieee754_fmodf+0x28>
d0056e82:	f012 4fff 	tst.w	r2, #2139095040	; 0x7f800000
d0056e86:	d13f      	bne.n	d0056f08 <__ieee754_fmodf+0xc8>
d0056e88:	0219      	lsls	r1, r3, #8
d0056e8a:	f06f 007d 	mvn.w	r0, #125	; 0x7d
d0056e8e:	2900      	cmp	r1, #0
d0056e90:	dc37      	bgt.n	d0056f02 <__ieee754_fmodf+0xc2>
d0056e92:	f016 4fff 	tst.w	r6, #2139095040	; 0x7f800000
d0056e96:	d13d      	bne.n	d0056f14 <__ieee754_fmodf+0xd4>
d0056e98:	022f      	lsls	r7, r5, #8
d0056e9a:	f06f 017d 	mvn.w	r1, #125	; 0x7d
d0056e9e:	2f00      	cmp	r7, #0
d0056ea0:	da35      	bge.n	d0056f0e <__ieee754_fmodf+0xce>
d0056ea2:	f110 0f7e 	cmn.w	r0, #126	; 0x7e
d0056ea6:	bfbb      	ittet	lt
d0056ea8:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0056eac:	1a12      	sublt	r2, r2, r0
d0056eae:	f3c2 0316 	ubfxge	r3, r2, #0, #23
d0056eb2:	4093      	lsllt	r3, r2
d0056eb4:	bfa8      	it	ge
d0056eb6:	f443 0300 	orrge.w	r3, r3, #8388608	; 0x800000
d0056eba:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d0056ebe:	bfb5      	itete	lt
d0056ec0:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0056ec4:	f3c6 0516 	ubfxge	r5, r6, #0, #23
d0056ec8:	1a52      	sublt	r2, r2, r1
d0056eca:	f445 0500 	orrge.w	r5, r5, #8388608	; 0x800000
d0056ece:	bfb8      	it	lt
d0056ed0:	4095      	lsllt	r5, r2
d0056ed2:	1a40      	subs	r0, r0, r1
d0056ed4:	1b5a      	subs	r2, r3, r5
d0056ed6:	bb00      	cbnz	r0, d0056f1a <__ieee754_fmodf+0xda>
d0056ed8:	ea13 0322 	ands.w	r3, r3, r2, asr #32
d0056edc:	bf38      	it	cc
d0056ede:	4613      	movcc	r3, r2
d0056ee0:	2b00      	cmp	r3, #0
d0056ee2:	d0c7      	beq.n	d0056e74 <__ieee754_fmodf+0x34>
d0056ee4:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
d0056ee8:	db1f      	blt.n	d0056f2a <__ieee754_fmodf+0xea>
d0056eea:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d0056eee:	db1f      	blt.n	d0056f30 <__ieee754_fmodf+0xf0>
d0056ef0:	f5a3 0300 	sub.w	r3, r3, #8388608	; 0x800000
d0056ef4:	317f      	adds	r1, #127	; 0x7f
d0056ef6:	4323      	orrs	r3, r4
d0056ef8:	ea43 53c1 	orr.w	r3, r3, r1, lsl #23
d0056efc:	ee00 3a10 	vmov	s0, r3
d0056f00:	e7b2      	b.n	d0056e68 <__ieee754_fmodf+0x28>
d0056f02:	3801      	subs	r0, #1
d0056f04:	0049      	lsls	r1, r1, #1
d0056f06:	e7c2      	b.n	d0056e8e <__ieee754_fmodf+0x4e>
d0056f08:	15d8      	asrs	r0, r3, #23
d0056f0a:	387f      	subs	r0, #127	; 0x7f
d0056f0c:	e7c1      	b.n	d0056e92 <__ieee754_fmodf+0x52>
d0056f0e:	3901      	subs	r1, #1
d0056f10:	007f      	lsls	r7, r7, #1
d0056f12:	e7c4      	b.n	d0056e9e <__ieee754_fmodf+0x5e>
d0056f14:	15e9      	asrs	r1, r5, #23
d0056f16:	397f      	subs	r1, #127	; 0x7f
d0056f18:	e7c3      	b.n	d0056ea2 <__ieee754_fmodf+0x62>
d0056f1a:	2a00      	cmp	r2, #0
d0056f1c:	da02      	bge.n	d0056f24 <__ieee754_fmodf+0xe4>
d0056f1e:	005b      	lsls	r3, r3, #1
d0056f20:	3801      	subs	r0, #1
d0056f22:	e7d7      	b.n	d0056ed4 <__ieee754_fmodf+0x94>
d0056f24:	d0a6      	beq.n	d0056e74 <__ieee754_fmodf+0x34>
d0056f26:	0053      	lsls	r3, r2, #1
d0056f28:	e7fa      	b.n	d0056f20 <__ieee754_fmodf+0xe0>
d0056f2a:	005b      	lsls	r3, r3, #1
d0056f2c:	3901      	subs	r1, #1
d0056f2e:	e7d9      	b.n	d0056ee4 <__ieee754_fmodf+0xa4>
d0056f30:	f1c1 21ff 	rsb	r1, r1, #4278255360	; 0xff00ff00
d0056f34:	f501 017f 	add.w	r1, r1, #16711680	; 0xff0000
d0056f38:	3182      	adds	r1, #130	; 0x82
d0056f3a:	410b      	asrs	r3, r1
d0056f3c:	4323      	orrs	r3, r4
d0056f3e:	e7dd      	b.n	d0056efc <__ieee754_fmodf+0xbc>
d0056f40:	d0057e78 	.word	0xd0057e78

d0056f44 <atanf>:
d0056f44:	b538      	push	{r3, r4, r5, lr}
d0056f46:	ee10 5a10 	vmov	r5, s0
d0056f4a:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d0056f4e:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d0056f52:	eef0 7a40 	vmov.f32	s15, s0
d0056f56:	db0f      	blt.n	d0056f78 <atanf+0x34>
d0056f58:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d0056f5c:	dd04      	ble.n	d0056f68 <atanf+0x24>
d0056f5e:	ee70 7a00 	vadd.f32	s15, s0, s0
d0056f62:	eeb0 0a67 	vmov.f32	s0, s15
d0056f66:	bd38      	pop	{r3, r4, r5, pc}
d0056f68:	eddf 7a4d 	vldr	s15, [pc, #308]	; d00570a0 <atanf+0x15c>
d0056f6c:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d00570a4 <atanf+0x160>
d0056f70:	2d00      	cmp	r5, #0
d0056f72:	fe77 7a80 	vselgt.f32	s15, s15, s0
d0056f76:	e7f4      	b.n	d0056f62 <atanf+0x1e>
d0056f78:	4b4b      	ldr	r3, [pc, #300]	; (d00570a8 <atanf+0x164>)
d0056f7a:	429c      	cmp	r4, r3
d0056f7c:	dc10      	bgt.n	d0056fa0 <atanf+0x5c>
d0056f7e:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d0056f82:	da0a      	bge.n	d0056f9a <atanf+0x56>
d0056f84:	ed9f 7a49 	vldr	s14, [pc, #292]	; d00570ac <atanf+0x168>
d0056f88:	ee30 7a07 	vadd.f32	s14, s0, s14
d0056f8c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0056f90:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0056f94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056f98:	dce3      	bgt.n	d0056f62 <atanf+0x1e>
d0056f9a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0056f9e:	e013      	b.n	d0056fc8 <atanf+0x84>
d0056fa0:	f000 f8a4 	bl	d00570ec <fabsf>
d0056fa4:	4b42      	ldr	r3, [pc, #264]	; (d00570b0 <atanf+0x16c>)
d0056fa6:	429c      	cmp	r4, r3
d0056fa8:	dc4f      	bgt.n	d005704a <atanf+0x106>
d0056faa:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d0056fae:	429c      	cmp	r4, r3
d0056fb0:	dc41      	bgt.n	d0057036 <atanf+0xf2>
d0056fb2:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0056fb6:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d0056fba:	eea0 7a27 	vfma.f32	s14, s0, s15
d0056fbe:	2300      	movs	r3, #0
d0056fc0:	ee30 0a27 	vadd.f32	s0, s0, s15
d0056fc4:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0056fc8:	1c5a      	adds	r2, r3, #1
d0056fca:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0056fce:	eddf 5a39 	vldr	s11, [pc, #228]	; d00570b4 <atanf+0x170>
d0056fd2:	ed9f 6a39 	vldr	s12, [pc, #228]	; d00570b8 <atanf+0x174>
d0056fd6:	ed9f 5a39 	vldr	s10, [pc, #228]	; d00570bc <atanf+0x178>
d0056fda:	ed9f 0a39 	vldr	s0, [pc, #228]	; d00570c0 <atanf+0x17c>
d0056fde:	ee26 7aa6 	vmul.f32	s14, s13, s13
d0056fe2:	eea7 6a25 	vfma.f32	s12, s14, s11
d0056fe6:	eddf 5a37 	vldr	s11, [pc, #220]	; d00570c4 <atanf+0x180>
d0056fea:	eee6 5a07 	vfma.f32	s11, s12, s14
d0056fee:	ed9f 6a36 	vldr	s12, [pc, #216]	; d00570c8 <atanf+0x184>
d0056ff2:	eea5 6a87 	vfma.f32	s12, s11, s14
d0056ff6:	eddf 5a35 	vldr	s11, [pc, #212]	; d00570cc <atanf+0x188>
d0056ffa:	eee6 5a07 	vfma.f32	s11, s12, s14
d0056ffe:	ed9f 6a34 	vldr	s12, [pc, #208]	; d00570d0 <atanf+0x18c>
d0057002:	eea5 6a87 	vfma.f32	s12, s11, s14
d0057006:	eddf 5a33 	vldr	s11, [pc, #204]	; d00570d4 <atanf+0x190>
d005700a:	eee7 5a05 	vfma.f32	s11, s14, s10
d005700e:	ed9f 5a32 	vldr	s10, [pc, #200]	; d00570d8 <atanf+0x194>
d0057012:	eea5 5a87 	vfma.f32	s10, s11, s14
d0057016:	eddf 5a31 	vldr	s11, [pc, #196]	; d00570dc <atanf+0x198>
d005701a:	eee5 5a07 	vfma.f32	s11, s10, s14
d005701e:	eea5 0a87 	vfma.f32	s0, s11, s14
d0057022:	ee20 0a07 	vmul.f32	s0, s0, s14
d0057026:	eea6 0a26 	vfma.f32	s0, s12, s13
d005702a:	ee27 0a80 	vmul.f32	s0, s15, s0
d005702e:	d121      	bne.n	d0057074 <atanf+0x130>
d0057030:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0057034:	e795      	b.n	d0056f62 <atanf+0x1e>
d0057036:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005703a:	ee30 7a67 	vsub.f32	s14, s0, s15
d005703e:	ee30 0a27 	vadd.f32	s0, s0, s15
d0057042:	2301      	movs	r3, #1
d0057044:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057048:	e7be      	b.n	d0056fc8 <atanf+0x84>
d005704a:	4b25      	ldr	r3, [pc, #148]	; (d00570e0 <atanf+0x19c>)
d005704c:	429c      	cmp	r4, r3
d005704e:	dc0b      	bgt.n	d0057068 <atanf+0x124>
d0057050:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d0057054:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0057058:	eea0 7a27 	vfma.f32	s14, s0, s15
d005705c:	2302      	movs	r3, #2
d005705e:	ee70 6a67 	vsub.f32	s13, s0, s15
d0057062:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0057066:	e7af      	b.n	d0056fc8 <atanf+0x84>
d0057068:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005706c:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057070:	2303      	movs	r3, #3
d0057072:	e7a9      	b.n	d0056fc8 <atanf+0x84>
d0057074:	4a1b      	ldr	r2, [pc, #108]	; (d00570e4 <atanf+0x1a0>)
d0057076:	491c      	ldr	r1, [pc, #112]	; (d00570e8 <atanf+0x1a4>)
d0057078:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d005707c:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0057080:	ed93 7a00 	vldr	s14, [r3]
d0057084:	ee30 0a47 	vsub.f32	s0, s0, s14
d0057088:	2d00      	cmp	r5, #0
d005708a:	ee70 7a67 	vsub.f32	s15, s0, s15
d005708e:	ed92 0a00 	vldr	s0, [r2]
d0057092:	ee70 7a67 	vsub.f32	s15, s0, s15
d0057096:	bfb8      	it	lt
d0057098:	eef1 7a67 	vneglt.f32	s15, s15
d005709c:	e761      	b.n	d0056f62 <atanf+0x1e>
d005709e:	bf00      	nop
d00570a0:	3fc90fdb 	.word	0x3fc90fdb
d00570a4:	bfc90fdb 	.word	0xbfc90fdb
d00570a8:	3edfffff 	.word	0x3edfffff
d00570ac:	7149f2ca 	.word	0x7149f2ca
d00570b0:	3f97ffff 	.word	0x3f97ffff
d00570b4:	3c8569d7 	.word	0x3c8569d7
d00570b8:	3d4bda59 	.word	0x3d4bda59
d00570bc:	bd15a221 	.word	0xbd15a221
d00570c0:	be4ccccd 	.word	0xbe4ccccd
d00570c4:	3d886b35 	.word	0x3d886b35
d00570c8:	3dba2e6e 	.word	0x3dba2e6e
d00570cc:	3e124925 	.word	0x3e124925
d00570d0:	3eaaaaab 	.word	0x3eaaaaab
d00570d4:	bd6ef16b 	.word	0xbd6ef16b
d00570d8:	bd9d8795 	.word	0xbd9d8795
d00570dc:	bde38e38 	.word	0xbde38e38
d00570e0:	401bffff 	.word	0x401bffff
d00570e4:	d0057e80 	.word	0xd0057e80
d00570e8:	d0057e90 	.word	0xd0057e90

d00570ec <fabsf>:
d00570ec:	ee10 3a10 	vmov	r3, s0
d00570f0:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d00570f4:	ee00 3a10 	vmov	s0, r3
d00570f8:	4770      	bx	lr
	...

d00570fc <__aeabi_drsub>:
d00570fc:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0057100:	e002      	b.n	d0057108 <__adddf3>
d0057102:	bf00      	nop

d0057104 <__aeabi_dsub>:
d0057104:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d0057108 <__adddf3>:
d0057108:	b530      	push	{r4, r5, lr}
d005710a:	ea4f 0441 	mov.w	r4, r1, lsl #1
d005710e:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0057112:	ea94 0f05 	teq	r4, r5
d0057116:	bf08      	it	eq
d0057118:	ea90 0f02 	teqeq	r0, r2
d005711c:	bf1f      	itttt	ne
d005711e:	ea54 0c00 	orrsne.w	ip, r4, r0
d0057122:	ea55 0c02 	orrsne.w	ip, r5, r2
d0057126:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d005712a:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005712e:	f000 80e2 	beq.w	d00572f6 <__adddf3+0x1ee>
d0057132:	ea4f 5454 	mov.w	r4, r4, lsr #21
d0057136:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d005713a:	bfb8      	it	lt
d005713c:	426d      	neglt	r5, r5
d005713e:	dd0c      	ble.n	d005715a <__adddf3+0x52>
d0057140:	442c      	add	r4, r5
d0057142:	ea80 0202 	eor.w	r2, r0, r2
d0057146:	ea81 0303 	eor.w	r3, r1, r3
d005714a:	ea82 0000 	eor.w	r0, r2, r0
d005714e:	ea83 0101 	eor.w	r1, r3, r1
d0057152:	ea80 0202 	eor.w	r2, r0, r2
d0057156:	ea81 0303 	eor.w	r3, r1, r3
d005715a:	2d36      	cmp	r5, #54	; 0x36
d005715c:	bf88      	it	hi
d005715e:	bd30      	pophi	{r4, r5, pc}
d0057160:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0057164:	ea4f 3101 	mov.w	r1, r1, lsl #12
d0057168:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d005716c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0057170:	d002      	beq.n	d0057178 <__adddf3+0x70>
d0057172:	4240      	negs	r0, r0
d0057174:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0057178:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d005717c:	ea4f 3303 	mov.w	r3, r3, lsl #12
d0057180:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0057184:	d002      	beq.n	d005718c <__adddf3+0x84>
d0057186:	4252      	negs	r2, r2
d0057188:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d005718c:	ea94 0f05 	teq	r4, r5
d0057190:	f000 80a7 	beq.w	d00572e2 <__adddf3+0x1da>
d0057194:	f1a4 0401 	sub.w	r4, r4, #1
d0057198:	f1d5 0e20 	rsbs	lr, r5, #32
d005719c:	db0d      	blt.n	d00571ba <__adddf3+0xb2>
d005719e:	fa02 fc0e 	lsl.w	ip, r2, lr
d00571a2:	fa22 f205 	lsr.w	r2, r2, r5
d00571a6:	1880      	adds	r0, r0, r2
d00571a8:	f141 0100 	adc.w	r1, r1, #0
d00571ac:	fa03 f20e 	lsl.w	r2, r3, lr
d00571b0:	1880      	adds	r0, r0, r2
d00571b2:	fa43 f305 	asr.w	r3, r3, r5
d00571b6:	4159      	adcs	r1, r3
d00571b8:	e00e      	b.n	d00571d8 <__adddf3+0xd0>
d00571ba:	f1a5 0520 	sub.w	r5, r5, #32
d00571be:	f10e 0e20 	add.w	lr, lr, #32
d00571c2:	2a01      	cmp	r2, #1
d00571c4:	fa03 fc0e 	lsl.w	ip, r3, lr
d00571c8:	bf28      	it	cs
d00571ca:	f04c 0c02 	orrcs.w	ip, ip, #2
d00571ce:	fa43 f305 	asr.w	r3, r3, r5
d00571d2:	18c0      	adds	r0, r0, r3
d00571d4:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d00571d8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d00571dc:	d507      	bpl.n	d00571ee <__adddf3+0xe6>
d00571de:	f04f 0e00 	mov.w	lr, #0
d00571e2:	f1dc 0c00 	rsbs	ip, ip, #0
d00571e6:	eb7e 0000 	sbcs.w	r0, lr, r0
d00571ea:	eb6e 0101 	sbc.w	r1, lr, r1
d00571ee:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d00571f2:	d31b      	bcc.n	d005722c <__adddf3+0x124>
d00571f4:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d00571f8:	d30c      	bcc.n	d0057214 <__adddf3+0x10c>
d00571fa:	0849      	lsrs	r1, r1, #1
d00571fc:	ea5f 0030 	movs.w	r0, r0, rrx
d0057200:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0057204:	f104 0401 	add.w	r4, r4, #1
d0057208:	ea4f 5244 	mov.w	r2, r4, lsl #21
d005720c:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0057210:	f080 809a 	bcs.w	d0057348 <__adddf3+0x240>
d0057214:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d0057218:	bf08      	it	eq
d005721a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d005721e:	f150 0000 	adcs.w	r0, r0, #0
d0057222:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d0057226:	ea41 0105 	orr.w	r1, r1, r5
d005722a:	bd30      	pop	{r4, r5, pc}
d005722c:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0057230:	4140      	adcs	r0, r0
d0057232:	eb41 0101 	adc.w	r1, r1, r1
d0057236:	3c01      	subs	r4, #1
d0057238:	bf28      	it	cs
d005723a:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d005723e:	d2e9      	bcs.n	d0057214 <__adddf3+0x10c>
d0057240:	f091 0f00 	teq	r1, #0
d0057244:	bf04      	itt	eq
d0057246:	4601      	moveq	r1, r0
d0057248:	2000      	moveq	r0, #0
d005724a:	fab1 f381 	clz	r3, r1
d005724e:	bf08      	it	eq
d0057250:	3320      	addeq	r3, #32
d0057252:	f1a3 030b 	sub.w	r3, r3, #11
d0057256:	f1b3 0220 	subs.w	r2, r3, #32
d005725a:	da0c      	bge.n	d0057276 <__adddf3+0x16e>
d005725c:	320c      	adds	r2, #12
d005725e:	dd08      	ble.n	d0057272 <__adddf3+0x16a>
d0057260:	f102 0c14 	add.w	ip, r2, #20
d0057264:	f1c2 020c 	rsb	r2, r2, #12
d0057268:	fa01 f00c 	lsl.w	r0, r1, ip
d005726c:	fa21 f102 	lsr.w	r1, r1, r2
d0057270:	e00c      	b.n	d005728c <__adddf3+0x184>
d0057272:	f102 0214 	add.w	r2, r2, #20
d0057276:	bfd8      	it	le
d0057278:	f1c2 0c20 	rsble	ip, r2, #32
d005727c:	fa01 f102 	lsl.w	r1, r1, r2
d0057280:	fa20 fc0c 	lsr.w	ip, r0, ip
d0057284:	bfdc      	itt	le
d0057286:	ea41 010c 	orrle.w	r1, r1, ip
d005728a:	4090      	lslle	r0, r2
d005728c:	1ae4      	subs	r4, r4, r3
d005728e:	bfa2      	ittt	ge
d0057290:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0057294:	4329      	orrge	r1, r5
d0057296:	bd30      	popge	{r4, r5, pc}
d0057298:	ea6f 0404 	mvn.w	r4, r4
d005729c:	3c1f      	subs	r4, #31
d005729e:	da1c      	bge.n	d00572da <__adddf3+0x1d2>
d00572a0:	340c      	adds	r4, #12
d00572a2:	dc0e      	bgt.n	d00572c2 <__adddf3+0x1ba>
d00572a4:	f104 0414 	add.w	r4, r4, #20
d00572a8:	f1c4 0220 	rsb	r2, r4, #32
d00572ac:	fa20 f004 	lsr.w	r0, r0, r4
d00572b0:	fa01 f302 	lsl.w	r3, r1, r2
d00572b4:	ea40 0003 	orr.w	r0, r0, r3
d00572b8:	fa21 f304 	lsr.w	r3, r1, r4
d00572bc:	ea45 0103 	orr.w	r1, r5, r3
d00572c0:	bd30      	pop	{r4, r5, pc}
d00572c2:	f1c4 040c 	rsb	r4, r4, #12
d00572c6:	f1c4 0220 	rsb	r2, r4, #32
d00572ca:	fa20 f002 	lsr.w	r0, r0, r2
d00572ce:	fa01 f304 	lsl.w	r3, r1, r4
d00572d2:	ea40 0003 	orr.w	r0, r0, r3
d00572d6:	4629      	mov	r1, r5
d00572d8:	bd30      	pop	{r4, r5, pc}
d00572da:	fa21 f004 	lsr.w	r0, r1, r4
d00572de:	4629      	mov	r1, r5
d00572e0:	bd30      	pop	{r4, r5, pc}
d00572e2:	f094 0f00 	teq	r4, #0
d00572e6:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d00572ea:	bf06      	itte	eq
d00572ec:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d00572f0:	3401      	addeq	r4, #1
d00572f2:	3d01      	subne	r5, #1
d00572f4:	e74e      	b.n	d0057194 <__adddf3+0x8c>
d00572f6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d00572fa:	bf18      	it	ne
d00572fc:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0057300:	d029      	beq.n	d0057356 <__adddf3+0x24e>
d0057302:	ea94 0f05 	teq	r4, r5
d0057306:	bf08      	it	eq
d0057308:	ea90 0f02 	teqeq	r0, r2
d005730c:	d005      	beq.n	d005731a <__adddf3+0x212>
d005730e:	ea54 0c00 	orrs.w	ip, r4, r0
d0057312:	bf04      	itt	eq
d0057314:	4619      	moveq	r1, r3
d0057316:	4610      	moveq	r0, r2
d0057318:	bd30      	pop	{r4, r5, pc}
d005731a:	ea91 0f03 	teq	r1, r3
d005731e:	bf1e      	ittt	ne
d0057320:	2100      	movne	r1, #0
d0057322:	2000      	movne	r0, #0
d0057324:	bd30      	popne	{r4, r5, pc}
d0057326:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d005732a:	d105      	bne.n	d0057338 <__adddf3+0x230>
d005732c:	0040      	lsls	r0, r0, #1
d005732e:	4149      	adcs	r1, r1
d0057330:	bf28      	it	cs
d0057332:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0057336:	bd30      	pop	{r4, r5, pc}
d0057338:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d005733c:	bf3c      	itt	cc
d005733e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0057342:	bd30      	popcc	{r4, r5, pc}
d0057344:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0057348:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d005734c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0057350:	f04f 0000 	mov.w	r0, #0
d0057354:	bd30      	pop	{r4, r5, pc}
d0057356:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005735a:	bf1a      	itte	ne
d005735c:	4619      	movne	r1, r3
d005735e:	4610      	movne	r0, r2
d0057360:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0057364:	bf1c      	itt	ne
d0057366:	460b      	movne	r3, r1
d0057368:	4602      	movne	r2, r0
d005736a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005736e:	bf06      	itte	eq
d0057370:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0057374:	ea91 0f03 	teqeq	r1, r3
d0057378:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005737c:	bd30      	pop	{r4, r5, pc}
d005737e:	bf00      	nop

d0057380 <__aeabi_ui2d>:
d0057380:	f090 0f00 	teq	r0, #0
d0057384:	bf04      	itt	eq
d0057386:	2100      	moveq	r1, #0
d0057388:	4770      	bxeq	lr
d005738a:	b530      	push	{r4, r5, lr}
d005738c:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057390:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057394:	f04f 0500 	mov.w	r5, #0
d0057398:	f04f 0100 	mov.w	r1, #0
d005739c:	e750      	b.n	d0057240 <__adddf3+0x138>
d005739e:	bf00      	nop

d00573a0 <__aeabi_i2d>:
d00573a0:	f090 0f00 	teq	r0, #0
d00573a4:	bf04      	itt	eq
d00573a6:	2100      	moveq	r1, #0
d00573a8:	4770      	bxeq	lr
d00573aa:	b530      	push	{r4, r5, lr}
d00573ac:	f44f 6480 	mov.w	r4, #1024	; 0x400
d00573b0:	f104 0432 	add.w	r4, r4, #50	; 0x32
d00573b4:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d00573b8:	bf48      	it	mi
d00573ba:	4240      	negmi	r0, r0
d00573bc:	f04f 0100 	mov.w	r1, #0
d00573c0:	e73e      	b.n	d0057240 <__adddf3+0x138>
d00573c2:	bf00      	nop

d00573c4 <__aeabi_f2d>:
d00573c4:	0042      	lsls	r2, r0, #1
d00573c6:	ea4f 01e2 	mov.w	r1, r2, asr #3
d00573ca:	ea4f 0131 	mov.w	r1, r1, rrx
d00573ce:	ea4f 7002 	mov.w	r0, r2, lsl #28
d00573d2:	bf1f      	itttt	ne
d00573d4:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d00573d8:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d00573dc:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d00573e0:	4770      	bxne	lr
d00573e2:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d00573e6:	bf08      	it	eq
d00573e8:	4770      	bxeq	lr
d00573ea:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d00573ee:	bf04      	itt	eq
d00573f0:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d00573f4:	4770      	bxeq	lr
d00573f6:	b530      	push	{r4, r5, lr}
d00573f8:	f44f 7460 	mov.w	r4, #896	; 0x380
d00573fc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0057400:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0057404:	e71c      	b.n	d0057240 <__adddf3+0x138>
d0057406:	bf00      	nop

d0057408 <__aeabi_ul2d>:
d0057408:	ea50 0201 	orrs.w	r2, r0, r1
d005740c:	bf08      	it	eq
d005740e:	4770      	bxeq	lr
d0057410:	b530      	push	{r4, r5, lr}
d0057412:	f04f 0500 	mov.w	r5, #0
d0057416:	e00a      	b.n	d005742e <__aeabi_l2d+0x16>

d0057418 <__aeabi_l2d>:
d0057418:	ea50 0201 	orrs.w	r2, r0, r1
d005741c:	bf08      	it	eq
d005741e:	4770      	bxeq	lr
d0057420:	b530      	push	{r4, r5, lr}
d0057422:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d0057426:	d502      	bpl.n	d005742e <__aeabi_l2d+0x16>
d0057428:	4240      	negs	r0, r0
d005742a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005742e:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057432:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057436:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005743a:	f43f aed8 	beq.w	d00571ee <__adddf3+0xe6>
d005743e:	f04f 0203 	mov.w	r2, #3
d0057442:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0057446:	bf18      	it	ne
d0057448:	3203      	addne	r2, #3
d005744a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005744e:	bf18      	it	ne
d0057450:	3203      	addne	r2, #3
d0057452:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0057456:	f1c2 0320 	rsb	r3, r2, #32
d005745a:	fa00 fc03 	lsl.w	ip, r0, r3
d005745e:	fa20 f002 	lsr.w	r0, r0, r2
d0057462:	fa01 fe03 	lsl.w	lr, r1, r3
d0057466:	ea40 000e 	orr.w	r0, r0, lr
d005746a:	fa21 f102 	lsr.w	r1, r1, r2
d005746e:	4414      	add	r4, r2
d0057470:	e6bd      	b.n	d00571ee <__adddf3+0xe6>
d0057472:	bf00      	nop
d0057474:	46464952 	.word	0x46464952
d0057478:	00000000 	.word	0x00000000
d005747c:	45564157 	.word	0x45564157
d0057480:	00000000 	.word	0x00000000
d0057484:	63616c62 	.word	0x63616c62
d0057488:	62615f6b 	.word	0x62615f6b
d005748c:	62726f73 	.word	0x62726f73
d0057490:	6d2e7265 	.word	0x6d2e7265
d0057494:	0000646f 	.word	0x0000646f
d0057498:	6e756874 	.word	0x6e756874
d005749c:	31726564 	.word	0x31726564
d00574a0:	7661772e 	.word	0x7661772e
d00574a4:	00000000 	.word	0x00000000
d00574a8:	6e756874 	.word	0x6e756874
d00574ac:	32726564 	.word	0x32726564
d00574b0:	7661772e 	.word	0x7661772e
d00574b4:	00000000 	.word	0x00000000
d00574b8:	746e616d 	.word	0x746e616d
d00574bc:	6e655f61 	.word	0x6e655f61
d00574c0:	772e3167 	.word	0x772e3167
d00574c4:	00007661 	.word	0x00007661
d00574c8:	70776570 	.word	0x70776570
d00574cc:	772e7765 	.word	0x772e7765
d00574d0:	00007661 	.word	0x00007661
d00574d4:	72727574 	.word	0x72727574
d00574d8:	2e317465 	.word	0x2e317465
d00574dc:	64336273 	.word	0x64336273
d00574e0:	00000000 	.word	0x00000000
d00574e4:	616c7369 	.word	0x616c7369
d00574e8:	2e78646e 	.word	0x2e78646e
d00574ec:	64336273 	.word	0x64336273
d00574f0:	00000000 	.word	0x00000000
d00574f4:	72726163 	.word	0x72726163
d00574f8:	2e726569 	.word	0x2e726569
d00574fc:	64336273 	.word	0x64336273
d0057500:	00000000 	.word	0x00000000
d0057504:	70696873 	.word	0x70696873
d0057508:	732e3176 	.word	0x732e3176
d005750c:	00643362 	.word	0x00643362
d0057510:	74786574 	.word	0x74786574
d0057514:	3362732e 	.word	0x3362732e
d0057518:	00000064 	.word	0x00000064
d005751c:	3a535046 	.word	0x3a535046
d0057520:	2e756c25 	.word	0x2e756c25
d0057524:	6c323025 	.word	0x6c323025
d0057528:	4d202075 	.word	0x4d202075
d005752c:	33253a53 	.word	0x33253a53
d0057530:	252e756c 	.word	0x252e756c
d0057534:	756c3330 	.word	0x756c3330
d0057538:	50572020 	.word	0x50572020
d005753c:	7532253a 	.word	0x7532253a
d0057540:	52542020 	.word	0x52542020
d0057544:	253a5349 	.word	0x253a5349
d0057548:	0000756c 	.word	0x0000756c
d005754c:	497423f0 	.word	0x497423f0
d0057550:	497423f0 	.word	0x497423f0
d0057554:	497423f0 	.word	0x497423f0
d0057558:	ff5516e3 	.word	0xff5516e3
d005755c:	ffffffff 	.word	0xffffffff
d0057560:	ffff0000 	.word	0xffff0000
d0057564:	ff00ff00 	.word	0xff00ff00
d0057568:	ff0000ff 	.word	0xff0000ff
d005756c:	ffffff00 	.word	0xffffff00
d0057570:	ffff00ff 	.word	0xffff00ff
d0057574:	ff00ffff 	.word	0xff00ffff
d0057578:	ff808080 	.word	0xff808080
d005757c:	ffff8000 	.word	0xffff8000
d0057580:	ff8000ff 	.word	0xff8000ff
d0057584:	ff0080ff 	.word	0xff0080ff
d0057588:	ff80ff00 	.word	0xff80ff00
d005758c:	ffff0080 	.word	0xffff0080
d0057590:	ff00ff80 	.word	0xff00ff80
d0057594:	ffc0c0c0 	.word	0xffc0c0c0
d0057598:	3f800000 	.word	0x3f800000
d005759c:	3f400000 	.word	0x3f400000
d00575a0:	3f0ccccd 	.word	0x3f0ccccd
d00575a4:	3eb33333 	.word	0x3eb33333
d00575a8:	3e4ccccd 	.word	0x3e4ccccd
d00575ac:	bf800000 	.word	0xbf800000
d00575b0:	bf000000 	.word	0xbf000000
d00575b4:	3e99999a 	.word	0x3e99999a

d00575b8 <museumRail>:
d00575b8:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d00575c8:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d00575e0:	c1f00000 43340000 44870000 00000000     ......4C...D....
d00575f0:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d0057600:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d0057610:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d0057620:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d0057630:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d0057640:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d0057650:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d0057660:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d0057670:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d0057680:	c487c000 43300000 43320000 00000000     ......0C..2C....
d0057690:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d00576a0:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d00576b0:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d00576c0:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d00576d0:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d00576e0:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d00576f0:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d0057700:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d0057710:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d0057720:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d0057730:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d0057740:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d0057750:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d0057760:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>
	...

d0057780 <bayer4x4>:
d0057780:	0a020800 060e040c 09010b03 050d070f     ................
	...

d00577a0 <g_invBlockMinus1>:
	...
d00577a8:	3f800000 3f000000 3eaaaaab 3e800000     ...?...?...>...>
d00577b8:	3e4ccccd 3e2aaaab 3e124925 3e000000     ..L>..*>%I.>...>
d00577c8:	3de38e39 3dcccccd 3dba2e8c 3daaaaab     9..=...=...=...=
d00577d8:	3d9d89d9 3d924925 3d888889 3d800000     ...=%I.=...=...=
d00577e8:	3d70f0f1 3d638e39 3d579436 3d4ccccd     ..p=9.c=6.W=..L=
d00577f8:	3d430c31 3d3a2e8c 3d321643 3d2aaaab     1.C=..:=C.2=..*=
d0057808:	3d23d70a 3d1d89d9 3d17b426 3d124925     ..#=...=&..=%I.=
d0057818:	3d0d3dcb 3d088889 3d042108 3d000000     .=.=...=.!.=...=
d0057828:	3cf83e10 3cf0f0f1 3cea0ea1 3ce38e39     .>.<...<...<9..<
d0057838:	3cdd67c9 3cd79436 3cd20d21 3ccccccd     .g.<6..<!..<...<
d0057848:	3cc7ce0c 3cc30c31 3cbe82fa 3cba2e8c     ...<1..<...<...<
d0057858:	3cb60b61 3cb21643 3cae4c41 00000000     a..<C..<AL.<....
	...
d0057898:	3f800000 00000000 00000000 00000000     ...?............
d00578a8:	3f800000 00000000 00000000 00000000     ...?............
d00578b8:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d00578c8:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d00578e4:	00000001 00000001 00000002 00000002     ................
d00578f4:	00000003 00000003 00000000 00000004     ................
d0057904:	00000005 00000005 00000006 00000006     ................
d0057914:	00000007 00000007 00000004 00000000     ................
d0057924:	00000004 00000001 00000005 00000002     ................
d0057934:	00000006 00000003 00000007 00000001     ................
d0057944:	00000002 00000002 00000003 00000001     ................
d0057954:	00000004 00000002 00000004 00000003     ................
d0057964:	00000004                                ....

d0057968 <__sf_fake_stderr>:
	...

d0057988 <__sf_fake_stdin>:
	...

d00579a8 <__sf_fake_stdout>:
	...

d00579c8 <_global_impure_ptr>:
d00579c8:	d005a2f8 4e454552 616d2054 636f6c6c     ....REENT malloc
d00579d8:	63757320 64656563 2f006465 6c697562      succeeded./buil
d00579e8:	6e672f64 6f742d75 2d736c6f 2d726f66     d/gnu-tools-for-
d00579f8:	336d7473 2d395f32 30323032 2d32712d     stm32_9-2020-q2-
d0057a08:	61647075 322e6574 31303230 2d313030     update.20201001-
d0057a18:	31323631 6372732f 77656e2f 2f62696c     1621/src/newlib/
d0057a28:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
d0057a38:	722f6269 2e646e61 202c0063 636e7566     ib/rand.c., func
d0057a48:	6e6f6974 6100203a 72657373 6e6f6974     tion: .assertion
d0057a58:	73252220 61662022 64656c69 6966203a      "%s" failed: fi
d0057a68:	2220656c 2c227325 6e696c20 64252065     le "%s", line %d
d0057a78:	73257325 2d23000a 00202b30 004c6c68     %s%s..#-0+ .hlL.
d0057a88:	45676665 30004746 34333231 38373635     efgEFG.012345678
d0057a98:	43424139 00464544 33323130 37363534     9ABCDEF.01234567
d0057aa8:	62613938 66656463 00000000 00000000     89abcdef........

d0057ab8 <__exp2f_data>:
d0057ab8:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0057ac8:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0057ad8:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0057ae8:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0057af8:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0057b08:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0057b18:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0057b28:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0057b38:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0057b48:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0057b58:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0057b68:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0057b78:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0057b88:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0057b98:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0057ba8:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0057bb8:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0057bc8:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0057bd8:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0057be8:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0057bf8:	ff0c52d6 3f962e42                       .R..B..?

d0057c00 <__logf_data>:
d0057c00:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0057c10:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0057c20:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0057c30:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0057c40:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0057c50:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0057c60:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0057c70:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0057c80:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0057c90:	00000000 3ff00000 00000000 00000000     .......?........
d0057ca0:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0057cb0:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0057cc0:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0057cd0:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0057ce0:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0057cf0:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0057d00:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d0057d10:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0057d20 <__inv_pio4>:
d0057d20:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d0057d30:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0057d40:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0057d50:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0057d60:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0057d70:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0057d80 <__sincosf_table>:
d0057d80:	00000000 3ff00000 00000000 bff00000     .......?........
d0057d90:	00000000 bff00000 00000000 3ff00000     ...............?
d0057da0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0057db0:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0057dc0:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0057dd0:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0057de0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0057df0:	00000000 3ff00000 00000000 bff00000     .......?........
d0057e00:	00000000 bff00000 00000000 3ff00000     ...............?
d0057e10:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0057e20:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d0057e30:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d0057e40:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d0057e50:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d0057e60 <CSWTCH.8>:
d0057e60:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d0057e6c <CSWTCH.9>:
d0057e6c:	80000000 40490fdb c0490fdb              ......I@..I.

d0057e78 <Zero>:
d0057e78:	00000000 80000000                       ........

d0057e80 <atanhi>:
d0057e80:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d0057e90 <atanlo>:
d0057e90:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d0057ea0 <_init>:
d0057ea0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0057ea2:	bf00      	nop

Disassembly of section .fini:

d0057ea4 <_fini>:
d0057ea4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0057ea6:	bf00      	nop
