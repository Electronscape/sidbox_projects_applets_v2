
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0080010 <applet_entry>:
d0080010:	b570      	push	{r4, r5, r6, lr}
d0080012:	4e09      	ldr	r6, [pc, #36]	; (d0080038 <applet_entry+0x28>)
d0080014:	460d      	mov	r5, r1
d0080016:	4604      	mov	r4, r0
d0080018:	2100      	movs	r1, #0
d008001a:	6833      	ldr	r3, [r6, #0]
d008001c:	6898      	ldr	r0, [r3, #8]
d008001e:	f005 fa8d 	bl	d008553c <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f005 fa88 	bl	d008553c <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f004 bf8a 	b.w	d0084f4c <main>
d0080038:	d0086134 	.word	0xd0086134

d008003c <initMalloc>:
d008003c:	4902      	ldr	r1, [pc, #8]	; (d0080048 <initMalloc+0xc>)
d008003e:	4b03      	ldr	r3, [pc, #12]	; (d008004c <initMalloc+0x10>)
d0080040:	4a03      	ldr	r2, [pc, #12]	; (d0080050 <initMalloc+0x14>)
d0080042:	1a5b      	subs	r3, r3, r1
d0080044:	6013      	str	r3, [r2, #0]
d0080046:	4770      	bx	lr
d0080048:	d00cac80 	.word	0xd00cac80
d008004c:	d0600000 	.word	0xd0600000
d0080050:	d00c8c68 	.word	0xd00c8c68

d0080054 <_write_r>:
d0080054:	3901      	subs	r1, #1
d0080056:	2901      	cmp	r1, #1
d0080058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008005a:	d81f      	bhi.n	d008009c <_write_r+0x48>
d008005c:	b1e2      	cbz	r2, d0080098 <_write_r+0x44>
d008005e:	461c      	mov	r4, r3
d0080060:	b1d3      	cbz	r3, d0080098 <_write_r+0x44>
d0080062:	4d12      	ldr	r5, [pc, #72]	; (d00800ac <_write_r+0x58>)
d0080064:	682e      	ldr	r6, [r5, #0]
d0080066:	b9ae      	cbnz	r6, d0080094 <_write_r+0x40>
d0080068:	4f11      	ldr	r7, [pc, #68]	; (d00800b0 <_write_r+0x5c>)
d008006a:	2301      	movs	r3, #1
d008006c:	4611      	mov	r1, r2
d008006e:	4630      	mov	r0, r6
d0080070:	602b      	str	r3, [r5, #0]
d0080072:	4622      	mov	r2, r4
d0080074:	7a3b      	ldrb	r3, [r7, #8]
d0080076:	f897 c009 	ldrb.w	ip, [r7, #9]
d008007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d008007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d0080082:	7aff      	ldrb	r7, [r7, #11]
d0080084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0080088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d008008c:	681b      	ldr	r3, [r3, #0]
d008008e:	685b      	ldr	r3, [r3, #4]
d0080090:	4798      	blx	r3
d0080092:	602e      	str	r6, [r5, #0]
d0080094:	4620      	mov	r0, r4
d0080096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080098:	2000      	movs	r0, #0
d008009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008009c:	f005 f980 	bl	d00853a0 <__errno>
d00800a0:	2209      	movs	r2, #9
d00800a2:	4603      	mov	r3, r0
d00800a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800a8:	601a      	str	r2, [r3, #0]
d00800aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800ac:	d00861a4 	.word	0xd00861a4
d00800b0:	2001f000 	.word	0x2001f000

d00800b4 <_read>:
d00800b4:	b508      	push	{r3, lr}
d00800b6:	f005 f973 	bl	d00853a0 <__errno>
d00800ba:	2258      	movs	r2, #88	; 0x58
d00800bc:	4603      	mov	r3, r0
d00800be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c2:	601a      	str	r2, [r3, #0]
d00800c4:	bd08      	pop	{r3, pc}
d00800c6:	bf00      	nop

d00800c8 <_close>:
d00800c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800cc:	4770      	bx	lr
d00800ce:	bf00      	nop

d00800d0 <_fstat>:
d00800d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00800d4:	2000      	movs	r0, #0
d00800d6:	604b      	str	r3, [r1, #4]
d00800d8:	4770      	bx	lr
d00800da:	bf00      	nop

d00800dc <_lseek>:
d00800dc:	2000      	movs	r0, #0
d00800de:	4770      	bx	lr

d00800e0 <_sbrk_r>:
d00800e0:	4b0c      	ldr	r3, [pc, #48]	; (d0080114 <_sbrk_r+0x34>)
d00800e2:	4a0d      	ldr	r2, [pc, #52]	; (d0080118 <_sbrk_r+0x38>)
d00800e4:	6818      	ldr	r0, [r3, #0]
d00800e6:	b510      	push	{r4, lr}
d00800e8:	b918      	cbnz	r0, d00800f2 <_sbrk_r+0x12>
d00800ea:	1dd0      	adds	r0, r2, #7
d00800ec:	f020 0007 	bic.w	r0, r0, #7
d00800f0:	6018      	str	r0, [r3, #0]
d00800f2:	4401      	add	r1, r0
d00800f4:	4c09      	ldr	r4, [pc, #36]	; (d008011c <_sbrk_r+0x3c>)
d00800f6:	42a1      	cmp	r1, r4
d00800f8:	d803      	bhi.n	d0080102 <_sbrk_r+0x22>
d00800fa:	4291      	cmp	r1, r2
d00800fc:	d301      	bcc.n	d0080102 <_sbrk_r+0x22>
d00800fe:	6019      	str	r1, [r3, #0]
d0080100:	bd10      	pop	{r4, pc}
d0080102:	f005 f94d 	bl	d00853a0 <__errno>
d0080106:	220c      	movs	r2, #12
d0080108:	4603      	mov	r3, r0
d008010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008010e:	601a      	str	r2, [r3, #0]
d0080110:	bd10      	pop	{r4, pc}
d0080112:	bf00      	nop
d0080114:	d00861a0 	.word	0xd00861a0
d0080118:	d00cac80 	.word	0xd00cac80
d008011c:	d0600000 	.word	0xd0600000

d0080120 <starts_with_text>:
d0080120:	b4f0      	push	{r4, r5, r6, r7}
d0080122:	7814      	ldrb	r4, [r2, #0]
d0080124:	b1e4      	cbz	r4, d0080160 <starts_with_text+0x40>
d0080126:	4684      	mov	ip, r0
d0080128:	2500      	movs	r5, #0
d008012a:	e00c      	b.n	d0080146 <starts_with_text+0x26>
d008012c:	2b19      	cmp	r3, #25
d008012e:	d802      	bhi.n	d0080136 <starts_with_text+0x16>
d0080130:	f100 0320 	add.w	r3, r0, #32
d0080134:	b2d8      	uxtb	r0, r3
d0080136:	2f19      	cmp	r7, #25
d0080138:	d801      	bhi.n	d008013e <starts_with_text+0x1e>
d008013a:	3420      	adds	r4, #32
d008013c:	b2e4      	uxtb	r4, r4
d008013e:	4284      	cmp	r4, r0
d0080140:	d111      	bne.n	d0080166 <starts_with_text+0x46>
d0080142:	5d54      	ldrb	r4, [r2, r5]
d0080144:	b164      	cbz	r4, d0080160 <starts_with_text+0x40>
d0080146:	eb0c 0305 	add.w	r3, ip, r5
d008014a:	1c6e      	adds	r6, r5, #1
d008014c:	f1a4 0741 	sub.w	r7, r4, #65	; 0x41
d0080150:	5c58      	ldrb	r0, [r3, r1]
d0080152:	b2b5      	uxth	r5, r6
d0080154:	f1a0 0341 	sub.w	r3, r0, #65	; 0x41
d0080158:	2800      	cmp	r0, #0
d008015a:	d1e7      	bne.n	d008012c <starts_with_text+0xc>
d008015c:	bcf0      	pop	{r4, r5, r6, r7}
d008015e:	4770      	bx	lr
d0080160:	2001      	movs	r0, #1
d0080162:	bcf0      	pop	{r4, r5, r6, r7}
d0080164:	4770      	bx	lr
d0080166:	2000      	movs	r0, #0
d0080168:	bcf0      	pop	{r4, r5, r6, r7}
d008016a:	4770      	bx	lr

d008016c <emit_phone.constprop.0>:
d008016c:	4603      	mov	r3, r0
d008016e:	8800      	ldrh	r0, [r0, #0]
d0080170:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
d0080174:	d241      	bcs.n	d00801fa <emit_phone.constprop.0+0x8e>
d0080176:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d008017a:	460c      	mov	r4, r1
d008017c:	4f1f      	ldr	r7, [pc, #124]	; (d00801fc <emit_phone.constprop.0+0x90>)
d008017e:	b39a      	cbz	r2, d00801e8 <emit_phone.constprop.0+0x7c>
d0080180:	008d      	lsls	r5, r1, #2
d0080182:	491f      	ldr	r1, [pc, #124]	; (d0080200 <emit_phone.constprop.0+0x94>)
d0080184:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0080188:	2600      	movs	r6, #0
d008018a:	f8df 8078 	ldr.w	r8, [pc, #120]	; d0080204 <emit_phone.constprop.0+0x98>
d008018e:	f801 4010 	strb.w	r4, [r1, r0, lsl #1]
d0080192:	4425      	add	r5, r4
d0080194:	8818      	ldrh	r0, [r3, #0]
d0080196:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d008019a:	eb01 0040 	add.w	r0, r1, r0, lsl #1
d008019e:	8042      	strh	r2, [r0, #2]
d00801a0:	4640      	mov	r0, r8
d00801a2:	881a      	ldrh	r2, [r3, #0]
d00801a4:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00801a8:	eb01 0142 	add.w	r1, r1, r2, lsl #1
d00801ac:	710e      	strb	r6, [r1, #4]
d00801ae:	881a      	ldrh	r2, [r3, #0]
d00801b0:	3201      	adds	r2, #1
d00801b2:	801a      	strh	r2, [r3, #0]
d00801b4:	f005 fa9f 	bl	d00856f6 <strlen>
d00801b8:	f857 5025 	ldr.w	r5, [r7, r5, lsl #2]
d00801bc:	4604      	mov	r4, r0
d00801be:	4628      	mov	r0, r5
d00801c0:	f005 fa99 	bl	d00856f6 <strlen>
d00801c4:	1823      	adds	r3, r4, r0
d00801c6:	3302      	adds	r3, #2
d00801c8:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00801cc:	d213      	bcs.n	d00801f6 <emit_phone.constprop.0+0x8a>
d00801ce:	b12c      	cbz	r4, d00801dc <emit_phone.constprop.0+0x70>
d00801d0:	2220      	movs	r2, #32
d00801d2:	eb08 0304 	add.w	r3, r8, r4
d00801d6:	f808 2004 	strb.w	r2, [r8, r4]
d00801da:	705e      	strb	r6, [r3, #1]
d00801dc:	4629      	mov	r1, r5
d00801de:	4809      	ldr	r0, [pc, #36]	; (d0080204 <emit_phone.constprop.0+0x98>)
d00801e0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00801e4:	f005 ba78 	b.w	d00856d8 <strcat>
d00801e8:	eb01 0281 	add.w	r2, r1, r1, lsl #2
d00801ec:	008d      	lsls	r5, r1, #2
d00801ee:	eb07 0282 	add.w	r2, r7, r2, lsl #2
d00801f2:	8a12      	ldrh	r2, [r2, #16]
d00801f4:	e7c5      	b.n	d0080182 <emit_phone.constprop.0+0x16>
d00801f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00801fa:	4770      	bx	lr
d00801fc:	d0085dac 	.word	0xd0085dac
d0080200:	d00861a8 	.word	0xd00861a8
d0080204:	d00c8460 	.word	0xd00c8460

d0080208 <has_magic_e>:
d0080208:	1c93      	adds	r3, r2, #2
d008020a:	428b      	cmp	r3, r1
d008020c:	d216      	bcs.n	d008023c <has_magic_e+0x34>
d008020e:	4402      	add	r2, r0
d0080210:	b410      	push	{r4}
d0080212:	7854      	ldrb	r4, [r2, #1]
d0080214:	f1a4 0341 	sub.w	r3, r4, #65	; 0x41
d0080218:	b2da      	uxtb	r2, r3
d008021a:	2a19      	cmp	r2, #25
d008021c:	d902      	bls.n	d0080224 <has_magic_e+0x1c>
d008021e:	f1a4 0361 	sub.w	r3, r4, #97	; 0x61
d0080222:	b2da      	uxtb	r2, r3
d0080224:	2a18      	cmp	r2, #24
d0080226:	d80b      	bhi.n	d0080240 <has_magic_e+0x38>
d0080228:	4b0e      	ldr	r3, [pc, #56]	; (d0080264 <has_magic_e+0x5c>)
d008022a:	40d3      	lsrs	r3, r2
d008022c:	43db      	mvns	r3, r3
d008022e:	f013 0301 	ands.w	r3, r3, #1
d0080232:	d105      	bne.n	d0080240 <has_magic_e+0x38>
d0080234:	4618      	mov	r0, r3
d0080236:	f85d 4b04 	ldr.w	r4, [sp], #4
d008023a:	4770      	bx	lr
d008023c:	2000      	movs	r0, #0
d008023e:	4770      	bx	lr
d0080240:	4408      	add	r0, r1
d0080242:	f810 0c01 	ldrb.w	r0, [r0, #-1]
d0080246:	f1a0 0341 	sub.w	r3, r0, #65	; 0x41
d008024a:	2b19      	cmp	r3, #25
d008024c:	d907      	bls.n	d008025e <has_magic_e+0x56>
d008024e:	f1a0 0065 	sub.w	r0, r0, #101	; 0x65
d0080252:	f85d 4b04 	ldr.w	r4, [sp], #4
d0080256:	fab0 f080 	clz	r0, r0
d008025a:	0940      	lsrs	r0, r0, #5
d008025c:	4770      	bx	lr
d008025e:	3020      	adds	r0, #32
d0080260:	b2c0      	uxtb	r0, r0
d0080262:	e7f4      	b.n	d008024e <has_magic_e+0x46>
d0080264:	01104111 	.word	0x01104111

d0080268 <emit_ay.constprop.0>:
d0080268:	8803      	ldrh	r3, [r0, #0]
d008026a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008026e:	d268      	bcs.n	d0080342 <emit_ay.constprop.0+0xda>
d0080270:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080274:	2103      	movs	r1, #3
d0080276:	224b      	movs	r2, #75	; 0x4b
d0080278:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d008027c:	4e31      	ldr	r6, [pc, #196]	; (d0080344 <emit_ay.constprop.0+0xdc>)
d008027e:	4604      	mov	r4, r0
d0080280:	f04f 0800 	mov.w	r8, #0
d0080284:	4f30      	ldr	r7, [pc, #192]	; (d0080348 <emit_ay.constprop.0+0xe0>)
d0080286:	f806 1013 	strb.w	r1, [r6, r3, lsl #1]
d008028a:	8803      	ldrh	r3, [r0, #0]
d008028c:	4638      	mov	r0, r7
d008028e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080292:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d0080296:	805a      	strh	r2, [r3, #2]
d0080298:	8823      	ldrh	r3, [r4, #0]
d008029a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008029e:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d00802a2:	f883 8004 	strb.w	r8, [r3, #4]
d00802a6:	8825      	ldrh	r5, [r4, #0]
d00802a8:	3501      	adds	r5, #1
d00802aa:	b2ad      	uxth	r5, r5
d00802ac:	8025      	strh	r5, [r4, #0]
d00802ae:	f005 fa22 	bl	d00856f6 <strlen>
d00802b2:	1d02      	adds	r2, r0, #4
d00802b4:	4603      	mov	r3, r0
d00802b6:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00802ba:	d20f      	bcs.n	d00802dc <emit_ay.constprop.0+0x74>
d00802bc:	b140      	cbz	r0, d00802d0 <emit_ay.constprop.0+0x68>
d00802be:	183a      	adds	r2, r7, r0
d00802c0:	2120      	movs	r1, #32
d00802c2:	4638      	mov	r0, r7
d00802c4:	54f9      	strb	r1, [r7, r3]
d00802c6:	f882 8001 	strb.w	r8, [r2, #1]
d00802ca:	f005 fa14 	bl	d00856f6 <strlen>
d00802ce:	4603      	mov	r3, r0
d00802d0:	18f8      	adds	r0, r7, r3
d00802d2:	2203      	movs	r2, #3
d00802d4:	491d      	ldr	r1, [pc, #116]	; (d008034c <emit_ay.constprop.0+0xe4>)
d00802d6:	f005 f871 	bl	d00853bc <memcpy>
d00802da:	8825      	ldrh	r5, [r4, #0]
d00802dc:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d00802e0:	d22d      	bcs.n	d008033e <emit_ay.constprop.0+0xd6>
d00802e2:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00802e6:	2308      	movs	r3, #8
d00802e8:	2252      	movs	r2, #82	; 0x52
d00802ea:	4817      	ldr	r0, [pc, #92]	; (d0080348 <emit_ay.constprop.0+0xe0>)
d00802ec:	f806 3015 	strb.w	r3, [r6, r5, lsl #1]
d00802f0:	2500      	movs	r5, #0
d00802f2:	8823      	ldrh	r3, [r4, #0]
d00802f4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00802f8:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d00802fc:	805a      	strh	r2, [r3, #2]
d00802fe:	8823      	ldrh	r3, [r4, #0]
d0080300:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080304:	eb06 0643 	add.w	r6, r6, r3, lsl #1
d0080308:	7135      	strb	r5, [r6, #4]
d008030a:	8823      	ldrh	r3, [r4, #0]
d008030c:	3301      	adds	r3, #1
d008030e:	8023      	strh	r3, [r4, #0]
d0080310:	f005 f9f1 	bl	d00856f6 <strlen>
d0080314:	1d02      	adds	r2, r0, #4
d0080316:	4603      	mov	r3, r0
d0080318:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008031c:	d20f      	bcs.n	d008033e <emit_ay.constprop.0+0xd6>
d008031e:	b138      	cbz	r0, d0080330 <emit_ay.constprop.0+0xc8>
d0080320:	183a      	adds	r2, r7, r0
d0080322:	2120      	movs	r1, #32
d0080324:	4808      	ldr	r0, [pc, #32]	; (d0080348 <emit_ay.constprop.0+0xe0>)
d0080326:	54f9      	strb	r1, [r7, r3]
d0080328:	7055      	strb	r5, [r2, #1]
d008032a:	f005 f9e4 	bl	d00856f6 <strlen>
d008032e:	4603      	mov	r3, r0
d0080330:	18f8      	adds	r0, r7, r3
d0080332:	2203      	movs	r2, #3
d0080334:	4906      	ldr	r1, [pc, #24]	; (d0080350 <emit_ay.constprop.0+0xe8>)
d0080336:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d008033a:	f005 b83f 	b.w	d00853bc <memcpy>
d008033e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0080342:	4770      	bx	lr
d0080344:	d00861a8 	.word	0xd00861a8
d0080348:	d00c8460 	.word	0xd00c8460
d008034c:	d0085bf0 	.word	0xd0085bf0
d0080350:	d0085bf4 	.word	0xd0085bf4

d0080354 <emit_ow.constprop.0>:
d0080354:	8803      	ldrh	r3, [r0, #0]
d0080356:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008035a:	d268      	bcs.n	d008042e <emit_ow.constprop.0+0xda>
d008035c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080360:	2104      	movs	r1, #4
d0080362:	2248      	movs	r2, #72	; 0x48
d0080364:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0080368:	4e31      	ldr	r6, [pc, #196]	; (d0080430 <emit_ow.constprop.0+0xdc>)
d008036a:	4604      	mov	r4, r0
d008036c:	f04f 0800 	mov.w	r8, #0
d0080370:	4f30      	ldr	r7, [pc, #192]	; (d0080434 <emit_ow.constprop.0+0xe0>)
d0080372:	f806 1013 	strb.w	r1, [r6, r3, lsl #1]
d0080376:	8803      	ldrh	r3, [r0, #0]
d0080378:	4638      	mov	r0, r7
d008037a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008037e:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d0080382:	805a      	strh	r2, [r3, #2]
d0080384:	8823      	ldrh	r3, [r4, #0]
d0080386:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008038a:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d008038e:	f883 8004 	strb.w	r8, [r3, #4]
d0080392:	8825      	ldrh	r5, [r4, #0]
d0080394:	3501      	adds	r5, #1
d0080396:	b2ad      	uxth	r5, r5
d0080398:	8025      	strh	r5, [r4, #0]
d008039a:	f005 f9ac 	bl	d00856f6 <strlen>
d008039e:	1d02      	adds	r2, r0, #4
d00803a0:	4603      	mov	r3, r0
d00803a2:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00803a6:	d20f      	bcs.n	d00803c8 <emit_ow.constprop.0+0x74>
d00803a8:	b140      	cbz	r0, d00803bc <emit_ow.constprop.0+0x68>
d00803aa:	183a      	adds	r2, r7, r0
d00803ac:	2120      	movs	r1, #32
d00803ae:	4638      	mov	r0, r7
d00803b0:	54f9      	strb	r1, [r7, r3]
d00803b2:	f882 8001 	strb.w	r8, [r2, #1]
d00803b6:	f005 f99e 	bl	d00856f6 <strlen>
d00803ba:	4603      	mov	r3, r0
d00803bc:	18f8      	adds	r0, r7, r3
d00803be:	2203      	movs	r2, #3
d00803c0:	491d      	ldr	r1, [pc, #116]	; (d0080438 <emit_ow.constprop.0+0xe4>)
d00803c2:	f004 fffb 	bl	d00853bc <memcpy>
d00803c6:	8825      	ldrh	r5, [r4, #0]
d00803c8:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d00803cc:	d22d      	bcs.n	d008042a <emit_ow.constprop.0+0xd6>
d00803ce:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00803d2:	230a      	movs	r3, #10
d00803d4:	2252      	movs	r2, #82	; 0x52
d00803d6:	4817      	ldr	r0, [pc, #92]	; (d0080434 <emit_ow.constprop.0+0xe0>)
d00803d8:	f806 3015 	strb.w	r3, [r6, r5, lsl #1]
d00803dc:	2500      	movs	r5, #0
d00803de:	8823      	ldrh	r3, [r4, #0]
d00803e0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00803e4:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d00803e8:	805a      	strh	r2, [r3, #2]
d00803ea:	8823      	ldrh	r3, [r4, #0]
d00803ec:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00803f0:	eb06 0643 	add.w	r6, r6, r3, lsl #1
d00803f4:	7135      	strb	r5, [r6, #4]
d00803f6:	8823      	ldrh	r3, [r4, #0]
d00803f8:	3301      	adds	r3, #1
d00803fa:	8023      	strh	r3, [r4, #0]
d00803fc:	f005 f97b 	bl	d00856f6 <strlen>
d0080400:	1d02      	adds	r2, r0, #4
d0080402:	4603      	mov	r3, r0
d0080404:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080408:	d20f      	bcs.n	d008042a <emit_ow.constprop.0+0xd6>
d008040a:	b138      	cbz	r0, d008041c <emit_ow.constprop.0+0xc8>
d008040c:	183a      	adds	r2, r7, r0
d008040e:	2120      	movs	r1, #32
d0080410:	4808      	ldr	r0, [pc, #32]	; (d0080434 <emit_ow.constprop.0+0xe0>)
d0080412:	54f9      	strb	r1, [r7, r3]
d0080414:	7055      	strb	r5, [r2, #1]
d0080416:	f005 f96e 	bl	d00856f6 <strlen>
d008041a:	4603      	mov	r3, r0
d008041c:	18f8      	adds	r0, r7, r3
d008041e:	2203      	movs	r2, #3
d0080420:	4906      	ldr	r1, [pc, #24]	; (d008043c <emit_ow.constprop.0+0xe8>)
d0080422:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0080426:	f004 bfc9 	b.w	d00853bc <memcpy>
d008042a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d008042e:	4770      	bx	lr
d0080430:	d00861a8 	.word	0xd00861a8
d0080434:	d00c8460 	.word	0xd00c8460
d0080438:	d0085bf8 	.word	0xd0085bf8
d008043c:	d0085bfc 	.word	0xd0085bfc

d0080440 <emit_ey.constprop.0>:
d0080440:	8803      	ldrh	r3, [r0, #0]
d0080442:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080446:	d268      	bcs.n	d008051a <emit_ey.constprop.0+0xda>
d0080448:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008044c:	2105      	movs	r1, #5
d008044e:	2248      	movs	r2, #72	; 0x48
d0080450:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0080454:	4e31      	ldr	r6, [pc, #196]	; (d008051c <emit_ey.constprop.0+0xdc>)
d0080456:	4604      	mov	r4, r0
d0080458:	f04f 0800 	mov.w	r8, #0
d008045c:	4f30      	ldr	r7, [pc, #192]	; (d0080520 <emit_ey.constprop.0+0xe0>)
d008045e:	f806 1013 	strb.w	r1, [r6, r3, lsl #1]
d0080462:	8803      	ldrh	r3, [r0, #0]
d0080464:	4638      	mov	r0, r7
d0080466:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008046a:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d008046e:	805a      	strh	r2, [r3, #2]
d0080470:	8823      	ldrh	r3, [r4, #0]
d0080472:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080476:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d008047a:	f883 8004 	strb.w	r8, [r3, #4]
d008047e:	8825      	ldrh	r5, [r4, #0]
d0080480:	3501      	adds	r5, #1
d0080482:	b2ad      	uxth	r5, r5
d0080484:	8025      	strh	r5, [r4, #0]
d0080486:	f005 f936 	bl	d00856f6 <strlen>
d008048a:	1d02      	adds	r2, r0, #4
d008048c:	4603      	mov	r3, r0
d008048e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080492:	d20f      	bcs.n	d00804b4 <emit_ey.constprop.0+0x74>
d0080494:	b140      	cbz	r0, d00804a8 <emit_ey.constprop.0+0x68>
d0080496:	183a      	adds	r2, r7, r0
d0080498:	2120      	movs	r1, #32
d008049a:	4638      	mov	r0, r7
d008049c:	54f9      	strb	r1, [r7, r3]
d008049e:	f882 8001 	strb.w	r8, [r2, #1]
d00804a2:	f005 f928 	bl	d00856f6 <strlen>
d00804a6:	4603      	mov	r3, r0
d00804a8:	18f8      	adds	r0, r7, r3
d00804aa:	2203      	movs	r2, #3
d00804ac:	491d      	ldr	r1, [pc, #116]	; (d0080524 <emit_ey.constprop.0+0xe4>)
d00804ae:	f004 ff85 	bl	d00853bc <memcpy>
d00804b2:	8825      	ldrh	r5, [r4, #0]
d00804b4:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d00804b8:	d22d      	bcs.n	d0080516 <emit_ey.constprop.0+0xd6>
d00804ba:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00804be:	2308      	movs	r3, #8
d00804c0:	224c      	movs	r2, #76	; 0x4c
d00804c2:	4817      	ldr	r0, [pc, #92]	; (d0080520 <emit_ey.constprop.0+0xe0>)
d00804c4:	f806 3015 	strb.w	r3, [r6, r5, lsl #1]
d00804c8:	2500      	movs	r5, #0
d00804ca:	8823      	ldrh	r3, [r4, #0]
d00804cc:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00804d0:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d00804d4:	805a      	strh	r2, [r3, #2]
d00804d6:	8823      	ldrh	r3, [r4, #0]
d00804d8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00804dc:	eb06 0643 	add.w	r6, r6, r3, lsl #1
d00804e0:	7135      	strb	r5, [r6, #4]
d00804e2:	8823      	ldrh	r3, [r4, #0]
d00804e4:	3301      	adds	r3, #1
d00804e6:	8023      	strh	r3, [r4, #0]
d00804e8:	f005 f905 	bl	d00856f6 <strlen>
d00804ec:	1d02      	adds	r2, r0, #4
d00804ee:	4603      	mov	r3, r0
d00804f0:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00804f4:	d20f      	bcs.n	d0080516 <emit_ey.constprop.0+0xd6>
d00804f6:	b138      	cbz	r0, d0080508 <emit_ey.constprop.0+0xc8>
d00804f8:	183a      	adds	r2, r7, r0
d00804fa:	2120      	movs	r1, #32
d00804fc:	4808      	ldr	r0, [pc, #32]	; (d0080520 <emit_ey.constprop.0+0xe0>)
d00804fe:	54f9      	strb	r1, [r7, r3]
d0080500:	7055      	strb	r5, [r2, #1]
d0080502:	f005 f8f8 	bl	d00856f6 <strlen>
d0080506:	4603      	mov	r3, r0
d0080508:	18f8      	adds	r0, r7, r3
d008050a:	2203      	movs	r2, #3
d008050c:	4906      	ldr	r1, [pc, #24]	; (d0080528 <emit_ey.constprop.0+0xe8>)
d008050e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0080512:	f004 bf53 	b.w	d00853bc <memcpy>
d0080516:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d008051a:	4770      	bx	lr
d008051c:	d00861a8 	.word	0xd00861a8
d0080520:	d00c8460 	.word	0xd00c8460
d0080524:	d0085c00 	.word	0xd0085c00
d0080528:	d0085bf4 	.word	0xd0085bf4

d008052c <emit_oy.constprop.0>:
d008052c:	8803      	ldrh	r3, [r0, #0]
d008052e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080532:	d268      	bcs.n	d0080606 <emit_oy.constprop.0+0xda>
d0080534:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080538:	2104      	movs	r1, #4
d008053a:	224c      	movs	r2, #76	; 0x4c
d008053c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0080540:	4e31      	ldr	r6, [pc, #196]	; (d0080608 <emit_oy.constprop.0+0xdc>)
d0080542:	4604      	mov	r4, r0
d0080544:	f04f 0800 	mov.w	r8, #0
d0080548:	4f30      	ldr	r7, [pc, #192]	; (d008060c <emit_oy.constprop.0+0xe0>)
d008054a:	f806 1013 	strb.w	r1, [r6, r3, lsl #1]
d008054e:	8803      	ldrh	r3, [r0, #0]
d0080550:	4638      	mov	r0, r7
d0080552:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080556:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d008055a:	805a      	strh	r2, [r3, #2]
d008055c:	8823      	ldrh	r3, [r4, #0]
d008055e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080562:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d0080566:	f883 8004 	strb.w	r8, [r3, #4]
d008056a:	8825      	ldrh	r5, [r4, #0]
d008056c:	3501      	adds	r5, #1
d008056e:	b2ad      	uxth	r5, r5
d0080570:	8025      	strh	r5, [r4, #0]
d0080572:	f005 f8c0 	bl	d00856f6 <strlen>
d0080576:	1d02      	adds	r2, r0, #4
d0080578:	4603      	mov	r3, r0
d008057a:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008057e:	d20f      	bcs.n	d00805a0 <emit_oy.constprop.0+0x74>
d0080580:	b140      	cbz	r0, d0080594 <emit_oy.constprop.0+0x68>
d0080582:	183a      	adds	r2, r7, r0
d0080584:	2120      	movs	r1, #32
d0080586:	4638      	mov	r0, r7
d0080588:	54f9      	strb	r1, [r7, r3]
d008058a:	f882 8001 	strb.w	r8, [r2, #1]
d008058e:	f005 f8b2 	bl	d00856f6 <strlen>
d0080592:	4603      	mov	r3, r0
d0080594:	18f8      	adds	r0, r7, r3
d0080596:	2203      	movs	r2, #3
d0080598:	491d      	ldr	r1, [pc, #116]	; (d0080610 <emit_oy.constprop.0+0xe4>)
d008059a:	f004 ff0f 	bl	d00853bc <memcpy>
d008059e:	8825      	ldrh	r5, [r4, #0]
d00805a0:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d00805a4:	d22d      	bcs.n	d0080602 <emit_oy.constprop.0+0xd6>
d00805a6:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00805aa:	2308      	movs	r3, #8
d00805ac:	2256      	movs	r2, #86	; 0x56
d00805ae:	4817      	ldr	r0, [pc, #92]	; (d008060c <emit_oy.constprop.0+0xe0>)
d00805b0:	f806 3015 	strb.w	r3, [r6, r5, lsl #1]
d00805b4:	2500      	movs	r5, #0
d00805b6:	8823      	ldrh	r3, [r4, #0]
d00805b8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00805bc:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d00805c0:	805a      	strh	r2, [r3, #2]
d00805c2:	8823      	ldrh	r3, [r4, #0]
d00805c4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00805c8:	eb06 0643 	add.w	r6, r6, r3, lsl #1
d00805cc:	7135      	strb	r5, [r6, #4]
d00805ce:	8823      	ldrh	r3, [r4, #0]
d00805d0:	3301      	adds	r3, #1
d00805d2:	8023      	strh	r3, [r4, #0]
d00805d4:	f005 f88f 	bl	d00856f6 <strlen>
d00805d8:	1d02      	adds	r2, r0, #4
d00805da:	4603      	mov	r3, r0
d00805dc:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00805e0:	d20f      	bcs.n	d0080602 <emit_oy.constprop.0+0xd6>
d00805e2:	b138      	cbz	r0, d00805f4 <emit_oy.constprop.0+0xc8>
d00805e4:	183a      	adds	r2, r7, r0
d00805e6:	2120      	movs	r1, #32
d00805e8:	4808      	ldr	r0, [pc, #32]	; (d008060c <emit_oy.constprop.0+0xe0>)
d00805ea:	54f9      	strb	r1, [r7, r3]
d00805ec:	7055      	strb	r5, [r2, #1]
d00805ee:	f005 f882 	bl	d00856f6 <strlen>
d00805f2:	4603      	mov	r3, r0
d00805f4:	18f8      	adds	r0, r7, r3
d00805f6:	2203      	movs	r2, #3
d00805f8:	4906      	ldr	r1, [pc, #24]	; (d0080614 <emit_oy.constprop.0+0xe8>)
d00805fa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00805fe:	f004 bedd 	b.w	d00853bc <memcpy>
d0080602:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0080606:	4770      	bx	lr
d0080608:	d00861a8 	.word	0xd00861a8
d008060c:	d00c8460 	.word	0xd00c8460
d0080610:	d0085bf8 	.word	0xd0085bf8
d0080614:	d0085bf4 	.word	0xd0085bf4

d0080618 <emit_aw.constprop.0>:
d0080618:	8803      	ldrh	r3, [r0, #0]
d008061a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008061e:	d268      	bcs.n	d00806f2 <emit_aw.constprop.0+0xda>
d0080620:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080624:	2103      	movs	r1, #3
d0080626:	224c      	movs	r2, #76	; 0x4c
d0080628:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d008062c:	4e31      	ldr	r6, [pc, #196]	; (d00806f4 <emit_aw.constprop.0+0xdc>)
d008062e:	4604      	mov	r4, r0
d0080630:	f04f 0800 	mov.w	r8, #0
d0080634:	4f30      	ldr	r7, [pc, #192]	; (d00806f8 <emit_aw.constprop.0+0xe0>)
d0080636:	f806 1013 	strb.w	r1, [r6, r3, lsl #1]
d008063a:	8803      	ldrh	r3, [r0, #0]
d008063c:	4638      	mov	r0, r7
d008063e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080642:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d0080646:	805a      	strh	r2, [r3, #2]
d0080648:	8823      	ldrh	r3, [r4, #0]
d008064a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008064e:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d0080652:	f883 8004 	strb.w	r8, [r3, #4]
d0080656:	8825      	ldrh	r5, [r4, #0]
d0080658:	3501      	adds	r5, #1
d008065a:	b2ad      	uxth	r5, r5
d008065c:	8025      	strh	r5, [r4, #0]
d008065e:	f005 f84a 	bl	d00856f6 <strlen>
d0080662:	1d02      	adds	r2, r0, #4
d0080664:	4603      	mov	r3, r0
d0080666:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008066a:	d20f      	bcs.n	d008068c <emit_aw.constprop.0+0x74>
d008066c:	b140      	cbz	r0, d0080680 <emit_aw.constprop.0+0x68>
d008066e:	183a      	adds	r2, r7, r0
d0080670:	2120      	movs	r1, #32
d0080672:	4638      	mov	r0, r7
d0080674:	54f9      	strb	r1, [r7, r3]
d0080676:	f882 8001 	strb.w	r8, [r2, #1]
d008067a:	f005 f83c 	bl	d00856f6 <strlen>
d008067e:	4603      	mov	r3, r0
d0080680:	18f8      	adds	r0, r7, r3
d0080682:	2203      	movs	r2, #3
d0080684:	491d      	ldr	r1, [pc, #116]	; (d00806fc <emit_aw.constprop.0+0xe4>)
d0080686:	f004 fe99 	bl	d00853bc <memcpy>
d008068a:	8825      	ldrh	r5, [r4, #0]
d008068c:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d0080690:	d22d      	bcs.n	d00806ee <emit_aw.constprop.0+0xd6>
d0080692:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0080696:	230a      	movs	r3, #10
d0080698:	2256      	movs	r2, #86	; 0x56
d008069a:	4817      	ldr	r0, [pc, #92]	; (d00806f8 <emit_aw.constprop.0+0xe0>)
d008069c:	f806 3015 	strb.w	r3, [r6, r5, lsl #1]
d00806a0:	2500      	movs	r5, #0
d00806a2:	8823      	ldrh	r3, [r4, #0]
d00806a4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00806a8:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d00806ac:	805a      	strh	r2, [r3, #2]
d00806ae:	8823      	ldrh	r3, [r4, #0]
d00806b0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00806b4:	eb06 0643 	add.w	r6, r6, r3, lsl #1
d00806b8:	7135      	strb	r5, [r6, #4]
d00806ba:	8823      	ldrh	r3, [r4, #0]
d00806bc:	3301      	adds	r3, #1
d00806be:	8023      	strh	r3, [r4, #0]
d00806c0:	f005 f819 	bl	d00856f6 <strlen>
d00806c4:	1d02      	adds	r2, r0, #4
d00806c6:	4603      	mov	r3, r0
d00806c8:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00806cc:	d20f      	bcs.n	d00806ee <emit_aw.constprop.0+0xd6>
d00806ce:	b138      	cbz	r0, d00806e0 <emit_aw.constprop.0+0xc8>
d00806d0:	183a      	adds	r2, r7, r0
d00806d2:	2120      	movs	r1, #32
d00806d4:	4808      	ldr	r0, [pc, #32]	; (d00806f8 <emit_aw.constprop.0+0xe0>)
d00806d6:	54f9      	strb	r1, [r7, r3]
d00806d8:	7055      	strb	r5, [r2, #1]
d00806da:	f005 f80c 	bl	d00856f6 <strlen>
d00806de:	4603      	mov	r3, r0
d00806e0:	18f8      	adds	r0, r7, r3
d00806e2:	2203      	movs	r2, #3
d00806e4:	4906      	ldr	r1, [pc, #24]	; (d0080700 <emit_aw.constprop.0+0xe8>)
d00806e6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00806ea:	f004 be67 	b.w	d00853bc <memcpy>
d00806ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00806f2:	4770      	bx	lr
d00806f4:	d00861a8 	.word	0xd00861a8
d00806f8:	d00c8460 	.word	0xd00c8460
d00806fc:	d0085bf0 	.word	0xd0085bf0
d0080700:	d0085bfc 	.word	0xd0085bfc

d0080704 <emit_known_word.constprop.0>:
d0080704:	2900      	cmp	r1, #0
d0080706:	f000 8683 	beq.w	d0081410 <emit_known_word.constprop.0+0xd0c>
d008070a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d008070e:	4614      	mov	r4, r2
d0080710:	f8df e774 	ldr.w	lr, [pc, #1908]	; d0080e88 <emit_known_word.constprop.0+0x784>
d0080714:	1e42      	subs	r2, r0, #1
d0080716:	b083      	sub	sp, #12
d0080718:	2500      	movs	r5, #0
d008071a:	2674      	movs	r6, #116	; 0x74
d008071c:	4694      	mov	ip, r2
d008071e:	4677      	mov	r7, lr
d0080720:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d0080724:	3501      	adds	r5, #1
d0080726:	f1a3 0841 	sub.w	r8, r3, #65	; 0x41
d008072a:	b2ad      	uxth	r5, r5
d008072c:	f1b8 0f19 	cmp.w	r8, #25
d0080730:	d801      	bhi.n	d0080736 <emit_known_word.constprop.0+0x32>
d0080732:	3320      	adds	r3, #32
d0080734:	b2db      	uxtb	r3, r3
d0080736:	42b3      	cmp	r3, r6
d0080738:	d106      	bne.n	d0080748 <emit_known_word.constprop.0+0x44>
d008073a:	42a9      	cmp	r1, r5
d008073c:	f000 828f 	beq.w	d0080c5e <emit_known_word.constprop.0+0x55a>
d0080740:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d0080744:	2e00      	cmp	r6, #0
d0080746:	d1eb      	bne.n	d0080720 <emit_known_word.constprop.0+0x1c>
d0080748:	f8df 8740 	ldr.w	r8, [pc, #1856]	; d0080e8c <emit_known_word.constprop.0+0x788>
d008074c:	4694      	mov	ip, r2
d008074e:	2500      	movs	r5, #0
d0080750:	2674      	movs	r6, #116	; 0x74
d0080752:	4647      	mov	r7, r8
d0080754:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d0080758:	3501      	adds	r5, #1
d008075a:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d008075e:	b2ad      	uxth	r5, r5
d0080760:	f1be 0f19 	cmp.w	lr, #25
d0080764:	d801      	bhi.n	d008076a <emit_known_word.constprop.0+0x66>
d0080766:	3320      	adds	r3, #32
d0080768:	b2db      	uxtb	r3, r3
d008076a:	42b3      	cmp	r3, r6
d008076c:	d106      	bne.n	d008077c <emit_known_word.constprop.0+0x78>
d008076e:	42a9      	cmp	r1, r5
d0080770:	f000 82e9 	beq.w	d0080d46 <emit_known_word.constprop.0+0x642>
d0080774:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d0080778:	2e00      	cmp	r6, #0
d008077a:	d1eb      	bne.n	d0080754 <emit_known_word.constprop.0+0x50>
d008077c:	f8df 8710 	ldr.w	r8, [pc, #1808]	; d0080e90 <emit_known_word.constprop.0+0x78c>
d0080780:	4694      	mov	ip, r2
d0080782:	2500      	movs	r5, #0
d0080784:	2674      	movs	r6, #116	; 0x74
d0080786:	4647      	mov	r7, r8
d0080788:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d008078c:	3501      	adds	r5, #1
d008078e:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d0080792:	b2ad      	uxth	r5, r5
d0080794:	f1be 0f19 	cmp.w	lr, #25
d0080798:	d801      	bhi.n	d008079e <emit_known_word.constprop.0+0x9a>
d008079a:	3320      	adds	r3, #32
d008079c:	b2db      	uxtb	r3, r3
d008079e:	429e      	cmp	r6, r3
d00807a0:	d106      	bne.n	d00807b0 <emit_known_word.constprop.0+0xac>
d00807a2:	42a9      	cmp	r1, r5
d00807a4:	f000 839a 	beq.w	d0080edc <emit_known_word.constprop.0+0x7d8>
d00807a8:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d00807ac:	2e00      	cmp	r6, #0
d00807ae:	d1eb      	bne.n	d0080788 <emit_known_word.constprop.0+0x84>
d00807b0:	f8df 86e0 	ldr.w	r8, [pc, #1760]	; d0080e94 <emit_known_word.constprop.0+0x790>
d00807b4:	4694      	mov	ip, r2
d00807b6:	2500      	movs	r5, #0
d00807b8:	2674      	movs	r6, #116	; 0x74
d00807ba:	4647      	mov	r7, r8
d00807bc:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d00807c0:	3501      	adds	r5, #1
d00807c2:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d00807c6:	b2ad      	uxth	r5, r5
d00807c8:	f1be 0f19 	cmp.w	lr, #25
d00807cc:	d801      	bhi.n	d00807d2 <emit_known_word.constprop.0+0xce>
d00807ce:	3320      	adds	r3, #32
d00807d0:	b2db      	uxtb	r3, r3
d00807d2:	429e      	cmp	r6, r3
d00807d4:	d106      	bne.n	d00807e4 <emit_known_word.constprop.0+0xe0>
d00807d6:	42a9      	cmp	r1, r5
d00807d8:	f000 8416 	beq.w	d0081008 <emit_known_word.constprop.0+0x904>
d00807dc:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d00807e0:	2e00      	cmp	r6, #0
d00807e2:	d1eb      	bne.n	d00807bc <emit_known_word.constprop.0+0xb8>
d00807e4:	f8df 86b0 	ldr.w	r8, [pc, #1712]	; d0080e98 <emit_known_word.constprop.0+0x794>
d00807e8:	4694      	mov	ip, r2
d00807ea:	2500      	movs	r5, #0
d00807ec:	2674      	movs	r6, #116	; 0x74
d00807ee:	4647      	mov	r7, r8
d00807f0:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d00807f4:	3501      	adds	r5, #1
d00807f6:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d00807fa:	b2ad      	uxth	r5, r5
d00807fc:	f1be 0f19 	cmp.w	lr, #25
d0080800:	d801      	bhi.n	d0080806 <emit_known_word.constprop.0+0x102>
d0080802:	3320      	adds	r3, #32
d0080804:	b2db      	uxtb	r3, r3
d0080806:	42b3      	cmp	r3, r6
d0080808:	d106      	bne.n	d0080818 <emit_known_word.constprop.0+0x114>
d008080a:	42a9      	cmp	r1, r5
d008080c:	f000 84a3 	beq.w	d0081156 <emit_known_word.constprop.0+0xa52>
d0080810:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d0080814:	2e00      	cmp	r6, #0
d0080816:	d1eb      	bne.n	d00807f0 <emit_known_word.constprop.0+0xec>
d0080818:	f8df 8680 	ldr.w	r8, [pc, #1664]	; d0080e9c <emit_known_word.constprop.0+0x798>
d008081c:	4694      	mov	ip, r2
d008081e:	2679      	movs	r6, #121	; 0x79
d0080820:	2500      	movs	r5, #0
d0080822:	4647      	mov	r7, r8
d0080824:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d0080828:	3501      	adds	r5, #1
d008082a:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d008082e:	b2ad      	uxth	r5, r5
d0080830:	f1be 0f19 	cmp.w	lr, #25
d0080834:	d801      	bhi.n	d008083a <emit_known_word.constprop.0+0x136>
d0080836:	3320      	adds	r3, #32
d0080838:	b2db      	uxtb	r3, r3
d008083a:	429e      	cmp	r6, r3
d008083c:	d106      	bne.n	d008084c <emit_known_word.constprop.0+0x148>
d008083e:	42a9      	cmp	r1, r5
d0080840:	f000 8272 	beq.w	d0080d28 <emit_known_word.constprop.0+0x624>
d0080844:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d0080848:	2e00      	cmp	r6, #0
d008084a:	d1eb      	bne.n	d0080824 <emit_known_word.constprop.0+0x120>
d008084c:	f8df 8650 	ldr.w	r8, [pc, #1616]	; d0080ea0 <emit_known_word.constprop.0+0x79c>
d0080850:	4694      	mov	ip, r2
d0080852:	2679      	movs	r6, #121	; 0x79
d0080854:	2500      	movs	r5, #0
d0080856:	4647      	mov	r7, r8
d0080858:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d008085c:	3501      	adds	r5, #1
d008085e:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d0080862:	b2ad      	uxth	r5, r5
d0080864:	f1be 0f19 	cmp.w	lr, #25
d0080868:	d801      	bhi.n	d008086e <emit_known_word.constprop.0+0x16a>
d008086a:	3320      	adds	r3, #32
d008086c:	b2db      	uxtb	r3, r3
d008086e:	42b3      	cmp	r3, r6
d0080870:	d106      	bne.n	d0080880 <emit_known_word.constprop.0+0x17c>
d0080872:	42a9      	cmp	r1, r5
d0080874:	f000 8484 	beq.w	d0081180 <emit_known_word.constprop.0+0xa7c>
d0080878:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d008087c:	2e00      	cmp	r6, #0
d008087e:	d1eb      	bne.n	d0080858 <emit_known_word.constprop.0+0x154>
d0080880:	f8df 8620 	ldr.w	r8, [pc, #1568]	; d0080ea4 <emit_known_word.constprop.0+0x7a0>
d0080884:	4694      	mov	ip, r2
d0080886:	2674      	movs	r6, #116	; 0x74
d0080888:	2300      	movs	r3, #0
d008088a:	4647      	mov	r7, r8
d008088c:	f81c 5f01 	ldrb.w	r5, [ip, #1]!
d0080890:	3301      	adds	r3, #1
d0080892:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080896:	b29b      	uxth	r3, r3
d0080898:	f1be 0f19 	cmp.w	lr, #25
d008089c:	d801      	bhi.n	d00808a2 <emit_known_word.constprop.0+0x19e>
d008089e:	3520      	adds	r5, #32
d00808a0:	b2ed      	uxtb	r5, r5
d00808a2:	42ae      	cmp	r6, r5
d00808a4:	d106      	bne.n	d00808b4 <emit_known_word.constprop.0+0x1b0>
d00808a6:	4299      	cmp	r1, r3
d00808a8:	f000 84d8 	beq.w	d008125c <emit_known_word.constprop.0+0xb58>
d00808ac:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d00808b0:	2e00      	cmp	r6, #0
d00808b2:	d1eb      	bne.n	d008088c <emit_known_word.constprop.0+0x188>
d00808b4:	f8df 85f0 	ldr.w	r8, [pc, #1520]	; d0080ea8 <emit_known_word.constprop.0+0x7a4>
d00808b8:	4694      	mov	ip, r2
d00808ba:	2300      	movs	r3, #0
d00808bc:	2674      	movs	r6, #116	; 0x74
d00808be:	4647      	mov	r7, r8
d00808c0:	f81c 5f01 	ldrb.w	r5, [ip, #1]!
d00808c4:	3301      	adds	r3, #1
d00808c6:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00808ca:	b29b      	uxth	r3, r3
d00808cc:	f1be 0f19 	cmp.w	lr, #25
d00808d0:	d801      	bhi.n	d00808d6 <emit_known_word.constprop.0+0x1d2>
d00808d2:	3520      	adds	r5, #32
d00808d4:	b2ed      	uxtb	r5, r5
d00808d6:	42ae      	cmp	r6, r5
d00808d8:	d106      	bne.n	d00808e8 <emit_known_word.constprop.0+0x1e4>
d00808da:	4299      	cmp	r1, r3
d00808dc:	f000 8591 	beq.w	d0081402 <emit_known_word.constprop.0+0xcfe>
d00808e0:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d00808e4:	2e00      	cmp	r6, #0
d00808e6:	d1eb      	bne.n	d00808c0 <emit_known_word.constprop.0+0x1bc>
d00808e8:	f8df b5c0 	ldr.w	fp, [pc, #1472]	; d0080eac <emit_known_word.constprop.0+0x7a8>
d00808ec:	f101 3aff 	add.w	sl, r1, #4294967295	; 0xffffffff
d00808f0:	4616      	mov	r6, r2
d00808f2:	f04f 0c74 	mov.w	ip, #116	; 0x74
d00808f6:	fa10 f98a 	uxtah	r9, r0, sl
d00808fa:	465f      	mov	r7, fp
d00808fc:	f1cb 0801 	rsb	r8, fp, #1
d0080900:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080904:	eb08 0307 	add.w	r3, r8, r7
d0080908:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d008090c:	b29b      	uxth	r3, r3
d008090e:	f1be 0f19 	cmp.w	lr, #25
d0080912:	d801      	bhi.n	d0080918 <emit_known_word.constprop.0+0x214>
d0080914:	3520      	adds	r5, #32
d0080916:	b2ed      	uxtb	r5, r5
d0080918:	4565      	cmp	r5, ip
d008091a:	d107      	bne.n	d008092c <emit_known_word.constprop.0+0x228>
d008091c:	454e      	cmp	r6, r9
d008091e:	f000 8579 	beq.w	d0081414 <emit_known_word.constprop.0+0xd10>
d0080922:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080926:	f1bc 0f00 	cmp.w	ip, #0
d008092a:	d1e9      	bne.n	d0080900 <emit_known_word.constprop.0+0x1fc>
d008092c:	f8df b580 	ldr.w	fp, [pc, #1408]	; d0080eb0 <emit_known_word.constprop.0+0x7ac>
d0080930:	4616      	mov	r6, r2
d0080932:	fa10 f98a 	uxtah	r9, r0, sl
d0080936:	f04f 0c6f 	mov.w	ip, #111	; 0x6f
d008093a:	465f      	mov	r7, fp
d008093c:	f1cb 0801 	rsb	r8, fp, #1
d0080940:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080944:	eb08 0307 	add.w	r3, r8, r7
d0080948:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d008094c:	b29b      	uxth	r3, r3
d008094e:	f1be 0f19 	cmp.w	lr, #25
d0080952:	d801      	bhi.n	d0080958 <emit_known_word.constprop.0+0x254>
d0080954:	3520      	adds	r5, #32
d0080956:	b2ed      	uxtb	r5, r5
d0080958:	45ac      	cmp	ip, r5
d008095a:	d107      	bne.n	d008096c <emit_known_word.constprop.0+0x268>
d008095c:	45b1      	cmp	r9, r6
d008095e:	f000 856f 	beq.w	d0081440 <emit_known_word.constprop.0+0xd3c>
d0080962:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080966:	f1bc 0f00 	cmp.w	ip, #0
d008096a:	d1e9      	bne.n	d0080940 <emit_known_word.constprop.0+0x23c>
d008096c:	f8df b544 	ldr.w	fp, [pc, #1348]	; d0080eb4 <emit_known_word.constprop.0+0x7b0>
d0080970:	4616      	mov	r6, r2
d0080972:	fa10 f98a 	uxtah	r9, r0, sl
d0080976:	f04f 0c69 	mov.w	ip, #105	; 0x69
d008097a:	465f      	mov	r7, fp
d008097c:	f1cb 0801 	rsb	r8, fp, #1
d0080980:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080984:	eb08 0307 	add.w	r3, r8, r7
d0080988:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d008098c:	b29b      	uxth	r3, r3
d008098e:	f1be 0f19 	cmp.w	lr, #25
d0080992:	d801      	bhi.n	d0080998 <emit_known_word.constprop.0+0x294>
d0080994:	3520      	adds	r5, #32
d0080996:	b2ed      	uxtb	r5, r5
d0080998:	45ac      	cmp	ip, r5
d008099a:	d107      	bne.n	d00809ac <emit_known_word.constprop.0+0x2a8>
d008099c:	45b1      	cmp	r9, r6
d008099e:	f000 85c1 	beq.w	d0081524 <emit_known_word.constprop.0+0xe20>
d00809a2:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d00809a6:	f1bc 0f00 	cmp.w	ip, #0
d00809aa:	d1e9      	bne.n	d0080980 <emit_known_word.constprop.0+0x27c>
d00809ac:	f8df b508 	ldr.w	fp, [pc, #1288]	; d0080eb8 <emit_known_word.constprop.0+0x7b4>
d00809b0:	4616      	mov	r6, r2
d00809b2:	fa10 f98a 	uxtah	r9, r0, sl
d00809b6:	f04f 0c61 	mov.w	ip, #97	; 0x61
d00809ba:	465f      	mov	r7, fp
d00809bc:	f1cb 0801 	rsb	r8, fp, #1
d00809c0:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d00809c4:	eb08 0307 	add.w	r3, r8, r7
d00809c8:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00809cc:	b29b      	uxth	r3, r3
d00809ce:	f1be 0f19 	cmp.w	lr, #25
d00809d2:	d801      	bhi.n	d00809d8 <emit_known_word.constprop.0+0x2d4>
d00809d4:	3520      	adds	r5, #32
d00809d6:	b2ed      	uxtb	r5, r5
d00809d8:	45ac      	cmp	ip, r5
d00809da:	d107      	bne.n	d00809ec <emit_known_word.constprop.0+0x2e8>
d00809dc:	45b1      	cmp	r9, r6
d00809de:	f000 8614 	beq.w	d008160a <emit_known_word.constprop.0+0xf06>
d00809e2:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d00809e6:	f1bc 0f00 	cmp.w	ip, #0
d00809ea:	d1e9      	bne.n	d00809c0 <emit_known_word.constprop.0+0x2bc>
d00809ec:	7803      	ldrb	r3, [r0, #0]
d00809ee:	f1a3 0641 	sub.w	r6, r3, #65	; 0x41
d00809f2:	461d      	mov	r5, r3
d00809f4:	2e19      	cmp	r6, #25
d00809f6:	d802      	bhi.n	d00809fe <emit_known_word.constprop.0+0x2fa>
d00809f8:	f103 0520 	add.w	r5, r3, #32
d00809fc:	b2ed      	uxtb	r5, r5
d00809fe:	2d69      	cmp	r5, #105	; 0x69
d0080a00:	d102      	bne.n	d0080a08 <emit_known_word.constprop.0+0x304>
d0080a02:	2901      	cmp	r1, #1
d0080a04:	f000 8642 	beq.w	d008168c <emit_known_word.constprop.0+0xf88>
d0080a08:	f1a3 0541 	sub.w	r5, r3, #65	; 0x41
d0080a0c:	2d19      	cmp	r5, #25
d0080a0e:	d801      	bhi.n	d0080a14 <emit_known_word.constprop.0+0x310>
d0080a10:	3320      	adds	r3, #32
d0080a12:	b2db      	uxtb	r3, r3
d0080a14:	2b61      	cmp	r3, #97	; 0x61
d0080a16:	d102      	bne.n	d0080a1e <emit_known_word.constprop.0+0x31a>
d0080a18:	2901      	cmp	r1, #1
d0080a1a:	f000 86e7 	beq.w	d00817ec <emit_known_word.constprop.0+0x10e8>
d0080a1e:	f8df b49c 	ldr.w	fp, [pc, #1180]	; d0080ebc <emit_known_word.constprop.0+0x7b8>
d0080a22:	4616      	mov	r6, r2
d0080a24:	fa10 f98a 	uxtah	r9, r0, sl
d0080a28:	f04f 0c61 	mov.w	ip, #97	; 0x61
d0080a2c:	465f      	mov	r7, fp
d0080a2e:	f1cb 0801 	rsb	r8, fp, #1
d0080a32:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080a36:	eb08 0307 	add.w	r3, r8, r7
d0080a3a:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080a3e:	b29b      	uxth	r3, r3
d0080a40:	f1be 0f19 	cmp.w	lr, #25
d0080a44:	d801      	bhi.n	d0080a4a <emit_known_word.constprop.0+0x346>
d0080a46:	3520      	adds	r5, #32
d0080a48:	b2ed      	uxtb	r5, r5
d0080a4a:	45ac      	cmp	ip, r5
d0080a4c:	d107      	bne.n	d0080a5e <emit_known_word.constprop.0+0x35a>
d0080a4e:	45b1      	cmp	r9, r6
d0080a50:	f000 8632 	beq.w	d00816b8 <emit_known_word.constprop.0+0xfb4>
d0080a54:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080a58:	f1bc 0f00 	cmp.w	ip, #0
d0080a5c:	d1e9      	bne.n	d0080a32 <emit_known_word.constprop.0+0x32e>
d0080a5e:	f8df b460 	ldr.w	fp, [pc, #1120]	; d0080ec0 <emit_known_word.constprop.0+0x7bc>
d0080a62:	4616      	mov	r6, r2
d0080a64:	fa10 f98a 	uxtah	r9, r0, sl
d0080a68:	f04f 0c68 	mov.w	ip, #104	; 0x68
d0080a6c:	465f      	mov	r7, fp
d0080a6e:	f1cb 0801 	rsb	r8, fp, #1
d0080a72:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080a76:	eb08 0307 	add.w	r3, r8, r7
d0080a7a:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080a7e:	b29b      	uxth	r3, r3
d0080a80:	f1be 0f19 	cmp.w	lr, #25
d0080a84:	d801      	bhi.n	d0080a8a <emit_known_word.constprop.0+0x386>
d0080a86:	3520      	adds	r5, #32
d0080a88:	b2ed      	uxtb	r5, r5
d0080a8a:	4565      	cmp	r5, ip
d0080a8c:	d107      	bne.n	d0080a9e <emit_known_word.constprop.0+0x39a>
d0080a8e:	45b1      	cmp	r9, r6
d0080a90:	f000 86de 	beq.w	d0081850 <emit_known_word.constprop.0+0x114c>
d0080a94:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080a98:	f1bc 0f00 	cmp.w	ip, #0
d0080a9c:	d1e9      	bne.n	d0080a72 <emit_known_word.constprop.0+0x36e>
d0080a9e:	f8df b424 	ldr.w	fp, [pc, #1060]	; d0080ec4 <emit_known_word.constprop.0+0x7c0>
d0080aa2:	4616      	mov	r6, r2
d0080aa4:	fa10 f98a 	uxtah	r9, r0, sl
d0080aa8:	f04f 0c61 	mov.w	ip, #97	; 0x61
d0080aac:	465f      	mov	r7, fp
d0080aae:	f1cb 0801 	rsb	r8, fp, #1
d0080ab2:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080ab6:	eb08 0307 	add.w	r3, r8, r7
d0080aba:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080abe:	b29b      	uxth	r3, r3
d0080ac0:	f1be 0f19 	cmp.w	lr, #25
d0080ac4:	d801      	bhi.n	d0080aca <emit_known_word.constprop.0+0x3c6>
d0080ac6:	3520      	adds	r5, #32
d0080ac8:	b2ed      	uxtb	r5, r5
d0080aca:	45ac      	cmp	ip, r5
d0080acc:	d107      	bne.n	d0080ade <emit_known_word.constprop.0+0x3da>
d0080ace:	45b1      	cmp	r9, r6
d0080ad0:	f000 8768 	beq.w	d00819a4 <emit_known_word.constprop.0+0x12a0>
d0080ad4:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080ad8:	f1bc 0f00 	cmp.w	ip, #0
d0080adc:	d1e9      	bne.n	d0080ab2 <emit_known_word.constprop.0+0x3ae>
d0080ade:	f8df b3e8 	ldr.w	fp, [pc, #1000]	; d0080ec8 <emit_known_word.constprop.0+0x7c4>
d0080ae2:	4616      	mov	r6, r2
d0080ae4:	fa10 f98a 	uxtah	r9, r0, sl
d0080ae8:	f04f 0c6e 	mov.w	ip, #110	; 0x6e
d0080aec:	465f      	mov	r7, fp
d0080aee:	f1cb 0801 	rsb	r8, fp, #1
d0080af2:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080af6:	eb08 0307 	add.w	r3, r8, r7
d0080afa:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080afe:	b29b      	uxth	r3, r3
d0080b00:	f1be 0f19 	cmp.w	lr, #25
d0080b04:	d801      	bhi.n	d0080b0a <emit_known_word.constprop.0+0x406>
d0080b06:	3520      	adds	r5, #32
d0080b08:	b2ed      	uxtb	r5, r5
d0080b0a:	4565      	cmp	r5, ip
d0080b0c:	d107      	bne.n	d0080b1e <emit_known_word.constprop.0+0x41a>
d0080b0e:	45b1      	cmp	r9, r6
d0080b10:	f001 804c 	beq.w	d0081bac <emit_known_word.constprop.0+0x14a8>
d0080b14:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080b18:	f1bc 0f00 	cmp.w	ip, #0
d0080b1c:	d1e9      	bne.n	d0080af2 <emit_known_word.constprop.0+0x3ee>
d0080b1e:	f8df b3ac 	ldr.w	fp, [pc, #940]	; d0080ecc <emit_known_word.constprop.0+0x7c8>
d0080b22:	4616      	mov	r6, r2
d0080b24:	fa10 f98a 	uxtah	r9, r0, sl
d0080b28:	f04f 0c65 	mov.w	ip, #101	; 0x65
d0080b2c:	465f      	mov	r7, fp
d0080b2e:	f1cb 0801 	rsb	r8, fp, #1
d0080b32:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080b36:	eb08 0307 	add.w	r3, r8, r7
d0080b3a:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080b3e:	b29b      	uxth	r3, r3
d0080b40:	f1be 0f19 	cmp.w	lr, #25
d0080b44:	d801      	bhi.n	d0080b4a <emit_known_word.constprop.0+0x446>
d0080b46:	3520      	adds	r5, #32
d0080b48:	b2ed      	uxtb	r5, r5
d0080b4a:	45ac      	cmp	ip, r5
d0080b4c:	d107      	bne.n	d0080b5e <emit_known_word.constprop.0+0x45a>
d0080b4e:	45b1      	cmp	r9, r6
d0080b50:	f001 8120 	beq.w	d0081d94 <emit_known_word.constprop.0+0x1690>
d0080b54:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080b58:	f1bc 0f00 	cmp.w	ip, #0
d0080b5c:	d1e9      	bne.n	d0080b32 <emit_known_word.constprop.0+0x42e>
d0080b5e:	f8df b370 	ldr.w	fp, [pc, #880]	; d0080ed0 <emit_known_word.constprop.0+0x7cc>
d0080b62:	4616      	mov	r6, r2
d0080b64:	fa10 f98a 	uxtah	r9, r0, sl
d0080b68:	f04f 0c73 	mov.w	ip, #115	; 0x73
d0080b6c:	465f      	mov	r7, fp
d0080b6e:	f1cb 0801 	rsb	r8, fp, #1
d0080b72:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080b76:	eb08 0307 	add.w	r3, r8, r7
d0080b7a:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080b7e:	b29b      	uxth	r3, r3
d0080b80:	f1be 0f19 	cmp.w	lr, #25
d0080b84:	d801      	bhi.n	d0080b8a <emit_known_word.constprop.0+0x486>
d0080b86:	3520      	adds	r5, #32
d0080b88:	b2ed      	uxtb	r5, r5
d0080b8a:	45ac      	cmp	ip, r5
d0080b8c:	d107      	bne.n	d0080b9e <emit_known_word.constprop.0+0x49a>
d0080b8e:	45b1      	cmp	r9, r6
d0080b90:	f001 81f2 	beq.w	d0081f78 <emit_known_word.constprop.0+0x1874>
d0080b94:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080b98:	f1bc 0f00 	cmp.w	ip, #0
d0080b9c:	d1e9      	bne.n	d0080b72 <emit_known_word.constprop.0+0x46e>
d0080b9e:	f8df b334 	ldr.w	fp, [pc, #820]	; d0080ed4 <emit_known_word.constprop.0+0x7d0>
d0080ba2:	4616      	mov	r6, r2
d0080ba4:	fa10 f98a 	uxtah	r9, r0, sl
d0080ba8:	f04f 0c73 	mov.w	ip, #115	; 0x73
d0080bac:	465f      	mov	r7, fp
d0080bae:	f1cb 0801 	rsb	r8, fp, #1
d0080bb2:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080bb6:	eb08 0307 	add.w	r3, r8, r7
d0080bba:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080bbe:	b29b      	uxth	r3, r3
d0080bc0:	f1be 0f19 	cmp.w	lr, #25
d0080bc4:	d801      	bhi.n	d0080bca <emit_known_word.constprop.0+0x4c6>
d0080bc6:	3520      	adds	r5, #32
d0080bc8:	b2ed      	uxtb	r5, r5
d0080bca:	45ac      	cmp	ip, r5
d0080bcc:	d107      	bne.n	d0080bde <emit_known_word.constprop.0+0x4da>
d0080bce:	45b1      	cmp	r9, r6
d0080bd0:	f001 829c 	beq.w	d008210c <emit_known_word.constprop.0+0x1a08>
d0080bd4:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080bd8:	f1bc 0f00 	cmp.w	ip, #0
d0080bdc:	d1e9      	bne.n	d0080bb2 <emit_known_word.constprop.0+0x4ae>
d0080bde:	f8df b2f8 	ldr.w	fp, [pc, #760]	; d0080ed8 <emit_known_word.constprop.0+0x7d4>
d0080be2:	4616      	mov	r6, r2
d0080be4:	fa10 f98a 	uxtah	r9, r0, sl
d0080be8:	f04f 0c68 	mov.w	ip, #104	; 0x68
d0080bec:	465f      	mov	r7, fp
d0080bee:	f1cb 0801 	rsb	r8, fp, #1
d0080bf2:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d0080bf6:	eb08 0307 	add.w	r3, r8, r7
d0080bfa:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080bfe:	b29b      	uxth	r3, r3
d0080c00:	f1be 0f19 	cmp.w	lr, #25
d0080c04:	d801      	bhi.n	d0080c0a <emit_known_word.constprop.0+0x506>
d0080c06:	3520      	adds	r5, #32
d0080c08:	b2ed      	uxtb	r5, r5
d0080c0a:	45ac      	cmp	ip, r5
d0080c0c:	d107      	bne.n	d0080c1e <emit_known_word.constprop.0+0x51a>
d0080c0e:	45b1      	cmp	r9, r6
d0080c10:	f001 8292 	beq.w	d0082138 <emit_known_word.constprop.0+0x1a34>
d0080c14:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080c18:	f1bc 0f00 	cmp.w	ip, #0
d0080c1c:	d1e9      	bne.n	d0080bf2 <emit_known_word.constprop.0+0x4ee>
d0080c1e:	4e93      	ldr	r6, [pc, #588]	; (d0080e6c <emit_known_word.constprop.0+0x768>)
d0080c20:	fa10 fa8a 	uxtah	sl, r0, sl
d0080c24:	2068      	movs	r0, #104	; 0x68
d0080c26:	4637      	mov	r7, r6
d0080c28:	f1c6 0e01 	rsb	lr, r6, #1
d0080c2c:	e007      	b.n	d0080c3e <emit_known_word.constprop.0+0x53a>
d0080c2e:	4592      	cmp	sl, r2
d0080c30:	f001 8367 	beq.w	d0082302 <emit_known_word.constprop.0+0x1bfe>
d0080c34:	f817 0f01 	ldrb.w	r0, [r7, #1]!
d0080c38:	2800      	cmp	r0, #0
d0080c3a:	f000 8081 	beq.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d0080c3e:	f812 5f01 	ldrb.w	r5, [r2, #1]!
d0080c42:	eb0e 0307 	add.w	r3, lr, r7
d0080c46:	f1a5 0c41 	sub.w	ip, r5, #65	; 0x41
d0080c4a:	b29b      	uxth	r3, r3
d0080c4c:	f1bc 0f19 	cmp.w	ip, #25
d0080c50:	d801      	bhi.n	d0080c56 <emit_known_word.constprop.0+0x552>
d0080c52:	3520      	adds	r5, #32
d0080c54:	b2ed      	uxtb	r5, r5
d0080c56:	42a8      	cmp	r0, r5
d0080c58:	d0e9      	beq.n	d0080c2e <emit_known_word.constprop.0+0x52a>
d0080c5a:	2000      	movs	r0, #0
d0080c5c:	e070      	b.n	d0080d40 <emit_known_word.constprop.0+0x63c>
d0080c5e:	f81e 8001 	ldrb.w	r8, [lr, r1]
d0080c62:	f1b8 0f00 	cmp.w	r8, #0
d0080c66:	f47f ad6f 	bne.w	d0080748 <emit_known_word.constprop.0+0x44>
d0080c6a:	8823      	ldrh	r3, [r4, #0]
d0080c6c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080c70:	d265      	bcs.n	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080c72:	4d7f      	ldr	r5, [pc, #508]	; (d0080e70 <emit_known_word.constprop.0+0x76c>)
d0080c74:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080c78:	210e      	movs	r1, #14
d0080c7a:	2244      	movs	r2, #68	; 0x44
d0080c7c:	4e7d      	ldr	r6, [pc, #500]	; (d0080e74 <emit_known_word.constprop.0+0x770>)
d0080c7e:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0080c82:	8823      	ldrh	r3, [r4, #0]
d0080c84:	4630      	mov	r0, r6
d0080c86:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080c8a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080c8e:	805a      	strh	r2, [r3, #2]
d0080c90:	8823      	ldrh	r3, [r4, #0]
d0080c92:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080c96:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080c9a:	f883 8004 	strb.w	r8, [r3, #4]
d0080c9e:	8827      	ldrh	r7, [r4, #0]
d0080ca0:	3701      	adds	r7, #1
d0080ca2:	b2bf      	uxth	r7, r7
d0080ca4:	8027      	strh	r7, [r4, #0]
d0080ca6:	f004 fd26 	bl	d00856f6 <strlen>
d0080caa:	1d02      	adds	r2, r0, #4
d0080cac:	4603      	mov	r3, r0
d0080cae:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080cb2:	d208      	bcs.n	d0080cc6 <emit_known_word.constprop.0+0x5c2>
d0080cb4:	2800      	cmp	r0, #0
d0080cb6:	f040 8341 	bne.w	d008133c <emit_known_word.constprop.0+0xc38>
d0080cba:	18f0      	adds	r0, r6, r3
d0080cbc:	2203      	movs	r2, #3
d0080cbe:	496e      	ldr	r1, [pc, #440]	; (d0080e78 <emit_known_word.constprop.0+0x774>)
d0080cc0:	f004 fb7c 	bl	d00853bc <memcpy>
d0080cc4:	8827      	ldrh	r7, [r4, #0]
d0080cc6:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080cca:	d238      	bcs.n	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080ccc:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0080cd0:	2301      	movs	r3, #1
d0080cd2:	2278      	movs	r2, #120	; 0x78
d0080cd4:	4867      	ldr	r0, [pc, #412]	; (d0080e74 <emit_known_word.constprop.0+0x770>)
d0080cd6:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d0080cda:	2700      	movs	r7, #0
d0080cdc:	8823      	ldrh	r3, [r4, #0]
d0080cde:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080ce2:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080ce6:	805a      	strh	r2, [r3, #2]
d0080ce8:	8823      	ldrh	r3, [r4, #0]
d0080cea:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080cee:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0080cf2:	712f      	strb	r7, [r5, #4]
d0080cf4:	8823      	ldrh	r3, [r4, #0]
d0080cf6:	3301      	adds	r3, #1
d0080cf8:	8023      	strh	r3, [r4, #0]
d0080cfa:	f004 fcfc 	bl	d00856f6 <strlen>
d0080cfe:	1d02      	adds	r2, r0, #4
d0080d00:	4603      	mov	r3, r0
d0080d02:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080d06:	d21a      	bcs.n	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080d08:	b138      	cbz	r0, d0080d1a <emit_known_word.constprop.0+0x616>
d0080d0a:	1832      	adds	r2, r6, r0
d0080d0c:	2120      	movs	r1, #32
d0080d0e:	4859      	ldr	r0, [pc, #356]	; (d0080e74 <emit_known_word.constprop.0+0x770>)
d0080d10:	54f1      	strb	r1, [r6, r3]
d0080d12:	7057      	strb	r7, [r2, #1]
d0080d14:	f004 fcef 	bl	d00856f6 <strlen>
d0080d18:	4603      	mov	r3, r0
d0080d1a:	18f0      	adds	r0, r6, r3
d0080d1c:	2203      	movs	r2, #3
d0080d1e:	4957      	ldr	r1, [pc, #348]	; (d0080e7c <emit_known_word.constprop.0+0x778>)
d0080d20:	f004 fb4c 	bl	d00853bc <memcpy>
d0080d24:	2001      	movs	r0, #1
d0080d26:	e00b      	b.n	d0080d40 <emit_known_word.constprop.0+0x63c>
d0080d28:	f818 8001 	ldrb.w	r8, [r8, r1]
d0080d2c:	f1b8 0f00 	cmp.w	r8, #0
d0080d30:	f47f ad8c 	bne.w	d008084c <emit_known_word.constprop.0+0x148>
d0080d34:	8823      	ldrh	r3, [r4, #0]
d0080d36:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080d3a:	f0c0 8309 	bcc.w	d0081350 <emit_known_word.constprop.0+0xc4c>
d0080d3e:	2001      	movs	r0, #1
d0080d40:	b003      	add	sp, #12
d0080d42:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080d46:	f818 8001 	ldrb.w	r8, [r8, r1]
d0080d4a:	f1b8 0f00 	cmp.w	r8, #0
d0080d4e:	f47f ad15 	bne.w	d008077c <emit_known_word.constprop.0+0x78>
d0080d52:	8823      	ldrh	r3, [r4, #0]
d0080d54:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080d58:	d2f1      	bcs.n	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080d5a:	4d45      	ldr	r5, [pc, #276]	; (d0080e70 <emit_known_word.constprop.0+0x76c>)
d0080d5c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080d60:	210e      	movs	r1, #14
d0080d62:	2244      	movs	r2, #68	; 0x44
d0080d64:	4e43      	ldr	r6, [pc, #268]	; (d0080e74 <emit_known_word.constprop.0+0x770>)
d0080d66:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0080d6a:	8823      	ldrh	r3, [r4, #0]
d0080d6c:	4630      	mov	r0, r6
d0080d6e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080d72:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080d76:	805a      	strh	r2, [r3, #2]
d0080d78:	8823      	ldrh	r3, [r4, #0]
d0080d7a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080d7e:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080d82:	f883 8004 	strb.w	r8, [r3, #4]
d0080d86:	8827      	ldrh	r7, [r4, #0]
d0080d88:	3701      	adds	r7, #1
d0080d8a:	b2bf      	uxth	r7, r7
d0080d8c:	8027      	strh	r7, [r4, #0]
d0080d8e:	f004 fcb2 	bl	d00856f6 <strlen>
d0080d92:	1d02      	adds	r2, r0, #4
d0080d94:	4603      	mov	r3, r0
d0080d96:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080d9a:	d208      	bcs.n	d0080dae <emit_known_word.constprop.0+0x6aa>
d0080d9c:	2800      	cmp	r0, #0
d0080d9e:	f040 8312 	bne.w	d00813c6 <emit_known_word.constprop.0+0xcc2>
d0080da2:	18f0      	adds	r0, r6, r3
d0080da4:	2203      	movs	r2, #3
d0080da6:	4934      	ldr	r1, [pc, #208]	; (d0080e78 <emit_known_word.constprop.0+0x774>)
d0080da8:	f004 fb08 	bl	d00853bc <memcpy>
d0080dac:	8827      	ldrh	r7, [r4, #0]
d0080dae:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080db2:	d2c4      	bcs.n	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080db4:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0080db8:	2307      	movs	r3, #7
d0080dba:	226e      	movs	r2, #110	; 0x6e
d0080dbc:	f04f 0800 	mov.w	r8, #0
d0080dc0:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d0080dc4:	8823      	ldrh	r3, [r4, #0]
d0080dc6:	482b      	ldr	r0, [pc, #172]	; (d0080e74 <emit_known_word.constprop.0+0x770>)
d0080dc8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080dcc:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080dd0:	805a      	strh	r2, [r3, #2]
d0080dd2:	8823      	ldrh	r3, [r4, #0]
d0080dd4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080dd8:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080ddc:	f883 8004 	strb.w	r8, [r3, #4]
d0080de0:	8827      	ldrh	r7, [r4, #0]
d0080de2:	3701      	adds	r7, #1
d0080de4:	b2bf      	uxth	r7, r7
d0080de6:	8027      	strh	r7, [r4, #0]
d0080de8:	f004 fc85 	bl	d00856f6 <strlen>
d0080dec:	1d02      	adds	r2, r0, #4
d0080dee:	4603      	mov	r3, r0
d0080df0:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080df4:	d208      	bcs.n	d0080e08 <emit_known_word.constprop.0+0x704>
d0080df6:	2800      	cmp	r0, #0
d0080df8:	f040 82db 	bne.w	d00813b2 <emit_known_word.constprop.0+0xcae>
d0080dfc:	18f0      	adds	r0, r6, r3
d0080dfe:	2203      	movs	r2, #3
d0080e00:	491f      	ldr	r1, [pc, #124]	; (d0080e80 <emit_known_word.constprop.0+0x77c>)
d0080e02:	f004 fadb 	bl	d00853bc <memcpy>
d0080e06:	8827      	ldrh	r7, [r4, #0]
d0080e08:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080e0c:	d297      	bcs.n	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080e0e:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0080e12:	231a      	movs	r3, #26
d0080e14:	2252      	movs	r2, #82	; 0x52
d0080e16:	4817      	ldr	r0, [pc, #92]	; (d0080e74 <emit_known_word.constprop.0+0x770>)
d0080e18:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d0080e1c:	2700      	movs	r7, #0
d0080e1e:	8823      	ldrh	r3, [r4, #0]
d0080e20:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080e24:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080e28:	805a      	strh	r2, [r3, #2]
d0080e2a:	8823      	ldrh	r3, [r4, #0]
d0080e2c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080e30:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0080e34:	712f      	strb	r7, [r5, #4]
d0080e36:	8823      	ldrh	r3, [r4, #0]
d0080e38:	3301      	adds	r3, #1
d0080e3a:	8023      	strh	r3, [r4, #0]
d0080e3c:	f004 fc5b 	bl	d00856f6 <strlen>
d0080e40:	1cc2      	adds	r2, r0, #3
d0080e42:	4603      	mov	r3, r0
d0080e44:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080e48:	f4bf af79 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080e4c:	b138      	cbz	r0, d0080e5e <emit_known_word.constprop.0+0x75a>
d0080e4e:	1832      	adds	r2, r6, r0
d0080e50:	2120      	movs	r1, #32
d0080e52:	4808      	ldr	r0, [pc, #32]	; (d0080e74 <emit_known_word.constprop.0+0x770>)
d0080e54:	54f1      	strb	r1, [r6, r3]
d0080e56:	7057      	strb	r7, [r2, #1]
d0080e58:	f004 fc4d 	bl	d00856f6 <strlen>
d0080e5c:	4603      	mov	r3, r0
d0080e5e:	18f0      	adds	r0, r6, r3
d0080e60:	2202      	movs	r2, #2
d0080e62:	4908      	ldr	r1, [pc, #32]	; (d0080e84 <emit_known_word.constprop.0+0x780>)
d0080e64:	f004 faaa 	bl	d00853bc <memcpy>
d0080e68:	2001      	movs	r0, #1
d0080e6a:	e769      	b.n	d0080d40 <emit_known_word.constprop.0+0x63c>
d0080e6c:	d0085cd4 	.word	0xd0085cd4
d0080e70:	d00861a8 	.word	0xd00861a8
d0080e74:	d00c8460 	.word	0xd00c8460
d0080e78:	d0085c08 	.word	0xd0085c08
d0080e7c:	d0085c0c 	.word	0xd0085c0c
d0080e80:	d0085c18 	.word	0xd0085c18
d0080e84:	d0085c1c 	.word	0xd0085c1c
d0080e88:	d0085c04 	.word	0xd0085c04
d0080e8c:	d0085c10 	.word	0xd0085c10
d0080e90:	d0085c20 	.word	0xd0085c20
d0080e94:	d0085c30 	.word	0xd0085c30
d0080e98:	d0085c38 	.word	0xd0085c38
d0080e9c:	d0085c44 	.word	0xd0085c44
d0080ea0:	d0085c4c 	.word	0xd0085c4c
d0080ea4:	d0085c58 	.word	0xd0085c58
d0080ea8:	d0085c5c 	.word	0xd0085c5c
d0080eac:	d0085c60 	.word	0xd0085c60
d0080eb0:	d0085c64 	.word	0xd0085c64
d0080eb4:	d0085c6c 	.word	0xd0085c6c
d0080eb8:	d0085c74 	.word	0xd0085c74
d0080ebc:	d0085c78 	.word	0xd0085c78
d0080ec0:	d0085c84 	.word	0xd0085c84
d0080ec4:	d0085c94 	.word	0xd0085c94
d0080ec8:	d0085ca4 	.word	0xd0085ca4
d0080ecc:	d0085cb0 	.word	0xd0085cb0
d0080ed0:	d0085cbc 	.word	0xd0085cbc
d0080ed4:	d0085cc4 	.word	0xd0085cc4
d0080ed8:	d0085ccc 	.word	0xd0085ccc
d0080edc:	f818 8001 	ldrb.w	r8, [r8, r1]
d0080ee0:	f1b8 0f00 	cmp.w	r8, #0
d0080ee4:	f47f ac64 	bne.w	d00807b0 <emit_known_word.constprop.0+0xac>
d0080ee8:	8823      	ldrh	r3, [r4, #0]
d0080eea:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080eee:	f4bf af26 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080ef2:	4d9c      	ldr	r5, [pc, #624]	; (d0081164 <emit_known_word.constprop.0+0xa60>)
d0080ef4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080ef8:	210e      	movs	r1, #14
d0080efa:	2244      	movs	r2, #68	; 0x44
d0080efc:	4e9a      	ldr	r6, [pc, #616]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d0080efe:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0080f02:	8823      	ldrh	r3, [r4, #0]
d0080f04:	4630      	mov	r0, r6
d0080f06:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080f0a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080f0e:	805a      	strh	r2, [r3, #2]
d0080f10:	8823      	ldrh	r3, [r4, #0]
d0080f12:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080f16:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080f1a:	f883 8004 	strb.w	r8, [r3, #4]
d0080f1e:	8827      	ldrh	r7, [r4, #0]
d0080f20:	3701      	adds	r7, #1
d0080f22:	b2bf      	uxth	r7, r7
d0080f24:	8027      	strh	r7, [r4, #0]
d0080f26:	f004 fbe6 	bl	d00856f6 <strlen>
d0080f2a:	1d02      	adds	r2, r0, #4
d0080f2c:	4603      	mov	r3, r0
d0080f2e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080f32:	d208      	bcs.n	d0080f46 <emit_known_word.constprop.0+0x842>
d0080f34:	2800      	cmp	r0, #0
d0080f36:	f040 8250 	bne.w	d00813da <emit_known_word.constprop.0+0xcd6>
d0080f3a:	18f0      	adds	r0, r6, r3
d0080f3c:	2203      	movs	r2, #3
d0080f3e:	498b      	ldr	r1, [pc, #556]	; (d008116c <emit_known_word.constprop.0+0xa68>)
d0080f40:	f004 fa3c 	bl	d00853bc <memcpy>
d0080f44:	8827      	ldrh	r7, [r4, #0]
d0080f46:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080f4a:	f4bf aef8 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080f4e:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0080f52:	2302      	movs	r3, #2
d0080f54:	2282      	movs	r2, #130	; 0x82
d0080f56:	f04f 0800 	mov.w	r8, #0
d0080f5a:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d0080f5e:	8823      	ldrh	r3, [r4, #0]
d0080f60:	4881      	ldr	r0, [pc, #516]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d0080f62:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080f66:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080f6a:	805a      	strh	r2, [r3, #2]
d0080f6c:	8823      	ldrh	r3, [r4, #0]
d0080f6e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080f72:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080f76:	f883 8004 	strb.w	r8, [r3, #4]
d0080f7a:	8827      	ldrh	r7, [r4, #0]
d0080f7c:	3701      	adds	r7, #1
d0080f7e:	b2bf      	uxth	r7, r7
d0080f80:	8027      	strh	r7, [r4, #0]
d0080f82:	f004 fbb8 	bl	d00856f6 <strlen>
d0080f86:	1d02      	adds	r2, r0, #4
d0080f88:	4603      	mov	r3, r0
d0080f8a:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080f8e:	d208      	bcs.n	d0080fa2 <emit_known_word.constprop.0+0x89e>
d0080f90:	2800      	cmp	r0, #0
d0080f92:	f040 822c 	bne.w	d00813ee <emit_known_word.constprop.0+0xcea>
d0080f96:	18f0      	adds	r0, r6, r3
d0080f98:	2203      	movs	r2, #3
d0080f9a:	4975      	ldr	r1, [pc, #468]	; (d0081170 <emit_known_word.constprop.0+0xa6c>)
d0080f9c:	f004 fa0e 	bl	d00853bc <memcpy>
d0080fa0:	8827      	ldrh	r7, [r4, #0]
d0080fa2:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080fa6:	f4bf aeca 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080faa:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0080fae:	231c      	movs	r3, #28
d0080fb0:	223a      	movs	r2, #58	; 0x3a
d0080fb2:	486d      	ldr	r0, [pc, #436]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d0080fb4:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d0080fb8:	2700      	movs	r7, #0
d0080fba:	8823      	ldrh	r3, [r4, #0]
d0080fbc:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080fc0:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0080fc4:	805a      	strh	r2, [r3, #2]
d0080fc6:	8823      	ldrh	r3, [r4, #0]
d0080fc8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080fcc:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0080fd0:	712f      	strb	r7, [r5, #4]
d0080fd2:	8823      	ldrh	r3, [r4, #0]
d0080fd4:	3301      	adds	r3, #1
d0080fd6:	8023      	strh	r3, [r4, #0]
d0080fd8:	f004 fb8d 	bl	d00856f6 <strlen>
d0080fdc:	1cc2      	adds	r2, r0, #3
d0080fde:	4603      	mov	r3, r0
d0080fe0:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080fe4:	f4bf aeab 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0080fe8:	b138      	cbz	r0, d0080ffa <emit_known_word.constprop.0+0x8f6>
d0080fea:	1832      	adds	r2, r6, r0
d0080fec:	2120      	movs	r1, #32
d0080fee:	485e      	ldr	r0, [pc, #376]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d0080ff0:	54f1      	strb	r1, [r6, r3]
d0080ff2:	7057      	strb	r7, [r2, #1]
d0080ff4:	f004 fb7f 	bl	d00856f6 <strlen>
d0080ff8:	4603      	mov	r3, r0
d0080ffa:	18f0      	adds	r0, r6, r3
d0080ffc:	2202      	movs	r2, #2
d0080ffe:	495d      	ldr	r1, [pc, #372]	; (d0081174 <emit_known_word.constprop.0+0xa70>)
d0081000:	f004 f9dc 	bl	d00853bc <memcpy>
d0081004:	2001      	movs	r0, #1
d0081006:	e69b      	b.n	d0080d40 <emit_known_word.constprop.0+0x63c>
d0081008:	f818 3001 	ldrb.w	r3, [r8, r1]
d008100c:	2b00      	cmp	r3, #0
d008100e:	f47f abe9 	bne.w	d00807e4 <emit_known_word.constprop.0+0xe0>
d0081012:	8823      	ldrh	r3, [r4, #0]
d0081014:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081018:	f4bf ae91 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d008101c:	4d51      	ldr	r5, [pc, #324]	; (d0081164 <emit_known_word.constprop.0+0xa60>)
d008101e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081022:	210e      	movs	r1, #14
d0081024:	2244      	movs	r2, #68	; 0x44
d0081026:	f04f 0800 	mov.w	r8, #0
d008102a:	4e4f      	ldr	r6, [pc, #316]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d008102c:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081030:	8823      	ldrh	r3, [r4, #0]
d0081032:	4630      	mov	r0, r6
d0081034:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081038:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008103c:	805a      	strh	r2, [r3, #2]
d008103e:	8823      	ldrh	r3, [r4, #0]
d0081040:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081044:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081048:	f883 8004 	strb.w	r8, [r3, #4]
d008104c:	8827      	ldrh	r7, [r4, #0]
d008104e:	3701      	adds	r7, #1
d0081050:	b2bf      	uxth	r7, r7
d0081052:	8027      	strh	r7, [r4, #0]
d0081054:	f004 fb4f 	bl	d00856f6 <strlen>
d0081058:	1d02      	adds	r2, r0, #4
d008105a:	4603      	mov	r3, r0
d008105c:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081060:	d20f      	bcs.n	d0081082 <emit_known_word.constprop.0+0x97e>
d0081062:	b140      	cbz	r0, d0081076 <emit_known_word.constprop.0+0x972>
d0081064:	1832      	adds	r2, r6, r0
d0081066:	2120      	movs	r1, #32
d0081068:	4630      	mov	r0, r6
d008106a:	54f1      	strb	r1, [r6, r3]
d008106c:	f882 8001 	strb.w	r8, [r2, #1]
d0081070:	f004 fb41 	bl	d00856f6 <strlen>
d0081074:	4603      	mov	r3, r0
d0081076:	18f0      	adds	r0, r6, r3
d0081078:	2203      	movs	r2, #3
d008107a:	493c      	ldr	r1, [pc, #240]	; (d008116c <emit_known_word.constprop.0+0xa68>)
d008107c:	f004 f99e 	bl	d00853bc <memcpy>
d0081080:	8827      	ldrh	r7, [r4, #0]
d0081082:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0081086:	f4bf ae5a 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d008108a:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d008108e:	2305      	movs	r3, #5
d0081090:	227d      	movs	r2, #125	; 0x7d
d0081092:	f04f 0800 	mov.w	r8, #0
d0081096:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d008109a:	8823      	ldrh	r3, [r4, #0]
d008109c:	4832      	ldr	r0, [pc, #200]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d008109e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00810a2:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00810a6:	805a      	strh	r2, [r3, #2]
d00810a8:	8823      	ldrh	r3, [r4, #0]
d00810aa:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00810ae:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00810b2:	f883 8004 	strb.w	r8, [r3, #4]
d00810b6:	8827      	ldrh	r7, [r4, #0]
d00810b8:	3701      	adds	r7, #1
d00810ba:	b2bf      	uxth	r7, r7
d00810bc:	8027      	strh	r7, [r4, #0]
d00810be:	f004 fb1a 	bl	d00856f6 <strlen>
d00810c2:	1d02      	adds	r2, r0, #4
d00810c4:	4603      	mov	r3, r0
d00810c6:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00810ca:	d20f      	bcs.n	d00810ec <emit_known_word.constprop.0+0x9e8>
d00810cc:	b140      	cbz	r0, d00810e0 <emit_known_word.constprop.0+0x9dc>
d00810ce:	1832      	adds	r2, r6, r0
d00810d0:	2120      	movs	r1, #32
d00810d2:	4825      	ldr	r0, [pc, #148]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d00810d4:	54f1      	strb	r1, [r6, r3]
d00810d6:	f882 8001 	strb.w	r8, [r2, #1]
d00810da:	f004 fb0c 	bl	d00856f6 <strlen>
d00810de:	4603      	mov	r3, r0
d00810e0:	18f0      	adds	r0, r6, r3
d00810e2:	2203      	movs	r2, #3
d00810e4:	4924      	ldr	r1, [pc, #144]	; (d0081178 <emit_known_word.constprop.0+0xa74>)
d00810e6:	f004 f969 	bl	d00853bc <memcpy>
d00810ea:	8827      	ldrh	r7, [r4, #0]
d00810ec:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d00810f0:	f4bf ae25 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00810f4:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d00810f8:	2319      	movs	r3, #25
d00810fa:	2258      	movs	r2, #88	; 0x58
d00810fc:	481a      	ldr	r0, [pc, #104]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d00810fe:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d0081102:	2700      	movs	r7, #0
d0081104:	8823      	ldrh	r3, [r4, #0]
d0081106:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008110a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008110e:	805a      	strh	r2, [r3, #2]
d0081110:	8823      	ldrh	r3, [r4, #0]
d0081112:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081116:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d008111a:	712f      	strb	r7, [r5, #4]
d008111c:	8823      	ldrh	r3, [r4, #0]
d008111e:	3301      	adds	r3, #1
d0081120:	8023      	strh	r3, [r4, #0]
d0081122:	f004 fae8 	bl	d00856f6 <strlen>
d0081126:	1cc2      	adds	r2, r0, #3
d0081128:	4603      	mov	r3, r0
d008112a:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008112e:	f4bf ae06 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081132:	b138      	cbz	r0, d0081144 <emit_known_word.constprop.0+0xa40>
d0081134:	1832      	adds	r2, r6, r0
d0081136:	2120      	movs	r1, #32
d0081138:	480b      	ldr	r0, [pc, #44]	; (d0081168 <emit_known_word.constprop.0+0xa64>)
d008113a:	54f1      	strb	r1, [r6, r3]
d008113c:	7057      	strb	r7, [r2, #1]
d008113e:	f004 fada 	bl	d00856f6 <strlen>
d0081142:	4603      	mov	r3, r0
d0081144:	18f0      	adds	r0, r6, r3
d0081146:	2202      	movs	r2, #2
d0081148:	490c      	ldr	r1, [pc, #48]	; (d008117c <emit_known_word.constprop.0+0xa78>)
d008114a:	f004 f937 	bl	d00853bc <memcpy>
d008114e:	2001      	movs	r0, #1
d0081150:	b003      	add	sp, #12
d0081152:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081156:	f818 3001 	ldrb.w	r3, [r8, r1]
d008115a:	2b00      	cmp	r3, #0
d008115c:	f43f af59 	beq.w	d0081012 <emit_known_word.constprop.0+0x90e>
d0081160:	f7ff bb5a 	b.w	d0080818 <emit_known_word.constprop.0+0x114>
d0081164:	d00861a8 	.word	0xd00861a8
d0081168:	d00c8460 	.word	0xd00c8460
d008116c:	d0085c08 	.word	0xd0085c08
d0081170:	d0085c28 	.word	0xd0085c28
d0081174:	d0085c2c 	.word	0xd0085c2c
d0081178:	d0085c00 	.word	0xd0085c00
d008117c:	d0085c40 	.word	0xd0085c40
d0081180:	f818 8001 	ldrb.w	r8, [r8, r1]
d0081184:	f1b8 0f00 	cmp.w	r8, #0
d0081188:	f47f ab7a 	bne.w	d0080880 <emit_known_word.constprop.0+0x17c>
d008118c:	8823      	ldrh	r3, [r4, #0]
d008118e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081192:	f4bf add4 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081196:	4da4      	ldr	r5, [pc, #656]	; (d0081428 <emit_known_word.constprop.0+0xd24>)
d0081198:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008119c:	f04f 0920 	mov.w	r9, #32
d00811a0:	2246      	movs	r2, #70	; 0x46
d00811a2:	4ea2      	ldr	r6, [pc, #648]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d00811a4:	f805 9013 	strb.w	r9, [r5, r3, lsl #1]
d00811a8:	8823      	ldrh	r3, [r4, #0]
d00811aa:	4630      	mov	r0, r6
d00811ac:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00811b0:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00811b4:	805a      	strh	r2, [r3, #2]
d00811b6:	8823      	ldrh	r3, [r4, #0]
d00811b8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00811bc:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00811c0:	f883 8004 	strb.w	r8, [r3, #4]
d00811c4:	8827      	ldrh	r7, [r4, #0]
d00811c6:	3701      	adds	r7, #1
d00811c8:	b2bf      	uxth	r7, r7
d00811ca:	8027      	strh	r7, [r4, #0]
d00811cc:	f004 fa93 	bl	d00856f6 <strlen>
d00811d0:	1cc3      	adds	r3, r0, #3
d00811d2:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00811d6:	d20e      	bcs.n	d00811f6 <emit_known_word.constprop.0+0xaf2>
d00811d8:	b138      	cbz	r0, d00811ea <emit_known_word.constprop.0+0xae6>
d00811da:	1833      	adds	r3, r6, r0
d00811dc:	f806 9000 	strb.w	r9, [r6, r0]
d00811e0:	4630      	mov	r0, r6
d00811e2:	f883 8001 	strb.w	r8, [r3, #1]
d00811e6:	f004 fa86 	bl	d00856f6 <strlen>
d00811ea:	4430      	add	r0, r6
d00811ec:	2202      	movs	r2, #2
d00811ee:	4990      	ldr	r1, [pc, #576]	; (d0081430 <emit_known_word.constprop.0+0xd2c>)
d00811f0:	f004 f8e4 	bl	d00853bc <memcpy>
d00811f4:	8827      	ldrh	r7, [r4, #0]
d00811f6:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d00811fa:	f4bf ada0 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00811fe:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0081202:	2306      	movs	r3, #6
d0081204:	2287      	movs	r2, #135	; 0x87
d0081206:	4889      	ldr	r0, [pc, #548]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d0081208:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d008120c:	2700      	movs	r7, #0
d008120e:	8823      	ldrh	r3, [r4, #0]
d0081210:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081214:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081218:	805a      	strh	r2, [r3, #2]
d008121a:	8823      	ldrh	r3, [r4, #0]
d008121c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081220:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0081224:	712f      	strb	r7, [r5, #4]
d0081226:	8823      	ldrh	r3, [r4, #0]
d0081228:	3301      	adds	r3, #1
d008122a:	8023      	strh	r3, [r4, #0]
d008122c:	f004 fa63 	bl	d00856f6 <strlen>
d0081230:	1d02      	adds	r2, r0, #4
d0081232:	4603      	mov	r3, r0
d0081234:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081238:	f4bf ad81 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d008123c:	b138      	cbz	r0, d008124e <emit_known_word.constprop.0+0xb4a>
d008123e:	1832      	adds	r2, r6, r0
d0081240:	2120      	movs	r1, #32
d0081242:	487a      	ldr	r0, [pc, #488]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d0081244:	54f1      	strb	r1, [r6, r3]
d0081246:	7057      	strb	r7, [r2, #1]
d0081248:	f004 fa55 	bl	d00856f6 <strlen>
d008124c:	4603      	mov	r3, r0
d008124e:	18f0      	adds	r0, r6, r3
d0081250:	2203      	movs	r2, #3
d0081252:	4978      	ldr	r1, [pc, #480]	; (d0081434 <emit_known_word.constprop.0+0xd30>)
d0081254:	f004 f8b2 	bl	d00853bc <memcpy>
d0081258:	2001      	movs	r0, #1
d008125a:	e571      	b.n	d0080d40 <emit_known_word.constprop.0+0x63c>
d008125c:	f818 3001 	ldrb.w	r3, [r8, r1]
d0081260:	2b00      	cmp	r3, #0
d0081262:	f47f ab27 	bne.w	d00808b4 <emit_known_word.constprop.0+0x1b0>
d0081266:	8823      	ldrh	r3, [r4, #0]
d0081268:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008126c:	f4bf ad67 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081270:	4d6d      	ldr	r5, [pc, #436]	; (d0081428 <emit_known_word.constprop.0+0xd24>)
d0081272:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081276:	211c      	movs	r1, #28
d0081278:	223a      	movs	r2, #58	; 0x3a
d008127a:	f04f 0800 	mov.w	r8, #0
d008127e:	4e6b      	ldr	r6, [pc, #428]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d0081280:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081284:	8823      	ldrh	r3, [r4, #0]
d0081286:	4630      	mov	r0, r6
d0081288:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008128c:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081290:	805a      	strh	r2, [r3, #2]
d0081292:	8823      	ldrh	r3, [r4, #0]
d0081294:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081298:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008129c:	f883 8004 	strb.w	r8, [r3, #4]
d00812a0:	8827      	ldrh	r7, [r4, #0]
d00812a2:	3701      	adds	r7, #1
d00812a4:	b2bf      	uxth	r7, r7
d00812a6:	8027      	strh	r7, [r4, #0]
d00812a8:	f004 fa25 	bl	d00856f6 <strlen>
d00812ac:	1cc2      	adds	r2, r0, #3
d00812ae:	4603      	mov	r3, r0
d00812b0:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00812b4:	d20f      	bcs.n	d00812d6 <emit_known_word.constprop.0+0xbd2>
d00812b6:	b140      	cbz	r0, d00812ca <emit_known_word.constprop.0+0xbc6>
d00812b8:	1832      	adds	r2, r6, r0
d00812ba:	2120      	movs	r1, #32
d00812bc:	4630      	mov	r0, r6
d00812be:	54f1      	strb	r1, [r6, r3]
d00812c0:	f882 8001 	strb.w	r8, [r2, #1]
d00812c4:	f004 fa17 	bl	d00856f6 <strlen>
d00812c8:	4603      	mov	r3, r0
d00812ca:	18f0      	adds	r0, r6, r3
d00812cc:	2202      	movs	r2, #2
d00812ce:	495a      	ldr	r1, [pc, #360]	; (d0081438 <emit_known_word.constprop.0+0xd34>)
d00812d0:	f004 f874 	bl	d00853bc <memcpy>
d00812d4:	8827      	ldrh	r7, [r4, #0]
d00812d6:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d00812da:	f4bf ad30 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00812de:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d00812e2:	230a      	movs	r3, #10
d00812e4:	2287      	movs	r2, #135	; 0x87
d00812e6:	4851      	ldr	r0, [pc, #324]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d00812e8:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d00812ec:	2700      	movs	r7, #0
d00812ee:	8823      	ldrh	r3, [r4, #0]
d00812f0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00812f4:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00812f8:	805a      	strh	r2, [r3, #2]
d00812fa:	8823      	ldrh	r3, [r4, #0]
d00812fc:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081300:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0081304:	712f      	strb	r7, [r5, #4]
d0081306:	8823      	ldrh	r3, [r4, #0]
d0081308:	3301      	adds	r3, #1
d008130a:	8023      	strh	r3, [r4, #0]
d008130c:	f004 f9f3 	bl	d00856f6 <strlen>
d0081310:	1d02      	adds	r2, r0, #4
d0081312:	4603      	mov	r3, r0
d0081314:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081318:	f4bf ad11 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d008131c:	b138      	cbz	r0, d008132e <emit_known_word.constprop.0+0xc2a>
d008131e:	1832      	adds	r2, r6, r0
d0081320:	2120      	movs	r1, #32
d0081322:	4842      	ldr	r0, [pc, #264]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d0081324:	54f1      	strb	r1, [r6, r3]
d0081326:	7057      	strb	r7, [r2, #1]
d0081328:	f004 f9e5 	bl	d00856f6 <strlen>
d008132c:	4603      	mov	r3, r0
d008132e:	18f0      	adds	r0, r6, r3
d0081330:	2203      	movs	r2, #3
d0081332:	4942      	ldr	r1, [pc, #264]	; (d008143c <emit_known_word.constprop.0+0xd38>)
d0081334:	f004 f842 	bl	d00853bc <memcpy>
d0081338:	2001      	movs	r0, #1
d008133a:	e501      	b.n	d0080d40 <emit_known_word.constprop.0+0x63c>
d008133c:	1832      	adds	r2, r6, r0
d008133e:	2120      	movs	r1, #32
d0081340:	4630      	mov	r0, r6
d0081342:	54f1      	strb	r1, [r6, r3]
d0081344:	f882 8001 	strb.w	r8, [r2, #1]
d0081348:	f004 f9d5 	bl	d00856f6 <strlen>
d008134c:	4603      	mov	r3, r0
d008134e:	e4b4      	b.n	d0080cba <emit_known_word.constprop.0+0x5b6>
d0081350:	4d35      	ldr	r5, [pc, #212]	; (d0081428 <emit_known_word.constprop.0+0xd24>)
d0081352:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081356:	f04f 0920 	mov.w	r9, #32
d008135a:	2246      	movs	r2, #70	; 0x46
d008135c:	4e33      	ldr	r6, [pc, #204]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d008135e:	f805 9013 	strb.w	r9, [r5, r3, lsl #1]
d0081362:	8823      	ldrh	r3, [r4, #0]
d0081364:	4630      	mov	r0, r6
d0081366:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008136a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008136e:	805a      	strh	r2, [r3, #2]
d0081370:	8823      	ldrh	r3, [r4, #0]
d0081372:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081376:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008137a:	f883 8004 	strb.w	r8, [r3, #4]
d008137e:	8827      	ldrh	r7, [r4, #0]
d0081380:	3701      	adds	r7, #1
d0081382:	b2bf      	uxth	r7, r7
d0081384:	8027      	strh	r7, [r4, #0]
d0081386:	f004 f9b6 	bl	d00856f6 <strlen>
d008138a:	1cc3      	adds	r3, r0, #3
d008138c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081390:	d2a1      	bcs.n	d00812d6 <emit_known_word.constprop.0+0xbd2>
d0081392:	b138      	cbz	r0, d00813a4 <emit_known_word.constprop.0+0xca0>
d0081394:	1833      	adds	r3, r6, r0
d0081396:	f806 9000 	strb.w	r9, [r6, r0]
d008139a:	4630      	mov	r0, r6
d008139c:	f883 8001 	strb.w	r8, [r3, #1]
d00813a0:	f004 f9a9 	bl	d00856f6 <strlen>
d00813a4:	4430      	add	r0, r6
d00813a6:	2202      	movs	r2, #2
d00813a8:	4921      	ldr	r1, [pc, #132]	; (d0081430 <emit_known_word.constprop.0+0xd2c>)
d00813aa:	f004 f807 	bl	d00853bc <memcpy>
d00813ae:	8827      	ldrh	r7, [r4, #0]
d00813b0:	e791      	b.n	d00812d6 <emit_known_word.constprop.0+0xbd2>
d00813b2:	1832      	adds	r2, r6, r0
d00813b4:	2120      	movs	r1, #32
d00813b6:	481d      	ldr	r0, [pc, #116]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d00813b8:	54f1      	strb	r1, [r6, r3]
d00813ba:	f882 8001 	strb.w	r8, [r2, #1]
d00813be:	f004 f99a 	bl	d00856f6 <strlen>
d00813c2:	4603      	mov	r3, r0
d00813c4:	e51a      	b.n	d0080dfc <emit_known_word.constprop.0+0x6f8>
d00813c6:	1832      	adds	r2, r6, r0
d00813c8:	2120      	movs	r1, #32
d00813ca:	4630      	mov	r0, r6
d00813cc:	54f1      	strb	r1, [r6, r3]
d00813ce:	f882 8001 	strb.w	r8, [r2, #1]
d00813d2:	f004 f990 	bl	d00856f6 <strlen>
d00813d6:	4603      	mov	r3, r0
d00813d8:	e4e3      	b.n	d0080da2 <emit_known_word.constprop.0+0x69e>
d00813da:	1832      	adds	r2, r6, r0
d00813dc:	2120      	movs	r1, #32
d00813de:	4630      	mov	r0, r6
d00813e0:	54f1      	strb	r1, [r6, r3]
d00813e2:	f882 8001 	strb.w	r8, [r2, #1]
d00813e6:	f004 f986 	bl	d00856f6 <strlen>
d00813ea:	4603      	mov	r3, r0
d00813ec:	e5a5      	b.n	d0080f3a <emit_known_word.constprop.0+0x836>
d00813ee:	1832      	adds	r2, r6, r0
d00813f0:	2120      	movs	r1, #32
d00813f2:	480e      	ldr	r0, [pc, #56]	; (d008142c <emit_known_word.constprop.0+0xd28>)
d00813f4:	54f1      	strb	r1, [r6, r3]
d00813f6:	f882 8001 	strb.w	r8, [r2, #1]
d00813fa:	f004 f97c 	bl	d00856f6 <strlen>
d00813fe:	4603      	mov	r3, r0
d0081400:	e5c9      	b.n	d0080f96 <emit_known_word.constprop.0+0x892>
d0081402:	f818 3001 	ldrb.w	r3, [r8, r1]
d0081406:	2b00      	cmp	r3, #0
d0081408:	f43f af2d 	beq.w	d0081266 <emit_known_word.constprop.0+0xb62>
d008140c:	f7ff ba6c 	b.w	d00808e8 <emit_known_word.constprop.0+0x1e4>
d0081410:	4608      	mov	r0, r1
d0081412:	4770      	bx	lr
d0081414:	4299      	cmp	r1, r3
d0081416:	f47f aa89 	bne.w	d008092c <emit_known_word.constprop.0+0x228>
d008141a:	f81b 3001 	ldrb.w	r3, [fp, r1]
d008141e:	2b00      	cmp	r3, #0
d0081420:	f43f af21 	beq.w	d0081266 <emit_known_word.constprop.0+0xb62>
d0081424:	f7ff ba82 	b.w	d008092c <emit_known_word.constprop.0+0x228>
d0081428:	d00861a8 	.word	0xd00861a8
d008142c:	d00c8460 	.word	0xd00c8460
d0081430:	d0085c48 	.word	0xd0085c48
d0081434:	d0085c54 	.word	0xd0085c54
d0081438:	d0085c2c 	.word	0xd0085c2c
d008143c:	d0085bfc 	.word	0xd0085bfc
d0081440:	4299      	cmp	r1, r3
d0081442:	f47f aa93 	bne.w	d008096c <emit_known_word.constprop.0+0x268>
d0081446:	f81b 8001 	ldrb.w	r8, [fp, r1]
d008144a:	f1b8 0f00 	cmp.w	r8, #0
d008144e:	f47f aa8d 	bne.w	d008096c <emit_known_word.constprop.0+0x268>
d0081452:	8823      	ldrh	r3, [r4, #0]
d0081454:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081458:	f4bf ac71 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d008145c:	4d8f      	ldr	r5, [pc, #572]	; (d008169c <emit_known_word.constprop.0+0xf98>)
d008145e:	2101      	movs	r1, #1
d0081460:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081464:	2278      	movs	r2, #120	; 0x78
d0081466:	4e8e      	ldr	r6, [pc, #568]	; (d00816a0 <emit_known_word.constprop.0+0xf9c>)
d0081468:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d008146c:	8823      	ldrh	r3, [r4, #0]
d008146e:	4630      	mov	r0, r6
d0081470:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081474:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081478:	805a      	strh	r2, [r3, #2]
d008147a:	8823      	ldrh	r3, [r4, #0]
d008147c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081480:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081484:	f883 8004 	strb.w	r8, [r3, #4]
d0081488:	8827      	ldrh	r7, [r4, #0]
d008148a:	440f      	add	r7, r1
d008148c:	b2bf      	uxth	r7, r7
d008148e:	8027      	strh	r7, [r4, #0]
d0081490:	f004 f931 	bl	d00856f6 <strlen>
d0081494:	1d02      	adds	r2, r0, #4
d0081496:	4603      	mov	r3, r0
d0081498:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008149c:	d20f      	bcs.n	d00814be <emit_known_word.constprop.0+0xdba>
d008149e:	b140      	cbz	r0, d00814b2 <emit_known_word.constprop.0+0xdae>
d00814a0:	1832      	adds	r2, r6, r0
d00814a2:	2120      	movs	r1, #32
d00814a4:	4630      	mov	r0, r6
d00814a6:	54f1      	strb	r1, [r6, r3]
d00814a8:	f882 8001 	strb.w	r8, [r2, #1]
d00814ac:	f004 f923 	bl	d00856f6 <strlen>
d00814b0:	4603      	mov	r3, r0
d00814b2:	18f0      	adds	r0, r6, r3
d00814b4:	2203      	movs	r2, #3
d00814b6:	497b      	ldr	r1, [pc, #492]	; (d00816a4 <emit_known_word.constprop.0+0xfa0>)
d00814b8:	f003 ff80 	bl	d00853bc <memcpy>
d00814bc:	8827      	ldrh	r7, [r4, #0]
d00814be:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d00814c2:	f4bf ac3c 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00814c6:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d00814ca:	231e      	movs	r3, #30
d00814cc:	2248      	movs	r2, #72	; 0x48
d00814ce:	4874      	ldr	r0, [pc, #464]	; (d00816a0 <emit_known_word.constprop.0+0xf9c>)
d00814d0:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d00814d4:	2700      	movs	r7, #0
d00814d6:	8823      	ldrh	r3, [r4, #0]
d00814d8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00814dc:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00814e0:	805a      	strh	r2, [r3, #2]
d00814e2:	8823      	ldrh	r3, [r4, #0]
d00814e4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00814e8:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d00814ec:	712f      	strb	r7, [r5, #4]
d00814ee:	8823      	ldrh	r3, [r4, #0]
d00814f0:	3301      	adds	r3, #1
d00814f2:	8023      	strh	r3, [r4, #0]
d00814f4:	f004 f8ff 	bl	d00856f6 <strlen>
d00814f8:	1cc2      	adds	r2, r0, #3
d00814fa:	4603      	mov	r3, r0
d00814fc:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081500:	f4bf ac1d 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081504:	b138      	cbz	r0, d0081516 <emit_known_word.constprop.0+0xe12>
d0081506:	1832      	adds	r2, r6, r0
d0081508:	2120      	movs	r1, #32
d008150a:	4865      	ldr	r0, [pc, #404]	; (d00816a0 <emit_known_word.constprop.0+0xf9c>)
d008150c:	54f1      	strb	r1, [r6, r3]
d008150e:	7057      	strb	r7, [r2, #1]
d0081510:	f004 f8f1 	bl	d00856f6 <strlen>
d0081514:	4603      	mov	r3, r0
d0081516:	18f0      	adds	r0, r6, r3
d0081518:	2202      	movs	r2, #2
d008151a:	4963      	ldr	r1, [pc, #396]	; (d00816a8 <emit_known_word.constprop.0+0xfa4>)
d008151c:	f003 ff4e 	bl	d00853bc <memcpy>
d0081520:	2001      	movs	r0, #1
d0081522:	e40d      	b.n	d0080d40 <emit_known_word.constprop.0+0x63c>
d0081524:	4299      	cmp	r1, r3
d0081526:	f47f aa41 	bne.w	d00809ac <emit_known_word.constprop.0+0x2a8>
d008152a:	f81b 8001 	ldrb.w	r8, [fp, r1]
d008152e:	f1b8 0f00 	cmp.w	r8, #0
d0081532:	f47f aa3b 	bne.w	d00809ac <emit_known_word.constprop.0+0x2a8>
d0081536:	8823      	ldrh	r3, [r4, #0]
d0081538:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008153c:	f4bf abff 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081540:	4d56      	ldr	r5, [pc, #344]	; (d008169c <emit_known_word.constprop.0+0xf98>)
d0081542:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081546:	2107      	movs	r1, #7
d0081548:	226e      	movs	r2, #110	; 0x6e
d008154a:	4e55      	ldr	r6, [pc, #340]	; (d00816a0 <emit_known_word.constprop.0+0xf9c>)
d008154c:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081550:	8823      	ldrh	r3, [r4, #0]
d0081552:	4630      	mov	r0, r6
d0081554:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081558:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008155c:	805a      	strh	r2, [r3, #2]
d008155e:	8823      	ldrh	r3, [r4, #0]
d0081560:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081564:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081568:	f883 8004 	strb.w	r8, [r3, #4]
d008156c:	8827      	ldrh	r7, [r4, #0]
d008156e:	3701      	adds	r7, #1
d0081570:	b2bf      	uxth	r7, r7
d0081572:	8027      	strh	r7, [r4, #0]
d0081574:	f004 f8bf 	bl	d00856f6 <strlen>
d0081578:	1d02      	adds	r2, r0, #4
d008157a:	4603      	mov	r3, r0
d008157c:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081580:	d20f      	bcs.n	d00815a2 <emit_known_word.constprop.0+0xe9e>
d0081582:	b140      	cbz	r0, d0081596 <emit_known_word.constprop.0+0xe92>
d0081584:	1832      	adds	r2, r6, r0
d0081586:	2120      	movs	r1, #32
d0081588:	4630      	mov	r0, r6
d008158a:	54f1      	strb	r1, [r6, r3]
d008158c:	f882 8001 	strb.w	r8, [r2, #1]
d0081590:	f004 f8b1 	bl	d00856f6 <strlen>
d0081594:	4603      	mov	r3, r0
d0081596:	18f0      	adds	r0, r6, r3
d0081598:	2203      	movs	r2, #3
d008159a:	4944      	ldr	r1, [pc, #272]	; (d00816ac <emit_known_word.constprop.0+0xfa8>)
d008159c:	f003 ff0e 	bl	d00853bc <memcpy>
d00815a0:	8827      	ldrh	r7, [r4, #0]
d00815a2:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d00815a6:	f4bf abca 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00815aa:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d00815ae:	2321      	movs	r3, #33	; 0x21
d00815b0:	2252      	movs	r2, #82	; 0x52
d00815b2:	483b      	ldr	r0, [pc, #236]	; (d00816a0 <emit_known_word.constprop.0+0xf9c>)
d00815b4:	f805 3017 	strb.w	r3, [r5, r7, lsl #1]
d00815b8:	2700      	movs	r7, #0
d00815ba:	8823      	ldrh	r3, [r4, #0]
d00815bc:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00815c0:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00815c4:	805a      	strh	r2, [r3, #2]
d00815c6:	8823      	ldrh	r3, [r4, #0]
d00815c8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00815cc:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d00815d0:	712f      	strb	r7, [r5, #4]
d00815d2:	8823      	ldrh	r3, [r4, #0]
d00815d4:	3301      	adds	r3, #1
d00815d6:	8023      	strh	r3, [r4, #0]
d00815d8:	f004 f88d 	bl	d00856f6 <strlen>
d00815dc:	1cc2      	adds	r2, r0, #3
d00815de:	4603      	mov	r3, r0
d00815e0:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00815e4:	f4bf abab 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00815e8:	b138      	cbz	r0, d00815fa <emit_known_word.constprop.0+0xef6>
d00815ea:	1832      	adds	r2, r6, r0
d00815ec:	2120      	movs	r1, #32
d00815ee:	482c      	ldr	r0, [pc, #176]	; (d00816a0 <emit_known_word.constprop.0+0xf9c>)
d00815f0:	54f1      	strb	r1, [r6, r3]
d00815f2:	7057      	strb	r7, [r2, #1]
d00815f4:	f004 f87f 	bl	d00856f6 <strlen>
d00815f8:	4603      	mov	r3, r0
d00815fa:	18f0      	adds	r0, r6, r3
d00815fc:	2202      	movs	r2, #2
d00815fe:	492c      	ldr	r1, [pc, #176]	; (d00816b0 <emit_known_word.constprop.0+0xfac>)
d0081600:	f003 fedc 	bl	d00853bc <memcpy>
d0081604:	2001      	movs	r0, #1
d0081606:	f7ff bb9b 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d008160a:	4299      	cmp	r1, r3
d008160c:	f47f a9ee 	bne.w	d00809ec <emit_known_word.constprop.0+0x2e8>
d0081610:	f81b 8001 	ldrb.w	r8, [fp, r1]
d0081614:	f1b8 0f00 	cmp.w	r8, #0
d0081618:	f47f a9e8 	bne.w	d00809ec <emit_known_word.constprop.0+0x2e8>
d008161c:	8823      	ldrh	r3, [r4, #0]
d008161e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081622:	f4bf ab8c 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081626:	4d1d      	ldr	r5, [pc, #116]	; (d008169c <emit_known_word.constprop.0+0xf98>)
d0081628:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008162c:	2103      	movs	r1, #3
d008162e:	228c      	movs	r2, #140	; 0x8c
d0081630:	4e1b      	ldr	r6, [pc, #108]	; (d00816a0 <emit_known_word.constprop.0+0xf9c>)
d0081632:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081636:	8823      	ldrh	r3, [r4, #0]
d0081638:	4630      	mov	r0, r6
d008163a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008163e:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081642:	805a      	strh	r2, [r3, #2]
d0081644:	8823      	ldrh	r3, [r4, #0]
d0081646:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008164a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008164e:	f883 8004 	strb.w	r8, [r3, #4]
d0081652:	8827      	ldrh	r7, [r4, #0]
d0081654:	3701      	adds	r7, #1
d0081656:	b2bf      	uxth	r7, r7
d0081658:	8027      	strh	r7, [r4, #0]
d008165a:	f004 f84c 	bl	d00856f6 <strlen>
d008165e:	1d02      	adds	r2, r0, #4
d0081660:	4603      	mov	r3, r0
d0081662:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081666:	f4bf ad41 	bcs.w	d00810ec <emit_known_word.constprop.0+0x9e8>
d008166a:	b140      	cbz	r0, d008167e <emit_known_word.constprop.0+0xf7a>
d008166c:	1832      	adds	r2, r6, r0
d008166e:	2120      	movs	r1, #32
d0081670:	4630      	mov	r0, r6
d0081672:	54f1      	strb	r1, [r6, r3]
d0081674:	f882 8001 	strb.w	r8, [r2, #1]
d0081678:	f004 f83d 	bl	d00856f6 <strlen>
d008167c:	4603      	mov	r3, r0
d008167e:	18f0      	adds	r0, r6, r3
d0081680:	2203      	movs	r2, #3
d0081682:	490c      	ldr	r1, [pc, #48]	; (d00816b4 <emit_known_word.constprop.0+0xfb0>)
d0081684:	f003 fe9a 	bl	d00853bc <memcpy>
d0081688:	8827      	ldrh	r7, [r4, #0]
d008168a:	e52f      	b.n	d00810ec <emit_known_word.constprop.0+0x9e8>
d008168c:	4620      	mov	r0, r4
d008168e:	9101      	str	r1, [sp, #4]
d0081690:	f7fe fdea 	bl	d0080268 <emit_ay.constprop.0>
d0081694:	9901      	ldr	r1, [sp, #4]
d0081696:	4608      	mov	r0, r1
d0081698:	f7ff bb52 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d008169c:	d00861a8 	.word	0xd00861a8
d00816a0:	d00c8460 	.word	0xd00c8460
d00816a4:	d0085c0c 	.word	0xd0085c0c
d00816a8:	d0085c68 	.word	0xd0085c68
d00816ac:	d0085c18 	.word	0xd0085c18
d00816b0:	d0085c70 	.word	0xd0085c70
d00816b4:	d0085bf0 	.word	0xd0085bf0
d00816b8:	4299      	cmp	r1, r3
d00816ba:	f47f a9d0 	bne.w	d0080a5e <emit_known_word.constprop.0+0x35a>
d00816be:	f81b 7001 	ldrb.w	r7, [fp, r1]
d00816c2:	2f00      	cmp	r7, #0
d00816c4:	f47f a9cb 	bne.w	d0080a5e <emit_known_word.constprop.0+0x35a>
d00816c8:	8823      	ldrh	r3, [r4, #0]
d00816ca:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00816ce:	f4bf ab36 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00816d2:	4dac      	ldr	r5, [pc, #688]	; (d0081984 <emit_known_word.constprop.0+0x1280>)
d00816d4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00816d8:	2102      	movs	r1, #2
d00816da:	2282      	movs	r2, #130	; 0x82
d00816dc:	4eaa      	ldr	r6, [pc, #680]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d00816de:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d00816e2:	8823      	ldrh	r3, [r4, #0]
d00816e4:	4630      	mov	r0, r6
d00816e6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00816ea:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00816ee:	805a      	strh	r2, [r3, #2]
d00816f0:	8823      	ldrh	r3, [r4, #0]
d00816f2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00816f6:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00816fa:	711f      	strb	r7, [r3, #4]
d00816fc:	8823      	ldrh	r3, [r4, #0]
d00816fe:	3301      	adds	r3, #1
d0081700:	8023      	strh	r3, [r4, #0]
d0081702:	f003 fff8 	bl	d00856f6 <strlen>
d0081706:	1d03      	adds	r3, r0, #4
d0081708:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008170c:	d20c      	bcs.n	d0081728 <emit_known_word.constprop.0+0x1024>
d008170e:	b118      	cbz	r0, d0081718 <emit_known_word.constprop.0+0x1014>
d0081710:	2220      	movs	r2, #32
d0081712:	1833      	adds	r3, r6, r0
d0081714:	5432      	strb	r2, [r6, r0]
d0081716:	705f      	strb	r7, [r3, #1]
d0081718:	489b      	ldr	r0, [pc, #620]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d008171a:	f003 ffec 	bl	d00856f6 <strlen>
d008171e:	2203      	movs	r2, #3
d0081720:	499a      	ldr	r1, [pc, #616]	; (d008198c <emit_known_word.constprop.0+0x1288>)
d0081722:	4430      	add	r0, r6
d0081724:	f003 fe4a 	bl	d00853bc <memcpy>
d0081728:	8823      	ldrh	r3, [r4, #0]
d008172a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008172e:	f4bf ab06 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081732:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081736:	2116      	movs	r1, #22
d0081738:	224b      	movs	r2, #75	; 0x4b
d008173a:	2700      	movs	r7, #0
d008173c:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081740:	8823      	ldrh	r3, [r4, #0]
d0081742:	4891      	ldr	r0, [pc, #580]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d0081744:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081748:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008174c:	805a      	strh	r2, [r3, #2]
d008174e:	8823      	ldrh	r3, [r4, #0]
d0081750:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081754:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081758:	711f      	strb	r7, [r3, #4]
d008175a:	8823      	ldrh	r3, [r4, #0]
d008175c:	3301      	adds	r3, #1
d008175e:	8023      	strh	r3, [r4, #0]
d0081760:	f003 ffc9 	bl	d00856f6 <strlen>
d0081764:	1cc3      	adds	r3, r0, #3
d0081766:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008176a:	d20c      	bcs.n	d0081786 <emit_known_word.constprop.0+0x1082>
d008176c:	b118      	cbz	r0, d0081776 <emit_known_word.constprop.0+0x1072>
d008176e:	2220      	movs	r2, #32
d0081770:	1833      	adds	r3, r6, r0
d0081772:	5432      	strb	r2, [r6, r0]
d0081774:	705f      	strb	r7, [r3, #1]
d0081776:	4884      	ldr	r0, [pc, #528]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d0081778:	f003 ffbd 	bl	d00856f6 <strlen>
d008177c:	2202      	movs	r2, #2
d008177e:	4984      	ldr	r1, [pc, #528]	; (d0081990 <emit_known_word.constprop.0+0x128c>)
d0081780:	4430      	add	r0, r6
d0081782:	f003 fe1b 	bl	d00853bc <memcpy>
d0081786:	8823      	ldrh	r3, [r4, #0]
d0081788:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008178c:	f4bf aad7 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081790:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081794:	210d      	movs	r1, #13
d0081796:	223a      	movs	r2, #58	; 0x3a
d0081798:	2700      	movs	r7, #0
d008179a:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d008179e:	8823      	ldrh	r3, [r4, #0]
d00817a0:	4879      	ldr	r0, [pc, #484]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d00817a2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00817a6:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00817aa:	805a      	strh	r2, [r3, #2]
d00817ac:	8823      	ldrh	r3, [r4, #0]
d00817ae:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00817b2:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d00817b6:	712f      	strb	r7, [r5, #4]
d00817b8:	8823      	ldrh	r3, [r4, #0]
d00817ba:	3301      	adds	r3, #1
d00817bc:	8023      	strh	r3, [r4, #0]
d00817be:	f003 ff9a 	bl	d00856f6 <strlen>
d00817c2:	1cc3      	adds	r3, r0, #3
d00817c4:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00817c8:	f4bf aab9 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00817cc:	b118      	cbz	r0, d00817d6 <emit_known_word.constprop.0+0x10d2>
d00817ce:	2220      	movs	r2, #32
d00817d0:	1833      	adds	r3, r6, r0
d00817d2:	5432      	strb	r2, [r6, r0]
d00817d4:	705f      	strb	r7, [r3, #1]
d00817d6:	486c      	ldr	r0, [pc, #432]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d00817d8:	f003 ff8d 	bl	d00856f6 <strlen>
d00817dc:	2202      	movs	r2, #2
d00817de:	496d      	ldr	r1, [pc, #436]	; (d0081994 <emit_known_word.constprop.0+0x1290>)
d00817e0:	4430      	add	r0, r6
d00817e2:	f003 fdeb 	bl	d00853bc <memcpy>
d00817e6:	2001      	movs	r0, #1
d00817e8:	f7ff baaa 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d00817ec:	8823      	ldrh	r3, [r4, #0]
d00817ee:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00817f2:	f4bf aaa4 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00817f6:	4a63      	ldr	r2, [pc, #396]	; (d0081984 <emit_known_word.constprop.0+0x1280>)
d00817f8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00817fc:	2778      	movs	r7, #120	; 0x78
d00817fe:	2500      	movs	r5, #0
d0081800:	f802 1013 	strb.w	r1, [r2, r3, lsl #1]
d0081804:	8823      	ldrh	r3, [r4, #0]
d0081806:	4e60      	ldr	r6, [pc, #384]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d0081808:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008180c:	4630      	mov	r0, r6
d008180e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0081812:	805f      	strh	r7, [r3, #2]
d0081814:	8823      	ldrh	r3, [r4, #0]
d0081816:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008181a:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d008181e:	7115      	strb	r5, [r2, #4]
d0081820:	8823      	ldrh	r3, [r4, #0]
d0081822:	3301      	adds	r3, #1
d0081824:	8023      	strh	r3, [r4, #0]
d0081826:	f003 ff66 	bl	d00856f6 <strlen>
d008182a:	1d02      	adds	r2, r0, #4
d008182c:	4603      	mov	r3, r0
d008182e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081832:	f4bf aa84 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081836:	2800      	cmp	r0, #0
d0081838:	f43f aa6f 	beq.w	d0080d1a <emit_known_word.constprop.0+0x616>
d008183c:	1832      	adds	r2, r6, r0
d008183e:	2120      	movs	r1, #32
d0081840:	4630      	mov	r0, r6
d0081842:	54f1      	strb	r1, [r6, r3]
d0081844:	7055      	strb	r5, [r2, #1]
d0081846:	f003 ff56 	bl	d00856f6 <strlen>
d008184a:	4603      	mov	r3, r0
d008184c:	f7ff ba65 	b.w	d0080d1a <emit_known_word.constprop.0+0x616>
d0081850:	4299      	cmp	r1, r3
d0081852:	f47f a924 	bne.w	d0080a9e <emit_known_word.constprop.0+0x39a>
d0081856:	f81b 7001 	ldrb.w	r7, [fp, r1]
d008185a:	2f00      	cmp	r7, #0
d008185c:	f47f a91f 	bne.w	d0080a9e <emit_known_word.constprop.0+0x39a>
d0081860:	8823      	ldrh	r3, [r4, #0]
d0081862:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081866:	f080 8087 	bcs.w	d0081978 <emit_known_word.constprop.0+0x1274>
d008186a:	4d46      	ldr	r5, [pc, #280]	; (d0081984 <emit_known_word.constprop.0+0x1280>)
d008186c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081870:	2111      	movs	r1, #17
d0081872:	2237      	movs	r2, #55	; 0x37
d0081874:	4e44      	ldr	r6, [pc, #272]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d0081876:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d008187a:	8823      	ldrh	r3, [r4, #0]
d008187c:	4630      	mov	r0, r6
d008187e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081882:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081886:	805a      	strh	r2, [r3, #2]
d0081888:	8823      	ldrh	r3, [r4, #0]
d008188a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008188e:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081892:	711f      	strb	r7, [r3, #4]
d0081894:	8823      	ldrh	r3, [r4, #0]
d0081896:	3301      	adds	r3, #1
d0081898:	8023      	strh	r3, [r4, #0]
d008189a:	f003 ff2c 	bl	d00856f6 <strlen>
d008189e:	1cc3      	adds	r3, r0, #3
d00818a0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00818a4:	d20c      	bcs.n	d00818c0 <emit_known_word.constprop.0+0x11bc>
d00818a6:	b118      	cbz	r0, d00818b0 <emit_known_word.constprop.0+0x11ac>
d00818a8:	2220      	movs	r2, #32
d00818aa:	1833      	adds	r3, r6, r0
d00818ac:	5432      	strb	r2, [r6, r0]
d00818ae:	705f      	strb	r7, [r3, #1]
d00818b0:	4835      	ldr	r0, [pc, #212]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d00818b2:	f003 ff20 	bl	d00856f6 <strlen>
d00818b6:	2202      	movs	r2, #2
d00818b8:	4937      	ldr	r1, [pc, #220]	; (d0081998 <emit_known_word.constprop.0+0x1294>)
d00818ba:	4430      	add	r0, r6
d00818bc:	f003 fd7e 	bl	d00853bc <memcpy>
d00818c0:	8823      	ldrh	r3, [r4, #0]
d00818c2:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00818c6:	d257      	bcs.n	d0081978 <emit_known_word.constprop.0+0x1274>
d00818c8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00818cc:	2105      	movs	r1, #5
d00818ce:	227d      	movs	r2, #125	; 0x7d
d00818d0:	2700      	movs	r7, #0
d00818d2:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d00818d6:	8823      	ldrh	r3, [r4, #0]
d00818d8:	482b      	ldr	r0, [pc, #172]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d00818da:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00818de:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00818e2:	805a      	strh	r2, [r3, #2]
d00818e4:	8823      	ldrh	r3, [r4, #0]
d00818e6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00818ea:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00818ee:	711f      	strb	r7, [r3, #4]
d00818f0:	8823      	ldrh	r3, [r4, #0]
d00818f2:	3301      	adds	r3, #1
d00818f4:	8023      	strh	r3, [r4, #0]
d00818f6:	f003 fefe 	bl	d00856f6 <strlen>
d00818fa:	1d03      	adds	r3, r0, #4
d00818fc:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081900:	d20c      	bcs.n	d008191c <emit_known_word.constprop.0+0x1218>
d0081902:	b118      	cbz	r0, d008190c <emit_known_word.constprop.0+0x1208>
d0081904:	2220      	movs	r2, #32
d0081906:	1833      	adds	r3, r6, r0
d0081908:	5432      	strb	r2, [r6, r0]
d008190a:	705f      	strb	r7, [r3, #1]
d008190c:	481e      	ldr	r0, [pc, #120]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d008190e:	f003 fef2 	bl	d00856f6 <strlen>
d0081912:	2203      	movs	r2, #3
d0081914:	4921      	ldr	r1, [pc, #132]	; (d008199c <emit_known_word.constprop.0+0x1298>)
d0081916:	4430      	add	r0, r6
d0081918:	f003 fd50 	bl	d00853bc <memcpy>
d008191c:	8823      	ldrh	r3, [r4, #0]
d008191e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081922:	d229      	bcs.n	d0081978 <emit_known_word.constprop.0+0x1274>
d0081924:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081928:	2114      	movs	r1, #20
d008192a:	2252      	movs	r2, #82	; 0x52
d008192c:	2700      	movs	r7, #0
d008192e:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081932:	8823      	ldrh	r3, [r4, #0]
d0081934:	4814      	ldr	r0, [pc, #80]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d0081936:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008193a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008193e:	805a      	strh	r2, [r3, #2]
d0081940:	8823      	ldrh	r3, [r4, #0]
d0081942:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081946:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d008194a:	712f      	strb	r7, [r5, #4]
d008194c:	8823      	ldrh	r3, [r4, #0]
d008194e:	3301      	adds	r3, #1
d0081950:	8023      	strh	r3, [r4, #0]
d0081952:	f003 fed0 	bl	d00856f6 <strlen>
d0081956:	1cc3      	adds	r3, r0, #3
d0081958:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008195c:	d20c      	bcs.n	d0081978 <emit_known_word.constprop.0+0x1274>
d008195e:	b118      	cbz	r0, d0081968 <emit_known_word.constprop.0+0x1264>
d0081960:	2220      	movs	r2, #32
d0081962:	1833      	adds	r3, r6, r0
d0081964:	5432      	strb	r2, [r6, r0]
d0081966:	705f      	strb	r7, [r3, #1]
d0081968:	4807      	ldr	r0, [pc, #28]	; (d0081988 <emit_known_word.constprop.0+0x1284>)
d008196a:	f003 fec4 	bl	d00856f6 <strlen>
d008196e:	2202      	movs	r2, #2
d0081970:	490b      	ldr	r1, [pc, #44]	; (d00819a0 <emit_known_word.constprop.0+0x129c>)
d0081972:	4430      	add	r0, r6
d0081974:	f003 fd22 	bl	d00853bc <memcpy>
d0081978:	4620      	mov	r0, r4
d008197a:	f7fe fceb 	bl	d0080354 <emit_ow.constprop.0>
d008197e:	2001      	movs	r0, #1
d0081980:	f7ff b9de 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d0081984:	d00861a8 	.word	0xd00861a8
d0081988:	d00c8460 	.word	0xd00c8460
d008198c:	d0085c28 	.word	0xd0085c28
d0081990:	d0085c7c 	.word	0xd0085c7c
d0081994:	d0085c80 	.word	0xd0085c80
d0081998:	d0085c8c 	.word	0xd0085c8c
d008199c:	d0085c00 	.word	0xd0085c00
d00819a0:	d0085c90 	.word	0xd0085c90
d00819a4:	4299      	cmp	r1, r3
d00819a6:	f47f a89a 	bne.w	d0080ade <emit_known_word.constprop.0+0x3da>
d00819aa:	f81b 7001 	ldrb.w	r7, [fp, r1]
d00819ae:	2f00      	cmp	r7, #0
d00819b0:	f47f a895 	bne.w	d0080ade <emit_known_word.constprop.0+0x3da>
d00819b4:	8823      	ldrh	r3, [r4, #0]
d00819b6:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00819ba:	f4bf a9c0 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00819be:	4d75      	ldr	r5, [pc, #468]	; (d0081b94 <emit_known_word.constprop.0+0x1490>)
d00819c0:	2101      	movs	r1, #1
d00819c2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00819c6:	2278      	movs	r2, #120	; 0x78
d00819c8:	4e73      	ldr	r6, [pc, #460]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d00819ca:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d00819ce:	8823      	ldrh	r3, [r4, #0]
d00819d0:	4630      	mov	r0, r6
d00819d2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00819d6:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00819da:	805a      	strh	r2, [r3, #2]
d00819dc:	8823      	ldrh	r3, [r4, #0]
d00819de:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00819e2:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00819e6:	711f      	strb	r7, [r3, #4]
d00819e8:	8823      	ldrh	r3, [r4, #0]
d00819ea:	440b      	add	r3, r1
d00819ec:	8023      	strh	r3, [r4, #0]
d00819ee:	f003 fe82 	bl	d00856f6 <strlen>
d00819f2:	1d03      	adds	r3, r0, #4
d00819f4:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00819f8:	d20c      	bcs.n	d0081a14 <emit_known_word.constprop.0+0x1310>
d00819fa:	b118      	cbz	r0, d0081a04 <emit_known_word.constprop.0+0x1300>
d00819fc:	2220      	movs	r2, #32
d00819fe:	1833      	adds	r3, r6, r0
d0081a00:	5432      	strb	r2, [r6, r0]
d0081a02:	705f      	strb	r7, [r3, #1]
d0081a04:	4864      	ldr	r0, [pc, #400]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081a06:	f003 fe76 	bl	d00856f6 <strlen>
d0081a0a:	2203      	movs	r2, #3
d0081a0c:	4963      	ldr	r1, [pc, #396]	; (d0081b9c <emit_known_word.constprop.0+0x1498>)
d0081a0e:	4430      	add	r0, r6
d0081a10:	f003 fcd4 	bl	d00853bc <memcpy>
d0081a14:	8823      	ldrh	r3, [r4, #0]
d0081a16:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081a1a:	f4bf a990 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081a1e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081a22:	2115      	movs	r1, #21
d0081a24:	2252      	movs	r2, #82	; 0x52
d0081a26:	2700      	movs	r7, #0
d0081a28:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081a2c:	8823      	ldrh	r3, [r4, #0]
d0081a2e:	485a      	ldr	r0, [pc, #360]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081a30:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081a34:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081a38:	805a      	strh	r2, [r3, #2]
d0081a3a:	8823      	ldrh	r3, [r4, #0]
d0081a3c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081a40:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081a44:	711f      	strb	r7, [r3, #4]
d0081a46:	8823      	ldrh	r3, [r4, #0]
d0081a48:	3301      	adds	r3, #1
d0081a4a:	8023      	strh	r3, [r4, #0]
d0081a4c:	f003 fe53 	bl	d00856f6 <strlen>
d0081a50:	1cc3      	adds	r3, r0, #3
d0081a52:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081a56:	d20c      	bcs.n	d0081a72 <emit_known_word.constprop.0+0x136e>
d0081a58:	b118      	cbz	r0, d0081a62 <emit_known_word.constprop.0+0x135e>
d0081a5a:	2220      	movs	r2, #32
d0081a5c:	1833      	adds	r3, r6, r0
d0081a5e:	5432      	strb	r2, [r6, r0]
d0081a60:	705f      	strb	r7, [r3, #1]
d0081a62:	484d      	ldr	r0, [pc, #308]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081a64:	f003 fe47 	bl	d00856f6 <strlen>
d0081a68:	2202      	movs	r2, #2
d0081a6a:	494d      	ldr	r1, [pc, #308]	; (d0081ba0 <emit_known_word.constprop.0+0x149c>)
d0081a6c:	4430      	add	r0, r6
d0081a6e:	f003 fca5 	bl	d00853bc <memcpy>
d0081a72:	8823      	ldrh	r3, [r4, #0]
d0081a74:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081a78:	f4bf a961 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081a7c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081a80:	2108      	movs	r1, #8
d0081a82:	2282      	movs	r2, #130	; 0x82
d0081a84:	2700      	movs	r7, #0
d0081a86:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081a8a:	8823      	ldrh	r3, [r4, #0]
d0081a8c:	4842      	ldr	r0, [pc, #264]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081a8e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081a92:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081a96:	805a      	strh	r2, [r3, #2]
d0081a98:	8823      	ldrh	r3, [r4, #0]
d0081a9a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081a9e:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081aa2:	711f      	strb	r7, [r3, #4]
d0081aa4:	8823      	ldrh	r3, [r4, #0]
d0081aa6:	3301      	adds	r3, #1
d0081aa8:	8023      	strh	r3, [r4, #0]
d0081aaa:	f003 fe24 	bl	d00856f6 <strlen>
d0081aae:	1d03      	adds	r3, r0, #4
d0081ab0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081ab4:	d20c      	bcs.n	d0081ad0 <emit_known_word.constprop.0+0x13cc>
d0081ab6:	b118      	cbz	r0, d0081ac0 <emit_known_word.constprop.0+0x13bc>
d0081ab8:	2220      	movs	r2, #32
d0081aba:	1833      	adds	r3, r6, r0
d0081abc:	5432      	strb	r2, [r6, r0]
d0081abe:	705f      	strb	r7, [r3, #1]
d0081ac0:	4835      	ldr	r0, [pc, #212]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081ac2:	f003 fe18 	bl	d00856f6 <strlen>
d0081ac6:	2203      	movs	r2, #3
d0081ac8:	4936      	ldr	r1, [pc, #216]	; (d0081ba4 <emit_known_word.constprop.0+0x14a0>)
d0081aca:	4430      	add	r0, r6
d0081acc:	f003 fc76 	bl	d00853bc <memcpy>
d0081ad0:	8823      	ldrh	r3, [r4, #0]
d0081ad2:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081ad6:	f4bf a932 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081ada:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081ade:	2110      	movs	r1, #16
d0081ae0:	2246      	movs	r2, #70	; 0x46
d0081ae2:	2700      	movs	r7, #0
d0081ae4:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081ae8:	8823      	ldrh	r3, [r4, #0]
d0081aea:	482b      	ldr	r0, [pc, #172]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081aec:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081af0:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081af4:	805a      	strh	r2, [r3, #2]
d0081af6:	8823      	ldrh	r3, [r4, #0]
d0081af8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081afc:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081b00:	711f      	strb	r7, [r3, #4]
d0081b02:	8823      	ldrh	r3, [r4, #0]
d0081b04:	3301      	adds	r3, #1
d0081b06:	8023      	strh	r3, [r4, #0]
d0081b08:	f003 fdf5 	bl	d00856f6 <strlen>
d0081b0c:	1cc3      	adds	r3, r0, #3
d0081b0e:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081b12:	d20c      	bcs.n	d0081b2e <emit_known_word.constprop.0+0x142a>
d0081b14:	b118      	cbz	r0, d0081b1e <emit_known_word.constprop.0+0x141a>
d0081b16:	2220      	movs	r2, #32
d0081b18:	1833      	adds	r3, r6, r0
d0081b1a:	5432      	strb	r2, [r6, r0]
d0081b1c:	705f      	strb	r7, [r3, #1]
d0081b1e:	481e      	ldr	r0, [pc, #120]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081b20:	f003 fde9 	bl	d00856f6 <strlen>
d0081b24:	2202      	movs	r2, #2
d0081b26:	4920      	ldr	r1, [pc, #128]	; (d0081ba8 <emit_known_word.constprop.0+0x14a4>)
d0081b28:	4430      	add	r0, r6
d0081b2a:	f003 fc47 	bl	d00853bc <memcpy>
d0081b2e:	8823      	ldrh	r3, [r4, #0]
d0081b30:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081b34:	f4bf a903 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081b38:	2101      	movs	r1, #1
d0081b3a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081b3e:	2278      	movs	r2, #120	; 0x78
d0081b40:	2700      	movs	r7, #0
d0081b42:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081b46:	8823      	ldrh	r3, [r4, #0]
d0081b48:	4813      	ldr	r0, [pc, #76]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081b4a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081b4e:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081b52:	805a      	strh	r2, [r3, #2]
d0081b54:	8823      	ldrh	r3, [r4, #0]
d0081b56:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081b5a:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0081b5e:	712f      	strb	r7, [r5, #4]
d0081b60:	8823      	ldrh	r3, [r4, #0]
d0081b62:	440b      	add	r3, r1
d0081b64:	8023      	strh	r3, [r4, #0]
d0081b66:	f003 fdc6 	bl	d00856f6 <strlen>
d0081b6a:	1d03      	adds	r3, r0, #4
d0081b6c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081b70:	f4bf a8e5 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081b74:	b118      	cbz	r0, d0081b7e <emit_known_word.constprop.0+0x147a>
d0081b76:	2220      	movs	r2, #32
d0081b78:	1833      	adds	r3, r6, r0
d0081b7a:	5432      	strb	r2, [r6, r0]
d0081b7c:	705f      	strb	r7, [r3, #1]
d0081b7e:	4806      	ldr	r0, [pc, #24]	; (d0081b98 <emit_known_word.constprop.0+0x1494>)
d0081b80:	f003 fdb9 	bl	d00856f6 <strlen>
d0081b84:	2203      	movs	r2, #3
d0081b86:	4905      	ldr	r1, [pc, #20]	; (d0081b9c <emit_known_word.constprop.0+0x1498>)
d0081b88:	4430      	add	r0, r6
d0081b8a:	f003 fc17 	bl	d00853bc <memcpy>
d0081b8e:	2001      	movs	r0, #1
d0081b90:	f7ff b8d6 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d0081b94:	d00861a8 	.word	0xd00861a8
d0081b98:	d00c8460 	.word	0xd00c8460
d0081b9c:	d0085c0c 	.word	0xd0085c0c
d0081ba0:	d0085c9c 	.word	0xd0085c9c
d0081ba4:	d0085bf4 	.word	0xd0085bf4
d0081ba8:	d0085ca0 	.word	0xd0085ca0
d0081bac:	4299      	cmp	r1, r3
d0081bae:	f47e afb6 	bne.w	d0080b1e <emit_known_word.constprop.0+0x41a>
d0081bb2:	f81b 7001 	ldrb.w	r7, [fp, r1]
d0081bb6:	2f00      	cmp	r7, #0
d0081bb8:	f47e afb1 	bne.w	d0080b1e <emit_known_word.constprop.0+0x41a>
d0081bbc:	8823      	ldrh	r3, [r4, #0]
d0081bbe:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081bc2:	d27a      	bcs.n	d0081cba <emit_known_word.constprop.0+0x15b6>
d0081bc4:	4d6c      	ldr	r5, [pc, #432]	; (d0081d78 <emit_known_word.constprop.0+0x1674>)
d0081bc6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081bca:	2116      	movs	r1, #22
d0081bcc:	224b      	movs	r2, #75	; 0x4b
d0081bce:	4e6b      	ldr	r6, [pc, #428]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081bd0:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081bd4:	8823      	ldrh	r3, [r4, #0]
d0081bd6:	4630      	mov	r0, r6
d0081bd8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081bdc:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081be0:	805a      	strh	r2, [r3, #2]
d0081be2:	8823      	ldrh	r3, [r4, #0]
d0081be4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081be8:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081bec:	711f      	strb	r7, [r3, #4]
d0081bee:	8823      	ldrh	r3, [r4, #0]
d0081bf0:	3301      	adds	r3, #1
d0081bf2:	8023      	strh	r3, [r4, #0]
d0081bf4:	f003 fd7f 	bl	d00856f6 <strlen>
d0081bf8:	1cc3      	adds	r3, r0, #3
d0081bfa:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081bfe:	d208      	bcs.n	d0081c12 <emit_known_word.constprop.0+0x150e>
d0081c00:	b118      	cbz	r0, d0081c0a <emit_known_word.constprop.0+0x1506>
d0081c02:	2220      	movs	r2, #32
d0081c04:	1833      	adds	r3, r6, r0
d0081c06:	5432      	strb	r2, [r6, r0]
d0081c08:	705f      	strb	r7, [r3, #1]
d0081c0a:	495d      	ldr	r1, [pc, #372]	; (d0081d80 <emit_known_word.constprop.0+0x167c>)
d0081c0c:	485b      	ldr	r0, [pc, #364]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081c0e:	f003 fd63 	bl	d00856d8 <strcat>
d0081c12:	8823      	ldrh	r3, [r4, #0]
d0081c14:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081c18:	d24f      	bcs.n	d0081cba <emit_known_word.constprop.0+0x15b6>
d0081c1a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081c1e:	2102      	movs	r1, #2
d0081c20:	2282      	movs	r2, #130	; 0x82
d0081c22:	2700      	movs	r7, #0
d0081c24:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081c28:	8823      	ldrh	r3, [r4, #0]
d0081c2a:	4854      	ldr	r0, [pc, #336]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081c2c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081c30:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081c34:	805a      	strh	r2, [r3, #2]
d0081c36:	8823      	ldrh	r3, [r4, #0]
d0081c38:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081c3c:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081c40:	711f      	strb	r7, [r3, #4]
d0081c42:	8823      	ldrh	r3, [r4, #0]
d0081c44:	3301      	adds	r3, #1
d0081c46:	8023      	strh	r3, [r4, #0]
d0081c48:	f003 fd55 	bl	d00856f6 <strlen>
d0081c4c:	1d03      	adds	r3, r0, #4
d0081c4e:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081c52:	d208      	bcs.n	d0081c66 <emit_known_word.constprop.0+0x1562>
d0081c54:	b118      	cbz	r0, d0081c5e <emit_known_word.constprop.0+0x155a>
d0081c56:	2220      	movs	r2, #32
d0081c58:	1833      	adds	r3, r6, r0
d0081c5a:	5432      	strb	r2, [r6, r0]
d0081c5c:	705f      	strb	r7, [r3, #1]
d0081c5e:	4949      	ldr	r1, [pc, #292]	; (d0081d84 <emit_known_word.constprop.0+0x1680>)
d0081c60:	4846      	ldr	r0, [pc, #280]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081c62:	f003 fd39 	bl	d00856d8 <strcat>
d0081c66:	8823      	ldrh	r3, [r4, #0]
d0081c68:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081c6c:	d225      	bcs.n	d0081cba <emit_known_word.constprop.0+0x15b6>
d0081c6e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081c72:	2119      	movs	r1, #25
d0081c74:	2258      	movs	r2, #88	; 0x58
d0081c76:	2700      	movs	r7, #0
d0081c78:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081c7c:	8823      	ldrh	r3, [r4, #0]
d0081c7e:	483f      	ldr	r0, [pc, #252]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081c80:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081c84:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081c88:	805a      	strh	r2, [r3, #2]
d0081c8a:	8823      	ldrh	r3, [r4, #0]
d0081c8c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081c90:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0081c94:	712f      	strb	r7, [r5, #4]
d0081c96:	8823      	ldrh	r3, [r4, #0]
d0081c98:	3301      	adds	r3, #1
d0081c9a:	8023      	strh	r3, [r4, #0]
d0081c9c:	f003 fd2b 	bl	d00856f6 <strlen>
d0081ca0:	1cc3      	adds	r3, r0, #3
d0081ca2:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081ca6:	d208      	bcs.n	d0081cba <emit_known_word.constprop.0+0x15b6>
d0081ca8:	b118      	cbz	r0, d0081cb2 <emit_known_word.constprop.0+0x15ae>
d0081caa:	2220      	movs	r2, #32
d0081cac:	1833      	adds	r3, r6, r0
d0081cae:	5432      	strb	r2, [r6, r0]
d0081cb0:	705f      	strb	r7, [r3, #1]
d0081cb2:	4935      	ldr	r1, [pc, #212]	; (d0081d88 <emit_known_word.constprop.0+0x1684>)
d0081cb4:	4831      	ldr	r0, [pc, #196]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081cb6:	f003 fd0f 	bl	d00856d8 <strcat>
d0081cba:	4620      	mov	r0, r4
d0081cbc:	f7fe fbc0 	bl	d0080440 <emit_ey.constprop.0>
d0081cc0:	8823      	ldrh	r3, [r4, #0]
d0081cc2:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081cc6:	f4bf a83a 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081cca:	4d2b      	ldr	r5, [pc, #172]	; (d0081d78 <emit_known_word.constprop.0+0x1674>)
d0081ccc:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081cd0:	211c      	movs	r1, #28
d0081cd2:	223a      	movs	r2, #58	; 0x3a
d0081cd4:	2700      	movs	r7, #0
d0081cd6:	4e29      	ldr	r6, [pc, #164]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081cd8:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081cdc:	8823      	ldrh	r3, [r4, #0]
d0081cde:	4630      	mov	r0, r6
d0081ce0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081ce4:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081ce8:	805a      	strh	r2, [r3, #2]
d0081cea:	8823      	ldrh	r3, [r4, #0]
d0081cec:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081cf0:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081cf4:	711f      	strb	r7, [r3, #4]
d0081cf6:	8823      	ldrh	r3, [r4, #0]
d0081cf8:	3301      	adds	r3, #1
d0081cfa:	8023      	strh	r3, [r4, #0]
d0081cfc:	f003 fcfb 	bl	d00856f6 <strlen>
d0081d00:	1cc3      	adds	r3, r0, #3
d0081d02:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081d06:	d208      	bcs.n	d0081d1a <emit_known_word.constprop.0+0x1616>
d0081d08:	b118      	cbz	r0, d0081d12 <emit_known_word.constprop.0+0x160e>
d0081d0a:	2220      	movs	r2, #32
d0081d0c:	1833      	adds	r3, r6, r0
d0081d0e:	5432      	strb	r2, [r6, r0]
d0081d10:	705f      	strb	r7, [r3, #1]
d0081d12:	491e      	ldr	r1, [pc, #120]	; (d0081d8c <emit_known_word.constprop.0+0x1688>)
d0081d14:	4819      	ldr	r0, [pc, #100]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081d16:	f003 fcdf 	bl	d00856d8 <strcat>
d0081d1a:	8823      	ldrh	r3, [r4, #0]
d0081d1c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081d20:	f4bf a80d 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081d24:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081d28:	2106      	movs	r1, #6
d0081d2a:	2287      	movs	r2, #135	; 0x87
d0081d2c:	2700      	movs	r7, #0
d0081d2e:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081d32:	8823      	ldrh	r3, [r4, #0]
d0081d34:	4811      	ldr	r0, [pc, #68]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081d36:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081d3a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081d3e:	805a      	strh	r2, [r3, #2]
d0081d40:	8823      	ldrh	r3, [r4, #0]
d0081d42:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081d46:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0081d4a:	712f      	strb	r7, [r5, #4]
d0081d4c:	8823      	ldrh	r3, [r4, #0]
d0081d4e:	3301      	adds	r3, #1
d0081d50:	8023      	strh	r3, [r4, #0]
d0081d52:	f003 fcd0 	bl	d00856f6 <strlen>
d0081d56:	1d03      	adds	r3, r0, #4
d0081d58:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081d5c:	f4be afef 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081d60:	b118      	cbz	r0, d0081d6a <emit_known_word.constprop.0+0x1666>
d0081d62:	2220      	movs	r2, #32
d0081d64:	1833      	adds	r3, r6, r0
d0081d66:	5432      	strb	r2, [r6, r0]
d0081d68:	705f      	strb	r7, [r3, #1]
d0081d6a:	4909      	ldr	r1, [pc, #36]	; (d0081d90 <emit_known_word.constprop.0+0x168c>)
d0081d6c:	4803      	ldr	r0, [pc, #12]	; (d0081d7c <emit_known_word.constprop.0+0x1678>)
d0081d6e:	f003 fcb3 	bl	d00856d8 <strcat>
d0081d72:	2001      	movs	r0, #1
d0081d74:	f7fe bfe4 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d0081d78:	d00861a8 	.word	0xd00861a8
d0081d7c:	d00c8460 	.word	0xd00c8460
d0081d80:	d0085c7c 	.word	0xd0085c7c
d0081d84:	d0085c28 	.word	0xd0085c28
d0081d88:	d0085c40 	.word	0xd0085c40
d0081d8c:	d0085c2c 	.word	0xd0085c2c
d0081d90:	d0085c54 	.word	0xd0085c54
d0081d94:	4299      	cmp	r1, r3
d0081d96:	f47e aee2 	bne.w	d0080b5e <emit_known_word.constprop.0+0x45a>
d0081d9a:	f81b 7001 	ldrb.w	r7, [fp, r1]
d0081d9e:	2f00      	cmp	r7, #0
d0081da0:	f47e aedd 	bne.w	d0080b5e <emit_known_word.constprop.0+0x45a>
d0081da4:	8823      	ldrh	r3, [r4, #0]
d0081da6:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081daa:	f4be afc8 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081dae:	4d6b      	ldr	r5, [pc, #428]	; (d0081f5c <emit_known_word.constprop.0+0x1858>)
d0081db0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081db4:	2105      	movs	r1, #5
d0081db6:	227d      	movs	r2, #125	; 0x7d
d0081db8:	4e69      	ldr	r6, [pc, #420]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081dba:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081dbe:	8823      	ldrh	r3, [r4, #0]
d0081dc0:	4630      	mov	r0, r6
d0081dc2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081dc6:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081dca:	805a      	strh	r2, [r3, #2]
d0081dcc:	8823      	ldrh	r3, [r4, #0]
d0081dce:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081dd2:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081dd6:	711f      	strb	r7, [r3, #4]
d0081dd8:	8823      	ldrh	r3, [r4, #0]
d0081dda:	3301      	adds	r3, #1
d0081ddc:	8023      	strh	r3, [r4, #0]
d0081dde:	f003 fc8a 	bl	d00856f6 <strlen>
d0081de2:	1d03      	adds	r3, r0, #4
d0081de4:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081de8:	d208      	bcs.n	d0081dfc <emit_known_word.constprop.0+0x16f8>
d0081dea:	b118      	cbz	r0, d0081df4 <emit_known_word.constprop.0+0x16f0>
d0081dec:	2220      	movs	r2, #32
d0081dee:	1833      	adds	r3, r6, r0
d0081df0:	5432      	strb	r2, [r6, r0]
d0081df2:	705f      	strb	r7, [r3, #1]
d0081df4:	495b      	ldr	r1, [pc, #364]	; (d0081f64 <emit_known_word.constprop.0+0x1860>)
d0081df6:	485a      	ldr	r0, [pc, #360]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081df8:	f003 fc6e 	bl	d00856d8 <strcat>
d0081dfc:	8823      	ldrh	r3, [r4, #0]
d0081dfe:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081e02:	f4be af9c 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081e06:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081e0a:	2118      	movs	r1, #24
d0081e0c:	223e      	movs	r2, #62	; 0x3e
d0081e0e:	2700      	movs	r7, #0
d0081e10:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081e14:	8823      	ldrh	r3, [r4, #0]
d0081e16:	4852      	ldr	r0, [pc, #328]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081e18:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081e1c:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081e20:	805a      	strh	r2, [r3, #2]
d0081e22:	8823      	ldrh	r3, [r4, #0]
d0081e24:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081e28:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081e2c:	711f      	strb	r7, [r3, #4]
d0081e2e:	8823      	ldrh	r3, [r4, #0]
d0081e30:	3301      	adds	r3, #1
d0081e32:	8023      	strh	r3, [r4, #0]
d0081e34:	f003 fc5f 	bl	d00856f6 <strlen>
d0081e38:	1cc3      	adds	r3, r0, #3
d0081e3a:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081e3e:	d208      	bcs.n	d0081e52 <emit_known_word.constprop.0+0x174e>
d0081e40:	b118      	cbz	r0, d0081e4a <emit_known_word.constprop.0+0x1746>
d0081e42:	2220      	movs	r2, #32
d0081e44:	1833      	adds	r3, r6, r0
d0081e46:	5432      	strb	r2, [r6, r0]
d0081e48:	705f      	strb	r7, [r3, #1]
d0081e4a:	4947      	ldr	r1, [pc, #284]	; (d0081f68 <emit_known_word.constprop.0+0x1864>)
d0081e4c:	4844      	ldr	r0, [pc, #272]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081e4e:	f003 fc43 	bl	d00856d8 <strcat>
d0081e52:	8823      	ldrh	r3, [r4, #0]
d0081e54:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081e58:	f4be af71 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081e5c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081e60:	211a      	movs	r1, #26
d0081e62:	2252      	movs	r2, #82	; 0x52
d0081e64:	2700      	movs	r7, #0
d0081e66:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081e6a:	8823      	ldrh	r3, [r4, #0]
d0081e6c:	483c      	ldr	r0, [pc, #240]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081e6e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081e72:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081e76:	805a      	strh	r2, [r3, #2]
d0081e78:	8823      	ldrh	r3, [r4, #0]
d0081e7a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081e7e:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081e82:	711f      	strb	r7, [r3, #4]
d0081e84:	8823      	ldrh	r3, [r4, #0]
d0081e86:	3301      	adds	r3, #1
d0081e88:	8023      	strh	r3, [r4, #0]
d0081e8a:	f003 fc34 	bl	d00856f6 <strlen>
d0081e8e:	1cc3      	adds	r3, r0, #3
d0081e90:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081e94:	d208      	bcs.n	d0081ea8 <emit_known_word.constprop.0+0x17a4>
d0081e96:	b118      	cbz	r0, d0081ea0 <emit_known_word.constprop.0+0x179c>
d0081e98:	2220      	movs	r2, #32
d0081e9a:	1833      	adds	r3, r6, r0
d0081e9c:	5432      	strb	r2, [r6, r0]
d0081e9e:	705f      	strb	r7, [r3, #1]
d0081ea0:	4932      	ldr	r1, [pc, #200]	; (d0081f6c <emit_known_word.constprop.0+0x1868>)
d0081ea2:	482f      	ldr	r0, [pc, #188]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081ea4:	f003 fc18 	bl	d00856d8 <strcat>
d0081ea8:	8823      	ldrh	r3, [r4, #0]
d0081eaa:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081eae:	f4be af46 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081eb2:	2101      	movs	r1, #1
d0081eb4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081eb8:	2278      	movs	r2, #120	; 0x78
d0081eba:	2700      	movs	r7, #0
d0081ebc:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081ec0:	8823      	ldrh	r3, [r4, #0]
d0081ec2:	4827      	ldr	r0, [pc, #156]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081ec4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081ec8:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081ecc:	805a      	strh	r2, [r3, #2]
d0081ece:	8823      	ldrh	r3, [r4, #0]
d0081ed0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081ed4:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081ed8:	711f      	strb	r7, [r3, #4]
d0081eda:	8823      	ldrh	r3, [r4, #0]
d0081edc:	440b      	add	r3, r1
d0081ede:	8023      	strh	r3, [r4, #0]
d0081ee0:	f003 fc09 	bl	d00856f6 <strlen>
d0081ee4:	1d03      	adds	r3, r0, #4
d0081ee6:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081eea:	d208      	bcs.n	d0081efe <emit_known_word.constprop.0+0x17fa>
d0081eec:	b118      	cbz	r0, d0081ef6 <emit_known_word.constprop.0+0x17f2>
d0081eee:	2220      	movs	r2, #32
d0081ef0:	1833      	adds	r3, r6, r0
d0081ef2:	5432      	strb	r2, [r6, r0]
d0081ef4:	705f      	strb	r7, [r3, #1]
d0081ef6:	491e      	ldr	r1, [pc, #120]	; (d0081f70 <emit_known_word.constprop.0+0x186c>)
d0081ef8:	4819      	ldr	r0, [pc, #100]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081efa:	f003 fbed 	bl	d00856d8 <strcat>
d0081efe:	8823      	ldrh	r3, [r4, #0]
d0081f00:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081f04:	f4be af1b 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081f08:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081f0c:	2116      	movs	r1, #22
d0081f0e:	224b      	movs	r2, #75	; 0x4b
d0081f10:	2700      	movs	r7, #0
d0081f12:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081f16:	8823      	ldrh	r3, [r4, #0]
d0081f18:	4811      	ldr	r0, [pc, #68]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081f1a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081f1e:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081f22:	805a      	strh	r2, [r3, #2]
d0081f24:	8823      	ldrh	r3, [r4, #0]
d0081f26:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081f2a:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d0081f2e:	712f      	strb	r7, [r5, #4]
d0081f30:	8823      	ldrh	r3, [r4, #0]
d0081f32:	3301      	adds	r3, #1
d0081f34:	8023      	strh	r3, [r4, #0]
d0081f36:	f003 fbde 	bl	d00856f6 <strlen>
d0081f3a:	1cc3      	adds	r3, r0, #3
d0081f3c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081f40:	f4be aefd 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081f44:	b118      	cbz	r0, d0081f4e <emit_known_word.constprop.0+0x184a>
d0081f46:	2220      	movs	r2, #32
d0081f48:	1833      	adds	r3, r6, r0
d0081f4a:	5432      	strb	r2, [r6, r0]
d0081f4c:	705f      	strb	r7, [r3, #1]
d0081f4e:	4909      	ldr	r1, [pc, #36]	; (d0081f74 <emit_known_word.constprop.0+0x1870>)
d0081f50:	4803      	ldr	r0, [pc, #12]	; (d0081f60 <emit_known_word.constprop.0+0x185c>)
d0081f52:	f003 fbc1 	bl	d00856d8 <strcat>
d0081f56:	2001      	movs	r0, #1
d0081f58:	f7fe bef2 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d0081f5c:	d00861a8 	.word	0xd00861a8
d0081f60:	d00c8460 	.word	0xd00c8460
d0081f64:	d0085c00 	.word	0xd0085c00
d0081f68:	d0085cb8 	.word	0xd0085cb8
d0081f6c:	d0085c1c 	.word	0xd0085c1c
d0081f70:	d0085c0c 	.word	0xd0085c0c
d0081f74:	d0085c7c 	.word	0xd0085c7c
d0081f78:	4299      	cmp	r1, r3
d0081f7a:	f47e ae10 	bne.w	d0080b9e <emit_known_word.constprop.0+0x49a>
d0081f7e:	f81b 3001 	ldrb.w	r3, [fp, r1]
d0081f82:	2b00      	cmp	r3, #0
d0081f84:	f47e ae0b 	bne.w	d0080b9e <emit_known_word.constprop.0+0x49a>
d0081f88:	8823      	ldrh	r3, [r4, #0]
d0081f8a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081f8e:	f4be aed6 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081f92:	4d63      	ldr	r5, [pc, #396]	; (d0082120 <emit_known_word.constprop.0+0x1a1c>)
d0081f94:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081f98:	211a      	movs	r1, #26
d0081f9a:	2252      	movs	r2, #82	; 0x52
d0081f9c:	2700      	movs	r7, #0
d0081f9e:	4e61      	ldr	r6, [pc, #388]	; (d0082124 <emit_known_word.constprop.0+0x1a20>)
d0081fa0:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0081fa4:	8823      	ldrh	r3, [r4, #0]
d0081fa6:	4630      	mov	r0, r6
d0081fa8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081fac:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081fb0:	805a      	strh	r2, [r3, #2]
d0081fb2:	8823      	ldrh	r3, [r4, #0]
d0081fb4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081fb8:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0081fbc:	711f      	strb	r7, [r3, #4]
d0081fbe:	8823      	ldrh	r3, [r4, #0]
d0081fc0:	3301      	adds	r3, #1
d0081fc2:	8023      	strh	r3, [r4, #0]
d0081fc4:	f003 fb97 	bl	d00856f6 <strlen>
d0081fc8:	1cc3      	adds	r3, r0, #3
d0081fca:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081fce:	d20c      	bcs.n	d0081fea <emit_known_word.constprop.0+0x18e6>
d0081fd0:	b118      	cbz	r0, d0081fda <emit_known_word.constprop.0+0x18d6>
d0081fd2:	2220      	movs	r2, #32
d0081fd4:	1833      	adds	r3, r6, r0
d0081fd6:	5432      	strb	r2, [r6, r0]
d0081fd8:	705f      	strb	r7, [r3, #1]
d0081fda:	4852      	ldr	r0, [pc, #328]	; (d0082124 <emit_known_word.constprop.0+0x1a20>)
d0081fdc:	f003 fb8b 	bl	d00856f6 <strlen>
d0081fe0:	2202      	movs	r2, #2
d0081fe2:	4951      	ldr	r1, [pc, #324]	; (d0082128 <emit_known_word.constprop.0+0x1a24>)
d0081fe4:	4430      	add	r0, r6
d0081fe6:	f003 f9e9 	bl	d00853bc <memcpy>
d0081fea:	8823      	ldrh	r3, [r4, #0]
d0081fec:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081ff0:	f4be aea5 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0081ff4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0081ff8:	211c      	movs	r1, #28
d0081ffa:	223a      	movs	r2, #58	; 0x3a
d0081ffc:	2700      	movs	r7, #0
d0081ffe:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0082002:	8823      	ldrh	r3, [r4, #0]
d0082004:	4847      	ldr	r0, [pc, #284]	; (d0082124 <emit_known_word.constprop.0+0x1a20>)
d0082006:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008200a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008200e:	805a      	strh	r2, [r3, #2]
d0082010:	8823      	ldrh	r3, [r4, #0]
d0082012:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082016:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008201a:	711f      	strb	r7, [r3, #4]
d008201c:	8823      	ldrh	r3, [r4, #0]
d008201e:	3301      	adds	r3, #1
d0082020:	8023      	strh	r3, [r4, #0]
d0082022:	f003 fb68 	bl	d00856f6 <strlen>
d0082026:	1cc3      	adds	r3, r0, #3
d0082028:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008202c:	d20c      	bcs.n	d0082048 <emit_known_word.constprop.0+0x1944>
d008202e:	b118      	cbz	r0, d0082038 <emit_known_word.constprop.0+0x1934>
d0082030:	2220      	movs	r2, #32
d0082032:	1833      	adds	r3, r6, r0
d0082034:	5432      	strb	r2, [r6, r0]
d0082036:	705f      	strb	r7, [r3, #1]
d0082038:	483a      	ldr	r0, [pc, #232]	; (d0082124 <emit_known_word.constprop.0+0x1a20>)
d008203a:	f003 fb5c 	bl	d00856f6 <strlen>
d008203e:	2202      	movs	r2, #2
d0082040:	493a      	ldr	r1, [pc, #232]	; (d008212c <emit_known_word.constprop.0+0x1a28>)
d0082042:	4430      	add	r0, r6
d0082044:	f003 f9ba 	bl	d00853bc <memcpy>
d0082048:	8823      	ldrh	r3, [r4, #0]
d008204a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008204e:	f4be ae76 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0082052:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082056:	2108      	movs	r1, #8
d0082058:	2282      	movs	r2, #130	; 0x82
d008205a:	2700      	movs	r7, #0
d008205c:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0082060:	8823      	ldrh	r3, [r4, #0]
d0082062:	4830      	ldr	r0, [pc, #192]	; (d0082124 <emit_known_word.constprop.0+0x1a20>)
d0082064:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082068:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008206c:	805a      	strh	r2, [r3, #2]
d008206e:	8823      	ldrh	r3, [r4, #0]
d0082070:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082074:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0082078:	711f      	strb	r7, [r3, #4]
d008207a:	8823      	ldrh	r3, [r4, #0]
d008207c:	3301      	adds	r3, #1
d008207e:	8023      	strh	r3, [r4, #0]
d0082080:	f003 fb39 	bl	d00856f6 <strlen>
d0082084:	1d03      	adds	r3, r0, #4
d0082086:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008208a:	d20c      	bcs.n	d00820a6 <emit_known_word.constprop.0+0x19a2>
d008208c:	b118      	cbz	r0, d0082096 <emit_known_word.constprop.0+0x1992>
d008208e:	2220      	movs	r2, #32
d0082090:	1833      	adds	r3, r6, r0
d0082092:	5432      	strb	r2, [r6, r0]
d0082094:	705f      	strb	r7, [r3, #1]
d0082096:	4823      	ldr	r0, [pc, #140]	; (d0082124 <emit_known_word.constprop.0+0x1a20>)
d0082098:	f003 fb2d 	bl	d00856f6 <strlen>
d008209c:	2203      	movs	r2, #3
d008209e:	4924      	ldr	r1, [pc, #144]	; (d0082130 <emit_known_word.constprop.0+0x1a2c>)
d00820a0:	4430      	add	r0, r6
d00820a2:	f003 f98b 	bl	d00853bc <memcpy>
d00820a6:	8823      	ldrh	r3, [r4, #0]
d00820a8:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00820ac:	f4be ae47 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00820b0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00820b4:	211e      	movs	r1, #30
d00820b6:	2248      	movs	r2, #72	; 0x48
d00820b8:	2700      	movs	r7, #0
d00820ba:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d00820be:	8823      	ldrh	r3, [r4, #0]
d00820c0:	4818      	ldr	r0, [pc, #96]	; (d0082124 <emit_known_word.constprop.0+0x1a20>)
d00820c2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00820c6:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00820ca:	805a      	strh	r2, [r3, #2]
d00820cc:	8823      	ldrh	r3, [r4, #0]
d00820ce:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00820d2:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d00820d6:	712f      	strb	r7, [r5, #4]
d00820d8:	8823      	ldrh	r3, [r4, #0]
d00820da:	3301      	adds	r3, #1
d00820dc:	8023      	strh	r3, [r4, #0]
d00820de:	f003 fb0a 	bl	d00856f6 <strlen>
d00820e2:	1cc3      	adds	r3, r0, #3
d00820e4:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00820e8:	f4be ae29 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00820ec:	b118      	cbz	r0, d00820f6 <emit_known_word.constprop.0+0x19f2>
d00820ee:	2220      	movs	r2, #32
d00820f0:	1833      	adds	r3, r6, r0
d00820f2:	5432      	strb	r2, [r6, r0]
d00820f4:	705f      	strb	r7, [r3, #1]
d00820f6:	480b      	ldr	r0, [pc, #44]	; (d0082124 <emit_known_word.constprop.0+0x1a20>)
d00820f8:	f003 fafd 	bl	d00856f6 <strlen>
d00820fc:	2202      	movs	r2, #2
d00820fe:	490d      	ldr	r1, [pc, #52]	; (d0082134 <emit_known_word.constprop.0+0x1a30>)
d0082100:	4430      	add	r0, r6
d0082102:	f003 f95b 	bl	d00853bc <memcpy>
d0082106:	2001      	movs	r0, #1
d0082108:	f7fe be1a 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d008210c:	4299      	cmp	r1, r3
d008210e:	f47e ad66 	bne.w	d0080bde <emit_known_word.constprop.0+0x4da>
d0082112:	f81b 3001 	ldrb.w	r3, [fp, r1]
d0082116:	2b00      	cmp	r3, #0
d0082118:	f43f af36 	beq.w	d0081f88 <emit_known_word.constprop.0+0x1884>
d008211c:	f7fe bd5f 	b.w	d0080bde <emit_known_word.constprop.0+0x4da>
d0082120:	d00861a8 	.word	0xd00861a8
d0082124:	d00c8460 	.word	0xd00c8460
d0082128:	d0085c1c 	.word	0xd0085c1c
d008212c:	d0085c2c 	.word	0xd0085c2c
d0082130:	d0085bf4 	.word	0xd0085bf4
d0082134:	d0085c68 	.word	0xd0085c68
d0082138:	4299      	cmp	r1, r3
d008213a:	f47e ad70 	bne.w	d0080c1e <emit_known_word.constprop.0+0x51a>
d008213e:	f81b 3001 	ldrb.w	r3, [fp, r1]
d0082142:	2b00      	cmp	r3, #0
d0082144:	f47e ad6b 	bne.w	d0080c1e <emit_known_word.constprop.0+0x51a>
d0082148:	8823      	ldrh	r3, [r4, #0]
d008214a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008214e:	f4be adf6 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0082152:	4d70      	ldr	r5, [pc, #448]	; (d0082314 <emit_known_word.constprop.0+0x1c10>)
d0082154:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082158:	2111      	movs	r1, #17
d008215a:	2237      	movs	r2, #55	; 0x37
d008215c:	2700      	movs	r7, #0
d008215e:	4e6e      	ldr	r6, [pc, #440]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d0082160:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0082164:	8823      	ldrh	r3, [r4, #0]
d0082166:	4630      	mov	r0, r6
d0082168:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008216c:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0082170:	805a      	strh	r2, [r3, #2]
d0082172:	8823      	ldrh	r3, [r4, #0]
d0082174:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082178:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008217c:	711f      	strb	r7, [r3, #4]
d008217e:	8823      	ldrh	r3, [r4, #0]
d0082180:	3301      	adds	r3, #1
d0082182:	8023      	strh	r3, [r4, #0]
d0082184:	f003 fab7 	bl	d00856f6 <strlen>
d0082188:	1cc3      	adds	r3, r0, #3
d008218a:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008218e:	d208      	bcs.n	d00821a2 <emit_known_word.constprop.0+0x1a9e>
d0082190:	b118      	cbz	r0, d008219a <emit_known_word.constprop.0+0x1a96>
d0082192:	2220      	movs	r2, #32
d0082194:	1833      	adds	r3, r6, r0
d0082196:	5432      	strb	r2, [r6, r0]
d0082198:	705f      	strb	r7, [r3, #1]
d008219a:	4960      	ldr	r1, [pc, #384]	; (d008231c <emit_known_word.constprop.0+0x1c18>)
d008219c:	485e      	ldr	r0, [pc, #376]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d008219e:	f003 fa9b 	bl	d00856d8 <strcat>
d00821a2:	8823      	ldrh	r3, [r4, #0]
d00821a4:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00821a8:	f4be adc9 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00821ac:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00821b0:	2104      	movs	r1, #4
d00821b2:	2287      	movs	r2, #135	; 0x87
d00821b4:	2700      	movs	r7, #0
d00821b6:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d00821ba:	8823      	ldrh	r3, [r4, #0]
d00821bc:	4856      	ldr	r0, [pc, #344]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d00821be:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00821c2:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00821c6:	805a      	strh	r2, [r3, #2]
d00821c8:	8823      	ldrh	r3, [r4, #0]
d00821ca:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00821ce:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00821d2:	711f      	strb	r7, [r3, #4]
d00821d4:	8823      	ldrh	r3, [r4, #0]
d00821d6:	3301      	adds	r3, #1
d00821d8:	8023      	strh	r3, [r4, #0]
d00821da:	f003 fa8c 	bl	d00856f6 <strlen>
d00821de:	1d03      	adds	r3, r0, #4
d00821e0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00821e4:	d208      	bcs.n	d00821f8 <emit_known_word.constprop.0+0x1af4>
d00821e6:	b118      	cbz	r0, d00821f0 <emit_known_word.constprop.0+0x1aec>
d00821e8:	2220      	movs	r2, #32
d00821ea:	1833      	adds	r3, r6, r0
d00821ec:	5432      	strb	r2, [r6, r0]
d00821ee:	705f      	strb	r7, [r3, #1]
d00821f0:	494b      	ldr	r1, [pc, #300]	; (d0082320 <emit_known_word.constprop.0+0x1c1c>)
d00821f2:	4849      	ldr	r0, [pc, #292]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d00821f4:	f003 fa70 	bl	d00856d8 <strcat>
d00821f8:	8823      	ldrh	r3, [r4, #0]
d00821fa:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00821fe:	f4be ad9e 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0082202:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082206:	2113      	movs	r1, #19
d0082208:	2246      	movs	r2, #70	; 0x46
d008220a:	2700      	movs	r7, #0
d008220c:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0082210:	8823      	ldrh	r3, [r4, #0]
d0082212:	4841      	ldr	r0, [pc, #260]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d0082214:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082218:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008221c:	805a      	strh	r2, [r3, #2]
d008221e:	8823      	ldrh	r3, [r4, #0]
d0082220:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082224:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0082228:	711f      	strb	r7, [r3, #4]
d008222a:	8823      	ldrh	r3, [r4, #0]
d008222c:	3301      	adds	r3, #1
d008222e:	8023      	strh	r3, [r4, #0]
d0082230:	f003 fa61 	bl	d00856f6 <strlen>
d0082234:	1cc3      	adds	r3, r0, #3
d0082236:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008223a:	d208      	bcs.n	d008224e <emit_known_word.constprop.0+0x1b4a>
d008223c:	b118      	cbz	r0, d0082246 <emit_known_word.constprop.0+0x1b42>
d008223e:	2220      	movs	r2, #32
d0082240:	1833      	adds	r3, r6, r0
d0082242:	5432      	strb	r2, [r6, r0]
d0082244:	705f      	strb	r7, [r3, #1]
d0082246:	4937      	ldr	r1, [pc, #220]	; (d0082324 <emit_known_word.constprop.0+0x1c20>)
d0082248:	4833      	ldr	r0, [pc, #204]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d008224a:	f003 fa45 	bl	d00856d8 <strcat>
d008224e:	8823      	ldrh	r3, [r4, #0]
d0082250:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082254:	f4be ad73 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d0082258:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008225c:	2107      	movs	r1, #7
d008225e:	226e      	movs	r2, #110	; 0x6e
d0082260:	2700      	movs	r7, #0
d0082262:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d0082266:	8823      	ldrh	r3, [r4, #0]
d0082268:	482b      	ldr	r0, [pc, #172]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d008226a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008226e:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0082272:	805a      	strh	r2, [r3, #2]
d0082274:	8823      	ldrh	r3, [r4, #0]
d0082276:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008227a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d008227e:	711f      	strb	r7, [r3, #4]
d0082280:	8823      	ldrh	r3, [r4, #0]
d0082282:	3301      	adds	r3, #1
d0082284:	8023      	strh	r3, [r4, #0]
d0082286:	f003 fa36 	bl	d00856f6 <strlen>
d008228a:	1d03      	adds	r3, r0, #4
d008228c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0082290:	d208      	bcs.n	d00822a4 <emit_known_word.constprop.0+0x1ba0>
d0082292:	b118      	cbz	r0, d008229c <emit_known_word.constprop.0+0x1b98>
d0082294:	2220      	movs	r2, #32
d0082296:	1833      	adds	r3, r6, r0
d0082298:	5432      	strb	r2, [r6, r0]
d008229a:	705f      	strb	r7, [r3, #1]
d008229c:	4922      	ldr	r1, [pc, #136]	; (d0082328 <emit_known_word.constprop.0+0x1c24>)
d008229e:	481e      	ldr	r0, [pc, #120]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d00822a0:	f003 fa1a 	bl	d00856d8 <strcat>
d00822a4:	8823      	ldrh	r3, [r4, #0]
d00822a6:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00822aa:	f4be ad48 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00822ae:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00822b2:	2117      	movs	r1, #23
d00822b4:	225a      	movs	r2, #90	; 0x5a
d00822b6:	2700      	movs	r7, #0
d00822b8:	f805 1013 	strb.w	r1, [r5, r3, lsl #1]
d00822bc:	8823      	ldrh	r3, [r4, #0]
d00822be:	4816      	ldr	r0, [pc, #88]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d00822c0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00822c4:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00822c8:	805a      	strh	r2, [r3, #2]
d00822ca:	8823      	ldrh	r3, [r4, #0]
d00822cc:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00822d0:	eb05 0543 	add.w	r5, r5, r3, lsl #1
d00822d4:	712f      	strb	r7, [r5, #4]
d00822d6:	8823      	ldrh	r3, [r4, #0]
d00822d8:	3301      	adds	r3, #1
d00822da:	8023      	strh	r3, [r4, #0]
d00822dc:	f003 fa0b 	bl	d00856f6 <strlen>
d00822e0:	1d03      	adds	r3, r0, #4
d00822e2:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00822e6:	f4be ad2a 	bcs.w	d0080d3e <emit_known_word.constprop.0+0x63a>
d00822ea:	b118      	cbz	r0, d00822f4 <emit_known_word.constprop.0+0x1bf0>
d00822ec:	2220      	movs	r2, #32
d00822ee:	1833      	adds	r3, r6, r0
d00822f0:	5432      	strb	r2, [r6, r0]
d00822f2:	705f      	strb	r7, [r3, #1]
d00822f4:	490d      	ldr	r1, [pc, #52]	; (d008232c <emit_known_word.constprop.0+0x1c28>)
d00822f6:	4808      	ldr	r0, [pc, #32]	; (d0082318 <emit_known_word.constprop.0+0x1c14>)
d00822f8:	f003 f9ee 	bl	d00856d8 <strcat>
d00822fc:	2001      	movs	r0, #1
d00822fe:	f7fe bd1f 	b.w	d0080d40 <emit_known_word.constprop.0+0x63c>
d0082302:	4299      	cmp	r1, r3
d0082304:	f47e aca9 	bne.w	d0080c5a <emit_known_word.constprop.0+0x556>
d0082308:	5c73      	ldrb	r3, [r6, r1]
d008230a:	2b00      	cmp	r3, #0
d008230c:	f43f af1c 	beq.w	d0082148 <emit_known_word.constprop.0+0x1a44>
d0082310:	f7fe bca3 	b.w	d0080c5a <emit_known_word.constprop.0+0x556>
d0082314:	d00861a8 	.word	0xd00861a8
d0082318:	d00c8460 	.word	0xd00c8460
d008231c:	d0085c8c 	.word	0xd0085c8c
d0082320:	d0085bf8 	.word	0xd0085bf8
d0082324:	d0085cdc 	.word	0xd0085cdc
d0082328:	d0085c18 	.word	0xd0085c18
d008232c:	d0085ce0 	.word	0xd0085ce0

d0082330 <emit_phonetic_symbol.constprop.0>:
d0082330:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0082334:	460f      	mov	r7, r1
d0082336:	4605      	mov	r5, r0
d0082338:	4616      	mov	r6, r2
d008233a:	b082      	sub	sp, #8
d008233c:	242f      	movs	r4, #47	; 0x2f
d008233e:	2200      	movs	r2, #0
d0082340:	8809      	ldrh	r1, [r1, #0]
d0082342:	48c1      	ldr	r0, [pc, #772]	; (d0082648 <emit_phonetic_symbol.constprop.0+0x318>)
d0082344:	e010      	b.n	d0082368 <emit_phonetic_symbol.constprop.0+0x38>
d0082346:	f1be 0f19 	cmp.w	lr, #25
d008234a:	d801      	bhi.n	d0082350 <emit_phonetic_symbol.constprop.0+0x20>
d008234c:	3320      	adds	r3, #32
d008234e:	b2db      	uxtb	r3, r3
d0082350:	f1bc 0f19 	cmp.w	ip, #25
d0082354:	d801      	bhi.n	d008235a <emit_phonetic_symbol.constprop.0+0x2a>
d0082356:	3420      	adds	r4, #32
d0082358:	b2e4      	uxtb	r4, r4
d008235a:	429c      	cmp	r4, r3
d008235c:	f040 82cd 	bne.w	d00828fa <emit_phonetic_symbol.constprop.0+0x5ca>
d0082360:	5c14      	ldrb	r4, [r2, r0]
d0082362:	2c00      	cmp	r4, #0
d0082364:	f000 8291 	beq.w	d008288a <emit_phonetic_symbol.constprop.0+0x55a>
d0082368:	18ab      	adds	r3, r5, r2
d008236a:	f102 0e01 	add.w	lr, r2, #1
d008236e:	f1a4 0c41 	sub.w	ip, r4, #65	; 0x41
d0082372:	5c5b      	ldrb	r3, [r3, r1]
d0082374:	fa1f f28e 	uxth.w	r2, lr
d0082378:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d008237c:	2b00      	cmp	r3, #0
d008237e:	d1e2      	bne.n	d0082346 <emit_phonetic_symbol.constprop.0+0x16>
d0082380:	f04f 0853 	mov.w	r8, #83	; 0x53
d0082384:	f8df c2c4 	ldr.w	ip, [pc, #708]	; d008264c <emit_phonetic_symbol.constprop.0+0x31c>
d0082388:	e012      	b.n	d00823b0 <emit_phonetic_symbol.constprop.0+0x80>
d008238a:	2819      	cmp	r0, #25
d008238c:	d801      	bhi.n	d0082392 <emit_phonetic_symbol.constprop.0+0x62>
d008238e:	3420      	adds	r4, #32
d0082390:	b2e4      	uxtb	r4, r4
d0082392:	2a19      	cmp	r2, #25
d0082394:	d803      	bhi.n	d008239e <emit_phonetic_symbol.constprop.0+0x6e>
d0082396:	f108 0820 	add.w	r8, r8, #32
d008239a:	fa5f f888 	uxtb.w	r8, r8
d008239e:	45a0      	cmp	r8, r4
d00823a0:	f040 82e3 	bne.w	d008296a <emit_phonetic_symbol.constprop.0+0x63a>
d00823a4:	f813 800c 	ldrb.w	r8, [r3, ip]
d00823a8:	f1b8 0f00 	cmp.w	r8, #0
d00823ac:	f000 82a9 	beq.w	d0082902 <emit_phonetic_symbol.constprop.0+0x5d2>
d00823b0:	18e8      	adds	r0, r5, r3
d00823b2:	1c5c      	adds	r4, r3, #1
d00823b4:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d00823b8:	b2a3      	uxth	r3, r4
d00823ba:	5c44      	ldrb	r4, [r0, r1]
d00823bc:	f1a4 0041 	sub.w	r0, r4, #65	; 0x41
d00823c0:	2c00      	cmp	r4, #0
d00823c2:	d1e2      	bne.n	d008238a <emit_phonetic_symbol.constprop.0+0x5a>
d00823c4:	2254      	movs	r2, #84	; 0x54
d00823c6:	f8df e288 	ldr.w	lr, [pc, #648]	; d0082650 <emit_phonetic_symbol.constprop.0+0x320>
d00823ca:	e010      	b.n	d00823ee <emit_phonetic_symbol.constprop.0+0xbe>
d00823cc:	f1bc 0f19 	cmp.w	ip, #25
d00823d0:	d801      	bhi.n	d00823d6 <emit_phonetic_symbol.constprop.0+0xa6>
d00823d2:	3320      	adds	r3, #32
d00823d4:	b2db      	uxtb	r3, r3
d00823d6:	2819      	cmp	r0, #25
d00823d8:	d801      	bhi.n	d00823de <emit_phonetic_symbol.constprop.0+0xae>
d00823da:	3220      	adds	r2, #32
d00823dc:	b2d2      	uxtb	r2, r2
d00823de:	429a      	cmp	r2, r3
d00823e0:	f040 82fa 	bne.w	d00829d8 <emit_phonetic_symbol.constprop.0+0x6a8>
d00823e4:	f814 200e 	ldrb.w	r2, [r4, lr]
d00823e8:	2a00      	cmp	r2, #0
d00823ea:	f000 82c1 	beq.w	d0082970 <emit_phonetic_symbol.constprop.0+0x640>
d00823ee:	192b      	adds	r3, r5, r4
d00823f0:	f104 0c01 	add.w	ip, r4, #1
d00823f4:	f1a2 0041 	sub.w	r0, r2, #65	; 0x41
d00823f8:	5c5b      	ldrb	r3, [r3, r1]
d00823fa:	fa1f f48c 	uxth.w	r4, ip
d00823fe:	f1a3 0c41 	sub.w	ip, r3, #65	; 0x41
d0082402:	2b00      	cmp	r3, #0
d0082404:	d1e2      	bne.n	d00823cc <emit_phonetic_symbol.constprop.0+0x9c>
d0082406:	2444      	movs	r4, #68	; 0x44
d0082408:	f8df e248 	ldr.w	lr, [pc, #584]	; d0082654 <emit_phonetic_symbol.constprop.0+0x324>
d008240c:	e010      	b.n	d0082430 <emit_phonetic_symbol.constprop.0+0x100>
d008240e:	f1bc 0f19 	cmp.w	ip, #25
d0082412:	d801      	bhi.n	d0082418 <emit_phonetic_symbol.constprop.0+0xe8>
d0082414:	3220      	adds	r2, #32
d0082416:	b2d2      	uxtb	r2, r2
d0082418:	2819      	cmp	r0, #25
d008241a:	d801      	bhi.n	d0082420 <emit_phonetic_symbol.constprop.0+0xf0>
d008241c:	3420      	adds	r4, #32
d008241e:	b2e4      	uxtb	r4, r4
d0082420:	4294      	cmp	r4, r2
d0082422:	f040 830f 	bne.w	d0082a44 <emit_phonetic_symbol.constprop.0+0x714>
d0082426:	f813 400e 	ldrb.w	r4, [r3, lr]
d008242a:	2c00      	cmp	r4, #0
d008242c:	f000 82d7 	beq.w	d00829de <emit_phonetic_symbol.constprop.0+0x6ae>
d0082430:	18ea      	adds	r2, r5, r3
d0082432:	f103 0c01 	add.w	ip, r3, #1
d0082436:	f1a4 0041 	sub.w	r0, r4, #65	; 0x41
d008243a:	5c52      	ldrb	r2, [r2, r1]
d008243c:	fa1f f38c 	uxth.w	r3, ip
d0082440:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d0082444:	2a00      	cmp	r2, #0
d0082446:	d1e2      	bne.n	d008240e <emit_phonetic_symbol.constprop.0+0xde>
d0082448:	2443      	movs	r4, #67	; 0x43
d008244a:	f8df e20c 	ldr.w	lr, [pc, #524]	; d0082658 <emit_phonetic_symbol.constprop.0+0x328>
d008244e:	e010      	b.n	d0082472 <emit_phonetic_symbol.constprop.0+0x142>
d0082450:	f1bc 0f19 	cmp.w	ip, #25
d0082454:	d801      	bhi.n	d008245a <emit_phonetic_symbol.constprop.0+0x12a>
d0082456:	3320      	adds	r3, #32
d0082458:	b2db      	uxtb	r3, r3
d008245a:	2819      	cmp	r0, #25
d008245c:	d801      	bhi.n	d0082462 <emit_phonetic_symbol.constprop.0+0x132>
d008245e:	3420      	adds	r4, #32
d0082460:	b2e4      	uxtb	r4, r4
d0082462:	429c      	cmp	r4, r3
d0082464:	f040 8354 	bne.w	d0082b10 <emit_phonetic_symbol.constprop.0+0x7e0>
d0082468:	f812 400e 	ldrb.w	r4, [r2, lr]
d008246c:	2c00      	cmp	r4, #0
d008246e:	f000 831b 	beq.w	d0082aa8 <emit_phonetic_symbol.constprop.0+0x778>
d0082472:	18ab      	adds	r3, r5, r2
d0082474:	f102 0c01 	add.w	ip, r2, #1
d0082478:	f1a4 0041 	sub.w	r0, r4, #65	; 0x41
d008247c:	5c5b      	ldrb	r3, [r3, r1]
d008247e:	fa1f f28c 	uxth.w	r2, ip
d0082482:	f1a3 0c41 	sub.w	ip, r3, #65	; 0x41
d0082486:	2b00      	cmp	r3, #0
d0082488:	d1e2      	bne.n	d0082450 <emit_phonetic_symbol.constprop.0+0x120>
d008248a:	245a      	movs	r4, #90	; 0x5a
d008248c:	f8df e1cc 	ldr.w	lr, [pc, #460]	; d008265c <emit_phonetic_symbol.constprop.0+0x32c>
d0082490:	e010      	b.n	d00824b4 <emit_phonetic_symbol.constprop.0+0x184>
d0082492:	f1bc 0f19 	cmp.w	ip, #25
d0082496:	d801      	bhi.n	d008249c <emit_phonetic_symbol.constprop.0+0x16c>
d0082498:	3220      	adds	r2, #32
d008249a:	b2d2      	uxtb	r2, r2
d008249c:	2819      	cmp	r0, #25
d008249e:	d801      	bhi.n	d00824a4 <emit_phonetic_symbol.constprop.0+0x174>
d00824a0:	3420      	adds	r4, #32
d00824a2:	b2e4      	uxtb	r4, r4
d00824a4:	4294      	cmp	r4, r2
d00824a6:	f040 839f 	bne.w	d0082be8 <emit_phonetic_symbol.constprop.0+0x8b8>
d00824aa:	f813 400e 	ldrb.w	r4, [r3, lr]
d00824ae:	2c00      	cmp	r4, #0
d00824b0:	f000 8366 	beq.w	d0082b80 <emit_phonetic_symbol.constprop.0+0x850>
d00824b4:	18ea      	adds	r2, r5, r3
d00824b6:	f103 0c01 	add.w	ip, r3, #1
d00824ba:	f1a4 0041 	sub.w	r0, r4, #65	; 0x41
d00824be:	5c52      	ldrb	r2, [r2, r1]
d00824c0:	fa1f f38c 	uxth.w	r3, ip
d00824c4:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d00824c8:	2a00      	cmp	r2, #0
d00824ca:	d1e2      	bne.n	d0082492 <emit_phonetic_symbol.constprop.0+0x162>
d00824cc:	204e      	movs	r0, #78	; 0x4e
d00824ce:	f8df e190 	ldr.w	lr, [pc, #400]	; d0082660 <emit_phonetic_symbol.constprop.0+0x330>
d00824d2:	e010      	b.n	d00824f6 <emit_phonetic_symbol.constprop.0+0x1c6>
d00824d4:	2c19      	cmp	r4, #25
d00824d6:	d801      	bhi.n	d00824dc <emit_phonetic_symbol.constprop.0+0x1ac>
d00824d8:	3320      	adds	r3, #32
d00824da:	b2db      	uxtb	r3, r3
d00824dc:	f1bc 0f19 	cmp.w	ip, #25
d00824e0:	d801      	bhi.n	d00824e6 <emit_phonetic_symbol.constprop.0+0x1b6>
d00824e2:	3020      	adds	r0, #32
d00824e4:	b2c0      	uxtb	r0, r0
d00824e6:	4298      	cmp	r0, r3
d00824e8:	f040 8381 	bne.w	d0082bee <emit_phonetic_symbol.constprop.0+0x8be>
d00824ec:	f812 000e 	ldrb.w	r0, [r2, lr]
d00824f0:	2800      	cmp	r0, #0
d00824f2:	f000 8310 	beq.w	d0082b16 <emit_phonetic_symbol.constprop.0+0x7e6>
d00824f6:	18ab      	adds	r3, r5, r2
d00824f8:	1c54      	adds	r4, r2, #1
d00824fa:	f1a0 0c41 	sub.w	ip, r0, #65	; 0x41
d00824fe:	5c5b      	ldrb	r3, [r3, r1]
d0082500:	b2a2      	uxth	r2, r4
d0082502:	f1a3 0441 	sub.w	r4, r3, #65	; 0x41
d0082506:	2b00      	cmp	r3, #0
d0082508:	d1e4      	bne.n	d00824d4 <emit_phonetic_symbol.constprop.0+0x1a4>
d008250a:	204e      	movs	r0, #78	; 0x4e
d008250c:	f8df e154 	ldr.w	lr, [pc, #340]	; d0082664 <emit_phonetic_symbol.constprop.0+0x334>
d0082510:	e010      	b.n	d0082534 <emit_phonetic_symbol.constprop.0+0x204>
d0082512:	2c19      	cmp	r4, #25
d0082514:	d801      	bhi.n	d008251a <emit_phonetic_symbol.constprop.0+0x1ea>
d0082516:	3220      	adds	r2, #32
d0082518:	b2d2      	uxtb	r2, r2
d008251a:	f1bc 0f19 	cmp.w	ip, #25
d008251e:	d801      	bhi.n	d0082524 <emit_phonetic_symbol.constprop.0+0x1f4>
d0082520:	3020      	adds	r0, #32
d0082522:	b2c0      	uxtb	r0, r0
d0082524:	4290      	cmp	r0, r2
d0082526:	f040 8365 	bne.w	d0082bf4 <emit_phonetic_symbol.constprop.0+0x8c4>
d008252a:	f813 000e 	ldrb.w	r0, [r3, lr]
d008252e:	2800      	cmp	r0, #0
d0082530:	f000 82f1 	beq.w	d0082b16 <emit_phonetic_symbol.constprop.0+0x7e6>
d0082534:	18ea      	adds	r2, r5, r3
d0082536:	1c5c      	adds	r4, r3, #1
d0082538:	f1a0 0c41 	sub.w	ip, r0, #65	; 0x41
d008253c:	5c52      	ldrb	r2, [r2, r1]
d008253e:	b2a3      	uxth	r3, r4
d0082540:	f1a2 0441 	sub.w	r4, r2, #65	; 0x41
d0082544:	2a00      	cmp	r2, #0
d0082546:	d1e4      	bne.n	d0082512 <emit_phonetic_symbol.constprop.0+0x1e2>
d0082548:	2449      	movs	r4, #73	; 0x49
d008254a:	f8df e11c 	ldr.w	lr, [pc, #284]	; d0082668 <emit_phonetic_symbol.constprop.0+0x338>
d008254e:	e010      	b.n	d0082572 <emit_phonetic_symbol.constprop.0+0x242>
d0082550:	2819      	cmp	r0, #25
d0082552:	d801      	bhi.n	d0082558 <emit_phonetic_symbol.constprop.0+0x228>
d0082554:	3320      	adds	r3, #32
d0082556:	b2db      	uxtb	r3, r3
d0082558:	f1bc 0f19 	cmp.w	ip, #25
d008255c:	d801      	bhi.n	d0082562 <emit_phonetic_symbol.constprop.0+0x232>
d008255e:	3420      	adds	r4, #32
d0082560:	b2e4      	uxtb	r4, r4
d0082562:	429c      	cmp	r4, r3
d0082564:	f040 83b2 	bne.w	d0082ccc <emit_phonetic_symbol.constprop.0+0x99c>
d0082568:	f812 400e 	ldrb.w	r4, [r2, lr]
d008256c:	2c00      	cmp	r4, #0
d008256e:	f000 8379 	beq.w	d0082c64 <emit_phonetic_symbol.constprop.0+0x934>
d0082572:	18ab      	adds	r3, r5, r2
d0082574:	1c50      	adds	r0, r2, #1
d0082576:	f1a4 0c41 	sub.w	ip, r4, #65	; 0x41
d008257a:	5c5b      	ldrb	r3, [r3, r1]
d008257c:	b282      	uxth	r2, r0
d008257e:	f1a3 0041 	sub.w	r0, r3, #65	; 0x41
d0082582:	2b00      	cmp	r3, #0
d0082584:	d1e4      	bne.n	d0082550 <emit_phonetic_symbol.constprop.0+0x220>
d0082586:	2049      	movs	r0, #73	; 0x49
d0082588:	f8df e0e0 	ldr.w	lr, [pc, #224]	; d008266c <emit_phonetic_symbol.constprop.0+0x33c>
d008258c:	e010      	b.n	d00825b0 <emit_phonetic_symbol.constprop.0+0x280>
d008258e:	2c19      	cmp	r4, #25
d0082590:	d801      	bhi.n	d0082596 <emit_phonetic_symbol.constprop.0+0x266>
d0082592:	3220      	adds	r2, #32
d0082594:	b2d2      	uxtb	r2, r2
d0082596:	f1bc 0f19 	cmp.w	ip, #25
d008259a:	d801      	bhi.n	d00825a0 <emit_phonetic_symbol.constprop.0+0x270>
d008259c:	3020      	adds	r0, #32
d008259e:	b2c0      	uxtb	r0, r0
d00825a0:	4290      	cmp	r0, r2
d00825a2:	f040 8396 	bne.w	d0082cd2 <emit_phonetic_symbol.constprop.0+0x9a2>
d00825a6:	f813 000e 	ldrb.w	r0, [r3, lr]
d00825aa:	2800      	cmp	r0, #0
d00825ac:	f000 8325 	beq.w	d0082bfa <emit_phonetic_symbol.constprop.0+0x8ca>
d00825b0:	18ea      	adds	r2, r5, r3
d00825b2:	1c5c      	adds	r4, r3, #1
d00825b4:	f1a0 0c41 	sub.w	ip, r0, #65	; 0x41
d00825b8:	5c52      	ldrb	r2, [r2, r1]
d00825ba:	b2a3      	uxth	r3, r4
d00825bc:	f1a2 0441 	sub.w	r4, r2, #65	; 0x41
d00825c0:	2a00      	cmp	r2, #0
d00825c2:	d1e4      	bne.n	d008258e <emit_phonetic_symbol.constprop.0+0x25e>
d00825c4:	2049      	movs	r0, #73	; 0x49
d00825c6:	f8df e0a8 	ldr.w	lr, [pc, #168]	; d0082670 <emit_phonetic_symbol.constprop.0+0x340>
d00825ca:	e010      	b.n	d00825ee <emit_phonetic_symbol.constprop.0+0x2be>
d00825cc:	2c19      	cmp	r4, #25
d00825ce:	d801      	bhi.n	d00825d4 <emit_phonetic_symbol.constprop.0+0x2a4>
d00825d0:	3320      	adds	r3, #32
d00825d2:	b2db      	uxtb	r3, r3
d00825d4:	f1bc 0f19 	cmp.w	ip, #25
d00825d8:	d801      	bhi.n	d00825de <emit_phonetic_symbol.constprop.0+0x2ae>
d00825da:	3020      	adds	r0, #32
d00825dc:	b2c0      	uxtb	r0, r0
d00825de:	4298      	cmp	r0, r3
d00825e0:	f040 837a 	bne.w	d0082cd8 <emit_phonetic_symbol.constprop.0+0x9a8>
d00825e4:	f812 000e 	ldrb.w	r0, [r2, lr]
d00825e8:	2800      	cmp	r0, #0
d00825ea:	f000 8306 	beq.w	d0082bfa <emit_phonetic_symbol.constprop.0+0x8ca>
d00825ee:	18ab      	adds	r3, r5, r2
d00825f0:	1c54      	adds	r4, r2, #1
d00825f2:	f1a0 0c41 	sub.w	ip, r0, #65	; 0x41
d00825f6:	5c5b      	ldrb	r3, [r3, r1]
d00825f8:	b2a2      	uxth	r2, r4
d00825fa:	f1a3 0441 	sub.w	r4, r3, #65	; 0x41
d00825fe:	2b00      	cmp	r3, #0
d0082600:	d1e4      	bne.n	d00825cc <emit_phonetic_symbol.constprop.0+0x29c>
d0082602:	2445      	movs	r4, #69	; 0x45
d0082604:	f8df e06c 	ldr.w	lr, [pc, #108]	; d0082674 <emit_phonetic_symbol.constprop.0+0x344>
d0082608:	e010      	b.n	d008262c <emit_phonetic_symbol.constprop.0+0x2fc>
d008260a:	2819      	cmp	r0, #25
d008260c:	d801      	bhi.n	d0082612 <emit_phonetic_symbol.constprop.0+0x2e2>
d008260e:	3220      	adds	r2, #32
d0082610:	b2d2      	uxtb	r2, r2
d0082612:	f1bc 0f19 	cmp.w	ip, #25
d0082616:	d801      	bhi.n	d008261c <emit_phonetic_symbol.constprop.0+0x2ec>
d0082618:	3420      	adds	r4, #32
d008261a:	b2e4      	uxtb	r4, r4
d008261c:	4294      	cmp	r4, r2
d008261e:	f040 838e 	bne.w	d0082d3e <emit_phonetic_symbol.constprop.0+0xa0e>
d0082622:	f813 400e 	ldrb.w	r4, [r3, lr]
d0082626:	2c00      	cmp	r4, #0
d0082628:	f000 8359 	beq.w	d0082cde <emit_phonetic_symbol.constprop.0+0x9ae>
d008262c:	18ea      	adds	r2, r5, r3
d008262e:	1c58      	adds	r0, r3, #1
d0082630:	f1a4 0c41 	sub.w	ip, r4, #65	; 0x41
d0082634:	5c52      	ldrb	r2, [r2, r1]
d0082636:	b283      	uxth	r3, r0
d0082638:	f1a2 0041 	sub.w	r0, r2, #65	; 0x41
d008263c:	2a00      	cmp	r2, #0
d008263e:	d1e4      	bne.n	d008260a <emit_phonetic_symbol.constprop.0+0x2da>
d0082640:	2441      	movs	r4, #65	; 0x41
d0082642:	f8df e034 	ldr.w	lr, [pc, #52]	; d0082678 <emit_phonetic_symbol.constprop.0+0x348>
d0082646:	e02a      	b.n	d008269e <emit_phonetic_symbol.constprop.0+0x36e>
d0082648:	d0085ce4 	.word	0xd0085ce4
d008264c:	d0085ce8 	.word	0xd0085ce8
d0082650:	d0085cec 	.word	0xd0085cec
d0082654:	d0085c08 	.word	0xd0085c08
d0082658:	d0085cf0 	.word	0xd0085cf0
d008265c:	d0085cf4 	.word	0xd0085cf4
d0082660:	d0085ce0 	.word	0xd0085ce0
d0082664:	d0085cf8 	.word	0xd0085cf8
d0082668:	d0085bf4 	.word	0xd0085bf4
d008266c:	d0085c18 	.word	0xd0085c18
d0082670:	d0085cfc 	.word	0xd0085cfc
d0082674:	d0085c00 	.word	0xd0085c00
d0082678:	d0085c28 	.word	0xd0085c28
d008267c:	2819      	cmp	r0, #25
d008267e:	d801      	bhi.n	d0082684 <emit_phonetic_symbol.constprop.0+0x354>
d0082680:	3320      	adds	r3, #32
d0082682:	b2db      	uxtb	r3, r3
d0082684:	f1bc 0f19 	cmp.w	ip, #25
d0082688:	d801      	bhi.n	d008268e <emit_phonetic_symbol.constprop.0+0x35e>
d008268a:	3420      	adds	r4, #32
d008268c:	b2e4      	uxtb	r4, r4
d008268e:	429c      	cmp	r4, r3
d0082690:	f040 8382 	bne.w	d0082d98 <emit_phonetic_symbol.constprop.0+0xa68>
d0082694:	f812 400e 	ldrb.w	r4, [r2, lr]
d0082698:	2c00      	cmp	r4, #0
d008269a:	f000 8353 	beq.w	d0082d44 <emit_phonetic_symbol.constprop.0+0xa14>
d008269e:	18ab      	adds	r3, r5, r2
d00826a0:	1c50      	adds	r0, r2, #1
d00826a2:	f1a4 0c41 	sub.w	ip, r4, #65	; 0x41
d00826a6:	5c5b      	ldrb	r3, [r3, r1]
d00826a8:	b282      	uxth	r2, r0
d00826aa:	f1a3 0041 	sub.w	r0, r3, #65	; 0x41
d00826ae:	2b00      	cmp	r3, #0
d00826b0:	d1e4      	bne.n	d008267c <emit_phonetic_symbol.constprop.0+0x34c>
d00826b2:	2241      	movs	r2, #65	; 0x41
d00826b4:	f8df e3e4 	ldr.w	lr, [pc, #996]	; d0082a9c <emit_phonetic_symbol.constprop.0+0x76c>
d00826b8:	e010      	b.n	d00826dc <emit_phonetic_symbol.constprop.0+0x3ac>
d00826ba:	2c19      	cmp	r4, #25
d00826bc:	d801      	bhi.n	d00826c2 <emit_phonetic_symbol.constprop.0+0x392>
d00826be:	3020      	adds	r0, #32
d00826c0:	b2c0      	uxtb	r0, r0
d00826c2:	f1bc 0f19 	cmp.w	ip, #25
d00826c6:	d801      	bhi.n	d00826cc <emit_phonetic_symbol.constprop.0+0x39c>
d00826c8:	3220      	adds	r2, #32
d00826ca:	b2d2      	uxtb	r2, r2
d00826cc:	4282      	cmp	r2, r0
d00826ce:	f040 83a7 	bne.w	d0082e20 <emit_phonetic_symbol.constprop.0+0xaf0>
d00826d2:	f813 200e 	ldrb.w	r2, [r3, lr]
d00826d6:	2a00      	cmp	r2, #0
d00826d8:	f000 839d 	beq.w	d0082e16 <emit_phonetic_symbol.constprop.0+0xae6>
d00826dc:	18e8      	adds	r0, r5, r3
d00826de:	1c5c      	adds	r4, r3, #1
d00826e0:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d00826e4:	5c40      	ldrb	r0, [r0, r1]
d00826e6:	b2a3      	uxth	r3, r4
d00826e8:	f1a0 0441 	sub.w	r4, r0, #65	; 0x41
d00826ec:	2800      	cmp	r0, #0
d00826ee:	d1e4      	bne.n	d00826ba <emit_phonetic_symbol.constprop.0+0x38a>
d00826f0:	2241      	movs	r2, #65	; 0x41
d00826f2:	f8df e3ac 	ldr.w	lr, [pc, #940]	; d0082aa0 <emit_phonetic_symbol.constprop.0+0x770>
d00826f6:	e010      	b.n	d008271a <emit_phonetic_symbol.constprop.0+0x3ea>
d00826f8:	f1bc 0f19 	cmp.w	ip, #25
d00826fc:	d801      	bhi.n	d0082702 <emit_phonetic_symbol.constprop.0+0x3d2>
d00826fe:	3320      	adds	r3, #32
d0082700:	b2db      	uxtb	r3, r3
d0082702:	2c19      	cmp	r4, #25
d0082704:	d801      	bhi.n	d008270a <emit_phonetic_symbol.constprop.0+0x3da>
d0082706:	3220      	adds	r2, #32
d0082708:	b2d2      	uxtb	r2, r2
d008270a:	429a      	cmp	r2, r3
d008270c:	f040 838b 	bne.w	d0082e26 <emit_phonetic_symbol.constprop.0+0xaf6>
d0082710:	f810 200e 	ldrb.w	r2, [r0, lr]
d0082714:	2a00      	cmp	r2, #0
d0082716:	f000 8355 	beq.w	d0082dc4 <emit_phonetic_symbol.constprop.0+0xa94>
d008271a:	182b      	adds	r3, r5, r0
d008271c:	f100 0c01 	add.w	ip, r0, #1
d0082720:	f1a2 0441 	sub.w	r4, r2, #65	; 0x41
d0082724:	5c5b      	ldrb	r3, [r3, r1]
d0082726:	fa1f f08c 	uxth.w	r0, ip
d008272a:	f1a3 0c41 	sub.w	ip, r3, #65	; 0x41
d008272e:	2b00      	cmp	r3, #0
d0082730:	d1e2      	bne.n	d00826f8 <emit_phonetic_symbol.constprop.0+0x3c8>
d0082732:	2241      	movs	r2, #65	; 0x41
d0082734:	f8df e36c 	ldr.w	lr, [pc, #876]	; d0082aa4 <emit_phonetic_symbol.constprop.0+0x774>
d0082738:	e00f      	b.n	d008275a <emit_phonetic_symbol.constprop.0+0x42a>
d008273a:	f1bc 0f19 	cmp.w	ip, #25
d008273e:	d801      	bhi.n	d0082744 <emit_phonetic_symbol.constprop.0+0x414>
d0082740:	3020      	adds	r0, #32
d0082742:	b2c0      	uxtb	r0, r0
d0082744:	2c19      	cmp	r4, #25
d0082746:	d801      	bhi.n	d008274c <emit_phonetic_symbol.constprop.0+0x41c>
d0082748:	3220      	adds	r2, #32
d008274a:	b2d2      	uxtb	r2, r2
d008274c:	4282      	cmp	r2, r0
d008274e:	d110      	bne.n	d0082772 <emit_phonetic_symbol.constprop.0+0x442>
d0082750:	f813 200e 	ldrb.w	r2, [r3, lr]
d0082754:	2a00      	cmp	r2, #0
d0082756:	f000 8335 	beq.w	d0082dc4 <emit_phonetic_symbol.constprop.0+0xa94>
d008275a:	18e8      	adds	r0, r5, r3
d008275c:	f103 0c01 	add.w	ip, r3, #1
d0082760:	f1a2 0441 	sub.w	r4, r2, #65	; 0x41
d0082764:	5c40      	ldrb	r0, [r0, r1]
d0082766:	fa1f f38c 	uxth.w	r3, ip
d008276a:	f1a0 0c41 	sub.w	ip, r0, #65	; 0x41
d008276e:	2800      	cmp	r0, #0
d0082770:	d1e3      	bne.n	d008273a <emit_phonetic_symbol.constprop.0+0x40a>
d0082772:	4ab6      	ldr	r2, [pc, #728]	; (d0082a4c <emit_phonetic_symbol.constprop.0+0x71c>)
d0082774:	4628      	mov	r0, r5
d0082776:	f7fd fcd3 	bl	d0080120 <starts_with_text>
d008277a:	4604      	mov	r4, r0
d008277c:	2800      	cmp	r0, #0
d008277e:	f040 8359 	bne.w	d0082e34 <emit_phonetic_symbol.constprop.0+0xb04>
d0082782:	4ab3      	ldr	r2, [pc, #716]	; (d0082a50 <emit_phonetic_symbol.constprop.0+0x720>)
d0082784:	4628      	mov	r0, r5
d0082786:	f7fd fccb 	bl	d0080120 <starts_with_text>
d008278a:	2800      	cmp	r0, #0
d008278c:	f040 8356 	bne.w	d0082e3c <emit_phonetic_symbol.constprop.0+0xb0c>
d0082790:	4ab0      	ldr	r2, [pc, #704]	; (d0082a54 <emit_phonetic_symbol.constprop.0+0x724>)
d0082792:	4628      	mov	r0, r5
d0082794:	f7fd fcc4 	bl	d0080120 <starts_with_text>
d0082798:	2800      	cmp	r0, #0
d008279a:	f040 8347 	bne.w	d0082e2c <emit_phonetic_symbol.constprop.0+0xafc>
d008279e:	4aae      	ldr	r2, [pc, #696]	; (d0082a58 <emit_phonetic_symbol.constprop.0+0x728>)
d00827a0:	4628      	mov	r0, r5
d00827a2:	f7fd fcbd 	bl	d0080120 <starts_with_text>
d00827a6:	4604      	mov	r4, r0
d00827a8:	2800      	cmp	r0, #0
d00827aa:	f040 833f 	bne.w	d0082e2c <emit_phonetic_symbol.constprop.0+0xafc>
d00827ae:	4aab      	ldr	r2, [pc, #684]	; (d0082a5c <emit_phonetic_symbol.constprop.0+0x72c>)
d00827b0:	4628      	mov	r0, r5
d00827b2:	f7fd fcb5 	bl	d0080120 <starts_with_text>
d00827b6:	2800      	cmp	r0, #0
d00827b8:	f040 8344 	bne.w	d0082e44 <emit_phonetic_symbol.constprop.0+0xb14>
d00827bc:	4aa8      	ldr	r2, [pc, #672]	; (d0082a60 <emit_phonetic_symbol.constprop.0+0x730>)
d00827be:	4628      	mov	r0, r5
d00827c0:	f7fd fcae 	bl	d0080120 <starts_with_text>
d00827c4:	2800      	cmp	r0, #0
d00827c6:	f040 83c7 	bne.w	d0082f58 <emit_phonetic_symbol.constprop.0+0xc28>
d00827ca:	4aa6      	ldr	r2, [pc, #664]	; (d0082a64 <emit_phonetic_symbol.constprop.0+0x734>)
d00827cc:	4628      	mov	r0, r5
d00827ce:	f7fd fca7 	bl	d0080120 <starts_with_text>
d00827d2:	2800      	cmp	r0, #0
d00827d4:	f040 83b8 	bne.w	d0082f48 <emit_phonetic_symbol.constprop.0+0xc18>
d00827d8:	4aa3      	ldr	r2, [pc, #652]	; (d0082a68 <emit_phonetic_symbol.constprop.0+0x738>)
d00827da:	4628      	mov	r0, r5
d00827dc:	f7fd fca0 	bl	d0080120 <starts_with_text>
d00827e0:	2800      	cmp	r0, #0
d00827e2:	f040 83a9 	bne.w	d0082f38 <emit_phonetic_symbol.constprop.0+0xc08>
d00827e6:	4aa1      	ldr	r2, [pc, #644]	; (d0082a6c <emit_phonetic_symbol.constprop.0+0x73c>)
d00827e8:	4628      	mov	r0, r5
d00827ea:	f7fd fc99 	bl	d0080120 <starts_with_text>
d00827ee:	2800      	cmp	r0, #0
d00827f0:	f040 839a 	bne.w	d0082f28 <emit_phonetic_symbol.constprop.0+0xbf8>
d00827f4:	4a9e      	ldr	r2, [pc, #632]	; (d0082a70 <emit_phonetic_symbol.constprop.0+0x740>)
d00827f6:	4628      	mov	r0, r5
d00827f8:	f7fd fc92 	bl	d0080120 <starts_with_text>
d00827fc:	2800      	cmp	r0, #0
d00827fe:	f040 838b 	bne.w	d0082f18 <emit_phonetic_symbol.constprop.0+0xbe8>
d0082802:	4a9c      	ldr	r2, [pc, #624]	; (d0082a74 <emit_phonetic_symbol.constprop.0+0x744>)
d0082804:	4628      	mov	r0, r5
d0082806:	f7fd fc8b 	bl	d0080120 <starts_with_text>
d008280a:	4604      	mov	r4, r0
d008280c:	2800      	cmp	r0, #0
d008280e:	f040 8383 	bne.w	d0082f18 <emit_phonetic_symbol.constprop.0+0xbe8>
d0082812:	4a99      	ldr	r2, [pc, #612]	; (d0082a78 <emit_phonetic_symbol.constprop.0+0x748>)
d0082814:	4628      	mov	r0, r5
d0082816:	f7fd fc83 	bl	d0080120 <starts_with_text>
d008281a:	4680      	mov	r8, r0
d008281c:	2800      	cmp	r0, #0
d008281e:	f040 8372 	bne.w	d0082f06 <emit_phonetic_symbol.constprop.0+0xbd6>
d0082822:	4a96      	ldr	r2, [pc, #600]	; (d0082a7c <emit_phonetic_symbol.constprop.0+0x74c>)
d0082824:	4628      	mov	r0, r5
d0082826:	f7fd fc7b 	bl	d0080120 <starts_with_text>
d008282a:	4604      	mov	r4, r0
d008282c:	2800      	cmp	r0, #0
d008282e:	f040 8361 	bne.w	d0082ef4 <emit_phonetic_symbol.constprop.0+0xbc4>
d0082832:	4a93      	ldr	r2, [pc, #588]	; (d0082a80 <emit_phonetic_symbol.constprop.0+0x750>)
d0082834:	4628      	mov	r0, r5
d0082836:	f7fd fc73 	bl	d0080120 <starts_with_text>
d008283a:	2800      	cmp	r0, #0
d008283c:	f040 8351 	bne.w	d0082ee2 <emit_phonetic_symbol.constprop.0+0xbb2>
d0082840:	5c6b      	ldrb	r3, [r5, r1]
d0082842:	f1a3 0241 	sub.w	r2, r3, #65	; 0x41
d0082846:	2a19      	cmp	r2, #25
d0082848:	d801      	bhi.n	d008284e <emit_phonetic_symbol.constprop.0+0x51e>
d008284a:	3320      	adds	r3, #32
d008284c:	b2db      	uxtb	r3, r3
d008284e:	3b62      	subs	r3, #98	; 0x62
d0082850:	2b18      	cmp	r3, #24
d0082852:	d84f      	bhi.n	d00828f4 <emit_phonetic_symbol.constprop.0+0x5c4>
d0082854:	e8df f013 	tbh	[pc, r3, lsl #1]
d0082858:	004e03b2 	.word	0x004e03b2
d008285c:	004e03ac 	.word	0x004e03ac
d0082860:	03a003a6 	.word	0x03a003a6
d0082864:	004e039a 	.word	0x004e039a
d0082868:	038e0394 	.word	0x038e0394
d008286c:	033f0388 	.word	0x033f0388
d0082870:	004e0339 	.word	0x004e0339
d0082874:	032d0333 	.word	0x032d0333
d0082878:	030f031b 	.word	0x030f031b
d008287c:	004e0327 	.word	0x004e0327
d0082880:	03150321 	.word	0x03150321
d0082884:	0304030a 	.word	0x0304030a
d0082888:	02fa      	.short	0x02fa
d008288a:	8833      	ldrh	r3, [r6, #0]
d008288c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082890:	d22d      	bcs.n	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d0082892:	4a7c      	ldr	r2, [pc, #496]	; (d0082a84 <emit_phonetic_symbol.constprop.0+0x754>)
d0082894:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082898:	2011      	movs	r0, #17
d008289a:	2137      	movs	r1, #55	; 0x37
d008289c:	4d7a      	ldr	r5, [pc, #488]	; (d0082a88 <emit_phonetic_symbol.constprop.0+0x758>)
d008289e:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d00828a2:	8833      	ldrh	r3, [r6, #0]
d00828a4:	4628      	mov	r0, r5
d00828a6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00828aa:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d00828ae:	8059      	strh	r1, [r3, #2]
d00828b0:	8833      	ldrh	r3, [r6, #0]
d00828b2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00828b6:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d00828ba:	7114      	strb	r4, [r2, #4]
d00828bc:	8833      	ldrh	r3, [r6, #0]
d00828be:	3301      	adds	r3, #1
d00828c0:	8033      	strh	r3, [r6, #0]
d00828c2:	f002 ff18 	bl	d00856f6 <strlen>
d00828c6:	1cc2      	adds	r2, r0, #3
d00828c8:	4603      	mov	r3, r0
d00828ca:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00828ce:	d20d      	bcs.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d00828d0:	b138      	cbz	r0, d00828e2 <emit_phonetic_symbol.constprop.0+0x5b2>
d00828d2:	182a      	adds	r2, r5, r0
d00828d4:	2120      	movs	r1, #32
d00828d6:	4628      	mov	r0, r5
d00828d8:	54e9      	strb	r1, [r5, r3]
d00828da:	7054      	strb	r4, [r2, #1]
d00828dc:	f002 ff0b 	bl	d00856f6 <strlen>
d00828e0:	4603      	mov	r3, r0
d00828e2:	18e8      	adds	r0, r5, r3
d00828e4:	2202      	movs	r2, #2
d00828e6:	4969      	ldr	r1, [pc, #420]	; (d0082a8c <emit_phonetic_symbol.constprop.0+0x75c>)
d00828e8:	f002 fd68 	bl	d00853bc <memcpy>
d00828ec:	8839      	ldrh	r1, [r7, #0]
d00828ee:	3102      	adds	r1, #2
d00828f0:	2001      	movs	r0, #1
d00828f2:	8039      	strh	r1, [r7, #0]
d00828f4:	b002      	add	sp, #8
d00828f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00828fa:	f04f 0853 	mov.w	r8, #83	; 0x53
d00828fe:	2300      	movs	r3, #0
d0082900:	e540      	b.n	d0082384 <emit_phonetic_symbol.constprop.0+0x54>
d0082902:	8833      	ldrh	r3, [r6, #0]
d0082904:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082908:	d2f1      	bcs.n	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d008290a:	4a5e      	ldr	r2, [pc, #376]	; (d0082a84 <emit_phonetic_symbol.constprop.0+0x754>)
d008290c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082910:	201b      	movs	r0, #27
d0082912:	2158      	movs	r1, #88	; 0x58
d0082914:	4d5c      	ldr	r5, [pc, #368]	; (d0082a88 <emit_phonetic_symbol.constprop.0+0x758>)
d0082916:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d008291a:	8833      	ldrh	r3, [r6, #0]
d008291c:	4628      	mov	r0, r5
d008291e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082922:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0082926:	8059      	strh	r1, [r3, #2]
d0082928:	8833      	ldrh	r3, [r6, #0]
d008292a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008292e:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d0082932:	f882 8004 	strb.w	r8, [r2, #4]
d0082936:	8833      	ldrh	r3, [r6, #0]
d0082938:	3301      	adds	r3, #1
d008293a:	8033      	strh	r3, [r6, #0]
d008293c:	f002 fedb 	bl	d00856f6 <strlen>
d0082940:	1d02      	adds	r2, r0, #4
d0082942:	4603      	mov	r3, r0
d0082944:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082948:	d2d0      	bcs.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d008294a:	b140      	cbz	r0, d008295e <emit_phonetic_symbol.constprop.0+0x62e>
d008294c:	182a      	adds	r2, r5, r0
d008294e:	2120      	movs	r1, #32
d0082950:	4628      	mov	r0, r5
d0082952:	54e9      	strb	r1, [r5, r3]
d0082954:	f882 8001 	strb.w	r8, [r2, #1]
d0082958:	f002 fecd 	bl	d00856f6 <strlen>
d008295c:	4603      	mov	r3, r0
d008295e:	18e8      	adds	r0, r5, r3
d0082960:	2203      	movs	r2, #3
d0082962:	494b      	ldr	r1, [pc, #300]	; (d0082a90 <emit_phonetic_symbol.constprop.0+0x760>)
d0082964:	f002 fd2a 	bl	d00853bc <memcpy>
d0082968:	e7c0      	b.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d008296a:	2254      	movs	r2, #84	; 0x54
d008296c:	2400      	movs	r4, #0
d008296e:	e52a      	b.n	d00823c6 <emit_phonetic_symbol.constprop.0+0x96>
d0082970:	8833      	ldrh	r3, [r6, #0]
d0082972:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082976:	d2ba      	bcs.n	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d0082978:	4942      	ldr	r1, [pc, #264]	; (d0082a84 <emit_phonetic_symbol.constprop.0+0x754>)
d008297a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008297e:	201d      	movs	r0, #29
d0082980:	244a      	movs	r4, #74	; 0x4a
d0082982:	4d41      	ldr	r5, [pc, #260]	; (d0082a88 <emit_phonetic_symbol.constprop.0+0x758>)
d0082984:	f801 0013 	strb.w	r0, [r1, r3, lsl #1]
d0082988:	8833      	ldrh	r3, [r6, #0]
d008298a:	4628      	mov	r0, r5
d008298c:	9201      	str	r2, [sp, #4]
d008298e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082992:	eb01 0343 	add.w	r3, r1, r3, lsl #1
d0082996:	805c      	strh	r4, [r3, #2]
d0082998:	8833      	ldrh	r3, [r6, #0]
d008299a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008299e:	eb01 0143 	add.w	r1, r1, r3, lsl #1
d00829a2:	710a      	strb	r2, [r1, #4]
d00829a4:	8833      	ldrh	r3, [r6, #0]
d00829a6:	3301      	adds	r3, #1
d00829a8:	8033      	strh	r3, [r6, #0]
d00829aa:	f002 fea4 	bl	d00856f6 <strlen>
d00829ae:	1d01      	adds	r1, r0, #4
d00829b0:	4603      	mov	r3, r0
d00829b2:	9a01      	ldr	r2, [sp, #4]
d00829b4:	f5b1 6f00 	cmp.w	r1, #2048	; 0x800
d00829b8:	d298      	bcs.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d00829ba:	b138      	cbz	r0, d00829cc <emit_phonetic_symbol.constprop.0+0x69c>
d00829bc:	1829      	adds	r1, r5, r0
d00829be:	2420      	movs	r4, #32
d00829c0:	4628      	mov	r0, r5
d00829c2:	54ec      	strb	r4, [r5, r3]
d00829c4:	704a      	strb	r2, [r1, #1]
d00829c6:	f002 fe96 	bl	d00856f6 <strlen>
d00829ca:	4603      	mov	r3, r0
d00829cc:	18e8      	adds	r0, r5, r3
d00829ce:	2203      	movs	r2, #3
d00829d0:	4930      	ldr	r1, [pc, #192]	; (d0082a94 <emit_phonetic_symbol.constprop.0+0x764>)
d00829d2:	f002 fcf3 	bl	d00853bc <memcpy>
d00829d6:	e789      	b.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d00829d8:	2444      	movs	r4, #68	; 0x44
d00829da:	2300      	movs	r3, #0
d00829dc:	e514      	b.n	d0082408 <emit_phonetic_symbol.constprop.0+0xd8>
d00829de:	8833      	ldrh	r3, [r6, #0]
d00829e0:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00829e4:	d283      	bcs.n	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d00829e6:	4a27      	ldr	r2, [pc, #156]	; (d0082a84 <emit_phonetic_symbol.constprop.0+0x754>)
d00829e8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00829ec:	200e      	movs	r0, #14
d00829ee:	2144      	movs	r1, #68	; 0x44
d00829f0:	4d25      	ldr	r5, [pc, #148]	; (d0082a88 <emit_phonetic_symbol.constprop.0+0x758>)
d00829f2:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d00829f6:	8833      	ldrh	r3, [r6, #0]
d00829f8:	4628      	mov	r0, r5
d00829fa:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00829fe:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0082a02:	8059      	strh	r1, [r3, #2]
d0082a04:	8833      	ldrh	r3, [r6, #0]
d0082a06:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082a0a:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d0082a0e:	7114      	strb	r4, [r2, #4]
d0082a10:	8833      	ldrh	r3, [r6, #0]
d0082a12:	3301      	adds	r3, #1
d0082a14:	8033      	strh	r3, [r6, #0]
d0082a16:	f002 fe6e 	bl	d00856f6 <strlen>
d0082a1a:	1d02      	adds	r2, r0, #4
d0082a1c:	4603      	mov	r3, r0
d0082a1e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082a22:	f4bf af63 	bcs.w	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082a26:	b138      	cbz	r0, d0082a38 <emit_phonetic_symbol.constprop.0+0x708>
d0082a28:	182a      	adds	r2, r5, r0
d0082a2a:	2120      	movs	r1, #32
d0082a2c:	4628      	mov	r0, r5
d0082a2e:	54e9      	strb	r1, [r5, r3]
d0082a30:	7054      	strb	r4, [r2, #1]
d0082a32:	f002 fe60 	bl	d00856f6 <strlen>
d0082a36:	4603      	mov	r3, r0
d0082a38:	18e8      	adds	r0, r5, r3
d0082a3a:	2203      	movs	r2, #3
d0082a3c:	4916      	ldr	r1, [pc, #88]	; (d0082a98 <emit_phonetic_symbol.constprop.0+0x768>)
d0082a3e:	f002 fcbd 	bl	d00853bc <memcpy>
d0082a42:	e753      	b.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082a44:	2443      	movs	r4, #67	; 0x43
d0082a46:	2200      	movs	r2, #0
d0082a48:	e4ff      	b.n	d008244a <emit_phonetic_symbol.constprop.0+0x11a>
d0082a4a:	bf00      	nop
d0082a4c:	d0085bf8 	.word	0xd0085bf8
d0082a50:	d0085d04 	.word	0xd0085d04
d0082a54:	d0085bfc 	.word	0xd0085bfc
d0082a58:	d0085d08 	.word	0xd0085d08
d0082a5c:	d0085c54 	.word	0xd0085c54
d0082a60:	d0085d0c 	.word	0xd0085d0c
d0082a64:	d0085d10 	.word	0xd0085d10
d0082a68:	d0085d14 	.word	0xd0085d14
d0082a6c:	d0085d18 	.word	0xd0085d18
d0082a70:	d0085d1c 	.word	0xd0085d1c
d0082a74:	d0085d20 	.word	0xd0085d20
d0082a78:	d0085d24 	.word	0xd0085d24
d0082a7c:	d0085d28 	.word	0xd0085d28
d0082a80:	d0085d2c 	.word	0xd0085d2c
d0082a84:	d00861a8 	.word	0xd00861a8
d0082a88:	d00c8460 	.word	0xd00c8460
d0082a8c:	d0085c8c 	.word	0xd0085c8c
d0082a90:	d0085ce8 	.word	0xd0085ce8
d0082a94:	d0085cec 	.word	0xd0085cec
d0082a98:	d0085c08 	.word	0xd0085c08
d0082a9c:	d0085bf0 	.word	0xd0085bf0
d0082aa0:	d0085c0c 	.word	0xd0085c0c
d0082aa4:	d0085d00 	.word	0xd0085d00
d0082aa8:	8833      	ldrh	r3, [r6, #0]
d0082aaa:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082aae:	f4bf af1e 	bcs.w	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d0082ab2:	4abb      	ldr	r2, [pc, #748]	; (d0082da0 <emit_phonetic_symbol.constprop.0+0xa70>)
d0082ab4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082ab8:	200c      	movs	r0, #12
d0082aba:	2158      	movs	r1, #88	; 0x58
d0082abc:	4db9      	ldr	r5, [pc, #740]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082abe:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d0082ac2:	8833      	ldrh	r3, [r6, #0]
d0082ac4:	4628      	mov	r0, r5
d0082ac6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082aca:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0082ace:	8059      	strh	r1, [r3, #2]
d0082ad0:	8833      	ldrh	r3, [r6, #0]
d0082ad2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082ad6:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d0082ada:	7114      	strb	r4, [r2, #4]
d0082adc:	8833      	ldrh	r3, [r6, #0]
d0082ade:	3301      	adds	r3, #1
d0082ae0:	8033      	strh	r3, [r6, #0]
d0082ae2:	f002 fe08 	bl	d00856f6 <strlen>
d0082ae6:	1d02      	adds	r2, r0, #4
d0082ae8:	4603      	mov	r3, r0
d0082aea:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082aee:	f4bf aefd 	bcs.w	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082af2:	b138      	cbz	r0, d0082b04 <emit_phonetic_symbol.constprop.0+0x7d4>
d0082af4:	182a      	adds	r2, r5, r0
d0082af6:	2120      	movs	r1, #32
d0082af8:	4628      	mov	r0, r5
d0082afa:	54e9      	strb	r1, [r5, r3]
d0082afc:	7054      	strb	r4, [r2, #1]
d0082afe:	f002 fdfa 	bl	d00856f6 <strlen>
d0082b02:	4603      	mov	r3, r0
d0082b04:	18e8      	adds	r0, r5, r3
d0082b06:	2203      	movs	r2, #3
d0082b08:	49a7      	ldr	r1, [pc, #668]	; (d0082da8 <emit_phonetic_symbol.constprop.0+0xa78>)
d0082b0a:	f002 fc57 	bl	d00853bc <memcpy>
d0082b0e:	e6ed      	b.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082b10:	245a      	movs	r4, #90	; 0x5a
d0082b12:	2300      	movs	r3, #0
d0082b14:	e4ba      	b.n	d008248c <emit_phonetic_symbol.constprop.0+0x15c>
d0082b16:	8833      	ldrh	r3, [r6, #0]
d0082b18:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082b1c:	f4bf aee7 	bcs.w	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d0082b20:	4a9f      	ldr	r2, [pc, #636]	; (d0082da0 <emit_phonetic_symbol.constprop.0+0xa70>)
d0082b22:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082b26:	2017      	movs	r0, #23
d0082b28:	215a      	movs	r1, #90	; 0x5a
d0082b2a:	2400      	movs	r4, #0
d0082b2c:	4d9d      	ldr	r5, [pc, #628]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082b2e:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d0082b32:	8833      	ldrh	r3, [r6, #0]
d0082b34:	4628      	mov	r0, r5
d0082b36:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082b3a:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0082b3e:	8059      	strh	r1, [r3, #2]
d0082b40:	8833      	ldrh	r3, [r6, #0]
d0082b42:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082b46:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d0082b4a:	7114      	strb	r4, [r2, #4]
d0082b4c:	8833      	ldrh	r3, [r6, #0]
d0082b4e:	3301      	adds	r3, #1
d0082b50:	8033      	strh	r3, [r6, #0]
d0082b52:	f002 fdd0 	bl	d00856f6 <strlen>
d0082b56:	1d02      	adds	r2, r0, #4
d0082b58:	4603      	mov	r3, r0
d0082b5a:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082b5e:	f4bf aec5 	bcs.w	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082b62:	b138      	cbz	r0, d0082b74 <emit_phonetic_symbol.constprop.0+0x844>
d0082b64:	182a      	adds	r2, r5, r0
d0082b66:	2120      	movs	r1, #32
d0082b68:	4628      	mov	r0, r5
d0082b6a:	54e9      	strb	r1, [r5, r3]
d0082b6c:	7054      	strb	r4, [r2, #1]
d0082b6e:	f002 fdc2 	bl	d00856f6 <strlen>
d0082b72:	4603      	mov	r3, r0
d0082b74:	18e8      	adds	r0, r5, r3
d0082b76:	2203      	movs	r2, #3
d0082b78:	498c      	ldr	r1, [pc, #560]	; (d0082dac <emit_phonetic_symbol.constprop.0+0xa7c>)
d0082b7a:	f002 fc1f 	bl	d00853bc <memcpy>
d0082b7e:	e6b5      	b.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082b80:	8833      	ldrh	r3, [r6, #0]
d0082b82:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082b86:	f4bf aeb2 	bcs.w	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d0082b8a:	4a85      	ldr	r2, [pc, #532]	; (d0082da0 <emit_phonetic_symbol.constprop.0+0xa70>)
d0082b8c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082b90:	2022      	movs	r0, #34	; 0x22
d0082b92:	2156      	movs	r1, #86	; 0x56
d0082b94:	4d83      	ldr	r5, [pc, #524]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082b96:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d0082b9a:	8833      	ldrh	r3, [r6, #0]
d0082b9c:	4628      	mov	r0, r5
d0082b9e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082ba2:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0082ba6:	8059      	strh	r1, [r3, #2]
d0082ba8:	8833      	ldrh	r3, [r6, #0]
d0082baa:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082bae:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d0082bb2:	7114      	strb	r4, [r2, #4]
d0082bb4:	8833      	ldrh	r3, [r6, #0]
d0082bb6:	3301      	adds	r3, #1
d0082bb8:	8033      	strh	r3, [r6, #0]
d0082bba:	f002 fd9c 	bl	d00856f6 <strlen>
d0082bbe:	1d02      	adds	r2, r0, #4
d0082bc0:	4603      	mov	r3, r0
d0082bc2:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082bc6:	f4bf ae91 	bcs.w	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082bca:	b138      	cbz	r0, d0082bdc <emit_phonetic_symbol.constprop.0+0x8ac>
d0082bcc:	182a      	adds	r2, r5, r0
d0082bce:	2120      	movs	r1, #32
d0082bd0:	4628      	mov	r0, r5
d0082bd2:	54e9      	strb	r1, [r5, r3]
d0082bd4:	7054      	strb	r4, [r2, #1]
d0082bd6:	f002 fd8e 	bl	d00856f6 <strlen>
d0082bda:	4603      	mov	r3, r0
d0082bdc:	18e8      	adds	r0, r5, r3
d0082bde:	2203      	movs	r2, #3
d0082be0:	4973      	ldr	r1, [pc, #460]	; (d0082db0 <emit_phonetic_symbol.constprop.0+0xa80>)
d0082be2:	f002 fbeb 	bl	d00853bc <memcpy>
d0082be6:	e681      	b.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082be8:	204e      	movs	r0, #78	; 0x4e
d0082bea:	2200      	movs	r2, #0
d0082bec:	e46f      	b.n	d00824ce <emit_phonetic_symbol.constprop.0+0x19e>
d0082bee:	204e      	movs	r0, #78	; 0x4e
d0082bf0:	2300      	movs	r3, #0
d0082bf2:	e48b      	b.n	d008250c <emit_phonetic_symbol.constprop.0+0x1dc>
d0082bf4:	2449      	movs	r4, #73	; 0x49
d0082bf6:	2200      	movs	r2, #0
d0082bf8:	e4a7      	b.n	d008254a <emit_phonetic_symbol.constprop.0+0x21a>
d0082bfa:	8833      	ldrh	r3, [r6, #0]
d0082bfc:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082c00:	f4bf ae75 	bcs.w	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d0082c04:	4a66      	ldr	r2, [pc, #408]	; (d0082da0 <emit_phonetic_symbol.constprop.0+0xa70>)
d0082c06:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082c0a:	2007      	movs	r0, #7
d0082c0c:	216e      	movs	r1, #110	; 0x6e
d0082c0e:	2400      	movs	r4, #0
d0082c10:	4d64      	ldr	r5, [pc, #400]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082c12:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d0082c16:	8833      	ldrh	r3, [r6, #0]
d0082c18:	4628      	mov	r0, r5
d0082c1a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082c1e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0082c22:	8059      	strh	r1, [r3, #2]
d0082c24:	8833      	ldrh	r3, [r6, #0]
d0082c26:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082c2a:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d0082c2e:	7114      	strb	r4, [r2, #4]
d0082c30:	8833      	ldrh	r3, [r6, #0]
d0082c32:	3301      	adds	r3, #1
d0082c34:	8033      	strh	r3, [r6, #0]
d0082c36:	f002 fd5e 	bl	d00856f6 <strlen>
d0082c3a:	1d02      	adds	r2, r0, #4
d0082c3c:	4603      	mov	r3, r0
d0082c3e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082c42:	f4bf ae53 	bcs.w	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082c46:	b138      	cbz	r0, d0082c58 <emit_phonetic_symbol.constprop.0+0x928>
d0082c48:	182a      	adds	r2, r5, r0
d0082c4a:	2120      	movs	r1, #32
d0082c4c:	4628      	mov	r0, r5
d0082c4e:	54e9      	strb	r1, [r5, r3]
d0082c50:	7054      	strb	r4, [r2, #1]
d0082c52:	f002 fd50 	bl	d00856f6 <strlen>
d0082c56:	4603      	mov	r3, r0
d0082c58:	18e8      	adds	r0, r5, r3
d0082c5a:	2203      	movs	r2, #3
d0082c5c:	4955      	ldr	r1, [pc, #340]	; (d0082db4 <emit_phonetic_symbol.constprop.0+0xa84>)
d0082c5e:	f002 fbad 	bl	d00853bc <memcpy>
d0082c62:	e643      	b.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082c64:	8833      	ldrh	r3, [r6, #0]
d0082c66:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082c6a:	f4bf ae40 	bcs.w	d00828ee <emit_phonetic_symbol.constprop.0+0x5be>
d0082c6e:	4a4c      	ldr	r2, [pc, #304]	; (d0082da0 <emit_phonetic_symbol.constprop.0+0xa70>)
d0082c70:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082c74:	2008      	movs	r0, #8
d0082c76:	2182      	movs	r1, #130	; 0x82
d0082c78:	4d4a      	ldr	r5, [pc, #296]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082c7a:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d0082c7e:	8833      	ldrh	r3, [r6, #0]
d0082c80:	4628      	mov	r0, r5
d0082c82:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082c86:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0082c8a:	8059      	strh	r1, [r3, #2]
d0082c8c:	8833      	ldrh	r3, [r6, #0]
d0082c8e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082c92:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d0082c96:	7114      	strb	r4, [r2, #4]
d0082c98:	8833      	ldrh	r3, [r6, #0]
d0082c9a:	3301      	adds	r3, #1
d0082c9c:	8033      	strh	r3, [r6, #0]
d0082c9e:	f002 fd2a 	bl	d00856f6 <strlen>
d0082ca2:	1d02      	adds	r2, r0, #4
d0082ca4:	4603      	mov	r3, r0
d0082ca6:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082caa:	f4bf ae1f 	bcs.w	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082cae:	b138      	cbz	r0, d0082cc0 <emit_phonetic_symbol.constprop.0+0x990>
d0082cb0:	182a      	adds	r2, r5, r0
d0082cb2:	2120      	movs	r1, #32
d0082cb4:	4628      	mov	r0, r5
d0082cb6:	54e9      	strb	r1, [r5, r3]
d0082cb8:	7054      	strb	r4, [r2, #1]
d0082cba:	f002 fd1c 	bl	d00856f6 <strlen>
d0082cbe:	4603      	mov	r3, r0
d0082cc0:	18e8      	adds	r0, r5, r3
d0082cc2:	2203      	movs	r2, #3
d0082cc4:	493c      	ldr	r1, [pc, #240]	; (d0082db8 <emit_phonetic_symbol.constprop.0+0xa88>)
d0082cc6:	f002 fb79 	bl	d00853bc <memcpy>
d0082cca:	e60f      	b.n	d00828ec <emit_phonetic_symbol.constprop.0+0x5bc>
d0082ccc:	2049      	movs	r0, #73	; 0x49
d0082cce:	2300      	movs	r3, #0
d0082cd0:	e45a      	b.n	d0082588 <emit_phonetic_symbol.constprop.0+0x258>
d0082cd2:	2049      	movs	r0, #73	; 0x49
d0082cd4:	2200      	movs	r2, #0
d0082cd6:	e476      	b.n	d00825c6 <emit_phonetic_symbol.constprop.0+0x296>
d0082cd8:	2445      	movs	r4, #69	; 0x45
d0082cda:	2300      	movs	r3, #0
d0082cdc:	e492      	b.n	d0082604 <emit_phonetic_symbol.constprop.0+0x2d4>
d0082cde:	8833      	ldrh	r3, [r6, #0]
d0082ce0:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082ce4:	d226      	bcs.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082ce6:	4a2e      	ldr	r2, [pc, #184]	; (d0082da0 <emit_phonetic_symbol.constprop.0+0xa70>)
d0082ce8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082cec:	2005      	movs	r0, #5
d0082cee:	217d      	movs	r1, #125	; 0x7d
d0082cf0:	4d2c      	ldr	r5, [pc, #176]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082cf2:	f802 0013 	strb.w	r0, [r2, r3, lsl #1]
d0082cf6:	8833      	ldrh	r3, [r6, #0]
d0082cf8:	4628      	mov	r0, r5
d0082cfa:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082cfe:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d0082d02:	8059      	strh	r1, [r3, #2]
d0082d04:	8833      	ldrh	r3, [r6, #0]
d0082d06:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0082d0a:	eb02 0243 	add.w	r2, r2, r3, lsl #1
d0082d0e:	7114      	strb	r4, [r2, #4]
d0082d10:	8833      	ldrh	r3, [r6, #0]
d0082d12:	3301      	adds	r3, #1
d0082d14:	8033      	strh	r3, [r6, #0]
d0082d16:	f002 fcee 	bl	d00856f6 <strlen>
d0082d1a:	1d03      	adds	r3, r0, #4
d0082d1c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0082d20:	d208      	bcs.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082d22:	b118      	cbz	r0, d0082d2c <emit_phonetic_symbol.constprop.0+0x9fc>
d0082d24:	2220      	movs	r2, #32
d0082d26:	182b      	adds	r3, r5, r0
d0082d28:	542a      	strb	r2, [r5, r0]
d0082d2a:	705c      	strb	r4, [r3, #1]
d0082d2c:	4923      	ldr	r1, [pc, #140]	; (d0082dbc <emit_phonetic_symbol.constprop.0+0xa8c>)
d0082d2e:	481d      	ldr	r0, [pc, #116]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082d30:	f002 fcd2 	bl	d00856d8 <strcat>
d0082d34:	883b      	ldrh	r3, [r7, #0]
d0082d36:	2001      	movs	r0, #1
d0082d38:	3302      	adds	r3, #2
d0082d3a:	803b      	strh	r3, [r7, #0]
d0082d3c:	e5da      	b.n	d00828f4 <emit_phonetic_symbol.constprop.0+0x5c4>
d0082d3e:	2441      	movs	r4, #65	; 0x41
d0082d40:	2200      	movs	r2, #0
d0082d42:	e47e      	b.n	d0082642 <emit_phonetic_symbol.constprop.0+0x312>
d0082d44:	8833      	ldrh	r3, [r6, #0]
d0082d46:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082d4a:	d2f3      	bcs.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082d4c:	2106      	movs	r1, #6
d0082d4e:	4a14      	ldr	r2, [pc, #80]	; (d0082da0 <emit_phonetic_symbol.constprop.0+0xa70>)
d0082d50:	2002      	movs	r0, #2
d0082d52:	f04f 0c82 	mov.w	ip, #130	; 0x82
d0082d56:	fb01 f303 	mul.w	r3, r1, r3
d0082d5a:	4d12      	ldr	r5, [pc, #72]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082d5c:	5498      	strb	r0, [r3, r2]
d0082d5e:	4628      	mov	r0, r5
d0082d60:	8833      	ldrh	r3, [r6, #0]
d0082d62:	fb01 2303 	mla	r3, r1, r3, r2
d0082d66:	f8a3 c002 	strh.w	ip, [r3, #2]
d0082d6a:	8833      	ldrh	r3, [r6, #0]
d0082d6c:	fb01 2303 	mla	r3, r1, r3, r2
d0082d70:	711c      	strb	r4, [r3, #4]
d0082d72:	8833      	ldrh	r3, [r6, #0]
d0082d74:	3301      	adds	r3, #1
d0082d76:	8033      	strh	r3, [r6, #0]
d0082d78:	f002 fcbd 	bl	d00856f6 <strlen>
d0082d7c:	1d03      	adds	r3, r0, #4
d0082d7e:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0082d82:	d2d7      	bcs.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082d84:	b118      	cbz	r0, d0082d8e <emit_phonetic_symbol.constprop.0+0xa5e>
d0082d86:	2220      	movs	r2, #32
d0082d88:	182b      	adds	r3, r5, r0
d0082d8a:	542a      	strb	r2, [r5, r0]
d0082d8c:	705c      	strb	r4, [r3, #1]
d0082d8e:	490c      	ldr	r1, [pc, #48]	; (d0082dc0 <emit_phonetic_symbol.constprop.0+0xa90>)
d0082d90:	4804      	ldr	r0, [pc, #16]	; (d0082da4 <emit_phonetic_symbol.constprop.0+0xa74>)
d0082d92:	f002 fca1 	bl	d00856d8 <strcat>
d0082d96:	e7cd      	b.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082d98:	2241      	movs	r2, #65	; 0x41
d0082d9a:	2300      	movs	r3, #0
d0082d9c:	e48a      	b.n	d00826b4 <emit_phonetic_symbol.constprop.0+0x384>
d0082d9e:	bf00      	nop
d0082da0:	d00861a8 	.word	0xd00861a8
d0082da4:	d00c8460 	.word	0xd00c8460
d0082da8:	d0085cf0 	.word	0xd0085cf0
d0082dac:	d0085ce0 	.word	0xd0085ce0
d0082db0:	d0085cf4 	.word	0xd0085cf4
d0082db4:	d0085c18 	.word	0xd0085c18
d0082db8:	d0085bf4 	.word	0xd0085bf4
d0082dbc:	d0085c00 	.word	0xd0085c00
d0082dc0:	d0085c28 	.word	0xd0085c28
d0082dc4:	8833      	ldrh	r3, [r6, #0]
d0082dc6:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082dca:	d2b3      	bcs.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082dcc:	2106      	movs	r1, #6
d0082dce:	4a7e      	ldr	r2, [pc, #504]	; (d0082fc8 <emit_phonetic_symbol.constprop.0+0xc98>)
d0082dd0:	2401      	movs	r4, #1
d0082dd2:	2078      	movs	r0, #120	; 0x78
d0082dd4:	fb01 f303 	mul.w	r3, r1, r3
d0082dd8:	2500      	movs	r5, #0
d0082dda:	549c      	strb	r4, [r3, r2]
d0082ddc:	8833      	ldrh	r3, [r6, #0]
d0082dde:	4c7b      	ldr	r4, [pc, #492]	; (d0082fcc <emit_phonetic_symbol.constprop.0+0xc9c>)
d0082de0:	fb01 2303 	mla	r3, r1, r3, r2
d0082de4:	8058      	strh	r0, [r3, #2]
d0082de6:	4620      	mov	r0, r4
d0082de8:	8833      	ldrh	r3, [r6, #0]
d0082dea:	fb01 2303 	mla	r3, r1, r3, r2
d0082dee:	711d      	strb	r5, [r3, #4]
d0082df0:	8833      	ldrh	r3, [r6, #0]
d0082df2:	3301      	adds	r3, #1
d0082df4:	8033      	strh	r3, [r6, #0]
d0082df6:	f002 fc7e 	bl	d00856f6 <strlen>
d0082dfa:	1d03      	adds	r3, r0, #4
d0082dfc:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0082e00:	d298      	bcs.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082e02:	b118      	cbz	r0, d0082e0c <emit_phonetic_symbol.constprop.0+0xadc>
d0082e04:	2220      	movs	r2, #32
d0082e06:	1823      	adds	r3, r4, r0
d0082e08:	5422      	strb	r2, [r4, r0]
d0082e0a:	705d      	strb	r5, [r3, #1]
d0082e0c:	4970      	ldr	r1, [pc, #448]	; (d0082fd0 <emit_phonetic_symbol.constprop.0+0xca0>)
d0082e0e:	486f      	ldr	r0, [pc, #444]	; (d0082fcc <emit_phonetic_symbol.constprop.0+0xc9c>)
d0082e10:	f002 fc62 	bl	d00856d8 <strcat>
d0082e14:	e78e      	b.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082e16:	4630      	mov	r0, r6
d0082e18:	2103      	movs	r1, #3
d0082e1a:	f7fd f9a7 	bl	d008016c <emit_phone.constprop.0>
d0082e1e:	e789      	b.n	d0082d34 <emit_phonetic_symbol.constprop.0+0xa04>
d0082e20:	2241      	movs	r2, #65	; 0x41
d0082e22:	2000      	movs	r0, #0
d0082e24:	e465      	b.n	d00826f2 <emit_phonetic_symbol.constprop.0+0x3c2>
d0082e26:	2241      	movs	r2, #65	; 0x41
d0082e28:	2300      	movs	r3, #0
d0082e2a:	e483      	b.n	d0082734 <emit_phonetic_symbol.constprop.0+0x404>
d0082e2c:	4630      	mov	r0, r6
d0082e2e:	2200      	movs	r2, #0
d0082e30:	210a      	movs	r1, #10
d0082e32:	e7f2      	b.n	d0082e1a <emit_phonetic_symbol.constprop.0+0xaea>
d0082e34:	4630      	mov	r0, r6
d0082e36:	2200      	movs	r2, #0
d0082e38:	2104      	movs	r1, #4
d0082e3a:	e7ee      	b.n	d0082e1a <emit_phonetic_symbol.constprop.0+0xaea>
d0082e3c:	4622      	mov	r2, r4
d0082e3e:	4630      	mov	r0, r6
d0082e40:	2109      	movs	r1, #9
d0082e42:	e7ea      	b.n	d0082e1a <emit_phonetic_symbol.constprop.0+0xaea>
d0082e44:	4622      	mov	r2, r4
d0082e46:	4630      	mov	r0, r6
d0082e48:	2106      	movs	r1, #6
d0082e4a:	e7e6      	b.n	d0082e1a <emit_phonetic_symbol.constprop.0+0xaea>
d0082e4c:	4630      	mov	r0, r6
d0082e4e:	2200      	movs	r2, #0
d0082e50:	2121      	movs	r1, #33	; 0x21
d0082e52:	f7fd f98b 	bl	d008016c <emit_phone.constprop.0>
d0082e56:	883b      	ldrh	r3, [r7, #0]
d0082e58:	2001      	movs	r0, #1
d0082e5a:	4403      	add	r3, r0
d0082e5c:	803b      	strh	r3, [r7, #0]
d0082e5e:	e549      	b.n	d00828f4 <emit_phonetic_symbol.constprop.0+0x5c4>
d0082e60:	4630      	mov	r0, r6
d0082e62:	2200      	movs	r2, #0
d0082e64:	2120      	movs	r1, #32
d0082e66:	f7fd f981 	bl	d008016c <emit_phone.constprop.0>
d0082e6a:	e7f4      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082e6c:	2200      	movs	r2, #0
d0082e6e:	2113      	movs	r1, #19
d0082e70:	4630      	mov	r0, r6
d0082e72:	f7fd f97b 	bl	d008016c <emit_phone.constprop.0>
d0082e76:	4630      	mov	r0, r6
d0082e78:	2200      	movs	r2, #0
d0082e7a:	211a      	movs	r1, #26
d0082e7c:	f7fd f976 	bl	d008016c <emit_phone.constprop.0>
d0082e80:	e7e9      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082e82:	4630      	mov	r0, r6
d0082e84:	2200      	movs	r2, #0
d0082e86:	211f      	movs	r1, #31
d0082e88:	f7fd f970 	bl	d008016c <emit_phone.constprop.0>
d0082e8c:	e7e3      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082e8e:	4630      	mov	r0, r6
d0082e90:	2200      	movs	r2, #0
d0082e92:	2119      	movs	r1, #25
d0082e94:	f7fd f96a 	bl	d008016c <emit_phone.constprop.0>
d0082e98:	e7dd      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082e9a:	4630      	mov	r0, r6
d0082e9c:	2200      	movs	r2, #0
d0082e9e:	211e      	movs	r1, #30
d0082ea0:	f7fd f964 	bl	d008016c <emit_phone.constprop.0>
d0082ea4:	e7d7      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082ea6:	4630      	mov	r0, r6
d0082ea8:	2200      	movs	r2, #0
d0082eaa:	211c      	movs	r1, #28
d0082eac:	f7fd f95e 	bl	d008016c <emit_phone.constprop.0>
d0082eb0:	e7d1      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082eb2:	4630      	mov	r0, r6
d0082eb4:	2223      	movs	r2, #35	; 0x23
d0082eb6:	2100      	movs	r1, #0
d0082eb8:	f7fd f958 	bl	d008016c <emit_phone.constprop.0>
d0082ebc:	e7cb      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082ebe:	4630      	mov	r0, r6
d0082ec0:	2200      	movs	r2, #0
d0082ec2:	2118      	movs	r1, #24
d0082ec4:	f7fd f952 	bl	d008016c <emit_phone.constprop.0>
d0082ec8:	e7c5      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082eca:	4630      	mov	r0, r6
d0082ecc:	2200      	movs	r2, #0
d0082ece:	2116      	movs	r1, #22
d0082ed0:	f7fd f94c 	bl	d008016c <emit_phone.constprop.0>
d0082ed4:	e7bf      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082ed6:	4630      	mov	r0, r6
d0082ed8:	2200      	movs	r2, #0
d0082eda:	2115      	movs	r1, #21
d0082edc:	f7fd f946 	bl	d008016c <emit_phone.constprop.0>
d0082ee0:	e7b9      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082ee2:	2246      	movs	r2, #70	; 0x46
d0082ee4:	2101      	movs	r1, #1
d0082ee6:	4630      	mov	r0, r6
d0082ee8:	f7fd f940 	bl	d008016c <emit_phone.constprop.0>
d0082eec:	4622      	mov	r2, r4
d0082eee:	4630      	mov	r0, r6
d0082ef0:	2116      	movs	r1, #22
d0082ef2:	e792      	b.n	d0082e1a <emit_phonetic_symbol.constprop.0+0xaea>
d0082ef4:	2246      	movs	r2, #70	; 0x46
d0082ef6:	2101      	movs	r1, #1
d0082ef8:	4630      	mov	r0, r6
d0082efa:	f7fd f937 	bl	d008016c <emit_phone.constprop.0>
d0082efe:	4642      	mov	r2, r8
d0082f00:	4630      	mov	r0, r6
d0082f02:	2115      	movs	r1, #21
d0082f04:	e789      	b.n	d0082e1a <emit_phonetic_symbol.constprop.0+0xaea>
d0082f06:	2246      	movs	r2, #70	; 0x46
d0082f08:	2101      	movs	r1, #1
d0082f0a:	4630      	mov	r0, r6
d0082f0c:	f7fd f92e 	bl	d008016c <emit_phone.constprop.0>
d0082f10:	4622      	mov	r2, r4
d0082f12:	4630      	mov	r0, r6
d0082f14:	2114      	movs	r1, #20
d0082f16:	e780      	b.n	d0082e1a <emit_phonetic_symbol.constprop.0+0xaea>
d0082f18:	4630      	mov	r0, r6
d0082f1a:	f7fd fa1b 	bl	d0080354 <emit_ow.constprop.0>
d0082f1e:	883b      	ldrh	r3, [r7, #0]
d0082f20:	2001      	movs	r0, #1
d0082f22:	3302      	adds	r3, #2
d0082f24:	803b      	strh	r3, [r7, #0]
d0082f26:	e4e5      	b.n	d00828f4 <emit_phonetic_symbol.constprop.0+0x5c4>
d0082f28:	4630      	mov	r0, r6
d0082f2a:	f7fd fb75 	bl	d0080618 <emit_aw.constprop.0>
d0082f2e:	883b      	ldrh	r3, [r7, #0]
d0082f30:	2001      	movs	r0, #1
d0082f32:	3302      	adds	r3, #2
d0082f34:	803b      	strh	r3, [r7, #0]
d0082f36:	e4dd      	b.n	d00828f4 <emit_phonetic_symbol.constprop.0+0x5c4>
d0082f38:	4630      	mov	r0, r6
d0082f3a:	f7fd faf7 	bl	d008052c <emit_oy.constprop.0>
d0082f3e:	883b      	ldrh	r3, [r7, #0]
d0082f40:	2001      	movs	r0, #1
d0082f42:	3302      	adds	r3, #2
d0082f44:	803b      	strh	r3, [r7, #0]
d0082f46:	e4d5      	b.n	d00828f4 <emit_phonetic_symbol.constprop.0+0x5c4>
d0082f48:	4630      	mov	r0, r6
d0082f4a:	f7fd f98d 	bl	d0080268 <emit_ay.constprop.0>
d0082f4e:	883b      	ldrh	r3, [r7, #0]
d0082f50:	2001      	movs	r0, #1
d0082f52:	3302      	adds	r3, #2
d0082f54:	803b      	strh	r3, [r7, #0]
d0082f56:	e4cd      	b.n	d00828f4 <emit_phonetic_symbol.constprop.0+0x5c4>
d0082f58:	4630      	mov	r0, r6
d0082f5a:	f7fd fa71 	bl	d0080440 <emit_ey.constprop.0>
d0082f5e:	883b      	ldrh	r3, [r7, #0]
d0082f60:	2001      	movs	r0, #1
d0082f62:	3302      	adds	r3, #2
d0082f64:	803b      	strh	r3, [r7, #0]
d0082f66:	e4c5      	b.n	d00828f4 <emit_phonetic_symbol.constprop.0+0x5c4>
d0082f68:	4630      	mov	r0, r6
d0082f6a:	2200      	movs	r2, #0
d0082f6c:	2114      	movs	r1, #20
d0082f6e:	f7fd f8fd 	bl	d008016c <emit_phone.constprop.0>
d0082f72:	e770      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082f74:	4630      	mov	r0, r6
d0082f76:	2200      	movs	r2, #0
d0082f78:	2113      	movs	r1, #19
d0082f7a:	f7fd f8f7 	bl	d008016c <emit_phone.constprop.0>
d0082f7e:	e76a      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082f80:	4630      	mov	r0, r6
d0082f82:	2200      	movs	r2, #0
d0082f84:	2112      	movs	r1, #18
d0082f86:	f7fd f8f1 	bl	d008016c <emit_phone.constprop.0>
d0082f8a:	e764      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082f8c:	4630      	mov	r0, r6
d0082f8e:	2200      	movs	r2, #0
d0082f90:	2111      	movs	r1, #17
d0082f92:	f7fd f8eb 	bl	d008016c <emit_phone.constprop.0>
d0082f96:	e75e      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082f98:	4630      	mov	r0, r6
d0082f9a:	2200      	movs	r2, #0
d0082f9c:	2110      	movs	r1, #16
d0082f9e:	f7fd f8e5 	bl	d008016c <emit_phone.constprop.0>
d0082fa2:	e758      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082fa4:	4630      	mov	r0, r6
d0082fa6:	2200      	movs	r2, #0
d0082fa8:	210f      	movs	r1, #15
d0082faa:	f7fd f8df 	bl	d008016c <emit_phone.constprop.0>
d0082fae:	e752      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082fb0:	4630      	mov	r0, r6
d0082fb2:	2200      	movs	r2, #0
d0082fb4:	210d      	movs	r1, #13
d0082fb6:	f7fd f8d9 	bl	d008016c <emit_phone.constprop.0>
d0082fba:	e74c      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082fbc:	4630      	mov	r0, r6
d0082fbe:	2200      	movs	r2, #0
d0082fc0:	210b      	movs	r1, #11
d0082fc2:	f7fd f8d3 	bl	d008016c <emit_phone.constprop.0>
d0082fc6:	e746      	b.n	d0082e56 <emit_phonetic_symbol.constprop.0+0xb26>
d0082fc8:	d00861a8 	.word	0xd00861a8
d0082fcc:	d00c8460 	.word	0xd00c8460
d0082fd0:	d0085c0c 	.word	0xd0085c0c

d0082fd4 <speech_synth_render>:
d0082fd4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0082fd8:	4bcb      	ldr	r3, [pc, #812]	; (d0083308 <speech_synth_render+0x334>)
d0082fda:	2400      	movs	r4, #0
d0082fdc:	4680      	mov	r8, r0
d0082fde:	ed2d 8b10 	vpush	{d8-d15}
d0082fe2:	701c      	strb	r4, [r3, #0]
d0082fe4:	b0c5      	sub	sp, #276	; 0x114
d0082fe6:	7803      	ldrb	r3, [r0, #0]
d0082fe8:	f8ad 40c8 	strh.w	r4, [sp, #200]	; 0xc8
d0082fec:	2b2f      	cmp	r3, #47	; 0x2f
d0082fee:	f001 8232 	beq.w	d0084456 <speech_synth_render+0x1482>
d0082ff2:	2b00      	cmp	r3, #0
d0082ff4:	f001 8572 	beq.w	d0084adc <speech_synth_render+0x1b08>
d0082ff8:	4683      	mov	fp, r0
d0082ffa:	4625      	mov	r5, r4
d0082ffc:	4682      	mov	sl, r0
d0082ffe:	e03f      	b.n	d0083080 <speech_synth_render+0xac>
d0083000:	f1a3 0221 	sub.w	r2, r3, #33	; 0x21
d0083004:	b2d2      	uxtb	r2, r2
d0083006:	2a1e      	cmp	r2, #30
d0083008:	d82d      	bhi.n	d0083066 <speech_synth_render+0x92>
d008300a:	49c0      	ldr	r1, [pc, #768]	; (d008330c <speech_synth_render+0x338>)
d008300c:	fa21 f202 	lsr.w	r2, r1, r2
d0083010:	43d2      	mvns	r2, r2
d0083012:	f012 0601 	ands.w	r6, r2, #1
d0083016:	f040 8207 	bne.w	d0083428 <speech_synth_render+0x454>
d008301a:	eb05 0345 	add.w	r3, r5, r5, lsl #1
d008301e:	49bc      	ldr	r1, [pc, #752]	; (d0083310 <speech_synth_render+0x33c>)
d0083020:	3501      	adds	r5, #1
d0083022:	22be      	movs	r2, #190	; 0xbe
d0083024:	f801 6013 	strb.w	r6, [r1, r3, lsl #1]
d0083028:	eb01 0343 	add.w	r3, r1, r3, lsl #1
d008302c:	b2ad      	uxth	r5, r5
d008302e:	48b6      	ldr	r0, [pc, #728]	; (d0083308 <speech_synth_render+0x334>)
d0083030:	711e      	strb	r6, [r3, #4]
d0083032:	f8ad 50c8 	strh.w	r5, [sp, #200]	; 0xc8
d0083036:	805a      	strh	r2, [r3, #2]
d0083038:	f002 fb5d 	bl	d00856f6 <strlen>
d008303c:	1cc2      	adds	r2, r0, #3
d008303e:	4603      	mov	r3, r0
d0083040:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0083044:	d20f      	bcs.n	d0083066 <speech_synth_render+0x92>
d0083046:	b140      	cbz	r0, d008305a <speech_synth_render+0x86>
d0083048:	4faf      	ldr	r7, [pc, #700]	; (d0083308 <speech_synth_render+0x334>)
d008304a:	2120      	movs	r1, #32
d008304c:	183a      	adds	r2, r7, r0
d008304e:	4638      	mov	r0, r7
d0083050:	54f9      	strb	r1, [r7, r3]
d0083052:	7056      	strb	r6, [r2, #1]
d0083054:	f002 fb4f 	bl	d00856f6 <strlen>
d0083058:	4603      	mov	r3, r0
d008305a:	4aab      	ldr	r2, [pc, #684]	; (d0083308 <speech_synth_render+0x334>)
d008305c:	49ad      	ldr	r1, [pc, #692]	; (d0083314 <speech_synth_render+0x340>)
d008305e:	18d0      	adds	r0, r2, r3
d0083060:	2202      	movs	r2, #2
d0083062:	f002 f9ab 	bl	d00853bc <memcpy>
d0083066:	3401      	adds	r4, #1
d0083068:	b2a4      	uxth	r4, r4
d008306a:	eb0a 0b04 	add.w	fp, sl, r4
d008306e:	f89b 3000 	ldrb.w	r3, [fp]
d0083072:	2b00      	cmp	r3, #0
d0083074:	f000 8255 	beq.w	d0083522 <speech_synth_render+0x54e>
d0083078:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d008307c:	f000 82ac 	beq.w	d00835d8 <speech_synth_render+0x604>
d0083080:	f023 0220 	bic.w	r2, r3, #32
d0083084:	f1a2 0141 	sub.w	r1, r2, #65	; 0x41
d0083088:	2919      	cmp	r1, #25
d008308a:	d8b9      	bhi.n	d0083000 <speech_synth_render+0x2c>
d008308c:	4626      	mov	r6, r4
d008308e:	e001      	b.n	d0083094 <speech_synth_render+0xc0>
d0083090:	f023 0220 	bic.w	r2, r3, #32
d0083094:	3a41      	subs	r2, #65	; 0x41
d0083096:	1c71      	adds	r1, r6, #1
d0083098:	b2d2      	uxtb	r2, r2
d008309a:	2a19      	cmp	r2, #25
d008309c:	d904      	bls.n	d00830a8 <speech_synth_render+0xd4>
d008309e:	2b27      	cmp	r3, #39	; 0x27
d00830a0:	d002      	beq.n	d00830a8 <speech_synth_render+0xd4>
d00830a2:	2b2d      	cmp	r3, #45	; 0x2d
d00830a4:	f041 8118 	bne.w	d00842d8 <speech_synth_render+0x1304>
d00830a8:	b28e      	uxth	r6, r1
d00830aa:	f81a 3006 	ldrb.w	r3, [sl, r6]
d00830ae:	eb0a 0206 	add.w	r2, sl, r6
d00830b2:	2b00      	cmp	r3, #0
d00830b4:	d1ec      	bne.n	d0083090 <speech_synth_render+0xbc>
d00830b6:	9203      	str	r2, [sp, #12]
d00830b8:	1b34      	subs	r4, r6, r4
d00830ba:	4658      	mov	r0, fp
d00830bc:	aa32      	add	r2, sp, #200	; 0xc8
d00830be:	b2a4      	uxth	r4, r4
d00830c0:	4621      	mov	r1, r4
d00830c2:	f7fd fb1f 	bl	d0080704 <emit_known_word.constprop.0>
d00830c6:	2800      	cmp	r0, #0
d00830c8:	f041 80d1 	bne.w	d008426e <speech_synth_render+0x129a>
d00830cc:	2c00      	cmp	r4, #0
d00830ce:	f001 80ce 	beq.w	d008426e <speech_synth_render+0x129a>
d00830d2:	1e63      	subs	r3, r4, #1
d00830d4:	4a8e      	ldr	r2, [pc, #568]	; (d0083310 <speech_synth_render+0x33c>)
d00830d6:	f89b c000 	ldrb.w	ip, [fp]
d00830da:	4605      	mov	r5, r0
d00830dc:	9305      	str	r3, [sp, #20]
d00830de:	46b1      	mov	r9, r6
d00830e0:	fa1b f383 	uxtah	r3, fp, r3
d00830e4:	9202      	str	r2, [sp, #8]
d00830e6:	f1ac 0241 	sub.w	r2, ip, #65	; 0x41
d00830ea:	9304      	str	r3, [sp, #16]
d00830ec:	9201      	str	r2, [sp, #4]
d00830ee:	f89d 3004 	ldrb.w	r3, [sp, #4]
d00830f2:	2b19      	cmp	r3, #25
d00830f4:	f240 8186 	bls.w	d0083404 <speech_synth_render+0x430>
d00830f8:	1c6e      	adds	r6, r5, #1
d00830fa:	4661      	mov	r1, ip
d00830fc:	42a6      	cmp	r6, r4
d00830fe:	f0c0 8189 	bcc.w	d0083414 <speech_synth_render+0x440>
d0083102:	2000      	movs	r0, #0
d0083104:	2927      	cmp	r1, #39	; 0x27
d0083106:	f000 8170 	beq.w	d00833ea <speech_synth_render+0x416>
d008310a:	292d      	cmp	r1, #45	; 0x2d
d008310c:	f000 816d 	beq.w	d00833ea <speech_synth_render+0x416>
d0083110:	42a5      	cmp	r5, r4
d0083112:	f281 854c 	bge.w	d0084bae <speech_synth_render+0x1bda>
d0083116:	4663      	mov	r3, ip
d0083118:	2774      	movs	r7, #116	; 0x74
d008311a:	2200      	movs	r2, #0
d008311c:	f8df 81f8 	ldr.w	r8, [pc, #504]	; d0083318 <speech_synth_render+0x344>
d0083120:	4686      	mov	lr, r0
d0083122:	e008      	b.n	d0083136 <speech_synth_render+0x162>
d0083124:	f812 7008 	ldrb.w	r7, [r2, r8]
d0083128:	2f00      	cmp	r7, #0
d008312a:	f000 8195 	beq.w	d0083458 <speech_synth_render+0x484>
d008312e:	42a0      	cmp	r0, r4
d0083130:	da0e      	bge.n	d0083150 <speech_synth_render+0x17c>
d0083132:	f81b 3000 	ldrb.w	r3, [fp, r0]
d0083136:	f1a3 0041 	sub.w	r0, r3, #65	; 0x41
d008313a:	3201      	adds	r2, #1
d008313c:	b2c0      	uxtb	r0, r0
d008313e:	b292      	uxth	r2, r2
d0083140:	2819      	cmp	r0, #25
d0083142:	eb02 0005 	add.w	r0, r2, r5
d0083146:	d801      	bhi.n	d008314c <speech_synth_render+0x178>
d0083148:	3320      	adds	r3, #32
d008314a:	b2db      	uxtb	r3, r3
d008314c:	42bb      	cmp	r3, r7
d008314e:	d0e9      	beq.n	d0083124 <speech_synth_render+0x150>
d0083150:	4670      	mov	r0, lr
d0083152:	2763      	movs	r7, #99	; 0x63
d0083154:	46e6      	mov	lr, ip
d0083156:	2300      	movs	r3, #0
d0083158:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d008331c <speech_synth_render+0x348>
d008315c:	e008      	b.n	d0083170 <speech_synth_render+0x19c>
d008315e:	f813 7008 	ldrb.w	r7, [r3, r8]
d0083162:	2f00      	cmp	r7, #0
d0083164:	f000 81f4 	beq.w	d0083550 <speech_synth_render+0x57c>
d0083168:	42a2      	cmp	r2, r4
d008316a:	da10      	bge.n	d008318e <speech_synth_render+0x1ba>
d008316c:	f81b e002 	ldrb.w	lr, [fp, r2]
d0083170:	f1ae 0241 	sub.w	r2, lr, #65	; 0x41
d0083174:	3301      	adds	r3, #1
d0083176:	b2d2      	uxtb	r2, r2
d0083178:	b29b      	uxth	r3, r3
d008317a:	2a19      	cmp	r2, #25
d008317c:	eb03 0205 	add.w	r2, r3, r5
d0083180:	d803      	bhi.n	d008318a <speech_synth_render+0x1b6>
d0083182:	f10e 0e20 	add.w	lr, lr, #32
d0083186:	fa5f fe8e 	uxtb.w	lr, lr
d008318a:	45be      	cmp	lr, r7
d008318c:	d0e7      	beq.n	d008315e <speech_synth_render+0x18a>
d008318e:	46e6      	mov	lr, ip
d0083190:	2773      	movs	r7, #115	; 0x73
d0083192:	2300      	movs	r3, #0
d0083194:	f8df 8188 	ldr.w	r8, [pc, #392]	; d0083320 <speech_synth_render+0x34c>
d0083198:	e008      	b.n	d00831ac <speech_synth_render+0x1d8>
d008319a:	f813 7008 	ldrb.w	r7, [r3, r8]
d008319e:	2f00      	cmp	r7, #0
d00831a0:	f001 8069 	beq.w	d0084276 <speech_synth_render+0x12a2>
d00831a4:	42a2      	cmp	r2, r4
d00831a6:	da10      	bge.n	d00831ca <speech_synth_render+0x1f6>
d00831a8:	f81b e002 	ldrb.w	lr, [fp, r2]
d00831ac:	f1ae 0241 	sub.w	r2, lr, #65	; 0x41
d00831b0:	3301      	adds	r3, #1
d00831b2:	b2d2      	uxtb	r2, r2
d00831b4:	b29b      	uxth	r3, r3
d00831b6:	2a19      	cmp	r2, #25
d00831b8:	eb03 0205 	add.w	r2, r3, r5
d00831bc:	d803      	bhi.n	d00831c6 <speech_synth_render+0x1f2>
d00831be:	f10e 0e20 	add.w	lr, lr, #32
d00831c2:	fa5f fe8e 	uxtb.w	lr, lr
d00831c6:	45be      	cmp	lr, r7
d00831c8:	d0e7      	beq.n	d008319a <speech_synth_render+0x1c6>
d00831ca:	46e6      	mov	lr, ip
d00831cc:	2774      	movs	r7, #116	; 0x74
d00831ce:	2300      	movs	r3, #0
d00831d0:	f8df 8150 	ldr.w	r8, [pc, #336]	; d0083324 <speech_synth_render+0x350>
d00831d4:	e008      	b.n	d00831e8 <speech_synth_render+0x214>
d00831d6:	f813 7008 	ldrb.w	r7, [r3, r8]
d00831da:	2f00      	cmp	r7, #0
d00831dc:	f001 8081 	beq.w	d00842e2 <speech_synth_render+0x130e>
d00831e0:	42a2      	cmp	r2, r4
d00831e2:	da10      	bge.n	d0083206 <speech_synth_render+0x232>
d00831e4:	f81b e002 	ldrb.w	lr, [fp, r2]
d00831e8:	f1ae 0241 	sub.w	r2, lr, #65	; 0x41
d00831ec:	3301      	adds	r3, #1
d00831ee:	b2d2      	uxtb	r2, r2
d00831f0:	b29b      	uxth	r3, r3
d00831f2:	2a19      	cmp	r2, #25
d00831f4:	eb03 0205 	add.w	r2, r3, r5
d00831f8:	d803      	bhi.n	d0083202 <speech_synth_render+0x22e>
d00831fa:	f10e 0e20 	add.w	lr, lr, #32
d00831fe:	fa5f fe8e 	uxtb.w	lr, lr
d0083202:	4577      	cmp	r7, lr
d0083204:	d0e7      	beq.n	d00831d6 <speech_synth_render+0x202>
d0083206:	46e6      	mov	lr, ip
d0083208:	2770      	movs	r7, #112	; 0x70
d008320a:	2300      	movs	r3, #0
d008320c:	f8df 8118 	ldr.w	r8, [pc, #280]	; d0083328 <speech_synth_render+0x354>
d0083210:	e008      	b.n	d0083224 <speech_synth_render+0x250>
d0083212:	f813 7008 	ldrb.w	r7, [r3, r8]
d0083216:	2f00      	cmp	r7, #0
d0083218:	f001 80ee 	beq.w	d00843f8 <speech_synth_render+0x1424>
d008321c:	42a2      	cmp	r2, r4
d008321e:	da10      	bge.n	d0083242 <speech_synth_render+0x26e>
d0083220:	f81b e002 	ldrb.w	lr, [fp, r2]
d0083224:	f1ae 0241 	sub.w	r2, lr, #65	; 0x41
d0083228:	3301      	adds	r3, #1
d008322a:	b2d2      	uxtb	r2, r2
d008322c:	b29b      	uxth	r3, r3
d008322e:	2a19      	cmp	r2, #25
d0083230:	eb03 0205 	add.w	r2, r3, r5
d0083234:	d803      	bhi.n	d008323e <speech_synth_render+0x26a>
d0083236:	f10e 0e20 	add.w	lr, lr, #32
d008323a:	fa5f fe8e 	uxtb.w	lr, lr
d008323e:	4577      	cmp	r7, lr
d0083240:	d0e7      	beq.n	d0083212 <speech_synth_render+0x23e>
d0083242:	46e6      	mov	lr, ip
d0083244:	2777      	movs	r7, #119	; 0x77
d0083246:	2300      	movs	r3, #0
d0083248:	f8df 80e0 	ldr.w	r8, [pc, #224]	; d008332c <speech_synth_render+0x358>
d008324c:	e008      	b.n	d0083260 <speech_synth_render+0x28c>
d008324e:	f813 7008 	ldrb.w	r7, [r3, r8]
d0083252:	2f00      	cmp	r7, #0
d0083254:	f001 8190 	beq.w	d0084578 <speech_synth_render+0x15a4>
d0083258:	42a2      	cmp	r2, r4
d008325a:	da10      	bge.n	d008327e <speech_synth_render+0x2aa>
d008325c:	f81b e002 	ldrb.w	lr, [fp, r2]
d0083260:	f1ae 0241 	sub.w	r2, lr, #65	; 0x41
d0083264:	3301      	adds	r3, #1
d0083266:	b2d2      	uxtb	r2, r2
d0083268:	b29b      	uxth	r3, r3
d008326a:	2a19      	cmp	r2, #25
d008326c:	eb03 0205 	add.w	r2, r3, r5
d0083270:	d803      	bhi.n	d008327a <speech_synth_render+0x2a6>
d0083272:	f10e 0e20 	add.w	lr, lr, #32
d0083276:	fa5f fe8e 	uxtb.w	lr, lr
d008327a:	4577      	cmp	r7, lr
d008327c:	d0e7      	beq.n	d008324e <speech_synth_render+0x27a>
d008327e:	46e6      	mov	lr, ip
d0083280:	2777      	movs	r7, #119	; 0x77
d0083282:	2300      	movs	r3, #0
d0083284:	f8df 80a8 	ldr.w	r8, [pc, #168]	; d0083330 <speech_synth_render+0x35c>
d0083288:	e008      	b.n	d008329c <speech_synth_render+0x2c8>
d008328a:	f813 7008 	ldrb.w	r7, [r3, r8]
d008328e:	2f00      	cmp	r7, #0
d0083290:	f001 845e 	beq.w	d0084b50 <speech_synth_render+0x1b7c>
d0083294:	42a2      	cmp	r2, r4
d0083296:	da10      	bge.n	d00832ba <speech_synth_render+0x2e6>
d0083298:	f81b e002 	ldrb.w	lr, [fp, r2]
d008329c:	f1ae 0241 	sub.w	r2, lr, #65	; 0x41
d00832a0:	3301      	adds	r3, #1
d00832a2:	b2d2      	uxtb	r2, r2
d00832a4:	b29b      	uxth	r3, r3
d00832a6:	2a19      	cmp	r2, #25
d00832a8:	eb03 0205 	add.w	r2, r3, r5
d00832ac:	d803      	bhi.n	d00832b6 <speech_synth_render+0x2e2>
d00832ae:	f10e 0e20 	add.w	lr, lr, #32
d00832b2:	fa5f fe8e 	uxtb.w	lr, lr
d00832b6:	45be      	cmp	lr, r7
d00832b8:	d0e7      	beq.n	d008328a <speech_synth_render+0x2b6>
d00832ba:	2d00      	cmp	r5, #0
d00832bc:	f001 804e 	beq.w	d008435c <speech_synth_render+0x1388>
d00832c0:	46e6      	mov	lr, ip
d00832c2:	276e      	movs	r7, #110	; 0x6e
d00832c4:	2300      	movs	r3, #0
d00832c6:	f8df 806c 	ldr.w	r8, [pc, #108]	; d0083334 <speech_synth_render+0x360>
d00832ca:	e008      	b.n	d00832de <speech_synth_render+0x30a>
d00832cc:	f813 7008 	ldrb.w	r7, [r3, r8]
d00832d0:	2f00      	cmp	r7, #0
d00832d2:	f001 840e 	beq.w	d0084af2 <speech_synth_render+0x1b1e>
d00832d6:	42a2      	cmp	r2, r4
d00832d8:	da10      	bge.n	d00832fc <speech_synth_render+0x328>
d00832da:	f81b e002 	ldrb.w	lr, [fp, r2]
d00832de:	f1ae 0241 	sub.w	r2, lr, #65	; 0x41
d00832e2:	3301      	adds	r3, #1
d00832e4:	b2d2      	uxtb	r2, r2
d00832e6:	b29b      	uxth	r3, r3
d00832e8:	2a19      	cmp	r2, #25
d00832ea:	eb03 0205 	add.w	r2, r3, r5
d00832ee:	d803      	bhi.n	d00832f8 <speech_synth_render+0x324>
d00832f0:	f10e 0e20 	add.w	lr, lr, #32
d00832f4:	fa5f fe8e 	uxtb.w	lr, lr
d00832f8:	45be      	cmp	lr, r7
d00832fa:	d0e7      	beq.n	d00832cc <speech_synth_render+0x2f8>
d00832fc:	46e6      	mov	lr, ip
d00832fe:	2763      	movs	r7, #99	; 0x63
d0083300:	2300      	movs	r3, #0
d0083302:	f8df 8034 	ldr.w	r8, [pc, #52]	; d0083338 <speech_synth_render+0x364>
d0083306:	e022      	b.n	d008334e <speech_synth_render+0x37a>
d0083308:	d00c8460 	.word	0xd00c8460
d008330c:	40002001 	.word	0x40002001
d0083310:	d00861a8 	.word	0xd00861a8
d0083314:	d0085d30 	.word	0xd0085d30
d0083318:	d0085d34 	.word	0xd0085d34
d008331c:	d0085d38 	.word	0xd0085d38
d0083320:	d0085d3c 	.word	0xd0085d3c
d0083324:	d0085d40 	.word	0xd0085d40
d0083328:	d0085d44 	.word	0xd0085d44
d008332c:	d0085d4c 	.word	0xd0085d4c
d0083330:	d0085d54 	.word	0xd0085d54
d0083334:	d0085d58 	.word	0xd0085d58
d0083338:	d0085d5c 	.word	0xd0085d5c
d008333c:	f813 7008 	ldrb.w	r7, [r3, r8]
d0083340:	2f00      	cmp	r7, #0
d0083342:	f001 84bf 	beq.w	d0084cc4 <speech_synth_render+0x1cf0>
d0083346:	42a2      	cmp	r2, r4
d0083348:	da10      	bge.n	d008336c <speech_synth_render+0x398>
d008334a:	f81b e002 	ldrb.w	lr, [fp, r2]
d008334e:	f1ae 0241 	sub.w	r2, lr, #65	; 0x41
d0083352:	3301      	adds	r3, #1
d0083354:	b2d2      	uxtb	r2, r2
d0083356:	b29b      	uxth	r3, r3
d0083358:	2a19      	cmp	r2, #25
d008335a:	eb03 0205 	add.w	r2, r3, r5
d008335e:	d803      	bhi.n	d0083368 <speech_synth_render+0x394>
d0083360:	f10e 0e20 	add.w	lr, lr, #32
d0083364:	fa5f fe8e 	uxtb.w	lr, lr
d0083368:	45be      	cmp	lr, r7
d008336a:	d0e7      	beq.n	d008333c <speech_synth_render+0x368>
d008336c:	2771      	movs	r7, #113	; 0x71
d008336e:	2300      	movs	r3, #0
d0083370:	f8df e260 	ldr.w	lr, [pc, #608]	; d00835d4 <speech_synth_render+0x600>
d0083374:	9a01      	ldr	r2, [sp, #4]
d0083376:	e00a      	b.n	d008338e <speech_synth_render+0x3ba>
d0083378:	f813 700e 	ldrb.w	r7, [r3, lr]
d008337c:	2f00      	cmp	r7, #0
d008337e:	f001 84d3 	beq.w	d0084d28 <speech_synth_render+0x1d54>
d0083382:	42a2      	cmp	r2, r4
d0083384:	da10      	bge.n	d00833a8 <speech_synth_render+0x3d4>
d0083386:	f81b c002 	ldrb.w	ip, [fp, r2]
d008338a:	f1ac 0241 	sub.w	r2, ip, #65	; 0x41
d008338e:	b2d2      	uxtb	r2, r2
d0083390:	3301      	adds	r3, #1
d0083392:	2a19      	cmp	r2, #25
d0083394:	b29b      	uxth	r3, r3
d0083396:	eb03 0205 	add.w	r2, r3, r5
d008339a:	d803      	bhi.n	d00833a4 <speech_synth_render+0x3d0>
d008339c:	f10c 0c20 	add.w	ip, ip, #32
d00833a0:	fa5f fc8c 	uxtb.w	ip, ip
d00833a4:	45bc      	cmp	ip, r7
d00833a6:	d0e7      	beq.n	d0083378 <speech_synth_render+0x3a4>
d00833a8:	f1a1 0361 	sub.w	r3, r1, #97	; 0x61
d00833ac:	2b19      	cmp	r3, #25
d00833ae:	f201 81c2 	bhi.w	d0084736 <speech_synth_render+0x1762>
d00833b2:	e8df f013 	tbh	[pc, r3, lsl #1]
d00833b6:	0918      	.short	0x0918
d00833b8:	0ad90ae3 	.word	0x0ad90ae3
d00833bc:	0a790ad2 	.word	0x0a790ad2
d00833c0:	0a630a72 	.word	0x0a630a72
d00833c4:	0a330a5c 	.word	0x0a330a5c
d00833c8:	096c0aff 	.word	0x096c0aff
d00833cc:	0aea0af1 	.word	0x0aea0af1
d00833d0:	0b060b87 	.word	0x0b060b87
d00833d4:	096c099d 	.word	0x096c099d
d00833d8:	0a250a2c 	.word	0x0a250a2c
d00833dc:	09f30a1e 	.word	0x09f30a1e
d00833e0:	09e509ec 	.word	0x09e509ec
d00833e4:	09a409d9 	.word	0x09a409d9
d00833e8:	0af8      	.short	0x0af8
d00833ea:	b2b5      	uxth	r5, r6
d00833ec:	42ac      	cmp	r4, r5
d00833ee:	d962      	bls.n	d00834b6 <speech_synth_render+0x4e2>
d00833f0:	f81b c005 	ldrb.w	ip, [fp, r5]
d00833f4:	f1ac 0341 	sub.w	r3, ip, #65	; 0x41
d00833f8:	9301      	str	r3, [sp, #4]
d00833fa:	f89d 3004 	ldrb.w	r3, [sp, #4]
d00833fe:	2b19      	cmp	r3, #25
d0083400:	f63f ae7a 	bhi.w	d00830f8 <speech_synth_render+0x124>
d0083404:	1c6e      	adds	r6, r5, #1
d0083406:	f10c 0120 	add.w	r1, ip, #32
d008340a:	42a6      	cmp	r6, r4
d008340c:	b2c9      	uxtb	r1, r1
d008340e:	d301      	bcc.n	d0083414 <speech_synth_render+0x440>
d0083410:	2000      	movs	r0, #0
d0083412:	e67d      	b.n	d0083110 <speech_synth_render+0x13c>
d0083414:	f81b 0006 	ldrb.w	r0, [fp, r6]
d0083418:	f1a0 0341 	sub.w	r3, r0, #65	; 0x41
d008341c:	2b19      	cmp	r3, #25
d008341e:	f63f ae71 	bhi.w	d0083104 <speech_synth_render+0x130>
d0083422:	3020      	adds	r0, #32
d0083424:	b2c0      	uxtb	r0, r0
d0083426:	e66d      	b.n	d0083104 <speech_synth_render+0x130>
d0083428:	f1a3 023a 	sub.w	r2, r3, #58	; 0x3a
d008342c:	2a01      	cmp	r2, #1
d008342e:	d902      	bls.n	d0083436 <speech_synth_render+0x462>
d0083430:	2b2c      	cmp	r3, #44	; 0x2c
d0083432:	f47f ae18 	bne.w	d0083066 <speech_synth_render+0x92>
d0083436:	eb05 0245 	add.w	r2, r5, r5, lsl #1
d008343a:	485e      	ldr	r0, [pc, #376]	; (d00835b4 <speech_synth_render+0x5e0>)
d008343c:	3501      	adds	r5, #1
d008343e:	2600      	movs	r6, #0
d0083440:	eb00 0342 	add.w	r3, r0, r2, lsl #1
d0083444:	2178      	movs	r1, #120	; 0x78
d0083446:	b2ad      	uxth	r5, r5
d0083448:	f800 6012 	strb.w	r6, [r0, r2, lsl #1]
d008344c:	485a      	ldr	r0, [pc, #360]	; (d00835b8 <speech_synth_render+0x5e4>)
d008344e:	f8ad 50c8 	strh.w	r5, [sp, #200]	; 0xc8
d0083452:	711e      	strb	r6, [r3, #4]
d0083454:	8059      	strh	r1, [r3, #2]
d0083456:	e5ef      	b.n	d0083038 <speech_synth_render+0x64>
d0083458:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d008345c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0083460:	d225      	bcs.n	d00834ae <speech_synth_render+0x4da>
d0083462:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0083466:	9e02      	ldr	r6, [sp, #8]
d0083468:	3301      	adds	r3, #1
d008346a:	200c      	movs	r0, #12
d008346c:	2158      	movs	r1, #88	; 0x58
d008346e:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d0083472:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d0083476:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d008347a:	711f      	strb	r7, [r3, #4]
d008347c:	8059      	strh	r1, [r3, #2]
d008347e:	484e      	ldr	r0, [pc, #312]	; (d00835b8 <speech_synth_render+0x5e4>)
d0083480:	f002 f939 	bl	d00856f6 <strlen>
d0083484:	1d02      	adds	r2, r0, #4
d0083486:	4603      	mov	r3, r0
d0083488:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008348c:	d20f      	bcs.n	d00834ae <speech_synth_render+0x4da>
d008348e:	b140      	cbz	r0, d00834a2 <speech_synth_render+0x4ce>
d0083490:	4e49      	ldr	r6, [pc, #292]	; (d00835b8 <speech_synth_render+0x5e4>)
d0083492:	2120      	movs	r1, #32
d0083494:	1832      	adds	r2, r6, r0
d0083496:	4630      	mov	r0, r6
d0083498:	54f1      	strb	r1, [r6, r3]
d008349a:	7057      	strb	r7, [r2, #1]
d008349c:	f002 f92b 	bl	d00856f6 <strlen>
d00834a0:	4603      	mov	r3, r0
d00834a2:	4a45      	ldr	r2, [pc, #276]	; (d00835b8 <speech_synth_render+0x5e4>)
d00834a4:	4945      	ldr	r1, [pc, #276]	; (d00835bc <speech_synth_render+0x5e8>)
d00834a6:	18d0      	adds	r0, r2, r3
d00834a8:	2203      	movs	r2, #3
d00834aa:	f001 ff87 	bl	d00853bc <memcpy>
d00834ae:	3503      	adds	r5, #3
d00834b0:	b2ad      	uxth	r5, r5
d00834b2:	42ac      	cmp	r4, r5
d00834b4:	d89c      	bhi.n	d00833f0 <speech_synth_render+0x41c>
d00834b6:	464e      	mov	r6, r9
d00834b8:	f8bd 50c8 	ldrh.w	r5, [sp, #200]	; 0xc8
d00834bc:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d00834c0:	f080 808a 	bcs.w	d00835d8 <speech_synth_render+0x604>
d00834c4:	eb05 0245 	add.w	r2, r5, r5, lsl #1
d00834c8:	9802      	ldr	r0, [sp, #8]
d00834ca:	3501      	adds	r5, #1
d00834cc:	2400      	movs	r4, #0
d00834ce:	eb00 0342 	add.w	r3, r0, r2, lsl #1
d00834d2:	211a      	movs	r1, #26
d00834d4:	b2ad      	uxth	r5, r5
d00834d6:	f800 4012 	strb.w	r4, [r0, r2, lsl #1]
d00834da:	711c      	strb	r4, [r3, #4]
d00834dc:	8059      	strh	r1, [r3, #2]
d00834de:	4836      	ldr	r0, [pc, #216]	; (d00835b8 <speech_synth_render+0x5e4>)
d00834e0:	f8ad 50c8 	strh.w	r5, [sp, #200]	; 0xc8
d00834e4:	f002 f907 	bl	d00856f6 <strlen>
d00834e8:	1cc2      	adds	r2, r0, #3
d00834ea:	4603      	mov	r3, r0
d00834ec:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00834f0:	d25c      	bcs.n	d00835ac <speech_synth_render+0x5d8>
d00834f2:	b140      	cbz	r0, d0083506 <speech_synth_render+0x532>
d00834f4:	4f30      	ldr	r7, [pc, #192]	; (d00835b8 <speech_synth_render+0x5e4>)
d00834f6:	2120      	movs	r1, #32
d00834f8:	183a      	adds	r2, r7, r0
d00834fa:	4638      	mov	r0, r7
d00834fc:	54f9      	strb	r1, [r7, r3]
d00834fe:	7054      	strb	r4, [r2, #1]
d0083500:	f002 f8f9 	bl	d00856f6 <strlen>
d0083504:	4603      	mov	r3, r0
d0083506:	4a2c      	ldr	r2, [pc, #176]	; (d00835b8 <speech_synth_render+0x5e4>)
d0083508:	4634      	mov	r4, r6
d008350a:	f8dd b00c 	ldr.w	fp, [sp, #12]
d008350e:	18d0      	adds	r0, r2, r3
d0083510:	492b      	ldr	r1, [pc, #172]	; (d00835c0 <speech_synth_render+0x5ec>)
d0083512:	2202      	movs	r2, #2
d0083514:	f001 ff52 	bl	d00853bc <memcpy>
d0083518:	f89b 3000 	ldrb.w	r3, [fp]
d008351c:	2b00      	cmp	r3, #0
d008351e:	f47f adab 	bne.w	d0083078 <speech_synth_render+0xa4>
d0083522:	952f      	str	r5, [sp, #188]	; 0xbc
d0083524:	ad33      	add	r5, sp, #204	; 0xcc
d0083526:	4a27      	ldr	r2, [pc, #156]	; (d00835c4 <speech_synth_render+0x5f0>)
d0083528:	2180      	movs	r1, #128	; 0x80
d008352a:	4827      	ldr	r0, [pc, #156]	; (d00835c8 <speech_synth_render+0x5f4>)
d008352c:	f001 ff54 	bl	d00853d8 <memset>
d0083530:	2244      	movs	r2, #68	; 0x44
d0083532:	4628      	mov	r0, r5
d0083534:	2100      	movs	r1, #0
d0083536:	f001 ff4f 	bl	d00853d8 <memset>
d008353a:	4b24      	ldr	r3, [pc, #144]	; (d00835cc <speech_synth_render+0x5f8>)
d008353c:	461a      	mov	r2, r3
d008353e:	9331      	str	r3, [sp, #196]	; 0xc4
d0083540:	4b23      	ldr	r3, [pc, #140]	; (d00835d0 <speech_synth_render+0x5fc>)
d0083542:	6013      	str	r3, [r2, #0]
d0083544:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
d0083546:	2b00      	cmp	r3, #0
d0083548:	d156      	bne.n	d00835f8 <speech_synth_render+0x624>
d008354a:	4698      	mov	r8, r3
d008354c:	f000 be2b 	b.w	d00841a6 <speech_synth_render+0x11d2>
d0083550:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d0083554:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0083558:	d225      	bcs.n	d00835a6 <speech_synth_render+0x5d2>
d008355a:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d008355e:	9e02      	ldr	r6, [sp, #8]
d0083560:	3301      	adds	r3, #1
d0083562:	200c      	movs	r0, #12
d0083564:	2158      	movs	r1, #88	; 0x58
d0083566:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d008356a:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d008356e:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d0083572:	711f      	strb	r7, [r3, #4]
d0083574:	8059      	strh	r1, [r3, #2]
d0083576:	4810      	ldr	r0, [pc, #64]	; (d00835b8 <speech_synth_render+0x5e4>)
d0083578:	f002 f8bd 	bl	d00856f6 <strlen>
d008357c:	1d02      	adds	r2, r0, #4
d008357e:	4603      	mov	r3, r0
d0083580:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0083584:	d20f      	bcs.n	d00835a6 <speech_synth_render+0x5d2>
d0083586:	b140      	cbz	r0, d008359a <speech_synth_render+0x5c6>
d0083588:	4e0b      	ldr	r6, [pc, #44]	; (d00835b8 <speech_synth_render+0x5e4>)
d008358a:	2120      	movs	r1, #32
d008358c:	1832      	adds	r2, r6, r0
d008358e:	4630      	mov	r0, r6
d0083590:	54f1      	strb	r1, [r6, r3]
d0083592:	7057      	strb	r7, [r2, #1]
d0083594:	f002 f8af 	bl	d00856f6 <strlen>
d0083598:	4603      	mov	r3, r0
d008359a:	4a07      	ldr	r2, [pc, #28]	; (d00835b8 <speech_synth_render+0x5e4>)
d008359c:	4907      	ldr	r1, [pc, #28]	; (d00835bc <speech_synth_render+0x5e8>)
d008359e:	18d0      	adds	r0, r2, r3
d00835a0:	2203      	movs	r2, #3
d00835a2:	f001 ff0b 	bl	d00853bc <memcpy>
d00835a6:	3502      	adds	r5, #2
d00835a8:	b2ad      	uxth	r5, r5
d00835aa:	e71f      	b.n	d00833ec <speech_synth_render+0x418>
d00835ac:	f8dd b00c 	ldr.w	fp, [sp, #12]
d00835b0:	4634      	mov	r4, r6
d00835b2:	e55c      	b.n	d008306e <speech_synth_render+0x9a>
d00835b4:	d00861a8 	.word	0xd00861a8
d00835b8:	d00c8460 	.word	0xd00c8460
d00835bc:	d0085cf0 	.word	0xd0085cf0
d00835c0:	d0085d30 	.word	0xd0085d30
d00835c4:	000410a0 	.word	0x000410a0
d00835c8:	d00873c0 	.word	0xd00873c0
d00835cc:	d0086130 	.word	0xd0086130
d00835d0:	1234abcd 	.word	0x1234abcd
d00835d4:	d0085d60 	.word	0xd0085d60
d00835d8:	4abc      	ldr	r2, [pc, #752]	; (d00838cc <speech_synth_render+0x8f8>)
d00835da:	2180      	movs	r1, #128	; 0x80
d00835dc:	48bc      	ldr	r0, [pc, #752]	; (d00838d0 <speech_synth_render+0x8fc>)
d00835de:	952f      	str	r5, [sp, #188]	; 0xbc
d00835e0:	f001 fefa 	bl	d00853d8 <memset>
d00835e4:	2244      	movs	r2, #68	; 0x44
d00835e6:	2100      	movs	r1, #0
d00835e8:	a833      	add	r0, sp, #204	; 0xcc
d00835ea:	f001 fef5 	bl	d00853d8 <memset>
d00835ee:	4bb9      	ldr	r3, [pc, #740]	; (d00838d4 <speech_synth_render+0x900>)
d00835f0:	461a      	mov	r2, r3
d00835f2:	9331      	str	r3, [sp, #196]	; 0xc4
d00835f4:	4bb8      	ldr	r3, [pc, #736]	; (d00838d8 <speech_synth_render+0x904>)
d00835f6:	6013      	str	r3, [r2, #0]
d00835f8:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
d00835fa:	2200      	movs	r2, #0
d00835fc:	eddf 7ab7 	vldr	s15, [pc, #732]	; d00838dc <speech_synth_render+0x908>
d0083600:	3b01      	subs	r3, #1
d0083602:	f8df 92d4 	ldr.w	r9, [pc, #724]	; d00838d8 <speech_synth_render+0x904>
d0083606:	eeb0 ba67 	vmov.f32	s22, s15
d008360a:	f8df a308 	ldr.w	sl, [pc, #776]	; d0083914 <speech_synth_render+0x940>
d008360e:	b29b      	uxth	r3, r3
d0083610:	eeb0 da67 	vmov.f32	s26, s15
d0083614:	eef0 aa67 	vmov.f32	s21, s15
d0083618:	ed9f fab1 	vldr	s30, [pc, #708]	; d00838e0 <speech_synth_render+0x90c>
d008361c:	3302      	adds	r3, #2
d008361e:	eeb0 aa67 	vmov.f32	s20, s15
d0083622:	eef0 9a67 	vmov.f32	s19, s15
d0083626:	eddf faaf 	vldr	s31, [pc, #700]	; d00838e4 <speech_synth_render+0x910>
d008362a:	eef0 ca67 	vmov.f32	s25, s15
d008362e:	9330      	str	r3, [sp, #192]	; 0xc0
d0083630:	eeb0 9a67 	vmov.f32	s18, s15
d0083634:	2301      	movs	r3, #1
d0083636:	eeb0 ca67 	vmov.f32	s24, s15
d008363a:	46cb      	mov	fp, r9
d008363c:	eeb0 6a67 	vmov.f32	s12, s15
d0083640:	9213      	str	r2, [sp, #76]	; 0x4c
d0083642:	eeb0 7a67 	vmov.f32	s14, s15
d0083646:	9214      	str	r2, [sp, #80]	; 0x50
d0083648:	eef0 da67 	vmov.f32	s27, s15
d008364c:	920b      	str	r2, [sp, #44]	; 0x2c
d008364e:	eeb0 ea67 	vmov.f32	s28, s15
d0083652:	9310      	str	r3, [sp, #64]	; 0x40
d0083654:	eef0 ea67 	vmov.f32	s29, s15
d0083658:	f8cd a030 	str.w	sl, [sp, #48]	; 0x30
d008365c:	9202      	str	r2, [sp, #8]
d008365e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0083660:	992f      	ldr	r1, [sp, #188]	; 0xbc
d0083662:	781a      	ldrb	r2, [r3, #0]
d0083664:	920d      	str	r2, [sp, #52]	; 0x34
d0083666:	9a10      	ldr	r2, [sp, #64]	; 0x40
d0083668:	428a      	cmp	r2, r1
d008366a:	f080 85d9 	bcs.w	d0084220 <speech_synth_render+0x124c>
d008366e:	799b      	ldrb	r3, [r3, #6]
d0083670:	9321      	str	r3, [sp, #132]	; 0x84
d0083672:	930e      	str	r3, [sp, #56]	; 0x38
d0083674:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d0083676:	2096      	movs	r0, #150	; 0x96
d0083678:	8853      	ldrh	r3, [r2, #2]
d008367a:	7911      	ldrb	r1, [r2, #4]
d008367c:	fb00 f003 	mul.w	r0, r0, r3
d0083680:	09c0      	lsrs	r0, r0, #7
d0083682:	2900      	cmp	r1, #0
d0083684:	f000 8598 	beq.w	d00841b8 <speech_synth_render+0x11e4>
d0083688:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d008368a:	2b00      	cmp	r3, #0
d008368c:	f000 85e5 	beq.w	d008425a <speech_synth_render+0x1286>
d0083690:	3b01      	subs	r3, #1
d0083692:	f245 64b8 	movw	r4, #22200	; 0x56b8
d0083696:	2b09      	cmp	r3, #9
d0083698:	4b93      	ldr	r3, [pc, #588]	; (d00838e8 <speech_synth_render+0x914>)
d008369a:	bf94      	ite	ls
d008369c:	220c      	movls	r2, #12
d008369e:	2203      	movhi	r2, #3
d00836a0:	fb02 0001 	mla	r0, r2, r1, r0
d00836a4:	fb04 f000 	mul.w	r0, r4, r0
d00836a8:	fba3 2300 	umull	r2, r3, r3, r0
d00836ac:	099b      	lsrs	r3, r3, #6
d00836ae:	9301      	str	r3, [sp, #4]
d00836b0:	9f01      	ldr	r7, [sp, #4]
d00836b2:	4a8e      	ldr	r2, [pc, #568]	; (d00838ec <speech_synth_render+0x918>)
d00836b4:	463c      	mov	r4, r7
d00836b6:	4b8e      	ldr	r3, [pc, #568]	; (d00838f0 <speech_synth_render+0x91c>)
d00836b8:	4290      	cmp	r0, r2
d00836ba:	bf88      	it	hi
d00836bc:	f44f 7446 	movhi.w	r4, #792	; 0x318
d00836c0:	9a02      	ldr	r2, [sp, #8]
d00836c2:	429a      	cmp	r2, r3
d00836c4:	9429      	str	r4, [sp, #164]	; 0xa4
d00836c6:	bf8c      	ite	hi
d00836c8:	2300      	movhi	r3, #0
d00836ca:	2301      	movls	r3, #1
d00836cc:	2f00      	cmp	r7, #0
d00836ce:	f000 855a 	beq.w	d0084186 <speech_synth_render+0x11b2>
d00836d2:	2b00      	cmp	r3, #0
d00836d4:	f000 8557 	beq.w	d0084186 <speech_synth_render+0x11b2>
d00836d8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d00836da:	ee06 1a90 	vmov	s13, r1
d00836de:	9d0e      	ldr	r5, [sp, #56]	; 0x38
d00836e0:	2900      	cmp	r1, #0
d00836e2:	4e84      	ldr	r6, [pc, #528]	; (d00838f4 <speech_synth_render+0x920>)
d00836e4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00836e8:	eb05 0285 	add.w	r2, r5, r5, lsl #2
d00836ec:	4c82      	ldr	r4, [pc, #520]	; (d00838f8 <speech_synth_render+0x924>)
d00836ee:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d00836f2:	eef8 6a66 	vcvt.f32.u32	s13, s13
d00836f6:	eb06 0282 	add.w	r2, r6, r2, lsl #2
d00836fa:	fba4 4000 	umull	r4, r0, r4, r0
d00836fe:	889e      	ldrh	r6, [r3, #4]
d0083700:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0083704:	88dc      	ldrh	r4, [r3, #6]
d0083706:	eef0 8a67 	vmov.f32	s17, s15
d008370a:	4637      	mov	r7, r6
d008370c:	9606      	str	r6, [sp, #24]
d008370e:	8896      	ldrh	r6, [r2, #4]
d0083710:	f101 0154 	add.w	r1, r1, #84	; 0x54
d0083714:	9403      	str	r4, [sp, #12]
d0083716:	bf08      	it	eq
d0083718:	2154      	moveq	r1, #84	; 0x54
d008371a:	88d5      	ldrh	r5, [r2, #6]
d008371c:	1bf7      	subs	r7, r6, r7
d008371e:	9e03      	ldr	r6, [sp, #12]
d0083720:	eef0 ba47 	vmov.f32	s23, s14
d0083724:	891c      	ldrh	r4, [r3, #8]
d0083726:	1bae      	subs	r6, r5, r6
d0083728:	eddf 5a74 	vldr	s11, [pc, #464]	; d00838fc <speech_synth_render+0x928>
d008372c:	9404      	str	r4, [sp, #16]
d008372e:	9623      	str	r6, [sp, #140]	; 0x8c
d0083730:	eee6 5a8f 	vfma.f32	s11, s13, s30
d0083734:	8914      	ldrh	r4, [r2, #8]
d0083736:	9e04      	ldr	r6, [sp, #16]
d0083738:	7a95      	ldrb	r5, [r2, #10]
d008373a:	1ba4      	subs	r4, r4, r6
d008373c:	9722      	str	r7, [sp, #136]	; 0x88
d008373e:	7a9f      	ldrb	r7, [r3, #10]
d0083740:	7ade      	ldrb	r6, [r3, #11]
d0083742:	9707      	str	r7, [sp, #28]
d0083744:	1bef      	subs	r7, r5, r7
d0083746:	9424      	str	r4, [sp, #144]	; 0x90
d0083748:	7ad4      	ldrb	r4, [r2, #11]
d008374a:	eddf 6a6d 	vldr	s13, [pc, #436]	; d0083900 <speech_synth_render+0x92c>
d008374e:	1ba4      	subs	r4, r4, r6
d0083750:	9725      	str	r7, [sp, #148]	; 0x94
d0083752:	912b      	str	r1, [sp, #172]	; 0xac
d0083754:	ee65 7aa6 	vmul.f32	s15, s11, s13
d0083758:	7b1f      	ldrb	r7, [r3, #12]
d008375a:	7b11      	ldrb	r1, [r2, #12]
d008375c:	9312      	str	r3, [sp, #72]	; 0x48
d008375e:	7b52      	ldrb	r2, [r2, #13]
d0083760:	9426      	str	r4, [sp, #152]	; 0x98
d0083762:	7b5c      	ldrb	r4, [r3, #13]
d0083764:	1bcb      	subs	r3, r1, r7
d0083766:	0981      	lsrs	r1, r0, #6
d0083768:	9709      	str	r7, [sp, #36]	; 0x24
d008376a:	9608      	str	r6, [sp, #32]
d008376c:	edcd 7a2a 	vstr	s15, [sp, #168]	; 0xa8
d0083770:	940a      	str	r4, [sp, #40]	; 0x28
d0083772:	9327      	str	r3, [sp, #156]	; 0x9c
d0083774:	912c      	str	r1, [sp, #176]	; 0xb0
d0083776:	1b11      	subs	r1, r2, r4
d0083778:	4b62      	ldr	r3, [pc, #392]	; (d0083904 <speech_synth_render+0x930>)
d008377a:	9a02      	ldr	r2, [sp, #8]
d008377c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
d008377e:	18d3      	adds	r3, r2, r3
d0083780:	9f01      	ldr	r7, [sp, #4]
d0083782:	9128      	str	r1, [sp, #160]	; 0xa0
d0083784:	00a9      	lsls	r1, r5, #2
d0083786:	9311      	str	r3, [sp, #68]	; 0x44
d0083788:	087b      	lsrs	r3, r7, #1
d008378a:	912d      	str	r1, [sp, #180]	; 0xb4
d008378c:	932e      	str	r3, [sp, #184]	; 0xb8
d008378e:	2300      	movs	r3, #0
d0083790:	9929      	ldr	r1, [sp, #164]	; 0xa4
d0083792:	4699      	mov	r9, r3
d0083794:	2900      	cmp	r1, #0
d0083796:	f000 83e5 	beq.w	d0083f64 <speech_synth_render+0xf90>
d008379a:	eb09 0301 	add.w	r3, r9, r1
d008379e:	9c01      	ldr	r4, [sp, #4]
d00837a0:	429c      	cmp	r4, r3
d00837a2:	f200 83df 	bhi.w	d0083f64 <speech_synth_render+0xf90>
d00837a6:	ea4f 0359 	mov.w	r3, r9, lsr #1
d00837aa:	4857      	ldr	r0, [pc, #348]	; (d0083908 <speech_synth_render+0x934>)
d00837ac:	22de      	movs	r2, #222	; 0xde
d00837ae:	fba0 0303 	umull	r0, r3, r0, r3
d00837b2:	099b      	lsrs	r3, r3, #6
d00837b4:	fb02 1303 	mla	r3, r2, r3, r1
d00837b8:	42a3      	cmp	r3, r4
d00837ba:	f0c0 83d3 	bcc.w	d0083f64 <speech_synth_render+0xf90>
d00837be:	1b1b      	subs	r3, r3, r4
d00837c0:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
d00837c4:	fbb3 f3f1 	udiv	r3, r3, r1
d00837c8:	b29a      	uxth	r2, r3
d00837ca:	2a7f      	cmp	r2, #127	; 0x7f
d00837cc:	f200 8465 	bhi.w	d008409a <speech_synth_render+0x10c6>
d00837d0:	b29b      	uxth	r3, r3
d00837d2:	9922      	ldr	r1, [sp, #136]	; 0x88
d00837d4:	9826      	ldr	r0, [sp, #152]	; 0x98
d00837d6:	fb03 f601 	mul.w	r6, r3, r1
d00837da:	9a28      	ldr	r2, [sp, #160]	; 0xa0
d00837dc:	fb03 f000 	mul.w	r0, r3, r0
d00837e0:	9923      	ldr	r1, [sp, #140]	; 0x8c
d00837e2:	4f4a      	ldr	r7, [pc, #296]	; (d008390c <speech_synth_render+0x938>)
d00837e4:	fb03 f402 	mul.w	r4, r3, r2
d00837e8:	fb03 f501 	mul.w	r5, r3, r1
d00837ec:	9a25      	ldr	r2, [sp, #148]	; 0x94
d00837ee:	9005      	str	r0, [sp, #20]
d00837f0:	ea4f 78e4 	mov.w	r8, r4, asr #31
d00837f4:	9827      	ldr	r0, [sp, #156]	; 0x9c
d00837f6:	fb03 f202 	mul.w	r2, r3, r2
d00837fa:	9924      	ldr	r1, [sp, #144]	; 0x90
d00837fc:	ea4f 7ae6 	mov.w	sl, r6, asr #31
d0083800:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d0083804:	fb03 f101 	mul.w	r1, r3, r1
d0083808:	fb03 f300 	mul.w	r3, r3, r0
d008380c:	fb87 0e04 	smull	r0, lr, r7, r4
d0083810:	4474      	add	r4, lr
d0083812:	fb87 0e02 	smull	r0, lr, r7, r2
d0083816:	4472      	add	r2, lr
d0083818:	fb87 0e06 	smull	r0, lr, r7, r6
d008381c:	ebc8 14e4 	rsb	r4, r8, r4, asr #7
d0083820:	fb87 0805 	smull	r0, r8, r7, r5
d0083824:	ebcc 12e2 	rsb	r2, ip, r2, asr #7
d0083828:	4476      	add	r6, lr
d008382a:	fb87 0e01 	smull	r0, lr, r7, r1
d008382e:	44a8      	add	r8, r5
d0083830:	920f      	str	r2, [sp, #60]	; 0x3c
d0083832:	ebca 16e6 	rsb	r6, sl, r6, asr #7
d0083836:	9a05      	ldr	r2, [sp, #20]
d0083838:	17ed      	asrs	r5, r5, #31
d008383a:	448e      	add	lr, r1
d008383c:	17c9      	asrs	r1, r1, #31
d008383e:	fb87 0c02 	smull	r0, ip, r7, r2
d0083842:	ebc5 15e8 	rsb	r5, r5, r8, asr #7
d0083846:	fb87 0703 	smull	r0, r7, r7, r3
d008384a:	17d0      	asrs	r0, r2, #31
d008384c:	4494      	add	ip, r2
d008384e:	ebc1 11ee 	rsb	r1, r1, lr, asr #7
d0083852:	eb07 0a03 	add.w	sl, r7, r3
d0083856:	17db      	asrs	r3, r3, #31
d0083858:	ebc0 10ec 	rsb	r0, r0, ip, asr #7
d008385c:	9f0a      	ldr	r7, [sp, #40]	; 0x28
d008385e:	ebc3 1cea 	rsb	ip, r3, sl, asr #7
d0083862:	9b03      	ldr	r3, [sp, #12]
d0083864:	443c      	add	r4, r7
d0083866:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0083868:	441d      	add	r5, r3
d008386a:	9b04      	ldr	r3, [sp, #16]
d008386c:	9f07      	ldr	r7, [sp, #28]
d008386e:	b2e4      	uxtb	r4, r4
d0083870:	4419      	add	r1, r3
d0083872:	9b08      	ldr	r3, [sp, #32]
d0083874:	443a      	add	r2, r7
d0083876:	9f06      	ldr	r7, [sp, #24]
d0083878:	4418      	add	r0, r3
d008387a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d008387c:	4437      	add	r7, r6
d008387e:	b2d2      	uxtb	r2, r2
d0083880:	449c      	add	ip, r3
d0083882:	b2ad      	uxth	r5, r5
d0083884:	b2bf      	uxth	r7, r7
d0083886:	b289      	uxth	r1, r1
d0083888:	b2c0      	uxtb	r0, r0
d008388a:	fa5f fc8c 	uxtb.w	ip, ip
d008388e:	9b12      	ldr	r3, [sp, #72]	; 0x48
d0083890:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
d0083894:	7b9e      	ldrb	r6, [r3, #14]
d0083896:	f006 0301 	and.w	r3, r6, #1
d008389a:	9305      	str	r3, [sp, #20]
d008389c:	f1aa 0315 	sub.w	r3, sl, #21
d00838a0:	b2db      	uxtb	r3, r3
d00838a2:	2b02      	cmp	r3, #2
d00838a4:	f240 83ec 	bls.w	d0084080 <speech_synth_render+0x10ac>
d00838a8:	f1aa 0314 	sub.w	r3, sl, #20
d00838ac:	b2db      	uxtb	r3, r3
d00838ae:	2b0c      	cmp	r3, #12
d00838b0:	f240 83d2 	bls.w	d0084058 <speech_synth_render+0x1084>
d00838b4:	f1aa 030e 	sub.w	r3, sl, #14
d00838b8:	b2db      	uxtb	r3, r3
d00838ba:	2b14      	cmp	r3, #20
d00838bc:	f240 84b8 	bls.w	d0084230 <speech_synth_render+0x125c>
d00838c0:	f1ba 0f1c 	cmp.w	sl, #28
d00838c4:	f200 853c 	bhi.w	d0084340 <speech_synth_render+0x136c>
d00838c8:	4b11      	ldr	r3, [pc, #68]	; (d0083910 <speech_synth_render+0x93c>)
d00838ca:	e03b      	b.n	d0083944 <speech_synth_render+0x970>
d00838cc:	000410a0 	.word	0x000410a0
d00838d0:	d00873c0 	.word	0xd00873c0
d00838d4:	d0086130 	.word	0xd0086130
d00838d8:	1234abcd 	.word	0x1234abcd
d00838dc:	00000000 	.word	0x00000000
d00838e0:	3d3851ec 	.word	0x3d3851ec
d00838e4:	3fdc28f6 	.word	0x3fdc28f6
d00838e8:	10624dd3 	.word	0x10624dd3
d00838ec:	000c15bf 	.word	0x000c15bf
d00838f0:	0004109f 	.word	0x0004109f
d00838f4:	d0085dac 	.word	0xd0085dac
d00838f8:	057619f1 	.word	0x057619f1
d00838fc:	3f940000 	.word	0x3f940000
d0083900:	3b808081 	.word	0x3b808081
d0083904:	d00873bf 	.word	0xd00873bf
d0083908:	939a85c5 	.word	0x939a85c5
d008390c:	80808081 	.word	0x80808081
d0083910:	110d3800 	.word	0x110d3800
d0083914:	d00861a8 	.word	0xd00861a8
d0083918:	435ec000 	.word	0x435ec000
d008391c:	44148000 	.word	0x44148000
d0083920:	43948000 	.word	0x43948000
d0083924:	42e70000 	.word	0x42e70000
d0083928:	43d68000 	.word	0x43d68000
d008392c:	431cc000 	.word	0x431cc000
d0083930:	44460000 	.word	0x44460000
d0083934:	4401f000 	.word	0x4401f000
d0083938:	447fc000 	.word	0x447fc000
d008393c:	3fdc28f6 	.word	0x3fdc28f6
d0083940:	4422f000 	.word	0x4422f000
d0083944:	ed5f 7a0c 	vldr	s15, [pc, #-48]	; d0083918 <speech_synth_render+0x944>
d0083948:	fa23 f30a 	lsr.w	r3, r3, sl
d008394c:	ed5f 1a0d 	vldr	s3, [pc, #-52]	; d008391c <speech_synth_render+0x948>
d0083950:	ed1f 5a0d 	vldr	s10, [pc, #-52]	; d0083920 <speech_synth_render+0x94c>
d0083954:	43db      	mvns	r3, r3
d0083956:	ed1f 7a0d 	vldr	s14, [pc, #-52]	; d0083924 <speech_synth_render+0x950>
d008395a:	ed1f 1a0d 	vldr	s2, [pc, #-52]	; d0083928 <speech_synth_render+0x954>
d008395e:	f003 0301 	and.w	r3, r3, #1
d0083962:	ed5f 5a0e 	vldr	s11, [pc, #-56]	; d008392c <speech_synth_render+0x958>
d0083966:	ed1f 2a0e 	vldr	s4, [pc, #-56]	; d0083930 <speech_synth_render+0x95c>
d008396a:	2b00      	cmp	r3, #0
d008396c:	ed5f 6a0f 	vldr	s13, [pc, #-60]	; d0083934 <speech_synth_render+0x960>
d0083970:	ed5f 2a0f 	vldr	s5, [pc, #-60]	; d0083938 <speech_synth_render+0x964>
d0083974:	fe41 1aa7 	vseleq.f32	s3, s3, s15
d0083978:	ed1f 8a10 	vldr	s16, [pc, #-64]	; d008393c <speech_synth_render+0x968>
d008397c:	ed5f 7a10 	vldr	s15, [pc, #-64]	; d0083940 <speech_synth_render+0x96c>
d0083980:	fe05 7a07 	vseleq.f32	s14, s10, s14
d0083984:	fe01 1a25 	vseleq.f32	s2, s2, s11
d0083988:	fe02 2a26 	vseleq.f32	s4, s4, s13
d008398c:	fe42 2aa7 	vseleq.f32	s5, s5, s15
d0083990:	eb07 0e47 	add.w	lr, r7, r7, lsl #1
d0083994:	f241 736f 	movw	r3, #5999	; 0x176f
d0083998:	ebc7 174e 	rsb	r7, r7, lr, lsl #5
d008399c:	429f      	cmp	r7, r3
d008399e:	f340 833b 	ble.w	d0084018 <speech_synth_render+0x1044>
d00839a2:	f8df e3b8 	ldr.w	lr, [pc, #952]	; d0083d5c <speech_synth_render+0xd88>
d00839a6:	f641 1364 	movw	r3, #6500	; 0x1964
d00839aa:	eddf 5aea 	vldr	s11, [pc, #936]	; d0083d54 <speech_synth_render+0xd80>
d00839ae:	fbae 6707 	umull	r6, r7, lr, r7
d00839b2:	eddf 6ae9 	vldr	s13, [pc, #932]	; d0083d58 <speech_synth_render+0xd84>
d00839b6:	097f      	lsrs	r7, r7, #5
d00839b8:	429f      	cmp	r7, r3
d00839ba:	bfa8      	it	ge
d00839bc:	461f      	movge	r7, r3
d00839be:	ee07 7a90 	vmov	s15, r7
d00839c2:	276e      	movs	r7, #110	; 0x6e
d00839c4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00839c8:	fb07 f505 	mul.w	r5, r7, r5
d00839cc:	ee67 7aa5 	vmul.f32	s15, s15, s11
d00839d0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00839d4:	ee17 3a90 	vmov	r3, s15
d00839d8:	fa1f f883 	uxth.w	r8, r3
d00839dc:	f108 0301 	add.w	r3, r8, #1
d00839e0:	ee05 8a90 	vmov	s11, r8
d00839e4:	ee07 3a90 	vmov	s15, r3
d00839e8:	f241 736f 	movw	r3, #5999	; 0x176f
d00839ec:	eef8 3a65 	vcvt.f32.u32	s7, s11
d00839f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00839f4:	429d      	cmp	r5, r3
d00839f6:	ee63 3aa6 	vmul.f32	s7, s7, s13
d00839fa:	ee87 8a27 	vdiv.f32	s16, s14, s15
d00839fe:	fe88 8a6f 	vminnm.f32	s16, s16, s31
d0083a02:	fe88 8a0f 	vmaxnm.f32	s16, s16, s30
d0083a06:	f340 8313 	ble.w	d0084030 <speech_synth_render+0x105c>
d0083a0a:	4fd4      	ldr	r7, [pc, #848]	; (d0083d5c <speech_synth_render+0xd88>)
d0083a0c:	f641 1364 	movw	r3, #6500	; 0x1964
d0083a10:	eddf 6ad0 	vldr	s13, [pc, #832]	; d0083d54 <speech_synth_render+0xd80>
d0083a14:	f04f 0e73 	mov.w	lr, #115	; 0x73
d0083a18:	fba7 6505 	umull	r6, r5, r7, r5
d0083a1c:	ed9f 7ace 	vldr	s14, [pc, #824]	; d0083d58 <speech_synth_render+0xd84>
d0083a20:	fb0e f101 	mul.w	r1, lr, r1
d0083a24:	096d      	lsrs	r5, r5, #5
d0083a26:	429d      	cmp	r5, r3
d0083a28:	bfa8      	it	ge
d0083a2a:	461d      	movge	r5, r3
d0083a2c:	ee07 5a90 	vmov	s15, r5
d0083a30:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0083a34:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0083a38:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0083a3c:	ee17 3a90 	vmov	r3, s15
d0083a40:	b29f      	uxth	r7, r3
d0083a42:	1c7b      	adds	r3, r7, #1
d0083a44:	ee07 7a90 	vmov	s15, r7
d0083a48:	ee05 3a10 	vmov	s10, r3
d0083a4c:	f241 736f 	movw	r3, #5999	; 0x176f
d0083a50:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0083a54:	4299      	cmp	r1, r3
d0083a56:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
d0083a5a:	ee24 4a07 	vmul.f32	s8, s8, s14
d0083a5e:	f340 82f5 	ble.w	d008404c <speech_synth_render+0x1078>
d0083a62:	4dbe      	ldr	r5, [pc, #760]	; (d0083d5c <speech_synth_render+0xd88>)
d0083a64:	f641 1364 	movw	r3, #6500	; 0x1964
d0083a68:	eddf 6aba 	vldr	s13, [pc, #744]	; d0083d54 <speech_synth_render+0xd80>
d0083a6c:	fba5 5101 	umull	r5, r1, r5, r1
d0083a70:	ed9f 7ab9 	vldr	s14, [pc, #740]	; d0083d58 <speech_synth_render+0xd84>
d0083a74:	0949      	lsrs	r1, r1, #5
d0083a76:	4299      	cmp	r1, r3
d0083a78:	bfa8      	it	ge
d0083a7a:	4619      	movge	r1, r3
d0083a7c:	ee07 1a90 	vmov	s15, r1
d0083a80:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0083a84:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0083a88:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0083a8c:	ee17 3a90 	vmov	r3, s15
d0083a90:	b29d      	uxth	r5, r3
d0083a92:	ee07 5a90 	vmov	s15, r5
d0083a96:	1c6b      	adds	r3, r5, #1
d0083a98:	eef8 4a67 	vcvt.f32.u32	s9, s15
d0083a9c:	ee05 3a90 	vmov	s11, r3
d0083aa0:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d0083aa4:	ee64 4a87 	vmul.f32	s9, s9, s14
d0083aa8:	3204      	adds	r2, #4
d0083aaa:	3014      	adds	r0, #20
d0083aac:	f10c 0c08 	add.w	ip, ip, #8
d0083ab0:	2aff      	cmp	r2, #255	; 0xff
d0083ab2:	bfa8      	it	ge
d0083ab4:	22ff      	movge	r2, #255	; 0xff
d0083ab6:	28ff      	cmp	r0, #255	; 0xff
d0083ab8:	bfa8      	it	ge
d0083aba:	20ff      	movge	r0, #255	; 0xff
d0083abc:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
d0083ac0:	b2c3      	uxtb	r3, r0
d0083ac2:	bfa8      	it	ge
d0083ac4:	f04f 0cff 	movge.w	ip, #255	; 0xff
d0083ac8:	9315      	str	r3, [sp, #84]	; 0x54
d0083aca:	fa5f f38c 	uxtb.w	r3, ip
d0083ace:	9316      	str	r3, [sp, #88]	; 0x58
d0083ad0:	b2d3      	uxtb	r3, r2
d0083ad2:	930f      	str	r3, [sp, #60]	; 0x3c
d0083ad4:	f1b9 0f00 	cmp.w	r9, #0
d0083ad8:	d002      	beq.n	d0083ae0 <speech_synth_render+0xb0c>
d0083ada:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0083adc:	2bdd      	cmp	r3, #221	; 0xdd
d0083ade:	d91a      	bls.n	d0083b16 <speech_synth_render+0xb42>
d0083ae0:	ea8b 3b4b 	eor.w	fp, fp, fp, lsl #13
d0083ae4:	9b02      	ldr	r3, [sp, #8]
d0083ae6:	2200      	movs	r2, #0
d0083ae8:	f3c3 23c2 	ubfx	r3, r3, #11, #3
d0083aec:	ea8b 4b5b 	eor.w	fp, fp, fp, lsr #17
d0083af0:	920b      	str	r2, [sp, #44]	; 0x2c
d0083af2:	3b03      	subs	r3, #3
d0083af4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
d0083af6:	ea8b 1b4b 	eor.w	fp, fp, fp, lsl #5
d0083afa:	4413      	add	r3, r2
d0083afc:	ea4f 422b 	mov.w	r2, fp, asr #16
d0083b00:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d0083b04:	eb03 4362 	add.w	r3, r3, r2, asr #17
d0083b08:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0083b0c:	bfa8      	it	ge
d0083b0e:	f44f 73a0 	movge.w	r3, #320	; 0x140
d0083b12:	b29b      	uxth	r3, r3
d0083b14:	9314      	str	r3, [sp, #80]	; 0x50
d0083b16:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
d0083b18:	2300      	movs	r3, #0
d0083b1a:	f245 62b8 	movw	r2, #22200	; 0x56b8
d0083b1e:	2000      	movs	r0, #0
d0083b20:	3601      	adds	r6, #1
d0083b22:	9914      	ldr	r1, [sp, #80]	; 0x50
d0083b24:	ed8d 6a20 	vstr	s12, [sp, #128]	; 0x80
d0083b28:	edcd 5a1f 	vstr	s11, [sp, #124]	; 0x7c
d0083b2c:	edcd 4a1e 	vstr	s9, [sp, #120]	; 0x78
d0083b30:	ed8d 5a1d 	vstr	s10, [sp, #116]	; 0x74
d0083b34:	ed8d 4a1c 	vstr	s8, [sp, #112]	; 0x70
d0083b38:	edcd 3a1b 	vstr	s7, [sp, #108]	; 0x6c
d0083b3c:	ed8d 1a1a 	vstr	s2, [sp, #104]	; 0x68
d0083b40:	edcd 1a19 	vstr	s3, [sp, #100]	; 0x64
d0083b44:	ed8d 2a18 	vstr	s4, [sp, #96]	; 0x60
d0083b48:	edcd 2a17 	vstr	s5, [sp, #92]	; 0x5c
d0083b4c:	960b      	str	r6, [sp, #44]	; 0x2c
d0083b4e:	f001 faab 	bl	d00850a8 <__aeabi_uldivmod>
d0083b52:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0083b54:	eddd 2a17 	vldr	s5, [sp, #92]	; 0x5c
d0083b58:	1818      	adds	r0, r3, r0
d0083b5a:	ed9d 2a18 	vldr	s4, [sp, #96]	; 0x60
d0083b5e:	eddd 1a19 	vldr	s3, [sp, #100]	; 0x64
d0083b62:	ed9d 1a1a 	vldr	s2, [sp, #104]	; 0x68
d0083b66:	eddd 3a1b 	vldr	s7, [sp, #108]	; 0x6c
d0083b6a:	ed9d 4a1c 	vldr	s8, [sp, #112]	; 0x70
d0083b6e:	ed9d 5a1d 	vldr	s10, [sp, #116]	; 0x74
d0083b72:	eddd 4a1e 	vldr	s9, [sp, #120]	; 0x78
d0083b76:	eddd 5a1f 	vldr	s11, [sp, #124]	; 0x7c
d0083b7a:	ed9d 6a20 	vldr	s12, [sp, #128]	; 0x80
d0083b7e:	9013      	str	r0, [sp, #76]	; 0x4c
d0083b80:	f0c0 8247 	bcc.w	d0084012 <speech_synth_render+0x103e>
d0083b84:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0083b88:	eddf 7a8d 	vldr	s15, [pc, #564]	; d0083dc0 <speech_synth_render+0xdec>
d0083b8c:	ee7d da87 	vadd.f32	s27, s27, s14
d0083b90:	0c00      	lsrs	r0, r0, #16
d0083b92:	eddf 6a73 	vldr	s13, [pc, #460]	; d0083d60 <speech_synth_render+0xd8c>
d0083b96:	9b05      	ldr	r3, [sp, #20]
d0083b98:	ee07 0a10 	vmov	s14, r0
d0083b9c:	ed9f 3a82 	vldr	s6, [pc, #520]	; d0083da8 <speech_synth_render+0xdd4>
d0083ba0:	2b00      	cmp	r3, #0
d0083ba2:	eddf 0a70 	vldr	s1, [pc, #448]	; d0083d64 <speech_synth_render+0xd90>
d0083ba6:	eeb8 0ac7 	vcvt.f32.s32	s0, s14
d0083baa:	ed9f 7a6f 	vldr	s14, [pc, #444]	; d0083d68 <speech_synth_render+0xd94>
d0083bae:	fe03 7a07 	vseleq.f32	s14, s6, s14
d0083bb2:	ee6d da87 	vmul.f32	s27, s27, s14
d0083bb6:	eeb4 0ae6 	vcmpe.f32	s0, s13
d0083bba:	ee60 0a20 	vmul.f32	s1, s0, s1
d0083bbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0083bc2:	f100 8217 	bmi.w	d0083ff4 <speech_synth_render+0x1020>
d0083bc6:	ed9f 7a69 	vldr	s14, [pc, #420]	; d0083d6c <speech_synth_render+0xd98>
d0083bca:	eeb4 0ac7 	vcmpe.f32	s0, s14
d0083bce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0083bd2:	f100 81fa 	bmi.w	d0083fca <speech_synth_render+0xff6>
d0083bd6:	ed9f 7a83 	vldr	s14, [pc, #524]	; d0083de4 <speech_synth_render+0xe10>
d0083bda:	2b00      	cmp	r3, #0
d0083bdc:	f040 81dc 	bne.w	d0083f98 <speech_synth_render+0xfc4>
d0083be0:	eddd 7a0f 	vldr	s15, [sp, #60]	; 0x3c
d0083be4:	eddf 6a7f 	vldr	s13, [pc, #508]	; d0083de4 <speech_synth_render+0xe10>
d0083be8:	eef8 ba67 	vcvt.f32.u32	s23, s15
d0083bec:	2c00      	cmp	r4, #0
d0083bee:	f000 81d0 	beq.w	d0083f92 <speech_synth_render+0xfbe>
d0083bf2:	9b12      	ldr	r3, [sp, #72]	; 0x48
d0083bf4:	ee07 4a90 	vmov	s15, r4
d0083bf8:	7b9b      	ldrb	r3, [r3, #14]
d0083bfa:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d0083bfe:	eddf 7a5c 	vldr	s15, [pc, #368]	; d0083d70 <speech_synth_render+0xd9c>
d0083c02:	079b      	lsls	r3, r3, #30
d0083c04:	ee63 7a27 	vmul.f32	s15, s6, s15
d0083c08:	d50f      	bpl.n	d0083c2a <speech_synth_render+0xc56>
d0083c0a:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
d0083c0c:	4599      	cmp	r9, r3
d0083c0e:	f080 82af 	bcs.w	d0084170 <speech_synth_render+0x119c>
d0083c12:	ed9f 3a58 	vldr	s6, [pc, #352]	; d0083d74 <speech_synth_render+0xda0>
d0083c16:	eddf 0a58 	vldr	s1, [pc, #352]	; d0083d78 <speech_synth_render+0xda4>
d0083c1a:	ee66 6a83 	vmul.f32	s13, s13, s6
d0083c1e:	ed9f 3a57 	vldr	s6, [pc, #348]	; d0083d7c <speech_synth_render+0xda8>
d0083c22:	ee6d daa0 	vmul.f32	s27, s27, s1
d0083c26:	ee67 7a83 	vmul.f32	s15, s15, s6
d0083c2a:	ea8b 3b4b 	eor.w	fp, fp, fp, lsl #13
d0083c2e:	ea8b 4b5b 	eor.w	fp, fp, fp, lsr #17
d0083c32:	ea8b 1b4b 	eor.w	fp, fp, fp, lsl #5
d0083c36:	ea4f 432b 	mov.w	r3, fp, asr #16
d0083c3a:	ee03 3a10 	vmov	s6, r3
d0083c3e:	eeba 3ae8 	vcvt.f32.s32	s6, s6, #15
d0083c42:	ee23 3a27 	vmul.f32	s6, s6, s15
d0083c46:	f1ba 0f11 	cmp.w	sl, #17
d0083c4a:	f000 8194 	beq.w	d0083f76 <speech_synth_render+0xfa2>
d0083c4e:	9b05      	ldr	r3, [sp, #20]
d0083c50:	b17b      	cbz	r3, d0083c72 <speech_synth_render+0xc9e>
d0083c52:	ea8b 3b4b 	eor.w	fp, fp, fp, lsl #13
d0083c56:	eddf 0a4a 	vldr	s1, [pc, #296]	; d0083d80 <speech_synth_render+0xdac>
d0083c5a:	ea8b 4b5b 	eor.w	fp, fp, fp, lsr #17
d0083c5e:	ea8b 1b4b 	eor.w	fp, fp, fp, lsl #5
d0083c62:	ea4f 432b 	mov.w	r3, fp, asr #16
d0083c66:	ee07 3a90 	vmov	s15, r3
d0083c6a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0083c6e:	eee7 6aa0 	vfma.f32	s13, s15, s1
d0083c72:	ee76 7ac6 	vsub.f32	s15, s13, s12
d0083c76:	ed9f 0a50 	vldr	s0, [pc, #320]	; d0083db8 <speech_synth_render+0xde4>
d0083c7a:	eddf 0a42 	vldr	s1, [pc, #264]	; d0083d84 <speech_synth_render+0xdb0>
d0083c7e:	f1b8 0f7b 	cmp.w	r8, #123	; 0x7b
d0083c82:	eea7 6a80 	vfma.f32	s12, s15, s0
d0083c86:	ee76 6ac6 	vsub.f32	s13, s13, s12
d0083c8a:	eef0 7a46 	vmov.f32	s15, s12
d0083c8e:	eee6 7aa0 	vfma.f32	s15, s13, s1
d0083c92:	f240 817b 	bls.w	d0083f8c <speech_synth_render+0xfb8>
d0083c96:	eddf 6a3c 	vldr	s13, [pc, #240]	; d0083d88 <speech_synth_render+0xdb4>
d0083c9a:	fec3 3ae6 	vminnm.f32	s7, s7, s13
d0083c9e:	eef0 0a67 	vmov.f32	s1, s15
d0083ca2:	2f7b      	cmp	r7, #123	; 0x7b
d0083ca4:	eea3 ca89 	vfma.f32	s24, s7, s18
d0083ca8:	eec1 6a05 	vdiv.f32	s13, s2, s10
d0083cac:	eee9 0a48 	vfms.f32	s1, s18, s16
d0083cb0:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
d0083cb4:	ee70 0acc 	vsub.f32	s1, s1, s24
d0083cb8:	fe8c ca41 	vminnm.f32	s24, s24, s2
d0083cbc:	eea3 9aa0 	vfma.f32	s18, s7, s1
d0083cc0:	eefa 3a00 	vmov.f32	s7, #160	; 0xc1000000 -8.0
d0083cc4:	fe8c ca23 	vmaxnm.f32	s24, s24, s7
d0083cc8:	fe89 9a41 	vminnm.f32	s18, s18, s2
d0083ccc:	fe89 9a23 	vmaxnm.f32	s18, s18, s7
d0083cd0:	f240 8159 	bls.w	d0083f86 <speech_synth_render+0xfb2>
d0083cd4:	eddf 3a2c 	vldr	s7, [pc, #176]	; d0083d88 <speech_synth_render+0xdb4>
d0083cd8:	fe84 4a63 	vminnm.f32	s8, s8, s7
d0083cdc:	eef0 3a67 	vmov.f32	s7, s15
d0083ce0:	fec6 6aef 	vminnm.f32	s13, s13, s31
d0083ce4:	eee9 ca84 	vfma.f32	s25, s19, s8
d0083ce8:	fec6 6a8f 	vmaxnm.f32	s13, s13, s30
d0083cec:	2d7b      	cmp	r5, #123	; 0x7b
d0083cee:	eee9 3ae6 	vfms.f32	s7, s19, s13
d0083cf2:	eec1 6aa5 	vdiv.f32	s13, s3, s11
d0083cf6:	ee73 3aec 	vsub.f32	s7, s7, s25
d0083cfa:	eef2 1a00 	vmov.f32	s3, #32	; 0x41000000  8.0
d0083cfe:	eee4 9a23 	vfma.f32	s19, s8, s7
d0083d02:	eefa 3a00 	vmov.f32	s7, #160	; 0xc1000000 -8.0
d0083d06:	fecc cae1 	vminnm.f32	s25, s25, s3
d0083d0a:	fecc caa3 	vmaxnm.f32	s25, s25, s7
d0083d0e:	fec9 9ae1 	vminnm.f32	s19, s19, s3
d0083d12:	fec9 9aa3 	vmaxnm.f32	s19, s19, s7
d0083d16:	f240 8133 	bls.w	d0083f80 <speech_synth_render+0xfac>
d0083d1a:	eddf 3a1b 	vldr	s7, [pc, #108]	; d0083d88 <speech_synth_render+0xdb4>
d0083d1e:	fec4 4ae3 	vminnm.f32	s9, s9, s7
d0083d22:	eec2 3a05 	vdiv.f32	s7, s4, s10
d0083d26:	fec6 1aef 	vminnm.f32	s3, s13, s31
d0083d2a:	fec1 1a8f 	vmaxnm.f32	s3, s3, s30
d0083d2e:	ed9f 2a17 	vldr	s4, [pc, #92]	; d0083d8c <speech_synth_render+0xdb8>
d0083d32:	ed9f 5a17 	vldr	s10, [pc, #92]	; d0083d90 <speech_synth_render+0xdbc>
d0083d36:	f109 0901 	add.w	r9, r9, #1
d0083d3a:	eddf 0a16 	vldr	s1, [pc, #88]	; d0083d94 <speech_synth_render+0xdc0>
d0083d3e:	9a02      	ldr	r2, [sp, #8]
d0083d40:	eec2 6aa5 	vdiv.f32	s13, s5, s11
d0083d44:	eddf 2a14 	vldr	s5, [pc, #80]	; d0083d98 <speech_synth_render+0xdc4>
d0083d48:	3201      	adds	r2, #1
d0083d4a:	4b14      	ldr	r3, [pc, #80]	; (d0083d9c <speech_synth_render+0xdc8>)
d0083d4c:	9911      	ldr	r1, [sp, #68]	; 0x44
d0083d4e:	429a      	cmp	r2, r3
d0083d50:	e066      	b.n	d0083e20 <speech_synth_render+0xe4c>
d0083d52:	bf00      	nop
d0083d54:	3f6147ae 	.word	0x3f6147ae
d0083d58:	39946328 	.word	0x39946328
d0083d5c:	51eb851f 	.word	0x51eb851f
d0083d60:	47147ae1 	.word	0x47147ae1
d0083d64:	37800000 	.word	0x37800000
d0083d68:	3f55c28f 	.word	0x3f55c28f
d0083d6c:	4751eb85 	.word	0x4751eb85
d0083d70:	3a7b8ae8 	.word	0x3a7b8ae8
d0083d74:	3cf5c28f 	.word	0x3cf5c28f
d0083d78:	3e3851ec 	.word	0x3e3851ec
d0083d7c:	3df5c28f 	.word	0x3df5c28f
d0083d80:	3403126f 	.word	0x3403126f
d0083d84:	3e8f5c29 	.word	0x3e8f5c29
d0083d88:	3fe8f5c3 	.word	0x3fe8f5c3
d0083d8c:	3c0ad8f3 	.word	0x3c0ad8f3
d0083d90:	3b360b61 	.word	0x3b360b61
d0083d94:	3f7ae148 	.word	0x3f7ae148
d0083d98:	3c3a2e8c 	.word	0x3c3a2e8c
d0083d9c:	0004109f 	.word	0x0004109f
d0083da0:	3f947ae1 	.word	0x3f947ae1
d0083da4:	3c124925 	.word	0x3c124925
d0083da8:	3da3d70a 	.word	0x3da3d70a
d0083dac:	3b46980c 	.word	0x3b46980c
d0083db0:	3fb0a3d7 	.word	0x3fb0a3d7
d0083db4:	bf7ae148 	.word	0xbf7ae148
d0083db8:	3ed70a3d 	.word	0x3ed70a3d
d0083dbc:	42fc0000 	.word	0x42fc0000
d0083dc0:	3e23d70a 	.word	0x3e23d70a
d0083dc4:	35e147ae 	.word	0x35e147ae
d0083dc8:	3d0f5c29 	.word	0x3d0f5c29
d0083dcc:	3f51eb85 	.word	0x3f51eb85
d0083dd0:	401ccccd 	.word	0x401ccccd
d0083dd4:	3e75c28f 	.word	0x3e75c28f
d0083dd8:	3f147ae1 	.word	0x3f147ae1
d0083ddc:	40855556 	.word	0x40855556
d0083de0:	3fdcb08e 	.word	0x3fdcb08e
d0083de4:	00000000 	.word	0x00000000
d0083de8:	42540000 	.word	0x42540000
d0083dec:	3c712121 	.word	0x3c712121
d0083df0:	3fdc28f6 	.word	0x3fdc28f6
d0083df4:	43040000 	.word	0x43040000
d0083df8:	43460000 	.word	0x43460000
d0083dfc:	43840000 	.word	0x43840000
d0083e00:	440c4000 	.word	0x440c4000
d0083e04:	442d4000 	.word	0x442d4000
d0083e08:	3fb3521d 	.word	0x3fb3521d
d0083e0c:	42948000 	.word	0x42948000
d0083e10:	438c4000 	.word	0x438c4000
d0083e14:	43bdc000 	.word	0x43bdc000
d0083e18:	4420e000 	.word	0x4420e000
d0083e1c:	444a2000 	.word	0x444a2000
d0083e20:	9202      	str	r2, [sp, #8]
d0083e22:	eeb0 1a43 	vmov.f32	s2, s6
d0083e26:	bf88      	it	hi
d0083e28:	2300      	movhi	r3, #0
d0083e2a:	eeea ea84 	vfma.f32	s29, s21, s8
d0083e2e:	bf98      	it	ls
d0083e30:	2301      	movls	r3, #1
d0083e32:	eef0 5a67 	vmov.f32	s11, s15
d0083e36:	eea4 da8b 	vfma.f32	s26, s9, s22
d0083e3a:	eea4 ea8a 	vfma.f32	s28, s9, s20
d0083e3e:	eee1 5aca 	vfms.f32	s11, s3, s20
d0083e42:	fec3 3aef 	vminnm.f32	s7, s7, s31
d0083e46:	fec3 3a8f 	vmaxnm.f32	s7, s7, s30
d0083e4a:	eeaa 1ae3 	vfms.f32	s2, s21, s7
d0083e4e:	ed5f 3a2c 	vldr	s7, [pc, #-176]	; d0083da0 <speech_synth_render+0xdcc>
d0083e52:	ee6b ba82 	vmul.f32	s23, s23, s4
d0083e56:	ed1f 2a2d 	vldr	s4, [pc, #-180]	; d0083da4 <speech_synth_render+0xdd0>
d0083e5a:	fec6 6aef 	vminnm.f32	s13, s13, s31
d0083e5e:	fec6 6a8f 	vmaxnm.f32	s13, s13, s30
d0083e62:	eea6 3acb 	vfms.f32	s6, s13, s22
d0083e66:	ee71 6a6e 	vsub.f32	s13, s2, s29
d0083e6a:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0083e6e:	eef0 1a65 	vmov.f32	s3, s11
d0083e72:	ed5f 5a33 	vldr	s11, [pc, #-204]	; d0083da8 <speech_synth_render+0xdd4>
d0083e76:	eeb8 1a41 	vcvt.f32.u32	s2, s2
d0083e7a:	eee6 aa84 	vfma.f32	s21, s13, s8
d0083e7e:	eeb2 4a00 	vmov.f32	s8, #32	; 0x41000000  8.0
d0083e82:	eefa 6a00 	vmov.f32	s13, #160	; 0xc1000000 -8.0
d0083e86:	ee33 3a4d 	vsub.f32	s6, s6, s26
d0083e8a:	ee71 1ace 	vsub.f32	s3, s3, s28
d0083e8e:	fece eac4 	vminnm.f32	s29, s29, s8
d0083e92:	ee67 7aa5 	vmul.f32	s15, s15, s11
d0083e96:	ed5f 5a3b 	vldr	s11, [pc, #-236]	; d0083dac <speech_synth_render+0xdd8>
d0083e9a:	eea3 ba24 	vfma.f32	s22, s6, s9
d0083e9e:	feca aac4 	vminnm.f32	s21, s21, s8
d0083ea2:	feca aaa6 	vmaxnm.f32	s21, s21, s13
d0083ea6:	ee2a 5a85 	vmul.f32	s10, s21, s10
d0083eaa:	eea4 aaa1 	vfma.f32	s20, s9, s3
d0083eae:	fe8e ea44 	vminnm.f32	s28, s28, s8
d0083eb2:	eeeb 7a89 	vfma.f32	s15, s23, s18
d0083eb6:	fe8d da44 	vminnm.f32	s26, s26, s8
d0083eba:	eea9 5aa2 	vfma.f32	s10, s19, s5
d0083ebe:	fe8e ea26 	vmaxnm.f32	s28, s28, s13
d0083ec2:	fece eaa6 	vmaxnm.f32	s29, s29, s13
d0083ec6:	fe8d da26 	vmaxnm.f32	s26, s26, s13
d0083eca:	fe8b ba44 	vminnm.f32	s22, s22, s8
d0083ece:	fe8b ba26 	vmaxnm.f32	s22, s22, s13
d0083ed2:	ee6b 5a25 	vmul.f32	s11, s22, s11
d0083ed6:	ed5f 1a4a 	vldr	s3, [pc, #-296]	; d0083db0 <speech_synth_render+0xddc>
d0083eda:	fe8a aa44 	vminnm.f32	s20, s20, s8
d0083ede:	fe8a aa26 	vmaxnm.f32	s20, s20, s13
d0083ee2:	eddd 6a16 	vldr	s13, [sp, #88]	; 0x58
d0083ee6:	eeea 5a02 	vfma.f32	s11, s20, s4
d0083eea:	ed5f 4a4e 	vldr	s9, [pc, #-312]	; d0083db4 <speech_synth_render+0xde0>
d0083eee:	eee1 7a05 	vfma.f32	s15, s2, s10
d0083ef2:	ed1f 5a4f 	vldr	s10, [pc, #-316]	; d0083db8 <speech_synth_render+0xde4>
d0083ef6:	eeb8 3a66 	vcvt.f32.u32	s6, s13
d0083efa:	ed1f 4a50 	vldr	s8, [pc, #-320]	; d0083dbc <speech_synth_render+0xde8>
d0083efe:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0083f02:	eee5 7a83 	vfma.f32	s15, s11, s6
d0083f06:	ed5f 5a52 	vldr	s11, [pc, #-328]	; d0083dc0 <speech_synth_render+0xdec>
d0083f0a:	ee77 8ae8 	vsub.f32	s17, s15, s17
d0083f0e:	ee68 8aa5 	vmul.f32	s17, s17, s11
d0083f12:	eee7 8aa3 	vfma.f32	s17, s15, s7
d0083f16:	ee68 1aa1 	vmul.f32	s3, s17, s3
d0083f1a:	eef0 5ae1 	vabs.f32	s11, s3
d0083f1e:	eee5 6a85 	vfma.f32	s13, s11, s10
d0083f22:	eef0 5a66 	vmov.f32	s11, s13
d0083f26:	eec1 6aa5 	vdiv.f32	s13, s3, s11
d0083f2a:	fec6 6ae0 	vminnm.f32	s13, s13, s1
d0083f2e:	fec6 6aa4 	vmaxnm.f32	s13, s13, s9
d0083f32:	ee66 6a84 	vmul.f32	s13, s13, s8
d0083f36:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d0083f3a:	ee16 2a90 	vmov	r2, s13
d0083f3e:	3a80      	subs	r2, #128	; 0x80
d0083f40:	f801 2f01 	strb.w	r2, [r1, #1]!
d0083f44:	9a01      	ldr	r2, [sp, #4]
d0083f46:	9111      	str	r1, [sp, #68]	; 0x44
d0083f48:	4591      	cmp	r9, r2
d0083f4a:	f080 811c 	bcs.w	d0084186 <speech_synth_render+0x11b2>
d0083f4e:	2b00      	cmp	r3, #0
d0083f50:	f000 8119 	beq.w	d0084186 <speech_synth_render+0x11b2>
d0083f54:	9929      	ldr	r1, [sp, #164]	; 0xa4
d0083f56:	eef0 8a67 	vmov.f32	s17, s15
d0083f5a:	eef0 ba47 	vmov.f32	s23, s14
d0083f5e:	2900      	cmp	r1, #0
d0083f60:	f47f ac1b 	bne.w	d008379a <speech_synth_render+0x7c6>
d0083f64:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
d0083f68:	9808      	ldr	r0, [sp, #32]
d0083f6a:	9904      	ldr	r1, [sp, #16]
d0083f6c:	9d03      	ldr	r5, [sp, #12]
d0083f6e:	9f06      	ldr	r7, [sp, #24]
d0083f70:	9a07      	ldr	r2, [sp, #28]
d0083f72:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d0083f74:	e48b      	b.n	d008388e <speech_synth_render+0x8ba>
d0083f76:	ea8b 3b4b 	eor.w	fp, fp, fp, lsl #13
d0083f7a:	ed5f 0a6e 	vldr	s1, [pc, #-440]	; d0083dc4 <speech_synth_render+0xdf0>
d0083f7e:	e66c      	b.n	d0083c5a <speech_synth_render+0xc86>
d0083f80:	ed5f 4a6f 	vldr	s9, [pc, #-444]	; d0083dc8 <speech_synth_render+0xdf4>
d0083f84:	e6cd      	b.n	d0083d22 <speech_synth_render+0xd4e>
d0083f86:	ed1f 4a70 	vldr	s8, [pc, #-448]	; d0083dc8 <speech_synth_render+0xdf4>
d0083f8a:	e6a7      	b.n	d0083cdc <speech_synth_render+0xd08>
d0083f8c:	ed5f 3a72 	vldr	s7, [pc, #-456]	; d0083dc8 <speech_synth_render+0xdf4>
d0083f90:	e685      	b.n	d0083c9e <speech_synth_render+0xcca>
d0083f92:	ed1f 3a6c 	vldr	s6, [pc, #-432]	; d0083de4 <speech_synth_render+0xe10>
d0083f96:	e656      	b.n	d0083c46 <speech_synth_render+0xc72>
d0083f98:	ed5f 6a74 	vldr	s13, [pc, #-464]	; d0083dcc <speech_synth_render+0xdf8>
d0083f9c:	ee37 3a6b 	vsub.f32	s6, s14, s23
d0083fa0:	eddd 0a0f 	vldr	s1, [sp, #60]	; 0x3c
d0083fa4:	eeed 7aa6 	vfma.f32	s15, s27, s13
d0083fa8:	ed1f 0a77 	vldr	s0, [pc, #-476]	; d0083dd0 <speech_synth_render+0xdfc>
d0083fac:	eef8 ba60 	vcvt.f32.u32	s23, s1
d0083fb0:	ed5f 0a78 	vldr	s1, [pc, #-480]	; d0083dd4 <speech_synth_render+0xe00>
d0083fb4:	eddd 6a2a 	vldr	s13, [sp, #168]	; 0xa8
d0083fb8:	ee66 6aab 	vmul.f32	s13, s13, s23
d0083fbc:	eee7 7a20 	vfma.f32	s15, s14, s1
d0083fc0:	eee3 7a00 	vfma.f32	s15, s6, s0
d0083fc4:	ee66 6aa7 	vmul.f32	s13, s13, s15
d0083fc8:	e610      	b.n	d0083bec <speech_synth_render+0xc18>
d0083fca:	ed5f 6a7d 	vldr	s13, [pc, #-500]	; d0083dd8 <speech_synth_render+0xe04>
d0083fce:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0083fd2:	ed1f 7a7e 	vldr	s14, [pc, #-504]	; d0083ddc <speech_synth_render+0xe08>
d0083fd6:	ee70 6ae6 	vsub.f32	s13, s1, s13
d0083fda:	eef8 0a08 	vmov.f32	s1, #136	; 0xc0400000 -3.0
d0083fde:	ee66 6a87 	vmul.f32	s13, s13, s14
d0083fe2:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0083fe6:	eee6 0a80 	vfma.f32	s1, s13, s0
d0083fea:	ee66 6aa6 	vmul.f32	s13, s13, s13
d0083fee:	eea0 7aa6 	vfma.f32	s14, s1, s13
d0083ff2:	e5f2      	b.n	d0083bda <speech_synth_render+0xc06>
d0083ff4:	ed5f 6a86 	vldr	s13, [pc, #-536]	; d0083de0 <speech_synth_render+0xe0c>
d0083ff8:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0083ffc:	eeb0 7a08 	vmov.f32	s14, #8	; 0x40400000  3.0
d0084000:	ee60 6aa6 	vmul.f32	s13, s1, s13
d0084004:	eea6 7ac0 	vfms.f32	s14, s13, s0
d0084008:	ee66 6aa6 	vmul.f32	s13, s13, s13
d008400c:	ee26 7a87 	vmul.f32	s14, s13, s14
d0084010:	e5e3      	b.n	d0083bda <speech_synth_render+0xc06>
d0084012:	ed5f 7a8c 	vldr	s15, [pc, #-560]	; d0083de4 <speech_synth_render+0xe10>
d0084016:	e5bb      	b.n	d0083b90 <speech_synth_render+0xbbc>
d0084018:	276e      	movs	r7, #110	; 0x6e
d008401a:	f241 736f 	movw	r3, #5999	; 0x176f
d008401e:	ed5f 3a8d 	vldr	s7, [pc, #-564]	; d0083dec <speech_synth_render+0xe18>
d0084022:	f04f 0834 	mov.w	r8, #52	; 0x34
d0084026:	fb07 f505 	mul.w	r5, r7, r5
d008402a:	429d      	cmp	r5, r3
d008402c:	f73f aced 	bgt.w	d0083a0a <speech_synth_render+0xa36>
d0084030:	f04f 0e73 	mov.w	lr, #115	; 0x73
d0084034:	f241 736f 	movw	r3, #5999	; 0x176f
d0084038:	ed1f 5a95 	vldr	s10, [pc, #-596]	; d0083de8 <speech_synth_render+0xe14>
d008403c:	2734      	movs	r7, #52	; 0x34
d008403e:	fb0e f101 	mul.w	r1, lr, r1
d0084042:	ed1f 4a96 	vldr	s8, [pc, #-600]	; d0083dec <speech_synth_render+0xe18>
d0084046:	4299      	cmp	r1, r3
d0084048:	f73f ad0b 	bgt.w	d0083a62 <speech_synth_render+0xa8e>
d008404c:	ed5f 5a9a 	vldr	s11, [pc, #-616]	; d0083de8 <speech_synth_render+0xe14>
d0084050:	2534      	movs	r5, #52	; 0x34
d0084052:	ed5f 4a9a 	vldr	s9, [pc, #-616]	; d0083dec <speech_synth_render+0xe18>
d0084056:	e527      	b.n	d0083aa8 <speech_synth_render+0xad4>
d0084058:	f641 0e21 	movw	lr, #6177	; 0x1821
d008405c:	fa2e f303 	lsr.w	r3, lr, r3
d0084060:	07db      	lsls	r3, r3, #31
d0084062:	f140 80e2 	bpl.w	d008422a <speech_synth_render+0x1256>
d0084066:	ed1f 8a9e 	vldr	s16, [pc, #-632]	; d0083df0 <speech_synth_render+0xe1c>
d008406a:	ed1f 7a9e 	vldr	s14, [pc, #-632]	; d0083df4 <speech_synth_render+0xe20>
d008406e:	ed1f 1a9e 	vldr	s2, [pc, #-632]	; d0083df8 <speech_synth_render+0xe24>
d0084072:	ed5f 1a9e 	vldr	s3, [pc, #-632]	; d0083dfc <speech_synth_render+0xe28>
d0084076:	ed1f 2a9e 	vldr	s4, [pc, #-632]	; d0083e00 <speech_synth_render+0xe2c>
d008407a:	ed5f 2a9e 	vldr	s5, [pc, #-632]	; d0083e04 <speech_synth_render+0xe30>
d008407e:	e487      	b.n	d0083990 <speech_synth_render+0x9bc>
d0084080:	ed1f 8a9f 	vldr	s16, [pc, #-636]	; d0083e08 <speech_synth_render+0xe34>
d0084084:	ed1f 7a9f 	vldr	s14, [pc, #-636]	; d0083e0c <speech_synth_render+0xe38>
d0084088:	ed1f 1a9f 	vldr	s2, [pc, #-636]	; d0083e10 <speech_synth_render+0xe3c>
d008408c:	ed5f 1a9f 	vldr	s3, [pc, #-636]	; d0083e14 <speech_synth_render+0xe40>
d0084090:	ed1f 2a9f 	vldr	s4, [pc, #-636]	; d0083e18 <speech_synth_render+0xe44>
d0084094:	ed5f 2a9f 	vldr	s5, [pc, #-636]	; d0083e1c <speech_synth_render+0xe48>
d0084098:	e47a      	b.n	d0083990 <speech_synth_render+0x9bc>
d008409a:	4611      	mov	r1, r2
d008409c:	980e      	ldr	r0, [sp, #56]	; 0x38
d008409e:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
d00840a0:	b21b      	sxth	r3, r3
d00840a2:	9f23      	ldr	r7, [sp, #140]	; 0x8c
d00840a4:	1810      	adds	r0, r2, r0
d00840a6:	9a22      	ldr	r2, [sp, #136]	; 0x88
d00840a8:	f8df c340 	ldr.w	ip, [pc, #832]	; d00843ec <speech_synth_render+0x1418>
d00840ac:	fb01 f802 	mul.w	r8, r1, r2
d00840b0:	9a28      	ldr	r2, [sp, #160]	; 0xa0
d00840b2:	fb03 f402 	mul.w	r4, r3, r2
d00840b6:	4ab8      	ldr	r2, [pc, #736]	; (d0084398 <speech_synth_render+0x13c4>)
d00840b8:	ea4f 75e8 	mov.w	r5, r8, asr #31
d00840bc:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d00840c0:	9a25      	ldr	r2, [sp, #148]	; 0x94
d00840c2:	950f      	str	r5, [sp, #60]	; 0x3c
d00840c4:	ea4f 7ae4 	mov.w	sl, r4, asr #31
d00840c8:	7b86      	ldrb	r6, [r0, #14]
d00840ca:	fb01 f507 	mul.w	r5, r1, r7
d00840ce:	9824      	ldr	r0, [sp, #144]	; 0x90
d00840d0:	fb03 f202 	mul.w	r2, r3, r2
d00840d4:	9f27      	ldr	r7, [sp, #156]	; 0x9c
d00840d6:	f006 0601 	and.w	r6, r6, #1
d00840da:	fb01 f100 	mul.w	r1, r1, r0
d00840de:	9826      	ldr	r0, [sp, #152]	; 0x98
d00840e0:	9605      	str	r6, [sp, #20]
d00840e2:	fb03 f000 	mul.w	r0, r3, r0
d00840e6:	fb03 f307 	mul.w	r3, r3, r7
d00840ea:	fb8c e704 	smull	lr, r7, ip, r4
d00840ee:	443c      	add	r4, r7
d00840f0:	fb8c 7e02 	smull	r7, lr, ip, r2
d00840f4:	fb8c 6708 	smull	r6, r7, ip, r8
d00840f8:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
d00840fa:	4496      	add	lr, r2
d00840fc:	17d2      	asrs	r2, r2, #31
d00840fe:	4447      	add	r7, r8
d0084100:	ebca 14e4 	rsb	r4, sl, r4, asr #7
d0084104:	ebc2 12ee 	rsb	r2, r2, lr, asr #7
d0084108:	fb8c 8a05 	smull	r8, sl, ip, r5
d008410c:	fb8c 8e01 	smull	r8, lr, ip, r1
d0084110:	ebc6 17e7 	rsb	r7, r6, r7, asr #7
d0084114:	fb8c 6800 	smull	r6, r8, ip, r0
d0084118:	44aa      	add	sl, r5
d008411a:	fb8c 6c03 	smull	r6, ip, ip, r3
d008411e:	17ed      	asrs	r5, r5, #31
d0084120:	448e      	add	lr, r1
d0084122:	17c9      	asrs	r1, r1, #31
d0084124:	449c      	add	ip, r3
d0084126:	17db      	asrs	r3, r3, #31
d0084128:	ebc5 15ea 	rsb	r5, r5, sl, asr #7
d008412c:	4480      	add	r8, r0
d008412e:	ebc3 1cec 	rsb	ip, r3, ip, asr #7
d0084132:	9b07      	ldr	r3, [sp, #28]
d0084134:	ebc1 11ee 	rsb	r1, r1, lr, asr #7
d0084138:	9e0a      	ldr	r6, [sp, #40]	; 0x28
d008413a:	441a      	add	r2, r3
d008413c:	9b06      	ldr	r3, [sp, #24]
d008413e:	17c0      	asrs	r0, r0, #31
d0084140:	4434      	add	r4, r6
d0084142:	441f      	add	r7, r3
d0084144:	9b03      	ldr	r3, [sp, #12]
d0084146:	ebc0 10e8 	rsb	r0, r0, r8, asr #7
d008414a:	f8dd a084 	ldr.w	sl, [sp, #132]	; 0x84
d008414e:	441d      	add	r5, r3
d0084150:	9b04      	ldr	r3, [sp, #16]
d0084152:	b2e4      	uxtb	r4, r4
d0084154:	4419      	add	r1, r3
d0084156:	9b08      	ldr	r3, [sp, #32]
d0084158:	b2d2      	uxtb	r2, r2
d008415a:	4418      	add	r0, r3
d008415c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d008415e:	b2bf      	uxth	r7, r7
d0084160:	449c      	add	ip, r3
d0084162:	b2ad      	uxth	r5, r5
d0084164:	b289      	uxth	r1, r1
d0084166:	b2c0      	uxtb	r0, r0
d0084168:	fa5f fc8c 	uxtb.w	ip, ip
d008416c:	f7ff bb96 	b.w	d008389c <speech_synth_render+0x8c8>
d0084170:	9b2e      	ldr	r3, [sp, #184]	; 0xb8
d0084172:	4599      	cmp	r9, r3
d0084174:	f67f ad59 	bls.w	d0083c2a <speech_synth_render+0xc56>
d0084178:	ed9f 3a88 	vldr	s6, [pc, #544]	; d008439c <speech_synth_render+0x13c8>
d008417c:	ee67 7a83 	vmul.f32	s15, s15, s6
d0084180:	e553      	b.n	d0083c2a <speech_synth_render+0xc56>
d0084182:	9802      	ldr	r0, [sp, #8]
d0084184:	9002      	str	r0, [sp, #8]
d0084186:	b14b      	cbz	r3, d008419c <speech_synth_render+0x11c8>
d0084188:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d008418a:	9b10      	ldr	r3, [sp, #64]	; 0x40
d008418c:	3206      	adds	r2, #6
d008418e:	3301      	adds	r3, #1
d0084190:	920c      	str	r2, [sp, #48]	; 0x30
d0084192:	9a30      	ldr	r2, [sp, #192]	; 0xc0
d0084194:	9310      	str	r3, [sp, #64]	; 0x40
d0084196:	429a      	cmp	r2, r3
d0084198:	f47f aa61 	bne.w	d008365e <speech_synth_render+0x68a>
d008419c:	9b31      	ldr	r3, [sp, #196]	; 0xc4
d008419e:	f8dd 8008 	ldr.w	r8, [sp, #8]
d00841a2:	f8c3 b000 	str.w	fp, [r3]
d00841a6:	4b7e      	ldr	r3, [pc, #504]	; (d00843a0 <speech_synth_render+0x13cc>)
d00841a8:	4640      	mov	r0, r8
d00841aa:	f8c3 8000 	str.w	r8, [r3]
d00841ae:	b045      	add	sp, #276	; 0x114
d00841b0:	ecbd 8b10 	vpop	{d8-d15}
d00841b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00841b8:	f245 62b8 	movw	r2, #22200	; 0x56b8
d00841bc:	4b79      	ldr	r3, [pc, #484]	; (d00843a4 <speech_synth_render+0x13d0>)
d00841be:	fb02 f000 	mul.w	r0, r2, r0
d00841c2:	fba3 2300 	umull	r2, r3, r3, r0
d00841c6:	099b      	lsrs	r3, r3, #6
d00841c8:	9301      	str	r3, [sp, #4]
d00841ca:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d00841cc:	2b00      	cmp	r3, #0
d00841ce:	f47f aa6f 	bne.w	d00836b0 <speech_synth_render+0x6dc>
d00841d2:	9b02      	ldr	r3, [sp, #8]
d00841d4:	4c74      	ldr	r4, [pc, #464]	; (d00843a8 <speech_synth_render+0x13d4>)
d00841d6:	9a01      	ldr	r2, [sp, #4]
d00841d8:	42a3      	cmp	r3, r4
d00841da:	bf8c      	ite	hi
d00841dc:	2300      	movhi	r3, #0
d00841de:	2301      	movls	r3, #1
d00841e0:	2a00      	cmp	r2, #0
d00841e2:	d0ce      	beq.n	d0084182 <speech_synth_render+0x11ae>
d00841e4:	2b00      	cmp	r3, #0
d00841e6:	d0cc      	beq.n	d0084182 <speech_synth_render+0x11ae>
d00841e8:	9b02      	ldr	r3, [sp, #8]
d00841ea:	4617      	mov	r7, r2
d00841ec:	4d6f      	ldr	r5, [pc, #444]	; (d00843ac <speech_synth_render+0x13d8>)
d00841ee:	2680      	movs	r6, #128	; 0x80
d00841f0:	1e59      	subs	r1, r3, #1
d00841f2:	4618      	mov	r0, r3
d00841f4:	469c      	mov	ip, r3
d00841f6:	4429      	add	r1, r5
d00841f8:	e001      	b.n	d00841fe <speech_synth_render+0x122a>
d00841fa:	2b00      	cmp	r3, #0
d00841fc:	d0c2      	beq.n	d0084184 <speech_synth_render+0x11b0>
d00841fe:	460a      	mov	r2, r1
d0084200:	3001      	adds	r0, #1
d0084202:	f801 6f01 	strb.w	r6, [r1, #1]!
d0084206:	3202      	adds	r2, #2
d0084208:	42a0      	cmp	r0, r4
d008420a:	eba2 0205 	sub.w	r2, r2, r5
d008420e:	bf8c      	ite	hi
d0084210:	2300      	movhi	r3, #0
d0084212:	2301      	movls	r3, #1
d0084214:	eba2 020c 	sub.w	r2, r2, ip
d0084218:	42ba      	cmp	r2, r7
d008421a:	d3ee      	bcc.n	d00841fa <speech_synth_render+0x1226>
d008421c:	9002      	str	r0, [sp, #8]
d008421e:	e7b2      	b.n	d0084186 <speech_synth_render+0x11b2>
d0084220:	2300      	movs	r3, #0
d0084222:	930e      	str	r3, [sp, #56]	; 0x38
d0084224:	9321      	str	r3, [sp, #132]	; 0x84
d0084226:	f7ff ba25 	b.w	d0083674 <speech_synth_render+0x6a0>
d008422a:	f1aa 030e 	sub.w	r3, sl, #14
d008422e:	b2db      	uxtb	r3, r3
d0084230:	f8df e1bc 	ldr.w	lr, [pc, #444]	; d00843f0 <speech_synth_render+0x141c>
d0084234:	fa2e f303 	lsr.w	r3, lr, r3
d0084238:	07de      	lsls	r6, r3, #31
d008423a:	f57f ab41 	bpl.w	d00838c0 <speech_synth_render+0x8ec>
d008423e:	ed9f 8a5c 	vldr	s16, [pc, #368]	; d00843b0 <speech_synth_render+0x13dc>
d0084242:	ed9f 7a5c 	vldr	s14, [pc, #368]	; d00843b4 <speech_synth_render+0x13e0>
d0084246:	ed9f 1a5c 	vldr	s2, [pc, #368]	; d00843b8 <speech_synth_render+0x13e4>
d008424a:	eddf 1a5c 	vldr	s3, [pc, #368]	; d00843bc <speech_synth_render+0x13e8>
d008424e:	ed9f 2a5c 	vldr	s4, [pc, #368]	; d00843c0 <speech_synth_render+0x13ec>
d0084252:	eddf 2a5c 	vldr	s5, [pc, #368]	; d00843c4 <speech_synth_render+0x13f0>
d0084256:	f7ff bb9b 	b.w	d0083990 <speech_synth_render+0x9bc>
d008425a:	f245 63b8 	movw	r3, #22200	; 0x56b8
d008425e:	4a51      	ldr	r2, [pc, #324]	; (d00843a4 <speech_synth_render+0x13d0>)
d0084260:	fb03 f000 	mul.w	r0, r3, r0
d0084264:	fba2 3000 	umull	r3, r0, r2, r0
d0084268:	0983      	lsrs	r3, r0, #6
d008426a:	9301      	str	r3, [sp, #4]
d008426c:	e7b1      	b.n	d00841d2 <speech_synth_render+0x11fe>
d008426e:	4b56      	ldr	r3, [pc, #344]	; (d00843c8 <speech_synth_render+0x13f4>)
d0084270:	9302      	str	r3, [sp, #8]
d0084272:	f7ff b921 	b.w	d00834b8 <speech_synth_render+0x4e4>
d0084276:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d008427a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008427e:	f4bf a992 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084282:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0084286:	9e02      	ldr	r6, [sp, #8]
d0084288:	3301      	adds	r3, #1
d008428a:	201b      	movs	r0, #27
d008428c:	2158      	movs	r1, #88	; 0x58
d008428e:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d0084292:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d0084296:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d008429a:	711f      	strb	r7, [r3, #4]
d008429c:	8059      	strh	r1, [r3, #2]
d008429e:	484b      	ldr	r0, [pc, #300]	; (d00843cc <speech_synth_render+0x13f8>)
d00842a0:	f001 fa29 	bl	d00856f6 <strlen>
d00842a4:	1d02      	adds	r2, r0, #4
d00842a6:	4603      	mov	r3, r0
d00842a8:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00842ac:	f4bf a97b 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d00842b0:	b140      	cbz	r0, d00842c4 <speech_synth_render+0x12f0>
d00842b2:	4e46      	ldr	r6, [pc, #280]	; (d00843cc <speech_synth_render+0x13f8>)
d00842b4:	2120      	movs	r1, #32
d00842b6:	1832      	adds	r2, r6, r0
d00842b8:	4630      	mov	r0, r6
d00842ba:	54f1      	strb	r1, [r6, r3]
d00842bc:	7057      	strb	r7, [r2, #1]
d00842be:	f001 fa1a 	bl	d00856f6 <strlen>
d00842c2:	4603      	mov	r3, r0
d00842c4:	4a41      	ldr	r2, [pc, #260]	; (d00843cc <speech_synth_render+0x13f8>)
d00842c6:	3502      	adds	r5, #2
d00842c8:	4941      	ldr	r1, [pc, #260]	; (d00843d0 <speech_synth_render+0x13fc>)
d00842ca:	18d0      	adds	r0, r2, r3
d00842cc:	2203      	movs	r2, #3
d00842ce:	b2ad      	uxth	r5, r5
d00842d0:	f001 f874 	bl	d00853bc <memcpy>
d00842d4:	f7ff b88a 	b.w	d00833ec <speech_synth_render+0x418>
d00842d8:	eb0a 0306 	add.w	r3, sl, r6
d00842dc:	9303      	str	r3, [sp, #12]
d00842de:	f7fe beeb 	b.w	d00830b8 <speech_synth_render+0xe4>
d00842e2:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d00842e6:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00842ea:	f4bf a95c 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d00842ee:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00842f2:	9e02      	ldr	r6, [sp, #8]
d00842f4:	3301      	adds	r3, #1
d00842f6:	201d      	movs	r0, #29
d00842f8:	214a      	movs	r1, #74	; 0x4a
d00842fa:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d00842fe:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d0084302:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d0084306:	711f      	strb	r7, [r3, #4]
d0084308:	8059      	strh	r1, [r3, #2]
d008430a:	4830      	ldr	r0, [pc, #192]	; (d00843cc <speech_synth_render+0x13f8>)
d008430c:	f001 f9f3 	bl	d00856f6 <strlen>
d0084310:	1d02      	adds	r2, r0, #4
d0084312:	4603      	mov	r3, r0
d0084314:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0084318:	f4bf a945 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d008431c:	b140      	cbz	r0, d0084330 <speech_synth_render+0x135c>
d008431e:	4e2b      	ldr	r6, [pc, #172]	; (d00843cc <speech_synth_render+0x13f8>)
d0084320:	2120      	movs	r1, #32
d0084322:	1832      	adds	r2, r6, r0
d0084324:	4630      	mov	r0, r6
d0084326:	54f1      	strb	r1, [r6, r3]
d0084328:	7057      	strb	r7, [r2, #1]
d008432a:	f001 f9e4 	bl	d00856f6 <strlen>
d008432e:	4603      	mov	r3, r0
d0084330:	4a26      	ldr	r2, [pc, #152]	; (d00843cc <speech_synth_render+0x13f8>)
d0084332:	4928      	ldr	r1, [pc, #160]	; (d00843d4 <speech_synth_render+0x1400>)
d0084334:	18d0      	adds	r0, r2, r3
d0084336:	2203      	movs	r2, #3
d0084338:	f001 f840 	bl	d00853bc <memcpy>
d008433c:	f7ff b933 	b.w	d00835a6 <speech_synth_render+0x5d2>
d0084340:	ed9f 8a1b 	vldr	s16, [pc, #108]	; d00843b0 <speech_synth_render+0x13dc>
d0084344:	ed9f 7a24 	vldr	s14, [pc, #144]	; d00843d8 <speech_synth_render+0x1404>
d0084348:	ed9f 1a24 	vldr	s2, [pc, #144]	; d00843dc <speech_synth_render+0x1408>
d008434c:	eddf 1a24 	vldr	s3, [pc, #144]	; d00843e0 <speech_synth_render+0x140c>
d0084350:	ed9f 2a24 	vldr	s4, [pc, #144]	; d00843e4 <speech_synth_render+0x1410>
d0084354:	eddf 2a24 	vldr	s5, [pc, #144]	; d00843e8 <speech_synth_render+0x1414>
d0084358:	f7ff bb1a 	b.w	d0083990 <speech_synth_render+0x9bc>
d008435c:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
d0084360:	f8df e090 	ldr.w	lr, [pc, #144]	; d00843f4 <speech_synth_render+0x1420>
d0084364:	276b      	movs	r7, #107	; 0x6b
d0084366:	f8dd 8010 	ldr.w	r8, [sp, #16]
d008436a:	9006      	str	r0, [sp, #24]
d008436c:	e006      	b.n	d008437c <speech_synth_render+0x13a8>
d008436e:	f81e 7f01 	ldrb.w	r7, [lr, #1]!
d0084372:	2f00      	cmp	r7, #0
d0084374:	f000 8478 	beq.w	d0084c68 <speech_synth_render+0x1c94>
d0084378:	4542      	cmp	r2, r8
d008437a:	d009      	beq.n	d0084390 <speech_synth_render+0x13bc>
d008437c:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d0084380:	f1a3 0041 	sub.w	r0, r3, #65	; 0x41
d0084384:	2819      	cmp	r0, #25
d0084386:	d801      	bhi.n	d008438c <speech_synth_render+0x13b8>
d0084388:	3320      	adds	r3, #32
d008438a:	b2db      	uxtb	r3, r3
d008438c:	42bb      	cmp	r3, r7
d008438e:	d0ee      	beq.n	d008436e <speech_synth_render+0x139a>
d0084390:	9806      	ldr	r0, [sp, #24]
d0084392:	f7fe bf95 	b.w	d00832c0 <speech_synth_render+0x2ec>
d0084396:	bf00      	nop
d0084398:	d0085dac 	.word	0xd0085dac
d008439c:	3f3851ec 	.word	0x3f3851ec
d00843a0:	d00873a8 	.word	0xd00873a8
d00843a4:	10624dd3 	.word	0x10624dd3
d00843a8:	0004109f 	.word	0x0004109f
d00843ac:	d00873c0 	.word	0xd00873c0
d00843b0:	3fdc28f6 	.word	0x3fdc28f6
d00843b4:	43b58000 	.word	0x43b58000
d00843b8:	43f78000 	.word	0x43f78000
d00843bc:	442d4000 	.word	0x442d4000
d00843c0:	44568000 	.word	0x44568000
d00843c4:	448c4000 	.word	0x448c4000
d00843c8:	d00861a8 	.word	0xd00861a8
d00843cc:	d00c8460 	.word	0xd00c8460
d00843d0:	d0085ce8 	.word	0xd0085ce8
d00843d4:	d0085cec 	.word	0xd0085cec
d00843d8:	42e70000 	.word	0x42e70000
d00843dc:	431cc000 	.word	0x431cc000
d00843e0:	435ec000 	.word	0x435ec000
d00843e4:	4401f000 	.word	0x4401f000
d00843e8:	4422f000 	.word	0x4422f000
d00843ec:	80808081 	.word	0x80808081
d00843f0:	0019b003 	.word	0x0019b003
d00843f4:	d0085da0 	.word	0xd0085da0
d00843f8:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d00843fc:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0084400:	f4bf a8d1 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084404:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0084408:	9e02      	ldr	r6, [sp, #8]
d008440a:	3301      	adds	r3, #1
d008440c:	200f      	movs	r0, #15
d008440e:	2148      	movs	r1, #72	; 0x48
d0084410:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d0084414:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d0084418:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d008441c:	711f      	strb	r7, [r3, #4]
d008441e:	8059      	strh	r1, [r3, #2]
d0084420:	48c6      	ldr	r0, [pc, #792]	; (d008473c <speech_synth_render+0x1768>)
d0084422:	f001 f968 	bl	d00856f6 <strlen>
d0084426:	1cc2      	adds	r2, r0, #3
d0084428:	4603      	mov	r3, r0
d008442a:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008442e:	f4bf a8ba 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084432:	b140      	cbz	r0, d0084446 <speech_synth_render+0x1472>
d0084434:	4ec1      	ldr	r6, [pc, #772]	; (d008473c <speech_synth_render+0x1768>)
d0084436:	2120      	movs	r1, #32
d0084438:	1832      	adds	r2, r6, r0
d008443a:	4630      	mov	r0, r6
d008443c:	54f1      	strb	r1, [r6, r3]
d008443e:	7057      	strb	r7, [r2, #1]
d0084440:	f001 f959 	bl	d00856f6 <strlen>
d0084444:	4603      	mov	r3, r0
d0084446:	4abd      	ldr	r2, [pc, #756]	; (d008473c <speech_synth_render+0x1768>)
d0084448:	49bd      	ldr	r1, [pc, #756]	; (d0084740 <speech_synth_render+0x176c>)
d008444a:	18d0      	adds	r0, r2, r3
d008444c:	2202      	movs	r2, #2
d008444e:	f000 ffb5 	bl	d00853bc <memcpy>
d0084452:	f7ff b8a8 	b.w	d00835a6 <speech_synth_render+0x5d2>
d0084456:	46a1      	mov	r9, r4
d0084458:	ad33      	add	r5, sp, #204	; 0xcc
d008445a:	4fba      	ldr	r7, [pc, #744]	; (d0084744 <speech_synth_render+0x1770>)
d008445c:	4eba      	ldr	r6, [pc, #744]	; (d0084748 <speech_synth_render+0x1774>)
d008445e:	f8ad 40ca 	strh.w	r4, [sp, #202]	; 0xca
d0084462:	3401      	adds	r4, #1
d0084464:	b2a4      	uxth	r4, r4
d0084466:	f8ad 40cc 	strh.w	r4, [sp, #204]	; 0xcc
d008446a:	f818 3004 	ldrb.w	r3, [r8, r4]
d008446e:	2b00      	cmp	r3, #0
d0084470:	d06a      	beq.n	d0084548 <speech_synth_render+0x1574>
d0084472:	f5b9 7f40 	cmp.w	r9, #768	; 0x300
d0084476:	d267      	bcs.n	d0084548 <speech_synth_render+0x1574>
d0084478:	2b2f      	cmp	r3, #47	; 0x2f
d008447a:	d0f2      	beq.n	d0084462 <speech_synth_render+0x148e>
d008447c:	f1a3 0030 	sub.w	r0, r3, #48	; 0x30
d0084480:	b2c0      	uxtb	r0, r0
d0084482:	2809      	cmp	r0, #9
d0084484:	d950      	bls.n	d0084528 <speech_synth_render+0x1554>
d0084486:	f1a3 0221 	sub.w	r2, r3, #33	; 0x21
d008448a:	b2d2      	uxtb	r2, r2
d008448c:	2a1e      	cmp	r2, #30
d008448e:	d834      	bhi.n	d00844fa <speech_synth_render+0x1526>
d0084490:	fa26 f202 	lsr.w	r2, r6, r2
d0084494:	43d2      	mvns	r2, r2
d0084496:	f012 0a01 	ands.w	sl, r2, #1
d008449a:	d12e      	bne.n	d00844fa <speech_synth_render+0x1526>
d008449c:	eb09 0349 	add.w	r3, r9, r9, lsl #1
d00844a0:	f109 0901 	add.w	r9, r9, #1
d00844a4:	22b9      	movs	r2, #185	; 0xb9
d00844a6:	48a5      	ldr	r0, [pc, #660]	; (d008473c <speech_synth_render+0x1768>)
d00844a8:	f807 a013 	strb.w	sl, [r7, r3, lsl #1]
d00844ac:	fa1f f989 	uxth.w	r9, r9
d00844b0:	eb07 0343 	add.w	r3, r7, r3, lsl #1
d00844b4:	f8ad 90ca 	strh.w	r9, [sp, #202]	; 0xca
d00844b8:	f883 a004 	strb.w	sl, [r3, #4]
d00844bc:	805a      	strh	r2, [r3, #2]
d00844be:	f001 f91a 	bl	d00856f6 <strlen>
d00844c2:	1cc2      	adds	r2, r0, #3
d00844c4:	4603      	mov	r3, r0
d00844c6:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00844ca:	d2ca      	bcs.n	d0084462 <speech_synth_render+0x148e>
d00844cc:	b150      	cbz	r0, d00844e4 <speech_synth_render+0x1510>
d00844ce:	4a9b      	ldr	r2, [pc, #620]	; (d008473c <speech_synth_render+0x1768>)
d00844d0:	2120      	movs	r1, #32
d00844d2:	eb02 0c00 	add.w	ip, r2, r0
d00844d6:	4610      	mov	r0, r2
d00844d8:	54d1      	strb	r1, [r2, r3]
d00844da:	f88c a001 	strb.w	sl, [ip, #1]
d00844de:	f001 f90a 	bl	d00856f6 <strlen>
d00844e2:	4603      	mov	r3, r0
d00844e4:	3401      	adds	r4, #1
d00844e6:	4a95      	ldr	r2, [pc, #596]	; (d008473c <speech_synth_render+0x1768>)
d00844e8:	4998      	ldr	r1, [pc, #608]	; (d008474c <speech_synth_render+0x1778>)
d00844ea:	b2a4      	uxth	r4, r4
d00844ec:	18d0      	adds	r0, r2, r3
d00844ee:	2202      	movs	r2, #2
d00844f0:	f000 ff64 	bl	d00853bc <memcpy>
d00844f4:	f8ad 40cc 	strh.w	r4, [sp, #204]	; 0xcc
d00844f8:	e7b7      	b.n	d008446a <speech_synth_render+0x1496>
d00844fa:	f1a3 023a 	sub.w	r2, r3, #58	; 0x3a
d00844fe:	2a01      	cmp	r2, #1
d0084500:	d926      	bls.n	d0084550 <speech_synth_render+0x157c>
d0084502:	2b2c      	cmp	r3, #44	; 0x2c
d0084504:	d024      	beq.n	d0084550 <speech_synth_render+0x157c>
d0084506:	2b20      	cmp	r3, #32
d0084508:	d065      	beq.n	d00845d6 <speech_synth_render+0x1602>
d008450a:	2b09      	cmp	r3, #9
d008450c:	d063      	beq.n	d00845d6 <speech_synth_render+0x1602>
d008450e:	f10d 02ca 	add.w	r2, sp, #202	; 0xca
d0084512:	4629      	mov	r1, r5
d0084514:	4640      	mov	r0, r8
d0084516:	f7fd ff0b 	bl	d0082330 <emit_phonetic_symbol.constprop.0>
d008451a:	f8bd 40cc 	ldrh.w	r4, [sp, #204]	; 0xcc
d008451e:	f8bd 90ca 	ldrh.w	r9, [sp, #202]	; 0xca
d0084522:	2800      	cmp	r0, #0
d0084524:	d09d      	beq.n	d0084462 <speech_synth_render+0x148e>
d0084526:	e7a0      	b.n	d008446a <speech_synth_render+0x1496>
d0084528:	464b      	mov	r3, r9
d008452a:	1e5a      	subs	r2, r3, #1
d008452c:	2b00      	cmp	r3, #0
d008452e:	d098      	beq.n	d0084462 <speech_synth_render+0x148e>
d0084530:	b293      	uxth	r3, r2
d0084532:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0084536:	f817 1012 	ldrb.w	r1, [r7, r2, lsl #1]
d008453a:	eb07 0242 	add.w	r2, r7, r2, lsl #1
d008453e:	3901      	subs	r1, #1
d0084540:	2909      	cmp	r1, #9
d0084542:	d8f2      	bhi.n	d008452a <speech_synth_render+0x1556>
d0084544:	7110      	strb	r0, [r2, #4]
d0084546:	e78c      	b.n	d0084462 <speech_synth_render+0x148e>
d0084548:	f8cd 90bc 	str.w	r9, [sp, #188]	; 0xbc
d008454c:	f7fe bfeb 	b.w	d0083526 <speech_synth_render+0x552>
d0084550:	eb09 0249 	add.w	r2, r9, r9, lsl #1
d0084554:	f04f 0a00 	mov.w	sl, #0
d0084558:	f109 0901 	add.w	r9, r9, #1
d008455c:	2173      	movs	r1, #115	; 0x73
d008455e:	eb07 0342 	add.w	r3, r7, r2, lsl #1
d0084562:	f807 a012 	strb.w	sl, [r7, r2, lsl #1]
d0084566:	fa1f f989 	uxth.w	r9, r9
d008456a:	4874      	ldr	r0, [pc, #464]	; (d008473c <speech_synth_render+0x1768>)
d008456c:	f8ad 90ca 	strh.w	r9, [sp, #202]	; 0xca
d0084570:	f883 a004 	strb.w	sl, [r3, #4]
d0084574:	8059      	strh	r1, [r3, #2]
d0084576:	e7a2      	b.n	d00844be <speech_synth_render+0x14ea>
d0084578:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d008457c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0084580:	f4bf a811 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084584:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0084588:	9e02      	ldr	r6, [sp, #8]
d008458a:	3301      	adds	r3, #1
d008458c:	201f      	movs	r0, #31
d008458e:	2152      	movs	r1, #82	; 0x52
d0084590:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d0084594:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d0084598:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d008459c:	711f      	strb	r7, [r3, #4]
d008459e:	8059      	strh	r1, [r3, #2]
d00845a0:	4866      	ldr	r0, [pc, #408]	; (d008473c <speech_synth_render+0x1768>)
d00845a2:	f001 f8a8 	bl	d00856f6 <strlen>
d00845a6:	1cc2      	adds	r2, r0, #3
d00845a8:	4603      	mov	r3, r0
d00845aa:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00845ae:	f4be affa 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d00845b2:	b140      	cbz	r0, d00845c6 <speech_synth_render+0x15f2>
d00845b4:	4e61      	ldr	r6, [pc, #388]	; (d008473c <speech_synth_render+0x1768>)
d00845b6:	2120      	movs	r1, #32
d00845b8:	1832      	adds	r2, r6, r0
d00845ba:	4630      	mov	r0, r6
d00845bc:	54f1      	strb	r1, [r6, r3]
d00845be:	7057      	strb	r7, [r2, #1]
d00845c0:	f001 f899 	bl	d00856f6 <strlen>
d00845c4:	4603      	mov	r3, r0
d00845c6:	4a5d      	ldr	r2, [pc, #372]	; (d008473c <speech_synth_render+0x1768>)
d00845c8:	4961      	ldr	r1, [pc, #388]	; (d0084750 <speech_synth_render+0x177c>)
d00845ca:	18d0      	adds	r0, r2, r3
d00845cc:	2202      	movs	r2, #2
d00845ce:	f000 fef5 	bl	d00853bc <memcpy>
d00845d2:	f7fe bfe8 	b.w	d00835a6 <speech_synth_render+0x5d2>
d00845d6:	eb09 0249 	add.w	r2, r9, r9, lsl #1
d00845da:	f04f 0a00 	mov.w	sl, #0
d00845de:	f109 0901 	add.w	r9, r9, #1
d00845e2:	2130      	movs	r1, #48	; 0x30
d00845e4:	e7bb      	b.n	d008455e <speech_synth_render+0x158a>
d00845e6:	4608      	mov	r0, r1
d00845e8:	462a      	mov	r2, r5
d00845ea:	2300      	movs	r3, #0
d00845ec:	4f59      	ldr	r7, [pc, #356]	; (d0084754 <speech_synth_render+0x1780>)
d00845ee:	e005      	b.n	d00845fc <speech_synth_render+0x1628>
d00845f0:	5dd8      	ldrb	r0, [r3, r7]
d00845f2:	2800      	cmp	r0, #0
d00845f4:	f000 83f8 	beq.w	d0084de8 <speech_synth_render+0x1e14>
d00845f8:	42a2      	cmp	r2, r4
d00845fa:	da10      	bge.n	d008461e <speech_synth_render+0x164a>
d00845fc:	f81b c002 	ldrb.w	ip, [fp, r2]
d0084600:	3301      	adds	r3, #1
d0084602:	f1ac 0e41 	sub.w	lr, ip, #65	; 0x41
d0084606:	b29b      	uxth	r3, r3
d0084608:	f1be 0f19 	cmp.w	lr, #25
d008460c:	eb03 0205 	add.w	r2, r3, r5
d0084610:	d803      	bhi.n	d008461a <speech_synth_render+0x1646>
d0084612:	f10c 0c20 	add.w	ip, ip, #32
d0084616:	fa5f fc8c 	uxtb.w	ip, ip
d008461a:	4584      	cmp	ip, r0
d008461c:	d0e8      	beq.n	d00845f0 <speech_synth_render+0x161c>
d008461e:	4628      	mov	r0, r5
d0084620:	2300      	movs	r3, #0
d0084622:	4f4d      	ldr	r7, [pc, #308]	; (d0084758 <speech_synth_render+0x1784>)
d0084624:	e005      	b.n	d0084632 <speech_synth_render+0x165e>
d0084626:	5dd9      	ldrb	r1, [r3, r7]
d0084628:	2900      	cmp	r1, #0
d008462a:	f000 83dd 	beq.w	d0084de8 <speech_synth_render+0x1e14>
d008462e:	42a0      	cmp	r0, r4
d0084630:	da0e      	bge.n	d0084650 <speech_synth_render+0x167c>
d0084632:	f81b 2000 	ldrb.w	r2, [fp, r0]
d0084636:	3301      	adds	r3, #1
d0084638:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d008463c:	b29b      	uxth	r3, r3
d008463e:	f1bc 0f19 	cmp.w	ip, #25
d0084642:	eb03 0005 	add.w	r0, r3, r5
d0084646:	d801      	bhi.n	d008464c <speech_synth_render+0x1678>
d0084648:	3220      	adds	r2, #32
d008464a:	b2d2      	uxtb	r2, r2
d008464c:	428a      	cmp	r2, r1
d008464e:	d0ea      	beq.n	d0084626 <speech_synth_render+0x1652>
d0084650:	2161      	movs	r1, #97	; 0x61
d0084652:	2200      	movs	r2, #0
d0084654:	4841      	ldr	r0, [pc, #260]	; (d008475c <speech_synth_render+0x1788>)
d0084656:	1953      	adds	r3, r2, r5
d0084658:	1c57      	adds	r7, r2, #1
d008465a:	42a3      	cmp	r3, r4
d008465c:	b2ba      	uxth	r2, r7
d008465e:	f280 83f8 	bge.w	d0084e52 <speech_synth_render+0x1e7e>
d0084662:	f81b 3003 	ldrb.w	r3, [fp, r3]
d0084666:	f1a3 0741 	sub.w	r7, r3, #65	; 0x41
d008466a:	2f19      	cmp	r7, #25
d008466c:	d801      	bhi.n	d0084672 <speech_synth_render+0x169e>
d008466e:	3320      	adds	r3, #32
d0084670:	b2db      	uxtb	r3, r3
d0084672:	428b      	cmp	r3, r1
d0084674:	f040 83ed 	bne.w	d0084e52 <speech_synth_render+0x1e7e>
d0084678:	5c11      	ldrb	r1, [r2, r0]
d008467a:	2900      	cmp	r1, #0
d008467c:	d1eb      	bne.n	d0084656 <speech_synth_render+0x1682>
d008467e:	3502      	adds	r5, #2
d0084680:	2200      	movs	r2, #0
d0084682:	2104      	movs	r1, #4
d0084684:	a832      	add	r0, sp, #200	; 0xc8
d0084686:	b2ad      	uxth	r5, r5
d0084688:	f7fb fd70 	bl	d008016c <emit_phone.constprop.0>
d008468c:	e005      	b.n	d008469a <speech_synth_render+0x16c6>
d008468e:	2200      	movs	r2, #0
d0084690:	2113      	movs	r1, #19
d0084692:	a832      	add	r0, sp, #200	; 0xc8
d0084694:	b2b5      	uxth	r5, r6
d0084696:	f7fb fd69 	bl	d008016c <emit_phone.constprop.0>
d008469a:	42ac      	cmp	r4, r5
d008469c:	f67e af0b 	bls.w	d00834b6 <speech_synth_render+0x4e2>
d00846a0:	2d00      	cmp	r5, #0
d00846a2:	f43e aea3 	beq.w	d00833ec <speech_synth_render+0x418>
d00846a6:	f81b c005 	ldrb.w	ip, [fp, r5]
d00846aa:	f1ac 0341 	sub.w	r3, ip, #65	; 0x41
d00846ae:	9301      	str	r3, [sp, #4]
d00846b0:	b2db      	uxtb	r3, r3
d00846b2:	2b19      	cmp	r3, #25
d00846b4:	f240 8394 	bls.w	d0084de0 <speech_synth_render+0x1e0c>
d00846b8:	4662      	mov	r2, ip
d00846ba:	eb0b 0305 	add.w	r3, fp, r5
d00846be:	f813 3c01 	ldrb.w	r3, [r3, #-1]
d00846c2:	f1a3 0141 	sub.w	r1, r3, #65	; 0x41
d00846c6:	2919      	cmp	r1, #25
d00846c8:	d801      	bhi.n	d00846ce <speech_synth_render+0x16fa>
d00846ca:	3320      	adds	r3, #32
d00846cc:	b2db      	uxtb	r3, r3
d00846ce:	4293      	cmp	r3, r2
d00846d0:	f47e ad0d 	bne.w	d00830ee <speech_synth_render+0x11a>
d00846d4:	3b61      	subs	r3, #97	; 0x61
d00846d6:	b2db      	uxtb	r3, r3
d00846d8:	2b18      	cmp	r3, #24
d00846da:	d805      	bhi.n	d00846e8 <speech_synth_render+0x1714>
d00846dc:	4a20      	ldr	r2, [pc, #128]	; (d0084760 <speech_synth_render+0x178c>)
d00846de:	fa22 f303 	lsr.w	r3, r2, r3
d00846e2:	07da      	lsls	r2, r3, #31
d00846e4:	f53e ad03 	bmi.w	d00830ee <speech_synth_render+0x11a>
d00846e8:	3501      	adds	r5, #1
d00846ea:	b2ad      	uxth	r5, r5
d00846ec:	f7fe be7e 	b.w	d00833ec <speech_synth_render+0x418>
d00846f0:	2200      	movs	r2, #0
d00846f2:	2118      	movs	r1, #24
d00846f4:	a832      	add	r0, sp, #200	; 0xc8
d00846f6:	b2b5      	uxth	r5, r6
d00846f8:	f7fb fd38 	bl	d008016c <emit_phone.constprop.0>
d00846fc:	e7cd      	b.n	d008469a <speech_synth_render+0x16c6>
d00846fe:	9b05      	ldr	r3, [sp, #20]
d0084700:	429d      	cmp	r5, r3
d0084702:	f000 83c1 	beq.w	d0084e88 <speech_synth_render+0x1eb4>
d0084706:	b19d      	cbz	r5, d0084730 <speech_synth_render+0x175c>
d0084708:	445d      	add	r5, fp
d008470a:	f815 3c01 	ldrb.w	r3, [r5, #-1]
d008470e:	f1a3 0241 	sub.w	r2, r3, #65	; 0x41
d0084712:	2a19      	cmp	r2, #25
d0084714:	d801      	bhi.n	d008471a <speech_synth_render+0x1746>
d0084716:	3320      	adds	r3, #32
d0084718:	b2db      	uxtb	r3, r3
d008471a:	3b61      	subs	r3, #97	; 0x61
d008471c:	b2db      	uxtb	r3, r3
d008471e:	2b14      	cmp	r3, #20
d0084720:	f200 83b2 	bhi.w	d0084e88 <speech_synth_render+0x1eb4>
d0084724:	4a0f      	ldr	r2, [pc, #60]	; (d0084764 <speech_synth_render+0x1790>)
d0084726:	fa22 f303 	lsr.w	r3, r2, r3
d008472a:	07d9      	lsls	r1, r3, #31
d008472c:	f140 83ac 	bpl.w	d0084e88 <speech_synth_render+0x1eb4>
d0084730:	a832      	add	r0, sp, #200	; 0xc8
d0084732:	f7fb fd99 	bl	d0080268 <emit_ay.constprop.0>
d0084736:	b2b5      	uxth	r5, r6
d0084738:	e7af      	b.n	d008469a <speech_synth_render+0x16c6>
d008473a:	bf00      	nop
d008473c:	d00c8460 	.word	0xd00c8460
d0084740:	d0085d48 	.word	0xd0085d48
d0084744:	d00861a8 	.word	0xd00861a8
d0084748:	40002001 	.word	0x40002001
d008474c:	d0085d30 	.word	0xd0085d30
d0084750:	d0085d50 	.word	0xd0085d50
d0084754:	d0085d64 	.word	0xd0085d64
d0084758:	d0085d68 	.word	0xd0085d68
d008475c:	d0085d6c 	.word	0xd0085d6c
d0084760:	01104111 	.word	0x01104111
d0084764:	00104111 	.word	0x00104111
d0084768:	a832      	add	r0, sp, #200	; 0xc8
d008476a:	2200      	movs	r2, #0
d008476c:	2113      	movs	r1, #19
d008476e:	b2b5      	uxth	r5, r6
d0084770:	f7fb fcfc 	bl	d008016c <emit_phone.constprop.0>
d0084774:	2200      	movs	r2, #0
d0084776:	211a      	movs	r1, #26
d0084778:	a832      	add	r0, sp, #200	; 0xc8
d008477a:	f7fb fcf7 	bl	d008016c <emit_phone.constprop.0>
d008477e:	e78c      	b.n	d008469a <speech_synth_render+0x16c6>
d0084780:	2200      	movs	r2, #0
d0084782:	211f      	movs	r1, #31
d0084784:	a832      	add	r0, sp, #200	; 0xc8
d0084786:	b2b5      	uxth	r5, r6
d0084788:	f7fb fcf0 	bl	d008016c <emit_phone.constprop.0>
d008478c:	e785      	b.n	d008469a <speech_synth_render+0x16c6>
d008478e:	2200      	movs	r2, #0
d0084790:	211e      	movs	r1, #30
d0084792:	a832      	add	r0, sp, #200	; 0xc8
d0084794:	b2b5      	uxth	r5, r6
d0084796:	f7fb fce9 	bl	d008016c <emit_phone.constprop.0>
d008479a:	e77e      	b.n	d008469a <speech_synth_render+0x16c6>
d008479c:	42a5      	cmp	r5, r4
d008479e:	da19      	bge.n	d00847d4 <speech_synth_render+0x1800>
d00847a0:	4628      	mov	r0, r5
d00847a2:	2275      	movs	r2, #117	; 0x75
d00847a4:	2300      	movs	r3, #0
d00847a6:	4fbe      	ldr	r7, [pc, #760]	; (d0084aa0 <speech_synth_render+0x1acc>)
d00847a8:	e005      	b.n	d00847b6 <speech_synth_render+0x17e2>
d00847aa:	5dda      	ldrb	r2, [r3, r7]
d00847ac:	2a00      	cmp	r2, #0
d00847ae:	f000 80cd 	beq.w	d008494c <speech_synth_render+0x1978>
d00847b2:	42a0      	cmp	r0, r4
d00847b4:	da0e      	bge.n	d00847d4 <speech_synth_render+0x1800>
d00847b6:	f81b 1000 	ldrb.w	r1, [fp, r0]
d00847ba:	3301      	adds	r3, #1
d00847bc:	f1a1 0c41 	sub.w	ip, r1, #65	; 0x41
d00847c0:	b29b      	uxth	r3, r3
d00847c2:	f1bc 0f19 	cmp.w	ip, #25
d00847c6:	eb03 0005 	add.w	r0, r3, r5
d00847ca:	d801      	bhi.n	d00847d0 <speech_synth_render+0x17fc>
d00847cc:	3120      	adds	r1, #32
d00847ce:	b2c9      	uxtb	r1, r1
d00847d0:	4291      	cmp	r1, r2
d00847d2:	d0ea      	beq.n	d00847aa <speech_synth_render+0x17d6>
d00847d4:	462a      	mov	r2, r5
d00847d6:	4621      	mov	r1, r4
d00847d8:	4658      	mov	r0, fp
d00847da:	f7fb fd15 	bl	d0080208 <has_magic_e>
d00847de:	4602      	mov	r2, r0
d00847e0:	2800      	cmp	r0, #0
d00847e2:	f000 83a0 	beq.w	d0084f26 <speech_synth_render+0x1f52>
d00847e6:	2200      	movs	r2, #0
d00847e8:	210a      	movs	r1, #10
d00847ea:	a832      	add	r0, sp, #200	; 0xc8
d00847ec:	f7fb fcbe 	bl	d008016c <emit_phone.constprop.0>
d00847f0:	e7a1      	b.n	d0084736 <speech_synth_render+0x1762>
d00847f2:	2200      	movs	r2, #0
d00847f4:	211c      	movs	r1, #28
d00847f6:	a832      	add	r0, sp, #200	; 0xc8
d00847f8:	b2b5      	uxth	r5, r6
d00847fa:	f7fb fcb7 	bl	d008016c <emit_phone.constprop.0>
d00847fe:	e74c      	b.n	d008469a <speech_synth_render+0x16c6>
d0084800:	2200      	movs	r2, #0
d0084802:	211a      	movs	r1, #26
d0084804:	a832      	add	r0, sp, #200	; 0xc8
d0084806:	b2b5      	uxth	r5, r6
d0084808:	f7fb fcb0 	bl	d008016c <emit_phone.constprop.0>
d008480c:	e745      	b.n	d008469a <speech_synth_render+0x16c6>
d008480e:	2200      	movs	r2, #0
d0084810:	2119      	movs	r1, #25
d0084812:	a832      	add	r0, sp, #200	; 0xc8
d0084814:	b2b5      	uxth	r5, r6
d0084816:	f7fb fca9 	bl	d008016c <emit_phone.constprop.0>
d008481a:	e73e      	b.n	d008469a <speech_synth_render+0x16c6>
d008481c:	42a5      	cmp	r5, r4
d008481e:	da18      	bge.n	d0084852 <speech_synth_render+0x187e>
d0084820:	4628      	mov	r0, r5
d0084822:	2269      	movs	r2, #105	; 0x69
d0084824:	2300      	movs	r3, #0
d0084826:	e006      	b.n	d0084836 <speech_synth_render+0x1862>
d0084828:	4a9e      	ldr	r2, [pc, #632]	; (d0084aa4 <speech_synth_render+0x1ad0>)
d008482a:	5c9a      	ldrb	r2, [r3, r2]
d008482c:	2a00      	cmp	r2, #0
d008482e:	f000 808d 	beq.w	d008494c <speech_synth_render+0x1978>
d0084832:	42a0      	cmp	r0, r4
d0084834:	da0d      	bge.n	d0084852 <speech_synth_render+0x187e>
d0084836:	f81b 1000 	ldrb.w	r1, [fp, r0]
d008483a:	3301      	adds	r3, #1
d008483c:	f1a1 0741 	sub.w	r7, r1, #65	; 0x41
d0084840:	b29b      	uxth	r3, r3
d0084842:	2f19      	cmp	r7, #25
d0084844:	eb03 0005 	add.w	r0, r3, r5
d0084848:	d801      	bhi.n	d008484e <speech_synth_render+0x187a>
d008484a:	3120      	adds	r1, #32
d008484c:	b2c9      	uxtb	r1, r1
d008484e:	4291      	cmp	r1, r2
d0084850:	d0ea      	beq.n	d0084828 <speech_synth_render+0x1854>
d0084852:	462a      	mov	r2, r5
d0084854:	4621      	mov	r1, r4
d0084856:	4658      	mov	r0, fp
d0084858:	f7fb fcd6 	bl	d0080208 <has_magic_e>
d008485c:	4602      	mov	r2, r0
d008485e:	2800      	cmp	r0, #0
d0084860:	f47f af66 	bne.w	d0084730 <speech_synth_render+0x175c>
d0084864:	2107      	movs	r1, #7
d0084866:	a832      	add	r0, sp, #200	; 0xc8
d0084868:	f7fb fc80 	bl	d008016c <emit_phone.constprop.0>
d008486c:	e763      	b.n	d0084736 <speech_synth_render+0x1762>
d008486e:	2200      	movs	r2, #0
d0084870:	2111      	movs	r1, #17
d0084872:	a832      	add	r0, sp, #200	; 0xc8
d0084874:	b2b5      	uxth	r5, r6
d0084876:	f7fb fc79 	bl	d008016c <emit_phone.constprop.0>
d008487a:	e70e      	b.n	d008469a <speech_synth_render+0x16c6>
d008487c:	f000 03ef 	and.w	r3, r0, #239	; 0xef
d0084880:	2b69      	cmp	r3, #105	; 0x69
d0084882:	f000 82be 	beq.w	d0084e02 <speech_synth_render+0x1e2e>
d0084886:	2865      	cmp	r0, #101	; 0x65
d0084888:	f000 82bb 	beq.w	d0084e02 <speech_synth_render+0x1e2e>
d008488c:	2110      	movs	r1, #16
d008488e:	2200      	movs	r2, #0
d0084890:	a832      	add	r0, sp, #200	; 0xc8
d0084892:	b2b5      	uxth	r5, r6
d0084894:	f7fb fc6a 	bl	d008016c <emit_phone.constprop.0>
d0084898:	e6ff      	b.n	d008469a <speech_synth_render+0x16c6>
d008489a:	2200      	movs	r2, #0
d008489c:	210f      	movs	r1, #15
d008489e:	a832      	add	r0, sp, #200	; 0xc8
d00848a0:	b2b5      	uxth	r5, r6
d00848a2:	f7fb fc63 	bl	d008016c <emit_phone.constprop.0>
d00848a6:	e6f8      	b.n	d008469a <speech_synth_render+0x16c6>
d00848a8:	9b05      	ldr	r3, [sp, #20]
d00848aa:	429d      	cmp	r5, r3
d00848ac:	f43f af43 	beq.w	d0084736 <speech_synth_render+0x1762>
d00848b0:	42a5      	cmp	r5, r4
d00848b2:	f280 82d0 	bge.w	d0084e56 <speech_synth_render+0x1e82>
d00848b6:	4628      	mov	r0, r5
d00848b8:	2165      	movs	r1, #101	; 0x65
d00848ba:	2300      	movs	r3, #0
d00848bc:	4f7a      	ldr	r7, [pc, #488]	; (d0084aa8 <speech_synth_render+0x1ad4>)
d00848be:	e005      	b.n	d00848cc <speech_synth_render+0x18f8>
d00848c0:	5dd9      	ldrb	r1, [r3, r7]
d00848c2:	2900      	cmp	r1, #0
d00848c4:	f000 82a1 	beq.w	d0084e0a <speech_synth_render+0x1e36>
d00848c8:	42a0      	cmp	r0, r4
d00848ca:	da0e      	bge.n	d00848ea <speech_synth_render+0x1916>
d00848cc:	f81b 2000 	ldrb.w	r2, [fp, r0]
d00848d0:	3301      	adds	r3, #1
d00848d2:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d00848d6:	b29b      	uxth	r3, r3
d00848d8:	f1bc 0f19 	cmp.w	ip, #25
d00848dc:	eb03 0005 	add.w	r0, r3, r5
d00848e0:	d801      	bhi.n	d00848e6 <speech_synth_render+0x1912>
d00848e2:	3220      	adds	r2, #32
d00848e4:	b2d2      	uxtb	r2, r2
d00848e6:	428a      	cmp	r2, r1
d00848e8:	d0ea      	beq.n	d00848c0 <speech_synth_render+0x18ec>
d00848ea:	4629      	mov	r1, r5
d00848ec:	2065      	movs	r0, #101	; 0x65
d00848ee:	2300      	movs	r3, #0
d00848f0:	4f6e      	ldr	r7, [pc, #440]	; (d0084aac <speech_synth_render+0x1ad8>)
d00848f2:	e005      	b.n	d0084900 <speech_synth_render+0x192c>
d00848f4:	5dd8      	ldrb	r0, [r3, r7]
d00848f6:	2800      	cmp	r0, #0
d00848f8:	f000 8287 	beq.w	d0084e0a <speech_synth_render+0x1e36>
d00848fc:	42a1      	cmp	r1, r4
d00848fe:	da0e      	bge.n	d008491e <speech_synth_render+0x194a>
d0084900:	f81b 2001 	ldrb.w	r2, [fp, r1]
d0084904:	3301      	adds	r3, #1
d0084906:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d008490a:	b29b      	uxth	r3, r3
d008490c:	f1bc 0f19 	cmp.w	ip, #25
d0084910:	eb03 0105 	add.w	r1, r3, r5
d0084914:	d801      	bhi.n	d008491a <speech_synth_render+0x1946>
d0084916:	3220      	adds	r2, #32
d0084918:	b2d2      	uxtb	r2, r2
d008491a:	4282      	cmp	r2, r0
d008491c:	d0ea      	beq.n	d00848f4 <speech_synth_render+0x1920>
d008491e:	2265      	movs	r2, #101	; 0x65
d0084920:	2100      	movs	r1, #0
d0084922:	4863      	ldr	r0, [pc, #396]	; (d0084ab0 <speech_synth_render+0x1adc>)
d0084924:	194b      	adds	r3, r1, r5
d0084926:	1c4f      	adds	r7, r1, #1
d0084928:	42a3      	cmp	r3, r4
d008492a:	b2b9      	uxth	r1, r7
d008492c:	f280 8293 	bge.w	d0084e56 <speech_synth_render+0x1e82>
d0084930:	f81b 3003 	ldrb.w	r3, [fp, r3]
d0084934:	f1a3 0741 	sub.w	r7, r3, #65	; 0x41
d0084938:	2f19      	cmp	r7, #25
d008493a:	d801      	bhi.n	d0084940 <speech_synth_render+0x196c>
d008493c:	3320      	adds	r3, #32
d008493e:	b2db      	uxtb	r3, r3
d0084940:	4293      	cmp	r3, r2
d0084942:	f040 8288 	bne.w	d0084e56 <speech_synth_render+0x1e82>
d0084946:	5c0a      	ldrb	r2, [r1, r0]
d0084948:	2a00      	cmp	r2, #0
d008494a:	d1eb      	bne.n	d0084924 <speech_synth_render+0x1950>
d008494c:	3502      	adds	r5, #2
d008494e:	2106      	movs	r1, #6
d0084950:	a832      	add	r0, sp, #200	; 0xc8
d0084952:	b2ad      	uxth	r5, r5
d0084954:	f7fb fc0a 	bl	d008016c <emit_phone.constprop.0>
d0084958:	e69f      	b.n	d008469a <speech_synth_render+0x16c6>
d008495a:	2200      	movs	r2, #0
d008495c:	210d      	movs	r1, #13
d008495e:	a832      	add	r0, sp, #200	; 0xc8
d0084960:	b2b5      	uxth	r5, r6
d0084962:	f7fb fc03 	bl	d008016c <emit_phone.constprop.0>
d0084966:	e698      	b.n	d008469a <speech_synth_render+0x16c6>
d0084968:	f000 03ef 	and.w	r3, r0, #239	; 0xef
d008496c:	2b69      	cmp	r3, #105	; 0x69
d008496e:	f000 824a 	beq.w	d0084e06 <speech_synth_render+0x1e32>
d0084972:	2865      	cmp	r0, #101	; 0x65
d0084974:	f000 8247 	beq.w	d0084e06 <speech_synth_render+0x1e32>
d0084978:	2113      	movs	r1, #19
d008497a:	e788      	b.n	d008488e <speech_synth_render+0x18ba>
d008497c:	2200      	movs	r2, #0
d008497e:	210b      	movs	r1, #11
d0084980:	a832      	add	r0, sp, #200	; 0xc8
d0084982:	b2b5      	uxth	r5, r6
d0084984:	f7fb fbf2 	bl	d008016c <emit_phone.constprop.0>
d0084988:	e687      	b.n	d008469a <speech_synth_render+0x16c6>
d008498a:	2200      	movs	r2, #0
d008498c:	2115      	movs	r1, #21
d008498e:	a832      	add	r0, sp, #200	; 0xc8
d0084990:	b2b5      	uxth	r5, r6
d0084992:	f7fb fbeb 	bl	d008016c <emit_phone.constprop.0>
d0084996:	e680      	b.n	d008469a <speech_synth_render+0x16c6>
d0084998:	2200      	movs	r2, #0
d008499a:	2114      	movs	r1, #20
d008499c:	a832      	add	r0, sp, #200	; 0xc8
d008499e:	b2b5      	uxth	r5, r6
d00849a0:	f7fb fbe4 	bl	d008016c <emit_phone.constprop.0>
d00849a4:	e679      	b.n	d008469a <speech_synth_render+0x16c6>
d00849a6:	2200      	movs	r2, #0
d00849a8:	2121      	movs	r1, #33	; 0x21
d00849aa:	a832      	add	r0, sp, #200	; 0xc8
d00849ac:	b2b5      	uxth	r5, r6
d00849ae:	f7fb fbdd 	bl	d008016c <emit_phone.constprop.0>
d00849b2:	e672      	b.n	d008469a <speech_synth_render+0x16c6>
d00849b4:	2200      	movs	r2, #0
d00849b6:	2112      	movs	r1, #18
d00849b8:	a832      	add	r0, sp, #200	; 0xc8
d00849ba:	b2b5      	uxth	r5, r6
d00849bc:	f7fb fbd6 	bl	d008016c <emit_phone.constprop.0>
d00849c0:	e66b      	b.n	d008469a <speech_synth_render+0x16c6>
d00849c2:	42a5      	cmp	r5, r4
d00849c4:	f280 8266 	bge.w	d0084e94 <speech_synth_render+0x1ec0>
d00849c8:	4628      	mov	r0, r5
d00849ca:	226f      	movs	r2, #111	; 0x6f
d00849cc:	2300      	movs	r3, #0
d00849ce:	4f39      	ldr	r7, [pc, #228]	; (d0084ab4 <speech_synth_render+0x1ae0>)
d00849d0:	e005      	b.n	d00849de <speech_synth_render+0x1a0a>
d00849d2:	5dda      	ldrb	r2, [r3, r7]
d00849d4:	2a00      	cmp	r2, #0
d00849d6:	f000 820d 	beq.w	d0084df4 <speech_synth_render+0x1e20>
d00849da:	42a0      	cmp	r0, r4
d00849dc:	da0e      	bge.n	d00849fc <speech_synth_render+0x1a28>
d00849de:	f81b 1000 	ldrb.w	r1, [fp, r0]
d00849e2:	3301      	adds	r3, #1
d00849e4:	f1a1 0c41 	sub.w	ip, r1, #65	; 0x41
d00849e8:	b29b      	uxth	r3, r3
d00849ea:	f1bc 0f19 	cmp.w	ip, #25
d00849ee:	eb03 0005 	add.w	r0, r3, r5
d00849f2:	d801      	bhi.n	d00849f8 <speech_synth_render+0x1a24>
d00849f4:	3120      	adds	r1, #32
d00849f6:	b2c9      	uxtb	r1, r1
d00849f8:	4291      	cmp	r1, r2
d00849fa:	d0ea      	beq.n	d00849d2 <speech_synth_render+0x19fe>
d00849fc:	4629      	mov	r1, r5
d00849fe:	206f      	movs	r0, #111	; 0x6f
d0084a00:	2300      	movs	r3, #0
d0084a02:	4f2d      	ldr	r7, [pc, #180]	; (d0084ab8 <speech_synth_render+0x1ae4>)
d0084a04:	e005      	b.n	d0084a12 <speech_synth_render+0x1a3e>
d0084a06:	5dd8      	ldrb	r0, [r3, r7]
d0084a08:	2800      	cmp	r0, #0
d0084a0a:	f000 822b 	beq.w	d0084e64 <speech_synth_render+0x1e90>
d0084a0e:	42a1      	cmp	r1, r4
d0084a10:	da0e      	bge.n	d0084a30 <speech_synth_render+0x1a5c>
d0084a12:	f81b 2001 	ldrb.w	r2, [fp, r1]
d0084a16:	3301      	adds	r3, #1
d0084a18:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d0084a1c:	b29b      	uxth	r3, r3
d0084a1e:	f1bc 0f19 	cmp.w	ip, #25
d0084a22:	eb03 0105 	add.w	r1, r3, r5
d0084a26:	d801      	bhi.n	d0084a2c <speech_synth_render+0x1a58>
d0084a28:	3220      	adds	r2, #32
d0084a2a:	b2d2      	uxtb	r2, r2
d0084a2c:	4282      	cmp	r2, r0
d0084a2e:	d0ea      	beq.n	d0084a06 <speech_synth_render+0x1a32>
d0084a30:	4629      	mov	r1, r5
d0084a32:	206f      	movs	r0, #111	; 0x6f
d0084a34:	2300      	movs	r3, #0
d0084a36:	4f21      	ldr	r7, [pc, #132]	; (d0084abc <speech_synth_render+0x1ae8>)
d0084a38:	e005      	b.n	d0084a46 <speech_synth_render+0x1a72>
d0084a3a:	5dd8      	ldrb	r0, [r3, r7]
d0084a3c:	2800      	cmp	r0, #0
d0084a3e:	f000 8211 	beq.w	d0084e64 <speech_synth_render+0x1e90>
d0084a42:	42a1      	cmp	r1, r4
d0084a44:	da0e      	bge.n	d0084a64 <speech_synth_render+0x1a90>
d0084a46:	f81b 2001 	ldrb.w	r2, [fp, r1]
d0084a4a:	3301      	adds	r3, #1
d0084a4c:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d0084a50:	b29b      	uxth	r3, r3
d0084a52:	f1bc 0f19 	cmp.w	ip, #25
d0084a56:	eb03 0105 	add.w	r1, r3, r5
d0084a5a:	d801      	bhi.n	d0084a60 <speech_synth_render+0x1a8c>
d0084a5c:	3220      	adds	r2, #32
d0084a5e:	b2d2      	uxtb	r2, r2
d0084a60:	4282      	cmp	r2, r0
d0084a62:	d0ea      	beq.n	d0084a3a <speech_synth_render+0x1a66>
d0084a64:	216f      	movs	r1, #111	; 0x6f
d0084a66:	2200      	movs	r2, #0
d0084a68:	4815      	ldr	r0, [pc, #84]	; (d0084ac0 <speech_synth_render+0x1aec>)
d0084a6a:	1953      	adds	r3, r2, r5
d0084a6c:	1c57      	adds	r7, r2, #1
d0084a6e:	42a3      	cmp	r3, r4
d0084a70:	b2ba      	uxth	r2, r7
d0084a72:	f280 820f 	bge.w	d0084e94 <speech_synth_render+0x1ec0>
d0084a76:	f81b 3003 	ldrb.w	r3, [fp, r3]
d0084a7a:	f1a3 0741 	sub.w	r7, r3, #65	; 0x41
d0084a7e:	2f19      	cmp	r7, #25
d0084a80:	d801      	bhi.n	d0084a86 <speech_synth_render+0x1ab2>
d0084a82:	3320      	adds	r3, #32
d0084a84:	b2db      	uxtb	r3, r3
d0084a86:	428b      	cmp	r3, r1
d0084a88:	f040 8204 	bne.w	d0084e94 <speech_synth_render+0x1ec0>
d0084a8c:	5c11      	ldrb	r1, [r2, r0]
d0084a8e:	2900      	cmp	r1, #0
d0084a90:	d1eb      	bne.n	d0084a6a <speech_synth_render+0x1a96>
d0084a92:	3502      	adds	r5, #2
d0084a94:	a832      	add	r0, sp, #200	; 0xc8
d0084a96:	f7fb fd49 	bl	d008052c <emit_oy.constprop.0>
d0084a9a:	b2ad      	uxth	r5, r5
d0084a9c:	e5fd      	b.n	d008469a <speech_synth_render+0x16c6>
d0084a9e:	bf00      	nop
d0084aa0:	d0085d9c 	.word	0xd0085d9c
d0084aa4:	d0085d80 	.word	0xd0085d80
d0084aa8:	d0085d74 	.word	0xd0085d74
d0084aac:	d0085d78 	.word	0xd0085d78
d0084ab0:	d0085d7c 	.word	0xd0085d7c
d0084ab4:	d0085d84 	.word	0xd0085d84
d0084ab8:	d0085d88 	.word	0xd0085d88
d0084abc:	d0085d8c 	.word	0xd0085d8c
d0084ac0:	d0085d90 	.word	0xd0085d90
d0084ac4:	2867      	cmp	r0, #103	; 0x67
d0084ac6:	f000 81bd 	beq.w	d0084e44 <speech_synth_render+0x1e70>
d0084aca:	2200      	movs	r2, #0
d0084acc:	2116      	movs	r1, #22
d0084ace:	a832      	add	r0, sp, #200	; 0xc8
d0084ad0:	f7fb fb4c 	bl	d008016c <emit_phone.constprop.0>
d0084ad4:	2301      	movs	r3, #1
d0084ad6:	441d      	add	r5, r3
d0084ad8:	b2ad      	uxth	r5, r5
d0084ada:	e5de      	b.n	d008469a <speech_synth_render+0x16c6>
d0084adc:	4acf      	ldr	r2, [pc, #828]	; (d0084e1c <speech_synth_render+0x1e48>)
d0084ade:	2180      	movs	r1, #128	; 0x80
d0084ae0:	48cf      	ldr	r0, [pc, #828]	; (d0084e20 <speech_synth_render+0x1e4c>)
d0084ae2:	4698      	mov	r8, r3
d0084ae4:	f000 fc78 	bl	d00853d8 <memset>
d0084ae8:	4bce      	ldr	r3, [pc, #824]	; (d0084e24 <speech_synth_render+0x1e50>)
d0084aea:	4acf      	ldr	r2, [pc, #828]	; (d0084e28 <speech_synth_render+0x1e54>)
d0084aec:	601a      	str	r2, [r3, #0]
d0084aee:	f7ff bb5a 	b.w	d00841a6 <speech_synth_render+0x11d2>
d0084af2:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d0084af6:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0084afa:	f4be ad54 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084afe:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0084b02:	9e02      	ldr	r6, [sp, #8]
d0084b04:	3301      	adds	r3, #1
d0084b06:	2017      	movs	r0, #23
d0084b08:	215a      	movs	r1, #90	; 0x5a
d0084b0a:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d0084b0e:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d0084b12:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d0084b16:	711f      	strb	r7, [r3, #4]
d0084b18:	8059      	strh	r1, [r3, #2]
d0084b1a:	48c4      	ldr	r0, [pc, #784]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084b1c:	f000 fdeb 	bl	d00856f6 <strlen>
d0084b20:	1d02      	adds	r2, r0, #4
d0084b22:	4603      	mov	r3, r0
d0084b24:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0084b28:	f4be ad3d 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084b2c:	b140      	cbz	r0, d0084b40 <speech_synth_render+0x1b6c>
d0084b2e:	4ebf      	ldr	r6, [pc, #764]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084b30:	2120      	movs	r1, #32
d0084b32:	1832      	adds	r2, r6, r0
d0084b34:	4630      	mov	r0, r6
d0084b36:	54f1      	strb	r1, [r6, r3]
d0084b38:	7057      	strb	r7, [r2, #1]
d0084b3a:	f000 fddc 	bl	d00856f6 <strlen>
d0084b3e:	4603      	mov	r3, r0
d0084b40:	4aba      	ldr	r2, [pc, #744]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084b42:	49bb      	ldr	r1, [pc, #748]	; (d0084e30 <speech_synth_render+0x1e5c>)
d0084b44:	18d0      	adds	r0, r2, r3
d0084b46:	2203      	movs	r2, #3
d0084b48:	f000 fc38 	bl	d00853bc <memcpy>
d0084b4c:	f7fe bd2b 	b.w	d00835a6 <speech_synth_render+0x5d2>
d0084b50:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d0084b54:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0084b58:	f4be ad25 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084b5c:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0084b60:	9e02      	ldr	r6, [sp, #8]
d0084b62:	3301      	adds	r3, #1
d0084b64:	2019      	movs	r0, #25
d0084b66:	2158      	movs	r1, #88	; 0x58
d0084b68:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d0084b6c:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d0084b70:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d0084b74:	711f      	strb	r7, [r3, #4]
d0084b76:	8059      	strh	r1, [r3, #2]
d0084b78:	48ac      	ldr	r0, [pc, #688]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084b7a:	f000 fdbc 	bl	d00856f6 <strlen>
d0084b7e:	1cc2      	adds	r2, r0, #3
d0084b80:	4603      	mov	r3, r0
d0084b82:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0084b86:	f4be ad0e 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084b8a:	b140      	cbz	r0, d0084b9e <speech_synth_render+0x1bca>
d0084b8c:	4ea7      	ldr	r6, [pc, #668]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084b8e:	2120      	movs	r1, #32
d0084b90:	1832      	adds	r2, r6, r0
d0084b92:	4630      	mov	r0, r6
d0084b94:	54f1      	strb	r1, [r6, r3]
d0084b96:	7057      	strb	r7, [r2, #1]
d0084b98:	f000 fdad 	bl	d00856f6 <strlen>
d0084b9c:	4603      	mov	r3, r0
d0084b9e:	4aa3      	ldr	r2, [pc, #652]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084ba0:	49a4      	ldr	r1, [pc, #656]	; (d0084e34 <speech_synth_render+0x1e60>)
d0084ba2:	18d0      	adds	r0, r2, r3
d0084ba4:	2202      	movs	r2, #2
d0084ba6:	f000 fc09 	bl	d00853bc <memcpy>
d0084baa:	f7fe bcfc 	b.w	d00835a6 <speech_synth_render+0x5d2>
d0084bae:	2d00      	cmp	r5, #0
d0084bb0:	f43f abd4 	beq.w	d008435c <speech_synth_render+0x1388>
d0084bb4:	42a5      	cmp	r5, r4
d0084bb6:	f6fe ab83 	blt.w	d00832c0 <speech_synth_render+0x2ec>
d0084bba:	f1a1 0361 	sub.w	r3, r1, #97	; 0x61
d0084bbe:	2b19      	cmp	r3, #25
d0084bc0:	f63f adb9 	bhi.w	d0084736 <speech_synth_render+0x1762>
d0084bc4:	a201      	add	r2, pc, #4	; (adr r2, d0084bcc <speech_synth_render+0x1bf8>)
d0084bc6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
d0084bca:	bf00      	nop
d0084bcc:	d0084c35 	.word	0xd0084c35
d0084bd0:	d008497d 	.word	0xd008497d
d0084bd4:	d0084969 	.word	0xd0084969
d0084bd8:	d008495b 	.word	0xd008495b
d0084bdc:	d00848a9 	.word	0xd00848a9
d0084be0:	d008489b 	.word	0xd008489b
d0084be4:	d008487d 	.word	0xd008487d
d0084be8:	d008486f 	.word	0xd008486f
d0084bec:	d008481d 	.word	0xd008481d
d0084bf0:	d00849b5 	.word	0xd00849b5
d0084bf4:	d008468f 	.word	0xd008468f
d0084bf8:	d0084999 	.word	0xd0084999
d0084bfc:	d008498b 	.word	0xd008498b
d0084c00:	d0084ac5 	.word	0xd0084ac5
d0084c04:	d00849c3 	.word	0xd00849c3
d0084c08:	d00846f1 	.word	0xd00846f1
d0084c0c:	d008468f 	.word	0xd008468f
d0084c10:	d008480f 	.word	0xd008480f
d0084c14:	d0084801 	.word	0xd0084801
d0084c18:	d00847f3 	.word	0xd00847f3
d0084c1c:	d008479d 	.word	0xd008479d
d0084c20:	d008478f 	.word	0xd008478f
d0084c24:	d0084781 	.word	0xd0084781
d0084c28:	d0084769 	.word	0xd0084769
d0084c2c:	d00846ff 	.word	0xd00846ff
d0084c30:	d00849a7 	.word	0xd00849a7
d0084c34:	42a5      	cmp	r5, r4
d0084c36:	f6ff acf2 	blt.w	d008461e <speech_synth_render+0x164a>
d0084c3a:	2300      	movs	r3, #0
d0084c3c:	487e      	ldr	r0, [pc, #504]	; (d0084e38 <speech_synth_render+0x1e64>)
d0084c3e:	195a      	adds	r2, r3, r5
d0084c40:	1c5f      	adds	r7, r3, #1
d0084c42:	42a2      	cmp	r2, r4
d0084c44:	b2bb      	uxth	r3, r7
d0084c46:	f280 8113 	bge.w	d0084e70 <speech_synth_render+0x1e9c>
d0084c4a:	f81b 2002 	ldrb.w	r2, [fp, r2]
d0084c4e:	f1a2 0741 	sub.w	r7, r2, #65	; 0x41
d0084c52:	2f19      	cmp	r7, #25
d0084c54:	d801      	bhi.n	d0084c5a <speech_synth_render+0x1c86>
d0084c56:	3220      	adds	r2, #32
d0084c58:	b2d2      	uxtb	r2, r2
d0084c5a:	428a      	cmp	r2, r1
d0084c5c:	f040 8108 	bne.w	d0084e70 <speech_synth_render+0x1e9c>
d0084c60:	5c19      	ldrb	r1, [r3, r0]
d0084c62:	2900      	cmp	r1, #0
d0084c64:	d1eb      	bne.n	d0084c3e <speech_synth_render+0x1c6a>
d0084c66:	e50a      	b.n	d008467e <speech_synth_render+0x16aa>
d0084c68:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d0084c6c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0084c70:	d257      	bcs.n	d0084d22 <speech_synth_render+0x1d4e>
d0084c72:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0084c76:	9d02      	ldr	r5, [sp, #8]
d0084c78:	3301      	adds	r3, #1
d0084c7a:	2016      	movs	r0, #22
d0084c7c:	214b      	movs	r1, #75	; 0x4b
d0084c7e:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d0084c82:	eb05 0342 	add.w	r3, r5, r2, lsl #1
d0084c86:	f805 0012 	strb.w	r0, [r5, r2, lsl #1]
d0084c8a:	711f      	strb	r7, [r3, #4]
d0084c8c:	8059      	strh	r1, [r3, #2]
d0084c8e:	4867      	ldr	r0, [pc, #412]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084c90:	f000 fd31 	bl	d00856f6 <strlen>
d0084c94:	1cc2      	adds	r2, r0, #3
d0084c96:	4603      	mov	r3, r0
d0084c98:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0084c9c:	d241      	bcs.n	d0084d22 <speech_synth_render+0x1d4e>
d0084c9e:	b140      	cbz	r0, d0084cb2 <speech_synth_render+0x1cde>
d0084ca0:	4d62      	ldr	r5, [pc, #392]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084ca2:	2120      	movs	r1, #32
d0084ca4:	182a      	adds	r2, r5, r0
d0084ca6:	4628      	mov	r0, r5
d0084ca8:	54e9      	strb	r1, [r5, r3]
d0084caa:	7057      	strb	r7, [r2, #1]
d0084cac:	f000 fd23 	bl	d00856f6 <strlen>
d0084cb0:	4603      	mov	r3, r0
d0084cb2:	4a5e      	ldr	r2, [pc, #376]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084cb4:	4961      	ldr	r1, [pc, #388]	; (d0084e3c <speech_synth_render+0x1e68>)
d0084cb6:	18d0      	adds	r0, r2, r3
d0084cb8:	2202      	movs	r2, #2
d0084cba:	4615      	mov	r5, r2
d0084cbc:	f000 fb7e 	bl	d00853bc <memcpy>
d0084cc0:	f7fe bb94 	b.w	d00833ec <speech_synth_render+0x418>
d0084cc4:	f8bd 30c8 	ldrh.w	r3, [sp, #200]	; 0xc8
d0084cc8:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0084ccc:	f4be ac6b 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084cd0:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0084cd4:	9e02      	ldr	r6, [sp, #8]
d0084cd6:	3301      	adds	r3, #1
d0084cd8:	2013      	movs	r0, #19
d0084cda:	2146      	movs	r1, #70	; 0x46
d0084cdc:	f8ad 30c8 	strh.w	r3, [sp, #200]	; 0xc8
d0084ce0:	eb06 0342 	add.w	r3, r6, r2, lsl #1
d0084ce4:	f806 0012 	strb.w	r0, [r6, r2, lsl #1]
d0084ce8:	711f      	strb	r7, [r3, #4]
d0084cea:	8059      	strh	r1, [r3, #2]
d0084cec:	484f      	ldr	r0, [pc, #316]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084cee:	f000 fd02 	bl	d00856f6 <strlen>
d0084cf2:	1cc2      	adds	r2, r0, #3
d0084cf4:	4603      	mov	r3, r0
d0084cf6:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0084cfa:	f4be ac54 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084cfe:	b140      	cbz	r0, d0084d12 <speech_synth_render+0x1d3e>
d0084d00:	4e4a      	ldr	r6, [pc, #296]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084d02:	2120      	movs	r1, #32
d0084d04:	1832      	adds	r2, r6, r0
d0084d06:	4630      	mov	r0, r6
d0084d08:	54f1      	strb	r1, [r6, r3]
d0084d0a:	7057      	strb	r7, [r2, #1]
d0084d0c:	f000 fcf3 	bl	d00856f6 <strlen>
d0084d10:	4603      	mov	r3, r0
d0084d12:	4a46      	ldr	r2, [pc, #280]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084d14:	494a      	ldr	r1, [pc, #296]	; (d0084e40 <speech_synth_render+0x1e6c>)
d0084d16:	18d0      	adds	r0, r2, r3
d0084d18:	2202      	movs	r2, #2
d0084d1a:	f000 fb4f 	bl	d00853bc <memcpy>
d0084d1e:	f7fe bc42 	b.w	d00835a6 <speech_synth_render+0x5d2>
d0084d22:	2502      	movs	r5, #2
d0084d24:	f7fe bb62 	b.w	d00833ec <speech_synth_render+0x418>
d0084d28:	f8bd 80c8 	ldrh.w	r8, [sp, #200]	; 0xc8
d0084d2c:	f5b8 7f40 	cmp.w	r8, #768	; 0x300
d0084d30:	f4be ac39 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084d34:	f108 0601 	add.w	r6, r8, #1
d0084d38:	eb08 0348 	add.w	r3, r8, r8, lsl #1
d0084d3c:	2113      	movs	r1, #19
d0084d3e:	2246      	movs	r2, #70	; 0x46
d0084d40:	b2b0      	uxth	r0, r6
d0084d42:	9e02      	ldr	r6, [sp, #8]
d0084d44:	9001      	str	r0, [sp, #4]
d0084d46:	f806 1013 	strb.w	r1, [r6, r3, lsl #1]
d0084d4a:	eb06 0343 	add.w	r3, r6, r3, lsl #1
d0084d4e:	9901      	ldr	r1, [sp, #4]
d0084d50:	805a      	strh	r2, [r3, #2]
d0084d52:	711f      	strb	r7, [r3, #4]
d0084d54:	4835      	ldr	r0, [pc, #212]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084d56:	f8ad 10c8 	strh.w	r1, [sp, #200]	; 0xc8
d0084d5a:	f000 fccc 	bl	d00856f6 <strlen>
d0084d5e:	1cc2      	adds	r2, r0, #3
d0084d60:	4603      	mov	r3, r0
d0084d62:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0084d66:	d20f      	bcs.n	d0084d88 <speech_synth_render+0x1db4>
d0084d68:	b140      	cbz	r0, d0084d7c <speech_synth_render+0x1da8>
d0084d6a:	4e30      	ldr	r6, [pc, #192]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084d6c:	2120      	movs	r1, #32
d0084d6e:	1832      	adds	r2, r6, r0
d0084d70:	4630      	mov	r0, r6
d0084d72:	54f1      	strb	r1, [r6, r3]
d0084d74:	7057      	strb	r7, [r2, #1]
d0084d76:	f000 fcbe 	bl	d00856f6 <strlen>
d0084d7a:	4603      	mov	r3, r0
d0084d7c:	4a2b      	ldr	r2, [pc, #172]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084d7e:	4930      	ldr	r1, [pc, #192]	; (d0084e40 <speech_synth_render+0x1e6c>)
d0084d80:	18d0      	adds	r0, r2, r3
d0084d82:	2202      	movs	r2, #2
d0084d84:	f000 fb1a 	bl	d00853bc <memcpy>
d0084d88:	9b01      	ldr	r3, [sp, #4]
d0084d8a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0084d8e:	f43e ac0a 	beq.w	d00835a6 <speech_synth_render+0x5d2>
d0084d92:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0084d96:	9802      	ldr	r0, [sp, #8]
d0084d98:	211f      	movs	r1, #31
d0084d9a:	2252      	movs	r2, #82	; 0x52
d0084d9c:	eb00 0346 	add.w	r3, r0, r6, lsl #1
d0084da0:	f108 0802 	add.w	r8, r8, #2
d0084da4:	f800 1016 	strb.w	r1, [r0, r6, lsl #1]
d0084da8:	2600      	movs	r6, #0
d0084daa:	805a      	strh	r2, [r3, #2]
d0084dac:	711e      	strb	r6, [r3, #4]
d0084dae:	481f      	ldr	r0, [pc, #124]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084db0:	f8ad 80c8 	strh.w	r8, [sp, #200]	; 0xc8
d0084db4:	f000 fc9f 	bl	d00856f6 <strlen>
d0084db8:	1cc2      	adds	r2, r0, #3
d0084dba:	4603      	mov	r3, r0
d0084dbc:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0084dc0:	f4be abf1 	bcs.w	d00835a6 <speech_synth_render+0x5d2>
d0084dc4:	2800      	cmp	r0, #0
d0084dc6:	f43f abfe 	beq.w	d00845c6 <speech_synth_render+0x15f2>
d0084dca:	4f18      	ldr	r7, [pc, #96]	; (d0084e2c <speech_synth_render+0x1e58>)
d0084dcc:	2120      	movs	r1, #32
d0084dce:	183a      	adds	r2, r7, r0
d0084dd0:	4638      	mov	r0, r7
d0084dd2:	54f9      	strb	r1, [r7, r3]
d0084dd4:	7056      	strb	r6, [r2, #1]
d0084dd6:	f000 fc8e 	bl	d00856f6 <strlen>
d0084dda:	4603      	mov	r3, r0
d0084ddc:	f7ff bbf3 	b.w	d00845c6 <speech_synth_render+0x15f2>
d0084de0:	f10c 0220 	add.w	r2, ip, #32
d0084de4:	b2d2      	uxtb	r2, r2
d0084de6:	e468      	b.n	d00846ba <speech_synth_render+0x16e6>
d0084de8:	3502      	adds	r5, #2
d0084dea:	a832      	add	r0, sp, #200	; 0xc8
d0084dec:	f7fb fb28 	bl	d0080440 <emit_ey.constprop.0>
d0084df0:	b2ad      	uxth	r5, r5
d0084df2:	e452      	b.n	d008469a <speech_synth_render+0x16c6>
d0084df4:	3502      	adds	r5, #2
d0084df6:	210a      	movs	r1, #10
d0084df8:	a832      	add	r0, sp, #200	; 0xc8
d0084dfa:	b2ad      	uxth	r5, r5
d0084dfc:	f7fb f9b6 	bl	d008016c <emit_phone.constprop.0>
d0084e00:	e44b      	b.n	d008469a <speech_synth_render+0x16c6>
d0084e02:	2112      	movs	r1, #18
d0084e04:	e543      	b.n	d008488e <speech_synth_render+0x18ba>
d0084e06:	211a      	movs	r1, #26
d0084e08:	e541      	b.n	d008488e <speech_synth_render+0x18ba>
d0084e0a:	3502      	adds	r5, #2
d0084e0c:	2200      	movs	r2, #0
d0084e0e:	2108      	movs	r1, #8
d0084e10:	a832      	add	r0, sp, #200	; 0xc8
d0084e12:	b2ad      	uxth	r5, r5
d0084e14:	f7fb f9aa 	bl	d008016c <emit_phone.constprop.0>
d0084e18:	e43f      	b.n	d008469a <speech_synth_render+0x16c6>
d0084e1a:	bf00      	nop
d0084e1c:	000410a0 	.word	0x000410a0
d0084e20:	d00873c0 	.word	0xd00873c0
d0084e24:	d0086130 	.word	0xd0086130
d0084e28:	1234abcd 	.word	0x1234abcd
d0084e2c:	d00c8460 	.word	0xd00c8460
d0084e30:	d0085ce0 	.word	0xd0085ce0
d0084e34:	d0085c40 	.word	0xd0085c40
d0084e38:	d0085d70 	.word	0xd0085d70
d0084e3c:	d0085c7c 	.word	0xd0085c7c
d0084e40:	d0085cdc 	.word	0xd0085cdc
d0084e44:	2200      	movs	r2, #0
d0084e46:	2117      	movs	r1, #23
d0084e48:	a832      	add	r0, sp, #200	; 0xc8
d0084e4a:	f7fb f98f 	bl	d008016c <emit_phone.constprop.0>
d0084e4e:	2302      	movs	r3, #2
d0084e50:	e641      	b.n	d0084ad6 <speech_synth_render+0x1b02>
d0084e52:	2161      	movs	r1, #97	; 0x61
d0084e54:	e6f1      	b.n	d0084c3a <speech_synth_render+0x1c66>
d0084e56:	2200      	movs	r2, #0
d0084e58:	2105      	movs	r1, #5
d0084e5a:	a832      	add	r0, sp, #200	; 0xc8
d0084e5c:	b2b5      	uxth	r5, r6
d0084e5e:	f7fb f985 	bl	d008016c <emit_phone.constprop.0>
d0084e62:	e41a      	b.n	d008469a <speech_synth_render+0x16c6>
d0084e64:	3502      	adds	r5, #2
d0084e66:	a832      	add	r0, sp, #200	; 0xc8
d0084e68:	f7fb fbd6 	bl	d0080618 <emit_aw.constprop.0>
d0084e6c:	b2ad      	uxth	r5, r5
d0084e6e:	e414      	b.n	d008469a <speech_synth_render+0x16c6>
d0084e70:	462a      	mov	r2, r5
d0084e72:	4621      	mov	r1, r4
d0084e74:	4658      	mov	r0, fp
d0084e76:	f7fb f9c7 	bl	d0080208 <has_magic_e>
d0084e7a:	4602      	mov	r2, r0
d0084e7c:	2800      	cmp	r0, #0
d0084e7e:	d057      	beq.n	d0084f30 <speech_synth_render+0x1f5c>
d0084e80:	a832      	add	r0, sp, #200	; 0xc8
d0084e82:	f7fb fadd 	bl	d0080440 <emit_ey.constprop.0>
d0084e86:	e456      	b.n	d0084736 <speech_synth_render+0x1762>
d0084e88:	2200      	movs	r2, #0
d0084e8a:	2108      	movs	r1, #8
d0084e8c:	a832      	add	r0, sp, #200	; 0xc8
d0084e8e:	f7fb f96d 	bl	d008016c <emit_phone.constprop.0>
d0084e92:	e450      	b.n	d0084736 <speech_synth_render+0x1762>
d0084e94:	216f      	movs	r1, #111	; 0x6f
d0084e96:	2300      	movs	r3, #0
d0084e98:	4828      	ldr	r0, [pc, #160]	; (d0084f3c <speech_synth_render+0x1f68>)
d0084e9a:	195a      	adds	r2, r3, r5
d0084e9c:	1c5f      	adds	r7, r3, #1
d0084e9e:	42a2      	cmp	r2, r4
d0084ea0:	b2bb      	uxth	r3, r7
d0084ea2:	da0d      	bge.n	d0084ec0 <speech_synth_render+0x1eec>
d0084ea4:	f81b 2002 	ldrb.w	r2, [fp, r2]
d0084ea8:	f1a2 0741 	sub.w	r7, r2, #65	; 0x41
d0084eac:	2f19      	cmp	r7, #25
d0084eae:	d801      	bhi.n	d0084eb4 <speech_synth_render+0x1ee0>
d0084eb0:	3220      	adds	r2, #32
d0084eb2:	b2d2      	uxtb	r2, r2
d0084eb4:	428a      	cmp	r2, r1
d0084eb6:	d103      	bne.n	d0084ec0 <speech_synth_render+0x1eec>
d0084eb8:	5c19      	ldrb	r1, [r3, r0]
d0084eba:	2900      	cmp	r1, #0
d0084ebc:	d1ed      	bne.n	d0084e9a <speech_synth_render+0x1ec6>
d0084ebe:	e5e8      	b.n	d0084a92 <speech_synth_render+0x1abe>
d0084ec0:	276f      	movs	r7, #111	; 0x6f
d0084ec2:	2200      	movs	r2, #0
d0084ec4:	491e      	ldr	r1, [pc, #120]	; (d0084f40 <speech_synth_render+0x1f6c>)
d0084ec6:	1953      	adds	r3, r2, r5
d0084ec8:	1c50      	adds	r0, r2, #1
d0084eca:	42a3      	cmp	r3, r4
d0084ecc:	b282      	uxth	r2, r0
d0084ece:	da1a      	bge.n	d0084f06 <speech_synth_render+0x1f32>
d0084ed0:	f81b 3003 	ldrb.w	r3, [fp, r3]
d0084ed4:	f1a3 0041 	sub.w	r0, r3, #65	; 0x41
d0084ed8:	2819      	cmp	r0, #25
d0084eda:	d801      	bhi.n	d0084ee0 <speech_synth_render+0x1f0c>
d0084edc:	3320      	adds	r3, #32
d0084ede:	b2db      	uxtb	r3, r3
d0084ee0:	42bb      	cmp	r3, r7
d0084ee2:	d110      	bne.n	d0084f06 <speech_synth_render+0x1f32>
d0084ee4:	5c57      	ldrb	r7, [r2, r1]
d0084ee6:	2f00      	cmp	r7, #0
d0084ee8:	d1ed      	bne.n	d0084ec6 <speech_synth_render+0x1ef2>
d0084eea:	463a      	mov	r2, r7
d0084eec:	2104      	movs	r1, #4
d0084eee:	a832      	add	r0, sp, #200	; 0xc8
d0084ef0:	3502      	adds	r5, #2
d0084ef2:	f7fb f93b 	bl	d008016c <emit_phone.constprop.0>
d0084ef6:	463a      	mov	r2, r7
d0084ef8:	2119      	movs	r1, #25
d0084efa:	a832      	add	r0, sp, #200	; 0xc8
d0084efc:	b2ad      	uxth	r5, r5
d0084efe:	f7fb f935 	bl	d008016c <emit_phone.constprop.0>
d0084f02:	f7ff bbca 	b.w	d008469a <speech_synth_render+0x16c6>
d0084f06:	462a      	mov	r2, r5
d0084f08:	4621      	mov	r1, r4
d0084f0a:	4658      	mov	r0, fp
d0084f0c:	f7fb f97c 	bl	d0080208 <has_magic_e>
d0084f10:	4602      	mov	r2, r0
d0084f12:	b118      	cbz	r0, d0084f1c <speech_synth_render+0x1f48>
d0084f14:	a832      	add	r0, sp, #200	; 0xc8
d0084f16:	f7fb fa1d 	bl	d0080354 <emit_ow.constprop.0>
d0084f1a:	e40c      	b.n	d0084736 <speech_synth_render+0x1762>
d0084f1c:	2103      	movs	r1, #3
d0084f1e:	a832      	add	r0, sp, #200	; 0xc8
d0084f20:	f7fb f924 	bl	d008016c <emit_phone.constprop.0>
d0084f24:	e407      	b.n	d0084736 <speech_synth_render+0x1762>
d0084f26:	2101      	movs	r1, #1
d0084f28:	a832      	add	r0, sp, #200	; 0xc8
d0084f2a:	f7fb f91f 	bl	d008016c <emit_phone.constprop.0>
d0084f2e:	e402      	b.n	d0084736 <speech_synth_render+0x1762>
d0084f30:	2102      	movs	r1, #2
d0084f32:	a832      	add	r0, sp, #200	; 0xc8
d0084f34:	f7fb f91a 	bl	d008016c <emit_phone.constprop.0>
d0084f38:	f7ff bbfd 	b.w	d0084736 <speech_synth_render+0x1762>
d0084f3c:	d0085d94 	.word	0xd0085d94
d0084f40:	d0085d98 	.word	0xd0085d98

d0084f44 <speech_synth_samples>:
d0084f44:	4800      	ldr	r0, [pc, #0]	; (d0084f48 <speech_synth_samples+0x4>)
d0084f46:	4770      	bx	lr
d0084f48:	d00873c0 	.word	0xd00873c0

d0084f4c <main>:
d0084f4c:	b530      	push	{r4, r5, lr}
d0084f4e:	b083      	sub	sp, #12
d0084f50:	2900      	cmp	r1, #0
d0084f52:	f000 80a3 	beq.w	d008509c <main+0x150>
d0084f56:	684d      	ldr	r5, [r1, #4]
d0084f58:	4b51      	ldr	r3, [pc, #324]	; (d00850a0 <main+0x154>)
d0084f5a:	2d00      	cmp	r5, #0
d0084f5c:	bf08      	it	eq
d0084f5e:	461d      	moveq	r5, r3
d0084f60:	4c50      	ldr	r4, [pc, #320]	; (d00850a4 <main+0x158>)
d0084f62:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d0084f66:	7823      	ldrb	r3, [r4, #0]
d0084f68:	7862      	ldrb	r2, [r4, #1]
d0084f6a:	78a1      	ldrb	r1, [r4, #2]
d0084f6c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0084f70:	78e2      	ldrb	r2, [r4, #3]
d0084f72:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0084f76:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0084f7a:	681b      	ldr	r3, [r3, #0]
d0084f7c:	4798      	blx	r3
d0084f7e:	f7fb f85d 	bl	d008003c <initMalloc>
d0084f82:	4628      	mov	r0, r5
d0084f84:	f7fe f826 	bl	d0082fd4 <speech_synth_render>
d0084f88:	7d23      	ldrb	r3, [r4, #20]
d0084f8a:	7d61      	ldrb	r1, [r4, #21]
d0084f8c:	9001      	str	r0, [sp, #4]
d0084f8e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0084f92:	7da0      	ldrb	r0, [r4, #22]
d0084f94:	7de1      	ldrb	r1, [r4, #23]
d0084f96:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0084f9a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0084f9e:	689b      	ldr	r3, [r3, #8]
d0084fa0:	68dd      	ldr	r5, [r3, #12]
d0084fa2:	f7ff ffcf 	bl	d0084f44 <speech_synth_samples>
d0084fa6:	2300      	movs	r3, #0
d0084fa8:	4601      	mov	r1, r0
d0084faa:	9a01      	ldr	r2, [sp, #4]
d0084fac:	4618      	mov	r0, r3
d0084fae:	47a8      	blx	r5
d0084fb0:	7d23      	ldrb	r3, [r4, #20]
d0084fb2:	7d62      	ldrb	r2, [r4, #21]
d0084fb4:	f245 61b8 	movw	r1, #22200	; 0x56b8
d0084fb8:	7da5      	ldrb	r5, [r4, #22]
d0084fba:	2000      	movs	r0, #0
d0084fbc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0084fc0:	7de2      	ldrb	r2, [r4, #23]
d0084fc2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0084fc6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0084fca:	689b      	ldr	r3, [r3, #8]
d0084fcc:	691b      	ldr	r3, [r3, #16]
d0084fce:	4798      	blx	r3
d0084fd0:	7d23      	ldrb	r3, [r4, #20]
d0084fd2:	7d62      	ldrb	r2, [r4, #21]
d0084fd4:	21ff      	movs	r1, #255	; 0xff
d0084fd6:	7da5      	ldrb	r5, [r4, #22]
d0084fd8:	2000      	movs	r0, #0
d0084fda:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0084fde:	7de2      	ldrb	r2, [r4, #23]
d0084fe0:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0084fe4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0084fe8:	689b      	ldr	r3, [r3, #8]
d0084fea:	695b      	ldr	r3, [r3, #20]
d0084fec:	4798      	blx	r3
d0084fee:	7d23      	ldrb	r3, [r4, #20]
d0084ff0:	7d62      	ldrb	r2, [r4, #21]
d0084ff2:	2100      	movs	r1, #0
d0084ff4:	7da5      	ldrb	r5, [r4, #22]
d0084ff6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0084ffa:	7de2      	ldrb	r2, [r4, #23]
d0084ffc:	4608      	mov	r0, r1
d0084ffe:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0085002:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0085006:	689b      	ldr	r3, [r3, #8]
d0085008:	699b      	ldr	r3, [r3, #24]
d008500a:	4798      	blx	r3
d008500c:	7d23      	ldrb	r3, [r4, #20]
d008500e:	7d62      	ldrb	r2, [r4, #21]
d0085010:	2100      	movs	r1, #0
d0085012:	7da5      	ldrb	r5, [r4, #22]
d0085014:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0085018:	7de2      	ldrb	r2, [r4, #23]
d008501a:	4608      	mov	r0, r1
d008501c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0085020:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0085024:	689b      	ldr	r3, [r3, #8]
d0085026:	6a1b      	ldr	r3, [r3, #32]
d0085028:	4798      	blx	r3
d008502a:	7d23      	ldrb	r3, [r4, #20]
d008502c:	7d62      	ldrb	r2, [r4, #21]
d008502e:	2000      	movs	r0, #0
d0085030:	7da1      	ldrb	r1, [r4, #22]
d0085032:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0085036:	7de2      	ldrb	r2, [r4, #23]
d0085038:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008503c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0085040:	689b      	ldr	r3, [r3, #8]
d0085042:	685b      	ldr	r3, [r3, #4]
d0085044:	4798      	blx	r3
d0085046:	7d23      	ldrb	r3, [r4, #20]
d0085048:	7d62      	ldrb	r2, [r4, #21]
d008504a:	2000      	movs	r0, #0
d008504c:	7da1      	ldrb	r1, [r4, #22]
d008504e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0085052:	7de2      	ldrb	r2, [r4, #23]
d0085054:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0085058:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008505c:	689b      	ldr	r3, [r3, #8]
d008505e:	689b      	ldr	r3, [r3, #8]
d0085060:	4798      	blx	r3
d0085062:	7d23      	ldrb	r3, [r4, #20]
d0085064:	7d62      	ldrb	r2, [r4, #21]
d0085066:	2000      	movs	r0, #0
d0085068:	7da1      	ldrb	r1, [r4, #22]
d008506a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008506e:	7de2      	ldrb	r2, [r4, #23]
d0085070:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0085074:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0085078:	689b      	ldr	r3, [r3, #8]
d008507a:	685b      	ldr	r3, [r3, #4]
d008507c:	4798      	blx	r3
d008507e:	7823      	ldrb	r3, [r4, #0]
d0085080:	7862      	ldrb	r2, [r4, #1]
d0085082:	78a1      	ldrb	r1, [r4, #2]
d0085084:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0085088:	78e2      	ldrb	r2, [r4, #3]
d008508a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008508e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0085092:	685b      	ldr	r3, [r3, #4]
d0085094:	4798      	blx	r3
d0085096:	2000      	movs	r0, #0
d0085098:	b003      	add	sp, #12
d008509a:	bd30      	pop	{r4, r5, pc}
d008509c:	4d00      	ldr	r5, [pc, #0]	; (d00850a0 <main+0x154>)
d008509e:	e75f      	b.n	d0084f60 <main+0x14>
d00850a0:	d0086068 	.word	0xd0086068
d00850a4:	2001f000 	.word	0x2001f000

d00850a8 <__aeabi_uldivmod>:
d00850a8:	b953      	cbnz	r3, d00850c0 <__aeabi_uldivmod+0x18>
d00850aa:	b94a      	cbnz	r2, d00850c0 <__aeabi_uldivmod+0x18>
d00850ac:	2900      	cmp	r1, #0
d00850ae:	bf08      	it	eq
d00850b0:	2800      	cmpeq	r0, #0
d00850b2:	bf1c      	itt	ne
d00850b4:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d00850b8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d00850bc:	f000 b96e 	b.w	d008539c <__aeabi_idiv0>
d00850c0:	f1ad 0c08 	sub.w	ip, sp, #8
d00850c4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d00850c8:	f000 f806 	bl	d00850d8 <__udivmoddi4>
d00850cc:	f8dd e004 	ldr.w	lr, [sp, #4]
d00850d0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d00850d4:	b004      	add	sp, #16
d00850d6:	4770      	bx	lr

d00850d8 <__udivmoddi4>:
d00850d8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00850dc:	9d08      	ldr	r5, [sp, #32]
d00850de:	4604      	mov	r4, r0
d00850e0:	468c      	mov	ip, r1
d00850e2:	2b00      	cmp	r3, #0
d00850e4:	f040 8083 	bne.w	d00851ee <__udivmoddi4+0x116>
d00850e8:	428a      	cmp	r2, r1
d00850ea:	4617      	mov	r7, r2
d00850ec:	d947      	bls.n	d008517e <__udivmoddi4+0xa6>
d00850ee:	fab2 f282 	clz	r2, r2
d00850f2:	b142      	cbz	r2, d0085106 <__udivmoddi4+0x2e>
d00850f4:	f1c2 0020 	rsb	r0, r2, #32
d00850f8:	fa24 f000 	lsr.w	r0, r4, r0
d00850fc:	4091      	lsls	r1, r2
d00850fe:	4097      	lsls	r7, r2
d0085100:	ea40 0c01 	orr.w	ip, r0, r1
d0085104:	4094      	lsls	r4, r2
d0085106:	ea4f 4817 	mov.w	r8, r7, lsr #16
d008510a:	0c23      	lsrs	r3, r4, #16
d008510c:	fbbc f6f8 	udiv	r6, ip, r8
d0085110:	fa1f fe87 	uxth.w	lr, r7
d0085114:	fb08 c116 	mls	r1, r8, r6, ip
d0085118:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008511c:	fb06 f10e 	mul.w	r1, r6, lr
d0085120:	4299      	cmp	r1, r3
d0085122:	d909      	bls.n	d0085138 <__udivmoddi4+0x60>
d0085124:	18fb      	adds	r3, r7, r3
d0085126:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d008512a:	f080 8119 	bcs.w	d0085360 <__udivmoddi4+0x288>
d008512e:	4299      	cmp	r1, r3
d0085130:	f240 8116 	bls.w	d0085360 <__udivmoddi4+0x288>
d0085134:	3e02      	subs	r6, #2
d0085136:	443b      	add	r3, r7
d0085138:	1a5b      	subs	r3, r3, r1
d008513a:	b2a4      	uxth	r4, r4
d008513c:	fbb3 f0f8 	udiv	r0, r3, r8
d0085140:	fb08 3310 	mls	r3, r8, r0, r3
d0085144:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d0085148:	fb00 fe0e 	mul.w	lr, r0, lr
d008514c:	45a6      	cmp	lr, r4
d008514e:	d909      	bls.n	d0085164 <__udivmoddi4+0x8c>
d0085150:	193c      	adds	r4, r7, r4
d0085152:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0085156:	f080 8105 	bcs.w	d0085364 <__udivmoddi4+0x28c>
d008515a:	45a6      	cmp	lr, r4
d008515c:	f240 8102 	bls.w	d0085364 <__udivmoddi4+0x28c>
d0085160:	3802      	subs	r0, #2
d0085162:	443c      	add	r4, r7
d0085164:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d0085168:	eba4 040e 	sub.w	r4, r4, lr
d008516c:	2600      	movs	r6, #0
d008516e:	b11d      	cbz	r5, d0085178 <__udivmoddi4+0xa0>
d0085170:	40d4      	lsrs	r4, r2
d0085172:	2300      	movs	r3, #0
d0085174:	e9c5 4300 	strd	r4, r3, [r5]
d0085178:	4631      	mov	r1, r6
d008517a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d008517e:	b902      	cbnz	r2, d0085182 <__udivmoddi4+0xaa>
d0085180:	deff      	udf	#255	; 0xff
d0085182:	fab2 f282 	clz	r2, r2
d0085186:	2a00      	cmp	r2, #0
d0085188:	d150      	bne.n	d008522c <__udivmoddi4+0x154>
d008518a:	1bcb      	subs	r3, r1, r7
d008518c:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d0085190:	fa1f f887 	uxth.w	r8, r7
d0085194:	2601      	movs	r6, #1
d0085196:	fbb3 fcfe 	udiv	ip, r3, lr
d008519a:	0c21      	lsrs	r1, r4, #16
d008519c:	fb0e 331c 	mls	r3, lr, ip, r3
d00851a0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d00851a4:	fb08 f30c 	mul.w	r3, r8, ip
d00851a8:	428b      	cmp	r3, r1
d00851aa:	d907      	bls.n	d00851bc <__udivmoddi4+0xe4>
d00851ac:	1879      	adds	r1, r7, r1
d00851ae:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d00851b2:	d202      	bcs.n	d00851ba <__udivmoddi4+0xe2>
d00851b4:	428b      	cmp	r3, r1
d00851b6:	f200 80e9 	bhi.w	d008538c <__udivmoddi4+0x2b4>
d00851ba:	4684      	mov	ip, r0
d00851bc:	1ac9      	subs	r1, r1, r3
d00851be:	b2a3      	uxth	r3, r4
d00851c0:	fbb1 f0fe 	udiv	r0, r1, lr
d00851c4:	fb0e 1110 	mls	r1, lr, r0, r1
d00851c8:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d00851cc:	fb08 f800 	mul.w	r8, r8, r0
d00851d0:	45a0      	cmp	r8, r4
d00851d2:	d907      	bls.n	d00851e4 <__udivmoddi4+0x10c>
d00851d4:	193c      	adds	r4, r7, r4
d00851d6:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00851da:	d202      	bcs.n	d00851e2 <__udivmoddi4+0x10a>
d00851dc:	45a0      	cmp	r8, r4
d00851de:	f200 80d9 	bhi.w	d0085394 <__udivmoddi4+0x2bc>
d00851e2:	4618      	mov	r0, r3
d00851e4:	eba4 0408 	sub.w	r4, r4, r8
d00851e8:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d00851ec:	e7bf      	b.n	d008516e <__udivmoddi4+0x96>
d00851ee:	428b      	cmp	r3, r1
d00851f0:	d909      	bls.n	d0085206 <__udivmoddi4+0x12e>
d00851f2:	2d00      	cmp	r5, #0
d00851f4:	f000 80b1 	beq.w	d008535a <__udivmoddi4+0x282>
d00851f8:	2600      	movs	r6, #0
d00851fa:	e9c5 0100 	strd	r0, r1, [r5]
d00851fe:	4630      	mov	r0, r6
d0085200:	4631      	mov	r1, r6
d0085202:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0085206:	fab3 f683 	clz	r6, r3
d008520a:	2e00      	cmp	r6, #0
d008520c:	d14a      	bne.n	d00852a4 <__udivmoddi4+0x1cc>
d008520e:	428b      	cmp	r3, r1
d0085210:	d302      	bcc.n	d0085218 <__udivmoddi4+0x140>
d0085212:	4282      	cmp	r2, r0
d0085214:	f200 80b8 	bhi.w	d0085388 <__udivmoddi4+0x2b0>
d0085218:	1a84      	subs	r4, r0, r2
d008521a:	eb61 0103 	sbc.w	r1, r1, r3
d008521e:	2001      	movs	r0, #1
d0085220:	468c      	mov	ip, r1
d0085222:	2d00      	cmp	r5, #0
d0085224:	d0a8      	beq.n	d0085178 <__udivmoddi4+0xa0>
d0085226:	e9c5 4c00 	strd	r4, ip, [r5]
d008522a:	e7a5      	b.n	d0085178 <__udivmoddi4+0xa0>
d008522c:	f1c2 0320 	rsb	r3, r2, #32
d0085230:	fa20 f603 	lsr.w	r6, r0, r3
d0085234:	4097      	lsls	r7, r2
d0085236:	fa01 f002 	lsl.w	r0, r1, r2
d008523a:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d008523e:	40d9      	lsrs	r1, r3
d0085240:	4330      	orrs	r0, r6
d0085242:	0c03      	lsrs	r3, r0, #16
d0085244:	fbb1 f6fe 	udiv	r6, r1, lr
d0085248:	fa1f f887 	uxth.w	r8, r7
d008524c:	fb0e 1116 	mls	r1, lr, r6, r1
d0085250:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0085254:	fb06 f108 	mul.w	r1, r6, r8
d0085258:	4299      	cmp	r1, r3
d008525a:	fa04 f402 	lsl.w	r4, r4, r2
d008525e:	d909      	bls.n	d0085274 <__udivmoddi4+0x19c>
d0085260:	18fb      	adds	r3, r7, r3
d0085262:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d0085266:	f080 808d 	bcs.w	d0085384 <__udivmoddi4+0x2ac>
d008526a:	4299      	cmp	r1, r3
d008526c:	f240 808a 	bls.w	d0085384 <__udivmoddi4+0x2ac>
d0085270:	3e02      	subs	r6, #2
d0085272:	443b      	add	r3, r7
d0085274:	1a5b      	subs	r3, r3, r1
d0085276:	b281      	uxth	r1, r0
d0085278:	fbb3 f0fe 	udiv	r0, r3, lr
d008527c:	fb0e 3310 	mls	r3, lr, r0, r3
d0085280:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0085284:	fb00 f308 	mul.w	r3, r0, r8
d0085288:	428b      	cmp	r3, r1
d008528a:	d907      	bls.n	d008529c <__udivmoddi4+0x1c4>
d008528c:	1879      	adds	r1, r7, r1
d008528e:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d0085292:	d273      	bcs.n	d008537c <__udivmoddi4+0x2a4>
d0085294:	428b      	cmp	r3, r1
d0085296:	d971      	bls.n	d008537c <__udivmoddi4+0x2a4>
d0085298:	3802      	subs	r0, #2
d008529a:	4439      	add	r1, r7
d008529c:	1acb      	subs	r3, r1, r3
d008529e:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00852a2:	e778      	b.n	d0085196 <__udivmoddi4+0xbe>
d00852a4:	f1c6 0c20 	rsb	ip, r6, #32
d00852a8:	fa03 f406 	lsl.w	r4, r3, r6
d00852ac:	fa22 f30c 	lsr.w	r3, r2, ip
d00852b0:	431c      	orrs	r4, r3
d00852b2:	fa20 f70c 	lsr.w	r7, r0, ip
d00852b6:	fa01 f306 	lsl.w	r3, r1, r6
d00852ba:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d00852be:	fa21 f10c 	lsr.w	r1, r1, ip
d00852c2:	431f      	orrs	r7, r3
d00852c4:	0c3b      	lsrs	r3, r7, #16
d00852c6:	fbb1 f9fe 	udiv	r9, r1, lr
d00852ca:	fa1f f884 	uxth.w	r8, r4
d00852ce:	fb0e 1119 	mls	r1, lr, r9, r1
d00852d2:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d00852d6:	fb09 fa08 	mul.w	sl, r9, r8
d00852da:	458a      	cmp	sl, r1
d00852dc:	fa02 f206 	lsl.w	r2, r2, r6
d00852e0:	fa00 f306 	lsl.w	r3, r0, r6
d00852e4:	d908      	bls.n	d00852f8 <__udivmoddi4+0x220>
d00852e6:	1861      	adds	r1, r4, r1
d00852e8:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d00852ec:	d248      	bcs.n	d0085380 <__udivmoddi4+0x2a8>
d00852ee:	458a      	cmp	sl, r1
d00852f0:	d946      	bls.n	d0085380 <__udivmoddi4+0x2a8>
d00852f2:	f1a9 0902 	sub.w	r9, r9, #2
d00852f6:	4421      	add	r1, r4
d00852f8:	eba1 010a 	sub.w	r1, r1, sl
d00852fc:	b2bf      	uxth	r7, r7
d00852fe:	fbb1 f0fe 	udiv	r0, r1, lr
d0085302:	fb0e 1110 	mls	r1, lr, r0, r1
d0085306:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d008530a:	fb00 f808 	mul.w	r8, r0, r8
d008530e:	45b8      	cmp	r8, r7
d0085310:	d907      	bls.n	d0085322 <__udivmoddi4+0x24a>
d0085312:	19e7      	adds	r7, r4, r7
d0085314:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d0085318:	d22e      	bcs.n	d0085378 <__udivmoddi4+0x2a0>
d008531a:	45b8      	cmp	r8, r7
d008531c:	d92c      	bls.n	d0085378 <__udivmoddi4+0x2a0>
d008531e:	3802      	subs	r0, #2
d0085320:	4427      	add	r7, r4
d0085322:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d0085326:	eba7 0708 	sub.w	r7, r7, r8
d008532a:	fba0 8902 	umull	r8, r9, r0, r2
d008532e:	454f      	cmp	r7, r9
d0085330:	46c6      	mov	lr, r8
d0085332:	4649      	mov	r1, r9
d0085334:	d31a      	bcc.n	d008536c <__udivmoddi4+0x294>
d0085336:	d017      	beq.n	d0085368 <__udivmoddi4+0x290>
d0085338:	b15d      	cbz	r5, d0085352 <__udivmoddi4+0x27a>
d008533a:	ebb3 020e 	subs.w	r2, r3, lr
d008533e:	eb67 0701 	sbc.w	r7, r7, r1
d0085342:	fa07 fc0c 	lsl.w	ip, r7, ip
d0085346:	40f2      	lsrs	r2, r6
d0085348:	ea4c 0202 	orr.w	r2, ip, r2
d008534c:	40f7      	lsrs	r7, r6
d008534e:	e9c5 2700 	strd	r2, r7, [r5]
d0085352:	2600      	movs	r6, #0
d0085354:	4631      	mov	r1, r6
d0085356:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d008535a:	462e      	mov	r6, r5
d008535c:	4628      	mov	r0, r5
d008535e:	e70b      	b.n	d0085178 <__udivmoddi4+0xa0>
d0085360:	4606      	mov	r6, r0
d0085362:	e6e9      	b.n	d0085138 <__udivmoddi4+0x60>
d0085364:	4618      	mov	r0, r3
d0085366:	e6fd      	b.n	d0085164 <__udivmoddi4+0x8c>
d0085368:	4543      	cmp	r3, r8
d008536a:	d2e5      	bcs.n	d0085338 <__udivmoddi4+0x260>
d008536c:	ebb8 0e02 	subs.w	lr, r8, r2
d0085370:	eb69 0104 	sbc.w	r1, r9, r4
d0085374:	3801      	subs	r0, #1
d0085376:	e7df      	b.n	d0085338 <__udivmoddi4+0x260>
d0085378:	4608      	mov	r0, r1
d008537a:	e7d2      	b.n	d0085322 <__udivmoddi4+0x24a>
d008537c:	4660      	mov	r0, ip
d008537e:	e78d      	b.n	d008529c <__udivmoddi4+0x1c4>
d0085380:	4681      	mov	r9, r0
d0085382:	e7b9      	b.n	d00852f8 <__udivmoddi4+0x220>
d0085384:	4666      	mov	r6, ip
d0085386:	e775      	b.n	d0085274 <__udivmoddi4+0x19c>
d0085388:	4630      	mov	r0, r6
d008538a:	e74a      	b.n	d0085222 <__udivmoddi4+0x14a>
d008538c:	f1ac 0c02 	sub.w	ip, ip, #2
d0085390:	4439      	add	r1, r7
d0085392:	e713      	b.n	d00851bc <__udivmoddi4+0xe4>
d0085394:	3802      	subs	r0, #2
d0085396:	443c      	add	r4, r7
d0085398:	e724      	b.n	d00851e4 <__udivmoddi4+0x10c>
d008539a:	bf00      	nop

d008539c <__aeabi_idiv0>:
d008539c:	4770      	bx	lr
d008539e:	bf00      	nop

d00853a0 <__errno>:
d00853a0:	4b01      	ldr	r3, [pc, #4]	; (d00853a8 <__errno+0x8>)
d00853a2:	6818      	ldr	r0, [r3, #0]
d00853a4:	4770      	bx	lr
d00853a6:	bf00      	nop
d00853a8:	d0086134 	.word	0xd0086134

d00853ac <malloc>:
d00853ac:	4b02      	ldr	r3, [pc, #8]	; (d00853b8 <malloc+0xc>)
d00853ae:	4601      	mov	r1, r0
d00853b0:	6818      	ldr	r0, [r3, #0]
d00853b2:	f000 b869 	b.w	d0085488 <_malloc_r>
d00853b6:	bf00      	nop
d00853b8:	d0086134 	.word	0xd0086134

d00853bc <memcpy>:
d00853bc:	440a      	add	r2, r1
d00853be:	4291      	cmp	r1, r2
d00853c0:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00853c4:	d100      	bne.n	d00853c8 <memcpy+0xc>
d00853c6:	4770      	bx	lr
d00853c8:	b510      	push	{r4, lr}
d00853ca:	f811 4b01 	ldrb.w	r4, [r1], #1
d00853ce:	f803 4f01 	strb.w	r4, [r3, #1]!
d00853d2:	4291      	cmp	r1, r2
d00853d4:	d1f9      	bne.n	d00853ca <memcpy+0xe>
d00853d6:	bd10      	pop	{r4, pc}

d00853d8 <memset>:
d00853d8:	4402      	add	r2, r0
d00853da:	4603      	mov	r3, r0
d00853dc:	4293      	cmp	r3, r2
d00853de:	d100      	bne.n	d00853e2 <memset+0xa>
d00853e0:	4770      	bx	lr
d00853e2:	f803 1b01 	strb.w	r1, [r3], #1
d00853e6:	e7f9      	b.n	d00853dc <memset+0x4>

d00853e8 <_free_r>:
d00853e8:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00853ea:	2900      	cmp	r1, #0
d00853ec:	d048      	beq.n	d0085480 <_free_r+0x98>
d00853ee:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00853f2:	9001      	str	r0, [sp, #4]
d00853f4:	2b00      	cmp	r3, #0
d00853f6:	f1a1 0404 	sub.w	r4, r1, #4
d00853fa:	bfb8      	it	lt
d00853fc:	18e4      	addlt	r4, r4, r3
d00853fe:	f000 fb61 	bl	d0085ac4 <__malloc_lock>
d0085402:	4a20      	ldr	r2, [pc, #128]	; (d0085484 <_free_r+0x9c>)
d0085404:	9801      	ldr	r0, [sp, #4]
d0085406:	6813      	ldr	r3, [r2, #0]
d0085408:	4615      	mov	r5, r2
d008540a:	b933      	cbnz	r3, d008541a <_free_r+0x32>
d008540c:	6063      	str	r3, [r4, #4]
d008540e:	6014      	str	r4, [r2, #0]
d0085410:	b003      	add	sp, #12
d0085412:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0085416:	f000 bb5b 	b.w	d0085ad0 <__malloc_unlock>
d008541a:	42a3      	cmp	r3, r4
d008541c:	d90b      	bls.n	d0085436 <_free_r+0x4e>
d008541e:	6821      	ldr	r1, [r4, #0]
d0085420:	1862      	adds	r2, r4, r1
d0085422:	4293      	cmp	r3, r2
d0085424:	bf04      	itt	eq
d0085426:	681a      	ldreq	r2, [r3, #0]
d0085428:	685b      	ldreq	r3, [r3, #4]
d008542a:	6063      	str	r3, [r4, #4]
d008542c:	bf04      	itt	eq
d008542e:	1852      	addeq	r2, r2, r1
d0085430:	6022      	streq	r2, [r4, #0]
d0085432:	602c      	str	r4, [r5, #0]
d0085434:	e7ec      	b.n	d0085410 <_free_r+0x28>
d0085436:	461a      	mov	r2, r3
d0085438:	685b      	ldr	r3, [r3, #4]
d008543a:	b10b      	cbz	r3, d0085440 <_free_r+0x58>
d008543c:	42a3      	cmp	r3, r4
d008543e:	d9fa      	bls.n	d0085436 <_free_r+0x4e>
d0085440:	6811      	ldr	r1, [r2, #0]
d0085442:	1855      	adds	r5, r2, r1
d0085444:	42a5      	cmp	r5, r4
d0085446:	d10b      	bne.n	d0085460 <_free_r+0x78>
d0085448:	6824      	ldr	r4, [r4, #0]
d008544a:	4421      	add	r1, r4
d008544c:	1854      	adds	r4, r2, r1
d008544e:	42a3      	cmp	r3, r4
d0085450:	6011      	str	r1, [r2, #0]
d0085452:	d1dd      	bne.n	d0085410 <_free_r+0x28>
d0085454:	681c      	ldr	r4, [r3, #0]
d0085456:	685b      	ldr	r3, [r3, #4]
d0085458:	6053      	str	r3, [r2, #4]
d008545a:	4421      	add	r1, r4
d008545c:	6011      	str	r1, [r2, #0]
d008545e:	e7d7      	b.n	d0085410 <_free_r+0x28>
d0085460:	d902      	bls.n	d0085468 <_free_r+0x80>
d0085462:	230c      	movs	r3, #12
d0085464:	6003      	str	r3, [r0, #0]
d0085466:	e7d3      	b.n	d0085410 <_free_r+0x28>
d0085468:	6825      	ldr	r5, [r4, #0]
d008546a:	1961      	adds	r1, r4, r5
d008546c:	428b      	cmp	r3, r1
d008546e:	bf04      	itt	eq
d0085470:	6819      	ldreq	r1, [r3, #0]
d0085472:	685b      	ldreq	r3, [r3, #4]
d0085474:	6063      	str	r3, [r4, #4]
d0085476:	bf04      	itt	eq
d0085478:	1949      	addeq	r1, r1, r5
d008547a:	6021      	streq	r1, [r4, #0]
d008547c:	6054      	str	r4, [r2, #4]
d008547e:	e7c7      	b.n	d0085410 <_free_r+0x28>
d0085480:	b003      	add	sp, #12
d0085482:	bd30      	pop	{r4, r5, pc}
d0085484:	d00c8c60 	.word	0xd00c8c60

d0085488 <_malloc_r>:
d0085488:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008548a:	1ccd      	adds	r5, r1, #3
d008548c:	f025 0503 	bic.w	r5, r5, #3
d0085490:	3508      	adds	r5, #8
d0085492:	2d0c      	cmp	r5, #12
d0085494:	bf38      	it	cc
d0085496:	250c      	movcc	r5, #12
d0085498:	2d00      	cmp	r5, #0
d008549a:	4606      	mov	r6, r0
d008549c:	db01      	blt.n	d00854a2 <_malloc_r+0x1a>
d008549e:	42a9      	cmp	r1, r5
d00854a0:	d903      	bls.n	d00854aa <_malloc_r+0x22>
d00854a2:	230c      	movs	r3, #12
d00854a4:	6033      	str	r3, [r6, #0]
d00854a6:	2000      	movs	r0, #0
d00854a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00854aa:	f000 fb0b 	bl	d0085ac4 <__malloc_lock>
d00854ae:	4921      	ldr	r1, [pc, #132]	; (d0085534 <_malloc_r+0xac>)
d00854b0:	680a      	ldr	r2, [r1, #0]
d00854b2:	4614      	mov	r4, r2
d00854b4:	b99c      	cbnz	r4, d00854de <_malloc_r+0x56>
d00854b6:	4f20      	ldr	r7, [pc, #128]	; (d0085538 <_malloc_r+0xb0>)
d00854b8:	683b      	ldr	r3, [r7, #0]
d00854ba:	b923      	cbnz	r3, d00854c6 <_malloc_r+0x3e>
d00854bc:	4621      	mov	r1, r4
d00854be:	4630      	mov	r0, r6
d00854c0:	f7fa fe0e 	bl	d00800e0 <_sbrk_r>
d00854c4:	6038      	str	r0, [r7, #0]
d00854c6:	4629      	mov	r1, r5
d00854c8:	4630      	mov	r0, r6
d00854ca:	f7fa fe09 	bl	d00800e0 <_sbrk_r>
d00854ce:	1c43      	adds	r3, r0, #1
d00854d0:	d123      	bne.n	d008551a <_malloc_r+0x92>
d00854d2:	230c      	movs	r3, #12
d00854d4:	6033      	str	r3, [r6, #0]
d00854d6:	4630      	mov	r0, r6
d00854d8:	f000 fafa 	bl	d0085ad0 <__malloc_unlock>
d00854dc:	e7e3      	b.n	d00854a6 <_malloc_r+0x1e>
d00854de:	6823      	ldr	r3, [r4, #0]
d00854e0:	1b5b      	subs	r3, r3, r5
d00854e2:	d417      	bmi.n	d0085514 <_malloc_r+0x8c>
d00854e4:	2b0b      	cmp	r3, #11
d00854e6:	d903      	bls.n	d00854f0 <_malloc_r+0x68>
d00854e8:	6023      	str	r3, [r4, #0]
d00854ea:	441c      	add	r4, r3
d00854ec:	6025      	str	r5, [r4, #0]
d00854ee:	e004      	b.n	d00854fa <_malloc_r+0x72>
d00854f0:	6863      	ldr	r3, [r4, #4]
d00854f2:	42a2      	cmp	r2, r4
d00854f4:	bf0c      	ite	eq
d00854f6:	600b      	streq	r3, [r1, #0]
d00854f8:	6053      	strne	r3, [r2, #4]
d00854fa:	4630      	mov	r0, r6
d00854fc:	f000 fae8 	bl	d0085ad0 <__malloc_unlock>
d0085500:	f104 000b 	add.w	r0, r4, #11
d0085504:	1d23      	adds	r3, r4, #4
d0085506:	f020 0007 	bic.w	r0, r0, #7
d008550a:	1ac2      	subs	r2, r0, r3
d008550c:	d0cc      	beq.n	d00854a8 <_malloc_r+0x20>
d008550e:	1a1b      	subs	r3, r3, r0
d0085510:	50a3      	str	r3, [r4, r2]
d0085512:	e7c9      	b.n	d00854a8 <_malloc_r+0x20>
d0085514:	4622      	mov	r2, r4
d0085516:	6864      	ldr	r4, [r4, #4]
d0085518:	e7cc      	b.n	d00854b4 <_malloc_r+0x2c>
d008551a:	1cc4      	adds	r4, r0, #3
d008551c:	f024 0403 	bic.w	r4, r4, #3
d0085520:	42a0      	cmp	r0, r4
d0085522:	d0e3      	beq.n	d00854ec <_malloc_r+0x64>
d0085524:	1a21      	subs	r1, r4, r0
d0085526:	4630      	mov	r0, r6
d0085528:	f7fa fdda 	bl	d00800e0 <_sbrk_r>
d008552c:	3001      	adds	r0, #1
d008552e:	d1dd      	bne.n	d00854ec <_malloc_r+0x64>
d0085530:	e7cf      	b.n	d00854d2 <_malloc_r+0x4a>
d0085532:	bf00      	nop
d0085534:	d00c8c60 	.word	0xd00c8c60
d0085538:	d00c8c64 	.word	0xd00c8c64

d008553c <setbuf>:
d008553c:	2900      	cmp	r1, #0
d008553e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0085542:	bf0c      	ite	eq
d0085544:	2202      	moveq	r2, #2
d0085546:	2200      	movne	r2, #0
d0085548:	f000 b800 	b.w	d008554c <setvbuf>

d008554c <setvbuf>:
d008554c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0085550:	461d      	mov	r5, r3
d0085552:	4b5d      	ldr	r3, [pc, #372]	; (d00856c8 <setvbuf+0x17c>)
d0085554:	681f      	ldr	r7, [r3, #0]
d0085556:	4604      	mov	r4, r0
d0085558:	460e      	mov	r6, r1
d008555a:	4690      	mov	r8, r2
d008555c:	b127      	cbz	r7, d0085568 <setvbuf+0x1c>
d008555e:	69bb      	ldr	r3, [r7, #24]
d0085560:	b913      	cbnz	r3, d0085568 <setvbuf+0x1c>
d0085562:	4638      	mov	r0, r7
d0085564:	f000 f9ea 	bl	d008593c <__sinit>
d0085568:	4b58      	ldr	r3, [pc, #352]	; (d00856cc <setvbuf+0x180>)
d008556a:	429c      	cmp	r4, r3
d008556c:	d167      	bne.n	d008563e <setvbuf+0xf2>
d008556e:	687c      	ldr	r4, [r7, #4]
d0085570:	f1b8 0f02 	cmp.w	r8, #2
d0085574:	d006      	beq.n	d0085584 <setvbuf+0x38>
d0085576:	f1b8 0f01 	cmp.w	r8, #1
d008557a:	f200 809f 	bhi.w	d00856bc <setvbuf+0x170>
d008557e:	2d00      	cmp	r5, #0
d0085580:	f2c0 809c 	blt.w	d00856bc <setvbuf+0x170>
d0085584:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0085586:	07db      	lsls	r3, r3, #31
d0085588:	d405      	bmi.n	d0085596 <setvbuf+0x4a>
d008558a:	89a3      	ldrh	r3, [r4, #12]
d008558c:	0598      	lsls	r0, r3, #22
d008558e:	d402      	bmi.n	d0085596 <setvbuf+0x4a>
d0085590:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0085592:	f000 fa71 	bl	d0085a78 <__retarget_lock_acquire_recursive>
d0085596:	4621      	mov	r1, r4
d0085598:	4638      	mov	r0, r7
d008559a:	f000 f93b 	bl	d0085814 <_fflush_r>
d008559e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00855a0:	b141      	cbz	r1, d00855b4 <setvbuf+0x68>
d00855a2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00855a6:	4299      	cmp	r1, r3
d00855a8:	d002      	beq.n	d00855b0 <setvbuf+0x64>
d00855aa:	4638      	mov	r0, r7
d00855ac:	f7ff ff1c 	bl	d00853e8 <_free_r>
d00855b0:	2300      	movs	r3, #0
d00855b2:	6363      	str	r3, [r4, #52]	; 0x34
d00855b4:	2300      	movs	r3, #0
d00855b6:	61a3      	str	r3, [r4, #24]
d00855b8:	6063      	str	r3, [r4, #4]
d00855ba:	89a3      	ldrh	r3, [r4, #12]
d00855bc:	0619      	lsls	r1, r3, #24
d00855be:	d503      	bpl.n	d00855c8 <setvbuf+0x7c>
d00855c0:	6921      	ldr	r1, [r4, #16]
d00855c2:	4638      	mov	r0, r7
d00855c4:	f7ff ff10 	bl	d00853e8 <_free_r>
d00855c8:	89a3      	ldrh	r3, [r4, #12]
d00855ca:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00855ce:	f023 0303 	bic.w	r3, r3, #3
d00855d2:	f1b8 0f02 	cmp.w	r8, #2
d00855d6:	81a3      	strh	r3, [r4, #12]
d00855d8:	d06c      	beq.n	d00856b4 <setvbuf+0x168>
d00855da:	ab01      	add	r3, sp, #4
d00855dc:	466a      	mov	r2, sp
d00855de:	4621      	mov	r1, r4
d00855e0:	4638      	mov	r0, r7
d00855e2:	f000 fa4b 	bl	d0085a7c <__swhatbuf_r>
d00855e6:	89a3      	ldrh	r3, [r4, #12]
d00855e8:	4318      	orrs	r0, r3
d00855ea:	81a0      	strh	r0, [r4, #12]
d00855ec:	2d00      	cmp	r5, #0
d00855ee:	d130      	bne.n	d0085652 <setvbuf+0x106>
d00855f0:	9d00      	ldr	r5, [sp, #0]
d00855f2:	4628      	mov	r0, r5
d00855f4:	f7ff feda 	bl	d00853ac <malloc>
d00855f8:	4606      	mov	r6, r0
d00855fa:	2800      	cmp	r0, #0
d00855fc:	d155      	bne.n	d00856aa <setvbuf+0x15e>
d00855fe:	f8dd 9000 	ldr.w	r9, [sp]
d0085602:	45a9      	cmp	r9, r5
d0085604:	d14a      	bne.n	d008569c <setvbuf+0x150>
d0085606:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008560a:	2200      	movs	r2, #0
d008560c:	60a2      	str	r2, [r4, #8]
d008560e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0085612:	6022      	str	r2, [r4, #0]
d0085614:	6122      	str	r2, [r4, #16]
d0085616:	2201      	movs	r2, #1
d0085618:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008561c:	6162      	str	r2, [r4, #20]
d008561e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0085620:	f043 0302 	orr.w	r3, r3, #2
d0085624:	07d2      	lsls	r2, r2, #31
d0085626:	81a3      	strh	r3, [r4, #12]
d0085628:	d405      	bmi.n	d0085636 <setvbuf+0xea>
d008562a:	f413 7f00 	tst.w	r3, #512	; 0x200
d008562e:	d102      	bne.n	d0085636 <setvbuf+0xea>
d0085630:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0085632:	f000 fa22 	bl	d0085a7a <__retarget_lock_release_recursive>
d0085636:	4628      	mov	r0, r5
d0085638:	b003      	add	sp, #12
d008563a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d008563e:	4b24      	ldr	r3, [pc, #144]	; (d00856d0 <setvbuf+0x184>)
d0085640:	429c      	cmp	r4, r3
d0085642:	d101      	bne.n	d0085648 <setvbuf+0xfc>
d0085644:	68bc      	ldr	r4, [r7, #8]
d0085646:	e793      	b.n	d0085570 <setvbuf+0x24>
d0085648:	4b22      	ldr	r3, [pc, #136]	; (d00856d4 <setvbuf+0x188>)
d008564a:	429c      	cmp	r4, r3
d008564c:	bf08      	it	eq
d008564e:	68fc      	ldreq	r4, [r7, #12]
d0085650:	e78e      	b.n	d0085570 <setvbuf+0x24>
d0085652:	2e00      	cmp	r6, #0
d0085654:	d0cd      	beq.n	d00855f2 <setvbuf+0xa6>
d0085656:	69bb      	ldr	r3, [r7, #24]
d0085658:	b913      	cbnz	r3, d0085660 <setvbuf+0x114>
d008565a:	4638      	mov	r0, r7
d008565c:	f000 f96e 	bl	d008593c <__sinit>
d0085660:	f1b8 0f01 	cmp.w	r8, #1
d0085664:	bf08      	it	eq
d0085666:	89a3      	ldrheq	r3, [r4, #12]
d0085668:	6026      	str	r6, [r4, #0]
d008566a:	bf04      	itt	eq
d008566c:	f043 0301 	orreq.w	r3, r3, #1
d0085670:	81a3      	strheq	r3, [r4, #12]
d0085672:	89a2      	ldrh	r2, [r4, #12]
d0085674:	f012 0308 	ands.w	r3, r2, #8
d0085678:	e9c4 6504 	strd	r6, r5, [r4, #16]
d008567c:	d01c      	beq.n	d00856b8 <setvbuf+0x16c>
d008567e:	07d3      	lsls	r3, r2, #31
d0085680:	bf41      	itttt	mi
d0085682:	2300      	movmi	r3, #0
d0085684:	426d      	negmi	r5, r5
d0085686:	60a3      	strmi	r3, [r4, #8]
d0085688:	61a5      	strmi	r5, [r4, #24]
d008568a:	bf58      	it	pl
d008568c:	60a5      	strpl	r5, [r4, #8]
d008568e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0085690:	f015 0501 	ands.w	r5, r5, #1
d0085694:	d115      	bne.n	d00856c2 <setvbuf+0x176>
d0085696:	f412 7f00 	tst.w	r2, #512	; 0x200
d008569a:	e7c8      	b.n	d008562e <setvbuf+0xe2>
d008569c:	4648      	mov	r0, r9
d008569e:	f7ff fe85 	bl	d00853ac <malloc>
d00856a2:	4606      	mov	r6, r0
d00856a4:	2800      	cmp	r0, #0
d00856a6:	d0ae      	beq.n	d0085606 <setvbuf+0xba>
d00856a8:	464d      	mov	r5, r9
d00856aa:	89a3      	ldrh	r3, [r4, #12]
d00856ac:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00856b0:	81a3      	strh	r3, [r4, #12]
d00856b2:	e7d0      	b.n	d0085656 <setvbuf+0x10a>
d00856b4:	2500      	movs	r5, #0
d00856b6:	e7a8      	b.n	d008560a <setvbuf+0xbe>
d00856b8:	60a3      	str	r3, [r4, #8]
d00856ba:	e7e8      	b.n	d008568e <setvbuf+0x142>
d00856bc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00856c0:	e7b9      	b.n	d0085636 <setvbuf+0xea>
d00856c2:	2500      	movs	r5, #0
d00856c4:	e7b7      	b.n	d0085636 <setvbuf+0xea>
d00856c6:	bf00      	nop
d00856c8:	d0086134 	.word	0xd0086134
d00856cc:	d00860e0 	.word	0xd00860e0
d00856d0:	d0086100 	.word	0xd0086100
d00856d4:	d00860c0 	.word	0xd00860c0

d00856d8 <strcat>:
d00856d8:	b510      	push	{r4, lr}
d00856da:	4602      	mov	r2, r0
d00856dc:	7814      	ldrb	r4, [r2, #0]
d00856de:	4613      	mov	r3, r2
d00856e0:	3201      	adds	r2, #1
d00856e2:	2c00      	cmp	r4, #0
d00856e4:	d1fa      	bne.n	d00856dc <strcat+0x4>
d00856e6:	3b01      	subs	r3, #1
d00856e8:	f811 2b01 	ldrb.w	r2, [r1], #1
d00856ec:	f803 2f01 	strb.w	r2, [r3, #1]!
d00856f0:	2a00      	cmp	r2, #0
d00856f2:	d1f9      	bne.n	d00856e8 <strcat+0x10>
d00856f4:	bd10      	pop	{r4, pc}

d00856f6 <strlen>:
d00856f6:	4603      	mov	r3, r0
d00856f8:	f813 2b01 	ldrb.w	r2, [r3], #1
d00856fc:	2a00      	cmp	r2, #0
d00856fe:	d1fb      	bne.n	d00856f8 <strlen+0x2>
d0085700:	1a18      	subs	r0, r3, r0
d0085702:	3801      	subs	r0, #1
d0085704:	4770      	bx	lr
	...

d0085708 <__sflush_r>:
d0085708:	898a      	ldrh	r2, [r1, #12]
d008570a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d008570e:	4605      	mov	r5, r0
d0085710:	0710      	lsls	r0, r2, #28
d0085712:	460c      	mov	r4, r1
d0085714:	d458      	bmi.n	d00857c8 <__sflush_r+0xc0>
d0085716:	684b      	ldr	r3, [r1, #4]
d0085718:	2b00      	cmp	r3, #0
d008571a:	dc05      	bgt.n	d0085728 <__sflush_r+0x20>
d008571c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d008571e:	2b00      	cmp	r3, #0
d0085720:	dc02      	bgt.n	d0085728 <__sflush_r+0x20>
d0085722:	2000      	movs	r0, #0
d0085724:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0085728:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d008572a:	2e00      	cmp	r6, #0
d008572c:	d0f9      	beq.n	d0085722 <__sflush_r+0x1a>
d008572e:	2300      	movs	r3, #0
d0085730:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0085734:	682f      	ldr	r7, [r5, #0]
d0085736:	602b      	str	r3, [r5, #0]
d0085738:	d032      	beq.n	d00857a0 <__sflush_r+0x98>
d008573a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d008573c:	89a3      	ldrh	r3, [r4, #12]
d008573e:	075a      	lsls	r2, r3, #29
d0085740:	d505      	bpl.n	d008574e <__sflush_r+0x46>
d0085742:	6863      	ldr	r3, [r4, #4]
d0085744:	1ac0      	subs	r0, r0, r3
d0085746:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0085748:	b10b      	cbz	r3, d008574e <__sflush_r+0x46>
d008574a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d008574c:	1ac0      	subs	r0, r0, r3
d008574e:	2300      	movs	r3, #0
d0085750:	4602      	mov	r2, r0
d0085752:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0085754:	6a21      	ldr	r1, [r4, #32]
d0085756:	4628      	mov	r0, r5
d0085758:	47b0      	blx	r6
d008575a:	1c43      	adds	r3, r0, #1
d008575c:	89a3      	ldrh	r3, [r4, #12]
d008575e:	d106      	bne.n	d008576e <__sflush_r+0x66>
d0085760:	6829      	ldr	r1, [r5, #0]
d0085762:	291d      	cmp	r1, #29
d0085764:	d82c      	bhi.n	d00857c0 <__sflush_r+0xb8>
d0085766:	4a2a      	ldr	r2, [pc, #168]	; (d0085810 <__sflush_r+0x108>)
d0085768:	40ca      	lsrs	r2, r1
d008576a:	07d6      	lsls	r6, r2, #31
d008576c:	d528      	bpl.n	d00857c0 <__sflush_r+0xb8>
d008576e:	2200      	movs	r2, #0
d0085770:	6062      	str	r2, [r4, #4]
d0085772:	04d9      	lsls	r1, r3, #19
d0085774:	6922      	ldr	r2, [r4, #16]
d0085776:	6022      	str	r2, [r4, #0]
d0085778:	d504      	bpl.n	d0085784 <__sflush_r+0x7c>
d008577a:	1c42      	adds	r2, r0, #1
d008577c:	d101      	bne.n	d0085782 <__sflush_r+0x7a>
d008577e:	682b      	ldr	r3, [r5, #0]
d0085780:	b903      	cbnz	r3, d0085784 <__sflush_r+0x7c>
d0085782:	6560      	str	r0, [r4, #84]	; 0x54
d0085784:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0085786:	602f      	str	r7, [r5, #0]
d0085788:	2900      	cmp	r1, #0
d008578a:	d0ca      	beq.n	d0085722 <__sflush_r+0x1a>
d008578c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0085790:	4299      	cmp	r1, r3
d0085792:	d002      	beq.n	d008579a <__sflush_r+0x92>
d0085794:	4628      	mov	r0, r5
d0085796:	f7ff fe27 	bl	d00853e8 <_free_r>
d008579a:	2000      	movs	r0, #0
d008579c:	6360      	str	r0, [r4, #52]	; 0x34
d008579e:	e7c1      	b.n	d0085724 <__sflush_r+0x1c>
d00857a0:	6a21      	ldr	r1, [r4, #32]
d00857a2:	2301      	movs	r3, #1
d00857a4:	4628      	mov	r0, r5
d00857a6:	47b0      	blx	r6
d00857a8:	1c41      	adds	r1, r0, #1
d00857aa:	d1c7      	bne.n	d008573c <__sflush_r+0x34>
d00857ac:	682b      	ldr	r3, [r5, #0]
d00857ae:	2b00      	cmp	r3, #0
d00857b0:	d0c4      	beq.n	d008573c <__sflush_r+0x34>
d00857b2:	2b1d      	cmp	r3, #29
d00857b4:	d001      	beq.n	d00857ba <__sflush_r+0xb2>
d00857b6:	2b16      	cmp	r3, #22
d00857b8:	d101      	bne.n	d00857be <__sflush_r+0xb6>
d00857ba:	602f      	str	r7, [r5, #0]
d00857bc:	e7b1      	b.n	d0085722 <__sflush_r+0x1a>
d00857be:	89a3      	ldrh	r3, [r4, #12]
d00857c0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00857c4:	81a3      	strh	r3, [r4, #12]
d00857c6:	e7ad      	b.n	d0085724 <__sflush_r+0x1c>
d00857c8:	690f      	ldr	r7, [r1, #16]
d00857ca:	2f00      	cmp	r7, #0
d00857cc:	d0a9      	beq.n	d0085722 <__sflush_r+0x1a>
d00857ce:	0793      	lsls	r3, r2, #30
d00857d0:	680e      	ldr	r6, [r1, #0]
d00857d2:	bf08      	it	eq
d00857d4:	694b      	ldreq	r3, [r1, #20]
d00857d6:	600f      	str	r7, [r1, #0]
d00857d8:	bf18      	it	ne
d00857da:	2300      	movne	r3, #0
d00857dc:	eba6 0807 	sub.w	r8, r6, r7
d00857e0:	608b      	str	r3, [r1, #8]
d00857e2:	f1b8 0f00 	cmp.w	r8, #0
d00857e6:	dd9c      	ble.n	d0085722 <__sflush_r+0x1a>
d00857e8:	6a21      	ldr	r1, [r4, #32]
d00857ea:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00857ec:	4643      	mov	r3, r8
d00857ee:	463a      	mov	r2, r7
d00857f0:	4628      	mov	r0, r5
d00857f2:	47b0      	blx	r6
d00857f4:	2800      	cmp	r0, #0
d00857f6:	dc06      	bgt.n	d0085806 <__sflush_r+0xfe>
d00857f8:	89a3      	ldrh	r3, [r4, #12]
d00857fa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00857fe:	81a3      	strh	r3, [r4, #12]
d0085800:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0085804:	e78e      	b.n	d0085724 <__sflush_r+0x1c>
d0085806:	4407      	add	r7, r0
d0085808:	eba8 0800 	sub.w	r8, r8, r0
d008580c:	e7e9      	b.n	d00857e2 <__sflush_r+0xda>
d008580e:	bf00      	nop
d0085810:	20400001 	.word	0x20400001

d0085814 <_fflush_r>:
d0085814:	b538      	push	{r3, r4, r5, lr}
d0085816:	690b      	ldr	r3, [r1, #16]
d0085818:	4605      	mov	r5, r0
d008581a:	460c      	mov	r4, r1
d008581c:	b913      	cbnz	r3, d0085824 <_fflush_r+0x10>
d008581e:	2500      	movs	r5, #0
d0085820:	4628      	mov	r0, r5
d0085822:	bd38      	pop	{r3, r4, r5, pc}
d0085824:	b118      	cbz	r0, d008582e <_fflush_r+0x1a>
d0085826:	6983      	ldr	r3, [r0, #24]
d0085828:	b90b      	cbnz	r3, d008582e <_fflush_r+0x1a>
d008582a:	f000 f887 	bl	d008593c <__sinit>
d008582e:	4b14      	ldr	r3, [pc, #80]	; (d0085880 <_fflush_r+0x6c>)
d0085830:	429c      	cmp	r4, r3
d0085832:	d11b      	bne.n	d008586c <_fflush_r+0x58>
d0085834:	686c      	ldr	r4, [r5, #4]
d0085836:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008583a:	2b00      	cmp	r3, #0
d008583c:	d0ef      	beq.n	d008581e <_fflush_r+0xa>
d008583e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0085840:	07d0      	lsls	r0, r2, #31
d0085842:	d404      	bmi.n	d008584e <_fflush_r+0x3a>
d0085844:	0599      	lsls	r1, r3, #22
d0085846:	d402      	bmi.n	d008584e <_fflush_r+0x3a>
d0085848:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008584a:	f000 f915 	bl	d0085a78 <__retarget_lock_acquire_recursive>
d008584e:	4628      	mov	r0, r5
d0085850:	4621      	mov	r1, r4
d0085852:	f7ff ff59 	bl	d0085708 <__sflush_r>
d0085856:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0085858:	07da      	lsls	r2, r3, #31
d008585a:	4605      	mov	r5, r0
d008585c:	d4e0      	bmi.n	d0085820 <_fflush_r+0xc>
d008585e:	89a3      	ldrh	r3, [r4, #12]
d0085860:	059b      	lsls	r3, r3, #22
d0085862:	d4dd      	bmi.n	d0085820 <_fflush_r+0xc>
d0085864:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0085866:	f000 f908 	bl	d0085a7a <__retarget_lock_release_recursive>
d008586a:	e7d9      	b.n	d0085820 <_fflush_r+0xc>
d008586c:	4b05      	ldr	r3, [pc, #20]	; (d0085884 <_fflush_r+0x70>)
d008586e:	429c      	cmp	r4, r3
d0085870:	d101      	bne.n	d0085876 <_fflush_r+0x62>
d0085872:	68ac      	ldr	r4, [r5, #8]
d0085874:	e7df      	b.n	d0085836 <_fflush_r+0x22>
d0085876:	4b04      	ldr	r3, [pc, #16]	; (d0085888 <_fflush_r+0x74>)
d0085878:	429c      	cmp	r4, r3
d008587a:	bf08      	it	eq
d008587c:	68ec      	ldreq	r4, [r5, #12]
d008587e:	e7da      	b.n	d0085836 <_fflush_r+0x22>
d0085880:	d00860e0 	.word	0xd00860e0
d0085884:	d0086100 	.word	0xd0086100
d0085888:	d00860c0 	.word	0xd00860c0

d008588c <std>:
d008588c:	2300      	movs	r3, #0
d008588e:	b510      	push	{r4, lr}
d0085890:	4604      	mov	r4, r0
d0085892:	e9c0 3300 	strd	r3, r3, [r0]
d0085896:	e9c0 3304 	strd	r3, r3, [r0, #16]
d008589a:	6083      	str	r3, [r0, #8]
d008589c:	8181      	strh	r1, [r0, #12]
d008589e:	6643      	str	r3, [r0, #100]	; 0x64
d00858a0:	81c2      	strh	r2, [r0, #14]
d00858a2:	6183      	str	r3, [r0, #24]
d00858a4:	4619      	mov	r1, r3
d00858a6:	2208      	movs	r2, #8
d00858a8:	305c      	adds	r0, #92	; 0x5c
d00858aa:	f7ff fd95 	bl	d00853d8 <memset>
d00858ae:	4b05      	ldr	r3, [pc, #20]	; (d00858c4 <std+0x38>)
d00858b0:	6263      	str	r3, [r4, #36]	; 0x24
d00858b2:	4b05      	ldr	r3, [pc, #20]	; (d00858c8 <std+0x3c>)
d00858b4:	62a3      	str	r3, [r4, #40]	; 0x28
d00858b6:	4b05      	ldr	r3, [pc, #20]	; (d00858cc <std+0x40>)
d00858b8:	62e3      	str	r3, [r4, #44]	; 0x2c
d00858ba:	4b05      	ldr	r3, [pc, #20]	; (d00858d0 <std+0x44>)
d00858bc:	6224      	str	r4, [r4, #32]
d00858be:	6323      	str	r3, [r4, #48]	; 0x30
d00858c0:	bd10      	pop	{r4, pc}
d00858c2:	bf00      	nop
d00858c4:	d0085add 	.word	0xd0085add
d00858c8:	d0085aff 	.word	0xd0085aff
d00858cc:	d0085b37 	.word	0xd0085b37
d00858d0:	d0085b5b 	.word	0xd0085b5b

d00858d4 <_cleanup_r>:
d00858d4:	4901      	ldr	r1, [pc, #4]	; (d00858dc <_cleanup_r+0x8>)
d00858d6:	f000 b8af 	b.w	d0085a38 <_fwalk_reent>
d00858da:	bf00      	nop
d00858dc:	d0085815 	.word	0xd0085815

d00858e0 <__sfmoreglue>:
d00858e0:	b570      	push	{r4, r5, r6, lr}
d00858e2:	1e4a      	subs	r2, r1, #1
d00858e4:	2568      	movs	r5, #104	; 0x68
d00858e6:	4355      	muls	r5, r2
d00858e8:	460e      	mov	r6, r1
d00858ea:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00858ee:	f7ff fdcb 	bl	d0085488 <_malloc_r>
d00858f2:	4604      	mov	r4, r0
d00858f4:	b140      	cbz	r0, d0085908 <__sfmoreglue+0x28>
d00858f6:	2100      	movs	r1, #0
d00858f8:	e9c0 1600 	strd	r1, r6, [r0]
d00858fc:	300c      	adds	r0, #12
d00858fe:	60a0      	str	r0, [r4, #8]
d0085900:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0085904:	f7ff fd68 	bl	d00853d8 <memset>
d0085908:	4620      	mov	r0, r4
d008590a:	bd70      	pop	{r4, r5, r6, pc}

d008590c <__sfp_lock_acquire>:
d008590c:	4801      	ldr	r0, [pc, #4]	; (d0085914 <__sfp_lock_acquire+0x8>)
d008590e:	f000 b8b3 	b.w	d0085a78 <__retarget_lock_acquire_recursive>
d0085912:	bf00      	nop
d0085914:	d00c8c74 	.word	0xd00c8c74

d0085918 <__sfp_lock_release>:
d0085918:	4801      	ldr	r0, [pc, #4]	; (d0085920 <__sfp_lock_release+0x8>)
d008591a:	f000 b8ae 	b.w	d0085a7a <__retarget_lock_release_recursive>
d008591e:	bf00      	nop
d0085920:	d00c8c74 	.word	0xd00c8c74

d0085924 <__sinit_lock_acquire>:
d0085924:	4801      	ldr	r0, [pc, #4]	; (d008592c <__sinit_lock_acquire+0x8>)
d0085926:	f000 b8a7 	b.w	d0085a78 <__retarget_lock_acquire_recursive>
d008592a:	bf00      	nop
d008592c:	d00c8c6f 	.word	0xd00c8c6f

d0085930 <__sinit_lock_release>:
d0085930:	4801      	ldr	r0, [pc, #4]	; (d0085938 <__sinit_lock_release+0x8>)
d0085932:	f000 b8a2 	b.w	d0085a7a <__retarget_lock_release_recursive>
d0085936:	bf00      	nop
d0085938:	d00c8c6f 	.word	0xd00c8c6f

d008593c <__sinit>:
d008593c:	b510      	push	{r4, lr}
d008593e:	4604      	mov	r4, r0
d0085940:	f7ff fff0 	bl	d0085924 <__sinit_lock_acquire>
d0085944:	69a3      	ldr	r3, [r4, #24]
d0085946:	b11b      	cbz	r3, d0085950 <__sinit+0x14>
d0085948:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d008594c:	f7ff bff0 	b.w	d0085930 <__sinit_lock_release>
d0085950:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0085954:	6523      	str	r3, [r4, #80]	; 0x50
d0085956:	4b13      	ldr	r3, [pc, #76]	; (d00859a4 <__sinit+0x68>)
d0085958:	4a13      	ldr	r2, [pc, #76]	; (d00859a8 <__sinit+0x6c>)
d008595a:	681b      	ldr	r3, [r3, #0]
d008595c:	62a2      	str	r2, [r4, #40]	; 0x28
d008595e:	42a3      	cmp	r3, r4
d0085960:	bf04      	itt	eq
d0085962:	2301      	moveq	r3, #1
d0085964:	61a3      	streq	r3, [r4, #24]
d0085966:	4620      	mov	r0, r4
d0085968:	f000 f820 	bl	d00859ac <__sfp>
d008596c:	6060      	str	r0, [r4, #4]
d008596e:	4620      	mov	r0, r4
d0085970:	f000 f81c 	bl	d00859ac <__sfp>
d0085974:	60a0      	str	r0, [r4, #8]
d0085976:	4620      	mov	r0, r4
d0085978:	f000 f818 	bl	d00859ac <__sfp>
d008597c:	2200      	movs	r2, #0
d008597e:	60e0      	str	r0, [r4, #12]
d0085980:	2104      	movs	r1, #4
d0085982:	6860      	ldr	r0, [r4, #4]
d0085984:	f7ff ff82 	bl	d008588c <std>
d0085988:	68a0      	ldr	r0, [r4, #8]
d008598a:	2201      	movs	r2, #1
d008598c:	2109      	movs	r1, #9
d008598e:	f7ff ff7d 	bl	d008588c <std>
d0085992:	68e0      	ldr	r0, [r4, #12]
d0085994:	2202      	movs	r2, #2
d0085996:	2112      	movs	r1, #18
d0085998:	f7ff ff78 	bl	d008588c <std>
d008599c:	2301      	movs	r3, #1
d008599e:	61a3      	str	r3, [r4, #24]
d00859a0:	e7d2      	b.n	d0085948 <__sinit+0xc>
d00859a2:	bf00      	nop
d00859a4:	d00860bc 	.word	0xd00860bc
d00859a8:	d00858d5 	.word	0xd00858d5

d00859ac <__sfp>:
d00859ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00859ae:	4607      	mov	r7, r0
d00859b0:	f7ff ffac 	bl	d008590c <__sfp_lock_acquire>
d00859b4:	4b1e      	ldr	r3, [pc, #120]	; (d0085a30 <__sfp+0x84>)
d00859b6:	681e      	ldr	r6, [r3, #0]
d00859b8:	69b3      	ldr	r3, [r6, #24]
d00859ba:	b913      	cbnz	r3, d00859c2 <__sfp+0x16>
d00859bc:	4630      	mov	r0, r6
d00859be:	f7ff ffbd 	bl	d008593c <__sinit>
d00859c2:	3648      	adds	r6, #72	; 0x48
d00859c4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00859c8:	3b01      	subs	r3, #1
d00859ca:	d503      	bpl.n	d00859d4 <__sfp+0x28>
d00859cc:	6833      	ldr	r3, [r6, #0]
d00859ce:	b30b      	cbz	r3, d0085a14 <__sfp+0x68>
d00859d0:	6836      	ldr	r6, [r6, #0]
d00859d2:	e7f7      	b.n	d00859c4 <__sfp+0x18>
d00859d4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00859d8:	b9d5      	cbnz	r5, d0085a10 <__sfp+0x64>
d00859da:	4b16      	ldr	r3, [pc, #88]	; (d0085a34 <__sfp+0x88>)
d00859dc:	60e3      	str	r3, [r4, #12]
d00859de:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00859e2:	6665      	str	r5, [r4, #100]	; 0x64
d00859e4:	f000 f847 	bl	d0085a76 <__retarget_lock_init_recursive>
d00859e8:	f7ff ff96 	bl	d0085918 <__sfp_lock_release>
d00859ec:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00859f0:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00859f4:	6025      	str	r5, [r4, #0]
d00859f6:	61a5      	str	r5, [r4, #24]
d00859f8:	2208      	movs	r2, #8
d00859fa:	4629      	mov	r1, r5
d00859fc:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0085a00:	f7ff fcea 	bl	d00853d8 <memset>
d0085a04:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0085a08:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0085a0c:	4620      	mov	r0, r4
d0085a0e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0085a10:	3468      	adds	r4, #104	; 0x68
d0085a12:	e7d9      	b.n	d00859c8 <__sfp+0x1c>
d0085a14:	2104      	movs	r1, #4
d0085a16:	4638      	mov	r0, r7
d0085a18:	f7ff ff62 	bl	d00858e0 <__sfmoreglue>
d0085a1c:	4604      	mov	r4, r0
d0085a1e:	6030      	str	r0, [r6, #0]
d0085a20:	2800      	cmp	r0, #0
d0085a22:	d1d5      	bne.n	d00859d0 <__sfp+0x24>
d0085a24:	f7ff ff78 	bl	d0085918 <__sfp_lock_release>
d0085a28:	230c      	movs	r3, #12
d0085a2a:	603b      	str	r3, [r7, #0]
d0085a2c:	e7ee      	b.n	d0085a0c <__sfp+0x60>
d0085a2e:	bf00      	nop
d0085a30:	d00860bc 	.word	0xd00860bc
d0085a34:	ffff0001 	.word	0xffff0001

d0085a38 <_fwalk_reent>:
d0085a38:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0085a3c:	4606      	mov	r6, r0
d0085a3e:	4688      	mov	r8, r1
d0085a40:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0085a44:	2700      	movs	r7, #0
d0085a46:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0085a4a:	f1b9 0901 	subs.w	r9, r9, #1
d0085a4e:	d505      	bpl.n	d0085a5c <_fwalk_reent+0x24>
d0085a50:	6824      	ldr	r4, [r4, #0]
d0085a52:	2c00      	cmp	r4, #0
d0085a54:	d1f7      	bne.n	d0085a46 <_fwalk_reent+0xe>
d0085a56:	4638      	mov	r0, r7
d0085a58:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0085a5c:	89ab      	ldrh	r3, [r5, #12]
d0085a5e:	2b01      	cmp	r3, #1
d0085a60:	d907      	bls.n	d0085a72 <_fwalk_reent+0x3a>
d0085a62:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0085a66:	3301      	adds	r3, #1
d0085a68:	d003      	beq.n	d0085a72 <_fwalk_reent+0x3a>
d0085a6a:	4629      	mov	r1, r5
d0085a6c:	4630      	mov	r0, r6
d0085a6e:	47c0      	blx	r8
d0085a70:	4307      	orrs	r7, r0
d0085a72:	3568      	adds	r5, #104	; 0x68
d0085a74:	e7e9      	b.n	d0085a4a <_fwalk_reent+0x12>

d0085a76 <__retarget_lock_init_recursive>:
d0085a76:	4770      	bx	lr

d0085a78 <__retarget_lock_acquire_recursive>:
d0085a78:	4770      	bx	lr

d0085a7a <__retarget_lock_release_recursive>:
d0085a7a:	4770      	bx	lr

d0085a7c <__swhatbuf_r>:
d0085a7c:	b570      	push	{r4, r5, r6, lr}
d0085a7e:	460e      	mov	r6, r1
d0085a80:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0085a84:	2900      	cmp	r1, #0
d0085a86:	b096      	sub	sp, #88	; 0x58
d0085a88:	4614      	mov	r4, r2
d0085a8a:	461d      	mov	r5, r3
d0085a8c:	da07      	bge.n	d0085a9e <__swhatbuf_r+0x22>
d0085a8e:	2300      	movs	r3, #0
d0085a90:	602b      	str	r3, [r5, #0]
d0085a92:	89b3      	ldrh	r3, [r6, #12]
d0085a94:	061a      	lsls	r2, r3, #24
d0085a96:	d410      	bmi.n	d0085aba <__swhatbuf_r+0x3e>
d0085a98:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0085a9c:	e00e      	b.n	d0085abc <__swhatbuf_r+0x40>
d0085a9e:	466a      	mov	r2, sp
d0085aa0:	f000 f870 	bl	d0085b84 <_fstat_r>
d0085aa4:	2800      	cmp	r0, #0
d0085aa6:	dbf2      	blt.n	d0085a8e <__swhatbuf_r+0x12>
d0085aa8:	9a01      	ldr	r2, [sp, #4]
d0085aaa:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0085aae:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0085ab2:	425a      	negs	r2, r3
d0085ab4:	415a      	adcs	r2, r3
d0085ab6:	602a      	str	r2, [r5, #0]
d0085ab8:	e7ee      	b.n	d0085a98 <__swhatbuf_r+0x1c>
d0085aba:	2340      	movs	r3, #64	; 0x40
d0085abc:	2000      	movs	r0, #0
d0085abe:	6023      	str	r3, [r4, #0]
d0085ac0:	b016      	add	sp, #88	; 0x58
d0085ac2:	bd70      	pop	{r4, r5, r6, pc}

d0085ac4 <__malloc_lock>:
d0085ac4:	4801      	ldr	r0, [pc, #4]	; (d0085acc <__malloc_lock+0x8>)
d0085ac6:	f7ff bfd7 	b.w	d0085a78 <__retarget_lock_acquire_recursive>
d0085aca:	bf00      	nop
d0085acc:	d00c8c70 	.word	0xd00c8c70

d0085ad0 <__malloc_unlock>:
d0085ad0:	4801      	ldr	r0, [pc, #4]	; (d0085ad8 <__malloc_unlock+0x8>)
d0085ad2:	f7ff bfd2 	b.w	d0085a7a <__retarget_lock_release_recursive>
d0085ad6:	bf00      	nop
d0085ad8:	d00c8c70 	.word	0xd00c8c70

d0085adc <__sread>:
d0085adc:	b510      	push	{r4, lr}
d0085ade:	460c      	mov	r4, r1
d0085ae0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0085ae4:	f000 f872 	bl	d0085bcc <_read_r>
d0085ae8:	2800      	cmp	r0, #0
d0085aea:	bfab      	itete	ge
d0085aec:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0085aee:	89a3      	ldrhlt	r3, [r4, #12]
d0085af0:	181b      	addge	r3, r3, r0
d0085af2:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0085af6:	bfac      	ite	ge
d0085af8:	6563      	strge	r3, [r4, #84]	; 0x54
d0085afa:	81a3      	strhlt	r3, [r4, #12]
d0085afc:	bd10      	pop	{r4, pc}

d0085afe <__swrite>:
d0085afe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0085b02:	461f      	mov	r7, r3
d0085b04:	898b      	ldrh	r3, [r1, #12]
d0085b06:	05db      	lsls	r3, r3, #23
d0085b08:	4605      	mov	r5, r0
d0085b0a:	460c      	mov	r4, r1
d0085b0c:	4616      	mov	r6, r2
d0085b0e:	d505      	bpl.n	d0085b1c <__swrite+0x1e>
d0085b10:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0085b14:	2302      	movs	r3, #2
d0085b16:	2200      	movs	r2, #0
d0085b18:	f000 f846 	bl	d0085ba8 <_lseek_r>
d0085b1c:	89a3      	ldrh	r3, [r4, #12]
d0085b1e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0085b22:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0085b26:	81a3      	strh	r3, [r4, #12]
d0085b28:	4632      	mov	r2, r6
d0085b2a:	463b      	mov	r3, r7
d0085b2c:	4628      	mov	r0, r5
d0085b2e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0085b32:	f7fa ba8f 	b.w	d0080054 <_write_r>

d0085b36 <__sseek>:
d0085b36:	b510      	push	{r4, lr}
d0085b38:	460c      	mov	r4, r1
d0085b3a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0085b3e:	f000 f833 	bl	d0085ba8 <_lseek_r>
d0085b42:	1c43      	adds	r3, r0, #1
d0085b44:	89a3      	ldrh	r3, [r4, #12]
d0085b46:	bf15      	itete	ne
d0085b48:	6560      	strne	r0, [r4, #84]	; 0x54
d0085b4a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0085b4e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0085b52:	81a3      	strheq	r3, [r4, #12]
d0085b54:	bf18      	it	ne
d0085b56:	81a3      	strhne	r3, [r4, #12]
d0085b58:	bd10      	pop	{r4, pc}

d0085b5a <__sclose>:
d0085b5a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0085b5e:	f000 b801 	b.w	d0085b64 <_close_r>
	...

d0085b64 <_close_r>:
d0085b64:	b538      	push	{r3, r4, r5, lr}
d0085b66:	4d06      	ldr	r5, [pc, #24]	; (d0085b80 <_close_r+0x1c>)
d0085b68:	2300      	movs	r3, #0
d0085b6a:	4604      	mov	r4, r0
d0085b6c:	4608      	mov	r0, r1
d0085b6e:	602b      	str	r3, [r5, #0]
d0085b70:	f7fa faaa 	bl	d00800c8 <_close>
d0085b74:	1c43      	adds	r3, r0, #1
d0085b76:	d102      	bne.n	d0085b7e <_close_r+0x1a>
d0085b78:	682b      	ldr	r3, [r5, #0]
d0085b7a:	b103      	cbz	r3, d0085b7e <_close_r+0x1a>
d0085b7c:	6023      	str	r3, [r4, #0]
d0085b7e:	bd38      	pop	{r3, r4, r5, pc}
d0085b80:	d00c8c78 	.word	0xd00c8c78

d0085b84 <_fstat_r>:
d0085b84:	b538      	push	{r3, r4, r5, lr}
d0085b86:	4d07      	ldr	r5, [pc, #28]	; (d0085ba4 <_fstat_r+0x20>)
d0085b88:	2300      	movs	r3, #0
d0085b8a:	4604      	mov	r4, r0
d0085b8c:	4608      	mov	r0, r1
d0085b8e:	4611      	mov	r1, r2
d0085b90:	602b      	str	r3, [r5, #0]
d0085b92:	f7fa fa9d 	bl	d00800d0 <_fstat>
d0085b96:	1c43      	adds	r3, r0, #1
d0085b98:	d102      	bne.n	d0085ba0 <_fstat_r+0x1c>
d0085b9a:	682b      	ldr	r3, [r5, #0]
d0085b9c:	b103      	cbz	r3, d0085ba0 <_fstat_r+0x1c>
d0085b9e:	6023      	str	r3, [r4, #0]
d0085ba0:	bd38      	pop	{r3, r4, r5, pc}
d0085ba2:	bf00      	nop
d0085ba4:	d00c8c78 	.word	0xd00c8c78

d0085ba8 <_lseek_r>:
d0085ba8:	b538      	push	{r3, r4, r5, lr}
d0085baa:	4d07      	ldr	r5, [pc, #28]	; (d0085bc8 <_lseek_r+0x20>)
d0085bac:	4604      	mov	r4, r0
d0085bae:	4608      	mov	r0, r1
d0085bb0:	4611      	mov	r1, r2
d0085bb2:	2200      	movs	r2, #0
d0085bb4:	602a      	str	r2, [r5, #0]
d0085bb6:	461a      	mov	r2, r3
d0085bb8:	f7fa fa90 	bl	d00800dc <_lseek>
d0085bbc:	1c43      	adds	r3, r0, #1
d0085bbe:	d102      	bne.n	d0085bc6 <_lseek_r+0x1e>
d0085bc0:	682b      	ldr	r3, [r5, #0]
d0085bc2:	b103      	cbz	r3, d0085bc6 <_lseek_r+0x1e>
d0085bc4:	6023      	str	r3, [r4, #0]
d0085bc6:	bd38      	pop	{r3, r4, r5, pc}
d0085bc8:	d00c8c78 	.word	0xd00c8c78

d0085bcc <_read_r>:
d0085bcc:	b538      	push	{r3, r4, r5, lr}
d0085bce:	4d07      	ldr	r5, [pc, #28]	; (d0085bec <_read_r+0x20>)
d0085bd0:	4604      	mov	r4, r0
d0085bd2:	4608      	mov	r0, r1
d0085bd4:	4611      	mov	r1, r2
d0085bd6:	2200      	movs	r2, #0
d0085bd8:	602a      	str	r2, [r5, #0]
d0085bda:	461a      	mov	r2, r3
d0085bdc:	f7fa fa6a 	bl	d00800b4 <_read>
d0085be0:	1c43      	adds	r3, r0, #1
d0085be2:	d102      	bne.n	d0085bea <_read_r+0x1e>
d0085be4:	682b      	ldr	r3, [r5, #0]
d0085be6:	b103      	cbz	r3, d0085bea <_read_r+0x1e>
d0085be8:	6023      	str	r3, [r4, #0]
d0085bea:	bd38      	pop	{r3, r4, r5, pc}
d0085bec:	d00c8c78 	.word	0xd00c8c78
d0085bf0:	00004141 	.word	0x00004141
d0085bf4:	00005949 	.word	0x00005949
d0085bf8:	00004f41 	.word	0x00004f41
d0085bfc:	00005755 	.word	0x00005755
d0085c00:	00004845 	.word	0x00004845
d0085c04:	00656874 	.word	0x00656874
d0085c08:	00004844 	.word	0x00004844
d0085c0c:	00004841 	.word	0x00004841
d0085c10:	73696874 	.word	0x73696874
d0085c14:	00000000 	.word	0x00000000
d0085c18:	00004849 	.word	0x00004849
d0085c1c:	00000053 	.word	0x00000053
d0085c20:	74616874 	.word	0x74616874
d0085c24:	00000000 	.word	0x00000000
d0085c28:	00004541 	.word	0x00004541
d0085c2c:	00000054 	.word	0x00000054
d0085c30:	72656874 	.word	0x72656874
d0085c34:	00000065 	.word	0x00000065
d0085c38:	69656874 	.word	0x69656874
d0085c3c:	00000072 	.word	0x00000072
d0085c40:	00000052 	.word	0x00000052
d0085c44:	00756f79 	.word	0x00756f79
d0085c48:	00000059 	.word	0x00000059
d0085c4c:	72756f79 	.word	0x72756f79
d0085c50:	00000000 	.word	0x00000000
d0085c54:	00005245 	.word	0x00005245
d0085c58:	00006f74 	.word	0x00006f74
d0085c5c:	006f6f74 	.word	0x006f6f74
d0085c60:	006f7774 	.word	0x006f7774
d0085c64:	0000666f 	.word	0x0000666f
d0085c68:	00000056 	.word	0x00000056
d0085c6c:	00007369 	.word	0x00007369
d0085c70:	0000005a 	.word	0x0000005a
d0085c74:	00657261 	.word	0x00657261
d0085c78:	00646e61 	.word	0x00646e61
d0085c7c:	0000004e 	.word	0x0000004e
d0085c80:	00000044 	.word	0x00000044
d0085c84:	6c6c6568 	.word	0x6c6c6568
d0085c88:	0000006f 	.word	0x0000006f
d0085c8c:	00000048 	.word	0x00000048
d0085c90:	0000004c 	.word	0x0000004c
d0085c94:	67696d61 	.word	0x67696d61
d0085c98:	00000061 	.word	0x00000061
d0085c9c:	0000004d 	.word	0x0000004d
d0085ca0:	00000047 	.word	0x00000047
d0085ca4:	7272616e 	.word	0x7272616e
d0085ca8:	726f7461 	.word	0x726f7461
d0085cac:	00000000 	.word	0x00000000
d0085cb0:	6f737065 	.word	0x6f737065
d0085cb4:	0000006e 	.word	0x0000006e
d0085cb8:	00000050 	.word	0x00000050
d0085cbc:	70657473 	.word	0x70657473
d0085cc0:	006e6568 	.word	0x006e6568
d0085cc4:	76657473 	.word	0x76657473
d0085cc8:	00000065 	.word	0x00000065
d0085ccc:	6b776168 	.word	0x6b776168
d0085cd0:	00676e69 	.word	0x00676e69
d0085cd4:	6b776168 	.word	0x6b776168
d0085cd8:	00736e69 	.word	0x00736e69
d0085cdc:	0000004b 	.word	0x0000004b
d0085ce0:	0000474e 	.word	0x0000474e
d0085ce4:	0000482f 	.word	0x0000482f
d0085ce8:	00004853 	.word	0x00004853
d0085cec:	00004854 	.word	0x00004854
d0085cf0:	00004843 	.word	0x00004843
d0085cf4:	0000485a 	.word	0x0000485a
d0085cf8:	0000584e 	.word	0x0000584e
d0085cfc:	00005849 	.word	0x00005849
d0085d00:	00005841 	.word	0x00005841
d0085d04:	00004855 	.word	0x00004855
d0085d08:	00005855 	.word	0x00005855
d0085d0c:	00005945 	.word	0x00005945
d0085d10:	00005941 	.word	0x00005941
d0085d14:	0000594f 	.word	0x0000594f
d0085d18:	00005741 	.word	0x00005741
d0085d1c:	0000574f 	.word	0x0000574f
d0085d20:	0000484f 	.word	0x0000484f
d0085d24:	00004c55 	.word	0x00004c55
d0085d28:	00004d55 	.word	0x00004d55
d0085d2c:	00004e55 	.word	0x00004e55
d0085d30:	0000005f 	.word	0x0000005f
d0085d34:	00686374 	.word	0x00686374
d0085d38:	00006863 	.word	0x00006863
d0085d3c:	00006873 	.word	0x00006873
d0085d40:	00006874 	.word	0x00006874
d0085d44:	00006870 	.word	0x00006870
d0085d48:	00000046 	.word	0x00000046
d0085d4c:	00006877 	.word	0x00006877
d0085d50:	00000057 	.word	0x00000057
d0085d54:	00007277 	.word	0x00007277
d0085d58:	0000676e 	.word	0x0000676e
d0085d5c:	00006b63 	.word	0x00006b63
d0085d60:	00007571 	.word	0x00007571
d0085d64:	00006961 	.word	0x00006961
d0085d68:	00007961 	.word	0x00007961
d0085d6c:	00007561 	.word	0x00007561
d0085d70:	00007761 	.word	0x00007761
d0085d74:	00006565 	.word	0x00006565
d0085d78:	00006165 	.word	0x00006165
d0085d7c:	00007265 	.word	0x00007265
d0085d80:	00007269 	.word	0x00007269
d0085d84:	00006f6f 	.word	0x00006f6f
d0085d88:	0000756f 	.word	0x0000756f
d0085d8c:	0000776f 	.word	0x0000776f
d0085d90:	0000696f 	.word	0x0000696f
d0085d94:	0000796f 	.word	0x0000796f
d0085d98:	0000726f 	.word	0x0000726f
d0085d9c:	00007275 	.word	0x00007275
d0085da0:	00006e6b 	.word	0x00006e6b
d0085da4:	00000042 	.word	0x00000042
d0085da8:	0000004a 	.word	0x0000004a

d0085dac <g_specs>:
d0085dac:	d0085d30 00000000 00000000 00000000     0]..............
d0085dbc:	00000046 d0085c0c 04a60280 50dc0956     F....\......V..P
d0085dcc:	00010023 00000078 d0085c28 06b80294     #...x...(\......
d0085ddc:	64e6096a 0001002d 00000082 d0085bf0     j..d-........[..
d0085dec:	044202da 52e60988 00010023 0000008c     ..B....R#.......
d0085dfc:	d0085bf8 0348023a 5cdc096a 00010023     .[..:.H.j..\#...
d0085e0c:	00000087 d0085c00 07300212 69dc09b0     .....\....0....i
d0085e1c:	0001002d 0000007d d0085c54 054601ea     -...}...T\....F.
d0085e2c:	64d2069a 00010041 00000087 d0085c18     ...dA........\..
d0085e3c:	07c60186 69d209f6 00010030 0000006e     .......i0...n...
d0085e4c:	d0085bf4 08f2010e 6ecd0bc2 00010037     .[.........n7...
d0085e5c:	00000082 d0085d04 03fc01b8 50d708c0     .....].........P
d0085e6c:	00010023 0000006e d0085bfc 0366012c     #...n....[..,.f.
d0085e7c:	50dc08c0 00010028 00000087 d0085da4     ...P(........]..
d0085e8c:	044c010e 237d0866 00032d14 0000003e     ..L.f.}#.-..>...
d0085e9c:	d0085cf0 076c0168 46320a8c 00026950     .\..h.l...2FPi..
d0085eac:	00000058 d0085c80 06a40140 2d780a28     X....\..@...(.x-
d0085ebc:	00032819 0000003a d0085c08 05aa0168     .(..:....\..h...
d0085ecc:	286e09c4 00014614 00000044 d0085d48     ..n(.F..D...H]..
d0085edc:	0514012c 19000a28 00004e28 00000048     ,...(...(N..H...
d0085eec:	d0085ca0 0578012c 287d0960 00032d14     .\..,.x.`.}(.-..
d0085efc:	00000046 d0085c8c 05dc0208 26370a28     F....\......(.7&
d0085f0c:	00014619 00000037 d0085da8 06a40168     .F..7....]..h...
d0085f1c:	46500a8c 00034837 00000055 d0085cdc     ..PF7H..U....\..
d0085f2c:	06a4012c 2d000af0 00025c37 00000046     ,......-7\..F...
d0085f3c:	d0085c90 04380168 385c0a28 0011011e     .\..h.8.(.\8....
d0085f4c:	00000052 d0085c9c 04b000fa 2ab90898     R....\.........*
d0085f5c:	00010016 00000052 d0085c7c 06a400fa     ....R...|\......
d0085f6c:	37b40a28 0001001c 0000004b d0085ce0     (..7....K....\..
d0085f7c:	07d000fa 3ab40abe 0001001e 0000005a     .......:....Z...
d0085f8c:	d0085cb8 04b0012c 23000a28 00025628     .\..,...(..#(V..
d0085f9c:	0000003e d0085c40 0514012c 64be0640     >...@\..,...@..d
d0085fac:	0001004b 00000058 d0085c1c 0c800140     K...X....\..@...
d0085fbc:	2d001068 00005855 00000052 d0085ce8     h..-UX..R....\..
d0085fcc:	08340140 41000bb8 00005c46 00000058     @.4....AF\..X...
d0085fdc:	d0085c2c 06a40140 2d000b54 00025a3a     ,\..@...T..-:Z..
d0085fec:	0000003a d0085cec 05aa0168 1e000a28     :....\..h...(...
d0085ffc:	00004832 0000004a d0085c68 0514012c     2H..J...h\..,...
d008600c:	1e640a28 00014b19 00000048 d0085d50     (.d..K..H...P]..
d008601c:	02f8012c 4bc30898 00010023 00000052     ,......K#...R...
d008602c:	d0085c48 08980118 69a50bb8 00010032     H\.........i2...
d008603c:	00000046 d0085c70 0bb80140 2d5a1004     F...p\..@.....Z-
d008604c:	0001464b 00000052 d0085cf4 08340140     KF..R....\..@.4.
d008605c:	41500bb8 00014446 00000056 4845482f     ..PAFD..V.../HEH
d008606c:	574f4c34 52455720 2e444c34 34594120     4LOW WER4LD. AY4
d008607c:	4d454120 34484120 59494d20 20484147      AEM AH4 MIYGAH 
d008608c:	3448454e 54594552 202e5245 34574f4e     NEH4REYTER. NOW4
d008609c:	20594120 59495053 57204b34 48444849      AY SPIY4K WIHDH
d00860ac:	574f4620 414d5234 53544e45 0000002e      FOW4RMAENTS....

d00860bc <_global_impure_ptr>:
d00860bc:	d0086138                                8a..

d00860c0 <__sf_fake_stderr>:
	...

d00860e0 <__sf_fake_stdin>:
	...

d0086100 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0086120 <_init>:
d0086120:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0086122:	bf00      	nop

Disassembly of section .fini:

d0086124 <_fini>:
d0086124:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0086126:	bf00      	nop
