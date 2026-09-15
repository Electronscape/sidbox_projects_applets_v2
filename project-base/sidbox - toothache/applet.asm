
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
d008001e:	f001 f9c5 	bl	d00813ac <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 f9c0 	bl	d00813ac <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b96a 	b.w	d008030c <main>
d0080038:	d009b5f0 	.word	0xd009b5f0

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 f87d 	bl	d008114c <malloc>
d0080052:	6020      	str	r0, [r4, #0]
d0080054:	bd10      	pop	{r4, pc}
d0080056:	bf00      	nop

d0080058 <gfx_draw1bit>:
d0080058:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d008005c:	b087      	sub	sp, #28
d008005e:	9d10      	ldr	r5, [sp, #64]	; 0x40
d0080060:	f89d 6044 	ldrb.w	r6, [sp, #68]	; 0x44
d0080064:	f8dd 9048 	ldr.w	r9, [sp, #72]	; 0x48
d0080068:	2b00      	cmp	r3, #0
d008006a:	f000 80d7 	beq.w	d008021c <gfx_draw1bit+0x1c4>
d008006e:	4682      	mov	sl, r0
d0080070:	b288      	uxth	r0, r1
d0080072:	b212      	sxth	r2, r2
d0080074:	f240 143f 	movw	r4, #319	; 0x13f
d0080078:	f10a 0106 	add.w	r1, sl, #6
d008007c:	4403      	add	r3, r0
d008007e:	f44f 77a0 	mov.w	r7, #320	; 0x140
d0080082:	b29b      	uxth	r3, r3
d0080084:	9103      	str	r1, [sp, #12]
d0080086:	f10a 0107 	add.w	r1, sl, #7
d008008a:	9305      	str	r3, [sp, #20]
d008008c:	9104      	str	r1, [sp, #16]
d008008e:	f10a 0104 	add.w	r1, sl, #4
d0080092:	2300      	movs	r3, #0
d0080094:	f10a 0c01 	add.w	ip, sl, #1
d0080098:	f10a 0e02 	add.w	lr, sl, #2
d008009c:	9101      	str	r1, [sp, #4]
d008009e:	f10a 0105 	add.w	r1, sl, #5
d00800a2:	f10a 0803 	add.w	r8, sl, #3
d00800a6:	9510      	str	r5, [sp, #64]	; 0x40
d00800a8:	9102      	str	r1, [sp, #8]
d00800aa:	e0a9      	b.n	d0080200 <gfx_draw1bit+0x1a8>
d00800ac:	07cd      	lsls	r5, r1, #31
d00800ae:	d50c      	bpl.n	d00800ca <gfx_draw1bit+0x72>
d00800b0:	eb0a 0b03 	add.w	fp, sl, r3
d00800b4:	42a0      	cmp	r0, r4
d00800b6:	fa0f fb8b 	sxth.w	fp, fp
d00800ba:	d806      	bhi.n	d00800ca <gfx_draw1bit+0x72>
d00800bc:	f1bb 0f00 	cmp.w	fp, #0
d00800c0:	db03      	blt.n	d00800ca <gfx_draw1bit+0x72>
d00800c2:	fb1b 0b07 	smlabb	fp, fp, r7, r0
d00800c6:	f809 600b 	strb.w	r6, [r9, fp]
d00800ca:	b29b      	uxth	r3, r3
d00800cc:	f103 0b01 	add.w	fp, r3, #1
d00800d0:	fa0f fb8b 	sxth.w	fp, fp
d00800d4:	455a      	cmp	r2, fp
d00800d6:	f340 809a 	ble.w	d008020e <gfx_draw1bit+0x1b6>
d00800da:	078d      	lsls	r5, r1, #30
d00800dc:	d50c      	bpl.n	d00800f8 <gfx_draw1bit+0xa0>
d00800de:	eb03 0b0c 	add.w	fp, r3, ip
d00800e2:	42a0      	cmp	r0, r4
d00800e4:	fa0f fb8b 	sxth.w	fp, fp
d00800e8:	d806      	bhi.n	d00800f8 <gfx_draw1bit+0xa0>
d00800ea:	f1bb 0f00 	cmp.w	fp, #0
d00800ee:	db03      	blt.n	d00800f8 <gfx_draw1bit+0xa0>
d00800f0:	fb1b 0b07 	smlabb	fp, fp, r7, r0
d00800f4:	f809 600b 	strb.w	r6, [r9, fp]
d00800f8:	f103 0b02 	add.w	fp, r3, #2
d00800fc:	fa0f fb8b 	sxth.w	fp, fp
d0080100:	455a      	cmp	r2, fp
d0080102:	f340 8084 	ble.w	d008020e <gfx_draw1bit+0x1b6>
d0080106:	074d      	lsls	r5, r1, #29
d0080108:	d50c      	bpl.n	d0080124 <gfx_draw1bit+0xcc>
d008010a:	eb03 0b0e 	add.w	fp, r3, lr
d008010e:	42a0      	cmp	r0, r4
d0080110:	fa0f fb8b 	sxth.w	fp, fp
d0080114:	d806      	bhi.n	d0080124 <gfx_draw1bit+0xcc>
d0080116:	f1bb 0f00 	cmp.w	fp, #0
d008011a:	db03      	blt.n	d0080124 <gfx_draw1bit+0xcc>
d008011c:	fb1b 0b07 	smlabb	fp, fp, r7, r0
d0080120:	f809 600b 	strb.w	r6, [r9, fp]
d0080124:	f103 0b03 	add.w	fp, r3, #3
d0080128:	fa0f fb8b 	sxth.w	fp, fp
d008012c:	4593      	cmp	fp, r2
d008012e:	da6e      	bge.n	d008020e <gfx_draw1bit+0x1b6>
d0080130:	070d      	lsls	r5, r1, #28
d0080132:	d50c      	bpl.n	d008014e <gfx_draw1bit+0xf6>
d0080134:	eb03 0b08 	add.w	fp, r3, r8
d0080138:	42a0      	cmp	r0, r4
d008013a:	fa0f fb8b 	sxth.w	fp, fp
d008013e:	d806      	bhi.n	d008014e <gfx_draw1bit+0xf6>
d0080140:	f1bb 0f00 	cmp.w	fp, #0
d0080144:	db03      	blt.n	d008014e <gfx_draw1bit+0xf6>
d0080146:	fb1b 0b07 	smlabb	fp, fp, r7, r0
d008014a:	f809 600b 	strb.w	r6, [r9, fp]
d008014e:	f103 0b04 	add.w	fp, r3, #4
d0080152:	fa0f fb8b 	sxth.w	fp, fp
d0080156:	455a      	cmp	r2, fp
d0080158:	dd59      	ble.n	d008020e <gfx_draw1bit+0x1b6>
d008015a:	06cd      	lsls	r5, r1, #27
d008015c:	d50d      	bpl.n	d008017a <gfx_draw1bit+0x122>
d008015e:	9d01      	ldr	r5, [sp, #4]
d0080160:	42a0      	cmp	r0, r4
d0080162:	eb03 0b05 	add.w	fp, r3, r5
d0080166:	fa0f fb8b 	sxth.w	fp, fp
d008016a:	d806      	bhi.n	d008017a <gfx_draw1bit+0x122>
d008016c:	f1bb 0f00 	cmp.w	fp, #0
d0080170:	db03      	blt.n	d008017a <gfx_draw1bit+0x122>
d0080172:	fb1b 0b07 	smlabb	fp, fp, r7, r0
d0080176:	f809 600b 	strb.w	r6, [r9, fp]
d008017a:	f103 0b05 	add.w	fp, r3, #5
d008017e:	fa0f fb8b 	sxth.w	fp, fp
d0080182:	455a      	cmp	r2, fp
d0080184:	dd43      	ble.n	d008020e <gfx_draw1bit+0x1b6>
d0080186:	068d      	lsls	r5, r1, #26
d0080188:	d50d      	bpl.n	d00801a6 <gfx_draw1bit+0x14e>
d008018a:	9d02      	ldr	r5, [sp, #8]
d008018c:	42a0      	cmp	r0, r4
d008018e:	eb03 0b05 	add.w	fp, r3, r5
d0080192:	fa0f fb8b 	sxth.w	fp, fp
d0080196:	d806      	bhi.n	d00801a6 <gfx_draw1bit+0x14e>
d0080198:	f1bb 0f00 	cmp.w	fp, #0
d008019c:	db03      	blt.n	d00801a6 <gfx_draw1bit+0x14e>
d008019e:	fb1b 0b07 	smlabb	fp, fp, r7, r0
d00801a2:	f809 600b 	strb.w	r6, [r9, fp]
d00801a6:	f103 0b06 	add.w	fp, r3, #6
d00801aa:	fa0f fb8b 	sxth.w	fp, fp
d00801ae:	4593      	cmp	fp, r2
d00801b0:	da2d      	bge.n	d008020e <gfx_draw1bit+0x1b6>
d00801b2:	064d      	lsls	r5, r1, #25
d00801b4:	d50d      	bpl.n	d00801d2 <gfx_draw1bit+0x17a>
d00801b6:	9d03      	ldr	r5, [sp, #12]
d00801b8:	42a0      	cmp	r0, r4
d00801ba:	eb03 0b05 	add.w	fp, r3, r5
d00801be:	fa0f fb8b 	sxth.w	fp, fp
d00801c2:	d806      	bhi.n	d00801d2 <gfx_draw1bit+0x17a>
d00801c4:	f1bb 0f00 	cmp.w	fp, #0
d00801c8:	db03      	blt.n	d00801d2 <gfx_draw1bit+0x17a>
d00801ca:	fb1b 0b07 	smlabb	fp, fp, r7, r0
d00801ce:	f809 600b 	strb.w	r6, [r9, fp]
d00801d2:	f103 0b07 	add.w	fp, r3, #7
d00801d6:	fa0f fb8b 	sxth.w	fp, fp
d00801da:	455a      	cmp	r2, fp
d00801dc:	dd17      	ble.n	d008020e <gfx_draw1bit+0x1b6>
d00801de:	0609      	lsls	r1, r1, #24
d00801e0:	d50a      	bpl.n	d00801f8 <gfx_draw1bit+0x1a0>
d00801e2:	9904      	ldr	r1, [sp, #16]
d00801e4:	42a0      	cmp	r0, r4
d00801e6:	4419      	add	r1, r3
d00801e8:	b209      	sxth	r1, r1
d00801ea:	d805      	bhi.n	d00801f8 <gfx_draw1bit+0x1a0>
d00801ec:	2900      	cmp	r1, #0
d00801ee:	db03      	blt.n	d00801f8 <gfx_draw1bit+0x1a0>
d00801f0:	fb11 0107 	smlabb	r1, r1, r7, r0
d00801f4:	f809 6001 	strb.w	r6, [r9, r1]
d00801f8:	3308      	adds	r3, #8
d00801fa:	b21b      	sxth	r3, r3
d00801fc:	429a      	cmp	r2, r3
d00801fe:	dd06      	ble.n	d008020e <gfx_draw1bit+0x1b6>
d0080200:	9d10      	ldr	r5, [sp, #64]	; 0x40
d0080202:	4293      	cmp	r3, r2
d0080204:	f815 1b01 	ldrb.w	r1, [r5], #1
d0080208:	9510      	str	r5, [sp, #64]	; 0x40
d008020a:	f6ff af4f 	blt.w	d00800ac <gfx_draw1bit+0x54>
d008020e:	3001      	adds	r0, #1
d0080210:	9b05      	ldr	r3, [sp, #20]
d0080212:	9d10      	ldr	r5, [sp, #64]	; 0x40
d0080214:	b280      	uxth	r0, r0
d0080216:	4298      	cmp	r0, r3
d0080218:	f47f af39 	bne.w	d008008e <gfx_draw1bit+0x36>
d008021c:	b007      	add	sp, #28
d008021e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080222:	bf00      	nop

d0080224 <initMalloc>:
d0080224:	4902      	ldr	r1, [pc, #8]	; (d0080230 <initMalloc+0xc>)
d0080226:	4b03      	ldr	r3, [pc, #12]	; (d0080234 <initMalloc+0x10>)
d0080228:	4a03      	ldr	r2, [pc, #12]	; (d0080238 <initMalloc+0x14>)
d008022a:	1a5b      	subs	r3, r3, r1
d008022c:	6013      	str	r3, [r2, #0]
d008022e:	4770      	bx	lr
d0080230:	d009d998 	.word	0xd009d998
d0080234:	d0600000 	.word	0xd0600000
d0080238:	d009b8dc 	.word	0xd009b8dc

d008023c <_write_r>:
d008023c:	3901      	subs	r1, #1
d008023e:	2901      	cmp	r1, #1
d0080240:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0080242:	d81f      	bhi.n	d0080284 <_write_r+0x48>
d0080244:	b1e2      	cbz	r2, d0080280 <_write_r+0x44>
d0080246:	461c      	mov	r4, r3
d0080248:	b1d3      	cbz	r3, d0080280 <_write_r+0x44>
d008024a:	4d12      	ldr	r5, [pc, #72]	; (d0080294 <_write_r+0x58>)
d008024c:	682e      	ldr	r6, [r5, #0]
d008024e:	b9ae      	cbnz	r6, d008027c <_write_r+0x40>
d0080250:	4f11      	ldr	r7, [pc, #68]	; (d0080298 <_write_r+0x5c>)
d0080252:	2301      	movs	r3, #1
d0080254:	4611      	mov	r1, r2
d0080256:	4630      	mov	r0, r6
d0080258:	602b      	str	r3, [r5, #0]
d008025a:	4622      	mov	r2, r4
d008025c:	7a3b      	ldrb	r3, [r7, #8]
d008025e:	f897 c009 	ldrb.w	ip, [r7, #9]
d0080262:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0080266:	f897 c00a 	ldrb.w	ip, [r7, #10]
d008026a:	7aff      	ldrb	r7, [r7, #11]
d008026c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0080270:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0080274:	681b      	ldr	r3, [r3, #0]
d0080276:	685b      	ldr	r3, [r3, #4]
d0080278:	4798      	blx	r3
d008027a:	602e      	str	r6, [r5, #0]
d008027c:	4620      	mov	r0, r4
d008027e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080280:	2000      	movs	r0, #0
d0080282:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080284:	f000 ff5c 	bl	d0081140 <__errno>
d0080288:	2209      	movs	r2, #9
d008028a:	4603      	mov	r3, r0
d008028c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0080290:	601a      	str	r2, [r3, #0]
d0080292:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080294:	d009b664 	.word	0xd009b664
d0080298:	2001f000 	.word	0x2001f000

d008029c <_read>:
d008029c:	b508      	push	{r3, lr}
d008029e:	f000 ff4f 	bl	d0081140 <__errno>
d00802a2:	2258      	movs	r2, #88	; 0x58
d00802a4:	4603      	mov	r3, r0
d00802a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00802aa:	601a      	str	r2, [r3, #0]
d00802ac:	bd08      	pop	{r3, pc}
d00802ae:	bf00      	nop

d00802b0 <_close>:
d00802b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00802b4:	4770      	bx	lr
d00802b6:	bf00      	nop

d00802b8 <_fstat>:
d00802b8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00802bc:	2000      	movs	r0, #0
d00802be:	604b      	str	r3, [r1, #4]
d00802c0:	4770      	bx	lr
d00802c2:	bf00      	nop

d00802c4 <_lseek>:
d00802c4:	2000      	movs	r0, #0
d00802c6:	4770      	bx	lr

d00802c8 <_sbrk_r>:
d00802c8:	4b0c      	ldr	r3, [pc, #48]	; (d00802fc <_sbrk_r+0x34>)
d00802ca:	4a0d      	ldr	r2, [pc, #52]	; (d0080300 <_sbrk_r+0x38>)
d00802cc:	6818      	ldr	r0, [r3, #0]
d00802ce:	b510      	push	{r4, lr}
d00802d0:	b918      	cbnz	r0, d00802da <_sbrk_r+0x12>
d00802d2:	1dd0      	adds	r0, r2, #7
d00802d4:	f020 0007 	bic.w	r0, r0, #7
d00802d8:	6018      	str	r0, [r3, #0]
d00802da:	4401      	add	r1, r0
d00802dc:	4c09      	ldr	r4, [pc, #36]	; (d0080304 <_sbrk_r+0x3c>)
d00802de:	42a1      	cmp	r1, r4
d00802e0:	d803      	bhi.n	d00802ea <_sbrk_r+0x22>
d00802e2:	4291      	cmp	r1, r2
d00802e4:	d301      	bcc.n	d00802ea <_sbrk_r+0x22>
d00802e6:	6019      	str	r1, [r3, #0]
d00802e8:	bd10      	pop	{r4, pc}
d00802ea:	f000 ff29 	bl	d0081140 <__errno>
d00802ee:	220c      	movs	r2, #12
d00802f0:	4603      	mov	r3, r0
d00802f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00802f6:	601a      	str	r2, [r3, #0]
d00802f8:	bd10      	pop	{r4, pc}
d00802fa:	bf00      	nop
d00802fc:	d009b660 	.word	0xd009b660
d0080300:	d009d998 	.word	0xd009d998
d0080304:	d0600000 	.word	0xd0600000

d0080308 <_isatty>:
d0080308:	2001      	movs	r0, #1
d008030a:	4770      	bx	lr

d008030c <main>:
d008030c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080310:	4c90      	ldr	r4, [pc, #576]	; (d0080554 <main+0x248>)
d0080312:	b085      	sub	sp, #20
d0080314:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d0080318:	2602      	movs	r6, #2
d008031a:	7823      	ldrb	r3, [r4, #0]
d008031c:	7862      	ldrb	r2, [r4, #1]
d008031e:	78a1      	ldrb	r1, [r4, #2]
d0080320:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080324:	78e2      	ldrb	r2, [r4, #3]
d0080326:	4f8c      	ldr	r7, [pc, #560]	; (d0080558 <main+0x24c>)
d0080328:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008032c:	f8df b244 	ldr.w	fp, [pc, #580]	; d0080574 <main+0x268>
d0080330:	f8df 9244 	ldr.w	r9, [pc, #580]	; d0080578 <main+0x26c>
d0080334:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080338:	681b      	ldr	r3, [r3, #0]
d008033a:	4798      	blx	r3
d008033c:	f7ff ff72 	bl	d0080224 <initMalloc>
d0080340:	7b23      	ldrb	r3, [r4, #12]
d0080342:	7b62      	ldrb	r2, [r4, #13]
d0080344:	2190      	movs	r1, #144	; 0x90
d0080346:	7ba5      	ldrb	r5, [r4, #14]
d0080348:	20dc      	movs	r0, #220	; 0xdc
d008034a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008034e:	7be2      	ldrb	r2, [r4, #15]
d0080350:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0080354:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080358:	681b      	ldr	r3, [r3, #0]
d008035a:	691b      	ldr	r3, [r3, #16]
d008035c:	4798      	blx	r3
d008035e:	7b20      	ldrb	r0, [r4, #12]
d0080360:	7b61      	ldrb	r1, [r4, #13]
d0080362:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080366:	7ba2      	ldrb	r2, [r4, #14]
d0080368:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d008036c:	7be1      	ldrb	r1, [r4, #15]
d008036e:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
d0080372:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080376:	ea40 6001 	orr.w	r0, r0, r1, lsl #24
d008037a:	4619      	mov	r1, r3
d008037c:	6805      	ldr	r5, [r0, #0]
d008037e:	4610      	mov	r0, r2
d0080380:	9600      	str	r6, [sp, #0]
d0080382:	696d      	ldr	r5, [r5, #20]
d0080384:	47a8      	blx	r5
d0080386:	7b23      	ldrb	r3, [r4, #12]
d0080388:	7b62      	ldrb	r2, [r4, #13]
d008038a:	7ba1      	ldrb	r1, [r4, #14]
d008038c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080390:	7be2      	ldrb	r2, [r4, #15]
d0080392:	4d72      	ldr	r5, [pc, #456]	; (d008055c <main+0x250>)
d0080394:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080398:	4e71      	ldr	r6, [pc, #452]	; (d0080560 <main+0x254>)
d008039a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008039e:	681b      	ldr	r3, [r3, #0]
d00803a0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00803a2:	4798      	blx	r3
d00803a4:	7b23      	ldrb	r3, [r4, #12]
d00803a6:	7b62      	ldrb	r2, [r4, #13]
d00803a8:	7ba1      	ldrb	r1, [r4, #14]
d00803aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00803ae:	7be2      	ldrb	r2, [r4, #15]
d00803b0:	6028      	str	r0, [r5, #0]
d00803b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00803b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00803ba:	681b      	ldr	r3, [r3, #0]
d00803bc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d00803be:	4798      	blx	r3
d00803c0:	7b23      	ldrb	r3, [r4, #12]
d00803c2:	7b62      	ldrb	r2, [r4, #13]
d00803c4:	7ba1      	ldrb	r1, [r4, #14]
d00803c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00803ca:	7be2      	ldrb	r2, [r4, #15]
d00803cc:	6038      	str	r0, [r7, #0]
d00803ce:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00803d2:	4864      	ldr	r0, [pc, #400]	; (d0080564 <main+0x258>)
d00803d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00803d8:	681b      	ldr	r3, [r3, #0]
d00803da:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d00803dc:	4798      	blx	r3
d00803de:	7b23      	ldrb	r3, [r4, #12]
d00803e0:	7b62      	ldrb	r2, [r4, #13]
d00803e2:	7ba1      	ldrb	r1, [r4, #14]
d00803e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00803e8:	7be2      	ldrb	r2, [r4, #15]
d00803ea:	485f      	ldr	r0, [pc, #380]	; (d0080568 <main+0x25c>)
d00803ec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00803f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00803f4:	681b      	ldr	r3, [r3, #0]
d00803f6:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00803f8:	4798      	blx	r3
d00803fa:	7e23      	ldrb	r3, [r4, #24]
d00803fc:	7e62      	ldrb	r2, [r4, #25]
d00803fe:	7ea1      	ldrb	r1, [r4, #26]
d0080400:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080404:	7ee2      	ldrb	r2, [r4, #27]
d0080406:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008040a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008040e:	681b      	ldr	r3, [r3, #0]
d0080410:	4798      	blx	r3
d0080412:	7b23      	ldrb	r3, [r4, #12]
d0080414:	7b62      	ldrb	r2, [r4, #13]
d0080416:	7ba1      	ldrb	r1, [r4, #14]
d0080418:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008041c:	7be2      	ldrb	r2, [r4, #15]
d008041e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080422:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080426:	681b      	ldr	r3, [r3, #0]
d0080428:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d008042a:	4798      	blx	r3
d008042c:	7b23      	ldrb	r3, [r4, #12]
d008042e:	7b62      	ldrb	r2, [r4, #13]
d0080430:	2157      	movs	r1, #87	; 0x57
d0080432:	2050      	movs	r0, #80	; 0x50
d0080434:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080438:	7ba2      	ldrb	r2, [r4, #14]
d008043a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008043e:	7be2      	ldrb	r2, [r4, #15]
d0080440:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080444:	681b      	ldr	r3, [r3, #0]
d0080446:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d0080448:	4798      	blx	r3
d008044a:	7b23      	ldrb	r3, [r4, #12]
d008044c:	7b62      	ldrb	r2, [r4, #13]
d008044e:	2004      	movs	r0, #4
d0080450:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080454:	7ba2      	ldrb	r2, [r4, #14]
d0080456:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008045a:	7be2      	ldrb	r2, [r4, #15]
d008045c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080460:	681b      	ldr	r3, [r3, #0]
d0080462:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d0080464:	4798      	blx	r3
d0080466:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d008046a:	f44f 72a0 	mov.w	r2, #320	; 0x140
d008046e:	483f      	ldr	r0, [pc, #252]	; (d008056c <main+0x260>)
d0080470:	f7ff fde4 	bl	d008003c <gfx_createBitmap>
d0080474:	f000 fa78 	bl	d0080968 <setup_background_bub>
d0080478:	7b23      	ldrb	r3, [r4, #12]
d008047a:	7b62      	ldrb	r2, [r4, #13]
d008047c:	483b      	ldr	r0, [pc, #236]	; (d008056c <main+0x260>)
d008047e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080482:	7ba2      	ldrb	r2, [r4, #14]
d0080484:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080488:	7be2      	ldrb	r2, [r4, #15]
d008048a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008048e:	681b      	ldr	r3, [r3, #0]
d0080490:	6a1b      	ldr	r3, [r3, #32]
d0080492:	4798      	blx	r3
d0080494:	7b23      	ldrb	r3, [r4, #12]
d0080496:	7b62      	ldrb	r2, [r4, #13]
d0080498:	6828      	ldr	r0, [r5, #0]
d008049a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008049e:	7ba2      	ldrb	r2, [r4, #14]
d00804a0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00804a4:	7be2      	ldrb	r2, [r4, #15]
d00804a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804aa:	681b      	ldr	r3, [r3, #0]
d00804ac:	69db      	ldr	r3, [r3, #28]
d00804ae:	4798      	blx	r3
d00804b0:	7b23      	ldrb	r3, [r4, #12]
d00804b2:	7b62      	ldrb	r2, [r4, #13]
d00804b4:	6838      	ldr	r0, [r7, #0]
d00804b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804ba:	7ba2      	ldrb	r2, [r4, #14]
d00804bc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00804c0:	7be2      	ldrb	r2, [r4, #15]
d00804c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804c6:	681b      	ldr	r3, [r3, #0]
d00804c8:	699b      	ldr	r3, [r3, #24]
d00804ca:	4798      	blx	r3
d00804cc:	f44f 62ca 	mov.w	r2, #1616	; 0x650
d00804d0:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d00804d4:	f8cb 2000 	str.w	r2, [fp]
d00804d8:	6033      	str	r3, [r6, #0]
d00804da:	f000 f9d3 	bl	d0080884 <init_star_fields>
d00804de:	7820      	ldrb	r0, [r4, #0]
d00804e0:	7861      	ldrb	r1, [r4, #1]
d00804e2:	78a2      	ldrb	r2, [r4, #2]
d00804e4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00804e8:	78e3      	ldrb	r3, [r4, #3]
d00804ea:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00804ee:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00804f2:	6a1b      	ldr	r3, [r3, #32]
d00804f4:	4798      	blx	r3
d00804f6:	4680      	mov	r8, r0
d00804f8:	2800      	cmp	r0, #0
d00804fa:	f000 8163 	beq.w	d00807c4 <main+0x4b8>
d00804fe:	7b20      	ldrb	r0, [r4, #12]
d0080500:	7b61      	ldrb	r1, [r4, #13]
d0080502:	7ba2      	ldrb	r2, [r4, #14]
d0080504:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080508:	7be3      	ldrb	r3, [r4, #15]
d008050a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008050e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080512:	681b      	ldr	r3, [r3, #0]
d0080514:	68db      	ldr	r3, [r3, #12]
d0080516:	4798      	blx	r3
d0080518:	7b20      	ldrb	r0, [r4, #12]
d008051a:	7b61      	ldrb	r1, [r4, #13]
d008051c:	7ba2      	ldrb	r2, [r4, #14]
d008051e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080522:	7be3      	ldrb	r3, [r4, #15]
d0080524:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080528:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008052c:	685b      	ldr	r3, [r3, #4]
d008052e:	681b      	ldr	r3, [r3, #0]
d0080530:	4798      	blx	r3
d0080532:	f000 fb81 	bl	d0080c38 <do_bubbastix_playdemo_screensaver>
d0080536:	f8d9 1000 	ldr.w	r1, [r9]
d008053a:	3902      	subs	r1, #2
d008053c:	f111 0f43 	cmn.w	r1, #67	; 0x43
d0080540:	f2c0 818e 	blt.w	d0080860 <main+0x554>
d0080544:	f8c9 1000 	str.w	r1, [r9]
d0080548:	2500      	movs	r5, #0
d008054a:	f04f 0a20 	mov.w	sl, #32
d008054e:	4808      	ldr	r0, [pc, #32]	; (d0080570 <main+0x264>)
d0080550:	e017      	b.n	d0080582 <main+0x276>
d0080552:	bf00      	nop
d0080554:	2001f000 	.word	0x2001f000
d0080558:	d009b900 	.word	0xd009b900
d008055c:	d009b920 	.word	0xd009b920
d0080560:	d009b560 	.word	0xd009b560
d0080564:	d0082900 	.word	0xd0082900
d0080568:	d0081c60 	.word	0xd0081c60
d008056c:	d009b8e0 	.word	0xd009b8e0
d0080570:	d0082060 	.word	0xd0082060
d0080574:	d009b670 	.word	0xd009b670
d0080578:	d009b66c 	.word	0xd009b66c
d008057c:	f8d9 1000 	ldr.w	r1, [r9]
d0080580:	487d      	ldr	r0, [pc, #500]	; (d0080778 <main+0x46c>)
d0080582:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080586:	4429      	add	r1, r5
d0080588:	7b62      	ldrb	r2, [r4, #13]
d008058a:	3544      	adds	r5, #68	; 0x44
d008058c:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0080590:	2344      	movs	r3, #68	; 0x44
d0080592:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
d0080596:	7be7      	ldrb	r7, [r4, #15]
d0080598:	b2ad      	uxth	r5, r5
d008059a:	2200      	movs	r2, #0
d008059c:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00805a0:	b209      	sxth	r1, r1
d00805a2:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00805a6:	687f      	ldr	r7, [r7, #4]
d00805a8:	f8cd a000 	str.w	sl, [sp]
d00805ac:	69bf      	ldr	r7, [r7, #24]
d00805ae:	47b8      	blx	r7
d00805b0:	f5b5 7f08 	cmp.w	r5, #544	; 0x220
d00805b4:	d1e2      	bne.n	d008057c <main+0x270>
d00805b6:	6833      	ldr	r3, [r6, #0]
d00805b8:	f8db 2000 	ldr.w	r2, [fp]
d00805bc:	3b03      	subs	r3, #3
d00805be:	4252      	negs	r2, r2
d00805c0:	6033      	str	r3, [r6, #0]
d00805c2:	4293      	cmp	r3, r2
d00805c4:	dc02      	bgt.n	d00805cc <main+0x2c0>
d00805c6:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d00805ca:	6033      	str	r3, [r6, #0]
d00805cc:	7b27      	ldrb	r7, [r4, #12]
d00805ce:	2010      	movs	r0, #16
d00805d0:	7b61      	ldrb	r1, [r4, #13]
d00805d2:	2502      	movs	r5, #2
d00805d4:	7ba2      	ldrb	r2, [r4, #14]
d00805d6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d00805da:	7be3      	ldrb	r3, [r4, #15]
d00805dc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00805e0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00805e4:	685b      	ldr	r3, [r3, #4]
d00805e6:	68db      	ldr	r3, [r3, #12]
d00805e8:	4798      	blx	r3
d00805ea:	7b20      	ldrb	r0, [r4, #12]
d00805ec:	7b62      	ldrb	r2, [r4, #13]
d00805ee:	462b      	mov	r3, r5
d00805f0:	7ba7      	ldrb	r7, [r4, #14]
d00805f2:	210e      	movs	r1, #14
d00805f4:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d00805f8:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00805fc:	6830      	ldr	r0, [r6, #0]
d00805fe:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d0080602:	4a5e      	ldr	r2, [pc, #376]	; (d008077c <main+0x470>)
d0080604:	3802      	subs	r0, #2
d0080606:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d008060a:	687f      	ldr	r7, [r7, #4]
d008060c:	9500      	str	r5, [sp, #0]
d008060e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
d0080610:	47b8      	blx	r7
d0080612:	7b20      	ldrb	r0, [r4, #12]
d0080614:	7b62      	ldrb	r2, [r4, #13]
d0080616:	462b      	mov	r3, r5
d0080618:	7ba7      	ldrb	r7, [r4, #14]
d008061a:	210e      	movs	r1, #14
d008061c:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d0080620:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080624:	6830      	ldr	r0, [r6, #0]
d0080626:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d008062a:	4a54      	ldr	r2, [pc, #336]	; (d008077c <main+0x470>)
d008062c:	4428      	add	r0, r5
d008062e:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0080632:	687f      	ldr	r7, [r7, #4]
d0080634:	9500      	str	r5, [sp, #0]
d0080636:	6b3f      	ldr	r7, [r7, #48]	; 0x30
d0080638:	47b8      	blx	r7
d008063a:	7b22      	ldrb	r2, [r4, #12]
d008063c:	7b60      	ldrb	r0, [r4, #13]
d008063e:	462b      	mov	r3, r5
d0080640:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0080644:	210c      	movs	r1, #12
d0080646:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d008064a:	7be7      	ldrb	r7, [r4, #15]
d008064c:	4a4b      	ldr	r2, [pc, #300]	; (d008077c <main+0x470>)
d008064e:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0080652:	6830      	ldr	r0, [r6, #0]
d0080654:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0080658:	687f      	ldr	r7, [r7, #4]
d008065a:	9500      	str	r5, [sp, #0]
d008065c:	6b3f      	ldr	r7, [r7, #48]	; 0x30
d008065e:	47b8      	blx	r7
d0080660:	7b22      	ldrb	r2, [r4, #12]
d0080662:	7b60      	ldrb	r0, [r4, #13]
d0080664:	462b      	mov	r3, r5
d0080666:	f894 c00e 	ldrb.w	ip, [r4, #14]
d008066a:	2110      	movs	r1, #16
d008066c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0080670:	7be7      	ldrb	r7, [r4, #15]
d0080672:	4a42      	ldr	r2, [pc, #264]	; (d008077c <main+0x470>)
d0080674:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0080678:	6830      	ldr	r0, [r6, #0]
d008067a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d008067e:	687f      	ldr	r7, [r7, #4]
d0080680:	9500      	str	r5, [sp, #0]
d0080682:	6b3f      	ldr	r7, [r7, #48]	; 0x30
d0080684:	47b8      	blx	r7
d0080686:	7b20      	ldrb	r0, [r4, #12]
d0080688:	7b63      	ldrb	r3, [r4, #13]
d008068a:	f04f 0c0c 	mov.w	ip, #12
d008068e:	7ba2      	ldrb	r2, [r4, #14]
d0080690:	2757      	movs	r7, #87	; 0x57
d0080692:	ea40 2303 	orr.w	r3, r0, r3, lsl #8
d0080696:	7be1      	ldrb	r1, [r4, #15]
d0080698:	2050      	movs	r0, #80	; 0x50
d008069a:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
d008069e:	462b      	mov	r3, r5
d00806a0:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
d00806a4:	4a35      	ldr	r2, [pc, #212]	; (d008077c <main+0x470>)
d00806a6:	f8d1 e004 	ldr.w	lr, [r1, #4]
d00806aa:	210e      	movs	r1, #14
d00806ac:	f8cd c00c 	str.w	ip, [sp, #12]
d00806b0:	9702      	str	r7, [sp, #8]
d00806b2:	9500      	str	r5, [sp, #0]
d00806b4:	9001      	str	r0, [sp, #4]
d00806b6:	f8de 5034 	ldr.w	r5, [lr, #52]	; 0x34
d00806ba:	6830      	ldr	r0, [r6, #0]
d00806bc:	47a8      	blx	r5
d00806be:	7b25      	ldrb	r5, [r4, #12]
d00806c0:	7b61      	ldrb	r1, [r4, #13]
d00806c2:	2001      	movs	r0, #1
d00806c4:	7ba2      	ldrb	r2, [r4, #14]
d00806c6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d00806ca:	7be3      	ldrb	r3, [r4, #15]
d00806cc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00806d0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00806d4:	685b      	ldr	r3, [r3, #4]
d00806d6:	68db      	ldr	r3, [r3, #12]
d00806d8:	4798      	blx	r3
d00806da:	7b21      	ldrb	r1, [r4, #12]
d00806dc:	f894 c00d 	ldrb.w	ip, [r4, #13]
d00806e0:	2305      	movs	r3, #5
d00806e2:	7ba7      	ldrb	r7, [r4, #14]
d00806e4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00806e8:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d00806ec:	7be5      	ldrb	r5, [r4, #15]
d00806ee:	2120      	movs	r1, #32
d00806f0:	2000      	movs	r0, #0
d00806f2:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d00806f6:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d00806fa:	686d      	ldr	r5, [r5, #4]
d00806fc:	686d      	ldr	r5, [r5, #4]
d00806fe:	47a8      	blx	r5
d0080700:	4a1f      	ldr	r2, [pc, #124]	; (d0080780 <main+0x474>)
d0080702:	7813      	ldrb	r3, [r2, #0]
d0080704:	f1c3 0301 	rsb	r3, r3, #1
d0080708:	b2db      	uxtb	r3, r3
d008070a:	7013      	strb	r3, [r2, #0]
d008070c:	7813      	ldrb	r3, [r2, #0]
d008070e:	7b21      	ldrb	r1, [r4, #12]
d0080710:	7b60      	ldrb	r0, [r4, #13]
d0080712:	7ba2      	ldrb	r2, [r4, #14]
d0080714:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0080718:	2b00      	cmp	r3, #0
d008071a:	f000 80a5 	beq.w	d0080868 <main+0x55c>
d008071e:	4919      	ldr	r1, [pc, #100]	; (d0080784 <main+0x478>)
d0080720:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080724:	7be3      	ldrb	r3, [r4, #15]
d0080726:	6809      	ldr	r1, [r1, #0]
d0080728:	4817      	ldr	r0, [pc, #92]	; (d0080788 <main+0x47c>)
d008072a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008072e:	6800      	ldr	r0, [r0, #0]
d0080730:	f008 0803 	and.w	r8, r8, #3
d0080734:	681b      	ldr	r3, [r3, #0]
d0080736:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0080738:	4798      	blx	r3
d008073a:	7b20      	ldrb	r0, [r4, #12]
d008073c:	7b61      	ldrb	r1, [r4, #13]
d008073e:	7ba2      	ldrb	r2, [r4, #14]
d0080740:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080744:	7be3      	ldrb	r3, [r4, #15]
d0080746:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008074a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008074e:	681b      	ldr	r3, [r3, #0]
d0080750:	681b      	ldr	r3, [r3, #0]
d0080752:	4798      	blx	r3
d0080754:	7d20      	ldrb	r0, [r4, #20]
d0080756:	7d61      	ldrb	r1, [r4, #21]
d0080758:	7da2      	ldrb	r2, [r4, #22]
d008075a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d008075e:	7de3      	ldrb	r3, [r4, #23]
d0080760:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080764:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080768:	685b      	ldr	r3, [r3, #4]
d008076a:	685b      	ldr	r3, [r3, #4]
d008076c:	4798      	blx	r3
d008076e:	f1b8 0f03 	cmp.w	r8, #3
d0080772:	f47f aeb4 	bne.w	d00804de <main+0x1d2>
d0080776:	e017      	b.n	d00807a8 <main+0x49c>
d0080778:	d0082060 	.word	0xd0082060
d008077c:	d0082d00 	.word	0xd0082d00
d0080780:	d009b668 	.word	0xd009b668
d0080784:	d009b900 	.word	0xd009b900
d0080788:	d009b920 	.word	0xd009b920
d008078c:	7820      	ldrb	r0, [r4, #0]
d008078e:	7861      	ldrb	r1, [r4, #1]
d0080790:	78a2      	ldrb	r2, [r4, #2]
d0080792:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080796:	78e3      	ldrb	r3, [r4, #3]
d0080798:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008079c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807a0:	6a1b      	ldr	r3, [r3, #32]
d00807a2:	4798      	blx	r3
d00807a4:	0783      	lsls	r3, r0, #30
d00807a6:	d50d      	bpl.n	d00807c4 <main+0x4b8>
d00807a8:	7820      	ldrb	r0, [r4, #0]
d00807aa:	7861      	ldrb	r1, [r4, #1]
d00807ac:	78a2      	ldrb	r2, [r4, #2]
d00807ae:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00807b2:	78e3      	ldrb	r3, [r4, #3]
d00807b4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807b8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807bc:	6a1b      	ldr	r3, [r3, #32]
d00807be:	4798      	blx	r3
d00807c0:	07c2      	lsls	r2, r0, #31
d00807c2:	d4e3      	bmi.n	d008078c <main+0x480>
d00807c4:	482c      	ldr	r0, [pc, #176]	; (d0080878 <main+0x56c>)
d00807c6:	2602      	movs	r6, #2
d00807c8:	f000 fde8 	bl	d008139c <puts>
d00807cc:	7b23      	ldrb	r3, [r4, #12]
d00807ce:	7b62      	ldrb	r2, [r4, #13]
d00807d0:	7ba1      	ldrb	r1, [r4, #14]
d00807d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00807d6:	7be2      	ldrb	r2, [r4, #15]
d00807d8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00807dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00807e0:	681b      	ldr	r3, [r3, #0]
d00807e2:	68db      	ldr	r3, [r3, #12]
d00807e4:	4798      	blx	r3
d00807e6:	7b25      	ldrb	r5, [r4, #12]
d00807e8:	7b62      	ldrb	r2, [r4, #13]
d00807ea:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00807ee:	7ba1      	ldrb	r1, [r4, #14]
d00807f0:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00807f4:	7be0      	ldrb	r0, [r4, #15]
d00807f6:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00807fa:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00807fe:	4619      	mov	r1, r3
d0080800:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0080804:	4610      	mov	r0, r2
d0080806:	682d      	ldr	r5, [r5, #0]
d0080808:	9600      	str	r6, [sp, #0]
d008080a:	696d      	ldr	r5, [r5, #20]
d008080c:	47a8      	blx	r5
d008080e:	7923      	ldrb	r3, [r4, #4]
d0080810:	7962      	ldrb	r2, [r4, #5]
d0080812:	79a1      	ldrb	r1, [r4, #6]
d0080814:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080818:	79e2      	ldrb	r2, [r4, #7]
d008081a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008081e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080822:	685b      	ldr	r3, [r3, #4]
d0080824:	4798      	blx	r3
d0080826:	7b23      	ldrb	r3, [r4, #12]
d0080828:	7b62      	ldrb	r2, [r4, #13]
d008082a:	7ba1      	ldrb	r1, [r4, #14]
d008082c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080830:	7be2      	ldrb	r2, [r4, #15]
d0080832:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080836:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008083a:	681b      	ldr	r3, [r3, #0]
d008083c:	68db      	ldr	r3, [r3, #12]
d008083e:	4798      	blx	r3
d0080840:	7823      	ldrb	r3, [r4, #0]
d0080842:	7862      	ldrb	r2, [r4, #1]
d0080844:	78a1      	ldrb	r1, [r4, #2]
d0080846:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008084a:	78e2      	ldrb	r2, [r4, #3]
d008084c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080850:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080854:	685b      	ldr	r3, [r3, #4]
d0080856:	4798      	blx	r3
d0080858:	2000      	movs	r0, #0
d008085a:	b005      	add	sp, #20
d008085c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080860:	2100      	movs	r1, #0
d0080862:	f8c9 1000 	str.w	r1, [r9]
d0080866:	e66f      	b.n	d0080548 <main+0x23c>
d0080868:	4904      	ldr	r1, [pc, #16]	; (d008087c <main+0x570>)
d008086a:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d008086e:	7be3      	ldrb	r3, [r4, #15]
d0080870:	6809      	ldr	r1, [r1, #0]
d0080872:	4803      	ldr	r0, [pc, #12]	; (d0080880 <main+0x574>)
d0080874:	e759      	b.n	d008072a <main+0x41e>
d0080876:	bf00      	nop
d0080878:	d00828e0 	.word	0xd00828e0
d008087c:	d009b920 	.word	0xd009b920
d0080880:	d009b900 	.word	0xd009b900

d0080884 <init_star_fields>:
d0080884:	4b33      	ldr	r3, [pc, #204]	; (d0080954 <init_star_fields+0xd0>)
d0080886:	f8df c0d4 	ldr.w	ip, [pc, #212]	; d008095c <init_star_fields+0xd8>
d008088a:	6819      	ldr	r1, [r3, #0]
d008088c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080890:	2600      	movs	r6, #0
d0080892:	4c31      	ldr	r4, [pc, #196]	; (d0080958 <init_star_fields+0xd4>)
d0080894:	f243 0e39 	movw	lr, #12345	; 0x3039
d0080898:	f240 1b19 	movw	fp, #281	; 0x119
d008089c:	f8df a0c0 	ldr.w	sl, [pc, #192]	; d0080960 <init_star_fields+0xdc>
d00808a0:	f8df 90c0 	ldr.w	r9, [pc, #192]	; d0080964 <init_star_fields+0xe0>
d00808a4:	e006      	b.n	d00808b4 <init_star_fields+0x30>
d00808a6:	2306      	movs	r3, #6
d00808a8:	f04f 0201 	mov.w	r2, #1
d00808ac:	7163      	strb	r3, [r4, #5]
d00808ae:	7122      	strb	r2, [r4, #4]
d00808b0:	3601      	adds	r6, #1
d00808b2:	3406      	adds	r4, #6
d00808b4:	fb0c e101 	mla	r1, ip, r1, lr
d00808b8:	2e1f      	cmp	r6, #31
d00808ba:	b2f5      	uxtb	r5, r6
d00808bc:	ea4f 4011 	mov.w	r0, r1, lsr #16
d00808c0:	fb0c e101 	mla	r1, ip, r1, lr
d00808c4:	fbaa 2300 	umull	r2, r3, sl, r0
d00808c8:	ea4f 4811 	mov.w	r8, r1, lsr #16
d00808cc:	eba0 0203 	sub.w	r2, r0, r3
d00808d0:	eb03 0352 	add.w	r3, r3, r2, lsr #1
d00808d4:	fba9 7208 	umull	r7, r2, r9, r8
d00808d8:	ea4f 2313 	mov.w	r3, r3, lsr #8
d00808dc:	ea4f 02d2 	mov.w	r2, r2, lsr #3
d00808e0:	ebc3 1703 	rsb	r7, r3, r3, lsl #4
d00808e4:	fb0b 8212 	mls	r2, fp, r2, r8
d00808e8:	ebc3 1347 	rsb	r3, r3, r7, lsl #5
d00808ec:	f102 0226 	add.w	r2, r2, #38	; 0x26
d00808f0:	eba0 0003 	sub.w	r0, r0, r3
d00808f4:	8062      	strh	r2, [r4, #2]
d00808f6:	8020      	strh	r0, [r4, #0]
d00808f8:	d9d5      	bls.n	d00808a6 <init_star_fields+0x22>
d00808fa:	2d35      	cmp	r5, #53	; 0x35
d00808fc:	d805      	bhi.n	d008090a <init_star_fields+0x86>
d00808fe:	2306      	movs	r3, #6
d0080900:	f04f 0202 	mov.w	r2, #2
d0080904:	7163      	strb	r3, [r4, #5]
d0080906:	7122      	strb	r2, [r4, #4]
d0080908:	e7d2      	b.n	d00808b0 <init_star_fields+0x2c>
d008090a:	2d47      	cmp	r5, #71	; 0x47
d008090c:	d804      	bhi.n	d0080918 <init_star_fields+0x94>
d008090e:	2203      	movs	r2, #3
d0080910:	2305      	movs	r3, #5
d0080912:	7122      	strb	r2, [r4, #4]
d0080914:	7163      	strb	r3, [r4, #5]
d0080916:	e7cb      	b.n	d00808b0 <init_star_fields+0x2c>
d0080918:	2d53      	cmp	r5, #83	; 0x53
d008091a:	d805      	bhi.n	d0080928 <init_star_fields+0xa4>
d008091c:	2305      	movs	r3, #5
d008091e:	f04f 0201 	mov.w	r2, #1
d0080922:	7123      	strb	r3, [r4, #4]
d0080924:	7162      	strb	r2, [r4, #5]
d0080926:	e7c3      	b.n	d00808b0 <init_star_fields+0x2c>
d0080928:	2d5b      	cmp	r5, #91	; 0x5b
d008092a:	d806      	bhi.n	d008093a <init_star_fields+0xb6>
d008092c:	f04f 0307 	mov.w	r3, #7
d0080930:	7123      	strb	r3, [r4, #4]
d0080932:	f04f 0301 	mov.w	r3, #1
d0080936:	7163      	strb	r3, [r4, #5]
d0080938:	e7ba      	b.n	d00808b0 <init_star_fields+0x2c>
d008093a:	f04f 0309 	mov.w	r3, #9
d008093e:	2d5f      	cmp	r5, #95	; 0x5f
d0080940:	7123      	strb	r3, [r4, #4]
d0080942:	f04f 0302 	mov.w	r3, #2
d0080946:	7163      	strb	r3, [r4, #5]
d0080948:	d1b2      	bne.n	d00808b0 <init_star_fields+0x2c>
d008094a:	4b02      	ldr	r3, [pc, #8]	; (d0080954 <init_star_fields+0xd0>)
d008094c:	6019      	str	r1, [r3, #0]
d008094e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080952:	bf00      	nop
d0080954:	d009b580 	.word	0xd009b580
d0080958:	d009b680 	.word	0xd009b680
d008095c:	41c64e6d 	.word	0x41c64e6d
d0080960:	11a3019b 	.word	0x11a3019b
d0080964:	0749cb29 	.word	0x0749cb29

d0080968 <setup_background_bub>:
d0080968:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d008096c:	4c9a      	ldr	r4, [pc, #616]	; (d0080bd8 <setup_background_bub+0x270>)
d008096e:	20c8      	movs	r0, #200	; 0xc8
d0080970:	4d9a      	ldr	r5, [pc, #616]	; (d0080bdc <setup_background_bub+0x274>)
d0080972:	2100      	movs	r1, #0
d0080974:	7b23      	ldrb	r3, [r4, #12]
d0080976:	b087      	sub	sp, #28
d0080978:	7b62      	ldrb	r2, [r4, #13]
d008097a:	f04f 0825 	mov.w	r8, #37	; 0x25
d008097e:	8028      	strh	r0, [r5, #0]
d0080980:	460d      	mov	r5, r1
d0080982:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080986:	7ba2      	ldrb	r2, [r4, #14]
d0080988:	4f95      	ldr	r7, [pc, #596]	; (d0080be0 <setup_background_bub+0x278>)
d008098a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008098e:	7be2      	ldrb	r2, [r4, #15]
d0080990:	f8df 92a0 	ldr.w	r9, [pc, #672]	; d0080c34 <setup_background_bub+0x2cc>
d0080994:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080998:	4a92      	ldr	r2, [pc, #584]	; (d0080be4 <setup_background_bub+0x27c>)
d008099a:	681b      	ldr	r3, [r3, #0]
d008099c:	8310      	strh	r0, [r2, #24]
d008099e:	699e      	ldr	r6, [r3, #24]
d00809a0:	4b91      	ldr	r3, [pc, #580]	; (d0080be8 <setup_background_bub+0x280>)
d00809a2:	4892      	ldr	r0, [pc, #584]	; (d0080bec <setup_background_bub+0x284>)
d00809a4:	60d3      	str	r3, [r2, #12]
d00809a6:	6113      	str	r3, [r2, #16]
d00809a8:	4b91      	ldr	r3, [pc, #580]	; (d0080bf0 <setup_background_bub+0x288>)
d00809aa:	6017      	str	r7, [r2, #0]
d00809ac:	2720      	movs	r7, #32
d00809ae:	8001      	strh	r1, [r0, #0]
d00809b0:	8019      	strh	r1, [r3, #0]
d00809b2:	4890      	ldr	r0, [pc, #576]	; (d0080bf4 <setup_background_bub+0x28c>)
d00809b4:	47b0      	blx	r6
d00809b6:	7b23      	ldrb	r3, [r4, #12]
d00809b8:	7b62      	ldrb	r2, [r4, #13]
d00809ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00809be:	7ba2      	ldrb	r2, [r4, #14]
d00809c0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00809c4:	7be2      	ldrb	r2, [r4, #15]
d00809c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00809ca:	685b      	ldr	r3, [r3, #4]
d00809cc:	681b      	ldr	r3, [r3, #0]
d00809ce:	4798      	blx	r3
d00809d0:	e057      	b.n	d0080a82 <setup_background_bub+0x11a>
d00809d2:	f894 e00c 	ldrb.w	lr, [r4, #12]
d00809d6:	4638      	mov	r0, r7
d00809d8:	f894 c00d 	ldrb.w	ip, [r4, #13]
d00809dc:	7ba2      	ldrb	r2, [r4, #14]
d00809de:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d00809e2:	7be3      	ldrb	r3, [r4, #15]
d00809e4:	f819 ac01 	ldrb.w	sl, [r9, #-1]
d00809e8:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d00809ec:	9105      	str	r1, [sp, #20]
d00809ee:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00809f2:	685b      	ldr	r3, [r3, #4]
d00809f4:	68db      	ldr	r3, [r3, #12]
d00809f6:	4798      	blx	r3
d00809f8:	7b22      	ldrb	r2, [r4, #12]
d00809fa:	f894 c00d 	ldrb.w	ip, [r4, #13]
d00809fe:	465b      	mov	r3, fp
d0080a00:	7ba0      	ldrb	r0, [r4, #14]
d0080a02:	ea42 2c0c 	orr.w	ip, r2, ip, lsl #8
d0080a06:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0080a0a:	9905      	ldr	r1, [sp, #20]
d0080a0c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080a10:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d0080a14:	2000      	movs	r0, #0
d0080a16:	ea4c 6e0e 	orr.w	lr, ip, lr, lsl #24
d0080a1a:	f8de c004 	ldr.w	ip, [lr, #4]
d0080a1e:	f8dc b004 	ldr.w	fp, [ip, #4]
d0080a22:	47d8      	blx	fp
d0080a24:	45ba      	cmp	sl, r7
d0080a26:	d024      	beq.n	d0080a72 <setup_background_bub+0x10a>
d0080a28:	9b04      	ldr	r3, [sp, #16]
d0080a2a:	4650      	mov	r0, sl
d0080a2c:	4543      	cmp	r3, r8
d0080a2e:	dd20      	ble.n	d0080a72 <setup_background_bub+0x10a>
d0080a30:	7b27      	ldrb	r7, [r4, #12]
d0080a32:	7b61      	ldrb	r1, [r4, #13]
d0080a34:	7ba2      	ldrb	r2, [r4, #14]
d0080a36:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d0080a3a:	7be3      	ldrb	r3, [r4, #15]
d0080a3c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080a40:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080a44:	685b      	ldr	r3, [r3, #4]
d0080a46:	68db      	ldr	r3, [r3, #12]
d0080a48:	4798      	blx	r3
d0080a4a:	7b22      	ldrb	r2, [r4, #12]
d0080a4c:	7b67      	ldrb	r7, [r4, #13]
d0080a4e:	1cb1      	adds	r1, r6, #2
d0080a50:	7ba6      	ldrb	r6, [r4, #14]
d0080a52:	2302      	movs	r3, #2
d0080a54:	ea42 2007 	orr.w	r0, r2, r7, lsl #8
d0080a58:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080a5c:	b209      	sxth	r1, r1
d0080a5e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080a62:	ea40 4706 	orr.w	r7, r0, r6, lsl #16
d0080a66:	2000      	movs	r0, #0
d0080a68:	ea47 660c 	orr.w	r6, r7, ip, lsl #24
d0080a6c:	6876      	ldr	r6, [r6, #4]
d0080a6e:	6876      	ldr	r6, [r6, #4]
d0080a70:	47b0      	blx	r6
d0080a72:	b2ab      	uxth	r3, r5
d0080a74:	2b11      	cmp	r3, #17
d0080a76:	d041      	beq.n	d0080afc <setup_background_bub+0x194>
d0080a78:	3501      	adds	r5, #1
d0080a7a:	f108 0806 	add.w	r8, r8, #6
d0080a7e:	f819 7f01 	ldrb.w	r7, [r9, #1]!
d0080a82:	fa1f f688 	uxth.w	r6, r8
d0080a86:	2d11      	cmp	r5, #17
d0080a88:	f04f 0b06 	mov.w	fp, #6
d0080a8c:	fa0f fa85 	sxth.w	sl, r5
d0080a90:	f106 0305 	add.w	r3, r6, #5
d0080a94:	f106 31ff 	add.w	r1, r6, #4294967295	; 0xffffffff
d0080a98:	b21b      	sxth	r3, r3
d0080a9a:	b209      	sxth	r1, r1
d0080a9c:	9304      	str	r3, [sp, #16]
d0080a9e:	d026      	beq.n	d0080aee <setup_background_bub+0x186>
d0080aa0:	f1ba 0f00 	cmp.w	sl, #0
d0080aa4:	d195      	bne.n	d00809d2 <setup_background_bub+0x6a>
d0080aa6:	7b20      	ldrb	r0, [r4, #12]
d0080aa8:	7b66      	ldrb	r6, [r4, #13]
d0080aaa:	7ba2      	ldrb	r2, [r4, #14]
d0080aac:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d0080ab0:	7be3      	ldrb	r3, [r4, #15]
d0080ab2:	f899 0000 	ldrb.w	r0, [r9]
d0080ab6:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d0080aba:	9104      	str	r1, [sp, #16]
d0080abc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080ac0:	685b      	ldr	r3, [r3, #4]
d0080ac2:	68db      	ldr	r3, [r3, #12]
d0080ac4:	4798      	blx	r3
d0080ac6:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0080aca:	7b66      	ldrb	r6, [r4, #13]
d0080acc:	4650      	mov	r0, sl
d0080ace:	7ba7      	ldrb	r7, [r4, #14]
d0080ad0:	2306      	movs	r3, #6
d0080ad2:	ea4c 2c06 	orr.w	ip, ip, r6, lsl #8
d0080ad6:	7be6      	ldrb	r6, [r4, #15]
d0080ad8:	9904      	ldr	r1, [sp, #16]
d0080ada:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080ade:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d0080ae2:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0080ae6:	6876      	ldr	r6, [r6, #4]
d0080ae8:	6876      	ldr	r6, [r6, #4]
d0080aea:	47b0      	blx	r6
d0080aec:	e7c4      	b.n	d0080a78 <setup_background_bub+0x110>
d0080aee:	f1c6 0b7d 	rsb	fp, r6, #125	; 0x7d
d0080af2:	237c      	movs	r3, #124	; 0x7c
d0080af4:	fa0f fb8b 	sxth.w	fp, fp
d0080af8:	9304      	str	r3, [sp, #16]
d0080afa:	e76a      	b.n	d00809d2 <setup_background_bub+0x6a>
d0080afc:	7b23      	ldrb	r3, [r4, #12]
d0080afe:	7b62      	ldrb	r2, [r4, #13]
d0080b00:	7ba1      	ldrb	r1, [r4, #14]
d0080b02:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080b06:	7be2      	ldrb	r2, [r4, #15]
d0080b08:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080b0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080b10:	681b      	ldr	r3, [r3, #0]
d0080b12:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0080b14:	4798      	blx	r3
d0080b16:	7b23      	ldrb	r3, [r4, #12]
d0080b18:	7b62      	ldrb	r2, [r4, #13]
d0080b1a:	4606      	mov	r6, r0
d0080b1c:	7ba1      	ldrb	r1, [r4, #14]
d0080b1e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080b22:	7be2      	ldrb	r2, [r4, #15]
d0080b24:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080b28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080b2c:	681b      	ldr	r3, [r3, #0]
d0080b2e:	699b      	ldr	r3, [r3, #24]
d0080b30:	4798      	blx	r3
d0080b32:	7b23      	ldrb	r3, [r4, #12]
d0080b34:	7b62      	ldrb	r2, [r4, #13]
d0080b36:	2010      	movs	r0, #16
d0080b38:	7ba1      	ldrb	r1, [r4, #14]
d0080b3a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080b3e:	7be2      	ldrb	r2, [r4, #15]
d0080b40:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080b44:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080b48:	685b      	ldr	r3, [r3, #4]
d0080b4a:	68db      	ldr	r3, [r3, #12]
d0080b4c:	4798      	blx	r3
d0080b4e:	7b25      	ldrb	r5, [r4, #12]
d0080b50:	7b61      	ldrb	r1, [r4, #13]
d0080b52:	2364      	movs	r3, #100	; 0x64
d0080b54:	7ba0      	ldrb	r0, [r4, #14]
d0080b56:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080b5a:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0080b5e:	7be7      	ldrb	r7, [r4, #15]
d0080b60:	2190      	movs	r1, #144	; 0x90
d0080b62:	ea45 4400 	orr.w	r4, r5, r0, lsl #16
d0080b66:	2000      	movs	r0, #0
d0080b68:	4d23      	ldr	r5, [pc, #140]	; (d0080bf8 <setup_background_bub+0x290>)
d0080b6a:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d0080b6e:	f64f 7724 	movw	r7, #65316	; 0xff24
d0080b72:	6864      	ldr	r4, [r4, #4]
d0080b74:	6864      	ldr	r4, [r4, #4]
d0080b76:	47a0      	blx	r4
d0080b78:	6833      	ldr	r3, [r6, #0]
d0080b7a:	2210      	movs	r2, #16
d0080b7c:	491f      	ldr	r1, [pc, #124]	; (d0080bfc <setup_background_bub+0x294>)
d0080b7e:	9302      	str	r3, [sp, #8]
d0080b80:	2000      	movs	r0, #0
d0080b82:	9201      	str	r2, [sp, #4]
d0080b84:	2328      	movs	r3, #40	; 0x28
d0080b86:	9100      	str	r1, [sp, #0]
d0080b88:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080b8c:	2168      	movs	r1, #104	; 0x68
d0080b8e:	f64f 74ce 	movw	r4, #65486	; 0xffce
d0080b92:	f7ff fa61 	bl	d0080058 <gfx_draw1bit>
d0080b96:	481a      	ldr	r0, [pc, #104]	; (d0080c00 <setup_background_bub+0x298>)
d0080b98:	2300      	movs	r3, #0
d0080b9a:	4a1a      	ldr	r2, [pc, #104]	; (d0080c04 <setup_background_bub+0x29c>)
d0080b9c:	6005      	str	r5, [r0, #0]
d0080b9e:	4d1a      	ldr	r5, [pc, #104]	; (d0080c08 <setup_background_bub+0x2a0>)
d0080ba0:	481a      	ldr	r0, [pc, #104]	; (d0080c0c <setup_background_bub+0x2a4>)
d0080ba2:	702b      	strb	r3, [r5, #0]
d0080ba4:	7003      	strb	r3, [r0, #0]
d0080ba6:	4d1a      	ldr	r5, [pc, #104]	; (d0080c10 <setup_background_bub+0x2a8>)
d0080ba8:	481a      	ldr	r0, [pc, #104]	; (d0080c14 <setup_background_bub+0x2ac>)
d0080baa:	702b      	strb	r3, [r5, #0]
d0080bac:	7003      	strb	r3, [r0, #0]
d0080bae:	6816      	ldr	r6, [r2, #0]
d0080bb0:	2202      	movs	r2, #2
d0080bb2:	4919      	ldr	r1, [pc, #100]	; (d0080c18 <setup_background_bub+0x2b0>)
d0080bb4:	4d19      	ldr	r5, [pc, #100]	; (d0080c1c <setup_background_bub+0x2b4>)
d0080bb6:	481a      	ldr	r0, [pc, #104]	; (d0080c20 <setup_background_bub+0x2b8>)
d0080bb8:	702b      	strb	r3, [r5, #0]
d0080bba:	600e      	str	r6, [r1, #0]
d0080bbc:	21b4      	movs	r1, #180	; 0xb4
d0080bbe:	8007      	strh	r7, [r0, #0]
d0080bc0:	4e18      	ldr	r6, [pc, #96]	; (d0080c24 <setup_background_bub+0x2bc>)
d0080bc2:	4d19      	ldr	r5, [pc, #100]	; (d0080c28 <setup_background_bub+0x2c0>)
d0080bc4:	4819      	ldr	r0, [pc, #100]	; (d0080c2c <setup_background_bub+0x2c4>)
d0080bc6:	4b1a      	ldr	r3, [pc, #104]	; (d0080c30 <setup_background_bub+0x2c8>)
d0080bc8:	8032      	strh	r2, [r6, #0]
d0080bca:	802a      	strh	r2, [r5, #0]
d0080bcc:	8004      	strh	r4, [r0, #0]
d0080bce:	8019      	strh	r1, [r3, #0]
d0080bd0:	b007      	add	sp, #28
d0080bd2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080bd6:	bf00      	nop
d0080bd8:	2001f000 	.word	0x2001f000
d0080bdc:	d009b8c0 	.word	0xd009b8c0
d0080be0:	d0085a08 	.word	0xd0085a08
d0080be4:	d009b960 	.word	0xd009b960
d0080be8:	00960020 	.word	0x00960020
d0080bec:	d009b8d2 	.word	0xd009b8d2
d0080bf0:	d009b942 	.word	0xd009b942
d0080bf4:	d009b8e0 	.word	0xd009b8e0
d0080bf8:	d0082d68 	.word	0xd0082d68
d0080bfc:	d00850a8 	.word	0xd00850a8
d0080c00:	d009b8cc 	.word	0xd009b8cc
d0080c04:	d009b5a0 	.word	0xd009b5a0
d0080c08:	d009b8c8 	.word	0xd009b8c8
d0080c0c:	d009b8d0 	.word	0xd009b8d0
d0080c10:	d009b8c2 	.word	0xd009b8c2
d0080c14:	d009b8c9 	.word	0xd009b8c9
d0080c18:	d009b8c4 	.word	0xd009b8c4
d0080c1c:	d009b948 	.word	0xd009b948
d0080c20:	d009b940 	.word	0xd009b940
d0080c24:	d009b944 	.word	0xd009b944
d0080c28:	d009b946 	.word	0xd009b946
d0080c2c:	d009b982 	.word	0xd009b982
d0080c30:	d009b980 	.word	0xd009b980
d0080c34:	d0093f00 	.word	0xd0093f00

d0080c38 <do_bubbastix_playdemo_screensaver>:
d0080c38:	4b88      	ldr	r3, [pc, #544]	; (d0080e5c <do_bubbastix_playdemo_screensaver+0x224>)
d0080c3a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080c3e:	781b      	ldrb	r3, [r3, #0]
d0080c40:	b089      	sub	sp, #36	; 0x24
d0080c42:	2b03      	cmp	r3, #3
d0080c44:	f000 81a2 	beq.w	d0080f8c <do_bubbastix_playdemo_screensaver+0x354>
d0080c48:	4985      	ldr	r1, [pc, #532]	; (d0080e60 <do_bubbastix_playdemo_screensaver+0x228>)
d0080c4a:	4d86      	ldr	r5, [pc, #536]	; (d0080e64 <do_bubbastix_playdemo_screensaver+0x22c>)
d0080c4c:	880b      	ldrh	r3, [r1, #0]
d0080c4e:	1e5a      	subs	r2, r3, #1
d0080c50:	b212      	sxth	r2, r2
d0080c52:	2a01      	cmp	r2, #1
d0080c54:	800a      	strh	r2, [r1, #0]
d0080c56:	f040 8131 	bne.w	d0080ebc <do_bubbastix_playdemo_screensaver+0x284>
d0080c5a:	f895 c000 	ldrb.w	ip, [r5]
d0080c5e:	2302      	movs	r3, #2
d0080c60:	4a81      	ldr	r2, [pc, #516]	; (d0080e68 <do_bubbastix_playdemo_screensaver+0x230>)
d0080c62:	f10c 0401 	add.w	r4, ip, #1
d0080c66:	4881      	ldr	r0, [pc, #516]	; (d0080e6c <do_bubbastix_playdemo_screensaver+0x234>)
d0080c68:	6a11      	ldr	r1, [r2, #32]
d0080c6a:	f1bc 0f03 	cmp.w	ip, #3
d0080c6e:	b2e4      	uxtb	r4, r4
d0080c70:	9203      	str	r2, [sp, #12]
d0080c72:	9006      	str	r0, [sp, #24]
d0080c74:	460a      	mov	r2, r1
d0080c76:	6001      	str	r1, [r0, #0]
d0080c78:	702c      	strb	r4, [r5, #0]
d0080c7a:	f240 820a 	bls.w	d0081092 <do_bubbastix_playdemo_screensaver+0x45a>
d0080c7e:	487c      	ldr	r0, [pc, #496]	; (d0080e70 <do_bubbastix_playdemo_screensaver+0x238>)
d0080c80:	4f7c      	ldr	r7, [pc, #496]	; (d0080e74 <do_bubbastix_playdemo_screensaver+0x23c>)
d0080c82:	f8df b228 	ldr.w	fp, [pc, #552]	; d0080eac <do_bubbastix_playdemo_screensaver+0x274>
d0080c86:	9007      	str	r0, [sp, #28]
d0080c88:	4e7b      	ldr	r6, [pc, #492]	; (d0080e78 <do_bubbastix_playdemo_screensaver+0x240>)
d0080c8a:	f04f 0c00 	mov.w	ip, #0
d0080c8e:	7834      	ldrb	r4, [r6, #0]
d0080c90:	f885 c000 	strb.w	ip, [r5]
d0080c94:	2c06      	cmp	r4, #6
d0080c96:	f200 81de 	bhi.w	d0081056 <do_bubbastix_playdemo_screensaver+0x41e>
d0080c9a:	3401      	adds	r4, #1
d0080c9c:	4291      	cmp	r1, r2
d0080c9e:	b2e4      	uxtb	r4, r4
d0080ca0:	7034      	strb	r4, [r6, #0]
d0080ca2:	f000 81de 	beq.w	d0081062 <do_bubbastix_playdemo_screensaver+0x42a>
d0080ca6:	4875      	ldr	r0, [pc, #468]	; (d0080e7c <do_bubbastix_playdemo_screensaver+0x244>)
d0080ca8:	9a03      	ldr	r2, [sp, #12]
d0080caa:	9005      	str	r0, [sp, #20]
d0080cac:	4874      	ldr	r0, [pc, #464]	; (d0080e80 <do_bubbastix_playdemo_screensaver+0x248>)
d0080cae:	f852 2024 	ldr.w	r2, [r2, r4, lsl #2]
d0080cb2:	9004      	str	r0, [sp, #16]
d0080cb4:	f8df 81f8 	ldr.w	r8, [pc, #504]	; d0080eb0 <do_bubbastix_playdemo_screensaver+0x278>
d0080cb8:	9806      	ldr	r0, [sp, #24]
d0080cba:	f8df a1f8 	ldr.w	sl, [pc, #504]	; d0080eb4 <do_bubbastix_playdemo_screensaver+0x27c>
d0080cbe:	6002      	str	r2, [r0, #0]
d0080cc0:	4291      	cmp	r1, r2
d0080cc2:	d026      	beq.n	d0080d12 <do_bubbastix_playdemo_screensaver+0xda>
d0080cc4:	496f      	ldr	r1, [pc, #444]	; (d0080e84 <do_bubbastix_playdemo_screensaver+0x24c>)
d0080cc6:	780a      	ldrb	r2, [r1, #0]
d0080cc8:	2a03      	cmp	r2, #3
d0080cca:	f200 8150 	bhi.w	d0080f6e <do_bubbastix_playdemo_screensaver+0x336>
d0080cce:	3201      	adds	r2, #1
d0080cd0:	700a      	strb	r2, [r1, #0]
d0080cd2:	33db      	adds	r3, #219	; 0xdb
d0080cd4:	b29b      	uxth	r3, r3
d0080cd6:	2bdc      	cmp	r3, #220	; 0xdc
d0080cd8:	d91b      	bls.n	d0080d12 <do_bubbastix_playdemo_screensaver+0xda>
d0080cda:	4a6b      	ldr	r2, [pc, #428]	; (d0080e88 <do_bubbastix_playdemo_screensaver+0x250>)
d0080cdc:	f8b8 3000 	ldrh.w	r3, [r8]
d0080ce0:	8812      	ldrh	r2, [r2, #0]
d0080ce2:	4413      	add	r3, r2
d0080ce4:	b21b      	sxth	r3, r3
d0080ce6:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0080cea:	f8a8 3000 	strh.w	r3, [r8]
d0080cee:	dd04      	ble.n	d0080cfa <do_bubbastix_playdemo_screensaver+0xc2>
d0080cf0:	4a5a      	ldr	r2, [pc, #360]	; (d0080e5c <do_bubbastix_playdemo_screensaver+0x224>)
d0080cf2:	7813      	ldrb	r3, [r2, #0]
d0080cf4:	f043 0302 	orr.w	r3, r3, #2
d0080cf8:	7013      	strb	r3, [r2, #0]
d0080cfa:	4a64      	ldr	r2, [pc, #400]	; (d0080e8c <do_bubbastix_playdemo_screensaver+0x254>)
d0080cfc:	f8ba 3000 	ldrh.w	r3, [sl]
d0080d00:	8812      	ldrh	r2, [r2, #0]
d0080d02:	4413      	add	r3, r2
d0080d04:	b21b      	sxth	r3, r3
d0080d06:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
d0080d0a:	f8aa 3000 	strh.w	r3, [sl]
d0080d0e:	f300 81b4 	bgt.w	d008107a <do_bubbastix_playdemo_screensaver+0x442>
d0080d12:	2500      	movs	r5, #0
d0080d14:	4c5e      	ldr	r4, [pc, #376]	; (d0080e90 <do_bubbastix_playdemo_screensaver+0x258>)
d0080d16:	f04f 0960 	mov.w	r9, #96	; 0x60
d0080d1a:	485e      	ldr	r0, [pc, #376]	; (d0080e94 <do_bubbastix_playdemo_screensaver+0x25c>)
d0080d1c:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080d20:	f44f 738e 	mov.w	r3, #284	; 0x11c
d0080d24:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080d28:	22d6      	movs	r2, #214	; 0xd6
d0080d2a:	7ba6      	ldrb	r6, [r4, #14]
d0080d2c:	ea4e 210c 	orr.w	r1, lr, ip, lsl #8
d0080d30:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0080d34:	ea41 4c06 	orr.w	ip, r1, r6, lsl #16
d0080d38:	8839      	ldrh	r1, [r7, #0]
d0080d3a:	ea4c 660e 	orr.w	r6, ip, lr, lsl #24
d0080d3e:	4429      	add	r1, r5
d0080d40:	441d      	add	r5, r3
d0080d42:	6876      	ldr	r6, [r6, #4]
d0080d44:	b209      	sxth	r1, r1
d0080d46:	f8cd 9000 	str.w	r9, [sp]
d0080d4a:	69b6      	ldr	r6, [r6, #24]
d0080d4c:	47b0      	blx	r6
d0080d4e:	f5b5 7f55 	cmp.w	r5, #852	; 0x354
d0080d52:	4850      	ldr	r0, [pc, #320]	; (d0080e94 <do_bubbastix_playdemo_screensaver+0x25c>)
d0080d54:	d1e2      	bne.n	d0080d1c <do_bubbastix_playdemo_screensaver+0xe4>
d0080d56:	7b22      	ldrb	r2, [r4, #12]
d0080d58:	2520      	movs	r5, #32
d0080d5a:	7b63      	ldrb	r3, [r4, #13]
d0080d5c:	7ba6      	ldrb	r6, [r4, #14]
d0080d5e:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d0080d62:	9904      	ldr	r1, [sp, #16]
d0080d64:	4a4c      	ldr	r2, [pc, #304]	; (d0080e98 <do_bubbastix_playdemo_screensaver+0x260>)
d0080d66:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0080d6a:	7be6      	ldrb	r6, [r4, #15]
d0080d6c:	7809      	ldrb	r1, [r1, #0]
d0080d6e:	ea43 6606 	orr.w	r6, r3, r6, lsl #24
d0080d72:	9805      	ldr	r0, [sp, #20]
d0080d74:	5c53      	ldrb	r3, [r2, r1]
d0080d76:	22de      	movs	r2, #222	; 0xde
d0080d78:	6876      	ldr	r6, [r6, #4]
d0080d7a:	6800      	ldr	r0, [r0, #0]
d0080d7c:	f9b8 1000 	ldrsh.w	r1, [r8]
d0080d80:	9500      	str	r5, [sp, #0]
d0080d82:	69b5      	ldr	r5, [r6, #24]
d0080d84:	47a8      	blx	r5
d0080d86:	7b21      	ldrb	r1, [r4, #12]
d0080d88:	7b62      	ldrb	r2, [r4, #13]
d0080d8a:	2570      	movs	r5, #112	; 0x70
d0080d8c:	7ba0      	ldrb	r0, [r4, #14]
d0080d8e:	2340      	movs	r3, #64	; 0x40
d0080d90:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0080d94:	7be6      	ldrb	r6, [r4, #15]
d0080d96:	f8b8 1000 	ldrh.w	r1, [r8]
d0080d9a:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0080d9e:	226e      	movs	r2, #110	; 0x6e
d0080da0:	3104      	adds	r1, #4
d0080da2:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d0080da6:	483d      	ldr	r0, [pc, #244]	; (d0080e9c <do_bubbastix_playdemo_screensaver+0x264>)
d0080da8:	b209      	sxth	r1, r1
d0080daa:	6876      	ldr	r6, [r6, #4]
d0080dac:	9500      	str	r5, [sp, #0]
d0080dae:	69b5      	ldr	r5, [r6, #24]
d0080db0:	47a8      	blx	r5
d0080db2:	9b06      	ldr	r3, [sp, #24]
d0080db4:	6818      	ldr	r0, [r3, #0]
d0080db6:	9b03      	ldr	r3, [sp, #12]
d0080db8:	6a1b      	ldr	r3, [r3, #32]
d0080dba:	4283      	cmp	r3, r0
d0080dbc:	f000 8120 	beq.w	d0081000 <do_bubbastix_playdemo_screensaver+0x3c8>
d0080dc0:	7b26      	ldrb	r6, [r4, #12]
d0080dc2:	22bb      	movs	r2, #187	; 0xbb
d0080dc4:	7b63      	ldrb	r3, [r4, #13]
d0080dc6:	7ba5      	ldrb	r5, [r4, #14]
d0080dc8:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d0080dcc:	7be3      	ldrb	r3, [r4, #15]
d0080dce:	4f34      	ldr	r7, [pc, #208]	; (d0080ea0 <do_bubbastix_playdemo_screensaver+0x268>)
d0080dd0:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d0080dd4:	4e28      	ldr	r6, [pc, #160]	; (d0080e78 <do_bubbastix_playdemo_screensaver+0x240>)
d0080dd6:	f9ba 1000 	ldrsh.w	r1, [sl]
d0080dda:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0080dde:	7835      	ldrb	r5, [r6, #0]
d0080de0:	685e      	ldr	r6, [r3, #4]
d0080de2:	5d7f      	ldrb	r7, [r7, r5]
d0080de4:	4b2f      	ldr	r3, [pc, #188]	; (d0080ea4 <do_bubbastix_playdemo_screensaver+0x26c>)
d0080de6:	9700      	str	r7, [sp, #0]
d0080de8:	5d5b      	ldrb	r3, [r3, r5]
d0080dea:	69b5      	ldr	r5, [r6, #24]
d0080dec:	47a8      	blx	r5
d0080dee:	2700      	movs	r7, #0
d0080df0:	f04f 0850 	mov.w	r8, #80	; 0x50
d0080df4:	f8df 90c0 	ldr.w	r9, [pc, #192]	; d0080eb8 <do_bubbastix_playdemo_screensaver+0x280>
d0080df8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0080dfc:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080e00:	7b61      	ldrb	r1, [r4, #13]
d0080e02:	22f0      	movs	r2, #240	; 0xf0
d0080e04:	7ba6      	ldrb	r6, [r4, #14]
d0080e06:	4648      	mov	r0, r9
d0080e08:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0080e0c:	7be5      	ldrb	r5, [r4, #15]
d0080e0e:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d0080e12:	f8bb 1000 	ldrh.w	r1, [fp]
d0080e16:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0080e1a:	4439      	add	r1, r7
d0080e1c:	441f      	add	r7, r3
d0080e1e:	686d      	ldr	r5, [r5, #4]
d0080e20:	b209      	sxth	r1, r1
d0080e22:	f8cd 8000 	str.w	r8, [sp]
d0080e26:	69ad      	ldr	r5, [r5, #24]
d0080e28:	47a8      	blx	r5
d0080e2a:	f5b7 7f70 	cmp.w	r7, #960	; 0x3c0
d0080e2e:	d1e3      	bne.n	d0080df8 <do_bubbastix_playdemo_screensaver+0x1c0>
d0080e30:	7b23      	ldrb	r3, [r4, #12]
d0080e32:	2221      	movs	r2, #33	; 0x21
d0080e34:	7b60      	ldrb	r0, [r4, #13]
d0080e36:	9907      	ldr	r1, [sp, #28]
d0080e38:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0080e3c:	7ba0      	ldrb	r0, [r4, #14]
d0080e3e:	7be4      	ldrb	r4, [r4, #15]
d0080e40:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0080e44:	8809      	ldrh	r1, [r1, #0]
d0080e46:	4818      	ldr	r0, [pc, #96]	; (d0080ea8 <do_bubbastix_playdemo_screensaver+0x270>)
d0080e48:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d0080e4c:	8281      	strh	r1, [r0, #20]
d0080e4e:	685b      	ldr	r3, [r3, #4]
d0080e50:	82c2      	strh	r2, [r0, #22]
d0080e52:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0080e54:	b009      	add	sp, #36	; 0x24
d0080e56:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080e5a:	4718      	bx	r3
d0080e5c:	d009b948 	.word	0xd009b948
d0080e60:	d009b980 	.word	0xd009b980
d0080e64:	d009b8c8 	.word	0xd009b8c8
d0080e68:	d009b5a0 	.word	0xd009b5a0
d0080e6c:	d009b8c4 	.word	0xd009b8c4
d0080e70:	d009b8c0 	.word	0xd009b8c0
d0080e74:	d009b942 	.word	0xd009b942
d0080e78:	d009b8c2 	.word	0xd009b8c2
d0080e7c:	d009b8cc 	.word	0xd009b8cc
d0080e80:	d009b8c9 	.word	0xd009b8c9
d0080e84:	d009b8d0 	.word	0xd009b8d0
d0080e88:	d009b944 	.word	0xd009b944
d0080e8c:	d009b946 	.word	0xd009b946
d0080e90:	2001f000 	.word	0x2001f000
d0080e94:	d0093f2c 	.word	0xd0093f2c
d0080e98:	d009b4e0 	.word	0xd009b4e0
d0080e9c:	d008d0c8 	.word	0xd008d0c8
d0080ea0:	d0093f14 	.word	0xd0093f14
d0080ea4:	d0093f20 	.word	0xd0093f20
d0080ea8:	d009b960 	.word	0xd009b960
d0080eac:	d009b8d2 	.word	0xd009b8d2
d0080eb0:	d009b940 	.word	0xd009b940
d0080eb4:	d009b982 	.word	0xd009b982
d0080eb8:	d0086cc8 	.word	0xd0086cc8
d0080ebc:	323c      	adds	r2, #60	; 0x3c
d0080ebe:	f040 810b 	bne.w	d00810d8 <do_bubbastix_playdemo_screensaver+0x4a0>
d0080ec2:	f895 c000 	ldrb.w	ip, [r5]
d0080ec6:	4a8a      	ldr	r2, [pc, #552]	; (d00810f0 <do_bubbastix_playdemo_screensaver+0x4b8>)
d0080ec8:	f10c 0401 	add.w	r4, ip, #1
d0080ecc:	4989      	ldr	r1, [pc, #548]	; (d00810f4 <do_bubbastix_playdemo_screensaver+0x4bc>)
d0080ece:	9203      	str	r2, [sp, #12]
d0080ed0:	b2e4      	uxtb	r4, r4
d0080ed2:	6812      	ldr	r2, [r2, #0]
d0080ed4:	9106      	str	r1, [sp, #24]
d0080ed6:	600a      	str	r2, [r1, #0]
d0080ed8:	f103 01da 	add.w	r1, r3, #218	; 0xda
d0080edc:	b289      	uxth	r1, r1
d0080ede:	29da      	cmp	r1, #218	; 0xda
d0080ee0:	f200 80e5 	bhi.w	d00810ae <do_bubbastix_playdemo_screensaver+0x476>
d0080ee4:	9903      	ldr	r1, [sp, #12]
d0080ee6:	6a09      	ldr	r1, [r1, #32]
d0080ee8:	4291      	cmp	r1, r2
d0080eea:	f000 80cc 	beq.w	d0081086 <do_bubbastix_playdemo_screensaver+0x44e>
d0080eee:	4f82      	ldr	r7, [pc, #520]	; (d00810f8 <do_bubbastix_playdemo_screensaver+0x4c0>)
d0080ef0:	4e82      	ldr	r6, [pc, #520]	; (d00810fc <do_bubbastix_playdemo_screensaver+0x4c4>)
d0080ef2:	f8df b234 	ldr.w	fp, [pc, #564]	; d0081128 <do_bubbastix_playdemo_screensaver+0x4f0>
d0080ef6:	f8b7 9000 	ldrh.w	r9, [r7]
d0080efa:	4630      	mov	r0, r6
d0080efc:	f8bb a000 	ldrh.w	sl, [fp]
d0080f00:	f1a9 0802 	sub.w	r8, r9, #2
d0080f04:	9607      	str	r6, [sp, #28]
d0080f06:	8836      	ldrh	r6, [r6, #0]
d0080f08:	f1aa 0e03 	sub.w	lr, sl, #3
d0080f0c:	fa0f f888 	sxth.w	r8, r8
d0080f10:	3e05      	subs	r6, #5
d0080f12:	fa0f fe8e 	sxth.w	lr, lr
d0080f16:	f518 7f8e 	cmn.w	r8, #284	; 0x11c
d0080f1a:	f8a7 8000 	strh.w	r8, [r7]
d0080f1e:	b236      	sxth	r6, r6
d0080f20:	f8ab e000 	strh.w	lr, [fp]
d0080f24:	8006      	strh	r6, [r0, #0]
d0080f26:	da03      	bge.n	d0080f30 <do_bubbastix_playdemo_screensaver+0x2f8>
d0080f28:	f509 788d 	add.w	r8, r9, #282	; 0x11a
d0080f2c:	f8a7 8000 	strh.w	r8, [r7]
d0080f30:	3640      	adds	r6, #64	; 0x40
d0080f32:	da03      	bge.n	d0080f3c <do_bubbastix_playdemo_screensaver+0x304>
d0080f34:	f44f 7602 	mov.w	r6, #520	; 0x208
d0080f38:	9807      	ldr	r0, [sp, #28]
d0080f3a:	8006      	strh	r6, [r0, #0]
d0080f3c:	f51e 7fa0 	cmn.w	lr, #320	; 0x140
d0080f40:	da03      	bge.n	d0080f4a <do_bubbastix_playdemo_screensaver+0x312>
d0080f42:	f20a 1a3d 	addw	sl, sl, #317	; 0x13d
d0080f46:	f8ab a000 	strh.w	sl, [fp]
d0080f4a:	f1bc 0f03 	cmp.w	ip, #3
d0080f4e:	702c      	strb	r4, [r5, #0]
d0080f50:	f63f ae9a 	bhi.w	d0080c88 <do_bubbastix_playdemo_screensaver+0x50>
d0080f54:	4a6a      	ldr	r2, [pc, #424]	; (d0081100 <do_bubbastix_playdemo_screensaver+0x4c8>)
d0080f56:	496b      	ldr	r1, [pc, #428]	; (d0081104 <do_bubbastix_playdemo_screensaver+0x4cc>)
d0080f58:	9205      	str	r2, [sp, #20]
d0080f5a:	4a6b      	ldr	r2, [pc, #428]	; (d0081108 <do_bubbastix_playdemo_screensaver+0x4d0>)
d0080f5c:	f8df 81cc 	ldr.w	r8, [pc, #460]	; d008112c <do_bubbastix_playdemo_screensaver+0x4f4>
d0080f60:	9204      	str	r2, [sp, #16]
d0080f62:	780a      	ldrb	r2, [r1, #0]
d0080f64:	f8df a1c8 	ldr.w	sl, [pc, #456]	; d0081130 <do_bubbastix_playdemo_screensaver+0x4f8>
d0080f68:	2a03      	cmp	r2, #3
d0080f6a:	f67f aeb0 	bls.w	d0080cce <do_bubbastix_playdemo_screensaver+0x96>
d0080f6e:	9804      	ldr	r0, [sp, #16]
d0080f70:	2400      	movs	r4, #0
d0080f72:	7802      	ldrb	r2, [r0, #0]
d0080f74:	700c      	strb	r4, [r1, #0]
d0080f76:	2a02      	cmp	r2, #2
d0080f78:	d87c      	bhi.n	d0081074 <do_bubbastix_playdemo_screensaver+0x43c>
d0080f7a:	3201      	adds	r2, #1
d0080f7c:	b2d2      	uxtb	r2, r2
d0080f7e:	7002      	strb	r2, [r0, #0]
d0080f80:	4962      	ldr	r1, [pc, #392]	; (d008110c <do_bubbastix_playdemo_screensaver+0x4d4>)
d0080f82:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
d0080f86:	9905      	ldr	r1, [sp, #20]
d0080f88:	600a      	str	r2, [r1, #0]
d0080f8a:	e6a2      	b.n	d0080cd2 <do_bubbastix_playdemo_screensaver+0x9a>
d0080f8c:	4958      	ldr	r1, [pc, #352]	; (d00810f0 <do_bubbastix_playdemo_screensaver+0x4b8>)
d0080f8e:	2400      	movs	r4, #0
d0080f90:	4858      	ldr	r0, [pc, #352]	; (d00810f4 <do_bubbastix_playdemo_screensaver+0x4bc>)
d0080f92:	f64f 7e24 	movw	lr, #65316	; 0xff24
d0080f96:	680a      	ldr	r2, [r1, #0]
d0080f98:	2502      	movs	r5, #2
d0080f9a:	f8df 9198 	ldr.w	r9, [pc, #408]	; d0081134 <do_bubbastix_playdemo_screensaver+0x4fc>
d0080f9e:	27b3      	movs	r7, #179	; 0xb3
d0080fa0:	6002      	str	r2, [r0, #0]
d0080fa2:	f64f 7cce 	movw	ip, #65486	; 0xffce
d0080fa6:	9006      	str	r0, [sp, #24]
d0080fa8:	2601      	movs	r6, #1
d0080faa:	4855      	ldr	r0, [pc, #340]	; (d0081100 <do_bubbastix_playdemo_screensaver+0x4c8>)
d0080fac:	4b54      	ldr	r3, [pc, #336]	; (d0081100 <do_bubbastix_playdemo_screensaver+0x4c8>)
d0080fae:	f8c0 9000 	str.w	r9, [r0]
d0080fb2:	f8df 8184 	ldr.w	r8, [pc, #388]	; d0081138 <do_bubbastix_playdemo_screensaver+0x500>
d0080fb6:	4856      	ldr	r0, [pc, #344]	; (d0081110 <do_bubbastix_playdemo_screensaver+0x4d8>)
d0080fb8:	f888 4000 	strb.w	r4, [r8]
d0080fbc:	7004      	strb	r4, [r0, #0]
d0080fbe:	f8df 816c 	ldr.w	r8, [pc, #364]	; d008112c <do_bubbastix_playdemo_screensaver+0x4f4>
d0080fc2:	4851      	ldr	r0, [pc, #324]	; (d0081108 <do_bubbastix_playdemo_screensaver+0x4d0>)
d0080fc4:	9305      	str	r3, [sp, #20]
d0080fc6:	4b4f      	ldr	r3, [pc, #316]	; (d0081104 <do_bubbastix_playdemo_screensaver+0x4cc>)
d0080fc8:	7004      	strb	r4, [r0, #0]
d0080fca:	701c      	strb	r4, [r3, #0]
d0080fcc:	23b4      	movs	r3, #180	; 0xb4
d0080fce:	4c51      	ldr	r4, [pc, #324]	; (d0081114 <do_bubbastix_playdemo_screensaver+0x4dc>)
d0080fd0:	f8a8 e000 	strh.w	lr, [r8]
d0080fd4:	f8df e164 	ldr.w	lr, [pc, #356]	; d008113c <do_bubbastix_playdemo_screensaver+0x504>
d0080fd8:	8025      	strh	r5, [r4, #0]
d0080fda:	f8df a154 	ldr.w	sl, [pc, #340]	; d0081130 <do_bubbastix_playdemo_screensaver+0x4f8>
d0080fde:	4c4e      	ldr	r4, [pc, #312]	; (d0081118 <do_bubbastix_playdemo_screensaver+0x4e0>)
d0080fe0:	9004      	str	r0, [sp, #16]
d0080fe2:	f8ae 5000 	strh.w	r5, [lr]
d0080fe6:	4845      	ldr	r0, [pc, #276]	; (d00810fc <do_bubbastix_playdemo_screensaver+0x4c4>)
d0080fe8:	4d4c      	ldr	r5, [pc, #304]	; (d008111c <do_bubbastix_playdemo_screensaver+0x4e4>)
d0080fea:	9103      	str	r1, [sp, #12]
d0080fec:	8027      	strh	r7, [r4, #0]
d0080fee:	6a09      	ldr	r1, [r1, #32]
d0080ff0:	4f41      	ldr	r7, [pc, #260]	; (d00810f8 <do_bubbastix_playdemo_screensaver+0x4c0>)
d0080ff2:	f8df b134 	ldr.w	fp, [pc, #308]	; d0081128 <do_bubbastix_playdemo_screensaver+0x4f0>
d0080ff6:	f8aa c000 	strh.w	ip, [sl]
d0080ffa:	702e      	strb	r6, [r5, #0]
d0080ffc:	9007      	str	r0, [sp, #28]
d0080ffe:	e65f      	b.n	d0080cc0 <do_bubbastix_playdemo_screensaver+0x88>
d0081000:	7b22      	ldrb	r2, [r4, #12]
d0081002:	2610      	movs	r6, #16
d0081004:	7b65      	ldrb	r5, [r4, #13]
d0081006:	2328      	movs	r3, #40	; 0x28
d0081008:	7ba0      	ldrb	r0, [r4, #14]
d008100a:	2745      	movs	r7, #69	; 0x45
d008100c:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
d0081010:	7be5      	ldrb	r5, [r4, #15]
d0081012:	f8b8 1000 	ldrh.w	r1, [r8]
d0081016:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d008101a:	22de      	movs	r2, #222	; 0xde
d008101c:	4431      	add	r1, r6
d008101e:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d0081022:	483f      	ldr	r0, [pc, #252]	; (d0081120 <do_bubbastix_playdemo_screensaver+0x4e8>)
d0081024:	b209      	sxth	r1, r1
d0081026:	686d      	ldr	r5, [r5, #4]
d0081028:	9600      	str	r6, [sp, #0]
d008102a:	69ad      	ldr	r5, [r5, #24]
d008102c:	47a8      	blx	r5
d008102e:	7b22      	ldrb	r2, [r4, #12]
d0081030:	7b60      	ldrb	r0, [r4, #13]
d0081032:	2318      	movs	r3, #24
d0081034:	7ba6      	ldrb	r6, [r4, #14]
d0081036:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d008103a:	7be5      	ldrb	r5, [r4, #15]
d008103c:	f9ba 1000 	ldrsh.w	r1, [sl]
d0081040:	22bb      	movs	r2, #187	; 0xbb
d0081042:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0081046:	4837      	ldr	r0, [pc, #220]	; (d0081124 <do_bubbastix_playdemo_screensaver+0x4ec>)
d0081048:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d008104c:	686d      	ldr	r5, [r5, #4]
d008104e:	9700      	str	r7, [sp, #0]
d0081050:	69ad      	ldr	r5, [r5, #24]
d0081052:	47a8      	blx	r5
d0081054:	e6cb      	b.n	d0080dee <do_bubbastix_playdemo_screensaver+0x1b6>
d0081056:	4291      	cmp	r1, r2
d0081058:	4664      	mov	r4, ip
d008105a:	f886 c000 	strb.w	ip, [r6]
d008105e:	f47f ae22 	bne.w	d0080ca6 <do_bubbastix_playdemo_screensaver+0x6e>
d0081062:	4b27      	ldr	r3, [pc, #156]	; (d0081100 <do_bubbastix_playdemo_screensaver+0x4c8>)
d0081064:	f8df 80c4 	ldr.w	r8, [pc, #196]	; d008112c <do_bubbastix_playdemo_screensaver+0x4f4>
d0081068:	9305      	str	r3, [sp, #20]
d008106a:	4b27      	ldr	r3, [pc, #156]	; (d0081108 <do_bubbastix_playdemo_screensaver+0x4d0>)
d008106c:	f8df a0c0 	ldr.w	sl, [pc, #192]	; d0081130 <do_bubbastix_playdemo_screensaver+0x4f8>
d0081070:	9304      	str	r3, [sp, #16]
d0081072:	e64e      	b.n	d0080d12 <do_bubbastix_playdemo_screensaver+0xda>
d0081074:	4622      	mov	r2, r4
d0081076:	7004      	strb	r4, [r0, #0]
d0081078:	e782      	b.n	d0080f80 <do_bubbastix_playdemo_screensaver+0x348>
d008107a:	4a25      	ldr	r2, [pc, #148]	; (d0081110 <do_bubbastix_playdemo_screensaver+0x4d8>)
d008107c:	7813      	ldrb	r3, [r2, #0]
d008107e:	f043 0301 	orr.w	r3, r3, #1
d0081082:	7013      	strb	r3, [r2, #0]
d0081084:	e645      	b.n	d0080d12 <do_bubbastix_playdemo_screensaver+0xda>
d0081086:	f1bc 0f03 	cmp.w	ip, #3
d008108a:	4611      	mov	r1, r2
d008108c:	702c      	strb	r4, [r5, #0]
d008108e:	f63f adf6 	bhi.w	d0080c7e <do_bubbastix_playdemo_screensaver+0x46>
d0081092:	4b1b      	ldr	r3, [pc, #108]	; (d0081100 <do_bubbastix_playdemo_screensaver+0x4c8>)
d0081094:	f8df 8094 	ldr.w	r8, [pc, #148]	; d008112c <do_bubbastix_playdemo_screensaver+0x4f4>
d0081098:	9305      	str	r3, [sp, #20]
d008109a:	4b1b      	ldr	r3, [pc, #108]	; (d0081108 <do_bubbastix_playdemo_screensaver+0x4d0>)
d008109c:	f8df a090 	ldr.w	sl, [pc, #144]	; d0081130 <do_bubbastix_playdemo_screensaver+0x4f8>
d00810a0:	9304      	str	r3, [sp, #16]
d00810a2:	4b16      	ldr	r3, [pc, #88]	; (d00810fc <do_bubbastix_playdemo_screensaver+0x4c4>)
d00810a4:	4f14      	ldr	r7, [pc, #80]	; (d00810f8 <do_bubbastix_playdemo_screensaver+0x4c0>)
d00810a6:	f8df b080 	ldr.w	fp, [pc, #128]	; d0081128 <do_bubbastix_playdemo_screensaver+0x4f0>
d00810aa:	9307      	str	r3, [sp, #28]
d00810ac:	e631      	b.n	d0080d12 <do_bubbastix_playdemo_screensaver+0xda>
d00810ae:	9903      	ldr	r1, [sp, #12]
d00810b0:	f1bc 0f03 	cmp.w	ip, #3
d00810b4:	702c      	strb	r4, [r5, #0]
d00810b6:	6a09      	ldr	r1, [r1, #32]
d00810b8:	f63f ade1 	bhi.w	d0080c7e <do_bubbastix_playdemo_screensaver+0x46>
d00810bc:	4810      	ldr	r0, [pc, #64]	; (d0081100 <do_bubbastix_playdemo_screensaver+0x4c8>)
d00810be:	f8df 806c 	ldr.w	r8, [pc, #108]	; d008112c <do_bubbastix_playdemo_screensaver+0x4f4>
d00810c2:	9005      	str	r0, [sp, #20]
d00810c4:	4810      	ldr	r0, [pc, #64]	; (d0081108 <do_bubbastix_playdemo_screensaver+0x4d0>)
d00810c6:	f8df a068 	ldr.w	sl, [pc, #104]	; d0081130 <do_bubbastix_playdemo_screensaver+0x4f8>
d00810ca:	9004      	str	r0, [sp, #16]
d00810cc:	480b      	ldr	r0, [pc, #44]	; (d00810fc <do_bubbastix_playdemo_screensaver+0x4c4>)
d00810ce:	4f0a      	ldr	r7, [pc, #40]	; (d00810f8 <do_bubbastix_playdemo_screensaver+0x4c0>)
d00810d0:	f8df b054 	ldr.w	fp, [pc, #84]	; d0081128 <do_bubbastix_playdemo_screensaver+0x4f0>
d00810d4:	9007      	str	r0, [sp, #28]
d00810d6:	e5f3      	b.n	d0080cc0 <do_bubbastix_playdemo_screensaver+0x88>
d00810d8:	f895 c000 	ldrb.w	ip, [r5]
d00810dc:	4a05      	ldr	r2, [pc, #20]	; (d00810f4 <do_bubbastix_playdemo_screensaver+0x4bc>)
d00810de:	f10c 0401 	add.w	r4, ip, #1
d00810e2:	4903      	ldr	r1, [pc, #12]	; (d00810f0 <do_bubbastix_playdemo_screensaver+0x4b8>)
d00810e4:	9206      	str	r2, [sp, #24]
d00810e6:	b2e4      	uxtb	r4, r4
d00810e8:	6812      	ldr	r2, [r2, #0]
d00810ea:	9103      	str	r1, [sp, #12]
d00810ec:	e6f4      	b.n	d0080ed8 <do_bubbastix_playdemo_screensaver+0x2a0>
d00810ee:	bf00      	nop
d00810f0:	d009b5a0 	.word	0xd009b5a0
d00810f4:	d009b8c4 	.word	0xd009b8c4
d00810f8:	d009b942 	.word	0xd009b942
d00810fc:	d009b8c0 	.word	0xd009b8c0
d0081100:	d009b8cc 	.word	0xd009b8cc
d0081104:	d009b8d0 	.word	0xd009b8d0
d0081108:	d009b8c9 	.word	0xd009b8c9
d008110c:	d009b5e0 	.word	0xd009b5e0
d0081110:	d009b948 	.word	0xd009b948
d0081114:	d009b946 	.word	0xd009b946
d0081118:	d009b980 	.word	0xd009b980
d008111c:	d009b8c8 	.word	0xd009b8c8
d0081120:	d0084e28 	.word	0xd0084e28
d0081124:	d008ecc8 	.word	0xd008ecc8
d0081128:	d009b8d2 	.word	0xd009b8d2
d008112c:	d009b940 	.word	0xd009b940
d0081130:	d009b982 	.word	0xd009b982
d0081134:	d0082d68 	.word	0xd0082d68
d0081138:	d009b8c2 	.word	0xd009b8c2
d008113c:	d009b944 	.word	0xd009b944

d0081140 <__errno>:
d0081140:	4b01      	ldr	r3, [pc, #4]	; (d0081148 <__errno+0x8>)
d0081142:	6818      	ldr	r0, [r3, #0]
d0081144:	4770      	bx	lr
d0081146:	bf00      	nop
d0081148:	d009b5f0 	.word	0xd009b5f0

d008114c <malloc>:
d008114c:	4b02      	ldr	r3, [pc, #8]	; (d0081158 <malloc+0xc>)
d008114e:	4601      	mov	r1, r0
d0081150:	6818      	ldr	r0, [r3, #0]
d0081152:	f000 b85b 	b.w	d008120c <_malloc_r>
d0081156:	bf00      	nop
d0081158:	d009b5f0 	.word	0xd009b5f0

d008115c <memset>:
d008115c:	4402      	add	r2, r0
d008115e:	4603      	mov	r3, r0
d0081160:	4293      	cmp	r3, r2
d0081162:	d100      	bne.n	d0081166 <memset+0xa>
d0081164:	4770      	bx	lr
d0081166:	f803 1b01 	strb.w	r1, [r3], #1
d008116a:	e7f9      	b.n	d0081160 <memset+0x4>

d008116c <_free_r>:
d008116c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d008116e:	2900      	cmp	r1, #0
d0081170:	d048      	beq.n	d0081204 <_free_r+0x98>
d0081172:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0081176:	9001      	str	r0, [sp, #4]
d0081178:	2b00      	cmp	r3, #0
d008117a:	f1a1 0404 	sub.w	r4, r1, #4
d008117e:	bfb8      	it	lt
d0081180:	18e4      	addlt	r4, r4, r3
d0081182:	f000 fcbf 	bl	d0081b04 <__malloc_lock>
d0081186:	4a20      	ldr	r2, [pc, #128]	; (d0081208 <_free_r+0x9c>)
d0081188:	9801      	ldr	r0, [sp, #4]
d008118a:	6813      	ldr	r3, [r2, #0]
d008118c:	4615      	mov	r5, r2
d008118e:	b933      	cbnz	r3, d008119e <_free_r+0x32>
d0081190:	6063      	str	r3, [r4, #4]
d0081192:	6014      	str	r4, [r2, #0]
d0081194:	b003      	add	sp, #12
d0081196:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d008119a:	f000 bcb9 	b.w	d0081b10 <__malloc_unlock>
d008119e:	42a3      	cmp	r3, r4
d00811a0:	d90b      	bls.n	d00811ba <_free_r+0x4e>
d00811a2:	6821      	ldr	r1, [r4, #0]
d00811a4:	1862      	adds	r2, r4, r1
d00811a6:	4293      	cmp	r3, r2
d00811a8:	bf04      	itt	eq
d00811aa:	681a      	ldreq	r2, [r3, #0]
d00811ac:	685b      	ldreq	r3, [r3, #4]
d00811ae:	6063      	str	r3, [r4, #4]
d00811b0:	bf04      	itt	eq
d00811b2:	1852      	addeq	r2, r2, r1
d00811b4:	6022      	streq	r2, [r4, #0]
d00811b6:	602c      	str	r4, [r5, #0]
d00811b8:	e7ec      	b.n	d0081194 <_free_r+0x28>
d00811ba:	461a      	mov	r2, r3
d00811bc:	685b      	ldr	r3, [r3, #4]
d00811be:	b10b      	cbz	r3, d00811c4 <_free_r+0x58>
d00811c0:	42a3      	cmp	r3, r4
d00811c2:	d9fa      	bls.n	d00811ba <_free_r+0x4e>
d00811c4:	6811      	ldr	r1, [r2, #0]
d00811c6:	1855      	adds	r5, r2, r1
d00811c8:	42a5      	cmp	r5, r4
d00811ca:	d10b      	bne.n	d00811e4 <_free_r+0x78>
d00811cc:	6824      	ldr	r4, [r4, #0]
d00811ce:	4421      	add	r1, r4
d00811d0:	1854      	adds	r4, r2, r1
d00811d2:	42a3      	cmp	r3, r4
d00811d4:	6011      	str	r1, [r2, #0]
d00811d6:	d1dd      	bne.n	d0081194 <_free_r+0x28>
d00811d8:	681c      	ldr	r4, [r3, #0]
d00811da:	685b      	ldr	r3, [r3, #4]
d00811dc:	6053      	str	r3, [r2, #4]
d00811de:	4421      	add	r1, r4
d00811e0:	6011      	str	r1, [r2, #0]
d00811e2:	e7d7      	b.n	d0081194 <_free_r+0x28>
d00811e4:	d902      	bls.n	d00811ec <_free_r+0x80>
d00811e6:	230c      	movs	r3, #12
d00811e8:	6003      	str	r3, [r0, #0]
d00811ea:	e7d3      	b.n	d0081194 <_free_r+0x28>
d00811ec:	6825      	ldr	r5, [r4, #0]
d00811ee:	1961      	adds	r1, r4, r5
d00811f0:	428b      	cmp	r3, r1
d00811f2:	bf04      	itt	eq
d00811f4:	6819      	ldreq	r1, [r3, #0]
d00811f6:	685b      	ldreq	r3, [r3, #4]
d00811f8:	6063      	str	r3, [r4, #4]
d00811fa:	bf04      	itt	eq
d00811fc:	1949      	addeq	r1, r1, r5
d00811fe:	6021      	streq	r1, [r4, #0]
d0081200:	6054      	str	r4, [r2, #4]
d0081202:	e7c7      	b.n	d0081194 <_free_r+0x28>
d0081204:	b003      	add	sp, #12
d0081206:	bd30      	pop	{r4, r5, pc}
d0081208:	d009b8d4 	.word	0xd009b8d4

d008120c <_malloc_r>:
d008120c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008120e:	1ccd      	adds	r5, r1, #3
d0081210:	f025 0503 	bic.w	r5, r5, #3
d0081214:	3508      	adds	r5, #8
d0081216:	2d0c      	cmp	r5, #12
d0081218:	bf38      	it	cc
d008121a:	250c      	movcc	r5, #12
d008121c:	2d00      	cmp	r5, #0
d008121e:	4606      	mov	r6, r0
d0081220:	db01      	blt.n	d0081226 <_malloc_r+0x1a>
d0081222:	42a9      	cmp	r1, r5
d0081224:	d903      	bls.n	d008122e <_malloc_r+0x22>
d0081226:	230c      	movs	r3, #12
d0081228:	6033      	str	r3, [r6, #0]
d008122a:	2000      	movs	r0, #0
d008122c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008122e:	f000 fc69 	bl	d0081b04 <__malloc_lock>
d0081232:	4921      	ldr	r1, [pc, #132]	; (d00812b8 <_malloc_r+0xac>)
d0081234:	680a      	ldr	r2, [r1, #0]
d0081236:	4614      	mov	r4, r2
d0081238:	b99c      	cbnz	r4, d0081262 <_malloc_r+0x56>
d008123a:	4f20      	ldr	r7, [pc, #128]	; (d00812bc <_malloc_r+0xb0>)
d008123c:	683b      	ldr	r3, [r7, #0]
d008123e:	b923      	cbnz	r3, d008124a <_malloc_r+0x3e>
d0081240:	4621      	mov	r1, r4
d0081242:	4630      	mov	r0, r6
d0081244:	f7ff f840 	bl	d00802c8 <_sbrk_r>
d0081248:	6038      	str	r0, [r7, #0]
d008124a:	4629      	mov	r1, r5
d008124c:	4630      	mov	r0, r6
d008124e:	f7ff f83b 	bl	d00802c8 <_sbrk_r>
d0081252:	1c43      	adds	r3, r0, #1
d0081254:	d123      	bne.n	d008129e <_malloc_r+0x92>
d0081256:	230c      	movs	r3, #12
d0081258:	6033      	str	r3, [r6, #0]
d008125a:	4630      	mov	r0, r6
d008125c:	f000 fc58 	bl	d0081b10 <__malloc_unlock>
d0081260:	e7e3      	b.n	d008122a <_malloc_r+0x1e>
d0081262:	6823      	ldr	r3, [r4, #0]
d0081264:	1b5b      	subs	r3, r3, r5
d0081266:	d417      	bmi.n	d0081298 <_malloc_r+0x8c>
d0081268:	2b0b      	cmp	r3, #11
d008126a:	d903      	bls.n	d0081274 <_malloc_r+0x68>
d008126c:	6023      	str	r3, [r4, #0]
d008126e:	441c      	add	r4, r3
d0081270:	6025      	str	r5, [r4, #0]
d0081272:	e004      	b.n	d008127e <_malloc_r+0x72>
d0081274:	6863      	ldr	r3, [r4, #4]
d0081276:	42a2      	cmp	r2, r4
d0081278:	bf0c      	ite	eq
d008127a:	600b      	streq	r3, [r1, #0]
d008127c:	6053      	strne	r3, [r2, #4]
d008127e:	4630      	mov	r0, r6
d0081280:	f000 fc46 	bl	d0081b10 <__malloc_unlock>
d0081284:	f104 000b 	add.w	r0, r4, #11
d0081288:	1d23      	adds	r3, r4, #4
d008128a:	f020 0007 	bic.w	r0, r0, #7
d008128e:	1ac2      	subs	r2, r0, r3
d0081290:	d0cc      	beq.n	d008122c <_malloc_r+0x20>
d0081292:	1a1b      	subs	r3, r3, r0
d0081294:	50a3      	str	r3, [r4, r2]
d0081296:	e7c9      	b.n	d008122c <_malloc_r+0x20>
d0081298:	4622      	mov	r2, r4
d008129a:	6864      	ldr	r4, [r4, #4]
d008129c:	e7cc      	b.n	d0081238 <_malloc_r+0x2c>
d008129e:	1cc4      	adds	r4, r0, #3
d00812a0:	f024 0403 	bic.w	r4, r4, #3
d00812a4:	42a0      	cmp	r0, r4
d00812a6:	d0e3      	beq.n	d0081270 <_malloc_r+0x64>
d00812a8:	1a21      	subs	r1, r4, r0
d00812aa:	4630      	mov	r0, r6
d00812ac:	f7ff f80c 	bl	d00802c8 <_sbrk_r>
d00812b0:	3001      	adds	r0, #1
d00812b2:	d1dd      	bne.n	d0081270 <_malloc_r+0x64>
d00812b4:	e7cf      	b.n	d0081256 <_malloc_r+0x4a>
d00812b6:	bf00      	nop
d00812b8:	d009b8d4 	.word	0xd009b8d4
d00812bc:	d009b8d8 	.word	0xd009b8d8

d00812c0 <_puts_r>:
d00812c0:	b570      	push	{r4, r5, r6, lr}
d00812c2:	460e      	mov	r6, r1
d00812c4:	4605      	mov	r5, r0
d00812c6:	b118      	cbz	r0, d00812d0 <_puts_r+0x10>
d00812c8:	6983      	ldr	r3, [r0, #24]
d00812ca:	b90b      	cbnz	r3, d00812d0 <_puts_r+0x10>
d00812cc:	f000 fb16 	bl	d00818fc <__sinit>
d00812d0:	69ab      	ldr	r3, [r5, #24]
d00812d2:	68ac      	ldr	r4, [r5, #8]
d00812d4:	b913      	cbnz	r3, d00812dc <_puts_r+0x1c>
d00812d6:	4628      	mov	r0, r5
d00812d8:	f000 fb10 	bl	d00818fc <__sinit>
d00812dc:	4b2c      	ldr	r3, [pc, #176]	; (d0081390 <_puts_r+0xd0>)
d00812de:	429c      	cmp	r4, r3
d00812e0:	d120      	bne.n	d0081324 <_puts_r+0x64>
d00812e2:	686c      	ldr	r4, [r5, #4]
d00812e4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00812e6:	07db      	lsls	r3, r3, #31
d00812e8:	d405      	bmi.n	d00812f6 <_puts_r+0x36>
d00812ea:	89a3      	ldrh	r3, [r4, #12]
d00812ec:	0598      	lsls	r0, r3, #22
d00812ee:	d402      	bmi.n	d00812f6 <_puts_r+0x36>
d00812f0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00812f2:	f000 fba1 	bl	d0081a38 <__retarget_lock_acquire_recursive>
d00812f6:	89a3      	ldrh	r3, [r4, #12]
d00812f8:	0719      	lsls	r1, r3, #28
d00812fa:	d51d      	bpl.n	d0081338 <_puts_r+0x78>
d00812fc:	6923      	ldr	r3, [r4, #16]
d00812fe:	b1db      	cbz	r3, d0081338 <_puts_r+0x78>
d0081300:	3e01      	subs	r6, #1
d0081302:	68a3      	ldr	r3, [r4, #8]
d0081304:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d0081308:	3b01      	subs	r3, #1
d008130a:	60a3      	str	r3, [r4, #8]
d008130c:	bb39      	cbnz	r1, d008135e <_puts_r+0x9e>
d008130e:	2b00      	cmp	r3, #0
d0081310:	da38      	bge.n	d0081384 <_puts_r+0xc4>
d0081312:	4622      	mov	r2, r4
d0081314:	210a      	movs	r1, #10
d0081316:	4628      	mov	r0, r5
d0081318:	f000 f916 	bl	d0081548 <__swbuf_r>
d008131c:	3001      	adds	r0, #1
d008131e:	d011      	beq.n	d0081344 <_puts_r+0x84>
d0081320:	250a      	movs	r5, #10
d0081322:	e011      	b.n	d0081348 <_puts_r+0x88>
d0081324:	4b1b      	ldr	r3, [pc, #108]	; (d0081394 <_puts_r+0xd4>)
d0081326:	429c      	cmp	r4, r3
d0081328:	d101      	bne.n	d008132e <_puts_r+0x6e>
d008132a:	68ac      	ldr	r4, [r5, #8]
d008132c:	e7da      	b.n	d00812e4 <_puts_r+0x24>
d008132e:	4b1a      	ldr	r3, [pc, #104]	; (d0081398 <_puts_r+0xd8>)
d0081330:	429c      	cmp	r4, r3
d0081332:	bf08      	it	eq
d0081334:	68ec      	ldreq	r4, [r5, #12]
d0081336:	e7d5      	b.n	d00812e4 <_puts_r+0x24>
d0081338:	4621      	mov	r1, r4
d008133a:	4628      	mov	r0, r5
d008133c:	f000 f956 	bl	d00815ec <__swsetup_r>
d0081340:	2800      	cmp	r0, #0
d0081342:	d0dd      	beq.n	d0081300 <_puts_r+0x40>
d0081344:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081348:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008134a:	07da      	lsls	r2, r3, #31
d008134c:	d405      	bmi.n	d008135a <_puts_r+0x9a>
d008134e:	89a3      	ldrh	r3, [r4, #12]
d0081350:	059b      	lsls	r3, r3, #22
d0081352:	d402      	bmi.n	d008135a <_puts_r+0x9a>
d0081354:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081356:	f000 fb70 	bl	d0081a3a <__retarget_lock_release_recursive>
d008135a:	4628      	mov	r0, r5
d008135c:	bd70      	pop	{r4, r5, r6, pc}
d008135e:	2b00      	cmp	r3, #0
d0081360:	da04      	bge.n	d008136c <_puts_r+0xac>
d0081362:	69a2      	ldr	r2, [r4, #24]
d0081364:	429a      	cmp	r2, r3
d0081366:	dc06      	bgt.n	d0081376 <_puts_r+0xb6>
d0081368:	290a      	cmp	r1, #10
d008136a:	d004      	beq.n	d0081376 <_puts_r+0xb6>
d008136c:	6823      	ldr	r3, [r4, #0]
d008136e:	1c5a      	adds	r2, r3, #1
d0081370:	6022      	str	r2, [r4, #0]
d0081372:	7019      	strb	r1, [r3, #0]
d0081374:	e7c5      	b.n	d0081302 <_puts_r+0x42>
d0081376:	4622      	mov	r2, r4
d0081378:	4628      	mov	r0, r5
d008137a:	f000 f8e5 	bl	d0081548 <__swbuf_r>
d008137e:	3001      	adds	r0, #1
d0081380:	d1bf      	bne.n	d0081302 <_puts_r+0x42>
d0081382:	e7df      	b.n	d0081344 <_puts_r+0x84>
d0081384:	6823      	ldr	r3, [r4, #0]
d0081386:	250a      	movs	r5, #10
d0081388:	1c5a      	adds	r2, r3, #1
d008138a:	6022      	str	r2, [r4, #0]
d008138c:	701d      	strb	r5, [r3, #0]
d008138e:	e7db      	b.n	d0081348 <_puts_r+0x88>
d0081390:	d009b508 	.word	0xd009b508
d0081394:	d009b528 	.word	0xd009b528
d0081398:	d009b4e8 	.word	0xd009b4e8

d008139c <puts>:
d008139c:	4b02      	ldr	r3, [pc, #8]	; (d00813a8 <puts+0xc>)
d008139e:	4601      	mov	r1, r0
d00813a0:	6818      	ldr	r0, [r3, #0]
d00813a2:	f7ff bf8d 	b.w	d00812c0 <_puts_r>
d00813a6:	bf00      	nop
d00813a8:	d009b5f0 	.word	0xd009b5f0

d00813ac <setbuf>:
d00813ac:	2900      	cmp	r1, #0
d00813ae:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00813b2:	bf0c      	ite	eq
d00813b4:	2202      	moveq	r2, #2
d00813b6:	2200      	movne	r2, #0
d00813b8:	f000 b800 	b.w	d00813bc <setvbuf>

d00813bc <setvbuf>:
d00813bc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00813c0:	461d      	mov	r5, r3
d00813c2:	4b5d      	ldr	r3, [pc, #372]	; (d0081538 <setvbuf+0x17c>)
d00813c4:	681f      	ldr	r7, [r3, #0]
d00813c6:	4604      	mov	r4, r0
d00813c8:	460e      	mov	r6, r1
d00813ca:	4690      	mov	r8, r2
d00813cc:	b127      	cbz	r7, d00813d8 <setvbuf+0x1c>
d00813ce:	69bb      	ldr	r3, [r7, #24]
d00813d0:	b913      	cbnz	r3, d00813d8 <setvbuf+0x1c>
d00813d2:	4638      	mov	r0, r7
d00813d4:	f000 fa92 	bl	d00818fc <__sinit>
d00813d8:	4b58      	ldr	r3, [pc, #352]	; (d008153c <setvbuf+0x180>)
d00813da:	429c      	cmp	r4, r3
d00813dc:	d167      	bne.n	d00814ae <setvbuf+0xf2>
d00813de:	687c      	ldr	r4, [r7, #4]
d00813e0:	f1b8 0f02 	cmp.w	r8, #2
d00813e4:	d006      	beq.n	d00813f4 <setvbuf+0x38>
d00813e6:	f1b8 0f01 	cmp.w	r8, #1
d00813ea:	f200 809f 	bhi.w	d008152c <setvbuf+0x170>
d00813ee:	2d00      	cmp	r5, #0
d00813f0:	f2c0 809c 	blt.w	d008152c <setvbuf+0x170>
d00813f4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00813f6:	07db      	lsls	r3, r3, #31
d00813f8:	d405      	bmi.n	d0081406 <setvbuf+0x4a>
d00813fa:	89a3      	ldrh	r3, [r4, #12]
d00813fc:	0598      	lsls	r0, r3, #22
d00813fe:	d402      	bmi.n	d0081406 <setvbuf+0x4a>
d0081400:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081402:	f000 fb19 	bl	d0081a38 <__retarget_lock_acquire_recursive>
d0081406:	4621      	mov	r1, r4
d0081408:	4638      	mov	r0, r7
d008140a:	f000 f9e3 	bl	d00817d4 <_fflush_r>
d008140e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081410:	b141      	cbz	r1, d0081424 <setvbuf+0x68>
d0081412:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081416:	4299      	cmp	r1, r3
d0081418:	d002      	beq.n	d0081420 <setvbuf+0x64>
d008141a:	4638      	mov	r0, r7
d008141c:	f7ff fea6 	bl	d008116c <_free_r>
d0081420:	2300      	movs	r3, #0
d0081422:	6363      	str	r3, [r4, #52]	; 0x34
d0081424:	2300      	movs	r3, #0
d0081426:	61a3      	str	r3, [r4, #24]
d0081428:	6063      	str	r3, [r4, #4]
d008142a:	89a3      	ldrh	r3, [r4, #12]
d008142c:	0619      	lsls	r1, r3, #24
d008142e:	d503      	bpl.n	d0081438 <setvbuf+0x7c>
d0081430:	6921      	ldr	r1, [r4, #16]
d0081432:	4638      	mov	r0, r7
d0081434:	f7ff fe9a 	bl	d008116c <_free_r>
d0081438:	89a3      	ldrh	r3, [r4, #12]
d008143a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d008143e:	f023 0303 	bic.w	r3, r3, #3
d0081442:	f1b8 0f02 	cmp.w	r8, #2
d0081446:	81a3      	strh	r3, [r4, #12]
d0081448:	d06c      	beq.n	d0081524 <setvbuf+0x168>
d008144a:	ab01      	add	r3, sp, #4
d008144c:	466a      	mov	r2, sp
d008144e:	4621      	mov	r1, r4
d0081450:	4638      	mov	r0, r7
d0081452:	f000 faf3 	bl	d0081a3c <__swhatbuf_r>
d0081456:	89a3      	ldrh	r3, [r4, #12]
d0081458:	4318      	orrs	r0, r3
d008145a:	81a0      	strh	r0, [r4, #12]
d008145c:	2d00      	cmp	r5, #0
d008145e:	d130      	bne.n	d00814c2 <setvbuf+0x106>
d0081460:	9d00      	ldr	r5, [sp, #0]
d0081462:	4628      	mov	r0, r5
d0081464:	f7ff fe72 	bl	d008114c <malloc>
d0081468:	4606      	mov	r6, r0
d008146a:	2800      	cmp	r0, #0
d008146c:	d155      	bne.n	d008151a <setvbuf+0x15e>
d008146e:	f8dd 9000 	ldr.w	r9, [sp]
d0081472:	45a9      	cmp	r9, r5
d0081474:	d14a      	bne.n	d008150c <setvbuf+0x150>
d0081476:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008147a:	2200      	movs	r2, #0
d008147c:	60a2      	str	r2, [r4, #8]
d008147e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0081482:	6022      	str	r2, [r4, #0]
d0081484:	6122      	str	r2, [r4, #16]
d0081486:	2201      	movs	r2, #1
d0081488:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008148c:	6162      	str	r2, [r4, #20]
d008148e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081490:	f043 0302 	orr.w	r3, r3, #2
d0081494:	07d2      	lsls	r2, r2, #31
d0081496:	81a3      	strh	r3, [r4, #12]
d0081498:	d405      	bmi.n	d00814a6 <setvbuf+0xea>
d008149a:	f413 7f00 	tst.w	r3, #512	; 0x200
d008149e:	d102      	bne.n	d00814a6 <setvbuf+0xea>
d00814a0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00814a2:	f000 faca 	bl	d0081a3a <__retarget_lock_release_recursive>
d00814a6:	4628      	mov	r0, r5
d00814a8:	b003      	add	sp, #12
d00814aa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00814ae:	4b24      	ldr	r3, [pc, #144]	; (d0081540 <setvbuf+0x184>)
d00814b0:	429c      	cmp	r4, r3
d00814b2:	d101      	bne.n	d00814b8 <setvbuf+0xfc>
d00814b4:	68bc      	ldr	r4, [r7, #8]
d00814b6:	e793      	b.n	d00813e0 <setvbuf+0x24>
d00814b8:	4b22      	ldr	r3, [pc, #136]	; (d0081544 <setvbuf+0x188>)
d00814ba:	429c      	cmp	r4, r3
d00814bc:	bf08      	it	eq
d00814be:	68fc      	ldreq	r4, [r7, #12]
d00814c0:	e78e      	b.n	d00813e0 <setvbuf+0x24>
d00814c2:	2e00      	cmp	r6, #0
d00814c4:	d0cd      	beq.n	d0081462 <setvbuf+0xa6>
d00814c6:	69bb      	ldr	r3, [r7, #24]
d00814c8:	b913      	cbnz	r3, d00814d0 <setvbuf+0x114>
d00814ca:	4638      	mov	r0, r7
d00814cc:	f000 fa16 	bl	d00818fc <__sinit>
d00814d0:	f1b8 0f01 	cmp.w	r8, #1
d00814d4:	bf08      	it	eq
d00814d6:	89a3      	ldrheq	r3, [r4, #12]
d00814d8:	6026      	str	r6, [r4, #0]
d00814da:	bf04      	itt	eq
d00814dc:	f043 0301 	orreq.w	r3, r3, #1
d00814e0:	81a3      	strheq	r3, [r4, #12]
d00814e2:	89a2      	ldrh	r2, [r4, #12]
d00814e4:	f012 0308 	ands.w	r3, r2, #8
d00814e8:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00814ec:	d01c      	beq.n	d0081528 <setvbuf+0x16c>
d00814ee:	07d3      	lsls	r3, r2, #31
d00814f0:	bf41      	itttt	mi
d00814f2:	2300      	movmi	r3, #0
d00814f4:	426d      	negmi	r5, r5
d00814f6:	60a3      	strmi	r3, [r4, #8]
d00814f8:	61a5      	strmi	r5, [r4, #24]
d00814fa:	bf58      	it	pl
d00814fc:	60a5      	strpl	r5, [r4, #8]
d00814fe:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0081500:	f015 0501 	ands.w	r5, r5, #1
d0081504:	d115      	bne.n	d0081532 <setvbuf+0x176>
d0081506:	f412 7f00 	tst.w	r2, #512	; 0x200
d008150a:	e7c8      	b.n	d008149e <setvbuf+0xe2>
d008150c:	4648      	mov	r0, r9
d008150e:	f7ff fe1d 	bl	d008114c <malloc>
d0081512:	4606      	mov	r6, r0
d0081514:	2800      	cmp	r0, #0
d0081516:	d0ae      	beq.n	d0081476 <setvbuf+0xba>
d0081518:	464d      	mov	r5, r9
d008151a:	89a3      	ldrh	r3, [r4, #12]
d008151c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081520:	81a3      	strh	r3, [r4, #12]
d0081522:	e7d0      	b.n	d00814c6 <setvbuf+0x10a>
d0081524:	2500      	movs	r5, #0
d0081526:	e7a8      	b.n	d008147a <setvbuf+0xbe>
d0081528:	60a3      	str	r3, [r4, #8]
d008152a:	e7e8      	b.n	d00814fe <setvbuf+0x142>
d008152c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081530:	e7b9      	b.n	d00814a6 <setvbuf+0xea>
d0081532:	2500      	movs	r5, #0
d0081534:	e7b7      	b.n	d00814a6 <setvbuf+0xea>
d0081536:	bf00      	nop
d0081538:	d009b5f0 	.word	0xd009b5f0
d008153c:	d009b508 	.word	0xd009b508
d0081540:	d009b528 	.word	0xd009b528
d0081544:	d009b4e8 	.word	0xd009b4e8

d0081548 <__swbuf_r>:
d0081548:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008154a:	460e      	mov	r6, r1
d008154c:	4614      	mov	r4, r2
d008154e:	4605      	mov	r5, r0
d0081550:	b118      	cbz	r0, d008155a <__swbuf_r+0x12>
d0081552:	6983      	ldr	r3, [r0, #24]
d0081554:	b90b      	cbnz	r3, d008155a <__swbuf_r+0x12>
d0081556:	f000 f9d1 	bl	d00818fc <__sinit>
d008155a:	4b21      	ldr	r3, [pc, #132]	; (d00815e0 <__swbuf_r+0x98>)
d008155c:	429c      	cmp	r4, r3
d008155e:	d12b      	bne.n	d00815b8 <__swbuf_r+0x70>
d0081560:	686c      	ldr	r4, [r5, #4]
d0081562:	69a3      	ldr	r3, [r4, #24]
d0081564:	60a3      	str	r3, [r4, #8]
d0081566:	89a3      	ldrh	r3, [r4, #12]
d0081568:	071a      	lsls	r2, r3, #28
d008156a:	d52f      	bpl.n	d00815cc <__swbuf_r+0x84>
d008156c:	6923      	ldr	r3, [r4, #16]
d008156e:	b36b      	cbz	r3, d00815cc <__swbuf_r+0x84>
d0081570:	6923      	ldr	r3, [r4, #16]
d0081572:	6820      	ldr	r0, [r4, #0]
d0081574:	1ac0      	subs	r0, r0, r3
d0081576:	6963      	ldr	r3, [r4, #20]
d0081578:	b2f6      	uxtb	r6, r6
d008157a:	4283      	cmp	r3, r0
d008157c:	4637      	mov	r7, r6
d008157e:	dc04      	bgt.n	d008158a <__swbuf_r+0x42>
d0081580:	4621      	mov	r1, r4
d0081582:	4628      	mov	r0, r5
d0081584:	f000 f926 	bl	d00817d4 <_fflush_r>
d0081588:	bb30      	cbnz	r0, d00815d8 <__swbuf_r+0x90>
d008158a:	68a3      	ldr	r3, [r4, #8]
d008158c:	3b01      	subs	r3, #1
d008158e:	60a3      	str	r3, [r4, #8]
d0081590:	6823      	ldr	r3, [r4, #0]
d0081592:	1c5a      	adds	r2, r3, #1
d0081594:	6022      	str	r2, [r4, #0]
d0081596:	701e      	strb	r6, [r3, #0]
d0081598:	6963      	ldr	r3, [r4, #20]
d008159a:	3001      	adds	r0, #1
d008159c:	4283      	cmp	r3, r0
d008159e:	d004      	beq.n	d00815aa <__swbuf_r+0x62>
d00815a0:	89a3      	ldrh	r3, [r4, #12]
d00815a2:	07db      	lsls	r3, r3, #31
d00815a4:	d506      	bpl.n	d00815b4 <__swbuf_r+0x6c>
d00815a6:	2e0a      	cmp	r6, #10
d00815a8:	d104      	bne.n	d00815b4 <__swbuf_r+0x6c>
d00815aa:	4621      	mov	r1, r4
d00815ac:	4628      	mov	r0, r5
d00815ae:	f000 f911 	bl	d00817d4 <_fflush_r>
d00815b2:	b988      	cbnz	r0, d00815d8 <__swbuf_r+0x90>
d00815b4:	4638      	mov	r0, r7
d00815b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00815b8:	4b0a      	ldr	r3, [pc, #40]	; (d00815e4 <__swbuf_r+0x9c>)
d00815ba:	429c      	cmp	r4, r3
d00815bc:	d101      	bne.n	d00815c2 <__swbuf_r+0x7a>
d00815be:	68ac      	ldr	r4, [r5, #8]
d00815c0:	e7cf      	b.n	d0081562 <__swbuf_r+0x1a>
d00815c2:	4b09      	ldr	r3, [pc, #36]	; (d00815e8 <__swbuf_r+0xa0>)
d00815c4:	429c      	cmp	r4, r3
d00815c6:	bf08      	it	eq
d00815c8:	68ec      	ldreq	r4, [r5, #12]
d00815ca:	e7ca      	b.n	d0081562 <__swbuf_r+0x1a>
d00815cc:	4621      	mov	r1, r4
d00815ce:	4628      	mov	r0, r5
d00815d0:	f000 f80c 	bl	d00815ec <__swsetup_r>
d00815d4:	2800      	cmp	r0, #0
d00815d6:	d0cb      	beq.n	d0081570 <__swbuf_r+0x28>
d00815d8:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00815dc:	e7ea      	b.n	d00815b4 <__swbuf_r+0x6c>
d00815de:	bf00      	nop
d00815e0:	d009b508 	.word	0xd009b508
d00815e4:	d009b528 	.word	0xd009b528
d00815e8:	d009b4e8 	.word	0xd009b4e8

d00815ec <__swsetup_r>:
d00815ec:	4b32      	ldr	r3, [pc, #200]	; (d00816b8 <__swsetup_r+0xcc>)
d00815ee:	b570      	push	{r4, r5, r6, lr}
d00815f0:	681d      	ldr	r5, [r3, #0]
d00815f2:	4606      	mov	r6, r0
d00815f4:	460c      	mov	r4, r1
d00815f6:	b125      	cbz	r5, d0081602 <__swsetup_r+0x16>
d00815f8:	69ab      	ldr	r3, [r5, #24]
d00815fa:	b913      	cbnz	r3, d0081602 <__swsetup_r+0x16>
d00815fc:	4628      	mov	r0, r5
d00815fe:	f000 f97d 	bl	d00818fc <__sinit>
d0081602:	4b2e      	ldr	r3, [pc, #184]	; (d00816bc <__swsetup_r+0xd0>)
d0081604:	429c      	cmp	r4, r3
d0081606:	d10f      	bne.n	d0081628 <__swsetup_r+0x3c>
d0081608:	686c      	ldr	r4, [r5, #4]
d008160a:	89a3      	ldrh	r3, [r4, #12]
d008160c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0081610:	0719      	lsls	r1, r3, #28
d0081612:	d42c      	bmi.n	d008166e <__swsetup_r+0x82>
d0081614:	06dd      	lsls	r5, r3, #27
d0081616:	d411      	bmi.n	d008163c <__swsetup_r+0x50>
d0081618:	2309      	movs	r3, #9
d008161a:	6033      	str	r3, [r6, #0]
d008161c:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0081620:	81a3      	strh	r3, [r4, #12]
d0081622:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081626:	e03e      	b.n	d00816a6 <__swsetup_r+0xba>
d0081628:	4b25      	ldr	r3, [pc, #148]	; (d00816c0 <__swsetup_r+0xd4>)
d008162a:	429c      	cmp	r4, r3
d008162c:	d101      	bne.n	d0081632 <__swsetup_r+0x46>
d008162e:	68ac      	ldr	r4, [r5, #8]
d0081630:	e7eb      	b.n	d008160a <__swsetup_r+0x1e>
d0081632:	4b24      	ldr	r3, [pc, #144]	; (d00816c4 <__swsetup_r+0xd8>)
d0081634:	429c      	cmp	r4, r3
d0081636:	bf08      	it	eq
d0081638:	68ec      	ldreq	r4, [r5, #12]
d008163a:	e7e6      	b.n	d008160a <__swsetup_r+0x1e>
d008163c:	0758      	lsls	r0, r3, #29
d008163e:	d512      	bpl.n	d0081666 <__swsetup_r+0x7a>
d0081640:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081642:	b141      	cbz	r1, d0081656 <__swsetup_r+0x6a>
d0081644:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081648:	4299      	cmp	r1, r3
d008164a:	d002      	beq.n	d0081652 <__swsetup_r+0x66>
d008164c:	4630      	mov	r0, r6
d008164e:	f7ff fd8d 	bl	d008116c <_free_r>
d0081652:	2300      	movs	r3, #0
d0081654:	6363      	str	r3, [r4, #52]	; 0x34
d0081656:	89a3      	ldrh	r3, [r4, #12]
d0081658:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d008165c:	81a3      	strh	r3, [r4, #12]
d008165e:	2300      	movs	r3, #0
d0081660:	6063      	str	r3, [r4, #4]
d0081662:	6923      	ldr	r3, [r4, #16]
d0081664:	6023      	str	r3, [r4, #0]
d0081666:	89a3      	ldrh	r3, [r4, #12]
d0081668:	f043 0308 	orr.w	r3, r3, #8
d008166c:	81a3      	strh	r3, [r4, #12]
d008166e:	6923      	ldr	r3, [r4, #16]
d0081670:	b94b      	cbnz	r3, d0081686 <__swsetup_r+0x9a>
d0081672:	89a3      	ldrh	r3, [r4, #12]
d0081674:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0081678:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d008167c:	d003      	beq.n	d0081686 <__swsetup_r+0x9a>
d008167e:	4621      	mov	r1, r4
d0081680:	4630      	mov	r0, r6
d0081682:	f000 f9ff 	bl	d0081a84 <__smakebuf_r>
d0081686:	89a0      	ldrh	r0, [r4, #12]
d0081688:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d008168c:	f010 0301 	ands.w	r3, r0, #1
d0081690:	d00a      	beq.n	d00816a8 <__swsetup_r+0xbc>
d0081692:	2300      	movs	r3, #0
d0081694:	60a3      	str	r3, [r4, #8]
d0081696:	6963      	ldr	r3, [r4, #20]
d0081698:	425b      	negs	r3, r3
d008169a:	61a3      	str	r3, [r4, #24]
d008169c:	6923      	ldr	r3, [r4, #16]
d008169e:	b943      	cbnz	r3, d00816b2 <__swsetup_r+0xc6>
d00816a0:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d00816a4:	d1ba      	bne.n	d008161c <__swsetup_r+0x30>
d00816a6:	bd70      	pop	{r4, r5, r6, pc}
d00816a8:	0781      	lsls	r1, r0, #30
d00816aa:	bf58      	it	pl
d00816ac:	6963      	ldrpl	r3, [r4, #20]
d00816ae:	60a3      	str	r3, [r4, #8]
d00816b0:	e7f4      	b.n	d008169c <__swsetup_r+0xb0>
d00816b2:	2000      	movs	r0, #0
d00816b4:	e7f7      	b.n	d00816a6 <__swsetup_r+0xba>
d00816b6:	bf00      	nop
d00816b8:	d009b5f0 	.word	0xd009b5f0
d00816bc:	d009b508 	.word	0xd009b508
d00816c0:	d009b528 	.word	0xd009b528
d00816c4:	d009b4e8 	.word	0xd009b4e8

d00816c8 <__sflush_r>:
d00816c8:	898a      	ldrh	r2, [r1, #12]
d00816ca:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00816ce:	4605      	mov	r5, r0
d00816d0:	0710      	lsls	r0, r2, #28
d00816d2:	460c      	mov	r4, r1
d00816d4:	d458      	bmi.n	d0081788 <__sflush_r+0xc0>
d00816d6:	684b      	ldr	r3, [r1, #4]
d00816d8:	2b00      	cmp	r3, #0
d00816da:	dc05      	bgt.n	d00816e8 <__sflush_r+0x20>
d00816dc:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00816de:	2b00      	cmp	r3, #0
d00816e0:	dc02      	bgt.n	d00816e8 <__sflush_r+0x20>
d00816e2:	2000      	movs	r0, #0
d00816e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00816e8:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00816ea:	2e00      	cmp	r6, #0
d00816ec:	d0f9      	beq.n	d00816e2 <__sflush_r+0x1a>
d00816ee:	2300      	movs	r3, #0
d00816f0:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00816f4:	682f      	ldr	r7, [r5, #0]
d00816f6:	602b      	str	r3, [r5, #0]
d00816f8:	d032      	beq.n	d0081760 <__sflush_r+0x98>
d00816fa:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00816fc:	89a3      	ldrh	r3, [r4, #12]
d00816fe:	075a      	lsls	r2, r3, #29
d0081700:	d505      	bpl.n	d008170e <__sflush_r+0x46>
d0081702:	6863      	ldr	r3, [r4, #4]
d0081704:	1ac0      	subs	r0, r0, r3
d0081706:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0081708:	b10b      	cbz	r3, d008170e <__sflush_r+0x46>
d008170a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d008170c:	1ac0      	subs	r0, r0, r3
d008170e:	2300      	movs	r3, #0
d0081710:	4602      	mov	r2, r0
d0081712:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081714:	6a21      	ldr	r1, [r4, #32]
d0081716:	4628      	mov	r0, r5
d0081718:	47b0      	blx	r6
d008171a:	1c43      	adds	r3, r0, #1
d008171c:	89a3      	ldrh	r3, [r4, #12]
d008171e:	d106      	bne.n	d008172e <__sflush_r+0x66>
d0081720:	6829      	ldr	r1, [r5, #0]
d0081722:	291d      	cmp	r1, #29
d0081724:	d82c      	bhi.n	d0081780 <__sflush_r+0xb8>
d0081726:	4a2a      	ldr	r2, [pc, #168]	; (d00817d0 <__sflush_r+0x108>)
d0081728:	40ca      	lsrs	r2, r1
d008172a:	07d6      	lsls	r6, r2, #31
d008172c:	d528      	bpl.n	d0081780 <__sflush_r+0xb8>
d008172e:	2200      	movs	r2, #0
d0081730:	6062      	str	r2, [r4, #4]
d0081732:	04d9      	lsls	r1, r3, #19
d0081734:	6922      	ldr	r2, [r4, #16]
d0081736:	6022      	str	r2, [r4, #0]
d0081738:	d504      	bpl.n	d0081744 <__sflush_r+0x7c>
d008173a:	1c42      	adds	r2, r0, #1
d008173c:	d101      	bne.n	d0081742 <__sflush_r+0x7a>
d008173e:	682b      	ldr	r3, [r5, #0]
d0081740:	b903      	cbnz	r3, d0081744 <__sflush_r+0x7c>
d0081742:	6560      	str	r0, [r4, #84]	; 0x54
d0081744:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081746:	602f      	str	r7, [r5, #0]
d0081748:	2900      	cmp	r1, #0
d008174a:	d0ca      	beq.n	d00816e2 <__sflush_r+0x1a>
d008174c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081750:	4299      	cmp	r1, r3
d0081752:	d002      	beq.n	d008175a <__sflush_r+0x92>
d0081754:	4628      	mov	r0, r5
d0081756:	f7ff fd09 	bl	d008116c <_free_r>
d008175a:	2000      	movs	r0, #0
d008175c:	6360      	str	r0, [r4, #52]	; 0x34
d008175e:	e7c1      	b.n	d00816e4 <__sflush_r+0x1c>
d0081760:	6a21      	ldr	r1, [r4, #32]
d0081762:	2301      	movs	r3, #1
d0081764:	4628      	mov	r0, r5
d0081766:	47b0      	blx	r6
d0081768:	1c41      	adds	r1, r0, #1
d008176a:	d1c7      	bne.n	d00816fc <__sflush_r+0x34>
d008176c:	682b      	ldr	r3, [r5, #0]
d008176e:	2b00      	cmp	r3, #0
d0081770:	d0c4      	beq.n	d00816fc <__sflush_r+0x34>
d0081772:	2b1d      	cmp	r3, #29
d0081774:	d001      	beq.n	d008177a <__sflush_r+0xb2>
d0081776:	2b16      	cmp	r3, #22
d0081778:	d101      	bne.n	d008177e <__sflush_r+0xb6>
d008177a:	602f      	str	r7, [r5, #0]
d008177c:	e7b1      	b.n	d00816e2 <__sflush_r+0x1a>
d008177e:	89a3      	ldrh	r3, [r4, #12]
d0081780:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081784:	81a3      	strh	r3, [r4, #12]
d0081786:	e7ad      	b.n	d00816e4 <__sflush_r+0x1c>
d0081788:	690f      	ldr	r7, [r1, #16]
d008178a:	2f00      	cmp	r7, #0
d008178c:	d0a9      	beq.n	d00816e2 <__sflush_r+0x1a>
d008178e:	0793      	lsls	r3, r2, #30
d0081790:	680e      	ldr	r6, [r1, #0]
d0081792:	bf08      	it	eq
d0081794:	694b      	ldreq	r3, [r1, #20]
d0081796:	600f      	str	r7, [r1, #0]
d0081798:	bf18      	it	ne
d008179a:	2300      	movne	r3, #0
d008179c:	eba6 0807 	sub.w	r8, r6, r7
d00817a0:	608b      	str	r3, [r1, #8]
d00817a2:	f1b8 0f00 	cmp.w	r8, #0
d00817a6:	dd9c      	ble.n	d00816e2 <__sflush_r+0x1a>
d00817a8:	6a21      	ldr	r1, [r4, #32]
d00817aa:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00817ac:	4643      	mov	r3, r8
d00817ae:	463a      	mov	r2, r7
d00817b0:	4628      	mov	r0, r5
d00817b2:	47b0      	blx	r6
d00817b4:	2800      	cmp	r0, #0
d00817b6:	dc06      	bgt.n	d00817c6 <__sflush_r+0xfe>
d00817b8:	89a3      	ldrh	r3, [r4, #12]
d00817ba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00817be:	81a3      	strh	r3, [r4, #12]
d00817c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00817c4:	e78e      	b.n	d00816e4 <__sflush_r+0x1c>
d00817c6:	4407      	add	r7, r0
d00817c8:	eba8 0800 	sub.w	r8, r8, r0
d00817cc:	e7e9      	b.n	d00817a2 <__sflush_r+0xda>
d00817ce:	bf00      	nop
d00817d0:	20400001 	.word	0x20400001

d00817d4 <_fflush_r>:
d00817d4:	b538      	push	{r3, r4, r5, lr}
d00817d6:	690b      	ldr	r3, [r1, #16]
d00817d8:	4605      	mov	r5, r0
d00817da:	460c      	mov	r4, r1
d00817dc:	b913      	cbnz	r3, d00817e4 <_fflush_r+0x10>
d00817de:	2500      	movs	r5, #0
d00817e0:	4628      	mov	r0, r5
d00817e2:	bd38      	pop	{r3, r4, r5, pc}
d00817e4:	b118      	cbz	r0, d00817ee <_fflush_r+0x1a>
d00817e6:	6983      	ldr	r3, [r0, #24]
d00817e8:	b90b      	cbnz	r3, d00817ee <_fflush_r+0x1a>
d00817ea:	f000 f887 	bl	d00818fc <__sinit>
d00817ee:	4b14      	ldr	r3, [pc, #80]	; (d0081840 <_fflush_r+0x6c>)
d00817f0:	429c      	cmp	r4, r3
d00817f2:	d11b      	bne.n	d008182c <_fflush_r+0x58>
d00817f4:	686c      	ldr	r4, [r5, #4]
d00817f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00817fa:	2b00      	cmp	r3, #0
d00817fc:	d0ef      	beq.n	d00817de <_fflush_r+0xa>
d00817fe:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081800:	07d0      	lsls	r0, r2, #31
d0081802:	d404      	bmi.n	d008180e <_fflush_r+0x3a>
d0081804:	0599      	lsls	r1, r3, #22
d0081806:	d402      	bmi.n	d008180e <_fflush_r+0x3a>
d0081808:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008180a:	f000 f915 	bl	d0081a38 <__retarget_lock_acquire_recursive>
d008180e:	4628      	mov	r0, r5
d0081810:	4621      	mov	r1, r4
d0081812:	f7ff ff59 	bl	d00816c8 <__sflush_r>
d0081816:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081818:	07da      	lsls	r2, r3, #31
d008181a:	4605      	mov	r5, r0
d008181c:	d4e0      	bmi.n	d00817e0 <_fflush_r+0xc>
d008181e:	89a3      	ldrh	r3, [r4, #12]
d0081820:	059b      	lsls	r3, r3, #22
d0081822:	d4dd      	bmi.n	d00817e0 <_fflush_r+0xc>
d0081824:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081826:	f000 f908 	bl	d0081a3a <__retarget_lock_release_recursive>
d008182a:	e7d9      	b.n	d00817e0 <_fflush_r+0xc>
d008182c:	4b05      	ldr	r3, [pc, #20]	; (d0081844 <_fflush_r+0x70>)
d008182e:	429c      	cmp	r4, r3
d0081830:	d101      	bne.n	d0081836 <_fflush_r+0x62>
d0081832:	68ac      	ldr	r4, [r5, #8]
d0081834:	e7df      	b.n	d00817f6 <_fflush_r+0x22>
d0081836:	4b04      	ldr	r3, [pc, #16]	; (d0081848 <_fflush_r+0x74>)
d0081838:	429c      	cmp	r4, r3
d008183a:	bf08      	it	eq
d008183c:	68ec      	ldreq	r4, [r5, #12]
d008183e:	e7da      	b.n	d00817f6 <_fflush_r+0x22>
d0081840:	d009b508 	.word	0xd009b508
d0081844:	d009b528 	.word	0xd009b528
d0081848:	d009b4e8 	.word	0xd009b4e8

d008184c <std>:
d008184c:	2300      	movs	r3, #0
d008184e:	b510      	push	{r4, lr}
d0081850:	4604      	mov	r4, r0
d0081852:	e9c0 3300 	strd	r3, r3, [r0]
d0081856:	e9c0 3304 	strd	r3, r3, [r0, #16]
d008185a:	6083      	str	r3, [r0, #8]
d008185c:	8181      	strh	r1, [r0, #12]
d008185e:	6643      	str	r3, [r0, #100]	; 0x64
d0081860:	81c2      	strh	r2, [r0, #14]
d0081862:	6183      	str	r3, [r0, #24]
d0081864:	4619      	mov	r1, r3
d0081866:	2208      	movs	r2, #8
d0081868:	305c      	adds	r0, #92	; 0x5c
d008186a:	f7ff fc77 	bl	d008115c <memset>
d008186e:	4b05      	ldr	r3, [pc, #20]	; (d0081884 <std+0x38>)
d0081870:	6263      	str	r3, [r4, #36]	; 0x24
d0081872:	4b05      	ldr	r3, [pc, #20]	; (d0081888 <std+0x3c>)
d0081874:	62a3      	str	r3, [r4, #40]	; 0x28
d0081876:	4b05      	ldr	r3, [pc, #20]	; (d008188c <std+0x40>)
d0081878:	62e3      	str	r3, [r4, #44]	; 0x2c
d008187a:	4b05      	ldr	r3, [pc, #20]	; (d0081890 <std+0x44>)
d008187c:	6224      	str	r4, [r4, #32]
d008187e:	6323      	str	r3, [r4, #48]	; 0x30
d0081880:	bd10      	pop	{r4, pc}
d0081882:	bf00      	nop
d0081884:	d0081b1d 	.word	0xd0081b1d
d0081888:	d0081b3f 	.word	0xd0081b3f
d008188c:	d0081b77 	.word	0xd0081b77
d0081890:	d0081b9b 	.word	0xd0081b9b

d0081894 <_cleanup_r>:
d0081894:	4901      	ldr	r1, [pc, #4]	; (d008189c <_cleanup_r+0x8>)
d0081896:	f000 b8af 	b.w	d00819f8 <_fwalk_reent>
d008189a:	bf00      	nop
d008189c:	d00817d5 	.word	0xd00817d5

d00818a0 <__sfmoreglue>:
d00818a0:	b570      	push	{r4, r5, r6, lr}
d00818a2:	1e4a      	subs	r2, r1, #1
d00818a4:	2568      	movs	r5, #104	; 0x68
d00818a6:	4355      	muls	r5, r2
d00818a8:	460e      	mov	r6, r1
d00818aa:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00818ae:	f7ff fcad 	bl	d008120c <_malloc_r>
d00818b2:	4604      	mov	r4, r0
d00818b4:	b140      	cbz	r0, d00818c8 <__sfmoreglue+0x28>
d00818b6:	2100      	movs	r1, #0
d00818b8:	e9c0 1600 	strd	r1, r6, [r0]
d00818bc:	300c      	adds	r0, #12
d00818be:	60a0      	str	r0, [r4, #8]
d00818c0:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00818c4:	f7ff fc4a 	bl	d008115c <memset>
d00818c8:	4620      	mov	r0, r4
d00818ca:	bd70      	pop	{r4, r5, r6, pc}

d00818cc <__sfp_lock_acquire>:
d00818cc:	4801      	ldr	r0, [pc, #4]	; (d00818d4 <__sfp_lock_acquire+0x8>)
d00818ce:	f000 b8b3 	b.w	d0081a38 <__retarget_lock_acquire_recursive>
d00818d2:	bf00      	nop
d00818d4:	d009b98c 	.word	0xd009b98c

d00818d8 <__sfp_lock_release>:
d00818d8:	4801      	ldr	r0, [pc, #4]	; (d00818e0 <__sfp_lock_release+0x8>)
d00818da:	f000 b8ae 	b.w	d0081a3a <__retarget_lock_release_recursive>
d00818de:	bf00      	nop
d00818e0:	d009b98c 	.word	0xd009b98c

d00818e4 <__sinit_lock_acquire>:
d00818e4:	4801      	ldr	r0, [pc, #4]	; (d00818ec <__sinit_lock_acquire+0x8>)
d00818e6:	f000 b8a7 	b.w	d0081a38 <__retarget_lock_acquire_recursive>
d00818ea:	bf00      	nop
d00818ec:	d009b987 	.word	0xd009b987

d00818f0 <__sinit_lock_release>:
d00818f0:	4801      	ldr	r0, [pc, #4]	; (d00818f8 <__sinit_lock_release+0x8>)
d00818f2:	f000 b8a2 	b.w	d0081a3a <__retarget_lock_release_recursive>
d00818f6:	bf00      	nop
d00818f8:	d009b987 	.word	0xd009b987

d00818fc <__sinit>:
d00818fc:	b510      	push	{r4, lr}
d00818fe:	4604      	mov	r4, r0
d0081900:	f7ff fff0 	bl	d00818e4 <__sinit_lock_acquire>
d0081904:	69a3      	ldr	r3, [r4, #24]
d0081906:	b11b      	cbz	r3, d0081910 <__sinit+0x14>
d0081908:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d008190c:	f7ff bff0 	b.w	d00818f0 <__sinit_lock_release>
d0081910:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081914:	6523      	str	r3, [r4, #80]	; 0x50
d0081916:	4b13      	ldr	r3, [pc, #76]	; (d0081964 <__sinit+0x68>)
d0081918:	4a13      	ldr	r2, [pc, #76]	; (d0081968 <__sinit+0x6c>)
d008191a:	681b      	ldr	r3, [r3, #0]
d008191c:	62a2      	str	r2, [r4, #40]	; 0x28
d008191e:	42a3      	cmp	r3, r4
d0081920:	bf04      	itt	eq
d0081922:	2301      	moveq	r3, #1
d0081924:	61a3      	streq	r3, [r4, #24]
d0081926:	4620      	mov	r0, r4
d0081928:	f000 f820 	bl	d008196c <__sfp>
d008192c:	6060      	str	r0, [r4, #4]
d008192e:	4620      	mov	r0, r4
d0081930:	f000 f81c 	bl	d008196c <__sfp>
d0081934:	60a0      	str	r0, [r4, #8]
d0081936:	4620      	mov	r0, r4
d0081938:	f000 f818 	bl	d008196c <__sfp>
d008193c:	2200      	movs	r2, #0
d008193e:	60e0      	str	r0, [r4, #12]
d0081940:	2104      	movs	r1, #4
d0081942:	6860      	ldr	r0, [r4, #4]
d0081944:	f7ff ff82 	bl	d008184c <std>
d0081948:	68a0      	ldr	r0, [r4, #8]
d008194a:	2201      	movs	r2, #1
d008194c:	2109      	movs	r1, #9
d008194e:	f7ff ff7d 	bl	d008184c <std>
d0081952:	68e0      	ldr	r0, [r4, #12]
d0081954:	2202      	movs	r2, #2
d0081956:	2112      	movs	r1, #18
d0081958:	f7ff ff78 	bl	d008184c <std>
d008195c:	2301      	movs	r3, #1
d008195e:	61a3      	str	r3, [r4, #24]
d0081960:	e7d2      	b.n	d0081908 <__sinit+0xc>
d0081962:	bf00      	nop
d0081964:	d009b4e4 	.word	0xd009b4e4
d0081968:	d0081895 	.word	0xd0081895

d008196c <__sfp>:
d008196c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008196e:	4607      	mov	r7, r0
d0081970:	f7ff ffac 	bl	d00818cc <__sfp_lock_acquire>
d0081974:	4b1e      	ldr	r3, [pc, #120]	; (d00819f0 <__sfp+0x84>)
d0081976:	681e      	ldr	r6, [r3, #0]
d0081978:	69b3      	ldr	r3, [r6, #24]
d008197a:	b913      	cbnz	r3, d0081982 <__sfp+0x16>
d008197c:	4630      	mov	r0, r6
d008197e:	f7ff ffbd 	bl	d00818fc <__sinit>
d0081982:	3648      	adds	r6, #72	; 0x48
d0081984:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081988:	3b01      	subs	r3, #1
d008198a:	d503      	bpl.n	d0081994 <__sfp+0x28>
d008198c:	6833      	ldr	r3, [r6, #0]
d008198e:	b30b      	cbz	r3, d00819d4 <__sfp+0x68>
d0081990:	6836      	ldr	r6, [r6, #0]
d0081992:	e7f7      	b.n	d0081984 <__sfp+0x18>
d0081994:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0081998:	b9d5      	cbnz	r5, d00819d0 <__sfp+0x64>
d008199a:	4b16      	ldr	r3, [pc, #88]	; (d00819f4 <__sfp+0x88>)
d008199c:	60e3      	str	r3, [r4, #12]
d008199e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00819a2:	6665      	str	r5, [r4, #100]	; 0x64
d00819a4:	f000 f847 	bl	d0081a36 <__retarget_lock_init_recursive>
d00819a8:	f7ff ff96 	bl	d00818d8 <__sfp_lock_release>
d00819ac:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00819b0:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00819b4:	6025      	str	r5, [r4, #0]
d00819b6:	61a5      	str	r5, [r4, #24]
d00819b8:	2208      	movs	r2, #8
d00819ba:	4629      	mov	r1, r5
d00819bc:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00819c0:	f7ff fbcc 	bl	d008115c <memset>
d00819c4:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d00819c8:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d00819cc:	4620      	mov	r0, r4
d00819ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00819d0:	3468      	adds	r4, #104	; 0x68
d00819d2:	e7d9      	b.n	d0081988 <__sfp+0x1c>
d00819d4:	2104      	movs	r1, #4
d00819d6:	4638      	mov	r0, r7
d00819d8:	f7ff ff62 	bl	d00818a0 <__sfmoreglue>
d00819dc:	4604      	mov	r4, r0
d00819de:	6030      	str	r0, [r6, #0]
d00819e0:	2800      	cmp	r0, #0
d00819e2:	d1d5      	bne.n	d0081990 <__sfp+0x24>
d00819e4:	f7ff ff78 	bl	d00818d8 <__sfp_lock_release>
d00819e8:	230c      	movs	r3, #12
d00819ea:	603b      	str	r3, [r7, #0]
d00819ec:	e7ee      	b.n	d00819cc <__sfp+0x60>
d00819ee:	bf00      	nop
d00819f0:	d009b4e4 	.word	0xd009b4e4
d00819f4:	ffff0001 	.word	0xffff0001

d00819f8 <_fwalk_reent>:
d00819f8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d00819fc:	4606      	mov	r6, r0
d00819fe:	4688      	mov	r8, r1
d0081a00:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081a04:	2700      	movs	r7, #0
d0081a06:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081a0a:	f1b9 0901 	subs.w	r9, r9, #1
d0081a0e:	d505      	bpl.n	d0081a1c <_fwalk_reent+0x24>
d0081a10:	6824      	ldr	r4, [r4, #0]
d0081a12:	2c00      	cmp	r4, #0
d0081a14:	d1f7      	bne.n	d0081a06 <_fwalk_reent+0xe>
d0081a16:	4638      	mov	r0, r7
d0081a18:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081a1c:	89ab      	ldrh	r3, [r5, #12]
d0081a1e:	2b01      	cmp	r3, #1
d0081a20:	d907      	bls.n	d0081a32 <_fwalk_reent+0x3a>
d0081a22:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081a26:	3301      	adds	r3, #1
d0081a28:	d003      	beq.n	d0081a32 <_fwalk_reent+0x3a>
d0081a2a:	4629      	mov	r1, r5
d0081a2c:	4630      	mov	r0, r6
d0081a2e:	47c0      	blx	r8
d0081a30:	4307      	orrs	r7, r0
d0081a32:	3568      	adds	r5, #104	; 0x68
d0081a34:	e7e9      	b.n	d0081a0a <_fwalk_reent+0x12>

d0081a36 <__retarget_lock_init_recursive>:
d0081a36:	4770      	bx	lr

d0081a38 <__retarget_lock_acquire_recursive>:
d0081a38:	4770      	bx	lr

d0081a3a <__retarget_lock_release_recursive>:
d0081a3a:	4770      	bx	lr

d0081a3c <__swhatbuf_r>:
d0081a3c:	b570      	push	{r4, r5, r6, lr}
d0081a3e:	460e      	mov	r6, r1
d0081a40:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081a44:	2900      	cmp	r1, #0
d0081a46:	b096      	sub	sp, #88	; 0x58
d0081a48:	4614      	mov	r4, r2
d0081a4a:	461d      	mov	r5, r3
d0081a4c:	da07      	bge.n	d0081a5e <__swhatbuf_r+0x22>
d0081a4e:	2300      	movs	r3, #0
d0081a50:	602b      	str	r3, [r5, #0]
d0081a52:	89b3      	ldrh	r3, [r6, #12]
d0081a54:	061a      	lsls	r2, r3, #24
d0081a56:	d410      	bmi.n	d0081a7a <__swhatbuf_r+0x3e>
d0081a58:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081a5c:	e00e      	b.n	d0081a7c <__swhatbuf_r+0x40>
d0081a5e:	466a      	mov	r2, sp
d0081a60:	f000 f8b0 	bl	d0081bc4 <_fstat_r>
d0081a64:	2800      	cmp	r0, #0
d0081a66:	dbf2      	blt.n	d0081a4e <__swhatbuf_r+0x12>
d0081a68:	9a01      	ldr	r2, [sp, #4]
d0081a6a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081a6e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081a72:	425a      	negs	r2, r3
d0081a74:	415a      	adcs	r2, r3
d0081a76:	602a      	str	r2, [r5, #0]
d0081a78:	e7ee      	b.n	d0081a58 <__swhatbuf_r+0x1c>
d0081a7a:	2340      	movs	r3, #64	; 0x40
d0081a7c:	2000      	movs	r0, #0
d0081a7e:	6023      	str	r3, [r4, #0]
d0081a80:	b016      	add	sp, #88	; 0x58
d0081a82:	bd70      	pop	{r4, r5, r6, pc}

d0081a84 <__smakebuf_r>:
d0081a84:	898b      	ldrh	r3, [r1, #12]
d0081a86:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0081a88:	079d      	lsls	r5, r3, #30
d0081a8a:	4606      	mov	r6, r0
d0081a8c:	460c      	mov	r4, r1
d0081a8e:	d507      	bpl.n	d0081aa0 <__smakebuf_r+0x1c>
d0081a90:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0081a94:	6023      	str	r3, [r4, #0]
d0081a96:	6123      	str	r3, [r4, #16]
d0081a98:	2301      	movs	r3, #1
d0081a9a:	6163      	str	r3, [r4, #20]
d0081a9c:	b002      	add	sp, #8
d0081a9e:	bd70      	pop	{r4, r5, r6, pc}
d0081aa0:	ab01      	add	r3, sp, #4
d0081aa2:	466a      	mov	r2, sp
d0081aa4:	f7ff ffca 	bl	d0081a3c <__swhatbuf_r>
d0081aa8:	9900      	ldr	r1, [sp, #0]
d0081aaa:	4605      	mov	r5, r0
d0081aac:	4630      	mov	r0, r6
d0081aae:	f7ff fbad 	bl	d008120c <_malloc_r>
d0081ab2:	b948      	cbnz	r0, d0081ac8 <__smakebuf_r+0x44>
d0081ab4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081ab8:	059a      	lsls	r2, r3, #22
d0081aba:	d4ef      	bmi.n	d0081a9c <__smakebuf_r+0x18>
d0081abc:	f023 0303 	bic.w	r3, r3, #3
d0081ac0:	f043 0302 	orr.w	r3, r3, #2
d0081ac4:	81a3      	strh	r3, [r4, #12]
d0081ac6:	e7e3      	b.n	d0081a90 <__smakebuf_r+0xc>
d0081ac8:	4b0d      	ldr	r3, [pc, #52]	; (d0081b00 <__smakebuf_r+0x7c>)
d0081aca:	62b3      	str	r3, [r6, #40]	; 0x28
d0081acc:	89a3      	ldrh	r3, [r4, #12]
d0081ace:	6020      	str	r0, [r4, #0]
d0081ad0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081ad4:	81a3      	strh	r3, [r4, #12]
d0081ad6:	9b00      	ldr	r3, [sp, #0]
d0081ad8:	6163      	str	r3, [r4, #20]
d0081ada:	9b01      	ldr	r3, [sp, #4]
d0081adc:	6120      	str	r0, [r4, #16]
d0081ade:	b15b      	cbz	r3, d0081af8 <__smakebuf_r+0x74>
d0081ae0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0081ae4:	4630      	mov	r0, r6
d0081ae6:	f000 f87f 	bl	d0081be8 <_isatty_r>
d0081aea:	b128      	cbz	r0, d0081af8 <__smakebuf_r+0x74>
d0081aec:	89a3      	ldrh	r3, [r4, #12]
d0081aee:	f023 0303 	bic.w	r3, r3, #3
d0081af2:	f043 0301 	orr.w	r3, r3, #1
d0081af6:	81a3      	strh	r3, [r4, #12]
d0081af8:	89a0      	ldrh	r0, [r4, #12]
d0081afa:	4305      	orrs	r5, r0
d0081afc:	81a5      	strh	r5, [r4, #12]
d0081afe:	e7cd      	b.n	d0081a9c <__smakebuf_r+0x18>
d0081b00:	d0081895 	.word	0xd0081895

d0081b04 <__malloc_lock>:
d0081b04:	4801      	ldr	r0, [pc, #4]	; (d0081b0c <__malloc_lock+0x8>)
d0081b06:	f7ff bf97 	b.w	d0081a38 <__retarget_lock_acquire_recursive>
d0081b0a:	bf00      	nop
d0081b0c:	d009b988 	.word	0xd009b988

d0081b10 <__malloc_unlock>:
d0081b10:	4801      	ldr	r0, [pc, #4]	; (d0081b18 <__malloc_unlock+0x8>)
d0081b12:	f7ff bf92 	b.w	d0081a3a <__retarget_lock_release_recursive>
d0081b16:	bf00      	nop
d0081b18:	d009b988 	.word	0xd009b988

d0081b1c <__sread>:
d0081b1c:	b510      	push	{r4, lr}
d0081b1e:	460c      	mov	r4, r1
d0081b20:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081b24:	f000 f882 	bl	d0081c2c <_read_r>
d0081b28:	2800      	cmp	r0, #0
d0081b2a:	bfab      	itete	ge
d0081b2c:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0081b2e:	89a3      	ldrhlt	r3, [r4, #12]
d0081b30:	181b      	addge	r3, r3, r0
d0081b32:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0081b36:	bfac      	ite	ge
d0081b38:	6563      	strge	r3, [r4, #84]	; 0x54
d0081b3a:	81a3      	strhlt	r3, [r4, #12]
d0081b3c:	bd10      	pop	{r4, pc}

d0081b3e <__swrite>:
d0081b3e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081b42:	461f      	mov	r7, r3
d0081b44:	898b      	ldrh	r3, [r1, #12]
d0081b46:	05db      	lsls	r3, r3, #23
d0081b48:	4605      	mov	r5, r0
d0081b4a:	460c      	mov	r4, r1
d0081b4c:	4616      	mov	r6, r2
d0081b4e:	d505      	bpl.n	d0081b5c <__swrite+0x1e>
d0081b50:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081b54:	2302      	movs	r3, #2
d0081b56:	2200      	movs	r2, #0
d0081b58:	f000 f856 	bl	d0081c08 <_lseek_r>
d0081b5c:	89a3      	ldrh	r3, [r4, #12]
d0081b5e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0081b62:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0081b66:	81a3      	strh	r3, [r4, #12]
d0081b68:	4632      	mov	r2, r6
d0081b6a:	463b      	mov	r3, r7
d0081b6c:	4628      	mov	r0, r5
d0081b6e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0081b72:	f7fe bb63 	b.w	d008023c <_write_r>

d0081b76 <__sseek>:
d0081b76:	b510      	push	{r4, lr}
d0081b78:	460c      	mov	r4, r1
d0081b7a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081b7e:	f000 f843 	bl	d0081c08 <_lseek_r>
d0081b82:	1c43      	adds	r3, r0, #1
d0081b84:	89a3      	ldrh	r3, [r4, #12]
d0081b86:	bf15      	itete	ne
d0081b88:	6560      	strne	r0, [r4, #84]	; 0x54
d0081b8a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0081b8e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0081b92:	81a3      	strheq	r3, [r4, #12]
d0081b94:	bf18      	it	ne
d0081b96:	81a3      	strhne	r3, [r4, #12]
d0081b98:	bd10      	pop	{r4, pc}

d0081b9a <__sclose>:
d0081b9a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081b9e:	f000 b801 	b.w	d0081ba4 <_close_r>
	...

d0081ba4 <_close_r>:
d0081ba4:	b538      	push	{r3, r4, r5, lr}
d0081ba6:	4d06      	ldr	r5, [pc, #24]	; (d0081bc0 <_close_r+0x1c>)
d0081ba8:	2300      	movs	r3, #0
d0081baa:	4604      	mov	r4, r0
d0081bac:	4608      	mov	r0, r1
d0081bae:	602b      	str	r3, [r5, #0]
d0081bb0:	f7fe fb7e 	bl	d00802b0 <_close>
d0081bb4:	1c43      	adds	r3, r0, #1
d0081bb6:	d102      	bne.n	d0081bbe <_close_r+0x1a>
d0081bb8:	682b      	ldr	r3, [r5, #0]
d0081bba:	b103      	cbz	r3, d0081bbe <_close_r+0x1a>
d0081bbc:	6023      	str	r3, [r4, #0]
d0081bbe:	bd38      	pop	{r3, r4, r5, pc}
d0081bc0:	d009b990 	.word	0xd009b990

d0081bc4 <_fstat_r>:
d0081bc4:	b538      	push	{r3, r4, r5, lr}
d0081bc6:	4d07      	ldr	r5, [pc, #28]	; (d0081be4 <_fstat_r+0x20>)
d0081bc8:	2300      	movs	r3, #0
d0081bca:	4604      	mov	r4, r0
d0081bcc:	4608      	mov	r0, r1
d0081bce:	4611      	mov	r1, r2
d0081bd0:	602b      	str	r3, [r5, #0]
d0081bd2:	f7fe fb71 	bl	d00802b8 <_fstat>
d0081bd6:	1c43      	adds	r3, r0, #1
d0081bd8:	d102      	bne.n	d0081be0 <_fstat_r+0x1c>
d0081bda:	682b      	ldr	r3, [r5, #0]
d0081bdc:	b103      	cbz	r3, d0081be0 <_fstat_r+0x1c>
d0081bde:	6023      	str	r3, [r4, #0]
d0081be0:	bd38      	pop	{r3, r4, r5, pc}
d0081be2:	bf00      	nop
d0081be4:	d009b990 	.word	0xd009b990

d0081be8 <_isatty_r>:
d0081be8:	b538      	push	{r3, r4, r5, lr}
d0081bea:	4d06      	ldr	r5, [pc, #24]	; (d0081c04 <_isatty_r+0x1c>)
d0081bec:	2300      	movs	r3, #0
d0081bee:	4604      	mov	r4, r0
d0081bf0:	4608      	mov	r0, r1
d0081bf2:	602b      	str	r3, [r5, #0]
d0081bf4:	f7fe fb88 	bl	d0080308 <_isatty>
d0081bf8:	1c43      	adds	r3, r0, #1
d0081bfa:	d102      	bne.n	d0081c02 <_isatty_r+0x1a>
d0081bfc:	682b      	ldr	r3, [r5, #0]
d0081bfe:	b103      	cbz	r3, d0081c02 <_isatty_r+0x1a>
d0081c00:	6023      	str	r3, [r4, #0]
d0081c02:	bd38      	pop	{r3, r4, r5, pc}
d0081c04:	d009b990 	.word	0xd009b990

d0081c08 <_lseek_r>:
d0081c08:	b538      	push	{r3, r4, r5, lr}
d0081c0a:	4d07      	ldr	r5, [pc, #28]	; (d0081c28 <_lseek_r+0x20>)
d0081c0c:	4604      	mov	r4, r0
d0081c0e:	4608      	mov	r0, r1
d0081c10:	4611      	mov	r1, r2
d0081c12:	2200      	movs	r2, #0
d0081c14:	602a      	str	r2, [r5, #0]
d0081c16:	461a      	mov	r2, r3
d0081c18:	f7fe fb54 	bl	d00802c4 <_lseek>
d0081c1c:	1c43      	adds	r3, r0, #1
d0081c1e:	d102      	bne.n	d0081c26 <_lseek_r+0x1e>
d0081c20:	682b      	ldr	r3, [r5, #0]
d0081c22:	b103      	cbz	r3, d0081c26 <_lseek_r+0x1e>
d0081c24:	6023      	str	r3, [r4, #0]
d0081c26:	bd38      	pop	{r3, r4, r5, pc}
d0081c28:	d009b990 	.word	0xd009b990

d0081c2c <_read_r>:
d0081c2c:	b538      	push	{r3, r4, r5, lr}
d0081c2e:	4d07      	ldr	r5, [pc, #28]	; (d0081c4c <_read_r+0x20>)
d0081c30:	4604      	mov	r4, r0
d0081c32:	4608      	mov	r0, r1
d0081c34:	4611      	mov	r1, r2
d0081c36:	2200      	movs	r2, #0
d0081c38:	602a      	str	r2, [r5, #0]
d0081c3a:	461a      	mov	r2, r3
d0081c3c:	f7fe fb2e 	bl	d008029c <_read>
d0081c40:	1c43      	adds	r3, r0, #1
d0081c42:	d102      	bne.n	d0081c4a <_read_r+0x1e>
d0081c44:	682b      	ldr	r3, [r5, #0]
d0081c46:	b103      	cbz	r3, d0081c4a <_read_r+0x1e>
d0081c48:	6023      	str	r3, [r4, #0]
d0081c4a:	bd38      	pop	{r3, r4, r5, pc}
d0081c4c:	d009b990 	.word	0xd009b990
	...

d0081c60 <clut>:
d0081c60:	00000000 ffafafaf ffffffff ff3b67a2     .............g;.
d0081c70:	ffaa907c ff959595 ff7b7b7b ffffa997     |.......{{{.....
d0081c80:	ff37a91d ff7ca9ff ffbf8112 ffebbf66     ..7...|.....f...
d0081c90:	ff78c178 ff3d9318 ffb33418 ffd9311c     x.x...=..4...1..
d0081ca0:	ff000000 ff00000e ff00001d ff00002b     ............+...
d0081cb0:	ff000139 ff000147 ff000156 ff000164     9...G...V...d...
d0081cc0:	ff0001d2 ff0001ff ffcecece ff00ff00     ................
d0081cd0:	ffb2ff00 ffffe700 ffff9600 ffff1100     ................
d0081ce0:	ff491200 ff491355 ff4914aa ff4916ff     ..I.U.I...I...I.
d0081cf0:	ff5b1700 ff5b1855 ff5b19aa ff5b1aff     ..[.U.[...[...[.
d0081d00:	ff6d1b00 ff6d1c55 ff00e300 ff85ff54     ..m.U.m.....T...
d0081d10:	ffc4ff00 ffffd900 ffffa41f ffe05400     .............T..
d0081d20:	ffff0000 ff922655 ff9227aa ff9228ff     ....U&...'...(..
d0081d30:	ffa42900 ffa42a55 ffa42baa ffa42cff     .)..U*...+...,..
d0081d40:	ffb62d00 ffb62f55 ffb630aa ffb631ff     .-..U/...0...1..
d0081d50:	ffc93200 ffc93355 ffc934aa ffc935ff     .2..U3...4...5..
d0081d60:	ffdb3700 ffdb3855 ffdb39aa ffdb3aff     .7..U8...9...:..
d0081d70:	ffed3b00 ffed3c55 ffed3daa ffed3fff     .;..U<...=...?..
d0081d80:	ffff4000 ffff4155 ffff42aa ffff43ff     .@..UA...B...C..
d0081d90:	ff004400 ff004555 ff0046aa ff0048ff     .D..UE...F...H..
d0081da0:	ffffff00 ff12ff55 ff12ee55 ff12b6ff     ....U...U.......
d0081db0:	ff001fff ff9d0ec7 fff10000 ffff7700     .............w..
d0081dc0:	ff375200 ff375355 ff3754aa ff3755ff     .R7.US7..T7..U7.
d0081dd0:	ff495600 ff495855 ff4959aa ff495aff     .VI.UXI..YI..ZI.
d0081de0:	ff5b5b00 ff5b5c55 ff5b5daa ff5b5eff     .[[.U\[..][..^[.
d0081df0:	ff6d6000 ff6d6155 ff6d62aa ff6d63ff     .`m.Uam..bm..cm.
d0081e00:	ff6d6400 ff806555 ff8066aa ff8067ff     .dm.Ue...f...g..
d0081e10:	ff926900 ff926a55 ff926baa ff926cff     .i..Uj...k...l..
d0081e20:	ffa46d00 ffa46e55 ffa46faa ffa471ff     .m..Un...o...q..
d0081e30:	ffb67200 ffb67355 ffb674aa ffb675ff     .r..Us...t...u..
d0081e40:	ffc97600 ffc97755 ffc979aa ffc97aff     .v..Uw...y...z..
d0081e50:	ffdb7b00 ffdb7c55 ffdb7daa ffdb7eff     .{..U|...}...~..
d0081e60:	ffed7f00 ffed8055 ffed82aa ffed83ff     ....U...........
d0081e70:	ffff8400 ffff8555 ffff86aa ffff87ff     ....U...........
d0081e80:	ff008800 ff008a55 ff008baa ff008cff     ....U...........
d0081e90:	ff128d00 ff128e55 ff128faa ff1290ff     ....U...........
d0081ea0:	ff249200 ff249355 ff2494aa ff2495ff     ..$.U.$...$...$.
d0081eb0:	ff379600 ff379755 ff3798aa ff3799ff     ..7.U.7...7...7.
d0081ec0:	ff499b00 ff499c55 ff499daa ff499eff     ..I.U.I...I...I.
d0081ed0:	ff5b9f00 ff5ba055 ff5ba1aa ff5ba3ff     ..[.U.[...[...[.
d0081ee0:	ffa4b5d5 ffa0b0f8 ff94a3e6 ff7c89c1     ..............|.
d0081ef0:	ff6281c0 ff1c62a1 ff4254ea ff62a1bd     ..b..b...TB...b.
d0081f00:	ff7093c0 ff4977a1 ff003faa ff1554ff     ..p..wI..?...T..
d0081f10:	ff1c50b9 ff00b3ff ff0088aa ff00b5ff     .P..............
d0081f20:	ff0e62ff ff5eb7e3 ffbdc0b9 ff85b9ff     .b....^.........
d0081f30:	ff006caf ff1f81b9 ff3f5baa ffc9beff     .l.......[?.....
d0081f40:	ff5bafcb ffdbc055 ffdbc1aa ffbdc0c0     ..[.U...........
d0081f50:	ffedc400 ffedc555 ffedc6aa ffedc7ff     ....U...........
d0081f60:	ffffc800 ffffc955 ffffcaaa ffffccff     ....U...........
d0081f70:	ff00cd00 ff00ce55 ff00cfaa ff00d0ff     ....U...........
d0081f80:	ff12d100 ff12d255 ff12d3aa ff12d5ff     ....U...........
d0081f90:	ff24d600 ff24d755 ff24d8aa ff24d9ff     ..$.U.$...$...$.
d0081fa0:	ff37da00 ff37db55 ff37ddaa ff37deff     ..7.U.7...7...7.
d0081fb0:	ff49df00 ff49e055 ff49e1aa ff49e2ff     ..I.U.I...I...I.
d0081fc0:	ff5be300 ff5be555 ff5be6aa ff5be7ff     ..[.U.[...[...[.
d0081fd0:	ff6de800 ff6de955 ff6deaaa ff6debff     ..m.U.m...m...m.
d0081fe0:	ff0458ec ff0422ac ff0077ff ff0054ee     .X..."...w...T..
d0081ff0:	ff0033dd ff990000 ffff0000 ffff6600     .3...........f..
d0082000:	ffffdd00 ffa4f755 ffa4f8aa ffa4f9ff     ....U...........
d0082010:	ffb6fa00 ffb6fb55 ffb6fcaa ffb6feff     ....U...........
d0082020:	ffff00ff ff000000 ff131313 ff272727     ............'''.
d0082030:	ff3a3a3a ff4e4e4e ff626262 ff757575     :::.NNN.bbb.uuu.
d0082040:	ff898989 ff9c9c9c ffb0b0b0 ffc4c4c4     ................
d0082050:	ffd7d7d7 ffebebeb ffffffff ffffffff     ................

d0082060 <topscroll_bar_bg1>:
d0082060:	9f9f9f9f 9f9f9f9f 9f9f9f9f 020202a0     ................
d0082070:	a0020202 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082080:	029f9f9f 02020202 9f9fa002 9f9f9f9f     ................
d0082090:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00820a0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 029f9f9f     ................
d00820b0:	02020202 02020202 9f020202 9f9f9f9f     ................
d00820c0:	9f9f9f9f 0202a09f a3020202 9f9fa3a3     ................
d00820d0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00820e0:	a00202a0 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00820f0:	02029f9f 02020202 02020202 9f9fa002     ................
d0082100:	9f9f9f9f 9f9f9f9f 0202a09f 02020202     ................
d0082110:	02020202 9f9f0202 9f9f9f9f 9f9f9f9f     ................
d0082120:	0202029f 02020202 9f9f9f9f 9f9f9f9f     ................
d0082130:	9f9f9f9f 9f9f9f9f a00202a0 02a09f9f     ................
d0082140:	9f9f9f02 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082150:	02020202 9f020202 9f9f9f9f 9f9f9f9f     ................
d0082160:	a09f9f9f 02020202 02020202 9f9f0202     ................
d0082170:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082180:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082190:	029f9f9f 0202a0a0 9f9f0202 9f9f9f9f     ................
d00821a0:	9f9f9f9f 9f9f9f9f 0202a09f 02020202     ................
d00821b0:	9f9f9f02 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00821c0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00821d0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00821e0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00821f0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082200:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082210:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082220:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082230:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082240:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082250:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082260:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082270:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082280:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082290:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822a0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822b0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822c0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822d0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822e0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822f0:	a0a0a09f a0a0a0a0 9f9f9f9f 9f9f9f9f     ................
d0082300:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082310:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082320:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082330:	b79f9f9f 02020202 b7b702a0 9fa0a0a0     ................
d0082340:	9f9f9f9f 9f9f9f9f 9f9f9f9f 8f8f9f9f     ................
d0082350:	9f9f8f8f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082360:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082370:	9f9f9f9f b7b79f9f 02a00202 b7020202     ................
d0082380:	9f9fa0b7 9f9f9f9f 8f9f9f9f 8f8f8f8f     ................
d0082390:	8f8f8f8f 8f8f8f8f a0a0a0a0 9fa0a0a0     ................
d00823a0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00823b0:	8f8f8f8f 8f8f8f8f 09098f8f a0a0a009     ................
d00823c0:	9fa0a0a0 9f9f9f9f 8f8f8f9f 8f8f8f8f     ................
d00823d0:	8f8f8f8f 8f8f8f8f 02b78f8f a0020202     ................
d00823e0:	a0b7b702 8f8fa0a0 8f8f8f8f 8f8f8f8f     ................
d00823f0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082400:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082410:	8f8f8f8f 8f8f8f8f 8f8f8f8f 02b7b78f     ................
d0082420:	0202a002 b7b70202 8f8f8fa0 8f8f8f8f     ................
d0082430:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082440:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082450:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082460:	8f8f8f8f a0a0a0a0 8f8fa0a0 06068f8f     ................
d0082470:	06060606 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082480:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082490:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00824a0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00824b0:	0605068f 06060606 8f8f8f06 8f8f8f8f     ................
d00824c0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00824d0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00824e0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00824f0:	8f8f8f8f 06060506 06060606 8f8f0606     ................
d0082500:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082510:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082520:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082530:	8f8f8f8f 068f8f8f 06060605 06060606     ................
d0082540:	8f8f0606 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082550:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082560:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082570:	8f8f8f8f 8f8f8f8f 05068f8f 06060606     ................
d0082580:	06060606 8f066006 8f8f8f8f 8f8f8f8f     .....`..........
d0082590:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00825a0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00825b0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 0605068f     ................
d00825c0:	06060606 06060606 06600606 8f8f8f8f     ..........`.....
d00825d0:	05058f8f 05050505 05050505 8f8f8f8f     ................
d00825e0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00825f0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082600:	06050606 06060606 06060606 06600606     ..............`.
d0082610:	8f8f8f06 05010505 05050505 05050505     ................
d0082620:	8f8f0505 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082630:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082640:	068f8f8f 06060506 06060606 06060606     ................
d0082650:	60060606 05058f06 05050101 05050505     ...`............
d0082660:	05050505 8f050605 8f8f8f8f 8f8f8f8f     ................
d0082670:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082680:	8f8f8f8f 06068f8f 06060605 06060606     ................
d0082690:	06060606 60060606 01050505 05050505     .......`........
d00826a0:	05050505 05050505 05060505 8f8f8f8f     ................
d00826b0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00826c0:	8f8f8f8f 8f8f8f8f 0506068f 06060606     ................
d00826d0:	06060606 06060606 05050606 05010105     ................
d00826e0:	05050505 05050505 05050505 06050505     ................
d00826f0:	8f8f0505 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082700:	8f8f8f8f 8f8f8f8f 8f8f0d8f 06050606     ................
d0082710:	06060606 06060606 06060606 050d0505     ................
d0082720:	05050501 05050505 05050505 05050505     ................
d0082730:	05050505 8f050506 8f8f8f8f 8f8f8f8f     ................
d0082740:	8f8f8f8f 8f8f8f8f 8f0d8f8f 068f0d8f     ................
d0082750:	06060606 06060606 060d0606 05060606     ................
d0082760:	050d0505 05050d05 05050505 050d050d     ................
d0082770:	05050505 05050505 05050605 0d8f8f05     ................
d0082780:	8f8f8f8f 8f0d8f0d 8f8f8f8f 0d0d0d0d     ................
d0082790:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d00827a0:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d00827b0:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d00827c0:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d00827d0:	0d0a0b0a 0a0a0a0d 0b0a0b0a 0a0a0a0a     ................
d00827e0:	0a0a0a0a 680a0a0a 0b0b0a68 0a0a0a0a     .......hh.......
d00827f0:	0a0a0b0a 680a0a0a 0a0a0a0a 6868680a     .......h.....hhh
d0082800:	0b0b0b0a 0a0a0b0a 0a0a0b0a 0a0b0b0b     ................
d0082810:	0a0a0b0b 0b0b0a0a 0b0a0a0a 0a0a0a0b     ................
d0082820:	0a0a0a0a 0a0b0a0a 0a0a0a0a 0a0a0a0a     ................
d0082830:	0b0a0a0a 0a0a0a0a 0a0a0a0a 0b0b0a0a     ................
d0082840:	0a0a0a0a 0a0a0a0b 0a0a0b0a 0a0a0a0a     ................
d0082850:	0a0a0a0a 0b0b0a0a 0a0a0b0a 0a0a0b0a     ................
d0082860:	0a680a0b 0b0a0a0a 0a0a0b0b 0a0a6868     ..h.........hh..
d0082870:	680a0a0a 0a0b0a68 0a686868 680a0a0a     ...hh...hhh....h
d0082880:	0a0a6868 0b0a0a0a 0a0a0a0a 0b0b0a0a     hh..............
d0082890:	0a0a0a0a 0a0a0a0a 0b0a0a0a 0a0a0a0a     ................
d00828a0:	6868680b 0a0a0a0a 68680a0a 0a0a0a0a     .hhh......hh....
d00828b0:	0b0a0a0a 0a0a0a0b 0a0a0a0a 0a0a0a0a     ................
d00828c0:	0a0a0a0a 0a0a0a0a 0a0a0a0a 0a0a0a0a     ................
d00828d0:	0a0a0a0a 680a0a0a 0b0b6868 0a0a0a0a     .......hhh......
d00828e0:	70707559 6f6f5420 63616874 64206568     Yupp Toothache d
d00828f0:	746b7365 4520706f 6465646e 00293a20     esktop Ended :).

d0082900 <thePallete>:
d0082900:	00000000 ffafafaf ffffffff ff3b67a2     .............g;.
d0082910:	ffaa907c ff959595 ff7b7b7b ffffa997     |.......{{{.....
d0082920:	ff37a91d ff7ca9ff ffbf8112 ffebbf66     ..7...|.....f...
d0082930:	ff78c178 ff3d9318 ffb33418 ffd9311c     x.x...=..4...1..
d0082940:	ff000000 ff00000e ff00001d ff00002b     ............+...
d0082950:	ff000139 ff000147 ff000156 ff000164     9...G...V...d...
d0082960:	ff0001d2 ff0001ff ffcecece ff00ff00     ................
d0082970:	ffb2ff00 ffffe700 ffff9600 ffff1100     ................
d0082980:	ffbf13d5 ffa411c7 ff890eb9 ff6e0baa     ..............n.
d0082990:	ff52099c ff37068d ff1c037f ff000070     ..R...7.....p...
d00829a0:	ff6d1b00 ff6d1c55 ff00e300 ff85ff54     ..m.U.m.....T...
d00829b0:	ffc4ff00 ffffd900 ffffa41f ffe05400     .............T..
d00829c0:	ffff0000 ff922655 ff9227aa ff9228ff     ....U&...'...(..
d00829d0:	ffa42900 ffa42a55 ffa42baa ffa42cff     .)..U*...+...,..
d00829e0:	ffb62d00 ffb62f55 ffb630aa ffb631ff     .-..U/...0...1..
d00829f0:	ffc93200 ffc93355 ffc934aa ffc935ff     .2..U3...4...5..
d0082a00:	ffdb3700 ffdb3855 ffdb39aa ffdb3aff     .7..U8...9...:..
d0082a10:	ffed3b00 ffed3c55 ffed3daa ffed3fff     .;..U<...=...?..
d0082a20:	ffff4000 ffff4155 ffff42aa ffff43ff     .@..UA...B...C..
d0082a30:	ff004400 ff004555 ff0046aa ff0048ff     .D..UE...F...H..
d0082a40:	ffffff00 ff12ff55 ff12ee55 ff12b6ff     ....U...U.......
d0082a50:	ff001fff ff9d0ec7 fff10000 ffff7700     .............w..
d0082a60:	ff375200 ff375355 ff3754aa ff3755ff     .R7.US7..T7..U7.
d0082a70:	ff495600 ff495855 ff4959aa ff495aff     .VI.UXI..YI..ZI.
d0082a80:	ff5b5b00 ff5b5c55 ff5b5daa ff5b5eff     .[[.U\[..][..^[.
d0082a90:	ff6d6000 ff6d6155 ff6d62aa ff6d63ff     .`m.Uam..bm..cm.
d0082aa0:	ff6d6400 ff806555 ff8066aa ff8067ff     .dm.Ue...f...g..
d0082ab0:	ff926900 ff926a55 ff926baa ff926cff     .i..Uj...k...l..
d0082ac0:	ffa46d00 ffa46e55 ffa46faa ffa471ff     .m..Un...o...q..
d0082ad0:	ffb67200 ffb67355 ffb674aa ffb675ff     .r..Us...t...u..
d0082ae0:	ffc97600 ffc97755 ffc979aa ffc97aff     .v..Uw...y...z..
d0082af0:	ffdb7b00 ffdb7c55 ffdb7daa ffdb7eff     .{..U|...}...~..
d0082b00:	ffed7f00 ffed8055 ffed82aa ffed83ff     ....U...........
d0082b10:	ffff8400 ffff8555 ffff86aa ffff87ff     ....U...........
d0082b20:	ff008800 ff008a55 ff008baa ff008cff     ....U...........
d0082b30:	ff128d00 ff128e55 ff128faa ff1290ff     ....U...........
d0082b40:	ff249200 ff249355 ff2494aa ff2495ff     ..$.U.$...$...$.
d0082b50:	ff379600 ff379755 ff3798aa ff3799ff     ..7.U.7...7...7.
d0082b60:	ff499b00 ff499c55 ff499daa ff499eff     ..I.U.I...I...I.
d0082b70:	ff5b9f00 ff5ba055 ff5ba1aa ff5ba3ff     ..[.U.[...[...[.
d0082b80:	ffa4b5d5 ffa0b0f8 ff94a3e6 ff7c89c1     ..............|.
d0082b90:	ff6281c0 ff1c62a1 ff4254ea ff62a1bd     ..b..b...TB...b.
d0082ba0:	ff7093c0 ff4977a1 ff003faa ff1554ff     ..p..wI..?...T..
d0082bb0:	ff1c50b9 ff00b3ff ff0088aa ff00b5ff     .P..............
d0082bc0:	ff0e62ff ff5eb7e3 ffbdc0b9 ff85b9ff     .b....^.........
d0082bd0:	ff006caf ff1f81b9 ff3f5baa ffc9beff     .l.......[?.....
d0082be0:	ff5bafcb ffdbc055 ffdbc1aa ffbdc0c0     ..[.U...........
d0082bf0:	ffedc400 ffedc555 ffedc6aa ffedc7ff     ....U...........
d0082c00:	ffffc800 ffffc955 ffffcaaa ffffccff     ....U...........
d0082c10:	ff00cd00 ff00ce55 ff00cfaa ff00d0ff     ....U...........
d0082c20:	ff12d100 ff12d255 ff12d3aa ff12d5ff     ....U...........
d0082c30:	ff24d600 ff24d755 ff24d8aa ff24d9ff     ..$.U.$...$...$.
d0082c40:	ff37da00 ff37db55 ff37ddaa ff37deff     ..7.U.7...7...7.
d0082c50:	ff49df00 ff49e055 ff49e1aa ff49e2ff     ..I.U.I...I...I.
d0082c60:	ff5be300 ff5be555 ff5be6aa ff5be7ff     ..[.U.[...[...[.
d0082c70:	ff6de800 ff6de955 ff6deaaa ff6debff     ..m.U.m...m...m.
d0082c80:	ff6dec00 ff80ee55 ff80efaa ff80f0ff     ..m.U...........
d0082c90:	ff93cea2 ff92f255 ff92f3aa ff92f4ff     ....U...........
d0082ca0:	ffa4f600 ffa4f755 ffa4f8aa ffa4f9ff     ....U...........
d0082cb0:	ffb6fa00 ffb6fb55 ffb6fcaa ffb6feff     ....U...........
d0082cc0:	ffc9ff00 ffc9ff55 ffc9ffaa ffc9ffff     ....U...........
d0082cd0:	ffdbff00 ffdbff55 ffdbffaa ffdbffff     ....U...........
d0082ce0:	ffedff00 ffedff55 ffedffaa ffedffff     ....U...........
d0082cf0:	ffffff00 ffffff55 ffffffaa ffffffff     ....U...........

d0082d00 <txtTitle>:
d0082d00:	73696874 20736920 65742061 73207473     this is a test s
d0082d10:	6c6f7263 202c796c 656d6f73 6e696874     crolly, somethin
d0082d20:	6f742067 73657420 6f662074 6f6e2072     g to test for no
d0082d30:	62202c77 77207475 206c6c69 656b616d     w, but will make
d0082d40:	20746920 696c2061 656c7474 74656220      it a little bet
d0082d50:	20726574 6c6c6966 65742079 20797478     ter filly texty 
d0082d60:	66757473 00000066                       stuff...

d0082d68 <bk_bub_tree1>:
	...
d0082d7c:	21292110 21252525 21212529 29255d29     .!)!%%%!)%!!)]%)
d0082d8c:	21212121 21212529 10292121 00001021     !!!!)%!!!!).!...
	...
d0082dbc:	21292910 29212521 25252925 25292529     .))!!%!)%)%%)%)%
d0082dcc:	21212929 21212110 29292525 00001010     ))!!.!!!%%))....
	...
d0082df8:	10000000 25212921 29212521 1010215d     ....!)!%!%!)]!..
d0082e08:	29212110 25292525 29211010 10102529     .!!)%%)%..!))%..
d0082e18:	00000010 00000000 00000000 00000000     ................
	...
d0082e38:	10000000 25212121 25292925 10101010     ....!!!%%))%....
d0082e48:	21101010 10101021 29101025 10101010     ...!!...%..)....
d0082e58:	00000010 00000000 00000000 00000000     ................
	...
d0082e78:	10000000 29252121 29252925 10212110     ....!!%)%)%).!!.
d0082e88:	10102121 10101010 10101010 67211010     !!............!g
d0082e98:	00000010 00000000 00000000 00000000     ................
	...
d0082ebc:	25292110 25252925 10252121 67676725     .!)%%)%%!!%.%ggg
d0082ecc:	10102121 10101010 bb672110 00001010     !!.......!g.....
	...
d0082efc:	29212110 25252525 10212125 bbbbbb21     .!!)%%%%%!!.!...
d0082f0c:	67bbbbbb 21101010 67bb6710 00001010     ...g...!.g.g....
	...
d0082f3c:	25212110 29292521 21212925 bbbb6710     .!!%!%))%)!!.g..
d0082f4c:	bbbbbbbb 211067bb 1010bb10 00001021     .....g.!....!...
	...
d0082f78:	10000000 25212921 10212921 29292521     ....!)!%!)!.!%))
d0082f88:	67101021 bbbbbbbb 25101010 10102110     !..g.......%.!..
d0082f98:	00001021 00000000 00000000 00000000     !...............
	...
d0082fb8:	10000000 21212521 21102925 25102561     ....!%!!%).!a%.%
d0082fc8:	10212125 25672510 21101010 21101021     %!!..%g%...!!..!
d0082fd8:	00101010 00000000 00000000 00000000     ................
	...
d0082ff8:	10000000 21252521 10102129 10211010     ....!%%!)!....!.
d0083008:	21252525 10101021 29211010 10252525     %%%!!.....!)%%%.
d0083018:	00102125 00000000 00000000 00000000     %!..............
	...
d0083038:	10000000 21292121 29211025 10212525     ....!!)!%.!)%%!.
d0083048:	10102121 29292525 10252529 21101010     !!..%%)))%%....!
d0083058:	00102125 00000000 00000000 00000000     %!..............
	...
d0083078:	10000000 25252121 29211029 21252529     ....!!%%).!))%%!
d0083088:	21211010 10101010 21101010 29252521     ..!!.......!!%%)
d0083098:	00102121 00000000 00000000 00000000     !!..............
	...
d00830bc:	21252110 5d212529 25252925 25252929     .!%!)%!]%)%%))%%
d00830cc:	25292529 5d252529 21292929 00001021     )%)%)%%])))!!...
	...
d00830fc:	21252110 25252529 25292929 25252525     .!%!)%%%)))%%%%%
d008310c:	25252125 21292925 255d2525 00000010     %!%%%))!%%]%....
	...
d008313c:	21252110 25292525 25252529 25292525     .!%!%%)%)%%%%%)%
d008314c:	21212125 21212121 25292529 00000010     %!!!!!!!)%)%....
	...
d0083174:	10000000 10101010 25251010 25252929     ..........%%))%%
d0083184:	25212525 29252925 21252925 29252121     %%!%%)%)%)%!!!%)
d0083194:	25252525 10102129 00101010 00000000     %%%%)!..........
	...
d00831b4:	21100000 61292525 29102525 2121255d     ...!%%)a%%.)]%!!
d00831c4:	21212525 25252525 29292929 29252925     %%!!%%%%))))%)%)
d00831d4:	29292925 25252529 10252525 00001010     %))))%%%%%%.....
	...
d00831f4:	29211010 25252925 10252525 25212121     ..!)%)%%%%%.!!!%
d0083204:	21212525 25212121 10102525 25211010     %%!!!!!%%%....!%
d0083214:	29292529 21292925 25252525 10106129     )%))%))!%%%%)a..
d0083224:	00000010 00000000 00000000 00000000     ................
d0083234:	25252110 25252529 21252929 29212110     .!%%)%%%))%!.!!)
d0083244:	25212125 25252925 25611010 10102529     %!!%%)%%..a%)%..
d0083254:	21212121 25252525 25252925 25252529     !!!!%%%%%)%%)%%%
d0083264:	00001010 00000000 00000000 00000000     ................
d0083274:	29252910 25292525 25292521 25292110     .)%)%%)%!%)%.!)%
d0083284:	25252129 29252529 29292929 21212525     )!%%)%%)))))%%!!
d0083294:	21212110 29212125 29292925 25292529     .!!!%!!)%))))%)%
d00832a4:	00001029 00000000 00000000 00000000     )...............
d00832b4:	25292510 25292125 25292110 25291025     .%)%%!)%.!)%%.)%
d00832c4:	25252529 29292525 25215d25 21252929     )%%%%%))%]!%))%!
d00832d4:	25211021 25252929 25292525 29252925     !.!%))%%%%)%%)%)
d00832e4:	00101025 00000000 00000000 10000000     %...............
d00832f4:	25252521 10215d29 29252121 29252925     !%%%)]!.!!%)%)%)
d0083304:	25212525 21292525 21292925 21252525     %%!%%%)!%))!%%%!
d0083314:	25102121 21212925 25292521 25252925     !!.%%)!!!%)%%)%%
d0083324:	00102925 00000000 00000000 10000000     %)..............
d0083334:	25292121 10252929 25212121 255d2929     !!)%))%.!!!%))]%
d0083344:	25212121 25212125 21212925 21292525     !!!%%!!%%)!!%%)!
d0083354:	21102121 29212121 25212121 29252925     !!.!!!!)!!!%%)%)
d0083364:	00102525 00000000 00000000 10000000     %%..............
d0083374:	29252125 10292925 29211021 25292125     %!%)%)).!.!)%!)%
d0083384:	21292929 21292521 25212525 21292529     )))!!%)!%%!%)%)!
d0083394:	21102121 295d2929 10212925 29252925     !!.!))])%)!.%)%)
d00833a4:	00102525 00000000 00000000 10000000     %%..............
d00833b4:	29212121 25252525 10211010 25252561     !!!)%%%%..!.a%%%
d00833c4:	25212121 21212129 25252125 21252925     !!!%)!!!%!%%%)%!
d00833d4:	25102110 21212925 21292521 25292910     .!.%%)!!!%)!.))%
d00833e4:	00102525 00000000 00000000 00000000     %%..............
d00833f4:	21212510 29252129 21251021 25252110     .%!!)!%)!.%!.!%%
d0083404:	21252929 25102121 29292125 21292925     ))%!!!.%%!))%))!
d0083414:	21102110 21101021 25252110 25295d21     .!.!!..!.!%%!])%
d0083424:	10212925 00000000 00000000 00000000     %)!.............
d0083434:	21292510 25212929 21102125 21212110     .%)!))!%%!.!.!!!
d0083444:	21211021 25211010 25252110 21212525     !.!!..!%.!%%%%!!
d0083454:	10102110 10212110 29211021 29251021     .!...!!.!.!)!.%)
d0083464:	10212525 00000000 00000000 00000000     %%!.............
d0083474:	21292110 29212921 10102129 10102121     .!)!!)!))!..!!..
d0083484:	10212110 25251010 25252110 10212925     .!!...%%.!%%%)!.
d0083494:	10101021 10102121 29211021 2929105d     !...!!..!.!)].))
d00834a4:	10212525 00000000 00000000 00000000     %%!.............
d00834b4:	25211000 21252521 10212125 21212110     ..!%!%%!%!!..!!!
d00834c4:	10101021 21102110 25252521 10212121     !....!.!!%%%!!!.
d00834d4:	10101021 00001010 21212110 29211021     !........!!!!.!)
d00834e4:	00102525 00000000 00000000 00000000     %%..............
d00834f4:	21211000 21212121 10212121 10101010     ..!!!!!!!!!.....
d0083504:	10101010 10211021 21212110 21212121     ....!.!..!!!!!!!
d0083514:	10101010 00000000 21211000 21212121     ..........!!!!!!
d0083524:	00102121 00000000 00000000 00000000     !!..............
d0083534:	10100000 10101010 00101010 00000000     ................
d0083544:	00000000 10101010 10101010 10101010     ................
	...
d008355c:	10100000 10101010 00001010              ............

d0083568 <bk_bub_tree2>:
	...
d008357c:	21292110 21252525 21212529 29252529     .!)!%%%!)%!!)%%)
d008358c:	21212121 21212529 10292121 00001021     !!!!)%!!!!).!...
	...
d00835b8:	29100000 25212129 29252921 25292525     ...))!!%!)%)%%)%
d00835c8:	29292529 21102121 25252121 10102929     )%))!!.!!!%%))..
	...
d00835f4:	11000000 25212921 29212521 10102125     ....!)!%!%!)%!..
d0083604:	29212110 25292525 29211010 10102529     .!!)%%)%..!))%..
d0083614:	00000010 00000000 00000000 00000000     ................
	...
d0083634:	21211000 29252521 11102529 10101010     ..!!!%%))%......
d0083644:	10212110 11251010 10102510 00101010     .!!...%..%......
	...
d0083670:	11000000 29292121 29252925 10212110     ....!!))%)%).!!.
d0083680:	10102121 10101111 10101010 67211110     !!............!g
d0083690:	00000010 00000000 00000000 00000000     ................
	...
d00836b0:	21100000 29252529 21212525 67251021     ...!)%%)%%!!!.%g
d00836c0:	21216767 10101110 21101010 1011bb67     gg!!.......!g...
	...
d00836f0:	29212110 25252925 10212125 bbbbbb25     .!!)%)%%%!!.%...
d0083700:	67bbbbbb 21101010 67bb6710 00001010     ...g...!.g.g....
	...
d008372c:	21100000 25212521 29252929 67102121     ...!!%!%))%)!!.g
d008373c:	bbbbbbbb 67bbbbbb bb102110 10211010     .......g.!....!.
	...
d0083768:	10000000 25212921 11212921 29292521     ....!)!%!)!.!%))
d0083778:	67101121 bbbbbbbb 25101110 10112510     !..g.......%.%..
d0083788:	00001021 00000000 00000000 00000000     !...............
	...
d00837a8:	25211000 29292121 25252110 21252511     ..!%!!)).!%%.%%!
d00837b8:	25101021 10102567 10212110 10102110     !..%g%...!!..!..
d00837c8:	00000010 00000000 00000000 00000000     ................
	...
d00837e4:	10000000 21252521 10102129 11211010     ....!%%!)!....!.
d00837f4:	21252525 10111021 29211110 10252525     %%%!!.....!)%%%.
d0083804:	00102121 00000000 00000000 00000000     !!..............
	...
d0083824:	21211000 10252125 25292921 21211021     ..!!%!%.!))%!.!!
d0083834:	25251011 25292929 10111025 21252110     ..%%)))%%....!%!
d0083844:	00000010 00000000 00000000 00000000     ................
	...
d0083860:	11000000 21252121 29211025 21292529     ....!!%!%.!))%)!
d0083870:	21211011 10101010 21101010 29252921     ..!!.......!!)%)
d0083880:	00112121 00000000 00000000 00000000     !!..............
	...
d00838a0:	21100000 25292125 29292521 29292925     ...!%!)%!%))%)))
d00838b0:	25292525 25292529 29292125 10212129     %%)%)%)%%!)))!!.
	...
d00838e0:	21252110 25252529 25292929 25252525     .!%!)%%%)))%%%%%
d00838f0:	25252125 21292925 25252525 00000010     %!%%%))!%%%%....
	...
d008391c:	21100000 25252125 25292929 29252925     ...!%!%%)))%%)%)
d008392c:	21252529 21212121 29252121 00112525     )%%!!!!!!!%)%%..
	...
d008395c:	21292110 29252925 21212529 25292925     .!)!%)%))%!!%))%
d008396c:	21252525 29252121 25292929 10101125     %%%!!!%))))%%...
d008397c:	00111010 00000000 00000000 00000000     ................
	...
d0083998:	21100000 25252125 21292929 25212121     ...!%!%%)))!!!!%
d00839a8:	29292925 21292525 29252521 25292925     %)))%%)!!%%)%))%
d00839b8:	29252925 00101029 00000000 00000000     %)%))...........
	...
d00839d4:	11000000 29212521 25252529 29292921     ....!%!))%%%!)))
d00839e4:	25101125 25292921 21292929 29292525     %..%!))%)))!%%))
d00839f4:	29292929 29292529 00101129 00000000     )))))%))).......
	...
d0083a14:	21252111 21292925 25292121 25252929     .!%!%))!!!)%))%%
d0083a24:	21111121 29252925 25292525 21212525     !..!%)%)%%)%%%!!
d0083a34:	29292121 21252925 00001125 00000000     !!))%)%!%.......
	...
d0083a50:	29100000 29292525 25251121 25252929     ...)%%))!.%%))%%
d0083a60:	21292929 29211121 29252529 25252929     )))!!.!))%%)))%%
d0083a70:	25252525 29252525 29252929 00000010     %%%%%%%)))%)....
	...
d0083a8c:	10000000 25252921 25102129 25292929     ....!)%%)!.%)))%
d0083a9c:	29292925 11212129 29252121 21212529     %))))!!.!!%))%!!
d0083aac:	21252929 25292121 29252929 00102129     ))%!!!)%))%))!..
	...
d0083acc:	29252110 11212529 25252925 25292529     .!%))%!.%)%%)%)%
d0083adc:	21292925 25112121 21212929 25292521     %))!!!.%))!!!%)%
d0083aec:	25292121 25292921 25252529 00000010     !!)%!))%)%%%....
d0083afc:	00000000 10110000 00001010 25211011     ..............!%
d0083b0c:	21292525 29252521 29252125 25292925     %%)!!%%)%!%)%))%
d0083b1c:	21112121 21212111 25292521 25292125     !!.!.!!!!%)%%!)%
d0083b2c:	25212125 25252925 00102529 00000000     %!!%%)%%)%......
d0083b3c:	10100000 21292921 25211011 25252929     ....!))!..!%))%%
d0083b4c:	29252921 21102529 25212525 10212525     !)%))%.!%%!%%%!.
d0083b5c:	10102121 25252511 21212529 21252129     !!...%%%)%!!)!%!
d0083b6c:	29252525 21252525 00000010 10000000     %%%)%%%!........
d0083b7c:	25252521 29292925 29292929 29252529     !%%%%))))))))%%)
d0083b8c:	21292525 21252910 29292929 11211021     %%)!.)%!))))!.!.
d0083b9c:	29252121 21212529 21212121 21252129     !!%))%!!!!!!)!%!
d0083bac:	29252529 00001021 00000000 29292111     )%%)!........!))
d0083bbc:	25252129 25252525 29292925 25292929     )!%%%%%%%))))))%
d0083bcc:	29211021 29212125 21212129 25251121     !.!)%!!))!!!!.%%
d0083bdc:	21252529 21102121 21252111 25252521     )%%!!!.!.!%!!%%%
d0083bec:	10212929 00000000 25100000 29212125     ))!........%%!!)
d0083bfc:	21252525 25292925 25101025 11212121     %%%!%))%%..%!!!.
d0083c0c:	21112529 21252929 11112121 21212121     )%.!))%!!!..!!!!
d0083c1c:	11102121 29211021 25252110 21292525     !!..!.!).!%%%%)!
d0083c2c:	00000010 10000000 21212921 29292521     ........!)!!!%))
d0083c3c:	25252921 21101010 10212121 11212110     !)%%...!!!!..!!.
d0083c4c:	25252521 21112121 10101010 10101010     !%%%!!.!........
d0083c5c:	21102121 21211025 29292529 00102121     !!.!%.!!)%))!!..
d0083c6c:	00000000 25211000 29252121 21212129     ......!%!!%))!!!
d0083c7c:	21212121 21212121 21211011 29211021     !!!!!!!!..!!!.!)
d0083c8c:	11212129 10101021 21212121 10102121     )!!.!...!!!!!!..
d0083c9c:	11212110 29252921 11212129 00000000     .!!.!)%))!!.....
d0083cac:	10000000 21212121 21212121 11212121     ....!!!!!!!!!!!.
d0083cbc:	10101010 10101010 21111021 21212121     ........!..!!!!!
d0083ccc:	10211010 21101010 10101011 21101010     ..!....!.......!
d0083cdc:	25212111 21212125 00000010 00000000     .!!%%!!!........
d0083cec:	10110000 10101010 10101110 00000010     ................
d0083cfc:	00000000 10101000 10101010 10101010     ................
d0083d0c:	10101010 00001010 00000000 10101000     ................
d0083d1c:	10101010 00001010 00000000              ............

d0083d28 <bk_bub_tree3>:
	...
d0083d3c:	21292110 21252525 21212529 25255d29     .!)!%%%!)%!!)]%%
d0083d4c:	21212121 21212529 10292121 00001021     !!!!)%!!!!).!...
	...
d0083d80:	21292910 29212521 25252925 25292529     .))!!%!)%)%%)%)%
d0083d90:	21212929 21212110 29292525 00001010     ))!!.!!!%%))....
	...
d0083dc0:	11000000 25212921 29212521 1110215d     ....!)!%!%!)]!..
d0083dd0:	29212110 25292525 25211110 10106129     .!!)%%)%..!%)a..
d0083de0:	00000010 00000000 00000000 00000000     ................
	...
d0083e04:	10000000 25212121 25292925 10101110     ....!!!%%))%....
d0083e14:	21101010 10101021 29101125 10101010     ...!!...%..)....
d0083e24:	00000010 00000000 00000000 00000000     ................
	...
d0083e48:	11000000 29252121 29252925 10212110     ....!!%)%)%).!!.
d0083e58:	10102121 10101111 10101010 67211110     !!............!g
d0083e68:	00000010 00000000 00000000 00000000     ................
	...
d0083e90:	25292110 25252925 10212121 67676725     .!)%%)%%!!!.%ggg
d0083ea0:	11102121 10101010 bb672110 00001011     !!.......!g.....
	...
d0083ed4:	29212110 25252525 10212125 bbbbbb25     .!!)%%%%%!!.%...
d0083ee4:	67bbbbbb 21101010 67bb6710 00001010     ...g...!.g.g....
	...
d0083f18:	25212110 29292521 21212925 bbbb6711     .!!%!%))%)!!.g..
d0083f28:	bbbbbbbb 211067bb 1010bb10 00001021     .....g.!....!...
	...
d0083f58:	10000000 25212921 11212921 29292521     ....!)!%!)!.!%))
d0083f68:	67101121 bbbbbbbb 25101110 10112510     !..g.......%.%..
d0083f78:	00001021 00000000 00000000 00000000     !...............
	...
d0083f9c:	10000000 21212521 21102929 25112561     ....!%!!)).!a%.%
d0083fac:	10212125 25672510 21101010 21101021     %!!..%g%...!!..!
d0083fbc:	00101010 00000000 00000000 00000000     ................
	...
d0083fe0:	10000000 21252521 10102129 11211010     ....!%%!)!....!.
d0083ff0:	21252525 10111021 29211111 10252525     %%%!!.....!)%%%.
d0084000:	00102125 00000000 00000000 00000000     %!..............
	...
d0084024:	10000000 21292121 29211025 10212525     ....!!)!%.!)%%!.
d0084034:	10112121 29252525 10252529 21101011     !!..%%%))%%....!
d0084044:	00102125 00000000 00000000 00000000     %!..............
	...
d0084068:	11000000 25252121 29211025 21252525     ....!!%%%.!)%%%!
d0084078:	21211011 10101010 21101110 25252525     ..!!.......!%%%%
d0084088:	00112121 00000000 00000000 00000000     !!..............
	...
d00840b0:	21252110 5d212529 25252925 25252929     .!%!)%!]%)%%))%%
d00840c0:	25292529 5d252529 21292929 00001021     )%)%)%%])))!!...
	...
d00840f4:	21252110 25252525 25292929 25252525     .!%!%%%%)))%%%%%
d0084104:	25252125 21292925 255d2525 00000010     %!%%%))!%%]%....
	...
d0084138:	21252110 25292525 25252529 25292525     .!%!%%)%)%%%%%)%
d0084148:	21212129 21212121 25252525 00000011     )!!!!!!!%%%%....
	...
d008417c:	21252111 29252925 25292925 10252529     .!%!%)%)%))%)%%.
d008418c:	10101010 21101010 25252121 10252525     .......!!!%%%%%.
d008419c:	10101010 10101010 00000010 00000000     ................
	...
d00841bc:	11000000 25212121 29252929 25292525     ....!!!%))%)%%)%
d00841cc:	21112525 29252525 11212525 21211111     %%.!%%%)%%!...!!
d00841dc:	25292529 25252525 61252925 00101021     )%)%%%%%%)%a!...
	...
d0084200:	21102000 29252125 25292529 29252929     . .!%!%))%)%))%)
d0084210:	29252125 25292929 25292529 21112525     %!%))))%)%)%%%.!
d0084220:	29252121 25252529 25252525 10252525     !!%))%%%%%%%%%%.
	...
d008423c:	11101000 10101111 29252111 25252525     .........!%)%%%%
d008424c:	29292925 25252925 25252529 25212525     %)))%)%%)%%%%%!%
d008425c:	25252525 11252561 25252521 25252525     %%%%a%%.!%%%%%%%
d008426c:	25252525 29292929 00000010 00000000     %%%%))))........
d008427c:	10000000 29212110 29252525 25252929     .....!!)%%%)))%%
d008428c:	29252925 215d2529 29252525 25252925     %)%))%]!%%%)%)%%
d008429c:	29251125 25292525 21252525 21212511     %.%)%%)%%%%!.%!!
d00842ac:	21212929 29252525 25252529 00001021     ))!!%%%))%%%!...
d00842bc:	00000000 21100000 25292925 25292925     .......!%))%%))%
d00842cc:	25292925 29292529 25212125 29292525     %))%)%))%!!%%%))
d00842dc:	25252925 25292511 29252925 21252929     %)%%.%)%%)%)))%!
d00842ec:	25252110 25252525 25292125 25292525     .!%%%%%%%!)%%%)%
d00842fc:	00001029 00000000 29100000 25252529     )..........))%%%
d008430c:	29292925 29252529 21212529 25292521     %))))%%))%!!!%)%
d008431c:	25252929 11212125 25256121 25252529     ))%%%!!.!a%%)%%%
d008432c:	21212925 21292111 21212121 21212525     %)!!.!)!!!!!%%!!
d008433c:	25292925 00001025 00000000 25211000     %))%%.........!%
d008434c:	29252121 25252525 25252525 25292925     !!%)%%%%%%%%%))%
d008435c:	25252925 21252525 21112121 21252525     %)%%%%%!!!.!%%%!
d008436c:	25292925 21212529 21212110 21211111     %))%)%!!.!!!..!!
d008437c:	21252521 25255d21 00102125 00000000     !%%!!]%%%!......
d008438c:	10252110 25252929 25252529 25292925     .!%.))%%)%%%%))%
d008439c:	25252929 29252525 29212125 21102529     ))%%%%%)%!!))%.!
d00843ac:	25212525 29252525 21212121 10102110     %%!%%%%)!!!!.!..
d00843bc:	10212121 25252121 25612921 00102125     !!!.!!%%!)a%%!..
d00843cc:	00000000 25112110 29252925 2529295d     .....!.%%)%)]))%
d00843dc:	25292529 21292925 21212121 25292925     )%)%%))!!!!!%))%
d00843ec:	2121115d 25212121 21212529 21212121     ].!!!!!%)%!!!!!!
d00843fc:	21211010 21101010 29212110 21252121     ..!!...!.!!)!!%!
d008440c:	00112121 10000000 25292121 25252529     !!......!!)%)%%%
d008441c:	21212121 21212121 25252925 21252525     !!!!!!!!%)%%%%%!
d008442c:	21212121 21211011 25292121 21212121     !!!!..!!!!)%!!!!
d008443c:	10212110 10212121 11200000 21212121     .!!.!!!... .!!!!
d008444c:	21212121 00001021 10000000 21252929     !!!!!.......))%!
d008445c:	21212525 21212121 10102121 29212121     %%!!!!!!!!..!!!)
d008446c:	21212121 10212121 21211010 21212121     !!!!!!!...!!!!!!
d008447c:	10212121 10102121 00101121 10000000     !!!.!!..!.......
d008448c:	10212121 21212121 00001021 10000000     !!!.!!!!!.......
d008449c:	25212521 10212925 10102110 21212111     !%!%%)!..!...!!!
d00844ac:	21211111 11111011 10101021 21101010     ..!!....!......!
d00844bc:	21212111 10102121 10102121 00101010     .!!!!!..!!......
d00844cc:	00000000 21211010 10212121 00000010     ......!!!!!.....
d00844dc:	00000000 29252111 21102125 00001021     .....!%)%!.!!...
d00844ec:	21101000 10102121 21101010 10102121     ...!!!.....!!!..
d00844fc:	10101010 21212121 21101010 10101021     ....!!!!...!!...
d008450c:	00001110 00000000 10110000 00101010     ................
	...
d0084524:	21251000 21211021 00000010 10000000     ..%!!.!!........
d0084534:	21212110 10102121 00101010 10000000     .!!!!!..........
d0084544:	10112110 21211010 00000011 00000000     .!....!!........
	...
d0084568:	10100000 11101010 00000000 00000000     ................
d0084578:	10101100 00101010 00000000 00000000     ................
d0084588:	10101000 10101010 00000000 00000000     ................
	...

d00845a8 <bk_bub_tree4>:
	...
d00845bc:	25292110 21292525 21212529 29252529     .!)%%%)!)%!!)%%)
d00845cc:	21212121 21212529 10252121 00001021     !!!!)%!!!!%.!...
	...
d0084600:	21292910 25212521 25252925 25292525     .))!!%!%%)%%%%)%
d0084610:	21212929 21212110 29292525 00001010     ))!!.!!!%%))....
	...
d0084640:	10000000 25212921 29212521 10102125     ....!)!%!%!)%!..
d0084650:	25212110 25292525 29211010 10102525     .!!%%%)%..!)%%..
d0084660:	00000010 00000000 00000000 00000000     ................
	...
d0084684:	10000000 25212121 25292921 10101010     ....!!!%!))%....
d0084694:	21101010 10101021 25101025 10101010     ...!!...%..%....
d00846a4:	00000010 00000000 00000000 00000000     ................
	...
d00846c8:	10000000 29252121 29252929 10212110     ....!!%)))%).!!.
d00846d8:	10102121 10101010 10101010 67211010     !!............!g
d00846e8:	00000010 00000000 00000000 00000000     ................
	...
d0084710:	25252110 25252525 10252121 67676725     .!%%%%%%!!%.%ggg
d0084720:	10102121 10101010 bb672110 00001010     !!.......!g.....
	...
d0084754:	29212110 25252525 10212125 bbbbbb25     .!!)%%%%%!!.%...
d0084764:	67bbbbbb 21101010 67bb6710 00001010     ...g...!.g.g....
	...
d0084798:	25212110 29252521 21212925 bbbb6710     .!!%!%%)%)!!.g..
d00847a8:	bbbbbbbb 211067bb 1010bb10 00001021     .....g.!....!...
	...
d00847d8:	10000000 25212921 10212921 25292521     ....!)!%!)!.!%)%
d00847e8:	67101021 bbbbbbbb 25101010 10102510     !..g.......%.%..
d00847f8:	00001021 00000000 00000000 00000000     !...............
	...
d008481c:	10000000 21212521 21102929 21102525     ....!%!!)).!%%.!
d008482c:	10212125 25672510 21101010 21101021     %!!..%g%...!!..!
d008483c:	00101010 00000000 00000000 00000000     ................
	...
d0084860:	10000000 21252521 10102129 10211010     ....!%%!)!....!.
d0084870:	21252521 10101021 29211010 10252525     !%%!!.....!)%%%.
d0084880:	00102125 00000000 00000000 00000000     %!..............
	...
d00848a4:	10000000 21292121 29211025 10212925     ....!!)!%.!)%)!.
d00848b4:	10102121 29292525 10252525 21101010     !!..%%))%%%....!
d00848c4:	00102121 00000000 00000000 00000000     !!..............
	...
d00848e8:	10000000 21252121 29211029 21252529     ....!!%!).!))%%!
d00848f8:	21211010 10101010 21101010 25252521     ..!!.......!!%%%
d0084908:	00102121 00000000 00000000 00000000     !!..............
	...
d0084930:	21252110 25212529 25252529 29252929     .!%!)%!%)%%%))%)
d0084940:	25292525 21252525 21292929 00001021     %%)%%%%!)))!!...
	...
d0084974:	21252110 25252529 25292929 25252525     .!%!)%%%)))%%%%%
d0084984:	25252125 25252525 25252525 00000010     %!%%%%%%%%%%....
	...
d00849b8:	21252110 25292525 29252529 25292525     .!%!%%)%)%%)%%)%
d00849c8:	21212125 21212121 25292529 00000010     %!!!!!!!)%)%....
	...
d00849fc:	21292110 29292525 25252129 25252529     .!)!%%)))!%%)%%%
d0084a0c:	21252929 29252121 29252525 10101025     ))%!!!%)%%%)%...
	...
d0084a34:	10000000 10101010 00000020 29212110     ........ ....!!)
d0084a44:	25292525 25212121 25292525 25292525     %%)%!!!%%%)%%%)%
d0084a54:	25212121 25252925 29252525 00000010     !!!%%)%%%%%)....
	...
d0084a78:	21101010 25292925 20101021 25252921     ...!%))%!.. !)%%
d0084a88:	29252529 21212121 10101010 29252510     )%%)!!!!.....%%)
d0084a98:	25292529 29292929 25292525 10101025     )%)%))))%%)%%...
	...
d0084ab8:	10000000 29212921 25252525 25252925     ....!)!)%%%%%)%%
d0084ac8:	29252121 21292525 10102521 29252521     !!%)%%)!!%..!%%)
d0084ad8:	10101029 21212110 29292521 25252525     )....!!!!%))%%%%
d0084ae8:	25252529 00001010 00000000 00000000     )%%%............
d0084af8:	00000000 21100000 25292529 29252929     .......!)%)%))%)
d0084b08:	25252525 25252529 21212929 25252925     %%%%)%%%))!!%)%%
d0084b18:	25252525 25292925 10101025 21212121     %%%%%))%%...!!!!
d0084b28:	29212521 29292929 00102525 00000000     !%!)))))%%......
	...
d0084b40:	25211000 25252525 25292929 25292525     ..!%%%%%)))%%%)%
d0084b50:	25292529 25292121 29252925 25292529     )%)%!!)%%)%))%)%
d0084b60:	29252529 21292925 21212110 21252521     )%%)%))!.!!!!%%!
d0084b70:	25292521 10252925 00000000 00000000     !%)%%)%.........
d0084b80:	00000000 25251000 25292929 25292525     ......%%)))%%%)%
d0084b90:	25252929 25212129 25252529 25252925     ))%%)!!%)%%%%)%%
d0084ba0:	29292925 29252529 25252925 25211021     %))))%%)%)%%!.!%
d0084bb0:	29252529 29252529 25252525 00000010     )%%))%%)%%%%....
	...
d0084bc8:	25212110 29252525 25252529 25292525     .!!%%%%))%%%%%)%
d0084bd8:	25252525 21292925 21292521 29252521     %%%%%))!!%)!!%%)
d0084be8:	25292521 29252929 25102125 21212529     !%)%))%)%!.%)%!!
d0084bf8:	21212925 25252929 00001029 00000000     %)!!))%%).......
d0084c08:	00000000 25212510 21292521 21212125     .....%!%!%)!%!!!
d0084c18:	29292525 25292525 25252525 21212125     %%))%%)%%%%%%!!!
d0084c28:	29292525 21252929 25252529 10212529     %%))))%!)%%%)%!.
d0084c38:	25292121 25252525 29292121 00102525     !!)%%%%%!!))%%..
	...
d0084c50:	21252510 21212529 10101021 25252121     .%%!)%!!!...!!%%
d0084c60:	21252925 21212129 25292121 25211010     %)%!)!!!!!)%..!%
d0084c70:	21252525 29292521 10212525 21101010     %%%!!%))%%!....!
d0084c80:	25212121 29212925 10292525 00000000     !!!%%)!)%%).....
d0084c90:	00000000 21292510 10212125 21212121     .....%)!%!!.!!!!
d0084ca0:	25212110 29292929 29252925 21212125     .!!%))))%)%)%!!!
d0084cb0:	21101010 21252529 25252521 10212925     ...!)%%!!%%%%)!.
d0084cc0:	10212121 21211010 21292929 29252525     !!!...!!)))!%%%)
d0084cd0:	00000010 10000000 21292521 21102129     ........!%)!)!.!
d0084ce0:	21101021 21212121 21212121 21212121     !..!!!!!!!!!!!!!
d0084cf0:	10102121 10101021 21292525 25292910     !!..!...%%)!.))%
d0084d00:	10212125 21211010 21102121 29252121     %!!...!!!!.!!!%)
d0084d10:	29252521 00001025 10000000 25212525     !%%)%.......%%!%
d0084d20:	21212125 10200010 25211010 21101021     %!!!.. ...!%!..!
d0084d30:	10102121 21101010 10101021 10212921     !!.....!!...!)!.
d0084d40:	29292521 10212121 10101010 21211010     !%))!!!.......!!
d0084d50:	29212121 25212125 00001025 10000000     !!!)%!!%%.......
d0084d60:	29212529 10212121 00000000 10102000     )%!)!!!...... ..
d0084d70:	25212110 21212121 10212121 21101010     .!!%!!!!!!!....!
d0084d80:	10212110 21212125 10102110 00001010     .!!.%!!!.!......
d0084d90:	10100000 21101021 25212121 00102125     ....!..!!!!%%!..
d0084da0:	10000000 21212121 10212125 00000000     ....!!!!%!!.....
d0084db0:	00000000 10101020 10101010 00101010     .... ...........
d0084dc0:	10100000 21102121 10102121 00001021     ....!!.!!!..!...
	...
d0084dd8:	10102110 21212110 00102121 00000000     .!...!!!!!......
d0084de8:	10101010 00101010 00000000 00000000     ................
	...
d0084e04:	10000000 10101010 10101010 00000010     ................
	...
d0084e1c:	10101000 10101010 00001010              ............

d0084e28 <bk_bub_treehide>:
d0084e28:	00000000 29211000 29292521 21252521     ......!)!%))!%%!
d0084e38:	29256121 21212129 21292521 25212121     !a%))!!!!%)!!!!%
d0084e48:	00102110 00000000 00000000 29291000     .!............))
d0084e58:	21252121 29252929 29292525 21292925     !!%!))%)%%))%))!
d0084e68:	21201021 25292121 00111025 00000000     !. !!!)%%.......
d0084e78:	00000000 21292111 21252125 11212129     .....!)!%!%!)!!.
d0084e88:	21211011 25252525 21101021 10292921     ..!!%%%%!..!!)).
d0084e98:	00001010 00000000 00000000 21212110     .............!!!
d0084ea8:	29292525 10101025 10101010 11102121     %%))%.......!!..
d0084eb8:	10112510 10111029 00001010 00000000     .%..)...........
d0084ec8:	00000000 25215910 25292529 21211029     .....Y!%)%)%).!!
d0084ed8:	10212110 10101011 10101010 21101010     .!!............!
d0084ee8:	00001021 00000000 00000000 29211000     !.............!)
d0084ef8:	25292525 21212125 21212111 10212121     %%)%%!!!.!!!!!!.
d0084f08:	10101010 25591010 00101021 00000000     ......Y%!.......
d0084f18:	00000000 21211000 25252525 21212525     ......!!%%%%%%!!
d0084f28:	21212110 21252125 10102021 29211021     .!!!%!%!! ..!.!)
d0084f38:	00101021 00000000 00000000 21211000     !.............!!
d0084f48:	29252125 10252529 21211010 25212121     %!%))%%...!!!!!%
d0084f58:	10212125 21211021 00101010 00000000     %!!.!.!!........
d0084f68:	00000000 21292110 21292125 29252111     .....!)!%!)!.!%)
d0084f78:	10102129 21212110 10212121 10101029     )!...!!!!!!.)...
d0084f88:	00102110 00000000 00000000 21252110     .!...........!%!
d0084f98:	10292521 11256121 21212521 10101010     !%).!a%.!%!!....
d0084fa8:	10101010 10102121 10101021 00000000     ....!!..!.......
d0084fb8:	00000000 25252110 10212921 21101010     .....!%%!)!....!
d0084fc8:	25252111 10102121 21101010 29292125     .!%%!!.....!%!))
d0084fd8:	10212110 00000000 00000000 29212110     .!!..........!!)
d0084fe8:	21102521 21252525 10212110 25252511     !%.!%%%!.!!..%%%
d0084ff8:	25252925 10101110 10212121 00000000     %)%%....!!!.....
d0085008:	00000000 25212111 21102921 25252929     .....!!%!).!))%%
d0085018:	21101021 10101021 10101010 25252121     !..!!.......!!%%
d0085028:	10212129 00000000 00000000 25211000     )!!...........!%
d0085038:	21612921 25252525 25292925 29292525     !)a!%%%%%))%%%))
d0085048:	25252929 61292925 00102121 00000000     ))%%%))a!!......
d0085058:	00000000 25211000 25252921 29252525     ......!%!)%%%%%)
d0085068:	25252525 25212929 25252561 61252521     %%%%))!%a%%%!%%a
d0085078:	00001025 00000000 00000000 25211000     %.............!%
d0085088:	29252521 25252925 29292525 21212525     !%%)%)%%%%))%%!!
d0085098:	21212121 29292521 00001029 00000000     !!!!!%))).......

d00850a8 <bub_background>:
	...
d00850cc:	fffe0000 00000001 00000000 0fc00000     ................
	...
d0085108:	00038000 0000001f 00000000 78200000     .............. x
	...
d0085144:	ffc08000 00000070 00000000 60180000     ....p..........`
	...
d0085180:	81f8c000 00000043 00000000 30040000     ....C..........0
	...
d00851bc:	07004000 000000c6 00000000 18020000     .@..............
	...
d00851f8:	0cfe4000 00000086 00000000 1c020000     .@..............
	...
d0085234:	0b83c000 00000087 00000000 1e020000     ................
d0085244:	00000000 00000700 00000000 00000000     ................
	...
d0085270:	9a008000 00000083 00000000 1e020000     ................
d0085280:	00000000 00000580 00000000 00000000     ................
	...
d008529c:	00c00000 00000000 00000000 00000000     ................
d00852ac:	b2000000 00000083 00000e00 1e020000     ................
d00852bc:	00000000 00000ec0 1fc00000 00000000     ................
	...
d00852d8:	03300000 00000000 00000000 00000000     ..0.............
d00852e8:	e6000000 000000c3 00001b00 3c040000     ...............<
d00852f8:	00600000 00001a30 20600000 00000000     ..`.0.....` ....
	...
d0085314:	0ccc0000 00000000 00000000 00000000     ................
d0085324:	e4000000 ff800061 00001181 3c080000     ....a..........<
d0085334:	007c0000 00001718 43900000 00000000     ..|........C....
	...
d0085350:	0b720000 00000000 00000000 00000000     ..r.............
d0085360:	64000000 00700030 00003083 38080000     ...d0.p..0.....8
d0085370:	007e01e0 00703706 86e80000 00000001     ..~..7p.........
	...
d008538c:	097d8000 00000000 00000000 000001e0     ..}.............
d008539c:	02000000 00180018 000030c2 38100000     .........0.....8
d00853ac:	c0ff01fe 03fc2f01 8c260000 00000000     ...../....&.....
d00853bc:	00000000 00000010 00000000 0cfe6000     .............`..
	...
d00853d4:	00000610 02000000 3c0c000c 7f003044     ...........<D0..
d00853e4:	78600300 60ff81ff 0fc77f80 9c190000     ..`x...`........
	...
d00853fc:	00000010 00000000 067f2000 00000000     ......... ......
d008540c:	00000000 000004c8 02000000 4f040004     ...............O
d008541c:	7f80706c f0800780 3fffe0ff 1f81df80     lp.........?....
d008542c:	dc090000 00000000 40000000 00000310     ...........@....
d008543c:	00000000 073ec000 00000000 00000000     ......>.........
d008544c:	000005a4 01000000 c786000e ff80f038     ............8...
d008545c:	f1000fc0 3ffff8ff 17803f80 4f090000     .......?.?.....O
d008546c:	00000000 80000000 000000d9 00000000     ................
d008547c:	07818000 00000000 00000000 000005d2     ................
d008548c:	01800000 81c2001e ffc0f018 fe000fe0     ................
d008549c:	3fffff7f 17c00700 67d10003 00000000     ...?.......g....
d00854ac:	00000000 00000067 00000000 05668000     ....g.........f.
	...
d00854c4:	03800cf2 00f00000 40e2001e ffe1e018     ...........@....
d00854d4:	f8001ff1 3fffffff 1fb00000 31e10007     .......?.......1
d00854e4:	7c000000 00000000 00000181 00003c00     ...|.........<..
d00854f4:	03990000 00000000 00000000 0c403272     ............r2@.
d0085504:	00f80000 6072003e fffbc00c fc001ff8     ....>.r`........
d0085514:	3fffffff 3edc0000 10010006 83800000     ...?...>........
d0085524:	9c000000 00000f1c 00006300 03c10000     .........c......
	...
d008553c:	30206106 00fe0000 3072003f 7fffc006     .a 0....?.r0....
d008554c:	fe003ffe 3fffffff ffb70000 18e60107     .?.....?........
d008555c:	38600000 70000001 00000334 0000dd80     ..`8...p4.......
d008556c:	03c10000 00000000 00000000 271040e6     .............@.'
d008557c:	81ff0018 18e2003f 3fff0003 ff003fff     ....?......?.?..
d008558c:	3fffffff fffbc070 187c01c7 7f300000     ...?p.....|...0.
d008559c:	40000001 0000038e 0000d640 01c10000     ...@....@.......
	...
d00855b4:	2d90401c e1ff801f 8786007f 3ffe0001     .@.-...........?
d00855c4:	fff63fff ffffffff fffee3ff 184001e7     .?............@.
d00855d4:	71100000 80000001 000001c0 0000f340     ...q........@...
d00855e4:	05e08000 00000000 00000008 ee904f1a     .............O..
d00855f4:	f3ffe01f c004007f ffff0000 ffff3fff     .............?..
d0085604:	ffffffff ffff3fff 302003ff 60900000     .....?.... 0...`
d0085614:	00000001 000000e7 00007b40 07f08000     ........@{......
d0085624:	00000000 0c00000e fe8871f0 fffff3ff     .........q......
d0085634:	400c007f ffff801e ffff3fff ffffffff     ...@.....?......
d0085644:	ffffffff e02003ff 60900000 00000001     ...... ....`....
d0085654:	00000068 001fef40 02f0c000 94000000     h...@...........
d0085664:	1c00000f ff183020 ffffffff 403803ff     .... 0........8@
d0085674:	ffffc03f ffffbfff ffffffff ffffffff     ?...............
d0085684:	f81f00ff 31b00003 00000601 00000068     .......1....h...
d0085694:	00300040 03f04000 fc000000 1a00019f     @.0..@..........
d00856a4:	fffc1e20 ffffffff 40e01fff ffffe03f      ..........@?...
d00856b4:	ffffbfff ffffffff ffffffff ff8780ff     ................
d00856c4:	8f300307 00000581 00000048 0021e480     ..0.....H.....!.
d00856d4:	03f82000 fe000000 3b0001ff fffc1040     . .........;@...
d00856e4:	ffffffff ff807fff ffffff3f ffffffff     ........?.......
d00856f4:	ffffffff ffffffff fffffe3f 806003ff     ........?.....`.
d0085704:	00000670 00000048 0063f300 01701004     p...H.....c...p.
d0085714:	fd800000 790001ff ffe41140 ffffffff     .......y@.......
d0085724:	ffe3ffff ffffffff ffffffff ffffffff     ................
d0085734:	ffffffff ffffffff 1fc007ff 00000b1d     ................
d0085744:	000000d0 00647900 01f01816 ffc00000     .....yd.........
d0085754:	fc8043ff ffc20bc0 ffffffff ffffffff     .C..............
d0085764:	ffffffff ffffffff ffffffff ffffffff     ................
d0085774:	ffffffff 0f981fff 00000b87 000000d0     ................
d0085784:	88741c80 c0f00817 ffe000ef f88063ff     ..t..........c..
d0085794:	fff20ec1 ffffffff ffffffff ffffffff     ................
d00857a4:	ffffffff ffffffff ffffffff ffffffff     ................
d00857b4:	8c243fff 0000edc3 00000090 8c740c80     .?$...........t.
d00857c4:	f0f1042f ffffffff fe40ffff fff60e63     /.........@.c...
d00857d4:	ffffffff ffffffff ffffffff ffffffff     ................
d00857e4:	ffffffff ffffffff ffffffff 4c667fff     ..............fL
d00857f4:	00039fc0 00000090 ef760640 fff0866f     ........@.v.o...
d0085804:	ffffffff fff0ffff fffe043f ffffffff     ........?.......
d0085814:	ffffffff ffffffff ffffffff ffffffff     ................
d0085824:	ffffffff ffffffff 7fe1ffff 000f83c0     ................
d0085834:	000001a0 ff3b0638 fff743e7 ffffffff     ....8.;..C......
d0085844:	ffffffff ffff841f ffffffff ffffffff     ................
d0085854:	ffffffff ffffffff ffffffff ffffffff     ................
d0085864:	ffffffff 0ffcffff 000fc0e0 000001a0     ................
d0085874:	ff9d863c ffffc1f3 ffffffff ffffffff     <...............
d0085884:	ffffff8f ffffffff ffffffff ffffffff     ................
d0085894:	ffffffff ffffffff ffffffff ffffffff     ................
d00858a4:	ffffffff 000ff000 00000120 ffee6604     ........ ....f..
d00858b4:	ffffe037 ffffffff ffffffff fffffff0     7...............
d00858c4:	ffffffff ffffffff ffffffff ffffffff     ................
d00858d4:	ffffffff ffffffff ffffffff ffffffff     ................
d00858e4:	000ffc3f 8e000140 ffff3c07 ffffedbf     ?...@....<......
d00858f4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085904:	ffffffff ffffffff ffffffff ffffffff     ................
d0085914:	ffffffff ffffffff ffffffff 0003feff     ................
d0085924:	8f000340 ffffc001 ffffffdf ffffffff     @...............
d0085934:	ffffffff ffffffff ffffffff ffffffff     ................
d0085944:	ffffffff ffffffff ffffffff ffffffff     ................
d0085954:	ffffffff ffffffff 0007ffff 7ff00340     ............@...
d0085964:	ffffff70 ffffffff ffffffff ffffffff     p...............
d0085974:	ffffffff ffffffff ffffffff ffffffff     ................
d0085984:	ffffffff ffffffff ffffffff ffffffff     ................
d0085994:	ffffffff ffffffff fff00341 fffffff7     ........A.......
d00859a4:	ffffffff ffffffff ffffffff ffffffff     ................
d00859b4:	ffffffff ffffffff ffffffff ffffffff     ................
d00859c4:	ffffffff ffffffff ffffffff ffffffff     ................
d00859d4:	ffffffff ffffffff ffffffff ffffffff     ................
d00859e4:	ffffffff ffffffff ffffffff ffffffff     ................
d00859f4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085a04:	ffffffff                                ....

d0085a08 <bubtreeforeground>:
d0085a08:	21100000 21212121 25252525 25252525     ...!!!!!%%%%%%%%
d0085a18:	25252525 25252525 21102121 00000000     %%%%%%%%!!.!....
d0085a28:	21100000 21212121 25252525 25252525     ...!!!!!%%%%%%%%
d0085a38:	25252525 25252525 21102121 00000010     %%%%%%%%!!.!....
d0085a48:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0085a58:	25252525 25252525 10102121 00000010     %%%%%%%%!!......
d0085a68:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0085a78:	25252525 25252525 21102125 00000010     %%%%%%%%%!.!....
d0085a88:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0085a98:	25252525 25252525 10102125 00001021     %%%%%%%%%!..!...
d0085aa8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0085ab8:	25252525 21252525 10102125 00001021     %%%%%%%!%!..!...
d0085ac8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0085ad8:	25252525 21252525 10212121 00101021     %%%%%%%!!!!.!...
d0085ae8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0085af8:	25252525 21212525 10212121 00101021     %%%%%%!!!!!.!...
d0085b08:	21100000 21212121 25252525 25252525     ...!!!!!%%%%%%%%
d0085b18:	25252525 21212525 10212121 00101021     %%%%%%!!!!!.!...
d0085b28:	21100000 21212121 25252525 25252525     ...!!!!!%%%%%%%%
d0085b38:	25252525 21212525 10212121 00101021     %%%%%%!!!!!.!...
d0085b48:	21100000 21212125 25252525 25252525     ...!%!!!%%%%%%%%
d0085b58:	25252525 21212525 10212121 00001010     %%%%%%!!!!!.....
d0085b68:	21100000 21212125 25252525 25252525     ...!%!!!%%%%%%%%
d0085b78:	25252525 21251025 10212121 00001021     %%%%%.%!!!!.!...
d0085b88:	10000000 21212125 25252525 25252525     ....%!!!%%%%%%%%
d0085b98:	25252525 21251025 10212121 00000010     %%%%%.%!!!!.....
d0085ba8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085bb8:	25252525 21251025 10212121 00000010     %%%%%.%!!!!.....
d0085bc8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085bd8:	25252525 21102525 21102121 00000010     %%%%%%.!!!.!....
d0085be8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085bf8:	25252525 21102525 10102121 00000000     %%%%%%.!!!......
d0085c08:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085c18:	25252525 21102525 10102121 00000000     %%%%%%.!!!......
d0085c28:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085c38:	25252525 21102525 10102121 00000000     %%%%%%.!!!......
d0085c48:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085c58:	25252525 25252525 10101021 00000000     %%%%%%%%!.......
d0085c68:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085c78:	25252525 25252525 21101021 00000000     %%%%%%%%!..!....
d0085c88:	10000000 21212125 25212521 25252525     ....%!!!!%!%%%%%
d0085c98:	25252525 25252525 21101021 00000000     %%%%%%%%!..!....
d0085ca8:	10000000 21212125 25212521 25252525     ....%!!!!%!%%%%%
d0085cb8:	25252525 25252525 10211021 00000000     %%%%%%%%!.!.....
d0085cc8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085cd8:	25252525 25252525 10211025 00000000     %%%%%%%%%.!.....
d0085ce8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085cf8:	25252525 25252525 10211025 00000000     %%%%%%%%%.!.....
d0085d08:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0085d18:	25252525 25252525 10211025 00000000     %%%%%%%%%.!.....
d0085d28:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0085d38:	25252525 25252525 10211025 00000000     %%%%%%%%%.!.....
d0085d48:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0085d58:	25252525 25252125 10211025 00000000     %%%%%!%%%.!.....
d0085d68:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0085d78:	25252525 25252125 10211025 00000000     %%%%%!%%%.!.....
d0085d88:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0085d98:	25252525 10252125 10211025 00000000     %%%%%!%.%.!.....
d0085da8:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0085db8:	25252525 25252525 10101010 00000000     %%%%%%%%........
d0085dc8:	00000000 21212510 25212525 25252525     .....%!!%%!%%%%%
d0085dd8:	25252525 25252525 10101010 00000000     %%%%%%%%........
d0085de8:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0085df8:	25252525 25252525 10101025 00000000     %%%%%%%%%.......
d0085e08:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0085e18:	25252525 25252525 10102125 00000000     %%%%%%%%%!......
d0085e28:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0085e38:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0085e48:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0085e58:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0085e68:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0085e78:	25252525 25252525 10101021 00000010     %%%%%%%%!.......
d0085e88:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0085e98:	25252525 25252525 10101021 00000010     %%%%%%%%!.......
d0085ea8:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0085eb8:	25252525 25252525 10101021 00000010     %%%%%%%%!.......
d0085ec8:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0085ed8:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0085ee8:	10000000 25212121 25212525 25252525     ....!!!%%%!%%%%%
d0085ef8:	25252525 21252525 10102125 00001010     %%%%%%%!%!......
d0085f08:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0085f18:	25252525 21252525 10102125 00001010     %%%%%%%!%!......
d0085f28:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0085f38:	25252525 25212525 10102125 00001010     %%%%%%!%%!......
d0085f48:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0085f58:	25252525 25212525 10102125 00001010     %%%%%%!%%!......
d0085f68:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0085f78:	25252525 25212525 10101025 00000010     %%%%%%!%%.......
d0085f88:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0085f98:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0085fa8:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0085fb8:	25252525 25252125 10211025 00000010     %%%%%!%%%.!.....
d0085fc8:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0085fd8:	25252525 25212525 10211025 00000010     %%%%%%!%%.!.....
d0085fe8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0085ff8:	25252525 25212525 10211025 00001010     %%%%%%!%%.!.....
d0086008:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0086018:	25252525 25252525 21101025 00001010     %%%%%%%%%..!....
d0086028:	21100000 25212125 25252525 25252525     ...!%!!%%%%%%%%%
d0086038:	25252525 25252525 21101010 00101010     %%%%%%%%...!....
d0086048:	21100000 21212125 25252525 25252525     ...!%!!!%%%%%%%%
d0086058:	25252525 25212525 21101010 00101010     %%%%%%!%...!....
d0086068:	21211000 21212125 25252525 25252525     ..!!%!!!%%%%%%%%
d0086078:	25252525 25212525 21102125 00101010     %%%%%%!%%!.!....
d0086088:	21211000 21212125 25212525 25252525     ..!!%!!!%%!%%%%%
d0086098:	25252525 25212525 10212125 00001010     %%%%%%!%%!!.....
d00860a8:	21211000 21212125 25212525 25252525     ..!!%!!!%%!%%%%%
d00860b8:	25252525 25212525 10212125 00001010     %%%%%%!%%!!.....
d00860c8:	21211000 21212125 25212525 25252525     ..!!%!!!%%!%%%%%
d00860d8:	25252525 25252525 10212125 00001010     %%%%%%%%%!!.....
d00860e8:	21211000 21212125 25212525 25252525     ..!!%!!!%%!%%%%%
d00860f8:	25252525 25252525 10212125 00001010     %%%%%%%%%!!.....
d0086108:	21211000 25212125 25212525 25252525     ..!!%!!%%%!%%%%%
d0086118:	25252525 25252525 10102121 00000010     %%%%%%%%!!......
d0086128:	21100000 25212125 25212525 25252525     ...!%!!%%%!%%%%%
d0086138:	25252525 25252525 10102121 00000010     %%%%%%%%!!......
d0086148:	21100000 25212125 21252525 25252525     ...!%!!%%%%!%%%%
d0086158:	25252525 25252525 10102121 00000010     %%%%%%%%!!......
d0086168:	21100000 25212125 21252525 25252525     ...!%!!%%%%!%%%%
d0086178:	25252525 25252125 10102121 00000010     %%%%%!%%!!......
d0086188:	21100000 25212125 21252525 25252525     ...!%!!%%%%!%%%%
d0086198:	25252525 25252125 10102125 00000010     %%%%%!%%%!......
d00861a8:	10000000 25212125 21252525 25252525     ....%!!%%%%!%%%%
d00861b8:	25252525 25252125 21102125 00000010     %%%%%!%%%!.!....
d00861c8:	10000000 25212125 21252525 25252525     ....%!!%%%%!%%%%
d00861d8:	25252525 25252125 21101025 00000010     %%%%%!%%%..!....
d00861e8:	10000000 25212121 21252525 25252525     ....!!!%%%%!%%%%
d00861f8:	25252525 25252125 21101025 00000010     %%%%%!%%%..!....
d0086208:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086218:	25252525 25252125 10211025 00000000     %%%%%!%%%.!.....
d0086228:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086238:	25252525 25252521 10211025 00000000     %%%%!%%%%.!.....
d0086248:	00000000 25212110 25252525 25252525     .....!!%%%%%%%%%
d0086258:	25252525 25252521 10211025 00000000     %%%%!%%%%.!.....
d0086268:	00000000 25212110 25252525 25252525     .....!!%%%%%%%%%
d0086278:	25252525 25252521 10101025 00000000     %%%%!%%%%.......
d0086288:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d0086298:	25252525 25252521 00101025 00000000     %%%%!%%%%.......
d00862a8:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d00862b8:	25252525 25252521 00101025 00000000     %%%%!%%%%.......
d00862c8:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d00862d8:	25252525 25252521 00101025 00000000     %%%%!%%%%.......
d00862e8:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d00862f8:	25252525 25252521 10101025 00000000     %%%%!%%%%.......
d0086308:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d0086318:	25252525 25252525 10101025 00000000     %%%%%%%%%.......
d0086328:	10000000 25212121 25212525 25252525     ....!!!%%%!%%%%%
d0086338:	25252525 25252525 10101025 00000000     %%%%%%%%%.......
d0086348:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086358:	25252525 25252525 10101010 00000000     %%%%%%%%........
d0086368:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086378:	25252525 25252525 10101010 00000000     %%%%%%%%........
d0086388:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0086398:	25252525 25252525 10101010 00000000     %%%%%%%%........
d00863a8:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d00863b8:	25252525 25252525 10101010 00000000     %%%%%%%%........
d00863c8:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d00863d8:	25252525 25252525 10101010 00000010     %%%%%%%%........
d00863e8:	10000000 25252121 25252521 25252525     ....!!%%!%%%%%%%
d00863f8:	25252525 25252525 21101010 00000010     %%%%%%%%...!....
d0086408:	10000000 25252121 25252521 25252525     ....!!%%!%%%%%%%
d0086418:	25252525 25252525 21101010 00001010     %%%%%%%%...!....
d0086428:	10000000 25252121 25252521 25252525     ....!!%%!%%%%%%%
d0086438:	25252525 25252525 21101010 00001010     %%%%%%%%...!....
d0086448:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086458:	25252525 25252525 21101010 00001010     %%%%%%%%...!....
d0086468:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086478:	25252525 25252525 21101010 00001010     %%%%%%%%...!....
d0086488:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086498:	25252525 25212525 10101010 00001021     %%%%%%!%....!...
d00864a8:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d00864b8:	25252525 25212525 10101010 00001021     %%%%%%!%....!...
d00864c8:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d00864d8:	25252525 25212525 10101025 00001021     %%%%%%!%%...!...
d00864e8:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d00864f8:	25252525 25212525 10101025 00001021     %%%%%%!%%...!...
d0086508:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086518:	25252525 21252525 10101025 00001021     %%%%%%%!%...!...
d0086528:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086538:	25252525 21252525 10101025 00000010     %%%%%%%!%.......
d0086548:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086558:	25252525 21252525 10101025 00000010     %%%%%%%!%.......
d0086568:	10000000 25252121 25252521 25252525     ....!!%%!%%%%%%%
d0086578:	25252525 21252525 10251025 00000010     %%%%%%%!%.%.....
d0086588:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0086598:	25252525 21252525 10102525 00000010     %%%%%%%!%%......
d00865a8:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d00865b8:	25252525 25252525 10102510 00000010     %%%%%%%%.%......
d00865c8:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d00865d8:	25252525 25252525 10102510 00000010     %%%%%%%%.%......
d00865e8:	00000000 25212110 25252525 25252525     .....!!%%%%%%%%%
d00865f8:	25252525 10252525 10102521 00000010     %%%%%%%.!%......
d0086608:	00000000 25212110 25252525 25252525     .....!!%%%%%%%%%
d0086618:	25252525 10252525 21101021 00000010     %%%%%%%.!..!....
d0086628:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086638:	25252525 25102525 21101025 00000010     %%%%%%.%%..!....
d0086648:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086658:	25252525 25102525 21101025 00000010     %%%%%%.%%..!....
d0086668:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086678:	25252525 25251025 21101025 00001010     %%%%%.%%%..!....
d0086688:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086698:	25252525 25251025 10101021 00001010     %%%%%.%%!.......
d00866a8:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d00866b8:	25252525 25252525 10101021 00001010     %%%%%%%%!.......
d00866c8:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d00866d8:	25252525 25252525 10101021 00001010     %%%%%%%%!.......
d00866e8:	21100000 25212121 25212525 25252525     ...!!!!%%%!%%%%%
d00866f8:	25252525 21252525 10101021 00001010     %%%%%%%!!.......
d0086708:	21100000 25252121 25212525 25252525     ...!!!%%%%!%%%%%
d0086718:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0086728:	21100000 25252121 25212525 25252525     ...!!!%%%%!%%%%%
d0086738:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0086748:	21100000 25252121 25212525 25252525     ...!!!%%%%!%%%%%
d0086758:	25252525 25252525 10101025 00000000     %%%%%%%%%.......
d0086768:	21100000 25252121 25212525 25252525     ...!!!%%%%!%%%%%
d0086778:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0086788:	21100000 25252121 25252125 25252525     ...!!!%%%!%%%%%%
d0086798:	25252525 25252125 10101025 00000010     %%%%%!%%%.......
d00867a8:	21100000 25212521 25252125 25252525     ...!!%!%%!%%%%%%
d00867b8:	25252525 25252125 10101025 00000010     %%%%%!%%%.......
d00867c8:	21100000 25212521 25252125 25252525     ...!!%!%%!%%%%%%
d00867d8:	25252525 25252125 10101025 00000010     %%%%%!%%%.......
d00867e8:	21100000 25212521 25252125 25252525     ...!!%!%%!%%%%%%
d00867f8:	25252525 25252125 21101010 00000010     %%%%%!%%...!....
d0086808:	21100000 25252521 25252125 25252525     ...!!%%%%!%%%%%%
d0086818:	25252525 25212525 21101010 00000010     %%%%%%!%...!....
d0086828:	21100000 25252521 25252525 25252525     ...!!%%%%%%%%%%%
d0086838:	25252525 25212525 10101010 00000021     %%%%%%!%....!...
d0086848:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0086858:	25252525 25212525 10101025 00000021     %%%%%%!%%...!...
d0086868:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0086878:	25252525 25212525 10101025 00000010     %%%%%%!%%.......
d0086888:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0086898:	25252525 25252525 10101025 00001010     %%%%%%%%%.......
d00868a8:	21100000 25252121 25252125 25252525     ...!!!%%%!%%%%%%
d00868b8:	25252525 25252525 10101025 00001010     %%%%%%%%%.......
d00868c8:	21100000 25252521 25252125 25252525     ...!!%%%%!%%%%%%
d00868d8:	25252525 25252525 10101025 00002110     %%%%%%%%%....!..
d00868e8:	21100000 25252521 25252125 25252525     ...!!%%%%!%%%%%%
d00868f8:	25252525 25252525 10102125 00002110     %%%%%%%%%!...!..
d0086908:	21100000 25252525 25252125 25252525     ...!%%%%%!%%%%%%
d0086918:	25252525 25252525 10102125 00001021     %%%%%%%%%!..!...
d0086928:	21100000 25252525 25252125 25252525     ...!%%%%%!%%%%%%
d0086938:	25252525 25252525 10102125 00001021     %%%%%%%%%!..!...
d0086948:	21100000 25252525 25252525 25252525     ...!%%%%%%%%%%%%
d0086958:	25252525 25252525 10102525 00001021     %%%%%%%%%%..!...
d0086968:	21211000 25252525 25252525 25252525     ..!!%%%%%%%%%%%%
d0086978:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d0086988:	21211000 25252521 25252525 25252525     ..!!!%%%%%%%%%%%
d0086998:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d00869a8:	21211000 25252521 25252525 25252525     ..!!!%%%%%%%%%%%
d00869b8:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d00869c8:	21211000 25252521 25252525 25252525     ..!!!%%%%%%%%%%%
d00869d8:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d00869e8:	21211000 25212121 25252525 25252525     ..!!!!!%%%%%%%%%
d00869f8:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d0086a08:	21211000 21212121 25252525 25252525     ..!!!!!!%%%%%%%%
d0086a18:	25252525 21252525 10102525 00001010     %%%%%%%!%%......
d0086a28:	21211000 21212121 25252521 25252525     ..!!!!!!!%%%%%%%
d0086a38:	25252525 21252525 10102525 00001010     %%%%%%%!%%......
d0086a48:	21211000 21212121 25252121 25252525     ..!!!!!!!!%%%%%%
d0086a58:	25252525 25252525 10101025 00001010     %%%%%%%%%.......
d0086a68:	21211000 25212121 25252525 25252525     ..!!!!!%%%%%%%%%
d0086a78:	25252525 25252525 10101025 00001010     %%%%%%%%%.......
d0086a88:	21211000 25212121 25252525 25252525     ..!!!!!%%%%%%%%%
d0086a98:	25252525 25252525 10102521 00001010     %%%%%%%%!%......
d0086aa8:	21211000 21212121 25252525 25252525     ..!!!!!!%%%%%%%%
d0086ab8:	25252525 25252525 10102521 00001010     %%%%%%%%!%......
d0086ac8:	21211000 21212121 25252525 25252525     ..!!!!!!%%%%%%%%
d0086ad8:	25252525 25252525 10102521 00001010     %%%%%%%%!%......
d0086ae8:	21211000 21212121 25252525 25252525     ..!!!!!!%%%%%%%%
d0086af8:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d0086b08:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0086b18:	25252525 21252525 10252525 00101010     %%%%%%%!%%%.....
d0086b28:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0086b38:	25252525 21252525 10212125 00101025     %%%%%%%!%!!.%...
d0086b48:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0086b58:	25252525 21252525 10212510 00101010     %%%%%%%!.%!.....
d0086b68:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0086b78:	25252525 25252525 10212510 00101010     %%%%%%%%.%!.....
d0086b88:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0086b98:	25252525 25252525 10252110 00101010     %%%%%%%%.!%.....
d0086ba8:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0086bb8:	25252525 25252525 10251025 00101010     %%%%%%%%%.%.....
d0086bc8:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0086bd8:	25252525 25252525 10211025 00101010     %%%%%%%%%.!.....
d0086be8:	21100000 21212121 21252525 25252525     ...!!!!!%%%!%%%%
d0086bf8:	25252525 25252525 10211025 00101010     %%%%%%%%%.!.....
d0086c08:	21100000 25212121 21252525 25252525     ...!!!!%%%%!%%%%
d0086c18:	25252525 25252525 10252525 00101010     %%%%%%%%%%%.....
d0086c28:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0086c38:	25252525 25252525 10102525 00101010     %%%%%%%%%%......
d0086c48:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0086c58:	25252525 25252525 25102510 00101010     %%%%%%%%.%.%....
d0086c68:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0086c78:	25252525 10252525 25102525 00101010     %%%%%%%.%%.%....
d0086c88:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0086c98:	25252525 10252525 25102525 00101010     %%%%%%%.%%.%....
d0086ca8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0086cb8:	25252525 10212525 10102525 00101010     %%%%%%!.%%......

d0086cc8 <frontbush>:
	...
d0086d30:	21f1f100 00f1f121 00000000 00000000     ...!!...........
	...
d0086e70:	f14cf100 f14cf121 00000000 f1000000     ..L.!.L.........
d0086e80:	f1f1f1f1 00000000 00000000 00000000     ................
	...
d0086fb0:	4c4cf100 4c4cf1f1 000000f1 f1f1f100     ..LL..LL........
d0086fc0:	00f14c4c 00000000 00000000 00000000     LL..............
	...
d00870f0:	584cf100 58f1f14c f1f1f14c 58584cf1     ..LXL..XL....LXX
d0087100:	0000f14c 00000000 00000000 00000000     L...............
	...
d0087228:	f1f1f100 f1f1f1f1 584cf1f1 f14c4c58     ..........LXXLL.
d0087238:	4c4c4c58 f14c5858 000000f1 00000000     XLLLXXL.........
	...
d0087368:	584c4cf1 4c585858 4cf1f14c 4c585858     .LLXXXXLL..LXXXL
d0087378:	58585858 f14c4c58 00000000 00000000     XXXXXLL.........
	...
d00874a8:	f1f1f100 58584cf1 4c585858 58585858     .....LXXXXXLXXXX
d00874b8:	58585858 00f14c4c 00000000 00000000     XXXXLL..........
	...
d00875ec:	4cf1f1f1 5858584c 58585858 58585858     ...LLXXXXXXXXXXX
d00875fc:	f1f14c4c 0000f1f1 00000000 00000000     LL..............
	...
d0087724:	f1000000 f1f1f1f1 f14c4cf1 584c4c4c     .........LL.LLLX
d0087734:	58585858 58585858 4c4c5858 f1f14c4c     XXXXXXXXXXLLLL..
	...
d0087864:	4cf10000 f14c4c4c 5858584c 5858584c     ...LLLL.LXXXLXXX
d0087874:	58585858 58585858 4c4c4c4c 4c4cf1f1     XXXXXXXXLLLL..LL
d0087884:	000000f1 00000000 00000000 00000000     ................
	...
d00879a4:	f1f10000 4cf1f1f1 58585858 58585858     .......LXXXXXXXX
d00879b4:	58585858 584c5858 f1f14c4c f1f12121     XXXXXXLXLL..!!..
	...
d0087ae8:	584cf100 4c4c4c58 584c4c4c 58585858     ..LXXLLLLLLXXXXX
d0087af8:	4c4c4c58 21f1f14c 0000f1f1 00000000     XLLLL..!........
	...
d0087c28:	5858f100 f14c4c4c 5858f1f1 58584c4c     ..XXLLL...XXLLXX
d0087c38:	4c4c4c58 f14c4c4c 00f14c4c 00000000     XLLLLLL.LL......
	...
d0087d68:	4c584cf1 21f1f14c 4c584cf1 58584c4c     .LXLL..!.LXLLLXX
d0087d78:	4c4c4c4c 4c4c4c4c 00f1f1f1 00000000     LLLLLLLL........
	...
d0087ea8:	f14c4cf1 f10000f1 f14c4c4c 584cf1f1     .LL.....LLL...LX
d0087eb8:	4c4c4c4c f1f14c4c 00000000 00000000     LLLLLL..........
	...
d0087fe8:	00f14cf1 4cf10000 f1f14c4c 584cf1f1     .L.....LLL....LX
d0087ff8:	4c4c4cf1 f1f1f14c 00000000 00000000     .LLLL...........
	...
d0088110:	00f1f100 00f1f100 00000000 00000000     ................
	...
d008812c:	4c4cf100 f121f14c 4c4cf1f1 f14cf14c     ..LLL.!...LLL.L.
d008813c:	f14c4c4c 000000f1 00000000 00000000     LLL.............
	...
d00881f0:	f1000000 f10000f1 000000f1 00000000     ................
	...
d0088250:	f14cf100 f14cf100 00000000 f1000000     ..L...L.........
d0088260:	f1f1f1f1 00000000 00000000 4c4cf100     ..............LL
d0088270:	f2f121f1 4cf1f1f2 f14cf14c f14cf1f1     .!.....LL.L...L.
d0088280:	0000f100 00000000 00000000 00000000     ................
	...
d0088324:	f1f10000 00f1f1f1 00000000 4cf10000     ...............L
d0088334:	4cf100f1 000000f1 00000000 00000000     ...L............
	...
d0088390:	4c4cf100 4c4cf1f1 000000f1 f1f1f100     ..LL..LL........
d00883a0:	00f14c4c 00000000 00000000 f14cf100     LL............L.
d00883b0:	f220f121 4cf1f1f1 f14cf1f1 f1f10000     !. ....L..L.....
	...
d0088464:	f1000000 f1f14c4c 000000f1 4c4cf100     ....LL........LL
d0088474:	4c4cf1f1 000000f1 00000000 00000000     ..LL............
	...
d00884d0:	584cf100 58f1f14c f1f1f14c 58584cf1     ..LXL..XL....LXX
d00884e0:	0000f14c 00000000 00000000 21f10000     L..............!
d00884f0:	f22020f1 f10000f1 f14cf14c f1000000     .  .....L.L.....
	...
d00885a8:	58584cf1 f1f1f14c f1584cf1 4c584cf1     .LXXL....LX..LXL
d00885b8:	000000f1 00000000 00000000 00000000     ................
	...
d0088608:	f1f1f100 f1f1f1f1 584cf1f1 f14c4c58     ..........LXXLL.
d0088618:	4c4c4c58 f14c5858 000000f1 00000000     XLLLXXL.........
d0088628:	00000000 f1000000 f1202020 f1000000     ........   .....
d0088638:	f14cf1f1 00000000 00000000 00000000     ..L.............
	...
d00886e8:	4cf1f100 4c4c5858 4cf1584c 4c58584c     ...LXXLLLX.LLXXL
d00886f8:	f1f1f1f1 f1f1f1f1 000000f1 00000000     ................
	...
d0088748:	584c4cf1 4c585858 4cf1f14c 4c585858     .LLXXXXLL..LXXXL
d0088758:	58585858 f14c4c58 00000000 00000000     XXXXXLL.........
d0088768:	00000000 20f10000 00f12029 00000000     ....... ) ......
d0088778:	f1f1f1f1 00000000 00000000 00000000     ................
	...
d0088828:	4cf10000 5858584c 584c5858 f14c5858     ...LLXXXXXLXXXL.
d0088838:	584c4cf1 4c585858 0000f14c 00000000     .LLXXXXLL.......
	...
d0088888:	f1f1f100 58584cf1 4c585858 58585858     .....LXXXXXLXXXX
d0088898:	58585858 00f14c4c 00000000 00000000     XXXXLL..........
d00888a8:	00000000 29f10000 0000f120 00000000     .......) .......
d00888b8:	f10000f1 00000000 00000000 00000000     ................
	...
d0088968:	f1000000 58584c4c 58585858 584c5858     ....LLXXXXXXXXLX
d0088978:	58585858 f1f1f14c 000000f1 00000000     XXXXL...........
	...
d00889cc:	4cf1f1f1 5858584c 58585858 58585858     ...LLXXXXXXXXXXX
d00889dc:	f1f14c4c 0000f1f1 00000000 00000000     LL..............
d00889ec:	2029f100 000000f1 00000000 00000000     ..) ............
	...
d0088aa8:	f1f1f1f1 58584c4c 58585858 58585858     ....LLXXXXXXXXXX
d0088ab8:	f14c4c58 0000f1f1 00000000 00000000     XLL.............
	...
d0088b04:	f1000000 f1f1f1f1 f14c4cf1 584c4c4c     .........LL.LLLX
d0088b14:	58585858 58585858 4c4c5858 f1f14c4c     XXXXXXXXXXLLLL..
	...
d0088b2c:	f220f1f1 000000f1 00000000 00000000     .. .............
	...
d0088be4:	f1f10000 4c4c4c4c 58585858 58585858     ....LLLLXXXXXXXX
d0088bf4:	4c585858 4cf14c4c f1f1f14c 00f1f1f1     XXXLLL.LL.......
	...
d0088c44:	4cf10000 f14c4c4c 5858584c 5858584c     ...LLLL.LXXXLXXX
d0088c54:	58585858 58585858 4c4c4c4c 4c4cf1f1     XXXXXXXXLLLL..LL
d0088c64:	000000f1 f1000000 f1f1f120 00000000     ........ .......
	...
d0088d24:	4c4cf100 4c4cf1f1 58584c4c 58585858     ..LL..LLLLXXXXXX
d0088d34:	58585858 58584c58 4cf14c58 f14c4c4c     XXXXXLXXXL.LLLL.
	...
d0088d84:	f1f10000 f1f1f1f1 5858f1f1 58585858     ..........XXXXXX
d0088d94:	58585858 584c5858 f1f14c4c f1f12121     XXXXXXLXLL..!!..
d0088da4:	00000000 f1000000 00f12020 00000000     ........  ......
	...
d0088e64:	f1f10000 f1f12121 4c584c4c 58585858     ....!!..LLXLXXXX
d0088e74:	58585858 58585858 f14c5858 f1f1f1f1     XXXXXXXXXXL.....
	...
d0088ecc:	f1f10000 584c4c4c 58585858 4c4c4c58     ....LLLXXXXXXLLL
d0088edc:	21f1f14c 0000f1f1 00000000 20f10000     L..!........... 
d0088eec:	00f12029 00000000 00000000 00000000     ) ..............
	...
d0088fa8:	f121f1f1 4c4c4cf1 5858584c 4c585858     ..!..LLLLXXXXXXL
d0088fb8:	4c4c4c4c 4c58584c 000000f1 00000000     LLLLLXXL........
	...
d0089010:	5858f1f1 58584c4c 4c4c4c58 f14c4c4c     ..XXLLXXXLLLLLL.
d0089020:	00f14c4c 00000000 2920f100 0000f120     LL........ ) ...
	...
d00890e4:	f1000000 4cf14c4c 4c4c4c4c 5858584c     ....LL.LLLLLLXXX
d00890f4:	58584c4c 4cf1f1f1 58584c4c 000000f1     LLXX...LLLXX....
	...
d0089150:	4cf10000 58584c4c 4c4c4c4c 4c4c4c4c     ...LLLXXLLLLLLLL
d0089160:	00f1f1f1 00000000 f12920f1 0000f1f1     ......... ).....
	...
d0089224:	f1000000 4c4cf1f1 4c4c4c4c 58584c4c     ......LLLLLLLLXX
d0089234:	584c4c4c f121f14c 584c4cf1 0000f14c     LLLXL.!..LLXL...
	...
d0089290:	f1000000 584cf1f1 4c4c4c4c f1f14c4c     ......LXLLLLLL..
	...
d00892a8:	20f1f1f1 000000f1 00000000 00000000     ... ............
	...
d0089368:	f1f10000 4c4c4c4c 4c584c4c 4cf1f1f1     ....LLLLLLXL...L
d0089378:	00f14c4c 4cf1f100 0000f14c 00000000     LL.....LL.......
	...
d00893d4:	584cf1f1 4c4c4cf1 f1f1f14c 00000000     ..LX.LLLL.......
d00893e4:	f1000000 20202020 000000f1 00000000     ....    ........
	...
d00894a8:	f1f10000 4c4c4cf1 4c58f14c f1f1f1f1     .....LLLL.XL....
d00894b8:	f14c4c4c f1000000 0000f14c 00000000     LLL.....L.......
	...
d0089514:	4c4cf1f1 f14cf14c f2f2f24c 000000f1     ..LLL.L.L.......
d0089524:	20f10000 f1202029 00000000 00000000     ... )  .........
	...
d00895e8:	4cf1f100 4cf14c4c 4c4c4cf1 21f1f1f1     ...LLL.L.LLL...!
d00895f8:	4c4c4cf1 000000f1 00000000 00000000     .LLL............
	...
d0089654:	4cf1f100 f14cf14c 20f2f1f1 0000f1f2     ...LL.L.... ....
d0089664:	2920f100 00f12020 00000000 00000000     .. )  ..........
	...
d0089728:	4cf100f1 4cf1f1f1 f14c4cf1 f1f2f2f1     ...L...L.LL.....
d0089738:	4c4cf121 000000f1 00000000 00000000     !.LL............
	...
d0089794:	4cf1f100 f14cf1f1 29f10000 f1f1f220     ...L..L....) ...
d00897a4:	202920f1 00f12020 00000000 00000000     . )   ..........
	...
d0089868:	f1f10000 4cf10000 f14cf1f1 20f2f1f1     .......L..L.... 
d0089878:	4cf121f1 000000f1 00000000 00000000     .!.L............
	...
d00898d4:	f1000000 f14cf14c 29f1f100 f1f22029     ....L.L....)) ..
d00898e4:	20292920 0000f120 00000000 00000000      ))  ...........
	...
d00899a8:	00f10000 4cf10000 00f14cf1 20f2f100     .......L.L..... 
d00899b8:	f121f120 00000000 00000000 00000000      .!.............
	...
d0089a14:	f1000000 f14cf1f1 20f10000 20f12020     ......L....   . 
d0089a24:	20202020 0000f1f2 00000000 00000000         ............
	...
d0089aec:	4cf10000 00f1f1f1 20f10000 00f12020     ...L.......   ..
	...
d0089b58:	00f1f1f1 20f10000 20202020 f1202029     .......     )  .
d0089b68:	000000f1 00000000 00000000 00000000     ................
	...
d0089c2c:	f1f10000 0000f1f1 f1000000 f1202920     ............ ) .
	...
d0089c9c:	f1000000 202020f1 00f12020 00000000     .....     ......
	...
d0089d6c:	00f10000 0000f100 00000000 f12920f1     ............. ).
	...
d0089de0:	2020f100 00f12020 00000000 00000000     ..    ..........
	...
d0089eb8:	2920f100 000000f1 00000000 00000000     .. )............
	...
d0089f20:	202020f1 00f12020 00000000 00000000     .     ..........
	...
d0089ff8:	20f2f100 0000f1f1 00000000 00000000     ... ............
	...
d008a060:	202020f1 0000f120 00000000 00000000     .    ...........
	...
d008a138:	f1f10000 00f120f1 00000000 00000000     ..... ..........
	...
d008a1a0:	202020f1 0000f120 00000000 00000000     .    ...........
	...
d008a278:	f1000000 00f12020 00000000 00000000     ....  ..........
	...
d008a2dc:	f1000000 202020f1 000000f1 00000000     .....   ........
	...
d008a3b8:	f1000000 f1202920 00000000 00000000     .... ) .........
	...
d008a41c:	f1000000 20202020 000000f1 00000000     ....    ........
	...
d008a4fc:	202920f1 000000f1 00000000 00000000     . ) ............
	...
d008a55c:	f1f10000 f2202020 000000f1 00000000     ....   .........
	...
d008a63c:	29f1f1f1 0000f120 00000000 00000000     ...) ...........
	...
d008a69c:	20f10000 f1f1f120 00000000 00000000     ...  ...........
	...
d008a77c:	f120f100 0000f1f1 00000000 00000000     .. .............
	...
d008a7dc:	20f10000 0000f120 00000000 00000000     ...  ...........
	...
d008a8bc:	2020f100 00f12020 00000000 00000000     ..    ..........
	...
d008a8e4:	f1f1f1f1 00000000 00000000 00000000     ................
	...
d008a91c:	20f1f100 00f12020 00000000 00000000     ...   ..........
	...
d008a99c:	f1f10000 00000000 00000000 00000000     ................
	...
d008a9e4:	f1f1f1f1 00000000 00000000 00000000     ................
	...
d008a9fc:	20f10000 00f12029 00000000 00000000     ... ) ..........
	...
d008aa14:	f1f1f100 000000f1 00000000 f1000000     ................
d008aa24:	4c4c4c4c f1f1f1f1 0000f1f1 00000000     LLLL............
d008aa34:	f1f10000 00000000 00000000 00000000     ................
	...
d008aa54:	f1f1f100 000000f1 2020f100 00f12020     ..........    ..
d008aa64:	00000000 f1f1f100 0000f1f1 00000000     ................
	...
d008aadc:	4cf1f100 f10000f1 f1f1f1f1 000000f1     ...L............
	...
d008ab14:	f1f1f100 000000f1 00000000 f1000000     ................
d008ab24:	4c4c4c4c f1f1f1f1 0000f1f1 00000000     LLLL............
	...
d008ab3c:	20f10000 f1f22929 00000000 00000000     ... ))..........
	...
d008ab54:	4c4c4c00 f1f14c4c 00000000 4cf10000     .LLLLL.........L
d008ab64:	5858584c 4c4c5858 f1f14c4c 00000000     LXXXXXLLLL......
d008ab74:	4cf10000 000000f1 00000000 00000000     ...L............
	...
d008ab94:	4c4c4c00 f1f14c4c 2920f1f1 f1f12020     .LLLLL.... )  ..
d008aba4:	f1f1f1f1 4c4cf1f1 f1f14c4c 00000000     ......LLLL......
	...
d008ac1c:	4c584cf1 4cf1f14c 4c4c5858 0000584c     .LXLL..LXXLLLX..
	...
d008ac3c:	f1f10000 000000f1 00000000 00000000     ................
	...
d008ac54:	4c4c4c00 f1f14c4c 00000000 4cf10000     .LLLLL.........L
d008ac64:	5858584c 4c4c5858 f1f14c4c 00000000     LXXXXXLLLL......
	...
d008ac7c:	f2f10000 f1202929 00000000 00000000     ....)) .........
	...
d008ac94:	584cf100 4c4c5858 000000f1 4cf10000     ..LXXXLL.......L
d008aca4:	58585858 58585858 4c4c4c58 000000f1     XXXXXXXXXLLL....
d008acb4:	4cf10000 000000f1 00000000 00000000     ...L............
	...
d008acd4:	584cf100 4c4c5858 2920f1f1 4cf1f120     ..LXXXLL.. ) ..L
d008ace4:	58585858 58585858 4c4c4c58 000000f1     XXXXXXXXXLLL....
d008acf4:	00000000 0000f100 00000000 00000000     ................
	...
d008ad18:	f1f10000 000000f1 f2000000 f1f1f1f1     ................
d008ad28:	000000f1 00000000 00000000 00000000     ................
	...
d008ad58:	f1f10000 5858584c 584cf14c 4c585858     ....LXXXL.LXXXXL
d008ad68:	00f15858 00000000 00000000 00000000     XX..............
d008ad78:	0000f100 f1000000 f1f1f14c 000000f1     ........L.......
	...
d008ad94:	584cf100 4c4c5858 000000f1 4cf10000     ..LXXXLL.......L
d008ada4:	58585858 58585858 4c4c4c58 000000f1     XXXXXXXXXLLL....
d008adb4:	00000000 0000f100 f1000000 f1202920     ............ ) .
d008adc4:	000000f1 00000000 00000000 00000000     ................
d008add4:	4cf10000 5858584c 0000f14c 4c4cf100     ...LLXXXL.....LL
d008ade4:	58585858 58585858 f14c4c58 00000000     XXXXXXXXXLL.....
d008adf4:	58f10000 0000f14c 00000000 00000000     ...XL...........
	...
d008ae14:	4cf10000 5858584c 2020f14c 4c4cf1f2     ...LLXXXL.  ..LL
d008ae24:	58585858 58585858 f14c4c58 00000000     XXXXXXXXXLL.....
d008ae34:	00000000 00f1f100 00000000 00000000     ................
	...
d008ae58:	f1f1f100 f1f1f1f1 f1f1f100 5858f1f1     ..............XX
d008ae68:	000000f1 00000000 00000000 00000000     ................
	...
d008ae98:	4c4cf100 4c585858 5858f1f1 58585858     ..LLXXXL..XXXXXX
d008aea8:	00f14c58 00000000 00000000 00000000     XL..............
d008aeb8:	00f1f100 00000000 584c4cf1 00f1f158     .........LLXX...
	...
d008aed4:	4cf10000 5858584c 0000f14c 4c4cf100     ...LLXXXL.....LL
d008aee4:	58585858 58585858 f14c4c58 00000000     XXXXXXXXXLL.....
d008aef4:	00000000 00f1f100 f1000000 f1202920     ............ ) .
d008af04:	00f1f14c 0000f1f1 00000000 00000000     L...............
d008af14:	f1000000 5858584c 00f14c58 584cf100     ....LXXXXL....LX
d008af24:	58585858 58585858 f14c4c4c 00000000     XXXXXXXXLLL.....
d008af34:	584cf100 0000f14c 00000000 00000000     ..LXL...........
	...
d008af54:	f1000000 5858584c f2f14c58 584cf1f2     ....LXXXXL....LX
d008af64:	58585858 58585858 f14c4c4c 00000000     XXXXXXXXLLL.....
d008af74:	00000000 f14cf100 00000000 00000000     ......L.........
	...
d008af98:	4c4c4cf1 f14c4c4c 58f1f1f1 f1585858     .LLLLLL....XXXX.
d008afa8:	f1f1f1f1 000000f1 00000000 00000000     ................
d008afb8:	f1f10000 0000f1f1 00000000 00000000     ................
	...
d008afd8:	58584cf1 58585858 58584cf1 58585858     .LXXXXXX.LXXXXXX
d008afe8:	f14c5858 00000000 00000000 00000000     XXL.............
d008aff8:	f14cf100 00000000 4cf1f100 f14c4c4c     ..L........LLLL.
d008b008:	0000f1f1 00000000 00000000 f1000000     ................
d008b018:	5858584c 00f14c58 584cf100 58585858     LXXXXL....LXXXXX
d008b028:	58585858 f14c4c4c 00000000 00000000     XXXXLLL.........
d008b038:	f14cf100 f1000000 f1202920 f14c4c4c     ..L..... ) .LLL.
d008b048:	f1f14c4c 00000000 00000000 f1000000     LL..............
d008b058:	5858584c f14c4c58 584c4cf1 58585858     LXXXXLL..LLXXXXX
d008b068:	4c585858 00f14c4c 00000000 584cf100     XXXLLL........LX
d008b078:	0000f158 00000000 00000000 00000000     X...............
	...
d008b094:	f1000000 5858584c f14c4c58 584c4cf1     ....LXXXXLL..LLX
d008b0a4:	58585858 4c585858 00f14c4c 00000000     XXXXXXXLLL......
d008b0b4:	00000000 f14cf100 00000000 00000000     ......L.........
	...
d008b0d8:	585858f1 4c4c4c58 5858f1f1 58585858     .XXXXLLL..XXXXXX
d008b0e8:	4c585858 0000f14c 00000000 00000000     XXXLL...........
d008b0f8:	f1f1f100 0000f1f1 00000000 f1f1f100     ................
d008b108:	f1f1f1f1 00000000 00000000 f1000000     ................
d008b118:	5858584c 5858584c 58584cf1 58585858     LXXXLXXX.LXXXXXX
d008b128:	f14c5858 00000000 00000000 00000000     XXL.............
d008b138:	4c4cf100 0000f1f1 f1000000 4c58584c     ..LL........LXXL
d008b148:	f1f14c4c 00000000 00000000 f1000000     LL..............
d008b158:	5858584c f14c4c58 584c4cf1 58585858     LXXXXLL..LLXXXXX
d008b168:	4c585858 00f14c4c 00000000 00000000     XXXLLL..........
d008b178:	4c4cf100 0000f1f1 202020f2 4c5858f1     ..LL.....   .XXL
d008b188:	4c585858 000000f1 00000000 f1000000     XXXL............
d008b198:	5858584c 4c585858 58584cf1 4c585858     LXXXXXXL.LXXXXXL
d008b1a8:	4c585858 00f14c4c 00000000 4c4cf100     XXXLLL........LL
d008b1b8:	00f14c58 00000000 00000000 00000000     XL..............
	...
d008b1d4:	f1000000 5858584c 4c585858 58584cf1     ....LXXXXXXL.LXX
d008b1e4:	4c585858 4c585858 00f14c4c 00000000     XXXLXXXLLL......
d008b1f4:	00000000 f1584cf1 00000000 00000000     .....LX.........
	...
d008b214:	f1000000 5858584c 4c585858 58584cf1     ....LXXXXXXL.LXX
d008b224:	4c585858 4c585858 00f14c4c 00000000     XXXLXXXLLL......
d008b234:	00000000 4c584cf1 f1f14c4c 00000000     .....LXLLL......
d008b244:	584c4cf1 4c585858 000000f1 00000000     .LLXXXXL........
d008b254:	f1000000 58585858 4c585858 58584cf1     ....XXXXXXXL.LXX
d008b264:	4c585858 f1585858 00000000 00000000     XXXLXXX.........
d008b274:	00000000 4c584cf1 f1f14c4c 00000000     .....LXLLL......
d008b284:	584c4cf1 4c585858 000000f1 00000000     .LLXXXXL........
d008b294:	f1000000 5858584c 4c585858 58584cf1     ....LXXXXXXL.LXX
d008b2a4:	4c585858 4c585858 00f14c4c 00000000     XXXLXXXLLL......
d008b2b4:	00000000 4c584cf1 f1f14c4c f22020f1     .....LXLLL...  .
d008b2c4:	584c4cf1 58585858 f14c4c58 0000f1f1     .LLXXXXXXLL.....
d008b2d4:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008b2e4:	4c585858 4c4c5858 0000f14c 00000000     XXXLXXLLL.......
d008b2f4:	4c4cf100 00f14c58 00000000 00000000     ..LLXL..........
	...
d008b314:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008b324:	4c585858 4c4c5858 0000f14c 00000000     XXXLXXLLL.......
d008b334:	f1000000 58584cf1 000000f1 00000000     .....LXX........
	...
d008b354:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008b364:	4c585858 4c4c5858 00f1f14c 00000000     XXXLXXLLL.......
d008b374:	f1000000 58584cf1 4c4c584c f1f1f1f1     .....LXXLXLL....
d008b384:	4c4c4c4c 58585858 f14c4c58 0000f1f1     LLLLXXXXXLL.....
d008b394:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008b3a4:	4c585858 4c4c5858 0000f1f1 00000000     XXXLXXLL........
d008b3b4:	00000000 58584cf1 4c4c584c f100f1f1     .....LXXLXLL....
d008b3c4:	4c4c4c4c 58585858 f14c4c58 0000f1f1     LLLLXXXXXLL.....
d008b3d4:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008b3e4:	4c585858 4c4c5858 00f1f14c 00000000     XXXLXXLLL.......
d008b3f4:	00000000 58584cf1 4c4c584c f1f1f1f1     .....LXXLXLL....
d008b404:	4c4c4c4c 58584c4c 4c585858 f1f14c4c     LLLLLLXXXXXLLL..
d008b414:	f1000000 5858584c 4c4c5858 5858584c     ....LXXXXXLLLXXX
d008b424:	4c4c5858 4c4c4c58 00f1f14c 00000000     XXLLXLLLL.......
d008b434:	4c4cf100 00f14c58 00000000 00000000     ..LLXL..........
	...
d008b450:	00f10000 f1000000 5858584c 4c4c5858     ........LXXXXXLL
d008b460:	5858584c 4c4c5858 4c4c4c58 00f1f14c     LXXXXXLLXLLLL...
d008b470:	00000000 f1000000 5858584c 000000f1     ........LXXX....
	...
d008b490:	f1f10000 f1000000 5858584c 4c4c5858     ........LXXXXXLL
d008b4a0:	5858584c 4c4c5858 4c4c4c58 00f1f14c     LXXXXXLLXLLLL...
d008b4b0:	00000000 f1000000 5858584c 4c584c4c     ........LXXXLLXL
d008b4c0:	f1f14c4c 4c584c4c 58584c4c 4c585858     LL..LLXLLLXXXXXL
d008b4d0:	f1f14c4c f1000000 5858584c 4c4c5858     LL......LXXXXXLL
d008b4e0:	5858584c 4c4c5858 4c4c4c58 00f1f14c     LXXXXXLLXLLLL...
d008b4f0:	00000000 f1000000 5858584c 4c584c4c     ........LXXXLLXL
d008b500:	f1f14c4c 4c584c4c 58584c4c 4c585858     LL..LLXLLLXXXXXL
d008b510:	f1f14c4c f1000000 5858584c 4c4c5858     LL......LXXXXXLL
d008b520:	5858584c 4c4c5858 4c4c4c58 00f1f14c     LXXXXXLLXLLLL...
d008b530:	00000000 f1000000 5858584c 4c584c4c     ........LXXXLLXL
d008b540:	f1f14c4c 4c584c4c 584c4c58 58585858     LL..LLXLXLLXXXXX
d008b550:	4c4c4c58 f100f1f1 584c584c 4c4c5858     XLLL....LXLXXXLL
d008b560:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008b570:	00f1f1f1 584cf100 f14c4c58 00000000     ......LXXLL.....
	...
d008b590:	f14cf100 f100f100 584c584c 4c4c5858     ..L.....LXLXXXLL
d008b5a0:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008b5b0:	00f1f1f1 f1000000 4c58584c 000000f1     ........LXXL....
	...
d008b5d0:	f14cf100 f100f100 584c584c 4c4c5858     ..L.....LXLXXXLL
d008b5e0:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008b5f0:	00f1f1f1 f1000000 4c58584c 584c4c4c     ........LXXLLLLX
d008b600:	4c4c4c4c 584c4c4c 584c4c58 58585858     LLLLLLLXXLLXXXXX
d008b610:	4c4c4c58 f100f1f1 584c584c 4c4c5858     XLLL....LXLXXXLL
d008b620:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008b630:	00f1f1f1 f1000000 4c58584c 584c4c4c     ........LXXLLLLX
d008b640:	4c4c4c4c 584c4c4c 584c4c58 58585858     LLLLLLLXXLLXXXXX
d008b650:	4c4c4c58 f100f1f1 584c584c 4c4c5858     XLLL....LXLXXXLL
d008b660:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008b670:	00f1f1f1 f1000000 4c58584c 584c4c4c     ........LXXLLLLX
d008b680:	4c4c4c4c 584c4c4c 4c4c4c58 5858584c     LLLLLLLXXLLLLXXX
d008b690:	4c585858 f1f14c4c 4c4c584c 4c4c4c58     XXXLLL..LXLLXLLL
d008b6a0:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008b6b0:	f14c4c4c 584cf1f1 f14c4c58 00000000     LLL...LXXLL.....
	...
d008b6d0:	f14cf100 f1f14c00 4c4c584c 4c4c4c58     ..L..L..LXLLXLLL
d008b6e0:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008b6f0:	f14c4c4c 4cf1f1f1 4c4c5858 0000f14c     LLL....LXXLLL...
	...
d008b710:	f14cf100 f1f14c00 4c4c584c 4c4c4c58     ..L..L..LXLLXLLL
d008b720:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008b730:	f14c4c4c 4cf1f1f1 4c4c5858 584c4c4c     LLL....LXXLLLLLX
d008b740:	4c4c4c58 4c4c4c4c 4c4c4c58 5858584c     XLLLLLLLXLLLLXXX
d008b750:	4c585858 f1f14c4c 4c4c584c 4c4c4c58     XXXLLL..LXLLXLLL
d008b760:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008b770:	f14c4c4c 4cf1f1f1 4c4c5858 584c4c4c     LLL....LXXLLLLLX
d008b780:	4c4c4c58 4c4c4c4c 4c4c4c58 5858584c     XLLLLLLLXLLLLXXX
d008b790:	4c585858 f1f14c4c 4c4c584c 4c4c4c58     XXXLLL..LXLLXLLL
d008b7a0:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008b7b0:	f14c4c4c 4cf1f1f1 4c4c5858 584c4c4c     LLL....LXXLLLLLX
d008b7c0:	4c4c4c58 4c4c4c4c 4c4c4c4c 58584c4c     XLLLLLLLLLLLLLXX
d008b7d0:	4c585858 4c4c4c4c 4c4c4c4c 4c4c5858     XXXLLLLLLLLLXXLL
d008b7e0:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008b7f0:	4c4c4c4c 584c4c4c f14c4c58 00000000     LLLLLLLXXLL.....
	...
d008b810:	f1584cf1 4c4c4c00 4c4c4c4c 4c4c5858     .LX..LLLLLLLXXLL
d008b820:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008b830:	4c4c4c4c 4c4c4c4c 4c4c4c4c 0000f14c     LLLLLLLLLLLLL...
	...
d008b850:	f1584cf1 4c4c4c00 4c4c4c4c 4c4c5858     .LX..LLLLLLLXXLL
d008b860:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008b870:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008b880:	4c4c5858 4c4c4c4c 4c4c4c4c 58584c4c     XXLLLLLLLLLLLLXX
d008b890:	4c585858 4c4c4c4c 4c4c4c4c 4c4c5858     XXXLLLLLLLLLXXLL
d008b8a0:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008b8b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008b8c0:	4c4c5858 4c4c4c4c 4c4c4c4c 58584c4c     XXLLLLLLLLLLLLXX
d008b8d0:	4c585858 4c4c4c4c 4c4c4c4c 4c4c5858     XXXLLLLLLLLLXXLL
d008b8e0:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008b8f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008b900:	4c4c5858 4c4c4c4c 4c4c4c4c 4c4c4c4c     XXLLLLLLLLLLLLLL
d008b910:	5858584c 4c4c4c58 4c4c4c4c 4c4c584c     LXXXXLLLLLLLLXLL
d008b920:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008b930:	4c4c4c4c 58584c4c f14c584c 00000000     LLLLLLXXLXL.....
	...
d008b950:	4c584cf1 4c4c4cf1 4c4c4c4c 4c4c584c     .LXL.LLLLLLLLXLL
d008b960:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008b970:	4c4c4c4c 4c4c4c4c 4c4c4c4c 0000f14c     LLLLLLLLLLLLL...
	...
d008b990:	4c584cf1 4c4c4cf1 4c4c4c4c 4c4c584c     .LXL.LLLLLLLLXLL
d008b9a0:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008b9b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008b9c0:	584c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLXLLLLLLLLLLLL
d008b9d0:	5858584c 4c4c4c58 4c4c4c4c 4c4c584c     LXXXXLLLLLLLLXLL
d008b9e0:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008b9f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ba00:	584c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLXLLLLLLLLLLLL
d008ba10:	5858584c 4c4c4c58 4c4c4c4c 4c4c584c     LXXXXLLLLLLLLXLL
d008ba20:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008ba30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ba40:	584c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLXLLLLLLLLLLLL
d008ba50:	584c4c4c 4c4c5858 4c4c4c4c 4c4c4c4c     LLLXXXLLLLLLLLLL
d008ba60:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008ba70:	4c4c4c4c 58584c4c 4c4c584c 000000f1     LLLLLLXXLXLL....
	...
d008ba90:	4c5858f1 4c4c58f1 4c4c4c4c 4c4c4c4c     .XXL.XLLLLLLLLLL
d008baa0:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008bab0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 0000f14c     LLLLLLLLLLLLL...
	...
d008bad0:	4c5858f1 4c4c58f1 4c4c4c4c 4c4c4c4c     .XXL.XLLLLLLLLLL
d008bae0:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008baf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bb00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bb10:	584c4c4c 4c4c5858 4c4c4c4c 4c4c4c4c     LLLXXXLLLLLLLLLL
d008bb20:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008bb30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bb40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bb50:	584c4c4c 4c4c5858 4c4c4c4c 4c4c4c4c     LLLXXXLLLLLLLLLL
d008bb60:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008bb70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bb80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bb90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bba0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bbb0:	4c4c4c4c 5858584c 4c58584c f10000f1     LLLLLXXXLXXL....
d008bbc0:	0000f1f1 00000000 00000000 f1000000     ................
d008bbd0:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008bbe0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bbf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f1f14c4c     LLLLLLLLLLLLLL..
d008bc00:	0000f1f1 00000000 00000000 f1000000     ................
d008bc10:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008bc20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bc30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bc40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bc50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bc60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bc70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bc80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bc90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bca0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bcb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bcc0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bcd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bce0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bcf0:	4c4c4c4c 58584c4c 4c585858 4cf1f14c     LLLLLLXXXXXLL..L
d008bd00:	f1f14c4c 00000000 f1f10000 f10000f1     LL..............
d008bd10:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008bd20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bd30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4cf14c4c     LLLLLLLLLLLLLL.L
d008bd40:	f1f14c4c 00000000 f1f10000 f10000f1     LL..............
d008bd50:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008bd60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bd70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bd80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bd90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bda0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bdb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bdc0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bdd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bde0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bdf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008be00:	4c4c4c4c 4c4c4c4c 58585858 4c4c4c58     LLLLLLLLXXXXXLLL
d008be10:	4c4c4c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLLLLLLLLLLLLLLL
d008be20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008be30:	4c4c4c4c 4c584c4c 4c585858 4cf1f14c     LLLLLLXLXXXLL..L
d008be40:	4c585858 0000f1f1 4c4cf100 4c0000f1     XXXL......LL...L
d008be50:	4c4c5858 4c4c4c4c 5858584c 4c4c4c58     XXLLLLLLLXXXXLLL
d008be60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008be70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4cf14c4c     LLLLLLLLLLLLLL.L
d008be80:	4c585858 0000f1f1 4c4cf100 4cf100f1     XXXL......LL...L
d008be90:	4c4c5858 4c4c4c4c 4c4c4c4c 4c4c4c4c     XXLLLLLLLLLLLLLL
d008bea0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008beb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bec0:	4c4c4c4c 4c4c4c4c 4c4c584c 5858584c     LLLLLLLLLXLLLXXX
d008bed0:	4c585858 4c4c4c4c 4c4c4c4c 4c4c4c4c     XXXLLLLLLLLLLLLL
d008bee0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bef0:	4c4c4c4c 4c4c4c4c 5858584c 4c4c4c58     LLLLLLLLLXXXXLLL
d008bf00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bf10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bf20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bf30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bf40:	4c4c4c4c 584c4c4c 58584c4c 4c4c5858     LLLLLLLXLLXXXXLL
d008bf50:	4c4c5858 4c4c4c4c 4c4c4c4c 4c4c4c4c     XXLLLLLLLLLLLLLL
d008bf60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bf70:	4c4c4c4c 4c584c4c 4c585858 4cf1f14c     LLLLLLXLXXXLL..L
d008bf80:	5858584c 00f1f14c 4c4c4cf1 4cf100f1     LXXXL....LLL...L
d008bf90:	4c4c4c58 4c4c4c4c 58584c58 4c4c4c4c     XLLLLLLLXLXXLLLL
d008bfa0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bfb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4cf14c4c     LLLLLLLLLLLLLL.L
d008bfc0:	5858584c 00f1f14c 4c4c4cf1 4cf100f1     LXXXL....LLL...L
d008bfd0:	4c4c4c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLLLLLLLLLLLLLLL
d008bfe0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008bff0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c000:	4c4c4c4c 4c4c4c4c 4c4c5858 58585858     LLLLLLLLXXLLXXXX
d008c010:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c020:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c030:	4c4c4c4c 4c4c4c4c 58584c58 4c4c4c4c     LLLLLLLLXLXXLLLL
d008c040:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c050:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c060:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c070:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c080:	4c4c4c4c 4c4c4c4c 584c4c4c 4c585858     LLLLLLLLLLLXXXXL
d008c090:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008c0a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c0b0:	4c4c4c4c 4c584c4c 4c4c5858 f1f14c4c     LLLLLLXLXXLLLL..
d008c0c0:	4c584c4c f14c5858 4c4c4cf1 5858f121     LLXLXXL..LLL!.XX
d008c0d0:	4c4c4c4c 584c4c4c 4c58584c 4c4c4c4c     LLLLLLLXLXXLLLLL
d008c0e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c0f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f1f14c4c     LLLLLLLLLLLLLL..
d008c100:	4c584c4c f14c5858 4c4c4cf1 5858f1f1     LLXLXXL..LLL..XX
d008c110:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c120:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c130:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c140:	4c4c4c4c 4c4c4c4c 584c4c58 4c585858     LLLLLLLLXLLXXXXL
d008c150:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c160:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c170:	4c4c4c4c 584c4c4c 4c58584c 4c4c4c4c     LLLLLLLXLXXLLLLL
d008c180:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c190:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c1a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c1b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c1c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 58584c4c     LLLLLLLLLLLLLLXX
d008c1d0:	4c58584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXXLLLLLLLLLLLLL
d008c1e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c1f0:	4c4c4c4c 4c4c4c4c 4c4c4c58 f1f14c4c     LLLLLLLLXLLLLL..
d008c200:	4c584c4c f14c5858 4c4c4cf1 5858f1f1     LLXLXXL..LLL..XX
d008c210:	4c4c4c4c 4c4c4c4c 4c58584c 4c4c4c4c     LLLLLLLLLXXLLLLL
d008c220:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c230:	4c4c4c4c 4c4c4c4c 4c4c4c4c f1f14c4c     LLLLLLLLLLLLLL..
d008c240:	4c584c4c f14c5858 4c4c4cf1 5858f1f1     LLXLXXL..LLL..XX
d008c250:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c260:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c270:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c280:	4c4c4c4c 584c4c4c 58584c58 4c4c4c4c     LLLLLLLXXLXXLLLL
d008c290:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c2a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c2b0:	4c4c4c4c 4c4c4c4c 4c58584c 4c4c4c4c     LLLLLLLLLXXLLLLL
d008c2c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c2d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c2e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c2f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c300:	4c4c4c4c 4c4c4c4c 4c4c4c4c 58584c4c     LLLLLLLLLLLLLLXX
d008c310:	4c584c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLXLLLLLLLLLLLLL
d008c320:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c330:	4c4c4c4c 4c4c4c4c 4c4c4c58 f1f14c4c     LLLLLLLLXLLLLL..
d008c340:	584c4c4c 4c58584c 4c4c4cf1 584cf14c     LLLXLXXL.LLLL.LX
d008c350:	4c4c4c4c 4c4c4c4c 4c4c584c 4c4c4c4c     LLLLLLLLLXLLLLLL
d008c360:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c370:	4c4c4c4c 4c4c4c4c 4c4c4c4c f1f14c4c     LLLLLLLLLLLLLL..
d008c380:	584c4c4c 4c58584c 4c4c4cf1 584cf14c     LLLXLXXL.LLLL.LX
d008c390:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c3a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c3b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c3c0:	4c4c4c4c 584c4c4c 5858584c 4c4c4c4c     LLLLLLLXLXXXLLLL
d008c3d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c3e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c3f0:	4c4c4c4c 4c4c4c4c 4c4c584c 4c4c4c4c     LLLLLLLLLXLLLLLL
d008c400:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c410:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c420:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c430:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c440:	4c4c4c4c 4c4c4c4c 4c4c4c4c 584c4c4c     LLLLLLLLLLLLLLLX
d008c450:	4c584c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLXLLLLLLLLLLLLL
d008c460:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c470:	4c4c4c4c 4c4c4c4c 4c4c4c4c f14c4c4c     LLLLLLLLLLLLLLL.
d008c480:	584c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLXLLXLLLLLLLLL
d008c490:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f14c4c4c     LLLLLLLLLLLLLLL.
d008c4c0:	584c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLXLLXLLLLLLLLL
d008c4d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c500:	4c4c4c4c 584c4c4c 4c58584c 4c4c4c4c     LLLLLLLXLXXLLLLL
d008c510:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c520:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c530:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c540:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c550:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c560:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c570:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c580:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c590:	4c4c4c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLLLLLLLLLLLLLLL
d008c5a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f14c4c4c     LLLLLLLLLLLLLLL.
d008c5c0:	4c4c4c4c 584c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLXLLLLLLLL
d008c5d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f14c4c4c     LLLLLLLLLLLLLLL.
d008c600:	4c4c4c4c 584c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLXLLLLLLLL
d008c610:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c620:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c630:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c640:	4c4c4c4c 4c4c4c4c 4c4c584c 4c4c4c4c     LLLLLLLLLXLLLLLL
d008c650:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c660:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c670:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c680:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c690:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c700:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c710:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c720:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c730:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c740:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c750:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c760:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c770:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c780:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c790:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c7a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c7b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c7c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c7d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c7e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c7f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c800:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c810:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c820:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c830:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c840:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c850:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c860:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c870:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c880:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c890:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c8a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c8b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c8c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c8d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c8e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c8f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c900:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c910:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c920:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c930:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c940:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c950:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c960:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c970:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c980:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c990:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008caa0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cab0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cac0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cad0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cae0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008caf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cba0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbc0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbe0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cca0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ccb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ccc0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ccd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cce0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ccf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cda0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cdb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cdc0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cdd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cde0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cdf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cea0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ceb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cec0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ced0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cee0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cef0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cf90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cfa0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cfb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cfc0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cfd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cfe0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cff0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d000:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d010:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d020:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d030:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d040:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d050:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d060:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d070:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d080:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d090:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d0a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d0b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d0c0:	4c4c4c4c 4c4c4c4c                       LLLLLLLL

d008d0c8 <gfx_bub_treehead>:
	...
d008d0d4:	10000000 10101010 00101010 00000000     ................
d008d0e4:	00109010 00101000 10000000 10101010     ................
d008d0f4:	10101010 00000010 00000000 00000000     ................
	...
d008d114:	90101000 dcdcdc9c 1058d4dc 00101010     ..........X.....
d008d124:	10e01000 0010dc10 58101010 dcdcdcdc     ...........X....
d008d134:	00109058 00000000 00000000 00000000     X...............
	...
d008d154:	10000000 d4901010 d4d8d8dc 10581090     ..............X.
d008d164:	e8581010 1090d810 e0d85810 5858d8dc     ..X......X....XX
d008d174:	00001090 10100000 00001010 00000000     ................
	...
d008d194:	90101000 90909058 dcdc5858 dce8dcd8     ....X...XX......
d008d1a4:	e8101090 581058dc 9ce0d4e8 909058d8     .....X.X.....X..
d008d1b4:	10101010 d49c5810 101090e0 00000000     .....X..........
	...
d008d1d4:	e8d89010 dcdcdcdc dcdc5858 9cdcdce8     ........XX......
d008d1e4:	dc90e0dc dcd490dc 90d8e8e0 10909090     ................
d008d1f4:	d4d49058 10909cd4 00001010 00000000     X...............
	...
d008d214:	d8dc1000 d8e8d8d8 e058e0e0 e0dcdcd8     ..........X.....
d008d224:	d8dc9cdc 9ce0dcd8 9090dcd8 58585890     .............XXX
d008d234:	90dce0e0 00101058 00000000 00000000     ....X...........
	...
d008d250:	10100000 90901010 dcdcdcdc d8dcd4d4     ................
d008d260:	9cd8e0dc 9cdce0d4 dce8d8dc 9cdcdc9c     ................
d008d270:	d890dcdc 90909c9c 00101010 00000000     ................
	...
d008d290:	e8905810 90101058 d4dcdc90 dce89ce0     .X..X...........
d008d2a0:	e8d4e0dc dcd4dce8 dcd49cd8 e8d4dcdc     ................
d008d2b0:	dcdcd4dc dcdc90dc 1090dc9c 00001010     ................
	...
d008d2cc:	10000000 9cdcdcd4 dcd8dcdc dcdcdcdc     ................
d008d2dc:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcd8dc     ................
d008d2ec:	dcdcdcd8 9ce0dcd8 dcdcdcdc d8e8dcdc     ................
d008d2fc:	101058dc 00000000 00000000 00000000     .X..............
d008d30c:	00000000 e0d45810 d8e0d8dc dcdcdcdc     .....X..........
d008d31c:	dcdcdcdc dcdcdcdc dcdcdcdc dcd8dcdc     ................
d008d32c:	dcdcdcdc dcdc9cdc dcd8dcdc e0d4d4dc     ................
d008d33c:	90e0dcdc 00001010 00000000 00000000     ................
d008d34c:	00000000 9c581010 e89ce0dc dcdcdcdc     ......X.........
d008d35c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d36c:	dcd8dcdc d8d8dcdc 9090d8e0 58909090     ...............X
d008d37c:	90d49090 00109090 00000000 00000000     ................
d008d38c:	10100000 e0dce0dc d8dc9cdc dcdcdcdc     ................
d008d39c:	dcdcdcdc dcdcdcdc dcdcdcdc d8dcdcd8     ................
d008d3ac:	dcdcdcdc 90909090 90909058 90909058     ........X...X...
d008d3bc:	58101010 00109090 00000000 00000000     ...X............
d008d3cc:	d4e01000 d4d4d4d4 d4e0dcdc dcdcdcdc     ................
d008d3dc:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcd8     ................
d008d3ec:	dcdcdcdc 5890dcdc 90589090 10585890     .......X..X..XX.
d008d3fc:	00000010 10905810 00000000 00000000     .....X..........
d008d40c:	1090e810 dcdcdc90 9c9cdcdc dcdcdcdc     ................
d008d41c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcd8dc     ................
d008d42c:	dcdcdcdc dcdcd8d8 90905890 10101010     .........X......
d008d43c:	00101010 10101000 00000000 00000000     ................
d008d44c:	10101000 d4581000 dcdce0d4 dcdcdcdc     ......X.........
d008d45c:	dcdcdcdc dcdcdcdc dcdcdcdc dc9c90dc     ................
d008d46c:	dcdcd8dc dcdcdcdc 9090909c 90905890     .............X..
d008d47c:	10585890 10000010 00000000 00000000     .XX.............
d008d48c:	10101000 90909010 dcdc9cdc dcdcdcdc     ................
d008d49c:	dcdcdcdc dcdcdcdc dcdcdcdc dc9090d8     ................
d008d4ac:	dcdcd8dc dcdcd8dc 90d89cdc 90909058     ............X...
d008d4bc:	90585890 00101058 00000000 10000000     .XX.X...........
d008d4cc:	dcd89010 d8dcdcdc dcdcd8d8 dcdcdcdc     ................
d008d4dc:	dcdcdcdc dcdcdcdc dcdcdcdc d890dcdc     ................
d008d4ec:	dcdcd8dc dcdcdcdc 90dcdcd8 90909090     ................
d008d4fc:	90909090 10585890 00000010 dc100000     .....XX.........
d008d50c:	e8d8e8dc dcdcdc9c d8dcdcdc dcdcdcdc     ................
d008d51c:	dcdcdcdc dcdcdcdc dcdcdcdc 9090dcdc     ................
d008d52c:	d8e0dc9c dcdcdcd8 d8d8dce0 90905890     .............X..
d008d53c:	90909090 58909090 00001090 d49c1000     .......X........
d008d54c:	9090d89c d8d89c90 d8dcdcd8 dcdcdcdc     ................
d008d55c:	dcdcdcdc dcdcdcdc dcdcdcdc 9cd8dc9c     ................
d008d56c:	dcdc9c90 dc9cdcdc dcdcd890 58909058     ............X..X
d008d57c:	90909090 90909090 00001058 10101010     ........X.......
d008d58c:	90101010 dcdcdc9c d8dcdcd8 dcdcdcdc     ................
d008d59c:	dcdcdcdc dcdcdcdc dcdcdcdc e0dcdcdc     ................
d008d5ac:	dcdcdc9c dcdcdcdc 9c9090dc 90909090     ................
d008d5bc:	90905890 90909090 00001058 00000010     .X......X.......
d008d5cc:	d8dc5810 dcdcdcdc dcd8dcdc dcdcdcdc     .X..............
d008d5dc:	dcdcdcdc dcdcdcdc dcdcdcdc dcd89cdc     ................
d008d5ec:	dcdcdcd8 dcdcdcdc 909090d8 90909090     ................
d008d5fc:	909090d8 90909090 00001090 10000000     ................
d008d60c:	d4dcdc90 dc9c9cdc dcd8dcdc dcdcdcdc     ................
d008d61c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcd8d8     ................
d008d62c:	dcdcdc9c d8d8e0d8 90909090 90905890     .............X..
d008d63c:	909cdc90 90909090 00109090 90100000     ................
d008d64c:	d8d8dce8 dcdcdcdc d8d8dcdc dcdcdcdc     ................
d008d65c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcd8     ................
d008d66c:	d8dcdcdc d8dcdcd8 905890e0 9090e090     ..........X.....
d008d67c:	90e09058 58589090 00109090 d8100000     X.....XX........
d008d68c:	e8d8dcd4 d8dcdcd8 dcdcdcd8 dcdcdcdc     ................
d008d69c:	dcdcdcdc dcdcdcdc dcdcdcdc dcd8dcdc     ................
d008d6ac:	dcdcd8dc d8dcd8dc 909090dc 90dc9090     ................
d008d6bc:	d8dc9090 90909090 00105890 d49c1000     .........X......
d008d6cc:	dcdc9cd4 dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d6dc:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d6ec:	dcdcdcdc d8e0dcd8 909090d8 90909090     ................
d008d6fc:	90909090 58909090 10909090 9ce8dc10     .......X........
d008d70c:	d8dcdc9c dcdcdcd8 dcd8dcdc dcdcdcdc     ................
d008d71c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d72c:	dcdcdcdc d8dcd8dc 90909cdc 90909090     ................
d008d73c:	90909090 90909090 10909090 dcd4dc10     ................
d008d74c:	9c9cd4dc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d75c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d76c:	dcdcdcdc dcdcdcdc 9090d8dc 90909090     ................
d008d77c:	90909090 58909058 10905890 10e8d410     ....X..X.X......
d008d78c:	dcdcdcd8 dcd8d8dc dcdcdcdc dcdcdcdc     ................
d008d79c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d7ac:	dcdcdcdc dcdcdcdc 9090d8d8 90909090     ................
d008d7bc:	90909090 90909090 10905890 10101010     .........X......
d008d7cc:	dc9c9010 dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d7dc:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d7ec:	dcdcdcdc dcd8dcdc 9090dcdc 90909090     ................
d008d7fc:	90909090 58909058 10909090 dc100000     ....X..X........
d008d80c:	d8dce09c dcdcdcd8 dcd8d8dc dcdcdcdc     ................
d008d81c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d82c:	dcdcdcdc dcdcdcdc 90909cdc 90909090     ................
d008d83c:	90909090 58909058 10909090 d8dc1000     ....X..X........
d008d84c:	e0dc9cdc 9c9cdcdc dcd8dcdc dcdcdcdc     ................
d008d85c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d86c:	dcdcdcdc dcdcdcd8 909090d8 90905890     .............X..
d008d87c:	90905890 90909090 10589090 10100000     .X........X.....
d008d88c:	5890d810 9090d8dc dcd8dcd8 dcdcdcdc     ...X............
d008d89c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008d8ac:	dcdcdcdc dcd8dcdc 909090dc 9c909090     ................
d008d8bc:	dcd89090 10589090 00109090 58100000     ......X........X
d008d8cc:	90109010 905890d8 9090e89c e890d890     ......X.........
d008d8dc:	9cdcdcdc d490dcdc dcdce8d8 dcd8dcdc     ................
d008d8ec:	d8dc90dc d890d8e8 901058d8 90909090     .........X......
d008d8fc:	dc909090 10901058 00001090 10000000     ....X...........
d008d90c:	58109010 901010dc 905890d8 90909010     ...X......X.....
d008d91c:	e09c9090 d890d8dc dcd8dce0 dcd8dcdc     ................
d008d92c:	e0dc9090 9090d458 10105890 90589090     ....X....X....X.
d008d93c:	dc101090 10581090 00001090 00000000     ......X.........
d008d94c:	10901010 100010dc 101090dc 90901010     ................
d008d95c:	909c9090 909090d4 dce0909c 9090dc9c     ................
d008d96c:	909c1090 58109090 10109058 90901010     .......XX.......
d008d97c:	90100010 10109010 00000010 00000000     ................
d008d98c:	10901000 10001058 10101090 90101021     ....X.......!...
d008d99c:	10105890 905890d4 d8dc9090 58585890     .X....X......XXX
d008d9ac:	58581058 10101090 10101010 10901010     X.XX............
d008d9bc:	90100010 00109010 00000000 00000000     ................
d008d9cc:	10100000 00001090 10001010 90102121     ............!!..
d008d9dc:	10901090 10109090 90909090 10101058     ............X...
d008d9ec:	10101010 10102110 10211010 00100010     .....!....!.....
d008d9fc:	10000000 00001010 00000000 00000000     ................
d008da0c:	00100000 00001010 00001000 10212110     .............!!.
d008da1c:	10901010 10109058 90101010 10109090     ....X...........
d008da2c:	10101010 21212110 10102521 00000000     .....!!!!%......
d008da3c:	10000000 00001000 00000000 00000000     ................
d008da4c:	00000000 00001010 00000000 21211010     ..............!!
d008da5c:	21102121 10105810 10102121 10105858     !!.!.X..!!..XX..
d008da6c:	25212110 25252121 10102121 00000000     .!!%!!%%!!......
	...
d008da98:	25211000 21212121 21101021 10212925     ..!%!!!!!..!%)!.
d008daa8:	21211010 25252121 21292521 00102121     ..!!!!%%!%)!!!..
	...
d008dad8:	21212110 29252129 25252525 25252525     .!!!)!%)%%%%%%%%
d008dae8:	25252525 25252125 21212121 10212510     %%%%%!%%!!!!.%!.
	...
d008db18:	21211000 25252125 25252525 25252525     ..!!%!%%%%%%%%%%
d008db28:	25252525 21252125 10212121 10212910     %%%%%!%!!!!..)!.
	...
d008db58:	21251000 25252125 25252525 25252525     ..%!%!%%%%%%%%%%
d008db68:	25252525 21252125 10212121 00102129     %%%%%!%!!!!.)!..
	...
d008db98:	21292110 25252125 25252525 25252525     .!)!%!%%%%%%%%%%
d008dba8:	25252525 21252125 10212125 00102125     %%%%%!%!%!!.%!..
	...
d008dbd8:	25252110 25252125 25252525 25252525     .!%%%!%%%%%%%%%%
d008dbe8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008dc18:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008dc28:	25252525 25252125 21212525 00102121     %%%%%!%%%%!!!!..
	...
d008dc58:	25211000 29252125 25252525 25252525     ..!%%!%)%%%%%%%%
d008dc68:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008dc98:	25211000 25252129 25252525 25252525     ..!%)!%%%%%%%%%%
d008dca8:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008dcd8:	29251000 25292529 25252525 25252525     ..%))%)%%%%%%%%%
d008dce8:	25252525 25292521 21252521 00102121     %%%%!%)%!%%!!!..
	...
d008dd18:	25211000 25252525 25252525 25252525     ..!%%%%%%%%%%%%%
d008dd28:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008dd58:	25212110 25252129 25252525 25252525     .!!%)!%%%%%%%%%%
d008dd68:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008dd98:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008dda8:	25252529 21252521 21212525 00102121     )%%%!%%!%%!!!!..
	...
d008ddd8:	25211000 25292125 25252525 25252525     ..!%%!)%%%%%%%%%
d008dde8:	25252529 21252521 21212521 10212110     )%%%!%%!!%!!.!!.
	...
d008de18:	21292110 25212125 25252525 25252525     .!)!%!!%%%%%%%%%
d008de28:	25252525 21252121 21212921 10212110     %%%%!!%!!)!!.!!.
	...
d008de58:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008de68:	25252525 21252121 21212521 10212510     %%%%!!%!!%!!.%!.
	...
d008de98:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008dea8:	25252525 25252121 21212521 10212510     %%%%!!%%!%!!.%!.
	...
d008ded8:	21212110 29212525 25252525 25252525     .!!!%%!)%%%%%%%%
d008dee8:	25252525 25252125 21212521 10212510     %%%%%!%%!%!!.%!.
	...
d008df18:	21211000 25212525 25252525 25252525     ..!!%%!%%%%%%%%%
d008df28:	25252525 21252125 10212921 10212510     %%%%%!%!!)!..%!.
	...
d008df58:	21251000 29212125 25252525 25252525     ..%!%!!)%%%%%%%%
d008df68:	25252525 21252525 10212521 00102129     %%%%%%%!!%!.)!..
	...
d008df98:	21252110 25212129 25252525 25252525     .!%!)!!%%%%%%%%%
d008dfa8:	25252525 21252125 10212525 00102125     %%%%%!%!%%!.%!..
	...
d008dfd8:	25252110 29252125 25252525 25252525     .!%%%!%)%%%%%%%%
d008dfe8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008e018:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e028:	29252525 25252525 21212525 00102121     %%%)%%%%%%!!!!..
	...
d008e058:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e068:	25252525 25252525 21292525 00102121     %%%%%%%%%%)!!!..
	...
d008e098:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e0a8:	25252525 25252525 21212125 00001021     %%%%%%%%%!!!!...
	...
d008e0d8:	21212110 29252129 25252525 25252525     .!!!)!%)%%%%%%%%
d008e0e8:	25252525 25252125 21212121 10212510     %%%%%!%%!!!!.%!.
	...
d008e118:	21211000 25252125 25252525 25252525     ..!!%!%%%%%%%%%%
d008e128:	25252525 21252125 10212121 10212910     %%%%%!%!!!!..)!.
	...
d008e158:	21251000 25252125 25252525 25252525     ..%!%!%%%%%%%%%%
d008e168:	25252525 21252125 10212121 00102129     %%%%%!%!!!!.)!..
	...
d008e198:	21292110 25252125 25252525 25252525     .!)!%!%%%%%%%%%%
d008e1a8:	25252525 21252125 10212125 00102125     %%%%%!%!%!!.%!..
	...
d008e1d8:	25252110 25252125 25252525 25252525     .!%%%!%%%%%%%%%%
d008e1e8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008e218:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008e228:	25252525 25252125 21212525 00102121     %%%%%!%%%%!!!!..
	...
d008e258:	25211000 29252125 25252525 25252525     ..!%%!%)%%%%%%%%
d008e268:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008e298:	25211000 25252129 25252525 25252525     ..!%)!%%%%%%%%%%
d008e2a8:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008e2d8:	29251000 25292529 25252525 25252525     ..%))%)%%%%%%%%%
d008e2e8:	25252525 25292521 21252521 00102121     %%%%!%)%!%%!!!..
	...
d008e318:	25211000 25252525 25252525 25252525     ..!%%%%%%%%%%%%%
d008e328:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008e358:	25212110 25252129 25252525 25252525     .!!%)!%%%%%%%%%%
d008e368:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008e398:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008e3a8:	25252529 21252521 21212525 00102121     )%%%!%%!%%!!!!..
	...
d008e3d8:	25211000 25292125 25252525 25252525     ..!%%!)%%%%%%%%%
d008e3e8:	25252529 21252521 21212521 10212110     )%%%!%%!!%!!.!!.
	...
d008e418:	21292110 25212125 25252525 25252525     .!)!%!!%%%%%%%%%
d008e428:	25252525 21252121 21212921 10212110     %%%%!!%!!)!!.!!.
	...
d008e458:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008e468:	25252525 21252121 21212521 10212510     %%%%!!%!!%!!.%!.
	...
d008e498:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008e4a8:	25252525 25252121 21212521 10212510     %%%%!!%%!%!!.%!.
	...
d008e4d8:	21212110 29212525 25252525 25252525     .!!!%%!)%%%%%%%%
d008e4e8:	25252525 25252125 21212521 10212510     %%%%%!%%!%!!.%!.
	...
d008e518:	21211000 25212525 25252525 25252525     ..!!%%!%%%%%%%%%
d008e528:	25252525 21252125 10212921 10212510     %%%%%!%!!)!..%!.
	...
d008e558:	21251000 29212125 25252525 25252525     ..%!%!!)%%%%%%%%
d008e568:	25252525 21252525 10212521 00102129     %%%%%%%!!%!.)!..
	...
d008e598:	21252110 25212129 25252525 25252525     .!%!)!!%%%%%%%%%
d008e5a8:	25252525 21252125 10212525 00102125     %%%%%!%!%%!.%!..
	...
d008e5d8:	25252110 29252125 25252525 25252525     .!%%%!%)%%%%%%%%
d008e5e8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008e618:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e628:	29252525 25252525 21212525 00102121     %%%)%%%%%%!!!!..
	...
d008e658:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e668:	25252525 25252525 21292525 00102121     %%%%%%%%%%)!!!..
	...
d008e698:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e6a8:	25252525 25252525 21212125 00001021     %%%%%%%%%!!!!...
	...
d008e6d8:	21212110 29252129 25252525 25252525     .!!!)!%)%%%%%%%%
d008e6e8:	25252525 25252125 21212121 10212510     %%%%%!%%!!!!.%!.
	...
d008e718:	21211000 25252125 25252525 25252525     ..!!%!%%%%%%%%%%
d008e728:	25252525 21252125 10212121 10212910     %%%%%!%!!!!..)!.
	...
d008e758:	21251000 25252125 25252525 25252525     ..%!%!%%%%%%%%%%
d008e768:	25252525 21252125 10212121 00102129     %%%%%!%!!!!.)!..
	...
d008e798:	21292110 25252125 25252525 25252525     .!)!%!%%%%%%%%%%
d008e7a8:	25252525 21252125 10212125 00102125     %%%%%!%!%!!.%!..
	...
d008e7d8:	25252110 25252125 25252525 25252525     .!%%%!%%%%%%%%%%
d008e7e8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008e818:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008e828:	25252525 25252125 21212525 00102121     %%%%%!%%%%!!!!..
	...
d008e858:	25211000 29252125 25252525 25252525     ..!%%!%)%%%%%%%%
d008e868:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008e898:	25211000 25252129 25252525 25252525     ..!%)!%%%%%%%%%%
d008e8a8:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008e8d8:	29251000 25292529 25252525 25252525     ..%))%)%%%%%%%%%
d008e8e8:	25252525 25292521 21292521 00102121     %%%%!%)%!%)!!!..
	...
d008e918:	25211000 25252525 25252525 25252525     ..!%%%%%%%%%%%%%
d008e928:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008e958:	25212110 25252129 25252525 25252525     .!!%)!%%%%%%%%%%
d008e968:	25252525 21252521 21212925 00102121     %%%%!%%!%)!!!!..
	...
d008e998:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008e9a8:	25252529 21252521 21212525 00102121     )%%%!%%!%%!!!!..
	...
d008e9d8:	25211000 25292125 25252525 25252525     ..!%%!)%%%%%%%%%
d008e9e8:	25252529 21252521 21212521 10212110     )%%%!%%!!%!!.!!.
	...
d008ea18:	21292110 25212125 25252525 25252525     .!)!%!!%%%%%%%%%
d008ea28:	25252525 21252121 25252125 10212110     %%%%!!%!%!%%.!!.
	...
d008ea58:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008ea68:	25252525 21252121 10252521 10212125     %%%%!!%!!%%.%!!.
	...
d008ea98:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008eaa8:	25252525 25252121 10102521 10212510     %%%%!!%%!%...%!.
	...
d008ead8:	21212110 29212525 25252525 25252525     .!!!%%!)%%%%%%%%
d008eae8:	25252525 25252125 10102510 10212510     %%%%%!%%.%...%!.
	...
d008eb18:	21211000 25212525 25252525 25252525     ..!!%%!%%%%%%%%%
d008eb28:	25252525 21252125 10292510 10252510     %%%%%!%!.%)..%%.
	...
d008eb58:	21251000 29212125 25252525 25252525     ..%!%!!)%%%%%%%%
d008eb68:	25252525 21252525 25251021 00102110     %%%%%%%!!.%%.!..
	...
d008eb98:	21252110 25212129 25252525 25252525     .!%!)!!%%%%%%%%%
d008eba8:	25252525 21252125 10102125 00102121     %%%%%!%!%!..!!..
	...
d008ebd8:	25252110 29252125 25252525 25252525     .!%%%!%)%%%%%%%%
d008ebe8:	25252525 21252125 10212125 00102121     %%%%%!%!%!!.!!..
	...
d008ec18:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008ec28:	29252525 25252525 21212529 00102121     %%%)%%%%)%!!!!..
	...
d008ec58:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008ec68:	25252525 25252525 21212525 00102121     %%%%%%%%%%!!!!..
	...
d008ec98:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008eca8:	25252525 25252525 21212125 00001021     %%%%%%%%%!!!!...
	...

d008ecc8 <gfx_bubgutwut>:
	...
d008ed48:	11000000 00000011 00000000 00000000     ................
	...
d008ed60:	34110000 10111030 00000000 00000000     ...40...........
d008ed70:	2d700000 0070f4f4 34100000 34343030     ..p-..p....40044
d008ed80:	00001110 00000000 f42d7000 2df42d1d     .........p-..-.-
d008ed90:	3034102d 30303030 00113434 00000000     -.40000044......
d008eda0:	702d2d00 1d2df470 34110af4 34303030     .--pp.-....40004
d008edb0:	10343430 00000000 0070f400 70107074     044.......p.tp.p
d008edc0:	11707070 34303030 11343434 00000000     ppp.0004444.....
d008edd0:	00002d00 11000070 10107011 30343030     .-..p....p..0040
d008ede0:	00111034 00000000 00000000 00000000     4...............
d008edf0:	11118110 34303411 00103434 00000000     .....40444......
d008ee00:	00000000 10000000 baf71171 10101110     ........q.......
d008ee10:	00113430 00000000 00000000 07bebf11     04..............
d008ee20:	be1a1011 70f42d10 10301010 00000000     .....-.p..0.....
d008ee30:	00000000 7d7dba10 111a1a7d 5c5874f4     ......}}}....tX\
d008ee40:	30107070 00000010 00000000 ba100000     pp.0............
d008ee50:	10bebaba 7ef77070 1011702d 00001030     ....pp.~-p..0...
d008ee60:	00000000 7d070711 797dba07 816d8110     .......}..}y..m.
d008ee70:	34111d70 00103010 10000000 7d817d6d     p..4.0......m}.}
d008ee80:	7d817d7d 5c757d81 11341058 11303434     }}.}.}u\X.4.440.
d008ee90:	00000000 34341011 817d6d71 5c107179     ......44qm}.yq.\
d008eea0:	3411105c 30343434 00000000 10100000     \..44440........
d008eeb0:	797d7979 1111106d 10000010 11101011     yy}ym...........
	...
d008eec8:	75797910 00111058 00000000 00000000     .yyuX...........
	...
d008eee0:	75791000 00000010 00000000 00000000     ..yu............
	...
d008eef8:	797d1100 00000010 00000000 00000000     ..}y............
	...
d008ef10:	797d7d12 00000011 00000000 00000000     .}}y............
	...
d008ef28:	757d0710 00000010 00000000 00000000     ..}u............
	...
d008ef40:	75857512 00000010 00000000 00000000     .u.u............
	...
d008ef58:	757d1000 00000011 00000000 00000000     ..}u............
	...
d008ef70:	75811000 00000010 00000000 00000000     ...u............
	...
d008ef88:	79817910 00000010 00000000 00000000     .y.y............
	...
d008efa0:	71810710 00000010 00000000 00000000     ...q............
	...
d008efb8:	797d8111 00000011 00000000 00000000     ..}y............
d008efc8:	00000000 10000000 717d817e 00000010     ........~.}q....
	...
d008efe4:	ba110000 a6117d7d 00000010 00000000     ....}}..........
	...
d008effc:	7d111100 a6a61081 000010a6 00000000     ...}............
	...
d008f014:	04711111 1022107d 0010a610 00000000     ..q.}.".........
	...
d008f02c:	716d1011 82111810 0010101a 00000000     ..mq............
d008f03c:	00000000 10000000 11101818 7d6d10ac     ..............m}
d008f04c:	10176dbf 00000000 00000000 10000000     .m..............
d008f05c:	18171818 7d711118 11188107 00000000     ......q}........
d008f06c:	00000000 11000000 181718a6 817d5c11     .............\}.
d008f07c:	10717d1a 00000000 00000000 18100000     .}q.............
d008f08c:	1818a6ac 7d7d5811 116d71ba 00000000     .....X}}.qm.....
d008f09c:	00000000 ac100000 18181818 79711018     ..............qy
d008f0ac:	10715c1a 00000000 00000000 18100000     .\q.............
d008f0bc:	18a61718 815c1018 115c58ba 00000000     ......\..X\.....
d008f0cc:	00000000 18100000 17a61818 7d111718     ...............}
d008f0dc:	105810ba 00000011 00000000 ac100000     ..X.............
d008f0ec:	18a61817 81171818 1810107d 00000010     ........}.......
d008f0fc:	00000000 10100000 18ac1818 7d181817     ...............}
d008f10c:	1818117d 00000010 00000000 10110000     }...............
d008f11c:	18181710 7d111818 1818107d 00000011     .......}}.......
d008f12c:	00000000 ac100000 18181818 81111718     ................
d008f13c:	1810117d 00000010 00000000 ac110000     }...............
d008f14c:	17181817 81101717 1071ba81 00000010     ..........q.....
d008f15c:	00000000 18110000 18171817 7ebf1018     ...............~
d008f16c:	bfba8107 00000011 00000000 ac100000     ................
d008f17c:	18171818 babf1018 81078207 00000010     ................
d008f18c:	00000000 18100000 17171822 79751117     ........".....uy
d008f19c:	717d81ba 00000010 00000000 ac100000     ..}q............
d008f1ac:	1822ac11 71101718 58757181 00000010     .."....q.quX....
d008f1bc:	00000000 ac110000 ac221018 10181718     ..........".....
d008f1cc:	10115c5c 00000010 00000000 a6100000     \\..............
d008f1dc:	17a61118 17181818 11101010 00000025     ............%...
d008f1ec:	00000000 a6100000 18a61018 18181818     ................
d008f1fc:	10181717 00000000 00000000 18100000     ................
d008f20c:	18ac1018 18181818 11171818 00000000     ................
d008f21c:	00000000 18110000 17ac1118 17171818     ................
d008f22c:	11171817 00000000 00000000 ac100000     ................
d008f23c:	ac101718 17181818 11181718 00000000     ................
d008f24c:	00000000 11000000 ac111818 18171818     ................
d008f25c:	10181818 00000000 00000000 10000000     ................
d008f26c:	ac101817 17181818 10171818 00000000     ................
d008f27c:	00000000 11110000 ac1017ac 18181818     ................
d008f28c:	10181817 00000000 00000000 10101000     ................
d008f29c:	ac181011 17181717 18181818 00000010     ................
d008f2ac:	00000000 1086bf11 22111010 18171818     ..........."....
d008f2bc:	18171718 00000010 00000000 bf117d10     .............}..
d008f2cc:	111011ba 10101110 10101111 00000011     ................
d008f2dc:	00000000 79116d10 82827d7d 7d82ba7d     .....m.y}}..}..}
d008f2ec:	7182077d 00002510 00000000 6d105811     }..q.%.......X.m
d008f2fc:	07817d6d ba0782be 817e7d81 00001379     m}.......}~.y...
d008f30c:	00000000 5c101000 6dbe71be 79797911     .......\.q.m.yyy
d008f31c:	75797975 00001158 00000000 11000000     uyyuX...........
d008f32c:	11111010 10111000 11101010 00001010     ................
d008f33c:	00000000                                ....

d008f340 <gfx_bubguy1>:
	...
d008f418:	10100000 00000000 00000000 00000000     ................
	...
d008f434:	30101010 00001034 00000000 00000000     ...04...........
	...
d008f44c:	10000000 30343411 00103430 2d700000     .....44004....p-
d008f45c:	006cf4f4 00000000 00000000 10000000     ..l.............
d008f46c:	30303434 34303030 1d2df411 2d1d2d2d     44000004..-.--.-
d008f47c:	00000070 00000000 12000000 34303434     p...........4404
d008f48c:	34303030 f42d7011 6c70f42d 00001d2d     0004.p-.-.pl-...
	...
d008f4a4:	34343410 30303034 706c7010 7070106c     .4444000.plpl.pp
d008f4b4:	00f47000 00000000 00000000 10100000     .p..............
d008f4c4:	30343034 6c111030 00001110 f4000070     40400..l....p...
	...
d008f4dc:	10000000 30343434 10101034 0000117d     ....44404...}...
	...
d008f4fc:	11303410 ba101010 1071101a 00000000     .40.......q.....
	...
d008f518:	10103010 102d1d70 1010bf1a 101aba07     .0..p.-.........
	...
d008f534:	6c103011 70585870 1a1a102d 7e7d7d81     .0.lpXXp-....}}~
d008f544:	00000011 00000000 00000000 10103010     .............0..
d008f554:	ba82f470 07116c70 107ebaba 00000000     p...pl....~.....
	...
d008f56c:	34103010 81701d11 7d108175 817e7e81     .0.4..p.u..}.~~.
d008f57c:	00100707 00000000 00000000 34343010     .............044
d008f58c:	5c103411 7d816d58 81817d81 6d81817d     .4.\Xm.}.}..}..m
d008f59c:	00000010 00000000 34343000 10103434     .........04444..
d008f5ac:	7110585c 71817d79 1034346d 00000011     \X.qy}.qm44.....
d008f5bc:	00000000 11100000 00111011 11101100     ................
d008f5cc:	81757110 11117575 00000000 00000000     .qu.uu..........
	...
d008f5e8:	75341010 00107975 00000000 00000000     ..4uuy..........
	...
d008f604:	10000000 00107575 00000000 00000000     ....uu..........
	...
d008f624:	10817510 00000000 00000000 00000000     .u..............
	...
d008f640:	7d791000 00001081 00000000 00000000     ..y}............
	...
d008f65c:	75110000 00100781 00000000 00000000     ...u............
	...
d008f678:	10000000 11758175 00000000 00000000     ....u.u.........
	...
d008f698:	10817511 00000000 00000000 00000000     .u..............
	...
d008f6b4:	7d791000 00000010 00000000 00000000     ..y}............
	...
d008f6d0:	75100000 0010757d 00000000 00000000     ...u}u..........
	...
d008f6ec:	10000000 10ba8179 00000000 00000000     ....y...........
	...
d008f70c:	7d7d7910 00000010 00000000 00000000     .y}}............
	...
d008f728:	7d711000 00127e7d 00000000 00000000     ..q}}~..........
	...
d008f744:	11100000 107d8110 00000000 00000000     ......}.........
	...
d008f760:	a6100000 ba10ac22 00001171 00000000     ...."...q.......
	...
d008f77c:	a6100000 22717158 105c7158 00000000     ....Xqq"Xq\.....
	...
d008f798:	11000000 7e817122 71711107 00000010     ...."q.~..qq....
	...
d008f7b4:	10000000 826dac17 10111a7d 0010a66d     ......m.}...m...
	...
d008f7d4:	815c2210 077d817d 1018ac10 00000000     ."\.}.}.........
	...
d008f7f0:	71221000 7d7d717d 18181007 00000011     .."q}q}}........
	...
d008f80c:	ac110000 5c58816d 107e077d 00101718     ....m.X\}.~.....
	...
d008f828:	10000000 717d7118 077d7110 10101710     .....q}q.q}.....
	...
d008f848:	75751711 81581079 18100781 00001010     ..uuy.X.........
	...
d008f864:	6d171000 105c7575 10077d71 00101810     ...muu\.q}......
	...
d008f880:	18100000 5c716d58 7d751117 10101182     ....Xmq\..u}....
d008f890:	00001010 00000000 00000000 10000000     ................
d008f8a0:	5c5c1018 58181811 817d7d81 12717d07     ..\\...X.}}..}q.
	...
d008f8bc:	18181810 18181717 81817510 7d078107     .........u.....}
d008f8cc:	00000010 00000000 00000000 18181000     ................
d008f8dc:	17171817 7d5c1818 1a077d81 00001010     ......\}.}......
	...
d008f8f4:	18100000 18171817 10171718 bf7d8175     ............u.}.
d008f904:	00107d7e 00000000 00000000 11000000     ~}..............
d008f914:	18181717 18181818 827d7110 12716d1a     .........q}..mq.
	...
d008f930:	17181100 17171818 81111817 106d6dba     .............mm.
	...
d008f94c:	18100000 18181717 10181717 106d716d     ............mqm.
d008f95c:	00000010 00000000 00000000 00000000     ................
d008f96c:	18181010 17181818 10101018 00001018     ................
	...
d008f988:	10101100 17181710 18181818 0010a618     ................
	...
d008f9a4:	10100000 18101011 18171817 10a622ac     ............."..
	...
d008f9c4:	18181810 18171818 22221817 00000010     ..........""....
	...
d008f9dc:	10000000 17171710 18171718 ac181717     ................
d008f9ec:	00000010 00000000 00000000 10000000     ................
d008f9fc:	18106d58 18181817 18181817 00001018     Xm..............
	...
d008fa18:	7d816d10 18181810 17181817 00001217     .m.}............
	...
d008fa34:	7d6d1000 18117d81 18181718 00001010     ..m}.}..........
	...
d008fa50:	10000000 1a7d8181 18181810 00001011     ......}.........
	...
d008fa70:	7d816d10 18107e1a 00101711 00000000     .m.}.~..........
	...
d008fa8c:	7d111000 7df77d81 10101111 00101100     ...}.}.}........
	...
d008faa8:	10100000 7d818171 6d5c107d 827d1110     ....q..}}.\m..}.
d008fab8:	00000010 00000000 00000000 00000000     ................
d008fac8:	7d7d1010 107d8181 7d7d6d71 00107d81     ..}}..}.qm}}.}..
	...
d008fae4:	115c1000 7d7d7d71 715c5c10 11757971     ..\.q}}}.\\qqyu.
	...
d008fb00:	10100000 10111058 10101110 11101010     ....X...........
d008fb10:	00000000                                ....

d008fb14 <gfx_bubguy2>:
	...
d008fbd4:	11000000 00000010 00000000 00000000     ................
	...
d008fbf8:	30101010 00001034 00000000 00000000     ...04...........
	...
d008fc18:	10100000 30303434 00001034 00000000     ....44004.......
	...
d008fc3c:	34341100 30303030 f4103430 f42d702d     ..44000004..-p-.
d008fc4c:	0000702d 00000000 00000000 00000000     -p..............
d008fc5c:	00000000 30343410 30303034 f4701134     .....44040004.p.
d008fc6c:	2d2df4f4 00702df4 00000000 00000000     ..--.-p.........
	...
d008fc84:	34343410 30303034 6c746c10 6c2df46c     .4444000.ltll.-l
d008fc94:	00f4f474 00000000 00000000 00000000     t...............
d008fca4:	00000000 34101000 30303430 106c1110     .......40400..l.
d008fcb4:	6c741010 002d7000 00000000 00000000     ..tl.p-.........
	...
d008fccc:	34341000 10343034 10811110 70000000     ..44404........p
d008fcdc:	00f40000 00000000 00000000 00000000     ................
d008fcec:	00000000 30341000 10101010 6d101abe     ......40.......m
d008fcfc:	00000010 00000000 00000000 00000000     ................
	...
d008fd14:	10103010 102df470 10101abe 101abeba     .0..p.-.........
	...
d008fd34:	10000000 6c701130 f46c5c58 7d1a1a10     ....0.plX\l....}
d008fd44:	10077d7d 00000000 00000000 00000000     }}..............
d008fd54:	00000000 30110000 2d6c1010 746c1a82     .......0..l-..lt
d008fd64:	bebe0710 000010ba 00000000 00000000     ................
	...
d008fd7c:	10301000 702d1134 117d757d baba817d     ..0.4.-p}u}.}...
d008fd8c:	1082077d 00000000 00000000 00000000     }...............
d008fd9c:	00000000 34343011 5c103410 7d816d5c     .....044.4.\\m.}
d008fdac:	7d7d7d81 717d7d81 00000010 00000000     .}}}.}}q........
	...
d008fdc4:	34343430 58101034 796d1058 756d7d7d     04444..XX.my}}mu
d008fdd4:	10113434 00000000 00000000 00000000     44..............
d008fde4:	00000000 10101010 10000010 71101010     ...............q
d008fdf4:	75757d79 00001010 00000000 00000000     y}uu............
	...
d008fe14:	34101100 10757575 00000000 00000000     ...4uuu.........
	...
d008fe38:	11000000 00107979 00000000 00000000     ....yy..........
	...
d008fe5c:	10000000 00108175 00000000 00000000     ....u...........
	...
d008fe80:	10000000 10817d79 00000000 00000000     ....y}..........
	...
d008fea4:	10000000 107e8175 00000000 00000000     ....u.~.........
	...
d008fec8:	11000000 10797975 00000000 00000000     ....uyy.........
	...
d008feec:	10000000 00108179 00000000 00000000     ....y...........
	...
d008ff10:	11000000 00107d75 00000000 00000000     ....u}..........
	...
d008ff34:	10000000 11757d75 00000000 00000000     ....u}u.........
	...
d008ff58:	10000000 10077d75 00000000 00000000     ....u}..........
	...
d008ff7c:	10000000 10817d75 00000000 00000000     ....u}..........
	...
d008ffa0:	10000000 ba7d8171 00000011 00000000     ....q.}.........
	...
d008ffc4:	11000000 077d1111 00000010 00000000     ......}.........
	...
d008ffe8:	10100000 8110a6a6 0000117d 00000000     ........}.......
	...
d009000c:	a6100000 10a6ac10 0000116d 00000000     ........m.......
	...
d0090030:	7da61000 10a61082 00001071 00000000     ...}....q.......
	...
d0090054:	82811000 a6100707 00107110 00000000     .........q......
	...
d0090078:	1a7d1000 108107ba 00106da6 00000000     ..}......m......
	...
d009009c:	1a811810 75816dba 10acac10 00000000     .....m.u........
	...
d00900c0:	817d1710 6d796d7e 10181710 00000000     ..}.~mym........
	...
d00900e4:	7d751810 6d756dba 10171811 00000000     ..u}.mum........
	...
d0090108:	7d756d10 71586dba ac181810 00000011     .mu}.mXq........
	...
d009012c:	815c6d10 6d5c7582 1718ac10 00000010     .m\..u\m........
	...
d0090150:	6d5c6d10 71587d07 18181710 00001010     .m\m.}Xq........
	...
d0090174:	5c6d7110 71587d07 17181711 00001010     .qm\.}Xq........
	...
d0090198:	10755811 1010ba7e 17181718 00117111     .Xu.~........q..
	...
d00901bc:	10101110 101107ba 18182218 00101018     ........."......
	...
d00901dc:	13000000 10181717 1810ba7e 18171817     ........~.......
d00901ec:	001010ac 00000000 00000000 00000000     ................
d00901fc:	00000000 10000000 10171718 18100781     ................
d009020c:	18171718 101818ac 00000010 00000000     ................
	...
d0090224:	10000000 07111817 117d7d7d 17171817     ........}}}.....
d0090234:	a6aca622 000010a6 00000000 00000000     "...............
d0090244:	00000000 10000000 ba7d1018 10ba7d7d     ..........}.}}..
d0090254:	18181817 22a61817 0010a6a6 00000000     ......."........
	...
d009026c:	10000000 07ba1018 077d8107 17181810     ..........}.....
d009027c:	a6ac1818 0010a618 00000000 00000000     ................
d009028c:	00000000 10000000 7e1a1017 7d7d7d7e     ...........~~}}}
d009029c:	17171810 17181817 10a6aca6 00111000     ................
	...
d00902b4:	11000000 1a811018 816d811a 18181710     ..........m.....
d00902c4:	18181718 11aca618 10811a10 00000000     ................
d00902d4:	00000000 10000000 7d6d1017 11586dba     ..........m}.mX.
d00902e4:	18181810 17181817 17ac1817 11586d81     .............mX.
	...
d00902fc:	10000000 11101818 10106d7d 18171010     ........}m......
d009030c:	17181717 10181818 107dba7d 00000000     ........}.}.....
d009031c:	00000000 17100000 17171718 17101010     ................
d009032c:	10101111 17181810 10181717 10716d07     .............mq.
	...
d0090344:	18100000 18181818 18181818 00000010     ................
d0090354:	18181010 7e171818 107907ba 00000000     .......~..y.....
d0090364:	00000000 18100000 18171818 10171718     ................
d0090374:	00000000 18171000 7d101718 10718182     ...........}..q.
	...
d009038c:	18171000 17181817 10181818 00000000     ................
d009039c:	17181000 7d7d1018 10586d7d 00000000     ......}}}mX.....
d00903ac:	00000000 18181000 17181718 00101718     ................
d00903bc:	00000000 10181100 7d818110 00106d7d     ...........}}m..
	...
d00903d4:	17171100 18181718 00101817 00000000     ................
d00903e4:	10100000 7d7d7d7d 0000106d 00000000     ....}}}}m.......
d00903f4:	10000000 11101011 17181710 00001018     ................
d0090404:	00000000 81100000 717d7d81 00000010     .........}}q....
d0090414:	00000000 10000000 5c817d81 1011105c     .........}.\\...
d0090424:	00001011 00000000 6d100000 106d6d81     ...........m.mm.
	...
d009043c:	7d100000 6d81817d 7d7d7d81 00110781     ...}}..m.}}}....
d009044c:	00000000 58100000 105c7171 00000000     .......Xqq\.....
d009045c:	00000000 817d1000 817d7d7d 7d7d7d7d     ......}.}}}.}}}}
d009046c:	107d7d81 00000000 10000000 00115c5c     .}}.........\\..
	...
d0090484:	7d791000 5c716d71 6d6d5c5c 107d7d75     ..y}qmq\\\mmu}}.
	...
d009049c:	00001010 00000000 00000000 10101000     ................
d00904ac:	10111010 10111010 00101010 00000000     ................
	...

d00904c8 <gfx_bubguy3>:
	...
d00905d0:	10000000 00000010 00000000 00000000     ................
	...
d00905f4:	30101010 00001034 00000000 00000000     ...04...........
	...
d0090614:	11110000 30303434 00001034 f42d7000     ....44004....p-.
d0090624:	000070f4 00000000 00000000 00000000     .p..............
d0090634:	00000000 34341000 30303030 f4113430     ......44000004..
d0090644:	2d2d1d2d 00702d1d 00000000 00000000     -.--.-p.........
	...
d009065c:	30343411 30303034 2d701134 70f42df4     .44040004.p-.-.p
d009066c:	001d2d70 00000000 00000000 00000000     p-..............
d009067c:	00000000 34343410 30303034 70707010     .....4444000.ppp
d009068c:	70701070 00f47000 00000000 00000000     p.pp.p..........
	...
d00906a4:	34101000 30303430 10701110 70000011     ...40400..p....p
d00906b4:	00f40000 00000000 00000000 00000000     ................
d00906c4:	00000000 34341000 10343034 117d1010     ......44404...}.
	...
d00906ec:	30341000 10101011 75101aba 00000010     ..40.......u....
	...
d0090710:	10103010 102d1d70 1010bf1a 11bf1a07     .0..p.-.........
	...
d0090730:	11000000 70701030 2d705858 811a1a10     ....0.ppXXp-....
d0090740:	117e817d 00000000 00000000 00000000     }.~.............
d0090750:	00000000 30100000 f4701010 7070babe     .......0..p...pp
d0090760:	ba1a0711 0000107e 00000000 00000000     ....~...........
	...
d0090778:	10301000 701d1134 107d7181 7e7e817d     ..0.4..p.q}.}.~~
d0090788:	10070781 00000000 00000000 00000000     ................
d0090798:	00000000 34343010 5c103411 7d7d6d58     .....044.4.\Xm}}
d00907a8:	7d817d81 6d817d7d 00000010 00000000     .}.}}}.m........
	...
d00907c0:	34343430 5c101034 79711058 6d71817d     04444..\X.qy}.qm
d00907d0:	11103434 00000000 00000000 00000000     44..............
d00907e0:	00000000 11111110 11000011 6d101110     ...............m
d00907f0:	79798179 00001111 00000000 00000000     y.yy............
	...
d0090810:	34101000 10797579 00000000 00000000     ...4yuy.........
	...
d0090834:	10000000 00107579 00000000 00000000     ....yu..........
	...
d0090858:	10000000 00107d79 00000000 00000000     ....y}..........
	...
d009087c:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d00908a0:	11000000 10078179 00000000 00000000     ....y...........
	...
d00908c4:	10000000 11798179 00000000 00000000     ....y.y.........
	...
d00908e8:	10000000 00108179 00000000 00000000     ....y...........
	...
d009090c:	11000000 00107d79 00000000 00000000     ....y}..........
	...
d0090930:	10000000 10797d79 00000000 00000000     ....y}y.........
	...
d0090954:	10000000 10077d79 00000000 00000000     ....y}..........
	...
d0090978:	10000000 107d8171 00000000 00000000     ....q.}.........
	...
d009099c:	11000000 077d7d71 00000013 00000000     ....q}}.........
	...
d00909c0:	11000000 82817d71 00000010 00000000     ....q}..........
	...
d00909e4:	11100000 7d7d8110 00000010 00000000     ......}}........
	...
d0090a08:	a6100000 7d7d10a6 000010ba 00000000     ......}}........
	...
d0090a2c:	115e1000 8110a610 00101081 00000000     ..^.............
	...
d0090a50:	077e1000 7d1011ba 11117181 00000000     ..~....}.q......
	...
d0090a74:	fb7e1000 11ac077d 10106d71 00000000     ..~.}...qm......
	...
d0090a98:	81f71011 ac11717d 18181010 00000011     ....}q..........
	...
d0090abc:	7d7e8110 1710717d 18181818 00000010     ..~}}q..........
	...
d0090ae0:	7d070710 115c6d5c 17181718 00000010     ...}\m\.........
	...
d0090b00:	13000000 797d7e7d 10587d5c 22181818     ....}~}y\}X...."
d0090b10:	00001118 00000000 00000000 00000000     ................
d0090b20:	00000000 10000000 1079ba7e 17107d7d     ........~.y.}}..
d0090b30:	18acac18 10111018 0000587d 00000000     ........}X......
	...
d0090b48:	7d100000 58107dbe 18105c71 17181817     ...}.}.Xq\......
d0090b58:	7d6d1018 101a077e 00000000 00000000     ..m}~...........
d0090b68:	00000000 82110000 7910797e 17181079     ........~y.yy...
d0090b78:	17181818 10581018 117e1010 00000000     ......X...~.....
d0090b88:	00000000 10000000 7dba1010 715c1079     ...........}y.\q
d0090b98:	18171158 18172218 715c1018 10be7d11     X...."....\q.}..
d0090ba8:	00000010 00000000 7d100000 797d7d81     ...........}.}}y
d0090bb8:	10101010 18171810 18181818 58101118     ...............X
d0090bc8:	7e101010 00000010 00000000 7e811000     ...~...........~
d0090bd8:	107d7e7e 17111811 18171818 10171717     ~~}.............
d0090be8:	5c101010 10711010 00000000 00000000     ...\..q.........
d0090bf8:	1a811000 81827e07 17181010 17181818     .....~..........
d0090c08:	18181818 10111017 00106d5c 00000000     ........\m......
d0090c18:	00000000 816d1100 7510071a 17171158     ......m....uX...
d0090c28:	17181717 18181817 00001018 00001110     ................
	...
d0090c40:	71100000 5810817d 18181010 17181718     ...q}..X........
d0090c50:	17171817 00101818 00000000 00000000     ................
d0090c60:	00000000 10000000 10587175 18181711     ........uqX.....
d0090c70:	18181717 17181818 00101718 00000000     ................
	...
d0090c8c:	105c5811 17181818 17171717 18181718     .X\.............
d0090c9c:	11a6ac18 00000000 00000000 00000000     ................
d0090cac:	00000000 18110000 18171718 17171818     ................
d0090cbc:	17171718 17221817 00000010 00001110     ......".........
	...
d0090cd4:	18ac1000 18171718 18181018 18171817     ................
d0090ce4:	a65e1818 10000011 00107dfb 00000000     ..^......}......
d0090cf4:	00000000 1718ac10 17171718 17101018     ................
d0090d04:	17171718 a6221718 110010a6 00116d7d     ......".....}m..
d0090d14:	00000000 10110000 1817ac22 18181817     ........".......
d0090d24:	10101017 18181810 ac181718 071022a6     ............."..
d0090d34:	1181077d 00000000 71811000 1718ac11     }..........q....
d0090d44:	18171718 00001110 17181010 18181718     ................
d0090d54:	7e111817 106d7107 00000000 7d7d1100     ...~.qm.......}}
d0090d64:	18171058 17181717 00000010 17101000     X...............
d0090d74:	18171817 82101817 107d07be 00000000     ..........}.....
d0090d84:	817d1100 18105871 10181818 00000000     ..}.qX..........
d0090d94:	18110000 18181717 be071118 10717d7e     ............~}q.
d0090da4:	00000000 7d7d1000 17105c81 00101817     ......}}.\......
d0090db4:	00000000 10000000 17181818 7ebe1010     ...............~
d0090dc4:	1158757d 00000000 7d711000 105c6d7d     }uX.......q}}m\.
d0090dd4:	00001011 00000000 00000000 10171710     ................
d0090de4:	7d7e7511 00115871 00000000 7d6d1000     .u~}qX........m}
d0090df4:	ba818181 00117d07 00000000 00000000     .....}..........
d0090e04:	18111711 58718110 0000105c 00000000     ......qX\.......
d0090e14:	6d581100 7d7d7d6d 116d817d 00000000     ..Xmm}}}}.m.....
d0090e24:	00000000 81101000 5c586d81 00000010     .........mX\....
d0090e34:	00000000 58100000 716d6d58 105c716d     .......XXmmqmq\.
	...
d0090e4c:	58100000 115c586d 00000000 00000000     ...XmX\.........
d0090e5c:	10000000 10111010 00101111 00000000     ................
d0090e6c:	00000000 10100000 00101010 00000000     ................

d0090e7c <gfx_bubguy4>:
	...
d0090fa8:	12000000 00000010 00000000 00000000     ................
	...
d0090fcc:	30101010 00001034 2df47000 000070f4     ...04....p.-.p..
	...
d0090fec:	10110000 30303434 00001034 1d2d7070     ....44004...pp-.
d0090ffc:	001d1d2d 00000000 00000000 00000000     -...............
d009100c:	00000000 34341100 30303030 f4103430     ......44000004..
d009101c:	701df41d 002df470 00000000 00000000     ...pp.-.........
	...
d0091034:	30343410 30303034 bc701034 70701d2d     .44040004.p.-.pp
d0091044:	001d0000 00000000 00000000 00000000     ................
d0091054:	00000000 34343410 30303034 70707010     .....4444000.ppp
d0091064:	70001070 00000000 00000000 00000000     p..p............
	...
d009107c:	34101000 30303430 10701010 00000010     ...40400..p.....
	...
d00910a0:	34341000 10343034 107d1010 00000000     ..44404...}.....
	...
d00910c4:	30341100 11101210 6d101a1a 00000011     ..40.......m....
	...
d00910e8:	10103010 101dbc70 1110bf1a 101aba07     .0..p...........
	...
d0091108:	11000000 70701030 1d705c58 7d1a1a10     ....0.ppX\p....}
d0091118:	1007817d 00000000 00000000 00000000     }...............
d0091128:	00000000 30100000 bc701010 70701a07     .......0..p...pp
d0091138:	ba1a7e11 00001082 00000000 00000000     .~..............
	...
d0091150:	10301000 702d1034 10817181 0707817d     ..0.4.-p.q..}...
d0091160:	11077e81 00000000 00000000 00000000     .~..............
d0091170:	00000000 34343010 5c103410 81816d58     .....044.4.\Xm..
d0091180:	81817d81 6d817d81 00000011 00000000     .}...}.m........
	...
d0091198:	34343430 58111134 796d105c 716d817d     04444..X\.my}.mq
d00911a8:	12103434 00000000 00000000 00000000     44..............
d00911b8:	00000000 11101110 10000010 6d101011     ...............m
d00911c8:	75797d79 00001210 00000000 00000000     y}yu............
	...
d00911e8:	34111100 11757575 00000000 00000000     ...4uuu.........
	...
d009120c:	10000000 00107579 00000000 00000000     ....yu..........
	...
d0091230:	10000000 00107d75 00000000 00000000     ....u}..........
	...
d0091254:	10000000 117d8179 00000000 00000000     ....y.}.........
	...
d0091278:	10000000 10078179 00000000 00000000     ....y...........
	...
d009129c:	11000000 10758179 00000000 00000000     ....y.u.........
	...
d00912c0:	10000000 00128179 00000000 00000000     ....y...........
	...
d00912e4:	10000000 00108175 00000000 00000000     ....u...........
	...
d0091308:	10000000 10758175 00000000 00000000     ....u.u.........
	...
d009132c:	10000000 10078179 00000000 00000000     ....y...........
	...
d0091350:	11000000 107d8175 00000000 00000000     ....u.}.........
	...
d0091374:	11000000 07817d6d 00000011 00000000     ....m}..........
	...
d0091398:	10000000 077d8171 00000010 00000000     ....q.}.........
	...
d00913bc:	10100000 817d8111 00000011 00000000     ......}.........
	...
d00913e0:	a6120000 817d11a6 00001007 00000000     ......}.........
	...
d0091404:	18ac1000 7d11a610 00101281 00000000     .......}........
	...
d0091428:	821a1000 81102281 1110717d 00000000     ....."..}q......
	...
d009144c:	821a1010 11ac107d 1010716d 00000000     ....}...mq......
	...
d0091470:	817eba10 ac10757d 18171110 00000011     ..~.}u..........
	...
d0091490:	11000000 7d818210 17106d6d 17171718     .......}mm......
d00914a0:	00000010 00000000 00000000 00000000     ................
d00914b0:	00000000 10000000 6d818107 11586d58     ...........mXmX.
d00914c0:	18181718 00000011 00000000 00000000     ................
	...
d00914d8:	11100000 10717d7d 10717d58 22181817     ....}}q.X}q...."
d00914e8:	00001022 00000000 00000000 00000000     "...............
d00914f8:	00000000 07110000 58107181 115c7d75     .........q.Xu}\.
d0091508:	17acac17 10001118 00818110 00000000     ................
	...
d0091520:	7d821100 755c1071 17107d81 18171718     ...}q.\u.}......
d0091530:	6d111017 1a82817d 00000011 00000000     ...m}...........
d0091540:	10100000 6d818110 79581010 18105881     .......m..Xy.X..
d0091550:	18181718 5c581017 817d1011 00000010     ......X\..}.....
d0091560:	00000000 7d7d1100 1081817d 58121111     ......}}}......X
d0091570:	1818105c 1817ac18 585c1018 817d106d     \.........\Xm.}.
d0091580:	00001011 00000000 7e1a7d10 00118181     .........}.~....
d0091590:	11101810 17171810 18ac1818 5c101718     ...............\
d00915a0:	10817d10 0000107d 00000000 bf828111     .}..}...........
d00915b0:	1075811a 17181710 18181718 18181718     ..u.............
d00915c0:	1010ac18 7510105c 00000010 00000000     ....\..u........
d00915d0:	ba7d7510 10817d07 17171711 18181718     .u}..}..........
d00915e0:	17171818 1010acac 106d5810 00000000     .........Xm.....
d00915f0:	00000000 816d1000 1171107d 18171810     ......m.}.q.....
d0091600:	17181817 17171718 11a6a6ac 00101000     ................
	...
d0091618:	6d100000 00107181 17181810 18181718     ...m.q..........
d0091628:	18181817 a6a6ac18 00000010 00000000     ................
d0091638:	00000000 10000000 10001010 17171817     ................
d0091648:	18181718 18171818 a6ac1817 000010a6     ................
	...
d0091660:	00100000 ac111000 10171818 17171717     ................
d0091670:	17181717 ac181717 000011a6 00000000     ................
d0091680:	00000000 7d6d1100 17acac10 18181817     ......m}........
d0091690:	18171012 18181817 ac171718 0010a6a6     ................
	...
d00916a8:	81811000 1718106d 18181717 10101017     ....m...........
d00916b8:	17181818 18181717 001122ac 00000000     ........."......
d00916c8:	00000000 7d811000 18171075 18181718     .......}u.......
d00916d8:	11111017 18181010 17171818 0011ac18     ................
	...
d00916f0:	81811000 1718107d 18171818 10101118     ....}...........
d0091700:	17101010 18181717 0010ac17 00000000     ................
d0091710:	00000000 817d1000 18106d7d 17171817     ......}.}m......
d0091720:	00101010 18101000 17181817 0011ac17     ................
	...
d0091738:	81791000 17107581 10121818 00000010     ..y..u..........
d0091748:	18100000 18171817 00101818 00000000     ................
d0091758:	00000000 816d1000 1110817d 00101010     ......m.}.......
d0091768:	00000000 17181000 18171718 00101018     ................
d0091778:	00101000 00000000 7d6d1100 00108181     ..........m}....
	...
d0091790:	10101000 11111010 10111011 101a0710     ................
d00917a0:	00000000 756d1100 00107d81 00000000     ......mu.}......
d00917b0:	00000000 076d1000 077d7dba ba07ba07     ......m..}}.....
d00917c0:	117d817d 00000000 6d6d1000 10817d79     }.}.......mmy}..
	...
d00917d8:	07817510 ba827d7d 7d078107 1071717d     .u..}}.....}}qq.
d00917e8:	00000000 6d120000 106d716d 00000000     .......mmqm.....
d00917f8:	00000000 79795c11 75757975 ba71ba81     .....\yyuyuu..q.
d0091808:	115c1a6d 00000000 10000000 00111110     m.\.............
	...
d0091820:	10101010 10121010 10101010 00101010     ................

d0091830 <gfx_bubguy5>:
	...
d0091938:	10000000 00000010 00000000 00000000     ................
	...
d009195c:	30101010 00001034 00000000 00000000     ...04...........
	...
d009197c:	11110000 30303434 00001034 f42d7000     ....44004....p-.
d009198c:	00006cf4 00000000 00000000 00000000     .l..............
d009199c:	00000000 34341000 30303030 f4113430     ......44000004..
d00919ac:	2d2d1d2d 00702d1d 00000000 00000000     -.--.-p.........
	...
d00919c4:	30343411 30303034 2d701134 70f42df4     .44040004.p-.-.p
d00919d4:	001d2d6c 00000000 00000000 00000000     l-..............
d00919e4:	00000000 34343410 30303034 706c7011     .....4444000.plp
d00919f4:	7070106c 00f47000 00000000 00000000     l.pp.p..........
	...
d0091a0c:	34101000 30303430 106c1110 70000011     ...40400..l....p
d0091a1c:	00f40000 00000000 00000000 00000000     ................
d0091a2c:	00000000 34341000 10343034 117d1010     ......44404...}.
	...
d0091a54:	30341000 10101011 71101aba 00000010     ..40.......q....
	...
d0091a78:	10103010 102d1d70 1010bf1a 111aba07     .0..p.-.........
	...
d0091a98:	11000000 706c1030 2d705858 7d1a1a10     ....0.lpXXp-...}
d0091aa8:	11827d7d 00000000 00000000 00000000     }}..............
d0091ab8:	00000000 30100000 f4701010 6c701aba     .......0..p...pl
d0091ac8:	baba0711 00001007 00000000 00000000     ................
	...
d0091ae0:	10301000 701d1134 107d7181 827e7d7d     ..0.4..p.q}.}}~.
d0091af0:	10070781 00000000 00000000 00000000     ................
d0091b00:	00000000 34343010 5c103411 7d7d6d58     .....044.4.\Xm}}
d0091b10:	7d7d7d7d 6d817d7d 00000010 00000000     }}}}}}.m........
	...
d0091b28:	34343430 5c101034 7971105c 6d717d7d     04444..\\.qy}}qm
d0091b38:	11103434 00000000 00000000 00000000     44..............
d0091b48:	00000000 11111110 11000011 6d101110     ...............m
d0091b58:	79757d79 00001111 00000000 00000000     y}uy............
	...
d0091b78:	34101000 10797575 00000000 00000000     ...4uuy.........
	...
d0091b9c:	10000000 00107579 00000000 00000000     ....yu..........
	...
d0091bc0:	10000000 00107d75 00000000 00000000     ....u}..........
	...
d0091be4:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0091c08:	11000000 10078175 00000000 00000000     ....u...........
	...
d0091c2c:	10000000 11797d75 00000000 00000000     ....u}y.........
	...
d0091c50:	10000000 00107d79 00000000 00000000     ....y}..........
	...
d0091c74:	10000000 00107d79 00000000 00000000     ....y}..........
	...
d0091c98:	10000000 10758171 00000000 00000000     ....q.u.........
	...
d0091cbc:	10000000 11ba7d79 00000000 00000000     ....y}..........
	...
d0091ce0:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0091d04:	11000000 82817d6d 00000011 00000000     ....m}..........
	...
d0091d28:	11000000 7d7d10a6 0000107e 00000000     ......}}~.......
	...
d0091d4c:	a6100000 7d10a6a6 0011107d 00000000     .......}}.......
	...
d0091d70:	11a61000 7d10ac10 10116d7d 00000000     .......}}m......
	...
d0091d94:	1a101000 11221082 10106d71 00000000     ......".qm......
	...
d0091db8:	1a6d1010 2210717d 17171010 00000010     ..m.}q."........
	...
d0091ddc:	077d5c11 17107181 18171717 00000011     .\}..q..........
	...
d0091e00:	1a817110 115c7d7d 18181718 00000011     .q..}}\.........
	...
d0091e24:	ba6d6d10 105c7d7d a6acaa18 000010a6     .mm.}}\.........
	...
d0091e48:	7e5c6d10 1711717d 17181718 00001017     .m\~}q..........
	...
d0091e6c:	7e5c5c10 17115c7d 17181717 00001017     .\\~}\..........
	...
d0091e90:	7e105c10 1717107d 17181817 00001117     .\.~}...........
	...
d0091eb4:	7d101011 1818187d 1817ac18 00001017     ...}}...........
	...
d0091ed4:	10000000 7d101817 1817177d 18181817     .......}}.......
d0091ee4:	00007d18 00000000 00000000 00000000     .}..............
d0091ef4:	00000000 13000000 81101718 1817107d     ............}...
d0091f04:	ac181718 10fb8218 00000000 00000000     ................
	...
d0091f1c:	11000000 7d101018 1818107d 22171718     .......}}......"
d0091f2c:	107d7d22 00000000 00000000 00000000     "}}.............
	...
d0091f44:	7d077110 17181081 18171817 101011ac     .q.}............
d0091f54:	00000010 00000000 00000000 00000000     ................
d0091f64:	11000000 8281821a 1810fb7e ac181818     ........~.......
d0091f74:	111710ac 00000011 00000000 00000000     ................
d0091f84:	00000000 10000000 077dba7d 18107e07     ........}.}..~..
d0091f94:	18171818 101117ac 00000000 00000000     ................
	...
d0091fac:	10000000 7d7d7d71 18116d81 17171818     ....q}}}.m......
d0091fbc:	10102218 00000000 00000000 00000000     ."..............
	...
d0091fd4:	816d6d11 1818106d 17171817 1010a618     .mm.m...........
	...
d0091ff8:	71711000 17181111 17181717 1010a6ac     ..qq............
	...
d009201c:	10110000 17181710 18181717 101118ac     ................
	...
d0092040:	17111011 18181710 17171717 1111ac18     ................
	...
d0092060:	11000000 105c6d1a 17171810 17171818     .....m\.........
d0092070:	0010ac18 00000000 00000000 00000000     ................
d0092080:	00000000 10000000 10717dba 17181710     .........}q.....
d0092090:	18171818 00101722 00000000 00000000     ...."...........
	...
d00920ac:	106d8110 17181818 22181717 00001118     ..m........"....
	...
d00920d0:	107d1000 18171818 ac181717 00000010     ..}.............
	...
d00920f4:	18100000 18171718 18181718 00001010     ................
	...
d0092118:	18100000 18181817 10171717 00101110     ................
	...
d009213c:	10100000 10111110 10111110 101aba11     ................
	...
d0092160:	826d1000 077d7dba 0707827e 107d7d7d     ..m..}}.~...}}}.
	...
d0092184:	077d7510 7eba7d7d 7d077d07 10716d7d     .u}.}}.~.}.}}mq.
	...
d00921a8:	79795c10 75797575 ba6dba7d 105cba71     .\yyuuyu}.m.q.\.
	...
d00921cc:	10101011 11101011 10111010 00101010     ................
	...

d00921e4 <gfx_bubguy6>:
	...
d00922a4:	11000000 00000010 00000000 00000000     ................
	...
d00922c8:	30101010 00001034 00000000 00000000     ...04...........
	...
d00922e8:	10100000 30303434 00001034 00000000     ....44004.......
	...
d009230c:	34341100 30303030 f4103430 f42d702d     ..44000004..-p-.
d009231c:	0000702d 00000000 00000000 00000000     -p..............
d009232c:	00000000 30343411 30303034 f4701134     .....44040004.p.
d009233c:	2d2df4f4 00702df4 00000000 00000000     ..--.-p.........
	...
d0092354:	34343410 30303034 70746c10 6c2df470     .4444000.ltpp.-l
d0092364:	00f4f474 00000000 00000000 00000000     t...............
d0092374:	00000000 34101000 30303430 106c1110     .......40400..l.
d0092384:	6c741010 002d7000 00000000 00000000     ..tl.p-.........
	...
d009239c:	34341000 10343034 107d1110 70000000     ..44404...}....p
d00923ac:	00f40000 00000000 00000000 00000000     ................
d00923bc:	00000000 30341000 10101010 6d10fbba     ......40.......m
d00923cc:	00000010 00000000 00000000 00000000     ................
	...
d00923e4:	10103010 112df470 10101abe 10bfbe82     .0..p.-.........
	...
d0092404:	10000000 6c701130 f46c5c58 7d1abf10     ....0.plX\l....}
d0092414:	10077d7d 00000000 00000000 00000000     }}..............
d0092424:	00000000 30110000 2d6c1010 746c1a82     .......0..l-..lt
d0092434:	beba0710 00001007 00000000 00000000     ................
	...
d009244c:	10301000 702d1134 117d717d 7e7e817d     ..0.4.-p}q}.}.~~
d009245c:	10827e7d 00000000 00000000 00000000     }~..............
d009246c:	00000000 34343011 5c103410 7d816d5c     .....044.4.\\m.}
d009247c:	7d7d7d81 717d7d81 00000010 00000000     .}}}.}}q........
	...
d0092494:	34343430 58101034 796d1158 716d7d7d     04444..XX.my}}mq
d00924a4:	10113434 00000000 00000000 00000000     44..............
d00924b4:	00000000 10101011 10000010 75101010     ...............u
d00924c4:	75797d79 00001010 00000000 00000000     y}yu............
	...
d00924e4:	34101100 10797579 00000000 00000000     ...4yuy.........
	...
d0092508:	11000000 00107979 00000000 00000000     ....yy..........
	...
d009252c:	10000000 00108175 00000000 00000000     ....u...........
	...
d0092550:	10000000 10817d79 00000000 00000000     ....y}..........
	...
d0092574:	10000000 10078179 00000000 00000000     ....y...........
	...
d0092598:	10000000 10797d79 00000000 00000000     ....y}y.........
	...
d00925bc:	10000000 00108179 00000000 00000000     ....y...........
	...
d00925e0:	11000000 00108179 00000000 00000000     ....y...........
	...
d0092604:	10000000 11758175 00000000 00000000     ....u.u.........
	...
d0092628:	10000000 10828179 00000000 00000000     ....y...........
	...
d009264c:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0092670:	10000000 7e81816d 00000011 00000000     ....m..~........
	...
d0092694:	10000000 077d816d 00000010 00000000     ....m.}.........
	...
d00926b8:	10000000 7e7d1010 0000117d 00000000     ......}~}.......
	...
d00926dc:	a6110000 7d11a6a6 0000106d 00000000     .......}m.......
	...
d0092700:	aca61000 10181011 00117171 00000000     ........qq......
	...
d0092724:	10a61000 a6107d7d 10106d11 00000000     ....}}...m......
	...
d0092748:	10101100 a6117e82 11171010 00000000     .....~..........
	...
d009276c:	81111810 ac81bf82 17171710 00000011     ................
	...
d0092790:	81581710 ac1a077d 18ac1811 00000010     ..X.}...........
	...
d00927b4:	7d711810 7d1a817d 18171710 00000010     ..q}}..}........
	...
d00927d8:	816d1710 fb827d71 1718187d 00001017     ..m.q}..}.......
	...
d00927fc:	7d711810 827d7111 17181007 00001018     ..q}.q}.........
	...
d0092820:	6d6d1011 7d75116d 17107d82 00001018     ..mmm.u}.}......
	...
d0092844:	6d5c1010 7d101020 10117e81 00001018     ..\m ..}.~......
	...
d0092868:	10111710 10181710 117d7d7d 00101011     ........}}}.....
	...
d009288c:	18171811 17181717 817d7d10 10107d7d     .........}}.}}..
d009289c:	00000010 00000000 00000000 00000000     ................
d00928ac:	00000000 17181811 18171818 7d7d1118     ..............}}
d00928bc:	107d8181 00001018 00000000 00000000     ..}.............
	...
d00928d4:	17171810 18181818 7d101717 81818181     ...........}....
d00928e4:	0010a610 00000000 00000000 00000000     ................
d00928f4:	00000000 18181710 17181817 7d811118     ...............}
d0092904:	bf077e7d 10a61810 00000000 00000000     }~..............
d0092914:	00000000 11000000 17181717 18181718     ................
d0092924:	81101018 6d7e1a82 11a61811 00000000     ......~m........
	...
d009293c:	10000000 18171818 17181717 81581017     ..............X.
d009294c:	11757d81 10181717 00000000 00000000     .}u.............
d009295c:	00000000 18100000 18171818 18171818     ................
d009296c:	5c101718 18105871 10171817 00000000     ...\qX..........
	...
d0092984:	18100000 17181818 18171718 11181818     ................
d0092994:	17111010 11181818 00101010 00000000     ................
d00929a4:	00000000 18100000 17171817 18181818     ................
d00929b4:	18181818 17181010 11181718 00117e1a     .............~..
	...
d00929cc:	18100000 18171718 18181818 10101018     ................
d00929dc:	18181818 71101818 00118182 00000000     .......q........
d00929ec:	00000000 17181000 18181818 18171718     ................
d00929fc:	11101017 17181810 7d6d1017 00107d7d     ..........m}}}..
	...
d0092a14:	18181000 18181718 18181717 11000010     ................
d0092a24:	17181810 81817110 00106d81 00000000     .....q...m......
d0092a34:	00000000 18171710 18181717 17181817     ................
d0092a44:	00000010 18181710 7d7d7d10 00105c81     .........}}}.\..
	...
d0092a5c:	18181711 18181818 11171818 00000000     ................
d0092a6c:	11181710 717d7d81 0000115c 00000000     .....}}q\.......
d0092a7c:	00000000 18181711 17181818 00101017     ................
d0092a8c:	00000000 7d101810 58717d7d 00000010     .......}}}qX....
d0092a9c:	00000000 11000000 18181718 18181717     ................
d0092aac:	00001017 00000000 81711011 1071717d     ..........q.}qq.
	...
d0092ac4:	10000000 18181718 18171817 10101011     ................
d0092ad4:	00000000 7d811100 00106d81 00000000     .......}.m......
d0092ae4:	00000000 10100000 10101010 10101011     ................
d0092af4:	1a821010 00000011 7d711000 00115c71     ..........q}q\..
	...
d0092b0c:	6d100000 7d817e7e 0782827e 7d817d82     ...m~~.}~....}.}
d0092b1c:	00000010 715c1000 00001020 00000000     ......\q .......
d0092b2c:	00000000 7d751000 077d817e 07817e7e     ......u}~.}.~~..
d0092b3c:	716d817d 00000010 10110000 00000010     }.mq............
	...
d0092b54:	79581000 75797579 71ba7d79 5cba6d1a     ..Xyyuyuy}.q.m.\
d0092b64:	00000010 00000000 00000000 00000000     ................
d0092b74:	00000000 10111000 10101010 10101110     ................
d0092b84:	10111111 00000000 00000000 00000000     ................
d0092b94:	00000000                                ....

d0092b98 <gfx_bubguy7>:
	...
d0092ca0:	10000000 00000010 00000000 00000000     ................
	...
d0092cc4:	30101010 00001034 00000000 00000000     ...04...........
	...
d0092ce4:	11110000 30303434 00001034 f42d7000     ....44004....p-.
d0092cf4:	00006cf4 00000000 00000000 00000000     .l..............
d0092d04:	00000000 34341000 30303030 f4113430     ......44000004..
d0092d14:	2d2d1d2d 00702d1d 00000000 00000000     -.--.-p.........
	...
d0092d2c:	30343412 30303034 2d701134 70f42df4     .44040004.p-.-.p
d0092d3c:	001d2d6c 00000000 00000000 00000000     l-..............
d0092d4c:	00000000 34343410 30303034 706c7010     .....4444000.plp
d0092d5c:	7070106c 00f47000 00000000 00000000     l.pp.p..........
	...
d0092d74:	34101000 30303430 106c1210 70000011     ...40400..l....p
d0092d84:	00f40000 00000000 00000000 00000000     ................
d0092d94:	00000000 34341000 10343034 117d1010     ......44404...}.
	...
d0092dbc:	30341000 10101011 71101aba 00000010     ..40.......q....
	...
d0092de0:	10103010 102d1d70 1010bf1a 111a1aba     .0..p.-.........
	...
d0092e00:	11000000 706c1030 2d705858 811a1a10     ....0.lpXXp-....
d0092e10:	11827d7d 00000000 00000000 00000000     }}..............
d0092e20:	00000000 30100000 f4701010 6c70baba     .......0..p...pl
d0092e30:	ba1a0711 000010ba 00000000 00000000     ................
	...
d0092e48:	10301000 701d1134 10817181 82ba817d     ..0.4..p.q..}...
d0092e58:	107e0781 00000000 00000000 00000000     ..~.............
d0092e68:	00000000 34343010 5c103411 7d7d6d58     .....044.4.\Xm}}
d0092e78:	81817d81 6d817d7d 00000010 00000000     .}..}}.m........
	...
d0092e90:	34343430 5c101034 7971105c 6d717d7d     04444..\\.qy}}qm
d0092ea0:	11103434 00000000 00000000 00000000     44..............
d0092eb0:	00000000 11111110 11000012 71101110     ...............q
d0092ec0:	75798175 00001111 00000000 00000000     u.yu............
	...
d0092ee0:	34101000 10757575 00000000 00000000     ...4uuu.........
	...
d0092f04:	10000000 00107575 00000000 00000000     ....uu..........
	...
d0092f28:	10000000 00107d75 00000000 00000000     ....u}..........
	...
d0092f4c:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0092f70:	11000000 117e8175 00000000 00000000     ....u.~.........
	...
d0092f94:	10000000 11758175 00000000 00000000     ....u.u.........
	...
d0092fb8:	10000000 00108175 00000000 00000000     ....u...........
	...
d0092fdc:	10000000 00108175 00000000 00000000     ....u...........
	...
d0093000:	10000000 10797d79 00000000 00000000     ....y}y.........
	...
d0093024:	10000000 10077d75 00000000 00000000     ....u}..........
	...
d0093048:	10000000 107d7d75 00000000 00000000     ....u}}.........
	...
d009306c:	10000000 7e7d816d 00000012 00000000     ....m.}~........
	...
d0093090:	10000000 07811010 00000010 00000000     ................
	...
d00930b4:	11100000 8110a6a6 0000126d 00000000     ........m.......
	...
d00930d8:	a6100000 10ac1a71 00001071 00000000     ....q...q.......
	...
d00930fc:	5c100000 ac1aba7d 00107110 00000000     ...\}....q......
	...
d0093120:	5ca61000 bf827d81 00107110 00000000     ...\.}...q......
	...
d0093144:	6dac1000 ba7d817d 1110101a 00000000     ...m}.}.........
	...
d0093168:	7d102210 7d817d7d 1082ba07 00000000     .".}}}.}........
	...
d009318c:	81101810 816d5881 07077d7d 00001110     .....Xm.}}......
	...
d00931b0:	7d101810 1058817d 7d7d7d6d 11117e82     ...}}.X.m}}}.~..
d00931c0:	12111011 00000000 00000000 00000000     ................
d00931d0:	00000000 7d101811 5c717181 7d711010     .......}.qq\..q}
d00931e0:	ba07817d 820707ba 00000012 00000000     }...............
d00931f0:	00000000 10000000 71111710 105c6d71     ...........qqm\.
d0093200:	11101017 7d817d71 1aba8281 00001007     ....q}.}........
	...
d0093218:	7d110000 5c111810 18115c71 18181718     ...}...\q\......
d0093228:	7d6d1010 bfbaba81 0011817e 00000000     ..m}....~.......
d0093238:	00000000 6d6d1000 10181810 17181011     ......mm........
d0093248:	17181817 7d100011 ba1a8281 00107d7d     .......}....}}..
	...
d0093260:	5c711000 18171812 17181818 17171818     ..q\............
d0093270:	10001118 7d827d6d 00106d7d 00000000     ....m}.}}m......
d0093280:	00000000 5c711000 18181710 18181817     ......q\........
d0093290:	18181718 10001018 7d817171 0000106d     ........qq.}m...
	...
d00932a8:	106d1100 18181817 18181718 17181817     ..m.............
d00932b8:	00101818 6d717111 00000010 00000000     .....qqm........
d00932c8:	00000000 10100000 18181818 18181718     ................
d00932d8:	18171818 00101718 12101000 00000000     ................
	...
d00932f0:	10000000 18181817 17181818 18181718     ................
d0093300:	10ac1718 00000000 00000000 00000000     ................
d0093310:	00000000 10000000 18181818 17181818     ................
d0093320:	18171817 11221718 00000000 00000000     ......".........
	...
d0093338:	11000000 17181817 18181818 18171718     ................
d0093348:	a6181717 00000012 00000000 00000000     ................
d0093358:	00000000 10110000 18171811 18181717     ................
d0093368:	18181717 ac171817 000010a6 00000000     ................
	...
d0093380:	11111000 18171717 18181818 18171718     ................
d0093390:	ac181717 000011a6 00000000 00000000     ................
d00933a0:	10000000 1722a610 17181718 17181717     ......".........
d00933b0:	18181810 18181718 00001022 00000000     ........".......
d00933c0:	00000000 22100000 181817a6 18181717     ......."........
d00933d0:	18181817 17171110 18181818 000010ac     ................
d00933e0:	00101100 00000000 18110000 17181718     ................
d00933f0:	17181718 10171818 18181010 18181817     ................
d0093400:	00101817 10811a10 00000000 10100000     ................
d0093410:	17181817 17181718 00121717 18101012     ................
d0093420:	18171818 00101817 107d7d10 00000000     .........}}.....
d0093430:	7d811000 18181810 18171817 00001017     ...}............
d0093440:	17111000 18181818 11181718 5c7d7d71     ............q}}\
d0093450:	00000000 81811000 17181710 10181818     ................
d0093460:	00000011 18100000 18171818 10181818     ................
d0093470:	71818171 00000000 817d1000 1818107d     q..q......}.}...
d0093480:	00101818 00000000 10100000 18181818     ................
d0093490:	7d101818 717d7d7d 00000000 81811000     ...}}}}q........
d00934a0:	1010717d 10101010 00000000 11000000     }q..............
d00934b0:	18181817 817d1018 5c71817d 00000000     ......}.}.q\....
d00934c0:	7d811000 817d817d 117d8182 00000000     ...}}.}...}.....
d00934d0:	11000000 10101810 817d7d11 115c717d     .........}}.}q\.
d00934e0:	00000000 81100000 7dba7d81 116d717d     .........}.}}qm.
	...
d00934f8:	5c111010 7d817d7d 00105871 00000000     ...\}}.}qX......
d0093508:	5c100000 076d7e81 105c7e71 00000000     ...\.~m.q~\.....
d0093518:	00000000 81100000 5c6d8181 00001010     ..........m\....
d0093528:	00000000 10000000 1010105c 00101010     ........\.......
	...
d0093540:	10100000 10101010 00000000              ............

d009354c <gfx_bubguy8>:
	...
d0093678:	11000000 00000010 00000000 00000000     ................
	...
d009369c:	30101010 00001034 2df47000 000070f4     ...04....p.-.p..
	...
d00936bc:	10110000 30303434 00001034 1d2d7070     ....44004...pp-.
d00936cc:	001d1d2d 00000000 00000000 00000000     -...............
d00936dc:	00000000 34341100 30303030 f4103430     ......44000004..
d00936ec:	701df41d 002df470 00000000 00000000     ...pp.-.........
	...
d0093704:	30343410 30303034 bc701034 70701d2d     .44040004.p.-.pp
d0093714:	001d0000 00000000 00000000 00000000     ................
d0093724:	00000000 34343410 30303034 70707010     .....4444000.ppp
d0093734:	70001070 00000000 00000000 00000000     p..p............
	...
d009374c:	34101000 30303430 10701010 00000010     ...40400..p.....
	...
d0093770:	34341000 11343034 107d1010 00000000     ..44404...}.....
	...
d0093794:	30341100 11101010 6d101aba 00000011     ..40.......m....
	...
d00937b8:	10103010 101dbc70 11101aba 101aba07     .0..p...........
	...
d00937d8:	11000000 70701030 1d705858 7d1a1a10     ....0.ppXXp....}
d00937e8:	1007817d 00000000 00000000 00000000     }...............
d00937f8:	00000000 30100000 bc701010 70701a07     .......0..p...pp
d0093808:	ba1a8210 00001082 00000000 00000000     ................
	...
d0093820:	10301000 702d1034 10817181 0707817d     ..0.4.-p.q..}...
d0093830:	11077e81 00000000 00000000 00000000     .~..............
d0093840:	00000000 34343010 58103410 81816d58     .....044.4.XXm..
d0093850:	7d817d81 6d817d7d 00000011 00000000     .}.}}}.m........
	...
d0093868:	34343430 58111034 7971105c 716d817d     04444..X\.qy}.mq
d0093878:	11103434 00000000 00000000 00000000     44..............
d0093888:	00000000 11101110 10000010 6d101011     ...............m
d0093898:	79797d79 00001111 00000000 00000000     y}yy............
	...
d00938b8:	34111100 11757579 00000000 00000000     ...4yuu.........
	...
d00938dc:	10000000 00107979 00000000 00000000     ....yy..........
	...
d0093900:	10000000 00107d75 00000000 00000000     ....u}..........
	...
d0093924:	10000000 107d8179 00000000 00000000     ....y.}.........
	...
d0093948:	10000000 10078179 00000000 00000000     ....y...........
	...
d009396c:	10000000 10757d79 00000000 00000000     ....y}u.........
	...
d0093990:	10000000 00107d79 00000000 00000000     ....y}..........
	...
d00939b4:	10000000 00108175 00000000 00000000     ....u...........
	...
d00939d8:	10000000 10757d79 00000000 00000000     ....y}u.........
	...
d00939fc:	10000000 11077d79 00000000 00000000     ....y}..........
	...
d0093a20:	11000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0093a44:	10000000 ba7d816d 00000010 00000000     ....m.}.........
	...
d0093a68:	10100000 8110acac 0000106d 00000000     ........m.......
	...
d0093a8c:	ac110000 10227d6d 00001071 00000000     ....m}".q.......
	...
d0093ab0:	58100000 22111aba 00107110 00000000     ...X...".q......
	...
d0093ad4:	5cac1000 101a077d 00101111 00000000     ...\}...........
	...
d0093af8:	71181000 bf078181 10101007 00000000     ...q............
	...
d0093b1c:	6d181100 077d7d81 101107ba 00000000     ...m.}}.........
	...
d0093b40:	7d10ac10 796d5881 7dbaba7d 00111058     ...}.Xmy}..}X...
d0093b50:	10100000 00001011 00000000 00000000     ................
d0093b60:	00000000 79101810 11586d81 7d817d71     .......y.mX.q}.}
d0093b70:	82070707 8181ba82 00107d7d 00000000     ........}}......
	...
d0093b88:	81111810 58757d81 6d101010 817d7d81     .....}uX...m.}}.
d0093b98:	817d7d81 00101a1a 00000000 00000000     .}}.............
d0093ba8:	11100000 6d111810 106d7d7d 10181118     .......m}}m.....
d0093bb8:	7d711010 07817d7d 1081ba1a 00000000     ..q}}}..........
d0093bc8:	00000000 6d7d1000 6d101810 115c6d75     ......}m...mum\.
d0093bd8:	17181818 10100010 ba7d7110 107d7d82     .........q}..}}.
	...
d0093bf0:	71717110 5c101810 1711585c 18171718     .qqq...\\X......
d0093c00:	00001018 7d7d1011 10717d81 00000000     ......}}.}q.....
d0093c10:	00000000 715c6d10 10171710 18171010     .....m\q........
d0093c20:	17181817 00001018 816d1000 0011717d     ..........m.}q..
	...
d0093c38:	10587110 18171818 17181818 18181818     .qX.............
d0093c48:	00111717 71581000 00001058 00000000     ......XqX.......
d0093c58:	00000000 10106d11 18171718 18181718     .....m..........
d0093c68:	18171717 10ac1718 10100000 00000010     ................
	...
d0093c80:	17101000 17181717 18181717 18181718     ................
d0093c90:	11a61817 00000000 00000000 00000000     ................
d0093ca0:	00000000 18110000 18181818 17171818     ................
d0093cb0:	18171818 ac171818 00000011 00000000     ................
	...
d0093cc8:	18101000 18171818 17171817 18171818     ................
d0093cd8:	ac171818 00000010 00000000 00000000     ................
d0093ce8:	10000000 1818a610 18181818 18181817     ................
d0093cf8:	17171017 ac171817 000011ac 00000000     ................
d0093d08:	00000000 22100000 171818a6 17171718     ......."........
d0093d18:	18171817 18181711 18181817 000010ac     ................
	...
d0093d30:	ac101000 17181818 18181817 18181817     ................
d0093d40:	18181810 17171718 000011ac 00000000     ................
d0093d50:	00000000 107d6d10 17181817 17181717     .....m}.........
d0093d60:	10171818 17171011 17171718 00001017     ................
	...
d0093d78:	10ba8110 18181818 17181718 10101818     ................
d0093d88:	18171010 18181817 00001010 00000000     ................
d0093d98:	00000000 7d820711 18171710 18171818     .......}........
d0093da8:	00001117 18181011 18181818 00000010     ................
	...
d0093dc0:	81ba0710 18171810 10171817 00000010     ................
d0093dd0:	17181011 18171717 00000011 00000000     ................
d0093de0:	00000000 7d818110 18181010 00111010     .......}........
d0093df0:	00000000 18181000 17181717 00000010     ................
	...
d0093e08:	7d818111 10111010 00000011 00000000     ...}............
d0093e18:	17171000 18181818 00000010 00000000     ................
d0093e28:	00000000 817d8110 0000107d 00000000     ......}.}.......
d0093e38:	00000000 17181810 18181817 11101011     ................
d0093e48:	00000010 00000000 7d7d8110 0000107d     ..........}}}...
	...
d0093e60:	11171710 10101011 817d1010 00001007     ..........}.....
d0093e70:	00000000 7d7d8110 00001181 00000000     ......}}........
d0093e80:	00000000 7d101010 7d7d7d81 817d7d7d     .......}.}}}}}}.
d0093e90:	0000106d 00000000 817d6d10 0010817d     m........m}.}...
	...
d0093ea8:	81817d11 7d817d7d 6d7d7d81 0000115c     .}..}}.}.}}m\...
d0093eb8:	00000000 81711100 00117d81 00000000     ......q..}......
d0093ec8:	00000000 817d5810 58586d71 5c6d716d     .....X}.qmXXmqm\
d0093ed8:	00000010 00000000 11100000 00001110     ................
	...
d0093ef0:	11101110 10101110 10101110 00000000     ................

d0093f00 <gradient_cols.9259>:
d0093f00:	21202020 23222221 25242423 27262625        !!""##$$%%&&'
d0093f10:	00002727                                ''..

d0093f14 <guywidthheight>:
d0093f14:	45454545 45454545 00000040              EEEEEEEE@...

d0093f20 <guywidthwidth>:
d0093f20:	2424241d 24242424 00000018              .$$$$$$$....

d0093f2c <scr_bub_floor>:
	...
d0093fd0:	10101010 10101000 00001010 00000000     ................
	...
d0093ff0:	10101010 10101000 00001010 00000000     ................
	...
d00940e8:	10000000 10606060 60601010 00106060     ....```...````..
d00940f8:	10000000 10101010 00000000 00000000     ................
d0094108:	10000000 10606060 60601010 00106060     ....```...````..
d0094118:	10000000 10101010 00000000 00000000     ................
	...
d0094200:	10100000 60100010 60606060 60606010     .......`````.```
d0094210:	10606060 10100010 60606060 00000010     ```.....````....
d0094220:	00000000 60100000 60606060 60606010     .......`````.```
d0094230:	10606060 10100010 60606060 00000010     ```.....````....
	...
d00942ec:	10101010 10100000 00101010 00000000     ................
	...
d009431c:	60601000 60101060 60606060 60606060     ..```..`````````
d009432c:	60606060 60101010 60606060 00001060     ````...``````...
d009433c:	00000000 60100000 60606060 60606060     .......`````````
d009434c:	60606060 60101010 60606060 00001060     ````...``````...
	...
d0094364:	10101010 00000000 00000000 00000000     ................
	...
d0094404:	10000000 60606060 60601010 10106060     ....````..````..
	...
d0094438:	60606010 10101060 60606060 60606060     .````...````````
d0094448:	10606060 60106060 60606060 00001060     ```.``.``````...
d0094458:	00000000 10100000 60606060 60606060     ........````````
d0094468:	10606060 60106060 60606060 00001060     ```.``.``````...
d0094478:	00000000 10100000 60606060 00000010     ........````....
	...
d0094520:	60100000 60606060 60606060 10606060     ...````````````.
d0094530:	00000010 00000000 00000000 00000000     ................
	...
d0094550:	10000000 60606010 60606060 60606010     .....```````.```
d0094560:	60606060 60106060 60606060 60606060     ``````.`````````
d0094570:	00106060 10101000 60601010 60606010     ``........``.```
d0094580:	60606060 60106060 60606060 60606060     ``````.`````````
d0094590:	00106060 10101000 60601010 60606060     ``........``````
d00945a0:	00001060 00000000 00000000 00000000     `...............
	...
d009463c:	60100000 60606060 60606060 60606060     ...`````````````
d009464c:	00001060 00000000 00000000 00000000     `...............
	...
d009466c:	60100000 60601060 60606060 60606060     ...``.``````````
d009467c:	60606060 60106060 60606060 60606060     ``````.`````````
d009468c:	00106060 60606010 60606060 60606060     ``...```````````
d009469c:	60606060 60106060 60606060 60606060     ``````.`````````
d00946ac:	00106060 60606010 60606060 60606060     ``...```````````
d00946bc:	00001060 00000000 00000000 00000000     `...............
	...
d0094758:	60100000 60606060 60606060 60606060     ...`````````````
d0094768:	00001060 00000000 00000000 00000000     `...............
	...
d0094788:	60100000 60606060 60606060 60606060     ...`````````````
d0094798:	60606060 60106060 60606060 60606060     ``````.`````````
d00947a8:	10106060 60606060 60606060 60606060     ``..````````````
d00947b8:	60606060 60106060 60606060 60606060     ``````.`````````
d00947c8:	10106060 60606060 60606060 60606060     ``..````````````
d00947d8:	00001060 00000000 00000000 00000000     `...............
	...
d0094874:	60100000 60606060 60606060 60606060     ...`````````````
d0094884:	10001060 10101010 00000000 00000000     `...............
	...
d00948a0:	10101010 60100010 60606060 60606060     .......`````````
d00948b0:	60606060 60606060 10606060 60606010     ```````````..```
d00948c0:	60606060 10606060 60606060 60606060     ```````.````````
d00948d0:	60606060 60606060 10606060 60606010     ```````````..```
d00948e0:	60606060 10606060 60606060 60606060     ```````.````````
d00948f0:	60606060 00001060 00000000 00000000     `````...........
	...
d0094990:	60100000 60606060 60606060 60606060     ...`````````````
d00949a0:	60101010 10606060 00000000 00000000     ...````.........
	...
d00949bc:	60606010 10101060 60606060 60606060     .````...````````
d00949cc:	60606060 60606060 60606060 60606060     ````````````````
d00949dc:	60606060 10106060 60606010 60606060     ``````...```````
d00949ec:	60606060 60606060 60606060 60606060     ````````````````
d00949fc:	60606060 10106060 60606010 60606060     ``````...```````
d0094a0c:	60606060 00001060 00000000 00000000     `````...........
	...
d0094aac:	60100000 60606060 60606060 60606060     ...`````````````
d0094abc:	60606010 10606060 00000000 00000000     .``````.........
	...
d0094ad8:	60606010 60606060 60606060 60606060     .```````````````
d0094ae8:	60606060 60606060 60606060 60606060     ````````````````
d0094af8:	60606060 60101060 60606060 60606060     `````..`````````
d0094b08:	60606060 60606060 60606060 60606060     ````````````````
d0094b18:	60606060 60101060 60606060 60606060     `````..`````````
d0094b28:	60606060 00001060 00000000 00000000     `````...........
	...
d0094bc4:	10101000 4c100010 60606060 60606060     .......L````````
d0094bd4:	60606060 60606060 10106060 00000000     ``````````......
	...
d0094bf4:	60601010 60606060 60606060 60606060     ..``````````````
d0094c04:	60606060 60606060 60606060 60606060     ````````````````
d0094c14:	60606060 60601060 60606060 60606060     `````.``````````
d0094c24:	60606060 60606060 60606060 60606060     ````````````````
d0094c34:	60606060 60601060 60606060 60606060     `````.``````````
d0094c44:	60606060 1000104c 00101010 00000000     ````L...........
	...
d0094ce0:	60606010 10101010 60601010 60606060     .```......``````
d0094cf0:	60606060 60606060 60606060 00000010     ````````````....
	...
d0094d0c:	10000000 60606060 60606060 60606060     ....````````````
d0094d1c:	60606060 60606060 60606060 60606060     ````````````````
d0094d2c:	60606060 60606060 60606010 60606060     ````````.```````
d0094d3c:	60606060 60606060 60606060 60606060     ````````````````
d0094d4c:	60606060 60606060 60606010 60606060     ````````.```````
d0094d5c:	60606060 10606060 10101010 10606060     ```````.....```.
	...
d0094df8:	10000000 60606060 60606060 60601060     ....`````````.``
d0094e08:	60606060 60606060 60606060 60606060     ````````````````
d0094e18:	00000010 00000000 00000000 00000000     ................
d0094e28:	10000000 60606060 60606060 60606060     ....````````````
d0094e38:	60606060 60606060 60606060 60606060     ````````````````
d0094e48:	60606060 60606060 60606060 60606060     ````````````````
d0094e58:	60606060 60606060 60606060 60606060     ````````````````
d0094e68:	60606060 60606060 60606060 60606060     ````````````````
d0094e78:	60606060 60606060 60606060 60606060     ````````````````
d0094e88:	00000010 00000000 00000000 00000000     ................
	...
d0094f14:	10000000 60606060 60606060 60606060     ....````````````
d0094f24:	60606060 60606060 60606060 10606060     ```````````````.
	...
d0094f48:	60606010 60606060 60606060 60606060     .```````````````
d0094f58:	60606060 60606060 60606060 60606060     ````````````````
d0094f68:	60606060 60606060 60606060 60606060     ````````````````
d0094f78:	60606060 60606060 60606060 60606060     ````````````````
d0094f88:	60606060 60606060 60606060 60606060     ````````````````
d0094f98:	60606060 60606060 60606060 00000010     ````````````....
	...
d0095034:	60606010 60606060 60606060 60606060     .```````````````
d0095044:	60606060 60601060 60606060 00000010     `````.``````....
	...
d0095060:	10000000 60606060 60606060 60606060     ....````````````
d0095070:	60606060 60606060 60606060 60606060     ````````````````
d0095080:	60606060 60606060 60606060 60606060     ````````````````
d0095090:	60606060 60606060 60606060 60606060     ````````````````
d00950a0:	60606060 60606060 60606060 60606060     ````````````````
d00950b0:	60606060 60606060 60606060 10606060     ```````````````.
	...
d009514c:	10000000 60606010 60606060 60606010     .....```````.```
d009515c:	10606060 60606060 60606060 10606060     ```.```````````.
d009516c:	00000010 00000000 00000000 00000000     ................
d009517c:	10001010 60606010 60606060 60606060     .....```````````
d009518c:	60606060 60606060 60606060 60606060     ````````````````
d009519c:	60606060 60606060 60606060 60606060     ````````````````
d00951ac:	60606060 60606060 60606060 60606060     ````````````````
d00951bc:	60606060 60606060 60606060 60606060     ````````````````
d00951cc:	60606060 60606060 60606060 10606060     ```````````````.
d00951dc:	00000010 00000000 00000000 00000000     ................
	...
d0095264:	10100000 60101010 60601060 60606060     .......``.``````
d0095274:	60606010 60606060 60606010 60606060     .```````.```````
d0095284:	60106060 00101060 00101010 00000000     ``.``...........
d0095294:	10000000 60106010 60601060 60606060     .....`.``.``````
d00952a4:	60606060 60606060 4c606060 60606060     ```````````L````
d00952b4:	60606060 60606060 60606060 60606060     ````````````````
d00952c4:	60606060 60606060 4c606060 60606060     ```````````L````
d00952d4:	60606060 60606060 60606060 60606060     ````````````````
d00952e4:	60606060 60606060 60606060 60606060     ````````````````
d00952f4:	60106060 10101060 00001010 00000000     ``.``...........
	...
d0095380:	60601000 60106060 60606060 60606060     ..````.`````````
d0095390:	60606060 60606060 60606060 60606060     ````````````````
d00953a0:	60606060 10101060 10606060 10100000     `````...```.....
d00953b0:	60100010 60106060 60606060 60606060     ...```.`````````
d00953c0:	60606060 60606060 4c606060 6060604c     ```````````LL```
d00953d0:	60606060 60606060 60606060 60606060     ````````````````
d00953e0:	60606060 60606060 4c606060 6060604c     ```````````LL```
d00953f0:	60606060 60606060 60606060 60606060     ````````````````
d0095400:	60606060 60606060 60606060 60606060     ````````````````
d0095410:	60606060 60601060 00106060 00000000     `````.````......
	...
d0095498:	10100000 60606010 60106060 60606060     .....`````.`````
d00954a8:	60606060 60606060 60606060 60606060     ````````````````
d00954b8:	60606060 60606060 60601060 60606060     `````````.``````
d00954c8:	60601010 60101060 60106060 60606060     ..```..```.`````
d00954d8:	60606060 60606060 60606060 4c606060     ```````````````L
d00954e8:	60604c4c 60606060 60606060 4c606060     LL`````````````L
d00954f8:	60606060 60606060 60606060 4c606060     ```````````````L
d0095508:	60604c4c 60606060 60606060 4c606060     LL`````````````L
d0095518:	60606060 60606060 60606060 60606060     ````````````````
d0095528:	60606060 60606060 60601060 10606060     `````````.`````.
d0095538:	00001010 00000000 00000000 00000000     ................
	...
d00955b4:	60601010 60606010 60606060 60606060     ..``.```````````
d00955c4:	60606060 60606060 60606060 60606060     ````````````````
d00955d4:	60606060 60606060 60606060 60606060     ````````````````
d00955e4:	60606060 60106060 60606060 60606060     ``````.`````````
d00955f4:	60606060 60606060 60606060 60606060     ````````````````
d0095604:	604c4c4c 60606060 60606060 4c4c6060     LLL```````````LL
d0095614:	60606060 60606060 60606060 60606060     ````````````````
d0095624:	604c4c4c 60606060 60606060 4c4c6060     LLL```````````LL
d0095634:	60606060 60606060 60606060 60606060     ````````````````
d0095644:	60606060 60606060 60606060 10606060     ```````````````.
d0095654:	10106060 00000000 00000000 00000000     ``..............
	...
d00956cc:	10000000 60606060 60606060 60606060     ....````````````
d00956dc:	60606060 60606060 60606060 60606060     ````````````````
d00956ec:	60606060 60606060 60606060 60606060     ````````````````
d00956fc:	60606060 60606060 60606060 60606060     ````````````````
d009570c:	60606060 60606060 60606060 60606060     ````````````````
d009571c:	60606060 4c4c4c4c 6060604c 60606060     ````LLLLL```````
d009572c:	604c4c60 60606060 60606060 60606060     `LL`````````````
d009573c:	60606060 4c4c4c4c 6060604c 60606060     ````LLLLL```````
d009574c:	604c4c60 60606060 60606060 60606060     `LL`````````````
d009575c:	60606060 60606060 60606060 60606060     ````````````````
d009576c:	60606060 60606060 00000010 00000000     ````````........
	...
d00957e8:	60100000 60606060 60606060 60606060     ...`````````````
d00957f8:	60606060 60606060 60606060 60606060     ````````````````
d0095808:	60606060 60606060 60606060 60606060     ````````````````
d0095818:	60606060 60606060 60606060 60606060     ````````````````
d0095828:	60606060 60606060 60606060 60606060     ````````````````
d0095838:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0095848:	604c4c4c 60606060 60606060 60606060     LLL`````````````
d0095858:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0095868:	604c4c4c 60606060 60606060 60606060     LLL`````````````
d0095878:	60606060 60606060 60606060 60606060     ````````````````
d0095888:	60606060 60606060 00001060 00000000     `````````.......
	...
d0095904:	4c101010 60606060 60606060 60606060     ...L````````````
d0095914:	60606060 60606060 60606060 60606060     ````````````````
d0095924:	60606060 60606060 60606060 60606060     ````````````````
d0095934:	60606060 60606060 60606060 60606060     ````````````````
d0095944:	60606060 60606060 60606060 60606060     ````````````````
d0095954:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0095964:	604c4c4c 60606060 60606060 60606060     LLL`````````````
d0095974:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0095984:	604c4c4c 60606060 60606060 60606060     LLL`````````````
d0095994:	60606060 60606060 60606060 60606060     ````````````````
d00959a4:	60606060 60606060 1010104c 00000000     ````````L.......
	...
d0095a1c:	10100000 6060604c 60606060 60606060     ....L```````````
d0095a2c:	60606060 60606060 60606060 4c606060     ```````````````L
d0095a3c:	60606060 60606060 60606060 60606060     ````````````````
d0095a4c:	60606060 604c6060 60606060 60606060     ``````L`````````
d0095a5c:	60606060 60606060 60606060 60606060     ````````````````
d0095a6c:	60606060 4c4c6060 4c4c4c4c 4c4c4c4c     ``````LLLLLLLLLL
d0095a7c:	4c4c4c4c 4c4c4c4c 6060604c 60606060     LLLLLLLLL```````
d0095a8c:	60606060 4c4c6060 4c4c4c4c 4c4c4c4c     ``````LLLLLLLLLL
d0095a9c:	4c4c4c4c 4c4c4c4c 6060604c 60606060     LLLLLLLLL```````
d0095aac:	60606060 60606060 60606060 60606060     ````````````````
d0095abc:	60606060 60606060 10606060 4c606060     ```````````.```L
d0095acc:	00001010 00000000 00000000 00000000     ................
	...
d0095b38:	604c1000 60606060 60606060 60606060     ..L`````````````
d0095b48:	60606060 60606060 60606060 4c606060     ```````````````L
d0095b58:	60606060 4c606060 604c4c4c 60606060     ```````LLLL`````
d0095b68:	60606060 4c4c6060 6060604c 60606060     ``````LLL```````
d0095b78:	60606060 60606060 60606060 60604c4c     ````````````LL``
d0095b88:	60606060 4c4c4c60 4c4c4c4c 4c4c4c4c     `````LLLLLLLLLLL
d0095b98:	4c4c4c4c 4c4c4c4c 604c4c4c 60606060     LLLLLLLLLLL`````
d0095ba8:	60606060 4c4c4c60 4c4c4c4c 4c4c4c4c     `````LLLLLLLLLLL
d0095bb8:	4c4c4c4c 4c4c4c4c 604c4c4c 60606060     LLLLLLLLLLL`````
d0095bc8:	60606060 4c4c6060 60606060 60606060     ``````LL````````
d0095bd8:	60606060 60606060 60106060 60606060     ``````````.`````
d0095be8:	0000104c 00000000 00000000 00000000     L...............
	...
d0095c10:	10101010 10101010 00000010 00000000     ................
	...
d0095c54:	60601000 60606060 60606060 60606060     ..``````````````
d0095c64:	60606060 60606060 4c606060 4c4c4c4c     ```````````LLLLL
d0095c74:	4c4c4c4c 4c4c4c60 4c4c4c4c 6060604c     LLLL`LLLLLLLL```
d0095c84:	60606060 4c4c6060 60604c4c 60606060     ``````LLLL``````
d0095c94:	60606060 60606060 4c606060 4c4c4c4c     ```````````LLLLL
d0095ca4:	4c4c604c 4c4c4c4c 4c4c4c4c 4c4c4c4c     L`LLLLLLLLLLLLLL
d0095cb4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 60604c4c     LLLLLLLLLLLLLL``
d0095cc4:	4c4c6060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ``LLLLLLLLLLLLLL
d0095cd4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 60604c4c     LLLLLLLLLLLLLL``
d0095ce4:	4c606060 4c4c4c4c 6060604c 60606060     ```LLLLLL```````
d0095cf4:	60606060 60606060 60606060 60606060     ````````````````
d0095d04:	00001060 00000000 00000000 00000000     `...............
	...
d0095d28:	10101000 70707070 70707070 10101070     ....ppppppppp...
	...
d0095d70:	60601000 60606060 60606060 60606060     ..``````````````
d0095d80:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0095d90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095da0:	6060604c 4c4c4c4c 60604c4c 60606060     L```LLLLLL``````
d0095db0:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0095dc0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095dd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095de0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095df0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095e00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095e10:	6060604c 60606060 60606060 60606060     L```````````````
d0095e20:	00001060 00000000 00000000 00000000     `...............
	...
d0095e44:	70707010 70707070 70707070 70707070     .ppppppppppppppp
d0095e54:	10101010 10101010 10101010 10101010     ................
d0095e64:	10101010 10101010 10101010 10101010     ................
d0095e74:	10101010 00000000 00000000 00000000     ................
d0095e84:	00000000 10101000 60606010 60606060     .........```````
d0095e94:	60606060 4c606060 4c4c4c4c 4c10104c     ```````LLLLLL..L
d0095ea4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095eb4:	4c4c4c4c 4c10104c 4c604c4c 4c4c4c4c     LLLLL..LLL`LLLLL
d0095ec4:	60604c4c 604c4c60 4c4c4c60 4c10104c     LL```LL``LLLL..L
d0095ed4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095ee4:	4c4c4c4c 4c104c4c 4c4c4c4c 4c4c4c4c     LLLLLL.LLLLLLLLL
d0095ef4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095f04:	4c4c4c4c 4c104c4c 4c4c4c4c 4c4c4c4c     LLLLLL.LLLLLLLLL
d0095f14:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095f24:	4c4c4c4c 4c10104c 4c4c4c4c 6060604c     LLLLL..LLLLLL```
d0095f34:	60604c60 4c4c6060 0000104c 00000000     `L````LLL.......
	...
d0095f58:	10101010 10101010 70707070 70707070     ........pppppppp
d0095f68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0095f78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0095f88:	70707070 70707070 70707070 10101010     pppppppppppp....
d0095f98:	10101010 10101010 10101010 70707010     .............ppp
d0095fa8:	60606010 60606060 60606060 104c4c60     .````````````LL.
d0095fb8:	4c4c4c4c 10104c4c 4c4c4c10 4c4c4c4c     LLLLLL...LLLLLLL
d0095fc8:	1010104c 10101010 104c4c4c 4c4c1010     L.......LLL...LL
d0095fd8:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0095fe8:	4c4c4c4c 10104c4c 4c4c4c10 4c4c4c4c     LLLLLL...LLLLLLL
d0095ff8:	4c4c4c4c 4c4c4c4c 104c4c4c 10201010     LLLLLLLLLLL... .
d0096008:	4c4c4c4c 4c4c4c4c 4c4c1010 4c4c4c4c     LLLLLLLL..LLLLLL
d0096018:	4c4c4c4c 4c4c4c4c 104c4c4c 10201010     LLLLLLLLLLL... .
d0096028:	4c4c4c4c 4c4c4c4c 4c4c1010 4c4c4c4c     LLLLLLLL..LLLLLL
d0096038:	4c4c4c4c 4c4c4c4c 104c4c4c 4c4c1010     LLLLLLLLLLL...LL
d0096048:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0096058:	10107010 10101010 10101010 10101010     .p..............
d0096068:	10101010 10101010 10101010 70707070     ............pppp
d0096078:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096088:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096098:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00960a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00960b8:	70707070 70707070 70707070 10101070     ppppppppppppp...
d00960c8:	4c4c4c4c 4c4c4c4c 104c4c4c 4c4c4c4c     LLLLLLLLLLL.LLLL
d00960d8:	104c4c4c 10101010 10101010 70707010     LLL..........ppp
d00960e8:	70707070 10101010 4c4c4c10 104c4c4c     pppp.....LLLLLL.
d00960f8:	4c4c4c10 4c4c4c4c 10104c4c 4c4c4c4c     .LLLLLLLLL..LLLL
d0096108:	104c4c4c 10101010 4c4c4c4c 4c4c4c4c     LLL.....LLLLLLLL
d0096118:	4c4c4c4c 10101010 28282810 4c4c1010     LLLL.....(((..LL
d0096128:	104c4c4c 4c101010 4c4c4c4c 4c4c4c4c     LLL....LLLLLLLLL
d0096138:	4c4c4c4c 10101010 28282810 4c4c1010     LLLL.....(((..LL
d0096148:	104c4c4c 4c101010 4c4c4c4c 4c4c4c4c     LLL....LLLLLLLLL
d0096158:	4c4c4c4c 10101010 4c4c4c10 4c4c4c4c     LLLL.....LLLLLLL
d0096168:	10104c4c 4c4c4c4c 104c4c4c 70707070     LL..LLLLLLL.pppp
d0096178:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096188:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096198:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00961a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00961b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00961c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00961d8:	70707070 70707070 70707070 10101010     pppppppppppp....
d00961e8:	10104c4c 10101010 10101010 10101010     LL..............
d00961f8:	70702810 70707070 70707070 70707070     .(pppppppppppppp
d0096208:	10287070 10101010 70101010 10101070     pp(........pp...
d0096218:	10101010 10701010 10101010 10101010     ......p.........
d0096228:	10702810 10101010 10101010 10101010     .(p.............
d0096238:	70282810 70707070 10101070 10101010     .((pppppp.......
d0096248:	10207028 10101010 10101010 10101010     (p .............
d0096258:	70282810 70707070 10101070 10101010     .((pppppp.......
d0096268:	10207028 10101010 10101010 10101010     (p .............
d0096278:	10287010 10101010 10101010 10101010     .p(.............
d0096288:	10101010 70101010 70707070 70707070     .......ppppppppp
d0096298:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00962a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00962b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00962c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00962d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00962e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00962f8:	70707070 70707070 70707070 70701010     pppppppppppp..pp
d0096308:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096318:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096328:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096338:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096348:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096358:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096368:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096378:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096388:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096398:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00963a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00963b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00963c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00963d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00963e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00963f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096408:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096418:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096428:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096438:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096448:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096458:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096468:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096478:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096488:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096498:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00964a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00964b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00964c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00964d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00964e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00964f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096508:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096518:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096528:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096538:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096548:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096558:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096568:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096578:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096588:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096598:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00965a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00965b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00965c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00965d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00965e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00965f8:	70702870 70707070 70707070 70707070     p(pppppppppppppp
d0096608:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096618:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096628:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096638:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096648:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096658:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096668:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096678:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096688:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096698:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00966a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00966b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00966c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00966d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00966e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00966f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096708:	70707070 70707070 70707070 70702028     pppppppppppp( pp
d0096718:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096728:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096738:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096748:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096758:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096768:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096778:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096788:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096798:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00967a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00967b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00967c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00967d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00967e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00967f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096808:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096818:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096828:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096838:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096848:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096858:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096868:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096878:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096888:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096898:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00968a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00968b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00968c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00968d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00968e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00968f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096908:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096918:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096928:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096938:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096948:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096958:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096968:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096978:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096988:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096998:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096a98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096aa8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ab8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ac8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ad8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ae8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096af8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096b98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ba8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096bb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096bc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096bd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096be8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096bf8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096c98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ca8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096cb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096cc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096cd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ce8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096cf8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096d98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096da8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096db8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096dc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096dd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096de8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096df8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096e98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ea8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096eb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ec8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ed8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ee8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ef8:	70707070 70707070 70707070 70702870     ppppppppppppp(pp
d0096f08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096fa8:	70707070 70707070 70707070 70702870     ppppppppppppp(pp
d0096fb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096fc8:	70707070 70707070 70707070 70702870     ppppppppppppp(pp
d0096fd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096fe8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ff8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097008:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097018:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097028:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097038:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097048:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097058:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097068:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097078:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097088:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097098:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00970a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00970b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00970c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00970d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00970e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00970f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097108:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097118:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097128:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097138:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097148:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097158:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097168:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097178:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097188:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097198:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00971a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00971b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00971c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00971d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00971e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00971f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097208:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097218:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097228:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097238:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097248:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097258:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097268:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097278:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097288:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097298:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00972a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00972b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00972c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00972d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00972e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00972f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097308:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097318:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097328:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097338:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097348:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097358:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097368:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097378:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097388:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097398:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00973a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00973b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00973c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00973d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00973e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00973f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097408:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097418:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097428:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097438:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097448:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097458:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097468:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097478:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097488:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097498:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00974a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00974b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00974c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00974d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00974e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00974f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097508:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097518:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097528:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097538:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097548:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097558:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097568:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097578:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097588:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097598:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00975a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00975b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00975c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00975d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00975e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00975f8:	70707070 70707070 70707070 10101010     pppppppppppp....
d0097608:	10101010 70707010 70707070 70707070     .....ppppppppppp
d0097618:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097628:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097638:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097648:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097658:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097668:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097678:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097688:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097698:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00976a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00976b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00976c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00976d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00976e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00976f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097708:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097718:	70707070 70707070 20101070 10202020     ppppppppp..    .
d0097728:	70707070 10107070 10101010 10101010     pppppp..........
d0097738:	10101010 10101010 10101010 10101010     ................
d0097748:	10101010 10101010 10101010 10101010     ................
d0097758:	10101010 10101010 10101010 10101010     ................
d0097768:	10101010 10101010 10101010 70707070     ............pppp
d0097778:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097788:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097798:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097808:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097818:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097828:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097838:	70707070 20107070 10202020 10101010     pppppp.    .....
d0097848:	28281010 28282828 28282828 28282828     ..((((((((((((((
d0097858:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097868:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097878:	28282828 28282828 28282828 20202020     ((((((((((((    
d0097888:	10202020 70701010 70707070 70707070        ...pppppppppp
d0097898:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00978a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00978b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00978c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00978d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00978e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00978f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097908:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097918:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097928:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097938:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097948:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097958:	10707070 10202020 28282828 28282828     ppp.   .((((((((
d0097968:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097978:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097988:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097998:	28282828 28282828 28202828 20202020     (((((((((( (    
d00979a8:	10101020 70707010 70707070 70707070      ....ppppppppppp
d00979b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979d8:	70102070 70707070 70707070 70707070     p .ppppppppppppp
d00979e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a68:	70707070 70707070 70707070 10101070     ppppppppppppp...
d0097a78:	10202020 28282820 28282828 28282828        . (((((((((((
d0097a88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097a98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097aa8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097ab8:	28282828 20282828 20282028 10102020     ((((((( ( (   ..
d0097ac8:	10101010 70707070 70707070 70707070     ....pppppppppppp
d0097ad8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ae8:	70707070 70707070 70707070 70201010     pppppppppppp.. p
d0097af8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b88:	70707070 10107070 10202010 10202020     pppppp...  .   .
d0097b98:	28282820 28282828 28282828 28282828      (((((((((((((((
d0097ba8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097bb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097bc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097bd8:	28282828 28202028 10202820 20202010     (((((  ( ( ..   
d0097be8:	10101010 70707070 70707070 70707070     ....pppppppppppp
d0097bf8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c08:	70707070 20707070 70702010 70707070     ppppppp . pppppp
d0097c18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c28:	70707070 70707070 70707010 70707070     pppppppp.ppppppp
d0097c38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c78:	70707070 70707070 70707070 10707070     ppppppppppppppp.
d0097c88:	10101010 10101010 10101010 10101010     ................
d0097c98:	10101010 10101010 10101010 10101010     ................
d0097ca8:	28201010 20102828 20202020 28282010     .. (((.     . ((
d0097cb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097cc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097cd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097ce8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097cf8:	20282828 20282028 28202010 20202020     ((( ( ( .  (    
d0097d08:	10101010 10101010 10101010 10101010     ................
d0097d18:	10101010 10101010 10101010 10101010     ................
d0097d28:	10201010 10102010 10101010 10101010     .. .. ..........
d0097d38:	10101010 10101010 10101010 10101010     ................
d0097d48:	10101010 10101028 70707070 70707070     ....(...pppppppp
d0097d58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d98:	70707070 10107070 28101010 28282828     pppppp.....(((((
d0097da8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097db8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097dc8:	70281028 70707070 28282010 28282828     (.(ppppp. ((((((
d0097dd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097de8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097df8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097e08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097e18:	28202828 28201020 20202028 20202020     (( ( . ((       
d0097e28:	28202020 28282828 28282828 28282828        (((((((((((((
d0097e38:	28282828 28282828 28282828 10202828     (((((((((((((( .
d0097e48:	28282810 28282828 28282828 28282828     .(((((((((((((((
d0097e58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097e68:	20202028 10101010 70707010 70707070     (   .....ppppppp
d0097e78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ea8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097eb8:	20101010 28282820 28282828 28282828     ...  (((((((((((
d0097ec8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097ed8:	28282828 28282828 28282828 70701028     (((((((((((((.pp
d0097ee8:	28707070 28202020 28282828 28282828     ppp(   (((((((((
d0097ef8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097f08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097f18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097f28:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d0097f38:	28102028 20202828 20282028 28282028     ( .(((  ( ( ( ((
d0097f48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097f58:	28282828 28282828 20282828 28281010     ((((((((((( ..((
d0097f68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097f78:	28282828 28282828 28282828 20202828     ((((((((((((((  
d0097f88:	20202020 70101020 70707070 70707070          ..ppppppppp
d0097f98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097fa8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097fb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097fc8:	70707070 70707070 10107070 20201020     pppppppppp.. .  
d0097fd8:	28202820 28282828 28282828 28282828      ( (((((((((((((
d0097fe8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0097ff8:	28282828 28282828 70701028 70707070     (((((((((.pppppp
d0098008:	20707070 28282828 28282828 28282828     ppp ((((((((((((
d0098018:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098028:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098038:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098048:	28282828 28282828 28282828 10202028     (((((((((((((  .
d0098058:	28282828 28282820 28282820 28282828     (((( ((( (((((((
d0098068:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098078:	28282828 28202828 28201020 28282828     (((((( ( . (((((
d0098088:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098098:	28282828 28282828 28282828 20202020     ((((((((((((    
d00980a8:	70102020 70707070 70707070 70707070       .ppppppppppppp
d00980b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980e8:	70707070 10107070 20202010 28202020     pppppp...      (
d00980f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098108:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098118:	28282828 10101028 70707070 20207070     (((((...pppppp  
d0098128:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098138:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098148:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098158:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098168:	28282828 28282828 20282828 28282820     (((((((((((  (((
d0098178:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098188:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098198:	28282828 28281020 28282828 28282828     (((( .((((((((((
d00981a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00981b8:	28282828 28282828 20282828 70102020     (((((((((((   .p
d00981c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00981d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00981e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00981f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098208:	70707070 20202010 20202020 28282820     pppp.        (((
d0098218:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098228:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098238:	20202028 20202020 28102828 28282828     (       ((.(((((
d0098248:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098258:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098268:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098278:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098288:	28282828 28282828 28282820 28282828     (((((((( (((((((
d0098298:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00982a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00982b8:	28202028 28282828 28282828 28282828     (  (((((((((((((
d00982c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00982d8:	28282828 20282828 70701020 70707070     (((((((  .pppppp
d00982e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00982f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098308:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098318:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098328:	20107070 20202020 20282020 28282828     pp.       ( ((((
d0098338:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098348:	28282828 28282828 28282828 20282028     ((((((((((((( ( 
d0098358:	28282820 28201028 28282828 28282828      ((((. (((((((((
d0098368:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098378:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098388:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098398:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00983a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00983b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00983c8:	28282828 28282828 28282828 28282028     ((((((((((((( ((
d00983d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00983e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00983f8:	20282828 70707010 70707070 70707070     ((( .ppppppppppp
d0098408:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098418:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098428:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098438:	70707070 70707070 70707070 10707070     ppppppppppppppp.
d0098448:	20202010 20202020 28202820 28282828     .        ( (((((
d0098458:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098468:	28282828 28282828 28202828 28282828     (((((((((( (((((
d0098478:	28282010 28282828 28282828 28282828     . ((((((((((((((
d0098488:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098498:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00984a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00984b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00984c8:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d00984d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00984e8:	28282828 28282828 28202828 28282828     (((((((((( (((((
d00984f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098508:	28282828 28282828 28282828 10202828     (((((((((((((( .
d0098518:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098528:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098538:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098548:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098558:	70707070 70707070 70707070 20101070     ppppppppppppp.. 
d0098568:	20202020 20282020 28282028 28282828           ( ( ((((((
d0098578:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098588:	28282828 28202828 20282828 28202820     (((((( ((((  ( (
d0098598:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098608:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d0098618:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098628:	28282828 28282828 10202028 70707070     (((((((((  .pppp
d0098638:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098648:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098658:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098668:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098678:	70707070 70707070 10707070 20202010     ppppppppppp..   
d0098688:	20202020 28282020 28282828 28282828           ((((((((((
d0098698:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00986a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00986b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00986c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00986d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00986e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00986f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098708:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098718:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098728:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098738:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098748:	28282828 70102020 70707070 70707070     ((((  .ppppppppp
d0098758:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098768:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098778:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098788:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098798:	70707070 70707070 10101070 20202020     ppppppppp...    
d00987a8:	28282820 20202028 28282020 20202828      ((((     ((((  
d00987b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00987c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00987d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00987e8:	28282828 28282828 28282828 28202020     ((((((((((((   (
d00987f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098808:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098818:	28282828 28282828 28202828 28282828     (((((((((( (((((
d0098828:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098838:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098848:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098858:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d0098868:	70701020 70707070 70707070 70707070      .pppppppppppppp
d0098878:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098888:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098898:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00988a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00988b8:	70707070 70707070 28201010 28282828     pppppppp.. (((((
d00988c8:	28282028 28202828 28202828 28282820     ( (((( ((( ( (((
d00988d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00988e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00988f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098908:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d0098918:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098928:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098938:	28282828 28202828 28282828 28282828     (((((( (((((((((
d0098948:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098958:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098968:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098978:	28282828 28282828 20282828 70707010     ((((((((((( .ppp
d0098988:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098998:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00989a8:	70707070 70707070 70707070 70207070     pppppppppppppp p
d00989b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00989c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00989d8:	70707070 10107070 28282828 28202828     pppppp..(((((( (
d00989e8:	28202828 20282828 28282828 28282828     (( (((( ((((((((
d00989f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a28:	28202828 28282828 28282820 28282828     (( ((((( (((((((
d0098a38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a58:	10282828 28282828 28282828 28282828     (((.((((((((((((
d0098a68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a98:	28282828 20202828 70707070 70707070     ((((((  pppppppp
d0098aa8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098ab8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098ac8:	70707070 70707070 20107070 70707070     pppppppppp. pppp
d0098ad8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098ae8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098af8:	70707070 28282810 28202828 20282828     pppp.((((( (((( 
d0098b08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b38:	28282828 28282828 28282828 28282028     ((((((((((((( ((
d0098b48:	28282828 28282820 28282828 28282828     (((( (((((((((((
d0098b58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b68:	28282828 28282828 28282828 10282828     (((((((((((((((.
d0098b78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ba8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098bb8:	70102828 70707070 70707070 70707070     ((.ppppppppppppp
d0098bc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098bd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098be8:	70707070 10207070 70701020 70707070     pppppp . .pppppp
d0098bf8:	70707070 70707070 70707070 10101070     ppppppppppppp...
d0098c08:	10101010 10101010 10101010 10101010     ................
d0098c18:	28282810 28282028 20282828 28282828     .(((( ((((( ((((
d0098c28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098c38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098c48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098c58:	28282828 28282828 28282820 28282828     (((((((( (((((((
d0098c68:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d0098c78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098c88:	28282828 28282828 20282828 28282810     ((((((((((( .(((
d0098c98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ca8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098cb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098cc8:	28282828 28282828 28282828 70701028     (((((((((((((.pp
d0098cd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098ce8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098cf8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098d08:	20707070 70102010 70707070 70707070     ppp . .ppppppppp
d0098d18:	70707070 70707070 10707070 20101010     ppppppppppp.... 
d0098d28:	20202020 20202020 10202020 28282828                .((((
d0098d38:	28282820 28202828 28282828 28282828      ((((( (((((((((
d0098d48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098d58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098d68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098d78:	20282828 28282828 28282828 28282028     ((( ((((((((( ((
d0098d88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098d98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098da8:	28282828 28282828 28281010 28282828     ((((((((..((((((
d0098db8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098dc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098dd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098de8:	28282828 28282828 10101028 10101010     (((((((((.......
d0098df8:	10101010 10101010 10101010 10101010     ................
d0098e08:	10101010 10101010 10101010 10101010     ................
d0098e18:	10101010 10101010 10101010 10101010     ................
d0098e28:	10101010 10101010 10101010 10101010     ................
d0098e38:	10101010 10101010 20202020 20282020     ........      ( 
d0098e48:	28202028 28102020 28282828 28282820     (  (  .((((( (((
d0098e58:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d0098e68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098e78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098e88:	28282828 28282828 28282828 28202828     (((((((((((((( (
d0098e98:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d0098ea8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098eb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ec8:	28282828 28201028 28282828 28282828     (((((. (((((((((
d0098ed8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ee8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ef8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f08:	28282828 20102828 28282820 28282828     ((((((.  (((((((
d0098f18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f38:	28282828 28282828 20282828 20101010     ((((((((((( ... 
d0098f48:	28282828 28282828 28282828 28202028     (((((((((((((  (
d0098f58:	20102020 20202020 28202828 28282820       .     (( ( (((
d0098f68:	28201020 20282828 28282828 28282820      . (((( (((( (((
d0098f78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098fa8:	28282828 28282828 28202828 28282828     (((((((((( (((((
d0098fb8:	28282828 28282820 28282828 20282828     (((( (((((((((( 
d0098fc8:	28282020 28282828 28282828 28282828       ((((((((((((((
d0098fd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098fe8:	28102828 28282828 28282828 28282828     ((.(((((((((((((
d0098ff8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099008:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099018:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099028:	28102828 28282828 28282828 28282828     ((.(((((((((((((
d0099038:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099048:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099058:	28282828 20282828 28201010 28282828     ((((((( .. (((((
d0099068:	28282828 28282828 20282828 20102028     ((((((((((( ( . 
d0099078:	28282820 28282828 20282828 28282010      (((((((((( . ((
d0099088:	28282828 20282020 28282828 28282828     ((((  ( ((((((((
d0099098:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00990a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00990b8:	28282828 28282828 28282828 28202028     (((((((((((((  (
d00990c8:	28282828 20282828 28282828 20282828     ((((((( ((((((( 
d00990d8:	28282828 28282828 20282828 20202828     ((((((((((( ((  
d00990e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00990f8:	28282828 28282828 28282828 28202828     (((((((((((((( (
d0099108:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099118:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099128:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099138:	28282828 28282828 28282828 28102828     ((((((((((((((.(
d0099148:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099158:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099168:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099178:	10282828 28201010 28282828 28282828     (((... (((((((((
d0099188:	28282828 28282828 28201020 28282828     (((((((( . (((((
d0099198:	28282828 10202828 28282820 28282828     (((((( . (((((((
d00991a8:	28202828 28282828 20202828 28282828     (( (((((((  ((((
d00991b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00991c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00991d8:	28282828 28282828 28202820 28282828     (((((((( ( (((((
d00991e8:	28282828 28282820 20282828 28282828     (((( (((((( ((((
d00991f8:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d0099208:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099218:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099228:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099238:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099248:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099258:	28282828 28282828 20282828 28282828     ((((((((((( ((((
d0099268:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099278:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099288:	28282828 28282828 28282828 10282828     (((((((((((((((.
d0099298:	28281010 28282828 28282828 28282828     ..((((((((((((((
d00992a8:	28282828 28282010 28282828 28282828     ((((. ((((((((((
d00992b8:	10202828 28282828 28282828 28282828     (( .((((((((((((
d00992c8:	28282828 20282028 28282828 28282828     ((((( ( ((((((((
d00992d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00992e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00992f8:	20282828 20282828 28282828 28282828     ((( ((( ((((((((
d0099308:	28202028 28202028 28282828 28282828     (  ((  (((((((((
d0099318:	20282828 28282828 28282820 28282828     ((( (((( (((((((
d0099328:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099338:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d0099348:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099358:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099368:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099378:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d0099388:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099398:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00993a8:	28282828 28282828 10202828 28282010     (((((((((( .. ((
d00993b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00993c8:	28282810 28282828 28282828 28102828     .(((((((((((((.(
d00993d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00993e8:	20282820 28282828 28282828 28282828      (( ((((((((((((
d00993f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099408:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d0099418:	20282828 28282828 28282828 20282828     ((( ((((((((((( 
d0099428:	28282820 28282828 28282828 28282828      (((((((((((((((
d0099438:	28282020 28282820 28282828 28282828       (( (((((((((((
d0099448:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099458:	28282828 28282820 28282828 28282828     (((( (((((((((((
d0099468:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099478:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099488:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099498:	28282828 28282810 28282828 28282828     ((((.(((((((((((
d00994a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00994b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00994c8:	28282828 10282828 28282828 28282828     (((((((.((((((((
d00994d8:	28282828 28282828 28282828 28282820     (((((((((((( (((
d00994e8:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d00994f8:	28282828 28282828 28282828 28282820     (((((((((((( (((
d0099508:	28282820 28282828 28282828 28282828      (((((((((((((((
d0099518:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099528:	28282828 28282828 20282828 28282828     ((((((((((( ((((
d0099538:	28282820 28282828 28282828 28282828      (((((((((((((((
d0099548:	28282828 28282828 28282828 20202828     ((((((((((((((  
d0099558:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099568:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099578:	28282820 28282828 28282828 28282828      (((((((((((((((
d0099588:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099598:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00995a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00995b8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d00995c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00995d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00995e8:	28202828 28282828 28282828 28282828     (( (((((((((((((
d00995f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099608:	28282828 28282028 28282828 28282828     ((((( ((((((((((
d0099618:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d0099628:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099638:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099648:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d0099658:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099668:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099678:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099688:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099698:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099708:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099718:	20282828 28282828 28282828 28282828     ((( ((((((((((((
d0099728:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099738:	28282828 28202020 28282828 28282828     ((((   (((((((((
d0099748:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099758:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099768:	28282828 28202020 28282828 28282828     ((((   (((((((((
d0099778:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099788:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099798:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00997a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00997b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00997c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00997d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00997e8:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d00997f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099808:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099818:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099828:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099838:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099848:	28282828 28282828 20202828 28282828     ((((((((((  ((((
d0099858:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099868:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099878:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099888:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099898:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099908:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099918:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099928:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099938:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099948:	28282828 28282828 20282828 28282828     ((((((((((( ((((
d0099958:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099968:	28282828 20282028 28282828 28282828     ((((( ( ((((((((
d0099978:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d0099988:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099998:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00999a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00999b8:	28282828 20202028 28282020 20202828     (((((     ((((  
d00999c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00999d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00999e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00999f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a28:	28281028 28282828 28282828 28282828     (.((((((((((((((
d0099a38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a68:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d0099a78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a88:	10282820 28101010 28282828 10102828      ((....(((((((..
d0099a98:	28281010 28282028 28282828 28282828     ..((( ((((((((((
d0099aa8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ab8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ac8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ad8:	28282028 28202828 28202828 28282820     ( (((( ((( ( (((
d0099ae8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099af8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b38:	28282828 28282828 28282828 28282028     ((((((((((((( ((
d0099b48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b88:	28102828 28282828 28282828 28282828     ((.(((((((((((((
d0099b98:	28282828 28282828 10101028 20282820     (((((((((... (( 
d0099ba8:	28104c10 28282828 4c4c1010 28282810     .L.(((((..LL.(((
d0099bb8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d0099bc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099bd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099be8:	28282828 28282828 28282828 28202828     (((((((((((((( (
d0099bf8:	28202828 20282828 28282828 28282828     (( (((( ((((((((
d0099c08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c58:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d0099c68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c98:	28282828 28282828 28282828 28102828     ((((((((((((((.(
d0099ca8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099cb8:	28282828 4c4c1028 28101010 104c4c10     (((((.LL...(.LL.
d0099cc8:	10102828 104c4c4c 28282828 28282810     ((..LLL.((((.(((
d0099cd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ce8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099cf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d08:	28282828 28282828 28202828 20282828     (((((((((( (((( 
d0099d18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d78:	28282828 28281028 28282828 28282828     (((((.((((((((((
d0099d88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099da8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099db8:	28282828 28282828 28201028 28282828     (((((((((. (((((
d0099dc8:	28282828 28282828 10282828 28101010     (((((((((((....(
d0099dd8:	4c102828 104c5858 10581010 584c1010     ((.LXXL...X...LX
d0099de8:	28104c4c 10282828 28282820 28282828     LL.((((. (((((((
d0099df8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e28:	28282828 28282028 20282828 28282828     ((((( ((((( ((((
d0099e38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e98:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d0099ea8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099eb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ec8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ed8:	28282828 28281010 28282828 28282828     ((((..((((((((((
d0099ee8:	28282828 10102828 104c4c4c 10101010     ((((((..LLL.....
d0099ef8:	4c58584c 4c58104c 58584c4c 2828104c     LXXLL.XLLLXXL.((
d0099f08:	10102828 28282828 28282828 28282828     ((..((((((((((((
d0099f18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f48:	28282820 28202828 28282828 28282828      ((((( (((((((((
d0099f58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fa8:	28282828 28282828 28282828 28202028     (((((((((((((  (
d0099fb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fe8:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d0099ff8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d009a008:	28282828 584c1010 10104c58 58584c10     ((((..LXXL...LXX
d009a018:	58584c58 4c585858 2828104c 28102028     XLXXXXXLL.((( .(
d009a028:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a038:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a048:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a058:	28282828 28282828 28282828 28282820     (((((((((((( (((
d009a068:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d009a078:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a088:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a098:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a108:	28282828 28282828 10282828 28282828     (((((((((((.((((
d009a118:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a128:	4c102828 58585858 58584c58 58585858     ((.LXXXXXLXXXXXX
d009a138:	4c4c5858 10282810 28281010 28282828     XXLL.((...((((((
d009a148:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a158:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a168:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a178:	28282828 20282828 28282828 28282820     ((((((( (((( (((
d009a188:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a198:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a208:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a218:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a228:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d009a238:	28282828 28282828 28282828 10102828     ((((((((((((((..
d009a248:	584c4c10 58585858 58585858 4c4c5858     .LLXXXXXXXXXXXLL
d009a258:	4c101010 28104c4c 28282828 28282828     ...LLL.(((((((((
d009a268:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a278:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a288:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a298:	28282828 20282020 28282828 28282828     ((((  ( ((((((((
d009a2a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a308:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a318:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a328:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a338:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a348:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a358:	28282828 10102828 4c101010 4c4c104c     ((((((.....LL.LL
d009a368:	5858584c 58585858 58585858 4c4c4c4c     LXXXXXXXXXXXLLLL
d009a378:	28281010 10101010 28282828 10282828     ..((....(((((((.
d009a388:	28101010 28282828 28282828 28282828     ...(((((((((((((
d009a398:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a3a8:	10282828 28101010 28282828 10102828     (((....(((((((..
d009a3b8:	28201010 28282828 20202828 28282828     .. (((((((  ((((
d009a3c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a3d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a3e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a3f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a408:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a418:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a428:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a438:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a448:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a458:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a468:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a478:	4c4c1028 584c104c 584c5858 58585858     (.LLL.LXXXLXXXXX
d009a488:	58585858 4c4c5858 10104c4c 28282820     XXXXXXLLLL.. (((
d009a498:	4c4c1028 28281010 10282828 2828104c     (.LL..(((((.L.((
d009a4a8:	10102828 28282810 28282828 28282828     ((...(((((((((((
d009a4b8:	28282828 28282828 10101028 28282828     (((((((((...((((
d009a4c8:	28104c10 28282828 4c4c1010 28282810     .L.(((((..LL.(((
d009a4d8:	28282828 20282028 28282828 28282828     ((((( ( ((((((((
d009a4e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a4f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a508:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a518:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a528:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a538:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a548:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a558:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a568:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a578:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a588:	28282828 28282828 28282828 10104c10     ((((((((((((.L..
d009a598:	58584c10 58585858 58585858 58585858     .LXXXXXXXXXXXXXX
d009a5a8:	4c4c584c 20281010 28282828 4c102828     LXLL..( ((((((.L
d009a5b8:	10104c4c 4c102828 1028104c 4c4c1010     LL..((.LL.(...LL
d009a5c8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d009a5d8:	28282828 4c4c1028 28101010 104c4c10     (((((.LL...(.LL.
d009a5e8:	10102828 104c4c4c 28282828 28282828     ((..LLL.((((((((
d009a5f8:	20282820 28282828 28282828 28282828      (( ((((((((((((
d009a608:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a618:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a628:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a638:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a648:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a658:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a668:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a678:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a688:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a698:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a6a8:	28282828 28282828 10281010 4c58584c     ((((((((..(.LXXL
d009a6b8:	4c4c4c4c 5858584c 58585858 104c4c4c     LLLLLXXXXXXXLLL.
d009a6c8:	20282810 28282828 10282828 4c584c4c     .(( (((((((.LLXL
d009a6d8:	58101010 4c101010 104c5858 10282828     ...X...LXXL.(((.
d009a6e8:	28101010 28282828 10282828 28101010     ...((((((((....(
d009a6f8:	4c102828 104c5858 10581010 584c1010     ((.LXXL...X...LX
d009a708:	28104c4c 28282828 28282828 28282820     LL.((((((((( (((
d009a718:	28282820 28282828 28282828 28282828      (((((((((((((((
d009a728:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a738:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a748:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a758:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a768:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a778:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a788:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a798:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a7a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a7b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a7c8:	28282828 10282828 4c4c5858 1010104c     (((((((.XXLLL...
d009a7d8:	4c4c5858 4c585858 4c4c4c4c 1010104c     XXLLXXXLLLLLL...
d009a7e8:	28282828 28282828 58584c10 584c4c4c     ((((((((.LXXLLLX
d009a7f8:	584c4c10 10104c58 4c101010 10104c4c     .LLXXL.....LLL..
d009a808:	28282828 10102828 104c4c4c 10101010     ((((((..LLL.....
d009a818:	4c58584c 4c58104c 58584c4c 2828104c     LXXLL.XLLLXXL.((
d009a828:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d009a838:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a848:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a858:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a868:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a878:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a888:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a898:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8e8:	4c102828 104c4c58 4c102810 4c4c4c58     ((.LXLL..(.LXLLL
d009a8f8:	4c4c5858 4c4c4c4c 4c4c4c4c 28282810     XXLLLLLLLLLL.(((
d009a908:	28282828 584c4c10 58585858 5858584c     ((((.LLXXXXXLXXX
d009a918:	1010104c 4c58584c 28281010 28282828     L...LXXL..((((((
d009a928:	28282828 584c1010 10104c58 58584c10     ((((..LXXL...LXX
d009a938:	58584c58 4c585858 2828104c 28282828     XLXXXXXLL.((((((
d009a948:	28282828 28202020 28282828 28282828     ((((   (((((((((
d009a958:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a968:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a978:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a988:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a998:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9f8:	28282828 28282828 28282828 4c102828     ((((((((((((((.L
d009aa08:	2810104c 4c4c1028 1010104c 4c4c584c     L..((.LLL...LXLL
d009aa18:	4c4c4c4c 10101010 28282810 28101010     LLLL.....(((...(
d009aa28:	4c4c1028 58585858 58585858 5858584c     (.LLXXXXXXXXLXXX
d009aa38:	104c5858 28282828 28282828 28282828     XXL.((((((((((((
d009aa48:	4c102828 58585858 58584c58 58585858     ((.LXXXXXLXXXXXX
d009aa58:	4c4c5858 10282810 28281010 28282828     XXLL.((...((((((
d009aa68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aaa8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aab8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aac8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aad8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aae8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aaf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab18:	28282828 28282828 4c102828 28282810     ((((((((((.L.(((
d009ab28:	4c4c4c10 10101010 4c10584c 104c4c4c     .LLL....LX.LLLL.
d009ab38:	28281010 10282828 104c4c4c 4c4c1010     ..(((((.LLL...LL
d009ab48:	58585858 58585858 4c585858 1010104c     XXXXXXXXXXXLL...
d009ab58:	28282828 28282828 28282828 10102828     ((((((((((((((..
d009ab68:	584c4c10 58585858 58585858 4c4c5858     .LLXXXXXXXXXXXLL
d009ab78:	4c101010 28104c4c 28282828 28282828     ...LLL.(((((((((
d009ab88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aba8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009abb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009abc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009abd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009abe8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009abf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac38:	28282828 20282828 28282028 4c4c4c10     ((((((( ( ((.LLL
d009ac48:	10282810 104c4c4c 114c104c 28101111     .((.LLL.L.L....(
d009ac58:	28282828 4c4c1010 58584c4c 58585858     ((((..LLLLXXXXXX
d009ac68:	58585858 4c4c4c58 104c4c10 10101010     XXXXXLLL.LL.....
d009ac78:	28282828 10102828 4c101010 4c4c104c     ((((((.....LL.LL
d009ac88:	5858584c 58585858 58585858 4c4c4c4c     LXXXXXXXXXXXLLLL
d009ac98:	28281010 28282828 28282828 28282828     ..((((((((((((((
d009aca8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009acb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009acc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009acd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ace8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009acf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad58:	20282828 28202828 4c4c4c10 10282810     ((( (( (.LLL.((.
d009ad68:	104c4c10 1010104c 10112111 28282828     .LL.L....!..((((
d009ad78:	10101028 4c4c4c4c 58585858 58585858     (...LLLLXXXXXXXX
d009ad88:	4c585858 4c585858 4c4c4c10 28282810     XXXLXXXL.LLL.(((
d009ad98:	4c4c1028 584c104c 584c5858 58585858     (.LLL.LXXXLXXXXX
d009ada8:	58585858 4c4c5858 10104c4c 28282828     XXXXXXLLLL..((((
d009adb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009adc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009add8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ade8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009adf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae68:	28282828 28282828 28282828 28202828     (((((((((((((( (
d009ae78:	28202828 4c4c1010 10282810 10104c10     (( (..LL.((..L..
d009ae88:	2828104c 11211110 10282810 21211010     L.((..!..((...!!
d009ae98:	4c4c1010 58584c58 58585858 58585858     ..LLXLXXXXXXXXXX
d009aea8:	58585858 1010104c 2828104c 10104c10     XXXXL...L.((.L..
d009aeb8:	58584c10 58585858 58585858 58585858     .LXXXXXXXXXXXXXX
d009aec8:	4c4c584c 28281010 28282828 28282828     LXLL..((((((((((
d009aed8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aee8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aef8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af88:	28282828 28282828 28202828 28202828     (((((((((( ((( (
d009af98:	4c101028 28282810 28104c10 28104c10     (..L.(((.L.(.L.(
d009afa8:	21111028 10101011 21212929 4c101021     (..!....))!!!..L
d009afb8:	58584c4c 58585858 4c4c4c58 584c4c4c     LLXXXXXXXLLLLLLX
d009afc8:	28104c58 28281010 10281010 4c58584c     XL.(..((..(.LXXL
d009afd8:	4c4c4c4c 5858584c 58585858 104c4c4c     LLLLLXXXXXXXLLL.
d009afe8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d009aff8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b008:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b018:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b028:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b038:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b048:	20282828 28282828 28282828 28282828     ((( ((((((((((((
d009b058:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b068:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b078:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b088:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b098:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b0a8:	28282828 28202828 28202828 10102828     (((((( ((( (((..
d009b0b8:	28282810 28281010 28104c10 21111028     .(((..((.L.((..!
d009b0c8:	29211021 10102129 4c4c4c10 584c4c4c     !.!))!...LLLLLLX
d009b0d8:	4c4c5858 10105858 4c4c4c10 28105858     XXLLXX...LLLXX.(
d009b0e8:	28282828 10282828 4c4c5858 1010104c     (((((((.XXLLL...
d009b0f8:	4c4c5858 4c585858 4c4c4c4c 1010104c     XXLLXXXLLLLLL...
d009b108:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b118:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b128:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b138:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b148:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b158:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b168:	28282820 28282828 28282828 28282828      (((((((((((((((
d009b178:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b188:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b198:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1c8:	28282028 28202828 28282828 28282810     ( (((( (((((.(((
d009b1d8:	28281010 28101028 21102828 29211029     ..(((..(((.!).!)
d009b1e8:	4c4c1021 4c4c4c4c 4c4c4c4c 4c4c5858     !.LLLLLLLLLLXXLL
d009b1f8:	104c584c 4c101028 104c584c 28282828     LXL.(..LLXL.((((
d009b208:	4c102828 104c4c58 4c102810 4c4c4c58     ((.LXLL..(.LXLLL
d009b218:	4c4c5858 4c4c4c4c 4c4c4c4c 28282810     XXLLLLLLLLLL.(((
d009b228:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b238:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b248:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b258:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b268:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b278:	28282828 28282828 28282828 28282820     (((((((((((( (((
d009b288:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b298:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d009b2a8:	28282020 28282828 28282828 28282828       ((((((((((((((
d009b2b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b2c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b2d8:	28282828 28282828 28282828 28282028     ((((((((((((( ((
d009b2e8:	28282028 28282828 28282828 28282810     ( ((((((((((.(((
d009b2f8:	28102828 11102828 21102129 10101010     ((.(((..)!.!....
d009b308:	4c4c1010 4c4c4c4c 10104c58 4c584c10     ..LLLLLLXL...LXL
d009b318:	10282810 104c4c10 28282828 4c102828     .((..LL.((((((.L
d009b328:	2810104c 4c4c1028 1010104c 4c4c584c     L..((.LLL...LXLL
d009b338:	4c4c4c4c 10101010 28282810 28282828     LLLL.....(((((((
d009b348:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b358:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b368:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b378:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b388:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b398:	28282828 28282828 28282820 28282828     (((((((( (((((((
d009b3a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3b8:	28282828 28282828 20282828 20202828     ((((((((((( ((  
d009b3c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3f8:	28282828 28282828 28282028 28282820     ((((((((( (( (((
d009b408:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b418:	10102828 10212929 28281010 4c101010     ((..))!...((...L
d009b428:	104c4c4c 10104c58 58581010 2828104c     LLL.XL....XXL.((
d009b438:	104c1028 28282828 4c102828 28282810     (.L.((((((.L.(((
d009b448:	4c4c4c10 10101010 4c10584c 104c4c4c     .LLL....LX.LLLL.
d009b458:	28281010 28282828 28282828 28282828     ..((((((((((((((
d009b468:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b478:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b488:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b498:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b4a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b4b8:	28282828 28282828 28282828 00000000     ((((((((((((....
	...

d009b4e0 <treewalkwidth>:
d009b4e0:	44443e40                                @>DD

d009b4e4 <_global_impure_ptr>:
d009b4e4:	d009b5f4                                ....

d009b4e8 <__sf_fake_stderr>:
	...

d009b508 <__sf_fake_stdin>:
	...

d009b528 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d009b548 <_init>:
d009b548:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d009b54a:	bf00      	nop

Disassembly of section .fini:

d009b54c <_fini>:
d009b54c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d009b54e:	bf00      	nop
