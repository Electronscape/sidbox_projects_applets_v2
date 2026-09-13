
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
d008001e:	f003 ff9d 	bl	d0083f5c <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f003 ff98 	bl	d0083f5c <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f003 bc06 	b.w	d0083844 <main>
d0080038:	d0084b84 	.word	0xd0084b84

d008003c <initMalloc>:
d008003c:	4902      	ldr	r1, [pc, #8]	; (d0080048 <initMalloc+0xc>)
d008003e:	4b03      	ldr	r3, [pc, #12]	; (d008004c <initMalloc+0x10>)
d0080040:	4a03      	ldr	r2, [pc, #12]	; (d0080050 <initMalloc+0x14>)
d0080042:	1a5b      	subs	r3, r3, r1
d0080044:	6013      	str	r3, [r2, #0]
d0080046:	4770      	bx	lr
d0080048:	d00c89d8 	.word	0xd00c89d8
d008004c:	d0600000 	.word	0xd0600000
d0080050:	d00c69c0 	.word	0xd00c69c0

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
d008009c:	f003 fe90 	bl	d0083dc0 <__errno>
d00800a0:	2209      	movs	r2, #9
d00800a2:	4603      	mov	r3, r0
d00800a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800a8:	601a      	str	r2, [r3, #0]
d00800aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800ac:	d0084c04 	.word	0xd0084c04
d00800b0:	2001f000 	.word	0x2001f000

d00800b4 <_read>:
d00800b4:	b508      	push	{r3, lr}
d00800b6:	f003 fe83 	bl	d0083dc0 <__errno>
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
d0080102:	f003 fe5d 	bl	d0083dc0 <__errno>
d0080106:	220c      	movs	r2, #12
d0080108:	4603      	mov	r3, r0
d008010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008010e:	601a      	str	r2, [r3, #0]
d0080110:	bd10      	pop	{r4, pc}
d0080112:	bf00      	nop
d0080114:	d0084c00 	.word	0xd0084c00
d0080118:	d00c89d8 	.word	0xd00c89d8
d008011c:	d0600000 	.word	0xd0600000

d0080120 <emit_phone.constprop.0>:
d0080120:	4603      	mov	r3, r0
d0080122:	8800      	ldrh	r0, [r0, #0]
d0080124:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
d0080128:	d235      	bcs.n	d0080196 <emit_phone.constprop.0+0x76>
d008012a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d008012e:	460c      	mov	r4, r1
d0080130:	f8df 806c 	ldr.w	r8, [pc, #108]	; d00801a0 <emit_phone.constprop.0+0x80>
d0080134:	b332      	cbz	r2, d0080184 <emit_phone.constprop.0+0x64>
d0080136:	008f      	lsls	r7, r1, #2
d0080138:	4d17      	ldr	r5, [pc, #92]	; (d0080198 <emit_phone.constprop.0+0x78>)
d008013a:	4e18      	ldr	r6, [pc, #96]	; (d008019c <emit_phone.constprop.0+0x7c>)
d008013c:	f805 4020 	strb.w	r4, [r5, r0, lsl #2]
d0080140:	443c      	add	r4, r7
d0080142:	8819      	ldrh	r1, [r3, #0]
d0080144:	4630      	mov	r0, r6
d0080146:	eb05 0581 	add.w	r5, r5, r1, lsl #2
d008014a:	806a      	strh	r2, [r5, #2]
d008014c:	881a      	ldrh	r2, [r3, #0]
d008014e:	3201      	adds	r2, #1
d0080150:	801a      	strh	r2, [r3, #0]
d0080152:	f003 ffe0 	bl	d0084116 <strlen>
d0080156:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
d008015a:	4605      	mov	r5, r0
d008015c:	4620      	mov	r0, r4
d008015e:	f003 ffda 	bl	d0084116 <strlen>
d0080162:	182b      	adds	r3, r5, r0
d0080164:	3302      	adds	r3, #2
d0080166:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008016a:	d212      	bcs.n	d0080192 <emit_phone.constprop.0+0x72>
d008016c:	b125      	cbz	r5, d0080178 <emit_phone.constprop.0+0x58>
d008016e:	2120      	movs	r1, #32
d0080170:	1973      	adds	r3, r6, r5
d0080172:	2200      	movs	r2, #0
d0080174:	5571      	strb	r1, [r6, r5]
d0080176:	705a      	strb	r2, [r3, #1]
d0080178:	4621      	mov	r1, r4
d008017a:	4808      	ldr	r0, [pc, #32]	; (d008019c <emit_phone.constprop.0+0x7c>)
d008017c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0080180:	f003 bfba 	b.w	d00840f8 <strcat>
d0080184:	eb01 0281 	add.w	r2, r1, r1, lsl #2
d0080188:	008f      	lsls	r7, r1, #2
d008018a:	eb08 0282 	add.w	r2, r8, r2, lsl #2
d008018e:	8a12      	ldrh	r2, [r2, #16]
d0080190:	e7d2      	b.n	d0080138 <emit_phone.constprop.0+0x18>
d0080192:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0080196:	4770      	bx	lr
d0080198:	d0084c08 	.word	0xd0084c08
d008019c:	d00c61b8 	.word	0xd00c61b8
d00801a0:	d0084794 	.word	0xd0084794

d00801a4 <has_magic_e>:
d00801a4:	1c93      	adds	r3, r2, #2
d00801a6:	428b      	cmp	r3, r1
d00801a8:	d216      	bcs.n	d00801d8 <has_magic_e+0x34>
d00801aa:	4402      	add	r2, r0
d00801ac:	b410      	push	{r4}
d00801ae:	7854      	ldrb	r4, [r2, #1]
d00801b0:	f1a4 0341 	sub.w	r3, r4, #65	; 0x41
d00801b4:	b2da      	uxtb	r2, r3
d00801b6:	2a19      	cmp	r2, #25
d00801b8:	d902      	bls.n	d00801c0 <has_magic_e+0x1c>
d00801ba:	f1a4 0361 	sub.w	r3, r4, #97	; 0x61
d00801be:	b2da      	uxtb	r2, r3
d00801c0:	2a18      	cmp	r2, #24
d00801c2:	d80b      	bhi.n	d00801dc <has_magic_e+0x38>
d00801c4:	4b0e      	ldr	r3, [pc, #56]	; (d0080200 <has_magic_e+0x5c>)
d00801c6:	40d3      	lsrs	r3, r2
d00801c8:	43db      	mvns	r3, r3
d00801ca:	f013 0301 	ands.w	r3, r3, #1
d00801ce:	d105      	bne.n	d00801dc <has_magic_e+0x38>
d00801d0:	4618      	mov	r0, r3
d00801d2:	f85d 4b04 	ldr.w	r4, [sp], #4
d00801d6:	4770      	bx	lr
d00801d8:	2000      	movs	r0, #0
d00801da:	4770      	bx	lr
d00801dc:	4408      	add	r0, r1
d00801de:	f810 0c01 	ldrb.w	r0, [r0, #-1]
d00801e2:	f1a0 0341 	sub.w	r3, r0, #65	; 0x41
d00801e6:	2b19      	cmp	r3, #25
d00801e8:	d907      	bls.n	d00801fa <has_magic_e+0x56>
d00801ea:	f1a0 0065 	sub.w	r0, r0, #101	; 0x65
d00801ee:	f85d 4b04 	ldr.w	r4, [sp], #4
d00801f2:	fab0 f080 	clz	r0, r0
d00801f6:	0940      	lsrs	r0, r0, #5
d00801f8:	4770      	bx	lr
d00801fa:	3020      	adds	r0, #32
d00801fc:	b2c0      	uxtb	r0, r0
d00801fe:	e7f4      	b.n	d00801ea <has_magic_e+0x46>
d0080200:	01104111 	.word	0x01104111

d0080204 <emit_ay.constprop.0>:
d0080204:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0080206:	8803      	ldrh	r3, [r0, #0]
d0080208:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008020c:	d24b      	bcs.n	d00802a6 <emit_ay.constprop.0+0xa2>
d008020e:	4e26      	ldr	r6, [pc, #152]	; (d00802a8 <emit_ay.constprop.0+0xa4>)
d0080210:	2103      	movs	r1, #3
d0080212:	4604      	mov	r4, r0
d0080214:	224b      	movs	r2, #75	; 0x4b
d0080216:	f806 1023 	strb.w	r1, [r6, r3, lsl #2]
d008021a:	8803      	ldrh	r3, [r0, #0]
d008021c:	4f23      	ldr	r7, [pc, #140]	; (d00802ac <emit_ay.constprop.0+0xa8>)
d008021e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d0080222:	4638      	mov	r0, r7
d0080224:	805a      	strh	r2, [r3, #2]
d0080226:	8825      	ldrh	r5, [r4, #0]
d0080228:	3501      	adds	r5, #1
d008022a:	b2ad      	uxth	r5, r5
d008022c:	8025      	strh	r5, [r4, #0]
d008022e:	f003 ff72 	bl	d0084116 <strlen>
d0080232:	1d03      	adds	r3, r0, #4
d0080234:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0080238:	d20e      	bcs.n	d0080258 <emit_ay.constprop.0+0x54>
d008023a:	b138      	cbz	r0, d008024c <emit_ay.constprop.0+0x48>
d008023c:	2120      	movs	r1, #32
d008023e:	183b      	adds	r3, r7, r0
d0080240:	2200      	movs	r2, #0
d0080242:	5439      	strb	r1, [r7, r0]
d0080244:	4638      	mov	r0, r7
d0080246:	705a      	strb	r2, [r3, #1]
d0080248:	f003 ff65 	bl	d0084116 <strlen>
d008024c:	4438      	add	r0, r7
d008024e:	2203      	movs	r2, #3
d0080250:	4917      	ldr	r1, [pc, #92]	; (d00802b0 <emit_ay.constprop.0+0xac>)
d0080252:	f003 fdc3 	bl	d0083ddc <memcpy>
d0080256:	8825      	ldrh	r5, [r4, #0]
d0080258:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d008025c:	d223      	bcs.n	d00802a6 <emit_ay.constprop.0+0xa2>
d008025e:	2208      	movs	r2, #8
d0080260:	2352      	movs	r3, #82	; 0x52
d0080262:	4812      	ldr	r0, [pc, #72]	; (d00802ac <emit_ay.constprop.0+0xa8>)
d0080264:	f806 2025 	strb.w	r2, [r6, r5, lsl #2]
d0080268:	8822      	ldrh	r2, [r4, #0]
d008026a:	eb06 0682 	add.w	r6, r6, r2, lsl #2
d008026e:	8073      	strh	r3, [r6, #2]
d0080270:	8823      	ldrh	r3, [r4, #0]
d0080272:	3301      	adds	r3, #1
d0080274:	8023      	strh	r3, [r4, #0]
d0080276:	f003 ff4e 	bl	d0084116 <strlen>
d008027a:	1d02      	adds	r2, r0, #4
d008027c:	4603      	mov	r3, r0
d008027e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080282:	d210      	bcs.n	d00802a6 <emit_ay.constprop.0+0xa2>
d0080284:	b140      	cbz	r0, d0080298 <emit_ay.constprop.0+0x94>
d0080286:	183a      	adds	r2, r7, r0
d0080288:	2100      	movs	r1, #0
d008028a:	2420      	movs	r4, #32
d008028c:	4807      	ldr	r0, [pc, #28]	; (d00802ac <emit_ay.constprop.0+0xa8>)
d008028e:	54fc      	strb	r4, [r7, r3]
d0080290:	7051      	strb	r1, [r2, #1]
d0080292:	f003 ff40 	bl	d0084116 <strlen>
d0080296:	4603      	mov	r3, r0
d0080298:	18f8      	adds	r0, r7, r3
d008029a:	2203      	movs	r2, #3
d008029c:	4905      	ldr	r1, [pc, #20]	; (d00802b4 <emit_ay.constprop.0+0xb0>)
d008029e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00802a2:	f003 bd9b 	b.w	d0083ddc <memcpy>
d00802a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00802a8:	d0084c08 	.word	0xd0084c08
d00802ac:	d00c61b8 	.word	0xd00c61b8
d00802b0:	d0084610 	.word	0xd0084610
d00802b4:	d0084614 	.word	0xd0084614

d00802b8 <emit_ey.constprop.0>:
d00802b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00802ba:	8803      	ldrh	r3, [r0, #0]
d00802bc:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00802c0:	d24b      	bcs.n	d008035a <emit_ey.constprop.0+0xa2>
d00802c2:	4e26      	ldr	r6, [pc, #152]	; (d008035c <emit_ey.constprop.0+0xa4>)
d00802c4:	2105      	movs	r1, #5
d00802c6:	4604      	mov	r4, r0
d00802c8:	2248      	movs	r2, #72	; 0x48
d00802ca:	f806 1023 	strb.w	r1, [r6, r3, lsl #2]
d00802ce:	8803      	ldrh	r3, [r0, #0]
d00802d0:	4f23      	ldr	r7, [pc, #140]	; (d0080360 <emit_ey.constprop.0+0xa8>)
d00802d2:	eb06 0383 	add.w	r3, r6, r3, lsl #2
d00802d6:	4638      	mov	r0, r7
d00802d8:	805a      	strh	r2, [r3, #2]
d00802da:	8825      	ldrh	r5, [r4, #0]
d00802dc:	3501      	adds	r5, #1
d00802de:	b2ad      	uxth	r5, r5
d00802e0:	8025      	strh	r5, [r4, #0]
d00802e2:	f003 ff18 	bl	d0084116 <strlen>
d00802e6:	1d03      	adds	r3, r0, #4
d00802e8:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00802ec:	d20e      	bcs.n	d008030c <emit_ey.constprop.0+0x54>
d00802ee:	b138      	cbz	r0, d0080300 <emit_ey.constprop.0+0x48>
d00802f0:	2120      	movs	r1, #32
d00802f2:	183b      	adds	r3, r7, r0
d00802f4:	2200      	movs	r2, #0
d00802f6:	5439      	strb	r1, [r7, r0]
d00802f8:	4638      	mov	r0, r7
d00802fa:	705a      	strb	r2, [r3, #1]
d00802fc:	f003 ff0b 	bl	d0084116 <strlen>
d0080300:	4438      	add	r0, r7
d0080302:	2203      	movs	r2, #3
d0080304:	4917      	ldr	r1, [pc, #92]	; (d0080364 <emit_ey.constprop.0+0xac>)
d0080306:	f003 fd69 	bl	d0083ddc <memcpy>
d008030a:	8825      	ldrh	r5, [r4, #0]
d008030c:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d0080310:	d223      	bcs.n	d008035a <emit_ey.constprop.0+0xa2>
d0080312:	2208      	movs	r2, #8
d0080314:	234c      	movs	r3, #76	; 0x4c
d0080316:	4812      	ldr	r0, [pc, #72]	; (d0080360 <emit_ey.constprop.0+0xa8>)
d0080318:	f806 2025 	strb.w	r2, [r6, r5, lsl #2]
d008031c:	8822      	ldrh	r2, [r4, #0]
d008031e:	eb06 0682 	add.w	r6, r6, r2, lsl #2
d0080322:	8073      	strh	r3, [r6, #2]
d0080324:	8823      	ldrh	r3, [r4, #0]
d0080326:	3301      	adds	r3, #1
d0080328:	8023      	strh	r3, [r4, #0]
d008032a:	f003 fef4 	bl	d0084116 <strlen>
d008032e:	1d02      	adds	r2, r0, #4
d0080330:	4603      	mov	r3, r0
d0080332:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080336:	d210      	bcs.n	d008035a <emit_ey.constprop.0+0xa2>
d0080338:	b140      	cbz	r0, d008034c <emit_ey.constprop.0+0x94>
d008033a:	183a      	adds	r2, r7, r0
d008033c:	2100      	movs	r1, #0
d008033e:	2420      	movs	r4, #32
d0080340:	4807      	ldr	r0, [pc, #28]	; (d0080360 <emit_ey.constprop.0+0xa8>)
d0080342:	54fc      	strb	r4, [r7, r3]
d0080344:	7051      	strb	r1, [r2, #1]
d0080346:	f003 fee6 	bl	d0084116 <strlen>
d008034a:	4603      	mov	r3, r0
d008034c:	18f8      	adds	r0, r7, r3
d008034e:	2203      	movs	r2, #3
d0080350:	4905      	ldr	r1, [pc, #20]	; (d0080368 <emit_ey.constprop.0+0xb0>)
d0080352:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0080356:	f003 bd41 	b.w	d0083ddc <memcpy>
d008035a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008035c:	d0084c08 	.word	0xd0084c08
d0080360:	d00c61b8 	.word	0xd00c61b8
d0080364:	d0084618 	.word	0xd0084618
d0080368:	d0084614 	.word	0xd0084614

d008036c <emit_known_word.constprop.0>:
d008036c:	2900      	cmp	r1, #0
d008036e:	f000 85b7 	beq.w	d0080ee0 <emit_known_word.constprop.0+0xb74>
d0080372:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080376:	4614      	mov	r4, r2
d0080378:	f8df e7ec 	ldr.w	lr, [pc, #2028]	; d0080b68 <emit_known_word.constprop.0+0x7fc>
d008037c:	1e42      	subs	r2, r0, #1
d008037e:	b083      	sub	sp, #12
d0080380:	2500      	movs	r5, #0
d0080382:	2674      	movs	r6, #116	; 0x74
d0080384:	4694      	mov	ip, r2
d0080386:	4677      	mov	r7, lr
d0080388:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d008038c:	3501      	adds	r5, #1
d008038e:	f1a3 0841 	sub.w	r8, r3, #65	; 0x41
d0080392:	b2ad      	uxth	r5, r5
d0080394:	f1b8 0f19 	cmp.w	r8, #25
d0080398:	d801      	bhi.n	d008039e <emit_known_word.constprop.0+0x32>
d008039a:	3320      	adds	r3, #32
d008039c:	b2db      	uxtb	r3, r3
d008039e:	42b3      	cmp	r3, r6
d00803a0:	d106      	bne.n	d00803b0 <emit_known_word.constprop.0+0x44>
d00803a2:	42a9      	cmp	r1, r5
d00803a4:	f000 828e 	beq.w	d00808c4 <emit_known_word.constprop.0+0x558>
d00803a8:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d00803ac:	2e00      	cmp	r6, #0
d00803ae:	d1eb      	bne.n	d0080388 <emit_known_word.constprop.0+0x1c>
d00803b0:	f8df 87b8 	ldr.w	r8, [pc, #1976]	; d0080b6c <emit_known_word.constprop.0+0x800>
d00803b4:	4694      	mov	ip, r2
d00803b6:	2500      	movs	r5, #0
d00803b8:	2674      	movs	r6, #116	; 0x74
d00803ba:	4647      	mov	r7, r8
d00803bc:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d00803c0:	3501      	adds	r5, #1
d00803c2:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d00803c6:	b2ad      	uxth	r5, r5
d00803c8:	f1be 0f19 	cmp.w	lr, #25
d00803cc:	d801      	bhi.n	d00803d2 <emit_known_word.constprop.0+0x66>
d00803ce:	3320      	adds	r3, #32
d00803d0:	b2db      	uxtb	r3, r3
d00803d2:	42b3      	cmp	r3, r6
d00803d4:	d106      	bne.n	d00803e4 <emit_known_word.constprop.0+0x78>
d00803d6:	42a9      	cmp	r1, r5
d00803d8:	f000 82d3 	beq.w	d0080982 <emit_known_word.constprop.0+0x616>
d00803dc:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d00803e0:	2e00      	cmp	r6, #0
d00803e2:	d1eb      	bne.n	d00803bc <emit_known_word.constprop.0+0x50>
d00803e4:	f8df 8788 	ldr.w	r8, [pc, #1928]	; d0080b70 <emit_known_word.constprop.0+0x804>
d00803e8:	4694      	mov	ip, r2
d00803ea:	2500      	movs	r5, #0
d00803ec:	2674      	movs	r6, #116	; 0x74
d00803ee:	4647      	mov	r7, r8
d00803f0:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d00803f4:	3501      	adds	r5, #1
d00803f6:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d00803fa:	b2ad      	uxth	r5, r5
d00803fc:	f1be 0f19 	cmp.w	lr, #25
d0080400:	d801      	bhi.n	d0080406 <emit_known_word.constprop.0+0x9a>
d0080402:	3320      	adds	r3, #32
d0080404:	b2db      	uxtb	r3, r3
d0080406:	42b3      	cmp	r3, r6
d0080408:	d106      	bne.n	d0080418 <emit_known_word.constprop.0+0xac>
d008040a:	42a9      	cmp	r1, r5
d008040c:	f000 8328 	beq.w	d0080a60 <emit_known_word.constprop.0+0x6f4>
d0080410:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d0080414:	2e00      	cmp	r6, #0
d0080416:	d1eb      	bne.n	d00803f0 <emit_known_word.constprop.0+0x84>
d0080418:	f8df 8758 	ldr.w	r8, [pc, #1880]	; d0080b74 <emit_known_word.constprop.0+0x808>
d008041c:	4694      	mov	ip, r2
d008041e:	2500      	movs	r5, #0
d0080420:	2674      	movs	r6, #116	; 0x74
d0080422:	4647      	mov	r7, r8
d0080424:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d0080428:	3501      	adds	r5, #1
d008042a:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d008042e:	b2ad      	uxth	r5, r5
d0080430:	f1be 0f19 	cmp.w	lr, #25
d0080434:	d801      	bhi.n	d008043a <emit_known_word.constprop.0+0xce>
d0080436:	3320      	adds	r3, #32
d0080438:	b2db      	uxtb	r3, r3
d008043a:	429e      	cmp	r6, r3
d008043c:	d106      	bne.n	d008044c <emit_known_word.constprop.0+0xe0>
d008043e:	42a9      	cmp	r1, r5
d0080440:	f000 83bc 	beq.w	d0080bbc <emit_known_word.constprop.0+0x850>
d0080444:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d0080448:	2e00      	cmp	r6, #0
d008044a:	d1eb      	bne.n	d0080424 <emit_known_word.constprop.0+0xb8>
d008044c:	f8df 8728 	ldr.w	r8, [pc, #1832]	; d0080b78 <emit_known_word.constprop.0+0x80c>
d0080450:	4694      	mov	ip, r2
d0080452:	2500      	movs	r5, #0
d0080454:	2674      	movs	r6, #116	; 0x74
d0080456:	4647      	mov	r7, r8
d0080458:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d008045c:	3501      	adds	r5, #1
d008045e:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d0080462:	b2ad      	uxth	r5, r5
d0080464:	f1be 0f19 	cmp.w	lr, #25
d0080468:	d801      	bhi.n	d008046e <emit_known_word.constprop.0+0x102>
d008046a:	3320      	adds	r3, #32
d008046c:	b2db      	uxtb	r3, r3
d008046e:	429e      	cmp	r6, r3
d0080470:	d106      	bne.n	d0080480 <emit_known_word.constprop.0+0x114>
d0080472:	42a9      	cmp	r1, r5
d0080474:	f000 8421 	beq.w	d0080cba <emit_known_word.constprop.0+0x94e>
d0080478:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d008047c:	2e00      	cmp	r6, #0
d008047e:	d1eb      	bne.n	d0080458 <emit_known_word.constprop.0+0xec>
d0080480:	f8df 86f8 	ldr.w	r8, [pc, #1784]	; d0080b7c <emit_known_word.constprop.0+0x810>
d0080484:	4694      	mov	ip, r2
d0080486:	2679      	movs	r6, #121	; 0x79
d0080488:	2500      	movs	r5, #0
d008048a:	4647      	mov	r7, r8
d008048c:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d0080490:	3501      	adds	r5, #1
d0080492:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d0080496:	b2ad      	uxth	r5, r5
d0080498:	f1be 0f19 	cmp.w	lr, #25
d008049c:	d801      	bhi.n	d00804a2 <emit_known_word.constprop.0+0x136>
d008049e:	3320      	adds	r3, #32
d00804a0:	b2db      	uxtb	r3, r3
d00804a2:	429e      	cmp	r6, r3
d00804a4:	d106      	bne.n	d00804b4 <emit_known_word.constprop.0+0x148>
d00804a6:	42a9      	cmp	r1, r5
d00804a8:	f000 825c 	beq.w	d0080964 <emit_known_word.constprop.0+0x5f8>
d00804ac:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d00804b0:	2e00      	cmp	r6, #0
d00804b2:	d1eb      	bne.n	d008048c <emit_known_word.constprop.0+0x120>
d00804b4:	f8df 86c8 	ldr.w	r8, [pc, #1736]	; d0080b80 <emit_known_word.constprop.0+0x814>
d00804b8:	4694      	mov	ip, r2
d00804ba:	2679      	movs	r6, #121	; 0x79
d00804bc:	2500      	movs	r5, #0
d00804be:	4647      	mov	r7, r8
d00804c0:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
d00804c4:	3501      	adds	r5, #1
d00804c6:	f1a3 0e41 	sub.w	lr, r3, #65	; 0x41
d00804ca:	b2ad      	uxth	r5, r5
d00804cc:	f1be 0f19 	cmp.w	lr, #25
d00804d0:	d801      	bhi.n	d00804d6 <emit_known_word.constprop.0+0x16a>
d00804d2:	3320      	adds	r3, #32
d00804d4:	b2db      	uxtb	r3, r3
d00804d6:	429e      	cmp	r6, r3
d00804d8:	d106      	bne.n	d00804e8 <emit_known_word.constprop.0+0x17c>
d00804da:	42a9      	cmp	r1, r5
d00804dc:	f000 83f3 	beq.w	d0080cc6 <emit_known_word.constprop.0+0x95a>
d00804e0:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d00804e4:	2e00      	cmp	r6, #0
d00804e6:	d1eb      	bne.n	d00804c0 <emit_known_word.constprop.0+0x154>
d00804e8:	f8df 8698 	ldr.w	r8, [pc, #1688]	; d0080b84 <emit_known_word.constprop.0+0x818>
d00804ec:	4694      	mov	ip, r2
d00804ee:	2674      	movs	r6, #116	; 0x74
d00804f0:	2300      	movs	r3, #0
d00804f2:	4647      	mov	r7, r8
d00804f4:	f81c 5f01 	ldrb.w	r5, [ip, #1]!
d00804f8:	3301      	adds	r3, #1
d00804fa:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00804fe:	b29b      	uxth	r3, r3
d0080500:	f1be 0f19 	cmp.w	lr, #25
d0080504:	d801      	bhi.n	d008050a <emit_known_word.constprop.0+0x19e>
d0080506:	3520      	adds	r5, #32
d0080508:	b2ed      	uxtb	r5, r5
d008050a:	42ae      	cmp	r6, r5
d008050c:	d106      	bne.n	d008051c <emit_known_word.constprop.0+0x1b0>
d008050e:	4299      	cmp	r1, r3
d0080510:	f000 8432 	beq.w	d0080d78 <emit_known_word.constprop.0+0xa0c>
d0080514:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d0080518:	2e00      	cmp	r6, #0
d008051a:	d1eb      	bne.n	d00804f4 <emit_known_word.constprop.0+0x188>
d008051c:	f8df 8668 	ldr.w	r8, [pc, #1640]	; d0080b88 <emit_known_word.constprop.0+0x81c>
d0080520:	4694      	mov	ip, r2
d0080522:	2300      	movs	r3, #0
d0080524:	2674      	movs	r6, #116	; 0x74
d0080526:	4647      	mov	r7, r8
d0080528:	f81c 5f01 	ldrb.w	r5, [ip, #1]!
d008052c:	3301      	adds	r3, #1
d008052e:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080532:	b29b      	uxth	r3, r3
d0080534:	f1be 0f19 	cmp.w	lr, #25
d0080538:	d801      	bhi.n	d008053e <emit_known_word.constprop.0+0x1d2>
d008053a:	3520      	adds	r5, #32
d008053c:	b2ed      	uxtb	r5, r5
d008053e:	42ae      	cmp	r6, r5
d0080540:	d106      	bne.n	d0080550 <emit_known_word.constprop.0+0x1e4>
d0080542:	4299      	cmp	r1, r3
d0080544:	f000 84c5 	beq.w	d0080ed2 <emit_known_word.constprop.0+0xb66>
d0080548:	f817 6f01 	ldrb.w	r6, [r7, #1]!
d008054c:	2e00      	cmp	r6, #0
d008054e:	d1eb      	bne.n	d0080528 <emit_known_word.constprop.0+0x1bc>
d0080550:	f8df b638 	ldr.w	fp, [pc, #1592]	; d0080b8c <emit_known_word.constprop.0+0x820>
d0080554:	f101 3aff 	add.w	sl, r1, #4294967295	; 0xffffffff
d0080558:	4616      	mov	r6, r2
d008055a:	f04f 0c74 	mov.w	ip, #116	; 0x74
d008055e:	fa10 f98a 	uxtah	r9, r0, sl
d0080562:	465f      	mov	r7, fp
d0080564:	f1cb 0801 	rsb	r8, fp, #1
d0080568:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d008056c:	eb08 0307 	add.w	r3, r8, r7
d0080570:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080574:	b29b      	uxth	r3, r3
d0080576:	f1be 0f19 	cmp.w	lr, #25
d008057a:	d801      	bhi.n	d0080580 <emit_known_word.constprop.0+0x214>
d008057c:	3520      	adds	r5, #32
d008057e:	b2ed      	uxtb	r5, r5
d0080580:	45ac      	cmp	ip, r5
d0080582:	d107      	bne.n	d0080594 <emit_known_word.constprop.0+0x228>
d0080584:	454e      	cmp	r6, r9
d0080586:	f000 84bf 	beq.w	d0080f08 <emit_known_word.constprop.0+0xb9c>
d008058a:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d008058e:	f1bc 0f00 	cmp.w	ip, #0
d0080592:	d1e9      	bne.n	d0080568 <emit_known_word.constprop.0+0x1fc>
d0080594:	f8df b5f8 	ldr.w	fp, [pc, #1528]	; d0080b90 <emit_known_word.constprop.0+0x824>
d0080598:	4616      	mov	r6, r2
d008059a:	fa10 f98a 	uxtah	r9, r0, sl
d008059e:	f04f 0c6f 	mov.w	ip, #111	; 0x6f
d00805a2:	465f      	mov	r7, fp
d00805a4:	f1cb 0801 	rsb	r8, fp, #1
d00805a8:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d00805ac:	eb08 0307 	add.w	r3, r8, r7
d00805b0:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00805b4:	b29b      	uxth	r3, r3
d00805b6:	f1be 0f19 	cmp.w	lr, #25
d00805ba:	d801      	bhi.n	d00805c0 <emit_known_word.constprop.0+0x254>
d00805bc:	3520      	adds	r5, #32
d00805be:	b2ed      	uxtb	r5, r5
d00805c0:	4565      	cmp	r5, ip
d00805c2:	d107      	bne.n	d00805d4 <emit_known_word.constprop.0+0x268>
d00805c4:	45b1      	cmp	r9, r6
d00805c6:	f000 84a9 	beq.w	d0080f1c <emit_known_word.constprop.0+0xbb0>
d00805ca:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d00805ce:	f1bc 0f00 	cmp.w	ip, #0
d00805d2:	d1e9      	bne.n	d00805a8 <emit_known_word.constprop.0+0x23c>
d00805d4:	f8df b5bc 	ldr.w	fp, [pc, #1468]	; d0080b94 <emit_known_word.constprop.0+0x828>
d00805d8:	4616      	mov	r6, r2
d00805da:	fa10 f98a 	uxtah	r9, r0, sl
d00805de:	f04f 0c69 	mov.w	ip, #105	; 0x69
d00805e2:	465f      	mov	r7, fp
d00805e4:	f1cb 0801 	rsb	r8, fp, #1
d00805e8:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d00805ec:	eb08 0307 	add.w	r3, r8, r7
d00805f0:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00805f4:	b29b      	uxth	r3, r3
d00805f6:	f1be 0f19 	cmp.w	lr, #25
d00805fa:	d801      	bhi.n	d0080600 <emit_known_word.constprop.0+0x294>
d00805fc:	3520      	adds	r5, #32
d00805fe:	b2ed      	uxtb	r5, r5
d0080600:	4565      	cmp	r5, ip
d0080602:	d107      	bne.n	d0080614 <emit_known_word.constprop.0+0x2a8>
d0080604:	45b1      	cmp	r9, r6
d0080606:	f000 84e6 	beq.w	d0080fd6 <emit_known_word.constprop.0+0xc6a>
d008060a:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d008060e:	f1bc 0f00 	cmp.w	ip, #0
d0080612:	d1e9      	bne.n	d00805e8 <emit_known_word.constprop.0+0x27c>
d0080614:	f8df b580 	ldr.w	fp, [pc, #1408]	; d0080b98 <emit_known_word.constprop.0+0x82c>
d0080618:	4616      	mov	r6, r2
d008061a:	fa10 f98a 	uxtah	r9, r0, sl
d008061e:	f04f 0c61 	mov.w	ip, #97	; 0x61
d0080622:	465f      	mov	r7, fp
d0080624:	f1cb 0801 	rsb	r8, fp, #1
d0080628:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d008062c:	eb08 0307 	add.w	r3, r8, r7
d0080630:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080634:	b29b      	uxth	r3, r3
d0080636:	f1be 0f19 	cmp.w	lr, #25
d008063a:	d801      	bhi.n	d0080640 <emit_known_word.constprop.0+0x2d4>
d008063c:	3520      	adds	r5, #32
d008063e:	b2ed      	uxtb	r5, r5
d0080640:	45ac      	cmp	ip, r5
d0080642:	d107      	bne.n	d0080654 <emit_known_word.constprop.0+0x2e8>
d0080644:	45b1      	cmp	r9, r6
d0080646:	f000 8523 	beq.w	d0081090 <emit_known_word.constprop.0+0xd24>
d008064a:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d008064e:	f1bc 0f00 	cmp.w	ip, #0
d0080652:	d1e9      	bne.n	d0080628 <emit_known_word.constprop.0+0x2bc>
d0080654:	7803      	ldrb	r3, [r0, #0]
d0080656:	f1a3 0641 	sub.w	r6, r3, #65	; 0x41
d008065a:	461d      	mov	r5, r3
d008065c:	2e19      	cmp	r6, #25
d008065e:	d802      	bhi.n	d0080666 <emit_known_word.constprop.0+0x2fa>
d0080660:	f103 0520 	add.w	r5, r3, #32
d0080664:	b2ed      	uxtb	r5, r5
d0080666:	2d69      	cmp	r5, #105	; 0x69
d0080668:	d102      	bne.n	d0080670 <emit_known_word.constprop.0+0x304>
d008066a:	2901      	cmp	r1, #1
d008066c:	f000 8546 	beq.w	d00810fc <emit_known_word.constprop.0+0xd90>
d0080670:	f1a3 0541 	sub.w	r5, r3, #65	; 0x41
d0080674:	2d19      	cmp	r5, #25
d0080676:	d801      	bhi.n	d008067c <emit_known_word.constprop.0+0x310>
d0080678:	3320      	adds	r3, #32
d008067a:	b2db      	uxtb	r3, r3
d008067c:	2b61      	cmp	r3, #97	; 0x61
d008067e:	d102      	bne.n	d0080686 <emit_known_word.constprop.0+0x31a>
d0080680:	2901      	cmp	r1, #1
d0080682:	f000 85be 	beq.w	d0081202 <emit_known_word.constprop.0+0xe96>
d0080686:	f8df b514 	ldr.w	fp, [pc, #1300]	; d0080b9c <emit_known_word.constprop.0+0x830>
d008068a:	4616      	mov	r6, r2
d008068c:	fa10 f98a 	uxtah	r9, r0, sl
d0080690:	f04f 0c61 	mov.w	ip, #97	; 0x61
d0080694:	465f      	mov	r7, fp
d0080696:	f1cb 0801 	rsb	r8, fp, #1
d008069a:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d008069e:	eb08 0307 	add.w	r3, r8, r7
d00806a2:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00806a6:	b29b      	uxth	r3, r3
d00806a8:	f1be 0f19 	cmp.w	lr, #25
d00806ac:	d801      	bhi.n	d00806b2 <emit_known_word.constprop.0+0x346>
d00806ae:	3520      	adds	r5, #32
d00806b0:	b2ed      	uxtb	r5, r5
d00806b2:	45ac      	cmp	ip, r5
d00806b4:	d107      	bne.n	d00806c6 <emit_known_word.constprop.0+0x35a>
d00806b6:	45b1      	cmp	r9, r6
d00806b8:	f000 8527 	beq.w	d008110a <emit_known_word.constprop.0+0xd9e>
d00806bc:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d00806c0:	f1bc 0f00 	cmp.w	ip, #0
d00806c4:	d1e9      	bne.n	d008069a <emit_known_word.constprop.0+0x32e>
d00806c6:	f8df b4d8 	ldr.w	fp, [pc, #1240]	; d0080ba0 <emit_known_word.constprop.0+0x834>
d00806ca:	4616      	mov	r6, r2
d00806cc:	fa10 f98a 	uxtah	r9, r0, sl
d00806d0:	f04f 0c68 	mov.w	ip, #104	; 0x68
d00806d4:	465f      	mov	r7, fp
d00806d6:	f1cb 0801 	rsb	r8, fp, #1
d00806da:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d00806de:	eb08 0307 	add.w	r3, r8, r7
d00806e2:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00806e6:	b29b      	uxth	r3, r3
d00806e8:	f1be 0f19 	cmp.w	lr, #25
d00806ec:	d801      	bhi.n	d00806f2 <emit_known_word.constprop.0+0x386>
d00806ee:	3520      	adds	r5, #32
d00806f0:	b2ed      	uxtb	r5, r5
d00806f2:	4565      	cmp	r5, ip
d00806f4:	d107      	bne.n	d0080706 <emit_known_word.constprop.0+0x39a>
d00806f6:	45b1      	cmp	r9, r6
d00806f8:	f000 85c0 	beq.w	d008127c <emit_known_word.constprop.0+0xf10>
d00806fc:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080700:	f1bc 0f00 	cmp.w	ip, #0
d0080704:	d1e9      	bne.n	d00806da <emit_known_word.constprop.0+0x36e>
d0080706:	f8df b49c 	ldr.w	fp, [pc, #1180]	; d0080ba4 <emit_known_word.constprop.0+0x838>
d008070a:	4616      	mov	r6, r2
d008070c:	fa10 f98a 	uxtah	r9, r0, sl
d0080710:	f04f 0c61 	mov.w	ip, #97	; 0x61
d0080714:	465f      	mov	r7, fp
d0080716:	f1cb 0801 	rsb	r8, fp, #1
d008071a:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d008071e:	eb08 0307 	add.w	r3, r8, r7
d0080722:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080726:	b29b      	uxth	r3, r3
d0080728:	f1be 0f19 	cmp.w	lr, #25
d008072c:	d801      	bhi.n	d0080732 <emit_known_word.constprop.0+0x3c6>
d008072e:	3520      	adds	r5, #32
d0080730:	b2ed      	uxtb	r5, r5
d0080732:	45ac      	cmp	ip, r5
d0080734:	d107      	bne.n	d0080746 <emit_known_word.constprop.0+0x3da>
d0080736:	45b1      	cmp	r9, r6
d0080738:	f000 8666 	beq.w	d0081408 <emit_known_word.constprop.0+0x109c>
d008073c:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080740:	f1bc 0f00 	cmp.w	ip, #0
d0080744:	d1e9      	bne.n	d008071a <emit_known_word.constprop.0+0x3ae>
d0080746:	f8df b460 	ldr.w	fp, [pc, #1120]	; d0080ba8 <emit_known_word.constprop.0+0x83c>
d008074a:	4616      	mov	r6, r2
d008074c:	fa10 f98a 	uxtah	r9, r0, sl
d0080750:	f04f 0c6e 	mov.w	ip, #110	; 0x6e
d0080754:	465f      	mov	r7, fp
d0080756:	f1cb 0801 	rsb	r8, fp, #1
d008075a:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d008075e:	eb08 0307 	add.w	r3, r8, r7
d0080762:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080766:	b29b      	uxth	r3, r3
d0080768:	f1be 0f19 	cmp.w	lr, #25
d008076c:	d801      	bhi.n	d0080772 <emit_known_word.constprop.0+0x406>
d008076e:	3520      	adds	r5, #32
d0080770:	b2ed      	uxtb	r5, r5
d0080772:	45ac      	cmp	ip, r5
d0080774:	d107      	bne.n	d0080786 <emit_known_word.constprop.0+0x41a>
d0080776:	45b1      	cmp	r9, r6
d0080778:	f000 8722 	beq.w	d00815c0 <emit_known_word.constprop.0+0x1254>
d008077c:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080780:	f1bc 0f00 	cmp.w	ip, #0
d0080784:	d1e9      	bne.n	d008075a <emit_known_word.constprop.0+0x3ee>
d0080786:	f8df b424 	ldr.w	fp, [pc, #1060]	; d0080bac <emit_known_word.constprop.0+0x840>
d008078a:	4616      	mov	r6, r2
d008078c:	fa10 f98a 	uxtah	r9, r0, sl
d0080790:	f04f 0c65 	mov.w	ip, #101	; 0x65
d0080794:	465f      	mov	r7, fp
d0080796:	f1cb 0801 	rsb	r8, fp, #1
d008079a:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d008079e:	eb08 0307 	add.w	r3, r8, r7
d00807a2:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00807a6:	b29b      	uxth	r3, r3
d00807a8:	f1be 0f19 	cmp.w	lr, #25
d00807ac:	d801      	bhi.n	d00807b2 <emit_known_word.constprop.0+0x446>
d00807ae:	3520      	adds	r5, #32
d00807b0:	b2ed      	uxtb	r5, r5
d00807b2:	4565      	cmp	r5, ip
d00807b4:	d107      	bne.n	d00807c6 <emit_known_word.constprop.0+0x45a>
d00807b6:	45b1      	cmp	r9, r6
d00807b8:	f000 87b6 	beq.w	d0081728 <emit_known_word.constprop.0+0x13bc>
d00807bc:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d00807c0:	f1bc 0f00 	cmp.w	ip, #0
d00807c4:	d1e9      	bne.n	d008079a <emit_known_word.constprop.0+0x42e>
d00807c6:	f8df b3e8 	ldr.w	fp, [pc, #1000]	; d0080bb0 <emit_known_word.constprop.0+0x844>
d00807ca:	4616      	mov	r6, r2
d00807cc:	fa10 f98a 	uxtah	r9, r0, sl
d00807d0:	f04f 0c73 	mov.w	ip, #115	; 0x73
d00807d4:	465f      	mov	r7, fp
d00807d6:	f1cb 0801 	rsb	r8, fp, #1
d00807da:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d00807de:	eb08 0307 	add.w	r3, r8, r7
d00807e2:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d00807e6:	b29b      	uxth	r3, r3
d00807e8:	f1be 0f19 	cmp.w	lr, #25
d00807ec:	d801      	bhi.n	d00807f2 <emit_known_word.constprop.0+0x486>
d00807ee:	3520      	adds	r5, #32
d00807f0:	b2ed      	uxtb	r5, r5
d00807f2:	45ac      	cmp	ip, r5
d00807f4:	d107      	bne.n	d0080806 <emit_known_word.constprop.0+0x49a>
d00807f6:	45b1      	cmp	r9, r6
d00807f8:	f001 805e 	beq.w	d00818b8 <emit_known_word.constprop.0+0x154c>
d00807fc:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080800:	f1bc 0f00 	cmp.w	ip, #0
d0080804:	d1e9      	bne.n	d00807da <emit_known_word.constprop.0+0x46e>
d0080806:	f8df b3ac 	ldr.w	fp, [pc, #940]	; d0080bb4 <emit_known_word.constprop.0+0x848>
d008080a:	4616      	mov	r6, r2
d008080c:	fa10 f98a 	uxtah	r9, r0, sl
d0080810:	f04f 0c73 	mov.w	ip, #115	; 0x73
d0080814:	465f      	mov	r7, fp
d0080816:	f1cb 0801 	rsb	r8, fp, #1
d008081a:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d008081e:	eb08 0307 	add.w	r3, r8, r7
d0080822:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080826:	b29b      	uxth	r3, r3
d0080828:	f1be 0f19 	cmp.w	lr, #25
d008082c:	d801      	bhi.n	d0080832 <emit_known_word.constprop.0+0x4c6>
d008082e:	3520      	adds	r5, #32
d0080830:	b2ed      	uxtb	r5, r5
d0080832:	4565      	cmp	r5, ip
d0080834:	d107      	bne.n	d0080846 <emit_known_word.constprop.0+0x4da>
d0080836:	45b1      	cmp	r9, r6
d0080838:	f001 80e0 	beq.w	d00819fc <emit_known_word.constprop.0+0x1690>
d008083c:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080840:	f1bc 0f00 	cmp.w	ip, #0
d0080844:	d1e9      	bne.n	d008081a <emit_known_word.constprop.0+0x4ae>
d0080846:	f8df b370 	ldr.w	fp, [pc, #880]	; d0080bb8 <emit_known_word.constprop.0+0x84c>
d008084a:	4616      	mov	r6, r2
d008084c:	fa10 f98a 	uxtah	r9, r0, sl
d0080850:	f04f 0c68 	mov.w	ip, #104	; 0x68
d0080854:	465f      	mov	r7, fp
d0080856:	f1cb 0801 	rsb	r8, fp, #1
d008085a:	f816 5f01 	ldrb.w	r5, [r6, #1]!
d008085e:	eb08 0307 	add.w	r3, r8, r7
d0080862:	f1a5 0e41 	sub.w	lr, r5, #65	; 0x41
d0080866:	b29b      	uxth	r3, r3
d0080868:	f1be 0f19 	cmp.w	lr, #25
d008086c:	d801      	bhi.n	d0080872 <emit_known_word.constprop.0+0x506>
d008086e:	3520      	adds	r5, #32
d0080870:	b2ed      	uxtb	r5, r5
d0080872:	45ac      	cmp	ip, r5
d0080874:	d107      	bne.n	d0080886 <emit_known_word.constprop.0+0x51a>
d0080876:	45b1      	cmp	r9, r6
d0080878:	f001 80ca 	beq.w	d0081a10 <emit_known_word.constprop.0+0x16a4>
d008087c:	f817 cf01 	ldrb.w	ip, [r7, #1]!
d0080880:	f1bc 0f00 	cmp.w	ip, #0
d0080884:	d1e9      	bne.n	d008085a <emit_known_word.constprop.0+0x4ee>
d0080886:	4eaf      	ldr	r6, [pc, #700]	; (d0080b44 <emit_known_word.constprop.0+0x7d8>)
d0080888:	fa10 fa8a 	uxtah	sl, r0, sl
d008088c:	2068      	movs	r0, #104	; 0x68
d008088e:	4637      	mov	r7, r6
d0080890:	f1c6 0e01 	rsb	lr, r6, #1
d0080894:	e006      	b.n	d00808a4 <emit_known_word.constprop.0+0x538>
d0080896:	4592      	cmp	sl, r2
d0080898:	f001 816d 	beq.w	d0081b76 <emit_known_word.constprop.0+0x180a>
d008089c:	f817 0f01 	ldrb.w	r0, [r7, #1]!
d00808a0:	2800      	cmp	r0, #0
d00808a2:	d06b      	beq.n	d008097c <emit_known_word.constprop.0+0x610>
d00808a4:	f812 5f01 	ldrb.w	r5, [r2, #1]!
d00808a8:	eb0e 0307 	add.w	r3, lr, r7
d00808ac:	f1a5 0c41 	sub.w	ip, r5, #65	; 0x41
d00808b0:	b29b      	uxth	r3, r3
d00808b2:	f1bc 0f19 	cmp.w	ip, #25
d00808b6:	d801      	bhi.n	d00808bc <emit_known_word.constprop.0+0x550>
d00808b8:	3520      	adds	r5, #32
d00808ba:	b2ed      	uxtb	r5, r5
d00808bc:	42a8      	cmp	r0, r5
d00808be:	d0ea      	beq.n	d0080896 <emit_known_word.constprop.0+0x52a>
d00808c0:	2000      	movs	r0, #0
d00808c2:	e05b      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d00808c4:	f81e 8001 	ldrb.w	r8, [lr, r1]
d00808c8:	f1b8 0f00 	cmp.w	r8, #0
d00808cc:	f47f ad70 	bne.w	d00803b0 <emit_known_word.constprop.0+0x44>
d00808d0:	8823      	ldrh	r3, [r4, #0]
d00808d2:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00808d6:	d250      	bcs.n	d008097a <emit_known_word.constprop.0+0x60e>
d00808d8:	4d9b      	ldr	r5, [pc, #620]	; (d0080b48 <emit_known_word.constprop.0+0x7dc>)
d00808da:	210e      	movs	r1, #14
d00808dc:	2244      	movs	r2, #68	; 0x44
d00808de:	4e9b      	ldr	r6, [pc, #620]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d00808e0:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00808e4:	8823      	ldrh	r3, [r4, #0]
d00808e6:	4630      	mov	r0, r6
d00808e8:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00808ec:	805a      	strh	r2, [r3, #2]
d00808ee:	8827      	ldrh	r7, [r4, #0]
d00808f0:	3701      	adds	r7, #1
d00808f2:	b2bf      	uxth	r7, r7
d00808f4:	8027      	strh	r7, [r4, #0]
d00808f6:	f003 fc0e 	bl	d0084116 <strlen>
d00808fa:	1d02      	adds	r2, r0, #4
d00808fc:	4603      	mov	r3, r0
d00808fe:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080902:	d208      	bcs.n	d0080916 <emit_known_word.constprop.0+0x5aa>
d0080904:	2800      	cmp	r0, #0
d0080906:	f040 828e 	bne.w	d0080e26 <emit_known_word.constprop.0+0xaba>
d008090a:	18f0      	adds	r0, r6, r3
d008090c:	2203      	movs	r2, #3
d008090e:	4990      	ldr	r1, [pc, #576]	; (d0080b50 <emit_known_word.constprop.0+0x7e4>)
d0080910:	f003 fa64 	bl	d0083ddc <memcpy>
d0080914:	8827      	ldrh	r7, [r4, #0]
d0080916:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d008091a:	d22e      	bcs.n	d008097a <emit_known_word.constprop.0+0x60e>
d008091c:	2301      	movs	r3, #1
d008091e:	2278      	movs	r2, #120	; 0x78
d0080920:	488a      	ldr	r0, [pc, #552]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d0080922:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080926:	8823      	ldrh	r3, [r4, #0]
d0080928:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d008092c:	806a      	strh	r2, [r5, #2]
d008092e:	8823      	ldrh	r3, [r4, #0]
d0080930:	3301      	adds	r3, #1
d0080932:	8023      	strh	r3, [r4, #0]
d0080934:	f003 fbef 	bl	d0084116 <strlen>
d0080938:	1d02      	adds	r2, r0, #4
d008093a:	4603      	mov	r3, r0
d008093c:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080940:	d21b      	bcs.n	d008097a <emit_known_word.constprop.0+0x60e>
d0080942:	b140      	cbz	r0, d0080956 <emit_known_word.constprop.0+0x5ea>
d0080944:	1832      	adds	r2, r6, r0
d0080946:	2100      	movs	r1, #0
d0080948:	2420      	movs	r4, #32
d008094a:	4880      	ldr	r0, [pc, #512]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d008094c:	54f4      	strb	r4, [r6, r3]
d008094e:	7051      	strb	r1, [r2, #1]
d0080950:	f003 fbe1 	bl	d0084116 <strlen>
d0080954:	4603      	mov	r3, r0
d0080956:	18f0      	adds	r0, r6, r3
d0080958:	2203      	movs	r2, #3
d008095a:	497e      	ldr	r1, [pc, #504]	; (d0080b54 <emit_known_word.constprop.0+0x7e8>)
d008095c:	f003 fa3e 	bl	d0083ddc <memcpy>
d0080960:	2001      	movs	r0, #1
d0080962:	e00b      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d0080964:	f818 8001 	ldrb.w	r8, [r8, r1]
d0080968:	f1b8 0f00 	cmp.w	r8, #0
d008096c:	f47f ada2 	bne.w	d00804b4 <emit_known_word.constprop.0+0x148>
d0080970:	8823      	ldrh	r3, [r4, #0]
d0080972:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080976:	f0c0 8260 	bcc.w	d0080e3a <emit_known_word.constprop.0+0xace>
d008097a:	2001      	movs	r0, #1
d008097c:	b003      	add	sp, #12
d008097e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080982:	f818 8001 	ldrb.w	r8, [r8, r1]
d0080986:	f1b8 0f00 	cmp.w	r8, #0
d008098a:	f47f ad2b 	bne.w	d00803e4 <emit_known_word.constprop.0+0x78>
d008098e:	8823      	ldrh	r3, [r4, #0]
d0080990:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080994:	d2f1      	bcs.n	d008097a <emit_known_word.constprop.0+0x60e>
d0080996:	4d6c      	ldr	r5, [pc, #432]	; (d0080b48 <emit_known_word.constprop.0+0x7dc>)
d0080998:	210e      	movs	r1, #14
d008099a:	2244      	movs	r2, #68	; 0x44
d008099c:	4e6b      	ldr	r6, [pc, #428]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d008099e:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00809a2:	8823      	ldrh	r3, [r4, #0]
d00809a4:	4630      	mov	r0, r6
d00809a6:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00809aa:	805a      	strh	r2, [r3, #2]
d00809ac:	8827      	ldrh	r7, [r4, #0]
d00809ae:	3701      	adds	r7, #1
d00809b0:	b2bf      	uxth	r7, r7
d00809b2:	8027      	strh	r7, [r4, #0]
d00809b4:	f003 fbaf 	bl	d0084116 <strlen>
d00809b8:	1d02      	adds	r2, r0, #4
d00809ba:	4603      	mov	r3, r0
d00809bc:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00809c0:	d208      	bcs.n	d00809d4 <emit_known_word.constprop.0+0x668>
d00809c2:	2800      	cmp	r0, #0
d00809c4:	f040 8268 	bne.w	d0080e98 <emit_known_word.constprop.0+0xb2c>
d00809c8:	18f0      	adds	r0, r6, r3
d00809ca:	2203      	movs	r2, #3
d00809cc:	4960      	ldr	r1, [pc, #384]	; (d0080b50 <emit_known_word.constprop.0+0x7e4>)
d00809ce:	f003 fa05 	bl	d0083ddc <memcpy>
d00809d2:	8827      	ldrh	r7, [r4, #0]
d00809d4:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d00809d8:	d2cf      	bcs.n	d008097a <emit_known_word.constprop.0+0x60e>
d00809da:	2307      	movs	r3, #7
d00809dc:	226e      	movs	r2, #110	; 0x6e
d00809de:	485b      	ldr	r0, [pc, #364]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d00809e0:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d00809e4:	8823      	ldrh	r3, [r4, #0]
d00809e6:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00809ea:	805a      	strh	r2, [r3, #2]
d00809ec:	8827      	ldrh	r7, [r4, #0]
d00809ee:	3701      	adds	r7, #1
d00809f0:	b2bf      	uxth	r7, r7
d00809f2:	8027      	strh	r7, [r4, #0]
d00809f4:	f003 fb8f 	bl	d0084116 <strlen>
d00809f8:	1d03      	adds	r3, r0, #4
d00809fa:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00809fe:	d208      	bcs.n	d0080a12 <emit_known_word.constprop.0+0x6a6>
d0080a00:	2800      	cmp	r0, #0
d0080a02:	f040 8240 	bne.w	d0080e86 <emit_known_word.constprop.0+0xb1a>
d0080a06:	4430      	add	r0, r6
d0080a08:	2203      	movs	r2, #3
d0080a0a:	4953      	ldr	r1, [pc, #332]	; (d0080b58 <emit_known_word.constprop.0+0x7ec>)
d0080a0c:	f003 f9e6 	bl	d0083ddc <memcpy>
d0080a10:	8827      	ldrh	r7, [r4, #0]
d0080a12:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080a16:	d2b0      	bcs.n	d008097a <emit_known_word.constprop.0+0x60e>
d0080a18:	231a      	movs	r3, #26
d0080a1a:	2252      	movs	r2, #82	; 0x52
d0080a1c:	484b      	ldr	r0, [pc, #300]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d0080a1e:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080a22:	8823      	ldrh	r3, [r4, #0]
d0080a24:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d0080a28:	806a      	strh	r2, [r5, #2]
d0080a2a:	8823      	ldrh	r3, [r4, #0]
d0080a2c:	3301      	adds	r3, #1
d0080a2e:	8023      	strh	r3, [r4, #0]
d0080a30:	f003 fb71 	bl	d0084116 <strlen>
d0080a34:	1cc2      	adds	r2, r0, #3
d0080a36:	4603      	mov	r3, r0
d0080a38:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080a3c:	d29d      	bcs.n	d008097a <emit_known_word.constprop.0+0x60e>
d0080a3e:	b140      	cbz	r0, d0080a52 <emit_known_word.constprop.0+0x6e6>
d0080a40:	1832      	adds	r2, r6, r0
d0080a42:	2100      	movs	r1, #0
d0080a44:	2420      	movs	r4, #32
d0080a46:	4841      	ldr	r0, [pc, #260]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d0080a48:	54f4      	strb	r4, [r6, r3]
d0080a4a:	7051      	strb	r1, [r2, #1]
d0080a4c:	f003 fb63 	bl	d0084116 <strlen>
d0080a50:	4603      	mov	r3, r0
d0080a52:	18f0      	adds	r0, r6, r3
d0080a54:	2202      	movs	r2, #2
d0080a56:	4941      	ldr	r1, [pc, #260]	; (d0080b5c <emit_known_word.constprop.0+0x7f0>)
d0080a58:	f003 f9c0 	bl	d0083ddc <memcpy>
d0080a5c:	2001      	movs	r0, #1
d0080a5e:	e78d      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d0080a60:	f818 8001 	ldrb.w	r8, [r8, r1]
d0080a64:	f1b8 0f00 	cmp.w	r8, #0
d0080a68:	f47f acd6 	bne.w	d0080418 <emit_known_word.constprop.0+0xac>
d0080a6c:	8823      	ldrh	r3, [r4, #0]
d0080a6e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080a72:	d282      	bcs.n	d008097a <emit_known_word.constprop.0+0x60e>
d0080a74:	4d34      	ldr	r5, [pc, #208]	; (d0080b48 <emit_known_word.constprop.0+0x7dc>)
d0080a76:	210e      	movs	r1, #14
d0080a78:	2244      	movs	r2, #68	; 0x44
d0080a7a:	4e34      	ldr	r6, [pc, #208]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d0080a7c:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0080a80:	8823      	ldrh	r3, [r4, #0]
d0080a82:	4630      	mov	r0, r6
d0080a84:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0080a88:	805a      	strh	r2, [r3, #2]
d0080a8a:	8827      	ldrh	r7, [r4, #0]
d0080a8c:	3701      	adds	r7, #1
d0080a8e:	b2bf      	uxth	r7, r7
d0080a90:	8027      	strh	r7, [r4, #0]
d0080a92:	f003 fb40 	bl	d0084116 <strlen>
d0080a96:	1d02      	adds	r2, r0, #4
d0080a98:	4603      	mov	r3, r0
d0080a9a:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080a9e:	d208      	bcs.n	d0080ab2 <emit_known_word.constprop.0+0x746>
d0080aa0:	2800      	cmp	r0, #0
d0080aa2:	f040 8203 	bne.w	d0080eac <emit_known_word.constprop.0+0xb40>
d0080aa6:	18f0      	adds	r0, r6, r3
d0080aa8:	2203      	movs	r2, #3
d0080aaa:	4929      	ldr	r1, [pc, #164]	; (d0080b50 <emit_known_word.constprop.0+0x7e4>)
d0080aac:	f003 f996 	bl	d0083ddc <memcpy>
d0080ab0:	8827      	ldrh	r7, [r4, #0]
d0080ab2:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080ab6:	f4bf af60 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080aba:	2302      	movs	r3, #2
d0080abc:	2282      	movs	r2, #130	; 0x82
d0080abe:	4823      	ldr	r0, [pc, #140]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d0080ac0:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080ac4:	8823      	ldrh	r3, [r4, #0]
d0080ac6:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0080aca:	805a      	strh	r2, [r3, #2]
d0080acc:	8827      	ldrh	r7, [r4, #0]
d0080ace:	3701      	adds	r7, #1
d0080ad0:	b2bf      	uxth	r7, r7
d0080ad2:	8027      	strh	r7, [r4, #0]
d0080ad4:	f003 fb1f 	bl	d0084116 <strlen>
d0080ad8:	1d03      	adds	r3, r0, #4
d0080ada:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0080ade:	d208      	bcs.n	d0080af2 <emit_known_word.constprop.0+0x786>
d0080ae0:	2800      	cmp	r0, #0
d0080ae2:	f040 81ed 	bne.w	d0080ec0 <emit_known_word.constprop.0+0xb54>
d0080ae6:	4430      	add	r0, r6
d0080ae8:	2203      	movs	r2, #3
d0080aea:	491d      	ldr	r1, [pc, #116]	; (d0080b60 <emit_known_word.constprop.0+0x7f4>)
d0080aec:	f003 f976 	bl	d0083ddc <memcpy>
d0080af0:	8827      	ldrh	r7, [r4, #0]
d0080af2:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080af6:	f4bf af40 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080afa:	231c      	movs	r3, #28
d0080afc:	223a      	movs	r2, #58	; 0x3a
d0080afe:	4813      	ldr	r0, [pc, #76]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d0080b00:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080b04:	8823      	ldrh	r3, [r4, #0]
d0080b06:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d0080b0a:	806a      	strh	r2, [r5, #2]
d0080b0c:	8823      	ldrh	r3, [r4, #0]
d0080b0e:	3301      	adds	r3, #1
d0080b10:	8023      	strh	r3, [r4, #0]
d0080b12:	f003 fb00 	bl	d0084116 <strlen>
d0080b16:	1cc2      	adds	r2, r0, #3
d0080b18:	4603      	mov	r3, r0
d0080b1a:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080b1e:	f4bf af2c 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080b22:	b140      	cbz	r0, d0080b36 <emit_known_word.constprop.0+0x7ca>
d0080b24:	1832      	adds	r2, r6, r0
d0080b26:	2100      	movs	r1, #0
d0080b28:	2420      	movs	r4, #32
d0080b2a:	4808      	ldr	r0, [pc, #32]	; (d0080b4c <emit_known_word.constprop.0+0x7e0>)
d0080b2c:	54f4      	strb	r4, [r6, r3]
d0080b2e:	7051      	strb	r1, [r2, #1]
d0080b30:	f003 faf1 	bl	d0084116 <strlen>
d0080b34:	4603      	mov	r3, r0
d0080b36:	18f0      	adds	r0, r6, r3
d0080b38:	2202      	movs	r2, #2
d0080b3a:	490a      	ldr	r1, [pc, #40]	; (d0080b64 <emit_known_word.constprop.0+0x7f8>)
d0080b3c:	f003 f94e 	bl	d0083ddc <memcpy>
d0080b40:	2001      	movs	r0, #1
d0080b42:	e71b      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d0080b44:	d00846f4 	.word	0xd00846f4
d0080b48:	d0084c08 	.word	0xd0084c08
d0080b4c:	d00c61b8 	.word	0xd00c61b8
d0080b50:	d0084620 	.word	0xd0084620
d0080b54:	d0084624 	.word	0xd0084624
d0080b58:	d0084630 	.word	0xd0084630
d0080b5c:	d0084634 	.word	0xd0084634
d0080b60:	d0084640 	.word	0xd0084640
d0080b64:	d0084644 	.word	0xd0084644
d0080b68:	d008461c 	.word	0xd008461c
d0080b6c:	d0084628 	.word	0xd0084628
d0080b70:	d0084638 	.word	0xd0084638
d0080b74:	d0084648 	.word	0xd0084648
d0080b78:	d0084650 	.word	0xd0084650
d0080b7c:	d008465c 	.word	0xd008465c
d0080b80:	d0084668 	.word	0xd0084668
d0080b84:	d0084674 	.word	0xd0084674
d0080b88:	d0084678 	.word	0xd0084678
d0080b8c:	d008467c 	.word	0xd008467c
d0080b90:	d0084680 	.word	0xd0084680
d0080b94:	d0084688 	.word	0xd0084688
d0080b98:	d0084690 	.word	0xd0084690
d0080b9c:	d0084694 	.word	0xd0084694
d0080ba0:	d00846a0 	.word	0xd00846a0
d0080ba4:	d00846b4 	.word	0xd00846b4
d0080ba8:	d00846c4 	.word	0xd00846c4
d0080bac:	d00846d0 	.word	0xd00846d0
d0080bb0:	d00846dc 	.word	0xd00846dc
d0080bb4:	d00846e4 	.word	0xd00846e4
d0080bb8:	d00846ec 	.word	0xd00846ec
d0080bbc:	f818 3001 	ldrb.w	r3, [r8, r1]
d0080bc0:	2b00      	cmp	r3, #0
d0080bc2:	f47f ac43 	bne.w	d008044c <emit_known_word.constprop.0+0xe0>
d0080bc6:	8823      	ldrh	r3, [r4, #0]
d0080bc8:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080bcc:	f4bf aed5 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080bd0:	4dc4      	ldr	r5, [pc, #784]	; (d0080ee4 <emit_known_word.constprop.0+0xb78>)
d0080bd2:	210e      	movs	r1, #14
d0080bd4:	2244      	movs	r2, #68	; 0x44
d0080bd6:	4ec4      	ldr	r6, [pc, #784]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080bd8:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0080bdc:	8823      	ldrh	r3, [r4, #0]
d0080bde:	4630      	mov	r0, r6
d0080be0:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0080be4:	805a      	strh	r2, [r3, #2]
d0080be6:	8827      	ldrh	r7, [r4, #0]
d0080be8:	3701      	adds	r7, #1
d0080bea:	b2bf      	uxth	r7, r7
d0080bec:	8027      	strh	r7, [r4, #0]
d0080bee:	f003 fa92 	bl	d0084116 <strlen>
d0080bf2:	1d03      	adds	r3, r0, #4
d0080bf4:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0080bf8:	d20e      	bcs.n	d0080c18 <emit_known_word.constprop.0+0x8ac>
d0080bfa:	b138      	cbz	r0, d0080c0c <emit_known_word.constprop.0+0x8a0>
d0080bfc:	2120      	movs	r1, #32
d0080bfe:	1833      	adds	r3, r6, r0
d0080c00:	2200      	movs	r2, #0
d0080c02:	5431      	strb	r1, [r6, r0]
d0080c04:	4630      	mov	r0, r6
d0080c06:	705a      	strb	r2, [r3, #1]
d0080c08:	f003 fa85 	bl	d0084116 <strlen>
d0080c0c:	4430      	add	r0, r6
d0080c0e:	2203      	movs	r2, #3
d0080c10:	49b6      	ldr	r1, [pc, #728]	; (d0080eec <emit_known_word.constprop.0+0xb80>)
d0080c12:	f003 f8e3 	bl	d0083ddc <memcpy>
d0080c16:	8827      	ldrh	r7, [r4, #0]
d0080c18:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080c1c:	f4bf aead 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080c20:	2305      	movs	r3, #5
d0080c22:	227d      	movs	r2, #125	; 0x7d
d0080c24:	48b0      	ldr	r0, [pc, #704]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080c26:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080c2a:	8823      	ldrh	r3, [r4, #0]
d0080c2c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0080c30:	805a      	strh	r2, [r3, #2]
d0080c32:	8827      	ldrh	r7, [r4, #0]
d0080c34:	3701      	adds	r7, #1
d0080c36:	b2bf      	uxth	r7, r7
d0080c38:	8027      	strh	r7, [r4, #0]
d0080c3a:	f003 fa6c 	bl	d0084116 <strlen>
d0080c3e:	1d03      	adds	r3, r0, #4
d0080c40:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0080c44:	d20e      	bcs.n	d0080c64 <emit_known_word.constprop.0+0x8f8>
d0080c46:	b138      	cbz	r0, d0080c58 <emit_known_word.constprop.0+0x8ec>
d0080c48:	2120      	movs	r1, #32
d0080c4a:	1833      	adds	r3, r6, r0
d0080c4c:	2200      	movs	r2, #0
d0080c4e:	5431      	strb	r1, [r6, r0]
d0080c50:	48a5      	ldr	r0, [pc, #660]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080c52:	705a      	strb	r2, [r3, #1]
d0080c54:	f003 fa5f 	bl	d0084116 <strlen>
d0080c58:	4430      	add	r0, r6
d0080c5a:	2203      	movs	r2, #3
d0080c5c:	49a4      	ldr	r1, [pc, #656]	; (d0080ef0 <emit_known_word.constprop.0+0xb84>)
d0080c5e:	f003 f8bd 	bl	d0083ddc <memcpy>
d0080c62:	8827      	ldrh	r7, [r4, #0]
d0080c64:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080c68:	f4bf ae87 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080c6c:	2319      	movs	r3, #25
d0080c6e:	2258      	movs	r2, #88	; 0x58
d0080c70:	489d      	ldr	r0, [pc, #628]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080c72:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080c76:	8823      	ldrh	r3, [r4, #0]
d0080c78:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d0080c7c:	806a      	strh	r2, [r5, #2]
d0080c7e:	8823      	ldrh	r3, [r4, #0]
d0080c80:	3301      	adds	r3, #1
d0080c82:	8023      	strh	r3, [r4, #0]
d0080c84:	f003 fa47 	bl	d0084116 <strlen>
d0080c88:	1cc2      	adds	r2, r0, #3
d0080c8a:	4603      	mov	r3, r0
d0080c8c:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080c90:	f4bf ae73 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080c94:	b140      	cbz	r0, d0080ca8 <emit_known_word.constprop.0+0x93c>
d0080c96:	1832      	adds	r2, r6, r0
d0080c98:	2100      	movs	r1, #0
d0080c9a:	2420      	movs	r4, #32
d0080c9c:	4892      	ldr	r0, [pc, #584]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080c9e:	54f4      	strb	r4, [r6, r3]
d0080ca0:	7051      	strb	r1, [r2, #1]
d0080ca2:	f003 fa38 	bl	d0084116 <strlen>
d0080ca6:	4603      	mov	r3, r0
d0080ca8:	18f0      	adds	r0, r6, r3
d0080caa:	2202      	movs	r2, #2
d0080cac:	4991      	ldr	r1, [pc, #580]	; (d0080ef4 <emit_known_word.constprop.0+0xb88>)
d0080cae:	f003 f895 	bl	d0083ddc <memcpy>
d0080cb2:	2001      	movs	r0, #1
d0080cb4:	b003      	add	sp, #12
d0080cb6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080cba:	f818 3001 	ldrb.w	r3, [r8, r1]
d0080cbe:	2b00      	cmp	r3, #0
d0080cc0:	d081      	beq.n	d0080bc6 <emit_known_word.constprop.0+0x85a>
d0080cc2:	f7ff bbdd 	b.w	d0080480 <emit_known_word.constprop.0+0x114>
d0080cc6:	f818 8001 	ldrb.w	r8, [r8, r1]
d0080cca:	f1b8 0f00 	cmp.w	r8, #0
d0080cce:	f47f ac0b 	bne.w	d00804e8 <emit_known_word.constprop.0+0x17c>
d0080cd2:	8823      	ldrh	r3, [r4, #0]
d0080cd4:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080cd8:	f4bf ae4f 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080cdc:	4d81      	ldr	r5, [pc, #516]	; (d0080ee4 <emit_known_word.constprop.0+0xb78>)
d0080cde:	f04f 0920 	mov.w	r9, #32
d0080ce2:	2246      	movs	r2, #70	; 0x46
d0080ce4:	4e80      	ldr	r6, [pc, #512]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080ce6:	f805 9023 	strb.w	r9, [r5, r3, lsl #2]
d0080cea:	8823      	ldrh	r3, [r4, #0]
d0080cec:	4630      	mov	r0, r6
d0080cee:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0080cf2:	805a      	strh	r2, [r3, #2]
d0080cf4:	8827      	ldrh	r7, [r4, #0]
d0080cf6:	3701      	adds	r7, #1
d0080cf8:	b2bf      	uxth	r7, r7
d0080cfa:	8027      	strh	r7, [r4, #0]
d0080cfc:	f003 fa0b 	bl	d0084116 <strlen>
d0080d00:	1cc3      	adds	r3, r0, #3
d0080d02:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0080d06:	d20e      	bcs.n	d0080d26 <emit_known_word.constprop.0+0x9ba>
d0080d08:	b138      	cbz	r0, d0080d1a <emit_known_word.constprop.0+0x9ae>
d0080d0a:	1833      	adds	r3, r6, r0
d0080d0c:	f806 9000 	strb.w	r9, [r6, r0]
d0080d10:	4630      	mov	r0, r6
d0080d12:	f883 8001 	strb.w	r8, [r3, #1]
d0080d16:	f003 f9fe 	bl	d0084116 <strlen>
d0080d1a:	4430      	add	r0, r6
d0080d1c:	2202      	movs	r2, #2
d0080d1e:	4976      	ldr	r1, [pc, #472]	; (d0080ef8 <emit_known_word.constprop.0+0xb8c>)
d0080d20:	f003 f85c 	bl	d0083ddc <memcpy>
d0080d24:	8827      	ldrh	r7, [r4, #0]
d0080d26:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080d2a:	f4bf ae26 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080d2e:	2306      	movs	r3, #6
d0080d30:	2287      	movs	r2, #135	; 0x87
d0080d32:	486d      	ldr	r0, [pc, #436]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080d34:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080d38:	8823      	ldrh	r3, [r4, #0]
d0080d3a:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d0080d3e:	806a      	strh	r2, [r5, #2]
d0080d40:	8823      	ldrh	r3, [r4, #0]
d0080d42:	3301      	adds	r3, #1
d0080d44:	8023      	strh	r3, [r4, #0]
d0080d46:	f003 f9e6 	bl	d0084116 <strlen>
d0080d4a:	1d02      	adds	r2, r0, #4
d0080d4c:	4603      	mov	r3, r0
d0080d4e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080d52:	f4bf ae12 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080d56:	b140      	cbz	r0, d0080d6a <emit_known_word.constprop.0+0x9fe>
d0080d58:	1832      	adds	r2, r6, r0
d0080d5a:	2100      	movs	r1, #0
d0080d5c:	2420      	movs	r4, #32
d0080d5e:	4862      	ldr	r0, [pc, #392]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080d60:	54f4      	strb	r4, [r6, r3]
d0080d62:	7051      	strb	r1, [r2, #1]
d0080d64:	f003 f9d7 	bl	d0084116 <strlen>
d0080d68:	4603      	mov	r3, r0
d0080d6a:	18f0      	adds	r0, r6, r3
d0080d6c:	2203      	movs	r2, #3
d0080d6e:	4963      	ldr	r1, [pc, #396]	; (d0080efc <emit_known_word.constprop.0+0xb90>)
d0080d70:	f003 f834 	bl	d0083ddc <memcpy>
d0080d74:	2001      	movs	r0, #1
d0080d76:	e601      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d0080d78:	f818 3001 	ldrb.w	r3, [r8, r1]
d0080d7c:	2b00      	cmp	r3, #0
d0080d7e:	f47f abcd 	bne.w	d008051c <emit_known_word.constprop.0+0x1b0>
d0080d82:	8823      	ldrh	r3, [r4, #0]
d0080d84:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080d88:	f4bf adf7 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080d8c:	4d55      	ldr	r5, [pc, #340]	; (d0080ee4 <emit_known_word.constprop.0+0xb78>)
d0080d8e:	211c      	movs	r1, #28
d0080d90:	223a      	movs	r2, #58	; 0x3a
d0080d92:	4e55      	ldr	r6, [pc, #340]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080d94:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0080d98:	8823      	ldrh	r3, [r4, #0]
d0080d9a:	4630      	mov	r0, r6
d0080d9c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0080da0:	805a      	strh	r2, [r3, #2]
d0080da2:	8827      	ldrh	r7, [r4, #0]
d0080da4:	3701      	adds	r7, #1
d0080da6:	b2bf      	uxth	r7, r7
d0080da8:	8027      	strh	r7, [r4, #0]
d0080daa:	f003 f9b4 	bl	d0084116 <strlen>
d0080dae:	1cc3      	adds	r3, r0, #3
d0080db0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0080db4:	d20e      	bcs.n	d0080dd4 <emit_known_word.constprop.0+0xa68>
d0080db6:	b138      	cbz	r0, d0080dc8 <emit_known_word.constprop.0+0xa5c>
d0080db8:	2120      	movs	r1, #32
d0080dba:	1833      	adds	r3, r6, r0
d0080dbc:	2200      	movs	r2, #0
d0080dbe:	5431      	strb	r1, [r6, r0]
d0080dc0:	4630      	mov	r0, r6
d0080dc2:	705a      	strb	r2, [r3, #1]
d0080dc4:	f003 f9a7 	bl	d0084116 <strlen>
d0080dc8:	4430      	add	r0, r6
d0080dca:	2202      	movs	r2, #2
d0080dcc:	494c      	ldr	r1, [pc, #304]	; (d0080f00 <emit_known_word.constprop.0+0xb94>)
d0080dce:	f003 f805 	bl	d0083ddc <memcpy>
d0080dd2:	8827      	ldrh	r7, [r4, #0]
d0080dd4:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080dd8:	f4bf adcf 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080ddc:	230a      	movs	r3, #10
d0080dde:	2287      	movs	r2, #135	; 0x87
d0080de0:	4841      	ldr	r0, [pc, #260]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080de2:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080de6:	8823      	ldrh	r3, [r4, #0]
d0080de8:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d0080dec:	806a      	strh	r2, [r5, #2]
d0080dee:	8823      	ldrh	r3, [r4, #0]
d0080df0:	3301      	adds	r3, #1
d0080df2:	8023      	strh	r3, [r4, #0]
d0080df4:	f003 f98f 	bl	d0084116 <strlen>
d0080df8:	1d02      	adds	r2, r0, #4
d0080dfa:	4603      	mov	r3, r0
d0080dfc:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080e00:	f4bf adbb 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080e04:	b140      	cbz	r0, d0080e18 <emit_known_word.constprop.0+0xaac>
d0080e06:	1832      	adds	r2, r6, r0
d0080e08:	2100      	movs	r1, #0
d0080e0a:	2420      	movs	r4, #32
d0080e0c:	4836      	ldr	r0, [pc, #216]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080e0e:	54f4      	strb	r4, [r6, r3]
d0080e10:	7051      	strb	r1, [r2, #1]
d0080e12:	f003 f980 	bl	d0084116 <strlen>
d0080e16:	4603      	mov	r3, r0
d0080e18:	18f0      	adds	r0, r6, r3
d0080e1a:	2203      	movs	r2, #3
d0080e1c:	4939      	ldr	r1, [pc, #228]	; (d0080f04 <emit_known_word.constprop.0+0xb98>)
d0080e1e:	f002 ffdd 	bl	d0083ddc <memcpy>
d0080e22:	2001      	movs	r0, #1
d0080e24:	e5aa      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d0080e26:	1832      	adds	r2, r6, r0
d0080e28:	2120      	movs	r1, #32
d0080e2a:	4630      	mov	r0, r6
d0080e2c:	54f1      	strb	r1, [r6, r3]
d0080e2e:	f882 8001 	strb.w	r8, [r2, #1]
d0080e32:	f003 f970 	bl	d0084116 <strlen>
d0080e36:	4603      	mov	r3, r0
d0080e38:	e567      	b.n	d008090a <emit_known_word.constprop.0+0x59e>
d0080e3a:	4d2a      	ldr	r5, [pc, #168]	; (d0080ee4 <emit_known_word.constprop.0+0xb78>)
d0080e3c:	f04f 0920 	mov.w	r9, #32
d0080e40:	2246      	movs	r2, #70	; 0x46
d0080e42:	4e29      	ldr	r6, [pc, #164]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080e44:	f805 9023 	strb.w	r9, [r5, r3, lsl #2]
d0080e48:	8823      	ldrh	r3, [r4, #0]
d0080e4a:	4630      	mov	r0, r6
d0080e4c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0080e50:	805a      	strh	r2, [r3, #2]
d0080e52:	8827      	ldrh	r7, [r4, #0]
d0080e54:	3701      	adds	r7, #1
d0080e56:	b2bf      	uxth	r7, r7
d0080e58:	8027      	strh	r7, [r4, #0]
d0080e5a:	f003 f95c 	bl	d0084116 <strlen>
d0080e5e:	1cc3      	adds	r3, r0, #3
d0080e60:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0080e64:	d2b6      	bcs.n	d0080dd4 <emit_known_word.constprop.0+0xa68>
d0080e66:	b138      	cbz	r0, d0080e78 <emit_known_word.constprop.0+0xb0c>
d0080e68:	1833      	adds	r3, r6, r0
d0080e6a:	f806 9000 	strb.w	r9, [r6, r0]
d0080e6e:	4630      	mov	r0, r6
d0080e70:	f883 8001 	strb.w	r8, [r3, #1]
d0080e74:	f003 f94f 	bl	d0084116 <strlen>
d0080e78:	4430      	add	r0, r6
d0080e7a:	2202      	movs	r2, #2
d0080e7c:	491e      	ldr	r1, [pc, #120]	; (d0080ef8 <emit_known_word.constprop.0+0xb8c>)
d0080e7e:	f002 ffad 	bl	d0083ddc <memcpy>
d0080e82:	8827      	ldrh	r7, [r4, #0]
d0080e84:	e7a6      	b.n	d0080dd4 <emit_known_word.constprop.0+0xa68>
d0080e86:	2120      	movs	r1, #32
d0080e88:	1833      	adds	r3, r6, r0
d0080e8a:	2200      	movs	r2, #0
d0080e8c:	5431      	strb	r1, [r6, r0]
d0080e8e:	4816      	ldr	r0, [pc, #88]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080e90:	705a      	strb	r2, [r3, #1]
d0080e92:	f003 f940 	bl	d0084116 <strlen>
d0080e96:	e5b6      	b.n	d0080a06 <emit_known_word.constprop.0+0x69a>
d0080e98:	1832      	adds	r2, r6, r0
d0080e9a:	2120      	movs	r1, #32
d0080e9c:	4630      	mov	r0, r6
d0080e9e:	54f1      	strb	r1, [r6, r3]
d0080ea0:	f882 8001 	strb.w	r8, [r2, #1]
d0080ea4:	f003 f937 	bl	d0084116 <strlen>
d0080ea8:	4603      	mov	r3, r0
d0080eaa:	e58d      	b.n	d00809c8 <emit_known_word.constprop.0+0x65c>
d0080eac:	1832      	adds	r2, r6, r0
d0080eae:	2120      	movs	r1, #32
d0080eb0:	4630      	mov	r0, r6
d0080eb2:	54f1      	strb	r1, [r6, r3]
d0080eb4:	f882 8001 	strb.w	r8, [r2, #1]
d0080eb8:	f003 f92d 	bl	d0084116 <strlen>
d0080ebc:	4603      	mov	r3, r0
d0080ebe:	e5f2      	b.n	d0080aa6 <emit_known_word.constprop.0+0x73a>
d0080ec0:	2120      	movs	r1, #32
d0080ec2:	1833      	adds	r3, r6, r0
d0080ec4:	2200      	movs	r2, #0
d0080ec6:	5431      	strb	r1, [r6, r0]
d0080ec8:	4807      	ldr	r0, [pc, #28]	; (d0080ee8 <emit_known_word.constprop.0+0xb7c>)
d0080eca:	705a      	strb	r2, [r3, #1]
d0080ecc:	f003 f923 	bl	d0084116 <strlen>
d0080ed0:	e609      	b.n	d0080ae6 <emit_known_word.constprop.0+0x77a>
d0080ed2:	f818 3001 	ldrb.w	r3, [r8, r1]
d0080ed6:	2b00      	cmp	r3, #0
d0080ed8:	f43f af53 	beq.w	d0080d82 <emit_known_word.constprop.0+0xa16>
d0080edc:	f7ff bb38 	b.w	d0080550 <emit_known_word.constprop.0+0x1e4>
d0080ee0:	4608      	mov	r0, r1
d0080ee2:	4770      	bx	lr
d0080ee4:	d0084c08 	.word	0xd0084c08
d0080ee8:	d00c61b8 	.word	0xd00c61b8
d0080eec:	d0084620 	.word	0xd0084620
d0080ef0:	d0084618 	.word	0xd0084618
d0080ef4:	d0084658 	.word	0xd0084658
d0080ef8:	d0084660 	.word	0xd0084660
d0080efc:	d0084670 	.word	0xd0084670
d0080f00:	d0084644 	.word	0xd0084644
d0080f04:	d0084664 	.word	0xd0084664
d0080f08:	4299      	cmp	r1, r3
d0080f0a:	f47f ab43 	bne.w	d0080594 <emit_known_word.constprop.0+0x228>
d0080f0e:	f81b 3001 	ldrb.w	r3, [fp, r1]
d0080f12:	2b00      	cmp	r3, #0
d0080f14:	f43f af35 	beq.w	d0080d82 <emit_known_word.constprop.0+0xa16>
d0080f18:	f7ff bb3c 	b.w	d0080594 <emit_known_word.constprop.0+0x228>
d0080f1c:	4299      	cmp	r1, r3
d0080f1e:	f47f ab59 	bne.w	d00805d4 <emit_known_word.constprop.0+0x268>
d0080f22:	f81b 8001 	ldrb.w	r8, [fp, r1]
d0080f26:	f1b8 0f00 	cmp.w	r8, #0
d0080f2a:	f47f ab53 	bne.w	d00805d4 <emit_known_word.constprop.0+0x268>
d0080f2e:	8823      	ldrh	r3, [r4, #0]
d0080f30:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080f34:	f4bf ad21 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080f38:	2101      	movs	r1, #1
d0080f3a:	4dc6      	ldr	r5, [pc, #792]	; (d0081254 <emit_known_word.constprop.0+0xee8>)
d0080f3c:	2278      	movs	r2, #120	; 0x78
d0080f3e:	4ec6      	ldr	r6, [pc, #792]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d0080f40:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0080f44:	8823      	ldrh	r3, [r4, #0]
d0080f46:	4630      	mov	r0, r6
d0080f48:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0080f4c:	805a      	strh	r2, [r3, #2]
d0080f4e:	8827      	ldrh	r7, [r4, #0]
d0080f50:	440f      	add	r7, r1
d0080f52:	b2bf      	uxth	r7, r7
d0080f54:	8027      	strh	r7, [r4, #0]
d0080f56:	f003 f8de 	bl	d0084116 <strlen>
d0080f5a:	1d02      	adds	r2, r0, #4
d0080f5c:	4603      	mov	r3, r0
d0080f5e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080f62:	d20f      	bcs.n	d0080f84 <emit_known_word.constprop.0+0xc18>
d0080f64:	b140      	cbz	r0, d0080f78 <emit_known_word.constprop.0+0xc0c>
d0080f66:	1832      	adds	r2, r6, r0
d0080f68:	2120      	movs	r1, #32
d0080f6a:	4630      	mov	r0, r6
d0080f6c:	54f1      	strb	r1, [r6, r3]
d0080f6e:	f882 8001 	strb.w	r8, [r2, #1]
d0080f72:	f003 f8d0 	bl	d0084116 <strlen>
d0080f76:	4603      	mov	r3, r0
d0080f78:	18f0      	adds	r0, r6, r3
d0080f7a:	2203      	movs	r2, #3
d0080f7c:	49b7      	ldr	r1, [pc, #732]	; (d008125c <emit_known_word.constprop.0+0xef0>)
d0080f7e:	f002 ff2d 	bl	d0083ddc <memcpy>
d0080f82:	8827      	ldrh	r7, [r4, #0]
d0080f84:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0080f88:	f4bf acf7 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080f8c:	231e      	movs	r3, #30
d0080f8e:	2248      	movs	r2, #72	; 0x48
d0080f90:	48b1      	ldr	r0, [pc, #708]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d0080f92:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0080f96:	8823      	ldrh	r3, [r4, #0]
d0080f98:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d0080f9c:	806a      	strh	r2, [r5, #2]
d0080f9e:	8823      	ldrh	r3, [r4, #0]
d0080fa0:	3301      	adds	r3, #1
d0080fa2:	8023      	strh	r3, [r4, #0]
d0080fa4:	f003 f8b7 	bl	d0084116 <strlen>
d0080fa8:	1cc2      	adds	r2, r0, #3
d0080faa:	4603      	mov	r3, r0
d0080fac:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0080fb0:	f4bf ace3 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080fb4:	b140      	cbz	r0, d0080fc8 <emit_known_word.constprop.0+0xc5c>
d0080fb6:	1832      	adds	r2, r6, r0
d0080fb8:	2100      	movs	r1, #0
d0080fba:	2420      	movs	r4, #32
d0080fbc:	48a6      	ldr	r0, [pc, #664]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d0080fbe:	54f4      	strb	r4, [r6, r3]
d0080fc0:	7051      	strb	r1, [r2, #1]
d0080fc2:	f003 f8a8 	bl	d0084116 <strlen>
d0080fc6:	4603      	mov	r3, r0
d0080fc8:	18f0      	adds	r0, r6, r3
d0080fca:	2202      	movs	r2, #2
d0080fcc:	49a4      	ldr	r1, [pc, #656]	; (d0081260 <emit_known_word.constprop.0+0xef4>)
d0080fce:	f002 ff05 	bl	d0083ddc <memcpy>
d0080fd2:	2001      	movs	r0, #1
d0080fd4:	e4d2      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d0080fd6:	4299      	cmp	r1, r3
d0080fd8:	f47f ab1c 	bne.w	d0080614 <emit_known_word.constprop.0+0x2a8>
d0080fdc:	f81b 8001 	ldrb.w	r8, [fp, r1]
d0080fe0:	f1b8 0f00 	cmp.w	r8, #0
d0080fe4:	f47f ab16 	bne.w	d0080614 <emit_known_word.constprop.0+0x2a8>
d0080fe8:	8823      	ldrh	r3, [r4, #0]
d0080fea:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0080fee:	f4bf acc4 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0080ff2:	4d98      	ldr	r5, [pc, #608]	; (d0081254 <emit_known_word.constprop.0+0xee8>)
d0080ff4:	2107      	movs	r1, #7
d0080ff6:	226e      	movs	r2, #110	; 0x6e
d0080ff8:	4e97      	ldr	r6, [pc, #604]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d0080ffa:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0080ffe:	8823      	ldrh	r3, [r4, #0]
d0081000:	4630      	mov	r0, r6
d0081002:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081006:	805a      	strh	r2, [r3, #2]
d0081008:	8827      	ldrh	r7, [r4, #0]
d008100a:	3701      	adds	r7, #1
d008100c:	b2bf      	uxth	r7, r7
d008100e:	8027      	strh	r7, [r4, #0]
d0081010:	f003 f881 	bl	d0084116 <strlen>
d0081014:	1d02      	adds	r2, r0, #4
d0081016:	4603      	mov	r3, r0
d0081018:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008101c:	d20f      	bcs.n	d008103e <emit_known_word.constprop.0+0xcd2>
d008101e:	b140      	cbz	r0, d0081032 <emit_known_word.constprop.0+0xcc6>
d0081020:	1832      	adds	r2, r6, r0
d0081022:	2120      	movs	r1, #32
d0081024:	4630      	mov	r0, r6
d0081026:	54f1      	strb	r1, [r6, r3]
d0081028:	f882 8001 	strb.w	r8, [r2, #1]
d008102c:	f003 f873 	bl	d0084116 <strlen>
d0081030:	4603      	mov	r3, r0
d0081032:	18f0      	adds	r0, r6, r3
d0081034:	2203      	movs	r2, #3
d0081036:	498b      	ldr	r1, [pc, #556]	; (d0081264 <emit_known_word.constprop.0+0xef8>)
d0081038:	f002 fed0 	bl	d0083ddc <memcpy>
d008103c:	8827      	ldrh	r7, [r4, #0]
d008103e:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0081042:	f4bf ac9a 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081046:	2321      	movs	r3, #33	; 0x21
d0081048:	2252      	movs	r2, #82	; 0x52
d008104a:	4883      	ldr	r0, [pc, #524]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d008104c:	f805 3027 	strb.w	r3, [r5, r7, lsl #2]
d0081050:	8823      	ldrh	r3, [r4, #0]
d0081052:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d0081056:	806a      	strh	r2, [r5, #2]
d0081058:	8823      	ldrh	r3, [r4, #0]
d008105a:	3301      	adds	r3, #1
d008105c:	8023      	strh	r3, [r4, #0]
d008105e:	f003 f85a 	bl	d0084116 <strlen>
d0081062:	1cc2      	adds	r2, r0, #3
d0081064:	4603      	mov	r3, r0
d0081066:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008106a:	f4bf ac86 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008106e:	b140      	cbz	r0, d0081082 <emit_known_word.constprop.0+0xd16>
d0081070:	1832      	adds	r2, r6, r0
d0081072:	2100      	movs	r1, #0
d0081074:	2420      	movs	r4, #32
d0081076:	4878      	ldr	r0, [pc, #480]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d0081078:	54f4      	strb	r4, [r6, r3]
d008107a:	7051      	strb	r1, [r2, #1]
d008107c:	f003 f84b 	bl	d0084116 <strlen>
d0081080:	4603      	mov	r3, r0
d0081082:	18f0      	adds	r0, r6, r3
d0081084:	2202      	movs	r2, #2
d0081086:	4978      	ldr	r1, [pc, #480]	; (d0081268 <emit_known_word.constprop.0+0xefc>)
d0081088:	f002 fea8 	bl	d0083ddc <memcpy>
d008108c:	2001      	movs	r0, #1
d008108e:	e475      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d0081090:	4299      	cmp	r1, r3
d0081092:	f47f aadf 	bne.w	d0080654 <emit_known_word.constprop.0+0x2e8>
d0081096:	f81b 8001 	ldrb.w	r8, [fp, r1]
d008109a:	f1b8 0f00 	cmp.w	r8, #0
d008109e:	f47f aad9 	bne.w	d0080654 <emit_known_word.constprop.0+0x2e8>
d00810a2:	8823      	ldrh	r3, [r4, #0]
d00810a4:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00810a8:	f4bf ac67 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00810ac:	4d69      	ldr	r5, [pc, #420]	; (d0081254 <emit_known_word.constprop.0+0xee8>)
d00810ae:	2103      	movs	r1, #3
d00810b0:	228c      	movs	r2, #140	; 0x8c
d00810b2:	4e69      	ldr	r6, [pc, #420]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d00810b4:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00810b8:	8823      	ldrh	r3, [r4, #0]
d00810ba:	4630      	mov	r0, r6
d00810bc:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00810c0:	805a      	strh	r2, [r3, #2]
d00810c2:	8827      	ldrh	r7, [r4, #0]
d00810c4:	3701      	adds	r7, #1
d00810c6:	b2bf      	uxth	r7, r7
d00810c8:	8027      	strh	r7, [r4, #0]
d00810ca:	f003 f824 	bl	d0084116 <strlen>
d00810ce:	1d02      	adds	r2, r0, #4
d00810d0:	4603      	mov	r3, r0
d00810d2:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00810d6:	f4bf adc5 	bcs.w	d0080c64 <emit_known_word.constprop.0+0x8f8>
d00810da:	b140      	cbz	r0, d00810ee <emit_known_word.constprop.0+0xd82>
d00810dc:	1832      	adds	r2, r6, r0
d00810de:	2120      	movs	r1, #32
d00810e0:	4630      	mov	r0, r6
d00810e2:	54f1      	strb	r1, [r6, r3]
d00810e4:	f882 8001 	strb.w	r8, [r2, #1]
d00810e8:	f003 f815 	bl	d0084116 <strlen>
d00810ec:	4603      	mov	r3, r0
d00810ee:	18f0      	adds	r0, r6, r3
d00810f0:	2203      	movs	r2, #3
d00810f2:	495e      	ldr	r1, [pc, #376]	; (d008126c <emit_known_word.constprop.0+0xf00>)
d00810f4:	f002 fe72 	bl	d0083ddc <memcpy>
d00810f8:	8827      	ldrh	r7, [r4, #0]
d00810fa:	e5b3      	b.n	d0080c64 <emit_known_word.constprop.0+0x8f8>
d00810fc:	4620      	mov	r0, r4
d00810fe:	9101      	str	r1, [sp, #4]
d0081100:	f7ff f880 	bl	d0080204 <emit_ay.constprop.0>
d0081104:	9901      	ldr	r1, [sp, #4]
d0081106:	4608      	mov	r0, r1
d0081108:	e438      	b.n	d008097c <emit_known_word.constprop.0+0x610>
d008110a:	4299      	cmp	r1, r3
d008110c:	f47f aadb 	bne.w	d00806c6 <emit_known_word.constprop.0+0x35a>
d0081110:	f81b 7001 	ldrb.w	r7, [fp, r1]
d0081114:	2f00      	cmp	r7, #0
d0081116:	f47f aad6 	bne.w	d00806c6 <emit_known_word.constprop.0+0x35a>
d008111a:	8823      	ldrh	r3, [r4, #0]
d008111c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081120:	f4bf ac2b 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081124:	4d4b      	ldr	r5, [pc, #300]	; (d0081254 <emit_known_word.constprop.0+0xee8>)
d0081126:	2102      	movs	r1, #2
d0081128:	2282      	movs	r2, #130	; 0x82
d008112a:	4e4b      	ldr	r6, [pc, #300]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d008112c:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081130:	8823      	ldrh	r3, [r4, #0]
d0081132:	4630      	mov	r0, r6
d0081134:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081138:	805a      	strh	r2, [r3, #2]
d008113a:	8823      	ldrh	r3, [r4, #0]
d008113c:	3301      	adds	r3, #1
d008113e:	8023      	strh	r3, [r4, #0]
d0081140:	f002 ffe9 	bl	d0084116 <strlen>
d0081144:	1d03      	adds	r3, r0, #4
d0081146:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008114a:	d20c      	bcs.n	d0081166 <emit_known_word.constprop.0+0xdfa>
d008114c:	b118      	cbz	r0, d0081156 <emit_known_word.constprop.0+0xdea>
d008114e:	2220      	movs	r2, #32
d0081150:	1833      	adds	r3, r6, r0
d0081152:	5432      	strb	r2, [r6, r0]
d0081154:	705f      	strb	r7, [r3, #1]
d0081156:	4840      	ldr	r0, [pc, #256]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d0081158:	f002 ffdd 	bl	d0084116 <strlen>
d008115c:	2203      	movs	r2, #3
d008115e:	4944      	ldr	r1, [pc, #272]	; (d0081270 <emit_known_word.constprop.0+0xf04>)
d0081160:	4430      	add	r0, r6
d0081162:	f002 fe3b 	bl	d0083ddc <memcpy>
d0081166:	8823      	ldrh	r3, [r4, #0]
d0081168:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008116c:	f4bf ac05 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081170:	2116      	movs	r1, #22
d0081172:	224b      	movs	r2, #75	; 0x4b
d0081174:	4838      	ldr	r0, [pc, #224]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d0081176:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d008117a:	8823      	ldrh	r3, [r4, #0]
d008117c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081180:	805a      	strh	r2, [r3, #2]
d0081182:	8823      	ldrh	r3, [r4, #0]
d0081184:	3301      	adds	r3, #1
d0081186:	8023      	strh	r3, [r4, #0]
d0081188:	f002 ffc5 	bl	d0084116 <strlen>
d008118c:	1cc3      	adds	r3, r0, #3
d008118e:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081192:	d20d      	bcs.n	d00811b0 <emit_known_word.constprop.0+0xe44>
d0081194:	b120      	cbz	r0, d00811a0 <emit_known_word.constprop.0+0xe34>
d0081196:	2120      	movs	r1, #32
d0081198:	1833      	adds	r3, r6, r0
d008119a:	2200      	movs	r2, #0
d008119c:	5431      	strb	r1, [r6, r0]
d008119e:	705a      	strb	r2, [r3, #1]
d00811a0:	482d      	ldr	r0, [pc, #180]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d00811a2:	f002 ffb8 	bl	d0084116 <strlen>
d00811a6:	2202      	movs	r2, #2
d00811a8:	4932      	ldr	r1, [pc, #200]	; (d0081274 <emit_known_word.constprop.0+0xf08>)
d00811aa:	4430      	add	r0, r6
d00811ac:	f002 fe16 	bl	d0083ddc <memcpy>
d00811b0:	8823      	ldrh	r3, [r4, #0]
d00811b2:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00811b6:	f4bf abe0 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00811ba:	210d      	movs	r1, #13
d00811bc:	223a      	movs	r2, #58	; 0x3a
d00811be:	4826      	ldr	r0, [pc, #152]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d00811c0:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00811c4:	8823      	ldrh	r3, [r4, #0]
d00811c6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d00811ca:	806a      	strh	r2, [r5, #2]
d00811cc:	8823      	ldrh	r3, [r4, #0]
d00811ce:	3301      	adds	r3, #1
d00811d0:	8023      	strh	r3, [r4, #0]
d00811d2:	f002 ffa0 	bl	d0084116 <strlen>
d00811d6:	1cc3      	adds	r3, r0, #3
d00811d8:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00811dc:	f4bf abcd 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00811e0:	b120      	cbz	r0, d00811ec <emit_known_word.constprop.0+0xe80>
d00811e2:	2120      	movs	r1, #32
d00811e4:	1833      	adds	r3, r6, r0
d00811e6:	2200      	movs	r2, #0
d00811e8:	5431      	strb	r1, [r6, r0]
d00811ea:	705a      	strb	r2, [r3, #1]
d00811ec:	481a      	ldr	r0, [pc, #104]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d00811ee:	f002 ff92 	bl	d0084116 <strlen>
d00811f2:	2202      	movs	r2, #2
d00811f4:	4920      	ldr	r1, [pc, #128]	; (d0081278 <emit_known_word.constprop.0+0xf0c>)
d00811f6:	4430      	add	r0, r6
d00811f8:	f002 fdf0 	bl	d0083ddc <memcpy>
d00811fc:	2001      	movs	r0, #1
d00811fe:	f7ff bbbd 	b.w	d008097c <emit_known_word.constprop.0+0x610>
d0081202:	8822      	ldrh	r2, [r4, #0]
d0081204:	f5b2 7f40 	cmp.w	r2, #768	; 0x300
d0081208:	f4bf abb7 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008120c:	4b11      	ldr	r3, [pc, #68]	; (d0081254 <emit_known_word.constprop.0+0xee8>)
d008120e:	2578      	movs	r5, #120	; 0x78
d0081210:	4e11      	ldr	r6, [pc, #68]	; (d0081258 <emit_known_word.constprop.0+0xeec>)
d0081212:	f803 1022 	strb.w	r1, [r3, r2, lsl #2]
d0081216:	8822      	ldrh	r2, [r4, #0]
d0081218:	4630      	mov	r0, r6
d008121a:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d008121e:	805d      	strh	r5, [r3, #2]
d0081220:	8823      	ldrh	r3, [r4, #0]
d0081222:	3301      	adds	r3, #1
d0081224:	8023      	strh	r3, [r4, #0]
d0081226:	f002 ff76 	bl	d0084116 <strlen>
d008122a:	1d02      	adds	r2, r0, #4
d008122c:	4603      	mov	r3, r0
d008122e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081232:	f4bf aba2 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081236:	2800      	cmp	r0, #0
d0081238:	f43f ab8d 	beq.w	d0080956 <emit_known_word.constprop.0+0x5ea>
d008123c:	1832      	adds	r2, r6, r0
d008123e:	2100      	movs	r1, #0
d0081240:	2420      	movs	r4, #32
d0081242:	4630      	mov	r0, r6
d0081244:	54f4      	strb	r4, [r6, r3]
d0081246:	7051      	strb	r1, [r2, #1]
d0081248:	f002 ff65 	bl	d0084116 <strlen>
d008124c:	4603      	mov	r3, r0
d008124e:	f7ff bb82 	b.w	d0080956 <emit_known_word.constprop.0+0x5ea>
d0081252:	bf00      	nop
d0081254:	d0084c08 	.word	0xd0084c08
d0081258:	d00c61b8 	.word	0xd00c61b8
d008125c:	d0084624 	.word	0xd0084624
d0081260:	d0084684 	.word	0xd0084684
d0081264:	d0084630 	.word	0xd0084630
d0081268:	d008468c 	.word	0xd008468c
d008126c:	d0084610 	.word	0xd0084610
d0081270:	d0084640 	.word	0xd0084640
d0081274:	d0084698 	.word	0xd0084698
d0081278:	d008469c 	.word	0xd008469c
d008127c:	4299      	cmp	r1, r3
d008127e:	f47f aa42 	bne.w	d0080706 <emit_known_word.constprop.0+0x39a>
d0081282:	f81b 7001 	ldrb.w	r7, [fp, r1]
d0081286:	2f00      	cmp	r7, #0
d0081288:	f47f aa3d 	bne.w	d0080706 <emit_known_word.constprop.0+0x39a>
d008128c:	8823      	ldrh	r3, [r4, #0]
d008128e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081292:	f4bf ab72 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081296:	4dbf      	ldr	r5, [pc, #764]	; (d0081594 <emit_known_word.constprop.0+0x1228>)
d0081298:	2111      	movs	r1, #17
d008129a:	2237      	movs	r2, #55	; 0x37
d008129c:	4ebe      	ldr	r6, [pc, #760]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d008129e:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00812a2:	8823      	ldrh	r3, [r4, #0]
d00812a4:	4630      	mov	r0, r6
d00812a6:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00812aa:	805a      	strh	r2, [r3, #2]
d00812ac:	8823      	ldrh	r3, [r4, #0]
d00812ae:	3301      	adds	r3, #1
d00812b0:	8023      	strh	r3, [r4, #0]
d00812b2:	f002 ff30 	bl	d0084116 <strlen>
d00812b6:	1cc3      	adds	r3, r0, #3
d00812b8:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00812bc:	d20c      	bcs.n	d00812d8 <emit_known_word.constprop.0+0xf6c>
d00812be:	b118      	cbz	r0, d00812c8 <emit_known_word.constprop.0+0xf5c>
d00812c0:	2220      	movs	r2, #32
d00812c2:	1833      	adds	r3, r6, r0
d00812c4:	5432      	strb	r2, [r6, r0]
d00812c6:	705f      	strb	r7, [r3, #1]
d00812c8:	48b3      	ldr	r0, [pc, #716]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d00812ca:	f002 ff24 	bl	d0084116 <strlen>
d00812ce:	2202      	movs	r2, #2
d00812d0:	49b2      	ldr	r1, [pc, #712]	; (d008159c <emit_known_word.constprop.0+0x1230>)
d00812d2:	4430      	add	r0, r6
d00812d4:	f002 fd82 	bl	d0083ddc <memcpy>
d00812d8:	8823      	ldrh	r3, [r4, #0]
d00812da:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00812de:	f4bf ab4c 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00812e2:	2105      	movs	r1, #5
d00812e4:	227d      	movs	r2, #125	; 0x7d
d00812e6:	48ac      	ldr	r0, [pc, #688]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d00812e8:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00812ec:	8823      	ldrh	r3, [r4, #0]
d00812ee:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00812f2:	805a      	strh	r2, [r3, #2]
d00812f4:	8823      	ldrh	r3, [r4, #0]
d00812f6:	3301      	adds	r3, #1
d00812f8:	8023      	strh	r3, [r4, #0]
d00812fa:	f002 ff0c 	bl	d0084116 <strlen>
d00812fe:	1d03      	adds	r3, r0, #4
d0081300:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081304:	d20d      	bcs.n	d0081322 <emit_known_word.constprop.0+0xfb6>
d0081306:	b120      	cbz	r0, d0081312 <emit_known_word.constprop.0+0xfa6>
d0081308:	2120      	movs	r1, #32
d008130a:	1833      	adds	r3, r6, r0
d008130c:	2200      	movs	r2, #0
d008130e:	5431      	strb	r1, [r6, r0]
d0081310:	705a      	strb	r2, [r3, #1]
d0081312:	48a1      	ldr	r0, [pc, #644]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d0081314:	f002 feff 	bl	d0084116 <strlen>
d0081318:	2203      	movs	r2, #3
d008131a:	49a1      	ldr	r1, [pc, #644]	; (d00815a0 <emit_known_word.constprop.0+0x1234>)
d008131c:	4430      	add	r0, r6
d008131e:	f002 fd5d 	bl	d0083ddc <memcpy>
d0081322:	8823      	ldrh	r3, [r4, #0]
d0081324:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081328:	f4bf ab27 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008132c:	2114      	movs	r1, #20
d008132e:	224e      	movs	r2, #78	; 0x4e
d0081330:	4899      	ldr	r0, [pc, #612]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d0081332:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081336:	8823      	ldrh	r3, [r4, #0]
d0081338:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d008133c:	805a      	strh	r2, [r3, #2]
d008133e:	8823      	ldrh	r3, [r4, #0]
d0081340:	3301      	adds	r3, #1
d0081342:	8023      	strh	r3, [r4, #0]
d0081344:	f002 fee7 	bl	d0084116 <strlen>
d0081348:	1cc3      	adds	r3, r0, #3
d008134a:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008134e:	d20d      	bcs.n	d008136c <emit_known_word.constprop.0+0x1000>
d0081350:	b120      	cbz	r0, d008135c <emit_known_word.constprop.0+0xff0>
d0081352:	2120      	movs	r1, #32
d0081354:	1833      	adds	r3, r6, r0
d0081356:	2200      	movs	r2, #0
d0081358:	5431      	strb	r1, [r6, r0]
d008135a:	705a      	strb	r2, [r3, #1]
d008135c:	488e      	ldr	r0, [pc, #568]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d008135e:	f002 feda 	bl	d0084116 <strlen>
d0081362:	2202      	movs	r2, #2
d0081364:	498f      	ldr	r1, [pc, #572]	; (d00815a4 <emit_known_word.constprop.0+0x1238>)
d0081366:	4430      	add	r0, r6
d0081368:	f002 fd38 	bl	d0083ddc <memcpy>
d008136c:	8823      	ldrh	r3, [r4, #0]
d008136e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081372:	f4bf ab02 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081376:	2104      	movs	r1, #4
d0081378:	2248      	movs	r2, #72	; 0x48
d008137a:	4887      	ldr	r0, [pc, #540]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d008137c:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081380:	8823      	ldrh	r3, [r4, #0]
d0081382:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081386:	805a      	strh	r2, [r3, #2]
d0081388:	8823      	ldrh	r3, [r4, #0]
d008138a:	3301      	adds	r3, #1
d008138c:	8023      	strh	r3, [r4, #0]
d008138e:	f002 fec2 	bl	d0084116 <strlen>
d0081392:	1d03      	adds	r3, r0, #4
d0081394:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081398:	d20d      	bcs.n	d00813b6 <emit_known_word.constprop.0+0x104a>
d008139a:	b120      	cbz	r0, d00813a6 <emit_known_word.constprop.0+0x103a>
d008139c:	2120      	movs	r1, #32
d008139e:	1833      	adds	r3, r6, r0
d00813a0:	2200      	movs	r2, #0
d00813a2:	5431      	strb	r1, [r6, r0]
d00813a4:	705a      	strb	r2, [r3, #1]
d00813a6:	487c      	ldr	r0, [pc, #496]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d00813a8:	f002 feb5 	bl	d0084116 <strlen>
d00813ac:	2203      	movs	r2, #3
d00813ae:	497e      	ldr	r1, [pc, #504]	; (d00815a8 <emit_known_word.constprop.0+0x123c>)
d00813b0:	4430      	add	r0, r6
d00813b2:	f002 fd13 	bl	d0083ddc <memcpy>
d00813b6:	8823      	ldrh	r3, [r4, #0]
d00813b8:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00813bc:	f4bf aadd 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00813c0:	210a      	movs	r1, #10
d00813c2:	2252      	movs	r2, #82	; 0x52
d00813c4:	4874      	ldr	r0, [pc, #464]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d00813c6:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00813ca:	8823      	ldrh	r3, [r4, #0]
d00813cc:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d00813d0:	806a      	strh	r2, [r5, #2]
d00813d2:	8823      	ldrh	r3, [r4, #0]
d00813d4:	3301      	adds	r3, #1
d00813d6:	8023      	strh	r3, [r4, #0]
d00813d8:	f002 fe9d 	bl	d0084116 <strlen>
d00813dc:	1d03      	adds	r3, r0, #4
d00813de:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00813e2:	f4bf aaca 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00813e6:	b120      	cbz	r0, d00813f2 <emit_known_word.constprop.0+0x1086>
d00813e8:	2120      	movs	r1, #32
d00813ea:	1833      	adds	r3, r6, r0
d00813ec:	2200      	movs	r2, #0
d00813ee:	5431      	strb	r1, [r6, r0]
d00813f0:	705a      	strb	r2, [r3, #1]
d00813f2:	4869      	ldr	r0, [pc, #420]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d00813f4:	f002 fe8f 	bl	d0084116 <strlen>
d00813f8:	2203      	movs	r2, #3
d00813fa:	496c      	ldr	r1, [pc, #432]	; (d00815ac <emit_known_word.constprop.0+0x1240>)
d00813fc:	4430      	add	r0, r6
d00813fe:	f002 fced 	bl	d0083ddc <memcpy>
d0081402:	2001      	movs	r0, #1
d0081404:	f7ff baba 	b.w	d008097c <emit_known_word.constprop.0+0x610>
d0081408:	4299      	cmp	r1, r3
d008140a:	f47f a99c 	bne.w	d0080746 <emit_known_word.constprop.0+0x3da>
d008140e:	f81b 7001 	ldrb.w	r7, [fp, r1]
d0081412:	2f00      	cmp	r7, #0
d0081414:	f47f a997 	bne.w	d0080746 <emit_known_word.constprop.0+0x3da>
d0081418:	8823      	ldrh	r3, [r4, #0]
d008141a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008141e:	f4bf aaac 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081422:	2101      	movs	r1, #1
d0081424:	4d5b      	ldr	r5, [pc, #364]	; (d0081594 <emit_known_word.constprop.0+0x1228>)
d0081426:	2278      	movs	r2, #120	; 0x78
d0081428:	4e5b      	ldr	r6, [pc, #364]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d008142a:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d008142e:	8823      	ldrh	r3, [r4, #0]
d0081430:	4630      	mov	r0, r6
d0081432:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081436:	805a      	strh	r2, [r3, #2]
d0081438:	8823      	ldrh	r3, [r4, #0]
d008143a:	440b      	add	r3, r1
d008143c:	8023      	strh	r3, [r4, #0]
d008143e:	f002 fe6a 	bl	d0084116 <strlen>
d0081442:	1d03      	adds	r3, r0, #4
d0081444:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081448:	d20c      	bcs.n	d0081464 <emit_known_word.constprop.0+0x10f8>
d008144a:	b118      	cbz	r0, d0081454 <emit_known_word.constprop.0+0x10e8>
d008144c:	2220      	movs	r2, #32
d008144e:	1833      	adds	r3, r6, r0
d0081450:	5432      	strb	r2, [r6, r0]
d0081452:	705f      	strb	r7, [r3, #1]
d0081454:	4850      	ldr	r0, [pc, #320]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d0081456:	f002 fe5e 	bl	d0084116 <strlen>
d008145a:	2203      	movs	r2, #3
d008145c:	4954      	ldr	r1, [pc, #336]	; (d00815b0 <emit_known_word.constprop.0+0x1244>)
d008145e:	4430      	add	r0, r6
d0081460:	f002 fcbc 	bl	d0083ddc <memcpy>
d0081464:	8823      	ldrh	r3, [r4, #0]
d0081466:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008146a:	f4bf aa86 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008146e:	2115      	movs	r1, #21
d0081470:	2252      	movs	r2, #82	; 0x52
d0081472:	4849      	ldr	r0, [pc, #292]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d0081474:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081478:	8823      	ldrh	r3, [r4, #0]
d008147a:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d008147e:	805a      	strh	r2, [r3, #2]
d0081480:	8823      	ldrh	r3, [r4, #0]
d0081482:	3301      	adds	r3, #1
d0081484:	8023      	strh	r3, [r4, #0]
d0081486:	f002 fe46 	bl	d0084116 <strlen>
d008148a:	1cc3      	adds	r3, r0, #3
d008148c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081490:	d20d      	bcs.n	d00814ae <emit_known_word.constprop.0+0x1142>
d0081492:	b120      	cbz	r0, d008149e <emit_known_word.constprop.0+0x1132>
d0081494:	2120      	movs	r1, #32
d0081496:	1833      	adds	r3, r6, r0
d0081498:	2200      	movs	r2, #0
d008149a:	5431      	strb	r1, [r6, r0]
d008149c:	705a      	strb	r2, [r3, #1]
d008149e:	483e      	ldr	r0, [pc, #248]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d00814a0:	f002 fe39 	bl	d0084116 <strlen>
d00814a4:	2202      	movs	r2, #2
d00814a6:	4943      	ldr	r1, [pc, #268]	; (d00815b4 <emit_known_word.constprop.0+0x1248>)
d00814a8:	4430      	add	r0, r6
d00814aa:	f002 fc97 	bl	d0083ddc <memcpy>
d00814ae:	8823      	ldrh	r3, [r4, #0]
d00814b0:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00814b4:	f4bf aa61 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00814b8:	2108      	movs	r1, #8
d00814ba:	2282      	movs	r2, #130	; 0x82
d00814bc:	4836      	ldr	r0, [pc, #216]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d00814be:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00814c2:	8823      	ldrh	r3, [r4, #0]
d00814c4:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00814c8:	805a      	strh	r2, [r3, #2]
d00814ca:	8823      	ldrh	r3, [r4, #0]
d00814cc:	3301      	adds	r3, #1
d00814ce:	8023      	strh	r3, [r4, #0]
d00814d0:	f002 fe21 	bl	d0084116 <strlen>
d00814d4:	1d03      	adds	r3, r0, #4
d00814d6:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00814da:	d20d      	bcs.n	d00814f8 <emit_known_word.constprop.0+0x118c>
d00814dc:	b120      	cbz	r0, d00814e8 <emit_known_word.constprop.0+0x117c>
d00814de:	2120      	movs	r1, #32
d00814e0:	1833      	adds	r3, r6, r0
d00814e2:	2200      	movs	r2, #0
d00814e4:	5431      	strb	r1, [r6, r0]
d00814e6:	705a      	strb	r2, [r3, #1]
d00814e8:	482b      	ldr	r0, [pc, #172]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d00814ea:	f002 fe14 	bl	d0084116 <strlen>
d00814ee:	2203      	movs	r2, #3
d00814f0:	4931      	ldr	r1, [pc, #196]	; (d00815b8 <emit_known_word.constprop.0+0x124c>)
d00814f2:	4430      	add	r0, r6
d00814f4:	f002 fc72 	bl	d0083ddc <memcpy>
d00814f8:	8823      	ldrh	r3, [r4, #0]
d00814fa:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00814fe:	f4bf aa3c 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081502:	2110      	movs	r1, #16
d0081504:	2246      	movs	r2, #70	; 0x46
d0081506:	4824      	ldr	r0, [pc, #144]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d0081508:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d008150c:	8823      	ldrh	r3, [r4, #0]
d008150e:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081512:	805a      	strh	r2, [r3, #2]
d0081514:	8823      	ldrh	r3, [r4, #0]
d0081516:	3301      	adds	r3, #1
d0081518:	8023      	strh	r3, [r4, #0]
d008151a:	f002 fdfc 	bl	d0084116 <strlen>
d008151e:	1cc3      	adds	r3, r0, #3
d0081520:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081524:	d20d      	bcs.n	d0081542 <emit_known_word.constprop.0+0x11d6>
d0081526:	b120      	cbz	r0, d0081532 <emit_known_word.constprop.0+0x11c6>
d0081528:	2120      	movs	r1, #32
d008152a:	1833      	adds	r3, r6, r0
d008152c:	2200      	movs	r2, #0
d008152e:	5431      	strb	r1, [r6, r0]
d0081530:	705a      	strb	r2, [r3, #1]
d0081532:	4819      	ldr	r0, [pc, #100]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d0081534:	f002 fdef 	bl	d0084116 <strlen>
d0081538:	2202      	movs	r2, #2
d008153a:	4920      	ldr	r1, [pc, #128]	; (d00815bc <emit_known_word.constprop.0+0x1250>)
d008153c:	4430      	add	r0, r6
d008153e:	f002 fc4d 	bl	d0083ddc <memcpy>
d0081542:	8823      	ldrh	r3, [r4, #0]
d0081544:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081548:	f4bf aa17 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008154c:	2101      	movs	r1, #1
d008154e:	2278      	movs	r2, #120	; 0x78
d0081550:	4811      	ldr	r0, [pc, #68]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d0081552:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081556:	8823      	ldrh	r3, [r4, #0]
d0081558:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d008155c:	806a      	strh	r2, [r5, #2]
d008155e:	8823      	ldrh	r3, [r4, #0]
d0081560:	440b      	add	r3, r1
d0081562:	8023      	strh	r3, [r4, #0]
d0081564:	f002 fdd7 	bl	d0084116 <strlen>
d0081568:	1d03      	adds	r3, r0, #4
d008156a:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008156e:	f4bf aa04 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081572:	b120      	cbz	r0, d008157e <emit_known_word.constprop.0+0x1212>
d0081574:	2120      	movs	r1, #32
d0081576:	1833      	adds	r3, r6, r0
d0081578:	2200      	movs	r2, #0
d008157a:	5431      	strb	r1, [r6, r0]
d008157c:	705a      	strb	r2, [r3, #1]
d008157e:	4806      	ldr	r0, [pc, #24]	; (d0081598 <emit_known_word.constprop.0+0x122c>)
d0081580:	f002 fdc9 	bl	d0084116 <strlen>
d0081584:	2203      	movs	r2, #3
d0081586:	490a      	ldr	r1, [pc, #40]	; (d00815b0 <emit_known_word.constprop.0+0x1244>)
d0081588:	4430      	add	r0, r6
d008158a:	f002 fc27 	bl	d0083ddc <memcpy>
d008158e:	2001      	movs	r0, #1
d0081590:	f7ff b9f4 	b.w	d008097c <emit_known_word.constprop.0+0x610>
d0081594:	d0084c08 	.word	0xd0084c08
d0081598:	d00c61b8 	.word	0xd00c61b8
d008159c:	d00846a8 	.word	0xd00846a8
d00815a0:	d0084618 	.word	0xd0084618
d00815a4:	d00846ac 	.word	0xd00846ac
d00815a8:	d00846b0 	.word	0xd00846b0
d00815ac:	d0084664 	.word	0xd0084664
d00815b0:	d0084624 	.word	0xd0084624
d00815b4:	d00846bc 	.word	0xd00846bc
d00815b8:	d0084614 	.word	0xd0084614
d00815bc:	d00846c0 	.word	0xd00846c0
d00815c0:	4299      	cmp	r1, r3
d00815c2:	f47f a8e0 	bne.w	d0080786 <emit_known_word.constprop.0+0x41a>
d00815c6:	f81b 7001 	ldrb.w	r7, [fp, r1]
d00815ca:	2f00      	cmp	r7, #0
d00815cc:	f47f a8db 	bne.w	d0080786 <emit_known_word.constprop.0+0x41a>
d00815d0:	8823      	ldrh	r3, [r4, #0]
d00815d2:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00815d6:	d25c      	bcs.n	d0081692 <emit_known_word.constprop.0+0x1326>
d00815d8:	4dac      	ldr	r5, [pc, #688]	; (d008188c <emit_known_word.constprop.0+0x1520>)
d00815da:	2116      	movs	r1, #22
d00815dc:	224b      	movs	r2, #75	; 0x4b
d00815de:	4eac      	ldr	r6, [pc, #688]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d00815e0:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00815e4:	8823      	ldrh	r3, [r4, #0]
d00815e6:	4630      	mov	r0, r6
d00815e8:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00815ec:	805a      	strh	r2, [r3, #2]
d00815ee:	8823      	ldrh	r3, [r4, #0]
d00815f0:	3301      	adds	r3, #1
d00815f2:	8023      	strh	r3, [r4, #0]
d00815f4:	f002 fd8f 	bl	d0084116 <strlen>
d00815f8:	1cc3      	adds	r3, r0, #3
d00815fa:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00815fe:	d208      	bcs.n	d0081612 <emit_known_word.constprop.0+0x12a6>
d0081600:	b118      	cbz	r0, d008160a <emit_known_word.constprop.0+0x129e>
d0081602:	2220      	movs	r2, #32
d0081604:	1833      	adds	r3, r6, r0
d0081606:	5432      	strb	r2, [r6, r0]
d0081608:	705f      	strb	r7, [r3, #1]
d008160a:	49a2      	ldr	r1, [pc, #648]	; (d0081894 <emit_known_word.constprop.0+0x1528>)
d008160c:	48a0      	ldr	r0, [pc, #640]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d008160e:	f002 fd73 	bl	d00840f8 <strcat>
d0081612:	8823      	ldrh	r3, [r4, #0]
d0081614:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081618:	d23b      	bcs.n	d0081692 <emit_known_word.constprop.0+0x1326>
d008161a:	2102      	movs	r1, #2
d008161c:	2282      	movs	r2, #130	; 0x82
d008161e:	489c      	ldr	r0, [pc, #624]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d0081620:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081624:	8823      	ldrh	r3, [r4, #0]
d0081626:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d008162a:	805a      	strh	r2, [r3, #2]
d008162c:	8823      	ldrh	r3, [r4, #0]
d008162e:	3301      	adds	r3, #1
d0081630:	8023      	strh	r3, [r4, #0]
d0081632:	f002 fd70 	bl	d0084116 <strlen>
d0081636:	1d03      	adds	r3, r0, #4
d0081638:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008163c:	d209      	bcs.n	d0081652 <emit_known_word.constprop.0+0x12e6>
d008163e:	b120      	cbz	r0, d008164a <emit_known_word.constprop.0+0x12de>
d0081640:	2120      	movs	r1, #32
d0081642:	1833      	adds	r3, r6, r0
d0081644:	2200      	movs	r2, #0
d0081646:	5431      	strb	r1, [r6, r0]
d0081648:	705a      	strb	r2, [r3, #1]
d008164a:	4993      	ldr	r1, [pc, #588]	; (d0081898 <emit_known_word.constprop.0+0x152c>)
d008164c:	4890      	ldr	r0, [pc, #576]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d008164e:	f002 fd53 	bl	d00840f8 <strcat>
d0081652:	8823      	ldrh	r3, [r4, #0]
d0081654:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081658:	d21b      	bcs.n	d0081692 <emit_known_word.constprop.0+0x1326>
d008165a:	2119      	movs	r1, #25
d008165c:	2258      	movs	r2, #88	; 0x58
d008165e:	488c      	ldr	r0, [pc, #560]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d0081660:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081664:	8823      	ldrh	r3, [r4, #0]
d0081666:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d008166a:	806a      	strh	r2, [r5, #2]
d008166c:	8823      	ldrh	r3, [r4, #0]
d008166e:	3301      	adds	r3, #1
d0081670:	8023      	strh	r3, [r4, #0]
d0081672:	f002 fd50 	bl	d0084116 <strlen>
d0081676:	1cc3      	adds	r3, r0, #3
d0081678:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008167c:	d209      	bcs.n	d0081692 <emit_known_word.constprop.0+0x1326>
d008167e:	b120      	cbz	r0, d008168a <emit_known_word.constprop.0+0x131e>
d0081680:	2120      	movs	r1, #32
d0081682:	1833      	adds	r3, r6, r0
d0081684:	2200      	movs	r2, #0
d0081686:	5431      	strb	r1, [r6, r0]
d0081688:	705a      	strb	r2, [r3, #1]
d008168a:	4984      	ldr	r1, [pc, #528]	; (d008189c <emit_known_word.constprop.0+0x1530>)
d008168c:	4880      	ldr	r0, [pc, #512]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d008168e:	f002 fd33 	bl	d00840f8 <strcat>
d0081692:	4620      	mov	r0, r4
d0081694:	f7fe fe10 	bl	d00802b8 <emit_ey.constprop.0>
d0081698:	8823      	ldrh	r3, [r4, #0]
d008169a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008169e:	f4bf a96c 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00816a2:	4d7a      	ldr	r5, [pc, #488]	; (d008188c <emit_known_word.constprop.0+0x1520>)
d00816a4:	211c      	movs	r1, #28
d00816a6:	223a      	movs	r2, #58	; 0x3a
d00816a8:	4e79      	ldr	r6, [pc, #484]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d00816aa:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00816ae:	8823      	ldrh	r3, [r4, #0]
d00816b0:	4630      	mov	r0, r6
d00816b2:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00816b6:	805a      	strh	r2, [r3, #2]
d00816b8:	8823      	ldrh	r3, [r4, #0]
d00816ba:	3301      	adds	r3, #1
d00816bc:	8023      	strh	r3, [r4, #0]
d00816be:	f002 fd2a 	bl	d0084116 <strlen>
d00816c2:	1cc3      	adds	r3, r0, #3
d00816c4:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00816c8:	d209      	bcs.n	d00816de <emit_known_word.constprop.0+0x1372>
d00816ca:	b120      	cbz	r0, d00816d6 <emit_known_word.constprop.0+0x136a>
d00816cc:	2120      	movs	r1, #32
d00816ce:	1833      	adds	r3, r6, r0
d00816d0:	2200      	movs	r2, #0
d00816d2:	5431      	strb	r1, [r6, r0]
d00816d4:	705a      	strb	r2, [r3, #1]
d00816d6:	4972      	ldr	r1, [pc, #456]	; (d00818a0 <emit_known_word.constprop.0+0x1534>)
d00816d8:	486d      	ldr	r0, [pc, #436]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d00816da:	f002 fd0d 	bl	d00840f8 <strcat>
d00816de:	8823      	ldrh	r3, [r4, #0]
d00816e0:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00816e4:	f4bf a949 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00816e8:	2106      	movs	r1, #6
d00816ea:	2287      	movs	r2, #135	; 0x87
d00816ec:	4868      	ldr	r0, [pc, #416]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d00816ee:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00816f2:	8823      	ldrh	r3, [r4, #0]
d00816f4:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d00816f8:	806a      	strh	r2, [r5, #2]
d00816fa:	8823      	ldrh	r3, [r4, #0]
d00816fc:	3301      	adds	r3, #1
d00816fe:	8023      	strh	r3, [r4, #0]
d0081700:	f002 fd09 	bl	d0084116 <strlen>
d0081704:	1d03      	adds	r3, r0, #4
d0081706:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008170a:	f4bf a936 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008170e:	b120      	cbz	r0, d008171a <emit_known_word.constprop.0+0x13ae>
d0081710:	2120      	movs	r1, #32
d0081712:	1833      	adds	r3, r6, r0
d0081714:	2200      	movs	r2, #0
d0081716:	5431      	strb	r1, [r6, r0]
d0081718:	705a      	strb	r2, [r3, #1]
d008171a:	4962      	ldr	r1, [pc, #392]	; (d00818a4 <emit_known_word.constprop.0+0x1538>)
d008171c:	485c      	ldr	r0, [pc, #368]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d008171e:	f002 fceb 	bl	d00840f8 <strcat>
d0081722:	2001      	movs	r0, #1
d0081724:	f7ff b92a 	b.w	d008097c <emit_known_word.constprop.0+0x610>
d0081728:	4299      	cmp	r1, r3
d008172a:	f47f a84c 	bne.w	d00807c6 <emit_known_word.constprop.0+0x45a>
d008172e:	f81b 7001 	ldrb.w	r7, [fp, r1]
d0081732:	2f00      	cmp	r7, #0
d0081734:	f47f a847 	bne.w	d00807c6 <emit_known_word.constprop.0+0x45a>
d0081738:	8823      	ldrh	r3, [r4, #0]
d008173a:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008173e:	f4bf a91c 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081742:	4d52      	ldr	r5, [pc, #328]	; (d008188c <emit_known_word.constprop.0+0x1520>)
d0081744:	2105      	movs	r1, #5
d0081746:	227d      	movs	r2, #125	; 0x7d
d0081748:	4e51      	ldr	r6, [pc, #324]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d008174a:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d008174e:	8823      	ldrh	r3, [r4, #0]
d0081750:	4630      	mov	r0, r6
d0081752:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081756:	805a      	strh	r2, [r3, #2]
d0081758:	8823      	ldrh	r3, [r4, #0]
d008175a:	3301      	adds	r3, #1
d008175c:	8023      	strh	r3, [r4, #0]
d008175e:	f002 fcda 	bl	d0084116 <strlen>
d0081762:	1d03      	adds	r3, r0, #4
d0081764:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081768:	d208      	bcs.n	d008177c <emit_known_word.constprop.0+0x1410>
d008176a:	b118      	cbz	r0, d0081774 <emit_known_word.constprop.0+0x1408>
d008176c:	2220      	movs	r2, #32
d008176e:	1833      	adds	r3, r6, r0
d0081770:	5432      	strb	r2, [r6, r0]
d0081772:	705f      	strb	r7, [r3, #1]
d0081774:	494c      	ldr	r1, [pc, #304]	; (d00818a8 <emit_known_word.constprop.0+0x153c>)
d0081776:	4846      	ldr	r0, [pc, #280]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d0081778:	f002 fcbe 	bl	d00840f8 <strcat>
d008177c:	8823      	ldrh	r3, [r4, #0]
d008177e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081782:	f4bf a8fa 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081786:	2118      	movs	r1, #24
d0081788:	223e      	movs	r2, #62	; 0x3e
d008178a:	4841      	ldr	r0, [pc, #260]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d008178c:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081790:	8823      	ldrh	r3, [r4, #0]
d0081792:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081796:	805a      	strh	r2, [r3, #2]
d0081798:	8823      	ldrh	r3, [r4, #0]
d008179a:	3301      	adds	r3, #1
d008179c:	8023      	strh	r3, [r4, #0]
d008179e:	f002 fcba 	bl	d0084116 <strlen>
d00817a2:	1cc3      	adds	r3, r0, #3
d00817a4:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00817a8:	d209      	bcs.n	d00817be <emit_known_word.constprop.0+0x1452>
d00817aa:	b120      	cbz	r0, d00817b6 <emit_known_word.constprop.0+0x144a>
d00817ac:	2120      	movs	r1, #32
d00817ae:	1833      	adds	r3, r6, r0
d00817b0:	2200      	movs	r2, #0
d00817b2:	5431      	strb	r1, [r6, r0]
d00817b4:	705a      	strb	r2, [r3, #1]
d00817b6:	493d      	ldr	r1, [pc, #244]	; (d00818ac <emit_known_word.constprop.0+0x1540>)
d00817b8:	4835      	ldr	r0, [pc, #212]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d00817ba:	f002 fc9d 	bl	d00840f8 <strcat>
d00817be:	8823      	ldrh	r3, [r4, #0]
d00817c0:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00817c4:	f4bf a8d9 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00817c8:	211a      	movs	r1, #26
d00817ca:	2252      	movs	r2, #82	; 0x52
d00817cc:	4830      	ldr	r0, [pc, #192]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d00817ce:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00817d2:	8823      	ldrh	r3, [r4, #0]
d00817d4:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00817d8:	805a      	strh	r2, [r3, #2]
d00817da:	8823      	ldrh	r3, [r4, #0]
d00817dc:	3301      	adds	r3, #1
d00817de:	8023      	strh	r3, [r4, #0]
d00817e0:	f002 fc99 	bl	d0084116 <strlen>
d00817e4:	1cc3      	adds	r3, r0, #3
d00817e6:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00817ea:	d209      	bcs.n	d0081800 <emit_known_word.constprop.0+0x1494>
d00817ec:	b120      	cbz	r0, d00817f8 <emit_known_word.constprop.0+0x148c>
d00817ee:	2120      	movs	r1, #32
d00817f0:	1833      	adds	r3, r6, r0
d00817f2:	2200      	movs	r2, #0
d00817f4:	5431      	strb	r1, [r6, r0]
d00817f6:	705a      	strb	r2, [r3, #1]
d00817f8:	492d      	ldr	r1, [pc, #180]	; (d00818b0 <emit_known_word.constprop.0+0x1544>)
d00817fa:	4825      	ldr	r0, [pc, #148]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d00817fc:	f002 fc7c 	bl	d00840f8 <strcat>
d0081800:	8823      	ldrh	r3, [r4, #0]
d0081802:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081806:	f4bf a8b8 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008180a:	2101      	movs	r1, #1
d008180c:	2278      	movs	r2, #120	; 0x78
d008180e:	4820      	ldr	r0, [pc, #128]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d0081810:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081814:	8823      	ldrh	r3, [r4, #0]
d0081816:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d008181a:	805a      	strh	r2, [r3, #2]
d008181c:	8823      	ldrh	r3, [r4, #0]
d008181e:	440b      	add	r3, r1
d0081820:	8023      	strh	r3, [r4, #0]
d0081822:	f002 fc78 	bl	d0084116 <strlen>
d0081826:	1d03      	adds	r3, r0, #4
d0081828:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008182c:	d209      	bcs.n	d0081842 <emit_known_word.constprop.0+0x14d6>
d008182e:	b120      	cbz	r0, d008183a <emit_known_word.constprop.0+0x14ce>
d0081830:	2120      	movs	r1, #32
d0081832:	1833      	adds	r3, r6, r0
d0081834:	2200      	movs	r2, #0
d0081836:	5431      	strb	r1, [r6, r0]
d0081838:	705a      	strb	r2, [r3, #1]
d008183a:	491e      	ldr	r1, [pc, #120]	; (d00818b4 <emit_known_word.constprop.0+0x1548>)
d008183c:	4814      	ldr	r0, [pc, #80]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d008183e:	f002 fc5b 	bl	d00840f8 <strcat>
d0081842:	8823      	ldrh	r3, [r4, #0]
d0081844:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081848:	f4bf a897 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008184c:	2116      	movs	r1, #22
d008184e:	224b      	movs	r2, #75	; 0x4b
d0081850:	480f      	ldr	r0, [pc, #60]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d0081852:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081856:	8823      	ldrh	r3, [r4, #0]
d0081858:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d008185c:	806a      	strh	r2, [r5, #2]
d008185e:	8823      	ldrh	r3, [r4, #0]
d0081860:	3301      	adds	r3, #1
d0081862:	8023      	strh	r3, [r4, #0]
d0081864:	f002 fc57 	bl	d0084116 <strlen>
d0081868:	1cc3      	adds	r3, r0, #3
d008186a:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008186e:	f4bf a884 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081872:	b120      	cbz	r0, d008187e <emit_known_word.constprop.0+0x1512>
d0081874:	2120      	movs	r1, #32
d0081876:	1833      	adds	r3, r6, r0
d0081878:	2200      	movs	r2, #0
d008187a:	5431      	strb	r1, [r6, r0]
d008187c:	705a      	strb	r2, [r3, #1]
d008187e:	4905      	ldr	r1, [pc, #20]	; (d0081894 <emit_known_word.constprop.0+0x1528>)
d0081880:	4803      	ldr	r0, [pc, #12]	; (d0081890 <emit_known_word.constprop.0+0x1524>)
d0081882:	f002 fc39 	bl	d00840f8 <strcat>
d0081886:	2001      	movs	r0, #1
d0081888:	f7ff b878 	b.w	d008097c <emit_known_word.constprop.0+0x610>
d008188c:	d0084c08 	.word	0xd0084c08
d0081890:	d00c61b8 	.word	0xd00c61b8
d0081894:	d0084698 	.word	0xd0084698
d0081898:	d0084640 	.word	0xd0084640
d008189c:	d0084658 	.word	0xd0084658
d00818a0:	d0084644 	.word	0xd0084644
d00818a4:	d0084670 	.word	0xd0084670
d00818a8:	d0084618 	.word	0xd0084618
d00818ac:	d00846d8 	.word	0xd00846d8
d00818b0:	d0084634 	.word	0xd0084634
d00818b4:	d0084624 	.word	0xd0084624
d00818b8:	4299      	cmp	r1, r3
d00818ba:	f47e afa4 	bne.w	d0080806 <emit_known_word.constprop.0+0x49a>
d00818be:	f81b 3001 	ldrb.w	r3, [fp, r1]
d00818c2:	2b00      	cmp	r3, #0
d00818c4:	f47e af9f 	bne.w	d0080806 <emit_known_word.constprop.0+0x49a>
d00818c8:	8823      	ldrh	r3, [r4, #0]
d00818ca:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00818ce:	f4bf a854 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00818d2:	4dad      	ldr	r5, [pc, #692]	; (d0081b88 <emit_known_word.constprop.0+0x181c>)
d00818d4:	211a      	movs	r1, #26
d00818d6:	2252      	movs	r2, #82	; 0x52
d00818d8:	4eac      	ldr	r6, [pc, #688]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d00818da:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00818de:	8823      	ldrh	r3, [r4, #0]
d00818e0:	4630      	mov	r0, r6
d00818e2:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00818e6:	805a      	strh	r2, [r3, #2]
d00818e8:	8823      	ldrh	r3, [r4, #0]
d00818ea:	3301      	adds	r3, #1
d00818ec:	8023      	strh	r3, [r4, #0]
d00818ee:	f002 fc12 	bl	d0084116 <strlen>
d00818f2:	1cc3      	adds	r3, r0, #3
d00818f4:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00818f8:	d20d      	bcs.n	d0081916 <emit_known_word.constprop.0+0x15aa>
d00818fa:	b120      	cbz	r0, d0081906 <emit_known_word.constprop.0+0x159a>
d00818fc:	2120      	movs	r1, #32
d00818fe:	1833      	adds	r3, r6, r0
d0081900:	2200      	movs	r2, #0
d0081902:	5431      	strb	r1, [r6, r0]
d0081904:	705a      	strb	r2, [r3, #1]
d0081906:	48a1      	ldr	r0, [pc, #644]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081908:	f002 fc05 	bl	d0084116 <strlen>
d008190c:	2202      	movs	r2, #2
d008190e:	49a0      	ldr	r1, [pc, #640]	; (d0081b90 <emit_known_word.constprop.0+0x1824>)
d0081910:	4430      	add	r0, r6
d0081912:	f002 fa63 	bl	d0083ddc <memcpy>
d0081916:	8823      	ldrh	r3, [r4, #0]
d0081918:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008191c:	f4bf a82d 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081920:	211c      	movs	r1, #28
d0081922:	223a      	movs	r2, #58	; 0x3a
d0081924:	4899      	ldr	r0, [pc, #612]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081926:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d008192a:	8823      	ldrh	r3, [r4, #0]
d008192c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081930:	805a      	strh	r2, [r3, #2]
d0081932:	8823      	ldrh	r3, [r4, #0]
d0081934:	3301      	adds	r3, #1
d0081936:	8023      	strh	r3, [r4, #0]
d0081938:	f002 fbed 	bl	d0084116 <strlen>
d008193c:	1cc3      	adds	r3, r0, #3
d008193e:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081942:	d20d      	bcs.n	d0081960 <emit_known_word.constprop.0+0x15f4>
d0081944:	b120      	cbz	r0, d0081950 <emit_known_word.constprop.0+0x15e4>
d0081946:	2120      	movs	r1, #32
d0081948:	1833      	adds	r3, r6, r0
d008194a:	2200      	movs	r2, #0
d008194c:	5431      	strb	r1, [r6, r0]
d008194e:	705a      	strb	r2, [r3, #1]
d0081950:	488e      	ldr	r0, [pc, #568]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081952:	f002 fbe0 	bl	d0084116 <strlen>
d0081956:	2202      	movs	r2, #2
d0081958:	498e      	ldr	r1, [pc, #568]	; (d0081b94 <emit_known_word.constprop.0+0x1828>)
d008195a:	4430      	add	r0, r6
d008195c:	f002 fa3e 	bl	d0083ddc <memcpy>
d0081960:	8823      	ldrh	r3, [r4, #0]
d0081962:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081966:	f4bf a808 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d008196a:	2108      	movs	r1, #8
d008196c:	2282      	movs	r2, #130	; 0x82
d008196e:	4887      	ldr	r0, [pc, #540]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081970:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081974:	8823      	ldrh	r3, [r4, #0]
d0081976:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d008197a:	805a      	strh	r2, [r3, #2]
d008197c:	8823      	ldrh	r3, [r4, #0]
d008197e:	3301      	adds	r3, #1
d0081980:	8023      	strh	r3, [r4, #0]
d0081982:	f002 fbc8 	bl	d0084116 <strlen>
d0081986:	1d03      	adds	r3, r0, #4
d0081988:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008198c:	d20d      	bcs.n	d00819aa <emit_known_word.constprop.0+0x163e>
d008198e:	b120      	cbz	r0, d008199a <emit_known_word.constprop.0+0x162e>
d0081990:	2120      	movs	r1, #32
d0081992:	1833      	adds	r3, r6, r0
d0081994:	2200      	movs	r2, #0
d0081996:	5431      	strb	r1, [r6, r0]
d0081998:	705a      	strb	r2, [r3, #1]
d008199a:	487c      	ldr	r0, [pc, #496]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d008199c:	f002 fbbb 	bl	d0084116 <strlen>
d00819a0:	2203      	movs	r2, #3
d00819a2:	497d      	ldr	r1, [pc, #500]	; (d0081b98 <emit_known_word.constprop.0+0x182c>)
d00819a4:	4430      	add	r0, r6
d00819a6:	f002 fa19 	bl	d0083ddc <memcpy>
d00819aa:	8823      	ldrh	r3, [r4, #0]
d00819ac:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d00819b0:	f4be afe3 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00819b4:	211e      	movs	r1, #30
d00819b6:	2248      	movs	r2, #72	; 0x48
d00819b8:	4874      	ldr	r0, [pc, #464]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d00819ba:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d00819be:	8823      	ldrh	r3, [r4, #0]
d00819c0:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d00819c4:	806a      	strh	r2, [r5, #2]
d00819c6:	8823      	ldrh	r3, [r4, #0]
d00819c8:	3301      	adds	r3, #1
d00819ca:	8023      	strh	r3, [r4, #0]
d00819cc:	f002 fba3 	bl	d0084116 <strlen>
d00819d0:	1cc3      	adds	r3, r0, #3
d00819d2:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00819d6:	f4be afd0 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d00819da:	b120      	cbz	r0, d00819e6 <emit_known_word.constprop.0+0x167a>
d00819dc:	2120      	movs	r1, #32
d00819de:	1833      	adds	r3, r6, r0
d00819e0:	2200      	movs	r2, #0
d00819e2:	5431      	strb	r1, [r6, r0]
d00819e4:	705a      	strb	r2, [r3, #1]
d00819e6:	4869      	ldr	r0, [pc, #420]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d00819e8:	f002 fb95 	bl	d0084116 <strlen>
d00819ec:	2202      	movs	r2, #2
d00819ee:	496b      	ldr	r1, [pc, #428]	; (d0081b9c <emit_known_word.constprop.0+0x1830>)
d00819f0:	4430      	add	r0, r6
d00819f2:	f002 f9f3 	bl	d0083ddc <memcpy>
d00819f6:	2001      	movs	r0, #1
d00819f8:	f7fe bfc0 	b.w	d008097c <emit_known_word.constprop.0+0x610>
d00819fc:	4299      	cmp	r1, r3
d00819fe:	f47e af22 	bne.w	d0080846 <emit_known_word.constprop.0+0x4da>
d0081a02:	f81b 3001 	ldrb.w	r3, [fp, r1]
d0081a06:	2b00      	cmp	r3, #0
d0081a08:	f43f af5e 	beq.w	d00818c8 <emit_known_word.constprop.0+0x155c>
d0081a0c:	f7fe bf1b 	b.w	d0080846 <emit_known_word.constprop.0+0x4da>
d0081a10:	4299      	cmp	r1, r3
d0081a12:	f47e af38 	bne.w	d0080886 <emit_known_word.constprop.0+0x51a>
d0081a16:	f81b 3001 	ldrb.w	r3, [fp, r1]
d0081a1a:	2b00      	cmp	r3, #0
d0081a1c:	f47e af33 	bne.w	d0080886 <emit_known_word.constprop.0+0x51a>
d0081a20:	8823      	ldrh	r3, [r4, #0]
d0081a22:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081a26:	f4be afa8 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081a2a:	4d57      	ldr	r5, [pc, #348]	; (d0081b88 <emit_known_word.constprop.0+0x181c>)
d0081a2c:	2111      	movs	r1, #17
d0081a2e:	2237      	movs	r2, #55	; 0x37
d0081a30:	4e56      	ldr	r6, [pc, #344]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081a32:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081a36:	8823      	ldrh	r3, [r4, #0]
d0081a38:	4630      	mov	r0, r6
d0081a3a:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081a3e:	805a      	strh	r2, [r3, #2]
d0081a40:	8823      	ldrh	r3, [r4, #0]
d0081a42:	3301      	adds	r3, #1
d0081a44:	8023      	strh	r3, [r4, #0]
d0081a46:	f002 fb66 	bl	d0084116 <strlen>
d0081a4a:	1cc3      	adds	r3, r0, #3
d0081a4c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081a50:	d209      	bcs.n	d0081a66 <emit_known_word.constprop.0+0x16fa>
d0081a52:	b120      	cbz	r0, d0081a5e <emit_known_word.constprop.0+0x16f2>
d0081a54:	2120      	movs	r1, #32
d0081a56:	1833      	adds	r3, r6, r0
d0081a58:	2200      	movs	r2, #0
d0081a5a:	5431      	strb	r1, [r6, r0]
d0081a5c:	705a      	strb	r2, [r3, #1]
d0081a5e:	4950      	ldr	r1, [pc, #320]	; (d0081ba0 <emit_known_word.constprop.0+0x1834>)
d0081a60:	484a      	ldr	r0, [pc, #296]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081a62:	f002 fb49 	bl	d00840f8 <strcat>
d0081a66:	8823      	ldrh	r3, [r4, #0]
d0081a68:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081a6c:	f4be af85 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081a70:	2104      	movs	r1, #4
d0081a72:	2287      	movs	r2, #135	; 0x87
d0081a74:	4845      	ldr	r0, [pc, #276]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081a76:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081a7a:	8823      	ldrh	r3, [r4, #0]
d0081a7c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081a80:	805a      	strh	r2, [r3, #2]
d0081a82:	8823      	ldrh	r3, [r4, #0]
d0081a84:	3301      	adds	r3, #1
d0081a86:	8023      	strh	r3, [r4, #0]
d0081a88:	f002 fb45 	bl	d0084116 <strlen>
d0081a8c:	1d03      	adds	r3, r0, #4
d0081a8e:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081a92:	d209      	bcs.n	d0081aa8 <emit_known_word.constprop.0+0x173c>
d0081a94:	b120      	cbz	r0, d0081aa0 <emit_known_word.constprop.0+0x1734>
d0081a96:	2120      	movs	r1, #32
d0081a98:	1833      	adds	r3, r6, r0
d0081a9a:	2200      	movs	r2, #0
d0081a9c:	5431      	strb	r1, [r6, r0]
d0081a9e:	705a      	strb	r2, [r3, #1]
d0081aa0:	4940      	ldr	r1, [pc, #256]	; (d0081ba4 <emit_known_word.constprop.0+0x1838>)
d0081aa2:	483a      	ldr	r0, [pc, #232]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081aa4:	f002 fb28 	bl	d00840f8 <strcat>
d0081aa8:	8823      	ldrh	r3, [r4, #0]
d0081aaa:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081aae:	f4be af64 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081ab2:	2113      	movs	r1, #19
d0081ab4:	2246      	movs	r2, #70	; 0x46
d0081ab6:	4835      	ldr	r0, [pc, #212]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081ab8:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081abc:	8823      	ldrh	r3, [r4, #0]
d0081abe:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081ac2:	805a      	strh	r2, [r3, #2]
d0081ac4:	8823      	ldrh	r3, [r4, #0]
d0081ac6:	3301      	adds	r3, #1
d0081ac8:	8023      	strh	r3, [r4, #0]
d0081aca:	f002 fb24 	bl	d0084116 <strlen>
d0081ace:	1cc3      	adds	r3, r0, #3
d0081ad0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081ad4:	d209      	bcs.n	d0081aea <emit_known_word.constprop.0+0x177e>
d0081ad6:	b120      	cbz	r0, d0081ae2 <emit_known_word.constprop.0+0x1776>
d0081ad8:	2120      	movs	r1, #32
d0081ada:	1833      	adds	r3, r6, r0
d0081adc:	2200      	movs	r2, #0
d0081ade:	5431      	strb	r1, [r6, r0]
d0081ae0:	705a      	strb	r2, [r3, #1]
d0081ae2:	4931      	ldr	r1, [pc, #196]	; (d0081ba8 <emit_known_word.constprop.0+0x183c>)
d0081ae4:	4829      	ldr	r0, [pc, #164]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081ae6:	f002 fb07 	bl	d00840f8 <strcat>
d0081aea:	8823      	ldrh	r3, [r4, #0]
d0081aec:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081af0:	f4be af43 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081af4:	2107      	movs	r1, #7
d0081af6:	226e      	movs	r2, #110	; 0x6e
d0081af8:	4824      	ldr	r0, [pc, #144]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081afa:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081afe:	8823      	ldrh	r3, [r4, #0]
d0081b00:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0081b04:	805a      	strh	r2, [r3, #2]
d0081b06:	8823      	ldrh	r3, [r4, #0]
d0081b08:	3301      	adds	r3, #1
d0081b0a:	8023      	strh	r3, [r4, #0]
d0081b0c:	f002 fb03 	bl	d0084116 <strlen>
d0081b10:	1d03      	adds	r3, r0, #4
d0081b12:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081b16:	d209      	bcs.n	d0081b2c <emit_known_word.constprop.0+0x17c0>
d0081b18:	b120      	cbz	r0, d0081b24 <emit_known_word.constprop.0+0x17b8>
d0081b1a:	2120      	movs	r1, #32
d0081b1c:	1833      	adds	r3, r6, r0
d0081b1e:	2200      	movs	r2, #0
d0081b20:	5431      	strb	r1, [r6, r0]
d0081b22:	705a      	strb	r2, [r3, #1]
d0081b24:	4921      	ldr	r1, [pc, #132]	; (d0081bac <emit_known_word.constprop.0+0x1840>)
d0081b26:	4819      	ldr	r0, [pc, #100]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081b28:	f002 fae6 	bl	d00840f8 <strcat>
d0081b2c:	8823      	ldrh	r3, [r4, #0]
d0081b2e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0081b32:	f4be af22 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081b36:	2117      	movs	r1, #23
d0081b38:	225a      	movs	r2, #90	; 0x5a
d0081b3a:	4814      	ldr	r0, [pc, #80]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081b3c:	f805 1023 	strb.w	r1, [r5, r3, lsl #2]
d0081b40:	8823      	ldrh	r3, [r4, #0]
d0081b42:	eb05 0583 	add.w	r5, r5, r3, lsl #2
d0081b46:	806a      	strh	r2, [r5, #2]
d0081b48:	8823      	ldrh	r3, [r4, #0]
d0081b4a:	3301      	adds	r3, #1
d0081b4c:	8023      	strh	r3, [r4, #0]
d0081b4e:	f002 fae2 	bl	d0084116 <strlen>
d0081b52:	1d03      	adds	r3, r0, #4
d0081b54:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0081b58:	f4be af0f 	bcs.w	d008097a <emit_known_word.constprop.0+0x60e>
d0081b5c:	b120      	cbz	r0, d0081b68 <emit_known_word.constprop.0+0x17fc>
d0081b5e:	2120      	movs	r1, #32
d0081b60:	1833      	adds	r3, r6, r0
d0081b62:	2200      	movs	r2, #0
d0081b64:	5431      	strb	r1, [r6, r0]
d0081b66:	705a      	strb	r2, [r3, #1]
d0081b68:	4911      	ldr	r1, [pc, #68]	; (d0081bb0 <emit_known_word.constprop.0+0x1844>)
d0081b6a:	4808      	ldr	r0, [pc, #32]	; (d0081b8c <emit_known_word.constprop.0+0x1820>)
d0081b6c:	f002 fac4 	bl	d00840f8 <strcat>
d0081b70:	2001      	movs	r0, #1
d0081b72:	f7fe bf03 	b.w	d008097c <emit_known_word.constprop.0+0x610>
d0081b76:	4299      	cmp	r1, r3
d0081b78:	f47e aea2 	bne.w	d00808c0 <emit_known_word.constprop.0+0x554>
d0081b7c:	5c73      	ldrb	r3, [r6, r1]
d0081b7e:	2b00      	cmp	r3, #0
d0081b80:	f43f af4e 	beq.w	d0081a20 <emit_known_word.constprop.0+0x16b4>
d0081b84:	f7fe be9c 	b.w	d00808c0 <emit_known_word.constprop.0+0x554>
d0081b88:	d0084c08 	.word	0xd0084c08
d0081b8c:	d00c61b8 	.word	0xd00c61b8
d0081b90:	d0084634 	.word	0xd0084634
d0081b94:	d0084644 	.word	0xd0084644
d0081b98:	d0084614 	.word	0xd0084614
d0081b9c:	d0084684 	.word	0xd0084684
d0081ba0:	d00846a8 	.word	0xd00846a8
d0081ba4:	d00846b0 	.word	0xd00846b0
d0081ba8:	d00846fc 	.word	0xd00846fc
d0081bac:	d0084630 	.word	0xd0084630
d0081bb0:	d0084700 	.word	0xd0084700

d0081bb4 <speech_synth_render>:
d0081bb4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0081bb8:	4bc9      	ldr	r3, [pc, #804]	; (d0081ee0 <speech_synth_render+0x32c>)
d0081bba:	2400      	movs	r4, #0
d0081bbc:	ed2d 8b10 	vpush	{d8-d15}
d0081bc0:	701c      	strb	r4, [r3, #0]
d0081bc2:	b0b9      	sub	sp, #228	; 0xe4
d0081bc4:	7805      	ldrb	r5, [r0, #0]
d0081bc6:	f8ad 4098 	strh.w	r4, [sp, #152]	; 0x98
d0081bca:	2d00      	cmp	r5, #0
d0081bcc:	f001 8117 	beq.w	d0082dfe <speech_synth_render+0x124a>
d0081bd0:	4682      	mov	sl, r0
d0081bd2:	4626      	mov	r6, r4
d0081bd4:	9000      	str	r0, [sp, #0]
d0081bd6:	e03d      	b.n	d0081c54 <speech_synth_render+0xa0>
d0081bd8:	f1a5 0321 	sub.w	r3, r5, #33	; 0x21
d0081bdc:	b2db      	uxtb	r3, r3
d0081bde:	2b1e      	cmp	r3, #30
d0081be0:	d82a      	bhi.n	d0081c38 <speech_synth_render+0x84>
d0081be2:	4ac0      	ldr	r2, [pc, #768]	; (d0081ee4 <speech_synth_render+0x330>)
d0081be4:	fa22 f303 	lsr.w	r3, r2, r3
d0081be8:	43db      	mvns	r3, r3
d0081bea:	f013 0701 	ands.w	r7, r3, #1
d0081bee:	f040 8230 	bne.w	d0082052 <speech_synth_render+0x49e>
d0081bf2:	4bbd      	ldr	r3, [pc, #756]	; (d0081ee8 <speech_synth_render+0x334>)
d0081bf4:	1c71      	adds	r1, r6, #1
d0081bf6:	22be      	movs	r2, #190	; 0xbe
d0081bf8:	48b9      	ldr	r0, [pc, #740]	; (d0081ee0 <speech_synth_render+0x32c>)
d0081bfa:	f803 7026 	strb.w	r7, [r3, r6, lsl #2]
d0081bfe:	eb03 0386 	add.w	r3, r3, r6, lsl #2
d0081c02:	b28e      	uxth	r6, r1
d0081c04:	805a      	strh	r2, [r3, #2]
d0081c06:	f8ad 6098 	strh.w	r6, [sp, #152]	; 0x98
d0081c0a:	f002 fa84 	bl	d0084116 <strlen>
d0081c0e:	1cc2      	adds	r2, r0, #3
d0081c10:	4603      	mov	r3, r0
d0081c12:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0081c16:	d20f      	bcs.n	d0081c38 <speech_synth_render+0x84>
d0081c18:	b140      	cbz	r0, d0081c2c <speech_synth_render+0x78>
d0081c1a:	4db1      	ldr	r5, [pc, #708]	; (d0081ee0 <speech_synth_render+0x32c>)
d0081c1c:	2120      	movs	r1, #32
d0081c1e:	182a      	adds	r2, r5, r0
d0081c20:	4628      	mov	r0, r5
d0081c22:	54e9      	strb	r1, [r5, r3]
d0081c24:	7057      	strb	r7, [r2, #1]
d0081c26:	f002 fa76 	bl	d0084116 <strlen>
d0081c2a:	4603      	mov	r3, r0
d0081c2c:	4aac      	ldr	r2, [pc, #688]	; (d0081ee0 <speech_synth_render+0x32c>)
d0081c2e:	49af      	ldr	r1, [pc, #700]	; (d0081eec <speech_synth_render+0x338>)
d0081c30:	18d0      	adds	r0, r2, r3
d0081c32:	2202      	movs	r2, #2
d0081c34:	f002 f8d2 	bl	d0083ddc <memcpy>
d0081c38:	3401      	adds	r4, #1
d0081c3a:	9b00      	ldr	r3, [sp, #0]
d0081c3c:	b2a4      	uxth	r4, r4
d0081c3e:	eb03 0a04 	add.w	sl, r3, r4
d0081c42:	f89a 5000 	ldrb.w	r5, [sl]
d0081c46:	2d00      	cmp	r5, #0
d0081c48:	f000 8261 	beq.w	d008210e <speech_synth_render+0x55a>
d0081c4c:	f5b6 7f40 	cmp.w	r6, #768	; 0x300
d0081c50:	f000 82d4 	beq.w	d00821fc <speech_synth_render+0x648>
d0081c54:	f025 0320 	bic.w	r3, r5, #32
d0081c58:	f1a3 0241 	sub.w	r2, r3, #65	; 0x41
d0081c5c:	2a19      	cmp	r2, #25
d0081c5e:	d8bb      	bhi.n	d0081bd8 <speech_synth_render+0x24>
d0081c60:	46a3      	mov	fp, r4
d0081c62:	9a00      	ldr	r2, [sp, #0]
d0081c64:	e001      	b.n	d0081c6a <speech_synth_render+0xb6>
d0081c66:	f025 0320 	bic.w	r3, r5, #32
d0081c6a:	3b41      	subs	r3, #65	; 0x41
d0081c6c:	f10b 0101 	add.w	r1, fp, #1
d0081c70:	b2db      	uxtb	r3, r3
d0081c72:	2b19      	cmp	r3, #25
d0081c74:	d904      	bls.n	d0081c80 <speech_synth_render+0xcc>
d0081c76:	2d2d      	cmp	r5, #45	; 0x2d
d0081c78:	d002      	beq.n	d0081c80 <speech_synth_render+0xcc>
d0081c7a:	2d27      	cmp	r5, #39	; 0x27
d0081c7c:	f041 8012 	bne.w	d0082ca4 <speech_synth_render+0x10f0>
d0081c80:	fa1f fb81 	uxth.w	fp, r1
d0081c84:	f812 500b 	ldrb.w	r5, [r2, fp]
d0081c88:	eb02 030b 	add.w	r3, r2, fp
d0081c8c:	2d00      	cmp	r5, #0
d0081c8e:	d1ea      	bne.n	d0081c66 <speech_synth_render+0xb2>
d0081c90:	9302      	str	r3, [sp, #8]
d0081c92:	ebab 0404 	sub.w	r4, fp, r4
d0081c96:	aa26      	add	r2, sp, #152	; 0x98
d0081c98:	4650      	mov	r0, sl
d0081c9a:	b2a4      	uxth	r4, r4
d0081c9c:	4621      	mov	r1, r4
d0081c9e:	f7fe fb65 	bl	d008036c <emit_known_word.constprop.0>
d0081ca2:	2800      	cmp	r0, #0
d0081ca4:	f040 81fe 	bne.w	d00820a4 <speech_synth_render+0x4f0>
d0081ca8:	2c00      	cmp	r4, #0
d0081caa:	f000 81fb 	beq.w	d00820a4 <speech_synth_render+0x4f0>
d0081cae:	1e63      	subs	r3, r4, #1
d0081cb0:	f89a c000 	ldrb.w	ip, [sl]
d0081cb4:	4a8c      	ldr	r2, [pc, #560]	; (d0081ee8 <speech_synth_render+0x334>)
d0081cb6:	4605      	mov	r5, r0
d0081cb8:	9304      	str	r3, [sp, #16]
d0081cba:	f1ac 0e41 	sub.w	lr, ip, #65	; 0x41
d0081cbe:	fa1a f383 	uxtah	r3, sl, r3
d0081cc2:	9201      	str	r2, [sp, #4]
d0081cc4:	9303      	str	r3, [sp, #12]
d0081cc6:	fa5f f38e 	uxtb.w	r3, lr
d0081cca:	2b19      	cmp	r3, #25
d0081ccc:	f240 8185 	bls.w	d0081fda <speech_synth_render+0x426>
d0081cd0:	1c6e      	adds	r6, r5, #1
d0081cd2:	4661      	mov	r1, ip
d0081cd4:	42a6      	cmp	r6, r4
d0081cd6:	f0c0 81b2 	bcc.w	d008203e <speech_synth_render+0x48a>
d0081cda:	2000      	movs	r0, #0
d0081cdc:	2927      	cmp	r1, #39	; 0x27
d0081cde:	f000 8170 	beq.w	d0081fc2 <speech_synth_render+0x40e>
d0081ce2:	292d      	cmp	r1, #45	; 0x2d
d0081ce4:	f000 816d 	beq.w	d0081fc2 <speech_synth_render+0x40e>
d0081ce8:	42a5      	cmp	r5, r4
d0081cea:	f280 8181 	bge.w	d0081ff0 <speech_synth_render+0x43c>
d0081cee:	4663      	mov	r3, ip
d0081cf0:	2774      	movs	r7, #116	; 0x74
d0081cf2:	2200      	movs	r2, #0
d0081cf4:	f8df 91f8 	ldr.w	r9, [pc, #504]	; d0081ef0 <speech_synth_render+0x33c>
d0081cf8:	4680      	mov	r8, r0
d0081cfa:	e008      	b.n	d0081d0e <speech_synth_render+0x15a>
d0081cfc:	f812 7009 	ldrb.w	r7, [r2, r9]
d0081d00:	2f00      	cmp	r7, #0
d0081d02:	f000 821a 	beq.w	d008213a <speech_synth_render+0x586>
d0081d06:	42a0      	cmp	r0, r4
d0081d08:	da0e      	bge.n	d0081d28 <speech_synth_render+0x174>
d0081d0a:	f81a 3000 	ldrb.w	r3, [sl, r0]
d0081d0e:	f1a3 0041 	sub.w	r0, r3, #65	; 0x41
d0081d12:	3201      	adds	r2, #1
d0081d14:	b2c0      	uxtb	r0, r0
d0081d16:	b292      	uxth	r2, r2
d0081d18:	2819      	cmp	r0, #25
d0081d1a:	eb02 0005 	add.w	r0, r2, r5
d0081d1e:	d801      	bhi.n	d0081d24 <speech_synth_render+0x170>
d0081d20:	3320      	adds	r3, #32
d0081d22:	b2db      	uxtb	r3, r3
d0081d24:	42bb      	cmp	r3, r7
d0081d26:	d0e9      	beq.n	d0081cfc <speech_synth_render+0x148>
d0081d28:	4640      	mov	r0, r8
d0081d2a:	2763      	movs	r7, #99	; 0x63
d0081d2c:	46e0      	mov	r8, ip
d0081d2e:	2300      	movs	r3, #0
d0081d30:	f8df 91c0 	ldr.w	r9, [pc, #448]	; d0081ef4 <speech_synth_render+0x340>
d0081d34:	e008      	b.n	d0081d48 <speech_synth_render+0x194>
d0081d36:	f813 7009 	ldrb.w	r7, [r3, r9]
d0081d3a:	2f00      	cmp	r7, #0
d0081d3c:	f000 8221 	beq.w	d0082182 <speech_synth_render+0x5ce>
d0081d40:	42a2      	cmp	r2, r4
d0081d42:	da10      	bge.n	d0081d66 <speech_synth_render+0x1b2>
d0081d44:	f81a 8002 	ldrb.w	r8, [sl, r2]
d0081d48:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d0081d4c:	3301      	adds	r3, #1
d0081d4e:	b2d2      	uxtb	r2, r2
d0081d50:	b29b      	uxth	r3, r3
d0081d52:	2a19      	cmp	r2, #25
d0081d54:	eb03 0205 	add.w	r2, r3, r5
d0081d58:	d803      	bhi.n	d0081d62 <speech_synth_render+0x1ae>
d0081d5a:	f108 0820 	add.w	r8, r8, #32
d0081d5e:	fa5f f888 	uxtb.w	r8, r8
d0081d62:	45b8      	cmp	r8, r7
d0081d64:	d0e7      	beq.n	d0081d36 <speech_synth_render+0x182>
d0081d66:	46e0      	mov	r8, ip
d0081d68:	2773      	movs	r7, #115	; 0x73
d0081d6a:	2300      	movs	r3, #0
d0081d6c:	f8df 9188 	ldr.w	r9, [pc, #392]	; d0081ef8 <speech_synth_render+0x344>
d0081d70:	e008      	b.n	d0081d84 <speech_synth_render+0x1d0>
d0081d72:	f813 7009 	ldrb.w	r7, [r3, r9]
d0081d76:	2f00      	cmp	r7, #0
d0081d78:	f000 8766 	beq.w	d0082c48 <speech_synth_render+0x1094>
d0081d7c:	42a2      	cmp	r2, r4
d0081d7e:	da10      	bge.n	d0081da2 <speech_synth_render+0x1ee>
d0081d80:	f81a 8002 	ldrb.w	r8, [sl, r2]
d0081d84:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d0081d88:	3301      	adds	r3, #1
d0081d8a:	b2d2      	uxtb	r2, r2
d0081d8c:	b29b      	uxth	r3, r3
d0081d8e:	2a19      	cmp	r2, #25
d0081d90:	eb03 0205 	add.w	r2, r3, r5
d0081d94:	d803      	bhi.n	d0081d9e <speech_synth_render+0x1ea>
d0081d96:	f108 0820 	add.w	r8, r8, #32
d0081d9a:	fa5f f888 	uxtb.w	r8, r8
d0081d9e:	45b8      	cmp	r8, r7
d0081da0:	d0e7      	beq.n	d0081d72 <speech_synth_render+0x1be>
d0081da2:	46e0      	mov	r8, ip
d0081da4:	2774      	movs	r7, #116	; 0x74
d0081da6:	2300      	movs	r3, #0
d0081da8:	f8df 9150 	ldr.w	r9, [pc, #336]	; d0081efc <speech_synth_render+0x348>
d0081dac:	e008      	b.n	d0081dc0 <speech_synth_render+0x20c>
d0081dae:	f813 7009 	ldrb.w	r7, [r3, r9]
d0081db2:	2f00      	cmp	r7, #0
d0081db4:	f000 8780 	beq.w	d0082cb8 <speech_synth_render+0x1104>
d0081db8:	42a2      	cmp	r2, r4
d0081dba:	da10      	bge.n	d0081dde <speech_synth_render+0x22a>
d0081dbc:	f81a 8002 	ldrb.w	r8, [sl, r2]
d0081dc0:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d0081dc4:	3301      	adds	r3, #1
d0081dc6:	b2d2      	uxtb	r2, r2
d0081dc8:	b29b      	uxth	r3, r3
d0081dca:	2a19      	cmp	r2, #25
d0081dcc:	eb03 0205 	add.w	r2, r3, r5
d0081dd0:	d803      	bhi.n	d0081dda <speech_synth_render+0x226>
d0081dd2:	f108 0820 	add.w	r8, r8, #32
d0081dd6:	fa5f f888 	uxtb.w	r8, r8
d0081dda:	45b8      	cmp	r8, r7
d0081ddc:	d0e7      	beq.n	d0081dae <speech_synth_render+0x1fa>
d0081dde:	46e0      	mov	r8, ip
d0081de0:	2770      	movs	r7, #112	; 0x70
d0081de2:	2300      	movs	r3, #0
d0081de4:	f8df 9118 	ldr.w	r9, [pc, #280]	; d0081f00 <speech_synth_render+0x34c>
d0081de8:	e008      	b.n	d0081dfc <speech_synth_render+0x248>
d0081dea:	f813 7009 	ldrb.w	r7, [r3, r9]
d0081dee:	2f00      	cmp	r7, #0
d0081df0:	f000 87ad 	beq.w	d0082d4e <speech_synth_render+0x119a>
d0081df4:	42a2      	cmp	r2, r4
d0081df6:	da10      	bge.n	d0081e1a <speech_synth_render+0x266>
d0081df8:	f81a 8002 	ldrb.w	r8, [sl, r2]
d0081dfc:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d0081e00:	3301      	adds	r3, #1
d0081e02:	b2d2      	uxtb	r2, r2
d0081e04:	b29b      	uxth	r3, r3
d0081e06:	2a19      	cmp	r2, #25
d0081e08:	eb03 0205 	add.w	r2, r3, r5
d0081e0c:	d803      	bhi.n	d0081e16 <speech_synth_render+0x262>
d0081e0e:	f108 0820 	add.w	r8, r8, #32
d0081e12:	fa5f f888 	uxtb.w	r8, r8
d0081e16:	45b8      	cmp	r8, r7
d0081e18:	d0e7      	beq.n	d0081dea <speech_synth_render+0x236>
d0081e1a:	46e0      	mov	r8, ip
d0081e1c:	2777      	movs	r7, #119	; 0x77
d0081e1e:	2300      	movs	r3, #0
d0081e20:	f8df 90e0 	ldr.w	r9, [pc, #224]	; d0081f04 <speech_synth_render+0x350>
d0081e24:	e008      	b.n	d0081e38 <speech_synth_render+0x284>
d0081e26:	f813 7009 	ldrb.w	r7, [r3, r9]
d0081e2a:	2f00      	cmp	r7, #0
d0081e2c:	f000 87bb 	beq.w	d0082da6 <speech_synth_render+0x11f2>
d0081e30:	42a2      	cmp	r2, r4
d0081e32:	da10      	bge.n	d0081e56 <speech_synth_render+0x2a2>
d0081e34:	f81a 8002 	ldrb.w	r8, [sl, r2]
d0081e38:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d0081e3c:	3301      	adds	r3, #1
d0081e3e:	b2d2      	uxtb	r2, r2
d0081e40:	b29b      	uxth	r3, r3
d0081e42:	2a19      	cmp	r2, #25
d0081e44:	eb03 0205 	add.w	r2, r3, r5
d0081e48:	d803      	bhi.n	d0081e52 <speech_synth_render+0x29e>
d0081e4a:	f108 0820 	add.w	r8, r8, #32
d0081e4e:	fa5f f888 	uxtb.w	r8, r8
d0081e52:	45b8      	cmp	r8, r7
d0081e54:	d0e7      	beq.n	d0081e26 <speech_synth_render+0x272>
d0081e56:	46e0      	mov	r8, ip
d0081e58:	2777      	movs	r7, #119	; 0x77
d0081e5a:	2300      	movs	r3, #0
d0081e5c:	f8df 90a8 	ldr.w	r9, [pc, #168]	; d0081f08 <speech_synth_render+0x354>
d0081e60:	e008      	b.n	d0081e74 <speech_synth_render+0x2c0>
d0081e62:	f813 7009 	ldrb.w	r7, [r3, r9]
d0081e66:	2f00      	cmp	r7, #0
d0081e68:	f001 8302 	beq.w	d0083470 <speech_synth_render+0x18bc>
d0081e6c:	42a2      	cmp	r2, r4
d0081e6e:	da10      	bge.n	d0081e92 <speech_synth_render+0x2de>
d0081e70:	f81a 8002 	ldrb.w	r8, [sl, r2]
d0081e74:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d0081e78:	3301      	adds	r3, #1
d0081e7a:	b2d2      	uxtb	r2, r2
d0081e7c:	b29b      	uxth	r3, r3
d0081e7e:	2a19      	cmp	r2, #25
d0081e80:	eb03 0205 	add.w	r2, r3, r5
d0081e84:	d803      	bhi.n	d0081e8e <speech_synth_render+0x2da>
d0081e86:	f108 0820 	add.w	r8, r8, #32
d0081e8a:	fa5f f888 	uxtb.w	r8, r8
d0081e8e:	45b8      	cmp	r8, r7
d0081e90:	d0e7      	beq.n	d0081e62 <speech_synth_render+0x2ae>
d0081e92:	2d00      	cmp	r5, #0
d0081e94:	f000 873e 	beq.w	d0082d14 <speech_synth_render+0x1160>
d0081e98:	46e0      	mov	r8, ip
d0081e9a:	276e      	movs	r7, #110	; 0x6e
d0081e9c:	2300      	movs	r3, #0
d0081e9e:	f8df 906c 	ldr.w	r9, [pc, #108]	; d0081f0c <speech_synth_render+0x358>
d0081ea2:	e008      	b.n	d0081eb6 <speech_synth_render+0x302>
d0081ea4:	f813 7009 	ldrb.w	r7, [r3, r9]
d0081ea8:	2f00      	cmp	r7, #0
d0081eaa:	f001 82b5 	beq.w	d0083418 <speech_synth_render+0x1864>
d0081eae:	42a2      	cmp	r2, r4
d0081eb0:	da10      	bge.n	d0081ed4 <speech_synth_render+0x320>
d0081eb2:	f81a 8002 	ldrb.w	r8, [sl, r2]
d0081eb6:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d0081eba:	3301      	adds	r3, #1
d0081ebc:	b2d2      	uxtb	r2, r2
d0081ebe:	b29b      	uxth	r3, r3
d0081ec0:	2a19      	cmp	r2, #25
d0081ec2:	eb03 0205 	add.w	r2, r3, r5
d0081ec6:	d803      	bhi.n	d0081ed0 <speech_synth_render+0x31c>
d0081ec8:	f108 0820 	add.w	r8, r8, #32
d0081ecc:	fa5f f888 	uxtb.w	r8, r8
d0081ed0:	45b8      	cmp	r8, r7
d0081ed2:	d0e7      	beq.n	d0081ea4 <speech_synth_render+0x2f0>
d0081ed4:	46e0      	mov	r8, ip
d0081ed6:	2763      	movs	r7, #99	; 0x63
d0081ed8:	2300      	movs	r3, #0
d0081eda:	f8df 9034 	ldr.w	r9, [pc, #52]	; d0081f10 <speech_synth_render+0x35c>
d0081ede:	e022      	b.n	d0081f26 <speech_synth_render+0x372>
d0081ee0:	d00c61b8 	.word	0xd00c61b8
d0081ee4:	40002001 	.word	0x40002001
d0081ee8:	d0084c08 	.word	0xd0084c08
d0081eec:	d008477c 	.word	0xd008477c
d0081ef0:	d0084704 	.word	0xd0084704
d0081ef4:	d008470c 	.word	0xd008470c
d0081ef8:	d0084710 	.word	0xd0084710
d0081efc:	d0084718 	.word	0xd0084718
d0081f00:	d0084720 	.word	0xd0084720
d0081f04:	d0084728 	.word	0xd0084728
d0081f08:	d0084730 	.word	0xd0084730
d0081f0c:	d0084734 	.word	0xd0084734
d0081f10:	d0084738 	.word	0xd0084738
d0081f14:	f813 7009 	ldrb.w	r7, [r3, r9]
d0081f18:	2f00      	cmp	r7, #0
d0081f1a:	f001 8326 	beq.w	d008356a <speech_synth_render+0x19b6>
d0081f1e:	42a2      	cmp	r2, r4
d0081f20:	da10      	bge.n	d0081f44 <speech_synth_render+0x390>
d0081f22:	f81a 8002 	ldrb.w	r8, [sl, r2]
d0081f26:	f1a8 0241 	sub.w	r2, r8, #65	; 0x41
d0081f2a:	3301      	adds	r3, #1
d0081f2c:	b2d2      	uxtb	r2, r2
d0081f2e:	b29b      	uxth	r3, r3
d0081f30:	2a19      	cmp	r2, #25
d0081f32:	eb03 0205 	add.w	r2, r3, r5
d0081f36:	d803      	bhi.n	d0081f40 <speech_synth_render+0x38c>
d0081f38:	f108 0820 	add.w	r8, r8, #32
d0081f3c:	fa5f f888 	uxtb.w	r8, r8
d0081f40:	45b8      	cmp	r8, r7
d0081f42:	d0e7      	beq.n	d0081f14 <speech_synth_render+0x360>
d0081f44:	2771      	movs	r7, #113	; 0x71
d0081f46:	2300      	movs	r3, #0
d0081f48:	f8df 82ac 	ldr.w	r8, [pc, #684]	; d00821f8 <speech_synth_render+0x644>
d0081f4c:	e00a      	b.n	d0081f64 <speech_synth_render+0x3b0>
d0081f4e:	f813 7008 	ldrb.w	r7, [r3, r8]
d0081f52:	2f00      	cmp	r7, #0
d0081f54:	f001 8338 	beq.w	d00835c8 <speech_synth_render+0x1a14>
d0081f58:	42a2      	cmp	r2, r4
d0081f5a:	da11      	bge.n	d0081f80 <speech_synth_render+0x3cc>
d0081f5c:	f81a c002 	ldrb.w	ip, [sl, r2]
d0081f60:	f1ac 0e41 	sub.w	lr, ip, #65	; 0x41
d0081f64:	fa5f f28e 	uxtb.w	r2, lr
d0081f68:	3301      	adds	r3, #1
d0081f6a:	2a19      	cmp	r2, #25
d0081f6c:	b29b      	uxth	r3, r3
d0081f6e:	eb03 0205 	add.w	r2, r3, r5
d0081f72:	d803      	bhi.n	d0081f7c <speech_synth_render+0x3c8>
d0081f74:	f10c 0c20 	add.w	ip, ip, #32
d0081f78:	fa5f fc8c 	uxtb.w	ip, ip
d0081f7c:	45bc      	cmp	ip, r7
d0081f7e:	d0e6      	beq.n	d0081f4e <speech_synth_render+0x39a>
d0081f80:	f1a1 0361 	sub.w	r3, r1, #97	; 0x61
d0081f84:	2b19      	cmp	r3, #25
d0081f86:	f201 8048 	bhi.w	d008301a <speech_synth_render+0x1466>
d0081f8a:	e8df f013 	tbh	[pc, r3, lsl #1]
d0081f8e:	0787      	.short	0x0787
d0081f90:	095b0965 	.word	0x095b0965
d0081f94:	08e80954 	.word	0x08e80954
d0081f98:	08d208e1 	.word	0x08d208e1
d0081f9c:	08a208cb 	.word	0x08a208cb
d0081fa0:	07f20981 	.word	0x07f20981
d0081fa4:	096c0973 	.word	0x096c0973
d0081fa8:	09880a39 	.word	0x09880a39
d0081fac:	07f20823 	.word	0x07f20823
d0081fb0:	0894089b 	.word	0x0894089b
d0081fb4:	0862088d 	.word	0x0862088d
d0081fb8:	0854085b 	.word	0x0854085b
d0081fbc:	082a0848 	.word	0x082a0848
d0081fc0:	097a      	.short	0x097a
d0081fc2:	b2b5      	uxth	r5, r6
d0081fc4:	42ac      	cmp	r4, r5
d0081fc6:	d96f      	bls.n	d00820a8 <speech_synth_render+0x4f4>
d0081fc8:	f81a c005 	ldrb.w	ip, [sl, r5]
d0081fcc:	f1ac 0e41 	sub.w	lr, ip, #65	; 0x41
d0081fd0:	fa5f f38e 	uxtb.w	r3, lr
d0081fd4:	2b19      	cmp	r3, #25
d0081fd6:	f63f ae7b 	bhi.w	d0081cd0 <speech_synth_render+0x11c>
d0081fda:	1c6e      	adds	r6, r5, #1
d0081fdc:	f10c 0120 	add.w	r1, ip, #32
d0081fe0:	42a6      	cmp	r6, r4
d0081fe2:	b2c9      	uxtb	r1, r1
d0081fe4:	d32b      	bcc.n	d008203e <speech_synth_render+0x48a>
d0081fe6:	42a5      	cmp	r5, r4
d0081fe8:	f04f 0000 	mov.w	r0, #0
d0081fec:	f6ff ae7f 	blt.w	d0081cee <speech_synth_render+0x13a>
d0081ff0:	2d00      	cmp	r5, #0
d0081ff2:	f000 868f 	beq.w	d0082d14 <speech_synth_render+0x1160>
d0081ff6:	42a5      	cmp	r5, r4
d0081ff8:	f6ff af4e 	blt.w	d0081e98 <speech_synth_render+0x2e4>
d0081ffc:	f1a1 0361 	sub.w	r3, r1, #97	; 0x61
d0082000:	2b19      	cmp	r3, #25
d0082002:	f201 800a 	bhi.w	d008301a <speech_synth_render+0x1466>
d0082006:	e8df f013 	tbh	[pc, r3, lsl #1]
d008200a:	0a75      	.short	0x0a75
d008200c:	091d0927 	.word	0x091d0927
d0082010:	08aa0916 	.word	0x08aa0916
d0082014:	089408a3 	.word	0x089408a3
d0082018:	0864088d 	.word	0x0864088d
d008201c:	07b40943 	.word	0x07b40943
d0082020:	092e0935 	.word	0x092e0935
d0082024:	094a09fb 	.word	0x094a09fb
d0082028:	07b407e5 	.word	0x07b407e5
d008202c:	0856085d 	.word	0x0856085d
d0082030:	0824084f 	.word	0x0824084f
d0082034:	0816081d 	.word	0x0816081d
d0082038:	07ec080a 	.word	0x07ec080a
d008203c:	093c      	.short	0x093c
d008203e:	f81a 0006 	ldrb.w	r0, [sl, r6]
d0082042:	f1a0 0341 	sub.w	r3, r0, #65	; 0x41
d0082046:	2b19      	cmp	r3, #25
d0082048:	f63f ae48 	bhi.w	d0081cdc <speech_synth_render+0x128>
d008204c:	3020      	adds	r0, #32
d008204e:	b2c0      	uxtb	r0, r0
d0082050:	e644      	b.n	d0081cdc <speech_synth_render+0x128>
d0082052:	f1a5 033a 	sub.w	r3, r5, #58	; 0x3a
d0082056:	2b01      	cmp	r3, #1
d0082058:	d902      	bls.n	d0082060 <speech_synth_render+0x4ac>
d008205a:	2d2c      	cmp	r5, #44	; 0x2c
d008205c:	f47f adec 	bne.w	d0081c38 <speech_synth_render+0x84>
d0082060:	485d      	ldr	r0, [pc, #372]	; (d00821d8 <speech_synth_render+0x624>)
d0082062:	1c71      	adds	r1, r6, #1
d0082064:	2500      	movs	r5, #0
d0082066:	2278      	movs	r2, #120	; 0x78
d0082068:	eb00 0386 	add.w	r3, r0, r6, lsl #2
d008206c:	f800 5026 	strb.w	r5, [r0, r6, lsl #2]
d0082070:	b28e      	uxth	r6, r1
d0082072:	805a      	strh	r2, [r3, #2]
d0082074:	4859      	ldr	r0, [pc, #356]	; (d00821dc <speech_synth_render+0x628>)
d0082076:	f8ad 6098 	strh.w	r6, [sp, #152]	; 0x98
d008207a:	f002 f84c 	bl	d0084116 <strlen>
d008207e:	1cc2      	adds	r2, r0, #3
d0082080:	4603      	mov	r3, r0
d0082082:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082086:	f4bf add7 	bcs.w	d0081c38 <speech_synth_render+0x84>
d008208a:	2800      	cmp	r0, #0
d008208c:	f43f adce 	beq.w	d0081c2c <speech_synth_render+0x78>
d0082090:	4f52      	ldr	r7, [pc, #328]	; (d00821dc <speech_synth_render+0x628>)
d0082092:	2120      	movs	r1, #32
d0082094:	183a      	adds	r2, r7, r0
d0082096:	4638      	mov	r0, r7
d0082098:	54f9      	strb	r1, [r7, r3]
d008209a:	7055      	strb	r5, [r2, #1]
d008209c:	f002 f83b 	bl	d0084116 <strlen>
d00820a0:	4603      	mov	r3, r0
d00820a2:	e5c3      	b.n	d0081c2c <speech_synth_render+0x78>
d00820a4:	4b4c      	ldr	r3, [pc, #304]	; (d00821d8 <speech_synth_render+0x624>)
d00820a6:	9301      	str	r3, [sp, #4]
d00820a8:	f8bd 6098 	ldrh.w	r6, [sp, #152]	; 0x98
d00820ac:	f5b6 7f40 	cmp.w	r6, #768	; 0x300
d00820b0:	f080 80a4 	bcs.w	d00821fc <speech_synth_render+0x648>
d00820b4:	9a01      	ldr	r2, [sp, #4]
d00820b6:	2400      	movs	r4, #0
d00820b8:	1c71      	adds	r1, r6, #1
d00820ba:	4848      	ldr	r0, [pc, #288]	; (d00821dc <speech_synth_render+0x628>)
d00820bc:	eb02 0386 	add.w	r3, r2, r6, lsl #2
d00820c0:	f802 4026 	strb.w	r4, [r2, r6, lsl #2]
d00820c4:	221a      	movs	r2, #26
d00820c6:	b28e      	uxth	r6, r1
d00820c8:	805a      	strh	r2, [r3, #2]
d00820ca:	f8ad 6098 	strh.w	r6, [sp, #152]	; 0x98
d00820ce:	f002 f822 	bl	d0084116 <strlen>
d00820d2:	1cc2      	adds	r2, r0, #3
d00820d4:	4603      	mov	r3, r0
d00820d6:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00820da:	f080 85e8 	bcs.w	d0082cae <speech_synth_render+0x10fa>
d00820de:	b140      	cbz	r0, d00820f2 <speech_synth_render+0x53e>
d00820e0:	4d3e      	ldr	r5, [pc, #248]	; (d00821dc <speech_synth_render+0x628>)
d00820e2:	2120      	movs	r1, #32
d00820e4:	182a      	adds	r2, r5, r0
d00820e6:	4628      	mov	r0, r5
d00820e8:	54e9      	strb	r1, [r5, r3]
d00820ea:	7054      	strb	r4, [r2, #1]
d00820ec:	f002 f813 	bl	d0084116 <strlen>
d00820f0:	4603      	mov	r3, r0
d00820f2:	4a3a      	ldr	r2, [pc, #232]	; (d00821dc <speech_synth_render+0x628>)
d00820f4:	465c      	mov	r4, fp
d00820f6:	f8dd a008 	ldr.w	sl, [sp, #8]
d00820fa:	18d0      	adds	r0, r2, r3
d00820fc:	4938      	ldr	r1, [pc, #224]	; (d00821e0 <speech_synth_render+0x62c>)
d00820fe:	2202      	movs	r2, #2
d0082100:	f001 fe6c 	bl	d0083ddc <memcpy>
d0082104:	f89a 5000 	ldrb.w	r5, [sl]
d0082108:	2d00      	cmp	r5, #0
d008210a:	f47f ad9f 	bne.w	d0081c4c <speech_synth_render+0x98>
d008210e:	4a35      	ldr	r2, [pc, #212]	; (d00821e4 <speech_synth_render+0x630>)
d0082110:	2180      	movs	r1, #128	; 0x80
d0082112:	4835      	ldr	r0, [pc, #212]	; (d00821e8 <speech_synth_render+0x634>)
d0082114:	9623      	str	r6, [sp, #140]	; 0x8c
d0082116:	f001 fe6f 	bl	d0083df8 <memset>
d008211a:	2248      	movs	r2, #72	; 0x48
d008211c:	4629      	mov	r1, r5
d008211e:	a826      	add	r0, sp, #152	; 0x98
d0082120:	f001 fe6a 	bl	d0083df8 <memset>
d0082124:	4b31      	ldr	r3, [pc, #196]	; (d00821ec <speech_synth_render+0x638>)
d0082126:	461a      	mov	r2, r3
d0082128:	9325      	str	r3, [sp, #148]	; 0x94
d008212a:	4b31      	ldr	r3, [pc, #196]	; (d00821f0 <speech_synth_render+0x63c>)
d008212c:	6013      	str	r3, [r2, #0]
d008212e:	2e00      	cmp	r6, #0
d0082130:	d174      	bne.n	d008221c <speech_synth_render+0x668>
d0082132:	f8dd b08c 	ldr.w	fp, [sp, #140]	; 0x8c
d0082136:	f000 bd27 	b.w	d0082b88 <speech_synth_render+0xfd4>
d008213a:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d008213e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082142:	d21b      	bcs.n	d008217c <speech_synth_render+0x5c8>
d0082144:	200c      	movs	r0, #12
d0082146:	9e01      	ldr	r6, [sp, #4]
d0082148:	1c59      	adds	r1, r3, #1
d008214a:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d008214e:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d0082152:	2358      	movs	r3, #88	; 0x58
d0082154:	4821      	ldr	r0, [pc, #132]	; (d00821dc <speech_synth_render+0x628>)
d0082156:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d008215a:	8053      	strh	r3, [r2, #2]
d008215c:	f001 ffdb 	bl	d0084116 <strlen>
d0082160:	1d02      	adds	r2, r0, #4
d0082162:	4603      	mov	r3, r0
d0082164:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082168:	d208      	bcs.n	d008217c <speech_synth_render+0x5c8>
d008216a:	2800      	cmp	r0, #0
d008216c:	f040 8556 	bne.w	d0082c1c <speech_synth_render+0x1068>
d0082170:	4a1a      	ldr	r2, [pc, #104]	; (d00821dc <speech_synth_render+0x628>)
d0082172:	4920      	ldr	r1, [pc, #128]	; (d00821f4 <speech_synth_render+0x640>)
d0082174:	18d0      	adds	r0, r2, r3
d0082176:	2203      	movs	r2, #3
d0082178:	f001 fe30 	bl	d0083ddc <memcpy>
d008217c:	3503      	adds	r5, #3
d008217e:	b2ad      	uxth	r5, r5
d0082180:	e720      	b.n	d0081fc4 <speech_synth_render+0x410>
d0082182:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d0082186:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008218a:	d222      	bcs.n	d00821d2 <speech_synth_render+0x61e>
d008218c:	200c      	movs	r0, #12
d008218e:	9e01      	ldr	r6, [sp, #4]
d0082190:	1c59      	adds	r1, r3, #1
d0082192:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d0082196:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d008219a:	2358      	movs	r3, #88	; 0x58
d008219c:	480f      	ldr	r0, [pc, #60]	; (d00821dc <speech_synth_render+0x628>)
d008219e:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d00821a2:	8053      	strh	r3, [r2, #2]
d00821a4:	f001 ffb7 	bl	d0084116 <strlen>
d00821a8:	1d02      	adds	r2, r0, #4
d00821aa:	4603      	mov	r3, r0
d00821ac:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00821b0:	d20f      	bcs.n	d00821d2 <speech_synth_render+0x61e>
d00821b2:	b140      	cbz	r0, d00821c6 <speech_synth_render+0x612>
d00821b4:	4e09      	ldr	r6, [pc, #36]	; (d00821dc <speech_synth_render+0x628>)
d00821b6:	2120      	movs	r1, #32
d00821b8:	1832      	adds	r2, r6, r0
d00821ba:	4630      	mov	r0, r6
d00821bc:	54f1      	strb	r1, [r6, r3]
d00821be:	7057      	strb	r7, [r2, #1]
d00821c0:	f001 ffa9 	bl	d0084116 <strlen>
d00821c4:	4603      	mov	r3, r0
d00821c6:	4a05      	ldr	r2, [pc, #20]	; (d00821dc <speech_synth_render+0x628>)
d00821c8:	490a      	ldr	r1, [pc, #40]	; (d00821f4 <speech_synth_render+0x640>)
d00821ca:	18d0      	adds	r0, r2, r3
d00821cc:	2203      	movs	r2, #3
d00821ce:	f001 fe05 	bl	d0083ddc <memcpy>
d00821d2:	3502      	adds	r5, #2
d00821d4:	b2ad      	uxth	r5, r5
d00821d6:	e6f5      	b.n	d0081fc4 <speech_synth_render+0x410>
d00821d8:	d0084c08 	.word	0xd0084c08
d00821dc:	d00c61b8 	.word	0xd00c61b8
d00821e0:	d008477c 	.word	0xd008477c
d00821e4:	00040998 	.word	0x00040998
d00821e8:	d0085820 	.word	0xd0085820
d00821ec:	d0084b80 	.word	0xd0084b80
d00821f0:	1234abcd 	.word	0x1234abcd
d00821f4:	d0084708 	.word	0xd0084708
d00821f8:	d008473c 	.word	0xd008473c
d00821fc:	4ab6      	ldr	r2, [pc, #728]	; (d00824d8 <speech_synth_render+0x924>)
d00821fe:	2180      	movs	r1, #128	; 0x80
d0082200:	48b6      	ldr	r0, [pc, #728]	; (d00824dc <speech_synth_render+0x928>)
d0082202:	9623      	str	r6, [sp, #140]	; 0x8c
d0082204:	f001 fdf8 	bl	d0083df8 <memset>
d0082208:	2248      	movs	r2, #72	; 0x48
d008220a:	a826      	add	r0, sp, #152	; 0x98
d008220c:	2100      	movs	r1, #0
d008220e:	f001 fdf3 	bl	d0083df8 <memset>
d0082212:	4bb3      	ldr	r3, [pc, #716]	; (d00824e0 <speech_synth_render+0x92c>)
d0082214:	461a      	mov	r2, r3
d0082216:	9325      	str	r3, [sp, #148]	; 0x94
d0082218:	4bb2      	ldr	r3, [pc, #712]	; (d00824e4 <speech_synth_render+0x930>)
d008221a:	6013      	str	r3, [r2, #0]
d008221c:	9b23      	ldr	r3, [sp, #140]	; 0x8c
d008221e:	2200      	movs	r2, #0
d0082220:	ed9f 2ab1 	vldr	s4, [pc, #708]	; d00824e8 <speech_synth_render+0x934>
d0082224:	3b01      	subs	r3, #1
d0082226:	f8df a2bc 	ldr.w	sl, [pc, #700]	; d00824e4 <speech_synth_render+0x930>
d008222a:	eeb0 ba42 	vmov.f32	s22, s4
d008222e:	49af      	ldr	r1, [pc, #700]	; (d00824ec <speech_synth_render+0x938>)
d0082230:	b29b      	uxth	r3, r3
d0082232:	eef0 da42 	vmov.f32	s27, s4
d0082236:	eef0 aa42 	vmov.f32	s21, s4
d008223a:	eddf eaad 	vldr	s29, [pc, #692]	; d00824f0 <speech_synth_render+0x93c>
d008223e:	3302      	adds	r3, #2
d0082240:	eef0 fa42 	vmov.f32	s31, s4
d0082244:	eeb0 aa42 	vmov.f32	s20, s4
d0082248:	ed9f eaaa 	vldr	s28, [pc, #680]	; d00824f4 <speech_synth_render+0x940>
d008224c:	eeb0 da42 	vmov.f32	s26, s4
d0082250:	9324      	str	r3, [sp, #144]	; 0x90
d0082252:	eef0 9a42 	vmov.f32	s19, s4
d0082256:	2301      	movs	r3, #1
d0082258:	eef0 ca42 	vmov.f32	s25, s4
d008225c:	4657      	mov	r7, sl
d008225e:	eeb0 9a42 	vmov.f32	s18, s4
d0082262:	9217      	str	r2, [sp, #92]	; 0x5c
d0082264:	eeb0 ca42 	vmov.f32	s24, s4
d0082268:	910f      	str	r1, [sp, #60]	; 0x3c
d008226a:	eef0 8a42 	vmov.f32	s17, s4
d008226e:	920b      	str	r2, [sp, #44]	; 0x2c
d0082270:	eeb0 fa42 	vmov.f32	s30, s4
d0082274:	9212      	str	r2, [sp, #72]	; 0x48
d0082276:	eef0 7a42 	vmov.f32	s15, s4
d008227a:	9313      	str	r3, [sp, #76]	; 0x4c
d008227c:	eef0 ba42 	vmov.f32	s23, s4
d0082280:	9202      	str	r2, [sp, #8]
d0082282:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0082284:	9923      	ldr	r1, [sp, #140]	; 0x8c
d0082286:	781a      	ldrb	r2, [r3, #0]
d0082288:	9200      	str	r2, [sp, #0]
d008228a:	9a13      	ldr	r2, [sp, #76]	; 0x4c
d008228c:	428a      	cmp	r2, r1
d008228e:	f080 8484 	bcs.w	d0082b9a <speech_synth_render+0xfe6>
d0082292:	791b      	ldrb	r3, [r3, #4]
d0082294:	4618      	mov	r0, r3
d0082296:	931f      	str	r3, [sp, #124]	; 0x7c
d0082298:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d008229a:	f245 6222 	movw	r2, #22050	; 0x5622
d008229e:	4996      	ldr	r1, [pc, #600]	; (d00824f8 <speech_synth_render+0x944>)
d00822a0:	885b      	ldrh	r3, [r3, #2]
d00822a2:	fb02 f203 	mul.w	r2, r2, r3
d00822a6:	fba1 3102 	umull	r3, r1, r1, r2
d00822aa:	098b      	lsrs	r3, r1, #6
d00822ac:	9311      	str	r3, [sp, #68]	; 0x44
d00822ae:	9b00      	ldr	r3, [sp, #0]
d00822b0:	2b00      	cmp	r3, #0
d00822b2:	f000 8476 	beq.w	d0082ba2 <speech_synth_render+0xfee>
d00822b6:	f240 24b1 	movw	r4, #689	; 0x2b1
d00822ba:	4d90      	ldr	r5, [pc, #576]	; (d00824fc <speech_synth_render+0x948>)
d00822bc:	4b90      	ldr	r3, [pc, #576]	; (d0082500 <speech_synth_render+0x94c>)
d00822be:	4626      	mov	r6, r4
d00822c0:	098c      	lsrs	r4, r1, #6
d00822c2:	42aa      	cmp	r2, r5
d00822c4:	bf98      	it	ls
d00822c6:	4626      	movls	r6, r4
d00822c8:	9d02      	ldr	r5, [sp, #8]
d00822ca:	429d      	cmp	r5, r3
d00822cc:	9620      	str	r6, [sp, #128]	; 0x80
d00822ce:	bf8c      	ite	hi
d00822d0:	2300      	movhi	r3, #0
d00822d2:	2301      	movls	r3, #1
d00822d4:	f5b2 7f7a 	cmp.w	r2, #1000	; 0x3e8
d00822d8:	f0c0 8447 	bcc.w	d0082b6a <speech_synth_render+0xfb6>
d00822dc:	2b00      	cmp	r3, #0
d00822de:	f000 8444 	beq.w	d0082b6a <speech_synth_render+0xfb6>
d00822e2:	4d88      	ldr	r5, [pc, #544]	; (d0082504 <speech_synth_render+0x950>)
d00822e4:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d00822e8:	9b00      	ldr	r3, [sp, #0]
d00822ea:	eeb0 6a67 	vmov.f32	s12, s15
d00822ee:	fba5 c202 	umull	ip, r2, r5, r2
d00822f2:	098d      	lsrs	r5, r1, #6
d00822f4:	4c84      	ldr	r4, [pc, #528]	; (d0082508 <speech_synth_render+0x954>)
d00822f6:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00822fa:	1b75      	subs	r5, r6, r5
d00822fc:	09ce      	lsrs	r6, r1, #7
d00822fe:	4982      	ldr	r1, [pc, #520]	; (d0082508 <speech_synth_render+0x954>)
d0082300:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d0082304:	4c81      	ldr	r4, [pc, #516]	; (d008250c <speech_synth_render+0x958>)
d0082306:	eeb0 8a42 	vmov.f32	s16, s4
d008230a:	eb01 0180 	add.w	r1, r1, r0, lsl #2
d008230e:	9622      	str	r6, [sp, #136]	; 0x88
d0082310:	9116      	str	r1, [sp, #88]	; 0x58
d0082312:	8899      	ldrh	r1, [r3, #4]
d0082314:	9104      	str	r1, [sp, #16]
d0082316:	0991      	lsrs	r1, r2, #6
d0082318:	9a02      	ldr	r2, [sp, #8]
d008231a:	9121      	str	r1, [sp, #132]	; 0x84
d008231c:	88d9      	ldrh	r1, [r3, #6]
d008231e:	9105      	str	r1, [sp, #20]
d0082320:	1911      	adds	r1, r2, r4
d0082322:	9a00      	ldr	r2, [sp, #0]
d0082324:	9114      	str	r1, [sp, #80]	; 0x50
d0082326:	0092      	lsls	r2, r2, #2
d0082328:	8919      	ldrh	r1, [r3, #8]
d008232a:	9215      	str	r2, [sp, #84]	; 0x54
d008232c:	7ada      	ldrb	r2, [r3, #11]
d008232e:	9106      	str	r1, [sp, #24]
d0082330:	ebc5 2105 	rsb	r1, r5, r5, lsl #8
d0082334:	9208      	str	r2, [sp, #32]
d0082336:	2200      	movs	r2, #0
d0082338:	9110      	str	r1, [sp, #64]	; 0x40
d008233a:	9201      	str	r2, [sp, #4]
d008233c:	7a99      	ldrb	r1, [r3, #10]
d008233e:	7b1a      	ldrb	r2, [r3, #12]
d0082340:	9d20      	ldr	r5, [sp, #128]	; 0x80
d0082342:	7b5b      	ldrb	r3, [r3, #13]
d0082344:	9107      	str	r1, [sp, #28]
d0082346:	9209      	str	r2, [sp, #36]	; 0x24
d0082348:	930a      	str	r3, [sp, #40]	; 0x28
d008234a:	2d00      	cmp	r5, #0
d008234c:	f000 8307 	beq.w	d008295e <speech_synth_render+0xdaa>
d0082350:	9b01      	ldr	r3, [sp, #4]
d0082352:	9a11      	ldr	r2, [sp, #68]	; 0x44
d0082354:	18eb      	adds	r3, r5, r3
d0082356:	429a      	cmp	r2, r3
d0082358:	f200 8301 	bhi.w	d008295e <speech_synth_render+0xdaa>
d008235c:	9816      	ldr	r0, [sp, #88]	; 0x58
d008235e:	9b04      	ldr	r3, [sp, #16]
d0082360:	f8b0 a004 	ldrh.w	sl, [r0, #4]
d0082364:	9e09      	ldr	r6, [sp, #36]	; 0x24
d0082366:	ebaa 0a03 	sub.w	sl, sl, r3
d008236a:	7b03      	ldrb	r3, [r0, #12]
d008236c:	f8b0 c008 	ldrh.w	ip, [r0, #8]
d0082370:	1b9b      	subs	r3, r3, r6
d0082372:	9e10      	ldr	r6, [sp, #64]	; 0x40
d0082374:	9c06      	ldr	r4, [sp, #24]
d0082376:	f8b0 9006 	ldrh.w	r9, [r0, #6]
d008237a:	ebac 0804 	sub.w	r8, ip, r4
d008237e:	7a81      	ldrb	r1, [r0, #10]
d0082380:	9a05      	ldr	r2, [sp, #20]
d0082382:	9c07      	ldr	r4, [sp, #28]
d0082384:	eba9 0902 	sub.w	r9, r9, r2
d0082388:	7ac2      	ldrb	r2, [r0, #11]
d008238a:	1b09      	subs	r1, r1, r4
d008238c:	7b40      	ldrb	r0, [r0, #13]
d008238e:	9c08      	ldr	r4, [sp, #32]
d0082390:	fbb6 fef5 	udiv	lr, r6, r5
d0082394:	9e0a      	ldr	r6, [sp, #40]	; 0x28
d0082396:	fa1f fc8e 	uxth.w	ip, lr
d008239a:	fa0f fb8e 	sxth.w	fp, lr
d008239e:	1b12      	subs	r2, r2, r4
d00823a0:	fb0c fa0a 	mul.w	sl, ip, sl
d00823a4:	4c5a      	ldr	r4, [pc, #360]	; (d0082510 <speech_synth_render+0x95c>)
d00823a6:	fb0c f909 	mul.w	r9, ip, r9
d00823aa:	1b80      	subs	r0, r0, r6
d00823ac:	fb0b f101 	mul.w	r1, fp, r1
d00823b0:	46e6      	mov	lr, ip
d00823b2:	fb0b f000 	mul.w	r0, fp, r0
d00823b6:	ea4f 75ea 	mov.w	r5, sl, asr #31
d00823ba:	fb0b f202 	mul.w	r2, fp, r2
d00823be:	fb0b f303 	mul.w	r3, fp, r3
d00823c2:	fb0c fc08 	mul.w	ip, ip, r8
d00823c6:	fb84 860a 	smull	r8, r6, r4, sl
d00823ca:	fb84 b809 	smull	fp, r8, r4, r9
d00823ce:	9303      	str	r3, [sp, #12]
d00823d0:	ea4f 73e9 	mov.w	r3, r9, asr #31
d00823d4:	44c1      	add	r9, r8
d00823d6:	fb84 b801 	smull	fp, r8, r4, r1
d00823da:	44b2      	add	sl, r6
d00823dc:	fb84 b60c 	smull	fp, r6, r4, ip
d00823e0:	4488      	add	r8, r1
d00823e2:	ebc3 19e9 	rsb	r9, r3, r9, asr #7
d00823e6:	17c9      	asrs	r1, r1, #31
d00823e8:	9b03      	ldr	r3, [sp, #12]
d00823ea:	ebc5 1aea 	rsb	sl, r5, sl, asr #7
d00823ee:	fb84 b502 	smull	fp, r5, r4, r2
d00823f2:	910c      	str	r1, [sp, #48]	; 0x30
d00823f4:	4466      	add	r6, ip
d00823f6:	fb84 1b03 	smull	r1, fp, r4, r3
d00823fa:	4415      	add	r5, r2
d00823fc:	fb84 1400 	smull	r1, r4, r4, r0
d0082400:	17d2      	asrs	r2, r2, #31
d0082402:	449b      	add	fp, r3
d0082404:	9904      	ldr	r1, [sp, #16]
d0082406:	4404      	add	r4, r0
d0082408:	17c0      	asrs	r0, r0, #31
d008240a:	ebc2 12e5 	rsb	r2, r2, r5, asr #7
d008240e:	448a      	add	sl, r1
d0082410:	ebc0 14e4 	rsb	r4, r0, r4, asr #7
d0082414:	9808      	ldr	r0, [sp, #32]
d0082416:	17db      	asrs	r3, r3, #31
d0082418:	9905      	ldr	r1, [sp, #20]
d008241a:	4402      	add	r2, r0
d008241c:	ea4f 7cec 	mov.w	ip, ip, asr #31
d0082420:	9809      	ldr	r0, [sp, #36]	; 0x24
d0082422:	ebc3 13eb 	rsb	r3, r3, fp, asr #7
d0082426:	9d06      	ldr	r5, [sp, #24]
d0082428:	4489      	add	r9, r1
d008242a:	4403      	add	r3, r0
d008242c:	990c      	ldr	r1, [sp, #48]	; 0x30
d008242e:	980a      	ldr	r0, [sp, #40]	; 0x28
d0082430:	ebcc 16e6 	rsb	r6, ip, r6, asr #7
d0082434:	ebc1 11e8 	rsb	r1, r1, r8, asr #7
d0082438:	442e      	add	r6, r5
d008243a:	4404      	add	r4, r0
d008243c:	9d07      	ldr	r5, [sp, #28]
d008243e:	b2db      	uxtb	r3, r3
d0082440:	9800      	ldr	r0, [sp, #0]
d0082442:	b2d2      	uxtb	r2, r2
d0082444:	4429      	add	r1, r5
d0082446:	930e      	str	r3, [sp, #56]	; 0x38
d0082448:	4683      	mov	fp, r0
d008244a:	981f      	ldr	r0, [sp, #124]	; 0x7c
d008244c:	b2c9      	uxtb	r1, r1
d008244e:	920d      	str	r2, [sp, #52]	; 0x34
d0082450:	f1be 0f7f 	cmp.w	lr, #127	; 0x7f
d0082454:	bf88      	it	hi
d0082456:	4683      	movhi	fp, r0
d0082458:	b2e3      	uxtb	r3, r4
d008245a:	f1be 0f7f 	cmp.w	lr, #127	; 0x7f
d008245e:	9103      	str	r1, [sp, #12]
d0082460:	fa1f f58a 	uxth.w	r5, sl
d0082464:	930c      	str	r3, [sp, #48]	; 0x30
d0082466:	fa1f f889 	uxth.w	r8, r9
d008246a:	b2b6      	uxth	r6, r6
d008246c:	f241 81d3 	bls.w	d0083816 <speech_synth_render+0x1c62>
d0082470:	9b16      	ldr	r3, [sp, #88]	; 0x58
d0082472:	f893 a00e 	ldrb.w	sl, [r3, #14]
d0082476:	f00a 0a01 	and.w	sl, sl, #1
d008247a:	f1ab 0315 	sub.w	r3, fp, #21
d008247e:	f1ab 0914 	sub.w	r9, fp, #20
d0082482:	b2db      	uxtb	r3, r3
d0082484:	2b02      	cmp	r3, #2
d0082486:	9318      	str	r3, [sp, #96]	; 0x60
d0082488:	f200 831c 	bhi.w	d0082ac4 <speech_synth_render+0xf10>
d008248c:	eddf 4a21 	vldr	s9, [pc, #132]	; d0082514 <speech_synth_render+0x960>
d0082490:	fa5f f989 	uxtb.w	r9, r9
d0082494:	eddf 3a20 	vldr	s7, [pc, #128]	; d0082518 <speech_synth_render+0x964>
d0082498:	ed9f 4a20 	vldr	s8, [pc, #128]	; d008251c <speech_synth_render+0x968>
d008249c:	ed9f 5a20 	vldr	s10, [pc, #128]	; d0082520 <speech_synth_render+0x96c>
d00824a0:	eddf 5a20 	vldr	s11, [pc, #128]	; d0082524 <speech_synth_render+0x970>
d00824a4:	9b12      	ldr	r3, [sp, #72]	; 0x48
d00824a6:	b123      	cbz	r3, d00824b2 <speech_synth_render+0x8fe>
d00824a8:	f240 2375 	movw	r3, #629	; 0x275
d00824ac:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d00824ae:	429a      	cmp	r2, r3
d00824b0:	d946      	bls.n	d0082540 <speech_synth_render+0x98c>
d00824b2:	9b02      	ldr	r3, [sp, #8]
d00824b4:	085a      	lsrs	r2, r3, #1
d00824b6:	4b1c      	ldr	r3, [pc, #112]	; (d0082528 <speech_synth_render+0x974>)
d00824b8:	fba3 3202 	umull	r3, r2, r3, r2
d00824bc:	f3c2 2303 	ubfx	r3, r2, #8, #4
d00824c0:	0512      	lsls	r2, r2, #20
d00824c2:	d502      	bpl.n	d00824ca <speech_synth_render+0x916>
d00824c4:	f1c3 030f 	rsb	r3, r3, #15
d00824c8:	b29b      	uxth	r3, r3
d00824ca:	33ef      	adds	r3, #239	; 0xef
d00824cc:	2200      	movs	r2, #0
d00824ce:	b29b      	uxth	r3, r3
d00824d0:	920b      	str	r2, [sp, #44]	; 0x2c
d00824d2:	9312      	str	r3, [sp, #72]	; 0x48
d00824d4:	e034      	b.n	d0082540 <speech_synth_render+0x98c>
d00824d6:	bf00      	nop
d00824d8:	00040998 	.word	0x00040998
d00824dc:	d0085820 	.word	0xd0085820
d00824e0:	d0084b80 	.word	0xd0084b80
d00824e4:	1234abcd 	.word	0x1234abcd
d00824e8:	00000000 	.word	0x00000000
d00824ec:	d0084c08 	.word	0xd0084c08
d00824f0:	3fdc28f6 	.word	0x3fdc28f6
d00824f4:	3d3851ec 	.word	0x3d3851ec
d00824f8:	10624dd3 	.word	0x10624dd3
d00824fc:	000a8367 	.word	0x000a8367
d0082500:	00040997 	.word	0x00040997
d0082504:	057619f1 	.word	0x057619f1
d0082508:	d0084794 	.word	0xd0084794
d008250c:	d008581f 	.word	0xd008581f
d0082510:	80808081 	.word	0x80808081
d0082514:	428a9999 	.word	0x428a9999
d0082518:	43778000 	.word	0x43778000
d008251c:	43ad4000 	.word	0x43ad4000
d0082520:	4418a000 	.word	0x4418a000
d0082524:	4441e000 	.word	0x4441e000
d0082528:	d00d00d1 	.word	0xd00d00d1
d008252c:	46eb851f 	.word	0x46eb851f
d0082530:	37800000 	.word	0x37800000
d0082534:	4747ae14 	.word	0x4747ae14
d0082538:	00000000 	.word	0x00000000
d008253c:	3a808081 	.word	0x3a808081
d0082540:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
d0082542:	2300      	movs	r3, #0
d0082544:	f245 6222 	movw	r2, #22050	; 0x5622
d0082548:	2000      	movs	r0, #0
d008254a:	3401      	adds	r4, #1
d008254c:	9912      	ldr	r1, [sp, #72]	; 0x48
d008254e:	ed8d 6a1e 	vstr	s12, [sp, #120]	; 0x78
d0082552:	edcd 4a1d 	vstr	s9, [sp, #116]	; 0x74
d0082556:	edcd 3a1c 	vstr	s7, [sp, #112]	; 0x70
d008255a:	ed8d 4a1b 	vstr	s8, [sp, #108]	; 0x6c
d008255e:	ed8d 5a1a 	vstr	s10, [sp, #104]	; 0x68
d0082562:	edcd 5a19 	vstr	s11, [sp, #100]	; 0x64
d0082566:	940b      	str	r4, [sp, #44]	; 0x2c
d0082568:	f001 faae 	bl	d0083ac8 <__aeabi_uldivmod>
d008256c:	9b17      	ldr	r3, [sp, #92]	; 0x5c
d008256e:	ed5f 2a11 	vldr	s5, [pc, #-68]	; d008252c <speech_synth_render+0x978>
d0082572:	4403      	add	r3, r0
d0082574:	ed5f 6a12 	vldr	s13, [pc, #-72]	; d0082530 <speech_synth_render+0x97c>
d0082578:	eddd 5a19 	vldr	s11, [sp, #100]	; 0x64
d008257c:	9317      	str	r3, [sp, #92]	; 0x5c
d008257e:	0c1b      	lsrs	r3, r3, #16
d0082580:	ed9d 5a1a 	vldr	s10, [sp, #104]	; 0x68
d0082584:	ee03 3a10 	vmov	s6, r3
d0082588:	ed9d 4a1b 	vldr	s8, [sp, #108]	; 0x6c
d008258c:	eddd 3a1c 	vldr	s7, [sp, #112]	; 0x70
d0082590:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0082594:	eddd 4a1d 	vldr	s9, [sp, #116]	; 0x74
d0082598:	ed9d 6a1e 	vldr	s12, [sp, #120]	; 0x78
d008259c:	eeb4 3ae2 	vcmpe.f32	s6, s5
d00825a0:	ee63 6a26 	vmul.f32	s13, s6, s13
d00825a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00825a8:	f100 827d 	bmi.w	d0082aa6 <speech_synth_render+0xef2>
d00825ac:	ed5f 7a1f 	vldr	s15, [pc, #-124]	; d0082534 <speech_synth_render+0x980>
d00825b0:	eeb4 3ae7 	vcmpe.f32	s6, s15
d00825b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00825b8:	f100 8260 	bmi.w	d0082a7c <speech_synth_render+0xec8>
d00825bc:	ed5f 7a22 	vldr	s15, [pc, #-136]	; d0082538 <speech_synth_render+0x984>
d00825c0:	f1ba 0f00 	cmp.w	sl, #0
d00825c4:	f040 8243 	bne.w	d0082a4e <speech_synth_render+0xe9a>
d00825c8:	ed9d 7a03 	vldr	s14, [sp, #12]
d00825cc:	eef8 2a47 	vcvt.f32.u32	s5, s14
d00825d0:	ed1f 7a27 	vldr	s14, [pc, #-156]	; d0082538 <speech_synth_render+0x984>
d00825d4:	990c      	ldr	r1, [sp, #48]	; 0x30
d00825d6:	2900      	cmp	r1, #0
d00825d8:	f000 8234 	beq.w	d0082a44 <speech_synth_render+0xe90>
d00825dc:	9a00      	ldr	r2, [sp, #0]
d00825de:	ee06 1a90 	vmov	s13, r1
d00825e2:	9b15      	ldr	r3, [sp, #84]	; 0x54
d00825e4:	eeb8 6a66 	vcvt.f32.u32	s12, s13
d00825e8:	ed5f 6a2c 	vldr	s13, [pc, #-176]	; d008253c <speech_synth_render+0x988>
d00825ec:	4413      	add	r3, r2
d00825ee:	4aea      	ldr	r2, [pc, #936]	; (d0082998 <speech_synth_render+0xde4>)
d00825f0:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d00825f4:	ee66 6a26 	vmul.f32	s13, s12, s13
d00825f8:	7b9b      	ldrb	r3, [r3, #14]
d00825fa:	079b      	lsls	r3, r3, #30
d00825fc:	f140 821f 	bpl.w	d0082a3e <speech_synth_render+0xe8a>
d0082600:	9b21      	ldr	r3, [sp, #132]	; 0x84
d0082602:	9a01      	ldr	r2, [sp, #4]
d0082604:	4293      	cmp	r3, r2
d0082606:	f240 82a3 	bls.w	d0082b50 <speech_synth_render+0xf9c>
d008260a:	ed9f 6ae4 	vldr	s12, [pc, #912]	; d008299c <speech_synth_render+0xde8>
d008260e:	ed9f 3ae4 	vldr	s6, [pc, #912]	; d00829a0 <speech_synth_render+0xdec>
d0082612:	ee27 7a06 	vmul.f32	s14, s14, s12
d0082616:	ee66 6a83 	vmul.f32	s13, s13, s6
d008261a:	ea87 3747 	eor.w	r7, r7, r7, lsl #13
d008261e:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d0082622:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d0082626:	143b      	asrs	r3, r7, #16
d0082628:	ee06 3a10 	vmov	s12, r3
d008262c:	eeba 6ae8 	vcvt.f32.s32	s12, s12, #15
d0082630:	ee26 6a26 	vmul.f32	s12, s12, s13
d0082634:	f1bb 0f11 	cmp.w	fp, #17
d0082638:	f000 81fc 	beq.w	d0082a34 <speech_synth_render+0xe80>
d008263c:	f1ba 0f00 	cmp.w	sl, #0
d0082640:	d00e      	beq.n	d0082660 <speech_synth_render+0xaac>
d0082642:	ea87 3747 	eor.w	r7, r7, r7, lsl #13
d0082646:	ed9f 2ad7 	vldr	s4, [pc, #860]	; d00829a4 <speech_synth_render+0xdf0>
d008264a:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d008264e:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d0082652:	143b      	asrs	r3, r7, #16
d0082654:	ee06 3a90 	vmov	s13, r3
d0082658:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d008265c:	eea6 7a82 	vfma.f32	s14, s13, s4
d0082660:	ee37 2a4f 	vsub.f32	s4, s14, s30
d0082664:	eddf 6ad0 	vldr	s13, [pc, #832]	; d00829a8 <speech_synth_render+0xdf4>
d0082668:	1c6b      	adds	r3, r5, #1
d008266a:	eddf 1ad0 	vldr	s3, [pc, #832]	; d00829ac <speech_synth_render+0xdf8>
d008266e:	2d7a      	cmp	r5, #122	; 0x7a
d0082670:	eea2 fa26 	vfma.f32	s30, s4, s13
d0082674:	ee06 3a90 	vmov	s13, r3
d0082678:	eeb8 2ae6 	vcvt.f32.s32	s4, s13
d008267c:	eec4 6a82 	vdiv.f32	s13, s9, s4
d0082680:	ee37 7a4f 	vsub.f32	s14, s14, s30
d0082684:	eef0 4a4f 	vmov.f32	s9, s30
d0082688:	eee7 4a21 	vfma.f32	s9, s14, s3
d008268c:	f240 81cf 	bls.w	d0082a2e <speech_synth_render+0xe7a>
d0082690:	ee07 5a10 	vmov	s14, r5
d0082694:	ed9f 2ac6 	vldr	s4, [pc, #792]	; d00829b0 <speech_synth_render+0xdfc>
d0082698:	eef8 1a47 	vcvt.f32.u32	s3, s14
d008269c:	ed9f 7ac5 	vldr	s14, [pc, #788]	; d00829b4 <speech_synth_render+0xe00>
d00826a0:	ee21 2a82 	vmul.f32	s4, s3, s4
d00826a4:	fe82 2a47 	vminnm.f32	s4, s4, s14
d00826a8:	fe86 7aee 	vminnm.f32	s14, s13, s29
d00826ac:	eef0 6a64 	vmov.f32	s13, s9
d00826b0:	eee8 ba82 	vfma.f32	s23, s17, s4
d00826b4:	fe87 7a0e 	vmaxnm.f32	s14, s14, s28
d00826b8:	f108 0301 	add.w	r3, r8, #1
d00826bc:	eef2 0a00 	vmov.f32	s1, #32	; 0x41000000  8.0
d00826c0:	eee8 6ac7 	vfms.f32	s13, s17, s14
d00826c4:	f1b8 0f7a 	cmp.w	r8, #122	; 0x7a
d00826c8:	ee07 3a10 	vmov	s14, r3
d00826cc:	eeba 1a00 	vmov.f32	s2, #160	; 0xc1000000 -8.0
d00826d0:	eef8 1ac7 	vcvt.f32.s32	s3, s14
d00826d4:	ee76 6aeb 	vsub.f32	s13, s13, s23
d00826d8:	fecb bae0 	vminnm.f32	s23, s23, s1
d00826dc:	ee83 7aa1 	vdiv.f32	s14, s7, s3
d00826e0:	fecb ba81 	vmaxnm.f32	s23, s23, s2
d00826e4:	eee2 8a26 	vfma.f32	s17, s4, s13
d00826e8:	fec8 8ae0 	vminnm.f32	s17, s17, s1
d00826ec:	fec8 8a81 	vmaxnm.f32	s17, s17, s2
d00826f0:	f240 819a 	bls.w	d0082a28 <speech_synth_render+0xe74>
d00826f4:	ee06 8a90 	vmov	s13, r8
d00826f8:	eddf 3aae 	vldr	s7, [pc, #696]	; d00829b4 <speech_synth_render+0xe00>
d00826fc:	eeb8 2a66 	vcvt.f32.u32	s4, s13
d0082700:	eddf 6aab 	vldr	s13, [pc, #684]	; d00829b0 <speech_synth_render+0xdfc>
d0082704:	ee62 6a26 	vmul.f32	s13, s4, s13
d0082708:	fec6 6ae3 	vminnm.f32	s13, s13, s7
d008270c:	eef0 3a64 	vmov.f32	s7, s9
d0082710:	fe87 7a6e 	vminnm.f32	s14, s14, s29
d0082714:	fe87 7a0e 	vmaxnm.f32	s14, s14, s28
d0082718:	eea9 ca26 	vfma.f32	s24, s18, s13
d008271c:	1c73      	adds	r3, r6, #1
d008271e:	eeb2 2a00 	vmov.f32	s4, #32	; 0x41000000  8.0
d0082722:	eee9 3a47 	vfms.f32	s7, s18, s14
d0082726:	2e7a      	cmp	r6, #122	; 0x7a
d0082728:	ee01 3a10 	vmov	s2, r3
d008272c:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0082730:	eeb0 7a63 	vmov.f32	s14, s7
d0082734:	eefa 3a00 	vmov.f32	s7, #160	; 0xc1000000 -8.0
d0082738:	ee84 0a01 	vdiv.f32	s0, s8, s2
d008273c:	ee37 7a4c 	vsub.f32	s14, s14, s24
d0082740:	fe8c ca42 	vminnm.f32	s24, s24, s4
d0082744:	fe8c ca23 	vmaxnm.f32	s24, s24, s7
d0082748:	eea6 9a87 	vfma.f32	s18, s13, s14
d008274c:	fe89 9a42 	vminnm.f32	s18, s18, s4
d0082750:	fe89 9a23 	vmaxnm.f32	s18, s18, s7
d0082754:	f240 811c 	bls.w	d0082990 <speech_synth_render+0xddc>
d0082758:	ee07 6a10 	vmov	s14, r6
d008275c:	ed9f 4a95 	vldr	s8, [pc, #596]	; d00829b4 <speech_synth_render+0xe00>
d0082760:	eef8 3a47 	vcvt.f32.u32	s7, s14
d0082764:	ed9f 7a92 	vldr	s14, [pc, #584]	; d00829b0 <speech_synth_render+0xdfc>
d0082768:	ee23 7a87 	vmul.f32	s14, s7, s14
d008276c:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0082770:	eddf 0a91 	vldr	s1, [pc, #580]	; d00829b8 <speech_synth_render+0xe04>
d0082774:	eec5 3a21 	vdiv.f32	s7, s10, s3
d0082778:	fec0 1a6e 	vminnm.f32	s3, s0, s29
d008277c:	ed9f 2a8f 	vldr	s4, [pc, #572]	; d00829bc <speech_synth_render+0xe08>
d0082780:	fec1 1a8e 	vmaxnm.f32	s3, s3, s28
d0082784:	f1ba 0f00 	cmp.w	sl, #0
d0082788:	ed9f 5a8d 	vldr	s10, [pc, #564]	; d00829c0 <speech_synth_render+0xe0c>
d008278c:	eeeb da20 	vfma.f32	s27, s22, s1
d0082790:	fe0e 5a05 	vseleq.f32	s10, s28, s10
d0082794:	ee85 4a81 	vdiv.f32	s8, s11, s2
d0082798:	f1b9 0f0c 	cmp.w	r9, #12
d008279c:	eeb0 0a6d 	vmov.f32	s0, s27
d00827a0:	eef0 5a64 	vmov.f32	s11, s9
d00827a4:	eeb0 1a6f 	vmov.f32	s2, s31
d00827a8:	eeab 0a02 	vfma.f32	s0, s22, s4
d00827ac:	eee9 5ae1 	vfms.f32	s11, s19, s3
d00827b0:	fec3 3aee 	vminnm.f32	s7, s7, s29
d00827b4:	fec3 3a8e 	vmaxnm.f32	s7, s7, s28
d00827b8:	eee9 ca87 	vfma.f32	s25, s19, s14
d00827bc:	eeaa da26 	vfma.f32	s26, s20, s13
d00827c0:	eeaa 1a87 	vfma.f32	s2, s21, s14
d00827c4:	eeb0 2a40 	vmov.f32	s4, s0
d00827c8:	eeb0 0a46 	vmov.f32	s0, s12
d00827cc:	fe84 4a6e 	vminnm.f32	s8, s8, s29
d00827d0:	fe84 4a0e 	vmaxnm.f32	s8, s8, s28
d00827d4:	eeaa 6ac4 	vfms.f32	s12, s21, s8
d00827d8:	eeaa 0a63 	vfms.f32	s0, s20, s7
d00827dc:	eef0 1a65 	vmov.f32	s3, s11
d00827e0:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d00827e4:	ee34 2ac2 	vsub.f32	s4, s9, s4
d00827e8:	ee71 1aec 	vsub.f32	s3, s3, s25
d00827ec:	fec1 fa65 	vminnm.f32	s31, s2, s11
d00827f0:	ee36 1a41 	vsub.f32	s2, s12, s2
d00827f4:	eef0 3a40 	vmov.f32	s7, s0
d00827f8:	fecc cae5 	vminnm.f32	s25, s25, s11
d00827fc:	eee7 9a21 	vfma.f32	s19, s14, s3
d0082800:	fecd dae5 	vminnm.f32	s27, s27, s11
d0082804:	eea2 ba20 	vfma.f32	s22, s4, s1
d0082808:	ee73 3acd 	vsub.f32	s7, s7, s26
d008280c:	fe8d da65 	vminnm.f32	s26, s26, s11
d0082810:	eee1 aa07 	vfma.f32	s21, s2, s14
d0082814:	eeba 0a00 	vmov.f32	s0, #160	; 0xc1000000 -8.0
d0082818:	eea3 aaa6 	vfma.f32	s20, s7, s13
d008281c:	fec9 9ae5 	vminnm.f32	s19, s19, s11
d0082820:	fe8b ba65 	vminnm.f32	s22, s22, s11
d0082824:	fecc ca80 	vmaxnm.f32	s25, s25, s0
d0082828:	fe8d da00 	vmaxnm.f32	s26, s26, s0
d008282c:	fecd da80 	vmaxnm.f32	s27, s27, s0
d0082830:	feca aae5 	vminnm.f32	s21, s21, s11
d0082834:	fecf fa80 	vmaxnm.f32	s31, s31, s0
d0082838:	fec9 9a80 	vmaxnm.f32	s19, s19, s0
d008283c:	fe8b ba00 	vmaxnm.f32	s22, s22, s0
d0082840:	fe8a aa65 	vminnm.f32	s20, s20, s11
d0082844:	feca aa80 	vmaxnm.f32	s21, s21, s0
d0082848:	fe8a aa00 	vmaxnm.f32	s20, s20, s0
d008284c:	d809      	bhi.n	d0082862 <speech_synth_render+0xcae>
d008284e:	f641 0321 	movw	r3, #6177	; 0x1821
d0082852:	ed9f 7a5c 	vldr	s14, [pc, #368]	; d00829c4 <speech_synth_render+0xe10>
d0082856:	fa23 f909 	lsr.w	r9, r3, r9
d008285a:	f019 0f01 	tst.w	r9, #1
d008285e:	fe05 5a07 	vseleq.f32	s10, s10, s14
d0082862:	ed9f 2a59 	vldr	s4, [pc, #356]	; d00829c8 <speech_synth_render+0xe14>
d0082866:	ed9f 4a59 	vldr	s8, [pc, #356]	; d00829cc <speech_synth_render+0xe18>
d008286a:	ee2a 2a02 	vmul.f32	s4, s20, s4
d008286e:	ed9d 7a0d 	vldr	s14, [sp, #52]	; 0x34
d0082872:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d0082876:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d008287a:	ed9f 6a55 	vldr	s12, [pc, #340]	; d00829d0 <speech_synth_render+0xe1c>
d008287e:	eea9 2a04 	vfma.f32	s4, s18, s8
d0082882:	eddf 5a54 	vldr	s11, [pc, #336]	; d00829d4 <speech_synth_render+0xe20>
d0082886:	eeb8 0a66 	vcvt.f32.u32	s0, s13
d008288a:	eddf 6a53 	vldr	s13, [pc, #332]	; d00829d8 <speech_synth_render+0xe24>
d008288e:	ee22 6a86 	vmul.f32	s12, s5, s12
d0082892:	9b18      	ldr	r3, [sp, #96]	; 0x60
d0082894:	ee6a 2aa6 	vmul.f32	s5, s21, s13
d0082898:	eddf 0a50 	vldr	s1, [pc, #320]	; d00829dc <speech_synth_render+0xe28>
d008289c:	2b03      	cmp	r3, #3
d008289e:	eddf 6a50 	vldr	s13, [pc, #320]	; d00829e0 <speech_synth_render+0xe2c>
d00828a2:	ed9f 1a50 	vldr	s2, [pc, #320]	; d00829e4 <speech_synth_render+0xe30>
d00828a6:	ee27 2a02 	vmul.f32	s4, s14, s4
d00828aa:	eddf 1a4f 	vldr	s3, [pc, #316]	; d00829e8 <speech_synth_render+0xe34>
d00828ae:	eee9 2aa5 	vfma.f32	s5, s19, s11
d00828b2:	eddf 3a4e 	vldr	s7, [pc, #312]	; d00829ec <speech_synth_render+0xe38>
d00828b6:	bf38      	it	cc
d00828b8:	eef0 0a66 	vmovcc.f32	s1, s13
d00828bc:	ed9f 7a4c 	vldr	s14, [pc, #304]	; d00829f0 <speech_synth_render+0xe3c>
d00828c0:	eea8 2a86 	vfma.f32	s4, s17, s12
d00828c4:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d00829f4 <speech_synth_render+0xe40>
d00828c8:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00828cc:	eddf 5a4a 	vldr	s11, [pc, #296]	; d00829f8 <speech_synth_render+0xe44>
d00828d0:	ed9f 6a4a 	vldr	s12, [pc, #296]	; d00829fc <speech_synth_render+0xe48>
d00828d4:	9a02      	ldr	r2, [sp, #8]
d00828d6:	4b4a      	ldr	r3, [pc, #296]	; (d0082a00 <speech_synth_render+0xe4c>)
d00828d8:	3201      	adds	r2, #1
d00828da:	9810      	ldr	r0, [sp, #64]	; 0x40
d00828dc:	eea2 2a80 	vfma.f32	s4, s5, s0
d00828e0:	9901      	ldr	r1, [sp, #4]
d00828e2:	429a      	cmp	r2, r3
d00828e4:	f100 00ff 	add.w	r0, r0, #255	; 0xff
d00828e8:	9202      	str	r2, [sp, #8]
d00828ea:	f101 0101 	add.w	r1, r1, #1
d00828ee:	9010      	str	r0, [sp, #64]	; 0x40
d00828f0:	bf88      	it	hi
d00828f2:	2300      	movhi	r3, #0
d00828f4:	9814      	ldr	r0, [sp, #80]	; 0x50
d00828f6:	bf98      	it	ls
d00828f8:	2301      	movls	r3, #1
d00828fa:	9101      	str	r1, [sp, #4]
d00828fc:	eea4 2a85 	vfma.f32	s4, s9, s10
d0082900:	eeab 2a20 	vfma.f32	s4, s22, s1
d0082904:	ee22 2a03 	vmul.f32	s4, s4, s6
d0082908:	ee32 8a48 	vsub.f32	s16, s4, s16
d008290c:	ee28 1a01 	vmul.f32	s2, s16, s2
d0082910:	eea2 1a21 	vfma.f32	s2, s4, s3
d0082914:	ee61 3a23 	vmul.f32	s7, s2, s7
d0082918:	eeb0 5ae3 	vabs.f32	s10, s7
d008291c:	eee5 6a07 	vfma.f32	s13, s10, s14
d0082920:	ee83 7aa6 	vdiv.f32	s14, s7, s13
d0082924:	fe87 7a44 	vminnm.f32	s14, s14, s8
d0082928:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d008292c:	ee27 7a06 	vmul.f32	s14, s14, s12
d0082930:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0082934:	ee17 2a10 	vmov	r2, s14
d0082938:	3a80      	subs	r2, #128	; 0x80
d008293a:	f800 2f01 	strb.w	r2, [r0, #1]!
d008293e:	9a11      	ldr	r2, [sp, #68]	; 0x44
d0082940:	9014      	str	r0, [sp, #80]	; 0x50
d0082942:	428a      	cmp	r2, r1
d0082944:	f240 8111 	bls.w	d0082b6a <speech_synth_render+0xfb6>
d0082948:	2b00      	cmp	r3, #0
d008294a:	f000 810e 	beq.w	d0082b6a <speech_synth_render+0xfb6>
d008294e:	9d20      	ldr	r5, [sp, #128]	; 0x80
d0082950:	eeb0 8a42 	vmov.f32	s16, s4
d0082954:	eeb0 6a67 	vmov.f32	s12, s15
d0082958:	2d00      	cmp	r5, #0
d008295a:	f47f acf9 	bne.w	d0082350 <speech_synth_render+0x79c>
d008295e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0082960:	f8dd b000 	ldr.w	fp, [sp]
d0082964:	930e      	str	r3, [sp, #56]	; 0x38
d0082966:	9b08      	ldr	r3, [sp, #32]
d0082968:	465a      	mov	r2, fp
d008296a:	9e06      	ldr	r6, [sp, #24]
d008296c:	930d      	str	r3, [sp, #52]	; 0x34
d008296e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0082970:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0082974:	930c      	str	r3, [sp, #48]	; 0x30
d0082976:	9d04      	ldr	r5, [sp, #16]
d0082978:	9b07      	ldr	r3, [sp, #28]
d008297a:	9303      	str	r3, [sp, #12]
d008297c:	9b15      	ldr	r3, [sp, #84]	; 0x54
d008297e:	4413      	add	r3, r2
d0082980:	4a05      	ldr	r2, [pc, #20]	; (d0082998 <speech_synth_render+0xde4>)
d0082982:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0082986:	f893 a00e 	ldrb.w	sl, [r3, #14]
d008298a:	f00a 0a01 	and.w	sl, sl, #1
d008298e:	e574      	b.n	d008247a <speech_synth_render+0x8c6>
d0082990:	ed9f 7a1c 	vldr	s14, [pc, #112]	; d0082a04 <speech_synth_render+0xe50>
d0082994:	e6ec      	b.n	d0082770 <speech_synth_render+0xbbc>
d0082996:	bf00      	nop
d0082998:	d0084794 	.word	0xd0084794
d008299c:	3d23d70a 	.word	0x3d23d70a
d00829a0:	3dcccccd 	.word	0x3dcccccd
d00829a4:	33a3d70a 	.word	0x33a3d70a
d00829a8:	3e9eb852 	.word	0x3e9eb852
d00829ac:	3e051eb8 	.word	0x3e051eb8
d00829b0:	39956592 	.word	0x39956592
d00829b4:	3fe8f5c3 	.word	0x3fe8f5c3
d00829b8:	3ea36718 	.word	0x3ea36718
d00829bc:	3e83e1db 	.word	0x3e83e1db
d00829c0:	3d8f5c29 	.word	0x3d8f5c29
d00829c4:	3d810625 	.word	0x3d810625
d00829c8:	3b72b9d6 	.word	0x3b72b9d6
d00829cc:	3c47ce0c 	.word	0x3c47ce0c
d00829d0:	3c020821 	.word	0x3c020821
d00829d4:	3c0ad8f3 	.word	0x3c0ad8f3
d00829d8:	3b85bf37 	.word	0x3b85bf37
d00829dc:	3e23d70a 	.word	0x3e23d70a
d00829e0:	3f47ae14 	.word	0x3f47ae14
d00829e4:	3df5c28f 	.word	0x3df5c28f
d00829e8:	3f9eb852 	.word	0x3f9eb852
d00829ec:	3fa3d70a 	.word	0x3fa3d70a
d00829f0:	3ed70a3d 	.word	0x3ed70a3d
d00829f4:	3f7ae148 	.word	0x3f7ae148
d00829f8:	bf7ae148 	.word	0xbf7ae148
d00829fc:	42f80000 	.word	0x42f80000
d0082a00:	00040997 	.word	0x00040997
d0082a04:	3d0f5c29 	.word	0x3d0f5c29
d0082a08:	359ba5e3 	.word	0x359ba5e3
d0082a0c:	00000000 	.word	0x00000000
d0082a10:	3eae147b 	.word	0x3eae147b
d0082a14:	40766666 	.word	0x40766666
d0082a18:	3b280a81 	.word	0x3b280a81
d0082a1c:	3f75c28f 	.word	0x3f75c28f
d0082a20:	3eeb851f 	.word	0x3eeb851f
d0082a24:	400b2164 	.word	0x400b2164
d0082a28:	ed5f 6a0a 	vldr	s13, [pc, #-40]	; d0082a04 <speech_synth_render+0xe50>
d0082a2c:	e66e      	b.n	d008270c <speech_synth_render+0xb58>
d0082a2e:	ed1f 2a0b 	vldr	s4, [pc, #-44]	; d0082a04 <speech_synth_render+0xe50>
d0082a32:	e639      	b.n	d00826a8 <speech_synth_render+0xaf4>
d0082a34:	ea87 3747 	eor.w	r7, r7, r7, lsl #13
d0082a38:	ed1f 2a0d 	vldr	s4, [pc, #-52]	; d0082a08 <speech_synth_render+0xe54>
d0082a3c:	e605      	b.n	d008264a <speech_synth_render+0xa96>
d0082a3e:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d0082a42:	e5ea      	b.n	d008261a <speech_synth_render+0xa66>
d0082a44:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d0082a48:	ed1f 6a10 	vldr	s12, [pc, #-64]	; d0082a0c <speech_synth_render+0xe58>
d0082a4c:	e5f2      	b.n	d0082634 <speech_synth_render+0xa80>
d0082a4e:	ed9d 7a03 	vldr	s14, [sp, #12]
d0082a52:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0082a56:	ed5f 6a12 	vldr	s13, [pc, #-72]	; d0082a10 <speech_synth_render+0xe5c>
d0082a5a:	eef8 2a47 	vcvt.f32.u32	s5, s14
d0082a5e:	ed1f 2a13 	vldr	s4, [pc, #-76]	; d0082a14 <speech_synth_render+0xe60>
d0082a62:	ee67 6aa6 	vmul.f32	s13, s15, s13
d0082a66:	ed1f 3a14 	vldr	s6, [pc, #-80]	; d0082a18 <speech_synth_render+0xe64>
d0082a6a:	ed1f 7a14 	vldr	s14, [pc, #-80]	; d0082a1c <speech_synth_render+0xe68>
d0082a6e:	eee6 6a02 	vfma.f32	s13, s12, s4
d0082a72:	eea2 7a83 	vfma.f32	s14, s5, s6
d0082a76:	ee26 7a87 	vmul.f32	s14, s13, s14
d0082a7a:	e5ab      	b.n	d00825d4 <speech_synth_render+0xa20>
d0082a7c:	ed1f 7a18 	vldr	s14, [pc, #-96]	; d0082a20 <speech_synth_render+0xe6c>
d0082a80:	eef0 2a09 	vmov.f32	s5, #9	; 0x40480000  3.125
d0082a84:	eeb0 3a00 	vmov.f32	s6, #0	; 0x40000000  2.0
d0082a88:	ee36 7ac7 	vsub.f32	s14, s13, s14
d0082a8c:	eef8 6a08 	vmov.f32	s13, #136	; 0xc0400000 -3.0
d0082a90:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0082a94:	ee27 7a22 	vmul.f32	s14, s14, s5
d0082a98:	eee7 6a03 	vfma.f32	s13, s14, s6
d0082a9c:	ee27 7a07 	vmul.f32	s14, s14, s14
d0082aa0:	eee6 7a87 	vfma.f32	s15, s13, s14
d0082aa4:	e58c      	b.n	d00825c0 <speech_synth_render+0xa0c>
d0082aa6:	ed1f 7a21 	vldr	s14, [pc, #-132]	; d0082a24 <speech_synth_render+0xe70>
d0082aaa:	eeb0 3a00 	vmov.f32	s6, #0	; 0x40000000  2.0
d0082aae:	eef0 7a08 	vmov.f32	s15, #8	; 0x40400000  3.0
d0082ab2:	ee66 6a87 	vmul.f32	s13, s13, s14
d0082ab6:	eee6 7ac3 	vfms.f32	s15, s13, s6
d0082aba:	ee66 6aa6 	vmul.f32	s13, s13, s13
d0082abe:	ee66 7aa7 	vmul.f32	s15, s13, s15
d0082ac2:	e57d      	b.n	d00825c0 <speech_synth_render+0xa0c>
d0082ac4:	fa5f f989 	uxtb.w	r9, r9
d0082ac8:	f1b9 0f0c 	cmp.w	r9, #12
d0082acc:	d92f      	bls.n	d0082b2e <speech_synth_render+0xf7a>
d0082ace:	f1ab 030e 	sub.w	r3, fp, #14
d0082ad2:	b2db      	uxtb	r3, r3
d0082ad4:	2b14      	cmp	r3, #20
d0082ad6:	f240 8090 	bls.w	d0082bfa <speech_synth_render+0x1046>
d0082ada:	f1bb 0f1c 	cmp.w	fp, #28
d0082ade:	f200 80a8 	bhi.w	d0082c32 <speech_synth_render+0x107e>
d0082ae2:	4bcc      	ldr	r3, [pc, #816]	; (d0082e14 <speech_synth_render+0x1260>)
d0082ae4:	eddf 7acc 	vldr	s15, [pc, #816]	; d0082e18 <speech_synth_render+0x1264>
d0082ae8:	fa23 f30b 	lsr.w	r3, r3, fp
d0082aec:	ed9f 4acb 	vldr	s8, [pc, #812]	; d0082e1c <speech_synth_render+0x1268>
d0082af0:	ed9f 3acb 	vldr	s6, [pc, #812]	; d0082e20 <speech_synth_render+0x126c>
d0082af4:	43db      	mvns	r3, r3
d0082af6:	eddf 4acb 	vldr	s9, [pc, #812]	; d0082e24 <speech_synth_render+0x1270>
d0082afa:	eddf 3acb 	vldr	s7, [pc, #812]	; d0082e28 <speech_synth_render+0x1274>
d0082afe:	f003 0301 	and.w	r3, r3, #1
d0082b02:	eddf 6aca 	vldr	s13, [pc, #808]	; d0082e2c <speech_synth_render+0x1278>
d0082b06:	ed9f 5aca 	vldr	s10, [pc, #808]	; d0082e30 <speech_synth_render+0x127c>
d0082b0a:	2b00      	cmp	r3, #0
d0082b0c:	ed9f 7ac9 	vldr	s14, [pc, #804]	; d0082e34 <speech_synth_render+0x1280>
d0082b10:	eddf 5ac9 	vldr	s11, [pc, #804]	; d0082e38 <speech_synth_render+0x1284>
d0082b14:	fe04 4a27 	vseleq.f32	s8, s8, s15
d0082b18:	eddf 7ac8 	vldr	s15, [pc, #800]	; d0082e3c <speech_synth_render+0x1288>
d0082b1c:	fe43 4a24 	vseleq.f32	s9, s6, s9
d0082b20:	fe43 3aa6 	vseleq.f32	s7, s7, s13
d0082b24:	fe05 5a07 	vseleq.f32	s10, s10, s14
d0082b28:	fe45 5aa7 	vseleq.f32	s11, s11, s15
d0082b2c:	e4ba      	b.n	d00824a4 <speech_synth_render+0x8f0>
d0082b2e:	f641 0321 	movw	r3, #6177	; 0x1821
d0082b32:	fa23 f309 	lsr.w	r3, r3, r9
d0082b36:	07d8      	lsls	r0, r3, #31
d0082b38:	d55c      	bpl.n	d0082bf4 <speech_synth_render+0x1040>
d0082b3a:	eddf 4ac1 	vldr	s9, [pc, #772]	; d0082e40 <speech_synth_render+0x128c>
d0082b3e:	eddf 3ac1 	vldr	s7, [pc, #772]	; d0082e44 <speech_synth_render+0x1290>
d0082b42:	ed9f 4ac1 	vldr	s8, [pc, #772]	; d0082e48 <speech_synth_render+0x1294>
d0082b46:	ed9f 5ab5 	vldr	s10, [pc, #724]	; d0082e1c <speech_synth_render+0x1268>
d0082b4a:	eddf 5ac0 	vldr	s11, [pc, #768]	; d0082e4c <speech_synth_render+0x1298>
d0082b4e:	e4a9      	b.n	d00824a4 <speech_synth_render+0x8f0>
d0082b50:	9b22      	ldr	r3, [sp, #136]	; 0x88
d0082b52:	4293      	cmp	r3, r2
d0082b54:	f4bf af73 	bcs.w	d0082a3e <speech_synth_render+0xe8a>
d0082b58:	ed9f 6abd 	vldr	s12, [pc, #756]	; d0082e50 <speech_synth_render+0x129c>
d0082b5c:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d0082b60:	ee66 6a86 	vmul.f32	s13, s13, s12
d0082b64:	e559      	b.n	d008261a <speech_synth_render+0xa66>
d0082b66:	9802      	ldr	r0, [sp, #8]
d0082b68:	9002      	str	r0, [sp, #8]
d0082b6a:	b14b      	cbz	r3, d0082b80 <speech_synth_render+0xfcc>
d0082b6c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0082b6e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0082b70:	3204      	adds	r2, #4
d0082b72:	3301      	adds	r3, #1
d0082b74:	920f      	str	r2, [sp, #60]	; 0x3c
d0082b76:	9a24      	ldr	r2, [sp, #144]	; 0x90
d0082b78:	9313      	str	r3, [sp, #76]	; 0x4c
d0082b7a:	429a      	cmp	r2, r3
d0082b7c:	f47f ab81 	bne.w	d0082282 <speech_synth_render+0x6ce>
d0082b80:	9b25      	ldr	r3, [sp, #148]	; 0x94
d0082b82:	f8dd b008 	ldr.w	fp, [sp, #8]
d0082b86:	601f      	str	r7, [r3, #0]
d0082b88:	4bb2      	ldr	r3, [pc, #712]	; (d0082e54 <speech_synth_render+0x12a0>)
d0082b8a:	4658      	mov	r0, fp
d0082b8c:	f8c3 b000 	str.w	fp, [r3]
d0082b90:	b039      	add	sp, #228	; 0xe4
d0082b92:	ecbd 8b10 	vpop	{d8-d15}
d0082b96:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0082b9a:	2000      	movs	r0, #0
d0082b9c:	901f      	str	r0, [sp, #124]	; 0x7c
d0082b9e:	f7ff bb7b 	b.w	d0082298 <speech_synth_render+0x6e4>
d0082ba2:	9902      	ldr	r1, [sp, #8]
d0082ba4:	4cac      	ldr	r4, [pc, #688]	; (d0082e58 <speech_synth_render+0x12a4>)
d0082ba6:	460b      	mov	r3, r1
d0082ba8:	42a1      	cmp	r1, r4
d0082baa:	bf8c      	ite	hi
d0082bac:	2300      	movhi	r3, #0
d0082bae:	2301      	movls	r3, #1
d0082bb0:	f5b2 7f7a 	cmp.w	r2, #1000	; 0x3e8
d0082bb4:	d3d7      	bcc.n	d0082b66 <speech_synth_render+0xfb2>
d0082bb6:	2b00      	cmp	r3, #0
d0082bb8:	d0d5      	beq.n	d0082b66 <speech_synth_render+0xfb2>
d0082bba:	460b      	mov	r3, r1
d0082bbc:	4da7      	ldr	r5, [pc, #668]	; (d0082e5c <speech_synth_render+0x12a8>)
d0082bbe:	3901      	subs	r1, #1
d0082bc0:	2680      	movs	r6, #128	; 0x80
d0082bc2:	4618      	mov	r0, r3
d0082bc4:	f8dd c044 	ldr.w	ip, [sp, #68]	; 0x44
d0082bc8:	4429      	add	r1, r5
d0082bca:	469e      	mov	lr, r3
d0082bcc:	e001      	b.n	d0082bd2 <speech_synth_render+0x101e>
d0082bce:	2b00      	cmp	r3, #0
d0082bd0:	d0ca      	beq.n	d0082b68 <speech_synth_render+0xfb4>
d0082bd2:	460a      	mov	r2, r1
d0082bd4:	3001      	adds	r0, #1
d0082bd6:	f801 6f01 	strb.w	r6, [r1, #1]!
d0082bda:	3202      	adds	r2, #2
d0082bdc:	42a0      	cmp	r0, r4
d0082bde:	eba2 0205 	sub.w	r2, r2, r5
d0082be2:	bf8c      	ite	hi
d0082be4:	2300      	movhi	r3, #0
d0082be6:	2301      	movls	r3, #1
d0082be8:	eba2 020e 	sub.w	r2, r2, lr
d0082bec:	4594      	cmp	ip, r2
d0082bee:	d8ee      	bhi.n	d0082bce <speech_synth_render+0x101a>
d0082bf0:	9002      	str	r0, [sp, #8]
d0082bf2:	e7ba      	b.n	d0082b6a <speech_synth_render+0xfb6>
d0082bf4:	f1ab 030e 	sub.w	r3, fp, #14
d0082bf8:	b2db      	uxtb	r3, r3
d0082bfa:	4a99      	ldr	r2, [pc, #612]	; (d0082e60 <speech_synth_render+0x12ac>)
d0082bfc:	fa22 f303 	lsr.w	r3, r2, r3
d0082c00:	07d9      	lsls	r1, r3, #31
d0082c02:	f57f af6a 	bpl.w	d0082ada <speech_synth_render+0xf26>
d0082c06:	eddf 4a97 	vldr	s9, [pc, #604]	; d0082e64 <speech_synth_render+0x12b0>
d0082c0a:	eddf 3a97 	vldr	s7, [pc, #604]	; d0082e68 <speech_synth_render+0x12b4>
d0082c0e:	ed9f 4a97 	vldr	s8, [pc, #604]	; d0082e6c <speech_synth_render+0x12b8>
d0082c12:	ed9f 5a97 	vldr	s10, [pc, #604]	; d0082e70 <speech_synth_render+0x12bc>
d0082c16:	eddf 5a97 	vldr	s11, [pc, #604]	; d0082e74 <speech_synth_render+0x12c0>
d0082c1a:	e443      	b.n	d00824a4 <speech_synth_render+0x8f0>
d0082c1c:	4e96      	ldr	r6, [pc, #600]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082c1e:	2120      	movs	r1, #32
d0082c20:	1832      	adds	r2, r6, r0
d0082c22:	4630      	mov	r0, r6
d0082c24:	54f1      	strb	r1, [r6, r3]
d0082c26:	7057      	strb	r7, [r2, #1]
d0082c28:	f001 fa75 	bl	d0084116 <strlen>
d0082c2c:	4603      	mov	r3, r0
d0082c2e:	f7ff ba9f 	b.w	d0082170 <speech_synth_render+0x5bc>
d0082c32:	eddf 4a7c 	vldr	s9, [pc, #496]	; d0082e24 <speech_synth_render+0x1270>
d0082c36:	eddf 3a7d 	vldr	s7, [pc, #500]	; d0082e2c <speech_synth_render+0x1278>
d0082c3a:	ed9f 4a77 	vldr	s8, [pc, #476]	; d0082e18 <speech_synth_render+0x1264>
d0082c3e:	ed9f 5a7d 	vldr	s10, [pc, #500]	; d0082e34 <speech_synth_render+0x1280>
d0082c42:	eddf 5a7e 	vldr	s11, [pc, #504]	; d0082e3c <speech_synth_render+0x1288>
d0082c46:	e42d      	b.n	d00824a4 <speech_synth_render+0x8f0>
d0082c48:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d0082c4c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082c50:	f4bf aabf 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0082c54:	201b      	movs	r0, #27
d0082c56:	9e01      	ldr	r6, [sp, #4]
d0082c58:	1c59      	adds	r1, r3, #1
d0082c5a:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d0082c5e:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d0082c62:	2358      	movs	r3, #88	; 0x58
d0082c64:	4884      	ldr	r0, [pc, #528]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082c66:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d0082c6a:	8053      	strh	r3, [r2, #2]
d0082c6c:	f001 fa53 	bl	d0084116 <strlen>
d0082c70:	1d02      	adds	r2, r0, #4
d0082c72:	4603      	mov	r3, r0
d0082c74:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082c78:	f4bf aaab 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0082c7c:	b140      	cbz	r0, d0082c90 <speech_synth_render+0x10dc>
d0082c7e:	4e7e      	ldr	r6, [pc, #504]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082c80:	2120      	movs	r1, #32
d0082c82:	1832      	adds	r2, r6, r0
d0082c84:	4630      	mov	r0, r6
d0082c86:	54f1      	strb	r1, [r6, r3]
d0082c88:	7057      	strb	r7, [r2, #1]
d0082c8a:	f001 fa44 	bl	d0084116 <strlen>
d0082c8e:	4603      	mov	r3, r0
d0082c90:	4a79      	ldr	r2, [pc, #484]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082c92:	3502      	adds	r5, #2
d0082c94:	4979      	ldr	r1, [pc, #484]	; (d0082e7c <speech_synth_render+0x12c8>)
d0082c96:	18d0      	adds	r0, r2, r3
d0082c98:	2203      	movs	r2, #3
d0082c9a:	b2ad      	uxth	r5, r5
d0082c9c:	f001 f89e 	bl	d0083ddc <memcpy>
d0082ca0:	f7ff b990 	b.w	d0081fc4 <speech_synth_render+0x410>
d0082ca4:	9b00      	ldr	r3, [sp, #0]
d0082ca6:	445b      	add	r3, fp
d0082ca8:	9302      	str	r3, [sp, #8]
d0082caa:	f7fe bff2 	b.w	d0081c92 <speech_synth_render+0xde>
d0082cae:	f8dd a008 	ldr.w	sl, [sp, #8]
d0082cb2:	465c      	mov	r4, fp
d0082cb4:	f7fe bfc5 	b.w	d0081c42 <speech_synth_render+0x8e>
d0082cb8:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d0082cbc:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082cc0:	f4bf aa87 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0082cc4:	201d      	movs	r0, #29
d0082cc6:	9e01      	ldr	r6, [sp, #4]
d0082cc8:	1c59      	adds	r1, r3, #1
d0082cca:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d0082cce:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d0082cd2:	234a      	movs	r3, #74	; 0x4a
d0082cd4:	4868      	ldr	r0, [pc, #416]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082cd6:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d0082cda:	8053      	strh	r3, [r2, #2]
d0082cdc:	f001 fa1b 	bl	d0084116 <strlen>
d0082ce0:	1d02      	adds	r2, r0, #4
d0082ce2:	4603      	mov	r3, r0
d0082ce4:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082ce8:	f4bf aa73 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0082cec:	b140      	cbz	r0, d0082d00 <speech_synth_render+0x114c>
d0082cee:	4e62      	ldr	r6, [pc, #392]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082cf0:	2120      	movs	r1, #32
d0082cf2:	1832      	adds	r2, r6, r0
d0082cf4:	4630      	mov	r0, r6
d0082cf6:	54f1      	strb	r1, [r6, r3]
d0082cf8:	7057      	strb	r7, [r2, #1]
d0082cfa:	f001 fa0c 	bl	d0084116 <strlen>
d0082cfe:	4603      	mov	r3, r0
d0082d00:	4a5d      	ldr	r2, [pc, #372]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082d02:	3502      	adds	r5, #2
d0082d04:	495e      	ldr	r1, [pc, #376]	; (d0082e80 <speech_synth_render+0x12cc>)
d0082d06:	18d0      	adds	r0, r2, r3
d0082d08:	2203      	movs	r2, #3
d0082d0a:	b2ad      	uxth	r5, r5
d0082d0c:	f001 f866 	bl	d0083ddc <memcpy>
d0082d10:	f7ff b958 	b.w	d0081fc4 <speech_synth_render+0x410>
d0082d14:	f10a 32ff 	add.w	r2, sl, #4294967295	; 0xffffffff
d0082d18:	f8df 817c 	ldr.w	r8, [pc, #380]	; d0082e98 <speech_synth_render+0x12e4>
d0082d1c:	276b      	movs	r7, #107	; 0x6b
d0082d1e:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0082d22:	9005      	str	r0, [sp, #20]
d0082d24:	e006      	b.n	d0082d34 <speech_synth_render+0x1180>
d0082d26:	f818 7f01 	ldrb.w	r7, [r8, #1]!
d0082d2a:	2f00      	cmp	r7, #0
d0082d2c:	f000 83f2 	beq.w	d0083514 <speech_synth_render+0x1960>
d0082d30:	454a      	cmp	r2, r9
d0082d32:	d009      	beq.n	d0082d48 <speech_synth_render+0x1194>
d0082d34:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d0082d38:	f1a3 0041 	sub.w	r0, r3, #65	; 0x41
d0082d3c:	2819      	cmp	r0, #25
d0082d3e:	d801      	bhi.n	d0082d44 <speech_synth_render+0x1190>
d0082d40:	3320      	adds	r3, #32
d0082d42:	b2db      	uxtb	r3, r3
d0082d44:	42bb      	cmp	r3, r7
d0082d46:	d0ee      	beq.n	d0082d26 <speech_synth_render+0x1172>
d0082d48:	9805      	ldr	r0, [sp, #20]
d0082d4a:	f7ff b8a5 	b.w	d0081e98 <speech_synth_render+0x2e4>
d0082d4e:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d0082d52:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082d56:	f4bf aa3c 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0082d5a:	200f      	movs	r0, #15
d0082d5c:	9e01      	ldr	r6, [sp, #4]
d0082d5e:	1c59      	adds	r1, r3, #1
d0082d60:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d0082d64:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d0082d68:	2348      	movs	r3, #72	; 0x48
d0082d6a:	4843      	ldr	r0, [pc, #268]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082d6c:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d0082d70:	8053      	strh	r3, [r2, #2]
d0082d72:	f001 f9d0 	bl	d0084116 <strlen>
d0082d76:	1cc2      	adds	r2, r0, #3
d0082d78:	4603      	mov	r3, r0
d0082d7a:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082d7e:	f4bf aa28 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0082d82:	b140      	cbz	r0, d0082d96 <speech_synth_render+0x11e2>
d0082d84:	4e3c      	ldr	r6, [pc, #240]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082d86:	2120      	movs	r1, #32
d0082d88:	1832      	adds	r2, r6, r0
d0082d8a:	4630      	mov	r0, r6
d0082d8c:	54f1      	strb	r1, [r6, r3]
d0082d8e:	7057      	strb	r7, [r2, #1]
d0082d90:	f001 f9c1 	bl	d0084116 <strlen>
d0082d94:	4603      	mov	r3, r0
d0082d96:	4a38      	ldr	r2, [pc, #224]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082d98:	493a      	ldr	r1, [pc, #232]	; (d0082e84 <speech_synth_render+0x12d0>)
d0082d9a:	18d0      	adds	r0, r2, r3
d0082d9c:	2202      	movs	r2, #2
d0082d9e:	f001 f81d 	bl	d0083ddc <memcpy>
d0082da2:	f7ff ba16 	b.w	d00821d2 <speech_synth_render+0x61e>
d0082da6:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d0082daa:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0082dae:	f4bf aa10 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0082db2:	201f      	movs	r0, #31
d0082db4:	9e01      	ldr	r6, [sp, #4]
d0082db6:	1c59      	adds	r1, r3, #1
d0082db8:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d0082dbc:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d0082dc0:	2352      	movs	r3, #82	; 0x52
d0082dc2:	482d      	ldr	r0, [pc, #180]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082dc4:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d0082dc8:	8053      	strh	r3, [r2, #2]
d0082dca:	f001 f9a4 	bl	d0084116 <strlen>
d0082dce:	1cc2      	adds	r2, r0, #3
d0082dd0:	4603      	mov	r3, r0
d0082dd2:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0082dd6:	f4bf a9fc 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0082dda:	b140      	cbz	r0, d0082dee <speech_synth_render+0x123a>
d0082ddc:	4e26      	ldr	r6, [pc, #152]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082dde:	2120      	movs	r1, #32
d0082de0:	1832      	adds	r2, r6, r0
d0082de2:	4630      	mov	r0, r6
d0082de4:	54f1      	strb	r1, [r6, r3]
d0082de6:	7057      	strb	r7, [r2, #1]
d0082de8:	f001 f995 	bl	d0084116 <strlen>
d0082dec:	4603      	mov	r3, r0
d0082dee:	4a22      	ldr	r2, [pc, #136]	; (d0082e78 <speech_synth_render+0x12c4>)
d0082df0:	4925      	ldr	r1, [pc, #148]	; (d0082e88 <speech_synth_render+0x12d4>)
d0082df2:	18d0      	adds	r0, r2, r3
d0082df4:	2202      	movs	r2, #2
d0082df6:	f000 fff1 	bl	d0083ddc <memcpy>
d0082dfa:	f7ff b9ea 	b.w	d00821d2 <speech_synth_render+0x61e>
d0082dfe:	4a23      	ldr	r2, [pc, #140]	; (d0082e8c <speech_synth_render+0x12d8>)
d0082e00:	2180      	movs	r1, #128	; 0x80
d0082e02:	4816      	ldr	r0, [pc, #88]	; (d0082e5c <speech_synth_render+0x12a8>)
d0082e04:	46ab      	mov	fp, r5
d0082e06:	f000 fff7 	bl	d0083df8 <memset>
d0082e0a:	4b21      	ldr	r3, [pc, #132]	; (d0082e90 <speech_synth_render+0x12dc>)
d0082e0c:	4a21      	ldr	r2, [pc, #132]	; (d0082e94 <speech_synth_render+0x12e0>)
d0082e0e:	601a      	str	r2, [r3, #0]
d0082e10:	e6ba      	b.n	d0082b88 <speech_synth_render+0xfd4>
d0082e12:	bf00      	nop
d0082e14:	110d3800 	.word	0x110d3800
d0082e18:	433dc000 	.word	0x433dc000
d0082e1c:	44061000 	.word	0x44061000
d0082e20:	437fc000 	.word	0x437fc000
d0082e24:	42b58000 	.word	0x42b58000
d0082e28:	43bdc000 	.word	0x43bdc000
d0082e2c:	4300b333 	.word	0x4300b333
d0082e30:	4439a000 	.word	0x4439a000
d0082e34:	43f5d999 	.word	0x43f5d999
d0082e38:	44715000 	.word	0x44715000
d0082e3c:	441ab000 	.word	0x441ab000
d0082e40:	42e06666 	.word	0x42e06666
d0082e44:	432d4000 	.word	0x432d4000
d0082e48:	43778000 	.word	0x43778000
d0082e4c:	44292000 	.word	0x44292000
d0082e50:	3f47ae14 	.word	0x3f47ae14
d0082e54:	d0085808 	.word	0xd0085808
d0082e58:	00040997 	.word	0x00040997
d0082e5c:	d0085820 	.word	0xd0085820
d0082e60:	0019b003 	.word	0x0019b003
d0082e64:	439cc000 	.word	0x439cc000
d0082e68:	43d26000 	.word	0x43d26000
d0082e6c:	44148000 	.word	0x44148000
d0082e70:	4443f000 	.word	0x4443f000
d0082e74:	447fc000 	.word	0x447fc000
d0082e78:	d00c61b8 	.word	0xd00c61b8
d0082e7c:	d0084714 	.word	0xd0084714
d0082e80:	d008471c 	.word	0xd008471c
d0082e84:	d0084724 	.word	0xd0084724
d0082e88:	d008472c 	.word	0xd008472c
d0082e8c:	00040998 	.word	0x00040998
d0082e90:	d0084b80 	.word	0xd0084b80
d0082e94:	1234abcd 	.word	0x1234abcd
d0082e98:	d0084780 	.word	0xd0084780
d0082e9c:	4608      	mov	r0, r1
d0082e9e:	462a      	mov	r2, r5
d0082ea0:	2300      	movs	r3, #0
d0082ea2:	4fb5      	ldr	r7, [pc, #724]	; (d0083178 <speech_synth_render+0x15c4>)
d0082ea4:	e005      	b.n	d0082eb2 <speech_synth_render+0x12fe>
d0082ea6:	5dd8      	ldrb	r0, [r3, r7]
d0082ea8:	2800      	cmp	r0, #0
d0082eaa:	f000 83ee 	beq.w	d008368a <speech_synth_render+0x1ad6>
d0082eae:	42a2      	cmp	r2, r4
d0082eb0:	da10      	bge.n	d0082ed4 <speech_synth_render+0x1320>
d0082eb2:	f81a c002 	ldrb.w	ip, [sl, r2]
d0082eb6:	3301      	adds	r3, #1
d0082eb8:	f1ac 0e41 	sub.w	lr, ip, #65	; 0x41
d0082ebc:	b29b      	uxth	r3, r3
d0082ebe:	f1be 0f19 	cmp.w	lr, #25
d0082ec2:	eb03 0205 	add.w	r2, r3, r5
d0082ec6:	d803      	bhi.n	d0082ed0 <speech_synth_render+0x131c>
d0082ec8:	f10c 0c20 	add.w	ip, ip, #32
d0082ecc:	fa5f fc8c 	uxtb.w	ip, ip
d0082ed0:	4584      	cmp	ip, r0
d0082ed2:	d0e8      	beq.n	d0082ea6 <speech_synth_render+0x12f2>
d0082ed4:	4628      	mov	r0, r5
d0082ed6:	2300      	movs	r3, #0
d0082ed8:	4fa8      	ldr	r7, [pc, #672]	; (d008317c <speech_synth_render+0x15c8>)
d0082eda:	e005      	b.n	d0082ee8 <speech_synth_render+0x1334>
d0082edc:	5dd9      	ldrb	r1, [r3, r7]
d0082ede:	2900      	cmp	r1, #0
d0082ee0:	f000 83d3 	beq.w	d008368a <speech_synth_render+0x1ad6>
d0082ee4:	42a0      	cmp	r0, r4
d0082ee6:	da0e      	bge.n	d0082f06 <speech_synth_render+0x1352>
d0082ee8:	f81a 2000 	ldrb.w	r2, [sl, r0]
d0082eec:	3301      	adds	r3, #1
d0082eee:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d0082ef2:	b29b      	uxth	r3, r3
d0082ef4:	f1bc 0f19 	cmp.w	ip, #25
d0082ef8:	eb03 0005 	add.w	r0, r3, r5
d0082efc:	d801      	bhi.n	d0082f02 <speech_synth_render+0x134e>
d0082efe:	3220      	adds	r2, #32
d0082f00:	b2d2      	uxtb	r2, r2
d0082f02:	428a      	cmp	r2, r1
d0082f04:	d0ea      	beq.n	d0082edc <speech_synth_render+0x1328>
d0082f06:	4629      	mov	r1, r5
d0082f08:	2061      	movs	r0, #97	; 0x61
d0082f0a:	2300      	movs	r3, #0
d0082f0c:	4f9c      	ldr	r7, [pc, #624]	; (d0083180 <speech_synth_render+0x15cc>)
d0082f0e:	f81a 2001 	ldrb.w	r2, [sl, r1]
d0082f12:	3301      	adds	r3, #1
d0082f14:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d0082f18:	b29b      	uxth	r3, r3
d0082f1a:	f1bc 0f19 	cmp.w	ip, #25
d0082f1e:	eb03 0105 	add.w	r1, r3, r5
d0082f22:	d801      	bhi.n	d0082f28 <speech_synth_render+0x1374>
d0082f24:	3220      	adds	r2, #32
d0082f26:	b2d2      	uxtb	r2, r2
d0082f28:	4282      	cmp	r2, r0
d0082f2a:	d103      	bne.n	d0082f34 <speech_synth_render+0x1380>
d0082f2c:	5dd8      	ldrb	r0, [r3, r7]
d0082f2e:	b1c0      	cbz	r0, d0082f62 <speech_synth_render+0x13ae>
d0082f30:	42a1      	cmp	r1, r4
d0082f32:	dbec      	blt.n	d0082f0e <speech_synth_render+0x135a>
d0082f34:	2161      	movs	r1, #97	; 0x61
d0082f36:	2200      	movs	r2, #0
d0082f38:	4892      	ldr	r0, [pc, #584]	; (d0083184 <speech_synth_render+0x15d0>)
d0082f3a:	1953      	adds	r3, r2, r5
d0082f3c:	1c57      	adds	r7, r2, #1
d0082f3e:	42a3      	cmp	r3, r4
d0082f40:	b2ba      	uxth	r2, r7
d0082f42:	f280 82da 	bge.w	d00834fa <speech_synth_render+0x1946>
d0082f46:	f81a 3003 	ldrb.w	r3, [sl, r3]
d0082f4a:	f1a3 0741 	sub.w	r7, r3, #65	; 0x41
d0082f4e:	2f19      	cmp	r7, #25
d0082f50:	d801      	bhi.n	d0082f56 <speech_synth_render+0x13a2>
d0082f52:	3320      	adds	r3, #32
d0082f54:	b2db      	uxtb	r3, r3
d0082f56:	428b      	cmp	r3, r1
d0082f58:	f040 82cf 	bne.w	d00834fa <speech_synth_render+0x1946>
d0082f5c:	5c11      	ldrb	r1, [r2, r0]
d0082f5e:	2900      	cmp	r1, #0
d0082f60:	d1eb      	bne.n	d0082f3a <speech_synth_render+0x1386>
d0082f62:	3502      	adds	r5, #2
d0082f64:	2200      	movs	r2, #0
d0082f66:	2104      	movs	r1, #4
d0082f68:	a826      	add	r0, sp, #152	; 0x98
d0082f6a:	b2ad      	uxth	r5, r5
d0082f6c:	f7fd f8d8 	bl	d0080120 <emit_phone.constprop.0>
d0082f70:	e005      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0082f72:	2200      	movs	r2, #0
d0082f74:	2113      	movs	r1, #19
d0082f76:	a826      	add	r0, sp, #152	; 0x98
d0082f78:	b2b5      	uxth	r5, r6
d0082f7a:	f7fd f8d1 	bl	d0080120 <emit_phone.constprop.0>
d0082f7e:	42ac      	cmp	r4, r5
d0082f80:	f67f a892 	bls.w	d00820a8 <speech_synth_render+0x4f4>
d0082f84:	2d00      	cmp	r5, #0
d0082f86:	f43f a81d 	beq.w	d0081fc4 <speech_synth_render+0x410>
d0082f8a:	f81a c005 	ldrb.w	ip, [sl, r5]
d0082f8e:	f1ac 0e41 	sub.w	lr, ip, #65	; 0x41
d0082f92:	fa5f f38e 	uxtb.w	r3, lr
d0082f96:	2b19      	cmp	r3, #25
d0082f98:	f240 836d 	bls.w	d0083676 <speech_synth_render+0x1ac2>
d0082f9c:	4662      	mov	r2, ip
d0082f9e:	eb0a 0305 	add.w	r3, sl, r5
d0082fa2:	f813 3c01 	ldrb.w	r3, [r3, #-1]
d0082fa6:	f1a3 0141 	sub.w	r1, r3, #65	; 0x41
d0082faa:	2919      	cmp	r1, #25
d0082fac:	d801      	bhi.n	d0082fb2 <speech_synth_render+0x13fe>
d0082fae:	3320      	adds	r3, #32
d0082fb0:	b2db      	uxtb	r3, r3
d0082fb2:	4293      	cmp	r3, r2
d0082fb4:	f47e ae87 	bne.w	d0081cc6 <speech_synth_render+0x112>
d0082fb8:	3b61      	subs	r3, #97	; 0x61
d0082fba:	b2db      	uxtb	r3, r3
d0082fbc:	2b18      	cmp	r3, #24
d0082fbe:	d805      	bhi.n	d0082fcc <speech_synth_render+0x1418>
d0082fc0:	4a71      	ldr	r2, [pc, #452]	; (d0083188 <speech_synth_render+0x15d4>)
d0082fc2:	fa22 f303 	lsr.w	r3, r2, r3
d0082fc6:	07de      	lsls	r6, r3, #31
d0082fc8:	f53e ae7d 	bmi.w	d0081cc6 <speech_synth_render+0x112>
d0082fcc:	3501      	adds	r5, #1
d0082fce:	b2ad      	uxth	r5, r5
d0082fd0:	f7fe bff8 	b.w	d0081fc4 <speech_synth_render+0x410>
d0082fd4:	2200      	movs	r2, #0
d0082fd6:	2118      	movs	r1, #24
d0082fd8:	a826      	add	r0, sp, #152	; 0x98
d0082fda:	b2b5      	uxth	r5, r6
d0082fdc:	f7fd f8a0 	bl	d0080120 <emit_phone.constprop.0>
d0082fe0:	e7cd      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0082fe2:	9b04      	ldr	r3, [sp, #16]
d0082fe4:	429d      	cmp	r5, r3
d0082fe6:	f000 834a 	beq.w	d008367e <speech_synth_render+0x1aca>
d0082fea:	b19d      	cbz	r5, d0083014 <speech_synth_render+0x1460>
d0082fec:	4455      	add	r5, sl
d0082fee:	f815 3c01 	ldrb.w	r3, [r5, #-1]
d0082ff2:	f1a3 0241 	sub.w	r2, r3, #65	; 0x41
d0082ff6:	2a19      	cmp	r2, #25
d0082ff8:	d801      	bhi.n	d0082ffe <speech_synth_render+0x144a>
d0082ffa:	3320      	adds	r3, #32
d0082ffc:	b2db      	uxtb	r3, r3
d0082ffe:	3b61      	subs	r3, #97	; 0x61
d0083000:	b2db      	uxtb	r3, r3
d0083002:	2b14      	cmp	r3, #20
d0083004:	f200 833b 	bhi.w	d008367e <speech_synth_render+0x1aca>
d0083008:	4a60      	ldr	r2, [pc, #384]	; (d008318c <speech_synth_render+0x15d8>)
d008300a:	fa22 f303 	lsr.w	r3, r2, r3
d008300e:	07df      	lsls	r7, r3, #31
d0083010:	f140 8335 	bpl.w	d008367e <speech_synth_render+0x1aca>
d0083014:	a826      	add	r0, sp, #152	; 0x98
d0083016:	f7fd f8f5 	bl	d0080204 <emit_ay.constprop.0>
d008301a:	b2b5      	uxth	r5, r6
d008301c:	e7af      	b.n	d0082f7e <speech_synth_render+0x13ca>
d008301e:	a826      	add	r0, sp, #152	; 0x98
d0083020:	2200      	movs	r2, #0
d0083022:	2113      	movs	r1, #19
d0083024:	b2b5      	uxth	r5, r6
d0083026:	f7fd f87b 	bl	d0080120 <emit_phone.constprop.0>
d008302a:	2200      	movs	r2, #0
d008302c:	211a      	movs	r1, #26
d008302e:	a826      	add	r0, sp, #152	; 0x98
d0083030:	f7fd f876 	bl	d0080120 <emit_phone.constprop.0>
d0083034:	e7a3      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083036:	2200      	movs	r2, #0
d0083038:	211f      	movs	r1, #31
d008303a:	a826      	add	r0, sp, #152	; 0x98
d008303c:	b2b5      	uxth	r5, r6
d008303e:	f7fd f86f 	bl	d0080120 <emit_phone.constprop.0>
d0083042:	e79c      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083044:	2200      	movs	r2, #0
d0083046:	211e      	movs	r1, #30
d0083048:	a826      	add	r0, sp, #152	; 0x98
d008304a:	b2b5      	uxth	r5, r6
d008304c:	f7fd f868 	bl	d0080120 <emit_phone.constprop.0>
d0083050:	e795      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083052:	42a5      	cmp	r5, r4
d0083054:	da19      	bge.n	d008308a <speech_synth_render+0x14d6>
d0083056:	4628      	mov	r0, r5
d0083058:	2275      	movs	r2, #117	; 0x75
d008305a:	2300      	movs	r3, #0
d008305c:	4f4c      	ldr	r7, [pc, #304]	; (d0083190 <speech_synth_render+0x15dc>)
d008305e:	e005      	b.n	d008306c <speech_synth_render+0x14b8>
d0083060:	5dda      	ldrb	r2, [r3, r7]
d0083062:	2a00      	cmp	r2, #0
d0083064:	f000 80e0 	beq.w	d0083228 <speech_synth_render+0x1674>
d0083068:	42a0      	cmp	r0, r4
d008306a:	da0e      	bge.n	d008308a <speech_synth_render+0x14d6>
d008306c:	f81a 1000 	ldrb.w	r1, [sl, r0]
d0083070:	3301      	adds	r3, #1
d0083072:	f1a1 0c41 	sub.w	ip, r1, #65	; 0x41
d0083076:	b29b      	uxth	r3, r3
d0083078:	f1bc 0f19 	cmp.w	ip, #25
d008307c:	eb03 0005 	add.w	r0, r3, r5
d0083080:	d801      	bhi.n	d0083086 <speech_synth_render+0x14d2>
d0083082:	3120      	adds	r1, #32
d0083084:	b2c9      	uxtb	r1, r1
d0083086:	4291      	cmp	r1, r2
d0083088:	d0ea      	beq.n	d0083060 <speech_synth_render+0x14ac>
d008308a:	462a      	mov	r2, r5
d008308c:	4621      	mov	r1, r4
d008308e:	4650      	mov	r0, sl
d0083090:	f7fd f888 	bl	d00801a4 <has_magic_e>
d0083094:	4602      	mov	r2, r0
d0083096:	2800      	cmp	r0, #0
d0083098:	f000 83b8 	beq.w	d008380c <speech_synth_render+0x1c58>
d008309c:	2200      	movs	r2, #0
d008309e:	210a      	movs	r1, #10
d00830a0:	a826      	add	r0, sp, #152	; 0x98
d00830a2:	f7fd f83d 	bl	d0080120 <emit_phone.constprop.0>
d00830a6:	e7b8      	b.n	d008301a <speech_synth_render+0x1466>
d00830a8:	2200      	movs	r2, #0
d00830aa:	211c      	movs	r1, #28
d00830ac:	a826      	add	r0, sp, #152	; 0x98
d00830ae:	b2b5      	uxth	r5, r6
d00830b0:	f7fd f836 	bl	d0080120 <emit_phone.constprop.0>
d00830b4:	e763      	b.n	d0082f7e <speech_synth_render+0x13ca>
d00830b6:	2200      	movs	r2, #0
d00830b8:	211a      	movs	r1, #26
d00830ba:	a826      	add	r0, sp, #152	; 0x98
d00830bc:	b2b5      	uxth	r5, r6
d00830be:	f7fd f82f 	bl	d0080120 <emit_phone.constprop.0>
d00830c2:	e75c      	b.n	d0082f7e <speech_synth_render+0x13ca>
d00830c4:	2200      	movs	r2, #0
d00830c6:	2119      	movs	r1, #25
d00830c8:	a826      	add	r0, sp, #152	; 0x98
d00830ca:	b2b5      	uxth	r5, r6
d00830cc:	f7fd f828 	bl	d0080120 <emit_phone.constprop.0>
d00830d0:	e755      	b.n	d0082f7e <speech_synth_render+0x13ca>
d00830d2:	42a5      	cmp	r5, r4
d00830d4:	da18      	bge.n	d0083108 <speech_synth_render+0x1554>
d00830d6:	4628      	mov	r0, r5
d00830d8:	2269      	movs	r2, #105	; 0x69
d00830da:	2300      	movs	r3, #0
d00830dc:	e006      	b.n	d00830ec <speech_synth_render+0x1538>
d00830de:	4a2d      	ldr	r2, [pc, #180]	; (d0083194 <speech_synth_render+0x15e0>)
d00830e0:	5c9a      	ldrb	r2, [r3, r2]
d00830e2:	2a00      	cmp	r2, #0
d00830e4:	f000 80a0 	beq.w	d0083228 <speech_synth_render+0x1674>
d00830e8:	42a0      	cmp	r0, r4
d00830ea:	da0d      	bge.n	d0083108 <speech_synth_render+0x1554>
d00830ec:	f81a 1000 	ldrb.w	r1, [sl, r0]
d00830f0:	3301      	adds	r3, #1
d00830f2:	f1a1 0741 	sub.w	r7, r1, #65	; 0x41
d00830f6:	b29b      	uxth	r3, r3
d00830f8:	2f19      	cmp	r7, #25
d00830fa:	eb03 0005 	add.w	r0, r3, r5
d00830fe:	d801      	bhi.n	d0083104 <speech_synth_render+0x1550>
d0083100:	3120      	adds	r1, #32
d0083102:	b2c9      	uxtb	r1, r1
d0083104:	4291      	cmp	r1, r2
d0083106:	d0ea      	beq.n	d00830de <speech_synth_render+0x152a>
d0083108:	462a      	mov	r2, r5
d008310a:	4621      	mov	r1, r4
d008310c:	4650      	mov	r0, sl
d008310e:	f7fd f849 	bl	d00801a4 <has_magic_e>
d0083112:	4602      	mov	r2, r0
d0083114:	2800      	cmp	r0, #0
d0083116:	f47f af7d 	bne.w	d0083014 <speech_synth_render+0x1460>
d008311a:	2107      	movs	r1, #7
d008311c:	a826      	add	r0, sp, #152	; 0x98
d008311e:	f7fc ffff 	bl	d0080120 <emit_phone.constprop.0>
d0083122:	e77a      	b.n	d008301a <speech_synth_render+0x1466>
d0083124:	2200      	movs	r2, #0
d0083126:	2111      	movs	r1, #17
d0083128:	a826      	add	r0, sp, #152	; 0x98
d008312a:	b2b5      	uxth	r5, r6
d008312c:	f7fc fff8 	bl	d0080120 <emit_phone.constprop.0>
d0083130:	e725      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083132:	f000 03ef 	and.w	r3, r0, #239	; 0xef
d0083136:	2b69      	cmp	r3, #105	; 0x69
d0083138:	f000 82ba 	beq.w	d00836b0 <speech_synth_render+0x1afc>
d008313c:	2865      	cmp	r0, #101	; 0x65
d008313e:	f000 82b7 	beq.w	d00836b0 <speech_synth_render+0x1afc>
d0083142:	2110      	movs	r1, #16
d0083144:	2200      	movs	r2, #0
d0083146:	a826      	add	r0, sp, #152	; 0x98
d0083148:	b2b5      	uxth	r5, r6
d008314a:	f7fc ffe9 	bl	d0080120 <emit_phone.constprop.0>
d008314e:	e716      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083150:	2200      	movs	r2, #0
d0083152:	210f      	movs	r1, #15
d0083154:	a826      	add	r0, sp, #152	; 0x98
d0083156:	b2b5      	uxth	r5, r6
d0083158:	f7fc ffe2 	bl	d0080120 <emit_phone.constprop.0>
d008315c:	e70f      	b.n	d0082f7e <speech_synth_render+0x13ca>
d008315e:	9b04      	ldr	r3, [sp, #16]
d0083160:	429d      	cmp	r5, r3
d0083162:	f43f af5a 	beq.w	d008301a <speech_synth_render+0x1466>
d0083166:	42a5      	cmp	r5, r4
d0083168:	f280 833c 	bge.w	d00837e4 <speech_synth_render+0x1c30>
d008316c:	4628      	mov	r0, r5
d008316e:	2165      	movs	r1, #101	; 0x65
d0083170:	2300      	movs	r3, #0
d0083172:	4f09      	ldr	r7, [pc, #36]	; (d0083198 <speech_synth_render+0x15e4>)
d0083174:	e018      	b.n	d00831a8 <speech_synth_render+0x15f4>
d0083176:	bf00      	nop
d0083178:	d0084740 	.word	0xd0084740
d008317c:	d0084744 	.word	0xd0084744
d0083180:	d0084748 	.word	0xd0084748
d0083184:	d008474c 	.word	0xd008474c
d0083188:	01104111 	.word	0x01104111
d008318c:	00104111 	.word	0x00104111
d0083190:	d0084778 	.word	0xd0084778
d0083194:	d008475c 	.word	0xd008475c
d0083198:	d0084750 	.word	0xd0084750
d008319c:	5dd9      	ldrb	r1, [r3, r7]
d008319e:	2900      	cmp	r1, #0
d00831a0:	f000 828a 	beq.w	d00836b8 <speech_synth_render+0x1b04>
d00831a4:	42a0      	cmp	r0, r4
d00831a6:	da0e      	bge.n	d00831c6 <speech_synth_render+0x1612>
d00831a8:	f81a 2000 	ldrb.w	r2, [sl, r0]
d00831ac:	3301      	adds	r3, #1
d00831ae:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d00831b2:	b29b      	uxth	r3, r3
d00831b4:	f1bc 0f19 	cmp.w	ip, #25
d00831b8:	eb03 0005 	add.w	r0, r3, r5
d00831bc:	d801      	bhi.n	d00831c2 <speech_synth_render+0x160e>
d00831be:	3220      	adds	r2, #32
d00831c0:	b2d2      	uxtb	r2, r2
d00831c2:	428a      	cmp	r2, r1
d00831c4:	d0ea      	beq.n	d008319c <speech_synth_render+0x15e8>
d00831c6:	4629      	mov	r1, r5
d00831c8:	2065      	movs	r0, #101	; 0x65
d00831ca:	2300      	movs	r3, #0
d00831cc:	4fbe      	ldr	r7, [pc, #760]	; (d00834c8 <speech_synth_render+0x1914>)
d00831ce:	e005      	b.n	d00831dc <speech_synth_render+0x1628>
d00831d0:	5dd8      	ldrb	r0, [r3, r7]
d00831d2:	2800      	cmp	r0, #0
d00831d4:	f000 8270 	beq.w	d00836b8 <speech_synth_render+0x1b04>
d00831d8:	42a1      	cmp	r1, r4
d00831da:	da0e      	bge.n	d00831fa <speech_synth_render+0x1646>
d00831dc:	f81a 2001 	ldrb.w	r2, [sl, r1]
d00831e0:	3301      	adds	r3, #1
d00831e2:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d00831e6:	b29b      	uxth	r3, r3
d00831e8:	f1bc 0f19 	cmp.w	ip, #25
d00831ec:	eb03 0105 	add.w	r1, r3, r5
d00831f0:	d801      	bhi.n	d00831f6 <speech_synth_render+0x1642>
d00831f2:	3220      	adds	r2, #32
d00831f4:	b2d2      	uxtb	r2, r2
d00831f6:	4282      	cmp	r2, r0
d00831f8:	d0ea      	beq.n	d00831d0 <speech_synth_render+0x161c>
d00831fa:	2265      	movs	r2, #101	; 0x65
d00831fc:	2100      	movs	r1, #0
d00831fe:	48b3      	ldr	r0, [pc, #716]	; (d00834cc <speech_synth_render+0x1918>)
d0083200:	194b      	adds	r3, r1, r5
d0083202:	1c4f      	adds	r7, r1, #1
d0083204:	42a3      	cmp	r3, r4
d0083206:	b2b9      	uxth	r1, r7
d0083208:	f280 82ec 	bge.w	d00837e4 <speech_synth_render+0x1c30>
d008320c:	f81a 3003 	ldrb.w	r3, [sl, r3]
d0083210:	f1a3 0741 	sub.w	r7, r3, #65	; 0x41
d0083214:	2f19      	cmp	r7, #25
d0083216:	d801      	bhi.n	d008321c <speech_synth_render+0x1668>
d0083218:	3320      	adds	r3, #32
d008321a:	b2db      	uxtb	r3, r3
d008321c:	4293      	cmp	r3, r2
d008321e:	f040 82e1 	bne.w	d00837e4 <speech_synth_render+0x1c30>
d0083222:	5c0a      	ldrb	r2, [r1, r0]
d0083224:	2a00      	cmp	r2, #0
d0083226:	d1eb      	bne.n	d0083200 <speech_synth_render+0x164c>
d0083228:	2106      	movs	r1, #6
d008322a:	a826      	add	r0, sp, #152	; 0x98
d008322c:	f7fc ff78 	bl	d0080120 <emit_phone.constprop.0>
d0083230:	3502      	adds	r5, #2
d0083232:	b2ad      	uxth	r5, r5
d0083234:	e6a3      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083236:	2200      	movs	r2, #0
d0083238:	210d      	movs	r1, #13
d008323a:	a826      	add	r0, sp, #152	; 0x98
d008323c:	b2b5      	uxth	r5, r6
d008323e:	f7fc ff6f 	bl	d0080120 <emit_phone.constprop.0>
d0083242:	e69c      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083244:	f000 03ef 	and.w	r3, r0, #239	; 0xef
d0083248:	2b69      	cmp	r3, #105	; 0x69
d008324a:	f000 8233 	beq.w	d00836b4 <speech_synth_render+0x1b00>
d008324e:	2865      	cmp	r0, #101	; 0x65
d0083250:	f000 8230 	beq.w	d00836b4 <speech_synth_render+0x1b00>
d0083254:	2113      	movs	r1, #19
d0083256:	e775      	b.n	d0083144 <speech_synth_render+0x1590>
d0083258:	2200      	movs	r2, #0
d008325a:	210b      	movs	r1, #11
d008325c:	a826      	add	r0, sp, #152	; 0x98
d008325e:	b2b5      	uxth	r5, r6
d0083260:	f7fc ff5e 	bl	d0080120 <emit_phone.constprop.0>
d0083264:	e68b      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083266:	2200      	movs	r2, #0
d0083268:	2115      	movs	r1, #21
d008326a:	a826      	add	r0, sp, #152	; 0x98
d008326c:	b2b5      	uxth	r5, r6
d008326e:	f7fc ff57 	bl	d0080120 <emit_phone.constprop.0>
d0083272:	e684      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083274:	2200      	movs	r2, #0
d0083276:	2114      	movs	r1, #20
d0083278:	a826      	add	r0, sp, #152	; 0x98
d008327a:	b2b5      	uxth	r5, r6
d008327c:	f7fc ff50 	bl	d0080120 <emit_phone.constprop.0>
d0083280:	e67d      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083282:	2200      	movs	r2, #0
d0083284:	2121      	movs	r1, #33	; 0x21
d0083286:	a826      	add	r0, sp, #152	; 0x98
d0083288:	b2b5      	uxth	r5, r6
d008328a:	f7fc ff49 	bl	d0080120 <emit_phone.constprop.0>
d008328e:	e676      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083290:	2200      	movs	r2, #0
d0083292:	2112      	movs	r1, #18
d0083294:	a826      	add	r0, sp, #152	; 0x98
d0083296:	b2b5      	uxth	r5, r6
d0083298:	f7fc ff42 	bl	d0080120 <emit_phone.constprop.0>
d008329c:	e66f      	b.n	d0082f7e <speech_synth_render+0x13ca>
d008329e:	42a5      	cmp	r5, r4
d00832a0:	f280 8212 	bge.w	d00836c8 <speech_synth_render+0x1b14>
d00832a4:	4628      	mov	r0, r5
d00832a6:	226f      	movs	r2, #111	; 0x6f
d00832a8:	2300      	movs	r3, #0
d00832aa:	4f89      	ldr	r7, [pc, #548]	; (d00834d0 <speech_synth_render+0x191c>)
d00832ac:	e005      	b.n	d00832ba <speech_synth_render+0x1706>
d00832ae:	5dda      	ldrb	r2, [r3, r7]
d00832b0:	2a00      	cmp	r2, #0
d00832b2:	f000 81f6 	beq.w	d00836a2 <speech_synth_render+0x1aee>
d00832b6:	42a0      	cmp	r0, r4
d00832b8:	da0e      	bge.n	d00832d8 <speech_synth_render+0x1724>
d00832ba:	f81a 1000 	ldrb.w	r1, [sl, r0]
d00832be:	3301      	adds	r3, #1
d00832c0:	f1a1 0c41 	sub.w	ip, r1, #65	; 0x41
d00832c4:	b29b      	uxth	r3, r3
d00832c6:	f1bc 0f19 	cmp.w	ip, #25
d00832ca:	eb03 0005 	add.w	r0, r3, r5
d00832ce:	d801      	bhi.n	d00832d4 <speech_synth_render+0x1720>
d00832d0:	3120      	adds	r1, #32
d00832d2:	b2c9      	uxtb	r1, r1
d00832d4:	4291      	cmp	r1, r2
d00832d6:	d0ea      	beq.n	d00832ae <speech_synth_render+0x16fa>
d00832d8:	4629      	mov	r1, r5
d00832da:	206f      	movs	r0, #111	; 0x6f
d00832dc:	2300      	movs	r3, #0
d00832de:	4f7d      	ldr	r7, [pc, #500]	; (d00834d4 <speech_synth_render+0x1920>)
d00832e0:	e005      	b.n	d00832ee <speech_synth_render+0x173a>
d00832e2:	5dd8      	ldrb	r0, [r3, r7]
d00832e4:	2800      	cmp	r0, #0
d00832e6:	f000 81d6 	beq.w	d0083696 <speech_synth_render+0x1ae2>
d00832ea:	42a1      	cmp	r1, r4
d00832ec:	da0e      	bge.n	d008330c <speech_synth_render+0x1758>
d00832ee:	f81a 2001 	ldrb.w	r2, [sl, r1]
d00832f2:	3301      	adds	r3, #1
d00832f4:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d00832f8:	b29b      	uxth	r3, r3
d00832fa:	f1bc 0f19 	cmp.w	ip, #25
d00832fe:	eb03 0105 	add.w	r1, r3, r5
d0083302:	d801      	bhi.n	d0083308 <speech_synth_render+0x1754>
d0083304:	3220      	adds	r2, #32
d0083306:	b2d2      	uxtb	r2, r2
d0083308:	4282      	cmp	r2, r0
d008330a:	d0ea      	beq.n	d00832e2 <speech_synth_render+0x172e>
d008330c:	4629      	mov	r1, r5
d008330e:	206f      	movs	r0, #111	; 0x6f
d0083310:	2300      	movs	r3, #0
d0083312:	4f71      	ldr	r7, [pc, #452]	; (d00834d8 <speech_synth_render+0x1924>)
d0083314:	e005      	b.n	d0083322 <speech_synth_render+0x176e>
d0083316:	5dd8      	ldrb	r0, [r3, r7]
d0083318:	2800      	cmp	r0, #0
d008331a:	f000 81bc 	beq.w	d0083696 <speech_synth_render+0x1ae2>
d008331e:	42a1      	cmp	r1, r4
d0083320:	da0e      	bge.n	d0083340 <speech_synth_render+0x178c>
d0083322:	f81a 2001 	ldrb.w	r2, [sl, r1]
d0083326:	3301      	adds	r3, #1
d0083328:	f1a2 0c41 	sub.w	ip, r2, #65	; 0x41
d008332c:	b29b      	uxth	r3, r3
d008332e:	f1bc 0f19 	cmp.w	ip, #25
d0083332:	eb03 0105 	add.w	r1, r3, r5
d0083336:	d801      	bhi.n	d008333c <speech_synth_render+0x1788>
d0083338:	3220      	adds	r2, #32
d008333a:	b2d2      	uxtb	r2, r2
d008333c:	4282      	cmp	r2, r0
d008333e:	d0ea      	beq.n	d0083316 <speech_synth_render+0x1762>
d0083340:	216f      	movs	r1, #111	; 0x6f
d0083342:	2200      	movs	r2, #0
d0083344:	4865      	ldr	r0, [pc, #404]	; (d00834dc <speech_synth_render+0x1928>)
d0083346:	1953      	adds	r3, r2, r5
d0083348:	1c57      	adds	r7, r2, #1
d008334a:	42a3      	cmp	r3, r4
d008334c:	b2ba      	uxth	r2, r7
d008334e:	f280 81bb 	bge.w	d00836c8 <speech_synth_render+0x1b14>
d0083352:	f81a 3003 	ldrb.w	r3, [sl, r3]
d0083356:	f1a3 0741 	sub.w	r7, r3, #65	; 0x41
d008335a:	2f19      	cmp	r7, #25
d008335c:	d801      	bhi.n	d0083362 <speech_synth_render+0x17ae>
d008335e:	3320      	adds	r3, #32
d0083360:	b2db      	uxtb	r3, r3
d0083362:	428b      	cmp	r3, r1
d0083364:	f040 81b0 	bne.w	d00836c8 <speech_synth_render+0x1b14>
d0083368:	5c11      	ldrb	r1, [r2, r0]
d008336a:	2900      	cmp	r1, #0
d008336c:	d1eb      	bne.n	d0083346 <speech_synth_render+0x1792>
d008336e:	f8bd 7098 	ldrh.w	r7, [sp, #152]	; 0x98
d0083372:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0083376:	f4bf af5b 	bcs.w	d0083230 <speech_synth_render+0x167c>
d008337a:	9801      	ldr	r0, [sp, #4]
d008337c:	1c7e      	adds	r6, r7, #1
d008337e:	2104      	movs	r1, #4
d0083380:	224c      	movs	r2, #76	; 0x4c
d0083382:	eb00 0387 	add.w	r3, r0, r7, lsl #2
d0083386:	b2b6      	uxth	r6, r6
d0083388:	f800 1027 	strb.w	r1, [r0, r7, lsl #2]
d008338c:	805a      	strh	r2, [r3, #2]
d008338e:	4854      	ldr	r0, [pc, #336]	; (d00834e0 <speech_synth_render+0x192c>)
d0083390:	f8ad 6098 	strh.w	r6, [sp, #152]	; 0x98
d0083394:	f000 febf 	bl	d0084116 <strlen>
d0083398:	1d03      	adds	r3, r0, #4
d008339a:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008339e:	d20c      	bcs.n	d00833ba <speech_synth_render+0x1806>
d00833a0:	b138      	cbz	r0, d00833b2 <speech_synth_render+0x17fe>
d00833a2:	4b4f      	ldr	r3, [pc, #316]	; (d00834e0 <speech_synth_render+0x192c>)
d00833a4:	2120      	movs	r1, #32
d00833a6:	2200      	movs	r2, #0
d00833a8:	eb03 0c00 	add.w	ip, r3, r0
d00833ac:	5419      	strb	r1, [r3, r0]
d00833ae:	f88c 2001 	strb.w	r2, [ip, #1]
d00833b2:	494c      	ldr	r1, [pc, #304]	; (d00834e4 <speech_synth_render+0x1930>)
d00833b4:	484a      	ldr	r0, [pc, #296]	; (d00834e0 <speech_synth_render+0x192c>)
d00833b6:	f000 fe9f 	bl	d00840f8 <strcat>
d00833ba:	f5b6 7f40 	cmp.w	r6, #768	; 0x300
d00833be:	f43f af37 	beq.w	d0083230 <speech_synth_render+0x167c>
d00833c2:	9801      	ldr	r0, [sp, #4]
d00833c4:	2108      	movs	r1, #8
d00833c6:	2256      	movs	r2, #86	; 0x56
d00833c8:	3702      	adds	r7, #2
d00833ca:	eb00 0386 	add.w	r3, r0, r6, lsl #2
d00833ce:	f800 1026 	strb.w	r1, [r0, r6, lsl #2]
d00833d2:	4843      	ldr	r0, [pc, #268]	; (d00834e0 <speech_synth_render+0x192c>)
d00833d4:	805a      	strh	r2, [r3, #2]
d00833d6:	f8ad 7098 	strh.w	r7, [sp, #152]	; 0x98
d00833da:	f000 fe9c 	bl	d0084116 <strlen>
d00833de:	1d03      	adds	r3, r0, #4
d00833e0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00833e4:	f4bf af24 	bcs.w	d0083230 <speech_synth_render+0x167c>
d00833e8:	b128      	cbz	r0, d00833f6 <speech_synth_render+0x1842>
d00833ea:	4e3d      	ldr	r6, [pc, #244]	; (d00834e0 <speech_synth_render+0x192c>)
d00833ec:	2120      	movs	r1, #32
d00833ee:	2200      	movs	r2, #0
d00833f0:	1833      	adds	r3, r6, r0
d00833f2:	5431      	strb	r1, [r6, r0]
d00833f4:	705a      	strb	r2, [r3, #1]
d00833f6:	493c      	ldr	r1, [pc, #240]	; (d00834e8 <speech_synth_render+0x1934>)
d00833f8:	4839      	ldr	r0, [pc, #228]	; (d00834e0 <speech_synth_render+0x192c>)
d00833fa:	f000 fe7d 	bl	d00840f8 <strcat>
d00833fe:	e717      	b.n	d0083230 <speech_synth_render+0x167c>
d0083400:	2867      	cmp	r0, #103	; 0x67
d0083402:	f000 81f7 	beq.w	d00837f4 <speech_synth_render+0x1c40>
d0083406:	2200      	movs	r2, #0
d0083408:	2116      	movs	r1, #22
d008340a:	a826      	add	r0, sp, #152	; 0x98
d008340c:	f7fc fe88 	bl	d0080120 <emit_phone.constprop.0>
d0083410:	2301      	movs	r3, #1
d0083412:	441d      	add	r5, r3
d0083414:	b2ad      	uxth	r5, r5
d0083416:	e5b2      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083418:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d008341c:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0083420:	f4be aed7 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0083424:	2017      	movs	r0, #23
d0083426:	9e01      	ldr	r6, [sp, #4]
d0083428:	1c59      	adds	r1, r3, #1
d008342a:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d008342e:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d0083432:	235a      	movs	r3, #90	; 0x5a
d0083434:	482a      	ldr	r0, [pc, #168]	; (d00834e0 <speech_synth_render+0x192c>)
d0083436:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d008343a:	8053      	strh	r3, [r2, #2]
d008343c:	f000 fe6b 	bl	d0084116 <strlen>
d0083440:	1d02      	adds	r2, r0, #4
d0083442:	4603      	mov	r3, r0
d0083444:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0083448:	f4be aec3 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d008344c:	b140      	cbz	r0, d0083460 <speech_synth_render+0x18ac>
d008344e:	4e24      	ldr	r6, [pc, #144]	; (d00834e0 <speech_synth_render+0x192c>)
d0083450:	2120      	movs	r1, #32
d0083452:	1832      	adds	r2, r6, r0
d0083454:	4630      	mov	r0, r6
d0083456:	54f1      	strb	r1, [r6, r3]
d0083458:	7057      	strb	r7, [r2, #1]
d008345a:	f000 fe5c 	bl	d0084116 <strlen>
d008345e:	4603      	mov	r3, r0
d0083460:	4a1f      	ldr	r2, [pc, #124]	; (d00834e0 <speech_synth_render+0x192c>)
d0083462:	4922      	ldr	r1, [pc, #136]	; (d00834ec <speech_synth_render+0x1938>)
d0083464:	18d0      	adds	r0, r2, r3
d0083466:	2203      	movs	r2, #3
d0083468:	f000 fcb8 	bl	d0083ddc <memcpy>
d008346c:	f7fe beb1 	b.w	d00821d2 <speech_synth_render+0x61e>
d0083470:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d0083474:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0083478:	f4be aeab 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d008347c:	2019      	movs	r0, #25
d008347e:	9e01      	ldr	r6, [sp, #4]
d0083480:	1c59      	adds	r1, r3, #1
d0083482:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d0083486:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d008348a:	2358      	movs	r3, #88	; 0x58
d008348c:	4814      	ldr	r0, [pc, #80]	; (d00834e0 <speech_synth_render+0x192c>)
d008348e:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d0083492:	8053      	strh	r3, [r2, #2]
d0083494:	f000 fe3f 	bl	d0084116 <strlen>
d0083498:	1cc2      	adds	r2, r0, #3
d008349a:	4603      	mov	r3, r0
d008349c:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00834a0:	f4be ae97 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d00834a4:	b140      	cbz	r0, d00834b8 <speech_synth_render+0x1904>
d00834a6:	4e0e      	ldr	r6, [pc, #56]	; (d00834e0 <speech_synth_render+0x192c>)
d00834a8:	2120      	movs	r1, #32
d00834aa:	1832      	adds	r2, r6, r0
d00834ac:	4630      	mov	r0, r6
d00834ae:	54f1      	strb	r1, [r6, r3]
d00834b0:	7057      	strb	r7, [r2, #1]
d00834b2:	f000 fe30 	bl	d0084116 <strlen>
d00834b6:	4603      	mov	r3, r0
d00834b8:	4a09      	ldr	r2, [pc, #36]	; (d00834e0 <speech_synth_render+0x192c>)
d00834ba:	490d      	ldr	r1, [pc, #52]	; (d00834f0 <speech_synth_render+0x193c>)
d00834bc:	18d0      	adds	r0, r2, r3
d00834be:	2202      	movs	r2, #2
d00834c0:	f000 fc8c 	bl	d0083ddc <memcpy>
d00834c4:	f7fe be85 	b.w	d00821d2 <speech_synth_render+0x61e>
d00834c8:	d0084754 	.word	0xd0084754
d00834cc:	d0084758 	.word	0xd0084758
d00834d0:	d0084760 	.word	0xd0084760
d00834d4:	d0084764 	.word	0xd0084764
d00834d8:	d0084768 	.word	0xd0084768
d00834dc:	d008476c 	.word	0xd008476c
d00834e0:	d00c61b8 	.word	0xd00c61b8
d00834e4:	d00846b0 	.word	0xd00846b0
d00834e8:	d0084614 	.word	0xd0084614
d00834ec:	d0084700 	.word	0xd0084700
d00834f0:	d0084658 	.word	0xd0084658
d00834f4:	42a5      	cmp	r5, r4
d00834f6:	f6ff aced 	blt.w	d0082ed4 <speech_synth_render+0x1320>
d00834fa:	462a      	mov	r2, r5
d00834fc:	4621      	mov	r1, r4
d00834fe:	4650      	mov	r0, sl
d0083500:	f7fc fe50 	bl	d00801a4 <has_magic_e>
d0083504:	4602      	mov	r2, r0
d0083506:	2800      	cmp	r0, #0
d0083508:	f000 817b 	beq.w	d0083802 <speech_synth_render+0x1c4e>
d008350c:	a826      	add	r0, sp, #152	; 0x98
d008350e:	f7fc fed3 	bl	d00802b8 <emit_ey.constprop.0>
d0083512:	e582      	b.n	d008301a <speech_synth_render+0x1466>
d0083514:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d0083518:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d008351c:	d251      	bcs.n	d00835c2 <speech_synth_render+0x1a0e>
d008351e:	2016      	movs	r0, #22
d0083520:	9d01      	ldr	r5, [sp, #4]
d0083522:	1c59      	adds	r1, r3, #1
d0083524:	eb05 0283 	add.w	r2, r5, r3, lsl #2
d0083528:	f805 0023 	strb.w	r0, [r5, r3, lsl #2]
d008352c:	234b      	movs	r3, #75	; 0x4b
d008352e:	48bb      	ldr	r0, [pc, #748]	; (d008381c <speech_synth_render+0x1c68>)
d0083530:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d0083534:	8053      	strh	r3, [r2, #2]
d0083536:	f000 fdee 	bl	d0084116 <strlen>
d008353a:	1cc2      	adds	r2, r0, #3
d008353c:	4603      	mov	r3, r0
d008353e:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d0083542:	d23e      	bcs.n	d00835c2 <speech_synth_render+0x1a0e>
d0083544:	b140      	cbz	r0, d0083558 <speech_synth_render+0x19a4>
d0083546:	4db5      	ldr	r5, [pc, #724]	; (d008381c <speech_synth_render+0x1c68>)
d0083548:	2120      	movs	r1, #32
d008354a:	182a      	adds	r2, r5, r0
d008354c:	4628      	mov	r0, r5
d008354e:	54e9      	strb	r1, [r5, r3]
d0083550:	7057      	strb	r7, [r2, #1]
d0083552:	f000 fde0 	bl	d0084116 <strlen>
d0083556:	4603      	mov	r3, r0
d0083558:	4ab0      	ldr	r2, [pc, #704]	; (d008381c <speech_synth_render+0x1c68>)
d008355a:	49b1      	ldr	r1, [pc, #708]	; (d0083820 <speech_synth_render+0x1c6c>)
d008355c:	18d0      	adds	r0, r2, r3
d008355e:	2202      	movs	r2, #2
d0083560:	4615      	mov	r5, r2
d0083562:	f000 fc3b 	bl	d0083ddc <memcpy>
d0083566:	f7fe bd2d 	b.w	d0081fc4 <speech_synth_render+0x410>
d008356a:	f8bd 3098 	ldrh.w	r3, [sp, #152]	; 0x98
d008356e:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
d0083572:	f4be ae2e 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0083576:	2013      	movs	r0, #19
d0083578:	9e01      	ldr	r6, [sp, #4]
d008357a:	1c59      	adds	r1, r3, #1
d008357c:	eb06 0283 	add.w	r2, r6, r3, lsl #2
d0083580:	f806 0023 	strb.w	r0, [r6, r3, lsl #2]
d0083584:	2346      	movs	r3, #70	; 0x46
d0083586:	48a5      	ldr	r0, [pc, #660]	; (d008381c <speech_synth_render+0x1c68>)
d0083588:	f8ad 1098 	strh.w	r1, [sp, #152]	; 0x98
d008358c:	8053      	strh	r3, [r2, #2]
d008358e:	f000 fdc2 	bl	d0084116 <strlen>
d0083592:	1cc2      	adds	r2, r0, #3
d0083594:	4603      	mov	r3, r0
d0083596:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d008359a:	f4be ae1a 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d008359e:	b140      	cbz	r0, d00835b2 <speech_synth_render+0x19fe>
d00835a0:	4e9e      	ldr	r6, [pc, #632]	; (d008381c <speech_synth_render+0x1c68>)
d00835a2:	2120      	movs	r1, #32
d00835a4:	1832      	adds	r2, r6, r0
d00835a6:	4630      	mov	r0, r6
d00835a8:	54f1      	strb	r1, [r6, r3]
d00835aa:	7057      	strb	r7, [r2, #1]
d00835ac:	f000 fdb3 	bl	d0084116 <strlen>
d00835b0:	4603      	mov	r3, r0
d00835b2:	4a9a      	ldr	r2, [pc, #616]	; (d008381c <speech_synth_render+0x1c68>)
d00835b4:	499b      	ldr	r1, [pc, #620]	; (d0083824 <speech_synth_render+0x1c70>)
d00835b6:	18d0      	adds	r0, r2, r3
d00835b8:	2202      	movs	r2, #2
d00835ba:	f000 fc0f 	bl	d0083ddc <memcpy>
d00835be:	f7fe be08 	b.w	d00821d2 <speech_synth_render+0x61e>
d00835c2:	2502      	movs	r5, #2
d00835c4:	f7fe bcfe 	b.w	d0081fc4 <speech_synth_render+0x410>
d00835c8:	f8bd 8098 	ldrh.w	r8, [sp, #152]	; 0x98
d00835cc:	f5b8 7f40 	cmp.w	r8, #768	; 0x300
d00835d0:	f4be adff 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d00835d4:	9801      	ldr	r0, [sp, #4]
d00835d6:	f108 0601 	add.w	r6, r8, #1
d00835da:	2246      	movs	r2, #70	; 0x46
d00835dc:	2113      	movs	r1, #19
d00835de:	eb00 0388 	add.w	r3, r0, r8, lsl #2
d00835e2:	b2b6      	uxth	r6, r6
d00835e4:	f800 1028 	strb.w	r1, [r0, r8, lsl #2]
d00835e8:	805a      	strh	r2, [r3, #2]
d00835ea:	488c      	ldr	r0, [pc, #560]	; (d008381c <speech_synth_render+0x1c68>)
d00835ec:	f8ad 6098 	strh.w	r6, [sp, #152]	; 0x98
d00835f0:	f000 fd91 	bl	d0084116 <strlen>
d00835f4:	1cc2      	adds	r2, r0, #3
d00835f6:	4603      	mov	r3, r0
d00835f8:	f5b2 6f00 	cmp.w	r2, #2048	; 0x800
d00835fc:	d211      	bcs.n	d0083622 <speech_synth_render+0x1a6e>
d00835fe:	b150      	cbz	r0, d0083616 <speech_synth_render+0x1a62>
d0083600:	4a86      	ldr	r2, [pc, #536]	; (d008381c <speech_synth_render+0x1c68>)
d0083602:	2120      	movs	r1, #32
d0083604:	eb02 0c00 	add.w	ip, r2, r0
d0083608:	4610      	mov	r0, r2
d008360a:	54d1      	strb	r1, [r2, r3]
d008360c:	f88c 7001 	strb.w	r7, [ip, #1]
d0083610:	f000 fd81 	bl	d0084116 <strlen>
d0083614:	4603      	mov	r3, r0
d0083616:	4a81      	ldr	r2, [pc, #516]	; (d008381c <speech_synth_render+0x1c68>)
d0083618:	4982      	ldr	r1, [pc, #520]	; (d0083824 <speech_synth_render+0x1c70>)
d008361a:	18d0      	adds	r0, r2, r3
d008361c:	2202      	movs	r2, #2
d008361e:	f000 fbdd 	bl	d0083ddc <memcpy>
d0083622:	f5b6 7f40 	cmp.w	r6, #768	; 0x300
d0083626:	f43e add4 	beq.w	d00821d2 <speech_synth_render+0x61e>
d008362a:	9801      	ldr	r0, [sp, #4]
d008362c:	211f      	movs	r1, #31
d008362e:	2252      	movs	r2, #82	; 0x52
d0083630:	f108 0802 	add.w	r8, r8, #2
d0083634:	eb00 0386 	add.w	r3, r0, r6, lsl #2
d0083638:	f800 1026 	strb.w	r1, [r0, r6, lsl #2]
d008363c:	4877      	ldr	r0, [pc, #476]	; (d008381c <speech_synth_render+0x1c68>)
d008363e:	805a      	strh	r2, [r3, #2]
d0083640:	f8ad 8098 	strh.w	r8, [sp, #152]	; 0x98
d0083644:	f000 fd67 	bl	d0084116 <strlen>
d0083648:	1cc3      	adds	r3, r0, #3
d008364a:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d008364e:	f4be adc0 	bcs.w	d00821d2 <speech_synth_render+0x61e>
d0083652:	b140      	cbz	r0, d0083666 <speech_synth_render+0x1ab2>
d0083654:	4e71      	ldr	r6, [pc, #452]	; (d008381c <speech_synth_render+0x1c68>)
d0083656:	2120      	movs	r1, #32
d0083658:	2200      	movs	r2, #0
d008365a:	1833      	adds	r3, r6, r0
d008365c:	5431      	strb	r1, [r6, r0]
d008365e:	4630      	mov	r0, r6
d0083660:	705a      	strb	r2, [r3, #1]
d0083662:	f000 fd58 	bl	d0084116 <strlen>
d0083666:	4b6d      	ldr	r3, [pc, #436]	; (d008381c <speech_synth_render+0x1c68>)
d0083668:	2202      	movs	r2, #2
d008366a:	496f      	ldr	r1, [pc, #444]	; (d0083828 <speech_synth_render+0x1c74>)
d008366c:	4418      	add	r0, r3
d008366e:	f000 fbb5 	bl	d0083ddc <memcpy>
d0083672:	f7fe bdae 	b.w	d00821d2 <speech_synth_render+0x61e>
d0083676:	f10c 0220 	add.w	r2, ip, #32
d008367a:	b2d2      	uxtb	r2, r2
d008367c:	e48f      	b.n	d0082f9e <speech_synth_render+0x13ea>
d008367e:	2200      	movs	r2, #0
d0083680:	2108      	movs	r1, #8
d0083682:	a826      	add	r0, sp, #152	; 0x98
d0083684:	f7fc fd4c 	bl	d0080120 <emit_phone.constprop.0>
d0083688:	e4c7      	b.n	d008301a <speech_synth_render+0x1466>
d008368a:	3502      	adds	r5, #2
d008368c:	a826      	add	r0, sp, #152	; 0x98
d008368e:	f7fc fe13 	bl	d00802b8 <emit_ey.constprop.0>
d0083692:	b2ad      	uxth	r5, r5
d0083694:	e473      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083696:	224c      	movs	r2, #76	; 0x4c
d0083698:	2103      	movs	r1, #3
d008369a:	a826      	add	r0, sp, #152	; 0x98
d008369c:	f7fc fd40 	bl	d0080120 <emit_phone.constprop.0>
d00836a0:	2256      	movs	r2, #86	; 0x56
d00836a2:	3502      	adds	r5, #2
d00836a4:	210a      	movs	r1, #10
d00836a6:	a826      	add	r0, sp, #152	; 0x98
d00836a8:	b2ad      	uxth	r5, r5
d00836aa:	f7fc fd39 	bl	d0080120 <emit_phone.constprop.0>
d00836ae:	e466      	b.n	d0082f7e <speech_synth_render+0x13ca>
d00836b0:	2112      	movs	r1, #18
d00836b2:	e547      	b.n	d0083144 <speech_synth_render+0x1590>
d00836b4:	211a      	movs	r1, #26
d00836b6:	e545      	b.n	d0083144 <speech_synth_render+0x1590>
d00836b8:	3502      	adds	r5, #2
d00836ba:	2200      	movs	r2, #0
d00836bc:	2108      	movs	r1, #8
d00836be:	a826      	add	r0, sp, #152	; 0x98
d00836c0:	b2ad      	uxth	r5, r5
d00836c2:	f7fc fd2d 	bl	d0080120 <emit_phone.constprop.0>
d00836c6:	e45a      	b.n	d0082f7e <speech_synth_render+0x13ca>
d00836c8:	216f      	movs	r1, #111	; 0x6f
d00836ca:	2300      	movs	r3, #0
d00836cc:	4857      	ldr	r0, [pc, #348]	; (d008382c <speech_synth_render+0x1c78>)
d00836ce:	195a      	adds	r2, r3, r5
d00836d0:	1c5f      	adds	r7, r3, #1
d00836d2:	42a2      	cmp	r2, r4
d00836d4:	b2bb      	uxth	r3, r7
d00836d6:	da0d      	bge.n	d00836f4 <speech_synth_render+0x1b40>
d00836d8:	f81a 2002 	ldrb.w	r2, [sl, r2]
d00836dc:	f1a2 0741 	sub.w	r7, r2, #65	; 0x41
d00836e0:	2f19      	cmp	r7, #25
d00836e2:	d801      	bhi.n	d00836e8 <speech_synth_render+0x1b34>
d00836e4:	3220      	adds	r2, #32
d00836e6:	b2d2      	uxtb	r2, r2
d00836e8:	428a      	cmp	r2, r1
d00836ea:	d103      	bne.n	d00836f4 <speech_synth_render+0x1b40>
d00836ec:	5c19      	ldrb	r1, [r3, r0]
d00836ee:	2900      	cmp	r1, #0
d00836f0:	d1ed      	bne.n	d00836ce <speech_synth_render+0x1b1a>
d00836f2:	e63c      	b.n	d008336e <speech_synth_render+0x17ba>
d00836f4:	276f      	movs	r7, #111	; 0x6f
d00836f6:	2200      	movs	r2, #0
d00836f8:	494d      	ldr	r1, [pc, #308]	; (d0083830 <speech_synth_render+0x1c7c>)
d00836fa:	1953      	adds	r3, r2, r5
d00836fc:	1c50      	adds	r0, r2, #1
d00836fe:	42a3      	cmp	r3, r4
d0083700:	b282      	uxth	r2, r0
d0083702:	da19      	bge.n	d0083738 <speech_synth_render+0x1b84>
d0083704:	f81a 3003 	ldrb.w	r3, [sl, r3]
d0083708:	f1a3 0041 	sub.w	r0, r3, #65	; 0x41
d008370c:	2819      	cmp	r0, #25
d008370e:	d801      	bhi.n	d0083714 <speech_synth_render+0x1b60>
d0083710:	3320      	adds	r3, #32
d0083712:	b2db      	uxtb	r3, r3
d0083714:	42bb      	cmp	r3, r7
d0083716:	d10f      	bne.n	d0083738 <speech_synth_render+0x1b84>
d0083718:	5c57      	ldrb	r7, [r2, r1]
d008371a:	2f00      	cmp	r7, #0
d008371c:	d1ed      	bne.n	d00836fa <speech_synth_render+0x1b46>
d008371e:	463a      	mov	r2, r7
d0083720:	2104      	movs	r1, #4
d0083722:	a826      	add	r0, sp, #152	; 0x98
d0083724:	3502      	adds	r5, #2
d0083726:	f7fc fcfb 	bl	d0080120 <emit_phone.constprop.0>
d008372a:	463a      	mov	r2, r7
d008372c:	2119      	movs	r1, #25
d008372e:	a826      	add	r0, sp, #152	; 0x98
d0083730:	b2ad      	uxth	r5, r5
d0083732:	f7fc fcf5 	bl	d0080120 <emit_phone.constprop.0>
d0083736:	e422      	b.n	d0082f7e <speech_synth_render+0x13ca>
d0083738:	462a      	mov	r2, r5
d008373a:	4621      	mov	r1, r4
d008373c:	4650      	mov	r0, sl
d008373e:	f7fc fd31 	bl	d00801a4 <has_magic_e>
d0083742:	4602      	mov	r2, r0
d0083744:	2800      	cmp	r0, #0
d0083746:	d048      	beq.n	d00837da <speech_synth_render+0x1c26>
d0083748:	f8bd 7098 	ldrh.w	r7, [sp, #152]	; 0x98
d008374c:	f5b7 7f40 	cmp.w	r7, #768	; 0x300
d0083750:	f4bf ac63 	bcs.w	d008301a <speech_synth_render+0x1466>
d0083754:	9801      	ldr	r0, [sp, #4]
d0083756:	1c7d      	adds	r5, r7, #1
d0083758:	2104      	movs	r1, #4
d008375a:	2248      	movs	r2, #72	; 0x48
d008375c:	eb00 0387 	add.w	r3, r0, r7, lsl #2
d0083760:	b2ad      	uxth	r5, r5
d0083762:	f800 1027 	strb.w	r1, [r0, r7, lsl #2]
d0083766:	805a      	strh	r2, [r3, #2]
d0083768:	482c      	ldr	r0, [pc, #176]	; (d008381c <speech_synth_render+0x1c68>)
d008376a:	f8ad 5098 	strh.w	r5, [sp, #152]	; 0x98
d008376e:	f000 fcd2 	bl	d0084116 <strlen>
d0083772:	1d03      	adds	r3, r0, #4
d0083774:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d0083778:	d20c      	bcs.n	d0083794 <speech_synth_render+0x1be0>
d008377a:	b138      	cbz	r0, d008378c <speech_synth_render+0x1bd8>
d008377c:	4b27      	ldr	r3, [pc, #156]	; (d008381c <speech_synth_render+0x1c68>)
d008377e:	2120      	movs	r1, #32
d0083780:	2200      	movs	r2, #0
d0083782:	eb03 0c00 	add.w	ip, r3, r0
d0083786:	5419      	strb	r1, [r3, r0]
d0083788:	f88c 2001 	strb.w	r2, [ip, #1]
d008378c:	4929      	ldr	r1, [pc, #164]	; (d0083834 <speech_synth_render+0x1c80>)
d008378e:	4823      	ldr	r0, [pc, #140]	; (d008381c <speech_synth_render+0x1c68>)
d0083790:	f000 fcb2 	bl	d00840f8 <strcat>
d0083794:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
d0083798:	f43f ac3f 	beq.w	d008301a <speech_synth_render+0x1466>
d008379c:	9801      	ldr	r0, [sp, #4]
d008379e:	210a      	movs	r1, #10
d00837a0:	2252      	movs	r2, #82	; 0x52
d00837a2:	3702      	adds	r7, #2
d00837a4:	eb00 0385 	add.w	r3, r0, r5, lsl #2
d00837a8:	f800 1025 	strb.w	r1, [r0, r5, lsl #2]
d00837ac:	481b      	ldr	r0, [pc, #108]	; (d008381c <speech_synth_render+0x1c68>)
d00837ae:	805a      	strh	r2, [r3, #2]
d00837b0:	f8ad 7098 	strh.w	r7, [sp, #152]	; 0x98
d00837b4:	f000 fcaf 	bl	d0084116 <strlen>
d00837b8:	1d03      	adds	r3, r0, #4
d00837ba:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
d00837be:	f4bf ac2c 	bcs.w	d008301a <speech_synth_render+0x1466>
d00837c2:	b128      	cbz	r0, d00837d0 <speech_synth_render+0x1c1c>
d00837c4:	4d15      	ldr	r5, [pc, #84]	; (d008381c <speech_synth_render+0x1c68>)
d00837c6:	2120      	movs	r1, #32
d00837c8:	2200      	movs	r2, #0
d00837ca:	182b      	adds	r3, r5, r0
d00837cc:	5429      	strb	r1, [r5, r0]
d00837ce:	705a      	strb	r2, [r3, #1]
d00837d0:	4919      	ldr	r1, [pc, #100]	; (d0083838 <speech_synth_render+0x1c84>)
d00837d2:	4812      	ldr	r0, [pc, #72]	; (d008381c <speech_synth_render+0x1c68>)
d00837d4:	f000 fc90 	bl	d00840f8 <strcat>
d00837d8:	e41f      	b.n	d008301a <speech_synth_render+0x1466>
d00837da:	2103      	movs	r1, #3
d00837dc:	a826      	add	r0, sp, #152	; 0x98
d00837de:	f7fc fc9f 	bl	d0080120 <emit_phone.constprop.0>
d00837e2:	e41a      	b.n	d008301a <speech_synth_render+0x1466>
d00837e4:	2200      	movs	r2, #0
d00837e6:	2105      	movs	r1, #5
d00837e8:	a826      	add	r0, sp, #152	; 0x98
d00837ea:	b2b5      	uxth	r5, r6
d00837ec:	f7fc fc98 	bl	d0080120 <emit_phone.constprop.0>
d00837f0:	f7ff bbc5 	b.w	d0082f7e <speech_synth_render+0x13ca>
d00837f4:	2200      	movs	r2, #0
d00837f6:	2117      	movs	r1, #23
d00837f8:	a826      	add	r0, sp, #152	; 0x98
d00837fa:	f7fc fc91 	bl	d0080120 <emit_phone.constprop.0>
d00837fe:	2302      	movs	r3, #2
d0083800:	e607      	b.n	d0083412 <speech_synth_render+0x185e>
d0083802:	2102      	movs	r1, #2
d0083804:	a826      	add	r0, sp, #152	; 0x98
d0083806:	f7fc fc8b 	bl	d0080120 <emit_phone.constprop.0>
d008380a:	e406      	b.n	d008301a <speech_synth_render+0x1466>
d008380c:	2101      	movs	r1, #1
d008380e:	a826      	add	r0, sp, #152	; 0x98
d0083810:	f7fc fc86 	bl	d0080120 <emit_phone.constprop.0>
d0083814:	e401      	b.n	d008301a <speech_synth_render+0x1466>
d0083816:	9a00      	ldr	r2, [sp, #0]
d0083818:	f7ff b8b0 	b.w	d008297c <speech_synth_render+0xdc8>
d008381c:	d00c61b8 	.word	0xd00c61b8
d0083820:	d0084698 	.word	0xd0084698
d0083824:	d00846fc 	.word	0xd00846fc
d0083828:	d008472c 	.word	0xd008472c
d008382c:	d0084770 	.word	0xd0084770
d0083830:	d0084774 	.word	0xd0084774
d0083834:	d00846b0 	.word	0xd00846b0
d0083838:	d0084664 	.word	0xd0084664

d008383c <speech_synth_samples>:
d008383c:	4800      	ldr	r0, [pc, #0]	; (d0083840 <speech_synth_samples+0x4>)
d008383e:	4770      	bx	lr
d0083840:	d0085820 	.word	0xd0085820

d0083844 <main>:
d0083844:	b5f0      	push	{r4, r5, r6, r7, lr}
d0083846:	b083      	sub	sp, #12
d0083848:	2900      	cmp	r1, #0
d008384a:	f000 8131 	beq.w	d0083ab0 <main+0x26c>
d008384e:	684e      	ldr	r6, [r1, #4]
d0083850:	4b98      	ldr	r3, [pc, #608]	; (d0083ab4 <main+0x270>)
d0083852:	2e00      	cmp	r6, #0
d0083854:	bf08      	it	eq
d0083856:	461e      	moveq	r6, r3
d0083858:	4c97      	ldr	r4, [pc, #604]	; (d0083ab8 <main+0x274>)
d008385a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d008385e:	2501      	movs	r5, #1
d0083860:	7823      	ldrb	r3, [r4, #0]
d0083862:	7862      	ldrb	r2, [r4, #1]
d0083864:	78a1      	ldrb	r1, [r4, #2]
d0083866:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008386a:	78e2      	ldrb	r2, [r4, #3]
d008386c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083870:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083874:	681b      	ldr	r3, [r3, #0]
d0083876:	4798      	blx	r3
d0083878:	f7fc fbe0 	bl	d008003c <initMalloc>
d008387c:	7d23      	ldrb	r3, [r4, #20]
d008387e:	7d62      	ldrb	r2, [r4, #21]
d0083880:	2040      	movs	r0, #64	; 0x40
d0083882:	7da1      	ldrb	r1, [r4, #22]
d0083884:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083888:	7de2      	ldrb	r2, [r4, #23]
d008388a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008388e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083892:	681b      	ldr	r3, [r3, #0]
d0083894:	681b      	ldr	r3, [r3, #0]
d0083896:	4798      	blx	r3
d0083898:	7d22      	ldrb	r2, [r4, #20]
d008389a:	7d63      	ldrb	r3, [r4, #21]
d008389c:	7da0      	ldrb	r0, [r4, #22]
d008389e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00838a2:	7de1      	ldrb	r1, [r4, #23]
d00838a4:	7f23      	ldrb	r3, [r4, #28]
d00838a6:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d00838aa:	7f67      	ldrb	r7, [r4, #29]
d00838ac:	7fa0      	ldrb	r0, [r4, #30]
d00838ae:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d00838b2:	7fe1      	ldrb	r1, [r4, #31]
d00838b4:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d00838b8:	6812      	ldr	r2, [r2, #0]
d00838ba:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00838be:	6852      	ldr	r2, [r2, #4]
d00838c0:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00838c4:	7015      	strb	r5, [r2, #0]
d00838c6:	685b      	ldr	r3, [r3, #4]
d00838c8:	4798      	blx	r3
d00838ca:	7f23      	ldrb	r3, [r4, #28]
d00838cc:	7f62      	ldrb	r2, [r4, #29]
d00838ce:	2000      	movs	r0, #0
d00838d0:	7fa1      	ldrb	r1, [r4, #30]
d00838d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00838d6:	7fe2      	ldrb	r2, [r4, #31]
d00838d8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00838dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00838e0:	6a1b      	ldr	r3, [r3, #32]
d00838e2:	4798      	blx	r3
d00838e4:	7f23      	ldrb	r3, [r4, #28]
d00838e6:	7f62      	ldrb	r2, [r4, #29]
d00838e8:	4628      	mov	r0, r5
d00838ea:	7fa1      	ldrb	r1, [r4, #30]
d00838ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00838f0:	7fe2      	ldrb	r2, [r4, #31]
d00838f2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00838f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00838fa:	691b      	ldr	r3, [r3, #16]
d00838fc:	4798      	blx	r3
d00838fe:	7f25      	ldrb	r5, [r4, #28]
d0083900:	7f60      	ldrb	r0, [r4, #29]
d0083902:	2108      	movs	r1, #8
d0083904:	7fa2      	ldrb	r2, [r4, #30]
d0083906:	230d      	movs	r3, #13
d0083908:	ea45 2500 	orr.w	r5, r5, r0, lsl #8
d008390c:	7fe7      	ldrb	r7, [r4, #31]
d008390e:	4608      	mov	r0, r1
d0083910:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d0083914:	4a69      	ldr	r2, [pc, #420]	; (d0083abc <main+0x278>)
d0083916:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d008391a:	6aed      	ldr	r5, [r5, #44]	; 0x2c
d008391c:	47a8      	blx	r5
d008391e:	7f25      	ldrb	r5, [r4, #28]
d0083920:	7f62      	ldrb	r2, [r4, #29]
d0083922:	2307      	movs	r3, #7
d0083924:	7fa0      	ldrb	r0, [r4, #30]
d0083926:	211c      	movs	r1, #28
d0083928:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d008392c:	7fe7      	ldrb	r7, [r4, #31]
d008392e:	4a64      	ldr	r2, [pc, #400]	; (d0083ac0 <main+0x27c>)
d0083930:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0083934:	2008      	movs	r0, #8
d0083936:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d008393a:	6aed      	ldr	r5, [r5, #44]	; 0x2c
d008393c:	47a8      	blx	r5
d008393e:	7f25      	ldrb	r5, [r4, #28]
d0083940:	7f62      	ldrb	r2, [r4, #29]
d0083942:	230e      	movs	r3, #14
d0083944:	7fa0      	ldrb	r0, [r4, #30]
d0083946:	212e      	movs	r1, #46	; 0x2e
d0083948:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d008394c:	7fe7      	ldrb	r7, [r4, #31]
d008394e:	4a5d      	ldr	r2, [pc, #372]	; (d0083ac4 <main+0x280>)
d0083950:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0083954:	2008      	movs	r0, #8
d0083956:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d008395a:	6aed      	ldr	r5, [r5, #44]	; 0x2c
d008395c:	47a8      	blx	r5
d008395e:	7f25      	ldrb	r5, [r4, #28]
d0083960:	7f61      	ldrb	r1, [r4, #29]
d0083962:	4632      	mov	r2, r6
d0083964:	7fa0      	ldrb	r0, [r4, #30]
d0083966:	230c      	movs	r3, #12
d0083968:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d008396c:	7fe7      	ldrb	r7, [r4, #31]
d008396e:	2148      	movs	r1, #72	; 0x48
d0083970:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0083974:	2008      	movs	r0, #8
d0083976:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d008397a:	6aed      	ldr	r5, [r5, #44]	; 0x2c
d008397c:	47a8      	blx	r5
d008397e:	7f23      	ldrb	r3, [r4, #28]
d0083980:	7f62      	ldrb	r2, [r4, #29]
d0083982:	7fa1      	ldrb	r1, [r4, #30]
d0083984:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083988:	7fe2      	ldrb	r2, [r4, #31]
d008398a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008398e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083992:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0083994:	4798      	blx	r3
d0083996:	4630      	mov	r0, r6
d0083998:	f7fe f90c 	bl	d0081bb4 <speech_synth_render>
d008399c:	7d23      	ldrb	r3, [r4, #20]
d008399e:	7d61      	ldrb	r1, [r4, #21]
d00839a0:	9001      	str	r0, [sp, #4]
d00839a2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00839a6:	7da0      	ldrb	r0, [r4, #22]
d00839a8:	7de1      	ldrb	r1, [r4, #23]
d00839aa:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00839ae:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00839b2:	689b      	ldr	r3, [r3, #8]
d00839b4:	68dd      	ldr	r5, [r3, #12]
d00839b6:	f7ff ff41 	bl	d008383c <speech_synth_samples>
d00839ba:	2300      	movs	r3, #0
d00839bc:	4601      	mov	r1, r0
d00839be:	9a01      	ldr	r2, [sp, #4]
d00839c0:	4618      	mov	r0, r3
d00839c2:	47a8      	blx	r5
d00839c4:	7d23      	ldrb	r3, [r4, #20]
d00839c6:	7d62      	ldrb	r2, [r4, #21]
d00839c8:	f245 6122 	movw	r1, #22050	; 0x5622
d00839cc:	7da5      	ldrb	r5, [r4, #22]
d00839ce:	2000      	movs	r0, #0
d00839d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00839d4:	7de2      	ldrb	r2, [r4, #23]
d00839d6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00839da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00839de:	689b      	ldr	r3, [r3, #8]
d00839e0:	691b      	ldr	r3, [r3, #16]
d00839e2:	4798      	blx	r3
d00839e4:	7d23      	ldrb	r3, [r4, #20]
d00839e6:	7d62      	ldrb	r2, [r4, #21]
d00839e8:	21ff      	movs	r1, #255	; 0xff
d00839ea:	7da5      	ldrb	r5, [r4, #22]
d00839ec:	2000      	movs	r0, #0
d00839ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00839f2:	7de2      	ldrb	r2, [r4, #23]
d00839f4:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00839f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00839fc:	689b      	ldr	r3, [r3, #8]
d00839fe:	695b      	ldr	r3, [r3, #20]
d0083a00:	4798      	blx	r3
d0083a02:	7d23      	ldrb	r3, [r4, #20]
d0083a04:	7d62      	ldrb	r2, [r4, #21]
d0083a06:	2100      	movs	r1, #0
d0083a08:	7da5      	ldrb	r5, [r4, #22]
d0083a0a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083a0e:	7de2      	ldrb	r2, [r4, #23]
d0083a10:	4608      	mov	r0, r1
d0083a12:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0083a16:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083a1a:	689b      	ldr	r3, [r3, #8]
d0083a1c:	699b      	ldr	r3, [r3, #24]
d0083a1e:	4798      	blx	r3
d0083a20:	7d23      	ldrb	r3, [r4, #20]
d0083a22:	7d62      	ldrb	r2, [r4, #21]
d0083a24:	2100      	movs	r1, #0
d0083a26:	7da5      	ldrb	r5, [r4, #22]
d0083a28:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083a2c:	7de2      	ldrb	r2, [r4, #23]
d0083a2e:	4608      	mov	r0, r1
d0083a30:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0083a34:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083a38:	689b      	ldr	r3, [r3, #8]
d0083a3a:	6a1b      	ldr	r3, [r3, #32]
d0083a3c:	4798      	blx	r3
d0083a3e:	7d23      	ldrb	r3, [r4, #20]
d0083a40:	7d62      	ldrb	r2, [r4, #21]
d0083a42:	2000      	movs	r0, #0
d0083a44:	7da1      	ldrb	r1, [r4, #22]
d0083a46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083a4a:	7de2      	ldrb	r2, [r4, #23]
d0083a4c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083a50:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083a54:	689b      	ldr	r3, [r3, #8]
d0083a56:	685b      	ldr	r3, [r3, #4]
d0083a58:	4798      	blx	r3
d0083a5a:	7d23      	ldrb	r3, [r4, #20]
d0083a5c:	7d62      	ldrb	r2, [r4, #21]
d0083a5e:	2000      	movs	r0, #0
d0083a60:	7da1      	ldrb	r1, [r4, #22]
d0083a62:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083a66:	7de2      	ldrb	r2, [r4, #23]
d0083a68:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083a6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083a70:	689b      	ldr	r3, [r3, #8]
d0083a72:	689b      	ldr	r3, [r3, #8]
d0083a74:	4798      	blx	r3
d0083a76:	7d23      	ldrb	r3, [r4, #20]
d0083a78:	7d62      	ldrb	r2, [r4, #21]
d0083a7a:	2000      	movs	r0, #0
d0083a7c:	7da1      	ldrb	r1, [r4, #22]
d0083a7e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083a82:	7de2      	ldrb	r2, [r4, #23]
d0083a84:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083a88:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083a8c:	689b      	ldr	r3, [r3, #8]
d0083a8e:	685b      	ldr	r3, [r3, #4]
d0083a90:	4798      	blx	r3
d0083a92:	7823      	ldrb	r3, [r4, #0]
d0083a94:	7862      	ldrb	r2, [r4, #1]
d0083a96:	78a1      	ldrb	r1, [r4, #2]
d0083a98:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083a9c:	78e2      	ldrb	r2, [r4, #3]
d0083a9e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083aa2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083aa6:	685b      	ldr	r3, [r3, #4]
d0083aa8:	4798      	blx	r3
d0083aaa:	2000      	movs	r0, #0
d0083aac:	b003      	add	sp, #12
d0083aae:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0083ab0:	4e00      	ldr	r6, [pc, #0]	; (d0083ab4 <main+0x270>)
d0083ab2:	e6d1      	b.n	d0083858 <main+0x14>
d0083ab4:	d0084a50 	.word	0xd0084a50
d0083ab8:	2001f000 	.word	0x2001f000
d0083abc:	d0084ac4 	.word	0xd0084ac4
d0083ac0:	d0084ad4 	.word	0xd0084ad4
d0083ac4:	d0084af4 	.word	0xd0084af4

d0083ac8 <__aeabi_uldivmod>:
d0083ac8:	b953      	cbnz	r3, d0083ae0 <__aeabi_uldivmod+0x18>
d0083aca:	b94a      	cbnz	r2, d0083ae0 <__aeabi_uldivmod+0x18>
d0083acc:	2900      	cmp	r1, #0
d0083ace:	bf08      	it	eq
d0083ad0:	2800      	cmpeq	r0, #0
d0083ad2:	bf1c      	itt	ne
d0083ad4:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d0083ad8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d0083adc:	f000 b96e 	b.w	d0083dbc <__aeabi_idiv0>
d0083ae0:	f1ad 0c08 	sub.w	ip, sp, #8
d0083ae4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d0083ae8:	f000 f806 	bl	d0083af8 <__udivmoddi4>
d0083aec:	f8dd e004 	ldr.w	lr, [sp, #4]
d0083af0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d0083af4:	b004      	add	sp, #16
d0083af6:	4770      	bx	lr

d0083af8 <__udivmoddi4>:
d0083af8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0083afc:	9d08      	ldr	r5, [sp, #32]
d0083afe:	4604      	mov	r4, r0
d0083b00:	468c      	mov	ip, r1
d0083b02:	2b00      	cmp	r3, #0
d0083b04:	f040 8083 	bne.w	d0083c0e <__udivmoddi4+0x116>
d0083b08:	428a      	cmp	r2, r1
d0083b0a:	4617      	mov	r7, r2
d0083b0c:	d947      	bls.n	d0083b9e <__udivmoddi4+0xa6>
d0083b0e:	fab2 f282 	clz	r2, r2
d0083b12:	b142      	cbz	r2, d0083b26 <__udivmoddi4+0x2e>
d0083b14:	f1c2 0020 	rsb	r0, r2, #32
d0083b18:	fa24 f000 	lsr.w	r0, r4, r0
d0083b1c:	4091      	lsls	r1, r2
d0083b1e:	4097      	lsls	r7, r2
d0083b20:	ea40 0c01 	orr.w	ip, r0, r1
d0083b24:	4094      	lsls	r4, r2
d0083b26:	ea4f 4817 	mov.w	r8, r7, lsr #16
d0083b2a:	0c23      	lsrs	r3, r4, #16
d0083b2c:	fbbc f6f8 	udiv	r6, ip, r8
d0083b30:	fa1f fe87 	uxth.w	lr, r7
d0083b34:	fb08 c116 	mls	r1, r8, r6, ip
d0083b38:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083b3c:	fb06 f10e 	mul.w	r1, r6, lr
d0083b40:	4299      	cmp	r1, r3
d0083b42:	d909      	bls.n	d0083b58 <__udivmoddi4+0x60>
d0083b44:	18fb      	adds	r3, r7, r3
d0083b46:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d0083b4a:	f080 8119 	bcs.w	d0083d80 <__udivmoddi4+0x288>
d0083b4e:	4299      	cmp	r1, r3
d0083b50:	f240 8116 	bls.w	d0083d80 <__udivmoddi4+0x288>
d0083b54:	3e02      	subs	r6, #2
d0083b56:	443b      	add	r3, r7
d0083b58:	1a5b      	subs	r3, r3, r1
d0083b5a:	b2a4      	uxth	r4, r4
d0083b5c:	fbb3 f0f8 	udiv	r0, r3, r8
d0083b60:	fb08 3310 	mls	r3, r8, r0, r3
d0083b64:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d0083b68:	fb00 fe0e 	mul.w	lr, r0, lr
d0083b6c:	45a6      	cmp	lr, r4
d0083b6e:	d909      	bls.n	d0083b84 <__udivmoddi4+0x8c>
d0083b70:	193c      	adds	r4, r7, r4
d0083b72:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0083b76:	f080 8105 	bcs.w	d0083d84 <__udivmoddi4+0x28c>
d0083b7a:	45a6      	cmp	lr, r4
d0083b7c:	f240 8102 	bls.w	d0083d84 <__udivmoddi4+0x28c>
d0083b80:	3802      	subs	r0, #2
d0083b82:	443c      	add	r4, r7
d0083b84:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d0083b88:	eba4 040e 	sub.w	r4, r4, lr
d0083b8c:	2600      	movs	r6, #0
d0083b8e:	b11d      	cbz	r5, d0083b98 <__udivmoddi4+0xa0>
d0083b90:	40d4      	lsrs	r4, r2
d0083b92:	2300      	movs	r3, #0
d0083b94:	e9c5 4300 	strd	r4, r3, [r5]
d0083b98:	4631      	mov	r1, r6
d0083b9a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0083b9e:	b902      	cbnz	r2, d0083ba2 <__udivmoddi4+0xaa>
d0083ba0:	deff      	udf	#255	; 0xff
d0083ba2:	fab2 f282 	clz	r2, r2
d0083ba6:	2a00      	cmp	r2, #0
d0083ba8:	d150      	bne.n	d0083c4c <__udivmoddi4+0x154>
d0083baa:	1bcb      	subs	r3, r1, r7
d0083bac:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d0083bb0:	fa1f f887 	uxth.w	r8, r7
d0083bb4:	2601      	movs	r6, #1
d0083bb6:	fbb3 fcfe 	udiv	ip, r3, lr
d0083bba:	0c21      	lsrs	r1, r4, #16
d0083bbc:	fb0e 331c 	mls	r3, lr, ip, r3
d0083bc0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0083bc4:	fb08 f30c 	mul.w	r3, r8, ip
d0083bc8:	428b      	cmp	r3, r1
d0083bca:	d907      	bls.n	d0083bdc <__udivmoddi4+0xe4>
d0083bcc:	1879      	adds	r1, r7, r1
d0083bce:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d0083bd2:	d202      	bcs.n	d0083bda <__udivmoddi4+0xe2>
d0083bd4:	428b      	cmp	r3, r1
d0083bd6:	f200 80e9 	bhi.w	d0083dac <__udivmoddi4+0x2b4>
d0083bda:	4684      	mov	ip, r0
d0083bdc:	1ac9      	subs	r1, r1, r3
d0083bde:	b2a3      	uxth	r3, r4
d0083be0:	fbb1 f0fe 	udiv	r0, r1, lr
d0083be4:	fb0e 1110 	mls	r1, lr, r0, r1
d0083be8:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d0083bec:	fb08 f800 	mul.w	r8, r8, r0
d0083bf0:	45a0      	cmp	r8, r4
d0083bf2:	d907      	bls.n	d0083c04 <__udivmoddi4+0x10c>
d0083bf4:	193c      	adds	r4, r7, r4
d0083bf6:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0083bfa:	d202      	bcs.n	d0083c02 <__udivmoddi4+0x10a>
d0083bfc:	45a0      	cmp	r8, r4
d0083bfe:	f200 80d9 	bhi.w	d0083db4 <__udivmoddi4+0x2bc>
d0083c02:	4618      	mov	r0, r3
d0083c04:	eba4 0408 	sub.w	r4, r4, r8
d0083c08:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d0083c0c:	e7bf      	b.n	d0083b8e <__udivmoddi4+0x96>
d0083c0e:	428b      	cmp	r3, r1
d0083c10:	d909      	bls.n	d0083c26 <__udivmoddi4+0x12e>
d0083c12:	2d00      	cmp	r5, #0
d0083c14:	f000 80b1 	beq.w	d0083d7a <__udivmoddi4+0x282>
d0083c18:	2600      	movs	r6, #0
d0083c1a:	e9c5 0100 	strd	r0, r1, [r5]
d0083c1e:	4630      	mov	r0, r6
d0083c20:	4631      	mov	r1, r6
d0083c22:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0083c26:	fab3 f683 	clz	r6, r3
d0083c2a:	2e00      	cmp	r6, #0
d0083c2c:	d14a      	bne.n	d0083cc4 <__udivmoddi4+0x1cc>
d0083c2e:	428b      	cmp	r3, r1
d0083c30:	d302      	bcc.n	d0083c38 <__udivmoddi4+0x140>
d0083c32:	4282      	cmp	r2, r0
d0083c34:	f200 80b8 	bhi.w	d0083da8 <__udivmoddi4+0x2b0>
d0083c38:	1a84      	subs	r4, r0, r2
d0083c3a:	eb61 0103 	sbc.w	r1, r1, r3
d0083c3e:	2001      	movs	r0, #1
d0083c40:	468c      	mov	ip, r1
d0083c42:	2d00      	cmp	r5, #0
d0083c44:	d0a8      	beq.n	d0083b98 <__udivmoddi4+0xa0>
d0083c46:	e9c5 4c00 	strd	r4, ip, [r5]
d0083c4a:	e7a5      	b.n	d0083b98 <__udivmoddi4+0xa0>
d0083c4c:	f1c2 0320 	rsb	r3, r2, #32
d0083c50:	fa20 f603 	lsr.w	r6, r0, r3
d0083c54:	4097      	lsls	r7, r2
d0083c56:	fa01 f002 	lsl.w	r0, r1, r2
d0083c5a:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d0083c5e:	40d9      	lsrs	r1, r3
d0083c60:	4330      	orrs	r0, r6
d0083c62:	0c03      	lsrs	r3, r0, #16
d0083c64:	fbb1 f6fe 	udiv	r6, r1, lr
d0083c68:	fa1f f887 	uxth.w	r8, r7
d0083c6c:	fb0e 1116 	mls	r1, lr, r6, r1
d0083c70:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083c74:	fb06 f108 	mul.w	r1, r6, r8
d0083c78:	4299      	cmp	r1, r3
d0083c7a:	fa04 f402 	lsl.w	r4, r4, r2
d0083c7e:	d909      	bls.n	d0083c94 <__udivmoddi4+0x19c>
d0083c80:	18fb      	adds	r3, r7, r3
d0083c82:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d0083c86:	f080 808d 	bcs.w	d0083da4 <__udivmoddi4+0x2ac>
d0083c8a:	4299      	cmp	r1, r3
d0083c8c:	f240 808a 	bls.w	d0083da4 <__udivmoddi4+0x2ac>
d0083c90:	3e02      	subs	r6, #2
d0083c92:	443b      	add	r3, r7
d0083c94:	1a5b      	subs	r3, r3, r1
d0083c96:	b281      	uxth	r1, r0
d0083c98:	fbb3 f0fe 	udiv	r0, r3, lr
d0083c9c:	fb0e 3310 	mls	r3, lr, r0, r3
d0083ca0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0083ca4:	fb00 f308 	mul.w	r3, r0, r8
d0083ca8:	428b      	cmp	r3, r1
d0083caa:	d907      	bls.n	d0083cbc <__udivmoddi4+0x1c4>
d0083cac:	1879      	adds	r1, r7, r1
d0083cae:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d0083cb2:	d273      	bcs.n	d0083d9c <__udivmoddi4+0x2a4>
d0083cb4:	428b      	cmp	r3, r1
d0083cb6:	d971      	bls.n	d0083d9c <__udivmoddi4+0x2a4>
d0083cb8:	3802      	subs	r0, #2
d0083cba:	4439      	add	r1, r7
d0083cbc:	1acb      	subs	r3, r1, r3
d0083cbe:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0083cc2:	e778      	b.n	d0083bb6 <__udivmoddi4+0xbe>
d0083cc4:	f1c6 0c20 	rsb	ip, r6, #32
d0083cc8:	fa03 f406 	lsl.w	r4, r3, r6
d0083ccc:	fa22 f30c 	lsr.w	r3, r2, ip
d0083cd0:	431c      	orrs	r4, r3
d0083cd2:	fa20 f70c 	lsr.w	r7, r0, ip
d0083cd6:	fa01 f306 	lsl.w	r3, r1, r6
d0083cda:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d0083cde:	fa21 f10c 	lsr.w	r1, r1, ip
d0083ce2:	431f      	orrs	r7, r3
d0083ce4:	0c3b      	lsrs	r3, r7, #16
d0083ce6:	fbb1 f9fe 	udiv	r9, r1, lr
d0083cea:	fa1f f884 	uxth.w	r8, r4
d0083cee:	fb0e 1119 	mls	r1, lr, r9, r1
d0083cf2:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d0083cf6:	fb09 fa08 	mul.w	sl, r9, r8
d0083cfa:	458a      	cmp	sl, r1
d0083cfc:	fa02 f206 	lsl.w	r2, r2, r6
d0083d00:	fa00 f306 	lsl.w	r3, r0, r6
d0083d04:	d908      	bls.n	d0083d18 <__udivmoddi4+0x220>
d0083d06:	1861      	adds	r1, r4, r1
d0083d08:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d0083d0c:	d248      	bcs.n	d0083da0 <__udivmoddi4+0x2a8>
d0083d0e:	458a      	cmp	sl, r1
d0083d10:	d946      	bls.n	d0083da0 <__udivmoddi4+0x2a8>
d0083d12:	f1a9 0902 	sub.w	r9, r9, #2
d0083d16:	4421      	add	r1, r4
d0083d18:	eba1 010a 	sub.w	r1, r1, sl
d0083d1c:	b2bf      	uxth	r7, r7
d0083d1e:	fbb1 f0fe 	udiv	r0, r1, lr
d0083d22:	fb0e 1110 	mls	r1, lr, r0, r1
d0083d26:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d0083d2a:	fb00 f808 	mul.w	r8, r0, r8
d0083d2e:	45b8      	cmp	r8, r7
d0083d30:	d907      	bls.n	d0083d42 <__udivmoddi4+0x24a>
d0083d32:	19e7      	adds	r7, r4, r7
d0083d34:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d0083d38:	d22e      	bcs.n	d0083d98 <__udivmoddi4+0x2a0>
d0083d3a:	45b8      	cmp	r8, r7
d0083d3c:	d92c      	bls.n	d0083d98 <__udivmoddi4+0x2a0>
d0083d3e:	3802      	subs	r0, #2
d0083d40:	4427      	add	r7, r4
d0083d42:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d0083d46:	eba7 0708 	sub.w	r7, r7, r8
d0083d4a:	fba0 8902 	umull	r8, r9, r0, r2
d0083d4e:	454f      	cmp	r7, r9
d0083d50:	46c6      	mov	lr, r8
d0083d52:	4649      	mov	r1, r9
d0083d54:	d31a      	bcc.n	d0083d8c <__udivmoddi4+0x294>
d0083d56:	d017      	beq.n	d0083d88 <__udivmoddi4+0x290>
d0083d58:	b15d      	cbz	r5, d0083d72 <__udivmoddi4+0x27a>
d0083d5a:	ebb3 020e 	subs.w	r2, r3, lr
d0083d5e:	eb67 0701 	sbc.w	r7, r7, r1
d0083d62:	fa07 fc0c 	lsl.w	ip, r7, ip
d0083d66:	40f2      	lsrs	r2, r6
d0083d68:	ea4c 0202 	orr.w	r2, ip, r2
d0083d6c:	40f7      	lsrs	r7, r6
d0083d6e:	e9c5 2700 	strd	r2, r7, [r5]
d0083d72:	2600      	movs	r6, #0
d0083d74:	4631      	mov	r1, r6
d0083d76:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0083d7a:	462e      	mov	r6, r5
d0083d7c:	4628      	mov	r0, r5
d0083d7e:	e70b      	b.n	d0083b98 <__udivmoddi4+0xa0>
d0083d80:	4606      	mov	r6, r0
d0083d82:	e6e9      	b.n	d0083b58 <__udivmoddi4+0x60>
d0083d84:	4618      	mov	r0, r3
d0083d86:	e6fd      	b.n	d0083b84 <__udivmoddi4+0x8c>
d0083d88:	4543      	cmp	r3, r8
d0083d8a:	d2e5      	bcs.n	d0083d58 <__udivmoddi4+0x260>
d0083d8c:	ebb8 0e02 	subs.w	lr, r8, r2
d0083d90:	eb69 0104 	sbc.w	r1, r9, r4
d0083d94:	3801      	subs	r0, #1
d0083d96:	e7df      	b.n	d0083d58 <__udivmoddi4+0x260>
d0083d98:	4608      	mov	r0, r1
d0083d9a:	e7d2      	b.n	d0083d42 <__udivmoddi4+0x24a>
d0083d9c:	4660      	mov	r0, ip
d0083d9e:	e78d      	b.n	d0083cbc <__udivmoddi4+0x1c4>
d0083da0:	4681      	mov	r9, r0
d0083da2:	e7b9      	b.n	d0083d18 <__udivmoddi4+0x220>
d0083da4:	4666      	mov	r6, ip
d0083da6:	e775      	b.n	d0083c94 <__udivmoddi4+0x19c>
d0083da8:	4630      	mov	r0, r6
d0083daa:	e74a      	b.n	d0083c42 <__udivmoddi4+0x14a>
d0083dac:	f1ac 0c02 	sub.w	ip, ip, #2
d0083db0:	4439      	add	r1, r7
d0083db2:	e713      	b.n	d0083bdc <__udivmoddi4+0xe4>
d0083db4:	3802      	subs	r0, #2
d0083db6:	443c      	add	r4, r7
d0083db8:	e724      	b.n	d0083c04 <__udivmoddi4+0x10c>
d0083dba:	bf00      	nop

d0083dbc <__aeabi_idiv0>:
d0083dbc:	4770      	bx	lr
d0083dbe:	bf00      	nop

d0083dc0 <__errno>:
d0083dc0:	4b01      	ldr	r3, [pc, #4]	; (d0083dc8 <__errno+0x8>)
d0083dc2:	6818      	ldr	r0, [r3, #0]
d0083dc4:	4770      	bx	lr
d0083dc6:	bf00      	nop
d0083dc8:	d0084b84 	.word	0xd0084b84

d0083dcc <malloc>:
d0083dcc:	4b02      	ldr	r3, [pc, #8]	; (d0083dd8 <malloc+0xc>)
d0083dce:	4601      	mov	r1, r0
d0083dd0:	6818      	ldr	r0, [r3, #0]
d0083dd2:	f000 b869 	b.w	d0083ea8 <_malloc_r>
d0083dd6:	bf00      	nop
d0083dd8:	d0084b84 	.word	0xd0084b84

d0083ddc <memcpy>:
d0083ddc:	440a      	add	r2, r1
d0083dde:	4291      	cmp	r1, r2
d0083de0:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0083de4:	d100      	bne.n	d0083de8 <memcpy+0xc>
d0083de6:	4770      	bx	lr
d0083de8:	b510      	push	{r4, lr}
d0083dea:	f811 4b01 	ldrb.w	r4, [r1], #1
d0083dee:	f803 4f01 	strb.w	r4, [r3, #1]!
d0083df2:	4291      	cmp	r1, r2
d0083df4:	d1f9      	bne.n	d0083dea <memcpy+0xe>
d0083df6:	bd10      	pop	{r4, pc}

d0083df8 <memset>:
d0083df8:	4402      	add	r2, r0
d0083dfa:	4603      	mov	r3, r0
d0083dfc:	4293      	cmp	r3, r2
d0083dfe:	d100      	bne.n	d0083e02 <memset+0xa>
d0083e00:	4770      	bx	lr
d0083e02:	f803 1b01 	strb.w	r1, [r3], #1
d0083e06:	e7f9      	b.n	d0083dfc <memset+0x4>

d0083e08 <_free_r>:
d0083e08:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0083e0a:	2900      	cmp	r1, #0
d0083e0c:	d048      	beq.n	d0083ea0 <_free_r+0x98>
d0083e0e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0083e12:	9001      	str	r0, [sp, #4]
d0083e14:	2b00      	cmp	r3, #0
d0083e16:	f1a1 0404 	sub.w	r4, r1, #4
d0083e1a:	bfb8      	it	lt
d0083e1c:	18e4      	addlt	r4, r4, r3
d0083e1e:	f000 fb61 	bl	d00844e4 <__malloc_lock>
d0083e22:	4a20      	ldr	r2, [pc, #128]	; (d0083ea4 <_free_r+0x9c>)
d0083e24:	9801      	ldr	r0, [sp, #4]
d0083e26:	6813      	ldr	r3, [r2, #0]
d0083e28:	4615      	mov	r5, r2
d0083e2a:	b933      	cbnz	r3, d0083e3a <_free_r+0x32>
d0083e2c:	6063      	str	r3, [r4, #4]
d0083e2e:	6014      	str	r4, [r2, #0]
d0083e30:	b003      	add	sp, #12
d0083e32:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0083e36:	f000 bb5b 	b.w	d00844f0 <__malloc_unlock>
d0083e3a:	42a3      	cmp	r3, r4
d0083e3c:	d90b      	bls.n	d0083e56 <_free_r+0x4e>
d0083e3e:	6821      	ldr	r1, [r4, #0]
d0083e40:	1862      	adds	r2, r4, r1
d0083e42:	4293      	cmp	r3, r2
d0083e44:	bf04      	itt	eq
d0083e46:	681a      	ldreq	r2, [r3, #0]
d0083e48:	685b      	ldreq	r3, [r3, #4]
d0083e4a:	6063      	str	r3, [r4, #4]
d0083e4c:	bf04      	itt	eq
d0083e4e:	1852      	addeq	r2, r2, r1
d0083e50:	6022      	streq	r2, [r4, #0]
d0083e52:	602c      	str	r4, [r5, #0]
d0083e54:	e7ec      	b.n	d0083e30 <_free_r+0x28>
d0083e56:	461a      	mov	r2, r3
d0083e58:	685b      	ldr	r3, [r3, #4]
d0083e5a:	b10b      	cbz	r3, d0083e60 <_free_r+0x58>
d0083e5c:	42a3      	cmp	r3, r4
d0083e5e:	d9fa      	bls.n	d0083e56 <_free_r+0x4e>
d0083e60:	6811      	ldr	r1, [r2, #0]
d0083e62:	1855      	adds	r5, r2, r1
d0083e64:	42a5      	cmp	r5, r4
d0083e66:	d10b      	bne.n	d0083e80 <_free_r+0x78>
d0083e68:	6824      	ldr	r4, [r4, #0]
d0083e6a:	4421      	add	r1, r4
d0083e6c:	1854      	adds	r4, r2, r1
d0083e6e:	42a3      	cmp	r3, r4
d0083e70:	6011      	str	r1, [r2, #0]
d0083e72:	d1dd      	bne.n	d0083e30 <_free_r+0x28>
d0083e74:	681c      	ldr	r4, [r3, #0]
d0083e76:	685b      	ldr	r3, [r3, #4]
d0083e78:	6053      	str	r3, [r2, #4]
d0083e7a:	4421      	add	r1, r4
d0083e7c:	6011      	str	r1, [r2, #0]
d0083e7e:	e7d7      	b.n	d0083e30 <_free_r+0x28>
d0083e80:	d902      	bls.n	d0083e88 <_free_r+0x80>
d0083e82:	230c      	movs	r3, #12
d0083e84:	6003      	str	r3, [r0, #0]
d0083e86:	e7d3      	b.n	d0083e30 <_free_r+0x28>
d0083e88:	6825      	ldr	r5, [r4, #0]
d0083e8a:	1961      	adds	r1, r4, r5
d0083e8c:	428b      	cmp	r3, r1
d0083e8e:	bf04      	itt	eq
d0083e90:	6819      	ldreq	r1, [r3, #0]
d0083e92:	685b      	ldreq	r3, [r3, #4]
d0083e94:	6063      	str	r3, [r4, #4]
d0083e96:	bf04      	itt	eq
d0083e98:	1949      	addeq	r1, r1, r5
d0083e9a:	6021      	streq	r1, [r4, #0]
d0083e9c:	6054      	str	r4, [r2, #4]
d0083e9e:	e7c7      	b.n	d0083e30 <_free_r+0x28>
d0083ea0:	b003      	add	sp, #12
d0083ea2:	bd30      	pop	{r4, r5, pc}
d0083ea4:	d00c69b8 	.word	0xd00c69b8

d0083ea8 <_malloc_r>:
d0083ea8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0083eaa:	1ccd      	adds	r5, r1, #3
d0083eac:	f025 0503 	bic.w	r5, r5, #3
d0083eb0:	3508      	adds	r5, #8
d0083eb2:	2d0c      	cmp	r5, #12
d0083eb4:	bf38      	it	cc
d0083eb6:	250c      	movcc	r5, #12
d0083eb8:	2d00      	cmp	r5, #0
d0083eba:	4606      	mov	r6, r0
d0083ebc:	db01      	blt.n	d0083ec2 <_malloc_r+0x1a>
d0083ebe:	42a9      	cmp	r1, r5
d0083ec0:	d903      	bls.n	d0083eca <_malloc_r+0x22>
d0083ec2:	230c      	movs	r3, #12
d0083ec4:	6033      	str	r3, [r6, #0]
d0083ec6:	2000      	movs	r0, #0
d0083ec8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0083eca:	f000 fb0b 	bl	d00844e4 <__malloc_lock>
d0083ece:	4921      	ldr	r1, [pc, #132]	; (d0083f54 <_malloc_r+0xac>)
d0083ed0:	680a      	ldr	r2, [r1, #0]
d0083ed2:	4614      	mov	r4, r2
d0083ed4:	b99c      	cbnz	r4, d0083efe <_malloc_r+0x56>
d0083ed6:	4f20      	ldr	r7, [pc, #128]	; (d0083f58 <_malloc_r+0xb0>)
d0083ed8:	683b      	ldr	r3, [r7, #0]
d0083eda:	b923      	cbnz	r3, d0083ee6 <_malloc_r+0x3e>
d0083edc:	4621      	mov	r1, r4
d0083ede:	4630      	mov	r0, r6
d0083ee0:	f7fc f8fe 	bl	d00800e0 <_sbrk_r>
d0083ee4:	6038      	str	r0, [r7, #0]
d0083ee6:	4629      	mov	r1, r5
d0083ee8:	4630      	mov	r0, r6
d0083eea:	f7fc f8f9 	bl	d00800e0 <_sbrk_r>
d0083eee:	1c43      	adds	r3, r0, #1
d0083ef0:	d123      	bne.n	d0083f3a <_malloc_r+0x92>
d0083ef2:	230c      	movs	r3, #12
d0083ef4:	6033      	str	r3, [r6, #0]
d0083ef6:	4630      	mov	r0, r6
d0083ef8:	f000 fafa 	bl	d00844f0 <__malloc_unlock>
d0083efc:	e7e3      	b.n	d0083ec6 <_malloc_r+0x1e>
d0083efe:	6823      	ldr	r3, [r4, #0]
d0083f00:	1b5b      	subs	r3, r3, r5
d0083f02:	d417      	bmi.n	d0083f34 <_malloc_r+0x8c>
d0083f04:	2b0b      	cmp	r3, #11
d0083f06:	d903      	bls.n	d0083f10 <_malloc_r+0x68>
d0083f08:	6023      	str	r3, [r4, #0]
d0083f0a:	441c      	add	r4, r3
d0083f0c:	6025      	str	r5, [r4, #0]
d0083f0e:	e004      	b.n	d0083f1a <_malloc_r+0x72>
d0083f10:	6863      	ldr	r3, [r4, #4]
d0083f12:	42a2      	cmp	r2, r4
d0083f14:	bf0c      	ite	eq
d0083f16:	600b      	streq	r3, [r1, #0]
d0083f18:	6053      	strne	r3, [r2, #4]
d0083f1a:	4630      	mov	r0, r6
d0083f1c:	f000 fae8 	bl	d00844f0 <__malloc_unlock>
d0083f20:	f104 000b 	add.w	r0, r4, #11
d0083f24:	1d23      	adds	r3, r4, #4
d0083f26:	f020 0007 	bic.w	r0, r0, #7
d0083f2a:	1ac2      	subs	r2, r0, r3
d0083f2c:	d0cc      	beq.n	d0083ec8 <_malloc_r+0x20>
d0083f2e:	1a1b      	subs	r3, r3, r0
d0083f30:	50a3      	str	r3, [r4, r2]
d0083f32:	e7c9      	b.n	d0083ec8 <_malloc_r+0x20>
d0083f34:	4622      	mov	r2, r4
d0083f36:	6864      	ldr	r4, [r4, #4]
d0083f38:	e7cc      	b.n	d0083ed4 <_malloc_r+0x2c>
d0083f3a:	1cc4      	adds	r4, r0, #3
d0083f3c:	f024 0403 	bic.w	r4, r4, #3
d0083f40:	42a0      	cmp	r0, r4
d0083f42:	d0e3      	beq.n	d0083f0c <_malloc_r+0x64>
d0083f44:	1a21      	subs	r1, r4, r0
d0083f46:	4630      	mov	r0, r6
d0083f48:	f7fc f8ca 	bl	d00800e0 <_sbrk_r>
d0083f4c:	3001      	adds	r0, #1
d0083f4e:	d1dd      	bne.n	d0083f0c <_malloc_r+0x64>
d0083f50:	e7cf      	b.n	d0083ef2 <_malloc_r+0x4a>
d0083f52:	bf00      	nop
d0083f54:	d00c69b8 	.word	0xd00c69b8
d0083f58:	d00c69bc 	.word	0xd00c69bc

d0083f5c <setbuf>:
d0083f5c:	2900      	cmp	r1, #0
d0083f5e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0083f62:	bf0c      	ite	eq
d0083f64:	2202      	moveq	r2, #2
d0083f66:	2200      	movne	r2, #0
d0083f68:	f000 b800 	b.w	d0083f6c <setvbuf>

d0083f6c <setvbuf>:
d0083f6c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0083f70:	461d      	mov	r5, r3
d0083f72:	4b5d      	ldr	r3, [pc, #372]	; (d00840e8 <setvbuf+0x17c>)
d0083f74:	681f      	ldr	r7, [r3, #0]
d0083f76:	4604      	mov	r4, r0
d0083f78:	460e      	mov	r6, r1
d0083f7a:	4690      	mov	r8, r2
d0083f7c:	b127      	cbz	r7, d0083f88 <setvbuf+0x1c>
d0083f7e:	69bb      	ldr	r3, [r7, #24]
d0083f80:	b913      	cbnz	r3, d0083f88 <setvbuf+0x1c>
d0083f82:	4638      	mov	r0, r7
d0083f84:	f000 f9ea 	bl	d008435c <__sinit>
d0083f88:	4b58      	ldr	r3, [pc, #352]	; (d00840ec <setvbuf+0x180>)
d0083f8a:	429c      	cmp	r4, r3
d0083f8c:	d167      	bne.n	d008405e <setvbuf+0xf2>
d0083f8e:	687c      	ldr	r4, [r7, #4]
d0083f90:	f1b8 0f02 	cmp.w	r8, #2
d0083f94:	d006      	beq.n	d0083fa4 <setvbuf+0x38>
d0083f96:	f1b8 0f01 	cmp.w	r8, #1
d0083f9a:	f200 809f 	bhi.w	d00840dc <setvbuf+0x170>
d0083f9e:	2d00      	cmp	r5, #0
d0083fa0:	f2c0 809c 	blt.w	d00840dc <setvbuf+0x170>
d0083fa4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0083fa6:	07db      	lsls	r3, r3, #31
d0083fa8:	d405      	bmi.n	d0083fb6 <setvbuf+0x4a>
d0083faa:	89a3      	ldrh	r3, [r4, #12]
d0083fac:	0598      	lsls	r0, r3, #22
d0083fae:	d402      	bmi.n	d0083fb6 <setvbuf+0x4a>
d0083fb0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083fb2:	f000 fa71 	bl	d0084498 <__retarget_lock_acquire_recursive>
d0083fb6:	4621      	mov	r1, r4
d0083fb8:	4638      	mov	r0, r7
d0083fba:	f000 f93b 	bl	d0084234 <_fflush_r>
d0083fbe:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0083fc0:	b141      	cbz	r1, d0083fd4 <setvbuf+0x68>
d0083fc2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0083fc6:	4299      	cmp	r1, r3
d0083fc8:	d002      	beq.n	d0083fd0 <setvbuf+0x64>
d0083fca:	4638      	mov	r0, r7
d0083fcc:	f7ff ff1c 	bl	d0083e08 <_free_r>
d0083fd0:	2300      	movs	r3, #0
d0083fd2:	6363      	str	r3, [r4, #52]	; 0x34
d0083fd4:	2300      	movs	r3, #0
d0083fd6:	61a3      	str	r3, [r4, #24]
d0083fd8:	6063      	str	r3, [r4, #4]
d0083fda:	89a3      	ldrh	r3, [r4, #12]
d0083fdc:	0619      	lsls	r1, r3, #24
d0083fde:	d503      	bpl.n	d0083fe8 <setvbuf+0x7c>
d0083fe0:	6921      	ldr	r1, [r4, #16]
d0083fe2:	4638      	mov	r0, r7
d0083fe4:	f7ff ff10 	bl	d0083e08 <_free_r>
d0083fe8:	89a3      	ldrh	r3, [r4, #12]
d0083fea:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0083fee:	f023 0303 	bic.w	r3, r3, #3
d0083ff2:	f1b8 0f02 	cmp.w	r8, #2
d0083ff6:	81a3      	strh	r3, [r4, #12]
d0083ff8:	d06c      	beq.n	d00840d4 <setvbuf+0x168>
d0083ffa:	ab01      	add	r3, sp, #4
d0083ffc:	466a      	mov	r2, sp
d0083ffe:	4621      	mov	r1, r4
d0084000:	4638      	mov	r0, r7
d0084002:	f000 fa4b 	bl	d008449c <__swhatbuf_r>
d0084006:	89a3      	ldrh	r3, [r4, #12]
d0084008:	4318      	orrs	r0, r3
d008400a:	81a0      	strh	r0, [r4, #12]
d008400c:	2d00      	cmp	r5, #0
d008400e:	d130      	bne.n	d0084072 <setvbuf+0x106>
d0084010:	9d00      	ldr	r5, [sp, #0]
d0084012:	4628      	mov	r0, r5
d0084014:	f7ff feda 	bl	d0083dcc <malloc>
d0084018:	4606      	mov	r6, r0
d008401a:	2800      	cmp	r0, #0
d008401c:	d155      	bne.n	d00840ca <setvbuf+0x15e>
d008401e:	f8dd 9000 	ldr.w	r9, [sp]
d0084022:	45a9      	cmp	r9, r5
d0084024:	d14a      	bne.n	d00840bc <setvbuf+0x150>
d0084026:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008402a:	2200      	movs	r2, #0
d008402c:	60a2      	str	r2, [r4, #8]
d008402e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0084032:	6022      	str	r2, [r4, #0]
d0084034:	6122      	str	r2, [r4, #16]
d0084036:	2201      	movs	r2, #1
d0084038:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008403c:	6162      	str	r2, [r4, #20]
d008403e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0084040:	f043 0302 	orr.w	r3, r3, #2
d0084044:	07d2      	lsls	r2, r2, #31
d0084046:	81a3      	strh	r3, [r4, #12]
d0084048:	d405      	bmi.n	d0084056 <setvbuf+0xea>
d008404a:	f413 7f00 	tst.w	r3, #512	; 0x200
d008404e:	d102      	bne.n	d0084056 <setvbuf+0xea>
d0084050:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0084052:	f000 fa22 	bl	d008449a <__retarget_lock_release_recursive>
d0084056:	4628      	mov	r0, r5
d0084058:	b003      	add	sp, #12
d008405a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d008405e:	4b24      	ldr	r3, [pc, #144]	; (d00840f0 <setvbuf+0x184>)
d0084060:	429c      	cmp	r4, r3
d0084062:	d101      	bne.n	d0084068 <setvbuf+0xfc>
d0084064:	68bc      	ldr	r4, [r7, #8]
d0084066:	e793      	b.n	d0083f90 <setvbuf+0x24>
d0084068:	4b22      	ldr	r3, [pc, #136]	; (d00840f4 <setvbuf+0x188>)
d008406a:	429c      	cmp	r4, r3
d008406c:	bf08      	it	eq
d008406e:	68fc      	ldreq	r4, [r7, #12]
d0084070:	e78e      	b.n	d0083f90 <setvbuf+0x24>
d0084072:	2e00      	cmp	r6, #0
d0084074:	d0cd      	beq.n	d0084012 <setvbuf+0xa6>
d0084076:	69bb      	ldr	r3, [r7, #24]
d0084078:	b913      	cbnz	r3, d0084080 <setvbuf+0x114>
d008407a:	4638      	mov	r0, r7
d008407c:	f000 f96e 	bl	d008435c <__sinit>
d0084080:	f1b8 0f01 	cmp.w	r8, #1
d0084084:	bf08      	it	eq
d0084086:	89a3      	ldrheq	r3, [r4, #12]
d0084088:	6026      	str	r6, [r4, #0]
d008408a:	bf04      	itt	eq
d008408c:	f043 0301 	orreq.w	r3, r3, #1
d0084090:	81a3      	strheq	r3, [r4, #12]
d0084092:	89a2      	ldrh	r2, [r4, #12]
d0084094:	f012 0308 	ands.w	r3, r2, #8
d0084098:	e9c4 6504 	strd	r6, r5, [r4, #16]
d008409c:	d01c      	beq.n	d00840d8 <setvbuf+0x16c>
d008409e:	07d3      	lsls	r3, r2, #31
d00840a0:	bf41      	itttt	mi
d00840a2:	2300      	movmi	r3, #0
d00840a4:	426d      	negmi	r5, r5
d00840a6:	60a3      	strmi	r3, [r4, #8]
d00840a8:	61a5      	strmi	r5, [r4, #24]
d00840aa:	bf58      	it	pl
d00840ac:	60a5      	strpl	r5, [r4, #8]
d00840ae:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00840b0:	f015 0501 	ands.w	r5, r5, #1
d00840b4:	d115      	bne.n	d00840e2 <setvbuf+0x176>
d00840b6:	f412 7f00 	tst.w	r2, #512	; 0x200
d00840ba:	e7c8      	b.n	d008404e <setvbuf+0xe2>
d00840bc:	4648      	mov	r0, r9
d00840be:	f7ff fe85 	bl	d0083dcc <malloc>
d00840c2:	4606      	mov	r6, r0
d00840c4:	2800      	cmp	r0, #0
d00840c6:	d0ae      	beq.n	d0084026 <setvbuf+0xba>
d00840c8:	464d      	mov	r5, r9
d00840ca:	89a3      	ldrh	r3, [r4, #12]
d00840cc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00840d0:	81a3      	strh	r3, [r4, #12]
d00840d2:	e7d0      	b.n	d0084076 <setvbuf+0x10a>
d00840d4:	2500      	movs	r5, #0
d00840d6:	e7a8      	b.n	d008402a <setvbuf+0xbe>
d00840d8:	60a3      	str	r3, [r4, #8]
d00840da:	e7e8      	b.n	d00840ae <setvbuf+0x142>
d00840dc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00840e0:	e7b9      	b.n	d0084056 <setvbuf+0xea>
d00840e2:	2500      	movs	r5, #0
d00840e4:	e7b7      	b.n	d0084056 <setvbuf+0xea>
d00840e6:	bf00      	nop
d00840e8:	d0084b84 	.word	0xd0084b84
d00840ec:	d0084b30 	.word	0xd0084b30
d00840f0:	d0084b50 	.word	0xd0084b50
d00840f4:	d0084b10 	.word	0xd0084b10

d00840f8 <strcat>:
d00840f8:	b510      	push	{r4, lr}
d00840fa:	4602      	mov	r2, r0
d00840fc:	7814      	ldrb	r4, [r2, #0]
d00840fe:	4613      	mov	r3, r2
d0084100:	3201      	adds	r2, #1
d0084102:	2c00      	cmp	r4, #0
d0084104:	d1fa      	bne.n	d00840fc <strcat+0x4>
d0084106:	3b01      	subs	r3, #1
d0084108:	f811 2b01 	ldrb.w	r2, [r1], #1
d008410c:	f803 2f01 	strb.w	r2, [r3, #1]!
d0084110:	2a00      	cmp	r2, #0
d0084112:	d1f9      	bne.n	d0084108 <strcat+0x10>
d0084114:	bd10      	pop	{r4, pc}

d0084116 <strlen>:
d0084116:	4603      	mov	r3, r0
d0084118:	f813 2b01 	ldrb.w	r2, [r3], #1
d008411c:	2a00      	cmp	r2, #0
d008411e:	d1fb      	bne.n	d0084118 <strlen+0x2>
d0084120:	1a18      	subs	r0, r3, r0
d0084122:	3801      	subs	r0, #1
d0084124:	4770      	bx	lr
	...

d0084128 <__sflush_r>:
d0084128:	898a      	ldrh	r2, [r1, #12]
d008412a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d008412e:	4605      	mov	r5, r0
d0084130:	0710      	lsls	r0, r2, #28
d0084132:	460c      	mov	r4, r1
d0084134:	d458      	bmi.n	d00841e8 <__sflush_r+0xc0>
d0084136:	684b      	ldr	r3, [r1, #4]
d0084138:	2b00      	cmp	r3, #0
d008413a:	dc05      	bgt.n	d0084148 <__sflush_r+0x20>
d008413c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d008413e:	2b00      	cmp	r3, #0
d0084140:	dc02      	bgt.n	d0084148 <__sflush_r+0x20>
d0084142:	2000      	movs	r0, #0
d0084144:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0084148:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d008414a:	2e00      	cmp	r6, #0
d008414c:	d0f9      	beq.n	d0084142 <__sflush_r+0x1a>
d008414e:	2300      	movs	r3, #0
d0084150:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0084154:	682f      	ldr	r7, [r5, #0]
d0084156:	602b      	str	r3, [r5, #0]
d0084158:	d032      	beq.n	d00841c0 <__sflush_r+0x98>
d008415a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d008415c:	89a3      	ldrh	r3, [r4, #12]
d008415e:	075a      	lsls	r2, r3, #29
d0084160:	d505      	bpl.n	d008416e <__sflush_r+0x46>
d0084162:	6863      	ldr	r3, [r4, #4]
d0084164:	1ac0      	subs	r0, r0, r3
d0084166:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0084168:	b10b      	cbz	r3, d008416e <__sflush_r+0x46>
d008416a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d008416c:	1ac0      	subs	r0, r0, r3
d008416e:	2300      	movs	r3, #0
d0084170:	4602      	mov	r2, r0
d0084172:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0084174:	6a21      	ldr	r1, [r4, #32]
d0084176:	4628      	mov	r0, r5
d0084178:	47b0      	blx	r6
d008417a:	1c43      	adds	r3, r0, #1
d008417c:	89a3      	ldrh	r3, [r4, #12]
d008417e:	d106      	bne.n	d008418e <__sflush_r+0x66>
d0084180:	6829      	ldr	r1, [r5, #0]
d0084182:	291d      	cmp	r1, #29
d0084184:	d82c      	bhi.n	d00841e0 <__sflush_r+0xb8>
d0084186:	4a2a      	ldr	r2, [pc, #168]	; (d0084230 <__sflush_r+0x108>)
d0084188:	40ca      	lsrs	r2, r1
d008418a:	07d6      	lsls	r6, r2, #31
d008418c:	d528      	bpl.n	d00841e0 <__sflush_r+0xb8>
d008418e:	2200      	movs	r2, #0
d0084190:	6062      	str	r2, [r4, #4]
d0084192:	04d9      	lsls	r1, r3, #19
d0084194:	6922      	ldr	r2, [r4, #16]
d0084196:	6022      	str	r2, [r4, #0]
d0084198:	d504      	bpl.n	d00841a4 <__sflush_r+0x7c>
d008419a:	1c42      	adds	r2, r0, #1
d008419c:	d101      	bne.n	d00841a2 <__sflush_r+0x7a>
d008419e:	682b      	ldr	r3, [r5, #0]
d00841a0:	b903      	cbnz	r3, d00841a4 <__sflush_r+0x7c>
d00841a2:	6560      	str	r0, [r4, #84]	; 0x54
d00841a4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00841a6:	602f      	str	r7, [r5, #0]
d00841a8:	2900      	cmp	r1, #0
d00841aa:	d0ca      	beq.n	d0084142 <__sflush_r+0x1a>
d00841ac:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00841b0:	4299      	cmp	r1, r3
d00841b2:	d002      	beq.n	d00841ba <__sflush_r+0x92>
d00841b4:	4628      	mov	r0, r5
d00841b6:	f7ff fe27 	bl	d0083e08 <_free_r>
d00841ba:	2000      	movs	r0, #0
d00841bc:	6360      	str	r0, [r4, #52]	; 0x34
d00841be:	e7c1      	b.n	d0084144 <__sflush_r+0x1c>
d00841c0:	6a21      	ldr	r1, [r4, #32]
d00841c2:	2301      	movs	r3, #1
d00841c4:	4628      	mov	r0, r5
d00841c6:	47b0      	blx	r6
d00841c8:	1c41      	adds	r1, r0, #1
d00841ca:	d1c7      	bne.n	d008415c <__sflush_r+0x34>
d00841cc:	682b      	ldr	r3, [r5, #0]
d00841ce:	2b00      	cmp	r3, #0
d00841d0:	d0c4      	beq.n	d008415c <__sflush_r+0x34>
d00841d2:	2b1d      	cmp	r3, #29
d00841d4:	d001      	beq.n	d00841da <__sflush_r+0xb2>
d00841d6:	2b16      	cmp	r3, #22
d00841d8:	d101      	bne.n	d00841de <__sflush_r+0xb6>
d00841da:	602f      	str	r7, [r5, #0]
d00841dc:	e7b1      	b.n	d0084142 <__sflush_r+0x1a>
d00841de:	89a3      	ldrh	r3, [r4, #12]
d00841e0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00841e4:	81a3      	strh	r3, [r4, #12]
d00841e6:	e7ad      	b.n	d0084144 <__sflush_r+0x1c>
d00841e8:	690f      	ldr	r7, [r1, #16]
d00841ea:	2f00      	cmp	r7, #0
d00841ec:	d0a9      	beq.n	d0084142 <__sflush_r+0x1a>
d00841ee:	0793      	lsls	r3, r2, #30
d00841f0:	680e      	ldr	r6, [r1, #0]
d00841f2:	bf08      	it	eq
d00841f4:	694b      	ldreq	r3, [r1, #20]
d00841f6:	600f      	str	r7, [r1, #0]
d00841f8:	bf18      	it	ne
d00841fa:	2300      	movne	r3, #0
d00841fc:	eba6 0807 	sub.w	r8, r6, r7
d0084200:	608b      	str	r3, [r1, #8]
d0084202:	f1b8 0f00 	cmp.w	r8, #0
d0084206:	dd9c      	ble.n	d0084142 <__sflush_r+0x1a>
d0084208:	6a21      	ldr	r1, [r4, #32]
d008420a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d008420c:	4643      	mov	r3, r8
d008420e:	463a      	mov	r2, r7
d0084210:	4628      	mov	r0, r5
d0084212:	47b0      	blx	r6
d0084214:	2800      	cmp	r0, #0
d0084216:	dc06      	bgt.n	d0084226 <__sflush_r+0xfe>
d0084218:	89a3      	ldrh	r3, [r4, #12]
d008421a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d008421e:	81a3      	strh	r3, [r4, #12]
d0084220:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0084224:	e78e      	b.n	d0084144 <__sflush_r+0x1c>
d0084226:	4407      	add	r7, r0
d0084228:	eba8 0800 	sub.w	r8, r8, r0
d008422c:	e7e9      	b.n	d0084202 <__sflush_r+0xda>
d008422e:	bf00      	nop
d0084230:	20400001 	.word	0x20400001

d0084234 <_fflush_r>:
d0084234:	b538      	push	{r3, r4, r5, lr}
d0084236:	690b      	ldr	r3, [r1, #16]
d0084238:	4605      	mov	r5, r0
d008423a:	460c      	mov	r4, r1
d008423c:	b913      	cbnz	r3, d0084244 <_fflush_r+0x10>
d008423e:	2500      	movs	r5, #0
d0084240:	4628      	mov	r0, r5
d0084242:	bd38      	pop	{r3, r4, r5, pc}
d0084244:	b118      	cbz	r0, d008424e <_fflush_r+0x1a>
d0084246:	6983      	ldr	r3, [r0, #24]
d0084248:	b90b      	cbnz	r3, d008424e <_fflush_r+0x1a>
d008424a:	f000 f887 	bl	d008435c <__sinit>
d008424e:	4b14      	ldr	r3, [pc, #80]	; (d00842a0 <_fflush_r+0x6c>)
d0084250:	429c      	cmp	r4, r3
d0084252:	d11b      	bne.n	d008428c <_fflush_r+0x58>
d0084254:	686c      	ldr	r4, [r5, #4]
d0084256:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008425a:	2b00      	cmp	r3, #0
d008425c:	d0ef      	beq.n	d008423e <_fflush_r+0xa>
d008425e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0084260:	07d0      	lsls	r0, r2, #31
d0084262:	d404      	bmi.n	d008426e <_fflush_r+0x3a>
d0084264:	0599      	lsls	r1, r3, #22
d0084266:	d402      	bmi.n	d008426e <_fflush_r+0x3a>
d0084268:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008426a:	f000 f915 	bl	d0084498 <__retarget_lock_acquire_recursive>
d008426e:	4628      	mov	r0, r5
d0084270:	4621      	mov	r1, r4
d0084272:	f7ff ff59 	bl	d0084128 <__sflush_r>
d0084276:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0084278:	07da      	lsls	r2, r3, #31
d008427a:	4605      	mov	r5, r0
d008427c:	d4e0      	bmi.n	d0084240 <_fflush_r+0xc>
d008427e:	89a3      	ldrh	r3, [r4, #12]
d0084280:	059b      	lsls	r3, r3, #22
d0084282:	d4dd      	bmi.n	d0084240 <_fflush_r+0xc>
d0084284:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0084286:	f000 f908 	bl	d008449a <__retarget_lock_release_recursive>
d008428a:	e7d9      	b.n	d0084240 <_fflush_r+0xc>
d008428c:	4b05      	ldr	r3, [pc, #20]	; (d00842a4 <_fflush_r+0x70>)
d008428e:	429c      	cmp	r4, r3
d0084290:	d101      	bne.n	d0084296 <_fflush_r+0x62>
d0084292:	68ac      	ldr	r4, [r5, #8]
d0084294:	e7df      	b.n	d0084256 <_fflush_r+0x22>
d0084296:	4b04      	ldr	r3, [pc, #16]	; (d00842a8 <_fflush_r+0x74>)
d0084298:	429c      	cmp	r4, r3
d008429a:	bf08      	it	eq
d008429c:	68ec      	ldreq	r4, [r5, #12]
d008429e:	e7da      	b.n	d0084256 <_fflush_r+0x22>
d00842a0:	d0084b30 	.word	0xd0084b30
d00842a4:	d0084b50 	.word	0xd0084b50
d00842a8:	d0084b10 	.word	0xd0084b10

d00842ac <std>:
d00842ac:	2300      	movs	r3, #0
d00842ae:	b510      	push	{r4, lr}
d00842b0:	4604      	mov	r4, r0
d00842b2:	e9c0 3300 	strd	r3, r3, [r0]
d00842b6:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00842ba:	6083      	str	r3, [r0, #8]
d00842bc:	8181      	strh	r1, [r0, #12]
d00842be:	6643      	str	r3, [r0, #100]	; 0x64
d00842c0:	81c2      	strh	r2, [r0, #14]
d00842c2:	6183      	str	r3, [r0, #24]
d00842c4:	4619      	mov	r1, r3
d00842c6:	2208      	movs	r2, #8
d00842c8:	305c      	adds	r0, #92	; 0x5c
d00842ca:	f7ff fd95 	bl	d0083df8 <memset>
d00842ce:	4b05      	ldr	r3, [pc, #20]	; (d00842e4 <std+0x38>)
d00842d0:	6263      	str	r3, [r4, #36]	; 0x24
d00842d2:	4b05      	ldr	r3, [pc, #20]	; (d00842e8 <std+0x3c>)
d00842d4:	62a3      	str	r3, [r4, #40]	; 0x28
d00842d6:	4b05      	ldr	r3, [pc, #20]	; (d00842ec <std+0x40>)
d00842d8:	62e3      	str	r3, [r4, #44]	; 0x2c
d00842da:	4b05      	ldr	r3, [pc, #20]	; (d00842f0 <std+0x44>)
d00842dc:	6224      	str	r4, [r4, #32]
d00842de:	6323      	str	r3, [r4, #48]	; 0x30
d00842e0:	bd10      	pop	{r4, pc}
d00842e2:	bf00      	nop
d00842e4:	d00844fd 	.word	0xd00844fd
d00842e8:	d008451f 	.word	0xd008451f
d00842ec:	d0084557 	.word	0xd0084557
d00842f0:	d008457b 	.word	0xd008457b

d00842f4 <_cleanup_r>:
d00842f4:	4901      	ldr	r1, [pc, #4]	; (d00842fc <_cleanup_r+0x8>)
d00842f6:	f000 b8af 	b.w	d0084458 <_fwalk_reent>
d00842fa:	bf00      	nop
d00842fc:	d0084235 	.word	0xd0084235

d0084300 <__sfmoreglue>:
d0084300:	b570      	push	{r4, r5, r6, lr}
d0084302:	1e4a      	subs	r2, r1, #1
d0084304:	2568      	movs	r5, #104	; 0x68
d0084306:	4355      	muls	r5, r2
d0084308:	460e      	mov	r6, r1
d008430a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d008430e:	f7ff fdcb 	bl	d0083ea8 <_malloc_r>
d0084312:	4604      	mov	r4, r0
d0084314:	b140      	cbz	r0, d0084328 <__sfmoreglue+0x28>
d0084316:	2100      	movs	r1, #0
d0084318:	e9c0 1600 	strd	r1, r6, [r0]
d008431c:	300c      	adds	r0, #12
d008431e:	60a0      	str	r0, [r4, #8]
d0084320:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0084324:	f7ff fd68 	bl	d0083df8 <memset>
d0084328:	4620      	mov	r0, r4
d008432a:	bd70      	pop	{r4, r5, r6, pc}

d008432c <__sfp_lock_acquire>:
d008432c:	4801      	ldr	r0, [pc, #4]	; (d0084334 <__sfp_lock_acquire+0x8>)
d008432e:	f000 b8b3 	b.w	d0084498 <__retarget_lock_acquire_recursive>
d0084332:	bf00      	nop
d0084334:	d00c69cc 	.word	0xd00c69cc

d0084338 <__sfp_lock_release>:
d0084338:	4801      	ldr	r0, [pc, #4]	; (d0084340 <__sfp_lock_release+0x8>)
d008433a:	f000 b8ae 	b.w	d008449a <__retarget_lock_release_recursive>
d008433e:	bf00      	nop
d0084340:	d00c69cc 	.word	0xd00c69cc

d0084344 <__sinit_lock_acquire>:
d0084344:	4801      	ldr	r0, [pc, #4]	; (d008434c <__sinit_lock_acquire+0x8>)
d0084346:	f000 b8a7 	b.w	d0084498 <__retarget_lock_acquire_recursive>
d008434a:	bf00      	nop
d008434c:	d00c69c7 	.word	0xd00c69c7

d0084350 <__sinit_lock_release>:
d0084350:	4801      	ldr	r0, [pc, #4]	; (d0084358 <__sinit_lock_release+0x8>)
d0084352:	f000 b8a2 	b.w	d008449a <__retarget_lock_release_recursive>
d0084356:	bf00      	nop
d0084358:	d00c69c7 	.word	0xd00c69c7

d008435c <__sinit>:
d008435c:	b510      	push	{r4, lr}
d008435e:	4604      	mov	r4, r0
d0084360:	f7ff fff0 	bl	d0084344 <__sinit_lock_acquire>
d0084364:	69a3      	ldr	r3, [r4, #24]
d0084366:	b11b      	cbz	r3, d0084370 <__sinit+0x14>
d0084368:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d008436c:	f7ff bff0 	b.w	d0084350 <__sinit_lock_release>
d0084370:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0084374:	6523      	str	r3, [r4, #80]	; 0x50
d0084376:	4b13      	ldr	r3, [pc, #76]	; (d00843c4 <__sinit+0x68>)
d0084378:	4a13      	ldr	r2, [pc, #76]	; (d00843c8 <__sinit+0x6c>)
d008437a:	681b      	ldr	r3, [r3, #0]
d008437c:	62a2      	str	r2, [r4, #40]	; 0x28
d008437e:	42a3      	cmp	r3, r4
d0084380:	bf04      	itt	eq
d0084382:	2301      	moveq	r3, #1
d0084384:	61a3      	streq	r3, [r4, #24]
d0084386:	4620      	mov	r0, r4
d0084388:	f000 f820 	bl	d00843cc <__sfp>
d008438c:	6060      	str	r0, [r4, #4]
d008438e:	4620      	mov	r0, r4
d0084390:	f000 f81c 	bl	d00843cc <__sfp>
d0084394:	60a0      	str	r0, [r4, #8]
d0084396:	4620      	mov	r0, r4
d0084398:	f000 f818 	bl	d00843cc <__sfp>
d008439c:	2200      	movs	r2, #0
d008439e:	60e0      	str	r0, [r4, #12]
d00843a0:	2104      	movs	r1, #4
d00843a2:	6860      	ldr	r0, [r4, #4]
d00843a4:	f7ff ff82 	bl	d00842ac <std>
d00843a8:	68a0      	ldr	r0, [r4, #8]
d00843aa:	2201      	movs	r2, #1
d00843ac:	2109      	movs	r1, #9
d00843ae:	f7ff ff7d 	bl	d00842ac <std>
d00843b2:	68e0      	ldr	r0, [r4, #12]
d00843b4:	2202      	movs	r2, #2
d00843b6:	2112      	movs	r1, #18
d00843b8:	f7ff ff78 	bl	d00842ac <std>
d00843bc:	2301      	movs	r3, #1
d00843be:	61a3      	str	r3, [r4, #24]
d00843c0:	e7d2      	b.n	d0084368 <__sinit+0xc>
d00843c2:	bf00      	nop
d00843c4:	d0084b0c 	.word	0xd0084b0c
d00843c8:	d00842f5 	.word	0xd00842f5

d00843cc <__sfp>:
d00843cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00843ce:	4607      	mov	r7, r0
d00843d0:	f7ff ffac 	bl	d008432c <__sfp_lock_acquire>
d00843d4:	4b1e      	ldr	r3, [pc, #120]	; (d0084450 <__sfp+0x84>)
d00843d6:	681e      	ldr	r6, [r3, #0]
d00843d8:	69b3      	ldr	r3, [r6, #24]
d00843da:	b913      	cbnz	r3, d00843e2 <__sfp+0x16>
d00843dc:	4630      	mov	r0, r6
d00843de:	f7ff ffbd 	bl	d008435c <__sinit>
d00843e2:	3648      	adds	r6, #72	; 0x48
d00843e4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00843e8:	3b01      	subs	r3, #1
d00843ea:	d503      	bpl.n	d00843f4 <__sfp+0x28>
d00843ec:	6833      	ldr	r3, [r6, #0]
d00843ee:	b30b      	cbz	r3, d0084434 <__sfp+0x68>
d00843f0:	6836      	ldr	r6, [r6, #0]
d00843f2:	e7f7      	b.n	d00843e4 <__sfp+0x18>
d00843f4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00843f8:	b9d5      	cbnz	r5, d0084430 <__sfp+0x64>
d00843fa:	4b16      	ldr	r3, [pc, #88]	; (d0084454 <__sfp+0x88>)
d00843fc:	60e3      	str	r3, [r4, #12]
d00843fe:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0084402:	6665      	str	r5, [r4, #100]	; 0x64
d0084404:	f000 f847 	bl	d0084496 <__retarget_lock_init_recursive>
d0084408:	f7ff ff96 	bl	d0084338 <__sfp_lock_release>
d008440c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0084410:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0084414:	6025      	str	r5, [r4, #0]
d0084416:	61a5      	str	r5, [r4, #24]
d0084418:	2208      	movs	r2, #8
d008441a:	4629      	mov	r1, r5
d008441c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0084420:	f7ff fcea 	bl	d0083df8 <memset>
d0084424:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0084428:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d008442c:	4620      	mov	r0, r4
d008442e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0084430:	3468      	adds	r4, #104	; 0x68
d0084432:	e7d9      	b.n	d00843e8 <__sfp+0x1c>
d0084434:	2104      	movs	r1, #4
d0084436:	4638      	mov	r0, r7
d0084438:	f7ff ff62 	bl	d0084300 <__sfmoreglue>
d008443c:	4604      	mov	r4, r0
d008443e:	6030      	str	r0, [r6, #0]
d0084440:	2800      	cmp	r0, #0
d0084442:	d1d5      	bne.n	d00843f0 <__sfp+0x24>
d0084444:	f7ff ff78 	bl	d0084338 <__sfp_lock_release>
d0084448:	230c      	movs	r3, #12
d008444a:	603b      	str	r3, [r7, #0]
d008444c:	e7ee      	b.n	d008442c <__sfp+0x60>
d008444e:	bf00      	nop
d0084450:	d0084b0c 	.word	0xd0084b0c
d0084454:	ffff0001 	.word	0xffff0001

d0084458 <_fwalk_reent>:
d0084458:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d008445c:	4606      	mov	r6, r0
d008445e:	4688      	mov	r8, r1
d0084460:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0084464:	2700      	movs	r7, #0
d0084466:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d008446a:	f1b9 0901 	subs.w	r9, r9, #1
d008446e:	d505      	bpl.n	d008447c <_fwalk_reent+0x24>
d0084470:	6824      	ldr	r4, [r4, #0]
d0084472:	2c00      	cmp	r4, #0
d0084474:	d1f7      	bne.n	d0084466 <_fwalk_reent+0xe>
d0084476:	4638      	mov	r0, r7
d0084478:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d008447c:	89ab      	ldrh	r3, [r5, #12]
d008447e:	2b01      	cmp	r3, #1
d0084480:	d907      	bls.n	d0084492 <_fwalk_reent+0x3a>
d0084482:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0084486:	3301      	adds	r3, #1
d0084488:	d003      	beq.n	d0084492 <_fwalk_reent+0x3a>
d008448a:	4629      	mov	r1, r5
d008448c:	4630      	mov	r0, r6
d008448e:	47c0      	blx	r8
d0084490:	4307      	orrs	r7, r0
d0084492:	3568      	adds	r5, #104	; 0x68
d0084494:	e7e9      	b.n	d008446a <_fwalk_reent+0x12>

d0084496 <__retarget_lock_init_recursive>:
d0084496:	4770      	bx	lr

d0084498 <__retarget_lock_acquire_recursive>:
d0084498:	4770      	bx	lr

d008449a <__retarget_lock_release_recursive>:
d008449a:	4770      	bx	lr

d008449c <__swhatbuf_r>:
d008449c:	b570      	push	{r4, r5, r6, lr}
d008449e:	460e      	mov	r6, r1
d00844a0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00844a4:	2900      	cmp	r1, #0
d00844a6:	b096      	sub	sp, #88	; 0x58
d00844a8:	4614      	mov	r4, r2
d00844aa:	461d      	mov	r5, r3
d00844ac:	da07      	bge.n	d00844be <__swhatbuf_r+0x22>
d00844ae:	2300      	movs	r3, #0
d00844b0:	602b      	str	r3, [r5, #0]
d00844b2:	89b3      	ldrh	r3, [r6, #12]
d00844b4:	061a      	lsls	r2, r3, #24
d00844b6:	d410      	bmi.n	d00844da <__swhatbuf_r+0x3e>
d00844b8:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00844bc:	e00e      	b.n	d00844dc <__swhatbuf_r+0x40>
d00844be:	466a      	mov	r2, sp
d00844c0:	f000 f870 	bl	d00845a4 <_fstat_r>
d00844c4:	2800      	cmp	r0, #0
d00844c6:	dbf2      	blt.n	d00844ae <__swhatbuf_r+0x12>
d00844c8:	9a01      	ldr	r2, [sp, #4]
d00844ca:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d00844ce:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d00844d2:	425a      	negs	r2, r3
d00844d4:	415a      	adcs	r2, r3
d00844d6:	602a      	str	r2, [r5, #0]
d00844d8:	e7ee      	b.n	d00844b8 <__swhatbuf_r+0x1c>
d00844da:	2340      	movs	r3, #64	; 0x40
d00844dc:	2000      	movs	r0, #0
d00844de:	6023      	str	r3, [r4, #0]
d00844e0:	b016      	add	sp, #88	; 0x58
d00844e2:	bd70      	pop	{r4, r5, r6, pc}

d00844e4 <__malloc_lock>:
d00844e4:	4801      	ldr	r0, [pc, #4]	; (d00844ec <__malloc_lock+0x8>)
d00844e6:	f7ff bfd7 	b.w	d0084498 <__retarget_lock_acquire_recursive>
d00844ea:	bf00      	nop
d00844ec:	d00c69c8 	.word	0xd00c69c8

d00844f0 <__malloc_unlock>:
d00844f0:	4801      	ldr	r0, [pc, #4]	; (d00844f8 <__malloc_unlock+0x8>)
d00844f2:	f7ff bfd2 	b.w	d008449a <__retarget_lock_release_recursive>
d00844f6:	bf00      	nop
d00844f8:	d00c69c8 	.word	0xd00c69c8

d00844fc <__sread>:
d00844fc:	b510      	push	{r4, lr}
d00844fe:	460c      	mov	r4, r1
d0084500:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0084504:	f000 f872 	bl	d00845ec <_read_r>
d0084508:	2800      	cmp	r0, #0
d008450a:	bfab      	itete	ge
d008450c:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d008450e:	89a3      	ldrhlt	r3, [r4, #12]
d0084510:	181b      	addge	r3, r3, r0
d0084512:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0084516:	bfac      	ite	ge
d0084518:	6563      	strge	r3, [r4, #84]	; 0x54
d008451a:	81a3      	strhlt	r3, [r4, #12]
d008451c:	bd10      	pop	{r4, pc}

d008451e <__swrite>:
d008451e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0084522:	461f      	mov	r7, r3
d0084524:	898b      	ldrh	r3, [r1, #12]
d0084526:	05db      	lsls	r3, r3, #23
d0084528:	4605      	mov	r5, r0
d008452a:	460c      	mov	r4, r1
d008452c:	4616      	mov	r6, r2
d008452e:	d505      	bpl.n	d008453c <__swrite+0x1e>
d0084530:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0084534:	2302      	movs	r3, #2
d0084536:	2200      	movs	r2, #0
d0084538:	f000 f846 	bl	d00845c8 <_lseek_r>
d008453c:	89a3      	ldrh	r3, [r4, #12]
d008453e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0084542:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0084546:	81a3      	strh	r3, [r4, #12]
d0084548:	4632      	mov	r2, r6
d008454a:	463b      	mov	r3, r7
d008454c:	4628      	mov	r0, r5
d008454e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0084552:	f7fb bd7f 	b.w	d0080054 <_write_r>

d0084556 <__sseek>:
d0084556:	b510      	push	{r4, lr}
d0084558:	460c      	mov	r4, r1
d008455a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008455e:	f000 f833 	bl	d00845c8 <_lseek_r>
d0084562:	1c43      	adds	r3, r0, #1
d0084564:	89a3      	ldrh	r3, [r4, #12]
d0084566:	bf15      	itete	ne
d0084568:	6560      	strne	r0, [r4, #84]	; 0x54
d008456a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d008456e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0084572:	81a3      	strheq	r3, [r4, #12]
d0084574:	bf18      	it	ne
d0084576:	81a3      	strhne	r3, [r4, #12]
d0084578:	bd10      	pop	{r4, pc}

d008457a <__sclose>:
d008457a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008457e:	f000 b801 	b.w	d0084584 <_close_r>
	...

d0084584 <_close_r>:
d0084584:	b538      	push	{r3, r4, r5, lr}
d0084586:	4d06      	ldr	r5, [pc, #24]	; (d00845a0 <_close_r+0x1c>)
d0084588:	2300      	movs	r3, #0
d008458a:	4604      	mov	r4, r0
d008458c:	4608      	mov	r0, r1
d008458e:	602b      	str	r3, [r5, #0]
d0084590:	f7fb fd9a 	bl	d00800c8 <_close>
d0084594:	1c43      	adds	r3, r0, #1
d0084596:	d102      	bne.n	d008459e <_close_r+0x1a>
d0084598:	682b      	ldr	r3, [r5, #0]
d008459a:	b103      	cbz	r3, d008459e <_close_r+0x1a>
d008459c:	6023      	str	r3, [r4, #0]
d008459e:	bd38      	pop	{r3, r4, r5, pc}
d00845a0:	d00c69d0 	.word	0xd00c69d0

d00845a4 <_fstat_r>:
d00845a4:	b538      	push	{r3, r4, r5, lr}
d00845a6:	4d07      	ldr	r5, [pc, #28]	; (d00845c4 <_fstat_r+0x20>)
d00845a8:	2300      	movs	r3, #0
d00845aa:	4604      	mov	r4, r0
d00845ac:	4608      	mov	r0, r1
d00845ae:	4611      	mov	r1, r2
d00845b0:	602b      	str	r3, [r5, #0]
d00845b2:	f7fb fd8d 	bl	d00800d0 <_fstat>
d00845b6:	1c43      	adds	r3, r0, #1
d00845b8:	d102      	bne.n	d00845c0 <_fstat_r+0x1c>
d00845ba:	682b      	ldr	r3, [r5, #0]
d00845bc:	b103      	cbz	r3, d00845c0 <_fstat_r+0x1c>
d00845be:	6023      	str	r3, [r4, #0]
d00845c0:	bd38      	pop	{r3, r4, r5, pc}
d00845c2:	bf00      	nop
d00845c4:	d00c69d0 	.word	0xd00c69d0

d00845c8 <_lseek_r>:
d00845c8:	b538      	push	{r3, r4, r5, lr}
d00845ca:	4d07      	ldr	r5, [pc, #28]	; (d00845e8 <_lseek_r+0x20>)
d00845cc:	4604      	mov	r4, r0
d00845ce:	4608      	mov	r0, r1
d00845d0:	4611      	mov	r1, r2
d00845d2:	2200      	movs	r2, #0
d00845d4:	602a      	str	r2, [r5, #0]
d00845d6:	461a      	mov	r2, r3
d00845d8:	f7fb fd80 	bl	d00800dc <_lseek>
d00845dc:	1c43      	adds	r3, r0, #1
d00845de:	d102      	bne.n	d00845e6 <_lseek_r+0x1e>
d00845e0:	682b      	ldr	r3, [r5, #0]
d00845e2:	b103      	cbz	r3, d00845e6 <_lseek_r+0x1e>
d00845e4:	6023      	str	r3, [r4, #0]
d00845e6:	bd38      	pop	{r3, r4, r5, pc}
d00845e8:	d00c69d0 	.word	0xd00c69d0

d00845ec <_read_r>:
d00845ec:	b538      	push	{r3, r4, r5, lr}
d00845ee:	4d07      	ldr	r5, [pc, #28]	; (d008460c <_read_r+0x20>)
d00845f0:	4604      	mov	r4, r0
d00845f2:	4608      	mov	r0, r1
d00845f4:	4611      	mov	r1, r2
d00845f6:	2200      	movs	r2, #0
d00845f8:	602a      	str	r2, [r5, #0]
d00845fa:	461a      	mov	r2, r3
d00845fc:	f7fb fd5a 	bl	d00800b4 <_read>
d0084600:	1c43      	adds	r3, r0, #1
d0084602:	d102      	bne.n	d008460a <_read_r+0x1e>
d0084604:	682b      	ldr	r3, [r5, #0]
d0084606:	b103      	cbz	r3, d008460a <_read_r+0x1e>
d0084608:	6023      	str	r3, [r4, #0]
d008460a:	bd38      	pop	{r3, r4, r5, pc}
d008460c:	d00c69d0 	.word	0xd00c69d0
d0084610:	00004141 	.word	0x00004141
d0084614:	00005949 	.word	0x00005949
d0084618:	00004845 	.word	0x00004845
d008461c:	00656874 	.word	0x00656874
d0084620:	00004844 	.word	0x00004844
d0084624:	00004841 	.word	0x00004841
d0084628:	73696874 	.word	0x73696874
d008462c:	00000000 	.word	0x00000000
d0084630:	00004849 	.word	0x00004849
d0084634:	00000053 	.word	0x00000053
d0084638:	74616874 	.word	0x74616874
d008463c:	00000000 	.word	0x00000000
d0084640:	00004541 	.word	0x00004541
d0084644:	00000054 	.word	0x00000054
d0084648:	72656874 	.word	0x72656874
d008464c:	00000065 	.word	0x00000065
d0084650:	69656874 	.word	0x69656874
d0084654:	00000072 	.word	0x00000072
d0084658:	00000052 	.word	0x00000052
d008465c:	00756f79 	.word	0x00756f79
d0084660:	00000059 	.word	0x00000059
d0084664:	00005755 	.word	0x00005755
d0084668:	72756f79 	.word	0x72756f79
d008466c:	00000000 	.word	0x00000000
d0084670:	00005245 	.word	0x00005245
d0084674:	00006f74 	.word	0x00006f74
d0084678:	006f6f74 	.word	0x006f6f74
d008467c:	006f7774 	.word	0x006f7774
d0084680:	0000666f 	.word	0x0000666f
d0084684:	00000056 	.word	0x00000056
d0084688:	00007369 	.word	0x00007369
d008468c:	0000005a 	.word	0x0000005a
d0084690:	00657261 	.word	0x00657261
d0084694:	00646e61 	.word	0x00646e61
d0084698:	0000004e 	.word	0x0000004e
d008469c:	00000044 	.word	0x00000044
d00846a0:	6c6c6568 	.word	0x6c6c6568
d00846a4:	0000006f 	.word	0x0000006f
d00846a8:	00000048 	.word	0x00000048
d00846ac:	0000004c 	.word	0x0000004c
d00846b0:	00004f41 	.word	0x00004f41
d00846b4:	67696d61 	.word	0x67696d61
d00846b8:	00000061 	.word	0x00000061
d00846bc:	0000004d 	.word	0x0000004d
d00846c0:	00000047 	.word	0x00000047
d00846c4:	7272616e 	.word	0x7272616e
d00846c8:	726f7461 	.word	0x726f7461
d00846cc:	00000000 	.word	0x00000000
d00846d0:	6f737065 	.word	0x6f737065
d00846d4:	0000006e 	.word	0x0000006e
d00846d8:	00000050 	.word	0x00000050
d00846dc:	70657473 	.word	0x70657473
d00846e0:	006e6568 	.word	0x006e6568
d00846e4:	76657473 	.word	0x76657473
d00846e8:	00000065 	.word	0x00000065
d00846ec:	6b776168 	.word	0x6b776168
d00846f0:	00676e69 	.word	0x00676e69
d00846f4:	6b776168 	.word	0x6b776168
d00846f8:	00736e69 	.word	0x00736e69
d00846fc:	0000004b 	.word	0x0000004b
d0084700:	0000474e 	.word	0x0000474e
d0084704:	00686374 	.word	0x00686374
d0084708:	00004843 	.word	0x00004843
d008470c:	00006863 	.word	0x00006863
d0084710:	00006873 	.word	0x00006873
d0084714:	00004853 	.word	0x00004853
d0084718:	00006874 	.word	0x00006874
d008471c:	00004854 	.word	0x00004854
d0084720:	00006870 	.word	0x00006870
d0084724:	00000046 	.word	0x00000046
d0084728:	00006877 	.word	0x00006877
d008472c:	00000057 	.word	0x00000057
d0084730:	00007277 	.word	0x00007277
d0084734:	0000676e 	.word	0x0000676e
d0084738:	00006b63 	.word	0x00006b63
d008473c:	00007571 	.word	0x00007571
d0084740:	00006961 	.word	0x00006961
d0084744:	00007961 	.word	0x00007961
d0084748:	00007561 	.word	0x00007561
d008474c:	00007761 	.word	0x00007761
d0084750:	00006565 	.word	0x00006565
d0084754:	00006165 	.word	0x00006165
d0084758:	00007265 	.word	0x00007265
d008475c:	00007269 	.word	0x00007269
d0084760:	00006f6f 	.word	0x00006f6f
d0084764:	0000756f 	.word	0x0000756f
d0084768:	0000776f 	.word	0x0000776f
d008476c:	0000696f 	.word	0x0000696f
d0084770:	0000796f 	.word	0x0000796f
d0084774:	0000726f 	.word	0x0000726f
d0084778:	00007275 	.word	0x00007275
d008477c:	0000005f 	.word	0x0000005f
d0084780:	00006e6b 	.word	0x00006e6b
d0084784:	00004855 	.word	0x00004855
d0084788:	00000042 	.word	0x00000042
d008478c:	0000004a 	.word	0x0000004a
d0084790:	0000485a 	.word	0x0000485a

d0084794 <g_specs>:
d0084794:	d008477c 00000000 00000000 00000000     |G..............
d00847a4:	00000046 d0084624 04a60280 50dc0956     F...$F......V..P
d00847b4:	00010023 00000078 d0084640 06b80294     #...x...@F......
d00847c4:	64e6096a 0001002d 00000082 d0084610     j..d-........F..
d00847d4:	044202da 52e60988 00010023 0000008c     ..B....R#.......
d00847e4:	d00846b0 0348023a 5cdc096a 00010023     .F..:.H.j..\#...
d00847f4:	00000087 d0084618 07300212 69dc09b0     .....F....0....i
d0084804:	0001002d 0000007d d0084670 054601ea     -...}...pF....F.
d0084814:	64d2069a 00010041 00000087 d0084630     ...dA.......0F..
d0084824:	07c60186 69d209f6 00010030 0000006e     .......i0...n...
d0084834:	d0084614 08f2010e 6ecd0bc2 00010037     .F.........n7...
d0084844:	00000082 d0084784 03fc01b8 50d708c0     .....G.........P
d0084854:	00010023 0000006e d0084664 0366012c     #...n...dF..,.f.
d0084864:	50dc08c0 00010028 00000087 d0084788     ...P(........G..
d0084874:	044c010e 237d0866 00032d14 0000003e     ..L.f.}#.-..>...
d0084884:	d0084708 076c0168 46320a8c 00026950     .G..h.l...2FPi..
d0084894:	00000058 d008469c 06a40140 2d780a28     X....F..@...(.x-
d00848a4:	00032819 0000003a d0084620 05aa0168     .(..:... F..h...
d00848b4:	286e09c4 00014614 00000044 d0084724     ..n(.F..D...$G..
d00848c4:	0514012c 19000a28 00004e28 00000048     ,...(...(N..H...
d00848d4:	d00846c0 0578012c 287d0960 00032d14     .F..,.x.`.}(.-..
d00848e4:	00000046 d00846a8 05dc0208 26370a28     F....F......(.7&
d00848f4:	00014619 00000037 d008478c 06a40168     .F..7....G..h...
d0084904:	46500a8c 00034837 00000055 d00846fc     ..PF7H..U....F..
d0084914:	06a4012c 2d000af0 00025c37 00000046     ,......-7\..F...
d0084924:	d00846ac 09600190 50b40bb8 0001002a     .F....`....P*...
d0084934:	0000004e d00846bc 04b000fa 2ab90898     N....F.........*
d0084944:	00010016 00000052 d0084698 06a400fa     ....R....F......
d0084954:	37b40a28 0001001c 0000004b d0084700     (..7....K....G..
d0084964:	07d000fa 3ab40abe 0001001e 0000005a     .......:....Z...
d0084974:	d00846d8 04b0012c 23000a28 00025628     .F..,...(..#(V..
d0084984:	0000003e d0084658 0514012c 64be0640     >...XF..,...@..d
d0084994:	0001004b 00000058 d0084634 0c800140     K...X...4F..@...
d00849a4:	2d001068 00005855 00000052 d0084714     h..-UX..R....G..
d00849b4:	08340140 41000bb8 00005c46 00000058     @.4....AF\..X...
d00849c4:	d0084644 06a40140 2d000b54 00025a3a     DF..@...T..-:Z..
d00849d4:	0000003a d008471c 05aa0168 1e000a28     :....G..h...(...
d00849e4:	00004832 0000004a d0084684 0514012c     2H..J....F..,...
d00849f4:	1e640a28 00014b19 00000048 d008472c     (.d..K..H...,G..
d0084a04:	02f8012c 4bc30898 00010023 00000052     ,......K#...R...
d0084a14:	d0084660 08980118 69a50bb8 00010032     `F.........i2...
d0084a24:	00000046 d008468c 0bb80140 2d5a1004     F....F..@.....Z-
d0084a34:	0001464b 00000052 d0084790 08340140     KF..R....G..@.4.
d0084a44:	41500bb8 00014446 00000056 6c6c6548     ..PAFD..V...Hell
d0084a54:	49202e6f 206d6120 70732061 68636565     o. I am a speech
d0084a64:	6e797320 73656874 72657a69 726f6620      synthesizer for
d0084a74:	64695320 2e786f62 206f4e20 706d6173      Sidbox. No samp
d0084a84:	2e73656c 73754a20 68702074 6d656e6f     les. Just phonem
d0084a94:	202c7365 6d726f66 73746e61 6e61202c     es, formants, an
d0084aa4:	75712064 69747365 62616e6f 6520656c     d questionable e
d0084ab4:	74686769 20736569 72616863 00002e6d     ighties charm...
d0084ac4:	45455053 53204843 48544e59 00000000     SPEECH SYNTH....
d0084ad4:	6d726f46 20746e61 65657073 202c6863     Formant speech, 
d0084ae4:	656e6567 65746172 696c2064 002e6576     generated live..
d0084af4:	73657250 49462073 74204552 6572206f     Press FIRE to re
d0084b04:	79616c70 0000002e                       play....

d0084b0c <_global_impure_ptr>:
d0084b0c:	d0084b88                                .K..

d0084b10 <__sf_fake_stderr>:
	...

d0084b30 <__sf_fake_stdin>:
	...

d0084b50 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0084b70 <_init>:
d0084b70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0084b72:	bf00      	nop

Disassembly of section .fini:

d0084b74 <_fini>:
d0084b74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0084b76:	bf00      	nop
