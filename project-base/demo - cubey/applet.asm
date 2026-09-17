
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
d004b01e:	f001 fe25 	bl	d004cc6c <setbuf>
d004b022:	6833      	ldr	r3, [r6, #0]
d004b024:	2100      	movs	r1, #0
d004b026:	68d8      	ldr	r0, [r3, #12]
d004b028:	f001 fe20 	bl	d004cc6c <setbuf>
d004b02c:	4629      	mov	r1, r5
d004b02e:	4620      	mov	r0, r4
d004b030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004b034:	f000 bcc4 	b.w	d004b9c0 <main>
d004b038:	d0051e88 	.word	0xd0051e88

d004b03c <gfx_createBitmap>:
d004b03c:	b510      	push	{r4, lr}
d004b03e:	4604      	mov	r4, r0
d004b040:	fb01 f002 	mul.w	r0, r1, r2
d004b044:	b292      	uxth	r2, r2
d004b046:	80a1      	strh	r1, [r4, #4]
d004b048:	60e0      	str	r0, [r4, #12]
d004b04a:	80e2      	strh	r2, [r4, #6]
d004b04c:	8122      	strh	r2, [r4, #8]
d004b04e:	f001 fd53 	bl	d004caf8 <malloc>
d004b052:	6020      	str	r0, [r4, #0]
d004b054:	bd10      	pop	{r4, pc}
d004b056:	bf00      	nop

d004b058 <initMalloc>:
d004b058:	4902      	ldr	r1, [pc, #8]	; (d004b064 <initMalloc+0xc>)
d004b05a:	4b03      	ldr	r3, [pc, #12]	; (d004b068 <initMalloc+0x10>)
d004b05c:	4a03      	ldr	r2, [pc, #12]	; (d004b06c <initMalloc+0x14>)
d004b05e:	1a5b      	subs	r3, r3, r1
d004b060:	6013      	str	r3, [r2, #0]
d004b062:	4770      	bx	lr
d004b064:	d0055c58 	.word	0xd0055c58
d004b068:	d0600000 	.word	0xd0600000
d004b06c:	d0053c44 	.word	0xd0053c44

d004b070 <_write_r>:
d004b070:	3901      	subs	r1, #1
d004b072:	2901      	cmp	r1, #1
d004b074:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004b076:	d81f      	bhi.n	d004b0b8 <_write_r+0x48>
d004b078:	b1e2      	cbz	r2, d004b0b4 <_write_r+0x44>
d004b07a:	461c      	mov	r4, r3
d004b07c:	b1d3      	cbz	r3, d004b0b4 <_write_r+0x44>
d004b07e:	4d12      	ldr	r5, [pc, #72]	; (d004b0c8 <_write_r+0x58>)
d004b080:	682e      	ldr	r6, [r5, #0]
d004b082:	b9ae      	cbnz	r6, d004b0b0 <_write_r+0x40>
d004b084:	4f11      	ldr	r7, [pc, #68]	; (d004b0cc <_write_r+0x5c>)
d004b086:	2301      	movs	r3, #1
d004b088:	4611      	mov	r1, r2
d004b08a:	4630      	mov	r0, r6
d004b08c:	602b      	str	r3, [r5, #0]
d004b08e:	4622      	mov	r2, r4
d004b090:	7a3b      	ldrb	r3, [r7, #8]
d004b092:	f897 c009 	ldrb.w	ip, [r7, #9]
d004b096:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d004b09a:	f897 c00a 	ldrb.w	ip, [r7, #10]
d004b09e:	7aff      	ldrb	r7, [r7, #11]
d004b0a0:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004b0a4:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d004b0a8:	681b      	ldr	r3, [r3, #0]
d004b0aa:	685b      	ldr	r3, [r3, #4]
d004b0ac:	4798      	blx	r3
d004b0ae:	602e      	str	r6, [r5, #0]
d004b0b0:	4620      	mov	r0, r4
d004b0b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0b4:	2000      	movs	r0, #0
d004b0b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0b8:	f001 fd18 	bl	d004caec <__errno>
d004b0bc:	2209      	movs	r2, #9
d004b0be:	4603      	mov	r3, r0
d004b0c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0c4:	601a      	str	r2, [r3, #0]
d004b0c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0c8:	d0051f04 	.word	0xd0051f04
d004b0cc:	2001f000 	.word	0x2001f000

d004b0d0 <_read>:
d004b0d0:	b508      	push	{r3, lr}
d004b0d2:	f001 fd0b 	bl	d004caec <__errno>
d004b0d6:	2258      	movs	r2, #88	; 0x58
d004b0d8:	4603      	mov	r3, r0
d004b0da:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0de:	601a      	str	r2, [r3, #0]
d004b0e0:	bd08      	pop	{r3, pc}
d004b0e2:	bf00      	nop

d004b0e4 <_close>:
d004b0e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0e8:	4770      	bx	lr
d004b0ea:	bf00      	nop

d004b0ec <_fstat>:
d004b0ec:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d004b0f0:	2000      	movs	r0, #0
d004b0f2:	604b      	str	r3, [r1, #4]
d004b0f4:	4770      	bx	lr
d004b0f6:	bf00      	nop

d004b0f8 <_lseek>:
d004b0f8:	2000      	movs	r0, #0
d004b0fa:	4770      	bx	lr

d004b0fc <_sbrk_r>:
d004b0fc:	4b0c      	ldr	r3, [pc, #48]	; (d004b130 <_sbrk_r+0x34>)
d004b0fe:	4a0d      	ldr	r2, [pc, #52]	; (d004b134 <_sbrk_r+0x38>)
d004b100:	6818      	ldr	r0, [r3, #0]
d004b102:	b510      	push	{r4, lr}
d004b104:	b918      	cbnz	r0, d004b10e <_sbrk_r+0x12>
d004b106:	1dd0      	adds	r0, r2, #7
d004b108:	f020 0007 	bic.w	r0, r0, #7
d004b10c:	6018      	str	r0, [r3, #0]
d004b10e:	4401      	add	r1, r0
d004b110:	4c09      	ldr	r4, [pc, #36]	; (d004b138 <_sbrk_r+0x3c>)
d004b112:	42a1      	cmp	r1, r4
d004b114:	d803      	bhi.n	d004b11e <_sbrk_r+0x22>
d004b116:	4291      	cmp	r1, r2
d004b118:	d301      	bcc.n	d004b11e <_sbrk_r+0x22>
d004b11a:	6019      	str	r1, [r3, #0]
d004b11c:	bd10      	pop	{r4, pc}
d004b11e:	f001 fce5 	bl	d004caec <__errno>
d004b122:	220c      	movs	r2, #12
d004b124:	4603      	mov	r3, r0
d004b126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b12a:	601a      	str	r2, [r3, #0]
d004b12c:	bd10      	pop	{r4, pc}
d004b12e:	bf00      	nop
d004b130:	d0051f00 	.word	0xd0051f00
d004b134:	d0055c58 	.word	0xd0055c58
d004b138:	d0600000 	.word	0xd0600000

d004b13c <draw_textf_multiline.constprop.0>:
d004b13c:	2300      	movs	r3, #0
d004b13e:	2220      	movs	r2, #32
d004b140:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004b144:	4c2a      	ldr	r4, [pc, #168]	; (d004b1f0 <draw_textf_multiline.constprop.0+0xb4>)
d004b146:	b091      	sub	sp, #68	; 0x44
d004b148:	460d      	mov	r5, r1
d004b14a:	461f      	mov	r7, r3
d004b14c:	4e29      	ldr	r6, [pc, #164]	; (d004b1f4 <draw_textf_multiline.constprop.0+0xb8>)
d004b14e:	e00c      	b.n	d004b16a <draw_textf_multiline.constprop.0+0x2e>
d004b150:	a910      	add	r1, sp, #64	; 0x40
d004b152:	2b2e      	cmp	r3, #46	; 0x2e
d004b154:	f103 0c01 	add.w	ip, r3, #1
d004b158:	4419      	add	r1, r3
d004b15a:	d803      	bhi.n	d004b164 <draw_textf_multiline.constprop.0+0x28>
d004b15c:	fa5f f38c 	uxtb.w	r3, ip
d004b160:	f801 2c30 	strb.w	r2, [r1, #-48]
d004b164:	f814 2f01 	ldrb.w	r2, [r4, #1]!
d004b168:	b33a      	cbz	r2, d004b1ba <draw_textf_multiline.constprop.0+0x7e>
d004b16a:	2a0a      	cmp	r2, #10
d004b16c:	d1f0      	bne.n	d004b150 <draw_textf_multiline.constprop.0+0x14>
d004b16e:	f896 900c 	ldrb.w	r9, [r6, #12]
d004b172:	aa10      	add	r2, sp, #64	; 0x40
d004b174:	7b71      	ldrb	r1, [r6, #13]
d004b176:	f04f 0802 	mov.w	r8, #2
d004b17a:	f896 e00e 	ldrb.w	lr, [r6, #14]
d004b17e:	441a      	add	r2, r3
d004b180:	ea49 2101 	orr.w	r1, r9, r1, lsl #8
d004b184:	f896 c00f 	ldrb.w	ip, [r6, #15]
d004b188:	f802 7c30 	strb.w	r7, [r2, #-48]
d004b18c:	2301      	movs	r3, #1
d004b18e:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
d004b192:	aa04      	add	r2, sp, #16
d004b194:	4629      	mov	r1, r5
d004b196:	9003      	str	r0, [sp, #12]
d004b198:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004b19c:	3510      	adds	r5, #16
d004b19e:	f8dc c004 	ldr.w	ip, [ip, #4]
d004b1a2:	b22d      	sxth	r5, r5
d004b1a4:	f8cd 8000 	str.w	r8, [sp]
d004b1a8:	f8dc 8030 	ldr.w	r8, [ip, #48]	; 0x30
d004b1ac:	47c0      	blx	r8
d004b1ae:	f814 2f01 	ldrb.w	r2, [r4, #1]!
d004b1b2:	2300      	movs	r3, #0
d004b1b4:	9803      	ldr	r0, [sp, #12]
d004b1b6:	2a00      	cmp	r2, #0
d004b1b8:	d1d7      	bne.n	d004b16a <draw_textf_multiline.constprop.0+0x2e>
d004b1ba:	b1b3      	cbz	r3, d004b1ea <draw_textf_multiline.constprop.0+0xae>
d004b1bc:	4e0d      	ldr	r6, [pc, #52]	; (d004b1f4 <draw_textf_multiline.constprop.0+0xb8>)
d004b1be:	a910      	add	r1, sp, #64	; 0x40
d004b1c0:	2702      	movs	r7, #2
d004b1c2:	7b34      	ldrb	r4, [r6, #12]
d004b1c4:	440b      	add	r3, r1
d004b1c6:	4629      	mov	r1, r5
d004b1c8:	7b75      	ldrb	r5, [r6, #13]
d004b1ca:	f803 2c30 	strb.w	r2, [r3, #-48]
d004b1ce:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
d004b1d2:	7bb3      	ldrb	r3, [r6, #14]
d004b1d4:	7bf2      	ldrb	r2, [r6, #15]
d004b1d6:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d004b1da:	2301      	movs	r3, #1
d004b1dc:	ea44 6402 	orr.w	r4, r4, r2, lsl #24
d004b1e0:	aa04      	add	r2, sp, #16
d004b1e2:	6864      	ldr	r4, [r4, #4]
d004b1e4:	9700      	str	r7, [sp, #0]
d004b1e6:	6b24      	ldr	r4, [r4, #48]	; 0x30
d004b1e8:	47a0      	blx	r4
d004b1ea:	b011      	add	sp, #68	; 0x44
d004b1ec:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004b1f0:	d004d388 	.word	0xd004d388
d004b1f4:	2001f000 	.word	0x2001f000

d004b1f8 <draw_filled_triangle.part.0.constprop.0>:
d004b1f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004b1fc:	f9b0 2000 	ldrsh.w	r2, [r0]
d004b200:	b089      	sub	sp, #36	; 0x24
d004b202:	f9b0 6004 	ldrsh.w	r6, [r0, #4]
d004b206:	f9b0 5008 	ldrsh.w	r5, [r0, #8]
d004b20a:	4690      	mov	r8, r2
d004b20c:	42b2      	cmp	r2, r6
d004b20e:	f9b0 c002 	ldrsh.w	ip, [r0, #2]
d004b212:	f9b0 7006 	ldrsh.w	r7, [r0, #6]
d004b216:	4696      	mov	lr, r2
d004b218:	bfa8      	it	ge
d004b21a:	46b0      	movge	r8, r6
d004b21c:	42b2      	cmp	r2, r6
d004b21e:	4b72      	ldr	r3, [pc, #456]	; (d004b3e8 <draw_filled_triangle.part.0.constprop.0+0x1f0>)
d004b220:	46e1      	mov	r9, ip
d004b222:	bfb8      	it	lt
d004b224:	46b6      	movlt	lr, r6
d004b226:	45a8      	cmp	r8, r5
d004b228:	889b      	ldrh	r3, [r3, #4]
d004b22a:	4664      	mov	r4, ip
d004b22c:	bfa8      	it	ge
d004b22e:	46a8      	movge	r8, r5
d004b230:	45bc      	cmp	ip, r7
d004b232:	9107      	str	r1, [sp, #28]
d004b234:	b299      	uxth	r1, r3
d004b236:	bfa8      	it	ge
d004b238:	46b9      	movge	r9, r7
d004b23a:	45bc      	cmp	ip, r7
d004b23c:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
d004b240:	f101 3aff 	add.w	sl, r1, #4294967295	; 0xffffffff
d004b244:	bfb8      	it	lt
d004b246:	463c      	movlt	r4, r7
d004b248:	45ae      	cmp	lr, r5
d004b24a:	bfb8      	it	lt
d004b24c:	46ae      	movlt	lr, r5
d004b24e:	4599      	cmp	r9, r3
d004b250:	bfa8      	it	ge
d004b252:	4699      	movge	r9, r3
d004b254:	429c      	cmp	r4, r3
d004b256:	bfb8      	it	lt
d004b258:	461c      	movlt	r4, r3
d004b25a:	f1b8 0f00 	cmp.w	r8, #0
d004b25e:	f2c0 80bf 	blt.w	d004b3e0 <draw_filled_triangle.part.0.constprop.0+0x1e8>
d004b262:	45d0      	cmp	r8, sl
d004b264:	4641      	mov	r1, r8
d004b266:	bfa8      	it	ge
d004b268:	4651      	movge	r1, sl
d004b26a:	9105      	str	r1, [sp, #20]
d004b26c:	f1be 0f00 	cmp.w	lr, #0
d004b270:	f2c0 80b3 	blt.w	d004b3da <draw_filled_triangle.part.0.constprop.0+0x1e2>
d004b274:	45d6      	cmp	lr, sl
d004b276:	4671      	mov	r1, lr
d004b278:	bfa8      	it	ge
d004b27a:	4651      	movge	r1, sl
d004b27c:	9102      	str	r1, [sp, #8]
d004b27e:	495a      	ldr	r1, [pc, #360]	; (d004b3e8 <draw_filled_triangle.part.0.constprop.0+0x1f0>)
d004b280:	f1b9 0f00 	cmp.w	r9, #0
d004b284:	88c9      	ldrh	r1, [r1, #6]
d004b286:	b289      	uxth	r1, r1
d004b288:	f101 31ff 	add.w	r1, r1, #4294967295	; 0xffffffff
d004b28c:	f2c0 80a2 	blt.w	d004b3d4 <draw_filled_triangle.part.0.constprop.0+0x1dc>
d004b290:	4589      	cmp	r9, r1
d004b292:	bfa8      	it	ge
d004b294:	4689      	movge	r9, r1
d004b296:	2c00      	cmp	r4, #0
d004b298:	f2c0 8099 	blt.w	d004b3ce <draw_filled_triangle.part.0.constprop.0+0x1d6>
d004b29c:	428c      	cmp	r4, r1
d004b29e:	bfa8      	it	ge
d004b2a0:	460c      	movge	r4, r1
d004b2a2:	9406      	str	r4, [sp, #24]
d004b2a4:	9905      	ldr	r1, [sp, #20]
d004b2a6:	9c02      	ldr	r4, [sp, #8]
d004b2a8:	42a1      	cmp	r1, r4
d004b2aa:	f300 808d 	bgt.w	d004b3c8 <draw_filled_triangle.part.0.constprop.0+0x1d0>
d004b2ae:	9906      	ldr	r1, [sp, #24]
d004b2b0:	4589      	cmp	r9, r1
d004b2b2:	f300 8089 	bgt.w	d004b3c8 <draw_filled_triangle.part.0.constprop.0+0x1d0>
d004b2b6:	eba6 0b02 	sub.w	fp, r6, r2
d004b2ba:	eba3 040c 	sub.w	r4, r3, ip
d004b2be:	eba7 0a0c 	sub.w	sl, r7, ip
d004b2c2:	1aa9      	subs	r1, r5, r2
d004b2c4:	fb04 f40b 	mul.w	r4, r4, fp
d004b2c8:	fb01 411a 	mls	r1, r1, sl, r4
d004b2cc:	2900      	cmp	r1, #0
d004b2ce:	d07b      	beq.n	d004b3c8 <draw_filled_triangle.part.0.constprop.0+0x1d0>
d004b2d0:	ea4f 71d1 	mov.w	r1, r1, lsr #31
d004b2d4:	9104      	str	r1, [sp, #16]
d004b2d6:	bfcc      	ite	gt
d004b2d8:	2101      	movgt	r1, #1
d004b2da:	2100      	movle	r1, #0
d004b2dc:	9103      	str	r1, [sp, #12]
d004b2de:	9905      	ldr	r1, [sp, #20]
d004b2e0:	9300      	str	r3, [sp, #0]
d004b2e2:	e02a      	b.n	d004b33a <draw_filled_triangle.part.0.constprop.0+0x142>
d004b2e4:	2d00      	cmp	r5, #0
d004b2e6:	db13      	blt.n	d004b310 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b2e8:	2a00      	cmp	r2, #0
d004b2ea:	db11      	blt.n	d004b310 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b2ec:	4c3e      	ldr	r4, [pc, #248]	; (d004b3e8 <draw_filled_triangle.part.0.constprop.0+0x1f0>)
d004b2ee:	6822      	ldr	r2, [r4, #0]
d004b2f0:	b172      	cbz	r2, d004b310 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b2f2:	88a3      	ldrh	r3, [r4, #4]
d004b2f4:	b29b      	uxth	r3, r3
d004b2f6:	4299      	cmp	r1, r3
d004b2f8:	d20a      	bcs.n	d004b310 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b2fa:	88e3      	ldrh	r3, [r4, #6]
d004b2fc:	b29b      	uxth	r3, r3
d004b2fe:	4599      	cmp	r9, r3
d004b300:	d206      	bcs.n	d004b310 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b302:	8923      	ldrh	r3, [r4, #8]
d004b304:	b29b      	uxth	r3, r3
d004b306:	fb01 2203 	mla	r2, r1, r3, r2
d004b30a:	9b07      	ldr	r3, [sp, #28]
d004b30c:	f802 3009 	strb.w	r3, [r2, r9]
d004b310:	3101      	adds	r1, #1
d004b312:	9b02      	ldr	r3, [sp, #8]
d004b314:	428b      	cmp	r3, r1
d004b316:	db41      	blt.n	d004b39c <draw_filled_triangle.part.0.constprop.0+0x1a4>
d004b318:	f9b0 6004 	ldrsh.w	r6, [r0, #4]
d004b31c:	f9b0 2000 	ldrsh.w	r2, [r0]
d004b320:	f9b0 7006 	ldrsh.w	r7, [r0, #6]
d004b324:	f9b0 c002 	ldrsh.w	ip, [r0, #2]
d004b328:	eba6 0b02 	sub.w	fp, r6, r2
d004b32c:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
d004b330:	f9b0 5008 	ldrsh.w	r5, [r0, #8]
d004b334:	eba7 0a0c 	sub.w	sl, r7, ip
d004b338:	9300      	str	r3, [sp, #0]
d004b33a:	1b8b      	subs	r3, r1, r6
d004b33c:	eba5 0e06 	sub.w	lr, r5, r6
d004b340:	eba9 0407 	sub.w	r4, r9, r7
d004b344:	9e00      	ldr	r6, [sp, #0]
d004b346:	9301      	str	r3, [sp, #4]
d004b348:	1b53      	subs	r3, r2, r5
d004b34a:	1bf7      	subs	r7, r6, r7
d004b34c:	fb04 f40e 	mul.w	r4, r4, lr
d004b350:	eba9 0806 	sub.w	r8, r9, r6
d004b354:	9e01      	ldr	r6, [sp, #4]
d004b356:	eba9 0e0c 	sub.w	lr, r9, ip
d004b35a:	1b4d      	subs	r5, r1, r5
d004b35c:	fb08 f803 	mul.w	r8, r8, r3
d004b360:	9b00      	ldr	r3, [sp, #0]
d004b362:	fb06 4417 	mls	r4, r6, r7, r4
d004b366:	1a8a      	subs	r2, r1, r2
d004b368:	ebac 0303 	sub.w	r3, ip, r3
d004b36c:	fb0e fe0b 	mul.w	lr, lr, fp
d004b370:	2c00      	cmp	r4, #0
d004b372:	fb05 8513 	mls	r5, r5, r3, r8
d004b376:	fb02 e21a 	mls	r2, r2, sl, lr
d004b37a:	db02      	blt.n	d004b382 <draw_filled_triangle.part.0.constprop.0+0x18a>
d004b37c:	9b03      	ldr	r3, [sp, #12]
d004b37e:	2b00      	cmp	r3, #0
d004b380:	d1b0      	bne.n	d004b2e4 <draw_filled_triangle.part.0.constprop.0+0xec>
d004b382:	9b04      	ldr	r3, [sp, #16]
d004b384:	2b00      	cmp	r3, #0
d004b386:	d0c3      	beq.n	d004b310 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b388:	2c00      	cmp	r4, #0
d004b38a:	dcc1      	bgt.n	d004b310 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b38c:	2d00      	cmp	r5, #0
d004b38e:	dcbf      	bgt.n	d004b310 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b390:	2a00      	cmp	r2, #0
d004b392:	ddab      	ble.n	d004b2ec <draw_filled_triangle.part.0.constprop.0+0xf4>
d004b394:	3101      	adds	r1, #1
d004b396:	9b02      	ldr	r3, [sp, #8]
d004b398:	428b      	cmp	r3, r1
d004b39a:	dabd      	bge.n	d004b318 <draw_filled_triangle.part.0.constprop.0+0x120>
d004b39c:	f109 0901 	add.w	r9, r9, #1
d004b3a0:	9b06      	ldr	r3, [sp, #24]
d004b3a2:	454b      	cmp	r3, r9
d004b3a4:	db10      	blt.n	d004b3c8 <draw_filled_triangle.part.0.constprop.0+0x1d0>
d004b3a6:	f9b0 6004 	ldrsh.w	r6, [r0, #4]
d004b3aa:	f9b0 2000 	ldrsh.w	r2, [r0]
d004b3ae:	f9b0 7006 	ldrsh.w	r7, [r0, #6]
d004b3b2:	f9b0 c002 	ldrsh.w	ip, [r0, #2]
d004b3b6:	eba6 0b02 	sub.w	fp, r6, r2
d004b3ba:	f9b0 5008 	ldrsh.w	r5, [r0, #8]
d004b3be:	eba7 0a0c 	sub.w	sl, r7, ip
d004b3c2:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
d004b3c6:	e78a      	b.n	d004b2de <draw_filled_triangle.part.0.constprop.0+0xe6>
d004b3c8:	b009      	add	sp, #36	; 0x24
d004b3ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004b3ce:	2100      	movs	r1, #0
d004b3d0:	9106      	str	r1, [sp, #24]
d004b3d2:	e767      	b.n	d004b2a4 <draw_filled_triangle.part.0.constprop.0+0xac>
d004b3d4:	f04f 0900 	mov.w	r9, #0
d004b3d8:	e75d      	b.n	d004b296 <draw_filled_triangle.part.0.constprop.0+0x9e>
d004b3da:	2100      	movs	r1, #0
d004b3dc:	9102      	str	r1, [sp, #8]
d004b3de:	e74e      	b.n	d004b27e <draw_filled_triangle.part.0.constprop.0+0x86>
d004b3e0:	2100      	movs	r1, #0
d004b3e2:	9105      	str	r1, [sp, #20]
d004b3e4:	e742      	b.n	d004b26c <draw_filled_triangle.part.0.constprop.0+0x74>
d004b3e6:	bf00      	nop
d004b3e8:	d0051f20 	.word	0xd0051f20

d004b3ec <draw_cube>:
d004b3ec:	4ad7      	ldr	r2, [pc, #860]	; (d004b74c <draw_cube+0x360>)
d004b3ee:	4bd8      	ldr	r3, [pc, #864]	; (d004b750 <draw_cube+0x364>)
d004b3f0:	6811      	ldr	r1, [r2, #0]
d004b3f2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004b3f6:	681f      	ldr	r7, [r3, #0]
d004b3f8:	f5ad 7d47 	sub.w	sp, sp, #796	; 0x31c
d004b3fc:	eb07 0741 	add.w	r7, r7, r1, lsl #1
d004b400:	9000      	str	r0, [sp, #0]
d004b402:	f5b7 7f80 	cmp.w	r7, #256	; 0x100
d004b406:	f340 82cd 	ble.w	d004b9a4 <draw_cube+0x5b8>
d004b40a:	f44f 7780 	mov.w	r7, #256	; 0x100
d004b40e:	f06f 0104 	mvn.w	r1, #4
d004b412:	601f      	str	r7, [r3, #0]
d004b414:	6011      	str	r1, [r2, #0]
d004b416:	f8df 835c 	ldr.w	r8, [pc, #860]	; d004b774 <draw_cube+0x388>
d004b41a:	f8d8 3000 	ldr.w	r3, [r8]
d004b41e:	42bb      	cmp	r3, r7
d004b420:	d032      	beq.n	d004b488 <draw_cube+0x9c>
d004b422:	4bcc      	ldr	r3, [pc, #816]	; (d004b754 <draw_cube+0x368>)
d004b424:	f04f 0e00 	mov.w	lr, #0
d004b428:	4ecb      	ldr	r6, [pc, #812]	; (d004b758 <draw_cube+0x36c>)
d004b42a:	f503 6c96 	add.w	ip, r3, #1200	; 0x4b0
d004b42e:	4acb      	ldr	r2, [pc, #812]	; (d004b75c <draw_cube+0x370>)
d004b430:	f9b3 4002 	ldrsh.w	r4, [r3, #2]
d004b434:	3308      	adds	r3, #8
d004b436:	f9b6 1002 	ldrsh.w	r1, [r6, #2]
d004b43a:	3208      	adds	r2, #8
d004b43c:	f933 ac04 	ldrsh.w	sl, [r3, #-4]
d004b440:	f933 9c08 	ldrsh.w	r9, [r3, #-8]
d004b444:	eba1 0b04 	sub.w	fp, r1, r4
d004b448:	f9b6 0004 	ldrsh.w	r0, [r6, #4]
d004b44c:	459c      	cmp	ip, r3
d004b44e:	f936 5b08 	ldrsh.w	r5, [r6], #8
d004b452:	fb07 f10b 	mul.w	r1, r7, fp
d004b456:	eba0 000a 	sub.w	r0, r0, sl
d004b45a:	f822 ec02 	strh.w	lr, [r2, #-2]
d004b45e:	eba5 0509 	sub.w	r5, r5, r9
d004b462:	eb04 2421 	add.w	r4, r4, r1, asr #8
d004b466:	fb07 f000 	mul.w	r0, r7, r0
d004b46a:	fb07 f105 	mul.w	r1, r7, r5
d004b46e:	eb0a 2020 	add.w	r0, sl, r0, asr #8
d004b472:	f822 4c06 	strh.w	r4, [r2, #-6]
d004b476:	eb09 2121 	add.w	r1, r9, r1, asr #8
d004b47a:	f822 0c04 	strh.w	r0, [r2, #-4]
d004b47e:	f822 1c08 	strh.w	r1, [r2, #-8]
d004b482:	d1d5      	bne.n	d004b430 <draw_cube+0x44>
d004b484:	f8c8 7000 	str.w	r7, [r8]
d004b488:	4ab5      	ldr	r2, [pc, #724]	; (d004b760 <draw_cube+0x374>)
d004b48a:	f44f 76b4 	mov.w	r6, #360	; 0x168
d004b48e:	4bb5      	ldr	r3, [pc, #724]	; (d004b764 <draw_cube+0x378>)
d004b490:	f649 6734 	movw	r7, #40500	; 0x9e34
d004b494:	6811      	ldr	r1, [r2, #0]
d004b496:	4cb4      	ldr	r4, [pc, #720]	; (d004b768 <draw_cube+0x37c>)
d004b498:	fb83 0201 	smull	r0, r2, r3, r1
d004b49c:	ea4f 78e1 	mov.w	r8, r1, asr #31
d004b4a0:	f101 005a 	add.w	r0, r1, #90	; 0x5a
d004b4a4:	6825      	ldr	r5, [r4, #0]
d004b4a6:	440a      	add	r2, r1
d004b4a8:	f8df e2cc 	ldr.w	lr, [pc, #716]	; d004b778 <draw_cube+0x38c>
d004b4ac:	fb83 c400 	smull	ip, r4, r3, r0
d004b4b0:	ea4f 7ce0 	mov.w	ip, r0, asr #31
d004b4b4:	ebc8 2222 	rsb	r2, r8, r2, asr #8
d004b4b8:	f8de e000 	ldr.w	lr, [lr]
d004b4bc:	4404      	add	r4, r0
d004b4be:	fb06 1212 	mls	r2, r6, r2, r1
d004b4c2:	ebcc 2424 	rsb	r4, ip, r4, asr #8
d004b4c6:	fb83 c105 	smull	ip, r1, r3, r5
d004b4ca:	eb02 0806 	add.w	r8, r2, r6
d004b4ce:	ea4f 7ce5 	mov.w	ip, r5, asr #31
d004b4d2:	fb06 0414 	mls	r4, r6, r4, r0
d004b4d6:	4429      	add	r1, r5
d004b4d8:	ea32 0222 	bics.w	r2, r2, r2, asr #32
d004b4dc:	bf28      	it	cs
d004b4de:	4642      	movcs	r2, r8
d004b4e0:	f105 005a 	add.w	r0, r5, #90	; 0x5a
d004b4e4:	eb04 0906 	add.w	r9, r4, r6
d004b4e8:	ebcc 2121 	rsb	r1, ip, r1, asr #8
d004b4ec:	2ab4      	cmp	r2, #180	; 0xb4
d004b4ee:	f1a2 08b4 	sub.w	r8, r2, #180	; 0xb4
d004b4f2:	fb06 5111 	mls	r1, r6, r1, r5
d004b4f6:	ea4f 7ce0 	mov.w	ip, r0, asr #31
d004b4fa:	bfcb      	itete	gt
d004b4fc:	4645      	movgt	r5, r8
d004b4fe:	4615      	movle	r5, r2
d004b500:	f04f 38ff 	movgt.w	r8, #4294967295	; 0xffffffff
d004b504:	f04f 0801 	movle.w	r8, #1
d004b508:	ea34 0424 	bics.w	r4, r4, r4, asr #32
d004b50c:	bf28      	it	cs
d004b50e:	464c      	movcs	r4, r9
d004b510:	fb83 9200 	smull	r9, r2, r3, r0
d004b514:	f1c5 09b4 	rsb	r9, r5, #180	; 0xb4
d004b518:	4402      	add	r2, r0
d004b51a:	2cb4      	cmp	r4, #180	; 0xb4
d004b51c:	fb05 f509 	mul.w	r5, r5, r9
d004b520:	ebcc 2222 	rsb	r2, ip, r2, asr #8
d004b524:	f1a4 0cb4 	sub.w	ip, r4, #180	; 0xb4
d004b528:	bfca      	itet	gt
d004b52a:	f04f 3bff 	movgt.w	fp, #4294967295	; 0xffffffff
d004b52e:	f04f 0b01 	movle.w	fp, #1
d004b532:	4664      	movgt	r4, ip
d004b534:	fb06 0212 	mls	r2, r6, r2, r0
d004b538:	eb01 0c06 	add.w	ip, r1, r6
d004b53c:	fb83 900e 	smull	r9, r0, r3, lr
d004b540:	ebc5 3ac5 	rsb	sl, r5, r5, lsl #15
d004b544:	1b7d      	subs	r5, r7, r5
d004b546:	ea31 0121 	bics.w	r1, r1, r1, asr #32
d004b54a:	bf28      	it	cs
d004b54c:	4661      	movcs	r1, ip
d004b54e:	4470      	add	r0, lr
d004b550:	ea4f 7cee 	mov.w	ip, lr, asr #31
d004b554:	29b4      	cmp	r1, #180	; 0xb4
d004b556:	ea4f 0a8a 	mov.w	sl, sl, lsl #2
d004b55a:	ebcc 2020 	rsb	r0, ip, r0, asr #8
d004b55e:	f10e 0c5a 	add.w	ip, lr, #90	; 0x5a
d004b562:	fb06 e010 	mls	r0, r6, r0, lr
d004b566:	fb83 e30c 	smull	lr, r3, r3, ip
d004b56a:	f1a1 0eb4 	sub.w	lr, r1, #180	; 0xb4
d004b56e:	bfc8      	it	gt
d004b570:	4671      	movgt	r1, lr
d004b572:	eb02 0e06 	add.w	lr, r2, r6
d004b576:	eb03 090c 	add.w	r9, r3, ip
d004b57a:	bfcc      	ite	gt
d004b57c:	f04f 33ff 	movgt.w	r3, #4294967295	; 0xffffffff
d004b580:	2301      	movle	r3, #1
d004b582:	ea32 0222 	bics.w	r2, r2, r2, asr #32
d004b586:	bf28      	it	cs
d004b588:	4672      	movcs	r2, lr
d004b58a:	ea4f 7eec 	mov.w	lr, ip, asr #31
d004b58e:	9301      	str	r3, [sp, #4]
d004b590:	2ab4      	cmp	r2, #180	; 0xb4
d004b592:	ebce 2329 	rsb	r3, lr, r9, asr #8
d004b596:	bfcc      	ite	gt
d004b598:	f04f 3eff 	movgt.w	lr, #4294967295	; 0xffffffff
d004b59c:	f04f 0e01 	movle.w	lr, #1
d004b5a0:	fb06 c313 	mls	r3, r6, r3, ip
d004b5a4:	f1a2 0cb4 	sub.w	ip, r2, #180	; 0xb4
d004b5a8:	4406      	add	r6, r0
d004b5aa:	bfc8      	it	gt
d004b5ac:	4662      	movgt	r2, ip
d004b5ae:	ea30 0020 	bics.w	r0, r0, r0, asr #32
d004b5b2:	bf28      	it	cs
d004b5b4:	4630      	movcs	r0, r6
d004b5b6:	f503 76b4 	add.w	r6, r3, #360	; 0x168
d004b5ba:	28b4      	cmp	r0, #180	; 0xb4
d004b5bc:	f1a0 0cb4 	sub.w	ip, r0, #180	; 0xb4
d004b5c0:	bfd2      	itee	le
d004b5c2:	f04f 0c01 	movle.w	ip, #1
d004b5c6:	4660      	movgt	r0, ip
d004b5c8:	f04f 3cff 	movgt.w	ip, #4294967295	; 0xffffffff
d004b5cc:	ea33 0323 	bics.w	r3, r3, r3, asr #32
d004b5d0:	bf28      	it	cs
d004b5d2:	4633      	movcs	r3, r6
d004b5d4:	2bb4      	cmp	r3, #180	; 0xb4
d004b5d6:	f1a3 06b4 	sub.w	r6, r3, #180	; 0xb4
d004b5da:	bfc8      	it	gt
d004b5dc:	4633      	movgt	r3, r6
d004b5de:	f1c4 06b4 	rsb	r6, r4, #180	; 0xb4
d004b5e2:	fb04 f406 	mul.w	r4, r4, r6
d004b5e6:	f1c1 06b4 	rsb	r6, r1, #180	; 0xb4
d004b5ea:	fb01 f106 	mul.w	r1, r1, r6
d004b5ee:	f1c2 06b4 	rsb	r6, r2, #180	; 0xb4
d004b5f2:	ebc4 39c4 	rsb	r9, r4, r4, lsl #15
d004b5f6:	eba7 0404 	sub.w	r4, r7, r4
d004b5fa:	fb02 f206 	mul.w	r2, r2, r6
d004b5fe:	f1c0 06b4 	rsb	r6, r0, #180	; 0xb4
d004b602:	ea4f 0989 	mov.w	r9, r9, lsl #2
d004b606:	fb00 f006 	mul.w	r0, r0, r6
d004b60a:	f1c3 06b4 	rsb	r6, r3, #180	; 0xb4
d004b60e:	fbba faf5 	udiv	sl, sl, r5
d004b612:	fb03 f306 	mul.w	r3, r3, r6
d004b616:	ebc1 36c1 	rsb	r6, r1, r1, lsl #15
d004b61a:	ebc2 35c2 	rsb	r5, r2, r2, lsl #15
d004b61e:	eba7 0101 	sub.w	r1, r7, r1
d004b622:	ea4f 0686 	mov.w	r6, r6, lsl #2
d004b626:	eba7 0202 	sub.w	r2, r7, r2
d004b62a:	fb08 f80a 	mul.w	r8, r8, sl
d004b62e:	ea4f 0a85 	mov.w	sl, r5, lsl #2
d004b632:	fbb9 f4f4 	udiv	r4, r9, r4
d004b636:	ebc0 39c0 	rsb	r9, r0, r0, lsl #15
d004b63a:	eba7 0000 	sub.w	r0, r7, r0
d004b63e:	eba7 0703 	sub.w	r7, r7, r3
d004b642:	ebc3 33c3 	rsb	r3, r3, r3, lsl #15
d004b646:	ea4f 0989 	mov.w	r9, r9, lsl #2
d004b64a:	ea4f 0383 	mov.w	r3, r3, lsl #2
d004b64e:	fbb6 f1f1 	udiv	r1, r6, r1
d004b652:	fbb3 f7f7 	udiv	r7, r3, r7
d004b656:	fbb9 f0f0 	udiv	r0, r9, r0
d004b65a:	fbba f2f2 	udiv	r2, sl, r2
d004b65e:	fb0b f604 	mul.w	r6, fp, r4
d004b662:	9c01      	ldr	r4, [sp, #4]
d004b664:	bfcc      	ite	gt
d004b666:	f04f 33ff 	movgt.w	r3, #4294967295	; 0xffffffff
d004b66a:	2301      	movle	r3, #1
d004b66c:	fb04 f501 	mul.w	r5, r4, r1
d004b670:	4c3e      	ldr	r4, [pc, #248]	; (d004b76c <draw_cube+0x380>)
d004b672:	fb0c fc00 	mul.w	ip, ip, r0
d004b676:	4939      	ldr	r1, [pc, #228]	; (d004b75c <draw_cube+0x370>)
d004b678:	fb0e fe02 	mul.w	lr, lr, r2
d004b67c:	4620      	mov	r0, r4
d004b67e:	fb03 f707 	mul.w	r7, r3, r7
d004b682:	f9b1 3004 	ldrsh.w	r3, [r1, #4]
d004b686:	3008      	adds	r0, #8
d004b688:	f9b1 9002 	ldrsh.w	r9, [r1, #2]
d004b68c:	fb03 fa06 	mul.w	sl, r3, r6
d004b690:	f9b1 2006 	ldrsh.w	r2, [r1, #6]
d004b694:	fb09 fb06 	mul.w	fp, r9, r6
d004b698:	fb09 a908 	mla	r9, r9, r8, sl
d004b69c:	f931 ab08 	ldrsh.w	sl, [r1], #8
d004b6a0:	f820 2c02 	strh.w	r2, [r0, #-2]
d004b6a4:	f349 39cf 	sbfx	r9, r9, #15, #16
d004b6a8:	fb03 b318 	mls	r3, r3, r8, fp
d004b6ac:	fb09 f205 	mul.w	r2, r9, r5
d004b6b0:	f343 33cf 	sbfx	r3, r3, #15, #16
d004b6b4:	fb09 f90e 	mul.w	r9, r9, lr
d004b6b8:	fb0a 220e 	mla	r2, sl, lr, r2
d004b6bc:	fb0a 9915 	mls	r9, sl, r5, r9
d004b6c0:	f342 32cf 	sbfx	r2, r2, #15, #16
d004b6c4:	fb03 fb07 	mul.w	fp, r3, r7
d004b6c8:	ea4f 39e9 	mov.w	r9, r9, asr #15
d004b6cc:	fb02 fa07 	mul.w	sl, r2, r7
d004b6d0:	fb02 b20c 	mla	r2, r2, ip, fp
d004b6d4:	fb03 a31c 	mls	r3, r3, ip, sl
d004b6d8:	13d2      	asrs	r2, r2, #15
d004b6da:	f820 9c04 	strh.w	r9, [r0, #-4]
d004b6de:	13db      	asrs	r3, r3, #15
d004b6e0:	f820 2c06 	strh.w	r2, [r0, #-6]
d004b6e4:	f820 3c08 	strh.w	r3, [r0, #-8]
d004b6e8:	4b21      	ldr	r3, [pc, #132]	; (d004b770 <draw_cube+0x384>)
d004b6ea:	428b      	cmp	r3, r1
d004b6ec:	d1c9      	bne.n	d004b682 <draw_cube+0x296>
d004b6ee:	f10d 0027 	add.w	r0, sp, #39	; 0x27
d004b6f2:	f10d 05bd 	add.w	r5, sp, #189	; 0xbd
d004b6f6:	2700      	movs	r7, #0
d004b6f8:	a930      	add	r1, sp, #192	; 0xc0
d004b6fa:	2601      	movs	r6, #1
d004b6fc:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
d004b700:	f503 7cfa 	add.w	ip, r3, #500	; 0x1f4
d004b704:	f1bc 0f00 	cmp.w	ip, #0
d004b708:	f340 8134 	ble.w	d004b974 <draw_cube+0x588>
d004b70c:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
d004b710:	3104      	adds	r1, #4
d004b712:	f934 3b08 	ldrsh.w	r3, [r4], #8
d004b716:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d004b71a:	f800 6f01 	strb.w	r6, [r0, #1]!
d004b71e:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d004b722:	42a8      	cmp	r0, r5
d004b724:	ea4f 1202 	mov.w	r2, r2, lsl #4
d004b728:	ea4f 1303 	mov.w	r3, r3, lsl #4
d004b72c:	fb92 f2fc 	sdiv	r2, r2, ip
d004b730:	fb93 f3fc 	sdiv	r3, r3, ip
d004b734:	f1c2 02a0 	rsb	r2, r2, #160	; 0xa0
d004b738:	f103 03f0 	add.w	r3, r3, #240	; 0xf0
d004b73c:	f821 2c02 	strh.w	r2, [r1, #-2]
d004b740:	f821 3c04 	strh.w	r3, [r1, #-4]
d004b744:	d1da      	bne.n	d004b6fc <draw_cube+0x310>
d004b746:	f8df b034 	ldr.w	fp, [pc, #52]	; d004b77c <draw_cube+0x390>
d004b74a:	e019      	b.n	d004b780 <draw_cube+0x394>
d004b74c:	d0051e80 	.word	0xd0051e80
d004b750:	d00532d4 	.word	0xd00532d4
d004b754:	d0051f44 	.word	0xd0051f44
d004b758:	d005378c 	.word	0xd005378c
d004b75c:	d0052e24 	.word	0xd0052e24
d004b760:	d0051f08 	.word	0xd0051f08
d004b764:	b60b60b7 	.word	0xb60b60b7
d004b768:	d0051f0c 	.word	0xd0051f0c
d004b76c:	d00532d8 	.word	0xd00532d8
d004b770:	d00532d4 	.word	0xd00532d4
d004b774:	d0051e7c 	.word	0xd0051e7c
d004b778:	d0051f10 	.word	0xd0051f10
d004b77c:	d0052800 	.word	0xd0052800
d004b780:	f9bb 3000 	ldrsh.w	r3, [fp]
d004b784:	aa0a      	add	r2, sp, #40	; 0x28
d004b786:	5cd2      	ldrb	r2, [r2, r3]
d004b788:	2a00      	cmp	r2, #0
d004b78a:	f000 80e9 	beq.w	d004b960 <draw_cube+0x574>
d004b78e:	f9bb 2002 	ldrsh.w	r2, [fp, #2]
d004b792:	a90a      	add	r1, sp, #40	; 0x28
d004b794:	5c88      	ldrb	r0, [r1, r2]
d004b796:	2800      	cmp	r0, #0
d004b798:	f000 80e2 	beq.w	d004b960 <draw_cube+0x574>
d004b79c:	f9bb 5004 	ldrsh.w	r5, [fp, #4]
d004b7a0:	5d48      	ldrb	r0, [r1, r5]
d004b7a2:	2800      	cmp	r0, #0
d004b7a4:	f000 80dc 	beq.w	d004b960 <draw_cube+0x574>
d004b7a8:	a930      	add	r1, sp, #192	; 0xc0
d004b7aa:	eb01 0083 	add.w	r0, r1, r3, lsl #2
d004b7ae:	f931 8023 	ldrsh.w	r8, [r1, r3, lsl #2]
d004b7b2:	eb01 0385 	add.w	r3, r1, r5, lsl #2
d004b7b6:	f931 4022 	ldrsh.w	r4, [r1, r2, lsl #2]
d004b7ba:	f9b0 7002 	ldrsh.w	r7, [r0, #2]
d004b7be:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d004b7c2:	f9b3 0002 	ldrsh.w	r0, [r3, #2]
d004b7c6:	eba4 0608 	sub.w	r6, r4, r8
d004b7ca:	f931 c025 	ldrsh.w	ip, [r1, r5, lsl #2]
d004b7ce:	1bc3      	subs	r3, r0, r7
d004b7d0:	f9b2 5002 	ldrsh.w	r5, [r2, #2]
d004b7d4:	9604      	str	r6, [sp, #16]
d004b7d6:	ebac 0208 	sub.w	r2, ip, r8
d004b7da:	fb06 f303 	mul.w	r3, r6, r3
d004b7de:	1bee      	subs	r6, r5, r7
d004b7e0:	fb06 3312 	mls	r3, r6, r2, r3
d004b7e4:	9601      	str	r6, [sp, #4]
d004b7e6:	2b00      	cmp	r3, #0
d004b7e8:	f2c0 80ba 	blt.w	d004b960 <draw_cube+0x574>
d004b7ec:	9900      	ldr	r1, [sp, #0]
d004b7ee:	2900      	cmp	r1, #0
d004b7f0:	f000 80b6 	beq.w	d004b960 <draw_cube+0x574>
d004b7f4:	680a      	ldr	r2, [r1, #0]
d004b7f6:	2a00      	cmp	r2, #0
d004b7f8:	f000 80b2 	beq.w	d004b960 <draw_cube+0x574>
d004b7fc:	4544      	cmp	r4, r8
d004b7fe:	46a6      	mov	lr, r4
d004b800:	4626      	mov	r6, r4
d004b802:	462a      	mov	r2, r5
d004b804:	bfa8      	it	ge
d004b806:	46c6      	movge	lr, r8
d004b808:	4544      	cmp	r4, r8
d004b80a:	46aa      	mov	sl, r5
d004b80c:	f8b1 9004 	ldrh.w	r9, [r1, #4]
d004b810:	bfb8      	it	lt
d004b812:	4646      	movlt	r6, r8
d004b814:	42bd      	cmp	r5, r7
d004b816:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
d004b81a:	bfa8      	it	ge
d004b81c:	463a      	movge	r2, r7
d004b81e:	42bd      	cmp	r5, r7
d004b820:	bfb8      	it	lt
d004b822:	46ba      	movlt	sl, r7
d004b824:	45e6      	cmp	lr, ip
d004b826:	bfa8      	it	ge
d004b828:	46e6      	movge	lr, ip
d004b82a:	4566      	cmp	r6, ip
d004b82c:	4651      	mov	r1, sl
d004b82e:	bfb8      	it	lt
d004b830:	4666      	movlt	r6, ip
d004b832:	4282      	cmp	r2, r0
d004b834:	bfa8      	it	ge
d004b836:	4602      	movge	r2, r0
d004b838:	4582      	cmp	sl, r0
d004b83a:	bfb8      	it	lt
d004b83c:	4601      	movlt	r1, r0
d004b83e:	f1be 0f00 	cmp.w	lr, #0
d004b842:	9105      	str	r1, [sp, #20]
d004b844:	f2c0 80ab 	blt.w	d004b99e <draw_cube+0x5b2>
d004b848:	45ce      	cmp	lr, r9
d004b84a:	4671      	mov	r1, lr
d004b84c:	bfa8      	it	ge
d004b84e:	4649      	movge	r1, r9
d004b850:	9103      	str	r1, [sp, #12]
d004b852:	2e00      	cmp	r6, #0
d004b854:	f2c0 80a0 	blt.w	d004b998 <draw_cube+0x5ac>
d004b858:	454e      	cmp	r6, r9
d004b85a:	4631      	mov	r1, r6
d004b85c:	bfa8      	it	ge
d004b85e:	4649      	movge	r1, r9
d004b860:	9102      	str	r1, [sp, #8]
d004b862:	9900      	ldr	r1, [sp, #0]
d004b864:	2a00      	cmp	r2, #0
d004b866:	f8b1 a006 	ldrh.w	sl, [r1, #6]
d004b86a:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
d004b86e:	f2c0 808b 	blt.w	d004b988 <draw_cube+0x59c>
d004b872:	4552      	cmp	r2, sl
d004b874:	9905      	ldr	r1, [sp, #20]
d004b876:	bfa8      	it	ge
d004b878:	4652      	movge	r2, sl
d004b87a:	2900      	cmp	r1, #0
d004b87c:	f2c0 8089 	blt.w	d004b992 <draw_cube+0x5a6>
d004b880:	4551      	cmp	r1, sl
d004b882:	bfa8      	it	ge
d004b884:	4651      	movge	r1, sl
d004b886:	9105      	str	r1, [sp, #20]
d004b888:	9e03      	ldr	r6, [sp, #12]
d004b88a:	9902      	ldr	r1, [sp, #8]
d004b88c:	428e      	cmp	r6, r1
d004b88e:	dc67      	bgt.n	d004b960 <draw_cube+0x574>
d004b890:	9905      	ldr	r1, [sp, #20]
d004b892:	428a      	cmp	r2, r1
d004b894:	dc64      	bgt.n	d004b960 <draw_cube+0x574>
d004b896:	2b00      	cmp	r3, #0
d004b898:	d062      	beq.n	d004b960 <draw_cube+0x574>
d004b89a:	ebac 0104 	sub.w	r1, ip, r4
d004b89e:	1b56      	subs	r6, r2, r5
d004b8a0:	eba8 030c 	sub.w	r3, r8, ip
d004b8a4:	eba2 0900 	sub.w	r9, r2, r0
d004b8a8:	fb01 f606 	mul.w	r6, r1, r6
d004b8ac:	9107      	str	r1, [sp, #28]
d004b8ae:	9903      	ldr	r1, [sp, #12]
d004b8b0:	9306      	str	r3, [sp, #24]
d004b8b2:	eba1 0e08 	sub.w	lr, r1, r8
d004b8b6:	eba1 0c0c 	sub.w	ip, r1, ip
d004b8ba:	9906      	ldr	r1, [sp, #24]
d004b8bc:	eba2 0807 	sub.w	r8, r2, r7
d004b8c0:	9b03      	ldr	r3, [sp, #12]
d004b8c2:	1a3f      	subs	r7, r7, r0
d004b8c4:	fb01 f909 	mul.w	r9, r1, r9
d004b8c8:	9904      	ldr	r1, [sp, #16]
d004b8ca:	1b1c      	subs	r4, r3, r4
d004b8cc:	1b43      	subs	r3, r0, r5
d004b8ce:	fb01 f808 	mul.w	r8, r1, r8
d004b8d2:	f89b 1006 	ldrb.w	r1, [fp, #6]
d004b8d6:	fb03 6614 	mls	r6, r3, r4, r6
d004b8da:	1a2b      	subs	r3, r5, r0
d004b8dc:	9108      	str	r1, [sp, #32]
d004b8de:	46ba      	mov	sl, r7
d004b8e0:	9901      	ldr	r1, [sp, #4]
d004b8e2:	fb07 991c 	mls	r9, r7, ip, r9
d004b8e6:	f8cd b024 	str.w	fp, [sp, #36]	; 0x24
d004b8ea:	469b      	mov	fp, r3
d004b8ec:	fb01 881e 	mls	r8, r1, lr, r8
d004b8f0:	46b6      	mov	lr, r6
d004b8f2:	9900      	ldr	r1, [sp, #0]
d004b8f4:	0fd7      	lsrs	r7, r2, #31
d004b8f6:	4645      	mov	r5, r8
d004b8f8:	464c      	mov	r4, r9
d004b8fa:	4670      	mov	r0, lr
d004b8fc:	9b03      	ldr	r3, [sp, #12]
d004b8fe:	9700      	str	r7, [sp, #0]
d004b900:	2800      	cmp	r0, #0
d004b902:	4458      	add	r0, fp
d004b904:	db17      	blt.n	d004b936 <draw_cube+0x54a>
d004b906:	2c00      	cmp	r4, #0
d004b908:	db15      	blt.n	d004b936 <draw_cube+0x54a>
d004b90a:	2d00      	cmp	r5, #0
d004b90c:	db13      	blt.n	d004b936 <draw_cube+0x54a>
d004b90e:	680e      	ldr	r6, [r1, #0]
d004b910:	b18e      	cbz	r6, d004b936 <draw_cube+0x54a>
d004b912:	2b00      	cmp	r3, #0
d004b914:	db0f      	blt.n	d004b936 <draw_cube+0x54a>
d004b916:	9f00      	ldr	r7, [sp, #0]
d004b918:	b96f      	cbnz	r7, d004b936 <draw_cube+0x54a>
d004b91a:	f8b1 c004 	ldrh.w	ip, [r1, #4]
d004b91e:	459c      	cmp	ip, r3
d004b920:	dd09      	ble.n	d004b936 <draw_cube+0x54a>
d004b922:	f8b1 c006 	ldrh.w	ip, [r1, #6]
d004b926:	4594      	cmp	ip, r2
d004b928:	dd05      	ble.n	d004b936 <draw_cube+0x54a>
d004b92a:	f8b1 c008 	ldrh.w	ip, [r1, #8]
d004b92e:	9f08      	ldr	r7, [sp, #32]
d004b930:	fb03 660c 	mla	r6, r3, ip, r6
d004b934:	54b7      	strb	r7, [r6, r2]
d004b936:	9e01      	ldr	r6, [sp, #4]
d004b938:	3301      	adds	r3, #1
d004b93a:	eba4 040a 	sub.w	r4, r4, sl
d004b93e:	1bad      	subs	r5, r5, r6
d004b940:	9e02      	ldr	r6, [sp, #8]
d004b942:	429e      	cmp	r6, r3
d004b944:	dadc      	bge.n	d004b900 <draw_cube+0x514>
d004b946:	9b07      	ldr	r3, [sp, #28]
d004b948:	3201      	adds	r2, #1
d004b94a:	449e      	add	lr, r3
d004b94c:	9b06      	ldr	r3, [sp, #24]
d004b94e:	4499      	add	r9, r3
d004b950:	9b04      	ldr	r3, [sp, #16]
d004b952:	4498      	add	r8, r3
d004b954:	9b05      	ldr	r3, [sp, #20]
d004b956:	4293      	cmp	r3, r2
d004b958:	dacc      	bge.n	d004b8f4 <draw_cube+0x508>
d004b95a:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
d004b95e:	9100      	str	r1, [sp, #0]
d004b960:	f10b 0b08 	add.w	fp, fp, #8
d004b964:	4b15      	ldr	r3, [pc, #84]	; (d004b9bc <draw_cube+0x5d0>)
d004b966:	455b      	cmp	r3, fp
d004b968:	f47f af0a 	bne.w	d004b780 <draw_cube+0x394>
d004b96c:	f50d 7d47 	add.w	sp, sp, #796	; 0x31c
d004b970:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004b974:	f800 7f01 	strb.w	r7, [r0, #1]!
d004b978:	4285      	cmp	r5, r0
d004b97a:	f104 0408 	add.w	r4, r4, #8
d004b97e:	f101 0104 	add.w	r1, r1, #4
d004b982:	f47f aebb 	bne.w	d004b6fc <draw_cube+0x310>
d004b986:	e6de      	b.n	d004b746 <draw_cube+0x35a>
d004b988:	9905      	ldr	r1, [sp, #20]
d004b98a:	2200      	movs	r2, #0
d004b98c:	2900      	cmp	r1, #0
d004b98e:	f6bf af77 	bge.w	d004b880 <draw_cube+0x494>
d004b992:	2100      	movs	r1, #0
d004b994:	9105      	str	r1, [sp, #20]
d004b996:	e777      	b.n	d004b888 <draw_cube+0x49c>
d004b998:	2100      	movs	r1, #0
d004b99a:	9102      	str	r1, [sp, #8]
d004b99c:	e761      	b.n	d004b862 <draw_cube+0x476>
d004b99e:	2100      	movs	r1, #0
d004b9a0:	9103      	str	r1, [sp, #12]
d004b9a2:	e756      	b.n	d004b852 <draw_cube+0x466>
d004b9a4:	f117 0fff 	cmn.w	r7, #255	; 0xff
d004b9a8:	da06      	bge.n	d004b9b8 <draw_cube+0x5cc>
d004b9aa:	f06f 01fe 	mvn.w	r1, #254	; 0xfe
d004b9ae:	2005      	movs	r0, #5
d004b9b0:	460f      	mov	r7, r1
d004b9b2:	6019      	str	r1, [r3, #0]
d004b9b4:	6010      	str	r0, [r2, #0]
d004b9b6:	e52e      	b.n	d004b416 <draw_cube+0x2a>
d004b9b8:	601f      	str	r7, [r3, #0]
d004b9ba:	e52c      	b.n	d004b416 <draw_cube+0x2a>
d004b9bc:	d0052e00 	.word	0xd0052e00

d004b9c0 <main>:
d004b9c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004b9c4:	f8df b454 	ldr.w	fp, [pc, #1108]	; d004be1c <main+0x45c>
d004b9c8:	b0bd      	sub	sp, #244	; 0xf4
d004b9ca:	2000      	movs	r0, #0
d004b9cc:	f8df 8450 	ldr.w	r8, [pc, #1104]	; d004be20 <main+0x460>
d004b9d0:	f89b 3000 	ldrb.w	r3, [fp]
d004b9d4:	f89b 2001 	ldrb.w	r2, [fp, #1]
d004b9d8:	f89b 1002 	ldrb.w	r1, [fp, #2]
d004b9dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004b9e0:	f89b 2003 	ldrb.w	r2, [fp, #3]
d004b9e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004b9e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004b9ec:	681b      	ldr	r3, [r3, #0]
d004b9ee:	4798      	blx	r3
d004b9f0:	f89b 3004 	ldrb.w	r3, [fp, #4]
d004b9f4:	f89b 2005 	ldrb.w	r2, [fp, #5]
d004b9f8:	f89b 1006 	ldrb.w	r1, [fp, #6]
d004b9fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ba00:	f89b 2007 	ldrb.w	r2, [fp, #7]
d004ba04:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ba08:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ba0c:	689b      	ldr	r3, [r3, #8]
d004ba0e:	4798      	blx	r3
d004ba10:	f7ff fb22 	bl	d004b058 <initMalloc>
d004ba14:	f89b 3014 	ldrb.w	r3, [fp, #20]
d004ba18:	f89b 2015 	ldrb.w	r2, [fp, #21]
d004ba1c:	f44f 7000 	mov.w	r0, #512	; 0x200
d004ba20:	f89b 1016 	ldrb.w	r1, [fp, #22]
d004ba24:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ba28:	f89b 2017 	ldrb.w	r2, [fp, #23]
d004ba2c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ba30:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ba34:	681b      	ldr	r3, [r3, #0]
d004ba36:	681b      	ldr	r3, [r3, #0]
d004ba38:	4798      	blx	r3
d004ba3a:	f89b 2014 	ldrb.w	r2, [fp, #20]
d004ba3e:	f89b 3015 	ldrb.w	r3, [fp, #21]
d004ba42:	2101      	movs	r1, #1
d004ba44:	f89b 4016 	ldrb.w	r4, [fp, #22]
d004ba48:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d004ba4c:	f89b 0017 	ldrb.w	r0, [fp, #23]
d004ba50:	f89b 3014 	ldrb.w	r3, [fp, #20]
d004ba54:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
d004ba58:	f89b 5015 	ldrb.w	r5, [fp, #21]
d004ba5c:	f89b 4016 	ldrb.w	r4, [fp, #22]
d004ba60:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d004ba64:	f89b 0017 	ldrb.w	r0, [fp, #23]
d004ba68:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d004ba6c:	2506      	movs	r5, #6
d004ba6e:	6812      	ldr	r2, [r2, #0]
d004ba70:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d004ba74:	6852      	ldr	r2, [r2, #4]
d004ba76:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004ba7a:	7011      	strb	r1, [r2, #0]
d004ba7c:	681b      	ldr	r3, [r3, #0]
d004ba7e:	68db      	ldr	r3, [r3, #12]
d004ba80:	4798      	blx	r3
d004ba82:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004ba86:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004ba8a:	2190      	movs	r1, #144	; 0x90
d004ba8c:	f89b 400e 	ldrb.w	r4, [fp, #14]
d004ba90:	20dc      	movs	r0, #220	; 0xdc
d004ba92:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ba96:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004ba9a:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d004ba9e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004baa2:	681b      	ldr	r3, [r3, #0]
d004baa4:	691b      	ldr	r3, [r3, #16]
d004baa6:	4798      	blx	r3
d004baa8:	f89b 400c 	ldrb.w	r4, [fp, #12]
d004baac:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004bab0:	f44f 7320 	mov.w	r3, #640	; 0x280
d004bab4:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004bab8:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d004babc:	f89b 000f 	ldrb.w	r0, [fp, #15]
d004bac0:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d004bac4:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d004bac8:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004bacc:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d004bad0:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d004bad4:	6824      	ldr	r4, [r4, #0]
d004bad6:	9500      	str	r5, [sp, #0]
d004bad8:	6964      	ldr	r4, [r4, #20]
d004bada:	47a0      	blx	r4
d004badc:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004bae0:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004bae4:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004bae8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004baec:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004baf0:	4cc3      	ldr	r4, [pc, #780]	; (d004be00 <main+0x440>)
d004baf2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004baf6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004bafa:	681b      	ldr	r3, [r3, #0]
d004bafc:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d004bafe:	4798      	blx	r3
d004bb00:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004bb04:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004bb08:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004bb0c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004bb10:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004bb14:	6020      	str	r0, [r4, #0]
d004bb16:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004bb1a:	4cba      	ldr	r4, [pc, #744]	; (d004be04 <main+0x444>)
d004bb1c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004bb20:	681b      	ldr	r3, [r3, #0]
d004bb22:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d004bb24:	4798      	blx	r3
d004bb26:	4603      	mov	r3, r0
d004bb28:	f44f 7220 	mov.w	r2, #640	; 0x280
d004bb2c:	f44f 7170 	mov.w	r1, #960	; 0x3c0
d004bb30:	48b5      	ldr	r0, [pc, #724]	; (d004be08 <main+0x448>)
d004bb32:	6023      	str	r3, [r4, #0]
d004bb34:	f7ff fa82 	bl	d004b03c <gfx_createBitmap>
d004bb38:	f04f 407f 	mov.w	r0, #4278190080	; 0xff000000
d004bb3c:	f04f 417f 	mov.w	r1, #4278190080	; 0xff000000
d004bb40:	4643      	mov	r3, r8
d004bb42:	f508 6280 	add.w	r2, r8, #1024	; 0x400
d004bb46:	e8e3 0102 	strd	r0, r1, [r3], #8
d004bb4a:	4293      	cmp	r3, r2
d004bb4c:	d1fb      	bne.n	d004bb46 <main+0x186>
d004bb4e:	a79a      	add	r7, pc, #616	; (adr r7, d004bdb8 <main+0x3f8>)
d004bb50:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb54:	4cad      	ldr	r4, [pc, #692]	; (d004be0c <main+0x44c>)
d004bb56:	f10d 0e60 	add.w	lr, sp, #96	; 0x60
d004bb5a:	f04f 497f 	mov.w	r9, #4278190080	; 0xff000000
d004bb5e:	f8df a2c4 	ldr.w	sl, [pc, #708]	; d004be24 <main+0x464>
d004bb62:	f10d 0c90 	add.w	ip, sp, #144	; 0x90
d004bb66:	ad30      	add	r5, sp, #192	; 0xc0
d004bb68:	e9c8 6700 	strd	r6, r7, [r8]
d004bb6c:	a794      	add	r7, pc, #592	; (adr r7, d004bdc0 <main+0x400>)
d004bb6e:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb72:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004bb74:	e9c8 6702 	strd	r6, r7, [r8, #8]
d004bb78:	a793      	add	r7, pc, #588	; (adr r7, d004bdc8 <main+0x408>)
d004bb7a:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb7e:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004bb82:	e9c8 6704 	strd	r6, r7, [r8, #16]
d004bb86:	a792      	add	r7, pc, #584	; (adr r7, d004bdd0 <main+0x410>)
d004bb88:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb8c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004bb8e:	e9c8 6706 	strd	r6, r7, [r8, #24]
d004bb92:	a791      	add	r7, pc, #580	; (adr r7, d004bdd8 <main+0x418>)
d004bb94:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb98:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004bb9c:	e9c8 6708 	strd	r6, r7, [r8, #32]
d004bba0:	a78f      	add	r7, pc, #572	; (adr r7, d004bde0 <main+0x420>)
d004bba2:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bba6:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d004bbaa:	e9c8 670a 	strd	r6, r7, [r8, #40]	; 0x28
d004bbae:	a78e      	add	r7, pc, #568	; (adr r7, d004bde8 <main+0x428>)
d004bbb0:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bbb4:	e9c8 9a12 	strd	r9, sl, [r8, #72]	; 0x48
d004bbb8:	e9c8 670c 	strd	r6, r7, [r8, #48]	; 0x30
d004bbbc:	a78c      	add	r7, pc, #560	; (adr r7, d004bdf0 <main+0x430>)
d004bbbe:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bbc2:	f104 0910 	add.w	r9, r4, #16
d004bbc6:	3440      	adds	r4, #64	; 0x40
d004bbc8:	e9c8 670e 	strd	r6, r7, [r8, #56]	; 0x38
d004bbcc:	a78a      	add	r7, pc, #552	; (adr r7, d004bdf8 <main+0x438>)
d004bbce:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bbd2:	e9c8 6710 	strd	r6, r7, [r8, #64]	; 0x40
d004bbd6:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
d004bbda:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d004bbde:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004bbe2:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d004bbe6:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004bbea:	e899 000f 	ldmia.w	r9, {r0, r1, r2, r3}
d004bbee:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004bbf2:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004bbf4:	2600      	movs	r6, #0
d004bbf6:	f8df e230 	ldr.w	lr, [pc, #560]	; d004be28 <main+0x468>
d004bbfa:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004bbfc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004bbfe:	9603      	str	r6, [sp, #12]
d004bc00:	ae18      	add	r6, sp, #96	; 0x60
d004bc02:	46f2      	mov	sl, lr
d004bc04:	9608      	str	r6, [sp, #32]
d004bc06:	ae24      	add	r6, sp, #144	; 0x90
d004bc08:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004bc0a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d004bc0e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d004bc12:	4b7f      	ldr	r3, [pc, #508]	; (d004be10 <main+0x450>)
d004bc14:	9607      	str	r6, [sp, #28]
d004bc16:	ae30      	add	r6, sp, #192	; 0xc0
d004bc18:	930f      	str	r3, [sp, #60]	; 0x3c
d004bc1a:	4b7e      	ldr	r3, [pc, #504]	; (d004be14 <main+0x454>)
d004bc1c:	9609      	str	r6, [sp, #36]	; 0x24
d004bc1e:	930a      	str	r3, [sp, #40]	; 0x28
d004bc20:	9b07      	ldr	r3, [sp, #28]
d004bc22:	9a03      	ldr	r2, [sp, #12]
d004bc24:	8819      	ldrh	r1, [r3, #0]
d004bc26:	9205      	str	r2, [sp, #20]
d004bc28:	885a      	ldrh	r2, [r3, #2]
d004bc2a:	ebc1 2541 	rsb	r5, r1, r1, lsl #9
d004bc2e:	889b      	ldrh	r3, [r3, #4]
d004bc30:	9f08      	ldr	r7, [sp, #32]
d004bc32:	ebc2 2442 	rsb	r4, r2, r2, lsl #9
d004bc36:	ebc3 2043 	rsb	r0, r3, r3, lsl #9
d004bc3a:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
d004bc3e:	f8b7 c000 	ldrh.w	ip, [r7]
d004bc42:	eb02 0484 	add.w	r4, r2, r4, lsl #2
d004bc46:	887e      	ldrh	r6, [r7, #2]
d004bc48:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d004bc4c:	f8b7 8004 	ldrh.w	r8, [r7, #4]
d004bc50:	eb01 0585 	add.w	r5, r1, r5, lsl #2
d004bc54:	9f09      	ldr	r7, [sp, #36]	; 0x24
d004bc56:	ebc3 00c0 	rsb	r0, r3, r0, lsl #3
d004bc5a:	9404      	str	r4, [sp, #16]
d004bc5c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bc60:	883c      	ldrh	r4, [r7, #0]
d004bc62:	ebc1 05c5 	rsb	r5, r1, r5, lsl #3
d004bc66:	f8b7 e002 	ldrh.w	lr, [r7, #2]
d004bc6a:	eb0c 0c8c 	add.w	ip, ip, ip, lsl #2
d004bc6e:	940b      	str	r4, [sp, #44]	; 0x2c
d004bc70:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d004bc74:	9c03      	ldr	r4, [sp, #12]
d004bc76:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bc7a:	f8cd e030 	str.w	lr, [sp, #48]	; 0x30
d004bc7e:	eb0c 0c8c 	add.w	ip, ip, ip, lsl #2
d004bc82:	f8b7 e004 	ldrh.w	lr, [r7, #4]
d004bc86:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d004bc8a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
d004bc8c:	eb06 0686 	add.w	r6, r6, r6, lsl #2
d004bc90:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
d004bc94:	f104 0e19 	add.w	lr, r4, #25
d004bc98:	9c04      	ldr	r4, [sp, #16]
d004bc9a:	00ad      	lsls	r5, r5, #2
d004bc9c:	f8cd e058 	str.w	lr, [sp, #88]	; 0x58
d004bca0:	0080      	lsls	r0, r0, #2
d004bca2:	ebc2 04c4 	rsb	r4, r2, r4, lsl #3
d004bca6:	ebc7 3ec7 	rsb	lr, r7, r7, lsl #15
d004bcaa:	9f0c      	ldr	r7, [sp, #48]	; 0x30
d004bcac:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d004bcb0:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d004bcb4:	005b      	lsls	r3, r3, #1
d004bcb6:	eb06 0686 	add.w	r6, r6, r6, lsl #2
d004bcba:	eb05 058c 	add.w	r5, r5, ip, lsl #2
d004bcbe:	b29b      	uxth	r3, r3
d004bcc0:	ebc7 3cc7 	rsb	ip, r7, r7, lsl #15
d004bcc4:	9f0d      	ldr	r7, [sp, #52]	; 0x34
d004bcc6:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d004bcca:	9313      	str	r3, [sp, #76]	; 0x4c
d004bccc:	00a4      	lsls	r4, r4, #2
d004bcce:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d004bcd2:	eb00 0088 	add.w	r0, r0, r8, lsl #2
d004bcd6:	eb04 0486 	add.w	r4, r4, r6, lsl #2
d004bcda:	b283      	uxth	r3, r0
d004bcdc:	ebc7 36c7 	rsb	r6, r7, r7, lsl #15
d004bce0:	464f      	mov	r7, r9
d004bce2:	0049      	lsls	r1, r1, #1
d004bce4:	9312      	str	r3, [sp, #72]	; 0x48
d004bce6:	0052      	lsls	r2, r2, #1
d004bce8:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
d004bcec:	b289      	uxth	r1, r1
d004bcee:	b292      	uxth	r2, r2
d004bcf0:	fa1f f38c 	uxth.w	r3, ip
d004bcf4:	9115      	str	r1, [sp, #84]	; 0x54
d004bcf6:	0076      	lsls	r6, r6, #1
d004bcf8:	9214      	str	r2, [sp, #80]	; 0x50
d004bcfa:	9306      	str	r3, [sp, #24]
d004bcfc:	b2a2      	uxth	r2, r4
d004bcfe:	b2b3      	uxth	r3, r6
d004bd00:	ea4f 0e4e 	mov.w	lr, lr, lsl #1
d004bd04:	9211      	str	r2, [sp, #68]	; 0x44
d004bd06:	b2a9      	uxth	r1, r5
d004bd08:	fa1f fe8e 	uxth.w	lr, lr
d004bd0c:	9110      	str	r1, [sp, #64]	; 0x40
d004bd0e:	9304      	str	r3, [sp, #16]
d004bd10:	9b06      	ldr	r3, [sp, #24]
d004bd12:	9c05      	ldr	r4, [sp, #20]
d004bd14:	f8cd a05c 	str.w	sl, [sp, #92]	; 0x5c
d004bd18:	f107 0028 	add.w	r0, r7, #40	; 0x28
d004bd1c:	eb0e 018e 	add.w	r1, lr, lr, lsl #2
d004bd20:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004bd24:	9b04      	ldr	r3, [sp, #16]
d004bd26:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d004bd2a:	900e      	str	r0, [sp, #56]	; 0x38
d004bd2c:	9810      	ldr	r0, [sp, #64]	; 0x40
d004bd2e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bd32:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d004bd36:	eb00 0141 	add.w	r1, r0, r1, lsl #1
d004bd3a:	9811      	ldr	r0, [sp, #68]	; 0x44
d004bd3c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bd40:	eb00 0242 	add.w	r2, r0, r2, lsl #1
d004bd44:	9812      	ldr	r0, [sp, #72]	; 0x48
d004bd46:	b289      	uxth	r1, r1
d004bd48:	eb00 0343 	add.w	r3, r0, r3, lsl #1
d004bd4c:	4832      	ldr	r0, [pc, #200]	; (d004be18 <main+0x458>)
d004bd4e:	b292      	uxth	r2, r2
d004bd50:	b29b      	uxth	r3, r3
d004bd52:	eb00 0cc4 	add.w	ip, r0, r4, lsl #3
d004bd56:	b214      	sxth	r4, r2
d004bd58:	f04f 0000 	mov.w	r0, #0
d004bd5c:	b20d      	sxth	r5, r1
d004bd5e:	f04f 4680 	mov.w	r6, #1073741824	; 0x40000000
d004bd62:	fb04 f804 	mul.w	r8, r4, r4
d004bd66:	80f8      	strh	r0, [r7, #6]
d004bd68:	b218      	sxth	r0, r3
d004bd6a:	fb05 8805 	mla	r8, r5, r5, r8
d004bd6e:	807c      	strh	r4, [r7, #2]
d004bd70:	fb00 8800 	mla	r8, r0, r0, r8
d004bd74:	803d      	strh	r5, [r7, #0]
d004bd76:	f1b8 4f80 	cmp.w	r8, #1073741824	; 0x40000000
d004bd7a:	80b8      	strh	r0, [r7, #4]
d004bd7c:	d204      	bcs.n	d004bd88 <main+0x3c8>
d004bd7e:	08b6      	lsrs	r6, r6, #2
d004bd80:	45b0      	cmp	r8, r6
d004bd82:	d3fc      	bcc.n	d004bd7e <main+0x3be>
d004bd84:	2e00      	cmp	r6, #0
d004bd86:	d051      	beq.n	d004be2c <main+0x46c>
d004bd88:	f04f 0900 	mov.w	r9, #0
d004bd8c:	e005      	b.n	d004bd9a <main+0x3da>
d004bd8e:	eb06 0959 	add.w	r9, r6, r9, lsr #1
d004bd92:	eba8 080a 	sub.w	r8, r8, sl
d004bd96:	08b6      	lsrs	r6, r6, #2
d004bd98:	d007      	beq.n	d004bdaa <main+0x3ea>
d004bd9a:	eb06 0a09 	add.w	sl, r6, r9
d004bd9e:	45c2      	cmp	sl, r8
d004bda0:	d9f5      	bls.n	d004bd8e <main+0x3ce>
d004bda2:	08b6      	lsrs	r6, r6, #2
d004bda4:	ea4f 0959 	mov.w	r9, r9, lsr #1
d004bda8:	d1f7      	bne.n	d004bd9a <main+0x3da>
d004bdaa:	464e      	mov	r6, r9
d004bdac:	2e01      	cmp	r6, #1
d004bdae:	bf38      	it	cc
d004bdb0:	2601      	movcc	r6, #1
d004bdb2:	e03c      	b.n	d004be2e <main+0x46e>
d004bdb4:	f3af 8000 	nop.w
d004bdb8:	00000000 	.word	0x00000000
d004bdbc:	8f245dff 	.word	0x8f245dff
d004bdc0:	8f24e06f 	.word	0x8f24e06f
d004bdc4:	8fff3d52 	.word	0x8fff3d52
d004bdc8:	8fb24bff 	.word	0x8fb24bff
d004bdcc:	8ffff040 	.word	0x8ffff040
d004bdd0:	8fff9a24 	.word	0x8fff9a24
d004bdd4:	6f102c88 	.word	0x6f102c88
d004bdd8:	6f08763f 	.word	0x6f08763f
d004bddc:	6f8d1723 	.word	0x6f8d1723
d004bde0:	6f5a257f 	.word	0x6f5a257f
d004bde4:	6f8f8420 	.word	0x6f8f8420
d004bde8:	6f9a5412 	.word	0x6f9a5412
d004bdec:	5f15315a 	.word	0x5f15315a
d004bdf0:	5fb7c7d9 	.word	0x5fb7c7d9
d004bdf4:	5f07101f 	.word	0x5f07101f
d004bdf8:	5fff3348 	.word	0x5fff3348
d004bdfc:	ffffffff 	.word	0xffffffff
d004be00:	d0052e00 	.word	0xd0052e00
d004be04:	d0052e20 	.word	0xd0052e20
d004be08:	d0051f20 	.word	0xd0051f20
d004be0c:	d004d2f0 	.word	0xd004d2f0
d004be10:	d004d380 	.word	0xd004d380
d004be14:	d0051f44 	.word	0xd0051f44
d004be18:	d005378c 	.word	0xd005378c
d004be1c:	2001f000 	.word	0x2001f000
d004be20:	d0052400 	.word	0xd0052400
d004be24:	6f000147 	.word	0x6f000147
d004be28:	d0052800 	.word	0xd0052800
d004be2c:	2601      	movs	r6, #1
d004be2e:	eb05 0885 	add.w	r8, r5, r5, lsl #2
d004be32:	9d15      	ldr	r5, [sp, #84]	; 0x54
d004be34:	eb04 0484 	add.w	r4, r4, r4, lsl #2
d004be38:	3708      	adds	r7, #8
d004be3a:	4429      	add	r1, r5
d004be3c:	9d14      	ldr	r5, [sp, #80]	; 0x50
d004be3e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004be42:	f10c 0c08 	add.w	ip, ip, #8
d004be46:	442a      	add	r2, r5
d004be48:	9d13      	ldr	r5, [sp, #76]	; 0x4c
d004be4a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
d004be4e:	442b      	add	r3, r5
d004be50:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004be54:	eb08 0588 	add.w	r5, r8, r8, lsl #2
d004be58:	f04f 0800 	mov.w	r8, #0
d004be5c:	0080      	lsls	r0, r0, #2
d004be5e:	00ad      	lsls	r5, r5, #2
d004be60:	f82c 8c02 	strh.w	r8, [ip, #-2]
d004be64:	00a4      	lsls	r4, r4, #2
d004be66:	b289      	uxth	r1, r1
d004be68:	b292      	uxth	r2, r2
d004be6a:	b29b      	uxth	r3, r3
d004be6c:	fb95 f5f6 	sdiv	r5, r5, r6
d004be70:	fb94 f4f6 	sdiv	r4, r4, r6
d004be74:	fb90 f6f6 	sdiv	r6, r0, r6
d004be78:	980e      	ldr	r0, [sp, #56]	; 0x38
d004be7a:	f82c 5c08 	strh.w	r5, [ip, #-8]
d004be7e:	42b8      	cmp	r0, r7
d004be80:	f82c 4c06 	strh.w	r4, [ip, #-6]
d004be84:	f82c 6c04 	strh.w	r6, [ip, #-4]
d004be88:	f47f af65 	bne.w	d004bd56 <main+0x396>
d004be8c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004be8e:	990c      	ldr	r1, [sp, #48]	; 0x30
d004be90:	449e      	add	lr, r3
d004be92:	9b06      	ldr	r3, [sp, #24]
d004be94:	440b      	add	r3, r1
d004be96:	990d      	ldr	r1, [sp, #52]	; 0x34
d004be98:	fa1f fe8e 	uxth.w	lr, lr
d004be9c:	461a      	mov	r2, r3
d004be9e:	9b04      	ldr	r3, [sp, #16]
d004bea0:	440b      	add	r3, r1
d004bea2:	9905      	ldr	r1, [sp, #20]
d004bea4:	b292      	uxth	r2, r2
d004bea6:	b29b      	uxth	r3, r3
d004bea8:	3105      	adds	r1, #5
d004beaa:	9206      	str	r2, [sp, #24]
d004beac:	9304      	str	r3, [sp, #16]
d004beae:	9b16      	ldr	r3, [sp, #88]	; 0x58
d004beb0:	9105      	str	r1, [sp, #20]
d004beb2:	4299      	cmp	r1, r3
d004beb4:	d003      	beq.n	d004bebe <main+0x4fe>
d004beb6:	4607      	mov	r7, r0
d004beb8:	4613      	mov	r3, r2
d004beba:	460c      	mov	r4, r1
d004bebc:	e72c      	b.n	d004bd18 <main+0x358>
d004bebe:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004bec0:	9a03      	ldr	r2, [sp, #12]
d004bec2:	f813 1b01 	ldrb.w	r1, [r3], #1
d004bec6:	b214      	sxth	r4, r2
d004bec8:	f8dd a05c 	ldr.w	sl, [sp, #92]	; 0x5c
d004becc:	930f      	str	r3, [sp, #60]	; 0x3c
d004bece:	b293      	uxth	r3, r2
d004bed0:	9a08      	ldr	r2, [sp, #32]
d004bed2:	f103 0905 	add.w	r9, r3, #5
d004bed6:	1c58      	adds	r0, r3, #1
d004bed8:	3208      	adds	r2, #8
d004beda:	1d9f      	adds	r7, r3, #6
d004bedc:	b200      	sxth	r0, r0
d004bede:	f103 0e03 	add.w	lr, r3, #3
d004bee2:	9208      	str	r2, [sp, #32]
d004bee4:	1d8a      	adds	r2, r1, #6
d004bee6:	f8aa 0002 	strh.w	r0, [sl, #2]
d004beea:	b23f      	sxth	r7, r7
d004beec:	b2d2      	uxtb	r2, r2
d004beee:	f8aa 0010 	strh.w	r0, [sl, #16]
d004bef2:	f8aa 0018 	strh.w	r0, [sl, #24]
d004bef6:	f103 000d 	add.w	r0, r3, #13
d004befa:	9203      	str	r2, [sp, #12]
d004befc:	fa0f fe8e 	sxth.w	lr, lr
d004bf00:	9a07      	ldr	r2, [sp, #28]
d004bf02:	b200      	sxth	r0, r0
d004bf04:	f8aa 4000 	strh.w	r4, [sl]
d004bf08:	f103 0802 	add.w	r8, r3, #2
d004bf0c:	3208      	adds	r2, #8
d004bf0e:	9004      	str	r0, [sp, #16]
d004bf10:	f103 000e 	add.w	r0, r3, #14
d004bf14:	f8aa 4008 	strh.w	r4, [sl, #8]
d004bf18:	9207      	str	r2, [sp, #28]
d004bf1a:	1dde      	adds	r6, r3, #7
d004bf1c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004bf1e:	b200      	sxth	r0, r0
d004bf20:	f8aa 7004 	strh.w	r7, [sl, #4]
d004bf24:	f103 0508 	add.w	r5, r3, #8
d004bf28:	3208      	adds	r2, #8
d004bf2a:	f8aa 700a 	strh.w	r7, [sl, #10]
d004bf2e:	f88a 1006 	strb.w	r1, [sl, #6]
d004bf32:	f103 0c09 	add.w	ip, r3, #9
d004bf36:	9209      	str	r2, [sp, #36]	; 0x24
d004bf38:	fa0f f289 	sxth.w	r2, r9
d004bf3c:	f88a 100e 	strb.w	r1, [sl, #14]
d004bf40:	b236      	sxth	r6, r6
d004bf42:	920b      	str	r2, [sp, #44]	; 0x2c
d004bf44:	b22d      	sxth	r5, r5
d004bf46:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004bf48:	fa0f f888 	sxth.w	r8, r8
d004bf4c:	f88a 1026 	strb.w	r1, [sl, #38]	; 0x26
d004bf50:	fa0f fc8c 	sxth.w	ip, ip
d004bf54:	32c8      	adds	r2, #200	; 0xc8
d004bf56:	f88a 102e 	strb.w	r1, [sl, #46]	; 0x2e
d004bf5a:	f103 090b 	add.w	r9, r3, #11
d004bf5e:	f103 040c 	add.w	r4, r3, #12
d004bf62:	920a      	str	r2, [sp, #40]	; 0x28
d004bf64:	f50a 7a80 	add.w	sl, sl, #256	; 0x100
d004bf68:	9a03      	ldr	r2, [sp, #12]
d004bf6a:	fa0f f989 	sxth.w	r9, r9
d004bf6e:	b224      	sxth	r4, r4
d004bf70:	f80a 2cea 	strb.w	r2, [sl, #-234]
d004bf74:	f80a 2ce2 	strb.w	r2, [sl, #-226]
d004bf78:	f80a 2cca 	strb.w	r2, [sl, #-202]
d004bf7c:	f103 020a 	add.w	r2, r3, #10
d004bf80:	b212      	sxth	r2, r2
d004bf82:	920c      	str	r2, [sp, #48]	; 0x30
d004bf84:	f82a 7ce4 	strh.w	r7, [sl, #-228]
d004bf88:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d004bf8a:	f82a ecde 	strh.w	lr, [sl, #-222]
d004bf8e:	f82a ecd0 	strh.w	lr, [sl, #-208]
d004bf92:	f82a ecc8 	strh.w	lr, [sl, #-200]
d004bf96:	f103 0e04 	add.w	lr, r3, #4
d004bf9a:	f82a 2cf4 	strh.w	r2, [sl, #-244]
d004bf9e:	f82a ecce 	strh.w	lr, [sl, #-206]
d004bfa2:	f103 0e0f 	add.w	lr, r3, #15
d004bfa6:	9a03      	ldr	r2, [sp, #12]
d004bfa8:	9006      	str	r0, [sp, #24]
d004bfaa:	fa0f fe8e 	sxth.w	lr, lr
d004bfae:	9803      	ldr	r0, [sp, #12]
d004bfb0:	f80a 2cba 	strb.w	r2, [sl, #-186]
d004bfb4:	f80a 0cc2 	strb.w	r0, [sl, #-194]
d004bfb8:	9a03      	ldr	r2, [sp, #12]
d004bfba:	980b      	ldr	r0, [sp, #44]	; 0x2c
d004bfbc:	f82a 8cee 	strh.w	r8, [sl, #-238]
d004bfc0:	f82a 8ce0 	strh.w	r8, [sl, #-224]
d004bfc4:	f82a 8cd8 	strh.w	r8, [sl, #-216]
d004bfc8:	f103 0810 	add.w	r8, r3, #16
d004bfcc:	f82a 6cec 	strh.w	r6, [sl, #-236]
d004bfd0:	f82a 6ce6 	strh.w	r6, [sl, #-230]
d004bfd4:	fa0f f888 	sxth.w	r8, r8
d004bfd8:	f82a 6cd4 	strh.w	r6, [sl, #-212]
d004bfdc:	f82a 5cdc 	strh.w	r5, [sl, #-220]
d004bfe0:	f82a 5cd6 	strh.w	r5, [sl, #-214]
d004bfe4:	f82a 5cc4 	strh.w	r5, [sl, #-196]
d004bfe8:	f82a cccc 	strh.w	ip, [sl, #-204]
d004bfec:	f82a ccc6 	strh.w	ip, [sl, #-198]
d004bff0:	f82a cc8e 	strh.w	ip, [sl, #-142]
d004bff4:	f103 0c11 	add.w	ip, r3, #17
d004bff8:	f82a 0cc0 	strh.w	r0, [sl, #-192]
d004bffc:	f82a 7cbe 	strh.w	r7, [sl, #-190]
d004c000:	fa0f fc8c 	sxth.w	ip, ip
d004c004:	f82a 0cb8 	strh.w	r0, [sl, #-184]
d004c008:	f80a 2cb2 	strb.w	r2, [sl, #-178]
d004c00c:	f82a 7cb0 	strh.w	r7, [sl, #-176]
d004c010:	f82a 6cae 	strh.w	r6, [sl, #-174]
d004c014:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
d004c018:	f103 0e15 	add.w	lr, r3, #21
d004c01c:	f82a 7ca8 	strh.w	r7, [sl, #-168]
d004c020:	f103 0712 	add.w	r7, r3, #18
d004c024:	f82a 5c9e 	strh.w	r5, [sl, #-158]
d004c028:	fa0f fe8e 	sxth.w	lr, lr
d004c02c:	f82a 5c90 	strh.w	r5, [sl, #-144]
d004c030:	b23f      	sxth	r7, r7
d004c032:	f82a 5c88 	strh.w	r5, [sl, #-136]
d004c036:	f103 0516 	add.w	r5, r3, #22
d004c03a:	9806      	ldr	r0, [sp, #24]
d004c03c:	b22d      	sxth	r5, r5
d004c03e:	f80a 2c9a 	strb.w	r2, [sl, #-154]
d004c042:	f80a 2c92 	strb.w	r2, [sl, #-146]
d004c046:	950b      	str	r5, [sp, #44]	; 0x2c
d004c048:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d004c04a:	9d04      	ldr	r5, [sp, #16]
d004c04c:	f82a 6ca0 	strh.w	r6, [sl, #-160]
d004c050:	f82a 6c98 	strh.w	r6, [sl, #-152]
d004c054:	f103 0613 	add.w	r6, r3, #19
d004c058:	f82a 9cbc 	strh.w	r9, [sl, #-188]
d004c05c:	f82a 9cb6 	strh.w	r9, [sl, #-182]
d004c060:	b236      	sxth	r6, r6
d004c062:	f82a 9ca4 	strh.w	r9, [sl, #-164]
d004c066:	f82a 4cac 	strh.w	r4, [sl, #-172]
d004c06a:	f82a 4ca6 	strh.w	r4, [sl, #-166]
d004c06e:	f82a 4c94 	strh.w	r4, [sl, #-148]
d004c072:	f82a 5c9c 	strh.w	r5, [sl, #-156]
d004c076:	f82a 5c96 	strh.w	r5, [sl, #-150]
d004c07a:	f82a 5c84 	strh.w	r5, [sl, #-132]
d004c07e:	f82a 0c8c 	strh.w	r0, [sl, #-140]
d004c082:	f82a 0c86 	strh.w	r0, [sl, #-134]
d004c086:	f82a 9c7e 	strh.w	r9, [sl, #-126]
d004c08a:	f82a 9c70 	strh.w	r9, [sl, #-112]
d004c08e:	f82a 4c6e 	strh.w	r4, [sl, #-110]
d004c092:	f80a 1caa 	strb.w	r1, [sl, #-170]
d004c096:	f80a 1ca2 	strb.w	r1, [sl, #-162]
d004c09a:	f80a 1c8a 	strb.w	r1, [sl, #-138]
d004c09e:	f80a 1c82 	strb.w	r1, [sl, #-130]
d004c0a2:	f82a 2cb4 	strh.w	r2, [sl, #-180]
d004c0a6:	f82a 2c80 	strh.w	r2, [sl, #-128]
d004c0aa:	f82a 2c78 	strh.w	r2, [sl, #-120]
d004c0ae:	9a03      	ldr	r2, [sp, #12]
d004c0b0:	9804      	ldr	r0, [sp, #16]
d004c0b2:	4615      	mov	r5, r2
d004c0b4:	f80a 2c6a 	strb.w	r2, [sl, #-106]
d004c0b8:	f82a 0c5e 	strh.w	r0, [sl, #-94]
d004c0bc:	f82a 0c50 	strh.w	r0, [sl, #-80]
d004c0c0:	9806      	ldr	r0, [sp, #24]
d004c0c2:	f82a 9c68 	strh.w	r9, [sl, #-104]
d004c0c6:	f103 0917 	add.w	r9, r3, #23
d004c0ca:	f80a 2c62 	strb.w	r2, [sl, #-98]
d004c0ce:	f82a 4c60 	strh.w	r4, [sl, #-96]
d004c0d2:	fa0f f989 	sxth.w	r9, r9
d004c0d6:	f82a 4c58 	strh.w	r4, [sl, #-88]
d004c0da:	f103 0418 	add.w	r4, r3, #24
d004c0de:	f82a 0c4e 	strh.w	r0, [sl, #-78]
d004c0e2:	3314      	adds	r3, #20
d004c0e4:	f80a 2c4a 	strb.w	r2, [sl, #-74]
d004c0e8:	b224      	sxth	r4, r4
d004c0ea:	f80a 2c42 	strb.w	r2, [sl, #-66]
d004c0ee:	9804      	ldr	r0, [sp, #16]
d004c0f0:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d004c0f2:	f82a 0c48 	strh.w	r0, [sl, #-72]
d004c0f6:	f82a 2c74 	strh.w	r2, [sl, #-116]
d004c0fa:	f82a 2c40 	strh.w	r2, [sl, #-64]
d004c0fe:	f80a 1c7a 	strb.w	r1, [sl, #-122]
d004c102:	f80a 1c72 	strb.w	r1, [sl, #-114]
d004c106:	f80a 1c5a 	strb.w	r1, [sl, #-90]
d004c10a:	f80a 1c52 	strb.w	r1, [sl, #-82]
d004c10e:	f82a 8c7c 	strh.w	r8, [sl, #-124]
d004c112:	f82a 8c76 	strh.w	r8, [sl, #-118]
d004c116:	f82a 8c64 	strh.w	r8, [sl, #-100]
d004c11a:	f82a cc6c 	strh.w	ip, [sl, #-108]
d004c11e:	f82a cc66 	strh.w	ip, [sl, #-102]
d004c122:	f82a cc54 	strh.w	ip, [sl, #-84]
d004c126:	f82a 7c5c 	strh.w	r7, [sl, #-92]
d004c12a:	f82a 7c56 	strh.w	r7, [sl, #-86]
d004c12e:	f82a 7c44 	strh.w	r7, [sl, #-68]
d004c132:	f82a 6c4c 	strh.w	r6, [sl, #-76]
d004c136:	f82a 6c46 	strh.w	r6, [sl, #-70]
d004c13a:	f82a 2c38 	strh.w	r2, [sl, #-56]
d004c13e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d004c140:	f82a 8c3e 	strh.w	r8, [sl, #-62]
d004c144:	f80a 5c3a 	strb.w	r5, [sl, #-58]
d004c148:	f80a 5c32 	strb.w	r5, [sl, #-50]
d004c14c:	f82a 8c30 	strh.w	r8, [sl, #-48]
d004c150:	f82a cc2e 	strh.w	ip, [sl, #-46]
d004c154:	f82a 8c28 	strh.w	r8, [sl, #-40]
d004c158:	f82a cc20 	strh.w	ip, [sl, #-32]
d004c15c:	f82a 7c1e 	strh.w	r7, [sl, #-30]
d004c160:	f80a 5c1a 	strb.w	r5, [sl, #-26]
d004c164:	f82a cc18 	strh.w	ip, [sl, #-24]
d004c168:	f80a 5c12 	strb.w	r5, [sl, #-18]
d004c16c:	f82a 7c10 	strh.w	r7, [sl, #-16]
d004c170:	f82a 6c0e 	strh.w	r6, [sl, #-14]
d004c174:	f82a 7c08 	strh.w	r7, [sl, #-8]
d004c178:	f80a 1c2a 	strb.w	r1, [sl, #-42]
d004c17c:	f80a 1c22 	strb.w	r1, [sl, #-34]
d004c180:	f80a 1c0a 	strb.w	r1, [sl, #-10]
d004c184:	f80a 1c02 	strb.w	r1, [sl, #-2]
d004c188:	f82a ec3c 	strh.w	lr, [sl, #-60]
d004c18c:	f82a ec36 	strh.w	lr, [sl, #-54]
d004c190:	f82a ec24 	strh.w	lr, [sl, #-36]
d004c194:	f82a 2c2c 	strh.w	r2, [sl, #-44]
d004c198:	f82a 2c26 	strh.w	r2, [sl, #-38]
d004c19c:	f82a 2c14 	strh.w	r2, [sl, #-20]
d004c1a0:	f82a 9c1c 	strh.w	r9, [sl, #-28]
d004c1a4:	f82a 9c16 	strh.w	r9, [sl, #-22]
d004c1a8:	f82a 9c04 	strh.w	r9, [sl, #-4]
d004c1ac:	f82a 4c0c 	strh.w	r4, [sl, #-12]
d004c1b0:	f82a 4c06 	strh.w	r4, [sl, #-6]
d004c1b4:	f82a 3c34 	strh.w	r3, [sl, #-52]
d004c1b8:	9b05      	ldr	r3, [sp, #20]
d004c1ba:	2b96      	cmp	r3, #150	; 0x96
d004c1bc:	d001      	beq.n	d004c1c2 <main+0x802>
d004c1be:	9303      	str	r3, [sp, #12]
d004c1c0:	e52e      	b.n	d004bc20 <main+0x260>
d004c1c2:	4901      	ldr	r1, [pc, #4]	; (d004c1c8 <main+0x808>)
d004c1c4:	2300      	movs	r3, #0
d004c1c6:	e004      	b.n	d004c1d2 <main+0x812>
d004c1c8:	d004d389 	.word	0xd004d389
d004c1cc:	2a0a      	cmp	r2, #10
d004c1ce:	bf08      	it	eq
d004c1d0:	3301      	addeq	r3, #1
d004c1d2:	f811 2f01 	ldrb.w	r2, [r1, #1]!
d004c1d6:	2a00      	cmp	r2, #0
d004c1d8:	d1f8      	bne.n	d004c1cc <main+0x80c>
d004c1da:	f89b 4014 	ldrb.w	r4, [fp, #20]
d004c1de:	f103 0514 	add.w	r5, r3, #20
d004c1e2:	f89b 0015 	ldrb.w	r0, [fp, #21]
d004c1e6:	f644 0150 	movw	r1, #18512	; 0x4850
d004c1ea:	f89b 2016 	ldrb.w	r2, [fp, #22]
d004c1ee:	012d      	lsls	r5, r5, #4
d004c1f0:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
d004c1f4:	f89b 3017 	ldrb.w	r3, [fp, #23]
d004c1f8:	f06f 0409 	mvn.w	r4, #9
d004c1fc:	f46f 7ac5 	mvn.w	sl, #394	; 0x18a
d004c200:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004c204:	48cb      	ldr	r0, [pc, #812]	; (d004c534 <main+0xb74>)
d004c206:	9403      	str	r4, [sp, #12]
d004c208:	f244 58ab 	movw	r8, #17835	; 0x45ab
d004c20c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c210:	4cc9      	ldr	r4, [pc, #804]	; (d004c538 <main+0xb78>)
d004c212:	f8df 9340 	ldr.w	r9, [pc, #832]	; d004c554 <main+0xb94>
d004c216:	685b      	ldr	r3, [r3, #4]
d004c218:	6025      	str	r5, [r4, #0]
d004c21a:	689b      	ldr	r3, [r3, #8]
d004c21c:	4798      	blx	r3
d004c21e:	f89b 0014 	ldrb.w	r0, [fp, #20]
d004c222:	f89b 1015 	ldrb.w	r1, [fp, #21]
d004c226:	f89b 2016 	ldrb.w	r2, [fp, #22]
d004c22a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c22e:	f89b 3017 	ldrb.w	r3, [fp, #23]
d004c232:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c236:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c23a:	685b      	ldr	r3, [r3, #4]
d004c23c:	685b      	ldr	r3, [r3, #4]
d004c23e:	4798      	blx	r3
d004c240:	f89b 0014 	ldrb.w	r0, [fp, #20]
d004c244:	f89b 1015 	ldrb.w	r1, [fp, #21]
d004c248:	f89b 2016 	ldrb.w	r2, [fp, #22]
d004c24c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c250:	f89b 3017 	ldrb.w	r3, [fp, #23]
d004c254:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c258:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c25c:	685b      	ldr	r3, [r3, #4]
d004c25e:	685b      	ldr	r3, [r3, #4]
d004c260:	4798      	blx	r3
d004c262:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c266:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c26a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c26e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c272:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c276:	48b1      	ldr	r0, [pc, #708]	; (d004c53c <main+0xb7c>)
d004c278:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c27c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c280:	681b      	ldr	r3, [r3, #0]
d004c282:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004c284:	4798      	blx	r3
d004c286:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c28a:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c28e:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c292:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c296:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c29a:	48a8      	ldr	r0, [pc, #672]	; (d004c53c <main+0xb7c>)
d004c29c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c2a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c2a4:	681b      	ldr	r3, [r3, #0]
d004c2a6:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d004c2a8:	4798      	blx	r3
d004c2aa:	4ba5      	ldr	r3, [pc, #660]	; (d004c540 <main+0xb80>)
d004c2ac:	210f      	movs	r1, #15
d004c2ae:	6818      	ldr	r0, [r3, #0]
d004c2b0:	68da      	ldr	r2, [r3, #12]
d004c2b2:	f000 fc29 	bl	d004cb08 <memset>
d004c2b6:	f8cd 9010 	str.w	r9, [sp, #16]
d004c2ba:	f8cd a018 	str.w	sl, [sp, #24]
d004c2be:	9b04      	ldr	r3, [sp, #16]
d004c2c0:	f46f 79c5 	mvn.w	r9, #394	; 0x18a
d004c2c4:	9903      	ldr	r1, [sp, #12]
d004c2c6:	f503 529e 	add.w	r2, r3, #5056	; 0x13c0
d004c2ca:	9b06      	ldr	r3, [sp, #24]
d004c2cc:	9105      	str	r1, [sp, #20]
d004c2ce:	fb08 f103 	mul.w	r1, r8, r3
d004c2d2:	f8df a280 	ldr.w	sl, [pc, #640]	; d004c554 <main+0xb94>
d004c2d6:	9204      	str	r2, [sp, #16]
d004c2d8:	1192      	asrs	r2, r2, #6
d004c2da:	9107      	str	r1, [sp, #28]
d004c2dc:	f646 312f 	movw	r1, #27439	; 0x6b2f
d004c2e0:	9206      	str	r2, [sp, #24]
d004c2e2:	fb01 f303 	mul.w	r3, r1, r3
d004c2e6:	9308      	str	r3, [sp, #32]
d004c2e8:	fb08 f302 	mul.w	r3, r8, r2
d004c2ec:	9309      	str	r3, [sp, #36]	; 0x24
d004c2ee:	fb01 f302 	mul.w	r3, r1, r2
d004c2f2:	930a      	str	r3, [sp, #40]	; 0x28
d004c2f4:	f50a 5a9e 	add.w	sl, sl, #5056	; 0x13c0
d004c2f8:	464b      	mov	r3, r9
d004c2fa:	f646 322f 	movw	r2, #27439	; 0x6b2f
d004c2fe:	9f09      	ldr	r7, [sp, #36]	; 0x24
d004c300:	ea4f 19aa 	mov.w	r9, sl, asr #6
d004c304:	a824      	add	r0, sp, #144	; 0x90
d004c306:	fb02 f403 	mul.w	r4, r2, r3
d004c30a:	fb02 f109 	mul.w	r1, r2, r9
d004c30e:	9a07      	ldr	r2, [sp, #28]
d004c310:	fb08 f303 	mul.w	r3, r8, r3
d004c314:	eba1 0e07 	sub.w	lr, r1, r7
d004c318:	1a89      	subs	r1, r1, r2
d004c31a:	1aa5      	subs	r5, r4, r2
d004c31c:	fb08 f609 	mul.w	r6, r8, r9
d004c320:	910b      	str	r1, [sp, #44]	; 0x2c
d004c322:	1be4      	subs	r4, r4, r7
d004c324:	990b      	ldr	r1, [sp, #44]	; 0x2c
d004c326:	13ed      	asrs	r5, r5, #15
d004c328:	9f0a      	ldr	r7, [sp, #40]	; 0x28
d004c32a:	13e4      	asrs	r4, r4, #15
d004c32c:	9a08      	ldr	r2, [sp, #32]
d004c32e:	13c9      	asrs	r1, r1, #15
d004c330:	eb06 0c07 	add.w	ip, r6, r7
d004c334:	f504 74f0 	add.w	r4, r4, #480	; 0x1e0
d004c338:	4416      	add	r6, r2
d004c33a:	f501 71f0 	add.w	r1, r1, #480	; 0x1e0
d004c33e:	189a      	adds	r2, r3, r2
d004c340:	443b      	add	r3, r7
d004c342:	9f05      	ldr	r7, [sp, #20]
d004c344:	ea4f 3eee 	mov.w	lr, lr, asr #15
d004c348:	ea4f 3cec 	mov.w	ip, ip, asr #15
d004c34c:	f8ad 1094 	strh.w	r1, [sp, #148]	; 0x94
d004c350:	13f6      	asrs	r6, r6, #15
d004c352:	f007 0101 	and.w	r1, r7, #1
d004c356:	13d2      	asrs	r2, r2, #15
d004c358:	f50e 7ef0 	add.w	lr, lr, #480	; 0x1e0
d004c35c:	13db      	asrs	r3, r3, #15
d004c35e:	f506 76a0 	add.w	r6, r6, #320	; 0x140
d004c362:	f1c1 010e 	rsb	r1, r1, #14
d004c366:	f505 75f0 	add.w	r5, r5, #480	; 0x1e0
d004c36a:	f503 73a0 	add.w	r3, r3, #320	; 0x140
d004c36e:	f50c 7ca0 	add.w	ip, ip, #320	; 0x140
d004c372:	f502 72a0 	add.w	r2, r2, #320	; 0x140
d004c376:	f8ad 40c8 	strh.w	r4, [sp, #200]	; 0xc8
d004c37a:	4c71      	ldr	r4, [pc, #452]	; (d004c540 <main+0xb80>)
d004c37c:	fa0f fe8e 	sxth.w	lr, lr
d004c380:	fa0f fc8c 	sxth.w	ip, ip
d004c384:	3701      	adds	r7, #1
d004c386:	b22d      	sxth	r5, r5
d004c388:	f8ad 6096 	strh.w	r6, [sp, #150]	; 0x96
d004c38c:	b212      	sxth	r2, r2
d004c38e:	f8ad 30ca 	strh.w	r3, [sp, #202]	; 0xca
d004c392:	b2ce      	uxtb	r6, r1
d004c394:	6823      	ldr	r3, [r4, #0]
d004c396:	f8ad e098 	strh.w	lr, [sp, #152]	; 0x98
d004c39a:	4631      	mov	r1, r6
d004c39c:	f8ad e0c4 	strh.w	lr, [sp, #196]	; 0xc4
d004c3a0:	f8ad c09a 	strh.w	ip, [sp, #154]	; 0x9a
d004c3a4:	9705      	str	r7, [sp, #20]
d004c3a6:	f8ad c0c6 	strh.w	ip, [sp, #198]	; 0xc6
d004c3aa:	f8ad 5090 	strh.w	r5, [sp, #144]	; 0x90
d004c3ae:	f8ad 50c0 	strh.w	r5, [sp, #192]	; 0xc0
d004c3b2:	f8ad 2092 	strh.w	r2, [sp, #146]	; 0x92
d004c3b6:	f8ad 20c2 	strh.w	r2, [sp, #194]	; 0xc2
d004c3ba:	b13b      	cbz	r3, d004c3cc <main+0xa0c>
d004c3bc:	f7fe ff1c 	bl	d004b1f8 <draw_filled_triangle.part.0.constprop.0>
d004c3c0:	6823      	ldr	r3, [r4, #0]
d004c3c2:	4631      	mov	r1, r6
d004c3c4:	a830      	add	r0, sp, #192	; 0xc0
d004c3c6:	b10b      	cbz	r3, d004c3cc <main+0xa0c>
d004c3c8:	f7fe ff16 	bl	d004b1f8 <draw_filled_triangle.part.0.constprop.0>
d004c3cc:	f246 23c0 	movw	r3, #25280	; 0x62c0
d004c3d0:	459a      	cmp	sl, r3
d004c3d2:	d18f      	bne.n	d004c2f4 <main+0x934>
d004c3d4:	9b03      	ldr	r3, [sp, #12]
d004c3d6:	3301      	adds	r3, #1
d004c3d8:	9303      	str	r3, [sp, #12]
d004c3da:	9b04      	ldr	r3, [sp, #16]
d004c3dc:	4553      	cmp	r3, sl
d004c3de:	f47f af6e 	bne.w	d004c2be <main+0x8fe>
d004c3e2:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c3e6:	2500      	movs	r5, #0
d004c3e8:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c3ec:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c3f0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c3f4:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c3f8:	4851      	ldr	r0, [pc, #324]	; (d004c540 <main+0xb80>)
d004c3fa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c3fe:	f8df 9158 	ldr.w	r9, [pc, #344]	; d004c558 <main+0xb98>
d004c402:	4e50      	ldr	r6, [pc, #320]	; (d004c544 <main+0xb84>)
d004c404:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c408:	4c4f      	ldr	r4, [pc, #316]	; (d004c548 <main+0xb88>)
d004c40a:	681b      	ldr	r3, [r3, #0]
d004c40c:	6a1b      	ldr	r3, [r3, #32]
d004c40e:	4798      	blx	r3
d004c410:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c414:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c418:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c41c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c420:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004c424:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c428:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c42c:	4a47      	ldr	r2, [pc, #284]	; (d004c54c <main+0xb8c>)
d004c42e:	681b      	ldr	r3, [r3, #0]
d004c430:	6810      	ldr	r0, [r2, #0]
d004c432:	69db      	ldr	r3, [r3, #28]
d004c434:	4798      	blx	r3
d004c436:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c43a:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c43e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c442:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c446:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004c44a:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c44e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c452:	4a3f      	ldr	r2, [pc, #252]	; (d004c550 <main+0xb90>)
d004c454:	681b      	ldr	r3, [r3, #0]
d004c456:	6810      	ldr	r0, [r2, #0]
d004c458:	699b      	ldr	r3, [r3, #24]
d004c45a:	4798      	blx	r3
d004c45c:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c460:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c464:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c468:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c46c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004c470:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c474:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c478:	681b      	ldr	r3, [r3, #0]
d004c47a:	681b      	ldr	r3, [r3, #0]
d004c47c:	4798      	blx	r3
d004c47e:	9503      	str	r5, [sp, #12]
d004c480:	f89b 0000 	ldrb.w	r0, [fp]
d004c484:	f89b 1001 	ldrb.w	r1, [fp, #1]
d004c488:	f89b 2002 	ldrb.w	r2, [fp, #2]
d004c48c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c490:	f89b 3003 	ldrb.w	r3, [fp, #3]
d004c494:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c498:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c49c:	6a1b      	ldr	r3, [r3, #32]
d004c49e:	4798      	blx	r3
d004c4a0:	f000 0003 	and.w	r0, r0, #3
d004c4a4:	2803      	cmp	r0, #3
d004c4a6:	f000 8254 	beq.w	d004c952 <main+0xf92>
d004c4aa:	f899 3000 	ldrb.w	r3, [r9]
d004c4ae:	2b00      	cmp	r3, #0
d004c4b0:	f000 82f8 	beq.w	d004caa4 <main+0x10e4>
d004c4b4:	4b25      	ldr	r3, [pc, #148]	; (d004c54c <main+0xb8c>)
d004c4b6:	6818      	ldr	r0, [r3, #0]
d004c4b8:	f89b 500c 	ldrb.w	r5, [fp, #12]
d004c4bc:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c4c0:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c4c4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004c4c8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c4cc:	9004      	str	r0, [sp, #16]
d004c4ce:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c4d2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c4d6:	681b      	ldr	r3, [r3, #0]
d004c4d8:	68db      	ldr	r3, [r3, #12]
d004c4da:	4798      	blx	r3
d004c4dc:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c4e0:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c4e4:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c4e8:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d004c4ec:	9804      	ldr	r0, [sp, #16]
d004c4ee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004c4f2:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c4f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c4fa:	681b      	ldr	r3, [r3, #0]
d004c4fc:	699b      	ldr	r3, [r3, #24]
d004c4fe:	4798      	blx	r3
d004c500:	f89b 500c 	ldrb.w	r5, [fp, #12]
d004c504:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c508:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c50c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004c510:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c514:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c518:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c51c:	685b      	ldr	r3, [r3, #4]
d004c51e:	681b      	ldr	r3, [r3, #0]
d004c520:	4798      	blx	r3
d004c522:	9804      	ldr	r0, [sp, #16]
d004c524:	f7fe ff62 	bl	d004b3ec <draw_cube>
d004c528:	4a03      	ldr	r2, [pc, #12]	; (d004c538 <main+0xb78>)
d004c52a:	6833      	ldr	r3, [r6, #0]
d004c52c:	6812      	ldr	r2, [r2, #0]
d004c52e:	3b01      	subs	r3, #1
d004c530:	e014      	b.n	d004c55c <main+0xb9c>
d004c532:	bf00      	nop
d004c534:	d004d5c0 	.word	0xd004d5c0
d004c538:	d0053788 	.word	0xd0053788
d004c53c:	d0052400 	.word	0xd0052400
d004c540:	d0051f20 	.word	0xd0051f20
d004c544:	d0051e84 	.word	0xd0051e84
d004c548:	b60b60b7 	.word	0xb60b60b7
d004c54c:	d0052e00 	.word	0xd0052e00
d004c550:	d0052e20 	.word	0xd0052e20
d004c554:	ffff9d40 	.word	0xffff9d40
d004c558:	d00523f4 	.word	0xd00523f4
d004c55c:	4251      	negs	r1, r2
d004c55e:	6033      	str	r3, [r6, #0]
d004c560:	428b      	cmp	r3, r1
d004c562:	f280 828e 	bge.w	d004ca82 <main+0x10c2>
d004c566:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004c56a:	2a00      	cmp	r2, #0
d004c56c:	6033      	str	r3, [r6, #0]
d004c56e:	f280 8284 	bge.w	d004ca7a <main+0x10ba>
d004c572:	4dc8      	ldr	r5, [pc, #800]	; (d004c894 <main+0xed4>)
d004c574:	682b      	ldr	r3, [r5, #0]
d004c576:	3b01      	subs	r3, #1
d004c578:	f100 82a9 	bmi.w	d004cace <main+0x110e>
d004c57c:	602b      	str	r3, [r5, #0]
d004c57e:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c582:	2012      	movs	r0, #18
d004c584:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c588:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c58c:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d004c590:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c594:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c598:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c59c:	685b      	ldr	r3, [r3, #4]
d004c59e:	68db      	ldr	r3, [r3, #12]
d004c5a0:	4798      	blx	r3
d004c5a2:	6831      	ldr	r1, [r6, #0]
d004c5a4:	2058      	movs	r0, #88	; 0x58
d004c5a6:	3102      	adds	r1, #2
d004c5a8:	b209      	sxth	r1, r1
d004c5aa:	f7fe fdc7 	bl	d004b13c <draw_textf_multiline.constprop.0>
d004c5ae:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c5b2:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c5b6:	2011      	movs	r0, #17
d004c5b8:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c5bc:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d004c5c0:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c5c4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c5c8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c5cc:	685b      	ldr	r3, [r3, #4]
d004c5ce:	68db      	ldr	r3, [r3, #12]
d004c5d0:	4798      	blx	r3
d004c5d2:	f9b6 1000 	ldrsh.w	r1, [r6]
d004c5d6:	2056      	movs	r0, #86	; 0x56
d004c5d8:	f7fe fdb0 	bl	d004b13c <draw_textf_multiline.constprop.0>
d004c5dc:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c5e0:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c5e4:	2013      	movs	r0, #19
d004c5e6:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c5ea:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d004c5ee:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c5f2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c5f6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c5fa:	685b      	ldr	r3, [r3, #4]
d004c5fc:	68db      	ldr	r3, [r3, #12]
d004c5fe:	4798      	blx	r3
d004c600:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c604:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c608:	2100      	movs	r1, #0
d004c60a:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c60e:	2310      	movs	r3, #16
d004c610:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d004c614:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c618:	4608      	mov	r0, r1
d004c61a:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d004c61e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c622:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c626:	687f      	ldr	r7, [r7, #4]
d004c628:	687f      	ldr	r7, [r7, #4]
d004c62a:	47b8      	blx	r7
d004c62c:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c630:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c634:	2310      	movs	r3, #16
d004c636:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c63a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c63e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c642:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c646:	f44f 7198 	mov.w	r1, #304	; 0x130
d004c64a:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c64e:	2000      	movs	r0, #0
d004c650:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c654:	687f      	ldr	r7, [r7, #4]
d004c656:	687f      	ldr	r7, [r7, #4]
d004c658:	47b8      	blx	r7
d004c65a:	f89b 200c 	ldrb.w	r2, [fp, #12]
d004c65e:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c662:	f44f 738e 	mov.w	r3, #284	; 0x11c
d004c666:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c66a:	2112      	movs	r1, #18
d004c66c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004c670:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c674:	f9b5 2000 	ldrsh.w	r2, [r5]
d004c678:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c67c:	2000      	movs	r0, #0
d004c67e:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c682:	687f      	ldr	r7, [r7, #4]
d004c684:	687f      	ldr	r7, [r7, #4]
d004c686:	47b8      	blx	r7
d004c688:	f89b 200c 	ldrb.w	r2, [fp, #12]
d004c68c:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c690:	f44f 738e 	mov.w	r3, #284	; 0x11c
d004c694:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c698:	2112      	movs	r1, #18
d004c69a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004c69e:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c6a2:	682a      	ldr	r2, [r5, #0]
d004c6a4:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c6a8:	f5c2 70f0 	rsb	r0, r2, #480	; 0x1e0
d004c6ac:	b212      	sxth	r2, r2
d004c6ae:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c6b2:	b200      	sxth	r0, r0
d004c6b4:	687f      	ldr	r7, [r7, #4]
d004c6b6:	687f      	ldr	r7, [r7, #4]
d004c6b8:	47b8      	blx	r7
d004c6ba:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c6be:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c6c2:	2011      	movs	r0, #17
d004c6c4:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c6c8:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d004c6cc:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c6d0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c6d4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c6d8:	685b      	ldr	r3, [r3, #4]
d004c6da:	68db      	ldr	r3, [r3, #12]
d004c6dc:	4798      	blx	r3
d004c6de:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c6e2:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c6e6:	2302      	movs	r3, #2
d004c6e8:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c6ec:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c6f0:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c6f4:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c6f8:	2110      	movs	r1, #16
d004c6fa:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c6fe:	2000      	movs	r0, #0
d004c700:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c704:	687f      	ldr	r7, [r7, #4]
d004c706:	687f      	ldr	r7, [r7, #4]
d004c708:	47b8      	blx	r7
d004c70a:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c70e:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c712:	2302      	movs	r3, #2
d004c714:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c718:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c71c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c720:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c724:	f44f 7197 	mov.w	r1, #302	; 0x12e
d004c728:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c72c:	2000      	movs	r0, #0
d004c72e:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c732:	687f      	ldr	r7, [r7, #4]
d004c734:	687f      	ldr	r7, [r7, #4]
d004c736:	47b8      	blx	r7
d004c738:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c73c:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c740:	f44f 738e 	mov.w	r3, #284	; 0x11c
d004c744:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c748:	2202      	movs	r2, #2
d004c74a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c74e:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c752:	2112      	movs	r1, #18
d004c754:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c758:	f9b5 0000 	ldrsh.w	r0, [r5]
d004c75c:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c760:	687f      	ldr	r7, [r7, #4]
d004c762:	687f      	ldr	r7, [r7, #4]
d004c764:	47b8      	blx	r7
d004c766:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c76a:	f89b 700d 	ldrb.w	r7, [fp, #13]
d004c76e:	f44f 738e 	mov.w	r3, #284	; 0x11c
d004c772:	f89b 800e 	ldrb.w	r8, [fp, #14]
d004c776:	2202      	movs	r2, #2
d004c778:	ea41 2c07 	orr.w	ip, r1, r7, lsl #8
d004c77c:	f89b e00f 	ldrb.w	lr, [fp, #15]
d004c780:	6828      	ldr	r0, [r5, #0]
d004c782:	2112      	movs	r1, #18
d004c784:	ea4c 4708 	orr.w	r7, ip, r8, lsl #16
d004c788:	f5c0 70ef 	rsb	r0, r0, #478	; 0x1de
d004c78c:	ea47 650e 	orr.w	r5, r7, lr, lsl #24
d004c790:	b200      	sxth	r0, r0
d004c792:	686d      	ldr	r5, [r5, #4]
d004c794:	686d      	ldr	r5, [r5, #4]
d004c796:	47a8      	blx	r5
d004c798:	9b03      	ldr	r3, [sp, #12]
d004c79a:	f44f 75b4 	mov.w	r5, #360	; 0x168
d004c79e:	eb03 0143 	add.w	r1, r3, r3, lsl #1
d004c7a2:	005a      	lsls	r2, r3, #1
d004c7a4:	fb84 3001 	smull	r3, r0, r4, r1
d004c7a8:	17cb      	asrs	r3, r1, #31
d004c7aa:	4408      	add	r0, r1
d004c7ac:	ebc3 2320 	rsb	r3, r3, r0, asr #8
d004c7b0:	fb05 1313 	mls	r3, r5, r3, r1
d004c7b4:	2b00      	cmp	r3, #0
d004c7b6:	bfb8      	it	lt
d004c7b8:	195b      	addlt	r3, r3, r5
d004c7ba:	2bb4      	cmp	r3, #180	; 0xb4
d004c7bc:	f340 815f 	ble.w	d004ca7e <main+0x10be>
d004c7c0:	3bb4      	subs	r3, #180	; 0xb4
d004c7c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004c7c6:	f1c3 01b4 	rsb	r1, r3, #180	; 0xb4
d004c7ca:	325a      	adds	r2, #90	; 0x5a
d004c7cc:	f649 6534 	movw	r5, #40500	; 0x9e34
d004c7d0:	fb03 f301 	mul.w	r3, r3, r1
d004c7d4:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d004c7d8:	fb84 1702 	smull	r1, r7, r4, r2
d004c7dc:	ebc3 31c3 	rsb	r1, r3, r3, lsl #15
d004c7e0:	1aed      	subs	r5, r5, r3
d004c7e2:	18bb      	adds	r3, r7, r2
d004c7e4:	f44f 77b4 	mov.w	r7, #360	; 0x168
d004c7e8:	0089      	lsls	r1, r1, #2
d004c7ea:	ebcc 2323 	rsb	r3, ip, r3, asr #8
d004c7ee:	fbb1 f1f5 	udiv	r1, r1, r5
d004c7f2:	fb07 2313 	mls	r3, r7, r3, r2
d004c7f6:	fb00 f001 	mul.w	r0, r0, r1
d004c7fa:	2b00      	cmp	r3, #0
d004c7fc:	f340 2050 	sbfx	r0, r0, #9, #17
d004c800:	da01      	bge.n	d004c806 <main+0xe46>
d004c802:	f503 73b4 	add.w	r3, r3, #360	; 0x168
d004c806:	2bb4      	cmp	r3, #180	; 0xb4
d004c808:	f340 815f 	ble.w	d004caca <main+0x110a>
d004c80c:	3bb4      	subs	r3, #180	; 0xb4
d004c80e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d004c812:	f1c3 02b4 	rsb	r2, r3, #180	; 0xb4
d004c816:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c81a:	f649 6c34 	movw	ip, #40500	; 0x9e34
d004c81e:	30f0      	adds	r0, #240	; 0xf0
d004c820:	fb03 f302 	mul.w	r3, r3, r2
d004c824:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c828:	ebc3 3ec3 	rsb	lr, r3, r3, lsl #15
d004c82c:	ebac 0c03 	sub.w	ip, ip, r3
d004c830:	ea47 2502 	orr.w	r5, r7, r2, lsl #8
d004c834:	f89b 300e 	ldrb.w	r3, [fp, #14]
d004c838:	ea4f 078e 	mov.w	r7, lr, lsl #2
d004c83c:	ea45 4203 	orr.w	r2, r5, r3, lsl #16
d004c840:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c844:	fbb7 f5fc 	udiv	r5, r7, ip
d004c848:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c84c:	fb01 f105 	mul.w	r1, r1, r5
d004c850:	681b      	ldr	r3, [r3, #0]
d004c852:	f341 2150 	sbfx	r1, r1, #9, #17
d004c856:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d004c858:	31a0      	adds	r1, #160	; 0xa0
d004c85a:	4798      	blx	r3
d004c85c:	f899 3000 	ldrb.w	r3, [r9]
d004c860:	f1c3 0301 	rsb	r3, r3, #1
d004c864:	b2db      	uxtb	r3, r3
d004c866:	f889 3000 	strb.w	r3, [r9]
d004c86a:	f899 3000 	ldrb.w	r3, [r9]
d004c86e:	2b00      	cmp	r3, #0
d004c870:	f000 811b 	beq.w	d004caaa <main+0x10ea>
d004c874:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c878:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c87c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c880:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c884:	4904      	ldr	r1, [pc, #16]	; (d004c898 <main+0xed8>)
d004c886:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c88a:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004c88e:	6809      	ldr	r1, [r1, #0]
d004c890:	4802      	ldr	r0, [pc, #8]	; (d004c89c <main+0xedc>)
d004c892:	e005      	b.n	d004c8a0 <main+0xee0>
d004c894:	d0051f40 	.word	0xd0051f40
d004c898:	d0052e20 	.word	0xd0052e20
d004c89c:	d0052e00 	.word	0xd0052e00
d004c8a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c8a4:	6800      	ldr	r0, [r0, #0]
d004c8a6:	f44f 75b4 	mov.w	r5, #360	; 0x168
d004c8aa:	681b      	ldr	r3, [r3, #0]
d004c8ac:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004c8ae:	4798      	blx	r3
d004c8b0:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c8b4:	9b03      	ldr	r3, [sp, #12]
d004c8b6:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c8ba:	3301      	adds	r3, #1
d004c8bc:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c8c0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c8c4:	9303      	str	r3, [sp, #12]
d004c8c6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c8ca:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c8ce:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c8d2:	681b      	ldr	r3, [r3, #0]
d004c8d4:	681b      	ldr	r3, [r3, #0]
d004c8d6:	4798      	blx	r3
d004c8d8:	f89b 0014 	ldrb.w	r0, [fp, #20]
d004c8dc:	f89b 1015 	ldrb.w	r1, [fp, #21]
d004c8e0:	f89b 2016 	ldrb.w	r2, [fp, #22]
d004c8e4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c8e8:	f89b 3017 	ldrb.w	r3, [fp, #23]
d004c8ec:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c8f0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c8f4:	685b      	ldr	r3, [r3, #4]
d004c8f6:	685b      	ldr	r3, [r3, #4]
d004c8f8:	4798      	blx	r3
d004c8fa:	f8df e1e8 	ldr.w	lr, [pc, #488]	; d004cae4 <main+0x1124>
d004c8fe:	4a75      	ldr	r2, [pc, #468]	; (d004cad4 <main+0x1114>)
d004c900:	f8de 3000 	ldr.w	r3, [lr]
d004c904:	6811      	ldr	r1, [r2, #0]
d004c906:	3302      	adds	r3, #2
d004c908:	f8df c1dc 	ldr.w	ip, [pc, #476]	; d004cae8 <main+0x1128>
d004c90c:	3101      	adds	r1, #1
d004c90e:	fb84 2a03 	smull	r2, sl, r4, r3
d004c912:	f8dc 0000 	ldr.w	r0, [ip]
d004c916:	17da      	asrs	r2, r3, #31
d004c918:	449a      	add	sl, r3
d004c91a:	3003      	adds	r0, #3
d004c91c:	ebc2 222a 	rsb	r2, r2, sl, asr #8
d004c920:	fb84 7800 	smull	r7, r8, r4, r0
d004c924:	fb84 7a01 	smull	r7, sl, r4, r1
d004c928:	fb05 3312 	mls	r3, r5, r2, r3
d004c92c:	4480      	add	r8, r0
d004c92e:	448a      	add	sl, r1
d004c930:	17c2      	asrs	r2, r0, #31
d004c932:	f8ce 3000 	str.w	r3, [lr]
d004c936:	17cb      	asrs	r3, r1, #31
d004c938:	ebc2 2228 	rsb	r2, r2, r8, asr #8
d004c93c:	ebc3 2a2a 	rsb	sl, r3, sl, asr #8
d004c940:	4b64      	ldr	r3, [pc, #400]	; (d004cad4 <main+0x1114>)
d004c942:	fb05 0012 	mls	r0, r5, r2, r0
d004c946:	fb05 111a 	mls	r1, r5, sl, r1
d004c94a:	f8cc 0000 	str.w	r0, [ip]
d004c94e:	6019      	str	r1, [r3, #0]
d004c950:	e596      	b.n	d004c480 <main+0xac0>
d004c952:	f89b 0000 	ldrb.w	r0, [fp]
d004c956:	f89b 1001 	ldrb.w	r1, [fp, #1]
d004c95a:	f89b 2002 	ldrb.w	r2, [fp, #2]
d004c95e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c962:	f89b 3003 	ldrb.w	r3, [fp, #3]
d004c966:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c96a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c96e:	6a1b      	ldr	r3, [r3, #32]
d004c970:	4798      	blx	r3
d004c972:	f000 0003 	and.w	r0, r0, #3
d004c976:	2803      	cmp	r0, #3
d004c978:	d0eb      	beq.n	d004c952 <main+0xf92>
d004c97a:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c97e:	2502      	movs	r5, #2
d004c980:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c984:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004c988:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c98c:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c990:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004c994:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c998:	681b      	ldr	r3, [r3, #0]
d004c99a:	68db      	ldr	r3, [r3, #12]
d004c99c:	4798      	blx	r3
d004c99e:	f89b 400c 	ldrb.w	r4, [fp, #12]
d004c9a2:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c9a6:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004c9aa:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004c9ae:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d004c9b2:	f89b 000f 	ldrb.w	r0, [fp, #15]
d004c9b6:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c9ba:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d004c9be:	4619      	mov	r1, r3
d004c9c0:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d004c9c4:	4610      	mov	r0, r2
d004c9c6:	6824      	ldr	r4, [r4, #0]
d004c9c8:	9500      	str	r5, [sp, #0]
d004c9ca:	6964      	ldr	r4, [r4, #20]
d004c9cc:	47a0      	blx	r4
d004c9ce:	f89b 3004 	ldrb.w	r3, [fp, #4]
d004c9d2:	f89b 2005 	ldrb.w	r2, [fp, #5]
d004c9d6:	f89b 1006 	ldrb.w	r1, [fp, #6]
d004c9da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c9de:	f89b 2007 	ldrb.w	r2, [fp, #7]
d004c9e2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004c9e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c9ea:	685b      	ldr	r3, [r3, #4]
d004c9ec:	4798      	blx	r3
d004c9ee:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c9f2:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c9f6:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004c9fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c9fe:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004ca02:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ca06:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ca0a:	681b      	ldr	r3, [r3, #0]
d004ca0c:	68db      	ldr	r3, [r3, #12]
d004ca0e:	4798      	blx	r3
d004ca10:	f89b 3014 	ldrb.w	r3, [fp, #20]
d004ca14:	f89b 2015 	ldrb.w	r2, [fp, #21]
d004ca18:	f89b 1016 	ldrb.w	r1, [fp, #22]
d004ca1c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ca20:	f89b 2017 	ldrb.w	r2, [fp, #23]
d004ca24:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ca28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ca2c:	685b      	ldr	r3, [r3, #4]
d004ca2e:	68db      	ldr	r3, [r3, #12]
d004ca30:	4798      	blx	r3
d004ca32:	f89b 3004 	ldrb.w	r3, [fp, #4]
d004ca36:	f89b 2005 	ldrb.w	r2, [fp, #5]
d004ca3a:	f89b 1006 	ldrb.w	r1, [fp, #6]
d004ca3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ca42:	f89b 2007 	ldrb.w	r2, [fp, #7]
d004ca46:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ca4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ca4e:	685b      	ldr	r3, [r3, #4]
d004ca50:	4798      	blx	r3
d004ca52:	f89b 3000 	ldrb.w	r3, [fp]
d004ca56:	f89b 2001 	ldrb.w	r2, [fp, #1]
d004ca5a:	f89b 1002 	ldrb.w	r1, [fp, #2]
d004ca5e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ca62:	f89b 2003 	ldrb.w	r2, [fp, #3]
d004ca66:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ca6a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ca6e:	685b      	ldr	r3, [r3, #4]
d004ca70:	4798      	blx	r3
d004ca72:	2000      	movs	r0, #0
d004ca74:	b03d      	add	sp, #244	; 0xf4
d004ca76:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004ca7a:	4d17      	ldr	r5, [pc, #92]	; (d004cad8 <main+0x1118>)
d004ca7c:	e57f      	b.n	d004c57e <main+0xbbe>
d004ca7e:	2001      	movs	r0, #1
d004ca80:	e6a1      	b.n	d004c7c6 <main+0xe06>
d004ca82:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d004ca86:	4293      	cmp	r3, r2
d004ca88:	f6ff ad73 	blt.w	d004c572 <main+0xbb2>
d004ca8c:	ddf5      	ble.n	d004ca7a <main+0x10ba>
d004ca8e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d004ca92:	4d11      	ldr	r5, [pc, #68]	; (d004cad8 <main+0x1118>)
d004ca94:	f6bf ad73 	bge.w	d004c57e <main+0xbbe>
d004ca98:	682b      	ldr	r3, [r5, #0]
d004ca9a:	3301      	adds	r3, #1
d004ca9c:	2b40      	cmp	r3, #64	; 0x40
d004ca9e:	bfc8      	it	gt
d004caa0:	2340      	movgt	r3, #64	; 0x40
d004caa2:	e56b      	b.n	d004c57c <main+0xbbc>
d004caa4:	4b0d      	ldr	r3, [pc, #52]	; (d004cadc <main+0x111c>)
d004caa6:	6818      	ldr	r0, [r3, #0]
d004caa8:	e506      	b.n	d004c4b8 <main+0xaf8>
d004caaa:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004caae:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004cab2:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004cab6:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004caba:	4909      	ldr	r1, [pc, #36]	; (d004cae0 <main+0x1120>)
d004cabc:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004cac0:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004cac4:	6809      	ldr	r1, [r1, #0]
d004cac6:	4805      	ldr	r0, [pc, #20]	; (d004cadc <main+0x111c>)
d004cac8:	e6ea      	b.n	d004c8a0 <main+0xee0>
d004caca:	2101      	movs	r1, #1
d004cacc:	e6a1      	b.n	d004c812 <main+0xe52>
d004cace:	2300      	movs	r3, #0
d004cad0:	602b      	str	r3, [r5, #0]
d004cad2:	e554      	b.n	d004c57e <main+0xbbe>
d004cad4:	d0051f10 	.word	0xd0051f10
d004cad8:	d0051f40 	.word	0xd0051f40
d004cadc:	d0052e20 	.word	0xd0052e20
d004cae0:	d0052e00 	.word	0xd0052e00
d004cae4:	d0051f08 	.word	0xd0051f08
d004cae8:	d0051f0c 	.word	0xd0051f0c

d004caec <__errno>:
d004caec:	4b01      	ldr	r3, [pc, #4]	; (d004caf4 <__errno+0x8>)
d004caee:	6818      	ldr	r0, [r3, #0]
d004caf0:	4770      	bx	lr
d004caf2:	bf00      	nop
d004caf4:	d0051e88 	.word	0xd0051e88

d004caf8 <malloc>:
d004caf8:	4b02      	ldr	r3, [pc, #8]	; (d004cb04 <malloc+0xc>)
d004cafa:	4601      	mov	r1, r0
d004cafc:	6818      	ldr	r0, [r3, #0]
d004cafe:	f000 b85b 	b.w	d004cbb8 <_malloc_r>
d004cb02:	bf00      	nop
d004cb04:	d0051e88 	.word	0xd0051e88

d004cb08 <memset>:
d004cb08:	4402      	add	r2, r0
d004cb0a:	4603      	mov	r3, r0
d004cb0c:	4293      	cmp	r3, r2
d004cb0e:	d100      	bne.n	d004cb12 <memset+0xa>
d004cb10:	4770      	bx	lr
d004cb12:	f803 1b01 	strb.w	r1, [r3], #1
d004cb16:	e7f9      	b.n	d004cb0c <memset+0x4>

d004cb18 <_free_r>:
d004cb18:	b537      	push	{r0, r1, r2, r4, r5, lr}
d004cb1a:	2900      	cmp	r1, #0
d004cb1c:	d048      	beq.n	d004cbb0 <_free_r+0x98>
d004cb1e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d004cb22:	9001      	str	r0, [sp, #4]
d004cb24:	2b00      	cmp	r3, #0
d004cb26:	f1a1 0404 	sub.w	r4, r1, #4
d004cb2a:	bfb8      	it	lt
d004cb2c:	18e4      	addlt	r4, r4, r3
d004cb2e:	f000 fb49 	bl	d004d1c4 <__malloc_lock>
d004cb32:	4a20      	ldr	r2, [pc, #128]	; (d004cbb4 <_free_r+0x9c>)
d004cb34:	9801      	ldr	r0, [sp, #4]
d004cb36:	6813      	ldr	r3, [r2, #0]
d004cb38:	4615      	mov	r5, r2
d004cb3a:	b933      	cbnz	r3, d004cb4a <_free_r+0x32>
d004cb3c:	6063      	str	r3, [r4, #4]
d004cb3e:	6014      	str	r4, [r2, #0]
d004cb40:	b003      	add	sp, #12
d004cb42:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004cb46:	f000 bb43 	b.w	d004d1d0 <__malloc_unlock>
d004cb4a:	42a3      	cmp	r3, r4
d004cb4c:	d90b      	bls.n	d004cb66 <_free_r+0x4e>
d004cb4e:	6821      	ldr	r1, [r4, #0]
d004cb50:	1862      	adds	r2, r4, r1
d004cb52:	4293      	cmp	r3, r2
d004cb54:	bf04      	itt	eq
d004cb56:	681a      	ldreq	r2, [r3, #0]
d004cb58:	685b      	ldreq	r3, [r3, #4]
d004cb5a:	6063      	str	r3, [r4, #4]
d004cb5c:	bf04      	itt	eq
d004cb5e:	1852      	addeq	r2, r2, r1
d004cb60:	6022      	streq	r2, [r4, #0]
d004cb62:	602c      	str	r4, [r5, #0]
d004cb64:	e7ec      	b.n	d004cb40 <_free_r+0x28>
d004cb66:	461a      	mov	r2, r3
d004cb68:	685b      	ldr	r3, [r3, #4]
d004cb6a:	b10b      	cbz	r3, d004cb70 <_free_r+0x58>
d004cb6c:	42a3      	cmp	r3, r4
d004cb6e:	d9fa      	bls.n	d004cb66 <_free_r+0x4e>
d004cb70:	6811      	ldr	r1, [r2, #0]
d004cb72:	1855      	adds	r5, r2, r1
d004cb74:	42a5      	cmp	r5, r4
d004cb76:	d10b      	bne.n	d004cb90 <_free_r+0x78>
d004cb78:	6824      	ldr	r4, [r4, #0]
d004cb7a:	4421      	add	r1, r4
d004cb7c:	1854      	adds	r4, r2, r1
d004cb7e:	42a3      	cmp	r3, r4
d004cb80:	6011      	str	r1, [r2, #0]
d004cb82:	d1dd      	bne.n	d004cb40 <_free_r+0x28>
d004cb84:	681c      	ldr	r4, [r3, #0]
d004cb86:	685b      	ldr	r3, [r3, #4]
d004cb88:	6053      	str	r3, [r2, #4]
d004cb8a:	4421      	add	r1, r4
d004cb8c:	6011      	str	r1, [r2, #0]
d004cb8e:	e7d7      	b.n	d004cb40 <_free_r+0x28>
d004cb90:	d902      	bls.n	d004cb98 <_free_r+0x80>
d004cb92:	230c      	movs	r3, #12
d004cb94:	6003      	str	r3, [r0, #0]
d004cb96:	e7d3      	b.n	d004cb40 <_free_r+0x28>
d004cb98:	6825      	ldr	r5, [r4, #0]
d004cb9a:	1961      	adds	r1, r4, r5
d004cb9c:	428b      	cmp	r3, r1
d004cb9e:	bf04      	itt	eq
d004cba0:	6819      	ldreq	r1, [r3, #0]
d004cba2:	685b      	ldreq	r3, [r3, #4]
d004cba4:	6063      	str	r3, [r4, #4]
d004cba6:	bf04      	itt	eq
d004cba8:	1949      	addeq	r1, r1, r5
d004cbaa:	6021      	streq	r1, [r4, #0]
d004cbac:	6054      	str	r4, [r2, #4]
d004cbae:	e7c7      	b.n	d004cb40 <_free_r+0x28>
d004cbb0:	b003      	add	sp, #12
d004cbb2:	bd30      	pop	{r4, r5, pc}
d004cbb4:	d0053c3c 	.word	0xd0053c3c

d004cbb8 <_malloc_r>:
d004cbb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004cbba:	1ccd      	adds	r5, r1, #3
d004cbbc:	f025 0503 	bic.w	r5, r5, #3
d004cbc0:	3508      	adds	r5, #8
d004cbc2:	2d0c      	cmp	r5, #12
d004cbc4:	bf38      	it	cc
d004cbc6:	250c      	movcc	r5, #12
d004cbc8:	2d00      	cmp	r5, #0
d004cbca:	4606      	mov	r6, r0
d004cbcc:	db01      	blt.n	d004cbd2 <_malloc_r+0x1a>
d004cbce:	42a9      	cmp	r1, r5
d004cbd0:	d903      	bls.n	d004cbda <_malloc_r+0x22>
d004cbd2:	230c      	movs	r3, #12
d004cbd4:	6033      	str	r3, [r6, #0]
d004cbd6:	2000      	movs	r0, #0
d004cbd8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004cbda:	f000 faf3 	bl	d004d1c4 <__malloc_lock>
d004cbde:	4921      	ldr	r1, [pc, #132]	; (d004cc64 <_malloc_r+0xac>)
d004cbe0:	680a      	ldr	r2, [r1, #0]
d004cbe2:	4614      	mov	r4, r2
d004cbe4:	b99c      	cbnz	r4, d004cc0e <_malloc_r+0x56>
d004cbe6:	4f20      	ldr	r7, [pc, #128]	; (d004cc68 <_malloc_r+0xb0>)
d004cbe8:	683b      	ldr	r3, [r7, #0]
d004cbea:	b923      	cbnz	r3, d004cbf6 <_malloc_r+0x3e>
d004cbec:	4621      	mov	r1, r4
d004cbee:	4630      	mov	r0, r6
d004cbf0:	f7fe fa84 	bl	d004b0fc <_sbrk_r>
d004cbf4:	6038      	str	r0, [r7, #0]
d004cbf6:	4629      	mov	r1, r5
d004cbf8:	4630      	mov	r0, r6
d004cbfa:	f7fe fa7f 	bl	d004b0fc <_sbrk_r>
d004cbfe:	1c43      	adds	r3, r0, #1
d004cc00:	d123      	bne.n	d004cc4a <_malloc_r+0x92>
d004cc02:	230c      	movs	r3, #12
d004cc04:	6033      	str	r3, [r6, #0]
d004cc06:	4630      	mov	r0, r6
d004cc08:	f000 fae2 	bl	d004d1d0 <__malloc_unlock>
d004cc0c:	e7e3      	b.n	d004cbd6 <_malloc_r+0x1e>
d004cc0e:	6823      	ldr	r3, [r4, #0]
d004cc10:	1b5b      	subs	r3, r3, r5
d004cc12:	d417      	bmi.n	d004cc44 <_malloc_r+0x8c>
d004cc14:	2b0b      	cmp	r3, #11
d004cc16:	d903      	bls.n	d004cc20 <_malloc_r+0x68>
d004cc18:	6023      	str	r3, [r4, #0]
d004cc1a:	441c      	add	r4, r3
d004cc1c:	6025      	str	r5, [r4, #0]
d004cc1e:	e004      	b.n	d004cc2a <_malloc_r+0x72>
d004cc20:	6863      	ldr	r3, [r4, #4]
d004cc22:	42a2      	cmp	r2, r4
d004cc24:	bf0c      	ite	eq
d004cc26:	600b      	streq	r3, [r1, #0]
d004cc28:	6053      	strne	r3, [r2, #4]
d004cc2a:	4630      	mov	r0, r6
d004cc2c:	f000 fad0 	bl	d004d1d0 <__malloc_unlock>
d004cc30:	f104 000b 	add.w	r0, r4, #11
d004cc34:	1d23      	adds	r3, r4, #4
d004cc36:	f020 0007 	bic.w	r0, r0, #7
d004cc3a:	1ac2      	subs	r2, r0, r3
d004cc3c:	d0cc      	beq.n	d004cbd8 <_malloc_r+0x20>
d004cc3e:	1a1b      	subs	r3, r3, r0
d004cc40:	50a3      	str	r3, [r4, r2]
d004cc42:	e7c9      	b.n	d004cbd8 <_malloc_r+0x20>
d004cc44:	4622      	mov	r2, r4
d004cc46:	6864      	ldr	r4, [r4, #4]
d004cc48:	e7cc      	b.n	d004cbe4 <_malloc_r+0x2c>
d004cc4a:	1cc4      	adds	r4, r0, #3
d004cc4c:	f024 0403 	bic.w	r4, r4, #3
d004cc50:	42a0      	cmp	r0, r4
d004cc52:	d0e3      	beq.n	d004cc1c <_malloc_r+0x64>
d004cc54:	1a21      	subs	r1, r4, r0
d004cc56:	4630      	mov	r0, r6
d004cc58:	f7fe fa50 	bl	d004b0fc <_sbrk_r>
d004cc5c:	3001      	adds	r0, #1
d004cc5e:	d1dd      	bne.n	d004cc1c <_malloc_r+0x64>
d004cc60:	e7cf      	b.n	d004cc02 <_malloc_r+0x4a>
d004cc62:	bf00      	nop
d004cc64:	d0053c3c 	.word	0xd0053c3c
d004cc68:	d0053c40 	.word	0xd0053c40

d004cc6c <setbuf>:
d004cc6c:	2900      	cmp	r1, #0
d004cc6e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004cc72:	bf0c      	ite	eq
d004cc74:	2202      	moveq	r2, #2
d004cc76:	2200      	movne	r2, #0
d004cc78:	f000 b800 	b.w	d004cc7c <setvbuf>

d004cc7c <setvbuf>:
d004cc7c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d004cc80:	461d      	mov	r5, r3
d004cc82:	4b5d      	ldr	r3, [pc, #372]	; (d004cdf8 <setvbuf+0x17c>)
d004cc84:	681f      	ldr	r7, [r3, #0]
d004cc86:	4604      	mov	r4, r0
d004cc88:	460e      	mov	r6, r1
d004cc8a:	4690      	mov	r8, r2
d004cc8c:	b127      	cbz	r7, d004cc98 <setvbuf+0x1c>
d004cc8e:	69bb      	ldr	r3, [r7, #24]
d004cc90:	b913      	cbnz	r3, d004cc98 <setvbuf+0x1c>
d004cc92:	4638      	mov	r0, r7
d004cc94:	f000 f9d2 	bl	d004d03c <__sinit>
d004cc98:	4b58      	ldr	r3, [pc, #352]	; (d004cdfc <setvbuf+0x180>)
d004cc9a:	429c      	cmp	r4, r3
d004cc9c:	d167      	bne.n	d004cd6e <setvbuf+0xf2>
d004cc9e:	687c      	ldr	r4, [r7, #4]
d004cca0:	f1b8 0f02 	cmp.w	r8, #2
d004cca4:	d006      	beq.n	d004ccb4 <setvbuf+0x38>
d004cca6:	f1b8 0f01 	cmp.w	r8, #1
d004ccaa:	f200 809f 	bhi.w	d004cdec <setvbuf+0x170>
d004ccae:	2d00      	cmp	r5, #0
d004ccb0:	f2c0 809c 	blt.w	d004cdec <setvbuf+0x170>
d004ccb4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004ccb6:	07db      	lsls	r3, r3, #31
d004ccb8:	d405      	bmi.n	d004ccc6 <setvbuf+0x4a>
d004ccba:	89a3      	ldrh	r3, [r4, #12]
d004ccbc:	0598      	lsls	r0, r3, #22
d004ccbe:	d402      	bmi.n	d004ccc6 <setvbuf+0x4a>
d004ccc0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004ccc2:	f000 fa59 	bl	d004d178 <__retarget_lock_acquire_recursive>
d004ccc6:	4621      	mov	r1, r4
d004ccc8:	4638      	mov	r0, r7
d004ccca:	f000 f923 	bl	d004cf14 <_fflush_r>
d004ccce:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004ccd0:	b141      	cbz	r1, d004cce4 <setvbuf+0x68>
d004ccd2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004ccd6:	4299      	cmp	r1, r3
d004ccd8:	d002      	beq.n	d004cce0 <setvbuf+0x64>
d004ccda:	4638      	mov	r0, r7
d004ccdc:	f7ff ff1c 	bl	d004cb18 <_free_r>
d004cce0:	2300      	movs	r3, #0
d004cce2:	6363      	str	r3, [r4, #52]	; 0x34
d004cce4:	2300      	movs	r3, #0
d004cce6:	61a3      	str	r3, [r4, #24]
d004cce8:	6063      	str	r3, [r4, #4]
d004ccea:	89a3      	ldrh	r3, [r4, #12]
d004ccec:	0619      	lsls	r1, r3, #24
d004ccee:	d503      	bpl.n	d004ccf8 <setvbuf+0x7c>
d004ccf0:	6921      	ldr	r1, [r4, #16]
d004ccf2:	4638      	mov	r0, r7
d004ccf4:	f7ff ff10 	bl	d004cb18 <_free_r>
d004ccf8:	89a3      	ldrh	r3, [r4, #12]
d004ccfa:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d004ccfe:	f023 0303 	bic.w	r3, r3, #3
d004cd02:	f1b8 0f02 	cmp.w	r8, #2
d004cd06:	81a3      	strh	r3, [r4, #12]
d004cd08:	d06c      	beq.n	d004cde4 <setvbuf+0x168>
d004cd0a:	ab01      	add	r3, sp, #4
d004cd0c:	466a      	mov	r2, sp
d004cd0e:	4621      	mov	r1, r4
d004cd10:	4638      	mov	r0, r7
d004cd12:	f000 fa33 	bl	d004d17c <__swhatbuf_r>
d004cd16:	89a3      	ldrh	r3, [r4, #12]
d004cd18:	4318      	orrs	r0, r3
d004cd1a:	81a0      	strh	r0, [r4, #12]
d004cd1c:	2d00      	cmp	r5, #0
d004cd1e:	d130      	bne.n	d004cd82 <setvbuf+0x106>
d004cd20:	9d00      	ldr	r5, [sp, #0]
d004cd22:	4628      	mov	r0, r5
d004cd24:	f7ff fee8 	bl	d004caf8 <malloc>
d004cd28:	4606      	mov	r6, r0
d004cd2a:	2800      	cmp	r0, #0
d004cd2c:	d155      	bne.n	d004cdda <setvbuf+0x15e>
d004cd2e:	f8dd 9000 	ldr.w	r9, [sp]
d004cd32:	45a9      	cmp	r9, r5
d004cd34:	d14a      	bne.n	d004cdcc <setvbuf+0x150>
d004cd36:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d004cd3a:	2200      	movs	r2, #0
d004cd3c:	60a2      	str	r2, [r4, #8]
d004cd3e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d004cd42:	6022      	str	r2, [r4, #0]
d004cd44:	6122      	str	r2, [r4, #16]
d004cd46:	2201      	movs	r2, #1
d004cd48:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d004cd4c:	6162      	str	r2, [r4, #20]
d004cd4e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004cd50:	f043 0302 	orr.w	r3, r3, #2
d004cd54:	07d2      	lsls	r2, r2, #31
d004cd56:	81a3      	strh	r3, [r4, #12]
d004cd58:	d405      	bmi.n	d004cd66 <setvbuf+0xea>
d004cd5a:	f413 7f00 	tst.w	r3, #512	; 0x200
d004cd5e:	d102      	bne.n	d004cd66 <setvbuf+0xea>
d004cd60:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004cd62:	f000 fa0a 	bl	d004d17a <__retarget_lock_release_recursive>
d004cd66:	4628      	mov	r0, r5
d004cd68:	b003      	add	sp, #12
d004cd6a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004cd6e:	4b24      	ldr	r3, [pc, #144]	; (d004ce00 <setvbuf+0x184>)
d004cd70:	429c      	cmp	r4, r3
d004cd72:	d101      	bne.n	d004cd78 <setvbuf+0xfc>
d004cd74:	68bc      	ldr	r4, [r7, #8]
d004cd76:	e793      	b.n	d004cca0 <setvbuf+0x24>
d004cd78:	4b22      	ldr	r3, [pc, #136]	; (d004ce04 <setvbuf+0x188>)
d004cd7a:	429c      	cmp	r4, r3
d004cd7c:	bf08      	it	eq
d004cd7e:	68fc      	ldreq	r4, [r7, #12]
d004cd80:	e78e      	b.n	d004cca0 <setvbuf+0x24>
d004cd82:	2e00      	cmp	r6, #0
d004cd84:	d0cd      	beq.n	d004cd22 <setvbuf+0xa6>
d004cd86:	69bb      	ldr	r3, [r7, #24]
d004cd88:	b913      	cbnz	r3, d004cd90 <setvbuf+0x114>
d004cd8a:	4638      	mov	r0, r7
d004cd8c:	f000 f956 	bl	d004d03c <__sinit>
d004cd90:	f1b8 0f01 	cmp.w	r8, #1
d004cd94:	bf08      	it	eq
d004cd96:	89a3      	ldrheq	r3, [r4, #12]
d004cd98:	6026      	str	r6, [r4, #0]
d004cd9a:	bf04      	itt	eq
d004cd9c:	f043 0301 	orreq.w	r3, r3, #1
d004cda0:	81a3      	strheq	r3, [r4, #12]
d004cda2:	89a2      	ldrh	r2, [r4, #12]
d004cda4:	f012 0308 	ands.w	r3, r2, #8
d004cda8:	e9c4 6504 	strd	r6, r5, [r4, #16]
d004cdac:	d01c      	beq.n	d004cde8 <setvbuf+0x16c>
d004cdae:	07d3      	lsls	r3, r2, #31
d004cdb0:	bf41      	itttt	mi
d004cdb2:	2300      	movmi	r3, #0
d004cdb4:	426d      	negmi	r5, r5
d004cdb6:	60a3      	strmi	r3, [r4, #8]
d004cdb8:	61a5      	strmi	r5, [r4, #24]
d004cdba:	bf58      	it	pl
d004cdbc:	60a5      	strpl	r5, [r4, #8]
d004cdbe:	6e65      	ldr	r5, [r4, #100]	; 0x64
d004cdc0:	f015 0501 	ands.w	r5, r5, #1
d004cdc4:	d115      	bne.n	d004cdf2 <setvbuf+0x176>
d004cdc6:	f412 7f00 	tst.w	r2, #512	; 0x200
d004cdca:	e7c8      	b.n	d004cd5e <setvbuf+0xe2>
d004cdcc:	4648      	mov	r0, r9
d004cdce:	f7ff fe93 	bl	d004caf8 <malloc>
d004cdd2:	4606      	mov	r6, r0
d004cdd4:	2800      	cmp	r0, #0
d004cdd6:	d0ae      	beq.n	d004cd36 <setvbuf+0xba>
d004cdd8:	464d      	mov	r5, r9
d004cdda:	89a3      	ldrh	r3, [r4, #12]
d004cddc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d004cde0:	81a3      	strh	r3, [r4, #12]
d004cde2:	e7d0      	b.n	d004cd86 <setvbuf+0x10a>
d004cde4:	2500      	movs	r5, #0
d004cde6:	e7a8      	b.n	d004cd3a <setvbuf+0xbe>
d004cde8:	60a3      	str	r3, [r4, #8]
d004cdea:	e7e8      	b.n	d004cdbe <setvbuf+0x142>
d004cdec:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d004cdf0:	e7b9      	b.n	d004cd66 <setvbuf+0xea>
d004cdf2:	2500      	movs	r5, #0
d004cdf4:	e7b7      	b.n	d004cd66 <setvbuf+0xea>
d004cdf6:	bf00      	nop
d004cdf8:	d0051e88 	.word	0xd0051e88
d004cdfc:	d0051e34 	.word	0xd0051e34
d004ce00:	d0051e54 	.word	0xd0051e54
d004ce04:	d0051e14 	.word	0xd0051e14

d004ce08 <__sflush_r>:
d004ce08:	898a      	ldrh	r2, [r1, #12]
d004ce0a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004ce0e:	4605      	mov	r5, r0
d004ce10:	0710      	lsls	r0, r2, #28
d004ce12:	460c      	mov	r4, r1
d004ce14:	d458      	bmi.n	d004cec8 <__sflush_r+0xc0>
d004ce16:	684b      	ldr	r3, [r1, #4]
d004ce18:	2b00      	cmp	r3, #0
d004ce1a:	dc05      	bgt.n	d004ce28 <__sflush_r+0x20>
d004ce1c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d004ce1e:	2b00      	cmp	r3, #0
d004ce20:	dc02      	bgt.n	d004ce28 <__sflush_r+0x20>
d004ce22:	2000      	movs	r0, #0
d004ce24:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004ce28:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d004ce2a:	2e00      	cmp	r6, #0
d004ce2c:	d0f9      	beq.n	d004ce22 <__sflush_r+0x1a>
d004ce2e:	2300      	movs	r3, #0
d004ce30:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d004ce34:	682f      	ldr	r7, [r5, #0]
d004ce36:	602b      	str	r3, [r5, #0]
d004ce38:	d032      	beq.n	d004cea0 <__sflush_r+0x98>
d004ce3a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d004ce3c:	89a3      	ldrh	r3, [r4, #12]
d004ce3e:	075a      	lsls	r2, r3, #29
d004ce40:	d505      	bpl.n	d004ce4e <__sflush_r+0x46>
d004ce42:	6863      	ldr	r3, [r4, #4]
d004ce44:	1ac0      	subs	r0, r0, r3
d004ce46:	6b63      	ldr	r3, [r4, #52]	; 0x34
d004ce48:	b10b      	cbz	r3, d004ce4e <__sflush_r+0x46>
d004ce4a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d004ce4c:	1ac0      	subs	r0, r0, r3
d004ce4e:	2300      	movs	r3, #0
d004ce50:	4602      	mov	r2, r0
d004ce52:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d004ce54:	6a21      	ldr	r1, [r4, #32]
d004ce56:	4628      	mov	r0, r5
d004ce58:	47b0      	blx	r6
d004ce5a:	1c43      	adds	r3, r0, #1
d004ce5c:	89a3      	ldrh	r3, [r4, #12]
d004ce5e:	d106      	bne.n	d004ce6e <__sflush_r+0x66>
d004ce60:	6829      	ldr	r1, [r5, #0]
d004ce62:	291d      	cmp	r1, #29
d004ce64:	d82c      	bhi.n	d004cec0 <__sflush_r+0xb8>
d004ce66:	4a2a      	ldr	r2, [pc, #168]	; (d004cf10 <__sflush_r+0x108>)
d004ce68:	40ca      	lsrs	r2, r1
d004ce6a:	07d6      	lsls	r6, r2, #31
d004ce6c:	d528      	bpl.n	d004cec0 <__sflush_r+0xb8>
d004ce6e:	2200      	movs	r2, #0
d004ce70:	6062      	str	r2, [r4, #4]
d004ce72:	04d9      	lsls	r1, r3, #19
d004ce74:	6922      	ldr	r2, [r4, #16]
d004ce76:	6022      	str	r2, [r4, #0]
d004ce78:	d504      	bpl.n	d004ce84 <__sflush_r+0x7c>
d004ce7a:	1c42      	adds	r2, r0, #1
d004ce7c:	d101      	bne.n	d004ce82 <__sflush_r+0x7a>
d004ce7e:	682b      	ldr	r3, [r5, #0]
d004ce80:	b903      	cbnz	r3, d004ce84 <__sflush_r+0x7c>
d004ce82:	6560      	str	r0, [r4, #84]	; 0x54
d004ce84:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004ce86:	602f      	str	r7, [r5, #0]
d004ce88:	2900      	cmp	r1, #0
d004ce8a:	d0ca      	beq.n	d004ce22 <__sflush_r+0x1a>
d004ce8c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004ce90:	4299      	cmp	r1, r3
d004ce92:	d002      	beq.n	d004ce9a <__sflush_r+0x92>
d004ce94:	4628      	mov	r0, r5
d004ce96:	f7ff fe3f 	bl	d004cb18 <_free_r>
d004ce9a:	2000      	movs	r0, #0
d004ce9c:	6360      	str	r0, [r4, #52]	; 0x34
d004ce9e:	e7c1      	b.n	d004ce24 <__sflush_r+0x1c>
d004cea0:	6a21      	ldr	r1, [r4, #32]
d004cea2:	2301      	movs	r3, #1
d004cea4:	4628      	mov	r0, r5
d004cea6:	47b0      	blx	r6
d004cea8:	1c41      	adds	r1, r0, #1
d004ceaa:	d1c7      	bne.n	d004ce3c <__sflush_r+0x34>
d004ceac:	682b      	ldr	r3, [r5, #0]
d004ceae:	2b00      	cmp	r3, #0
d004ceb0:	d0c4      	beq.n	d004ce3c <__sflush_r+0x34>
d004ceb2:	2b1d      	cmp	r3, #29
d004ceb4:	d001      	beq.n	d004ceba <__sflush_r+0xb2>
d004ceb6:	2b16      	cmp	r3, #22
d004ceb8:	d101      	bne.n	d004cebe <__sflush_r+0xb6>
d004ceba:	602f      	str	r7, [r5, #0]
d004cebc:	e7b1      	b.n	d004ce22 <__sflush_r+0x1a>
d004cebe:	89a3      	ldrh	r3, [r4, #12]
d004cec0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004cec4:	81a3      	strh	r3, [r4, #12]
d004cec6:	e7ad      	b.n	d004ce24 <__sflush_r+0x1c>
d004cec8:	690f      	ldr	r7, [r1, #16]
d004ceca:	2f00      	cmp	r7, #0
d004cecc:	d0a9      	beq.n	d004ce22 <__sflush_r+0x1a>
d004cece:	0793      	lsls	r3, r2, #30
d004ced0:	680e      	ldr	r6, [r1, #0]
d004ced2:	bf08      	it	eq
d004ced4:	694b      	ldreq	r3, [r1, #20]
d004ced6:	600f      	str	r7, [r1, #0]
d004ced8:	bf18      	it	ne
d004ceda:	2300      	movne	r3, #0
d004cedc:	eba6 0807 	sub.w	r8, r6, r7
d004cee0:	608b      	str	r3, [r1, #8]
d004cee2:	f1b8 0f00 	cmp.w	r8, #0
d004cee6:	dd9c      	ble.n	d004ce22 <__sflush_r+0x1a>
d004cee8:	6a21      	ldr	r1, [r4, #32]
d004ceea:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d004ceec:	4643      	mov	r3, r8
d004ceee:	463a      	mov	r2, r7
d004cef0:	4628      	mov	r0, r5
d004cef2:	47b0      	blx	r6
d004cef4:	2800      	cmp	r0, #0
d004cef6:	dc06      	bgt.n	d004cf06 <__sflush_r+0xfe>
d004cef8:	89a3      	ldrh	r3, [r4, #12]
d004cefa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004cefe:	81a3      	strh	r3, [r4, #12]
d004cf00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004cf04:	e78e      	b.n	d004ce24 <__sflush_r+0x1c>
d004cf06:	4407      	add	r7, r0
d004cf08:	eba8 0800 	sub.w	r8, r8, r0
d004cf0c:	e7e9      	b.n	d004cee2 <__sflush_r+0xda>
d004cf0e:	bf00      	nop
d004cf10:	20400001 	.word	0x20400001

d004cf14 <_fflush_r>:
d004cf14:	b538      	push	{r3, r4, r5, lr}
d004cf16:	690b      	ldr	r3, [r1, #16]
d004cf18:	4605      	mov	r5, r0
d004cf1a:	460c      	mov	r4, r1
d004cf1c:	b913      	cbnz	r3, d004cf24 <_fflush_r+0x10>
d004cf1e:	2500      	movs	r5, #0
d004cf20:	4628      	mov	r0, r5
d004cf22:	bd38      	pop	{r3, r4, r5, pc}
d004cf24:	b118      	cbz	r0, d004cf2e <_fflush_r+0x1a>
d004cf26:	6983      	ldr	r3, [r0, #24]
d004cf28:	b90b      	cbnz	r3, d004cf2e <_fflush_r+0x1a>
d004cf2a:	f000 f887 	bl	d004d03c <__sinit>
d004cf2e:	4b14      	ldr	r3, [pc, #80]	; (d004cf80 <_fflush_r+0x6c>)
d004cf30:	429c      	cmp	r4, r3
d004cf32:	d11b      	bne.n	d004cf6c <_fflush_r+0x58>
d004cf34:	686c      	ldr	r4, [r5, #4]
d004cf36:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d004cf3a:	2b00      	cmp	r3, #0
d004cf3c:	d0ef      	beq.n	d004cf1e <_fflush_r+0xa>
d004cf3e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004cf40:	07d0      	lsls	r0, r2, #31
d004cf42:	d404      	bmi.n	d004cf4e <_fflush_r+0x3a>
d004cf44:	0599      	lsls	r1, r3, #22
d004cf46:	d402      	bmi.n	d004cf4e <_fflush_r+0x3a>
d004cf48:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004cf4a:	f000 f915 	bl	d004d178 <__retarget_lock_acquire_recursive>
d004cf4e:	4628      	mov	r0, r5
d004cf50:	4621      	mov	r1, r4
d004cf52:	f7ff ff59 	bl	d004ce08 <__sflush_r>
d004cf56:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004cf58:	07da      	lsls	r2, r3, #31
d004cf5a:	4605      	mov	r5, r0
d004cf5c:	d4e0      	bmi.n	d004cf20 <_fflush_r+0xc>
d004cf5e:	89a3      	ldrh	r3, [r4, #12]
d004cf60:	059b      	lsls	r3, r3, #22
d004cf62:	d4dd      	bmi.n	d004cf20 <_fflush_r+0xc>
d004cf64:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004cf66:	f000 f908 	bl	d004d17a <__retarget_lock_release_recursive>
d004cf6a:	e7d9      	b.n	d004cf20 <_fflush_r+0xc>
d004cf6c:	4b05      	ldr	r3, [pc, #20]	; (d004cf84 <_fflush_r+0x70>)
d004cf6e:	429c      	cmp	r4, r3
d004cf70:	d101      	bne.n	d004cf76 <_fflush_r+0x62>
d004cf72:	68ac      	ldr	r4, [r5, #8]
d004cf74:	e7df      	b.n	d004cf36 <_fflush_r+0x22>
d004cf76:	4b04      	ldr	r3, [pc, #16]	; (d004cf88 <_fflush_r+0x74>)
d004cf78:	429c      	cmp	r4, r3
d004cf7a:	bf08      	it	eq
d004cf7c:	68ec      	ldreq	r4, [r5, #12]
d004cf7e:	e7da      	b.n	d004cf36 <_fflush_r+0x22>
d004cf80:	d0051e34 	.word	0xd0051e34
d004cf84:	d0051e54 	.word	0xd0051e54
d004cf88:	d0051e14 	.word	0xd0051e14

d004cf8c <std>:
d004cf8c:	2300      	movs	r3, #0
d004cf8e:	b510      	push	{r4, lr}
d004cf90:	4604      	mov	r4, r0
d004cf92:	e9c0 3300 	strd	r3, r3, [r0]
d004cf96:	e9c0 3304 	strd	r3, r3, [r0, #16]
d004cf9a:	6083      	str	r3, [r0, #8]
d004cf9c:	8181      	strh	r1, [r0, #12]
d004cf9e:	6643      	str	r3, [r0, #100]	; 0x64
d004cfa0:	81c2      	strh	r2, [r0, #14]
d004cfa2:	6183      	str	r3, [r0, #24]
d004cfa4:	4619      	mov	r1, r3
d004cfa6:	2208      	movs	r2, #8
d004cfa8:	305c      	adds	r0, #92	; 0x5c
d004cfaa:	f7ff fdad 	bl	d004cb08 <memset>
d004cfae:	4b05      	ldr	r3, [pc, #20]	; (d004cfc4 <std+0x38>)
d004cfb0:	6263      	str	r3, [r4, #36]	; 0x24
d004cfb2:	4b05      	ldr	r3, [pc, #20]	; (d004cfc8 <std+0x3c>)
d004cfb4:	62a3      	str	r3, [r4, #40]	; 0x28
d004cfb6:	4b05      	ldr	r3, [pc, #20]	; (d004cfcc <std+0x40>)
d004cfb8:	62e3      	str	r3, [r4, #44]	; 0x2c
d004cfba:	4b05      	ldr	r3, [pc, #20]	; (d004cfd0 <std+0x44>)
d004cfbc:	6224      	str	r4, [r4, #32]
d004cfbe:	6323      	str	r3, [r4, #48]	; 0x30
d004cfc0:	bd10      	pop	{r4, pc}
d004cfc2:	bf00      	nop
d004cfc4:	d004d1dd 	.word	0xd004d1dd
d004cfc8:	d004d1ff 	.word	0xd004d1ff
d004cfcc:	d004d237 	.word	0xd004d237
d004cfd0:	d004d25b 	.word	0xd004d25b

d004cfd4 <_cleanup_r>:
d004cfd4:	4901      	ldr	r1, [pc, #4]	; (d004cfdc <_cleanup_r+0x8>)
d004cfd6:	f000 b8af 	b.w	d004d138 <_fwalk_reent>
d004cfda:	bf00      	nop
d004cfdc:	d004cf15 	.word	0xd004cf15

d004cfe0 <__sfmoreglue>:
d004cfe0:	b570      	push	{r4, r5, r6, lr}
d004cfe2:	1e4a      	subs	r2, r1, #1
d004cfe4:	2568      	movs	r5, #104	; 0x68
d004cfe6:	4355      	muls	r5, r2
d004cfe8:	460e      	mov	r6, r1
d004cfea:	f105 0174 	add.w	r1, r5, #116	; 0x74
d004cfee:	f7ff fde3 	bl	d004cbb8 <_malloc_r>
d004cff2:	4604      	mov	r4, r0
d004cff4:	b140      	cbz	r0, d004d008 <__sfmoreglue+0x28>
d004cff6:	2100      	movs	r1, #0
d004cff8:	e9c0 1600 	strd	r1, r6, [r0]
d004cffc:	300c      	adds	r0, #12
d004cffe:	60a0      	str	r0, [r4, #8]
d004d000:	f105 0268 	add.w	r2, r5, #104	; 0x68
d004d004:	f7ff fd80 	bl	d004cb08 <memset>
d004d008:	4620      	mov	r0, r4
d004d00a:	bd70      	pop	{r4, r5, r6, pc}

d004d00c <__sfp_lock_acquire>:
d004d00c:	4801      	ldr	r0, [pc, #4]	; (d004d014 <__sfp_lock_acquire+0x8>)
d004d00e:	f000 b8b3 	b.w	d004d178 <__retarget_lock_acquire_recursive>
d004d012:	bf00      	nop
d004d014:	d0053c50 	.word	0xd0053c50

d004d018 <__sfp_lock_release>:
d004d018:	4801      	ldr	r0, [pc, #4]	; (d004d020 <__sfp_lock_release+0x8>)
d004d01a:	f000 b8ae 	b.w	d004d17a <__retarget_lock_release_recursive>
d004d01e:	bf00      	nop
d004d020:	d0053c50 	.word	0xd0053c50

d004d024 <__sinit_lock_acquire>:
d004d024:	4801      	ldr	r0, [pc, #4]	; (d004d02c <__sinit_lock_acquire+0x8>)
d004d026:	f000 b8a7 	b.w	d004d178 <__retarget_lock_acquire_recursive>
d004d02a:	bf00      	nop
d004d02c:	d0053c4b 	.word	0xd0053c4b

d004d030 <__sinit_lock_release>:
d004d030:	4801      	ldr	r0, [pc, #4]	; (d004d038 <__sinit_lock_release+0x8>)
d004d032:	f000 b8a2 	b.w	d004d17a <__retarget_lock_release_recursive>
d004d036:	bf00      	nop
d004d038:	d0053c4b 	.word	0xd0053c4b

d004d03c <__sinit>:
d004d03c:	b510      	push	{r4, lr}
d004d03e:	4604      	mov	r4, r0
d004d040:	f7ff fff0 	bl	d004d024 <__sinit_lock_acquire>
d004d044:	69a3      	ldr	r3, [r4, #24]
d004d046:	b11b      	cbz	r3, d004d050 <__sinit+0x14>
d004d048:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004d04c:	f7ff bff0 	b.w	d004d030 <__sinit_lock_release>
d004d050:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d004d054:	6523      	str	r3, [r4, #80]	; 0x50
d004d056:	4b13      	ldr	r3, [pc, #76]	; (d004d0a4 <__sinit+0x68>)
d004d058:	4a13      	ldr	r2, [pc, #76]	; (d004d0a8 <__sinit+0x6c>)
d004d05a:	681b      	ldr	r3, [r3, #0]
d004d05c:	62a2      	str	r2, [r4, #40]	; 0x28
d004d05e:	42a3      	cmp	r3, r4
d004d060:	bf04      	itt	eq
d004d062:	2301      	moveq	r3, #1
d004d064:	61a3      	streq	r3, [r4, #24]
d004d066:	4620      	mov	r0, r4
d004d068:	f000 f820 	bl	d004d0ac <__sfp>
d004d06c:	6060      	str	r0, [r4, #4]
d004d06e:	4620      	mov	r0, r4
d004d070:	f000 f81c 	bl	d004d0ac <__sfp>
d004d074:	60a0      	str	r0, [r4, #8]
d004d076:	4620      	mov	r0, r4
d004d078:	f000 f818 	bl	d004d0ac <__sfp>
d004d07c:	2200      	movs	r2, #0
d004d07e:	60e0      	str	r0, [r4, #12]
d004d080:	2104      	movs	r1, #4
d004d082:	6860      	ldr	r0, [r4, #4]
d004d084:	f7ff ff82 	bl	d004cf8c <std>
d004d088:	68a0      	ldr	r0, [r4, #8]
d004d08a:	2201      	movs	r2, #1
d004d08c:	2109      	movs	r1, #9
d004d08e:	f7ff ff7d 	bl	d004cf8c <std>
d004d092:	68e0      	ldr	r0, [r4, #12]
d004d094:	2202      	movs	r2, #2
d004d096:	2112      	movs	r1, #18
d004d098:	f7ff ff78 	bl	d004cf8c <std>
d004d09c:	2301      	movs	r3, #1
d004d09e:	61a3      	str	r3, [r4, #24]
d004d0a0:	e7d2      	b.n	d004d048 <__sinit+0xc>
d004d0a2:	bf00      	nop
d004d0a4:	d0051e10 	.word	0xd0051e10
d004d0a8:	d004cfd5 	.word	0xd004cfd5

d004d0ac <__sfp>:
d004d0ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004d0ae:	4607      	mov	r7, r0
d004d0b0:	f7ff ffac 	bl	d004d00c <__sfp_lock_acquire>
d004d0b4:	4b1e      	ldr	r3, [pc, #120]	; (d004d130 <__sfp+0x84>)
d004d0b6:	681e      	ldr	r6, [r3, #0]
d004d0b8:	69b3      	ldr	r3, [r6, #24]
d004d0ba:	b913      	cbnz	r3, d004d0c2 <__sfp+0x16>
d004d0bc:	4630      	mov	r0, r6
d004d0be:	f7ff ffbd 	bl	d004d03c <__sinit>
d004d0c2:	3648      	adds	r6, #72	; 0x48
d004d0c4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d004d0c8:	3b01      	subs	r3, #1
d004d0ca:	d503      	bpl.n	d004d0d4 <__sfp+0x28>
d004d0cc:	6833      	ldr	r3, [r6, #0]
d004d0ce:	b30b      	cbz	r3, d004d114 <__sfp+0x68>
d004d0d0:	6836      	ldr	r6, [r6, #0]
d004d0d2:	e7f7      	b.n	d004d0c4 <__sfp+0x18>
d004d0d4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d004d0d8:	b9d5      	cbnz	r5, d004d110 <__sfp+0x64>
d004d0da:	4b16      	ldr	r3, [pc, #88]	; (d004d134 <__sfp+0x88>)
d004d0dc:	60e3      	str	r3, [r4, #12]
d004d0de:	f104 0058 	add.w	r0, r4, #88	; 0x58
d004d0e2:	6665      	str	r5, [r4, #100]	; 0x64
d004d0e4:	f000 f847 	bl	d004d176 <__retarget_lock_init_recursive>
d004d0e8:	f7ff ff96 	bl	d004d018 <__sfp_lock_release>
d004d0ec:	e9c4 5501 	strd	r5, r5, [r4, #4]
d004d0f0:	e9c4 5504 	strd	r5, r5, [r4, #16]
d004d0f4:	6025      	str	r5, [r4, #0]
d004d0f6:	61a5      	str	r5, [r4, #24]
d004d0f8:	2208      	movs	r2, #8
d004d0fa:	4629      	mov	r1, r5
d004d0fc:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d004d100:	f7ff fd02 	bl	d004cb08 <memset>
d004d104:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d004d108:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d004d10c:	4620      	mov	r0, r4
d004d10e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004d110:	3468      	adds	r4, #104	; 0x68
d004d112:	e7d9      	b.n	d004d0c8 <__sfp+0x1c>
d004d114:	2104      	movs	r1, #4
d004d116:	4638      	mov	r0, r7
d004d118:	f7ff ff62 	bl	d004cfe0 <__sfmoreglue>
d004d11c:	4604      	mov	r4, r0
d004d11e:	6030      	str	r0, [r6, #0]
d004d120:	2800      	cmp	r0, #0
d004d122:	d1d5      	bne.n	d004d0d0 <__sfp+0x24>
d004d124:	f7ff ff78 	bl	d004d018 <__sfp_lock_release>
d004d128:	230c      	movs	r3, #12
d004d12a:	603b      	str	r3, [r7, #0]
d004d12c:	e7ee      	b.n	d004d10c <__sfp+0x60>
d004d12e:	bf00      	nop
d004d130:	d0051e10 	.word	0xd0051e10
d004d134:	ffff0001 	.word	0xffff0001

d004d138 <_fwalk_reent>:
d004d138:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d004d13c:	4606      	mov	r6, r0
d004d13e:	4688      	mov	r8, r1
d004d140:	f100 0448 	add.w	r4, r0, #72	; 0x48
d004d144:	2700      	movs	r7, #0
d004d146:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d004d14a:	f1b9 0901 	subs.w	r9, r9, #1
d004d14e:	d505      	bpl.n	d004d15c <_fwalk_reent+0x24>
d004d150:	6824      	ldr	r4, [r4, #0]
d004d152:	2c00      	cmp	r4, #0
d004d154:	d1f7      	bne.n	d004d146 <_fwalk_reent+0xe>
d004d156:	4638      	mov	r0, r7
d004d158:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d004d15c:	89ab      	ldrh	r3, [r5, #12]
d004d15e:	2b01      	cmp	r3, #1
d004d160:	d907      	bls.n	d004d172 <_fwalk_reent+0x3a>
d004d162:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d004d166:	3301      	adds	r3, #1
d004d168:	d003      	beq.n	d004d172 <_fwalk_reent+0x3a>
d004d16a:	4629      	mov	r1, r5
d004d16c:	4630      	mov	r0, r6
d004d16e:	47c0      	blx	r8
d004d170:	4307      	orrs	r7, r0
d004d172:	3568      	adds	r5, #104	; 0x68
d004d174:	e7e9      	b.n	d004d14a <_fwalk_reent+0x12>

d004d176 <__retarget_lock_init_recursive>:
d004d176:	4770      	bx	lr

d004d178 <__retarget_lock_acquire_recursive>:
d004d178:	4770      	bx	lr

d004d17a <__retarget_lock_release_recursive>:
d004d17a:	4770      	bx	lr

d004d17c <__swhatbuf_r>:
d004d17c:	b570      	push	{r4, r5, r6, lr}
d004d17e:	460e      	mov	r6, r1
d004d180:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d184:	2900      	cmp	r1, #0
d004d186:	b096      	sub	sp, #88	; 0x58
d004d188:	4614      	mov	r4, r2
d004d18a:	461d      	mov	r5, r3
d004d18c:	da07      	bge.n	d004d19e <__swhatbuf_r+0x22>
d004d18e:	2300      	movs	r3, #0
d004d190:	602b      	str	r3, [r5, #0]
d004d192:	89b3      	ldrh	r3, [r6, #12]
d004d194:	061a      	lsls	r2, r3, #24
d004d196:	d410      	bmi.n	d004d1ba <__swhatbuf_r+0x3e>
d004d198:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004d19c:	e00e      	b.n	d004d1bc <__swhatbuf_r+0x40>
d004d19e:	466a      	mov	r2, sp
d004d1a0:	f000 f870 	bl	d004d284 <_fstat_r>
d004d1a4:	2800      	cmp	r0, #0
d004d1a6:	dbf2      	blt.n	d004d18e <__swhatbuf_r+0x12>
d004d1a8:	9a01      	ldr	r2, [sp, #4]
d004d1aa:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d004d1ae:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d004d1b2:	425a      	negs	r2, r3
d004d1b4:	415a      	adcs	r2, r3
d004d1b6:	602a      	str	r2, [r5, #0]
d004d1b8:	e7ee      	b.n	d004d198 <__swhatbuf_r+0x1c>
d004d1ba:	2340      	movs	r3, #64	; 0x40
d004d1bc:	2000      	movs	r0, #0
d004d1be:	6023      	str	r3, [r4, #0]
d004d1c0:	b016      	add	sp, #88	; 0x58
d004d1c2:	bd70      	pop	{r4, r5, r6, pc}

d004d1c4 <__malloc_lock>:
d004d1c4:	4801      	ldr	r0, [pc, #4]	; (d004d1cc <__malloc_lock+0x8>)
d004d1c6:	f7ff bfd7 	b.w	d004d178 <__retarget_lock_acquire_recursive>
d004d1ca:	bf00      	nop
d004d1cc:	d0053c4c 	.word	0xd0053c4c

d004d1d0 <__malloc_unlock>:
d004d1d0:	4801      	ldr	r0, [pc, #4]	; (d004d1d8 <__malloc_unlock+0x8>)
d004d1d2:	f7ff bfd2 	b.w	d004d17a <__retarget_lock_release_recursive>
d004d1d6:	bf00      	nop
d004d1d8:	d0053c4c 	.word	0xd0053c4c

d004d1dc <__sread>:
d004d1dc:	b510      	push	{r4, lr}
d004d1de:	460c      	mov	r4, r1
d004d1e0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d1e4:	f000 f872 	bl	d004d2cc <_read_r>
d004d1e8:	2800      	cmp	r0, #0
d004d1ea:	bfab      	itete	ge
d004d1ec:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d004d1ee:	89a3      	ldrhlt	r3, [r4, #12]
d004d1f0:	181b      	addge	r3, r3, r0
d004d1f2:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d004d1f6:	bfac      	ite	ge
d004d1f8:	6563      	strge	r3, [r4, #84]	; 0x54
d004d1fa:	81a3      	strhlt	r3, [r4, #12]
d004d1fc:	bd10      	pop	{r4, pc}

d004d1fe <__swrite>:
d004d1fe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004d202:	461f      	mov	r7, r3
d004d204:	898b      	ldrh	r3, [r1, #12]
d004d206:	05db      	lsls	r3, r3, #23
d004d208:	4605      	mov	r5, r0
d004d20a:	460c      	mov	r4, r1
d004d20c:	4616      	mov	r6, r2
d004d20e:	d505      	bpl.n	d004d21c <__swrite+0x1e>
d004d210:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d214:	2302      	movs	r3, #2
d004d216:	2200      	movs	r2, #0
d004d218:	f000 f846 	bl	d004d2a8 <_lseek_r>
d004d21c:	89a3      	ldrh	r3, [r4, #12]
d004d21e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004d222:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d004d226:	81a3      	strh	r3, [r4, #12]
d004d228:	4632      	mov	r2, r6
d004d22a:	463b      	mov	r3, r7
d004d22c:	4628      	mov	r0, r5
d004d22e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004d232:	f7fd bf1d 	b.w	d004b070 <_write_r>

d004d236 <__sseek>:
d004d236:	b510      	push	{r4, lr}
d004d238:	460c      	mov	r4, r1
d004d23a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d23e:	f000 f833 	bl	d004d2a8 <_lseek_r>
d004d242:	1c43      	adds	r3, r0, #1
d004d244:	89a3      	ldrh	r3, [r4, #12]
d004d246:	bf15      	itete	ne
d004d248:	6560      	strne	r0, [r4, #84]	; 0x54
d004d24a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d004d24e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d004d252:	81a3      	strheq	r3, [r4, #12]
d004d254:	bf18      	it	ne
d004d256:	81a3      	strhne	r3, [r4, #12]
d004d258:	bd10      	pop	{r4, pc}

d004d25a <__sclose>:
d004d25a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d25e:	f000 b801 	b.w	d004d264 <_close_r>
	...

d004d264 <_close_r>:
d004d264:	b538      	push	{r3, r4, r5, lr}
d004d266:	4d06      	ldr	r5, [pc, #24]	; (d004d280 <_close_r+0x1c>)
d004d268:	2300      	movs	r3, #0
d004d26a:	4604      	mov	r4, r0
d004d26c:	4608      	mov	r0, r1
d004d26e:	602b      	str	r3, [r5, #0]
d004d270:	f7fd ff38 	bl	d004b0e4 <_close>
d004d274:	1c43      	adds	r3, r0, #1
d004d276:	d102      	bne.n	d004d27e <_close_r+0x1a>
d004d278:	682b      	ldr	r3, [r5, #0]
d004d27a:	b103      	cbz	r3, d004d27e <_close_r+0x1a>
d004d27c:	6023      	str	r3, [r4, #0]
d004d27e:	bd38      	pop	{r3, r4, r5, pc}
d004d280:	d0053c54 	.word	0xd0053c54

d004d284 <_fstat_r>:
d004d284:	b538      	push	{r3, r4, r5, lr}
d004d286:	4d07      	ldr	r5, [pc, #28]	; (d004d2a4 <_fstat_r+0x20>)
d004d288:	2300      	movs	r3, #0
d004d28a:	4604      	mov	r4, r0
d004d28c:	4608      	mov	r0, r1
d004d28e:	4611      	mov	r1, r2
d004d290:	602b      	str	r3, [r5, #0]
d004d292:	f7fd ff2b 	bl	d004b0ec <_fstat>
d004d296:	1c43      	adds	r3, r0, #1
d004d298:	d102      	bne.n	d004d2a0 <_fstat_r+0x1c>
d004d29a:	682b      	ldr	r3, [r5, #0]
d004d29c:	b103      	cbz	r3, d004d2a0 <_fstat_r+0x1c>
d004d29e:	6023      	str	r3, [r4, #0]
d004d2a0:	bd38      	pop	{r3, r4, r5, pc}
d004d2a2:	bf00      	nop
d004d2a4:	d0053c54 	.word	0xd0053c54

d004d2a8 <_lseek_r>:
d004d2a8:	b538      	push	{r3, r4, r5, lr}
d004d2aa:	4d07      	ldr	r5, [pc, #28]	; (d004d2c8 <_lseek_r+0x20>)
d004d2ac:	4604      	mov	r4, r0
d004d2ae:	4608      	mov	r0, r1
d004d2b0:	4611      	mov	r1, r2
d004d2b2:	2200      	movs	r2, #0
d004d2b4:	602a      	str	r2, [r5, #0]
d004d2b6:	461a      	mov	r2, r3
d004d2b8:	f7fd ff1e 	bl	d004b0f8 <_lseek>
d004d2bc:	1c43      	adds	r3, r0, #1
d004d2be:	d102      	bne.n	d004d2c6 <_lseek_r+0x1e>
d004d2c0:	682b      	ldr	r3, [r5, #0]
d004d2c2:	b103      	cbz	r3, d004d2c6 <_lseek_r+0x1e>
d004d2c4:	6023      	str	r3, [r4, #0]
d004d2c6:	bd38      	pop	{r3, r4, r5, pc}
d004d2c8:	d0053c54 	.word	0xd0053c54

d004d2cc <_read_r>:
d004d2cc:	b538      	push	{r3, r4, r5, lr}
d004d2ce:	4d07      	ldr	r5, [pc, #28]	; (d004d2ec <_read_r+0x20>)
d004d2d0:	4604      	mov	r4, r0
d004d2d2:	4608      	mov	r0, r1
d004d2d4:	4611      	mov	r1, r2
d004d2d6:	2200      	movs	r2, #0
d004d2d8:	602a      	str	r2, [r5, #0]
d004d2da:	461a      	mov	r2, r3
d004d2dc:	f7fd fef8 	bl	d004b0d0 <_read>
d004d2e0:	1c43      	adds	r3, r0, #1
d004d2e2:	d102      	bne.n	d004d2ea <_read_r+0x1e>
d004d2e4:	682b      	ldr	r3, [r5, #0]
d004d2e6:	b103      	cbz	r3, d004d2ea <_read_r+0x1e>
d004d2e8:	6023      	str	r3, [r4, #0]
d004d2ea:	bd38      	pop	{r3, r4, r5, pc}
d004d2ec:	d0053c54 	.word	0xd0053c54
d004d2f0:	00000000 	.word	0x00000000
d004d2f4:	0000ffff 	.word	0x0000ffff
d004d2f8:	00000000 	.word	0x00000000
d004d2fc:	00000001 	.word	0x00000001
d004d300:	ffff0000 	.word	0xffff0000
d004d304:	00000000 	.word	0x00000000
d004d308:	00010000 	.word	0x00010000
d004d30c:	00000000 	.word	0x00000000
d004d310:	0000ffff 	.word	0x0000ffff
d004d314:	00000000 	.word	0x00000000
d004d318:	00000001 	.word	0x00000001
d004d31c:	00000000 	.word	0x00000000
d004d320:	00010000 	.word	0x00010000
d004d324:	00000000 	.word	0x00000000
d004d328:	00000001 	.word	0x00000001
d004d32c:	00000000 	.word	0x00000000
d004d330:	00000001 	.word	0x00000001
	...
d004d33c:	00000001 	.word	0x00000001
d004d340:	00000000 	.word	0x00000000
d004d344:	00000001 	.word	0x00000001
d004d348:	00010000 	.word	0x00010000
d004d34c:	00000000 	.word	0x00000000
d004d350:	00000001 	.word	0x00000001
d004d354:	00000000 	.word	0x00000000
d004d358:	00010000 	.word	0x00010000
	...
d004d364:	00000001 	.word	0x00000001
d004d368:	00000001 	.word	0x00000001
d004d36c:	00000000 	.word	0x00000000
d004d370:	00010000 	.word	0x00010000
	...
d004d37c:	00000001 	.word	0x00000001

d004d380 <face_base_idx>:
d004d380:	04030201 00000605                       ........

d004d388 <message>:
d004d388:	20202020 20202020 20202020 2a2a2a2a                 ****
d004d398:	4c454820 2a204f4c 0a2a2a2a 2d2d2d0a      HELLO ****..---
d004d3a8:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004d3b8:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004d3c8:	0a2d2d2d 6c65480a 202c6f6c 6f682049     ---..Hello, I ho
d004d3d8:	74206570 20736968 6f6d6564 726f7720     pe this demo wor
d004d3e8:	0a21736b 6968540a 73692073 65687420     ks!..This is the
d004d3f8:	646c6f20 63643320 74656275 20747365      old 3dcubetest 
d004d408:	61656469 6f700a0a 64657472 206f7420     idea..ported to 
d004d418:	20656874 6577656e 69532072 786f6264     the newer Sidbox
d004d428:	49504120 490a0a2e 72642074 20737761      API...It draws 
d004d438:	6f6d2061 69687072 7320676e 69646275     a morphing subdi
d004d448:	65646976 75632064 0a2c6562 6220610a     vided cube,..a b
d004d458:	73206769 6c6f7263 676e696c 65686320     ig scrolling che
d004d468:	72656b63 72616f62 616c2064 2c726579     ckerboard layer,
d004d478:	6e610a0a 68742064 76207369 20797265     ..and this very 
d004d488:	6f706d69 6e617472 63732074 6c6c6f72     important scroll
d004d498:	65742079 0a2e7478 2d2d2d0a 2d2d2d2d     y text...-------
d004d4a8:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004d4b8:	2d2d2d2d 2d2d2d2d 2d2d2d2d 0a2d2d2d     ---------------.
d004d4c8:	6568540a 646c6f20 6d656420 6f70206f     .The old demo po
d004d4d8:	2064656b 20495041 75727473 72757463     ked API structur
d004d4e8:	0a0a7365 65726964 796c7463 6854202e     es..directly. Th
d004d4f8:	6f207369 7520656e 20736573 20656874     is one uses the 
d004d508:	77203276 70706172 0a737265 646e610a     v2 wrappers..and
d004d518:	65656b20 74207370 74206568 20796e69      keeps the tiny 
d004d528:	61697274 656c676e 73617220 69726574     triangle rasteri
d004d538:	0a72657a 636f6c0a 74206c61 6874206f     zer..local to th
d004d548:	70612065 74656c70 2d0a0a2e 2d2d2d2d     e applet...-----
d004d558:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004d568:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004d578:	480a0a2d 20646c6f 45524946 4f202b20     -..Hold FIRE + O
d004d588:	6f74204b 69786520 0a0a2e74 20202020     K to exit...    
d004d598:	20202020 20202020 65202020 6520646e                end e
d004d5a8:	0a21646e 000a0a0a 00000000 00000000     nd!.............
	...

d004d5c0 <tune>:
d004d5c0:	696c6365 00657370 00000000 00000000     eclipse.........
d004d5d0:	00000000 69482023 74694c2d 00000065     ....# Hi-Lite...
	...
d004d5e8:	80020000 00004000 63280100 79622029     .....@....(c) by
d004d5f8:	2d696820 6574696c 32392720 002e2e2e      hi-lite '92....
d004d608:	00000000 01000000 5c2f5c2f 5c2f5c2f     ......../\/\/\/\
d004d618:	5c2f5c2f 5c2f5c2f 5c2f5c2f 0001002f     /\/\/\/\/\/\/...
d004d628:	00004000 2e2e0100 6e612e2e 6568746f     .@........anothe
d004d638:	68632072 75747069 0021656e 4000d802     r chiptune!....@
d004d648:	01000000 73696874 656e6f20 73617720     ....this one was
d004d658:	64616d20 6e6f2065 96000000 09004000      made on.....@..
d004d668:	68748d00 61642065 65772079 746f6720     ..the day we got
d004d678:	72756f20 00000000 40001800 0e000a00      our.......@....
d004d688:	74736165 206e7265 61636176 6e6f6974     eastern vacation
d004d698:	6e692073 17000000 09004000 63730e00     s in.....@....sc
d004d6a8:	6c6f6f68 616d2e20 20656279 74616874     hool .maybe that
d004d6b8:	00007327 40001600 0e000800 20796877     's.....@....why 
d004d6c8:	73696874 756f7320 2073646e 74616874     this sounds that
d004d6d8:	15000000 07004000 61680e00 20797070     .....@....happy 
d004d6e8:	3f2e2e2e 3f213f21 3f213f21 00213f21     ...?!?!?!?!?!?!.
d004d6f8:	40001400 0e000600 206d7573 6c6c6568     ...@....sum hell
d004d708:	7420736f 2d3a206f 0000003e 12000000     os to :->.......
d004d718:	04004000 2e6a0e00 2e652e6f 6565722c     .@....j.o.e.,ree
d004d728:	2c6b6f62 61657264 0072656d 40000e00     bok,dreamer....@
d004d738:	0e000000 2c6c686a 68746f67 612c6369     ....jhl,gothic,a
d004d748:	2f636564 2e702173 1800002e 0a004000     dec/s!p......@..
d004d758:	72620e00 6d2c736f 65747361 79632f72     ..bros,master/cy
d004d768:	2e786174 002e2e2e 40001700 0e000900     tax........@....
d004d778:	69646f7a 762f6361 2e2e2e66 2e2e2e2e     zodiac/vf.......
d004d788:	2e2e2e2e 1600002e 08004000 61640e00     .........@....da
d004d798:	276c7972 6172206e 742f6576 2e2e6c73     ryl'n rave/tsl..
d004d7a8:	002e2e2e 40001500 0e000700 20646e61     .......@....and 
d004d7b8:	206c6c61 20656874 6568746f 00002072     all the other ..
d004d7c8:	14000000 06004000 696e0e00 67206563     .....@....nice g
d004d7d8:	20737975 6e6b2069 2e20776f 002e2e2e     uys i know .....
d004d7e8:	40001200 0e000400 6f63666f 65737275     ...@....ofcourse
d004d7f8:	206f6e20 65657267 74207a74 0e00006f      no greetz to...
d004d808:	00004000 68740e00 2065736f 206f6877     .@....those who 
d004d818:	6e657261 6e207427 00656369 00000000     aren't nice.....
d004d828:	01000000 622e2e2e 6c206461 206b6375     .......bad luck 
d004d838:	213f213f 2e2e2e3f 0000002e 00000000     ?!?!?...........
d004d848:	20730100 20672069 2065206e 2d3a2064     ..s i g n e d :-
d004d858:	0000003e 00000000 00000000 01000000     >...............
d004d868:	69682d3d 74696c2d 21732f65 72742f70     =-hi-lite/s!p/tr
d004d878:	3d2d6973 0000002d 00000000 32300100     si-=-.........02
d004d888:	2d34302d 20203239 20202020 34312020     -04-92        14
d004d898:	0032343a 00000000 01000000 00000000     :42.............
	...
d004d8c0:	00000100 00000000 00000000 00000000     ................
	...
d004d8dc:	01000000 00000000 00000000 00000000     ................
	...
d004d8fc:	00000100 00000000 00000000 00000000     ................
	...
d004d918:	01000000 00000000 00000000 00000000     ................
	...
d004d938:	00000100 00000000 00000000 00000000     ................
	...
d004d954:	01000000 00000000 00000000 00000000     ................
	...
d004d974:	7f0f0100 03020100 07060504 0a090908     ................
d004d984:	000c0b0b 00000000 00000000 00000000     ................
	...
d004d9f8:	2e4b2e4d 0f3aa602 0f5a5301 040f0000     M.K...:..SZ.....
d004da08:	00000000 0f0a0000 0f0a0000 00000000     ................
d004da18:	00000000 2a1caa00 0f5a5301 00000000     .......*.SZ.....
d004da28:	00000000 0f0a0000 0f0a0000 00000000     ................
d004da38:	00000000 0e4a5301 0e5aaa00 00000000     .....SJ...Z.....
d004da48:	00000000 0e0a0000 0e0a0000 00000000     ................
d004da58:	00000000 201caa00 0e5a5301 00000000     ....... .SZ.....
d004da68:	00000000 0e0a0000 0e0a0000 00000000     ................
d004da78:	00000000 3a1caa00 0c5a5301 00000000     .......:.SZ.....
d004da88:	00000000 0c0a0000 0c0a0000 00000000     ................
d004da98:	00000000 0c3aa602 0c5aaa00 00000000     ......:...Z.....
d004daa8:	00000000 0c0a0000 0c0a0000 00000000     ................
d004dab8:	00000000 0b4a5301 0b5a5301 00000000     .....SJ..SZ.....
d004dac8:	00000000 0b0a0000 0b0a0000 00000000     ................
d004dad8:	00000000 201caa00 0b5abe00 00000000     ....... ..Z.....
d004dae8:	00000000 0b0a0000 0b0a0000 00000000     ................
d004daf8:	00000000 0a3aa602 0a5aaa00 00000000     ......:...Z.....
d004db08:	00000000 0a0a0000 0a0a0000 00000000     ................
d004db18:	00000000 2a1caa00 0a5a5301 00000000     .......*.SZ.....
d004db28:	00000000 0a0a0000 0a0a0000 00000000     ................
d004db38:	00000000 094a5301 095a5301 00000000     .....SJ..SZ.....
d004db48:	00000000 090a0000 090a0000 00000000     ................
d004db58:	00000000 201caa00 095aaa00 00000000     ....... ..Z.....
d004db68:	00000000 090a0000 090a0000 00000000     ................
d004db78:	00000000 081aaa00 085a5301 00000000     .........SZ.....
d004db88:	00000000 080a0000 080a0000 00000000     ................
d004db98:	00000000 083aa602 085a5301 00000000     ......:..SZ.....
d004dba8:	00000000 080a0000 080a0000 00000000     ................
d004dbb8:	00000000 074a5301 075aaa00 00000000     .....SJ...Z.....
d004dbc8:	00000000 070a0000 070a0000 00000000     ................
d004dbd8:	00000000 2a1caa00 075abe00 00000000     .......*..Z.....
d004dbe8:	00000000 070a0000 070a0000 00000000     ................
d004dbf8:	00000000 063aa602 065a5301 00000000     ......:..SZ.....
d004dc08:	00000000 060a0000 060a0000 00000000     ................
d004dc18:	00000000 201caa00 065a5301 00000000     ....... .SZ.....
d004dc28:	00000000 060a0000 060a0000 00000000     ................
d004dc38:	00000000 054a5301 055aaa00 00000000     .....SJ...Z.....
d004dc48:	00000000 050a0000 050a0000 00000000     ................
d004dc58:	00000000 201caa00 055a5301 00000000     ....... .SZ.....
d004dc68:	00000000 050a0000 050a0000 00000000     ................
d004dc78:	00000000 041aaa00 045a5301 00000000     .........SZ.....
d004dc88:	00000000 040a0000 040a0000 00000000     ................
d004dc98:	00000000 043aa602 045aaa00 00000000     ......:...Z.....
d004dca8:	00000000 040a0000 040a0000 00000000     ................
d004dcb8:	00000000 034a5301 035a5301 00000000     .....SJ..SZ.....
d004dcc8:	00000000 030a0000 030a0000 00000000     ................
d004dcd8:	00000000 2a1caa00 035abe00 00000000     .......*..Z.....
d004dce8:	00000000 030a0000 030a0000 00000000     ................
d004dcf8:	00000000 023aa602 025aaa00 00000000     ......:...Z.....
d004dd08:	00000000 020a0000 020a0000 00000000     ................
d004dd18:	00000000 201caa00 025a5301 00000000     ....... .SZ.....
d004dd28:	00000000 020a0000 020a0000 00000000     ................
d004dd38:	00000000 014a5301 015a5301 00000000     .....SJ..SZ.....
d004dd48:	00000000 010a0000 010a0000 00000000     ................
d004dd58:	00000000 201caa00 015aaa00 00000000     ....... ..Z.....
d004dd68:	00000000 010a0000 010a0000 00000000     ................
d004dd78:	00000000 0010aa00 00505301 00000000     .........SP.....
	...
d004dd9c:	0030a602 00505301 00000000 00000000     ..0..SP.........
	...
d004ddbc:	2e4c5301 0050aa00 00000000 00000000     .SL...P.........
	...
d004dddc:	00405301 0050be00 00000000 00000000     .S@...P.........
	...
d004ddfc:	043fa602 00505301 4760ac01 00000000     ..?..SP...`G....
	...
d004de14:	47700000 00000000 2a1caa00 00505301     ..pG.......*.SP.
d004de24:	47800000 00000000 00000000 00000000     ...G............
d004de34:	47900000 00000000 00405301 0050aa00     ...G.....S@...P.
d004de44:	47a00000 00000000 00000000 00000000     ...G............
d004de54:	47b00000 00000000 201caa00 00505301     ...G....... .SP.
d004de64:	47c00000 00000000 00000000 00000000     ...G............
d004de74:	47b00000 00000000 3a1caa00 00505301     ...G.......:.SP.
d004de84:	47a00000 00000000 00000000 00000000     ...G............
d004de94:	47900000 00000000 0030a602 0050aa00     ...G......0...P.
d004dea4:	47800000 00000000 00000000 00000000     ...G............
d004deb4:	47700000 00000000 00405301 00505301     ..pG.....S@..SP.
d004dec4:	47600000 00000000 00000000 00000000     ..`G............
d004ded4:	47700000 00000000 201caa00 0050be00     ..pG....... ..P.
d004dee4:	47800000 00000000 00000000 00000000     ...G............
d004def4:	47900000 00000000 0030a602 0050aa00     ...G......0...P.
d004df04:	47a00000 00000000 00000000 00000000     ...G............
d004df14:	47b00000 00000000 2a1caa00 00505301     ...G.......*.SP.
d004df24:	47c00000 00000000 00000000 00000000     ...G............
d004df34:	47b00000 00000000 00405301 00505301     ...G.....S@..SP.
d004df44:	47a00000 00000000 00000000 00000000     ...G............
d004df54:	47900000 00000000 201caa00 0050aa00     ...G....... ..P.
d004df64:	47800000 00000000 00000000 00000000     ...G............
d004df74:	47700000 00000000 0010aa00 00505301     ..pG.........SP.
d004df84:	47600000 00000000 00000000 00000000     ..`G............
d004df94:	47700000 00000000 0030a602 00505301     ..pG......0..SP.
d004dfa4:	47800000 00000000 00000000 00000000     ...G............
d004dfb4:	47900000 00000000 00405301 0050aa00     ...G.....S@...P.
d004dfc4:	47a00000 00000000 00000000 00000000     ...G............
d004dfd4:	47b00000 00000000 2a1caa00 0050be00     ...G.......*..P.
d004dfe4:	47c00000 00000000 00000000 00000000     ...G............
d004dff4:	47b00000 00000000 0030a602 00505301     ...G......0..SP.
d004e004:	59a00000 00000000 00000000 00000000     ...Y............
d004e014:	59900000 00000000 201caa00 00505301     ...Y....... .SP.
d004e024:	59800000 00000000 00000000 00000000     ...Y............
d004e034:	59700000 00000000 00405301 0050aa00     ..pY.....S@...P.
d004e044:	59600000 00000000 00000000 00000000     ..`Y............
d004e054:	59700000 00000000 201caa00 00505301     ..pY....... .SP.
d004e064:	59800000 00000000 00000000 00000000     ...Y............
d004e074:	59900000 00000000 0010aa00 00505301     ...Y.........SP.
d004e084:	59a00000 00000000 00000000 00000000     ...Y............
d004e094:	59b00000 00000000 0030a602 0050aa00     ...Y......0...P.
d004e0a4:	59c00000 00000000 00000000 00000000     ...Y............
d004e0b4:	59b00000 00000000 00405301 00505301     ...Y.....S@..SP.
d004e0c4:	59a00000 00000000 00000000 00000000     ...Y............
d004e0d4:	59900000 00000000 2a1caa00 0050be00     ...Y.......*..P.
d004e0e4:	59800000 00000000 00000000 00000000     ...Y............
d004e0f4:	59700000 00000000 0030a602 0050aa00     ..pY......0...P.
d004e104:	59600000 00000000 00000000 00000000     ..`Y............
d004e114:	59700000 00000000 201caa00 00505301     ..pY....... .SP.
d004e124:	59800000 00000000 00000000 00000000     ...Y............
d004e134:	59900000 00000000 00405301 00505301     ...Y.....S@..SP.
d004e144:	59a00000 00000000 00000000 00000000     ...Y............
d004e154:	59b00000 00000000 201caa00 0050aa00     ...Y....... ..P.
d004e164:	59c00000 00000000 00000000 00000000     ...Y............
d004e174:	59b00000 00000000 0010aa00 00505301     ...Y.........SP.
d004e184:	59a00000 00000000 00000000 00000000     ...Y............
d004e194:	59900000 00000000 0030a602 00505301     ...Y......0..SP.
d004e1a4:	59800000 00000000 00000000 00000000     ...Y............
d004e1b4:	59700000 00000000 2e4c5301 0050aa00     ..pY.....SL...P.
d004e1c4:	59600000 00000000 00000000 00000000     ..`Y............
d004e1d4:	59700000 00000000 00405301 0050be00     ..pY.....S@...P.
d004e1e4:	59800000 00000000 00000000 00000000     ...Y............
d004e1f4:	59900000 00000000 043fa602 00500d01     ...Y......?...P.
d004e204:	37605301 00000000 00000000 00000000     .S`7............
d004e214:	37700000 00000000 2a1caa00 00500d01     ..p7.......*..P.
d004e224:	37800000 00000000 00000000 00000000     ...7............
d004e234:	37900000 00000000 00405301 00508700     ...7.....S@...P.
d004e244:	37a00000 00000000 00000000 00000000     ...7............
d004e254:	37b00000 00000000 201caa00 00500d01     ...7....... ..P.
d004e264:	37c00000 00000000 00000000 00000000     ...7............
d004e274:	37b00000 00000000 3a1caa00 00500d01     ...7.......:..P.
d004e284:	37a00000 00000000 00000000 00000000     ...7............
d004e294:	37900000 00000000 0030a602 00508700     ...7......0...P.
d004e2a4:	37800000 00000000 00000000 00000000     ...7............
d004e2b4:	37700000 00000000 00405301 00500d01     ..p7.....S@...P.
d004e2c4:	37600000 00000000 00000000 00000000     ..`7............
d004e2d4:	37700000 00000000 201caa00 00509700     ..p7....... ..P.
d004e2e4:	37800000 00000000 00000000 00000000     ...7............
d004e2f4:	37900000 00000000 0030a602 00508700     ...7......0...P.
d004e304:	37a00000 00000000 00000000 00000000     ...7............
d004e314:	37b00000 00000000 2a1caa00 00500d01     ...7.......*..P.
d004e324:	37c00000 00000000 00000000 00000000     ...7............
d004e334:	37b00000 00000000 00405301 00500d01     ...7.....S@...P.
d004e344:	37a00000 00000000 00000000 00000000     ...7............
d004e354:	37900000 00000000 201caa00 00508700     ...7....... ..P.
d004e364:	37800000 00000000 00000000 00000000     ...7............
d004e374:	37700000 00000000 0010aa00 00500d01     ..p7..........P.
d004e384:	37600000 00000000 00000000 00000000     ..`7............
d004e394:	37700000 00000000 0030a602 00500d01     ..p7......0...P.
d004e3a4:	37800000 00000000 00000000 00000000     ...7............
d004e3b4:	37900000 00000000 00405301 00508700     ...7.....S@...P.
d004e3c4:	37a00000 00000000 00000000 00000000     ...7............
d004e3d4:	37b00000 00000000 2a1caa00 00509700     ...7.......*..P.
d004e3e4:	37c00000 00000000 00000000 00000000     ...7............
d004e3f4:	37b00000 00000000 0030a602 00505301     ...7......0..SP.
d004e404:	47a0ac01 00000000 00000000 00000000     ...G............
d004e414:	47900000 00000000 201caa00 00505301     ...G....... .SP.
d004e424:	47800000 00000000 00000000 00000000     ...G............
d004e434:	47700000 00000000 00405301 0050aa00     ..pG.....S@...P.
d004e444:	47600000 00000000 00000000 00000000     ..`G............
d004e454:	47700000 00000000 201caa00 00505301     ..pG....... .SP.
d004e464:	47800000 00000000 00000000 00000000     ...G............
d004e474:	47900000 00000000 0010aa00 00505301     ...G.........SP.
d004e484:	47a00000 00000000 00000000 00000000     ...G............
d004e494:	47b00000 00000000 0030a602 0050aa00     ...G......0...P.
d004e4a4:	47c00000 00000000 00000000 00000000     ...G............
d004e4b4:	47b00000 00000000 00405301 00505301     ...G.....S@..SP.
d004e4c4:	47a00000 00000000 00000000 00000000     ...G............
d004e4d4:	47900000 00000000 2a1caa00 0050be00     ...G.......*..P.
d004e4e4:	47800000 00000000 00000000 00000000     ...G............
d004e4f4:	47700000 00000000 0030a602 0050aa00     ..pG......0...P.
d004e504:	47600000 00000000 00000000 00000000     ..`G............
d004e514:	47700000 00000000 201caa00 00505301     ..pG....... .SP.
d004e524:	47800000 00000000 00000000 00000000     ...G............
d004e534:	47900000 00000000 00405301 00505301     ...G.....S@..SP.
d004e544:	47a00000 00000000 00000000 00000000     ...G............
d004e554:	47b00000 00000000 201caa00 0050aa00     ...G....... ..P.
d004e564:	47c00000 00000000 00000000 00000000     ...G............
d004e574:	47b00000 00000000 0010aa00 00505301     ...G.........SP.
d004e584:	47a00000 00000000 00000000 00000000     ...G............
d004e594:	47900000 00000000 0030a602 00505301     ...G......0..SP.
d004e5a4:	47800000 00000000 00000000 00000000     ...G............
d004e5b4:	47700000 00000000 2e4c5301 0050aa00     ..pG.....SL...P.
d004e5c4:	47600000 00000000 00000000 00000000     ..`G............
d004e5d4:	47700000 00000000 00405301 0050be00     ..pG.....S@...P.
d004e5e4:	47800000 00000000 00000000 00000000     ...G............
d004e5f4:	47900000 00000000 043fa602 00505301     ...G......?..SP.
d004e604:	4760ac01 306c1d01 00000000 00000000     ..`G..l0........
d004e614:	47700000 400c0000 2a1caa00 00505301     ..pG...@...*.SP.
d004e624:	47800000 a2040000 00000000 00000000     ...G............
d004e634:	47900000 a2040000 00405301 0050aa00     ...G.....S@...P.
d004e644:	47a00000 a2040000 00000000 00000000     ...G............
d004e654:	47b00000 a2040000 201caa00 00505301     ...G....... .SP.
d004e664:	47c00000 a2040000 00000000 00000000     ...G............
d004e674:	47b00000 a2040000 3a1caa00 00505301     ...G.......:.SP.
d004e684:	47a00000 ff734001 00000000 00000000     ...G.@s.........
d004e694:	47900000 00000000 0030a602 0050aa00     ...G......0...P.
d004e6a4:	47800000 ff835301 00000000 00000000     ...G.S..........
d004e6b4:	47700000 00000000 00405301 00505301     ..pG.....S@..SP.
d004e6c4:	47600000 200c0000 00000000 00000000     ..`G... ........
d004e6d4:	47700000 106c5301 201caa00 0050be00     ..pG.Sl.... ..P.
d004e6e4:	47800000 ff934001 00000000 00000000     ...G.@..........
d004e6f4:	47900000 00000000 0030a602 0050aa00     ...G......0...P.
d004e704:	47a00000 a2040000 00000000 00000000     ...G............
d004e714:	47b00000 a2040000 2a1caa00 00505301     ...G.......*.SP.
d004e724:	47c00000 ffa34001 00000000 00000000     ...G.@..........
d004e734:	47b00000 00000000 00405301 00505301     ...G.....S@..SP.
d004e744:	47a00000 ffb35301 00000000 00000000     ...G.S..........
d004e754:	47900000 00000000 201caa00 0050aa00     ...G....... ..P.
d004e764:	47800000 200c0000 00000000 00000000     ...G... ........
d004e774:	47700000 00000000 0010aa00 00505301     ..pG.........SP.
d004e784:	47600000 ffc3ac01 00000000 00000000     ..`G............
d004e794:	47700000 ff030000 0030a602 00505301     ..pG......0..SP.
d004e7a4:	47800000 04060000 00000000 00000000     ...G............
d004e7b4:	47900000 04060000 00405301 0050aa00     ...G.....S@...P.
d004e7c4:	47a00000 25bc3a02 00000000 00000000     ...G.:.%........
d004e7d4:	47b00000 2a0c0000 2a1caa00 0050be00     ...G...*...*..P.
d004e7e4:	47c00000 350c0000 00000000 00000000     ...G...5........
d004e7f4:	47b00000 400c0000 0030a602 00505301     ...G...@..0..SP.
d004e804:	59a00000 ffa31d01 00000000 00000000     ...Y............
d004e814:	59900000 00000000 201caa00 00505301     ...Y....... .SP.
d004e824:	59800000 a2040000 00000000 00000000     ...Y............
d004e834:	59700000 a2040000 00405301 0050aa00     ..pY.....S@...P.
d004e844:	59600000 a2040000 00000000 00000000     ..`Y............
d004e854:	59700000 a2040000 201caa00 00505301     ..pY....... .SP.
d004e864:	59800000 02060000 00000000 00000000     ...Y............
d004e874:	59900000 02060000 0010aa00 00505301     ...Y.........SP.
d004e884:	59a00000 3f934001 00000000 00000000     ...Y.@.?........
d004e894:	59b00000 00000000 0030a602 0050aa00     ...Y......0...P.
d004e8a4:	59c00000 8f835301 00000000 00000000     ...Y.S..........
d004e8b4:	59b00000 00000000 00405301 00505301     ...Y.....S@..SP.
d004e8c4:	59a00000 200c0000 00000000 00000000     ...Y... ........
d004e8d4:	59900000 00000000 2a1caa00 0050be00     ...Y.......*..P.
d004e8e4:	59800000 00704001 00000000 00000000     ...Y.@p.........
d004e8f4:	59700000 00000000 0030a602 0050aa00     ..pY......0...P.
d004e904:	59600000 a2040000 00000000 00000000     ..`Y............
d004e914:	59700000 a2040000 201caa00 00505301     ..pY....... .SP.
d004e924:	59800000 ff634001 00000000 00000000     ...Y.@c.........
d004e934:	59900000 00000000 00405301 00505301     ...Y.....S@..SP.
d004e944:	59a00000 4f735301 00000000 00000000     ...Y.SsO........
d004e954:	59b00000 00000000 201caa00 0050aa00     ...Y....... ..P.
d004e964:	59c00000 a2040000 00000000 00000000     ...Y............
d004e974:	59b00000 a2040000 0010aa00 00505301     ...Y.........SP.
d004e984:	59a00000 0f83fe00 00000000 00000000     ...Y............
d004e994:	59900000 0f030000 0030a602 00505301     ...Y......0..SP.
d004e9a4:	59800000 a2040000 00000000 00000000     ...Y............
d004e9b4:	59700000 a2040000 2e4c5301 0050aa00     ..pY.....SL...P.
d004e9c4:	59600000 ff731d01 00000000 00000000     ..`Y..s.........
d004e9d4:	59700000 00000000 00405301 0050be00     ..pY.....S@...P.
d004e9e4:	59800000 02060000 00000000 00000000     ...Y............
d004e9f4:	59900000 02060000 043fa602 00500d01     ...Y......?...P.
d004ea04:	4760ac01 3f63e200 00000000 00000000     ..`G..c?........
d004ea14:	47700000 3f030000 2a1caa00 00500d01     ..pG...?...*..P.
d004ea24:	47800000 a2040000 00000000 00000000     ...G............
d004ea34:	47900000 a2040000 00405301 00508700     ...G.....S@...P.
d004ea44:	47a00000 a2040000 00000000 00000000     ...G............
d004ea54:	47b00000 a2040000 201caa00 00500d01     ...G....... ..P.
d004ea64:	47c00000 a2040000 00000000 00000000     ...G............
d004ea74:	47b00000 a2040000 3a1caa00 00500d01     ...G.......:..P.
d004ea84:	47a00000 ff731d01 00000000 00000000     ...G..s.........
d004ea94:	47900000 00000000 0030a602 00508700     ...G......0...P.
d004eaa4:	47800000 ff835301 00000000 00000000     ...G.S..........
d004eab4:	47700000 00000000 00405301 00500d01     ..pG.....S@...P.
d004eac4:	47600000 200c0000 00000000 00000000     ..`G... ........
d004ead4:	47700000 109c5301 201caa00 00509700     ..pG.S..... ..P.
d004eae4:	47800000 ff93e200 00000000 00000000     ...G............
d004eaf4:	47900000 00000000 0030a602 00508700     ...G......0...P.
d004eb04:	47a00000 a2040000 00000000 00000000     ...G............
d004eb14:	47b00000 a2040000 2a1caa00 00500d01     ...G.......*..P.
d004eb24:	47c00000 ffa31d01 00000000 00000000     ...G............
d004eb34:	47b00000 00000000 00405301 00500d01     ...G.....S@...P.
d004eb44:	47a00000 ffb35301 00000000 00000000     ...G.S..........
d004eb54:	47900000 00000000 201caa00 00508700     ...G....... ..P.
d004eb64:	47800000 200c0000 00000000 00000000     ...G... ........
d004eb74:	47700000 00000000 0010aa00 00500d01     ..pG..........P.
d004eb84:	47600000 ffc3d600 00000000 00000000     ..`G............
d004eb94:	47700000 ff030000 0030a602 00500d01     ..pG......0...P.
d004eba4:	47800000 04060000 00000000 00000000     ...G............
d004ebb4:	47900000 04060000 00405301 00508700     ...G.....S@...P.
d004ebc4:	47a00000 25bce200 00000000 00000000     ...G...%........
d004ebd4:	47b00000 2a0c0000 2a1caa00 00509700     ...G...*...*..P.
d004ebe4:	47c00000 350c0000 00000000 00000000     ...G...5........
d004ebf4:	47b00000 400c0000 0030a602 0050fe00     ...G...@..0...P.
d004ec04:	47a04001 ffa3d600 00000000 00000000     .@.G............
d004ec14:	47900000 00000000 201caa00 0050fe00     ...G....... ..P.
d004ec24:	47800000 a2040000 00000000 00000000     ...G............
d004ec34:	47700000 a2040000 00405301 00507f00     ..pG.....S@...P.
d004ec44:	47600000 a2040000 00000000 00000000     ..`G............
d004ec54:	47700000 a2040000 201caa00 0050fe00     ..pG....... ..P.
d004ec64:	47800000 02060000 00000000 00000000     ...G............
d004ec74:	47900000 02060000 0010aa00 0050fe00     ...G..........P.
d004ec84:	47a00000 3f93e200 00000000 00000000     ...G...?........
d004ec94:	47b00000 00000000 0030a602 00507f00     ...G......0...P.
d004eca4:	47c00000 8f831d01 00000000 00000000     ...G............
d004ecb4:	47b00000 00000000 00405301 0050fe00     ...G.....S@...P.
d004ecc4:	47a00000 200c0000 00000000 00000000     ...G... ........
d004ecd4:	47900000 00000000 2a1caa00 00508f00     ...G.......*..P.
d004ece4:	47800000 0070d600 00000000 00000000     ...G..p.........
d004ecf4:	47700000 00000000 0030a602 0050aa00     ..pG......0...P.
d004ed04:	4760ac01 a2040000 00000000 00000000     ..`G............
d004ed14:	47700000 a2040000 201caa00 00505301     ..pG....... .SP.
d004ed24:	47800000 ff631d01 00000000 00000000     ...G..c.........
d004ed34:	47900000 00000000 00405301 00505301     ...G.....S@..SP.
d004ed44:	47a00000 4f734001 00000000 00000000     ...G.@sO........
d004ed54:	47b00000 00000000 201caa00 0050aa00     ...G....... ..P.
d004ed64:	47c00000 a2040000 00000000 00000000     ...G............
d004ed74:	47b00000 a2040000 0010aa00 00505301     ...G.........SP.
d004ed84:	47a00000 0f835301 00000000 00000000     ...G.S..........
d004ed94:	47900000 0f030000 0030a602 00505301     ...G......0..SP.
d004eda4:	47800000 a2040000 00000000 00000000     ...G............
d004edb4:	47700000 a2040000 2e4c5301 0050aa00     ..pG.....SL...P.
d004edc4:	47600000 ff934001 00000000 00000000     ..`G.@..........
d004edd4:	47700000 00000000 00405301 0050be00     ..pG.....S@...P.
d004ede4:	47800000 02060000 00000000 00000000     ...G............
d004edf4:	47900000 02060000 043fa602 00500d01     ...G......?...P.
d004ee04:	37605301 3f63e200 00000000 00000000     .S`7..c?........
d004ee14:	37700000 3f030000 2a1caa00 00500d01     ..p7...?...*..P.
d004ee24:	37800000 a2040000 00000000 00000000     ...7............
d004ee34:	37900000 a2040000 00405301 00508700     ...7.....S@...P.
d004ee44:	37a00000 a2040000 00000000 00000000     ...7............
d004ee54:	37b00000 a2040000 201caa00 00500d01     ...7....... ..P.
d004ee64:	37c00000 a2040000 00000000 00000000     ...7............
d004ee74:	37b00000 a2040000 3a1caa00 00500d01     ...7.......:..P.
d004ee84:	37a00000 ff731d01 00000000 00000000     ...7..s.........
d004ee94:	37900000 00000000 0030a602 00508700     ...7......0...P.
d004eea4:	37800000 ff835301 00000000 00000000     ...7.S..........
d004eeb4:	37700000 00000000 00405301 00500d01     ..p7.....S@...P.
d004eec4:	37600000 200c0000 00000000 00000000     ..`7... ........
d004eed4:	37700000 109c5301 201caa00 00509700     ..p7.S..... ..P.
d004eee4:	37800000 ff93e200 00000000 00000000     ...7............
d004eef4:	37900000 00000000 0030a602 00508700     ...7......0...P.
d004ef04:	37a00000 a2040000 00000000 00000000     ...7............
d004ef14:	37b00000 a2040000 2a1caa00 00500d01     ...7.......*..P.
d004ef24:	37c00000 ffa31d01 00000000 00000000     ...7............
d004ef34:	37b00000 00000000 00405301 00500d01     ...7.....S@...P.
d004ef44:	37a00000 ffb35301 00000000 00000000     ...7.S..........
d004ef54:	37900000 00000000 201caa00 00508700     ...7....... ..P.
d004ef64:	37800000 200c0000 00000000 00000000     ...7... ........
d004ef74:	37700000 00000000 0010aa00 00500d01     ..p7..........P.
d004ef84:	37600000 ffc3d600 00000000 00000000     ..`7............
d004ef94:	37700000 ff030000 0030a602 00500d01     ..p7......0...P.
d004efa4:	37800000 04060000 00000000 00000000     ...7............
d004efb4:	37900000 04060000 00405301 00508700     ...7.....S@...P.
d004efc4:	37a00000 25bce200 00000000 00000000     ...7...%........
d004efd4:	37b00000 2a0c0000 2a1caa00 00509700     ...7...*...*..P.
d004efe4:	37c00000 350c0000 00000000 00000000     ...7...5........
d004eff4:	37b00000 400c0000 0030a602 00505301     ...7...@..0..SP.
d004f004:	47a0ac01 ffa3ac01 00000000 00000000     ...G............
d004f014:	47900000 00000000 201caa00 00505301     ...G....... .SP.
d004f024:	47800000 a2040000 00000000 00000000     ...G............
d004f034:	47700000 a2040000 00405301 0050aa00     ..pG.....S@...P.
d004f044:	47600000 a2040000 00000000 00000000     ..`G............
d004f054:	47700000 a2040000 201caa00 00505301     ..pG....... .SP.
d004f064:	47800000 a2040000 00000000 00000000     ...G............
d004f074:	47900000 a2040000 0010aa00 00505301     ...G.........SP.
d004f084:	47a00000 a2040000 00000000 00000000     ...G............
d004f094:	47b00000 a2040000 0030a602 0050aa00     ...G......0...P.
d004f0a4:	47c00000 a2040000 00000000 00000000     ...G............
d004f0b4:	47b00000 a2040000 00405301 00505301     ...G.....S@..SP.
d004f0c4:	47a00000 a2040000 00000000 00000000     ...G............
d004f0d4:	47900000 a2040000 2a1caa00 0050be00     ...G.......*..P.
d004f0e4:	47800000 a2040000 00000000 00000000     ...G............
d004f0f4:	47700000 a2040000 0030a602 0050aa00     ..pG......0...P.
d004f104:	47600000 01060000 00000000 00000000     ..`G............
d004f114:	47700000 01060000 201caa00 00505301     ..pG....... .SP.
d004f124:	47800000 01060000 00000000 00000000     ...G............
d004f134:	47900000 01060000 00405301 00505301     ...G.....S@..SP.
d004f144:	47a00000 01060000 00000000 00000000     ...G............
d004f154:	47b00000 01060000 201caa00 0050aa00     ...G....... ..P.
d004f164:	47c00000 01060000 00000000 00000000     ...G............
d004f174:	47b00000 01060000 0010aa00 00505301     ...G.........SP.
d004f184:	47a00000 01060000 00000000 00000000     ...G............
d004f194:	47900000 01060000 00405301 00505301     ...G.....S@..SP.
d004f1a4:	47800000 01060000 00000000 00000000     ...G............
d004f1b4:	47700000 01060000 2a4c5301 0050aa00     ..pG.....SL*..P.
d004f1c4:	47600000 01060000 1a4c5301 00000000     ..`G.....SL.....
d004f1d4:	47700000 01060000 3a4c5301 0050be00     ..pG.....SL:..P.
d004f1e4:	47800000 01060000 00000000 00000000     ...G............
d004f1f4:	47900000 01060000 00000000 00505301     ...G.........SP.
d004f204:	4760ac01 306c1d01 30dc1d01 00000000     ..`G..l0...0....
d004f214:	47700000 400c0000 400c0000 00505301     ..pG...@...@.SP.
d004f224:	47800000 a2040000 a2040000 00000000     ...G............
d004f234:	47900000 a2040000 a2040000 0050aa00     ...G..........P.
d004f244:	47a00000 a2040000 a2040000 00000000     ...G............
d004f254:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d004f264:	47c00000 a2040000 a2040000 00000000     ...G............
d004f274:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d004f284:	47a00000 ff734001 ffe34001 00000000     ...G.@s..@......
d004f294:	47900000 00000000 00000000 0050aa00     ...G..........P.
d004f2a4:	47800000 ff835301 fff35301 00000000     ...G.S...S......
d004f2b4:	47700000 00000000 00000000 00505301     ..pG.........SP.
d004f2c4:	47600000 200c0000 200c0000 00000000     ..`G... ... ....
d004f2d4:	47700000 108c5301 10fc5301 0050be00     ..pG.S...S....P.
d004f2e4:	47800000 ff934001 ff034011 00000000     ...G.@...@......
d004f2f4:	47900000 00000000 00000000 0050aa00     ...G..........P.
d004f304:	47a00000 a2040000 a2040000 00000000     ...G............
d004f314:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d004f324:	47c00000 ffa34001 ff134011 00000000     ...G.@...@......
d004f334:	47b00000 00000000 00000000 00505301     ...G.........SP.
d004f344:	47a00000 ffb35301 ff235311 00000000     ...G.S...S#.....
d004f354:	47900000 00000000 00000000 0050aa00     ...G..........P.
d004f364:	47800000 200c0000 200c0000 00000000     ...G... ... ....
d004f374:	47700000 00000000 00000000 00505301     ..pG.........SP.
d004f384:	47600000 ffc3ac01 ff33ac11 00000000     ..`G......3.....
d004f394:	47700000 ff030000 ff030000 00505301     ..pG.........SP.
d004f3a4:	47800000 04060000 04060000 00000000     ...G............
d004f3b4:	47900000 04060000 04060000 0050aa00     ...G..........P.
d004f3c4:	47a00000 25bc3a02 252c3a12 00000000     ...G.:.%.:,%....
d004f3d4:	47b00000 2a0c0000 2a0c0000 0050be00     ...G...*...*..P.
d004f3e4:	47c00000 350c0000 350c0000 00000000     ...G...5...5....
d004f3f4:	47b00000 400c0000 400c0000 00505301     ...G...@...@.SP.
d004f404:	59a00000 ffa31d01 ff131d11 00000000     ...Y............
d004f414:	59900000 00000000 00000000 00505301     ...Y.........SP.
d004f424:	59800000 a2040000 a2040000 00000000     ...Y............
d004f434:	59700000 a2040000 a2040000 0050aa00     ..pY..........P.
d004f444:	59600000 a2040000 a2040000 00000000     ..`Y............
d004f454:	59700000 a2040000 a2040000 00505301     ..pY.........SP.
d004f464:	59800000 02060000 02060000 00000000     ...Y............
d004f474:	59900000 02060000 02060000 00505301     ...Y.........SP.
d004f484:	59a00000 3f934001 3f034011 00000000     ...Y.@.?.@.?....
d004f494:	59b00000 00000000 00000000 0050aa00     ...Y..........P.
d004f4a4:	59c00000 8f835301 8ff35301 00000000     ...Y.S...S......
d004f4b4:	59b00000 00000000 00000000 00505301     ...Y.........SP.
d004f4c4:	59a00000 200c0000 200c0000 00000000     ...Y... ... ....
d004f4d4:	59900000 00000000 00000000 0050be00     ...Y..........P.
d004f4e4:	59800000 ff734001 00e04001 00000000     ...Y.@s..@......
d004f4f4:	59700000 00000000 00000000 0050aa00     ..pY..........P.
d004f504:	59600000 a2040000 a2040000 00000000     ..`Y............
d004f514:	59700000 a2040000 a2040000 00505301     ..pY.........SP.
d004f524:	59800000 ff634001 ffd34001 00000000     ...Y.@c..@......
d004f534:	59900000 00000000 00000000 00505301     ...Y.........SP.
d004f544:	59a00000 4f735301 4fe35301 00000000     ...Y.SsO.S.O....
d004f554:	59b00000 00000000 00000000 0050aa00     ...Y..........P.
d004f564:	59c00000 a2040000 a2040000 00000000     ...Y............
d004f574:	59b00000 a2040000 a2040000 00505301     ...Y.........SP.
d004f584:	59a00000 0f83fe00 0ff3fe00 00000000     ...Y............
d004f594:	59900000 0f030000 0f030000 00505301     ...Y.........SP.
d004f5a4:	59800000 a2040000 a2040000 00000000     ...Y............
d004f5b4:	59700000 a2040000 a2040000 0050aa00     ..pY..........P.
d004f5c4:	59600000 ff731d01 ffe31d01 00000000     ..`Y..s.........
d004f5d4:	59700000 00000000 00000000 0050be00     ..pY..........P.
d004f5e4:	59800000 02060000 02060000 00000000     ...Y............
d004f5f4:	59900000 02060000 00000000 00500d01     ...Y..........P.
d004f604:	4760ac01 3f63e200 3fd3e200 00000000     ..`G..c?...?....
d004f614:	47700000 3f030000 3f030000 00500d01     ..pG...?...?..P.
d004f624:	47800000 a2040000 a2040000 00000000     ...G............
d004f634:	47900000 a2040000 a2040000 00508700     ...G..........P.
d004f644:	47a00000 a2040000 a2040000 00000000     ...G............
d004f654:	47b00000 a2040000 a2040000 00500d01     ...G..........P.
d004f664:	47c00000 a2040000 a2040000 00000000     ...G............
d004f674:	47b00000 a2040000 a2040000 00500d01     ...G..........P.
d004f684:	47a00000 ff731d01 ffe31d01 00000000     ...G..s.........
d004f694:	47900000 00000000 00000000 00508700     ...G..........P.
d004f6a4:	47800000 ff835301 fff35301 00000000     ...G.S...S......
d004f6b4:	47700000 00000000 00000000 00500d01     ..pG..........P.
d004f6c4:	47600000 200c0000 200c0000 00000000     ..`G... ... ....
d004f6d4:	47700000 109c5301 100c5311 00509700     ..pG.S...S....P.
d004f6e4:	47800000 ff93e200 ff03e210 00000000     ...G............
d004f6f4:	47900000 00000000 00000000 00508700     ...G..........P.
d004f704:	47a00000 a2040000 a2040000 00000000     ...G............
d004f714:	47b00000 a2040000 a2040000 00500d01     ...G..........P.
d004f724:	47c00000 ffa31d01 ff131d11 00000000     ...G............
d004f734:	47b00000 00000000 00000000 00500d01     ...G..........P.
d004f744:	47a00000 ffb35301 ff235311 00000000     ...G.S...S#.....
d004f754:	47900000 00000000 00000000 00508700     ...G..........P.
d004f764:	47800000 200c0000 200c0000 00000000     ...G... ... ....
d004f774:	47700000 00000000 00000000 00500d01     ..pG..........P.
d004f784:	47600000 ffc3d600 ff33d610 00000000     ..`G......3.....
d004f794:	47700000 ff030000 ff030000 00500d01     ..pG..........P.
d004f7a4:	47800000 04060000 04060000 00000000     ...G............
d004f7b4:	47900000 04060000 04060000 00508700     ...G..........P.
d004f7c4:	47a00000 25bce200 252ce210 00000000     ...G...%..,%....
d004f7d4:	47b00000 2a0c0000 2a0c0000 00509700     ...G...*...*..P.
d004f7e4:	47c00000 350c0000 350c0000 00000000     ...G...5...5....
d004f7f4:	47b00000 400c0000 400c0000 0050fe00     ...G...@...@..P.
d004f804:	47a04001 ffa3d600 ff13d610 00000000     .@.G............
d004f814:	47900000 00000000 00000000 0050fe00     ...G..........P.
d004f824:	47800000 a2040000 a2040000 00000000     ...G............
d004f834:	47700000 a2040000 a2040000 00507f00     ..pG..........P.
d004f844:	47600000 a2040000 a2040000 00000000     ..`G............
d004f854:	47700000 a2040000 a2040000 0050fe00     ..pG..........P.
d004f864:	47800000 02060000 02060000 00000000     ...G............
d004f874:	47900000 02060000 02060000 0050fe00     ...G..........P.
d004f884:	47a00000 3f93e200 3f03e210 00000000     ...G...?...?....
d004f894:	47b00000 00000000 00000000 00507f00     ...G..........P.
d004f8a4:	47c00000 8f831d01 8ff31d01 00000000     ...G............
d004f8b4:	47b00000 00000000 00000000 0050fe00     ...G..........P.
d004f8c4:	47a00000 200c0000 200c0000 00000000     ...G... ... ....
d004f8d4:	47900000 00000000 00000000 00508f00     ...G..........P.
d004f8e4:	47800000 0070d600 00e0d600 00000000     ...G..p.........
d004f8f4:	47700000 00000000 00000000 0050aa00     ..pG..........P.
d004f904:	4760ac01 a2040000 a2040000 00000000     ..`G............
d004f914:	47700000 a2040000 a2040000 00505301     ..pG.........SP.
d004f924:	47800000 ff631d01 ffd31d01 00000000     ...G..c.........
d004f934:	47900000 00000000 00000000 00505301     ...G.........SP.
d004f944:	47a00000 4f734001 4fe34001 00000000     ...G.@sO.@.O....
d004f954:	47b00000 00000000 00000000 0050aa00     ...G..........P.
d004f964:	47c00000 a2040000 a2040000 00000000     ...G............
d004f974:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d004f984:	47a00000 0f835301 0ff35301 00000000     ...G.S...S......
d004f994:	47900000 0f030000 0f030000 00505301     ...G.........SP.
d004f9a4:	47800000 a2040000 a2040000 00000000     ...G............
d004f9b4:	47700000 a2040000 a2040000 0050aa00     ..pG..........P.
d004f9c4:	47600000 ff934001 ff134011 00000000     ..`G.@...@......
d004f9d4:	47700000 00000000 00000000 0050be00     ..pG..........P.
d004f9e4:	47800000 02060000 02060000 00000000     ...G............
d004f9f4:	47900000 02060000 00000000 00500d01     ...G..........P.
d004fa04:	37605301 3f63e200 3fd3e200 00000000     .S`7..c?...?....
d004fa14:	37700000 3f030000 3f030000 00500d01     ..p7...?...?..P.
d004fa24:	37800000 a2040000 a2040000 00000000     ...7............
d004fa34:	37900000 a2040000 a2040000 00508700     ...7..........P.
d004fa44:	37a00000 a2040000 a2040000 00000000     ...7............
d004fa54:	37b00000 a2040000 a2040000 00500d01     ...7..........P.
d004fa64:	37c00000 a2040000 a2040000 00000000     ...7............
d004fa74:	37b00000 a2040000 a2040000 00500d01     ...7..........P.
d004fa84:	37a00000 ff731d01 ffe31d01 00000000     ...7..s.........
d004fa94:	37900000 00000000 00000000 00508700     ...7..........P.
d004faa4:	37800000 ff835301 fff35301 00000000     ...7.S...S......
d004fab4:	37700000 00000000 00000000 00500d01     ..p7..........P.
d004fac4:	37600000 200c0000 200c0000 00000000     ..`7... ... ....
d004fad4:	37700000 109c5301 100c5311 00509700     ..p7.S...S....P.
d004fae4:	37800000 ff93e200 ff03e210 00000000     ...7............
d004faf4:	37900000 00000000 00000000 00508700     ...7..........P.
d004fb04:	37a00000 a2040000 a2040000 00000000     ...7............
d004fb14:	37b00000 a2040000 a2040000 00500d01     ...7..........P.
d004fb24:	37c00000 ffa31d01 ff131d11 00000000     ...7............
d004fb34:	37b00000 00000000 00000000 00500d01     ...7..........P.
d004fb44:	37a00000 ffb35301 ff235311 00000000     ...7.S...S#.....
d004fb54:	37900000 00000000 00000000 00508700     ...7..........P.
d004fb64:	37800000 200c0000 200c0000 00000000     ...7... ... ....
d004fb74:	37700000 00000000 00000000 00500d01     ..p7..........P.
d004fb84:	37600000 ffc3d600 ff33d610 00000000     ..`7......3.....
d004fb94:	37700000 ff030000 ff030000 00500d01     ..p7..........P.
d004fba4:	37800000 04060000 04060000 00000000     ...7............
d004fbb4:	37900000 04060000 04060000 00508700     ...7..........P.
d004fbc4:	37a00000 25bce200 252ce210 00000000     ...7...%..,%....
d004fbd4:	37b00000 2a0c0000 2a0c0000 00509700     ...7...*...*..P.
d004fbe4:	37c00000 350c0000 350c0000 00000000     ...7...5...5....
d004fbf4:	37b00000 400c0000 400c0000 00505301     ...7...@...@.SP.
d004fc04:	47a0ac01 ffa3ac01 ff13ac11 00000000     ...G............
d004fc14:	47900000 00000000 00000000 00505301     ...G.........SP.
d004fc24:	47800000 a2040000 a2040000 00000000     ...G............
d004fc34:	47700000 a2040000 a2040000 0050aa00     ..pG..........P.
d004fc44:	47600000 a2040000 a2040000 00000000     ..`G............
d004fc54:	47700000 a2040000 a2040000 00505301     ..pG.........SP.
d004fc64:	47800000 a2040000 a2040000 00000000     ...G............
d004fc74:	47900000 a2040000 a2040000 00505301     ...G.........SP.
d004fc84:	47a00000 a2040000 a2040000 00000000     ...G............
d004fc94:	47b00000 a2040000 a2040000 0050aa00     ...G..........P.
d004fca4:	47c00000 a2040000 a2040000 00000000     ...G............
d004fcb4:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d004fcc4:	47a00000 a2040000 a2040000 00000000     ...G............
d004fcd4:	47900000 a2040000 a2040000 0050be00     ...G..........P.
d004fce4:	47800000 a2040000 a2040000 00000000     ...G............
d004fcf4:	47700000 a2040000 a2040000 0050aa00     ..pG..........P.
d004fd04:	47600000 01060000 01060000 00000000     ..`G............
d004fd14:	47700000 01060000 01060000 00505301     ..pG.........SP.
d004fd24:	47800000 01060000 01060000 00000000     ...G............
d004fd34:	47900000 01060000 01060000 00505301     ...G.........SP.
d004fd44:	47a00000 01060000 01060000 00000000     ...G............
d004fd54:	47b00000 01060000 01060000 0050aa00     ...G..........P.
d004fd64:	47c00000 01060000 01060000 00000000     ...G............
d004fd74:	47b00000 01060000 01060000 00505301     ...G.........SP.
d004fd84:	47a00000 01060000 01060000 00000000     ...G............
d004fd94:	47900000 01060000 3a3ca602 00505301     ...G......<:.SP.
d004fda4:	47800000 01060000 00000000 00000000     ...G............
d004fdb4:	47700000 01060000 2a4c5301 0050aa00     ..pG.....SL*..P.
d004fdc4:	47600000 01060000 1a4c5301 00000000     ..`G.....SL.....
d004fdd4:	47700000 01060000 3a4c5301 0050be00     ..pG.....SL:..P.
d004fde4:	47800000 01060000 00000000 00000000     ...G............
d004fdf4:	47900000 01060000 043fa602 00505301     ...G......?..SP.
d004fe04:	4760ac01 00601d01 00000000 00000000     ..`G..`.........
d004fe14:	47700000 108c5301 2a1caa00 00505301     ..pG.S.....*.SP.
d004fe24:	47800000 00704001 00000000 00000000     ...G.@p.........
d004fe34:	47900000 106c1d01 00405301 0050aa00     ...G..l..S@...P.
d004fe44:	47a00000 00805301 00000000 00000000     ...G.S..........
d004fe54:	47b00000 107c4001 201caa00 00505301     ...G.@|.... .SP.
d004fe64:	47c00000 00901d01 00000000 00000000     ...G............
d004fe74:	47b00000 108c5301 3a1caa00 00505301     ...G.S.....:.SP.
d004fe84:	47a00000 00a04001 00000000 00000000     ...G.@..........
d004fe94:	47900000 109c1d01 0030a602 0050aa00     ...G......0...P.
d004fea4:	47800000 00b05301 00000000 00000000     ...G.S..........
d004feb4:	47700000 10ac4001 00405301 00505301     ..pG.@...S@..SP.
d004fec4:	47600000 00c01d01 00000000 00000000     ..`G............
d004fed4:	47700000 10bc5301 201caa00 0050be00     ..pG.S..... ..P.
d004fee4:	47800000 00b04001 00000000 00000000     ...G.@..........
d004fef4:	47900000 10cc1d01 0030a602 0050aa00     ...G......0...P.
d004ff04:	47a00000 00a01d01 00000000 00000000     ...G............
d004ff14:	47b00000 10bc4001 2a1caa00 00505301     ...G.@.....*.SP.
d004ff24:	47c00000 00905301 00000000 00000000     ...G.S..........
d004ff34:	47b00000 10ac1d01 00405301 00505301     ...G.....S@..SP.
d004ff44:	47a00000 0080ac01 00000000 00000000     ...G............
d004ff54:	47900000 109c5301 201caa00 0050aa00     ...G.S..... ..P.
d004ff64:	47800000 00701d01 00000000 00000000     ...G..p.........
d004ff74:	47700000 108cac01 0010aa00 00505301     ..pG.........SP.
d004ff84:	47600000 00605301 00000000 00000000     ..`G.S`.........
d004ff94:	47700000 107c1d01 0030a602 00505301     ..pG..|...0..SP.
d004ffa4:	47800000 0070ac01 00000000 00000000     ...G..p.........
d004ffb4:	47900000 106c5301 00405301 0050aa00     ...G.Sl..S@...P.
d004ffc4:	47a00000 00801d01 00000000 00000000     ...G............
d004ffd4:	47b00000 107cac01 2a1caa00 0050be00     ...G..|....*..P.
d004ffe4:	47c00000 00905301 00000000 00000000     ...G.S..........
d004fff4:	47b00000 108c1d01 0030a602 00505301     ...G......0..SP.
d0050004:	59a00000 00a0fe00 00000000 00000000     ...Y............
d0050014:	59900000 109c5301 201caa00 00505301     ...Y.S..... .SP.
d0050024:	59800000 00b04001 00000000 00000000     ...Y.@..........
d0050034:	59700000 10acfe00 00405301 0050aa00     ..pY.....S@...P.
d0050044:	59600000 00c0ac01 00000000 00000000     ..`Y............
d0050054:	59700000 10bc4001 201caa00 00505301     ..pY.@..... .SP.
d0050064:	59800000 00b0fe00 00000000 00000000     ...Y............
d0050074:	59900000 10ccac01 0010aa00 00505301     ...Y.........SP.
d0050084:	59a00000 00a04001 00000000 00000000     ...Y.@..........
d0050094:	59b00000 10bcfe00 0030a602 0050aa00     ...Y......0...P.
d00500a4:	59c00000 0090ac01 00000000 00000000     ...Y............
d00500b4:	59b00000 10ac4001 00405301 00505301     ...Y.@...S@..SP.
d00500c4:	59a00000 0080fe00 00000000 00000000     ...Y............
d00500d4:	59900000 109cac01 2a1caa00 0050be00     ...Y.......*..P.
d00500e4:	59800000 00704001 00000000 00000000     ...Y.@p.........
d00500f4:	59700000 108cfe00 0030a602 0050aa00     ..pY......0...P.
d0050104:	59600000 00601d01 00000000 00000000     ..`Y..`.........
d0050114:	59700000 107c4001 201caa00 00505301     ..pY.@|.... .SP.
d0050124:	59800000 00705301 00000000 00000000     ...Y.Sp.........
d0050134:	59900000 108c1d01 00405301 00505301     ...Y.....S@..SP.
d0050144:	59a00000 0080ac01 00000000 00000000     ...Y............
d0050154:	59b00000 109c5301 201caa00 0050aa00     ...Y.S..... ..P.
d0050164:	59c00000 00901d01 00000000 00000000     ...Y............
d0050174:	59b00000 10acac01 0010aa00 00505301     ...Y.........SP.
d0050184:	59a00000 00a04001 00000000 00000000     ...Y.@..........
d0050194:	59900000 109c1d01 0030a602 00505301     ...Y......0..SP.
d00501a4:	59800000 00905301 00000000 00000000     ...Y.S..........
d00501b4:	59700000 108c4001 2e4c5301 0050aa00     ..pY.@...SL...P.
d00501c4:	59600000 00807d01 00000000 00000000     ..`Y.}..........
d00501d4:	59700000 107c5301 00405301 0050be00     ..pY.S|..S@...P.
d00501e4:	59800000 00705301 00000000 00000000     ...Y.Sp.........
d00501f4:	59900000 107c7d01 043fa602 00500d01     ...Y.}|...?...P.
d0050204:	37605301 0060e200 00000000 00000000     .S`7..`.........
d0050214:	37700000 108c5301 2a1caa00 00500d01     ..p7.S.....*..P.
d0050224:	37800000 00701d01 00000000 00000000     ...7..p.........
d0050234:	37900000 106ce200 00405301 00508700     ...7..l..S@...P.
d0050244:	37a00000 00805301 00000000 00000000     ...7.S..........
d0050254:	37b00000 107c1d01 201caa00 00500d01     ...7..|.... ..P.
d0050264:	37c00000 00901d01 00000000 00000000     ...7............
d0050274:	37b00000 108c5301 3a1caa00 00500d01     ...7.S.....:..P.
d0050284:	37a00000 00a0e200 00000000 00000000     ...7............
d0050294:	37900000 109c1d01 0030a602 00508700     ...7......0...P.
d00502a4:	37800000 00b01d01 00000000 00000000     ...7............
d00502b4:	37700000 10ace200 00405301 00500d01     ..p7.....S@...P.
d00502c4:	37600000 00c0d600 00000000 00000000     ..`7............
d00502d4:	37700000 10bc1d01 201caa00 00509700     ..p7....... ..P.
d00502e4:	37800000 00b01d01 00000000 00000000     ...7............
d00502f4:	37900000 10ccd600 0030a602 00508700     ...7......0...P.
d0050304:	37a00000 00a0e200 00000000 00000000     ...7............
d0050314:	37b00000 10bc1d01 2a1caa00 00500d01     ...7.......*..P.
d0050324:	37c00000 00901d01 00000000 00000000     ...7............
d0050334:	37b00000 10ace200 00405301 00500d01     ...7.....S@...P.
d0050344:	37a00000 00805301 00000000 00000000     ...7.S..........
d0050354:	37900000 109c1d01 201caa00 00508700     ...7....... ..P.
d0050364:	37800000 0070e200 00000000 00000000     ...7..p.........
d0050374:	37700000 108c5301 0010aa00 00500d01     ..p7.S........P.
d0050384:	37600000 00601d01 00000000 00000000     ..`7..`.........
d0050394:	37700000 107ce200 0030a602 00500d01     ..p7..|...0...P.
d00503a4:	37800000 00705301 00000000 00000000     ...7.Sp.........
d00503b4:	37900000 106c1d01 00405301 00508700     ...7..l..S@...P.
d00503c4:	37a00000 0080e200 00000000 00000000     ...7............
d00503d4:	37b00000 107c5301 2a1caa00 00509700     ...7.S|....*..P.
d00503e4:	37c00000 00905301 00000000 00000000     ...7.S..........
d00503f4:	37b00000 108ce200 0030a602 00505301     ...7......0..SP.
d0050404:	47a0ac01 00a01d01 00000000 00000000     ...G............
d0050414:	47900000 109c5301 201caa00 00505301     ...G.S..... .SP.
d0050424:	47800000 00b05301 00000000 00000000     ...G.S..........
d0050434:	47700000 10ac1d01 00405301 0050aa00     ..pG.....S@...P.
d0050444:	47600000 00c0ac01 00000000 00000000     ..`G............
d0050454:	47700000 10bc5301 201caa00 00505301     ..pG.S..... .SP.
d0050464:	47800000 00b01d01 00000000 00000000     ...G............
d0050474:	47900000 10ccac01 0010aa00 00505301     ...G.........SP.
d0050484:	47a00000 00a05301 00000000 00000000     ...G.S..........
d0050494:	47b00000 10bc1d01 0030a602 0050aa00     ...G......0...P.
d00504a4:	47c00000 0090ac01 00000000 00000000     ...G............
d00504b4:	47b00000 10ac5301 00405301 00505301     ...G.S...S@..SP.
d00504c4:	47a00000 00801d01 00000000 00000000     ...G............
d00504d4:	47900000 109cac01 2a1caa00 0050be00     ...G.......*..P.
d00504e4:	47800000 00705301 00000000 00000000     ...G.Sp.........
d00504f4:	47700000 108c1d01 0030a602 0050aa00     ..pG......0...P.
d0050504:	47600000 00601d01 00000000 00000000     ..`G..`.........
d0050514:	47700000 107c5301 201caa00 00505301     ..pG.S|.... .SP.
d0050524:	47800000 00705301 00000000 00000000     ...G.Sp.........
d0050534:	47900000 106c1d01 00405301 00505301     ...G..l..S@..SP.
d0050544:	47a00000 0080ac01 00000000 00000000     ...G............
d0050554:	47b00000 107c5301 201caa00 0050aa00     ...G.S|.... ..P.
d0050564:	47c00000 00905301 00000000 00000000     ...G.S..........
d0050574:	47b00000 108cac01 0010aa00 00505301     ...G.........SP.
d0050584:	47a00000 00a01d01 00000000 00000000     ...G............
d0050594:	47900000 109c5301 0030a602 00505301     ...G.S....0..SP.
d00505a4:	47800000 00b04001 00000000 00000000     ...G.@..........
d00505b4:	47700000 10ac1d01 2e4c5301 0050aa00     ..pG.....SL...P.
d00505c4:	47600000 00c05301 00000000 00000000     ..`G.S..........
d00505d4:	47700000 10bc4001 00405301 0050be00     ..pG.@...S@...P.
d00505e4:	47800000 00b04001 00000000 00000000     ...G.@..........
d00505f4:	47900000 10cc5301 043fa602 00500d01     ...G.S....?...P.
d0050604:	4760ac01 0060e200 00000000 00000000     ..`G..`.........
d0050614:	47700000 107c5301 2a1caa00 00500d01     ..pG.S|....*..P.
d0050624:	47800000 00701d01 00000000 00000000     ...G..p.........
d0050634:	47900000 106ce200 00405301 00508700     ...G..l..S@...P.
d0050644:	47a00000 00805301 00000000 00000000     ...G.S..........
d0050654:	47b00000 107c1d01 201caa00 00500d01     ...G..|.... ..P.
d0050664:	47c00000 0090e200 00000000 00000000     ...G............
d0050674:	47b00000 108c5301 3a1caa00 00500d01     ...G.S.....:..P.
d0050684:	47a00000 00a01d01 00000000 00000000     ...G............
d0050694:	47900000 109ce200 0030a602 00508700     ...G......0...P.
d00506a4:	47800000 00b05301 00000000 00000000     ...G.S..........
d00506b4:	47700000 10ac1d01 00405301 00500d01     ..pG.....S@...P.
d00506c4:	47600000 00c0e200 00000000 00000000     ..`G............
d00506d4:	47700000 10bc5301 201caa00 00509700     ..pG.S..... ..P.
d00506e4:	47800000 00b01d01 00000000 00000000     ...G............
d00506f4:	47900000 10cce200 0030a602 00508700     ...G......0...P.
d0050704:	47a00000 00a0e200 00000000 00000000     ...G............
d0050714:	47b00000 10bc1d01 2a1caa00 00500d01     ...G.......*..P.
d0050724:	47c00000 00901d01 00000000 00000000     ...G............
d0050734:	47b00000 10ace200 00405301 00500d01     ...G.....S@...P.
d0050744:	47a00000 00805301 00000000 00000000     ...G.S..........
d0050754:	47900000 109c1d01 201caa00 00508700     ...G....... ..P.
d0050764:	47800000 0070e200 00000000 00000000     ...G..p.........
d0050774:	47700000 108c5301 0010aa00 00500d01     ..pG.S........P.
d0050784:	47600000 00601d01 00000000 00000000     ..`G..`.........
d0050794:	47700000 107ce200 0030a602 00500d01     ..pG..|...0...P.
d00507a4:	47800000 00705301 00000000 00000000     ...G.Sp.........
d00507b4:	47900000 106c1d01 00405301 00508700     ...G..l..S@...P.
d00507c4:	47a00000 0080e200 00000000 00000000     ...G............
d00507d4:	47b00000 107c5301 2a1caa00 00509700     ...G.S|....*..P.
d00507e4:	47c00000 00901d01 00000000 00000000     ...G............
d00507f4:	47b00000 108ce200 0030a602 0050fe00     ...G......0...P.
d0050804:	47a04001 00a0d600 00000000 00000000     .@.G............
d0050814:	47900000 109c1d01 201caa00 0050fe00     ...G....... ..P.
d0050824:	47800000 00b0fe00 00000000 00000000     ...G............
d0050834:	47700000 10acd600 00405301 00507f00     ..pG.....S@...P.
d0050844:	47600000 00c04001 00000000 00000000     ..`G.@..........
d0050854:	47700000 10bcfe00 201caa00 0050fe00     ..pG....... ..P.
d0050864:	47800000 00b0d600 00000000 00000000     ...G............
d0050874:	47900000 10cc4001 0010aa00 0050fe00     ...G.@........P.
d0050884:	47a00000 00a0fe00 00000000 00000000     ...G............
d0050894:	47b00000 10bcd600 0030a602 00507f00     ...G......0...P.
d00508a4:	47c00000 00904001 00000000 00000000     ...G.@..........
d00508b4:	47b00000 10acfe00 00405301 0050fe00     ...G.....S@...P.
d00508c4:	47a00000 0080d600 00000000 00000000     ...G............
d00508d4:	47900000 109c4001 2a1caa00 00508f00     ...G.@.....*..P.
d00508e4:	47800000 0070fe00 00000000 00000000     ...G..p.........
d00508f4:	47700000 108cd600 0030a602 0050aa00     ..pG......0...P.
d0050904:	4760ac01 00601d01 00000000 00000000     ..`G..`.........
d0050914:	47700000 107cfe00 201caa00 00505301     ..pG..|.... .SP.
d0050924:	47800000 00705301 00000000 00000000     ...G.Sp.........
d0050934:	47900000 106c1d01 00405301 00505301     ...G..l..S@..SP.
d0050944:	47a00000 0080ac01 00000000 00000000     ...G............
d0050954:	47b00000 107c5301 201caa00 0050aa00     ...G.S|.... ..P.
d0050964:	47c00000 00901d01 00000000 00000000     ...G............
d0050974:	47b00000 108cac01 0010aa00 00505301     ...G.........SP.
d0050984:	47a00000 00a05301 00000000 00000000     ...G.S..........
d0050994:	47900000 109c1d01 0030a602 00505301     ...G......0..SP.
d00509a4:	47800000 0090ac01 00000000 00000000     ...G............
d00509b4:	47700000 10ac5301 2e4c5301 0050aa00     ..pG.S...SL...P.
d00509c4:	47600000 00801d01 00000000 00000000     ..`G............
d00509d4:	47700000 109cac01 00405301 0050be00     ..pG.....S@...P.
d00509e4:	47800000 00705301 00000000 00000000     ...G.Sp.........
d00509f4:	47900000 108c1d01 043fa602 00500d01     ...G......?...P.
d0050a04:	37605301 0060e200 00000000 00000000     .S`7..`.........
d0050a14:	37700000 108c5301 2a1caa00 00500d01     ..p7.S.....*..P.
d0050a24:	37800000 00701d01 00000000 00000000     ...7..p.........
d0050a34:	37900000 106ce200 00405301 00508700     ...7..l..S@...P.
d0050a44:	37a00000 00805301 00000000 00000000     ...7.S..........
d0050a54:	37b00000 107c1d01 201caa00 00500d01     ...7..|.... ..P.
d0050a64:	37c00000 0090e200 00000000 00000000     ...7............
d0050a74:	37b00000 108c5301 3a1caa00 00500d01     ...7.S.....:..P.
d0050a84:	37a00000 00a01d01 00000000 00000000     ...7............
d0050a94:	37900000 109ce200 0030a602 00508700     ...7......0...P.
d0050aa4:	37800000 00b05301 00000000 00000000     ...7.S..........
d0050ab4:	37700000 10ac1d01 00405301 00500d01     ..p7.....S@...P.
d0050ac4:	37600000 00c0e200 00000000 00000000     ..`7............
d0050ad4:	37700000 10bc5301 201caa00 00509700     ..p7.S..... ..P.
d0050ae4:	37800000 00b01d01 00000000 00000000     ...7............
d0050af4:	37900000 10cce200 0030a602 00508700     ...7......0...P.
d0050b04:	37a00000 00a0e200 00000000 00000000     ...7............
d0050b14:	37b00000 10bc1d01 2a1caa00 00500d01     ...7.......*..P.
d0050b24:	37c00000 00901d01 00000000 00000000     ...7............
d0050b34:	37b00000 10ace200 00405301 00500d01     ...7.....S@...P.
d0050b44:	37a00000 00805301 00000000 00000000     ...7.S..........
d0050b54:	37900000 109c1d01 201caa00 00508700     ...7....... ..P.
d0050b64:	37800000 0070e200 00000000 00000000     ...7..p.........
d0050b74:	37700000 108c5301 0010aa00 00500d01     ..p7.S........P.
d0050b84:	37600000 00601d01 00000000 00000000     ..`7..`.........
d0050b94:	37700000 107ce200 0030a602 00500d01     ..p7..|...0...P.
d0050ba4:	37800000 00705301 00000000 00000000     ...7.Sp.........
d0050bb4:	37900000 106c1d01 00405301 00508700     ...7..l..S@...P.
d0050bc4:	37a00000 0080e200 00000000 00000000     ...7............
d0050bd4:	37b00000 107c5301 2a1caa00 00509700     ...7.S|....*..P.
d0050be4:	37c00000 00701d01 00000000 00000000     ...7..p.........
d0050bf4:	37b00000 108ce200 0030a602 00505301     ...7......0..SP.
d0050c04:	47a0ac01 00601d01 00000000 00000000     ...G..`.........
d0050c14:	47900000 107c1d01 201caa00 00505301     ...G..|.... .SP.
d0050c24:	47800000 00705301 00000000 00000000     ...G.Sp.........
d0050c34:	47700000 106c1d01 00405301 0050aa00     ..pG..l..S@...P.
d0050c44:	47600000 0080ac01 00000000 00000000     ..`G............
d0050c54:	47700000 107c5301 201caa00 00505301     ..pG.S|.... .SP.
d0050c64:	47800000 00901d01 00000000 00000000     ...G............
d0050c74:	47900000 108cac01 0010aa00 00505301     ...G.........SP.
d0050c84:	47a00000 00a05301 00000000 00000000     ...G.S..........
d0050c94:	47b00000 109c1d01 0030a602 0050aa00     ...G......0...P.
d0050ca4:	47c00000 00b0ac01 00000000 00000000     ...G............
d0050cb4:	47b00000 10ac5301 00405301 00505301     ...G.S...S@..SP.
d0050cc4:	47a00000 00c01d01 00000000 00000000     ...G............
d0050cd4:	47900000 10bcac01 2a1caa00 0050be00     ...G.......*..P.
d0050ce4:	47800000 00b05301 00000000 00000000     ...G.S..........
d0050cf4:	47700000 10cc1d01 0030a602 0050aa00     ..pG......0...P.
d0050d04:	47600000 00a0ac01 00000000 00000000     ..`G............
d0050d14:	47700000 10bc5301 201caa00 00505301     ..pG.S..... .SP.
d0050d24:	47800000 209cac01 00000000 00000000     ...G... ........
d0050d34:	47900000 0aac5301 00405301 00505301     ...G.S...S@..SP.
d0050d44:	47a00000 108cac01 00000000 00000000     ...G............
d0050d54:	47b00000 049c5301 201caa00 0050aa00     ...G.S..... ..P.
d0050d64:	47c00000 057cac01 00000000 00000000     ...G..|.........
d0050d74:	47b00000 038c5301 0010aa00 00505301     ...G.S.......SP.
d0050d84:	47a00000 026cac01 00000000 00000000     ...G..l.........
d0050d94:	47900000 017c5301 0030a602 00505301     ...G.S|...0..SP.
d0050da4:	47800000 017cac01 00000000 00000000     ...G..|.........
d0050db4:	47700000 016c5301 2a4c5301 0050aa00     ..pG.Sl..SL*..P.
d0050dc4:	47600000 3a8cac01 1a4c5301 00000000     ..`G...:.SL.....
d0050dd4:	47700000 2a0c0000 3a4c5301 0050be00     ..pG...*.SL:..P.
d0050de4:	47800000 ff935301 00000000 030b0000     ...G.S..........
d0050df4:	47900000 200c0000 00000000 01dd26bb     ...G... .....&..
d0050e04:	0000d010 fb0eeeeb e7dd00dd d900be10     ................
d0050e14:	2fbb0cef 02e621bb 0b00f800 f20000e7     .../.!..........
d0050e24:	00f8fb01 22f8f600 22cc22dd 0c0000dd     ......."."."....
d0050e34:	00eb1500 f81ddd11 ea0ae722 0021de21     ........"...!.!.
d0050e44:	f805f80b 19e70000 eee911ef 00ffef16     ................
d0050e54:	0cee06fc 00f222f8 00ed0008 11ee00fc     ....."..........
d0050e64:	eb1000f8 de0ceb14 00eee714 f700f800     ................
d0050e74:	19f815ea 0a002100 11fc2201 ee110003     .....!..."......
d0050e84:	22e71b00 08f808ef 0ed41bcc d91000ef     ..."............
d0050e94:	10e4fc10 fc11fce8 0bde19f9 e721ef02     ..............!.
d0050ea4:	07f200f8 15f6f800 f80010de 110bf82b     ............+...
d0050eb4:	cc2af6ee 0021df2a 21cd21d9 00cd2bde     ..*.*.!..!.!.+..
d0050ec4:	e020eee7 e407f203 0900dd10 090bf809     .. .............
d0050ed4:	17fc0208 de1900f3 0100ef21 0af800ef     ........!.......
d0050ee4:	0ddc19f8 0908ee03 dd11f8f4 ef21e611     ..............!.
d0050ef4:	21e30018 080000f1 f8ef00e7 0ce6fcfd     ...!............
d0050f04:	11e619dd 11de17f8 e31900e9 df2aca24     ............$.*.
d0050f14:	de10110e 11f80021 e60015ee 00e70000     ....!...........
d0050f24:	c011ecfd 08e70008 08f600f3 e30600e6     ................
d0050f34:	f8f80007 10ef0ef8 27f30200 f8010fde     ...........'....
d0050f44:	03ee0002 00080bed 22f30800 000500fc     ..........."....
d0050f54:	f300f8f8 f8010000 000cef17 0803ee11     ................
d0050f64:	0000f800 000300f2 0000f600 05f2f800     ................
d0050f74:	0000ef05 f400deee 08f70000 10ee0cee     ................
d0050f84:	11feee03 f408f8ef de19e70a 04f20cfc     ................
d0050f94:	08f308f8 e70cf8f2 f20af3fb ef17f707     ................
d0050fa4:	1401f814 15f81bf5 fcf411ea f8f80003     ................
d0050fb4:	00f400f8 00ee0000 f9f8eff8 f8f90cee     ................
d0050fc4:	f8000000 f6000003 08fc0008 00f600fd     ................
d0050fd4:	0000fef6 f8effef8 1008ee1d 000019f1     ................
d0050fe4:	0000010b ef05f811 fdfb000e f300fc00     ................
d0050ff4:	00effc01 f8f8eefb ea00f6f8 00f8ef12     ................
d0051004:	0cf602f8 00ef0bec fbf510f1 0000f205     ................
d0051014:	000bf205 f8000000 08000000 00f907f8     ................
d0051024:	01fc04fa f30000fc 0000f607 ef00f6f8     ................
d0051034:	f8fb0000 0003ef0a f900f200 fb00f600     ................
d0051044:	eefe03f9 ef01f208 f406f602 00070007     ................
d0051054:	00000bf6 0bf10800 00fc07f4 f50400fc     ................
d0051064:	0005fd00 03ee08f3 fef806f6 fd00f8fb     ................
d0051074:	f800f9f8 f50000f8 0000fd00 03fcfdf9     ................
d0051084:	fc0000fb f704fc00 f9ffff02 fffc0000     ................
d0051094:	fb07f900 fefe00fc 0000fe00 07f80300     ................
d00510a4:	000000fe 0001f800 f60cf600 08ee01fc     ................
d00510b4:	00fc08f8 06f200fc f401fbf3 f8fdfc00     ................
d00510c4:	f803f802 03f8fd00 00fdf8fd fbff03f2     ................
d00510d4:	fbfcff02 00f8ff00 0000f801 000000fb     ................
d00510e4:	00f805fc 0007f40f 0300ff01 0006fb00     ................
d00510f4:	fdf800fa f8fcf800 00fbf802 00fcef00     ................
d0051104:	fbfb00f7 fefbfdfe fcfe00fa 0100f803     ................
d0051114:	0005fd00 00fb04fe 00fb01fd 0006f604     ................
d0051124:	fb05f805 00000000 00000000 00fdfe01     ................
d0051134:	fdfe00fb fd00f800 fcfcfffa fef800fd     ................
d0051144:	fc00fefe fb00f403 f903fdfe 00f800fe     ................
d0051154:	00fe00fa 02fb0000 fb0100fc 00fe05ff     ................
d0051164:	fe00fc02 fd00fd00 fdfefd00 fdfc00fd     ................
d0051174:	fefdfdfd fd00fdfd 00f900fe f90000fe     ................
d0051184:	fb00fb00 fdfbfe00 fefa00fc ff00fdfe     ................
d0051194:	fc00fefc 00fc00fe fe00ff00 00000000     ................
d00511a4:	fd00feff fc0000ff fdfcfe00 ff00f900     ................
d00511b4:	fe0000fd fffc00fa fcfffefe fa00fc00     ................
d00511c4:	f800fb02 fb00f800 fdfdfffe fefd00fc     ................
d00511d4:	00fefdff fefe00fc 00fefdfd 00fe02fd     ................
d00511e4:	0000fe00 0002fd00 000000ff fffd01fe     ................
d00511f4:	fefdfffe fefcfffe f9fefbfc fdfdfdfe     ................
d0051204:	fefc00fb fefefdfc fdfefefc fefe00fe     ................
d0051214:	fffd00fe 00fd00fd 00fd00fd fefffffe     ................
d0051224:	ff00ff00 00ff0000 00fc00ff 00feff00     ................
d0051234:	fcfffdfe fcfdfdfd fcfdfbfd fbfdfcfd     ................
d0051244:	fd00fd00 00fe00fe fefd00fc 00fcfe00     ................
d0051254:	00fefeff fffefffe 00fd00fd feff00fd     ................
d0051264:	fe00fe00 fc00fd00 fb00fd00 fefdfe00     ................
d0051274:	fffdfefe 00fdfefd fd00fefc fefefffc     ................
d0051284:	fffefefe fd00fefe fe00fd00 00ff00fd     ................
d0051294:	0000fefe fefe00fe fe00fdff fdfefefc     ................
d00512a4:	fefdfdfd fd00fcfe fffefd00 fd00fefe     ................
d00512b4:	fe00fd00 0000ff00 fd00fd00 fd00fc00     ................
d00512c4:	fefcfefe 00fdfdfc fffdfefd fdfffefd     ................
d00512d4:	00fdfd00 fefd00fc fffdfdfe ff00fdfe     ................
d00512e4:	fffefffe 0000fe00 0000fe00 00fe00fe     ................
d00512f4:	00fe00ff 00feffff 00000000 e4d9ff28     ............(...
d0051304:	0dbdb244 1e2500ba 1f27141d 0e39282d     D.....%...'.-(9.
d0051314:	583c0064 e7f808ee abbec7d4 99969d92     d.<X............
d0051324:	b8aea398 eddfccbd 4b1cfaf2 5a4a4b32     ...........K2KJZ
d0051334:	7f7e7b73 767d7f7f 515a6e6e 212d394b     s{~...}vnnZQK9-!
d0051344:	e8f40312 b3b6cdd7 809f97a7 808a809a     ................
d0051354:	83808080 a49c948c d9c3bcb5 07fbefe4     ................
d0051364:	44382416 7e696155 7f7f7f7f 7f7f7f7f     .$8DUai~........
d0051374:	70797f7f 4d4b5a6a 1e25383c eaff050c     ..ypjZKM<8%.....
d0051384:	beccd6dc 99a2b3ba 808d8590 8480808b     ................
d0051394:	908a8780 aaa29d98 d2c2bbb2 f8ede1d8     ................
d00513a4:	1b0d0cff 39383022 4e504949 5a585656     ...."089IIPNVVXZ
d00513b4:	56615c5c 56555955 49515055 3e42484b     \\aVUYUVUPQIKHB>
d00513c4:	3034383c 1a22222c 040d1013 edf8f9fe     <840,"".........
d00513d4:	dbdee4ec c3c7cdd3 b2b3b3bd a4a5a6ac     ................
d00513e4:	9c9ba09d 9c9b9b9a aba6a3a0 c3bbb6b0     ................
d00513f4:	e1d9cfc9 fdf7f1e5 1b130d03 3a332c21     ............!,3:
d0051404:	59504a43 6a67635e 7272716f 696f7072     CJPY^cgjoqrrrpoi
d0051414:	565b6066 3a42494f 1d262d33 01080f16     f`[VOIB:3-&.....
d0051424:	e7eef7fc cfd6dbe3 bcc1c4cb b2b2b6ba     ................
d0051434:	afafb0b1 b6b2b2b0 c2bdbbb7 d2cec9c6     ................
d0051444:	e5e1dbd7 f8f3eeea 0502fffc 110f0d08     ................
d0051454:	1c1a1814 21211e1d 24222221 21222224     ......!!!""$$""!
d0051464:	1d1f1f21 191a1b1c 13131618 0e0f1011     !...............
d0051474:	08090c0d 04040506 ff010203 feffffff     ................
d0051484:	fbfcfcfd f8f8f9fa f4f4f7f8 f3f3f4f4     ................
d0051494:	f3f2f2f2 f1f2f2f2 f3f3f2f2 f3f3f3f3     ................
d00514a4:	f7f7f4f4 f8f8f8f7 f9f9f9f9 fcfbfbfa     ................
d00514b4:	fdfdfcfc fffefefe ffffffff 0201ffff     ................
d00514c4:	02020202 04030303 04040303 04040404     ................
d00514d4:	04040404 04040404 03040304 02030303     ................
d00514e4:	02020303 01020102 01ff0101 ffffffff     ................
d00514f4:	ffffffff ffffffff e4320000 bf101ff8     ..........2.....
d0051504:	407f7fed 93f8ce28 80808096 d6808080     ...@(...........
d0051514:	aa7f0df2 7f7f747f 737f7f7f cde630f0     .....t.....s.0..
d0051524:	98f8178e 802c8020 ff80807f 80a58093     .... .,.........
d0051534:	9530c1db 166bf855 7f7f297f 7f7f7f45     ..0.U.k..)..E...
d0051544:	6a7f7f65 e907763f bd9980c0 a380a180     e..j?v..........
d0051554:	aa80a180 80808080 87808080 33d4bcf6     ...............3
d0051564:	517b1d58 7f7f747f 7f7f7f7f 5b7f7f7f     X.{Q.t.........[
d0051574:	22706969 af78062a cf03db35 d1b7eba3     iip"*.x.5.......
d0051584:	b8b6fbd4 b20cd410 f4d3d205 bc0dbece     ................
d0051594:	cacbe7c7 ddbec6b5 c4a5cf91 ca12c9cf     ................
d00515a4:	f648b12f f61b2df2 540a2e13 4b49672d     /.H..-.....T-gIK
d00515b4:	3a7c3360 6cf84f7f d86ff466 c349293a     `3|:.O.lf.o.:)I.
d00515c4:	e8182d00 0ef2fdfd f7e1f8de c61bedbd     .-..............
d00515d4:	e215cad7 f58048b6 cda1bd0c 90c1cfee     .....H..........
d00515e4:	86beb9aa 80a38596 809a8f91 8bb39f91     ................
d00515f4:	b1d0bd9e e60ececb 162efb31 6a687066     ........1...fphj
d0051604:	7f7f7e7f 7f7f7f7f 7f7f7f7f 7f7f7f7f     .~..............
d0051614:	7f7f7f7f 4b7c6f7f 611f227f cf0e270d     .....o|K.".a.'..
d0051624:	9cb19513 808083a1 80808080 80808080     ................
d0051634:	80808080 80808080 99808080 a9948080     ................
d0051644:	9bacb394 e912a511 70e8201a 3c421231     ......... .p1.B<
d0051654:	65646655 347f724a 5c5d7d62 446d5471     UfdeJr.4b}]\qTmD
d0051664:	19456a4b 69cc697f 28343a31 29303acd     KjE..i.i1:4(.:0)
d0051674:	3f5318ff 415d55f0 3a585812 7b365039     ..S?.U]A.XX:9P6{
d0051684:	4e5a343a 09207bf5 dd48ff4f ecd84901     :4ZN.{ .O.H..I..
d0051694:	d3c5cde0 9081cb90 9f8097ab 80808b88     ................
d00516a4:	80808080 a1808080 af808f80 a8d480ac     ................
d00516b4:	aef2a3af ede3c2d4 daf129d1 e4043a04     .........)...:..
d00516c4:	4731f852 3f331055 7f563366 757f582c     R.1GU.3?f3V.,X.u
d00516d4:	667f6b6b 7f79527f 547f287f 624b503e     kk.f.Ry..(.T>PKb
d00516e4:	494bf74a 22030549 053af113 1f01d812     J.KII.."..:.....
d00516f4:	e505dd08 b71509fa b40e03f7 0ff1bb13     ................
d0051704:	c6fac8cc 0ad7c9d0 9ceaf3b8 db01803f     ............?...
d0051714:	baf0cdd7 a7d0dce2 e4c6dae3 fdf3c1b9     ................
d0051724:	dbd0e9c2 bac40bb0 c8069d02 fbeeaffb     ................
d0051734:	fee7e9f0 01e8fbee 2efaf526 47e04318     ........&....C.G
d0051744:	0e0e1935 101e6a2c 1a0c2e7c 61363469     5...,j..|...i46a
d0051754:	3f1b570c fff4211f e32a0d02 34c72ce0     .W.?.!....*..,.4
d0051764:	d4e428cb df25f21f e1fec60e e7080010     .(....%.........
d0051774:	d90034c7 1ee3fa38 0812f53e 29f20210     .4..8...>......)
d0051784:	e4d210ed ee17e0fe 30da1601 2bce0cdb     ...........0...+
d0051794:	120bc800 d3f51ce7 fc13e228 e1eef8c2     ........(.......
d00517a4:	21bca1f5 daeedfc6 07c70dcd c4b1f807     ...!............
d00517b4:	1bcbfa1e 56dc1ee7 0d4811ef 3b471f40     .......V..H.@.G;
d00517c4:	20e83441 0d002328 31f0f3ed f2de21b4     A4. (#.....1.!..
d00517d4:	c706f90a fbf9fa20 f1dde6fb 14d80eee     .... ...........
d00517e4:	0d02c41c 35ea25f9 35d62be1 e119fdf3     .....%.5.+.5....
d00517f4:	de0b0c1a f4ca170a 1a0405ee 2e2adaf8     ..............*.
d0051804:	0e1c4fde fc23ff0f 13e12616 e52aeefb     .O....#..&....*.
d0051814:	07ecd6f0 e0d0c8f2 f0d2c5ec d5e018ef     ................
d0051824:	d92bc81b f4f511fb 05f92605 0644171d     ..+......&....D.
d0051834:	4c1c1d16 2c2d1cf2 021b09ed ea1bf3ef     ...L..-,........
d0051844:	f6cd000c 11d7fcfd c01ede01 f8beec1b     ................
d0051854:	fce5f0db f5f9e402 29f8d819 1dec0df2     ...........)....
d0051864:	fb1b1fd3 efe40f15 f931f127 2cf81916     ........'.1....,
d0051874:	21ca26fe 08f3ea0e 020502eb 0606fd0e     .&.!............
d0051884:	210af71b 15181ed6 10f6aefc 04cd06e3     ...!............
d0051894:	f4d00dcc f4fc0fec 06f8df06 e4ec1804     ................
d00518a4:	28e90710 271d0301 02220214 1def2730     ...(...'..".0'..
d00518b4:	011cfa0f 0212d51c cf1600dd 1ddb0dff     ................
d00518c4:	ed1fdad6 02fbb40a fdffe000 fff602e7     ................
d00518d4:	1bc30401 f5f50006 0dff0332 fb1cf61a     ........2.......
d00518e4:	1410ec00 15f61ef6 f10702eb 2501fb06     ...............%
d00518f4:	041bf107 00e8eb1d df041fef fadf100d     ................
d0051904:	d607ffce e3f0ff09 2214da15 ebdc25e6     ...........".%..
d0051914:	e608f501 ef08f6ec 26fb1b16 17e74edb     ...........&.N..
d0051924:	db32101e 30012618 2212effa 0a0200ef     ..2..&.0..."....
d0051934:	fc0df8ee ff1ae9ff f8e31cd5 0ec605fb     ................
d0051944:	05e9f8d5 1bd9efc9 e6c50fc7 11dce60d     ................
d0051954:	22dc26e8 23f31716 03223805 14061efc     .&."...#.8".....
d0051964:	3002290a 1e0e14e4 fafb08f1 f401ed16     .).0............
d0051974:	0be5ef0c ebebf8e5 10d615e1 05d9f8ee     ................
d0051984:	dfffdf17 ef1afe08 040404fb 1fff0911     ................
d0051994:	f52afffd fdf90d0d 000efe30 17fb0304     ..*.....0.......
d00519a4:	0d020be4 cd0f1dd9 f4ef0b0f fdfdf8e7     ................
d00519b4:	00fbf1f2 0bf1ee04 02e709f6 fc02f60f     ................
d00519c4:	00e816e9 de1d05f7 17ee021b 0117f8f1     ................
d00519d4:	02eff20f efe80f0b fbf5090b 0e140314     ................
d00519e4:	fc140c09 031a0efe f2e40107 faf513fc     ................
d00519f4:	09faecff fb05e5f7 f7ee02eb e80adb02     ................
d0051a04:	f60305fd 18f605f6 020417fe 03121c00     ................
d0051a14:	fc1812f5 f7061007 db10021f 00fa0a0b     ................
d0051a24:	080305f6 fffd0ade 0406fcfc ec03fcf3     ................
d0051a34:	16dcf616 e400f700 f200ef0f f610d0f6     ................
d0051a44:	fbd2fbfb 050dee13 ef1ff3fd 01030512     ................
d0051a54:	f2fc25fa 0b100f0b f722ff0a 1afe0e21     .%........".!...
d0051a64:	ed01fefa 0af7ea0d d114d901 f6f8e804     ................
d0051a74:	08f9dd15 e311f2f0 00f5f80f 010a0003     ................
d0051a84:	f110f805 e6170916 000f22fa f70725f4     ........."...%..
d0051a94:	fffc26f1 19fdfa14 fc000ffb e71ff7e1     .&..............
d0051aa4:	ec0af201 0500eb02 23250000 13181a1d     ..........%#....
d0051ab4:	080b0e10 06050606 38281a0d 454d4f47     ..........(8GOME
d0051ac4:	e6011d34 8086a2c1 80808080 80808080     4...............
d0051ad4:	b99b8180 3816ffd9 6b69614f 49566469     .......8OaikidVI
d0051ae4:	0b1a2a3a eef2fa00 fbf5f0ee 1a120801     :*..............
d0051af4:	38322d23 4747453d 3f434547 282d343c     #-28=EGGGEC?<4-(
d0051b04:	0d121a23 f8fd0106 e5e6eaf2 d9dbdfe1     #...............
d0051b14:	cbccd0d3 c3c4c8cb bbbdbec1 b7b7b9b9     ................
d0051b24:	b9b7b7b7 bebebdbb c1c1c1be bbbdbec1     ................
d0051b34:	b9b9b9bb c1bebbb9 d1ccc8c4 f5e8dbd6     ................
d0051b44:	1b1608ff 181d2321 fa010b10 d8dde6ee     ....!#..........
d0051b54:	d0ccccd0 ede1d9d1 160d00f8 4a3f3427     ............'4?J
d0051b64:	71696158 7f7f7c79 7f7f7f7f 74797e7f     Xaiqy|.......~yt
d0051b74:	64656b72 494f525a 343a3d43 23272d30     rkedZROIC=:40-'#
d0051b84:	161a1d21 0d0e1012 0606080b 231b120d     !..............#
d0051b94:	32342f2a 0518232d b7cee1f8 808294a2     */42-#..........
d0051ba4:	80808080 80808080 ccb39b87 2310ffe5     ...............#
d0051bb4:	4f473d32 50525452 3842474d 1d232a30     2=GORTRPMGB80*#.
d0051bc4:	0e10161a 0806080b 12100d0b 211d1a16     ...............!
d0051bd4:	25252323 00000000 19243044 c1c90913     ##%%....D0$.....
d0051be4:	8daf9aea d0bec7a0 ece7e3dc 04fcf6f1     ................
d0051bf4:	7f2a0f09 707f4734 0f143c51 47503914     ..*.4G.pQ<...9PG
d0051c04:	1d07172e 00000000 19243044 c1c90913     ........D0$.....
d0051c14:	8daf9aea d0bec7a0 ece7e3dc 04fcf6f1     ................
d0051c24:	7f2a0f09 707f4734 0f143c51 47503914     ..*.4G.pQ<...9PG
d0051c34:	0000172e 30440000 09131924 9aeac1c9     ......D0$.......
d0051c44:	c7a08daf e3dcd0be f6f1ece7 0f0904fc     ................
d0051c54:	47347f2a 3c51707f 39140f14 00004750     *.4G.pQ<...9PG..
d0051c64:	30440000 09131924 9aeac1c9 c7a08daf     ..D0$...........
d0051c74:	e3dcd0be f6f1ece7 0f0904fc 47347f2a     ............*.4G
d0051c84:	3c51707f 39140f14 00000000 19243044     .pQ<...9....D0$.
d0051c94:	c1c90913 8daf9aea d0bec7a0 ece7e3dc     ................
d0051ca4:	04fcf6f1 7f2a0f09 707f4734 0f143c51     ......*.4G.pQ<..
d0051cb4:	00000000 19243044 c1c90913 8daf9aea     ....D0$.........
d0051cc4:	d0bec7a0 ece7e3dc 04fcf6f1 7f2a0f09     ..............*.
d0051cd4:	707f4734 00000000 83868a8d 81818182     4G.p............
d0051ce4:	81818181 81818181 81818181 81818181     ................
d0051cf4:	00000000 0d131924 dfe3040a c2d5caf5     ....$...........
d0051d04:	e7dde2cc f6f3f1ed 01fffcf9 45160704     ...............E
d0051d14:	3c45261c 070a202b 262b1e0a 0f030c18     .&E<+ ....+&....
d0051d24:	00000000 0d131924 dfe3040a c2d5caf5     ....$...........
d0051d34:	e7dde2cc f5f3f1ed 01fffcf9 45160704     ...............E
d0051d44:	3c45261c 070a202b 262b1e0a 00000c18     .&E<+ ....+&....
d0051d54:	19240000 040a0d13 caf5dfe3 e2ccc2d5     ..$.............
d0051d64:	f1ede7dd fcf9f6f3 070401ff 261c4516     .............E.&
d0051d74:	202b3c45 1e0a070a 0000262b 19240000     E<+ ....+&....$.
d0051d84:	040a0d13 caf5dfe3 e2ccc2d5 f1ede7dd     ................
d0051d94:	fcf9f6f3 070401ff 261c4516 202b3c45     .........E.&E<+ 
d0051da4:	1e0a070a 00000000 0d131926 dfe3040a     ........&.......
d0051db4:	c2d5caf4 e7dde2cb f6f3f1ec 01fffcf9     ................
d0051dc4:	45160704 3c45261d 070a202c 00000000     ...E.&E<, ......
d0051dd4:	0d131924 dfe3040a c2d5caf5 e7dce2cc     $...............
d0051de4:	f6f3f1ed 01fffcf9 45160704 3c45261c     ...........E.&E<
d0051df4:	00000000 bcbec1c2 bbbbbbbc bbbabbbb     ................
d0051e04:	bbbbbbbb bbbbbbbb bbbbbbbb              ............

d0051e10 <_global_impure_ptr>:
d0051e10:	d0051e8c                                ....

d0051e14 <__sf_fake_stderr>:
	...

d0051e34 <__sf_fake_stdin>:
	...

d0051e54 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0051e74 <_init>:
d0051e74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0051e76:	bf00      	nop

Disassembly of section .fini:

d0051e78 <_fini>:
d0051e78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0051e7a:	bf00      	nop
