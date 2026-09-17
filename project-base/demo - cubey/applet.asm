
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
d004b01e:	f001 fe1d 	bl	d004cc5c <setbuf>
d004b022:	6833      	ldr	r3, [r6, #0]
d004b024:	2100      	movs	r1, #0
d004b026:	68d8      	ldr	r0, [r3, #12]
d004b028:	f001 fe18 	bl	d004cc5c <setbuf>
d004b02c:	4629      	mov	r1, r5
d004b02e:	4620      	mov	r0, r4
d004b030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004b034:	f000 bcc8 	b.w	d004b9c8 <main>
d004b038:	d005275c 	.word	0xd005275c

d004b03c <gfx_createBitmap>:
d004b03c:	b510      	push	{r4, lr}
d004b03e:	4604      	mov	r4, r0
d004b040:	fb01 f002 	mul.w	r0, r1, r2
d004b044:	b292      	uxth	r2, r2
d004b046:	80a1      	strh	r1, [r4, #4]
d004b048:	60e0      	str	r0, [r4, #12]
d004b04a:	80e2      	strh	r2, [r4, #6]
d004b04c:	8122      	strh	r2, [r4, #8]
d004b04e:	f001 fd33 	bl	d004cab8 <malloc>
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
d004b064:	d0056520 	.word	0xd0056520
d004b068:	d0600000 	.word	0xd0600000
d004b06c:	d0054508 	.word	0xd0054508

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
d004b0b8:	f001 fcf8 	bl	d004caac <__errno>
d004b0bc:	2209      	movs	r2, #9
d004b0be:	4603      	mov	r3, r0
d004b0c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b0c4:	601a      	str	r2, [r3, #0]
d004b0c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004b0c8:	d00527c4 	.word	0xd00527c4
d004b0cc:	2001f000 	.word	0x2001f000

d004b0d0 <_read>:
d004b0d0:	b508      	push	{r3, lr}
d004b0d2:	f001 fceb 	bl	d004caac <__errno>
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
d004b11e:	f001 fcc5 	bl	d004caac <__errno>
d004b122:	220c      	movs	r2, #12
d004b124:	4603      	mov	r3, r0
d004b126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004b12a:	601a      	str	r2, [r3, #0]
d004b12c:	bd10      	pop	{r4, pc}
d004b12e:	bf00      	nop
d004b130:	d00527c0 	.word	0xd00527c0
d004b134:	d0056520 	.word	0xd0056520
d004b138:	d0600000 	.word	0xd0600000

d004b13c <_isatty>:
d004b13c:	2001      	movs	r0, #1
d004b13e:	4770      	bx	lr

d004b140 <draw_textf_multiline.constprop.0>:
d004b140:	2300      	movs	r3, #0
d004b142:	2220      	movs	r2, #32
d004b144:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004b148:	4c2a      	ldr	r4, [pc, #168]	; (d004b1f4 <draw_textf_multiline.constprop.0+0xb4>)
d004b14a:	b091      	sub	sp, #68	; 0x44
d004b14c:	460d      	mov	r5, r1
d004b14e:	461f      	mov	r7, r3
d004b150:	4e29      	ldr	r6, [pc, #164]	; (d004b1f8 <draw_textf_multiline.constprop.0+0xb8>)
d004b152:	e00c      	b.n	d004b16e <draw_textf_multiline.constprop.0+0x2e>
d004b154:	a910      	add	r1, sp, #64	; 0x40
d004b156:	2b2e      	cmp	r3, #46	; 0x2e
d004b158:	f103 0c01 	add.w	ip, r3, #1
d004b15c:	4419      	add	r1, r3
d004b15e:	d803      	bhi.n	d004b168 <draw_textf_multiline.constprop.0+0x28>
d004b160:	fa5f f38c 	uxtb.w	r3, ip
d004b164:	f801 2c30 	strb.w	r2, [r1, #-48]
d004b168:	f814 2f01 	ldrb.w	r2, [r4, #1]!
d004b16c:	b33a      	cbz	r2, d004b1be <draw_textf_multiline.constprop.0+0x7e>
d004b16e:	2a0a      	cmp	r2, #10
d004b170:	d1f0      	bne.n	d004b154 <draw_textf_multiline.constprop.0+0x14>
d004b172:	f896 900c 	ldrb.w	r9, [r6, #12]
d004b176:	aa10      	add	r2, sp, #64	; 0x40
d004b178:	7b71      	ldrb	r1, [r6, #13]
d004b17a:	f04f 0802 	mov.w	r8, #2
d004b17e:	f896 e00e 	ldrb.w	lr, [r6, #14]
d004b182:	441a      	add	r2, r3
d004b184:	ea49 2101 	orr.w	r1, r9, r1, lsl #8
d004b188:	f896 c00f 	ldrb.w	ip, [r6, #15]
d004b18c:	f802 7c30 	strb.w	r7, [r2, #-48]
d004b190:	2301      	movs	r3, #1
d004b192:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
d004b196:	aa04      	add	r2, sp, #16
d004b198:	4629      	mov	r1, r5
d004b19a:	9003      	str	r0, [sp, #12]
d004b19c:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004b1a0:	3510      	adds	r5, #16
d004b1a2:	f8dc c004 	ldr.w	ip, [ip, #4]
d004b1a6:	b22d      	sxth	r5, r5
d004b1a8:	f8cd 8000 	str.w	r8, [sp]
d004b1ac:	f8dc 8030 	ldr.w	r8, [ip, #48]	; 0x30
d004b1b0:	47c0      	blx	r8
d004b1b2:	f814 2f01 	ldrb.w	r2, [r4, #1]!
d004b1b6:	2300      	movs	r3, #0
d004b1b8:	9803      	ldr	r0, [sp, #12]
d004b1ba:	2a00      	cmp	r2, #0
d004b1bc:	d1d7      	bne.n	d004b16e <draw_textf_multiline.constprop.0+0x2e>
d004b1be:	b1b3      	cbz	r3, d004b1ee <draw_textf_multiline.constprop.0+0xae>
d004b1c0:	4e0d      	ldr	r6, [pc, #52]	; (d004b1f8 <draw_textf_multiline.constprop.0+0xb8>)
d004b1c2:	a910      	add	r1, sp, #64	; 0x40
d004b1c4:	2702      	movs	r7, #2
d004b1c6:	7b34      	ldrb	r4, [r6, #12]
d004b1c8:	440b      	add	r3, r1
d004b1ca:	4629      	mov	r1, r5
d004b1cc:	7b75      	ldrb	r5, [r6, #13]
d004b1ce:	f803 2c30 	strb.w	r2, [r3, #-48]
d004b1d2:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
d004b1d6:	7bb3      	ldrb	r3, [r6, #14]
d004b1d8:	7bf2      	ldrb	r2, [r6, #15]
d004b1da:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d004b1de:	2301      	movs	r3, #1
d004b1e0:	ea44 6402 	orr.w	r4, r4, r2, lsl #24
d004b1e4:	aa04      	add	r2, sp, #16
d004b1e6:	6864      	ldr	r4, [r4, #4]
d004b1e8:	9700      	str	r7, [sp, #0]
d004b1ea:	6b24      	ldr	r4, [r4, #48]	; 0x30
d004b1ec:	47a0      	blx	r4
d004b1ee:	b011      	add	sp, #68	; 0x44
d004b1f0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004b1f4:	d004dc38 	.word	0xd004dc38
d004b1f8:	2001f000 	.word	0x2001f000

d004b1fc <draw_filled_triangle.part.0.constprop.0>:
d004b1fc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004b200:	f9b0 2000 	ldrsh.w	r2, [r0]
d004b204:	b089      	sub	sp, #36	; 0x24
d004b206:	f9b0 6004 	ldrsh.w	r6, [r0, #4]
d004b20a:	f9b0 5008 	ldrsh.w	r5, [r0, #8]
d004b20e:	4690      	mov	r8, r2
d004b210:	42b2      	cmp	r2, r6
d004b212:	f9b0 c002 	ldrsh.w	ip, [r0, #2]
d004b216:	f9b0 7006 	ldrsh.w	r7, [r0, #6]
d004b21a:	4696      	mov	lr, r2
d004b21c:	bfa8      	it	ge
d004b21e:	46b0      	movge	r8, r6
d004b220:	42b2      	cmp	r2, r6
d004b222:	4b72      	ldr	r3, [pc, #456]	; (d004b3ec <draw_filled_triangle.part.0.constprop.0+0x1f0>)
d004b224:	46e1      	mov	r9, ip
d004b226:	bfb8      	it	lt
d004b228:	46b6      	movlt	lr, r6
d004b22a:	45a8      	cmp	r8, r5
d004b22c:	889b      	ldrh	r3, [r3, #4]
d004b22e:	4664      	mov	r4, ip
d004b230:	bfa8      	it	ge
d004b232:	46a8      	movge	r8, r5
d004b234:	45bc      	cmp	ip, r7
d004b236:	9107      	str	r1, [sp, #28]
d004b238:	b299      	uxth	r1, r3
d004b23a:	bfa8      	it	ge
d004b23c:	46b9      	movge	r9, r7
d004b23e:	45bc      	cmp	ip, r7
d004b240:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
d004b244:	f101 3aff 	add.w	sl, r1, #4294967295	; 0xffffffff
d004b248:	bfb8      	it	lt
d004b24a:	463c      	movlt	r4, r7
d004b24c:	45ae      	cmp	lr, r5
d004b24e:	bfb8      	it	lt
d004b250:	46ae      	movlt	lr, r5
d004b252:	4599      	cmp	r9, r3
d004b254:	bfa8      	it	ge
d004b256:	4699      	movge	r9, r3
d004b258:	429c      	cmp	r4, r3
d004b25a:	bfb8      	it	lt
d004b25c:	461c      	movlt	r4, r3
d004b25e:	f1b8 0f00 	cmp.w	r8, #0
d004b262:	f2c0 80bf 	blt.w	d004b3e4 <draw_filled_triangle.part.0.constprop.0+0x1e8>
d004b266:	45d0      	cmp	r8, sl
d004b268:	4641      	mov	r1, r8
d004b26a:	bfa8      	it	ge
d004b26c:	4651      	movge	r1, sl
d004b26e:	9105      	str	r1, [sp, #20]
d004b270:	f1be 0f00 	cmp.w	lr, #0
d004b274:	f2c0 80b3 	blt.w	d004b3de <draw_filled_triangle.part.0.constprop.0+0x1e2>
d004b278:	45d6      	cmp	lr, sl
d004b27a:	4671      	mov	r1, lr
d004b27c:	bfa8      	it	ge
d004b27e:	4651      	movge	r1, sl
d004b280:	9102      	str	r1, [sp, #8]
d004b282:	495a      	ldr	r1, [pc, #360]	; (d004b3ec <draw_filled_triangle.part.0.constprop.0+0x1f0>)
d004b284:	f1b9 0f00 	cmp.w	r9, #0
d004b288:	88c9      	ldrh	r1, [r1, #6]
d004b28a:	b289      	uxth	r1, r1
d004b28c:	f101 31ff 	add.w	r1, r1, #4294967295	; 0xffffffff
d004b290:	f2c0 80a2 	blt.w	d004b3d8 <draw_filled_triangle.part.0.constprop.0+0x1dc>
d004b294:	4589      	cmp	r9, r1
d004b296:	bfa8      	it	ge
d004b298:	4689      	movge	r9, r1
d004b29a:	2c00      	cmp	r4, #0
d004b29c:	f2c0 8099 	blt.w	d004b3d2 <draw_filled_triangle.part.0.constprop.0+0x1d6>
d004b2a0:	428c      	cmp	r4, r1
d004b2a2:	bfa8      	it	ge
d004b2a4:	460c      	movge	r4, r1
d004b2a6:	9406      	str	r4, [sp, #24]
d004b2a8:	9905      	ldr	r1, [sp, #20]
d004b2aa:	9c02      	ldr	r4, [sp, #8]
d004b2ac:	42a1      	cmp	r1, r4
d004b2ae:	f300 808d 	bgt.w	d004b3cc <draw_filled_triangle.part.0.constprop.0+0x1d0>
d004b2b2:	9906      	ldr	r1, [sp, #24]
d004b2b4:	4589      	cmp	r9, r1
d004b2b6:	f300 8089 	bgt.w	d004b3cc <draw_filled_triangle.part.0.constprop.0+0x1d0>
d004b2ba:	eba6 0b02 	sub.w	fp, r6, r2
d004b2be:	eba3 040c 	sub.w	r4, r3, ip
d004b2c2:	eba7 0a0c 	sub.w	sl, r7, ip
d004b2c6:	1aa9      	subs	r1, r5, r2
d004b2c8:	fb04 f40b 	mul.w	r4, r4, fp
d004b2cc:	fb01 411a 	mls	r1, r1, sl, r4
d004b2d0:	2900      	cmp	r1, #0
d004b2d2:	d07b      	beq.n	d004b3cc <draw_filled_triangle.part.0.constprop.0+0x1d0>
d004b2d4:	ea4f 71d1 	mov.w	r1, r1, lsr #31
d004b2d8:	9104      	str	r1, [sp, #16]
d004b2da:	bfcc      	ite	gt
d004b2dc:	2101      	movgt	r1, #1
d004b2de:	2100      	movle	r1, #0
d004b2e0:	9103      	str	r1, [sp, #12]
d004b2e2:	9905      	ldr	r1, [sp, #20]
d004b2e4:	9300      	str	r3, [sp, #0]
d004b2e6:	e02a      	b.n	d004b33e <draw_filled_triangle.part.0.constprop.0+0x142>
d004b2e8:	2d00      	cmp	r5, #0
d004b2ea:	db13      	blt.n	d004b314 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b2ec:	2a00      	cmp	r2, #0
d004b2ee:	db11      	blt.n	d004b314 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b2f0:	4c3e      	ldr	r4, [pc, #248]	; (d004b3ec <draw_filled_triangle.part.0.constprop.0+0x1f0>)
d004b2f2:	6822      	ldr	r2, [r4, #0]
d004b2f4:	b172      	cbz	r2, d004b314 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b2f6:	88a3      	ldrh	r3, [r4, #4]
d004b2f8:	b29b      	uxth	r3, r3
d004b2fa:	4299      	cmp	r1, r3
d004b2fc:	d20a      	bcs.n	d004b314 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b2fe:	88e3      	ldrh	r3, [r4, #6]
d004b300:	b29b      	uxth	r3, r3
d004b302:	4599      	cmp	r9, r3
d004b304:	d206      	bcs.n	d004b314 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b306:	8923      	ldrh	r3, [r4, #8]
d004b308:	b29b      	uxth	r3, r3
d004b30a:	fb01 2203 	mla	r2, r1, r3, r2
d004b30e:	9b07      	ldr	r3, [sp, #28]
d004b310:	f802 3009 	strb.w	r3, [r2, r9]
d004b314:	3101      	adds	r1, #1
d004b316:	9b02      	ldr	r3, [sp, #8]
d004b318:	428b      	cmp	r3, r1
d004b31a:	db41      	blt.n	d004b3a0 <draw_filled_triangle.part.0.constprop.0+0x1a4>
d004b31c:	f9b0 6004 	ldrsh.w	r6, [r0, #4]
d004b320:	f9b0 2000 	ldrsh.w	r2, [r0]
d004b324:	f9b0 7006 	ldrsh.w	r7, [r0, #6]
d004b328:	f9b0 c002 	ldrsh.w	ip, [r0, #2]
d004b32c:	eba6 0b02 	sub.w	fp, r6, r2
d004b330:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
d004b334:	f9b0 5008 	ldrsh.w	r5, [r0, #8]
d004b338:	eba7 0a0c 	sub.w	sl, r7, ip
d004b33c:	9300      	str	r3, [sp, #0]
d004b33e:	1b8b      	subs	r3, r1, r6
d004b340:	eba5 0e06 	sub.w	lr, r5, r6
d004b344:	eba9 0407 	sub.w	r4, r9, r7
d004b348:	9e00      	ldr	r6, [sp, #0]
d004b34a:	9301      	str	r3, [sp, #4]
d004b34c:	1b53      	subs	r3, r2, r5
d004b34e:	1bf7      	subs	r7, r6, r7
d004b350:	fb04 f40e 	mul.w	r4, r4, lr
d004b354:	eba9 0806 	sub.w	r8, r9, r6
d004b358:	9e01      	ldr	r6, [sp, #4]
d004b35a:	eba9 0e0c 	sub.w	lr, r9, ip
d004b35e:	1b4d      	subs	r5, r1, r5
d004b360:	fb08 f803 	mul.w	r8, r8, r3
d004b364:	9b00      	ldr	r3, [sp, #0]
d004b366:	fb06 4417 	mls	r4, r6, r7, r4
d004b36a:	1a8a      	subs	r2, r1, r2
d004b36c:	ebac 0303 	sub.w	r3, ip, r3
d004b370:	fb0e fe0b 	mul.w	lr, lr, fp
d004b374:	2c00      	cmp	r4, #0
d004b376:	fb05 8513 	mls	r5, r5, r3, r8
d004b37a:	fb02 e21a 	mls	r2, r2, sl, lr
d004b37e:	db02      	blt.n	d004b386 <draw_filled_triangle.part.0.constprop.0+0x18a>
d004b380:	9b03      	ldr	r3, [sp, #12]
d004b382:	2b00      	cmp	r3, #0
d004b384:	d1b0      	bne.n	d004b2e8 <draw_filled_triangle.part.0.constprop.0+0xec>
d004b386:	9b04      	ldr	r3, [sp, #16]
d004b388:	2b00      	cmp	r3, #0
d004b38a:	d0c3      	beq.n	d004b314 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b38c:	2c00      	cmp	r4, #0
d004b38e:	dcc1      	bgt.n	d004b314 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b390:	2d00      	cmp	r5, #0
d004b392:	dcbf      	bgt.n	d004b314 <draw_filled_triangle.part.0.constprop.0+0x118>
d004b394:	2a00      	cmp	r2, #0
d004b396:	ddab      	ble.n	d004b2f0 <draw_filled_triangle.part.0.constprop.0+0xf4>
d004b398:	3101      	adds	r1, #1
d004b39a:	9b02      	ldr	r3, [sp, #8]
d004b39c:	428b      	cmp	r3, r1
d004b39e:	dabd      	bge.n	d004b31c <draw_filled_triangle.part.0.constprop.0+0x120>
d004b3a0:	f109 0901 	add.w	r9, r9, #1
d004b3a4:	9b06      	ldr	r3, [sp, #24]
d004b3a6:	454b      	cmp	r3, r9
d004b3a8:	db10      	blt.n	d004b3cc <draw_filled_triangle.part.0.constprop.0+0x1d0>
d004b3aa:	f9b0 6004 	ldrsh.w	r6, [r0, #4]
d004b3ae:	f9b0 2000 	ldrsh.w	r2, [r0]
d004b3b2:	f9b0 7006 	ldrsh.w	r7, [r0, #6]
d004b3b6:	f9b0 c002 	ldrsh.w	ip, [r0, #2]
d004b3ba:	eba6 0b02 	sub.w	fp, r6, r2
d004b3be:	f9b0 5008 	ldrsh.w	r5, [r0, #8]
d004b3c2:	eba7 0a0c 	sub.w	sl, r7, ip
d004b3c6:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
d004b3ca:	e78a      	b.n	d004b2e2 <draw_filled_triangle.part.0.constprop.0+0xe6>
d004b3cc:	b009      	add	sp, #36	; 0x24
d004b3ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004b3d2:	2100      	movs	r1, #0
d004b3d4:	9106      	str	r1, [sp, #24]
d004b3d6:	e767      	b.n	d004b2a8 <draw_filled_triangle.part.0.constprop.0+0xac>
d004b3d8:	f04f 0900 	mov.w	r9, #0
d004b3dc:	e75d      	b.n	d004b29a <draw_filled_triangle.part.0.constprop.0+0x9e>
d004b3de:	2100      	movs	r1, #0
d004b3e0:	9102      	str	r1, [sp, #8]
d004b3e2:	e74e      	b.n	d004b282 <draw_filled_triangle.part.0.constprop.0+0x86>
d004b3e4:	2100      	movs	r1, #0
d004b3e6:	9105      	str	r1, [sp, #20]
d004b3e8:	e742      	b.n	d004b270 <draw_filled_triangle.part.0.constprop.0+0x74>
d004b3ea:	bf00      	nop
d004b3ec:	d00527e0 	.word	0xd00527e0

d004b3f0 <draw_cube>:
d004b3f0:	4ad7      	ldr	r2, [pc, #860]	; (d004b750 <draw_cube+0x360>)
d004b3f2:	4bd8      	ldr	r3, [pc, #864]	; (d004b754 <draw_cube+0x364>)
d004b3f4:	6811      	ldr	r1, [r2, #0]
d004b3f6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004b3fa:	681f      	ldr	r7, [r3, #0]
d004b3fc:	f5ad 7d47 	sub.w	sp, sp, #796	; 0x31c
d004b400:	eb07 0741 	add.w	r7, r7, r1, lsl #1
d004b404:	9000      	str	r0, [sp, #0]
d004b406:	f5b7 7f80 	cmp.w	r7, #256	; 0x100
d004b40a:	f340 82cd 	ble.w	d004b9a8 <draw_cube+0x5b8>
d004b40e:	f44f 7780 	mov.w	r7, #256	; 0x100
d004b412:	f06f 0104 	mvn.w	r1, #4
d004b416:	601f      	str	r7, [r3, #0]
d004b418:	6011      	str	r1, [r2, #0]
d004b41a:	f8df 835c 	ldr.w	r8, [pc, #860]	; d004b778 <draw_cube+0x388>
d004b41e:	f8d8 3000 	ldr.w	r3, [r8]
d004b422:	42bb      	cmp	r3, r7
d004b424:	d032      	beq.n	d004b48c <draw_cube+0x9c>
d004b426:	4bcc      	ldr	r3, [pc, #816]	; (d004b758 <draw_cube+0x368>)
d004b428:	f04f 0e00 	mov.w	lr, #0
d004b42c:	4ecb      	ldr	r6, [pc, #812]	; (d004b75c <draw_cube+0x36c>)
d004b42e:	f503 6c96 	add.w	ip, r3, #1200	; 0x4b0
d004b432:	4acb      	ldr	r2, [pc, #812]	; (d004b760 <draw_cube+0x370>)
d004b434:	f9b3 4002 	ldrsh.w	r4, [r3, #2]
d004b438:	3308      	adds	r3, #8
d004b43a:	f9b6 1002 	ldrsh.w	r1, [r6, #2]
d004b43e:	3208      	adds	r2, #8
d004b440:	f933 ac04 	ldrsh.w	sl, [r3, #-4]
d004b444:	f933 9c08 	ldrsh.w	r9, [r3, #-8]
d004b448:	eba1 0b04 	sub.w	fp, r1, r4
d004b44c:	f9b6 0004 	ldrsh.w	r0, [r6, #4]
d004b450:	459c      	cmp	ip, r3
d004b452:	f936 5b08 	ldrsh.w	r5, [r6], #8
d004b456:	fb07 f10b 	mul.w	r1, r7, fp
d004b45a:	eba0 000a 	sub.w	r0, r0, sl
d004b45e:	f822 ec02 	strh.w	lr, [r2, #-2]
d004b462:	eba5 0509 	sub.w	r5, r5, r9
d004b466:	eb04 2421 	add.w	r4, r4, r1, asr #8
d004b46a:	fb07 f000 	mul.w	r0, r7, r0
d004b46e:	fb07 f105 	mul.w	r1, r7, r5
d004b472:	eb0a 2020 	add.w	r0, sl, r0, asr #8
d004b476:	f822 4c06 	strh.w	r4, [r2, #-6]
d004b47a:	eb09 2121 	add.w	r1, r9, r1, asr #8
d004b47e:	f822 0c04 	strh.w	r0, [r2, #-4]
d004b482:	f822 1c08 	strh.w	r1, [r2, #-8]
d004b486:	d1d5      	bne.n	d004b434 <draw_cube+0x44>
d004b488:	f8c8 7000 	str.w	r7, [r8]
d004b48c:	4ab5      	ldr	r2, [pc, #724]	; (d004b764 <draw_cube+0x374>)
d004b48e:	f44f 76b4 	mov.w	r6, #360	; 0x168
d004b492:	4bb5      	ldr	r3, [pc, #724]	; (d004b768 <draw_cube+0x378>)
d004b494:	f649 6734 	movw	r7, #40500	; 0x9e34
d004b498:	6811      	ldr	r1, [r2, #0]
d004b49a:	4cb4      	ldr	r4, [pc, #720]	; (d004b76c <draw_cube+0x37c>)
d004b49c:	fb83 0201 	smull	r0, r2, r3, r1
d004b4a0:	ea4f 78e1 	mov.w	r8, r1, asr #31
d004b4a4:	f101 005a 	add.w	r0, r1, #90	; 0x5a
d004b4a8:	6825      	ldr	r5, [r4, #0]
d004b4aa:	440a      	add	r2, r1
d004b4ac:	f8df e2cc 	ldr.w	lr, [pc, #716]	; d004b77c <draw_cube+0x38c>
d004b4b0:	fb83 c400 	smull	ip, r4, r3, r0
d004b4b4:	ea4f 7ce0 	mov.w	ip, r0, asr #31
d004b4b8:	ebc8 2222 	rsb	r2, r8, r2, asr #8
d004b4bc:	f8de e000 	ldr.w	lr, [lr]
d004b4c0:	4404      	add	r4, r0
d004b4c2:	fb06 1212 	mls	r2, r6, r2, r1
d004b4c6:	ebcc 2424 	rsb	r4, ip, r4, asr #8
d004b4ca:	fb83 c105 	smull	ip, r1, r3, r5
d004b4ce:	eb02 0806 	add.w	r8, r2, r6
d004b4d2:	ea4f 7ce5 	mov.w	ip, r5, asr #31
d004b4d6:	fb06 0414 	mls	r4, r6, r4, r0
d004b4da:	4429      	add	r1, r5
d004b4dc:	ea32 0222 	bics.w	r2, r2, r2, asr #32
d004b4e0:	bf28      	it	cs
d004b4e2:	4642      	movcs	r2, r8
d004b4e4:	f105 005a 	add.w	r0, r5, #90	; 0x5a
d004b4e8:	eb04 0906 	add.w	r9, r4, r6
d004b4ec:	ebcc 2121 	rsb	r1, ip, r1, asr #8
d004b4f0:	2ab4      	cmp	r2, #180	; 0xb4
d004b4f2:	f1a2 08b4 	sub.w	r8, r2, #180	; 0xb4
d004b4f6:	fb06 5111 	mls	r1, r6, r1, r5
d004b4fa:	ea4f 7ce0 	mov.w	ip, r0, asr #31
d004b4fe:	bfcb      	itete	gt
d004b500:	4645      	movgt	r5, r8
d004b502:	4615      	movle	r5, r2
d004b504:	f04f 38ff 	movgt.w	r8, #4294967295	; 0xffffffff
d004b508:	f04f 0801 	movle.w	r8, #1
d004b50c:	ea34 0424 	bics.w	r4, r4, r4, asr #32
d004b510:	bf28      	it	cs
d004b512:	464c      	movcs	r4, r9
d004b514:	fb83 9200 	smull	r9, r2, r3, r0
d004b518:	f1c5 09b4 	rsb	r9, r5, #180	; 0xb4
d004b51c:	4402      	add	r2, r0
d004b51e:	2cb4      	cmp	r4, #180	; 0xb4
d004b520:	fb05 f509 	mul.w	r5, r5, r9
d004b524:	ebcc 2222 	rsb	r2, ip, r2, asr #8
d004b528:	f1a4 0cb4 	sub.w	ip, r4, #180	; 0xb4
d004b52c:	bfca      	itet	gt
d004b52e:	f04f 3bff 	movgt.w	fp, #4294967295	; 0xffffffff
d004b532:	f04f 0b01 	movle.w	fp, #1
d004b536:	4664      	movgt	r4, ip
d004b538:	fb06 0212 	mls	r2, r6, r2, r0
d004b53c:	eb01 0c06 	add.w	ip, r1, r6
d004b540:	fb83 900e 	smull	r9, r0, r3, lr
d004b544:	ebc5 3ac5 	rsb	sl, r5, r5, lsl #15
d004b548:	1b7d      	subs	r5, r7, r5
d004b54a:	ea31 0121 	bics.w	r1, r1, r1, asr #32
d004b54e:	bf28      	it	cs
d004b550:	4661      	movcs	r1, ip
d004b552:	4470      	add	r0, lr
d004b554:	ea4f 7cee 	mov.w	ip, lr, asr #31
d004b558:	29b4      	cmp	r1, #180	; 0xb4
d004b55a:	ea4f 0a8a 	mov.w	sl, sl, lsl #2
d004b55e:	ebcc 2020 	rsb	r0, ip, r0, asr #8
d004b562:	f10e 0c5a 	add.w	ip, lr, #90	; 0x5a
d004b566:	fb06 e010 	mls	r0, r6, r0, lr
d004b56a:	fb83 e30c 	smull	lr, r3, r3, ip
d004b56e:	f1a1 0eb4 	sub.w	lr, r1, #180	; 0xb4
d004b572:	bfc8      	it	gt
d004b574:	4671      	movgt	r1, lr
d004b576:	eb02 0e06 	add.w	lr, r2, r6
d004b57a:	eb03 090c 	add.w	r9, r3, ip
d004b57e:	bfcc      	ite	gt
d004b580:	f04f 33ff 	movgt.w	r3, #4294967295	; 0xffffffff
d004b584:	2301      	movle	r3, #1
d004b586:	ea32 0222 	bics.w	r2, r2, r2, asr #32
d004b58a:	bf28      	it	cs
d004b58c:	4672      	movcs	r2, lr
d004b58e:	ea4f 7eec 	mov.w	lr, ip, asr #31
d004b592:	9301      	str	r3, [sp, #4]
d004b594:	2ab4      	cmp	r2, #180	; 0xb4
d004b596:	ebce 2329 	rsb	r3, lr, r9, asr #8
d004b59a:	bfcc      	ite	gt
d004b59c:	f04f 3eff 	movgt.w	lr, #4294967295	; 0xffffffff
d004b5a0:	f04f 0e01 	movle.w	lr, #1
d004b5a4:	fb06 c313 	mls	r3, r6, r3, ip
d004b5a8:	f1a2 0cb4 	sub.w	ip, r2, #180	; 0xb4
d004b5ac:	4406      	add	r6, r0
d004b5ae:	bfc8      	it	gt
d004b5b0:	4662      	movgt	r2, ip
d004b5b2:	ea30 0020 	bics.w	r0, r0, r0, asr #32
d004b5b6:	bf28      	it	cs
d004b5b8:	4630      	movcs	r0, r6
d004b5ba:	f503 76b4 	add.w	r6, r3, #360	; 0x168
d004b5be:	28b4      	cmp	r0, #180	; 0xb4
d004b5c0:	f1a0 0cb4 	sub.w	ip, r0, #180	; 0xb4
d004b5c4:	bfd2      	itee	le
d004b5c6:	f04f 0c01 	movle.w	ip, #1
d004b5ca:	4660      	movgt	r0, ip
d004b5cc:	f04f 3cff 	movgt.w	ip, #4294967295	; 0xffffffff
d004b5d0:	ea33 0323 	bics.w	r3, r3, r3, asr #32
d004b5d4:	bf28      	it	cs
d004b5d6:	4633      	movcs	r3, r6
d004b5d8:	2bb4      	cmp	r3, #180	; 0xb4
d004b5da:	f1a3 06b4 	sub.w	r6, r3, #180	; 0xb4
d004b5de:	bfc8      	it	gt
d004b5e0:	4633      	movgt	r3, r6
d004b5e2:	f1c4 06b4 	rsb	r6, r4, #180	; 0xb4
d004b5e6:	fb04 f406 	mul.w	r4, r4, r6
d004b5ea:	f1c1 06b4 	rsb	r6, r1, #180	; 0xb4
d004b5ee:	fb01 f106 	mul.w	r1, r1, r6
d004b5f2:	f1c2 06b4 	rsb	r6, r2, #180	; 0xb4
d004b5f6:	ebc4 39c4 	rsb	r9, r4, r4, lsl #15
d004b5fa:	eba7 0404 	sub.w	r4, r7, r4
d004b5fe:	fb02 f206 	mul.w	r2, r2, r6
d004b602:	f1c0 06b4 	rsb	r6, r0, #180	; 0xb4
d004b606:	ea4f 0989 	mov.w	r9, r9, lsl #2
d004b60a:	fb00 f006 	mul.w	r0, r0, r6
d004b60e:	f1c3 06b4 	rsb	r6, r3, #180	; 0xb4
d004b612:	fbba faf5 	udiv	sl, sl, r5
d004b616:	fb03 f306 	mul.w	r3, r3, r6
d004b61a:	ebc1 36c1 	rsb	r6, r1, r1, lsl #15
d004b61e:	ebc2 35c2 	rsb	r5, r2, r2, lsl #15
d004b622:	eba7 0101 	sub.w	r1, r7, r1
d004b626:	ea4f 0686 	mov.w	r6, r6, lsl #2
d004b62a:	eba7 0202 	sub.w	r2, r7, r2
d004b62e:	fb08 f80a 	mul.w	r8, r8, sl
d004b632:	ea4f 0a85 	mov.w	sl, r5, lsl #2
d004b636:	fbb9 f4f4 	udiv	r4, r9, r4
d004b63a:	ebc0 39c0 	rsb	r9, r0, r0, lsl #15
d004b63e:	eba7 0000 	sub.w	r0, r7, r0
d004b642:	eba7 0703 	sub.w	r7, r7, r3
d004b646:	ebc3 33c3 	rsb	r3, r3, r3, lsl #15
d004b64a:	ea4f 0989 	mov.w	r9, r9, lsl #2
d004b64e:	ea4f 0383 	mov.w	r3, r3, lsl #2
d004b652:	fbb6 f1f1 	udiv	r1, r6, r1
d004b656:	fbb3 f7f7 	udiv	r7, r3, r7
d004b65a:	fbb9 f0f0 	udiv	r0, r9, r0
d004b65e:	fbba f2f2 	udiv	r2, sl, r2
d004b662:	fb0b f604 	mul.w	r6, fp, r4
d004b666:	9c01      	ldr	r4, [sp, #4]
d004b668:	bfcc      	ite	gt
d004b66a:	f04f 33ff 	movgt.w	r3, #4294967295	; 0xffffffff
d004b66e:	2301      	movle	r3, #1
d004b670:	fb04 f501 	mul.w	r5, r4, r1
d004b674:	4c3e      	ldr	r4, [pc, #248]	; (d004b770 <draw_cube+0x380>)
d004b676:	fb0c fc00 	mul.w	ip, ip, r0
d004b67a:	4939      	ldr	r1, [pc, #228]	; (d004b760 <draw_cube+0x370>)
d004b67c:	fb0e fe02 	mul.w	lr, lr, r2
d004b680:	4620      	mov	r0, r4
d004b682:	fb03 f707 	mul.w	r7, r3, r7
d004b686:	f9b1 3004 	ldrsh.w	r3, [r1, #4]
d004b68a:	3008      	adds	r0, #8
d004b68c:	f9b1 9002 	ldrsh.w	r9, [r1, #2]
d004b690:	fb03 fa06 	mul.w	sl, r3, r6
d004b694:	f9b1 2006 	ldrsh.w	r2, [r1, #6]
d004b698:	fb09 fb06 	mul.w	fp, r9, r6
d004b69c:	fb09 a908 	mla	r9, r9, r8, sl
d004b6a0:	f931 ab08 	ldrsh.w	sl, [r1], #8
d004b6a4:	f820 2c02 	strh.w	r2, [r0, #-2]
d004b6a8:	f349 39cf 	sbfx	r9, r9, #15, #16
d004b6ac:	fb03 b318 	mls	r3, r3, r8, fp
d004b6b0:	fb09 f205 	mul.w	r2, r9, r5
d004b6b4:	f343 33cf 	sbfx	r3, r3, #15, #16
d004b6b8:	fb09 f90e 	mul.w	r9, r9, lr
d004b6bc:	fb0a 220e 	mla	r2, sl, lr, r2
d004b6c0:	fb0a 9915 	mls	r9, sl, r5, r9
d004b6c4:	f342 32cf 	sbfx	r2, r2, #15, #16
d004b6c8:	fb03 fb07 	mul.w	fp, r3, r7
d004b6cc:	ea4f 39e9 	mov.w	r9, r9, asr #15
d004b6d0:	fb02 fa07 	mul.w	sl, r2, r7
d004b6d4:	fb02 b20c 	mla	r2, r2, ip, fp
d004b6d8:	fb03 a31c 	mls	r3, r3, ip, sl
d004b6dc:	13d2      	asrs	r2, r2, #15
d004b6de:	f820 9c04 	strh.w	r9, [r0, #-4]
d004b6e2:	13db      	asrs	r3, r3, #15
d004b6e4:	f820 2c06 	strh.w	r2, [r0, #-6]
d004b6e8:	f820 3c08 	strh.w	r3, [r0, #-8]
d004b6ec:	4b21      	ldr	r3, [pc, #132]	; (d004b774 <draw_cube+0x384>)
d004b6ee:	428b      	cmp	r3, r1
d004b6f0:	d1c9      	bne.n	d004b686 <draw_cube+0x296>
d004b6f2:	f10d 0027 	add.w	r0, sp, #39	; 0x27
d004b6f6:	f10d 05bd 	add.w	r5, sp, #189	; 0xbd
d004b6fa:	2700      	movs	r7, #0
d004b6fc:	a930      	add	r1, sp, #192	; 0xc0
d004b6fe:	2601      	movs	r6, #1
d004b700:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
d004b704:	f503 7cfa 	add.w	ip, r3, #500	; 0x1f4
d004b708:	f1bc 0f00 	cmp.w	ip, #0
d004b70c:	f340 8134 	ble.w	d004b978 <draw_cube+0x588>
d004b710:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
d004b714:	3104      	adds	r1, #4
d004b716:	f934 3b08 	ldrsh.w	r3, [r4], #8
d004b71a:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d004b71e:	f800 6f01 	strb.w	r6, [r0, #1]!
d004b722:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d004b726:	42a8      	cmp	r0, r5
d004b728:	ea4f 1202 	mov.w	r2, r2, lsl #4
d004b72c:	ea4f 1303 	mov.w	r3, r3, lsl #4
d004b730:	fb92 f2fc 	sdiv	r2, r2, ip
d004b734:	fb93 f3fc 	sdiv	r3, r3, ip
d004b738:	f1c2 02a0 	rsb	r2, r2, #160	; 0xa0
d004b73c:	f103 03f0 	add.w	r3, r3, #240	; 0xf0
d004b740:	f821 2c02 	strh.w	r2, [r1, #-2]
d004b744:	f821 3c04 	strh.w	r3, [r1, #-4]
d004b748:	d1da      	bne.n	d004b700 <draw_cube+0x310>
d004b74a:	f8df b034 	ldr.w	fp, [pc, #52]	; d004b780 <draw_cube+0x390>
d004b74e:	e019      	b.n	d004b784 <draw_cube+0x394>
d004b750:	d0052754 	.word	0xd0052754
d004b754:	d0053b98 	.word	0xd0053b98
d004b758:	d0052804 	.word	0xd0052804
d004b75c:	d0054050 	.word	0xd0054050
d004b760:	d00536e4 	.word	0xd00536e4
d004b764:	d00527c8 	.word	0xd00527c8
d004b768:	b60b60b7 	.word	0xb60b60b7
d004b76c:	d00527cc 	.word	0xd00527cc
d004b770:	d0053b9c 	.word	0xd0053b9c
d004b774:	d0053b94 	.word	0xd0053b94
d004b778:	d0052750 	.word	0xd0052750
d004b77c:	d00527d0 	.word	0xd00527d0
d004b780:	d00530c0 	.word	0xd00530c0
d004b784:	f9bb 3000 	ldrsh.w	r3, [fp]
d004b788:	aa0a      	add	r2, sp, #40	; 0x28
d004b78a:	5cd2      	ldrb	r2, [r2, r3]
d004b78c:	2a00      	cmp	r2, #0
d004b78e:	f000 80e9 	beq.w	d004b964 <draw_cube+0x574>
d004b792:	f9bb 2002 	ldrsh.w	r2, [fp, #2]
d004b796:	a90a      	add	r1, sp, #40	; 0x28
d004b798:	5c88      	ldrb	r0, [r1, r2]
d004b79a:	2800      	cmp	r0, #0
d004b79c:	f000 80e2 	beq.w	d004b964 <draw_cube+0x574>
d004b7a0:	f9bb 5004 	ldrsh.w	r5, [fp, #4]
d004b7a4:	5d48      	ldrb	r0, [r1, r5]
d004b7a6:	2800      	cmp	r0, #0
d004b7a8:	f000 80dc 	beq.w	d004b964 <draw_cube+0x574>
d004b7ac:	a930      	add	r1, sp, #192	; 0xc0
d004b7ae:	eb01 0083 	add.w	r0, r1, r3, lsl #2
d004b7b2:	f931 8023 	ldrsh.w	r8, [r1, r3, lsl #2]
d004b7b6:	eb01 0385 	add.w	r3, r1, r5, lsl #2
d004b7ba:	f931 4022 	ldrsh.w	r4, [r1, r2, lsl #2]
d004b7be:	f9b0 7002 	ldrsh.w	r7, [r0, #2]
d004b7c2:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d004b7c6:	f9b3 0002 	ldrsh.w	r0, [r3, #2]
d004b7ca:	eba4 0608 	sub.w	r6, r4, r8
d004b7ce:	f931 c025 	ldrsh.w	ip, [r1, r5, lsl #2]
d004b7d2:	1bc3      	subs	r3, r0, r7
d004b7d4:	f9b2 5002 	ldrsh.w	r5, [r2, #2]
d004b7d8:	9604      	str	r6, [sp, #16]
d004b7da:	ebac 0208 	sub.w	r2, ip, r8
d004b7de:	fb06 f303 	mul.w	r3, r6, r3
d004b7e2:	1bee      	subs	r6, r5, r7
d004b7e4:	fb06 3312 	mls	r3, r6, r2, r3
d004b7e8:	9601      	str	r6, [sp, #4]
d004b7ea:	2b00      	cmp	r3, #0
d004b7ec:	f2c0 80ba 	blt.w	d004b964 <draw_cube+0x574>
d004b7f0:	9900      	ldr	r1, [sp, #0]
d004b7f2:	2900      	cmp	r1, #0
d004b7f4:	f000 80b6 	beq.w	d004b964 <draw_cube+0x574>
d004b7f8:	680a      	ldr	r2, [r1, #0]
d004b7fa:	2a00      	cmp	r2, #0
d004b7fc:	f000 80b2 	beq.w	d004b964 <draw_cube+0x574>
d004b800:	4544      	cmp	r4, r8
d004b802:	46a6      	mov	lr, r4
d004b804:	4626      	mov	r6, r4
d004b806:	462a      	mov	r2, r5
d004b808:	bfa8      	it	ge
d004b80a:	46c6      	movge	lr, r8
d004b80c:	4544      	cmp	r4, r8
d004b80e:	46aa      	mov	sl, r5
d004b810:	f8b1 9004 	ldrh.w	r9, [r1, #4]
d004b814:	bfb8      	it	lt
d004b816:	4646      	movlt	r6, r8
d004b818:	42bd      	cmp	r5, r7
d004b81a:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
d004b81e:	bfa8      	it	ge
d004b820:	463a      	movge	r2, r7
d004b822:	42bd      	cmp	r5, r7
d004b824:	bfb8      	it	lt
d004b826:	46ba      	movlt	sl, r7
d004b828:	45e6      	cmp	lr, ip
d004b82a:	bfa8      	it	ge
d004b82c:	46e6      	movge	lr, ip
d004b82e:	4566      	cmp	r6, ip
d004b830:	4651      	mov	r1, sl
d004b832:	bfb8      	it	lt
d004b834:	4666      	movlt	r6, ip
d004b836:	4282      	cmp	r2, r0
d004b838:	bfa8      	it	ge
d004b83a:	4602      	movge	r2, r0
d004b83c:	4582      	cmp	sl, r0
d004b83e:	bfb8      	it	lt
d004b840:	4601      	movlt	r1, r0
d004b842:	f1be 0f00 	cmp.w	lr, #0
d004b846:	9105      	str	r1, [sp, #20]
d004b848:	f2c0 80ab 	blt.w	d004b9a2 <draw_cube+0x5b2>
d004b84c:	45ce      	cmp	lr, r9
d004b84e:	4671      	mov	r1, lr
d004b850:	bfa8      	it	ge
d004b852:	4649      	movge	r1, r9
d004b854:	9103      	str	r1, [sp, #12]
d004b856:	2e00      	cmp	r6, #0
d004b858:	f2c0 80a0 	blt.w	d004b99c <draw_cube+0x5ac>
d004b85c:	454e      	cmp	r6, r9
d004b85e:	4631      	mov	r1, r6
d004b860:	bfa8      	it	ge
d004b862:	4649      	movge	r1, r9
d004b864:	9102      	str	r1, [sp, #8]
d004b866:	9900      	ldr	r1, [sp, #0]
d004b868:	2a00      	cmp	r2, #0
d004b86a:	f8b1 a006 	ldrh.w	sl, [r1, #6]
d004b86e:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
d004b872:	f2c0 808b 	blt.w	d004b98c <draw_cube+0x59c>
d004b876:	4552      	cmp	r2, sl
d004b878:	9905      	ldr	r1, [sp, #20]
d004b87a:	bfa8      	it	ge
d004b87c:	4652      	movge	r2, sl
d004b87e:	2900      	cmp	r1, #0
d004b880:	f2c0 8089 	blt.w	d004b996 <draw_cube+0x5a6>
d004b884:	4551      	cmp	r1, sl
d004b886:	bfa8      	it	ge
d004b888:	4651      	movge	r1, sl
d004b88a:	9105      	str	r1, [sp, #20]
d004b88c:	9e03      	ldr	r6, [sp, #12]
d004b88e:	9902      	ldr	r1, [sp, #8]
d004b890:	428e      	cmp	r6, r1
d004b892:	dc67      	bgt.n	d004b964 <draw_cube+0x574>
d004b894:	9905      	ldr	r1, [sp, #20]
d004b896:	428a      	cmp	r2, r1
d004b898:	dc64      	bgt.n	d004b964 <draw_cube+0x574>
d004b89a:	2b00      	cmp	r3, #0
d004b89c:	d062      	beq.n	d004b964 <draw_cube+0x574>
d004b89e:	ebac 0104 	sub.w	r1, ip, r4
d004b8a2:	1b56      	subs	r6, r2, r5
d004b8a4:	eba8 030c 	sub.w	r3, r8, ip
d004b8a8:	eba2 0900 	sub.w	r9, r2, r0
d004b8ac:	fb01 f606 	mul.w	r6, r1, r6
d004b8b0:	9107      	str	r1, [sp, #28]
d004b8b2:	9903      	ldr	r1, [sp, #12]
d004b8b4:	9306      	str	r3, [sp, #24]
d004b8b6:	eba1 0e08 	sub.w	lr, r1, r8
d004b8ba:	eba1 0c0c 	sub.w	ip, r1, ip
d004b8be:	9906      	ldr	r1, [sp, #24]
d004b8c0:	eba2 0807 	sub.w	r8, r2, r7
d004b8c4:	9b03      	ldr	r3, [sp, #12]
d004b8c6:	1a3f      	subs	r7, r7, r0
d004b8c8:	fb01 f909 	mul.w	r9, r1, r9
d004b8cc:	9904      	ldr	r1, [sp, #16]
d004b8ce:	1b1c      	subs	r4, r3, r4
d004b8d0:	1b43      	subs	r3, r0, r5
d004b8d2:	fb01 f808 	mul.w	r8, r1, r8
d004b8d6:	f89b 1006 	ldrb.w	r1, [fp, #6]
d004b8da:	fb03 6614 	mls	r6, r3, r4, r6
d004b8de:	1a2b      	subs	r3, r5, r0
d004b8e0:	9108      	str	r1, [sp, #32]
d004b8e2:	46ba      	mov	sl, r7
d004b8e4:	9901      	ldr	r1, [sp, #4]
d004b8e6:	fb07 991c 	mls	r9, r7, ip, r9
d004b8ea:	f8cd b024 	str.w	fp, [sp, #36]	; 0x24
d004b8ee:	469b      	mov	fp, r3
d004b8f0:	fb01 881e 	mls	r8, r1, lr, r8
d004b8f4:	46b6      	mov	lr, r6
d004b8f6:	9900      	ldr	r1, [sp, #0]
d004b8f8:	0fd7      	lsrs	r7, r2, #31
d004b8fa:	4645      	mov	r5, r8
d004b8fc:	464c      	mov	r4, r9
d004b8fe:	4670      	mov	r0, lr
d004b900:	9b03      	ldr	r3, [sp, #12]
d004b902:	9700      	str	r7, [sp, #0]
d004b904:	2800      	cmp	r0, #0
d004b906:	4458      	add	r0, fp
d004b908:	db17      	blt.n	d004b93a <draw_cube+0x54a>
d004b90a:	2c00      	cmp	r4, #0
d004b90c:	db15      	blt.n	d004b93a <draw_cube+0x54a>
d004b90e:	2d00      	cmp	r5, #0
d004b910:	db13      	blt.n	d004b93a <draw_cube+0x54a>
d004b912:	680e      	ldr	r6, [r1, #0]
d004b914:	b18e      	cbz	r6, d004b93a <draw_cube+0x54a>
d004b916:	2b00      	cmp	r3, #0
d004b918:	db0f      	blt.n	d004b93a <draw_cube+0x54a>
d004b91a:	9f00      	ldr	r7, [sp, #0]
d004b91c:	b96f      	cbnz	r7, d004b93a <draw_cube+0x54a>
d004b91e:	f8b1 c004 	ldrh.w	ip, [r1, #4]
d004b922:	459c      	cmp	ip, r3
d004b924:	dd09      	ble.n	d004b93a <draw_cube+0x54a>
d004b926:	f8b1 c006 	ldrh.w	ip, [r1, #6]
d004b92a:	4594      	cmp	ip, r2
d004b92c:	dd05      	ble.n	d004b93a <draw_cube+0x54a>
d004b92e:	f8b1 c008 	ldrh.w	ip, [r1, #8]
d004b932:	9f08      	ldr	r7, [sp, #32]
d004b934:	fb03 660c 	mla	r6, r3, ip, r6
d004b938:	54b7      	strb	r7, [r6, r2]
d004b93a:	9e01      	ldr	r6, [sp, #4]
d004b93c:	3301      	adds	r3, #1
d004b93e:	eba4 040a 	sub.w	r4, r4, sl
d004b942:	1bad      	subs	r5, r5, r6
d004b944:	9e02      	ldr	r6, [sp, #8]
d004b946:	429e      	cmp	r6, r3
d004b948:	dadc      	bge.n	d004b904 <draw_cube+0x514>
d004b94a:	9b07      	ldr	r3, [sp, #28]
d004b94c:	3201      	adds	r2, #1
d004b94e:	449e      	add	lr, r3
d004b950:	9b06      	ldr	r3, [sp, #24]
d004b952:	4499      	add	r9, r3
d004b954:	9b04      	ldr	r3, [sp, #16]
d004b956:	4498      	add	r8, r3
d004b958:	9b05      	ldr	r3, [sp, #20]
d004b95a:	4293      	cmp	r3, r2
d004b95c:	dacc      	bge.n	d004b8f8 <draw_cube+0x508>
d004b95e:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
d004b962:	9100      	str	r1, [sp, #0]
d004b964:	f10b 0b08 	add.w	fp, fp, #8
d004b968:	4b15      	ldr	r3, [pc, #84]	; (d004b9c0 <draw_cube+0x5d0>)
d004b96a:	455b      	cmp	r3, fp
d004b96c:	f47f af0a 	bne.w	d004b784 <draw_cube+0x394>
d004b970:	f50d 7d47 	add.w	sp, sp, #796	; 0x31c
d004b974:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004b978:	f800 7f01 	strb.w	r7, [r0, #1]!
d004b97c:	4285      	cmp	r5, r0
d004b97e:	f104 0408 	add.w	r4, r4, #8
d004b982:	f101 0104 	add.w	r1, r1, #4
d004b986:	f47f aebb 	bne.w	d004b700 <draw_cube+0x310>
d004b98a:	e6de      	b.n	d004b74a <draw_cube+0x35a>
d004b98c:	9905      	ldr	r1, [sp, #20]
d004b98e:	2200      	movs	r2, #0
d004b990:	2900      	cmp	r1, #0
d004b992:	f6bf af77 	bge.w	d004b884 <draw_cube+0x494>
d004b996:	2100      	movs	r1, #0
d004b998:	9105      	str	r1, [sp, #20]
d004b99a:	e777      	b.n	d004b88c <draw_cube+0x49c>
d004b99c:	2100      	movs	r1, #0
d004b99e:	9102      	str	r1, [sp, #8]
d004b9a0:	e761      	b.n	d004b866 <draw_cube+0x476>
d004b9a2:	2100      	movs	r1, #0
d004b9a4:	9103      	str	r1, [sp, #12]
d004b9a6:	e756      	b.n	d004b856 <draw_cube+0x466>
d004b9a8:	f117 0fff 	cmn.w	r7, #255	; 0xff
d004b9ac:	da06      	bge.n	d004b9bc <draw_cube+0x5cc>
d004b9ae:	f06f 01fe 	mvn.w	r1, #254	; 0xfe
d004b9b2:	2005      	movs	r0, #5
d004b9b4:	460f      	mov	r7, r1
d004b9b6:	6019      	str	r1, [r3, #0]
d004b9b8:	6010      	str	r0, [r2, #0]
d004b9ba:	e52e      	b.n	d004b41a <draw_cube+0x2a>
d004b9bc:	601f      	str	r7, [r3, #0]
d004b9be:	e52c      	b.n	d004b41a <draw_cube+0x2a>
d004b9c0:	d00536c0 	.word	0xd00536c0
d004b9c4:	00000000 	.word	0x00000000

d004b9c8 <main>:
d004b9c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004b9cc:	f8df b434 	ldr.w	fp, [pc, #1076]	; d004be04 <main+0x43c>
d004b9d0:	b0bd      	sub	sp, #244	; 0xf4
d004b9d2:	2000      	movs	r0, #0
d004b9d4:	f8df 8430 	ldr.w	r8, [pc, #1072]	; d004be08 <main+0x440>
d004b9d8:	f89b 3000 	ldrb.w	r3, [fp]
d004b9dc:	f89b 2001 	ldrb.w	r2, [fp, #1]
d004b9e0:	f89b 1002 	ldrb.w	r1, [fp, #2]
d004b9e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004b9e8:	f89b 2003 	ldrb.w	r2, [fp, #3]
d004b9ec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004b9f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004b9f4:	681b      	ldr	r3, [r3, #0]
d004b9f6:	4798      	blx	r3
d004b9f8:	f7ff fb2e 	bl	d004b058 <initMalloc>
d004b9fc:	f89b 3014 	ldrb.w	r3, [fp, #20]
d004ba00:	f89b 2015 	ldrb.w	r2, [fp, #21]
d004ba04:	f44f 7000 	mov.w	r0, #512	; 0x200
d004ba08:	f89b 1016 	ldrb.w	r1, [fp, #22]
d004ba0c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ba10:	f89b 2017 	ldrb.w	r2, [fp, #23]
d004ba14:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ba18:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ba1c:	681b      	ldr	r3, [r3, #0]
d004ba1e:	681b      	ldr	r3, [r3, #0]
d004ba20:	4798      	blx	r3
d004ba22:	f89b 2014 	ldrb.w	r2, [fp, #20]
d004ba26:	f89b 3015 	ldrb.w	r3, [fp, #21]
d004ba2a:	2101      	movs	r1, #1
d004ba2c:	f89b 4016 	ldrb.w	r4, [fp, #22]
d004ba30:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d004ba34:	f89b 0017 	ldrb.w	r0, [fp, #23]
d004ba38:	f89b 3014 	ldrb.w	r3, [fp, #20]
d004ba3c:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
d004ba40:	f89b 5015 	ldrb.w	r5, [fp, #21]
d004ba44:	f89b 4016 	ldrb.w	r4, [fp, #22]
d004ba48:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d004ba4c:	f89b 0017 	ldrb.w	r0, [fp, #23]
d004ba50:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d004ba54:	2506      	movs	r5, #6
d004ba56:	6812      	ldr	r2, [r2, #0]
d004ba58:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d004ba5c:	6852      	ldr	r2, [r2, #4]
d004ba5e:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004ba62:	7011      	strb	r1, [r2, #0]
d004ba64:	681b      	ldr	r3, [r3, #0]
d004ba66:	68db      	ldr	r3, [r3, #12]
d004ba68:	4798      	blx	r3
d004ba6a:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004ba6e:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004ba72:	2190      	movs	r1, #144	; 0x90
d004ba74:	f89b 400e 	ldrb.w	r4, [fp, #14]
d004ba78:	20dc      	movs	r0, #220	; 0xdc
d004ba7a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ba7e:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004ba82:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d004ba86:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ba8a:	681b      	ldr	r3, [r3, #0]
d004ba8c:	691b      	ldr	r3, [r3, #16]
d004ba8e:	4798      	blx	r3
d004ba90:	f89b 400c 	ldrb.w	r4, [fp, #12]
d004ba94:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004ba98:	f44f 7320 	mov.w	r3, #640	; 0x280
d004ba9c:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004baa0:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d004baa4:	f89b 000f 	ldrb.w	r0, [fp, #15]
d004baa8:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d004baac:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d004bab0:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004bab4:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d004bab8:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d004babc:	6824      	ldr	r4, [r4, #0]
d004babe:	9500      	str	r5, [sp, #0]
d004bac0:	6964      	ldr	r4, [r4, #20]
d004bac2:	47a0      	blx	r4
d004bac4:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004bac8:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004bacc:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004bad0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004bad4:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004bad8:	4cc3      	ldr	r4, [pc, #780]	; (d004bde8 <main+0x420>)
d004bada:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004bade:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004bae2:	681b      	ldr	r3, [r3, #0]
d004bae4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d004bae6:	4798      	blx	r3
d004bae8:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004baec:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004baf0:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004baf4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004baf8:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004bafc:	6020      	str	r0, [r4, #0]
d004bafe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004bb02:	4cba      	ldr	r4, [pc, #744]	; (d004bdec <main+0x424>)
d004bb04:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004bb08:	681b      	ldr	r3, [r3, #0]
d004bb0a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d004bb0c:	4798      	blx	r3
d004bb0e:	4603      	mov	r3, r0
d004bb10:	f44f 7220 	mov.w	r2, #640	; 0x280
d004bb14:	f44f 7170 	mov.w	r1, #960	; 0x3c0
d004bb18:	48b5      	ldr	r0, [pc, #724]	; (d004bdf0 <main+0x428>)
d004bb1a:	6023      	str	r3, [r4, #0]
d004bb1c:	f7ff fa8e 	bl	d004b03c <gfx_createBitmap>
d004bb20:	f04f 407f 	mov.w	r0, #4278190080	; 0xff000000
d004bb24:	f04f 417f 	mov.w	r1, #4278190080	; 0xff000000
d004bb28:	4643      	mov	r3, r8
d004bb2a:	f508 6280 	add.w	r2, r8, #1024	; 0x400
d004bb2e:	e8e3 0102 	strd	r0, r1, [r3], #8
d004bb32:	4293      	cmp	r3, r2
d004bb34:	d1fb      	bne.n	d004bb2e <main+0x166>
d004bb36:	a79a      	add	r7, pc, #616	; (adr r7, d004bda0 <main+0x3d8>)
d004bb38:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb3c:	4cad      	ldr	r4, [pc, #692]	; (d004bdf4 <main+0x42c>)
d004bb3e:	f10d 0e60 	add.w	lr, sp, #96	; 0x60
d004bb42:	f04f 497f 	mov.w	r9, #4278190080	; 0xff000000
d004bb46:	f8df a2c4 	ldr.w	sl, [pc, #708]	; d004be0c <main+0x444>
d004bb4a:	f10d 0c90 	add.w	ip, sp, #144	; 0x90
d004bb4e:	ad30      	add	r5, sp, #192	; 0xc0
d004bb50:	e9c8 6700 	strd	r6, r7, [r8]
d004bb54:	a794      	add	r7, pc, #592	; (adr r7, d004bda8 <main+0x3e0>)
d004bb56:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb5a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004bb5c:	e9c8 6702 	strd	r6, r7, [r8, #8]
d004bb60:	a793      	add	r7, pc, #588	; (adr r7, d004bdb0 <main+0x3e8>)
d004bb62:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb66:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004bb6a:	e9c8 6704 	strd	r6, r7, [r8, #16]
d004bb6e:	a792      	add	r7, pc, #584	; (adr r7, d004bdb8 <main+0x3f0>)
d004bb70:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb74:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004bb76:	e9c8 6706 	strd	r6, r7, [r8, #24]
d004bb7a:	a791      	add	r7, pc, #580	; (adr r7, d004bdc0 <main+0x3f8>)
d004bb7c:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb80:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d004bb84:	e9c8 6708 	strd	r6, r7, [r8, #32]
d004bb88:	a78f      	add	r7, pc, #572	; (adr r7, d004bdc8 <main+0x400>)
d004bb8a:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb8e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d004bb92:	e9c8 670a 	strd	r6, r7, [r8, #40]	; 0x28
d004bb96:	a78e      	add	r7, pc, #568	; (adr r7, d004bdd0 <main+0x408>)
d004bb98:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bb9c:	e9c8 9a12 	strd	r9, sl, [r8, #72]	; 0x48
d004bba0:	e9c8 670c 	strd	r6, r7, [r8, #48]	; 0x30
d004bba4:	a78c      	add	r7, pc, #560	; (adr r7, d004bdd8 <main+0x410>)
d004bba6:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bbaa:	f104 0910 	add.w	r9, r4, #16
d004bbae:	3440      	adds	r4, #64	; 0x40
d004bbb0:	e9c8 670e 	strd	r6, r7, [r8, #56]	; 0x38
d004bbb4:	a78a      	add	r7, pc, #552	; (adr r7, d004bde0 <main+0x418>)
d004bbb6:	e9d7 6700 	ldrd	r6, r7, [r7]
d004bbba:	e9c8 6710 	strd	r6, r7, [r8, #64]	; 0x40
d004bbbe:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
d004bbc2:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d004bbc6:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004bbca:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d004bbce:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004bbd2:	e899 000f 	ldmia.w	r9, {r0, r1, r2, r3}
d004bbd6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004bbda:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004bbdc:	2600      	movs	r6, #0
d004bbde:	f8df e230 	ldr.w	lr, [pc, #560]	; d004be10 <main+0x448>
d004bbe2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004bbe4:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004bbe6:	9603      	str	r6, [sp, #12]
d004bbe8:	ae18      	add	r6, sp, #96	; 0x60
d004bbea:	46f2      	mov	sl, lr
d004bbec:	9608      	str	r6, [sp, #32]
d004bbee:	ae24      	add	r6, sp, #144	; 0x90
d004bbf0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004bbf2:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d004bbf6:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d004bbfa:	4b7f      	ldr	r3, [pc, #508]	; (d004bdf8 <main+0x430>)
d004bbfc:	9607      	str	r6, [sp, #28]
d004bbfe:	ae30      	add	r6, sp, #192	; 0xc0
d004bc00:	930f      	str	r3, [sp, #60]	; 0x3c
d004bc02:	4b7e      	ldr	r3, [pc, #504]	; (d004bdfc <main+0x434>)
d004bc04:	9609      	str	r6, [sp, #36]	; 0x24
d004bc06:	930a      	str	r3, [sp, #40]	; 0x28
d004bc08:	9b07      	ldr	r3, [sp, #28]
d004bc0a:	9a03      	ldr	r2, [sp, #12]
d004bc0c:	8819      	ldrh	r1, [r3, #0]
d004bc0e:	9205      	str	r2, [sp, #20]
d004bc10:	885a      	ldrh	r2, [r3, #2]
d004bc12:	ebc1 2541 	rsb	r5, r1, r1, lsl #9
d004bc16:	889b      	ldrh	r3, [r3, #4]
d004bc18:	9f08      	ldr	r7, [sp, #32]
d004bc1a:	ebc2 2442 	rsb	r4, r2, r2, lsl #9
d004bc1e:	ebc3 2043 	rsb	r0, r3, r3, lsl #9
d004bc22:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
d004bc26:	f8b7 c000 	ldrh.w	ip, [r7]
d004bc2a:	eb02 0484 	add.w	r4, r2, r4, lsl #2
d004bc2e:	887e      	ldrh	r6, [r7, #2]
d004bc30:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d004bc34:	f8b7 8004 	ldrh.w	r8, [r7, #4]
d004bc38:	eb01 0585 	add.w	r5, r1, r5, lsl #2
d004bc3c:	9f09      	ldr	r7, [sp, #36]	; 0x24
d004bc3e:	ebc3 00c0 	rsb	r0, r3, r0, lsl #3
d004bc42:	9404      	str	r4, [sp, #16]
d004bc44:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bc48:	883c      	ldrh	r4, [r7, #0]
d004bc4a:	ebc1 05c5 	rsb	r5, r1, r5, lsl #3
d004bc4e:	f8b7 e002 	ldrh.w	lr, [r7, #2]
d004bc52:	eb0c 0c8c 	add.w	ip, ip, ip, lsl #2
d004bc56:	940b      	str	r4, [sp, #44]	; 0x2c
d004bc58:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d004bc5c:	9c03      	ldr	r4, [sp, #12]
d004bc5e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bc62:	f8cd e030 	str.w	lr, [sp, #48]	; 0x30
d004bc66:	eb0c 0c8c 	add.w	ip, ip, ip, lsl #2
d004bc6a:	f8b7 e004 	ldrh.w	lr, [r7, #4]
d004bc6e:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d004bc72:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
d004bc74:	eb06 0686 	add.w	r6, r6, r6, lsl #2
d004bc78:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
d004bc7c:	f104 0e19 	add.w	lr, r4, #25
d004bc80:	9c04      	ldr	r4, [sp, #16]
d004bc82:	00ad      	lsls	r5, r5, #2
d004bc84:	f8cd e058 	str.w	lr, [sp, #88]	; 0x58
d004bc88:	0080      	lsls	r0, r0, #2
d004bc8a:	ebc2 04c4 	rsb	r4, r2, r4, lsl #3
d004bc8e:	ebc7 3ec7 	rsb	lr, r7, r7, lsl #15
d004bc92:	9f0c      	ldr	r7, [sp, #48]	; 0x30
d004bc94:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d004bc98:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d004bc9c:	005b      	lsls	r3, r3, #1
d004bc9e:	eb06 0686 	add.w	r6, r6, r6, lsl #2
d004bca2:	eb05 058c 	add.w	r5, r5, ip, lsl #2
d004bca6:	b29b      	uxth	r3, r3
d004bca8:	ebc7 3cc7 	rsb	ip, r7, r7, lsl #15
d004bcac:	9f0d      	ldr	r7, [sp, #52]	; 0x34
d004bcae:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d004bcb2:	9313      	str	r3, [sp, #76]	; 0x4c
d004bcb4:	00a4      	lsls	r4, r4, #2
d004bcb6:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d004bcba:	eb00 0088 	add.w	r0, r0, r8, lsl #2
d004bcbe:	eb04 0486 	add.w	r4, r4, r6, lsl #2
d004bcc2:	b283      	uxth	r3, r0
d004bcc4:	ebc7 36c7 	rsb	r6, r7, r7, lsl #15
d004bcc8:	464f      	mov	r7, r9
d004bcca:	0049      	lsls	r1, r1, #1
d004bccc:	9312      	str	r3, [sp, #72]	; 0x48
d004bcce:	0052      	lsls	r2, r2, #1
d004bcd0:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
d004bcd4:	b289      	uxth	r1, r1
d004bcd6:	b292      	uxth	r2, r2
d004bcd8:	fa1f f38c 	uxth.w	r3, ip
d004bcdc:	9115      	str	r1, [sp, #84]	; 0x54
d004bcde:	0076      	lsls	r6, r6, #1
d004bce0:	9214      	str	r2, [sp, #80]	; 0x50
d004bce2:	9306      	str	r3, [sp, #24]
d004bce4:	b2a2      	uxth	r2, r4
d004bce6:	b2b3      	uxth	r3, r6
d004bce8:	ea4f 0e4e 	mov.w	lr, lr, lsl #1
d004bcec:	9211      	str	r2, [sp, #68]	; 0x44
d004bcee:	b2a9      	uxth	r1, r5
d004bcf0:	fa1f fe8e 	uxth.w	lr, lr
d004bcf4:	9110      	str	r1, [sp, #64]	; 0x40
d004bcf6:	9304      	str	r3, [sp, #16]
d004bcf8:	9b06      	ldr	r3, [sp, #24]
d004bcfa:	9c05      	ldr	r4, [sp, #20]
d004bcfc:	f8cd a05c 	str.w	sl, [sp, #92]	; 0x5c
d004bd00:	f107 0028 	add.w	r0, r7, #40	; 0x28
d004bd04:	eb0e 018e 	add.w	r1, lr, lr, lsl #2
d004bd08:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004bd0c:	9b04      	ldr	r3, [sp, #16]
d004bd0e:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d004bd12:	900e      	str	r0, [sp, #56]	; 0x38
d004bd14:	9810      	ldr	r0, [sp, #64]	; 0x40
d004bd16:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bd1a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d004bd1e:	eb00 0141 	add.w	r1, r0, r1, lsl #1
d004bd22:	9811      	ldr	r0, [sp, #68]	; 0x44
d004bd24:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d004bd28:	eb00 0242 	add.w	r2, r0, r2, lsl #1
d004bd2c:	9812      	ldr	r0, [sp, #72]	; 0x48
d004bd2e:	b289      	uxth	r1, r1
d004bd30:	eb00 0343 	add.w	r3, r0, r3, lsl #1
d004bd34:	4832      	ldr	r0, [pc, #200]	; (d004be00 <main+0x438>)
d004bd36:	b292      	uxth	r2, r2
d004bd38:	b29b      	uxth	r3, r3
d004bd3a:	eb00 0cc4 	add.w	ip, r0, r4, lsl #3
d004bd3e:	b214      	sxth	r4, r2
d004bd40:	f04f 0000 	mov.w	r0, #0
d004bd44:	b20d      	sxth	r5, r1
d004bd46:	f04f 4680 	mov.w	r6, #1073741824	; 0x40000000
d004bd4a:	fb04 f804 	mul.w	r8, r4, r4
d004bd4e:	80f8      	strh	r0, [r7, #6]
d004bd50:	b218      	sxth	r0, r3
d004bd52:	fb05 8805 	mla	r8, r5, r5, r8
d004bd56:	807c      	strh	r4, [r7, #2]
d004bd58:	fb00 8800 	mla	r8, r0, r0, r8
d004bd5c:	803d      	strh	r5, [r7, #0]
d004bd5e:	f1b8 4f80 	cmp.w	r8, #1073741824	; 0x40000000
d004bd62:	80b8      	strh	r0, [r7, #4]
d004bd64:	d204      	bcs.n	d004bd70 <main+0x3a8>
d004bd66:	08b6      	lsrs	r6, r6, #2
d004bd68:	45b0      	cmp	r8, r6
d004bd6a:	d3fc      	bcc.n	d004bd66 <main+0x39e>
d004bd6c:	2e00      	cmp	r6, #0
d004bd6e:	d051      	beq.n	d004be14 <main+0x44c>
d004bd70:	f04f 0900 	mov.w	r9, #0
d004bd74:	e005      	b.n	d004bd82 <main+0x3ba>
d004bd76:	eb06 0959 	add.w	r9, r6, r9, lsr #1
d004bd7a:	eba8 080a 	sub.w	r8, r8, sl
d004bd7e:	08b6      	lsrs	r6, r6, #2
d004bd80:	d007      	beq.n	d004bd92 <main+0x3ca>
d004bd82:	eb06 0a09 	add.w	sl, r6, r9
d004bd86:	45c2      	cmp	sl, r8
d004bd88:	d9f5      	bls.n	d004bd76 <main+0x3ae>
d004bd8a:	08b6      	lsrs	r6, r6, #2
d004bd8c:	ea4f 0959 	mov.w	r9, r9, lsr #1
d004bd90:	d1f7      	bne.n	d004bd82 <main+0x3ba>
d004bd92:	464e      	mov	r6, r9
d004bd94:	2e01      	cmp	r6, #1
d004bd96:	bf38      	it	cc
d004bd98:	2601      	movcc	r6, #1
d004bd9a:	e03c      	b.n	d004be16 <main+0x44e>
d004bd9c:	f3af 8000 	nop.w
d004bda0:	00000000 	.word	0x00000000
d004bda4:	8f245dff 	.word	0x8f245dff
d004bda8:	8f24e06f 	.word	0x8f24e06f
d004bdac:	8fff3d52 	.word	0x8fff3d52
d004bdb0:	8fb24bff 	.word	0x8fb24bff
d004bdb4:	8ffff040 	.word	0x8ffff040
d004bdb8:	8fff9a24 	.word	0x8fff9a24
d004bdbc:	6f102c88 	.word	0x6f102c88
d004bdc0:	6f08763f 	.word	0x6f08763f
d004bdc4:	6f8d1723 	.word	0x6f8d1723
d004bdc8:	6f5a257f 	.word	0x6f5a257f
d004bdcc:	6f8f8420 	.word	0x6f8f8420
d004bdd0:	6f9a5412 	.word	0x6f9a5412
d004bdd4:	5f15315a 	.word	0x5f15315a
d004bdd8:	5fb7c7d9 	.word	0x5fb7c7d9
d004bddc:	5f07101f 	.word	0x5f07101f
d004bde0:	5fff3348 	.word	0x5fff3348
d004bde4:	ffffffff 	.word	0xffffffff
d004bde8:	d00536c0 	.word	0xd00536c0
d004bdec:	d00536e0 	.word	0xd00536e0
d004bdf0:	d00527e0 	.word	0xd00527e0
d004bdf4:	d004dba0 	.word	0xd004dba0
d004bdf8:	d004dc30 	.word	0xd004dc30
d004bdfc:	d0052804 	.word	0xd0052804
d004be00:	d0054050 	.word	0xd0054050
d004be04:	2001f000 	.word	0x2001f000
d004be08:	d0052cc0 	.word	0xd0052cc0
d004be0c:	6f000147 	.word	0x6f000147
d004be10:	d00530c0 	.word	0xd00530c0
d004be14:	2601      	movs	r6, #1
d004be16:	eb05 0885 	add.w	r8, r5, r5, lsl #2
d004be1a:	9d15      	ldr	r5, [sp, #84]	; 0x54
d004be1c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
d004be20:	3708      	adds	r7, #8
d004be22:	4429      	add	r1, r5
d004be24:	9d14      	ldr	r5, [sp, #80]	; 0x50
d004be26:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004be2a:	f10c 0c08 	add.w	ip, ip, #8
d004be2e:	442a      	add	r2, r5
d004be30:	9d13      	ldr	r5, [sp, #76]	; 0x4c
d004be32:	eb04 0484 	add.w	r4, r4, r4, lsl #2
d004be36:	442b      	add	r3, r5
d004be38:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004be3c:	eb08 0588 	add.w	r5, r8, r8, lsl #2
d004be40:	f04f 0800 	mov.w	r8, #0
d004be44:	0080      	lsls	r0, r0, #2
d004be46:	00ad      	lsls	r5, r5, #2
d004be48:	f82c 8c02 	strh.w	r8, [ip, #-2]
d004be4c:	00a4      	lsls	r4, r4, #2
d004be4e:	b289      	uxth	r1, r1
d004be50:	b292      	uxth	r2, r2
d004be52:	b29b      	uxth	r3, r3
d004be54:	fb95 f5f6 	sdiv	r5, r5, r6
d004be58:	fb94 f4f6 	sdiv	r4, r4, r6
d004be5c:	fb90 f6f6 	sdiv	r6, r0, r6
d004be60:	980e      	ldr	r0, [sp, #56]	; 0x38
d004be62:	f82c 5c08 	strh.w	r5, [ip, #-8]
d004be66:	42b8      	cmp	r0, r7
d004be68:	f82c 4c06 	strh.w	r4, [ip, #-6]
d004be6c:	f82c 6c04 	strh.w	r6, [ip, #-4]
d004be70:	f47f af65 	bne.w	d004bd3e <main+0x376>
d004be74:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d004be76:	990c      	ldr	r1, [sp, #48]	; 0x30
d004be78:	449e      	add	lr, r3
d004be7a:	9b06      	ldr	r3, [sp, #24]
d004be7c:	440b      	add	r3, r1
d004be7e:	990d      	ldr	r1, [sp, #52]	; 0x34
d004be80:	fa1f fe8e 	uxth.w	lr, lr
d004be84:	461a      	mov	r2, r3
d004be86:	9b04      	ldr	r3, [sp, #16]
d004be88:	440b      	add	r3, r1
d004be8a:	9905      	ldr	r1, [sp, #20]
d004be8c:	b292      	uxth	r2, r2
d004be8e:	b29b      	uxth	r3, r3
d004be90:	3105      	adds	r1, #5
d004be92:	9206      	str	r2, [sp, #24]
d004be94:	9304      	str	r3, [sp, #16]
d004be96:	9b16      	ldr	r3, [sp, #88]	; 0x58
d004be98:	9105      	str	r1, [sp, #20]
d004be9a:	4299      	cmp	r1, r3
d004be9c:	d003      	beq.n	d004bea6 <main+0x4de>
d004be9e:	4607      	mov	r7, r0
d004bea0:	4613      	mov	r3, r2
d004bea2:	460c      	mov	r4, r1
d004bea4:	e72c      	b.n	d004bd00 <main+0x338>
d004bea6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d004bea8:	9a03      	ldr	r2, [sp, #12]
d004beaa:	f813 1b01 	ldrb.w	r1, [r3], #1
d004beae:	b214      	sxth	r4, r2
d004beb0:	f8dd a05c 	ldr.w	sl, [sp, #92]	; 0x5c
d004beb4:	930f      	str	r3, [sp, #60]	; 0x3c
d004beb6:	b293      	uxth	r3, r2
d004beb8:	9a08      	ldr	r2, [sp, #32]
d004beba:	f103 0905 	add.w	r9, r3, #5
d004bebe:	1c58      	adds	r0, r3, #1
d004bec0:	3208      	adds	r2, #8
d004bec2:	1d9f      	adds	r7, r3, #6
d004bec4:	b200      	sxth	r0, r0
d004bec6:	f103 0e03 	add.w	lr, r3, #3
d004beca:	9208      	str	r2, [sp, #32]
d004becc:	1d8a      	adds	r2, r1, #6
d004bece:	f8aa 0002 	strh.w	r0, [sl, #2]
d004bed2:	b23f      	sxth	r7, r7
d004bed4:	b2d2      	uxtb	r2, r2
d004bed6:	f8aa 0010 	strh.w	r0, [sl, #16]
d004beda:	f8aa 0018 	strh.w	r0, [sl, #24]
d004bede:	f103 000d 	add.w	r0, r3, #13
d004bee2:	9203      	str	r2, [sp, #12]
d004bee4:	fa0f fe8e 	sxth.w	lr, lr
d004bee8:	9a07      	ldr	r2, [sp, #28]
d004beea:	b200      	sxth	r0, r0
d004beec:	f8aa 4000 	strh.w	r4, [sl]
d004bef0:	f103 0802 	add.w	r8, r3, #2
d004bef4:	3208      	adds	r2, #8
d004bef6:	9004      	str	r0, [sp, #16]
d004bef8:	f103 000e 	add.w	r0, r3, #14
d004befc:	f8aa 4008 	strh.w	r4, [sl, #8]
d004bf00:	9207      	str	r2, [sp, #28]
d004bf02:	1dde      	adds	r6, r3, #7
d004bf04:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004bf06:	b200      	sxth	r0, r0
d004bf08:	f8aa 7004 	strh.w	r7, [sl, #4]
d004bf0c:	f103 0508 	add.w	r5, r3, #8
d004bf10:	3208      	adds	r2, #8
d004bf12:	f8aa 700a 	strh.w	r7, [sl, #10]
d004bf16:	f88a 1006 	strb.w	r1, [sl, #6]
d004bf1a:	f103 0c09 	add.w	ip, r3, #9
d004bf1e:	9209      	str	r2, [sp, #36]	; 0x24
d004bf20:	fa0f f289 	sxth.w	r2, r9
d004bf24:	f88a 100e 	strb.w	r1, [sl, #14]
d004bf28:	b236      	sxth	r6, r6
d004bf2a:	920b      	str	r2, [sp, #44]	; 0x2c
d004bf2c:	b22d      	sxth	r5, r5
d004bf2e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d004bf30:	fa0f f888 	sxth.w	r8, r8
d004bf34:	f88a 1026 	strb.w	r1, [sl, #38]	; 0x26
d004bf38:	fa0f fc8c 	sxth.w	ip, ip
d004bf3c:	32c8      	adds	r2, #200	; 0xc8
d004bf3e:	f88a 102e 	strb.w	r1, [sl, #46]	; 0x2e
d004bf42:	f103 090b 	add.w	r9, r3, #11
d004bf46:	f103 040c 	add.w	r4, r3, #12
d004bf4a:	920a      	str	r2, [sp, #40]	; 0x28
d004bf4c:	f50a 7a80 	add.w	sl, sl, #256	; 0x100
d004bf50:	9a03      	ldr	r2, [sp, #12]
d004bf52:	fa0f f989 	sxth.w	r9, r9
d004bf56:	b224      	sxth	r4, r4
d004bf58:	f80a 2cea 	strb.w	r2, [sl, #-234]
d004bf5c:	f80a 2ce2 	strb.w	r2, [sl, #-226]
d004bf60:	f80a 2cca 	strb.w	r2, [sl, #-202]
d004bf64:	f103 020a 	add.w	r2, r3, #10
d004bf68:	b212      	sxth	r2, r2
d004bf6a:	920c      	str	r2, [sp, #48]	; 0x30
d004bf6c:	f82a 7ce4 	strh.w	r7, [sl, #-228]
d004bf70:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d004bf72:	f82a ecde 	strh.w	lr, [sl, #-222]
d004bf76:	f82a ecd0 	strh.w	lr, [sl, #-208]
d004bf7a:	f82a ecc8 	strh.w	lr, [sl, #-200]
d004bf7e:	f103 0e04 	add.w	lr, r3, #4
d004bf82:	f82a 2cf4 	strh.w	r2, [sl, #-244]
d004bf86:	f82a ecce 	strh.w	lr, [sl, #-206]
d004bf8a:	f103 0e0f 	add.w	lr, r3, #15
d004bf8e:	9a03      	ldr	r2, [sp, #12]
d004bf90:	9006      	str	r0, [sp, #24]
d004bf92:	fa0f fe8e 	sxth.w	lr, lr
d004bf96:	9803      	ldr	r0, [sp, #12]
d004bf98:	f80a 2cba 	strb.w	r2, [sl, #-186]
d004bf9c:	f80a 0cc2 	strb.w	r0, [sl, #-194]
d004bfa0:	9a03      	ldr	r2, [sp, #12]
d004bfa2:	980b      	ldr	r0, [sp, #44]	; 0x2c
d004bfa4:	f82a 8cee 	strh.w	r8, [sl, #-238]
d004bfa8:	f82a 8ce0 	strh.w	r8, [sl, #-224]
d004bfac:	f82a 8cd8 	strh.w	r8, [sl, #-216]
d004bfb0:	f103 0810 	add.w	r8, r3, #16
d004bfb4:	f82a 6cec 	strh.w	r6, [sl, #-236]
d004bfb8:	f82a 6ce6 	strh.w	r6, [sl, #-230]
d004bfbc:	fa0f f888 	sxth.w	r8, r8
d004bfc0:	f82a 6cd4 	strh.w	r6, [sl, #-212]
d004bfc4:	f82a 5cdc 	strh.w	r5, [sl, #-220]
d004bfc8:	f82a 5cd6 	strh.w	r5, [sl, #-214]
d004bfcc:	f82a 5cc4 	strh.w	r5, [sl, #-196]
d004bfd0:	f82a cccc 	strh.w	ip, [sl, #-204]
d004bfd4:	f82a ccc6 	strh.w	ip, [sl, #-198]
d004bfd8:	f82a cc8e 	strh.w	ip, [sl, #-142]
d004bfdc:	f103 0c11 	add.w	ip, r3, #17
d004bfe0:	f82a 0cc0 	strh.w	r0, [sl, #-192]
d004bfe4:	f82a 7cbe 	strh.w	r7, [sl, #-190]
d004bfe8:	fa0f fc8c 	sxth.w	ip, ip
d004bfec:	f82a 0cb8 	strh.w	r0, [sl, #-184]
d004bff0:	f80a 2cb2 	strb.w	r2, [sl, #-178]
d004bff4:	f82a 7cb0 	strh.w	r7, [sl, #-176]
d004bff8:	f82a 6cae 	strh.w	r6, [sl, #-174]
d004bffc:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
d004c000:	f103 0e15 	add.w	lr, r3, #21
d004c004:	f82a 7ca8 	strh.w	r7, [sl, #-168]
d004c008:	f103 0712 	add.w	r7, r3, #18
d004c00c:	f82a 5c9e 	strh.w	r5, [sl, #-158]
d004c010:	fa0f fe8e 	sxth.w	lr, lr
d004c014:	f82a 5c90 	strh.w	r5, [sl, #-144]
d004c018:	b23f      	sxth	r7, r7
d004c01a:	f82a 5c88 	strh.w	r5, [sl, #-136]
d004c01e:	f103 0516 	add.w	r5, r3, #22
d004c022:	9806      	ldr	r0, [sp, #24]
d004c024:	b22d      	sxth	r5, r5
d004c026:	f80a 2c9a 	strb.w	r2, [sl, #-154]
d004c02a:	f80a 2c92 	strb.w	r2, [sl, #-146]
d004c02e:	950b      	str	r5, [sp, #44]	; 0x2c
d004c030:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d004c032:	9d04      	ldr	r5, [sp, #16]
d004c034:	f82a 6ca0 	strh.w	r6, [sl, #-160]
d004c038:	f82a 6c98 	strh.w	r6, [sl, #-152]
d004c03c:	f103 0613 	add.w	r6, r3, #19
d004c040:	f82a 9cbc 	strh.w	r9, [sl, #-188]
d004c044:	f82a 9cb6 	strh.w	r9, [sl, #-182]
d004c048:	b236      	sxth	r6, r6
d004c04a:	f82a 9ca4 	strh.w	r9, [sl, #-164]
d004c04e:	f82a 4cac 	strh.w	r4, [sl, #-172]
d004c052:	f82a 4ca6 	strh.w	r4, [sl, #-166]
d004c056:	f82a 4c94 	strh.w	r4, [sl, #-148]
d004c05a:	f82a 5c9c 	strh.w	r5, [sl, #-156]
d004c05e:	f82a 5c96 	strh.w	r5, [sl, #-150]
d004c062:	f82a 5c84 	strh.w	r5, [sl, #-132]
d004c066:	f82a 0c8c 	strh.w	r0, [sl, #-140]
d004c06a:	f82a 0c86 	strh.w	r0, [sl, #-134]
d004c06e:	f82a 9c7e 	strh.w	r9, [sl, #-126]
d004c072:	f82a 9c70 	strh.w	r9, [sl, #-112]
d004c076:	f82a 4c6e 	strh.w	r4, [sl, #-110]
d004c07a:	f80a 1caa 	strb.w	r1, [sl, #-170]
d004c07e:	f80a 1ca2 	strb.w	r1, [sl, #-162]
d004c082:	f80a 1c8a 	strb.w	r1, [sl, #-138]
d004c086:	f80a 1c82 	strb.w	r1, [sl, #-130]
d004c08a:	f82a 2cb4 	strh.w	r2, [sl, #-180]
d004c08e:	f82a 2c80 	strh.w	r2, [sl, #-128]
d004c092:	f82a 2c78 	strh.w	r2, [sl, #-120]
d004c096:	9a03      	ldr	r2, [sp, #12]
d004c098:	9804      	ldr	r0, [sp, #16]
d004c09a:	4615      	mov	r5, r2
d004c09c:	f80a 2c6a 	strb.w	r2, [sl, #-106]
d004c0a0:	f82a 0c5e 	strh.w	r0, [sl, #-94]
d004c0a4:	f82a 0c50 	strh.w	r0, [sl, #-80]
d004c0a8:	9806      	ldr	r0, [sp, #24]
d004c0aa:	f82a 9c68 	strh.w	r9, [sl, #-104]
d004c0ae:	f103 0917 	add.w	r9, r3, #23
d004c0b2:	f80a 2c62 	strb.w	r2, [sl, #-98]
d004c0b6:	f82a 4c60 	strh.w	r4, [sl, #-96]
d004c0ba:	fa0f f989 	sxth.w	r9, r9
d004c0be:	f82a 4c58 	strh.w	r4, [sl, #-88]
d004c0c2:	f103 0418 	add.w	r4, r3, #24
d004c0c6:	f82a 0c4e 	strh.w	r0, [sl, #-78]
d004c0ca:	3314      	adds	r3, #20
d004c0cc:	f80a 2c4a 	strb.w	r2, [sl, #-74]
d004c0d0:	b224      	sxth	r4, r4
d004c0d2:	f80a 2c42 	strb.w	r2, [sl, #-66]
d004c0d6:	9804      	ldr	r0, [sp, #16]
d004c0d8:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d004c0da:	f82a 0c48 	strh.w	r0, [sl, #-72]
d004c0de:	f82a 2c74 	strh.w	r2, [sl, #-116]
d004c0e2:	f82a 2c40 	strh.w	r2, [sl, #-64]
d004c0e6:	f80a 1c7a 	strb.w	r1, [sl, #-122]
d004c0ea:	f80a 1c72 	strb.w	r1, [sl, #-114]
d004c0ee:	f80a 1c5a 	strb.w	r1, [sl, #-90]
d004c0f2:	f80a 1c52 	strb.w	r1, [sl, #-82]
d004c0f6:	f82a 8c7c 	strh.w	r8, [sl, #-124]
d004c0fa:	f82a 8c76 	strh.w	r8, [sl, #-118]
d004c0fe:	f82a 8c64 	strh.w	r8, [sl, #-100]
d004c102:	f82a cc6c 	strh.w	ip, [sl, #-108]
d004c106:	f82a cc66 	strh.w	ip, [sl, #-102]
d004c10a:	f82a cc54 	strh.w	ip, [sl, #-84]
d004c10e:	f82a 7c5c 	strh.w	r7, [sl, #-92]
d004c112:	f82a 7c56 	strh.w	r7, [sl, #-86]
d004c116:	f82a 7c44 	strh.w	r7, [sl, #-68]
d004c11a:	f82a 6c4c 	strh.w	r6, [sl, #-76]
d004c11e:	f82a 6c46 	strh.w	r6, [sl, #-70]
d004c122:	f82a 2c38 	strh.w	r2, [sl, #-56]
d004c126:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d004c128:	f82a 8c3e 	strh.w	r8, [sl, #-62]
d004c12c:	f80a 5c3a 	strb.w	r5, [sl, #-58]
d004c130:	f80a 5c32 	strb.w	r5, [sl, #-50]
d004c134:	f82a 8c30 	strh.w	r8, [sl, #-48]
d004c138:	f82a cc2e 	strh.w	ip, [sl, #-46]
d004c13c:	f82a 8c28 	strh.w	r8, [sl, #-40]
d004c140:	f82a cc20 	strh.w	ip, [sl, #-32]
d004c144:	f82a 7c1e 	strh.w	r7, [sl, #-30]
d004c148:	f80a 5c1a 	strb.w	r5, [sl, #-26]
d004c14c:	f82a cc18 	strh.w	ip, [sl, #-24]
d004c150:	f80a 5c12 	strb.w	r5, [sl, #-18]
d004c154:	f82a 7c10 	strh.w	r7, [sl, #-16]
d004c158:	f82a 6c0e 	strh.w	r6, [sl, #-14]
d004c15c:	f82a 7c08 	strh.w	r7, [sl, #-8]
d004c160:	f80a 1c2a 	strb.w	r1, [sl, #-42]
d004c164:	f80a 1c22 	strb.w	r1, [sl, #-34]
d004c168:	f80a 1c0a 	strb.w	r1, [sl, #-10]
d004c16c:	f80a 1c02 	strb.w	r1, [sl, #-2]
d004c170:	f82a ec3c 	strh.w	lr, [sl, #-60]
d004c174:	f82a ec36 	strh.w	lr, [sl, #-54]
d004c178:	f82a ec24 	strh.w	lr, [sl, #-36]
d004c17c:	f82a 2c2c 	strh.w	r2, [sl, #-44]
d004c180:	f82a 2c26 	strh.w	r2, [sl, #-38]
d004c184:	f82a 2c14 	strh.w	r2, [sl, #-20]
d004c188:	f82a 9c1c 	strh.w	r9, [sl, #-28]
d004c18c:	f82a 9c16 	strh.w	r9, [sl, #-22]
d004c190:	f82a 9c04 	strh.w	r9, [sl, #-4]
d004c194:	f82a 4c0c 	strh.w	r4, [sl, #-12]
d004c198:	f82a 4c06 	strh.w	r4, [sl, #-6]
d004c19c:	f82a 3c34 	strh.w	r3, [sl, #-52]
d004c1a0:	9b05      	ldr	r3, [sp, #20]
d004c1a2:	2b96      	cmp	r3, #150	; 0x96
d004c1a4:	d001      	beq.n	d004c1aa <main+0x7e2>
d004c1a6:	9303      	str	r3, [sp, #12]
d004c1a8:	e52e      	b.n	d004bc08 <main+0x240>
d004c1aa:	4901      	ldr	r1, [pc, #4]	; (d004c1b0 <main+0x7e8>)
d004c1ac:	2300      	movs	r3, #0
d004c1ae:	e004      	b.n	d004c1ba <main+0x7f2>
d004c1b0:	d004dc39 	.word	0xd004dc39
d004c1b4:	2a0a      	cmp	r2, #10
d004c1b6:	bf08      	it	eq
d004c1b8:	3301      	addeq	r3, #1
d004c1ba:	f811 2f01 	ldrb.w	r2, [r1, #1]!
d004c1be:	2a00      	cmp	r2, #0
d004c1c0:	d1f8      	bne.n	d004c1b4 <main+0x7ec>
d004c1c2:	f89b 4014 	ldrb.w	r4, [fp, #20]
d004c1c6:	f103 0514 	add.w	r5, r3, #20
d004c1ca:	f89b 0015 	ldrb.w	r0, [fp, #21]
d004c1ce:	f644 0150 	movw	r1, #18512	; 0x4850
d004c1d2:	f89b 2016 	ldrb.w	r2, [fp, #22]
d004c1d6:	012d      	lsls	r5, r5, #4
d004c1d8:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
d004c1dc:	f89b 3017 	ldrb.w	r3, [fp, #23]
d004c1e0:	f06f 0409 	mvn.w	r4, #9
d004c1e4:	f46f 7ac5 	mvn.w	sl, #394	; 0x18a
d004c1e8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004c1ec:	48ad      	ldr	r0, [pc, #692]	; (d004c4a4 <main+0xadc>)
d004c1ee:	9404      	str	r4, [sp, #16]
d004c1f0:	f244 59ab 	movw	r9, #17835	; 0x45ab
d004c1f4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c1f8:	4cab      	ldr	r4, [pc, #684]	; (d004c4a8 <main+0xae0>)
d004c1fa:	4fac      	ldr	r7, [pc, #688]	; (d004c4ac <main+0xae4>)
d004c1fc:	f646 382f 	movw	r8, #27439	; 0x6b2f
d004c200:	685b      	ldr	r3, [r3, #4]
d004c202:	6025      	str	r5, [r4, #0]
d004c204:	689b      	ldr	r3, [r3, #8]
d004c206:	4798      	blx	r3
d004c208:	f89b 3014 	ldrb.w	r3, [fp, #20]
d004c20c:	49a8      	ldr	r1, [pc, #672]	; (d004c4b0 <main+0xae8>)
d004c20e:	f89b 2015 	ldrb.w	r2, [fp, #21]
d004c212:	6008      	str	r0, [r1, #0]
d004c214:	ea43 2102 	orr.w	r1, r3, r2, lsl #8
d004c218:	f89b 2016 	ldrb.w	r2, [fp, #22]
d004c21c:	f89b 3017 	ldrb.w	r3, [fp, #23]
d004c220:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c224:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c228:	685b      	ldr	r3, [r3, #4]
d004c22a:	685b      	ldr	r3, [r3, #4]
d004c22c:	4798      	blx	r3
d004c22e:	f89b 0014 	ldrb.w	r0, [fp, #20]
d004c232:	f89b 1015 	ldrb.w	r1, [fp, #21]
d004c236:	f89b 2016 	ldrb.w	r2, [fp, #22]
d004c23a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c23e:	f89b 3017 	ldrb.w	r3, [fp, #23]
d004c242:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c246:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c24a:	685b      	ldr	r3, [r3, #4]
d004c24c:	685b      	ldr	r3, [r3, #4]
d004c24e:	4798      	blx	r3
d004c250:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c254:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c258:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c25c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c260:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c264:	4893      	ldr	r0, [pc, #588]	; (d004c4b4 <main+0xaec>)
d004c266:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c26a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c26e:	681b      	ldr	r3, [r3, #0]
d004c270:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004c272:	4798      	blx	r3
d004c274:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c278:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c27c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c280:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c284:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c288:	488a      	ldr	r0, [pc, #552]	; (d004c4b4 <main+0xaec>)
d004c28a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c28e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c292:	681b      	ldr	r3, [r3, #0]
d004c294:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d004c296:	4798      	blx	r3
d004c298:	4b87      	ldr	r3, [pc, #540]	; (d004c4b8 <main+0xaf0>)
d004c29a:	210f      	movs	r1, #15
d004c29c:	6818      	ldr	r0, [r3, #0]
d004c29e:	68da      	ldr	r2, [r3, #12]
d004c2a0:	f000 fc12 	bl	d004cac8 <memset>
d004c2a4:	9705      	str	r7, [sp, #20]
d004c2a6:	f8cd a01c 	str.w	sl, [sp, #28]
d004c2aa:	9b05      	ldr	r3, [sp, #20]
d004c2ac:	f46f 77c5 	mvn.w	r7, #394	; 0x18a
d004c2b0:	9904      	ldr	r1, [sp, #16]
d004c2b2:	f503 529e 	add.w	r2, r3, #5056	; 0x13c0
d004c2b6:	9b07      	ldr	r3, [sp, #28]
d004c2b8:	9106      	str	r1, [sp, #24]
d004c2ba:	9205      	str	r2, [sp, #20]
d004c2bc:	1192      	asrs	r2, r2, #6
d004c2be:	fb09 f103 	mul.w	r1, r9, r3
d004c2c2:	f8df a1e8 	ldr.w	sl, [pc, #488]	; d004c4ac <main+0xae4>
d004c2c6:	fb08 f303 	mul.w	r3, r8, r3
d004c2ca:	9207      	str	r2, [sp, #28]
d004c2cc:	9309      	str	r3, [sp, #36]	; 0x24
d004c2ce:	fb09 f302 	mul.w	r3, r9, r2
d004c2d2:	9108      	str	r1, [sp, #32]
d004c2d4:	930a      	str	r3, [sp, #40]	; 0x28
d004c2d6:	fb08 f302 	mul.w	r3, r8, r2
d004c2da:	9703      	str	r7, [sp, #12]
d004c2dc:	930b      	str	r3, [sp, #44]	; 0x2c
d004c2de:	f50a 5a9e 	add.w	sl, sl, #5056	; 0x13c0
d004c2e2:	9b03      	ldr	r3, [sp, #12]
d004c2e4:	9f0a      	ldr	r7, [sp, #40]	; 0x28
d004c2e6:	a824      	add	r0, sp, #144	; 0x90
d004c2e8:	ea4f 12aa 	mov.w	r2, sl, asr #6
d004c2ec:	fb08 f403 	mul.w	r4, r8, r3
d004c2f0:	fb09 f303 	mul.w	r3, r9, r3
d004c2f4:	fb08 f102 	mul.w	r1, r8, r2
d004c2f8:	9203      	str	r2, [sp, #12]
d004c2fa:	9a08      	ldr	r2, [sp, #32]
d004c2fc:	eba1 0e07 	sub.w	lr, r1, r7
d004c300:	9e03      	ldr	r6, [sp, #12]
d004c302:	1a89      	subs	r1, r1, r2
d004c304:	1aa5      	subs	r5, r4, r2
d004c306:	fb09 f606 	mul.w	r6, r9, r6
d004c30a:	1be4      	subs	r4, r4, r7
d004c30c:	910c      	str	r1, [sp, #48]	; 0x30
d004c30e:	13ed      	asrs	r5, r5, #15
d004c310:	990c      	ldr	r1, [sp, #48]	; 0x30
d004c312:	13e4      	asrs	r4, r4, #15
d004c314:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
d004c316:	ea4f 3eee 	mov.w	lr, lr, asr #15
d004c31a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004c31c:	13c9      	asrs	r1, r1, #15
d004c31e:	eb06 0c07 	add.w	ip, r6, r7
d004c322:	f504 74f0 	add.w	r4, r4, #480	; 0x1e0
d004c326:	4416      	add	r6, r2
d004c328:	f501 71f0 	add.w	r1, r1, #480	; 0x1e0
d004c32c:	189a      	adds	r2, r3, r2
d004c32e:	443b      	add	r3, r7
d004c330:	9f06      	ldr	r7, [sp, #24]
d004c332:	ea4f 3cec 	mov.w	ip, ip, asr #15
d004c336:	13f6      	asrs	r6, r6, #15
d004c338:	f8ad 1094 	strh.w	r1, [sp, #148]	; 0x94
d004c33c:	13d2      	asrs	r2, r2, #15
d004c33e:	f007 0101 	and.w	r1, r7, #1
d004c342:	13db      	asrs	r3, r3, #15
d004c344:	f506 76a0 	add.w	r6, r6, #320	; 0x140
d004c348:	f1c1 010e 	rsb	r1, r1, #14
d004c34c:	f50e 7ef0 	add.w	lr, lr, #480	; 0x1e0
d004c350:	f503 73a0 	add.w	r3, r3, #320	; 0x140
d004c354:	f505 75f0 	add.w	r5, r5, #480	; 0x1e0
d004c358:	f50c 7ca0 	add.w	ip, ip, #320	; 0x140
d004c35c:	f502 72a0 	add.w	r2, r2, #320	; 0x140
d004c360:	f8ad 40c8 	strh.w	r4, [sp, #200]	; 0xc8
d004c364:	fa0f fe8e 	sxth.w	lr, lr
d004c368:	4c53      	ldr	r4, [pc, #332]	; (d004c4b8 <main+0xaf0>)
d004c36a:	fa0f fc8c 	sxth.w	ip, ip
d004c36e:	b22d      	sxth	r5, r5
d004c370:	3701      	adds	r7, #1
d004c372:	b212      	sxth	r2, r2
d004c374:	f8ad 6096 	strh.w	r6, [sp, #150]	; 0x96
d004c378:	f8ad 30ca 	strh.w	r3, [sp, #202]	; 0xca
d004c37c:	b2ce      	uxtb	r6, r1
d004c37e:	6823      	ldr	r3, [r4, #0]
d004c380:	4631      	mov	r1, r6
d004c382:	f8ad e098 	strh.w	lr, [sp, #152]	; 0x98
d004c386:	f8ad e0c4 	strh.w	lr, [sp, #196]	; 0xc4
d004c38a:	f8ad c09a 	strh.w	ip, [sp, #154]	; 0x9a
d004c38e:	9706      	str	r7, [sp, #24]
d004c390:	f8ad c0c6 	strh.w	ip, [sp, #198]	; 0xc6
d004c394:	f8ad 5090 	strh.w	r5, [sp, #144]	; 0x90
d004c398:	f8ad 50c0 	strh.w	r5, [sp, #192]	; 0xc0
d004c39c:	f8ad 2092 	strh.w	r2, [sp, #146]	; 0x92
d004c3a0:	f8ad 20c2 	strh.w	r2, [sp, #194]	; 0xc2
d004c3a4:	b13b      	cbz	r3, d004c3b6 <main+0x9ee>
d004c3a6:	f7fe ff29 	bl	d004b1fc <draw_filled_triangle.part.0.constprop.0>
d004c3aa:	6823      	ldr	r3, [r4, #0]
d004c3ac:	4631      	mov	r1, r6
d004c3ae:	a830      	add	r0, sp, #192	; 0xc0
d004c3b0:	b10b      	cbz	r3, d004c3b6 <main+0x9ee>
d004c3b2:	f7fe ff23 	bl	d004b1fc <draw_filled_triangle.part.0.constprop.0>
d004c3b6:	f246 23c0 	movw	r3, #25280	; 0x62c0
d004c3ba:	459a      	cmp	sl, r3
d004c3bc:	d18f      	bne.n	d004c2de <main+0x916>
d004c3be:	9b04      	ldr	r3, [sp, #16]
d004c3c0:	3301      	adds	r3, #1
d004c3c2:	9304      	str	r3, [sp, #16]
d004c3c4:	9b05      	ldr	r3, [sp, #20]
d004c3c6:	4553      	cmp	r3, sl
d004c3c8:	f47f af6f 	bne.w	d004c2aa <main+0x8e2>
d004c3cc:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c3d0:	2500      	movs	r5, #0
d004c3d2:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c3d6:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c3da:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c3de:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c3e2:	4835      	ldr	r0, [pc, #212]	; (d004c4b8 <main+0xaf0>)
d004c3e4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c3e8:	f8df 90e0 	ldr.w	r9, [pc, #224]	; d004c4cc <main+0xb04>
d004c3ec:	4e33      	ldr	r6, [pc, #204]	; (d004c4bc <main+0xaf4>)
d004c3ee:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c3f2:	4c33      	ldr	r4, [pc, #204]	; (d004c4c0 <main+0xaf8>)
d004c3f4:	681b      	ldr	r3, [r3, #0]
d004c3f6:	6a1b      	ldr	r3, [r3, #32]
d004c3f8:	4798      	blx	r3
d004c3fa:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c3fe:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c402:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c406:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c40a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004c40e:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c412:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c416:	4a2b      	ldr	r2, [pc, #172]	; (d004c4c4 <main+0xafc>)
d004c418:	681b      	ldr	r3, [r3, #0]
d004c41a:	6810      	ldr	r0, [r2, #0]
d004c41c:	69db      	ldr	r3, [r3, #28]
d004c41e:	4798      	blx	r3
d004c420:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c424:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c428:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c42c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c430:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004c434:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c438:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c43c:	4a22      	ldr	r2, [pc, #136]	; (d004c4c8 <main+0xb00>)
d004c43e:	681b      	ldr	r3, [r3, #0]
d004c440:	6810      	ldr	r0, [r2, #0]
d004c442:	699b      	ldr	r3, [r3, #24]
d004c444:	4798      	blx	r3
d004c446:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c44a:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c44e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c452:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c456:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004c45a:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c45e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c462:	681b      	ldr	r3, [r3, #0]
d004c464:	681b      	ldr	r3, [r3, #0]
d004c466:	4798      	blx	r3
d004c468:	9503      	str	r5, [sp, #12]
d004c46a:	f89b 0000 	ldrb.w	r0, [fp]
d004c46e:	f89b 1001 	ldrb.w	r1, [fp, #1]
d004c472:	f89b 2002 	ldrb.w	r2, [fp, #2]
d004c476:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c47a:	f89b 3003 	ldrb.w	r3, [fp, #3]
d004c47e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c482:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c486:	6a1b      	ldr	r3, [r3, #32]
d004c488:	4798      	blx	r3
d004c48a:	f000 0003 	and.w	r0, r0, #3
d004c48e:	2803      	cmp	r0, #3
d004c490:	f000 8257 	beq.w	d004c942 <main+0xf7a>
d004c494:	f899 3000 	ldrb.w	r3, [r9]
d004c498:	2b00      	cmp	r3, #0
d004c49a:	f000 82df 	beq.w	d004ca5c <main+0x1094>
d004c49e:	4b09      	ldr	r3, [pc, #36]	; (d004c4c4 <main+0xafc>)
d004c4a0:	6818      	ldr	r0, [r3, #0]
d004c4a2:	e015      	b.n	d004c4d0 <main+0xb08>
d004c4a4:	d004de60 	.word	0xd004de60
d004c4a8:	d005404c 	.word	0xd005404c
d004c4ac:	ffff9d40 	.word	0xffff9d40
d004c4b0:	d0053b94 	.word	0xd0053b94
d004c4b4:	d0052cc0 	.word	0xd0052cc0
d004c4b8:	d00527e0 	.word	0xd00527e0
d004c4bc:	d0052758 	.word	0xd0052758
d004c4c0:	b60b60b7 	.word	0xb60b60b7
d004c4c4:	d00536c0 	.word	0xd00536c0
d004c4c8:	d00536e0 	.word	0xd00536e0
d004c4cc:	d0052cb4 	.word	0xd0052cb4
d004c4d0:	f89b 500c 	ldrb.w	r5, [fp, #12]
d004c4d4:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c4d8:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c4dc:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004c4e0:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c4e4:	9004      	str	r0, [sp, #16]
d004c4e6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c4ea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c4ee:	681b      	ldr	r3, [r3, #0]
d004c4f0:	68db      	ldr	r3, [r3, #12]
d004c4f2:	4798      	blx	r3
d004c4f4:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c4f8:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c4fc:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c500:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d004c504:	9804      	ldr	r0, [sp, #16]
d004c506:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004c50a:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c50e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c512:	681b      	ldr	r3, [r3, #0]
d004c514:	699b      	ldr	r3, [r3, #24]
d004c516:	4798      	blx	r3
d004c518:	f89b 500c 	ldrb.w	r5, [fp, #12]
d004c51c:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c520:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c524:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004c528:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c52c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c530:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c534:	685b      	ldr	r3, [r3, #4]
d004c536:	681b      	ldr	r3, [r3, #0]
d004c538:	4798      	blx	r3
d004c53a:	9804      	ldr	r0, [sp, #16]
d004c53c:	f7fe ff58 	bl	d004b3f0 <draw_cube>
d004c540:	4acf      	ldr	r2, [pc, #828]	; (d004c880 <main+0xeb8>)
d004c542:	6833      	ldr	r3, [r6, #0]
d004c544:	6812      	ldr	r2, [r2, #0]
d004c546:	3b01      	subs	r3, #1
d004c548:	4251      	negs	r1, r2
d004c54a:	6033      	str	r3, [r6, #0]
d004c54c:	428b      	cmp	r3, r1
d004c54e:	f280 8274 	bge.w	d004ca3a <main+0x1072>
d004c552:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004c556:	2a00      	cmp	r2, #0
d004c558:	6033      	str	r3, [r6, #0]
d004c55a:	f280 826a 	bge.w	d004ca32 <main+0x106a>
d004c55e:	4dc9      	ldr	r5, [pc, #804]	; (d004c884 <main+0xebc>)
d004c560:	682b      	ldr	r3, [r5, #0]
d004c562:	3b01      	subs	r3, #1
d004c564:	f100 828f 	bmi.w	d004ca86 <main+0x10be>
d004c568:	602b      	str	r3, [r5, #0]
d004c56a:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c56e:	2012      	movs	r0, #18
d004c570:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c574:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c578:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d004c57c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c580:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c584:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c588:	685b      	ldr	r3, [r3, #4]
d004c58a:	68db      	ldr	r3, [r3, #12]
d004c58c:	4798      	blx	r3
d004c58e:	6831      	ldr	r1, [r6, #0]
d004c590:	2058      	movs	r0, #88	; 0x58
d004c592:	3102      	adds	r1, #2
d004c594:	b209      	sxth	r1, r1
d004c596:	f7fe fdd3 	bl	d004b140 <draw_textf_multiline.constprop.0>
d004c59a:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c59e:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c5a2:	2011      	movs	r0, #17
d004c5a4:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c5a8:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d004c5ac:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c5b0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c5b4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c5b8:	685b      	ldr	r3, [r3, #4]
d004c5ba:	68db      	ldr	r3, [r3, #12]
d004c5bc:	4798      	blx	r3
d004c5be:	f9b6 1000 	ldrsh.w	r1, [r6]
d004c5c2:	2056      	movs	r0, #86	; 0x56
d004c5c4:	f7fe fdbc 	bl	d004b140 <draw_textf_multiline.constprop.0>
d004c5c8:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c5cc:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c5d0:	2013      	movs	r0, #19
d004c5d2:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c5d6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d004c5da:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c5de:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c5e2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c5e6:	685b      	ldr	r3, [r3, #4]
d004c5e8:	68db      	ldr	r3, [r3, #12]
d004c5ea:	4798      	blx	r3
d004c5ec:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c5f0:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c5f4:	2100      	movs	r1, #0
d004c5f6:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c5fa:	2310      	movs	r3, #16
d004c5fc:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d004c600:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c604:	4608      	mov	r0, r1
d004c606:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d004c60a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c60e:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c612:	687f      	ldr	r7, [r7, #4]
d004c614:	687f      	ldr	r7, [r7, #4]
d004c616:	47b8      	blx	r7
d004c618:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c61c:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c620:	2310      	movs	r3, #16
d004c622:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c626:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c62a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c62e:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c632:	f44f 7198 	mov.w	r1, #304	; 0x130
d004c636:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c63a:	2000      	movs	r0, #0
d004c63c:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c640:	687f      	ldr	r7, [r7, #4]
d004c642:	687f      	ldr	r7, [r7, #4]
d004c644:	47b8      	blx	r7
d004c646:	f89b 200c 	ldrb.w	r2, [fp, #12]
d004c64a:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c64e:	f44f 738e 	mov.w	r3, #284	; 0x11c
d004c652:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c656:	2112      	movs	r1, #18
d004c658:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004c65c:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c660:	f9b5 2000 	ldrsh.w	r2, [r5]
d004c664:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c668:	2000      	movs	r0, #0
d004c66a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c66e:	687f      	ldr	r7, [r7, #4]
d004c670:	687f      	ldr	r7, [r7, #4]
d004c672:	47b8      	blx	r7
d004c674:	f89b 200c 	ldrb.w	r2, [fp, #12]
d004c678:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c67c:	f44f 738e 	mov.w	r3, #284	; 0x11c
d004c680:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c684:	2112      	movs	r1, #18
d004c686:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d004c68a:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c68e:	682a      	ldr	r2, [r5, #0]
d004c690:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c694:	f5c2 70f0 	rsb	r0, r2, #480	; 0x1e0
d004c698:	b212      	sxth	r2, r2
d004c69a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c69e:	b200      	sxth	r0, r0
d004c6a0:	687f      	ldr	r7, [r7, #4]
d004c6a2:	687f      	ldr	r7, [r7, #4]
d004c6a4:	47b8      	blx	r7
d004c6a6:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c6aa:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c6ae:	2011      	movs	r0, #17
d004c6b0:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c6b4:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d004c6b8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c6bc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c6c0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c6c4:	685b      	ldr	r3, [r3, #4]
d004c6c6:	68db      	ldr	r3, [r3, #12]
d004c6c8:	4798      	blx	r3
d004c6ca:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c6ce:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c6d2:	2302      	movs	r3, #2
d004c6d4:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c6d8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c6dc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c6e0:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c6e4:	2110      	movs	r1, #16
d004c6e6:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c6ea:	2000      	movs	r0, #0
d004c6ec:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c6f0:	687f      	ldr	r7, [r7, #4]
d004c6f2:	687f      	ldr	r7, [r7, #4]
d004c6f4:	47b8      	blx	r7
d004c6f6:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c6fa:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c6fe:	2302      	movs	r3, #2
d004c700:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c704:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c708:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c70c:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c710:	f44f 7197 	mov.w	r1, #302	; 0x12e
d004c714:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c718:	2000      	movs	r0, #0
d004c71a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c71e:	687f      	ldr	r7, [r7, #4]
d004c720:	687f      	ldr	r7, [r7, #4]
d004c722:	47b8      	blx	r7
d004c724:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c728:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c72c:	f44f 738e 	mov.w	r3, #284	; 0x11c
d004c730:	f89b c00e 	ldrb.w	ip, [fp, #14]
d004c734:	2202      	movs	r2, #2
d004c736:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c73a:	f89b 700f 	ldrb.w	r7, [fp, #15]
d004c73e:	2112      	movs	r1, #18
d004c740:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004c744:	f9b5 0000 	ldrsh.w	r0, [r5]
d004c748:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004c74c:	687f      	ldr	r7, [r7, #4]
d004c74e:	687f      	ldr	r7, [r7, #4]
d004c750:	47b8      	blx	r7
d004c752:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c756:	f89b 700d 	ldrb.w	r7, [fp, #13]
d004c75a:	f44f 738e 	mov.w	r3, #284	; 0x11c
d004c75e:	f89b 800e 	ldrb.w	r8, [fp, #14]
d004c762:	2202      	movs	r2, #2
d004c764:	ea41 2c07 	orr.w	ip, r1, r7, lsl #8
d004c768:	f89b e00f 	ldrb.w	lr, [fp, #15]
d004c76c:	6828      	ldr	r0, [r5, #0]
d004c76e:	2112      	movs	r1, #18
d004c770:	ea4c 4708 	orr.w	r7, ip, r8, lsl #16
d004c774:	f5c0 70ef 	rsb	r0, r0, #478	; 0x1de
d004c778:	ea47 650e 	orr.w	r5, r7, lr, lsl #24
d004c77c:	b200      	sxth	r0, r0
d004c77e:	686d      	ldr	r5, [r5, #4]
d004c780:	686d      	ldr	r5, [r5, #4]
d004c782:	47a8      	blx	r5
d004c784:	9b03      	ldr	r3, [sp, #12]
d004c786:	f44f 75b4 	mov.w	r5, #360	; 0x168
d004c78a:	eb03 0143 	add.w	r1, r3, r3, lsl #1
d004c78e:	005a      	lsls	r2, r3, #1
d004c790:	fb84 3001 	smull	r3, r0, r4, r1
d004c794:	17cb      	asrs	r3, r1, #31
d004c796:	4408      	add	r0, r1
d004c798:	ebc3 2320 	rsb	r3, r3, r0, asr #8
d004c79c:	fb05 1313 	mls	r3, r5, r3, r1
d004c7a0:	2b00      	cmp	r3, #0
d004c7a2:	bfb8      	it	lt
d004c7a4:	195b      	addlt	r3, r3, r5
d004c7a6:	2bb4      	cmp	r3, #180	; 0xb4
d004c7a8:	f340 8145 	ble.w	d004ca36 <main+0x106e>
d004c7ac:	3bb4      	subs	r3, #180	; 0xb4
d004c7ae:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004c7b2:	f1c3 01b4 	rsb	r1, r3, #180	; 0xb4
d004c7b6:	325a      	adds	r2, #90	; 0x5a
d004c7b8:	f649 6534 	movw	r5, #40500	; 0x9e34
d004c7bc:	fb03 f301 	mul.w	r3, r3, r1
d004c7c0:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d004c7c4:	fb84 1702 	smull	r1, r7, r4, r2
d004c7c8:	ebc3 31c3 	rsb	r1, r3, r3, lsl #15
d004c7cc:	1aed      	subs	r5, r5, r3
d004c7ce:	18bb      	adds	r3, r7, r2
d004c7d0:	f44f 77b4 	mov.w	r7, #360	; 0x168
d004c7d4:	0089      	lsls	r1, r1, #2
d004c7d6:	ebcc 2323 	rsb	r3, ip, r3, asr #8
d004c7da:	fbb1 f1f5 	udiv	r1, r1, r5
d004c7de:	fb07 2313 	mls	r3, r7, r3, r2
d004c7e2:	fb00 f001 	mul.w	r0, r0, r1
d004c7e6:	2b00      	cmp	r3, #0
d004c7e8:	f340 2050 	sbfx	r0, r0, #9, #17
d004c7ec:	da01      	bge.n	d004c7f2 <main+0xe2a>
d004c7ee:	f503 73b4 	add.w	r3, r3, #360	; 0x168
d004c7f2:	2bb4      	cmp	r3, #180	; 0xb4
d004c7f4:	f340 8145 	ble.w	d004ca82 <main+0x10ba>
d004c7f8:	3bb4      	subs	r3, #180	; 0xb4
d004c7fa:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d004c7fe:	f1c3 02b4 	rsb	r2, r3, #180	; 0xb4
d004c802:	f89b 700c 	ldrb.w	r7, [fp, #12]
d004c806:	f649 6c34 	movw	ip, #40500	; 0x9e34
d004c80a:	30f0      	adds	r0, #240	; 0xf0
d004c80c:	fb03 f302 	mul.w	r3, r3, r2
d004c810:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c814:	ebc3 3ec3 	rsb	lr, r3, r3, lsl #15
d004c818:	ebac 0c03 	sub.w	ip, ip, r3
d004c81c:	ea47 2502 	orr.w	r5, r7, r2, lsl #8
d004c820:	f89b 300e 	ldrb.w	r3, [fp, #14]
d004c824:	ea4f 078e 	mov.w	r7, lr, lsl #2
d004c828:	ea45 4203 	orr.w	r2, r5, r3, lsl #16
d004c82c:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c830:	fbb7 f5fc 	udiv	r5, r7, ip
d004c834:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c838:	fb01 f105 	mul.w	r1, r1, r5
d004c83c:	681b      	ldr	r3, [r3, #0]
d004c83e:	f341 2150 	sbfx	r1, r1, #9, #17
d004c842:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d004c844:	31a0      	adds	r1, #160	; 0xa0
d004c846:	4798      	blx	r3
d004c848:	f899 3000 	ldrb.w	r3, [r9]
d004c84c:	f1c3 0301 	rsb	r3, r3, #1
d004c850:	b2db      	uxtb	r3, r3
d004c852:	f889 3000 	strb.w	r3, [r9]
d004c856:	f899 3000 	ldrb.w	r3, [r9]
d004c85a:	2b00      	cmp	r3, #0
d004c85c:	f000 8101 	beq.w	d004ca62 <main+0x109a>
d004c860:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004c864:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004c868:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c86c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004c870:	4905      	ldr	r1, [pc, #20]	; (d004c888 <main+0xec0>)
d004c872:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c876:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004c87a:	6809      	ldr	r1, [r1, #0]
d004c87c:	4803      	ldr	r0, [pc, #12]	; (d004c88c <main+0xec4>)
d004c87e:	e007      	b.n	d004c890 <main+0xec8>
d004c880:	d005404c 	.word	0xd005404c
d004c884:	d0052800 	.word	0xd0052800
d004c888:	d00536e0 	.word	0xd00536e0
d004c88c:	d00536c0 	.word	0xd00536c0
d004c890:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c894:	6800      	ldr	r0, [r0, #0]
d004c896:	f44f 75b4 	mov.w	r5, #360	; 0x168
d004c89a:	681b      	ldr	r3, [r3, #0]
d004c89c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004c89e:	4798      	blx	r3
d004c8a0:	f89b 000c 	ldrb.w	r0, [fp, #12]
d004c8a4:	9b03      	ldr	r3, [sp, #12]
d004c8a6:	f89b 100d 	ldrb.w	r1, [fp, #13]
d004c8aa:	3301      	adds	r3, #1
d004c8ac:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004c8b0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c8b4:	9303      	str	r3, [sp, #12]
d004c8b6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c8ba:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004c8be:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c8c2:	681b      	ldr	r3, [r3, #0]
d004c8c4:	681b      	ldr	r3, [r3, #0]
d004c8c6:	4798      	blx	r3
d004c8c8:	f89b 0014 	ldrb.w	r0, [fp, #20]
d004c8cc:	f89b 1015 	ldrb.w	r1, [fp, #21]
d004c8d0:	f89b 2016 	ldrb.w	r2, [fp, #22]
d004c8d4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c8d8:	f89b 3017 	ldrb.w	r3, [fp, #23]
d004c8dc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c8e0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c8e4:	685b      	ldr	r3, [r3, #4]
d004c8e6:	685b      	ldr	r3, [r3, #4]
d004c8e8:	4798      	blx	r3
d004c8ea:	f8df e1b8 	ldr.w	lr, [pc, #440]	; d004caa4 <main+0x10dc>
d004c8ee:	4a67      	ldr	r2, [pc, #412]	; (d004ca8c <main+0x10c4>)
d004c8f0:	f8de 3000 	ldr.w	r3, [lr]
d004c8f4:	6811      	ldr	r1, [r2, #0]
d004c8f6:	3302      	adds	r3, #2
d004c8f8:	f8df c1ac 	ldr.w	ip, [pc, #428]	; d004caa8 <main+0x10e0>
d004c8fc:	3101      	adds	r1, #1
d004c8fe:	fb84 2a03 	smull	r2, sl, r4, r3
d004c902:	f8dc 0000 	ldr.w	r0, [ip]
d004c906:	17da      	asrs	r2, r3, #31
d004c908:	449a      	add	sl, r3
d004c90a:	3003      	adds	r0, #3
d004c90c:	ebc2 222a 	rsb	r2, r2, sl, asr #8
d004c910:	fb84 7800 	smull	r7, r8, r4, r0
d004c914:	fb84 7a01 	smull	r7, sl, r4, r1
d004c918:	fb05 3312 	mls	r3, r5, r2, r3
d004c91c:	4480      	add	r8, r0
d004c91e:	448a      	add	sl, r1
d004c920:	17c2      	asrs	r2, r0, #31
d004c922:	f8ce 3000 	str.w	r3, [lr]
d004c926:	17cb      	asrs	r3, r1, #31
d004c928:	ebc2 2228 	rsb	r2, r2, r8, asr #8
d004c92c:	ebc3 2a2a 	rsb	sl, r3, sl, asr #8
d004c930:	4b56      	ldr	r3, [pc, #344]	; (d004ca8c <main+0x10c4>)
d004c932:	fb05 0012 	mls	r0, r5, r2, r0
d004c936:	fb05 111a 	mls	r1, r5, sl, r1
d004c93a:	f8cc 0000 	str.w	r0, [ip]
d004c93e:	6019      	str	r1, [r3, #0]
d004c940:	e593      	b.n	d004c46a <main+0xaa2>
d004c942:	f89b 0000 	ldrb.w	r0, [fp]
d004c946:	f89b 1001 	ldrb.w	r1, [fp, #1]
d004c94a:	f89b 2002 	ldrb.w	r2, [fp, #2]
d004c94e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004c952:	f89b 3003 	ldrb.w	r3, [fp, #3]
d004c956:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004c95a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004c95e:	6a1b      	ldr	r3, [r3, #32]
d004c960:	4798      	blx	r3
d004c962:	f000 0003 	and.w	r0, r0, #3
d004c966:	2803      	cmp	r0, #3
d004c968:	d0eb      	beq.n	d004c942 <main+0xf7a>
d004c96a:	4b49      	ldr	r3, [pc, #292]	; (d004ca90 <main+0x10c8>)
d004c96c:	2502      	movs	r5, #2
d004c96e:	4849      	ldr	r0, [pc, #292]	; (d004ca94 <main+0x10cc>)
d004c970:	6819      	ldr	r1, [r3, #0]
d004c972:	f000 f95b 	bl	d004cc2c <iprintf>
d004c976:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c97a:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c97e:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004c982:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c986:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c98a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004c98e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c992:	681b      	ldr	r3, [r3, #0]
d004c994:	68db      	ldr	r3, [r3, #12]
d004c996:	4798      	blx	r3
d004c998:	f89b 400c 	ldrb.w	r4, [fp, #12]
d004c99c:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c9a0:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004c9a4:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004c9a8:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d004c9ac:	f89b 000f 	ldrb.w	r0, [fp, #15]
d004c9b0:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004c9b4:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d004c9b8:	4619      	mov	r1, r3
d004c9ba:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d004c9be:	4610      	mov	r0, r2
d004c9c0:	6824      	ldr	r4, [r4, #0]
d004c9c2:	9500      	str	r5, [sp, #0]
d004c9c4:	6964      	ldr	r4, [r4, #20]
d004c9c6:	47a0      	blx	r4
d004c9c8:	f89b 3004 	ldrb.w	r3, [fp, #4]
d004c9cc:	f89b 2005 	ldrb.w	r2, [fp, #5]
d004c9d0:	f89b 1006 	ldrb.w	r1, [fp, #6]
d004c9d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c9d8:	f89b 2007 	ldrb.w	r2, [fp, #7]
d004c9dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004c9e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004c9e4:	685b      	ldr	r3, [r3, #4]
d004c9e6:	4798      	blx	r3
d004c9e8:	f89b 300c 	ldrb.w	r3, [fp, #12]
d004c9ec:	f89b 200d 	ldrb.w	r2, [fp, #13]
d004c9f0:	f89b 100e 	ldrb.w	r1, [fp, #14]
d004c9f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004c9f8:	f89b 200f 	ldrb.w	r2, [fp, #15]
d004c9fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ca00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ca04:	681b      	ldr	r3, [r3, #0]
d004ca06:	68db      	ldr	r3, [r3, #12]
d004ca08:	4798      	blx	r3
d004ca0a:	f89b 3000 	ldrb.w	r3, [fp]
d004ca0e:	f89b 2001 	ldrb.w	r2, [fp, #1]
d004ca12:	f89b 1002 	ldrb.w	r1, [fp, #2]
d004ca16:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004ca1a:	f89b 2003 	ldrb.w	r2, [fp, #3]
d004ca1e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004ca22:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004ca26:	685b      	ldr	r3, [r3, #4]
d004ca28:	4798      	blx	r3
d004ca2a:	2000      	movs	r0, #0
d004ca2c:	b03d      	add	sp, #244	; 0xf4
d004ca2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004ca32:	4d19      	ldr	r5, [pc, #100]	; (d004ca98 <main+0x10d0>)
d004ca34:	e599      	b.n	d004c56a <main+0xba2>
d004ca36:	2001      	movs	r0, #1
d004ca38:	e6bb      	b.n	d004c7b2 <main+0xdea>
d004ca3a:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d004ca3e:	4293      	cmp	r3, r2
d004ca40:	f6ff ad8d 	blt.w	d004c55e <main+0xb96>
d004ca44:	ddf5      	ble.n	d004ca32 <main+0x106a>
d004ca46:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d004ca4a:	4d13      	ldr	r5, [pc, #76]	; (d004ca98 <main+0x10d0>)
d004ca4c:	f6bf ad8d 	bge.w	d004c56a <main+0xba2>
d004ca50:	682b      	ldr	r3, [r5, #0]
d004ca52:	3301      	adds	r3, #1
d004ca54:	2b40      	cmp	r3, #64	; 0x40
d004ca56:	bfc8      	it	gt
d004ca58:	2340      	movgt	r3, #64	; 0x40
d004ca5a:	e585      	b.n	d004c568 <main+0xba0>
d004ca5c:	4b0f      	ldr	r3, [pc, #60]	; (d004ca9c <main+0x10d4>)
d004ca5e:	6818      	ldr	r0, [r3, #0]
d004ca60:	e536      	b.n	d004c4d0 <main+0xb08>
d004ca62:	f89b 100c 	ldrb.w	r1, [fp, #12]
d004ca66:	f89b 000d 	ldrb.w	r0, [fp, #13]
d004ca6a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d004ca6e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004ca72:	490b      	ldr	r1, [pc, #44]	; (d004caa0 <main+0x10d8>)
d004ca74:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004ca78:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004ca7c:	6809      	ldr	r1, [r1, #0]
d004ca7e:	4807      	ldr	r0, [pc, #28]	; (d004ca9c <main+0x10d4>)
d004ca80:	e706      	b.n	d004c890 <main+0xec8>
d004ca82:	2101      	movs	r1, #1
d004ca84:	e6bb      	b.n	d004c7fe <main+0xe36>
d004ca86:	2300      	movs	r3, #0
d004ca88:	602b      	str	r3, [r5, #0]
d004ca8a:	e56e      	b.n	d004c56a <main+0xba2>
d004ca8c:	d00527d0 	.word	0xd00527d0
d004ca90:	d0053b94 	.word	0xd0053b94
d004ca94:	d004db84 	.word	0xd004db84
d004ca98:	d0052800 	.word	0xd0052800
d004ca9c:	d00536e0 	.word	0xd00536e0
d004caa0:	d00536c0 	.word	0xd00536c0
d004caa4:	d00527c8 	.word	0xd00527c8
d004caa8:	d00527cc 	.word	0xd00527cc

d004caac <__errno>:
d004caac:	4b01      	ldr	r3, [pc, #4]	; (d004cab4 <__errno+0x8>)
d004caae:	6818      	ldr	r0, [r3, #0]
d004cab0:	4770      	bx	lr
d004cab2:	bf00      	nop
d004cab4:	d005275c 	.word	0xd005275c

d004cab8 <malloc>:
d004cab8:	4b02      	ldr	r3, [pc, #8]	; (d004cac4 <malloc+0xc>)
d004caba:	4601      	mov	r1, r0
d004cabc:	6818      	ldr	r0, [r3, #0]
d004cabe:	f000 b85b 	b.w	d004cb78 <_malloc_r>
d004cac2:	bf00      	nop
d004cac4:	d005275c 	.word	0xd005275c

d004cac8 <memset>:
d004cac8:	4402      	add	r2, r0
d004caca:	4603      	mov	r3, r0
d004cacc:	4293      	cmp	r3, r2
d004cace:	d100      	bne.n	d004cad2 <memset+0xa>
d004cad0:	4770      	bx	lr
d004cad2:	f803 1b01 	strb.w	r1, [r3], #1
d004cad6:	e7f9      	b.n	d004cacc <memset+0x4>

d004cad8 <_free_r>:
d004cad8:	b537      	push	{r0, r1, r2, r4, r5, lr}
d004cada:	2900      	cmp	r1, #0
d004cadc:	d048      	beq.n	d004cb70 <_free_r+0x98>
d004cade:	f851 3c04 	ldr.w	r3, [r1, #-4]
d004cae2:	9001      	str	r0, [sp, #4]
d004cae4:	2b00      	cmp	r3, #0
d004cae6:	f1a1 0404 	sub.w	r4, r1, #4
d004caea:	bfb8      	it	lt
d004caec:	18e4      	addlt	r4, r4, r3
d004caee:	f000 fba1 	bl	d004d234 <__malloc_lock>
d004caf2:	4a20      	ldr	r2, [pc, #128]	; (d004cb74 <_free_r+0x9c>)
d004caf4:	9801      	ldr	r0, [sp, #4]
d004caf6:	6813      	ldr	r3, [r2, #0]
d004caf8:	4615      	mov	r5, r2
d004cafa:	b933      	cbnz	r3, d004cb0a <_free_r+0x32>
d004cafc:	6063      	str	r3, [r4, #4]
d004cafe:	6014      	str	r4, [r2, #0]
d004cb00:	b003      	add	sp, #12
d004cb02:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004cb06:	f000 bb9b 	b.w	d004d240 <__malloc_unlock>
d004cb0a:	42a3      	cmp	r3, r4
d004cb0c:	d90b      	bls.n	d004cb26 <_free_r+0x4e>
d004cb0e:	6821      	ldr	r1, [r4, #0]
d004cb10:	1862      	adds	r2, r4, r1
d004cb12:	4293      	cmp	r3, r2
d004cb14:	bf04      	itt	eq
d004cb16:	681a      	ldreq	r2, [r3, #0]
d004cb18:	685b      	ldreq	r3, [r3, #4]
d004cb1a:	6063      	str	r3, [r4, #4]
d004cb1c:	bf04      	itt	eq
d004cb1e:	1852      	addeq	r2, r2, r1
d004cb20:	6022      	streq	r2, [r4, #0]
d004cb22:	602c      	str	r4, [r5, #0]
d004cb24:	e7ec      	b.n	d004cb00 <_free_r+0x28>
d004cb26:	461a      	mov	r2, r3
d004cb28:	685b      	ldr	r3, [r3, #4]
d004cb2a:	b10b      	cbz	r3, d004cb30 <_free_r+0x58>
d004cb2c:	42a3      	cmp	r3, r4
d004cb2e:	d9fa      	bls.n	d004cb26 <_free_r+0x4e>
d004cb30:	6811      	ldr	r1, [r2, #0]
d004cb32:	1855      	adds	r5, r2, r1
d004cb34:	42a5      	cmp	r5, r4
d004cb36:	d10b      	bne.n	d004cb50 <_free_r+0x78>
d004cb38:	6824      	ldr	r4, [r4, #0]
d004cb3a:	4421      	add	r1, r4
d004cb3c:	1854      	adds	r4, r2, r1
d004cb3e:	42a3      	cmp	r3, r4
d004cb40:	6011      	str	r1, [r2, #0]
d004cb42:	d1dd      	bne.n	d004cb00 <_free_r+0x28>
d004cb44:	681c      	ldr	r4, [r3, #0]
d004cb46:	685b      	ldr	r3, [r3, #4]
d004cb48:	6053      	str	r3, [r2, #4]
d004cb4a:	4421      	add	r1, r4
d004cb4c:	6011      	str	r1, [r2, #0]
d004cb4e:	e7d7      	b.n	d004cb00 <_free_r+0x28>
d004cb50:	d902      	bls.n	d004cb58 <_free_r+0x80>
d004cb52:	230c      	movs	r3, #12
d004cb54:	6003      	str	r3, [r0, #0]
d004cb56:	e7d3      	b.n	d004cb00 <_free_r+0x28>
d004cb58:	6825      	ldr	r5, [r4, #0]
d004cb5a:	1961      	adds	r1, r4, r5
d004cb5c:	428b      	cmp	r3, r1
d004cb5e:	bf04      	itt	eq
d004cb60:	6819      	ldreq	r1, [r3, #0]
d004cb62:	685b      	ldreq	r3, [r3, #4]
d004cb64:	6063      	str	r3, [r4, #4]
d004cb66:	bf04      	itt	eq
d004cb68:	1949      	addeq	r1, r1, r5
d004cb6a:	6021      	streq	r1, [r4, #0]
d004cb6c:	6054      	str	r4, [r2, #4]
d004cb6e:	e7c7      	b.n	d004cb00 <_free_r+0x28>
d004cb70:	b003      	add	sp, #12
d004cb72:	bd30      	pop	{r4, r5, pc}
d004cb74:	d0054500 	.word	0xd0054500

d004cb78 <_malloc_r>:
d004cb78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004cb7a:	1ccd      	adds	r5, r1, #3
d004cb7c:	f025 0503 	bic.w	r5, r5, #3
d004cb80:	3508      	adds	r5, #8
d004cb82:	2d0c      	cmp	r5, #12
d004cb84:	bf38      	it	cc
d004cb86:	250c      	movcc	r5, #12
d004cb88:	2d00      	cmp	r5, #0
d004cb8a:	4606      	mov	r6, r0
d004cb8c:	db01      	blt.n	d004cb92 <_malloc_r+0x1a>
d004cb8e:	42a9      	cmp	r1, r5
d004cb90:	d903      	bls.n	d004cb9a <_malloc_r+0x22>
d004cb92:	230c      	movs	r3, #12
d004cb94:	6033      	str	r3, [r6, #0]
d004cb96:	2000      	movs	r0, #0
d004cb98:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004cb9a:	f000 fb4b 	bl	d004d234 <__malloc_lock>
d004cb9e:	4921      	ldr	r1, [pc, #132]	; (d004cc24 <_malloc_r+0xac>)
d004cba0:	680a      	ldr	r2, [r1, #0]
d004cba2:	4614      	mov	r4, r2
d004cba4:	b99c      	cbnz	r4, d004cbce <_malloc_r+0x56>
d004cba6:	4f20      	ldr	r7, [pc, #128]	; (d004cc28 <_malloc_r+0xb0>)
d004cba8:	683b      	ldr	r3, [r7, #0]
d004cbaa:	b923      	cbnz	r3, d004cbb6 <_malloc_r+0x3e>
d004cbac:	4621      	mov	r1, r4
d004cbae:	4630      	mov	r0, r6
d004cbb0:	f7fe faa4 	bl	d004b0fc <_sbrk_r>
d004cbb4:	6038      	str	r0, [r7, #0]
d004cbb6:	4629      	mov	r1, r5
d004cbb8:	4630      	mov	r0, r6
d004cbba:	f7fe fa9f 	bl	d004b0fc <_sbrk_r>
d004cbbe:	1c43      	adds	r3, r0, #1
d004cbc0:	d123      	bne.n	d004cc0a <_malloc_r+0x92>
d004cbc2:	230c      	movs	r3, #12
d004cbc4:	6033      	str	r3, [r6, #0]
d004cbc6:	4630      	mov	r0, r6
d004cbc8:	f000 fb3a 	bl	d004d240 <__malloc_unlock>
d004cbcc:	e7e3      	b.n	d004cb96 <_malloc_r+0x1e>
d004cbce:	6823      	ldr	r3, [r4, #0]
d004cbd0:	1b5b      	subs	r3, r3, r5
d004cbd2:	d417      	bmi.n	d004cc04 <_malloc_r+0x8c>
d004cbd4:	2b0b      	cmp	r3, #11
d004cbd6:	d903      	bls.n	d004cbe0 <_malloc_r+0x68>
d004cbd8:	6023      	str	r3, [r4, #0]
d004cbda:	441c      	add	r4, r3
d004cbdc:	6025      	str	r5, [r4, #0]
d004cbde:	e004      	b.n	d004cbea <_malloc_r+0x72>
d004cbe0:	6863      	ldr	r3, [r4, #4]
d004cbe2:	42a2      	cmp	r2, r4
d004cbe4:	bf0c      	ite	eq
d004cbe6:	600b      	streq	r3, [r1, #0]
d004cbe8:	6053      	strne	r3, [r2, #4]
d004cbea:	4630      	mov	r0, r6
d004cbec:	f000 fb28 	bl	d004d240 <__malloc_unlock>
d004cbf0:	f104 000b 	add.w	r0, r4, #11
d004cbf4:	1d23      	adds	r3, r4, #4
d004cbf6:	f020 0007 	bic.w	r0, r0, #7
d004cbfa:	1ac2      	subs	r2, r0, r3
d004cbfc:	d0cc      	beq.n	d004cb98 <_malloc_r+0x20>
d004cbfe:	1a1b      	subs	r3, r3, r0
d004cc00:	50a3      	str	r3, [r4, r2]
d004cc02:	e7c9      	b.n	d004cb98 <_malloc_r+0x20>
d004cc04:	4622      	mov	r2, r4
d004cc06:	6864      	ldr	r4, [r4, #4]
d004cc08:	e7cc      	b.n	d004cba4 <_malloc_r+0x2c>
d004cc0a:	1cc4      	adds	r4, r0, #3
d004cc0c:	f024 0403 	bic.w	r4, r4, #3
d004cc10:	42a0      	cmp	r0, r4
d004cc12:	d0e3      	beq.n	d004cbdc <_malloc_r+0x64>
d004cc14:	1a21      	subs	r1, r4, r0
d004cc16:	4630      	mov	r0, r6
d004cc18:	f7fe fa70 	bl	d004b0fc <_sbrk_r>
d004cc1c:	3001      	adds	r0, #1
d004cc1e:	d1dd      	bne.n	d004cbdc <_malloc_r+0x64>
d004cc20:	e7cf      	b.n	d004cbc2 <_malloc_r+0x4a>
d004cc22:	bf00      	nop
d004cc24:	d0054500 	.word	0xd0054500
d004cc28:	d0054504 	.word	0xd0054504

d004cc2c <iprintf>:
d004cc2c:	b40f      	push	{r0, r1, r2, r3}
d004cc2e:	4b0a      	ldr	r3, [pc, #40]	; (d004cc58 <iprintf+0x2c>)
d004cc30:	b513      	push	{r0, r1, r4, lr}
d004cc32:	681c      	ldr	r4, [r3, #0]
d004cc34:	b124      	cbz	r4, d004cc40 <iprintf+0x14>
d004cc36:	69a3      	ldr	r3, [r4, #24]
d004cc38:	b913      	cbnz	r3, d004cc40 <iprintf+0x14>
d004cc3a:	4620      	mov	r0, r4
d004cc3c:	f000 f9f6 	bl	d004d02c <__sinit>
d004cc40:	ab05      	add	r3, sp, #20
d004cc42:	9a04      	ldr	r2, [sp, #16]
d004cc44:	68a1      	ldr	r1, [r4, #8]
d004cc46:	9301      	str	r3, [sp, #4]
d004cc48:	4620      	mov	r0, r4
d004cc4a:	f000 fb29 	bl	d004d2a0 <_vfiprintf_r>
d004cc4e:	b002      	add	sp, #8
d004cc50:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004cc54:	b004      	add	sp, #16
d004cc56:	4770      	bx	lr
d004cc58:	d005275c 	.word	0xd005275c

d004cc5c <setbuf>:
d004cc5c:	2900      	cmp	r1, #0
d004cc5e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004cc62:	bf0c      	ite	eq
d004cc64:	2202      	moveq	r2, #2
d004cc66:	2200      	movne	r2, #0
d004cc68:	f000 b800 	b.w	d004cc6c <setvbuf>

d004cc6c <setvbuf>:
d004cc6c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d004cc70:	461d      	mov	r5, r3
d004cc72:	4b5d      	ldr	r3, [pc, #372]	; (d004cde8 <setvbuf+0x17c>)
d004cc74:	681f      	ldr	r7, [r3, #0]
d004cc76:	4604      	mov	r4, r0
d004cc78:	460e      	mov	r6, r1
d004cc7a:	4690      	mov	r8, r2
d004cc7c:	b127      	cbz	r7, d004cc88 <setvbuf+0x1c>
d004cc7e:	69bb      	ldr	r3, [r7, #24]
d004cc80:	b913      	cbnz	r3, d004cc88 <setvbuf+0x1c>
d004cc82:	4638      	mov	r0, r7
d004cc84:	f000 f9d2 	bl	d004d02c <__sinit>
d004cc88:	4b58      	ldr	r3, [pc, #352]	; (d004cdec <setvbuf+0x180>)
d004cc8a:	429c      	cmp	r4, r3
d004cc8c:	d167      	bne.n	d004cd5e <setvbuf+0xf2>
d004cc8e:	687c      	ldr	r4, [r7, #4]
d004cc90:	f1b8 0f02 	cmp.w	r8, #2
d004cc94:	d006      	beq.n	d004cca4 <setvbuf+0x38>
d004cc96:	f1b8 0f01 	cmp.w	r8, #1
d004cc9a:	f200 809f 	bhi.w	d004cddc <setvbuf+0x170>
d004cc9e:	2d00      	cmp	r5, #0
d004cca0:	f2c0 809c 	blt.w	d004cddc <setvbuf+0x170>
d004cca4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004cca6:	07db      	lsls	r3, r3, #31
d004cca8:	d405      	bmi.n	d004ccb6 <setvbuf+0x4a>
d004ccaa:	89a3      	ldrh	r3, [r4, #12]
d004ccac:	0598      	lsls	r0, r3, #22
d004ccae:	d402      	bmi.n	d004ccb6 <setvbuf+0x4a>
d004ccb0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004ccb2:	f000 fa59 	bl	d004d168 <__retarget_lock_acquire_recursive>
d004ccb6:	4621      	mov	r1, r4
d004ccb8:	4638      	mov	r0, r7
d004ccba:	f000 f923 	bl	d004cf04 <_fflush_r>
d004ccbe:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004ccc0:	b141      	cbz	r1, d004ccd4 <setvbuf+0x68>
d004ccc2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004ccc6:	4299      	cmp	r1, r3
d004ccc8:	d002      	beq.n	d004ccd0 <setvbuf+0x64>
d004ccca:	4638      	mov	r0, r7
d004cccc:	f7ff ff04 	bl	d004cad8 <_free_r>
d004ccd0:	2300      	movs	r3, #0
d004ccd2:	6363      	str	r3, [r4, #52]	; 0x34
d004ccd4:	2300      	movs	r3, #0
d004ccd6:	61a3      	str	r3, [r4, #24]
d004ccd8:	6063      	str	r3, [r4, #4]
d004ccda:	89a3      	ldrh	r3, [r4, #12]
d004ccdc:	0619      	lsls	r1, r3, #24
d004ccde:	d503      	bpl.n	d004cce8 <setvbuf+0x7c>
d004cce0:	6921      	ldr	r1, [r4, #16]
d004cce2:	4638      	mov	r0, r7
d004cce4:	f7ff fef8 	bl	d004cad8 <_free_r>
d004cce8:	89a3      	ldrh	r3, [r4, #12]
d004ccea:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d004ccee:	f023 0303 	bic.w	r3, r3, #3
d004ccf2:	f1b8 0f02 	cmp.w	r8, #2
d004ccf6:	81a3      	strh	r3, [r4, #12]
d004ccf8:	d06c      	beq.n	d004cdd4 <setvbuf+0x168>
d004ccfa:	ab01      	add	r3, sp, #4
d004ccfc:	466a      	mov	r2, sp
d004ccfe:	4621      	mov	r1, r4
d004cd00:	4638      	mov	r0, r7
d004cd02:	f000 fa33 	bl	d004d16c <__swhatbuf_r>
d004cd06:	89a3      	ldrh	r3, [r4, #12]
d004cd08:	4318      	orrs	r0, r3
d004cd0a:	81a0      	strh	r0, [r4, #12]
d004cd0c:	2d00      	cmp	r5, #0
d004cd0e:	d130      	bne.n	d004cd72 <setvbuf+0x106>
d004cd10:	9d00      	ldr	r5, [sp, #0]
d004cd12:	4628      	mov	r0, r5
d004cd14:	f7ff fed0 	bl	d004cab8 <malloc>
d004cd18:	4606      	mov	r6, r0
d004cd1a:	2800      	cmp	r0, #0
d004cd1c:	d155      	bne.n	d004cdca <setvbuf+0x15e>
d004cd1e:	f8dd 9000 	ldr.w	r9, [sp]
d004cd22:	45a9      	cmp	r9, r5
d004cd24:	d14a      	bne.n	d004cdbc <setvbuf+0x150>
d004cd26:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d004cd2a:	2200      	movs	r2, #0
d004cd2c:	60a2      	str	r2, [r4, #8]
d004cd2e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d004cd32:	6022      	str	r2, [r4, #0]
d004cd34:	6122      	str	r2, [r4, #16]
d004cd36:	2201      	movs	r2, #1
d004cd38:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d004cd3c:	6162      	str	r2, [r4, #20]
d004cd3e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004cd40:	f043 0302 	orr.w	r3, r3, #2
d004cd44:	07d2      	lsls	r2, r2, #31
d004cd46:	81a3      	strh	r3, [r4, #12]
d004cd48:	d405      	bmi.n	d004cd56 <setvbuf+0xea>
d004cd4a:	f413 7f00 	tst.w	r3, #512	; 0x200
d004cd4e:	d102      	bne.n	d004cd56 <setvbuf+0xea>
d004cd50:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004cd52:	f000 fa0a 	bl	d004d16a <__retarget_lock_release_recursive>
d004cd56:	4628      	mov	r0, r5
d004cd58:	b003      	add	sp, #12
d004cd5a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004cd5e:	4b24      	ldr	r3, [pc, #144]	; (d004cdf0 <setvbuf+0x184>)
d004cd60:	429c      	cmp	r4, r3
d004cd62:	d101      	bne.n	d004cd68 <setvbuf+0xfc>
d004cd64:	68bc      	ldr	r4, [r7, #8]
d004cd66:	e793      	b.n	d004cc90 <setvbuf+0x24>
d004cd68:	4b22      	ldr	r3, [pc, #136]	; (d004cdf4 <setvbuf+0x188>)
d004cd6a:	429c      	cmp	r4, r3
d004cd6c:	bf08      	it	eq
d004cd6e:	68fc      	ldreq	r4, [r7, #12]
d004cd70:	e78e      	b.n	d004cc90 <setvbuf+0x24>
d004cd72:	2e00      	cmp	r6, #0
d004cd74:	d0cd      	beq.n	d004cd12 <setvbuf+0xa6>
d004cd76:	69bb      	ldr	r3, [r7, #24]
d004cd78:	b913      	cbnz	r3, d004cd80 <setvbuf+0x114>
d004cd7a:	4638      	mov	r0, r7
d004cd7c:	f000 f956 	bl	d004d02c <__sinit>
d004cd80:	f1b8 0f01 	cmp.w	r8, #1
d004cd84:	bf08      	it	eq
d004cd86:	89a3      	ldrheq	r3, [r4, #12]
d004cd88:	6026      	str	r6, [r4, #0]
d004cd8a:	bf04      	itt	eq
d004cd8c:	f043 0301 	orreq.w	r3, r3, #1
d004cd90:	81a3      	strheq	r3, [r4, #12]
d004cd92:	89a2      	ldrh	r2, [r4, #12]
d004cd94:	f012 0308 	ands.w	r3, r2, #8
d004cd98:	e9c4 6504 	strd	r6, r5, [r4, #16]
d004cd9c:	d01c      	beq.n	d004cdd8 <setvbuf+0x16c>
d004cd9e:	07d3      	lsls	r3, r2, #31
d004cda0:	bf41      	itttt	mi
d004cda2:	2300      	movmi	r3, #0
d004cda4:	426d      	negmi	r5, r5
d004cda6:	60a3      	strmi	r3, [r4, #8]
d004cda8:	61a5      	strmi	r5, [r4, #24]
d004cdaa:	bf58      	it	pl
d004cdac:	60a5      	strpl	r5, [r4, #8]
d004cdae:	6e65      	ldr	r5, [r4, #100]	; 0x64
d004cdb0:	f015 0501 	ands.w	r5, r5, #1
d004cdb4:	d115      	bne.n	d004cde2 <setvbuf+0x176>
d004cdb6:	f412 7f00 	tst.w	r2, #512	; 0x200
d004cdba:	e7c8      	b.n	d004cd4e <setvbuf+0xe2>
d004cdbc:	4648      	mov	r0, r9
d004cdbe:	f7ff fe7b 	bl	d004cab8 <malloc>
d004cdc2:	4606      	mov	r6, r0
d004cdc4:	2800      	cmp	r0, #0
d004cdc6:	d0ae      	beq.n	d004cd26 <setvbuf+0xba>
d004cdc8:	464d      	mov	r5, r9
d004cdca:	89a3      	ldrh	r3, [r4, #12]
d004cdcc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d004cdd0:	81a3      	strh	r3, [r4, #12]
d004cdd2:	e7d0      	b.n	d004cd76 <setvbuf+0x10a>
d004cdd4:	2500      	movs	r5, #0
d004cdd6:	e7a8      	b.n	d004cd2a <setvbuf+0xbe>
d004cdd8:	60a3      	str	r3, [r4, #8]
d004cdda:	e7e8      	b.n	d004cdae <setvbuf+0x142>
d004cddc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d004cde0:	e7b9      	b.n	d004cd56 <setvbuf+0xea>
d004cde2:	2500      	movs	r5, #0
d004cde4:	e7b7      	b.n	d004cd56 <setvbuf+0xea>
d004cde6:	bf00      	nop
d004cde8:	d005275c 	.word	0xd005275c
d004cdec:	d00526d4 	.word	0xd00526d4
d004cdf0:	d00526f4 	.word	0xd00526f4
d004cdf4:	d00526b4 	.word	0xd00526b4

d004cdf8 <__sflush_r>:
d004cdf8:	898a      	ldrh	r2, [r1, #12]
d004cdfa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004cdfe:	4605      	mov	r5, r0
d004ce00:	0710      	lsls	r0, r2, #28
d004ce02:	460c      	mov	r4, r1
d004ce04:	d458      	bmi.n	d004ceb8 <__sflush_r+0xc0>
d004ce06:	684b      	ldr	r3, [r1, #4]
d004ce08:	2b00      	cmp	r3, #0
d004ce0a:	dc05      	bgt.n	d004ce18 <__sflush_r+0x20>
d004ce0c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d004ce0e:	2b00      	cmp	r3, #0
d004ce10:	dc02      	bgt.n	d004ce18 <__sflush_r+0x20>
d004ce12:	2000      	movs	r0, #0
d004ce14:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004ce18:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d004ce1a:	2e00      	cmp	r6, #0
d004ce1c:	d0f9      	beq.n	d004ce12 <__sflush_r+0x1a>
d004ce1e:	2300      	movs	r3, #0
d004ce20:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d004ce24:	682f      	ldr	r7, [r5, #0]
d004ce26:	602b      	str	r3, [r5, #0]
d004ce28:	d032      	beq.n	d004ce90 <__sflush_r+0x98>
d004ce2a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d004ce2c:	89a3      	ldrh	r3, [r4, #12]
d004ce2e:	075a      	lsls	r2, r3, #29
d004ce30:	d505      	bpl.n	d004ce3e <__sflush_r+0x46>
d004ce32:	6863      	ldr	r3, [r4, #4]
d004ce34:	1ac0      	subs	r0, r0, r3
d004ce36:	6b63      	ldr	r3, [r4, #52]	; 0x34
d004ce38:	b10b      	cbz	r3, d004ce3e <__sflush_r+0x46>
d004ce3a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d004ce3c:	1ac0      	subs	r0, r0, r3
d004ce3e:	2300      	movs	r3, #0
d004ce40:	4602      	mov	r2, r0
d004ce42:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d004ce44:	6a21      	ldr	r1, [r4, #32]
d004ce46:	4628      	mov	r0, r5
d004ce48:	47b0      	blx	r6
d004ce4a:	1c43      	adds	r3, r0, #1
d004ce4c:	89a3      	ldrh	r3, [r4, #12]
d004ce4e:	d106      	bne.n	d004ce5e <__sflush_r+0x66>
d004ce50:	6829      	ldr	r1, [r5, #0]
d004ce52:	291d      	cmp	r1, #29
d004ce54:	d82c      	bhi.n	d004ceb0 <__sflush_r+0xb8>
d004ce56:	4a2a      	ldr	r2, [pc, #168]	; (d004cf00 <__sflush_r+0x108>)
d004ce58:	40ca      	lsrs	r2, r1
d004ce5a:	07d6      	lsls	r6, r2, #31
d004ce5c:	d528      	bpl.n	d004ceb0 <__sflush_r+0xb8>
d004ce5e:	2200      	movs	r2, #0
d004ce60:	6062      	str	r2, [r4, #4]
d004ce62:	04d9      	lsls	r1, r3, #19
d004ce64:	6922      	ldr	r2, [r4, #16]
d004ce66:	6022      	str	r2, [r4, #0]
d004ce68:	d504      	bpl.n	d004ce74 <__sflush_r+0x7c>
d004ce6a:	1c42      	adds	r2, r0, #1
d004ce6c:	d101      	bne.n	d004ce72 <__sflush_r+0x7a>
d004ce6e:	682b      	ldr	r3, [r5, #0]
d004ce70:	b903      	cbnz	r3, d004ce74 <__sflush_r+0x7c>
d004ce72:	6560      	str	r0, [r4, #84]	; 0x54
d004ce74:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004ce76:	602f      	str	r7, [r5, #0]
d004ce78:	2900      	cmp	r1, #0
d004ce7a:	d0ca      	beq.n	d004ce12 <__sflush_r+0x1a>
d004ce7c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004ce80:	4299      	cmp	r1, r3
d004ce82:	d002      	beq.n	d004ce8a <__sflush_r+0x92>
d004ce84:	4628      	mov	r0, r5
d004ce86:	f7ff fe27 	bl	d004cad8 <_free_r>
d004ce8a:	2000      	movs	r0, #0
d004ce8c:	6360      	str	r0, [r4, #52]	; 0x34
d004ce8e:	e7c1      	b.n	d004ce14 <__sflush_r+0x1c>
d004ce90:	6a21      	ldr	r1, [r4, #32]
d004ce92:	2301      	movs	r3, #1
d004ce94:	4628      	mov	r0, r5
d004ce96:	47b0      	blx	r6
d004ce98:	1c41      	adds	r1, r0, #1
d004ce9a:	d1c7      	bne.n	d004ce2c <__sflush_r+0x34>
d004ce9c:	682b      	ldr	r3, [r5, #0]
d004ce9e:	2b00      	cmp	r3, #0
d004cea0:	d0c4      	beq.n	d004ce2c <__sflush_r+0x34>
d004cea2:	2b1d      	cmp	r3, #29
d004cea4:	d001      	beq.n	d004ceaa <__sflush_r+0xb2>
d004cea6:	2b16      	cmp	r3, #22
d004cea8:	d101      	bne.n	d004ceae <__sflush_r+0xb6>
d004ceaa:	602f      	str	r7, [r5, #0]
d004ceac:	e7b1      	b.n	d004ce12 <__sflush_r+0x1a>
d004ceae:	89a3      	ldrh	r3, [r4, #12]
d004ceb0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004ceb4:	81a3      	strh	r3, [r4, #12]
d004ceb6:	e7ad      	b.n	d004ce14 <__sflush_r+0x1c>
d004ceb8:	690f      	ldr	r7, [r1, #16]
d004ceba:	2f00      	cmp	r7, #0
d004cebc:	d0a9      	beq.n	d004ce12 <__sflush_r+0x1a>
d004cebe:	0793      	lsls	r3, r2, #30
d004cec0:	680e      	ldr	r6, [r1, #0]
d004cec2:	bf08      	it	eq
d004cec4:	694b      	ldreq	r3, [r1, #20]
d004cec6:	600f      	str	r7, [r1, #0]
d004cec8:	bf18      	it	ne
d004ceca:	2300      	movne	r3, #0
d004cecc:	eba6 0807 	sub.w	r8, r6, r7
d004ced0:	608b      	str	r3, [r1, #8]
d004ced2:	f1b8 0f00 	cmp.w	r8, #0
d004ced6:	dd9c      	ble.n	d004ce12 <__sflush_r+0x1a>
d004ced8:	6a21      	ldr	r1, [r4, #32]
d004ceda:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d004cedc:	4643      	mov	r3, r8
d004cede:	463a      	mov	r2, r7
d004cee0:	4628      	mov	r0, r5
d004cee2:	47b0      	blx	r6
d004cee4:	2800      	cmp	r0, #0
d004cee6:	dc06      	bgt.n	d004cef6 <__sflush_r+0xfe>
d004cee8:	89a3      	ldrh	r3, [r4, #12]
d004ceea:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004ceee:	81a3      	strh	r3, [r4, #12]
d004cef0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004cef4:	e78e      	b.n	d004ce14 <__sflush_r+0x1c>
d004cef6:	4407      	add	r7, r0
d004cef8:	eba8 0800 	sub.w	r8, r8, r0
d004cefc:	e7e9      	b.n	d004ced2 <__sflush_r+0xda>
d004cefe:	bf00      	nop
d004cf00:	20400001 	.word	0x20400001

d004cf04 <_fflush_r>:
d004cf04:	b538      	push	{r3, r4, r5, lr}
d004cf06:	690b      	ldr	r3, [r1, #16]
d004cf08:	4605      	mov	r5, r0
d004cf0a:	460c      	mov	r4, r1
d004cf0c:	b913      	cbnz	r3, d004cf14 <_fflush_r+0x10>
d004cf0e:	2500      	movs	r5, #0
d004cf10:	4628      	mov	r0, r5
d004cf12:	bd38      	pop	{r3, r4, r5, pc}
d004cf14:	b118      	cbz	r0, d004cf1e <_fflush_r+0x1a>
d004cf16:	6983      	ldr	r3, [r0, #24]
d004cf18:	b90b      	cbnz	r3, d004cf1e <_fflush_r+0x1a>
d004cf1a:	f000 f887 	bl	d004d02c <__sinit>
d004cf1e:	4b14      	ldr	r3, [pc, #80]	; (d004cf70 <_fflush_r+0x6c>)
d004cf20:	429c      	cmp	r4, r3
d004cf22:	d11b      	bne.n	d004cf5c <_fflush_r+0x58>
d004cf24:	686c      	ldr	r4, [r5, #4]
d004cf26:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d004cf2a:	2b00      	cmp	r3, #0
d004cf2c:	d0ef      	beq.n	d004cf0e <_fflush_r+0xa>
d004cf2e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004cf30:	07d0      	lsls	r0, r2, #31
d004cf32:	d404      	bmi.n	d004cf3e <_fflush_r+0x3a>
d004cf34:	0599      	lsls	r1, r3, #22
d004cf36:	d402      	bmi.n	d004cf3e <_fflush_r+0x3a>
d004cf38:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004cf3a:	f000 f915 	bl	d004d168 <__retarget_lock_acquire_recursive>
d004cf3e:	4628      	mov	r0, r5
d004cf40:	4621      	mov	r1, r4
d004cf42:	f7ff ff59 	bl	d004cdf8 <__sflush_r>
d004cf46:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004cf48:	07da      	lsls	r2, r3, #31
d004cf4a:	4605      	mov	r5, r0
d004cf4c:	d4e0      	bmi.n	d004cf10 <_fflush_r+0xc>
d004cf4e:	89a3      	ldrh	r3, [r4, #12]
d004cf50:	059b      	lsls	r3, r3, #22
d004cf52:	d4dd      	bmi.n	d004cf10 <_fflush_r+0xc>
d004cf54:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004cf56:	f000 f908 	bl	d004d16a <__retarget_lock_release_recursive>
d004cf5a:	e7d9      	b.n	d004cf10 <_fflush_r+0xc>
d004cf5c:	4b05      	ldr	r3, [pc, #20]	; (d004cf74 <_fflush_r+0x70>)
d004cf5e:	429c      	cmp	r4, r3
d004cf60:	d101      	bne.n	d004cf66 <_fflush_r+0x62>
d004cf62:	68ac      	ldr	r4, [r5, #8]
d004cf64:	e7df      	b.n	d004cf26 <_fflush_r+0x22>
d004cf66:	4b04      	ldr	r3, [pc, #16]	; (d004cf78 <_fflush_r+0x74>)
d004cf68:	429c      	cmp	r4, r3
d004cf6a:	bf08      	it	eq
d004cf6c:	68ec      	ldreq	r4, [r5, #12]
d004cf6e:	e7da      	b.n	d004cf26 <_fflush_r+0x22>
d004cf70:	d00526d4 	.word	0xd00526d4
d004cf74:	d00526f4 	.word	0xd00526f4
d004cf78:	d00526b4 	.word	0xd00526b4

d004cf7c <std>:
d004cf7c:	2300      	movs	r3, #0
d004cf7e:	b510      	push	{r4, lr}
d004cf80:	4604      	mov	r4, r0
d004cf82:	e9c0 3300 	strd	r3, r3, [r0]
d004cf86:	e9c0 3304 	strd	r3, r3, [r0, #16]
d004cf8a:	6083      	str	r3, [r0, #8]
d004cf8c:	8181      	strh	r1, [r0, #12]
d004cf8e:	6643      	str	r3, [r0, #100]	; 0x64
d004cf90:	81c2      	strh	r2, [r0, #14]
d004cf92:	6183      	str	r3, [r0, #24]
d004cf94:	4619      	mov	r1, r3
d004cf96:	2208      	movs	r2, #8
d004cf98:	305c      	adds	r0, #92	; 0x5c
d004cf9a:	f7ff fd95 	bl	d004cac8 <memset>
d004cf9e:	4b05      	ldr	r3, [pc, #20]	; (d004cfb4 <std+0x38>)
d004cfa0:	6263      	str	r3, [r4, #36]	; 0x24
d004cfa2:	4b05      	ldr	r3, [pc, #20]	; (d004cfb8 <std+0x3c>)
d004cfa4:	62a3      	str	r3, [r4, #40]	; 0x28
d004cfa6:	4b05      	ldr	r3, [pc, #20]	; (d004cfbc <std+0x40>)
d004cfa8:	62e3      	str	r3, [r4, #44]	; 0x2c
d004cfaa:	4b05      	ldr	r3, [pc, #20]	; (d004cfc0 <std+0x44>)
d004cfac:	6224      	str	r4, [r4, #32]
d004cfae:	6323      	str	r3, [r4, #48]	; 0x30
d004cfb0:	bd10      	pop	{r4, pc}
d004cfb2:	bf00      	nop
d004cfb4:	d004d829 	.word	0xd004d829
d004cfb8:	d004d84b 	.word	0xd004d84b
d004cfbc:	d004d883 	.word	0xd004d883
d004cfc0:	d004d8a7 	.word	0xd004d8a7

d004cfc4 <_cleanup_r>:
d004cfc4:	4901      	ldr	r1, [pc, #4]	; (d004cfcc <_cleanup_r+0x8>)
d004cfc6:	f000 b8af 	b.w	d004d128 <_fwalk_reent>
d004cfca:	bf00      	nop
d004cfcc:	d004cf05 	.word	0xd004cf05

d004cfd0 <__sfmoreglue>:
d004cfd0:	b570      	push	{r4, r5, r6, lr}
d004cfd2:	1e4a      	subs	r2, r1, #1
d004cfd4:	2568      	movs	r5, #104	; 0x68
d004cfd6:	4355      	muls	r5, r2
d004cfd8:	460e      	mov	r6, r1
d004cfda:	f105 0174 	add.w	r1, r5, #116	; 0x74
d004cfde:	f7ff fdcb 	bl	d004cb78 <_malloc_r>
d004cfe2:	4604      	mov	r4, r0
d004cfe4:	b140      	cbz	r0, d004cff8 <__sfmoreglue+0x28>
d004cfe6:	2100      	movs	r1, #0
d004cfe8:	e9c0 1600 	strd	r1, r6, [r0]
d004cfec:	300c      	adds	r0, #12
d004cfee:	60a0      	str	r0, [r4, #8]
d004cff0:	f105 0268 	add.w	r2, r5, #104	; 0x68
d004cff4:	f7ff fd68 	bl	d004cac8 <memset>
d004cff8:	4620      	mov	r0, r4
d004cffa:	bd70      	pop	{r4, r5, r6, pc}

d004cffc <__sfp_lock_acquire>:
d004cffc:	4801      	ldr	r0, [pc, #4]	; (d004d004 <__sfp_lock_acquire+0x8>)
d004cffe:	f000 b8b3 	b.w	d004d168 <__retarget_lock_acquire_recursive>
d004d002:	bf00      	nop
d004d004:	d0054514 	.word	0xd0054514

d004d008 <__sfp_lock_release>:
d004d008:	4801      	ldr	r0, [pc, #4]	; (d004d010 <__sfp_lock_release+0x8>)
d004d00a:	f000 b8ae 	b.w	d004d16a <__retarget_lock_release_recursive>
d004d00e:	bf00      	nop
d004d010:	d0054514 	.word	0xd0054514

d004d014 <__sinit_lock_acquire>:
d004d014:	4801      	ldr	r0, [pc, #4]	; (d004d01c <__sinit_lock_acquire+0x8>)
d004d016:	f000 b8a7 	b.w	d004d168 <__retarget_lock_acquire_recursive>
d004d01a:	bf00      	nop
d004d01c:	d005450f 	.word	0xd005450f

d004d020 <__sinit_lock_release>:
d004d020:	4801      	ldr	r0, [pc, #4]	; (d004d028 <__sinit_lock_release+0x8>)
d004d022:	f000 b8a2 	b.w	d004d16a <__retarget_lock_release_recursive>
d004d026:	bf00      	nop
d004d028:	d005450f 	.word	0xd005450f

d004d02c <__sinit>:
d004d02c:	b510      	push	{r4, lr}
d004d02e:	4604      	mov	r4, r0
d004d030:	f7ff fff0 	bl	d004d014 <__sinit_lock_acquire>
d004d034:	69a3      	ldr	r3, [r4, #24]
d004d036:	b11b      	cbz	r3, d004d040 <__sinit+0x14>
d004d038:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004d03c:	f7ff bff0 	b.w	d004d020 <__sinit_lock_release>
d004d040:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d004d044:	6523      	str	r3, [r4, #80]	; 0x50
d004d046:	4b13      	ldr	r3, [pc, #76]	; (d004d094 <__sinit+0x68>)
d004d048:	4a13      	ldr	r2, [pc, #76]	; (d004d098 <__sinit+0x6c>)
d004d04a:	681b      	ldr	r3, [r3, #0]
d004d04c:	62a2      	str	r2, [r4, #40]	; 0x28
d004d04e:	42a3      	cmp	r3, r4
d004d050:	bf04      	itt	eq
d004d052:	2301      	moveq	r3, #1
d004d054:	61a3      	streq	r3, [r4, #24]
d004d056:	4620      	mov	r0, r4
d004d058:	f000 f820 	bl	d004d09c <__sfp>
d004d05c:	6060      	str	r0, [r4, #4]
d004d05e:	4620      	mov	r0, r4
d004d060:	f000 f81c 	bl	d004d09c <__sfp>
d004d064:	60a0      	str	r0, [r4, #8]
d004d066:	4620      	mov	r0, r4
d004d068:	f000 f818 	bl	d004d09c <__sfp>
d004d06c:	2200      	movs	r2, #0
d004d06e:	60e0      	str	r0, [r4, #12]
d004d070:	2104      	movs	r1, #4
d004d072:	6860      	ldr	r0, [r4, #4]
d004d074:	f7ff ff82 	bl	d004cf7c <std>
d004d078:	68a0      	ldr	r0, [r4, #8]
d004d07a:	2201      	movs	r2, #1
d004d07c:	2109      	movs	r1, #9
d004d07e:	f7ff ff7d 	bl	d004cf7c <std>
d004d082:	68e0      	ldr	r0, [r4, #12]
d004d084:	2202      	movs	r2, #2
d004d086:	2112      	movs	r1, #18
d004d088:	f7ff ff78 	bl	d004cf7c <std>
d004d08c:	2301      	movs	r3, #1
d004d08e:	61a3      	str	r3, [r4, #24]
d004d090:	e7d2      	b.n	d004d038 <__sinit+0xc>
d004d092:	bf00      	nop
d004d094:	d00526b0 	.word	0xd00526b0
d004d098:	d004cfc5 	.word	0xd004cfc5

d004d09c <__sfp>:
d004d09c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004d09e:	4607      	mov	r7, r0
d004d0a0:	f7ff ffac 	bl	d004cffc <__sfp_lock_acquire>
d004d0a4:	4b1e      	ldr	r3, [pc, #120]	; (d004d120 <__sfp+0x84>)
d004d0a6:	681e      	ldr	r6, [r3, #0]
d004d0a8:	69b3      	ldr	r3, [r6, #24]
d004d0aa:	b913      	cbnz	r3, d004d0b2 <__sfp+0x16>
d004d0ac:	4630      	mov	r0, r6
d004d0ae:	f7ff ffbd 	bl	d004d02c <__sinit>
d004d0b2:	3648      	adds	r6, #72	; 0x48
d004d0b4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d004d0b8:	3b01      	subs	r3, #1
d004d0ba:	d503      	bpl.n	d004d0c4 <__sfp+0x28>
d004d0bc:	6833      	ldr	r3, [r6, #0]
d004d0be:	b30b      	cbz	r3, d004d104 <__sfp+0x68>
d004d0c0:	6836      	ldr	r6, [r6, #0]
d004d0c2:	e7f7      	b.n	d004d0b4 <__sfp+0x18>
d004d0c4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d004d0c8:	b9d5      	cbnz	r5, d004d100 <__sfp+0x64>
d004d0ca:	4b16      	ldr	r3, [pc, #88]	; (d004d124 <__sfp+0x88>)
d004d0cc:	60e3      	str	r3, [r4, #12]
d004d0ce:	f104 0058 	add.w	r0, r4, #88	; 0x58
d004d0d2:	6665      	str	r5, [r4, #100]	; 0x64
d004d0d4:	f000 f847 	bl	d004d166 <__retarget_lock_init_recursive>
d004d0d8:	f7ff ff96 	bl	d004d008 <__sfp_lock_release>
d004d0dc:	e9c4 5501 	strd	r5, r5, [r4, #4]
d004d0e0:	e9c4 5504 	strd	r5, r5, [r4, #16]
d004d0e4:	6025      	str	r5, [r4, #0]
d004d0e6:	61a5      	str	r5, [r4, #24]
d004d0e8:	2208      	movs	r2, #8
d004d0ea:	4629      	mov	r1, r5
d004d0ec:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d004d0f0:	f7ff fcea 	bl	d004cac8 <memset>
d004d0f4:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d004d0f8:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d004d0fc:	4620      	mov	r0, r4
d004d0fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004d100:	3468      	adds	r4, #104	; 0x68
d004d102:	e7d9      	b.n	d004d0b8 <__sfp+0x1c>
d004d104:	2104      	movs	r1, #4
d004d106:	4638      	mov	r0, r7
d004d108:	f7ff ff62 	bl	d004cfd0 <__sfmoreglue>
d004d10c:	4604      	mov	r4, r0
d004d10e:	6030      	str	r0, [r6, #0]
d004d110:	2800      	cmp	r0, #0
d004d112:	d1d5      	bne.n	d004d0c0 <__sfp+0x24>
d004d114:	f7ff ff78 	bl	d004d008 <__sfp_lock_release>
d004d118:	230c      	movs	r3, #12
d004d11a:	603b      	str	r3, [r7, #0]
d004d11c:	e7ee      	b.n	d004d0fc <__sfp+0x60>
d004d11e:	bf00      	nop
d004d120:	d00526b0 	.word	0xd00526b0
d004d124:	ffff0001 	.word	0xffff0001

d004d128 <_fwalk_reent>:
d004d128:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d004d12c:	4606      	mov	r6, r0
d004d12e:	4688      	mov	r8, r1
d004d130:	f100 0448 	add.w	r4, r0, #72	; 0x48
d004d134:	2700      	movs	r7, #0
d004d136:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d004d13a:	f1b9 0901 	subs.w	r9, r9, #1
d004d13e:	d505      	bpl.n	d004d14c <_fwalk_reent+0x24>
d004d140:	6824      	ldr	r4, [r4, #0]
d004d142:	2c00      	cmp	r4, #0
d004d144:	d1f7      	bne.n	d004d136 <_fwalk_reent+0xe>
d004d146:	4638      	mov	r0, r7
d004d148:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d004d14c:	89ab      	ldrh	r3, [r5, #12]
d004d14e:	2b01      	cmp	r3, #1
d004d150:	d907      	bls.n	d004d162 <_fwalk_reent+0x3a>
d004d152:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d004d156:	3301      	adds	r3, #1
d004d158:	d003      	beq.n	d004d162 <_fwalk_reent+0x3a>
d004d15a:	4629      	mov	r1, r5
d004d15c:	4630      	mov	r0, r6
d004d15e:	47c0      	blx	r8
d004d160:	4307      	orrs	r7, r0
d004d162:	3568      	adds	r5, #104	; 0x68
d004d164:	e7e9      	b.n	d004d13a <_fwalk_reent+0x12>

d004d166 <__retarget_lock_init_recursive>:
d004d166:	4770      	bx	lr

d004d168 <__retarget_lock_acquire_recursive>:
d004d168:	4770      	bx	lr

d004d16a <__retarget_lock_release_recursive>:
d004d16a:	4770      	bx	lr

d004d16c <__swhatbuf_r>:
d004d16c:	b570      	push	{r4, r5, r6, lr}
d004d16e:	460e      	mov	r6, r1
d004d170:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d174:	2900      	cmp	r1, #0
d004d176:	b096      	sub	sp, #88	; 0x58
d004d178:	4614      	mov	r4, r2
d004d17a:	461d      	mov	r5, r3
d004d17c:	da07      	bge.n	d004d18e <__swhatbuf_r+0x22>
d004d17e:	2300      	movs	r3, #0
d004d180:	602b      	str	r3, [r5, #0]
d004d182:	89b3      	ldrh	r3, [r6, #12]
d004d184:	061a      	lsls	r2, r3, #24
d004d186:	d410      	bmi.n	d004d1aa <__swhatbuf_r+0x3e>
d004d188:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004d18c:	e00e      	b.n	d004d1ac <__swhatbuf_r+0x40>
d004d18e:	466a      	mov	r2, sp
d004d190:	f000 fc5e 	bl	d004da50 <_fstat_r>
d004d194:	2800      	cmp	r0, #0
d004d196:	dbf2      	blt.n	d004d17e <__swhatbuf_r+0x12>
d004d198:	9a01      	ldr	r2, [sp, #4]
d004d19a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d004d19e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d004d1a2:	425a      	negs	r2, r3
d004d1a4:	415a      	adcs	r2, r3
d004d1a6:	602a      	str	r2, [r5, #0]
d004d1a8:	e7ee      	b.n	d004d188 <__swhatbuf_r+0x1c>
d004d1aa:	2340      	movs	r3, #64	; 0x40
d004d1ac:	2000      	movs	r0, #0
d004d1ae:	6023      	str	r3, [r4, #0]
d004d1b0:	b016      	add	sp, #88	; 0x58
d004d1b2:	bd70      	pop	{r4, r5, r6, pc}

d004d1b4 <__smakebuf_r>:
d004d1b4:	898b      	ldrh	r3, [r1, #12]
d004d1b6:	b573      	push	{r0, r1, r4, r5, r6, lr}
d004d1b8:	079d      	lsls	r5, r3, #30
d004d1ba:	4606      	mov	r6, r0
d004d1bc:	460c      	mov	r4, r1
d004d1be:	d507      	bpl.n	d004d1d0 <__smakebuf_r+0x1c>
d004d1c0:	f104 0347 	add.w	r3, r4, #71	; 0x47
d004d1c4:	6023      	str	r3, [r4, #0]
d004d1c6:	6123      	str	r3, [r4, #16]
d004d1c8:	2301      	movs	r3, #1
d004d1ca:	6163      	str	r3, [r4, #20]
d004d1cc:	b002      	add	sp, #8
d004d1ce:	bd70      	pop	{r4, r5, r6, pc}
d004d1d0:	ab01      	add	r3, sp, #4
d004d1d2:	466a      	mov	r2, sp
d004d1d4:	f7ff ffca 	bl	d004d16c <__swhatbuf_r>
d004d1d8:	9900      	ldr	r1, [sp, #0]
d004d1da:	4605      	mov	r5, r0
d004d1dc:	4630      	mov	r0, r6
d004d1de:	f7ff fccb 	bl	d004cb78 <_malloc_r>
d004d1e2:	b948      	cbnz	r0, d004d1f8 <__smakebuf_r+0x44>
d004d1e4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d004d1e8:	059a      	lsls	r2, r3, #22
d004d1ea:	d4ef      	bmi.n	d004d1cc <__smakebuf_r+0x18>
d004d1ec:	f023 0303 	bic.w	r3, r3, #3
d004d1f0:	f043 0302 	orr.w	r3, r3, #2
d004d1f4:	81a3      	strh	r3, [r4, #12]
d004d1f6:	e7e3      	b.n	d004d1c0 <__smakebuf_r+0xc>
d004d1f8:	4b0d      	ldr	r3, [pc, #52]	; (d004d230 <__smakebuf_r+0x7c>)
d004d1fa:	62b3      	str	r3, [r6, #40]	; 0x28
d004d1fc:	89a3      	ldrh	r3, [r4, #12]
d004d1fe:	6020      	str	r0, [r4, #0]
d004d200:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d004d204:	81a3      	strh	r3, [r4, #12]
d004d206:	9b00      	ldr	r3, [sp, #0]
d004d208:	6163      	str	r3, [r4, #20]
d004d20a:	9b01      	ldr	r3, [sp, #4]
d004d20c:	6120      	str	r0, [r4, #16]
d004d20e:	b15b      	cbz	r3, d004d228 <__smakebuf_r+0x74>
d004d210:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004d214:	4630      	mov	r0, r6
d004d216:	f000 fc2d 	bl	d004da74 <_isatty_r>
d004d21a:	b128      	cbz	r0, d004d228 <__smakebuf_r+0x74>
d004d21c:	89a3      	ldrh	r3, [r4, #12]
d004d21e:	f023 0303 	bic.w	r3, r3, #3
d004d222:	f043 0301 	orr.w	r3, r3, #1
d004d226:	81a3      	strh	r3, [r4, #12]
d004d228:	89a0      	ldrh	r0, [r4, #12]
d004d22a:	4305      	orrs	r5, r0
d004d22c:	81a5      	strh	r5, [r4, #12]
d004d22e:	e7cd      	b.n	d004d1cc <__smakebuf_r+0x18>
d004d230:	d004cfc5 	.word	0xd004cfc5

d004d234 <__malloc_lock>:
d004d234:	4801      	ldr	r0, [pc, #4]	; (d004d23c <__malloc_lock+0x8>)
d004d236:	f7ff bf97 	b.w	d004d168 <__retarget_lock_acquire_recursive>
d004d23a:	bf00      	nop
d004d23c:	d0054510 	.word	0xd0054510

d004d240 <__malloc_unlock>:
d004d240:	4801      	ldr	r0, [pc, #4]	; (d004d248 <__malloc_unlock+0x8>)
d004d242:	f7ff bf92 	b.w	d004d16a <__retarget_lock_release_recursive>
d004d246:	bf00      	nop
d004d248:	d0054510 	.word	0xd0054510

d004d24c <__sfputc_r>:
d004d24c:	6893      	ldr	r3, [r2, #8]
d004d24e:	3b01      	subs	r3, #1
d004d250:	2b00      	cmp	r3, #0
d004d252:	b410      	push	{r4}
d004d254:	6093      	str	r3, [r2, #8]
d004d256:	da08      	bge.n	d004d26a <__sfputc_r+0x1e>
d004d258:	6994      	ldr	r4, [r2, #24]
d004d25a:	42a3      	cmp	r3, r4
d004d25c:	db01      	blt.n	d004d262 <__sfputc_r+0x16>
d004d25e:	290a      	cmp	r1, #10
d004d260:	d103      	bne.n	d004d26a <__sfputc_r+0x1e>
d004d262:	f85d 4b04 	ldr.w	r4, [sp], #4
d004d266:	f000 bb23 	b.w	d004d8b0 <__swbuf_r>
d004d26a:	6813      	ldr	r3, [r2, #0]
d004d26c:	1c58      	adds	r0, r3, #1
d004d26e:	6010      	str	r0, [r2, #0]
d004d270:	7019      	strb	r1, [r3, #0]
d004d272:	4608      	mov	r0, r1
d004d274:	f85d 4b04 	ldr.w	r4, [sp], #4
d004d278:	4770      	bx	lr

d004d27a <__sfputs_r>:
d004d27a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004d27c:	4606      	mov	r6, r0
d004d27e:	460f      	mov	r7, r1
d004d280:	4614      	mov	r4, r2
d004d282:	18d5      	adds	r5, r2, r3
d004d284:	42ac      	cmp	r4, r5
d004d286:	d101      	bne.n	d004d28c <__sfputs_r+0x12>
d004d288:	2000      	movs	r0, #0
d004d28a:	e007      	b.n	d004d29c <__sfputs_r+0x22>
d004d28c:	f814 1b01 	ldrb.w	r1, [r4], #1
d004d290:	463a      	mov	r2, r7
d004d292:	4630      	mov	r0, r6
d004d294:	f7ff ffda 	bl	d004d24c <__sfputc_r>
d004d298:	1c43      	adds	r3, r0, #1
d004d29a:	d1f3      	bne.n	d004d284 <__sfputs_r+0xa>
d004d29c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d004d2a0 <_vfiprintf_r>:
d004d2a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004d2a4:	460d      	mov	r5, r1
d004d2a6:	b09d      	sub	sp, #116	; 0x74
d004d2a8:	4614      	mov	r4, r2
d004d2aa:	4698      	mov	r8, r3
d004d2ac:	4606      	mov	r6, r0
d004d2ae:	b118      	cbz	r0, d004d2b8 <_vfiprintf_r+0x18>
d004d2b0:	6983      	ldr	r3, [r0, #24]
d004d2b2:	b90b      	cbnz	r3, d004d2b8 <_vfiprintf_r+0x18>
d004d2b4:	f7ff feba 	bl	d004d02c <__sinit>
d004d2b8:	4b89      	ldr	r3, [pc, #548]	; (d004d4e0 <_vfiprintf_r+0x240>)
d004d2ba:	429d      	cmp	r5, r3
d004d2bc:	d11b      	bne.n	d004d2f6 <_vfiprintf_r+0x56>
d004d2be:	6875      	ldr	r5, [r6, #4]
d004d2c0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d004d2c2:	07d9      	lsls	r1, r3, #31
d004d2c4:	d405      	bmi.n	d004d2d2 <_vfiprintf_r+0x32>
d004d2c6:	89ab      	ldrh	r3, [r5, #12]
d004d2c8:	059a      	lsls	r2, r3, #22
d004d2ca:	d402      	bmi.n	d004d2d2 <_vfiprintf_r+0x32>
d004d2cc:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004d2ce:	f7ff ff4b 	bl	d004d168 <__retarget_lock_acquire_recursive>
d004d2d2:	89ab      	ldrh	r3, [r5, #12]
d004d2d4:	071b      	lsls	r3, r3, #28
d004d2d6:	d501      	bpl.n	d004d2dc <_vfiprintf_r+0x3c>
d004d2d8:	692b      	ldr	r3, [r5, #16]
d004d2da:	b9eb      	cbnz	r3, d004d318 <_vfiprintf_r+0x78>
d004d2dc:	4629      	mov	r1, r5
d004d2de:	4630      	mov	r0, r6
d004d2e0:	f000 fb38 	bl	d004d954 <__swsetup_r>
d004d2e4:	b1c0      	cbz	r0, d004d318 <_vfiprintf_r+0x78>
d004d2e6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d004d2e8:	07dc      	lsls	r4, r3, #31
d004d2ea:	d50e      	bpl.n	d004d30a <_vfiprintf_r+0x6a>
d004d2ec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004d2f0:	b01d      	add	sp, #116	; 0x74
d004d2f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004d2f6:	4b7b      	ldr	r3, [pc, #492]	; (d004d4e4 <_vfiprintf_r+0x244>)
d004d2f8:	429d      	cmp	r5, r3
d004d2fa:	d101      	bne.n	d004d300 <_vfiprintf_r+0x60>
d004d2fc:	68b5      	ldr	r5, [r6, #8]
d004d2fe:	e7df      	b.n	d004d2c0 <_vfiprintf_r+0x20>
d004d300:	4b79      	ldr	r3, [pc, #484]	; (d004d4e8 <_vfiprintf_r+0x248>)
d004d302:	429d      	cmp	r5, r3
d004d304:	bf08      	it	eq
d004d306:	68f5      	ldreq	r5, [r6, #12]
d004d308:	e7da      	b.n	d004d2c0 <_vfiprintf_r+0x20>
d004d30a:	89ab      	ldrh	r3, [r5, #12]
d004d30c:	0598      	lsls	r0, r3, #22
d004d30e:	d4ed      	bmi.n	d004d2ec <_vfiprintf_r+0x4c>
d004d310:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004d312:	f7ff ff2a 	bl	d004d16a <__retarget_lock_release_recursive>
d004d316:	e7e9      	b.n	d004d2ec <_vfiprintf_r+0x4c>
d004d318:	2300      	movs	r3, #0
d004d31a:	9309      	str	r3, [sp, #36]	; 0x24
d004d31c:	2320      	movs	r3, #32
d004d31e:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d004d322:	f8cd 800c 	str.w	r8, [sp, #12]
d004d326:	2330      	movs	r3, #48	; 0x30
d004d328:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d004d4ec <_vfiprintf_r+0x24c>
d004d32c:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d004d330:	f04f 0901 	mov.w	r9, #1
d004d334:	4623      	mov	r3, r4
d004d336:	469a      	mov	sl, r3
d004d338:	f813 2b01 	ldrb.w	r2, [r3], #1
d004d33c:	b10a      	cbz	r2, d004d342 <_vfiprintf_r+0xa2>
d004d33e:	2a25      	cmp	r2, #37	; 0x25
d004d340:	d1f9      	bne.n	d004d336 <_vfiprintf_r+0x96>
d004d342:	ebba 0b04 	subs.w	fp, sl, r4
d004d346:	d00b      	beq.n	d004d360 <_vfiprintf_r+0xc0>
d004d348:	465b      	mov	r3, fp
d004d34a:	4622      	mov	r2, r4
d004d34c:	4629      	mov	r1, r5
d004d34e:	4630      	mov	r0, r6
d004d350:	f7ff ff93 	bl	d004d27a <__sfputs_r>
d004d354:	3001      	adds	r0, #1
d004d356:	f000 80aa 	beq.w	d004d4ae <_vfiprintf_r+0x20e>
d004d35a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004d35c:	445a      	add	r2, fp
d004d35e:	9209      	str	r2, [sp, #36]	; 0x24
d004d360:	f89a 3000 	ldrb.w	r3, [sl]
d004d364:	2b00      	cmp	r3, #0
d004d366:	f000 80a2 	beq.w	d004d4ae <_vfiprintf_r+0x20e>
d004d36a:	2300      	movs	r3, #0
d004d36c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d004d370:	e9cd 2305 	strd	r2, r3, [sp, #20]
d004d374:	f10a 0a01 	add.w	sl, sl, #1
d004d378:	9304      	str	r3, [sp, #16]
d004d37a:	9307      	str	r3, [sp, #28]
d004d37c:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d004d380:	931a      	str	r3, [sp, #104]	; 0x68
d004d382:	4654      	mov	r4, sl
d004d384:	2205      	movs	r2, #5
d004d386:	f814 1b01 	ldrb.w	r1, [r4], #1
d004d38a:	4858      	ldr	r0, [pc, #352]	; (d004d4ec <_vfiprintf_r+0x24c>)
d004d38c:	f000 fb98 	bl	d004dac0 <memchr>
d004d390:	9a04      	ldr	r2, [sp, #16]
d004d392:	b9d8      	cbnz	r0, d004d3cc <_vfiprintf_r+0x12c>
d004d394:	06d1      	lsls	r1, r2, #27
d004d396:	bf44      	itt	mi
d004d398:	2320      	movmi	r3, #32
d004d39a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d004d39e:	0713      	lsls	r3, r2, #28
d004d3a0:	bf44      	itt	mi
d004d3a2:	232b      	movmi	r3, #43	; 0x2b
d004d3a4:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d004d3a8:	f89a 3000 	ldrb.w	r3, [sl]
d004d3ac:	2b2a      	cmp	r3, #42	; 0x2a
d004d3ae:	d015      	beq.n	d004d3dc <_vfiprintf_r+0x13c>
d004d3b0:	9a07      	ldr	r2, [sp, #28]
d004d3b2:	4654      	mov	r4, sl
d004d3b4:	2000      	movs	r0, #0
d004d3b6:	f04f 0c0a 	mov.w	ip, #10
d004d3ba:	4621      	mov	r1, r4
d004d3bc:	f811 3b01 	ldrb.w	r3, [r1], #1
d004d3c0:	3b30      	subs	r3, #48	; 0x30
d004d3c2:	2b09      	cmp	r3, #9
d004d3c4:	d94e      	bls.n	d004d464 <_vfiprintf_r+0x1c4>
d004d3c6:	b1b0      	cbz	r0, d004d3f6 <_vfiprintf_r+0x156>
d004d3c8:	9207      	str	r2, [sp, #28]
d004d3ca:	e014      	b.n	d004d3f6 <_vfiprintf_r+0x156>
d004d3cc:	eba0 0308 	sub.w	r3, r0, r8
d004d3d0:	fa09 f303 	lsl.w	r3, r9, r3
d004d3d4:	4313      	orrs	r3, r2
d004d3d6:	9304      	str	r3, [sp, #16]
d004d3d8:	46a2      	mov	sl, r4
d004d3da:	e7d2      	b.n	d004d382 <_vfiprintf_r+0xe2>
d004d3dc:	9b03      	ldr	r3, [sp, #12]
d004d3de:	1d19      	adds	r1, r3, #4
d004d3e0:	681b      	ldr	r3, [r3, #0]
d004d3e2:	9103      	str	r1, [sp, #12]
d004d3e4:	2b00      	cmp	r3, #0
d004d3e6:	bfbb      	ittet	lt
d004d3e8:	425b      	neglt	r3, r3
d004d3ea:	f042 0202 	orrlt.w	r2, r2, #2
d004d3ee:	9307      	strge	r3, [sp, #28]
d004d3f0:	9307      	strlt	r3, [sp, #28]
d004d3f2:	bfb8      	it	lt
d004d3f4:	9204      	strlt	r2, [sp, #16]
d004d3f6:	7823      	ldrb	r3, [r4, #0]
d004d3f8:	2b2e      	cmp	r3, #46	; 0x2e
d004d3fa:	d10c      	bne.n	d004d416 <_vfiprintf_r+0x176>
d004d3fc:	7863      	ldrb	r3, [r4, #1]
d004d3fe:	2b2a      	cmp	r3, #42	; 0x2a
d004d400:	d135      	bne.n	d004d46e <_vfiprintf_r+0x1ce>
d004d402:	9b03      	ldr	r3, [sp, #12]
d004d404:	1d1a      	adds	r2, r3, #4
d004d406:	681b      	ldr	r3, [r3, #0]
d004d408:	9203      	str	r2, [sp, #12]
d004d40a:	2b00      	cmp	r3, #0
d004d40c:	bfb8      	it	lt
d004d40e:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d004d412:	3402      	adds	r4, #2
d004d414:	9305      	str	r3, [sp, #20]
d004d416:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d004d4fc <_vfiprintf_r+0x25c>
d004d41a:	7821      	ldrb	r1, [r4, #0]
d004d41c:	2203      	movs	r2, #3
d004d41e:	4650      	mov	r0, sl
d004d420:	f000 fb4e 	bl	d004dac0 <memchr>
d004d424:	b140      	cbz	r0, d004d438 <_vfiprintf_r+0x198>
d004d426:	2340      	movs	r3, #64	; 0x40
d004d428:	eba0 000a 	sub.w	r0, r0, sl
d004d42c:	fa03 f000 	lsl.w	r0, r3, r0
d004d430:	9b04      	ldr	r3, [sp, #16]
d004d432:	4303      	orrs	r3, r0
d004d434:	3401      	adds	r4, #1
d004d436:	9304      	str	r3, [sp, #16]
d004d438:	f814 1b01 	ldrb.w	r1, [r4], #1
d004d43c:	482c      	ldr	r0, [pc, #176]	; (d004d4f0 <_vfiprintf_r+0x250>)
d004d43e:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d004d442:	2206      	movs	r2, #6
d004d444:	f000 fb3c 	bl	d004dac0 <memchr>
d004d448:	2800      	cmp	r0, #0
d004d44a:	d03f      	beq.n	d004d4cc <_vfiprintf_r+0x22c>
d004d44c:	4b29      	ldr	r3, [pc, #164]	; (d004d4f4 <_vfiprintf_r+0x254>)
d004d44e:	bb1b      	cbnz	r3, d004d498 <_vfiprintf_r+0x1f8>
d004d450:	9b03      	ldr	r3, [sp, #12]
d004d452:	3307      	adds	r3, #7
d004d454:	f023 0307 	bic.w	r3, r3, #7
d004d458:	3308      	adds	r3, #8
d004d45a:	9303      	str	r3, [sp, #12]
d004d45c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d004d45e:	443b      	add	r3, r7
d004d460:	9309      	str	r3, [sp, #36]	; 0x24
d004d462:	e767      	b.n	d004d334 <_vfiprintf_r+0x94>
d004d464:	fb0c 3202 	mla	r2, ip, r2, r3
d004d468:	460c      	mov	r4, r1
d004d46a:	2001      	movs	r0, #1
d004d46c:	e7a5      	b.n	d004d3ba <_vfiprintf_r+0x11a>
d004d46e:	2300      	movs	r3, #0
d004d470:	3401      	adds	r4, #1
d004d472:	9305      	str	r3, [sp, #20]
d004d474:	4619      	mov	r1, r3
d004d476:	f04f 0c0a 	mov.w	ip, #10
d004d47a:	4620      	mov	r0, r4
d004d47c:	f810 2b01 	ldrb.w	r2, [r0], #1
d004d480:	3a30      	subs	r2, #48	; 0x30
d004d482:	2a09      	cmp	r2, #9
d004d484:	d903      	bls.n	d004d48e <_vfiprintf_r+0x1ee>
d004d486:	2b00      	cmp	r3, #0
d004d488:	d0c5      	beq.n	d004d416 <_vfiprintf_r+0x176>
d004d48a:	9105      	str	r1, [sp, #20]
d004d48c:	e7c3      	b.n	d004d416 <_vfiprintf_r+0x176>
d004d48e:	fb0c 2101 	mla	r1, ip, r1, r2
d004d492:	4604      	mov	r4, r0
d004d494:	2301      	movs	r3, #1
d004d496:	e7f0      	b.n	d004d47a <_vfiprintf_r+0x1da>
d004d498:	ab03      	add	r3, sp, #12
d004d49a:	9300      	str	r3, [sp, #0]
d004d49c:	462a      	mov	r2, r5
d004d49e:	4b16      	ldr	r3, [pc, #88]	; (d004d4f8 <_vfiprintf_r+0x258>)
d004d4a0:	a904      	add	r1, sp, #16
d004d4a2:	4630      	mov	r0, r6
d004d4a4:	f3af 8000 	nop.w
d004d4a8:	4607      	mov	r7, r0
d004d4aa:	1c78      	adds	r0, r7, #1
d004d4ac:	d1d6      	bne.n	d004d45c <_vfiprintf_r+0x1bc>
d004d4ae:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d004d4b0:	07d9      	lsls	r1, r3, #31
d004d4b2:	d405      	bmi.n	d004d4c0 <_vfiprintf_r+0x220>
d004d4b4:	89ab      	ldrh	r3, [r5, #12]
d004d4b6:	059a      	lsls	r2, r3, #22
d004d4b8:	d402      	bmi.n	d004d4c0 <_vfiprintf_r+0x220>
d004d4ba:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004d4bc:	f7ff fe55 	bl	d004d16a <__retarget_lock_release_recursive>
d004d4c0:	89ab      	ldrh	r3, [r5, #12]
d004d4c2:	065b      	lsls	r3, r3, #25
d004d4c4:	f53f af12 	bmi.w	d004d2ec <_vfiprintf_r+0x4c>
d004d4c8:	9809      	ldr	r0, [sp, #36]	; 0x24
d004d4ca:	e711      	b.n	d004d2f0 <_vfiprintf_r+0x50>
d004d4cc:	ab03      	add	r3, sp, #12
d004d4ce:	9300      	str	r3, [sp, #0]
d004d4d0:	462a      	mov	r2, r5
d004d4d2:	4b09      	ldr	r3, [pc, #36]	; (d004d4f8 <_vfiprintf_r+0x258>)
d004d4d4:	a904      	add	r1, sp, #16
d004d4d6:	4630      	mov	r0, r6
d004d4d8:	f000 f880 	bl	d004d5dc <_printf_i>
d004d4dc:	e7e4      	b.n	d004d4a8 <_vfiprintf_r+0x208>
d004d4de:	bf00      	nop
d004d4e0:	d00526d4 	.word	0xd00526d4
d004d4e4:	d00526f4 	.word	0xd00526f4
d004d4e8:	d00526b4 	.word	0xd00526b4
d004d4ec:	d0052714 	.word	0xd0052714
d004d4f0:	d005271e 	.word	0xd005271e
d004d4f4:	00000000 	.word	0x00000000
d004d4f8:	d004d27b 	.word	0xd004d27b
d004d4fc:	d005271a 	.word	0xd005271a

d004d500 <_printf_common>:
d004d500:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004d504:	4616      	mov	r6, r2
d004d506:	4699      	mov	r9, r3
d004d508:	688a      	ldr	r2, [r1, #8]
d004d50a:	690b      	ldr	r3, [r1, #16]
d004d50c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d004d510:	4293      	cmp	r3, r2
d004d512:	bfb8      	it	lt
d004d514:	4613      	movlt	r3, r2
d004d516:	6033      	str	r3, [r6, #0]
d004d518:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d004d51c:	4607      	mov	r7, r0
d004d51e:	460c      	mov	r4, r1
d004d520:	b10a      	cbz	r2, d004d526 <_printf_common+0x26>
d004d522:	3301      	adds	r3, #1
d004d524:	6033      	str	r3, [r6, #0]
d004d526:	6823      	ldr	r3, [r4, #0]
d004d528:	0699      	lsls	r1, r3, #26
d004d52a:	bf42      	ittt	mi
d004d52c:	6833      	ldrmi	r3, [r6, #0]
d004d52e:	3302      	addmi	r3, #2
d004d530:	6033      	strmi	r3, [r6, #0]
d004d532:	6825      	ldr	r5, [r4, #0]
d004d534:	f015 0506 	ands.w	r5, r5, #6
d004d538:	d106      	bne.n	d004d548 <_printf_common+0x48>
d004d53a:	f104 0a19 	add.w	sl, r4, #25
d004d53e:	68e3      	ldr	r3, [r4, #12]
d004d540:	6832      	ldr	r2, [r6, #0]
d004d542:	1a9b      	subs	r3, r3, r2
d004d544:	42ab      	cmp	r3, r5
d004d546:	dc26      	bgt.n	d004d596 <_printf_common+0x96>
d004d548:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d004d54c:	1e13      	subs	r3, r2, #0
d004d54e:	6822      	ldr	r2, [r4, #0]
d004d550:	bf18      	it	ne
d004d552:	2301      	movne	r3, #1
d004d554:	0692      	lsls	r2, r2, #26
d004d556:	d42b      	bmi.n	d004d5b0 <_printf_common+0xb0>
d004d558:	f104 0243 	add.w	r2, r4, #67	; 0x43
d004d55c:	4649      	mov	r1, r9
d004d55e:	4638      	mov	r0, r7
d004d560:	47c0      	blx	r8
d004d562:	3001      	adds	r0, #1
d004d564:	d01e      	beq.n	d004d5a4 <_printf_common+0xa4>
d004d566:	6823      	ldr	r3, [r4, #0]
d004d568:	68e5      	ldr	r5, [r4, #12]
d004d56a:	6832      	ldr	r2, [r6, #0]
d004d56c:	f003 0306 	and.w	r3, r3, #6
d004d570:	2b04      	cmp	r3, #4
d004d572:	bf08      	it	eq
d004d574:	1aad      	subeq	r5, r5, r2
d004d576:	68a3      	ldr	r3, [r4, #8]
d004d578:	6922      	ldr	r2, [r4, #16]
d004d57a:	bf0c      	ite	eq
d004d57c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d004d580:	2500      	movne	r5, #0
d004d582:	4293      	cmp	r3, r2
d004d584:	bfc4      	itt	gt
d004d586:	1a9b      	subgt	r3, r3, r2
d004d588:	18ed      	addgt	r5, r5, r3
d004d58a:	2600      	movs	r6, #0
d004d58c:	341a      	adds	r4, #26
d004d58e:	42b5      	cmp	r5, r6
d004d590:	d11a      	bne.n	d004d5c8 <_printf_common+0xc8>
d004d592:	2000      	movs	r0, #0
d004d594:	e008      	b.n	d004d5a8 <_printf_common+0xa8>
d004d596:	2301      	movs	r3, #1
d004d598:	4652      	mov	r2, sl
d004d59a:	4649      	mov	r1, r9
d004d59c:	4638      	mov	r0, r7
d004d59e:	47c0      	blx	r8
d004d5a0:	3001      	adds	r0, #1
d004d5a2:	d103      	bne.n	d004d5ac <_printf_common+0xac>
d004d5a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004d5a8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004d5ac:	3501      	adds	r5, #1
d004d5ae:	e7c6      	b.n	d004d53e <_printf_common+0x3e>
d004d5b0:	18e1      	adds	r1, r4, r3
d004d5b2:	1c5a      	adds	r2, r3, #1
d004d5b4:	2030      	movs	r0, #48	; 0x30
d004d5b6:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d004d5ba:	4422      	add	r2, r4
d004d5bc:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d004d5c0:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d004d5c4:	3302      	adds	r3, #2
d004d5c6:	e7c7      	b.n	d004d558 <_printf_common+0x58>
d004d5c8:	2301      	movs	r3, #1
d004d5ca:	4622      	mov	r2, r4
d004d5cc:	4649      	mov	r1, r9
d004d5ce:	4638      	mov	r0, r7
d004d5d0:	47c0      	blx	r8
d004d5d2:	3001      	adds	r0, #1
d004d5d4:	d0e6      	beq.n	d004d5a4 <_printf_common+0xa4>
d004d5d6:	3601      	adds	r6, #1
d004d5d8:	e7d9      	b.n	d004d58e <_printf_common+0x8e>
	...

d004d5dc <_printf_i>:
d004d5dc:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d004d5e0:	460c      	mov	r4, r1
d004d5e2:	4691      	mov	r9, r2
d004d5e4:	7e27      	ldrb	r7, [r4, #24]
d004d5e6:	990c      	ldr	r1, [sp, #48]	; 0x30
d004d5e8:	2f78      	cmp	r7, #120	; 0x78
d004d5ea:	4680      	mov	r8, r0
d004d5ec:	469a      	mov	sl, r3
d004d5ee:	f104 0243 	add.w	r2, r4, #67	; 0x43
d004d5f2:	d807      	bhi.n	d004d604 <_printf_i+0x28>
d004d5f4:	2f62      	cmp	r7, #98	; 0x62
d004d5f6:	d80a      	bhi.n	d004d60e <_printf_i+0x32>
d004d5f8:	2f00      	cmp	r7, #0
d004d5fa:	f000 80d8 	beq.w	d004d7ae <_printf_i+0x1d2>
d004d5fe:	2f58      	cmp	r7, #88	; 0x58
d004d600:	f000 80a3 	beq.w	d004d74a <_printf_i+0x16e>
d004d604:	f104 0642 	add.w	r6, r4, #66	; 0x42
d004d608:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d004d60c:	e03a      	b.n	d004d684 <_printf_i+0xa8>
d004d60e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d004d612:	2b15      	cmp	r3, #21
d004d614:	d8f6      	bhi.n	d004d604 <_printf_i+0x28>
d004d616:	a001      	add	r0, pc, #4	; (adr r0, d004d61c <_printf_i+0x40>)
d004d618:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d004d61c:	d004d675 	.word	0xd004d675
d004d620:	d004d689 	.word	0xd004d689
d004d624:	d004d605 	.word	0xd004d605
d004d628:	d004d605 	.word	0xd004d605
d004d62c:	d004d605 	.word	0xd004d605
d004d630:	d004d605 	.word	0xd004d605
d004d634:	d004d689 	.word	0xd004d689
d004d638:	d004d605 	.word	0xd004d605
d004d63c:	d004d605 	.word	0xd004d605
d004d640:	d004d605 	.word	0xd004d605
d004d644:	d004d605 	.word	0xd004d605
d004d648:	d004d795 	.word	0xd004d795
d004d64c:	d004d6b9 	.word	0xd004d6b9
d004d650:	d004d777 	.word	0xd004d777
d004d654:	d004d605 	.word	0xd004d605
d004d658:	d004d605 	.word	0xd004d605
d004d65c:	d004d7b7 	.word	0xd004d7b7
d004d660:	d004d605 	.word	0xd004d605
d004d664:	d004d6b9 	.word	0xd004d6b9
d004d668:	d004d605 	.word	0xd004d605
d004d66c:	d004d605 	.word	0xd004d605
d004d670:	d004d77f 	.word	0xd004d77f
d004d674:	680b      	ldr	r3, [r1, #0]
d004d676:	1d1a      	adds	r2, r3, #4
d004d678:	681b      	ldr	r3, [r3, #0]
d004d67a:	600a      	str	r2, [r1, #0]
d004d67c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d004d680:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d004d684:	2301      	movs	r3, #1
d004d686:	e0a3      	b.n	d004d7d0 <_printf_i+0x1f4>
d004d688:	6825      	ldr	r5, [r4, #0]
d004d68a:	6808      	ldr	r0, [r1, #0]
d004d68c:	062e      	lsls	r6, r5, #24
d004d68e:	f100 0304 	add.w	r3, r0, #4
d004d692:	d50a      	bpl.n	d004d6aa <_printf_i+0xce>
d004d694:	6805      	ldr	r5, [r0, #0]
d004d696:	600b      	str	r3, [r1, #0]
d004d698:	2d00      	cmp	r5, #0
d004d69a:	da03      	bge.n	d004d6a4 <_printf_i+0xc8>
d004d69c:	232d      	movs	r3, #45	; 0x2d
d004d69e:	426d      	negs	r5, r5
d004d6a0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d004d6a4:	485e      	ldr	r0, [pc, #376]	; (d004d820 <_printf_i+0x244>)
d004d6a6:	230a      	movs	r3, #10
d004d6a8:	e019      	b.n	d004d6de <_printf_i+0x102>
d004d6aa:	f015 0f40 	tst.w	r5, #64	; 0x40
d004d6ae:	6805      	ldr	r5, [r0, #0]
d004d6b0:	600b      	str	r3, [r1, #0]
d004d6b2:	bf18      	it	ne
d004d6b4:	b22d      	sxthne	r5, r5
d004d6b6:	e7ef      	b.n	d004d698 <_printf_i+0xbc>
d004d6b8:	680b      	ldr	r3, [r1, #0]
d004d6ba:	6825      	ldr	r5, [r4, #0]
d004d6bc:	1d18      	adds	r0, r3, #4
d004d6be:	6008      	str	r0, [r1, #0]
d004d6c0:	0628      	lsls	r0, r5, #24
d004d6c2:	d501      	bpl.n	d004d6c8 <_printf_i+0xec>
d004d6c4:	681d      	ldr	r5, [r3, #0]
d004d6c6:	e002      	b.n	d004d6ce <_printf_i+0xf2>
d004d6c8:	0669      	lsls	r1, r5, #25
d004d6ca:	d5fb      	bpl.n	d004d6c4 <_printf_i+0xe8>
d004d6cc:	881d      	ldrh	r5, [r3, #0]
d004d6ce:	4854      	ldr	r0, [pc, #336]	; (d004d820 <_printf_i+0x244>)
d004d6d0:	2f6f      	cmp	r7, #111	; 0x6f
d004d6d2:	bf0c      	ite	eq
d004d6d4:	2308      	moveq	r3, #8
d004d6d6:	230a      	movne	r3, #10
d004d6d8:	2100      	movs	r1, #0
d004d6da:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d004d6de:	6866      	ldr	r6, [r4, #4]
d004d6e0:	60a6      	str	r6, [r4, #8]
d004d6e2:	2e00      	cmp	r6, #0
d004d6e4:	bfa2      	ittt	ge
d004d6e6:	6821      	ldrge	r1, [r4, #0]
d004d6e8:	f021 0104 	bicge.w	r1, r1, #4
d004d6ec:	6021      	strge	r1, [r4, #0]
d004d6ee:	b90d      	cbnz	r5, d004d6f4 <_printf_i+0x118>
d004d6f0:	2e00      	cmp	r6, #0
d004d6f2:	d04d      	beq.n	d004d790 <_printf_i+0x1b4>
d004d6f4:	4616      	mov	r6, r2
d004d6f6:	fbb5 f1f3 	udiv	r1, r5, r3
d004d6fa:	fb03 5711 	mls	r7, r3, r1, r5
d004d6fe:	5dc7      	ldrb	r7, [r0, r7]
d004d700:	f806 7d01 	strb.w	r7, [r6, #-1]!
d004d704:	462f      	mov	r7, r5
d004d706:	42bb      	cmp	r3, r7
d004d708:	460d      	mov	r5, r1
d004d70a:	d9f4      	bls.n	d004d6f6 <_printf_i+0x11a>
d004d70c:	2b08      	cmp	r3, #8
d004d70e:	d10b      	bne.n	d004d728 <_printf_i+0x14c>
d004d710:	6823      	ldr	r3, [r4, #0]
d004d712:	07df      	lsls	r7, r3, #31
d004d714:	d508      	bpl.n	d004d728 <_printf_i+0x14c>
d004d716:	6923      	ldr	r3, [r4, #16]
d004d718:	6861      	ldr	r1, [r4, #4]
d004d71a:	4299      	cmp	r1, r3
d004d71c:	bfde      	ittt	le
d004d71e:	2330      	movle	r3, #48	; 0x30
d004d720:	f806 3c01 	strble.w	r3, [r6, #-1]
d004d724:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d004d728:	1b92      	subs	r2, r2, r6
d004d72a:	6122      	str	r2, [r4, #16]
d004d72c:	f8cd a000 	str.w	sl, [sp]
d004d730:	464b      	mov	r3, r9
d004d732:	aa03      	add	r2, sp, #12
d004d734:	4621      	mov	r1, r4
d004d736:	4640      	mov	r0, r8
d004d738:	f7ff fee2 	bl	d004d500 <_printf_common>
d004d73c:	3001      	adds	r0, #1
d004d73e:	d14c      	bne.n	d004d7da <_printf_i+0x1fe>
d004d740:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004d744:	b004      	add	sp, #16
d004d746:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004d74a:	4835      	ldr	r0, [pc, #212]	; (d004d820 <_printf_i+0x244>)
d004d74c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d004d750:	6823      	ldr	r3, [r4, #0]
d004d752:	680e      	ldr	r6, [r1, #0]
d004d754:	061f      	lsls	r7, r3, #24
d004d756:	f856 5b04 	ldr.w	r5, [r6], #4
d004d75a:	600e      	str	r6, [r1, #0]
d004d75c:	d514      	bpl.n	d004d788 <_printf_i+0x1ac>
d004d75e:	07d9      	lsls	r1, r3, #31
d004d760:	bf44      	itt	mi
d004d762:	f043 0320 	orrmi.w	r3, r3, #32
d004d766:	6023      	strmi	r3, [r4, #0]
d004d768:	b91d      	cbnz	r5, d004d772 <_printf_i+0x196>
d004d76a:	6823      	ldr	r3, [r4, #0]
d004d76c:	f023 0320 	bic.w	r3, r3, #32
d004d770:	6023      	str	r3, [r4, #0]
d004d772:	2310      	movs	r3, #16
d004d774:	e7b0      	b.n	d004d6d8 <_printf_i+0xfc>
d004d776:	6823      	ldr	r3, [r4, #0]
d004d778:	f043 0320 	orr.w	r3, r3, #32
d004d77c:	6023      	str	r3, [r4, #0]
d004d77e:	2378      	movs	r3, #120	; 0x78
d004d780:	4828      	ldr	r0, [pc, #160]	; (d004d824 <_printf_i+0x248>)
d004d782:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d004d786:	e7e3      	b.n	d004d750 <_printf_i+0x174>
d004d788:	065e      	lsls	r6, r3, #25
d004d78a:	bf48      	it	mi
d004d78c:	b2ad      	uxthmi	r5, r5
d004d78e:	e7e6      	b.n	d004d75e <_printf_i+0x182>
d004d790:	4616      	mov	r6, r2
d004d792:	e7bb      	b.n	d004d70c <_printf_i+0x130>
d004d794:	680b      	ldr	r3, [r1, #0]
d004d796:	6826      	ldr	r6, [r4, #0]
d004d798:	6960      	ldr	r0, [r4, #20]
d004d79a:	1d1d      	adds	r5, r3, #4
d004d79c:	600d      	str	r5, [r1, #0]
d004d79e:	0635      	lsls	r5, r6, #24
d004d7a0:	681b      	ldr	r3, [r3, #0]
d004d7a2:	d501      	bpl.n	d004d7a8 <_printf_i+0x1cc>
d004d7a4:	6018      	str	r0, [r3, #0]
d004d7a6:	e002      	b.n	d004d7ae <_printf_i+0x1d2>
d004d7a8:	0671      	lsls	r1, r6, #25
d004d7aa:	d5fb      	bpl.n	d004d7a4 <_printf_i+0x1c8>
d004d7ac:	8018      	strh	r0, [r3, #0]
d004d7ae:	2300      	movs	r3, #0
d004d7b0:	6123      	str	r3, [r4, #16]
d004d7b2:	4616      	mov	r6, r2
d004d7b4:	e7ba      	b.n	d004d72c <_printf_i+0x150>
d004d7b6:	680b      	ldr	r3, [r1, #0]
d004d7b8:	1d1a      	adds	r2, r3, #4
d004d7ba:	600a      	str	r2, [r1, #0]
d004d7bc:	681e      	ldr	r6, [r3, #0]
d004d7be:	6862      	ldr	r2, [r4, #4]
d004d7c0:	2100      	movs	r1, #0
d004d7c2:	4630      	mov	r0, r6
d004d7c4:	f000 f97c 	bl	d004dac0 <memchr>
d004d7c8:	b108      	cbz	r0, d004d7ce <_printf_i+0x1f2>
d004d7ca:	1b80      	subs	r0, r0, r6
d004d7cc:	6060      	str	r0, [r4, #4]
d004d7ce:	6863      	ldr	r3, [r4, #4]
d004d7d0:	6123      	str	r3, [r4, #16]
d004d7d2:	2300      	movs	r3, #0
d004d7d4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d004d7d8:	e7a8      	b.n	d004d72c <_printf_i+0x150>
d004d7da:	6923      	ldr	r3, [r4, #16]
d004d7dc:	4632      	mov	r2, r6
d004d7de:	4649      	mov	r1, r9
d004d7e0:	4640      	mov	r0, r8
d004d7e2:	47d0      	blx	sl
d004d7e4:	3001      	adds	r0, #1
d004d7e6:	d0ab      	beq.n	d004d740 <_printf_i+0x164>
d004d7e8:	6823      	ldr	r3, [r4, #0]
d004d7ea:	079b      	lsls	r3, r3, #30
d004d7ec:	d413      	bmi.n	d004d816 <_printf_i+0x23a>
d004d7ee:	68e0      	ldr	r0, [r4, #12]
d004d7f0:	9b03      	ldr	r3, [sp, #12]
d004d7f2:	4298      	cmp	r0, r3
d004d7f4:	bfb8      	it	lt
d004d7f6:	4618      	movlt	r0, r3
d004d7f8:	e7a4      	b.n	d004d744 <_printf_i+0x168>
d004d7fa:	2301      	movs	r3, #1
d004d7fc:	4632      	mov	r2, r6
d004d7fe:	4649      	mov	r1, r9
d004d800:	4640      	mov	r0, r8
d004d802:	47d0      	blx	sl
d004d804:	3001      	adds	r0, #1
d004d806:	d09b      	beq.n	d004d740 <_printf_i+0x164>
d004d808:	3501      	adds	r5, #1
d004d80a:	68e3      	ldr	r3, [r4, #12]
d004d80c:	9903      	ldr	r1, [sp, #12]
d004d80e:	1a5b      	subs	r3, r3, r1
d004d810:	42ab      	cmp	r3, r5
d004d812:	dcf2      	bgt.n	d004d7fa <_printf_i+0x21e>
d004d814:	e7eb      	b.n	d004d7ee <_printf_i+0x212>
d004d816:	2500      	movs	r5, #0
d004d818:	f104 0619 	add.w	r6, r4, #25
d004d81c:	e7f5      	b.n	d004d80a <_printf_i+0x22e>
d004d81e:	bf00      	nop
d004d820:	d0052725 	.word	0xd0052725
d004d824:	d0052736 	.word	0xd0052736

d004d828 <__sread>:
d004d828:	b510      	push	{r4, lr}
d004d82a:	460c      	mov	r4, r1
d004d82c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d830:	f000 f996 	bl	d004db60 <_read_r>
d004d834:	2800      	cmp	r0, #0
d004d836:	bfab      	itete	ge
d004d838:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d004d83a:	89a3      	ldrhlt	r3, [r4, #12]
d004d83c:	181b      	addge	r3, r3, r0
d004d83e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d004d842:	bfac      	ite	ge
d004d844:	6563      	strge	r3, [r4, #84]	; 0x54
d004d846:	81a3      	strhlt	r3, [r4, #12]
d004d848:	bd10      	pop	{r4, pc}

d004d84a <__swrite>:
d004d84a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004d84e:	461f      	mov	r7, r3
d004d850:	898b      	ldrh	r3, [r1, #12]
d004d852:	05db      	lsls	r3, r3, #23
d004d854:	4605      	mov	r5, r0
d004d856:	460c      	mov	r4, r1
d004d858:	4616      	mov	r6, r2
d004d85a:	d505      	bpl.n	d004d868 <__swrite+0x1e>
d004d85c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d860:	2302      	movs	r3, #2
d004d862:	2200      	movs	r2, #0
d004d864:	f000 f916 	bl	d004da94 <_lseek_r>
d004d868:	89a3      	ldrh	r3, [r4, #12]
d004d86a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004d86e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d004d872:	81a3      	strh	r3, [r4, #12]
d004d874:	4632      	mov	r2, r6
d004d876:	463b      	mov	r3, r7
d004d878:	4628      	mov	r0, r5
d004d87a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004d87e:	f7fd bbf7 	b.w	d004b070 <_write_r>

d004d882 <__sseek>:
d004d882:	b510      	push	{r4, lr}
d004d884:	460c      	mov	r4, r1
d004d886:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d88a:	f000 f903 	bl	d004da94 <_lseek_r>
d004d88e:	1c43      	adds	r3, r0, #1
d004d890:	89a3      	ldrh	r3, [r4, #12]
d004d892:	bf15      	itete	ne
d004d894:	6560      	strne	r0, [r4, #84]	; 0x54
d004d896:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d004d89a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d004d89e:	81a3      	strheq	r3, [r4, #12]
d004d8a0:	bf18      	it	ne
d004d8a2:	81a3      	strhne	r3, [r4, #12]
d004d8a4:	bd10      	pop	{r4, pc}

d004d8a6 <__sclose>:
d004d8a6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004d8aa:	f000 b8c1 	b.w	d004da30 <_close_r>
	...

d004d8b0 <__swbuf_r>:
d004d8b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004d8b2:	460e      	mov	r6, r1
d004d8b4:	4614      	mov	r4, r2
d004d8b6:	4605      	mov	r5, r0
d004d8b8:	b118      	cbz	r0, d004d8c2 <__swbuf_r+0x12>
d004d8ba:	6983      	ldr	r3, [r0, #24]
d004d8bc:	b90b      	cbnz	r3, d004d8c2 <__swbuf_r+0x12>
d004d8be:	f7ff fbb5 	bl	d004d02c <__sinit>
d004d8c2:	4b21      	ldr	r3, [pc, #132]	; (d004d948 <__swbuf_r+0x98>)
d004d8c4:	429c      	cmp	r4, r3
d004d8c6:	d12b      	bne.n	d004d920 <__swbuf_r+0x70>
d004d8c8:	686c      	ldr	r4, [r5, #4]
d004d8ca:	69a3      	ldr	r3, [r4, #24]
d004d8cc:	60a3      	str	r3, [r4, #8]
d004d8ce:	89a3      	ldrh	r3, [r4, #12]
d004d8d0:	071a      	lsls	r2, r3, #28
d004d8d2:	d52f      	bpl.n	d004d934 <__swbuf_r+0x84>
d004d8d4:	6923      	ldr	r3, [r4, #16]
d004d8d6:	b36b      	cbz	r3, d004d934 <__swbuf_r+0x84>
d004d8d8:	6923      	ldr	r3, [r4, #16]
d004d8da:	6820      	ldr	r0, [r4, #0]
d004d8dc:	1ac0      	subs	r0, r0, r3
d004d8de:	6963      	ldr	r3, [r4, #20]
d004d8e0:	b2f6      	uxtb	r6, r6
d004d8e2:	4283      	cmp	r3, r0
d004d8e4:	4637      	mov	r7, r6
d004d8e6:	dc04      	bgt.n	d004d8f2 <__swbuf_r+0x42>
d004d8e8:	4621      	mov	r1, r4
d004d8ea:	4628      	mov	r0, r5
d004d8ec:	f7ff fb0a 	bl	d004cf04 <_fflush_r>
d004d8f0:	bb30      	cbnz	r0, d004d940 <__swbuf_r+0x90>
d004d8f2:	68a3      	ldr	r3, [r4, #8]
d004d8f4:	3b01      	subs	r3, #1
d004d8f6:	60a3      	str	r3, [r4, #8]
d004d8f8:	6823      	ldr	r3, [r4, #0]
d004d8fa:	1c5a      	adds	r2, r3, #1
d004d8fc:	6022      	str	r2, [r4, #0]
d004d8fe:	701e      	strb	r6, [r3, #0]
d004d900:	6963      	ldr	r3, [r4, #20]
d004d902:	3001      	adds	r0, #1
d004d904:	4283      	cmp	r3, r0
d004d906:	d004      	beq.n	d004d912 <__swbuf_r+0x62>
d004d908:	89a3      	ldrh	r3, [r4, #12]
d004d90a:	07db      	lsls	r3, r3, #31
d004d90c:	d506      	bpl.n	d004d91c <__swbuf_r+0x6c>
d004d90e:	2e0a      	cmp	r6, #10
d004d910:	d104      	bne.n	d004d91c <__swbuf_r+0x6c>
d004d912:	4621      	mov	r1, r4
d004d914:	4628      	mov	r0, r5
d004d916:	f7ff faf5 	bl	d004cf04 <_fflush_r>
d004d91a:	b988      	cbnz	r0, d004d940 <__swbuf_r+0x90>
d004d91c:	4638      	mov	r0, r7
d004d91e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004d920:	4b0a      	ldr	r3, [pc, #40]	; (d004d94c <__swbuf_r+0x9c>)
d004d922:	429c      	cmp	r4, r3
d004d924:	d101      	bne.n	d004d92a <__swbuf_r+0x7a>
d004d926:	68ac      	ldr	r4, [r5, #8]
d004d928:	e7cf      	b.n	d004d8ca <__swbuf_r+0x1a>
d004d92a:	4b09      	ldr	r3, [pc, #36]	; (d004d950 <__swbuf_r+0xa0>)
d004d92c:	429c      	cmp	r4, r3
d004d92e:	bf08      	it	eq
d004d930:	68ec      	ldreq	r4, [r5, #12]
d004d932:	e7ca      	b.n	d004d8ca <__swbuf_r+0x1a>
d004d934:	4621      	mov	r1, r4
d004d936:	4628      	mov	r0, r5
d004d938:	f000 f80c 	bl	d004d954 <__swsetup_r>
d004d93c:	2800      	cmp	r0, #0
d004d93e:	d0cb      	beq.n	d004d8d8 <__swbuf_r+0x28>
d004d940:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d004d944:	e7ea      	b.n	d004d91c <__swbuf_r+0x6c>
d004d946:	bf00      	nop
d004d948:	d00526d4 	.word	0xd00526d4
d004d94c:	d00526f4 	.word	0xd00526f4
d004d950:	d00526b4 	.word	0xd00526b4

d004d954 <__swsetup_r>:
d004d954:	4b32      	ldr	r3, [pc, #200]	; (d004da20 <__swsetup_r+0xcc>)
d004d956:	b570      	push	{r4, r5, r6, lr}
d004d958:	681d      	ldr	r5, [r3, #0]
d004d95a:	4606      	mov	r6, r0
d004d95c:	460c      	mov	r4, r1
d004d95e:	b125      	cbz	r5, d004d96a <__swsetup_r+0x16>
d004d960:	69ab      	ldr	r3, [r5, #24]
d004d962:	b913      	cbnz	r3, d004d96a <__swsetup_r+0x16>
d004d964:	4628      	mov	r0, r5
d004d966:	f7ff fb61 	bl	d004d02c <__sinit>
d004d96a:	4b2e      	ldr	r3, [pc, #184]	; (d004da24 <__swsetup_r+0xd0>)
d004d96c:	429c      	cmp	r4, r3
d004d96e:	d10f      	bne.n	d004d990 <__swsetup_r+0x3c>
d004d970:	686c      	ldr	r4, [r5, #4]
d004d972:	89a3      	ldrh	r3, [r4, #12]
d004d974:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d004d978:	0719      	lsls	r1, r3, #28
d004d97a:	d42c      	bmi.n	d004d9d6 <__swsetup_r+0x82>
d004d97c:	06dd      	lsls	r5, r3, #27
d004d97e:	d411      	bmi.n	d004d9a4 <__swsetup_r+0x50>
d004d980:	2309      	movs	r3, #9
d004d982:	6033      	str	r3, [r6, #0]
d004d984:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d004d988:	81a3      	strh	r3, [r4, #12]
d004d98a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004d98e:	e03e      	b.n	d004da0e <__swsetup_r+0xba>
d004d990:	4b25      	ldr	r3, [pc, #148]	; (d004da28 <__swsetup_r+0xd4>)
d004d992:	429c      	cmp	r4, r3
d004d994:	d101      	bne.n	d004d99a <__swsetup_r+0x46>
d004d996:	68ac      	ldr	r4, [r5, #8]
d004d998:	e7eb      	b.n	d004d972 <__swsetup_r+0x1e>
d004d99a:	4b24      	ldr	r3, [pc, #144]	; (d004da2c <__swsetup_r+0xd8>)
d004d99c:	429c      	cmp	r4, r3
d004d99e:	bf08      	it	eq
d004d9a0:	68ec      	ldreq	r4, [r5, #12]
d004d9a2:	e7e6      	b.n	d004d972 <__swsetup_r+0x1e>
d004d9a4:	0758      	lsls	r0, r3, #29
d004d9a6:	d512      	bpl.n	d004d9ce <__swsetup_r+0x7a>
d004d9a8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004d9aa:	b141      	cbz	r1, d004d9be <__swsetup_r+0x6a>
d004d9ac:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004d9b0:	4299      	cmp	r1, r3
d004d9b2:	d002      	beq.n	d004d9ba <__swsetup_r+0x66>
d004d9b4:	4630      	mov	r0, r6
d004d9b6:	f7ff f88f 	bl	d004cad8 <_free_r>
d004d9ba:	2300      	movs	r3, #0
d004d9bc:	6363      	str	r3, [r4, #52]	; 0x34
d004d9be:	89a3      	ldrh	r3, [r4, #12]
d004d9c0:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d004d9c4:	81a3      	strh	r3, [r4, #12]
d004d9c6:	2300      	movs	r3, #0
d004d9c8:	6063      	str	r3, [r4, #4]
d004d9ca:	6923      	ldr	r3, [r4, #16]
d004d9cc:	6023      	str	r3, [r4, #0]
d004d9ce:	89a3      	ldrh	r3, [r4, #12]
d004d9d0:	f043 0308 	orr.w	r3, r3, #8
d004d9d4:	81a3      	strh	r3, [r4, #12]
d004d9d6:	6923      	ldr	r3, [r4, #16]
d004d9d8:	b94b      	cbnz	r3, d004d9ee <__swsetup_r+0x9a>
d004d9da:	89a3      	ldrh	r3, [r4, #12]
d004d9dc:	f403 7320 	and.w	r3, r3, #640	; 0x280
d004d9e0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d004d9e4:	d003      	beq.n	d004d9ee <__swsetup_r+0x9a>
d004d9e6:	4621      	mov	r1, r4
d004d9e8:	4630      	mov	r0, r6
d004d9ea:	f7ff fbe3 	bl	d004d1b4 <__smakebuf_r>
d004d9ee:	89a0      	ldrh	r0, [r4, #12]
d004d9f0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d004d9f4:	f010 0301 	ands.w	r3, r0, #1
d004d9f8:	d00a      	beq.n	d004da10 <__swsetup_r+0xbc>
d004d9fa:	2300      	movs	r3, #0
d004d9fc:	60a3      	str	r3, [r4, #8]
d004d9fe:	6963      	ldr	r3, [r4, #20]
d004da00:	425b      	negs	r3, r3
d004da02:	61a3      	str	r3, [r4, #24]
d004da04:	6923      	ldr	r3, [r4, #16]
d004da06:	b943      	cbnz	r3, d004da1a <__swsetup_r+0xc6>
d004da08:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d004da0c:	d1ba      	bne.n	d004d984 <__swsetup_r+0x30>
d004da0e:	bd70      	pop	{r4, r5, r6, pc}
d004da10:	0781      	lsls	r1, r0, #30
d004da12:	bf58      	it	pl
d004da14:	6963      	ldrpl	r3, [r4, #20]
d004da16:	60a3      	str	r3, [r4, #8]
d004da18:	e7f4      	b.n	d004da04 <__swsetup_r+0xb0>
d004da1a:	2000      	movs	r0, #0
d004da1c:	e7f7      	b.n	d004da0e <__swsetup_r+0xba>
d004da1e:	bf00      	nop
d004da20:	d005275c 	.word	0xd005275c
d004da24:	d00526d4 	.word	0xd00526d4
d004da28:	d00526f4 	.word	0xd00526f4
d004da2c:	d00526b4 	.word	0xd00526b4

d004da30 <_close_r>:
d004da30:	b538      	push	{r3, r4, r5, lr}
d004da32:	4d06      	ldr	r5, [pc, #24]	; (d004da4c <_close_r+0x1c>)
d004da34:	2300      	movs	r3, #0
d004da36:	4604      	mov	r4, r0
d004da38:	4608      	mov	r0, r1
d004da3a:	602b      	str	r3, [r5, #0]
d004da3c:	f7fd fb52 	bl	d004b0e4 <_close>
d004da40:	1c43      	adds	r3, r0, #1
d004da42:	d102      	bne.n	d004da4a <_close_r+0x1a>
d004da44:	682b      	ldr	r3, [r5, #0]
d004da46:	b103      	cbz	r3, d004da4a <_close_r+0x1a>
d004da48:	6023      	str	r3, [r4, #0]
d004da4a:	bd38      	pop	{r3, r4, r5, pc}
d004da4c:	d0054518 	.word	0xd0054518

d004da50 <_fstat_r>:
d004da50:	b538      	push	{r3, r4, r5, lr}
d004da52:	4d07      	ldr	r5, [pc, #28]	; (d004da70 <_fstat_r+0x20>)
d004da54:	2300      	movs	r3, #0
d004da56:	4604      	mov	r4, r0
d004da58:	4608      	mov	r0, r1
d004da5a:	4611      	mov	r1, r2
d004da5c:	602b      	str	r3, [r5, #0]
d004da5e:	f7fd fb45 	bl	d004b0ec <_fstat>
d004da62:	1c43      	adds	r3, r0, #1
d004da64:	d102      	bne.n	d004da6c <_fstat_r+0x1c>
d004da66:	682b      	ldr	r3, [r5, #0]
d004da68:	b103      	cbz	r3, d004da6c <_fstat_r+0x1c>
d004da6a:	6023      	str	r3, [r4, #0]
d004da6c:	bd38      	pop	{r3, r4, r5, pc}
d004da6e:	bf00      	nop
d004da70:	d0054518 	.word	0xd0054518

d004da74 <_isatty_r>:
d004da74:	b538      	push	{r3, r4, r5, lr}
d004da76:	4d06      	ldr	r5, [pc, #24]	; (d004da90 <_isatty_r+0x1c>)
d004da78:	2300      	movs	r3, #0
d004da7a:	4604      	mov	r4, r0
d004da7c:	4608      	mov	r0, r1
d004da7e:	602b      	str	r3, [r5, #0]
d004da80:	f7fd fb5c 	bl	d004b13c <_isatty>
d004da84:	1c43      	adds	r3, r0, #1
d004da86:	d102      	bne.n	d004da8e <_isatty_r+0x1a>
d004da88:	682b      	ldr	r3, [r5, #0]
d004da8a:	b103      	cbz	r3, d004da8e <_isatty_r+0x1a>
d004da8c:	6023      	str	r3, [r4, #0]
d004da8e:	bd38      	pop	{r3, r4, r5, pc}
d004da90:	d0054518 	.word	0xd0054518

d004da94 <_lseek_r>:
d004da94:	b538      	push	{r3, r4, r5, lr}
d004da96:	4d07      	ldr	r5, [pc, #28]	; (d004dab4 <_lseek_r+0x20>)
d004da98:	4604      	mov	r4, r0
d004da9a:	4608      	mov	r0, r1
d004da9c:	4611      	mov	r1, r2
d004da9e:	2200      	movs	r2, #0
d004daa0:	602a      	str	r2, [r5, #0]
d004daa2:	461a      	mov	r2, r3
d004daa4:	f7fd fb28 	bl	d004b0f8 <_lseek>
d004daa8:	1c43      	adds	r3, r0, #1
d004daaa:	d102      	bne.n	d004dab2 <_lseek_r+0x1e>
d004daac:	682b      	ldr	r3, [r5, #0]
d004daae:	b103      	cbz	r3, d004dab2 <_lseek_r+0x1e>
d004dab0:	6023      	str	r3, [r4, #0]
d004dab2:	bd38      	pop	{r3, r4, r5, pc}
d004dab4:	d0054518 	.word	0xd0054518
	...

d004dac0 <memchr>:
d004dac0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d004dac4:	2a10      	cmp	r2, #16
d004dac6:	db2b      	blt.n	d004db20 <memchr+0x60>
d004dac8:	f010 0f07 	tst.w	r0, #7
d004dacc:	d008      	beq.n	d004dae0 <memchr+0x20>
d004dace:	f810 3b01 	ldrb.w	r3, [r0], #1
d004dad2:	3a01      	subs	r2, #1
d004dad4:	428b      	cmp	r3, r1
d004dad6:	d02d      	beq.n	d004db34 <memchr+0x74>
d004dad8:	f010 0f07 	tst.w	r0, #7
d004dadc:	b342      	cbz	r2, d004db30 <memchr+0x70>
d004dade:	d1f6      	bne.n	d004dace <memchr+0xe>
d004dae0:	b4f0      	push	{r4, r5, r6, r7}
d004dae2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d004dae6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d004daea:	f022 0407 	bic.w	r4, r2, #7
d004daee:	f07f 0700 	mvns.w	r7, #0
d004daf2:	2300      	movs	r3, #0
d004daf4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d004daf8:	3c08      	subs	r4, #8
d004dafa:	ea85 0501 	eor.w	r5, r5, r1
d004dafe:	ea86 0601 	eor.w	r6, r6, r1
d004db02:	fa85 f547 	uadd8	r5, r5, r7
d004db06:	faa3 f587 	sel	r5, r3, r7
d004db0a:	fa86 f647 	uadd8	r6, r6, r7
d004db0e:	faa5 f687 	sel	r6, r5, r7
d004db12:	b98e      	cbnz	r6, d004db38 <memchr+0x78>
d004db14:	d1ee      	bne.n	d004daf4 <memchr+0x34>
d004db16:	bcf0      	pop	{r4, r5, r6, r7}
d004db18:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d004db1c:	f002 0207 	and.w	r2, r2, #7
d004db20:	b132      	cbz	r2, d004db30 <memchr+0x70>
d004db22:	f810 3b01 	ldrb.w	r3, [r0], #1
d004db26:	3a01      	subs	r2, #1
d004db28:	ea83 0301 	eor.w	r3, r3, r1
d004db2c:	b113      	cbz	r3, d004db34 <memchr+0x74>
d004db2e:	d1f8      	bne.n	d004db22 <memchr+0x62>
d004db30:	2000      	movs	r0, #0
d004db32:	4770      	bx	lr
d004db34:	3801      	subs	r0, #1
d004db36:	4770      	bx	lr
d004db38:	2d00      	cmp	r5, #0
d004db3a:	bf06      	itte	eq
d004db3c:	4635      	moveq	r5, r6
d004db3e:	3803      	subeq	r0, #3
d004db40:	3807      	subne	r0, #7
d004db42:	f015 0f01 	tst.w	r5, #1
d004db46:	d107      	bne.n	d004db58 <memchr+0x98>
d004db48:	3001      	adds	r0, #1
d004db4a:	f415 7f80 	tst.w	r5, #256	; 0x100
d004db4e:	bf02      	ittt	eq
d004db50:	3001      	addeq	r0, #1
d004db52:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d004db56:	3001      	addeq	r0, #1
d004db58:	bcf0      	pop	{r4, r5, r6, r7}
d004db5a:	3801      	subs	r0, #1
d004db5c:	4770      	bx	lr
d004db5e:	bf00      	nop

d004db60 <_read_r>:
d004db60:	b538      	push	{r3, r4, r5, lr}
d004db62:	4d07      	ldr	r5, [pc, #28]	; (d004db80 <_read_r+0x20>)
d004db64:	4604      	mov	r4, r0
d004db66:	4608      	mov	r0, r1
d004db68:	4611      	mov	r1, r2
d004db6a:	2200      	movs	r2, #0
d004db6c:	602a      	str	r2, [r5, #0]
d004db6e:	461a      	mov	r2, r3
d004db70:	f7fd faae 	bl	d004b0d0 <_read>
d004db74:	1c43      	adds	r3, r0, #1
d004db76:	d102      	bne.n	d004db7e <_read_r+0x1e>
d004db78:	682b      	ldr	r3, [r5, #0]
d004db7a:	b103      	cbz	r3, d004db7e <_read_r+0x1e>
d004db7c:	6023      	str	r3, [r4, #0]
d004db7e:	bd38      	pop	{r3, r4, r5, pc}
d004db80:	d0054518 	.word	0xd0054518
d004db84:	65627543 	.word	0x65627543
d004db88:	65642079 	.word	0x65642079
d004db8c:	65206f6d 	.word	0x65206f6d
d004db90:	6465646e 	.word	0x6465646e
d004db94:	20293a20 	.word	0x20293a20
d004db98:	3d646f6d 	.word	0x3d646f6d
d004db9c:	000a6425 	.word	0x000a6425
d004dba0:	00000000 	.word	0x00000000
d004dba4:	0000ffff 	.word	0x0000ffff
d004dba8:	00000000 	.word	0x00000000
d004dbac:	00000001 	.word	0x00000001
d004dbb0:	ffff0000 	.word	0xffff0000
d004dbb4:	00000000 	.word	0x00000000
d004dbb8:	00010000 	.word	0x00010000
d004dbbc:	00000000 	.word	0x00000000
d004dbc0:	0000ffff 	.word	0x0000ffff
d004dbc4:	00000000 	.word	0x00000000
d004dbc8:	00000001 	.word	0x00000001
d004dbcc:	00000000 	.word	0x00000000
d004dbd0:	00010000 	.word	0x00010000
d004dbd4:	00000000 	.word	0x00000000
d004dbd8:	00000001 	.word	0x00000001
d004dbdc:	00000000 	.word	0x00000000
d004dbe0:	00000001 	.word	0x00000001
	...
d004dbec:	00000001 	.word	0x00000001
d004dbf0:	00000000 	.word	0x00000000
d004dbf4:	00000001 	.word	0x00000001
d004dbf8:	00010000 	.word	0x00010000
d004dbfc:	00000000 	.word	0x00000000
d004dc00:	00000001 	.word	0x00000001
d004dc04:	00000000 	.word	0x00000000
d004dc08:	00010000 	.word	0x00010000
	...
d004dc14:	00000001 	.word	0x00000001
d004dc18:	00000001 	.word	0x00000001
d004dc1c:	00000000 	.word	0x00000000
d004dc20:	00010000 	.word	0x00010000
	...
d004dc2c:	00000001 	.word	0x00000001

d004dc30 <face_base_idx>:
d004dc30:	04030201 00000605                       ........

d004dc38 <message>:
d004dc38:	20202020 20202020 20202020 2a2a2a2a                 ****
d004dc48:	4c454820 2a204f4c 0a2a2a2a 2d2d2d0a      HELLO ****..---
d004dc58:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004dc68:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004dc78:	0a2d2d2d 6c65480a 202c6f6c 6f682049     ---..Hello, I ho
d004dc88:	74206570 20736968 6f6d6564 726f7720     pe this demo wor
d004dc98:	0a21736b 6968540a 73692073 65687420     ks!..This is the
d004dca8:	646c6f20 63643320 74656275 20747365      old 3dcubetest 
d004dcb8:	61656469 6f700a0a 64657472 206f7420     idea..ported to 
d004dcc8:	20656874 6577656e 69532072 786f6264     the newer Sidbox
d004dcd8:	49504120 490a0a2e 72642074 20737761      API...It draws 
d004dce8:	6f6d2061 69687072 7320676e 69646275     a morphing subdi
d004dcf8:	65646976 75632064 0a2c6562 6220610a     vided cube,..a b
d004dd08:	73206769 6c6f7263 676e696c 65686320     ig scrolling che
d004dd18:	72656b63 72616f62 616c2064 2c726579     ckerboard layer,
d004dd28:	6e610a0a 68742064 76207369 20797265     ..and this very 
d004dd38:	6f706d69 6e617472 63732074 6c6c6f72     important scroll
d004dd48:	65742079 0a2e7478 2d2d2d0a 2d2d2d2d     y text...-------
d004dd58:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004dd68:	2d2d2d2d 2d2d2d2d 2d2d2d2d 0a2d2d2d     ---------------.
d004dd78:	6568540a 646c6f20 6d656420 6f70206f     .The old demo po
d004dd88:	2064656b 20495041 75727473 72757463     ked API structur
d004dd98:	0a0a7365 65726964 796c7463 6854202e     es..directly. Th
d004dda8:	6f207369 7520656e 20736573 20656874     is one uses the 
d004ddb8:	77203276 70706172 0a737265 646e610a     v2 wrappers..and
d004ddc8:	65656b20 74207370 74206568 20796e69      keeps the tiny 
d004ddd8:	61697274 656c676e 73617220 69726574     triangle rasteri
d004dde8:	0a72657a 636f6c0a 74206c61 6874206f     zer..local to th
d004ddf8:	70612065 74656c70 2d0a0a2e 2d2d2d2d     e applet...-----
d004de08:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004de18:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d004de28:	480a0a2d 20646c6f 45524946 4f202b20     -..Hold FIRE + O
d004de38:	6f74204b 69786520 0a0a2e74 20202020     K to exit...    
d004de48:	20202020 20202020 65202020 6520646e                end e
d004de58:	0a21646e 000a0a0a                       nd!.....

d004de60 <tune>:
d004de60:	696c6365 00657370 00000000 00000000     eclipse.........
d004de70:	00000000 69482023 74694c2d 00000065     ....# Hi-Lite...
	...
d004de88:	80020000 00004000 63280100 79622029     .....@....(c) by
d004de98:	2d696820 6574696c 32392720 002e2e2e      hi-lite '92....
d004dea8:	00000000 01000000 5c2f5c2f 5c2f5c2f     ......../\/\/\/\
d004deb8:	5c2f5c2f 5c2f5c2f 5c2f5c2f 0001002f     /\/\/\/\/\/\/...
d004dec8:	00004000 2e2e0100 6e612e2e 6568746f     .@........anothe
d004ded8:	68632072 75747069 0021656e 4000d802     r chiptune!....@
d004dee8:	01000000 73696874 656e6f20 73617720     ....this one was
d004def8:	64616d20 6e6f2065 96000000 09004000      made on.....@..
d004df08:	68748d00 61642065 65772079 746f6720     ..the day we got
d004df18:	72756f20 00000000 40001800 0e000a00      our.......@....
d004df28:	74736165 206e7265 61636176 6e6f6974     eastern vacation
d004df38:	6e692073 17000000 09004000 63730e00     s in.....@....sc
d004df48:	6c6f6f68 616d2e20 20656279 74616874     hool .maybe that
d004df58:	00007327 40001600 0e000800 20796877     's.....@....why 
d004df68:	73696874 756f7320 2073646e 74616874     this sounds that
d004df78:	15000000 07004000 61680e00 20797070     .....@....happy 
d004df88:	3f2e2e2e 3f213f21 3f213f21 00213f21     ...?!?!?!?!?!?!.
d004df98:	40001400 0e000600 206d7573 6c6c6568     ...@....sum hell
d004dfa8:	7420736f 2d3a206f 0000003e 12000000     os to :->.......
d004dfb8:	04004000 2e6a0e00 2e652e6f 6565722c     .@....j.o.e.,ree
d004dfc8:	2c6b6f62 61657264 0072656d 40000e00     bok,dreamer....@
d004dfd8:	0e000000 2c6c686a 68746f67 612c6369     ....jhl,gothic,a
d004dfe8:	2f636564 2e702173 1800002e 0a004000     dec/s!p......@..
d004dff8:	72620e00 6d2c736f 65747361 79632f72     ..bros,master/cy
d004e008:	2e786174 002e2e2e 40001700 0e000900     tax........@....
d004e018:	69646f7a 762f6361 2e2e2e66 2e2e2e2e     zodiac/vf.......
d004e028:	2e2e2e2e 1600002e 08004000 61640e00     .........@....da
d004e038:	276c7972 6172206e 742f6576 2e2e6c73     ryl'n rave/tsl..
d004e048:	002e2e2e 40001500 0e000700 20646e61     .......@....and 
d004e058:	206c6c61 20656874 6568746f 00002072     all the other ..
d004e068:	14000000 06004000 696e0e00 67206563     .....@....nice g
d004e078:	20737975 6e6b2069 2e20776f 002e2e2e     uys i know .....
d004e088:	40001200 0e000400 6f63666f 65737275     ...@....ofcourse
d004e098:	206f6e20 65657267 74207a74 0e00006f      no greetz to...
d004e0a8:	00004000 68740e00 2065736f 206f6877     .@....those who 
d004e0b8:	6e657261 6e207427 00656369 00000000     aren't nice.....
d004e0c8:	01000000 622e2e2e 6c206461 206b6375     .......bad luck 
d004e0d8:	213f213f 2e2e2e3f 0000002e 00000000     ?!?!?...........
d004e0e8:	20730100 20672069 2065206e 2d3a2064     ..s i g n e d :-
d004e0f8:	0000003e 00000000 00000000 01000000     >...............
d004e108:	69682d3d 74696c2d 21732f65 72742f70     =-hi-lite/s!p/tr
d004e118:	3d2d6973 0000002d 00000000 32300100     si-=-.........02
d004e128:	2d34302d 20203239 20202020 34312020     -04-92        14
d004e138:	0032343a 00000000 01000000 00000000     :42.............
	...
d004e160:	00000100 00000000 00000000 00000000     ................
	...
d004e17c:	01000000 00000000 00000000 00000000     ................
	...
d004e19c:	00000100 00000000 00000000 00000000     ................
	...
d004e1b8:	01000000 00000000 00000000 00000000     ................
	...
d004e1d8:	00000100 00000000 00000000 00000000     ................
	...
d004e1f4:	01000000 00000000 00000000 00000000     ................
	...
d004e214:	7f0f0100 03020100 07060504 0a090908     ................
d004e224:	000c0b0b 00000000 00000000 00000000     ................
	...
d004e298:	2e4b2e4d 0f3aa602 0f5a5301 040f0000     M.K...:..SZ.....
d004e2a8:	00000000 0f0a0000 0f0a0000 00000000     ................
d004e2b8:	00000000 2a1caa00 0f5a5301 00000000     .......*.SZ.....
d004e2c8:	00000000 0f0a0000 0f0a0000 00000000     ................
d004e2d8:	00000000 0e4a5301 0e5aaa00 00000000     .....SJ...Z.....
d004e2e8:	00000000 0e0a0000 0e0a0000 00000000     ................
d004e2f8:	00000000 201caa00 0e5a5301 00000000     ....... .SZ.....
d004e308:	00000000 0e0a0000 0e0a0000 00000000     ................
d004e318:	00000000 3a1caa00 0c5a5301 00000000     .......:.SZ.....
d004e328:	00000000 0c0a0000 0c0a0000 00000000     ................
d004e338:	00000000 0c3aa602 0c5aaa00 00000000     ......:...Z.....
d004e348:	00000000 0c0a0000 0c0a0000 00000000     ................
d004e358:	00000000 0b4a5301 0b5a5301 00000000     .....SJ..SZ.....
d004e368:	00000000 0b0a0000 0b0a0000 00000000     ................
d004e378:	00000000 201caa00 0b5abe00 00000000     ....... ..Z.....
d004e388:	00000000 0b0a0000 0b0a0000 00000000     ................
d004e398:	00000000 0a3aa602 0a5aaa00 00000000     ......:...Z.....
d004e3a8:	00000000 0a0a0000 0a0a0000 00000000     ................
d004e3b8:	00000000 2a1caa00 0a5a5301 00000000     .......*.SZ.....
d004e3c8:	00000000 0a0a0000 0a0a0000 00000000     ................
d004e3d8:	00000000 094a5301 095a5301 00000000     .....SJ..SZ.....
d004e3e8:	00000000 090a0000 090a0000 00000000     ................
d004e3f8:	00000000 201caa00 095aaa00 00000000     ....... ..Z.....
d004e408:	00000000 090a0000 090a0000 00000000     ................
d004e418:	00000000 081aaa00 085a5301 00000000     .........SZ.....
d004e428:	00000000 080a0000 080a0000 00000000     ................
d004e438:	00000000 083aa602 085a5301 00000000     ......:..SZ.....
d004e448:	00000000 080a0000 080a0000 00000000     ................
d004e458:	00000000 074a5301 075aaa00 00000000     .....SJ...Z.....
d004e468:	00000000 070a0000 070a0000 00000000     ................
d004e478:	00000000 2a1caa00 075abe00 00000000     .......*..Z.....
d004e488:	00000000 070a0000 070a0000 00000000     ................
d004e498:	00000000 063aa602 065a5301 00000000     ......:..SZ.....
d004e4a8:	00000000 060a0000 060a0000 00000000     ................
d004e4b8:	00000000 201caa00 065a5301 00000000     ....... .SZ.....
d004e4c8:	00000000 060a0000 060a0000 00000000     ................
d004e4d8:	00000000 054a5301 055aaa00 00000000     .....SJ...Z.....
d004e4e8:	00000000 050a0000 050a0000 00000000     ................
d004e4f8:	00000000 201caa00 055a5301 00000000     ....... .SZ.....
d004e508:	00000000 050a0000 050a0000 00000000     ................
d004e518:	00000000 041aaa00 045a5301 00000000     .........SZ.....
d004e528:	00000000 040a0000 040a0000 00000000     ................
d004e538:	00000000 043aa602 045aaa00 00000000     ......:...Z.....
d004e548:	00000000 040a0000 040a0000 00000000     ................
d004e558:	00000000 034a5301 035a5301 00000000     .....SJ..SZ.....
d004e568:	00000000 030a0000 030a0000 00000000     ................
d004e578:	00000000 2a1caa00 035abe00 00000000     .......*..Z.....
d004e588:	00000000 030a0000 030a0000 00000000     ................
d004e598:	00000000 023aa602 025aaa00 00000000     ......:...Z.....
d004e5a8:	00000000 020a0000 020a0000 00000000     ................
d004e5b8:	00000000 201caa00 025a5301 00000000     ....... .SZ.....
d004e5c8:	00000000 020a0000 020a0000 00000000     ................
d004e5d8:	00000000 014a5301 015a5301 00000000     .....SJ..SZ.....
d004e5e8:	00000000 010a0000 010a0000 00000000     ................
d004e5f8:	00000000 201caa00 015aaa00 00000000     ....... ..Z.....
d004e608:	00000000 010a0000 010a0000 00000000     ................
d004e618:	00000000 0010aa00 00505301 00000000     .........SP.....
	...
d004e63c:	0030a602 00505301 00000000 00000000     ..0..SP.........
	...
d004e65c:	2e4c5301 0050aa00 00000000 00000000     .SL...P.........
	...
d004e67c:	00405301 0050be00 00000000 00000000     .S@...P.........
	...
d004e69c:	043fa602 00505301 4760ac01 00000000     ..?..SP...`G....
	...
d004e6b4:	47700000 00000000 2a1caa00 00505301     ..pG.......*.SP.
d004e6c4:	47800000 00000000 00000000 00000000     ...G............
d004e6d4:	47900000 00000000 00405301 0050aa00     ...G.....S@...P.
d004e6e4:	47a00000 00000000 00000000 00000000     ...G............
d004e6f4:	47b00000 00000000 201caa00 00505301     ...G....... .SP.
d004e704:	47c00000 00000000 00000000 00000000     ...G............
d004e714:	47b00000 00000000 3a1caa00 00505301     ...G.......:.SP.
d004e724:	47a00000 00000000 00000000 00000000     ...G............
d004e734:	47900000 00000000 0030a602 0050aa00     ...G......0...P.
d004e744:	47800000 00000000 00000000 00000000     ...G............
d004e754:	47700000 00000000 00405301 00505301     ..pG.....S@..SP.
d004e764:	47600000 00000000 00000000 00000000     ..`G............
d004e774:	47700000 00000000 201caa00 0050be00     ..pG....... ..P.
d004e784:	47800000 00000000 00000000 00000000     ...G............
d004e794:	47900000 00000000 0030a602 0050aa00     ...G......0...P.
d004e7a4:	47a00000 00000000 00000000 00000000     ...G............
d004e7b4:	47b00000 00000000 2a1caa00 00505301     ...G.......*.SP.
d004e7c4:	47c00000 00000000 00000000 00000000     ...G............
d004e7d4:	47b00000 00000000 00405301 00505301     ...G.....S@..SP.
d004e7e4:	47a00000 00000000 00000000 00000000     ...G............
d004e7f4:	47900000 00000000 201caa00 0050aa00     ...G....... ..P.
d004e804:	47800000 00000000 00000000 00000000     ...G............
d004e814:	47700000 00000000 0010aa00 00505301     ..pG.........SP.
d004e824:	47600000 00000000 00000000 00000000     ..`G............
d004e834:	47700000 00000000 0030a602 00505301     ..pG......0..SP.
d004e844:	47800000 00000000 00000000 00000000     ...G............
d004e854:	47900000 00000000 00405301 0050aa00     ...G.....S@...P.
d004e864:	47a00000 00000000 00000000 00000000     ...G............
d004e874:	47b00000 00000000 2a1caa00 0050be00     ...G.......*..P.
d004e884:	47c00000 00000000 00000000 00000000     ...G............
d004e894:	47b00000 00000000 0030a602 00505301     ...G......0..SP.
d004e8a4:	59a00000 00000000 00000000 00000000     ...Y............
d004e8b4:	59900000 00000000 201caa00 00505301     ...Y....... .SP.
d004e8c4:	59800000 00000000 00000000 00000000     ...Y............
d004e8d4:	59700000 00000000 00405301 0050aa00     ..pY.....S@...P.
d004e8e4:	59600000 00000000 00000000 00000000     ..`Y............
d004e8f4:	59700000 00000000 201caa00 00505301     ..pY....... .SP.
d004e904:	59800000 00000000 00000000 00000000     ...Y............
d004e914:	59900000 00000000 0010aa00 00505301     ...Y.........SP.
d004e924:	59a00000 00000000 00000000 00000000     ...Y............
d004e934:	59b00000 00000000 0030a602 0050aa00     ...Y......0...P.
d004e944:	59c00000 00000000 00000000 00000000     ...Y............
d004e954:	59b00000 00000000 00405301 00505301     ...Y.....S@..SP.
d004e964:	59a00000 00000000 00000000 00000000     ...Y............
d004e974:	59900000 00000000 2a1caa00 0050be00     ...Y.......*..P.
d004e984:	59800000 00000000 00000000 00000000     ...Y............
d004e994:	59700000 00000000 0030a602 0050aa00     ..pY......0...P.
d004e9a4:	59600000 00000000 00000000 00000000     ..`Y............
d004e9b4:	59700000 00000000 201caa00 00505301     ..pY....... .SP.
d004e9c4:	59800000 00000000 00000000 00000000     ...Y............
d004e9d4:	59900000 00000000 00405301 00505301     ...Y.....S@..SP.
d004e9e4:	59a00000 00000000 00000000 00000000     ...Y............
d004e9f4:	59b00000 00000000 201caa00 0050aa00     ...Y....... ..P.
d004ea04:	59c00000 00000000 00000000 00000000     ...Y............
d004ea14:	59b00000 00000000 0010aa00 00505301     ...Y.........SP.
d004ea24:	59a00000 00000000 00000000 00000000     ...Y............
d004ea34:	59900000 00000000 0030a602 00505301     ...Y......0..SP.
d004ea44:	59800000 00000000 00000000 00000000     ...Y............
d004ea54:	59700000 00000000 2e4c5301 0050aa00     ..pY.....SL...P.
d004ea64:	59600000 00000000 00000000 00000000     ..`Y............
d004ea74:	59700000 00000000 00405301 0050be00     ..pY.....S@...P.
d004ea84:	59800000 00000000 00000000 00000000     ...Y............
d004ea94:	59900000 00000000 043fa602 00500d01     ...Y......?...P.
d004eaa4:	37605301 00000000 00000000 00000000     .S`7............
d004eab4:	37700000 00000000 2a1caa00 00500d01     ..p7.......*..P.
d004eac4:	37800000 00000000 00000000 00000000     ...7............
d004ead4:	37900000 00000000 00405301 00508700     ...7.....S@...P.
d004eae4:	37a00000 00000000 00000000 00000000     ...7............
d004eaf4:	37b00000 00000000 201caa00 00500d01     ...7....... ..P.
d004eb04:	37c00000 00000000 00000000 00000000     ...7............
d004eb14:	37b00000 00000000 3a1caa00 00500d01     ...7.......:..P.
d004eb24:	37a00000 00000000 00000000 00000000     ...7............
d004eb34:	37900000 00000000 0030a602 00508700     ...7......0...P.
d004eb44:	37800000 00000000 00000000 00000000     ...7............
d004eb54:	37700000 00000000 00405301 00500d01     ..p7.....S@...P.
d004eb64:	37600000 00000000 00000000 00000000     ..`7............
d004eb74:	37700000 00000000 201caa00 00509700     ..p7....... ..P.
d004eb84:	37800000 00000000 00000000 00000000     ...7............
d004eb94:	37900000 00000000 0030a602 00508700     ...7......0...P.
d004eba4:	37a00000 00000000 00000000 00000000     ...7............
d004ebb4:	37b00000 00000000 2a1caa00 00500d01     ...7.......*..P.
d004ebc4:	37c00000 00000000 00000000 00000000     ...7............
d004ebd4:	37b00000 00000000 00405301 00500d01     ...7.....S@...P.
d004ebe4:	37a00000 00000000 00000000 00000000     ...7............
d004ebf4:	37900000 00000000 201caa00 00508700     ...7....... ..P.
d004ec04:	37800000 00000000 00000000 00000000     ...7............
d004ec14:	37700000 00000000 0010aa00 00500d01     ..p7..........P.
d004ec24:	37600000 00000000 00000000 00000000     ..`7............
d004ec34:	37700000 00000000 0030a602 00500d01     ..p7......0...P.
d004ec44:	37800000 00000000 00000000 00000000     ...7............
d004ec54:	37900000 00000000 00405301 00508700     ...7.....S@...P.
d004ec64:	37a00000 00000000 00000000 00000000     ...7............
d004ec74:	37b00000 00000000 2a1caa00 00509700     ...7.......*..P.
d004ec84:	37c00000 00000000 00000000 00000000     ...7............
d004ec94:	37b00000 00000000 0030a602 00505301     ...7......0..SP.
d004eca4:	47a0ac01 00000000 00000000 00000000     ...G............
d004ecb4:	47900000 00000000 201caa00 00505301     ...G....... .SP.
d004ecc4:	47800000 00000000 00000000 00000000     ...G............
d004ecd4:	47700000 00000000 00405301 0050aa00     ..pG.....S@...P.
d004ece4:	47600000 00000000 00000000 00000000     ..`G............
d004ecf4:	47700000 00000000 201caa00 00505301     ..pG....... .SP.
d004ed04:	47800000 00000000 00000000 00000000     ...G............
d004ed14:	47900000 00000000 0010aa00 00505301     ...G.........SP.
d004ed24:	47a00000 00000000 00000000 00000000     ...G............
d004ed34:	47b00000 00000000 0030a602 0050aa00     ...G......0...P.
d004ed44:	47c00000 00000000 00000000 00000000     ...G............
d004ed54:	47b00000 00000000 00405301 00505301     ...G.....S@..SP.
d004ed64:	47a00000 00000000 00000000 00000000     ...G............
d004ed74:	47900000 00000000 2a1caa00 0050be00     ...G.......*..P.
d004ed84:	47800000 00000000 00000000 00000000     ...G............
d004ed94:	47700000 00000000 0030a602 0050aa00     ..pG......0...P.
d004eda4:	47600000 00000000 00000000 00000000     ..`G............
d004edb4:	47700000 00000000 201caa00 00505301     ..pG....... .SP.
d004edc4:	47800000 00000000 00000000 00000000     ...G............
d004edd4:	47900000 00000000 00405301 00505301     ...G.....S@..SP.
d004ede4:	47a00000 00000000 00000000 00000000     ...G............
d004edf4:	47b00000 00000000 201caa00 0050aa00     ...G....... ..P.
d004ee04:	47c00000 00000000 00000000 00000000     ...G............
d004ee14:	47b00000 00000000 0010aa00 00505301     ...G.........SP.
d004ee24:	47a00000 00000000 00000000 00000000     ...G............
d004ee34:	47900000 00000000 0030a602 00505301     ...G......0..SP.
d004ee44:	47800000 00000000 00000000 00000000     ...G............
d004ee54:	47700000 00000000 2e4c5301 0050aa00     ..pG.....SL...P.
d004ee64:	47600000 00000000 00000000 00000000     ..`G............
d004ee74:	47700000 00000000 00405301 0050be00     ..pG.....S@...P.
d004ee84:	47800000 00000000 00000000 00000000     ...G............
d004ee94:	47900000 00000000 043fa602 00505301     ...G......?..SP.
d004eea4:	4760ac01 306c1d01 00000000 00000000     ..`G..l0........
d004eeb4:	47700000 400c0000 2a1caa00 00505301     ..pG...@...*.SP.
d004eec4:	47800000 a2040000 00000000 00000000     ...G............
d004eed4:	47900000 a2040000 00405301 0050aa00     ...G.....S@...P.
d004eee4:	47a00000 a2040000 00000000 00000000     ...G............
d004eef4:	47b00000 a2040000 201caa00 00505301     ...G....... .SP.
d004ef04:	47c00000 a2040000 00000000 00000000     ...G............
d004ef14:	47b00000 a2040000 3a1caa00 00505301     ...G.......:.SP.
d004ef24:	47a00000 ff734001 00000000 00000000     ...G.@s.........
d004ef34:	47900000 00000000 0030a602 0050aa00     ...G......0...P.
d004ef44:	47800000 ff835301 00000000 00000000     ...G.S..........
d004ef54:	47700000 00000000 00405301 00505301     ..pG.....S@..SP.
d004ef64:	47600000 200c0000 00000000 00000000     ..`G... ........
d004ef74:	47700000 106c5301 201caa00 0050be00     ..pG.Sl.... ..P.
d004ef84:	47800000 ff934001 00000000 00000000     ...G.@..........
d004ef94:	47900000 00000000 0030a602 0050aa00     ...G......0...P.
d004efa4:	47a00000 a2040000 00000000 00000000     ...G............
d004efb4:	47b00000 a2040000 2a1caa00 00505301     ...G.......*.SP.
d004efc4:	47c00000 ffa34001 00000000 00000000     ...G.@..........
d004efd4:	47b00000 00000000 00405301 00505301     ...G.....S@..SP.
d004efe4:	47a00000 ffb35301 00000000 00000000     ...G.S..........
d004eff4:	47900000 00000000 201caa00 0050aa00     ...G....... ..P.
d004f004:	47800000 200c0000 00000000 00000000     ...G... ........
d004f014:	47700000 00000000 0010aa00 00505301     ..pG.........SP.
d004f024:	47600000 ffc3ac01 00000000 00000000     ..`G............
d004f034:	47700000 ff030000 0030a602 00505301     ..pG......0..SP.
d004f044:	47800000 04060000 00000000 00000000     ...G............
d004f054:	47900000 04060000 00405301 0050aa00     ...G.....S@...P.
d004f064:	47a00000 25bc3a02 00000000 00000000     ...G.:.%........
d004f074:	47b00000 2a0c0000 2a1caa00 0050be00     ...G...*...*..P.
d004f084:	47c00000 350c0000 00000000 00000000     ...G...5........
d004f094:	47b00000 400c0000 0030a602 00505301     ...G...@..0..SP.
d004f0a4:	59a00000 ffa31d01 00000000 00000000     ...Y............
d004f0b4:	59900000 00000000 201caa00 00505301     ...Y....... .SP.
d004f0c4:	59800000 a2040000 00000000 00000000     ...Y............
d004f0d4:	59700000 a2040000 00405301 0050aa00     ..pY.....S@...P.
d004f0e4:	59600000 a2040000 00000000 00000000     ..`Y............
d004f0f4:	59700000 a2040000 201caa00 00505301     ..pY....... .SP.
d004f104:	59800000 02060000 00000000 00000000     ...Y............
d004f114:	59900000 02060000 0010aa00 00505301     ...Y.........SP.
d004f124:	59a00000 3f934001 00000000 00000000     ...Y.@.?........
d004f134:	59b00000 00000000 0030a602 0050aa00     ...Y......0...P.
d004f144:	59c00000 8f835301 00000000 00000000     ...Y.S..........
d004f154:	59b00000 00000000 00405301 00505301     ...Y.....S@..SP.
d004f164:	59a00000 200c0000 00000000 00000000     ...Y... ........
d004f174:	59900000 00000000 2a1caa00 0050be00     ...Y.......*..P.
d004f184:	59800000 00704001 00000000 00000000     ...Y.@p.........
d004f194:	59700000 00000000 0030a602 0050aa00     ..pY......0...P.
d004f1a4:	59600000 a2040000 00000000 00000000     ..`Y............
d004f1b4:	59700000 a2040000 201caa00 00505301     ..pY....... .SP.
d004f1c4:	59800000 ff634001 00000000 00000000     ...Y.@c.........
d004f1d4:	59900000 00000000 00405301 00505301     ...Y.....S@..SP.
d004f1e4:	59a00000 4f735301 00000000 00000000     ...Y.SsO........
d004f1f4:	59b00000 00000000 201caa00 0050aa00     ...Y....... ..P.
d004f204:	59c00000 a2040000 00000000 00000000     ...Y............
d004f214:	59b00000 a2040000 0010aa00 00505301     ...Y.........SP.
d004f224:	59a00000 0f83fe00 00000000 00000000     ...Y............
d004f234:	59900000 0f030000 0030a602 00505301     ...Y......0..SP.
d004f244:	59800000 a2040000 00000000 00000000     ...Y............
d004f254:	59700000 a2040000 2e4c5301 0050aa00     ..pY.....SL...P.
d004f264:	59600000 ff731d01 00000000 00000000     ..`Y..s.........
d004f274:	59700000 00000000 00405301 0050be00     ..pY.....S@...P.
d004f284:	59800000 02060000 00000000 00000000     ...Y............
d004f294:	59900000 02060000 043fa602 00500d01     ...Y......?...P.
d004f2a4:	4760ac01 3f63e200 00000000 00000000     ..`G..c?........
d004f2b4:	47700000 3f030000 2a1caa00 00500d01     ..pG...?...*..P.
d004f2c4:	47800000 a2040000 00000000 00000000     ...G............
d004f2d4:	47900000 a2040000 00405301 00508700     ...G.....S@...P.
d004f2e4:	47a00000 a2040000 00000000 00000000     ...G............
d004f2f4:	47b00000 a2040000 201caa00 00500d01     ...G....... ..P.
d004f304:	47c00000 a2040000 00000000 00000000     ...G............
d004f314:	47b00000 a2040000 3a1caa00 00500d01     ...G.......:..P.
d004f324:	47a00000 ff731d01 00000000 00000000     ...G..s.........
d004f334:	47900000 00000000 0030a602 00508700     ...G......0...P.
d004f344:	47800000 ff835301 00000000 00000000     ...G.S..........
d004f354:	47700000 00000000 00405301 00500d01     ..pG.....S@...P.
d004f364:	47600000 200c0000 00000000 00000000     ..`G... ........
d004f374:	47700000 109c5301 201caa00 00509700     ..pG.S..... ..P.
d004f384:	47800000 ff93e200 00000000 00000000     ...G............
d004f394:	47900000 00000000 0030a602 00508700     ...G......0...P.
d004f3a4:	47a00000 a2040000 00000000 00000000     ...G............
d004f3b4:	47b00000 a2040000 2a1caa00 00500d01     ...G.......*..P.
d004f3c4:	47c00000 ffa31d01 00000000 00000000     ...G............
d004f3d4:	47b00000 00000000 00405301 00500d01     ...G.....S@...P.
d004f3e4:	47a00000 ffb35301 00000000 00000000     ...G.S..........
d004f3f4:	47900000 00000000 201caa00 00508700     ...G....... ..P.
d004f404:	47800000 200c0000 00000000 00000000     ...G... ........
d004f414:	47700000 00000000 0010aa00 00500d01     ..pG..........P.
d004f424:	47600000 ffc3d600 00000000 00000000     ..`G............
d004f434:	47700000 ff030000 0030a602 00500d01     ..pG......0...P.
d004f444:	47800000 04060000 00000000 00000000     ...G............
d004f454:	47900000 04060000 00405301 00508700     ...G.....S@...P.
d004f464:	47a00000 25bce200 00000000 00000000     ...G...%........
d004f474:	47b00000 2a0c0000 2a1caa00 00509700     ...G...*...*..P.
d004f484:	47c00000 350c0000 00000000 00000000     ...G...5........
d004f494:	47b00000 400c0000 0030a602 0050fe00     ...G...@..0...P.
d004f4a4:	47a04001 ffa3d600 00000000 00000000     .@.G............
d004f4b4:	47900000 00000000 201caa00 0050fe00     ...G....... ..P.
d004f4c4:	47800000 a2040000 00000000 00000000     ...G............
d004f4d4:	47700000 a2040000 00405301 00507f00     ..pG.....S@...P.
d004f4e4:	47600000 a2040000 00000000 00000000     ..`G............
d004f4f4:	47700000 a2040000 201caa00 0050fe00     ..pG....... ..P.
d004f504:	47800000 02060000 00000000 00000000     ...G............
d004f514:	47900000 02060000 0010aa00 0050fe00     ...G..........P.
d004f524:	47a00000 3f93e200 00000000 00000000     ...G...?........
d004f534:	47b00000 00000000 0030a602 00507f00     ...G......0...P.
d004f544:	47c00000 8f831d01 00000000 00000000     ...G............
d004f554:	47b00000 00000000 00405301 0050fe00     ...G.....S@...P.
d004f564:	47a00000 200c0000 00000000 00000000     ...G... ........
d004f574:	47900000 00000000 2a1caa00 00508f00     ...G.......*..P.
d004f584:	47800000 0070d600 00000000 00000000     ...G..p.........
d004f594:	47700000 00000000 0030a602 0050aa00     ..pG......0...P.
d004f5a4:	4760ac01 a2040000 00000000 00000000     ..`G............
d004f5b4:	47700000 a2040000 201caa00 00505301     ..pG....... .SP.
d004f5c4:	47800000 ff631d01 00000000 00000000     ...G..c.........
d004f5d4:	47900000 00000000 00405301 00505301     ...G.....S@..SP.
d004f5e4:	47a00000 4f734001 00000000 00000000     ...G.@sO........
d004f5f4:	47b00000 00000000 201caa00 0050aa00     ...G....... ..P.
d004f604:	47c00000 a2040000 00000000 00000000     ...G............
d004f614:	47b00000 a2040000 0010aa00 00505301     ...G.........SP.
d004f624:	47a00000 0f835301 00000000 00000000     ...G.S..........
d004f634:	47900000 0f030000 0030a602 00505301     ...G......0..SP.
d004f644:	47800000 a2040000 00000000 00000000     ...G............
d004f654:	47700000 a2040000 2e4c5301 0050aa00     ..pG.....SL...P.
d004f664:	47600000 ff934001 00000000 00000000     ..`G.@..........
d004f674:	47700000 00000000 00405301 0050be00     ..pG.....S@...P.
d004f684:	47800000 02060000 00000000 00000000     ...G............
d004f694:	47900000 02060000 043fa602 00500d01     ...G......?...P.
d004f6a4:	37605301 3f63e200 00000000 00000000     .S`7..c?........
d004f6b4:	37700000 3f030000 2a1caa00 00500d01     ..p7...?...*..P.
d004f6c4:	37800000 a2040000 00000000 00000000     ...7............
d004f6d4:	37900000 a2040000 00405301 00508700     ...7.....S@...P.
d004f6e4:	37a00000 a2040000 00000000 00000000     ...7............
d004f6f4:	37b00000 a2040000 201caa00 00500d01     ...7....... ..P.
d004f704:	37c00000 a2040000 00000000 00000000     ...7............
d004f714:	37b00000 a2040000 3a1caa00 00500d01     ...7.......:..P.
d004f724:	37a00000 ff731d01 00000000 00000000     ...7..s.........
d004f734:	37900000 00000000 0030a602 00508700     ...7......0...P.
d004f744:	37800000 ff835301 00000000 00000000     ...7.S..........
d004f754:	37700000 00000000 00405301 00500d01     ..p7.....S@...P.
d004f764:	37600000 200c0000 00000000 00000000     ..`7... ........
d004f774:	37700000 109c5301 201caa00 00509700     ..p7.S..... ..P.
d004f784:	37800000 ff93e200 00000000 00000000     ...7............
d004f794:	37900000 00000000 0030a602 00508700     ...7......0...P.
d004f7a4:	37a00000 a2040000 00000000 00000000     ...7............
d004f7b4:	37b00000 a2040000 2a1caa00 00500d01     ...7.......*..P.
d004f7c4:	37c00000 ffa31d01 00000000 00000000     ...7............
d004f7d4:	37b00000 00000000 00405301 00500d01     ...7.....S@...P.
d004f7e4:	37a00000 ffb35301 00000000 00000000     ...7.S..........
d004f7f4:	37900000 00000000 201caa00 00508700     ...7....... ..P.
d004f804:	37800000 200c0000 00000000 00000000     ...7... ........
d004f814:	37700000 00000000 0010aa00 00500d01     ..p7..........P.
d004f824:	37600000 ffc3d600 00000000 00000000     ..`7............
d004f834:	37700000 ff030000 0030a602 00500d01     ..p7......0...P.
d004f844:	37800000 04060000 00000000 00000000     ...7............
d004f854:	37900000 04060000 00405301 00508700     ...7.....S@...P.
d004f864:	37a00000 25bce200 00000000 00000000     ...7...%........
d004f874:	37b00000 2a0c0000 2a1caa00 00509700     ...7...*...*..P.
d004f884:	37c00000 350c0000 00000000 00000000     ...7...5........
d004f894:	37b00000 400c0000 0030a602 00505301     ...7...@..0..SP.
d004f8a4:	47a0ac01 ffa3ac01 00000000 00000000     ...G............
d004f8b4:	47900000 00000000 201caa00 00505301     ...G....... .SP.
d004f8c4:	47800000 a2040000 00000000 00000000     ...G............
d004f8d4:	47700000 a2040000 00405301 0050aa00     ..pG.....S@...P.
d004f8e4:	47600000 a2040000 00000000 00000000     ..`G............
d004f8f4:	47700000 a2040000 201caa00 00505301     ..pG....... .SP.
d004f904:	47800000 a2040000 00000000 00000000     ...G............
d004f914:	47900000 a2040000 0010aa00 00505301     ...G.........SP.
d004f924:	47a00000 a2040000 00000000 00000000     ...G............
d004f934:	47b00000 a2040000 0030a602 0050aa00     ...G......0...P.
d004f944:	47c00000 a2040000 00000000 00000000     ...G............
d004f954:	47b00000 a2040000 00405301 00505301     ...G.....S@..SP.
d004f964:	47a00000 a2040000 00000000 00000000     ...G............
d004f974:	47900000 a2040000 2a1caa00 0050be00     ...G.......*..P.
d004f984:	47800000 a2040000 00000000 00000000     ...G............
d004f994:	47700000 a2040000 0030a602 0050aa00     ..pG......0...P.
d004f9a4:	47600000 01060000 00000000 00000000     ..`G............
d004f9b4:	47700000 01060000 201caa00 00505301     ..pG....... .SP.
d004f9c4:	47800000 01060000 00000000 00000000     ...G............
d004f9d4:	47900000 01060000 00405301 00505301     ...G.....S@..SP.
d004f9e4:	47a00000 01060000 00000000 00000000     ...G............
d004f9f4:	47b00000 01060000 201caa00 0050aa00     ...G....... ..P.
d004fa04:	47c00000 01060000 00000000 00000000     ...G............
d004fa14:	47b00000 01060000 0010aa00 00505301     ...G.........SP.
d004fa24:	47a00000 01060000 00000000 00000000     ...G............
d004fa34:	47900000 01060000 00405301 00505301     ...G.....S@..SP.
d004fa44:	47800000 01060000 00000000 00000000     ...G............
d004fa54:	47700000 01060000 2a4c5301 0050aa00     ..pG.....SL*..P.
d004fa64:	47600000 01060000 1a4c5301 00000000     ..`G.....SL.....
d004fa74:	47700000 01060000 3a4c5301 0050be00     ..pG.....SL:..P.
d004fa84:	47800000 01060000 00000000 00000000     ...G............
d004fa94:	47900000 01060000 00000000 00505301     ...G.........SP.
d004faa4:	4760ac01 306c1d01 30dc1d01 00000000     ..`G..l0...0....
d004fab4:	47700000 400c0000 400c0000 00505301     ..pG...@...@.SP.
d004fac4:	47800000 a2040000 a2040000 00000000     ...G............
d004fad4:	47900000 a2040000 a2040000 0050aa00     ...G..........P.
d004fae4:	47a00000 a2040000 a2040000 00000000     ...G............
d004faf4:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d004fb04:	47c00000 a2040000 a2040000 00000000     ...G............
d004fb14:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d004fb24:	47a00000 ff734001 ffe34001 00000000     ...G.@s..@......
d004fb34:	47900000 00000000 00000000 0050aa00     ...G..........P.
d004fb44:	47800000 ff835301 fff35301 00000000     ...G.S...S......
d004fb54:	47700000 00000000 00000000 00505301     ..pG.........SP.
d004fb64:	47600000 200c0000 200c0000 00000000     ..`G... ... ....
d004fb74:	47700000 108c5301 10fc5301 0050be00     ..pG.S...S....P.
d004fb84:	47800000 ff934001 ff034011 00000000     ...G.@...@......
d004fb94:	47900000 00000000 00000000 0050aa00     ...G..........P.
d004fba4:	47a00000 a2040000 a2040000 00000000     ...G............
d004fbb4:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d004fbc4:	47c00000 ffa34001 ff134011 00000000     ...G.@...@......
d004fbd4:	47b00000 00000000 00000000 00505301     ...G.........SP.
d004fbe4:	47a00000 ffb35301 ff235311 00000000     ...G.S...S#.....
d004fbf4:	47900000 00000000 00000000 0050aa00     ...G..........P.
d004fc04:	47800000 200c0000 200c0000 00000000     ...G... ... ....
d004fc14:	47700000 00000000 00000000 00505301     ..pG.........SP.
d004fc24:	47600000 ffc3ac01 ff33ac11 00000000     ..`G......3.....
d004fc34:	47700000 ff030000 ff030000 00505301     ..pG.........SP.
d004fc44:	47800000 04060000 04060000 00000000     ...G............
d004fc54:	47900000 04060000 04060000 0050aa00     ...G..........P.
d004fc64:	47a00000 25bc3a02 252c3a12 00000000     ...G.:.%.:,%....
d004fc74:	47b00000 2a0c0000 2a0c0000 0050be00     ...G...*...*..P.
d004fc84:	47c00000 350c0000 350c0000 00000000     ...G...5...5....
d004fc94:	47b00000 400c0000 400c0000 00505301     ...G...@...@.SP.
d004fca4:	59a00000 ffa31d01 ff131d11 00000000     ...Y............
d004fcb4:	59900000 00000000 00000000 00505301     ...Y.........SP.
d004fcc4:	59800000 a2040000 a2040000 00000000     ...Y............
d004fcd4:	59700000 a2040000 a2040000 0050aa00     ..pY..........P.
d004fce4:	59600000 a2040000 a2040000 00000000     ..`Y............
d004fcf4:	59700000 a2040000 a2040000 00505301     ..pY.........SP.
d004fd04:	59800000 02060000 02060000 00000000     ...Y............
d004fd14:	59900000 02060000 02060000 00505301     ...Y.........SP.
d004fd24:	59a00000 3f934001 3f034011 00000000     ...Y.@.?.@.?....
d004fd34:	59b00000 00000000 00000000 0050aa00     ...Y..........P.
d004fd44:	59c00000 8f835301 8ff35301 00000000     ...Y.S...S......
d004fd54:	59b00000 00000000 00000000 00505301     ...Y.........SP.
d004fd64:	59a00000 200c0000 200c0000 00000000     ...Y... ... ....
d004fd74:	59900000 00000000 00000000 0050be00     ...Y..........P.
d004fd84:	59800000 ff734001 00e04001 00000000     ...Y.@s..@......
d004fd94:	59700000 00000000 00000000 0050aa00     ..pY..........P.
d004fda4:	59600000 a2040000 a2040000 00000000     ..`Y............
d004fdb4:	59700000 a2040000 a2040000 00505301     ..pY.........SP.
d004fdc4:	59800000 ff634001 ffd34001 00000000     ...Y.@c..@......
d004fdd4:	59900000 00000000 00000000 00505301     ...Y.........SP.
d004fde4:	59a00000 4f735301 4fe35301 00000000     ...Y.SsO.S.O....
d004fdf4:	59b00000 00000000 00000000 0050aa00     ...Y..........P.
d004fe04:	59c00000 a2040000 a2040000 00000000     ...Y............
d004fe14:	59b00000 a2040000 a2040000 00505301     ...Y.........SP.
d004fe24:	59a00000 0f83fe00 0ff3fe00 00000000     ...Y............
d004fe34:	59900000 0f030000 0f030000 00505301     ...Y.........SP.
d004fe44:	59800000 a2040000 a2040000 00000000     ...Y............
d004fe54:	59700000 a2040000 a2040000 0050aa00     ..pY..........P.
d004fe64:	59600000 ff731d01 ffe31d01 00000000     ..`Y..s.........
d004fe74:	59700000 00000000 00000000 0050be00     ..pY..........P.
d004fe84:	59800000 02060000 02060000 00000000     ...Y............
d004fe94:	59900000 02060000 00000000 00500d01     ...Y..........P.
d004fea4:	4760ac01 3f63e200 3fd3e200 00000000     ..`G..c?...?....
d004feb4:	47700000 3f030000 3f030000 00500d01     ..pG...?...?..P.
d004fec4:	47800000 a2040000 a2040000 00000000     ...G............
d004fed4:	47900000 a2040000 a2040000 00508700     ...G..........P.
d004fee4:	47a00000 a2040000 a2040000 00000000     ...G............
d004fef4:	47b00000 a2040000 a2040000 00500d01     ...G..........P.
d004ff04:	47c00000 a2040000 a2040000 00000000     ...G............
d004ff14:	47b00000 a2040000 a2040000 00500d01     ...G..........P.
d004ff24:	47a00000 ff731d01 ffe31d01 00000000     ...G..s.........
d004ff34:	47900000 00000000 00000000 00508700     ...G..........P.
d004ff44:	47800000 ff835301 fff35301 00000000     ...G.S...S......
d004ff54:	47700000 00000000 00000000 00500d01     ..pG..........P.
d004ff64:	47600000 200c0000 200c0000 00000000     ..`G... ... ....
d004ff74:	47700000 109c5301 100c5311 00509700     ..pG.S...S....P.
d004ff84:	47800000 ff93e200 ff03e210 00000000     ...G............
d004ff94:	47900000 00000000 00000000 00508700     ...G..........P.
d004ffa4:	47a00000 a2040000 a2040000 00000000     ...G............
d004ffb4:	47b00000 a2040000 a2040000 00500d01     ...G..........P.
d004ffc4:	47c00000 ffa31d01 ff131d11 00000000     ...G............
d004ffd4:	47b00000 00000000 00000000 00500d01     ...G..........P.
d004ffe4:	47a00000 ffb35301 ff235311 00000000     ...G.S...S#.....
d004fff4:	47900000 00000000 00000000 00508700     ...G..........P.
d0050004:	47800000 200c0000 200c0000 00000000     ...G... ... ....
d0050014:	47700000 00000000 00000000 00500d01     ..pG..........P.
d0050024:	47600000 ffc3d600 ff33d610 00000000     ..`G......3.....
d0050034:	47700000 ff030000 ff030000 00500d01     ..pG..........P.
d0050044:	47800000 04060000 04060000 00000000     ...G............
d0050054:	47900000 04060000 04060000 00508700     ...G..........P.
d0050064:	47a00000 25bce200 252ce210 00000000     ...G...%..,%....
d0050074:	47b00000 2a0c0000 2a0c0000 00509700     ...G...*...*..P.
d0050084:	47c00000 350c0000 350c0000 00000000     ...G...5...5....
d0050094:	47b00000 400c0000 400c0000 0050fe00     ...G...@...@..P.
d00500a4:	47a04001 ffa3d600 ff13d610 00000000     .@.G............
d00500b4:	47900000 00000000 00000000 0050fe00     ...G..........P.
d00500c4:	47800000 a2040000 a2040000 00000000     ...G............
d00500d4:	47700000 a2040000 a2040000 00507f00     ..pG..........P.
d00500e4:	47600000 a2040000 a2040000 00000000     ..`G............
d00500f4:	47700000 a2040000 a2040000 0050fe00     ..pG..........P.
d0050104:	47800000 02060000 02060000 00000000     ...G............
d0050114:	47900000 02060000 02060000 0050fe00     ...G..........P.
d0050124:	47a00000 3f93e200 3f03e210 00000000     ...G...?...?....
d0050134:	47b00000 00000000 00000000 00507f00     ...G..........P.
d0050144:	47c00000 8f831d01 8ff31d01 00000000     ...G............
d0050154:	47b00000 00000000 00000000 0050fe00     ...G..........P.
d0050164:	47a00000 200c0000 200c0000 00000000     ...G... ... ....
d0050174:	47900000 00000000 00000000 00508f00     ...G..........P.
d0050184:	47800000 0070d600 00e0d600 00000000     ...G..p.........
d0050194:	47700000 00000000 00000000 0050aa00     ..pG..........P.
d00501a4:	4760ac01 a2040000 a2040000 00000000     ..`G............
d00501b4:	47700000 a2040000 a2040000 00505301     ..pG.........SP.
d00501c4:	47800000 ff631d01 ffd31d01 00000000     ...G..c.........
d00501d4:	47900000 00000000 00000000 00505301     ...G.........SP.
d00501e4:	47a00000 4f734001 4fe34001 00000000     ...G.@sO.@.O....
d00501f4:	47b00000 00000000 00000000 0050aa00     ...G..........P.
d0050204:	47c00000 a2040000 a2040000 00000000     ...G............
d0050214:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d0050224:	47a00000 0f835301 0ff35301 00000000     ...G.S...S......
d0050234:	47900000 0f030000 0f030000 00505301     ...G.........SP.
d0050244:	47800000 a2040000 a2040000 00000000     ...G............
d0050254:	47700000 a2040000 a2040000 0050aa00     ..pG..........P.
d0050264:	47600000 ff934001 ff134011 00000000     ..`G.@...@......
d0050274:	47700000 00000000 00000000 0050be00     ..pG..........P.
d0050284:	47800000 02060000 02060000 00000000     ...G............
d0050294:	47900000 02060000 00000000 00500d01     ...G..........P.
d00502a4:	37605301 3f63e200 3fd3e200 00000000     .S`7..c?...?....
d00502b4:	37700000 3f030000 3f030000 00500d01     ..p7...?...?..P.
d00502c4:	37800000 a2040000 a2040000 00000000     ...7............
d00502d4:	37900000 a2040000 a2040000 00508700     ...7..........P.
d00502e4:	37a00000 a2040000 a2040000 00000000     ...7............
d00502f4:	37b00000 a2040000 a2040000 00500d01     ...7..........P.
d0050304:	37c00000 a2040000 a2040000 00000000     ...7............
d0050314:	37b00000 a2040000 a2040000 00500d01     ...7..........P.
d0050324:	37a00000 ff731d01 ffe31d01 00000000     ...7..s.........
d0050334:	37900000 00000000 00000000 00508700     ...7..........P.
d0050344:	37800000 ff835301 fff35301 00000000     ...7.S...S......
d0050354:	37700000 00000000 00000000 00500d01     ..p7..........P.
d0050364:	37600000 200c0000 200c0000 00000000     ..`7... ... ....
d0050374:	37700000 109c5301 100c5311 00509700     ..p7.S...S....P.
d0050384:	37800000 ff93e200 ff03e210 00000000     ...7............
d0050394:	37900000 00000000 00000000 00508700     ...7..........P.
d00503a4:	37a00000 a2040000 a2040000 00000000     ...7............
d00503b4:	37b00000 a2040000 a2040000 00500d01     ...7..........P.
d00503c4:	37c00000 ffa31d01 ff131d11 00000000     ...7............
d00503d4:	37b00000 00000000 00000000 00500d01     ...7..........P.
d00503e4:	37a00000 ffb35301 ff235311 00000000     ...7.S...S#.....
d00503f4:	37900000 00000000 00000000 00508700     ...7..........P.
d0050404:	37800000 200c0000 200c0000 00000000     ...7... ... ....
d0050414:	37700000 00000000 00000000 00500d01     ..p7..........P.
d0050424:	37600000 ffc3d600 ff33d610 00000000     ..`7......3.....
d0050434:	37700000 ff030000 ff030000 00500d01     ..p7..........P.
d0050444:	37800000 04060000 04060000 00000000     ...7............
d0050454:	37900000 04060000 04060000 00508700     ...7..........P.
d0050464:	37a00000 25bce200 252ce210 00000000     ...7...%..,%....
d0050474:	37b00000 2a0c0000 2a0c0000 00509700     ...7...*...*..P.
d0050484:	37c00000 350c0000 350c0000 00000000     ...7...5...5....
d0050494:	37b00000 400c0000 400c0000 00505301     ...7...@...@.SP.
d00504a4:	47a0ac01 ffa3ac01 ff13ac11 00000000     ...G............
d00504b4:	47900000 00000000 00000000 00505301     ...G.........SP.
d00504c4:	47800000 a2040000 a2040000 00000000     ...G............
d00504d4:	47700000 a2040000 a2040000 0050aa00     ..pG..........P.
d00504e4:	47600000 a2040000 a2040000 00000000     ..`G............
d00504f4:	47700000 a2040000 a2040000 00505301     ..pG.........SP.
d0050504:	47800000 a2040000 a2040000 00000000     ...G............
d0050514:	47900000 a2040000 a2040000 00505301     ...G.........SP.
d0050524:	47a00000 a2040000 a2040000 00000000     ...G............
d0050534:	47b00000 a2040000 a2040000 0050aa00     ...G..........P.
d0050544:	47c00000 a2040000 a2040000 00000000     ...G............
d0050554:	47b00000 a2040000 a2040000 00505301     ...G.........SP.
d0050564:	47a00000 a2040000 a2040000 00000000     ...G............
d0050574:	47900000 a2040000 a2040000 0050be00     ...G..........P.
d0050584:	47800000 a2040000 a2040000 00000000     ...G............
d0050594:	47700000 a2040000 a2040000 0050aa00     ..pG..........P.
d00505a4:	47600000 01060000 01060000 00000000     ..`G............
d00505b4:	47700000 01060000 01060000 00505301     ..pG.........SP.
d00505c4:	47800000 01060000 01060000 00000000     ...G............
d00505d4:	47900000 01060000 01060000 00505301     ...G.........SP.
d00505e4:	47a00000 01060000 01060000 00000000     ...G............
d00505f4:	47b00000 01060000 01060000 0050aa00     ...G..........P.
d0050604:	47c00000 01060000 01060000 00000000     ...G............
d0050614:	47b00000 01060000 01060000 00505301     ...G.........SP.
d0050624:	47a00000 01060000 01060000 00000000     ...G............
d0050634:	47900000 01060000 3a3ca602 00505301     ...G......<:.SP.
d0050644:	47800000 01060000 00000000 00000000     ...G............
d0050654:	47700000 01060000 2a4c5301 0050aa00     ..pG.....SL*..P.
d0050664:	47600000 01060000 1a4c5301 00000000     ..`G.....SL.....
d0050674:	47700000 01060000 3a4c5301 0050be00     ..pG.....SL:..P.
d0050684:	47800000 01060000 00000000 00000000     ...G............
d0050694:	47900000 01060000 043fa602 00505301     ...G......?..SP.
d00506a4:	4760ac01 00601d01 00000000 00000000     ..`G..`.........
d00506b4:	47700000 108c5301 2a1caa00 00505301     ..pG.S.....*.SP.
d00506c4:	47800000 00704001 00000000 00000000     ...G.@p.........
d00506d4:	47900000 106c1d01 00405301 0050aa00     ...G..l..S@...P.
d00506e4:	47a00000 00805301 00000000 00000000     ...G.S..........
d00506f4:	47b00000 107c4001 201caa00 00505301     ...G.@|.... .SP.
d0050704:	47c00000 00901d01 00000000 00000000     ...G............
d0050714:	47b00000 108c5301 3a1caa00 00505301     ...G.S.....:.SP.
d0050724:	47a00000 00a04001 00000000 00000000     ...G.@..........
d0050734:	47900000 109c1d01 0030a602 0050aa00     ...G......0...P.
d0050744:	47800000 00b05301 00000000 00000000     ...G.S..........
d0050754:	47700000 10ac4001 00405301 00505301     ..pG.@...S@..SP.
d0050764:	47600000 00c01d01 00000000 00000000     ..`G............
d0050774:	47700000 10bc5301 201caa00 0050be00     ..pG.S..... ..P.
d0050784:	47800000 00b04001 00000000 00000000     ...G.@..........
d0050794:	47900000 10cc1d01 0030a602 0050aa00     ...G......0...P.
d00507a4:	47a00000 00a01d01 00000000 00000000     ...G............
d00507b4:	47b00000 10bc4001 2a1caa00 00505301     ...G.@.....*.SP.
d00507c4:	47c00000 00905301 00000000 00000000     ...G.S..........
d00507d4:	47b00000 10ac1d01 00405301 00505301     ...G.....S@..SP.
d00507e4:	47a00000 0080ac01 00000000 00000000     ...G............
d00507f4:	47900000 109c5301 201caa00 0050aa00     ...G.S..... ..P.
d0050804:	47800000 00701d01 00000000 00000000     ...G..p.........
d0050814:	47700000 108cac01 0010aa00 00505301     ..pG.........SP.
d0050824:	47600000 00605301 00000000 00000000     ..`G.S`.........
d0050834:	47700000 107c1d01 0030a602 00505301     ..pG..|...0..SP.
d0050844:	47800000 0070ac01 00000000 00000000     ...G..p.........
d0050854:	47900000 106c5301 00405301 0050aa00     ...G.Sl..S@...P.
d0050864:	47a00000 00801d01 00000000 00000000     ...G............
d0050874:	47b00000 107cac01 2a1caa00 0050be00     ...G..|....*..P.
d0050884:	47c00000 00905301 00000000 00000000     ...G.S..........
d0050894:	47b00000 108c1d01 0030a602 00505301     ...G......0..SP.
d00508a4:	59a00000 00a0fe00 00000000 00000000     ...Y............
d00508b4:	59900000 109c5301 201caa00 00505301     ...Y.S..... .SP.
d00508c4:	59800000 00b04001 00000000 00000000     ...Y.@..........
d00508d4:	59700000 10acfe00 00405301 0050aa00     ..pY.....S@...P.
d00508e4:	59600000 00c0ac01 00000000 00000000     ..`Y............
d00508f4:	59700000 10bc4001 201caa00 00505301     ..pY.@..... .SP.
d0050904:	59800000 00b0fe00 00000000 00000000     ...Y............
d0050914:	59900000 10ccac01 0010aa00 00505301     ...Y.........SP.
d0050924:	59a00000 00a04001 00000000 00000000     ...Y.@..........
d0050934:	59b00000 10bcfe00 0030a602 0050aa00     ...Y......0...P.
d0050944:	59c00000 0090ac01 00000000 00000000     ...Y............
d0050954:	59b00000 10ac4001 00405301 00505301     ...Y.@...S@..SP.
d0050964:	59a00000 0080fe00 00000000 00000000     ...Y............
d0050974:	59900000 109cac01 2a1caa00 0050be00     ...Y.......*..P.
d0050984:	59800000 00704001 00000000 00000000     ...Y.@p.........
d0050994:	59700000 108cfe00 0030a602 0050aa00     ..pY......0...P.
d00509a4:	59600000 00601d01 00000000 00000000     ..`Y..`.........
d00509b4:	59700000 107c4001 201caa00 00505301     ..pY.@|.... .SP.
d00509c4:	59800000 00705301 00000000 00000000     ...Y.Sp.........
d00509d4:	59900000 108c1d01 00405301 00505301     ...Y.....S@..SP.
d00509e4:	59a00000 0080ac01 00000000 00000000     ...Y............
d00509f4:	59b00000 109c5301 201caa00 0050aa00     ...Y.S..... ..P.
d0050a04:	59c00000 00901d01 00000000 00000000     ...Y............
d0050a14:	59b00000 10acac01 0010aa00 00505301     ...Y.........SP.
d0050a24:	59a00000 00a04001 00000000 00000000     ...Y.@..........
d0050a34:	59900000 109c1d01 0030a602 00505301     ...Y......0..SP.
d0050a44:	59800000 00905301 00000000 00000000     ...Y.S..........
d0050a54:	59700000 108c4001 2e4c5301 0050aa00     ..pY.@...SL...P.
d0050a64:	59600000 00807d01 00000000 00000000     ..`Y.}..........
d0050a74:	59700000 107c5301 00405301 0050be00     ..pY.S|..S@...P.
d0050a84:	59800000 00705301 00000000 00000000     ...Y.Sp.........
d0050a94:	59900000 107c7d01 043fa602 00500d01     ...Y.}|...?...P.
d0050aa4:	37605301 0060e200 00000000 00000000     .S`7..`.........
d0050ab4:	37700000 108c5301 2a1caa00 00500d01     ..p7.S.....*..P.
d0050ac4:	37800000 00701d01 00000000 00000000     ...7..p.........
d0050ad4:	37900000 106ce200 00405301 00508700     ...7..l..S@...P.
d0050ae4:	37a00000 00805301 00000000 00000000     ...7.S..........
d0050af4:	37b00000 107c1d01 201caa00 00500d01     ...7..|.... ..P.
d0050b04:	37c00000 00901d01 00000000 00000000     ...7............
d0050b14:	37b00000 108c5301 3a1caa00 00500d01     ...7.S.....:..P.
d0050b24:	37a00000 00a0e200 00000000 00000000     ...7............
d0050b34:	37900000 109c1d01 0030a602 00508700     ...7......0...P.
d0050b44:	37800000 00b01d01 00000000 00000000     ...7............
d0050b54:	37700000 10ace200 00405301 00500d01     ..p7.....S@...P.
d0050b64:	37600000 00c0d600 00000000 00000000     ..`7............
d0050b74:	37700000 10bc1d01 201caa00 00509700     ..p7....... ..P.
d0050b84:	37800000 00b01d01 00000000 00000000     ...7............
d0050b94:	37900000 10ccd600 0030a602 00508700     ...7......0...P.
d0050ba4:	37a00000 00a0e200 00000000 00000000     ...7............
d0050bb4:	37b00000 10bc1d01 2a1caa00 00500d01     ...7.......*..P.
d0050bc4:	37c00000 00901d01 00000000 00000000     ...7............
d0050bd4:	37b00000 10ace200 00405301 00500d01     ...7.....S@...P.
d0050be4:	37a00000 00805301 00000000 00000000     ...7.S..........
d0050bf4:	37900000 109c1d01 201caa00 00508700     ...7....... ..P.
d0050c04:	37800000 0070e200 00000000 00000000     ...7..p.........
d0050c14:	37700000 108c5301 0010aa00 00500d01     ..p7.S........P.
d0050c24:	37600000 00601d01 00000000 00000000     ..`7..`.........
d0050c34:	37700000 107ce200 0030a602 00500d01     ..p7..|...0...P.
d0050c44:	37800000 00705301 00000000 00000000     ...7.Sp.........
d0050c54:	37900000 106c1d01 00405301 00508700     ...7..l..S@...P.
d0050c64:	37a00000 0080e200 00000000 00000000     ...7............
d0050c74:	37b00000 107c5301 2a1caa00 00509700     ...7.S|....*..P.
d0050c84:	37c00000 00905301 00000000 00000000     ...7.S..........
d0050c94:	37b00000 108ce200 0030a602 00505301     ...7......0..SP.
d0050ca4:	47a0ac01 00a01d01 00000000 00000000     ...G............
d0050cb4:	47900000 109c5301 201caa00 00505301     ...G.S..... .SP.
d0050cc4:	47800000 00b05301 00000000 00000000     ...G.S..........
d0050cd4:	47700000 10ac1d01 00405301 0050aa00     ..pG.....S@...P.
d0050ce4:	47600000 00c0ac01 00000000 00000000     ..`G............
d0050cf4:	47700000 10bc5301 201caa00 00505301     ..pG.S..... .SP.
d0050d04:	47800000 00b01d01 00000000 00000000     ...G............
d0050d14:	47900000 10ccac01 0010aa00 00505301     ...G.........SP.
d0050d24:	47a00000 00a05301 00000000 00000000     ...G.S..........
d0050d34:	47b00000 10bc1d01 0030a602 0050aa00     ...G......0...P.
d0050d44:	47c00000 0090ac01 00000000 00000000     ...G............
d0050d54:	47b00000 10ac5301 00405301 00505301     ...G.S...S@..SP.
d0050d64:	47a00000 00801d01 00000000 00000000     ...G............
d0050d74:	47900000 109cac01 2a1caa00 0050be00     ...G.......*..P.
d0050d84:	47800000 00705301 00000000 00000000     ...G.Sp.........
d0050d94:	47700000 108c1d01 0030a602 0050aa00     ..pG......0...P.
d0050da4:	47600000 00601d01 00000000 00000000     ..`G..`.........
d0050db4:	47700000 107c5301 201caa00 00505301     ..pG.S|.... .SP.
d0050dc4:	47800000 00705301 00000000 00000000     ...G.Sp.........
d0050dd4:	47900000 106c1d01 00405301 00505301     ...G..l..S@..SP.
d0050de4:	47a00000 0080ac01 00000000 00000000     ...G............
d0050df4:	47b00000 107c5301 201caa00 0050aa00     ...G.S|.... ..P.
d0050e04:	47c00000 00905301 00000000 00000000     ...G.S..........
d0050e14:	47b00000 108cac01 0010aa00 00505301     ...G.........SP.
d0050e24:	47a00000 00a01d01 00000000 00000000     ...G............
d0050e34:	47900000 109c5301 0030a602 00505301     ...G.S....0..SP.
d0050e44:	47800000 00b04001 00000000 00000000     ...G.@..........
d0050e54:	47700000 10ac1d01 2e4c5301 0050aa00     ..pG.....SL...P.
d0050e64:	47600000 00c05301 00000000 00000000     ..`G.S..........
d0050e74:	47700000 10bc4001 00405301 0050be00     ..pG.@...S@...P.
d0050e84:	47800000 00b04001 00000000 00000000     ...G.@..........
d0050e94:	47900000 10cc5301 043fa602 00500d01     ...G.S....?...P.
d0050ea4:	4760ac01 0060e200 00000000 00000000     ..`G..`.........
d0050eb4:	47700000 107c5301 2a1caa00 00500d01     ..pG.S|....*..P.
d0050ec4:	47800000 00701d01 00000000 00000000     ...G..p.........
d0050ed4:	47900000 106ce200 00405301 00508700     ...G..l..S@...P.
d0050ee4:	47a00000 00805301 00000000 00000000     ...G.S..........
d0050ef4:	47b00000 107c1d01 201caa00 00500d01     ...G..|.... ..P.
d0050f04:	47c00000 0090e200 00000000 00000000     ...G............
d0050f14:	47b00000 108c5301 3a1caa00 00500d01     ...G.S.....:..P.
d0050f24:	47a00000 00a01d01 00000000 00000000     ...G............
d0050f34:	47900000 109ce200 0030a602 00508700     ...G......0...P.
d0050f44:	47800000 00b05301 00000000 00000000     ...G.S..........
d0050f54:	47700000 10ac1d01 00405301 00500d01     ..pG.....S@...P.
d0050f64:	47600000 00c0e200 00000000 00000000     ..`G............
d0050f74:	47700000 10bc5301 201caa00 00509700     ..pG.S..... ..P.
d0050f84:	47800000 00b01d01 00000000 00000000     ...G............
d0050f94:	47900000 10cce200 0030a602 00508700     ...G......0...P.
d0050fa4:	47a00000 00a0e200 00000000 00000000     ...G............
d0050fb4:	47b00000 10bc1d01 2a1caa00 00500d01     ...G.......*..P.
d0050fc4:	47c00000 00901d01 00000000 00000000     ...G............
d0050fd4:	47b00000 10ace200 00405301 00500d01     ...G.....S@...P.
d0050fe4:	47a00000 00805301 00000000 00000000     ...G.S..........
d0050ff4:	47900000 109c1d01 201caa00 00508700     ...G....... ..P.
d0051004:	47800000 0070e200 00000000 00000000     ...G..p.........
d0051014:	47700000 108c5301 0010aa00 00500d01     ..pG.S........P.
d0051024:	47600000 00601d01 00000000 00000000     ..`G..`.........
d0051034:	47700000 107ce200 0030a602 00500d01     ..pG..|...0...P.
d0051044:	47800000 00705301 00000000 00000000     ...G.Sp.........
d0051054:	47900000 106c1d01 00405301 00508700     ...G..l..S@...P.
d0051064:	47a00000 0080e200 00000000 00000000     ...G............
d0051074:	47b00000 107c5301 2a1caa00 00509700     ...G.S|....*..P.
d0051084:	47c00000 00901d01 00000000 00000000     ...G............
d0051094:	47b00000 108ce200 0030a602 0050fe00     ...G......0...P.
d00510a4:	47a04001 00a0d600 00000000 00000000     .@.G............
d00510b4:	47900000 109c1d01 201caa00 0050fe00     ...G....... ..P.
d00510c4:	47800000 00b0fe00 00000000 00000000     ...G............
d00510d4:	47700000 10acd600 00405301 00507f00     ..pG.....S@...P.
d00510e4:	47600000 00c04001 00000000 00000000     ..`G.@..........
d00510f4:	47700000 10bcfe00 201caa00 0050fe00     ..pG....... ..P.
d0051104:	47800000 00b0d600 00000000 00000000     ...G............
d0051114:	47900000 10cc4001 0010aa00 0050fe00     ...G.@........P.
d0051124:	47a00000 00a0fe00 00000000 00000000     ...G............
d0051134:	47b00000 10bcd600 0030a602 00507f00     ...G......0...P.
d0051144:	47c00000 00904001 00000000 00000000     ...G.@..........
d0051154:	47b00000 10acfe00 00405301 0050fe00     ...G.....S@...P.
d0051164:	47a00000 0080d600 00000000 00000000     ...G............
d0051174:	47900000 109c4001 2a1caa00 00508f00     ...G.@.....*..P.
d0051184:	47800000 0070fe00 00000000 00000000     ...G..p.........
d0051194:	47700000 108cd600 0030a602 0050aa00     ..pG......0...P.
d00511a4:	4760ac01 00601d01 00000000 00000000     ..`G..`.........
d00511b4:	47700000 107cfe00 201caa00 00505301     ..pG..|.... .SP.
d00511c4:	47800000 00705301 00000000 00000000     ...G.Sp.........
d00511d4:	47900000 106c1d01 00405301 00505301     ...G..l..S@..SP.
d00511e4:	47a00000 0080ac01 00000000 00000000     ...G............
d00511f4:	47b00000 107c5301 201caa00 0050aa00     ...G.S|.... ..P.
d0051204:	47c00000 00901d01 00000000 00000000     ...G............
d0051214:	47b00000 108cac01 0010aa00 00505301     ...G.........SP.
d0051224:	47a00000 00a05301 00000000 00000000     ...G.S..........
d0051234:	47900000 109c1d01 0030a602 00505301     ...G......0..SP.
d0051244:	47800000 0090ac01 00000000 00000000     ...G............
d0051254:	47700000 10ac5301 2e4c5301 0050aa00     ..pG.S...SL...P.
d0051264:	47600000 00801d01 00000000 00000000     ..`G............
d0051274:	47700000 109cac01 00405301 0050be00     ..pG.....S@...P.
d0051284:	47800000 00705301 00000000 00000000     ...G.Sp.........
d0051294:	47900000 108c1d01 043fa602 00500d01     ...G......?...P.
d00512a4:	37605301 0060e200 00000000 00000000     .S`7..`.........
d00512b4:	37700000 108c5301 2a1caa00 00500d01     ..p7.S.....*..P.
d00512c4:	37800000 00701d01 00000000 00000000     ...7..p.........
d00512d4:	37900000 106ce200 00405301 00508700     ...7..l..S@...P.
d00512e4:	37a00000 00805301 00000000 00000000     ...7.S..........
d00512f4:	37b00000 107c1d01 201caa00 00500d01     ...7..|.... ..P.
d0051304:	37c00000 0090e200 00000000 00000000     ...7............
d0051314:	37b00000 108c5301 3a1caa00 00500d01     ...7.S.....:..P.
d0051324:	37a00000 00a01d01 00000000 00000000     ...7............
d0051334:	37900000 109ce200 0030a602 00508700     ...7......0...P.
d0051344:	37800000 00b05301 00000000 00000000     ...7.S..........
d0051354:	37700000 10ac1d01 00405301 00500d01     ..p7.....S@...P.
d0051364:	37600000 00c0e200 00000000 00000000     ..`7............
d0051374:	37700000 10bc5301 201caa00 00509700     ..p7.S..... ..P.
d0051384:	37800000 00b01d01 00000000 00000000     ...7............
d0051394:	37900000 10cce200 0030a602 00508700     ...7......0...P.
d00513a4:	37a00000 00a0e200 00000000 00000000     ...7............
d00513b4:	37b00000 10bc1d01 2a1caa00 00500d01     ...7.......*..P.
d00513c4:	37c00000 00901d01 00000000 00000000     ...7............
d00513d4:	37b00000 10ace200 00405301 00500d01     ...7.....S@...P.
d00513e4:	37a00000 00805301 00000000 00000000     ...7.S..........
d00513f4:	37900000 109c1d01 201caa00 00508700     ...7....... ..P.
d0051404:	37800000 0070e200 00000000 00000000     ...7..p.........
d0051414:	37700000 108c5301 0010aa00 00500d01     ..p7.S........P.
d0051424:	37600000 00601d01 00000000 00000000     ..`7..`.........
d0051434:	37700000 107ce200 0030a602 00500d01     ..p7..|...0...P.
d0051444:	37800000 00705301 00000000 00000000     ...7.Sp.........
d0051454:	37900000 106c1d01 00405301 00508700     ...7..l..S@...P.
d0051464:	37a00000 0080e200 00000000 00000000     ...7............
d0051474:	37b00000 107c5301 2a1caa00 00509700     ...7.S|....*..P.
d0051484:	37c00000 00701d01 00000000 00000000     ...7..p.........
d0051494:	37b00000 108ce200 0030a602 00505301     ...7......0..SP.
d00514a4:	47a0ac01 00601d01 00000000 00000000     ...G..`.........
d00514b4:	47900000 107c1d01 201caa00 00505301     ...G..|.... .SP.
d00514c4:	47800000 00705301 00000000 00000000     ...G.Sp.........
d00514d4:	47700000 106c1d01 00405301 0050aa00     ..pG..l..S@...P.
d00514e4:	47600000 0080ac01 00000000 00000000     ..`G............
d00514f4:	47700000 107c5301 201caa00 00505301     ..pG.S|.... .SP.
d0051504:	47800000 00901d01 00000000 00000000     ...G............
d0051514:	47900000 108cac01 0010aa00 00505301     ...G.........SP.
d0051524:	47a00000 00a05301 00000000 00000000     ...G.S..........
d0051534:	47b00000 109c1d01 0030a602 0050aa00     ...G......0...P.
d0051544:	47c00000 00b0ac01 00000000 00000000     ...G............
d0051554:	47b00000 10ac5301 00405301 00505301     ...G.S...S@..SP.
d0051564:	47a00000 00c01d01 00000000 00000000     ...G............
d0051574:	47900000 10bcac01 2a1caa00 0050be00     ...G.......*..P.
d0051584:	47800000 00b05301 00000000 00000000     ...G.S..........
d0051594:	47700000 10cc1d01 0030a602 0050aa00     ..pG......0...P.
d00515a4:	47600000 00a0ac01 00000000 00000000     ..`G............
d00515b4:	47700000 10bc5301 201caa00 00505301     ..pG.S..... .SP.
d00515c4:	47800000 209cac01 00000000 00000000     ...G... ........
d00515d4:	47900000 0aac5301 00405301 00505301     ...G.S...S@..SP.
d00515e4:	47a00000 108cac01 00000000 00000000     ...G............
d00515f4:	47b00000 049c5301 201caa00 0050aa00     ...G.S..... ..P.
d0051604:	47c00000 057cac01 00000000 00000000     ...G..|.........
d0051614:	47b00000 038c5301 0010aa00 00505301     ...G.S.......SP.
d0051624:	47a00000 026cac01 00000000 00000000     ...G..l.........
d0051634:	47900000 017c5301 0030a602 00505301     ...G.S|...0..SP.
d0051644:	47800000 017cac01 00000000 00000000     ...G..|.........
d0051654:	47700000 016c5301 2a4c5301 0050aa00     ..pG.Sl..SL*..P.
d0051664:	47600000 3a8cac01 1a4c5301 00000000     ..`G...:.SL.....
d0051674:	47700000 2a0c0000 3a4c5301 0050be00     ..pG...*.SL:..P.
d0051684:	47800000 ff935301 00000000 030b0000     ...G.S..........
d0051694:	47900000 200c0000 00000000 01dd26bb     ...G... .....&..
d00516a4:	0000d010 fb0eeeeb e7dd00dd d900be10     ................
d00516b4:	2fbb0cef 02e621bb 0b00f800 f20000e7     .../.!..........
d00516c4:	00f8fb01 22f8f600 22cc22dd 0c0000dd     ......."."."....
d00516d4:	00eb1500 f81ddd11 ea0ae722 0021de21     ........"...!.!.
d00516e4:	f805f80b 19e70000 eee911ef 00ffef16     ................
d00516f4:	0cee06fc 00f222f8 00ed0008 11ee00fc     ....."..........
d0051704:	eb1000f8 de0ceb14 00eee714 f700f800     ................
d0051714:	19f815ea 0a002100 11fc2201 ee110003     .....!..."......
d0051724:	22e71b00 08f808ef 0ed41bcc d91000ef     ..."............
d0051734:	10e4fc10 fc11fce8 0bde19f9 e721ef02     ..............!.
d0051744:	07f200f8 15f6f800 f80010de 110bf82b     ............+...
d0051754:	cc2af6ee 0021df2a 21cd21d9 00cd2bde     ..*.*.!..!.!.+..
d0051764:	e020eee7 e407f203 0900dd10 090bf809     .. .............
d0051774:	17fc0208 de1900f3 0100ef21 0af800ef     ........!.......
d0051784:	0ddc19f8 0908ee03 dd11f8f4 ef21e611     ..............!.
d0051794:	21e30018 080000f1 f8ef00e7 0ce6fcfd     ...!............
d00517a4:	11e619dd 11de17f8 e31900e9 df2aca24     ............$.*.
d00517b4:	de10110e 11f80021 e60015ee 00e70000     ....!...........
d00517c4:	c011ecfd 08e70008 08f600f3 e30600e6     ................
d00517d4:	f8f80007 10ef0ef8 27f30200 f8010fde     ...........'....
d00517e4:	03ee0002 00080bed 22f30800 000500fc     ..........."....
d00517f4:	f300f8f8 f8010000 000cef17 0803ee11     ................
d0051804:	0000f800 000300f2 0000f600 05f2f800     ................
d0051814:	0000ef05 f400deee 08f70000 10ee0cee     ................
d0051824:	11feee03 f408f8ef de19e70a 04f20cfc     ................
d0051834:	08f308f8 e70cf8f2 f20af3fb ef17f707     ................
d0051844:	1401f814 15f81bf5 fcf411ea f8f80003     ................
d0051854:	00f400f8 00ee0000 f9f8eff8 f8f90cee     ................
d0051864:	f8000000 f6000003 08fc0008 00f600fd     ................
d0051874:	0000fef6 f8effef8 1008ee1d 000019f1     ................
d0051884:	0000010b ef05f811 fdfb000e f300fc00     ................
d0051894:	00effc01 f8f8eefb ea00f6f8 00f8ef12     ................
d00518a4:	0cf602f8 00ef0bec fbf510f1 0000f205     ................
d00518b4:	000bf205 f8000000 08000000 00f907f8     ................
d00518c4:	01fc04fa f30000fc 0000f607 ef00f6f8     ................
d00518d4:	f8fb0000 0003ef0a f900f200 fb00f600     ................
d00518e4:	eefe03f9 ef01f208 f406f602 00070007     ................
d00518f4:	00000bf6 0bf10800 00fc07f4 f50400fc     ................
d0051904:	0005fd00 03ee08f3 fef806f6 fd00f8fb     ................
d0051914:	f800f9f8 f50000f8 0000fd00 03fcfdf9     ................
d0051924:	fc0000fb f704fc00 f9ffff02 fffc0000     ................
d0051934:	fb07f900 fefe00fc 0000fe00 07f80300     ................
d0051944:	000000fe 0001f800 f60cf600 08ee01fc     ................
d0051954:	00fc08f8 06f200fc f401fbf3 f8fdfc00     ................
d0051964:	f803f802 03f8fd00 00fdf8fd fbff03f2     ................
d0051974:	fbfcff02 00f8ff00 0000f801 000000fb     ................
d0051984:	00f805fc 0007f40f 0300ff01 0006fb00     ................
d0051994:	fdf800fa f8fcf800 00fbf802 00fcef00     ................
d00519a4:	fbfb00f7 fefbfdfe fcfe00fa 0100f803     ................
d00519b4:	0005fd00 00fb04fe 00fb01fd 0006f604     ................
d00519c4:	fb05f805 00000000 00000000 00fdfe01     ................
d00519d4:	fdfe00fb fd00f800 fcfcfffa fef800fd     ................
d00519e4:	fc00fefe fb00f403 f903fdfe 00f800fe     ................
d00519f4:	00fe00fa 02fb0000 fb0100fc 00fe05ff     ................
d0051a04:	fe00fc02 fd00fd00 fdfefd00 fdfc00fd     ................
d0051a14:	fefdfdfd fd00fdfd 00f900fe f90000fe     ................
d0051a24:	fb00fb00 fdfbfe00 fefa00fc ff00fdfe     ................
d0051a34:	fc00fefc 00fc00fe fe00ff00 00000000     ................
d0051a44:	fd00feff fc0000ff fdfcfe00 ff00f900     ................
d0051a54:	fe0000fd fffc00fa fcfffefe fa00fc00     ................
d0051a64:	f800fb02 fb00f800 fdfdfffe fefd00fc     ................
d0051a74:	00fefdff fefe00fc 00fefdfd 00fe02fd     ................
d0051a84:	0000fe00 0002fd00 000000ff fffd01fe     ................
d0051a94:	fefdfffe fefcfffe f9fefbfc fdfdfdfe     ................
d0051aa4:	fefc00fb fefefdfc fdfefefc fefe00fe     ................
d0051ab4:	fffd00fe 00fd00fd 00fd00fd fefffffe     ................
d0051ac4:	ff00ff00 00ff0000 00fc00ff 00feff00     ................
d0051ad4:	fcfffdfe fcfdfdfd fcfdfbfd fbfdfcfd     ................
d0051ae4:	fd00fd00 00fe00fe fefd00fc 00fcfe00     ................
d0051af4:	00fefeff fffefffe 00fd00fd feff00fd     ................
d0051b04:	fe00fe00 fc00fd00 fb00fd00 fefdfe00     ................
d0051b14:	fffdfefe 00fdfefd fd00fefc fefefffc     ................
d0051b24:	fffefefe fd00fefe fe00fd00 00ff00fd     ................
d0051b34:	0000fefe fefe00fe fe00fdff fdfefefc     ................
d0051b44:	fefdfdfd fd00fcfe fffefd00 fd00fefe     ................
d0051b54:	fe00fd00 0000ff00 fd00fd00 fd00fc00     ................
d0051b64:	fefcfefe 00fdfdfc fffdfefd fdfffefd     ................
d0051b74:	00fdfd00 fefd00fc fffdfdfe ff00fdfe     ................
d0051b84:	fffefffe 0000fe00 0000fe00 00fe00fe     ................
d0051b94:	00fe00ff 00feffff 00000000 e4d9ff28     ............(...
d0051ba4:	0dbdb244 1e2500ba 1f27141d 0e39282d     D.....%...'.-(9.
d0051bb4:	583c0064 e7f808ee abbec7d4 99969d92     d.<X............
d0051bc4:	b8aea398 eddfccbd 4b1cfaf2 5a4a4b32     ...........K2KJZ
d0051bd4:	7f7e7b73 767d7f7f 515a6e6e 212d394b     s{~...}vnnZQK9-!
d0051be4:	e8f40312 b3b6cdd7 809f97a7 808a809a     ................
d0051bf4:	83808080 a49c948c d9c3bcb5 07fbefe4     ................
d0051c04:	44382416 7e696155 7f7f7f7f 7f7f7f7f     .$8DUai~........
d0051c14:	70797f7f 4d4b5a6a 1e25383c eaff050c     ..ypjZKM<8%.....
d0051c24:	beccd6dc 99a2b3ba 808d8590 8480808b     ................
d0051c34:	908a8780 aaa29d98 d2c2bbb2 f8ede1d8     ................
d0051c44:	1b0d0cff 39383022 4e504949 5a585656     ...."089IIPNVVXZ
d0051c54:	56615c5c 56555955 49515055 3e42484b     \\aVUYUVUPQIKHB>
d0051c64:	3034383c 1a22222c 040d1013 edf8f9fe     <840,"".........
d0051c74:	dbdee4ec c3c7cdd3 b2b3b3bd a4a5a6ac     ................
d0051c84:	9c9ba09d 9c9b9b9a aba6a3a0 c3bbb6b0     ................
d0051c94:	e1d9cfc9 fdf7f1e5 1b130d03 3a332c21     ............!,3:
d0051ca4:	59504a43 6a67635e 7272716f 696f7072     CJPY^cgjoqrrrpoi
d0051cb4:	565b6066 3a42494f 1d262d33 01080f16     f`[VOIB:3-&.....
d0051cc4:	e7eef7fc cfd6dbe3 bcc1c4cb b2b2b6ba     ................
d0051cd4:	afafb0b1 b6b2b2b0 c2bdbbb7 d2cec9c6     ................
d0051ce4:	e5e1dbd7 f8f3eeea 0502fffc 110f0d08     ................
d0051cf4:	1c1a1814 21211e1d 24222221 21222224     ......!!!""$$""!
d0051d04:	1d1f1f21 191a1b1c 13131618 0e0f1011     !...............
d0051d14:	08090c0d 04040506 ff010203 feffffff     ................
d0051d24:	fbfcfcfd f8f8f9fa f4f4f7f8 f3f3f4f4     ................
d0051d34:	f3f2f2f2 f1f2f2f2 f3f3f2f2 f3f3f3f3     ................
d0051d44:	f7f7f4f4 f8f8f8f7 f9f9f9f9 fcfbfbfa     ................
d0051d54:	fdfdfcfc fffefefe ffffffff 0201ffff     ................
d0051d64:	02020202 04030303 04040303 04040404     ................
d0051d74:	04040404 04040404 03040304 02030303     ................
d0051d84:	02020303 01020102 01ff0101 ffffffff     ................
d0051d94:	ffffffff ffffffff e4320000 bf101ff8     ..........2.....
d0051da4:	407f7fed 93f8ce28 80808096 d6808080     ...@(...........
d0051db4:	aa7f0df2 7f7f747f 737f7f7f cde630f0     .....t.....s.0..
d0051dc4:	98f8178e 802c8020 ff80807f 80a58093     .... .,.........
d0051dd4:	9530c1db 166bf855 7f7f297f 7f7f7f45     ..0.U.k..)..E...
d0051de4:	6a7f7f65 e907763f bd9980c0 a380a180     e..j?v..........
d0051df4:	aa80a180 80808080 87808080 33d4bcf6     ...............3
d0051e04:	517b1d58 7f7f747f 7f7f7f7f 5b7f7f7f     X.{Q.t.........[
d0051e14:	22706969 af78062a cf03db35 d1b7eba3     iip"*.x.5.......
d0051e24:	b8b6fbd4 b20cd410 f4d3d205 bc0dbece     ................
d0051e34:	cacbe7c7 ddbec6b5 c4a5cf91 ca12c9cf     ................
d0051e44:	f648b12f f61b2df2 540a2e13 4b49672d     /.H..-.....T-gIK
d0051e54:	3a7c3360 6cf84f7f d86ff466 c349293a     `3|:.O.lf.o.:)I.
d0051e64:	e8182d00 0ef2fdfd f7e1f8de c61bedbd     .-..............
d0051e74:	e215cad7 f58048b6 cda1bd0c 90c1cfee     .....H..........
d0051e84:	86beb9aa 80a38596 809a8f91 8bb39f91     ................
d0051e94:	b1d0bd9e e60ececb 162efb31 6a687066     ........1...fphj
d0051ea4:	7f7f7e7f 7f7f7f7f 7f7f7f7f 7f7f7f7f     .~..............
d0051eb4:	7f7f7f7f 4b7c6f7f 611f227f cf0e270d     .....o|K.".a.'..
d0051ec4:	9cb19513 808083a1 80808080 80808080     ................
d0051ed4:	80808080 80808080 99808080 a9948080     ................
d0051ee4:	9bacb394 e912a511 70e8201a 3c421231     ......... .p1.B<
d0051ef4:	65646655 347f724a 5c5d7d62 446d5471     UfdeJr.4b}]\qTmD
d0051f04:	19456a4b 69cc697f 28343a31 29303acd     KjE..i.i1:4(.:0)
d0051f14:	3f5318ff 415d55f0 3a585812 7b365039     ..S?.U]A.XX:9P6{
d0051f24:	4e5a343a 09207bf5 dd48ff4f ecd84901     :4ZN.{ .O.H..I..
d0051f34:	d3c5cde0 9081cb90 9f8097ab 80808b88     ................
d0051f44:	80808080 a1808080 af808f80 a8d480ac     ................
d0051f54:	aef2a3af ede3c2d4 daf129d1 e4043a04     .........)...:..
d0051f64:	4731f852 3f331055 7f563366 757f582c     R.1GU.3?f3V.,X.u
d0051f74:	667f6b6b 7f79527f 547f287f 624b503e     kk.f.Ry..(.T>PKb
d0051f84:	494bf74a 22030549 053af113 1f01d812     J.KII.."..:.....
d0051f94:	e505dd08 b71509fa b40e03f7 0ff1bb13     ................
d0051fa4:	c6fac8cc 0ad7c9d0 9ceaf3b8 db01803f     ............?...
d0051fb4:	baf0cdd7 a7d0dce2 e4c6dae3 fdf3c1b9     ................
d0051fc4:	dbd0e9c2 bac40bb0 c8069d02 fbeeaffb     ................
d0051fd4:	fee7e9f0 01e8fbee 2efaf526 47e04318     ........&....C.G
d0051fe4:	0e0e1935 101e6a2c 1a0c2e7c 61363469     5...,j..|...i46a
d0051ff4:	3f1b570c fff4211f e32a0d02 34c72ce0     .W.?.!....*..,.4
d0052004:	d4e428cb df25f21f e1fec60e e7080010     .(....%.........
d0052014:	d90034c7 1ee3fa38 0812f53e 29f20210     .4..8...>......)
d0052024:	e4d210ed ee17e0fe 30da1601 2bce0cdb     ...........0...+
d0052034:	120bc800 d3f51ce7 fc13e228 e1eef8c2     ........(.......
d0052044:	21bca1f5 daeedfc6 07c70dcd c4b1f807     ...!............
d0052054:	1bcbfa1e 56dc1ee7 0d4811ef 3b471f40     .......V..H.@.G;
d0052064:	20e83441 0d002328 31f0f3ed f2de21b4     A4. (#.....1.!..
d0052074:	c706f90a fbf9fa20 f1dde6fb 14d80eee     .... ...........
d0052084:	0d02c41c 35ea25f9 35d62be1 e119fdf3     .....%.5.+.5....
d0052094:	de0b0c1a f4ca170a 1a0405ee 2e2adaf8     ..............*.
d00520a4:	0e1c4fde fc23ff0f 13e12616 e52aeefb     .O....#..&....*.
d00520b4:	07ecd6f0 e0d0c8f2 f0d2c5ec d5e018ef     ................
d00520c4:	d92bc81b f4f511fb 05f92605 0644171d     ..+......&....D.
d00520d4:	4c1c1d16 2c2d1cf2 021b09ed ea1bf3ef     ...L..-,........
d00520e4:	f6cd000c 11d7fcfd c01ede01 f8beec1b     ................
d00520f4:	fce5f0db f5f9e402 29f8d819 1dec0df2     ...........)....
d0052104:	fb1b1fd3 efe40f15 f931f127 2cf81916     ........'.1....,
d0052114:	21ca26fe 08f3ea0e 020502eb 0606fd0e     .&.!............
d0052124:	210af71b 15181ed6 10f6aefc 04cd06e3     ...!............
d0052134:	f4d00dcc f4fc0fec 06f8df06 e4ec1804     ................
d0052144:	28e90710 271d0301 02220214 1def2730     ...(...'..".0'..
d0052154:	011cfa0f 0212d51c cf1600dd 1ddb0dff     ................
d0052164:	ed1fdad6 02fbb40a fdffe000 fff602e7     ................
d0052174:	1bc30401 f5f50006 0dff0332 fb1cf61a     ........2.......
d0052184:	1410ec00 15f61ef6 f10702eb 2501fb06     ...............%
d0052194:	041bf107 00e8eb1d df041fef fadf100d     ................
d00521a4:	d607ffce e3f0ff09 2214da15 ebdc25e6     ...........".%..
d00521b4:	e608f501 ef08f6ec 26fb1b16 17e74edb     ...........&.N..
d00521c4:	db32101e 30012618 2212effa 0a0200ef     ..2..&.0..."....
d00521d4:	fc0df8ee ff1ae9ff f8e31cd5 0ec605fb     ................
d00521e4:	05e9f8d5 1bd9efc9 e6c50fc7 11dce60d     ................
d00521f4:	22dc26e8 23f31716 03223805 14061efc     .&."...#.8".....
d0052204:	3002290a 1e0e14e4 fafb08f1 f401ed16     .).0............
d0052214:	0be5ef0c ebebf8e5 10d615e1 05d9f8ee     ................
d0052224:	dfffdf17 ef1afe08 040404fb 1fff0911     ................
d0052234:	f52afffd fdf90d0d 000efe30 17fb0304     ..*.....0.......
d0052244:	0d020be4 cd0f1dd9 f4ef0b0f fdfdf8e7     ................
d0052254:	00fbf1f2 0bf1ee04 02e709f6 fc02f60f     ................
d0052264:	00e816e9 de1d05f7 17ee021b 0117f8f1     ................
d0052274:	02eff20f efe80f0b fbf5090b 0e140314     ................
d0052284:	fc140c09 031a0efe f2e40107 faf513fc     ................
d0052294:	09faecff fb05e5f7 f7ee02eb e80adb02     ................
d00522a4:	f60305fd 18f605f6 020417fe 03121c00     ................
d00522b4:	fc1812f5 f7061007 db10021f 00fa0a0b     ................
d00522c4:	080305f6 fffd0ade 0406fcfc ec03fcf3     ................
d00522d4:	16dcf616 e400f700 f200ef0f f610d0f6     ................
d00522e4:	fbd2fbfb 050dee13 ef1ff3fd 01030512     ................
d00522f4:	f2fc25fa 0b100f0b f722ff0a 1afe0e21     .%........".!...
d0052304:	ed01fefa 0af7ea0d d114d901 f6f8e804     ................
d0052314:	08f9dd15 e311f2f0 00f5f80f 010a0003     ................
d0052324:	f110f805 e6170916 000f22fa f70725f4     ........."...%..
d0052334:	fffc26f1 19fdfa14 fc000ffb e71ff7e1     .&..............
d0052344:	ec0af201 0500eb02 23250000 13181a1d     ..........%#....
d0052354:	080b0e10 06050606 38281a0d 454d4f47     ..........(8GOME
d0052364:	e6011d34 8086a2c1 80808080 80808080     4...............
d0052374:	b99b8180 3816ffd9 6b69614f 49566469     .......8OaikidVI
d0052384:	0b1a2a3a eef2fa00 fbf5f0ee 1a120801     :*..............
d0052394:	38322d23 4747453d 3f434547 282d343c     #-28=EGGGEC?<4-(
d00523a4:	0d121a23 f8fd0106 e5e6eaf2 d9dbdfe1     #...............
d00523b4:	cbccd0d3 c3c4c8cb bbbdbec1 b7b7b9b9     ................
d00523c4:	b9b7b7b7 bebebdbb c1c1c1be bbbdbec1     ................
d00523d4:	b9b9b9bb c1bebbb9 d1ccc8c4 f5e8dbd6     ................
d00523e4:	1b1608ff 181d2321 fa010b10 d8dde6ee     ....!#..........
d00523f4:	d0ccccd0 ede1d9d1 160d00f8 4a3f3427     ............'4?J
d0052404:	71696158 7f7f7c79 7f7f7f7f 74797e7f     Xaiqy|.......~yt
d0052414:	64656b72 494f525a 343a3d43 23272d30     rkedZROIC=:40-'#
d0052424:	161a1d21 0d0e1012 0606080b 231b120d     !..............#
d0052434:	32342f2a 0518232d b7cee1f8 808294a2     */42-#..........
d0052444:	80808080 80808080 ccb39b87 2310ffe5     ...............#
d0052454:	4f473d32 50525452 3842474d 1d232a30     2=GORTRPMGB80*#.
d0052464:	0e10161a 0806080b 12100d0b 211d1a16     ...............!
d0052474:	25252323 00000000 19243044 c1c90913     ##%%....D0$.....
d0052484:	8daf9aea d0bec7a0 ece7e3dc 04fcf6f1     ................
d0052494:	7f2a0f09 707f4734 0f143c51 47503914     ..*.4G.pQ<...9PG
d00524a4:	1d07172e 00000000 19243044 c1c90913     ........D0$.....
d00524b4:	8daf9aea d0bec7a0 ece7e3dc 04fcf6f1     ................
d00524c4:	7f2a0f09 707f4734 0f143c51 47503914     ..*.4G.pQ<...9PG
d00524d4:	0000172e 30440000 09131924 9aeac1c9     ......D0$.......
d00524e4:	c7a08daf e3dcd0be f6f1ece7 0f0904fc     ................
d00524f4:	47347f2a 3c51707f 39140f14 00004750     *.4G.pQ<...9PG..
d0052504:	30440000 09131924 9aeac1c9 c7a08daf     ..D0$...........
d0052514:	e3dcd0be f6f1ece7 0f0904fc 47347f2a     ............*.4G
d0052524:	3c51707f 39140f14 00000000 19243044     .pQ<...9....D0$.
d0052534:	c1c90913 8daf9aea d0bec7a0 ece7e3dc     ................
d0052544:	04fcf6f1 7f2a0f09 707f4734 0f143c51     ......*.4G.pQ<..
d0052554:	00000000 19243044 c1c90913 8daf9aea     ....D0$.........
d0052564:	d0bec7a0 ece7e3dc 04fcf6f1 7f2a0f09     ..............*.
d0052574:	707f4734 00000000 83868a8d 81818182     4G.p............
d0052584:	81818181 81818181 81818181 81818181     ................
d0052594:	00000000 0d131924 dfe3040a c2d5caf5     ....$...........
d00525a4:	e7dde2cc f6f3f1ed 01fffcf9 45160704     ...............E
d00525b4:	3c45261c 070a202b 262b1e0a 0f030c18     .&E<+ ....+&....
d00525c4:	00000000 0d131924 dfe3040a c2d5caf5     ....$...........
d00525d4:	e7dde2cc f5f3f1ed 01fffcf9 45160704     ...............E
d00525e4:	3c45261c 070a202b 262b1e0a 00000c18     .&E<+ ....+&....
d00525f4:	19240000 040a0d13 caf5dfe3 e2ccc2d5     ..$.............
d0052604:	f1ede7dd fcf9f6f3 070401ff 261c4516     .............E.&
d0052614:	202b3c45 1e0a070a 0000262b 19240000     E<+ ....+&....$.
d0052624:	040a0d13 caf5dfe3 e2ccc2d5 f1ede7dd     ................
d0052634:	fcf9f6f3 070401ff 261c4516 202b3c45     .........E.&E<+ 
d0052644:	1e0a070a 00000000 0d131926 dfe3040a     ........&.......
d0052654:	c2d5caf4 e7dde2cb f6f3f1ec 01fffcf9     ................
d0052664:	45160704 3c45261d 070a202c 00000000     ...E.&E<, ......
d0052674:	0d131924 dfe3040a c2d5caf5 e7dce2cc     $...............
d0052684:	f6f3f1ed 01fffcf9 45160704 3c45261c     ...........E.&E<
d0052694:	00000000 bcbec1c2 bbbbbbbc bbbabbbb     ................
d00526a4:	bbbbbbbb bbbbbbbb bbbbbbbb              ............

d00526b0 <_global_impure_ptr>:
d00526b0:	d0052760                                `'..

d00526b4 <__sf_fake_stderr>:
	...

d00526d4 <__sf_fake_stdin>:
	...

d00526f4 <__sf_fake_stdout>:
	...
d0052714:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0052724:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0052734:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0052744:	                                         ef.

Disassembly of section .init:

d0052748 <_init>:
d0052748:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005274a:	bf00      	nop

Disassembly of section .fini:

d005274c <_fini>:
d005274c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005274e:	bf00      	nop
