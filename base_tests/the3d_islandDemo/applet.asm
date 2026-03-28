
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
d004b01e:	f00b f971 	bl	d0056304 <setbuf>
d004b022:	6833      	ldr	r3, [r6, #0]
d004b024:	2100      	movs	r1, #0
d004b026:	68d8      	ldr	r0, [r3, #12]
d004b028:	f00b f96c 	bl	d0056304 <setbuf>
d004b02c:	4629      	mov	r1, r5
d004b02e:	4620      	mov	r0, r4
d004b030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004b034:	f002 b844 	b.w	d004d0c0 <main>
d004b038:	d005aed4 	.word	0xd005aed4

d004b03c <initMalloc>:
d004b03c:	4902      	ldr	r1, [pc, #8]	; (d004b048 <initMalloc+0xc>)
d004b03e:	4b03      	ldr	r3, [pc, #12]	; (d004b04c <initMalloc+0x10>)
d004b040:	4a03      	ldr	r2, [pc, #12]	; (d004b050 <initMalloc+0x14>)
d004b042:	1a5b      	subs	r3, r3, r1
d004b044:	6013      	str	r3, [r2, #0]
d004b046:	4770      	bx	lr
d004b048:	d00ff690 	.word	0xd00ff690
d004b04c:	d0600000 	.word	0xd0600000
d004b050:	d00f5408 	.word	0xd00f5408

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
d004b09c:	f00a fdde 	bl	d0055c5c <__errno>
d004b0a0:	2209      	movs	r2, #9
d004b0a2:	4603      	mov	r3, r0
d004b0a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0a8:	601a      	str	r2, [r3, #0]
d004b0aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0ac:	d005af44 	.word	0xd005af44
d004b0b0:	2001f000 	.word	0x2001f000

d004b0b4 <_read>:
d004b0b4:	b508      	push	{r3, lr}
d004b0b6:	f00a fdd1 	bl	d0055c5c <__errno>
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
d004b102:	f00a fdab 	bl	d0055c5c <__errno>
d004b106:	220c      	movs	r2, #12
d004b108:	4603      	mov	r3, r0
d004b10a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b10e:	601a      	str	r2, [r3, #0]
d004b110:	bd10      	pop	{r4, pc}
d004b112:	bf00      	nop
d004b114:	d005af40 	.word	0xd005af40
d004b118:	d00ff690 	.word	0xd00ff690
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
d004b184:	f00a ffb0 	bl	d00560e8 <memcmp>
d004b188:	b950      	cbnz	r0, d004b1a0 <LoadSFX+0x6c>
d004b18a:	2204      	movs	r2, #4
d004b18c:	492c      	ldr	r1, [pc, #176]	; (d004b240 <LoadSFX+0x10c>)
d004b18e:	a805      	add	r0, sp, #20
d004b190:	f00a ffaa 	bl	d00560e8 <memcmp>
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
d004b1c8:	f00a ff7e 	bl	d00560c8 <malloc>
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
d004b23c:	d0058064 	.word	0xd0058064
d004b240:	d005806c 	.word	0xd005806c

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
d004b2b2:	f00c faf1 	bl	d0057898 <atan2f>
d004b2b6:	eef1 0ac9 	vsqrt.f32	s1, s18
d004b2ba:	eddf 7a36 	vldr	s15, [pc, #216]	; d004b394 <sr_steer_camera_to_tangent+0x150>
d004b2be:	eef0 9a40 	vmov.f32	s19, s0
d004b2c2:	eeb1 0a4a 	vneg.f32	s0, s20
d004b2c6:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d004b2ca:	f00c fae5 	bl	d0057898 <atan2f>
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
d004b358:	f006 ba30 	b.w	d00517bc <cameraRotate>
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
d004be0e:	2150      	movs	r1, #80	; 0x50
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
d004bea6:	f002 fc0d 	bl	d004e6c4 <initDepthBandMem>
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
d004bef0:	d00f55c0 	.word	0xd00f55c0
d004bef4:	d00f55a0 	.word	0xd00f55a0

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
d004bf42:	f007 f98b 	bl	d005325c <lightEnable>
d004bf46:	4628      	mov	r0, r5
d004bf48:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d004c1f4 <weatherLightning+0x2fc>
d004bf4c:	f007 fa1c 	bl	d0053388 <lightSetIntensity>
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
d004bfce:	f007 f945 	bl	d005325c <lightEnable>
d004bfd2:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d004c200 <weatherLightning+0x308>
d004bfd6:	ee07 4a90 	vmov	s15, r4
d004bfda:	ed9a 0a00 	vldr	s0, [sl]
d004bfde:	4628      	mov	r0, r5
d004bfe0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004bfe4:	eea7 0a87 	vfma.f32	s0, s15, s14
d004bfe8:	f007 f9ce 	bl	d0053388 <lightSetIntensity>
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
d004c050:	f007 f904 	bl	d005325c <lightEnable>
d004c054:	4628      	mov	r0, r5
d004c056:	ed9f 0a67 	vldr	s0, [pc, #412]	; d004c1f4 <weatherLightning+0x2fc>
d004c05a:	f007 f995 	bl	d0053388 <lightSetIntensity>
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
d004c1ce:	f007 f845 	bl	d005325c <lightEnable>
d004c1d2:	4628      	mov	r0, r5
d004c1d4:	ed9f 0a07 	vldr	s0, [pc, #28]	; d004c1f4 <weatherLightning+0x2fc>
d004c1d8:	f007 f8d6 	bl	d0053388 <lightSetIntensity>
d004c1dc:	2300      	movs	r3, #0
d004c1de:	603b      	str	r3, [r7, #0]
d004c1e0:	e6c0      	b.n	d004bf64 <weatherLightning+0x6c>
d004c1e2:	bf00      	nop
d004c1e4:	3dcccccd 	.word	0x3dcccccd
d004c1e8:	d005ae90 	.word	0xd005ae90
d004c1ec:	d005b150 	.word	0xd005b150
d004c1f0:	d005ae88 	.word	0xd005ae88
d004c1f4:	00000000 	.word	0x00000000
d004c1f8:	3c83126f 	.word	0x3c83126f
d004c1fc:	d005afc8 	.word	0xd005afc8
d004c200:	3ab3e71b 	.word	0x3ab3e71b
d004c204:	d005afcc 	.word	0xd005afcc
d004c208:	38cd000c 	.word	0x38cd000c
d004c20c:	3ca3d70a 	.word	0x3ca3d70a
d004c210:	d005b154 	.word	0xd005b154
d004c214:	3ad9d00e 	.word	0x3ad9d00e
d004c218:	3e99999a 	.word	0x3e99999a
d004c21c:	3b33e71b 	.word	0x3b33e71b
d004c220:	3f266666 	.word	0x3f266666
d004c224:	3776000e 	.word	0x3776000e
d004c228:	3ccccccd 	.word	0x3ccccccd
d004c22c:	d005afc4 	.word	0xd005afc4
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
d004c34c:	f009 f9c8 	bl	d00556e0 <sb3dParticleSpawnQuad>
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
d004c380:	f009 f9f6 	bl	d0055770 <sb3dParticleSetPosition>
d004c384:	eeb0 0a48 	vmov.f32	s0, s16
d004c388:	6820      	ldr	r0, [r4, #0]
d004c38a:	f009 fa09 	bl	d00557a0 <sb3dParticleSetSize>
d004c38e:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c392:	6820      	ldr	r0, [r4, #0]
d004c394:	f009 fa1a 	bl	d00557cc <sb3dParticleSetShade>
d004c398:	2100      	movs	r1, #0
d004c39a:	6820      	ldr	r0, [r4, #0]
d004c39c:	f009 fa38 	bl	d0055810 <sb3dParticleSetEmission>
d004c3a0:	42b4      	cmp	r4, r6
d004c3a2:	d1c5      	bne.n	d004c330 <initImpactFlames+0xf4>
d004c3a4:	b006      	add	sp, #24
d004c3a6:	ecbd 8b02 	vpop	{d8}
d004c3aa:	bd70      	pop	{r4, r5, r6, pc}
d004c3ac:	00000000 	.word	0x00000000
d004c3b0:	d005afe4 	.word	0xd005afe4
d004c3b4:	d005b0c0 	.word	0xd005b0c0
d004c3b8:	d0058128 	.word	0xd0058128

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
d004c498:	f00b f95e 	bl	d0057758 <sinf>
d004c49c:	eee0 fa0d 	vfma.f32	s31, s0, s26
d004c4a0:	eeb0 0a48 	vmov.f32	s0, s16
d004c4a4:	f00a ff74 	bl	d0057390 <cosf>
d004c4a8:	eef0 6a40 	vmov.f32	s13, s0
d004c4ac:	edd4 7a01 	vldr	s15, [r4, #4]
d004c4b0:	eeb0 0a48 	vmov.f32	s0, s16
d004c4b4:	ed94 7a02 	vldr	s14, [r4, #8]
d004c4b8:	eeb0 8a4a 	vmov.f32	s16, s20
d004c4bc:	eee6 7a89 	vfma.f32	s15, s13, s18
d004c4c0:	ee37 7a29 	vadd.f32	s14, s14, s19
d004c4c4:	ed8d 7a02 	vstr	s14, [sp, #8]
d004c4c8:	edcd 7a01 	vstr	s15, [sp, #4]
d004c4cc:	f00b f944 	bl	d0057758 <sinf>
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
d004c522:	f009 f925 	bl	d0055770 <sb3dParticleSetPosition>
d004c526:	eeb0 0a48 	vmov.f32	s0, s16
d004c52a:	4628      	mov	r0, r5
d004c52c:	f009 f938 	bl	d00557a0 <sb3dParticleSetSize>
d004c530:	eeb0 0a6b 	vmov.f32	s0, s23
d004c534:	4628      	mov	r0, r5
d004c536:	f009 f949 	bl	d00557cc <sb3dParticleSetShade>
d004c53a:	4649      	mov	r1, r9
d004c53c:	4628      	mov	r0, r5
d004c53e:	f009 f95b 	bl	d00557f8 <sb3dParticleSetColor>
d004c542:	4628      	mov	r0, r5
d004c544:	21c8      	movs	r1, #200	; 0xc8
d004c546:	f009 f963 	bl	d0055810 <sb3dParticleSetEmission>
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
d004c592:	f009 f8ed 	bl	d0055770 <sb3dParticleSetPosition>
d004c596:	ed9f 0a54 	vldr	s0, [pc, #336]	; d004c6e8 <updateImpactFlames+0x32c>
d004c59a:	4628      	mov	r0, r5
d004c59c:	f009 f900 	bl	d00557a0 <sb3dParticleSetSize>
d004c5a0:	4628      	mov	r0, r5
d004c5a2:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5a6:	f009 f911 	bl	d00557cc <sb3dParticleSetShade>
d004c5aa:	4631      	mov	r1, r6
d004c5ac:	4628      	mov	r0, r5
d004c5ae:	f009 f92f 	bl	d0055810 <sb3dParticleSetEmission>
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
d004c5d4:	f009 f8cc 	bl	d0055770 <sb3dParticleSetPosition>
d004c5d8:	ed9f 0a43 	vldr	s0, [pc, #268]	; d004c6e8 <updateImpactFlames+0x32c>
d004c5dc:	4628      	mov	r0, r5
d004c5de:	f009 f8df 	bl	d00557a0 <sb3dParticleSetSize>
d004c5e2:	4628      	mov	r0, r5
d004c5e4:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c5e8:	f009 f8f0 	bl	d00557cc <sb3dParticleSetShade>
d004c5ec:	4628      	mov	r0, r5
d004c5ee:	2100      	movs	r1, #0
d004c5f0:	f009 f90e 	bl	d0055810 <sb3dParticleSetEmission>
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
d004c616:	f009 f8ab 	bl	d0055770 <sb3dParticleSetPosition>
d004c61a:	ed9f 0a33 	vldr	s0, [pc, #204]	; d004c6e8 <updateImpactFlames+0x32c>
d004c61e:	4628      	mov	r0, r5
d004c620:	f009 f8be 	bl	d00557a0 <sb3dParticleSetSize>
d004c624:	4628      	mov	r0, r5
d004c626:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c62a:	f009 f8cf 	bl	d00557cc <sb3dParticleSetShade>
d004c62e:	4628      	mov	r0, r5
d004c630:	2100      	movs	r1, #0
d004c632:	f009 f8ed 	bl	d0055810 <sb3dParticleSetEmission>
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
d004c658:	f009 f88a 	bl	d0055770 <sb3dParticleSetPosition>
d004c65c:	4628      	mov	r0, r5
d004c65e:	ed9f 0a22 	vldr	s0, [pc, #136]	; d004c6e8 <updateImpactFlames+0x32c>
d004c662:	f009 f89d 	bl	d00557a0 <sb3dParticleSetSize>
d004c666:	4628      	mov	r0, r5
d004c668:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c66c:	f009 f8ae 	bl	d00557cc <sb3dParticleSetShade>
d004c670:	4628      	mov	r0, r5
d004c672:	2100      	movs	r1, #0
d004c674:	f009 f8cc 	bl	d0055810 <sb3dParticleSetEmission>
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
d004c69c:	f009 f868 	bl	d0055770 <sb3dParticleSetPosition>
d004c6a0:	4630      	mov	r0, r6
d004c6a2:	ed9f 0a11 	vldr	s0, [pc, #68]	; d004c6e8 <updateImpactFlames+0x32c>
d004c6a6:	f009 f87b 	bl	d00557a0 <sb3dParticleSetSize>
d004c6aa:	4630      	mov	r0, r6
d004c6ac:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
d004c6b0:	f009 f88c 	bl	d00557cc <sb3dParticleSetShade>
d004c6b4:	4629      	mov	r1, r5
d004c6b6:	4630      	mov	r0, r6
d004c6b8:	f009 f8aa 	bl	d0055810 <sb3dParticleSetEmission>
d004c6bc:	e779      	b.n	d004c5b2 <updateImpactFlames+0x1f6>
d004c6be:	bf00      	nop
d004c6c0:	d005afe4 	.word	0xd005afe4
d004c6c4:	3f266666 	.word	0x3f266666
d004c6c8:	3eb33333 	.word	0x3eb33333
d004c6cc:	3fc90fdb 	.word	0x3fc90fdb
d004c6d0:	3fd9999a 	.word	0x3fd9999a
d004c6d4:	3c23d70a 	.word	0x3c23d70a
d004c6d8:	42200000 	.word	0x42200000
d004c6dc:	3e99999a 	.word	0x3e99999a
d004c6e0:	3f333333 	.word	0x3f333333
d004c6e4:	d0058128 	.word	0xd0058128
d004c6e8:	00000000 	.word	0x00000000
d004c6ec:	d005b0c4 	.word	0xd005b0c4

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
d004c70c:	f009 fd08 	bl	d0056120 <memset>
d004c710:	2230      	movs	r2, #48	; 0x30
d004c712:	2100      	movs	r1, #0
d004c714:	484b      	ldr	r0, [pc, #300]	; (d004c844 <InitLasers+0x154>)
d004c716:	f009 fd03 	bl	d0056120 <memset>
d004c71a:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d004c71e:	466c      	mov	r4, sp
d004c720:	4668      	mov	r0, sp
d004c722:	ed9f 1a49 	vldr	s2, [pc, #292]	; d004c848 <InitLasers+0x158>
d004c726:	466f      	mov	r7, sp
d004c728:	eeb0 0a60 	vmov.f32	s0, s1
d004c72c:	f006 f854 	bl	d00527d8 <createBox>
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
d004c756:	f006 f83f 	bl	d00527d8 <createBox>
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
d004c78a:	f001 ff8f 	bl	d004e6ac <meshSetMaterial>
d004c78e:	2122      	movs	r1, #34	; 0x22
d004c790:	4648      	mov	r0, r9
d004c792:	f005 ff33 	bl	d00525fc <meshColour>
d004c796:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004c79a:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c79e:	eeb0 2a48 	vmov.f32	s4, s16
d004c7a2:	eeb0 1a61 	vmov.f32	s2, s3
d004c7a6:	eef0 0a61 	vmov.f32	s1, s3
d004c7aa:	eeb0 0a61 	vmov.f32	s0, s3
d004c7ae:	f001 ff7d 	bl	d004e6ac <meshSetMaterial>
d004c7b2:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
d004c7b6:	2127      	movs	r1, #39	; 0x27
d004c7b8:	f005 ff20 	bl	d00525fc <meshColour>
d004c7bc:	eddf 0a20 	vldr	s1, [pc, #128]	; d004c840 <InitLasers+0x150>
d004c7c0:	eeb0 1a48 	vmov.f32	s2, s16
d004c7c4:	3406      	adds	r4, #6
d004c7c6:	eeb0 0a60 	vmov.f32	s0, s1
d004c7ca:	f004 feef 	bl	d00515ac <vec3>
d004c7ce:	4648      	mov	r0, r9
d004c7d0:	f005 fe38 	bl	d0052444 <entityWorldSpawn>
d004c7d4:	f804 8c06 	strb.w	r8, [r4, #-6]
d004c7d8:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c7dc:	2100      	movs	r1, #0
d004c7de:	f824 8c04 	strh.w	r8, [r4, #-4]
d004c7e2:	b280      	uxth	r0, r0
d004c7e4:	f006 fa8e 	bl	d0052d04 <entityVisible>
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
d004c808:	f004 fed0 	bl	d00515ac <vec3>
d004c80c:	4630      	mov	r0, r6
d004c80e:	f005 fe19 	bl	d0052444 <entityWorldSpawn>
d004c812:	f804 5c06 	strb.w	r5, [r4, #-6]
d004c816:	f824 0c02 	strh.w	r0, [r4, #-2]
d004c81a:	2100      	movs	r1, #0
d004c81c:	f824 5c04 	strh.w	r5, [r4, #-4]
d004c820:	b280      	uxth	r0, r0
d004c822:	f006 fa6f 	bl	d0052d04 <entityVisible>
d004c826:	42bc      	cmp	r4, r7
d004c828:	d1e7      	bne.n	d004c7fa <InitLasers+0x10a>
d004c82a:	b017      	add	sp, #92	; 0x5c
d004c82c:	ecbd 8b02 	vpop	{d8}
d004c830:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004c834:	d00f556c 	.word	0xd00f556c
d004c838:	d00f54a0 	.word	0xd00f54a0
d004c83c:	d00f5600 	.word	0xd00f5600
d004c840:	00000000 	.word	0x00000000
d004c844:	d00f5640 	.word	0xd00f5640
d004c848:	42480000 	.word	0x42480000

d004c84c <FireTurret>:
d004c84c:	b530      	push	{r4, r5, lr}
d004c84e:	ed2d 8b02 	vpush	{d8}
d004c852:	b091      	sub	sp, #68	; 0x44
d004c854:	eeb0 8a60 	vmov.f32	s16, s1
d004c858:	4604      	mov	r4, r0
d004c85a:	ed8d 0a01 	vstr	s0, [sp, #4]
d004c85e:	ed8d 1a03 	vstr	s2, [sp, #12]
d004c862:	f005 fe55 	bl	d0052510 <entityGetPosition>
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
d004c892:	f006 f9b1 	bl	d0052bf8 <entityLookAtPosition>
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
d004c8ee:	f005 fe2d 	bl	d005254c <entityGetForward>
d004c8f2:	eddf 7a1b 	vldr	s15, [pc, #108]	; d004c960 <FireTurret+0x114>
d004c8f6:	eddd 0a05 	vldr	s1, [sp, #20]
d004c8fa:	ed9d 0a04 	vldr	s0, [sp, #16]
d004c8fe:	ee70 0aa7 	vadd.f32	s1, s1, s15
d004c902:	ed9d 1a06 	vldr	s2, [sp, #24]
d004c906:	88a0      	ldrh	r0, [r4, #4]
d004c908:	f005 fde2 	bl	d00524d0 <entitySetPosition>
d004c90c:	ed9f 1a16 	vldr	s2, [pc, #88]	; d004c968 <FireTurret+0x11c>
d004c910:	4629      	mov	r1, r5
d004c912:	ed9d 0a08 	vldr	s0, [sp, #32]
d004c916:	eef0 0a41 	vmov.f32	s1, s2
d004c91a:	88a0      	ldrh	r0, [r4, #4]
d004c91c:	f005 ff4c 	bl	d00527b8 <entityRotation>
d004c920:	ed9f 1a11 	vldr	s2, [pc, #68]	; d004c968 <FireTurret+0x11c>
d004c924:	88a0      	ldrh	r0, [r4, #4]
d004c926:	2100      	movs	r1, #0
d004c928:	eeb0 0a41 	vmov.f32	s0, s2
d004c92c:	eddd 0a07 	vldr	s1, [sp, #28]
d004c930:	f005 ff42 	bl	d00527b8 <entityRotation>
d004c934:	4629      	mov	r1, r5
d004c936:	88a0      	ldrh	r0, [r4, #4]
d004c938:	b011      	add	sp, #68	; 0x44
d004c93a:	ecbd 8b02 	vpop	{d8}
d004c93e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004c942:	f006 b9df 	b.w	d0052d04 <entityVisible>
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
d004c964:	d00f556c 	.word	0xd00f556c
d004c968:	00000000 	.word	0x00000000

d004c96c <UpdateTurretTest.part.0>:
d004c96c:	b500      	push	{lr}
d004c96e:	b085      	sub	sp, #20
d004c970:	f009 fc88 	bl	d0056284 <rand>
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
d004c992:	f005 fdbd 	bl	d0052510 <entityGetPosition>
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
d004c9ac:	f009 fc6a 	bl	d0056284 <rand>
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
d004c9e6:	f009 fc4d 	bl	d0056284 <rand>
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
d004ca0c:	d005afc0 	.word	0xd005afc0
d004ca10:	d005b170 	.word	0xd005b170
d004ca14:	d005b174 	.word	0xd005b174
d004ca18:	66666667 	.word	0x66666667
d004ca1c:	d005b176 	.word	0xd005b176
d004ca20:	d005af60 	.word	0xd005af60
d004ca24:	2aaaaaab 	.word	0x2aaaaaab

d004ca28 <FirePlayerLaser>:
d004ca28:	b570      	push	{r4, r5, r6, lr}
d004ca2a:	4db0      	ldr	r5, [pc, #704]	; (d004ccec <FirePlayerLaser+0x2c4>)
d004ca2c:	2100      	movs	r1, #0
d004ca2e:	4cb0      	ldr	r4, [pc, #704]	; (d004ccf0 <FirePlayerLaser+0x2c8>)
d004ca30:	4628      	mov	r0, r5
d004ca32:	ed2d 8b06 	vpush	{d8-d10}
d004ca36:	b086      	sub	sp, #24
d004ca38:	f004 ff9c 	bl	d0051974 <cameraGetRotation>
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
d004cbba:	f005 fc89 	bl	d00524d0 <entitySetPosition>
d004cbbe:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d004ccfc <FirePlayerLaser+0x2d4>
d004cbc2:	eeb0 0a4a 	vmov.f32	s0, s20
d004cbc6:	4631      	mov	r1, r6
d004cbc8:	eef0 0a41 	vmov.f32	s1, s2
d004cbcc:	88a8      	ldrh	r0, [r5, #4]
d004cbce:	f005 fdf3 	bl	d00527b8 <entityRotation>
d004cbd2:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d004ccfc <FirePlayerLaser+0x2d4>
d004cbd6:	88a8      	ldrh	r0, [r5, #4]
d004cbd8:	2100      	movs	r1, #0
d004cbda:	eef1 0a69 	vneg.f32	s1, s19
d004cbde:	eeb0 0a41 	vmov.f32	s0, s2
d004cbe2:	f005 fde9 	bl	d00527b8 <entityRotation>
d004cbe6:	4631      	mov	r1, r6
d004cbe8:	88a8      	ldrh	r0, [r5, #4]
d004cbea:	f006 f88b 	bl	d0052d04 <entityVisible>
d004cbee:	4a44      	ldr	r2, [pc, #272]	; (d004cd00 <FirePlayerLaser+0x2d8>)
d004cbf0:	4c44      	ldr	r4, [pc, #272]	; (d004cd04 <FirePlayerLaser+0x2dc>)
d004cbf2:	7813      	ldrb	r3, [r2, #0]
d004cbf4:	f1c3 0301 	rsb	r3, r3, #1
d004cbf8:	b2db      	uxtb	r3, r3
d004cbfa:	7013      	strb	r3, [r2, #0]
d004cbfc:	bb03      	cbnz	r3, d004cc40 <FirePlayerLaser+0x218>
d004cbfe:	7d23      	ldrb	r3, [r4, #20]
d004cc00:	2004      	movs	r0, #4
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
d004cc1c:	2004      	movs	r0, #4
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
d004cc42:	2003      	movs	r0, #3
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
d004cc5e:	2003      	movs	r0, #3
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
d004cc86:	f005 fc23 	bl	d00524d0 <entitySetPosition>
d004cc8a:	ed9f 1a1c 	vldr	s2, [pc, #112]	; d004ccfc <FirePlayerLaser+0x2d4>
d004cc8e:	eeb0 0a4a 	vmov.f32	s0, s20
d004cc92:	4629      	mov	r1, r5
d004cc94:	eef0 0a41 	vmov.f32	s1, s2
d004cc98:	88b0      	ldrh	r0, [r6, #4]
d004cc9a:	f005 fd8d 	bl	d00527b8 <entityRotation>
d004cc9e:	ed9f 1a17 	vldr	s2, [pc, #92]	; d004ccfc <FirePlayerLaser+0x2d4>
d004cca2:	88b0      	ldrh	r0, [r6, #4]
d004cca4:	eef1 0a69 	vneg.f32	s1, s19
d004cca8:	eeb0 0a41 	vmov.f32	s0, s2
d004ccac:	2100      	movs	r1, #0
d004ccae:	f005 fd83 	bl	d00527b8 <entityRotation>
d004ccb2:	4629      	mov	r1, r5
d004ccb4:	88b0      	ldrh	r0, [r6, #4]
d004ccb6:	f006 f825 	bl	d0052d04 <entityVisible>
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
d004ccec:	d005af60 	.word	0xd005af60
d004ccf0:	d00f5640 	.word	0xd00f5640
d004ccf4:	c2680000 	.word	0xc2680000
d004ccf8:	42680000 	.word	0x42680000
d004ccfc:	00000000 	.word	0x00000000
d004cd00:	d005b14d 	.word	0xd005b14d
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
d004cd2a:	f005 ffeb 	bl	d0052d04 <entityVisible>
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
d004cd4a:	f005 fc21 	bl	d0052590 <entityMoveForward>
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
d004cd74:	f005 ffc6 	bl	d0052d04 <entityVisible>
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
d004cd94:	f005 fbfc 	bl	d0052590 <entityMoveForward>
d004cd98:	4969      	ldr	r1, [pc, #420]	; (d004cf40 <UpdateLasers+0x238>)
d004cd9a:	2300      	movs	r3, #0
d004cd9c:	aa01      	add	r2, sp, #4
d004cd9e:	88a0      	ldrh	r0, [r4, #4]
d004cda0:	6809      	ldr	r1, [r1, #0]
d004cda2:	f005 ffc9 	bl	d0052d38 <entitySweepRaycastTest>
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
d004cdd4:	f004 fbea 	bl	d00515ac <vec3>
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
d004cf38:	d00f556c 	.word	0xd00f556c
d004cf3c:	d00f5640 	.word	0xd00f5640
d004cf40:	d005b144 	.word	0xd005b144
d004cf44:	d005afe4 	.word	0xd005afe4
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
d004cf76:	f008 fbb3 	bl	d00556e0 <sb3dParticleSpawnQuad>
d004cf7a:	f844 0f04 	str.w	r0, [r4, #4]!
d004cf7e:	42ac      	cmp	r4, r5
d004cf80:	d1eb      	bne.n	d004cf5a <initSmoke+0xa>
d004cf82:	b005      	add	sp, #20
d004cf84:	bd30      	pop	{r4, r5, pc}
d004cf86:	bf00      	nop
d004cf88:	d00f541c 	.word	0xd00f541c
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
d004cffe:	f00a fc4d 	bl	d005789c <fmodf>
d004d002:	eeb0 8a40 	vmov.f32	s16, s0
d004d006:	eeb0 0a6b 	vmov.f32	s0, s23
d004d00a:	eef0 ea69 	vmov.f32	s29, s19
d004d00e:	eea9 0a0d 	vfma.f32	s0, s18, s26
d004d012:	f00a fba1 	bl	d0057758 <sinf>
d004d016:	eef7 7a04 	vmov.f32	s15, #116	; 0x3fa00000  1.250
d004d01a:	eef0 8a40 	vmov.f32	s17, s0
d004d01e:	eeb0 0a4b 	vmov.f32	s0, s22
d004d022:	eee8 ea27 	vfma.f32	s29, s16, s15
d004d026:	ee68 8a8e 	vmul.f32	s17, s17, s28
d004d02a:	eea9 0a2c 	vfma.f32	s0, s18, s25
d004d02e:	f00a f9af 	bl	d0057390 <cosf>
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
d004d064:	f008 fb84 	bl	d0055770 <sb3dParticleSetPosition>
d004d068:	ee29 0a0e 	vmul.f32	s0, s18, s28
d004d06c:	6820      	ldr	r0, [r4, #0]
d004d06e:	f008 fb97 	bl	d00557a0 <sb3dParticleSetSize>
d004d072:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d076:	6820      	ldr	r0, [r4, #0]
d004d078:	ee38 0a00 	vadd.f32	s0, s16, s0
d004d07c:	ee30 0a00 	vadd.f32	s0, s0, s0
d004d080:	f008 fba4 	bl	d00557cc <sb3dParticleSetShade>
d004d084:	2121      	movs	r1, #33	; 0x21
d004d086:	6820      	ldr	r0, [r4, #0]
d004d088:	f008 fbb6 	bl	d00557f8 <sb3dParticleSetColor>
d004d08c:	2100      	movs	r1, #0
d004d08e:	6820      	ldr	r0, [r4, #0]
d004d090:	f008 fbbe 	bl	d0055810 <sb3dParticleSetEmission>
d004d094:	42a7      	cmp	r7, r4
d004d096:	d1a1      	bne.n	d004cfdc <updateSmoke+0x4c>
d004d098:	b009      	add	sp, #36	; 0x24
d004d09a:	ecbd 8b0e 	vpop	{d8-d14}
d004d09e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004d0a0:	3eb33333 	.word	0x3eb33333
d004d0a4:	3f99999a 	.word	0x3f99999a
d004d0a8:	3f666666 	.word	0x3f666666
d004d0ac:	d00f541c 	.word	0xd00f541c
d004d0b0:	3d000000 	.word	0x3d000000
d004d0b4:	3faf5c29 	.word	0x3faf5c29
d004d0b8:	3ff47ae1 	.word	0x3ff47ae1
d004d0bc:	43600000 	.word	0x43600000

d004d0c0 <main>:
d004d0c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004d0c4:	ed2d 8b10 	vpush	{d8-d15}
d004d0c8:	f5ad 4d89 	sub.w	sp, sp, #17536	; 0x4480
d004d0cc:	4cc9      	ldr	r4, [pc, #804]	; (d004d3f4 <main+0x334>)
d004d0ce:	f244 2567 	movw	r5, #16999	; 0x4267
d004d0d2:	ed9f 8ac9 	vldr	s16, [pc, #804]	; d004d3f8 <main+0x338>
d004d0d6:	b099      	sub	sp, #100	; 0x64
d004d0d8:	f8df 8348 	ldr.w	r8, [pc, #840]	; d004d424 <main+0x364>
d004d0dc:	f7fe fe82 	bl	d004bde4 <initSystem>
d004d0e0:	7b23      	ldrb	r3, [r4, #12]
d004d0e2:	7b62      	ldrb	r2, [r4, #13]
d004d0e4:	446d      	add	r5, sp
d004d0e6:	7ba1      	ldrb	r1, [r4, #14]
d004d0e8:	2064      	movs	r0, #100	; 0x64
d004d0ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d0ee:	7be2      	ldrb	r2, [r4, #15]
d004d0f0:	f025 051f 	bic.w	r5, r5, #31
d004d0f4:	f8df a330 	ldr.w	sl, [pc, #816]	; d004d428 <main+0x368>
d004d0f8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d0fc:	f8df b32c 	ldr.w	fp, [pc, #812]	; d004d42c <main+0x36c>
d004d100:	f505 7600 	add.w	r6, r5, #512	; 0x200
d004d104:	f505 71c0 	add.w	r1, r5, #384	; 0x180
d004d108:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d10c:	f505 7710 	add.w	r7, r5, #576	; 0x240
d004d110:	ee09 6a10 	vmov	s18, r6
d004d114:	f505 76e0 	add.w	r6, r5, #448	; 0x1c0
d004d118:	681b      	ldr	r3, [r3, #0]
d004d11a:	f505 79a0 	add.w	r9, r5, #320	; 0x140
d004d11e:	9107      	str	r1, [sp, #28]
d004d120:	eef0 9a48 	vmov.f32	s19, s16
d004d124:	689b      	ldr	r3, [r3, #8]
d004d126:	9606      	str	r6, [sp, #24]
d004d128:	4798      	blx	r3
d004d12a:	f004 fac5 	bl	d00516b8 <worldClear>
d004d12e:	f006 fdc9 	bl	d0053cc4 <setDefaultRenderMode>
d004d132:	a81c      	add	r0, sp, #112	; 0x70
d004d134:	f004 fb28 	bl	d0051788 <cameraCreate>
d004d138:	ab1c      	add	r3, sp, #112	; 0x70
d004d13a:	2260      	movs	r2, #96	; 0x60
d004d13c:	48af      	ldr	r0, [pc, #700]	; (d004d3fc <main+0x33c>)
d004d13e:	4619      	mov	r1, r3
d004d140:	f008 ffe0 	bl	d0056104 <memcpy>
d004d144:	48ad      	ldr	r0, [pc, #692]	; (d004d3fc <main+0x33c>)
d004d146:	eddf 0aae 	vldr	s1, [pc, #696]	; d004d400 <main+0x340>
d004d14a:	ed9f 0aae 	vldr	s0, [pc, #696]	; d004d404 <main+0x344>
d004d14e:	f004 fe71 	bl	d0051e34 <cameraSetRange>
d004d152:	eeb0 1a48 	vmov.f32	s2, s16
d004d156:	eeb0 0a48 	vmov.f32	s0, s16
d004d15a:	eddf 0aab 	vldr	s1, [pc, #684]	; d004d408 <main+0x348>
d004d15e:	f004 fa25 	bl	d00515ac <vec3>
d004d162:	48a6      	ldr	r0, [pc, #664]	; (d004d3fc <main+0x33c>)
d004d164:	edcd 0a45 	vstr	s1, [sp, #276]	; 0x114
d004d168:	ed8d 0a44 	vstr	s0, [sp, #272]	; 0x110
d004d16c:	ed8d 1a46 	vstr	s2, [sp, #280]	; 0x118
d004d170:	f004 fb14 	bl	d005179c <cameraSetPosition>
d004d174:	48a1      	ldr	r0, [pc, #644]	; (d004d3fc <main+0x33c>)
d004d176:	f004 fab1 	bl	d00516dc <cameraNormalize>
d004d17a:	f7ff fee9 	bl	d004cf50 <initSmoke>
d004d17e:	f7ff f85d 	bl	d004c23c <initImpactFlames>
d004d182:	f50d 7cda 	add.w	ip, sp, #436	; 0x1b4
d004d186:	f50d 7ed0 	add.w	lr, sp, #416	; 0x1a0
d004d18a:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d18e:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d192:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d196:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d19a:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004d19e:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004d1a2:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d004d1a6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004d1aa:	f04f 437f 	mov.w	r3, #4278190080	; 0xff000000
d004d1ae:	f108 0c10 	add.w	ip, r8, #16
d004d1b2:	f108 0824 	add.w	r8, r8, #36	; 0x24
d004d1b6:	f8ca 3000 	str.w	r3, [sl]
d004d1ba:	f8cd e000 	str.w	lr, [sp]
d004d1be:	f8ca 3040 	str.w	r3, [sl, #64]	; 0x40
d004d1c2:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d1c6:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004d1ca:	f8dc c000 	ldr.w	ip, [ip]
d004d1ce:	aa6d      	add	r2, sp, #436	; 0x1b4
d004d1d0:	4650      	mov	r0, sl
d004d1d2:	f04f 437f 	mov.w	r3, #4278190080	; 0xff000000
d004d1d6:	f8ce c000 	str.w	ip, [lr]
d004d1da:	4611      	mov	r1, r2
d004d1dc:	2210      	movs	r2, #16
d004d1de:	f005 fddd 	bl	d0052d9c <buildLightingCLUT>
d004d1e2:	7b23      	ldrb	r3, [r4, #12]
d004d1e4:	f505 7180 	add.w	r1, r5, #256	; 0x100
d004d1e8:	7b62      	ldrb	r2, [r4, #13]
d004d1ea:	4650      	mov	r0, sl
d004d1ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d1f0:	9108      	str	r1, [sp, #32]
d004d1f2:	7ba1      	ldrb	r1, [r4, #14]
d004d1f4:	7be2      	ldrb	r2, [r4, #15]
d004d1f6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d1fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d1fe:	681b      	ldr	r3, [r3, #0]
d004d200:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004d202:	4798      	blx	r3
d004d204:	eeb0 1a48 	vmov.f32	s2, s16
d004d208:	eef0 0a48 	vmov.f32	s1, s16
d004d20c:	eeb0 0a48 	vmov.f32	s0, s16
d004d210:	f004 f9cc 	bl	d00515ac <vec3>
d004d214:	eddf 1a7b 	vldr	s3, [pc, #492]	; d004d404 <main+0x344>
d004d218:	2001      	movs	r0, #1
d004d21a:	edcd 0a48 	vstr	s1, [sp, #288]	; 0x120
d004d21e:	ed8d 0a47 	vstr	s0, [sp, #284]	; 0x11c
d004d222:	ed8d 1a49 	vstr	s2, [sp, #292]	; 0x124
d004d226:	f006 f827 	bl	d0053278 <addPointLight>
d004d22a:	ab38      	add	r3, sp, #224	; 0xe0
d004d22c:	fa5f fa80 	uxtb.w	sl, r0
d004d230:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d234:	e898 0007 	ldmia.w	r8, {r0, r1, r2}
d004d238:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004d23c:	2001      	movs	r0, #1
d004d23e:	edd3 0a01 	vldr	s1, [r3, #4]
d004d242:	ed93 1a02 	vldr	s2, [r3, #8]
d004d246:	ed93 0a00 	vldr	s0, [r3]
d004d24a:	f006 f851 	bl	d00532f0 <addDirectionalLight>
d004d24e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004d252:	b2c3      	uxtb	r3, r0
d004d254:	4698      	mov	r8, r3
d004d256:	4618      	mov	r0, r3
d004d258:	930b      	str	r3, [sp, #44]	; 0x2c
d004d25a:	f006 f895 	bl	d0053388 <lightSetIntensity>
d004d25e:	4640      	mov	r0, r8
d004d260:	2100      	movs	r1, #0
d004d262:	f005 fffb 	bl	d005325c <lightEnable>
d004d266:	4969      	ldr	r1, [pc, #420]	; (d004d40c <main+0x34c>)
d004d268:	4869      	ldr	r0, [pc, #420]	; (d004d410 <main+0x350>)
d004d26a:	f7fd ff63 	bl	d004b134 <LoadSFX>
d004d26e:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d272:	4602      	mov	r2, r0
d004d274:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d278:	4864      	ldr	r0, [pc, #400]	; (d004d40c <main+0x34c>)
d004d27a:	2300      	movs	r3, #0
d004d27c:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d280:	f8cb 2000 	str.w	r2, [fp]
d004d284:	6801      	ldr	r1, [r0, #0]
d004d286:	7da0      	ldrb	r0, [r4, #22]
d004d288:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d28c:	7de0      	ldrb	r0, [r4, #23]
d004d28e:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d292:	4618      	mov	r0, r3
d004d294:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d298:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d29c:	47c0      	blx	r8
d004d29e:	7d23      	ldrb	r3, [r4, #20]
d004d2a0:	7d62      	ldrb	r2, [r4, #21]
d004d2a2:	f644 6184 	movw	r1, #20100	; 0x4e84
d004d2a6:	7da0      	ldrb	r0, [r4, #22]
d004d2a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d2ac:	7de2      	ldrb	r2, [r4, #23]
d004d2ae:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d2b2:	2000      	movs	r0, #0
d004d2b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d2b8:	689b      	ldr	r3, [r3, #8]
d004d2ba:	691b      	ldr	r3, [r3, #16]
d004d2bc:	4798      	blx	r3
d004d2be:	7d23      	ldrb	r3, [r4, #20]
d004d2c0:	7d62      	ldrb	r2, [r4, #21]
d004d2c2:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d2c6:	7da0      	ldrb	r0, [r4, #22]
d004d2c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d2cc:	7de2      	ldrb	r2, [r4, #23]
d004d2ce:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d2d2:	2000      	movs	r0, #0
d004d2d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d2d8:	689b      	ldr	r3, [r3, #8]
d004d2da:	695b      	ldr	r3, [r3, #20]
d004d2dc:	4798      	blx	r3
d004d2de:	7d23      	ldrb	r3, [r4, #20]
d004d2e0:	7d62      	ldrb	r2, [r4, #21]
d004d2e2:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d004d2e6:	7da0      	ldrb	r0, [r4, #22]
d004d2e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d2ec:	7de2      	ldrb	r2, [r4, #23]
d004d2ee:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d2f2:	2000      	movs	r0, #0
d004d2f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d2f8:	689b      	ldr	r3, [r3, #8]
d004d2fa:	699b      	ldr	r3, [r3, #24]
d004d2fc:	4798      	blx	r3
d004d2fe:	7d23      	ldrb	r3, [r4, #20]
d004d300:	7d62      	ldrb	r2, [r4, #21]
d004d302:	2100      	movs	r1, #0
d004d304:	7da0      	ldrb	r0, [r4, #22]
d004d306:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d30a:	7de2      	ldrb	r2, [r4, #23]
d004d30c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d310:	4608      	mov	r0, r1
d004d312:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d316:	689b      	ldr	r3, [r3, #8]
d004d318:	6a1b      	ldr	r3, [r3, #32]
d004d31a:	4798      	blx	r3
d004d31c:	493d      	ldr	r1, [pc, #244]	; (d004d414 <main+0x354>)
d004d31e:	483e      	ldr	r0, [pc, #248]	; (d004d418 <main+0x358>)
d004d320:	f7fd ff08 	bl	d004b134 <LoadSFX>
d004d324:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d328:	4602      	mov	r2, r0
d004d32a:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d32e:	4839      	ldr	r0, [pc, #228]	; (d004d414 <main+0x354>)
d004d330:	2300      	movs	r3, #0
d004d332:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d336:	f8cb 2000 	str.w	r2, [fp]
d004d33a:	6801      	ldr	r1, [r0, #0]
d004d33c:	7da0      	ldrb	r0, [r4, #22]
d004d33e:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d342:	7de0      	ldrb	r0, [r4, #23]
d004d344:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d348:	2001      	movs	r0, #1
d004d34a:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d34e:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d352:	47c0      	blx	r8
d004d354:	7d23      	ldrb	r3, [r4, #20]
d004d356:	7d62      	ldrb	r2, [r4, #21]
d004d358:	f244 21cc 	movw	r1, #17100	; 0x42cc
d004d35c:	7da0      	ldrb	r0, [r4, #22]
d004d35e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d362:	7de2      	ldrb	r2, [r4, #23]
d004d364:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d368:	2001      	movs	r0, #1
d004d36a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d36e:	689b      	ldr	r3, [r3, #8]
d004d370:	691b      	ldr	r3, [r3, #16]
d004d372:	4798      	blx	r3
d004d374:	7d23      	ldrb	r3, [r4, #20]
d004d376:	7d62      	ldrb	r2, [r4, #21]
d004d378:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004d37c:	7da0      	ldrb	r0, [r4, #22]
d004d37e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d382:	7de2      	ldrb	r2, [r4, #23]
d004d384:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d388:	2001      	movs	r0, #1
d004d38a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d38e:	689b      	ldr	r3, [r3, #8]
d004d390:	695b      	ldr	r3, [r3, #20]
d004d392:	4798      	blx	r3
d004d394:	7d23      	ldrb	r3, [r4, #20]
d004d396:	7d62      	ldrb	r2, [r4, #21]
d004d398:	2140      	movs	r1, #64	; 0x40
d004d39a:	7da0      	ldrb	r0, [r4, #22]
d004d39c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3a0:	7de2      	ldrb	r2, [r4, #23]
d004d3a2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d3a6:	2001      	movs	r0, #1
d004d3a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3ac:	689b      	ldr	r3, [r3, #8]
d004d3ae:	699b      	ldr	r3, [r3, #24]
d004d3b0:	4798      	blx	r3
d004d3b2:	7d23      	ldrb	r3, [r4, #20]
d004d3b4:	7d62      	ldrb	r2, [r4, #21]
d004d3b6:	2100      	movs	r1, #0
d004d3b8:	7da0      	ldrb	r0, [r4, #22]
d004d3ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d3be:	7de2      	ldrb	r2, [r4, #23]
d004d3c0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d3c4:	2001      	movs	r0, #1
d004d3c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d3ca:	689b      	ldr	r3, [r3, #8]
d004d3cc:	6a1b      	ldr	r3, [r3, #32]
d004d3ce:	4798      	blx	r3
d004d3d0:	4912      	ldr	r1, [pc, #72]	; (d004d41c <main+0x35c>)
d004d3d2:	4813      	ldr	r0, [pc, #76]	; (d004d420 <main+0x360>)
d004d3d4:	f7fd feae 	bl	d004b134 <LoadSFX>
d004d3d8:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d3dc:	4602      	mov	r2, r0
d004d3de:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d3e2:	480e      	ldr	r0, [pc, #56]	; (d004d41c <main+0x35c>)
d004d3e4:	2300      	movs	r3, #0
d004d3e6:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d3ea:	f8cb 2000 	str.w	r2, [fp]
d004d3ee:	6801      	ldr	r1, [r0, #0]
d004d3f0:	e01e      	b.n	d004d430 <main+0x370>
d004d3f2:	bf00      	nop
d004d3f4:	2001f000 	.word	0x2001f000
d004d3f8:	00000000 	.word	0x00000000
d004d3fc:	d005af60 	.word	0xd005af60
d004d400:	459c4000 	.word	0x459c4000
d004d404:	3c23d70a 	.word	0x3c23d70a
d004d408:	42480000 	.word	0x42480000
d004d40c:	d00f5540 	.word	0xd00f5540
d004d410:	d0058074 	.word	0xd0058074
d004d414:	d00f5560 	.word	0xd00f5560
d004d418:	d0058084 	.word	0xd0058084
d004d41c:	d00f55e0 	.word	0xd00f55e0
d004d420:	d0058094 	.word	0xd0058094
d004d424:	d0058134 	.word	0xd0058134
d004d428:	d005aa88 	.word	0xd005aa88
d004d42c:	d00f5568 	.word	0xd00f5568
d004d430:	7da0      	ldrb	r0, [r4, #22]
d004d432:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d004d436:	7de0      	ldrb	r0, [r4, #23]
d004d438:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d004d43c:	2002      	movs	r0, #2
d004d43e:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d442:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d446:	47c0      	blx	r8
d004d448:	7d23      	ldrb	r3, [r4, #20]
d004d44a:	7d62      	ldrb	r2, [r4, #21]
d004d44c:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d450:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d454:	2002      	movs	r0, #2
d004d456:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d45a:	7de2      	ldrb	r2, [r4, #23]
d004d45c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d460:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d464:	689b      	ldr	r3, [r3, #8]
d004d466:	691b      	ldr	r3, [r3, #16]
d004d468:	4798      	blx	r3
d004d46a:	7d23      	ldrb	r3, [r4, #20]
d004d46c:	7d62      	ldrb	r2, [r4, #21]
d004d46e:	2128      	movs	r1, #40	; 0x28
d004d470:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d474:	2002      	movs	r0, #2
d004d476:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d47a:	7de2      	ldrb	r2, [r4, #23]
d004d47c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d480:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d484:	689b      	ldr	r3, [r3, #8]
d004d486:	695b      	ldr	r3, [r3, #20]
d004d488:	4798      	blx	r3
d004d48a:	7d23      	ldrb	r3, [r4, #20]
d004d48c:	7d62      	ldrb	r2, [r4, #21]
d004d48e:	2100      	movs	r1, #0
d004d490:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d494:	2002      	movs	r0, #2
d004d496:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d49a:	7de2      	ldrb	r2, [r4, #23]
d004d49c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d4a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4a4:	689b      	ldr	r3, [r3, #8]
d004d4a6:	699b      	ldr	r3, [r3, #24]
d004d4a8:	4798      	blx	r3
d004d4aa:	7d23      	ldrb	r3, [r4, #20]
d004d4ac:	7d62      	ldrb	r2, [r4, #21]
d004d4ae:	2101      	movs	r1, #1
d004d4b0:	f894 c016 	ldrb.w	ip, [r4, #22]
d004d4b4:	2002      	movs	r0, #2
d004d4b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4ba:	7de2      	ldrb	r2, [r4, #23]
d004d4bc:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004d4c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d4c4:	689b      	ldr	r3, [r3, #8]
d004d4c6:	6a1b      	ldr	r3, [r3, #32]
d004d4c8:	4798      	blx	r3
d004d4ca:	7d23      	ldrb	r3, [r4, #20]
d004d4cc:	f894 c015 	ldrb.w	ip, [r4, #21]
d004d4d0:	2100      	movs	r1, #0
d004d4d2:	7da2      	ldrb	r2, [r4, #22]
d004d4d4:	2002      	movs	r0, #2
d004d4d6:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d004d4da:	f894 c017 	ldrb.w	ip, [r4, #23]
d004d4de:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d4e2:	f8db 2000 	ldr.w	r2, [fp]
d004d4e6:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d004d4ea:	689b      	ldr	r3, [r3, #8]
d004d4ec:	69db      	ldr	r3, [r3, #28]
d004d4ee:	4798      	blx	r3
d004d4f0:	7d23      	ldrb	r3, [r4, #20]
d004d4f2:	7d62      	ldrb	r2, [r4, #21]
d004d4f4:	2002      	movs	r0, #2
d004d4f6:	7da1      	ldrb	r1, [r4, #22]
d004d4f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d4fc:	7de2      	ldrb	r2, [r4, #23]
d004d4fe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d502:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d506:	689b      	ldr	r3, [r3, #8]
d004d508:	685b      	ldr	r3, [r3, #4]
d004d50a:	4798      	blx	r3
d004d50c:	49c4      	ldr	r1, [pc, #784]	; (d004d820 <main+0x760>)
d004d50e:	48c5      	ldr	r0, [pc, #788]	; (d004d824 <main+0x764>)
d004d510:	f7fd fe10 	bl	d004b134 <LoadSFX>
d004d514:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d518:	f894 e015 	ldrb.w	lr, [r4, #21]
d004d51c:	4602      	mov	r2, r0
d004d51e:	7da1      	ldrb	r1, [r4, #22]
d004d520:	2300      	movs	r3, #0
d004d522:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d004d526:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d52a:	f8cb 0000 	str.w	r0, [fp]
d004d52e:	2003      	movs	r0, #3
d004d530:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d534:	49ba      	ldr	r1, [pc, #744]	; (d004d820 <main+0x760>)
d004d536:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d53a:	460e      	mov	r6, r1
d004d53c:	6809      	ldr	r1, [r1, #0]
d004d53e:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d542:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d546:	47c0      	blx	r8
d004d548:	f894 c014 	ldrb.w	ip, [r4, #20]
d004d54c:	7d62      	ldrb	r2, [r4, #21]
d004d54e:	2300      	movs	r3, #0
d004d550:	7da1      	ldrb	r1, [r4, #22]
d004d552:	2004      	movs	r0, #4
d004d554:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d004d558:	f894 e017 	ldrb.w	lr, [r4, #23]
d004d55c:	f8db 2000 	ldr.w	r2, [fp]
d004d560:	46ab      	mov	fp, r5
d004d562:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d004d566:	6831      	ldr	r1, [r6, #0]
d004d568:	ae3e      	add	r6, sp, #248	; 0xf8
d004d56a:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d004d56e:	9605      	str	r6, [sp, #20]
d004d570:	2664      	movs	r6, #100	; 0x64
d004d572:	f8dc c008 	ldr.w	ip, [ip, #8]
d004d576:	f8dc 800c 	ldr.w	r8, [ip, #12]
d004d57a:	47c0      	blx	r8
d004d57c:	7d23      	ldrb	r3, [r4, #20]
d004d57e:	7d62      	ldrb	r2, [r4, #21]
d004d580:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d584:	7da0      	ldrb	r0, [r4, #22]
d004d586:	f04f 0800 	mov.w	r8, #0
d004d58a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d58e:	7de2      	ldrb	r2, [r4, #23]
d004d590:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004d594:	2003      	movs	r0, #3
d004d596:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d59a:	689b      	ldr	r3, [r3, #8]
d004d59c:	691b      	ldr	r3, [r3, #16]
d004d59e:	4798      	blx	r3
d004d5a0:	7d23      	ldrb	r3, [r4, #20]
d004d5a2:	7d62      	ldrb	r2, [r4, #21]
d004d5a4:	f64a 4144 	movw	r1, #44100	; 0xac44
d004d5a8:	2004      	movs	r0, #4
d004d5aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5ae:	7da2      	ldrb	r2, [r4, #22]
d004d5b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d5b4:	7de2      	ldrb	r2, [r4, #23]
d004d5b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5ba:	689b      	ldr	r3, [r3, #8]
d004d5bc:	691b      	ldr	r3, [r3, #16]
d004d5be:	4798      	blx	r3
d004d5c0:	7d23      	ldrb	r3, [r4, #20]
d004d5c2:	7d62      	ldrb	r2, [r4, #21]
d004d5c4:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d5c8:	2003      	movs	r0, #3
d004d5ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5ce:	7da2      	ldrb	r2, [r4, #22]
d004d5d0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d5d4:	7de2      	ldrb	r2, [r4, #23]
d004d5d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5da:	689b      	ldr	r3, [r3, #8]
d004d5dc:	695b      	ldr	r3, [r3, #20]
d004d5de:	4798      	blx	r3
d004d5e0:	7d23      	ldrb	r3, [r4, #20]
d004d5e2:	7d62      	ldrb	r2, [r4, #21]
d004d5e4:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004d5e8:	2004      	movs	r0, #4
d004d5ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d5ee:	7da2      	ldrb	r2, [r4, #22]
d004d5f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d5f4:	7de2      	ldrb	r2, [r4, #23]
d004d5f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d5fa:	689b      	ldr	r3, [r3, #8]
d004d5fc:	695b      	ldr	r3, [r3, #20]
d004d5fe:	4798      	blx	r3
d004d600:	7d23      	ldrb	r3, [r4, #20]
d004d602:	7d62      	ldrb	r2, [r4, #21]
d004d604:	f06f 0127 	mvn.w	r1, #39	; 0x27
d004d608:	2003      	movs	r0, #3
d004d60a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d60e:	7da2      	ldrb	r2, [r4, #22]
d004d610:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d614:	7de2      	ldrb	r2, [r4, #23]
d004d616:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d61a:	689b      	ldr	r3, [r3, #8]
d004d61c:	699b      	ldr	r3, [r3, #24]
d004d61e:	4798      	blx	r3
d004d620:	7d23      	ldrb	r3, [r4, #20]
d004d622:	7d62      	ldrb	r2, [r4, #21]
d004d624:	2128      	movs	r1, #40	; 0x28
d004d626:	2004      	movs	r0, #4
d004d628:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d62c:	7da2      	ldrb	r2, [r4, #22]
d004d62e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d632:	7de2      	ldrb	r2, [r4, #23]
d004d634:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d638:	689b      	ldr	r3, [r3, #8]
d004d63a:	699b      	ldr	r3, [r3, #24]
d004d63c:	4798      	blx	r3
d004d63e:	7d23      	ldrb	r3, [r4, #20]
d004d640:	7d62      	ldrb	r2, [r4, #21]
d004d642:	4641      	mov	r1, r8
d004d644:	2003      	movs	r0, #3
d004d646:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d64a:	7da2      	ldrb	r2, [r4, #22]
d004d64c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d650:	7de2      	ldrb	r2, [r4, #23]
d004d652:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d656:	689b      	ldr	r3, [r3, #8]
d004d658:	6a1b      	ldr	r3, [r3, #32]
d004d65a:	4798      	blx	r3
d004d65c:	7d23      	ldrb	r3, [r4, #20]
d004d65e:	7d62      	ldrb	r2, [r4, #21]
d004d660:	4641      	mov	r1, r8
d004d662:	2004      	movs	r0, #4
d004d664:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d668:	7da2      	ldrb	r2, [r4, #22]
d004d66a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004d66e:	7de2      	ldrb	r2, [r4, #23]
d004d670:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d674:	689b      	ldr	r3, [r3, #8]
d004d676:	6a1b      	ldr	r3, [r3, #32]
d004d678:	4798      	blx	r3
d004d67a:	4639      	mov	r1, r7
d004d67c:	eeb3 0a09 	vmov.f32	s0, #57	; 0x41c80000  25.0
d004d680:	4869      	ldr	r0, [pc, #420]	; (d004d828 <main+0x768>)
d004d682:	f008 f8eb 	bl	d005585c <loadMeshSB3D>
d004d686:	ed9f 1a69 	vldr	s2, [pc, #420]	; d004d82c <main+0x76c>
d004d68a:	eddf 0a69 	vldr	s1, [pc, #420]	; d004d830 <main+0x770>
d004d68e:	ed9f 0a69 	vldr	s0, [pc, #420]	; d004d834 <main+0x774>
d004d692:	f003 ff8b 	bl	d00515ac <vec3>
d004d696:	4638      	mov	r0, r7
d004d698:	ed8d 0a4a 	vstr	s0, [sp, #296]	; 0x128
d004d69c:	edcd 0a4b 	vstr	s1, [sp, #300]	; 0x12c
d004d6a0:	ed8d 1a4c 	vstr	s2, [sp, #304]	; 0x130
d004d6a4:	f004 fece 	bl	d0052444 <entityWorldSpawn>
d004d6a8:	4b63      	ldr	r3, [pc, #396]	; (d004d838 <main+0x778>)
d004d6aa:	4602      	mov	r2, r0
d004d6ac:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004d6b0:	ed9f 2a62 	vldr	s4, [pc, #392]	; d004d83c <main+0x77c>
d004d6b4:	eeb0 1a48 	vmov.f32	s2, s16
d004d6b8:	4638      	mov	r0, r7
d004d6ba:	eeb0 0a48 	vmov.f32	s0, s16
d004d6be:	eddf 0a60 	vldr	s1, [pc, #384]	; d004d840 <main+0x780>
d004d6c2:	601a      	str	r2, [r3, #0]
d004d6c4:	f000 fff2 	bl	d004e6ac <meshSetMaterial>
d004d6c8:	f7ff f812 	bl	d004c6f0 <InitLasers>
d004d6cc:	ee19 1a10 	vmov	r1, s18
d004d6d0:	ed9f 0a6c 	vldr	s0, [pc, #432]	; d004d884 <main+0x7c4>
d004d6d4:	485b      	ldr	r0, [pc, #364]	; (d004d844 <main+0x784>)
d004d6d6:	f008 f8c1 	bl	d005585c <loadMeshSB3D>
d004d6da:	eeb0 1a48 	vmov.f32	s2, s16
d004d6de:	eef0 0a48 	vmov.f32	s1, s16
d004d6e2:	eeb0 0a48 	vmov.f32	s0, s16
d004d6e6:	f003 ff61 	bl	d00515ac <vec3>
d004d6ea:	ee19 0a10 	vmov	r0, s18
d004d6ee:	edcd 0a4e 	vstr	s1, [sp, #312]	; 0x138
d004d6f2:	ed8d 0a4d 	vstr	s0, [sp, #308]	; 0x134
d004d6f6:	ed8d 1a4f 	vstr	s2, [sp, #316]	; 0x13c
d004d6fa:	f004 fea3 	bl	d0052444 <entityWorldSpawn>
d004d6fe:	4b52      	ldr	r3, [pc, #328]	; (d004d848 <main+0x788>)
d004d700:	2101      	movs	r1, #1
d004d702:	6018      	str	r0, [r3, #0]
d004d704:	f005 fae4 	bl	d0052cd0 <entityAllowHit>
d004d708:	eeb0 2a48 	vmov.f32	s4, s16
d004d70c:	eddf 1a4f 	vldr	s3, [pc, #316]	; d004d84c <main+0x78c>
d004d710:	eeb0 1a48 	vmov.f32	s2, s16
d004d714:	ee19 0a10 	vmov	r0, s18
d004d718:	eeb0 0a48 	vmov.f32	s0, s16
d004d71c:	ed9f 9a4c 	vldr	s18, [pc, #304]	; d004d850 <main+0x790>
d004d720:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004d724:	f000 ffc2 	bl	d004e6ac <meshSetMaterial>
d004d728:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d004d72c:	ed9d aa06 	vldr	s20, [sp, #24]
d004d730:	eef0 0a41 	vmov.f32	s1, s2
d004d734:	ee1a 0a10 	vmov	r0, s20
d004d738:	eeb0 0a41 	vmov.f32	s0, s2
d004d73c:	f005 f84c 	bl	d00527d8 <createBox>
d004d740:	eef0 0a48 	vmov.f32	s1, s16
d004d744:	eeb0 1a48 	vmov.f32	s2, s16
d004d748:	ee1a 0a10 	vmov	r0, s20
d004d74c:	eeb0 0a48 	vmov.f32	s0, s16
d004d750:	ed8d 8a3b 	vstr	s16, [sp, #236]	; 0xec
d004d754:	ed8d 8a3c 	vstr	s16, [sp, #240]	; 0xf0
d004d758:	ed8d 8a3d 	vstr	s16, [sp, #244]	; 0xf4
d004d75c:	f004 fe72 	bl	d0052444 <entityWorldSpawn>
d004d760:	eddd 8a07 	vldr	s17, [sp, #28]
d004d764:	ed9f 0a4a 	vldr	s0, [pc, #296]	; d004d890 <main+0x7d0>
d004d768:	ee18 1a90 	vmov	r1, s17
d004d76c:	4839      	ldr	r0, [pc, #228]	; (d004d854 <main+0x794>)
d004d76e:	f008 f875 	bl	d005585c <loadMeshSB3D>
d004d772:	eef0 0a48 	vmov.f32	s1, s16
d004d776:	ed9f 1a38 	vldr	s2, [pc, #224]	; d004d858 <main+0x798>
d004d77a:	ed9f 0a38 	vldr	s0, [pc, #224]	; d004d85c <main+0x79c>
d004d77e:	f003 ff15 	bl	d00515ac <vec3>
d004d782:	ee18 0a90 	vmov	r0, s17
d004d786:	edcd 0a51 	vstr	s1, [sp, #324]	; 0x144
d004d78a:	ed8d 1a52 	vstr	s2, [sp, #328]	; 0x148
d004d78e:	ed8d 0a50 	vstr	s0, [sp, #320]	; 0x140
d004d792:	f004 fe57 	bl	d0052444 <entityWorldSpawn>
d004d796:	4a32      	ldr	r2, [pc, #200]	; (d004d860 <main+0x7a0>)
d004d798:	4603      	mov	r3, r0
d004d79a:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d004d79e:	4649      	mov	r1, r9
d004d7a0:	4830      	ldr	r0, [pc, #192]	; (d004d864 <main+0x7a4>)
d004d7a2:	6013      	str	r3, [r2, #0]
d004d7a4:	f008 f85a 	bl	d005585c <loadMeshSB3D>
d004d7a8:	9f08      	ldr	r7, [sp, #32]
d004d7aa:	4649      	mov	r1, r9
d004d7ac:	eddf 8a37 	vldr	s17, [pc, #220]	; d004d88c <main+0x7cc>
d004d7b0:	4638      	mov	r0, r7
d004d7b2:	f005 f991 	bl	d0052ad8 <copyMesh>
d004d7b6:	ed9f 1a2c 	vldr	s2, [pc, #176]	; d004d868 <main+0x7a8>
d004d7ba:	eddf 0a35 	vldr	s1, [pc, #212]	; d004d890 <main+0x7d0>
d004d7be:	ed9f 0a2b 	vldr	s0, [pc, #172]	; d004d86c <main+0x7ac>
d004d7c2:	f003 fef3 	bl	d00515ac <vec3>
d004d7c6:	4638      	mov	r0, r7
d004d7c8:	ed8d 0a53 	vstr	s0, [sp, #332]	; 0x14c
d004d7cc:	edcd 0a54 	vstr	s1, [sp, #336]	; 0x150
d004d7d0:	ed8d 1a55 	vstr	s2, [sp, #340]	; 0x154
d004d7d4:	f004 fe36 	bl	d0052444 <entityWorldSpawn>
d004d7d8:	eeb0 1a48 	vmov.f32	s2, s16
d004d7dc:	ee0f 0a10 	vmov	s30, r0
d004d7e0:	eef0 0a48 	vmov.f32	s1, s16
d004d7e4:	eeb0 0a48 	vmov.f32	s0, s16
d004d7e8:	ed9f 8a21 	vldr	s16, [pc, #132]	; d004d870 <main+0x7b0>
d004d7ec:	f003 fede 	bl	d00515ac <vec3>
d004d7f0:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004d7f4:	2001      	movs	r0, #1
d004d7f6:	edcd 0a57 	vstr	s1, [sp, #348]	; 0x15c
d004d7fa:	ed8d 0a56 	vstr	s0, [sp, #344]	; 0x158
d004d7fe:	ed8d 1a58 	vstr	s2, [sp, #352]	; 0x160
d004d802:	f005 fd39 	bl	d0053278 <addPointLight>
d004d806:	b2c3      	uxtb	r3, r0
d004d808:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d004d874 <main+0x7b4>
d004d80c:	eddf 0a1a 	vldr	s1, [pc, #104]	; d004d878 <main+0x7b8>
d004d810:	4618      	mov	r0, r3
d004d812:	ed9f 0a1a 	vldr	s0, [pc, #104]	; d004d87c <main+0x7bc>
d004d816:	ee0f 3a90 	vmov	s31, r3
d004d81a:	f005 fcf5 	bl	d0053208 <lightSetRanges>
d004d81e:	e039      	b.n	d004d894 <main+0x7d4>
d004d820:	d00f5500 	.word	0xd00f5500
d004d824:	d00580a4 	.word	0xd00580a4
d004d828:	d00580b0 	.word	0xd00580b0
d004d82c:	44460000 	.word	0x44460000
d004d830:	42a00000 	.word	0x42a00000
d004d834:	c4080000 	.word	0xc4080000
d004d838:	d005b170 	.word	0xd005b170
d004d83c:	42c00000 	.word	0x42c00000
d004d840:	3ee66666 	.word	0x3ee66666
d004d844:	d00580c0 	.word	0xd00580c0
d004d848:	d005b144 	.word	0xd005b144
d004d84c:	3e4ccccd 	.word	0x3e4ccccd
d004d850:	42280000 	.word	0x42280000
d004d854:	d00580d0 	.word	0xd00580d0
d004d858:	c2c80000 	.word	0xc2c80000
d004d85c:	44f3c000 	.word	0x44f3c000
d004d860:	d005afc0 	.word	0xd005afc0
d004d864:	d00580e0 	.word	0xd00580e0
d004d868:	c3480000 	.word	0xc3480000
d004d86c:	c3070000 	.word	0xc3070000
d004d870:	42b40000 	.word	0x42b40000
d004d874:	44048000 	.word	0x44048000
d004d878:	43a00000 	.word	0x43a00000
d004d87c:	42c80000 	.word	0x42c80000
d004d880:	00000000 	.word	0x00000000
d004d884:	43480000 	.word	0x43480000
d004d888:	42a40000 	.word	0x42a40000
d004d88c:	c3750000 	.word	0xc3750000
d004d890:	42480000 	.word	0x42480000
d004d894:	eb05 1788 	add.w	r7, r5, r8, lsl #6
d004d898:	f108 0801 	add.w	r8, r8, #1
d004d89c:	4649      	mov	r1, r9
d004d89e:	a80c      	add	r0, sp, #48	; 0x30
d004d8a0:	f005 f91a 	bl	d0052ad8 <copyMesh>
d004d8a4:	fb06 f308 	mul.w	r3, r6, r8
d004d8a8:	f10d 0c30 	add.w	ip, sp, #48	; 0x30
d004d8ac:	eef0 0a49 	vmov.f32	s1, s18
d004d8b0:	ee01 3a10 	vmov	s2, r3
d004d8b4:	eeb0 0a68 	vmov.f32	s0, s17
d004d8b8:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d8bc:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d8be:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d8c2:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d8c4:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004d8c8:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d004d8cc:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d004d8ce:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d004d8d2:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
d004d8d6:	f003 fe69 	bl	d00515ac <vec3>
d004d8da:	4658      	mov	r0, fp
d004d8dc:	edcd 0a5a 	vstr	s1, [sp, #360]	; 0x168
d004d8e0:	f10b 0b40 	add.w	fp, fp, #64	; 0x40
d004d8e4:	ed8d 1a5b 	vstr	s2, [sp, #364]	; 0x16c
d004d8e8:	ed8d 0a59 	vstr	s0, [sp, #356]	; 0x164
d004d8ec:	f004 fdaa 	bl	d0052444 <entityWorldSpawn>
d004d8f0:	9b05      	ldr	r3, [sp, #20]
d004d8f2:	4607      	mov	r7, r0
d004d8f4:	eeb0 0a48 	vmov.f32	s0, s16
d004d8f8:	f843 0b04 	str.w	r0, [r3], #4
d004d8fc:	9305      	str	r3, [sp, #20]
d004d8fe:	f003 fe59 	bl	d00515b4 <degrees>
d004d902:	eeb0 1a69 	vmov.f32	s2, s19
d004d906:	4638      	mov	r0, r7
d004d908:	2101      	movs	r1, #1
d004d90a:	ed5f 0a23 	vldr	s1, [pc, #-140]	; d004d880 <main+0x7c0>
d004d90e:	f004 ff53 	bl	d00527b8 <entityRotation>
d004d912:	f1b8 0f03 	cmp.w	r8, #3
d004d916:	d1bd      	bne.n	d004d894 <main+0x7d4>
d004d918:	2301      	movs	r3, #1
d004d91a:	983f      	ldr	r0, [sp, #252]	; 0xfc
d004d91c:	ed1f 1a27 	vldr	s2, [pc, #-156]	; d004d884 <main+0x7c4>
d004d920:	35c0      	adds	r5, #192	; 0xc0
d004d922:	9308      	str	r3, [sp, #32]
d004d924:	2300      	movs	r3, #0
d004d926:	ed5f 0a28 	vldr	s1, [pc, #-160]	; d004d888 <main+0x7c8>
d004d92a:	ed1f 0a28 	vldr	s0, [pc, #-160]	; d004d88c <main+0x7cc>
d004d92e:	9305      	str	r3, [sp, #20]
d004d930:	9006      	str	r0, [sp, #24]
d004d932:	f003 fe3b 	bl	d00515ac <vec3>
d004d936:	9806      	ldr	r0, [sp, #24]
d004d938:	edcd 0a5d 	vstr	s1, [sp, #372]	; 0x174
d004d93c:	ed8d 1a5e 	vstr	s2, [sp, #376]	; 0x178
d004d940:	ed8d 0a5c 	vstr	s0, [sp, #368]	; 0x170
d004d944:	f004 fdc4 	bl	d00524d0 <entitySetPosition>
d004d948:	4629      	mov	r1, r5
d004d94a:	ed1f 0a2f 	vldr	s0, [pc, #-188]	; d004d890 <main+0x7d0>
d004d94e:	48ce      	ldr	r0, [pc, #824]	; (d004dc88 <main+0xbc8>)
d004d950:	f007 ff84 	bl	d005585c <loadMeshSB3D>
d004d954:	ed9f 1acd 	vldr	s2, [pc, #820]	; d004dc8c <main+0xbcc>
d004d958:	eddf 0acd 	vldr	s1, [pc, #820]	; d004dc90 <main+0xbd0>
d004d95c:	ed9f 0acd 	vldr	s0, [pc, #820]	; d004dc94 <main+0xbd4>
d004d960:	f003 fe24 	bl	d00515ac <vec3>
d004d964:	4628      	mov	r0, r5
d004d966:	ed8d 0a5f 	vstr	s0, [sp, #380]	; 0x17c
d004d96a:	edcd 0a60 	vstr	s1, [sp, #384]	; 0x180
d004d96e:	ed8d 1a61 	vstr	s2, [sp, #388]	; 0x184
d004d972:	f004 fd67 	bl	d0052444 <entityWorldSpawn>
d004d976:	ed9f 1ac8 	vldr	s2, [pc, #800]	; d004dc98 <main+0xbd8>
d004d97a:	4603      	mov	r3, r0
d004d97c:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d004d980:	ed9f 2ac6 	vldr	s4, [pc, #792]	; d004dc9c <main+0xbdc>
d004d984:	eeb0 0a41 	vmov.f32	s0, s2
d004d988:	4628      	mov	r0, r5
d004d98a:	eddf 0ac5 	vldr	s1, [pc, #788]	; d004dca0 <main+0xbe0>
d004d98e:	9309      	str	r3, [sp, #36]	; 0x24
d004d990:	f000 fe8c 	bl	d004e6ac <meshSetMaterial>
d004d994:	2301      	movs	r3, #1
d004d996:	2216      	movs	r2, #22
d004d998:	49c2      	ldr	r1, [pc, #776]	; (d004dca4 <main+0xbe4>)
d004d99a:	a87d      	add	r0, sp, #500	; 0x1f4
d004d99c:	ed9f 0ac2 	vldr	s0, [pc, #776]	; d004dca8 <main+0xbe8>
d004d9a0:	f7fd ffe8 	bl	d004b974 <splineRailInit>
d004d9a4:	a87d      	add	r0, sp, #500	; 0x1f4
d004d9a6:	ed9f 1ac1 	vldr	s2, [pc, #772]	; d004dcac <main+0xbec>
d004d9aa:	eddf 0ac1 	vldr	s1, [pc, #772]	; d004dcb0 <main+0xbf0>
d004d9ae:	ed9f 0ac1 	vldr	s0, [pc, #772]	; d004dcb4 <main+0xbf4>
d004d9b2:	f7fe f80d 	bl	d004b9d0 <splineRailSetTuning>
d004d9b6:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d004d9ba:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004d9be:	ed9f 1abe 	vldr	s2, [pc, #760]	; d004dcb8 <main+0xbf8>
d004d9c2:	a87d      	add	r0, sp, #500	; 0x1f4
d004d9c4:	4dbd      	ldr	r5, [pc, #756]	; (d004dcbc <main+0xbfc>)
d004d9c6:	f7fe f80b 	bl	d004b9e0 <splineRailSetBanking>
d004d9ca:	2000      	movs	r0, #0
d004d9cc:	f006 f988 	bl	d0053ce0 <enableFlatMode>
d004d9d0:	7b23      	ldrb	r3, [r4, #12]
d004d9d2:	7b62      	ldrb	r2, [r4, #13]
d004d9d4:	7ba1      	ldrb	r1, [r4, #14]
d004d9d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004d9da:	7be2      	ldrb	r2, [r4, #15]
d004d9dc:	6828      	ldr	r0, [r5, #0]
d004d9de:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004d9e2:	eddf aab7 	vldr	s21, [pc, #732]	; d004dcc0 <main+0xc00>
d004d9e6:	f8df 9318 	ldr.w	r9, [pc, #792]	; d004dd00 <main+0xc40>
d004d9ea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004d9ee:	ed9f bab5 	vldr	s22, [pc, #724]	; d004dcc4 <main+0xc04>
d004d9f2:	eddf bab5 	vldr	s23, [pc, #724]	; d004dcc8 <main+0xc08>
d004d9f6:	681b      	ldr	r3, [r3, #0]
d004d9f8:	ed9f aaa7 	vldr	s20, [pc, #668]	; d004dc98 <main+0xbd8>
d004d9fc:	69db      	ldr	r3, [r3, #28]
d004d9fe:	4798      	blx	r3
d004da00:	7b23      	ldrb	r3, [r4, #12]
d004da02:	7b62      	ldrb	r2, [r4, #13]
d004da04:	7ba1      	ldrb	r1, [r4, #14]
d004da06:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004da0a:	7be2      	ldrb	r2, [r4, #15]
d004da0c:	6828      	ldr	r0, [r5, #0]
d004da0e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004da12:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004da16:	681b      	ldr	r3, [r3, #0]
d004da18:	699b      	ldr	r3, [r3, #24]
d004da1a:	4798      	blx	r3
d004da1c:	7b23      	ldrb	r3, [r4, #12]
d004da1e:	7b62      	ldrb	r2, [r4, #13]
d004da20:	2001      	movs	r0, #1
d004da22:	7ba1      	ldrb	r1, [r4, #14]
d004da24:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004da28:	7be2      	ldrb	r2, [r4, #15]
d004da2a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004da2e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004da32:	685b      	ldr	r3, [r3, #4]
d004da34:	68db      	ldr	r3, [r3, #12]
d004da36:	4798      	blx	r3
d004da38:	7b23      	ldrb	r3, [r4, #12]
d004da3a:	7b62      	ldrb	r2, [r4, #13]
d004da3c:	211e      	movs	r1, #30
d004da3e:	7ba5      	ldrb	r5, [r4, #14]
d004da40:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004da44:	7be2      	ldrb	r2, [r4, #15]
d004da46:	4608      	mov	r0, r1
d004da48:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004da4c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004da50:	685b      	ldr	r3, [r3, #4]
d004da52:	689b      	ldr	r3, [r3, #8]
d004da54:	4798      	blx	r3
d004da56:	7823      	ldrb	r3, [r4, #0]
d004da58:	7862      	ldrb	r2, [r4, #1]
d004da5a:	a935      	add	r1, sp, #212	; 0xd4
d004da5c:	78a0      	ldrb	r0, [r4, #2]
d004da5e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004da62:	78e2      	ldrb	r2, [r4, #3]
d004da64:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004da68:	a834      	add	r0, sp, #208	; 0xd0
d004da6a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004da6e:	691b      	ldr	r3, [r3, #16]
d004da70:	4798      	blx	r3
d004da72:	7823      	ldrb	r3, [r4, #0]
d004da74:	7862      	ldrb	r2, [r4, #1]
d004da76:	78a1      	ldrb	r1, [r4, #2]
d004da78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004da7c:	78e2      	ldrb	r2, [r4, #3]
d004da7e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004da82:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004da86:	69db      	ldr	r3, [r3, #28]
d004da88:	4798      	blx	r3
d004da8a:	7823      	ldrb	r3, [r4, #0]
d004da8c:	7862      	ldrb	r2, [r4, #1]
d004da8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004da92:	78a2      	ldrb	r2, [r4, #2]
d004da94:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004da98:	78e2      	ldrb	r2, [r4, #3]
d004da9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004da9e:	689b      	ldr	r3, [r3, #8]
d004daa0:	4798      	blx	r3
d004daa2:	2313      	movs	r3, #19
d004daa4:	4605      	mov	r5, r0
d004daa6:	4889      	ldr	r0, [pc, #548]	; (d004dccc <main+0xc0c>)
d004daa8:	2112      	movs	r1, #18
d004daaa:	2215      	movs	r2, #21
d004daac:	7003      	strb	r3, [r0, #0]
d004daae:	2317      	movs	r3, #23
d004dab0:	4887      	ldr	r0, [pc, #540]	; (d004dcd0 <main+0xc10>)
d004dab2:	7001      	strb	r1, [r0, #0]
d004dab4:	4987      	ldr	r1, [pc, #540]	; (d004dcd4 <main+0xc14>)
d004dab6:	ed9f 9b72 	vldr	d9, [pc, #456]	; d004dc80 <main+0xbc0>
d004daba:	700a      	strb	r2, [r1, #0]
d004dabc:	4a86      	ldr	r2, [pc, #536]	; (d004dcd8 <main+0xc18>)
d004dabe:	7013      	strb	r3, [r2, #0]
d004dac0:	7b20      	ldrb	r0, [r4, #12]
d004dac2:	ee6a 7a8b 	vmul.f32	s15, s21, s22
d004dac6:	7b61      	ldrb	r1, [r4, #13]
d004dac8:	7ba2      	ldrb	r2, [r4, #14]
d004daca:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dace:	7be3      	ldrb	r3, [r4, #15]
d004dad0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004dad4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dad8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dadc:	edcd 7a06 	vstr	s15, [sp, #24]
d004dae0:	f89d 0018 	ldrb.w	r0, [sp, #24]
d004dae4:	681b      	ldr	r3, [r3, #0]
d004dae6:	689b      	ldr	r3, [r3, #8]
d004dae8:	4798      	blx	r3
d004daea:	7820      	ldrb	r0, [r4, #0]
d004daec:	7861      	ldrb	r1, [r4, #1]
d004daee:	78a2      	ldrb	r2, [r4, #2]
d004daf0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004daf4:	78e3      	ldrb	r3, [r4, #3]
d004daf6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dafa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dafe:	689b      	ldr	r3, [r3, #8]
d004db00:	4798      	blx	r3
d004db02:	1b43      	subs	r3, r0, r5
d004db04:	eddf 7a75 	vldr	s15, [pc, #468]	; d004dcdc <main+0xc1c>
d004db08:	ee08 3a10 	vmov	s16, r3
d004db0c:	9006      	str	r0, [sp, #24]
d004db0e:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d004db12:	eeb4 8ae7 	vcmpe.f32	s16, s15
d004db16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004db1a:	f300 84d1 	bgt.w	d004e4c0 <main+0x1400>
d004db1e:	eddf 7a70 	vldr	s15, [pc, #448]	; d004dce0 <main+0xc20>
d004db22:	eef2 ca04 	vmov.f32	s25, #36	; 0x41200000  10.0
d004db26:	eeb2 ca08 	vmov.f32	s24, #40	; 0x41400000  12.0
d004db2a:	eddf ea6e 	vldr	s29, [pc, #440]	; d004dce4 <main+0xc24>
d004db2e:	ee28 8a27 	vmul.f32	s16, s16, s15
d004db32:	eddf da6d 	vldr	s27, [pc, #436]	; d004dce8 <main+0xc28>
d004db36:	eddf 7a6d 	vldr	s15, [pc, #436]	; d004dcec <main+0xc2c>
d004db3a:	ed9f da6d 	vldr	s26, [pc, #436]	; d004dcf0 <main+0xc30>
d004db3e:	ee68 ca2c 	vmul.f32	s25, s16, s25
d004db42:	ed9f ea6c 	vldr	s28, [pc, #432]	; d004dcf4 <main+0xc34>
d004db46:	ee68 da2d 	vmul.f32	s27, s16, s27
d004db4a:	ee28 da0d 	vmul.f32	s26, s16, s26
d004db4e:	ee6c eaae 	vmul.f32	s29, s25, s29
d004db52:	ee28 ea0e 	vmul.f32	s28, s16, s28
d004db56:	ee6c caa7 	vmul.f32	s25, s25, s15
d004db5a:	ee28 ca0c 	vmul.f32	s24, s16, s24
d004db5e:	7820      	ldrb	r0, [r4, #0]
d004db60:	7861      	ldrb	r1, [r4, #1]
d004db62:	78a2      	ldrb	r2, [r4, #2]
d004db64:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004db68:	78e3      	ldrb	r3, [r4, #3]
d004db6a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004db6e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004db72:	6a1b      	ldr	r3, [r3, #32]
d004db74:	4798      	blx	r3
d004db76:	7825      	ldrb	r5, [r4, #0]
d004db78:	7863      	ldrb	r3, [r4, #1]
d004db7a:	a937      	add	r1, sp, #220	; 0xdc
d004db7c:	78a2      	ldrb	r2, [r4, #2]
d004db7e:	4606      	mov	r6, r0
d004db80:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d004db84:	78e3      	ldrb	r3, [r4, #3]
d004db86:	a836      	add	r0, sp, #216	; 0xd8
d004db88:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d004db8c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004db90:	699b      	ldr	r3, [r3, #24]
d004db92:	4798      	blx	r3
d004db94:	ed9f 1a58 	vldr	s2, [pc, #352]	; d004dcf8 <main+0xc38>
d004db98:	ed9f 0a58 	vldr	s0, [pc, #352]	; d004dcfc <main+0xc3c>
d004db9c:	eef0 0a4a 	vmov.f32	s1, s20
d004dba0:	2100      	movs	r1, #0
d004dba2:	4648      	mov	r0, r9
d004dba4:	e9dd 2336 	ldrd	r2, r3, [sp, #216]	; 0xd8
d004dba8:	4252      	negs	r2, r2
d004dbaa:	425b      	negs	r3, r3
d004dbac:	ee07 2a90 	vmov	s15, r2
d004dbb0:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004dbb4:	ee07 3a90 	vmov	s15, r3
d004dbb8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004dbbc:	ee27 1a01 	vmul.f32	s2, s14, s2
d004dbc0:	ee27 0a80 	vmul.f32	s0, s15, s0
d004dbc4:	f003 ff86 	bl	d0051ad4 <cameraTurn>
d004dbc8:	4b4d      	ldr	r3, [pc, #308]	; (d004dd00 <main+0xc40>)
d004dbca:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d004dbce:	edd3 8a07 	vldr	s17, [r3, #28]
d004dbd2:	ee68 8aa7 	vmul.f32	s17, s17, s15
d004dbd6:	ee68 0a28 	vmul.f32	s1, s16, s17
d004dbda:	eef5 0a40 	vcmp.f32	s1, #0.0
d004dbde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dbe2:	f040 84ae 	bne.w	d004e542 <main+0x1482>
d004dbe6:	4b47      	ldr	r3, [pc, #284]	; (d004dd04 <main+0xc44>)
d004dbe8:	eeb0 1a4a 	vmov.f32	s2, s20
d004dbec:	eddf 0a2a 	vldr	s1, [pc, #168]	; d004dc98 <main+0xbd8>
d004dbf0:	eeb0 0a6e 	vmov.f32	s0, s29
d004dbf4:	461d      	mov	r5, r3
d004dbf6:	6818      	ldr	r0, [r3, #0]
d004dbf8:	f004 fd0e 	bl	d0052618 <entityTurnLocal>
d004dbfc:	eeb0 0a6c 	vmov.f32	s0, s25
d004dc00:	6828      	ldr	r0, [r5, #0]
d004dc02:	f004 fcc5 	bl	d0052590 <entityMoveForward>
d004dc06:	eeb0 1a4a 	vmov.f32	s2, s20
d004dc0a:	eddf 0a23 	vldr	s1, [pc, #140]	; d004dc98 <main+0xbd8>
d004dc0e:	eeb0 0a6d 	vmov.f32	s0, s27
d004dc12:	9809      	ldr	r0, [sp, #36]	; 0x24
d004dc14:	f004 fd00 	bl	d0052618 <entityTurnLocal>
d004dc18:	eeb0 0a4d 	vmov.f32	s0, s26
d004dc1c:	ee1f 0a10 	vmov	r0, s30
d004dc20:	f004 fcb6 	bl	d0052590 <entityMoveForward>
d004dc24:	ee1f 0a10 	vmov	r0, s30
d004dc28:	f004 fc72 	bl	d0052510 <entityGetPosition>
d004dc2c:	eddf 7a36 	vldr	s15, [pc, #216]	; d004dd08 <main+0xc48>
d004dc30:	ed8d 0a41 	vstr	s0, [sp, #260]	; 0x104
d004dc34:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004dc38:	edcd 0a42 	vstr	s1, [sp, #264]	; 0x108
d004dc3c:	ed8d 1a43 	vstr	s2, [sp, #268]	; 0x10c
d004dc40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dc44:	f300 8469 	bgt.w	d004e51a <main+0x145a>
d004dc48:	ed9d 0a41 	vldr	s0, [sp, #260]	; 0x104
d004dc4c:	ee1f 0a90 	vmov	r0, s31
d004dc50:	eddd 0a42 	vldr	s1, [sp, #264]	; 0x108
d004dc54:	ed9d 1a43 	vldr	s2, [sp, #268]	; 0x10c
d004dc58:	f005 fb7a 	bl	d0053350 <lightSetPosition>
d004dc5c:	4b28      	ldr	r3, [pc, #160]	; (d004dd00 <main+0xc40>)
d004dc5e:	4650      	mov	r0, sl
d004dc60:	ed93 0a00 	vldr	s0, [r3]
d004dc64:	edd3 0a01 	vldr	s1, [r3, #4]
d004dc68:	ed93 1a02 	vldr	s2, [r3, #8]
d004dc6c:	f005 fb70 	bl	d0053350 <lightSetPosition>
d004dc70:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d004dc74:	4650      	mov	r0, sl
d004dc76:	f005 fb87 	bl	d0053388 <lightSetIntensity>
d004dc7a:	e04b      	b.n	d004dd14 <main+0xc54>
d004dc7c:	f3af 8000 	nop.w
d004dc80:	47ae147b 	.word	0x47ae147b
d004dc84:	3f847ae1 	.word	0x3f847ae1
d004dc88:	d00580ec 	.word	0xd00580ec
d004dc8c:	43480000 	.word	0x43480000
d004dc90:	43af0000 	.word	0x43af0000
d004dc94:	44fa0000 	.word	0x44fa0000
d004dc98:	00000000 	.word	0x00000000
d004dc9c:	42c00000 	.word	0x42c00000
d004dca0:	3ee66666 	.word	0x3ee66666
d004dca4:	d0058194 	.word	0xd0058194
d004dca8:	43340000 	.word	0x43340000
d004dcac:	402ccccd 	.word	0x402ccccd
d004dcb0:	3fe66666 	.word	0x3fe66666
d004dcb4:	3fb33333 	.word	0x3fb33333
d004dcb8:	3f59999a 	.word	0x3f59999a
d004dcbc:	d00f55c0 	.word	0xd00f55c0
d004dcc0:	3b83126f 	.word	0x3b83126f
d004dcc4:	42c80000 	.word	0x42c80000
d004dcc8:	42480000 	.word	0x42480000
d004dccc:	d00f5564 	.word	0xd00f5564
d004dcd0:	d00f54e0 	.word	0xd00f54e0
d004dcd4:	d00f559c 	.word	0xd00f559c
d004dcd8:	d00f5544 	.word	0xd00f5544
d004dcdc:	4d7bc521 	.word	0x4d7bc521
d004dce0:	310f2a63 	.word	0x310f2a63
d004dce4:	bb449ba6 	.word	0xbb449ba6
d004dce8:	3f99999a 	.word	0x3f99999a
d004dcec:	40d9999a 	.word	0x40d9999a
d004dcf0:	43264ccd 	.word	0x43264ccd
d004dcf4:	435c0000 	.word	0x435c0000
d004dcf8:	3ba3d70a 	.word	0x3ba3d70a
d004dcfc:	3c088889 	.word	0x3c088889
d004dd00:	d005af60 	.word	0xd005af60
d004dd04:	d005afc0 	.word	0xd005afc0
d004dd08:	451c4000 	.word	0x451c4000
d004dd0c:	44048000 	.word	0x44048000
d004dd10:	43a00000 	.word	0x43a00000
d004dd14:	eeb0 0a4b 	vmov.f32	s0, s22
d004dd18:	ed1f 1a04 	vldr	s2, [pc, #-16]	; d004dd0c <main+0xc4c>
d004dd1c:	4650      	mov	r0, sl
d004dd1e:	ed5f 0a04 	vldr	s1, [pc, #-16]	; d004dd10 <main+0xc50>
d004dd22:	f005 fa71 	bl	d0053208 <lightSetRanges>
d004dd26:	9b05      	ldr	r3, [sp, #20]
d004dd28:	2b00      	cmp	r3, #0
d004dd2a:	f040 83c2 	bne.w	d004e4b2 <main+0x13f2>
d004dd2e:	2101      	movs	r1, #1
d004dd30:	4650      	mov	r0, sl
d004dd32:	f005 fa93 	bl	d005325c <lightEnable>
d004dd36:	eeb0 0a48 	vmov.f32	s0, s16
d004dd3a:	980b      	ldr	r0, [sp, #44]	; 0x2c
d004dd3c:	f7fe f8dc 	bl	d004bef8 <weatherLightning>
d004dd40:	4680      	mov	r8, r0
d004dd42:	7820      	ldrb	r0, [r4, #0]
d004dd44:	f006 0501 	and.w	r5, r6, #1
d004dd48:	7861      	ldrb	r1, [r4, #1]
d004dd4a:	78a2      	ldrb	r2, [r4, #2]
d004dd4c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004dd50:	78e3      	ldrb	r3, [r4, #3]
d004dd52:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004dd56:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004dd5a:	69db      	ldr	r3, [r3, #28]
d004dd5c:	4798      	blx	r3
d004dd5e:	4bb7      	ldr	r3, [pc, #732]	; (d004e03c <main+0xf7c>)
d004dd60:	681b      	ldr	r3, [r3, #0]
d004dd62:	b933      	cbnz	r3, d004dd72 <main+0xcb2>
d004dd64:	07f3      	lsls	r3, r6, #31
d004dd66:	d504      	bpl.n	d004dd72 <main+0xcb2>
d004dd68:	2301      	movs	r3, #1
d004dd6a:	4ab4      	ldr	r2, [pc, #720]	; (d004e03c <main+0xf7c>)
d004dd6c:	6013      	str	r3, [r2, #0]
d004dd6e:	f7fe fe5b 	bl	d004ca28 <FirePlayerLaser>
d004dd72:	f005 03ff 	and.w	r3, r5, #255	; 0xff
d004dd76:	b90d      	cbnz	r5, d004dd7c <main+0xcbc>
d004dd78:	4ab0      	ldr	r2, [pc, #704]	; (d004e03c <main+0xf7c>)
d004dd7a:	6013      	str	r3, [r2, #0]
d004dd7c:	f016 0602 	ands.w	r6, r6, #2
d004dd80:	f040 83eb 	bne.w	d004e55a <main+0x149a>
d004dd84:	eeb0 0a48 	vmov.f32	s0, s16
d004dd88:	f7fe ffbe 	bl	d004cd08 <UpdateLasers>
d004dd8c:	4aac      	ldr	r2, [pc, #688]	; (d004e040 <main+0xf80>)
d004dd8e:	8813      	ldrh	r3, [r2, #0]
d004dd90:	3b01      	subs	r3, #1
d004dd92:	b21b      	sxth	r3, r3
d004dd94:	2b00      	cmp	r3, #0
d004dd96:	8013      	strh	r3, [r2, #0]
d004dd98:	dc07      	bgt.n	d004ddaa <main+0xcea>
d004dd9a:	4baa      	ldr	r3, [pc, #680]	; (d004e044 <main+0xf84>)
d004dd9c:	f9b3 3000 	ldrsh.w	r3, [r3]
d004dda0:	2b00      	cmp	r3, #0
d004dda2:	f340 8408 	ble.w	d004e5b6 <main+0x14f6>
d004dda6:	f7fe fde1 	bl	d004c96c <UpdateTurretTest.part.0>
d004ddaa:	eeb0 0a48 	vmov.f32	s0, s16
d004ddae:	f7fe fb05 	bl	d004c3bc <updateImpactFlames>
d004ddb2:	4ba5      	ldr	r3, [pc, #660]	; (d004e048 <main+0xf88>)
d004ddb4:	ed9f 0aa5 	vldr	s0, [pc, #660]	; d004e04c <main+0xf8c>
d004ddb8:	ed93 7a00 	vldr	s14, [r3]
d004ddbc:	eddf 0aa4 	vldr	s1, [pc, #656]	; d004e050 <main+0xf90>
d004ddc0:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d004ddc4:	ed9f 1aa3 	vldr	s2, [pc, #652]	; d004e054 <main+0xf94>
d004ddc8:	ee37 7b09 	vadd.f64	d7, d7, d9
d004ddcc:	eef7 cbc7 	vcvt.f32.f64	s25, d7
d004ddd0:	edc3 ca00 	vstr	s25, [r3]
d004ddd4:	f003 fbea 	bl	d00515ac <vec3>
d004ddd8:	eef0 7a40 	vmov.f32	s15, s0
d004dddc:	eeb0 7a60 	vmov.f32	s14, s1
d004dde0:	eef0 1a41 	vmov.f32	s3, s2
d004dde4:	eeb0 0a6c 	vmov.f32	s0, s25
d004dde8:	edcd 7a65 	vstr	s15, [sp, #404]	; 0x194
d004ddec:	eeb0 1a60 	vmov.f32	s2, s1
d004ddf0:	ed8d 7a66 	vstr	s14, [sp, #408]	; 0x198
d004ddf4:	eef0 0a67 	vmov.f32	s1, s15
d004ddf8:	edcd 1a67 	vstr	s3, [sp, #412]	; 0x19c
d004ddfc:	f7ff f8c8 	bl	d004cf90 <updateSmoke>
d004de00:	7b20      	ldrb	r0, [r4, #12]
d004de02:	7b61      	ldrb	r1, [r4, #13]
d004de04:	7ba2      	ldrb	r2, [r4, #14]
d004de06:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004de0a:	7be3      	ldrb	r3, [r4, #15]
d004de0c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004de10:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004de14:	681b      	ldr	r3, [r3, #0]
d004de16:	68db      	ldr	r3, [r3, #12]
d004de18:	4798      	blx	r3
d004de1a:	4a8f      	ldr	r2, [pc, #572]	; (d004e058 <main+0xf98>)
d004de1c:	7813      	ldrb	r3, [r2, #0]
d004de1e:	f1c3 0301 	rsb	r3, r3, #1
d004de22:	b2db      	uxtb	r3, r3
d004de24:	7013      	strb	r3, [r2, #0]
d004de26:	7813      	ldrb	r3, [r2, #0]
d004de28:	7b21      	ldrb	r1, [r4, #12]
d004de2a:	7b60      	ldrb	r0, [r4, #13]
d004de2c:	7ba2      	ldrb	r2, [r4, #14]
d004de2e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004de32:	2b00      	cmp	r3, #0
d004de34:	f000 8316 	beq.w	d004e464 <main+0x13a4>
d004de38:	4d88      	ldr	r5, [pc, #544]	; (d004e05c <main+0xf9c>)
d004de3a:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004de3e:	7be3      	ldrb	r3, [r4, #15]
d004de40:	6829      	ldr	r1, [r5, #0]
d004de42:	4887      	ldr	r0, [pc, #540]	; (d004e060 <main+0xfa0>)
d004de44:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004de48:	6800      	ldr	r0, [r0, #0]
d004de4a:	f8df b228 	ldr.w	fp, [pc, #552]	; d004e074 <main+0xfb4>
d004de4e:	2700      	movs	r7, #0
d004de50:	681b      	ldr	r3, [r3, #0]
d004de52:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004de54:	4798      	blx	r3
d004de56:	682b      	ldr	r3, [r5, #0]
d004de58:	4d82      	ldr	r5, [pc, #520]	; (d004e064 <main+0xfa4>)
d004de5a:	6818      	ldr	r0, [r3, #0]
d004de5c:	f000 fc74 	bl	d004e748 <set3DRenderBuffer>
d004de60:	f8cd 801c 	str.w	r8, [sp, #28]
d004de64:	46b0      	mov	r8, r6
d004de66:	f81b 3b01 	ldrb.w	r3, [fp], #1
d004de6a:	b333      	cbz	r3, d004deba <main+0xdfa>
d004de6c:	682e      	ldr	r6, [r5, #0]
d004de6e:	4638      	mov	r0, r7
d004de70:	1e71      	subs	r1, r6, #1
d004de72:	2e00      	cmp	r6, #0
d004de74:	f000 82fd 	beq.w	d004e472 <main+0x13b2>
d004de78:	6029      	str	r1, [r5, #0]
d004de7a:	910a      	str	r1, [sp, #40]	; 0x28
d004de7c:	b9e9      	cbnz	r1, d004deba <main+0xdfa>
d004de7e:	7d26      	ldrb	r6, [r4, #20]
d004de80:	7d63      	ldrb	r3, [r4, #21]
d004de82:	7da2      	ldrb	r2, [r4, #22]
d004de84:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d004de88:	7de3      	ldrb	r3, [r4, #23]
d004de8a:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d004de8e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004de92:	689b      	ldr	r3, [r3, #8]
d004de94:	689b      	ldr	r3, [r3, #8]
d004de96:	4798      	blx	r3
d004de98:	7d26      	ldrb	r6, [r4, #20]
d004de9a:	7d63      	ldrb	r3, [r4, #21]
d004de9c:	4638      	mov	r0, r7
d004de9e:	7da2      	ldrb	r2, [r4, #22]
d004dea0:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d004dea4:	7de3      	ldrb	r3, [r4, #23]
d004dea6:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d004deaa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004deae:	689b      	ldr	r3, [r3, #8]
d004deb0:	685b      	ldr	r3, [r3, #4]
d004deb2:	4798      	blx	r3
d004deb4:	990a      	ldr	r1, [sp, #40]	; 0x28
d004deb6:	f80b 1c01 	strb.w	r1, [fp, #-1]
d004deba:	3504      	adds	r5, #4
d004debc:	2f00      	cmp	r7, #0
d004debe:	f000 829e 	beq.w	d004e3fe <main+0x133e>
d004dec2:	9b08      	ldr	r3, [sp, #32]
d004dec4:	4646      	mov	r6, r8
d004dec6:	f8dd 801c 	ldr.w	r8, [sp, #28]
d004deca:	2b00      	cmp	r3, #0
d004decc:	f040 8351 	bne.w	d004e572 <main+0x14b2>
d004ded0:	9b05      	ldr	r3, [sp, #20]
d004ded2:	2b00      	cmp	r3, #0
d004ded4:	f040 830e 	bne.w	d004e4f4 <main+0x1434>
d004ded8:	eeb0 0a4a 	vmov.f32	s0, s20
d004dedc:	f1b8 0f00 	cmp.w	r8, #0
d004dee0:	f000 82fe 	beq.w	d004e4e0 <main+0x1420>
d004dee4:	4960      	ldr	r1, [pc, #384]	; (d004e068 <main+0xfa8>)
d004dee6:	2305      	movs	r3, #5
d004dee8:	2215      	movs	r2, #21
d004deea:	4648      	mov	r0, r9
d004deec:	7809      	ldrb	r1, [r1, #0]
d004deee:	f006 fa7b 	bl	d00543e8 <drawFakeHorizon>
d004def2:	495e      	ldr	r1, [pc, #376]	; (d004e06c <main+0xfac>)
d004def4:	780b      	ldrb	r3, [r1, #0]
d004def6:	2b00      	cmp	r3, #0
d004def8:	f040 8359 	bne.w	d004e5ae <main+0x14ee>
d004defc:	485c      	ldr	r0, [pc, #368]	; (d004e070 <main+0xfb0>)
d004defe:	2205      	movs	r2, #5
d004df00:	4d5c      	ldr	r5, [pc, #368]	; (d004e074 <main+0xfb4>)
d004df02:	7803      	ldrb	r3, [r0, #0]
d004df04:	700a      	strb	r2, [r1, #0]
d004df06:	f1c3 0301 	rsb	r3, r3, #1
d004df0a:	b2db      	uxtb	r3, r3
d004df0c:	5cea      	ldrb	r2, [r5, r3]
d004df0e:	7003      	strb	r3, [r0, #0]
d004df10:	b92a      	cbnz	r2, d004df1e <main+0xe5e>
d004df12:	2101      	movs	r1, #1
d004df14:	2278      	movs	r2, #120	; 0x78
d004df16:	54e9      	strb	r1, [r5, r3]
d004df18:	4952      	ldr	r1, [pc, #328]	; (d004e064 <main+0xfa4>)
d004df1a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d004df1e:	2008      	movs	r0, #8
d004df20:	2320      	movs	r3, #32
d004df22:	2280      	movs	r2, #128	; 0x80
d004df24:	2105      	movs	r1, #5
d004df26:	9000      	str	r0, [sp, #0]
d004df28:	4648      	mov	r0, r9
d004df2a:	f006 f967 	bl	d00541fc <drawFakeSkyDots>
d004df2e:	4952      	ldr	r1, [pc, #328]	; (d004e078 <main+0xfb8>)
d004df30:	eeb0 0a4a 	vmov.f32	s0, s20
d004df34:	236e      	movs	r3, #110	; 0x6e
d004df36:	2280      	movs	r2, #128	; 0x80
d004df38:	7809      	ldrb	r1, [r1, #0]
d004df3a:	4648      	mov	r0, r9
d004df3c:	f006 f846 	bl	d0053fcc <drawFakeHorizonDots>
d004df40:	7820      	ldrb	r0, [r4, #0]
d004df42:	7861      	ldrb	r1, [r4, #1]
d004df44:	78a2      	ldrb	r2, [r4, #2]
d004df46:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004df4a:	78e3      	ldrb	r3, [r4, #3]
d004df4c:	4d4b      	ldr	r5, [pc, #300]	; (d004e07c <main+0xfbc>)
d004df4e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004df52:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004df56:	689b      	ldr	r3, [r3, #8]
d004df58:	4798      	blx	r3
d004df5a:	4603      	mov	r3, r0
d004df5c:	4648      	mov	r0, r9
d004df5e:	602b      	str	r3, [r5, #0]
d004df60:	f007 fa30 	bl	d00553c4 <Render3D>
d004df64:	7820      	ldrb	r0, [r4, #0]
d004df66:	7861      	ldrb	r1, [r4, #1]
d004df68:	78a2      	ldrb	r2, [r4, #2]
d004df6a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004df6e:	78e3      	ldrb	r3, [r4, #3]
d004df70:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004df74:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004df78:	689b      	ldr	r3, [r3, #8]
d004df7a:	4798      	blx	r3
d004df7c:	4940      	ldr	r1, [pc, #256]	; (d004e080 <main+0xfc0>)
d004df7e:	eeb5 7a00 	vmov.f32	s14, #80	; 0x3e800000  0.250
d004df82:	682a      	ldr	r2, [r5, #0]
d004df84:	edd1 7a00 	vldr	s15, [r1]
d004df88:	4d3e      	ldr	r5, [pc, #248]	; (d004e084 <main+0xfc4>)
d004df8a:	1a80      	subs	r0, r0, r2
d004df8c:	ee78 7a27 	vadd.f32	s15, s16, s15
d004df90:	4a3d      	ldr	r2, [pc, #244]	; (d004e088 <main+0xfc8>)
d004df92:	682b      	ldr	r3, [r5, #0]
d004df94:	6010      	str	r0, [r2, #0]
d004df96:	eef4 7ac7 	vcmpe.f32	s15, s14
d004df9a:	3301      	adds	r3, #1
d004df9c:	edc1 7a00 	vstr	s15, [r1]
d004dfa0:	602b      	str	r3, [r5, #0]
d004dfa2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dfa6:	db24      	blt.n	d004dff2 <main+0xf32>
d004dfa8:	ed9f 7a38 	vldr	s14, [pc, #224]	; d004e08c <main+0xfcc>
d004dfac:	eef4 7ac7 	vcmpe.f32	s15, s14
d004dfb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004dfb4:	f340 82e4 	ble.w	d004e580 <main+0x14c0>
d004dfb8:	ee07 3a10 	vmov	s14, r3
d004dfbc:	4b34      	ldr	r3, [pc, #208]	; (d004e090 <main+0xfd0>)
d004dfbe:	2164      	movs	r1, #100	; 0x64
d004dfc0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004dfc4:	ee27 7a0b 	vmul.f32	s14, s14, s22
d004dfc8:	eec7 6a27 	vdiv.f32	s13, s14, s15
d004dfcc:	eefc 7ae6 	vcvt.u32.f32	s15, s13
d004dfd0:	ee17 2a90 	vmov	r2, s15
d004dfd4:	fba3 0302 	umull	r0, r3, r3, r2
d004dfd8:	095b      	lsrs	r3, r3, #5
d004dfda:	fb01 2213 	mls	r2, r1, r3, r2
d004dfde:	482d      	ldr	r0, [pc, #180]	; (d004e094 <main+0xfd4>)
d004dfe0:	2100      	movs	r1, #0
d004dfe2:	6003      	str	r3, [r0, #0]
d004dfe4:	4b2c      	ldr	r3, [pc, #176]	; (d004e098 <main+0xfd8>)
d004dfe6:	601a      	str	r2, [r3, #0]
d004dfe8:	4b25      	ldr	r3, [pc, #148]	; (d004e080 <main+0xfc0>)
d004dfea:	ed83 aa00 	vstr	s20, [r3]
d004dfee:	4b25      	ldr	r3, [pc, #148]	; (d004e084 <main+0xfc4>)
d004dff0:	6019      	str	r1, [r3, #0]
d004dff2:	a87d      	add	r0, sp, #500	; 0x1f4
d004dff4:	f7fd fee2 	bl	d004bdbc <splineRailGetCurrentNode>
d004dff8:	2e00      	cmp	r6, #0
d004dffa:	f040 8202 	bne.w	d004e402 <main+0x1342>
d004dffe:	4b22      	ldr	r3, [pc, #136]	; (d004e088 <main+0xfc8>)
d004e000:	b2c5      	uxtb	r5, r0
d004e002:	4f26      	ldr	r7, [pc, #152]	; (d004e09c <main+0xfdc>)
d004e004:	f44f 767a 	mov.w	r6, #1000	; 0x3e8
d004e008:	f8d3 8000 	ldr.w	r8, [r3]
d004e00c:	4b21      	ldr	r3, [pc, #132]	; (d004e094 <main+0xfd4>)
d004e00e:	681a      	ldr	r2, [r3, #0]
d004e010:	4b21      	ldr	r3, [pc, #132]	; (d004e098 <main+0xfd8>)
d004e012:	920a      	str	r2, [sp, #40]	; 0x28
d004e014:	681b      	ldr	r3, [r3, #0]
d004e016:	9307      	str	r3, [sp, #28]
d004e018:	f005 ffd2 	bl	d0053fc0 <getRenderTriCount>
d004e01c:	f8df c088 	ldr.w	ip, [pc, #136]	; d004e0a8 <main+0xfe8>
d004e020:	9003      	str	r0, [sp, #12]
d004e022:	fbac 3108 	umull	r3, r1, ip, r8
d004e026:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004e028:	9b07      	ldr	r3, [sp, #28]
d004e02a:	ea4f 4e51 	mov.w	lr, r1, lsr #17
d004e02e:	481c      	ldr	r0, [pc, #112]	; (d004e0a0 <main+0xfe0>)
d004e030:	491c      	ldr	r1, [pc, #112]	; (d004e0a4 <main+0xfe4>)
d004e032:	fb07 871e 	mls	r7, r7, lr, r8
d004e036:	9502      	str	r5, [sp, #8]
d004e038:	e038      	b.n	d004e0ac <main+0xfec>
d004e03a:	bf00      	nop
d004e03c:	d005b148 	.word	0xd005b148
d004e040:	d005b176 	.word	0xd005b176
d004e044:	d005b174 	.word	0xd005b174
d004e048:	d005b178 	.word	0xd005b178
d004e04c:	c40d4000 	.word	0xc40d4000
d004e050:	43d70000 	.word	0x43d70000
d004e054:	c4480000 	.word	0xc4480000
d004e058:	d005afe0 	.word	0xd005afe0
d004e05c:	d00f55a0 	.word	0xd00f55a0
d004e060:	d00f55c0 	.word	0xd00f55c0
d004e064:	d005b160 	.word	0xd005b160
d004e068:	d00f5564 	.word	0xd00f5564
d004e06c:	d005ae8c 	.word	0xd005ae8c
d004e070:	d005af48 	.word	0xd005af48
d004e074:	d005b15c 	.word	0xd005b15c
d004e078:	d00f5544 	.word	0xd00f5544
d004e07c:	d005b168 	.word	0xd005b168
d004e080:	d005afd8 	.word	0xd005afd8
d004e084:	d005afd4 	.word	0xd005afd4
d004e088:	d005b16c 	.word	0xd005b16c
d004e08c:	3727c5ac 	.word	0x3727c5ac
d004e090:	51eb851f 	.word	0x51eb851f
d004e094:	d005afdc 	.word	0xd005afdc
d004e098:	d005afd0 	.word	0xd005afd0
d004e09c:	00075300 	.word	0x00075300
d004e0a0:	d005ae94 	.word	0xd005ae94
d004e0a4:	d00580f8 	.word	0xd00580f8
d004e0a8:	45e7b273 	.word	0x45e7b273
d004e0ac:	fb06 f607 	mul.w	r6, r6, r7
d004e0b0:	f8cd e000 	str.w	lr, [sp]
d004e0b4:	fbac 7606 	umull	r7, r6, ip, r6
d004e0b8:	0c76      	lsrs	r6, r6, #17
d004e0ba:	9601      	str	r6, [sp, #4]
d004e0bc:	f008 f9f0 	bl	d00564a0 <siprintf>
d004e0c0:	4bb2      	ldr	r3, [pc, #712]	; (d004e38c <main+0x12cc>)
d004e0c2:	781b      	ldrb	r3, [r3, #0]
d004e0c4:	42ab      	cmp	r3, r5
d004e0c6:	d002      	beq.n	d004e0ce <main+0x100e>
d004e0c8:	2d14      	cmp	r5, #20
d004e0ca:	f000 825c 	beq.w	d004e586 <main+0x14c6>
d004e0ce:	9b05      	ldr	r3, [sp, #20]
d004e0d0:	0118      	lsls	r0, r3, #4
d004e0d2:	3001      	adds	r0, #1
d004e0d4:	7b23      	ldrb	r3, [r4, #12]
d004e0d6:	2640      	movs	r6, #64	; 0x40
d004e0d8:	7b62      	ldrb	r2, [r4, #13]
d004e0da:	7ba7      	ldrb	r7, [r4, #14]
d004e0dc:	ea43 2102 	orr.w	r1, r3, r2, lsl #8
d004e0e0:	4aaa      	ldr	r2, [pc, #680]	; (d004e38c <main+0x12cc>)
d004e0e2:	7be3      	ldrb	r3, [r4, #15]
d004e0e4:	7015      	strb	r5, [r2, #0]
d004e0e6:	ea41 4207 	orr.w	r2, r1, r7, lsl #16
d004e0ea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e0ee:	685b      	ldr	r3, [r3, #4]
d004e0f0:	68db      	ldr	r3, [r3, #12]
d004e0f2:	4798      	blx	r3
d004e0f4:	7b20      	ldrb	r0, [r4, #12]
d004e0f6:	7b65      	ldrb	r5, [r4, #13]
d004e0f8:	2108      	movs	r1, #8
d004e0fa:	7ba3      	ldrb	r3, [r4, #14]
d004e0fc:	ea40 2505 	orr.w	r5, r0, r5, lsl #8
d004e100:	7be7      	ldrb	r7, [r4, #15]
d004e102:	4608      	mov	r0, r1
d004e104:	4aa2      	ldr	r2, [pc, #648]	; (d004e390 <main+0x12d0>)
d004e106:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
d004e10a:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d004e10e:	687b      	ldr	r3, [r7, #4]
d004e110:	4fa0      	ldr	r7, [pc, #640]	; (d004e394 <main+0x12d4>)
d004e112:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d004e114:	4798      	blx	r3
d004e116:	eddf 7aa0 	vldr	s15, [pc, #640]	; d004e398 <main+0x12d8>
d004e11a:	7d25      	ldrb	r5, [r4, #20]
d004e11c:	2002      	movs	r0, #2
d004e11e:	ee68 7aa7 	vmul.f32	s15, s17, s15
d004e122:	7d62      	ldrb	r2, [r4, #21]
d004e124:	ed9f 7a9d 	vldr	s14, [pc, #628]	; d004e39c <main+0x12dc>
d004e128:	ee68 8aab 	vmul.f32	s17, s17, s23
d004e12c:	ea45 2102 	orr.w	r1, r5, r2, lsl #8
d004e130:	7da2      	ldrb	r2, [r4, #22]
d004e132:	eef0 7ae7 	vabs.f32	s15, s15
d004e136:	7de3      	ldrb	r3, [r4, #23]
d004e138:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e13c:	ee77 7a87 	vadd.f32	s15, s15, s14
d004e140:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e144:	689b      	ldr	r3, [r3, #8]
d004e146:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004e14a:	691b      	ldr	r3, [r3, #16]
d004e14c:	ee17 2a90 	vmov	r2, s15
d004e150:	b291      	uxth	r1, r2
d004e152:	4798      	blx	r3
d004e154:	ed9f 7a92 	vldr	s14, [pc, #584]	; d004e3a0 <main+0x12e0>
d004e158:	edd7 7a00 	vldr	s15, [r7]
d004e15c:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004e160:	eeb4 8a47 	vcmp.f32	s16, s14
d004e164:	7b21      	ldrb	r1, [r4, #12]
d004e166:	ee78 8ae7 	vsub.f32	s17, s17, s15
d004e16a:	7b62      	ldrb	r2, [r4, #13]
d004e16c:	7ba3      	ldrb	r3, [r4, #14]
d004e16e:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004e172:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e176:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d004e17a:	7be0      	ldrb	r0, [r4, #15]
d004e17c:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d004e180:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d004e184:	f04f 010a 	mov.w	r1, #10
d004e188:	fe36 ca0c 	vselgt.f32	s24, s12, s24
d004e18c:	eee8 7a8c 	vfma.f32	s15, s17, s24
d004e190:	ea43 6000 	orr.w	r0, r3, r0, lsl #24
d004e194:	f44f 7280 	mov.w	r2, #256	; 0x100
d004e198:	4633      	mov	r3, r6
d004e19a:	6845      	ldr	r5, [r0, #4]
d004e19c:	9600      	str	r6, [sp, #0]
d004e19e:	4881      	ldr	r0, [pc, #516]	; (d004e3a4 <main+0x12e4>)
d004e1a0:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004e1a4:	69ad      	ldr	r5, [r5, #24]
d004e1a6:	edc7 7a00 	vstr	s15, [r7]
d004e1aa:	eeb0 8a67 	vmov.f32	s16, s15
d004e1ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e1b2:	fe67 8a26 	vselge.f32	s17, s14, s13
d004e1b6:	47a8      	blx	r5
d004e1b8:	4b7b      	ldr	r3, [pc, #492]	; (d004e3a8 <main+0x12e8>)
d004e1ba:	781b      	ldrb	r3, [r3, #0]
d004e1bc:	b1cb      	cbz	r3, d004e1f2 <main+0x1132>
d004e1be:	7b21      	ldrb	r1, [r4, #12]
d004e1c0:	ee38 8a28 	vadd.f32	s16, s16, s17
d004e1c4:	7b60      	ldrb	r0, [r4, #13]
d004e1c6:	4633      	mov	r3, r6
d004e1c8:	7ba5      	ldrb	r5, [r4, #14]
d004e1ca:	2280      	movs	r2, #128	; 0x80
d004e1cc:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d004e1d0:	eefd 7ac8 	vcvt.s32.f32	s15, s16
d004e1d4:	7be7      	ldrb	r7, [r4, #15]
d004e1d6:	ea41 4005 	orr.w	r0, r1, r5, lsl #16
d004e1da:	ee17 1a90 	vmov	r1, s15
d004e1de:	ea40 6507 	orr.w	r5, r0, r7, lsl #24
d004e1e2:	4872      	ldr	r0, [pc, #456]	; (d004e3ac <main+0x12ec>)
d004e1e4:	f1c1 01d0 	rsb	r1, r1, #208	; 0xd0
d004e1e8:	686d      	ldr	r5, [r5, #4]
d004e1ea:	b209      	sxth	r1, r1
d004e1ec:	9600      	str	r6, [sp, #0]
d004e1ee:	69ad      	ldr	r5, [r5, #24]
d004e1f0:	47a8      	blx	r5
d004e1f2:	4f6f      	ldr	r7, [pc, #444]	; (d004e3b0 <main+0x12f0>)
d004e1f4:	2633      	movs	r6, #51	; 0x33
d004e1f6:	e035      	b.n	d004e264 <main+0x11a4>
d004e1f8:	883b      	ldrh	r3, [r7, #0]
d004e1fa:	f1c3 0332 	rsb	r3, r3, #50	; 0x32
d004e1fe:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d004e202:	005d      	lsls	r5, r3, #1
d004e204:	f115 0f31 	cmn.w	r5, #49	; 0x31
d004e208:	f2c0 80d8 	blt.w	d004e3bc <main+0x12fc>
d004e20c:	f894 c00c 	ldrb.w	ip, [r4, #12]
d004e210:	2000      	movs	r0, #0
d004e212:	7b61      	ldrb	r1, [r4, #13]
d004e214:	7ba2      	ldrb	r2, [r4, #14]
d004e216:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e21a:	7be3      	ldrb	r3, [r4, #15]
d004e21c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e220:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e224:	685b      	ldr	r3, [r3, #4]
d004e226:	68db      	ldr	r3, [r3, #12]
d004e228:	4798      	blx	r3
d004e22a:	7b21      	ldrb	r1, [r4, #12]
d004e22c:	7b60      	ldrb	r0, [r4, #13]
d004e22e:	2312      	movs	r3, #18
d004e230:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e234:	2206      	movs	r2, #6
d004e236:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e23a:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e23e:	b231      	sxth	r1, r6
d004e240:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d004e244:	2009      	movs	r0, #9
d004e246:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004e24a:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e24e:	f8dc 8004 	ldr.w	r8, [ip, #4]
d004e252:	47c0      	blx	r8
d004e254:	2d31      	cmp	r5, #49	; 0x31
d004e256:	f300 81de 	bgt.w	d004e616 <main+0x1556>
d004e25a:	3616      	adds	r6, #22
d004e25c:	3706      	adds	r7, #6
d004e25e:	b2b6      	uxth	r6, r6
d004e260:	2ee3      	cmp	r6, #227	; 0xe3
d004e262:	d078      	beq.n	d004e356 <main+0x1296>
d004e264:	7b25      	ldrb	r5, [r4, #12]
d004e266:	201b      	movs	r0, #27
d004e268:	7b61      	ldrb	r1, [r4, #13]
d004e26a:	7ba2      	ldrb	r2, [r4, #14]
d004e26c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e270:	7be3      	ldrb	r3, [r4, #15]
d004e272:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e276:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e27a:	685b      	ldr	r3, [r3, #4]
d004e27c:	68db      	ldr	r3, [r3, #12]
d004e27e:	4798      	blx	r3
d004e280:	7b20      	ldrb	r0, [r4, #12]
d004e282:	f894 c00d 	ldrb.w	ip, [r4, #13]
d004e286:	2208      	movs	r2, #8
d004e288:	7ba5      	ldrb	r5, [r4, #14]
d004e28a:	1e71      	subs	r1, r6, #1
d004e28c:	ea40 230c 	orr.w	r3, r0, ip, lsl #8
d004e290:	f894 e00f 	ldrb.w	lr, [r4, #15]
d004e294:	4610      	mov	r0, r2
d004e296:	b209      	sxth	r1, r1
d004e298:	ea43 4c05 	orr.w	ip, r3, r5, lsl #16
d004e29c:	2314      	movs	r3, #20
d004e29e:	ea4c 650e 	orr.w	r5, ip, lr, lsl #24
d004e2a2:	686d      	ldr	r5, [r5, #4]
d004e2a4:	686d      	ldr	r5, [r5, #4]
d004e2a6:	47a8      	blx	r5
d004e2a8:	f817 0c02 	ldrb.w	r0, [r7, #-2]
d004e2ac:	2800      	cmp	r0, #0
d004e2ae:	d1a3      	bne.n	d004e1f8 <main+0x1138>
d004e2b0:	7b23      	ldrb	r3, [r4, #12]
d004e2b2:	2512      	movs	r5, #18
d004e2b4:	7b61      	ldrb	r1, [r4, #13]
d004e2b6:	7ba2      	ldrb	r2, [r4, #14]
d004e2b8:	46a8      	mov	r8, r5
d004e2ba:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d004e2be:	7be3      	ldrb	r3, [r4, #15]
d004e2c0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e2c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e2c8:	685b      	ldr	r3, [r3, #4]
d004e2ca:	68db      	ldr	r3, [r3, #12]
d004e2cc:	4798      	blx	r3
d004e2ce:	7b20      	ldrb	r0, [r4, #12]
d004e2d0:	7b61      	ldrb	r1, [r4, #13]
d004e2d2:	462b      	mov	r3, r5
d004e2d4:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e2d8:	2206      	movs	r2, #6
d004e2da:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e2de:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e2e2:	2009      	movs	r0, #9
d004e2e4:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
d004e2e8:	b231      	sxth	r1, r6
d004e2ea:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004e2ee:	f8dc c004 	ldr.w	ip, [ip, #4]
d004e2f2:	f8dc b004 	ldr.w	fp, [ip, #4]
d004e2f6:	47d8      	blx	fp
d004e2f8:	7b20      	ldrb	r0, [r4, #12]
d004e2fa:	3706      	adds	r7, #6
d004e2fc:	7b61      	ldrb	r1, [r4, #13]
d004e2fe:	7ba2      	ldrb	r2, [r4, #14]
d004e300:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e304:	7be3      	ldrb	r3, [r4, #15]
d004e306:	f817 0c08 	ldrb.w	r0, [r7, #-8]
d004e30a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e30e:	2800      	cmp	r0, #0
d004e310:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e314:	bf14      	ite	ne
d004e316:	200e      	movne	r0, #14
d004e318:	201b      	moveq	r0, #27
d004e31a:	685b      	ldr	r3, [r3, #4]
d004e31c:	68db      	ldr	r3, [r3, #12]
d004e31e:	4798      	blx	r3
d004e320:	7b22      	ldrb	r2, [r4, #12]
d004e322:	7b60      	ldrb	r0, [r4, #13]
d004e324:	462b      	mov	r3, r5
d004e326:	f894 e00e 	ldrb.w	lr, [r4, #14]
d004e32a:	f106 0112 	add.w	r1, r6, #18
d004e32e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004e332:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004e336:	3616      	adds	r6, #22
d004e338:	eba1 0108 	sub.w	r1, r1, r8
d004e33c:	ea40 450e 	orr.w	r5, r0, lr, lsl #16
d004e340:	2206      	movs	r2, #6
d004e342:	b2b6      	uxth	r6, r6
d004e344:	2009      	movs	r0, #9
d004e346:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004e34a:	b209      	sxth	r1, r1
d004e34c:	686d      	ldr	r5, [r5, #4]
d004e34e:	686d      	ldr	r5, [r5, #4]
d004e350:	47a8      	blx	r5
d004e352:	2ee3      	cmp	r6, #227	; 0xe3
d004e354:	d186      	bne.n	d004e264 <main+0x11a4>
d004e356:	7b20      	ldrb	r0, [r4, #12]
d004e358:	7b61      	ldrb	r1, [r4, #13]
d004e35a:	7ba2      	ldrb	r2, [r4, #14]
d004e35c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004e360:	7be3      	ldrb	r3, [r4, #15]
d004e362:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e366:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e36a:	681b      	ldr	r3, [r3, #0]
d004e36c:	681b      	ldr	r3, [r3, #0]
d004e36e:	4798      	blx	r3
d004e370:	eddf 7a10 	vldr	s15, [pc, #64]	; d004e3b4 <main+0x12f4>
d004e374:	eef4 aae7 	vcmpe.f32	s21, s15
d004e378:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e37c:	dc6f      	bgt.n	d004e45e <main+0x139e>
d004e37e:	eddf 7a0e 	vldr	s15, [pc, #56]	; d004e3b8 <main+0x12f8>
d004e382:	ee7a aaa7 	vadd.f32	s21, s21, s15
d004e386:	9d06      	ldr	r5, [sp, #24]
d004e388:	f7ff bb9a 	b.w	d004dac0 <main+0xa00>
d004e38c:	d005b14c 	.word	0xd005b14c
d004e390:	d005ae94 	.word	0xd005ae94
d004e394:	d005b158 	.word	0xd005b158
d004e398:	448fc000 	.word	0x448fc000
d004e39c:	472c4400 	.word	0x472c4400
d004e3a0:	3daaaaab 	.word	0x3daaaaab
d004e3a4:	d0058a88 	.word	0xd0058a88
d004e3a8:	d005afe0 	.word	0xd005afe0
d004e3ac:	d0059a88 	.word	0xd0059a88
d004e3b0:	d00f5642 	.word	0xd00f5642
d004e3b4:	3f7ef9db 	.word	0x3f7ef9db
d004e3b8:	3b83126f 	.word	0x3b83126f
d004e3bc:	7b25      	ldrb	r5, [r4, #12]
d004e3be:	2000      	movs	r0, #0
d004e3c0:	7b61      	ldrb	r1, [r4, #13]
d004e3c2:	7ba2      	ldrb	r2, [r4, #14]
d004e3c4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004e3c8:	7be3      	ldrb	r3, [r4, #15]
d004e3ca:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e3ce:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e3d2:	685b      	ldr	r3, [r3, #4]
d004e3d4:	68db      	ldr	r3, [r3, #12]
d004e3d6:	4798      	blx	r3
d004e3d8:	7b21      	ldrb	r1, [r4, #12]
d004e3da:	7b60      	ldrb	r0, [r4, #13]
d004e3dc:	2312      	movs	r3, #18
d004e3de:	f894 c00e 	ldrb.w	ip, [r4, #14]
d004e3e2:	2206      	movs	r2, #6
d004e3e4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004e3e8:	7be5      	ldrb	r5, [r4, #15]
d004e3ea:	b231      	sxth	r1, r6
d004e3ec:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004e3f0:	2009      	movs	r0, #9
d004e3f2:	ea4c 6505 	orr.w	r5, ip, r5, lsl #24
d004e3f6:	686d      	ldr	r5, [r5, #4]
d004e3f8:	686d      	ldr	r5, [r5, #4]
d004e3fa:	47a8      	blx	r5
d004e3fc:	e72d      	b.n	d004e25a <main+0x119a>
d004e3fe:	2701      	movs	r7, #1
d004e400:	e531      	b.n	d004de66 <main+0xda6>
d004e402:	4b88      	ldr	r3, [pc, #544]	; (d004e624 <main+0x1564>)
d004e404:	4f88      	ldr	r7, [pc, #544]	; (d004e628 <main+0x1568>)
d004e406:	f8d3 8000 	ldr.w	r8, [r3]
d004e40a:	4b88      	ldr	r3, [pc, #544]	; (d004e62c <main+0x156c>)
d004e40c:	4e88      	ldr	r6, [pc, #544]	; (d004e630 <main+0x1570>)
d004e40e:	681a      	ldr	r2, [r3, #0]
d004e410:	4b88      	ldr	r3, [pc, #544]	; (d004e634 <main+0x1574>)
d004e412:	920a      	str	r2, [sp, #40]	; 0x28
d004e414:	681b      	ldr	r3, [r3, #0]
d004e416:	9307      	str	r3, [sp, #28]
d004e418:	f005 fdd2 	bl	d0053fc0 <getRenderTriCount>
d004e41c:	fba7 3508 	umull	r3, r5, r7, r8
d004e420:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d004e424:	9003      	str	r0, [sp, #12]
d004e426:	0c68      	lsrs	r0, r5, #17
d004e428:	2514      	movs	r5, #20
d004e42a:	9b07      	ldr	r3, [sp, #28]
d004e42c:	fb06 8610 	mls	r6, r6, r0, r8
d004e430:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004e432:	9502      	str	r5, [sp, #8]
d004e434:	fb01 f606 	mul.w	r6, r1, r6
d004e438:	497f      	ldr	r1, [pc, #508]	; (d004e638 <main+0x1578>)
d004e43a:	9000      	str	r0, [sp, #0]
d004e43c:	fba7 5606 	umull	r5, r6, r7, r6
d004e440:	487e      	ldr	r0, [pc, #504]	; (d004e63c <main+0x157c>)
d004e442:	0c76      	lsrs	r6, r6, #17
d004e444:	9601      	str	r6, [sp, #4]
d004e446:	f008 f82b 	bl	d00564a0 <siprintf>
d004e44a:	4b7d      	ldr	r3, [pc, #500]	; (d004e640 <main+0x1580>)
d004e44c:	781d      	ldrb	r5, [r3, #0]
d004e44e:	2d14      	cmp	r5, #20
d004e450:	f040 8099 	bne.w	d004e586 <main+0x14c6>
d004e454:	9b05      	ldr	r3, [sp, #20]
d004e456:	0118      	lsls	r0, r3, #4
d004e458:	3001      	adds	r0, #1
d004e45a:	b2c0      	uxtb	r0, r0
d004e45c:	e63a      	b.n	d004e0d4 <main+0x1014>
d004e45e:	eef7 aa00 	vmov.f32	s21, #112	; 0x3f800000  1.0
d004e462:	e790      	b.n	d004e386 <main+0x12c6>
d004e464:	4d77      	ldr	r5, [pc, #476]	; (d004e644 <main+0x1584>)
d004e466:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004e46a:	7be3      	ldrb	r3, [r4, #15]
d004e46c:	6829      	ldr	r1, [r5, #0]
d004e46e:	4876      	ldr	r0, [pc, #472]	; (d004e648 <main+0x1588>)
d004e470:	e4e8      	b.n	d004de44 <main+0xd84>
d004e472:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e476:	7d61      	ldrb	r1, [r4, #21]
d004e478:	7da2      	ldrb	r2, [r4, #22]
d004e47a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e47e:	7de3      	ldrb	r3, [r4, #23]
d004e480:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e484:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e488:	689b      	ldr	r3, [r3, #8]
d004e48a:	689b      	ldr	r3, [r3, #8]
d004e48c:	4798      	blx	r3
d004e48e:	f894 c014 	ldrb.w	ip, [r4, #20]
d004e492:	7d61      	ldrb	r1, [r4, #21]
d004e494:	4638      	mov	r0, r7
d004e496:	7da2      	ldrb	r2, [r4, #22]
d004e498:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004e49c:	7de3      	ldrb	r3, [r4, #23]
d004e49e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004e4a2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004e4a6:	689b      	ldr	r3, [r3, #8]
d004e4a8:	685b      	ldr	r3, [r3, #4]
d004e4aa:	4798      	blx	r3
d004e4ac:	f80b 6c01 	strb.w	r6, [fp, #-1]
d004e4b0:	e503      	b.n	d004deba <main+0xdfa>
d004e4b2:	f04f 0800 	mov.w	r8, #0
d004e4b6:	4650      	mov	r0, sl
d004e4b8:	4641      	mov	r1, r8
d004e4ba:	f004 fecf 	bl	d005325c <lightEnable>
d004e4be:	e440      	b.n	d004dd42 <main+0xc82>
d004e4c0:	ed9f ca62 	vldr	s24, [pc, #392]	; d004e64c <main+0x158c>
d004e4c4:	ed9f ea62 	vldr	s28, [pc, #392]	; d004e650 <main+0x1590>
d004e4c8:	ed9f da62 	vldr	s26, [pc, #392]	; d004e654 <main+0x1594>
d004e4cc:	eddf da62 	vldr	s27, [pc, #392]	; d004e658 <main+0x1598>
d004e4d0:	eddf ca62 	vldr	s25, [pc, #392]	; d004e65c <main+0x159c>
d004e4d4:	eddf ea62 	vldr	s29, [pc, #392]	; d004e660 <main+0x15a0>
d004e4d8:	ed9f 8a62 	vldr	s16, [pc, #392]	; d004e664 <main+0x15a4>
d004e4dc:	f7ff bb3f 	b.w	d004db5e <main+0xa9e>
d004e4e0:	4b61      	ldr	r3, [pc, #388]	; (d004e668 <main+0x15a8>)
d004e4e2:	4648      	mov	r0, r9
d004e4e4:	4a61      	ldr	r2, [pc, #388]	; (d004e66c <main+0x15ac>)
d004e4e6:	4962      	ldr	r1, [pc, #392]	; (d004e670 <main+0x15b0>)
d004e4e8:	781b      	ldrb	r3, [r3, #0]
d004e4ea:	7812      	ldrb	r2, [r2, #0]
d004e4ec:	7809      	ldrb	r1, [r1, #0]
d004e4ee:	f005 ff7b 	bl	d00543e8 <drawFakeHorizon>
d004e4f2:	e514      	b.n	d004df1e <main+0xe5e>
d004e4f4:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
d004e4f6:	2101      	movs	r1, #1
d004e4f8:	4628      	mov	r0, r5
d004e4fa:	f004 feaf 	bl	d005325c <lightEnable>
d004e4fe:	4628      	mov	r0, r5
d004e500:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004e504:	f004 ff40 	bl	d0053388 <lightSetIntensity>
d004e508:	eeb0 0a4a 	vmov.f32	s0, s20
d004e50c:	2301      	movs	r3, #1
d004e50e:	2224      	movs	r2, #36	; 0x24
d004e510:	212b      	movs	r1, #43	; 0x2b
d004e512:	4648      	mov	r0, r9
d004e514:	f005 ff68 	bl	d00543e8 <drawFakeHorizon>
d004e518:	e509      	b.n	d004df2e <main+0xe6e>
d004e51a:	eef0 0a6b 	vmov.f32	s1, s23
d004e51e:	ed9f 1a55 	vldr	s2, [pc, #340]	; d004e674 <main+0x15b4>
d004e522:	ed9f 0a55 	vldr	s0, [pc, #340]	; d004e678 <main+0x15b8>
d004e526:	f003 f841 	bl	d00515ac <vec3>
d004e52a:	ee1f 0a10 	vmov	r0, s30
d004e52e:	ed8d 0a62 	vstr	s0, [sp, #392]	; 0x188
d004e532:	edcd 0a63 	vstr	s1, [sp, #396]	; 0x18c
d004e536:	ed8d 1a64 	vstr	s2, [sp, #400]	; 0x190
d004e53a:	f003 ffc9 	bl	d00524d0 <entitySetPosition>
d004e53e:	f7ff bb83 	b.w	d004dc48 <main+0xb88>
d004e542:	eef1 0a60 	vneg.f32	s1, s1
d004e546:	2101      	movs	r1, #1
d004e548:	eeb0 1a4a 	vmov.f32	s2, s20
d004e54c:	ed9f 0a4b 	vldr	s0, [pc, #300]	; d004e67c <main+0x15bc>
d004e550:	4648      	mov	r0, r9
d004e552:	f003 fabf 	bl	d0051ad4 <cameraTurn>
d004e556:	f7ff bb46 	b.w	d004dbe6 <main+0xb26>
d004e55a:	2300      	movs	r3, #0
d004e55c:	eeb0 1a4e 	vmov.f32	s2, s28
d004e560:	eef0 0a4a 	vmov.f32	s1, s20
d004e564:	ed9f 0a45 	vldr	s0, [pc, #276]	; d004e67c <main+0x15bc>
d004e568:	4648      	mov	r0, r9
d004e56a:	9308      	str	r3, [sp, #32]
d004e56c:	f003 fc8e 	bl	d0051e8c <cameraMove>
d004e570:	e408      	b.n	d004dd84 <main+0xcc4>
d004e572:	eeb0 0a48 	vmov.f32	s0, s16
d004e576:	4649      	mov	r1, r9
d004e578:	a87d      	add	r0, sp, #500	; 0x1f4
d004e57a:	f7fd fa39 	bl	d004b9f0 <splineRailUpdate>
d004e57e:	e4a7      	b.n	d004ded0 <main+0xe10>
d004e580:	2200      	movs	r2, #0
d004e582:	4613      	mov	r3, r2
d004e584:	e52b      	b.n	d004dfde <main+0xf1e>
d004e586:	9b05      	ldr	r3, [sp, #20]
d004e588:	2b00      	cmp	r3, #0
d004e58a:	d033      	beq.n	d004e5f4 <main+0x1534>
d004e58c:	4d38      	ldr	r5, [pc, #224]	; (d004e670 <main+0x15b0>)
d004e58e:	4618      	mov	r0, r3
d004e590:	2313      	movs	r3, #19
d004e592:	2112      	movs	r1, #18
d004e594:	2215      	movs	r2, #21
d004e596:	702b      	strb	r3, [r5, #0]
d004e598:	2317      	movs	r3, #23
d004e59a:	4d34      	ldr	r5, [pc, #208]	; (d004e66c <main+0x15ac>)
d004e59c:	7029      	strb	r1, [r5, #0]
d004e59e:	2514      	movs	r5, #20
d004e5a0:	4931      	ldr	r1, [pc, #196]	; (d004e668 <main+0x15a8>)
d004e5a2:	700a      	strb	r2, [r1, #0]
d004e5a4:	2200      	movs	r2, #0
d004e5a6:	9205      	str	r2, [sp, #20]
d004e5a8:	4a35      	ldr	r2, [pc, #212]	; (d004e680 <main+0x15c0>)
d004e5aa:	7013      	strb	r3, [r2, #0]
d004e5ac:	e592      	b.n	d004e0d4 <main+0x1014>
d004e5ae:	3b01      	subs	r3, #1
d004e5b0:	4a34      	ldr	r2, [pc, #208]	; (d004e684 <main+0x15c4>)
d004e5b2:	7013      	strb	r3, [r2, #0]
d004e5b4:	e4b3      	b.n	d004df1e <main+0xe5e>
d004e5b6:	f007 fe65 	bl	d0056284 <rand>
d004e5ba:	4242      	negs	r2, r0
d004e5bc:	f000 0303 	and.w	r3, r0, #3
d004e5c0:	f002 0203 	and.w	r2, r2, #3
d004e5c4:	bf58      	it	pl
d004e5c6:	4253      	negpl	r3, r2
d004e5c8:	4a2f      	ldr	r2, [pc, #188]	; (d004e688 <main+0x15c8>)
d004e5ca:	3303      	adds	r3, #3
d004e5cc:	8013      	strh	r3, [r2, #0]
d004e5ce:	f007 fe59 	bl	d0056284 <rand>
d004e5d2:	4b2e      	ldr	r3, [pc, #184]	; (d004e68c <main+0x15cc>)
d004e5d4:	fb83 2300 	smull	r2, r3, r3, r0
d004e5d8:	17c2      	asrs	r2, r0, #31
d004e5da:	4403      	add	r3, r0
d004e5dc:	ebc2 12a3 	rsb	r2, r2, r3, asr #6
d004e5e0:	eb02 03c2 	add.w	r3, r2, r2, lsl #3
d004e5e4:	ebc2 02c3 	rsb	r2, r2, r3, lsl #3
d004e5e8:	1a83      	subs	r3, r0, r2
d004e5ea:	4a29      	ldr	r2, [pc, #164]	; (d004e690 <main+0x15d0>)
d004e5ec:	3314      	adds	r3, #20
d004e5ee:	8013      	strh	r3, [r2, #0]
d004e5f0:	f7ff bbdb 	b.w	d004ddaa <main+0xcea>
d004e5f4:	2009      	movs	r0, #9
d004e5f6:	4d1e      	ldr	r5, [pc, #120]	; (d004e670 <main+0x15b0>)
d004e5f8:	213b      	movs	r1, #59	; 0x3b
d004e5fa:	222b      	movs	r2, #43	; 0x2b
d004e5fc:	7028      	strb	r0, [r5, #0]
d004e5fe:	2001      	movs	r0, #1
d004e600:	2302      	movs	r3, #2
d004e602:	2514      	movs	r5, #20
d004e604:	9005      	str	r0, [sp, #20]
d004e606:	4819      	ldr	r0, [pc, #100]	; (d004e66c <main+0x15ac>)
d004e608:	7001      	strb	r1, [r0, #0]
d004e60a:	2011      	movs	r0, #17
d004e60c:	4916      	ldr	r1, [pc, #88]	; (d004e668 <main+0x15a8>)
d004e60e:	700a      	strb	r2, [r1, #0]
d004e610:	4a1b      	ldr	r2, [pc, #108]	; (d004e680 <main+0x15c0>)
d004e612:	7013      	strb	r3, [r2, #0]
d004e614:	e55e      	b.n	d004e0d4 <main+0x1014>
d004e616:	2332      	movs	r3, #50	; 0x32
d004e618:	fb95 f5f3 	sdiv	r5, r5, r3
d004e61c:	fa1f f885 	uxth.w	r8, r5
d004e620:	b22d      	sxth	r5, r5
d004e622:	e669      	b.n	d004e2f8 <main+0x1238>
d004e624:	d005b16c 	.word	0xd005b16c
d004e628:	45e7b273 	.word	0x45e7b273
d004e62c:	d005afdc 	.word	0xd005afdc
d004e630:	00075300 	.word	0x00075300
d004e634:	d005afd0 	.word	0xd005afd0
d004e638:	d00580f8 	.word	0xd00580f8
d004e63c:	d005ae94 	.word	0xd005ae94
d004e640:	d005b14c 	.word	0xd005b14c
d004e644:	d00f55c0 	.word	0xd00f55c0
d004e648:	d00f55a0 	.word	0xd00f55a0
d004e64c:	40d33334 	.word	0x40d33334
d004e650:	42f20000 	.word	0x42f20000
d004e654:	42b6ee15 	.word	0x42b6ee15
d004e658:	3f28f5c3 	.word	0x3f28f5c3
d004e65c:	4215999a 	.word	0x4215999a
d004e660:	bc872b02 	.word	0xbc872b02
d004e664:	3f0ccccd 	.word	0x3f0ccccd
d004e668:	d00f559c 	.word	0xd00f559c
d004e66c:	d00f54e0 	.word	0xd00f54e0
d004e670:	d00f5564 	.word	0xd00f5564
d004e674:	c3c80000 	.word	0xc3c80000
d004e678:	c3070000 	.word	0xc3070000
d004e67c:	00000000 	.word	0x00000000
d004e680:	d00f5544 	.word	0xd00f5544
d004e684:	d005ae8c 	.word	0xd005ae8c
d004e688:	d005b174 	.word	0xd005b174
d004e68c:	e6c2b449 	.word	0xe6c2b449
d004e690:	d005b176 	.word	0xd005b176

d004e694 <meshSetDefaultMaterial>:
d004e694:	b148      	cbz	r0, d004e6aa <meshSetDefaultMaterial+0x16>
d004e696:	2300      	movs	r3, #0
d004e698:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d004e69c:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d004e6a0:	6203      	str	r3, [r0, #32]
d004e6a2:	6241      	str	r1, [r0, #36]	; 0x24
d004e6a4:	62c2      	str	r2, [r0, #44]	; 0x2c
d004e6a6:	6303      	str	r3, [r0, #48]	; 0x30
d004e6a8:	6283      	str	r3, [r0, #40]	; 0x28
d004e6aa:	4770      	bx	lr

d004e6ac <meshSetMaterial>:
d004e6ac:	b148      	cbz	r0, d004e6c2 <meshSetMaterial+0x16>
d004e6ae:	ed80 0a08 	vstr	s0, [r0, #32]
d004e6b2:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d004e6b6:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d004e6ba:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d004e6be:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d004e6c2:	4770      	bx	lr

d004e6c4 <initDepthBandMem>:
d004e6c4:	b510      	push	{r4, lr}
d004e6c6:	4c0c      	ldr	r4, [pc, #48]	; (d004e6f8 <initDepthBandMem+0x34>)
d004e6c8:	6823      	ldr	r3, [r4, #0]
d004e6ca:	b103      	cbz	r3, d004e6ce <initDepthBandMem+0xa>
d004e6cc:	bd10      	pop	{r4, pc}
d004e6ce:	4a0b      	ldr	r2, [pc, #44]	; (d004e6fc <initDepthBandMem+0x38>)
d004e6d0:	7813      	ldrb	r3, [r2, #0]
d004e6d2:	7850      	ldrb	r0, [r2, #1]
d004e6d4:	7891      	ldrb	r1, [r2, #2]
d004e6d6:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004e6da:	78d2      	ldrb	r2, [r2, #3]
d004e6dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004e6e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004e6e4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004e6e6:	4798      	blx	r3
d004e6e8:	2800      	cmp	r0, #0
d004e6ea:	d0ef      	beq.n	d004e6cc <initDepthBandMem+0x8>
d004e6ec:	301f      	adds	r0, #31
d004e6ee:	f020 001f 	bic.w	r0, r0, #31
d004e6f2:	6020      	str	r0, [r4, #0]
d004e6f4:	bd10      	pop	{r4, pc}
d004e6f6:	bf00      	nop
d004e6f8:	d005b184 	.word	0xd005b184
d004e6fc:	2001f000 	.word	0x2001f000

d004e700 <beginDepthBand>:
d004e700:	f100 031f 	add.w	r3, r0, #31
d004e704:	4a0d      	ldr	r2, [pc, #52]	; (d004e73c <beginDepthBand+0x3c>)
d004e706:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d004e70a:	6010      	str	r0, [r2, #0]
d004e70c:	da08      	bge.n	d004e720 <beginDepthBand+0x20>
d004e70e:	490c      	ldr	r1, [pc, #48]	; (d004e740 <beginDepthBand+0x40>)
d004e710:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d004e714:	600b      	str	r3, [r1, #0]
d004e716:	21ff      	movs	r1, #255	; 0xff
d004e718:	4b0a      	ldr	r3, [pc, #40]	; (d004e744 <beginDepthBand+0x44>)
d004e71a:	6818      	ldr	r0, [r3, #0]
d004e71c:	f007 bd00 	b.w	d0056120 <memset>
d004e720:	4b07      	ldr	r3, [pc, #28]	; (d004e740 <beginDepthBand+0x40>)
d004e722:	f240 123f 	movw	r2, #319	; 0x13f
d004e726:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d004e72a:	21ff      	movs	r1, #255	; 0xff
d004e72c:	601a      	str	r2, [r3, #0]
d004e72e:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d004e732:	4b04      	ldr	r3, [pc, #16]	; (d004e744 <beginDepthBand+0x44>)
d004e734:	0182      	lsls	r2, r0, #6
d004e736:	6818      	ldr	r0, [r3, #0]
d004e738:	f007 bcf2 	b.w	d0056120 <memset>
d004e73c:	d005b17c 	.word	0xd005b17c
d004e740:	d005b180 	.word	0xd005b180
d004e744:	d005b184 	.word	0xd005b184

d004e748 <set3DRenderBuffer>:
d004e748:	4b01      	ldr	r3, [pc, #4]	; (d004e750 <set3DRenderBuffer+0x8>)
d004e74a:	6018      	str	r0, [r3, #0]
d004e74c:	4770      	bx	lr
d004e74e:	bf00      	nop
d004e750:	d00f5670 	.word	0xd00f5670

d004e754 <putPixel>:
d004e754:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d004e758:	d209      	bcs.n	d004e76e <putPixel+0x1a>
d004e75a:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d004e75e:	d206      	bcs.n	d004e76e <putPixel+0x1a>
d004e760:	4b03      	ldr	r3, [pc, #12]	; (d004e770 <putPixel+0x1c>)
d004e762:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004e766:	681b      	ldr	r3, [r3, #0]
d004e768:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d004e76c:	5442      	strb	r2, [r0, r1]
d004e76e:	4770      	bx	lr
d004e770:	d00f5670 	.word	0xd00f5670

d004e774 <drawLine>:
d004e774:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004e778:	b085      	sub	sp, #20
d004e77a:	eba2 0c00 	sub.w	ip, r2, r0
d004e77e:	eba3 0901 	sub.w	r9, r3, r1
d004e782:	f240 1edf 	movw	lr, #479	; 0x1df
d004e786:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d004e78a:	f240 1a3f 	movw	sl, #319	; 0x13f
d004e78e:	f8df b07c 	ldr.w	fp, [pc, #124]	; d004e80c <drawLine+0x98>
d004e792:	9401      	str	r4, [sp, #4]
d004e794:	4282      	cmp	r2, r0
d004e796:	bfcc      	ite	gt
d004e798:	2401      	movgt	r4, #1
d004e79a:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004e79e:	9402      	str	r4, [sp, #8]
d004e7a0:	428b      	cmp	r3, r1
d004e7a2:	bfcc      	ite	gt
d004e7a4:	2401      	movgt	r4, #1
d004e7a6:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004e7aa:	f1bc 0f00 	cmp.w	ip, #0
d004e7ae:	9403      	str	r4, [sp, #12]
d004e7b0:	bfb8      	it	lt
d004e7b2:	f1cc 0c00 	rsblt	ip, ip, #0
d004e7b6:	f1b9 0f00 	cmp.w	r9, #0
d004e7ba:	bfb8      	it	lt
d004e7bc:	f1c9 0900 	rsblt	r9, r9, #0
d004e7c0:	ebac 0409 	sub.w	r4, ip, r9
d004e7c4:	f1c9 0800 	rsb	r8, r9, #0
d004e7c8:	4570      	cmp	r0, lr
d004e7ca:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d004e7ce:	ea4f 0644 	mov.w	r6, r4, lsl #1
d004e7d2:	d807      	bhi.n	d004e7e4 <drawLine+0x70>
d004e7d4:	4551      	cmp	r1, sl
d004e7d6:	d805      	bhi.n	d004e7e4 <drawLine+0x70>
d004e7d8:	f8db 5000 	ldr.w	r5, [fp]
d004e7dc:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d004e7e0:	9f01      	ldr	r7, [sp, #4]
d004e7e2:	546f      	strb	r7, [r5, r1]
d004e7e4:	4290      	cmp	r0, r2
d004e7e6:	d101      	bne.n	d004e7ec <drawLine+0x78>
d004e7e8:	4299      	cmp	r1, r3
d004e7ea:	d00c      	beq.n	d004e806 <drawLine+0x92>
d004e7ec:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d004e7f0:	dc05      	bgt.n	d004e7fe <drawLine+0x8a>
d004e7f2:	9d02      	ldr	r5, [sp, #8]
d004e7f4:	45b4      	cmp	ip, r6
d004e7f6:	eba4 0409 	sub.w	r4, r4, r9
d004e7fa:	4428      	add	r0, r5
d004e7fc:	dbe4      	blt.n	d004e7c8 <drawLine+0x54>
d004e7fe:	9d03      	ldr	r5, [sp, #12]
d004e800:	4464      	add	r4, ip
d004e802:	4429      	add	r1, r5
d004e804:	e7e0      	b.n	d004e7c8 <drawLine+0x54>
d004e806:	b005      	add	sp, #20
d004e808:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004e80c:	d00f5670 	.word	0xd00f5670

d004e810 <shadeColor>:
d004e810:	2900      	cmp	r1, #0
d004e812:	db09      	blt.n	d004e828 <shadeColor+0x18>
d004e814:	2904      	cmp	r1, #4
d004e816:	dc09      	bgt.n	d004e82c <shadeColor+0x1c>
d004e818:	0109      	lsls	r1, r1, #4
d004e81a:	b2c9      	uxtb	r1, r1
d004e81c:	f000 000f 	and.w	r0, r0, #15
d004e820:	3020      	adds	r0, #32
d004e822:	4408      	add	r0, r1
d004e824:	b2c0      	uxtb	r0, r0
d004e826:	4770      	bx	lr
d004e828:	2100      	movs	r1, #0
d004e82a:	e7f7      	b.n	d004e81c <shadeColor+0xc>
d004e82c:	2010      	movs	r0, #16
d004e82e:	4770      	bx	lr

d004e830 <fillTriangleFlat>:
d004e830:	eddf 7ae2 	vldr	s15, [pc, #904]	; d004ebbc <fillTriangleFlat+0x38c>
d004e834:	eef4 0ae7 	vcmpe.f32	s1, s15
d004e838:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004e83c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e840:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004e844:	ed2d 8b10 	vpush	{d8-d15}
d004e848:	b08f      	sub	sp, #60	; 0x3c
d004e84a:	9304      	str	r3, [sp, #16]
d004e84c:	bf94      	ite	ls
d004e84e:	2301      	movls	r3, #1
d004e850:	2300      	movhi	r3, #0
d004e852:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e856:	9001      	str	r0, [sp, #4]
d004e858:	9102      	str	r1, [sp, #8]
d004e85a:	bf98      	it	ls
d004e85c:	f043 0301 	orrls.w	r3, r3, #1
d004e860:	9203      	str	r2, [sp, #12]
d004e862:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d004e866:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d004e86a:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d004e86e:	f89d 20b4 	ldrb.w	r2, [sp, #180]	; 0xb4
d004e872:	2b00      	cmp	r3, #0
d004e874:	f040 8194 	bne.w	d004eba0 <fillTriangleFlat+0x370>
d004e878:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004e87c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e880:	bf94      	ite	ls
d004e882:	2701      	movls	r7, #1
d004e884:	2700      	movhi	r7, #0
d004e886:	f240 818b 	bls.w	d004eba0 <fillTriangleFlat+0x370>
d004e88a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004e88e:	ee07 4a10 	vmov	s14, r4
d004e892:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004e896:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004e89a:	ee87 8a80 	vdiv.f32	s16, s15, s0
d004e89e:	ee87 3a81 	vdiv.f32	s6, s15, s2
d004e8a2:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d004e8a6:	ee07 0a90 	vmov	s15, r0
d004e8aa:	ee71 1aa6 	vadd.f32	s3, s3, s13
d004e8ae:	eeb8 6a67 	vcvt.f32.u32	s12, s15
d004e8b2:	ee07 1a90 	vmov	s15, r1
d004e8b6:	ee27 7a08 	vmul.f32	s14, s14, s16
d004e8ba:	eef8 3a67 	vcvt.f32.u32	s7, s15
d004e8be:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d004e8c2:	ee63 3a83 	vmul.f32	s7, s7, s6
d004e8c6:	ee17 3a90 	vmov	r3, s15
d004e8ca:	2b00      	cmp	r3, #0
d004e8cc:	ee26 6a00 	vmul.f32	s12, s12, s0
d004e8d0:	f2c0 816d 	blt.w	d004ebae <fillTriangleFlat+0x37e>
d004e8d4:	2b04      	cmp	r3, #4
d004e8d6:	f340 8168 	ble.w	d004ebaa <fillTriangleFlat+0x37a>
d004e8da:	2710      	movs	r7, #16
d004e8dc:	eddd 7a02 	vldr	s15, [sp, #8]
d004e8e0:	eddd 5a29 	vldr	s11, [sp, #164]	; 0xa4
d004e8e4:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d004e8e8:	eddd 7a04 	vldr	s15, [sp, #16]
d004e8ec:	eef8 4ae5 	vcvt.f32.s32	s9, s11
d004e8f0:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d004e8f4:	eddd 7a01 	vldr	s15, [sp, #4]
d004e8f8:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d004e8fc:	eddd 7a03 	vldr	s15, [sp, #12]
d004e900:	eeb4 5ae2 	vcmpe.f32	s10, s5
d004e904:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d004e908:	eddd 7a28 	vldr	s15, [sp, #160]	; 0xa0
d004e90c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e910:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004e914:	f300 8160 	bgt.w	d004ebd8 <fillTriangleFlat+0x3a8>
d004e918:	eeb4 5ae4 	vcmpe.f32	s10, s9
d004e91c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e920:	f300 8270 	bgt.w	d004ee04 <fillTriangleFlat+0x5d4>
d004e924:	eef4 4ae2 	vcmpe.f32	s9, s5
d004e928:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e92c:	d517      	bpl.n	d004e95e <fillTriangleFlat+0x12e>
d004e92e:	eeb0 1a46 	vmov.f32	s2, s12
d004e932:	eef0 1a40 	vmov.f32	s3, s0
d004e936:	eeb0 2a62 	vmov.f32	s4, s5
d004e93a:	eef0 5a44 	vmov.f32	s11, s8
d004e93e:	eeb0 6a63 	vmov.f32	s12, s7
d004e942:	eeb0 0a43 	vmov.f32	s0, s6
d004e946:	eef0 2a64 	vmov.f32	s5, s9
d004e94a:	eeb0 4a67 	vmov.f32	s8, s15
d004e94e:	eef0 3a41 	vmov.f32	s7, s2
d004e952:	eeb0 3a61 	vmov.f32	s6, s3
d004e956:	eef0 4a42 	vmov.f32	s9, s4
d004e95a:	eef0 7a65 	vmov.f32	s15, s11
d004e95e:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004e962:	ee35 2a25 	vadd.f32	s4, s10, s11
d004e966:	ee74 5aa5 	vadd.f32	s11, s9, s11
d004e96a:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d004e96e:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004e972:	ee12 3a10 	vmov	r3, s4
d004e976:	ee15 2a90 	vmov	r2, s11
d004e97a:	4293      	cmp	r3, r2
d004e97c:	f000 8110 	beq.w	d004eba0 <fillTriangleFlat+0x370>
d004e980:	ee74 1ac5 	vsub.f32	s3, s9, s10
d004e984:	ed9f 2a8d 	vldr	s4, [pc, #564]	; d004ebbc <fillTriangleFlat+0x38c>
d004e988:	eef4 1ac2 	vcmpe.f32	s3, s4
d004e98c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e990:	f240 8106 	bls.w	d004eba0 <fillTriangleFlat+0x370>
d004e994:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d004e998:	ee77 8ae6 	vsub.f32	s17, s15, s13
d004e99c:	ee33 9a48 	vsub.f32	s18, s6, s16
d004e9a0:	eec1 5a21 	vdiv.f32	s11, s2, s3
d004e9a4:	ee72 1ac5 	vsub.f32	s3, s5, s10
d004e9a8:	ee73 9ac7 	vsub.f32	s19, s7, s14
d004e9ac:	eef4 1ac2 	vcmpe.f32	s3, s4
d004e9b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e9b4:	ee68 8aa5 	vmul.f32	s17, s17, s11
d004e9b8:	ee29 9a25 	vmul.f32	s18, s18, s11
d004e9bc:	ee69 9aa5 	vmul.f32	s19, s19, s11
d004e9c0:	f300 8129 	bgt.w	d004ec16 <fillTriangleFlat+0x3e6>
d004e9c4:	ee74 5ae2 	vsub.f32	s11, s9, s5
d004e9c8:	eef4 5ac2 	vcmpe.f32	s11, s4
d004e9cc:	edcd 5a02 	vstr	s11, [sp, #8]
d004e9d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e9d4:	f340 80e4 	ble.w	d004eba0 <fillTriangleFlat+0x370>
d004e9d8:	eec1 5a25 	vdiv.f32	s11, s2, s11
d004e9dc:	ee77 7ac4 	vsub.f32	s15, s15, s8
d004e9e0:	eef4 1ac2 	vcmpe.f32	s3, s4
d004e9e4:	ee33 3a40 	vsub.f32	s6, s6, s0
d004e9e8:	ee73 3ac6 	vsub.f32	s7, s7, s12
d004e9ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004e9f0:	ee67 7aa5 	vmul.f32	s15, s15, s11
d004e9f4:	ee63 fa25 	vmul.f32	s31, s6, s11
d004e9f8:	ee63 5aa5 	vmul.f32	s11, s7, s11
d004e9fc:	edcd 7a07 	vstr	s15, [sp, #28]
d004ea00:	f300 83b7 	bgt.w	d004f172 <fillTriangleFlat+0x942>
d004ea04:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004ea08:	4a6d      	ldr	r2, [pc, #436]	; (d004ebc0 <fillTriangleFlat+0x390>)
d004ea0a:	4b6e      	ldr	r3, [pc, #440]	; (d004ebc4 <fillTriangleFlat+0x394>)
d004ea0c:	6812      	ldr	r2, [r2, #0]
d004ea0e:	edcd 7a03 	vstr	s15, [sp, #12]
d004ea12:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ea16:	681b      	ldr	r3, [r3, #0]
d004ea18:	9204      	str	r2, [sp, #16]
d004ea1a:	edcd 7a06 	vstr	s15, [sp, #24]
d004ea1e:	9305      	str	r3, [sp, #20]
d004ea20:	eddd 7a06 	vldr	s15, [sp, #24]
d004ea24:	eef4 2ae7 	vcmpe.f32	s5, s15
d004ea28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ea2c:	dd02      	ble.n	d004ea34 <fillTriangleFlat+0x204>
d004ea2e:	9b03      	ldr	r3, [sp, #12]
d004ea30:	3301      	adds	r3, #1
d004ea32:	9303      	str	r3, [sp, #12]
d004ea34:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d004ea38:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d004ea3c:	eef4 4ae3 	vcmpe.f32	s9, s7
d004ea40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ea44:	dc04      	bgt.n	d004ea50 <fillTriangleFlat+0x220>
d004ea46:	ee17 3a90 	vmov	r3, s15
d004ea4a:	3b01      	subs	r3, #1
d004ea4c:	ee07 3a90 	vmov	s15, r3
d004ea50:	9b05      	ldr	r3, [sp, #20]
d004ea52:	ee17 2a90 	vmov	r2, s15
d004ea56:	4293      	cmp	r3, r2
d004ea58:	bfa8      	it	ge
d004ea5a:	4613      	movge	r3, r2
d004ea5c:	461a      	mov	r2, r3
d004ea5e:	9b03      	ldr	r3, [sp, #12]
d004ea60:	469b      	mov	fp, r3
d004ea62:	9b04      	ldr	r3, [sp, #16]
d004ea64:	459b      	cmp	fp, r3
d004ea66:	bfb8      	it	lt
d004ea68:	469b      	movlt	fp, r3
d004ea6a:	4593      	cmp	fp, r2
d004ea6c:	f300 8098 	bgt.w	d004eba0 <fillTriangleFlat+0x370>
d004ea70:	ee07 ba90 	vmov	s15, fp
d004ea74:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d004ea78:	eba3 1303 	sub.w	r3, r3, r3, lsl #4
d004ea7c:	4952      	ldr	r1, [pc, #328]	; (d004ebc8 <fillTriangleFlat+0x398>)
d004ea7e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ea82:	ed9d ba07 	vldr	s22, [sp, #28]
d004ea86:	015b      	lsls	r3, r3, #5
d004ea88:	eddf 1a4c 	vldr	s3, [pc, #304]	; d004ebbc <fillTriangleFlat+0x38c>
d004ea8c:	ed9f 1a4f 	vldr	s2, [pc, #316]	; d004ebcc <fillTriangleFlat+0x39c>
d004ea90:	ee77 7aa4 	vadd.f32	s15, s15, s9
d004ea94:	9303      	str	r3, [sp, #12]
d004ea96:	1c53      	adds	r3, r2, #1
d004ea98:	ed9f 2a4d 	vldr	s4, [pc, #308]	; d004ebd0 <fillTriangleFlat+0x3a0>
d004ea9c:	ee37 5ac5 	vsub.f32	s10, s15, s10
d004eaa0:	9301      	str	r3, [sp, #4]
d004eaa2:	ee77 7ae2 	vsub.f32	s15, s15, s5
d004eaa6:	680b      	ldr	r3, [r1, #0]
d004eaa8:	eddf 2a4a 	vldr	s5, [pc, #296]	; d004ebd4 <fillTriangleFlat+0x3a4>
d004eaac:	eee8 6a85 	vfma.f32	s13, s17, s10
d004eab0:	9302      	str	r3, [sp, #8]
d004eab2:	eea9 8a05 	vfma.f32	s16, s18, s10
d004eab6:	eea9 7a85 	vfma.f32	s14, s19, s10
d004eaba:	eea7 4a8b 	vfma.f32	s8, s15, s22
d004eabe:	eeaf 0aa7 	vfma.f32	s0, s31, s15
d004eac2:	eea5 6aa7 	vfma.f32	s12, s11, s15
d004eac6:	e047      	b.n	d004eb58 <fillTriangleFlat+0x328>
d004eac8:	eef0 aa47 	vmov.f32	s21, s14
d004eacc:	eef0 ba48 	vmov.f32	s23, s16
d004ead0:	eef0 4a66 	vmov.f32	s9, s13
d004ead4:	eef0 0a46 	vmov.f32	s1, s12
d004ead8:	eef0 3a40 	vmov.f32	s7, s0
d004eadc:	eeb0 3a44 	vmov.f32	s6, s8
d004eae0:	eebd 5ac3 	vcvt.s32.f32	s10, s6
d004eae4:	eef8 7ac5 	vcvt.f32.s32	s15, s10
d004eae8:	eeb4 3ae7 	vcmpe.f32	s6, s15
d004eaec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eaf0:	dd04      	ble.n	d004eafc <fillTriangleFlat+0x2cc>
d004eaf2:	ee15 3a10 	vmov	r3, s10
d004eaf6:	3301      	adds	r3, #1
d004eaf8:	ee05 3a10 	vmov	s10, r3
d004eafc:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d004eb00:	eeb8 aae7 	vcvt.f32.s32	s20, s15
d004eb04:	eef4 4aca 	vcmpe.f32	s9, s20
d004eb08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb0c:	dc04      	bgt.n	d004eb18 <fillTriangleFlat+0x2e8>
d004eb0e:	ee17 3a90 	vmov	r3, s15
d004eb12:	3b01      	subs	r3, #1
d004eb14:	ee07 3a90 	vmov	s15, r3
d004eb18:	ee15 3a10 	vmov	r3, s10
d004eb1c:	f240 1cdf 	movw	ip, #479	; 0x1df
d004eb20:	ea23 75e3 	bic.w	r5, r3, r3, asr #31
d004eb24:	ee17 3a90 	vmov	r3, s15
d004eb28:	4563      	cmp	r3, ip
d004eb2a:	bfa8      	it	ge
d004eb2c:	4663      	movge	r3, ip
d004eb2e:	42ab      	cmp	r3, r5
d004eb30:	469c      	mov	ip, r3
d004eb32:	f280 825d 	bge.w	d004eff0 <fillTriangleFlat+0x7c0>
d004eb36:	f10b 0b01 	add.w	fp, fp, #1
d004eb3a:	9b01      	ldr	r3, [sp, #4]
d004eb3c:	ee76 6aa8 	vadd.f32	s13, s13, s17
d004eb40:	459b      	cmp	fp, r3
d004eb42:	ee38 8a09 	vadd.f32	s16, s16, s18
d004eb46:	ee37 7a29 	vadd.f32	s14, s14, s19
d004eb4a:	ee34 4a0b 	vadd.f32	s8, s8, s22
d004eb4e:	ee30 0a2f 	vadd.f32	s0, s0, s31
d004eb52:	ee36 6a25 	vadd.f32	s12, s12, s11
d004eb56:	d023      	beq.n	d004eba0 <fillTriangleFlat+0x370>
d004eb58:	eef4 6ac4 	vcmpe.f32	s13, s8
d004eb5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb60:	dcb2      	bgt.n	d004eac8 <fillTriangleFlat+0x298>
d004eb62:	eef0 aa46 	vmov.f32	s21, s12
d004eb66:	eef0 ba40 	vmov.f32	s23, s0
d004eb6a:	eef0 4a44 	vmov.f32	s9, s8
d004eb6e:	eef0 0a47 	vmov.f32	s1, s14
d004eb72:	eef0 3a48 	vmov.f32	s7, s16
d004eb76:	eeb0 3a66 	vmov.f32	s6, s13
d004eb7a:	e7b1      	b.n	d004eae0 <fillTriangleFlat+0x2b0>
d004eb7c:	eddd 4a0a 	vldr	s9, [sp, #40]	; 0x28
d004eb80:	ed9d 6a0b 	vldr	s12, [sp, #44]	; 0x2c
d004eb84:	ed9d 4a0c 	vldr	s8, [sp, #48]	; 0x30
d004eb88:	ed9d 8a0d 	vldr	s16, [sp, #52]	; 0x34
d004eb8c:	eddf 7a0b 	vldr	s15, [pc, #44]	; d004ebbc <fillTriangleFlat+0x38c>
d004eb90:	eddd 3a02 	vldr	s7, [sp, #8]
d004eb94:	eef4 3ae7 	vcmpe.f32	s7, s15
d004eb98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004eb9c:	f73f af40 	bgt.w	d004ea20 <fillTriangleFlat+0x1f0>
d004eba0:	b00f      	add	sp, #60	; 0x3c
d004eba2:	ecbd 8b10 	vpop	{d8-d15}
d004eba6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004ebaa:	011b      	lsls	r3, r3, #4
d004ebac:	b2df      	uxtb	r7, r3
d004ebae:	f002 020f 	and.w	r2, r2, #15
d004ebb2:	3220      	adds	r2, #32
d004ebb4:	4417      	add	r7, r2
d004ebb6:	b2ff      	uxtb	r7, r7
d004ebb8:	e690      	b.n	d004e8dc <fillTriangleFlat+0xac>
d004ebba:	bf00      	nop
d004ebbc:	38d1b717 	.word	0x38d1b717
d004ebc0:	d005b17c 	.word	0xd005b17c
d004ebc4:	d005b180 	.word	0xd005b180
d004ebc8:	d005b184 	.word	0xd005b184
d004ebcc:	33d6bf95 	.word	0x33d6bf95
d004ebd0:	477fff00 	.word	0x477fff00
d004ebd4:	00000000 	.word	0x00000000
d004ebd8:	eef4 2ae4 	vcmpe.f32	s5, s9
d004ebdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ebe0:	f340 8129 	ble.w	d004ee36 <fillTriangleFlat+0x606>
d004ebe4:	eeb0 1a63 	vmov.f32	s2, s7
d004ebe8:	eef0 1a43 	vmov.f32	s3, s6
d004ebec:	eeb0 2a64 	vmov.f32	s4, s9
d004ebf0:	eef0 5a67 	vmov.f32	s11, s15
d004ebf4:	eef0 3a47 	vmov.f32	s7, s14
d004ebf8:	eeb0 3a48 	vmov.f32	s6, s16
d004ebfc:	eef0 4a45 	vmov.f32	s9, s10
d004ec00:	eef0 7a66 	vmov.f32	s15, s13
d004ec04:	eeb0 7a41 	vmov.f32	s14, s2
d004ec08:	eeb0 8a61 	vmov.f32	s16, s3
d004ec0c:	eeb0 5a42 	vmov.f32	s10, s4
d004ec10:	eef0 6a65 	vmov.f32	s13, s11
d004ec14:	e6a3      	b.n	d004e95e <fillTriangleFlat+0x12e>
d004ec16:	eec1 5a21 	vdiv.f32	s11, s2, s3
d004ec1a:	ee74 aae2 	vsub.f32	s21, s9, s5
d004ec1e:	ee76 1a47 	vsub.f32	s3, s12, s14
d004ec22:	ee34 aa66 	vsub.f32	s20, s8, s13
d004ec26:	ee70 0a48 	vsub.f32	s1, s0, s16
d004ec2a:	edcd aa02 	vstr	s21, [sp, #8]
d004ec2e:	eef4 aac2 	vcmpe.f32	s21, s4
d004ec32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec36:	ee2a aa25 	vmul.f32	s20, s20, s11
d004ec3a:	ee60 0aa5 	vmul.f32	s1, s1, s11
d004ec3e:	ee61 5aa5 	vmul.f32	s11, s3, s11
d004ec42:	eef0 1a65 	vmov.f32	s3, s11
d004ec46:	f340 828d 	ble.w	d004f164 <fillTriangleFlat+0x934>
d004ec4a:	ee81 2a2a 	vdiv.f32	s4, s2, s21
d004ec4e:	ee77 7ac4 	vsub.f32	s15, s15, s8
d004ec52:	ee33 3a40 	vsub.f32	s6, s6, s0
d004ec56:	ee73 5ac6 	vsub.f32	s11, s7, s12
d004ec5a:	ee67 7a82 	vmul.f32	s15, s15, s4
d004ec5e:	ee63 fa02 	vmul.f32	s31, s6, s4
d004ec62:	ee65 5a82 	vmul.f32	s11, s11, s4
d004ec66:	edcd 7a07 	vstr	s15, [sp, #28]
d004ec6a:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d004ec6e:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d004ec72:	eeb4 5ae3 	vcmpe.f32	s10, s7
d004ec76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ec7a:	dd04      	ble.n	d004ec86 <fillTriangleFlat+0x456>
d004ec7c:	ee17 3a90 	vmov	r3, s15
d004ec80:	3301      	adds	r3, #1
d004ec82:	ee07 3a90 	vmov	s15, r3
d004ec86:	eefd 3ae2 	vcvt.s32.f32	s7, s5
d004ec8a:	49d0      	ldr	r1, [pc, #832]	; (d004efcc <fillTriangleFlat+0x79c>)
d004ec8c:	ee17 ba90 	vmov	fp, s15
d004ec90:	4acf      	ldr	r2, [pc, #828]	; (d004efd0 <fillTriangleFlat+0x7a0>)
d004ec92:	6809      	ldr	r1, [r1, #0]
d004ec94:	eeb8 3ae3 	vcvt.f32.s32	s6, s7
d004ec98:	ee13 3a90 	vmov	r3, s7
d004ec9c:	6812      	ldr	r2, [r2, #0]
d004ec9e:	edcd 3a03 	vstr	s7, [sp, #12]
d004eca2:	eeb4 3ae2 	vcmpe.f32	s6, s5
d004eca6:	ed8d 3a06 	vstr	s6, [sp, #24]
d004ecaa:	9104      	str	r1, [sp, #16]
d004ecac:	9205      	str	r2, [sp, #20]
d004ecae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ecb2:	bf58      	it	pl
d004ecb4:	f103 33ff 	addpl.w	r3, r3, #4294967295	; 0xffffffff
d004ecb8:	458b      	cmp	fp, r1
d004ecba:	bfb8      	it	lt
d004ecbc:	468b      	movlt	fp, r1
d004ecbe:	4293      	cmp	r3, r2
d004ecc0:	bfa8      	it	ge
d004ecc2:	4613      	movge	r3, r2
d004ecc4:	455b      	cmp	r3, fp
d004ecc6:	f6ff af61 	blt.w	d004eb8c <fillTriangleFlat+0x35c>
d004ecca:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004ecce:	460a      	mov	r2, r1
d004ecd0:	3301      	adds	r3, #1
d004ecd2:	49c0      	ldr	r1, [pc, #768]	; (d004efd4 <fillTriangleFlat+0x7a4>)
d004ecd4:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d004ecd8:	eef0 da48 	vmov.f32	s27, s16
d004ecdc:	ee77 3ac5 	vsub.f32	s7, s15, s10
d004ece0:	ee07 ba90 	vmov	s15, fp
d004ece4:	9301      	str	r3, [sp, #4]
d004ece6:	eef0 ca48 	vmov.f32	s25, s16
d004ecea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ecee:	680b      	ldr	r3, [r1, #0]
d004ecf0:	eef0 ba66 	vmov.f32	s23, s13
d004ecf4:	ed8d 8a0d 	vstr	s16, [sp, #52]	; 0x34
d004ecf8:	eeb0 da47 	vmov.f32	s26, s14
d004ecfc:	9308      	str	r3, [sp, #32]
d004ecfe:	ee77 7aa3 	vadd.f32	s15, s15, s7
d004ed02:	0153      	lsls	r3, r2, #5
d004ed04:	eef0 3a4a 	vmov.f32	s7, s20
d004ed08:	ed9f eab3 	vldr	s28, [pc, #716]	; d004efd8 <fillTriangleFlat+0x7a8>
d004ed0c:	eeb0 ba66 	vmov.f32	s22, s13
d004ed10:	ed9f 2ab2 	vldr	s4, [pc, #712]	; d004efdc <fillTriangleFlat+0x7ac>
d004ed14:	eeb0 ca47 	vmov.f32	s24, s14
d004ed18:	ed9f 1ab1 	vldr	s2, [pc, #708]	; d004efe0 <fillTriangleFlat+0x7b0>
d004ed1c:	eee8 baa7 	vfma.f32	s23, s17, s15
d004ed20:	9309      	str	r3, [sp, #36]	; 0x24
d004ed22:	eea7 ba8a 	vfma.f32	s22, s15, s20
d004ed26:	edcd 4a0a 	vstr	s9, [sp, #40]	; 0x28
d004ed2a:	eee9 da27 	vfma.f32	s27, s18, s15
d004ed2e:	ed8d 6a0b 	vstr	s12, [sp, #44]	; 0x2c
d004ed32:	eea9 daa7 	vfma.f32	s26, s19, s15
d004ed36:	ed8d 4a0c 	vstr	s8, [sp, #48]	; 0x30
d004ed3a:	eee7 caa0 	vfma.f32	s25, s15, s1
d004ed3e:	eea7 caa1 	vfma.f32	s24, s15, s3
d004ed42:	eeb0 aa60 	vmov.f32	s20, s1
d004ed46:	eef0 aa61 	vmov.f32	s21, s3
d004ed4a:	eeb0 8a63 	vmov.f32	s16, s7
d004ed4e:	e047      	b.n	d004ede0 <fillTriangleFlat+0x5b0>
d004ed50:	eef0 1a4d 	vmov.f32	s3, s26
d004ed54:	eeb0 3a6d 	vmov.f32	s6, s27
d004ed58:	eeb0 4a6b 	vmov.f32	s8, s23
d004ed5c:	eef0 3a4c 	vmov.f32	s7, s24
d004ed60:	eef0 4a6c 	vmov.f32	s9, s25
d004ed64:	eef0 0a4b 	vmov.f32	s1, s22
d004ed68:	eebd 6ae0 	vcvt.s32.f32	s12, s1
d004ed6c:	eef8 7ac6 	vcvt.f32.s32	s15, s12
d004ed70:	eef4 0ae7 	vcmpe.f32	s1, s15
d004ed74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed78:	dd04      	ble.n	d004ed84 <fillTriangleFlat+0x554>
d004ed7a:	ee16 3a10 	vmov	r3, s12
d004ed7e:	3301      	adds	r3, #1
d004ed80:	ee06 3a10 	vmov	s12, r3
d004ed84:	eefd 7ac4 	vcvt.s32.f32	s15, s8
d004ed88:	eef8 eae7 	vcvt.f32.s32	s29, s15
d004ed8c:	eeb4 4aee 	vcmpe.f32	s8, s29
d004ed90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ed94:	dc04      	bgt.n	d004eda0 <fillTriangleFlat+0x570>
d004ed96:	ee17 3a90 	vmov	r3, s15
d004ed9a:	3b01      	subs	r3, #1
d004ed9c:	ee07 3a90 	vmov	s15, r3
d004eda0:	ee16 3a10 	vmov	r3, s12
d004eda4:	f240 1cdf 	movw	ip, #479	; 0x1df
d004eda8:	ea23 75e3 	bic.w	r5, r3, r3, asr #31
d004edac:	ee17 3a90 	vmov	r3, s15
d004edb0:	4563      	cmp	r3, ip
d004edb2:	bfa8      	it	ge
d004edb4:	4663      	movge	r3, ip
d004edb6:	42ab      	cmp	r3, r5
d004edb8:	469c      	mov	ip, r3
d004edba:	da55      	bge.n	d004ee68 <fillTriangleFlat+0x638>
d004edbc:	f10b 0b01 	add.w	fp, fp, #1
d004edc0:	9b01      	ldr	r3, [sp, #4]
d004edc2:	ee7b baa8 	vadd.f32	s23, s23, s17
d004edc6:	459b      	cmp	fp, r3
d004edc8:	ee7d da89 	vadd.f32	s27, s27, s18
d004edcc:	ee3d da29 	vadd.f32	s26, s26, s19
d004edd0:	ee3b ba08 	vadd.f32	s22, s22, s16
d004edd4:	ee7c ca8a 	vadd.f32	s25, s25, s20
d004edd8:	ee3c ca2a 	vadd.f32	s24, s24, s21
d004eddc:	f43f aece 	beq.w	d004eb7c <fillTriangleFlat+0x34c>
d004ede0:	eef4 bacb 	vcmpe.f32	s23, s22
d004ede4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ede8:	dcb2      	bgt.n	d004ed50 <fillTriangleFlat+0x520>
d004edea:	eef0 1a4c 	vmov.f32	s3, s24
d004edee:	eeb0 3a6c 	vmov.f32	s6, s25
d004edf2:	eeb0 4a4b 	vmov.f32	s8, s22
d004edf6:	eef0 3a4d 	vmov.f32	s7, s26
d004edfa:	eef0 4a6d 	vmov.f32	s9, s27
d004edfe:	eef0 0a6b 	vmov.f32	s1, s23
d004ee02:	e7b1      	b.n	d004ed68 <fillTriangleFlat+0x538>
d004ee04:	eeb0 1a47 	vmov.f32	s2, s14
d004ee08:	eef0 1a48 	vmov.f32	s3, s16
d004ee0c:	eeb0 2a45 	vmov.f32	s4, s10
d004ee10:	eef0 5a66 	vmov.f32	s11, s13
d004ee14:	eeb0 7a63 	vmov.f32	s14, s7
d004ee18:	eeb0 8a43 	vmov.f32	s16, s6
d004ee1c:	eeb0 5a64 	vmov.f32	s10, s9
d004ee20:	eef0 6a67 	vmov.f32	s13, s15
d004ee24:	eef0 3a41 	vmov.f32	s7, s2
d004ee28:	eeb0 3a61 	vmov.f32	s6, s3
d004ee2c:	eef0 4a42 	vmov.f32	s9, s4
d004ee30:	eef0 7a65 	vmov.f32	s15, s11
d004ee34:	e576      	b.n	d004e924 <fillTriangleFlat+0xf4>
d004ee36:	eeb0 1a47 	vmov.f32	s2, s14
d004ee3a:	eef0 1a48 	vmov.f32	s3, s16
d004ee3e:	eeb0 2a45 	vmov.f32	s4, s10
d004ee42:	eef0 5a66 	vmov.f32	s11, s13
d004ee46:	eeb0 7a46 	vmov.f32	s14, s12
d004ee4a:	eeb0 8a40 	vmov.f32	s16, s0
d004ee4e:	eeb0 5a62 	vmov.f32	s10, s5
d004ee52:	eef0 6a44 	vmov.f32	s13, s8
d004ee56:	eeb0 6a41 	vmov.f32	s12, s2
d004ee5a:	eeb0 0a61 	vmov.f32	s0, s3
d004ee5e:	eef0 2a42 	vmov.f32	s5, s4
d004ee62:	eeb0 4a65 	vmov.f32	s8, s11
d004ee66:	e55d      	b.n	d004e924 <fillTriangleFlat+0xf4>
d004ee68:	ee34 4a60 	vsub.f32	s8, s8, s1
d004ee6c:	eddf 7a5d 	vldr	s15, [pc, #372]	; d004efe4 <fillTriangleFlat+0x7b4>
d004ee70:	eeb4 4ae7 	vcmpe.f32	s8, s15
d004ee74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ee78:	f340 816a 	ble.w	d004f150 <fillTriangleFlat+0x920>
d004ee7c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004ee80:	ee33 3a64 	vsub.f32	s6, s6, s9
d004ee84:	ee71 1ae3 	vsub.f32	s3, s3, s7
d004ee88:	ee87 6a84 	vdiv.f32	s12, s15, s8
d004ee8c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004ee90:	ee77 0ae0 	vsub.f32	s1, s15, s1
d004ee94:	ee07 5a90 	vmov	s15, r5
d004ee98:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ee9c:	ee77 7aa0 	vadd.f32	s15, s15, s1
d004eea0:	ee23 3a06 	vmul.f32	s6, s6, s12
d004eea4:	ee61 1a86 	vmul.f32	s3, s3, s12
d004eea8:	eee7 4a83 	vfma.f32	s9, s15, s6
d004eeac:	eee7 3aa1 	vfma.f32	s7, s15, s3
d004eeb0:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d004eeb4:	4b4c      	ldr	r3, [pc, #304]	; (d004efe8 <fillTriangleFlat+0x7b8>)
d004eeb6:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d004eeba:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004eebc:	681b      	ldr	r3, [r3, #0]
d004eebe:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d004eec2:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d004eec6:	eb0b 1e8e 	add.w	lr, fp, lr, lsl #6
d004eeca:	44a8      	add	r8, r5
d004eecc:	449e      	add	lr, r3
d004eece:	9b08      	ldr	r3, [sp, #32]
d004eed0:	eb03 0848 	add.w	r8, r3, r8, lsl #1
d004eed4:	e011      	b.n	d004eefa <fillTriangleFlat+0x6ca>
d004eed6:	ee07 1a90 	vmov	s15, r1
d004eeda:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004eede:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d004eee2:	440d      	add	r5, r1
d004eee4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004eee8:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d004eeec:	eee7 4a83 	vfma.f32	s9, s15, s6
d004eef0:	eee7 3aa1 	vfma.f32	s7, s15, s3
d004eef4:	45ac      	cmp	ip, r5
d004eef6:	f6ff af61 	blt.w	d004edbc <fillTriangleFlat+0x58c>
d004eefa:	ebac 0905 	sub.w	r9, ip, r5
d004eefe:	eef4 4ace 	vcmpe.f32	s9, s28
d004ef02:	f109 0101 	add.w	r1, r9, #1
d004ef06:	2930      	cmp	r1, #48	; 0x30
d004ef08:	bfa8      	it	ge
d004ef0a:	2130      	movge	r1, #48	; 0x30
d004ef0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ef10:	d9e1      	bls.n	d004eed6 <fillTriangleFlat+0x6a6>
d004ef12:	f1b9 0f00 	cmp.w	r9, #0
d004ef16:	ee83 6aa4 	vdiv.f32	s12, s7, s9
d004ef1a:	dd52      	ble.n	d004efc2 <fillTriangleFlat+0x792>
d004ef1c:	1e4b      	subs	r3, r1, #1
d004ef1e:	ee07 3a90 	vmov	s15, r3
d004ef22:	eef0 ea64 	vmov.f32	s29, s9
d004ef26:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ef2a:	eee7 ea83 	vfma.f32	s29, s15, s6
d004ef2e:	eef4 eace 	vcmpe.f32	s29, s28
d004ef32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ef36:	dd45      	ble.n	d004efc4 <fillTriangleFlat+0x794>
d004ef38:	eeb0 fa63 	vmov.f32	s30, s7
d004ef3c:	4b2b      	ldr	r3, [pc, #172]	; (d004efec <fillTriangleFlat+0x7bc>)
d004ef3e:	008e      	lsls	r6, r1, #2
d004ef40:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d004ef44:	eea7 faa1 	vfma.f32	s30, s15, s3
d004ef48:	edd3 7a00 	vldr	s15, [r3]
d004ef4c:	eecf 0a2e 	vdiv.f32	s1, s30, s29
d004ef50:	ee70 0ac6 	vsub.f32	s1, s1, s12
d004ef54:	ee60 0aa7 	vmul.f32	s1, s1, s15
d004ef58:	f1a8 0002 	sub.w	r0, r8, #2
d004ef5c:	2200      	movs	r2, #0
d004ef5e:	fec6 7a02 	vmaxnm.f32	s15, s12, s4
d004ef62:	fec7 7ac1 	vminnm.f32	s15, s15, s2
d004ef66:	ee77 7a84 	vadd.f32	s15, s15, s8
d004ef6a:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004ef6e:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d004ef72:	ee36 6a20 	vadd.f32	s12, s12, s1
d004ef76:	ea4f 1a83 	mov.w	sl, r3, lsl #6
d004ef7a:	3201      	adds	r2, #1
d004ef7c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004ef80:	ee17 3a90 	vmov	r3, s15
d004ef84:	b29b      	uxth	r3, r3
d004ef86:	429c      	cmp	r4, r3
d004ef88:	d902      	bls.n	d004ef90 <fillTriangleFlat+0x760>
d004ef8a:	8003      	strh	r3, [r0, #0]
d004ef8c:	f80e 700a 	strb.w	r7, [lr, sl]
d004ef90:	428a      	cmp	r2, r1
d004ef92:	dbe4      	blt.n	d004ef5e <fillTriangleFlat+0x72e>
d004ef94:	f1b9 0f00 	cmp.w	r9, #0
d004ef98:	440e      	add	r6, r1
d004ef9a:	ea4f 0341 	mov.w	r3, r1, lsl #1
d004ef9e:	ea4f 1686 	mov.w	r6, r6, lsl #6
d004efa2:	bfbc      	itt	lt
d004efa4:	2302      	movlt	r3, #2
d004efa6:	f44f 76a0 	movlt.w	r6, #320	; 0x140
d004efaa:	4498      	add	r8, r3
d004efac:	44b6      	add	lr, r6
d004efae:	ee07 1a90 	vmov	s15, r1
d004efb2:	440d      	add	r5, r1
d004efb4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004efb8:	eee7 4a83 	vfma.f32	s9, s15, s6
d004efbc:	eee7 3aa1 	vfma.f32	s7, s15, s3
d004efc0:	e798      	b.n	d004eef4 <fillTriangleFlat+0x6c4>
d004efc2:	d1f4      	bne.n	d004efae <fillTriangleFlat+0x77e>
d004efc4:	eef0 0a42 	vmov.f32	s1, s4
d004efc8:	008e      	lsls	r6, r1, #2
d004efca:	e7c5      	b.n	d004ef58 <fillTriangleFlat+0x728>
d004efcc:	d005b17c 	.word	0xd005b17c
d004efd0:	d005b180 	.word	0xd005b180
d004efd4:	d005b184 	.word	0xd005b184
d004efd8:	33d6bf95 	.word	0x33d6bf95
d004efdc:	00000000 	.word	0x00000000
d004efe0:	477fff00 	.word	0x477fff00
d004efe4:	38d1b717 	.word	0x38d1b717
d004efe8:	d00f5670 	.word	0xd00f5670
d004efec:	d0058380 	.word	0xd0058380
d004eff0:	ee74 4ac3 	vsub.f32	s9, s9, s6
d004eff4:	eef4 4ae1 	vcmpe.f32	s9, s3
d004eff8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004effc:	f340 80ad 	ble.w	d004f15a <fillTriangleFlat+0x92a>
d004f000:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004f004:	ee3b aae3 	vsub.f32	s20, s23, s7
d004f008:	ee7a aae0 	vsub.f32	s21, s21, s1
d004f00c:	ee87 5aa4 	vdiv.f32	s10, s15, s9
d004f010:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004f014:	ee37 3ac3 	vsub.f32	s6, s15, s6
d004f018:	ee07 5a90 	vmov	s15, r5
d004f01c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f020:	ee77 7a83 	vadd.f32	s15, s15, s6
d004f024:	ee2a aa05 	vmul.f32	s20, s20, s10
d004f028:	ee6a aa85 	vmul.f32	s21, s21, s10
d004f02c:	eee7 3a8a 	vfma.f32	s7, s15, s20
d004f030:	eee7 0aaa 	vfma.f32	s1, s15, s21
d004f034:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d004f038:	4b52      	ldr	r3, [pc, #328]	; (d004f184 <fillTriangleFlat+0x954>)
d004f03a:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d004f03e:	9a03      	ldr	r2, [sp, #12]
d004f040:	681b      	ldr	r3, [r3, #0]
d004f042:	eeb6 3a00 	vmov.f32	s6, #96	; 0x3f000000  0.5
d004f046:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d004f04a:	eb0b 1e8e 	add.w	lr, fp, lr, lsl #6
d004f04e:	44a8      	add	r8, r5
d004f050:	449e      	add	lr, r3
d004f052:	9b02      	ldr	r3, [sp, #8]
d004f054:	eb03 0848 	add.w	r8, r3, r8, lsl #1
d004f058:	e011      	b.n	d004f07e <fillTriangleFlat+0x84e>
d004f05a:	ee07 1a90 	vmov	s15, r1
d004f05e:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004f062:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d004f066:	440d      	add	r5, r1
d004f068:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f06c:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d004f070:	eee7 3a8a 	vfma.f32	s7, s15, s20
d004f074:	eee7 0aaa 	vfma.f32	s1, s15, s21
d004f078:	45ac      	cmp	ip, r5
d004f07a:	f6ff ad5c 	blt.w	d004eb36 <fillTriangleFlat+0x306>
d004f07e:	ebac 0905 	sub.w	r9, ip, r5
d004f082:	eef4 3ac1 	vcmpe.f32	s7, s2
d004f086:	f109 0101 	add.w	r1, r9, #1
d004f08a:	2930      	cmp	r1, #48	; 0x30
d004f08c:	bfa8      	it	ge
d004f08e:	2130      	movge	r1, #48	; 0x30
d004f090:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f094:	d9e1      	bls.n	d004f05a <fillTriangleFlat+0x82a>
d004f096:	f1b9 0f00 	cmp.w	r9, #0
d004f09a:	ee80 5aa3 	vdiv.f32	s10, s1, s7
d004f09e:	dd52      	ble.n	d004f146 <fillTriangleFlat+0x916>
d004f0a0:	1e4b      	subs	r3, r1, #1
d004f0a2:	ee07 3a90 	vmov	s15, r3
d004f0a6:	eef0 ba63 	vmov.f32	s23, s7
d004f0aa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f0ae:	eee7 ba8a 	vfma.f32	s23, s15, s20
d004f0b2:	eef4 bac1 	vcmpe.f32	s23, s2
d004f0b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f0ba:	dd45      	ble.n	d004f148 <fillTriangleFlat+0x918>
d004f0bc:	eeb0 ca60 	vmov.f32	s24, s1
d004f0c0:	4b31      	ldr	r3, [pc, #196]	; (d004f188 <fillTriangleFlat+0x958>)
d004f0c2:	008e      	lsls	r6, r1, #2
d004f0c4:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d004f0c8:	eea7 caaa 	vfma.f32	s24, s15, s21
d004f0cc:	edd3 7a00 	vldr	s15, [r3]
d004f0d0:	eecc 4a2b 	vdiv.f32	s9, s24, s23
d004f0d4:	ee74 4ac5 	vsub.f32	s9, s9, s10
d004f0d8:	ee64 4aa7 	vmul.f32	s9, s9, s15
d004f0dc:	f1a8 0002 	sub.w	r0, r8, #2
d004f0e0:	2300      	movs	r3, #0
d004f0e2:	fec5 7a22 	vmaxnm.f32	s15, s10, s5
d004f0e6:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d004f0ea:	ee77 7a83 	vadd.f32	s15, s15, s6
d004f0ee:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004f0f2:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d004f0f6:	ee35 5a24 	vadd.f32	s10, s10, s9
d004f0fa:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d004f0fe:	3301      	adds	r3, #1
d004f100:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004f104:	ee17 2a90 	vmov	r2, s15
d004f108:	b292      	uxth	r2, r2
d004f10a:	4294      	cmp	r4, r2
d004f10c:	d902      	bls.n	d004f114 <fillTriangleFlat+0x8e4>
d004f10e:	8002      	strh	r2, [r0, #0]
d004f110:	f80e 700a 	strb.w	r7, [lr, sl]
d004f114:	4299      	cmp	r1, r3
d004f116:	dce4      	bgt.n	d004f0e2 <fillTriangleFlat+0x8b2>
d004f118:	f1b9 0f00 	cmp.w	r9, #0
d004f11c:	440e      	add	r6, r1
d004f11e:	ea4f 0341 	mov.w	r3, r1, lsl #1
d004f122:	ea4f 1686 	mov.w	r6, r6, lsl #6
d004f126:	bfbc      	itt	lt
d004f128:	2302      	movlt	r3, #2
d004f12a:	f44f 76a0 	movlt.w	r6, #320	; 0x140
d004f12e:	4498      	add	r8, r3
d004f130:	44b6      	add	lr, r6
d004f132:	ee07 1a90 	vmov	s15, r1
d004f136:	440d      	add	r5, r1
d004f138:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f13c:	eee7 3a8a 	vfma.f32	s7, s15, s20
d004f140:	eee7 0aaa 	vfma.f32	s1, s15, s21
d004f144:	e798      	b.n	d004f078 <fillTriangleFlat+0x848>
d004f146:	d1f4      	bne.n	d004f132 <fillTriangleFlat+0x902>
d004f148:	eef0 4a62 	vmov.f32	s9, s5
d004f14c:	008e      	lsls	r6, r1, #2
d004f14e:	e7c5      	b.n	d004f0dc <fillTriangleFlat+0x8ac>
d004f150:	eef0 1a42 	vmov.f32	s3, s4
d004f154:	eeb0 3a42 	vmov.f32	s6, s4
d004f158:	e6aa      	b.n	d004eeb0 <fillTriangleFlat+0x680>
d004f15a:	eef0 aa62 	vmov.f32	s21, s5
d004f15e:	eeb0 aa62 	vmov.f32	s20, s5
d004f162:	e767      	b.n	d004f034 <fillTriangleFlat+0x804>
d004f164:	eddf 5a09 	vldr	s11, [pc, #36]	; d004f18c <fillTriangleFlat+0x95c>
d004f168:	eef0 fa65 	vmov.f32	s31, s11
d004f16c:	edcd 5a07 	vstr	s11, [sp, #28]
d004f170:	e57b      	b.n	d004ec6a <fillTriangleFlat+0x43a>
d004f172:	eddf 7a06 	vldr	s15, [pc, #24]	; d004f18c <fillTriangleFlat+0x95c>
d004f176:	eef0 1a67 	vmov.f32	s3, s15
d004f17a:	eef0 0a67 	vmov.f32	s1, s15
d004f17e:	eeb0 aa67 	vmov.f32	s20, s15
d004f182:	e572      	b.n	d004ec6a <fillTriangleFlat+0x43a>
d004f184:	d00f5670 	.word	0xd00f5670
d004f188:	d0058380 	.word	0xd0058380
d004f18c:	00000000 	.word	0x00000000

d004f190 <fillTriangleDitherBayer>:
d004f190:	eddf 7ac6 	vldr	s15, [pc, #792]	; d004f4ac <fillTriangleDitherBayer+0x31c>
d004f194:	eef4 0ae7 	vcmpe.f32	s1, s15
d004f198:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004f19c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f1a0:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004f1a4:	ed2d 8b10 	vpush	{d8-d15}
d004f1a8:	b097      	sub	sp, #92	; 0x5c
d004f1aa:	9202      	str	r2, [sp, #8]
d004f1ac:	bf94      	ite	ls
d004f1ae:	2201      	movls	r2, #1
d004f1b0:	2200      	movhi	r2, #0
d004f1b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f1b6:	9303      	str	r3, [sp, #12]
d004f1b8:	f8bd 40c8 	ldrh.w	r4, [sp, #200]	; 0xc8
d004f1bc:	bf98      	it	ls
d004f1be:	f042 0201 	orrls.w	r2, r2, #1
d004f1c2:	f89d 30d4 	ldrb.w	r3, [sp, #212]	; 0xd4
d004f1c6:	e9cd 0100 	strd	r0, r1, [sp]
d004f1ca:	f8bd 00cc 	ldrh.w	r0, [sp, #204]	; 0xcc
d004f1ce:	f8bd 10d0 	ldrh.w	r1, [sp, #208]	; 0xd0
d004f1d2:	2a00      	cmp	r2, #0
d004f1d4:	f040 81d1 	bne.w	d004f57a <fillTriangleDitherBayer+0x3ea>
d004f1d8:	eeb4 0a67 	vcmp.f32	s0, s15
d004f1dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f1e0:	f240 81cb 	bls.w	d004f57a <fillTriangleDitherBayer+0x3ea>
d004f1e4:	eddf 6ab2 	vldr	s13, [pc, #712]	; d004f4b0 <fillTriangleDitherBayer+0x320>
d004f1e8:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004f1ec:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d004f1f0:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d004f1f4:	ee06 4a90 	vmov	s13, r4
d004f1f8:	ee87 8a00 	vdiv.f32	s16, s14, s0
d004f1fc:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d004f200:	ee87 0a20 	vdiv.f32	s0, s14, s1
d004f204:	eeb8 5a66 	vcvt.f32.u32	s10, s13
d004f208:	eec7 6a01 	vdiv.f32	s13, s14, s2
d004f20c:	eebd 7ae7 	vcvt.s32.f32	s14, s15
d004f210:	ee25 5a08 	vmul.f32	s10, s10, s16
d004f214:	ee17 2a10 	vmov	r2, s14
d004f218:	ee07 0a10 	vmov	s14, r0
d004f21c:	eeb8 4a47 	vcvt.f32.u32	s8, s14
d004f220:	ee07 1a10 	vmov	s14, r1
d004f224:	1c51      	adds	r1, r2, #1
d004f226:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004f22a:	2905      	cmp	r1, #5
d004f22c:	ee24 4a00 	vmul.f32	s8, s8, s0
d004f230:	bfa8      	it	ge
d004f232:	2105      	movge	r1, #5
d004f234:	2a04      	cmp	r2, #4
d004f236:	ee67 5a26 	vmul.f32	s11, s14, s13
d004f23a:	f300 8526 	bgt.w	d004fc8a <fillTriangleDitherBayer+0xafa>
d004f23e:	f003 030f 	and.w	r3, r3, #15
d004f242:	2a03      	cmp	r2, #3
d004f244:	f103 0320 	add.w	r3, r3, #32
d004f248:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004f24c:	fa5f fb80 	uxtb.w	fp, r0
d004f250:	f300 851d 	bgt.w	d004fc8e <fillTriangleDitherBayer+0xafe>
d004f254:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004f258:	b2db      	uxtb	r3, r3
d004f25a:	9304      	str	r3, [sp, #16]
d004f25c:	ed9d 7a01 	vldr	s14, [sp, #4]
d004f260:	eef8 3ac7 	vcvt.f32.s32	s7, s14
d004f264:	ed9d 7a03 	vldr	s14, [sp, #12]
d004f268:	eef8 1ac7 	vcvt.f32.s32	s3, s14
d004f26c:	ed9d 7a00 	vldr	s14, [sp]
d004f270:	eef8 4ac7 	vcvt.f32.s32	s9, s14
d004f274:	ed9d 7a02 	vldr	s14, [sp, #8]
d004f278:	eef4 3ae1 	vcmpe.f32	s7, s3
d004f27c:	eeb8 2ac7 	vcvt.f32.s32	s4, s14
d004f280:	ed9d 7a30 	vldr	s14, [sp, #192]	; 0xc0
d004f284:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f288:	eeb8 3ac7 	vcvt.f32.s32	s6, s14
d004f28c:	ed9d 7a31 	vldr	s14, [sp, #196]	; 0xc4
d004f290:	eef8 2ac7 	vcvt.f32.s32	s5, s14
d004f294:	f300 8176 	bgt.w	d004f584 <fillTriangleDitherBayer+0x3f4>
d004f298:	eef4 3ae2 	vcmpe.f32	s7, s5
d004f29c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f2a0:	f300 82a1 	bgt.w	d004f7e6 <fillTriangleDitherBayer+0x656>
d004f2a4:	eef4 2ae1 	vcmpe.f32	s5, s3
d004f2a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f2ac:	d517      	bpl.n	d004f2de <fillTriangleDitherBayer+0x14e>
d004f2ae:	eef0 0a44 	vmov.f32	s1, s8
d004f2b2:	eeb0 1a40 	vmov.f32	s2, s0
d004f2b6:	eeb0 6a61 	vmov.f32	s12, s3
d004f2ba:	eeb0 7a42 	vmov.f32	s14, s4
d004f2be:	eeb0 4a65 	vmov.f32	s8, s11
d004f2c2:	eeb0 0a66 	vmov.f32	s0, s13
d004f2c6:	eef0 1a62 	vmov.f32	s3, s5
d004f2ca:	eeb0 2a43 	vmov.f32	s4, s6
d004f2ce:	eef0 5a60 	vmov.f32	s11, s1
d004f2d2:	eef0 6a41 	vmov.f32	s13, s2
d004f2d6:	eef0 2a46 	vmov.f32	s5, s12
d004f2da:	eeb0 3a47 	vmov.f32	s6, s14
d004f2de:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004f2e2:	ee33 6a87 	vadd.f32	s12, s7, s14
d004f2e6:	ee32 7a87 	vadd.f32	s14, s5, s14
d004f2ea:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d004f2ee:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d004f2f2:	ee16 3a10 	vmov	r3, s12
d004f2f6:	ee17 1a10 	vmov	r1, s14
d004f2fa:	428b      	cmp	r3, r1
d004f2fc:	f000 813d 	beq.w	d004f57a <fillTriangleDitherBayer+0x3ea>
d004f300:	ee32 7ae3 	vsub.f32	s14, s5, s7
d004f304:	ed9f 6a69 	vldr	s12, [pc, #420]	; d004f4ac <fillTriangleDitherBayer+0x31c>
d004f308:	eeb4 7ac6 	vcmpe.f32	s14, s12
d004f30c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f310:	f240 8133 	bls.w	d004f57a <fillTriangleDitherBayer+0x3ea>
d004f314:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004f318:	ee71 0ae3 	vsub.f32	s1, s3, s7
d004f31c:	ee73 8a64 	vsub.f32	s17, s6, s9
d004f320:	ee8a 1a07 	vdiv.f32	s2, s20, s14
d004f324:	eef4 0ac6 	vcmpe.f32	s1, s12
d004f328:	ee36 9ac8 	vsub.f32	s18, s13, s16
d004f32c:	ee75 9ac5 	vsub.f32	s19, s11, s10
d004f330:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f334:	ee68 8a81 	vmul.f32	s17, s17, s2
d004f338:	ee29 9a01 	vmul.f32	s18, s18, s2
d004f33c:	ee69 9a81 	vmul.f32	s19, s19, s2
d004f340:	f300 813f 	bgt.w	d004f5c2 <fillTriangleDitherBayer+0x432>
d004f344:	ee07 2a10 	vmov	s14, r2
d004f348:	ee32 1ae1 	vsub.f32	s2, s5, s3
d004f34c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004f350:	eeb4 1ac6 	vcmpe.f32	s2, s12
d004f354:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d004f358:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004f35c:	eeb0 7a67 	vmov.f32	s14, s15
d004f360:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004f364:	ee17 3a10 	vmov	r3, s14
d004f368:	f383 0204 	usat	r2, #4, r3
d004f36c:	9203      	str	r2, [sp, #12]
d004f36e:	9a04      	ldr	r2, [sp, #16]
d004f370:	455a      	cmp	r2, fp
d004f372:	bf18      	it	ne
d004f374:	2b00      	cmpne	r3, #0
d004f376:	bfd4      	ite	le
d004f378:	2301      	movle	r3, #1
d004f37a:	2300      	movgt	r3, #0
d004f37c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f380:	9301      	str	r3, [sp, #4]
d004f382:	f340 80fa 	ble.w	d004f57a <fillTriangleDitherBayer+0x3ea>
d004f386:	ed9f ea4a 	vldr	s28, [pc, #296]	; d004f4b0 <fillTriangleDitherBayer+0x320>
d004f38a:	eeb0 aa4e 	vmov.f32	s20, s28
d004f38e:	eeb0 ca4e 	vmov.f32	s24, s28
d004f392:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d004f396:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d004f39a:	ed9f 6a44 	vldr	s12, [pc, #272]	; d004f4ac <fillTriangleDitherBayer+0x31c>
d004f39e:	ee33 3a42 	vsub.f32	s6, s6, s4
d004f3a2:	ee76 6ac0 	vsub.f32	s13, s13, s0
d004f3a6:	eec7 7a27 	vdiv.f32	s15, s14, s15
d004f3aa:	eef4 0ac6 	vcmpe.f32	s1, s12
d004f3ae:	ee35 7ac4 	vsub.f32	s14, s11, s8
d004f3b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f3b6:	ee63 5a27 	vmul.f32	s11, s6, s15
d004f3ba:	ee66 6aa7 	vmul.f32	s13, s13, s15
d004f3be:	ee67 fa27 	vmul.f32	s31, s14, s15
d004f3c2:	edcd 5a0f 	vstr	s11, [sp, #60]	; 0x3c
d004f3c6:	edcd 6a10 	vstr	s13, [sp, #64]	; 0x40
d004f3ca:	f300 8133 	bgt.w	d004f634 <fillTriangleDitherBayer+0x4a4>
d004f3ce:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d004f3d2:	4a31      	ldr	r2, [pc, #196]	; (d004f498 <fillTriangleDitherBayer+0x308>)
d004f3d4:	4b31      	ldr	r3, [pc, #196]	; (d004f49c <fillTriangleDitherBayer+0x30c>)
d004f3d6:	6812      	ldr	r2, [r2, #0]
d004f3d8:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d004f3dc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f3e0:	681b      	ldr	r3, [r3, #0]
d004f3e2:	920c      	str	r2, [sp, #48]	; 0x30
d004f3e4:	edcd 7a0e 	vstr	s15, [sp, #56]	; 0x38
d004f3e8:	930d      	str	r3, [sp, #52]	; 0x34
d004f3ea:	eddd 7a0e 	vldr	s15, [sp, #56]	; 0x38
d004f3ee:	eef4 1ae7 	vcmpe.f32	s3, s15
d004f3f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f3f6:	dd02      	ble.n	d004f3fe <fillTriangleDitherBayer+0x26e>
d004f3f8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d004f3fa:	3301      	adds	r3, #1
d004f3fc:	930a      	str	r3, [sp, #40]	; 0x28
d004f3fe:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004f402:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004f406:	eeb4 7ae2 	vcmpe.f32	s14, s5
d004f40a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f40e:	d404      	bmi.n	d004f41a <fillTriangleDitherBayer+0x28a>
d004f410:	ee17 3a90 	vmov	r3, s15
d004f414:	3b01      	subs	r3, #1
d004f416:	ee07 3a90 	vmov	s15, r3
d004f41a:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d004f41c:	ee17 2a90 	vmov	r2, s15
d004f420:	980c      	ldr	r0, [sp, #48]	; 0x30
d004f422:	4293      	cmp	r3, r2
d004f424:	bfa8      	it	ge
d004f426:	4613      	movge	r3, r2
d004f428:	461a      	mov	r2, r3
d004f42a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d004f42c:	4283      	cmp	r3, r0
d004f42e:	bfb8      	it	lt
d004f430:	4603      	movlt	r3, r0
d004f432:	429a      	cmp	r2, r3
d004f434:	9302      	str	r3, [sp, #8]
d004f436:	f2c0 80a0 	blt.w	d004f57a <fillTriangleDitherBayer+0x3ea>
d004f43a:	ee07 3a90 	vmov	s15, r3
d004f43e:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004f442:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004f446:	4916      	ldr	r1, [pc, #88]	; (d004f4a0 <fillTriangleDitherBayer+0x310>)
d004f448:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f44c:	eddd aa0f 	vldr	s21, [sp, #60]	; 0x3c
d004f450:	015b      	lsls	r3, r3, #5
d004f452:	ed9d ba10 	vldr	s22, [sp, #64]	; 0x40
d004f456:	eddf 0a15 	vldr	s1, [pc, #84]	; d004f4ac <fillTriangleDitherBayer+0x31c>
d004f45a:	ee77 7a87 	vadd.f32	s15, s15, s14
d004f45e:	930b      	str	r3, [sp, #44]	; 0x2c
d004f460:	1c53      	adds	r3, r2, #1
d004f462:	ed9f 1a10 	vldr	s2, [pc, #64]	; d004f4a4 <fillTriangleDitherBayer+0x314>
d004f466:	ed9f 6a12 	vldr	s12, [pc, #72]	; d004f4b0 <fillTriangleDitherBayer+0x320>
d004f46a:	ee77 3ae3 	vsub.f32	s7, s15, s7
d004f46e:	9308      	str	r3, [sp, #32]
d004f470:	ee77 1ae1 	vsub.f32	s3, s15, s3
d004f474:	680b      	ldr	r3, [r1, #0]
d004f476:	eee8 4aa3 	vfma.f32	s9, s17, s7
d004f47a:	930a      	str	r3, [sp, #40]	; 0x28
d004f47c:	eea9 8a23 	vfma.f32	s16, s18, s7
d004f480:	eea9 5aa3 	vfma.f32	s10, s19, s7
d004f484:	eddf 3a08 	vldr	s7, [pc, #32]	; d004f4a8 <fillTriangleDitherBayer+0x318>
d004f488:	eea1 2aaa 	vfma.f32	s4, s3, s21
d004f48c:	eeab 0a21 	vfma.f32	s0, s22, s3
d004f490:	eeaf 4aa1 	vfma.f32	s8, s31, s3
d004f494:	e04f      	b.n	d004f536 <fillTriangleDitherBayer+0x3a6>
d004f496:	bf00      	nop
d004f498:	d005b17c 	.word	0xd005b17c
d004f49c:	d005b180 	.word	0xd005b180
d004f4a0:	d005b184 	.word	0xd005b184
d004f4a4:	33d6bf95 	.word	0x33d6bf95
d004f4a8:	477fff00 	.word	0x477fff00
d004f4ac:	38d1b717 	.word	0x38d1b717
d004f4b0:	00000000 	.word	0x00000000
d004f4b4:	eeb0 aa45 	vmov.f32	s20, s10
d004f4b8:	eef0 1a48 	vmov.f32	s3, s16
d004f4bc:	eef0 7a64 	vmov.f32	s15, s9
d004f4c0:	eef0 2a44 	vmov.f32	s5, s8
d004f4c4:	eeb0 3a40 	vmov.f32	s6, s0
d004f4c8:	eeb0 7a42 	vmov.f32	s14, s4
d004f4cc:	eefd 6ac7 	vcvt.s32.f32	s13, s14
d004f4d0:	f240 13df 	movw	r3, #479	; 0x1df
d004f4d4:	ee16 5a90 	vmov	r5, s13
d004f4d8:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004f4dc:	eeb4 7ae6 	vcmpe.f32	s14, s13
d004f4e0:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d004f4e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f4e8:	ee16 ea90 	vmov	lr, s13
d004f4ec:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004f4f0:	bfc8      	it	gt
d004f4f2:	3501      	addgt	r5, #1
d004f4f4:	eef4 7ae6 	vcmpe.f32	s15, s13
d004f4f8:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d004f4fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f500:	bfd8      	it	le
d004f502:	f10e 3eff 	addle.w	lr, lr, #4294967295	; 0xffffffff
d004f506:	459e      	cmp	lr, r3
d004f508:	bfa8      	it	ge
d004f50a:	469e      	movge	lr, r3
d004f50c:	45ae      	cmp	lr, r5
d004f50e:	f280 8183 	bge.w	d004f818 <fillTriangleDitherBayer+0x688>
d004f512:	9b02      	ldr	r3, [sp, #8]
d004f514:	ee74 4aa8 	vadd.f32	s9, s9, s17
d004f518:	9a08      	ldr	r2, [sp, #32]
d004f51a:	ee38 8a09 	vadd.f32	s16, s16, s18
d004f51e:	3301      	adds	r3, #1
d004f520:	ee35 5a29 	vadd.f32	s10, s10, s19
d004f524:	ee32 2a2a 	vadd.f32	s4, s4, s21
d004f528:	4293      	cmp	r3, r2
d004f52a:	ee30 0a0b 	vadd.f32	s0, s0, s22
d004f52e:	ee34 4a2f 	vadd.f32	s8, s8, s31
d004f532:	9302      	str	r3, [sp, #8]
d004f534:	d021      	beq.n	d004f57a <fillTriangleDitherBayer+0x3ea>
d004f536:	eef4 4ac2 	vcmpe.f32	s9, s4
d004f53a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f53e:	dcb9      	bgt.n	d004f4b4 <fillTriangleDitherBayer+0x324>
d004f540:	eeb0 aa44 	vmov.f32	s20, s8
d004f544:	eef0 1a40 	vmov.f32	s3, s0
d004f548:	eef0 7a42 	vmov.f32	s15, s4
d004f54c:	eef0 2a45 	vmov.f32	s5, s10
d004f550:	eeb0 3a48 	vmov.f32	s6, s16
d004f554:	eeb0 7a64 	vmov.f32	s14, s9
d004f558:	e7b8      	b.n	d004f4cc <fillTriangleDitherBayer+0x33c>
d004f55a:	eddd 2a13 	vldr	s5, [sp, #76]	; 0x4c
d004f55e:	eddd 4a14 	vldr	s9, [sp, #80]	; 0x50
d004f562:	eddd fa15 	vldr	s31, [sp, #84]	; 0x54
d004f566:	ed5f 7a2f 	vldr	s15, [pc, #-188]	; d004f4ac <fillTriangleDitherBayer+0x31c>
d004f56a:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d004f56e:	eeb4 7ae7 	vcmpe.f32	s14, s15
d004f572:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f576:	f73f af38 	bgt.w	d004f3ea <fillTriangleDitherBayer+0x25a>
d004f57a:	b017      	add	sp, #92	; 0x5c
d004f57c:	ecbd 8b10 	vpop	{d8-d15}
d004f580:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004f584:	eef4 1ae2 	vcmpe.f32	s3, s5
d004f588:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f58c:	f340 8112 	ble.w	d004f7b4 <fillTriangleDitherBayer+0x624>
d004f590:	eef0 0a65 	vmov.f32	s1, s11
d004f594:	eeb0 1a66 	vmov.f32	s2, s13
d004f598:	eeb0 6a62 	vmov.f32	s12, s5
d004f59c:	eeb0 7a43 	vmov.f32	s14, s6
d004f5a0:	eef0 5a45 	vmov.f32	s11, s10
d004f5a4:	eef0 6a48 	vmov.f32	s13, s16
d004f5a8:	eef0 2a63 	vmov.f32	s5, s7
d004f5ac:	eeb0 3a64 	vmov.f32	s6, s9
d004f5b0:	eeb0 5a60 	vmov.f32	s10, s1
d004f5b4:	eeb0 8a41 	vmov.f32	s16, s2
d004f5b8:	eef0 3a46 	vmov.f32	s7, s12
d004f5bc:	eef0 4a47 	vmov.f32	s9, s14
d004f5c0:	e68d      	b.n	d004f2de <fillTriangleDitherBayer+0x14e>
d004f5c2:	ee07 2a10 	vmov	s14, r2
d004f5c6:	ee8a 1a20 	vdiv.f32	s2, s20, s1
d004f5ca:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004f5ce:	ee72 aa64 	vsub.f32	s21, s4, s9
d004f5d2:	ee30 aa48 	vsub.f32	s20, s0, s16
d004f5d6:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004f5da:	ee34 ea45 	vsub.f32	s28, s8, s10
d004f5de:	eeb0 7a67 	vmov.f32	s14, s15
d004f5e2:	eebe 7ace 	vcvt.s32.f32	s14, s14, #4
d004f5e6:	ee6a 7a81 	vmul.f32	s15, s21, s2
d004f5ea:	ee17 3a10 	vmov	r3, s14
d004f5ee:	ee32 7ae1 	vsub.f32	s14, s5, s3
d004f5f2:	ee2e ea01 	vmul.f32	s28, s28, s2
d004f5f6:	f383 0204 	usat	r2, #4, r3
d004f5fa:	eeb0 ca67 	vmov.f32	s24, s15
d004f5fe:	eeb4 7ac6 	vcmpe.f32	s14, s12
d004f602:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d004f606:	9203      	str	r2, [sp, #12]
d004f608:	ee6a 7a01 	vmul.f32	s15, s20, s2
d004f60c:	9a04      	ldr	r2, [sp, #16]
d004f60e:	455a      	cmp	r2, fp
d004f610:	bf18      	it	ne
d004f612:	2b00      	cmpne	r3, #0
d004f614:	eeb0 aa67 	vmov.f32	s20, s15
d004f618:	bfd4      	ite	le
d004f61a:	2301      	movle	r3, #1
d004f61c:	2300      	movgt	r3, #0
d004f61e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f622:	9301      	str	r3, [sp, #4]
d004f624:	f73f aeb5 	bgt.w	d004f392 <fillTriangleDitherBayer+0x202>
d004f628:	ed5f fa5f 	vldr	s31, [pc, #-380]	; d004f4b0 <fillTriangleDitherBayer+0x320>
d004f62c:	edcd fa10 	vstr	s31, [sp, #64]	; 0x40
d004f630:	edcd fa0f 	vstr	s31, [sp, #60]	; 0x3c
d004f634:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004f638:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004f63c:	eeb4 7ae3 	vcmpe.f32	s14, s7
d004f640:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f644:	d504      	bpl.n	d004f650 <fillTriangleDitherBayer+0x4c0>
d004f646:	ee17 3a90 	vmov	r3, s15
d004f64a:	3301      	adds	r3, #1
d004f64c:	ee07 3a90 	vmov	s15, r3
d004f650:	eebd 7ae1 	vcvt.s32.f32	s14, s3
d004f654:	49dd      	ldr	r1, [pc, #884]	; (d004f9cc <fillTriangleDitherBayer+0x83c>)
d004f656:	ee17 0a90 	vmov	r0, s15
d004f65a:	4add      	ldr	r2, [pc, #884]	; (d004f9d0 <fillTriangleDitherBayer+0x840>)
d004f65c:	6809      	ldr	r1, [r1, #0]
d004f65e:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d004f662:	ee17 3a10 	vmov	r3, s14
d004f666:	6812      	ldr	r2, [r2, #0]
d004f668:	ed8d 7a0a 	vstr	s14, [sp, #40]	; 0x28
d004f66c:	eef4 1ae6 	vcmpe.f32	s3, s13
d004f670:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d004f674:	910c      	str	r1, [sp, #48]	; 0x30
d004f676:	920d      	str	r2, [sp, #52]	; 0x34
d004f678:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f67c:	bfd8      	it	le
d004f67e:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d004f682:	4288      	cmp	r0, r1
d004f684:	bfb8      	it	lt
d004f686:	4608      	movlt	r0, r1
d004f688:	4293      	cmp	r3, r2
d004f68a:	bfa8      	it	ge
d004f68c:	4613      	movge	r3, r2
d004f68e:	9002      	str	r0, [sp, #8]
d004f690:	4283      	cmp	r3, r0
d004f692:	f6ff af68 	blt.w	d004f566 <fillTriangleDitherBayer+0x3d6>
d004f696:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004f69a:	3301      	adds	r3, #1
d004f69c:	eef0 aa64 	vmov.f32	s21, s9
d004f6a0:	49cc      	ldr	r1, [pc, #816]	; (d004f9d4 <fillTriangleDitherBayer+0x844>)
d004f6a2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d004f6a4:	eeb0 ba64 	vmov.f32	s22, s9
d004f6a8:	ee37 7ae3 	vsub.f32	s14, s15, s7
d004f6ac:	eddd 7a02 	vldr	s15, [sp, #8]
d004f6b0:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d004f6b4:	9308      	str	r3, [sp, #32]
d004f6b6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f6ba:	680b      	ldr	r3, [r1, #0]
d004f6bc:	eef0 da48 	vmov.f32	s27, s16
d004f6c0:	eddf bac5 	vldr	s23, [pc, #788]	; d004f9d8 <fillTriangleDitherBayer+0x848>
d004f6c4:	eeb0 da45 	vmov.f32	s26, s10
d004f6c8:	9311      	str	r3, [sp, #68]	; 0x44
d004f6ca:	ee77 7a87 	vadd.f32	s15, s15, s14
d004f6ce:	0153      	lsls	r3, r2, #5
d004f6d0:	eef0 ea4c 	vmov.f32	s29, s24
d004f6d4:	eddf 6ac1 	vldr	s13, [pc, #772]	; d004f9dc <fillTriangleDitherBayer+0x84c>
d004f6d8:	eef0 ca48 	vmov.f32	s25, s16
d004f6dc:	eddf 5ac0 	vldr	s11, [pc, #768]	; d004f9e0 <fillTriangleDitherBayer+0x850>
d004f6e0:	eeec aa27 	vfma.f32	s21, s24, s15
d004f6e4:	9312      	str	r3, [sp, #72]	; 0x48
d004f6e6:	eeb0 ca45 	vmov.f32	s24, s10
d004f6ea:	edcd 2a13 	vstr	s5, [sp, #76]	; 0x4c
d004f6ee:	eea8 baa7 	vfma.f32	s22, s17, s15
d004f6f2:	edcd 4a14 	vstr	s9, [sp, #80]	; 0x50
d004f6f6:	eee9 da27 	vfma.f32	s27, s18, s15
d004f6fa:	edcd fa15 	vstr	s31, [sp, #84]	; 0x54
d004f6fe:	eea9 daa7 	vfma.f32	s26, s19, s15
d004f702:	eeea ca27 	vfma.f32	s25, s20, s15
d004f706:	eeae ca27 	vfma.f32	s24, s28, s15
d004f70a:	e041      	b.n	d004f790 <fillTriangleDitherBayer+0x600>
d004f70c:	eeb0 1a4d 	vmov.f32	s2, s26
d004f710:	eef0 2a6d 	vmov.f32	s5, s27
d004f714:	eef0 7a4b 	vmov.f32	s15, s22
d004f718:	eeb0 3a4c 	vmov.f32	s6, s24
d004f71c:	eef0 4a6c 	vmov.f32	s9, s25
d004f720:	eeb0 7a6a 	vmov.f32	s14, s21
d004f724:	eebd 6ac7 	vcvt.s32.f32	s12, s14
d004f728:	f240 13df 	movw	r3, #479	; 0x1df
d004f72c:	ee16 5a10 	vmov	r5, s12
d004f730:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004f734:	eeb4 7ac6 	vcmpe.f32	s14, s12
d004f738:	eebd 6ae7 	vcvt.s32.f32	s12, s15
d004f73c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f740:	ee16 ea10 	vmov	lr, s12
d004f744:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d004f748:	bfc8      	it	gt
d004f74a:	3501      	addgt	r5, #1
d004f74c:	eef4 7ac6 	vcmpe.f32	s15, s12
d004f750:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d004f754:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f758:	bfd8      	it	le
d004f75a:	f10e 3eff 	addle.w	lr, lr, #4294967295	; 0xffffffff
d004f75e:	459e      	cmp	lr, r3
d004f760:	bfa8      	it	ge
d004f762:	469e      	movge	lr, r3
d004f764:	45ae      	cmp	lr, r5
d004f766:	f280 8180 	bge.w	d004fa6a <fillTriangleDitherBayer+0x8da>
d004f76a:	9b02      	ldr	r3, [sp, #8]
d004f76c:	ee3b ba28 	vadd.f32	s22, s22, s17
d004f770:	9a08      	ldr	r2, [sp, #32]
d004f772:	ee7d da89 	vadd.f32	s27, s27, s18
d004f776:	3301      	adds	r3, #1
d004f778:	ee3d da29 	vadd.f32	s26, s26, s19
d004f77c:	ee7a aaae 	vadd.f32	s21, s21, s29
d004f780:	4293      	cmp	r3, r2
d004f782:	ee7c ca8a 	vadd.f32	s25, s25, s20
d004f786:	ee3c ca0e 	vadd.f32	s24, s24, s28
d004f78a:	9302      	str	r3, [sp, #8]
d004f78c:	f43f aee5 	beq.w	d004f55a <fillTriangleDitherBayer+0x3ca>
d004f790:	eeb4 baea 	vcmpe.f32	s22, s21
d004f794:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f798:	dcb8      	bgt.n	d004f70c <fillTriangleDitherBayer+0x57c>
d004f79a:	eeb0 1a4c 	vmov.f32	s2, s24
d004f79e:	eef0 2a6c 	vmov.f32	s5, s25
d004f7a2:	eef0 7a6a 	vmov.f32	s15, s21
d004f7a6:	eeb0 3a4d 	vmov.f32	s6, s26
d004f7aa:	eef0 4a6d 	vmov.f32	s9, s27
d004f7ae:	eeb0 7a4b 	vmov.f32	s14, s22
d004f7b2:	e7b7      	b.n	d004f724 <fillTriangleDitherBayer+0x594>
d004f7b4:	eef0 0a45 	vmov.f32	s1, s10
d004f7b8:	eeb0 1a48 	vmov.f32	s2, s16
d004f7bc:	eeb0 6a63 	vmov.f32	s12, s7
d004f7c0:	eeb0 7a64 	vmov.f32	s14, s9
d004f7c4:	eeb0 5a44 	vmov.f32	s10, s8
d004f7c8:	eeb0 8a40 	vmov.f32	s16, s0
d004f7cc:	eef0 3a61 	vmov.f32	s7, s3
d004f7d0:	eef0 4a42 	vmov.f32	s9, s4
d004f7d4:	eeb0 4a60 	vmov.f32	s8, s1
d004f7d8:	eeb0 0a41 	vmov.f32	s0, s2
d004f7dc:	eef0 1a46 	vmov.f32	s3, s12
d004f7e0:	eeb0 2a47 	vmov.f32	s4, s14
d004f7e4:	e55e      	b.n	d004f2a4 <fillTriangleDitherBayer+0x114>
d004f7e6:	eef0 0a45 	vmov.f32	s1, s10
d004f7ea:	eeb0 1a48 	vmov.f32	s2, s16
d004f7ee:	eeb0 6a63 	vmov.f32	s12, s7
d004f7f2:	eeb0 7a64 	vmov.f32	s14, s9
d004f7f6:	eeb0 5a65 	vmov.f32	s10, s11
d004f7fa:	eeb0 8a66 	vmov.f32	s16, s13
d004f7fe:	eef0 3a62 	vmov.f32	s7, s5
d004f802:	eef0 4a43 	vmov.f32	s9, s6
d004f806:	eef0 5a60 	vmov.f32	s11, s1
d004f80a:	eef0 6a41 	vmov.f32	s13, s2
d004f80e:	eef0 2a46 	vmov.f32	s5, s12
d004f812:	eeb0 3a47 	vmov.f32	s6, s14
d004f816:	e545      	b.n	d004f2a4 <fillTriangleDitherBayer+0x114>
d004f818:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004f81c:	eef4 7ae0 	vcmpe.f32	s15, s1
d004f820:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f824:	f340 8237 	ble.w	d004fc96 <fillTriangleDitherBayer+0xb06>
d004f828:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004f82c:	ee71 1ac3 	vsub.f32	s3, s3, s6
d004f830:	ee3a aa62 	vsub.f32	s20, s20, s5
d004f834:	eec5 6aa7 	vdiv.f32	s13, s11, s15
d004f838:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004f83c:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004f840:	ee07 5a10 	vmov	s14, r5
d004f844:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004f848:	ee37 7a27 	vadd.f32	s14, s14, s15
d004f84c:	ee61 1aa6 	vmul.f32	s3, s3, s13
d004f850:	ee2a aa26 	vmul.f32	s20, s20, s13
d004f854:	eea7 3a21 	vfma.f32	s6, s14, s3
d004f858:	eee7 2a0a 	vfma.f32	s5, s14, s20
d004f85c:	9c02      	ldr	r4, [sp, #8]
d004f85e:	eb05 0c85 	add.w	ip, r5, r5, lsl #2
d004f862:	4a60      	ldr	r2, [pc, #384]	; (d004f9e4 <fillTriangleDitherBayer+0x854>)
d004f864:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d004f868:	990b      	ldr	r1, [sp, #44]	; 0x2c
d004f86a:	ebc4 1304 	rsb	r3, r4, r4, lsl #4
d004f86e:	f004 0003 	and.w	r0, r4, #3
d004f872:	f8cd e000 	str.w	lr, [sp]
d004f876:	eb01 1343 	add.w	r3, r1, r3, lsl #5
d004f87a:	6811      	ldr	r1, [r2, #0]
d004f87c:	eb04 128c 	add.w	r2, r4, ip, lsl #6
d004f880:	442b      	add	r3, r5
d004f882:	0080      	lsls	r0, r0, #2
d004f884:	eb01 0c02 	add.w	ip, r1, r2
d004f888:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004f88a:	9009      	str	r0, [sp, #36]	; 0x24
d004f88c:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d004f890:	469e      	mov	lr, r3
d004f892:	9b00      	ldr	r3, [sp, #0]
d004f894:	eeb4 3ac1 	vcmpe.f32	s6, s2
d004f898:	eba3 0a05 	sub.w	sl, r3, r5
d004f89c:	f10a 0101 	add.w	r1, sl, #1
d004f8a0:	2930      	cmp	r1, #48	; 0x30
d004f8a2:	bfa8      	it	ge
d004f8a4:	2130      	movge	r1, #48	; 0x30
d004f8a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f8aa:	d97e      	bls.n	d004f9aa <fillTriangleDitherBayer+0x81a>
d004f8ac:	f1ba 0f00 	cmp.w	sl, #0
d004f8b0:	ee82 7a83 	vdiv.f32	s14, s5, s6
d004f8b4:	f340 809e 	ble.w	d004f9f4 <fillTriangleDitherBayer+0x864>
d004f8b8:	1e4b      	subs	r3, r1, #1
d004f8ba:	ee07 3a90 	vmov	s15, r3
d004f8be:	eef0 ba43 	vmov.f32	s23, s6
d004f8c2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f8c6:	eee7 baa1 	vfma.f32	s23, s15, s3
d004f8ca:	eef4 bac1 	vcmpe.f32	s23, s2
d004f8ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004f8d2:	f340 80b6 	ble.w	d004fa42 <fillTriangleDitherBayer+0x8b2>
d004f8d6:	eeb0 ca62 	vmov.f32	s24, s5
d004f8da:	4b43      	ldr	r3, [pc, #268]	; (d004f9e8 <fillTriangleDitherBayer+0x858>)
d004f8dc:	ea4f 0881 	mov.w	r8, r1, lsl #2
d004f8e0:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d004f8e4:	eea7 ca8a 	vfma.f32	s24, s15, s20
d004f8e8:	edd3 7a00 	vldr	s15, [r3]
d004f8ec:	9b01      	ldr	r3, [sp, #4]
d004f8ee:	eecc 6a2b 	vdiv.f32	s13, s24, s23
d004f8f2:	ee76 6ac7 	vsub.f32	s13, s13, s14
d004f8f6:	ee66 6aa7 	vmul.f32	s13, s13, s15
d004f8fa:	2b00      	cmp	r3, #0
d004f8fc:	f040 8083 	bne.w	d004fa06 <fillTriangleDitherBayer+0x876>
d004f900:	f005 0303 	and.w	r3, r5, #3
d004f904:	f1ae 0602 	sub.w	r6, lr, #2
d004f908:	f8cd e014 	str.w	lr, [sp, #20]
d004f90c:	9506      	str	r5, [sp, #24]
d004f90e:	2200      	movs	r2, #0
d004f910:	f8cd 801c 	str.w	r8, [sp, #28]
d004f914:	f8dd e024 	ldr.w	lr, [sp, #36]	; 0x24
d004f918:	9d03      	ldr	r5, [sp, #12]
d004f91a:	f8dd 8010 	ldr.w	r8, [sp, #16]
d004f91e:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d004f922:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004f926:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004f92a:	4830      	ldr	r0, [pc, #192]	; (d004f9ec <fillTriangleDitherBayer+0x85c>)
d004f92c:	f836 7f02 	ldrh.w	r7, [r6, #2]!
d004f930:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d004f934:	eb00 0903 	add.w	r9, r0, r3
d004f938:	3301      	adds	r3, #1
d004f93a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004f93e:	01a4      	lsls	r4, r4, #6
d004f940:	ee37 7a26 	vadd.f32	s14, s14, s13
d004f944:	f003 0303 	and.w	r3, r3, #3
d004f948:	3201      	adds	r2, #1
d004f94a:	ee17 0a90 	vmov	r0, s15
d004f94e:	b280      	uxth	r0, r0
d004f950:	4287      	cmp	r7, r0
d004f952:	d908      	bls.n	d004f966 <fillTriangleDitherBayer+0x7d6>
d004f954:	8030      	strh	r0, [r6, #0]
d004f956:	f819 000e 	ldrb.w	r0, [r9, lr]
d004f95a:	42a8      	cmp	r0, r5
d004f95c:	bfb4      	ite	lt
d004f95e:	4640      	movlt	r0, r8
d004f960:	4658      	movge	r0, fp
d004f962:	f80c 0004 	strb.w	r0, [ip, r4]
d004f966:	4291      	cmp	r1, r2
d004f968:	dcd9      	bgt.n	d004f91e <fillTriangleDitherBayer+0x78e>
d004f96a:	f8dd e014 	ldr.w	lr, [sp, #20]
d004f96e:	9d06      	ldr	r5, [sp, #24]
d004f970:	f8dd 801c 	ldr.w	r8, [sp, #28]
d004f974:	f1ba 0f00 	cmp.w	sl, #0
d004f978:	4488      	add	r8, r1
d004f97a:	ea4f 0341 	mov.w	r3, r1, lsl #1
d004f97e:	ea4f 1888 	mov.w	r8, r8, lsl #6
d004f982:	bfbc      	itt	lt
d004f984:	2302      	movlt	r3, #2
d004f986:	f44f 78a0 	movlt.w	r8, #320	; 0x140
d004f98a:	449e      	add	lr, r3
d004f98c:	44c4      	add	ip, r8
d004f98e:	ee07 1a90 	vmov	s15, r1
d004f992:	440d      	add	r5, r1
d004f994:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f998:	eea7 3aa1 	vfma.f32	s6, s15, s3
d004f99c:	eee7 2a8a 	vfma.f32	s5, s15, s20
d004f9a0:	9b00      	ldr	r3, [sp, #0]
d004f9a2:	42ab      	cmp	r3, r5
d004f9a4:	f6bf af75 	bge.w	d004f892 <fillTriangleDitherBayer+0x702>
d004f9a8:	e5b3      	b.n	d004f512 <fillTriangleDitherBayer+0x382>
d004f9aa:	ee07 1a90 	vmov	s15, r1
d004f9ae:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004f9b2:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d004f9b6:	440d      	add	r5, r1
d004f9b8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004f9bc:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d004f9c0:	eea7 3aa1 	vfma.f32	s6, s15, s3
d004f9c4:	eee7 2a8a 	vfma.f32	s5, s15, s20
d004f9c8:	e7ea      	b.n	d004f9a0 <fillTriangleDitherBayer+0x810>
d004f9ca:	bf00      	nop
d004f9cc:	d005b17c 	.word	0xd005b17c
d004f9d0:	d005b180 	.word	0xd005b180
d004f9d4:	d005b184 	.word	0xd005b184
d004f9d8:	33d6bf95 	.word	0x33d6bf95
d004f9dc:	00000000 	.word	0x00000000
d004f9e0:	477fff00 	.word	0x477fff00
d004f9e4:	d00f5670 	.word	0xd00f5670
d004f9e8:	d0058380 	.word	0xd0058380
d004f9ec:	d0058360 	.word	0xd0058360
d004f9f0:	38d1b717 	.word	0x38d1b717
d004f9f4:	9b01      	ldr	r3, [sp, #4]
d004f9f6:	b373      	cbz	r3, d004fa56 <fillTriangleDitherBayer+0x8c6>
d004f9f8:	f1ba 0f00 	cmp.w	sl, #0
d004f9fc:	dbc7      	blt.n	d004f98e <fillTriangleDitherBayer+0x7fe>
d004f9fe:	eef0 6a46 	vmov.f32	s13, s12
d004fa02:	ea4f 0881 	mov.w	r8, r1, lsl #2
d004fa06:	f1ae 0402 	sub.w	r4, lr, #2
d004fa0a:	2300      	movs	r3, #0
d004fa0c:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d004fa10:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004fa14:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004fa18:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004fa1c:	f834 6f02 	ldrh.w	r6, [r4, #2]!
d004fa20:	ee37 7a26 	vadd.f32	s14, s14, s13
d004fa24:	0190      	lsls	r0, r2, #6
d004fa26:	3301      	adds	r3, #1
d004fa28:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004fa2c:	ee17 2a90 	vmov	r2, s15
d004fa30:	b292      	uxth	r2, r2
d004fa32:	4296      	cmp	r6, r2
d004fa34:	d902      	bls.n	d004fa3c <fillTriangleDitherBayer+0x8ac>
d004fa36:	8022      	strh	r2, [r4, #0]
d004fa38:	f80c b000 	strb.w	fp, [ip, r0]
d004fa3c:	4299      	cmp	r1, r3
d004fa3e:	dce5      	bgt.n	d004fa0c <fillTriangleDitherBayer+0x87c>
d004fa40:	e798      	b.n	d004f974 <fillTriangleDitherBayer+0x7e4>
d004fa42:	9b01      	ldr	r3, [sp, #4]
d004fa44:	2b00      	cmp	r3, #0
d004fa46:	d1da      	bne.n	d004f9fe <fillTriangleDitherBayer+0x86e>
d004fa48:	eef0 6a46 	vmov.f32	s13, s12
d004fa4c:	f005 0303 	and.w	r3, r5, #3
d004fa50:	ea4f 0881 	mov.w	r8, r1, lsl #2
d004fa54:	e756      	b.n	d004f904 <fillTriangleDitherBayer+0x774>
d004fa56:	f1ba 0f00 	cmp.w	sl, #0
d004fa5a:	f005 0303 	and.w	r3, r5, #3
d004fa5e:	db96      	blt.n	d004f98e <fillTriangleDitherBayer+0x7fe>
d004fa60:	eef0 6a46 	vmov.f32	s13, s12
d004fa64:	ea4f 0881 	mov.w	r8, r1, lsl #2
d004fa68:	e74c      	b.n	d004f904 <fillTriangleDitherBayer+0x774>
d004fa6a:	ee77 7ac7 	vsub.f32	s15, s15, s14
d004fa6e:	ed1f 6a20 	vldr	s12, [pc, #-128]	; d004f9f0 <fillTriangleDitherBayer+0x860>
d004fa72:	eef4 7ac6 	vcmpe.f32	s15, s12
d004fa76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fa7a:	f340 8111 	ble.w	d004fca0 <fillTriangleDitherBayer+0xb10>
d004fa7e:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004fa82:	ee72 2ae4 	vsub.f32	s5, s5, s9
d004fa86:	ee31 1a43 	vsub.f32	s2, s2, s6
d004fa8a:	ee80 6aa7 	vdiv.f32	s12, s1, s15
d004fa8e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fa92:	ee37 7ac7 	vsub.f32	s14, s15, s14
d004fa96:	ee07 5a90 	vmov	s15, r5
d004fa9a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fa9e:	ee37 7a87 	vadd.f32	s14, s15, s14
d004faa2:	ee62 2a86 	vmul.f32	s5, s5, s12
d004faa6:	ee21 1a06 	vmul.f32	s2, s2, s12
d004faaa:	eee7 4a22 	vfma.f32	s9, s14, s5
d004faae:	eea7 3a01 	vfma.f32	s6, s14, s2
d004fab2:	9c02      	ldr	r4, [sp, #8]
d004fab4:	eb05 0c85 	add.w	ip, r5, r5, lsl #2
d004fab8:	4a7c      	ldr	r2, [pc, #496]	; (d004fcac <fillTriangleDitherBayer+0xb1c>)
d004faba:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004fabe:	9912      	ldr	r1, [sp, #72]	; 0x48
d004fac0:	ebc4 1304 	rsb	r3, r4, r4, lsl #4
d004fac4:	f004 0003 	and.w	r0, r4, #3
d004fac8:	f8cd e000 	str.w	lr, [sp]
d004facc:	eb01 1343 	add.w	r3, r1, r3, lsl #5
d004fad0:	6811      	ldr	r1, [r2, #0]
d004fad2:	eb04 128c 	add.w	r2, r4, ip, lsl #6
d004fad6:	442b      	add	r3, r5
d004fad8:	0080      	lsls	r0, r0, #2
d004fada:	eb01 0c02 	add.w	ip, r1, r2
d004fade:	9a11      	ldr	r2, [sp, #68]	; 0x44
d004fae0:	900b      	str	r0, [sp, #44]	; 0x2c
d004fae2:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d004fae6:	469e      	mov	lr, r3
d004fae8:	9b00      	ldr	r3, [sp, #0]
d004faea:	eef4 4aeb 	vcmpe.f32	s9, s23
d004faee:	eba3 0a05 	sub.w	sl, r3, r5
d004faf2:	f10a 0001 	add.w	r0, sl, #1
d004faf6:	2830      	cmp	r0, #48	; 0x30
d004faf8:	bfa8      	it	ge
d004fafa:	2030      	movge	r0, #48	; 0x30
d004fafc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb00:	d97d      	bls.n	d004fbfe <fillTriangleDitherBayer+0xa6e>
d004fb02:	f1ba 0f00 	cmp.w	sl, #0
d004fb06:	ee83 7a24 	vdiv.f32	s14, s6, s9
d004fb0a:	f340 8088 	ble.w	d004fc1e <fillTriangleDitherBayer+0xa8e>
d004fb0e:	1e43      	subs	r3, r0, #1
d004fb10:	ee07 3a90 	vmov	s15, r3
d004fb14:	eeb0 fa64 	vmov.f32	s30, s9
d004fb18:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fb1c:	eea7 faa2 	vfma.f32	s30, s15, s5
d004fb20:	eeb4 faeb 	vcmpe.f32	s30, s23
d004fb24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fb28:	f340 80a0 	ble.w	d004fc6c <fillTriangleDitherBayer+0xadc>
d004fb2c:	eef0 fa43 	vmov.f32	s31, s6
d004fb30:	4b5f      	ldr	r3, [pc, #380]	; (d004fcb0 <fillTriangleDitherBayer+0xb20>)
d004fb32:	ea4f 0880 	mov.w	r8, r0, lsl #2
d004fb36:	eb03 0380 	add.w	r3, r3, r0, lsl #2
d004fb3a:	eee7 fa81 	vfma.f32	s31, s15, s2
d004fb3e:	edd3 7a00 	vldr	s15, [r3]
d004fb42:	eecf 0a8f 	vdiv.f32	s1, s31, s30
d004fb46:	ee70 0ac7 	vsub.f32	s1, s1, s14
d004fb4a:	ee60 0aa7 	vmul.f32	s1, s1, s15
d004fb4e:	9b01      	ldr	r3, [sp, #4]
d004fb50:	2b00      	cmp	r3, #0
d004fb52:	d16d      	bne.n	d004fc30 <fillTriangleDitherBayer+0xaa0>
d004fb54:	f005 0203 	and.w	r2, r5, #3
d004fb58:	f1ae 0602 	sub.w	r6, lr, #2
d004fb5c:	f8cd e014 	str.w	lr, [sp, #20]
d004fb60:	9506      	str	r5, [sp, #24]
d004fb62:	2100      	movs	r1, #0
d004fb64:	f8cd 801c 	str.w	r8, [sp, #28]
d004fb68:	f8dd e00c 	ldr.w	lr, [sp, #12]
d004fb6c:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
d004fb6e:	f8dd 8010 	ldr.w	r8, [sp, #16]
d004fb72:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d004fb76:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d004fb7a:	ee77 7a86 	vadd.f32	s15, s15, s12
d004fb7e:	4b4d      	ldr	r3, [pc, #308]	; (d004fcb4 <fillTriangleDitherBayer+0xb24>)
d004fb80:	f836 7f02 	ldrh.w	r7, [r6, #2]!
d004fb84:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d004fb88:	eb03 0902 	add.w	r9, r3, r2
d004fb8c:	3201      	adds	r2, #1
d004fb8e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004fb92:	01a4      	lsls	r4, r4, #6
d004fb94:	ee37 7a20 	vadd.f32	s14, s14, s1
d004fb98:	f002 0203 	and.w	r2, r2, #3
d004fb9c:	3101      	adds	r1, #1
d004fb9e:	ee17 3a90 	vmov	r3, s15
d004fba2:	b29b      	uxth	r3, r3
d004fba4:	429f      	cmp	r7, r3
d004fba6:	d908      	bls.n	d004fbba <fillTriangleDitherBayer+0xa2a>
d004fba8:	8033      	strh	r3, [r6, #0]
d004fbaa:	f819 3005 	ldrb.w	r3, [r9, r5]
d004fbae:	4573      	cmp	r3, lr
d004fbb0:	bfac      	ite	ge
d004fbb2:	465b      	movge	r3, fp
d004fbb4:	4643      	movlt	r3, r8
d004fbb6:	f80c 3004 	strb.w	r3, [ip, r4]
d004fbba:	4288      	cmp	r0, r1
d004fbbc:	dcd9      	bgt.n	d004fb72 <fillTriangleDitherBayer+0x9e2>
d004fbbe:	f8dd e014 	ldr.w	lr, [sp, #20]
d004fbc2:	9d06      	ldr	r5, [sp, #24]
d004fbc4:	f8dd 801c 	ldr.w	r8, [sp, #28]
d004fbc8:	f1ba 0f00 	cmp.w	sl, #0
d004fbcc:	4480      	add	r8, r0
d004fbce:	ea4f 0340 	mov.w	r3, r0, lsl #1
d004fbd2:	ea4f 1888 	mov.w	r8, r8, lsl #6
d004fbd6:	bfbc      	itt	lt
d004fbd8:	2302      	movlt	r3, #2
d004fbda:	f44f 78a0 	movlt.w	r8, #320	; 0x140
d004fbde:	449e      	add	lr, r3
d004fbe0:	44c4      	add	ip, r8
d004fbe2:	ee07 0a90 	vmov	s15, r0
d004fbe6:	4405      	add	r5, r0
d004fbe8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fbec:	eee7 4aa2 	vfma.f32	s9, s15, s5
d004fbf0:	eea7 3a81 	vfma.f32	s6, s15, s2
d004fbf4:	9b00      	ldr	r3, [sp, #0]
d004fbf6:	429d      	cmp	r5, r3
d004fbf8:	f77f af76 	ble.w	d004fae8 <fillTriangleDitherBayer+0x958>
d004fbfc:	e5b5      	b.n	d004f76a <fillTriangleDitherBayer+0x5da>
d004fbfe:	ee07 0a90 	vmov	s15, r0
d004fc02:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004fc06:	eb0e 0e40 	add.w	lr, lr, r0, lsl #1
d004fc0a:	4405      	add	r5, r0
d004fc0c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fc10:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d004fc14:	eee7 4aa2 	vfma.f32	s9, s15, s5
d004fc18:	eea7 3a81 	vfma.f32	s6, s15, s2
d004fc1c:	e7ea      	b.n	d004fbf4 <fillTriangleDitherBayer+0xa64>
d004fc1e:	9b01      	ldr	r3, [sp, #4]
d004fc20:	b34b      	cbz	r3, d004fc76 <fillTriangleDitherBayer+0xae6>
d004fc22:	f1ba 0f00 	cmp.w	sl, #0
d004fc26:	d1dc      	bne.n	d004fbe2 <fillTriangleDitherBayer+0xa52>
d004fc28:	eef0 0a66 	vmov.f32	s1, s13
d004fc2c:	ea4f 0880 	mov.w	r8, r0, lsl #2
d004fc30:	f1ae 0402 	sub.w	r4, lr, #2
d004fc34:	2200      	movs	r2, #0
d004fc36:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d004fc3a:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d004fc3e:	ee77 7a86 	vadd.f32	s15, s15, s12
d004fc42:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004fc46:	f834 6f02 	ldrh.w	r6, [r4, #2]!
d004fc4a:	ee37 7a20 	vadd.f32	s14, s14, s1
d004fc4e:	0199      	lsls	r1, r3, #6
d004fc50:	3201      	adds	r2, #1
d004fc52:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004fc56:	ee17 3a90 	vmov	r3, s15
d004fc5a:	b29b      	uxth	r3, r3
d004fc5c:	429e      	cmp	r6, r3
d004fc5e:	d902      	bls.n	d004fc66 <fillTriangleDitherBayer+0xad6>
d004fc60:	8023      	strh	r3, [r4, #0]
d004fc62:	f80c b001 	strb.w	fp, [ip, r1]
d004fc66:	4290      	cmp	r0, r2
d004fc68:	dce5      	bgt.n	d004fc36 <fillTriangleDitherBayer+0xaa6>
d004fc6a:	e7ad      	b.n	d004fbc8 <fillTriangleDitherBayer+0xa38>
d004fc6c:	eef0 0a66 	vmov.f32	s1, s13
d004fc70:	ea4f 0880 	mov.w	r8, r0, lsl #2
d004fc74:	e76b      	b.n	d004fb4e <fillTriangleDitherBayer+0x9be>
d004fc76:	f1ba 0f00 	cmp.w	sl, #0
d004fc7a:	f005 0203 	and.w	r2, r5, #3
d004fc7e:	dbb0      	blt.n	d004fbe2 <fillTriangleDitherBayer+0xa52>
d004fc80:	eef0 0a66 	vmov.f32	s1, s13
d004fc84:	ea4f 0880 	mov.w	r8, r0, lsl #2
d004fc88:	e766      	b.n	d004fb58 <fillTriangleDitherBayer+0x9c8>
d004fc8a:	f04f 0b10 	mov.w	fp, #16
d004fc8e:	2310      	movs	r3, #16
d004fc90:	9304      	str	r3, [sp, #16]
d004fc92:	f7ff bae3 	b.w	d004f25c <fillTriangleDitherBayer+0xcc>
d004fc96:	eeb0 aa46 	vmov.f32	s20, s12
d004fc9a:	eef0 1a46 	vmov.f32	s3, s12
d004fc9e:	e5dd      	b.n	d004f85c <fillTriangleDitherBayer+0x6cc>
d004fca0:	eeb0 1a66 	vmov.f32	s2, s13
d004fca4:	eef0 2a66 	vmov.f32	s5, s13
d004fca8:	e703      	b.n	d004fab2 <fillTriangleDitherBayer+0x922>
d004fcaa:	bf00      	nop
d004fcac:	d00f5670 	.word	0xd00f5670
d004fcb0:	d0058380 	.word	0xd0058380
d004fcb4:	d0058360 	.word	0xd0058360

d004fcb8 <fillTriangleDitherBayerT>:
d004fcb8:	ed9f 7acc 	vldr	s14, [pc, #816]	; d004ffec <fillTriangleDitherBayerT+0x334>
d004fcbc:	eef4 0ac7 	vcmpe.f32	s1, s14
d004fcc0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004fcc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fcc8:	eeb4 1ac7 	vcmpe.f32	s2, s14
d004fccc:	ed2d 8b10 	vpush	{d8-d15}
d004fcd0:	b099      	sub	sp, #100	; 0x64
d004fcd2:	9205      	str	r2, [sp, #20]
d004fcd4:	bf94      	ite	ls
d004fcd6:	2201      	movls	r2, #1
d004fcd8:	2200      	movhi	r2, #0
d004fcda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fcde:	9002      	str	r0, [sp, #8]
d004fce0:	9104      	str	r1, [sp, #16]
d004fce2:	bf98      	it	ls
d004fce4:	f042 0201 	orrls.w	r2, r2, #1
d004fce8:	9306      	str	r3, [sp, #24]
d004fcea:	f8bd 40d0 	ldrh.w	r4, [sp, #208]	; 0xd0
d004fcee:	f8bd 00d4 	ldrh.w	r0, [sp, #212]	; 0xd4
d004fcf2:	f8bd 10d8 	ldrh.w	r1, [sp, #216]	; 0xd8
d004fcf6:	f89d 30dc 	ldrb.w	r3, [sp, #220]	; 0xdc
d004fcfa:	f89d 50e0 	ldrb.w	r5, [sp, #224]	; 0xe0
d004fcfe:	ed8d 0a01 	vstr	s0, [sp, #4]
d004fd02:	2a00      	cmp	r2, #0
d004fd04:	f040 81d9 	bne.w	d00500ba <fillTriangleDitherBayerT+0x402>
d004fd08:	eeb4 0a47 	vcmp.f32	s0, s14
d004fd0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fd10:	f240 81d3 	bls.w	d00500ba <fillTriangleDitherBayerT+0x402>
d004fd14:	eef0 7a60 	vmov.f32	s15, s1
d004fd18:	eddf 5ab5 	vldr	s11, [pc, #724]	; d004fff0 <fillTriangleDitherBayerT+0x338>
d004fd1c:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004fd20:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d004fd24:	fec1 1aa5 	vmaxnm.f32	s3, s3, s11
d004fd28:	ee05 4a90 	vmov	s11, r4
d004fd2c:	eec6 0a00 	vdiv.f32	s1, s12, s0
d004fd30:	fe81 7ac7 	vminnm.f32	s14, s3, s14
d004fd34:	ee86 0a27 	vdiv.f32	s0, s12, s15
d004fd38:	ee86 3a01 	vdiv.f32	s6, s12, s2
d004fd3c:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d004fd40:	eeb8 5a65 	vcvt.f32.u32	s10, s11
d004fd44:	ee17 2a90 	vmov	r2, s15
d004fd48:	ee07 0a90 	vmov	s15, r0
d004fd4c:	ee25 5a20 	vmul.f32	s10, s10, s1
d004fd50:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d004fd54:	ee07 1a90 	vmov	s15, r1
d004fd58:	1c51      	adds	r1, r2, #1
d004fd5a:	eef8 6a67 	vcvt.f32.u32	s13, s15
d004fd5e:	2905      	cmp	r1, #5
d004fd60:	ee24 4a00 	vmul.f32	s8, s8, s0
d004fd64:	bfa8      	it	ge
d004fd66:	2105      	movge	r1, #5
d004fd68:	2a04      	cmp	r2, #4
d004fd6a:	ee66 6a83 	vmul.f32	s13, s13, s6
d004fd6e:	f300 853a 	bgt.w	d00507e6 <fillTriangleDitherBayerT+0xb2e>
d004fd72:	f003 030f 	and.w	r3, r3, #15
d004fd76:	2a03      	cmp	r2, #3
d004fd78:	f103 0320 	add.w	r3, r3, #32
d004fd7c:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004fd80:	b2c0      	uxtb	r0, r0
d004fd82:	9001      	str	r0, [sp, #4]
d004fd84:	f300 8531 	bgt.w	d00507ea <fillTriangleDitherBayerT+0xb32>
d004fd88:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004fd8c:	b2db      	uxtb	r3, r3
d004fd8e:	9303      	str	r3, [sp, #12]
d004fd90:	eddd 7a04 	vldr	s15, [sp, #16]
d004fd94:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d004fd98:	eddd 7a06 	vldr	s15, [sp, #24]
d004fd9c:	eef8 1ae7 	vcvt.f32.s32	s3, s15
d004fda0:	eddd 7a02 	vldr	s15, [sp, #8]
d004fda4:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d004fda8:	eddd 7a05 	vldr	s15, [sp, #20]
d004fdac:	eef4 3ae1 	vcmpe.f32	s7, s3
d004fdb0:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d004fdb4:	eddd 7a32 	vldr	s15, [sp, #200]	; 0xc8
d004fdb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fdbc:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d004fdc0:	eddd 7a33 	vldr	s15, [sp, #204]	; 0xcc
d004fdc4:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d004fdc8:	f300 817c 	bgt.w	d00500c4 <fillTriangleDitherBayerT+0x40c>
d004fdcc:	eef4 3ae2 	vcmpe.f32	s7, s5
d004fdd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fdd4:	f300 82ac 	bgt.w	d0050330 <fillTriangleDitherBayerT+0x678>
d004fdd8:	eef4 2ae1 	vcmpe.f32	s5, s3
d004fddc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fde0:	d517      	bpl.n	d004fe12 <fillTriangleDitherBayerT+0x15a>
d004fde2:	eeb0 8a44 	vmov.f32	s16, s8
d004fde6:	eeb0 1a40 	vmov.f32	s2, s0
d004fdea:	eef0 5a61 	vmov.f32	s11, s3
d004fdee:	eef0 7a42 	vmov.f32	s15, s4
d004fdf2:	eeb0 4a66 	vmov.f32	s8, s13
d004fdf6:	eeb0 0a43 	vmov.f32	s0, s6
d004fdfa:	eef0 1a62 	vmov.f32	s3, s5
d004fdfe:	eeb0 2a46 	vmov.f32	s4, s12
d004fe02:	eef0 6a48 	vmov.f32	s13, s16
d004fe06:	eeb0 3a41 	vmov.f32	s6, s2
d004fe0a:	eef0 2a65 	vmov.f32	s5, s11
d004fe0e:	eeb0 6a67 	vmov.f32	s12, s15
d004fe12:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004fe16:	ee73 5aa7 	vadd.f32	s11, s7, s15
d004fe1a:	ee72 7aa7 	vadd.f32	s15, s5, s15
d004fe1e:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004fe22:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004fe26:	ee15 3a90 	vmov	r3, s11
d004fe2a:	ee17 1a90 	vmov	r1, s15
d004fe2e:	428b      	cmp	r3, r1
d004fe30:	f000 8143 	beq.w	d00500ba <fillTriangleDitherBayerT+0x402>
d004fe34:	ee72 7ae3 	vsub.f32	s15, s5, s7
d004fe38:	eddf 5a6c 	vldr	s11, [pc, #432]	; d004ffec <fillTriangleDitherBayerT+0x334>
d004fe3c:	eef4 7ae5 	vcmpe.f32	s15, s11
d004fe40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fe44:	f240 8139 	bls.w	d00500ba <fillTriangleDitherBayerT+0x402>
d004fe48:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d004fe4c:	ee31 8ae3 	vsub.f32	s16, s3, s7
d004fe50:	ee76 8a64 	vsub.f32	s17, s12, s9
d004fe54:	ee8a 1a27 	vdiv.f32	s2, s20, s15
d004fe58:	eeb4 8ae5 	vcmpe.f32	s16, s11
d004fe5c:	ee33 9a60 	vsub.f32	s18, s6, s1
d004fe60:	ee76 9ac5 	vsub.f32	s19, s13, s10
d004fe64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fe68:	ee68 8a81 	vmul.f32	s17, s17, s2
d004fe6c:	ee29 9a01 	vmul.f32	s18, s18, s2
d004fe70:	ee69 9a81 	vmul.f32	s19, s19, s2
d004fe74:	f300 8145 	bgt.w	d0050102 <fillTriangleDitherBayerT+0x44a>
d004fe78:	ee07 2a90 	vmov	s15, r2
d004fe7c:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d004fe80:	ee32 1ae1 	vsub.f32	s2, s5, s3
d004fe84:	9901      	ldr	r1, [sp, #4]
d004fe86:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004fe8a:	122b      	asrs	r3, r5, #8
d004fe8c:	930d      	str	r3, [sp, #52]	; 0x34
d004fe8e:	eeb4 1ae5 	vcmpe.f32	s2, s11
d004fe92:	ee37 7a67 	vsub.f32	s14, s14, s15
d004fe96:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004fe9a:	eef0 7a47 	vmov.f32	s15, s14
d004fe9e:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d004fea2:	ee17 3a90 	vmov	r3, s15
d004fea6:	f383 0204 	usat	r2, #4, r3
d004feaa:	9204      	str	r2, [sp, #16]
d004feac:	9a03      	ldr	r2, [sp, #12]
d004feae:	428a      	cmp	r2, r1
d004feb0:	bf18      	it	ne
d004feb2:	2b00      	cmpne	r3, #0
d004feb4:	bfd4      	ite	le
d004feb6:	2301      	movle	r3, #1
d004feb8:	2300      	movgt	r3, #0
d004feba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004febe:	9305      	str	r3, [sp, #20]
d004fec0:	f340 80fb 	ble.w	d00500ba <fillTriangleDitherBayerT+0x402>
d004fec4:	ed9f ea4a 	vldr	s28, [pc, #296]	; d004fff0 <fillTriangleDitherBayerT+0x338>
d004fec8:	eeb0 aa4e 	vmov.f32	s20, s28
d004fecc:	eeb0 ca4e 	vmov.f32	s24, s28
d004fed0:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004fed4:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d004fed8:	ee36 6a42 	vsub.f32	s12, s12, s4
d004fedc:	ed9f 7a43 	vldr	s14, [pc, #268]	; d004ffec <fillTriangleDitherBayerT+0x334>
d004fee0:	ee33 3a40 	vsub.f32	s6, s6, s0
d004fee4:	eec5 7aa7 	vdiv.f32	s15, s11, s15
d004fee8:	eeb4 8ac7 	vcmpe.f32	s16, s14
d004feec:	ee76 6ac4 	vsub.f32	s13, s13, s8
d004fef0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004fef4:	ee26 6a27 	vmul.f32	s12, s12, s15
d004fef8:	ee66 faa7 	vmul.f32	s31, s13, s15
d004fefc:	ed8d 6a12 	vstr	s12, [sp, #72]	; 0x48
d004ff00:	ee23 6a27 	vmul.f32	s12, s6, s15
d004ff04:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d004ff08:	f300 8139 	bgt.w	d005017e <fillTriangleDitherBayerT+0x4c6>
d004ff0c:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d004ff10:	4a31      	ldr	r2, [pc, #196]	; (d004ffd8 <fillTriangleDitherBayerT+0x320>)
d004ff12:	4b32      	ldr	r3, [pc, #200]	; (d004ffdc <fillTriangleDitherBayerT+0x324>)
d004ff14:	6812      	ldr	r2, [r2, #0]
d004ff16:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d004ff1a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ff1e:	681b      	ldr	r3, [r3, #0]
d004ff20:	920e      	str	r2, [sp, #56]	; 0x38
d004ff22:	edcd 7a10 	vstr	s15, [sp, #64]	; 0x40
d004ff26:	930f      	str	r3, [sp, #60]	; 0x3c
d004ff28:	eddd 7a10 	vldr	s15, [sp, #64]	; 0x40
d004ff2c:	eef4 1ae7 	vcmpe.f32	s3, s15
d004ff30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ff34:	dd02      	ble.n	d004ff3c <fillTriangleDitherBayerT+0x284>
d004ff36:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004ff38:	3301      	adds	r3, #1
d004ff3a:	930c      	str	r3, [sp, #48]	; 0x30
d004ff3c:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004ff40:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004ff44:	eef4 2ac7 	vcmpe.f32	s5, s14
d004ff48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004ff4c:	dc04      	bgt.n	d004ff58 <fillTriangleDitherBayerT+0x2a0>
d004ff4e:	ee17 3a90 	vmov	r3, s15
d004ff52:	3b01      	subs	r3, #1
d004ff54:	ee07 3a90 	vmov	s15, r3
d004ff58:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004ff5a:	ee17 2a90 	vmov	r2, s15
d004ff5e:	980e      	ldr	r0, [sp, #56]	; 0x38
d004ff60:	4293      	cmp	r3, r2
d004ff62:	bfa8      	it	ge
d004ff64:	4613      	movge	r3, r2
d004ff66:	461a      	mov	r2, r3
d004ff68:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d004ff6a:	4283      	cmp	r3, r0
d004ff6c:	bfb8      	it	lt
d004ff6e:	4603      	movlt	r3, r0
d004ff70:	4293      	cmp	r3, r2
d004ff72:	9306      	str	r3, [sp, #24]
d004ff74:	f300 80a1 	bgt.w	d00500ba <fillTriangleDitherBayerT+0x402>
d004ff78:	ee07 3a90 	vmov	s15, r3
d004ff7c:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004ff80:	eba0 1300 	sub.w	r3, r0, r0, lsl #4
d004ff84:	4916      	ldr	r1, [pc, #88]	; (d004ffe0 <fillTriangleDitherBayerT+0x328>)
d004ff86:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004ff8a:	ed9d ba12 	vldr	s22, [sp, #72]	; 0x48
d004ff8e:	015b      	lsls	r3, r3, #5
d004ff90:	eddd aa11 	vldr	s21, [sp, #68]	; 0x44
d004ff94:	ed9f 1a15 	vldr	s2, [pc, #84]	; d004ffec <fillTriangleDitherBayerT+0x334>
d004ff98:	ee77 7a87 	vadd.f32	s15, s15, s14
d004ff9c:	930c      	str	r3, [sp, #48]	; 0x30
d004ff9e:	1c53      	adds	r3, r2, #1
d004ffa0:	ed9f 8a10 	vldr	s16, [pc, #64]	; d004ffe4 <fillTriangleDitherBayerT+0x32c>
d004ffa4:	ed9f 6a12 	vldr	s12, [pc, #72]	; d004fff0 <fillTriangleDitherBayerT+0x338>
d004ffa8:	ee77 3ae3 	vsub.f32	s7, s15, s7
d004ffac:	930a      	str	r3, [sp, #40]	; 0x28
d004ffae:	ee77 1ae1 	vsub.f32	s3, s15, s3
d004ffb2:	680b      	ldr	r3, [r1, #0]
d004ffb4:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
d004ffb8:	eee8 4aa3 	vfma.f32	s9, s17, s7
d004ffbc:	930b      	str	r3, [sp, #44]	; 0x2c
d004ffbe:	eee9 0a23 	vfma.f32	s1, s18, s7
d004ffc2:	eea9 5aa3 	vfma.f32	s10, s19, s7
d004ffc6:	eddf 3a08 	vldr	s7, [pc, #32]	; d004ffe8 <fillTriangleDitherBayerT+0x330>
d004ffca:	eeab 2a21 	vfma.f32	s4, s22, s3
d004ffce:	eeaa 0aa1 	vfma.f32	s0, s21, s3
d004ffd2:	eea1 4aaf 	vfma.f32	s8, s3, s31
d004ffd6:	e04e      	b.n	d0050076 <fillTriangleDitherBayerT+0x3be>
d004ffd8:	d005b17c 	.word	0xd005b17c
d004ffdc:	d005b180 	.word	0xd005b180
d004ffe0:	d005b184 	.word	0xd005b184
d004ffe4:	33d6bf95 	.word	0x33d6bf95
d004ffe8:	477fff00 	.word	0x477fff00
d004ffec:	38d1b717 	.word	0x38d1b717
d004fff0:	00000000 	.word	0x00000000
d004fff4:	eeb0 aa45 	vmov.f32	s20, s10
d004fff8:	eef0 1a60 	vmov.f32	s3, s1
d004fffc:	eef0 7a64 	vmov.f32	s15, s9
d0050000:	eef0 2a44 	vmov.f32	s5, s8
d0050004:	eeb0 3a40 	vmov.f32	s6, s0
d0050008:	eeb0 7a42 	vmov.f32	s14, s4
d005000c:	eefd 6ac7 	vcvt.s32.f32	s13, s14
d0050010:	f240 13df 	movw	r3, #479	; 0x1df
d0050014:	ee16 0a90 	vmov	r0, s13
d0050018:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d005001c:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050020:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d0050024:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050028:	ee16 5a90 	vmov	r5, s13
d005002c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0050030:	bfc8      	it	gt
d0050032:	3001      	addgt	r0, #1
d0050034:	eef4 7ae6 	vcmpe.f32	s15, s13
d0050038:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d005003c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050040:	bfd8      	it	le
d0050042:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d0050046:	429d      	cmp	r5, r3
d0050048:	bfa8      	it	ge
d005004a:	461d      	movge	r5, r3
d005004c:	42a8      	cmp	r0, r5
d005004e:	f340 8188 	ble.w	d0050362 <fillTriangleDitherBayerT+0x6aa>
d0050052:	9b06      	ldr	r3, [sp, #24]
d0050054:	ee74 4aa8 	vadd.f32	s9, s9, s17
d0050058:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d005005a:	ee70 0a89 	vadd.f32	s1, s1, s18
d005005e:	3301      	adds	r3, #1
d0050060:	ee35 5a29 	vadd.f32	s10, s10, s19
d0050064:	ee32 2a0b 	vadd.f32	s4, s4, s22
d0050068:	4293      	cmp	r3, r2
d005006a:	ee30 0a2a 	vadd.f32	s0, s0, s21
d005006e:	ee34 4a2f 	vadd.f32	s8, s8, s31
d0050072:	9306      	str	r3, [sp, #24]
d0050074:	d021      	beq.n	d00500ba <fillTriangleDitherBayerT+0x402>
d0050076:	eef4 4ac2 	vcmpe.f32	s9, s4
d005007a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005007e:	dcb9      	bgt.n	d004fff4 <fillTriangleDitherBayerT+0x33c>
d0050080:	eeb0 aa44 	vmov.f32	s20, s8
d0050084:	eef0 1a40 	vmov.f32	s3, s0
d0050088:	eef0 7a42 	vmov.f32	s15, s4
d005008c:	eef0 2a45 	vmov.f32	s5, s10
d0050090:	eeb0 3a60 	vmov.f32	s6, s1
d0050094:	eeb0 7a64 	vmov.f32	s14, s9
d0050098:	e7b8      	b.n	d005000c <fillTriangleDitherBayerT+0x354>
d005009a:	eddd 2a15 	vldr	s5, [sp, #84]	; 0x54
d005009e:	ed9d 5a16 	vldr	s10, [sp, #88]	; 0x58
d00500a2:	eddd 0a17 	vldr	s1, [sp, #92]	; 0x5c
d00500a6:	ed5f 7a2f 	vldr	s15, [pc, #-188]	; d004ffec <fillTriangleDitherBayerT+0x334>
d00500aa:	ed9d 7a0b 	vldr	s14, [sp, #44]	; 0x2c
d00500ae:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00500b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00500b6:	f73f af37 	bgt.w	d004ff28 <fillTriangleDitherBayerT+0x270>
d00500ba:	b019      	add	sp, #100	; 0x64
d00500bc:	ecbd 8b10 	vpop	{d8-d15}
d00500c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00500c4:	eef4 1ae2 	vcmpe.f32	s3, s5
d00500c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00500cc:	f340 8117 	ble.w	d00502fe <fillTriangleDitherBayerT+0x646>
d00500d0:	eeb0 8a66 	vmov.f32	s16, s13
d00500d4:	eeb0 1a43 	vmov.f32	s2, s6
d00500d8:	eef0 5a62 	vmov.f32	s11, s5
d00500dc:	eef0 7a46 	vmov.f32	s15, s12
d00500e0:	eef0 6a45 	vmov.f32	s13, s10
d00500e4:	eeb0 3a60 	vmov.f32	s6, s1
d00500e8:	eef0 2a63 	vmov.f32	s5, s7
d00500ec:	eeb0 6a64 	vmov.f32	s12, s9
d00500f0:	eeb0 5a48 	vmov.f32	s10, s16
d00500f4:	eef0 0a41 	vmov.f32	s1, s2
d00500f8:	eef0 3a65 	vmov.f32	s7, s11
d00500fc:	eef0 4a67 	vmov.f32	s9, s15
d0050100:	e687      	b.n	d004fe12 <fillTriangleDitherBayerT+0x15a>
d0050102:	ee07 2a90 	vmov	s15, r2
d0050106:	ee8a 1a08 	vdiv.f32	s2, s20, s16
d005010a:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d005010e:	9901      	ldr	r1, [sp, #4]
d0050110:	122b      	asrs	r3, r5, #8
d0050112:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050116:	930d      	str	r3, [sp, #52]	; 0x34
d0050118:	ee72 aa64 	vsub.f32	s21, s4, s9
d005011c:	ee30 aa60 	vsub.f32	s20, s0, s1
d0050120:	ee37 7a67 	vsub.f32	s14, s14, s15
d0050124:	ee34 ea45 	vsub.f32	s28, s8, s10
d0050128:	eef0 7a47 	vmov.f32	s15, s14
d005012c:	ee32 7ae1 	vsub.f32	s14, s5, s3
d0050130:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0050134:	eeb4 7ae5 	vcmpe.f32	s14, s11
d0050138:	ed8d 7a0b 	vstr	s14, [sp, #44]	; 0x2c
d005013c:	ee2e ea01 	vmul.f32	s28, s28, s2
d0050140:	ee17 3a90 	vmov	r3, s15
d0050144:	ee6a 7a81 	vmul.f32	s15, s21, s2
d0050148:	f383 0204 	usat	r2, #4, r3
d005014c:	eeb0 ca67 	vmov.f32	s24, s15
d0050150:	9204      	str	r2, [sp, #16]
d0050152:	ee6a 7a01 	vmul.f32	s15, s20, s2
d0050156:	9a03      	ldr	r2, [sp, #12]
d0050158:	428a      	cmp	r2, r1
d005015a:	bf18      	it	ne
d005015c:	2b00      	cmpne	r3, #0
d005015e:	eeb0 aa67 	vmov.f32	s20, s15
d0050162:	bfd4      	ite	le
d0050164:	2301      	movle	r3, #1
d0050166:	2300      	movgt	r3, #0
d0050168:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005016c:	9305      	str	r3, [sp, #20]
d005016e:	f73f aeaf 	bgt.w	d004fed0 <fillTriangleDitherBayerT+0x218>
d0050172:	ed5f fa61 	vldr	s31, [pc, #-388]	; d004fff0 <fillTriangleDitherBayerT+0x338>
d0050176:	edcd fa11 	vstr	s31, [sp, #68]	; 0x44
d005017a:	edcd fa12 	vstr	s31, [sp, #72]	; 0x48
d005017e:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0050182:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0050186:	eeb4 7ae3 	vcmpe.f32	s14, s7
d005018a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005018e:	d504      	bpl.n	d005019a <fillTriangleDitherBayerT+0x4e2>
d0050190:	ee17 3a90 	vmov	r3, s15
d0050194:	3301      	adds	r3, #1
d0050196:	ee07 3a90 	vmov	s15, r3
d005019a:	eebd 7ae1 	vcvt.s32.f32	s14, s3
d005019e:	49dd      	ldr	r1, [pc, #884]	; (d0050514 <fillTriangleDitherBayerT+0x85c>)
d00501a0:	ee17 0a90 	vmov	r0, s15
d00501a4:	4adc      	ldr	r2, [pc, #880]	; (d0050518 <fillTriangleDitherBayerT+0x860>)
d00501a6:	6809      	ldr	r1, [r1, #0]
d00501a8:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d00501ac:	ee17 3a10 	vmov	r3, s14
d00501b0:	6812      	ldr	r2, [r2, #0]
d00501b2:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d00501b6:	eef4 1ae6 	vcmpe.f32	s3, s13
d00501ba:	edcd 6a10 	vstr	s13, [sp, #64]	; 0x40
d00501be:	910e      	str	r1, [sp, #56]	; 0x38
d00501c0:	920f      	str	r2, [sp, #60]	; 0x3c
d00501c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00501c6:	bfd8      	it	le
d00501c8:	f103 33ff 	addle.w	r3, r3, #4294967295	; 0xffffffff
d00501cc:	4288      	cmp	r0, r1
d00501ce:	bfb8      	it	lt
d00501d0:	4608      	movlt	r0, r1
d00501d2:	4293      	cmp	r3, r2
d00501d4:	bfa8      	it	ge
d00501d6:	4613      	movge	r3, r2
d00501d8:	9002      	str	r0, [sp, #8]
d00501da:	4283      	cmp	r3, r0
d00501dc:	f6ff af63 	blt.w	d00500a6 <fillTriangleDitherBayerT+0x3ee>
d00501e0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00501e4:	3301      	adds	r3, #1
d00501e6:	eef0 aa64 	vmov.f32	s21, s9
d00501ea:	49cc      	ldr	r1, [pc, #816]	; (d005051c <fillTriangleDitherBayerT+0x864>)
d00501ec:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d00501ee:	eeb0 ba64 	vmov.f32	s22, s9
d00501f2:	ee37 7ae3 	vsub.f32	s14, s15, s7
d00501f6:	eddd 7a02 	vldr	s15, [sp, #8]
d00501fa:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d00501fe:	930a      	str	r3, [sp, #40]	; 0x28
d0050200:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050204:	680b      	ldr	r3, [r1, #0]
d0050206:	eef0 da60 	vmov.f32	s27, s1
d005020a:	eddf bac5 	vldr	s23, [pc, #788]	; d0050520 <fillTriangleDitherBayerT+0x868>
d005020e:	eeb0 da45 	vmov.f32	s26, s10
d0050212:	9313      	str	r3, [sp, #76]	; 0x4c
d0050214:	ee77 7a87 	vadd.f32	s15, s15, s14
d0050218:	0153      	lsls	r3, r2, #5
d005021a:	eeb0 8a4c 	vmov.f32	s16, s24
d005021e:	eddf 6ac1 	vldr	s13, [pc, #772]	; d0050524 <fillTriangleDitherBayerT+0x86c>
d0050222:	eef0 ca60 	vmov.f32	s25, s1
d0050226:	eddf 5ac0 	vldr	s11, [pc, #768]	; d0050528 <fillTriangleDitherBayerT+0x870>
d005022a:	eee7 aa8c 	vfma.f32	s21, s15, s24
d005022e:	9314      	str	r3, [sp, #80]	; 0x50
d0050230:	eeb0 ca45 	vmov.f32	s24, s10
d0050234:	edcd 2a15 	vstr	s5, [sp, #84]	; 0x54
d0050238:	eea8 baa7 	vfma.f32	s22, s17, s15
d005023c:	ed8d 5a16 	vstr	s10, [sp, #88]	; 0x58
d0050240:	eee9 da27 	vfma.f32	s27, s18, s15
d0050244:	edcd 0a17 	vstr	s1, [sp, #92]	; 0x5c
d0050248:	eea9 daa7 	vfma.f32	s26, s19, s15
d005024c:	eee7 ca8a 	vfma.f32	s25, s15, s20
d0050250:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0050254:	e041      	b.n	d00502da <fillTriangleDitherBayerT+0x622>
d0050256:	eeb0 1a4d 	vmov.f32	s2, s26
d005025a:	eef0 2a6d 	vmov.f32	s5, s27
d005025e:	eef0 7a4b 	vmov.f32	s15, s22
d0050262:	eeb0 3a4c 	vmov.f32	s6, s24
d0050266:	eeb0 5a6c 	vmov.f32	s10, s25
d005026a:	eeb0 7a6a 	vmov.f32	s14, s21
d005026e:	eebd 6ac7 	vcvt.s32.f32	s12, s14
d0050272:	f240 13df 	movw	r3, #479	; 0x1df
d0050276:	ee16 0a10 	vmov	r0, s12
d005027a:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d005027e:	eeb4 7ac6 	vcmpe.f32	s14, s12
d0050282:	eebd 6ae7 	vcvt.s32.f32	s12, s15
d0050286:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005028a:	ee16 5a10 	vmov	r5, s12
d005028e:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d0050292:	bfc8      	it	gt
d0050294:	3001      	addgt	r0, #1
d0050296:	eef4 7ac6 	vcmpe.f32	s15, s12
d005029a:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d005029e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502a2:	bfd8      	it	le
d00502a4:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
d00502a8:	429d      	cmp	r5, r3
d00502aa:	bfa8      	it	ge
d00502ac:	461d      	movge	r5, r3
d00502ae:	4285      	cmp	r5, r0
d00502b0:	f280 817f 	bge.w	d00505b2 <fillTriangleDitherBayerT+0x8fa>
d00502b4:	9b02      	ldr	r3, [sp, #8]
d00502b6:	ee3b ba28 	vadd.f32	s22, s22, s17
d00502ba:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d00502bc:	ee7d da89 	vadd.f32	s27, s27, s18
d00502c0:	3301      	adds	r3, #1
d00502c2:	ee3d da29 	vadd.f32	s26, s26, s19
d00502c6:	ee7a aa88 	vadd.f32	s21, s21, s16
d00502ca:	4293      	cmp	r3, r2
d00502cc:	ee7c ca8a 	vadd.f32	s25, s25, s20
d00502d0:	ee3c ca0e 	vadd.f32	s24, s24, s28
d00502d4:	9302      	str	r3, [sp, #8]
d00502d6:	f43f aee0 	beq.w	d005009a <fillTriangleDitherBayerT+0x3e2>
d00502da:	eeb4 baea 	vcmpe.f32	s22, s21
d00502de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502e2:	dcb8      	bgt.n	d0050256 <fillTriangleDitherBayerT+0x59e>
d00502e4:	eeb0 1a4c 	vmov.f32	s2, s24
d00502e8:	eef0 2a6c 	vmov.f32	s5, s25
d00502ec:	eef0 7a6a 	vmov.f32	s15, s21
d00502f0:	eeb0 3a4d 	vmov.f32	s6, s26
d00502f4:	eeb0 5a6d 	vmov.f32	s10, s27
d00502f8:	eeb0 7a4b 	vmov.f32	s14, s22
d00502fc:	e7b7      	b.n	d005026e <fillTriangleDitherBayerT+0x5b6>
d00502fe:	eeb0 8a45 	vmov.f32	s16, s10
d0050302:	eeb0 1a60 	vmov.f32	s2, s1
d0050306:	eef0 5a63 	vmov.f32	s11, s7
d005030a:	eef0 7a64 	vmov.f32	s15, s9
d005030e:	eeb0 5a44 	vmov.f32	s10, s8
d0050312:	eef0 0a40 	vmov.f32	s1, s0
d0050316:	eef0 3a61 	vmov.f32	s7, s3
d005031a:	eef0 4a42 	vmov.f32	s9, s4
d005031e:	eeb0 4a48 	vmov.f32	s8, s16
d0050322:	eeb0 0a41 	vmov.f32	s0, s2
d0050326:	eef0 1a65 	vmov.f32	s3, s11
d005032a:	eeb0 2a67 	vmov.f32	s4, s15
d005032e:	e553      	b.n	d004fdd8 <fillTriangleDitherBayerT+0x120>
d0050330:	eeb0 8a45 	vmov.f32	s16, s10
d0050334:	eeb0 1a60 	vmov.f32	s2, s1
d0050338:	eef0 5a63 	vmov.f32	s11, s7
d005033c:	eef0 7a64 	vmov.f32	s15, s9
d0050340:	eeb0 5a66 	vmov.f32	s10, s13
d0050344:	eef0 0a43 	vmov.f32	s1, s6
d0050348:	eef0 3a62 	vmov.f32	s7, s5
d005034c:	eef0 4a46 	vmov.f32	s9, s12
d0050350:	eef0 6a48 	vmov.f32	s13, s16
d0050354:	eeb0 3a41 	vmov.f32	s6, s2
d0050358:	eef0 2a65 	vmov.f32	s5, s11
d005035c:	eeb0 6a67 	vmov.f32	s12, s15
d0050360:	e53a      	b.n	d004fdd8 <fillTriangleDitherBayerT+0x120>
d0050362:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0050366:	eef4 7ac1 	vcmpe.f32	s15, s2
d005036a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005036e:	f340 8240 	ble.w	d00507f2 <fillTriangleDitherBayerT+0xb3a>
d0050372:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0050376:	ee71 1ac3 	vsub.f32	s3, s3, s6
d005037a:	ee3a aa62 	vsub.f32	s20, s20, s5
d005037e:	eec5 6aa7 	vdiv.f32	s13, s11, s15
d0050382:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0050386:	ee77 7ac7 	vsub.f32	s15, s15, s14
d005038a:	ee07 0a10 	vmov	s14, r0
d005038e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0050392:	ee37 7a27 	vadd.f32	s14, s14, s15
d0050396:	ee61 1aa6 	vmul.f32	s3, s3, s13
d005039a:	ee2a aa26 	vmul.f32	s20, s20, s13
d005039e:	eea7 3a21 	vfma.f32	s6, s14, s3
d00503a2:	eee7 2a0a 	vfma.f32	s5, s14, s20
d00503a6:	9c06      	ldr	r4, [sp, #24]
d00503a8:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
d00503ac:	4a5f      	ldr	r2, [pc, #380]	; (d005052c <fillTriangleDitherBayerT+0x874>)
d00503ae:	ebc4 1304 	rsb	r3, r4, r4, lsl #4
d00503b2:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d00503b4:	6817      	ldr	r7, [r2, #0]
d00503b6:	eb00 0280 	add.w	r2, r0, r0, lsl #2
d00503ba:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d00503be:	495c      	ldr	r1, [pc, #368]	; (d0050530 <fillTriangleDitherBayerT+0x878>)
d00503c0:	eb04 1282 	add.w	r2, r4, r2, lsl #6
d00503c4:	f004 0e03 	and.w	lr, r4, #3
d00503c8:	4403      	add	r3, r0
d00503ca:	9502      	str	r5, [sp, #8]
d00503cc:	4417      	add	r7, r2
d00503ce:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d00503d0:	eb01 0e8e 	add.w	lr, r1, lr, lsl #2
d00503d4:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d00503d8:	461d      	mov	r5, r3
d00503da:	9b02      	ldr	r3, [sp, #8]
d00503dc:	eeb4 3ac8 	vcmpe.f32	s6, s16
d00503e0:	eba3 0c00 	sub.w	ip, r3, r0
d00503e4:	f10c 0301 	add.w	r3, ip, #1
d00503e8:	2b30      	cmp	r3, #48	; 0x30
d00503ea:	bfa8      	it	ge
d00503ec:	2330      	movge	r3, #48	; 0x30
d00503ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00503f2:	d969      	bls.n	d00504c8 <fillTriangleDitherBayerT+0x810>
d00503f4:	f1bc 0f00 	cmp.w	ip, #0
d00503f8:	ee82 7a83 	vdiv.f32	s14, s5, s6
d00503fc:	dd74      	ble.n	d00504e8 <fillTriangleDitherBayerT+0x830>
d00503fe:	1e5a      	subs	r2, r3, #1
d0050400:	ee07 2a90 	vmov	s15, r2
d0050404:	eef0 ba43 	vmov.f32	s23, s6
d0050408:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005040c:	eee7 baa1 	vfma.f32	s23, s15, s3
d0050410:	eef4 bac8 	vcmpe.f32	s23, s16
d0050414:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050418:	dd71      	ble.n	d00504fe <fillTriangleDitherBayerT+0x846>
d005041a:	eeb0 ca62 	vmov.f32	s24, s5
d005041e:	4a45      	ldr	r2, [pc, #276]	; (d0050534 <fillTriangleDitherBayerT+0x87c>)
d0050420:	009e      	lsls	r6, r3, #2
d0050422:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d0050426:	eea7 ca8a 	vfma.f32	s24, s15, s20
d005042a:	edd2 7a00 	vldr	s15, [r2]
d005042e:	9a05      	ldr	r2, [sp, #20]
d0050430:	eecc 6a2b 	vdiv.f32	s13, s24, s23
d0050434:	ee76 6ac7 	vsub.f32	s13, s13, s14
d0050438:	ee66 6aa7 	vmul.f32	s13, s13, s15
d005043c:	2a00      	cmp	r2, #0
d005043e:	f000 81c9 	beq.w	d00507d4 <fillTriangleDitherBayerT+0xb1c>
d0050442:	f000 0403 	and.w	r4, r0, #3
d0050446:	f1a5 0902 	sub.w	r9, r5, #2
d005044a:	2100      	movs	r1, #0
d005044c:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0050450:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0050454:	ee77 7aa5 	vadd.f32	s15, s15, s11
d0050458:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d005045c:	ee37 7a26 	vadd.f32	s14, s14, s13
d0050460:	f104 0a01 	add.w	sl, r4, #1
d0050464:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0050468:	ee17 2a90 	vmov	r2, s15
d005046c:	b292      	uxth	r2, r2
d005046e:	4593      	cmp	fp, r2
d0050470:	d90b      	bls.n	d005048a <fillTriangleDitherBayerT+0x7d2>
d0050472:	f81e b004 	ldrb.w	fp, [lr, r4]
d0050476:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d005047a:	45c3      	cmp	fp, r8
d005047c:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0050480:	db03      	blt.n	d005048a <fillTriangleDitherBayerT+0x7d2>
d0050482:	f8a9 2000 	strh.w	r2, [r9]
d0050486:	9a01      	ldr	r2, [sp, #4]
d0050488:	553a      	strb	r2, [r7, r4]
d005048a:	3101      	adds	r1, #1
d005048c:	f00a 0403 	and.w	r4, sl, #3
d0050490:	428b      	cmp	r3, r1
d0050492:	dcdb      	bgt.n	d005044c <fillTriangleDitherBayerT+0x794>
d0050494:	f1bc 0f00 	cmp.w	ip, #0
d0050498:	441e      	add	r6, r3
d005049a:	ea4f 0243 	mov.w	r2, r3, lsl #1
d005049e:	ea4f 1686 	mov.w	r6, r6, lsl #6
d00504a2:	bfbc      	itt	lt
d00504a4:	2202      	movlt	r2, #2
d00504a6:	f44f 76a0 	movlt.w	r6, #320	; 0x140
d00504aa:	4415      	add	r5, r2
d00504ac:	4437      	add	r7, r6
d00504ae:	ee07 3a90 	vmov	s15, r3
d00504b2:	4418      	add	r0, r3
d00504b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00504b8:	eea7 3aa1 	vfma.f32	s6, s15, s3
d00504bc:	eee7 2a8a 	vfma.f32	s5, s15, s20
d00504c0:	9b02      	ldr	r3, [sp, #8]
d00504c2:	4283      	cmp	r3, r0
d00504c4:	da89      	bge.n	d00503da <fillTriangleDitherBayerT+0x722>
d00504c6:	e5c4      	b.n	d0050052 <fillTriangleDitherBayerT+0x39a>
d00504c8:	ee07 3a90 	vmov	s15, r3
d00504cc:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00504d0:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d00504d4:	4418      	add	r0, r3
d00504d6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00504da:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d00504de:	eea7 3aa1 	vfma.f32	s6, s15, s3
d00504e2:	eee7 2a8a 	vfma.f32	s5, s15, s20
d00504e6:	e7eb      	b.n	d00504c0 <fillTriangleDitherBayerT+0x808>
d00504e8:	9a05      	ldr	r2, [sp, #20]
d00504ea:	f000 0403 	and.w	r4, r0, #3
d00504ee:	b32a      	cbz	r2, d005053c <fillTriangleDitherBayerT+0x884>
d00504f0:	f1bc 0f00 	cmp.w	ip, #0
d00504f4:	dbdb      	blt.n	d00504ae <fillTriangleDitherBayerT+0x7f6>
d00504f6:	eef0 6a46 	vmov.f32	s13, s12
d00504fa:	009e      	lsls	r6, r3, #2
d00504fc:	e7a3      	b.n	d0050446 <fillTriangleDitherBayerT+0x78e>
d00504fe:	9a05      	ldr	r2, [sp, #20]
d0050500:	2a00      	cmp	r2, #0
d0050502:	f000 816a 	beq.w	d00507da <fillTriangleDitherBayerT+0xb22>
d0050506:	eef0 6a46 	vmov.f32	s13, s12
d005050a:	f000 0403 	and.w	r4, r0, #3
d005050e:	009e      	lsls	r6, r3, #2
d0050510:	e799      	b.n	d0050446 <fillTriangleDitherBayerT+0x78e>
d0050512:	bf00      	nop
d0050514:	d005b17c 	.word	0xd005b17c
d0050518:	d005b180 	.word	0xd005b180
d005051c:	d005b184 	.word	0xd005b184
d0050520:	33d6bf95 	.word	0x33d6bf95
d0050524:	00000000 	.word	0x00000000
d0050528:	477fff00 	.word	0x477fff00
d005052c:	d00f5670 	.word	0xd00f5670
d0050530:	d0058360 	.word	0xd0058360
d0050534:	d0058380 	.word	0xd0058380
d0050538:	38d1b717 	.word	0x38d1b717
d005053c:	f1bc 0f00 	cmp.w	ip, #0
d0050540:	dbb5      	blt.n	d00504ae <fillTriangleDitherBayerT+0x7f6>
d0050542:	eef0 6a46 	vmov.f32	s13, s12
d0050546:	009e      	lsls	r6, r3, #2
d0050548:	f1a5 0902 	sub.w	r9, r5, #2
d005054c:	2100      	movs	r1, #0
d005054e:	9507      	str	r5, [sp, #28]
d0050550:	9008      	str	r0, [sp, #32]
d0050552:	9609      	str	r6, [sp, #36]	; 0x24
d0050554:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0050558:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d005055c:	ee77 7aa5 	vadd.f32	s15, s15, s11
d0050560:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0050564:	ee37 7a26 	vadd.f32	s14, s14, s13
d0050568:	f104 0a01 	add.w	sl, r4, #1
d005056c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0050570:	ee17 2a90 	vmov	r2, s15
d0050574:	b292      	uxth	r2, r2
d0050576:	4593      	cmp	fp, r2
d0050578:	d912      	bls.n	d00505a0 <fillTriangleDitherBayerT+0x8e8>
d005057a:	f81e b004 	ldrb.w	fp, [lr, r4]
d005057e:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0050582:	45c3      	cmp	fp, r8
d0050584:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0050588:	db0a      	blt.n	d00505a0 <fillTriangleDitherBayerT+0x8e8>
d005058a:	9803      	ldr	r0, [sp, #12]
d005058c:	f8a9 2000 	strh.w	r2, [r9]
d0050590:	4605      	mov	r5, r0
d0050592:	9801      	ldr	r0, [sp, #4]
d0050594:	4606      	mov	r6, r0
d0050596:	9804      	ldr	r0, [sp, #16]
d0050598:	4583      	cmp	fp, r0
d005059a:	bfa8      	it	ge
d005059c:	4635      	movge	r5, r6
d005059e:	553d      	strb	r5, [r7, r4]
d00505a0:	3101      	adds	r1, #1
d00505a2:	f00a 0403 	and.w	r4, sl, #3
d00505a6:	428b      	cmp	r3, r1
d00505a8:	dcd4      	bgt.n	d0050554 <fillTriangleDitherBayerT+0x89c>
d00505aa:	9d07      	ldr	r5, [sp, #28]
d00505ac:	9808      	ldr	r0, [sp, #32]
d00505ae:	9e09      	ldr	r6, [sp, #36]	; 0x24
d00505b0:	e770      	b.n	d0050494 <fillTriangleDitherBayerT+0x7dc>
d00505b2:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00505b6:	ed1f 6a20 	vldr	s12, [pc, #-128]	; d0050538 <fillTriangleDitherBayerT+0x880>
d00505ba:	eef4 7ac6 	vcmpe.f32	s15, s12
d00505be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505c2:	f340 811b 	ble.w	d00507fc <fillTriangleDitherBayerT+0xb44>
d00505c6:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00505ca:	ee72 2ac5 	vsub.f32	s5, s5, s10
d00505ce:	ee31 1a43 	vsub.f32	s2, s2, s6
d00505d2:	ee80 6aa7 	vdiv.f32	s12, s1, s15
d00505d6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00505da:	ee37 7ac7 	vsub.f32	s14, s15, s14
d00505de:	ee07 0a90 	vmov	s15, r0
d00505e2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00505e6:	ee37 7a87 	vadd.f32	s14, s15, s14
d00505ea:	ee62 2a86 	vmul.f32	s5, s5, s12
d00505ee:	ee21 1a06 	vmul.f32	s2, s2, s12
d00505f2:	eea7 5a22 	vfma.f32	s10, s14, s5
d00505f6:	eea7 3a01 	vfma.f32	s6, s14, s2
d00505fa:	9902      	ldr	r1, [sp, #8]
d00505fc:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0050600:	4b81      	ldr	r3, [pc, #516]	; (d0050808 <fillTriangleDitherBayerT+0xb50>)
d0050602:	ebc1 1e01 	rsb	lr, r1, r1, lsl #4
d0050606:	9c14      	ldr	r4, [sp, #80]	; 0x50
d0050608:	681f      	ldr	r7, [r3, #0]
d005060a:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d005060e:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d0050612:	4a7e      	ldr	r2, [pc, #504]	; (d005080c <fillTriangleDitherBayerT+0xb54>)
d0050614:	eb01 1383 	add.w	r3, r1, r3, lsl #6
d0050618:	f001 0803 	and.w	r8, r1, #3
d005061c:	4486      	add	lr, r0
d005061e:	f8dd c034 	ldr.w	ip, [sp, #52]	; 0x34
d0050622:	441f      	add	r7, r3
d0050624:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0050626:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d005062a:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d005062e:	1a2e      	subs	r6, r5, r0
d0050630:	eeb4 5aeb 	vcmpe.f32	s10, s23
d0050634:	1c72      	adds	r2, r6, #1
d0050636:	2a30      	cmp	r2, #48	; 0x30
d0050638:	bfa8      	it	ge
d005063a:	2230      	movge	r2, #48	; 0x30
d005063c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050640:	d969      	bls.n	d0050716 <fillTriangleDitherBayerT+0xa5e>
d0050642:	2e00      	cmp	r6, #0
d0050644:	ee83 7a05 	vdiv.f32	s14, s6, s10
d0050648:	dd75      	ble.n	d0050736 <fillTriangleDitherBayerT+0xa7e>
d005064a:	1e53      	subs	r3, r2, #1
d005064c:	ee07 3a90 	vmov	s15, r3
d0050650:	eef0 ea45 	vmov.f32	s29, s10
d0050654:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050658:	eee7 eaa2 	vfma.f32	s29, s15, s5
d005065c:	eef4 eaeb 	vcmpe.f32	s29, s23
d0050660:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050664:	f340 80aa 	ble.w	d00507bc <fillTriangleDitherBayerT+0xb04>
d0050668:	eeb0 fa43 	vmov.f32	s30, s6
d005066c:	4b68      	ldr	r3, [pc, #416]	; (d0050810 <fillTriangleDitherBayerT+0xb58>)
d005066e:	0091      	lsls	r1, r2, #2
d0050670:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0050674:	eea7 fa81 	vfma.f32	s30, s15, s2
d0050678:	9106      	str	r1, [sp, #24]
d005067a:	edd3 7a00 	vldr	s15, [r3]
d005067e:	eecf 0a2e 	vdiv.f32	s1, s30, s29
d0050682:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0050686:	ee60 0aa7 	vmul.f32	s1, s1, s15
d005068a:	9b05      	ldr	r3, [sp, #20]
d005068c:	2b00      	cmp	r3, #0
d005068e:	d05e      	beq.n	d005074e <fillTriangleDitherBayerT+0xa96>
d0050690:	f000 0403 	and.w	r4, r0, #3
d0050694:	f1ae 0902 	sub.w	r9, lr, #2
d0050698:	2100      	movs	r1, #0
d005069a:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d005069e:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d00506a2:	ee77 7a86 	vadd.f32	s15, s15, s12
d00506a6:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00506aa:	ee37 7a20 	vadd.f32	s14, s14, s1
d00506ae:	f104 0a01 	add.w	sl, r4, #1
d00506b2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00506b6:	ee17 3a90 	vmov	r3, s15
d00506ba:	b29b      	uxth	r3, r3
d00506bc:	459b      	cmp	fp, r3
d00506be:	d90b      	bls.n	d00506d8 <fillTriangleDitherBayerT+0xa20>
d00506c0:	f818 b004 	ldrb.w	fp, [r8, r4]
d00506c4:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00506c8:	45e3      	cmp	fp, ip
d00506ca:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00506ce:	db03      	blt.n	d00506d8 <fillTriangleDitherBayerT+0xa20>
d00506d0:	f8a9 3000 	strh.w	r3, [r9]
d00506d4:	9b01      	ldr	r3, [sp, #4]
d00506d6:	553b      	strb	r3, [r7, r4]
d00506d8:	3101      	adds	r1, #1
d00506da:	f00a 0403 	and.w	r4, sl, #3
d00506de:	428a      	cmp	r2, r1
d00506e0:	dcdb      	bgt.n	d005069a <fillTriangleDitherBayerT+0x9e2>
d00506e2:	9b06      	ldr	r3, [sp, #24]
d00506e4:	2e00      	cmp	r6, #0
d00506e6:	ea4f 0142 	mov.w	r1, r2, lsl #1
d00506ea:	4413      	add	r3, r2
d00506ec:	bfb8      	it	lt
d00506ee:	2102      	movlt	r1, #2
d00506f0:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00506f4:	bfb8      	it	lt
d00506f6:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00506fa:	448e      	add	lr, r1
d00506fc:	441f      	add	r7, r3
d00506fe:	ee07 2a90 	vmov	s15, r2
d0050702:	4410      	add	r0, r2
d0050704:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050708:	eea7 5aa2 	vfma.f32	s10, s15, s5
d005070c:	eea7 3a81 	vfma.f32	s6, s15, s2
d0050710:	4285      	cmp	r5, r0
d0050712:	da8c      	bge.n	d005062e <fillTriangleDitherBayerT+0x976>
d0050714:	e5ce      	b.n	d00502b4 <fillTriangleDitherBayerT+0x5fc>
d0050716:	ee07 2a90 	vmov	s15, r2
d005071a:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d005071e:	eb0e 0e42 	add.w	lr, lr, r2, lsl #1
d0050722:	4410      	add	r0, r2
d0050724:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050728:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d005072c:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0050730:	eea7 3a81 	vfma.f32	s6, s15, s2
d0050734:	e7ec      	b.n	d0050710 <fillTriangleDitherBayerT+0xa58>
d0050736:	9b05      	ldr	r3, [sp, #20]
d0050738:	f000 0403 	and.w	r4, r0, #3
d005073c:	2b00      	cmp	r3, #0
d005073e:	d042      	beq.n	d00507c6 <fillTriangleDitherBayerT+0xb0e>
d0050740:	2e00      	cmp	r6, #0
d0050742:	d1dc      	bne.n	d00506fe <fillTriangleDitherBayerT+0xa46>
d0050744:	0093      	lsls	r3, r2, #2
d0050746:	eef0 0a66 	vmov.f32	s1, s13
d005074a:	9306      	str	r3, [sp, #24]
d005074c:	e7a2      	b.n	d0050694 <fillTriangleDitherBayerT+0x9dc>
d005074e:	f000 0403 	and.w	r4, r0, #3
d0050752:	f1ae 0902 	sub.w	r9, lr, #2
d0050756:	2100      	movs	r1, #0
d0050758:	9507      	str	r5, [sp, #28]
d005075a:	9608      	str	r6, [sp, #32]
d005075c:	9009      	str	r0, [sp, #36]	; 0x24
d005075e:	fec7 7a26 	vmaxnm.f32	s15, s14, s13
d0050762:	fec7 7ae5 	vminnm.f32	s15, s15, s11
d0050766:	ee77 7a86 	vadd.f32	s15, s15, s12
d005076a:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d005076e:	ee37 7a20 	vadd.f32	s14, s14, s1
d0050772:	f104 0a01 	add.w	sl, r4, #1
d0050776:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005077a:	ee17 3a90 	vmov	r3, s15
d005077e:	b29b      	uxth	r3, r3
d0050780:	459b      	cmp	fp, r3
d0050782:	d912      	bls.n	d00507aa <fillTriangleDitherBayerT+0xaf2>
d0050784:	f818 b004 	ldrb.w	fp, [r8, r4]
d0050788:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d005078c:	45e3      	cmp	fp, ip
d005078e:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0050792:	db0a      	blt.n	d00507aa <fillTriangleDitherBayerT+0xaf2>
d0050794:	9801      	ldr	r0, [sp, #4]
d0050796:	f8a9 3000 	strh.w	r3, [r9]
d005079a:	4605      	mov	r5, r0
d005079c:	9803      	ldr	r0, [sp, #12]
d005079e:	4606      	mov	r6, r0
d00507a0:	9804      	ldr	r0, [sp, #16]
d00507a2:	4583      	cmp	fp, r0
d00507a4:	bfb8      	it	lt
d00507a6:	4635      	movlt	r5, r6
d00507a8:	553d      	strb	r5, [r7, r4]
d00507aa:	3101      	adds	r1, #1
d00507ac:	f00a 0403 	and.w	r4, sl, #3
d00507b0:	428a      	cmp	r2, r1
d00507b2:	dcd4      	bgt.n	d005075e <fillTriangleDitherBayerT+0xaa6>
d00507b4:	9d07      	ldr	r5, [sp, #28]
d00507b6:	9e08      	ldr	r6, [sp, #32]
d00507b8:	9809      	ldr	r0, [sp, #36]	; 0x24
d00507ba:	e792      	b.n	d00506e2 <fillTriangleDitherBayerT+0xa2a>
d00507bc:	0093      	lsls	r3, r2, #2
d00507be:	eef0 0a66 	vmov.f32	s1, s13
d00507c2:	9306      	str	r3, [sp, #24]
d00507c4:	e761      	b.n	d005068a <fillTriangleDitherBayerT+0x9d2>
d00507c6:	2e00      	cmp	r6, #0
d00507c8:	db99      	blt.n	d00506fe <fillTriangleDitherBayerT+0xa46>
d00507ca:	0093      	lsls	r3, r2, #2
d00507cc:	eef0 0a66 	vmov.f32	s1, s13
d00507d0:	9306      	str	r3, [sp, #24]
d00507d2:	e7be      	b.n	d0050752 <fillTriangleDitherBayerT+0xa9a>
d00507d4:	f000 0403 	and.w	r4, r0, #3
d00507d8:	e6b6      	b.n	d0050548 <fillTriangleDitherBayerT+0x890>
d00507da:	eef0 6a46 	vmov.f32	s13, s12
d00507de:	f000 0403 	and.w	r4, r0, #3
d00507e2:	009e      	lsls	r6, r3, #2
d00507e4:	e6b0      	b.n	d0050548 <fillTriangleDitherBayerT+0x890>
d00507e6:	2310      	movs	r3, #16
d00507e8:	9301      	str	r3, [sp, #4]
d00507ea:	2310      	movs	r3, #16
d00507ec:	9303      	str	r3, [sp, #12]
d00507ee:	f7ff bacf 	b.w	d004fd90 <fillTriangleDitherBayerT+0xd8>
d00507f2:	eeb0 aa46 	vmov.f32	s20, s12
d00507f6:	eef0 1a46 	vmov.f32	s3, s12
d00507fa:	e5d4      	b.n	d00503a6 <fillTriangleDitherBayerT+0x6ee>
d00507fc:	eeb0 1a66 	vmov.f32	s2, s13
d0050800:	eef0 2a66 	vmov.f32	s5, s13
d0050804:	e6f9      	b.n	d00505fa <fillTriangleDitherBayerT+0x942>
d0050806:	bf00      	nop
d0050808:	d00f5670 	.word	0xd00f5670
d005080c:	d0058360 	.word	0xd0058360
d0050810:	d0058380 	.word	0xd0058380

d0050814 <fillTriangleDitherBayer2Mode>:
d0050814:	ed9f 7ae0 	vldr	s14, [pc, #896]	; d0050b98 <fillTriangleDitherBayer2Mode+0x384>
d0050818:	eef4 0ac7 	vcmpe.f32	s1, s14
d005081c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0050820:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050824:	eeb4 1ac7 	vcmpe.f32	s2, s14
d0050828:	ed2d 8b10 	vpush	{d8-d15}
d005082c:	b095      	sub	sp, #84	; 0x54
d005082e:	9306      	str	r3, [sp, #24]
d0050830:	bf94      	ite	ls
d0050832:	2301      	movls	r3, #1
d0050834:	2300      	movhi	r3, #0
d0050836:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005083a:	9003      	str	r0, [sp, #12]
d005083c:	9104      	str	r1, [sp, #16]
d005083e:	bf98      	it	ls
d0050840:	f043 0301 	orrls.w	r3, r3, #1
d0050844:	9205      	str	r2, [sp, #20]
d0050846:	f8bd 00c0 	ldrh.w	r0, [sp, #192]	; 0xc0
d005084a:	f8bd 10c4 	ldrh.w	r1, [sp, #196]	; 0xc4
d005084e:	f8bd 20c8 	ldrh.w	r2, [sp, #200]	; 0xc8
d0050852:	f89d b0cc 	ldrb.w	fp, [sp, #204]	; 0xcc
d0050856:	ed8d 0a01 	vstr	s0, [sp, #4]
d005085a:	edcd 1a02 	vstr	s3, [sp, #8]
d005085e:	2b00      	cmp	r3, #0
d0050860:	f040 8195 	bne.w	d0050b8e <fillTriangleDitherBayer2Mode+0x37a>
d0050864:	eeb4 0a47 	vcmp.f32	s0, s14
d0050868:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005086c:	f240 818f 	bls.w	d0050b8e <fillTriangleDitherBayer2Mode+0x37a>
d0050870:	eef7 4a00 	vmov.f32	s9, #112	; 0x3f800000  1.0
d0050874:	ed9d 5a05 	vldr	s10, [sp, #20]
d0050878:	eef0 6a41 	vmov.f32	s13, s2
d005087c:	ee07 0a10 	vmov	s14, r0
d0050880:	eef0 7a61 	vmov.f32	s15, s3
d0050884:	ee06 1a10 	vmov	s12, r1
d0050888:	eec4 2a80 	vdiv.f32	s5, s9, s0
d005088c:	eec4 1aa6 	vdiv.f32	s3, s9, s13
d0050890:	ee06 2a90 	vmov	s13, r2
d0050894:	ee84 1aa0 	vdiv.f32	s2, s9, s1
d0050898:	eeb8 3a66 	vcvt.f32.u32	s6, s13
d005089c:	eddd 6a04 	vldr	s13, [sp, #16]
d00508a0:	eef8 4ac5 	vcvt.f32.s32	s9, s10
d00508a4:	ed9d 5a2e 	vldr	s10, [sp, #184]	; 0xb8
d00508a8:	eef8 5ae6 	vcvt.f32.s32	s11, s13
d00508ac:	eddd 6a06 	vldr	s13, [sp, #24]
d00508b0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00508b4:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d00508b8:	eddd 6a03 	vldr	s13, [sp, #12]
d00508bc:	eeb8 6a46 	vcvt.f32.u32	s12, s12
d00508c0:	eeb8 2ac5 	vcvt.f32.s32	s4, s10
d00508c4:	ed9d 5a2f 	vldr	s10, [sp, #188]	; 0xbc
d00508c8:	eef4 5ae3 	vcmpe.f32	s11, s7
d00508cc:	ee27 7a22 	vmul.f32	s14, s14, s5
d00508d0:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00508d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508d8:	ee26 6a01 	vmul.f32	s12, s12, s2
d00508dc:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d00508e0:	ee23 3a21 	vmul.f32	s6, s6, s3
d00508e4:	f300 8168 	bgt.w	d0050bb8 <fillTriangleDitherBayer2Mode+0x3a4>
d00508e8:	eef4 5ac5 	vcmpe.f32	s11, s10
d00508ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508f0:	f300 8280 	bgt.w	d0050df4 <fillTriangleDitherBayer2Mode+0x5e0>
d00508f4:	eef4 3ac5 	vcmpe.f32	s7, s10
d00508f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508fc:	f300 8298 	bgt.w	d0050e30 <fillTriangleDitherBayer2Mode+0x61c>
d0050900:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0050904:	ee75 0a84 	vadd.f32	s1, s11, s8
d0050908:	ee35 4a04 	vadd.f32	s8, s10, s8
d005090c:	eefd 0ae0 	vcvt.s32.f32	s1, s1
d0050910:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0050914:	ee10 3a90 	vmov	r3, s1
d0050918:	ee14 2a10 	vmov	r2, s8
d005091c:	4293      	cmp	r3, r2
d005091e:	f000 8136 	beq.w	d0050b8e <fillTriangleDitherBayer2Mode+0x37a>
d0050922:	ee75 8a65 	vsub.f32	s17, s10, s11
d0050926:	ed9f 4a9c 	vldr	s8, [pc, #624]	; d0050b98 <fillTriangleDitherBayer2Mode+0x384>
d005092a:	eef4 8ac4 	vcmpe.f32	s17, s8
d005092e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050932:	f240 812c 	bls.w	d0050b8e <fillTriangleDitherBayer2Mode+0x37a>
d0050936:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d005093a:	ee33 9ae5 	vsub.f32	s18, s7, s11
d005093e:	ee32 0a66 	vsub.f32	s0, s4, s13
d0050942:	eec9 0aa8 	vdiv.f32	s1, s19, s17
d0050946:	eeb4 9ac4 	vcmpe.f32	s18, s8
d005094a:	ee31 8ae2 	vsub.f32	s16, s3, s5
d005094e:	ee73 8a47 	vsub.f32	s17, s6, s14
d0050952:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050956:	ee20 0a20 	vmul.f32	s0, s0, s1
d005095a:	ee28 8a20 	vmul.f32	s16, s16, s1
d005095e:	ee68 8aa0 	vmul.f32	s17, s17, s1
d0050962:	f300 8148 	bgt.w	d0050bf6 <fillTriangleDitherBayer2Mode+0x3e2>
d0050966:	eef1 9a04 	vmov.f32	s19, #20	; 0x40a00000  5.0
d005096a:	eddf 0a92 	vldr	s1, [pc, #584]	; d0050bb4 <fillTriangleDitherBayer2Mode+0x3a0>
d005096e:	ed9f ba90 	vldr	s22, [pc, #576]	; d0050bb0 <fillTriangleDitherBayer2Mode+0x39c>
d0050972:	fec7 7a8b 	vmaxnm.f32	s15, s15, s22
d0050976:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d005097a:	ee67 7aa0 	vmul.f32	s15, s15, s1
d005097e:	ee75 0a63 	vsub.f32	s1, s10, s7
d0050982:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0050986:	eef4 0ac4 	vcmpe.f32	s1, s8
d005098a:	edcd 0a03 	vstr	s1, [sp, #12]
d005098e:	ee17 3a90 	vmov	r3, s15
d0050992:	edcd 7a01 	vstr	s15, [sp, #4]
d0050996:	2b10      	cmp	r3, #16
d0050998:	bfa8      	it	ge
d005099a:	2310      	movge	r3, #16
d005099c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00509a0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00509a4:	9305      	str	r3, [sp, #20]
d00509a6:	f340 80f2 	ble.w	d0050b8e <fillTriangleDitherBayer2Mode+0x37a>
d00509aa:	eef0 ea4b 	vmov.f32	s29, s22
d00509ae:	eeb0 ca4b 	vmov.f32	s24, s22
d00509b2:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d00509b6:	eddd 0a03 	vldr	s1, [sp, #12]
d00509ba:	ee32 2a64 	vsub.f32	s4, s4, s9
d00509be:	eddf 7a76 	vldr	s15, [pc, #472]	; d0050b98 <fillTriangleDitherBayer2Mode+0x384>
d00509c2:	ee71 1ac1 	vsub.f32	s3, s3, s2
d00509c6:	eec4 ba20 	vdiv.f32	s23, s8, s1
d00509ca:	eeb4 9ae7 	vcmpe.f32	s18, s15
d00509ce:	ee33 3a46 	vsub.f32	s6, s6, s12
d00509d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00509d6:	ee22 4a2b 	vmul.f32	s8, s4, s23
d00509da:	ed8d 4a0d 	vstr	s8, [sp, #52]	; 0x34
d00509de:	ee21 4aab 	vmul.f32	s8, s3, s23
d00509e2:	ee63 ba2b 	vmul.f32	s23, s6, s23
d00509e6:	ed8d 4a0c 	vstr	s8, [sp, #48]	; 0x30
d00509ea:	f300 813c 	bgt.w	d0050c66 <fillTriangleDitherBayer2Mode+0x452>
d00509ee:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00509f2:	4a6a      	ldr	r2, [pc, #424]	; (d0050b9c <fillTriangleDitherBayer2Mode+0x388>)
d00509f4:	4b6a      	ldr	r3, [pc, #424]	; (d0050ba0 <fillTriangleDitherBayer2Mode+0x38c>)
d00509f6:	6812      	ldr	r2, [r2, #0]
d00509f8:	edcd 7a04 	vstr	s15, [sp, #16]
d00509fc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050a00:	681b      	ldr	r3, [r3, #0]
d0050a02:	9206      	str	r2, [sp, #24]
d0050a04:	edcd 7a08 	vstr	s15, [sp, #32]
d0050a08:	9307      	str	r3, [sp, #28]
d0050a0a:	eddd 7a08 	vldr	s15, [sp, #32]
d0050a0e:	eef4 3ae7 	vcmpe.f32	s7, s15
d0050a12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a16:	dd02      	ble.n	d0050a1e <fillTriangleDitherBayer2Mode+0x20a>
d0050a18:	9b04      	ldr	r3, [sp, #16]
d0050a1a:	3301      	adds	r3, #1
d0050a1c:	9304      	str	r3, [sp, #16]
d0050a1e:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0050a22:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d0050a26:	eeb4 5ac4 	vcmpe.f32	s10, s8
d0050a2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a2e:	dc04      	bgt.n	d0050a3a <fillTriangleDitherBayer2Mode+0x226>
d0050a30:	ee17 3a90 	vmov	r3, s15
d0050a34:	3b01      	subs	r3, #1
d0050a36:	ee07 3a90 	vmov	s15, r3
d0050a3a:	9b07      	ldr	r3, [sp, #28]
d0050a3c:	ee17 2a90 	vmov	r2, s15
d0050a40:	4293      	cmp	r3, r2
d0050a42:	bfa8      	it	ge
d0050a44:	4613      	movge	r3, r2
d0050a46:	461a      	mov	r2, r3
d0050a48:	9b04      	ldr	r3, [sp, #16]
d0050a4a:	469a      	mov	sl, r3
d0050a4c:	9b06      	ldr	r3, [sp, #24]
d0050a4e:	459a      	cmp	sl, r3
d0050a50:	bfb8      	it	lt
d0050a52:	469a      	movlt	sl, r3
d0050a54:	4552      	cmp	r2, sl
d0050a56:	f2c0 809a 	blt.w	d0050b8e <fillTriangleDitherBayer2Mode+0x37a>
d0050a5a:	ee07 aa90 	vmov	s15, sl
d0050a5e:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d0050a62:	eba3 1303 	sub.w	r3, r3, r3, lsl #4
d0050a66:	494f      	ldr	r1, [pc, #316]	; (d0050ba4 <fillTriangleDitherBayer2Mode+0x390>)
d0050a68:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050a6c:	eddd aa0d 	vldr	s21, [sp, #52]	; 0x34
d0050a70:	015b      	lsls	r3, r3, #5
d0050a72:	ed9d aa0c 	vldr	s20, [sp, #48]	; 0x30
d0050a76:	eddf 0a48 	vldr	s1, [pc, #288]	; d0050b98 <fillTriangleDitherBayer2Mode+0x384>
d0050a7a:	ee77 7a85 	vadd.f32	s15, s15, s10
d0050a7e:	9309      	str	r3, [sp, #36]	; 0x24
d0050a80:	1c53      	adds	r3, r2, #1
d0050a82:	eddf 1a49 	vldr	s3, [pc, #292]	; d0050ba8 <fillTriangleDitherBayer2Mode+0x394>
d0050a86:	ed9f 2a49 	vldr	s4, [pc, #292]	; d0050bac <fillTriangleDitherBayer2Mode+0x398>
d0050a8a:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0050a8e:	9302      	str	r3, [sp, #8]
d0050a90:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0050a94:	680b      	ldr	r3, [r1, #0]
d0050a96:	eddf 3a46 	vldr	s7, [pc, #280]	; d0050bb0 <fillTriangleDitherBayer2Mode+0x39c>
d0050a9a:	eee0 6a25 	vfma.f32	s13, s0, s11
d0050a9e:	9308      	str	r3, [sp, #32]
d0050aa0:	eee8 2a25 	vfma.f32	s5, s16, s11
d0050aa4:	f8cd b028 	str.w	fp, [sp, #40]	; 0x28
d0050aa8:	eea8 7aa5 	vfma.f32	s14, s17, s11
d0050aac:	eeea 4aa7 	vfma.f32	s9, s21, s15
d0050ab0:	eeaa 1a27 	vfma.f32	s2, s20, s15
d0050ab4:	eeab 6aa7 	vfma.f32	s12, s23, s15
d0050ab8:	e047      	b.n	d0050b4a <fillTriangleDitherBayer2Mode+0x336>
d0050aba:	eef0 9a47 	vmov.f32	s19, s14
d0050abe:	eeb0 ca62 	vmov.f32	s24, s5
d0050ac2:	eeb0 4a66 	vmov.f32	s8, s13
d0050ac6:	eeb0 3a46 	vmov.f32	s6, s12
d0050aca:	eeb0 5a41 	vmov.f32	s10, s2
d0050ace:	eeb0 ba64 	vmov.f32	s22, s9
d0050ad2:	eefd 5acb 	vcvt.s32.f32	s11, s22
d0050ad6:	eef8 7ae5 	vcvt.f32.s32	s15, s11
d0050ada:	eeb4 bae7 	vcmpe.f32	s22, s15
d0050ade:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ae2:	dd04      	ble.n	d0050aee <fillTriangleDitherBayer2Mode+0x2da>
d0050ae4:	ee15 3a90 	vmov	r3, s11
d0050ae8:	3301      	adds	r3, #1
d0050aea:	ee05 3a90 	vmov	s11, r3
d0050aee:	eefd 7ac4 	vcvt.s32.f32	s15, s8
d0050af2:	eeb8 9ae7 	vcvt.f32.s32	s18, s15
d0050af6:	eeb4 4ac9 	vcmpe.f32	s8, s18
d0050afa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050afe:	dc04      	bgt.n	d0050b0a <fillTriangleDitherBayer2Mode+0x2f6>
d0050b00:	ee17 3a90 	vmov	r3, s15
d0050b04:	3b01      	subs	r3, #1
d0050b06:	ee07 3a90 	vmov	s15, r3
d0050b0a:	ee15 3a90 	vmov	r3, s11
d0050b0e:	f240 14df 	movw	r4, #479	; 0x1df
d0050b12:	ea23 71e3 	bic.w	r1, r3, r3, asr #31
d0050b16:	ee17 3a90 	vmov	r3, s15
d0050b1a:	42a3      	cmp	r3, r4
d0050b1c:	bfa8      	it	ge
d0050b1e:	4623      	movge	r3, r4
d0050b20:	4299      	cmp	r1, r3
d0050b22:	461c      	mov	r4, r3
d0050b24:	f340 82c7 	ble.w	d00510b6 <fillTriangleDitherBayer2Mode+0x8a2>
d0050b28:	f10a 0a01 	add.w	sl, sl, #1
d0050b2c:	9b02      	ldr	r3, [sp, #8]
d0050b2e:	ee76 6a80 	vadd.f32	s13, s13, s0
d0050b32:	459a      	cmp	sl, r3
d0050b34:	ee72 2a88 	vadd.f32	s5, s5, s16
d0050b38:	ee37 7a28 	vadd.f32	s14, s14, s17
d0050b3c:	ee74 4aaa 	vadd.f32	s9, s9, s21
d0050b40:	ee31 1a0a 	vadd.f32	s2, s2, s20
d0050b44:	ee36 6a2b 	vadd.f32	s12, s12, s23
d0050b48:	d021      	beq.n	d0050b8e <fillTriangleDitherBayer2Mode+0x37a>
d0050b4a:	eef4 6ae4 	vcmpe.f32	s13, s9
d0050b4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b52:	dcb2      	bgt.n	d0050aba <fillTriangleDitherBayer2Mode+0x2a6>
d0050b54:	eef0 9a46 	vmov.f32	s19, s12
d0050b58:	eeb0 ca41 	vmov.f32	s24, s2
d0050b5c:	eeb0 4a64 	vmov.f32	s8, s9
d0050b60:	eeb0 3a47 	vmov.f32	s6, s14
d0050b64:	eeb0 5a62 	vmov.f32	s10, s5
d0050b68:	eeb0 ba66 	vmov.f32	s22, s13
d0050b6c:	e7b1      	b.n	d0050ad2 <fillTriangleDitherBayer2Mode+0x2be>
d0050b6e:	ed9d 5a12 	vldr	s10, [sp, #72]	; 0x48
d0050b72:	eddd ba13 	vldr	s23, [sp, #76]	; 0x4c
d0050b76:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
d0050b7a:	eddf 7a07 	vldr	s15, [pc, #28]	; d0050b98 <fillTriangleDitherBayer2Mode+0x384>
d0050b7e:	ed9d 4a03 	vldr	s8, [sp, #12]
d0050b82:	eeb4 4ae7 	vcmpe.f32	s8, s15
d0050b86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b8a:	f73f af3e 	bgt.w	d0050a0a <fillTriangleDitherBayer2Mode+0x1f6>
d0050b8e:	b015      	add	sp, #84	; 0x54
d0050b90:	ecbd 8b10 	vpop	{d8-d15}
d0050b94:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0050b98:	38d1b717 	.word	0x38d1b717
d0050b9c:	d005b17c 	.word	0xd005b17c
d0050ba0:	d005b180 	.word	0xd005b180
d0050ba4:	d005b184 	.word	0xd005b184
d0050ba8:	33d6bf95 	.word	0x33d6bf95
d0050bac:	477fff00 	.word	0x477fff00
d0050bb0:	00000000 	.word	0x00000000
d0050bb4:	404ccccd 	.word	0x404ccccd
d0050bb8:	eef4 3ac5 	vcmpe.f32	s7, s10
d0050bbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050bc0:	f340 814f 	ble.w	d0050e62 <fillTriangleDitherBayer2Mode+0x64e>
d0050bc4:	eeb0 8a43 	vmov.f32	s16, s6
d0050bc8:	eeb0 0a61 	vmov.f32	s0, s3
d0050bcc:	eef0 0a45 	vmov.f32	s1, s10
d0050bd0:	eeb0 4a42 	vmov.f32	s8, s4
d0050bd4:	eeb0 3a47 	vmov.f32	s6, s14
d0050bd8:	eef0 1a62 	vmov.f32	s3, s5
d0050bdc:	eeb0 5a65 	vmov.f32	s10, s11
d0050be0:	eeb0 2a66 	vmov.f32	s4, s13
d0050be4:	eeb0 7a48 	vmov.f32	s14, s16
d0050be8:	eef0 2a40 	vmov.f32	s5, s0
d0050bec:	eef0 5a60 	vmov.f32	s11, s1
d0050bf0:	eef0 6a44 	vmov.f32	s13, s8
d0050bf4:	e684      	b.n	d0050900 <fillTriangleDitherBayer2Mode+0xec>
d0050bf6:	eec9 0a89 	vdiv.f32	s1, s19, s18
d0050bfa:	ed5f ba13 	vldr	s23, [pc, #-76]	; d0050bb0 <fillTriangleDitherBayer2Mode+0x39c>
d0050bfe:	ed5f 9a13 	vldr	s19, [pc, #-76]	; d0050bb4 <fillTriangleDitherBayer2Mode+0x3a0>
d0050c02:	fec7 7aab 	vmaxnm.f32	s15, s15, s23
d0050c06:	eef1 aa04 	vmov.f32	s21, #20	; 0x40a00000  5.0
d0050c0a:	ee34 aae6 	vsub.f32	s20, s9, s13
d0050c0e:	ee36 ba47 	vsub.f32	s22, s12, s14
d0050c12:	fec7 7aea 	vminnm.f32	s15, s15, s21
d0050c16:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0050c1a:	ee75 aa63 	vsub.f32	s21, s10, s7
d0050c1e:	ee71 9a62 	vsub.f32	s19, s2, s5
d0050c22:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0050c26:	eef4 aac4 	vcmpe.f32	s21, s8
d0050c2a:	edcd aa03 	vstr	s21, [sp, #12]
d0050c2e:	ee17 3a90 	vmov	r3, s15
d0050c32:	edcd 7a01 	vstr	s15, [sp, #4]
d0050c36:	2b10      	cmp	r3, #16
d0050c38:	ee6a 7a20 	vmul.f32	s15, s20, s1
d0050c3c:	ee2b ba20 	vmul.f32	s22, s22, s1
d0050c40:	bfa8      	it	ge
d0050c42:	2310      	movge	r3, #16
d0050c44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c48:	eeb0 ca67 	vmov.f32	s24, s15
d0050c4c:	ee69 7aa0 	vmul.f32	s15, s19, s1
d0050c50:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0050c54:	9305      	str	r3, [sp, #20]
d0050c56:	eef0 ea67 	vmov.f32	s29, s15
d0050c5a:	f73f aeaa 	bgt.w	d00509b2 <fillTriangleDitherBayer2Mode+0x19e>
d0050c5e:	edcd ba0c 	vstr	s23, [sp, #48]	; 0x30
d0050c62:	edcd ba0d 	vstr	s23, [sp, #52]	; 0x34
d0050c66:	eefd 7ae5 	vcvt.s32.f32	s15, s11
d0050c6a:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d0050c6e:	eef4 5ac4 	vcmpe.f32	s11, s8
d0050c72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c76:	dd04      	ble.n	d0050c82 <fillTriangleDitherBayer2Mode+0x46e>
d0050c78:	ee17 3a90 	vmov	r3, s15
d0050c7c:	3301      	adds	r3, #1
d0050c7e:	ee07 3a90 	vmov	s15, r3
d0050c82:	eebd 4ae3 	vcvt.s32.f32	s8, s7
d0050c86:	49e3      	ldr	r1, [pc, #908]	; (d0051014 <fillTriangleDitherBayer2Mode+0x800>)
d0050c88:	ee17 aa90 	vmov	sl, s15
d0050c8c:	4ae2      	ldr	r2, [pc, #904]	; (d0051018 <fillTriangleDitherBayer2Mode+0x804>)
d0050c8e:	6809      	ldr	r1, [r1, #0]
d0050c90:	eeb8 3ac4 	vcvt.f32.s32	s6, s8
d0050c94:	ee14 3a10 	vmov	r3, s8
d0050c98:	6812      	ldr	r2, [r2, #0]
d0050c9a:	ed8d 4a04 	vstr	s8, [sp, #16]
d0050c9e:	eeb4 3ae3 	vcmpe.f32	s6, s7
d0050ca2:	ed8d 3a08 	vstr	s6, [sp, #32]
d0050ca6:	9106      	str	r1, [sp, #24]
d0050ca8:	9207      	str	r2, [sp, #28]
d0050caa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050cae:	bf58      	it	pl
d0050cb0:	f103 33ff 	addpl.w	r3, r3, #4294967295	; 0xffffffff
d0050cb4:	458a      	cmp	sl, r1
d0050cb6:	bfb8      	it	lt
d0050cb8:	468a      	movlt	sl, r1
d0050cba:	4293      	cmp	r3, r2
d0050cbc:	bfa8      	it	ge
d0050cbe:	4613      	movge	r3, r2
d0050cc0:	4553      	cmp	r3, sl
d0050cc2:	f6ff af5a 	blt.w	d0050b7a <fillTriangleDitherBayer2Mode+0x366>
d0050cc6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0050cca:	460a      	mov	r2, r1
d0050ccc:	3301      	adds	r3, #1
d0050cce:	eef0 9a66 	vmov.f32	s19, s13
d0050cd2:	49d2      	ldr	r1, [pc, #840]	; (d005101c <fillTriangleDitherBayer2Mode+0x808>)
d0050cd4:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0050cd8:	ee37 4ae5 	vsub.f32	s8, s15, s11
d0050cdc:	ee07 aa90 	vmov	s15, sl
d0050ce0:	9302      	str	r3, [sp, #8]
d0050ce2:	eeb0 aa66 	vmov.f32	s20, s13
d0050ce6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050cea:	680b      	ldr	r3, [r1, #0]
d0050cec:	eef0 da62 	vmov.f32	s27, s5
d0050cf0:	edcd ba13 	vstr	s23, [sp, #76]	; 0x4c
d0050cf4:	eeb0 da47 	vmov.f32	s26, s14
d0050cf8:	9310      	str	r3, [sp, #64]	; 0x40
d0050cfa:	ee77 7a84 	vadd.f32	s15, s15, s8
d0050cfe:	0153      	lsls	r3, r2, #5
d0050d00:	eef0 aa4c 	vmov.f32	s21, s24
d0050d04:	ed9f eac6 	vldr	s28, [pc, #792]	; d0051020 <fillTriangleDitherBayer2Mode+0x80c>
d0050d08:	eef0 ca62 	vmov.f32	s25, s5
d0050d0c:	ed9f 2ac5 	vldr	s4, [pc, #788]	; d0051024 <fillTriangleDitherBayer2Mode+0x810>
d0050d10:	eee7 9a8c 	vfma.f32	s19, s15, s24
d0050d14:	eddf 0ac4 	vldr	s1, [pc, #784]	; d0051028 <fillTriangleDitherBayer2Mode+0x814>
d0050d18:	eeb0 ca47 	vmov.f32	s24, s14
d0050d1c:	9311      	str	r3, [sp, #68]	; 0x44
d0050d1e:	eea0 aa27 	vfma.f32	s20, s0, s15
d0050d22:	ed8d 5a12 	vstr	s10, [sp, #72]	; 0x48
d0050d26:	eee8 da27 	vfma.f32	s27, s16, s15
d0050d2a:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
d0050d2e:	eea8 daa7 	vfma.f32	s26, s17, s15
d0050d32:	eee7 caae 	vfma.f32	s25, s15, s29
d0050d36:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0050d3a:	eef0 ba6e 	vmov.f32	s23, s29
d0050d3e:	e047      	b.n	d0050dd0 <fillTriangleDitherBayer2Mode+0x5bc>
d0050d40:	eeb0 fa4d 	vmov.f32	s30, s26
d0050d44:	eef0 7a6d 	vmov.f32	s15, s27
d0050d48:	eeb0 9a4a 	vmov.f32	s18, s20
d0050d4c:	eeb0 3a4c 	vmov.f32	s6, s24
d0050d50:	eeb0 5a6c 	vmov.f32	s10, s25
d0050d54:	eef0 ea69 	vmov.f32	s29, s19
d0050d58:	eefd 1aee 	vcvt.s32.f32	s3, s29
d0050d5c:	eeb8 4ae1 	vcvt.f32.s32	s8, s3
d0050d60:	eef4 eac4 	vcmpe.f32	s29, s8
d0050d64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050d68:	dd04      	ble.n	d0050d74 <fillTriangleDitherBayer2Mode+0x560>
d0050d6a:	ee11 3a90 	vmov	r3, s3
d0050d6e:	3301      	adds	r3, #1
d0050d70:	ee01 3a90 	vmov	s3, r3
d0050d74:	eebd 4ac9 	vcvt.s32.f32	s8, s18
d0050d78:	eef8 fac4 	vcvt.f32.s32	s31, s8
d0050d7c:	eeb4 9aef 	vcmpe.f32	s18, s31
d0050d80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050d84:	dc04      	bgt.n	d0050d90 <fillTriangleDitherBayer2Mode+0x57c>
d0050d86:	ee14 3a10 	vmov	r3, s8
d0050d8a:	3b01      	subs	r3, #1
d0050d8c:	ee04 3a10 	vmov	s8, r3
d0050d90:	ee11 3a90 	vmov	r3, s3
d0050d94:	f240 14df 	movw	r4, #479	; 0x1df
d0050d98:	ea23 71e3 	bic.w	r1, r3, r3, asr #31
d0050d9c:	ee14 3a10 	vmov	r3, s8
d0050da0:	42a3      	cmp	r3, r4
d0050da2:	bfa8      	it	ge
d0050da4:	4623      	movge	r3, r4
d0050da6:	428b      	cmp	r3, r1
d0050da8:	461c      	mov	r4, r3
d0050daa:	da73      	bge.n	d0050e94 <fillTriangleDitherBayer2Mode+0x680>
d0050dac:	f10a 0a01 	add.w	sl, sl, #1
d0050db0:	9b02      	ldr	r3, [sp, #8]
d0050db2:	ee3a aa00 	vadd.f32	s20, s20, s0
d0050db6:	459a      	cmp	sl, r3
d0050db8:	ee7d da88 	vadd.f32	s27, s27, s16
d0050dbc:	ee3d da28 	vadd.f32	s26, s26, s17
d0050dc0:	ee79 9aaa 	vadd.f32	s19, s19, s21
d0050dc4:	ee7c caab 	vadd.f32	s25, s25, s23
d0050dc8:	ee3c ca0b 	vadd.f32	s24, s24, s22
d0050dcc:	f43f aecf 	beq.w	d0050b6e <fillTriangleDitherBayer2Mode+0x35a>
d0050dd0:	eeb4 aae9 	vcmpe.f32	s20, s19
d0050dd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050dd8:	dcb2      	bgt.n	d0050d40 <fillTriangleDitherBayer2Mode+0x52c>
d0050dda:	eeb0 fa4c 	vmov.f32	s30, s24
d0050dde:	eef0 7a6c 	vmov.f32	s15, s25
d0050de2:	eeb0 9a69 	vmov.f32	s18, s19
d0050de6:	eeb0 3a4d 	vmov.f32	s6, s26
d0050dea:	eeb0 5a6d 	vmov.f32	s10, s27
d0050dee:	eef0 ea4a 	vmov.f32	s29, s20
d0050df2:	e7b1      	b.n	d0050d58 <fillTriangleDitherBayer2Mode+0x544>
d0050df4:	eef0 0a65 	vmov.f32	s1, s11
d0050df8:	eef0 5a45 	vmov.f32	s11, s10
d0050dfc:	eeb0 8a47 	vmov.f32	s16, s14
d0050e00:	eeb0 5a60 	vmov.f32	s10, s1
d0050e04:	eeb0 0a62 	vmov.f32	s0, s5
d0050e08:	eeb0 4a66 	vmov.f32	s8, s13
d0050e0c:	eef4 3ac5 	vcmpe.f32	s7, s10
d0050e10:	eeb0 7a43 	vmov.f32	s14, s6
d0050e14:	eef0 2a61 	vmov.f32	s5, s3
d0050e18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050e1c:	eef0 6a42 	vmov.f32	s13, s4
d0050e20:	eeb0 3a48 	vmov.f32	s6, s16
d0050e24:	eef0 1a40 	vmov.f32	s3, s0
d0050e28:	eeb0 2a44 	vmov.f32	s4, s8
d0050e2c:	f77f ad68 	ble.w	d0050900 <fillTriangleDitherBayer2Mode+0xec>
d0050e30:	eeb0 8a46 	vmov.f32	s16, s12
d0050e34:	eeb0 0a41 	vmov.f32	s0, s2
d0050e38:	eef0 0a63 	vmov.f32	s1, s7
d0050e3c:	eeb0 4a64 	vmov.f32	s8, s9
d0050e40:	eeb0 6a43 	vmov.f32	s12, s6
d0050e44:	eeb0 1a61 	vmov.f32	s2, s3
d0050e48:	eef0 3a45 	vmov.f32	s7, s10
d0050e4c:	eef0 4a42 	vmov.f32	s9, s4
d0050e50:	eeb0 3a48 	vmov.f32	s6, s16
d0050e54:	eef0 1a40 	vmov.f32	s3, s0
d0050e58:	eeb0 5a60 	vmov.f32	s10, s1
d0050e5c:	eeb0 2a44 	vmov.f32	s4, s8
d0050e60:	e54e      	b.n	d0050900 <fillTriangleDitherBayer2Mode+0xec>
d0050e62:	eeb0 8a47 	vmov.f32	s16, s14
d0050e66:	eeb0 0a62 	vmov.f32	s0, s5
d0050e6a:	eef0 0a65 	vmov.f32	s1, s11
d0050e6e:	eeb0 4a66 	vmov.f32	s8, s13
d0050e72:	eeb0 7a46 	vmov.f32	s14, s12
d0050e76:	eef0 2a41 	vmov.f32	s5, s2
d0050e7a:	eef0 5a63 	vmov.f32	s11, s7
d0050e7e:	eef0 6a64 	vmov.f32	s13, s9
d0050e82:	eeb0 6a48 	vmov.f32	s12, s16
d0050e86:	eeb0 1a40 	vmov.f32	s2, s0
d0050e8a:	eef0 3a60 	vmov.f32	s7, s1
d0050e8e:	eef0 4a44 	vmov.f32	s9, s8
d0050e92:	e52f      	b.n	d00508f4 <fillTriangleDitherBayer2Mode+0xe0>
d0050e94:	ee39 9a6e 	vsub.f32	s18, s18, s29
d0050e98:	ed9f 4a64 	vldr	s8, [pc, #400]	; d005102c <fillTriangleDitherBayer2Mode+0x818>
d0050e9c:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0050ea0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ea4:	f340 823c 	ble.w	d0051320 <fillTriangleDitherBayer2Mode+0xb0c>
d0050ea8:	eef7 fa00 	vmov.f32	s31, #112	; 0x3f800000  1.0
d0050eac:	eef6 1a00 	vmov.f32	s3, #96	; 0x3f000000  0.5
d0050eb0:	ee77 7ac5 	vsub.f32	s15, s15, s10
d0050eb4:	ee8f 4a89 	vdiv.f32	s8, s31, s18
d0050eb8:	ee71 eaee 	vsub.f32	s29, s3, s29
d0050ebc:	ee01 1a90 	vmov	s3, r1
d0050ec0:	ee3f fa43 	vsub.f32	s30, s30, s6
d0050ec4:	eef8 1ae1 	vcvt.f32.s32	s3, s3
d0050ec8:	ee71 eaae 	vadd.f32	s29, s3, s29
d0050ecc:	ee2f 9a04 	vmul.f32	s18, s30, s8
d0050ed0:	ee67 1a84 	vmul.f32	s3, s15, s8
d0050ed4:	eeae 3a89 	vfma.f32	s6, s29, s18
d0050ed8:	eeae 5aa1 	vfma.f32	s10, s29, s3
d0050edc:	ebca 1c0a 	rsb	ip, sl, sl, lsl #4
d0050ee0:	4b53      	ldr	r3, [pc, #332]	; (d0051030 <fillTriangleDitherBayer2Mode+0x81c>)
d0050ee2:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0050ee6:	9811      	ldr	r0, [sp, #68]	; 0x44
d0050ee8:	f00a 0203 	and.w	r2, sl, #3
d0050eec:	681d      	ldr	r5, [r3, #0]
d0050eee:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0050ef2:	4850      	ldr	r0, [pc, #320]	; (d0051034 <fillTriangleDitherBayer2Mode+0x820>)
d0050ef4:	eb0a 1387 	add.w	r3, sl, r7, lsl #6
d0050ef8:	f8cd a024 	str.w	sl, [sp, #36]	; 0x24
d0050efc:	448c      	add	ip, r1
d0050efe:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
d0050f02:	18ef      	adds	r7, r5, r3
d0050f04:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d0050f08:	930a      	str	r3, [sp, #40]	; 0x28
d0050f0a:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0050f0c:	eb03 0c4c 	add.w	ip, r3, ip, lsl #1
d0050f10:	e010      	b.n	d0050f34 <fillTriangleDitherBayer2Mode+0x720>
d0050f12:	ee07 3a90 	vmov	s15, r3
d0050f16:	4419      	add	r1, r3
d0050f18:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0050f1c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050f20:	428c      	cmp	r4, r1
d0050f22:	eb0c 0c43 	add.w	ip, ip, r3, lsl #1
d0050f26:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0050f2a:	eea7 5aa1 	vfma.f32	s10, s15, s3
d0050f2e:	eea7 3a89 	vfma.f32	s6, s15, s18
d0050f32:	db6b      	blt.n	d005100c <fillTriangleDitherBayer2Mode+0x7f8>
d0050f34:	eba4 0e01 	sub.w	lr, r4, r1
d0050f38:	eeb4 5ace 	vcmpe.f32	s10, s28
d0050f3c:	f10e 0301 	add.w	r3, lr, #1
d0050f40:	2b30      	cmp	r3, #48	; 0x30
d0050f42:	bfa8      	it	ge
d0050f44:	2330      	movge	r3, #48	; 0x30
d0050f46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f4a:	d9e2      	bls.n	d0050f12 <fillTriangleDitherBayer2Mode+0x6fe>
d0050f4c:	f1be 0f00 	cmp.w	lr, #0
d0050f50:	eec3 7a05 	vdiv.f32	s15, s6, s10
d0050f54:	dd72      	ble.n	d005103c <fillTriangleDitherBayer2Mode+0x828>
d0050f56:	1e5a      	subs	r2, r3, #1
d0050f58:	ee04 2a10 	vmov	s8, r2
d0050f5c:	eeb0 fa45 	vmov.f32	s30, s10
d0050f60:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0050f64:	eea4 fa21 	vfma.f32	s30, s8, s3
d0050f68:	eeb4 face 	vcmpe.f32	s30, s28
d0050f6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f70:	dd65      	ble.n	d005103e <fillTriangleDitherBayer2Mode+0x82a>
d0050f72:	eef0 fa43 	vmov.f32	s31, s6
d0050f76:	4a30      	ldr	r2, [pc, #192]	; (d0051038 <fillTriangleDitherBayer2Mode+0x824>)
d0050f78:	ea4f 0983 	mov.w	r9, r3, lsl #2
d0050f7c:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d0050f80:	eee4 fa09 	vfma.f32	s31, s8, s18
d0050f84:	ed92 4a00 	vldr	s8, [r2]
d0050f88:	9a01      	ldr	r2, [sp, #4]
d0050f8a:	2a0f      	cmp	r2, #15
d0050f8c:	eecf ea8f 	vdiv.f32	s29, s31, s30
d0050f90:	eeb6 fa00 	vmov.f32	s30, #96	; 0x3f000000  0.5
d0050f94:	ee7e eae7 	vsub.f32	s29, s29, s15
d0050f98:	ee6e ea84 	vmul.f32	s29, s29, s8
d0050f9c:	dd58      	ble.n	d0051050 <fillTriangleDitherBayer2Mode+0x83c>
d0050f9e:	f1ac 0602 	sub.w	r6, ip, #2
d0050fa2:	2000      	movs	r0, #0
d0050fa4:	fe87 4a82 	vmaxnm.f32	s8, s15, s4
d0050fa8:	fe84 4a60 	vminnm.f32	s8, s8, s1
d0050fac:	ee34 4a0f 	vadd.f32	s8, s8, s30
d0050fb0:	eb00 0280 	add.w	r2, r0, r0, lsl #2
d0050fb4:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0050fb8:	ee77 7aae 	vadd.f32	s15, s15, s29
d0050fbc:	0195      	lsls	r5, r2, #6
d0050fbe:	3001      	adds	r0, #1
d0050fc0:	eebc 4ac4 	vcvt.u32.f32	s8, s8
d0050fc4:	ee14 2a10 	vmov	r2, s8
d0050fc8:	b292      	uxth	r2, r2
d0050fca:	4590      	cmp	r8, r2
d0050fcc:	d903      	bls.n	d0050fd6 <fillTriangleDitherBayer2Mode+0x7c2>
d0050fce:	8032      	strh	r2, [r6, #0]
d0050fd0:	f04f 0210 	mov.w	r2, #16
d0050fd4:	557a      	strb	r2, [r7, r5]
d0050fd6:	4283      	cmp	r3, r0
d0050fd8:	dce4      	bgt.n	d0050fa4 <fillTriangleDitherBayer2Mode+0x790>
d0050fda:	f1be 0f00 	cmp.w	lr, #0
d0050fde:	eb09 0203 	add.w	r2, r9, r3
d0050fe2:	ea4f 0043 	mov.w	r0, r3, lsl #1
d0050fe6:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0050fea:	bfbc      	itt	lt
d0050fec:	2002      	movlt	r0, #2
d0050fee:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0050ff2:	4484      	add	ip, r0
d0050ff4:	4417      	add	r7, r2
d0050ff6:	ee07 3a90 	vmov	s15, r3
d0050ffa:	4419      	add	r1, r3
d0050ffc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051000:	428c      	cmp	r4, r1
d0051002:	eea7 5aa1 	vfma.f32	s10, s15, s3
d0051006:	eea7 3a89 	vfma.f32	s6, s15, s18
d005100a:	da93      	bge.n	d0050f34 <fillTriangleDitherBayer2Mode+0x720>
d005100c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
d0051010:	e6cc      	b.n	d0050dac <fillTriangleDitherBayer2Mode+0x598>
d0051012:	bf00      	nop
d0051014:	d005b17c 	.word	0xd005b17c
d0051018:	d005b180 	.word	0xd005b180
d005101c:	d005b184 	.word	0xd005b184
d0051020:	33d6bf95 	.word	0x33d6bf95
d0051024:	00000000 	.word	0x00000000
d0051028:	477fff00 	.word	0x477fff00
d005102c:	38d1b717 	.word	0x38d1b717
d0051030:	d00f5670 	.word	0xd00f5670
d0051034:	d0058360 	.word	0xd0058360
d0051038:	d0058380 	.word	0xd0058380
d005103c:	d1db      	bne.n	d0050ff6 <fillTriangleDitherBayer2Mode+0x7e2>
d005103e:	9a01      	ldr	r2, [sp, #4]
d0051040:	eef0 ea42 	vmov.f32	s29, s4
d0051044:	eeb6 fa00 	vmov.f32	s30, #96	; 0x3f000000  0.5
d0051048:	ea4f 0983 	mov.w	r9, r3, lsl #2
d005104c:	2a0f      	cmp	r2, #15
d005104e:	dca6      	bgt.n	d0050f9e <fillTriangleDitherBayer2Mode+0x78a>
d0051050:	2a00      	cmp	r2, #0
d0051052:	f340 8147 	ble.w	d00512e4 <fillTriangleDitherBayer2Mode+0xad0>
d0051056:	f1ac 0802 	sub.w	r8, ip, #2
d005105a:	940e      	str	r4, [sp, #56]	; 0x38
d005105c:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
d0051060:	2000      	movs	r0, #0
d0051062:	9c05      	ldr	r4, [sp, #20]
d0051064:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
d0051068:	fe87 4a82 	vmaxnm.f32	s8, s15, s4
d005106c:	fe84 4a60 	vminnm.f32	s8, s8, s1
d0051070:	ee34 4a0f 	vadd.f32	s8, s8, s30
d0051074:	f838 bf02 	ldrh.w	fp, [r8, #2]!
d0051078:	180e      	adds	r6, r1, r0
d005107a:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d005107e:	ee77 7aae 	vadd.f32	s15, s15, s29
d0051082:	3001      	adds	r0, #1
d0051084:	eebc 4ac4 	vcvt.u32.f32	s8, s8
d0051088:	f006 0603 	and.w	r6, r6, #3
d005108c:	01ad      	lsls	r5, r5, #6
d005108e:	ee14 2a10 	vmov	r2, s8
d0051092:	b292      	uxth	r2, r2
d0051094:	4593      	cmp	fp, r2
d0051096:	d908      	bls.n	d00510aa <fillTriangleDitherBayer2Mode+0x896>
d0051098:	f8a8 2000 	strh.w	r2, [r8]
d005109c:	f81c 2006 	ldrb.w	r2, [ip, r6]
d00510a0:	42a2      	cmp	r2, r4
d00510a2:	bfac      	ite	ge
d00510a4:	4652      	movge	r2, sl
d00510a6:	2210      	movlt	r2, #16
d00510a8:	557a      	strb	r2, [r7, r5]
d00510aa:	4298      	cmp	r0, r3
d00510ac:	dbdc      	blt.n	d0051068 <fillTriangleDitherBayer2Mode+0x854>
d00510ae:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d00510b0:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
d00510b4:	e791      	b.n	d0050fda <fillTriangleDitherBayer2Mode+0x7c6>
d00510b6:	ee34 4a4b 	vsub.f32	s8, s8, s22
d00510ba:	eeb4 4ae0 	vcmpe.f32	s8, s1
d00510be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00510c2:	f340 8132 	ble.w	d005132a <fillTriangleDitherBayer2Mode+0xb16>
d00510c6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00510ca:	ee3c 9a45 	vsub.f32	s18, s24, s10
d00510ce:	ee79 9ac3 	vsub.f32	s19, s19, s6
d00510d2:	eec7 5a84 	vdiv.f32	s11, s15, s8
d00510d6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00510da:	ee37 bacb 	vsub.f32	s22, s15, s22
d00510de:	ee07 1a90 	vmov	s15, r1
d00510e2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00510e6:	ee77 7a8b 	vadd.f32	s15, s15, s22
d00510ea:	ee29 9a25 	vmul.f32	s18, s18, s11
d00510ee:	ee69 9aa5 	vmul.f32	s19, s19, s11
d00510f2:	eea7 5a89 	vfma.f32	s10, s15, s18
d00510f6:	eea7 3aa9 	vfma.f32	s6, s15, s19
d00510fa:	ebca 1c0a 	rsb	ip, sl, sl, lsl #4
d00510fe:	4b8d      	ldr	r3, [pc, #564]	; (d0051334 <fillTriangleDitherBayer2Mode+0xb20>)
d0051100:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0051104:	9809      	ldr	r0, [sp, #36]	; 0x24
d0051106:	f00a 0203 	and.w	r2, sl, #3
d005110a:	681d      	ldr	r5, [r3, #0]
d005110c:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0051110:	4889      	ldr	r0, [pc, #548]	; (d0051338 <fillTriangleDitherBayer2Mode+0xb24>)
d0051112:	eb0a 1387 	add.w	r3, sl, r7, lsl #6
d0051116:	f8cd a00c 	str.w	sl, [sp, #12]
d005111a:	448c      	add	ip, r1
d005111c:	f8dd a028 	ldr.w	sl, [sp, #40]	; 0x28
d0051120:	18ef      	adds	r7, r5, r3
d0051122:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d0051126:	9304      	str	r3, [sp, #16]
d0051128:	9b08      	ldr	r3, [sp, #32]
d005112a:	eb03 0c4c 	add.w	ip, r3, ip, lsl #1
d005112e:	e010      	b.n	d0051152 <fillTriangleDitherBayer2Mode+0x93e>
d0051130:	ee07 3a90 	vmov	s15, r3
d0051134:	4419      	add	r1, r3
d0051136:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d005113a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005113e:	428c      	cmp	r4, r1
d0051140:	eb0c 0c43 	add.w	ip, ip, r3, lsl #1
d0051144:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0051148:	eea7 5a89 	vfma.f32	s10, s15, s18
d005114c:	eea7 3aa9 	vfma.f32	s6, s15, s19
d0051150:	db6b      	blt.n	d005122a <fillTriangleDitherBayer2Mode+0xa16>
d0051152:	eba4 0e01 	sub.w	lr, r4, r1
d0051156:	eeb4 5ae1 	vcmpe.f32	s10, s3
d005115a:	f10e 0301 	add.w	r3, lr, #1
d005115e:	2b30      	cmp	r3, #48	; 0x30
d0051160:	bfa8      	it	ge
d0051162:	2330      	movge	r3, #48	; 0x30
d0051164:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051168:	d9e2      	bls.n	d0051130 <fillTriangleDitherBayer2Mode+0x91c>
d005116a:	f1be 0f00 	cmp.w	lr, #0
d005116e:	eec3 7a05 	vdiv.f32	s15, s6, s10
d0051172:	dd5d      	ble.n	d0051230 <fillTriangleDitherBayer2Mode+0xa1c>
d0051174:	1e5a      	subs	r2, r3, #1
d0051176:	ee05 2a90 	vmov	s11, r2
d005117a:	eeb0 ba45 	vmov.f32	s22, s10
d005117e:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d0051182:	eea5 ba89 	vfma.f32	s22, s11, s18
d0051186:	eeb4 bae1 	vcmpe.f32	s22, s3
d005118a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005118e:	dd50      	ble.n	d0051232 <fillTriangleDitherBayer2Mode+0xa1e>
d0051190:	eeb0 ca43 	vmov.f32	s24, s6
d0051194:	4a69      	ldr	r2, [pc, #420]	; (d005133c <fillTriangleDitherBayer2Mode+0xb28>)
d0051196:	ea4f 0983 	mov.w	r9, r3, lsl #2
d005119a:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d005119e:	eea5 caa9 	vfma.f32	s24, s11, s19
d00511a2:	edd2 5a00 	vldr	s11, [r2]
d00511a6:	9a01      	ldr	r2, [sp, #4]
d00511a8:	2a0f      	cmp	r2, #15
d00511aa:	ee8c 4a0b 	vdiv.f32	s8, s24, s22
d00511ae:	eeb6 ba00 	vmov.f32	s22, #96	; 0x3f000000  0.5
d00511b2:	ee34 4a67 	vsub.f32	s8, s8, s15
d00511b6:	ee24 4a25 	vmul.f32	s8, s8, s11
d00511ba:	dd43      	ble.n	d0051244 <fillTriangleDitherBayer2Mode+0xa30>
d00511bc:	f1ac 0602 	sub.w	r6, ip, #2
d00511c0:	2200      	movs	r2, #0
d00511c2:	fec7 5aa3 	vmaxnm.f32	s11, s15, s7
d00511c6:	fec5 5ac2 	vminnm.f32	s11, s11, s4
d00511ca:	ee75 5a8b 	vadd.f32	s11, s11, s22
d00511ce:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00511d2:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d00511d6:	ee77 7a84 	vadd.f32	s15, s15, s8
d00511da:	0185      	lsls	r5, r0, #6
d00511dc:	3201      	adds	r2, #1
d00511de:	eefc 5ae5 	vcvt.u32.f32	s11, s11
d00511e2:	ee15 0a90 	vmov	r0, s11
d00511e6:	b280      	uxth	r0, r0
d00511e8:	4580      	cmp	r8, r0
d00511ea:	d903      	bls.n	d00511f4 <fillTriangleDitherBayer2Mode+0x9e0>
d00511ec:	8030      	strh	r0, [r6, #0]
d00511ee:	f04f 0010 	mov.w	r0, #16
d00511f2:	5578      	strb	r0, [r7, r5]
d00511f4:	4293      	cmp	r3, r2
d00511f6:	dce4      	bgt.n	d00511c2 <fillTriangleDitherBayer2Mode+0x9ae>
d00511f8:	f1be 0f00 	cmp.w	lr, #0
d00511fc:	eb09 0203 	add.w	r2, r9, r3
d0051200:	ea4f 0043 	mov.w	r0, r3, lsl #1
d0051204:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0051208:	bfbc      	itt	lt
d005120a:	2002      	movlt	r0, #2
d005120c:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0051210:	4484      	add	ip, r0
d0051212:	4417      	add	r7, r2
d0051214:	ee07 3a90 	vmov	s15, r3
d0051218:	4419      	add	r1, r3
d005121a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005121e:	428c      	cmp	r4, r1
d0051220:	eea7 5a89 	vfma.f32	s10, s15, s18
d0051224:	eea7 3aa9 	vfma.f32	s6, s15, s19
d0051228:	da93      	bge.n	d0051152 <fillTriangleDitherBayer2Mode+0x93e>
d005122a:	f8dd a00c 	ldr.w	sl, [sp, #12]
d005122e:	e47b      	b.n	d0050b28 <fillTriangleDitherBayer2Mode+0x314>
d0051230:	d1f0      	bne.n	d0051214 <fillTriangleDitherBayer2Mode+0xa00>
d0051232:	9a01      	ldr	r2, [sp, #4]
d0051234:	eeb0 4a63 	vmov.f32	s8, s7
d0051238:	eeb6 ba00 	vmov.f32	s22, #96	; 0x3f000000  0.5
d005123c:	ea4f 0983 	mov.w	r9, r3, lsl #2
d0051240:	2a0f      	cmp	r2, #15
d0051242:	dcbb      	bgt.n	d00511bc <fillTriangleDitherBayer2Mode+0x9a8>
d0051244:	2a00      	cmp	r2, #0
d0051246:	dd2f      	ble.n	d00512a8 <fillTriangleDitherBayer2Mode+0xa94>
d0051248:	f1ac 0802 	sub.w	r8, ip, #2
d005124c:	9406      	str	r4, [sp, #24]
d005124e:	f8cd c01c 	str.w	ip, [sp, #28]
d0051252:	2200      	movs	r2, #0
d0051254:	9c05      	ldr	r4, [sp, #20]
d0051256:	f8dd c010 	ldr.w	ip, [sp, #16]
d005125a:	fec7 5aa3 	vmaxnm.f32	s11, s15, s7
d005125e:	fec5 5ac2 	vminnm.f32	s11, s11, s4
d0051262:	ee75 5a8b 	vadd.f32	s11, s11, s22
d0051266:	f838 bf02 	ldrh.w	fp, [r8, #2]!
d005126a:	188e      	adds	r6, r1, r2
d005126c:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0051270:	ee77 7a84 	vadd.f32	s15, s15, s8
d0051274:	3201      	adds	r2, #1
d0051276:	eefc 5ae5 	vcvt.u32.f32	s11, s11
d005127a:	f006 0603 	and.w	r6, r6, #3
d005127e:	01ad      	lsls	r5, r5, #6
d0051280:	ee15 0a90 	vmov	r0, s11
d0051284:	b280      	uxth	r0, r0
d0051286:	4583      	cmp	fp, r0
d0051288:	d908      	bls.n	d005129c <fillTriangleDitherBayer2Mode+0xa88>
d005128a:	f8a8 0000 	strh.w	r0, [r8]
d005128e:	f81c 0006 	ldrb.w	r0, [ip, r6]
d0051292:	42a0      	cmp	r0, r4
d0051294:	bfac      	ite	ge
d0051296:	4650      	movge	r0, sl
d0051298:	2010      	movlt	r0, #16
d005129a:	5578      	strb	r0, [r7, r5]
d005129c:	4293      	cmp	r3, r2
d005129e:	dcdc      	bgt.n	d005125a <fillTriangleDitherBayer2Mode+0xa46>
d00512a0:	9c06      	ldr	r4, [sp, #24]
d00512a2:	f8dd c01c 	ldr.w	ip, [sp, #28]
d00512a6:	e7a7      	b.n	d00511f8 <fillTriangleDitherBayer2Mode+0x9e4>
d00512a8:	f1ac 0602 	sub.w	r6, ip, #2
d00512ac:	2200      	movs	r2, #0
d00512ae:	fec7 5aa3 	vmaxnm.f32	s11, s15, s7
d00512b2:	fec5 5ac2 	vminnm.f32	s11, s11, s4
d00512b6:	ee75 5a8b 	vadd.f32	s11, s11, s22
d00512ba:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00512be:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d00512c2:	ee77 7a84 	vadd.f32	s15, s15, s8
d00512c6:	0185      	lsls	r5, r0, #6
d00512c8:	3201      	adds	r2, #1
d00512ca:	eefc 5ae5 	vcvt.u32.f32	s11, s11
d00512ce:	ee15 0a90 	vmov	r0, s11
d00512d2:	b280      	uxth	r0, r0
d00512d4:	4580      	cmp	r8, r0
d00512d6:	d902      	bls.n	d00512de <fillTriangleDitherBayer2Mode+0xaca>
d00512d8:	8030      	strh	r0, [r6, #0]
d00512da:	f807 a005 	strb.w	sl, [r7, r5]
d00512de:	4293      	cmp	r3, r2
d00512e0:	dce5      	bgt.n	d00512ae <fillTriangleDitherBayer2Mode+0xa9a>
d00512e2:	e789      	b.n	d00511f8 <fillTriangleDitherBayer2Mode+0x9e4>
d00512e4:	f1ac 0602 	sub.w	r6, ip, #2
d00512e8:	2000      	movs	r0, #0
d00512ea:	fe87 4a82 	vmaxnm.f32	s8, s15, s4
d00512ee:	fe84 4a60 	vminnm.f32	s8, s8, s1
d00512f2:	ee34 4a0f 	vadd.f32	s8, s8, s30
d00512f6:	eb00 0280 	add.w	r2, r0, r0, lsl #2
d00512fa:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d00512fe:	ee77 7aae 	vadd.f32	s15, s15, s29
d0051302:	0195      	lsls	r5, r2, #6
d0051304:	3001      	adds	r0, #1
d0051306:	eebc 4ac4 	vcvt.u32.f32	s8, s8
d005130a:	ee14 2a10 	vmov	r2, s8
d005130e:	b292      	uxth	r2, r2
d0051310:	4590      	cmp	r8, r2
d0051312:	d902      	bls.n	d005131a <fillTriangleDitherBayer2Mode+0xb06>
d0051314:	8032      	strh	r2, [r6, #0]
d0051316:	f807 a005 	strb.w	sl, [r7, r5]
d005131a:	4283      	cmp	r3, r0
d005131c:	dce5      	bgt.n	d00512ea <fillTriangleDitherBayer2Mode+0xad6>
d005131e:	e65c      	b.n	d0050fda <fillTriangleDitherBayer2Mode+0x7c6>
d0051320:	eeb0 9a42 	vmov.f32	s18, s4
d0051324:	eef0 1a42 	vmov.f32	s3, s4
d0051328:	e5d8      	b.n	d0050edc <fillTriangleDitherBayer2Mode+0x6c8>
d005132a:	eef0 9a63 	vmov.f32	s19, s7
d005132e:	eeb0 9a63 	vmov.f32	s18, s7
d0051332:	e6e2      	b.n	d00510fa <fillTriangleDitherBayer2Mode+0x8e6>
d0051334:	d00f5670 	.word	0xd00f5670
d0051338:	d0058360 	.word	0xd0058360
d005133c:	d0058380 	.word	0xd0058380

d0051340 <vec3Add>:
d0051340:	ee30 0a21 	vadd.f32	s0, s0, s3
d0051344:	b08e      	sub	sp, #56	; 0x38
d0051346:	ee70 0a82 	vadd.f32	s1, s1, s4
d005134a:	ee31 1a22 	vadd.f32	s2, s2, s5
d005134e:	b00e      	add	sp, #56	; 0x38
d0051350:	4770      	bx	lr
d0051352:	bf00      	nop

d0051354 <vec3Scale>:
d0051354:	ee20 0a21 	vmul.f32	s0, s0, s3
d0051358:	b08c      	sub	sp, #48	; 0x30
d005135a:	ee61 0aa0 	vmul.f32	s1, s3, s1
d005135e:	ee21 1a81 	vmul.f32	s2, s3, s2
d0051362:	b00c      	add	sp, #48	; 0x30
d0051364:	4770      	bx	lr
d0051366:	bf00      	nop

d0051368 <vec3Dot>:
d0051368:	ee20 2a82 	vmul.f32	s4, s1, s4
d005136c:	b086      	sub	sp, #24
d005136e:	eea0 2a21 	vfma.f32	s4, s0, s3
d0051372:	eea1 2a22 	vfma.f32	s4, s2, s5
d0051376:	eeb0 0a42 	vmov.f32	s0, s4
d005137a:	b006      	add	sp, #24
d005137c:	4770      	bx	lr
d005137e:	bf00      	nop

d0051380 <vec3Cross>:
d0051380:	eeb0 7a60 	vmov.f32	s14, s1
d0051384:	b08e      	sub	sp, #56	; 0x38
d0051386:	eef0 7a40 	vmov.f32	s15, s0
d005138a:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d005138e:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d0051392:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0051396:	eee1 0a21 	vfma.f32	s1, s2, s3
d005139a:	eee7 6a82 	vfma.f32	s13, s15, s4
d005139e:	eea7 0a22 	vfma.f32	s0, s14, s5
d00513a2:	eeb0 1a66 	vmov.f32	s2, s13
d00513a6:	b00e      	add	sp, #56	; 0x38
d00513a8:	4770      	bx	lr
d00513aa:	bf00      	nop

d00513ac <vec3Normalize>:
d00513ac:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00513b0:	ed9f 7a22 	vldr	s14, [pc, #136]	; d005143c <vec3Normalize+0x90>
d00513b4:	b08c      	sub	sp, #48	; 0x30
d00513b6:	eee0 7a00 	vfma.f32	s15, s0, s0
d00513ba:	eee1 7a01 	vfma.f32	s15, s2, s2
d00513be:	eef4 7ac7 	vcmpe.f32	s15, s14
d00513c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00513c6:	d934      	bls.n	d0051432 <vec3Normalize+0x86>
d00513c8:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0051440 <vec3Normalize+0x94>
d00513cc:	eef4 7a47 	vcmp.f32	s15, s14
d00513d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00513d4:	dd06      	ble.n	d00513e4 <vec3Normalize+0x38>
d00513d6:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0051444 <vec3Normalize+0x98>
d00513da:	eef4 7a47 	vcmp.f32	s15, s14
d00513de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00513e2:	d418      	bmi.n	d0051416 <vec3Normalize+0x6a>
d00513e4:	ee17 2a90 	vmov	r2, s15
d00513e8:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00513ec:	4b16      	ldr	r3, [pc, #88]	; (d0051448 <vec3Normalize+0x9c>)
d00513ee:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d00513f2:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00513f6:	ee67 7a86 	vmul.f32	s15, s15, s12
d00513fa:	ee06 3a90 	vmov	s13, r3
d00513fe:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0051402:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0051406:	ee67 7a26 	vmul.f32	s15, s14, s13
d005140a:	ee27 0a80 	vmul.f32	s0, s15, s0
d005140e:	ee67 0aa0 	vmul.f32	s1, s15, s1
d0051412:	ee27 1a81 	vmul.f32	s2, s15, s2
d0051416:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d005141a:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d005141e:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d0051422:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0051426:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d005142a:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d005142e:	b00c      	add	sp, #48	; 0x30
d0051430:	4770      	bx	lr
d0051432:	2300      	movs	r3, #0
d0051434:	9309      	str	r3, [sp, #36]	; 0x24
d0051436:	930a      	str	r3, [sp, #40]	; 0x28
d0051438:	930b      	str	r3, [sp, #44]	; 0x2c
d005143a:	e7f2      	b.n	d0051422 <vec3Normalize+0x76>
d005143c:	358637bd 	.word	0x358637bd
d0051440:	3f7fbe77 	.word	0x3f7fbe77
d0051444:	3f8020c5 	.word	0x3f8020c5
d0051448:	5f3759df 	.word	0x5f3759df

d005144c <rotateAroundAxis>:
d005144c:	ee62 7a02 	vmul.f32	s15, s4, s4
d0051450:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0051598 <rotateAroundAxis+0x14c>
d0051454:	b500      	push	{lr}
d0051456:	eee1 7aa1 	vfma.f32	s15, s3, s3
d005145a:	ed2d 8b0c 	vpush	{d8-d13}
d005145e:	eef0 ca40 	vmov.f32	s25, s0
d0051462:	b08f      	sub	sp, #60	; 0x3c
d0051464:	eeb0 ca60 	vmov.f32	s24, s1
d0051468:	eef0 ba41 	vmov.f32	s23, s2
d005146c:	eee2 7aa2 	vfma.f32	s15, s5, s5
d0051470:	eeb0 da43 	vmov.f32	s26, s6
d0051474:	eef4 7ac7 	vcmpe.f32	s15, s14
d0051478:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005147c:	d97c      	bls.n	d0051578 <rotateAroundAxis+0x12c>
d005147e:	ed9f 7a47 	vldr	s14, [pc, #284]	; d005159c <rotateAroundAxis+0x150>
d0051482:	eef4 7a47 	vcmp.f32	s15, s14
d0051486:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005148a:	dd55      	ble.n	d0051538 <rotateAroundAxis+0xec>
d005148c:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00515a0 <rotateAroundAxis+0x154>
d0051490:	eef4 7a47 	vcmp.f32	s15, s14
d0051494:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051498:	d54e      	bpl.n	d0051538 <rotateAroundAxis+0xec>
d005149a:	eef0 da42 	vmov.f32	s27, s4
d005149e:	eeb0 9a61 	vmov.f32	s18, s3
d00514a2:	eeb0 8a62 	vmov.f32	s16, s5
d00514a6:	ee60 8a82 	vmul.f32	s17, s1, s4
d00514aa:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d00514ae:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d00514b2:	eeec 8a89 	vfma.f32	s17, s25, s18
d00514b6:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d00514ba:	eeeb 5aad 	vfma.f32	s11, s23, s27
d00514be:	eeac 6a88 	vfma.f32	s12, s25, s16
d00514c2:	eeec 7a09 	vfma.f32	s15, s24, s18
d00514c6:	eeeb 8a88 	vfma.f32	s17, s23, s16
d00514ca:	eeb0 ba65 	vmov.f32	s22, s11
d00514ce:	eeb0 aa46 	vmov.f32	s20, s12
d00514d2:	eef0 aa67 	vmov.f32	s21, s15
d00514d6:	eeb0 0a4d 	vmov.f32	s0, s26
d00514da:	f005 ff59 	bl	d0057390 <cosf>
d00514de:	eef0 9a40 	vmov.f32	s19, s0
d00514e2:	eeb0 0a4d 	vmov.f32	s0, s26
d00514e6:	f006 f937 	bl	d0057758 <sinf>
d00514ea:	ee60 5a0b 	vmul.f32	s11, s0, s22
d00514ee:	ee20 6a0a 	vmul.f32	s12, s0, s20
d00514f2:	ee60 7a2a 	vmul.f32	s15, s0, s21
d00514f6:	eee9 5aac 	vfma.f32	s11, s19, s25
d00514fa:	eea9 6a8c 	vfma.f32	s12, s19, s24
d00514fe:	eee9 7aab 	vfma.f32	s15, s19, s23
d0051502:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0051506:	ee29 9a28 	vmul.f32	s18, s18, s17
d005150a:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d005150e:	ee76 9ae9 	vsub.f32	s19, s13, s19
d0051512:	ee28 8a28 	vmul.f32	s16, s16, s17
d0051516:	eeb0 0a65 	vmov.f32	s0, s11
d005151a:	eef0 0a46 	vmov.f32	s1, s12
d005151e:	eeb0 1a67 	vmov.f32	s2, s15
d0051522:	eea9 0a89 	vfma.f32	s0, s19, s18
d0051526:	eee9 0a87 	vfma.f32	s1, s19, s14
d005152a:	eea9 1a88 	vfma.f32	s2, s19, s16
d005152e:	b00f      	add	sp, #60	; 0x3c
d0051530:	ecbd 8b0c 	vpop	{d8-d13}
d0051534:	f85d fb04 	ldr.w	pc, [sp], #4
d0051538:	ee17 2a90 	vmov	r2, s15
d005153c:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0051540:	4b18      	ldr	r3, [pc, #96]	; (d00515a4 <rotateAroundAxis+0x158>)
d0051542:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0051546:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d005154a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005154e:	ee07 3a10 	vmov	s14, r3
d0051552:	ee67 7a87 	vmul.f32	s15, s15, s14
d0051556:	eea7 8a67 	vfms.f32	s16, s14, s15
d005155a:	ee27 8a08 	vmul.f32	s16, s14, s16
d005155e:	ee62 da08 	vmul.f32	s27, s4, s16
d0051562:	ee21 9a88 	vmul.f32	s18, s3, s16
d0051566:	ee22 8a88 	vmul.f32	s16, s5, s16
d005156a:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d005156e:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d0051572:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0051576:	e79c      	b.n	d00514b2 <rotateAroundAxis+0x66>
d0051578:	eddf 8a0b 	vldr	s17, [pc, #44]	; d00515a8 <rotateAroundAxis+0x15c>
d005157c:	eef0 aa68 	vmov.f32	s21, s17
d0051580:	eeb0 aa68 	vmov.f32	s20, s17
d0051584:	eeb0 ba68 	vmov.f32	s22, s17
d0051588:	eeb0 8a68 	vmov.f32	s16, s17
d005158c:	eef0 da68 	vmov.f32	s27, s17
d0051590:	eeb0 9a68 	vmov.f32	s18, s17
d0051594:	e79f      	b.n	d00514d6 <rotateAroundAxis+0x8a>
d0051596:	bf00      	nop
d0051598:	358637bd 	.word	0x358637bd
d005159c:	3f7fbe77 	.word	0x3f7fbe77
d00515a0:	3f8020c5 	.word	0x3f8020c5
d00515a4:	5f3759df 	.word	0x5f3759df
d00515a8:	00000000 	.word	0x00000000

d00515ac <vec3>:
d00515ac:	b088      	sub	sp, #32
d00515ae:	b008      	add	sp, #32
d00515b0:	4770      	bx	lr
d00515b2:	bf00      	nop

d00515b4 <degrees>:
d00515b4:	eddf 7a02 	vldr	s15, [pc, #8]	; d00515c0 <degrees+0xc>
d00515b8:	ee20 0a27 	vmul.f32	s0, s0, s15
d00515bc:	4770      	bx	lr
d00515be:	bf00      	nop
d00515c0:	3c8efa35 	.word	0x3c8efa35

d00515c4 <powfxt>:
d00515c4:	eef5 0a40 	vcmp.f32	s1, #0.0
d00515c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00515cc:	d040      	beq.n	d0051650 <powfxt+0x8c>
d00515ce:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00515d2:	eef0 7a40 	vmov.f32	s15, s0
d00515d6:	eef4 0a47 	vcmp.f32	s1, s14
d00515da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00515de:	d034      	beq.n	d005164a <powfxt+0x86>
d00515e0:	eeb4 0a47 	vcmp.f32	s0, s14
d00515e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00515e8:	d02f      	beq.n	d005164a <powfxt+0x86>
d00515ea:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00515ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00515f2:	d030      	beq.n	d0051656 <powfxt+0x92>
d00515f4:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00515f8:	eef4 0a66 	vcmp.f32	s1, s13
d00515fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051600:	d042      	beq.n	d0051688 <powfxt+0xc4>
d0051602:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d0051606:	eef4 0a66 	vcmp.f32	s1, s13
d005160a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005160e:	d03e      	beq.n	d005168e <powfxt+0xca>
d0051610:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0051614:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0051618:	eeb4 6a60 	vcmp.f32	s12, s1
d005161c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051620:	d022      	beq.n	d0051668 <powfxt+0xa4>
d0051622:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0051626:	b500      	push	{lr}
d0051628:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005162c:	b083      	sub	sp, #12
d005162e:	edcd 0a01 	vstr	s1, [sp, #4]
d0051632:	d431      	bmi.n	d0051698 <powfxt+0xd4>
d0051634:	f005 fffe 	bl	d0057634 <logf>
d0051638:	eddd 0a01 	vldr	s1, [sp, #4]
d005163c:	ee20 0a20 	vmul.f32	s0, s0, s1
d0051640:	b003      	add	sp, #12
d0051642:	f85d eb04 	ldr.w	lr, [sp], #4
d0051646:	f005 bf7f 	b.w	d0057548 <expf>
d005164a:	eeb0 0a67 	vmov.f32	s0, s15
d005164e:	4770      	bx	lr
d0051650:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051654:	4770      	bx	lr
d0051656:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d005165a:	ed9f 0a15 	vldr	s0, [pc, #84]	; d00516b0 <powfxt+0xec>
d005165e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051662:	fe37 0a80 	vselgt.f32	s0, s15, s0
d0051666:	4770      	bx	lr
d0051668:	ee16 3a90 	vmov	r3, s13
d005166c:	2b00      	cmp	r3, #0
d005166e:	db18      	blt.n	d00516a2 <powfxt+0xde>
d0051670:	d01b      	beq.n	d00516aa <powfxt+0xe6>
d0051672:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051676:	07da      	lsls	r2, r3, #31
d0051678:	bf48      	it	mi
d005167a:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d005167e:	085b      	lsrs	r3, r3, #1
d0051680:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0051684:	d1f7      	bne.n	d0051676 <powfxt+0xb2>
d0051686:	4770      	bx	lr
d0051688:	eeb1 0ae7 	vsqrt.f32	s0, s15
d005168c:	4770      	bx	lr
d005168e:	eef1 6ac0 	vsqrt.f32	s13, s0
d0051692:	ee87 0a26 	vdiv.f32	s0, s14, s13
d0051696:	4770      	bx	lr
d0051698:	ed9f 0a06 	vldr	s0, [pc, #24]	; d00516b4 <powfxt+0xf0>
d005169c:	b003      	add	sp, #12
d005169e:	f85d fb04 	ldr.w	pc, [sp], #4
d00516a2:	eec7 7a00 	vdiv.f32	s15, s14, s0
d00516a6:	425b      	negs	r3, r3
d00516a8:	e7e3      	b.n	d0051672 <powfxt+0xae>
d00516aa:	eeb0 0a47 	vmov.f32	s0, s14
d00516ae:	4770      	bx	lr
d00516b0:	7f800000 	.word	0x7f800000
d00516b4:	7fc00000 	.word	0x7fc00000

d00516b8 <worldClear>:
d00516b8:	b508      	push	{r3, lr}
d00516ba:	f44f 4200 	mov.w	r2, #32768	; 0x8000
d00516be:	2100      	movs	r1, #0
d00516c0:	4805      	ldr	r0, [pc, #20]	; (d00516d8 <worldClear+0x20>)
d00516c2:	f004 fd2d 	bl	d0056120 <memset>
d00516c6:	f001 fdbd 	bl	d0053244 <lightsClear>
d00516ca:	f003 ffe3 	bl	d0055694 <sb3dParticlesClear>
d00516ce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d00516d2:	f002 bb0b 	b.w	d0053cec <initClipScratch>
d00516d6:	bf00      	nop
d00516d8:	d00f5680 	.word	0xd00f5680

d00516dc <cameraNormalize>:
d00516dc:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d00516e0:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d00516e4:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00516e8:	b510      	push	{r4, lr}
d00516ea:	4604      	mov	r4, r0
d00516ec:	f7ff fe5e 	bl	d00513ac <vec3Normalize>
d00516f0:	eeb0 7a60 	vmov.f32	s14, s1
d00516f4:	eef0 7a41 	vmov.f32	s15, s2
d00516f8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00516fc:	ed94 0a06 	vldr	s0, [r4, #24]
d0051700:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0051704:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0051708:	edd4 0a07 	vldr	s1, [r4, #28]
d005170c:	ed94 1a08 	vldr	s2, [r4, #32]
d0051710:	f7ff fe4c 	bl	d00513ac <vec3Normalize>
d0051714:	eef0 1a40 	vmov.f32	s3, s0
d0051718:	eeb0 2a60 	vmov.f32	s4, s1
d005171c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0051720:	eef0 2a41 	vmov.f32	s5, s2
d0051724:	edc4 0a07 	vstr	s1, [r4, #28]
d0051728:	ed84 1a08 	vstr	s2, [r4, #32]
d005172c:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0051730:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0051734:	edc4 1a06 	vstr	s3, [r4, #24]
d0051738:	f7ff fe22 	bl	d0051380 <vec3Cross>
d005173c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0051740:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0051744:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0051748:	f7ff fe30 	bl	d00513ac <vec3Normalize>
d005174c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0051750:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0051754:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0051758:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005175c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0051760:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0051764:	f7ff fe0c 	bl	d0051380 <vec3Cross>
d0051768:	ed84 0a06 	vstr	s0, [r4, #24]
d005176c:	edc4 0a07 	vstr	s1, [r4, #28]
d0051770:	ed84 1a08 	vstr	s2, [r4, #32]
d0051774:	f7ff fe1a 	bl	d00513ac <vec3Normalize>
d0051778:	ed84 0a06 	vstr	s0, [r4, #24]
d005177c:	edc4 0a07 	vstr	s1, [r4, #28]
d0051780:	ed84 1a08 	vstr	s2, [r4, #32]
d0051784:	bd10      	pop	{r4, pc}
d0051786:	bf00      	nop

d0051788 <cameraCreate>:
d0051788:	b510      	push	{r4, lr}
d005178a:	4604      	mov	r4, r0
d005178c:	2260      	movs	r2, #96	; 0x60
d005178e:	4902      	ldr	r1, [pc, #8]	; (d0051798 <cameraCreate+0x10>)
d0051790:	f004 fcb8 	bl	d0056104 <memcpy>
d0051794:	4620      	mov	r0, r4
d0051796:	bd10      	pop	{r4, pc}
d0051798:	d0058460 	.word	0xd0058460

d005179c <cameraSetPosition>:
d005179c:	b084      	sub	sp, #16
d005179e:	ed8d 0a01 	vstr	s0, [sp, #4]
d00517a2:	edcd 0a02 	vstr	s1, [sp, #8]
d00517a6:	ed8d 1a03 	vstr	s2, [sp, #12]
d00517aa:	b128      	cbz	r0, d00517b8 <cameraSetPosition+0x1c>
d00517ac:	aa04      	add	r2, sp, #16
d00517ae:	4603      	mov	r3, r0
d00517b0:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00517b4:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00517b8:	b004      	add	sp, #16
d00517ba:	4770      	bx	lr

d00517bc <cameraRotate>:
d00517bc:	2800      	cmp	r0, #0
d00517be:	f000 80a8 	beq.w	d0051912 <cameraRotate+0x156>
d00517c2:	b510      	push	{r4, lr}
d00517c4:	ed2d 8b04 	vpush	{d8-d9}
d00517c8:	edc0 0a04 	vstr	s1, [r0, #16]
d00517cc:	b084      	sub	sp, #16
d00517ce:	ed80 1a05 	vstr	s2, [r0, #20]
d00517d2:	eef0 8a40 	vmov.f32	s17, s0
d00517d6:	ed80 0a03 	vstr	s0, [r0, #12]
d00517da:	4604      	mov	r4, r0
d00517dc:	eeb0 8a60 	vmov.f32	s16, s1
d00517e0:	f005 fdd6 	bl	d0057390 <cosf>
d00517e4:	eeb0 1a40 	vmov.f32	s2, s0
d00517e8:	eeb0 0a68 	vmov.f32	s0, s17
d00517ec:	eef0 8a41 	vmov.f32	s17, s2
d00517f0:	f005 ffb2 	bl	d0057758 <sinf>
d00517f4:	eeb0 9a40 	vmov.f32	s18, s0
d00517f8:	eeb0 0a48 	vmov.f32	s0, s16
d00517fc:	f005 fdc8 	bl	d0057390 <cosf>
d0051800:	eeb0 1a40 	vmov.f32	s2, s0
d0051804:	eeb0 0a48 	vmov.f32	s0, s16
d0051808:	eeb0 8a41 	vmov.f32	s16, s2
d005180c:	f005 ffa4 	bl	d0057758 <sinf>
d0051810:	eef0 0a40 	vmov.f32	s1, s0
d0051814:	ee28 1a88 	vmul.f32	s2, s17, s16
d0051818:	ee29 9a08 	vmul.f32	s18, s18, s16
d005181c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0051820:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0051824:	eeb0 0a49 	vmov.f32	s0, s18
d0051828:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d005182c:	f7ff fdbe 	bl	d00513ac <vec3Normalize>
d0051830:	eef0 7a41 	vmov.f32	s15, s2
d0051834:	eeb0 7a60 	vmov.f32	s14, s1
d0051838:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d005196c <cameraRotate+0x1b0>
d005183c:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0051840:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0051844:	eeb0 0a41 	vmov.f32	s0, s2
d0051848:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d005184c:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0051850:	f7ff feac 	bl	d00515ac <vec3>
d0051854:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0051858:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d005185c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0051860:	f7ff fd8e 	bl	d0051380 <vec3Cross>
d0051864:	eef0 1a40 	vmov.f32	s3, s0
d0051868:	eeb0 2a60 	vmov.f32	s4, s1
d005186c:	ed84 0a06 	vstr	s0, [r4, #24]
d0051870:	eef0 2a41 	vmov.f32	s5, s2
d0051874:	edc4 0a07 	vstr	s1, [r4, #28]
d0051878:	ed84 1a08 	vstr	s2, [r4, #32]
d005187c:	f7ff fd74 	bl	d0051368 <vec3Dot>
d0051880:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0051970 <cameraRotate+0x1b4>
d0051884:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0051888:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005188c:	d438      	bmi.n	d0051900 <cameraRotate+0x144>
d005188e:	ed94 0a06 	vldr	s0, [r4, #24]
d0051892:	edd4 0a07 	vldr	s1, [r4, #28]
d0051896:	ed94 1a08 	vldr	s2, [r4, #32]
d005189a:	f7ff fd87 	bl	d00513ac <vec3Normalize>
d005189e:	eef0 1a40 	vmov.f32	s3, s0
d00518a2:	ed84 0a06 	vstr	s0, [r4, #24]
d00518a6:	eeb0 2a60 	vmov.f32	s4, s1
d00518aa:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00518ae:	eef0 2a41 	vmov.f32	s5, s2
d00518b2:	edc4 0a07 	vstr	s1, [r4, #28]
d00518b6:	ed84 1a08 	vstr	s2, [r4, #32]
d00518ba:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00518be:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00518c2:	f7ff fd5d 	bl	d0051380 <vec3Cross>
d00518c6:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00518ca:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00518ce:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00518d2:	f7ff fd6b 	bl	d00513ac <vec3Normalize>
d00518d6:	ed94 3a05 	vldr	s6, [r4, #20]
d00518da:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00518de:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00518e2:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00518e6:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00518ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00518ee:	d111      	bne.n	d0051914 <cameraRotate+0x158>
d00518f0:	4620      	mov	r0, r4
d00518f2:	b004      	add	sp, #16
d00518f4:	ecbd 8b04 	vpop	{d8-d9}
d00518f8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00518fc:	f7ff beee 	b.w	d00516dc <cameraNormalize>
d0051900:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d005196c <cameraRotate+0x1b0>
d0051904:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051908:	eef0 0a41 	vmov.f32	s1, s2
d005190c:	f7ff fe4e 	bl	d00515ac <vec3>
d0051910:	e7c5      	b.n	d005189e <cameraRotate+0xe2>
d0051912:	4770      	bx	lr
d0051914:	ed94 0a06 	vldr	s0, [r4, #24]
d0051918:	edd4 0a07 	vldr	s1, [r4, #28]
d005191c:	ed94 1a08 	vldr	s2, [r4, #32]
d0051920:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0051924:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0051928:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005192c:	f7ff fd8e 	bl	d005144c <rotateAroundAxis>
d0051930:	ed84 0a06 	vstr	s0, [r4, #24]
d0051934:	edc4 0a07 	vstr	s1, [r4, #28]
d0051938:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d005193c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0051940:	ed84 1a08 	vstr	s2, [r4, #32]
d0051944:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0051948:	ed94 3a05 	vldr	s6, [r4, #20]
d005194c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0051950:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0051954:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0051958:	f7ff fd78 	bl	d005144c <rotateAroundAxis>
d005195c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0051960:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0051964:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0051968:	e7c2      	b.n	d00518f0 <cameraRotate+0x134>
d005196a:	bf00      	nop
d005196c:	00000000 	.word	0x00000000
d0051970:	322bcc77 	.word	0x322bcc77

d0051974 <cameraGetRotation>:
d0051974:	b510      	push	{r4, lr}
d0051976:	ed2d 8b04 	vpush	{d8-d9}
d005197a:	b08e      	sub	sp, #56	; 0x38
d005197c:	b100      	cbz	r0, d0051980 <cameraGetRotation+0xc>
d005197e:	b169      	cbz	r1, d005199c <cameraGetRotation+0x28>
d0051980:	2300      	movs	r3, #0
d0051982:	930b      	str	r3, [sp, #44]	; 0x2c
d0051984:	930c      	str	r3, [sp, #48]	; 0x30
d0051986:	930d      	str	r3, [sp, #52]	; 0x34
d0051988:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d005198c:	eddd 0a0c 	vldr	s1, [sp, #48]	; 0x30
d0051990:	ed9d 1a0d 	vldr	s2, [sp, #52]	; 0x34
d0051994:	b00e      	add	sp, #56	; 0x38
d0051996:	ecbd 8b04 	vpop	{d8-d9}
d005199a:	bd10      	pop	{r4, pc}
d005199c:	edd0 0a0e 	vldr	s1, [r0, #56]	; 0x38
d00519a0:	4604      	mov	r4, r0
d00519a2:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00519a6:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00519aa:	eee0 7a00 	vfma.f32	s15, s0, s0
d00519ae:	eeb1 8ae7 	vsqrt.f32	s16, s15
d00519b2:	f005 ff71 	bl	d0057898 <atan2f>
d00519b6:	eef0 8a40 	vmov.f32	s17, s0
d00519ba:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00519be:	eef0 0a48 	vmov.f32	s1, s16
d00519c2:	f005 ff69 	bl	d0057898 <atan2f>
d00519c6:	ed9f 1a41 	vldr	s2, [pc, #260]	; d0051acc <cameraGetRotation+0x158>
d00519ca:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00519ce:	eeb0 8a40 	vmov.f32	s16, s0
d00519d2:	eeb0 0a41 	vmov.f32	s0, s2
d00519d6:	f7ff fde9 	bl	d00515ac <vec3>
d00519da:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00519de:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00519e2:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00519e6:	f7ff fccb 	bl	d0051380 <vec3Cross>
d00519ea:	eef0 1a40 	vmov.f32	s3, s0
d00519ee:	eeb0 2a60 	vmov.f32	s4, s1
d00519f2:	ed8d 0a05 	vstr	s0, [sp, #20]
d00519f6:	eef0 2a41 	vmov.f32	s5, s2
d00519fa:	edcd 0a06 	vstr	s1, [sp, #24]
d00519fe:	ed8d 1a07 	vstr	s2, [sp, #28]
d0051a02:	f7ff fcb1 	bl	d0051368 <vec3Dot>
d0051a06:	eddf 7a32 	vldr	s15, [pc, #200]	; d0051ad0 <cameraGetRotation+0x15c>
d0051a0a:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0051a0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051a12:	d552      	bpl.n	d0051aba <cameraGetRotation+0x146>
d0051a14:	ed9f 1a2d 	vldr	s2, [pc, #180]	; d0051acc <cameraGetRotation+0x158>
d0051a18:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051a1c:	eef0 0a41 	vmov.f32	s1, s2
d0051a20:	f7ff fdc4 	bl	d00515ac <vec3>
d0051a24:	eef0 1a40 	vmov.f32	s3, s0
d0051a28:	ed8d 0a05 	vstr	s0, [sp, #20]
d0051a2c:	eeb0 2a60 	vmov.f32	s4, s1
d0051a30:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0051a34:	eef0 2a41 	vmov.f32	s5, s2
d0051a38:	edcd 0a06 	vstr	s1, [sp, #24]
d0051a3c:	ed8d 1a07 	vstr	s2, [sp, #28]
d0051a40:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0051a44:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0051a48:	f7ff fc9a 	bl	d0051380 <vec3Cross>
d0051a4c:	f7ff fcae 	bl	d00513ac <vec3Normalize>
d0051a50:	eef0 6a40 	vmov.f32	s13, s0
d0051a54:	eeb0 7a60 	vmov.f32	s14, s1
d0051a58:	eddd 1a05 	vldr	s3, [sp, #20]
d0051a5c:	eef0 7a41 	vmov.f32	s15, s2
d0051a60:	ed9d 2a06 	vldr	s4, [sp, #24]
d0051a64:	eddd 2a07 	vldr	s5, [sp, #28]
d0051a68:	edd4 0a07 	vldr	s1, [r4, #28]
d0051a6c:	ed94 1a08 	vldr	s2, [r4, #32]
d0051a70:	ed94 0a06 	vldr	s0, [r4, #24]
d0051a74:	edcd 6a08 	vstr	s13, [sp, #32]
d0051a78:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0051a7c:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0051a80:	f7ff fc72 	bl	d0051368 <vec3Dot>
d0051a84:	eeb0 9a40 	vmov.f32	s18, s0
d0051a88:	eddd 1a08 	vldr	s3, [sp, #32]
d0051a8c:	ed9d 2a09 	vldr	s4, [sp, #36]	; 0x24
d0051a90:	eddd 2a0a 	vldr	s5, [sp, #40]	; 0x28
d0051a94:	edd4 0a07 	vldr	s1, [r4, #28]
d0051a98:	ed94 1a08 	vldr	s2, [r4, #32]
d0051a9c:	ed94 0a06 	vldr	s0, [r4, #24]
d0051aa0:	f7ff fc62 	bl	d0051368 <vec3Dot>
d0051aa4:	eef0 0a49 	vmov.f32	s1, s18
d0051aa8:	f005 fef6 	bl	d0057898 <atan2f>
d0051aac:	edcd 8a0b 	vstr	s17, [sp, #44]	; 0x2c
d0051ab0:	ed8d 8a0c 	vstr	s16, [sp, #48]	; 0x30
d0051ab4:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d0051ab8:	e766      	b.n	d0051988 <cameraGetRotation+0x14>
d0051aba:	ed9d 0a05 	vldr	s0, [sp, #20]
d0051abe:	eddd 0a06 	vldr	s1, [sp, #24]
d0051ac2:	ed9d 1a07 	vldr	s2, [sp, #28]
d0051ac6:	f7ff fc71 	bl	d00513ac <vec3Normalize>
d0051aca:	e7ab      	b.n	d0051a24 <cameraGetRotation+0xb0>
d0051acc:	00000000 	.word	0x00000000
d0051ad0:	322bcc77 	.word	0x322bcc77

d0051ad4 <cameraTurn>:
d0051ad4:	2800      	cmp	r0, #0
d0051ad6:	f000 8144 	beq.w	d0051d62 <cameraTurn+0x28e>
d0051ada:	b570      	push	{r4, r5, r6, lr}
d0051adc:	4604      	mov	r4, r0
d0051ade:	ed2d 8b04 	vpush	{d8-d9}
d0051ae2:	eef0 8a40 	vmov.f32	s17, s0
d0051ae6:	b08a      	sub	sp, #40	; 0x28
d0051ae8:	eeb0 9a60 	vmov.f32	s18, s1
d0051aec:	eeb0 8a41 	vmov.f32	s16, s2
d0051af0:	bb69      	cbnz	r1, d0051b4e <cameraTurn+0x7a>
d0051af2:	f100 0318 	add.w	r3, r0, #24
d0051af6:	ae01      	add	r6, sp, #4
d0051af8:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0051afc:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0051b00:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051b04:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0051b08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b0c:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0051b10:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0051b14:	ae04      	add	r6, sp, #16
d0051b16:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0051b1a:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0051b1e:	ab0a      	add	r3, sp, #40	; 0x28
d0051b20:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0051b24:	d14a      	bne.n	d0051bbc <cameraTurn+0xe8>
d0051b26:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051b2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b2e:	f040 808d 	bne.w	d0051c4c <cameraTurn+0x178>
d0051b32:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051b36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b3a:	f040 80cf 	bne.w	d0051cdc <cameraTurn+0x208>
d0051b3e:	4620      	mov	r0, r4
d0051b40:	b00a      	add	sp, #40	; 0x28
d0051b42:	ecbd 8b04 	vpop	{d8-d9}
d0051b46:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0051b4a:	f7ff bdc7 	b.w	d00516dc <cameraNormalize>
d0051b4e:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0051d64 <cameraTurn+0x290>
d0051b52:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051b56:	eef0 0a41 	vmov.f32	s1, s2
d0051b5a:	f7ff fd27 	bl	d00515ac <vec3>
d0051b5e:	eef0 7a41 	vmov.f32	s15, s2
d0051b62:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0051d64 <cameraTurn+0x290>
d0051b66:	eeb0 7a60 	vmov.f32	s14, s1
d0051b6a:	ed8d 0a01 	vstr	s0, [sp, #4]
d0051b6e:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0051b72:	edcd 7a03 	vstr	s15, [sp, #12]
d0051b76:	eeb0 0a41 	vmov.f32	s0, s2
d0051b7a:	ed8d 7a02 	vstr	s14, [sp, #8]
d0051b7e:	f7ff fd15 	bl	d00515ac <vec3>
d0051b82:	eeb0 7a60 	vmov.f32	s14, s1
d0051b86:	eddf 0a77 	vldr	s1, [pc, #476]	; d0051d64 <cameraTurn+0x290>
d0051b8a:	eef0 7a41 	vmov.f32	s15, s2
d0051b8e:	ed8d 0a04 	vstr	s0, [sp, #16]
d0051b92:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0051b96:	eeb0 0a60 	vmov.f32	s0, s1
d0051b9a:	ed8d 7a05 	vstr	s14, [sp, #20]
d0051b9e:	edcd 7a06 	vstr	s15, [sp, #24]
d0051ba2:	f7ff fd03 	bl	d00515ac <vec3>
d0051ba6:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0051baa:	edcd 0a08 	vstr	s1, [sp, #32]
d0051bae:	ed8d 0a07 	vstr	s0, [sp, #28]
d0051bb2:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0051bb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051bba:	d0b4      	beq.n	d0051b26 <cameraTurn+0x52>
d0051bbc:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0051bc0:	eeb0 3a49 	vmov.f32	s6, s18
d0051bc4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0051bc8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0051bcc:	eddd 1a04 	vldr	s3, [sp, #16]
d0051bd0:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051bd4:	eddd 2a06 	vldr	s5, [sp, #24]
d0051bd8:	f7ff fc38 	bl	d005144c <rotateAroundAxis>
d0051bdc:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0051be0:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0051be4:	eeb0 3a49 	vmov.f32	s6, s18
d0051be8:	ed94 0a06 	vldr	s0, [r4, #24]
d0051bec:	edd4 0a07 	vldr	s1, [r4, #28]
d0051bf0:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0051bf4:	ed94 1a08 	vldr	s2, [r4, #32]
d0051bf8:	eddd 1a04 	vldr	s3, [sp, #16]
d0051bfc:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051c00:	eddd 2a06 	vldr	s5, [sp, #24]
d0051c04:	f7ff fc22 	bl	d005144c <rotateAroundAxis>
d0051c08:	eeb0 3a49 	vmov.f32	s6, s18
d0051c0c:	ed84 0a06 	vstr	s0, [r4, #24]
d0051c10:	edc4 0a07 	vstr	s1, [r4, #28]
d0051c14:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0051c18:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0051c1c:	ed84 1a08 	vstr	s2, [r4, #32]
d0051c20:	eddd 1a04 	vldr	s3, [sp, #16]
d0051c24:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0051c28:	ed9d 2a05 	vldr	s4, [sp, #20]
d0051c2c:	eddd 2a06 	vldr	s5, [sp, #24]
d0051c30:	f7ff fc0c 	bl	d005144c <rotateAroundAxis>
d0051c34:	eef5 8a40 	vcmp.f32	s17, #0.0
d0051c38:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0051c3c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0051c40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051c44:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0051c48:	f43f af73 	beq.w	d0051b32 <cameraTurn+0x5e>
d0051c4c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0051c50:	eeb0 3a68 	vmov.f32	s6, s17
d0051c54:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0051c58:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0051c5c:	eddd 1a01 	vldr	s3, [sp, #4]
d0051c60:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051c64:	eddd 2a03 	vldr	s5, [sp, #12]
d0051c68:	f7ff fbf0 	bl	d005144c <rotateAroundAxis>
d0051c6c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0051c70:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0051c74:	eeb0 3a68 	vmov.f32	s6, s17
d0051c78:	ed94 0a06 	vldr	s0, [r4, #24]
d0051c7c:	edd4 0a07 	vldr	s1, [r4, #28]
d0051c80:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0051c84:	ed94 1a08 	vldr	s2, [r4, #32]
d0051c88:	eddd 1a01 	vldr	s3, [sp, #4]
d0051c8c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051c90:	eddd 2a03 	vldr	s5, [sp, #12]
d0051c94:	f7ff fbda 	bl	d005144c <rotateAroundAxis>
d0051c98:	eeb0 3a68 	vmov.f32	s6, s17
d0051c9c:	ed84 0a06 	vstr	s0, [r4, #24]
d0051ca0:	edc4 0a07 	vstr	s1, [r4, #28]
d0051ca4:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0051ca8:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0051cac:	ed84 1a08 	vstr	s2, [r4, #32]
d0051cb0:	eddd 1a01 	vldr	s3, [sp, #4]
d0051cb4:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0051cb8:	ed9d 2a02 	vldr	s4, [sp, #8]
d0051cbc:	eddd 2a03 	vldr	s5, [sp, #12]
d0051cc0:	f7ff fbc4 	bl	d005144c <rotateAroundAxis>
d0051cc4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0051cc8:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0051ccc:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0051cd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051cd4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0051cd8:	f43f af31 	beq.w	d0051b3e <cameraTurn+0x6a>
d0051cdc:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0051ce0:	eeb0 3a48 	vmov.f32	s6, s16
d0051ce4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0051ce8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0051cec:	eddd 1a07 	vldr	s3, [sp, #28]
d0051cf0:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051cf4:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051cf8:	f7ff fba8 	bl	d005144c <rotateAroundAxis>
d0051cfc:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0051d00:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0051d04:	eeb0 3a48 	vmov.f32	s6, s16
d0051d08:	ed94 0a06 	vldr	s0, [r4, #24]
d0051d0c:	edd4 0a07 	vldr	s1, [r4, #28]
d0051d10:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0051d14:	ed94 1a08 	vldr	s2, [r4, #32]
d0051d18:	eddd 1a07 	vldr	s3, [sp, #28]
d0051d1c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051d20:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051d24:	f7ff fb92 	bl	d005144c <rotateAroundAxis>
d0051d28:	ed84 0a06 	vstr	s0, [r4, #24]
d0051d2c:	edc4 0a07 	vstr	s1, [r4, #28]
d0051d30:	eeb0 3a48 	vmov.f32	s6, s16
d0051d34:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0051d38:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0051d3c:	ed84 1a08 	vstr	s2, [r4, #32]
d0051d40:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0051d44:	eddd 1a07 	vldr	s3, [sp, #28]
d0051d48:	ed9d 2a08 	vldr	s4, [sp, #32]
d0051d4c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0051d50:	f7ff fb7c 	bl	d005144c <rotateAroundAxis>
d0051d54:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0051d58:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0051d5c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0051d60:	e6ed      	b.n	d0051b3e <cameraTurn+0x6a>
d0051d62:	4770      	bx	lr
d0051d64:	00000000 	.word	0x00000000

d0051d68 <worldToCamera>:
d0051d68:	b084      	sub	sp, #16
d0051d6a:	b510      	push	{r4, lr}
d0051d6c:	ed2d 8b02 	vpush	{d8}
d0051d70:	b0ac      	sub	sp, #176	; 0xb0
d0051d72:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0051d76:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0051d7a:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0051d7e:	f024 041f 	bic.w	r4, r4, #31
d0051d82:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0051d86:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0051d8a:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0051d8e:	2260      	movs	r2, #96	; 0x60
d0051d90:	4661      	mov	r1, ip
d0051d92:	4620      	mov	r0, r4
d0051d94:	f004 f9b6 	bl	d0056104 <memcpy>
d0051d98:	edd4 7a00 	vldr	s15, [r4]
d0051d9c:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0051da0:	ed94 7a01 	vldr	s14, [r4, #4]
d0051da4:	ee30 0a67 	vsub.f32	s0, s0, s15
d0051da8:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0051dac:	edd4 7a02 	vldr	s15, [r4, #8]
d0051db0:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0051db4:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0051db8:	edd4 1a06 	vldr	s3, [r4, #24]
d0051dbc:	ee31 1a67 	vsub.f32	s2, s2, s15
d0051dc0:	ed94 2a07 	vldr	s4, [r4, #28]
d0051dc4:	edd4 2a08 	vldr	s5, [r4, #32]
d0051dc8:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0051dcc:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0051dd0:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0051dd4:	f7ff fac8 	bl	d0051368 <vec3Dot>
d0051dd8:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0051ddc:	eef0 8a40 	vmov.f32	s17, s0
d0051de0:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0051de4:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0051de8:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0051dec:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0051df0:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0051df4:	f7ff fab8 	bl	d0051368 <vec3Dot>
d0051df8:	eeb0 8a40 	vmov.f32	s16, s0
d0051dfc:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0051e00:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0051e04:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0051e08:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0051e0c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0051e10:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0051e14:	f7ff faa8 	bl	d0051368 <vec3Dot>
d0051e18:	eef0 0a48 	vmov.f32	s1, s16
d0051e1c:	eeb0 1a40 	vmov.f32	s2, s0
d0051e20:	eeb0 0a68 	vmov.f32	s0, s17
d0051e24:	b02c      	add	sp, #176	; 0xb0
d0051e26:	ecbd 8b02 	vpop	{d8}
d0051e2a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0051e2e:	b004      	add	sp, #16
d0051e30:	4770      	bx	lr
d0051e32:	bf00      	nop

d0051e34 <cameraSetRange>:
d0051e34:	b1d8      	cbz	r0, d0051e6e <cameraSetRange+0x3a>
d0051e36:	eddf 7a11 	vldr	s15, [pc, #68]	; d0051e7c <cameraSetRange+0x48>
d0051e3a:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0051e3e:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0051e42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051e46:	da13      	bge.n	d0051e70 <cameraSetRange+0x3c>
d0051e48:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0051e4c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0051e50:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0051e54:	4b0a      	ldr	r3, [pc, #40]	; (d0051e80 <cameraSetRange+0x4c>)
d0051e56:	490b      	ldr	r1, [pc, #44]	; (d0051e84 <cameraSetRange+0x50>)
d0051e58:	4a0b      	ldr	r2, [pc, #44]	; (d0051e88 <cameraSetRange+0x54>)
d0051e5a:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0051e5e:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0051e62:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0051e66:	6483      	str	r3, [r0, #72]	; 0x48
d0051e68:	64c3      	str	r3, [r0, #76]	; 0x4c
d0051e6a:	6501      	str	r1, [r0, #80]	; 0x50
d0051e6c:	6542      	str	r2, [r0, #84]	; 0x54
d0051e6e:	4770      	bx	lr
d0051e70:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0051e74:	ee70 0a27 	vadd.f32	s1, s0, s15
d0051e78:	e7ec      	b.n	d0051e54 <cameraSetRange+0x20>
d0051e7a:	bf00      	nop
d0051e7c:	3a83126f 	.word	0x3a83126f
d0051e80:	43700000 	.word	0x43700000
d0051e84:	43200000 	.word	0x43200000
d0051e88:	3f2aaaab 	.word	0x3f2aaaab

d0051e8c <cameraMove>:
d0051e8c:	b3a8      	cbz	r0, d0051efa <cameraMove+0x6e>
d0051e8e:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0051e92:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0051e96:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d0051e9a:	ee20 7a87 	vmul.f32	s14, s1, s14
d0051e9e:	edd0 5a06 	vldr	s11, [r0, #24]
d0051ea2:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0051ea6:	ed90 6a08 	vldr	s12, [r0, #32]
d0051eaa:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0051eae:	edd0 6a07 	vldr	s13, [r0, #28]
d0051eb2:	eea5 7a80 	vfma.f32	s14, s11, s0
d0051eb6:	edd0 4a01 	vldr	s9, [r0, #4]
d0051eba:	eee6 7a80 	vfma.f32	s15, s13, s0
d0051ebe:	ed90 5a02 	vldr	s10, [r0, #8]
d0051ec2:	eee6 0a00 	vfma.f32	s1, s12, s0
d0051ec6:	edd0 6a00 	vldr	s13, [r0]
d0051eca:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0051ece:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0051ed2:	ee37 7a26 	vadd.f32	s14, s14, s13
d0051ed6:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0051eda:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0051ede:	ee70 0a85 	vadd.f32	s1, s1, s10
d0051ee2:	eea5 7a81 	vfma.f32	s14, s11, s2
d0051ee6:	eee6 7a01 	vfma.f32	s15, s12, s2
d0051eea:	eee6 0a81 	vfma.f32	s1, s13, s2
d0051eee:	ed80 7a00 	vstr	s14, [r0]
d0051ef2:	edc0 7a01 	vstr	s15, [r0, #4]
d0051ef6:	edc0 0a02 	vstr	s1, [r0, #8]
d0051efa:	4770      	bx	lr

d0051efc <normalizeEntity.part.0>:
d0051efc:	edd0 0a08 	vldr	s1, [r0, #32]
d0051f00:	ed90 1a09 	vldr	s2, [r0, #36]	; 0x24
d0051f04:	ed90 0a07 	vldr	s0, [r0, #28]
d0051f08:	b510      	push	{r4, lr}
d0051f0a:	4604      	mov	r4, r0
d0051f0c:	f7ff fa4e 	bl	d00513ac <vec3Normalize>
d0051f10:	eeb0 7a60 	vmov.f32	s14, s1
d0051f14:	eef0 7a41 	vmov.f32	s15, s2
d0051f18:	ed84 0a07 	vstr	s0, [r4, #28]
d0051f1c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0051f20:	ed84 7a08 	vstr	s14, [r4, #32]
d0051f24:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0051f28:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0051f2c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0051f30:	f7ff fa3c 	bl	d00513ac <vec3Normalize>
d0051f34:	eef0 1a40 	vmov.f32	s3, s0
d0051f38:	eeb0 2a60 	vmov.f32	s4, s1
d0051f3c:	ed94 0a07 	vldr	s0, [r4, #28]
d0051f40:	eef0 2a41 	vmov.f32	s5, s2
d0051f44:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0051f48:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051f4c:	edd4 0a08 	vldr	s1, [r4, #32]
d0051f50:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0051f54:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0051f58:	f7ff fa12 	bl	d0051380 <vec3Cross>
d0051f5c:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051f60:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051f64:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051f68:	f7ff fa20 	bl	d00513ac <vec3Normalize>
d0051f6c:	edd4 1a07 	vldr	s3, [r4, #28]
d0051f70:	ed94 2a08 	vldr	s4, [r4, #32]
d0051f74:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0051f78:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0051f7c:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0051f80:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0051f84:	f7ff f9fc 	bl	d0051380 <vec3Cross>
d0051f88:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0051f8c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0051f90:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051f94:	f7ff fa0a 	bl	d00513ac <vec3Normalize>
d0051f98:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0051f9c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0051fa0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0051fa4:	bd10      	pop	{r4, pc}
d0051fa6:	bf00      	nop

d0051fa8 <entityRotation.part.0>:
d0051fa8:	b5f0      	push	{r4, r5, r6, r7, lr}
d0051faa:	4db5      	ldr	r5, [pc, #724]	; (d0052280 <entityRotation.part.0+0x2d8>)
d0051fac:	ed2d 8b04 	vpush	{d8-d9}
d0051fb0:	eb05 14c0 	add.w	r4, r5, r0, lsl #7
d0051fb4:	eeb0 9a40 	vmov.f32	s18, s0
d0051fb8:	eef0 8a60 	vmov.f32	s17, s1
d0051fbc:	b08b      	sub	sp, #44	; 0x2c
d0051fbe:	eeb0 8a41 	vmov.f32	s16, s2
d0051fc2:	2900      	cmp	r1, #0
d0051fc4:	d040      	beq.n	d0052048 <entityRotation.part.0+0xa0>
d0051fc6:	eddf 1aaf 	vldr	s3, [pc, #700]	; d0052284 <entityRotation.part.0+0x2dc>
d0051fca:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0051fce:	eeb4 0a61 	vcmp.f32	s0, s3
d0051fd2:	edc4 1a0b 	vstr	s3, [r4, #44]	; 0x2c
d0051fd6:	ed84 2a0a 	vstr	s4, [r4, #40]	; 0x28
d0051fda:	ed84 2a0e 	vstr	s4, [r4, #56]	; 0x38
d0051fde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051fe2:	ed84 2a09 	vstr	s4, [r4, #36]	; 0x24
d0051fe6:	ed8d 2a02 	vstr	s4, [sp, #8]
d0051fea:	ed8d 2a04 	vstr	s4, [sp, #16]
d0051fee:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0051ff2:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0051ff6:	edc4 1a0d 	vstr	s3, [r4, #52]	; 0x34
d0051ffa:	edc4 1a0f 	vstr	s3, [r4, #60]	; 0x3c
d0051ffe:	edc4 1a07 	vstr	s3, [r4, #28]
d0052002:	edc4 1a08 	vstr	s3, [r4, #32]
d0052006:	edcd 1a01 	vstr	s3, [sp, #4]
d005200a:	edcd 1a03 	vstr	s3, [sp, #12]
d005200e:	edcd 1a05 	vstr	s3, [sp, #20]
d0052012:	edcd 1a06 	vstr	s3, [sp, #24]
d0052016:	edcd 1a07 	vstr	s3, [sp, #28]
d005201a:	edcd 1a08 	vstr	s3, [sp, #32]
d005201e:	d17b      	bne.n	d0052118 <entityRotation.part.0+0x170>
d0052020:	eef5 8a40 	vcmp.f32	s17, #0.0
d0052024:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052028:	f040 80c6 	bne.w	d00521b8 <entityRotation.part.0+0x210>
d005202c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0052030:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052034:	f040 8114 	bne.w	d0052260 <entityRotation.part.0+0x2b8>
d0052038:	4620      	mov	r0, r4
d005203a:	b00b      	add	sp, #44	; 0x2c
d005203c:	ecbd 8b04 	vpop	{d8-d9}
d0052040:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0052044:	f7ff bf5a 	b.w	d0051efc <normalizeEntity.part.0>
d0052048:	eeb5 0a40 	vcmp.f32	s0, #0.0
d005204c:	01c6      	lsls	r6, r0, #7
d005204e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052052:	f040 8119 	bne.w	d0052288 <entityRotation.part.0+0x2e0>
d0052056:	eef5 8a40 	vcmp.f32	s17, #0.0
d005205a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005205e:	f040 816e 	bne.w	d005233e <entityRotation.part.0+0x396>
d0052062:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0052066:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005206a:	d0e5      	beq.n	d0052038 <entityRotation.part.0+0x90>
d005206c:	19ab      	adds	r3, r5, r6
d005206e:	eeb0 3a48 	vmov.f32	s6, s16
d0052072:	ed94 0a07 	vldr	s0, [r4, #28]
d0052076:	331c      	adds	r3, #28
d0052078:	edd4 0a08 	vldr	s1, [r4, #32]
d005207c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0052080:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0052084:	ab0a      	add	r3, sp, #40	; 0x28
d0052086:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005208a:	eddd 1a07 	vldr	s3, [sp, #28]
d005208e:	ed9d 2a08 	vldr	s4, [sp, #32]
d0052092:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0052096:	f7ff f9d9 	bl	d005144c <rotateAroundAxis>
d005209a:	eef0 6a40 	vmov.f32	s13, s0
d005209e:	eeb0 7a60 	vmov.f32	s14, s1
d00520a2:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00520a6:	eef0 7a41 	vmov.f32	s15, s2
d00520aa:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00520ae:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00520b2:	eeb0 3a48 	vmov.f32	s6, s16
d00520b6:	eddd 1a07 	vldr	s3, [sp, #28]
d00520ba:	ed9d 2a08 	vldr	s4, [sp, #32]
d00520be:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00520c2:	edc4 6a07 	vstr	s13, [r4, #28]
d00520c6:	ed84 7a08 	vstr	s14, [r4, #32]
d00520ca:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00520ce:	f7ff f9bd 	bl	d005144c <rotateAroundAxis>
d00520d2:	eef0 6a40 	vmov.f32	s13, s0
d00520d6:	eeb0 7a60 	vmov.f32	s14, s1
d00520da:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00520de:	eef0 7a41 	vmov.f32	s15, s2
d00520e2:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00520e6:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00520ea:	eeb0 3a48 	vmov.f32	s6, s16
d00520ee:	eddd 1a07 	vldr	s3, [sp, #28]
d00520f2:	ed9d 2a08 	vldr	s4, [sp, #32]
d00520f6:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00520fa:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00520fe:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0052102:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0052106:	f7ff f9a1 	bl	d005144c <rotateAroundAxis>
d005210a:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d005210e:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0052112:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d0052116:	e78f      	b.n	d0052038 <entityRotation.part.0+0x90>
d0052118:	eeb0 1a42 	vmov.f32	s2, s4
d005211c:	eef0 0a61 	vmov.f32	s1, s3
d0052120:	eeb0 3a40 	vmov.f32	s6, s0
d0052124:	eeb0 0a61 	vmov.f32	s0, s3
d0052128:	eef0 2a61 	vmov.f32	s5, s3
d005212c:	f7ff f98e 	bl	d005144c <rotateAroundAxis>
d0052130:	eeb0 7a60 	vmov.f32	s14, s1
d0052134:	eef0 6a40 	vmov.f32	s13, s0
d0052138:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005213c:	eef0 7a41 	vmov.f32	s15, s2
d0052140:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0052144:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0052148:	eeb0 3a49 	vmov.f32	s6, s18
d005214c:	eddd 1a01 	vldr	s3, [sp, #4]
d0052150:	ed9d 2a02 	vldr	s4, [sp, #8]
d0052154:	eddd 2a03 	vldr	s5, [sp, #12]
d0052158:	edc4 6a07 	vstr	s13, [r4, #28]
d005215c:	ed84 7a08 	vstr	s14, [r4, #32]
d0052160:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0052164:	f7ff f972 	bl	d005144c <rotateAroundAxis>
d0052168:	eef0 6a40 	vmov.f32	s13, s0
d005216c:	eeb0 7a60 	vmov.f32	s14, s1
d0052170:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0052174:	eef0 7a41 	vmov.f32	s15, s2
d0052178:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005217c:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0052180:	eeb0 3a49 	vmov.f32	s6, s18
d0052184:	eddd 1a01 	vldr	s3, [sp, #4]
d0052188:	ed9d 2a02 	vldr	s4, [sp, #8]
d005218c:	eddd 2a03 	vldr	s5, [sp, #12]
d0052190:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d0052194:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0052198:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d005219c:	f7ff f956 	bl	d005144c <rotateAroundAxis>
d00521a0:	eef5 8a40 	vcmp.f32	s17, #0.0
d00521a4:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00521a8:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00521ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00521b0:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00521b4:	f43f af3a 	beq.w	d005202c <entityRotation.part.0+0x84>
d00521b8:	ed94 0a07 	vldr	s0, [r4, #28]
d00521bc:	eeb0 3a68 	vmov.f32	s6, s17
d00521c0:	edd4 0a08 	vldr	s1, [r4, #32]
d00521c4:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00521c8:	eddd 1a04 	vldr	s3, [sp, #16]
d00521cc:	ed9d 2a05 	vldr	s4, [sp, #20]
d00521d0:	eddd 2a06 	vldr	s5, [sp, #24]
d00521d4:	f7ff f93a 	bl	d005144c <rotateAroundAxis>
d00521d8:	eef0 6a40 	vmov.f32	s13, s0
d00521dc:	eeb0 7a60 	vmov.f32	s14, s1
d00521e0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00521e4:	eef0 7a41 	vmov.f32	s15, s2
d00521e8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00521ec:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00521f0:	eeb0 3a68 	vmov.f32	s6, s17
d00521f4:	eddd 1a04 	vldr	s3, [sp, #16]
d00521f8:	ed9d 2a05 	vldr	s4, [sp, #20]
d00521fc:	eddd 2a06 	vldr	s5, [sp, #24]
d0052200:	edc4 6a07 	vstr	s13, [r4, #28]
d0052204:	ed84 7a08 	vstr	s14, [r4, #32]
d0052208:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005220c:	f7ff f91e 	bl	d005144c <rotateAroundAxis>
d0052210:	eef0 6a40 	vmov.f32	s13, s0
d0052214:	eeb0 7a60 	vmov.f32	s14, s1
d0052218:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d005221c:	eef0 7a41 	vmov.f32	s15, s2
d0052220:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0052224:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0052228:	eeb0 3a68 	vmov.f32	s6, s17
d005222c:	eddd 1a04 	vldr	s3, [sp, #16]
d0052230:	ed9d 2a05 	vldr	s4, [sp, #20]
d0052234:	eddd 2a06 	vldr	s5, [sp, #24]
d0052238:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d005223c:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d0052240:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0052244:	f7ff f902 	bl	d005144c <rotateAroundAxis>
d0052248:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005224c:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0052250:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0052254:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052258:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005225c:	f43f aeec 	beq.w	d0052038 <entityRotation.part.0+0x90>
d0052260:	eeb0 3a48 	vmov.f32	s6, s16
d0052264:	eddd 1a07 	vldr	s3, [sp, #28]
d0052268:	ed9d 2a08 	vldr	s4, [sp, #32]
d005226c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0052270:	ed94 0a07 	vldr	s0, [r4, #28]
d0052274:	edd4 0a08 	vldr	s1, [r4, #32]
d0052278:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005227c:	e70b      	b.n	d0052096 <entityRotation.part.0+0xee>
d005227e:	bf00      	nop
d0052280:	d00f5680 	.word	0xd00f5680
d0052284:	00000000 	.word	0x00000000
d0052288:	f104 0334 	add.w	r3, r4, #52	; 0x34
d005228c:	af01      	add	r7, sp, #4
d005228e:	eeb0 3a40 	vmov.f32	s6, s0
d0052292:	edd4 0a08 	vldr	s1, [r4, #32]
d0052296:	ed94 0a07 	vldr	s0, [r4, #28]
d005229a:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005229e:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00522a2:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d00522a6:	eddd 1a01 	vldr	s3, [sp, #4]
d00522aa:	ed9d 2a02 	vldr	s4, [sp, #8]
d00522ae:	eddd 2a03 	vldr	s5, [sp, #12]
d00522b2:	f7ff f8cb 	bl	d005144c <rotateAroundAxis>
d00522b6:	eef0 6a40 	vmov.f32	s13, s0
d00522ba:	eeb0 7a60 	vmov.f32	s14, s1
d00522be:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00522c2:	eef0 7a41 	vmov.f32	s15, s2
d00522c6:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00522ca:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00522ce:	eeb0 3a49 	vmov.f32	s6, s18
d00522d2:	eddd 1a01 	vldr	s3, [sp, #4]
d00522d6:	ed9d 2a02 	vldr	s4, [sp, #8]
d00522da:	eddd 2a03 	vldr	s5, [sp, #12]
d00522de:	edc4 6a07 	vstr	s13, [r4, #28]
d00522e2:	ed84 7a08 	vstr	s14, [r4, #32]
d00522e6:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00522ea:	f7ff f8af 	bl	d005144c <rotateAroundAxis>
d00522ee:	eef0 6a40 	vmov.f32	s13, s0
d00522f2:	eeb0 7a60 	vmov.f32	s14, s1
d00522f6:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00522fa:	eef0 7a41 	vmov.f32	s15, s2
d00522fe:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d0052302:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0052306:	eeb0 3a49 	vmov.f32	s6, s18
d005230a:	eddd 1a01 	vldr	s3, [sp, #4]
d005230e:	ed9d 2a02 	vldr	s4, [sp, #8]
d0052312:	eddd 2a03 	vldr	s5, [sp, #12]
d0052316:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d005231a:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d005231e:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d0052322:	f7ff f893 	bl	d005144c <rotateAroundAxis>
d0052326:	eef5 8a40 	vcmp.f32	s17, #0.0
d005232a:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d005232e:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0052332:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052336:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005233a:	f43f ae92 	beq.w	d0052062 <entityRotation.part.0+0xba>
d005233e:	19ab      	adds	r3, r5, r6
d0052340:	af04      	add	r7, sp, #16
d0052342:	ed94 0a07 	vldr	s0, [r4, #28]
d0052346:	eeb0 3a68 	vmov.f32	s6, s17
d005234a:	3328      	adds	r3, #40	; 0x28
d005234c:	edd4 0a08 	vldr	s1, [r4, #32]
d0052350:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0052354:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0052358:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d005235c:	eddd 1a04 	vldr	s3, [sp, #16]
d0052360:	ed9d 2a05 	vldr	s4, [sp, #20]
d0052364:	eddd 2a06 	vldr	s5, [sp, #24]
d0052368:	f7ff f870 	bl	d005144c <rotateAroundAxis>
d005236c:	eef0 6a40 	vmov.f32	s13, s0
d0052370:	eeb0 7a60 	vmov.f32	s14, s1
d0052374:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0052378:	eef0 7a41 	vmov.f32	s15, s2
d005237c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0052380:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0052384:	eeb0 3a68 	vmov.f32	s6, s17
d0052388:	eddd 1a04 	vldr	s3, [sp, #16]
d005238c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0052390:	eddd 2a06 	vldr	s5, [sp, #24]
d0052394:	edc4 6a07 	vstr	s13, [r4, #28]
d0052398:	ed84 7a08 	vstr	s14, [r4, #32]
d005239c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00523a0:	f7ff f854 	bl	d005144c <rotateAroundAxis>
d00523a4:	eef0 6a40 	vmov.f32	s13, s0
d00523a8:	eeb0 7a60 	vmov.f32	s14, s1
d00523ac:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00523b0:	eef0 7a41 	vmov.f32	s15, s2
d00523b4:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00523b8:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00523bc:	eeb0 3a68 	vmov.f32	s6, s17
d00523c0:	eddd 1a04 	vldr	s3, [sp, #16]
d00523c4:	ed9d 2a05 	vldr	s4, [sp, #20]
d00523c8:	eddd 2a06 	vldr	s5, [sp, #24]
d00523cc:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00523d0:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00523d4:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00523d8:	f7ff f838 	bl	d005144c <rotateAroundAxis>
d00523dc:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00523e0:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00523e4:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00523e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00523ec:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00523f0:	f43f ae22 	beq.w	d0052038 <entityRotation.part.0+0x90>
d00523f4:	e63a      	b.n	d005206c <entityRotation.part.0+0xc4>
d00523f6:	bf00      	nop

d00523f8 <meshComputeBoundsRadius>:
d00523f8:	b1f0      	cbz	r0, d0052438 <meshComputeBoundsRadius+0x40>
d00523fa:	6803      	ldr	r3, [r0, #0]
d00523fc:	b1e3      	cbz	r3, d0052438 <meshComputeBoundsRadius+0x40>
d00523fe:	6842      	ldr	r2, [r0, #4]
d0052400:	2a00      	cmp	r2, #0
d0052402:	dd19      	ble.n	d0052438 <meshComputeBoundsRadius+0x40>
d0052404:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0052408:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0052440 <meshComputeBoundsRadius+0x48>
d005240c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0052410:	edd3 7a01 	vldr	s15, [r3, #4]
d0052414:	330c      	adds	r3, #12
d0052416:	ed53 6a03 	vldr	s13, [r3, #-12]
d005241a:	ee67 7aa7 	vmul.f32	s15, s15, s15
d005241e:	ed13 7a01 	vldr	s14, [r3, #-4]
d0052422:	429a      	cmp	r2, r3
d0052424:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0052428:	eee7 7a07 	vfma.f32	s15, s14, s14
d005242c:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0052430:	d1ee      	bne.n	d0052410 <meshComputeBoundsRadius+0x18>
d0052432:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0052436:	4770      	bx	lr
d0052438:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0052440 <meshComputeBoundsRadius+0x48>
d005243c:	4770      	bx	lr
d005243e:	bf00      	nop
d0052440:	00000000 	.word	0x00000000

d0052444 <entityWorldSpawn>:
d0052444:	b5f0      	push	{r4, r5, r6, r7, lr}
d0052446:	4d20      	ldr	r5, [pc, #128]	; (d00524c8 <entityWorldSpawn+0x84>)
d0052448:	b085      	sub	sp, #20
d005244a:	2300      	movs	r3, #0
d005244c:	462a      	mov	r2, r5
d005244e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0052452:	edcd 0a02 	vstr	s1, [sp, #8]
d0052456:	ed8d 1a03 	vstr	s2, [sp, #12]
d005245a:	e003      	b.n	d0052464 <entityWorldSpawn+0x20>
d005245c:	3301      	adds	r3, #1
d005245e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0052462:	d02c      	beq.n	d00524be <entityWorldSpawn+0x7a>
d0052464:	f892 4040 	ldrb.w	r4, [r2, #64]	; 0x40
d0052468:	3280      	adds	r2, #128	; 0x80
d005246a:	2c00      	cmp	r4, #0
d005246c:	d1f6      	bne.n	d005245c <entityWorldSpawn+0x18>
d005246e:	eb05 15c3 	add.w	r5, r5, r3, lsl #7
d0052472:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0052476:	af01      	add	r7, sp, #4
d0052478:	2600      	movs	r6, #0
d005247a:	61a8      	str	r0, [r5, #24]
d005247c:	f105 0e0c 	add.w	lr, r5, #12
d0052480:	62aa      	str	r2, [r5, #40]	; 0x28
d0052482:	ea4f 1cc3 	mov.w	ip, r3, lsl #7
d0052486:	63aa      	str	r2, [r5, #56]	; 0x38
d0052488:	626a      	str	r2, [r5, #36]	; 0x24
d005248a:	62ee      	str	r6, [r5, #44]	; 0x2c
d005248c:	632e      	str	r6, [r5, #48]	; 0x30
d005248e:	636e      	str	r6, [r5, #52]	; 0x34
d0052490:	63ee      	str	r6, [r5, #60]	; 0x3c
d0052492:	61ee      	str	r6, [r5, #28]
d0052494:	622e      	str	r6, [r5, #32]
d0052496:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d005249a:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d005249e:	e88e 0007 	stmia.w	lr, {r0, r1, r2}
d00524a2:	4a0a      	ldr	r2, [pc, #40]	; (d00524cc <entityWorldSpawn+0x88>)
d00524a4:	f240 1101 	movw	r1, #257	; 0x101
d00524a8:	4618      	mov	r0, r3
d00524aa:	f82c 1002 	strh.w	r1, [ip, r2]
d00524ae:	f885 4042 	strb.w	r4, [r5, #66]	; 0x42
d00524b2:	64ae      	str	r6, [r5, #72]	; 0x48
d00524b4:	64ee      	str	r6, [r5, #76]	; 0x4c
d00524b6:	652e      	str	r6, [r5, #80]	; 0x50
d00524b8:	646e      	str	r6, [r5, #68]	; 0x44
d00524ba:	b005      	add	sp, #20
d00524bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00524be:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00524c2:	4618      	mov	r0, r3
d00524c4:	b005      	add	sp, #20
d00524c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00524c8:	d00f5680 	.word	0xd00f5680
d00524cc:	d00f56c0 	.word	0xd00f56c0

d00524d0 <entitySetPosition>:
d00524d0:	b430      	push	{r4, r5}
d00524d2:	28ff      	cmp	r0, #255	; 0xff
d00524d4:	b084      	sub	sp, #16
d00524d6:	ed8d 0a01 	vstr	s0, [sp, #4]
d00524da:	edcd 0a02 	vstr	s1, [sp, #8]
d00524de:	ed8d 1a03 	vstr	s2, [sp, #12]
d00524e2:	d810      	bhi.n	d0052506 <entitySetPosition+0x36>
d00524e4:	4b09      	ldr	r3, [pc, #36]	; (d005250c <entitySetPosition+0x3c>)
d00524e6:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d00524ea:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d00524ee:	b152      	cbz	r2, d0052506 <entitySetPosition+0x36>
d00524f0:	699a      	ldr	r2, [r3, #24]
d00524f2:	b142      	cbz	r2, d0052506 <entitySetPosition+0x36>
d00524f4:	ac01      	add	r4, sp, #4
d00524f6:	f103 050c 	add.w	r5, r3, #12
d00524fa:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d00524fe:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0052502:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0052506:	b004      	add	sp, #16
d0052508:	bc30      	pop	{r4, r5}
d005250a:	4770      	bx	lr
d005250c:	d00f5680 	.word	0xd00f5680

d0052510 <entityGetPosition>:
d0052510:	28ff      	cmp	r0, #255	; 0xff
d0052512:	b088      	sub	sp, #32
d0052514:	d80c      	bhi.n	d0052530 <entityGetPosition+0x20>
d0052516:	4b0c      	ldr	r3, [pc, #48]	; (d0052548 <entityGetPosition+0x38>)
d0052518:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d005251c:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0052520:	b133      	cbz	r3, d0052530 <entityGetPosition+0x20>
d0052522:	6983      	ldr	r3, [r0, #24]
d0052524:	b123      	cbz	r3, d0052530 <entityGetPosition+0x20>
d0052526:	ab08      	add	r3, sp, #32
d0052528:	c807      	ldmia	r0, {r0, r1, r2}
d005252a:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005252e:	e003      	b.n	d0052538 <entityGetPosition+0x28>
d0052530:	2300      	movs	r3, #0
d0052532:	9305      	str	r3, [sp, #20]
d0052534:	9306      	str	r3, [sp, #24]
d0052536:	9307      	str	r3, [sp, #28]
d0052538:	ed9d 0a05 	vldr	s0, [sp, #20]
d005253c:	eddd 0a06 	vldr	s1, [sp, #24]
d0052540:	ed9d 1a07 	vldr	s2, [sp, #28]
d0052544:	b008      	add	sp, #32
d0052546:	4770      	bx	lr
d0052548:	d00f5680 	.word	0xd00f5680

d005254c <entityGetForward>:
d005254c:	28ff      	cmp	r0, #255	; 0xff
d005254e:	b088      	sub	sp, #32
d0052550:	d80d      	bhi.n	d005256e <entityGetForward+0x22>
d0052552:	4b0e      	ldr	r3, [pc, #56]	; (d005258c <entityGetForward+0x40>)
d0052554:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0052558:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d005255c:	b13b      	cbz	r3, d005256e <entityGetForward+0x22>
d005255e:	6983      	ldr	r3, [r0, #24]
d0052560:	b12b      	cbz	r3, d005256e <entityGetForward+0x22>
d0052562:	301c      	adds	r0, #28
d0052564:	ab08      	add	r3, sp, #32
d0052566:	c807      	ldmia	r0, {r0, r1, r2}
d0052568:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005256c:	e005      	b.n	d005257a <entityGetForward+0x2e>
d005256e:	2300      	movs	r3, #0
d0052570:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0052574:	9305      	str	r3, [sp, #20]
d0052576:	9207      	str	r2, [sp, #28]
d0052578:	9306      	str	r3, [sp, #24]
d005257a:	ed9d 0a05 	vldr	s0, [sp, #20]
d005257e:	eddd 0a06 	vldr	s1, [sp, #24]
d0052582:	ed9d 1a07 	vldr	s2, [sp, #28]
d0052586:	b008      	add	sp, #32
d0052588:	4770      	bx	lr
d005258a:	bf00      	nop
d005258c:	d00f5680 	.word	0xd00f5680

d0052590 <entityMoveForward>:
d0052590:	28ff      	cmp	r0, #255	; 0xff
d0052592:	d82f      	bhi.n	d00525f4 <entityMoveForward+0x64>
d0052594:	b510      	push	{r4, lr}
d0052596:	4c18      	ldr	r4, [pc, #96]	; (d00525f8 <entityMoveForward+0x68>)
d0052598:	b084      	sub	sp, #16
d005259a:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d005259e:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d00525a2:	b32b      	cbz	r3, d00525f0 <entityMoveForward+0x60>
d00525a4:	69a3      	ldr	r3, [r4, #24]
d00525a6:	b31b      	cbz	r3, d00525f0 <entityMoveForward+0x60>
d00525a8:	f104 030c 	add.w	r3, r4, #12
d00525ac:	eef0 1a40 	vmov.f32	s3, s0
d00525b0:	edd4 0a08 	vldr	s1, [r4, #32]
d00525b4:	ed94 0a07 	vldr	s0, [r4, #28]
d00525b8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00525bc:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d00525c0:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00525c4:	f7fe fec6 	bl	d0051354 <vec3Scale>
d00525c8:	eef0 1a40 	vmov.f32	s3, s0
d00525cc:	eeb0 2a60 	vmov.f32	s4, s1
d00525d0:	ed94 0a00 	vldr	s0, [r4]
d00525d4:	eef0 2a41 	vmov.f32	s5, s2
d00525d8:	edd4 0a01 	vldr	s1, [r4, #4]
d00525dc:	ed94 1a02 	vldr	s2, [r4, #8]
d00525e0:	f7fe feae 	bl	d0051340 <vec3Add>
d00525e4:	ed84 0a00 	vstr	s0, [r4]
d00525e8:	edc4 0a01 	vstr	s1, [r4, #4]
d00525ec:	ed84 1a02 	vstr	s2, [r4, #8]
d00525f0:	b004      	add	sp, #16
d00525f2:	bd10      	pop	{r4, pc}
d00525f4:	4770      	bx	lr
d00525f6:	bf00      	nop
d00525f8:	d00f5680 	.word	0xd00f5680

d00525fc <meshColour>:
d00525fc:	b150      	cbz	r0, d0052614 <meshColour+0x18>
d00525fe:	6903      	ldr	r3, [r0, #16]
d0052600:	b143      	cbz	r3, d0052614 <meshColour+0x18>
d0052602:	6942      	ldr	r2, [r0, #20]
d0052604:	2a00      	cmp	r2, #0
d0052606:	dd05      	ble.n	d0052614 <meshColour+0x18>
d0052608:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d005260c:	7319      	strb	r1, [r3, #12]
d005260e:	3310      	adds	r3, #16
d0052610:	429a      	cmp	r2, r3
d0052612:	d1fb      	bne.n	d005260c <meshColour+0x10>
d0052614:	4770      	bx	lr
d0052616:	bf00      	nop

d0052618 <entityTurnLocal>:
d0052618:	28ff      	cmp	r0, #255	; 0xff
d005261a:	d82a      	bhi.n	d0052672 <entityTurnLocal+0x5a>
d005261c:	b510      	push	{r4, lr}
d005261e:	4c65      	ldr	r4, [pc, #404]	; (d00527b4 <entityTurnLocal+0x19c>)
d0052620:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
d0052624:	ed2d 8b04 	vpush	{d8-d9}
d0052628:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d005262c:	b1f3      	cbz	r3, d005266c <entityTurnLocal+0x54>
d005262e:	69a3      	ldr	r3, [r4, #24]
d0052630:	b1e3      	cbz	r3, d005266c <entityTurnLocal+0x54>
d0052632:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0052636:	eeb0 9a40 	vmov.f32	s18, s0
d005263a:	eef0 8a60 	vmov.f32	s17, s1
d005263e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052642:	eeb0 8a41 	vmov.f32	s16, s2
d0052646:	f040 8081 	bne.w	d005274c <entityTurnLocal+0x134>
d005264a:	eef5 8a40 	vcmp.f32	s17, #0.0
d005264e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052652:	d148      	bne.n	d00526e6 <entityTurnLocal+0xce>
d0052654:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0052658:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005265c:	d10a      	bne.n	d0052674 <entityTurnLocal+0x5c>
d005265e:	4620      	mov	r0, r4
d0052660:	ecbd 8b04 	vpop	{d8-d9}
d0052664:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0052668:	f7ff bc48 	b.w	d0051efc <normalizeEntity.part.0>
d005266c:	ecbd 8b04 	vpop	{d8-d9}
d0052670:	bd10      	pop	{r4, pc}
d0052672:	4770      	bx	lr
d0052674:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0052678:	eeb0 3a48 	vmov.f32	s6, s16
d005267c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0052680:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0052684:	edd4 1a07 	vldr	s3, [r4, #28]
d0052688:	ed94 2a08 	vldr	s4, [r4, #32]
d005268c:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0052690:	f7fe fedc 	bl	d005144c <rotateAroundAxis>
d0052694:	eef0 6a40 	vmov.f32	s13, s0
d0052698:	eeb0 7a60 	vmov.f32	s14, s1
d005269c:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d00526a0:	eef0 7a41 	vmov.f32	s15, s2
d00526a4:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d00526a8:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d00526ac:	eeb0 3a48 	vmov.f32	s6, s16
d00526b0:	edd4 1a07 	vldr	s3, [r4, #28]
d00526b4:	ed94 2a08 	vldr	s4, [r4, #32]
d00526b8:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d00526bc:	edc4 6a0a 	vstr	s13, [r4, #40]	; 0x28
d00526c0:	ed84 7a0b 	vstr	s14, [r4, #44]	; 0x2c
d00526c4:	edc4 7a0c 	vstr	s15, [r4, #48]	; 0x30
d00526c8:	f7fe fec0 	bl	d005144c <rotateAroundAxis>
d00526cc:	4620      	mov	r0, r4
d00526ce:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d00526d2:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d00526d6:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d00526da:	ecbd 8b04 	vpop	{d8-d9}
d00526de:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00526e2:	f7ff bc0b 	b.w	d0051efc <normalizeEntity.part.0>
d00526e6:	ed94 0a07 	vldr	s0, [r4, #28]
d00526ea:	eeb0 3a68 	vmov.f32	s6, s17
d00526ee:	edd4 0a08 	vldr	s1, [r4, #32]
d00526f2:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00526f6:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00526fa:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00526fe:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0052702:	f7fe fea3 	bl	d005144c <rotateAroundAxis>
d0052706:	eef0 6a40 	vmov.f32	s13, s0
d005270a:	eeb0 7a60 	vmov.f32	s14, s1
d005270e:	ed94 0a0d 	vldr	s0, [r4, #52]	; 0x34
d0052712:	eef0 7a41 	vmov.f32	s15, s2
d0052716:	edd4 0a0e 	vldr	s1, [r4, #56]	; 0x38
d005271a:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d005271e:	eeb0 3a68 	vmov.f32	s6, s17
d0052722:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0052726:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d005272a:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d005272e:	edc4 6a07 	vstr	s13, [r4, #28]
d0052732:	ed84 7a08 	vstr	s14, [r4, #32]
d0052736:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005273a:	f7fe fe87 	bl	d005144c <rotateAroundAxis>
d005273e:	ed84 0a0d 	vstr	s0, [r4, #52]	; 0x34
d0052742:	edc4 0a0e 	vstr	s1, [r4, #56]	; 0x38
d0052746:	ed84 1a0f 	vstr	s2, [r4, #60]	; 0x3c
d005274a:	e783      	b.n	d0052654 <entityTurnLocal+0x3c>
d005274c:	eeb0 3a40 	vmov.f32	s6, s0
d0052750:	edd4 0a08 	vldr	s1, [r4, #32]
d0052754:	ed94 0a07 	vldr	s0, [r4, #28]
d0052758:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005275c:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d0052760:	ed94 2a0e 	vldr	s4, [r4, #56]	; 0x38
d0052764:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0052768:	f7fe fe70 	bl	d005144c <rotateAroundAxis>
d005276c:	eef0 6a40 	vmov.f32	s13, s0
d0052770:	eeb0 7a60 	vmov.f32	s14, s1
d0052774:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0052778:	eef0 7a41 	vmov.f32	s15, s2
d005277c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0052780:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0052784:	eeb0 3a49 	vmov.f32	s6, s18
d0052788:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d005278c:	ed94 2a0e 	vldr	s4, [r4, #56]	; 0x38
d0052790:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0052794:	edc4 6a07 	vstr	s13, [r4, #28]
d0052798:	ed84 7a08 	vstr	s14, [r4, #32]
d005279c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00527a0:	f7fe fe54 	bl	d005144c <rotateAroundAxis>
d00527a4:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00527a8:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00527ac:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00527b0:	e74b      	b.n	d005264a <entityTurnLocal+0x32>
d00527b2:	bf00      	nop
d00527b4:	d00f5680 	.word	0xd00f5680

d00527b8 <entityRotation>:
d00527b8:	28ff      	cmp	r0, #255	; 0xff
d00527ba:	d809      	bhi.n	d00527d0 <entityRotation+0x18>
d00527bc:	4a05      	ldr	r2, [pc, #20]	; (d00527d4 <entityRotation+0x1c>)
d00527be:	eb02 13c0 	add.w	r3, r2, r0, lsl #7
d00527c2:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d00527c6:	b11a      	cbz	r2, d00527d0 <entityRotation+0x18>
d00527c8:	699b      	ldr	r3, [r3, #24]
d00527ca:	b10b      	cbz	r3, d00527d0 <entityRotation+0x18>
d00527cc:	f7ff bbec 	b.w	d0051fa8 <entityRotation.part.0>
d00527d0:	4770      	bx	lr
d00527d2:	bf00      	nop
d00527d4:	d00f5680 	.word	0xd00f5680

d00527d8 <createBox>:
d00527d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00527dc:	ed2d 8b04 	vpush	{d8-d9}
d00527e0:	b0e1      	sub	sp, #388	; 0x184
d00527e2:	f04f 0824 	mov.w	r8, #36	; 0x24
d00527e6:	4606      	mov	r6, r0
d00527e8:	2100      	movs	r1, #0
d00527ea:	f20d 1547 	addw	r5, sp, #327	; 0x147
d00527ee:	4642      	mov	r2, r8
d00527f0:	eeb0 8a41 	vmov.f32	s16, s2
d00527f4:	9601      	str	r6, [sp, #4]
d00527f6:	f025 051f 	bic.w	r5, r5, #31
d00527fa:	eeb0 9a40 	vmov.f32	s18, s0
d00527fe:	eef0 8a60 	vmov.f32	s17, s1
d0052802:	f04f 090c 	mov.w	r9, #12
d0052806:	f105 001c 	add.w	r0, r5, #28
d005280a:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d005280e:	f003 fc87 	bl	d0056120 <memset>
d0052812:	2308      	movs	r3, #8
d0052814:	2060      	movs	r0, #96	; 0x60
d0052816:	f04f 0b04 	mov.w	fp, #4
d005281a:	606b      	str	r3, [r5, #4]
d005281c:	f003 fc54 	bl	d00560c8 <malloc>
d0052820:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d0052824:	4604      	mov	r4, r0
d0052826:	2060      	movs	r0, #96	; 0x60
d0052828:	f8c5 900c 	str.w	r9, [r5, #12]
d005282c:	602c      	str	r4, [r5, #0]
d005282e:	2604      	movs	r6, #4
d0052830:	ee29 0a01 	vmul.f32	s0, s18, s2
d0052834:	ee68 0a81 	vmul.f32	s1, s17, s2
d0052838:	ee28 1a01 	vmul.f32	s2, s16, s2
d005283c:	eef1 6a40 	vneg.f32	s13, s0
d0052840:	ed84 0a03 	vstr	s0, [r4, #12]
d0052844:	eeb1 7a60 	vneg.f32	s14, s1
d0052848:	ed84 0a06 	vstr	s0, [r4, #24]
d005284c:	eef1 7a41 	vneg.f32	s15, s2
d0052850:	ed84 1a08 	vstr	s2, [r4, #32]
d0052854:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0052858:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d005285c:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d0052860:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d0052864:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0052868:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d005286c:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d0052870:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d0052874:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d0052878:	edc4 6a00 	vstr	s13, [r4]
d005287c:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d0052880:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d0052884:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d0052888:	ed84 7a01 	vstr	s14, [r4, #4]
d005288c:	ed84 7a04 	vstr	s14, [r4, #16]
d0052890:	ed84 7a07 	vstr	s14, [r4, #28]
d0052894:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d0052898:	edc4 7a02 	vstr	s15, [r4, #8]
d005289c:	edc4 7a05 	vstr	s15, [r4, #20]
d00528a0:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d00528a4:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d00528a8:	f003 fc0e 	bl	d00560c8 <malloc>
d00528ac:	4607      	mov	r7, r0
d00528ae:	2260      	movs	r2, #96	; 0x60
d00528b0:	a802      	add	r0, sp, #8
d00528b2:	4987      	ldr	r1, [pc, #540]	; (d0052ad0 <createBox+0x2f8>)
d00528b4:	60af      	str	r7, [r5, #8]
d00528b6:	f003 fc25 	bl	d0056104 <memcpy>
d00528ba:	a902      	add	r1, sp, #8
d00528bc:	2260      	movs	r2, #96	; 0x60
d00528be:	4638      	mov	r0, r7
d00528c0:	f003 fc20 	bl	d0056104 <memcpy>
d00528c4:	4650      	mov	r0, sl
d00528c6:	f8c5 9014 	str.w	r9, [r5, #20]
d00528ca:	f003 fbfd 	bl	d00560c8 <malloc>
d00528ce:	4607      	mov	r7, r0
d00528d0:	4652      	mov	r2, sl
d00528d2:	a81a      	add	r0, sp, #104	; 0x68
d00528d4:	2100      	movs	r1, #0
d00528d6:	612f      	str	r7, [r5, #16]
d00528d8:	f003 fc22 	bl	d0056120 <memset>
d00528dc:	f04f 0c02 	mov.w	ip, #2
d00528e0:	4638      	mov	r0, r7
d00528e2:	2705      	movs	r7, #5
d00528e4:	4652      	mov	r2, sl
d00528e6:	f04f 0903 	mov.w	r9, #3
d00528ea:	f04f 0a06 	mov.w	sl, #6
d00528ee:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d00528f2:	f04f 0e01 	mov.w	lr, #1
d00528f6:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d00528fa:	f04f 0804 	mov.w	r8, #4
d00528fe:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d0052902:	2307      	movs	r3, #7
d0052904:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d0052908:	2122      	movs	r1, #34	; 0x22
d005290a:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d005290e:	f04f 0c06 	mov.w	ip, #6
d0052912:	9724      	str	r7, [sp, #144]	; 0x90
d0052914:	972c      	str	r7, [sp, #176]	; 0xb0
d0052916:	972f      	str	r7, [sp, #188]	; 0xbc
d0052918:	2707      	movs	r7, #7
d005291a:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d005291e:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d0052922:	f04f 0905 	mov.w	r9, #5
d0052926:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d005292a:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d005292e:	f04f 0a01 	mov.w	sl, #1
d0052932:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d0052936:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d005293a:	f04f 0801 	mov.w	r8, #1
d005293e:	933c      	str	r3, [sp, #240]	; 0xf0
d0052940:	2323      	movs	r3, #35	; 0x23
d0052942:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d0052946:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d005294a:	f04f 0e25 	mov.w	lr, #37	; 0x25
d005294e:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d0052952:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d0052956:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d005295a:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d005295e:	a91a      	add	r1, sp, #104	; 0x68
d0052960:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d0052964:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d0052968:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d005296c:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d0052970:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d0052974:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d0052978:	f04f 0b06 	mov.w	fp, #6
d005297c:	2602      	movs	r6, #2
d005297e:	2706      	movs	r7, #6
d0052980:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d0052984:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d0052988:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d005298c:	f04f 0802 	mov.w	r8, #2
d0052990:	f04f 0907 	mov.w	r9, #7
d0052994:	f04f 0a03 	mov.w	sl, #3
d0052998:	f04f 0b07 	mov.w	fp, #7
d005299c:	2603      	movs	r6, #3
d005299e:	2704      	movs	r7, #4
d00529a0:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d00529a4:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d00529a8:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d00529ac:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d00529b0:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d00529b4:	f003 fba6 	bl	d0056104 <memcpy>
d00529b8:	edd4 7a01 	vldr	s15, [r4, #4]
d00529bc:	ed94 6a04 	vldr	s12, [r4, #16]
d00529c0:	4628      	mov	r0, r5
d00529c2:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d00529c6:	ee67 6aa7 	vmul.f32	s13, s15, s15
d00529ca:	ed94 7a07 	vldr	s14, [r4, #28]
d00529ce:	ee66 7a06 	vmul.f32	s15, s12, s12
d00529d2:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d00529d6:	ee25 4aa5 	vmul.f32	s8, s11, s11
d00529da:	ed94 3a00 	vldr	s6, [r4]
d00529de:	ee27 7a07 	vmul.f32	s14, s14, s14
d00529e2:	edd4 3a03 	vldr	s7, [r4, #12]
d00529e6:	ee66 4a06 	vmul.f32	s9, s12, s12
d00529ea:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d00529ee:	eee3 6a03 	vfma.f32	s13, s6, s6
d00529f2:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d00529f6:	eee3 7aa3 	vfma.f32	s15, s7, s7
d00529fa:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d00529fe:	ee25 5a05 	vmul.f32	s10, s10, s10
d0052a02:	edd4 2a06 	vldr	s5, [r4, #24]
d0052a06:	ee65 5aa5 	vmul.f32	s11, s11, s11
d0052a0a:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d0052a0e:	ee26 6a06 	vmul.f32	s12, s12, s12
d0052a12:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d0052a16:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0052a1a:	eea3 4a03 	vfma.f32	s8, s6, s6
d0052a1e:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0052a22:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d0052a26:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0052a2a:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d0052a2e:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0052a32:	eee3 5a03 	vfma.f32	s11, s6, s6
d0052a36:	ed94 3a02 	vldr	s6, [r4, #8]
d0052a3a:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0052a3e:	edd4 3a05 	vldr	s7, [r4, #20]
d0052a42:	eee3 6a03 	vfma.f32	s13, s6, s6
d0052a46:	edd4 2a08 	vldr	s5, [r4, #32]
d0052a4a:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d0052a4e:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0052a52:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d0052a56:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0052a5a:	eea3 4a03 	vfma.f32	s8, s6, s6
d0052a5e:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d0052a62:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0052a66:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d0052a6a:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d0052a6e:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0052a72:	eee3 5a03 	vfma.f32	s11, s6, s6
d0052a76:	ed9f 3a17 	vldr	s6, [pc, #92]	; d0052ad4 <createBox+0x2fc>
d0052a7a:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0052a7e:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d0052a82:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d0052a86:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d0052a8a:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d0052a8e:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d0052a92:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0052a96:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0052a9a:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d0052a9e:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0052aa2:	ed85 7a06 	vstr	s14, [r5, #24]
d0052aa6:	f7fb fdf5 	bl	d004e694 <meshSetDefaultMaterial>
d0052aaa:	9e01      	ldr	r6, [sp, #4]
d0052aac:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0052aae:	4634      	mov	r4, r6
d0052ab0:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0052ab2:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0052ab4:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0052ab6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0052ab8:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0052aba:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052abe:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0052ac2:	4630      	mov	r0, r6
d0052ac4:	b061      	add	sp, #388	; 0x184
d0052ac6:	ecbd 8b04 	vpop	{d8-d9}
d0052aca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052ace:	bf00      	nop
d0052ad0:	d00584c0 	.word	0xd00584c0
d0052ad4:	00000000 	.word	0x00000000

d0052ad8 <copyMesh>:
d0052ad8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052adc:	460f      	mov	r7, r1
d0052ade:	b083      	sub	sp, #12
d0052ae0:	2240      	movs	r2, #64	; 0x40
d0052ae2:	2100      	movs	r1, #0
d0052ae4:	4606      	mov	r6, r0
d0052ae6:	f003 fb1b 	bl	d0056120 <memset>
d0052aea:	2f00      	cmp	r7, #0
d0052aec:	d077      	beq.n	d0052bde <copyMesh+0x106>
d0052aee:	687b      	ldr	r3, [r7, #4]
d0052af0:	697a      	ldr	r2, [r7, #20]
d0052af2:	2b00      	cmp	r3, #0
d0052af4:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0052af8:	9301      	str	r3, [sp, #4]
d0052afa:	9200      	str	r2, [sp, #0]
d0052afc:	dc59      	bgt.n	d0052bb2 <copyMesh+0xda>
d0052afe:	f1b8 0f00 	cmp.w	r8, #0
d0052b02:	f04f 0900 	mov.w	r9, #0
d0052b06:	dc5d      	bgt.n	d0052bc4 <copyMesh+0xec>
d0052b08:	9b00      	ldr	r3, [sp, #0]
d0052b0a:	f04f 0a00 	mov.w	sl, #0
d0052b0e:	2b00      	cmp	r3, #0
d0052b10:	dc60      	bgt.n	d0052bd4 <copyMesh+0xfc>
d0052b12:	f04f 0c00 	mov.w	ip, #0
d0052b16:	9b01      	ldr	r3, [sp, #4]
d0052b18:	2b00      	cmp	r3, #0
d0052b1a:	dd0f      	ble.n	d0052b3c <copyMesh+0x64>
d0052b1c:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0052b20:	f8d7 e000 	ldr.w	lr, [r7]
d0052b24:	2300      	movs	r3, #0
d0052b26:	00ad      	lsls	r5, r5, #2
d0052b28:	eb0e 0203 	add.w	r2, lr, r3
d0052b2c:	eb09 0403 	add.w	r4, r9, r3
d0052b30:	330c      	adds	r3, #12
d0052b32:	ca07      	ldmia	r2, {r0, r1, r2}
d0052b34:	429d      	cmp	r5, r3
d0052b36:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0052b3a:	d1f5      	bne.n	d0052b28 <copyMesh+0x50>
d0052b3c:	f1b8 0f00 	cmp.w	r8, #0
d0052b40:	dd0b      	ble.n	d0052b5a <copyMesh+0x82>
d0052b42:	68bc      	ldr	r4, [r7, #8]
d0052b44:	2300      	movs	r3, #0
d0052b46:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0052b4a:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0052b4e:	3301      	adds	r3, #1
d0052b50:	c903      	ldmia	r1, {r0, r1}
d0052b52:	4598      	cmp	r8, r3
d0052b54:	e882 0003 	stmia.w	r2, {r0, r1}
d0052b58:	d1f5      	bne.n	d0052b46 <copyMesh+0x6e>
d0052b5a:	9b00      	ldr	r3, [sp, #0]
d0052b5c:	2b00      	cmp	r3, #0
d0052b5e:	dd0e      	ble.n	d0052b7e <copyMesh+0xa6>
d0052b60:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0052b64:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0052b68:	2400      	movs	r4, #0
d0052b6a:	eb0b 0304 	add.w	r3, fp, r4
d0052b6e:	eb0c 0504 	add.w	r5, ip, r4
d0052b72:	3410      	adds	r4, #16
d0052b74:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0052b76:	4574      	cmp	r4, lr
d0052b78:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0052b7c:	d1f5      	bne.n	d0052b6a <copyMesh+0x92>
d0052b7e:	9a01      	ldr	r2, [sp, #4]
d0052b80:	f107 0520 	add.w	r5, r7, #32
d0052b84:	69bb      	ldr	r3, [r7, #24]
d0052b86:	f106 0420 	add.w	r4, r6, #32
d0052b8a:	6072      	str	r2, [r6, #4]
d0052b8c:	9a00      	ldr	r2, [sp, #0]
d0052b8e:	61b3      	str	r3, [r6, #24]
d0052b90:	6172      	str	r2, [r6, #20]
d0052b92:	f8c6 9000 	str.w	r9, [r6]
d0052b96:	f8c6 c010 	str.w	ip, [r6, #16]
d0052b9a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0052b9c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0052b9e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0052ba2:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0052ba6:	4630      	mov	r0, r6
d0052ba8:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0052bac:	b003      	add	sp, #12
d0052bae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052bb2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0052bb6:	0080      	lsls	r0, r0, #2
d0052bb8:	f003 fa86 	bl	d00560c8 <malloc>
d0052bbc:	f1b8 0f00 	cmp.w	r8, #0
d0052bc0:	4681      	mov	r9, r0
d0052bc2:	dda1      	ble.n	d0052b08 <copyMesh+0x30>
d0052bc4:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0052bc8:	f003 fa7e 	bl	d00560c8 <malloc>
d0052bcc:	9b00      	ldr	r3, [sp, #0]
d0052bce:	4682      	mov	sl, r0
d0052bd0:	2b00      	cmp	r3, #0
d0052bd2:	dd9e      	ble.n	d0052b12 <copyMesh+0x3a>
d0052bd4:	0118      	lsls	r0, r3, #4
d0052bd6:	f003 fa77 	bl	d00560c8 <malloc>
d0052bda:	4684      	mov	ip, r0
d0052bdc:	e79b      	b.n	d0052b16 <copyMesh+0x3e>
d0052bde:	2300      	movs	r3, #0
d0052be0:	4630      	mov	r0, r6
d0052be2:	e9c6 7700 	strd	r7, r7, [r6]
d0052be6:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0052bea:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0052bee:	61b3      	str	r3, [r6, #24]
d0052bf0:	b003      	add	sp, #12
d0052bf2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052bf6:	bf00      	nop

d0052bf8 <entityLookAtPosition>:
d0052bf8:	28ff      	cmp	r0, #255	; 0xff
d0052bfa:	b530      	push	{r4, r5, lr}
d0052bfc:	ed2d 8b04 	vpush	{d8-d9}
d0052c00:	b08d      	sub	sp, #52	; 0x34
d0052c02:	d848      	bhi.n	d0052c96 <entityLookAtPosition+0x9e>
d0052c04:	4b30      	ldr	r3, [pc, #192]	; (d0052cc8 <entityLookAtPosition+0xd0>)
d0052c06:	4604      	mov	r4, r0
d0052c08:	eb03 13c0 	add.w	r3, r3, r0, lsl #7
d0052c0c:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
d0052c10:	2a00      	cmp	r2, #0
d0052c12:	d040      	beq.n	d0052c96 <entityLookAtPosition+0x9e>
d0052c14:	699a      	ldr	r2, [r3, #24]
d0052c16:	2a00      	cmp	r2, #0
d0052c18:	d03d      	beq.n	d0052c96 <entityLookAtPosition+0x9e>
d0052c1a:	edd3 8a00 	vldr	s17, [r3]
d0052c1e:	460d      	mov	r5, r1
d0052c20:	ed93 9a01 	vldr	s18, [r3, #4]
d0052c24:	ee70 8a68 	vsub.f32	s17, s0, s17
d0052c28:	ed93 8a02 	vldr	s16, [r3, #8]
d0052c2c:	ee30 9ac9 	vsub.f32	s18, s1, s18
d0052c30:	ee31 8a48 	vsub.f32	s16, s2, s16
d0052c34:	eef5 8a40 	vcmp.f32	s17, #0.0
d0052c38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c3c:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0052c40:	bf14      	ite	ne
d0052c42:	2300      	movne	r3, #0
d0052c44:	2301      	moveq	r3, #1
d0052c46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c4a:	bf18      	it	ne
d0052c4c:	2300      	movne	r3, #0
d0052c4e:	b123      	cbz	r3, d0052c5a <entityLookAtPosition+0x62>
d0052c50:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0052c54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c58:	d01d      	beq.n	d0052c96 <entityLookAtPosition+0x9e>
d0052c5a:	eef0 0a48 	vmov.f32	s1, s16
d0052c5e:	ee28 8a08 	vmul.f32	s16, s16, s16
d0052c62:	eeb0 0a68 	vmov.f32	s0, s17
d0052c66:	f004 fe17 	bl	d0057898 <atan2f>
d0052c6a:	eef0 7a40 	vmov.f32	s15, s0
d0052c6e:	eea8 8aa8 	vfma.f32	s16, s17, s17
d0052c72:	eeb0 0a49 	vmov.f32	s0, s18
d0052c76:	eeb0 9a67 	vmov.f32	s18, s15
d0052c7a:	eef1 0ac8 	vsqrt.f32	s1, s16
d0052c7e:	f004 fe0b 	bl	d0057898 <atan2f>
d0052c82:	eeb1 8a40 	vneg.f32	s16, s0
d0052c86:	b9a5      	cbnz	r5, d0052cb2 <entityLookAtPosition+0xba>
d0052c88:	2300      	movs	r3, #0
d0052c8a:	ed8d 8a09 	vstr	s16, [sp, #36]	; 0x24
d0052c8e:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d0052c92:	930b      	str	r3, [sp, #44]	; 0x2c
d0052c94:	e003      	b.n	d0052c9e <entityLookAtPosition+0xa6>
d0052c96:	2300      	movs	r3, #0
d0052c98:	9309      	str	r3, [sp, #36]	; 0x24
d0052c9a:	930a      	str	r3, [sp, #40]	; 0x28
d0052c9c:	930b      	str	r3, [sp, #44]	; 0x2c
d0052c9e:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0052ca2:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0052ca6:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d0052caa:	b00d      	add	sp, #52	; 0x34
d0052cac:	ecbd 8b04 	vpop	{d8-d9}
d0052cb0:	bd30      	pop	{r4, r5, pc}
d0052cb2:	eef0 0a48 	vmov.f32	s1, s16
d0052cb6:	4620      	mov	r0, r4
d0052cb8:	eeb0 0a49 	vmov.f32	s0, s18
d0052cbc:	2101      	movs	r1, #1
d0052cbe:	ed9f 1a03 	vldr	s2, [pc, #12]	; d0052ccc <entityLookAtPosition+0xd4>
d0052cc2:	f7ff f971 	bl	d0051fa8 <entityRotation.part.0>
d0052cc6:	e7df      	b.n	d0052c88 <entityLookAtPosition+0x90>
d0052cc8:	d00f5680 	.word	0xd00f5680
d0052ccc:	00000000 	.word	0x00000000

d0052cd0 <entityAllowHit>:
d0052cd0:	28ff      	cmp	r0, #255	; 0xff
d0052cd2:	d813      	bhi.n	d0052cfc <entityAllowHit+0x2c>
d0052cd4:	4b0a      	ldr	r3, [pc, #40]	; (d0052d00 <entityAllowHit+0x30>)
d0052cd6:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0052cda:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0052cde:	b16b      	cbz	r3, d0052cfc <entityAllowHit+0x2c>
d0052ce0:	6983      	ldr	r3, [r0, #24]
d0052ce2:	b15b      	cbz	r3, d0052cfc <entityAllowHit+0x2c>
d0052ce4:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d0052ce8:	b121      	cbz	r1, d0052cf4 <entityAllowHit+0x24>
d0052cea:	f043 0302 	orr.w	r3, r3, #2
d0052cee:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0052cf2:	4770      	bx	lr
d0052cf4:	f023 0302 	bic.w	r3, r3, #2
d0052cf8:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0052cfc:	4770      	bx	lr
d0052cfe:	bf00      	nop
d0052d00:	d00f5680 	.word	0xd00f5680

d0052d04 <entityVisible>:
d0052d04:	28ff      	cmp	r0, #255	; 0xff
d0052d06:	d813      	bhi.n	d0052d30 <entityVisible+0x2c>
d0052d08:	4b0a      	ldr	r3, [pc, #40]	; (d0052d34 <entityVisible+0x30>)
d0052d0a:	eb03 10c0 	add.w	r0, r3, r0, lsl #7
d0052d0e:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
d0052d12:	b16b      	cbz	r3, d0052d30 <entityVisible+0x2c>
d0052d14:	6983      	ldr	r3, [r0, #24]
d0052d16:	b15b      	cbz	r3, d0052d30 <entityVisible+0x2c>
d0052d18:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
d0052d1c:	b121      	cbz	r1, d0052d28 <entityVisible+0x24>
d0052d1e:	f043 0301 	orr.w	r3, r3, #1
d0052d22:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0052d26:	4770      	bx	lr
d0052d28:	f023 0301 	bic.w	r3, r3, #1
d0052d2c:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
d0052d30:	4770      	bx	lr
d0052d32:	bf00      	nop
d0052d34:	d00f5680 	.word	0xd00f5680

d0052d38 <entitySweepRaycastTest>:
d0052d38:	b5f0      	push	{r4, r5, r6, r7, lr}
d0052d3a:	4f16      	ldr	r7, [pc, #88]	; (d0052d94 <entitySweepRaycastTest+0x5c>)
d0052d3c:	b08b      	sub	sp, #44	; 0x2c
d0052d3e:	4616      	mov	r6, r2
d0052d40:	7c3c      	ldrb	r4, [r7, #16]
d0052d42:	7c7d      	ldrb	r5, [r7, #17]
d0052d44:	f897 c012 	ldrb.w	ip, [r7, #18]
d0052d48:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
d0052d4c:	7cff      	ldrb	r7, [r7, #19]
d0052d4e:	461d      	mov	r5, r3
d0052d50:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
d0052d54:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d0052d58:	6823      	ldr	r3, [r4, #0]
d0052d5a:	685c      	ldr	r4, [r3, #4]
d0052d5c:	b102      	cbz	r2, d0052d60 <entitySweepRaycastTest+0x28>
d0052d5e:	aa03      	add	r2, sp, #12
d0052d60:	b1b5      	cbz	r5, d0052d90 <entitySweepRaycastTest+0x58>
d0052d62:	ab06      	add	r3, sp, #24
d0052d64:	4f0c      	ldr	r7, [pc, #48]	; (d0052d98 <entitySweepRaycastTest+0x60>)
d0052d66:	9700      	str	r7, [sp, #0]
d0052d68:	47a0      	blx	r4
d0052d6a:	b178      	cbz	r0, d0052d8c <entitySweepRaycastTest+0x54>
d0052d6c:	b12e      	cbz	r6, d0052d7a <entitySweepRaycastTest+0x42>
d0052d6e:	9903      	ldr	r1, [sp, #12]
d0052d70:	9a04      	ldr	r2, [sp, #16]
d0052d72:	9b05      	ldr	r3, [sp, #20]
d0052d74:	6031      	str	r1, [r6, #0]
d0052d76:	6072      	str	r2, [r6, #4]
d0052d78:	60b3      	str	r3, [r6, #8]
d0052d7a:	b13d      	cbz	r5, d0052d8c <entitySweepRaycastTest+0x54>
d0052d7c:	9c07      	ldr	r4, [sp, #28]
d0052d7e:	9908      	ldr	r1, [sp, #32]
d0052d80:	9a06      	ldr	r2, [sp, #24]
d0052d82:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0052d84:	606c      	str	r4, [r5, #4]
d0052d86:	60a9      	str	r1, [r5, #8]
d0052d88:	602a      	str	r2, [r5, #0]
d0052d8a:	60eb      	str	r3, [r5, #12]
d0052d8c:	b00b      	add	sp, #44	; 0x2c
d0052d8e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0052d90:	462b      	mov	r3, r5
d0052d92:	e7e7      	b.n	d0052d64 <entitySweepRaycastTest+0x2c>
d0052d94:	2001f000 	.word	0x2001f000
d0052d98:	d00f5680 	.word	0xd00f5680

d0052d9c <buildLightingCLUT>:
d0052d9c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052da0:	f1b2 0900 	subs.w	r9, r2, #0
d0052da4:	b085      	sub	sp, #20
d0052da6:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0052da8:	f340 8212 	ble.w	d00531d0 <buildLightingCLUT+0x434>
d0052dac:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052db0:	4f24      	ldr	r7, [pc, #144]	; (d0052e44 <buildLightingCLUT+0xa8>)
d0052db2:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0052db6:	edd4 4a00 	vldr	s9, [r4]
d0052dba:	ed94 5a01 	vldr	s10, [r4, #4]
d0052dbe:	eb09 0807 	add.w	r8, r9, r7
d0052dc2:	edd4 5a02 	vldr	s11, [r4, #8]
d0052dc6:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d0052dca:	ed94 6a03 	vldr	s12, [r4, #12]
d0052dce:	44bc      	add	ip, r7
d0052dd0:	edd4 6a04 	vldr	s13, [r4, #16]
d0052dd4:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0052dd8:	3904      	subs	r1, #4
d0052dda:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0052dde:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0052de2:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0052e48 <buildLightingCLUT+0xac>
d0052de6:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0052dea:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0052dee:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0052df2:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0052df6:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0052dfa:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0052dfe:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0052e02:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0052e06:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0052e0a:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0052e0e:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0052e12:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0052e16:	0e1c      	lsrs	r4, r3, #24
d0052e18:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0052e1c:	b2da      	uxtb	r2, r3
d0052e1e:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0052e22:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0052e26:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0052e2a:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0052e2e:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0052e32:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0052e36:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0052e3a:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0052e3e:	9601      	str	r6, [sp, #4]
d0052e40:	e004      	b.n	d0052e4c <buildLightingCLUT+0xb0>
d0052e42:	bf00      	nop
d0052e44:	4000001f 	.word	0x4000001f
d0052e48:	00000000 	.word	0x00000000
d0052e4c:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0052e50:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052e54:	0e1e      	lsrs	r6, r3, #24
d0052e56:	fa5f fa83 	uxtb.w	sl, r3
d0052e5a:	4549      	cmp	r1, r9
d0052e5c:	ee07 6a10 	vmov	s14, r6
d0052e60:	eba5 060b 	sub.w	r6, r5, fp
d0052e64:	ee04 ba10 	vmov	s8, fp
d0052e68:	ee07 6a90 	vmov	s15, r6
d0052e6c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052e70:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052e74:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052e78:	ee02 6a10 	vmov	s4, r6
d0052e7c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052e80:	eba2 060a 	sub.w	r6, r2, sl
d0052e84:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052e88:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052e8c:	ee04 aa10 	vmov	s8, sl
d0052e90:	ee02 6a90 	vmov	s5, r6
d0052e94:	eba0 0603 	sub.w	r6, r0, r3
d0052e98:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0052e9c:	ee07 3a90 	vmov	s15, r3
d0052ea0:	eea4 7a82 	vfma.f32	s14, s9, s4
d0052ea4:	ee03 6a10 	vmov	s6, r6
d0052ea8:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0052eac:	9e01      	ldr	r6, [sp, #4]
d0052eae:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052eb2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0052eb6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052eba:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0052ebe:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0052ec2:	eee4 7a83 	vfma.f32	s15, s9, s6
d0052ec6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052eca:	edcd 3a02 	vstr	s7, [sp, #8]
d0052ece:	f89d a008 	ldrb.w	sl, [sp, #8]
d0052ed2:	ee17 3a10 	vmov	r3, s14
d0052ed6:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052eda:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052ede:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052ee2:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052ee6:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052eea:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052eee:	edcd 7a03 	vstr	s15, [sp, #12]
d0052ef2:	ea43 030b 	orr.w	r3, r3, fp
d0052ef6:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052efa:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052efe:	f846 3f04 	str.w	r3, [r6, #4]!
d0052f02:	680b      	ldr	r3, [r1, #0]
d0052f04:	9601      	str	r6, [sp, #4]
d0052f06:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052f0a:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0052f0e:	fa5f fa83 	uxtb.w	sl, r3
d0052f12:	ee07 6a10 	vmov	s14, r6
d0052f16:	eba5 060b 	sub.w	r6, r5, fp
d0052f1a:	ee04 ba10 	vmov	s8, fp
d0052f1e:	ee07 6a90 	vmov	s15, r6
d0052f22:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052f26:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052f2a:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052f2e:	ee02 6a10 	vmov	s4, r6
d0052f32:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052f36:	eba2 060a 	sub.w	r6, r2, sl
d0052f3a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052f3e:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052f42:	ee04 aa10 	vmov	s8, sl
d0052f46:	ee02 6a90 	vmov	s5, r6
d0052f4a:	eba0 0603 	sub.w	r6, r0, r3
d0052f4e:	eee5 3a27 	vfma.f32	s7, s10, s15
d0052f52:	ee07 3a90 	vmov	s15, r3
d0052f56:	eea5 7a02 	vfma.f32	s14, s10, s4
d0052f5a:	ee03 6a10 	vmov	s6, r6
d0052f5e:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0052f62:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0052f66:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0052f6a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052f6e:	eea5 4a22 	vfma.f32	s8, s10, s5
d0052f72:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0052f76:	eee5 7a03 	vfma.f32	s15, s10, s6
d0052f7a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0052f7e:	edcd 3a02 	vstr	s7, [sp, #8]
d0052f82:	f89d a008 	ldrb.w	sl, [sp, #8]
d0052f86:	ee17 3a10 	vmov	r3, s14
d0052f8a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0052f8e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0052f92:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052f96:	ed8d 7a02 	vstr	s14, [sp, #8]
d0052f9a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0052f9e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0052fa2:	edcd 7a03 	vstr	s15, [sp, #12]
d0052fa6:	ea43 030b 	orr.w	r3, r3, fp
d0052faa:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0052fae:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0052fb2:	f848 3f04 	str.w	r3, [r8, #4]!
d0052fb6:	680b      	ldr	r3, [r1, #0]
d0052fb8:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0052fbc:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0052fc0:	fa5f fa83 	uxtb.w	sl, r3
d0052fc4:	ee07 6a10 	vmov	s14, r6
d0052fc8:	eba5 060b 	sub.w	r6, r5, fp
d0052fcc:	ee04 ba10 	vmov	s8, fp
d0052fd0:	ee07 6a90 	vmov	s15, r6
d0052fd4:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0052fd8:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0052fdc:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0052fe0:	ee02 6a10 	vmov	s4, r6
d0052fe4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052fe8:	eba2 060a 	sub.w	r6, r2, sl
d0052fec:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0052ff0:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0052ff4:	ee04 aa10 	vmov	s8, sl
d0052ff8:	ee02 6a90 	vmov	s5, r6
d0052ffc:	eba0 0603 	sub.w	r6, r0, r3
d0053000:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0053004:	ee07 3a90 	vmov	s15, r3
d0053008:	eea5 7a82 	vfma.f32	s14, s11, s4
d005300c:	ee03 6a10 	vmov	s6, r6
d0053010:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0053014:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0053018:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d005301c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053020:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0053024:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0053028:	eee5 7a83 	vfma.f32	s15, s11, s6
d005302c:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0053030:	edcd 3a02 	vstr	s7, [sp, #8]
d0053034:	f89d a008 	ldrb.w	sl, [sp, #8]
d0053038:	ee17 3a10 	vmov	r3, s14
d005303c:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0053040:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0053044:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053048:	ed8d 7a02 	vstr	s14, [sp, #8]
d005304c:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0053050:	f89d b008 	ldrb.w	fp, [sp, #8]
d0053054:	edcd 7a03 	vstr	s15, [sp, #12]
d0053058:	ea43 030b 	orr.w	r3, r3, fp
d005305c:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0053060:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0053064:	f84e 3f04 	str.w	r3, [lr, #4]!
d0053068:	680b      	ldr	r3, [r1, #0]
d005306a:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d005306e:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0053072:	fa5f fa83 	uxtb.w	sl, r3
d0053076:	ee07 6a10 	vmov	s14, r6
d005307a:	eba5 060b 	sub.w	r6, r5, fp
d005307e:	ee04 ba10 	vmov	s8, fp
d0053082:	ee07 6a90 	vmov	s15, r6
d0053086:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005308a:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005308e:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0053092:	ee02 6a10 	vmov	s4, r6
d0053096:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005309a:	eba2 060a 	sub.w	r6, r2, sl
d005309e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00530a2:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00530a6:	ee04 aa10 	vmov	s8, sl
d00530aa:	ee02 6a90 	vmov	s5, r6
d00530ae:	eba0 0603 	sub.w	r6, r0, r3
d00530b2:	eee6 3a27 	vfma.f32	s7, s12, s15
d00530b6:	ee07 3a90 	vmov	s15, r3
d00530ba:	eea6 7a02 	vfma.f32	s14, s12, s4
d00530be:	ee03 6a10 	vmov	s6, r6
d00530c2:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00530c6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00530ca:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00530ce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00530d2:	eea6 4a22 	vfma.f32	s8, s12, s5
d00530d6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00530da:	eee6 7a03 	vfma.f32	s15, s12, s6
d00530de:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00530e2:	edcd 3a02 	vstr	s7, [sp, #8]
d00530e6:	f89d a008 	ldrb.w	sl, [sp, #8]
d00530ea:	ee17 3a10 	vmov	r3, s14
d00530ee:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00530f2:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00530f6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00530fa:	ed8d 7a02 	vstr	s14, [sp, #8]
d00530fe:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0053102:	f89d b008 	ldrb.w	fp, [sp, #8]
d0053106:	edcd 7a03 	vstr	s15, [sp, #12]
d005310a:	ea43 030b 	orr.w	r3, r3, fp
d005310e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0053112:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0053116:	f84c 3f04 	str.w	r3, [ip, #4]!
d005311a:	680b      	ldr	r3, [r1, #0]
d005311c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0053120:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0053124:	fa5f fa83 	uxtb.w	sl, r3
d0053128:	ee07 6a10 	vmov	s14, r6
d005312c:	eba5 060b 	sub.w	r6, r5, fp
d0053130:	ee04 ba10 	vmov	s8, fp
d0053134:	ee07 6a90 	vmov	s15, r6
d0053138:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005313c:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0053140:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0053144:	ee02 6a10 	vmov	s4, r6
d0053148:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005314c:	eba2 060a 	sub.w	r6, r2, sl
d0053150:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0053154:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0053158:	ee04 aa10 	vmov	s8, sl
d005315c:	ee02 6a90 	vmov	s5, r6
d0053160:	eba0 0603 	sub.w	r6, r0, r3
d0053164:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0053168:	ee07 3a90 	vmov	s15, r3
d005316c:	eea6 7a82 	vfma.f32	s14, s13, s4
d0053170:	ee03 6a10 	vmov	s6, r6
d0053174:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0053178:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005317c:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0053180:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053184:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0053188:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005318c:	eee6 7a83 	vfma.f32	s15, s13, s6
d0053190:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0053194:	edcd 3a02 	vstr	s7, [sp, #8]
d0053198:	f89d a008 	ldrb.w	sl, [sp, #8]
d005319c:	ee17 3a10 	vmov	r3, s14
d00531a0:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00531a4:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00531a8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00531ac:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00531b0:	ed8d 7a02 	vstr	s14, [sp, #8]
d00531b4:	f89d b008 	ldrb.w	fp, [sp, #8]
d00531b8:	edcd 7a03 	vstr	s15, [sp, #12]
d00531bc:	ea43 030b 	orr.w	r3, r3, fp
d00531c0:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00531c4:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00531c8:	f847 3f04 	str.w	r3, [r7, #4]!
d00531cc:	f47f ae3e 	bne.w	d0052e4c <buildLightingCLUT+0xb0>
d00531d0:	b005      	add	sp, #20
d00531d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00531d6:	bf00      	nop

d00531d8 <brightnessToShadeF>:
d00531d8:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00531dc:	eddf 7a09 	vldr	s15, [pc, #36]	; d0053204 <brightnessToShadeF+0x2c>
d00531e0:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00531e4:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d00531e8:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d00531ec:	fec0 7a47 	vminnm.f32	s15, s0, s14
d00531f0:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d00531f4:	eee7 6ac6 	vfms.f32	s13, s15, s12
d00531f8:	eea6 7ae7 	vfms.f32	s14, s13, s15
d00531fc:	ee27 0a00 	vmul.f32	s0, s14, s0
d0053200:	4770      	bx	lr
d0053202:	bf00      	nop
d0053204:	00000000 	.word	0x00000000

d0053208 <lightSetRanges>:
d0053208:	2800      	cmp	r0, #0
d005320a:	db0c      	blt.n	d0053226 <lightSetRanges+0x1e>
d005320c:	4b06      	ldr	r3, [pc, #24]	; (d0053228 <lightSetRanges+0x20>)
d005320e:	681b      	ldr	r3, [r3, #0]
d0053210:	4283      	cmp	r3, r0
d0053212:	dd08      	ble.n	d0053226 <lightSetRanges+0x1e>
d0053214:	4b05      	ldr	r3, [pc, #20]	; (d005322c <lightSetRanges+0x24>)
d0053216:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005321a:	ed80 0a08 	vstr	s0, [r0, #32]
d005321e:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0053222:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d0053226:	4770      	bx	lr
d0053228:	d005b188 	.word	0xd005b188
d005322c:	d005b1a0 	.word	0xd005b1a0

d0053230 <lightsGet>:
d0053230:	4800      	ldr	r0, [pc, #0]	; (d0053234 <lightsGet+0x4>)
d0053232:	4770      	bx	lr
d0053234:	d005b1a0 	.word	0xd005b1a0

d0053238 <lightsGetCount>:
d0053238:	4b01      	ldr	r3, [pc, #4]	; (d0053240 <lightsGetCount+0x8>)
d005323a:	6818      	ldr	r0, [r3, #0]
d005323c:	4770      	bx	lr
d005323e:	bf00      	nop
d0053240:	d005b188 	.word	0xd005b188

d0053244 <lightsClear>:
d0053244:	2100      	movs	r1, #0
d0053246:	4b03      	ldr	r3, [pc, #12]	; (d0053254 <lightsClear+0x10>)
d0053248:	f44f 7200 	mov.w	r2, #512	; 0x200
d005324c:	4802      	ldr	r0, [pc, #8]	; (d0053258 <lightsClear+0x14>)
d005324e:	6019      	str	r1, [r3, #0]
d0053250:	f002 bf66 	b.w	d0056120 <memset>
d0053254:	d005b188 	.word	0xd005b188
d0053258:	d005b1a0 	.word	0xd005b1a0

d005325c <lightEnable>:
d005325c:	4b04      	ldr	r3, [pc, #16]	; (d0053270 <lightEnable+0x14>)
d005325e:	681b      	ldr	r3, [r3, #0]
d0053260:	4298      	cmp	r0, r3
d0053262:	da03      	bge.n	d005326c <lightEnable+0x10>
d0053264:	4b03      	ldr	r3, [pc, #12]	; (d0053274 <lightEnable+0x18>)
d0053266:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005326a:	62c1      	str	r1, [r0, #44]	; 0x2c
d005326c:	4770      	bx	lr
d005326e:	bf00      	nop
d0053270:	d005b188 	.word	0xd005b188
d0053274:	d005b1a0 	.word	0xd005b1a0

d0053278 <addPointLight>:
d0053278:	4918      	ldr	r1, [pc, #96]	; (d00532dc <addPointLight+0x64>)
d005327a:	b5f0      	push	{r4, r5, r6, r7, lr}
d005327c:	680c      	ldr	r4, [r1, #0]
d005327e:	b085      	sub	sp, #20
d0053280:	2c07      	cmp	r4, #7
d0053282:	ed8d 0a01 	vstr	s0, [sp, #4]
d0053286:	edcd 0a02 	vstr	s1, [sp, #8]
d005328a:	ed8d 1a03 	vstr	s2, [sp, #12]
d005328e:	dc21      	bgt.n	d00532d4 <addPointLight+0x5c>
d0053290:	4d13      	ldr	r5, [pc, #76]	; (d00532e0 <addPointLight+0x68>)
d0053292:	01a2      	lsls	r2, r4, #6
d0053294:	2600      	movs	r6, #0
d0053296:	f8df e050 	ldr.w	lr, [pc, #80]	; d00532e8 <addPointLight+0x70>
d005329a:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d005329e:	f8df c04c 	ldr.w	ip, [pc, #76]	; d00532ec <addPointLight+0x74>
d00532a2:	54ae      	strb	r6, [r5, r2]
d00532a4:	2200      	movs	r2, #0
d00532a6:	4f0f      	ldr	r7, [pc, #60]	; (d00532e4 <addPointLight+0x6c>)
d00532a8:	1d1d      	adds	r5, r3, #4
d00532aa:	62d8      	str	r0, [r3, #44]	; 0x2c
d00532ac:	1c66      	adds	r6, r4, #1
d00532ae:	611a      	str	r2, [r3, #16]
d00532b0:	615a      	str	r2, [r3, #20]
d00532b2:	619a      	str	r2, [r3, #24]
d00532b4:	edc3 1a07 	vstr	s3, [r3, #28]
d00532b8:	f8c3 e020 	str.w	lr, [r3, #32]
d00532bc:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d00532c0:	629f      	str	r7, [r3, #40]	; 0x28
d00532c2:	ab04      	add	r3, sp, #16
d00532c4:	600e      	str	r6, [r1, #0]
d00532c6:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d00532ca:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00532ce:	4620      	mov	r0, r4
d00532d0:	b005      	add	sp, #20
d00532d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00532d4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d00532d8:	e7f9      	b.n	d00532ce <addPointLight+0x56>
d00532da:	bf00      	nop
d00532dc:	d005b188 	.word	0xd005b188
d00532e0:	d005b1a0 	.word	0xd005b1a0
d00532e4:	44020000 	.word	0x44020000
d00532e8:	42c80000 	.word	0x42c80000
d00532ec:	43660000 	.word	0x43660000

d00532f0 <addDirectionalLight>:
d00532f0:	b5f0      	push	{r4, r5, r6, r7, lr}
d00532f2:	4f15      	ldr	r7, [pc, #84]	; (d0053348 <addDirectionalLight+0x58>)
d00532f4:	683d      	ldr	r5, [r7, #0]
d00532f6:	2d07      	cmp	r5, #7
d00532f8:	ed2d 8b02 	vpush	{d8}
d00532fc:	b085      	sub	sp, #20
d00532fe:	dc1f      	bgt.n	d0053340 <addDirectionalLight+0x50>
d0053300:	4912      	ldr	r1, [pc, #72]	; (d005334c <addDirectionalLight+0x5c>)
d0053302:	2300      	movs	r3, #0
d0053304:	4606      	mov	r6, r0
d0053306:	01aa      	lsls	r2, r5, #6
d0053308:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d005330c:	2001      	movs	r0, #1
d005330e:	eeb0 8a61 	vmov.f32	s16, s3
d0053312:	6063      	str	r3, [r4, #4]
d0053314:	60a3      	str	r3, [r4, #8]
d0053316:	60e3      	str	r3, [r4, #12]
d0053318:	5488      	strb	r0, [r1, r2]
d005331a:	f7fe f847 	bl	d00513ac <vec3Normalize>
d005331e:	683b      	ldr	r3, [r7, #0]
d0053320:	ed84 8a07 	vstr	s16, [r4, #28]
d0053324:	3301      	adds	r3, #1
d0053326:	62e6      	str	r6, [r4, #44]	; 0x2c
d0053328:	ed84 0a04 	vstr	s0, [r4, #16]
d005332c:	edc4 0a05 	vstr	s1, [r4, #20]
d0053330:	ed84 1a06 	vstr	s2, [r4, #24]
d0053334:	603b      	str	r3, [r7, #0]
d0053336:	4628      	mov	r0, r5
d0053338:	b005      	add	sp, #20
d005333a:	ecbd 8b02 	vpop	{d8}
d005333e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0053340:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0053344:	e7f7      	b.n	d0053336 <addDirectionalLight+0x46>
d0053346:	bf00      	nop
d0053348:	d005b188 	.word	0xd005b188
d005334c:	d005b1a0 	.word	0xd005b1a0

d0053350 <lightSetPosition>:
d0053350:	b084      	sub	sp, #16
d0053352:	2800      	cmp	r0, #0
d0053354:	ed8d 0a01 	vstr	s0, [sp, #4]
d0053358:	edcd 0a02 	vstr	s1, [sp, #8]
d005335c:	ed8d 1a03 	vstr	s2, [sp, #12]
d0053360:	db0c      	blt.n	d005337c <lightSetPosition+0x2c>
d0053362:	4b07      	ldr	r3, [pc, #28]	; (d0053380 <lightSetPosition+0x30>)
d0053364:	681b      	ldr	r3, [r3, #0]
d0053366:	4283      	cmp	r3, r0
d0053368:	dd08      	ble.n	d005337c <lightSetPosition+0x2c>
d005336a:	4b06      	ldr	r3, [pc, #24]	; (d0053384 <lightSetPosition+0x34>)
d005336c:	aa04      	add	r2, sp, #16
d005336e:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d0053372:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0053376:	3304      	adds	r3, #4
d0053378:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d005337c:	b004      	add	sp, #16
d005337e:	4770      	bx	lr
d0053380:	d005b188 	.word	0xd005b188
d0053384:	d005b1a0 	.word	0xd005b1a0

d0053388 <lightSetIntensity>:
d0053388:	2800      	cmp	r0, #0
d005338a:	db08      	blt.n	d005339e <lightSetIntensity+0x16>
d005338c:	4b04      	ldr	r3, [pc, #16]	; (d00533a0 <lightSetIntensity+0x18>)
d005338e:	681b      	ldr	r3, [r3, #0]
d0053390:	4283      	cmp	r3, r0
d0053392:	dd04      	ble.n	d005339e <lightSetIntensity+0x16>
d0053394:	4b03      	ldr	r3, [pc, #12]	; (d00533a4 <lightSetIntensity+0x1c>)
d0053396:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d005339a:	ed80 0a07 	vstr	s0, [r0, #28]
d005339e:	4770      	bx	lr
d00533a0:	d005b188 	.word	0xd005b188
d00533a4:	d005b1a0 	.word	0xd005b1a0

d00533a8 <submitClippedTri.constprop.0>:
d00533a8:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00533ac:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00533b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533b4:	eef4 2ae7 	vcmpe.f32	s5, s15
d00533b8:	bf94      	ite	ls
d00533ba:	2301      	movls	r3, #1
d00533bc:	2300      	movhi	r3, #0
d00533be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533c2:	bf98      	it	ls
d00533c4:	f043 0301 	orrls.w	r3, r3, #1
d00533c8:	b923      	cbnz	r3, d00533d4 <submitClippedTri.constprop.0+0x2c>
d00533ca:	eeb4 4ae7 	vcmpe.f32	s8, s15
d00533ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533d2:	d800      	bhi.n	d00533d6 <submitClippedTri.constprop.0+0x2e>
d00533d4:	4770      	bx	lr
d00533d6:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00533da:	ed90 7a14 	vldr	s14, [r0, #80]	; 0x50
d00533de:	edd0 6a12 	vldr	s13, [r0, #72]	; 0x48
d00533e2:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d00533e6:	ee86 5a22 	vdiv.f32	s10, s12, s5
d00533ea:	eec6 5a04 	vdiv.f32	s11, s12, s8
d00533ee:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00533f2:	ed2d 8b02 	vpush	{d8}
d00533f6:	ee86 8a01 	vdiv.f32	s16, s12, s2
d00533fa:	b08b      	sub	sp, #44	; 0x2c
d00533fc:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0053400:	ee65 1a21 	vmul.f32	s3, s10, s3
d0053404:	ee25 2a02 	vmul.f32	s4, s10, s4
d0053408:	ee37 7a28 	vadd.f32	s14, s14, s17
d005340c:	ee77 7aa8 	vadd.f32	s15, s15, s17
d0053410:	ee65 3aa3 	vmul.f32	s7, s11, s7
d0053414:	eeb0 5a47 	vmov.f32	s10, s14
d0053418:	ee25 3a83 	vmul.f32	s6, s11, s6
d005341c:	ee68 0a20 	vmul.f32	s1, s16, s1
d0053420:	ee28 0a00 	vmul.f32	s0, s16, s0
d0053424:	eeb0 8a67 	vmov.f32	s16, s15
d0053428:	eea6 5ae0 	vfms.f32	s10, s13, s1
d005342c:	eea6 8a80 	vfma.f32	s16, s13, s0
d0053430:	eef0 0a45 	vmov.f32	s1, s10
d0053434:	eeb0 5a67 	vmov.f32	s10, s15
d0053438:	eefd 5ac8 	vcvt.s32.f32	s11, s16
d005343c:	eee6 7a83 	vfma.f32	s15, s13, s6
d0053440:	eea6 5aa1 	vfma.f32	s10, s13, s3
d0053444:	eef0 1a47 	vmov.f32	s3, s14
d0053448:	ee15 7a90 	vmov	r7, s11
d005344c:	eea6 7ae3 	vfms.f32	s14, s13, s7
d0053450:	eefd 5ae0 	vcvt.s32.f32	s11, s1
d0053454:	eee6 1ac2 	vfms.f32	s3, s13, s4
d0053458:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005345c:	eefd 6ac5 	vcvt.s32.f32	s13, s10
d0053460:	ee15 4a90 	vmov	r4, s11
d0053464:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0053468:	ee17 ea90 	vmov	lr, s15
d005346c:	ee16 3a90 	vmov	r3, s13
d0053470:	eefd 5ae1 	vcvt.s32.f32	s11, s3
d0053474:	ebae 0e07 	sub.w	lr, lr, r7
d0053478:	eba3 0807 	sub.w	r8, r3, r7
d005347c:	ee17 3a10 	vmov	r3, s14
d0053480:	ee15 6a90 	vmov	r6, s11
d0053484:	eba3 0c04 	sub.w	ip, r3, r4
d0053488:	1b35      	subs	r5, r6, r4
d005348a:	fb0c fc08 	mul.w	ip, ip, r8
d005348e:	fb0e c515 	mls	r5, lr, r5, ip
d0053492:	2d00      	cmp	r5, #0
d0053494:	f340 80b3 	ble.w	d00535fe <submitClippedTri.constprop.0+0x256>
d0053498:	f8df 918c 	ldr.w	r9, [pc, #396]	; d0053628 <submitClippedTri.constprop.0+0x280>
d005349c:	f8d9 e000 	ldr.w	lr, [r9]
d00534a0:	f5be 5f00 	cmp.w	lr, #8192	; 0x2000
d00534a4:	f280 80ab 	bge.w	d00535fe <submitClippedTri.constprop.0+0x256>
d00534a8:	4d5c      	ldr	r5, [pc, #368]	; (d005361c <submitClippedTri.constprop.0+0x274>)
d00534aa:	ea4f 1c8e 	mov.w	ip, lr, lsl #6
d00534ae:	f04f 0b80 	mov.w	fp, #128	; 0x80
d00534b2:	ed9f 5a5b 	vldr	s10, [pc, #364]	; d0053620 <submitClippedTri.constprop.0+0x278>
d00534b6:	f845 700c 	str.w	r7, [r5, ip]
d00534ba:	eb05 178e 	add.w	r7, r5, lr, lsl #6
d00534be:	f10c 0808 	add.w	r8, ip, #8
d00534c2:	f10c 0a10 	add.w	sl, ip, #16
d00534c6:	607c      	str	r4, [r7, #4]
d00534c8:	b224      	sxth	r4, r4
d00534ca:	f10e 0e01 	add.w	lr, lr, #1
d00534ce:	eddf 5a55 	vldr	s11, [pc, #340]	; d0053624 <submitClippedTri.constprop.0+0x27c>
d00534d2:	9400      	str	r4, [sp, #0]
d00534d4:	ee16 4a90 	vmov	r4, s13
d00534d8:	f8c9 e000 	str.w	lr, [r9]
d00534dc:	eb05 0e0a 	add.w	lr, r5, sl
d00534e0:	f845 4008 	str.w	r4, [r5, r8]
d00534e4:	44a8      	add	r8, r5
d00534e6:	ee17 4a90 	vmov	r4, s15
d00534ea:	f8dd 9000 	ldr.w	r9, [sp]
d00534ee:	f8c8 6004 	str.w	r6, [r8, #4]
d00534f2:	f845 400a 	str.w	r4, [r5, sl]
d00534f6:	454e      	cmp	r6, r9
d00534f8:	ed8e 7a01 	vstr	s14, [lr, #4]
d00534fc:	46c8      	mov	r8, r9
d00534fe:	f887 2035 	strb.w	r2, [r7, #53]	; 0x35
d0053502:	f887 1034 	strb.w	r1, [r7, #52]	; 0x34
d0053506:	edc7 4a07 	vstr	s9, [r7, #28]
d005350a:	f887 b036 	strb.w	fp, [r7, #54]	; 0x36
d005350e:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0053512:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0053516:	ee31 7a47 	vsub.f32	s14, s2, s14
d005351a:	ee27 7a27 	vmul.f32	s14, s14, s15
d005351e:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0053522:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0053526:	ee27 7a25 	vmul.f32	s14, s14, s11
d005352a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005352e:	ee17 2a10 	vmov	r2, s14
d0053532:	843a      	strh	r2, [r7, #32]
d0053534:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0053538:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d005353c:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0053540:	ee27 7a27 	vmul.f32	s14, s14, s15
d0053544:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0053548:	fe87 7a46 	vminnm.f32	s14, s14, s12
d005354c:	ee27 7a25 	vmul.f32	s14, s14, s11
d0053550:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0053554:	ee17 2a10 	vmov	r2, s14
d0053558:	847a      	strh	r2, [r7, #34]	; 0x22
d005355a:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d005355e:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0053562:	ee74 7a67 	vsub.f32	s15, s8, s15
d0053566:	ed87 1a0a 	vstr	s2, [r7, #40]	; 0x28
d005356a:	edc7 2a0b 	vstr	s5, [r7, #44]	; 0x2c
d005356e:	ed87 4a0c 	vstr	s8, [r7, #48]	; 0x30
d0053572:	ee67 7a87 	vmul.f32	s15, s15, s14
d0053576:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d005357a:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d005357e:	ee67 7aa5 	vmul.f32	s15, s15, s11
d0053582:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053586:	ee17 2a90 	vmov	r2, s15
d005358a:	84ba      	strh	r2, [r7, #36]	; 0x24
d005358c:	464a      	mov	r2, r9
d005358e:	db41      	blt.n	d0053614 <submitClippedTri.constprop.0+0x26c>
d0053590:	f8a7 9038 	strh.w	r9, [r7, #56]	; 0x38
d0053594:	429a      	cmp	r2, r3
d0053596:	dd02      	ble.n	d005359e <submitClippedTri.constprop.0+0x1f6>
d0053598:	eb05 020c 	add.w	r2, r5, ip
d005359c:	8713      	strh	r3, [r2, #56]	; 0x38
d005359e:	9900      	ldr	r1, [sp, #0]
d00535a0:	428e      	cmp	r6, r1
d00535a2:	dc31      	bgt.n	d0053608 <submitClippedTri.constprop.0+0x260>
d00535a4:	eb05 020c 	add.w	r2, r5, ip
d00535a8:	8751      	strh	r1, [r2, #58]	; 0x3a
d00535aa:	4598      	cmp	r8, r3
d00535ac:	da02      	bge.n	d00535b4 <submitClippedTri.constprop.0+0x20c>
d00535ae:	eb05 020c 	add.w	r2, r5, ip
d00535b2:	8753      	strh	r3, [r2, #58]	; 0x3a
d00535b4:	eb05 030c 	add.w	r3, r5, ip
d00535b8:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d00535bc:	2a00      	cmp	r2, #0
d00535be:	da01      	bge.n	d00535c4 <submitClippedTri.constprop.0+0x21c>
d00535c0:	2200      	movs	r2, #0
d00535c2:	871a      	strh	r2, [r3, #56]	; 0x38
d00535c4:	eb05 030c 	add.w	r3, r5, ip
d00535c8:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d00535cc:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00535d0:	db02      	blt.n	d00535d8 <submitClippedTri.constprop.0+0x230>
d00535d2:	f240 123f 	movw	r2, #319	; 0x13f
d00535d6:	875a      	strh	r2, [r3, #58]	; 0x3a
d00535d8:	eb05 010c 	add.w	r1, r5, ip
d00535dc:	4465      	add	r5, ip
d00535de:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d00535e2:	2b00      	cmp	r3, #0
d00535e4:	bfb8      	it	lt
d00535e6:	331f      	addlt	r3, #31
d00535e8:	115a      	asrs	r2, r3, #5
d00535ea:	f9b5 303a 	ldrsh.w	r3, [r5, #58]	; 0x3a
d00535ee:	2b00      	cmp	r3, #0
d00535f0:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d00535f4:	bfb8      	it	lt
d00535f6:	331f      	addlt	r3, #31
d00535f8:	115b      	asrs	r3, r3, #5
d00535fa:	f885 303d 	strb.w	r3, [r5, #61]	; 0x3d
d00535fe:	b00b      	add	sp, #44	; 0x2c
d0053600:	ecbd 8b02 	vpop	{d8}
d0053604:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053608:	b236      	sxth	r6, r6
d005360a:	eb05 020c 	add.w	r2, r5, ip
d005360e:	46b0      	mov	r8, r6
d0053610:	8756      	strh	r6, [r2, #58]	; 0x3a
d0053612:	e7ca      	b.n	d00535aa <submitClippedTri.constprop.0+0x202>
d0053614:	b231      	sxth	r1, r6
d0053616:	460a      	mov	r2, r1
d0053618:	8739      	strh	r1, [r7, #56]	; 0x38
d005361a:	e7bb      	b.n	d0053594 <submitClippedTri.constprop.0+0x1ec>
d005361c:	d00693e0 	.word	0xd00693e0
d0053620:	00000000 	.word	0x00000000
d0053624:	477fff00 	.word	0x477fff00
d0053628:	d00693c0 	.word	0xd00693c0

d005362c <sb3dParticlesRender.part.0>:
d005362c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053630:	edd0 7a00 	vldr	s15, [r0]
d0053634:	4605      	mov	r5, r0
d0053636:	4c1a      	ldr	r4, [pc, #104]	; (d00536a0 <sb3dParticlesRender.part.0+0x74>)
d0053638:	f8df b068 	ldr.w	fp, [pc, #104]	; d00536a4 <sb3dParticlesRender.part.0+0x78>
d005363c:	f504 5800 	add.w	r8, r4, #8192	; 0x2000
d0053640:	ed2d 8b10 	vpush	{d8-d15}
d0053644:	b0d9      	sub	sp, #356	; 0x164
d0053646:	ed90 ea06 	vldr	s28, [r0, #24]
d005364a:	edd0 aa09 	vldr	s21, [r0, #36]	; 0x24
d005364e:	edcd 7a17 	vstr	s15, [sp, #92]	; 0x5c
d0053652:	edd0 7a01 	vldr	s15, [r0, #4]
d0053656:	ed90 aa0a 	vldr	s20, [r0, #40]	; 0x28
d005365a:	edcd 7a18 	vstr	s15, [sp, #96]	; 0x60
d005365e:	edd0 7a02 	vldr	s15, [r0, #8]
d0053662:	edd0 9a0b 	vldr	s19, [r0, #44]	; 0x2c
d0053666:	edcd 7a19 	vstr	s15, [sp, #100]	; 0x64
d005366a:	edd0 7a07 	vldr	s15, [r0, #28]
d005366e:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0053672:	edcd 7a1a 	vstr	s15, [sp, #104]	; 0x68
d0053676:	edd0 7a08 	vldr	s15, [r0, #32]
d005367a:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d005367e:	edcd 7a1b 	vstr	s15, [sp, #108]	; 0x6c
d0053682:	ed90 ba0e 	vldr	s22, [r0, #56]	; 0x38
d0053686:	edd0 ca10 	vldr	s25, [r0, #64]	; 0x40
d005368a:	f7ff fdd1 	bl	d0053230 <lightsGet>
d005368e:	4606      	mov	r6, r0
d0053690:	901d      	str	r0, [sp, #116]	; 0x74
d0053692:	f7ff fdd1 	bl	d0053238 <lightsGetCount>
d0053696:	901c      	str	r0, [sp, #112]	; 0x70
d0053698:	eb06 1a80 	add.w	sl, r6, r0, lsl #6
d005369c:	e177      	b.n	d005398e <sb3dParticlesRender.part.0+0x362>
d005369e:	bf00      	nop
d00536a0:	d00673c0 	.word	0xd00673c0
d00536a4:	d00673a0 	.word	0xd00673a0
d00536a8:	00000000 	.word	0x00000000
d00536ac:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00536b0:	edd4 ea04 	vldr	s29, [r4, #16]
d00536b4:	ed1f 5a04 	vldr	s10, [pc, #-16]	; d00536a8 <sb3dParticlesRender.part.0+0x7c>
d00536b8:	fece ea85 	vmaxnm.f32	s29, s29, s10
d00536bc:	fece eac7 	vminnm.f32	s29, s29, s14
d00536c0:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d00536c4:	eddd 3a1b 	vldr	s7, [sp, #108]	; 0x6c
d00536c8:	eeb0 4a46 	vmov.f32	s8, s12
d00536cc:	f105 0610 	add.w	r6, r5, #16
d00536d0:	eef0 4a66 	vmov.f32	s9, s13
d00536d4:	2250      	movs	r2, #80	; 0x50
d00536d6:	ee67 7a87 	vmul.f32	s15, s15, s14
d00536da:	ed9d 7a1a 	vldr	s14, [sp, #104]	; 0x68
d00536de:	eeb0 5a65 	vmov.f32	s10, s11
d00536e2:	4631      	mov	r1, r6
d00536e4:	4668      	mov	r0, sp
d00536e6:	eeae 6a27 	vfma.f32	s12, s28, s15
d00536ea:	eee7 4a67 	vfms.f32	s9, s14, s15
d00536ee:	eee7 6a27 	vfma.f32	s13, s14, s15
d00536f2:	eeb0 7a65 	vmov.f32	s14, s11
d00536f6:	eea3 5ae7 	vfms.f32	s10, s7, s15
d00536fa:	eeae 4a67 	vfms.f32	s8, s28, s15
d00536fe:	eea3 7aa7 	vfma.f32	s14, s7, s15
d0053702:	eef0 3a46 	vmov.f32	s7, s12
d0053706:	eeaa 6ae7 	vfms.f32	s12, s21, s15
d005370a:	eef0 fa64 	vmov.f32	s31, s9
d005370e:	eef0 5a66 	vmov.f32	s11, s13
d0053712:	eeb0 8a44 	vmov.f32	s16, s8
d0053716:	eeb0 fa45 	vmov.f32	s30, s10
d005371a:	eeea fa27 	vfma.f32	s31, s20, s15
d005371e:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d0053722:	eeb0 6a47 	vmov.f32	s12, s14
d0053726:	eeaa 8aa7 	vfma.f32	s16, s21, s15
d005372a:	eea9 faa7 	vfma.f32	s30, s19, s15
d005372e:	eeaa 4ae7 	vfms.f32	s8, s21, s15
d0053732:	eeea 3aa7 	vfma.f32	s7, s21, s15
d0053736:	eeea 4a67 	vfms.f32	s9, s20, s15
d005373a:	edcd fa20 	vstr	s31, [sp, #128]	; 0x80
d005373e:	eeea 5a27 	vfma.f32	s11, s20, s15
d0053742:	eeea 6a67 	vfms.f32	s13, s20, s15
d0053746:	ed8d 8a1f 	vstr	s16, [sp, #124]	; 0x7c
d005374a:	eea9 5ae7 	vfms.f32	s10, s19, s15
d005374e:	ed8d fa21 	vstr	s30, [sp, #132]	; 0x84
d0053752:	eea9 6aa7 	vfma.f32	s12, s19, s15
d0053756:	ed8d 4a28 	vstr	s8, [sp, #160]	; 0xa0
d005375a:	eea9 7ae7 	vfms.f32	s14, s19, s15
d005375e:	edcd 3a22 	vstr	s7, [sp, #136]	; 0x88
d0053762:	edcd 4a29 	vstr	s9, [sp, #164]	; 0xa4
d0053766:	edcd 5a23 	vstr	s11, [sp, #140]	; 0x8c
d005376a:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d005376e:	ed8d 5a2a 	vstr	s10, [sp, #168]	; 0xa8
d0053772:	ed8d 6a24 	vstr	s12, [sp, #144]	; 0x90
d0053776:	ed8d 7a27 	vstr	s14, [sp, #156]	; 0x9c
d005377a:	f002 fcc3 	bl	d0056104 <memcpy>
d005377e:	eeb0 1a4f 	vmov.f32	s2, s30
d0053782:	eeb0 0a48 	vmov.f32	s0, s16
d0053786:	eef0 0a6f 	vmov.f32	s1, s31
d005378a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005378e:	f7fe faeb 	bl	d0051d68 <worldToCamera>
d0053792:	eeb0 fa41 	vmov.f32	s30, s2
d0053796:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d005379a:	4631      	mov	r1, r6
d005379c:	ed9d 8a22 	vldr	s16, [sp, #136]	; 0x88
d00537a0:	2250      	movs	r2, #80	; 0x50
d00537a2:	eddd fa23 	vldr	s31, [sp, #140]	; 0x8c
d00537a6:	4668      	mov	r0, sp
d00537a8:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d00537ac:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d00537b0:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d00537b4:	ed8d fa2d 	vstr	s30, [sp, #180]	; 0xb4
d00537b8:	f002 fca4 	bl	d0056104 <memcpy>
d00537bc:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d00537c0:	eeb0 0a48 	vmov.f32	s0, s16
d00537c4:	eef0 0a6f 	vmov.f32	s1, s31
d00537c8:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00537cc:	f7fe facc 	bl	d0051d68 <worldToCamera>
d00537d0:	eef0 2a41 	vmov.f32	s5, s2
d00537d4:	ed9d 1a27 	vldr	s2, [sp, #156]	; 0x9c
d00537d8:	4631      	mov	r1, r6
d00537da:	ed9d 8a25 	vldr	s16, [sp, #148]	; 0x94
d00537de:	2250      	movs	r2, #80	; 0x50
d00537e0:	eddd fa26 	vldr	s31, [sp, #152]	; 0x98
d00537e4:	4668      	mov	r0, sp
d00537e6:	edcd 2a30 	vstr	s5, [sp, #192]	; 0xc0
d00537ea:	edcd 2a16 	vstr	s5, [sp, #88]	; 0x58
d00537ee:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d00537f2:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d00537f6:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d00537fa:	f002 fc83 	bl	d0056104 <memcpy>
d00537fe:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0053802:	eeb0 0a48 	vmov.f32	s0, s16
d0053806:	eef0 0a6f 	vmov.f32	s1, s31
d005380a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005380e:	f7fe faab 	bl	d0051d68 <worldToCamera>
d0053812:	eef0 8a41 	vmov.f32	s17, s2
d0053816:	eddd fa29 	vldr	s31, [sp, #164]	; 0xa4
d005381a:	4631      	mov	r1, r6
d005381c:	ed9d 1a2a 	vldr	s2, [sp, #168]	; 0xa8
d0053820:	2250      	movs	r2, #80	; 0x50
d0053822:	ed9d 8a28 	vldr	s16, [sp, #160]	; 0xa0
d0053826:	4668      	mov	r0, sp
d0053828:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d005382c:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d0053830:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d0053834:	edcd 8a33 	vstr	s17, [sp, #204]	; 0xcc
d0053838:	f002 fc64 	bl	d0056104 <memcpy>
d005383c:	eef0 0a6f 	vmov.f32	s1, s31
d0053840:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0053844:	eeb0 0a48 	vmov.f32	s0, s16
d0053848:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005384c:	f7fe fa8c 	bl	d0051d68 <worldToCamera>
d0053850:	eef4 cacf 	vcmpe.f32	s25, s30
d0053854:	eef0 fa41 	vmov.f32	s31, s2
d0053858:	eddd 2a16 	vldr	s5, [sp, #88]	; 0x58
d005385c:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d0053860:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053864:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d0053868:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d005386c:	db0e      	blt.n	d005388c <sb3dParticlesRender.part.0+0x260>
d005386e:	eef4 cae2 	vcmpe.f32	s25, s5
d0053872:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053876:	db09      	blt.n	d005388c <sb3dParticlesRender.part.0+0x260>
d0053878:	eef4 cae8 	vcmpe.f32	s25, s17
d005387c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053880:	db04      	blt.n	d005388c <sb3dParticlesRender.part.0+0x260>
d0053882:	eef4 cac1 	vcmpe.f32	s25, s2
d0053886:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005388a:	da7c      	bge.n	d0053986 <sb3dParticlesRender.part.0+0x35a>
d005388c:	4ed7      	ldr	r6, [pc, #860]	; (d0053bec <sb3dParticlesRender.part.0+0x5c0>)
d005388e:	eeb0 4a68 	vmov.f32	s8, s17
d0053892:	ed9d da2b 	vldr	s26, [sp, #172]	; 0xac
d0053896:	eeb0 1a4f 	vmov.f32	s2, s30
d005389a:	7c33      	ldrb	r3, [r6, #16]
d005389c:	a840      	add	r0, sp, #256	; 0x100
d005389e:	7c72      	ldrb	r2, [r6, #17]
d00538a0:	eeb0 0a4d 	vmov.f32	s0, s26
d00538a4:	7cb7      	ldrb	r7, [r6, #18]
d00538a6:	4629      	mov	r1, r5
d00538a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00538ac:	7cf2      	ldrb	r2, [r6, #19]
d00538ae:	ed9d 9a2c 	vldr	s18, [sp, #176]	; 0xb0
d00538b2:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d00538b6:	eddd da31 	vldr	s27, [sp, #196]	; 0xc4
d00538ba:	ed9d 8a32 	vldr	s16, [sp, #200]	; 0xc8
d00538be:	eef0 0a49 	vmov.f32	s1, s18
d00538c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00538c6:	f8df 9338 	ldr.w	r9, [pc, #824]	; d0053c00 <sb3dParticlesRender.part.0+0x5d4>
d00538ca:	eddd 1a2e 	vldr	s3, [sp, #184]	; 0xb8
d00538ce:	eeb0 3a6d 	vmov.f32	s6, s27
d00538d2:	681b      	ldr	r3, [r3, #0]
d00538d4:	eef0 3a48 	vmov.f32	s7, s16
d00538d8:	ed9d 2a2f 	vldr	s4, [sp, #188]	; 0xbc
d00538dc:	681f      	ldr	r7, [r3, #0]
d00538de:	f8db 2000 	ldr.w	r2, [fp]
d00538e2:	f8d9 3000 	ldr.w	r3, [r9]
d00538e6:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d00538ea:	edcd 2a3c 	vstr	s5, [sp, #240]	; 0xf0
d00538ee:	edcd 8a3f 	vstr	s17, [sp, #252]	; 0xfc
d00538f2:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d00538f6:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d00538fa:	edcd 1a3a 	vstr	s3, [sp, #232]	; 0xe8
d00538fe:	ed8d 2a3b 	vstr	s4, [sp, #236]	; 0xec
d0053902:	edcd da3d 	vstr	s27, [sp, #244]	; 0xf4
d0053906:	ed8d 8a3e 	vstr	s16, [sp, #248]	; 0xf8
d005390a:	47b8      	blx	r7
d005390c:	2802      	cmp	r0, #2
d005390e:	f300 817b 	bgt.w	d0053c08 <sb3dParticlesRender.part.0+0x5dc>
d0053912:	7c31      	ldrb	r1, [r6, #16]
d0053914:	eeb0 0a4d 	vmov.f32	s0, s26
d0053918:	7c72      	ldrb	r2, [r6, #17]
d005391a:	eef0 0a49 	vmov.f32	s1, s18
d005391e:	7cb3      	ldrb	r3, [r6, #18]
d0053920:	eeb0 1a4f 	vmov.f32	s2, s30
d0053924:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0053928:	7cf2      	ldrb	r2, [r6, #19]
d005392a:	ed9d 3a34 	vldr	s6, [sp, #208]	; 0xd0
d005392e:	eef0 1a6d 	vmov.f32	s3, s27
d0053932:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0053936:	eddd 3a35 	vldr	s7, [sp, #212]	; 0xd4
d005393a:	eeb0 2a48 	vmov.f32	s4, s16
d005393e:	a840      	add	r0, sp, #256	; 0x100
d0053940:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0053944:	eef0 2a68 	vmov.f32	s5, s17
d0053948:	eeb0 4a6f 	vmov.f32	s8, s31
d005394c:	f8d9 3000 	ldr.w	r3, [r9]
d0053950:	680e      	ldr	r6, [r1, #0]
d0053952:	4629      	mov	r1, r5
d0053954:	f8db 2000 	ldr.w	r2, [fp]
d0053958:	6836      	ldr	r6, [r6, #0]
d005395a:	ed8d da37 	vstr	s26, [sp, #220]	; 0xdc
d005395e:	ed8d 9a38 	vstr	s18, [sp, #224]	; 0xe0
d0053962:	ed8d fa39 	vstr	s30, [sp, #228]	; 0xe4
d0053966:	edcd da3a 	vstr	s27, [sp, #232]	; 0xe8
d005396a:	ed8d 8a3b 	vstr	s16, [sp, #236]	; 0xec
d005396e:	edcd 8a3c 	vstr	s17, [sp, #240]	; 0xf0
d0053972:	edcd fa3f 	vstr	s31, [sp, #252]	; 0xfc
d0053976:	ed8d 3a3d 	vstr	s6, [sp, #244]	; 0xf4
d005397a:	edcd 3a3e 	vstr	s7, [sp, #248]	; 0xf8
d005397e:	47b0      	blx	r6
d0053980:	2802      	cmp	r0, #2
d0053982:	f300 80fd 	bgt.w	d0053b80 <sb3dParticlesRender.part.0+0x554>
d0053986:	3420      	adds	r4, #32
d0053988:	45a0      	cmp	r8, r4
d005398a:	f000 8129 	beq.w	d0053be0 <sb3dParticlesRender.part.0+0x5b4>
d005398e:	7ea3      	ldrb	r3, [r4, #26]
d0053990:	2b00      	cmp	r3, #0
d0053992:	d0f8      	beq.n	d0053986 <sb3dParticlesRender.part.0+0x35a>
d0053994:	edd4 7a03 	vldr	s15, [r4, #12]
d0053998:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d005399c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539a0:	d9f1      	bls.n	d0053986 <sb3dParticlesRender.part.0+0x35a>
d00539a2:	edd4 6a01 	vldr	s13, [r4, #4]
d00539a6:	eeb1 5a67 	vneg.f32	s10, s15
d00539aa:	ed9d 7a18 	vldr	s14, [sp, #96]	; 0x60
d00539ae:	eddd 4a17 	vldr	s9, [sp, #92]	; 0x5c
d00539b2:	ee36 7ac7 	vsub.f32	s14, s13, s14
d00539b6:	ed94 6a00 	vldr	s12, [r4]
d00539ba:	edd4 5a02 	vldr	s11, [r4, #8]
d00539be:	ee36 4a64 	vsub.f32	s8, s12, s9
d00539c2:	eddd 4a19 	vldr	s9, [sp, #100]	; 0x64
d00539c6:	ee27 7a2b 	vmul.f32	s14, s14, s23
d00539ca:	ee75 4ae4 	vsub.f32	s9, s11, s9
d00539ce:	eeac 7a04 	vfma.f32	s14, s24, s8
d00539d2:	eeab 7a24 	vfma.f32	s14, s22, s9
d00539d6:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00539da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539de:	d9d2      	bls.n	d0053986 <sb3dParticlesRender.part.0+0x35a>
d00539e0:	ed94 7a05 	vldr	s14, [r4, #20]
d00539e4:	ed9f 5a82 	vldr	s10, [pc, #520]	; d0053bf0 <sb3dParticlesRender.part.0+0x5c4>
d00539e8:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00539ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539f0:	f67f ae5c 	bls.w	d00536ac <sb3dParticlesRender.part.0+0x80>
d00539f4:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d00539f6:	2b00      	cmp	r3, #0
d00539f8:	f340 8092 	ble.w	d0053b20 <sb3dParticlesRender.part.0+0x4f4>
d00539fc:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0053a00:	9b1d      	ldr	r3, [sp, #116]	; 0x74
d0053a02:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0053a06:	ed9f 0a7b 	vldr	s0, [pc, #492]	; d0053bf4 <sb3dParticlesRender.part.0+0x5c8>
d0053a0a:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0053a0e:	e072      	b.n	d0053af6 <sb3dParticlesRender.part.0+0x4ca>
d0053a10:	edd3 7a02 	vldr	s15, [r3, #8]
d0053a14:	edd3 4a01 	vldr	s9, [r3, #4]
d0053a18:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0053a1c:	ed93 5a03 	vldr	s10, [r3, #12]
d0053a20:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0053a24:	edd3 2a0a 	vldr	s5, [r3, #40]	; 0x28
d0053a28:	ee35 5a65 	vsub.f32	s10, s10, s11
d0053a2c:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0053a30:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0053a34:	eea4 7aa4 	vfma.f32	s14, s9, s9
d0053a38:	eea5 7a05 	vfma.f32	s14, s10, s10
d0053a3c:	eeb4 7a42 	vcmp.f32	s14, s4
d0053a40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a44:	d554      	bpl.n	d0053af0 <sb3dParticlesRender.part.0+0x4c4>
d0053a46:	ed9f 2a6c 	vldr	s4, [pc, #432]	; d0053bf8 <sb3dParticlesRender.part.0+0x5cc>
d0053a4a:	eeb4 7a42 	vcmp.f32	s14, s4
d0053a4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a52:	dd4d      	ble.n	d0053af0 <sb3dParticlesRender.part.0+0x4c4>
d0053a54:	eef1 0ac7 	vsqrt.f32	s1, s14
d0053a58:	edd3 1a08 	vldr	s3, [r3, #32]
d0053a5c:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0053a60:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0053a64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a68:	ee84 2a20 	vdiv.f32	s4, s8, s1
d0053a6c:	ee64 4a82 	vmul.f32	s9, s9, s4
d0053a70:	ee67 7a82 	vmul.f32	s15, s15, s4
d0053a74:	ee25 5a02 	vmul.f32	s10, s10, s4
d0053a78:	f240 80f9 	bls.w	d0053c6e <sb3dParticlesRender.part.0+0x642>
d0053a7c:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0053a80:	eef4 1ac1 	vcmpe.f32	s3, s2
d0053a84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a88:	da32      	bge.n	d0053af0 <sb3dParticlesRender.part.0+0x4c4>
d0053a8a:	eef4 2ac1 	vcmpe.f32	s5, s2
d0053a8e:	ee27 7a02 	vmul.f32	s14, s14, s4
d0053a92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a96:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0053a9a:	f200 80eb 	bhi.w	d0053c74 <sb3dParticlesRender.part.0+0x648>
d0053a9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053aa2:	da25      	bge.n	d0053af0 <sb3dParticlesRender.part.0+0x4c4>
d0053aa4:	ee37 7a61 	vsub.f32	s14, s14, s3
d0053aa8:	ee31 2a61 	vsub.f32	s4, s2, s3
d0053aac:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0053ab0:	ed9f 7a54 	vldr	s14, [pc, #336]	; d0053c04 <sb3dParticlesRender.part.0+0x5d8>
d0053ab4:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0053ab8:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0053abc:	ee34 7a47 	vsub.f32	s14, s8, s14
d0053ac0:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0053ac4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ac8:	d912      	bls.n	d0053af0 <sb3dParticlesRender.part.0+0x4c4>
d0053aca:	ee6b 7aa7 	vmul.f32	s15, s23, s15
d0053ace:	eeec 7a24 	vfma.f32	s15, s24, s9
d0053ad2:	eeeb 7a05 	vfma.f32	s15, s22, s10
d0053ad6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0053ada:	eeb1 5a67 	vneg.f32	s10, s15
d0053ade:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ae2:	da05      	bge.n	d0053af0 <sb3dParticlesRender.part.0+0x4c4>
d0053ae4:	edd3 7a07 	vldr	s15, [r3, #28]
d0053ae8:	ee27 7a27 	vmul.f32	s14, s14, s15
d0053aec:	eea5 0a07 	vfma.f32	s0, s10, s14
d0053af0:	3340      	adds	r3, #64	; 0x40
d0053af2:	459a      	cmp	sl, r3
d0053af4:	d016      	beq.n	d0053b24 <sb3dParticlesRender.part.0+0x4f8>
d0053af6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0053af8:	2a00      	cmp	r2, #0
d0053afa:	d0f9      	beq.n	d0053af0 <sb3dParticlesRender.part.0+0x4c4>
d0053afc:	781a      	ldrb	r2, [r3, #0]
d0053afe:	2a00      	cmp	r2, #0
d0053b00:	d086      	beq.n	d0053a10 <sb3dParticlesRender.part.0+0x3e4>
d0053b02:	edd3 4a04 	vldr	s9, [r3, #16]
d0053b06:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0053b0a:	edd3 7a05 	vldr	s15, [r3, #20]
d0053b0e:	ed93 5a06 	vldr	s10, [r3, #24]
d0053b12:	eef1 4a64 	vneg.f32	s9, s9
d0053b16:	eef1 7a67 	vneg.f32	s15, s15
d0053b1a:	eeb1 5a45 	vneg.f32	s10, s10
d0053b1e:	e7d4      	b.n	d0053aca <sb3dParticlesRender.part.0+0x49e>
d0053b20:	ed9f 0a34 	vldr	s0, [pc, #208]	; d0053bf4 <sb3dParticlesRender.part.0+0x5c8>
d0053b24:	7e63      	ldrb	r3, [r4, #25]
d0053b26:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0053b2a:	ed9f 7a34 	vldr	s14, [pc, #208]	; d0053bfc <sb3dParticlesRender.part.0+0x5d0>
d0053b2e:	ee07 3a90 	vmov	s15, r3
d0053b32:	ed9f 8a34 	vldr	s16, [pc, #208]	; d0053c04 <sb3dParticlesRender.part.0+0x5d8>
d0053b36:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0053b3a:	ee67 7a87 	vmul.f32	s15, s15, s14
d0053b3e:	fec7 7a88 	vmaxnm.f32	s15, s15, s16
d0053b42:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0053b46:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0053b4a:	f7ff fb45 	bl	d00531d8 <brightnessToShadeF>
d0053b4e:	edd4 ea05 	vldr	s29, [r4, #20]
d0053b52:	ed94 5a04 	vldr	s10, [r4, #16]
d0053b56:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0053b5a:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0053b5e:	edd4 7a03 	vldr	s15, [r4, #12]
d0053b62:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0053b66:	ed94 6a00 	vldr	s12, [r4]
d0053b6a:	edd4 6a01 	vldr	s13, [r4, #4]
d0053b6e:	edd4 5a02 	vldr	s11, [r4, #8]
d0053b72:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0053b76:	fece ea88 	vmaxnm.f32	s29, s29, s16
d0053b7a:	fece eac7 	vminnm.f32	s29, s29, s14
d0053b7e:	e59f      	b.n	d00536c0 <sb3dParticlesRender.part.0+0x94>
d0053b80:	eef0 4a6e 	vmov.f32	s9, s29
d0053b84:	1e46      	subs	r6, r0, #1
d0053b86:	2701      	movs	r7, #1
d0053b88:	4628      	mov	r0, r5
d0053b8a:	463b      	mov	r3, r7
d0053b8c:	aa58      	add	r2, sp, #352	; 0x160
d0053b8e:	3701      	adds	r7, #1
d0053b90:	ad58      	add	r5, sp, #352	; 0x160
d0053b92:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0053b96:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0053b9a:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0053b9e:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0053ba2:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0053ba6:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0053baa:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d0053bae:	7e62      	ldrb	r2, [r4, #25]
d0053bb0:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0053bb4:	f1a3 0560 	sub.w	r5, r3, #96	; 0x60
d0053bb8:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0053bbc:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0053bc0:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0053bc4:	ed95 2a01 	vldr	s4, [r5, #4]
d0053bc8:	7e21      	ldrb	r1, [r4, #24]
d0053bca:	edd5 2a02 	vldr	s5, [r5, #8]
d0053bce:	f7ff fbeb 	bl	d00533a8 <submitClippedTri.constprop.0>
d0053bd2:	42b7      	cmp	r7, r6
d0053bd4:	d1d9      	bne.n	d0053b8a <sb3dParticlesRender.part.0+0x55e>
d0053bd6:	3420      	adds	r4, #32
d0053bd8:	4605      	mov	r5, r0
d0053bda:	45a0      	cmp	r8, r4
d0053bdc:	f47f aed7 	bne.w	d005398e <sb3dParticlesRender.part.0+0x362>
d0053be0:	b059      	add	sp, #356	; 0x164
d0053be2:	ecbd 8b10 	vpop	{d8-d15}
d0053be6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053bea:	bf00      	nop
d0053bec:	2001f000 	.word	0x2001f000
d0053bf0:	38d1b717 	.word	0x38d1b717
d0053bf4:	3dcccccd 	.word	0x3dcccccd
d0053bf8:	358637bd 	.word	0x358637bd
d0053bfc:	3b808081 	.word	0x3b808081
d0053c00:	d00673a4 	.word	0xd00673a4
d0053c04:	00000000 	.word	0x00000000
d0053c08:	1e43      	subs	r3, r0, #1
d0053c0a:	eef0 4a6e 	vmov.f32	s9, s29
d0053c0e:	4628      	mov	r0, r5
d0053c10:	2701      	movs	r7, #1
d0053c12:	4625      	mov	r5, r4
d0053c14:	461c      	mov	r4, r3
d0053c16:	463b      	mov	r3, r7
d0053c18:	aa58      	add	r2, sp, #352	; 0x160
d0053c1a:	3701      	adds	r7, #1
d0053c1c:	f50d 7cb0 	add.w	ip, sp, #352	; 0x160
d0053c20:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0053c24:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d0053c28:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0053c2c:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0053c30:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0053c34:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d0053c38:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d0053c3c:	7e6a      	ldrb	r2, [r5, #25]
d0053c3e:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0053c42:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0053c46:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0053c4a:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0053c4e:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0053c52:	ed9c 2a01 	vldr	s4, [ip, #4]
d0053c56:	7e29      	ldrb	r1, [r5, #24]
d0053c58:	eddc 2a02 	vldr	s5, [ip, #8]
d0053c5c:	f7ff fba4 	bl	d00533a8 <submitClippedTri.constprop.0>
d0053c60:	42a7      	cmp	r7, r4
d0053c62:	d1d8      	bne.n	d0053c16 <sb3dParticlesRender.part.0+0x5ea>
d0053c64:	462c      	mov	r4, r5
d0053c66:	eef0 ea64 	vmov.f32	s29, s9
d0053c6a:	4605      	mov	r5, r0
d0053c6c:	e651      	b.n	d0053912 <sb3dParticlesRender.part.0+0x2e6>
d0053c6e:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0053c72:	e72a      	b.n	d0053aca <sb3dParticlesRender.part.0+0x49e>
d0053c74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c78:	d812      	bhi.n	d0053ca0 <sb3dParticlesRender.part.0+0x674>
d0053c7a:	ee37 7a61 	vsub.f32	s14, s14, s3
d0053c7e:	ee31 2a61 	vsub.f32	s4, s2, s3
d0053c82:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0053c86:	ed1f 7a21 	vldr	s14, [pc, #-132]	; d0053c04 <sb3dParticlesRender.part.0+0x5d8>
d0053c8a:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0053c8e:	eef0 2a44 	vmov.f32	s5, s8
d0053c92:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0053c96:	eee7 2a63 	vfms.f32	s5, s14, s7
d0053c9a:	eeb0 7a62 	vmov.f32	s14, s5
d0053c9e:	e70f      	b.n	d0053ac0 <sb3dParticlesRender.part.0+0x494>
d0053ca0:	ee37 7a41 	vsub.f32	s14, s14, s2
d0053ca4:	ee32 2ac1 	vsub.f32	s4, s5, s2
d0053ca8:	eec7 2a02 	vdiv.f32	s5, s14, s4
d0053cac:	ed1f 7a2b 	vldr	s14, [pc, #-172]	; d0053c04 <sb3dParticlesRender.part.0+0x5d8>
d0053cb0:	fe82 7a87 	vmaxnm.f32	s14, s5, s14
d0053cb4:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0053cb8:	ee34 7a47 	vsub.f32	s14, s8, s14
d0053cbc:	ee27 7a03 	vmul.f32	s14, s14, s6
d0053cc0:	e6fe      	b.n	d0053ac0 <sb3dParticlesRender.part.0+0x494>
d0053cc2:	bf00      	nop

d0053cc4 <setDefaultRenderMode>:
d0053cc4:	2300      	movs	r3, #0
d0053cc6:	4803      	ldr	r0, [pc, #12]	; (d0053cd4 <setDefaultRenderMode+0x10>)
d0053cc8:	4903      	ldr	r1, [pc, #12]	; (d0053cd8 <setDefaultRenderMode+0x14>)
d0053cca:	4a04      	ldr	r2, [pc, #16]	; (d0053cdc <setDefaultRenderMode+0x18>)
d0053ccc:	6003      	str	r3, [r0, #0]
d0053cce:	600b      	str	r3, [r1, #0]
d0053cd0:	6013      	str	r3, [r2, #0]
d0053cd2:	4770      	bx	lr
d0053cd4:	d00673a8 	.word	0xd00673a8
d0053cd8:	d00e93e0 	.word	0xd00e93e0
d0053cdc:	d00e93e4 	.word	0xd00e93e4

d0053ce0 <enableFlatMode>:
d0053ce0:	4b01      	ldr	r3, [pc, #4]	; (d0053ce8 <enableFlatMode+0x8>)
d0053ce2:	6018      	str	r0, [r3, #0]
d0053ce4:	4770      	bx	lr
d0053ce6:	bf00      	nop
d0053ce8:	d00673a8 	.word	0xd00673a8

d0053cec <initClipScratch>:
d0053cec:	b510      	push	{r4, lr}
d0053cee:	4c0f      	ldr	r4, [pc, #60]	; (d0053d2c <initClipScratch+0x40>)
d0053cf0:	6823      	ldr	r3, [r4, #0]
d0053cf2:	b11b      	cbz	r3, d0053cfc <initClipScratch+0x10>
d0053cf4:	4b0e      	ldr	r3, [pc, #56]	; (d0053d30 <initClipScratch+0x44>)
d0053cf6:	681b      	ldr	r3, [r3, #0]
d0053cf8:	b103      	cbz	r3, d0053cfc <initClipScratch+0x10>
d0053cfa:	bd10      	pop	{r4, pc}
d0053cfc:	4a0d      	ldr	r2, [pc, #52]	; (d0053d34 <initClipScratch+0x48>)
d0053cfe:	7813      	ldrb	r3, [r2, #0]
d0053d00:	7850      	ldrb	r0, [r2, #1]
d0053d02:	7891      	ldrb	r1, [r2, #2]
d0053d04:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0053d08:	78d2      	ldrb	r2, [r2, #3]
d0053d0a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0053d0e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0053d12:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0053d14:	4798      	blx	r3
d0053d16:	2800      	cmp	r0, #0
d0053d18:	d0ef      	beq.n	d0053cfa <initClipScratch+0xe>
d0053d1a:	301f      	adds	r0, #31
d0053d1c:	4b04      	ldr	r3, [pc, #16]	; (d0053d30 <initClipScratch+0x44>)
d0053d1e:	f020 001f 	bic.w	r0, r0, #31
d0053d22:	f100 0260 	add.w	r2, r0, #96	; 0x60
d0053d26:	6020      	str	r0, [r4, #0]
d0053d28:	601a      	str	r2, [r3, #0]
d0053d2a:	bd10      	pop	{r4, pc}
d0053d2c:	d00673a0 	.word	0xd00673a0
d0053d30:	d00673a4 	.word	0xd00673a4
d0053d34:	2001f000 	.word	0x2001f000

d0053d38 <submitClippedTri>:
d0053d38:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0053d3c:	eef4 7ac1 	vcmpe.f32	s15, s2
d0053d40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053d44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d48:	eef4 7ae2 	vcmpe.f32	s15, s5
d0053d4c:	bfac      	ite	ge
d0053d4e:	2401      	movge	r4, #1
d0053d50:	2400      	movlt	r4, #0
d0053d52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d56:	ed2d 8b02 	vpush	{d8}
d0053d5a:	bfa8      	it	ge
d0053d5c:	f044 0401 	orrge.w	r4, r4, #1
d0053d60:	b08d      	sub	sp, #52	; 0x34
d0053d62:	9301      	str	r3, [sp, #4]
d0053d64:	b924      	cbnz	r4, d0053d70 <submitClippedTri+0x38>
d0053d66:	eef4 7ac4 	vcmpe.f32	s15, s8
d0053d6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d6e:	db04      	blt.n	d0053d7a <submitClippedTri+0x42>
d0053d70:	b00d      	add	sp, #52	; 0x34
d0053d72:	ecbd 8b02 	vpop	{d8}
d0053d76:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053d7a:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0053d7e:	ed90 7a14 	vldr	s14, [r0, #80]	; 0x50
d0053d82:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0053d86:	edd0 6a12 	vldr	s13, [r0, #72]	; 0x48
d0053d8a:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d0053d8e:	ee86 8a01 	vdiv.f32	s16, s12, s2
d0053d92:	ee86 5a22 	vdiv.f32	s10, s12, s5
d0053d96:	eec6 5a04 	vdiv.f32	s11, s12, s8
d0053d9a:	ee37 7a28 	vadd.f32	s14, s14, s17
d0053d9e:	ee68 0a20 	vmul.f32	s1, s16, s1
d0053da2:	ee77 7aa8 	vadd.f32	s15, s15, s17
d0053da6:	ee28 0a00 	vmul.f32	s0, s16, s0
d0053daa:	eeb0 8a67 	vmov.f32	s16, s15
d0053dae:	ee65 1a21 	vmul.f32	s3, s10, s3
d0053db2:	ee25 2a02 	vmul.f32	s4, s10, s4
d0053db6:	eeb0 5a47 	vmov.f32	s10, s14
d0053dba:	eea6 8a80 	vfma.f32	s16, s13, s0
d0053dbe:	eea6 5ae0 	vfms.f32	s10, s13, s1
d0053dc2:	ee65 3aa3 	vmul.f32	s7, s11, s7
d0053dc6:	ee25 3a83 	vmul.f32	s6, s11, s6
d0053dca:	eefd 5ac8 	vcvt.s32.f32	s11, s16
d0053dce:	eef0 0a45 	vmov.f32	s1, s10
d0053dd2:	eeb0 5a67 	vmov.f32	s10, s15
d0053dd6:	ee15 ba90 	vmov	fp, s11
d0053dda:	eee6 7a83 	vfma.f32	s15, s13, s6
d0053dde:	eea6 5aa1 	vfma.f32	s10, s13, s3
d0053de2:	eef0 1a47 	vmov.f32	s3, s14
d0053de6:	eea6 7ae3 	vfms.f32	s14, s13, s7
d0053dea:	eee6 1ac2 	vfms.f32	s3, s13, s4
d0053dee:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0053df2:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d0053df6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053dfa:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0053dfe:	ee16 6a90 	vmov	r6, s13
d0053e02:	ee15 3a10 	vmov	r3, s10
d0053e06:	eefd 6ae1 	vcvt.s32.f32	s13, s3
d0053e0a:	ee17 4a10 	vmov	r4, s14
d0053e0e:	eba3 080b 	sub.w	r8, r3, fp
d0053e12:	ee17 3a90 	vmov	r3, s15
d0053e16:	ee16 ca90 	vmov	ip, s13
d0053e1a:	1ba7      	subs	r7, r4, r6
d0053e1c:	eba3 0e0b 	sub.w	lr, r3, fp
d0053e20:	ebac 0506 	sub.w	r5, ip, r6
d0053e24:	fb07 f708 	mul.w	r7, r7, r8
d0053e28:	fb0e 7515 	mls	r5, lr, r5, r7
d0053e2c:	2d00      	cmp	r5, #0
d0053e2e:	dd9f      	ble.n	d0053d70 <submitClippedTri+0x38>
d0053e30:	f8df 9188 	ldr.w	r9, [pc, #392]	; d0053fbc <submitClippedTri+0x284>
d0053e34:	f8d9 5000 	ldr.w	r5, [r9]
d0053e38:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0053e3c:	da98      	bge.n	d0053d70 <submitClippedTri+0x38>
d0053e3e:	4f5c      	ldr	r7, [pc, #368]	; (d0053fb0 <submitClippedTri+0x278>)
d0053e40:	ea4f 1e85 	mov.w	lr, r5, lsl #6
d0053e44:	1c6b      	adds	r3, r5, #1
d0053e46:	eddf 5a5b 	vldr	s11, [pc, #364]	; d0053fb4 <submitClippedTri+0x27c>
d0053e4a:	eb07 1585 	add.w	r5, r7, r5, lsl #6
d0053e4e:	f10e 0808 	add.w	r8, lr, #8
d0053e52:	9302      	str	r3, [sp, #8]
d0053e54:	ee15 3a10 	vmov	r3, s10
d0053e58:	f847 b00e 	str.w	fp, [r7, lr]
d0053e5c:	f10e 0a10 	add.w	sl, lr, #16
d0053e60:	606e      	str	r6, [r5, #4]
d0053e62:	b236      	sxth	r6, r6
d0053e64:	f847 3008 	str.w	r3, [r7, r8]
d0053e68:	ee17 3a90 	vmov	r3, s15
d0053e6c:	44b8      	add	r8, r7
d0053e6e:	eb07 0b0a 	add.w	fp, r7, sl
d0053e72:	eddf 6a51 	vldr	s13, [pc, #324]	; d0053fb8 <submitClippedTri+0x280>
d0053e76:	45b4      	cmp	ip, r6
d0053e78:	f8c8 c004 	str.w	ip, [r8, #4]
d0053e7c:	46b0      	mov	r8, r6
d0053e7e:	f847 300a 	str.w	r3, [r7, sl]
d0053e82:	9b01      	ldr	r3, [sp, #4]
d0053e84:	ed8b 7a01 	vstr	s14, [fp, #4]
d0053e88:	f885 3036 	strb.w	r3, [r5, #54]	; 0x36
d0053e8c:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d0053e90:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d0053e94:	edc5 4a07 	vstr	s9, [r5, #28]
d0053e98:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0053e9c:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0053ea0:	ee31 7a47 	vsub.f32	s14, s2, s14
d0053ea4:	9b02      	ldr	r3, [sp, #8]
d0053ea6:	f8c9 3000 	str.w	r3, [r9]
d0053eaa:	ee27 7a27 	vmul.f32	s14, s14, s15
d0053eae:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0053eb2:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0053eb6:	ee27 7a26 	vmul.f32	s14, s14, s13
d0053eba:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0053ebe:	ee17 3a10 	vmov	r3, s14
d0053ec2:	842b      	strh	r3, [r5, #32]
d0053ec4:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0053ec8:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0053ecc:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0053ed0:	ee27 7a27 	vmul.f32	s14, s14, s15
d0053ed4:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0053ed8:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0053edc:	ee27 7a26 	vmul.f32	s14, s14, s13
d0053ee0:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0053ee4:	ee17 3a10 	vmov	r3, s14
d0053ee8:	846b      	strh	r3, [r5, #34]	; 0x22
d0053eea:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0053eee:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0053ef2:	ee74 7a67 	vsub.f32	s15, s8, s15
d0053ef6:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0053efa:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0053efe:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d0053f02:	ee67 7a87 	vmul.f32	s15, s15, s14
d0053f06:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0053f0a:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0053f0e:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0053f12:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053f16:	ee17 3a90 	vmov	r3, s15
d0053f1a:	84ab      	strh	r3, [r5, #36]	; 0x24
d0053f1c:	db42      	blt.n	d0053fa4 <submitClippedTri+0x26c>
d0053f1e:	4633      	mov	r3, r6
d0053f20:	872e      	strh	r6, [r5, #56]	; 0x38
d0053f22:	42a3      	cmp	r3, r4
d0053f24:	dd02      	ble.n	d0053f2c <submitClippedTri+0x1f4>
d0053f26:	eb07 030e 	add.w	r3, r7, lr
d0053f2a:	871c      	strh	r4, [r3, #56]	; 0x38
d0053f2c:	45b4      	cmp	ip, r6
d0053f2e:	dc31      	bgt.n	d0053f94 <submitClippedTri+0x25c>
d0053f30:	eb07 030e 	add.w	r3, r7, lr
d0053f34:	875e      	strh	r6, [r3, #58]	; 0x3a
d0053f36:	45a0      	cmp	r8, r4
d0053f38:	da02      	bge.n	d0053f40 <submitClippedTri+0x208>
d0053f3a:	eb07 030e 	add.w	r3, r7, lr
d0053f3e:	875c      	strh	r4, [r3, #58]	; 0x3a
d0053f40:	eb07 030e 	add.w	r3, r7, lr
d0053f44:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d0053f48:	2a00      	cmp	r2, #0
d0053f4a:	da01      	bge.n	d0053f50 <submitClippedTri+0x218>
d0053f4c:	2200      	movs	r2, #0
d0053f4e:	871a      	strh	r2, [r3, #56]	; 0x38
d0053f50:	eb07 030e 	add.w	r3, r7, lr
d0053f54:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d0053f58:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0053f5c:	db02      	blt.n	d0053f64 <submitClippedTri+0x22c>
d0053f5e:	f240 123f 	movw	r2, #319	; 0x13f
d0053f62:	875a      	strh	r2, [r3, #58]	; 0x3a
d0053f64:	eb07 010e 	add.w	r1, r7, lr
d0053f68:	4477      	add	r7, lr
d0053f6a:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d0053f6e:	2b00      	cmp	r3, #0
d0053f70:	bfb8      	it	lt
d0053f72:	331f      	addlt	r3, #31
d0053f74:	115a      	asrs	r2, r3, #5
d0053f76:	f9b7 303a 	ldrsh.w	r3, [r7, #58]	; 0x3a
d0053f7a:	2b00      	cmp	r3, #0
d0053f7c:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d0053f80:	bfb8      	it	lt
d0053f82:	331f      	addlt	r3, #31
d0053f84:	115b      	asrs	r3, r3, #5
d0053f86:	f887 303d 	strb.w	r3, [r7, #61]	; 0x3d
d0053f8a:	b00d      	add	sp, #52	; 0x34
d0053f8c:	ecbd 8b02 	vpop	{d8}
d0053f90:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053f94:	fa0f fc8c 	sxth.w	ip, ip
d0053f98:	eb07 030e 	add.w	r3, r7, lr
d0053f9c:	46e0      	mov	r8, ip
d0053f9e:	f8a3 c03a 	strh.w	ip, [r3, #58]	; 0x3a
d0053fa2:	e7c8      	b.n	d0053f36 <submitClippedTri+0x1fe>
d0053fa4:	fa0f f28c 	sxth.w	r2, ip
d0053fa8:	4613      	mov	r3, r2
d0053faa:	872a      	strh	r2, [r5, #56]	; 0x38
d0053fac:	e7b9      	b.n	d0053f22 <submitClippedTri+0x1ea>
d0053fae:	bf00      	nop
d0053fb0:	d00693e0 	.word	0xd00693e0
d0053fb4:	00000000 	.word	0x00000000
d0053fb8:	477fff00 	.word	0x477fff00
d0053fbc:	d00693c0 	.word	0xd00693c0

d0053fc0 <getRenderTriCount>:
d0053fc0:	4b01      	ldr	r3, [pc, #4]	; (d0053fc8 <getRenderTriCount+0x8>)
d0053fc2:	6818      	ldr	r0, [r3, #0]
d0053fc4:	4770      	bx	lr
d0053fc6:	bf00      	nop
d0053fc8:	d00693c0 	.word	0xd00693c0

d0053fcc <drawFakeHorizonDots>:
d0053fcc:	2800      	cmp	r0, #0
d0053fce:	f000 8107 	beq.w	d00541e0 <drawFakeHorizonDots+0x214>
d0053fd2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053fd6:	4699      	mov	r9, r3
d0053fd8:	ed2d 8b10 	vpush	{d8-d15}
d0053fdc:	b085      	sub	sp, #20
d0053fde:	2b00      	cmp	r3, #0
d0053fe0:	f000 80f9 	beq.w	d00541d6 <drawFakeHorizonDots+0x20a>
d0053fe4:	4617      	mov	r7, r2
d0053fe6:	ed90 9a02 	vldr	s18, [r0, #8]
d0053fea:	edd0 8a00 	vldr	s17, [r0]
d0053fee:	4606      	mov	r6, r0
d0053ff0:	2f02      	cmp	r7, #2
d0053ff2:	ed90 6a01 	vldr	s12, [r0, #4]
d0053ff6:	ed90 da07 	vldr	s26, [r0, #28]
d0053ffa:	460a      	mov	r2, r1
d0053ffc:	bfb8      	it	lt
d0053ffe:	2702      	movlt	r7, #2
d0054000:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d0054004:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0054008:	ee30 ba46 	vsub.f32	s22, s0, s12
d005400c:	ee07 7a90 	vmov	s15, r7
d0054010:	ed90 fa06 	vldr	s30, [r0, #24]
d0054014:	edd0 ea08 	vldr	s29, [r0, #32]
d0054018:	f06f 0311 	mvn.w	r3, #17
d005401c:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0054020:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d0054024:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d0054028:	ee2b da0d 	vmul.f32	s26, s22, s26
d005402c:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0054030:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0054034:	ee89 7a08 	vdiv.f32	s14, s18, s16
d0054038:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d005403c:	eddf 5a69 	vldr	s11, [pc, #420]	; d00541e4 <drawFakeHorizonDots+0x218>
d0054040:	4d69      	ldr	r5, [pc, #420]	; (d00541e8 <drawFakeHorizonDots+0x21c>)
d0054042:	4c6a      	ldr	r4, [pc, #424]	; (d00541ec <drawFakeHorizonDots+0x220>)
d0054044:	eddf 9a6a 	vldr	s19, [pc, #424]	; d00541f0 <drawFakeHorizonDots+0x224>
d0054048:	eec8 7a88 	vdiv.f32	s15, s17, s16
d005404c:	9302      	str	r3, [sp, #8]
d005404e:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d00541f8 <drawFakeHorizonDots+0x22c>
d0054052:	4623      	mov	r3, r4
d0054054:	ee28 8a25 	vmul.f32	s16, s16, s11
d0054058:	ee2b ba26 	vmul.f32	s22, s22, s13
d005405c:	ee68 9a29 	vmul.f32	s19, s16, s19
d0054060:	febb 7a47 	vrintm.f32	s14, s14
d0054064:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0054068:	ee17 0a10 	vmov	r0, s14
d005406c:	fefb 7a67 	vrintm.f32	s15, s15
d0054070:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054074:	3812      	subs	r0, #18
d0054076:	ee17 1a90 	vmov	r1, s15
d005407a:	fb05 f500 	mul.w	r5, r5, r0
d005407e:	fb00 f007 	mul.w	r0, r0, r7
d0054082:	fb04 5a01 	mla	sl, r4, r1, r5
d0054086:	3912      	subs	r1, #18
d0054088:	9001      	str	r0, [sp, #4]
d005408a:	fb07 f101 	mul.w	r1, r7, r1
d005408e:	9103      	str	r1, [sp, #12]
d0054090:	eddd 7a01 	vldr	s15, [sp, #4]
d0054094:	ee39 aa08 	vadd.f32	s20, s18, s16
d0054098:	9902      	ldr	r1, [sp, #8]
d005409a:	ee78 aa88 	vadd.f32	s21, s17, s16
d005409e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00540a2:	9d03      	ldr	r5, [sp, #12]
d00540a4:	fb01 f801 	mul.w	r8, r1, r1
d00540a8:	f06f 0411 	mvn.w	r4, #17
d00540ac:	ee37 aaca 	vsub.f32	s20, s15, s20
d00540b0:	e078      	b.n	d00541a4 <drawFakeHorizonDots+0x1d8>
d00540b2:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d00540b6:	fb09 f000 	mul.w	r0, r9, r0
d00540ba:	2850      	cmp	r0, #80	; 0x50
d00540bc:	dd6e      	ble.n	d005419c <drawFakeHorizonDots+0x1d0>
d00540be:	494d      	ldr	r1, [pc, #308]	; (d00541f4 <drawFakeHorizonDots+0x228>)
d00540c0:	fba1 1000 	umull	r1, r0, r1, r0
d00540c4:	f3c0 1087 	ubfx	r0, r0, #6, #8
d00540c8:	fb03 a104 	mla	r1, r3, r4, sl
d00540cc:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d00540d0:	fb0b f101 	mul.w	r1, fp, r1
d00540d4:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d00540d8:	fa5f fc81 	uxtb.w	ip, r1
d00540dc:	4584      	cmp	ip, r0
d00540de:	d85d      	bhi.n	d005419c <drawFakeHorizonDots+0x1d0>
d00540e0:	ee07 5a10 	vmov	s14, r5
d00540e4:	f3c1 4007 	ubfx	r0, r1, #16, #8
d00540e8:	f3c1 2107 	ubfx	r1, r1, #8, #8
d00540ec:	eef0 4a4a 	vmov.f32	s9, s20
d00540f0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00540f4:	ee06 0a90 	vmov	s13, r0
d00540f8:	ee07 1a90 	vmov	s15, r1
d00540fc:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d0054100:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0054104:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054108:	ee37 7a6a 	vsub.f32	s14, s14, s21
d005410c:	eee6 4aa9 	vfma.f32	s9, s13, s19
d0054110:	eea7 7aa9 	vfma.f32	s14, s15, s19
d0054114:	eef0 7a47 	vmov.f32	s15, s14
d0054118:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d005411c:	eeac 7a27 	vfma.f32	s14, s24, s15
d0054120:	ee3b 7a07 	vadd.f32	s14, s22, s14
d0054124:	eeb4 6ac7 	vcmpe.f32	s12, s14
d0054128:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005412c:	da36      	bge.n	d005419c <drawFakeHorizonDots+0x1d0>
d005412e:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0054132:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d0054136:	ee2f 6a27 	vmul.f32	s12, s30, s15
d005413a:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d005413e:	ee6e 7a27 	vmul.f32	s15, s28, s15
d0054142:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d0054146:	ee83 4a87 	vdiv.f32	s8, s7, s14
d005414a:	eeae 6aa4 	vfma.f32	s12, s29, s9
d005414e:	eeed 7aa4 	vfma.f32	s15, s27, s9
d0054152:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d0054156:	ee36 7aa4 	vadd.f32	s14, s13, s9
d005415a:	ee7d 6a06 	vadd.f32	s13, s26, s12
d005415e:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d0054162:	ee35 6aa4 	vadd.f32	s12, s11, s9
d0054166:	ee66 6a85 	vmul.f32	s13, s13, s10
d005416a:	ee65 7a67 	vnmul.f32	s15, s10, s15
d005416e:	eea6 7a84 	vfma.f32	s14, s13, s8
d0054172:	eea7 6a84 	vfma.f32	s12, s15, s8
d0054176:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d005417a:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d005417e:	ee17 0a10 	vmov	r0, s14
d0054182:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0054186:	d209      	bcs.n	d005419c <drawFakeHorizonDots+0x1d0>
d0054188:	ee17 1a90 	vmov	r1, s15
d005418c:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0054190:	d204      	bcs.n	d005419c <drawFakeHorizonDots+0x1d0>
d0054192:	9200      	str	r2, [sp, #0]
d0054194:	f7fa fade 	bl	d004e754 <putPixel>
d0054198:	4b14      	ldr	r3, [pc, #80]	; (d00541ec <drawFakeHorizonDots+0x220>)
d005419a:	9a00      	ldr	r2, [sp, #0]
d005419c:	3401      	adds	r4, #1
d005419e:	443d      	add	r5, r7
d00541a0:	2c13      	cmp	r4, #19
d00541a2:	d009      	beq.n	d00541b8 <drawFakeHorizonDots+0x1ec>
d00541a4:	fb04 8004 	mla	r0, r4, r4, r8
d00541a8:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d00541ac:	dcf6      	bgt.n	d005419c <drawFakeHorizonDots+0x1d0>
d00541ae:	28f3      	cmp	r0, #243	; 0xf3
d00541b0:	f73f af7f 	bgt.w	d00540b2 <drawFakeHorizonDots+0xe6>
d00541b4:	4648      	mov	r0, r9
d00541b6:	e787      	b.n	d00540c8 <drawFakeHorizonDots+0xfc>
d00541b8:	9902      	ldr	r1, [sp, #8]
d00541ba:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d00541be:	9801      	ldr	r0, [sp, #4]
d00541c0:	3101      	adds	r1, #1
d00541c2:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d00541c6:	4438      	add	r0, r7
d00541c8:	2913      	cmp	r1, #19
d00541ca:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d00541ce:	9102      	str	r1, [sp, #8]
d00541d0:	9001      	str	r0, [sp, #4]
d00541d2:	f47f af5d 	bne.w	d0054090 <drawFakeHorizonDots+0xc4>
d00541d6:	b005      	add	sp, #20
d00541d8:	ecbd 8b10 	vpop	{d8-d15}
d00541dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00541e0:	4770      	bx	lr
d00541e2:	bf00      	nop
d00541e4:	3eb33333 	.word	0x3eb33333
d00541e8:	27d4eb2f 	.word	0x27d4eb2f
d00541ec:	165667b1 	.word	0x165667b1
d00541f0:	3c008081 	.word	0x3c008081
d00541f4:	ca4587e7 	.word	0xca4587e7
d00541f8:	4bf19f61 	.word	0x4bf19f61

d00541fc <drawFakeSkyDots>:
d00541fc:	2a10      	cmp	r2, #16
d00541fe:	ed9f 6a73 	vldr	s12, [pc, #460]	; d00543cc <drawFakeSkyDots+0x1d0>
d0054202:	ed9f 7a73 	vldr	s14, [pc, #460]	; d00543d0 <drawFakeSkyDots+0x1d4>
d0054206:	bfb8      	it	lt
d0054208:	2210      	movlt	r2, #16
d005420a:	2b08      	cmp	r3, #8
d005420c:	ee07 2a90 	vmov	s15, r2
d0054210:	bfb8      	it	lt
d0054212:	2308      	movlt	r3, #8
d0054214:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0054218:	ee07 3a90 	vmov	s15, r3
d005421c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0054220:	ed2d 8b10 	vpush	{d8-d15}
d0054224:	eec6 da26 	vdiv.f32	s27, s12, s13
d0054228:	b085      	sub	sp, #20
d005422a:	4617      	mov	r7, r2
d005422c:	4682      	mov	sl, r0
d005422e:	9303      	str	r3, [sp, #12]
d0054230:	468b      	mov	fp, r1
d0054232:	2300      	movs	r3, #0
d0054234:	edd0 ea06 	vldr	s29, [r0, #24]
d0054238:	ed90 ea07 	vldr	s28, [r0, #28]
d005423c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054240:	ed90 da08 	vldr	s26, [r0, #32]
d0054244:	edd0 ca09 	vldr	s25, [r0, #36]	; 0x24
d0054248:	ed90 ca0a 	vldr	s24, [r0, #40]	; 0x28
d005424c:	eec7 aa27 	vdiv.f32	s21, s14, s15
d0054250:	edd0 7a0d 	vldr	s15, [r0, #52]	; 0x34
d0054254:	edd0 ba0b 	vldr	s23, [r0, #44]	; 0x2c
d0054258:	edcd 7a00 	vstr	s15, [sp]
d005425c:	ed90 ba0c 	vldr	s22, [r0, #48]	; 0x30
d0054260:	edd0 7a0e 	vldr	s15, [r0, #56]	; 0x38
d0054264:	f89d 9078 	ldrb.w	r9, [sp, #120]	; 0x78
d0054268:	f8df 8178 	ldr.w	r8, [pc, #376]	; d00543e4 <drawFakeSkyDots+0x1e8>
d005426c:	ed9f fa59 	vldr	s30, [pc, #356]	; d00543d4 <drawFakeSkyDots+0x1d8>
d0054270:	9302      	str	r3, [sp, #8]
d0054272:	edcd 7a01 	vstr	s15, [sp, #4]
d0054276:	eddd 7a02 	vldr	s15, [sp, #8]
d005427a:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d005427e:	4b56      	ldr	r3, [pc, #344]	; (d00543d8 <drawFakeSkyDots+0x1dc>)
d0054280:	2400      	movs	r4, #0
d0054282:	ee17 2a90 	vmov	r2, s15
d0054286:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d005428a:	4e54      	ldr	r6, [pc, #336]	; (d00543dc <drawFakeSkyDots+0x1e0>)
d005428c:	fb03 f502 	mul.w	r5, r3, r2
d0054290:	ea85 3355 	eor.w	r3, r5, r5, lsr #13
d0054294:	ee07 4a90 	vmov	s15, r4
d0054298:	eef0 fa48 	vmov.f32	s31, s16
d005429c:	3401      	adds	r4, #1
d005429e:	fb08 f303 	mul.w	r3, r8, r3
d00542a2:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d00542a6:	4435      	add	r5, r6
d00542a8:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d00542ac:	f3c3 4207 	ubfx	r2, r3, #16, #8
d00542b0:	ee07 2a90 	vmov	s15, r2
d00542b4:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00542b8:	b2db      	uxtb	r3, r3
d00542ba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00542be:	ee07 2a10 	vmov	s14, r2
d00542c2:	454b      	cmp	r3, r9
d00542c4:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00542c8:	eee7 fa8f 	vfma.f32	s31, s15, s30
d00542cc:	d86f      	bhi.n	d00543ae <drawFakeSkyDots+0x1b2>
d00542ce:	eee7 6a0f 	vfma.f32	s13, s14, s30
d00542d2:	ee6f faaa 	vmul.f32	s31, s31, s21
d00542d6:	eeb0 0a6f 	vmov.f32	s0, s31
d00542da:	ee26 aaad 	vmul.f32	s20, s13, s27
d00542de:	f003 fa3b 	bl	d0057758 <sinf>
d00542e2:	eeb0 9a40 	vmov.f32	s18, s0
d00542e6:	eeb0 0a6f 	vmov.f32	s0, s31
d00542ea:	f003 f851 	bl	d0057390 <cosf>
d00542ee:	eef0 fa40 	vmov.f32	s31, s0
d00542f2:	eeb0 0a4a 	vmov.f32	s0, s20
d00542f6:	f003 fa2f 	bl	d0057758 <sinf>
d00542fa:	eef0 9a40 	vmov.f32	s19, s0
d00542fe:	eeb0 0a4a 	vmov.f32	s0, s20
d0054302:	f003 f845 	bl	d0057390 <cosf>
d0054306:	eddd 6a01 	vldr	s13, [sp, #4]
d005430a:	ee2f 7aa9 	vmul.f32	s14, s31, s19
d005430e:	ee6f 7a80 	vmul.f32	s15, s31, s0
d0054312:	ee26 6a87 	vmul.f32	s12, s13, s14
d0054316:	ee6c 4aa7 	vmul.f32	s9, s25, s15
d005431a:	ee6e 6aa7 	vmul.f32	s13, s29, s15
d005431e:	eeab 6a27 	vfma.f32	s12, s22, s15
d0054322:	eef0 7a66 	vmov.f32	s15, s13
d0054326:	eef0 6a64 	vmov.f32	s13, s9
d005432a:	eeed 7a07 	vfma.f32	s15, s26, s14
d005432e:	eeeb 6a87 	vfma.f32	s13, s23, s14
d0054332:	eeb0 7a46 	vmov.f32	s14, s12
d0054336:	ed9d 6a00 	vldr	s12, [sp]
d005433a:	eea6 7a09 	vfma.f32	s14, s12, s18
d005433e:	ed9f 6a28 	vldr	s12, [pc, #160]	; d00543e0 <drawFakeSkyDots+0x1e4>
d0054342:	eeee 7a09 	vfma.f32	s15, s28, s18
d0054346:	eeec 6a09 	vfma.f32	s13, s24, s18
d005434a:	eeb4 7ac6 	vcmpe.f32	s14, s12
d005434e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054352:	d92c      	bls.n	d00543ae <drawFakeSkyDots+0x1b2>
d0054354:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0054358:	ed9a 5a12 	vldr	s10, [sl, #72]	; 0x48
d005435c:	ee65 7a27 	vmul.f32	s15, s10, s15
d0054360:	eec6 4a07 	vdiv.f32	s9, s12, s14
d0054364:	ed9a 7a13 	vldr	s14, [sl, #76]	; 0x4c
d0054368:	ed9a 6a14 	vldr	s12, [sl, #80]	; 0x50
d005436c:	ee37 7a28 	vadd.f32	s14, s14, s17
d0054370:	ee36 6a28 	vadd.f32	s12, s12, s17
d0054374:	ee65 6a26 	vmul.f32	s13, s10, s13
d0054378:	eea7 7aa4 	vfma.f32	s14, s15, s9
d005437c:	eef0 7a47 	vmov.f32	s15, s14
d0054380:	eeb0 7a46 	vmov.f32	s14, s12
d0054384:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054388:	eea4 7ae6 	vfms.f32	s14, s9, s13
d005438c:	ee17 0a90 	vmov	r0, s15
d0054390:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0054394:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0054398:	d209      	bcs.n	d00543ae <drawFakeSkyDots+0x1b2>
d005439a:	ee17 3a90 	vmov	r3, s15
d005439e:	465a      	mov	r2, fp
d00543a0:	ee17 1a90 	vmov	r1, s15
d00543a4:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00543a8:	d201      	bcs.n	d00543ae <drawFakeSkyDots+0x1b2>
d00543aa:	f7fa f9d3 	bl	d004e754 <putPixel>
d00543ae:	42a7      	cmp	r7, r4
d00543b0:	f47f af6e 	bne.w	d0054290 <drawFakeSkyDots+0x94>
d00543b4:	9b02      	ldr	r3, [sp, #8]
d00543b6:	9a03      	ldr	r2, [sp, #12]
d00543b8:	3301      	adds	r3, #1
d00543ba:	429a      	cmp	r2, r3
d00543bc:	9302      	str	r3, [sp, #8]
d00543be:	f47f af5a 	bne.w	d0054276 <drawFakeSkyDots+0x7a>
d00543c2:	b005      	add	sp, #20
d00543c4:	ecbd 8b10 	vpop	{d8-d15}
d00543c8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00543cc:	40c90fdb 	.word	0x40c90fdb
d00543d0:	3fc90fdb 	.word	0x3fc90fdb
d00543d4:	3b808081 	.word	0x3b808081
d00543d8:	27d4eb2f 	.word	0x27d4eb2f
d00543dc:	165667b1 	.word	0x165667b1
d00543e0:	3a83126f 	.word	0x3a83126f
d00543e4:	4bf19f61 	.word	0x4bf19f61

d00543e8 <drawFakeHorizon>:
d00543e8:	2800      	cmp	r0, #0
d00543ea:	f000 813e 	beq.w	d005466a <drawFakeHorizon+0x282>
d00543ee:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00543f2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00543f6:	ed2d 8b0e 	vpush	{d8-d14}
d00543fa:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d00543fe:	b083      	sub	sp, #12
d0054400:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d0054404:	460f      	mov	r7, r1
d0054406:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d005440a:	eddf 7a9c 	vldr	s15, [pc, #624]	; d005467c <drawFakeHorizon+0x294>
d005440e:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d0054412:	4690      	mov	r8, r2
d0054414:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d0054418:	4699      	mov	r9, r3
d005441a:	ed90 ea07 	vldr	s28, [r0, #28]
d005441e:	2400      	movs	r4, #0
d0054420:	ed90 9a01 	vldr	s18, [r0, #4]
d0054424:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d0054428:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d005442c:	ee2b 7aad 	vmul.f32	s14, s23, s27
d0054430:	4e93      	ldr	r6, [pc, #588]	; (d0054680 <drawFakeHorizon+0x298>)
d0054432:	eef0 aa4c 	vmov.f32	s21, s24
d0054436:	ed9f 8a93 	vldr	s16, [pc, #588]	; d0054684 <drawFakeHorizon+0x29c>
d005443a:	eeb0 aa4c 	vmov.f32	s20, s24
d005443e:	eecd ca2d 	vdiv.f32	s25, s26, s27
d0054442:	eeb0 baed 	vabs.f32	s22, s27
d0054446:	ee30 9a49 	vsub.f32	s18, s0, s18
d005444a:	ee67 7aa8 	vmul.f32	s15, s15, s17
d005444e:	eee7 aa28 	vfma.f32	s21, s14, s17
d0054452:	ee6e 8a28 	vmul.f32	s17, s28, s17
d0054456:	eea7 aaad 	vfma.f32	s20, s15, s27
d005445a:	e056      	b.n	d005450a <drawFakeHorizon+0x122>
d005445c:	ee89 6a26 	vdiv.f32	s12, s18, s13
d0054460:	eef0 6ac7 	vabs.f32	s13, s14
d0054464:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0054468:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005446c:	eef4 6ac8 	vcmpe.f32	s13, s16
d0054470:	bfcc      	ite	gt
d0054472:	2201      	movgt	r2, #1
d0054474:	2200      	movle	r2, #0
d0054476:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005447a:	da61      	bge.n	d0054540 <drawFakeHorizon+0x158>
d005447c:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0054480:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0054484:	6833      	ldr	r3, [r6, #0]
d0054486:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005448a:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d005448e:	f240 80a8 	bls.w	d00545e2 <drawFakeHorizon+0x1fa>
d0054492:	eeb4 bac8 	vcmpe.f32	s22, s16
d0054496:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005449a:	f100 809a 	bmi.w	d00545d2 <drawFakeHorizon+0x1ea>
d005449e:	ee7c 7a27 	vadd.f32	s15, s24, s15
d00544a2:	eeb0 7a6b 	vmov.f32	s14, s23
d00544a6:	eeac 7aa7 	vfma.f32	s14, s25, s15
d00544aa:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00544ae:	ee17 ba90 	vmov	fp, s15
d00544b2:	f1bb 0f00 	cmp.w	fp, #0
d00544b6:	f2c0 80aa 	blt.w	d005460e <drawFakeHorizon+0x226>
d00544ba:	2201      	movs	r2, #1
d00544bc:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00544c0:	46da      	mov	sl, fp
d00544c2:	bfa8      	it	ge
d00544c4:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d00544c8:	2a00      	cmp	r2, #0
d00544ca:	f000 8091 	beq.w	d00545f0 <drawFakeHorizon+0x208>
d00544ce:	f1bb 0f00 	cmp.w	fp, #0
d00544d2:	d009      	beq.n	d00544e8 <drawFakeHorizon+0x100>
d00544d4:	f1ba 0f00 	cmp.w	sl, #0
d00544d8:	4628      	mov	r0, r5
d00544da:	4641      	mov	r1, r8
d00544dc:	bfcc      	ite	gt
d00544de:	4652      	movgt	r2, sl
d00544e0:	2201      	movle	r2, #1
d00544e2:	4415      	add	r5, r2
d00544e4:	f001 fe1c 	bl	d0056120 <memset>
d00544e8:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00544ec:	d009      	beq.n	d0054502 <drawFakeHorizon+0x11a>
d00544ee:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00544f2:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00544f6:	4628      	mov	r0, r5
d00544f8:	4639      	mov	r1, r7
d00544fa:	bfa8      	it	ge
d00544fc:	2201      	movge	r2, #1
d00544fe:	f001 fe0f 	bl	d0056120 <memset>
d0054502:	3401      	adds	r4, #1
d0054504:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0054508:	d04e      	beq.n	d00545a8 <drawFakeHorizon+0x1c0>
d005450a:	ee07 4a90 	vmov	s15, r4
d005450e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054512:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0054516:	ee67 7aa8 	vmul.f32	s15, s15, s17
d005451a:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d005451e:	ee3a 7a27 	vadd.f32	s14, s20, s15
d0054522:	eeb0 6ae6 	vabs.f32	s12, s13
d0054526:	eeb4 6ac8 	vcmpe.f32	s12, s16
d005452a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005452e:	da95      	bge.n	d005445c <drawFakeHorizon+0x74>
d0054530:	eef0 6ac7 	vabs.f32	s13, s14
d0054534:	eef4 6ac8 	vcmpe.f32	s13, s16
d0054538:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005453c:	db4c      	blt.n	d00545d8 <drawFakeHorizon+0x1f0>
d005453e:	2200      	movs	r2, #0
d0054540:	eec9 6a07 	vdiv.f32	s13, s18, s14
d0054544:	6833      	ldr	r3, [r6, #0]
d0054546:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d005454a:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d005454e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0054552:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054556:	bfcc      	ite	gt
d0054558:	2301      	movgt	r3, #1
d005455a:	2300      	movle	r3, #0
d005455c:	4293      	cmp	r3, r2
d005455e:	f000 8085 	beq.w	d005466c <drawFakeHorizon+0x284>
d0054562:	eeb4 bac8 	vcmpe.f32	s22, s16
d0054566:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005456a:	d429      	bmi.n	d00545c0 <drawFakeHorizon+0x1d8>
d005456c:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0054570:	eeb0 7a6b 	vmov.f32	s14, s23
d0054574:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0054578:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d005457c:	ee17 ba90 	vmov	fp, s15
d0054580:	f1bb 0f00 	cmp.w	fp, #0
d0054584:	da9a      	bge.n	d00544bc <drawFakeHorizon+0xd4>
d0054586:	2a00      	cmp	r2, #0
d0054588:	d141      	bne.n	d005460e <drawFakeHorizon+0x226>
d005458a:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d005458e:	f104 0401 	add.w	r4, r4, #1
d0054592:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0054596:	4628      	mov	r0, r5
d0054598:	bfa8      	it	ge
d005459a:	2201      	movge	r2, #1
d005459c:	4641      	mov	r1, r8
d005459e:	f001 fdbf 	bl	d0056120 <memset>
d00545a2:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00545a6:	d1b0      	bne.n	d005450a <drawFakeHorizon+0x122>
d00545a8:	eddf 7a36 	vldr	s15, [pc, #216]	; d0054684 <drawFakeHorizon+0x29c>
d00545ac:	eeb4 bae7 	vcmpe.f32	s22, s15
d00545b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545b4:	da31      	bge.n	d005461a <drawFakeHorizon+0x232>
d00545b6:	b003      	add	sp, #12
d00545b8:	ecbd 8b0e 	vpop	{d8-d14}
d00545bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00545c0:	b93a      	cbnz	r2, d00545d2 <drawFakeHorizon+0x1ea>
d00545c2:	22a0      	movs	r2, #160	; 0xa0
d00545c4:	4628      	mov	r0, r5
d00545c6:	4639      	mov	r1, r7
d00545c8:	4415      	add	r5, r2
d00545ca:	f001 fda9 	bl	d0056120 <memset>
d00545ce:	22a0      	movs	r2, #160	; 0xa0
d00545d0:	e7db      	b.n	d005458a <drawFakeHorizon+0x1a2>
d00545d2:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d00545d6:	e77d      	b.n	d00544d4 <drawFakeHorizon+0xec>
d00545d8:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00545dc:	6832      	ldr	r2, [r6, #0]
d00545de:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d00545e2:	4639      	mov	r1, r7
d00545e4:	4628      	mov	r0, r5
d00545e6:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00545ea:	f001 fd99 	bl	d0056120 <memset>
d00545ee:	e788      	b.n	d0054502 <drawFakeHorizon+0x11a>
d00545f0:	f1bb 0f00 	cmp.w	fp, #0
d00545f4:	d00e      	beq.n	d0054614 <drawFakeHorizon+0x22c>
d00545f6:	4628      	mov	r0, r5
d00545f8:	4652      	mov	r2, sl
d00545fa:	4639      	mov	r1, r7
d00545fc:	4455      	add	r5, sl
d00545fe:	f001 fd8f 	bl	d0056120 <memset>
d0054602:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0054606:	f6bf af7c 	bge.w	d0054502 <drawFakeHorizon+0x11a>
d005460a:	4652      	mov	r2, sl
d005460c:	e7bd      	b.n	d005458a <drawFakeHorizon+0x1a2>
d005460e:	f04f 0a00 	mov.w	sl, #0
d0054612:	e76c      	b.n	d00544ee <drawFakeHorizon+0x106>
d0054614:	46da      	mov	sl, fp
d0054616:	4652      	mov	r2, sl
d0054618:	e7b7      	b.n	d005458a <drawFakeHorizon+0x1a2>
d005461a:	ee2d ca0c 	vmul.f32	s24, s26, s24
d005461e:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0054688 <drawFakeHorizon+0x2a0>
d0054622:	f240 12df 	movw	r2, #479	; 0x1df
d0054626:	2000      	movs	r0, #0
d0054628:	ee77 7ae9 	vsub.f32	s15, s15, s19
d005462c:	f8cd 9000 	str.w	r9, [sp]
d0054630:	eef0 6a4c 	vmov.f32	s13, s24
d0054634:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0054638:	eee9 6ace 	vfms.f32	s13, s19, s28
d005463c:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d0054640:	ee86 7aad 	vdiv.f32	s14, s13, s27
d0054644:	ee37 7a2b 	vadd.f32	s14, s14, s23
d0054648:	ee77 baab 	vadd.f32	s23, s15, s23
d005464c:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0054650:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d0054654:	ee17 1a10 	vmov	r1, s14
d0054658:	ee17 3a90 	vmov	r3, s15
d005465c:	f7fa f88a 	bl	d004e774 <drawLine>
d0054660:	b003      	add	sp, #12
d0054662:	ecbd 8b0e 	vpop	{d8-d14}
d0054666:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005466a:	4770      	bx	lr
d005466c:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0054670:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054674:	ddb5      	ble.n	d00545e2 <drawFakeHorizon+0x1fa>
d0054676:	4641      	mov	r1, r8
d0054678:	e7b4      	b.n	d00545e4 <drawFakeHorizon+0x1fc>
d005467a:	bf00      	nop
d005467c:	439f8000 	.word	0x439f8000
d0054680:	d00f5670 	.word	0xd00f5670
d0054684:	38d1b717 	.word	0x38d1b717
d0054688:	43ef8000 	.word	0x43ef8000

d005468c <submitEntitySolid>:
d005468c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0054690:	ed2d 8b10 	vpush	{d8-d15}
d0054694:	b0c5      	sub	sp, #276	; 0x114
d0054696:	f10d 03b7 	add.w	r3, sp, #183	; 0xb7
d005469a:	9102      	str	r1, [sp, #8]
d005469c:	f023 031f 	bic.w	r3, r3, #31
d00546a0:	9303      	str	r3, [sp, #12]
d00546a2:	2800      	cmp	r0, #0
d00546a4:	f000 832a 	beq.w	d0054cfc <submitEntitySolid+0x670>
d00546a8:	f8d0 a018 	ldr.w	sl, [r0, #24]
d00546ac:	4604      	mov	r4, r0
d00546ae:	f1ba 0f00 	cmp.w	sl, #0
d00546b2:	f000 8323 	beq.w	d0054cfc <submitEntitySolid+0x670>
d00546b6:	f8da 3000 	ldr.w	r3, [sl]
d00546ba:	2b00      	cmp	r3, #0
d00546bc:	f000 831e 	beq.w	d0054cfc <submitEntitySolid+0x670>
d00546c0:	f8da 3010 	ldr.w	r3, [sl, #16]
d00546c4:	2b00      	cmp	r3, #0
d00546c6:	f000 8319 	beq.w	d0054cfc <submitEntitySolid+0x670>
d00546ca:	f8da 3004 	ldr.w	r3, [sl, #4]
d00546ce:	3b01      	subs	r3, #1
d00546d0:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d00546d4:	f080 8312 	bcs.w	d0054cfc <submitEntitySolid+0x670>
d00546d8:	f8da 3014 	ldr.w	r3, [sl, #20]
d00546dc:	2b00      	cmp	r3, #0
d00546de:	f340 830d 	ble.w	d0054cfc <submitEntitySolid+0x670>
d00546e2:	460e      	mov	r6, r1
d00546e4:	edd1 fa11 	vldr	s31, [r1, #68]	; 0x44
d00546e8:	ed91 ba10 	vldr	s22, [r1, #64]	; 0x40
d00546ec:	f7fe fda0 	bl	d0053230 <lightsGet>
d00546f0:	4605      	mov	r5, r0
d00546f2:	f7fe fda1 	bl	d0053238 <lightsGetCount>
d00546f6:	edda 7a09 	vldr	s15, [sl, #36]	; 0x24
d00546fa:	ed9a 7a0a 	vldr	s14, [sl, #40]	; 0x28
d00546fe:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0054702:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0054706:	edda 7a08 	vldr	s15, [sl, #32]
d005470a:	edd4 3a00 	vldr	s7, [r4]
d005470e:	edcd 7a05 	vstr	s15, [sp, #20]
d0054712:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054716:	edda 7a0c 	vldr	s15, [sl, #48]	; 0x30
d005471a:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d005471e:	edd4 1a02 	vldr	s3, [r4, #8]
d0054722:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0054726:	bfc8      	it	gt
d0054728:	2301      	movgt	r3, #1
d005472a:	edda 7a0b 	vldr	s15, [sl, #44]	; 0x2c
d005472e:	bfd8      	it	le
d0054730:	2300      	movle	r3, #0
d0054732:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054736:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d005473a:	edcd 7a0d 	vstr	s15, [sp, #52]	; 0x34
d005473e:	edd6 7a00 	vldr	s15, [r6]
d0054742:	bfc8      	it	gt
d0054744:	f043 0301 	orrgt.w	r3, r3, #1
d0054748:	ed94 fa01 	vldr	s30, [r4, #4]
d005474c:	edcd 7a07 	vstr	s15, [sp, #28]
d0054750:	edd6 7a01 	vldr	s15, [r6, #4]
d0054754:	ed94 aa0a 	vldr	s20, [r4, #40]	; 0x28
d0054758:	edcd 7a08 	vstr	s15, [sp, #32]
d005475c:	edd6 7a02 	vldr	s15, [r6, #8]
d0054760:	edd4 aa0b 	vldr	s21, [r4, #44]	; 0x2c
d0054764:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0054768:	edd4 ea0c 	vldr	s29, [r4, #48]	; 0x30
d005476c:	edd4 ba0d 	vldr	s23, [r4, #52]	; 0x34
d0054770:	ed94 ca0e 	vldr	s24, [r4, #56]	; 0x38
d0054774:	edd4 ca0f 	vldr	s25, [r4, #60]	; 0x3c
d0054778:	ed94 da07 	vldr	s26, [r4, #28]
d005477c:	edd4 da08 	vldr	s27, [r4, #32]
d0054780:	ed94 ea09 	vldr	s28, [r4, #36]	; 0x24
d0054784:	ed96 5a06 	vldr	s10, [r6, #24]
d0054788:	ed96 3a07 	vldr	s6, [r6, #28]
d005478c:	edcd 3a01 	vstr	s7, [sp, #4]
d0054790:	edcd 1a06 	vstr	s3, [sp, #24]
d0054794:	edd6 6a08 	vldr	s13, [r6, #32]
d0054798:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d005479c:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d00547a0:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d00547a4:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d00547a8:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d00547ac:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d00547b0:	b113      	cbz	r3, d00547b8 <submitEntitySolid+0x12c>
d00547b2:	2800      	cmp	r0, #0
d00547b4:	f300 8480 	bgt.w	d00550b8 <submitEntitySolid+0xa2c>
d00547b8:	2300      	movs	r3, #0
d00547ba:	9304      	str	r3, [sp, #16]
d00547bc:	eddd 4a08 	vldr	s9, [sp, #32]
d00547c0:	ee6a 1a83 	vmul.f32	s3, s21, s6
d00547c4:	ed9d 4a07 	vldr	s8, [sp, #28]
d00547c8:	ee2c 1a03 	vmul.f32	s2, s24, s6
d00547cc:	ee7f 3a64 	vsub.f32	s7, s30, s9
d00547d0:	eddd 4a01 	vldr	s9, [sp, #4]
d00547d4:	ee6a 0aa2 	vmul.f32	s1, s21, s5
d00547d8:	f8da 0004 	ldr.w	r0, [sl, #4]
d00547dc:	ee74 4ac4 	vsub.f32	s9, s9, s8
d00547e0:	ee23 9a23 	vmul.f32	s18, s6, s7
d00547e4:	2800      	cmp	r0, #0
d00547e6:	ee62 9aa3 	vmul.f32	s19, s5, s7
d00547ea:	ee2c 0a22 	vmul.f32	s0, s24, s5
d00547ee:	ee62 3a23 	vmul.f32	s7, s4, s7
d00547f2:	ee2a 8a82 	vmul.f32	s16, s21, s4
d00547f6:	ee6c 8a02 	vmul.f32	s17, s24, s4
d00547fa:	ee2d 3a83 	vmul.f32	s6, s27, s6
d00547fe:	ee6d 2aa2 	vmul.f32	s5, s27, s5
d0054802:	ee2d 2a82 	vmul.f32	s4, s27, s4
d0054806:	eee5 9aa4 	vfma.f32	s19, s11, s9
d005480a:	eee6 3a24 	vfma.f32	s7, s12, s9
d005480e:	eeea 0a25 	vfma.f32	s1, s20, s11
d0054812:	eeab 0aa5 	vfma.f32	s0, s23, s11
d0054816:	eeed 2a25 	vfma.f32	s5, s26, s11
d005481a:	eddd 5a09 	vldr	s11, [sp, #36]	; 0x24
d005481e:	eeaa 8a06 	vfma.f32	s16, s20, s12
d0054822:	eeeb 8a86 	vfma.f32	s17, s23, s12
d0054826:	eead 2a06 	vfma.f32	s4, s26, s12
d005482a:	ed9d 6a06 	vldr	s12, [sp, #24]
d005482e:	eea5 9a24 	vfma.f32	s18, s10, s9
d0054832:	eeea 1a05 	vfma.f32	s3, s20, s10
d0054836:	eeab 1a85 	vfma.f32	s2, s23, s10
d005483a:	eead 3a05 	vfma.f32	s6, s26, s10
d005483e:	ee36 6a65 	vsub.f32	s12, s12, s11
d0054842:	eeee 0a87 	vfma.f32	s1, s29, s14
d0054846:	eeac 0a87 	vfma.f32	s0, s25, s14
d005484a:	eeee 1aa6 	vfma.f32	s3, s29, s13
d005484e:	eeac 1aa6 	vfma.f32	s2, s25, s13
d0054852:	eea6 9a86 	vfma.f32	s18, s13, s12
d0054856:	eee7 9a06 	vfma.f32	s19, s14, s12
d005485a:	eee7 3a86 	vfma.f32	s7, s15, s12
d005485e:	eeae 3a26 	vfma.f32	s6, s28, s13
d0054862:	eeee 2a07 	vfma.f32	s5, s28, s14
d0054866:	eeae 8aa7 	vfma.f32	s16, s29, s15
d005486a:	eeec 8aa7 	vfma.f32	s17, s25, s15
d005486e:	eeae 2a27 	vfma.f32	s4, s28, s15
d0054872:	dd5b      	ble.n	d005492c <submitEntitySolid+0x2a0>
d0054874:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0054878:	f8da 3000 	ldr.w	r3, [sl]
d005487c:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0054880:	ed8d ba0f 	vstr	s22, [sp, #60]	; 0x3c
d0054884:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0054888:	49ef      	ldr	r1, [pc, #956]	; (d0054c48 <submitEntitySolid+0x5bc>)
d005488a:	4af0      	ldr	r2, [pc, #960]	; (d0054c4c <submitEntitySolid+0x5c0>)
d005488c:	ed9d ba01 	vldr	s22, [sp, #4]
d0054890:	eddd fa06 	vldr	s31, [sp, #24]
d0054894:	edd3 7a01 	vldr	s15, [r3, #4]
d0054898:	330c      	adds	r3, #12
d005489a:	ed13 4a03 	vldr	s8, [r3, #-12]
d005489e:	310c      	adds	r1, #12
d00548a0:	ee2b 5aa7 	vmul.f32	s10, s23, s15
d00548a4:	ed53 4a01 	vldr	s9, [r3, #-4]
d00548a8:	ee6c 5a27 	vmul.f32	s11, s24, s15
d00548ac:	4298      	cmp	r0, r3
d00548ae:	ee2c 6aa7 	vmul.f32	s12, s25, s15
d00548b2:	f102 020c 	add.w	r2, r2, #12
d00548b6:	ee61 6a27 	vmul.f32	s13, s2, s15
d00548ba:	ee20 7a27 	vmul.f32	s14, s0, s15
d00548be:	ee68 7aa7 	vmul.f32	s15, s17, s15
d00548c2:	eeaa 5a04 	vfma.f32	s10, s20, s8
d00548c6:	eeea 5a84 	vfma.f32	s11, s21, s8
d00548ca:	eeae 6a84 	vfma.f32	s12, s29, s8
d00548ce:	eee1 6a84 	vfma.f32	s13, s3, s8
d00548d2:	eea0 7a84 	vfma.f32	s14, s1, s8
d00548d6:	eee8 7a04 	vfma.f32	s15, s16, s8
d00548da:	ee3b 5a05 	vadd.f32	s10, s22, s10
d00548de:	ee7f 5a25 	vadd.f32	s11, s30, s11
d00548e2:	ee3f 6a86 	vadd.f32	s12, s31, s12
d00548e6:	ee76 6a89 	vadd.f32	s13, s13, s18
d00548ea:	ee37 7a29 	vadd.f32	s14, s14, s19
d00548ee:	ee77 7aa3 	vadd.f32	s15, s15, s7
d00548f2:	eead 5a24 	vfma.f32	s10, s26, s9
d00548f6:	eeed 5aa4 	vfma.f32	s11, s27, s9
d00548fa:	eeae 6a24 	vfma.f32	s12, s28, s9
d00548fe:	eee3 6a24 	vfma.f32	s13, s6, s9
d0054902:	eea2 7aa4 	vfma.f32	s14, s5, s9
d0054906:	eee2 7a24 	vfma.f32	s15, s4, s9
d005490a:	ed01 5a03 	vstr	s10, [r1, #-12]
d005490e:	ed41 5a02 	vstr	s11, [r1, #-8]
d0054912:	ed01 6a01 	vstr	s12, [r1, #-4]
d0054916:	ed42 6a03 	vstr	s13, [r2, #-12]
d005491a:	ed02 7a02 	vstr	s14, [r2, #-8]
d005491e:	ed42 7a01 	vstr	s15, [r2, #-4]
d0054922:	d1b7      	bne.n	d0054894 <submitEntitySolid+0x208>
d0054924:	eddd fa0e 	vldr	s31, [sp, #56]	; 0x38
d0054928:	ed9d ba0f 	vldr	s22, [sp, #60]	; 0x3c
d005492c:	f8da 3014 	ldr.w	r3, [sl, #20]
d0054930:	2b00      	cmp	r3, #0
d0054932:	9301      	str	r3, [sp, #4]
d0054934:	f340 81e2 	ble.w	d0054cfc <submitEntitySolid+0x670>
d0054938:	f04f 0900 	mov.w	r9, #0
d005493c:	f8df 830c 	ldr.w	r8, [pc, #780]	; d0054c4c <submitEntitySolid+0x5c0>
d0054940:	ed9f aac3 	vldr	s20, [pc, #780]	; d0054c50 <submitEntitySolid+0x5c4>
d0054944:	eddf aac3 	vldr	s21, [pc, #780]	; d0054c54 <submitEntitySolid+0x5c8>
d0054948:	ed9d da0a 	vldr	s26, [sp, #40]	; 0x28
d005494c:	eddd ba0b 	vldr	s23, [sp, #44]	; 0x2c
d0054950:	ed9d ca0c 	vldr	s24, [sp, #48]	; 0x30
d0054954:	eddd ca0d 	vldr	s25, [sp, #52]	; 0x34
d0054958:	f8da 4010 	ldr.w	r4, [sl, #16]
d005495c:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0054960:	58e3      	ldr	r3, [r4, r3]
d0054962:	eb04 1409 	add.w	r4, r4, r9, lsl #4
d0054966:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d005496a:	6862      	ldr	r2, [r4, #4]
d005496c:	68a1      	ldr	r1, [r4, #8]
d005496e:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0054972:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d0054976:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d005497a:	edd5 6a02 	vldr	s13, [r5, #8]
d005497e:	eb01 0741 	add.w	r7, r1, r1, lsl #1
d0054982:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d0054986:	eef4 6aef 	vcmpe.f32	s13, s31
d005498a:	eb08 0787 	add.w	r7, r8, r7, lsl #2
d005498e:	ea4f 0c42 	mov.w	ip, r2, lsl #1
d0054992:	ea4f 0e41 	mov.w	lr, r1, lsl #1
d0054996:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005499a:	dd0e      	ble.n	d00549ba <submitEntitySolid+0x32e>
d005499c:	edd6 7a02 	vldr	s15, [r6, #8]
d00549a0:	eef4 7aef 	vcmpe.f32	s15, s31
d00549a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549a8:	dd07      	ble.n	d00549ba <submitEntitySolid+0x32e>
d00549aa:	edd7 7a02 	vldr	s15, [r7, #8]
d00549ae:	eef4 7aef 	vcmpe.f32	s15, s31
d00549b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549b6:	f300 819b 	bgt.w	d0054cf0 <submitEntitySolid+0x664>
d00549ba:	eef4 6acb 	vcmpe.f32	s13, s22
d00549be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549c2:	d516      	bpl.n	d00549f2 <submitEntitySolid+0x366>
d00549c4:	eb0c 0002 	add.w	r0, ip, r2
d00549c8:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00549cc:	edd0 7a02 	vldr	s15, [r0, #8]
d00549d0:	eef4 7acb 	vcmpe.f32	s15, s22
d00549d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549d8:	d50b      	bpl.n	d00549f2 <submitEntitySolid+0x366>
d00549da:	eb0e 0001 	add.w	r0, lr, r1
d00549de:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00549e2:	edd0 7a02 	vldr	s15, [r0, #8]
d00549e6:	eef4 7acb 	vcmpe.f32	s15, s22
d00549ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549ee:	f100 817f 	bmi.w	d0054cf0 <submitEntitySolid+0x664>
d00549f2:	ed95 6a00 	vldr	s12, [r5]
d00549f6:	edd5 3a02 	vldr	s7, [r5, #8]
d00549fa:	ed96 2a00 	vldr	s4, [r6]
d00549fe:	ed97 5a02 	vldr	s10, [r7, #8]
d0054a02:	ee72 1a46 	vsub.f32	s3, s4, s12
d0054a06:	edd5 7a01 	vldr	s15, [r5, #4]
d0054a0a:	ee35 5a63 	vsub.f32	s10, s10, s7
d0054a0e:	ed96 4a02 	vldr	s8, [r6, #8]
d0054a12:	edd7 5a01 	vldr	s11, [r7, #4]
d0054a16:	ed97 1a00 	vldr	s2, [r7]
d0054a1a:	ee34 4a63 	vsub.f32	s8, s8, s7
d0054a1e:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0054a22:	edd6 4a01 	vldr	s9, [r6, #4]
d0054a26:	ee31 7a46 	vsub.f32	s14, s2, s12
d0054a2a:	ee65 2a61 	vnmul.f32	s5, s10, s3
d0054a2e:	ee74 4ae7 	vsub.f32	s9, s9, s15
d0054a32:	ee25 3ac4 	vnmul.f32	s6, s11, s8
d0054a36:	eee4 2a07 	vfma.f32	s5, s8, s14
d0054a3a:	ee27 7a64 	vnmul.f32	s14, s14, s9
d0054a3e:	eea4 3a85 	vfma.f32	s6, s9, s10
d0054a42:	eea1 7aa5 	vfma.f32	s14, s3, s11
d0054a46:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0054a4a:	eee6 7a03 	vfma.f32	s15, s12, s6
d0054a4e:	eee3 7a87 	vfma.f32	s15, s7, s14
d0054a52:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0054a56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a5a:	f280 8149 	bge.w	d0054cf0 <submitEntitySolid+0x664>
d0054a5e:	eef1 5a66 	vneg.f32	s11, s13
d0054a62:	eef4 5ac6 	vcmpe.f32	s11, s12
d0054a66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a6a:	dd1a      	ble.n	d0054aa2 <submitEntitySolid+0x416>
d0054a6c:	eb0c 0002 	add.w	r0, ip, r2
d0054a70:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054a74:	edd0 7a02 	vldr	s15, [r0, #8]
d0054a78:	eef1 7a67 	vneg.f32	s15, s15
d0054a7c:	eef4 7ac2 	vcmpe.f32	s15, s4
d0054a80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a84:	dd0d      	ble.n	d0054aa2 <submitEntitySolid+0x416>
d0054a86:	eb0e 0001 	add.w	r0, lr, r1
d0054a8a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054a8e:	edd0 7a02 	vldr	s15, [r0, #8]
d0054a92:	eef1 7a67 	vneg.f32	s15, s15
d0054a96:	eef4 7ac1 	vcmpe.f32	s15, s2
d0054a9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a9e:	f300 8127 	bgt.w	d0054cf0 <submitEntitySolid+0x664>
d0054aa2:	eef4 6ac6 	vcmpe.f32	s13, s12
d0054aa6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054aaa:	d516      	bpl.n	d0054ada <submitEntitySolid+0x44e>
d0054aac:	eb0c 0002 	add.w	r0, ip, r2
d0054ab0:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054ab4:	edd0 7a02 	vldr	s15, [r0, #8]
d0054ab8:	eef4 7ac2 	vcmpe.f32	s15, s4
d0054abc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ac0:	d50b      	bpl.n	d0054ada <submitEntitySolid+0x44e>
d0054ac2:	eb0e 0001 	add.w	r0, lr, r1
d0054ac6:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054aca:	edd0 7a02 	vldr	s15, [r0, #8]
d0054ace:	eef4 7ac1 	vcmpe.f32	s15, s2
d0054ad2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ad6:	f100 810b 	bmi.w	d0054cf0 <submitEntitySolid+0x664>
d0054ada:	ee26 7a8a 	vmul.f32	s14, s13, s20
d0054ade:	eb0b 0003 	add.w	r0, fp, r3
d0054ae2:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054ae6:	eeb1 5a47 	vneg.f32	s10, s14
d0054aea:	edd0 7a01 	vldr	s15, [r0, #4]
d0054aee:	eef4 7ac5 	vcmpe.f32	s15, s10
d0054af2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054af6:	d51e      	bpl.n	d0054b36 <submitEntitySolid+0x4aa>
d0054af8:	eb0c 0002 	add.w	r0, ip, r2
d0054afc:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054b00:	edd0 4a02 	vldr	s9, [r0, #8]
d0054b04:	ed90 4a01 	vldr	s8, [r0, #4]
d0054b08:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0054b0c:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0054b10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b14:	d50f      	bpl.n	d0054b36 <submitEntitySolid+0x4aa>
d0054b16:	eb0e 0001 	add.w	r0, lr, r1
d0054b1a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054b1e:	edd0 4a02 	vldr	s9, [r0, #8]
d0054b22:	ed90 4a01 	vldr	s8, [r0, #4]
d0054b26:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0054b2a:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0054b2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b32:	f100 80dd 	bmi.w	d0054cf0 <submitEntitySolid+0x664>
d0054b36:	eef4 7ac7 	vcmpe.f32	s15, s14
d0054b3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b3e:	dd1e      	ble.n	d0054b7e <submitEntitySolid+0x4f2>
d0054b40:	eb0c 0002 	add.w	r0, ip, r2
d0054b44:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054b48:	edd0 4a02 	vldr	s9, [r0, #8]
d0054b4c:	ed90 4a01 	vldr	s8, [r0, #4]
d0054b50:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0054b54:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0054b58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b5c:	dd0f      	ble.n	d0054b7e <submitEntitySolid+0x4f2>
d0054b5e:	eb0e 0001 	add.w	r0, lr, r1
d0054b62:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054b66:	edd0 4a02 	vldr	s9, [r0, #8]
d0054b6a:	ed90 4a01 	vldr	s8, [r0, #4]
d0054b6e:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0054b72:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0054b76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b7a:	f300 80b9 	bgt.w	d0054cf0 <submitEntitySolid+0x664>
d0054b7e:	eef4 6acb 	vcmpe.f32	s13, s22
d0054b82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b86:	db26      	blt.n	d0054bd6 <submitEntitySolid+0x54a>
d0054b88:	eb0c 0002 	add.w	r0, ip, r2
d0054b8c:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054b90:	edd0 4a02 	vldr	s9, [r0, #8]
d0054b94:	eef4 4acb 	vcmpe.f32	s9, s22
d0054b98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b9c:	db1b      	blt.n	d0054bd6 <submitEntitySolid+0x54a>
d0054b9e:	eb0e 0001 	add.w	r0, lr, r1
d0054ba2:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0054ba6:	ed90 4a02 	vldr	s8, [r0, #8]
d0054baa:	eeb4 4acb 	vcmpe.f32	s8, s22
d0054bae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bb2:	eef4 5ac6 	vcmpe.f32	s11, s12
d0054bb6:	bfac      	ite	ge
d0054bb8:	2001      	movge	r0, #1
d0054bba:	2000      	movlt	r0, #0
d0054bbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bc0:	f000 0001 	and.w	r0, r0, #1
d0054bc4:	bf88      	it	hi
d0054bc6:	2000      	movhi	r0, #0
d0054bc8:	b128      	cbz	r0, d0054bd6 <submitEntitySolid+0x54a>
d0054bca:	eef4 6a46 	vcmp.f32	s13, s12
d0054bce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bd2:	f280 82da 	bge.w	d005518a <submitEntitySolid+0xafe>
d0054bd6:	2000      	movs	r0, #0
d0054bd8:	448e      	add	lr, r1
d0054bda:	4462      	add	r2, ip
d0054bdc:	491a      	ldr	r1, [pc, #104]	; (d0054c48 <submitEntitySolid+0x5bc>)
d0054bde:	445b      	add	r3, fp
d0054be0:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0054be4:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0054be8:	eb01 018e 	add.w	r1, r1, lr, lsl #2
d0054bec:	edd2 4a00 	vldr	s9, [r2]
d0054bf0:	ed93 6a00 	vldr	s12, [r3]
d0054bf4:	ed93 7a02 	vldr	s14, [r3, #8]
d0054bf8:	ed91 4a02 	vldr	s8, [r1, #8]
d0054bfc:	ee74 2ac6 	vsub.f32	s5, s9, s12
d0054c00:	edd3 6a01 	vldr	s13, [r3, #4]
d0054c04:	ee34 2a47 	vsub.f32	s4, s8, s14
d0054c08:	edd2 5a02 	vldr	s11, [r2, #8]
d0054c0c:	edd1 3a01 	vldr	s7, [r1, #4]
d0054c10:	ed91 3a00 	vldr	s6, [r1]
d0054c14:	ee35 1ac7 	vsub.f32	s2, s11, s14
d0054c18:	ee73 7ae6 	vsub.f32	s15, s7, s13
d0054c1c:	ed92 5a01 	vldr	s10, [r2, #4]
d0054c20:	ee33 8a46 	vsub.f32	s16, s6, s12
d0054c24:	ee62 8a62 	vnmul.f32	s17, s4, s5
d0054c28:	ee75 1a66 	vsub.f32	s3, s10, s13
d0054c2c:	ee27 9ac1 	vnmul.f32	s18, s15, s2
d0054c30:	eee1 8a08 	vfma.f32	s17, s2, s16
d0054c34:	ee28 8a61 	vnmul.f32	s16, s16, s3
d0054c38:	eea1 9a82 	vfma.f32	s18, s3, s4
d0054c3c:	eea2 8aa7 	vfma.f32	s16, s5, s15
d0054c40:	ee68 7aa8 	vmul.f32	s15, s17, s17
d0054c44:	e00a      	b.n	d0054c5c <submitEntitySolid+0x5d0>
d0054c46:	bf00      	nop
d0054c48:	d00e9400 	.word	0xd00e9400
d0054c4c:	d005b3a0 	.word	0xd005b3a0
d0054c50:	3f2aaaab 	.word	0x3f2aaaab
d0054c54:	358637bd 	.word	0x358637bd
d0054c58:	3b808081 	.word	0x3b808081
d0054c5c:	eee9 7a09 	vfma.f32	s15, s18, s18
d0054c60:	eee8 7a08 	vfma.f32	s15, s16, s16
d0054c64:	eef4 7aea 	vcmpe.f32	s15, s21
d0054c68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c6c:	d940      	bls.n	d0054cf0 <submitEntitySolid+0x664>
d0054c6e:	7b63      	ldrb	r3, [r4, #13]
d0054c70:	eddd 2a05 	vldr	s5, [sp, #20]
d0054c74:	ee0f 3a10 	vmov	s30, r3
d0054c78:	9b04      	ldr	r3, [sp, #16]
d0054c7a:	ee72 9a8d 	vadd.f32	s19, s5, s26
d0054c7e:	ed5f 2a0a 	vldr	s5, [pc, #-40]	; d0054c58 <submitEntitySolid+0x5cc>
d0054c82:	eeb8 fa4f 	vcvt.f32.u32	s30, s30
d0054c86:	ee2f fa22 	vmul.f32	s30, s30, s5
d0054c8a:	2b00      	cmp	r3, #0
d0054c8c:	d17a      	bne.n	d0054d84 <submitEntitySolid+0x6f8>
d0054c8e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0054c92:	fec9 9a8f 	vmaxnm.f32	s19, s19, s30
d0054c96:	9001      	str	r0, [sp, #4]
d0054c98:	fe89 0ac0 	vminnm.f32	s0, s19, s0
d0054c9c:	f7fe fa9c 	bl	d00531d8 <brightnessToShadeF>
d0054ca0:	f894 b00c 	ldrb.w	fp, [r4, #12]
d0054ca4:	7ba3      	ldrb	r3, [r4, #14]
d0054ca6:	eeb0 8a40 	vmov.f32	s16, s0
d0054caa:	f00b 0b0f 	and.w	fp, fp, #15
d0054cae:	9801      	ldr	r0, [sp, #4]
d0054cb0:	b10b      	cbz	r3, d0054cb6 <submitEntitySolid+0x62a>
d0054cb2:	f04b 0b10 	orr.w	fp, fp, #16
d0054cb6:	b330      	cbz	r0, d0054d06 <submitEntitySolid+0x67a>
d0054cb8:	eef0 4a48 	vmov.f32	s9, s16
d0054cbc:	7b62      	ldrb	r2, [r4, #13]
d0054cbe:	4659      	mov	r1, fp
d0054cc0:	9802      	ldr	r0, [sp, #8]
d0054cc2:	ed97 3a00 	vldr	s6, [r7]
d0054cc6:	edd7 3a01 	vldr	s7, [r7, #4]
d0054cca:	ed97 4a02 	vldr	s8, [r7, #8]
d0054cce:	edd6 1a00 	vldr	s3, [r6]
d0054cd2:	ed96 2a01 	vldr	s4, [r6, #4]
d0054cd6:	edd6 2a02 	vldr	s5, [r6, #8]
d0054cda:	ed95 0a00 	vldr	s0, [r5]
d0054cde:	edd5 0a01 	vldr	s1, [r5, #4]
d0054ce2:	ed95 1a02 	vldr	s2, [r5, #8]
d0054ce6:	f7ff f827 	bl	d0053d38 <submitClippedTri>
d0054cea:	f8da 3014 	ldr.w	r3, [sl, #20]
d0054cee:	9301      	str	r3, [sp, #4]
d0054cf0:	f109 0901 	add.w	r9, r9, #1
d0054cf4:	9b01      	ldr	r3, [sp, #4]
d0054cf6:	4599      	cmp	r9, r3
d0054cf8:	f6ff ae2e 	blt.w	d0054958 <submitEntitySolid+0x2cc>
d0054cfc:	b045      	add	sp, #276	; 0x114
d0054cfe:	ecbd 8b10 	vpop	{d8-d15}
d0054d02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0054d06:	4ae5      	ldr	r2, [pc, #916]	; (d005509c <submitEntitySolid+0xa10>)
d0054d08:	edd6 1a00 	vldr	s3, [r6]
d0054d0c:	7c13      	ldrb	r3, [r2, #16]
d0054d0e:	7c50      	ldrb	r0, [r2, #17]
d0054d10:	ed96 2a01 	vldr	s4, [r6, #4]
d0054d14:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0054d18:	7c90      	ldrb	r0, [r2, #18]
d0054d1a:	7cd2      	ldrb	r2, [r2, #19]
d0054d1c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0054d20:	edd6 2a02 	vldr	s5, [r6, #8]
d0054d24:	edd5 0a01 	vldr	s1, [r5, #4]
d0054d28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0054d2c:	4adc      	ldr	r2, [pc, #880]	; (d00550a0 <submitEntitySolid+0xa14>)
d0054d2e:	ed95 1a02 	vldr	s2, [r5, #8]
d0054d32:	681e      	ldr	r6, [r3, #0]
d0054d34:	4bdb      	ldr	r3, [pc, #876]	; (d00550a4 <submitEntitySolid+0xa18>)
d0054d36:	ed95 0a00 	vldr	s0, [r5]
d0054d3a:	ed97 3a00 	vldr	s6, [r7]
d0054d3e:	edd7 3a01 	vldr	s7, [r7, #4]
d0054d42:	ed97 4a02 	vldr	s8, [r7, #8]
d0054d46:	9902      	ldr	r1, [sp, #8]
d0054d48:	9803      	ldr	r0, [sp, #12]
d0054d4a:	6835      	ldr	r5, [r6, #0]
d0054d4c:	6812      	ldr	r2, [r2, #0]
d0054d4e:	681b      	ldr	r3, [r3, #0]
d0054d50:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d0054d54:	ed8d 1a17 	vstr	s2, [sp, #92]	; 0x5c
d0054d58:	edcd 1a18 	vstr	s3, [sp, #96]	; 0x60
d0054d5c:	ed8d 2a19 	vstr	s4, [sp, #100]	; 0x64
d0054d60:	edcd 2a1a 	vstr	s5, [sp, #104]	; 0x68
d0054d64:	ed8d 3a1b 	vstr	s6, [sp, #108]	; 0x6c
d0054d68:	edcd 3a1c 	vstr	s7, [sp, #112]	; 0x70
d0054d6c:	ed8d 4a1d 	vstr	s8, [sp, #116]	; 0x74
d0054d70:	ed8d 0a15 	vstr	s0, [sp, #84]	; 0x54
d0054d74:	47a8      	blx	r5
d0054d76:	2802      	cmp	r0, #2
d0054d78:	f300 815e 	bgt.w	d0055038 <submitEntitySolid+0x9ac>
d0054d7c:	f8da 3014 	ldr.w	r3, [sl, #20]
d0054d80:	9301      	str	r3, [sp, #4]
d0054d82:	e7b5      	b.n	d0054cf0 <submitEntitySolid+0x664>
d0054d84:	ee74 da86 	vadd.f32	s27, s9, s12
d0054d88:	ed9f 6ac7 	vldr	s12, [pc, #796]	; d00550a8 <submitEntitySolid+0xa1c>
d0054d8c:	ee35 ea26 	vadd.f32	s28, s10, s13
d0054d90:	ee75 ea87 	vadd.f32	s29, s11, s14
d0054d94:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0054d98:	ee7d da83 	vadd.f32	s27, s27, s6
d0054d9c:	ee3e ea23 	vadd.f32	s28, s28, s7
d0054da0:	ee7e ea84 	vadd.f32	s29, s29, s8
d0054da4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054da8:	ee6d da86 	vmul.f32	s27, s27, s12
d0054dac:	ee2e ea06 	vmul.f32	s28, s28, s12
d0054db0:	ee6e ea86 	vmul.f32	s29, s29, s12
d0054db4:	dd17      	ble.n	d0054de6 <submitEntitySolid+0x75a>
d0054db6:	ed9d 7a08 	vldr	s14, [sp, #32]
d0054dba:	ee77 2a4e 	vsub.f32	s5, s14, s28
d0054dbe:	ed9d 7a07 	vldr	s14, [sp, #28]
d0054dc2:	ee37 3a6d 	vsub.f32	s6, s14, s27
d0054dc6:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0054dca:	ee37 4a6e 	vsub.f32	s8, s14, s29
d0054dce:	ee22 7aa2 	vmul.f32	s14, s5, s5
d0054dd2:	eea3 7a03 	vfma.f32	s14, s6, s6
d0054dd6:	eea4 7a04 	vfma.f32	s14, s8, s8
d0054dda:	eeb4 7aea 	vcmpe.f32	s14, s21
d0054dde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054de2:	f300 81b6 	bgt.w	d0055152 <submitEntitySolid+0xac6>
d0054de6:	ed9f 4ab3 	vldr	s8, [pc, #716]	; d00550b4 <submitEntitySolid+0xa28>
d0054dea:	eef0 2a44 	vmov.f32	s5, s8
d0054dee:	eeb0 3a44 	vmov.f32	s6, s8
d0054df2:	eef1 6ae7 	vsqrt.f32	s13, s15
d0054df6:	aa1d      	add	r2, sp, #116	; 0x74
d0054df8:	4639      	mov	r1, r7
d0054dfa:	9501      	str	r5, [sp, #4]
d0054dfc:	f04f 0b00 	mov.w	fp, #0
d0054e00:	4615      	mov	r5, r2
d0054e02:	4627      	mov	r7, r4
d0054e04:	4632      	mov	r2, r6
d0054e06:	9e04      	ldr	r6, [sp, #16]
d0054e08:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0054e0c:	eef0 0a6c 	vmov.f32	s1, s25
d0054e10:	eeb0 6a4f 	vmov.f32	s12, s30
d0054e14:	eeb0 5a47 	vmov.f32	s10, s14
d0054e18:	eef0 ca43 	vmov.f32	s25, s6
d0054e1c:	eeb0 fa44 	vmov.f32	s30, s8
d0054e20:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0054e24:	eeb0 7a4b 	vmov.f32	s14, s22
d0054e28:	eef0 6a4d 	vmov.f32	s13, s26
d0054e2c:	eeb0 ba6e 	vmov.f32	s22, s29
d0054e30:	eeb0 da62 	vmov.f32	s26, s5
d0054e34:	eef0 ea4e 	vmov.f32	s29, s28
d0054e38:	eeb0 ea6d 	vmov.f32	s28, s27
d0054e3c:	ee28 8a27 	vmul.f32	s16, s16, s15
d0054e40:	ee29 9a27 	vmul.f32	s18, s18, s15
d0054e44:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0054e48:	ee38 2a08 	vadd.f32	s4, s16, s16
d0054e4c:	eef0 7a6f 	vmov.f32	s15, s31
d0054e50:	ee39 1a09 	vadd.f32	s2, s18, s18
d0054e54:	ee78 1aa8 	vadd.f32	s3, s17, s17
d0054e58:	eef0 da48 	vmov.f32	s27, s16
d0054e5c:	eef0 fa42 	vmov.f32	s31, s4
d0054e60:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0054e64:	7823      	ldrb	r3, [r4, #0]
d0054e66:	2b00      	cmp	r3, #0
d0054e68:	d172      	bne.n	d0054f50 <submitEntitySolid+0x8c4>
d0054e6a:	ed94 0a02 	vldr	s0, [r4, #8]
d0054e6e:	ed94 4a01 	vldr	s8, [r4, #4]
d0054e72:	ee30 0a6e 	vsub.f32	s0, s0, s29
d0054e76:	edd4 4a03 	vldr	s9, [r4, #12]
d0054e7a:	ee34 4a4e 	vsub.f32	s8, s8, s28
d0054e7e:	edd4 3a0a 	vldr	s7, [r4, #40]	; 0x28
d0054e82:	ee74 4acb 	vsub.f32	s9, s9, s22
d0054e86:	ee60 5a00 	vmul.f32	s11, s0, s0
d0054e8a:	ee23 3aa3 	vmul.f32	s6, s7, s7
d0054e8e:	eee4 5a04 	vfma.f32	s11, s8, s8
d0054e92:	eee4 5aa4 	vfma.f32	s11, s9, s9
d0054e96:	eef4 5a6a 	vcmp.f32	s11, s21
d0054e9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e9e:	dd44      	ble.n	d0054f2a <submitEntitySolid+0x89e>
d0054ea0:	eeb4 3a65 	vcmp.f32	s6, s11
d0054ea4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ea8:	dd3f      	ble.n	d0054f2a <submitEntitySolid+0x89e>
d0054eaa:	eeb1 8ae5 	vsqrt.f32	s16, s11
d0054eae:	edd4 2a08 	vldr	s5, [r4, #32]
d0054eb2:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0054eb6:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0054eba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ebe:	ee85 3a08 	vdiv.f32	s6, s10, s16
d0054ec2:	ee24 4a03 	vmul.f32	s8, s8, s6
d0054ec6:	ee20 0a03 	vmul.f32	s0, s0, s6
d0054eca:	ee64 4a83 	vmul.f32	s9, s9, s6
d0054ece:	f140 80b0 	bpl.w	d0055032 <submitEntitySolid+0x9a6>
d0054ed2:	ed94 2a09 	vldr	s4, [r4, #36]	; 0x24
d0054ed6:	eef4 2ac2 	vcmpe.f32	s5, s4
d0054eda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ede:	da24      	bge.n	d0054f2a <submitEntitySolid+0x89e>
d0054ee0:	eef4 3ac2 	vcmpe.f32	s7, s4
d0054ee4:	ee65 5a83 	vmul.f32	s11, s11, s6
d0054ee8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054eec:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0054ef0:	f240 811c 	bls.w	d005512c <submitEntitySolid+0xaa0>
d0054ef4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ef8:	f2c0 81d1 	blt.w	d005529e <submitEntitySolid+0xc12>
d0054efc:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0054f00:	ee72 2a62 	vsub.f32	s5, s4, s5
d0054f04:	eeb6 3a08 	vmov.f32	s6, #104	; 0x3f400000  0.750
d0054f08:	eeb0 8a45 	vmov.f32	s16, s10
d0054f0c:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0054f10:	eddf 5a68 	vldr	s11, [pc, #416]	; d00550b4 <submitEntitySolid+0xa28>
d0054f14:	fec3 5aa5 	vmaxnm.f32	s11, s7, s11
d0054f18:	fec5 5ac5 	vminnm.f32	s11, s11, s10
d0054f1c:	eea5 8ac3 	vfms.f32	s16, s11, s6
d0054f20:	eeb5 8ac0 	vcmpe.f32	s16, #0.0
d0054f24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f28:	d820      	bhi.n	d0054f6c <submitEntitySolid+0x8e0>
d0054f2a:	f10b 0b01 	add.w	fp, fp, #1
d0054f2e:	455e      	cmp	r6, fp
d0054f30:	d196      	bne.n	d0054e60 <submitEntitySolid+0x7d4>
d0054f32:	463c      	mov	r4, r7
d0054f34:	eef0 fa67 	vmov.f32	s31, s15
d0054f38:	eeb0 ba47 	vmov.f32	s22, s14
d0054f3c:	9d01      	ldr	r5, [sp, #4]
d0054f3e:	eeb0 da66 	vmov.f32	s26, s13
d0054f42:	4616      	mov	r6, r2
d0054f44:	eef0 ca60 	vmov.f32	s25, s1
d0054f48:	460f      	mov	r7, r1
d0054f4a:	eeb0 fa46 	vmov.f32	s30, s12
d0054f4e:	e69e      	b.n	d0054c8e <submitEntitySolid+0x602>
d0054f50:	ed94 4a04 	vldr	s8, [r4, #16]
d0054f54:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0054f58:	ed94 0a05 	vldr	s0, [r4, #20]
d0054f5c:	edd4 4a06 	vldr	s9, [r4, #24]
d0054f60:	eeb1 4a44 	vneg.f32	s8, s8
d0054f64:	eeb1 0a40 	vneg.f32	s0, s0
d0054f68:	eef1 4a64 	vneg.f32	s9, s9
d0054f6c:	ee60 5a28 	vmul.f32	s11, s0, s17
d0054f70:	eee4 5a09 	vfma.f32	s11, s8, s18
d0054f74:	eee4 5aad 	vfma.f32	s11, s9, s27
d0054f78:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0054f7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f80:	d9d3      	bls.n	d0054f2a <submitEntitySolid+0x89e>
d0054f82:	eef5 bac0 	vcmpe.f32	s23, #0.0
d0054f86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f8a:	dd07      	ble.n	d0054f9c <submitEntitySolid+0x910>
d0054f8c:	edd4 3a07 	vldr	s7, [r4, #28]
d0054f90:	ee6b 3aa3 	vmul.f32	s7, s23, s7
d0054f94:	ee63 3a88 	vmul.f32	s7, s7, s16
d0054f98:	eee3 9aa5 	vfma.f32	s19, s7, s11
d0054f9c:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0054fa0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054fa4:	dd2f      	ble.n	d0055006 <submitEntitySolid+0x97a>
d0054fa6:	ee95 0aa1 	vfnms.f32	s0, s11, s3
d0054faa:	ee95 4a81 	vfnms.f32	s8, s11, s2
d0054fae:	eed5 4aaf 	vfnms.f32	s9, s11, s31
d0054fb2:	ee2d 0a00 	vmul.f32	s0, s26, s0
d0054fb6:	eeac 0a84 	vfma.f32	s0, s25, s8
d0054fba:	eeaf 0a24 	vfma.f32	s0, s30, s9
d0054fbe:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0054fc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054fc6:	dd1e      	ble.n	d0055006 <submitEntitySolid+0x97a>
d0054fc8:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d0054fcc:	eef4 0a65 	vcmp.f32	s1, s11
d0054fd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054fd4:	d009      	beq.n	d0054fea <submitEntitySolid+0x95e>
d0054fd6:	eef3 5a00 	vmov.f32	s11, #48	; 0x41800000  16.0
d0054fda:	eef4 0a65 	vcmp.f32	s1, s11
d0054fde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054fe2:	f040 8133 	bne.w	d005524c <submitEntitySolid+0xbc0>
d0054fe6:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054fea:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054fee:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054ff2:	ee20 0a00 	vmul.f32	s0, s0, s0
d0054ff6:	edd4 5a07 	vldr	s11, [r4, #28]
d0054ffa:	ee6c 5a25 	vmul.f32	s11, s24, s11
d0054ffe:	ee25 8a88 	vmul.f32	s16, s11, s16
d0055002:	eee0 9a08 	vfma.f32	s19, s0, s16
d0055006:	eef4 9ac5 	vcmpe.f32	s19, s10
d005500a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005500e:	db8c      	blt.n	d0054f2a <submitEntitySolid+0x89e>
d0055010:	463c      	mov	r4, r7
d0055012:	eef0 fa67 	vmov.f32	s31, s15
d0055016:	eeb0 ba47 	vmov.f32	s22, s14
d005501a:	9d01      	ldr	r5, [sp, #4]
d005501c:	eeb0 da66 	vmov.f32	s26, s13
d0055020:	4616      	mov	r6, r2
d0055022:	eef0 ca60 	vmov.f32	s25, s1
d0055026:	460f      	mov	r7, r1
d0055028:	eeb0 fa46 	vmov.f32	s30, s12
d005502c:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0055030:	e62d      	b.n	d0054c8e <submitEntitySolid+0x602>
d0055032:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0055036:	e799      	b.n	d0054f6c <submitEntitySolid+0x8e0>
d0055038:	1e46      	subs	r6, r0, #1
d005503a:	eef0 4a48 	vmov.f32	s9, s16
d005503e:	f8cd 9004 	str.w	r9, [sp, #4]
d0055042:	2501      	movs	r5, #1
d0055044:	46d9      	mov	r9, fp
d0055046:	9802      	ldr	r0, [sp, #8]
d0055048:	46b3      	mov	fp, r6
d005504a:	4626      	mov	r6, r4
d005504c:	9c03      	ldr	r4, [sp, #12]
d005504e:	462f      	mov	r7, r5
d0055050:	3501      	adds	r5, #1
d0055052:	7bb3      	ldrb	r3, [r6, #14]
d0055054:	4649      	mov	r1, r9
d0055056:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d005505a:	7b72      	ldrb	r2, [r6, #13]
d005505c:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0055060:	ed94 0a00 	vldr	s0, [r4]
d0055064:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d0055068:	edd4 0a01 	vldr	s1, [r4, #4]
d005506c:	eb04 0c8c 	add.w	ip, r4, ip, lsl #2
d0055070:	ed94 1a02 	vldr	s2, [r4, #8]
d0055074:	edd7 1a00 	vldr	s3, [r7]
d0055078:	ed97 2a01 	vldr	s4, [r7, #4]
d005507c:	edd7 2a02 	vldr	s5, [r7, #8]
d0055080:	ed9c 3a00 	vldr	s6, [ip]
d0055084:	eddc 3a01 	vldr	s7, [ip, #4]
d0055088:	ed9c 4a02 	vldr	s8, [ip, #8]
d005508c:	f7fe fe54 	bl	d0053d38 <submitClippedTri>
d0055090:	455d      	cmp	r5, fp
d0055092:	d1dc      	bne.n	d005504e <submitEntitySolid+0x9c2>
d0055094:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0055098:	e670      	b.n	d0054d7c <submitEntitySolid+0x6f0>
d005509a:	bf00      	nop
d005509c:	2001f000 	.word	0x2001f000
d00550a0:	d00673a0 	.word	0xd00673a0
d00550a4:	d00673a4 	.word	0xd00673a4
d00550a8:	3eaaaaab 	.word	0x3eaaaaab
d00550ac:	3f7fbe77 	.word	0x3f7fbe77
d00550b0:	3f8020c5 	.word	0x3f8020c5
d00550b4:	00000000 	.word	0x00000000
d00550b8:	2200      	movs	r2, #0
d00550ba:	ed9a 1a06 	vldr	s2, [sl, #24]
d00550be:	4611      	mov	r1, r2
d00550c0:	e027      	b.n	d0055112 <submitEntitySolid+0xa86>
d00550c2:	edd5 4a02 	vldr	s9, [r5, #8]
d00550c6:	ab44      	add	r3, sp, #272	; 0x110
d00550c8:	ed95 0a01 	vldr	s0, [r5, #4]
d00550cc:	ee74 4acf 	vsub.f32	s9, s9, s30
d00550d0:	edd5 0a03 	vldr	s1, [r5, #12]
d00550d4:	ee30 0a63 	vsub.f32	s0, s0, s7
d00550d8:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d00550dc:	ee70 0ae1 	vsub.f32	s1, s1, s3
d00550e0:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d00550e4:	ee64 4aa4 	vmul.f32	s9, s9, s9
d00550e8:	ee31 4a04 	vadd.f32	s8, s2, s8
d00550ec:	eee0 4a00 	vfma.f32	s9, s0, s0
d00550f0:	ee24 4a04 	vmul.f32	s8, s8, s8
d00550f4:	eee0 4aa0 	vfma.f32	s9, s1, s1
d00550f8:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00550fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055100:	db02      	blt.n	d0055108 <submitEntitySolid+0xa7c>
d0055102:	3101      	adds	r1, #1
d0055104:	f843 5c98 	str.w	r5, [r3, #-152]
d0055108:	3201      	adds	r2, #1
d005510a:	3540      	adds	r5, #64	; 0x40
d005510c:	4290      	cmp	r0, r2
d005510e:	f340 809a 	ble.w	d0055246 <submitEntitySolid+0xbba>
d0055112:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d0055114:	2b00      	cmp	r3, #0
d0055116:	d0f7      	beq.n	d0055108 <submitEntitySolid+0xa7c>
d0055118:	782b      	ldrb	r3, [r5, #0]
d005511a:	2b01      	cmp	r3, #1
d005511c:	d1d1      	bne.n	d00550c2 <submitEntitySolid+0xa36>
d005511e:	ab44      	add	r3, sp, #272	; 0x110
d0055120:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0055124:	3101      	adds	r1, #1
d0055126:	f843 5c98 	str.w	r5, [r3, #-152]
d005512a:	e7ed      	b.n	d0055108 <submitEntitySolid+0xa7c>
d005512c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055130:	f67f aefb 	bls.w	d0054f2a <submitEntitySolid+0x89e>
d0055134:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0055138:	ee72 2a62 	vsub.f32	s5, s4, s5
d005513c:	ee85 8aa2 	vdiv.f32	s16, s11, s5
d0055140:	ed5f 5a24 	vldr	s11, [pc, #-144]	; d00550b4 <submitEntitySolid+0xa28>
d0055144:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0055148:	fe88 8a45 	vminnm.f32	s16, s16, s10
d005514c:	ee35 8a48 	vsub.f32	s16, s10, s16
d0055150:	e6e6      	b.n	d0054f20 <submitEntitySolid+0x894>
d0055152:	ed5f 6a2a 	vldr	s13, [pc, #-168]	; d00550ac <submitEntitySolid+0xa20>
d0055156:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005515a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005515e:	d407      	bmi.n	d0055170 <submitEntitySolid+0xae4>
d0055160:	ed5f 6a2d 	vldr	s13, [pc, #-180]	; d00550b0 <submitEntitySolid+0xa24>
d0055164:	eeb4 7a66 	vcmp.f32	s14, s13
d0055168:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005516c:	f77f ae41 	ble.w	d0054df2 <submitEntitySolid+0x766>
d0055170:	eef1 6ac7 	vsqrt.f32	s13, s14
d0055174:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0055178:	ee86 7a26 	vdiv.f32	s14, s12, s13
d005517c:	ee23 3a07 	vmul.f32	s6, s6, s14
d0055180:	ee62 2a87 	vmul.f32	s5, s5, s14
d0055184:	ee24 4a07 	vmul.f32	s8, s8, s14
d0055188:	e633      	b.n	d0054df2 <submitEntitySolid+0x766>
d005518a:	eef1 6a64 	vneg.f32	s13, s9
d005518e:	eef4 6a42 	vcmp.f32	s13, s4
d0055192:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055196:	f63f ad1e 	bhi.w	d0054bd6 <submitEntitySolid+0x54a>
d005519a:	eef4 4a42 	vcmp.f32	s9, s4
d005519e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00551a2:	f6ff ad18 	blt.w	d0054bd6 <submitEntitySolid+0x54a>
d00551a6:	eef1 6a44 	vneg.f32	s13, s8
d00551aa:	eef4 6ac1 	vcmpe.f32	s13, s2
d00551ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00551b2:	eeb4 4ac1 	vcmpe.f32	s8, s2
d00551b6:	bf94      	ite	ls
d00551b8:	2001      	movls	r0, #1
d00551ba:	2000      	movhi	r0, #0
d00551bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00551c0:	eef4 7ac5 	vcmpe.f32	s15, s10
d00551c4:	f000 0001 	and.w	r0, r0, #1
d00551c8:	bfb8      	it	lt
d00551ca:	2000      	movlt	r0, #0
d00551cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00551d0:	f000 0001 	and.w	r0, r0, #1
d00551d4:	bfb8      	it	lt
d00551d6:	2000      	movlt	r0, #0
d00551d8:	2800      	cmp	r0, #0
d00551da:	f43f acfc 	beq.w	d0054bd6 <submitEntitySolid+0x54a>
d00551de:	eef4 7a47 	vcmp.f32	s15, s14
d00551e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00551e6:	f63f acf6 	bhi.w	d0054bd6 <submitEntitySolid+0x54a>
d00551ea:	ee64 4a8a 	vmul.f32	s9, s9, s20
d00551ee:	200c      	movs	r0, #12
d00551f0:	fb00 8002 	mla	r0, r0, r2, r8
d00551f4:	eeb1 7a64 	vneg.f32	s14, s9
d00551f8:	edd0 7a01 	vldr	s15, [r0, #4]
d00551fc:	eef4 7a47 	vcmp.f32	s15, s14
d0055200:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055204:	f6ff ace7 	blt.w	d0054bd6 <submitEntitySolid+0x54a>
d0055208:	eef4 7a64 	vcmp.f32	s15, s9
d005520c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055210:	f63f ace1 	bhi.w	d0054bd6 <submitEntitySolid+0x54a>
d0055214:	ee24 4a0a 	vmul.f32	s8, s8, s20
d0055218:	200c      	movs	r0, #12
d005521a:	fb00 8001 	mla	r0, r0, r1, r8
d005521e:	eeb1 7a44 	vneg.f32	s14, s8
d0055222:	edd0 7a01 	vldr	s15, [r0, #4]
d0055226:	eef4 7ac7 	vcmpe.f32	s15, s14
d005522a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005522e:	eef4 7ac4 	vcmpe.f32	s15, s8
d0055232:	bfac      	ite	ge
d0055234:	2001      	movge	r0, #1
d0055236:	2000      	movlt	r0, #0
d0055238:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005523c:	f000 0001 	and.w	r0, r0, #1
d0055240:	bf88      	it	hi
d0055242:	2000      	movhi	r0, #0
d0055244:	e4c8      	b.n	d0054bd8 <submitEntitySolid+0x54c>
d0055246:	9104      	str	r1, [sp, #16]
d0055248:	f7ff bab8 	b.w	d00547bc <submitEntitySolid+0x130>
d005524c:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0055250:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d0055254:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d0055258:	9110      	str	r1, [sp, #64]	; 0x40
d005525a:	920f      	str	r2, [sp, #60]	; 0x3c
d005525c:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d0055260:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d0055264:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d0055268:	900b      	str	r0, [sp, #44]	; 0x2c
d005526a:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d005526e:	edcd 0a06 	vstr	s1, [sp, #24]
d0055272:	f7fc f9a7 	bl	d00515c4 <powfxt>
d0055276:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d005527a:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d005527e:	ed9d 6a11 	vldr	s12, [sp, #68]	; 0x44
d0055282:	9910      	ldr	r1, [sp, #64]	; 0x40
d0055284:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0055286:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d005528a:	ed9d 7a0d 	vldr	s14, [sp, #52]	; 0x34
d005528e:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0055292:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0055294:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d0055298:	eddd 0a06 	vldr	s1, [sp, #24]
d005529c:	e6ab      	b.n	d0054ff6 <submitEntitySolid+0x96a>
d005529e:	ee75 5ac2 	vsub.f32	s11, s11, s4
d00552a2:	ee73 3ac2 	vsub.f32	s7, s7, s4
d00552a6:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d00552aa:	ee85 8aa3 	vdiv.f32	s16, s11, s7
d00552ae:	ed5f 5a7f 	vldr	s11, [pc, #-508]	; d00550b4 <submitEntitySolid+0xa28>
d00552b2:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d00552b6:	fe88 8a45 	vminnm.f32	s16, s16, s10
d00552ba:	ee35 8a48 	vsub.f32	s16, s10, s16
d00552be:	ee28 8a03 	vmul.f32	s16, s16, s6
d00552c2:	e62d      	b.n	d0054f20 <submitEntitySolid+0x894>

d00552c4 <submitWorldEntities>:
d00552c4:	b570      	push	{r4, r5, r6, lr}
d00552c6:	4c3e      	ldr	r4, [pc, #248]	; (d00553c0 <submitWorldEntities+0xfc>)
d00552c8:	4605      	mov	r5, r0
d00552ca:	f504 4600 	add.w	r6, r4, #32768	; 0x8000
d00552ce:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
d00552d2:	2b00      	cmp	r3, #0
d00552d4:	d070      	beq.n	d00553b8 <submitWorldEntities+0xf4>
d00552d6:	69a3      	ldr	r3, [r4, #24]
d00552d8:	2b00      	cmp	r3, #0
d00552da:	d06d      	beq.n	d00553b8 <submitWorldEntities+0xf4>
d00552dc:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
d00552e0:	07d2      	lsls	r2, r2, #31
d00552e2:	d569      	bpl.n	d00553b8 <submitWorldEntities+0xf4>
d00552e4:	edd5 6a01 	vldr	s13, [r5, #4]
d00552e8:	ed94 7a01 	vldr	s14, [r4, #4]
d00552ec:	ed95 5a00 	vldr	s10, [r5]
d00552f0:	ee37 7a66 	vsub.f32	s14, s14, s13
d00552f4:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d00552f8:	edd4 6a00 	vldr	s13, [r4]
d00552fc:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0055300:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0055304:	ed94 6a02 	vldr	s12, [r4, #8]
d0055308:	ee67 7a27 	vmul.f32	s15, s14, s15
d005530c:	ed95 5a02 	vldr	s10, [r5, #8]
d0055310:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d0055314:	ee36 6a45 	vsub.f32	s12, s12, s10
d0055318:	ed93 5a06 	vldr	s10, [r3, #24]
d005531c:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0055320:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d0055324:	eee6 7a24 	vfma.f32	s15, s12, s9
d0055328:	ee77 4ac5 	vsub.f32	s9, s15, s10
d005532c:	eef4 4ae5 	vcmpe.f32	s9, s11
d0055330:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055334:	dc40      	bgt.n	d00553b8 <submitWorldEntities+0xf4>
d0055336:	ee75 4a27 	vadd.f32	s9, s10, s15
d005533a:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d005533e:	eef4 4ae5 	vcmpe.f32	s9, s11
d0055342:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055346:	d437      	bmi.n	d00553b8 <submitWorldEntities+0xf4>
d0055348:	edd5 5a07 	vldr	s11, [r5, #28]
d005534c:	eeb1 4a64 	vneg.f32	s8, s9
d0055350:	ed95 3a08 	vldr	s6, [r5, #32]
d0055354:	ee67 5a25 	vmul.f32	s11, s14, s11
d0055358:	edd5 3a06 	vldr	s7, [r5, #24]
d005535c:	eee6 5a03 	vfma.f32	s11, s12, s6
d0055360:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0055364:	eef4 5ac4 	vcmpe.f32	s11, s8
d0055368:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005536c:	d424      	bmi.n	d00553b8 <submitWorldEntities+0xf4>
d005536e:	eef4 5ae4 	vcmpe.f32	s11, s9
d0055372:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055376:	dc1f      	bgt.n	d00553b8 <submitWorldEntities+0xf4>
d0055378:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d005537c:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d0055380:	ee27 7a25 	vmul.f32	s14, s14, s11
d0055384:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d0055388:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d005538c:	eea7 5a84 	vfma.f32	s10, s15, s8
d0055390:	eea6 7a24 	vfma.f32	s14, s12, s9
d0055394:	eef1 7a45 	vneg.f32	s15, s10
d0055398:	eea6 7aa5 	vfma.f32	s14, s13, s11
d005539c:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00553a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00553a4:	d408      	bmi.n	d00553b8 <submitWorldEntities+0xf4>
d00553a6:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00553aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00553ae:	dc03      	bgt.n	d00553b8 <submitWorldEntities+0xf4>
d00553b0:	4629      	mov	r1, r5
d00553b2:	4620      	mov	r0, r4
d00553b4:	f7ff f96a 	bl	d005468c <submitEntitySolid>
d00553b8:	3480      	adds	r4, #128	; 0x80
d00553ba:	42a6      	cmp	r6, r4
d00553bc:	d187      	bne.n	d00552ce <submitWorldEntities+0xa>
d00553be:	bd70      	pop	{r4, r5, r6, pc}
d00553c0:	d00f5680 	.word	0xd00f5680

d00553c4 <Render3D>:
d00553c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00553c8:	4da9      	ldr	r5, [pc, #676]	; (d0055670 <Render3D+0x2ac>)
d00553ca:	4604      	mov	r4, r0
d00553cc:	682b      	ldr	r3, [r5, #0]
d00553ce:	ed2d 8b02 	vpush	{d8}
d00553d2:	b088      	sub	sp, #32
d00553d4:	2b00      	cmp	r3, #0
d00553d6:	d07d      	beq.n	d00554d4 <Render3D+0x110>
d00553d8:	4ba6      	ldr	r3, [pc, #664]	; (d0055674 <Render3D+0x2b0>)
d00553da:	681b      	ldr	r3, [r3, #0]
d00553dc:	2b00      	cmp	r3, #0
d00553de:	d079      	beq.n	d00554d4 <Render3D+0x110>
d00553e0:	4fa5      	ldr	r7, [pc, #660]	; (d0055678 <Render3D+0x2b4>)
d00553e2:	2300      	movs	r3, #0
d00553e4:	4620      	mov	r0, r4
d00553e6:	603b      	str	r3, [r7, #0]
d00553e8:	f7ff ff6c 	bl	d00552c4 <submitWorldEntities>
d00553ec:	b114      	cbz	r4, d00553f4 <Render3D+0x30>
d00553ee:	4620      	mov	r0, r4
d00553f0:	f7fe f91c 	bl	d005362c <sb3dParticlesRender.part.0>
d00553f4:	4ba1      	ldr	r3, [pc, #644]	; (d005567c <Render3D+0x2b8>)
d00553f6:	681d      	ldr	r5, [r3, #0]
d00553f8:	2d00      	cmp	r5, #0
d00553fa:	f040 80e8 	bne.w	d00555ce <Render3D+0x20a>
d00553fe:	f8df 828c 	ldr.w	r8, [pc, #652]	; d005568c <Render3D+0x2c8>
d0055402:	f8df 928c 	ldr.w	r9, [pc, #652]	; d0055690 <Render3D+0x2cc>
d0055406:	0168      	lsls	r0, r5, #5
d0055408:	f7f9 f97a 	bl	d004e700 <beginDepthBand>
d005540c:	f8d8 6000 	ldr.w	r6, [r8]
d0055410:	2e00      	cmp	r6, #0
d0055412:	f040 80a9 	bne.w	d0055568 <Render3D+0x1a4>
d0055416:	f8d9 a000 	ldr.w	sl, [r9]
d005541a:	683a      	ldr	r2, [r7, #0]
d005541c:	f1ba 0f00 	cmp.w	sl, #0
d0055420:	d171      	bne.n	d0055506 <Render3D+0x142>
d0055422:	2a00      	cmp	r2, #0
d0055424:	dd4e      	ble.n	d00554c4 <Render3D+0x100>
d0055426:	4c96      	ldr	r4, [pc, #600]	; (d0055680 <Render3D+0x2bc>)
d0055428:	e021      	b.n	d005546e <Render3D+0xaa>
d005542a:	f894 1036 	ldrb.w	r1, [r4, #54]	; 0x36
d005542e:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d0055430:	8c20      	ldrh	r0, [r4, #32]
d0055432:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0055434:	9305      	str	r3, [sp, #20]
d0055436:	9106      	str	r1, [sp, #24]
d0055438:	9204      	str	r2, [sp, #16]
d005543a:	9603      	str	r6, [sp, #12]
d005543c:	9002      	str	r0, [sp, #8]
d005543e:	6963      	ldr	r3, [r4, #20]
d0055440:	9301      	str	r3, [sp, #4]
d0055442:	6923      	ldr	r3, [r4, #16]
d0055444:	9300      	str	r3, [sp, #0]
d0055446:	edd4 1a07 	vldr	s3, [r4, #28]
d005544a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005544e:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055452:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055456:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d005545a:	e9d4 0100 	ldrd	r0, r1, [r4]
d005545e:	f7fa fc2b 	bl	d004fcb8 <fillTriangleDitherBayerT>
d0055462:	683a      	ldr	r2, [r7, #0]
d0055464:	f10a 0a01 	add.w	sl, sl, #1
d0055468:	3440      	adds	r4, #64	; 0x40
d005546a:	4592      	cmp	sl, r2
d005546c:	da2a      	bge.n	d00554c4 <Render3D+0x100>
d005546e:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0055472:	42ab      	cmp	r3, r5
d0055474:	dcf6      	bgt.n	d0055464 <Render3D+0xa0>
d0055476:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d005547a:	42ab      	cmp	r3, r5
d005547c:	dbf2      	blt.n	d0055464 <Render3D+0xa0>
d005547e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0055482:	06da      	lsls	r2, r3, #27
d0055484:	d4d1      	bmi.n	d005542a <Render3D+0x66>
d0055486:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d0055488:	f10a 0a01 	add.w	sl, sl, #1
d005548c:	8c20      	ldrh	r0, [r4, #32]
d005548e:	6961      	ldr	r1, [r4, #20]
d0055490:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0055492:	9305      	str	r3, [sp, #20]
d0055494:	9204      	str	r2, [sp, #16]
d0055496:	9603      	str	r6, [sp, #12]
d0055498:	9002      	str	r0, [sp, #8]
d005549a:	9101      	str	r1, [sp, #4]
d005549c:	6923      	ldr	r3, [r4, #16]
d005549e:	9300      	str	r3, [sp, #0]
d00554a0:	edd4 1a07 	vldr	s3, [r4, #28]
d00554a4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00554a8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00554ac:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00554b0:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00554b4:	e9d4 0100 	ldrd	r0, r1, [r4]
d00554b8:	f7f9 fe6a 	bl	d004f190 <fillTriangleDitherBayer>
d00554bc:	683a      	ldr	r2, [r7, #0]
d00554be:	3440      	adds	r4, #64	; 0x40
d00554c0:	4592      	cmp	sl, r2
d00554c2:	dbd4      	blt.n	d005546e <Render3D+0xaa>
d00554c4:	3501      	adds	r5, #1
d00554c6:	2d0a      	cmp	r5, #10
d00554c8:	d19d      	bne.n	d0055406 <Render3D+0x42>
d00554ca:	b008      	add	sp, #32
d00554cc:	ecbd 8b02 	vpop	{d8}
d00554d0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00554d4:	4a6b      	ldr	r2, [pc, #428]	; (d0055684 <Render3D+0x2c0>)
d00554d6:	7813      	ldrb	r3, [r2, #0]
d00554d8:	7850      	ldrb	r0, [r2, #1]
d00554da:	7891      	ldrb	r1, [r2, #2]
d00554dc:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00554e0:	78d2      	ldrb	r2, [r2, #3]
d00554e2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00554e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00554ea:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d00554ec:	4798      	blx	r3
d00554ee:	2800      	cmp	r0, #0
d00554f0:	f43f af76 	beq.w	d00553e0 <Render3D+0x1c>
d00554f4:	301f      	adds	r0, #31
d00554f6:	4b5f      	ldr	r3, [pc, #380]	; (d0055674 <Render3D+0x2b0>)
d00554f8:	f020 001f 	bic.w	r0, r0, #31
d00554fc:	f100 0260 	add.w	r2, r0, #96	; 0x60
d0055500:	6028      	str	r0, [r5, #0]
d0055502:	601a      	str	r2, [r3, #0]
d0055504:	e76c      	b.n	d00553e0 <Render3D+0x1c>
d0055506:	2a00      	cmp	r2, #0
d0055508:	dddc      	ble.n	d00554c4 <Render3D+0x100>
d005550a:	4c5d      	ldr	r4, [pc, #372]	; (d0055680 <Render3D+0x2bc>)
d005550c:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0055510:	3601      	adds	r6, #1
d0055512:	42ab      	cmp	r3, r5
d0055514:	dc1f      	bgt.n	d0055556 <Render3D+0x192>
d0055516:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d005551a:	42ab      	cmp	r3, r5
d005551c:	db1b      	blt.n	d0055556 <Render3D+0x192>
d005551e:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0055522:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d0055524:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0055526:	8c21      	ldrh	r1, [r4, #32]
d0055528:	9205      	str	r2, [sp, #20]
d005552a:	9304      	str	r3, [sp, #16]
d005552c:	9003      	str	r0, [sp, #12]
d005552e:	9102      	str	r1, [sp, #8]
d0055530:	6963      	ldr	r3, [r4, #20]
d0055532:	9301      	str	r3, [sp, #4]
d0055534:	6923      	ldr	r3, [r4, #16]
d0055536:	9300      	str	r3, [sp, #0]
d0055538:	edd4 1a07 	vldr	s3, [r4, #28]
d005553c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055540:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055544:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055548:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d005554c:	e9d4 0100 	ldrd	r0, r1, [r4]
d0055550:	f7fb f960 	bl	d0050814 <fillTriangleDitherBayer2Mode>
d0055554:	683a      	ldr	r2, [r7, #0]
d0055556:	4296      	cmp	r6, r2
d0055558:	f104 0440 	add.w	r4, r4, #64	; 0x40
d005555c:	dbd6      	blt.n	d005550c <Render3D+0x148>
d005555e:	3501      	adds	r5, #1
d0055560:	2d0a      	cmp	r5, #10
d0055562:	f47f af50 	bne.w	d0055406 <Render3D+0x42>
d0055566:	e7b0      	b.n	d00554ca <Render3D+0x106>
d0055568:	683a      	ldr	r2, [r7, #0]
d005556a:	2a00      	cmp	r2, #0
d005556c:	ddaa      	ble.n	d00554c4 <Render3D+0x100>
d005556e:	4c44      	ldr	r4, [pc, #272]	; (d0055680 <Render3D+0x2bc>)
d0055570:	2600      	movs	r6, #0
d0055572:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0055576:	3601      	adds	r6, #1
d0055578:	42ab      	cmp	r3, r5
d005557a:	dc1f      	bgt.n	d00555bc <Render3D+0x1f8>
d005557c:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d0055580:	42ab      	cmp	r3, r5
d0055582:	db1b      	blt.n	d00555bc <Render3D+0x1f8>
d0055584:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0055588:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d005558a:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d005558c:	8c21      	ldrh	r1, [r4, #32]
d005558e:	9205      	str	r2, [sp, #20]
d0055590:	9304      	str	r3, [sp, #16]
d0055592:	9003      	str	r0, [sp, #12]
d0055594:	9102      	str	r1, [sp, #8]
d0055596:	6963      	ldr	r3, [r4, #20]
d0055598:	9301      	str	r3, [sp, #4]
d005559a:	6923      	ldr	r3, [r4, #16]
d005559c:	9300      	str	r3, [sp, #0]
d005559e:	edd4 1a07 	vldr	s3, [r4, #28]
d00555a2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00555a6:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00555aa:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00555ae:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00555b2:	e9d4 0100 	ldrd	r0, r1, [r4]
d00555b6:	f7f9 f93b 	bl	d004e830 <fillTriangleFlat>
d00555ba:	683a      	ldr	r2, [r7, #0]
d00555bc:	4296      	cmp	r6, r2
d00555be:	f104 0440 	add.w	r4, r4, #64	; 0x40
d00555c2:	dbd6      	blt.n	d0055572 <Render3D+0x1ae>
d00555c4:	3501      	adds	r5, #1
d00555c6:	2d0a      	cmp	r5, #10
d00555c8:	f47f af1d 	bne.w	d0055406 <Render3D+0x42>
d00555cc:	e77d      	b.n	d00554ca <Render3D+0x106>
d00555ce:	683b      	ldr	r3, [r7, #0]
d00555d0:	2b00      	cmp	r3, #0
d00555d2:	f77f af7a 	ble.w	d00554ca <Render3D+0x106>
d00555d6:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d00555da:	4c29      	ldr	r4, [pc, #164]	; (d0055680 <Render3D+0x2bc>)
d00555dc:	2600      	movs	r6, #0
d00555de:	eddf 8a2a 	vldr	s17, [pc, #168]	; d0055688 <Render3D+0x2c4>
d00555e2:	edd4 7a07 	vldr	s15, [r4, #28]
d00555e6:	3601      	adds	r6, #1
d00555e8:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d00555ec:	ee77 7a88 	vadd.f32	s15, s15, s16
d00555f0:	ee07 3a10 	vmov	s14, r3
d00555f4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00555f8:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00555fc:	ee17 1a90 	vmov	r1, s15
d0055600:	eef0 7a48 	vmov.f32	s15, s16
d0055604:	2904      	cmp	r1, #4
d0055606:	eee7 7a28 	vfma.f32	s15, s14, s17
d005560a:	bfa8      	it	ge
d005560c:	2104      	movge	r1, #4
d005560e:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0055612:	b153      	cbz	r3, d005562a <Render3D+0x266>
d0055614:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0055618:	ee17 3a90 	vmov	r3, s15
d005561c:	f1c3 0305 	rsb	r3, r3, #5
d0055620:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0055624:	4299      	cmp	r1, r3
d0055626:	bfa8      	it	ge
d0055628:	4619      	movge	r1, r3
d005562a:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d005562e:	f7f9 f8ef 	bl	d004e810 <shadeColor>
d0055632:	4605      	mov	r5, r0
d0055634:	68e3      	ldr	r3, [r4, #12]
d0055636:	68a2      	ldr	r2, [r4, #8]
d0055638:	6861      	ldr	r1, [r4, #4]
d005563a:	9000      	str	r0, [sp, #0]
d005563c:	6820      	ldr	r0, [r4, #0]
d005563e:	f7f9 f899 	bl	d004e774 <drawLine>
d0055642:	9500      	str	r5, [sp, #0]
d0055644:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0055648:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d005564c:	f7f9 f892 	bl	d004e774 <drawLine>
d0055650:	9500      	str	r5, [sp, #0]
d0055652:	e9d4 2300 	ldrd	r2, r3, [r4]
d0055656:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d005565a:	f7f9 f88b 	bl	d004e774 <drawLine>
d005565e:	683b      	ldr	r3, [r7, #0]
d0055660:	3440      	adds	r4, #64	; 0x40
d0055662:	42b3      	cmp	r3, r6
d0055664:	dcbd      	bgt.n	d00555e2 <Render3D+0x21e>
d0055666:	b008      	add	sp, #32
d0055668:	ecbd 8b02 	vpop	{d8}
d005566c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0055670:	d00673a0 	.word	0xd00673a0
d0055674:	d00673a4 	.word	0xd00673a4
d0055678:	d00693c0 	.word	0xd00693c0
d005567c:	d00e93e4 	.word	0xd00e93e4
d0055680:	d00693e0 	.word	0xd00693e0
d0055684:	2001f000 	.word	0x2001f000
d0055688:	3ca0a0a1 	.word	0x3ca0a0a1
d005568c:	d00673a8 	.word	0xd00673a8
d0055690:	d00e93e0 	.word	0xd00e93e0

d0055694 <sb3dParticlesClear>:
d0055694:	b538      	push	{r3, r4, r5, lr}
d0055696:	f44f 5200 	mov.w	r2, #8192	; 0x2000
d005569a:	2100      	movs	r1, #0
d005569c:	480f      	ldr	r0, [pc, #60]	; (d00556dc <sb3dParticlesClear+0x48>)
d005569e:	2421      	movs	r4, #33	; 0x21
d00556a0:	f000 fd3e 	bl	d0056120 <memset>
d00556a4:	4b0d      	ldr	r3, [pc, #52]	; (d00556dc <sb3dParticlesClear+0x48>)
d00556a6:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d00556aa:	2100      	movs	r1, #0
d00556ac:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d00556b0:	2200      	movs	r2, #0
d00556b2:	7699      	strb	r1, [r3, #26]
d00556b4:	3320      	adds	r3, #32
d00556b6:	f843 2c20 	str.w	r2, [r3, #-32]
d00556ba:	f843 2c1c 	str.w	r2, [r3, #-28]
d00556be:	f843 2c18 	str.w	r2, [r3, #-24]
d00556c2:	f843 0c14 	str.w	r0, [r3, #-20]
d00556c6:	f843 2c10 	str.w	r2, [r3, #-16]
d00556ca:	f843 0c0c 	str.w	r0, [r3, #-12]
d00556ce:	f803 4c08 	strb.w	r4, [r3, #-8]
d00556d2:	f803 1c07 	strb.w	r1, [r3, #-7]
d00556d6:	42ab      	cmp	r3, r5
d00556d8:	d1eb      	bne.n	d00556b2 <sb3dParticlesClear+0x1e>
d00556da:	bd38      	pop	{r3, r4, r5, pc}
d00556dc:	d00673c0 	.word	0xd00673c0

d00556e0 <sb3dParticleSpawnQuad>:
d00556e0:	eef5 1ac0 	vcmpe.f32	s3, #0.0
d00556e4:	eddf 7a20 	vldr	s15, [pc, #128]	; d0055768 <sb3dParticleSpawnQuad+0x88>
d00556e8:	eef1 6a04 	vmov.f32	s13, #20	; 0x40a00000  5.0
d00556ec:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00556f0:	fe82 2a27 	vmaxnm.f32	s4, s4, s15
d00556f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00556f8:	fec2 2aa7 	vmaxnm.f32	s5, s5, s15
d00556fc:	fe82 2a66 	vminnm.f32	s4, s4, s13
d0055700:	b430      	push	{r4, r5}
d0055702:	fec2 2ac7 	vminnm.f32	s5, s5, s14
d0055706:	b084      	sub	sp, #16
d0055708:	4d18      	ldr	r5, [pc, #96]	; (d005576c <sb3dParticleSpawnQuad+0x8c>)
d005570a:	bf98      	it	ls
d005570c:	eef7 1a00 	vmovls.f32	s3, #112	; 0x3f800000  1.0
d0055710:	2400      	movs	r4, #0
d0055712:	462b      	mov	r3, r5
d0055714:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055718:	edcd 0a02 	vstr	s1, [sp, #8]
d005571c:	ed8d 1a03 	vstr	s2, [sp, #12]
d0055720:	e003      	b.n	d005572a <sb3dParticleSpawnQuad+0x4a>
d0055722:	3401      	adds	r4, #1
d0055724:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
d0055728:	d018      	beq.n	d005575c <sb3dParticleSpawnQuad+0x7c>
d005572a:	7e9a      	ldrb	r2, [r3, #26]
d005572c:	3320      	adds	r3, #32
d005572e:	2a00      	cmp	r2, #0
d0055730:	d1f7      	bne.n	d0055722 <sb3dParticleSpawnQuad+0x42>
d0055732:	eb05 1344 	add.w	r3, r5, r4, lsl #5
d0055736:	2201      	movs	r2, #1
d0055738:	769a      	strb	r2, [r3, #26]
d005573a:	aa04      	add	r2, sp, #16
d005573c:	7618      	strb	r0, [r3, #24]
d005573e:	7659      	strb	r1, [r3, #25]
d0055740:	edc3 1a03 	vstr	s3, [r3, #12]
d0055744:	ed83 2a04 	vstr	s4, [r3, #16]
d0055748:	edc3 2a05 	vstr	s5, [r3, #20]
d005574c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0055750:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0055754:	4620      	mov	r0, r4
d0055756:	b004      	add	sp, #16
d0055758:	bc30      	pop	{r4, r5}
d005575a:	4770      	bx	lr
d005575c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0055760:	4620      	mov	r0, r4
d0055762:	b004      	add	sp, #16
d0055764:	bc30      	pop	{r4, r5}
d0055766:	4770      	bx	lr
d0055768:	00000000 	.word	0x00000000
d005576c:	d00673c0 	.word	0xd00673c0

d0055770 <sb3dParticleSetPosition>:
d0055770:	b084      	sub	sp, #16
d0055772:	28ff      	cmp	r0, #255	; 0xff
d0055774:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055778:	edcd 0a02 	vstr	s1, [sp, #8]
d005577c:	ed8d 1a03 	vstr	s2, [sp, #12]
d0055780:	d809      	bhi.n	d0055796 <sb3dParticleSetPosition+0x26>
d0055782:	4b06      	ldr	r3, [pc, #24]	; (d005579c <sb3dParticleSetPosition+0x2c>)
d0055784:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d0055788:	7e9a      	ldrb	r2, [r3, #26]
d005578a:	b122      	cbz	r2, d0055796 <sb3dParticleSetPosition+0x26>
d005578c:	aa04      	add	r2, sp, #16
d005578e:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0055792:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0055796:	b004      	add	sp, #16
d0055798:	4770      	bx	lr
d005579a:	bf00      	nop
d005579c:	d00673c0 	.word	0xd00673c0

d00557a0 <sb3dParticleSetSize>:
d00557a0:	28ff      	cmp	r0, #255	; 0xff
d00557a2:	d80f      	bhi.n	d00557c4 <sb3dParticleSetSize+0x24>
d00557a4:	4b08      	ldr	r3, [pc, #32]	; (d00557c8 <sb3dParticleSetSize+0x28>)
d00557a6:	0141      	lsls	r1, r0, #5
d00557a8:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00557ac:	7e82      	ldrb	r2, [r0, #26]
d00557ae:	b14a      	cbz	r2, d00557c4 <sb3dParticleSetSize+0x24>
d00557b0:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00557b4:	440b      	add	r3, r1
d00557b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00557ba:	bf98      	it	ls
d00557bc:	eeb7 0a00 	vmovls.f32	s0, #112	; 0x3f800000  1.0
d00557c0:	ed83 0a03 	vstr	s0, [r3, #12]
d00557c4:	4770      	bx	lr
d00557c6:	bf00      	nop
d00557c8:	d00673c0 	.word	0xd00673c0

d00557cc <sb3dParticleSetShade>:
d00557cc:	28ff      	cmp	r0, #255	; 0xff
d00557ce:	d80e      	bhi.n	d00557ee <sb3dParticleSetShade+0x22>
d00557d0:	4b07      	ldr	r3, [pc, #28]	; (d00557f0 <sb3dParticleSetShade+0x24>)
d00557d2:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00557d6:	7e83      	ldrb	r3, [r0, #26]
d00557d8:	b14b      	cbz	r3, d00557ee <sb3dParticleSetShade+0x22>
d00557da:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d00557de:	ed9f 7a05 	vldr	s14, [pc, #20]	; d00557f4 <sb3dParticleSetShade+0x28>
d00557e2:	fe80 0a07 	vmaxnm.f32	s0, s0, s14
d00557e6:	fe80 0a67 	vminnm.f32	s0, s0, s15
d00557ea:	ed80 0a04 	vstr	s0, [r0, #16]
d00557ee:	4770      	bx	lr
d00557f0:	d00673c0 	.word	0xd00673c0
d00557f4:	00000000 	.word	0x00000000

d00557f8 <sb3dParticleSetColor>:
d00557f8:	28ff      	cmp	r0, #255	; 0xff
d00557fa:	d805      	bhi.n	d0055808 <sb3dParticleSetColor+0x10>
d00557fc:	4b03      	ldr	r3, [pc, #12]	; (d005580c <sb3dParticleSetColor+0x14>)
d00557fe:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0055802:	7e83      	ldrb	r3, [r0, #26]
d0055804:	b103      	cbz	r3, d0055808 <sb3dParticleSetColor+0x10>
d0055806:	7601      	strb	r1, [r0, #24]
d0055808:	4770      	bx	lr
d005580a:	bf00      	nop
d005580c:	d00673c0 	.word	0xd00673c0

d0055810 <sb3dParticleSetEmission>:
d0055810:	28ff      	cmp	r0, #255	; 0xff
d0055812:	d805      	bhi.n	d0055820 <sb3dParticleSetEmission+0x10>
d0055814:	4b03      	ldr	r3, [pc, #12]	; (d0055824 <sb3dParticleSetEmission+0x14>)
d0055816:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d005581a:	7e83      	ldrb	r3, [r0, #26]
d005581c:	b103      	cbz	r3, d0055820 <sb3dParticleSetEmission+0x10>
d005581e:	7641      	strb	r1, [r0, #25]
d0055820:	4770      	bx	lr
d0055822:	bf00      	nop
d0055824:	d00673c0 	.word	0xd00673c0

d0055828 <freeMesh>:
d0055828:	b1b8      	cbz	r0, d005585a <freeMesh+0x32>
d005582a:	b510      	push	{r4, lr}
d005582c:	4604      	mov	r4, r0
d005582e:	6800      	ldr	r0, [r0, #0]
d0055830:	b108      	cbz	r0, d0055836 <freeMesh+0xe>
d0055832:	f000 fc51 	bl	d00560d8 <free>
d0055836:	6920      	ldr	r0, [r4, #16]
d0055838:	b108      	cbz	r0, d005583e <freeMesh+0x16>
d005583a:	f000 fc4d 	bl	d00560d8 <free>
d005583e:	68a0      	ldr	r0, [r4, #8]
d0055840:	b108      	cbz	r0, d0055846 <freeMesh+0x1e>
d0055842:	f000 fc49 	bl	d00560d8 <free>
d0055846:	2300      	movs	r3, #0
d0055848:	2200      	movs	r2, #0
d005584a:	6023      	str	r3, [r4, #0]
d005584c:	6123      	str	r3, [r4, #16]
d005584e:	60a3      	str	r3, [r4, #8]
d0055850:	6063      	str	r3, [r4, #4]
d0055852:	6163      	str	r3, [r4, #20]
d0055854:	60e3      	str	r3, [r4, #12]
d0055856:	61a2      	str	r2, [r4, #24]
d0055858:	bd10      	pop	{r4, pc}
d005585a:	4770      	bx	lr

d005585c <loadMeshSB3D>:
d005585c:	2800      	cmp	r0, #0
d005585e:	f000 80fe 	beq.w	d0055a5e <loadMeshSB3D+0x202>
d0055862:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0055866:	fab1 f781 	clz	r7, r1
d005586a:	460c      	mov	r4, r1
d005586c:	ed2d 8b02 	vpush	{d8}
d0055870:	097f      	lsrs	r7, r7, #5
d0055872:	b08c      	sub	sp, #48	; 0x30
d0055874:	2900      	cmp	r1, #0
d0055876:	f000 80ec 	beq.w	d0055a52 <loadMeshSB3D+0x1f6>
d005587a:	4e7e      	ldr	r6, [pc, #504]	; (d0055a74 <loadMeshSB3D+0x218>)
d005587c:	4605      	mov	r5, r0
d005587e:	2240      	movs	r2, #64	; 0x40
d0055880:	4639      	mov	r1, r7
d0055882:	4620      	mov	r0, r4
d0055884:	eeb0 8a40 	vmov.f32	s16, s0
d0055888:	f000 fc4a 	bl	d0056120 <memset>
d005588c:	7933      	ldrb	r3, [r6, #4]
d005588e:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055892:	4629      	mov	r1, r5
d0055894:	79b2      	ldrb	r2, [r6, #6]
d0055896:	4638      	mov	r0, r7
d0055898:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d005589c:	79f5      	ldrb	r5, [r6, #7]
d005589e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00558a2:	2201      	movs	r2, #1
d00558a4:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00558a8:	681b      	ldr	r3, [r3, #0]
d00558aa:	681b      	ldr	r3, [r3, #0]
d00558ac:	4798      	blx	r3
d00558ae:	2800      	cmp	r0, #0
d00558b0:	f040 80cf 	bne.w	d0055a52 <loadMeshSB3D+0x1f6>
d00558b4:	f896 c004 	ldrb.w	ip, [r6, #4]
d00558b8:	2204      	movs	r2, #4
d00558ba:	7971      	ldrb	r1, [r6, #5]
d00558bc:	ab02      	add	r3, sp, #8
d00558be:	79b7      	ldrb	r7, [r6, #6]
d00558c0:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00558c4:	79f5      	ldrb	r5, [r6, #7]
d00558c6:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00558ca:	a903      	add	r1, sp, #12
d00558cc:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d00558d0:	682d      	ldr	r5, [r5, #0]
d00558d2:	68ad      	ldr	r5, [r5, #8]
d00558d4:	47a8      	blx	r5
d00558d6:	2800      	cmp	r0, #0
d00558d8:	f040 80b8 	bne.w	d0055a4c <loadMeshSB3D+0x1f0>
d00558dc:	9a02      	ldr	r2, [sp, #8]
d00558de:	2a04      	cmp	r2, #4
d00558e0:	f040 80b4 	bne.w	d0055a4c <loadMeshSB3D+0x1f0>
d00558e4:	4b64      	ldr	r3, [pc, #400]	; (d0055a78 <loadMeshSB3D+0x21c>)
d00558e6:	9903      	ldr	r1, [sp, #12]
d00558e8:	4299      	cmp	r1, r3
d00558ea:	f040 80af 	bne.w	d0055a4c <loadMeshSB3D+0x1f0>
d00558ee:	7931      	ldrb	r1, [r6, #4]
d00558f0:	ab02      	add	r3, sp, #8
d00558f2:	7975      	ldrb	r5, [r6, #5]
d00558f4:	79b7      	ldrb	r7, [r6, #6]
d00558f6:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d00558fa:	79f5      	ldrb	r5, [r6, #7]
d00558fc:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0055900:	a904      	add	r1, sp, #16
d0055902:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0055906:	682d      	ldr	r5, [r5, #0]
d0055908:	68ad      	ldr	r5, [r5, #8]
d005590a:	47a8      	blx	r5
d005590c:	2800      	cmp	r0, #0
d005590e:	f040 809d 	bne.w	d0055a4c <loadMeshSB3D+0x1f0>
d0055912:	9a02      	ldr	r2, [sp, #8]
d0055914:	2a04      	cmp	r2, #4
d0055916:	f040 8099 	bne.w	d0055a4c <loadMeshSB3D+0x1f0>
d005591a:	9b04      	ldr	r3, [sp, #16]
d005591c:	2b05      	cmp	r3, #5
d005591e:	f040 8095 	bne.w	d0055a4c <loadMeshSB3D+0x1f0>
d0055922:	7931      	ldrb	r1, [r6, #4]
d0055924:	ab02      	add	r3, sp, #8
d0055926:	7975      	ldrb	r5, [r6, #5]
d0055928:	79b7      	ldrb	r7, [r6, #6]
d005592a:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d005592e:	79f5      	ldrb	r5, [r6, #7]
d0055930:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0055934:	a905      	add	r1, sp, #20
d0055936:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d005593a:	682d      	ldr	r5, [r5, #0]
d005593c:	68ad      	ldr	r5, [r5, #8]
d005593e:	47a8      	blx	r5
d0055940:	2800      	cmp	r0, #0
d0055942:	f040 8083 	bne.w	d0055a4c <loadMeshSB3D+0x1f0>
d0055946:	9a02      	ldr	r2, [sp, #8]
d0055948:	2a04      	cmp	r2, #4
d005594a:	d17f      	bne.n	d0055a4c <loadMeshSB3D+0x1f0>
d005594c:	7930      	ldrb	r0, [r6, #4]
d005594e:	ab02      	add	r3, sp, #8
d0055950:	7975      	ldrb	r5, [r6, #5]
d0055952:	a906      	add	r1, sp, #24
d0055954:	79b7      	ldrb	r7, [r6, #6]
d0055956:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d005595a:	79f5      	ldrb	r5, [r6, #7]
d005595c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0055960:	2000      	movs	r0, #0
d0055962:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0055966:	682d      	ldr	r5, [r5, #0]
d0055968:	68ad      	ldr	r5, [r5, #8]
d005596a:	47a8      	blx	r5
d005596c:	4605      	mov	r5, r0
d005596e:	2800      	cmp	r0, #0
d0055970:	d16c      	bne.n	d0055a4c <loadMeshSB3D+0x1f0>
d0055972:	9b02      	ldr	r3, [sp, #8]
d0055974:	2b04      	cmp	r3, #4
d0055976:	d169      	bne.n	d0055a4c <loadMeshSB3D+0x1f0>
d0055978:	9b05      	ldr	r3, [sp, #20]
d005597a:	2b00      	cmp	r3, #0
d005597c:	d066      	beq.n	d0055a4c <loadMeshSB3D+0x1f0>
d005597e:	9f06      	ldr	r7, [sp, #24]
d0055980:	2f00      	cmp	r7, #0
d0055982:	d063      	beq.n	d0055a4c <loadMeshSB3D+0x1f0>
d0055984:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0055988:	6063      	str	r3, [r4, #4]
d005598a:	6167      	str	r7, [r4, #20]
d005598c:	0080      	lsls	r0, r0, #2
d005598e:	60e5      	str	r5, [r4, #12]
d0055990:	f000 fb9a 	bl	d00560c8 <malloc>
d0055994:	4603      	mov	r3, r0
d0055996:	0138      	lsls	r0, r7, #4
d0055998:	6023      	str	r3, [r4, #0]
d005599a:	461f      	mov	r7, r3
d005599c:	f000 fb94 	bl	d00560c8 <malloc>
d00559a0:	60a5      	str	r5, [r4, #8]
d00559a2:	6120      	str	r0, [r4, #16]
d00559a4:	2800      	cmp	r0, #0
d00559a6:	d05c      	beq.n	d0055a62 <loadMeshSB3D+0x206>
d00559a8:	fab7 f887 	clz	r8, r7
d00559ac:	ea4f 1858 	mov.w	r8, r8, lsr #5
d00559b0:	b9df      	cbnz	r7, d00559ea <loadMeshSB3D+0x18e>
d00559b2:	e056      	b.n	d0055a62 <loadMeshSB3D+0x206>
d00559b4:	9b02      	ldr	r3, [sp, #8]
d00559b6:	2b0c      	cmp	r3, #12
d00559b8:	d12e      	bne.n	d0055a18 <loadMeshSB3D+0x1bc>
d00559ba:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d00559be:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d00559c2:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d00559c6:	ee66 6a88 	vmul.f32	s13, s13, s16
d00559ca:	6823      	ldr	r3, [r4, #0]
d00559cc:	ee27 7a08 	vmul.f32	s14, s14, s16
d00559d0:	9905      	ldr	r1, [sp, #20]
d00559d2:	ee67 7a88 	vmul.f32	s15, s15, s16
d00559d6:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d00559da:	4541      	cmp	r1, r8
d00559dc:	edc3 6a00 	vstr	s13, [r3]
d00559e0:	ed83 7a01 	vstr	s14, [r3, #4]
d00559e4:	edc3 7a02 	vstr	s15, [r3, #8]
d00559e8:	d948      	bls.n	d0055a7c <loadMeshSB3D+0x220>
d00559ea:	7930      	ldrb	r0, [r6, #4]
d00559ec:	220c      	movs	r2, #12
d00559ee:	7975      	ldrb	r5, [r6, #5]
d00559f0:	ab02      	add	r3, sp, #8
d00559f2:	79b7      	ldrb	r7, [r6, #6]
d00559f4:	a909      	add	r1, sp, #36	; 0x24
d00559f6:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d00559fa:	79f5      	ldrb	r5, [r6, #7]
d00559fc:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0055a00:	2000      	movs	r0, #0
d0055a02:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0055a06:	682d      	ldr	r5, [r5, #0]
d0055a08:	68ad      	ldr	r5, [r5, #8]
d0055a0a:	47a8      	blx	r5
d0055a0c:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0055a10:	f108 0801 	add.w	r8, r8, #1
d0055a14:	2800      	cmp	r0, #0
d0055a16:	d0cd      	beq.n	d00559b4 <loadMeshSB3D+0x158>
d0055a18:	6820      	ldr	r0, [r4, #0]
d0055a1a:	b108      	cbz	r0, d0055a20 <loadMeshSB3D+0x1c4>
d0055a1c:	f000 fb5c 	bl	d00560d8 <free>
d0055a20:	6920      	ldr	r0, [r4, #16]
d0055a22:	b108      	cbz	r0, d0055a28 <loadMeshSB3D+0x1cc>
d0055a24:	f000 fb58 	bl	d00560d8 <free>
d0055a28:	68a0      	ldr	r0, [r4, #8]
d0055a2a:	b108      	cbz	r0, d0055a30 <loadMeshSB3D+0x1d4>
d0055a2c:	f000 fb54 	bl	d00560d8 <free>
d0055a30:	2500      	movs	r5, #0
d0055a32:	2300      	movs	r3, #0
d0055a34:	4628      	mov	r0, r5
d0055a36:	6025      	str	r5, [r4, #0]
d0055a38:	6125      	str	r5, [r4, #16]
d0055a3a:	60a5      	str	r5, [r4, #8]
d0055a3c:	6065      	str	r5, [r4, #4]
d0055a3e:	6165      	str	r5, [r4, #20]
d0055a40:	60e5      	str	r5, [r4, #12]
d0055a42:	61a3      	str	r3, [r4, #24]
d0055a44:	f000 f97c 	bl	d0055d40 <fclose>
d0055a48:	4628      	mov	r0, r5
d0055a4a:	e003      	b.n	d0055a54 <loadMeshSB3D+0x1f8>
d0055a4c:	2000      	movs	r0, #0
d0055a4e:	f000 f977 	bl	d0055d40 <fclose>
d0055a52:	2000      	movs	r0, #0
d0055a54:	b00c      	add	sp, #48	; 0x30
d0055a56:	ecbd 8b02 	vpop	{d8}
d0055a5a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0055a5e:	2000      	movs	r0, #0
d0055a60:	4770      	bx	lr
d0055a62:	4620      	mov	r0, r4
d0055a64:	f7ff fee0 	bl	d0055828 <freeMesh>
d0055a68:	2000      	movs	r0, #0
d0055a6a:	f000 f969 	bl	d0055d40 <fclose>
d0055a6e:	2000      	movs	r0, #0
d0055a70:	e7f0      	b.n	d0055a54 <loadMeshSB3D+0x1f8>
d0055a72:	bf00      	nop
d0055a74:	2001f000 	.word	0x2001f000
d0055a78:	44334253 	.word	0x44334253
d0055a7c:	9b06      	ldr	r3, [sp, #24]
d0055a7e:	2b00      	cmp	r3, #0
d0055a80:	f000 80de 	beq.w	d0055c40 <loadMeshSB3D+0x3e4>
d0055a84:	4605      	mov	r5, r0
d0055a86:	7937      	ldrb	r7, [r6, #4]
d0055a88:	ab02      	add	r3, sp, #8
d0055a8a:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055a8e:	2204      	movs	r2, #4
d0055a90:	79b0      	ldrb	r0, [r6, #6]
d0055a92:	a907      	add	r1, sp, #28
d0055a94:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0055a98:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055a9c:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0055aa0:	2000      	movs	r0, #0
d0055aa2:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055aa6:	683f      	ldr	r7, [r7, #0]
d0055aa8:	68bf      	ldr	r7, [r7, #8]
d0055aaa:	47b8      	blx	r7
d0055aac:	2800      	cmp	r0, #0
d0055aae:	d1d8      	bne.n	d0055a62 <loadMeshSB3D+0x206>
d0055ab0:	9a02      	ldr	r2, [sp, #8]
d0055ab2:	2a04      	cmp	r2, #4
d0055ab4:	d1d5      	bne.n	d0055a62 <loadMeshSB3D+0x206>
d0055ab6:	7931      	ldrb	r1, [r6, #4]
d0055ab8:	ab02      	add	r3, sp, #8
d0055aba:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055abe:	f896 e006 	ldrb.w	lr, [r6, #6]
d0055ac2:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0055ac6:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055aca:	a908      	add	r1, sp, #32
d0055acc:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0055ad0:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055ad4:	683f      	ldr	r7, [r7, #0]
d0055ad6:	68bf      	ldr	r7, [r7, #8]
d0055ad8:	47b8      	blx	r7
d0055ada:	2800      	cmp	r0, #0
d0055adc:	d1c1      	bne.n	d0055a62 <loadMeshSB3D+0x206>
d0055ade:	9a02      	ldr	r2, [sp, #8]
d0055ae0:	2a04      	cmp	r2, #4
d0055ae2:	d1be      	bne.n	d0055a62 <loadMeshSB3D+0x206>
d0055ae4:	7931      	ldrb	r1, [r6, #4]
d0055ae6:	ab02      	add	r3, sp, #8
d0055ae8:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055aec:	f896 e006 	ldrb.w	lr, [r6, #6]
d0055af0:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0055af4:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055af8:	a909      	add	r1, sp, #36	; 0x24
d0055afa:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0055afe:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055b02:	683f      	ldr	r7, [r7, #0]
d0055b04:	68bf      	ldr	r7, [r7, #8]
d0055b06:	47b8      	blx	r7
d0055b08:	2800      	cmp	r0, #0
d0055b0a:	d1aa      	bne.n	d0055a62 <loadMeshSB3D+0x206>
d0055b0c:	9b02      	ldr	r3, [sp, #8]
d0055b0e:	2b04      	cmp	r3, #4
d0055b10:	d1a7      	bne.n	d0055a62 <loadMeshSB3D+0x206>
d0055b12:	7937      	ldrb	r7, [r6, #4]
d0055b14:	ab02      	add	r3, sp, #8
d0055b16:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055b1a:	2201      	movs	r2, #1
d0055b1c:	79b1      	ldrb	r1, [r6, #6]
d0055b1e:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0055b22:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055b26:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d0055b2a:	a901      	add	r1, sp, #4
d0055b2c:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055b30:	683f      	ldr	r7, [r7, #0]
d0055b32:	68bf      	ldr	r7, [r7, #8]
d0055b34:	47b8      	blx	r7
d0055b36:	2800      	cmp	r0, #0
d0055b38:	d193      	bne.n	d0055a62 <loadMeshSB3D+0x206>
d0055b3a:	9a02      	ldr	r2, [sp, #8]
d0055b3c:	2a01      	cmp	r2, #1
d0055b3e:	d190      	bne.n	d0055a62 <loadMeshSB3D+0x206>
d0055b40:	7931      	ldrb	r1, [r6, #4]
d0055b42:	ab02      	add	r3, sp, #8
d0055b44:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055b48:	f896 e006 	ldrb.w	lr, [r6, #6]
d0055b4c:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0055b50:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055b54:	f10d 0105 	add.w	r1, sp, #5
d0055b58:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0055b5c:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055b60:	683f      	ldr	r7, [r7, #0]
d0055b62:	68bf      	ldr	r7, [r7, #8]
d0055b64:	47b8      	blx	r7
d0055b66:	2800      	cmp	r0, #0
d0055b68:	f47f af7b 	bne.w	d0055a62 <loadMeshSB3D+0x206>
d0055b6c:	9b02      	ldr	r3, [sp, #8]
d0055b6e:	2b01      	cmp	r3, #1
d0055b70:	f47f af77 	bne.w	d0055a62 <loadMeshSB3D+0x206>
d0055b74:	7937      	ldrb	r7, [r6, #4]
d0055b76:	ab02      	add	r3, sp, #8
d0055b78:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055b7c:	2201      	movs	r2, #1
d0055b7e:	79b0      	ldrb	r0, [r6, #6]
d0055b80:	f10d 0106 	add.w	r1, sp, #6
d0055b84:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0055b88:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055b8c:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0055b90:	2000      	movs	r0, #0
d0055b92:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055b96:	683f      	ldr	r7, [r7, #0]
d0055b98:	68bf      	ldr	r7, [r7, #8]
d0055b9a:	47b8      	blx	r7
d0055b9c:	2800      	cmp	r0, #0
d0055b9e:	f47f af60 	bne.w	d0055a62 <loadMeshSB3D+0x206>
d0055ba2:	9a02      	ldr	r2, [sp, #8]
d0055ba4:	2a01      	cmp	r2, #1
d0055ba6:	f47f af5c 	bne.w	d0055a62 <loadMeshSB3D+0x206>
d0055baa:	7931      	ldrb	r1, [r6, #4]
d0055bac:	ab02      	add	r3, sp, #8
d0055bae:	f896 c005 	ldrb.w	ip, [r6, #5]
d0055bb2:	f896 e006 	ldrb.w	lr, [r6, #6]
d0055bb6:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0055bba:	f896 c007 	ldrb.w	ip, [r6, #7]
d0055bbe:	f10d 0107 	add.w	r1, sp, #7
d0055bc2:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0055bc6:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0055bca:	683f      	ldr	r7, [r7, #0]
d0055bcc:	68bf      	ldr	r7, [r7, #8]
d0055bce:	47b8      	blx	r7
d0055bd0:	2800      	cmp	r0, #0
d0055bd2:	f47f af46 	bne.w	d0055a62 <loadMeshSB3D+0x206>
d0055bd6:	9b02      	ldr	r3, [sp, #8]
d0055bd8:	2b01      	cmp	r3, #1
d0055bda:	f47f af42 	bne.w	d0055a62 <loadMeshSB3D+0x206>
d0055bde:	9907      	ldr	r1, [sp, #28]
d0055be0:	9b05      	ldr	r3, [sp, #20]
d0055be2:	4299      	cmp	r1, r3
d0055be4:	f4bf af3d 	bcs.w	d0055a62 <loadMeshSB3D+0x206>
d0055be8:	f8dd c020 	ldr.w	ip, [sp, #32]
d0055bec:	4563      	cmp	r3, ip
d0055bee:	f67f af38 	bls.w	d0055a62 <loadMeshSB3D+0x206>
d0055bf2:	9f09      	ldr	r7, [sp, #36]	; 0x24
d0055bf4:	42bb      	cmp	r3, r7
d0055bf6:	f67f af34 	bls.w	d0055a62 <loadMeshSB3D+0x206>
d0055bfa:	6922      	ldr	r2, [r4, #16]
d0055bfc:	ea4f 1e05 	mov.w	lr, r5, lsl #4
d0055c00:	4603      	mov	r3, r0
d0055c02:	9806      	ldr	r0, [sp, #24]
d0055c04:	f842 100e 	str.w	r1, [r2, lr]
d0055c08:	eb02 1205 	add.w	r2, r2, r5, lsl #4
d0055c0c:	f89d 1004 	ldrb.w	r1, [sp, #4]
d0055c10:	3501      	adds	r5, #1
d0055c12:	f8c2 c004 	str.w	ip, [r2, #4]
d0055c16:	f001 010f 	and.w	r1, r1, #15
d0055c1a:	f89d c005 	ldrb.w	ip, [sp, #5]
d0055c1e:	6097      	str	r7, [r2, #8]
d0055c20:	42a8      	cmp	r0, r5
d0055c22:	f361 0307 	bfi	r3, r1, #0, #8
d0055c26:	f89d 7006 	ldrb.w	r7, [sp, #6]
d0055c2a:	f89d 1007 	ldrb.w	r1, [sp, #7]
d0055c2e:	f36c 230f 	bfi	r3, ip, #8, #8
d0055c32:	f367 4317 	bfi	r3, r7, #16, #8
d0055c36:	f361 631f 	bfi	r3, r1, #24, #8
d0055c3a:	60d3      	str	r3, [r2, #12]
d0055c3c:	f63f af23 	bhi.w	d0055a86 <loadMeshSB3D+0x22a>
d0055c40:	2000      	movs	r0, #0
d0055c42:	f000 f87d 	bl	d0055d40 <fclose>
d0055c46:	4620      	mov	r0, r4
d0055c48:	f7fc fbd6 	bl	d00523f8 <meshComputeBoundsRadius>
d0055c4c:	4620      	mov	r0, r4
d0055c4e:	ed84 0a06 	vstr	s0, [r4, #24]
d0055c52:	f7f8 fd1f 	bl	d004e694 <meshSetDefaultMaterial>
d0055c56:	2001      	movs	r0, #1
d0055c58:	e6fc      	b.n	d0055a54 <loadMeshSB3D+0x1f8>
d0055c5a:	bf00      	nop

d0055c5c <__errno>:
d0055c5c:	4b01      	ldr	r3, [pc, #4]	; (d0055c64 <__errno+0x8>)
d0055c5e:	6818      	ldr	r0, [r3, #0]
d0055c60:	4770      	bx	lr
d0055c62:	bf00      	nop
d0055c64:	d005aed4 	.word	0xd005aed4

d0055c68 <_fclose_r>:
d0055c68:	b570      	push	{r4, r5, r6, lr}
d0055c6a:	4605      	mov	r5, r0
d0055c6c:	460c      	mov	r4, r1
d0055c6e:	b911      	cbnz	r1, d0055c76 <_fclose_r+0xe>
d0055c70:	2600      	movs	r6, #0
d0055c72:	4630      	mov	r0, r6
d0055c74:	bd70      	pop	{r4, r5, r6, pc}
d0055c76:	b118      	cbz	r0, d0055c80 <_fclose_r+0x18>
d0055c78:	6983      	ldr	r3, [r0, #24]
d0055c7a:	b90b      	cbnz	r3, d0055c80 <_fclose_r+0x18>
d0055c7c:	f000 f982 	bl	d0055f84 <__sinit>
d0055c80:	4b2c      	ldr	r3, [pc, #176]	; (d0055d34 <_fclose_r+0xcc>)
d0055c82:	429c      	cmp	r4, r3
d0055c84:	d114      	bne.n	d0055cb0 <_fclose_r+0x48>
d0055c86:	686c      	ldr	r4, [r5, #4]
d0055c88:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0055c8a:	07d8      	lsls	r0, r3, #31
d0055c8c:	d405      	bmi.n	d0055c9a <_fclose_r+0x32>
d0055c8e:	89a3      	ldrh	r3, [r4, #12]
d0055c90:	0599      	lsls	r1, r3, #22
d0055c92:	d402      	bmi.n	d0055c9a <_fclose_r+0x32>
d0055c94:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055c96:	f000 fa14 	bl	d00560c2 <__retarget_lock_acquire_recursive>
d0055c9a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055c9e:	b98b      	cbnz	r3, d0055cc4 <_fclose_r+0x5c>
d0055ca0:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0055ca2:	f016 0601 	ands.w	r6, r6, #1
d0055ca6:	d1e3      	bne.n	d0055c70 <_fclose_r+0x8>
d0055ca8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055caa:	f000 fa0b 	bl	d00560c4 <__retarget_lock_release_recursive>
d0055cae:	e7e0      	b.n	d0055c72 <_fclose_r+0xa>
d0055cb0:	4b21      	ldr	r3, [pc, #132]	; (d0055d38 <_fclose_r+0xd0>)
d0055cb2:	429c      	cmp	r4, r3
d0055cb4:	d101      	bne.n	d0055cba <_fclose_r+0x52>
d0055cb6:	68ac      	ldr	r4, [r5, #8]
d0055cb8:	e7e6      	b.n	d0055c88 <_fclose_r+0x20>
d0055cba:	4b20      	ldr	r3, [pc, #128]	; (d0055d3c <_fclose_r+0xd4>)
d0055cbc:	429c      	cmp	r4, r3
d0055cbe:	bf08      	it	eq
d0055cc0:	68ec      	ldreq	r4, [r5, #12]
d0055cc2:	e7e1      	b.n	d0055c88 <_fclose_r+0x20>
d0055cc4:	4621      	mov	r1, r4
d0055cc6:	4628      	mov	r0, r5
d0055cc8:	f000 f842 	bl	d0055d50 <__sflush_r>
d0055ccc:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0055cce:	4606      	mov	r6, r0
d0055cd0:	b133      	cbz	r3, d0055ce0 <_fclose_r+0x78>
d0055cd2:	6a21      	ldr	r1, [r4, #32]
d0055cd4:	4628      	mov	r0, r5
d0055cd6:	4798      	blx	r3
d0055cd8:	2800      	cmp	r0, #0
d0055cda:	bfb8      	it	lt
d0055cdc:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0055ce0:	89a3      	ldrh	r3, [r4, #12]
d0055ce2:	061a      	lsls	r2, r3, #24
d0055ce4:	d503      	bpl.n	d0055cee <_fclose_r+0x86>
d0055ce6:	6921      	ldr	r1, [r4, #16]
d0055ce8:	4628      	mov	r0, r5
d0055cea:	f000 fa21 	bl	d0056130 <_free_r>
d0055cee:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0055cf0:	b141      	cbz	r1, d0055d04 <_fclose_r+0x9c>
d0055cf2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0055cf6:	4299      	cmp	r1, r3
d0055cf8:	d002      	beq.n	d0055d00 <_fclose_r+0x98>
d0055cfa:	4628      	mov	r0, r5
d0055cfc:	f000 fa18 	bl	d0056130 <_free_r>
d0055d00:	2300      	movs	r3, #0
d0055d02:	6363      	str	r3, [r4, #52]	; 0x34
d0055d04:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0055d06:	b121      	cbz	r1, d0055d12 <_fclose_r+0xaa>
d0055d08:	4628      	mov	r0, r5
d0055d0a:	f000 fa11 	bl	d0056130 <_free_r>
d0055d0e:	2300      	movs	r3, #0
d0055d10:	64a3      	str	r3, [r4, #72]	; 0x48
d0055d12:	f000 f91f 	bl	d0055f54 <__sfp_lock_acquire>
d0055d16:	2300      	movs	r3, #0
d0055d18:	81a3      	strh	r3, [r4, #12]
d0055d1a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0055d1c:	07db      	lsls	r3, r3, #31
d0055d1e:	d402      	bmi.n	d0055d26 <_fclose_r+0xbe>
d0055d20:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055d22:	f000 f9cf 	bl	d00560c4 <__retarget_lock_release_recursive>
d0055d26:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055d28:	f000 f9ca 	bl	d00560c0 <__retarget_lock_close_recursive>
d0055d2c:	f000 f918 	bl	d0055f60 <__sfp_lock_release>
d0055d30:	e79f      	b.n	d0055c72 <_fclose_r+0xa>
d0055d32:	bf00      	nop
d0055d34:	d0058568 	.word	0xd0058568
d0055d38:	d0058588 	.word	0xd0058588
d0055d3c:	d0058548 	.word	0xd0058548

d0055d40 <fclose>:
d0055d40:	4b02      	ldr	r3, [pc, #8]	; (d0055d4c <fclose+0xc>)
d0055d42:	4601      	mov	r1, r0
d0055d44:	6818      	ldr	r0, [r3, #0]
d0055d46:	f7ff bf8f 	b.w	d0055c68 <_fclose_r>
d0055d4a:	bf00      	nop
d0055d4c:	d005aed4 	.word	0xd005aed4

d0055d50 <__sflush_r>:
d0055d50:	898a      	ldrh	r2, [r1, #12]
d0055d52:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0055d56:	4605      	mov	r5, r0
d0055d58:	0710      	lsls	r0, r2, #28
d0055d5a:	460c      	mov	r4, r1
d0055d5c:	d458      	bmi.n	d0055e10 <__sflush_r+0xc0>
d0055d5e:	684b      	ldr	r3, [r1, #4]
d0055d60:	2b00      	cmp	r3, #0
d0055d62:	dc05      	bgt.n	d0055d70 <__sflush_r+0x20>
d0055d64:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0055d66:	2b00      	cmp	r3, #0
d0055d68:	dc02      	bgt.n	d0055d70 <__sflush_r+0x20>
d0055d6a:	2000      	movs	r0, #0
d0055d6c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0055d70:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0055d72:	2e00      	cmp	r6, #0
d0055d74:	d0f9      	beq.n	d0055d6a <__sflush_r+0x1a>
d0055d76:	2300      	movs	r3, #0
d0055d78:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0055d7c:	682f      	ldr	r7, [r5, #0]
d0055d7e:	602b      	str	r3, [r5, #0]
d0055d80:	d032      	beq.n	d0055de8 <__sflush_r+0x98>
d0055d82:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0055d84:	89a3      	ldrh	r3, [r4, #12]
d0055d86:	075a      	lsls	r2, r3, #29
d0055d88:	d505      	bpl.n	d0055d96 <__sflush_r+0x46>
d0055d8a:	6863      	ldr	r3, [r4, #4]
d0055d8c:	1ac0      	subs	r0, r0, r3
d0055d8e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0055d90:	b10b      	cbz	r3, d0055d96 <__sflush_r+0x46>
d0055d92:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0055d94:	1ac0      	subs	r0, r0, r3
d0055d96:	2300      	movs	r3, #0
d0055d98:	4602      	mov	r2, r0
d0055d9a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0055d9c:	6a21      	ldr	r1, [r4, #32]
d0055d9e:	4628      	mov	r0, r5
d0055da0:	47b0      	blx	r6
d0055da2:	1c43      	adds	r3, r0, #1
d0055da4:	89a3      	ldrh	r3, [r4, #12]
d0055da6:	d106      	bne.n	d0055db6 <__sflush_r+0x66>
d0055da8:	6829      	ldr	r1, [r5, #0]
d0055daa:	291d      	cmp	r1, #29
d0055dac:	d82c      	bhi.n	d0055e08 <__sflush_r+0xb8>
d0055dae:	4a2a      	ldr	r2, [pc, #168]	; (d0055e58 <__sflush_r+0x108>)
d0055db0:	40ca      	lsrs	r2, r1
d0055db2:	07d6      	lsls	r6, r2, #31
d0055db4:	d528      	bpl.n	d0055e08 <__sflush_r+0xb8>
d0055db6:	2200      	movs	r2, #0
d0055db8:	6062      	str	r2, [r4, #4]
d0055dba:	04d9      	lsls	r1, r3, #19
d0055dbc:	6922      	ldr	r2, [r4, #16]
d0055dbe:	6022      	str	r2, [r4, #0]
d0055dc0:	d504      	bpl.n	d0055dcc <__sflush_r+0x7c>
d0055dc2:	1c42      	adds	r2, r0, #1
d0055dc4:	d101      	bne.n	d0055dca <__sflush_r+0x7a>
d0055dc6:	682b      	ldr	r3, [r5, #0]
d0055dc8:	b903      	cbnz	r3, d0055dcc <__sflush_r+0x7c>
d0055dca:	6560      	str	r0, [r4, #84]	; 0x54
d0055dcc:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0055dce:	602f      	str	r7, [r5, #0]
d0055dd0:	2900      	cmp	r1, #0
d0055dd2:	d0ca      	beq.n	d0055d6a <__sflush_r+0x1a>
d0055dd4:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0055dd8:	4299      	cmp	r1, r3
d0055dda:	d002      	beq.n	d0055de2 <__sflush_r+0x92>
d0055ddc:	4628      	mov	r0, r5
d0055dde:	f000 f9a7 	bl	d0056130 <_free_r>
d0055de2:	2000      	movs	r0, #0
d0055de4:	6360      	str	r0, [r4, #52]	; 0x34
d0055de6:	e7c1      	b.n	d0055d6c <__sflush_r+0x1c>
d0055de8:	6a21      	ldr	r1, [r4, #32]
d0055dea:	2301      	movs	r3, #1
d0055dec:	4628      	mov	r0, r5
d0055dee:	47b0      	blx	r6
d0055df0:	1c41      	adds	r1, r0, #1
d0055df2:	d1c7      	bne.n	d0055d84 <__sflush_r+0x34>
d0055df4:	682b      	ldr	r3, [r5, #0]
d0055df6:	2b00      	cmp	r3, #0
d0055df8:	d0c4      	beq.n	d0055d84 <__sflush_r+0x34>
d0055dfa:	2b1d      	cmp	r3, #29
d0055dfc:	d001      	beq.n	d0055e02 <__sflush_r+0xb2>
d0055dfe:	2b16      	cmp	r3, #22
d0055e00:	d101      	bne.n	d0055e06 <__sflush_r+0xb6>
d0055e02:	602f      	str	r7, [r5, #0]
d0055e04:	e7b1      	b.n	d0055d6a <__sflush_r+0x1a>
d0055e06:	89a3      	ldrh	r3, [r4, #12]
d0055e08:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055e0c:	81a3      	strh	r3, [r4, #12]
d0055e0e:	e7ad      	b.n	d0055d6c <__sflush_r+0x1c>
d0055e10:	690f      	ldr	r7, [r1, #16]
d0055e12:	2f00      	cmp	r7, #0
d0055e14:	d0a9      	beq.n	d0055d6a <__sflush_r+0x1a>
d0055e16:	0793      	lsls	r3, r2, #30
d0055e18:	680e      	ldr	r6, [r1, #0]
d0055e1a:	bf08      	it	eq
d0055e1c:	694b      	ldreq	r3, [r1, #20]
d0055e1e:	600f      	str	r7, [r1, #0]
d0055e20:	bf18      	it	ne
d0055e22:	2300      	movne	r3, #0
d0055e24:	eba6 0807 	sub.w	r8, r6, r7
d0055e28:	608b      	str	r3, [r1, #8]
d0055e2a:	f1b8 0f00 	cmp.w	r8, #0
d0055e2e:	dd9c      	ble.n	d0055d6a <__sflush_r+0x1a>
d0055e30:	6a21      	ldr	r1, [r4, #32]
d0055e32:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0055e34:	4643      	mov	r3, r8
d0055e36:	463a      	mov	r2, r7
d0055e38:	4628      	mov	r0, r5
d0055e3a:	47b0      	blx	r6
d0055e3c:	2800      	cmp	r0, #0
d0055e3e:	dc06      	bgt.n	d0055e4e <__sflush_r+0xfe>
d0055e40:	89a3      	ldrh	r3, [r4, #12]
d0055e42:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0055e46:	81a3      	strh	r3, [r4, #12]
d0055e48:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0055e4c:	e78e      	b.n	d0055d6c <__sflush_r+0x1c>
d0055e4e:	4407      	add	r7, r0
d0055e50:	eba8 0800 	sub.w	r8, r8, r0
d0055e54:	e7e9      	b.n	d0055e2a <__sflush_r+0xda>
d0055e56:	bf00      	nop
d0055e58:	20400001 	.word	0x20400001

d0055e5c <_fflush_r>:
d0055e5c:	b538      	push	{r3, r4, r5, lr}
d0055e5e:	690b      	ldr	r3, [r1, #16]
d0055e60:	4605      	mov	r5, r0
d0055e62:	460c      	mov	r4, r1
d0055e64:	b913      	cbnz	r3, d0055e6c <_fflush_r+0x10>
d0055e66:	2500      	movs	r5, #0
d0055e68:	4628      	mov	r0, r5
d0055e6a:	bd38      	pop	{r3, r4, r5, pc}
d0055e6c:	b118      	cbz	r0, d0055e76 <_fflush_r+0x1a>
d0055e6e:	6983      	ldr	r3, [r0, #24]
d0055e70:	b90b      	cbnz	r3, d0055e76 <_fflush_r+0x1a>
d0055e72:	f000 f887 	bl	d0055f84 <__sinit>
d0055e76:	4b14      	ldr	r3, [pc, #80]	; (d0055ec8 <_fflush_r+0x6c>)
d0055e78:	429c      	cmp	r4, r3
d0055e7a:	d11b      	bne.n	d0055eb4 <_fflush_r+0x58>
d0055e7c:	686c      	ldr	r4, [r5, #4]
d0055e7e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0055e82:	2b00      	cmp	r3, #0
d0055e84:	d0ef      	beq.n	d0055e66 <_fflush_r+0xa>
d0055e86:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0055e88:	07d0      	lsls	r0, r2, #31
d0055e8a:	d404      	bmi.n	d0055e96 <_fflush_r+0x3a>
d0055e8c:	0599      	lsls	r1, r3, #22
d0055e8e:	d402      	bmi.n	d0055e96 <_fflush_r+0x3a>
d0055e90:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055e92:	f000 f916 	bl	d00560c2 <__retarget_lock_acquire_recursive>
d0055e96:	4628      	mov	r0, r5
d0055e98:	4621      	mov	r1, r4
d0055e9a:	f7ff ff59 	bl	d0055d50 <__sflush_r>
d0055e9e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0055ea0:	07da      	lsls	r2, r3, #31
d0055ea2:	4605      	mov	r5, r0
d0055ea4:	d4e0      	bmi.n	d0055e68 <_fflush_r+0xc>
d0055ea6:	89a3      	ldrh	r3, [r4, #12]
d0055ea8:	059b      	lsls	r3, r3, #22
d0055eaa:	d4dd      	bmi.n	d0055e68 <_fflush_r+0xc>
d0055eac:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0055eae:	f000 f909 	bl	d00560c4 <__retarget_lock_release_recursive>
d0055eb2:	e7d9      	b.n	d0055e68 <_fflush_r+0xc>
d0055eb4:	4b05      	ldr	r3, [pc, #20]	; (d0055ecc <_fflush_r+0x70>)
d0055eb6:	429c      	cmp	r4, r3
d0055eb8:	d101      	bne.n	d0055ebe <_fflush_r+0x62>
d0055eba:	68ac      	ldr	r4, [r5, #8]
d0055ebc:	e7df      	b.n	d0055e7e <_fflush_r+0x22>
d0055ebe:	4b04      	ldr	r3, [pc, #16]	; (d0055ed0 <_fflush_r+0x74>)
d0055ec0:	429c      	cmp	r4, r3
d0055ec2:	bf08      	it	eq
d0055ec4:	68ec      	ldreq	r4, [r5, #12]
d0055ec6:	e7da      	b.n	d0055e7e <_fflush_r+0x22>
d0055ec8:	d0058568 	.word	0xd0058568
d0055ecc:	d0058588 	.word	0xd0058588
d0055ed0:	d0058548 	.word	0xd0058548

d0055ed4 <std>:
d0055ed4:	2300      	movs	r3, #0
d0055ed6:	b510      	push	{r4, lr}
d0055ed8:	4604      	mov	r4, r0
d0055eda:	e9c0 3300 	strd	r3, r3, [r0]
d0055ede:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0055ee2:	6083      	str	r3, [r0, #8]
d0055ee4:	8181      	strh	r1, [r0, #12]
d0055ee6:	6643      	str	r3, [r0, #100]	; 0x64
d0055ee8:	81c2      	strh	r2, [r0, #14]
d0055eea:	6183      	str	r3, [r0, #24]
d0055eec:	4619      	mov	r1, r3
d0055eee:	2208      	movs	r2, #8
d0055ef0:	305c      	adds	r0, #92	; 0x5c
d0055ef2:	f000 f915 	bl	d0056120 <memset>
d0055ef6:	4b05      	ldr	r3, [pc, #20]	; (d0055f0c <std+0x38>)
d0055ef8:	6263      	str	r3, [r4, #36]	; 0x24
d0055efa:	4b05      	ldr	r3, [pc, #20]	; (d0055f10 <std+0x3c>)
d0055efc:	62a3      	str	r3, [r4, #40]	; 0x28
d0055efe:	4b05      	ldr	r3, [pc, #20]	; (d0055f14 <std+0x40>)
d0055f00:	62e3      	str	r3, [r4, #44]	; 0x2c
d0055f02:	4b05      	ldr	r3, [pc, #20]	; (d0055f18 <std+0x44>)
d0055f04:	6224      	str	r4, [r4, #32]
d0055f06:	6323      	str	r3, [r4, #48]	; 0x30
d0055f08:	bd10      	pop	{r4, pc}
d0055f0a:	bf00      	nop
d0055f0c:	d00564e1 	.word	0xd00564e1
d0055f10:	d0056503 	.word	0xd0056503
d0055f14:	d005653b 	.word	0xd005653b
d0055f18:	d005655f 	.word	0xd005655f

d0055f1c <_cleanup_r>:
d0055f1c:	4901      	ldr	r1, [pc, #4]	; (d0055f24 <_cleanup_r+0x8>)
d0055f1e:	f000 b8af 	b.w	d0056080 <_fwalk_reent>
d0055f22:	bf00      	nop
d0055f24:	d0055e5d 	.word	0xd0055e5d

d0055f28 <__sfmoreglue>:
d0055f28:	b570      	push	{r4, r5, r6, lr}
d0055f2a:	1e4a      	subs	r2, r1, #1
d0055f2c:	2568      	movs	r5, #104	; 0x68
d0055f2e:	4355      	muls	r5, r2
d0055f30:	460e      	mov	r6, r1
d0055f32:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0055f36:	f000 f94b 	bl	d00561d0 <_malloc_r>
d0055f3a:	4604      	mov	r4, r0
d0055f3c:	b140      	cbz	r0, d0055f50 <__sfmoreglue+0x28>
d0055f3e:	2100      	movs	r1, #0
d0055f40:	e9c0 1600 	strd	r1, r6, [r0]
d0055f44:	300c      	adds	r0, #12
d0055f46:	60a0      	str	r0, [r4, #8]
d0055f48:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0055f4c:	f000 f8e8 	bl	d0056120 <memset>
d0055f50:	4620      	mov	r0, r4
d0055f52:	bd70      	pop	{r4, r5, r6, pc}

d0055f54 <__sfp_lock_acquire>:
d0055f54:	4801      	ldr	r0, [pc, #4]	; (d0055f5c <__sfp_lock_acquire+0x8>)
d0055f56:	f000 b8b4 	b.w	d00560c2 <__retarget_lock_acquire_recursive>
d0055f5a:	bf00      	nop
d0055f5c:	d00fd688 	.word	0xd00fd688

d0055f60 <__sfp_lock_release>:
d0055f60:	4801      	ldr	r0, [pc, #4]	; (d0055f68 <__sfp_lock_release+0x8>)
d0055f62:	f000 b8af 	b.w	d00560c4 <__retarget_lock_release_recursive>
d0055f66:	bf00      	nop
d0055f68:	d00fd688 	.word	0xd00fd688

d0055f6c <__sinit_lock_acquire>:
d0055f6c:	4801      	ldr	r0, [pc, #4]	; (d0055f74 <__sinit_lock_acquire+0x8>)
d0055f6e:	f000 b8a8 	b.w	d00560c2 <__retarget_lock_acquire_recursive>
d0055f72:	bf00      	nop
d0055f74:	d00fd683 	.word	0xd00fd683

d0055f78 <__sinit_lock_release>:
d0055f78:	4801      	ldr	r0, [pc, #4]	; (d0055f80 <__sinit_lock_release+0x8>)
d0055f7a:	f000 b8a3 	b.w	d00560c4 <__retarget_lock_release_recursive>
d0055f7e:	bf00      	nop
d0055f80:	d00fd683 	.word	0xd00fd683

d0055f84 <__sinit>:
d0055f84:	b510      	push	{r4, lr}
d0055f86:	4604      	mov	r4, r0
d0055f88:	f7ff fff0 	bl	d0055f6c <__sinit_lock_acquire>
d0055f8c:	69a3      	ldr	r3, [r4, #24]
d0055f8e:	b11b      	cbz	r3, d0055f98 <__sinit+0x14>
d0055f90:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0055f94:	f7ff bff0 	b.w	d0055f78 <__sinit_lock_release>
d0055f98:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0055f9c:	6523      	str	r3, [r4, #80]	; 0x50
d0055f9e:	4b13      	ldr	r3, [pc, #76]	; (d0055fec <__sinit+0x68>)
d0055fa0:	4a13      	ldr	r2, [pc, #76]	; (d0055ff0 <__sinit+0x6c>)
d0055fa2:	681b      	ldr	r3, [r3, #0]
d0055fa4:	62a2      	str	r2, [r4, #40]	; 0x28
d0055fa6:	42a3      	cmp	r3, r4
d0055fa8:	bf04      	itt	eq
d0055faa:	2301      	moveq	r3, #1
d0055fac:	61a3      	streq	r3, [r4, #24]
d0055fae:	4620      	mov	r0, r4
d0055fb0:	f000 f820 	bl	d0055ff4 <__sfp>
d0055fb4:	6060      	str	r0, [r4, #4]
d0055fb6:	4620      	mov	r0, r4
d0055fb8:	f000 f81c 	bl	d0055ff4 <__sfp>
d0055fbc:	60a0      	str	r0, [r4, #8]
d0055fbe:	4620      	mov	r0, r4
d0055fc0:	f000 f818 	bl	d0055ff4 <__sfp>
d0055fc4:	2200      	movs	r2, #0
d0055fc6:	60e0      	str	r0, [r4, #12]
d0055fc8:	2104      	movs	r1, #4
d0055fca:	6860      	ldr	r0, [r4, #4]
d0055fcc:	f7ff ff82 	bl	d0055ed4 <std>
d0055fd0:	68a0      	ldr	r0, [r4, #8]
d0055fd2:	2201      	movs	r2, #1
d0055fd4:	2109      	movs	r1, #9
d0055fd6:	f7ff ff7d 	bl	d0055ed4 <std>
d0055fda:	68e0      	ldr	r0, [r4, #12]
d0055fdc:	2202      	movs	r2, #2
d0055fde:	2112      	movs	r1, #18
d0055fe0:	f7ff ff78 	bl	d0055ed4 <std>
d0055fe4:	2301      	movs	r3, #1
d0055fe6:	61a3      	str	r3, [r4, #24]
d0055fe8:	e7d2      	b.n	d0055f90 <__sinit+0xc>
d0055fea:	bf00      	nop
d0055fec:	d00585a8 	.word	0xd00585a8
d0055ff0:	d0055f1d 	.word	0xd0055f1d

d0055ff4 <__sfp>:
d0055ff4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0055ff6:	4607      	mov	r7, r0
d0055ff8:	f7ff ffac 	bl	d0055f54 <__sfp_lock_acquire>
d0055ffc:	4b1e      	ldr	r3, [pc, #120]	; (d0056078 <__sfp+0x84>)
d0055ffe:	681e      	ldr	r6, [r3, #0]
d0056000:	69b3      	ldr	r3, [r6, #24]
d0056002:	b913      	cbnz	r3, d005600a <__sfp+0x16>
d0056004:	4630      	mov	r0, r6
d0056006:	f7ff ffbd 	bl	d0055f84 <__sinit>
d005600a:	3648      	adds	r6, #72	; 0x48
d005600c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0056010:	3b01      	subs	r3, #1
d0056012:	d503      	bpl.n	d005601c <__sfp+0x28>
d0056014:	6833      	ldr	r3, [r6, #0]
d0056016:	b30b      	cbz	r3, d005605c <__sfp+0x68>
d0056018:	6836      	ldr	r6, [r6, #0]
d005601a:	e7f7      	b.n	d005600c <__sfp+0x18>
d005601c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0056020:	b9d5      	cbnz	r5, d0056058 <__sfp+0x64>
d0056022:	4b16      	ldr	r3, [pc, #88]	; (d005607c <__sfp+0x88>)
d0056024:	60e3      	str	r3, [r4, #12]
d0056026:	f104 0058 	add.w	r0, r4, #88	; 0x58
d005602a:	6665      	str	r5, [r4, #100]	; 0x64
d005602c:	f000 f847 	bl	d00560be <__retarget_lock_init_recursive>
d0056030:	f7ff ff96 	bl	d0055f60 <__sfp_lock_release>
d0056034:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0056038:	e9c4 5504 	strd	r5, r5, [r4, #16]
d005603c:	6025      	str	r5, [r4, #0]
d005603e:	61a5      	str	r5, [r4, #24]
d0056040:	2208      	movs	r2, #8
d0056042:	4629      	mov	r1, r5
d0056044:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0056048:	f000 f86a 	bl	d0056120 <memset>
d005604c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0056050:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0056054:	4620      	mov	r0, r4
d0056056:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0056058:	3468      	adds	r4, #104	; 0x68
d005605a:	e7d9      	b.n	d0056010 <__sfp+0x1c>
d005605c:	2104      	movs	r1, #4
d005605e:	4638      	mov	r0, r7
d0056060:	f7ff ff62 	bl	d0055f28 <__sfmoreglue>
d0056064:	4604      	mov	r4, r0
d0056066:	6030      	str	r0, [r6, #0]
d0056068:	2800      	cmp	r0, #0
d005606a:	d1d5      	bne.n	d0056018 <__sfp+0x24>
d005606c:	f7ff ff78 	bl	d0055f60 <__sfp_lock_release>
d0056070:	230c      	movs	r3, #12
d0056072:	603b      	str	r3, [r7, #0]
d0056074:	e7ee      	b.n	d0056054 <__sfp+0x60>
d0056076:	bf00      	nop
d0056078:	d00585a8 	.word	0xd00585a8
d005607c:	ffff0001 	.word	0xffff0001

d0056080 <_fwalk_reent>:
d0056080:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0056084:	4606      	mov	r6, r0
d0056086:	4688      	mov	r8, r1
d0056088:	f100 0448 	add.w	r4, r0, #72	; 0x48
d005608c:	2700      	movs	r7, #0
d005608e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0056092:	f1b9 0901 	subs.w	r9, r9, #1
d0056096:	d505      	bpl.n	d00560a4 <_fwalk_reent+0x24>
d0056098:	6824      	ldr	r4, [r4, #0]
d005609a:	2c00      	cmp	r4, #0
d005609c:	d1f7      	bne.n	d005608e <_fwalk_reent+0xe>
d005609e:	4638      	mov	r0, r7
d00560a0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00560a4:	89ab      	ldrh	r3, [r5, #12]
d00560a6:	2b01      	cmp	r3, #1
d00560a8:	d907      	bls.n	d00560ba <_fwalk_reent+0x3a>
d00560aa:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00560ae:	3301      	adds	r3, #1
d00560b0:	d003      	beq.n	d00560ba <_fwalk_reent+0x3a>
d00560b2:	4629      	mov	r1, r5
d00560b4:	4630      	mov	r0, r6
d00560b6:	47c0      	blx	r8
d00560b8:	4307      	orrs	r7, r0
d00560ba:	3568      	adds	r5, #104	; 0x68
d00560bc:	e7e9      	b.n	d0056092 <_fwalk_reent+0x12>

d00560be <__retarget_lock_init_recursive>:
d00560be:	4770      	bx	lr

d00560c0 <__retarget_lock_close_recursive>:
d00560c0:	4770      	bx	lr

d00560c2 <__retarget_lock_acquire_recursive>:
d00560c2:	4770      	bx	lr

d00560c4 <__retarget_lock_release_recursive>:
d00560c4:	4770      	bx	lr
	...

d00560c8 <malloc>:
d00560c8:	4b02      	ldr	r3, [pc, #8]	; (d00560d4 <malloc+0xc>)
d00560ca:	4601      	mov	r1, r0
d00560cc:	6818      	ldr	r0, [r3, #0]
d00560ce:	f000 b87f 	b.w	d00561d0 <_malloc_r>
d00560d2:	bf00      	nop
d00560d4:	d005aed4 	.word	0xd005aed4

d00560d8 <free>:
d00560d8:	4b02      	ldr	r3, [pc, #8]	; (d00560e4 <free+0xc>)
d00560da:	4601      	mov	r1, r0
d00560dc:	6818      	ldr	r0, [r3, #0]
d00560de:	f000 b827 	b.w	d0056130 <_free_r>
d00560e2:	bf00      	nop
d00560e4:	d005aed4 	.word	0xd005aed4

d00560e8 <memcmp>:
d00560e8:	b530      	push	{r4, r5, lr}
d00560ea:	3901      	subs	r1, #1
d00560ec:	2400      	movs	r4, #0
d00560ee:	42a2      	cmp	r2, r4
d00560f0:	d101      	bne.n	d00560f6 <memcmp+0xe>
d00560f2:	2000      	movs	r0, #0
d00560f4:	e005      	b.n	d0056102 <memcmp+0x1a>
d00560f6:	5d03      	ldrb	r3, [r0, r4]
d00560f8:	3401      	adds	r4, #1
d00560fa:	5d0d      	ldrb	r5, [r1, r4]
d00560fc:	42ab      	cmp	r3, r5
d00560fe:	d0f6      	beq.n	d00560ee <memcmp+0x6>
d0056100:	1b58      	subs	r0, r3, r5
d0056102:	bd30      	pop	{r4, r5, pc}

d0056104 <memcpy>:
d0056104:	440a      	add	r2, r1
d0056106:	4291      	cmp	r1, r2
d0056108:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d005610c:	d100      	bne.n	d0056110 <memcpy+0xc>
d005610e:	4770      	bx	lr
d0056110:	b510      	push	{r4, lr}
d0056112:	f811 4b01 	ldrb.w	r4, [r1], #1
d0056116:	f803 4f01 	strb.w	r4, [r3, #1]!
d005611a:	4291      	cmp	r1, r2
d005611c:	d1f9      	bne.n	d0056112 <memcpy+0xe>
d005611e:	bd10      	pop	{r4, pc}

d0056120 <memset>:
d0056120:	4402      	add	r2, r0
d0056122:	4603      	mov	r3, r0
d0056124:	4293      	cmp	r3, r2
d0056126:	d100      	bne.n	d005612a <memset+0xa>
d0056128:	4770      	bx	lr
d005612a:	f803 1b01 	strb.w	r1, [r3], #1
d005612e:	e7f9      	b.n	d0056124 <memset+0x4>

d0056130 <_free_r>:
d0056130:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0056132:	2900      	cmp	r1, #0
d0056134:	d048      	beq.n	d00561c8 <_free_r+0x98>
d0056136:	f851 3c04 	ldr.w	r3, [r1, #-4]
d005613a:	9001      	str	r0, [sp, #4]
d005613c:	2b00      	cmp	r3, #0
d005613e:	f1a1 0404 	sub.w	r4, r1, #4
d0056142:	bfb8      	it	lt
d0056144:	18e4      	addlt	r4, r4, r3
d0056146:	f000 fac5 	bl	d00566d4 <__malloc_lock>
d005614a:	4a20      	ldr	r2, [pc, #128]	; (d00561cc <_free_r+0x9c>)
d005614c:	9801      	ldr	r0, [sp, #4]
d005614e:	6813      	ldr	r3, [r2, #0]
d0056150:	4615      	mov	r5, r2
d0056152:	b933      	cbnz	r3, d0056162 <_free_r+0x32>
d0056154:	6063      	str	r3, [r4, #4]
d0056156:	6014      	str	r4, [r2, #0]
d0056158:	b003      	add	sp, #12
d005615a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005615e:	f000 babf 	b.w	d00566e0 <__malloc_unlock>
d0056162:	42a3      	cmp	r3, r4
d0056164:	d90b      	bls.n	d005617e <_free_r+0x4e>
d0056166:	6821      	ldr	r1, [r4, #0]
d0056168:	1862      	adds	r2, r4, r1
d005616a:	4293      	cmp	r3, r2
d005616c:	bf04      	itt	eq
d005616e:	681a      	ldreq	r2, [r3, #0]
d0056170:	685b      	ldreq	r3, [r3, #4]
d0056172:	6063      	str	r3, [r4, #4]
d0056174:	bf04      	itt	eq
d0056176:	1852      	addeq	r2, r2, r1
d0056178:	6022      	streq	r2, [r4, #0]
d005617a:	602c      	str	r4, [r5, #0]
d005617c:	e7ec      	b.n	d0056158 <_free_r+0x28>
d005617e:	461a      	mov	r2, r3
d0056180:	685b      	ldr	r3, [r3, #4]
d0056182:	b10b      	cbz	r3, d0056188 <_free_r+0x58>
d0056184:	42a3      	cmp	r3, r4
d0056186:	d9fa      	bls.n	d005617e <_free_r+0x4e>
d0056188:	6811      	ldr	r1, [r2, #0]
d005618a:	1855      	adds	r5, r2, r1
d005618c:	42a5      	cmp	r5, r4
d005618e:	d10b      	bne.n	d00561a8 <_free_r+0x78>
d0056190:	6824      	ldr	r4, [r4, #0]
d0056192:	4421      	add	r1, r4
d0056194:	1854      	adds	r4, r2, r1
d0056196:	42a3      	cmp	r3, r4
d0056198:	6011      	str	r1, [r2, #0]
d005619a:	d1dd      	bne.n	d0056158 <_free_r+0x28>
d005619c:	681c      	ldr	r4, [r3, #0]
d005619e:	685b      	ldr	r3, [r3, #4]
d00561a0:	6053      	str	r3, [r2, #4]
d00561a2:	4421      	add	r1, r4
d00561a4:	6011      	str	r1, [r2, #0]
d00561a6:	e7d7      	b.n	d0056158 <_free_r+0x28>
d00561a8:	d902      	bls.n	d00561b0 <_free_r+0x80>
d00561aa:	230c      	movs	r3, #12
d00561ac:	6003      	str	r3, [r0, #0]
d00561ae:	e7d3      	b.n	d0056158 <_free_r+0x28>
d00561b0:	6825      	ldr	r5, [r4, #0]
d00561b2:	1961      	adds	r1, r4, r5
d00561b4:	428b      	cmp	r3, r1
d00561b6:	bf04      	itt	eq
d00561b8:	6819      	ldreq	r1, [r3, #0]
d00561ba:	685b      	ldreq	r3, [r3, #4]
d00561bc:	6063      	str	r3, [r4, #4]
d00561be:	bf04      	itt	eq
d00561c0:	1949      	addeq	r1, r1, r5
d00561c2:	6021      	streq	r1, [r4, #0]
d00561c4:	6054      	str	r4, [r2, #4]
d00561c6:	e7c7      	b.n	d0056158 <_free_r+0x28>
d00561c8:	b003      	add	sp, #12
d00561ca:	bd30      	pop	{r4, r5, pc}
d00561cc:	d00f5400 	.word	0xd00f5400

d00561d0 <_malloc_r>:
d00561d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00561d2:	1ccd      	adds	r5, r1, #3
d00561d4:	f025 0503 	bic.w	r5, r5, #3
d00561d8:	3508      	adds	r5, #8
d00561da:	2d0c      	cmp	r5, #12
d00561dc:	bf38      	it	cc
d00561de:	250c      	movcc	r5, #12
d00561e0:	2d00      	cmp	r5, #0
d00561e2:	4606      	mov	r6, r0
d00561e4:	db01      	blt.n	d00561ea <_malloc_r+0x1a>
d00561e6:	42a9      	cmp	r1, r5
d00561e8:	d903      	bls.n	d00561f2 <_malloc_r+0x22>
d00561ea:	230c      	movs	r3, #12
d00561ec:	6033      	str	r3, [r6, #0]
d00561ee:	2000      	movs	r0, #0
d00561f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00561f2:	f000 fa6f 	bl	d00566d4 <__malloc_lock>
d00561f6:	4921      	ldr	r1, [pc, #132]	; (d005627c <_malloc_r+0xac>)
d00561f8:	680a      	ldr	r2, [r1, #0]
d00561fa:	4614      	mov	r4, r2
d00561fc:	b99c      	cbnz	r4, d0056226 <_malloc_r+0x56>
d00561fe:	4f20      	ldr	r7, [pc, #128]	; (d0056280 <_malloc_r+0xb0>)
d0056200:	683b      	ldr	r3, [r7, #0]
d0056202:	b923      	cbnz	r3, d005620e <_malloc_r+0x3e>
d0056204:	4621      	mov	r1, r4
d0056206:	4630      	mov	r0, r6
d0056208:	f7f4 ff6a 	bl	d004b0e0 <_sbrk_r>
d005620c:	6038      	str	r0, [r7, #0]
d005620e:	4629      	mov	r1, r5
d0056210:	4630      	mov	r0, r6
d0056212:	f7f4 ff65 	bl	d004b0e0 <_sbrk_r>
d0056216:	1c43      	adds	r3, r0, #1
d0056218:	d123      	bne.n	d0056262 <_malloc_r+0x92>
d005621a:	230c      	movs	r3, #12
d005621c:	6033      	str	r3, [r6, #0]
d005621e:	4630      	mov	r0, r6
d0056220:	f000 fa5e 	bl	d00566e0 <__malloc_unlock>
d0056224:	e7e3      	b.n	d00561ee <_malloc_r+0x1e>
d0056226:	6823      	ldr	r3, [r4, #0]
d0056228:	1b5b      	subs	r3, r3, r5
d005622a:	d417      	bmi.n	d005625c <_malloc_r+0x8c>
d005622c:	2b0b      	cmp	r3, #11
d005622e:	d903      	bls.n	d0056238 <_malloc_r+0x68>
d0056230:	6023      	str	r3, [r4, #0]
d0056232:	441c      	add	r4, r3
d0056234:	6025      	str	r5, [r4, #0]
d0056236:	e004      	b.n	d0056242 <_malloc_r+0x72>
d0056238:	6863      	ldr	r3, [r4, #4]
d005623a:	42a2      	cmp	r2, r4
d005623c:	bf0c      	ite	eq
d005623e:	600b      	streq	r3, [r1, #0]
d0056240:	6053      	strne	r3, [r2, #4]
d0056242:	4630      	mov	r0, r6
d0056244:	f000 fa4c 	bl	d00566e0 <__malloc_unlock>
d0056248:	f104 000b 	add.w	r0, r4, #11
d005624c:	1d23      	adds	r3, r4, #4
d005624e:	f020 0007 	bic.w	r0, r0, #7
d0056252:	1ac2      	subs	r2, r0, r3
d0056254:	d0cc      	beq.n	d00561f0 <_malloc_r+0x20>
d0056256:	1a1b      	subs	r3, r3, r0
d0056258:	50a3      	str	r3, [r4, r2]
d005625a:	e7c9      	b.n	d00561f0 <_malloc_r+0x20>
d005625c:	4622      	mov	r2, r4
d005625e:	6864      	ldr	r4, [r4, #4]
d0056260:	e7cc      	b.n	d00561fc <_malloc_r+0x2c>
d0056262:	1cc4      	adds	r4, r0, #3
d0056264:	f024 0403 	bic.w	r4, r4, #3
d0056268:	42a0      	cmp	r0, r4
d005626a:	d0e3      	beq.n	d0056234 <_malloc_r+0x64>
d005626c:	1a21      	subs	r1, r4, r0
d005626e:	4630      	mov	r0, r6
d0056270:	f7f4 ff36 	bl	d004b0e0 <_sbrk_r>
d0056274:	3001      	adds	r0, #1
d0056276:	d1dd      	bne.n	d0056234 <_malloc_r+0x64>
d0056278:	e7cf      	b.n	d005621a <_malloc_r+0x4a>
d005627a:	bf00      	nop
d005627c:	d00f5400 	.word	0xd00f5400
d0056280:	d00f5404 	.word	0xd00f5404

d0056284 <rand>:
d0056284:	4b17      	ldr	r3, [pc, #92]	; (d00562e4 <rand+0x60>)
d0056286:	b510      	push	{r4, lr}
d0056288:	681c      	ldr	r4, [r3, #0]
d005628a:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d005628c:	b9b3      	cbnz	r3, d00562bc <rand+0x38>
d005628e:	2018      	movs	r0, #24
d0056290:	f7ff ff1a 	bl	d00560c8 <malloc>
d0056294:	63a0      	str	r0, [r4, #56]	; 0x38
d0056296:	b928      	cbnz	r0, d00562a4 <rand+0x20>
d0056298:	4602      	mov	r2, r0
d005629a:	4b13      	ldr	r3, [pc, #76]	; (d00562e8 <rand+0x64>)
d005629c:	4813      	ldr	r0, [pc, #76]	; (d00562ec <rand+0x68>)
d005629e:	214e      	movs	r1, #78	; 0x4e
d00562a0:	f000 f962 	bl	d0056568 <__assert_func>
d00562a4:	4a12      	ldr	r2, [pc, #72]	; (d00562f0 <rand+0x6c>)
d00562a6:	4b13      	ldr	r3, [pc, #76]	; (d00562f4 <rand+0x70>)
d00562a8:	e9c0 2300 	strd	r2, r3, [r0]
d00562ac:	4b12      	ldr	r3, [pc, #72]	; (d00562f8 <rand+0x74>)
d00562ae:	6083      	str	r3, [r0, #8]
d00562b0:	230b      	movs	r3, #11
d00562b2:	8183      	strh	r3, [r0, #12]
d00562b4:	2201      	movs	r2, #1
d00562b6:	2300      	movs	r3, #0
d00562b8:	e9c0 2304 	strd	r2, r3, [r0, #16]
d00562bc:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d00562be:	480f      	ldr	r0, [pc, #60]	; (d00562fc <rand+0x78>)
d00562c0:	690a      	ldr	r2, [r1, #16]
d00562c2:	694b      	ldr	r3, [r1, #20]
d00562c4:	4c0e      	ldr	r4, [pc, #56]	; (d0056300 <rand+0x7c>)
d00562c6:	4350      	muls	r0, r2
d00562c8:	fb04 0003 	mla	r0, r4, r3, r0
d00562cc:	fba2 3404 	umull	r3, r4, r2, r4
d00562d0:	1c5a      	adds	r2, r3, #1
d00562d2:	4404      	add	r4, r0
d00562d4:	f144 0000 	adc.w	r0, r4, #0
d00562d8:	e9c1 2004 	strd	r2, r0, [r1, #16]
d00562dc:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d00562e0:	bd10      	pop	{r4, pc}
d00562e2:	bf00      	nop
d00562e4:	d005aed4 	.word	0xd005aed4
d00562e8:	d00585ac 	.word	0xd00585ac
d00562ec:	d00585c3 	.word	0xd00585c3
d00562f0:	abcd330e 	.word	0xabcd330e
d00562f4:	e66d1234 	.word	0xe66d1234
d00562f8:	0005deec 	.word	0x0005deec
d00562fc:	5851f42d 	.word	0x5851f42d
d0056300:	4c957f2d 	.word	0x4c957f2d

d0056304 <setbuf>:
d0056304:	2900      	cmp	r1, #0
d0056306:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005630a:	bf0c      	ite	eq
d005630c:	2202      	moveq	r2, #2
d005630e:	2200      	movne	r2, #0
d0056310:	f000 b800 	b.w	d0056314 <setvbuf>

d0056314 <setvbuf>:
d0056314:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0056318:	461d      	mov	r5, r3
d005631a:	4b5d      	ldr	r3, [pc, #372]	; (d0056490 <setvbuf+0x17c>)
d005631c:	681f      	ldr	r7, [r3, #0]
d005631e:	4604      	mov	r4, r0
d0056320:	460e      	mov	r6, r1
d0056322:	4690      	mov	r8, r2
d0056324:	b127      	cbz	r7, d0056330 <setvbuf+0x1c>
d0056326:	69bb      	ldr	r3, [r7, #24]
d0056328:	b913      	cbnz	r3, d0056330 <setvbuf+0x1c>
d005632a:	4638      	mov	r0, r7
d005632c:	f7ff fe2a 	bl	d0055f84 <__sinit>
d0056330:	4b58      	ldr	r3, [pc, #352]	; (d0056494 <setvbuf+0x180>)
d0056332:	429c      	cmp	r4, r3
d0056334:	d167      	bne.n	d0056406 <setvbuf+0xf2>
d0056336:	687c      	ldr	r4, [r7, #4]
d0056338:	f1b8 0f02 	cmp.w	r8, #2
d005633c:	d006      	beq.n	d005634c <setvbuf+0x38>
d005633e:	f1b8 0f01 	cmp.w	r8, #1
d0056342:	f200 809f 	bhi.w	d0056484 <setvbuf+0x170>
d0056346:	2d00      	cmp	r5, #0
d0056348:	f2c0 809c 	blt.w	d0056484 <setvbuf+0x170>
d005634c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005634e:	07db      	lsls	r3, r3, #31
d0056350:	d405      	bmi.n	d005635e <setvbuf+0x4a>
d0056352:	89a3      	ldrh	r3, [r4, #12]
d0056354:	0598      	lsls	r0, r3, #22
d0056356:	d402      	bmi.n	d005635e <setvbuf+0x4a>
d0056358:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005635a:	f7ff feb2 	bl	d00560c2 <__retarget_lock_acquire_recursive>
d005635e:	4621      	mov	r1, r4
d0056360:	4638      	mov	r0, r7
d0056362:	f7ff fd7b 	bl	d0055e5c <_fflush_r>
d0056366:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0056368:	b141      	cbz	r1, d005637c <setvbuf+0x68>
d005636a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005636e:	4299      	cmp	r1, r3
d0056370:	d002      	beq.n	d0056378 <setvbuf+0x64>
d0056372:	4638      	mov	r0, r7
d0056374:	f7ff fedc 	bl	d0056130 <_free_r>
d0056378:	2300      	movs	r3, #0
d005637a:	6363      	str	r3, [r4, #52]	; 0x34
d005637c:	2300      	movs	r3, #0
d005637e:	61a3      	str	r3, [r4, #24]
d0056380:	6063      	str	r3, [r4, #4]
d0056382:	89a3      	ldrh	r3, [r4, #12]
d0056384:	0619      	lsls	r1, r3, #24
d0056386:	d503      	bpl.n	d0056390 <setvbuf+0x7c>
d0056388:	6921      	ldr	r1, [r4, #16]
d005638a:	4638      	mov	r0, r7
d005638c:	f7ff fed0 	bl	d0056130 <_free_r>
d0056390:	89a3      	ldrh	r3, [r4, #12]
d0056392:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0056396:	f023 0303 	bic.w	r3, r3, #3
d005639a:	f1b8 0f02 	cmp.w	r8, #2
d005639e:	81a3      	strh	r3, [r4, #12]
d00563a0:	d06c      	beq.n	d005647c <setvbuf+0x168>
d00563a2:	ab01      	add	r3, sp, #4
d00563a4:	466a      	mov	r2, sp
d00563a6:	4621      	mov	r1, r4
d00563a8:	4638      	mov	r0, r7
d00563aa:	f000 f92f 	bl	d005660c <__swhatbuf_r>
d00563ae:	89a3      	ldrh	r3, [r4, #12]
d00563b0:	4318      	orrs	r0, r3
d00563b2:	81a0      	strh	r0, [r4, #12]
d00563b4:	2d00      	cmp	r5, #0
d00563b6:	d130      	bne.n	d005641a <setvbuf+0x106>
d00563b8:	9d00      	ldr	r5, [sp, #0]
d00563ba:	4628      	mov	r0, r5
d00563bc:	f7ff fe84 	bl	d00560c8 <malloc>
d00563c0:	4606      	mov	r6, r0
d00563c2:	2800      	cmp	r0, #0
d00563c4:	d155      	bne.n	d0056472 <setvbuf+0x15e>
d00563c6:	f8dd 9000 	ldr.w	r9, [sp]
d00563ca:	45a9      	cmp	r9, r5
d00563cc:	d14a      	bne.n	d0056464 <setvbuf+0x150>
d00563ce:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00563d2:	2200      	movs	r2, #0
d00563d4:	60a2      	str	r2, [r4, #8]
d00563d6:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00563da:	6022      	str	r2, [r4, #0]
d00563dc:	6122      	str	r2, [r4, #16]
d00563de:	2201      	movs	r2, #1
d00563e0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00563e4:	6162      	str	r2, [r4, #20]
d00563e6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00563e8:	f043 0302 	orr.w	r3, r3, #2
d00563ec:	07d2      	lsls	r2, r2, #31
d00563ee:	81a3      	strh	r3, [r4, #12]
d00563f0:	d405      	bmi.n	d00563fe <setvbuf+0xea>
d00563f2:	f413 7f00 	tst.w	r3, #512	; 0x200
d00563f6:	d102      	bne.n	d00563fe <setvbuf+0xea>
d00563f8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00563fa:	f7ff fe63 	bl	d00560c4 <__retarget_lock_release_recursive>
d00563fe:	4628      	mov	r0, r5
d0056400:	b003      	add	sp, #12
d0056402:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0056406:	4b24      	ldr	r3, [pc, #144]	; (d0056498 <setvbuf+0x184>)
d0056408:	429c      	cmp	r4, r3
d005640a:	d101      	bne.n	d0056410 <setvbuf+0xfc>
d005640c:	68bc      	ldr	r4, [r7, #8]
d005640e:	e793      	b.n	d0056338 <setvbuf+0x24>
d0056410:	4b22      	ldr	r3, [pc, #136]	; (d005649c <setvbuf+0x188>)
d0056412:	429c      	cmp	r4, r3
d0056414:	bf08      	it	eq
d0056416:	68fc      	ldreq	r4, [r7, #12]
d0056418:	e78e      	b.n	d0056338 <setvbuf+0x24>
d005641a:	2e00      	cmp	r6, #0
d005641c:	d0cd      	beq.n	d00563ba <setvbuf+0xa6>
d005641e:	69bb      	ldr	r3, [r7, #24]
d0056420:	b913      	cbnz	r3, d0056428 <setvbuf+0x114>
d0056422:	4638      	mov	r0, r7
d0056424:	f7ff fdae 	bl	d0055f84 <__sinit>
d0056428:	f1b8 0f01 	cmp.w	r8, #1
d005642c:	bf08      	it	eq
d005642e:	89a3      	ldrheq	r3, [r4, #12]
d0056430:	6026      	str	r6, [r4, #0]
d0056432:	bf04      	itt	eq
d0056434:	f043 0301 	orreq.w	r3, r3, #1
d0056438:	81a3      	strheq	r3, [r4, #12]
d005643a:	89a2      	ldrh	r2, [r4, #12]
d005643c:	f012 0308 	ands.w	r3, r2, #8
d0056440:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0056444:	d01c      	beq.n	d0056480 <setvbuf+0x16c>
d0056446:	07d3      	lsls	r3, r2, #31
d0056448:	bf41      	itttt	mi
d005644a:	2300      	movmi	r3, #0
d005644c:	426d      	negmi	r5, r5
d005644e:	60a3      	strmi	r3, [r4, #8]
d0056450:	61a5      	strmi	r5, [r4, #24]
d0056452:	bf58      	it	pl
d0056454:	60a5      	strpl	r5, [r4, #8]
d0056456:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0056458:	f015 0501 	ands.w	r5, r5, #1
d005645c:	d115      	bne.n	d005648a <setvbuf+0x176>
d005645e:	f412 7f00 	tst.w	r2, #512	; 0x200
d0056462:	e7c8      	b.n	d00563f6 <setvbuf+0xe2>
d0056464:	4648      	mov	r0, r9
d0056466:	f7ff fe2f 	bl	d00560c8 <malloc>
d005646a:	4606      	mov	r6, r0
d005646c:	2800      	cmp	r0, #0
d005646e:	d0ae      	beq.n	d00563ce <setvbuf+0xba>
d0056470:	464d      	mov	r5, r9
d0056472:	89a3      	ldrh	r3, [r4, #12]
d0056474:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0056478:	81a3      	strh	r3, [r4, #12]
d005647a:	e7d0      	b.n	d005641e <setvbuf+0x10a>
d005647c:	2500      	movs	r5, #0
d005647e:	e7a8      	b.n	d00563d2 <setvbuf+0xbe>
d0056480:	60a3      	str	r3, [r4, #8]
d0056482:	e7e8      	b.n	d0056456 <setvbuf+0x142>
d0056484:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0056488:	e7b9      	b.n	d00563fe <setvbuf+0xea>
d005648a:	2500      	movs	r5, #0
d005648c:	e7b7      	b.n	d00563fe <setvbuf+0xea>
d005648e:	bf00      	nop
d0056490:	d005aed4 	.word	0xd005aed4
d0056494:	d0058568 	.word	0xd0058568
d0056498:	d0058588 	.word	0xd0058588
d005649c:	d0058548 	.word	0xd0058548

d00564a0 <siprintf>:
d00564a0:	b40e      	push	{r1, r2, r3}
d00564a2:	b500      	push	{lr}
d00564a4:	b09c      	sub	sp, #112	; 0x70
d00564a6:	ab1d      	add	r3, sp, #116	; 0x74
d00564a8:	9002      	str	r0, [sp, #8]
d00564aa:	9006      	str	r0, [sp, #24]
d00564ac:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00564b0:	4809      	ldr	r0, [pc, #36]	; (d00564d8 <siprintf+0x38>)
d00564b2:	9107      	str	r1, [sp, #28]
d00564b4:	9104      	str	r1, [sp, #16]
d00564b6:	4909      	ldr	r1, [pc, #36]	; (d00564dc <siprintf+0x3c>)
d00564b8:	f853 2b04 	ldr.w	r2, [r3], #4
d00564bc:	9105      	str	r1, [sp, #20]
d00564be:	6800      	ldr	r0, [r0, #0]
d00564c0:	9301      	str	r3, [sp, #4]
d00564c2:	a902      	add	r1, sp, #8
d00564c4:	f000 f994 	bl	d00567f0 <_svfiprintf_r>
d00564c8:	9b02      	ldr	r3, [sp, #8]
d00564ca:	2200      	movs	r2, #0
d00564cc:	701a      	strb	r2, [r3, #0]
d00564ce:	b01c      	add	sp, #112	; 0x70
d00564d0:	f85d eb04 	ldr.w	lr, [sp], #4
d00564d4:	b003      	add	sp, #12
d00564d6:	4770      	bx	lr
d00564d8:	d005aed4 	.word	0xd005aed4
d00564dc:	ffff0208 	.word	0xffff0208

d00564e0 <__sread>:
d00564e0:	b510      	push	{r4, lr}
d00564e2:	460c      	mov	r4, r1
d00564e4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00564e8:	f000 fd70 	bl	d0056fcc <_read_r>
d00564ec:	2800      	cmp	r0, #0
d00564ee:	bfab      	itete	ge
d00564f0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00564f2:	89a3      	ldrhlt	r3, [r4, #12]
d00564f4:	181b      	addge	r3, r3, r0
d00564f6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00564fa:	bfac      	ite	ge
d00564fc:	6563      	strge	r3, [r4, #84]	; 0x54
d00564fe:	81a3      	strhlt	r3, [r4, #12]
d0056500:	bd10      	pop	{r4, pc}

d0056502 <__swrite>:
d0056502:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0056506:	461f      	mov	r7, r3
d0056508:	898b      	ldrh	r3, [r1, #12]
d005650a:	05db      	lsls	r3, r3, #23
d005650c:	4605      	mov	r5, r0
d005650e:	460c      	mov	r4, r1
d0056510:	4616      	mov	r6, r2
d0056512:	d505      	bpl.n	d0056520 <__swrite+0x1e>
d0056514:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0056518:	2302      	movs	r3, #2
d005651a:	2200      	movs	r2, #0
d005651c:	f000 f864 	bl	d00565e8 <_lseek_r>
d0056520:	89a3      	ldrh	r3, [r4, #12]
d0056522:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0056526:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d005652a:	81a3      	strh	r3, [r4, #12]
d005652c:	4632      	mov	r2, r6
d005652e:	463b      	mov	r3, r7
d0056530:	4628      	mov	r0, r5
d0056532:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0056536:	f7f4 bd8d 	b.w	d004b054 <_write_r>

d005653a <__sseek>:
d005653a:	b510      	push	{r4, lr}
d005653c:	460c      	mov	r4, r1
d005653e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0056542:	f000 f851 	bl	d00565e8 <_lseek_r>
d0056546:	1c43      	adds	r3, r0, #1
d0056548:	89a3      	ldrh	r3, [r4, #12]
d005654a:	bf15      	itete	ne
d005654c:	6560      	strne	r0, [r4, #84]	; 0x54
d005654e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0056552:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0056556:	81a3      	strheq	r3, [r4, #12]
d0056558:	bf18      	it	ne
d005655a:	81a3      	strhne	r3, [r4, #12]
d005655c:	bd10      	pop	{r4, pc}

d005655e <__sclose>:
d005655e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0056562:	f000 b81f 	b.w	d00565a4 <_close_r>
	...

d0056568 <__assert_func>:
d0056568:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d005656a:	4614      	mov	r4, r2
d005656c:	461a      	mov	r2, r3
d005656e:	4b09      	ldr	r3, [pc, #36]	; (d0056594 <__assert_func+0x2c>)
d0056570:	681b      	ldr	r3, [r3, #0]
d0056572:	4605      	mov	r5, r0
d0056574:	68d8      	ldr	r0, [r3, #12]
d0056576:	b14c      	cbz	r4, d005658c <__assert_func+0x24>
d0056578:	4b07      	ldr	r3, [pc, #28]	; (d0056598 <__assert_func+0x30>)
d005657a:	9100      	str	r1, [sp, #0]
d005657c:	e9cd 3401 	strd	r3, r4, [sp, #4]
d0056580:	4906      	ldr	r1, [pc, #24]	; (d005659c <__assert_func+0x34>)
d0056582:	462b      	mov	r3, r5
d0056584:	f000 f81e 	bl	d00565c4 <fiprintf>
d0056588:	f000 fdf2 	bl	d0057170 <abort>
d005658c:	4b04      	ldr	r3, [pc, #16]	; (d00565a0 <__assert_func+0x38>)
d005658e:	461c      	mov	r4, r3
d0056590:	e7f3      	b.n	d005657a <__assert_func+0x12>
d0056592:	bf00      	nop
d0056594:	d005aed4 	.word	0xd005aed4
d0056598:	d0058622 	.word	0xd0058622
d005659c:	d005862f 	.word	0xd005862f
d00565a0:	d005865d 	.word	0xd005865d

d00565a4 <_close_r>:
d00565a4:	b538      	push	{r3, r4, r5, lr}
d00565a6:	4d06      	ldr	r5, [pc, #24]	; (d00565c0 <_close_r+0x1c>)
d00565a8:	2300      	movs	r3, #0
d00565aa:	4604      	mov	r4, r0
d00565ac:	4608      	mov	r0, r1
d00565ae:	602b      	str	r3, [r5, #0]
d00565b0:	f7f4 fd8a 	bl	d004b0c8 <_close>
d00565b4:	1c43      	adds	r3, r0, #1
d00565b6:	d102      	bne.n	d00565be <_close_r+0x1a>
d00565b8:	682b      	ldr	r3, [r5, #0]
d00565ba:	b103      	cbz	r3, d00565be <_close_r+0x1a>
d00565bc:	6023      	str	r3, [r4, #0]
d00565be:	bd38      	pop	{r3, r4, r5, pc}
d00565c0:	d00fd68c 	.word	0xd00fd68c

d00565c4 <fiprintf>:
d00565c4:	b40e      	push	{r1, r2, r3}
d00565c6:	b503      	push	{r0, r1, lr}
d00565c8:	4601      	mov	r1, r0
d00565ca:	ab03      	add	r3, sp, #12
d00565cc:	4805      	ldr	r0, [pc, #20]	; (d00565e4 <fiprintf+0x20>)
d00565ce:	f853 2b04 	ldr.w	r2, [r3], #4
d00565d2:	6800      	ldr	r0, [r0, #0]
d00565d4:	9301      	str	r3, [sp, #4]
d00565d6:	f000 fa35 	bl	d0056a44 <_vfiprintf_r>
d00565da:	b002      	add	sp, #8
d00565dc:	f85d eb04 	ldr.w	lr, [sp], #4
d00565e0:	b003      	add	sp, #12
d00565e2:	4770      	bx	lr
d00565e4:	d005aed4 	.word	0xd005aed4

d00565e8 <_lseek_r>:
d00565e8:	b538      	push	{r3, r4, r5, lr}
d00565ea:	4d07      	ldr	r5, [pc, #28]	; (d0056608 <_lseek_r+0x20>)
d00565ec:	4604      	mov	r4, r0
d00565ee:	4608      	mov	r0, r1
d00565f0:	4611      	mov	r1, r2
d00565f2:	2200      	movs	r2, #0
d00565f4:	602a      	str	r2, [r5, #0]
d00565f6:	461a      	mov	r2, r3
d00565f8:	f7f4 fd70 	bl	d004b0dc <_lseek>
d00565fc:	1c43      	adds	r3, r0, #1
d00565fe:	d102      	bne.n	d0056606 <_lseek_r+0x1e>
d0056600:	682b      	ldr	r3, [r5, #0]
d0056602:	b103      	cbz	r3, d0056606 <_lseek_r+0x1e>
d0056604:	6023      	str	r3, [r4, #0]
d0056606:	bd38      	pop	{r3, r4, r5, pc}
d0056608:	d00fd68c 	.word	0xd00fd68c

d005660c <__swhatbuf_r>:
d005660c:	b570      	push	{r4, r5, r6, lr}
d005660e:	460e      	mov	r6, r1
d0056610:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0056614:	2900      	cmp	r1, #0
d0056616:	b096      	sub	sp, #88	; 0x58
d0056618:	4614      	mov	r4, r2
d005661a:	461d      	mov	r5, r3
d005661c:	da07      	bge.n	d005662e <__swhatbuf_r+0x22>
d005661e:	2300      	movs	r3, #0
d0056620:	602b      	str	r3, [r5, #0]
d0056622:	89b3      	ldrh	r3, [r6, #12]
d0056624:	061a      	lsls	r2, r3, #24
d0056626:	d410      	bmi.n	d005664a <__swhatbuf_r+0x3e>
d0056628:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005662c:	e00e      	b.n	d005664c <__swhatbuf_r+0x40>
d005662e:	466a      	mov	r2, sp
d0056630:	f000 fda6 	bl	d0057180 <_fstat_r>
d0056634:	2800      	cmp	r0, #0
d0056636:	dbf2      	blt.n	d005661e <__swhatbuf_r+0x12>
d0056638:	9a01      	ldr	r2, [sp, #4]
d005663a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d005663e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0056642:	425a      	negs	r2, r3
d0056644:	415a      	adcs	r2, r3
d0056646:	602a      	str	r2, [r5, #0]
d0056648:	e7ee      	b.n	d0056628 <__swhatbuf_r+0x1c>
d005664a:	2340      	movs	r3, #64	; 0x40
d005664c:	2000      	movs	r0, #0
d005664e:	6023      	str	r3, [r4, #0]
d0056650:	b016      	add	sp, #88	; 0x58
d0056652:	bd70      	pop	{r4, r5, r6, pc}

d0056654 <__smakebuf_r>:
d0056654:	898b      	ldrh	r3, [r1, #12]
d0056656:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0056658:	079d      	lsls	r5, r3, #30
d005665a:	4606      	mov	r6, r0
d005665c:	460c      	mov	r4, r1
d005665e:	d507      	bpl.n	d0056670 <__smakebuf_r+0x1c>
d0056660:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0056664:	6023      	str	r3, [r4, #0]
d0056666:	6123      	str	r3, [r4, #16]
d0056668:	2301      	movs	r3, #1
d005666a:	6163      	str	r3, [r4, #20]
d005666c:	b002      	add	sp, #8
d005666e:	bd70      	pop	{r4, r5, r6, pc}
d0056670:	ab01      	add	r3, sp, #4
d0056672:	466a      	mov	r2, sp
d0056674:	f7ff ffca 	bl	d005660c <__swhatbuf_r>
d0056678:	9900      	ldr	r1, [sp, #0]
d005667a:	4605      	mov	r5, r0
d005667c:	4630      	mov	r0, r6
d005667e:	f7ff fda7 	bl	d00561d0 <_malloc_r>
d0056682:	b948      	cbnz	r0, d0056698 <__smakebuf_r+0x44>
d0056684:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0056688:	059a      	lsls	r2, r3, #22
d005668a:	d4ef      	bmi.n	d005666c <__smakebuf_r+0x18>
d005668c:	f023 0303 	bic.w	r3, r3, #3
d0056690:	f043 0302 	orr.w	r3, r3, #2
d0056694:	81a3      	strh	r3, [r4, #12]
d0056696:	e7e3      	b.n	d0056660 <__smakebuf_r+0xc>
d0056698:	4b0d      	ldr	r3, [pc, #52]	; (d00566d0 <__smakebuf_r+0x7c>)
d005669a:	62b3      	str	r3, [r6, #40]	; 0x28
d005669c:	89a3      	ldrh	r3, [r4, #12]
d005669e:	6020      	str	r0, [r4, #0]
d00566a0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00566a4:	81a3      	strh	r3, [r4, #12]
d00566a6:	9b00      	ldr	r3, [sp, #0]
d00566a8:	6163      	str	r3, [r4, #20]
d00566aa:	9b01      	ldr	r3, [sp, #4]
d00566ac:	6120      	str	r0, [r4, #16]
d00566ae:	b15b      	cbz	r3, d00566c8 <__smakebuf_r+0x74>
d00566b0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00566b4:	4630      	mov	r0, r6
d00566b6:	f000 fd75 	bl	d00571a4 <_isatty_r>
d00566ba:	b128      	cbz	r0, d00566c8 <__smakebuf_r+0x74>
d00566bc:	89a3      	ldrh	r3, [r4, #12]
d00566be:	f023 0303 	bic.w	r3, r3, #3
d00566c2:	f043 0301 	orr.w	r3, r3, #1
d00566c6:	81a3      	strh	r3, [r4, #12]
d00566c8:	89a0      	ldrh	r0, [r4, #12]
d00566ca:	4305      	orrs	r5, r0
d00566cc:	81a5      	strh	r5, [r4, #12]
d00566ce:	e7cd      	b.n	d005666c <__smakebuf_r+0x18>
d00566d0:	d0055f1d 	.word	0xd0055f1d

d00566d4 <__malloc_lock>:
d00566d4:	4801      	ldr	r0, [pc, #4]	; (d00566dc <__malloc_lock+0x8>)
d00566d6:	f7ff bcf4 	b.w	d00560c2 <__retarget_lock_acquire_recursive>
d00566da:	bf00      	nop
d00566dc:	d00fd684 	.word	0xd00fd684

d00566e0 <__malloc_unlock>:
d00566e0:	4801      	ldr	r0, [pc, #4]	; (d00566e8 <__malloc_unlock+0x8>)
d00566e2:	f7ff bcef 	b.w	d00560c4 <__retarget_lock_release_recursive>
d00566e6:	bf00      	nop
d00566e8:	d00fd684 	.word	0xd00fd684

d00566ec <_realloc_r>:
d00566ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00566ee:	4607      	mov	r7, r0
d00566f0:	4614      	mov	r4, r2
d00566f2:	460e      	mov	r6, r1
d00566f4:	b921      	cbnz	r1, d0056700 <_realloc_r+0x14>
d00566f6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00566fa:	4611      	mov	r1, r2
d00566fc:	f7ff bd68 	b.w	d00561d0 <_malloc_r>
d0056700:	b922      	cbnz	r2, d005670c <_realloc_r+0x20>
d0056702:	f7ff fd15 	bl	d0056130 <_free_r>
d0056706:	4625      	mov	r5, r4
d0056708:	4628      	mov	r0, r5
d005670a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005670c:	f000 fdca 	bl	d00572a4 <_malloc_usable_size_r>
d0056710:	42a0      	cmp	r0, r4
d0056712:	d20f      	bcs.n	d0056734 <_realloc_r+0x48>
d0056714:	4621      	mov	r1, r4
d0056716:	4638      	mov	r0, r7
d0056718:	f7ff fd5a 	bl	d00561d0 <_malloc_r>
d005671c:	4605      	mov	r5, r0
d005671e:	2800      	cmp	r0, #0
d0056720:	d0f2      	beq.n	d0056708 <_realloc_r+0x1c>
d0056722:	4631      	mov	r1, r6
d0056724:	4622      	mov	r2, r4
d0056726:	f7ff fced 	bl	d0056104 <memcpy>
d005672a:	4631      	mov	r1, r6
d005672c:	4638      	mov	r0, r7
d005672e:	f7ff fcff 	bl	d0056130 <_free_r>
d0056732:	e7e9      	b.n	d0056708 <_realloc_r+0x1c>
d0056734:	4635      	mov	r5, r6
d0056736:	e7e7      	b.n	d0056708 <_realloc_r+0x1c>

d0056738 <__ssputs_r>:
d0056738:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d005673c:	688e      	ldr	r6, [r1, #8]
d005673e:	429e      	cmp	r6, r3
d0056740:	4682      	mov	sl, r0
d0056742:	460c      	mov	r4, r1
d0056744:	4690      	mov	r8, r2
d0056746:	461f      	mov	r7, r3
d0056748:	d838      	bhi.n	d00567bc <__ssputs_r+0x84>
d005674a:	898a      	ldrh	r2, [r1, #12]
d005674c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0056750:	d032      	beq.n	d00567b8 <__ssputs_r+0x80>
d0056752:	6825      	ldr	r5, [r4, #0]
d0056754:	6909      	ldr	r1, [r1, #16]
d0056756:	eba5 0901 	sub.w	r9, r5, r1
d005675a:	6965      	ldr	r5, [r4, #20]
d005675c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0056760:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0056764:	3301      	adds	r3, #1
d0056766:	444b      	add	r3, r9
d0056768:	106d      	asrs	r5, r5, #1
d005676a:	429d      	cmp	r5, r3
d005676c:	bf38      	it	cc
d005676e:	461d      	movcc	r5, r3
d0056770:	0553      	lsls	r3, r2, #21
d0056772:	d531      	bpl.n	d00567d8 <__ssputs_r+0xa0>
d0056774:	4629      	mov	r1, r5
d0056776:	f7ff fd2b 	bl	d00561d0 <_malloc_r>
d005677a:	4606      	mov	r6, r0
d005677c:	b950      	cbnz	r0, d0056794 <__ssputs_r+0x5c>
d005677e:	230c      	movs	r3, #12
d0056780:	f8ca 3000 	str.w	r3, [sl]
d0056784:	89a3      	ldrh	r3, [r4, #12]
d0056786:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d005678a:	81a3      	strh	r3, [r4, #12]
d005678c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056790:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0056794:	6921      	ldr	r1, [r4, #16]
d0056796:	464a      	mov	r2, r9
d0056798:	f7ff fcb4 	bl	d0056104 <memcpy>
d005679c:	89a3      	ldrh	r3, [r4, #12]
d005679e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d00567a2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00567a6:	81a3      	strh	r3, [r4, #12]
d00567a8:	6126      	str	r6, [r4, #16]
d00567aa:	6165      	str	r5, [r4, #20]
d00567ac:	444e      	add	r6, r9
d00567ae:	eba5 0509 	sub.w	r5, r5, r9
d00567b2:	6026      	str	r6, [r4, #0]
d00567b4:	60a5      	str	r5, [r4, #8]
d00567b6:	463e      	mov	r6, r7
d00567b8:	42be      	cmp	r6, r7
d00567ba:	d900      	bls.n	d00567be <__ssputs_r+0x86>
d00567bc:	463e      	mov	r6, r7
d00567be:	4632      	mov	r2, r6
d00567c0:	6820      	ldr	r0, [r4, #0]
d00567c2:	4641      	mov	r1, r8
d00567c4:	f000 fd54 	bl	d0057270 <memmove>
d00567c8:	68a3      	ldr	r3, [r4, #8]
d00567ca:	6822      	ldr	r2, [r4, #0]
d00567cc:	1b9b      	subs	r3, r3, r6
d00567ce:	4432      	add	r2, r6
d00567d0:	60a3      	str	r3, [r4, #8]
d00567d2:	6022      	str	r2, [r4, #0]
d00567d4:	2000      	movs	r0, #0
d00567d6:	e7db      	b.n	d0056790 <__ssputs_r+0x58>
d00567d8:	462a      	mov	r2, r5
d00567da:	f7ff ff87 	bl	d00566ec <_realloc_r>
d00567de:	4606      	mov	r6, r0
d00567e0:	2800      	cmp	r0, #0
d00567e2:	d1e1      	bne.n	d00567a8 <__ssputs_r+0x70>
d00567e4:	6921      	ldr	r1, [r4, #16]
d00567e6:	4650      	mov	r0, sl
d00567e8:	f7ff fca2 	bl	d0056130 <_free_r>
d00567ec:	e7c7      	b.n	d005677e <__ssputs_r+0x46>
	...

d00567f0 <_svfiprintf_r>:
d00567f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00567f4:	4698      	mov	r8, r3
d00567f6:	898b      	ldrh	r3, [r1, #12]
d00567f8:	061b      	lsls	r3, r3, #24
d00567fa:	b09d      	sub	sp, #116	; 0x74
d00567fc:	4607      	mov	r7, r0
d00567fe:	460d      	mov	r5, r1
d0056800:	4614      	mov	r4, r2
d0056802:	d50e      	bpl.n	d0056822 <_svfiprintf_r+0x32>
d0056804:	690b      	ldr	r3, [r1, #16]
d0056806:	b963      	cbnz	r3, d0056822 <_svfiprintf_r+0x32>
d0056808:	2140      	movs	r1, #64	; 0x40
d005680a:	f7ff fce1 	bl	d00561d0 <_malloc_r>
d005680e:	6028      	str	r0, [r5, #0]
d0056810:	6128      	str	r0, [r5, #16]
d0056812:	b920      	cbnz	r0, d005681e <_svfiprintf_r+0x2e>
d0056814:	230c      	movs	r3, #12
d0056816:	603b      	str	r3, [r7, #0]
d0056818:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005681c:	e0d1      	b.n	d00569c2 <_svfiprintf_r+0x1d2>
d005681e:	2340      	movs	r3, #64	; 0x40
d0056820:	616b      	str	r3, [r5, #20]
d0056822:	2300      	movs	r3, #0
d0056824:	9309      	str	r3, [sp, #36]	; 0x24
d0056826:	2320      	movs	r3, #32
d0056828:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d005682c:	f8cd 800c 	str.w	r8, [sp, #12]
d0056830:	2330      	movs	r3, #48	; 0x30
d0056832:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00569dc <_svfiprintf_r+0x1ec>
d0056836:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d005683a:	f04f 0901 	mov.w	r9, #1
d005683e:	4623      	mov	r3, r4
d0056840:	469a      	mov	sl, r3
d0056842:	f813 2b01 	ldrb.w	r2, [r3], #1
d0056846:	b10a      	cbz	r2, d005684c <_svfiprintf_r+0x5c>
d0056848:	2a25      	cmp	r2, #37	; 0x25
d005684a:	d1f9      	bne.n	d0056840 <_svfiprintf_r+0x50>
d005684c:	ebba 0b04 	subs.w	fp, sl, r4
d0056850:	d00b      	beq.n	d005686a <_svfiprintf_r+0x7a>
d0056852:	465b      	mov	r3, fp
d0056854:	4622      	mov	r2, r4
d0056856:	4629      	mov	r1, r5
d0056858:	4638      	mov	r0, r7
d005685a:	f7ff ff6d 	bl	d0056738 <__ssputs_r>
d005685e:	3001      	adds	r0, #1
d0056860:	f000 80aa 	beq.w	d00569b8 <_svfiprintf_r+0x1c8>
d0056864:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0056866:	445a      	add	r2, fp
d0056868:	9209      	str	r2, [sp, #36]	; 0x24
d005686a:	f89a 3000 	ldrb.w	r3, [sl]
d005686e:	2b00      	cmp	r3, #0
d0056870:	f000 80a2 	beq.w	d00569b8 <_svfiprintf_r+0x1c8>
d0056874:	2300      	movs	r3, #0
d0056876:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d005687a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d005687e:	f10a 0a01 	add.w	sl, sl, #1
d0056882:	9304      	str	r3, [sp, #16]
d0056884:	9307      	str	r3, [sp, #28]
d0056886:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d005688a:	931a      	str	r3, [sp, #104]	; 0x68
d005688c:	4654      	mov	r4, sl
d005688e:	2205      	movs	r2, #5
d0056890:	f814 1b01 	ldrb.w	r1, [r4], #1
d0056894:	4851      	ldr	r0, [pc, #324]	; (d00569dc <_svfiprintf_r+0x1ec>)
d0056896:	f000 fc9b 	bl	d00571d0 <memchr>
d005689a:	9a04      	ldr	r2, [sp, #16]
d005689c:	b9d8      	cbnz	r0, d00568d6 <_svfiprintf_r+0xe6>
d005689e:	06d0      	lsls	r0, r2, #27
d00568a0:	bf44      	itt	mi
d00568a2:	2320      	movmi	r3, #32
d00568a4:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00568a8:	0711      	lsls	r1, r2, #28
d00568aa:	bf44      	itt	mi
d00568ac:	232b      	movmi	r3, #43	; 0x2b
d00568ae:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00568b2:	f89a 3000 	ldrb.w	r3, [sl]
d00568b6:	2b2a      	cmp	r3, #42	; 0x2a
d00568b8:	d015      	beq.n	d00568e6 <_svfiprintf_r+0xf6>
d00568ba:	9a07      	ldr	r2, [sp, #28]
d00568bc:	4654      	mov	r4, sl
d00568be:	2000      	movs	r0, #0
d00568c0:	f04f 0c0a 	mov.w	ip, #10
d00568c4:	4621      	mov	r1, r4
d00568c6:	f811 3b01 	ldrb.w	r3, [r1], #1
d00568ca:	3b30      	subs	r3, #48	; 0x30
d00568cc:	2b09      	cmp	r3, #9
d00568ce:	d94e      	bls.n	d005696e <_svfiprintf_r+0x17e>
d00568d0:	b1b0      	cbz	r0, d0056900 <_svfiprintf_r+0x110>
d00568d2:	9207      	str	r2, [sp, #28]
d00568d4:	e014      	b.n	d0056900 <_svfiprintf_r+0x110>
d00568d6:	eba0 0308 	sub.w	r3, r0, r8
d00568da:	fa09 f303 	lsl.w	r3, r9, r3
d00568de:	4313      	orrs	r3, r2
d00568e0:	9304      	str	r3, [sp, #16]
d00568e2:	46a2      	mov	sl, r4
d00568e4:	e7d2      	b.n	d005688c <_svfiprintf_r+0x9c>
d00568e6:	9b03      	ldr	r3, [sp, #12]
d00568e8:	1d19      	adds	r1, r3, #4
d00568ea:	681b      	ldr	r3, [r3, #0]
d00568ec:	9103      	str	r1, [sp, #12]
d00568ee:	2b00      	cmp	r3, #0
d00568f0:	bfbb      	ittet	lt
d00568f2:	425b      	neglt	r3, r3
d00568f4:	f042 0202 	orrlt.w	r2, r2, #2
d00568f8:	9307      	strge	r3, [sp, #28]
d00568fa:	9307      	strlt	r3, [sp, #28]
d00568fc:	bfb8      	it	lt
d00568fe:	9204      	strlt	r2, [sp, #16]
d0056900:	7823      	ldrb	r3, [r4, #0]
d0056902:	2b2e      	cmp	r3, #46	; 0x2e
d0056904:	d10c      	bne.n	d0056920 <_svfiprintf_r+0x130>
d0056906:	7863      	ldrb	r3, [r4, #1]
d0056908:	2b2a      	cmp	r3, #42	; 0x2a
d005690a:	d135      	bne.n	d0056978 <_svfiprintf_r+0x188>
d005690c:	9b03      	ldr	r3, [sp, #12]
d005690e:	1d1a      	adds	r2, r3, #4
d0056910:	681b      	ldr	r3, [r3, #0]
d0056912:	9203      	str	r2, [sp, #12]
d0056914:	2b00      	cmp	r3, #0
d0056916:	bfb8      	it	lt
d0056918:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d005691c:	3402      	adds	r4, #2
d005691e:	9305      	str	r3, [sp, #20]
d0056920:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00569ec <_svfiprintf_r+0x1fc>
d0056924:	7821      	ldrb	r1, [r4, #0]
d0056926:	2203      	movs	r2, #3
d0056928:	4650      	mov	r0, sl
d005692a:	f000 fc51 	bl	d00571d0 <memchr>
d005692e:	b140      	cbz	r0, d0056942 <_svfiprintf_r+0x152>
d0056930:	2340      	movs	r3, #64	; 0x40
d0056932:	eba0 000a 	sub.w	r0, r0, sl
d0056936:	fa03 f000 	lsl.w	r0, r3, r0
d005693a:	9b04      	ldr	r3, [sp, #16]
d005693c:	4303      	orrs	r3, r0
d005693e:	3401      	adds	r4, #1
d0056940:	9304      	str	r3, [sp, #16]
d0056942:	f814 1b01 	ldrb.w	r1, [r4], #1
d0056946:	4826      	ldr	r0, [pc, #152]	; (d00569e0 <_svfiprintf_r+0x1f0>)
d0056948:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d005694c:	2206      	movs	r2, #6
d005694e:	f000 fc3f 	bl	d00571d0 <memchr>
d0056952:	2800      	cmp	r0, #0
d0056954:	d038      	beq.n	d00569c8 <_svfiprintf_r+0x1d8>
d0056956:	4b23      	ldr	r3, [pc, #140]	; (d00569e4 <_svfiprintf_r+0x1f4>)
d0056958:	bb1b      	cbnz	r3, d00569a2 <_svfiprintf_r+0x1b2>
d005695a:	9b03      	ldr	r3, [sp, #12]
d005695c:	3307      	adds	r3, #7
d005695e:	f023 0307 	bic.w	r3, r3, #7
d0056962:	3308      	adds	r3, #8
d0056964:	9303      	str	r3, [sp, #12]
d0056966:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0056968:	4433      	add	r3, r6
d005696a:	9309      	str	r3, [sp, #36]	; 0x24
d005696c:	e767      	b.n	d005683e <_svfiprintf_r+0x4e>
d005696e:	fb0c 3202 	mla	r2, ip, r2, r3
d0056972:	460c      	mov	r4, r1
d0056974:	2001      	movs	r0, #1
d0056976:	e7a5      	b.n	d00568c4 <_svfiprintf_r+0xd4>
d0056978:	2300      	movs	r3, #0
d005697a:	3401      	adds	r4, #1
d005697c:	9305      	str	r3, [sp, #20]
d005697e:	4619      	mov	r1, r3
d0056980:	f04f 0c0a 	mov.w	ip, #10
d0056984:	4620      	mov	r0, r4
d0056986:	f810 2b01 	ldrb.w	r2, [r0], #1
d005698a:	3a30      	subs	r2, #48	; 0x30
d005698c:	2a09      	cmp	r2, #9
d005698e:	d903      	bls.n	d0056998 <_svfiprintf_r+0x1a8>
d0056990:	2b00      	cmp	r3, #0
d0056992:	d0c5      	beq.n	d0056920 <_svfiprintf_r+0x130>
d0056994:	9105      	str	r1, [sp, #20]
d0056996:	e7c3      	b.n	d0056920 <_svfiprintf_r+0x130>
d0056998:	fb0c 2101 	mla	r1, ip, r1, r2
d005699c:	4604      	mov	r4, r0
d005699e:	2301      	movs	r3, #1
d00569a0:	e7f0      	b.n	d0056984 <_svfiprintf_r+0x194>
d00569a2:	ab03      	add	r3, sp, #12
d00569a4:	9300      	str	r3, [sp, #0]
d00569a6:	462a      	mov	r2, r5
d00569a8:	4b0f      	ldr	r3, [pc, #60]	; (d00569e8 <_svfiprintf_r+0x1f8>)
d00569aa:	a904      	add	r1, sp, #16
d00569ac:	4638      	mov	r0, r7
d00569ae:	f3af 8000 	nop.w
d00569b2:	1c42      	adds	r2, r0, #1
d00569b4:	4606      	mov	r6, r0
d00569b6:	d1d6      	bne.n	d0056966 <_svfiprintf_r+0x176>
d00569b8:	89ab      	ldrh	r3, [r5, #12]
d00569ba:	065b      	lsls	r3, r3, #25
d00569bc:	f53f af2c 	bmi.w	d0056818 <_svfiprintf_r+0x28>
d00569c0:	9809      	ldr	r0, [sp, #36]	; 0x24
d00569c2:	b01d      	add	sp, #116	; 0x74
d00569c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00569c8:	ab03      	add	r3, sp, #12
d00569ca:	9300      	str	r3, [sp, #0]
d00569cc:	462a      	mov	r2, r5
d00569ce:	4b06      	ldr	r3, [pc, #24]	; (d00569e8 <_svfiprintf_r+0x1f8>)
d00569d0:	a904      	add	r1, sp, #16
d00569d2:	4638      	mov	r0, r7
d00569d4:	f000 f9d4 	bl	d0056d80 <_printf_i>
d00569d8:	e7eb      	b.n	d00569b2 <_svfiprintf_r+0x1c2>
d00569da:	bf00      	nop
d00569dc:	d005865e 	.word	0xd005865e
d00569e0:	d0058668 	.word	0xd0058668
d00569e4:	00000000 	.word	0x00000000
d00569e8:	d0056739 	.word	0xd0056739
d00569ec:	d0058664 	.word	0xd0058664

d00569f0 <__sfputc_r>:
d00569f0:	6893      	ldr	r3, [r2, #8]
d00569f2:	3b01      	subs	r3, #1
d00569f4:	2b00      	cmp	r3, #0
d00569f6:	b410      	push	{r4}
d00569f8:	6093      	str	r3, [r2, #8]
d00569fa:	da08      	bge.n	d0056a0e <__sfputc_r+0x1e>
d00569fc:	6994      	ldr	r4, [r2, #24]
d00569fe:	42a3      	cmp	r3, r4
d0056a00:	db01      	blt.n	d0056a06 <__sfputc_r+0x16>
d0056a02:	290a      	cmp	r1, #10
d0056a04:	d103      	bne.n	d0056a0e <__sfputc_r+0x1e>
d0056a06:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056a0a:	f000 baf1 	b.w	d0056ff0 <__swbuf_r>
d0056a0e:	6813      	ldr	r3, [r2, #0]
d0056a10:	1c58      	adds	r0, r3, #1
d0056a12:	6010      	str	r0, [r2, #0]
d0056a14:	7019      	strb	r1, [r3, #0]
d0056a16:	4608      	mov	r0, r1
d0056a18:	f85d 4b04 	ldr.w	r4, [sp], #4
d0056a1c:	4770      	bx	lr

d0056a1e <__sfputs_r>:
d0056a1e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0056a20:	4606      	mov	r6, r0
d0056a22:	460f      	mov	r7, r1
d0056a24:	4614      	mov	r4, r2
d0056a26:	18d5      	adds	r5, r2, r3
d0056a28:	42ac      	cmp	r4, r5
d0056a2a:	d101      	bne.n	d0056a30 <__sfputs_r+0x12>
d0056a2c:	2000      	movs	r0, #0
d0056a2e:	e007      	b.n	d0056a40 <__sfputs_r+0x22>
d0056a30:	f814 1b01 	ldrb.w	r1, [r4], #1
d0056a34:	463a      	mov	r2, r7
d0056a36:	4630      	mov	r0, r6
d0056a38:	f7ff ffda 	bl	d00569f0 <__sfputc_r>
d0056a3c:	1c43      	adds	r3, r0, #1
d0056a3e:	d1f3      	bne.n	d0056a28 <__sfputs_r+0xa>
d0056a40:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0056a44 <_vfiprintf_r>:
d0056a44:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056a48:	460d      	mov	r5, r1
d0056a4a:	b09d      	sub	sp, #116	; 0x74
d0056a4c:	4614      	mov	r4, r2
d0056a4e:	4698      	mov	r8, r3
d0056a50:	4606      	mov	r6, r0
d0056a52:	b118      	cbz	r0, d0056a5c <_vfiprintf_r+0x18>
d0056a54:	6983      	ldr	r3, [r0, #24]
d0056a56:	b90b      	cbnz	r3, d0056a5c <_vfiprintf_r+0x18>
d0056a58:	f7ff fa94 	bl	d0055f84 <__sinit>
d0056a5c:	4b89      	ldr	r3, [pc, #548]	; (d0056c84 <_vfiprintf_r+0x240>)
d0056a5e:	429d      	cmp	r5, r3
d0056a60:	d11b      	bne.n	d0056a9a <_vfiprintf_r+0x56>
d0056a62:	6875      	ldr	r5, [r6, #4]
d0056a64:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0056a66:	07d9      	lsls	r1, r3, #31
d0056a68:	d405      	bmi.n	d0056a76 <_vfiprintf_r+0x32>
d0056a6a:	89ab      	ldrh	r3, [r5, #12]
d0056a6c:	059a      	lsls	r2, r3, #22
d0056a6e:	d402      	bmi.n	d0056a76 <_vfiprintf_r+0x32>
d0056a70:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0056a72:	f7ff fb26 	bl	d00560c2 <__retarget_lock_acquire_recursive>
d0056a76:	89ab      	ldrh	r3, [r5, #12]
d0056a78:	071b      	lsls	r3, r3, #28
d0056a7a:	d501      	bpl.n	d0056a80 <_vfiprintf_r+0x3c>
d0056a7c:	692b      	ldr	r3, [r5, #16]
d0056a7e:	b9eb      	cbnz	r3, d0056abc <_vfiprintf_r+0x78>
d0056a80:	4629      	mov	r1, r5
d0056a82:	4630      	mov	r0, r6
d0056a84:	f000 fb06 	bl	d0057094 <__swsetup_r>
d0056a88:	b1c0      	cbz	r0, d0056abc <_vfiprintf_r+0x78>
d0056a8a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0056a8c:	07dc      	lsls	r4, r3, #31
d0056a8e:	d50e      	bpl.n	d0056aae <_vfiprintf_r+0x6a>
d0056a90:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056a94:	b01d      	add	sp, #116	; 0x74
d0056a96:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056a9a:	4b7b      	ldr	r3, [pc, #492]	; (d0056c88 <_vfiprintf_r+0x244>)
d0056a9c:	429d      	cmp	r5, r3
d0056a9e:	d101      	bne.n	d0056aa4 <_vfiprintf_r+0x60>
d0056aa0:	68b5      	ldr	r5, [r6, #8]
d0056aa2:	e7df      	b.n	d0056a64 <_vfiprintf_r+0x20>
d0056aa4:	4b79      	ldr	r3, [pc, #484]	; (d0056c8c <_vfiprintf_r+0x248>)
d0056aa6:	429d      	cmp	r5, r3
d0056aa8:	bf08      	it	eq
d0056aaa:	68f5      	ldreq	r5, [r6, #12]
d0056aac:	e7da      	b.n	d0056a64 <_vfiprintf_r+0x20>
d0056aae:	89ab      	ldrh	r3, [r5, #12]
d0056ab0:	0598      	lsls	r0, r3, #22
d0056ab2:	d4ed      	bmi.n	d0056a90 <_vfiprintf_r+0x4c>
d0056ab4:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0056ab6:	f7ff fb05 	bl	d00560c4 <__retarget_lock_release_recursive>
d0056aba:	e7e9      	b.n	d0056a90 <_vfiprintf_r+0x4c>
d0056abc:	2300      	movs	r3, #0
d0056abe:	9309      	str	r3, [sp, #36]	; 0x24
d0056ac0:	2320      	movs	r3, #32
d0056ac2:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0056ac6:	f8cd 800c 	str.w	r8, [sp, #12]
d0056aca:	2330      	movs	r3, #48	; 0x30
d0056acc:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d0056c90 <_vfiprintf_r+0x24c>
d0056ad0:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0056ad4:	f04f 0901 	mov.w	r9, #1
d0056ad8:	4623      	mov	r3, r4
d0056ada:	469a      	mov	sl, r3
d0056adc:	f813 2b01 	ldrb.w	r2, [r3], #1
d0056ae0:	b10a      	cbz	r2, d0056ae6 <_vfiprintf_r+0xa2>
d0056ae2:	2a25      	cmp	r2, #37	; 0x25
d0056ae4:	d1f9      	bne.n	d0056ada <_vfiprintf_r+0x96>
d0056ae6:	ebba 0b04 	subs.w	fp, sl, r4
d0056aea:	d00b      	beq.n	d0056b04 <_vfiprintf_r+0xc0>
d0056aec:	465b      	mov	r3, fp
d0056aee:	4622      	mov	r2, r4
d0056af0:	4629      	mov	r1, r5
d0056af2:	4630      	mov	r0, r6
d0056af4:	f7ff ff93 	bl	d0056a1e <__sfputs_r>
d0056af8:	3001      	adds	r0, #1
d0056afa:	f000 80aa 	beq.w	d0056c52 <_vfiprintf_r+0x20e>
d0056afe:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0056b00:	445a      	add	r2, fp
d0056b02:	9209      	str	r2, [sp, #36]	; 0x24
d0056b04:	f89a 3000 	ldrb.w	r3, [sl]
d0056b08:	2b00      	cmp	r3, #0
d0056b0a:	f000 80a2 	beq.w	d0056c52 <_vfiprintf_r+0x20e>
d0056b0e:	2300      	movs	r3, #0
d0056b10:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0056b14:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0056b18:	f10a 0a01 	add.w	sl, sl, #1
d0056b1c:	9304      	str	r3, [sp, #16]
d0056b1e:	9307      	str	r3, [sp, #28]
d0056b20:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0056b24:	931a      	str	r3, [sp, #104]	; 0x68
d0056b26:	4654      	mov	r4, sl
d0056b28:	2205      	movs	r2, #5
d0056b2a:	f814 1b01 	ldrb.w	r1, [r4], #1
d0056b2e:	4858      	ldr	r0, [pc, #352]	; (d0056c90 <_vfiprintf_r+0x24c>)
d0056b30:	f000 fb4e 	bl	d00571d0 <memchr>
d0056b34:	9a04      	ldr	r2, [sp, #16]
d0056b36:	b9d8      	cbnz	r0, d0056b70 <_vfiprintf_r+0x12c>
d0056b38:	06d1      	lsls	r1, r2, #27
d0056b3a:	bf44      	itt	mi
d0056b3c:	2320      	movmi	r3, #32
d0056b3e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0056b42:	0713      	lsls	r3, r2, #28
d0056b44:	bf44      	itt	mi
d0056b46:	232b      	movmi	r3, #43	; 0x2b
d0056b48:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0056b4c:	f89a 3000 	ldrb.w	r3, [sl]
d0056b50:	2b2a      	cmp	r3, #42	; 0x2a
d0056b52:	d015      	beq.n	d0056b80 <_vfiprintf_r+0x13c>
d0056b54:	9a07      	ldr	r2, [sp, #28]
d0056b56:	4654      	mov	r4, sl
d0056b58:	2000      	movs	r0, #0
d0056b5a:	f04f 0c0a 	mov.w	ip, #10
d0056b5e:	4621      	mov	r1, r4
d0056b60:	f811 3b01 	ldrb.w	r3, [r1], #1
d0056b64:	3b30      	subs	r3, #48	; 0x30
d0056b66:	2b09      	cmp	r3, #9
d0056b68:	d94e      	bls.n	d0056c08 <_vfiprintf_r+0x1c4>
d0056b6a:	b1b0      	cbz	r0, d0056b9a <_vfiprintf_r+0x156>
d0056b6c:	9207      	str	r2, [sp, #28]
d0056b6e:	e014      	b.n	d0056b9a <_vfiprintf_r+0x156>
d0056b70:	eba0 0308 	sub.w	r3, r0, r8
d0056b74:	fa09 f303 	lsl.w	r3, r9, r3
d0056b78:	4313      	orrs	r3, r2
d0056b7a:	9304      	str	r3, [sp, #16]
d0056b7c:	46a2      	mov	sl, r4
d0056b7e:	e7d2      	b.n	d0056b26 <_vfiprintf_r+0xe2>
d0056b80:	9b03      	ldr	r3, [sp, #12]
d0056b82:	1d19      	adds	r1, r3, #4
d0056b84:	681b      	ldr	r3, [r3, #0]
d0056b86:	9103      	str	r1, [sp, #12]
d0056b88:	2b00      	cmp	r3, #0
d0056b8a:	bfbb      	ittet	lt
d0056b8c:	425b      	neglt	r3, r3
d0056b8e:	f042 0202 	orrlt.w	r2, r2, #2
d0056b92:	9307      	strge	r3, [sp, #28]
d0056b94:	9307      	strlt	r3, [sp, #28]
d0056b96:	bfb8      	it	lt
d0056b98:	9204      	strlt	r2, [sp, #16]
d0056b9a:	7823      	ldrb	r3, [r4, #0]
d0056b9c:	2b2e      	cmp	r3, #46	; 0x2e
d0056b9e:	d10c      	bne.n	d0056bba <_vfiprintf_r+0x176>
d0056ba0:	7863      	ldrb	r3, [r4, #1]
d0056ba2:	2b2a      	cmp	r3, #42	; 0x2a
d0056ba4:	d135      	bne.n	d0056c12 <_vfiprintf_r+0x1ce>
d0056ba6:	9b03      	ldr	r3, [sp, #12]
d0056ba8:	1d1a      	adds	r2, r3, #4
d0056baa:	681b      	ldr	r3, [r3, #0]
d0056bac:	9203      	str	r2, [sp, #12]
d0056bae:	2b00      	cmp	r3, #0
d0056bb0:	bfb8      	it	lt
d0056bb2:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0056bb6:	3402      	adds	r4, #2
d0056bb8:	9305      	str	r3, [sp, #20]
d0056bba:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d0056ca0 <_vfiprintf_r+0x25c>
d0056bbe:	7821      	ldrb	r1, [r4, #0]
d0056bc0:	2203      	movs	r2, #3
d0056bc2:	4650      	mov	r0, sl
d0056bc4:	f000 fb04 	bl	d00571d0 <memchr>
d0056bc8:	b140      	cbz	r0, d0056bdc <_vfiprintf_r+0x198>
d0056bca:	2340      	movs	r3, #64	; 0x40
d0056bcc:	eba0 000a 	sub.w	r0, r0, sl
d0056bd0:	fa03 f000 	lsl.w	r0, r3, r0
d0056bd4:	9b04      	ldr	r3, [sp, #16]
d0056bd6:	4303      	orrs	r3, r0
d0056bd8:	3401      	adds	r4, #1
d0056bda:	9304      	str	r3, [sp, #16]
d0056bdc:	f814 1b01 	ldrb.w	r1, [r4], #1
d0056be0:	482c      	ldr	r0, [pc, #176]	; (d0056c94 <_vfiprintf_r+0x250>)
d0056be2:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0056be6:	2206      	movs	r2, #6
d0056be8:	f000 faf2 	bl	d00571d0 <memchr>
d0056bec:	2800      	cmp	r0, #0
d0056bee:	d03f      	beq.n	d0056c70 <_vfiprintf_r+0x22c>
d0056bf0:	4b29      	ldr	r3, [pc, #164]	; (d0056c98 <_vfiprintf_r+0x254>)
d0056bf2:	bb1b      	cbnz	r3, d0056c3c <_vfiprintf_r+0x1f8>
d0056bf4:	9b03      	ldr	r3, [sp, #12]
d0056bf6:	3307      	adds	r3, #7
d0056bf8:	f023 0307 	bic.w	r3, r3, #7
d0056bfc:	3308      	adds	r3, #8
d0056bfe:	9303      	str	r3, [sp, #12]
d0056c00:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0056c02:	443b      	add	r3, r7
d0056c04:	9309      	str	r3, [sp, #36]	; 0x24
d0056c06:	e767      	b.n	d0056ad8 <_vfiprintf_r+0x94>
d0056c08:	fb0c 3202 	mla	r2, ip, r2, r3
d0056c0c:	460c      	mov	r4, r1
d0056c0e:	2001      	movs	r0, #1
d0056c10:	e7a5      	b.n	d0056b5e <_vfiprintf_r+0x11a>
d0056c12:	2300      	movs	r3, #0
d0056c14:	3401      	adds	r4, #1
d0056c16:	9305      	str	r3, [sp, #20]
d0056c18:	4619      	mov	r1, r3
d0056c1a:	f04f 0c0a 	mov.w	ip, #10
d0056c1e:	4620      	mov	r0, r4
d0056c20:	f810 2b01 	ldrb.w	r2, [r0], #1
d0056c24:	3a30      	subs	r2, #48	; 0x30
d0056c26:	2a09      	cmp	r2, #9
d0056c28:	d903      	bls.n	d0056c32 <_vfiprintf_r+0x1ee>
d0056c2a:	2b00      	cmp	r3, #0
d0056c2c:	d0c5      	beq.n	d0056bba <_vfiprintf_r+0x176>
d0056c2e:	9105      	str	r1, [sp, #20]
d0056c30:	e7c3      	b.n	d0056bba <_vfiprintf_r+0x176>
d0056c32:	fb0c 2101 	mla	r1, ip, r1, r2
d0056c36:	4604      	mov	r4, r0
d0056c38:	2301      	movs	r3, #1
d0056c3a:	e7f0      	b.n	d0056c1e <_vfiprintf_r+0x1da>
d0056c3c:	ab03      	add	r3, sp, #12
d0056c3e:	9300      	str	r3, [sp, #0]
d0056c40:	462a      	mov	r2, r5
d0056c42:	4b16      	ldr	r3, [pc, #88]	; (d0056c9c <_vfiprintf_r+0x258>)
d0056c44:	a904      	add	r1, sp, #16
d0056c46:	4630      	mov	r0, r6
d0056c48:	f3af 8000 	nop.w
d0056c4c:	4607      	mov	r7, r0
d0056c4e:	1c78      	adds	r0, r7, #1
d0056c50:	d1d6      	bne.n	d0056c00 <_vfiprintf_r+0x1bc>
d0056c52:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0056c54:	07d9      	lsls	r1, r3, #31
d0056c56:	d405      	bmi.n	d0056c64 <_vfiprintf_r+0x220>
d0056c58:	89ab      	ldrh	r3, [r5, #12]
d0056c5a:	059a      	lsls	r2, r3, #22
d0056c5c:	d402      	bmi.n	d0056c64 <_vfiprintf_r+0x220>
d0056c5e:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0056c60:	f7ff fa30 	bl	d00560c4 <__retarget_lock_release_recursive>
d0056c64:	89ab      	ldrh	r3, [r5, #12]
d0056c66:	065b      	lsls	r3, r3, #25
d0056c68:	f53f af12 	bmi.w	d0056a90 <_vfiprintf_r+0x4c>
d0056c6c:	9809      	ldr	r0, [sp, #36]	; 0x24
d0056c6e:	e711      	b.n	d0056a94 <_vfiprintf_r+0x50>
d0056c70:	ab03      	add	r3, sp, #12
d0056c72:	9300      	str	r3, [sp, #0]
d0056c74:	462a      	mov	r2, r5
d0056c76:	4b09      	ldr	r3, [pc, #36]	; (d0056c9c <_vfiprintf_r+0x258>)
d0056c78:	a904      	add	r1, sp, #16
d0056c7a:	4630      	mov	r0, r6
d0056c7c:	f000 f880 	bl	d0056d80 <_printf_i>
d0056c80:	e7e4      	b.n	d0056c4c <_vfiprintf_r+0x208>
d0056c82:	bf00      	nop
d0056c84:	d0058568 	.word	0xd0058568
d0056c88:	d0058588 	.word	0xd0058588
d0056c8c:	d0058548 	.word	0xd0058548
d0056c90:	d005865e 	.word	0xd005865e
d0056c94:	d0058668 	.word	0xd0058668
d0056c98:	00000000 	.word	0x00000000
d0056c9c:	d0056a1f 	.word	0xd0056a1f
d0056ca0:	d0058664 	.word	0xd0058664

d0056ca4 <_printf_common>:
d0056ca4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0056ca8:	4616      	mov	r6, r2
d0056caa:	4699      	mov	r9, r3
d0056cac:	688a      	ldr	r2, [r1, #8]
d0056cae:	690b      	ldr	r3, [r1, #16]
d0056cb0:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0056cb4:	4293      	cmp	r3, r2
d0056cb6:	bfb8      	it	lt
d0056cb8:	4613      	movlt	r3, r2
d0056cba:	6033      	str	r3, [r6, #0]
d0056cbc:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0056cc0:	4607      	mov	r7, r0
d0056cc2:	460c      	mov	r4, r1
d0056cc4:	b10a      	cbz	r2, d0056cca <_printf_common+0x26>
d0056cc6:	3301      	adds	r3, #1
d0056cc8:	6033      	str	r3, [r6, #0]
d0056cca:	6823      	ldr	r3, [r4, #0]
d0056ccc:	0699      	lsls	r1, r3, #26
d0056cce:	bf42      	ittt	mi
d0056cd0:	6833      	ldrmi	r3, [r6, #0]
d0056cd2:	3302      	addmi	r3, #2
d0056cd4:	6033      	strmi	r3, [r6, #0]
d0056cd6:	6825      	ldr	r5, [r4, #0]
d0056cd8:	f015 0506 	ands.w	r5, r5, #6
d0056cdc:	d106      	bne.n	d0056cec <_printf_common+0x48>
d0056cde:	f104 0a19 	add.w	sl, r4, #25
d0056ce2:	68e3      	ldr	r3, [r4, #12]
d0056ce4:	6832      	ldr	r2, [r6, #0]
d0056ce6:	1a9b      	subs	r3, r3, r2
d0056ce8:	42ab      	cmp	r3, r5
d0056cea:	dc26      	bgt.n	d0056d3a <_printf_common+0x96>
d0056cec:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0056cf0:	1e13      	subs	r3, r2, #0
d0056cf2:	6822      	ldr	r2, [r4, #0]
d0056cf4:	bf18      	it	ne
d0056cf6:	2301      	movne	r3, #1
d0056cf8:	0692      	lsls	r2, r2, #26
d0056cfa:	d42b      	bmi.n	d0056d54 <_printf_common+0xb0>
d0056cfc:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0056d00:	4649      	mov	r1, r9
d0056d02:	4638      	mov	r0, r7
d0056d04:	47c0      	blx	r8
d0056d06:	3001      	adds	r0, #1
d0056d08:	d01e      	beq.n	d0056d48 <_printf_common+0xa4>
d0056d0a:	6823      	ldr	r3, [r4, #0]
d0056d0c:	68e5      	ldr	r5, [r4, #12]
d0056d0e:	6832      	ldr	r2, [r6, #0]
d0056d10:	f003 0306 	and.w	r3, r3, #6
d0056d14:	2b04      	cmp	r3, #4
d0056d16:	bf08      	it	eq
d0056d18:	1aad      	subeq	r5, r5, r2
d0056d1a:	68a3      	ldr	r3, [r4, #8]
d0056d1c:	6922      	ldr	r2, [r4, #16]
d0056d1e:	bf0c      	ite	eq
d0056d20:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0056d24:	2500      	movne	r5, #0
d0056d26:	4293      	cmp	r3, r2
d0056d28:	bfc4      	itt	gt
d0056d2a:	1a9b      	subgt	r3, r3, r2
d0056d2c:	18ed      	addgt	r5, r5, r3
d0056d2e:	2600      	movs	r6, #0
d0056d30:	341a      	adds	r4, #26
d0056d32:	42b5      	cmp	r5, r6
d0056d34:	d11a      	bne.n	d0056d6c <_printf_common+0xc8>
d0056d36:	2000      	movs	r0, #0
d0056d38:	e008      	b.n	d0056d4c <_printf_common+0xa8>
d0056d3a:	2301      	movs	r3, #1
d0056d3c:	4652      	mov	r2, sl
d0056d3e:	4649      	mov	r1, r9
d0056d40:	4638      	mov	r0, r7
d0056d42:	47c0      	blx	r8
d0056d44:	3001      	adds	r0, #1
d0056d46:	d103      	bne.n	d0056d50 <_printf_common+0xac>
d0056d48:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056d4c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0056d50:	3501      	adds	r5, #1
d0056d52:	e7c6      	b.n	d0056ce2 <_printf_common+0x3e>
d0056d54:	18e1      	adds	r1, r4, r3
d0056d56:	1c5a      	adds	r2, r3, #1
d0056d58:	2030      	movs	r0, #48	; 0x30
d0056d5a:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0056d5e:	4422      	add	r2, r4
d0056d60:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0056d64:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0056d68:	3302      	adds	r3, #2
d0056d6a:	e7c7      	b.n	d0056cfc <_printf_common+0x58>
d0056d6c:	2301      	movs	r3, #1
d0056d6e:	4622      	mov	r2, r4
d0056d70:	4649      	mov	r1, r9
d0056d72:	4638      	mov	r0, r7
d0056d74:	47c0      	blx	r8
d0056d76:	3001      	adds	r0, #1
d0056d78:	d0e6      	beq.n	d0056d48 <_printf_common+0xa4>
d0056d7a:	3601      	adds	r6, #1
d0056d7c:	e7d9      	b.n	d0056d32 <_printf_common+0x8e>
	...

d0056d80 <_printf_i>:
d0056d80:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0056d84:	460c      	mov	r4, r1
d0056d86:	4691      	mov	r9, r2
d0056d88:	7e27      	ldrb	r7, [r4, #24]
d0056d8a:	990c      	ldr	r1, [sp, #48]	; 0x30
d0056d8c:	2f78      	cmp	r7, #120	; 0x78
d0056d8e:	4680      	mov	r8, r0
d0056d90:	469a      	mov	sl, r3
d0056d92:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0056d96:	d807      	bhi.n	d0056da8 <_printf_i+0x28>
d0056d98:	2f62      	cmp	r7, #98	; 0x62
d0056d9a:	d80a      	bhi.n	d0056db2 <_printf_i+0x32>
d0056d9c:	2f00      	cmp	r7, #0
d0056d9e:	f000 80d8 	beq.w	d0056f52 <_printf_i+0x1d2>
d0056da2:	2f58      	cmp	r7, #88	; 0x58
d0056da4:	f000 80a3 	beq.w	d0056eee <_printf_i+0x16e>
d0056da8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0056dac:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0056db0:	e03a      	b.n	d0056e28 <_printf_i+0xa8>
d0056db2:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0056db6:	2b15      	cmp	r3, #21
d0056db8:	d8f6      	bhi.n	d0056da8 <_printf_i+0x28>
d0056dba:	a001      	add	r0, pc, #4	; (adr r0, d0056dc0 <_printf_i+0x40>)
d0056dbc:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0056dc0:	d0056e19 	.word	0xd0056e19
d0056dc4:	d0056e2d 	.word	0xd0056e2d
d0056dc8:	d0056da9 	.word	0xd0056da9
d0056dcc:	d0056da9 	.word	0xd0056da9
d0056dd0:	d0056da9 	.word	0xd0056da9
d0056dd4:	d0056da9 	.word	0xd0056da9
d0056dd8:	d0056e2d 	.word	0xd0056e2d
d0056ddc:	d0056da9 	.word	0xd0056da9
d0056de0:	d0056da9 	.word	0xd0056da9
d0056de4:	d0056da9 	.word	0xd0056da9
d0056de8:	d0056da9 	.word	0xd0056da9
d0056dec:	d0056f39 	.word	0xd0056f39
d0056df0:	d0056e5d 	.word	0xd0056e5d
d0056df4:	d0056f1b 	.word	0xd0056f1b
d0056df8:	d0056da9 	.word	0xd0056da9
d0056dfc:	d0056da9 	.word	0xd0056da9
d0056e00:	d0056f5b 	.word	0xd0056f5b
d0056e04:	d0056da9 	.word	0xd0056da9
d0056e08:	d0056e5d 	.word	0xd0056e5d
d0056e0c:	d0056da9 	.word	0xd0056da9
d0056e10:	d0056da9 	.word	0xd0056da9
d0056e14:	d0056f23 	.word	0xd0056f23
d0056e18:	680b      	ldr	r3, [r1, #0]
d0056e1a:	1d1a      	adds	r2, r3, #4
d0056e1c:	681b      	ldr	r3, [r3, #0]
d0056e1e:	600a      	str	r2, [r1, #0]
d0056e20:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0056e24:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0056e28:	2301      	movs	r3, #1
d0056e2a:	e0a3      	b.n	d0056f74 <_printf_i+0x1f4>
d0056e2c:	6825      	ldr	r5, [r4, #0]
d0056e2e:	6808      	ldr	r0, [r1, #0]
d0056e30:	062e      	lsls	r6, r5, #24
d0056e32:	f100 0304 	add.w	r3, r0, #4
d0056e36:	d50a      	bpl.n	d0056e4e <_printf_i+0xce>
d0056e38:	6805      	ldr	r5, [r0, #0]
d0056e3a:	600b      	str	r3, [r1, #0]
d0056e3c:	2d00      	cmp	r5, #0
d0056e3e:	da03      	bge.n	d0056e48 <_printf_i+0xc8>
d0056e40:	232d      	movs	r3, #45	; 0x2d
d0056e42:	426d      	negs	r5, r5
d0056e44:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0056e48:	485e      	ldr	r0, [pc, #376]	; (d0056fc4 <_printf_i+0x244>)
d0056e4a:	230a      	movs	r3, #10
d0056e4c:	e019      	b.n	d0056e82 <_printf_i+0x102>
d0056e4e:	f015 0f40 	tst.w	r5, #64	; 0x40
d0056e52:	6805      	ldr	r5, [r0, #0]
d0056e54:	600b      	str	r3, [r1, #0]
d0056e56:	bf18      	it	ne
d0056e58:	b22d      	sxthne	r5, r5
d0056e5a:	e7ef      	b.n	d0056e3c <_printf_i+0xbc>
d0056e5c:	680b      	ldr	r3, [r1, #0]
d0056e5e:	6825      	ldr	r5, [r4, #0]
d0056e60:	1d18      	adds	r0, r3, #4
d0056e62:	6008      	str	r0, [r1, #0]
d0056e64:	0628      	lsls	r0, r5, #24
d0056e66:	d501      	bpl.n	d0056e6c <_printf_i+0xec>
d0056e68:	681d      	ldr	r5, [r3, #0]
d0056e6a:	e002      	b.n	d0056e72 <_printf_i+0xf2>
d0056e6c:	0669      	lsls	r1, r5, #25
d0056e6e:	d5fb      	bpl.n	d0056e68 <_printf_i+0xe8>
d0056e70:	881d      	ldrh	r5, [r3, #0]
d0056e72:	4854      	ldr	r0, [pc, #336]	; (d0056fc4 <_printf_i+0x244>)
d0056e74:	2f6f      	cmp	r7, #111	; 0x6f
d0056e76:	bf0c      	ite	eq
d0056e78:	2308      	moveq	r3, #8
d0056e7a:	230a      	movne	r3, #10
d0056e7c:	2100      	movs	r1, #0
d0056e7e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0056e82:	6866      	ldr	r6, [r4, #4]
d0056e84:	60a6      	str	r6, [r4, #8]
d0056e86:	2e00      	cmp	r6, #0
d0056e88:	bfa2      	ittt	ge
d0056e8a:	6821      	ldrge	r1, [r4, #0]
d0056e8c:	f021 0104 	bicge.w	r1, r1, #4
d0056e90:	6021      	strge	r1, [r4, #0]
d0056e92:	b90d      	cbnz	r5, d0056e98 <_printf_i+0x118>
d0056e94:	2e00      	cmp	r6, #0
d0056e96:	d04d      	beq.n	d0056f34 <_printf_i+0x1b4>
d0056e98:	4616      	mov	r6, r2
d0056e9a:	fbb5 f1f3 	udiv	r1, r5, r3
d0056e9e:	fb03 5711 	mls	r7, r3, r1, r5
d0056ea2:	5dc7      	ldrb	r7, [r0, r7]
d0056ea4:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0056ea8:	462f      	mov	r7, r5
d0056eaa:	42bb      	cmp	r3, r7
d0056eac:	460d      	mov	r5, r1
d0056eae:	d9f4      	bls.n	d0056e9a <_printf_i+0x11a>
d0056eb0:	2b08      	cmp	r3, #8
d0056eb2:	d10b      	bne.n	d0056ecc <_printf_i+0x14c>
d0056eb4:	6823      	ldr	r3, [r4, #0]
d0056eb6:	07df      	lsls	r7, r3, #31
d0056eb8:	d508      	bpl.n	d0056ecc <_printf_i+0x14c>
d0056eba:	6923      	ldr	r3, [r4, #16]
d0056ebc:	6861      	ldr	r1, [r4, #4]
d0056ebe:	4299      	cmp	r1, r3
d0056ec0:	bfde      	ittt	le
d0056ec2:	2330      	movle	r3, #48	; 0x30
d0056ec4:	f806 3c01 	strble.w	r3, [r6, #-1]
d0056ec8:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0056ecc:	1b92      	subs	r2, r2, r6
d0056ece:	6122      	str	r2, [r4, #16]
d0056ed0:	f8cd a000 	str.w	sl, [sp]
d0056ed4:	464b      	mov	r3, r9
d0056ed6:	aa03      	add	r2, sp, #12
d0056ed8:	4621      	mov	r1, r4
d0056eda:	4640      	mov	r0, r8
d0056edc:	f7ff fee2 	bl	d0056ca4 <_printf_common>
d0056ee0:	3001      	adds	r0, #1
d0056ee2:	d14c      	bne.n	d0056f7e <_printf_i+0x1fe>
d0056ee4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0056ee8:	b004      	add	sp, #16
d0056eea:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0056eee:	4835      	ldr	r0, [pc, #212]	; (d0056fc4 <_printf_i+0x244>)
d0056ef0:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0056ef4:	6823      	ldr	r3, [r4, #0]
d0056ef6:	680e      	ldr	r6, [r1, #0]
d0056ef8:	061f      	lsls	r7, r3, #24
d0056efa:	f856 5b04 	ldr.w	r5, [r6], #4
d0056efe:	600e      	str	r6, [r1, #0]
d0056f00:	d514      	bpl.n	d0056f2c <_printf_i+0x1ac>
d0056f02:	07d9      	lsls	r1, r3, #31
d0056f04:	bf44      	itt	mi
d0056f06:	f043 0320 	orrmi.w	r3, r3, #32
d0056f0a:	6023      	strmi	r3, [r4, #0]
d0056f0c:	b91d      	cbnz	r5, d0056f16 <_printf_i+0x196>
d0056f0e:	6823      	ldr	r3, [r4, #0]
d0056f10:	f023 0320 	bic.w	r3, r3, #32
d0056f14:	6023      	str	r3, [r4, #0]
d0056f16:	2310      	movs	r3, #16
d0056f18:	e7b0      	b.n	d0056e7c <_printf_i+0xfc>
d0056f1a:	6823      	ldr	r3, [r4, #0]
d0056f1c:	f043 0320 	orr.w	r3, r3, #32
d0056f20:	6023      	str	r3, [r4, #0]
d0056f22:	2378      	movs	r3, #120	; 0x78
d0056f24:	4828      	ldr	r0, [pc, #160]	; (d0056fc8 <_printf_i+0x248>)
d0056f26:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0056f2a:	e7e3      	b.n	d0056ef4 <_printf_i+0x174>
d0056f2c:	065e      	lsls	r6, r3, #25
d0056f2e:	bf48      	it	mi
d0056f30:	b2ad      	uxthmi	r5, r5
d0056f32:	e7e6      	b.n	d0056f02 <_printf_i+0x182>
d0056f34:	4616      	mov	r6, r2
d0056f36:	e7bb      	b.n	d0056eb0 <_printf_i+0x130>
d0056f38:	680b      	ldr	r3, [r1, #0]
d0056f3a:	6826      	ldr	r6, [r4, #0]
d0056f3c:	6960      	ldr	r0, [r4, #20]
d0056f3e:	1d1d      	adds	r5, r3, #4
d0056f40:	600d      	str	r5, [r1, #0]
d0056f42:	0635      	lsls	r5, r6, #24
d0056f44:	681b      	ldr	r3, [r3, #0]
d0056f46:	d501      	bpl.n	d0056f4c <_printf_i+0x1cc>
d0056f48:	6018      	str	r0, [r3, #0]
d0056f4a:	e002      	b.n	d0056f52 <_printf_i+0x1d2>
d0056f4c:	0671      	lsls	r1, r6, #25
d0056f4e:	d5fb      	bpl.n	d0056f48 <_printf_i+0x1c8>
d0056f50:	8018      	strh	r0, [r3, #0]
d0056f52:	2300      	movs	r3, #0
d0056f54:	6123      	str	r3, [r4, #16]
d0056f56:	4616      	mov	r6, r2
d0056f58:	e7ba      	b.n	d0056ed0 <_printf_i+0x150>
d0056f5a:	680b      	ldr	r3, [r1, #0]
d0056f5c:	1d1a      	adds	r2, r3, #4
d0056f5e:	600a      	str	r2, [r1, #0]
d0056f60:	681e      	ldr	r6, [r3, #0]
d0056f62:	6862      	ldr	r2, [r4, #4]
d0056f64:	2100      	movs	r1, #0
d0056f66:	4630      	mov	r0, r6
d0056f68:	f000 f932 	bl	d00571d0 <memchr>
d0056f6c:	b108      	cbz	r0, d0056f72 <_printf_i+0x1f2>
d0056f6e:	1b80      	subs	r0, r0, r6
d0056f70:	6060      	str	r0, [r4, #4]
d0056f72:	6863      	ldr	r3, [r4, #4]
d0056f74:	6123      	str	r3, [r4, #16]
d0056f76:	2300      	movs	r3, #0
d0056f78:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0056f7c:	e7a8      	b.n	d0056ed0 <_printf_i+0x150>
d0056f7e:	6923      	ldr	r3, [r4, #16]
d0056f80:	4632      	mov	r2, r6
d0056f82:	4649      	mov	r1, r9
d0056f84:	4640      	mov	r0, r8
d0056f86:	47d0      	blx	sl
d0056f88:	3001      	adds	r0, #1
d0056f8a:	d0ab      	beq.n	d0056ee4 <_printf_i+0x164>
d0056f8c:	6823      	ldr	r3, [r4, #0]
d0056f8e:	079b      	lsls	r3, r3, #30
d0056f90:	d413      	bmi.n	d0056fba <_printf_i+0x23a>
d0056f92:	68e0      	ldr	r0, [r4, #12]
d0056f94:	9b03      	ldr	r3, [sp, #12]
d0056f96:	4298      	cmp	r0, r3
d0056f98:	bfb8      	it	lt
d0056f9a:	4618      	movlt	r0, r3
d0056f9c:	e7a4      	b.n	d0056ee8 <_printf_i+0x168>
d0056f9e:	2301      	movs	r3, #1
d0056fa0:	4632      	mov	r2, r6
d0056fa2:	4649      	mov	r1, r9
d0056fa4:	4640      	mov	r0, r8
d0056fa6:	47d0      	blx	sl
d0056fa8:	3001      	adds	r0, #1
d0056faa:	d09b      	beq.n	d0056ee4 <_printf_i+0x164>
d0056fac:	3501      	adds	r5, #1
d0056fae:	68e3      	ldr	r3, [r4, #12]
d0056fb0:	9903      	ldr	r1, [sp, #12]
d0056fb2:	1a5b      	subs	r3, r3, r1
d0056fb4:	42ab      	cmp	r3, r5
d0056fb6:	dcf2      	bgt.n	d0056f9e <_printf_i+0x21e>
d0056fb8:	e7eb      	b.n	d0056f92 <_printf_i+0x212>
d0056fba:	2500      	movs	r5, #0
d0056fbc:	f104 0619 	add.w	r6, r4, #25
d0056fc0:	e7f5      	b.n	d0056fae <_printf_i+0x22e>
d0056fc2:	bf00      	nop
d0056fc4:	d005866f 	.word	0xd005866f
d0056fc8:	d0058680 	.word	0xd0058680

d0056fcc <_read_r>:
d0056fcc:	b538      	push	{r3, r4, r5, lr}
d0056fce:	4d07      	ldr	r5, [pc, #28]	; (d0056fec <_read_r+0x20>)
d0056fd0:	4604      	mov	r4, r0
d0056fd2:	4608      	mov	r0, r1
d0056fd4:	4611      	mov	r1, r2
d0056fd6:	2200      	movs	r2, #0
d0056fd8:	602a      	str	r2, [r5, #0]
d0056fda:	461a      	mov	r2, r3
d0056fdc:	f7f4 f86a 	bl	d004b0b4 <_read>
d0056fe0:	1c43      	adds	r3, r0, #1
d0056fe2:	d102      	bne.n	d0056fea <_read_r+0x1e>
d0056fe4:	682b      	ldr	r3, [r5, #0]
d0056fe6:	b103      	cbz	r3, d0056fea <_read_r+0x1e>
d0056fe8:	6023      	str	r3, [r4, #0]
d0056fea:	bd38      	pop	{r3, r4, r5, pc}
d0056fec:	d00fd68c 	.word	0xd00fd68c

d0056ff0 <__swbuf_r>:
d0056ff0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0056ff2:	460e      	mov	r6, r1
d0056ff4:	4614      	mov	r4, r2
d0056ff6:	4605      	mov	r5, r0
d0056ff8:	b118      	cbz	r0, d0057002 <__swbuf_r+0x12>
d0056ffa:	6983      	ldr	r3, [r0, #24]
d0056ffc:	b90b      	cbnz	r3, d0057002 <__swbuf_r+0x12>
d0056ffe:	f7fe ffc1 	bl	d0055f84 <__sinit>
d0057002:	4b21      	ldr	r3, [pc, #132]	; (d0057088 <__swbuf_r+0x98>)
d0057004:	429c      	cmp	r4, r3
d0057006:	d12b      	bne.n	d0057060 <__swbuf_r+0x70>
d0057008:	686c      	ldr	r4, [r5, #4]
d005700a:	69a3      	ldr	r3, [r4, #24]
d005700c:	60a3      	str	r3, [r4, #8]
d005700e:	89a3      	ldrh	r3, [r4, #12]
d0057010:	071a      	lsls	r2, r3, #28
d0057012:	d52f      	bpl.n	d0057074 <__swbuf_r+0x84>
d0057014:	6923      	ldr	r3, [r4, #16]
d0057016:	b36b      	cbz	r3, d0057074 <__swbuf_r+0x84>
d0057018:	6923      	ldr	r3, [r4, #16]
d005701a:	6820      	ldr	r0, [r4, #0]
d005701c:	1ac0      	subs	r0, r0, r3
d005701e:	6963      	ldr	r3, [r4, #20]
d0057020:	b2f6      	uxtb	r6, r6
d0057022:	4283      	cmp	r3, r0
d0057024:	4637      	mov	r7, r6
d0057026:	dc04      	bgt.n	d0057032 <__swbuf_r+0x42>
d0057028:	4621      	mov	r1, r4
d005702a:	4628      	mov	r0, r5
d005702c:	f7fe ff16 	bl	d0055e5c <_fflush_r>
d0057030:	bb30      	cbnz	r0, d0057080 <__swbuf_r+0x90>
d0057032:	68a3      	ldr	r3, [r4, #8]
d0057034:	3b01      	subs	r3, #1
d0057036:	60a3      	str	r3, [r4, #8]
d0057038:	6823      	ldr	r3, [r4, #0]
d005703a:	1c5a      	adds	r2, r3, #1
d005703c:	6022      	str	r2, [r4, #0]
d005703e:	701e      	strb	r6, [r3, #0]
d0057040:	6963      	ldr	r3, [r4, #20]
d0057042:	3001      	adds	r0, #1
d0057044:	4283      	cmp	r3, r0
d0057046:	d004      	beq.n	d0057052 <__swbuf_r+0x62>
d0057048:	89a3      	ldrh	r3, [r4, #12]
d005704a:	07db      	lsls	r3, r3, #31
d005704c:	d506      	bpl.n	d005705c <__swbuf_r+0x6c>
d005704e:	2e0a      	cmp	r6, #10
d0057050:	d104      	bne.n	d005705c <__swbuf_r+0x6c>
d0057052:	4621      	mov	r1, r4
d0057054:	4628      	mov	r0, r5
d0057056:	f7fe ff01 	bl	d0055e5c <_fflush_r>
d005705a:	b988      	cbnz	r0, d0057080 <__swbuf_r+0x90>
d005705c:	4638      	mov	r0, r7
d005705e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0057060:	4b0a      	ldr	r3, [pc, #40]	; (d005708c <__swbuf_r+0x9c>)
d0057062:	429c      	cmp	r4, r3
d0057064:	d101      	bne.n	d005706a <__swbuf_r+0x7a>
d0057066:	68ac      	ldr	r4, [r5, #8]
d0057068:	e7cf      	b.n	d005700a <__swbuf_r+0x1a>
d005706a:	4b09      	ldr	r3, [pc, #36]	; (d0057090 <__swbuf_r+0xa0>)
d005706c:	429c      	cmp	r4, r3
d005706e:	bf08      	it	eq
d0057070:	68ec      	ldreq	r4, [r5, #12]
d0057072:	e7ca      	b.n	d005700a <__swbuf_r+0x1a>
d0057074:	4621      	mov	r1, r4
d0057076:	4628      	mov	r0, r5
d0057078:	f000 f80c 	bl	d0057094 <__swsetup_r>
d005707c:	2800      	cmp	r0, #0
d005707e:	d0cb      	beq.n	d0057018 <__swbuf_r+0x28>
d0057080:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0057084:	e7ea      	b.n	d005705c <__swbuf_r+0x6c>
d0057086:	bf00      	nop
d0057088:	d0058568 	.word	0xd0058568
d005708c:	d0058588 	.word	0xd0058588
d0057090:	d0058548 	.word	0xd0058548

d0057094 <__swsetup_r>:
d0057094:	4b32      	ldr	r3, [pc, #200]	; (d0057160 <__swsetup_r+0xcc>)
d0057096:	b570      	push	{r4, r5, r6, lr}
d0057098:	681d      	ldr	r5, [r3, #0]
d005709a:	4606      	mov	r6, r0
d005709c:	460c      	mov	r4, r1
d005709e:	b125      	cbz	r5, d00570aa <__swsetup_r+0x16>
d00570a0:	69ab      	ldr	r3, [r5, #24]
d00570a2:	b913      	cbnz	r3, d00570aa <__swsetup_r+0x16>
d00570a4:	4628      	mov	r0, r5
d00570a6:	f7fe ff6d 	bl	d0055f84 <__sinit>
d00570aa:	4b2e      	ldr	r3, [pc, #184]	; (d0057164 <__swsetup_r+0xd0>)
d00570ac:	429c      	cmp	r4, r3
d00570ae:	d10f      	bne.n	d00570d0 <__swsetup_r+0x3c>
d00570b0:	686c      	ldr	r4, [r5, #4]
d00570b2:	89a3      	ldrh	r3, [r4, #12]
d00570b4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00570b8:	0719      	lsls	r1, r3, #28
d00570ba:	d42c      	bmi.n	d0057116 <__swsetup_r+0x82>
d00570bc:	06dd      	lsls	r5, r3, #27
d00570be:	d411      	bmi.n	d00570e4 <__swsetup_r+0x50>
d00570c0:	2309      	movs	r3, #9
d00570c2:	6033      	str	r3, [r6, #0]
d00570c4:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00570c8:	81a3      	strh	r3, [r4, #12]
d00570ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00570ce:	e03e      	b.n	d005714e <__swsetup_r+0xba>
d00570d0:	4b25      	ldr	r3, [pc, #148]	; (d0057168 <__swsetup_r+0xd4>)
d00570d2:	429c      	cmp	r4, r3
d00570d4:	d101      	bne.n	d00570da <__swsetup_r+0x46>
d00570d6:	68ac      	ldr	r4, [r5, #8]
d00570d8:	e7eb      	b.n	d00570b2 <__swsetup_r+0x1e>
d00570da:	4b24      	ldr	r3, [pc, #144]	; (d005716c <__swsetup_r+0xd8>)
d00570dc:	429c      	cmp	r4, r3
d00570de:	bf08      	it	eq
d00570e0:	68ec      	ldreq	r4, [r5, #12]
d00570e2:	e7e6      	b.n	d00570b2 <__swsetup_r+0x1e>
d00570e4:	0758      	lsls	r0, r3, #29
d00570e6:	d512      	bpl.n	d005710e <__swsetup_r+0x7a>
d00570e8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00570ea:	b141      	cbz	r1, d00570fe <__swsetup_r+0x6a>
d00570ec:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00570f0:	4299      	cmp	r1, r3
d00570f2:	d002      	beq.n	d00570fa <__swsetup_r+0x66>
d00570f4:	4630      	mov	r0, r6
d00570f6:	f7ff f81b 	bl	d0056130 <_free_r>
d00570fa:	2300      	movs	r3, #0
d00570fc:	6363      	str	r3, [r4, #52]	; 0x34
d00570fe:	89a3      	ldrh	r3, [r4, #12]
d0057100:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0057104:	81a3      	strh	r3, [r4, #12]
d0057106:	2300      	movs	r3, #0
d0057108:	6063      	str	r3, [r4, #4]
d005710a:	6923      	ldr	r3, [r4, #16]
d005710c:	6023      	str	r3, [r4, #0]
d005710e:	89a3      	ldrh	r3, [r4, #12]
d0057110:	f043 0308 	orr.w	r3, r3, #8
d0057114:	81a3      	strh	r3, [r4, #12]
d0057116:	6923      	ldr	r3, [r4, #16]
d0057118:	b94b      	cbnz	r3, d005712e <__swsetup_r+0x9a>
d005711a:	89a3      	ldrh	r3, [r4, #12]
d005711c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0057120:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0057124:	d003      	beq.n	d005712e <__swsetup_r+0x9a>
d0057126:	4621      	mov	r1, r4
d0057128:	4630      	mov	r0, r6
d005712a:	f7ff fa93 	bl	d0056654 <__smakebuf_r>
d005712e:	89a0      	ldrh	r0, [r4, #12]
d0057130:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0057134:	f010 0301 	ands.w	r3, r0, #1
d0057138:	d00a      	beq.n	d0057150 <__swsetup_r+0xbc>
d005713a:	2300      	movs	r3, #0
d005713c:	60a3      	str	r3, [r4, #8]
d005713e:	6963      	ldr	r3, [r4, #20]
d0057140:	425b      	negs	r3, r3
d0057142:	61a3      	str	r3, [r4, #24]
d0057144:	6923      	ldr	r3, [r4, #16]
d0057146:	b943      	cbnz	r3, d005715a <__swsetup_r+0xc6>
d0057148:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d005714c:	d1ba      	bne.n	d00570c4 <__swsetup_r+0x30>
d005714e:	bd70      	pop	{r4, r5, r6, pc}
d0057150:	0781      	lsls	r1, r0, #30
d0057152:	bf58      	it	pl
d0057154:	6963      	ldrpl	r3, [r4, #20]
d0057156:	60a3      	str	r3, [r4, #8]
d0057158:	e7f4      	b.n	d0057144 <__swsetup_r+0xb0>
d005715a:	2000      	movs	r0, #0
d005715c:	e7f7      	b.n	d005714e <__swsetup_r+0xba>
d005715e:	bf00      	nop
d0057160:	d005aed4 	.word	0xd005aed4
d0057164:	d0058568 	.word	0xd0058568
d0057168:	d0058588 	.word	0xd0058588
d005716c:	d0058548 	.word	0xd0058548

d0057170 <abort>:
d0057170:	b508      	push	{r3, lr}
d0057172:	2006      	movs	r0, #6
d0057174:	f000 f8c6 	bl	d0057304 <raise>
d0057178:	2001      	movs	r0, #1
d005717a:	f7f3 ffd3 	bl	d004b124 <_exit>
	...

d0057180 <_fstat_r>:
d0057180:	b538      	push	{r3, r4, r5, lr}
d0057182:	4d07      	ldr	r5, [pc, #28]	; (d00571a0 <_fstat_r+0x20>)
d0057184:	2300      	movs	r3, #0
d0057186:	4604      	mov	r4, r0
d0057188:	4608      	mov	r0, r1
d005718a:	4611      	mov	r1, r2
d005718c:	602b      	str	r3, [r5, #0]
d005718e:	f7f3 ff9f 	bl	d004b0d0 <_fstat>
d0057192:	1c43      	adds	r3, r0, #1
d0057194:	d102      	bne.n	d005719c <_fstat_r+0x1c>
d0057196:	682b      	ldr	r3, [r5, #0]
d0057198:	b103      	cbz	r3, d005719c <_fstat_r+0x1c>
d005719a:	6023      	str	r3, [r4, #0]
d005719c:	bd38      	pop	{r3, r4, r5, pc}
d005719e:	bf00      	nop
d00571a0:	d00fd68c 	.word	0xd00fd68c

d00571a4 <_isatty_r>:
d00571a4:	b538      	push	{r3, r4, r5, lr}
d00571a6:	4d06      	ldr	r5, [pc, #24]	; (d00571c0 <_isatty_r+0x1c>)
d00571a8:	2300      	movs	r3, #0
d00571aa:	4604      	mov	r4, r0
d00571ac:	4608      	mov	r0, r1
d00571ae:	602b      	str	r3, [r5, #0]
d00571b0:	f7f3 ffb6 	bl	d004b120 <_isatty>
d00571b4:	1c43      	adds	r3, r0, #1
d00571b6:	d102      	bne.n	d00571be <_isatty_r+0x1a>
d00571b8:	682b      	ldr	r3, [r5, #0]
d00571ba:	b103      	cbz	r3, d00571be <_isatty_r+0x1a>
d00571bc:	6023      	str	r3, [r4, #0]
d00571be:	bd38      	pop	{r3, r4, r5, pc}
d00571c0:	d00fd68c 	.word	0xd00fd68c
	...

d00571d0 <memchr>:
d00571d0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00571d4:	2a10      	cmp	r2, #16
d00571d6:	db2b      	blt.n	d0057230 <memchr+0x60>
d00571d8:	f010 0f07 	tst.w	r0, #7
d00571dc:	d008      	beq.n	d00571f0 <memchr+0x20>
d00571de:	f810 3b01 	ldrb.w	r3, [r0], #1
d00571e2:	3a01      	subs	r2, #1
d00571e4:	428b      	cmp	r3, r1
d00571e6:	d02d      	beq.n	d0057244 <memchr+0x74>
d00571e8:	f010 0f07 	tst.w	r0, #7
d00571ec:	b342      	cbz	r2, d0057240 <memchr+0x70>
d00571ee:	d1f6      	bne.n	d00571de <memchr+0xe>
d00571f0:	b4f0      	push	{r4, r5, r6, r7}
d00571f2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00571f6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00571fa:	f022 0407 	bic.w	r4, r2, #7
d00571fe:	f07f 0700 	mvns.w	r7, #0
d0057202:	2300      	movs	r3, #0
d0057204:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0057208:	3c08      	subs	r4, #8
d005720a:	ea85 0501 	eor.w	r5, r5, r1
d005720e:	ea86 0601 	eor.w	r6, r6, r1
d0057212:	fa85 f547 	uadd8	r5, r5, r7
d0057216:	faa3 f587 	sel	r5, r3, r7
d005721a:	fa86 f647 	uadd8	r6, r6, r7
d005721e:	faa5 f687 	sel	r6, r5, r7
d0057222:	b98e      	cbnz	r6, d0057248 <memchr+0x78>
d0057224:	d1ee      	bne.n	d0057204 <memchr+0x34>
d0057226:	bcf0      	pop	{r4, r5, r6, r7}
d0057228:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005722c:	f002 0207 	and.w	r2, r2, #7
d0057230:	b132      	cbz	r2, d0057240 <memchr+0x70>
d0057232:	f810 3b01 	ldrb.w	r3, [r0], #1
d0057236:	3a01      	subs	r2, #1
d0057238:	ea83 0301 	eor.w	r3, r3, r1
d005723c:	b113      	cbz	r3, d0057244 <memchr+0x74>
d005723e:	d1f8      	bne.n	d0057232 <memchr+0x62>
d0057240:	2000      	movs	r0, #0
d0057242:	4770      	bx	lr
d0057244:	3801      	subs	r0, #1
d0057246:	4770      	bx	lr
d0057248:	2d00      	cmp	r5, #0
d005724a:	bf06      	itte	eq
d005724c:	4635      	moveq	r5, r6
d005724e:	3803      	subeq	r0, #3
d0057250:	3807      	subne	r0, #7
d0057252:	f015 0f01 	tst.w	r5, #1
d0057256:	d107      	bne.n	d0057268 <memchr+0x98>
d0057258:	3001      	adds	r0, #1
d005725a:	f415 7f80 	tst.w	r5, #256	; 0x100
d005725e:	bf02      	ittt	eq
d0057260:	3001      	addeq	r0, #1
d0057262:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0057266:	3001      	addeq	r0, #1
d0057268:	bcf0      	pop	{r4, r5, r6, r7}
d005726a:	3801      	subs	r0, #1
d005726c:	4770      	bx	lr
d005726e:	bf00      	nop

d0057270 <memmove>:
d0057270:	4288      	cmp	r0, r1
d0057272:	b510      	push	{r4, lr}
d0057274:	eb01 0402 	add.w	r4, r1, r2
d0057278:	d902      	bls.n	d0057280 <memmove+0x10>
d005727a:	4284      	cmp	r4, r0
d005727c:	4623      	mov	r3, r4
d005727e:	d807      	bhi.n	d0057290 <memmove+0x20>
d0057280:	1e43      	subs	r3, r0, #1
d0057282:	42a1      	cmp	r1, r4
d0057284:	d008      	beq.n	d0057298 <memmove+0x28>
d0057286:	f811 2b01 	ldrb.w	r2, [r1], #1
d005728a:	f803 2f01 	strb.w	r2, [r3, #1]!
d005728e:	e7f8      	b.n	d0057282 <memmove+0x12>
d0057290:	4402      	add	r2, r0
d0057292:	4601      	mov	r1, r0
d0057294:	428a      	cmp	r2, r1
d0057296:	d100      	bne.n	d005729a <memmove+0x2a>
d0057298:	bd10      	pop	{r4, pc}
d005729a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d005729e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00572a2:	e7f7      	b.n	d0057294 <memmove+0x24>

d00572a4 <_malloc_usable_size_r>:
d00572a4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00572a8:	1f18      	subs	r0, r3, #4
d00572aa:	2b00      	cmp	r3, #0
d00572ac:	bfbc      	itt	lt
d00572ae:	580b      	ldrlt	r3, [r1, r0]
d00572b0:	18c0      	addlt	r0, r0, r3
d00572b2:	4770      	bx	lr

d00572b4 <_raise_r>:
d00572b4:	291f      	cmp	r1, #31
d00572b6:	b538      	push	{r3, r4, r5, lr}
d00572b8:	4604      	mov	r4, r0
d00572ba:	460d      	mov	r5, r1
d00572bc:	d904      	bls.n	d00572c8 <_raise_r+0x14>
d00572be:	2316      	movs	r3, #22
d00572c0:	6003      	str	r3, [r0, #0]
d00572c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00572c6:	bd38      	pop	{r3, r4, r5, pc}
d00572c8:	6c42      	ldr	r2, [r0, #68]	; 0x44
d00572ca:	b112      	cbz	r2, d00572d2 <_raise_r+0x1e>
d00572cc:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d00572d0:	b94b      	cbnz	r3, d00572e6 <_raise_r+0x32>
d00572d2:	4620      	mov	r0, r4
d00572d4:	f000 f830 	bl	d0057338 <_getpid_r>
d00572d8:	462a      	mov	r2, r5
d00572da:	4601      	mov	r1, r0
d00572dc:	4620      	mov	r0, r4
d00572de:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d00572e2:	f000 b817 	b.w	d0057314 <_kill_r>
d00572e6:	2b01      	cmp	r3, #1
d00572e8:	d00a      	beq.n	d0057300 <_raise_r+0x4c>
d00572ea:	1c59      	adds	r1, r3, #1
d00572ec:	d103      	bne.n	d00572f6 <_raise_r+0x42>
d00572ee:	2316      	movs	r3, #22
d00572f0:	6003      	str	r3, [r0, #0]
d00572f2:	2001      	movs	r0, #1
d00572f4:	e7e7      	b.n	d00572c6 <_raise_r+0x12>
d00572f6:	2400      	movs	r4, #0
d00572f8:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d00572fc:	4628      	mov	r0, r5
d00572fe:	4798      	blx	r3
d0057300:	2000      	movs	r0, #0
d0057302:	e7e0      	b.n	d00572c6 <_raise_r+0x12>

d0057304 <raise>:
d0057304:	4b02      	ldr	r3, [pc, #8]	; (d0057310 <raise+0xc>)
d0057306:	4601      	mov	r1, r0
d0057308:	6818      	ldr	r0, [r3, #0]
d005730a:	f7ff bfd3 	b.w	d00572b4 <_raise_r>
d005730e:	bf00      	nop
d0057310:	d005aed4 	.word	0xd005aed4

d0057314 <_kill_r>:
d0057314:	b538      	push	{r3, r4, r5, lr}
d0057316:	4d07      	ldr	r5, [pc, #28]	; (d0057334 <_kill_r+0x20>)
d0057318:	2300      	movs	r3, #0
d005731a:	4604      	mov	r4, r0
d005731c:	4608      	mov	r0, r1
d005731e:	4611      	mov	r1, r2
d0057320:	602b      	str	r3, [r5, #0]
d0057322:	f7f3 ff03 	bl	d004b12c <_kill>
d0057326:	1c43      	adds	r3, r0, #1
d0057328:	d102      	bne.n	d0057330 <_kill_r+0x1c>
d005732a:	682b      	ldr	r3, [r5, #0]
d005732c:	b103      	cbz	r3, d0057330 <_kill_r+0x1c>
d005732e:	6023      	str	r3, [r4, #0]
d0057330:	bd38      	pop	{r3, r4, r5, pc}
d0057332:	bf00      	nop
d0057334:	d00fd68c 	.word	0xd00fd68c

d0057338 <_getpid_r>:
d0057338:	f7f3 bef6 	b.w	d004b128 <_getpid>

d005733c <sinf_poly>:
d005733c:	07cb      	lsls	r3, r1, #31
d005733e:	d412      	bmi.n	d0057366 <sinf_poly+0x2a>
d0057340:	ee21 6b00 	vmul.f64	d6, d1, d0
d0057344:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0057348:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005734c:	eea5 7b01 	vfma.f64	d7, d5, d1
d0057350:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0057354:	ee21 1b06 	vmul.f64	d1, d1, d6
d0057358:	eea5 0b06 	vfma.f64	d0, d5, d6
d005735c:	eea7 0b01 	vfma.f64	d0, d7, d1
d0057360:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0057364:	4770      	bx	lr
d0057366:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005736a:	ee21 6b01 	vmul.f64	d6, d1, d1
d005736e:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0057372:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0057376:	eea1 7b05 	vfma.f64	d7, d1, d5
d005737a:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005737e:	eea1 0b05 	vfma.f64	d0, d1, d5
d0057382:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0057386:	ee21 1b06 	vmul.f64	d1, d1, d6
d005738a:	eea6 0b05 	vfma.f64	d0, d6, d5
d005738e:	e7e5      	b.n	d005735c <sinf_poly+0x20>

d0057390 <cosf>:
d0057390:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0057392:	ee10 4a10 	vmov	r4, s0
d0057396:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005739a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005739e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00573a2:	d20c      	bcs.n	d00573be <cosf+0x2e>
d00573a4:	ee26 1b06 	vmul.f64	d1, d6, d6
d00573a8:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d00573ac:	d378      	bcc.n	d00574a0 <cosf+0x110>
d00573ae:	eeb0 0b46 	vmov.f64	d0, d6
d00573b2:	483f      	ldr	r0, [pc, #252]	; (d00574b0 <cosf+0x120>)
d00573b4:	2101      	movs	r1, #1
d00573b6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00573ba:	f7ff bfbf 	b.w	d005733c <sinf_poly>
d00573be:	f240 422e 	movw	r2, #1070	; 0x42e
d00573c2:	4293      	cmp	r3, r2
d00573c4:	d826      	bhi.n	d0057414 <cosf+0x84>
d00573c6:	4b3a      	ldr	r3, [pc, #232]	; (d00574b0 <cosf+0x120>)
d00573c8:	ed93 7b08 	vldr	d7, [r3, #32]
d00573cc:	ee26 7b07 	vmul.f64	d7, d6, d7
d00573d0:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00573d4:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00573d8:	ee17 1a90 	vmov	r1, s15
d00573dc:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00573e0:	1609      	asrs	r1, r1, #24
d00573e2:	ee07 1a90 	vmov	s15, r1
d00573e6:	f001 0203 	and.w	r2, r1, #3
d00573ea:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00573ee:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00573f2:	ed92 0b00 	vldr	d0, [r2]
d00573f6:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00573fa:	f011 0f02 	tst.w	r1, #2
d00573fe:	eea5 6b47 	vfms.f64	d6, d5, d7
d0057402:	f081 0101 	eor.w	r1, r1, #1
d0057406:	bf08      	it	eq
d0057408:	4618      	moveq	r0, r3
d005740a:	ee26 1b06 	vmul.f64	d1, d6, d6
d005740e:	ee20 0b06 	vmul.f64	d0, d0, d6
d0057412:	e7d0      	b.n	d00573b6 <cosf+0x26>
d0057414:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0057418:	d23e      	bcs.n	d0057498 <cosf+0x108>
d005741a:	4b26      	ldr	r3, [pc, #152]	; (d00574b4 <cosf+0x124>)
d005741c:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0057420:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0057424:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0057428:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005742c:	6a06      	ldr	r6, [r0, #32]
d005742e:	6900      	ldr	r0, [r0, #16]
d0057430:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0057434:	40a9      	lsls	r1, r5
d0057436:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005743a:	fba1 6706 	umull	r6, r7, r1, r6
d005743e:	fb05 f301 	mul.w	r3, r5, r1
d0057442:	463a      	mov	r2, r7
d0057444:	fbe0 2301 	umlal	r2, r3, r0, r1
d0057448:	1c11      	adds	r1, r2, #0
d005744a:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005744e:	2000      	movs	r0, #0
d0057450:	1a10      	subs	r0, r2, r0
d0057452:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0057456:	eb63 0101 	sbc.w	r1, r3, r1
d005745a:	f000 fdd5 	bl	d0058008 <__aeabi_l2d>
d005745e:	0fb5      	lsrs	r5, r6, #30
d0057460:	4b13      	ldr	r3, [pc, #76]	; (d00574b0 <cosf+0x120>)
d0057462:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0057466:	ed9f 0b10 	vldr	d0, [pc, #64]	; d00574a8 <cosf+0x118>
d005746a:	ec41 0b17 	vmov	d7, r0, r1
d005746e:	f004 0203 	and.w	r2, r4, #3
d0057472:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0057476:	ee27 0b00 	vmul.f64	d0, d7, d0
d005747a:	ed92 7b00 	vldr	d7, [r2]
d005747e:	ee20 1b00 	vmul.f64	d1, d0, d0
d0057482:	f014 0f02 	tst.w	r4, #2
d0057486:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005748a:	f085 0101 	eor.w	r1, r5, #1
d005748e:	bf08      	it	eq
d0057490:	4618      	moveq	r0, r3
d0057492:	ee27 0b00 	vmul.f64	d0, d7, d0
d0057496:	e78e      	b.n	d00573b6 <cosf+0x26>
d0057498:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005749c:	f000 b844 	b.w	d0057528 <__math_invalidf>
d00574a0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00574a4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00574a6:	bf00      	nop
d00574a8:	54442d18 	.word	0x54442d18
d00574ac:	3c1921fb 	.word	0x3c1921fb
d00574b0:	d0058960 	.word	0xd0058960
d00574b4:	d0058900 	.word	0xd0058900

d00574b8 <with_errnof>:
d00574b8:	b513      	push	{r0, r1, r4, lr}
d00574ba:	4604      	mov	r4, r0
d00574bc:	ed8d 0a01 	vstr	s0, [sp, #4]
d00574c0:	f7fe fbcc 	bl	d0055c5c <__errno>
d00574c4:	ed9d 0a01 	vldr	s0, [sp, #4]
d00574c8:	6004      	str	r4, [r0, #0]
d00574ca:	b002      	add	sp, #8
d00574cc:	bd10      	pop	{r4, pc}

d00574ce <xflowf>:
d00574ce:	b130      	cbz	r0, d00574de <xflowf+0x10>
d00574d0:	eef1 7a40 	vneg.f32	s15, s0
d00574d4:	ee27 0a80 	vmul.f32	s0, s15, s0
d00574d8:	2022      	movs	r0, #34	; 0x22
d00574da:	f7ff bfed 	b.w	d00574b8 <with_errnof>
d00574de:	eef0 7a40 	vmov.f32	s15, s0
d00574e2:	e7f7      	b.n	d00574d4 <xflowf+0x6>

d00574e4 <__math_uflowf>:
d00574e4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00574ec <__math_uflowf+0x8>
d00574e8:	f7ff bff1 	b.w	d00574ce <xflowf>
d00574ec:	10000000 	.word	0x10000000

d00574f0 <__math_may_uflowf>:
d00574f0:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00574f8 <__math_may_uflowf+0x8>
d00574f4:	f7ff bfeb 	b.w	d00574ce <xflowf>
d00574f8:	1a200000 	.word	0x1a200000

d00574fc <__math_oflowf>:
d00574fc:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0057504 <__math_oflowf+0x8>
d0057500:	f7ff bfe5 	b.w	d00574ce <xflowf>
d0057504:	70000000 	.word	0x70000000

d0057508 <__math_divzerof>:
d0057508:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005750c:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0057510:	2800      	cmp	r0, #0
d0057512:	fe40 7a27 	vseleq.f32	s15, s0, s15
d0057516:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0057524 <__math_divzerof+0x1c>
d005751a:	2022      	movs	r0, #34	; 0x22
d005751c:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0057520:	f7ff bfca 	b.w	d00574b8 <with_errnof>
d0057524:	00000000 	.word	0x00000000

d0057528 <__math_invalidf>:
d0057528:	eef0 7a40 	vmov.f32	s15, s0
d005752c:	ee30 7a40 	vsub.f32	s14, s0, s0
d0057530:	eef4 7a67 	vcmp.f32	s15, s15
d0057534:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057538:	ee87 0a07 	vdiv.f32	s0, s14, s14
d005753c:	d602      	bvs.n	d0057544 <__math_invalidf+0x1c>
d005753e:	2021      	movs	r0, #33	; 0x21
d0057540:	f7ff bfba 	b.w	d00574b8 <with_errnof>
d0057544:	4770      	bx	lr
	...

d0057548 <expf>:
d0057548:	ee10 2a10 	vmov	r2, s0
d005754c:	b470      	push	{r4, r5, r6}
d005754e:	f3c2 530a 	ubfx	r3, r2, #20, #11
d0057552:	f240 442a 	movw	r4, #1066	; 0x42a
d0057556:	42a3      	cmp	r3, r4
d0057558:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005755c:	d92a      	bls.n	d00575b4 <expf+0x6c>
d005755e:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d0057562:	d059      	beq.n	d0057618 <expf+0xd0>
d0057564:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0057568:	d303      	bcc.n	d0057572 <expf+0x2a>
d005756a:	ee30 0a00 	vadd.f32	s0, s0, s0
d005756e:	bc70      	pop	{r4, r5, r6}
d0057570:	4770      	bx	lr
d0057572:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0057620 <expf+0xd8>
d0057576:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005757a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005757e:	dd03      	ble.n	d0057588 <expf+0x40>
d0057580:	bc70      	pop	{r4, r5, r6}
d0057582:	2000      	movs	r0, #0
d0057584:	f7ff bfba 	b.w	d00574fc <__math_oflowf>
d0057588:	eddf 7a26 	vldr	s15, [pc, #152]	; d0057624 <expf+0xdc>
d005758c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0057590:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057594:	d503      	bpl.n	d005759e <expf+0x56>
d0057596:	bc70      	pop	{r4, r5, r6}
d0057598:	2000      	movs	r0, #0
d005759a:	f7ff bfa3 	b.w	d00574e4 <__math_uflowf>
d005759e:	eddf 7a22 	vldr	s15, [pc, #136]	; d0057628 <expf+0xe0>
d00575a2:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00575a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00575aa:	d503      	bpl.n	d00575b4 <expf+0x6c>
d00575ac:	bc70      	pop	{r4, r5, r6}
d00575ae:	2000      	movs	r0, #0
d00575b0:	f7ff bf9e 	b.w	d00574f0 <__math_may_uflowf>
d00575b4:	4b1d      	ldr	r3, [pc, #116]	; (d005762c <expf+0xe4>)
d00575b6:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d00575ba:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d00575be:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d00575c2:	eeb0 7b44 	vmov.f64	d7, d4
d00575c6:	eea5 7b06 	vfma.f64	d7, d5, d6
d00575ca:	ee17 5a10 	vmov	r5, s14
d00575ce:	ee37 7b44 	vsub.f64	d7, d7, d4
d00575d2:	f005 021f 	and.w	r2, r5, #31
d00575d6:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00575da:	e9d2 4600 	ldrd	r4, r6, [r2]
d00575de:	ee95 7b06 	vfnms.f64	d7, d5, d6
d00575e2:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d00575e6:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d00575ea:	eea4 0b07 	vfma.f64	d0, d4, d7
d00575ee:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d00575f2:	2300      	movs	r3, #0
d00575f4:	1918      	adds	r0, r3, r4
d00575f6:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d00575fa:	eb42 0106 	adc.w	r1, r2, r6
d00575fe:	eea5 6b07 	vfma.f64	d6, d5, d7
d0057602:	ee27 5b07 	vmul.f64	d5, d7, d7
d0057606:	ec41 0b17 	vmov	d7, r0, r1
d005760a:	eea6 0b05 	vfma.f64	d0, d6, d5
d005760e:	ee20 0b07 	vmul.f64	d0, d0, d7
d0057612:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0057616:	e7aa      	b.n	d005756e <expf+0x26>
d0057618:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0057630 <expf+0xe8>
d005761c:	e7a7      	b.n	d005756e <expf+0x26>
d005761e:	bf00      	nop
d0057620:	42b17217 	.word	0x42b17217
d0057624:	c2cff1b4 	.word	0xc2cff1b4
d0057628:	c2ce8ecf 	.word	0xc2ce8ecf
d005762c:	d0058698 	.word	0xd0058698
d0057630:	00000000 	.word	0x00000000

d0057634 <logf>:
d0057634:	ee10 3a10 	vmov	r3, s0
d0057638:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d005763c:	b410      	push	{r4}
d005763e:	d055      	beq.n	d00576ec <logf+0xb8>
d0057640:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0057644:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0057648:	d31a      	bcc.n	d0057680 <logf+0x4c>
d005764a:	005a      	lsls	r2, r3, #1
d005764c:	d104      	bne.n	d0057658 <logf+0x24>
d005764e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0057652:	2001      	movs	r0, #1
d0057654:	f7ff bf58 	b.w	d0057508 <__math_divzerof>
d0057658:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005765c:	d043      	beq.n	d00576e6 <logf+0xb2>
d005765e:	2b00      	cmp	r3, #0
d0057660:	db02      	blt.n	d0057668 <logf+0x34>
d0057662:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0057666:	d303      	bcc.n	d0057670 <logf+0x3c>
d0057668:	f85d 4b04 	ldr.w	r4, [sp], #4
d005766c:	f7ff bf5c 	b.w	d0057528 <__math_invalidf>
d0057670:	eddf 7a20 	vldr	s15, [pc, #128]	; d00576f4 <logf+0xc0>
d0057674:	ee20 0a27 	vmul.f32	s0, s0, s15
d0057678:	ee10 3a10 	vmov	r3, s0
d005767c:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0057680:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0057684:	491c      	ldr	r1, [pc, #112]	; (d00576f8 <logf+0xc4>)
d0057686:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d005768a:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d005768e:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0057692:	0dd4      	lsrs	r4, r2, #23
d0057694:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0057698:	05e4      	lsls	r4, r4, #23
d005769a:	ed90 6b00 	vldr	d6, [r0]
d005769e:	1b1b      	subs	r3, r3, r4
d00576a0:	ee07 3a90 	vmov	s15, r3
d00576a4:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d00576a8:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d00576ac:	15d2      	asrs	r2, r2, #23
d00576ae:	eea6 0b07 	vfma.f64	d0, d6, d7
d00576b2:	ed90 6b02 	vldr	d6, [r0, #8]
d00576b6:	ee07 2a90 	vmov	s15, r2
d00576ba:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d00576be:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d00576c2:	eea7 6b05 	vfma.f64	d6, d7, d5
d00576c6:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d00576ca:	ee20 5b00 	vmul.f64	d5, d0, d0
d00576ce:	eea4 7b00 	vfma.f64	d7, d4, d0
d00576d2:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d00576d6:	ee30 0b06 	vadd.f64	d0, d0, d6
d00576da:	eea4 7b05 	vfma.f64	d7, d4, d5
d00576de:	eea5 0b07 	vfma.f64	d0, d5, d7
d00576e2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00576e6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00576ea:	4770      	bx	lr
d00576ec:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00576fc <logf+0xc8>
d00576f0:	e7f9      	b.n	d00576e6 <logf+0xb2>
d00576f2:	bf00      	nop
d00576f4:	4b000000 	.word	0x4b000000
d00576f8:	d00587e0 	.word	0xd00587e0
d00576fc:	00000000 	.word	0x00000000

d0057700 <sinf_poly>:
d0057700:	07cb      	lsls	r3, r1, #31
d0057702:	d412      	bmi.n	d005772a <sinf_poly+0x2a>
d0057704:	ee21 6b00 	vmul.f64	d6, d1, d0
d0057708:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d005770c:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0057710:	eea5 7b01 	vfma.f64	d7, d5, d1
d0057714:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0057718:	ee21 1b06 	vmul.f64	d1, d1, d6
d005771c:	eea5 0b06 	vfma.f64	d0, d5, d6
d0057720:	eea7 0b01 	vfma.f64	d0, d7, d1
d0057724:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0057728:	4770      	bx	lr
d005772a:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005772e:	ee21 6b01 	vmul.f64	d6, d1, d1
d0057732:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0057736:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d005773a:	eea1 7b05 	vfma.f64	d7, d1, d5
d005773e:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0057742:	eea1 0b05 	vfma.f64	d0, d1, d5
d0057746:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d005774a:	ee21 1b06 	vmul.f64	d1, d1, d6
d005774e:	eea6 0b05 	vfma.f64	d0, d6, d5
d0057752:	e7e5      	b.n	d0057720 <sinf_poly+0x20>
d0057754:	0000      	movs	r0, r0
	...

d0057758 <sinf>:
d0057758:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d005775a:	ee10 4a10 	vmov	r4, s0
d005775e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0057762:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0057766:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005776a:	eef0 7a40 	vmov.f32	s15, s0
d005776e:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0057772:	d218      	bcs.n	d00577a6 <sinf+0x4e>
d0057774:	ee26 1b06 	vmul.f64	d1, d6, d6
d0057778:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005777c:	d20a      	bcs.n	d0057794 <sinf+0x3c>
d005777e:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0057782:	d103      	bne.n	d005778c <sinf+0x34>
d0057784:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0057788:	ed8d 1a01 	vstr	s2, [sp, #4]
d005778c:	eeb0 0a67 	vmov.f32	s0, s15
d0057790:	b003      	add	sp, #12
d0057792:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0057794:	483e      	ldr	r0, [pc, #248]	; (d0057890 <sinf+0x138>)
d0057796:	eeb0 0b46 	vmov.f64	d0, d6
d005779a:	2100      	movs	r1, #0
d005779c:	b003      	add	sp, #12
d005779e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00577a2:	f7ff bfad 	b.w	d0057700 <sinf_poly>
d00577a6:	f240 422e 	movw	r2, #1070	; 0x42e
d00577aa:	4293      	cmp	r3, r2
d00577ac:	d824      	bhi.n	d00577f8 <sinf+0xa0>
d00577ae:	4b38      	ldr	r3, [pc, #224]	; (d0057890 <sinf+0x138>)
d00577b0:	ed93 7b08 	vldr	d7, [r3, #32]
d00577b4:	ee26 7b07 	vmul.f64	d7, d6, d7
d00577b8:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00577bc:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00577c0:	ee17 1a90 	vmov	r1, s15
d00577c4:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00577c8:	1609      	asrs	r1, r1, #24
d00577ca:	ee07 1a90 	vmov	s15, r1
d00577ce:	f001 0203 	and.w	r2, r1, #3
d00577d2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00577d6:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00577da:	ed92 0b00 	vldr	d0, [r2]
d00577de:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00577e2:	f011 0f02 	tst.w	r1, #2
d00577e6:	eea5 6b47 	vfms.f64	d6, d5, d7
d00577ea:	bf08      	it	eq
d00577ec:	4618      	moveq	r0, r3
d00577ee:	ee26 1b06 	vmul.f64	d1, d6, d6
d00577f2:	ee20 0b06 	vmul.f64	d0, d0, d6
d00577f6:	e7d1      	b.n	d005779c <sinf+0x44>
d00577f8:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00577fc:	d23d      	bcs.n	d005787a <sinf+0x122>
d00577fe:	4b25      	ldr	r3, [pc, #148]	; (d0057894 <sinf+0x13c>)
d0057800:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0057804:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0057808:	f3c4 0116 	ubfx	r1, r4, #0, #23
d005780c:	6a06      	ldr	r6, [r0, #32]
d005780e:	6900      	ldr	r0, [r0, #16]
d0057810:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0057814:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0057818:	40a9      	lsls	r1, r5
d005781a:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005781e:	fba1 6706 	umull	r6, r7, r1, r6
d0057822:	fb05 f301 	mul.w	r3, r5, r1
d0057826:	463a      	mov	r2, r7
d0057828:	fbe0 2301 	umlal	r2, r3, r0, r1
d005782c:	1c11      	adds	r1, r2, #0
d005782e:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0057832:	2000      	movs	r0, #0
d0057834:	1a10      	subs	r0, r2, r0
d0057836:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005783a:	eb63 0101 	sbc.w	r1, r3, r1
d005783e:	f000 fbe3 	bl	d0058008 <__aeabi_l2d>
d0057842:	0fb5      	lsrs	r5, r6, #30
d0057844:	4a12      	ldr	r2, [pc, #72]	; (d0057890 <sinf+0x138>)
d0057846:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d005784a:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0057888 <sinf+0x130>
d005784e:	ec41 0b17 	vmov	d7, r0, r1
d0057852:	f003 0103 	and.w	r1, r3, #3
d0057856:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d005785a:	ee27 0b00 	vmul.f64	d0, d7, d0
d005785e:	ed91 7b00 	vldr	d7, [r1]
d0057862:	ee20 1b00 	vmul.f64	d1, d0, d0
d0057866:	f013 0f02 	tst.w	r3, #2
d005786a:	f102 0070 	add.w	r0, r2, #112	; 0x70
d005786e:	4629      	mov	r1, r5
d0057870:	bf08      	it	eq
d0057872:	4610      	moveq	r0, r2
d0057874:	ee27 0b00 	vmul.f64	d0, d7, d0
d0057878:	e790      	b.n	d005779c <sinf+0x44>
d005787a:	b003      	add	sp, #12
d005787c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0057880:	f7ff be52 	b.w	d0057528 <__math_invalidf>
d0057884:	f3af 8000 	nop.w
d0057888:	54442d18 	.word	0x54442d18
d005788c:	3c1921fb 	.word	0x3c1921fb
d0057890:	d0058960 	.word	0xd0058960
d0057894:	d0058900 	.word	0xd0058900

d0057898 <atan2f>:
d0057898:	f000 b82c 	b.w	d00578f4 <__ieee754_atan2f>

d005789c <fmodf>:
d005789c:	b508      	push	{r3, lr}
d005789e:	ed2d 8b02 	vpush	{d8}
d00578a2:	eef0 8a40 	vmov.f32	s17, s0
d00578a6:	eeb0 8a60 	vmov.f32	s16, s1
d00578aa:	f000 f8c1 	bl	d0057a30 <__ieee754_fmodf>
d00578ae:	4b0f      	ldr	r3, [pc, #60]	; (d00578ec <fmodf+0x50>)
d00578b0:	f993 3000 	ldrsb.w	r3, [r3]
d00578b4:	3301      	adds	r3, #1
d00578b6:	d016      	beq.n	d00578e6 <fmodf+0x4a>
d00578b8:	eeb4 8a48 	vcmp.f32	s16, s16
d00578bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578c0:	d611      	bvs.n	d00578e6 <fmodf+0x4a>
d00578c2:	eef4 8a68 	vcmp.f32	s17, s17
d00578c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578ca:	d60c      	bvs.n	d00578e6 <fmodf+0x4a>
d00578cc:	eddf 8a08 	vldr	s17, [pc, #32]	; d00578f0 <fmodf+0x54>
d00578d0:	eeb4 8a68 	vcmp.f32	s16, s17
d00578d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578d8:	d105      	bne.n	d00578e6 <fmodf+0x4a>
d00578da:	f7fe f9bf 	bl	d0055c5c <__errno>
d00578de:	ee88 0aa8 	vdiv.f32	s0, s17, s17
d00578e2:	2321      	movs	r3, #33	; 0x21
d00578e4:	6003      	str	r3, [r0, #0]
d00578e6:	ecbd 8b02 	vpop	{d8}
d00578ea:	bd08      	pop	{r3, pc}
d00578ec:	d005af38 	.word	0xd005af38
d00578f0:	00000000 	.word	0x00000000

d00578f4 <__ieee754_atan2f>:
d00578f4:	ee10 2a90 	vmov	r2, s1
d00578f8:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d00578fc:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0057900:	b510      	push	{r4, lr}
d0057902:	eef0 7a40 	vmov.f32	s15, s0
d0057906:	dc06      	bgt.n	d0057916 <__ieee754_atan2f+0x22>
d0057908:	ee10 0a10 	vmov	r0, s0
d005790c:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d0057910:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0057914:	dd04      	ble.n	d0057920 <__ieee754_atan2f+0x2c>
d0057916:	ee77 7aa0 	vadd.f32	s15, s15, s1
d005791a:	eeb0 0a67 	vmov.f32	s0, s15
d005791e:	bd10      	pop	{r4, pc}
d0057920:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d0057924:	d103      	bne.n	d005792e <__ieee754_atan2f+0x3a>
d0057926:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005792a:	f000 b903 	b.w	d0057b34 <atanf>
d005792e:	1794      	asrs	r4, r2, #30
d0057930:	f004 0402 	and.w	r4, r4, #2
d0057934:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d0057938:	b93b      	cbnz	r3, d005794a <__ieee754_atan2f+0x56>
d005793a:	2c02      	cmp	r4, #2
d005793c:	d05c      	beq.n	d00579f8 <__ieee754_atan2f+0x104>
d005793e:	ed9f 7a33 	vldr	s14, [pc, #204]	; d0057a0c <__ieee754_atan2f+0x118>
d0057942:	2c03      	cmp	r4, #3
d0057944:	fe47 7a00 	vseleq.f32	s15, s14, s0
d0057948:	e7e7      	b.n	d005791a <__ieee754_atan2f+0x26>
d005794a:	b939      	cbnz	r1, d005795c <__ieee754_atan2f+0x68>
d005794c:	eddf 7a30 	vldr	s15, [pc, #192]	; d0057a10 <__ieee754_atan2f+0x11c>
d0057950:	ed9f 0a30 	vldr	s0, [pc, #192]	; d0057a14 <__ieee754_atan2f+0x120>
d0057954:	2800      	cmp	r0, #0
d0057956:	fe67 7a80 	vselge.f32	s15, s15, s0
d005795a:	e7de      	b.n	d005791a <__ieee754_atan2f+0x26>
d005795c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d0057960:	d110      	bne.n	d0057984 <__ieee754_atan2f+0x90>
d0057962:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0057966:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d005796a:	d107      	bne.n	d005797c <__ieee754_atan2f+0x88>
d005796c:	2c02      	cmp	r4, #2
d005796e:	d846      	bhi.n	d00579fe <__ieee754_atan2f+0x10a>
d0057970:	4b29      	ldr	r3, [pc, #164]	; (d0057a18 <__ieee754_atan2f+0x124>)
d0057972:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d0057976:	edd4 7a00 	vldr	s15, [r4]
d005797a:	e7ce      	b.n	d005791a <__ieee754_atan2f+0x26>
d005797c:	2c02      	cmp	r4, #2
d005797e:	d841      	bhi.n	d0057a04 <__ieee754_atan2f+0x110>
d0057980:	4b26      	ldr	r3, [pc, #152]	; (d0057a1c <__ieee754_atan2f+0x128>)
d0057982:	e7f6      	b.n	d0057972 <__ieee754_atan2f+0x7e>
d0057984:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0057988:	d0e0      	beq.n	d005794c <__ieee754_atan2f+0x58>
d005798a:	1a5b      	subs	r3, r3, r1
d005798c:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d0057990:	ea4f 51e3 	mov.w	r1, r3, asr #23
d0057994:	da1a      	bge.n	d00579cc <__ieee754_atan2f+0xd8>
d0057996:	2a00      	cmp	r2, #0
d0057998:	da01      	bge.n	d005799e <__ieee754_atan2f+0xaa>
d005799a:	313c      	adds	r1, #60	; 0x3c
d005799c:	db19      	blt.n	d00579d2 <__ieee754_atan2f+0xde>
d005799e:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00579a2:	f000 f99b 	bl	d0057cdc <fabsf>
d00579a6:	f000 f8c5 	bl	d0057b34 <atanf>
d00579aa:	eef0 7a40 	vmov.f32	s15, s0
d00579ae:	2c01      	cmp	r4, #1
d00579b0:	d012      	beq.n	d00579d8 <__ieee754_atan2f+0xe4>
d00579b2:	2c02      	cmp	r4, #2
d00579b4:	d017      	beq.n	d00579e6 <__ieee754_atan2f+0xf2>
d00579b6:	2c00      	cmp	r4, #0
d00579b8:	d0af      	beq.n	d005791a <__ieee754_atan2f+0x26>
d00579ba:	ed9f 0a19 	vldr	s0, [pc, #100]	; d0057a20 <__ieee754_atan2f+0x12c>
d00579be:	ee77 7a80 	vadd.f32	s15, s15, s0
d00579c2:	ed9f 0a18 	vldr	s0, [pc, #96]	; d0057a24 <__ieee754_atan2f+0x130>
d00579c6:	ee77 7ac0 	vsub.f32	s15, s15, s0
d00579ca:	e7a6      	b.n	d005791a <__ieee754_atan2f+0x26>
d00579cc:	eddf 7a10 	vldr	s15, [pc, #64]	; d0057a10 <__ieee754_atan2f+0x11c>
d00579d0:	e7ed      	b.n	d00579ae <__ieee754_atan2f+0xba>
d00579d2:	eddf 7a15 	vldr	s15, [pc, #84]	; d0057a28 <__ieee754_atan2f+0x134>
d00579d6:	e7ea      	b.n	d00579ae <__ieee754_atan2f+0xba>
d00579d8:	ee17 3a90 	vmov	r3, s15
d00579dc:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d00579e0:	ee07 3a90 	vmov	s15, r3
d00579e4:	e799      	b.n	d005791a <__ieee754_atan2f+0x26>
d00579e6:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d0057a20 <__ieee754_atan2f+0x12c>
d00579ea:	ee77 7a80 	vadd.f32	s15, s15, s0
d00579ee:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0057a24 <__ieee754_atan2f+0x130>
d00579f2:	ee70 7a67 	vsub.f32	s15, s0, s15
d00579f6:	e790      	b.n	d005791a <__ieee754_atan2f+0x26>
d00579f8:	eddf 7a0a 	vldr	s15, [pc, #40]	; d0057a24 <__ieee754_atan2f+0x130>
d00579fc:	e78d      	b.n	d005791a <__ieee754_atan2f+0x26>
d00579fe:	eddf 7a0b 	vldr	s15, [pc, #44]	; d0057a2c <__ieee754_atan2f+0x138>
d0057a02:	e78a      	b.n	d005791a <__ieee754_atan2f+0x26>
d0057a04:	eddf 7a08 	vldr	s15, [pc, #32]	; d0057a28 <__ieee754_atan2f+0x134>
d0057a08:	e787      	b.n	d005791a <__ieee754_atan2f+0x26>
d0057a0a:	bf00      	nop
d0057a0c:	c0490fdb 	.word	0xc0490fdb
d0057a10:	3fc90fdb 	.word	0x3fc90fdb
d0057a14:	bfc90fdb 	.word	0xbfc90fdb
d0057a18:	d0058a40 	.word	0xd0058a40
d0057a1c:	d0058a4c 	.word	0xd0058a4c
d0057a20:	33bbbd2e 	.word	0x33bbbd2e
d0057a24:	40490fdb 	.word	0x40490fdb
d0057a28:	00000000 	.word	0x00000000
d0057a2c:	3f490fdb 	.word	0x3f490fdb

d0057a30 <__ieee754_fmodf>:
d0057a30:	b5f0      	push	{r4, r5, r6, r7, lr}
d0057a32:	ee10 6a90 	vmov	r6, s1
d0057a36:	f036 4500 	bics.w	r5, r6, #2147483648	; 0x80000000
d0057a3a:	d009      	beq.n	d0057a50 <__ieee754_fmodf+0x20>
d0057a3c:	ee10 2a10 	vmov	r2, s0
d0057a40:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
d0057a44:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0057a48:	da02      	bge.n	d0057a50 <__ieee754_fmodf+0x20>
d0057a4a:	f1b5 4fff 	cmp.w	r5, #2139095040	; 0x7f800000
d0057a4e:	dd04      	ble.n	d0057a5a <__ieee754_fmodf+0x2a>
d0057a50:	ee60 0a20 	vmul.f32	s1, s0, s1
d0057a54:	ee80 0aa0 	vdiv.f32	s0, s1, s1
d0057a58:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0057a5a:	42ab      	cmp	r3, r5
d0057a5c:	dbfc      	blt.n	d0057a58 <__ieee754_fmodf+0x28>
d0057a5e:	f002 4400 	and.w	r4, r2, #2147483648	; 0x80000000
d0057a62:	d106      	bne.n	d0057a72 <__ieee754_fmodf+0x42>
d0057a64:	4a32      	ldr	r2, [pc, #200]	; (d0057b30 <__ieee754_fmodf+0x100>)
d0057a66:	0fe3      	lsrs	r3, r4, #31
d0057a68:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0057a6c:	ed93 0a00 	vldr	s0, [r3]
d0057a70:	e7f2      	b.n	d0057a58 <__ieee754_fmodf+0x28>
d0057a72:	f012 4fff 	tst.w	r2, #2139095040	; 0x7f800000
d0057a76:	d13f      	bne.n	d0057af8 <__ieee754_fmodf+0xc8>
d0057a78:	0219      	lsls	r1, r3, #8
d0057a7a:	f06f 007d 	mvn.w	r0, #125	; 0x7d
d0057a7e:	2900      	cmp	r1, #0
d0057a80:	dc37      	bgt.n	d0057af2 <__ieee754_fmodf+0xc2>
d0057a82:	f016 4fff 	tst.w	r6, #2139095040	; 0x7f800000
d0057a86:	d13d      	bne.n	d0057b04 <__ieee754_fmodf+0xd4>
d0057a88:	022f      	lsls	r7, r5, #8
d0057a8a:	f06f 017d 	mvn.w	r1, #125	; 0x7d
d0057a8e:	2f00      	cmp	r7, #0
d0057a90:	da35      	bge.n	d0057afe <__ieee754_fmodf+0xce>
d0057a92:	f110 0f7e 	cmn.w	r0, #126	; 0x7e
d0057a96:	bfbb      	ittet	lt
d0057a98:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0057a9c:	1a12      	sublt	r2, r2, r0
d0057a9e:	f3c2 0316 	ubfxge	r3, r2, #0, #23
d0057aa2:	4093      	lsllt	r3, r2
d0057aa4:	bfa8      	it	ge
d0057aa6:	f443 0300 	orrge.w	r3, r3, #8388608	; 0x800000
d0057aaa:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d0057aae:	bfb5      	itete	lt
d0057ab0:	f06f 027d 	mvnlt.w	r2, #125	; 0x7d
d0057ab4:	f3c6 0516 	ubfxge	r5, r6, #0, #23
d0057ab8:	1a52      	sublt	r2, r2, r1
d0057aba:	f445 0500 	orrge.w	r5, r5, #8388608	; 0x800000
d0057abe:	bfb8      	it	lt
d0057ac0:	4095      	lsllt	r5, r2
d0057ac2:	1a40      	subs	r0, r0, r1
d0057ac4:	1b5a      	subs	r2, r3, r5
d0057ac6:	bb00      	cbnz	r0, d0057b0a <__ieee754_fmodf+0xda>
d0057ac8:	ea13 0322 	ands.w	r3, r3, r2, asr #32
d0057acc:	bf38      	it	cc
d0057ace:	4613      	movcc	r3, r2
d0057ad0:	2b00      	cmp	r3, #0
d0057ad2:	d0c7      	beq.n	d0057a64 <__ieee754_fmodf+0x34>
d0057ad4:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
d0057ad8:	db1f      	blt.n	d0057b1a <__ieee754_fmodf+0xea>
d0057ada:	f111 0f7e 	cmn.w	r1, #126	; 0x7e
d0057ade:	db1f      	blt.n	d0057b20 <__ieee754_fmodf+0xf0>
d0057ae0:	f5a3 0300 	sub.w	r3, r3, #8388608	; 0x800000
d0057ae4:	317f      	adds	r1, #127	; 0x7f
d0057ae6:	4323      	orrs	r3, r4
d0057ae8:	ea43 53c1 	orr.w	r3, r3, r1, lsl #23
d0057aec:	ee00 3a10 	vmov	s0, r3
d0057af0:	e7b2      	b.n	d0057a58 <__ieee754_fmodf+0x28>
d0057af2:	3801      	subs	r0, #1
d0057af4:	0049      	lsls	r1, r1, #1
d0057af6:	e7c2      	b.n	d0057a7e <__ieee754_fmodf+0x4e>
d0057af8:	15d8      	asrs	r0, r3, #23
d0057afa:	387f      	subs	r0, #127	; 0x7f
d0057afc:	e7c1      	b.n	d0057a82 <__ieee754_fmodf+0x52>
d0057afe:	3901      	subs	r1, #1
d0057b00:	007f      	lsls	r7, r7, #1
d0057b02:	e7c4      	b.n	d0057a8e <__ieee754_fmodf+0x5e>
d0057b04:	15e9      	asrs	r1, r5, #23
d0057b06:	397f      	subs	r1, #127	; 0x7f
d0057b08:	e7c3      	b.n	d0057a92 <__ieee754_fmodf+0x62>
d0057b0a:	2a00      	cmp	r2, #0
d0057b0c:	da02      	bge.n	d0057b14 <__ieee754_fmodf+0xe4>
d0057b0e:	005b      	lsls	r3, r3, #1
d0057b10:	3801      	subs	r0, #1
d0057b12:	e7d7      	b.n	d0057ac4 <__ieee754_fmodf+0x94>
d0057b14:	d0a6      	beq.n	d0057a64 <__ieee754_fmodf+0x34>
d0057b16:	0053      	lsls	r3, r2, #1
d0057b18:	e7fa      	b.n	d0057b10 <__ieee754_fmodf+0xe0>
d0057b1a:	005b      	lsls	r3, r3, #1
d0057b1c:	3901      	subs	r1, #1
d0057b1e:	e7d9      	b.n	d0057ad4 <__ieee754_fmodf+0xa4>
d0057b20:	f1c1 21ff 	rsb	r1, r1, #4278255360	; 0xff00ff00
d0057b24:	f501 017f 	add.w	r1, r1, #16711680	; 0xff0000
d0057b28:	3182      	adds	r1, #130	; 0x82
d0057b2a:	410b      	asrs	r3, r1
d0057b2c:	4323      	orrs	r3, r4
d0057b2e:	e7dd      	b.n	d0057aec <__ieee754_fmodf+0xbc>
d0057b30:	d0058a58 	.word	0xd0058a58

d0057b34 <atanf>:
d0057b34:	b538      	push	{r3, r4, r5, lr}
d0057b36:	ee10 5a10 	vmov	r5, s0
d0057b3a:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d0057b3e:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d0057b42:	eef0 7a40 	vmov.f32	s15, s0
d0057b46:	db0f      	blt.n	d0057b68 <atanf+0x34>
d0057b48:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d0057b4c:	dd04      	ble.n	d0057b58 <atanf+0x24>
d0057b4e:	ee70 7a00 	vadd.f32	s15, s0, s0
d0057b52:	eeb0 0a67 	vmov.f32	s0, s15
d0057b56:	bd38      	pop	{r3, r4, r5, pc}
d0057b58:	eddf 7a4d 	vldr	s15, [pc, #308]	; d0057c90 <atanf+0x15c>
d0057b5c:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d0057c94 <atanf+0x160>
d0057b60:	2d00      	cmp	r5, #0
d0057b62:	fe77 7a80 	vselgt.f32	s15, s15, s0
d0057b66:	e7f4      	b.n	d0057b52 <atanf+0x1e>
d0057b68:	4b4b      	ldr	r3, [pc, #300]	; (d0057c98 <atanf+0x164>)
d0057b6a:	429c      	cmp	r4, r3
d0057b6c:	dc10      	bgt.n	d0057b90 <atanf+0x5c>
d0057b6e:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d0057b72:	da0a      	bge.n	d0057b8a <atanf+0x56>
d0057b74:	ed9f 7a49 	vldr	s14, [pc, #292]	; d0057c9c <atanf+0x168>
d0057b78:	ee30 7a07 	vadd.f32	s14, s0, s14
d0057b7c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0057b80:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0057b84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b88:	dce3      	bgt.n	d0057b52 <atanf+0x1e>
d0057b8a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0057b8e:	e013      	b.n	d0057bb8 <atanf+0x84>
d0057b90:	f000 f8a4 	bl	d0057cdc <fabsf>
d0057b94:	4b42      	ldr	r3, [pc, #264]	; (d0057ca0 <atanf+0x16c>)
d0057b96:	429c      	cmp	r4, r3
d0057b98:	dc4f      	bgt.n	d0057c3a <atanf+0x106>
d0057b9a:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d0057b9e:	429c      	cmp	r4, r3
d0057ba0:	dc41      	bgt.n	d0057c26 <atanf+0xf2>
d0057ba2:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0057ba6:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d0057baa:	eea0 7a27 	vfma.f32	s14, s0, s15
d0057bae:	2300      	movs	r3, #0
d0057bb0:	ee30 0a27 	vadd.f32	s0, s0, s15
d0057bb4:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057bb8:	1c5a      	adds	r2, r3, #1
d0057bba:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0057bbe:	eddf 5a39 	vldr	s11, [pc, #228]	; d0057ca4 <atanf+0x170>
d0057bc2:	ed9f 6a39 	vldr	s12, [pc, #228]	; d0057ca8 <atanf+0x174>
d0057bc6:	ed9f 5a39 	vldr	s10, [pc, #228]	; d0057cac <atanf+0x178>
d0057bca:	ed9f 0a39 	vldr	s0, [pc, #228]	; d0057cb0 <atanf+0x17c>
d0057bce:	ee26 7aa6 	vmul.f32	s14, s13, s13
d0057bd2:	eea7 6a25 	vfma.f32	s12, s14, s11
d0057bd6:	eddf 5a37 	vldr	s11, [pc, #220]	; d0057cb4 <atanf+0x180>
d0057bda:	eee6 5a07 	vfma.f32	s11, s12, s14
d0057bde:	ed9f 6a36 	vldr	s12, [pc, #216]	; d0057cb8 <atanf+0x184>
d0057be2:	eea5 6a87 	vfma.f32	s12, s11, s14
d0057be6:	eddf 5a35 	vldr	s11, [pc, #212]	; d0057cbc <atanf+0x188>
d0057bea:	eee6 5a07 	vfma.f32	s11, s12, s14
d0057bee:	ed9f 6a34 	vldr	s12, [pc, #208]	; d0057cc0 <atanf+0x18c>
d0057bf2:	eea5 6a87 	vfma.f32	s12, s11, s14
d0057bf6:	eddf 5a33 	vldr	s11, [pc, #204]	; d0057cc4 <atanf+0x190>
d0057bfa:	eee7 5a05 	vfma.f32	s11, s14, s10
d0057bfe:	ed9f 5a32 	vldr	s10, [pc, #200]	; d0057cc8 <atanf+0x194>
d0057c02:	eea5 5a87 	vfma.f32	s10, s11, s14
d0057c06:	eddf 5a31 	vldr	s11, [pc, #196]	; d0057ccc <atanf+0x198>
d0057c0a:	eee5 5a07 	vfma.f32	s11, s10, s14
d0057c0e:	eea5 0a87 	vfma.f32	s0, s11, s14
d0057c12:	ee20 0a07 	vmul.f32	s0, s0, s14
d0057c16:	eea6 0a26 	vfma.f32	s0, s12, s13
d0057c1a:	ee27 0a80 	vmul.f32	s0, s15, s0
d0057c1e:	d121      	bne.n	d0057c64 <atanf+0x130>
d0057c20:	ee77 7ac0 	vsub.f32	s15, s15, s0
d0057c24:	e795      	b.n	d0057b52 <atanf+0x1e>
d0057c26:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0057c2a:	ee30 7a67 	vsub.f32	s14, s0, s15
d0057c2e:	ee30 0a27 	vadd.f32	s0, s0, s15
d0057c32:	2301      	movs	r3, #1
d0057c34:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057c38:	e7be      	b.n	d0057bb8 <atanf+0x84>
d0057c3a:	4b25      	ldr	r3, [pc, #148]	; (d0057cd0 <atanf+0x19c>)
d0057c3c:	429c      	cmp	r4, r3
d0057c3e:	dc0b      	bgt.n	d0057c58 <atanf+0x124>
d0057c40:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d0057c44:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0057c48:	eea0 7a27 	vfma.f32	s14, s0, s15
d0057c4c:	2302      	movs	r3, #2
d0057c4e:	ee70 6a67 	vsub.f32	s13, s0, s15
d0057c52:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0057c56:	e7af      	b.n	d0057bb8 <atanf+0x84>
d0057c58:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d0057c5c:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0057c60:	2303      	movs	r3, #3
d0057c62:	e7a9      	b.n	d0057bb8 <atanf+0x84>
d0057c64:	4a1b      	ldr	r2, [pc, #108]	; (d0057cd4 <atanf+0x1a0>)
d0057c66:	491c      	ldr	r1, [pc, #112]	; (d0057cd8 <atanf+0x1a4>)
d0057c68:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d0057c6c:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0057c70:	ed93 7a00 	vldr	s14, [r3]
d0057c74:	ee30 0a47 	vsub.f32	s0, s0, s14
d0057c78:	2d00      	cmp	r5, #0
d0057c7a:	ee70 7a67 	vsub.f32	s15, s0, s15
d0057c7e:	ed92 0a00 	vldr	s0, [r2]
d0057c82:	ee70 7a67 	vsub.f32	s15, s0, s15
d0057c86:	bfb8      	it	lt
d0057c88:	eef1 7a67 	vneglt.f32	s15, s15
d0057c8c:	e761      	b.n	d0057b52 <atanf+0x1e>
d0057c8e:	bf00      	nop
d0057c90:	3fc90fdb 	.word	0x3fc90fdb
d0057c94:	bfc90fdb 	.word	0xbfc90fdb
d0057c98:	3edfffff 	.word	0x3edfffff
d0057c9c:	7149f2ca 	.word	0x7149f2ca
d0057ca0:	3f97ffff 	.word	0x3f97ffff
d0057ca4:	3c8569d7 	.word	0x3c8569d7
d0057ca8:	3d4bda59 	.word	0x3d4bda59
d0057cac:	bd15a221 	.word	0xbd15a221
d0057cb0:	be4ccccd 	.word	0xbe4ccccd
d0057cb4:	3d886b35 	.word	0x3d886b35
d0057cb8:	3dba2e6e 	.word	0x3dba2e6e
d0057cbc:	3e124925 	.word	0x3e124925
d0057cc0:	3eaaaaab 	.word	0x3eaaaaab
d0057cc4:	bd6ef16b 	.word	0xbd6ef16b
d0057cc8:	bd9d8795 	.word	0xbd9d8795
d0057ccc:	bde38e38 	.word	0xbde38e38
d0057cd0:	401bffff 	.word	0x401bffff
d0057cd4:	d0058a60 	.word	0xd0058a60
d0057cd8:	d0058a70 	.word	0xd0058a70

d0057cdc <fabsf>:
d0057cdc:	ee10 3a10 	vmov	r3, s0
d0057ce0:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d0057ce4:	ee00 3a10 	vmov	s0, r3
d0057ce8:	4770      	bx	lr
	...

d0057cec <__aeabi_drsub>:
d0057cec:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0057cf0:	e002      	b.n	d0057cf8 <__adddf3>
d0057cf2:	bf00      	nop

d0057cf4 <__aeabi_dsub>:
d0057cf4:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d0057cf8 <__adddf3>:
d0057cf8:	b530      	push	{r4, r5, lr}
d0057cfa:	ea4f 0441 	mov.w	r4, r1, lsl #1
d0057cfe:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0057d02:	ea94 0f05 	teq	r4, r5
d0057d06:	bf08      	it	eq
d0057d08:	ea90 0f02 	teqeq	r0, r2
d0057d0c:	bf1f      	itttt	ne
d0057d0e:	ea54 0c00 	orrsne.w	ip, r4, r0
d0057d12:	ea55 0c02 	orrsne.w	ip, r5, r2
d0057d16:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d0057d1a:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0057d1e:	f000 80e2 	beq.w	d0057ee6 <__adddf3+0x1ee>
d0057d22:	ea4f 5454 	mov.w	r4, r4, lsr #21
d0057d26:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d0057d2a:	bfb8      	it	lt
d0057d2c:	426d      	neglt	r5, r5
d0057d2e:	dd0c      	ble.n	d0057d4a <__adddf3+0x52>
d0057d30:	442c      	add	r4, r5
d0057d32:	ea80 0202 	eor.w	r2, r0, r2
d0057d36:	ea81 0303 	eor.w	r3, r1, r3
d0057d3a:	ea82 0000 	eor.w	r0, r2, r0
d0057d3e:	ea83 0101 	eor.w	r1, r3, r1
d0057d42:	ea80 0202 	eor.w	r2, r0, r2
d0057d46:	ea81 0303 	eor.w	r3, r1, r3
d0057d4a:	2d36      	cmp	r5, #54	; 0x36
d0057d4c:	bf88      	it	hi
d0057d4e:	bd30      	pophi	{r4, r5, pc}
d0057d50:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0057d54:	ea4f 3101 	mov.w	r1, r1, lsl #12
d0057d58:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d0057d5c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0057d60:	d002      	beq.n	d0057d68 <__adddf3+0x70>
d0057d62:	4240      	negs	r0, r0
d0057d64:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0057d68:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d0057d6c:	ea4f 3303 	mov.w	r3, r3, lsl #12
d0057d70:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0057d74:	d002      	beq.n	d0057d7c <__adddf3+0x84>
d0057d76:	4252      	negs	r2, r2
d0057d78:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d0057d7c:	ea94 0f05 	teq	r4, r5
d0057d80:	f000 80a7 	beq.w	d0057ed2 <__adddf3+0x1da>
d0057d84:	f1a4 0401 	sub.w	r4, r4, #1
d0057d88:	f1d5 0e20 	rsbs	lr, r5, #32
d0057d8c:	db0d      	blt.n	d0057daa <__adddf3+0xb2>
d0057d8e:	fa02 fc0e 	lsl.w	ip, r2, lr
d0057d92:	fa22 f205 	lsr.w	r2, r2, r5
d0057d96:	1880      	adds	r0, r0, r2
d0057d98:	f141 0100 	adc.w	r1, r1, #0
d0057d9c:	fa03 f20e 	lsl.w	r2, r3, lr
d0057da0:	1880      	adds	r0, r0, r2
d0057da2:	fa43 f305 	asr.w	r3, r3, r5
d0057da6:	4159      	adcs	r1, r3
d0057da8:	e00e      	b.n	d0057dc8 <__adddf3+0xd0>
d0057daa:	f1a5 0520 	sub.w	r5, r5, #32
d0057dae:	f10e 0e20 	add.w	lr, lr, #32
d0057db2:	2a01      	cmp	r2, #1
d0057db4:	fa03 fc0e 	lsl.w	ip, r3, lr
d0057db8:	bf28      	it	cs
d0057dba:	f04c 0c02 	orrcs.w	ip, ip, #2
d0057dbe:	fa43 f305 	asr.w	r3, r3, r5
d0057dc2:	18c0      	adds	r0, r0, r3
d0057dc4:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d0057dc8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0057dcc:	d507      	bpl.n	d0057dde <__adddf3+0xe6>
d0057dce:	f04f 0e00 	mov.w	lr, #0
d0057dd2:	f1dc 0c00 	rsbs	ip, ip, #0
d0057dd6:	eb7e 0000 	sbcs.w	r0, lr, r0
d0057dda:	eb6e 0101 	sbc.w	r1, lr, r1
d0057dde:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d0057de2:	d31b      	bcc.n	d0057e1c <__adddf3+0x124>
d0057de4:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d0057de8:	d30c      	bcc.n	d0057e04 <__adddf3+0x10c>
d0057dea:	0849      	lsrs	r1, r1, #1
d0057dec:	ea5f 0030 	movs.w	r0, r0, rrx
d0057df0:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0057df4:	f104 0401 	add.w	r4, r4, #1
d0057df8:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0057dfc:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0057e00:	f080 809a 	bcs.w	d0057f38 <__adddf3+0x240>
d0057e04:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d0057e08:	bf08      	it	eq
d0057e0a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d0057e0e:	f150 0000 	adcs.w	r0, r0, #0
d0057e12:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d0057e16:	ea41 0105 	orr.w	r1, r1, r5
d0057e1a:	bd30      	pop	{r4, r5, pc}
d0057e1c:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0057e20:	4140      	adcs	r0, r0
d0057e22:	eb41 0101 	adc.w	r1, r1, r1
d0057e26:	3c01      	subs	r4, #1
d0057e28:	bf28      	it	cs
d0057e2a:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d0057e2e:	d2e9      	bcs.n	d0057e04 <__adddf3+0x10c>
d0057e30:	f091 0f00 	teq	r1, #0
d0057e34:	bf04      	itt	eq
d0057e36:	4601      	moveq	r1, r0
d0057e38:	2000      	moveq	r0, #0
d0057e3a:	fab1 f381 	clz	r3, r1
d0057e3e:	bf08      	it	eq
d0057e40:	3320      	addeq	r3, #32
d0057e42:	f1a3 030b 	sub.w	r3, r3, #11
d0057e46:	f1b3 0220 	subs.w	r2, r3, #32
d0057e4a:	da0c      	bge.n	d0057e66 <__adddf3+0x16e>
d0057e4c:	320c      	adds	r2, #12
d0057e4e:	dd08      	ble.n	d0057e62 <__adddf3+0x16a>
d0057e50:	f102 0c14 	add.w	ip, r2, #20
d0057e54:	f1c2 020c 	rsb	r2, r2, #12
d0057e58:	fa01 f00c 	lsl.w	r0, r1, ip
d0057e5c:	fa21 f102 	lsr.w	r1, r1, r2
d0057e60:	e00c      	b.n	d0057e7c <__adddf3+0x184>
d0057e62:	f102 0214 	add.w	r2, r2, #20
d0057e66:	bfd8      	it	le
d0057e68:	f1c2 0c20 	rsble	ip, r2, #32
d0057e6c:	fa01 f102 	lsl.w	r1, r1, r2
d0057e70:	fa20 fc0c 	lsr.w	ip, r0, ip
d0057e74:	bfdc      	itt	le
d0057e76:	ea41 010c 	orrle.w	r1, r1, ip
d0057e7a:	4090      	lslle	r0, r2
d0057e7c:	1ae4      	subs	r4, r4, r3
d0057e7e:	bfa2      	ittt	ge
d0057e80:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0057e84:	4329      	orrge	r1, r5
d0057e86:	bd30      	popge	{r4, r5, pc}
d0057e88:	ea6f 0404 	mvn.w	r4, r4
d0057e8c:	3c1f      	subs	r4, #31
d0057e8e:	da1c      	bge.n	d0057eca <__adddf3+0x1d2>
d0057e90:	340c      	adds	r4, #12
d0057e92:	dc0e      	bgt.n	d0057eb2 <__adddf3+0x1ba>
d0057e94:	f104 0414 	add.w	r4, r4, #20
d0057e98:	f1c4 0220 	rsb	r2, r4, #32
d0057e9c:	fa20 f004 	lsr.w	r0, r0, r4
d0057ea0:	fa01 f302 	lsl.w	r3, r1, r2
d0057ea4:	ea40 0003 	orr.w	r0, r0, r3
d0057ea8:	fa21 f304 	lsr.w	r3, r1, r4
d0057eac:	ea45 0103 	orr.w	r1, r5, r3
d0057eb0:	bd30      	pop	{r4, r5, pc}
d0057eb2:	f1c4 040c 	rsb	r4, r4, #12
d0057eb6:	f1c4 0220 	rsb	r2, r4, #32
d0057eba:	fa20 f002 	lsr.w	r0, r0, r2
d0057ebe:	fa01 f304 	lsl.w	r3, r1, r4
d0057ec2:	ea40 0003 	orr.w	r0, r0, r3
d0057ec6:	4629      	mov	r1, r5
d0057ec8:	bd30      	pop	{r4, r5, pc}
d0057eca:	fa21 f004 	lsr.w	r0, r1, r4
d0057ece:	4629      	mov	r1, r5
d0057ed0:	bd30      	pop	{r4, r5, pc}
d0057ed2:	f094 0f00 	teq	r4, #0
d0057ed6:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d0057eda:	bf06      	itte	eq
d0057edc:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0057ee0:	3401      	addeq	r4, #1
d0057ee2:	3d01      	subne	r5, #1
d0057ee4:	e74e      	b.n	d0057d84 <__adddf3+0x8c>
d0057ee6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0057eea:	bf18      	it	ne
d0057eec:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0057ef0:	d029      	beq.n	d0057f46 <__adddf3+0x24e>
d0057ef2:	ea94 0f05 	teq	r4, r5
d0057ef6:	bf08      	it	eq
d0057ef8:	ea90 0f02 	teqeq	r0, r2
d0057efc:	d005      	beq.n	d0057f0a <__adddf3+0x212>
d0057efe:	ea54 0c00 	orrs.w	ip, r4, r0
d0057f02:	bf04      	itt	eq
d0057f04:	4619      	moveq	r1, r3
d0057f06:	4610      	moveq	r0, r2
d0057f08:	bd30      	pop	{r4, r5, pc}
d0057f0a:	ea91 0f03 	teq	r1, r3
d0057f0e:	bf1e      	ittt	ne
d0057f10:	2100      	movne	r1, #0
d0057f12:	2000      	movne	r0, #0
d0057f14:	bd30      	popne	{r4, r5, pc}
d0057f16:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d0057f1a:	d105      	bne.n	d0057f28 <__adddf3+0x230>
d0057f1c:	0040      	lsls	r0, r0, #1
d0057f1e:	4149      	adcs	r1, r1
d0057f20:	bf28      	it	cs
d0057f22:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0057f26:	bd30      	pop	{r4, r5, pc}
d0057f28:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0057f2c:	bf3c      	itt	cc
d0057f2e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0057f32:	bd30      	popcc	{r4, r5, pc}
d0057f34:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0057f38:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0057f3c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0057f40:	f04f 0000 	mov.w	r0, #0
d0057f44:	bd30      	pop	{r4, r5, pc}
d0057f46:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0057f4a:	bf1a      	itte	ne
d0057f4c:	4619      	movne	r1, r3
d0057f4e:	4610      	movne	r0, r2
d0057f50:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0057f54:	bf1c      	itt	ne
d0057f56:	460b      	movne	r3, r1
d0057f58:	4602      	movne	r2, r0
d0057f5a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0057f5e:	bf06      	itte	eq
d0057f60:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0057f64:	ea91 0f03 	teqeq	r1, r3
d0057f68:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0057f6c:	bd30      	pop	{r4, r5, pc}
d0057f6e:	bf00      	nop

d0057f70 <__aeabi_ui2d>:
d0057f70:	f090 0f00 	teq	r0, #0
d0057f74:	bf04      	itt	eq
d0057f76:	2100      	moveq	r1, #0
d0057f78:	4770      	bxeq	lr
d0057f7a:	b530      	push	{r4, r5, lr}
d0057f7c:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057f80:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057f84:	f04f 0500 	mov.w	r5, #0
d0057f88:	f04f 0100 	mov.w	r1, #0
d0057f8c:	e750      	b.n	d0057e30 <__adddf3+0x138>
d0057f8e:	bf00      	nop

d0057f90 <__aeabi_i2d>:
d0057f90:	f090 0f00 	teq	r0, #0
d0057f94:	bf04      	itt	eq
d0057f96:	2100      	moveq	r1, #0
d0057f98:	4770      	bxeq	lr
d0057f9a:	b530      	push	{r4, r5, lr}
d0057f9c:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0057fa0:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0057fa4:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0057fa8:	bf48      	it	mi
d0057faa:	4240      	negmi	r0, r0
d0057fac:	f04f 0100 	mov.w	r1, #0
d0057fb0:	e73e      	b.n	d0057e30 <__adddf3+0x138>
d0057fb2:	bf00      	nop

d0057fb4 <__aeabi_f2d>:
d0057fb4:	0042      	lsls	r2, r0, #1
d0057fb6:	ea4f 01e2 	mov.w	r1, r2, asr #3
d0057fba:	ea4f 0131 	mov.w	r1, r1, rrx
d0057fbe:	ea4f 7002 	mov.w	r0, r2, lsl #28
d0057fc2:	bf1f      	itttt	ne
d0057fc4:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d0057fc8:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d0057fcc:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0057fd0:	4770      	bxne	lr
d0057fd2:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0057fd6:	bf08      	it	eq
d0057fd8:	4770      	bxeq	lr
d0057fda:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d0057fde:	bf04      	itt	eq
d0057fe0:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d0057fe4:	4770      	bxeq	lr
d0057fe6:	b530      	push	{r4, r5, lr}
d0057fe8:	f44f 7460 	mov.w	r4, #896	; 0x380
d0057fec:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0057ff0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0057ff4:	e71c      	b.n	d0057e30 <__adddf3+0x138>
d0057ff6:	bf00      	nop

d0057ff8 <__aeabi_ul2d>:
d0057ff8:	ea50 0201 	orrs.w	r2, r0, r1
d0057ffc:	bf08      	it	eq
d0057ffe:	4770      	bxeq	lr
d0058000:	b530      	push	{r4, r5, lr}
d0058002:	f04f 0500 	mov.w	r5, #0
d0058006:	e00a      	b.n	d005801e <__aeabi_l2d+0x16>

d0058008 <__aeabi_l2d>:
d0058008:	ea50 0201 	orrs.w	r2, r0, r1
d005800c:	bf08      	it	eq
d005800e:	4770      	bxeq	lr
d0058010:	b530      	push	{r4, r5, lr}
d0058012:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d0058016:	d502      	bpl.n	d005801e <__aeabi_l2d+0x16>
d0058018:	4240      	negs	r0, r0
d005801a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005801e:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0058022:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0058026:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005802a:	f43f aed8 	beq.w	d0057dde <__adddf3+0xe6>
d005802e:	f04f 0203 	mov.w	r2, #3
d0058032:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0058036:	bf18      	it	ne
d0058038:	3203      	addne	r2, #3
d005803a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005803e:	bf18      	it	ne
d0058040:	3203      	addne	r2, #3
d0058042:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0058046:	f1c2 0320 	rsb	r3, r2, #32
d005804a:	fa00 fc03 	lsl.w	ip, r0, r3
d005804e:	fa20 f002 	lsr.w	r0, r0, r2
d0058052:	fa01 fe03 	lsl.w	lr, r1, r3
d0058056:	ea40 000e 	orr.w	r0, r0, lr
d005805a:	fa21 f102 	lsr.w	r1, r1, r2
d005805e:	4414      	add	r4, r2
d0058060:	e6bd      	b.n	d0057dde <__adddf3+0xe6>
d0058062:	bf00      	nop
d0058064:	46464952 	.word	0x46464952
d0058068:	00000000 	.word	0x00000000
d005806c:	45564157 	.word	0x45564157
d0058070:	00000000 	.word	0x00000000
d0058074:	6e756874 	.word	0x6e756874
d0058078:	31726564 	.word	0x31726564
d005807c:	7661772e 	.word	0x7661772e
d0058080:	00000000 	.word	0x00000000
d0058084:	6e756874 	.word	0x6e756874
d0058088:	32726564 	.word	0x32726564
d005808c:	7661772e 	.word	0x7661772e
d0058090:	00000000 	.word	0x00000000
d0058094:	746e616d 	.word	0x746e616d
d0058098:	6e655f61 	.word	0x6e655f61
d005809c:	772e3167 	.word	0x772e3167
d00580a0:	00007661 	.word	0x00007661
d00580a4:	70776570 	.word	0x70776570
d00580a8:	772e7765 	.word	0x772e7765
d00580ac:	00007661 	.word	0x00007661
d00580b0:	72727574 	.word	0x72727574
d00580b4:	2e317465 	.word	0x2e317465
d00580b8:	64336273 	.word	0x64336273
d00580bc:	00000000 	.word	0x00000000
d00580c0:	616c7369 	.word	0x616c7369
d00580c4:	2e78646e 	.word	0x2e78646e
d00580c8:	64336273 	.word	0x64336273
d00580cc:	00000000 	.word	0x00000000
d00580d0:	72726163 	.word	0x72726163
d00580d4:	2e726569 	.word	0x2e726569
d00580d8:	64336273 	.word	0x64336273
d00580dc:	00000000 	.word	0x00000000
d00580e0:	70696873 	.word	0x70696873
d00580e4:	732e3176 	.word	0x732e3176
d00580e8:	00643362 	.word	0x00643362
d00580ec:	74786574 	.word	0x74786574
d00580f0:	3362732e 	.word	0x3362732e
d00580f4:	00000064 	.word	0x00000064
d00580f8:	3a535046 	.word	0x3a535046
d00580fc:	2e756c25 	.word	0x2e756c25
d0058100:	6c323025 	.word	0x6c323025
d0058104:	4d202075 	.word	0x4d202075
d0058108:	33253a53 	.word	0x33253a53
d005810c:	252e756c 	.word	0x252e756c
d0058110:	756c3330 	.word	0x756c3330
d0058114:	50572020 	.word	0x50572020
d0058118:	7532253a 	.word	0x7532253a
d005811c:	52542020 	.word	0x52542020
d0058120:	253a5349 	.word	0x253a5349
d0058124:	0000756c 	.word	0x0000756c
d0058128:	497423f0 	.word	0x497423f0
d005812c:	497423f0 	.word	0x497423f0
d0058130:	497423f0 	.word	0x497423f0
d0058134:	ff5516e3 	.word	0xff5516e3
d0058138:	ffffffff 	.word	0xffffffff
d005813c:	ffff0000 	.word	0xffff0000
d0058140:	ff00ff00 	.word	0xff00ff00
d0058144:	ff0000ff 	.word	0xff0000ff
d0058148:	ffffff00 	.word	0xffffff00
d005814c:	ffff00ff 	.word	0xffff00ff
d0058150:	ff00ffff 	.word	0xff00ffff
d0058154:	ff808080 	.word	0xff808080
d0058158:	ffff8000 	.word	0xffff8000
d005815c:	ff8000ff 	.word	0xff8000ff
d0058160:	ff0080ff 	.word	0xff0080ff
d0058164:	ff80ff00 	.word	0xff80ff00
d0058168:	ffff0080 	.word	0xffff0080
d005816c:	ff00ff80 	.word	0xff00ff80
d0058170:	ffc0c0c0 	.word	0xffc0c0c0
d0058174:	3f800000 	.word	0x3f800000
d0058178:	3f400000 	.word	0x3f400000
d005817c:	3f0ccccd 	.word	0x3f0ccccd
d0058180:	3eb33333 	.word	0x3eb33333
d0058184:	3e4ccccd 	.word	0x3e4ccccd
d0058188:	bf800000 	.word	0xbf800000
d005818c:	bf000000 	.word	0xbf000000
d0058190:	3e99999a 	.word	0x3e99999a

d0058194 <museumRail.9633>:
d0058194:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d00581a4:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d00581bc:	c1f00000 43340000 44870000 00000000     ......4C...D....
d00581cc:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d00581dc:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d00581ec:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d00581fc:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d005820c:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d005821c:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d005822c:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d005823c:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d005824c:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d005825c:	c487c000 43300000 43320000 00000000     ......0C..2C....
d005826c:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d005827c:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d005828c:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d005829c:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d00582ac:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d00582bc:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d00582cc:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d00582dc:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d00582ec:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d00582fc:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d005830c:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d005831c:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d005832c:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d005833c:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>
	...

d0058360 <bayer4x4>:
d0058360:	0a020800 060e040c 09010b03 050d070f     ................
	...

d0058380 <g_invBlockMinus1>:
	...
d0058388:	3f800000 3f000000 3eaaaaab 3e800000     ...?...?...>...>
d0058398:	3e4ccccd 3e2aaaab 3e124925 3e000000     ..L>..*>%I.>...>
d00583a8:	3de38e39 3dcccccd 3dba2e8c 3daaaaab     9..=...=...=...=
d00583b8:	3d9d89d9 3d924925 3d888889 3d800000     ...=%I.=...=...=
d00583c8:	3d70f0f1 3d638e39 3d579436 3d4ccccd     ..p=9.c=6.W=..L=
d00583d8:	3d430c31 3d3a2e8c 3d321643 3d2aaaab     1.C=..:=C.2=..*=
d00583e8:	3d23d70a 3d1d89d9 3d17b426 3d124925     ..#=...=&..=%I.=
d00583f8:	3d0d3dcb 3d088889 3d042108 3d000000     .=.=...=.!.=...=
d0058408:	3cf83e10 3cf0f0f1 3cea0ea1 3ce38e39     .>.<...<...<9..<
d0058418:	3cdd67c9 3cd79436 3cd20d21 3ccccccd     .g.<6..<!..<...<
d0058428:	3cc7ce0c 3cc30c31 3cbe82fa 3cba2e8c     ...<1..<...<...<
d0058438:	3cb60b61 3cb21643 3cae4c41 00000000     a..<C..<AL.<....
	...
d0058478:	3f800000 00000000 00000000 00000000     ...?............
d0058488:	3f800000 00000000 00000000 00000000     ...?............
d0058498:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d00584a8:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d00584c4:	00000001 00000001 00000002 00000002     ................
d00584d4:	00000003 00000003 00000000 00000004     ................
d00584e4:	00000005 00000005 00000006 00000006     ................
d00584f4:	00000007 00000007 00000004 00000000     ................
d0058504:	00000004 00000001 00000005 00000002     ................
d0058514:	00000006 00000003 00000007 00000001     ................
d0058524:	00000002 00000002 00000003 00000001     ................
d0058534:	00000004 00000002 00000004 00000003     ................
d0058544:	00000004                                ....

d0058548 <__sf_fake_stderr>:
	...

d0058568 <__sf_fake_stdin>:
	...

d0058588 <__sf_fake_stdout>:
	...

d00585a8 <_global_impure_ptr>:
d00585a8:	d005aed8 4e454552 616d2054 636f6c6c     ....REENT malloc
d00585b8:	63757320 64656563 2f006465 6c697562      succeeded./buil
d00585c8:	6e672f64 6f742d75 2d736c6f 2d726f66     d/gnu-tools-for-
d00585d8:	336d7473 2d395f32 30323032 2d32712d     stm32_9-2020-q2-
d00585e8:	61647075 322e6574 31303230 2d313030     update.20201001-
d00585f8:	31323631 6372732f 77656e2f 2f62696c     1621/src/newlib/
d0058608:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
d0058618:	722f6269 2e646e61 202c0063 636e7566     ib/rand.c., func
d0058628:	6e6f6974 6100203a 72657373 6e6f6974     tion: .assertion
d0058638:	73252220 61662022 64656c69 6966203a      "%s" failed: fi
d0058648:	2220656c 2c227325 6e696c20 64252065     le "%s", line %d
d0058658:	73257325 2d23000a 00202b30 004c6c68     %s%s..#-0+ .hlL.
d0058668:	45676665 30004746 34333231 38373635     efgEFG.012345678
d0058678:	43424139 00464544 33323130 37363534     9ABCDEF.01234567
d0058688:	62613938 66656463 00000000 00000000     89abcdef........

d0058698 <__exp2f_data>:
d0058698:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d00586a8:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d00586b8:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d00586c8:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d00586d8:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d00586e8:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d00586f8:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0058708:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0058718:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0058728:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0058738:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0058748:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0058758:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0058768:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0058778:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0058788:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0058798:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d00587a8:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d00587b8:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d00587c8:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d00587d8:	ff0c52d6 3f962e42                       .R..B..?

d00587e0 <__logf_data>:
d00587e0:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d00587f0:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0058800:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0058810:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0058820:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0058830:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0058840:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0058850:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0058860:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0058870:	00000000 3ff00000 00000000 00000000     .......?........
d0058880:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0058890:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d00588a0:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d00588b0:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d00588c0:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d00588d0:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d00588e0:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d00588f0:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0058900 <__inv_pio4>:
d0058900:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d0058910:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0058920:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0058930:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0058940:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0058950:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0058960 <__sincosf_table>:
d0058960:	00000000 3ff00000 00000000 bff00000     .......?........
d0058970:	00000000 bff00000 00000000 3ff00000     ...............?
d0058980:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0058990:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d00589a0:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d00589b0:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d00589c0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d00589d0:	00000000 3ff00000 00000000 bff00000     .......?........
d00589e0:	00000000 bff00000 00000000 3ff00000     ...............?
d00589f0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0058a00:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d0058a10:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d0058a20:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d0058a30:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d0058a40 <CSWTCH.8>:
d0058a40:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d0058a4c <CSWTCH.9>:
d0058a4c:	80000000 40490fdb c0490fdb              ......I@..I.

d0058a58 <Zero>:
d0058a58:	00000000 80000000                       ........

d0058a60 <atanhi>:
d0058a60:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d0058a70 <atanlo>:
d0058a70:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d0058a80 <_init>:
d0058a80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0058a82:	bf00      	nop

Disassembly of section .fini:

d0058a84 <_fini>:
d0058a84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0058a86:	bf00      	nop
