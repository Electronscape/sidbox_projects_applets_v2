
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
d008001e:	f003 f9c3 	bl	d00833a8 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f003 f9be 	bl	d00833a8 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b96a 	b.w	d008030c <main>
d0080038:	d0092384 	.word	0xd0092384

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f003 f87b 	bl	d0083148 <malloc>
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
d0080230:	d0094818 	.word	0xd0094818
d0080234:	d0600000 	.word	0xd0600000
d0080238:	d00927ac 	.word	0xd00927ac

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
d0080284:	f002 ff5a 	bl	d008313c <__errno>
d0080288:	2209      	movs	r2, #9
d008028a:	4603      	mov	r3, r0
d008028c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0080290:	601a      	str	r2, [r3, #0]
d0080292:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080294:	d0092404 	.word	0xd0092404
d0080298:	2001f000 	.word	0x2001f000

d008029c <_read>:
d008029c:	b508      	push	{r3, lr}
d008029e:	f002 ff4d 	bl	d008313c <__errno>
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
d00802ea:	f002 ff27 	bl	d008313c <__errno>
d00802ee:	220c      	movs	r2, #12
d00802f0:	4603      	mov	r3, r0
d00802f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00802f6:	601a      	str	r2, [r3, #0]
d00802f8:	bd10      	pop	{r4, pc}
d00802fa:	bf00      	nop
d00802fc:	d0092400 	.word	0xd0092400
d0080300:	d0094818 	.word	0xd0094818
d0080304:	d0600000 	.word	0xd0600000

d0080308 <_isatty>:
d0080308:	2001      	movs	r0, #1
d008030a:	4770      	bx	lr

d008030c <main>:
d008030c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080310:	4c96      	ldr	r4, [pc, #600]	; (d008056c <main+0x260>)
d0080312:	b087      	sub	sp, #28
d0080314:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d0080318:	2702      	movs	r7, #2
d008031a:	7823      	ldrb	r3, [r4, #0]
d008031c:	2501      	movs	r5, #1
d008031e:	7862      	ldrb	r2, [r4, #1]
d0080320:	f04f 0810 	mov.w	r8, #16
d0080324:	78a1      	ldrb	r1, [r4, #2]
d0080326:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008032a:	78e2      	ldrb	r2, [r4, #3]
d008032c:	f8df a250 	ldr.w	sl, [pc, #592]	; d0080580 <main+0x274>
d0080330:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080334:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080338:	681b      	ldr	r3, [r3, #0]
d008033a:	4798      	blx	r3
d008033c:	f7ff ff72 	bl	d0080224 <initMalloc>
d0080340:	7b23      	ldrb	r3, [r4, #12]
d0080342:	7b62      	ldrb	r2, [r4, #13]
d0080344:	2190      	movs	r1, #144	; 0x90
d0080346:	7ba6      	ldrb	r6, [r4, #14]
d0080348:	20dc      	movs	r0, #220	; 0xdc
d008034a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008034e:	7be2      	ldrb	r2, [r4, #15]
d0080350:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
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
d008037c:	6806      	ldr	r6, [r0, #0]
d008037e:	4610      	mov	r0, r2
d0080380:	9700      	str	r7, [sp, #0]
d0080382:	6976      	ldr	r6, [r6, #20]
d0080384:	47b0      	blx	r6
d0080386:	7b23      	ldrb	r3, [r4, #12]
d0080388:	7b62      	ldrb	r2, [r4, #13]
d008038a:	2600      	movs	r6, #0
d008038c:	7ba1      	ldrb	r1, [r4, #14]
d008038e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080392:	7be2      	ldrb	r2, [r4, #15]
d0080394:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080398:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008039c:	681b      	ldr	r3, [r3, #0]
d008039e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00803a0:	4798      	blx	r3
d00803a2:	7b23      	ldrb	r3, [r4, #12]
d00803a4:	4972      	ldr	r1, [pc, #456]	; (d0080570 <main+0x264>)
d00803a6:	7b62      	ldrb	r2, [r4, #13]
d00803a8:	6008      	str	r0, [r1, #0]
d00803aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00803ae:	7ba1      	ldrb	r1, [r4, #14]
d00803b0:	7be2      	ldrb	r2, [r4, #15]
d00803b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00803b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00803ba:	681b      	ldr	r3, [r3, #0]
d00803bc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d00803be:	4798      	blx	r3
d00803c0:	7b23      	ldrb	r3, [r4, #12]
d00803c2:	496c      	ldr	r1, [pc, #432]	; (d0080574 <main+0x268>)
d00803c4:	7b62      	ldrb	r2, [r4, #13]
d00803c6:	6008      	str	r0, [r1, #0]
d00803c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00803cc:	7ba1      	ldrb	r1, [r4, #14]
d00803ce:	7be2      	ldrb	r2, [r4, #15]
d00803d0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00803d4:	4868      	ldr	r0, [pc, #416]	; (d0080578 <main+0x26c>)
d00803d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00803da:	681b      	ldr	r3, [r3, #0]
d00803dc:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00803de:	4798      	blx	r3
d00803e0:	7e23      	ldrb	r3, [r4, #24]
d00803e2:	7e62      	ldrb	r2, [r4, #25]
d00803e4:	7ea1      	ldrb	r1, [r4, #26]
d00803e6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00803ea:	7ee2      	ldrb	r2, [r4, #27]
d00803ec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00803f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00803f4:	681b      	ldr	r3, [r3, #0]
d00803f6:	4798      	blx	r3
d00803f8:	7b23      	ldrb	r3, [r4, #12]
d00803fa:	7b62      	ldrb	r2, [r4, #13]
d00803fc:	7ba1      	ldrb	r1, [r4, #14]
d00803fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080402:	7be2      	ldrb	r2, [r4, #15]
d0080404:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080408:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008040c:	681b      	ldr	r3, [r3, #0]
d008040e:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d0080410:	4798      	blx	r3
d0080412:	7b23      	ldrb	r3, [r4, #12]
d0080414:	7b62      	ldrb	r2, [r4, #13]
d0080416:	2157      	movs	r1, #87	; 0x57
d0080418:	2050      	movs	r0, #80	; 0x50
d008041a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008041e:	7ba2      	ldrb	r2, [r4, #14]
d0080420:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080424:	7be2      	ldrb	r2, [r4, #15]
d0080426:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008042a:	681b      	ldr	r3, [r3, #0]
d008042c:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d008042e:	4798      	blx	r3
d0080430:	7b23      	ldrb	r3, [r4, #12]
d0080432:	7b62      	ldrb	r2, [r4, #13]
d0080434:	2004      	movs	r0, #4
d0080436:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008043a:	7ba2      	ldrb	r2, [r4, #14]
d008043c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080440:	7be2      	ldrb	r2, [r4, #15]
d0080442:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080446:	681b      	ldr	r3, [r3, #0]
d0080448:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d008044a:	4798      	blx	r3
d008044c:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0080450:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0080454:	4849      	ldr	r0, [pc, #292]	; (d008057c <main+0x270>)
d0080456:	f7ff fdf1 	bl	d008003c <gfx_createBitmap>
d008045a:	7b23      	ldrb	r3, [r4, #12]
d008045c:	7b62      	ldrb	r2, [r4, #13]
d008045e:	4847      	ldr	r0, [pc, #284]	; (d008057c <main+0x270>)
d0080460:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080464:	7ba2      	ldrb	r2, [r4, #14]
d0080466:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d008046a:	7be2      	ldrb	r2, [r4, #15]
d008046c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080470:	681b      	ldr	r3, [r3, #0]
d0080472:	699b      	ldr	r3, [r3, #24]
d0080474:	4798      	blx	r3
d0080476:	7b23      	ldrb	r3, [r4, #12]
d0080478:	7b62      	ldrb	r2, [r4, #13]
d008047a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008047e:	7ba2      	ldrb	r2, [r4, #14]
d0080480:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080484:	7be2      	ldrb	r2, [r4, #15]
d0080486:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008048a:	685b      	ldr	r3, [r3, #4]
d008048c:	681b      	ldr	r3, [r3, #0]
d008048e:	4798      	blx	r3
d0080490:	e039      	b.n	d0080506 <main+0x1fa>
d0080492:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080496:	4640      	mov	r0, r8
d0080498:	7b62      	ldrb	r2, [r4, #13]
d008049a:	eb05 1705 	add.w	r7, r5, r5, lsl #4
d008049e:	f894 b00e 	ldrb.w	fp, [r4, #14]
d00804a2:	ea4e 2c02 	orr.w	ip, lr, r2, lsl #8
d00804a6:	7be3      	ldrb	r3, [r4, #15]
d00804a8:	f81a 9c01 	ldrb.w	r9, [sl, #-1]
d00804ac:	b23f      	sxth	r7, r7
d00804ae:	ea4c 420b 	orr.w	r2, ip, fp, lsl #16
d00804b2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00804b6:	685b      	ldr	r3, [r3, #4]
d00804b8:	68db      	ldr	r3, [r3, #12]
d00804ba:	4798      	blx	r3
d00804bc:	7b20      	ldrb	r0, [r4, #12]
d00804be:	7b62      	ldrb	r2, [r4, #13]
d00804c0:	2311      	movs	r3, #17
d00804c2:	f894 e00e 	ldrb.w	lr, [r4, #14]
d00804c6:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
d00804ca:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00804ce:	9904      	ldr	r1, [sp, #16]
d00804d0:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00804d4:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d00804d8:	2000      	movs	r0, #0
d00804da:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d00804de:	f8dc c004 	ldr.w	ip, [ip, #4]
d00804e2:	f8dc b004 	ldr.w	fp, [ip, #4]
d00804e6:	47d8      	blx	fp
d00804e8:	45c1      	cmp	r9, r8
d00804ea:	d004      	beq.n	d00804f6 <main+0x1ea>
d00804ec:	eb06 1306 	add.w	r3, r6, r6, lsl #4
d00804f0:	3301      	adds	r3, #1
d00804f2:	429f      	cmp	r7, r3
d00804f4:	dc74      	bgt.n	d00805e0 <main+0x2d4>
d00804f6:	2d12      	cmp	r5, #18
d00804f8:	f000 8099 	beq.w	d008062e <main+0x322>
d00804fc:	3501      	adds	r5, #1
d00804fe:	3601      	adds	r6, #1
d0080500:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
d0080504:	b2ad      	uxth	r5, r5
d0080506:	fa1f fb86 	uxth.w	fp, r6
d008050a:	2e11      	cmp	r6, #17
d008050c:	b237      	sxth	r7, r6
d008050e:	eb0b 110b 	add.w	r1, fp, fp, lsl #4
d0080512:	b28b      	uxth	r3, r1
d0080514:	b209      	sxth	r1, r1
d0080516:	9305      	str	r3, [sp, #20]
d0080518:	9104      	str	r1, [sp, #16]
d008051a:	d033      	beq.n	d0080584 <main+0x278>
d008051c:	2f00      	cmp	r7, #0
d008051e:	d1b8      	bne.n	d0080492 <main+0x186>
d0080520:	7b20      	ldrb	r0, [r4, #12]
d0080522:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080526:	7ba2      	ldrb	r2, [r4, #14]
d0080528:	ea40 2c0c 	orr.w	ip, r0, ip, lsl #8
d008052c:	7be3      	ldrb	r3, [r4, #15]
d008052e:	f89a 0000 	ldrb.w	r0, [sl]
d0080532:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0080536:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008053a:	685b      	ldr	r3, [r3, #4]
d008053c:	68db      	ldr	r3, [r3, #12]
d008053e:	4798      	blx	r3
d0080540:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080544:	7b63      	ldrb	r3, [r4, #13]
d0080546:	4638      	mov	r0, r7
d0080548:	f894 c00e 	ldrb.w	ip, [r4, #14]
d008054c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080550:	ea4e 2e03 	orr.w	lr, lr, r3, lsl #8
d0080554:	7be7      	ldrb	r7, [r4, #15]
d0080556:	9904      	ldr	r1, [sp, #16]
d0080558:	2311      	movs	r3, #17
d008055a:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d008055e:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0080562:	687f      	ldr	r7, [r7, #4]
d0080564:	687f      	ldr	r7, [r7, #4]
d0080566:	47b8      	blx	r7
d0080568:	e7c8      	b.n	d00804fc <main+0x1f0>
d008056a:	bf00      	nop
d008056c:	2001f000 	.word	0x2001f000
d0080570:	d0092800 	.word	0xd0092800
d0080574:	d00927e0 	.word	0xd00927e0
d0080578:	d00843e0 	.word	0xd00843e0
d008057c:	d00927c0 	.word	0xd00927c0
d0080580:	d008a2d8 	.word	0xd008a2d8
d0080584:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0080588:	4640      	mov	r0, r8
d008058a:	7b62      	ldrb	r2, [r4, #13]
d008058c:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080590:	ea4c 2702 	orr.w	r7, ip, r2, lsl #8
d0080594:	7be3      	ldrb	r3, [r4, #15]
d0080596:	f81a 9c01 	ldrb.w	r9, [sl, #-1]
d008059a:	ea47 420e 	orr.w	r2, r7, lr, lsl #16
d008059e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00805a2:	685b      	ldr	r3, [r3, #4]
d00805a4:	68db      	ldr	r3, [r3, #12]
d00805a6:	4798      	blx	r3
d00805a8:	7b20      	ldrb	r0, [r4, #12]
d00805aa:	7b62      	ldrb	r2, [r4, #13]
d00805ac:	ebcb 330b 	rsb	r3, fp, fp, lsl #12
d00805b0:	f894 c00e 	ldrb.w	ip, [r4, #14]
d00805b4:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
d00805b8:	7be7      	ldrb	r7, [r4, #15]
d00805ba:	ebcb 1b03 	rsb	fp, fp, r3, lsl #4
d00805be:	9904      	ldr	r1, [sp, #16]
d00805c0:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d00805c4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00805c8:	f50b 7ba0 	add.w	fp, fp, #320	; 0x140
d00805cc:	2000      	movs	r0, #0
d00805ce:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00805d2:	fa0f f38b 	sxth.w	r3, fp
d00805d6:	687f      	ldr	r7, [r7, #4]
d00805d8:	687f      	ldr	r7, [r7, #4]
d00805da:	47b8      	blx	r7
d00805dc:	45c1      	cmp	r9, r8
d00805de:	d08a      	beq.n	d00804f6 <main+0x1ea>
d00805e0:	7b27      	ldrb	r7, [r4, #12]
d00805e2:	4648      	mov	r0, r9
d00805e4:	7b61      	ldrb	r1, [r4, #13]
d00805e6:	7ba2      	ldrb	r2, [r4, #14]
d00805e8:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d00805ec:	7be3      	ldrb	r3, [r4, #15]
d00805ee:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00805f2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00805f6:	685b      	ldr	r3, [r3, #4]
d00805f8:	68db      	ldr	r3, [r3, #12]
d00805fa:	4798      	blx	r3
d00805fc:	7b22      	ldrb	r2, [r4, #12]
d00805fe:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080602:	2302      	movs	r3, #2
d0080604:	7ba7      	ldrb	r7, [r4, #14]
d0080606:	ea42 200c 	orr.w	r0, r2, ip, lsl #8
d008060a:	f894 e00f 	ldrb.w	lr, [r4, #15]
d008060e:	9905      	ldr	r1, [sp, #20]
d0080610:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080614:	ea40 4c07 	orr.w	ip, r0, r7, lsl #16
d0080618:	2000      	movs	r0, #0
d008061a:	3103      	adds	r1, #3
d008061c:	ea4c 670e 	orr.w	r7, ip, lr, lsl #24
d0080620:	b209      	sxth	r1, r1
d0080622:	687f      	ldr	r7, [r7, #4]
d0080624:	687f      	ldr	r7, [r7, #4]
d0080626:	47b8      	blx	r7
d0080628:	2d12      	cmp	r5, #18
d008062a:	f47f af67 	bne.w	d00804fc <main+0x1f0>
d008062e:	7b21      	ldrb	r1, [r4, #12]
d0080630:	7b63      	ldrb	r3, [r4, #13]
d0080632:	7ba2      	ldrb	r2, [r4, #14]
d0080634:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080638:	7be3      	ldrb	r3, [r4, #15]
d008063a:	483b      	ldr	r0, [pc, #236]	; (d0080728 <main+0x41c>)
d008063c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080640:	f8df b0f8 	ldr.w	fp, [pc, #248]	; d008073c <main+0x430>
d0080644:	4e39      	ldr	r6, [pc, #228]	; (d008072c <main+0x420>)
d0080646:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008064a:	f8df 90f4 	ldr.w	r9, [pc, #244]	; d0080740 <main+0x434>
d008064e:	681b      	ldr	r3, [r3, #0]
d0080650:	6a1b      	ldr	r3, [r3, #32]
d0080652:	4798      	blx	r3
d0080654:	7b23      	ldrb	r3, [r4, #12]
d0080656:	7b62      	ldrb	r2, [r4, #13]
d0080658:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008065c:	7ba2      	ldrb	r2, [r4, #14]
d008065e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080662:	7be2      	ldrb	r2, [r4, #15]
d0080664:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080668:	4a31      	ldr	r2, [pc, #196]	; (d0080730 <main+0x424>)
d008066a:	681b      	ldr	r3, [r3, #0]
d008066c:	6810      	ldr	r0, [r2, #0]
d008066e:	69db      	ldr	r3, [r3, #28]
d0080670:	4798      	blx	r3
d0080672:	7b23      	ldrb	r3, [r4, #12]
d0080674:	7b62      	ldrb	r2, [r4, #13]
d0080676:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008067a:	7ba2      	ldrb	r2, [r4, #14]
d008067c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080680:	7be2      	ldrb	r2, [r4, #15]
d0080682:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080686:	4a2b      	ldr	r2, [pc, #172]	; (d0080734 <main+0x428>)
d0080688:	681b      	ldr	r3, [r3, #0]
d008068a:	6810      	ldr	r0, [r2, #0]
d008068c:	699b      	ldr	r3, [r3, #24]
d008068e:	4798      	blx	r3
d0080690:	f44f 62ca 	mov.w	r2, #1616	; 0x650
d0080694:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0080698:	f8cb 2000 	str.w	r2, [fp]
d008069c:	6033      	str	r3, [r6, #0]
d008069e:	f002 f9ff 	bl	d0082aa0 <init_star_fields>
d00806a2:	7820      	ldrb	r0, [r4, #0]
d00806a4:	7861      	ldrb	r1, [r4, #1]
d00806a6:	78a2      	ldrb	r2, [r4, #2]
d00806a8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00806ac:	78e3      	ldrb	r3, [r4, #3]
d00806ae:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00806b2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00806b6:	6a1b      	ldr	r3, [r3, #32]
d00806b8:	4798      	blx	r3
d00806ba:	4680      	mov	r8, r0
d00806bc:	2800      	cmp	r0, #0
d00806be:	f000 8165 	beq.w	d008098c <main+0x680>
d00806c2:	7b20      	ldrb	r0, [r4, #12]
d00806c4:	7b61      	ldrb	r1, [r4, #13]
d00806c6:	7ba2      	ldrb	r2, [r4, #14]
d00806c8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00806cc:	7be3      	ldrb	r3, [r4, #15]
d00806ce:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00806d2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00806d6:	681b      	ldr	r3, [r3, #0]
d00806d8:	68db      	ldr	r3, [r3, #12]
d00806da:	4798      	blx	r3
d00806dc:	7b20      	ldrb	r0, [r4, #12]
d00806de:	7b61      	ldrb	r1, [r4, #13]
d00806e0:	7ba2      	ldrb	r2, [r4, #14]
d00806e2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00806e6:	7be3      	ldrb	r3, [r4, #15]
d00806e8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00806ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00806f0:	685b      	ldr	r3, [r3, #4]
d00806f2:	681b      	ldr	r3, [r3, #0]
d00806f4:	4798      	blx	r3
d00806f6:	f002 fc7b 	bl	d0082ff0 <draw_star_fields_layer1>
d00806fa:	f000 f9e1 	bl	d0080ac0 <do_projectx_playdemo_screensaver>
d00806fe:	f000 f9a5 	bl	d0080a4c <draw_projectx_scoreboard>
d0080702:	f002 fc7d 	bl	d0083000 <do_bubbastix_playdemo_screensaver>
d0080706:	f002 fc77 	bl	d0082ff8 <draw_star_fields_layer2>
d008070a:	f8d9 1000 	ldr.w	r1, [r9]
d008070e:	3902      	subs	r1, #2
d0080710:	f111 0f43 	cmn.w	r1, #67	; 0x43
d0080714:	f2c0 8188 	blt.w	d0080a28 <main+0x71c>
d0080718:	f8c9 1000 	str.w	r1, [r9]
d008071c:	2500      	movs	r5, #0
d008071e:	f04f 0a20 	mov.w	sl, #32
d0080722:	4805      	ldr	r0, [pc, #20]	; (d0080738 <main+0x42c>)
d0080724:	e011      	b.n	d008074a <main+0x43e>
d0080726:	bf00      	nop
d0080728:	d00927c0 	.word	0xd00927c0
d008072c:	d0092360 	.word	0xd0092360
d0080730:	d0092800 	.word	0xd0092800
d0080734:	d00927e0 	.word	0xd00927e0
d0080738:	d0089a38 	.word	0xd0089a38
d008073c:	d0092410 	.word	0xd0092410
d0080740:	d009240c 	.word	0xd009240c
d0080744:	f8d9 1000 	ldr.w	r1, [r9]
d0080748:	487d      	ldr	r0, [pc, #500]	; (d0080940 <main+0x634>)
d008074a:	f894 e00c 	ldrb.w	lr, [r4, #12]
d008074e:	4429      	add	r1, r5
d0080750:	7b62      	ldrb	r2, [r4, #13]
d0080752:	3544      	adds	r5, #68	; 0x44
d0080754:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0080758:	2344      	movs	r3, #68	; 0x44
d008075a:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
d008075e:	7be7      	ldrb	r7, [r4, #15]
d0080760:	b2ad      	uxth	r5, r5
d0080762:	2200      	movs	r2, #0
d0080764:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0080768:	b209      	sxth	r1, r1
d008076a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d008076e:	687f      	ldr	r7, [r7, #4]
d0080770:	f8cd a000 	str.w	sl, [sp]
d0080774:	69bf      	ldr	r7, [r7, #24]
d0080776:	47b8      	blx	r7
d0080778:	f5b5 7f08 	cmp.w	r5, #544	; 0x220
d008077c:	d1e2      	bne.n	d0080744 <main+0x438>
d008077e:	6833      	ldr	r3, [r6, #0]
d0080780:	f8db 2000 	ldr.w	r2, [fp]
d0080784:	3b03      	subs	r3, #3
d0080786:	4252      	negs	r2, r2
d0080788:	6033      	str	r3, [r6, #0]
d008078a:	4293      	cmp	r3, r2
d008078c:	dc02      	bgt.n	d0080794 <main+0x488>
d008078e:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0080792:	6033      	str	r3, [r6, #0]
d0080794:	7b27      	ldrb	r7, [r4, #12]
d0080796:	2010      	movs	r0, #16
d0080798:	7b61      	ldrb	r1, [r4, #13]
d008079a:	2502      	movs	r5, #2
d008079c:	7ba2      	ldrb	r2, [r4, #14]
d008079e:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d00807a2:	7be3      	ldrb	r3, [r4, #15]
d00807a4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807a8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807ac:	685b      	ldr	r3, [r3, #4]
d00807ae:	68db      	ldr	r3, [r3, #12]
d00807b0:	4798      	blx	r3
d00807b2:	7b20      	ldrb	r0, [r4, #12]
d00807b4:	7b62      	ldrb	r2, [r4, #13]
d00807b6:	462b      	mov	r3, r5
d00807b8:	7ba7      	ldrb	r7, [r4, #14]
d00807ba:	210e      	movs	r1, #14
d00807bc:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d00807c0:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00807c4:	6830      	ldr	r0, [r6, #0]
d00807c6:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d00807ca:	4a5e      	ldr	r2, [pc, #376]	; (d0080944 <main+0x638>)
d00807cc:	3802      	subs	r0, #2
d00807ce:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00807d2:	687f      	ldr	r7, [r7, #4]
d00807d4:	9500      	str	r5, [sp, #0]
d00807d6:	6b3f      	ldr	r7, [r7, #48]	; 0x30
d00807d8:	47b8      	blx	r7
d00807da:	7b20      	ldrb	r0, [r4, #12]
d00807dc:	7b62      	ldrb	r2, [r4, #13]
d00807de:	462b      	mov	r3, r5
d00807e0:	7ba7      	ldrb	r7, [r4, #14]
d00807e2:	210e      	movs	r1, #14
d00807e4:	ea40 2202 	orr.w	r2, r0, r2, lsl #8
d00807e8:	f894 c00f 	ldrb.w	ip, [r4, #15]
d00807ec:	6830      	ldr	r0, [r6, #0]
d00807ee:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d00807f2:	4a54      	ldr	r2, [pc, #336]	; (d0080944 <main+0x638>)
d00807f4:	4428      	add	r0, r5
d00807f6:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00807fa:	687f      	ldr	r7, [r7, #4]
d00807fc:	9500      	str	r5, [sp, #0]
d00807fe:	6b3f      	ldr	r7, [r7, #48]	; 0x30
d0080800:	47b8      	blx	r7
d0080802:	7b22      	ldrb	r2, [r4, #12]
d0080804:	7b60      	ldrb	r0, [r4, #13]
d0080806:	462b      	mov	r3, r5
d0080808:	f894 c00e 	ldrb.w	ip, [r4, #14]
d008080c:	210c      	movs	r1, #12
d008080e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0080812:	7be7      	ldrb	r7, [r4, #15]
d0080814:	4a4b      	ldr	r2, [pc, #300]	; (d0080944 <main+0x638>)
d0080816:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d008081a:	6830      	ldr	r0, [r6, #0]
d008081c:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0080820:	687f      	ldr	r7, [r7, #4]
d0080822:	9500      	str	r5, [sp, #0]
d0080824:	6b3f      	ldr	r7, [r7, #48]	; 0x30
d0080826:	47b8      	blx	r7
d0080828:	7b22      	ldrb	r2, [r4, #12]
d008082a:	7b60      	ldrb	r0, [r4, #13]
d008082c:	462b      	mov	r3, r5
d008082e:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0080832:	2110      	movs	r1, #16
d0080834:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0080838:	7be7      	ldrb	r7, [r4, #15]
d008083a:	4a42      	ldr	r2, [pc, #264]	; (d0080944 <main+0x638>)
d008083c:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0080840:	6830      	ldr	r0, [r6, #0]
d0080842:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0080846:	687f      	ldr	r7, [r7, #4]
d0080848:	9500      	str	r5, [sp, #0]
d008084a:	6b3f      	ldr	r7, [r7, #48]	; 0x30
d008084c:	47b8      	blx	r7
d008084e:	7b20      	ldrb	r0, [r4, #12]
d0080850:	7b63      	ldrb	r3, [r4, #13]
d0080852:	f04f 0c0c 	mov.w	ip, #12
d0080856:	7ba2      	ldrb	r2, [r4, #14]
d0080858:	2757      	movs	r7, #87	; 0x57
d008085a:	ea40 2303 	orr.w	r3, r0, r3, lsl #8
d008085e:	7be1      	ldrb	r1, [r4, #15]
d0080860:	2050      	movs	r0, #80	; 0x50
d0080862:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
d0080866:	462b      	mov	r3, r5
d0080868:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
d008086c:	4a35      	ldr	r2, [pc, #212]	; (d0080944 <main+0x638>)
d008086e:	f8d1 e004 	ldr.w	lr, [r1, #4]
d0080872:	210e      	movs	r1, #14
d0080874:	f8cd c00c 	str.w	ip, [sp, #12]
d0080878:	9702      	str	r7, [sp, #8]
d008087a:	9500      	str	r5, [sp, #0]
d008087c:	9001      	str	r0, [sp, #4]
d008087e:	f8de 5034 	ldr.w	r5, [lr, #52]	; 0x34
d0080882:	6830      	ldr	r0, [r6, #0]
d0080884:	47a8      	blx	r5
d0080886:	7b25      	ldrb	r5, [r4, #12]
d0080888:	7b61      	ldrb	r1, [r4, #13]
d008088a:	2001      	movs	r0, #1
d008088c:	7ba2      	ldrb	r2, [r4, #14]
d008088e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d0080892:	7be3      	ldrb	r3, [r4, #15]
d0080894:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080898:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008089c:	685b      	ldr	r3, [r3, #4]
d008089e:	68db      	ldr	r3, [r3, #12]
d00808a0:	4798      	blx	r3
d00808a2:	7b21      	ldrb	r1, [r4, #12]
d00808a4:	f894 c00d 	ldrb.w	ip, [r4, #13]
d00808a8:	2305      	movs	r3, #5
d00808aa:	7ba7      	ldrb	r7, [r4, #14]
d00808ac:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00808b0:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d00808b4:	7be5      	ldrb	r5, [r4, #15]
d00808b6:	2120      	movs	r1, #32
d00808b8:	2000      	movs	r0, #0
d00808ba:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d00808be:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d00808c2:	686d      	ldr	r5, [r5, #4]
d00808c4:	686d      	ldr	r5, [r5, #4]
d00808c6:	47a8      	blx	r5
d00808c8:	4a1f      	ldr	r2, [pc, #124]	; (d0080948 <main+0x63c>)
d00808ca:	7813      	ldrb	r3, [r2, #0]
d00808cc:	f1c3 0301 	rsb	r3, r3, #1
d00808d0:	b2db      	uxtb	r3, r3
d00808d2:	7013      	strb	r3, [r2, #0]
d00808d4:	7813      	ldrb	r3, [r2, #0]
d00808d6:	7b21      	ldrb	r1, [r4, #12]
d00808d8:	7b60      	ldrb	r0, [r4, #13]
d00808da:	7ba2      	ldrb	r2, [r4, #14]
d00808dc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00808e0:	2b00      	cmp	r3, #0
d00808e2:	f000 80a5 	beq.w	d0080a30 <main+0x724>
d00808e6:	4919      	ldr	r1, [pc, #100]	; (d008094c <main+0x640>)
d00808e8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00808ec:	7be3      	ldrb	r3, [r4, #15]
d00808ee:	6809      	ldr	r1, [r1, #0]
d00808f0:	4817      	ldr	r0, [pc, #92]	; (d0080950 <main+0x644>)
d00808f2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00808f6:	6800      	ldr	r0, [r0, #0]
d00808f8:	f008 0803 	and.w	r8, r8, #3
d00808fc:	681b      	ldr	r3, [r3, #0]
d00808fe:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0080900:	4798      	blx	r3
d0080902:	7b20      	ldrb	r0, [r4, #12]
d0080904:	7b61      	ldrb	r1, [r4, #13]
d0080906:	7ba2      	ldrb	r2, [r4, #14]
d0080908:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d008090c:	7be3      	ldrb	r3, [r4, #15]
d008090e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080912:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080916:	681b      	ldr	r3, [r3, #0]
d0080918:	681b      	ldr	r3, [r3, #0]
d008091a:	4798      	blx	r3
d008091c:	7d20      	ldrb	r0, [r4, #20]
d008091e:	7d61      	ldrb	r1, [r4, #21]
d0080920:	7da2      	ldrb	r2, [r4, #22]
d0080922:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0080926:	7de3      	ldrb	r3, [r4, #23]
d0080928:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008092c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080930:	685b      	ldr	r3, [r3, #4]
d0080932:	685b      	ldr	r3, [r3, #4]
d0080934:	4798      	blx	r3
d0080936:	f1b8 0f03 	cmp.w	r8, #3
d008093a:	f47f aeb2 	bne.w	d00806a2 <main+0x396>
d008093e:	e017      	b.n	d0080970 <main+0x664>
d0080940:	d0089a38 	.word	0xd0089a38
d0080944:	d008a2ec 	.word	0xd008a2ec
d0080948:	d0092408 	.word	0xd0092408
d008094c:	d00927e0 	.word	0xd00927e0
d0080950:	d0092800 	.word	0xd0092800
d0080954:	7820      	ldrb	r0, [r4, #0]
d0080956:	7861      	ldrb	r1, [r4, #1]
d0080958:	78a2      	ldrb	r2, [r4, #2]
d008095a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d008095e:	78e3      	ldrb	r3, [r4, #3]
d0080960:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080964:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080968:	6a1b      	ldr	r3, [r3, #32]
d008096a:	4798      	blx	r3
d008096c:	0783      	lsls	r3, r0, #30
d008096e:	d50d      	bpl.n	d008098c <main+0x680>
d0080970:	7820      	ldrb	r0, [r4, #0]
d0080972:	7861      	ldrb	r1, [r4, #1]
d0080974:	78a2      	ldrb	r2, [r4, #2]
d0080976:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d008097a:	78e3      	ldrb	r3, [r4, #3]
d008097c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080980:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080984:	6a1b      	ldr	r3, [r3, #32]
d0080986:	4798      	blx	r3
d0080988:	07c2      	lsls	r2, r0, #31
d008098a:	d4e3      	bmi.n	d0080954 <main+0x648>
d008098c:	482c      	ldr	r0, [pc, #176]	; (d0080a40 <main+0x734>)
d008098e:	2602      	movs	r6, #2
d0080990:	f002 fd02 	bl	d0083398 <puts>
d0080994:	7b23      	ldrb	r3, [r4, #12]
d0080996:	7b62      	ldrb	r2, [r4, #13]
d0080998:	7ba1      	ldrb	r1, [r4, #14]
d008099a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008099e:	7be2      	ldrb	r2, [r4, #15]
d00809a0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00809a4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00809a8:	681b      	ldr	r3, [r3, #0]
d00809aa:	68db      	ldr	r3, [r3, #12]
d00809ac:	4798      	blx	r3
d00809ae:	7b25      	ldrb	r5, [r4, #12]
d00809b0:	7b62      	ldrb	r2, [r4, #13]
d00809b2:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00809b6:	7ba1      	ldrb	r1, [r4, #14]
d00809b8:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00809bc:	7be0      	ldrb	r0, [r4, #15]
d00809be:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00809c2:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00809c6:	4619      	mov	r1, r3
d00809c8:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00809cc:	4610      	mov	r0, r2
d00809ce:	682d      	ldr	r5, [r5, #0]
d00809d0:	9600      	str	r6, [sp, #0]
d00809d2:	696d      	ldr	r5, [r5, #20]
d00809d4:	47a8      	blx	r5
d00809d6:	7923      	ldrb	r3, [r4, #4]
d00809d8:	7962      	ldrb	r2, [r4, #5]
d00809da:	79a1      	ldrb	r1, [r4, #6]
d00809dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00809e0:	79e2      	ldrb	r2, [r4, #7]
d00809e2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00809e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00809ea:	685b      	ldr	r3, [r3, #4]
d00809ec:	4798      	blx	r3
d00809ee:	7b23      	ldrb	r3, [r4, #12]
d00809f0:	7b62      	ldrb	r2, [r4, #13]
d00809f2:	7ba1      	ldrb	r1, [r4, #14]
d00809f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00809f8:	7be2      	ldrb	r2, [r4, #15]
d00809fa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00809fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080a02:	681b      	ldr	r3, [r3, #0]
d0080a04:	68db      	ldr	r3, [r3, #12]
d0080a06:	4798      	blx	r3
d0080a08:	7823      	ldrb	r3, [r4, #0]
d0080a0a:	7862      	ldrb	r2, [r4, #1]
d0080a0c:	78a1      	ldrb	r1, [r4, #2]
d0080a0e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080a12:	78e2      	ldrb	r2, [r4, #3]
d0080a14:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080a18:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080a1c:	685b      	ldr	r3, [r3, #4]
d0080a1e:	4798      	blx	r3
d0080a20:	2000      	movs	r0, #0
d0080a22:	b007      	add	sp, #28
d0080a24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080a28:	2100      	movs	r1, #0
d0080a2a:	f8c9 1000 	str.w	r1, [r9]
d0080a2e:	e675      	b.n	d008071c <main+0x410>
d0080a30:	4904      	ldr	r1, [pc, #16]	; (d0080a44 <main+0x738>)
d0080a32:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0080a36:	7be3      	ldrb	r3, [r4, #15]
d0080a38:	6809      	ldr	r1, [r1, #0]
d0080a3a:	4803      	ldr	r0, [pc, #12]	; (d0080a48 <main+0x73c>)
d0080a3c:	e759      	b.n	d00808f2 <main+0x5e6>
d0080a3e:	bf00      	nop
d0080a40:	d008a2b8 	.word	0xd008a2b8
d0080a44:	d0092800 	.word	0xd0092800
d0080a48:	d00927e0 	.word	0xd00927e0

d0080a4c <draw_projectx_scoreboard>:
d0080a4c:	4a18      	ldr	r2, [pc, #96]	; (d0080ab0 <draw_projectx_scoreboard+0x64>)
d0080a4e:	2140      	movs	r1, #64	; 0x40
d0080a50:	4b18      	ldr	r3, [pc, #96]	; (d0080ab4 <draw_projectx_scoreboard+0x68>)
d0080a52:	8812      	ldrh	r2, [r2, #0]
d0080a54:	b570      	push	{r4, r5, r6, lr}
d0080a56:	b092      	sub	sp, #72	; 0x48
d0080a58:	4c17      	ldr	r4, [pc, #92]	; (d0080ab8 <draw_projectx_scoreboard+0x6c>)
d0080a5a:	2502      	movs	r5, #2
d0080a5c:	9200      	str	r2, [sp, #0]
d0080a5e:	a802      	add	r0, sp, #8
d0080a60:	681b      	ldr	r3, [r3, #0]
d0080a62:	4a16      	ldr	r2, [pc, #88]	; (d0080abc <draw_projectx_scoreboard+0x70>)
d0080a64:	f002 fd6e 	bl	d0083544 <sniprintf>
d0080a68:	7b23      	ldrb	r3, [r4, #12]
d0080a6a:	7b62      	ldrb	r2, [r4, #13]
d0080a6c:	2002      	movs	r0, #2
d0080a6e:	7ba1      	ldrb	r1, [r4, #14]
d0080a70:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080a74:	7be2      	ldrb	r2, [r4, #15]
d0080a76:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080a7a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080a7e:	685b      	ldr	r3, [r3, #4]
d0080a80:	68db      	ldr	r3, [r3, #12]
d0080a82:	4798      	blx	r3
d0080a84:	7b21      	ldrb	r1, [r4, #12]
d0080a86:	7b63      	ldrb	r3, [r4, #13]
d0080a88:	aa02      	add	r2, sp, #8
d0080a8a:	7ba6      	ldrb	r6, [r4, #14]
d0080a8c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080a90:	7be0      	ldrb	r0, [r4, #15]
d0080a92:	2301      	movs	r3, #1
d0080a94:	ea41 4406 	orr.w	r4, r1, r6, lsl #16
d0080a98:	f44f 7194 	mov.w	r1, #296	; 0x128
d0080a9c:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d0080aa0:	2008      	movs	r0, #8
d0080aa2:	6864      	ldr	r4, [r4, #4]
d0080aa4:	9500      	str	r5, [sp, #0]
d0080aa6:	6b24      	ldr	r4, [r4, #48]	; 0x30
d0080aa8:	47a0      	blx	r4
d0080aaa:	b012      	add	sp, #72	; 0x48
d0080aac:	bd70      	pop	{r4, r5, r6, pc}
d0080aae:	bf00      	nop
d0080ab0:	d0092540 	.word	0xd0092540
d0080ab4:	d0092544 	.word	0xd0092544
d0080ab8:	2001f000 	.word	0x2001f000
d0080abc:	d008a354 	.word	0xd008a354

d0080ac0 <do_projectx_playdemo_screensaver>:
d0080ac0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080ac4:	4eb7      	ldr	r6, [pc, #732]	; (d0080da4 <do_projectx_playdemo_screensaver+0x2e4>)
d0080ac6:	b08b      	sub	sp, #44	; 0x2c
d0080ac8:	7833      	ldrb	r3, [r6, #0]
d0080aca:	2b00      	cmp	r3, #0
d0080acc:	f000 86cc 	beq.w	d0081868 <do_projectx_playdemo_screensaver+0xda8>
d0080ad0:	4bb5      	ldr	r3, [pc, #724]	; (d0080da8 <do_projectx_playdemo_screensaver+0x2e8>)
d0080ad2:	4db6      	ldr	r5, [pc, #728]	; (d0080dac <do_projectx_playdemo_screensaver+0x2ec>)
d0080ad4:	9304      	str	r3, [sp, #16]
d0080ad6:	f8df b2fc 	ldr.w	fp, [pc, #764]	; d0080dd4 <do_projectx_playdemo_screensaver+0x314>
d0080ada:	4bb5      	ldr	r3, [pc, #724]	; (d0080db0 <do_projectx_playdemo_screensaver+0x2f0>)
d0080adc:	9306      	str	r3, [sp, #24]
d0080ade:	4bb5      	ldr	r3, [pc, #724]	; (d0080db4 <do_projectx_playdemo_screensaver+0x2f4>)
d0080ae0:	8819      	ldrh	r1, [r3, #0]
d0080ae2:	3901      	subs	r1, #1
d0080ae4:	b209      	sxth	r1, r1
d0080ae6:	f111 0fa5 	cmn.w	r1, #165	; 0xa5
d0080aea:	f2c0 869f 	blt.w	d008182c <do_projectx_playdemo_screensaver+0xd6c>
d0080aee:	8019      	strh	r1, [r3, #0]
d0080af0:	4cb1      	ldr	r4, [pc, #708]	; (d0080db8 <do_projectx_playdemo_screensaver+0x2f8>)
d0080af2:	2776      	movs	r7, #118	; 0x76
d0080af4:	23a5      	movs	r3, #165	; 0xa5
d0080af6:	2225      	movs	r2, #37	; 0x25
d0080af8:	7b26      	ldrb	r6, [r4, #12]
d0080afa:	7b60      	ldrb	r0, [r4, #13]
d0080afc:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080b00:	ea46 2600 	orr.w	r6, r6, r0, lsl #8
d0080b04:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080b08:	48ac      	ldr	r0, [pc, #688]	; (d0080dbc <do_projectx_playdemo_screensaver+0x2fc>)
d0080b0a:	ea46 460e 	orr.w	r6, r6, lr, lsl #16
d0080b0e:	ea46 660c 	orr.w	r6, r6, ip, lsl #24
d0080b12:	6876      	ldr	r6, [r6, #4]
d0080b14:	9700      	str	r7, [sp, #0]
d0080b16:	69b6      	ldr	r6, [r6, #24]
d0080b18:	47b0      	blx	r6
d0080b1a:	79aa      	ldrb	r2, [r5, #6]
d0080b1c:	7a29      	ldrb	r1, [r5, #8]
d0080b1e:	3201      	adds	r2, #1
d0080b20:	882b      	ldrh	r3, [r5, #0]
d0080b22:	4fa7      	ldr	r7, [pc, #668]	; (d0080dc0 <do_projectx_playdemo_screensaver+0x300>)
d0080b24:	f002 023f 	and.w	r2, r2, #63	; 0x3f
d0080b28:	79ee      	ldrb	r6, [r5, #7]
d0080b2a:	1a5b      	subs	r3, r3, r1
d0080b2c:	48a5      	ldr	r0, [pc, #660]	; (d0080dc4 <do_projectx_playdemo_screensaver+0x304>)
d0080b2e:	56b9      	ldrsb	r1, [r7, r2]
d0080b30:	71aa      	strb	r2, [r5, #6]
d0080b32:	b21b      	sxth	r3, r3
d0080b34:	fb11 f206 	smulbb	r2, r1, r6
d0080b38:	4ea3      	ldr	r6, [pc, #652]	; (d0080dc8 <do_projectx_playdemo_screensaver+0x308>)
d0080b3a:	8800      	ldrh	r0, [r0, #0]
d0080b3c:	f9b6 7000 	ldrsh.w	r7, [r6]
d0080b40:	49a0      	ldr	r1, [pc, #640]	; (d0080dc4 <do_projectx_playdemo_screensaver+0x304>)
d0080b42:	3001      	adds	r0, #1
d0080b44:	2f1d      	cmp	r7, #29
d0080b46:	802b      	strh	r3, [r5, #0]
d0080b48:	8008      	strh	r0, [r1, #0]
d0080b4a:	bfd4      	ite	le
d0080b4c:	f04f 0800 	movle.w	r8, #0
d0080b50:	f04f 0801 	movgt.w	r8, #1
d0080b54:	2a00      	cmp	r2, #0
d0080b56:	88a9      	ldrh	r1, [r5, #4]
d0080b58:	bfb8      	it	lt
d0080b5a:	321f      	addlt	r2, #31
d0080b5c:	3320      	adds	r3, #32
d0080b5e:	eb01 1262 	add.w	r2, r1, r2, asr #5
d0080b62:	806a      	strh	r2, [r5, #2]
d0080b64:	f2c1 816d 	blt.w	d0081e42 <do_projectx_playdemo_screensaver+0x1382>
d0080b68:	9702      	str	r7, [sp, #8]
d0080b6a:	f9b5 6000 	ldrsh.w	r6, [r5]
d0080b6e:	f5b6 7f43 	cmp.w	r6, #780	; 0x30c
d0080b72:	da03      	bge.n	d0080b7c <do_projectx_playdemo_screensaver+0xbc>
d0080b74:	9b02      	ldr	r3, [sp, #8]
d0080b76:	42b3      	cmp	r3, r6
d0080b78:	f2c0 870f 	blt.w	d008199a <do_projectx_playdemo_screensaver+0xeda>
d0080b7c:	f44f 7643 	mov.w	r6, #780	; 0x30c
d0080b80:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
d0080b84:	7caa      	ldrb	r2, [r5, #18]
d0080b86:	7d29      	ldrb	r1, [r5, #20]
d0080b88:	89ab      	ldrh	r3, [r5, #12]
d0080b8a:	3201      	adds	r2, #1
d0080b8c:	7ce8      	ldrb	r0, [r5, #19]
d0080b8e:	f002 023f 	and.w	r2, r2, #63	; 0x3f
d0080b92:	1a5b      	subs	r3, r3, r1
d0080b94:	498a      	ldr	r1, [pc, #552]	; (d0080dc0 <do_projectx_playdemo_screensaver+0x300>)
d0080b96:	b21b      	sxth	r3, r3
d0080b98:	74aa      	strb	r2, [r5, #18]
d0080b9a:	5689      	ldrsb	r1, [r1, r2]
d0080b9c:	81ab      	strh	r3, [r5, #12]
d0080b9e:	fb11 f100 	smulbb	r1, r1, r0
d0080ba2:	8a28      	ldrh	r0, [r5, #16]
d0080ba4:	2900      	cmp	r1, #0
d0080ba6:	bfb8      	it	lt
d0080ba8:	311f      	addlt	r1, #31
d0080baa:	3320      	adds	r3, #32
d0080bac:	eb00 1161 	add.w	r1, r0, r1, asr #5
d0080bb0:	81e9      	strh	r1, [r5, #14]
d0080bb2:	f2c1 811d 	blt.w	d0081df0 <do_projectx_playdemo_screensaver+0x1330>
d0080bb6:	f9b5 300c 	ldrsh.w	r3, [r5, #12]
d0080bba:	429e      	cmp	r6, r3
d0080bbc:	dd03      	ble.n	d0080bc6 <do_projectx_playdemo_screensaver+0x106>
d0080bbe:	9a02      	ldr	r2, [sp, #8]
d0080bc0:	429a      	cmp	r2, r3
d0080bc2:	f2c0 86f6 	blt.w	d00819b2 <do_projectx_playdemo_screensaver+0xef2>
d0080bc6:	7faa      	ldrb	r2, [r5, #30]
d0080bc8:	f895 1020 	ldrb.w	r1, [r5, #32]
d0080bcc:	8b2b      	ldrh	r3, [r5, #24]
d0080bce:	3201      	adds	r2, #1
d0080bd0:	7fe8      	ldrb	r0, [r5, #31]
d0080bd2:	f002 023f 	and.w	r2, r2, #63	; 0x3f
d0080bd6:	1a5b      	subs	r3, r3, r1
d0080bd8:	4979      	ldr	r1, [pc, #484]	; (d0080dc0 <do_projectx_playdemo_screensaver+0x300>)
d0080bda:	b21b      	sxth	r3, r3
d0080bdc:	77aa      	strb	r2, [r5, #30]
d0080bde:	5689      	ldrsb	r1, [r1, r2]
d0080be0:	832b      	strh	r3, [r5, #24]
d0080be2:	fb11 f100 	smulbb	r1, r1, r0
d0080be6:	8ba8      	ldrh	r0, [r5, #28]
d0080be8:	2900      	cmp	r1, #0
d0080bea:	bfb8      	it	lt
d0080bec:	311f      	addlt	r1, #31
d0080bee:	3320      	adds	r3, #32
d0080bf0:	eb00 1161 	add.w	r1, r0, r1, asr #5
d0080bf4:	8369      	strh	r1, [r5, #26]
d0080bf6:	f2c1 80d1 	blt.w	d0081d9c <do_projectx_playdemo_screensaver+0x12dc>
d0080bfa:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
d0080bfe:	429e      	cmp	r6, r3
d0080c00:	dd03      	ble.n	d0080c0a <do_projectx_playdemo_screensaver+0x14a>
d0080c02:	9a02      	ldr	r2, [sp, #8]
d0080c04:	429a      	cmp	r2, r3
d0080c06:	f2c0 86cf 	blt.w	d00819a8 <do_projectx_playdemo_screensaver+0xee8>
d0080c0a:	f895 202a 	ldrb.w	r2, [r5, #42]	; 0x2a
d0080c0e:	f895 102c 	ldrb.w	r1, [r5, #44]	; 0x2c
d0080c12:	8cab      	ldrh	r3, [r5, #36]	; 0x24
d0080c14:	3201      	adds	r2, #1
d0080c16:	f895 002b 	ldrb.w	r0, [r5, #43]	; 0x2b
d0080c1a:	f002 023f 	and.w	r2, r2, #63	; 0x3f
d0080c1e:	1a5b      	subs	r3, r3, r1
d0080c20:	4967      	ldr	r1, [pc, #412]	; (d0080dc0 <do_projectx_playdemo_screensaver+0x300>)
d0080c22:	b21b      	sxth	r3, r3
d0080c24:	f885 202a 	strb.w	r2, [r5, #42]	; 0x2a
d0080c28:	5689      	ldrsb	r1, [r1, r2]
d0080c2a:	84ab      	strh	r3, [r5, #36]	; 0x24
d0080c2c:	fb11 f100 	smulbb	r1, r1, r0
d0080c30:	8d28      	ldrh	r0, [r5, #40]	; 0x28
d0080c32:	2900      	cmp	r1, #0
d0080c34:	bfb8      	it	lt
d0080c36:	311f      	addlt	r1, #31
d0080c38:	3320      	adds	r3, #32
d0080c3a:	eb00 1161 	add.w	r1, r0, r1, asr #5
d0080c3e:	84e9      	strh	r1, [r5, #38]	; 0x26
d0080c40:	f2c1 8080 	blt.w	d0081d44 <do_projectx_playdemo_screensaver+0x1284>
d0080c44:	f9b5 3024 	ldrsh.w	r3, [r5, #36]	; 0x24
d0080c48:	429e      	cmp	r6, r3
d0080c4a:	dd03      	ble.n	d0080c54 <do_projectx_playdemo_screensaver+0x194>
d0080c4c:	9a02      	ldr	r2, [sp, #8]
d0080c4e:	429a      	cmp	r2, r3
d0080c50:	f2c0 86b4 	blt.w	d00819bc <do_projectx_playdemo_screensaver+0xefc>
d0080c54:	f895 2036 	ldrb.w	r2, [r5, #54]	; 0x36
d0080c58:	f895 1038 	ldrb.w	r1, [r5, #56]	; 0x38
d0080c5c:	8e2b      	ldrh	r3, [r5, #48]	; 0x30
d0080c5e:	3201      	adds	r2, #1
d0080c60:	f895 0037 	ldrb.w	r0, [r5, #55]	; 0x37
d0080c64:	f002 023f 	and.w	r2, r2, #63	; 0x3f
d0080c68:	1a5b      	subs	r3, r3, r1
d0080c6a:	4955      	ldr	r1, [pc, #340]	; (d0080dc0 <do_projectx_playdemo_screensaver+0x300>)
d0080c6c:	b21b      	sxth	r3, r3
d0080c6e:	f885 2036 	strb.w	r2, [r5, #54]	; 0x36
d0080c72:	5689      	ldrsb	r1, [r1, r2]
d0080c74:	862b      	strh	r3, [r5, #48]	; 0x30
d0080c76:	fb11 f100 	smulbb	r1, r1, r0
d0080c7a:	8ea8      	ldrh	r0, [r5, #52]	; 0x34
d0080c7c:	2900      	cmp	r1, #0
d0080c7e:	bfb8      	it	lt
d0080c80:	311f      	addlt	r1, #31
d0080c82:	3320      	adds	r3, #32
d0080c84:	eb00 1161 	add.w	r1, r0, r1, asr #5
d0080c88:	8669      	strh	r1, [r5, #50]	; 0x32
d0080c8a:	f2c1 802f 	blt.w	d0081cec <do_projectx_playdemo_screensaver+0x122c>
d0080c8e:	f9b5 a030 	ldrsh.w	sl, [r5, #48]	; 0x30
d0080c92:	9b02      	ldr	r3, [sp, #8]
d0080c94:	459a      	cmp	sl, r3
d0080c96:	dd03      	ble.n	d0080ca0 <do_projectx_playdemo_screensaver+0x1e0>
d0080c98:	45b2      	cmp	sl, r6
d0080c9a:	bfb8      	it	lt
d0080c9c:	f04f 0904 	movlt.w	r9, #4
d0080ca0:	4b48      	ldr	r3, [pc, #288]	; (d0080dc4 <do_projectx_playdemo_screensaver+0x304>)
d0080ca2:	4a4a      	ldr	r2, [pc, #296]	; (d0080dcc <do_projectx_playdemo_screensaver+0x30c>)
d0080ca4:	881b      	ldrh	r3, [r3, #0]
d0080ca6:	f9b2 c000 	ldrsh.w	ip, [r2]
d0080caa:	f3c3 0385 	ubfx	r3, r3, #2, #6
d0080cae:	4a44      	ldr	r2, [pc, #272]	; (d0080dc0 <do_projectx_playdemo_screensaver+0x300>)
d0080cb0:	fa1f f68c 	uxth.w	r6, ip
d0080cb4:	56d3      	ldrsb	r3, [r2, r3]
d0080cb6:	f106 0208 	add.w	r2, r6, #8
d0080cba:	ebc3 01c3 	rsb	r1, r3, r3, lsl #3
d0080cbe:	b212      	sxth	r2, r2
d0080cc0:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0080cc4:	9203      	str	r2, [sp, #12]
d0080cc6:	005b      	lsls	r3, r3, #1
d0080cc8:	bf48      	it	mi
d0080cca:	331f      	addmi	r3, #31
d0080ccc:	f419 4f00 	tst.w	r9, #32768	; 0x8000
d0080cd0:	ea4f 1363 	mov.w	r3, r3, asr #5
d0080cd4:	f103 0278 	add.w	r2, r3, #120	; 0x78
d0080cd8:	4b3d      	ldr	r3, [pc, #244]	; (d0080dd0 <do_projectx_playdemo_screensaver+0x310>)
d0080cda:	b212      	sxth	r2, r2
d0080cdc:	801a      	strh	r2, [r3, #0]
d0080cde:	f040 8081 	bne.w	d0080de4 <do_projectx_playdemo_screensaver+0x324>
d0080ce2:	f1b8 0f00 	cmp.w	r8, #0
d0080ce6:	d07d      	beq.n	d0080de4 <do_projectx_playdemo_screensaver+0x324>
d0080ce8:	eb09 0949 	add.w	r9, r9, r9, lsl #1
d0080cec:	eb05 0989 	add.w	r9, r5, r9, lsl #2
d0080cf0:	f8b9 2002 	ldrh.w	r2, [r9, #2]
d0080cf4:	3207      	adds	r2, #7
d0080cf6:	b212      	sxth	r2, r2
d0080cf8:	f106 0e2a 	add.w	lr, r6, #42	; 0x2a
d0080cfc:	9902      	ldr	r1, [sp, #8]
d0080cfe:	4b35      	ldr	r3, [pc, #212]	; (d0080dd4 <do_projectx_playdemo_screensaver+0x314>)
d0080d00:	f1a6 082a 	sub.w	r8, r6, #42	; 0x2a
d0080d04:	fa0f fe8e 	sxth.w	lr, lr
d0080d08:	f101 095e 	add.w	r9, r1, #94	; 0x5e
d0080d0c:	f103 0078 	add.w	r0, r3, #120	; 0x78
d0080d10:	fa0f f888 	sxth.w	r8, r8
d0080d14:	f8cd e014 	str.w	lr, [sp, #20]
d0080d18:	468e      	mov	lr, r1
d0080d1a:	7a19      	ldrb	r1, [r3, #8]
d0080d1c:	b1b1      	cbz	r1, d0080d4c <do_projectx_playdemo_screensaver+0x28c>
d0080d1e:	f9b3 1000 	ldrsh.w	r1, [r3]
d0080d22:	ebbe 1f21 	cmp.w	lr, r1, asr #4
d0080d26:	ea4f 1721 	mov.w	r7, r1, asr #4
d0080d2a:	da0f      	bge.n	d0080d4c <do_projectx_playdemo_screensaver+0x28c>
d0080d2c:	45b9      	cmp	r9, r7
d0080d2e:	db0d      	blt.n	d0080d4c <do_projectx_playdemo_screensaver+0x28c>
d0080d30:	f9b3 1002 	ldrsh.w	r1, [r3, #2]
d0080d34:	9f03      	ldr	r7, [sp, #12]
d0080d36:	ebc7 1721 	rsb	r7, r7, r1, asr #4
d0080d3a:	1109      	asrs	r1, r1, #4
d0080d3c:	370f      	adds	r7, #15
d0080d3e:	2f1e      	cmp	r7, #30
d0080d40:	d804      	bhi.n	d0080d4c <do_projectx_playdemo_screensaver+0x28c>
d0080d42:	9f03      	ldr	r7, [sp, #12]
d0080d44:	9a05      	ldr	r2, [sp, #20]
d0080d46:	428f      	cmp	r7, r1
d0080d48:	bfd8      	it	le
d0080d4a:	4642      	movle	r2, r8
d0080d4c:	330a      	adds	r3, #10
d0080d4e:	4283      	cmp	r3, r0
d0080d50:	d1e3      	bne.n	d0080d1a <do_projectx_playdemo_screensaver+0x25a>
d0080d52:	4b1f      	ldr	r3, [pc, #124]	; (d0080dd0 <do_projectx_playdemo_screensaver+0x310>)
d0080d54:	2a29      	cmp	r2, #41	; 0x29
d0080d56:	801a      	strh	r2, [r3, #0]
d0080d58:	dd48      	ble.n	d0080dec <do_projectx_playdemo_screensaver+0x32c>
d0080d5a:	f5b2 7f8f 	cmp.w	r2, #286	; 0x11e
d0080d5e:	f2c0 8620 	blt.w	d00819a2 <do_projectx_playdemo_screensaver+0xee2>
d0080d62:	f240 131b 	movw	r3, #283	; 0x11b
d0080d66:	f240 111d 	movw	r1, #285	; 0x11d
d0080d6a:	4819      	ldr	r0, [pc, #100]	; (d0080dd0 <do_projectx_playdemo_screensaver+0x310>)
d0080d6c:	459c      	cmp	ip, r3
d0080d6e:	460a      	mov	r2, r1
d0080d70:	8001      	strh	r1, [r0, #0]
d0080d72:	db41      	blt.n	d0080df8 <do_projectx_playdemo_screensaver+0x338>
d0080d74:	3202      	adds	r2, #2
d0080d76:	4594      	cmp	ip, r2
d0080d78:	dd45      	ble.n	d0080e06 <do_projectx_playdemo_screensaver+0x346>
d0080d7a:	1db2      	adds	r2, r6, #6
d0080d7c:	3e02      	subs	r6, #2
d0080d7e:	b213      	sxth	r3, r2
d0080d80:	4a15      	ldr	r2, [pc, #84]	; (d0080dd8 <do_projectx_playdemo_screensaver+0x318>)
d0080d82:	9303      	str	r3, [sp, #12]
d0080d84:	4b11      	ldr	r3, [pc, #68]	; (d0080dcc <do_projectx_playdemo_screensaver+0x30c>)
d0080d86:	801e      	strh	r6, [r3, #0]
d0080d88:	7813      	ldrb	r3, [r2, #0]
d0080d8a:	2b00      	cmp	r3, #0
d0080d8c:	d13f      	bne.n	d0080e0e <do_projectx_playdemo_screensaver+0x34e>
d0080d8e:	9b02      	ldr	r3, [sp, #8]
d0080d90:	2b1d      	cmp	r3, #29
d0080d92:	dc3e      	bgt.n	d0080e12 <do_projectx_playdemo_screensaver+0x352>
d0080d94:	3302      	adds	r3, #2
d0080d96:	4a0c      	ldr	r2, [pc, #48]	; (d0080dc8 <do_projectx_playdemo_screensaver+0x308>)
d0080d98:	b21b      	sxth	r3, r3
d0080d9a:	2b1f      	cmp	r3, #31
d0080d9c:	9302      	str	r3, [sp, #8]
d0080d9e:	bf08      	it	eq
d0080da0:	231e      	moveq	r3, #30
d0080da2:	e01b      	b.n	d0080ddc <do_projectx_playdemo_screensaver+0x31c>
d0080da4:	d009250c 	.word	0xd009250c
d0080da8:	d0092510 	.word	0xd0092510
d0080dac:	d0092418 	.word	0xd0092418
d0080db0:	d00924cc 	.word	0xd00924cc
d0080db4:	d009236c 	.word	0xd009236c
d0080db8:	2001f000 	.word	0x2001f000
d0080dbc:	d00847e0 	.word	0xd00847e0
d0080dc0:	d008a370 	.word	0xd008a370
d0080dc4:	d0092414 	.word	0xd0092414
d0080dc8:	d0092368 	.word	0xd0092368
d0080dcc:	d009236a 	.word	0xd009236a
d0080dd0:	d0092366 	.word	0xd0092366
d0080dd4:	d0092454 	.word	0xd0092454
d0080dd8:	d0092549 	.word	0xd0092549
d0080ddc:	bf08      	it	eq
d0080dde:	9302      	streq	r3, [sp, #8]
d0080de0:	8013      	strh	r3, [r2, #0]
d0080de2:	e016      	b.n	d0080e12 <do_projectx_playdemo_screensaver+0x352>
d0080de4:	2f1d      	cmp	r7, #29
d0080de6:	dc87      	bgt.n	d0080cf8 <do_projectx_playdemo_screensaver+0x238>
d0080de8:	2a29      	cmp	r2, #41	; 0x29
d0080dea:	dcb6      	bgt.n	d0080d5a <do_projectx_playdemo_screensaver+0x29a>
d0080dec:	222a      	movs	r2, #42	; 0x2a
d0080dee:	496c      	ldr	r1, [pc, #432]	; (d0080fa0 <do_projectx_playdemo_screensaver+0x4e0>)
d0080df0:	2328      	movs	r3, #40	; 0x28
d0080df2:	800a      	strh	r2, [r1, #0]
d0080df4:	459c      	cmp	ip, r3
d0080df6:	dabd      	bge.n	d0080d74 <do_projectx_playdemo_screensaver+0x2b4>
d0080df8:	1cb3      	adds	r3, r6, #2
d0080dfa:	f106 020a 	add.w	r2, r6, #10
d0080dfe:	4969      	ldr	r1, [pc, #420]	; (d0080fa4 <do_projectx_playdemo_screensaver+0x4e4>)
d0080e00:	800b      	strh	r3, [r1, #0]
d0080e02:	b213      	sxth	r3, r2
d0080e04:	9303      	str	r3, [sp, #12]
d0080e06:	4a68      	ldr	r2, [pc, #416]	; (d0080fa8 <do_projectx_playdemo_screensaver+0x4e8>)
d0080e08:	7813      	ldrb	r3, [r2, #0]
d0080e0a:	2b00      	cmp	r3, #0
d0080e0c:	d0bf      	beq.n	d0080d8e <do_projectx_playdemo_screensaver+0x2ce>
d0080e0e:	3b01      	subs	r3, #1
d0080e10:	7013      	strb	r3, [r2, #0]
d0080e12:	4a66      	ldr	r2, [pc, #408]	; (d0080fac <do_projectx_playdemo_screensaver+0x4ec>)
d0080e14:	7813      	ldrb	r3, [r2, #0]
d0080e16:	b113      	cbz	r3, d0080e1e <do_projectx_playdemo_screensaver+0x35e>
d0080e18:	3b01      	subs	r3, #1
d0080e1a:	b2db      	uxtb	r3, r3
d0080e1c:	7013      	strb	r3, [r2, #0]
d0080e1e:	4e64      	ldr	r6, [pc, #400]	; (d0080fb0 <do_projectx_playdemo_screensaver+0x4f0>)
d0080e20:	7832      	ldrb	r2, [r6, #0]
d0080e22:	2a00      	cmp	r2, #0
d0080e24:	f000 84b2 	beq.w	d008178c <do_projectx_playdemo_screensaver+0xccc>
d0080e28:	3a01      	subs	r2, #1
d0080e2a:	9902      	ldr	r1, [sp, #8]
d0080e2c:	b2d2      	uxtb	r2, r2
d0080e2e:	291d      	cmp	r1, #29
d0080e30:	7032      	strb	r2, [r6, #0]
d0080e32:	f300 8590 	bgt.w	d0081956 <do_projectx_playdemo_screensaver+0xe96>
d0080e36:	4e5f      	ldr	r6, [pc, #380]	; (d0080fb4 <do_projectx_playdemo_screensaver+0x4f4>)
d0080e38:	f04f 0800 	mov.w	r8, #0
d0080e3c:	f106 0a30 	add.w	sl, r6, #48	; 0x30
d0080e40:	4637      	mov	r7, r6
d0080e42:	9604      	str	r6, [sp, #16]
d0080e44:	e005      	b.n	d0080e52 <do_projectx_playdemo_screensaver+0x392>
d0080e46:	f887 8005 	strb.w	r8, [r7, #5]
d0080e4a:	3706      	adds	r7, #6
d0080e4c:	45ba      	cmp	sl, r7
d0080e4e:	f000 80b3 	beq.w	d0080fb8 <do_projectx_playdemo_screensaver+0x4f8>
d0080e52:	797b      	ldrb	r3, [r7, #5]
d0080e54:	2b00      	cmp	r3, #0
d0080e56:	d0f8      	beq.n	d0080e4a <do_projectx_playdemo_screensaver+0x38a>
d0080e58:	7938      	ldrb	r0, [r7, #4]
d0080e5a:	2801      	cmp	r0, #1
d0080e5c:	f240 809a 	bls.w	d0080f94 <do_projectx_playdemo_screensaver+0x4d4>
d0080e60:	2803      	cmp	r0, #3
d0080e62:	d87c      	bhi.n	d0080f5e <do_projectx_playdemo_screensaver+0x49e>
d0080e64:	f04f 0c03 	mov.w	ip, #3
d0080e68:	2101      	movs	r1, #1
d0080e6a:	f04f 0e09 	mov.w	lr, #9
d0080e6e:	883b      	ldrh	r3, [r7, #0]
d0080e70:	887a      	ldrh	r2, [r7, #2]
d0080e72:	330a      	adds	r3, #10
d0080e74:	1a52      	subs	r2, r2, r1
d0080e76:	b21b      	sxth	r3, r3
d0080e78:	b212      	sxth	r2, r2
d0080e7a:	803b      	strh	r3, [r7, #0]
d0080e7c:	3001      	adds	r0, #1
d0080e7e:	7138      	strb	r0, [r7, #4]
d0080e80:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0080e84:	dcdf      	bgt.n	d0080e46 <do_projectx_playdemo_screensaver+0x386>
d0080e86:	f9b5 1000 	ldrsh.w	r1, [r5]
d0080e8a:	f101 001f 	add.w	r0, r1, #31
d0080e8e:	4298      	cmp	r0, r3
d0080e90:	db0e      	blt.n	d0080eb0 <do_projectx_playdemo_screensaver+0x3f0>
d0080e92:	eb0e 0003 	add.w	r0, lr, r3
d0080e96:	4281      	cmp	r1, r0
d0080e98:	da0a      	bge.n	d0080eb0 <do_projectx_playdemo_screensaver+0x3f0>
d0080e9a:	f9b5 0002 	ldrsh.w	r0, [r5, #2]
d0080e9e:	f100 091f 	add.w	r9, r0, #31
d0080ea2:	4591      	cmp	r9, r2
d0080ea4:	db04      	blt.n	d0080eb0 <do_projectx_playdemo_screensaver+0x3f0>
d0080ea6:	eb0c 0902 	add.w	r9, ip, r2
d0080eaa:	4548      	cmp	r0, r9
d0080eac:	f2c1 81ea 	blt.w	d0082284 <do_projectx_playdemo_screensaver+0x17c4>
d0080eb0:	f9b5 100c 	ldrsh.w	r1, [r5, #12]
d0080eb4:	f101 001f 	add.w	r0, r1, #31
d0080eb8:	4283      	cmp	r3, r0
d0080eba:	dc0e      	bgt.n	d0080eda <do_projectx_playdemo_screensaver+0x41a>
d0080ebc:	eb0e 0003 	add.w	r0, lr, r3
d0080ec0:	4281      	cmp	r1, r0
d0080ec2:	da0a      	bge.n	d0080eda <do_projectx_playdemo_screensaver+0x41a>
d0080ec4:	f9b5 000e 	ldrsh.w	r0, [r5, #14]
d0080ec8:	f100 091f 	add.w	r9, r0, #31
d0080ecc:	4591      	cmp	r9, r2
d0080ece:	db04      	blt.n	d0080eda <do_projectx_playdemo_screensaver+0x41a>
d0080ed0:	eb0c 0902 	add.w	r9, ip, r2
d0080ed4:	4548      	cmp	r0, r9
d0080ed6:	f2c1 8140 	blt.w	d008215a <do_projectx_playdemo_screensaver+0x169a>
d0080eda:	f9b5 1018 	ldrsh.w	r1, [r5, #24]
d0080ede:	f101 001f 	add.w	r0, r1, #31
d0080ee2:	4283      	cmp	r3, r0
d0080ee4:	dc0e      	bgt.n	d0080f04 <do_projectx_playdemo_screensaver+0x444>
d0080ee6:	eb0e 0003 	add.w	r0, lr, r3
d0080eea:	4281      	cmp	r1, r0
d0080eec:	da0a      	bge.n	d0080f04 <do_projectx_playdemo_screensaver+0x444>
d0080eee:	f9b5 001a 	ldrsh.w	r0, [r5, #26]
d0080ef2:	f100 091f 	add.w	r9, r0, #31
d0080ef6:	4591      	cmp	r9, r2
d0080ef8:	db04      	blt.n	d0080f04 <do_projectx_playdemo_screensaver+0x444>
d0080efa:	eb0c 0902 	add.w	r9, ip, r2
d0080efe:	4548      	cmp	r0, r9
d0080f00:	f2c1 818b 	blt.w	d008221a <do_projectx_playdemo_screensaver+0x175a>
d0080f04:	f9b5 1024 	ldrsh.w	r1, [r5, #36]	; 0x24
d0080f08:	f101 001f 	add.w	r0, r1, #31
d0080f0c:	4283      	cmp	r3, r0
d0080f0e:	dc0e      	bgt.n	d0080f2e <do_projectx_playdemo_screensaver+0x46e>
d0080f10:	eb0e 0003 	add.w	r0, lr, r3
d0080f14:	4281      	cmp	r1, r0
d0080f16:	da0a      	bge.n	d0080f2e <do_projectx_playdemo_screensaver+0x46e>
d0080f18:	f9b5 0026 	ldrsh.w	r0, [r5, #38]	; 0x26
d0080f1c:	f100 091f 	add.w	r9, r0, #31
d0080f20:	4591      	cmp	r9, r2
d0080f22:	db04      	blt.n	d0080f2e <do_projectx_playdemo_screensaver+0x46e>
d0080f24:	eb0c 0902 	add.w	r9, ip, r2
d0080f28:	4548      	cmp	r0, r9
d0080f2a:	f2c1 8179 	blt.w	d0082220 <do_projectx_playdemo_screensaver+0x1760>
d0080f2e:	f9b5 1030 	ldrsh.w	r1, [r5, #48]	; 0x30
d0080f32:	f101 001f 	add.w	r0, r1, #31
d0080f36:	4283      	cmp	r3, r0
d0080f38:	dc87      	bgt.n	d0080e4a <do_projectx_playdemo_screensaver+0x38a>
d0080f3a:	4473      	add	r3, lr
d0080f3c:	4299      	cmp	r1, r3
d0080f3e:	da84      	bge.n	d0080e4a <do_projectx_playdemo_screensaver+0x38a>
d0080f40:	f9b5 0032 	ldrsh.w	r0, [r5, #50]	; 0x32
d0080f44:	f100 031f 	add.w	r3, r0, #31
d0080f48:	4293      	cmp	r3, r2
d0080f4a:	f6ff af7e 	blt.w	d0080e4a <do_projectx_playdemo_screensaver+0x38a>
d0080f4e:	4462      	add	r2, ip
d0080f50:	4290      	cmp	r0, r2
d0080f52:	f6bf af7a 	bge.w	d0080e4a <do_projectx_playdemo_screensaver+0x38a>
d0080f56:	f04f 0904 	mov.w	r9, #4
d0080f5a:	f001 b900 	b.w	d008215e <do_projectx_playdemo_screensaver+0x169e>
d0080f5e:	1f02      	subs	r2, r0, #4
d0080f60:	883b      	ldrh	r3, [r7, #0]
d0080f62:	8879      	ldrh	r1, [r7, #2]
d0080f64:	f04f 0e0b 	mov.w	lr, #11
d0080f68:	1092      	asrs	r2, r2, #2
d0080f6a:	330a      	adds	r3, #10
d0080f6c:	3202      	adds	r2, #2
d0080f6e:	b21b      	sxth	r3, r3
d0080f70:	2a0c      	cmp	r2, #12
d0080f72:	803b      	strh	r3, [r7, #0]
d0080f74:	bfa8      	it	ge
d0080f76:	220c      	movge	r2, #12
d0080f78:	28ff      	cmp	r0, #255	; 0xff
d0080f7a:	b292      	uxth	r2, r2
d0080f7c:	ea4f 0c42 	mov.w	ip, r2, lsl #1
d0080f80:	eba1 0202 	sub.w	r2, r1, r2
d0080f84:	f10c 0c01 	add.w	ip, ip, #1
d0080f88:	b212      	sxth	r2, r2
d0080f8a:	fa1f fc8c 	uxth.w	ip, ip
d0080f8e:	f43f af77 	beq.w	d0080e80 <do_projectx_playdemo_screensaver+0x3c0>
d0080f92:	e773      	b.n	d0080e7c <do_projectx_playdemo_screensaver+0x3bc>
d0080f94:	f04f 0c01 	mov.w	ip, #1
d0080f98:	2100      	movs	r1, #0
d0080f9a:	f04f 0e07 	mov.w	lr, #7
d0080f9e:	e766      	b.n	d0080e6e <do_projectx_playdemo_screensaver+0x3ae>
d0080fa0:	d0092366 	.word	0xd0092366
d0080fa4:	d009236a 	.word	0xd009236a
d0080fa8:	d0092549 	.word	0xd0092549
d0080fac:	d0092548 	.word	0xd0092548
d0080fb0:	d0092364 	.word	0xd0092364
d0080fb4:	d0092510 	.word	0xd0092510
d0080fb8:	4dbc      	ldr	r5, [pc, #752]	; (d00812ac <do_projectx_playdemo_screensaver+0x7ec>)
d0080fba:	f04f 0800 	mov.w	r8, #0
d0080fbe:	46a9      	mov	r9, r5
d0080fc0:	462f      	mov	r7, r5
d0080fc2:	897b      	ldrh	r3, [r7, #10]
d0080fc4:	2b00      	cmp	r3, #0
d0080fc6:	f040 837d 	bne.w	d00816c4 <do_projectx_playdemo_screensaver+0xc04>
d0080fca:	883b      	ldrh	r3, [r7, #0]
d0080fcc:	f1a3 026f 	sub.w	r2, r3, #111	; 0x6f
d0080fd0:	f5b2 7fae 	cmp.w	r2, #348	; 0x15c
d0080fd4:	f240 8644 	bls.w	d0081c60 <do_projectx_playdemo_screensaver+0x11a0>
d0080fd8:	f108 0801 	add.w	r8, r8, #1
d0080fdc:	370c      	adds	r7, #12
d0080fde:	f1b8 0f05 	cmp.w	r8, #5
d0080fe2:	d1ee      	bne.n	d0080fc2 <do_projectx_playdemo_screensaver+0x502>
d0080fe4:	4bb2      	ldr	r3, [pc, #712]	; (d00812b0 <do_projectx_playdemo_screensaver+0x7f0>)
d0080fe6:	f9b3 c000 	ldrsh.w	ip, [r3]
d0080fea:	4bb2      	ldr	r3, [pc, #712]	; (d00812b4 <do_projectx_playdemo_screensaver+0x7f4>)
d0080fec:	f9b3 8000 	ldrsh.w	r8, [r3]
d0080ff0:	4bb1      	ldr	r3, [pc, #708]	; (d00812b8 <do_projectx_playdemo_screensaver+0x7f8>)
d0080ff2:	7819      	ldrb	r1, [r3, #0]
d0080ff4:	f10c 031e 	add.w	r3, ip, #30
d0080ff8:	9305      	str	r3, [sp, #20]
d0080ffa:	f108 0310 	add.w	r3, r8, #16
d0080ffe:	9307      	str	r3, [sp, #28]
d0081000:	2900      	cmp	r1, #0
d0081002:	f000 8366 	beq.w	d00816d2 <do_projectx_playdemo_screensaver+0xc12>
d0081006:	f89b 3008 	ldrb.w	r3, [fp, #8]
d008100a:	2b00      	cmp	r3, #0
d008100c:	f040 84a7 	bne.w	d008195e <do_projectx_playdemo_screensaver+0xe9e>
d0081010:	f89b 3012 	ldrb.w	r3, [fp, #18]
d0081014:	b1d3      	cbz	r3, d008104c <do_projectx_playdemo_screensaver+0x58c>
d0081016:	f8bb 300c 	ldrh.w	r3, [fp, #12]
d008101a:	f8bb 1010 	ldrh.w	r1, [fp, #16]
d008101e:	f8bb 200a 	ldrh.w	r2, [fp, #10]
d0081022:	440b      	add	r3, r1
d0081024:	f8bb 100e 	ldrh.w	r1, [fp, #14]
d0081028:	b21b      	sxth	r3, r3
d008102a:	440a      	add	r2, r1
d008102c:	1119      	asrs	r1, r3, #4
d008102e:	f8ab 300c 	strh.w	r3, [fp, #12]
d0081032:	b213      	sxth	r3, r2
d0081034:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081038:	f8ab 300a 	strh.w	r3, [fp, #10]
d008103c:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081040:	d801      	bhi.n	d0081046 <do_projectx_playdemo_screensaver+0x586>
d0081042:	3320      	adds	r3, #32
d0081044:	da02      	bge.n	d008104c <do_projectx_playdemo_screensaver+0x58c>
d0081046:	2300      	movs	r3, #0
d0081048:	f88b 3012 	strb.w	r3, [fp, #18]
d008104c:	f89b 301c 	ldrb.w	r3, [fp, #28]
d0081050:	b1d3      	cbz	r3, d0081088 <do_projectx_playdemo_screensaver+0x5c8>
d0081052:	f8bb 3016 	ldrh.w	r3, [fp, #22]
d0081056:	f8bb 101a 	ldrh.w	r1, [fp, #26]
d008105a:	f8bb 2014 	ldrh.w	r2, [fp, #20]
d008105e:	440b      	add	r3, r1
d0081060:	f8bb 1018 	ldrh.w	r1, [fp, #24]
d0081064:	b21b      	sxth	r3, r3
d0081066:	440a      	add	r2, r1
d0081068:	1119      	asrs	r1, r3, #4
d008106a:	f8ab 3016 	strh.w	r3, [fp, #22]
d008106e:	b213      	sxth	r3, r2
d0081070:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081074:	f8ab 3014 	strh.w	r3, [fp, #20]
d0081078:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d008107c:	d801      	bhi.n	d0081082 <do_projectx_playdemo_screensaver+0x5c2>
d008107e:	3320      	adds	r3, #32
d0081080:	da02      	bge.n	d0081088 <do_projectx_playdemo_screensaver+0x5c8>
d0081082:	2300      	movs	r3, #0
d0081084:	f88b 301c 	strb.w	r3, [fp, #28]
d0081088:	f89b 3026 	ldrb.w	r3, [fp, #38]	; 0x26
d008108c:	b1d3      	cbz	r3, d00810c4 <do_projectx_playdemo_screensaver+0x604>
d008108e:	f8bb 3020 	ldrh.w	r3, [fp, #32]
d0081092:	f8bb 1024 	ldrh.w	r1, [fp, #36]	; 0x24
d0081096:	f8bb 201e 	ldrh.w	r2, [fp, #30]
d008109a:	440b      	add	r3, r1
d008109c:	f8bb 1022 	ldrh.w	r1, [fp, #34]	; 0x22
d00810a0:	b21b      	sxth	r3, r3
d00810a2:	440a      	add	r2, r1
d00810a4:	1119      	asrs	r1, r3, #4
d00810a6:	f8ab 3020 	strh.w	r3, [fp, #32]
d00810aa:	b213      	sxth	r3, r2
d00810ac:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d00810b0:	f8ab 301e 	strh.w	r3, [fp, #30]
d00810b4:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d00810b8:	d801      	bhi.n	d00810be <do_projectx_playdemo_screensaver+0x5fe>
d00810ba:	3320      	adds	r3, #32
d00810bc:	da02      	bge.n	d00810c4 <do_projectx_playdemo_screensaver+0x604>
d00810be:	2300      	movs	r3, #0
d00810c0:	f88b 3026 	strb.w	r3, [fp, #38]	; 0x26
d00810c4:	f89b 3030 	ldrb.w	r3, [fp, #48]	; 0x30
d00810c8:	b1d3      	cbz	r3, d0081100 <do_projectx_playdemo_screensaver+0x640>
d00810ca:	f8bb 302a 	ldrh.w	r3, [fp, #42]	; 0x2a
d00810ce:	f8bb 102e 	ldrh.w	r1, [fp, #46]	; 0x2e
d00810d2:	f8bb 2028 	ldrh.w	r2, [fp, #40]	; 0x28
d00810d6:	440b      	add	r3, r1
d00810d8:	f8bb 102c 	ldrh.w	r1, [fp, #44]	; 0x2c
d00810dc:	b21b      	sxth	r3, r3
d00810de:	440a      	add	r2, r1
d00810e0:	1119      	asrs	r1, r3, #4
d00810e2:	f8ab 302a 	strh.w	r3, [fp, #42]	; 0x2a
d00810e6:	b213      	sxth	r3, r2
d00810e8:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d00810ec:	f8ab 3028 	strh.w	r3, [fp, #40]	; 0x28
d00810f0:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d00810f4:	d801      	bhi.n	d00810fa <do_projectx_playdemo_screensaver+0x63a>
d00810f6:	3320      	adds	r3, #32
d00810f8:	da02      	bge.n	d0081100 <do_projectx_playdemo_screensaver+0x640>
d00810fa:	2300      	movs	r3, #0
d00810fc:	f88b 3030 	strb.w	r3, [fp, #48]	; 0x30
d0081100:	f89b 303a 	ldrb.w	r3, [fp, #58]	; 0x3a
d0081104:	b1d3      	cbz	r3, d008113c <do_projectx_playdemo_screensaver+0x67c>
d0081106:	f8bb 3034 	ldrh.w	r3, [fp, #52]	; 0x34
d008110a:	f8bb 1038 	ldrh.w	r1, [fp, #56]	; 0x38
d008110e:	f8bb 2032 	ldrh.w	r2, [fp, #50]	; 0x32
d0081112:	440b      	add	r3, r1
d0081114:	f8bb 1036 	ldrh.w	r1, [fp, #54]	; 0x36
d0081118:	b21b      	sxth	r3, r3
d008111a:	440a      	add	r2, r1
d008111c:	1119      	asrs	r1, r3, #4
d008111e:	f8ab 3034 	strh.w	r3, [fp, #52]	; 0x34
d0081122:	b213      	sxth	r3, r2
d0081124:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081128:	f8ab 3032 	strh.w	r3, [fp, #50]	; 0x32
d008112c:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081130:	d801      	bhi.n	d0081136 <do_projectx_playdemo_screensaver+0x676>
d0081132:	3320      	adds	r3, #32
d0081134:	da02      	bge.n	d008113c <do_projectx_playdemo_screensaver+0x67c>
d0081136:	2300      	movs	r3, #0
d0081138:	f88b 303a 	strb.w	r3, [fp, #58]	; 0x3a
d008113c:	f89b 3044 	ldrb.w	r3, [fp, #68]	; 0x44
d0081140:	b1d3      	cbz	r3, d0081178 <do_projectx_playdemo_screensaver+0x6b8>
d0081142:	f8bb 303e 	ldrh.w	r3, [fp, #62]	; 0x3e
d0081146:	f8bb 1042 	ldrh.w	r1, [fp, #66]	; 0x42
d008114a:	f8bb 203c 	ldrh.w	r2, [fp, #60]	; 0x3c
d008114e:	440b      	add	r3, r1
d0081150:	f8bb 1040 	ldrh.w	r1, [fp, #64]	; 0x40
d0081154:	b21b      	sxth	r3, r3
d0081156:	440a      	add	r2, r1
d0081158:	1119      	asrs	r1, r3, #4
d008115a:	f8ab 303e 	strh.w	r3, [fp, #62]	; 0x3e
d008115e:	b213      	sxth	r3, r2
d0081160:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081164:	f8ab 303c 	strh.w	r3, [fp, #60]	; 0x3c
d0081168:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d008116c:	d801      	bhi.n	d0081172 <do_projectx_playdemo_screensaver+0x6b2>
d008116e:	3320      	adds	r3, #32
d0081170:	da02      	bge.n	d0081178 <do_projectx_playdemo_screensaver+0x6b8>
d0081172:	2300      	movs	r3, #0
d0081174:	f88b 3044 	strb.w	r3, [fp, #68]	; 0x44
d0081178:	f89b 304e 	ldrb.w	r3, [fp, #78]	; 0x4e
d008117c:	b1d3      	cbz	r3, d00811b4 <do_projectx_playdemo_screensaver+0x6f4>
d008117e:	f8bb 3048 	ldrh.w	r3, [fp, #72]	; 0x48
d0081182:	f8bb 104c 	ldrh.w	r1, [fp, #76]	; 0x4c
d0081186:	f8bb 2046 	ldrh.w	r2, [fp, #70]	; 0x46
d008118a:	440b      	add	r3, r1
d008118c:	f8bb 104a 	ldrh.w	r1, [fp, #74]	; 0x4a
d0081190:	b21b      	sxth	r3, r3
d0081192:	440a      	add	r2, r1
d0081194:	1119      	asrs	r1, r3, #4
d0081196:	f8ab 3048 	strh.w	r3, [fp, #72]	; 0x48
d008119a:	b213      	sxth	r3, r2
d008119c:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d00811a0:	f8ab 3046 	strh.w	r3, [fp, #70]	; 0x46
d00811a4:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d00811a8:	d801      	bhi.n	d00811ae <do_projectx_playdemo_screensaver+0x6ee>
d00811aa:	3320      	adds	r3, #32
d00811ac:	da02      	bge.n	d00811b4 <do_projectx_playdemo_screensaver+0x6f4>
d00811ae:	2300      	movs	r3, #0
d00811b0:	f88b 304e 	strb.w	r3, [fp, #78]	; 0x4e
d00811b4:	f89b 3058 	ldrb.w	r3, [fp, #88]	; 0x58
d00811b8:	b1d3      	cbz	r3, d00811f0 <do_projectx_playdemo_screensaver+0x730>
d00811ba:	f8bb 3052 	ldrh.w	r3, [fp, #82]	; 0x52
d00811be:	f8bb 1056 	ldrh.w	r1, [fp, #86]	; 0x56
d00811c2:	f8bb 2050 	ldrh.w	r2, [fp, #80]	; 0x50
d00811c6:	440b      	add	r3, r1
d00811c8:	f8bb 1054 	ldrh.w	r1, [fp, #84]	; 0x54
d00811cc:	b21b      	sxth	r3, r3
d00811ce:	440a      	add	r2, r1
d00811d0:	1119      	asrs	r1, r3, #4
d00811d2:	f8ab 3052 	strh.w	r3, [fp, #82]	; 0x52
d00811d6:	b213      	sxth	r3, r2
d00811d8:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d00811dc:	f8ab 3050 	strh.w	r3, [fp, #80]	; 0x50
d00811e0:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d00811e4:	d801      	bhi.n	d00811ea <do_projectx_playdemo_screensaver+0x72a>
d00811e6:	3320      	adds	r3, #32
d00811e8:	da02      	bge.n	d00811f0 <do_projectx_playdemo_screensaver+0x730>
d00811ea:	2300      	movs	r3, #0
d00811ec:	f88b 3058 	strb.w	r3, [fp, #88]	; 0x58
d00811f0:	f89b 3062 	ldrb.w	r3, [fp, #98]	; 0x62
d00811f4:	b1d3      	cbz	r3, d008122c <do_projectx_playdemo_screensaver+0x76c>
d00811f6:	f8bb 305c 	ldrh.w	r3, [fp, #92]	; 0x5c
d00811fa:	f8bb 1060 	ldrh.w	r1, [fp, #96]	; 0x60
d00811fe:	f8bb 205a 	ldrh.w	r2, [fp, #90]	; 0x5a
d0081202:	440b      	add	r3, r1
d0081204:	f8bb 105e 	ldrh.w	r1, [fp, #94]	; 0x5e
d0081208:	b21b      	sxth	r3, r3
d008120a:	440a      	add	r2, r1
d008120c:	1119      	asrs	r1, r3, #4
d008120e:	f8ab 305c 	strh.w	r3, [fp, #92]	; 0x5c
d0081212:	b213      	sxth	r3, r2
d0081214:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081218:	f8ab 305a 	strh.w	r3, [fp, #90]	; 0x5a
d008121c:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081220:	d801      	bhi.n	d0081226 <do_projectx_playdemo_screensaver+0x766>
d0081222:	3320      	adds	r3, #32
d0081224:	da02      	bge.n	d008122c <do_projectx_playdemo_screensaver+0x76c>
d0081226:	2300      	movs	r3, #0
d0081228:	f88b 3062 	strb.w	r3, [fp, #98]	; 0x62
d008122c:	f89b 306c 	ldrb.w	r3, [fp, #108]	; 0x6c
d0081230:	b1d3      	cbz	r3, d0081268 <do_projectx_playdemo_screensaver+0x7a8>
d0081232:	f8bb 3066 	ldrh.w	r3, [fp, #102]	; 0x66
d0081236:	f8bb 106a 	ldrh.w	r1, [fp, #106]	; 0x6a
d008123a:	f8bb 2064 	ldrh.w	r2, [fp, #100]	; 0x64
d008123e:	440b      	add	r3, r1
d0081240:	f8bb 1068 	ldrh.w	r1, [fp, #104]	; 0x68
d0081244:	b21b      	sxth	r3, r3
d0081246:	440a      	add	r2, r1
d0081248:	1119      	asrs	r1, r3, #4
d008124a:	f8ab 3066 	strh.w	r3, [fp, #102]	; 0x66
d008124e:	b213      	sxth	r3, r2
d0081250:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081254:	f8ab 3064 	strh.w	r3, [fp, #100]	; 0x64
d0081258:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d008125c:	d801      	bhi.n	d0081262 <do_projectx_playdemo_screensaver+0x7a2>
d008125e:	3320      	adds	r3, #32
d0081260:	da02      	bge.n	d0081268 <do_projectx_playdemo_screensaver+0x7a8>
d0081262:	2300      	movs	r3, #0
d0081264:	f88b 306c 	strb.w	r3, [fp, #108]	; 0x6c
d0081268:	f89b 3076 	ldrb.w	r3, [fp, #118]	; 0x76
d008126c:	b1d3      	cbz	r3, d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d008126e:	f8bb 1070 	ldrh.w	r1, [fp, #112]	; 0x70
d0081272:	f8bb 3074 	ldrh.w	r3, [fp, #116]	; 0x74
d0081276:	f8bb 2072 	ldrh.w	r2, [fp, #114]	; 0x72
d008127a:	440b      	add	r3, r1
d008127c:	f8bb 106e 	ldrh.w	r1, [fp, #110]	; 0x6e
d0081280:	b21b      	sxth	r3, r3
d0081282:	440a      	add	r2, r1
d0081284:	1119      	asrs	r1, r3, #4
d0081286:	f8ab 3070 	strh.w	r3, [fp, #112]	; 0x70
d008128a:	b213      	sxth	r3, r2
d008128c:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081290:	f8ab 306e 	strh.w	r3, [fp, #110]	; 0x6e
d0081294:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081298:	d801      	bhi.n	d008129e <do_projectx_playdemo_screensaver+0x7de>
d008129a:	3320      	adds	r3, #32
d008129c:	da02      	bge.n	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d008129e:	2300      	movs	r3, #0
d00812a0:	f88b 3076 	strb.w	r3, [fp, #118]	; 0x76
d00812a4:	2505      	movs	r5, #5
d00812a6:	f8df 8014 	ldr.w	r8, [pc, #20]	; d00812bc <do_projectx_playdemo_screensaver+0x7fc>
d00812aa:	e03b      	b.n	d0081324 <do_projectx_playdemo_screensaver+0x864>
d00812ac:	d0092418 	.word	0xd0092418
d00812b0:	d0092368 	.word	0xd0092368
d00812b4:	d009236a 	.word	0xd009236a
d00812b8:	d0092548 	.word	0xd0092548
d00812bc:	d00893f0 	.word	0xd00893f0
d00812c0:	7b61      	ldrb	r1, [r4, #13]
d00812c2:	2b03      	cmp	r3, #3
d00812c4:	f894 c00e 	ldrb.w	ip, [r4, #14]
d00812c8:	f04f 030b 	mov.w	r3, #11
d00812cc:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d00812d0:	4640      	mov	r0, r8
d00812d2:	7be7      	ldrb	r7, [r4, #15]
d00812d4:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d00812d8:	8872      	ldrh	r2, [r6, #2]
d00812da:	f9b6 1000 	ldrsh.w	r1, [r6]
d00812de:	f200 8441 	bhi.w	d0081b64 <do_projectx_playdemo_screensaver+0x10a4>
d00812e2:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00812e6:	3a03      	subs	r2, #3
d00812e8:	687f      	ldr	r7, [r7, #4]
d00812ea:	b212      	sxth	r2, r2
d00812ec:	9500      	str	r5, [sp, #0]
d00812ee:	69bf      	ldr	r7, [r7, #24]
d00812f0:	47b8      	blx	r7
d00812f2:	7b22      	ldrb	r2, [r4, #12]
d00812f4:	7b61      	ldrb	r1, [r4, #13]
d00812f6:	230b      	movs	r3, #11
d00812f8:	f894 c00e 	ldrb.w	ip, [r4, #14]
d00812fc:	4640      	mov	r0, r8
d00812fe:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0081302:	8872      	ldrh	r2, [r6, #2]
d0081304:	7be7      	ldrb	r7, [r4, #15]
d0081306:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d008130a:	3203      	adds	r2, #3
d008130c:	f9b6 1000 	ldrsh.w	r1, [r6]
d0081310:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0081314:	b212      	sxth	r2, r2
d0081316:	687f      	ldr	r7, [r7, #4]
d0081318:	9500      	str	r5, [sp, #0]
d008131a:	69bf      	ldr	r7, [r7, #24]
d008131c:	47b8      	blx	r7
d008131e:	3606      	adds	r6, #6
d0081320:	45b2      	cmp	sl, r6
d0081322:	d01e      	beq.n	d0081362 <do_projectx_playdemo_screensaver+0x8a2>
d0081324:	7973      	ldrb	r3, [r6, #5]
d0081326:	2b00      	cmp	r3, #0
d0081328:	d0f9      	beq.n	d008131e <do_projectx_playdemo_screensaver+0x85e>
d008132a:	7933      	ldrb	r3, [r6, #4]
d008132c:	7b22      	ldrb	r2, [r4, #12]
d008132e:	2b01      	cmp	r3, #1
d0081330:	d8c6      	bhi.n	d00812c0 <do_projectx_playdemo_screensaver+0x800>
d0081332:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0081336:	3606      	adds	r6, #6
d0081338:	7ba7      	ldrb	r7, [r4, #14]
d008133a:	230b      	movs	r3, #11
d008133c:	ea42 210c 	orr.w	r1, r2, ip, lsl #8
d0081340:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0081344:	f936 2c04 	ldrsh.w	r2, [r6, #-4]
d0081348:	4640      	mov	r0, r8
d008134a:	ea41 4c07 	orr.w	ip, r1, r7, lsl #16
d008134e:	f936 1c06 	ldrsh.w	r1, [r6, #-6]
d0081352:	ea4c 670e 	orr.w	r7, ip, lr, lsl #24
d0081356:	687f      	ldr	r7, [r7, #4]
d0081358:	9500      	str	r5, [sp, #0]
d008135a:	69bf      	ldr	r7, [r7, #24]
d008135c:	47b8      	blx	r7
d008135e:	45b2      	cmp	sl, r6
d0081360:	d1e0      	bne.n	d0081324 <do_projectx_playdemo_screensaver+0x864>
d0081362:	7b23      	ldrb	r3, [r4, #12]
d0081364:	20fc      	movs	r0, #252	; 0xfc
d0081366:	7b62      	ldrb	r2, [r4, #13]
d0081368:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008136c:	7ba2      	ldrb	r2, [r4, #14]
d008136e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0081372:	7be2      	ldrb	r2, [r4, #15]
d0081374:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081378:	685b      	ldr	r3, [r3, #4]
d008137a:	68db      	ldr	r3, [r3, #12]
d008137c:	4798      	blx	r3
d008137e:	f89b 3008 	ldrb.w	r3, [fp, #8]
d0081382:	b17b      	cbz	r3, d00813a4 <do_projectx_playdemo_screensaver+0x8e4>
d0081384:	f9bb 1002 	ldrsh.w	r1, [fp, #2]
d0081388:	f9bb 0000 	ldrsh.w	r0, [fp]
d008138c:	f3c1 130f 	ubfx	r3, r1, #4, #16
d0081390:	1109      	asrs	r1, r1, #4
d0081392:	1100      	asrs	r0, r0, #4
d0081394:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081398:	d804      	bhi.n	d00813a4 <do_projectx_playdemo_screensaver+0x8e4>
d008139a:	b283      	uxth	r3, r0
d008139c:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00813a0:	f240 8633 	bls.w	d008200a <do_projectx_playdemo_screensaver+0x154a>
d00813a4:	f89b 3012 	ldrb.w	r3, [fp, #18]
d00813a8:	b17b      	cbz	r3, d00813ca <do_projectx_playdemo_screensaver+0x90a>
d00813aa:	f9bb 000a 	ldrsh.w	r0, [fp, #10]
d00813ae:	f9bb 100c 	ldrsh.w	r1, [fp, #12]
d00813b2:	f3c0 130f 	ubfx	r3, r0, #4, #16
d00813b6:	1100      	asrs	r0, r0, #4
d00813b8:	1109      	asrs	r1, r1, #4
d00813ba:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00813be:	d804      	bhi.n	d00813ca <do_projectx_playdemo_screensaver+0x90a>
d00813c0:	b28b      	uxth	r3, r1
d00813c2:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00813c6:	f240 860f 	bls.w	d0081fe8 <do_projectx_playdemo_screensaver+0x1528>
d00813ca:	f89b 301c 	ldrb.w	r3, [fp, #28]
d00813ce:	b17b      	cbz	r3, d00813f0 <do_projectx_playdemo_screensaver+0x930>
d00813d0:	f9bb 1016 	ldrsh.w	r1, [fp, #22]
d00813d4:	f9bb 0014 	ldrsh.w	r0, [fp, #20]
d00813d8:	f3c1 130f 	ubfx	r3, r1, #4, #16
d00813dc:	1109      	asrs	r1, r1, #4
d00813de:	1100      	asrs	r0, r0, #4
d00813e0:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00813e4:	d804      	bhi.n	d00813f0 <do_projectx_playdemo_screensaver+0x930>
d00813e6:	b283      	uxth	r3, r0
d00813e8:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00813ec:	f240 85eb 	bls.w	d0081fc6 <do_projectx_playdemo_screensaver+0x1506>
d00813f0:	f89b 3026 	ldrb.w	r3, [fp, #38]	; 0x26
d00813f4:	b17b      	cbz	r3, d0081416 <do_projectx_playdemo_screensaver+0x956>
d00813f6:	f9bb 1020 	ldrsh.w	r1, [fp, #32]
d00813fa:	f9bb 001e 	ldrsh.w	r0, [fp, #30]
d00813fe:	f3c1 130f 	ubfx	r3, r1, #4, #16
d0081402:	1109      	asrs	r1, r1, #4
d0081404:	1100      	asrs	r0, r0, #4
d0081406:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d008140a:	d804      	bhi.n	d0081416 <do_projectx_playdemo_screensaver+0x956>
d008140c:	b283      	uxth	r3, r0
d008140e:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081412:	f240 85c7 	bls.w	d0081fa4 <do_projectx_playdemo_screensaver+0x14e4>
d0081416:	f89b 3030 	ldrb.w	r3, [fp, #48]	; 0x30
d008141a:	b17b      	cbz	r3, d008143c <do_projectx_playdemo_screensaver+0x97c>
d008141c:	f9bb 102a 	ldrsh.w	r1, [fp, #42]	; 0x2a
d0081420:	f9bb 0028 	ldrsh.w	r0, [fp, #40]	; 0x28
d0081424:	f3c1 130f 	ubfx	r3, r1, #4, #16
d0081428:	1109      	asrs	r1, r1, #4
d008142a:	1100      	asrs	r0, r0, #4
d008142c:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081430:	d804      	bhi.n	d008143c <do_projectx_playdemo_screensaver+0x97c>
d0081432:	b283      	uxth	r3, r0
d0081434:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081438:	f240 85a3 	bls.w	d0081f82 <do_projectx_playdemo_screensaver+0x14c2>
d008143c:	f89b 303a 	ldrb.w	r3, [fp, #58]	; 0x3a
d0081440:	b17b      	cbz	r3, d0081462 <do_projectx_playdemo_screensaver+0x9a2>
d0081442:	f9bb 1034 	ldrsh.w	r1, [fp, #52]	; 0x34
d0081446:	f9bb 0032 	ldrsh.w	r0, [fp, #50]	; 0x32
d008144a:	f3c1 130f 	ubfx	r3, r1, #4, #16
d008144e:	1109      	asrs	r1, r1, #4
d0081450:	1100      	asrs	r0, r0, #4
d0081452:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081456:	d804      	bhi.n	d0081462 <do_projectx_playdemo_screensaver+0x9a2>
d0081458:	b283      	uxth	r3, r0
d008145a:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d008145e:	f240 857f 	bls.w	d0081f60 <do_projectx_playdemo_screensaver+0x14a0>
d0081462:	f89b 3044 	ldrb.w	r3, [fp, #68]	; 0x44
d0081466:	b17b      	cbz	r3, d0081488 <do_projectx_playdemo_screensaver+0x9c8>
d0081468:	f9bb 003c 	ldrsh.w	r0, [fp, #60]	; 0x3c
d008146c:	f9bb 103e 	ldrsh.w	r1, [fp, #62]	; 0x3e
d0081470:	f3c0 130f 	ubfx	r3, r0, #4, #16
d0081474:	1100      	asrs	r0, r0, #4
d0081476:	1109      	asrs	r1, r1, #4
d0081478:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d008147c:	d804      	bhi.n	d0081488 <do_projectx_playdemo_screensaver+0x9c8>
d008147e:	b28b      	uxth	r3, r1
d0081480:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d0081484:	f240 855b 	bls.w	d0081f3e <do_projectx_playdemo_screensaver+0x147e>
d0081488:	f89b 304e 	ldrb.w	r3, [fp, #78]	; 0x4e
d008148c:	b17b      	cbz	r3, d00814ae <do_projectx_playdemo_screensaver+0x9ee>
d008148e:	f9bb 0046 	ldrsh.w	r0, [fp, #70]	; 0x46
d0081492:	f9bb 1048 	ldrsh.w	r1, [fp, #72]	; 0x48
d0081496:	f3c0 130f 	ubfx	r3, r0, #4, #16
d008149a:	1100      	asrs	r0, r0, #4
d008149c:	1109      	asrs	r1, r1, #4
d008149e:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00814a2:	d804      	bhi.n	d00814ae <do_projectx_playdemo_screensaver+0x9ee>
d00814a4:	b28b      	uxth	r3, r1
d00814a6:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00814aa:	f240 8537 	bls.w	d0081f1c <do_projectx_playdemo_screensaver+0x145c>
d00814ae:	f89b 3058 	ldrb.w	r3, [fp, #88]	; 0x58
d00814b2:	b17b      	cbz	r3, d00814d4 <do_projectx_playdemo_screensaver+0xa14>
d00814b4:	f9bb 0050 	ldrsh.w	r0, [fp, #80]	; 0x50
d00814b8:	f9bb 1052 	ldrsh.w	r1, [fp, #82]	; 0x52
d00814bc:	f3c0 130f 	ubfx	r3, r0, #4, #16
d00814c0:	1100      	asrs	r0, r0, #4
d00814c2:	1109      	asrs	r1, r1, #4
d00814c4:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00814c8:	d804      	bhi.n	d00814d4 <do_projectx_playdemo_screensaver+0xa14>
d00814ca:	b28b      	uxth	r3, r1
d00814cc:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00814d0:	f240 8513 	bls.w	d0081efa <do_projectx_playdemo_screensaver+0x143a>
d00814d4:	f89b 3062 	ldrb.w	r3, [fp, #98]	; 0x62
d00814d8:	b17b      	cbz	r3, d00814fa <do_projectx_playdemo_screensaver+0xa3a>
d00814da:	f9bb 005a 	ldrsh.w	r0, [fp, #90]	; 0x5a
d00814de:	f9bb 105c 	ldrsh.w	r1, [fp, #92]	; 0x5c
d00814e2:	f3c0 130f 	ubfx	r3, r0, #4, #16
d00814e6:	1100      	asrs	r0, r0, #4
d00814e8:	1109      	asrs	r1, r1, #4
d00814ea:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00814ee:	d804      	bhi.n	d00814fa <do_projectx_playdemo_screensaver+0xa3a>
d00814f0:	b28b      	uxth	r3, r1
d00814f2:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d00814f6:	f240 84ef 	bls.w	d0081ed8 <do_projectx_playdemo_screensaver+0x1418>
d00814fa:	f89b 306c 	ldrb.w	r3, [fp, #108]	; 0x6c
d00814fe:	b17b      	cbz	r3, d0081520 <do_projectx_playdemo_screensaver+0xa60>
d0081500:	f9bb 0064 	ldrsh.w	r0, [fp, #100]	; 0x64
d0081504:	f9bb 1066 	ldrsh.w	r1, [fp, #102]	; 0x66
d0081508:	f3c0 130f 	ubfx	r3, r0, #4, #16
d008150c:	1100      	asrs	r0, r0, #4
d008150e:	1109      	asrs	r1, r1, #4
d0081510:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081514:	d804      	bhi.n	d0081520 <do_projectx_playdemo_screensaver+0xa60>
d0081516:	b28b      	uxth	r3, r1
d0081518:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d008151c:	f240 84cb 	bls.w	d0081eb6 <do_projectx_playdemo_screensaver+0x13f6>
d0081520:	f89b 3076 	ldrb.w	r3, [fp, #118]	; 0x76
d0081524:	b17b      	cbz	r3, d0081546 <do_projectx_playdemo_screensaver+0xa86>
d0081526:	f9bb 1070 	ldrsh.w	r1, [fp, #112]	; 0x70
d008152a:	f9bb 006e 	ldrsh.w	r0, [fp, #110]	; 0x6e
d008152e:	f3c1 130f 	ubfx	r3, r1, #4, #16
d0081532:	1109      	asrs	r1, r1, #4
d0081534:	1100      	asrs	r0, r0, #4
d0081536:	f5b3 7f9e 	cmp.w	r3, #316	; 0x13c
d008153a:	d804      	bhi.n	d0081546 <do_projectx_playdemo_screensaver+0xa86>
d008153c:	b283      	uxth	r3, r0
d008153e:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0081542:	f240 84a7 	bls.w	d0081e94 <do_projectx_playdemo_screensaver+0x13d4>
d0081546:	4dbc      	ldr	r5, [pc, #752]	; (d0081838 <do_projectx_playdemo_screensaver+0xd78>)
d0081548:	f8df 8314 	ldr.w	r8, [pc, #788]	; d0081860 <do_projectx_playdemo_screensaver+0xda0>
d008154c:	e003      	b.n	d0081556 <do_projectx_playdemo_screensaver+0xa96>
d008154e:	3508      	adds	r5, #8
d0081550:	4bba      	ldr	r3, [pc, #744]	; (d008183c <do_projectx_playdemo_screensaver+0xd7c>)
d0081552:	429d      	cmp	r5, r3
d0081554:	d078      	beq.n	d0081648 <do_projectx_playdemo_screensaver+0xb88>
d0081556:	79ab      	ldrb	r3, [r5, #6]
d0081558:	2b00      	cmp	r3, #0
d008155a:	d0f8      	beq.n	d008154e <do_projectx_playdemo_screensaver+0xa8e>
d008155c:	2700      	movs	r7, #0
d008155e:	f8cd 9010 	str.w	r9, [sp, #16]
d0081562:	eb07 0347 	add.w	r3, r7, r7, lsl #1
d0081566:	796e      	ldrb	r6, [r5, #5]
d0081568:	f895 c004 	ldrb.w	ip, [r5, #4]
d008156c:	fa5f fe87 	uxtb.w	lr, r7
d0081570:	eb07 0383 	add.w	r3, r7, r3, lsl #2
d0081574:	f8b5 a002 	ldrh.w	sl, [r5, #2]
d0081578:	f10c 0204 	add.w	r2, ip, #4
d008157c:	f8b5 b000 	ldrh.w	fp, [r5]
d0081580:	4433      	add	r3, r6
d0081582:	4eaf      	ldr	r6, [pc, #700]	; (d0081840 <do_projectx_playdemo_screensaver+0xd80>)
d0081584:	f00e 0001 	and.w	r0, lr, #1
d0081588:	f1bc 0f07 	cmp.w	ip, #7
d008158c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
d0081590:	f100 001d 	add.w	r0, r0, #29
d0081594:	f103 0110 	add.w	r1, r3, #16
d0081598:	56f3      	ldrsb	r3, [r6, r3]
d008159a:	f001 013f 	and.w	r1, r1, #63	; 0x3f
d008159e:	fb02 f303 	mul.w	r3, r2, r3
d00815a2:	5671      	ldrsb	r1, [r6, r1]
d00815a4:	fb02 f201 	mul.w	r2, r2, r1
d00815a8:	fb88 1602 	smull	r1, r6, r8, r2
d00815ac:	ea4f 71e2 	mov.w	r1, r2, asr #31
d00815b0:	4432      	add	r2, r6
d00815b2:	fb88 9603 	smull	r9, r6, r8, r3
d00815b6:	441e      	add	r6, r3
d00815b8:	ea4f 73e3 	mov.w	r3, r3, asr #31
d00815bc:	ebc1 11a2 	rsb	r1, r1, r2, asr #6
d00815c0:	ebc3 16a6 	rsb	r6, r3, r6, asr #6
d00815c4:	eb07 025c 	add.w	r2, r7, ip, lsr #1
d00815c8:	4451      	add	r1, sl
d00815ca:	445e      	add	r6, fp
d00815cc:	f102 0202 	add.w	r2, r2, #2
d00815d0:	b209      	sxth	r1, r1
d00815d2:	b236      	sxth	r6, r6
d00815d4:	b212      	sxth	r2, r2
d00815d6:	f200 8305 	bhi.w	d0081be4 <do_projectx_playdemo_screensaver+0x1124>
d00815da:	f894 a00c 	ldrb.w	sl, [r4, #12]
d00815de:	f894 e00d 	ldrb.w	lr, [r4, #13]
d00815e2:	f894 c00e 	ldrb.w	ip, [r4, #14]
d00815e6:	ea4a 2e0e 	orr.w	lr, sl, lr, lsl #8
d00815ea:	7be3      	ldrb	r3, [r4, #15]
d00815ec:	9103      	str	r1, [sp, #12]
d00815ee:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00815f2:	9202      	str	r2, [sp, #8]
d00815f4:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d00815f8:	685b      	ldr	r3, [r3, #4]
d00815fa:	68db      	ldr	r3, [r3, #12]
d00815fc:	4798      	blx	r3
d00815fe:	9a02      	ldr	r2, [sp, #8]
d0081600:	9903      	ldr	r1, [sp, #12]
d0081602:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0081606:	4630      	mov	r0, r6
d0081608:	7b63      	ldrb	r3, [r4, #13]
d008160a:	3701      	adds	r7, #1
d008160c:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0081610:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d0081614:	7be3      	ldrb	r3, [r4, #15]
d0081616:	ea4c 460e 	orr.w	r6, ip, lr, lsl #16
d008161a:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d008161e:	685b      	ldr	r3, [r3, #4]
d0081620:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d0081622:	4798      	blx	r3
d0081624:	2f04      	cmp	r7, #4
d0081626:	d19c      	bne.n	d0081562 <do_projectx_playdemo_screensaver+0xaa2>
d0081628:	792b      	ldrb	r3, [r5, #4]
d008162a:	f8dd 9010 	ldr.w	r9, [sp, #16]
d008162e:	3301      	adds	r3, #1
d0081630:	b2db      	uxtb	r3, r3
d0081632:	2b21      	cmp	r3, #33	; 0x21
d0081634:	712b      	strb	r3, [r5, #4]
d0081636:	d98a      	bls.n	d008154e <do_projectx_playdemo_screensaver+0xa8e>
d0081638:	f04f 0300 	mov.w	r3, #0
d008163c:	3508      	adds	r5, #8
d008163e:	f805 3c02 	strb.w	r3, [r5, #-2]
d0081642:	4b7e      	ldr	r3, [pc, #504]	; (d008183c <do_projectx_playdemo_screensaver+0xd7c>)
d0081644:	429d      	cmp	r5, r3
d0081646:	d186      	bne.n	d0081556 <do_projectx_playdemo_screensaver+0xa96>
d0081648:	4f7e      	ldr	r7, [pc, #504]	; (d0081844 <do_projectx_playdemo_screensaver+0xd84>)
d008164a:	2620      	movs	r6, #32
d008164c:	f8df 8214 	ldr.w	r8, [pc, #532]	; d0081864 <do_projectx_playdemo_screensaver+0xda4>
d0081650:	7b22      	ldrb	r2, [r4, #12]
d0081652:	2320      	movs	r3, #32
d0081654:	7b61      	ldrb	r1, [r4, #13]
d0081656:	4640      	mov	r0, r8
d0081658:	7ba5      	ldrb	r5, [r4, #14]
d008165a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d008165e:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0081662:	f9b9 2002 	ldrsh.w	r2, [r9, #2]
d0081666:	ea41 4505 	orr.w	r5, r1, r5, lsl #16
d008166a:	f939 1b0c 	ldrsh.w	r1, [r9], #12
d008166e:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0081672:	686d      	ldr	r5, [r5, #4]
d0081674:	9600      	str	r6, [sp, #0]
d0081676:	69ad      	ldr	r5, [r5, #24]
d0081678:	47a8      	blx	r5
d008167a:	45b9      	cmp	r9, r7
d008167c:	d1e8      	bne.n	d0081650 <do_projectx_playdemo_screensaver+0xb90>
d008167e:	4b72      	ldr	r3, [pc, #456]	; (d0081848 <do_projectx_playdemo_screensaver+0xd88>)
d0081680:	f9b3 1000 	ldrsh.w	r1, [r3]
d0081684:	2900      	cmp	r1, #0
d0081686:	db1a      	blt.n	d00816be <do_projectx_playdemo_screensaver+0xbfe>
d0081688:	4b70      	ldr	r3, [pc, #448]	; (d008184c <do_projectx_playdemo_screensaver+0xd8c>)
d008168a:	781b      	ldrb	r3, [r3, #0]
d008168c:	b11b      	cbz	r3, d0081696 <do_projectx_playdemo_screensaver+0xbd6>
d008168e:	4b70      	ldr	r3, [pc, #448]	; (d0081850 <do_projectx_playdemo_screensaver+0xd90>)
d0081690:	881b      	ldrh	r3, [r3, #0]
d0081692:	07db      	lsls	r3, r3, #31
d0081694:	d413      	bmi.n	d00816be <do_projectx_playdemo_screensaver+0xbfe>
d0081696:	7b23      	ldrb	r3, [r4, #12]
d0081698:	2511      	movs	r5, #17
d008169a:	7b60      	ldrb	r0, [r4, #13]
d008169c:	7ba6      	ldrb	r6, [r4, #14]
d008169e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00816a2:	7be0      	ldrb	r0, [r4, #15]
d00816a4:	4a6b      	ldr	r2, [pc, #428]	; (d0081854 <do_projectx_playdemo_screensaver+0xd94>)
d00816a6:	ea43 4406 	orr.w	r4, r3, r6, lsl #16
d00816aa:	231f      	movs	r3, #31
d00816ac:	f9b2 2000 	ldrsh.w	r2, [r2]
d00816b0:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d00816b4:	4868      	ldr	r0, [pc, #416]	; (d0081858 <do_projectx_playdemo_screensaver+0xd98>)
d00816b6:	6864      	ldr	r4, [r4, #4]
d00816b8:	9500      	str	r5, [sp, #0]
d00816ba:	69a4      	ldr	r4, [r4, #24]
d00816bc:	47a0      	blx	r4
d00816be:	b00b      	add	sp, #44	; 0x2c
d00816c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00816c4:	3b01      	subs	r3, #1
d00816c6:	b29b      	uxth	r3, r3
d00816c8:	817b      	strh	r3, [r7, #10]
d00816ca:	2b00      	cmp	r3, #0
d00816cc:	f47f ac84 	bne.w	d0080fd8 <do_projectx_playdemo_screensaver+0x518>
d00816d0:	e47b      	b.n	d0080fca <do_projectx_playdemo_screensaver+0x50a>
d00816d2:	4b62      	ldr	r3, [pc, #392]	; (d008185c <do_projectx_playdemo_screensaver+0xd9c>)
d00816d4:	468e      	mov	lr, r1
d00816d6:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
d00816da:	9508      	str	r5, [sp, #32]
d00816dc:	7a1a      	ldrb	r2, [r3, #8]
d00816de:	b322      	cbz	r2, d008172a <do_projectx_playdemo_screensaver+0xc6a>
d00816e0:	8858      	ldrh	r0, [r3, #2]
d00816e2:	88df      	ldrh	r7, [r3, #6]
d00816e4:	881a      	ldrh	r2, [r3, #0]
d00816e6:	4407      	add	r7, r0
d00816e8:	8898      	ldrh	r0, [r3, #4]
d00816ea:	b23f      	sxth	r7, r7
d00816ec:	4402      	add	r2, r0
d00816ee:	1138      	asrs	r0, r7, #4
d00816f0:	805f      	strh	r7, [r3, #2]
d00816f2:	b212      	sxth	r2, r2
d00816f4:	f1a0 072a 	sub.w	r7, r0, #42	; 0x2a
d00816f8:	801a      	strh	r2, [r3, #0]
d00816fa:	1112      	asrs	r2, r2, #4
d00816fc:	f5b7 7f82 	cmp.w	r7, #260	; 0x104
d0081700:	d83d      	bhi.n	d008177e <do_projectx_playdemo_screensaver+0xcbe>
d0081702:	1c95      	adds	r5, r2, #2
d0081704:	bfac      	ite	ge
d0081706:	2700      	movge	r7, #0
d0081708:	2701      	movlt	r7, #1
d008170a:	bbc7      	cbnz	r7, d008177e <do_projectx_playdemo_screensaver+0xcbe>
d008170c:	9d05      	ldr	r5, [sp, #20]
d008170e:	f102 0801 	add.w	r8, r2, #1
d0081712:	4295      	cmp	r5, r2
d0081714:	db09      	blt.n	d008172a <do_projectx_playdemo_screensaver+0xc6a>
d0081716:	45c4      	cmp	ip, r8
d0081718:	dc07      	bgt.n	d008172a <do_projectx_playdemo_screensaver+0xc6a>
d008171a:	9d07      	ldr	r5, [sp, #28]
d008171c:	1c42      	adds	r2, r0, #1
d008171e:	4285      	cmp	r5, r0
d0081720:	db03      	blt.n	d008172a <do_projectx_playdemo_screensaver+0xc6a>
d0081722:	9809      	ldr	r0, [sp, #36]	; 0x24
d0081724:	4290      	cmp	r0, r2
d0081726:	f340 85b3 	ble.w	d0082290 <do_projectx_playdemo_screensaver+0x17d0>
d008172a:	3101      	adds	r1, #1
d008172c:	330a      	adds	r3, #10
d008172e:	290c      	cmp	r1, #12
d0081730:	d1d4      	bne.n	d00816dc <do_projectx_playdemo_screensaver+0xc1c>
d0081732:	9b02      	ldr	r3, [sp, #8]
d0081734:	9d08      	ldr	r5, [sp, #32]
d0081736:	2b1d      	cmp	r3, #29
d0081738:	f77f adb4 	ble.w	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d008173c:	f9b5 0000 	ldrsh.w	r0, [r5]
d0081740:	4b41      	ldr	r3, [pc, #260]	; (d0081848 <do_projectx_playdemo_screensaver+0xd88>)
d0081742:	4a44      	ldr	r2, [pc, #272]	; (d0081854 <do_projectx_playdemo_screensaver+0xd94>)
d0081744:	f100 0c1f 	add.w	ip, r0, #31
d0081748:	f9b3 3000 	ldrsh.w	r3, [r3]
d008174c:	f9b2 1000 	ldrsh.w	r1, [r2]
d0081750:	4563      	cmp	r3, ip
d0081752:	f103 021e 	add.w	r2, r3, #30
d0081756:	f101 0710 	add.w	r7, r1, #16
d008175a:	f300 8134 	bgt.w	d00819c6 <do_projectx_playdemo_screensaver+0xf06>
d008175e:	4282      	cmp	r2, r0
d0081760:	f2c0 8131 	blt.w	d00819c6 <do_projectx_playdemo_screensaver+0xf06>
d0081764:	f9b5 0002 	ldrsh.w	r0, [r5, #2]
d0081768:	f100 0c1f 	add.w	ip, r0, #31
d008176c:	4561      	cmp	r1, ip
d008176e:	f300 812a 	bgt.w	d00819c6 <do_projectx_playdemo_screensaver+0xf06>
d0081772:	4287      	cmp	r7, r0
d0081774:	f2c0 8127 	blt.w	d00819c6 <do_projectx_playdemo_screensaver+0xf06>
d0081778:	f04f 0800 	mov.w	r8, #0
d008177c:	e15e      	b.n	d0081a3c <do_projectx_playdemo_screensaver+0xf7c>
d008177e:	3101      	adds	r1, #1
d0081780:	f883 e008 	strb.w	lr, [r3, #8]
d0081784:	330a      	adds	r3, #10
d0081786:	290c      	cmp	r1, #12
d0081788:	d1a8      	bne.n	d00816dc <do_projectx_playdemo_screensaver+0xc1c>
d008178a:	e7d2      	b.n	d0081732 <do_projectx_playdemo_screensaver+0xc72>
d008178c:	9a02      	ldr	r2, [sp, #8]
d008178e:	2a1d      	cmp	r2, #29
d0081790:	f77f ab51 	ble.w	d0080e36 <do_projectx_playdemo_screensaver+0x376>
d0081794:	2b81      	cmp	r3, #129	; 0x81
d0081796:	f63f ab4e 	bhi.w	d0080e36 <do_projectx_playdemo_screensaver+0x376>
d008179a:	9904      	ldr	r1, [sp, #16]
d008179c:	9a02      	ldr	r2, [sp, #8]
d008179e:	f891 002f 	ldrb.w	r0, [r1, #47]	; 0x2f
d00817a2:	f102 071f 	add.w	r7, r2, #31
d00817a6:	f891 c005 	ldrb.w	ip, [r1, #5]
d00817aa:	f891 e00b 	ldrb.w	lr, [r1, #11]
d00817ae:	f891 8011 	ldrb.w	r8, [r1, #17]
d00817b2:	f891 9017 	ldrb.w	r9, [r1, #23]
d00817b6:	7f4b      	ldrb	r3, [r1, #29]
d00817b8:	f891 2023 	ldrb.w	r2, [r1, #35]	; 0x23
d00817bc:	f891 1029 	ldrb.w	r1, [r1, #41]	; 0x29
d00817c0:	2800      	cmp	r0, #0
d00817c2:	f000 8651 	beq.w	d0082468 <do_projectx_playdemo_screensaver+0x19a8>
d00817c6:	2900      	cmp	r1, #0
d00817c8:	f000 86df 	beq.w	d008258a <do_projectx_playdemo_screensaver+0x1aca>
d00817cc:	2a00      	cmp	r2, #0
d00817ce:	f000 8697 	beq.w	d0082500 <do_projectx_playdemo_screensaver+0x1a40>
d00817d2:	2b00      	cmp	r3, #0
d00817d4:	f000 85f6 	beq.w	d00823c4 <do_projectx_playdemo_screensaver+0x1904>
d00817d8:	f9b5 3000 	ldrsh.w	r3, [r5]
d00817dc:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00817e0:	da02      	bge.n	d00817e8 <do_projectx_playdemo_screensaver+0xd28>
d00817e2:	429f      	cmp	r7, r3
d00817e4:	f2c0 8424 	blt.w	d0082030 <do_projectx_playdemo_screensaver+0x1570>
d00817e8:	f9b5 300c 	ldrsh.w	r3, [r5, #12]
d00817ec:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00817f0:	da02      	bge.n	d00817f8 <do_projectx_playdemo_screensaver+0xd38>
d00817f2:	429f      	cmp	r7, r3
d00817f4:	f2c0 844d 	blt.w	d0082092 <do_projectx_playdemo_screensaver+0x15d2>
d00817f8:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
d00817fc:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0081800:	da02      	bge.n	d0081808 <do_projectx_playdemo_screensaver+0xd48>
d0081802:	429f      	cmp	r7, r3
d0081804:	f2c0 845e 	blt.w	d00820c4 <do_projectx_playdemo_screensaver+0x1604>
d0081808:	f9b5 3024 	ldrsh.w	r3, [r5, #36]	; 0x24
d008180c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0081810:	da02      	bge.n	d0081818 <do_projectx_playdemo_screensaver+0xd58>
d0081812:	429f      	cmp	r7, r3
d0081814:	f2c0 8488 	blt.w	d0082128 <do_projectx_playdemo_screensaver+0x1668>
d0081818:	45ba      	cmp	sl, r7
d008181a:	dd03      	ble.n	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d008181c:	f5ba 7ff0 	cmp.w	sl, #480	; 0x1e0
d0081820:	f2c0 8469 	blt.w	d00820f6 <do_projectx_playdemo_screensaver+0x1636>
d0081824:	2303      	movs	r3, #3
d0081826:	7033      	strb	r3, [r6, #0]
d0081828:	f7ff bb05 	b.w	d0080e36 <do_projectx_playdemo_screensaver+0x376>
d008182c:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d0081830:	4611      	mov	r1, r2
d0081832:	801a      	strh	r2, [r3, #0]
d0081834:	f7ff b95c 	b.w	d0080af0 <do_projectx_playdemo_screensaver+0x30>
d0081838:	d00924cc 	.word	0xd00924cc
d008183c:	d009250c 	.word	0xd009250c
d0081840:	d008a370 	.word	0xd008a370
d0081844:	d0092454 	.word	0xd0092454
d0081848:	d0092368 	.word	0xd0092368
d008184c:	d0092548 	.word	0xd0092548
d0081850:	d0092414 	.word	0xd0092414
d0081854:	d009236a 	.word	0xd009236a
d0081858:	d0089828 	.word	0xd0089828
d008185c:	d0092454 	.word	0xd0092454
d0081860:	ea0ea0eb 	.word	0xea0ea0eb
d0081864:	d0089428 	.word	0xd0089428
d0081868:	4dd6      	ldr	r5, [pc, #856]	; (d0081bc4 <do_projectx_playdemo_screensaver+0x1104>)
d008186a:	4698      	mov	r8, r3
d008186c:	461f      	mov	r7, r3
d008186e:	462c      	mov	r4, r5
d0081870:	205a      	movs	r0, #90	; 0x5a
d0081872:	340c      	adds	r4, #12
d0081874:	f001 f89e 	bl	d00829b4 <star_rand>
d0081878:	4603      	mov	r3, r0
d008187a:	20e4      	movs	r0, #228	; 0xe4
d008187c:	443b      	add	r3, r7
d008187e:	374c      	adds	r7, #76	; 0x4c
d0081880:	f503 7302 	add.w	r3, r3, #520	; 0x208
d0081884:	b2bf      	uxth	r7, r7
d0081886:	f824 3c0c 	strh.w	r3, [r4, #-12]
d008188a:	f001 f893 	bl	d00829b4 <star_rand>
d008188e:	4603      	mov	r3, r0
d0081890:	2040      	movs	r0, #64	; 0x40
d0081892:	332a      	adds	r3, #42	; 0x2a
d0081894:	b21b      	sxth	r3, r3
d0081896:	f824 3c08 	strh.w	r3, [r4, #-8]
d008189a:	f824 3c0a 	strh.w	r3, [r4, #-10]
d008189e:	f001 f889 	bl	d00829b4 <star_rand>
d00818a2:	4603      	mov	r3, r0
d00818a4:	201e      	movs	r0, #30
d00818a6:	f804 3c06 	strb.w	r3, [r4, #-6]
d00818aa:	f001 f883 	bl	d00829b4 <star_rand>
d00818ae:	4603      	mov	r3, r0
d00818b0:	2003      	movs	r0, #3
d00818b2:	330a      	adds	r3, #10
d00818b4:	f804 3c05 	strb.w	r3, [r4, #-5]
d00818b8:	f001 f87c 	bl	d00829b4 <star_rand>
d00818bc:	4603      	mov	r3, r0
d00818be:	2078      	movs	r0, #120	; 0x78
d00818c0:	3301      	adds	r3, #1
d00818c2:	f804 3c04 	strb.w	r3, [r4, #-4]
d00818c6:	f001 f875 	bl	d00829b4 <star_rand>
d00818ca:	4440      	add	r0, r8
d00818cc:	f108 030c 	add.w	r3, r8, #12
d00818d0:	f5b7 7fbe 	cmp.w	r7, #380	; 0x17c
d00818d4:	f100 003c 	add.w	r0, r0, #60	; 0x3c
d00818d8:	fa1f f883 	uxth.w	r8, r3
d00818dc:	f824 0c02 	strh.w	r0, [r4, #-2]
d00818e0:	d1c6      	bne.n	d0081870 <do_projectx_playdemo_screensaver+0xdb0>
d00818e2:	2300      	movs	r3, #0
d00818e4:	f8df b2f8 	ldr.w	fp, [pc, #760]	; d0081be0 <do_projectx_playdemo_screensaver+0x1120>
d00818e8:	49b7      	ldr	r1, [pc, #732]	; (d0081bc8 <do_projectx_playdemo_screensaver+0x1108>)
d00818ea:	2201      	movs	r2, #1
d00818ec:	4cb7      	ldr	r4, [pc, #732]	; (d0081bcc <do_projectx_playdemo_screensaver+0x110c>)
d00818ee:	9104      	str	r1, [sp, #16]
d00818f0:	9406      	str	r4, [sp, #24]
d00818f2:	714b      	strb	r3, [r1, #5]
d00818f4:	72cb      	strb	r3, [r1, #11]
d00818f6:	744b      	strb	r3, [r1, #17]
d00818f8:	75cb      	strb	r3, [r1, #23]
d00818fa:	774b      	strb	r3, [r1, #29]
d00818fc:	f881 3023 	strb.w	r3, [r1, #35]	; 0x23
d0081900:	f881 3029 	strb.w	r3, [r1, #41]	; 0x29
d0081904:	f881 302f 	strb.w	r3, [r1, #47]	; 0x2f
d0081908:	f88b 3008 	strb.w	r3, [fp, #8]
d008190c:	f88b 3012 	strb.w	r3, [fp, #18]
d0081910:	f88b 301c 	strb.w	r3, [fp, #28]
d0081914:	f88b 3026 	strb.w	r3, [fp, #38]	; 0x26
d0081918:	f88b 3030 	strb.w	r3, [fp, #48]	; 0x30
d008191c:	f88b 303a 	strb.w	r3, [fp, #58]	; 0x3a
d0081920:	f88b 3044 	strb.w	r3, [fp, #68]	; 0x44
d0081924:	f88b 304e 	strb.w	r3, [fp, #78]	; 0x4e
d0081928:	f88b 3058 	strb.w	r3, [fp, #88]	; 0x58
d008192c:	f88b 3062 	strb.w	r3, [fp, #98]	; 0x62
d0081930:	f88b 306c 	strb.w	r3, [fp, #108]	; 0x6c
d0081934:	f88b 3076 	strb.w	r3, [fp, #118]	; 0x76
d0081938:	71a3      	strb	r3, [r4, #6]
d008193a:	73a3      	strb	r3, [r4, #14]
d008193c:	75a3      	strb	r3, [r4, #22]
d008193e:	77a3      	strb	r3, [r4, #30]
d0081940:	f884 3026 	strb.w	r3, [r4, #38]	; 0x26
d0081944:	f884 302e 	strb.w	r3, [r4, #46]	; 0x2e
d0081948:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d008194c:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
d0081950:	7032      	strb	r2, [r6, #0]
d0081952:	f7ff b8c4 	b.w	d0080ade <do_projectx_playdemo_screensaver+0x1e>
d0081956:	2a00      	cmp	r2, #0
d0081958:	f47f aa6d 	bne.w	d0080e36 <do_projectx_playdemo_screensaver+0x376>
d008195c:	e71a      	b.n	d0081794 <do_projectx_playdemo_screensaver+0xcd4>
d008195e:	f8bb 3002 	ldrh.w	r3, [fp, #2]
d0081962:	f8bb 1006 	ldrh.w	r1, [fp, #6]
d0081966:	f8bb 2000 	ldrh.w	r2, [fp]
d008196a:	440b      	add	r3, r1
d008196c:	f8bb 1004 	ldrh.w	r1, [fp, #4]
d0081970:	b21b      	sxth	r3, r3
d0081972:	440a      	add	r2, r1
d0081974:	1119      	asrs	r1, r3, #4
d0081976:	f8ab 3002 	strh.w	r3, [fp, #2]
d008197a:	b213      	sxth	r3, r2
d008197c:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
d0081980:	f8ab 3000 	strh.w	r3, [fp]
d0081984:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
d0081988:	d802      	bhi.n	d0081990 <do_projectx_playdemo_screensaver+0xed0>
d008198a:	3320      	adds	r3, #32
d008198c:	f6bf ab40 	bge.w	d0081010 <do_projectx_playdemo_screensaver+0x550>
d0081990:	2300      	movs	r3, #0
d0081992:	f88b 3008 	strb.w	r3, [fp, #8]
d0081996:	f7ff bb3b 	b.w	d0081010 <do_projectx_playdemo_screensaver+0x550>
d008199a:	f04f 0900 	mov.w	r9, #0
d008199e:	f7ff b8f1 	b.w	d0080b84 <do_projectx_playdemo_screensaver+0xc4>
d00819a2:	1e93      	subs	r3, r2, #2
d00819a4:	f7ff ba26 	b.w	d0080df4 <do_projectx_playdemo_screensaver+0x334>
d00819a8:	461e      	mov	r6, r3
d00819aa:	f04f 0902 	mov.w	r9, #2
d00819ae:	f7ff b92c 	b.w	d0080c0a <do_projectx_playdemo_screensaver+0x14a>
d00819b2:	461e      	mov	r6, r3
d00819b4:	f04f 0901 	mov.w	r9, #1
d00819b8:	f7ff b905 	b.w	d0080bc6 <do_projectx_playdemo_screensaver+0x106>
d00819bc:	461e      	mov	r6, r3
d00819be:	f04f 0903 	mov.w	r9, #3
d00819c2:	f7ff b947 	b.w	d0080c54 <do_projectx_playdemo_screensaver+0x194>
d00819c6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
d00819ca:	f100 0c1f 	add.w	ip, r0, #31
d00819ce:	4563      	cmp	r3, ip
d00819d0:	dc0c      	bgt.n	d00819ec <do_projectx_playdemo_screensaver+0xf2c>
d00819d2:	4282      	cmp	r2, r0
d00819d4:	db0a      	blt.n	d00819ec <do_projectx_playdemo_screensaver+0xf2c>
d00819d6:	f9b5 000e 	ldrsh.w	r0, [r5, #14]
d00819da:	f100 0c1f 	add.w	ip, r0, #31
d00819de:	4561      	cmp	r1, ip
d00819e0:	dc04      	bgt.n	d00819ec <do_projectx_playdemo_screensaver+0xf2c>
d00819e2:	4287      	cmp	r7, r0
d00819e4:	db02      	blt.n	d00819ec <do_projectx_playdemo_screensaver+0xf2c>
d00819e6:	f04f 0801 	mov.w	r8, #1
d00819ea:	e027      	b.n	d0081a3c <do_projectx_playdemo_screensaver+0xf7c>
d00819ec:	f9b5 0018 	ldrsh.w	r0, [r5, #24]
d00819f0:	f100 0c1f 	add.w	ip, r0, #31
d00819f4:	4563      	cmp	r3, ip
d00819f6:	dc0c      	bgt.n	d0081a12 <do_projectx_playdemo_screensaver+0xf52>
d00819f8:	4282      	cmp	r2, r0
d00819fa:	db0a      	blt.n	d0081a12 <do_projectx_playdemo_screensaver+0xf52>
d00819fc:	f9b5 001a 	ldrsh.w	r0, [r5, #26]
d0081a00:	f100 0c1f 	add.w	ip, r0, #31
d0081a04:	4561      	cmp	r1, ip
d0081a06:	dc04      	bgt.n	d0081a12 <do_projectx_playdemo_screensaver+0xf52>
d0081a08:	4287      	cmp	r7, r0
d0081a0a:	db02      	blt.n	d0081a12 <do_projectx_playdemo_screensaver+0xf52>
d0081a0c:	f04f 0802 	mov.w	r8, #2
d0081a10:	e014      	b.n	d0081a3c <do_projectx_playdemo_screensaver+0xf7c>
d0081a12:	f9b5 0024 	ldrsh.w	r0, [r5, #36]	; 0x24
d0081a16:	f100 0c1f 	add.w	ip, r0, #31
d0081a1a:	4563      	cmp	r3, ip
d0081a1c:	f300 808b 	bgt.w	d0081b36 <do_projectx_playdemo_screensaver+0x1076>
d0081a20:	4282      	cmp	r2, r0
d0081a22:	f2c0 8088 	blt.w	d0081b36 <do_projectx_playdemo_screensaver+0x1076>
d0081a26:	f9b5 0026 	ldrsh.w	r0, [r5, #38]	; 0x26
d0081a2a:	f100 0c1f 	add.w	ip, r0, #31
d0081a2e:	4561      	cmp	r1, ip
d0081a30:	f300 8081 	bgt.w	d0081b36 <do_projectx_playdemo_screensaver+0x1076>
d0081a34:	4287      	cmp	r7, r0
d0081a36:	db7e      	blt.n	d0081b36 <do_projectx_playdemo_screensaver+0x1076>
d0081a38:	f04f 0803 	mov.w	r8, #3
d0081a3c:	2396      	movs	r3, #150	; 0x96
d0081a3e:	4f64      	ldr	r7, [pc, #400]	; (d0081bd0 <do_projectx_playdemo_screensaver+0x1110>)
d0081a40:	f64f 70e1 	movw	r0, #65505	; 0xffe1
d0081a44:	4963      	ldr	r1, [pc, #396]	; (d0081bd4 <do_projectx_playdemo_screensaver+0x1114>)
d0081a46:	703b      	strb	r3, [r7, #0]
d0081a48:	2332      	movs	r3, #50	; 0x32
d0081a4a:	4f63      	ldr	r7, [pc, #396]	; (d0081bd8 <do_projectx_playdemo_screensaver+0x1118>)
d0081a4c:	880a      	ldrh	r2, [r1, #0]
d0081a4e:	8038      	strh	r0, [r7, #0]
d0081a50:	4862      	ldr	r0, [pc, #392]	; (d0081bdc <do_projectx_playdemo_screensaver+0x111c>)
d0081a52:	3201      	adds	r2, #1
d0081a54:	7003      	strb	r3, [r0, #0]
d0081a56:	9806      	ldr	r0, [sp, #24]
d0081a58:	800a      	strh	r2, [r1, #0]
d0081a5a:	7983      	ldrb	r3, [r0, #6]
d0081a5c:	2b00      	cmp	r3, #0
d0081a5e:	f000 85e3 	beq.w	d0082628 <do_projectx_playdemo_screensaver+0x1b68>
d0081a62:	7b83      	ldrb	r3, [r0, #14]
d0081a64:	2b00      	cmp	r3, #0
d0081a66:	f000 8787 	beq.w	d0082978 <do_projectx_playdemo_screensaver+0x1eb8>
d0081a6a:	7d83      	ldrb	r3, [r0, #22]
d0081a6c:	2b00      	cmp	r3, #0
d0081a6e:	f000 8764 	beq.w	d008293a <do_projectx_playdemo_screensaver+0x1e7a>
d0081a72:	7f83      	ldrb	r3, [r0, #30]
d0081a74:	2b00      	cmp	r3, #0
d0081a76:	f000 875e 	beq.w	d0082936 <do_projectx_playdemo_screensaver+0x1e76>
d0081a7a:	f890 3026 	ldrb.w	r3, [r0, #38]	; 0x26
d0081a7e:	2b00      	cmp	r3, #0
d0081a80:	f000 8794 	beq.w	d00829ac <do_projectx_playdemo_screensaver+0x1eec>
d0081a84:	f890 302e 	ldrb.w	r3, [r0, #46]	; 0x2e
d0081a88:	2b00      	cmp	r3, #0
d0081a8a:	f000 878d 	beq.w	d00829a8 <do_projectx_playdemo_screensaver+0x1ee8>
d0081a8e:	f890 3036 	ldrb.w	r3, [r0, #54]	; 0x36
d0081a92:	2b00      	cmp	r3, #0
d0081a94:	f000 85c7 	beq.w	d0082626 <do_projectx_playdemo_screensaver+0x1b66>
d0081a98:	f890 303e 	ldrb.w	r3, [r0, #62]	; 0x3e
d0081a9c:	2b00      	cmp	r3, #0
d0081a9e:	f000 8781 	beq.w	d00829a4 <do_projectx_playdemo_screensaver+0x1ee4>
d0081aa2:	9a06      	ldr	r2, [sp, #24]
d0081aa4:	7b93      	ldrb	r3, [r2, #14]
d0081aa6:	2b00      	cmp	r3, #0
d0081aa8:	f000 877a 	beq.w	d00829a0 <do_projectx_playdemo_screensaver+0x1ee0>
d0081aac:	7d93      	ldrb	r3, [r2, #22]
d0081aae:	2b00      	cmp	r3, #0
d0081ab0:	f000 8774 	beq.w	d008299c <do_projectx_playdemo_screensaver+0x1edc>
d0081ab4:	7f93      	ldrb	r3, [r2, #30]
d0081ab6:	2b00      	cmp	r3, #0
d0081ab8:	f000 876e 	beq.w	d0082998 <do_projectx_playdemo_screensaver+0x1ed8>
d0081abc:	f892 3026 	ldrb.w	r3, [r2, #38]	; 0x26
d0081ac0:	2b00      	cmp	r3, #0
d0081ac2:	f000 8767 	beq.w	d0082994 <do_projectx_playdemo_screensaver+0x1ed4>
d0081ac6:	f892 302e 	ldrb.w	r3, [r2, #46]	; 0x2e
d0081aca:	2b00      	cmp	r3, #0
d0081acc:	f000 872f 	beq.w	d008292e <do_projectx_playdemo_screensaver+0x1e6e>
d0081ad0:	f892 3036 	ldrb.w	r3, [r2, #54]	; 0x36
d0081ad4:	2b00      	cmp	r3, #0
d0081ad6:	f000 8728 	beq.w	d008292a <do_projectx_playdemo_screensaver+0x1e6a>
d0081ada:	f892 303e 	ldrb.w	r3, [r2, #62]	; 0x3e
d0081ade:	2b00      	cmp	r3, #0
d0081ae0:	f000 8727 	beq.w	d0082932 <do_projectx_playdemo_screensaver+0x1e72>
d0081ae4:	ea4f 0348 	mov.w	r3, r8, lsl #1
d0081ae8:	9302      	str	r3, [sp, #8]
d0081aea:	20b4      	movs	r0, #180	; 0xb4
d0081aec:	f000 ff62 	bl	d00829b4 <star_rand>
d0081af0:	9a02      	ldr	r2, [sp, #8]
d0081af2:	4603      	mov	r3, r0
d0081af4:	20e4      	movs	r0, #228	; 0xe4
d0081af6:	4442      	add	r2, r8
d0081af8:	f203 2326 	addw	r3, r3, #550	; 0x226
d0081afc:	eb05 0782 	add.w	r7, r5, r2, lsl #2
d0081b00:	f825 3022 	strh.w	r3, [r5, r2, lsl #2]
d0081b04:	f000 ff56 	bl	d00829b4 <star_rand>
d0081b08:	4603      	mov	r3, r0
d0081b0a:	20a0      	movs	r0, #160	; 0xa0
d0081b0c:	332a      	adds	r3, #42	; 0x2a
d0081b0e:	80bb      	strh	r3, [r7, #4]
d0081b10:	f000 ff50 	bl	d00829b4 <star_rand>
d0081b14:	2300      	movs	r3, #0
d0081b16:	9a04      	ldr	r2, [sp, #16]
d0081b18:	3078      	adds	r0, #120	; 0x78
d0081b1a:	7153      	strb	r3, [r2, #5]
d0081b1c:	72d3      	strb	r3, [r2, #11]
d0081b1e:	8178      	strh	r0, [r7, #10]
d0081b20:	7453      	strb	r3, [r2, #17]
d0081b22:	75d3      	strb	r3, [r2, #23]
d0081b24:	7753      	strb	r3, [r2, #29]
d0081b26:	f882 3023 	strb.w	r3, [r2, #35]	; 0x23
d0081b2a:	f882 3029 	strb.w	r3, [r2, #41]	; 0x29
d0081b2e:	f882 302f 	strb.w	r3, [r2, #47]	; 0x2f
d0081b32:	f7ff bbb7 	b.w	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d0081b36:	f9b5 0030 	ldrsh.w	r0, [r5, #48]	; 0x30
d0081b3a:	f100 0c1f 	add.w	ip, r0, #31
d0081b3e:	459c      	cmp	ip, r3
d0081b40:	f6ff abb0 	blt.w	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d0081b44:	4290      	cmp	r0, r2
d0081b46:	f73f abad 	bgt.w	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d0081b4a:	f9b5 3032 	ldrsh.w	r3, [r5, #50]	; 0x32
d0081b4e:	f103 021f 	add.w	r2, r3, #31
d0081b52:	428a      	cmp	r2, r1
d0081b54:	f6ff aba6 	blt.w	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d0081b58:	42bb      	cmp	r3, r7
d0081b5a:	f73f aba3 	bgt.w	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d0081b5e:	f04f 0804 	mov.w	r8, #4
d0081b62:	e76b      	b.n	d0081a3c <do_projectx_playdemo_screensaver+0xf7c>
d0081b64:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0081b68:	3a06      	subs	r2, #6
d0081b6a:	687f      	ldr	r7, [r7, #4]
d0081b6c:	b212      	sxth	r2, r2
d0081b6e:	9500      	str	r5, [sp, #0]
d0081b70:	69bf      	ldr	r7, [r7, #24]
d0081b72:	47b8      	blx	r7
d0081b74:	7b22      	ldrb	r2, [r4, #12]
d0081b76:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0081b7a:	230b      	movs	r3, #11
d0081b7c:	7ba7      	ldrb	r7, [r4, #14]
d0081b7e:	4640      	mov	r0, r8
d0081b80:	ea42 210c 	orr.w	r1, r2, ip, lsl #8
d0081b84:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0081b88:	f9b6 2002 	ldrsh.w	r2, [r6, #2]
d0081b8c:	ea41 4c07 	orr.w	ip, r1, r7, lsl #16
d0081b90:	f9b6 1000 	ldrsh.w	r1, [r6]
d0081b94:	ea4c 670e 	orr.w	r7, ip, lr, lsl #24
d0081b98:	687f      	ldr	r7, [r7, #4]
d0081b9a:	9500      	str	r5, [sp, #0]
d0081b9c:	69bf      	ldr	r7, [r7, #24]
d0081b9e:	47b8      	blx	r7
d0081ba0:	7b22      	ldrb	r2, [r4, #12]
d0081ba2:	7b61      	ldrb	r1, [r4, #13]
d0081ba4:	230b      	movs	r3, #11
d0081ba6:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0081baa:	4640      	mov	r0, r8
d0081bac:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0081bb0:	8872      	ldrh	r2, [r6, #2]
d0081bb2:	7be7      	ldrb	r7, [r4, #15]
d0081bb4:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0081bb8:	3206      	adds	r2, #6
d0081bba:	f9b6 1000 	ldrsh.w	r1, [r6]
d0081bbe:	f7ff bba7 	b.w	d0081310 <do_projectx_playdemo_screensaver+0x850>
d0081bc2:	bf00      	nop
d0081bc4:	d0092418 	.word	0xd0092418
d0081bc8:	d0092510 	.word	0xd0092510
d0081bcc:	d00924cc 	.word	0xd00924cc
d0081bd0:	d0092548 	.word	0xd0092548
d0081bd4:	d0092540 	.word	0xd0092540
d0081bd8:	d0092368 	.word	0xd0092368
d0081bdc:	d0092549 	.word	0xd0092549
d0081be0:	d0092454 	.word	0xd0092454
d0081be4:	f1bc 0f0f 	cmp.w	ip, #15
d0081be8:	d810      	bhi.n	d0081c0c <do_projectx_playdemo_screensaver+0x114c>
d0081bea:	7b20      	ldrb	r0, [r4, #12]
d0081bec:	f01e 0f01 	tst.w	lr, #1
d0081bf0:	7b63      	ldrb	r3, [r4, #13]
d0081bf2:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0081bf6:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d0081bfa:	9103      	str	r1, [sp, #12]
d0081bfc:	7be3      	ldrb	r3, [r4, #15]
d0081bfe:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0081c02:	9202      	str	r2, [sp, #8]
d0081c04:	bf0c      	ite	eq
d0081c06:	201f      	moveq	r0, #31
d0081c08:	2030      	movne	r0, #48	; 0x30
d0081c0a:	e4f3      	b.n	d00815f4 <do_projectx_playdemo_screensaver+0xb34>
d0081c0c:	f00e 0001 	and.w	r0, lr, #1
d0081c10:	f1bc 0f18 	cmp.w	ip, #24
d0081c14:	9103      	str	r1, [sp, #12]
d0081c16:	f100 0018 	add.w	r0, r0, #24
d0081c1a:	9202      	str	r2, [sp, #8]
d0081c1c:	d80a      	bhi.n	d0081c34 <do_projectx_playdemo_screensaver+0x1174>
d0081c1e:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0081c22:	7b63      	ldrb	r3, [r4, #13]
d0081c24:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0081c28:	ea4e 2e03 	orr.w	lr, lr, r3, lsl #8
d0081c2c:	7be3      	ldrb	r3, [r4, #15]
d0081c2e:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0081c32:	e4df      	b.n	d00815f4 <do_projectx_playdemo_screensaver+0xb34>
d0081c34:	7b20      	ldrb	r0, [r4, #12]
d0081c36:	f01e 0f01 	tst.w	lr, #1
d0081c3a:	7b63      	ldrb	r3, [r4, #13]
d0081c3c:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0081c40:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d0081c44:	7be3      	ldrb	r3, [r4, #15]
d0081c46:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0081c4a:	bf0c      	ite	eq
d0081c4c:	2014      	moveq	r0, #20
d0081c4e:	2012      	movne	r0, #18
d0081c50:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d0081c54:	685b      	ldr	r3, [r3, #4]
d0081c56:	68db      	ldr	r3, [r3, #12]
d0081c58:	4798      	blx	r3
d0081c5a:	9903      	ldr	r1, [sp, #12]
d0081c5c:	9a02      	ldr	r2, [sp, #8]
d0081c5e:	e4d0      	b.n	d0081602 <do_projectx_playdemo_screensaver+0xb42>
d0081c60:	f89b 2008 	ldrb.w	r2, [fp, #8]
d0081c64:	2a00      	cmp	r2, #0
d0081c66:	f000 8393 	beq.w	d0082390 <do_projectx_playdemo_screensaver+0x18d0>
d0081c6a:	f89b 2012 	ldrb.w	r2, [fp, #18]
d0081c6e:	2a00      	cmp	r2, #0
d0081c70:	f000 8390 	beq.w	d0082394 <do_projectx_playdemo_screensaver+0x18d4>
d0081c74:	f89b 201c 	ldrb.w	r2, [fp, #28]
d0081c78:	2a00      	cmp	r2, #0
d0081c7a:	f000 838e 	beq.w	d008239a <do_projectx_playdemo_screensaver+0x18da>
d0081c7e:	f89b 2026 	ldrb.w	r2, [fp, #38]	; 0x26
d0081c82:	2a00      	cmp	r2, #0
d0081c84:	f000 838f 	beq.w	d00823a6 <do_projectx_playdemo_screensaver+0x18e6>
d0081c88:	f89b 2030 	ldrb.w	r2, [fp, #48]	; 0x30
d0081c8c:	2a00      	cmp	r2, #0
d0081c8e:	f000 8387 	beq.w	d00823a0 <do_projectx_playdemo_screensaver+0x18e0>
d0081c92:	f89b 203a 	ldrb.w	r2, [fp, #58]	; 0x3a
d0081c96:	2a00      	cmp	r2, #0
d0081c98:	f000 8388 	beq.w	d00823ac <do_projectx_playdemo_screensaver+0x18ec>
d0081c9c:	f89b 2044 	ldrb.w	r2, [fp, #68]	; 0x44
d0081ca0:	2a00      	cmp	r2, #0
d0081ca2:	f000 8389 	beq.w	d00823b8 <do_projectx_playdemo_screensaver+0x18f8>
d0081ca6:	f89b 204e 	ldrb.w	r2, [fp, #78]	; 0x4e
d0081caa:	2a00      	cmp	r2, #0
d0081cac:	f000 8381 	beq.w	d00823b2 <do_projectx_playdemo_screensaver+0x18f2>
d0081cb0:	f89b 2058 	ldrb.w	r2, [fp, #88]	; 0x58
d0081cb4:	2a00      	cmp	r2, #0
d0081cb6:	f000 8382 	beq.w	d00823be <do_projectx_playdemo_screensaver+0x18fe>
d0081cba:	f89b 2062 	ldrb.w	r2, [fp, #98]	; 0x62
d0081cbe:	2a00      	cmp	r2, #0
d0081cc0:	f000 82b1 	beq.w	d0082226 <do_projectx_playdemo_screensaver+0x1766>
d0081cc4:	f89b 206c 	ldrb.w	r2, [fp, #108]	; 0x6c
d0081cc8:	2a00      	cmp	r2, #0
d0081cca:	f000 82de 	beq.w	d008228a <do_projectx_playdemo_screensaver+0x17ca>
d0081cce:	f89b 2076 	ldrb.w	r2, [fp, #118]	; 0x76
d0081cd2:	2a00      	cmp	r2, #0
d0081cd4:	f000 835b 	beq.w	d008238e <do_projectx_playdemo_screensaver+0x18ce>
d0081cd8:	20aa      	movs	r0, #170	; 0xaa
d0081cda:	f000 fe6b 	bl	d00829b4 <star_rand>
d0081cde:	eb08 03c8 	add.w	r3, r8, r8, lsl #3
d0081ce2:	335f      	adds	r3, #95	; 0x5f
d0081ce4:	4418      	add	r0, r3
d0081ce6:	8178      	strh	r0, [r7, #10]
d0081ce8:	f7ff b976 	b.w	d0080fd8 <do_projectx_playdemo_screensaver+0x518>
d0081cec:	20dc      	movs	r0, #220	; 0xdc
d0081cee:	f000 fe61 	bl	d00829b4 <star_rand>
d0081cf2:	4603      	mov	r3, r0
d0081cf4:	20e4      	movs	r0, #228	; 0xe4
d0081cf6:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d0081cfa:	862b      	strh	r3, [r5, #48]	; 0x30
d0081cfc:	f000 fe5a 	bl	d00829b4 <star_rand>
d0081d00:	4603      	mov	r3, r0
d0081d02:	2040      	movs	r0, #64	; 0x40
d0081d04:	332a      	adds	r3, #42	; 0x2a
d0081d06:	86ab      	strh	r3, [r5, #52]	; 0x34
d0081d08:	f000 fe54 	bl	d00829b4 <star_rand>
d0081d0c:	4603      	mov	r3, r0
d0081d0e:	2022      	movs	r0, #34	; 0x22
d0081d10:	f885 3036 	strb.w	r3, [r5, #54]	; 0x36
d0081d14:	f000 fe4e 	bl	d00829b4 <star_rand>
d0081d18:	4603      	mov	r3, r0
d0081d1a:	2003      	movs	r0, #3
d0081d1c:	330a      	adds	r3, #10
d0081d1e:	f885 3037 	strb.w	r3, [r5, #55]	; 0x37
d0081d22:	f000 fe47 	bl	d00829b4 <star_rand>
d0081d26:	4603      	mov	r3, r0
d0081d28:	2096      	movs	r0, #150	; 0x96
d0081d2a:	3301      	adds	r3, #1
d0081d2c:	f885 3038 	strb.w	r3, [r5, #56]	; 0x38
d0081d30:	f000 fe40 	bl	d00829b4 <star_rand>
d0081d34:	4bbd      	ldr	r3, [pc, #756]	; (d008202c <do_projectx_playdemo_screensaver+0x156c>)
d0081d36:	305a      	adds	r0, #90	; 0x5a
d0081d38:	f9b3 3000 	ldrsh.w	r3, [r3]
d0081d3c:	8768      	strh	r0, [r5, #58]	; 0x3a
d0081d3e:	9302      	str	r3, [sp, #8]
d0081d40:	f7fe bfa5 	b.w	d0080c8e <do_projectx_playdemo_screensaver+0x1ce>
d0081d44:	20dc      	movs	r0, #220	; 0xdc
d0081d46:	f000 fe35 	bl	d00829b4 <star_rand>
d0081d4a:	4603      	mov	r3, r0
d0081d4c:	20e4      	movs	r0, #228	; 0xe4
d0081d4e:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d0081d52:	84ab      	strh	r3, [r5, #36]	; 0x24
d0081d54:	f000 fe2e 	bl	d00829b4 <star_rand>
d0081d58:	4603      	mov	r3, r0
d0081d5a:	2040      	movs	r0, #64	; 0x40
d0081d5c:	332a      	adds	r3, #42	; 0x2a
d0081d5e:	852b      	strh	r3, [r5, #40]	; 0x28
d0081d60:	f000 fe28 	bl	d00829b4 <star_rand>
d0081d64:	4603      	mov	r3, r0
d0081d66:	2022      	movs	r0, #34	; 0x22
d0081d68:	f885 302a 	strb.w	r3, [r5, #42]	; 0x2a
d0081d6c:	f000 fe22 	bl	d00829b4 <star_rand>
d0081d70:	4603      	mov	r3, r0
d0081d72:	2003      	movs	r0, #3
d0081d74:	330a      	adds	r3, #10
d0081d76:	f885 302b 	strb.w	r3, [r5, #43]	; 0x2b
d0081d7a:	f000 fe1b 	bl	d00829b4 <star_rand>
d0081d7e:	4603      	mov	r3, r0
d0081d80:	2096      	movs	r0, #150	; 0x96
d0081d82:	3301      	adds	r3, #1
d0081d84:	f885 302c 	strb.w	r3, [r5, #44]	; 0x2c
d0081d88:	f000 fe14 	bl	d00829b4 <star_rand>
d0081d8c:	4ba7      	ldr	r3, [pc, #668]	; (d008202c <do_projectx_playdemo_screensaver+0x156c>)
d0081d8e:	305a      	adds	r0, #90	; 0x5a
d0081d90:	f9b3 3000 	ldrsh.w	r3, [r3]
d0081d94:	85e8      	strh	r0, [r5, #46]	; 0x2e
d0081d96:	9302      	str	r3, [sp, #8]
d0081d98:	f7fe bf54 	b.w	d0080c44 <do_projectx_playdemo_screensaver+0x184>
d0081d9c:	20dc      	movs	r0, #220	; 0xdc
d0081d9e:	f000 fe09 	bl	d00829b4 <star_rand>
d0081da2:	4603      	mov	r3, r0
d0081da4:	20e4      	movs	r0, #228	; 0xe4
d0081da6:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d0081daa:	832b      	strh	r3, [r5, #24]
d0081dac:	f000 fe02 	bl	d00829b4 <star_rand>
d0081db0:	4603      	mov	r3, r0
d0081db2:	2040      	movs	r0, #64	; 0x40
d0081db4:	332a      	adds	r3, #42	; 0x2a
d0081db6:	83ab      	strh	r3, [r5, #28]
d0081db8:	f000 fdfc 	bl	d00829b4 <star_rand>
d0081dbc:	4603      	mov	r3, r0
d0081dbe:	2022      	movs	r0, #34	; 0x22
d0081dc0:	77ab      	strb	r3, [r5, #30]
d0081dc2:	f000 fdf7 	bl	d00829b4 <star_rand>
d0081dc6:	4603      	mov	r3, r0
d0081dc8:	2003      	movs	r0, #3
d0081dca:	330a      	adds	r3, #10
d0081dcc:	77eb      	strb	r3, [r5, #31]
d0081dce:	f000 fdf1 	bl	d00829b4 <star_rand>
d0081dd2:	4603      	mov	r3, r0
d0081dd4:	2096      	movs	r0, #150	; 0x96
d0081dd6:	3301      	adds	r3, #1
d0081dd8:	f885 3020 	strb.w	r3, [r5, #32]
d0081ddc:	f000 fdea 	bl	d00829b4 <star_rand>
d0081de0:	4b92      	ldr	r3, [pc, #584]	; (d008202c <do_projectx_playdemo_screensaver+0x156c>)
d0081de2:	305a      	adds	r0, #90	; 0x5a
d0081de4:	f9b3 3000 	ldrsh.w	r3, [r3]
d0081de8:	8468      	strh	r0, [r5, #34]	; 0x22
d0081dea:	9302      	str	r3, [sp, #8]
d0081dec:	f7fe bf05 	b.w	d0080bfa <do_projectx_playdemo_screensaver+0x13a>
d0081df0:	20dc      	movs	r0, #220	; 0xdc
d0081df2:	f000 fddf 	bl	d00829b4 <star_rand>
d0081df6:	4603      	mov	r3, r0
d0081df8:	20e4      	movs	r0, #228	; 0xe4
d0081dfa:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d0081dfe:	81ab      	strh	r3, [r5, #12]
d0081e00:	f000 fdd8 	bl	d00829b4 <star_rand>
d0081e04:	4603      	mov	r3, r0
d0081e06:	2040      	movs	r0, #64	; 0x40
d0081e08:	332a      	adds	r3, #42	; 0x2a
d0081e0a:	822b      	strh	r3, [r5, #16]
d0081e0c:	f000 fdd2 	bl	d00829b4 <star_rand>
d0081e10:	4603      	mov	r3, r0
d0081e12:	2022      	movs	r0, #34	; 0x22
d0081e14:	74ab      	strb	r3, [r5, #18]
d0081e16:	f000 fdcd 	bl	d00829b4 <star_rand>
d0081e1a:	4603      	mov	r3, r0
d0081e1c:	2003      	movs	r0, #3
d0081e1e:	330a      	adds	r3, #10
d0081e20:	74eb      	strb	r3, [r5, #19]
d0081e22:	f000 fdc7 	bl	d00829b4 <star_rand>
d0081e26:	4603      	mov	r3, r0
d0081e28:	2096      	movs	r0, #150	; 0x96
d0081e2a:	3301      	adds	r3, #1
d0081e2c:	752b      	strb	r3, [r5, #20]
d0081e2e:	f000 fdc1 	bl	d00829b4 <star_rand>
d0081e32:	4b7e      	ldr	r3, [pc, #504]	; (d008202c <do_projectx_playdemo_screensaver+0x156c>)
d0081e34:	305a      	adds	r0, #90	; 0x5a
d0081e36:	f9b3 3000 	ldrsh.w	r3, [r3]
d0081e3a:	82e8      	strh	r0, [r5, #22]
d0081e3c:	9302      	str	r3, [sp, #8]
d0081e3e:	f7fe beba 	b.w	d0080bb6 <do_projectx_playdemo_screensaver+0xf6>
d0081e42:	20dc      	movs	r0, #220	; 0xdc
d0081e44:	f000 fdb6 	bl	d00829b4 <star_rand>
d0081e48:	4603      	mov	r3, r0
d0081e4a:	20e4      	movs	r0, #228	; 0xe4
d0081e4c:	f503 73fc 	add.w	r3, r3, #504	; 0x1f8
d0081e50:	802b      	strh	r3, [r5, #0]
d0081e52:	f000 fdaf 	bl	d00829b4 <star_rand>
d0081e56:	4603      	mov	r3, r0
d0081e58:	2040      	movs	r0, #64	; 0x40
d0081e5a:	332a      	adds	r3, #42	; 0x2a
d0081e5c:	80ab      	strh	r3, [r5, #4]
d0081e5e:	f000 fda9 	bl	d00829b4 <star_rand>
d0081e62:	4603      	mov	r3, r0
d0081e64:	2022      	movs	r0, #34	; 0x22
d0081e66:	71ab      	strb	r3, [r5, #6]
d0081e68:	f000 fda4 	bl	d00829b4 <star_rand>
d0081e6c:	4603      	mov	r3, r0
d0081e6e:	2003      	movs	r0, #3
d0081e70:	330a      	adds	r3, #10
d0081e72:	71eb      	strb	r3, [r5, #7]
d0081e74:	f000 fd9e 	bl	d00829b4 <star_rand>
d0081e78:	4603      	mov	r3, r0
d0081e7a:	2096      	movs	r0, #150	; 0x96
d0081e7c:	3301      	adds	r3, #1
d0081e7e:	722b      	strb	r3, [r5, #8]
d0081e80:	f000 fd98 	bl	d00829b4 <star_rand>
d0081e84:	4b69      	ldr	r3, [pc, #420]	; (d008202c <do_projectx_playdemo_screensaver+0x156c>)
d0081e86:	305a      	adds	r0, #90	; 0x5a
d0081e88:	f9b3 3000 	ldrsh.w	r3, [r3]
d0081e8c:	8168      	strh	r0, [r5, #10]
d0081e8e:	9302      	str	r3, [sp, #8]
d0081e90:	f7fe be6b 	b.w	d0080b6a <do_projectx_playdemo_screensaver+0xaa>
d0081e94:	7b22      	ldrb	r2, [r4, #12]
d0081e96:	2304      	movs	r3, #4
d0081e98:	7b67      	ldrb	r7, [r4, #13]
d0081e9a:	7ba6      	ldrb	r6, [r4, #14]
d0081e9c:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
d0081ea0:	7be5      	ldrb	r5, [r4, #15]
d0081ea2:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d0081ea6:	461a      	mov	r2, r3
d0081ea8:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0081eac:	686d      	ldr	r5, [r5, #4]
d0081eae:	686d      	ldr	r5, [r5, #4]
d0081eb0:	47a8      	blx	r5
d0081eb2:	f7ff bb48 	b.w	d0081546 <do_projectx_playdemo_screensaver+0xa86>
d0081eb6:	7b22      	ldrb	r2, [r4, #12]
d0081eb8:	2304      	movs	r3, #4
d0081eba:	7b66      	ldrb	r6, [r4, #13]
d0081ebc:	7ba5      	ldrb	r5, [r4, #14]
d0081ebe:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081ec2:	7be6      	ldrb	r6, [r4, #15]
d0081ec4:	461a      	mov	r2, r3
d0081ec6:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081eca:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081ece:	686d      	ldr	r5, [r5, #4]
d0081ed0:	686d      	ldr	r5, [r5, #4]
d0081ed2:	47a8      	blx	r5
d0081ed4:	f7ff bb24 	b.w	d0081520 <do_projectx_playdemo_screensaver+0xa60>
d0081ed8:	7b22      	ldrb	r2, [r4, #12]
d0081eda:	2304      	movs	r3, #4
d0081edc:	7b66      	ldrb	r6, [r4, #13]
d0081ede:	7ba5      	ldrb	r5, [r4, #14]
d0081ee0:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081ee4:	7be6      	ldrb	r6, [r4, #15]
d0081ee6:	461a      	mov	r2, r3
d0081ee8:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081eec:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081ef0:	686d      	ldr	r5, [r5, #4]
d0081ef2:	686d      	ldr	r5, [r5, #4]
d0081ef4:	47a8      	blx	r5
d0081ef6:	f7ff bb00 	b.w	d00814fa <do_projectx_playdemo_screensaver+0xa3a>
d0081efa:	7b22      	ldrb	r2, [r4, #12]
d0081efc:	2304      	movs	r3, #4
d0081efe:	7b66      	ldrb	r6, [r4, #13]
d0081f00:	7ba5      	ldrb	r5, [r4, #14]
d0081f02:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081f06:	7be6      	ldrb	r6, [r4, #15]
d0081f08:	461a      	mov	r2, r3
d0081f0a:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081f0e:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081f12:	686d      	ldr	r5, [r5, #4]
d0081f14:	686d      	ldr	r5, [r5, #4]
d0081f16:	47a8      	blx	r5
d0081f18:	f7ff badc 	b.w	d00814d4 <do_projectx_playdemo_screensaver+0xa14>
d0081f1c:	7b22      	ldrb	r2, [r4, #12]
d0081f1e:	2304      	movs	r3, #4
d0081f20:	7b66      	ldrb	r6, [r4, #13]
d0081f22:	7ba5      	ldrb	r5, [r4, #14]
d0081f24:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081f28:	7be6      	ldrb	r6, [r4, #15]
d0081f2a:	461a      	mov	r2, r3
d0081f2c:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081f30:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081f34:	686d      	ldr	r5, [r5, #4]
d0081f36:	686d      	ldr	r5, [r5, #4]
d0081f38:	47a8      	blx	r5
d0081f3a:	f7ff bab8 	b.w	d00814ae <do_projectx_playdemo_screensaver+0x9ee>
d0081f3e:	7b22      	ldrb	r2, [r4, #12]
d0081f40:	2304      	movs	r3, #4
d0081f42:	7b66      	ldrb	r6, [r4, #13]
d0081f44:	7ba5      	ldrb	r5, [r4, #14]
d0081f46:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081f4a:	7be6      	ldrb	r6, [r4, #15]
d0081f4c:	461a      	mov	r2, r3
d0081f4e:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081f52:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081f56:	686d      	ldr	r5, [r5, #4]
d0081f58:	686d      	ldr	r5, [r5, #4]
d0081f5a:	47a8      	blx	r5
d0081f5c:	f7ff ba94 	b.w	d0081488 <do_projectx_playdemo_screensaver+0x9c8>
d0081f60:	7b22      	ldrb	r2, [r4, #12]
d0081f62:	2304      	movs	r3, #4
d0081f64:	7b66      	ldrb	r6, [r4, #13]
d0081f66:	7ba5      	ldrb	r5, [r4, #14]
d0081f68:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081f6c:	7be6      	ldrb	r6, [r4, #15]
d0081f6e:	461a      	mov	r2, r3
d0081f70:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081f74:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081f78:	686d      	ldr	r5, [r5, #4]
d0081f7a:	686d      	ldr	r5, [r5, #4]
d0081f7c:	47a8      	blx	r5
d0081f7e:	f7ff ba70 	b.w	d0081462 <do_projectx_playdemo_screensaver+0x9a2>
d0081f82:	7b22      	ldrb	r2, [r4, #12]
d0081f84:	2304      	movs	r3, #4
d0081f86:	7b66      	ldrb	r6, [r4, #13]
d0081f88:	7ba5      	ldrb	r5, [r4, #14]
d0081f8a:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081f8e:	7be6      	ldrb	r6, [r4, #15]
d0081f90:	461a      	mov	r2, r3
d0081f92:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081f96:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081f9a:	686d      	ldr	r5, [r5, #4]
d0081f9c:	686d      	ldr	r5, [r5, #4]
d0081f9e:	47a8      	blx	r5
d0081fa0:	f7ff ba4c 	b.w	d008143c <do_projectx_playdemo_screensaver+0x97c>
d0081fa4:	7b22      	ldrb	r2, [r4, #12]
d0081fa6:	2304      	movs	r3, #4
d0081fa8:	7b66      	ldrb	r6, [r4, #13]
d0081faa:	7ba5      	ldrb	r5, [r4, #14]
d0081fac:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081fb0:	7be6      	ldrb	r6, [r4, #15]
d0081fb2:	461a      	mov	r2, r3
d0081fb4:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081fb8:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081fbc:	686d      	ldr	r5, [r5, #4]
d0081fbe:	686d      	ldr	r5, [r5, #4]
d0081fc0:	47a8      	blx	r5
d0081fc2:	f7ff ba28 	b.w	d0081416 <do_projectx_playdemo_screensaver+0x956>
d0081fc6:	7b22      	ldrb	r2, [r4, #12]
d0081fc8:	2304      	movs	r3, #4
d0081fca:	7b66      	ldrb	r6, [r4, #13]
d0081fcc:	7ba5      	ldrb	r5, [r4, #14]
d0081fce:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081fd2:	7be6      	ldrb	r6, [r4, #15]
d0081fd4:	461a      	mov	r2, r3
d0081fd6:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081fda:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0081fde:	686d      	ldr	r5, [r5, #4]
d0081fe0:	686d      	ldr	r5, [r5, #4]
d0081fe2:	47a8      	blx	r5
d0081fe4:	f7ff ba04 	b.w	d00813f0 <do_projectx_playdemo_screensaver+0x930>
d0081fe8:	7b22      	ldrb	r2, [r4, #12]
d0081fea:	2304      	movs	r3, #4
d0081fec:	7b66      	ldrb	r6, [r4, #13]
d0081fee:	7ba5      	ldrb	r5, [r4, #14]
d0081ff0:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0081ff4:	7be6      	ldrb	r6, [r4, #15]
d0081ff6:	461a      	mov	r2, r3
d0081ff8:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0081ffc:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0082000:	686d      	ldr	r5, [r5, #4]
d0082002:	686d      	ldr	r5, [r5, #4]
d0082004:	47a8      	blx	r5
d0082006:	f7ff b9e0 	b.w	d00813ca <do_projectx_playdemo_screensaver+0x90a>
d008200a:	7b22      	ldrb	r2, [r4, #12]
d008200c:	2304      	movs	r3, #4
d008200e:	7b66      	ldrb	r6, [r4, #13]
d0082010:	7ba5      	ldrb	r5, [r4, #14]
d0082012:	ea42 2706 	orr.w	r7, r2, r6, lsl #8
d0082016:	7be6      	ldrb	r6, [r4, #15]
d0082018:	461a      	mov	r2, r3
d008201a:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d008201e:	ea47 6506 	orr.w	r5, r7, r6, lsl #24
d0082022:	686d      	ldr	r5, [r5, #4]
d0082024:	686d      	ldr	r5, [r5, #4]
d0082026:	47a8      	blx	r5
d0082028:	f7ff b9bc 	b.w	d00813a4 <do_projectx_playdemo_screensaver+0x8e4>
d008202c:	d0092368 	.word	0xd0092368
d0082030:	886b      	ldrh	r3, [r5, #2]
d0082032:	9a03      	ldr	r2, [sp, #12]
d0082034:	3310      	adds	r3, #16
d0082036:	b21b      	sxth	r3, r3
d0082038:	1a9b      	subs	r3, r3, r2
d008203a:	3315      	adds	r3, #21
d008203c:	2b2a      	cmp	r3, #42	; 0x2a
d008203e:	f63f abd3 	bhi.w	d00817e8 <do_projectx_playdemo_screensaver+0xd28>
d0082042:	f1bc 0f00 	cmp.w	ip, #0
d0082046:	d00d      	beq.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d0082048:	f1be 0f00 	cmp.w	lr, #0
d008204c:	f000 82e8 	beq.w	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d0082050:	f1b8 0f00 	cmp.w	r8, #0
d0082054:	f000 82e1 	beq.w	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d0082058:	f1b9 0f00 	cmp.w	r9, #0
d008205c:	f47f abc4 	bne.w	d00817e8 <do_projectx_playdemo_screensaver+0xd28>
d0082060:	f04f 0c03 	mov.w	ip, #3
d0082064:	9a02      	ldr	r2, [sp, #8]
d0082066:	eb0c 034c 	add.w	r3, ip, ip, lsl #1
d008206a:	9f04      	ldr	r7, [sp, #16]
d008206c:	f44f 7c80 	mov.w	ip, #256	; 0x100
d0082070:	321d      	adds	r2, #29
d0082072:	200a      	movs	r0, #10
d0082074:	f827 2013 	strh.w	r2, [r7, r3, lsl #1]
d0082078:	eb07 0343 	add.w	r3, r7, r3, lsl #1
d008207c:	9a03      	ldr	r2, [sp, #12]
d008207e:	f8a3 c004 	strh.w	ip, [r3, #4]
d0082082:	805a      	strh	r2, [r3, #2]
d0082084:	f000 fc96 	bl	d00829b4 <star_rand>
d0082088:	3009      	adds	r0, #9
d008208a:	b2c3      	uxtb	r3, r0
d008208c:	7033      	strb	r3, [r6, #0]
d008208e:	f7fe bed2 	b.w	d0080e36 <do_projectx_playdemo_screensaver+0x376>
d0082092:	89eb      	ldrh	r3, [r5, #14]
d0082094:	9a03      	ldr	r2, [sp, #12]
d0082096:	3310      	adds	r3, #16
d0082098:	b21b      	sxth	r3, r3
d008209a:	1a9b      	subs	r3, r3, r2
d008209c:	3315      	adds	r3, #21
d008209e:	2b2a      	cmp	r3, #42	; 0x2a
d00820a0:	f63f abaa 	bhi.w	d00817f8 <do_projectx_playdemo_screensaver+0xd38>
d00820a4:	f1bc 0f00 	cmp.w	ip, #0
d00820a8:	d0dc      	beq.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d00820aa:	f1be 0f00 	cmp.w	lr, #0
d00820ae:	f000 82b7 	beq.w	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d00820b2:	f1b8 0f00 	cmp.w	r8, #0
d00820b6:	f000 82b0 	beq.w	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d00820ba:	f1b9 0f00 	cmp.w	r9, #0
d00820be:	f47f ab9b 	bne.w	d00817f8 <do_projectx_playdemo_screensaver+0xd38>
d00820c2:	e7cd      	b.n	d0082060 <do_projectx_playdemo_screensaver+0x15a0>
d00820c4:	8b6b      	ldrh	r3, [r5, #26]
d00820c6:	9a03      	ldr	r2, [sp, #12]
d00820c8:	3310      	adds	r3, #16
d00820ca:	b21b      	sxth	r3, r3
d00820cc:	1a9b      	subs	r3, r3, r2
d00820ce:	3315      	adds	r3, #21
d00820d0:	2b2a      	cmp	r3, #42	; 0x2a
d00820d2:	f63f ab99 	bhi.w	d0081808 <do_projectx_playdemo_screensaver+0xd48>
d00820d6:	f1bc 0f00 	cmp.w	ip, #0
d00820da:	d0c3      	beq.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d00820dc:	f1be 0f00 	cmp.w	lr, #0
d00820e0:	f000 829e 	beq.w	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d00820e4:	f1b8 0f00 	cmp.w	r8, #0
d00820e8:	f000 8297 	beq.w	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d00820ec:	f1b9 0f00 	cmp.w	r9, #0
d00820f0:	f47f ab8a 	bne.w	d0081808 <do_projectx_playdemo_screensaver+0xd48>
d00820f4:	e7b4      	b.n	d0082060 <do_projectx_playdemo_screensaver+0x15a0>
d00820f6:	8e6b      	ldrh	r3, [r5, #50]	; 0x32
d00820f8:	9a03      	ldr	r2, [sp, #12]
d00820fa:	3310      	adds	r3, #16
d00820fc:	b21b      	sxth	r3, r3
d00820fe:	1a9b      	subs	r3, r3, r2
d0082100:	3315      	adds	r3, #21
d0082102:	2b2a      	cmp	r3, #42	; 0x2a
d0082104:	f63f ab8e 	bhi.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d0082108:	f1bc 0f00 	cmp.w	ip, #0
d008210c:	d0aa      	beq.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d008210e:	f1be 0f00 	cmp.w	lr, #0
d0082112:	f000 8285 	beq.w	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d0082116:	f1b8 0f00 	cmp.w	r8, #0
d008211a:	f000 827e 	beq.w	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d008211e:	f1b9 0f00 	cmp.w	r9, #0
d0082122:	f47f ab7f 	bne.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d0082126:	e79b      	b.n	d0082060 <do_projectx_playdemo_screensaver+0x15a0>
d0082128:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
d008212a:	9a03      	ldr	r2, [sp, #12]
d008212c:	3310      	adds	r3, #16
d008212e:	b21b      	sxth	r3, r3
d0082130:	1a9b      	subs	r3, r3, r2
d0082132:	3315      	adds	r3, #21
d0082134:	2b2a      	cmp	r3, #42	; 0x2a
d0082136:	f63f ab6f 	bhi.w	d0081818 <do_projectx_playdemo_screensaver+0xd58>
d008213a:	f1bc 0f00 	cmp.w	ip, #0
d008213e:	d091      	beq.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d0082140:	f1be 0f00 	cmp.w	lr, #0
d0082144:	f000 826c 	beq.w	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d0082148:	f1b8 0f00 	cmp.w	r8, #0
d008214c:	f000 8265 	beq.w	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d0082150:	f1b9 0f00 	cmp.w	r9, #0
d0082154:	f47f ab60 	bne.w	d0081818 <do_projectx_playdemo_screensaver+0xd58>
d0082158:	e782      	b.n	d0082060 <do_projectx_playdemo_screensaver+0x15a0>
d008215a:	f04f 0901 	mov.w	r9, #1
d008215e:	4bbb      	ldr	r3, [pc, #748]	; (d008244c <do_projectx_playdemo_screensaver+0x198c>)
d0082160:	9a06      	ldr	r2, [sp, #24]
d0082162:	681b      	ldr	r3, [r3, #0]
d0082164:	f892 c006 	ldrb.w	ip, [r2, #6]
d0082168:	3307      	adds	r3, #7
d008216a:	4ab8      	ldr	r2, [pc, #736]	; (d008244c <do_projectx_playdemo_screensaver+0x198c>)
d008216c:	f887 8005 	strb.w	r8, [r7, #5]
d0082170:	6013      	str	r3, [r2, #0]
d0082172:	f1bc 0f00 	cmp.w	ip, #0
d0082176:	f000 82b1 	beq.w	d00826dc <do_projectx_playdemo_screensaver+0x1c1c>
d008217a:	9a06      	ldr	r2, [sp, #24]
d008217c:	7b93      	ldrb	r3, [r2, #14]
d008217e:	2b00      	cmp	r3, #0
d0082180:	f000 82aa 	beq.w	d00826d8 <do_projectx_playdemo_screensaver+0x1c18>
d0082184:	7d93      	ldrb	r3, [r2, #22]
d0082186:	2b00      	cmp	r3, #0
d0082188:	f000 82a4 	beq.w	d00826d4 <do_projectx_playdemo_screensaver+0x1c14>
d008218c:	7f93      	ldrb	r3, [r2, #30]
d008218e:	2b00      	cmp	r3, #0
d0082190:	f000 829e 	beq.w	d00826d0 <do_projectx_playdemo_screensaver+0x1c10>
d0082194:	f892 3026 	ldrb.w	r3, [r2, #38]	; 0x26
d0082198:	2b00      	cmp	r3, #0
d008219a:	f000 8297 	beq.w	d00826cc <do_projectx_playdemo_screensaver+0x1c0c>
d008219e:	f892 302e 	ldrb.w	r3, [r2, #46]	; 0x2e
d00821a2:	2b00      	cmp	r3, #0
d00821a4:	f000 8290 	beq.w	d00826c8 <do_projectx_playdemo_screensaver+0x1c08>
d00821a8:	f892 3036 	ldrb.w	r3, [r2, #54]	; 0x36
d00821ac:	2b00      	cmp	r3, #0
d00821ae:	f000 8289 	beq.w	d00826c4 <do_projectx_playdemo_screensaver+0x1c04>
d00821b2:	f892 303e 	ldrb.w	r3, [r2, #62]	; 0x3e
d00821b6:	2b00      	cmp	r3, #0
d00821b8:	f000 826c 	beq.w	d0082694 <do_projectx_playdemo_screensaver+0x1bd4>
d00821bc:	20e6      	movs	r0, #230	; 0xe6
d00821be:	eb09 0949 	add.w	r9, r9, r9, lsl #1
d00821c2:	f000 fbf7 	bl	d00829b4 <star_rand>
d00821c6:	4603      	mov	r3, r0
d00821c8:	20e4      	movs	r0, #228	; 0xe4
d00821ca:	f503 7300 	add.w	r3, r3, #512	; 0x200
d00821ce:	f825 3029 	strh.w	r3, [r5, r9, lsl #2]
d00821d2:	eb05 0989 	add.w	r9, r5, r9, lsl #2
d00821d6:	f000 fbed 	bl	d00829b4 <star_rand>
d00821da:	4603      	mov	r3, r0
d00821dc:	2040      	movs	r0, #64	; 0x40
d00821de:	332a      	adds	r3, #42	; 0x2a
d00821e0:	f8a9 3004 	strh.w	r3, [r9, #4]
d00821e4:	f000 fbe6 	bl	d00829b4 <star_rand>
d00821e8:	4603      	mov	r3, r0
d00821ea:	2020      	movs	r0, #32
d00821ec:	f889 3006 	strb.w	r3, [r9, #6]
d00821f0:	f000 fbe0 	bl	d00829b4 <star_rand>
d00821f4:	4603      	mov	r3, r0
d00821f6:	2003      	movs	r0, #3
d00821f8:	330c      	adds	r3, #12
d00821fa:	f889 3007 	strb.w	r3, [r9, #7]
d00821fe:	f000 fbd9 	bl	d00829b4 <star_rand>
d0082202:	4603      	mov	r3, r0
d0082204:	20aa      	movs	r0, #170	; 0xaa
d0082206:	3301      	adds	r3, #1
d0082208:	f889 3008 	strb.w	r3, [r9, #8]
d008220c:	f000 fbd2 	bl	d00829b4 <star_rand>
d0082210:	3064      	adds	r0, #100	; 0x64
d0082212:	f8a9 000a 	strh.w	r0, [r9, #10]
d0082216:	f7fe be18 	b.w	d0080e4a <do_projectx_playdemo_screensaver+0x38a>
d008221a:	f04f 0902 	mov.w	r9, #2
d008221e:	e79e      	b.n	d008215e <do_projectx_playdemo_screensaver+0x169e>
d0082220:	f04f 0903 	mov.w	r9, #3
d0082224:	e79b      	b.n	d008215e <do_projectx_playdemo_screensaver+0x169e>
d0082226:	2209      	movs	r2, #9
d0082228:	9205      	str	r2, [sp, #20]
d008222a:	4989      	ldr	r1, [pc, #548]	; (d0082450 <do_projectx_playdemo_screensaver+0x1990>)
d008222c:	3310      	adds	r3, #16
d008222e:	8808      	ldrh	r0, [r1, #0]
d0082230:	b29b      	uxth	r3, r3
d0082232:	8879      	ldrh	r1, [r7, #2]
d0082234:	f5c0 407f 	rsb	r0, r0, #65280	; 0xff00
d0082238:	3110      	adds	r1, #16
d008223a:	30f1      	adds	r0, #241	; 0xf1
d008223c:	b209      	sxth	r1, r1
d008223e:	4418      	add	r0, r3
d0082240:	b200      	sxth	r0, r0
d0082242:	2806      	cmp	r0, #6
d0082244:	f300 8098 	bgt.w	d0082378 <do_projectx_playdemo_screensaver+0x18b8>
d0082248:	f04f 0c01 	mov.w	ip, #1
d008224c:	9803      	ldr	r0, [sp, #12]
d008224e:	011b      	lsls	r3, r3, #4
d0082250:	9a05      	ldr	r2, [sp, #20]
d0082252:	f04f 0e01 	mov.w	lr, #1
d0082256:	1a40      	subs	r0, r0, r1
d0082258:	0109      	lsls	r1, r1, #4
d008225a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d008225e:	0100      	lsls	r0, r0, #4
d0082260:	f82b 3012 	strh.w	r3, [fp, r2, lsl #1]
d0082264:	eb0b 0242 	add.w	r2, fp, r2, lsl #1
d0082268:	fb90 f3fc 	sdiv	r3, r0, ip
d008226c:	b21b      	sxth	r3, r3
d008226e:	f64f 7090 	movw	r0, #65424	; 0xff90
d0082272:	f882 e008 	strb.w	lr, [r2, #8]
d0082276:	2b70      	cmp	r3, #112	; 0x70
d0082278:	8051      	strh	r1, [r2, #2]
d008227a:	8090      	strh	r0, [r2, #4]
d008227c:	dd76      	ble.n	d008236c <do_projectx_playdemo_screensaver+0x18ac>
d008227e:	2370      	movs	r3, #112	; 0x70
d0082280:	80d3      	strh	r3, [r2, #6]
d0082282:	e529      	b.n	d0081cd8 <do_projectx_playdemo_screensaver+0x1218>
d0082284:	f04f 0900 	mov.w	r9, #0
d0082288:	e769      	b.n	d008215e <do_projectx_playdemo_screensaver+0x169e>
d008228a:	220a      	movs	r2, #10
d008228c:	9205      	str	r2, [sp, #20]
d008228e:	e7cc      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d0082290:	4870      	ldr	r0, [pc, #448]	; (d0082454 <do_projectx_playdemo_screensaver+0x1994>)
d0082292:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0082296:	f04f 0c96 	mov.w	ip, #150	; 0x96
d008229a:	9d08      	ldr	r5, [sp, #32]
d008229c:	8802      	ldrh	r2, [r0, #0]
d008229e:	eb0b 0341 	add.w	r3, fp, r1, lsl #1
d00822a2:	496d      	ldr	r1, [pc, #436]	; (d0082458 <do_projectx_playdemo_screensaver+0x1998>)
d00822a4:	3201      	adds	r2, #1
d00822a6:	721f      	strb	r7, [r3, #8]
d00822a8:	f64f 73e1 	movw	r3, #65505	; 0xffe1
d00822ac:	f881 c000 	strb.w	ip, [r1]
d00822b0:	8002      	strh	r2, [r0, #0]
d00822b2:	2132      	movs	r1, #50	; 0x32
d00822b4:	4866      	ldr	r0, [pc, #408]	; (d0082450 <do_projectx_playdemo_screensaver+0x1990>)
d00822b6:	22a3      	movs	r2, #163	; 0xa3
d00822b8:	4f68      	ldr	r7, [pc, #416]	; (d008245c <do_projectx_playdemo_screensaver+0x199c>)
d00822ba:	8003      	strh	r3, [r0, #0]
d00822bc:	9806      	ldr	r0, [sp, #24]
d00822be:	7039      	strb	r1, [r7, #0]
d00822c0:	7983      	ldrb	r3, [r0, #6]
d00822c2:	4967      	ldr	r1, [pc, #412]	; (d0082460 <do_projectx_playdemo_screensaver+0x19a0>)
d00822c4:	800a      	strh	r2, [r1, #0]
d00822c6:	2b00      	cmp	r3, #0
d00822c8:	f000 820b 	beq.w	d00826e2 <do_projectx_playdemo_screensaver+0x1c22>
d00822cc:	7b83      	ldrb	r3, [r0, #14]
d00822ce:	2b00      	cmp	r3, #0
d00822d0:	f000 8354 	beq.w	d008297c <do_projectx_playdemo_screensaver+0x1ebc>
d00822d4:	7d83      	ldrb	r3, [r0, #22]
d00822d6:	2b00      	cmp	r3, #0
d00822d8:	f000 8354 	beq.w	d0082984 <do_projectx_playdemo_screensaver+0x1ec4>
d00822dc:	7f83      	ldrb	r3, [r0, #30]
d00822de:	2b00      	cmp	r3, #0
d00822e0:	f000 834e 	beq.w	d0082980 <do_projectx_playdemo_screensaver+0x1ec0>
d00822e4:	f890 3026 	ldrb.w	r3, [r0, #38]	; 0x26
d00822e8:	2b00      	cmp	r3, #0
d00822ea:	f000 8351 	beq.w	d0082990 <do_projectx_playdemo_screensaver+0x1ed0>
d00822ee:	f890 302e 	ldrb.w	r3, [r0, #46]	; 0x2e
d00822f2:	2b00      	cmp	r3, #0
d00822f4:	f000 834a 	beq.w	d008298c <do_projectx_playdemo_screensaver+0x1ecc>
d00822f8:	f890 3036 	ldrb.w	r3, [r0, #54]	; 0x36
d00822fc:	2b00      	cmp	r3, #0
d00822fe:	f000 81ef 	beq.w	d00826e0 <do_projectx_playdemo_screensaver+0x1c20>
d0082302:	f890 303e 	ldrb.w	r3, [r0, #62]	; 0x3e
d0082306:	2b00      	cmp	r3, #0
d0082308:	f000 833e 	beq.w	d0082988 <do_projectx_playdemo_screensaver+0x1ec8>
d008230c:	2300      	movs	r3, #0
d008230e:	9a04      	ldr	r2, [sp, #16]
d0082310:	f88b 3008 	strb.w	r3, [fp, #8]
d0082314:	f88b 3012 	strb.w	r3, [fp, #18]
d0082318:	f88b 301c 	strb.w	r3, [fp, #28]
d008231c:	f88b 3026 	strb.w	r3, [fp, #38]	; 0x26
d0082320:	f88b 3030 	strb.w	r3, [fp, #48]	; 0x30
d0082324:	f88b 303a 	strb.w	r3, [fp, #58]	; 0x3a
d0082328:	f88b 3044 	strb.w	r3, [fp, #68]	; 0x44
d008232c:	f88b 304e 	strb.w	r3, [fp, #78]	; 0x4e
d0082330:	f88b 3058 	strb.w	r3, [fp, #88]	; 0x58
d0082334:	f88b 3062 	strb.w	r3, [fp, #98]	; 0x62
d0082338:	f88b 306c 	strb.w	r3, [fp, #108]	; 0x6c
d008233c:	f88b 3076 	strb.w	r3, [fp, #118]	; 0x76
d0082340:	7153      	strb	r3, [r2, #5]
d0082342:	72d3      	strb	r3, [r2, #11]
d0082344:	7453      	strb	r3, [r2, #17]
d0082346:	75d3      	strb	r3, [r2, #23]
d0082348:	7753      	strb	r3, [r2, #29]
d008234a:	f882 3023 	strb.w	r3, [r2, #35]	; 0x23
d008234e:	f882 3029 	strb.w	r3, [r2, #41]	; 0x29
d0082352:	f882 302f 	strb.w	r3, [r2, #47]	; 0x2f
d0082356:	9b02      	ldr	r3, [sp, #8]
d0082358:	2b1d      	cmp	r3, #29
d008235a:	f77e afa3 	ble.w	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d008235e:	4b3e      	ldr	r3, [pc, #248]	; (d0082458 <do_projectx_playdemo_screensaver+0x1998>)
d0082360:	781b      	ldrb	r3, [r3, #0]
d0082362:	2b00      	cmp	r3, #0
d0082364:	f47e af9e 	bne.w	d00812a4 <do_projectx_playdemo_screensaver+0x7e4>
d0082368:	f7ff b9e8 	b.w	d008173c <do_projectx_playdemo_screensaver+0xc7c>
d008236c:	f113 0f70 	cmn.w	r3, #112	; 0x70
d0082370:	bfac      	ite	ge
d0082372:	80d3      	strhge	r3, [r2, #6]
d0082374:	80d0      	strhlt	r0, [r2, #6]
d0082376:	e4af      	b.n	d0081cd8 <do_projectx_playdemo_screensaver+0x1218>
d0082378:	4a3a      	ldr	r2, [pc, #232]	; (d0082464 <do_projectx_playdemo_screensaver+0x19a4>)
d008237a:	ea4f 7ce0 	mov.w	ip, r0, asr #31
d008237e:	fb82 2e00 	smull	r2, lr, r2, r0
d0082382:	4470      	add	r0, lr
d0082384:	ebcc 0ca0 	rsb	ip, ip, r0, asr #2
d0082388:	fa0f fc8c 	sxth.w	ip, ip
d008238c:	e75e      	b.n	d008224c <do_projectx_playdemo_screensaver+0x178c>
d008238e:	220b      	movs	r2, #11
d0082390:	9205      	str	r2, [sp, #20]
d0082392:	e74a      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d0082394:	2201      	movs	r2, #1
d0082396:	9205      	str	r2, [sp, #20]
d0082398:	e747      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d008239a:	2202      	movs	r2, #2
d008239c:	9205      	str	r2, [sp, #20]
d008239e:	e744      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d00823a0:	2204      	movs	r2, #4
d00823a2:	9205      	str	r2, [sp, #20]
d00823a4:	e741      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d00823a6:	2203      	movs	r2, #3
d00823a8:	9205      	str	r2, [sp, #20]
d00823aa:	e73e      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d00823ac:	2205      	movs	r2, #5
d00823ae:	9205      	str	r2, [sp, #20]
d00823b0:	e73b      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d00823b2:	2207      	movs	r2, #7
d00823b4:	9205      	str	r2, [sp, #20]
d00823b6:	e738      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d00823b8:	2206      	movs	r2, #6
d00823ba:	9205      	str	r2, [sp, #20]
d00823bc:	e735      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d00823be:	2208      	movs	r2, #8
d00823c0:	9205      	str	r2, [sp, #20]
d00823c2:	e732      	b.n	d008222a <do_projectx_playdemo_screensaver+0x176a>
d00823c4:	f9b5 3000 	ldrsh.w	r3, [r5]
d00823c8:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00823cc:	da02      	bge.n	d00823d4 <do_projectx_playdemo_screensaver+0x1914>
d00823ce:	429f      	cmp	r7, r3
d00823d0:	f2c0 81d7 	blt.w	d0082782 <do_projectx_playdemo_screensaver+0x1cc2>
d00823d4:	f9b5 300c 	ldrsh.w	r3, [r5, #12]
d00823d8:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00823dc:	da02      	bge.n	d00823e4 <do_projectx_playdemo_screensaver+0x1924>
d00823de:	429f      	cmp	r7, r3
d00823e0:	f2c0 81d9 	blt.w	d0082796 <do_projectx_playdemo_screensaver+0x1cd6>
d00823e4:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
d00823e8:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00823ec:	da02      	bge.n	d00823f4 <do_projectx_playdemo_screensaver+0x1934>
d00823ee:	429f      	cmp	r7, r3
d00823f0:	f2c0 81db 	blt.w	d00827aa <do_projectx_playdemo_screensaver+0x1cea>
d00823f4:	f9b5 3024 	ldrsh.w	r3, [r5, #36]	; 0x24
d00823f8:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00823fc:	da02      	bge.n	d0082404 <do_projectx_playdemo_screensaver+0x1944>
d00823fe:	429f      	cmp	r7, r3
d0082400:	f2c0 81dd 	blt.w	d00827be <do_projectx_playdemo_screensaver+0x1cfe>
d0082404:	45ba      	cmp	sl, r7
d0082406:	f77f aa0d 	ble.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d008240a:	f5ba 7ff0 	cmp.w	sl, #480	; 0x1e0
d008240e:	f6bf aa09 	bge.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d0082412:	8e6b      	ldrh	r3, [r5, #50]	; 0x32
d0082414:	9a03      	ldr	r2, [sp, #12]
d0082416:	3310      	adds	r3, #16
d0082418:	b21b      	sxth	r3, r3
d008241a:	1a9b      	subs	r3, r3, r2
d008241c:	3315      	adds	r3, #21
d008241e:	2b2a      	cmp	r3, #42	; 0x2a
d0082420:	f63f aa00 	bhi.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d0082424:	f1bc 0f00 	cmp.w	ip, #0
d0082428:	f43f ae1c 	beq.w	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d008242c:	f1be 0f00 	cmp.w	lr, #0
d0082430:	f000 80f6 	beq.w	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d0082434:	f1b8 0f00 	cmp.w	r8, #0
d0082438:	f000 80ef 	beq.w	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d008243c:	f1b9 0f00 	cmp.w	r9, #0
d0082440:	bf14      	ite	ne
d0082442:	f04f 0c04 	movne.w	ip, #4
d0082446:	f04f 0c03 	moveq.w	ip, #3
d008244a:	e60b      	b.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d008244c:	d0092544 	.word	0xd0092544
d0082450:	d0092368 	.word	0xd0092368
d0082454:	d0092540 	.word	0xd0092540
d0082458:	d0092548 	.word	0xd0092548
d008245c:	d0092549 	.word	0xd0092549
d0082460:	d0092366 	.word	0xd0092366
d0082464:	92492493 	.word	0x92492493
d0082468:	2900      	cmp	r1, #0
d008246a:	f000 820b 	beq.w	d0082884 <do_projectx_playdemo_screensaver+0x1dc4>
d008246e:	2a00      	cmp	r2, #0
d0082470:	f000 8265 	beq.w	d008293e <do_projectx_playdemo_screensaver+0x1e7e>
d0082474:	2b00      	cmp	r3, #0
d0082476:	d0a5      	beq.n	d00823c4 <do_projectx_playdemo_screensaver+0x1904>
d0082478:	f9b5 3000 	ldrsh.w	r3, [r5]
d008247c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082480:	da02      	bge.n	d0082488 <do_projectx_playdemo_screensaver+0x19c8>
d0082482:	429f      	cmp	r7, r3
d0082484:	f2c0 81a5 	blt.w	d00827d2 <do_projectx_playdemo_screensaver+0x1d12>
d0082488:	f9b5 300c 	ldrsh.w	r3, [r5, #12]
d008248c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082490:	da02      	bge.n	d0082498 <do_projectx_playdemo_screensaver+0x19d8>
d0082492:	429f      	cmp	r7, r3
d0082494:	f2c0 81a7 	blt.w	d00827e6 <do_projectx_playdemo_screensaver+0x1d26>
d0082498:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
d008249c:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00824a0:	da02      	bge.n	d00824a8 <do_projectx_playdemo_screensaver+0x19e8>
d00824a2:	429f      	cmp	r7, r3
d00824a4:	f2c0 81a9 	blt.w	d00827fa <do_projectx_playdemo_screensaver+0x1d3a>
d00824a8:	f9b5 3024 	ldrsh.w	r3, [r5, #36]	; 0x24
d00824ac:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00824b0:	da02      	bge.n	d00824b8 <do_projectx_playdemo_screensaver+0x19f8>
d00824b2:	429f      	cmp	r7, r3
d00824b4:	f2c0 81ab 	blt.w	d008280e <do_projectx_playdemo_screensaver+0x1d4e>
d00824b8:	45ba      	cmp	sl, r7
d00824ba:	f77f a9b3 	ble.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d00824be:	f5ba 7ff0 	cmp.w	sl, #480	; 0x1e0
d00824c2:	f6bf a9af 	bge.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d00824c6:	8e6b      	ldrh	r3, [r5, #50]	; 0x32
d00824c8:	9a03      	ldr	r2, [sp, #12]
d00824ca:	3310      	adds	r3, #16
d00824cc:	b21b      	sxth	r3, r3
d00824ce:	1a9b      	subs	r3, r3, r2
d00824d0:	3315      	adds	r3, #21
d00824d2:	2b2a      	cmp	r3, #42	; 0x2a
d00824d4:	f63f a9a6 	bhi.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d00824d8:	f1bc 0f00 	cmp.w	ip, #0
d00824dc:	f43f adc2 	beq.w	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d00824e0:	f1be 0f00 	cmp.w	lr, #0
d00824e4:	f000 809c 	beq.w	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d00824e8:	f1b8 0f00 	cmp.w	r8, #0
d00824ec:	f000 8095 	beq.w	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d00824f0:	f1b9 0f00 	cmp.w	r9, #0
d00824f4:	bf14      	ite	ne
d00824f6:	f04f 0c07 	movne.w	ip, #7
d00824fa:	f04f 0c03 	moveq.w	ip, #3
d00824fe:	e5b1      	b.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d0082500:	2b00      	cmp	r3, #0
d0082502:	f43f af5f 	beq.w	d00823c4 <do_projectx_playdemo_screensaver+0x1904>
d0082506:	f9b5 3000 	ldrsh.w	r3, [r5]
d008250a:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d008250e:	da02      	bge.n	d0082516 <do_projectx_playdemo_screensaver+0x1a56>
d0082510:	429f      	cmp	r7, r3
d0082512:	f2c0 8186 	blt.w	d0082822 <do_projectx_playdemo_screensaver+0x1d62>
d0082516:	f9b5 300c 	ldrsh.w	r3, [r5, #12]
d008251a:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d008251e:	da02      	bge.n	d0082526 <do_projectx_playdemo_screensaver+0x1a66>
d0082520:	429f      	cmp	r7, r3
d0082522:	f2c0 8188 	blt.w	d0082836 <do_projectx_playdemo_screensaver+0x1d76>
d0082526:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
d008252a:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d008252e:	da02      	bge.n	d0082536 <do_projectx_playdemo_screensaver+0x1a76>
d0082530:	429f      	cmp	r7, r3
d0082532:	f2c0 8108 	blt.w	d0082746 <do_projectx_playdemo_screensaver+0x1c86>
d0082536:	f9b5 3024 	ldrsh.w	r3, [r5, #36]	; 0x24
d008253a:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d008253e:	da02      	bge.n	d0082546 <do_projectx_playdemo_screensaver+0x1a86>
d0082540:	429f      	cmp	r7, r3
d0082542:	f2c0 810a 	blt.w	d008275a <do_projectx_playdemo_screensaver+0x1c9a>
d0082546:	45ba      	cmp	sl, r7
d0082548:	f77f a96c 	ble.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d008254c:	f5ba 7ff0 	cmp.w	sl, #480	; 0x1e0
d0082550:	f6bf a968 	bge.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d0082554:	8e6b      	ldrh	r3, [r5, #50]	; 0x32
d0082556:	9a03      	ldr	r2, [sp, #12]
d0082558:	3310      	adds	r3, #16
d008255a:	b21b      	sxth	r3, r3
d008255c:	1a9b      	subs	r3, r3, r2
d008255e:	3315      	adds	r3, #21
d0082560:	2b2a      	cmp	r3, #42	; 0x2a
d0082562:	f63f a95f 	bhi.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d0082566:	f1bc 0f00 	cmp.w	ip, #0
d008256a:	f43f ad7b 	beq.w	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d008256e:	f1be 0f00 	cmp.w	lr, #0
d0082572:	d055      	beq.n	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d0082574:	f1b8 0f00 	cmp.w	r8, #0
d0082578:	d04f      	beq.n	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d008257a:	f1b9 0f00 	cmp.w	r9, #0
d008257e:	bf14      	ite	ne
d0082580:	f04f 0c05 	movne.w	ip, #5
d0082584:	f04f 0c03 	moveq.w	ip, #3
d0082588:	e56c      	b.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d008258a:	2a00      	cmp	r2, #0
d008258c:	f000 815d 	beq.w	d008284a <do_projectx_playdemo_screensaver+0x1d8a>
d0082590:	2b00      	cmp	r3, #0
d0082592:	f43f af17 	beq.w	d00823c4 <do_projectx_playdemo_screensaver+0x1904>
d0082596:	f9b5 3000 	ldrsh.w	r3, [r5]
d008259a:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d008259e:	da02      	bge.n	d00825a6 <do_projectx_playdemo_screensaver+0x1ae6>
d00825a0:	429f      	cmp	r7, r3
d00825a2:	f2c0 80c6 	blt.w	d0082732 <do_projectx_playdemo_screensaver+0x1c72>
d00825a6:	f9b5 300c 	ldrsh.w	r3, [r5, #12]
d00825aa:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00825ae:	da02      	bge.n	d00825b6 <do_projectx_playdemo_screensaver+0x1af6>
d00825b0:	429f      	cmp	r7, r3
d00825b2:	f2c0 80aa 	blt.w	d008270a <do_projectx_playdemo_screensaver+0x1c4a>
d00825b6:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
d00825ba:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00825be:	da02      	bge.n	d00825c6 <do_projectx_playdemo_screensaver+0x1b06>
d00825c0:	429f      	cmp	r7, r3
d00825c2:	f2c0 80ac 	blt.w	d008271e <do_projectx_playdemo_screensaver+0x1c5e>
d00825c6:	f9b5 3024 	ldrsh.w	r3, [r5, #36]	; 0x24
d00825ca:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00825ce:	da02      	bge.n	d00825d6 <do_projectx_playdemo_screensaver+0x1b16>
d00825d0:	429f      	cmp	r7, r3
d00825d2:	f2c0 80cc 	blt.w	d008276e <do_projectx_playdemo_screensaver+0x1cae>
d00825d6:	45ba      	cmp	sl, r7
d00825d8:	f77f a924 	ble.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d00825dc:	f5ba 7ff0 	cmp.w	sl, #480	; 0x1e0
d00825e0:	f6bf a920 	bge.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d00825e4:	8e6b      	ldrh	r3, [r5, #50]	; 0x32
d00825e6:	9a03      	ldr	r2, [sp, #12]
d00825e8:	3310      	adds	r3, #16
d00825ea:	b21b      	sxth	r3, r3
d00825ec:	1a9b      	subs	r3, r3, r2
d00825ee:	3315      	adds	r3, #21
d00825f0:	2b2a      	cmp	r3, #42	; 0x2a
d00825f2:	f63f a917 	bhi.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d00825f6:	f1bc 0f00 	cmp.w	ip, #0
d00825fa:	f43f ad33 	beq.w	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d00825fe:	f1be 0f00 	cmp.w	lr, #0
d0082602:	d00d      	beq.n	d0082620 <do_projectx_playdemo_screensaver+0x1b60>
d0082604:	f1b8 0f00 	cmp.w	r8, #0
d0082608:	d007      	beq.n	d008261a <do_projectx_playdemo_screensaver+0x1b5a>
d008260a:	f1b9 0f00 	cmp.w	r9, #0
d008260e:	bf14      	ite	ne
d0082610:	f04f 0c06 	movne.w	ip, #6
d0082614:	f04f 0c03 	moveq.w	ip, #3
d0082618:	e524      	b.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d008261a:	f04f 0c02 	mov.w	ip, #2
d008261e:	e521      	b.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d0082620:	f04f 0c01 	mov.w	ip, #1
d0082624:	e51e      	b.n	d0082064 <do_projectx_playdemo_screensaver+0x15a4>
d0082626:	2306      	movs	r3, #6
d0082628:	9a06      	ldr	r2, [sp, #24]
d008262a:	2100      	movs	r1, #0
d008262c:	9803      	ldr	r0, [sp, #12]
d008262e:	f04f 0c01 	mov.w	ip, #1
d0082632:	eb02 07c3 	add.w	r7, r2, r3, lsl #3
d0082636:	222d      	movs	r2, #45	; 0x2d
d0082638:	7139      	strb	r1, [r7, #4]
d008263a:	9906      	ldr	r1, [sp, #24]
d008263c:	8078      	strh	r0, [r7, #2]
d008263e:	2040      	movs	r0, #64	; 0x40
d0082640:	f821 2033 	strh.w	r2, [r1, r3, lsl #3]
d0082644:	f887 c006 	strb.w	ip, [r7, #6]
d0082648:	f000 f9b4 	bl	d00829b4 <star_rand>
d008264c:	9a06      	ldr	r2, [sp, #24]
d008264e:	7178      	strb	r0, [r7, #5]
d0082650:	7993      	ldrb	r3, [r2, #6]
d0082652:	2b00      	cmp	r3, #0
d0082654:	f47f aa25 	bne.w	d0081aa2 <do_projectx_playdemo_screensaver+0xfe2>
d0082658:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d008265c:	9906      	ldr	r1, [sp, #24]
d008265e:	f04f 0c01 	mov.w	ip, #1
d0082662:	eb05 0782 	add.w	r7, r5, r2, lsl #2
d0082666:	f835 0022 	ldrh.w	r0, [r5, r2, lsl #2]
d008266a:	887a      	ldrh	r2, [r7, #2]
d008266c:	3010      	adds	r0, #16
d008266e:	eb01 07c3 	add.w	r7, r1, r3, lsl #3
d0082672:	3210      	adds	r2, #16
d0082674:	f821 0033 	strh.w	r0, [r1, r3, lsl #3]
d0082678:	2300      	movs	r3, #0
d008267a:	2040      	movs	r0, #64	; 0x40
d008267c:	807a      	strh	r2, [r7, #2]
d008267e:	fa08 f20c 	lsl.w	r2, r8, ip
d0082682:	f887 c006 	strb.w	ip, [r7, #6]
d0082686:	713b      	strb	r3, [r7, #4]
d0082688:	9202      	str	r2, [sp, #8]
d008268a:	f000 f993 	bl	d00829b4 <star_rand>
d008268e:	7178      	strb	r0, [r7, #5]
d0082690:	f7ff ba2b 	b.w	d0081aea <do_projectx_playdemo_screensaver+0x102a>
d0082694:	2307      	movs	r3, #7
d0082696:	f101 0e10 	add.w	lr, r1, #16
d008269a:	9906      	ldr	r1, [sp, #24]
d008269c:	f100 0c10 	add.w	ip, r0, #16
d00826a0:	2040      	movs	r0, #64	; 0x40
d00826a2:	eb01 02c3 	add.w	r2, r1, r3, lsl #3
d00826a6:	f821 e033 	strh.w	lr, [r1, r3, lsl #3]
d00826aa:	f04f 0301 	mov.w	r3, #1
d00826ae:	f882 8004 	strb.w	r8, [r2, #4]
d00826b2:	7193      	strb	r3, [r2, #6]
d00826b4:	f8a2 c002 	strh.w	ip, [r2, #2]
d00826b8:	9205      	str	r2, [sp, #20]
d00826ba:	f000 f97b 	bl	d00829b4 <star_rand>
d00826be:	9a05      	ldr	r2, [sp, #20]
d00826c0:	7150      	strb	r0, [r2, #5]
d00826c2:	e57b      	b.n	d00821bc <do_projectx_playdemo_screensaver+0x16fc>
d00826c4:	2306      	movs	r3, #6
d00826c6:	e7e6      	b.n	d0082696 <do_projectx_playdemo_screensaver+0x1bd6>
d00826c8:	2305      	movs	r3, #5
d00826ca:	e7e4      	b.n	d0082696 <do_projectx_playdemo_screensaver+0x1bd6>
d00826cc:	2304      	movs	r3, #4
d00826ce:	e7e2      	b.n	d0082696 <do_projectx_playdemo_screensaver+0x1bd6>
d00826d0:	2303      	movs	r3, #3
d00826d2:	e7e0      	b.n	d0082696 <do_projectx_playdemo_screensaver+0x1bd6>
d00826d4:	2302      	movs	r3, #2
d00826d6:	e7de      	b.n	d0082696 <do_projectx_playdemo_screensaver+0x1bd6>
d00826d8:	2301      	movs	r3, #1
d00826da:	e7dc      	b.n	d0082696 <do_projectx_playdemo_screensaver+0x1bd6>
d00826dc:	4663      	mov	r3, ip
d00826de:	e7da      	b.n	d0082696 <do_projectx_playdemo_screensaver+0x1bd6>
d00826e0:	2306      	movs	r3, #6
d00826e2:	9a06      	ldr	r2, [sp, #24]
d00826e4:	2100      	movs	r1, #0
d00826e6:	9803      	ldr	r0, [sp, #12]
d00826e8:	f04f 0c01 	mov.w	ip, #1
d00826ec:	eb02 07c3 	add.w	r7, r2, r3, lsl #3
d00826f0:	222d      	movs	r2, #45	; 0x2d
d00826f2:	7139      	strb	r1, [r7, #4]
d00826f4:	9906      	ldr	r1, [sp, #24]
d00826f6:	8078      	strh	r0, [r7, #2]
d00826f8:	2040      	movs	r0, #64	; 0x40
d00826fa:	f887 c006 	strb.w	ip, [r7, #6]
d00826fe:	f821 2033 	strh.w	r2, [r1, r3, lsl #3]
d0082702:	f000 f957 	bl	d00829b4 <star_rand>
d0082706:	7178      	strb	r0, [r7, #5]
d0082708:	e600      	b.n	d008230c <do_projectx_playdemo_screensaver+0x184c>
d008270a:	89eb      	ldrh	r3, [r5, #14]
d008270c:	9a03      	ldr	r2, [sp, #12]
d008270e:	3310      	adds	r3, #16
d0082710:	b21b      	sxth	r3, r3
d0082712:	1a9b      	subs	r3, r3, r2
d0082714:	3315      	adds	r3, #21
d0082716:	2b2a      	cmp	r3, #42	; 0x2a
d0082718:	f63f af4d 	bhi.w	d00825b6 <do_projectx_playdemo_screensaver+0x1af6>
d008271c:	e76b      	b.n	d00825f6 <do_projectx_playdemo_screensaver+0x1b36>
d008271e:	8b6b      	ldrh	r3, [r5, #26]
d0082720:	9a03      	ldr	r2, [sp, #12]
d0082722:	3310      	adds	r3, #16
d0082724:	b21b      	sxth	r3, r3
d0082726:	1a9b      	subs	r3, r3, r2
d0082728:	3315      	adds	r3, #21
d008272a:	2b2a      	cmp	r3, #42	; 0x2a
d008272c:	f63f af4b 	bhi.w	d00825c6 <do_projectx_playdemo_screensaver+0x1b06>
d0082730:	e761      	b.n	d00825f6 <do_projectx_playdemo_screensaver+0x1b36>
d0082732:	886b      	ldrh	r3, [r5, #2]
d0082734:	9a03      	ldr	r2, [sp, #12]
d0082736:	3310      	adds	r3, #16
d0082738:	b21b      	sxth	r3, r3
d008273a:	1a9b      	subs	r3, r3, r2
d008273c:	3315      	adds	r3, #21
d008273e:	2b2a      	cmp	r3, #42	; 0x2a
d0082740:	f63f af31 	bhi.w	d00825a6 <do_projectx_playdemo_screensaver+0x1ae6>
d0082744:	e757      	b.n	d00825f6 <do_projectx_playdemo_screensaver+0x1b36>
d0082746:	8b6b      	ldrh	r3, [r5, #26]
d0082748:	9a03      	ldr	r2, [sp, #12]
d008274a:	3310      	adds	r3, #16
d008274c:	b21b      	sxth	r3, r3
d008274e:	1a9b      	subs	r3, r3, r2
d0082750:	3315      	adds	r3, #21
d0082752:	2b2a      	cmp	r3, #42	; 0x2a
d0082754:	f63f aeef 	bhi.w	d0082536 <do_projectx_playdemo_screensaver+0x1a76>
d0082758:	e705      	b.n	d0082566 <do_projectx_playdemo_screensaver+0x1aa6>
d008275a:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
d008275c:	9a03      	ldr	r2, [sp, #12]
d008275e:	3310      	adds	r3, #16
d0082760:	b21b      	sxth	r3, r3
d0082762:	1a9b      	subs	r3, r3, r2
d0082764:	3315      	adds	r3, #21
d0082766:	2b2a      	cmp	r3, #42	; 0x2a
d0082768:	f63f aeed 	bhi.w	d0082546 <do_projectx_playdemo_screensaver+0x1a86>
d008276c:	e6fb      	b.n	d0082566 <do_projectx_playdemo_screensaver+0x1aa6>
d008276e:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
d0082770:	9a03      	ldr	r2, [sp, #12]
d0082772:	3310      	adds	r3, #16
d0082774:	b21b      	sxth	r3, r3
d0082776:	1a9b      	subs	r3, r3, r2
d0082778:	3315      	adds	r3, #21
d008277a:	2b2a      	cmp	r3, #42	; 0x2a
d008277c:	f63f af2b 	bhi.w	d00825d6 <do_projectx_playdemo_screensaver+0x1b16>
d0082780:	e739      	b.n	d00825f6 <do_projectx_playdemo_screensaver+0x1b36>
d0082782:	886b      	ldrh	r3, [r5, #2]
d0082784:	9a03      	ldr	r2, [sp, #12]
d0082786:	3310      	adds	r3, #16
d0082788:	b21b      	sxth	r3, r3
d008278a:	1a9b      	subs	r3, r3, r2
d008278c:	3315      	adds	r3, #21
d008278e:	2b2a      	cmp	r3, #42	; 0x2a
d0082790:	f63f ae20 	bhi.w	d00823d4 <do_projectx_playdemo_screensaver+0x1914>
d0082794:	e646      	b.n	d0082424 <do_projectx_playdemo_screensaver+0x1964>
d0082796:	89eb      	ldrh	r3, [r5, #14]
d0082798:	9a03      	ldr	r2, [sp, #12]
d008279a:	3310      	adds	r3, #16
d008279c:	b21b      	sxth	r3, r3
d008279e:	1a9b      	subs	r3, r3, r2
d00827a0:	3315      	adds	r3, #21
d00827a2:	2b2a      	cmp	r3, #42	; 0x2a
d00827a4:	f63f ae1e 	bhi.w	d00823e4 <do_projectx_playdemo_screensaver+0x1924>
d00827a8:	e63c      	b.n	d0082424 <do_projectx_playdemo_screensaver+0x1964>
d00827aa:	8b6b      	ldrh	r3, [r5, #26]
d00827ac:	9a03      	ldr	r2, [sp, #12]
d00827ae:	3310      	adds	r3, #16
d00827b0:	b21b      	sxth	r3, r3
d00827b2:	1a9b      	subs	r3, r3, r2
d00827b4:	3315      	adds	r3, #21
d00827b6:	2b2a      	cmp	r3, #42	; 0x2a
d00827b8:	f63f ae1c 	bhi.w	d00823f4 <do_projectx_playdemo_screensaver+0x1934>
d00827bc:	e632      	b.n	d0082424 <do_projectx_playdemo_screensaver+0x1964>
d00827be:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
d00827c0:	9a03      	ldr	r2, [sp, #12]
d00827c2:	3310      	adds	r3, #16
d00827c4:	b21b      	sxth	r3, r3
d00827c6:	1a9b      	subs	r3, r3, r2
d00827c8:	3315      	adds	r3, #21
d00827ca:	2b2a      	cmp	r3, #42	; 0x2a
d00827cc:	f63f ae1a 	bhi.w	d0082404 <do_projectx_playdemo_screensaver+0x1944>
d00827d0:	e628      	b.n	d0082424 <do_projectx_playdemo_screensaver+0x1964>
d00827d2:	886b      	ldrh	r3, [r5, #2]
d00827d4:	9a03      	ldr	r2, [sp, #12]
d00827d6:	3310      	adds	r3, #16
d00827d8:	b21b      	sxth	r3, r3
d00827da:	1a9b      	subs	r3, r3, r2
d00827dc:	3315      	adds	r3, #21
d00827de:	2b2a      	cmp	r3, #42	; 0x2a
d00827e0:	f63f ae52 	bhi.w	d0082488 <do_projectx_playdemo_screensaver+0x19c8>
d00827e4:	e678      	b.n	d00824d8 <do_projectx_playdemo_screensaver+0x1a18>
d00827e6:	89eb      	ldrh	r3, [r5, #14]
d00827e8:	9a03      	ldr	r2, [sp, #12]
d00827ea:	3310      	adds	r3, #16
d00827ec:	b21b      	sxth	r3, r3
d00827ee:	1a9b      	subs	r3, r3, r2
d00827f0:	3315      	adds	r3, #21
d00827f2:	2b2a      	cmp	r3, #42	; 0x2a
d00827f4:	f63f ae50 	bhi.w	d0082498 <do_projectx_playdemo_screensaver+0x19d8>
d00827f8:	e66e      	b.n	d00824d8 <do_projectx_playdemo_screensaver+0x1a18>
d00827fa:	8b6b      	ldrh	r3, [r5, #26]
d00827fc:	9a03      	ldr	r2, [sp, #12]
d00827fe:	3310      	adds	r3, #16
d0082800:	b21b      	sxth	r3, r3
d0082802:	1a9b      	subs	r3, r3, r2
d0082804:	3315      	adds	r3, #21
d0082806:	2b2a      	cmp	r3, #42	; 0x2a
d0082808:	f63f ae4e 	bhi.w	d00824a8 <do_projectx_playdemo_screensaver+0x19e8>
d008280c:	e664      	b.n	d00824d8 <do_projectx_playdemo_screensaver+0x1a18>
d008280e:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
d0082810:	9a03      	ldr	r2, [sp, #12]
d0082812:	3310      	adds	r3, #16
d0082814:	b21b      	sxth	r3, r3
d0082816:	1a9b      	subs	r3, r3, r2
d0082818:	3315      	adds	r3, #21
d008281a:	2b2a      	cmp	r3, #42	; 0x2a
d008281c:	f63f ae4c 	bhi.w	d00824b8 <do_projectx_playdemo_screensaver+0x19f8>
d0082820:	e65a      	b.n	d00824d8 <do_projectx_playdemo_screensaver+0x1a18>
d0082822:	886b      	ldrh	r3, [r5, #2]
d0082824:	9a03      	ldr	r2, [sp, #12]
d0082826:	3310      	adds	r3, #16
d0082828:	b21b      	sxth	r3, r3
d008282a:	1a9b      	subs	r3, r3, r2
d008282c:	3315      	adds	r3, #21
d008282e:	2b2a      	cmp	r3, #42	; 0x2a
d0082830:	f63f ae71 	bhi.w	d0082516 <do_projectx_playdemo_screensaver+0x1a56>
d0082834:	e697      	b.n	d0082566 <do_projectx_playdemo_screensaver+0x1aa6>
d0082836:	89eb      	ldrh	r3, [r5, #14]
d0082838:	9a03      	ldr	r2, [sp, #12]
d008283a:	3310      	adds	r3, #16
d008283c:	b21b      	sxth	r3, r3
d008283e:	1a9b      	subs	r3, r3, r2
d0082840:	3315      	adds	r3, #21
d0082842:	2b2a      	cmp	r3, #42	; 0x2a
d0082844:	f63f ae6f 	bhi.w	d0082526 <do_projectx_playdemo_screensaver+0x1a66>
d0082848:	e68d      	b.n	d0082566 <do_projectx_playdemo_screensaver+0x1aa6>
d008284a:	2b00      	cmp	r3, #0
d008284c:	f47f ae5b 	bne.w	d0082506 <do_projectx_playdemo_screensaver+0x1a46>
d0082850:	4619      	mov	r1, r3
d0082852:	4a57      	ldr	r2, [pc, #348]	; (d00829b0 <do_projectx_playdemo_screensaver+0x1ef0>)
d0082854:	f240 1adf 	movw	sl, #479	; 0x1df
d0082858:	e004      	b.n	d0082864 <do_projectx_playdemo_screensaver+0x1da4>
d008285a:	2905      	cmp	r1, #5
d008285c:	f102 020c 	add.w	r2, r2, #12
d0082860:	f43e afe0 	beq.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d0082864:	f9b2 3000 	ldrsh.w	r3, [r2]
d0082868:	3101      	adds	r1, #1
d008286a:	42bb      	cmp	r3, r7
d008286c:	ddf5      	ble.n	d008285a <do_projectx_playdemo_screensaver+0x1d9a>
d008286e:	4553      	cmp	r3, sl
d0082870:	dcf3      	bgt.n	d008285a <do_projectx_playdemo_screensaver+0x1d9a>
d0082872:	8853      	ldrh	r3, [r2, #2]
d0082874:	9803      	ldr	r0, [sp, #12]
d0082876:	3310      	adds	r3, #16
d0082878:	b21b      	sxth	r3, r3
d008287a:	1a1b      	subs	r3, r3, r0
d008287c:	3315      	adds	r3, #21
d008287e:	2b2a      	cmp	r3, #42	; 0x2a
d0082880:	d8eb      	bhi.n	d008285a <do_projectx_playdemo_screensaver+0x1d9a>
d0082882:	e5cf      	b.n	d0082424 <do_projectx_playdemo_screensaver+0x1964>
d0082884:	b1e2      	cbz	r2, d00828c0 <do_projectx_playdemo_screensaver+0x1e00>
d0082886:	2b00      	cmp	r3, #0
d0082888:	f47f ae85 	bne.w	d0082596 <do_projectx_playdemo_screensaver+0x1ad6>
d008288c:	4619      	mov	r1, r3
d008288e:	4a48      	ldr	r2, [pc, #288]	; (d00829b0 <do_projectx_playdemo_screensaver+0x1ef0>)
d0082890:	f240 1adf 	movw	sl, #479	; 0x1df
d0082894:	e004      	b.n	d00828a0 <do_projectx_playdemo_screensaver+0x1de0>
d0082896:	2905      	cmp	r1, #5
d0082898:	f102 020c 	add.w	r2, r2, #12
d008289c:	f43e afc2 	beq.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d00828a0:	f9b2 3000 	ldrsh.w	r3, [r2]
d00828a4:	3101      	adds	r1, #1
d00828a6:	42bb      	cmp	r3, r7
d00828a8:	ddf5      	ble.n	d0082896 <do_projectx_playdemo_screensaver+0x1dd6>
d00828aa:	4553      	cmp	r3, sl
d00828ac:	dcf3      	bgt.n	d0082896 <do_projectx_playdemo_screensaver+0x1dd6>
d00828ae:	8853      	ldrh	r3, [r2, #2]
d00828b0:	9803      	ldr	r0, [sp, #12]
d00828b2:	3310      	adds	r3, #16
d00828b4:	b21b      	sxth	r3, r3
d00828b6:	1a1b      	subs	r3, r3, r0
d00828b8:	3315      	adds	r3, #21
d00828ba:	2b2a      	cmp	r3, #42	; 0x2a
d00828bc:	d8eb      	bhi.n	d0082896 <do_projectx_playdemo_screensaver+0x1dd6>
d00828be:	e5b1      	b.n	d0082424 <do_projectx_playdemo_screensaver+0x1964>
d00828c0:	b1cb      	cbz	r3, d00828f6 <do_projectx_playdemo_screensaver+0x1e36>
d00828c2:	4611      	mov	r1, r2
d00828c4:	f240 1adf 	movw	sl, #479	; 0x1df
d00828c8:	4a39      	ldr	r2, [pc, #228]	; (d00829b0 <do_projectx_playdemo_screensaver+0x1ef0>)
d00828ca:	e004      	b.n	d00828d6 <do_projectx_playdemo_screensaver+0x1e16>
d00828cc:	2905      	cmp	r1, #5
d00828ce:	f102 020c 	add.w	r2, r2, #12
d00828d2:	f43e afa7 	beq.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d00828d6:	f9b2 3000 	ldrsh.w	r3, [r2]
d00828da:	3101      	adds	r1, #1
d00828dc:	42bb      	cmp	r3, r7
d00828de:	ddf5      	ble.n	d00828cc <do_projectx_playdemo_screensaver+0x1e0c>
d00828e0:	4553      	cmp	r3, sl
d00828e2:	dcf3      	bgt.n	d00828cc <do_projectx_playdemo_screensaver+0x1e0c>
d00828e4:	8853      	ldrh	r3, [r2, #2]
d00828e6:	9803      	ldr	r0, [sp, #12]
d00828e8:	3310      	adds	r3, #16
d00828ea:	b21b      	sxth	r3, r3
d00828ec:	1a1b      	subs	r3, r3, r0
d00828ee:	3315      	adds	r3, #21
d00828f0:	2b2a      	cmp	r3, #42	; 0x2a
d00828f2:	d8eb      	bhi.n	d00828cc <do_projectx_playdemo_screensaver+0x1e0c>
d00828f4:	e637      	b.n	d0082566 <do_projectx_playdemo_screensaver+0x1aa6>
d00828f6:	4619      	mov	r1, r3
d00828f8:	4a2d      	ldr	r2, [pc, #180]	; (d00829b0 <do_projectx_playdemo_screensaver+0x1ef0>)
d00828fa:	f240 1adf 	movw	sl, #479	; 0x1df
d00828fe:	e004      	b.n	d008290a <do_projectx_playdemo_screensaver+0x1e4a>
d0082900:	2905      	cmp	r1, #5
d0082902:	f102 020c 	add.w	r2, r2, #12
d0082906:	f43e af8d 	beq.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d008290a:	f9b2 3000 	ldrsh.w	r3, [r2]
d008290e:	3101      	adds	r1, #1
d0082910:	42bb      	cmp	r3, r7
d0082912:	ddf5      	ble.n	d0082900 <do_projectx_playdemo_screensaver+0x1e40>
d0082914:	4553      	cmp	r3, sl
d0082916:	dcf3      	bgt.n	d0082900 <do_projectx_playdemo_screensaver+0x1e40>
d0082918:	8853      	ldrh	r3, [r2, #2]
d008291a:	9803      	ldr	r0, [sp, #12]
d008291c:	3310      	adds	r3, #16
d008291e:	b21b      	sxth	r3, r3
d0082920:	1a1b      	subs	r3, r3, r0
d0082922:	3315      	adds	r3, #21
d0082924:	2b2a      	cmp	r3, #42	; 0x2a
d0082926:	d8eb      	bhi.n	d0082900 <do_projectx_playdemo_screensaver+0x1e40>
d0082928:	e57c      	b.n	d0082424 <do_projectx_playdemo_screensaver+0x1964>
d008292a:	2306      	movs	r3, #6
d008292c:	e694      	b.n	d0082658 <do_projectx_playdemo_screensaver+0x1b98>
d008292e:	2305      	movs	r3, #5
d0082930:	e692      	b.n	d0082658 <do_projectx_playdemo_screensaver+0x1b98>
d0082932:	2307      	movs	r3, #7
d0082934:	e690      	b.n	d0082658 <do_projectx_playdemo_screensaver+0x1b98>
d0082936:	2303      	movs	r3, #3
d0082938:	e676      	b.n	d0082628 <do_projectx_playdemo_screensaver+0x1b68>
d008293a:	2302      	movs	r3, #2
d008293c:	e674      	b.n	d0082628 <do_projectx_playdemo_screensaver+0x1b68>
d008293e:	2b00      	cmp	r3, #0
d0082940:	f47f ade1 	bne.w	d0082506 <do_projectx_playdemo_screensaver+0x1a46>
d0082944:	4619      	mov	r1, r3
d0082946:	4a1a      	ldr	r2, [pc, #104]	; (d00829b0 <do_projectx_playdemo_screensaver+0x1ef0>)
d0082948:	f240 1adf 	movw	sl, #479	; 0x1df
d008294c:	e004      	b.n	d0082958 <do_projectx_playdemo_screensaver+0x1e98>
d008294e:	2905      	cmp	r1, #5
d0082950:	f102 020c 	add.w	r2, r2, #12
d0082954:	f43e af66 	beq.w	d0081824 <do_projectx_playdemo_screensaver+0xd64>
d0082958:	f9b2 3000 	ldrsh.w	r3, [r2]
d008295c:	3101      	adds	r1, #1
d008295e:	42bb      	cmp	r3, r7
d0082960:	ddf5      	ble.n	d008294e <do_projectx_playdemo_screensaver+0x1e8e>
d0082962:	4553      	cmp	r3, sl
d0082964:	dcf3      	bgt.n	d008294e <do_projectx_playdemo_screensaver+0x1e8e>
d0082966:	8853      	ldrh	r3, [r2, #2]
d0082968:	9803      	ldr	r0, [sp, #12]
d008296a:	3310      	adds	r3, #16
d008296c:	b21b      	sxth	r3, r3
d008296e:	1a1b      	subs	r3, r3, r0
d0082970:	3315      	adds	r3, #21
d0082972:	2b2a      	cmp	r3, #42	; 0x2a
d0082974:	d8eb      	bhi.n	d008294e <do_projectx_playdemo_screensaver+0x1e8e>
d0082976:	e555      	b.n	d0082424 <do_projectx_playdemo_screensaver+0x1964>
d0082978:	2301      	movs	r3, #1
d008297a:	e655      	b.n	d0082628 <do_projectx_playdemo_screensaver+0x1b68>
d008297c:	2301      	movs	r3, #1
d008297e:	e6b0      	b.n	d00826e2 <do_projectx_playdemo_screensaver+0x1c22>
d0082980:	2303      	movs	r3, #3
d0082982:	e6ae      	b.n	d00826e2 <do_projectx_playdemo_screensaver+0x1c22>
d0082984:	2302      	movs	r3, #2
d0082986:	e6ac      	b.n	d00826e2 <do_projectx_playdemo_screensaver+0x1c22>
d0082988:	2307      	movs	r3, #7
d008298a:	e6aa      	b.n	d00826e2 <do_projectx_playdemo_screensaver+0x1c22>
d008298c:	2305      	movs	r3, #5
d008298e:	e6a8      	b.n	d00826e2 <do_projectx_playdemo_screensaver+0x1c22>
d0082990:	2304      	movs	r3, #4
d0082992:	e6a6      	b.n	d00826e2 <do_projectx_playdemo_screensaver+0x1c22>
d0082994:	2304      	movs	r3, #4
d0082996:	e65f      	b.n	d0082658 <do_projectx_playdemo_screensaver+0x1b98>
d0082998:	2303      	movs	r3, #3
d008299a:	e65d      	b.n	d0082658 <do_projectx_playdemo_screensaver+0x1b98>
d008299c:	2302      	movs	r3, #2
d008299e:	e65b      	b.n	d0082658 <do_projectx_playdemo_screensaver+0x1b98>
d00829a0:	2301      	movs	r3, #1
d00829a2:	e659      	b.n	d0082658 <do_projectx_playdemo_screensaver+0x1b98>
d00829a4:	2307      	movs	r3, #7
d00829a6:	e63f      	b.n	d0082628 <do_projectx_playdemo_screensaver+0x1b68>
d00829a8:	2305      	movs	r3, #5
d00829aa:	e63d      	b.n	d0082628 <do_projectx_playdemo_screensaver+0x1b68>
d00829ac:	2304      	movs	r3, #4
d00829ae:	e63b      	b.n	d0082628 <do_projectx_playdemo_screensaver+0x1b68>
d00829b0:	d0092418 	.word	0xd0092418

d00829b4 <star_rand>:
d00829b4:	4908      	ldr	r1, [pc, #32]	; (d00829d8 <star_rand+0x24>)
d00829b6:	f243 0239 	movw	r2, #12345	; 0x3039
d00829ba:	b410      	push	{r4}
d00829bc:	680b      	ldr	r3, [r1, #0]
d00829be:	4c07      	ldr	r4, [pc, #28]	; (d00829dc <star_rand+0x28>)
d00829c0:	fb04 2303 	mla	r3, r4, r3, r2
d00829c4:	f85d 4b04 	ldr.w	r4, [sp], #4
d00829c8:	0c1a      	lsrs	r2, r3, #16
d00829ca:	600b      	str	r3, [r1, #0]
d00829cc:	fbb2 f3f0 	udiv	r3, r2, r0
d00829d0:	fb03 2010 	mls	r0, r3, r0, r2
d00829d4:	b280      	uxth	r0, r0
d00829d6:	4770      	bx	lr
d00829d8:	d0092380 	.word	0xd0092380
d00829dc:	41c64e6d 	.word	0x41c64e6d

d00829e0 <reset_star>:
d00829e0:	b4f0      	push	{r4, r5, r6, r7}
d00829e2:	4f2a      	ldr	r7, [pc, #168]	; (d0082a8c <reset_star+0xac>)
d00829e4:	f243 0639 	movw	r6, #12345	; 0x3039
d00829e8:	f8df c0b0 	ldr.w	ip, [pc, #176]	; d0082a9c <reset_star+0xbc>
d00829ec:	281f      	cmp	r0, #31
d00829ee:	683d      	ldr	r5, [r7, #0]
d00829f0:	4b27      	ldr	r3, [pc, #156]	; (d0082a90 <reset_star+0xb0>)
d00829f2:	fb0c 6505 	mla	r5, ip, r5, r6
d00829f6:	4a27      	ldr	r2, [pc, #156]	; (d0082a94 <reset_star+0xb4>)
d00829f8:	ea4f 4415 	mov.w	r4, r5, lsr #16
d00829fc:	fb0c 6505 	mla	r5, ip, r5, r6
d0082a00:	fba3 6304 	umull	r6, r3, r3, r4
d0082a04:	ea4f 4615 	mov.w	r6, r5, lsr #16
d0082a08:	603d      	str	r5, [r7, #0]
d0082a0a:	eba4 0503 	sub.w	r5, r4, r3
d0082a0e:	fba2 7206 	umull	r7, r2, r2, r6
d0082a12:	f240 1719 	movw	r7, #281	; 0x119
d0082a16:	eb03 0355 	add.w	r3, r3, r5, lsr #1
d0082a1a:	ea4f 02d2 	mov.w	r2, r2, lsr #3
d0082a1e:	ea4f 2313 	mov.w	r3, r3, lsr #8
d0082a22:	fb07 6212 	mls	r2, r7, r2, r6
d0082a26:	eb00 0640 	add.w	r6, r0, r0, lsl #1
d0082a2a:	ebc3 1503 	rsb	r5, r3, r3, lsl #4
d0082a2e:	f102 0226 	add.w	r2, r2, #38	; 0x26
d0082a32:	ebc3 1345 	rsb	r3, r3, r5, lsl #5
d0082a36:	4d18      	ldr	r5, [pc, #96]	; (d0082a98 <reset_star+0xb8>)
d0082a38:	eba4 0303 	sub.w	r3, r4, r3
d0082a3c:	eb05 0446 	add.w	r4, r5, r6, lsl #1
d0082a40:	440b      	add	r3, r1
d0082a42:	8062      	strh	r2, [r4, #2]
d0082a44:	f825 3016 	strh.w	r3, [r5, r6, lsl #1]
d0082a48:	d804      	bhi.n	d0082a54 <reset_star+0x74>
d0082a4a:	f240 6301 	movw	r3, #1537	; 0x601
d0082a4e:	80a3      	strh	r3, [r4, #4]
d0082a50:	bcf0      	pop	{r4, r5, r6, r7}
d0082a52:	4770      	bx	lr
d0082a54:	2835      	cmp	r0, #53	; 0x35
d0082a56:	d804      	bhi.n	d0082a62 <reset_star+0x82>
d0082a58:	f240 6302 	movw	r3, #1538	; 0x602
d0082a5c:	80a3      	strh	r3, [r4, #4]
d0082a5e:	bcf0      	pop	{r4, r5, r6, r7}
d0082a60:	4770      	bx	lr
d0082a62:	2847      	cmp	r0, #71	; 0x47
d0082a64:	d905      	bls.n	d0082a72 <reset_star+0x92>
d0082a66:	2853      	cmp	r0, #83	; 0x53
d0082a68:	d808      	bhi.n	d0082a7c <reset_star+0x9c>
d0082a6a:	f240 1305 	movw	r3, #261	; 0x105
d0082a6e:	80a3      	strh	r3, [r4, #4]
d0082a70:	e7ee      	b.n	d0082a50 <reset_star+0x70>
d0082a72:	f240 5303 	movw	r3, #1283	; 0x503
d0082a76:	80a3      	strh	r3, [r4, #4]
d0082a78:	bcf0      	pop	{r4, r5, r6, r7}
d0082a7a:	4770      	bx	lr
d0082a7c:	285b      	cmp	r0, #91	; 0x5b
d0082a7e:	bf94      	ite	ls
d0082a80:	f240 1307 	movwls	r3, #263	; 0x107
d0082a84:	f240 2309 	movwhi	r3, #521	; 0x209
d0082a88:	80a3      	strh	r3, [r4, #4]
d0082a8a:	e7e1      	b.n	d0082a50 <reset_star+0x70>
d0082a8c:	d0092380 	.word	0xd0092380
d0082a90:	11a3019b 	.word	0x11a3019b
d0082a94:	0749cb29 	.word	0x0749cb29
d0082a98:	d0092560 	.word	0xd0092560
d0082a9c:	41c64e6d 	.word	0x41c64e6d

d0082aa0 <init_star_fields>:
d0082aa0:	4b33      	ldr	r3, [pc, #204]	; (d0082b70 <init_star_fields+0xd0>)
d0082aa2:	f8df c0d4 	ldr.w	ip, [pc, #212]	; d0082b78 <init_star_fields+0xd8>
d0082aa6:	6819      	ldr	r1, [r3, #0]
d0082aa8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0082aac:	2600      	movs	r6, #0
d0082aae:	4c31      	ldr	r4, [pc, #196]	; (d0082b74 <init_star_fields+0xd4>)
d0082ab0:	f243 0e39 	movw	lr, #12345	; 0x3039
d0082ab4:	f240 1b19 	movw	fp, #281	; 0x119
d0082ab8:	f8df a0c0 	ldr.w	sl, [pc, #192]	; d0082b7c <init_star_fields+0xdc>
d0082abc:	f8df 90c0 	ldr.w	r9, [pc, #192]	; d0082b80 <init_star_fields+0xe0>
d0082ac0:	e006      	b.n	d0082ad0 <init_star_fields+0x30>
d0082ac2:	2306      	movs	r3, #6
d0082ac4:	f04f 0201 	mov.w	r2, #1
d0082ac8:	7163      	strb	r3, [r4, #5]
d0082aca:	7122      	strb	r2, [r4, #4]
d0082acc:	3601      	adds	r6, #1
d0082ace:	3406      	adds	r4, #6
d0082ad0:	fb0c e101 	mla	r1, ip, r1, lr
d0082ad4:	2e1f      	cmp	r6, #31
d0082ad6:	b2f5      	uxtb	r5, r6
d0082ad8:	ea4f 4011 	mov.w	r0, r1, lsr #16
d0082adc:	fb0c e101 	mla	r1, ip, r1, lr
d0082ae0:	fbaa 2300 	umull	r2, r3, sl, r0
d0082ae4:	ea4f 4811 	mov.w	r8, r1, lsr #16
d0082ae8:	eba0 0203 	sub.w	r2, r0, r3
d0082aec:	eb03 0352 	add.w	r3, r3, r2, lsr #1
d0082af0:	fba9 7208 	umull	r7, r2, r9, r8
d0082af4:	ea4f 2313 	mov.w	r3, r3, lsr #8
d0082af8:	ea4f 02d2 	mov.w	r2, r2, lsr #3
d0082afc:	ebc3 1703 	rsb	r7, r3, r3, lsl #4
d0082b00:	fb0b 8212 	mls	r2, fp, r2, r8
d0082b04:	ebc3 1347 	rsb	r3, r3, r7, lsl #5
d0082b08:	f102 0226 	add.w	r2, r2, #38	; 0x26
d0082b0c:	eba0 0003 	sub.w	r0, r0, r3
d0082b10:	8062      	strh	r2, [r4, #2]
d0082b12:	8020      	strh	r0, [r4, #0]
d0082b14:	d9d5      	bls.n	d0082ac2 <init_star_fields+0x22>
d0082b16:	2d35      	cmp	r5, #53	; 0x35
d0082b18:	d805      	bhi.n	d0082b26 <init_star_fields+0x86>
d0082b1a:	2306      	movs	r3, #6
d0082b1c:	f04f 0202 	mov.w	r2, #2
d0082b20:	7163      	strb	r3, [r4, #5]
d0082b22:	7122      	strb	r2, [r4, #4]
d0082b24:	e7d2      	b.n	d0082acc <init_star_fields+0x2c>
d0082b26:	2d47      	cmp	r5, #71	; 0x47
d0082b28:	d804      	bhi.n	d0082b34 <init_star_fields+0x94>
d0082b2a:	2203      	movs	r2, #3
d0082b2c:	2305      	movs	r3, #5
d0082b2e:	7122      	strb	r2, [r4, #4]
d0082b30:	7163      	strb	r3, [r4, #5]
d0082b32:	e7cb      	b.n	d0082acc <init_star_fields+0x2c>
d0082b34:	2d53      	cmp	r5, #83	; 0x53
d0082b36:	d805      	bhi.n	d0082b44 <init_star_fields+0xa4>
d0082b38:	2305      	movs	r3, #5
d0082b3a:	f04f 0201 	mov.w	r2, #1
d0082b3e:	7123      	strb	r3, [r4, #4]
d0082b40:	7162      	strb	r2, [r4, #5]
d0082b42:	e7c3      	b.n	d0082acc <init_star_fields+0x2c>
d0082b44:	2d5b      	cmp	r5, #91	; 0x5b
d0082b46:	d806      	bhi.n	d0082b56 <init_star_fields+0xb6>
d0082b48:	f04f 0307 	mov.w	r3, #7
d0082b4c:	7123      	strb	r3, [r4, #4]
d0082b4e:	f04f 0301 	mov.w	r3, #1
d0082b52:	7163      	strb	r3, [r4, #5]
d0082b54:	e7ba      	b.n	d0082acc <init_star_fields+0x2c>
d0082b56:	f04f 0309 	mov.w	r3, #9
d0082b5a:	2d5f      	cmp	r5, #95	; 0x5f
d0082b5c:	7123      	strb	r3, [r4, #4]
d0082b5e:	f04f 0302 	mov.w	r3, #2
d0082b62:	7163      	strb	r3, [r4, #5]
d0082b64:	d1b2      	bne.n	d0082acc <init_star_fields+0x2c>
d0082b66:	4b02      	ldr	r3, [pc, #8]	; (d0082b70 <init_star_fields+0xd0>)
d0082b68:	6019      	str	r1, [r3, #0]
d0082b6a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0082b6e:	bf00      	nop
d0082b70:	d0092380 	.word	0xd0092380
d0082b74:	d0092560 	.word	0xd0092560
d0082b78:	41c64e6d 	.word	0x41c64e6d
d0082b7c:	11a3019b 	.word	0x11a3019b
d0082b80:	0749cb29 	.word	0x0749cb29

d0082b84 <draw_star_shape>:
d0082b84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0082b88:	7903      	ldrb	r3, [r0, #4]
d0082b8a:	4604      	mov	r4, r0
d0082b8c:	2b08      	cmp	r3, #8
d0082b8e:	d81f      	bhi.n	d0082bd0 <draw_star_shape+0x4c>
d0082b90:	2b06      	cmp	r3, #6
d0082b92:	f200 81c4 	bhi.w	d0082f1e <draw_star_shape+0x39a>
d0082b96:	2b04      	cmp	r3, #4
d0082b98:	f200 81bf 	bhi.w	d0082f1a <draw_star_shape+0x396>
d0082b9c:	2b02      	cmp	r3, #2
d0082b9e:	f200 81c0 	bhi.w	d0082f22 <draw_star_shape+0x39e>
d0082ba2:	f000 81c0 	beq.w	d0082f26 <draw_star_shape+0x3a2>
d0082ba6:	f9b0 1002 	ldrsh.w	r1, [r0, #2]
d0082baa:	f9b0 0000 	ldrsh.w	r0, [r0]
d0082bae:	f1a1 0226 	sub.w	r2, r1, #38	; 0x26
d0082bb2:	b292      	uxth	r2, r2
d0082bb4:	f5b2 7f8d 	cmp.w	r2, #282	; 0x11a
d0082bb8:	f080 8121 	bcs.w	d0082dfe <draw_star_shape+0x27a>
d0082bbc:	b282      	uxth	r2, r0
d0082bbe:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d0082bc2:	f080 811c 	bcs.w	d0082dfe <draw_star_shape+0x27a>
d0082bc6:	4a01      	ldr	r2, [pc, #4]	; (d0082bcc <draw_star_shape+0x48>)
d0082bc8:	e10b      	b.n	d0082de2 <draw_star_shape+0x25e>
d0082bca:	bf00      	nop
d0082bcc:	2001f000 	.word	0x2001f000
d0082bd0:	2509      	movs	r5, #9
d0082bd2:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082bd6:	f9b4 0000 	ldrsh.w	r0, [r4]
d0082bda:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082bde:	b29b      	uxth	r3, r3
d0082be0:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082be4:	d213      	bcs.n	d0082c0e <draw_star_shape+0x8a>
d0082be6:	b283      	uxth	r3, r0
d0082be8:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0082bec:	d20f      	bcs.n	d0082c0e <draw_star_shape+0x8a>
d0082bee:	4aa6      	ldr	r2, [pc, #664]	; (d0082e88 <draw_star_shape+0x304>)
d0082bf0:	7b13      	ldrb	r3, [r2, #12]
d0082bf2:	7b57      	ldrb	r7, [r2, #13]
d0082bf4:	7b96      	ldrb	r6, [r2, #14]
d0082bf6:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082bfa:	7bd2      	ldrb	r2, [r2, #15]
d0082bfc:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082c00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082c04:	685b      	ldr	r3, [r3, #4]
d0082c06:	689b      	ldr	r3, [r3, #8]
d0082c08:	4798      	blx	r3
d0082c0a:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082c0e:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082c12:	8820      	ldrh	r0, [r4, #0]
d0082c14:	b29b      	uxth	r3, r3
d0082c16:	3001      	adds	r0, #1
d0082c18:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082c1c:	b280      	uxth	r0, r0
d0082c1e:	d211      	bcs.n	d0082c44 <draw_star_shape+0xc0>
d0082c20:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0082c24:	d20e      	bcs.n	d0082c44 <draw_star_shape+0xc0>
d0082c26:	4a98      	ldr	r2, [pc, #608]	; (d0082e88 <draw_star_shape+0x304>)
d0082c28:	b200      	sxth	r0, r0
d0082c2a:	7b13      	ldrb	r3, [r2, #12]
d0082c2c:	7b57      	ldrb	r7, [r2, #13]
d0082c2e:	7b96      	ldrb	r6, [r2, #14]
d0082c30:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082c34:	7bd2      	ldrb	r2, [r2, #15]
d0082c36:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082c3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082c3e:	685b      	ldr	r3, [r3, #4]
d0082c40:	689b      	ldr	r3, [r3, #8]
d0082c42:	4798      	blx	r3
d0082c44:	2d02      	cmp	r5, #2
d0082c46:	f000 80d9 	beq.w	d0082dfc <draw_star_shape+0x278>
d0082c4a:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082c4e:	8820      	ldrh	r0, [r4, #0]
d0082c50:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082c54:	3002      	adds	r0, #2
d0082c56:	b29b      	uxth	r3, r3
d0082c58:	b280      	uxth	r0, r0
d0082c5a:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082c5e:	d211      	bcs.n	d0082c84 <draw_star_shape+0x100>
d0082c60:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0082c64:	d20e      	bcs.n	d0082c84 <draw_star_shape+0x100>
d0082c66:	4a88      	ldr	r2, [pc, #544]	; (d0082e88 <draw_star_shape+0x304>)
d0082c68:	b200      	sxth	r0, r0
d0082c6a:	7b13      	ldrb	r3, [r2, #12]
d0082c6c:	7b57      	ldrb	r7, [r2, #13]
d0082c6e:	7b96      	ldrb	r6, [r2, #14]
d0082c70:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082c74:	7bd2      	ldrb	r2, [r2, #15]
d0082c76:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082c7a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082c7e:	685b      	ldr	r3, [r3, #4]
d0082c80:	689b      	ldr	r3, [r3, #8]
d0082c82:	4798      	blx	r3
d0082c84:	2d03      	cmp	r5, #3
d0082c86:	f000 80b9 	beq.w	d0082dfc <draw_star_shape+0x278>
d0082c8a:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082c8e:	8820      	ldrh	r0, [r4, #0]
d0082c90:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082c94:	3003      	adds	r0, #3
d0082c96:	b29b      	uxth	r3, r3
d0082c98:	b280      	uxth	r0, r0
d0082c9a:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082c9e:	d211      	bcs.n	d0082cc4 <draw_star_shape+0x140>
d0082ca0:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0082ca4:	d20e      	bcs.n	d0082cc4 <draw_star_shape+0x140>
d0082ca6:	4a78      	ldr	r2, [pc, #480]	; (d0082e88 <draw_star_shape+0x304>)
d0082ca8:	b200      	sxth	r0, r0
d0082caa:	7b13      	ldrb	r3, [r2, #12]
d0082cac:	7b57      	ldrb	r7, [r2, #13]
d0082cae:	7b96      	ldrb	r6, [r2, #14]
d0082cb0:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082cb4:	7bd2      	ldrb	r2, [r2, #15]
d0082cb6:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082cba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082cbe:	685b      	ldr	r3, [r3, #4]
d0082cc0:	689b      	ldr	r3, [r3, #8]
d0082cc2:	4798      	blx	r3
d0082cc4:	2d04      	cmp	r5, #4
d0082cc6:	f000 8099 	beq.w	d0082dfc <draw_star_shape+0x278>
d0082cca:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082cce:	8820      	ldrh	r0, [r4, #0]
d0082cd0:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082cd4:	3004      	adds	r0, #4
d0082cd6:	b29b      	uxth	r3, r3
d0082cd8:	b280      	uxth	r0, r0
d0082cda:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082cde:	d211      	bcs.n	d0082d04 <draw_star_shape+0x180>
d0082ce0:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0082ce4:	d20e      	bcs.n	d0082d04 <draw_star_shape+0x180>
d0082ce6:	4a68      	ldr	r2, [pc, #416]	; (d0082e88 <draw_star_shape+0x304>)
d0082ce8:	b200      	sxth	r0, r0
d0082cea:	7b13      	ldrb	r3, [r2, #12]
d0082cec:	7b57      	ldrb	r7, [r2, #13]
d0082cee:	7b96      	ldrb	r6, [r2, #14]
d0082cf0:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082cf4:	7bd2      	ldrb	r2, [r2, #15]
d0082cf6:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082cfa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082cfe:	685b      	ldr	r3, [r3, #4]
d0082d00:	689b      	ldr	r3, [r3, #8]
d0082d02:	4798      	blx	r3
d0082d04:	2d05      	cmp	r5, #5
d0082d06:	d079      	beq.n	d0082dfc <draw_star_shape+0x278>
d0082d08:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082d0c:	8820      	ldrh	r0, [r4, #0]
d0082d0e:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082d12:	3005      	adds	r0, #5
d0082d14:	b29b      	uxth	r3, r3
d0082d16:	b280      	uxth	r0, r0
d0082d18:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082d1c:	d211      	bcs.n	d0082d42 <draw_star_shape+0x1be>
d0082d1e:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0082d22:	d20e      	bcs.n	d0082d42 <draw_star_shape+0x1be>
d0082d24:	4a58      	ldr	r2, [pc, #352]	; (d0082e88 <draw_star_shape+0x304>)
d0082d26:	b200      	sxth	r0, r0
d0082d28:	7b13      	ldrb	r3, [r2, #12]
d0082d2a:	7b57      	ldrb	r7, [r2, #13]
d0082d2c:	7b96      	ldrb	r6, [r2, #14]
d0082d2e:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082d32:	7bd2      	ldrb	r2, [r2, #15]
d0082d34:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082d38:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082d3c:	685b      	ldr	r3, [r3, #4]
d0082d3e:	689b      	ldr	r3, [r3, #8]
d0082d40:	4798      	blx	r3
d0082d42:	2d06      	cmp	r5, #6
d0082d44:	d05a      	beq.n	d0082dfc <draw_star_shape+0x278>
d0082d46:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082d4a:	8820      	ldrh	r0, [r4, #0]
d0082d4c:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082d50:	3006      	adds	r0, #6
d0082d52:	b29b      	uxth	r3, r3
d0082d54:	b280      	uxth	r0, r0
d0082d56:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082d5a:	d211      	bcs.n	d0082d80 <draw_star_shape+0x1fc>
d0082d5c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0082d60:	d20e      	bcs.n	d0082d80 <draw_star_shape+0x1fc>
d0082d62:	4a49      	ldr	r2, [pc, #292]	; (d0082e88 <draw_star_shape+0x304>)
d0082d64:	b200      	sxth	r0, r0
d0082d66:	7b13      	ldrb	r3, [r2, #12]
d0082d68:	7b57      	ldrb	r7, [r2, #13]
d0082d6a:	7b96      	ldrb	r6, [r2, #14]
d0082d6c:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082d70:	7bd2      	ldrb	r2, [r2, #15]
d0082d72:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082d76:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082d7a:	685b      	ldr	r3, [r3, #4]
d0082d7c:	689b      	ldr	r3, [r3, #8]
d0082d7e:	4798      	blx	r3
d0082d80:	2d07      	cmp	r5, #7
d0082d82:	d03b      	beq.n	d0082dfc <draw_star_shape+0x278>
d0082d84:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082d88:	8820      	ldrh	r0, [r4, #0]
d0082d8a:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082d8e:	3007      	adds	r0, #7
d0082d90:	b29b      	uxth	r3, r3
d0082d92:	b280      	uxth	r0, r0
d0082d94:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082d98:	d211      	bcs.n	d0082dbe <draw_star_shape+0x23a>
d0082d9a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0082d9e:	d20e      	bcs.n	d0082dbe <draw_star_shape+0x23a>
d0082da0:	4a39      	ldr	r2, [pc, #228]	; (d0082e88 <draw_star_shape+0x304>)
d0082da2:	b200      	sxth	r0, r0
d0082da4:	7b13      	ldrb	r3, [r2, #12]
d0082da6:	7b57      	ldrb	r7, [r2, #13]
d0082da8:	7b96      	ldrb	r6, [r2, #14]
d0082daa:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082dae:	7bd2      	ldrb	r2, [r2, #15]
d0082db0:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082db4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082db8:	685b      	ldr	r3, [r3, #4]
d0082dba:	689b      	ldr	r3, [r3, #8]
d0082dbc:	4798      	blx	r3
d0082dbe:	2d09      	cmp	r5, #9
d0082dc0:	d11c      	bne.n	d0082dfc <draw_star_shape+0x278>
d0082dc2:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
d0082dc6:	8820      	ldrh	r0, [r4, #0]
d0082dc8:	f1a1 0326 	sub.w	r3, r1, #38	; 0x26
d0082dcc:	3008      	adds	r0, #8
d0082dce:	b29b      	uxth	r3, r3
d0082dd0:	b280      	uxth	r0, r0
d0082dd2:	f5b3 7f8d 	cmp.w	r3, #282	; 0x11a
d0082dd6:	d211      	bcs.n	d0082dfc <draw_star_shape+0x278>
d0082dd8:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0082ddc:	d20e      	bcs.n	d0082dfc <draw_star_shape+0x278>
d0082dde:	4a2a      	ldr	r2, [pc, #168]	; (d0082e88 <draw_star_shape+0x304>)
d0082de0:	b200      	sxth	r0, r0
d0082de2:	7b13      	ldrb	r3, [r2, #12]
d0082de4:	7b56      	ldrb	r6, [r2, #13]
d0082de6:	7b95      	ldrb	r5, [r2, #14]
d0082de8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0082dec:	7bd2      	ldrb	r2, [r2, #15]
d0082dee:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0082df2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082df6:	685b      	ldr	r3, [r3, #4]
d0082df8:	689b      	ldr	r3, [r3, #8]
d0082dfa:	4798      	blx	r3
d0082dfc:	7923      	ldrb	r3, [r4, #4]
d0082dfe:	2b06      	cmp	r3, #6
d0082e00:	f240 8089 	bls.w	d0082f16 <draw_star_shape+0x392>
d0082e04:	8820      	ldrh	r0, [r4, #0]
d0082e06:	f240 15df 	movw	r5, #479	; 0x1df
d0082e0a:	8861      	ldrh	r1, [r4, #2]
d0082e0c:	3001      	adds	r0, #1
d0082e0e:	f1a1 0227 	sub.w	r2, r1, #39	; 0x27
d0082e12:	b283      	uxth	r3, r0
d0082e14:	b200      	sxth	r0, r0
d0082e16:	42ab      	cmp	r3, r5
d0082e18:	bf94      	ite	ls
d0082e1a:	2300      	movls	r3, #0
d0082e1c:	2301      	movhi	r3, #1
d0082e1e:	f5b2 7f8d 	cmp.w	r2, #282	; 0x11a
d0082e22:	d219      	bcs.n	d0082e58 <draw_star_shape+0x2d4>
d0082e24:	b9c3      	cbnz	r3, d0082e58 <draw_star_shape+0x2d4>
d0082e26:	4a18      	ldr	r2, [pc, #96]	; (d0082e88 <draw_star_shape+0x304>)
d0082e28:	3901      	subs	r1, #1
d0082e2a:	7b13      	ldrb	r3, [r2, #12]
d0082e2c:	b209      	sxth	r1, r1
d0082e2e:	7b57      	ldrb	r7, [r2, #13]
d0082e30:	7b96      	ldrb	r6, [r2, #14]
d0082e32:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082e36:	7bd2      	ldrb	r2, [r2, #15]
d0082e38:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082e3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082e40:	685b      	ldr	r3, [r3, #4]
d0082e42:	689b      	ldr	r3, [r3, #8]
d0082e44:	4798      	blx	r3
d0082e46:	8820      	ldrh	r0, [r4, #0]
d0082e48:	8861      	ldrh	r1, [r4, #2]
d0082e4a:	3001      	adds	r0, #1
d0082e4c:	b283      	uxth	r3, r0
d0082e4e:	b200      	sxth	r0, r0
d0082e50:	42ab      	cmp	r3, r5
d0082e52:	bf94      	ite	ls
d0082e54:	2300      	movls	r3, #0
d0082e56:	2301      	movhi	r3, #1
d0082e58:	f1a1 0225 	sub.w	r2, r1, #37	; 0x25
d0082e5c:	f5b2 7f8d 	cmp.w	r2, #282	; 0x11a
d0082e60:	d214      	bcs.n	d0082e8c <draw_star_shape+0x308>
d0082e62:	b99b      	cbnz	r3, d0082e8c <draw_star_shape+0x308>
d0082e64:	4a08      	ldr	r2, [pc, #32]	; (d0082e88 <draw_star_shape+0x304>)
d0082e66:	3101      	adds	r1, #1
d0082e68:	7b13      	ldrb	r3, [r2, #12]
d0082e6a:	b209      	sxth	r1, r1
d0082e6c:	7b56      	ldrb	r6, [r2, #13]
d0082e6e:	7b95      	ldrb	r5, [r2, #14]
d0082e70:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0082e74:	7bd2      	ldrb	r2, [r2, #15]
d0082e76:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0082e7a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082e7e:	685b      	ldr	r3, [r3, #4]
d0082e80:	689b      	ldr	r3, [r3, #8]
d0082e82:	4798      	blx	r3
d0082e84:	e002      	b.n	d0082e8c <draw_star_shape+0x308>
d0082e86:	bf00      	nop
d0082e88:	2001f000 	.word	0x2001f000
d0082e8c:	7923      	ldrb	r3, [r4, #4]
d0082e8e:	2b08      	cmp	r3, #8
d0082e90:	d941      	bls.n	d0082f16 <draw_star_shape+0x392>
d0082e92:	8820      	ldrh	r0, [r4, #0]
d0082e94:	f240 15df 	movw	r5, #479	; 0x1df
d0082e98:	8861      	ldrh	r1, [r4, #2]
d0082e9a:	3003      	adds	r0, #3
d0082e9c:	f1a1 0227 	sub.w	r2, r1, #39	; 0x27
d0082ea0:	b283      	uxth	r3, r0
d0082ea2:	b200      	sxth	r0, r0
d0082ea4:	42ab      	cmp	r3, r5
d0082ea6:	bf94      	ite	ls
d0082ea8:	2300      	movls	r3, #0
d0082eaa:	2301      	movhi	r3, #1
d0082eac:	f5b2 7f8d 	cmp.w	r2, #282	; 0x11a
d0082eb0:	d219      	bcs.n	d0082ee6 <draw_star_shape+0x362>
d0082eb2:	b9c3      	cbnz	r3, d0082ee6 <draw_star_shape+0x362>
d0082eb4:	4a1d      	ldr	r2, [pc, #116]	; (d0082f2c <draw_star_shape+0x3a8>)
d0082eb6:	3901      	subs	r1, #1
d0082eb8:	7b13      	ldrb	r3, [r2, #12]
d0082eba:	b209      	sxth	r1, r1
d0082ebc:	7b57      	ldrb	r7, [r2, #13]
d0082ebe:	7b96      	ldrb	r6, [r2, #14]
d0082ec0:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0082ec4:	7bd2      	ldrb	r2, [r2, #15]
d0082ec6:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0082eca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082ece:	685b      	ldr	r3, [r3, #4]
d0082ed0:	689b      	ldr	r3, [r3, #8]
d0082ed2:	4798      	blx	r3
d0082ed4:	8820      	ldrh	r0, [r4, #0]
d0082ed6:	8861      	ldrh	r1, [r4, #2]
d0082ed8:	3003      	adds	r0, #3
d0082eda:	b283      	uxth	r3, r0
d0082edc:	b200      	sxth	r0, r0
d0082ede:	42ab      	cmp	r3, r5
d0082ee0:	bf94      	ite	ls
d0082ee2:	2300      	movls	r3, #0
d0082ee4:	2301      	movhi	r3, #1
d0082ee6:	f1a1 0225 	sub.w	r2, r1, #37	; 0x25
d0082eea:	f5b2 7f8d 	cmp.w	r2, #282	; 0x11a
d0082eee:	d212      	bcs.n	d0082f16 <draw_star_shape+0x392>
d0082ef0:	b98b      	cbnz	r3, d0082f16 <draw_star_shape+0x392>
d0082ef2:	4a0e      	ldr	r2, [pc, #56]	; (d0082f2c <draw_star_shape+0x3a8>)
d0082ef4:	3101      	adds	r1, #1
d0082ef6:	7b13      	ldrb	r3, [r2, #12]
d0082ef8:	b209      	sxth	r1, r1
d0082efa:	7b55      	ldrb	r5, [r2, #13]
d0082efc:	7b94      	ldrb	r4, [r2, #14]
d0082efe:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0082f02:	7bd2      	ldrb	r2, [r2, #15]
d0082f04:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0082f08:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0082f0c:	685b      	ldr	r3, [r3, #4]
d0082f0e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0082f12:	689b      	ldr	r3, [r3, #8]
d0082f14:	4718      	bx	r3
d0082f16:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0082f1a:	2505      	movs	r5, #5
d0082f1c:	e659      	b.n	d0082bd2 <draw_star_shape+0x4e>
d0082f1e:	2507      	movs	r5, #7
d0082f20:	e657      	b.n	d0082bd2 <draw_star_shape+0x4e>
d0082f22:	2503      	movs	r5, #3
d0082f24:	e655      	b.n	d0082bd2 <draw_star_shape+0x4e>
d0082f26:	461d      	mov	r5, r3
d0082f28:	e653      	b.n	d0082bd2 <draw_star_shape+0x4e>
d0082f2a:	bf00      	nop
d0082f2c:	2001f000 	.word	0x2001f000

d0082f30 <draw_star_speed_range>:
d0082f30:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0082f34:	4c2c      	ldr	r4, [pc, #176]	; (d0082fe8 <draw_star_speed_range+0xb8>)
d0082f36:	f04f 0900 	mov.w	r9, #0
d0082f3a:	4607      	mov	r7, r0
d0082f3c:	4688      	mov	r8, r1
d0082f3e:	f8df a0ac 	ldr.w	sl, [pc, #172]	; d0082fec <draw_star_speed_range+0xbc>
d0082f42:	e005      	b.n	d0082f50 <draw_star_speed_range+0x20>
d0082f44:	f109 0901 	add.w	r9, r9, #1
d0082f48:	3406      	adds	r4, #6
d0082f4a:	f1b9 0f60 	cmp.w	r9, #96	; 0x60
d0082f4e:	d039      	beq.n	d0082fc4 <draw_star_speed_range+0x94>
d0082f50:	7923      	ldrb	r3, [r4, #4]
d0082f52:	fa5f fb89 	uxtb.w	fp, r9
d0082f56:	42bb      	cmp	r3, r7
d0082f58:	d3f4      	bcc.n	d0082f44 <draw_star_speed_range+0x14>
d0082f5a:	4543      	cmp	r3, r8
d0082f5c:	d8f2      	bhi.n	d0082f44 <draw_star_speed_range+0x14>
d0082f5e:	f89a 600c 	ldrb.w	r6, [sl, #12]
d0082f62:	f89a 500d 	ldrb.w	r5, [sl, #13]
d0082f66:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0082f6a:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0082f6e:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0082f72:	7960      	ldrb	r0, [r4, #5]
d0082f74:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d0082f78:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0082f7c:	685b      	ldr	r3, [r3, #4]
d0082f7e:	68db      	ldr	r3, [r3, #12]
d0082f80:	4798      	blx	r3
d0082f82:	4620      	mov	r0, r4
d0082f84:	f7ff fdfe 	bl	d0082b84 <draw_star_shape>
d0082f88:	7922      	ldrb	r2, [r4, #4]
d0082f8a:	8823      	ldrh	r3, [r4, #0]
d0082f8c:	2a08      	cmp	r2, #8
d0082f8e:	eba3 0302 	sub.w	r3, r3, r2
d0082f92:	b21b      	sxth	r3, r3
d0082f94:	8023      	strh	r3, [r4, #0]
d0082f96:	d817      	bhi.n	d0082fc8 <draw_star_speed_range+0x98>
d0082f98:	2a06      	cmp	r2, #6
d0082f9a:	d818      	bhi.n	d0082fce <draw_star_speed_range+0x9e>
d0082f9c:	2a04      	cmp	r2, #4
d0082f9e:	d819      	bhi.n	d0082fd4 <draw_star_speed_range+0xa4>
d0082fa0:	2a02      	cmp	r2, #2
d0082fa2:	d81a      	bhi.n	d0082fda <draw_star_speed_range+0xaa>
d0082fa4:	d01c      	beq.n	d0082fe0 <draw_star_speed_range+0xb0>
d0082fa6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0082faa:	4293      	cmp	r3, r2
d0082fac:	daca      	bge.n	d0082f44 <draw_star_speed_range+0x14>
d0082fae:	f109 0901 	add.w	r9, r9, #1
d0082fb2:	4658      	mov	r0, fp
d0082fb4:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0082fb8:	3406      	adds	r4, #6
d0082fba:	f7ff fd11 	bl	d00829e0 <reset_star>
d0082fbe:	f1b9 0f60 	cmp.w	r9, #96	; 0x60
d0082fc2:	d1c5      	bne.n	d0082f50 <draw_star_speed_range+0x20>
d0082fc4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0082fc8:	f06f 0208 	mvn.w	r2, #8
d0082fcc:	e7ed      	b.n	d0082faa <draw_star_speed_range+0x7a>
d0082fce:	f06f 0206 	mvn.w	r2, #6
d0082fd2:	e7ea      	b.n	d0082faa <draw_star_speed_range+0x7a>
d0082fd4:	f06f 0204 	mvn.w	r2, #4
d0082fd8:	e7e7      	b.n	d0082faa <draw_star_speed_range+0x7a>
d0082fda:	f06f 0202 	mvn.w	r2, #2
d0082fde:	e7e4      	b.n	d0082faa <draw_star_speed_range+0x7a>
d0082fe0:	f06f 0201 	mvn.w	r2, #1
d0082fe4:	e7e1      	b.n	d0082faa <draw_star_speed_range+0x7a>
d0082fe6:	bf00      	nop
d0082fe8:	d0092560 	.word	0xd0092560
d0082fec:	2001f000 	.word	0x2001f000

d0082ff0 <draw_star_fields_layer1>:
d0082ff0:	2105      	movs	r1, #5
d0082ff2:	2000      	movs	r0, #0
d0082ff4:	f7ff bf9c 	b.w	d0082f30 <draw_star_speed_range>

d0082ff8 <draw_star_fields_layer2>:
d0082ff8:	21ff      	movs	r1, #255	; 0xff
d0082ffa:	2007      	movs	r0, #7
d0082ffc:	f7ff bf98 	b.w	d0082f30 <draw_star_speed_range>

d0083000 <do_bubbastix_playdemo_screensaver>:
d0083000:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0083004:	4c48      	ldr	r4, [pc, #288]	; (d0083128 <do_bubbastix_playdemo_screensaver+0x128>)
d0083006:	b085      	sub	sp, #20
d0083008:	4f48      	ldr	r7, [pc, #288]	; (d008312c <do_bubbastix_playdemo_screensaver+0x12c>)
d008300a:	2521      	movs	r5, #33	; 0x21
d008300c:	7b23      	ldrb	r3, [r4, #12]
d008300e:	7b62      	ldrb	r2, [r4, #13]
d0083010:	7ba1      	ldrb	r1, [r4, #14]
d0083012:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083016:	7be2      	ldrb	r2, [r4, #15]
d0083018:	f8df 9114 	ldr.w	r9, [pc, #276]	; d0083130 <do_bubbastix_playdemo_screensaver+0x130>
d008301c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083020:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0083024:	681b      	ldr	r3, [r3, #0]
d0083026:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0083028:	4798      	blx	r3
d008302a:	6839      	ldr	r1, [r7, #0]
d008302c:	f8df c104 	ldr.w	ip, [pc, #260]	; d0083134 <do_bubbastix_playdemo_screensaver+0x134>
d0083030:	2328      	movs	r3, #40	; 0x28
d0083032:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0083036:	4606      	mov	r6, r0
d0083038:	f8cd c000 	str.w	ip, [sp]
d008303c:	2000      	movs	r0, #0
d008303e:	9102      	str	r1, [sp, #8]
d0083040:	2168      	movs	r1, #104	; 0x68
d0083042:	9501      	str	r5, [sp, #4]
d0083044:	f7fd f808 	bl	d0080058 <gfx_draw1bit>
d0083048:	7b23      	ldrb	r3, [r4, #12]
d008304a:	7b62      	ldrb	r2, [r4, #13]
d008304c:	4638      	mov	r0, r7
d008304e:	7ba1      	ldrb	r1, [r4, #14]
d0083050:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083054:	7be2      	ldrb	r2, [r4, #15]
d0083056:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008305a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008305e:	681b      	ldr	r3, [r3, #0]
d0083060:	699b      	ldr	r3, [r3, #24]
d0083062:	4798      	blx	r3
d0083064:	7b23      	ldrb	r3, [r4, #12]
d0083066:	7b62      	ldrb	r2, [r4, #13]
d0083068:	4628      	mov	r0, r5
d008306a:	7ba1      	ldrb	r1, [r4, #14]
d008306c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0083070:	7be2      	ldrb	r2, [r4, #15]
d0083072:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0083076:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008307a:	685b      	ldr	r3, [r3, #4]
d008307c:	68db      	ldr	r3, [r3, #12]
d008307e:	4798      	blx	r3
d0083080:	7b25      	ldrb	r5, [r4, #12]
d0083082:	7b61      	ldrb	r1, [r4, #13]
d0083084:	2364      	movs	r3, #100	; 0x64
d0083086:	7ba0      	ldrb	r0, [r4, #14]
d0083088:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008308c:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0083090:	7be7      	ldrb	r7, [r4, #15]
d0083092:	2190      	movs	r1, #144	; 0x90
d0083094:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0083098:	2000      	movs	r0, #0
d008309a:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d008309e:	686d      	ldr	r5, [r5, #4]
d00830a0:	686d      	ldr	r5, [r5, #4]
d00830a2:	47a8      	blx	r5
d00830a4:	7b23      	ldrb	r3, [r4, #12]
d00830a6:	7b62      	ldrb	r2, [r4, #13]
d00830a8:	4630      	mov	r0, r6
d00830aa:	7ba1      	ldrb	r1, [r4, #14]
d00830ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00830b0:	7be2      	ldrb	r2, [r4, #15]
d00830b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00830b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00830ba:	681b      	ldr	r3, [r3, #0]
d00830bc:	699b      	ldr	r3, [r3, #24]
d00830be:	4798      	blx	r3
d00830c0:	f8b9 1000 	ldrh.w	r1, [r9]
d00830c4:	3901      	subs	r1, #1
d00830c6:	b209      	sxth	r1, r1
d00830c8:	f511 7f8e 	cmn.w	r1, #284	; 0x11c
d00830cc:	db27      	blt.n	d008311e <do_bubbastix_playdemo_screensaver+0x11e>
d00830ce:	f8a9 1000 	strh.w	r1, [r9]
d00830d2:	f04f 0800 	mov.w	r8, #0
d00830d6:	f04f 0a6a 	mov.w	sl, #106	; 0x6a
d00830da:	f8df b05c 	ldr.w	fp, [pc, #92]	; d0083138 <do_bubbastix_playdemo_screensaver+0x138>
d00830de:	7b27      	ldrb	r7, [r4, #12]
d00830e0:	4441      	add	r1, r8
d00830e2:	7b66      	ldrb	r6, [r4, #13]
d00830e4:	f508 788e 	add.w	r8, r8, #284	; 0x11c
d00830e8:	7ba0      	ldrb	r0, [r4, #14]
d00830ea:	b209      	sxth	r1, r1
d00830ec:	ea47 2706 	orr.w	r7, r7, r6, lsl #8
d00830f0:	7be5      	ldrb	r5, [r4, #15]
d00830f2:	f44f 738e 	mov.w	r3, #284	; 0x11c
d00830f6:	22d6      	movs	r2, #214	; 0xd6
d00830f8:	ea47 4600 	orr.w	r6, r7, r0, lsl #16
d00830fc:	4658      	mov	r0, fp
d00830fe:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0083102:	686d      	ldr	r5, [r5, #4]
d0083104:	f8cd a000 	str.w	sl, [sp]
d0083108:	69ad      	ldr	r5, [r5, #24]
d008310a:	47a8      	blx	r5
d008310c:	f5b8 7f55 	cmp.w	r8, #852	; 0x354
d0083110:	d002      	beq.n	d0083118 <do_bubbastix_playdemo_screensaver+0x118>
d0083112:	f9b9 1000 	ldrsh.w	r1, [r9]
d0083116:	e7e2      	b.n	d00830de <do_bubbastix_playdemo_screensaver+0xde>
d0083118:	b005      	add	sp, #20
d008311a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d008311e:	2300      	movs	r3, #0
d0083120:	4619      	mov	r1, r3
d0083122:	f8a9 3000 	strh.w	r3, [r9]
d0083126:	e7d4      	b.n	d00830d2 <do_bubbastix_playdemo_screensaver+0xd2>
d0083128:	2001f000 	.word	0x2001f000
d008312c:	d00927c0 	.word	0xd00927c0
d0083130:	d00927a0 	.word	0xd00927a0
d0083134:	d008a3b0 	.word	0xd008a3b0
d0083138:	d008ad10 	.word	0xd008ad10

d008313c <__errno>:
d008313c:	4b01      	ldr	r3, [pc, #4]	; (d0083144 <__errno+0x8>)
d008313e:	6818      	ldr	r0, [r3, #0]
d0083140:	4770      	bx	lr
d0083142:	bf00      	nop
d0083144:	d0092384 	.word	0xd0092384

d0083148 <malloc>:
d0083148:	4b02      	ldr	r3, [pc, #8]	; (d0083154 <malloc+0xc>)
d008314a:	4601      	mov	r1, r0
d008314c:	6818      	ldr	r0, [r3, #0]
d008314e:	f000 b85b 	b.w	d0083208 <_malloc_r>
d0083152:	bf00      	nop
d0083154:	d0092384 	.word	0xd0092384

d0083158 <memset>:
d0083158:	4402      	add	r2, r0
d008315a:	4603      	mov	r3, r0
d008315c:	4293      	cmp	r3, r2
d008315e:	d100      	bne.n	d0083162 <memset+0xa>
d0083160:	4770      	bx	lr
d0083162:	f803 1b01 	strb.w	r1, [r3], #1
d0083166:	e7f9      	b.n	d008315c <memset+0x4>

d0083168 <_free_r>:
d0083168:	b537      	push	{r0, r1, r2, r4, r5, lr}
d008316a:	2900      	cmp	r1, #0
d008316c:	d048      	beq.n	d0083200 <_free_r+0x98>
d008316e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0083172:	9001      	str	r0, [sp, #4]
d0083174:	2b00      	cmp	r3, #0
d0083176:	f1a1 0404 	sub.w	r4, r1, #4
d008317a:	bfb8      	it	lt
d008317c:	18e4      	addlt	r4, r4, r3
d008317e:	f000 fcf3 	bl	d0083b68 <__malloc_lock>
d0083182:	4a20      	ldr	r2, [pc, #128]	; (d0083204 <_free_r+0x9c>)
d0083184:	9801      	ldr	r0, [sp, #4]
d0083186:	6813      	ldr	r3, [r2, #0]
d0083188:	4615      	mov	r5, r2
d008318a:	b933      	cbnz	r3, d008319a <_free_r+0x32>
d008318c:	6063      	str	r3, [r4, #4]
d008318e:	6014      	str	r4, [r2, #0]
d0083190:	b003      	add	sp, #12
d0083192:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0083196:	f000 bced 	b.w	d0083b74 <__malloc_unlock>
d008319a:	42a3      	cmp	r3, r4
d008319c:	d90b      	bls.n	d00831b6 <_free_r+0x4e>
d008319e:	6821      	ldr	r1, [r4, #0]
d00831a0:	1862      	adds	r2, r4, r1
d00831a2:	4293      	cmp	r3, r2
d00831a4:	bf04      	itt	eq
d00831a6:	681a      	ldreq	r2, [r3, #0]
d00831a8:	685b      	ldreq	r3, [r3, #4]
d00831aa:	6063      	str	r3, [r4, #4]
d00831ac:	bf04      	itt	eq
d00831ae:	1852      	addeq	r2, r2, r1
d00831b0:	6022      	streq	r2, [r4, #0]
d00831b2:	602c      	str	r4, [r5, #0]
d00831b4:	e7ec      	b.n	d0083190 <_free_r+0x28>
d00831b6:	461a      	mov	r2, r3
d00831b8:	685b      	ldr	r3, [r3, #4]
d00831ba:	b10b      	cbz	r3, d00831c0 <_free_r+0x58>
d00831bc:	42a3      	cmp	r3, r4
d00831be:	d9fa      	bls.n	d00831b6 <_free_r+0x4e>
d00831c0:	6811      	ldr	r1, [r2, #0]
d00831c2:	1855      	adds	r5, r2, r1
d00831c4:	42a5      	cmp	r5, r4
d00831c6:	d10b      	bne.n	d00831e0 <_free_r+0x78>
d00831c8:	6824      	ldr	r4, [r4, #0]
d00831ca:	4421      	add	r1, r4
d00831cc:	1854      	adds	r4, r2, r1
d00831ce:	42a3      	cmp	r3, r4
d00831d0:	6011      	str	r1, [r2, #0]
d00831d2:	d1dd      	bne.n	d0083190 <_free_r+0x28>
d00831d4:	681c      	ldr	r4, [r3, #0]
d00831d6:	685b      	ldr	r3, [r3, #4]
d00831d8:	6053      	str	r3, [r2, #4]
d00831da:	4421      	add	r1, r4
d00831dc:	6011      	str	r1, [r2, #0]
d00831de:	e7d7      	b.n	d0083190 <_free_r+0x28>
d00831e0:	d902      	bls.n	d00831e8 <_free_r+0x80>
d00831e2:	230c      	movs	r3, #12
d00831e4:	6003      	str	r3, [r0, #0]
d00831e6:	e7d3      	b.n	d0083190 <_free_r+0x28>
d00831e8:	6825      	ldr	r5, [r4, #0]
d00831ea:	1961      	adds	r1, r4, r5
d00831ec:	428b      	cmp	r3, r1
d00831ee:	bf04      	itt	eq
d00831f0:	6819      	ldreq	r1, [r3, #0]
d00831f2:	685b      	ldreq	r3, [r3, #4]
d00831f4:	6063      	str	r3, [r4, #4]
d00831f6:	bf04      	itt	eq
d00831f8:	1949      	addeq	r1, r1, r5
d00831fa:	6021      	streq	r1, [r4, #0]
d00831fc:	6054      	str	r4, [r2, #4]
d00831fe:	e7c7      	b.n	d0083190 <_free_r+0x28>
d0083200:	b003      	add	sp, #12
d0083202:	bd30      	pop	{r4, r5, pc}
d0083204:	d00927a4 	.word	0xd00927a4

d0083208 <_malloc_r>:
d0083208:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008320a:	1ccd      	adds	r5, r1, #3
d008320c:	f025 0503 	bic.w	r5, r5, #3
d0083210:	3508      	adds	r5, #8
d0083212:	2d0c      	cmp	r5, #12
d0083214:	bf38      	it	cc
d0083216:	250c      	movcc	r5, #12
d0083218:	2d00      	cmp	r5, #0
d008321a:	4606      	mov	r6, r0
d008321c:	db01      	blt.n	d0083222 <_malloc_r+0x1a>
d008321e:	42a9      	cmp	r1, r5
d0083220:	d903      	bls.n	d008322a <_malloc_r+0x22>
d0083222:	230c      	movs	r3, #12
d0083224:	6033      	str	r3, [r6, #0]
d0083226:	2000      	movs	r0, #0
d0083228:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008322a:	f000 fc9d 	bl	d0083b68 <__malloc_lock>
d008322e:	4921      	ldr	r1, [pc, #132]	; (d00832b4 <_malloc_r+0xac>)
d0083230:	680a      	ldr	r2, [r1, #0]
d0083232:	4614      	mov	r4, r2
d0083234:	b99c      	cbnz	r4, d008325e <_malloc_r+0x56>
d0083236:	4f20      	ldr	r7, [pc, #128]	; (d00832b8 <_malloc_r+0xb0>)
d0083238:	683b      	ldr	r3, [r7, #0]
d008323a:	b923      	cbnz	r3, d0083246 <_malloc_r+0x3e>
d008323c:	4621      	mov	r1, r4
d008323e:	4630      	mov	r0, r6
d0083240:	f7fd f842 	bl	d00802c8 <_sbrk_r>
d0083244:	6038      	str	r0, [r7, #0]
d0083246:	4629      	mov	r1, r5
d0083248:	4630      	mov	r0, r6
d008324a:	f7fd f83d 	bl	d00802c8 <_sbrk_r>
d008324e:	1c43      	adds	r3, r0, #1
d0083250:	d123      	bne.n	d008329a <_malloc_r+0x92>
d0083252:	230c      	movs	r3, #12
d0083254:	6033      	str	r3, [r6, #0]
d0083256:	4630      	mov	r0, r6
d0083258:	f000 fc8c 	bl	d0083b74 <__malloc_unlock>
d008325c:	e7e3      	b.n	d0083226 <_malloc_r+0x1e>
d008325e:	6823      	ldr	r3, [r4, #0]
d0083260:	1b5b      	subs	r3, r3, r5
d0083262:	d417      	bmi.n	d0083294 <_malloc_r+0x8c>
d0083264:	2b0b      	cmp	r3, #11
d0083266:	d903      	bls.n	d0083270 <_malloc_r+0x68>
d0083268:	6023      	str	r3, [r4, #0]
d008326a:	441c      	add	r4, r3
d008326c:	6025      	str	r5, [r4, #0]
d008326e:	e004      	b.n	d008327a <_malloc_r+0x72>
d0083270:	6863      	ldr	r3, [r4, #4]
d0083272:	42a2      	cmp	r2, r4
d0083274:	bf0c      	ite	eq
d0083276:	600b      	streq	r3, [r1, #0]
d0083278:	6053      	strne	r3, [r2, #4]
d008327a:	4630      	mov	r0, r6
d008327c:	f000 fc7a 	bl	d0083b74 <__malloc_unlock>
d0083280:	f104 000b 	add.w	r0, r4, #11
d0083284:	1d23      	adds	r3, r4, #4
d0083286:	f020 0007 	bic.w	r0, r0, #7
d008328a:	1ac2      	subs	r2, r0, r3
d008328c:	d0cc      	beq.n	d0083228 <_malloc_r+0x20>
d008328e:	1a1b      	subs	r3, r3, r0
d0083290:	50a3      	str	r3, [r4, r2]
d0083292:	e7c9      	b.n	d0083228 <_malloc_r+0x20>
d0083294:	4622      	mov	r2, r4
d0083296:	6864      	ldr	r4, [r4, #4]
d0083298:	e7cc      	b.n	d0083234 <_malloc_r+0x2c>
d008329a:	1cc4      	adds	r4, r0, #3
d008329c:	f024 0403 	bic.w	r4, r4, #3
d00832a0:	42a0      	cmp	r0, r4
d00832a2:	d0e3      	beq.n	d008326c <_malloc_r+0x64>
d00832a4:	1a21      	subs	r1, r4, r0
d00832a6:	4630      	mov	r0, r6
d00832a8:	f7fd f80e 	bl	d00802c8 <_sbrk_r>
d00832ac:	3001      	adds	r0, #1
d00832ae:	d1dd      	bne.n	d008326c <_malloc_r+0x64>
d00832b0:	e7cf      	b.n	d0083252 <_malloc_r+0x4a>
d00832b2:	bf00      	nop
d00832b4:	d00927a4 	.word	0xd00927a4
d00832b8:	d00927a8 	.word	0xd00927a8

d00832bc <_puts_r>:
d00832bc:	b570      	push	{r4, r5, r6, lr}
d00832be:	460e      	mov	r6, r1
d00832c0:	4605      	mov	r5, r0
d00832c2:	b118      	cbz	r0, d00832cc <_puts_r+0x10>
d00832c4:	6983      	ldr	r3, [r0, #24]
d00832c6:	b90b      	cbnz	r3, d00832cc <_puts_r+0x10>
d00832c8:	f000 fb4a 	bl	d0083960 <__sinit>
d00832cc:	69ab      	ldr	r3, [r5, #24]
d00832ce:	68ac      	ldr	r4, [r5, #8]
d00832d0:	b913      	cbnz	r3, d00832d8 <_puts_r+0x1c>
d00832d2:	4628      	mov	r0, r5
d00832d4:	f000 fb44 	bl	d0083960 <__sinit>
d00832d8:	4b2c      	ldr	r3, [pc, #176]	; (d008338c <_puts_r+0xd0>)
d00832da:	429c      	cmp	r4, r3
d00832dc:	d120      	bne.n	d0083320 <_puts_r+0x64>
d00832de:	686c      	ldr	r4, [r5, #4]
d00832e0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00832e2:	07db      	lsls	r3, r3, #31
d00832e4:	d405      	bmi.n	d00832f2 <_puts_r+0x36>
d00832e6:	89a3      	ldrh	r3, [r4, #12]
d00832e8:	0598      	lsls	r0, r3, #22
d00832ea:	d402      	bmi.n	d00832f2 <_puts_r+0x36>
d00832ec:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00832ee:	f000 fbd5 	bl	d0083a9c <__retarget_lock_acquire_recursive>
d00832f2:	89a3      	ldrh	r3, [r4, #12]
d00832f4:	0719      	lsls	r1, r3, #28
d00832f6:	d51d      	bpl.n	d0083334 <_puts_r+0x78>
d00832f8:	6923      	ldr	r3, [r4, #16]
d00832fa:	b1db      	cbz	r3, d0083334 <_puts_r+0x78>
d00832fc:	3e01      	subs	r6, #1
d00832fe:	68a3      	ldr	r3, [r4, #8]
d0083300:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d0083304:	3b01      	subs	r3, #1
d0083306:	60a3      	str	r3, [r4, #8]
d0083308:	bb39      	cbnz	r1, d008335a <_puts_r+0x9e>
d008330a:	2b00      	cmp	r3, #0
d008330c:	da38      	bge.n	d0083380 <_puts_r+0xc4>
d008330e:	4622      	mov	r2, r4
d0083310:	210a      	movs	r1, #10
d0083312:	4628      	mov	r0, r5
d0083314:	f000 f94a 	bl	d00835ac <__swbuf_r>
d0083318:	3001      	adds	r0, #1
d008331a:	d011      	beq.n	d0083340 <_puts_r+0x84>
d008331c:	250a      	movs	r5, #10
d008331e:	e011      	b.n	d0083344 <_puts_r+0x88>
d0083320:	4b1b      	ldr	r3, [pc, #108]	; (d0083390 <_puts_r+0xd4>)
d0083322:	429c      	cmp	r4, r3
d0083324:	d101      	bne.n	d008332a <_puts_r+0x6e>
d0083326:	68ac      	ldr	r4, [r5, #8]
d0083328:	e7da      	b.n	d00832e0 <_puts_r+0x24>
d008332a:	4b1a      	ldr	r3, [pc, #104]	; (d0083394 <_puts_r+0xd8>)
d008332c:	429c      	cmp	r4, r3
d008332e:	bf08      	it	eq
d0083330:	68ec      	ldreq	r4, [r5, #12]
d0083332:	e7d5      	b.n	d00832e0 <_puts_r+0x24>
d0083334:	4621      	mov	r1, r4
d0083336:	4628      	mov	r0, r5
d0083338:	f000 f98a 	bl	d0083650 <__swsetup_r>
d008333c:	2800      	cmp	r0, #0
d008333e:	d0dd      	beq.n	d00832fc <_puts_r+0x40>
d0083340:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0083344:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0083346:	07da      	lsls	r2, r3, #31
d0083348:	d405      	bmi.n	d0083356 <_puts_r+0x9a>
d008334a:	89a3      	ldrh	r3, [r4, #12]
d008334c:	059b      	lsls	r3, r3, #22
d008334e:	d402      	bmi.n	d0083356 <_puts_r+0x9a>
d0083350:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0083352:	f000 fba4 	bl	d0083a9e <__retarget_lock_release_recursive>
d0083356:	4628      	mov	r0, r5
d0083358:	bd70      	pop	{r4, r5, r6, pc}
d008335a:	2b00      	cmp	r3, #0
d008335c:	da04      	bge.n	d0083368 <_puts_r+0xac>
d008335e:	69a2      	ldr	r2, [r4, #24]
d0083360:	429a      	cmp	r2, r3
d0083362:	dc06      	bgt.n	d0083372 <_puts_r+0xb6>
d0083364:	290a      	cmp	r1, #10
d0083366:	d004      	beq.n	d0083372 <_puts_r+0xb6>
d0083368:	6823      	ldr	r3, [r4, #0]
d008336a:	1c5a      	adds	r2, r3, #1
d008336c:	6022      	str	r2, [r4, #0]
d008336e:	7019      	strb	r1, [r3, #0]
d0083370:	e7c5      	b.n	d00832fe <_puts_r+0x42>
d0083372:	4622      	mov	r2, r4
d0083374:	4628      	mov	r0, r5
d0083376:	f000 f919 	bl	d00835ac <__swbuf_r>
d008337a:	3001      	adds	r0, #1
d008337c:	d1bf      	bne.n	d00832fe <_puts_r+0x42>
d008337e:	e7df      	b.n	d0083340 <_puts_r+0x84>
d0083380:	6823      	ldr	r3, [r4, #0]
d0083382:	250a      	movs	r5, #10
d0083384:	1c5a      	adds	r2, r3, #1
d0083386:	6022      	str	r2, [r4, #0]
d0083388:	701d      	strb	r5, [r3, #0]
d008338a:	e7db      	b.n	d0083344 <_puts_r+0x88>
d008338c:	d00922cc 	.word	0xd00922cc
d0083390:	d00922ec 	.word	0xd00922ec
d0083394:	d00922ac 	.word	0xd00922ac

d0083398 <puts>:
d0083398:	4b02      	ldr	r3, [pc, #8]	; (d00833a4 <puts+0xc>)
d008339a:	4601      	mov	r1, r0
d008339c:	6818      	ldr	r0, [r3, #0]
d008339e:	f7ff bf8d 	b.w	d00832bc <_puts_r>
d00833a2:	bf00      	nop
d00833a4:	d0092384 	.word	0xd0092384

d00833a8 <setbuf>:
d00833a8:	2900      	cmp	r1, #0
d00833aa:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00833ae:	bf0c      	ite	eq
d00833b0:	2202      	moveq	r2, #2
d00833b2:	2200      	movne	r2, #0
d00833b4:	f000 b800 	b.w	d00833b8 <setvbuf>

d00833b8 <setvbuf>:
d00833b8:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00833bc:	461d      	mov	r5, r3
d00833be:	4b5d      	ldr	r3, [pc, #372]	; (d0083534 <setvbuf+0x17c>)
d00833c0:	681f      	ldr	r7, [r3, #0]
d00833c2:	4604      	mov	r4, r0
d00833c4:	460e      	mov	r6, r1
d00833c6:	4690      	mov	r8, r2
d00833c8:	b127      	cbz	r7, d00833d4 <setvbuf+0x1c>
d00833ca:	69bb      	ldr	r3, [r7, #24]
d00833cc:	b913      	cbnz	r3, d00833d4 <setvbuf+0x1c>
d00833ce:	4638      	mov	r0, r7
d00833d0:	f000 fac6 	bl	d0083960 <__sinit>
d00833d4:	4b58      	ldr	r3, [pc, #352]	; (d0083538 <setvbuf+0x180>)
d00833d6:	429c      	cmp	r4, r3
d00833d8:	d167      	bne.n	d00834aa <setvbuf+0xf2>
d00833da:	687c      	ldr	r4, [r7, #4]
d00833dc:	f1b8 0f02 	cmp.w	r8, #2
d00833e0:	d006      	beq.n	d00833f0 <setvbuf+0x38>
d00833e2:	f1b8 0f01 	cmp.w	r8, #1
d00833e6:	f200 809f 	bhi.w	d0083528 <setvbuf+0x170>
d00833ea:	2d00      	cmp	r5, #0
d00833ec:	f2c0 809c 	blt.w	d0083528 <setvbuf+0x170>
d00833f0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00833f2:	07db      	lsls	r3, r3, #31
d00833f4:	d405      	bmi.n	d0083402 <setvbuf+0x4a>
d00833f6:	89a3      	ldrh	r3, [r4, #12]
d00833f8:	0598      	lsls	r0, r3, #22
d00833fa:	d402      	bmi.n	d0083402 <setvbuf+0x4a>
d00833fc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00833fe:	f000 fb4d 	bl	d0083a9c <__retarget_lock_acquire_recursive>
d0083402:	4621      	mov	r1, r4
d0083404:	4638      	mov	r0, r7
d0083406:	f000 fa17 	bl	d0083838 <_fflush_r>
d008340a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008340c:	b141      	cbz	r1, d0083420 <setvbuf+0x68>
d008340e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0083412:	4299      	cmp	r1, r3
d0083414:	d002      	beq.n	d008341c <setvbuf+0x64>
d0083416:	4638      	mov	r0, r7
d0083418:	f7ff fea6 	bl	d0083168 <_free_r>
d008341c:	2300      	movs	r3, #0
d008341e:	6363      	str	r3, [r4, #52]	; 0x34
d0083420:	2300      	movs	r3, #0
d0083422:	61a3      	str	r3, [r4, #24]
d0083424:	6063      	str	r3, [r4, #4]
d0083426:	89a3      	ldrh	r3, [r4, #12]
d0083428:	0619      	lsls	r1, r3, #24
d008342a:	d503      	bpl.n	d0083434 <setvbuf+0x7c>
d008342c:	6921      	ldr	r1, [r4, #16]
d008342e:	4638      	mov	r0, r7
d0083430:	f7ff fe9a 	bl	d0083168 <_free_r>
d0083434:	89a3      	ldrh	r3, [r4, #12]
d0083436:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d008343a:	f023 0303 	bic.w	r3, r3, #3
d008343e:	f1b8 0f02 	cmp.w	r8, #2
d0083442:	81a3      	strh	r3, [r4, #12]
d0083444:	d06c      	beq.n	d0083520 <setvbuf+0x168>
d0083446:	ab01      	add	r3, sp, #4
d0083448:	466a      	mov	r2, sp
d008344a:	4621      	mov	r1, r4
d008344c:	4638      	mov	r0, r7
d008344e:	f000 fb27 	bl	d0083aa0 <__swhatbuf_r>
d0083452:	89a3      	ldrh	r3, [r4, #12]
d0083454:	4318      	orrs	r0, r3
d0083456:	81a0      	strh	r0, [r4, #12]
d0083458:	2d00      	cmp	r5, #0
d008345a:	d130      	bne.n	d00834be <setvbuf+0x106>
d008345c:	9d00      	ldr	r5, [sp, #0]
d008345e:	4628      	mov	r0, r5
d0083460:	f7ff fe72 	bl	d0083148 <malloc>
d0083464:	4606      	mov	r6, r0
d0083466:	2800      	cmp	r0, #0
d0083468:	d155      	bne.n	d0083516 <setvbuf+0x15e>
d008346a:	f8dd 9000 	ldr.w	r9, [sp]
d008346e:	45a9      	cmp	r9, r5
d0083470:	d14a      	bne.n	d0083508 <setvbuf+0x150>
d0083472:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0083476:	2200      	movs	r2, #0
d0083478:	60a2      	str	r2, [r4, #8]
d008347a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d008347e:	6022      	str	r2, [r4, #0]
d0083480:	6122      	str	r2, [r4, #16]
d0083482:	2201      	movs	r2, #1
d0083484:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0083488:	6162      	str	r2, [r4, #20]
d008348a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d008348c:	f043 0302 	orr.w	r3, r3, #2
d0083490:	07d2      	lsls	r2, r2, #31
d0083492:	81a3      	strh	r3, [r4, #12]
d0083494:	d405      	bmi.n	d00834a2 <setvbuf+0xea>
d0083496:	f413 7f00 	tst.w	r3, #512	; 0x200
d008349a:	d102      	bne.n	d00834a2 <setvbuf+0xea>
d008349c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008349e:	f000 fafe 	bl	d0083a9e <__retarget_lock_release_recursive>
d00834a2:	4628      	mov	r0, r5
d00834a4:	b003      	add	sp, #12
d00834a6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00834aa:	4b24      	ldr	r3, [pc, #144]	; (d008353c <setvbuf+0x184>)
d00834ac:	429c      	cmp	r4, r3
d00834ae:	d101      	bne.n	d00834b4 <setvbuf+0xfc>
d00834b0:	68bc      	ldr	r4, [r7, #8]
d00834b2:	e793      	b.n	d00833dc <setvbuf+0x24>
d00834b4:	4b22      	ldr	r3, [pc, #136]	; (d0083540 <setvbuf+0x188>)
d00834b6:	429c      	cmp	r4, r3
d00834b8:	bf08      	it	eq
d00834ba:	68fc      	ldreq	r4, [r7, #12]
d00834bc:	e78e      	b.n	d00833dc <setvbuf+0x24>
d00834be:	2e00      	cmp	r6, #0
d00834c0:	d0cd      	beq.n	d008345e <setvbuf+0xa6>
d00834c2:	69bb      	ldr	r3, [r7, #24]
d00834c4:	b913      	cbnz	r3, d00834cc <setvbuf+0x114>
d00834c6:	4638      	mov	r0, r7
d00834c8:	f000 fa4a 	bl	d0083960 <__sinit>
d00834cc:	f1b8 0f01 	cmp.w	r8, #1
d00834d0:	bf08      	it	eq
d00834d2:	89a3      	ldrheq	r3, [r4, #12]
d00834d4:	6026      	str	r6, [r4, #0]
d00834d6:	bf04      	itt	eq
d00834d8:	f043 0301 	orreq.w	r3, r3, #1
d00834dc:	81a3      	strheq	r3, [r4, #12]
d00834de:	89a2      	ldrh	r2, [r4, #12]
d00834e0:	f012 0308 	ands.w	r3, r2, #8
d00834e4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00834e8:	d01c      	beq.n	d0083524 <setvbuf+0x16c>
d00834ea:	07d3      	lsls	r3, r2, #31
d00834ec:	bf41      	itttt	mi
d00834ee:	2300      	movmi	r3, #0
d00834f0:	426d      	negmi	r5, r5
d00834f2:	60a3      	strmi	r3, [r4, #8]
d00834f4:	61a5      	strmi	r5, [r4, #24]
d00834f6:	bf58      	it	pl
d00834f8:	60a5      	strpl	r5, [r4, #8]
d00834fa:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00834fc:	f015 0501 	ands.w	r5, r5, #1
d0083500:	d115      	bne.n	d008352e <setvbuf+0x176>
d0083502:	f412 7f00 	tst.w	r2, #512	; 0x200
d0083506:	e7c8      	b.n	d008349a <setvbuf+0xe2>
d0083508:	4648      	mov	r0, r9
d008350a:	f7ff fe1d 	bl	d0083148 <malloc>
d008350e:	4606      	mov	r6, r0
d0083510:	2800      	cmp	r0, #0
d0083512:	d0ae      	beq.n	d0083472 <setvbuf+0xba>
d0083514:	464d      	mov	r5, r9
d0083516:	89a3      	ldrh	r3, [r4, #12]
d0083518:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d008351c:	81a3      	strh	r3, [r4, #12]
d008351e:	e7d0      	b.n	d00834c2 <setvbuf+0x10a>
d0083520:	2500      	movs	r5, #0
d0083522:	e7a8      	b.n	d0083476 <setvbuf+0xbe>
d0083524:	60a3      	str	r3, [r4, #8]
d0083526:	e7e8      	b.n	d00834fa <setvbuf+0x142>
d0083528:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008352c:	e7b9      	b.n	d00834a2 <setvbuf+0xea>
d008352e:	2500      	movs	r5, #0
d0083530:	e7b7      	b.n	d00834a2 <setvbuf+0xea>
d0083532:	bf00      	nop
d0083534:	d0092384 	.word	0xd0092384
d0083538:	d00922cc 	.word	0xd00922cc
d008353c:	d00922ec 	.word	0xd00922ec
d0083540:	d00922ac 	.word	0xd00922ac

d0083544 <sniprintf>:
d0083544:	b40c      	push	{r2, r3}
d0083546:	b530      	push	{r4, r5, lr}
d0083548:	4b17      	ldr	r3, [pc, #92]	; (d00835a8 <sniprintf+0x64>)
d008354a:	1e0c      	subs	r4, r1, #0
d008354c:	681d      	ldr	r5, [r3, #0]
d008354e:	b09d      	sub	sp, #116	; 0x74
d0083550:	da08      	bge.n	d0083564 <sniprintf+0x20>
d0083552:	238b      	movs	r3, #139	; 0x8b
d0083554:	602b      	str	r3, [r5, #0]
d0083556:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008355a:	b01d      	add	sp, #116	; 0x74
d008355c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0083560:	b002      	add	sp, #8
d0083562:	4770      	bx	lr
d0083564:	f44f 7302 	mov.w	r3, #520	; 0x208
d0083568:	f8ad 3014 	strh.w	r3, [sp, #20]
d008356c:	bf14      	ite	ne
d008356e:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0083572:	4623      	moveq	r3, r4
d0083574:	9304      	str	r3, [sp, #16]
d0083576:	9307      	str	r3, [sp, #28]
d0083578:	f64f 73ff 	movw	r3, #65535	; 0xffff
d008357c:	9002      	str	r0, [sp, #8]
d008357e:	9006      	str	r0, [sp, #24]
d0083580:	f8ad 3016 	strh.w	r3, [sp, #22]
d0083584:	9a20      	ldr	r2, [sp, #128]	; 0x80
d0083586:	ab21      	add	r3, sp, #132	; 0x84
d0083588:	a902      	add	r1, sp, #8
d008358a:	4628      	mov	r0, r5
d008358c:	9301      	str	r3, [sp, #4]
d008358e:	f000 fb53 	bl	d0083c38 <_svfiprintf_r>
d0083592:	1c43      	adds	r3, r0, #1
d0083594:	bfbc      	itt	lt
d0083596:	238b      	movlt	r3, #139	; 0x8b
d0083598:	602b      	strlt	r3, [r5, #0]
d008359a:	2c00      	cmp	r4, #0
d008359c:	d0dd      	beq.n	d008355a <sniprintf+0x16>
d008359e:	9b02      	ldr	r3, [sp, #8]
d00835a0:	2200      	movs	r2, #0
d00835a2:	701a      	strb	r2, [r3, #0]
d00835a4:	e7d9      	b.n	d008355a <sniprintf+0x16>
d00835a6:	bf00      	nop
d00835a8:	d0092384 	.word	0xd0092384

d00835ac <__swbuf_r>:
d00835ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00835ae:	460e      	mov	r6, r1
d00835b0:	4614      	mov	r4, r2
d00835b2:	4605      	mov	r5, r0
d00835b4:	b118      	cbz	r0, d00835be <__swbuf_r+0x12>
d00835b6:	6983      	ldr	r3, [r0, #24]
d00835b8:	b90b      	cbnz	r3, d00835be <__swbuf_r+0x12>
d00835ba:	f000 f9d1 	bl	d0083960 <__sinit>
d00835be:	4b21      	ldr	r3, [pc, #132]	; (d0083644 <__swbuf_r+0x98>)
d00835c0:	429c      	cmp	r4, r3
d00835c2:	d12b      	bne.n	d008361c <__swbuf_r+0x70>
d00835c4:	686c      	ldr	r4, [r5, #4]
d00835c6:	69a3      	ldr	r3, [r4, #24]
d00835c8:	60a3      	str	r3, [r4, #8]
d00835ca:	89a3      	ldrh	r3, [r4, #12]
d00835cc:	071a      	lsls	r2, r3, #28
d00835ce:	d52f      	bpl.n	d0083630 <__swbuf_r+0x84>
d00835d0:	6923      	ldr	r3, [r4, #16]
d00835d2:	b36b      	cbz	r3, d0083630 <__swbuf_r+0x84>
d00835d4:	6923      	ldr	r3, [r4, #16]
d00835d6:	6820      	ldr	r0, [r4, #0]
d00835d8:	1ac0      	subs	r0, r0, r3
d00835da:	6963      	ldr	r3, [r4, #20]
d00835dc:	b2f6      	uxtb	r6, r6
d00835de:	4283      	cmp	r3, r0
d00835e0:	4637      	mov	r7, r6
d00835e2:	dc04      	bgt.n	d00835ee <__swbuf_r+0x42>
d00835e4:	4621      	mov	r1, r4
d00835e6:	4628      	mov	r0, r5
d00835e8:	f000 f926 	bl	d0083838 <_fflush_r>
d00835ec:	bb30      	cbnz	r0, d008363c <__swbuf_r+0x90>
d00835ee:	68a3      	ldr	r3, [r4, #8]
d00835f0:	3b01      	subs	r3, #1
d00835f2:	60a3      	str	r3, [r4, #8]
d00835f4:	6823      	ldr	r3, [r4, #0]
d00835f6:	1c5a      	adds	r2, r3, #1
d00835f8:	6022      	str	r2, [r4, #0]
d00835fa:	701e      	strb	r6, [r3, #0]
d00835fc:	6963      	ldr	r3, [r4, #20]
d00835fe:	3001      	adds	r0, #1
d0083600:	4283      	cmp	r3, r0
d0083602:	d004      	beq.n	d008360e <__swbuf_r+0x62>
d0083604:	89a3      	ldrh	r3, [r4, #12]
d0083606:	07db      	lsls	r3, r3, #31
d0083608:	d506      	bpl.n	d0083618 <__swbuf_r+0x6c>
d008360a:	2e0a      	cmp	r6, #10
d008360c:	d104      	bne.n	d0083618 <__swbuf_r+0x6c>
d008360e:	4621      	mov	r1, r4
d0083610:	4628      	mov	r0, r5
d0083612:	f000 f911 	bl	d0083838 <_fflush_r>
d0083616:	b988      	cbnz	r0, d008363c <__swbuf_r+0x90>
d0083618:	4638      	mov	r0, r7
d008361a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d008361c:	4b0a      	ldr	r3, [pc, #40]	; (d0083648 <__swbuf_r+0x9c>)
d008361e:	429c      	cmp	r4, r3
d0083620:	d101      	bne.n	d0083626 <__swbuf_r+0x7a>
d0083622:	68ac      	ldr	r4, [r5, #8]
d0083624:	e7cf      	b.n	d00835c6 <__swbuf_r+0x1a>
d0083626:	4b09      	ldr	r3, [pc, #36]	; (d008364c <__swbuf_r+0xa0>)
d0083628:	429c      	cmp	r4, r3
d008362a:	bf08      	it	eq
d008362c:	68ec      	ldreq	r4, [r5, #12]
d008362e:	e7ca      	b.n	d00835c6 <__swbuf_r+0x1a>
d0083630:	4621      	mov	r1, r4
d0083632:	4628      	mov	r0, r5
d0083634:	f000 f80c 	bl	d0083650 <__swsetup_r>
d0083638:	2800      	cmp	r0, #0
d008363a:	d0cb      	beq.n	d00835d4 <__swbuf_r+0x28>
d008363c:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0083640:	e7ea      	b.n	d0083618 <__swbuf_r+0x6c>
d0083642:	bf00      	nop
d0083644:	d00922cc 	.word	0xd00922cc
d0083648:	d00922ec 	.word	0xd00922ec
d008364c:	d00922ac 	.word	0xd00922ac

d0083650 <__swsetup_r>:
d0083650:	4b32      	ldr	r3, [pc, #200]	; (d008371c <__swsetup_r+0xcc>)
d0083652:	b570      	push	{r4, r5, r6, lr}
d0083654:	681d      	ldr	r5, [r3, #0]
d0083656:	4606      	mov	r6, r0
d0083658:	460c      	mov	r4, r1
d008365a:	b125      	cbz	r5, d0083666 <__swsetup_r+0x16>
d008365c:	69ab      	ldr	r3, [r5, #24]
d008365e:	b913      	cbnz	r3, d0083666 <__swsetup_r+0x16>
d0083660:	4628      	mov	r0, r5
d0083662:	f000 f97d 	bl	d0083960 <__sinit>
d0083666:	4b2e      	ldr	r3, [pc, #184]	; (d0083720 <__swsetup_r+0xd0>)
d0083668:	429c      	cmp	r4, r3
d008366a:	d10f      	bne.n	d008368c <__swsetup_r+0x3c>
d008366c:	686c      	ldr	r4, [r5, #4]
d008366e:	89a3      	ldrh	r3, [r4, #12]
d0083670:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0083674:	0719      	lsls	r1, r3, #28
d0083676:	d42c      	bmi.n	d00836d2 <__swsetup_r+0x82>
d0083678:	06dd      	lsls	r5, r3, #27
d008367a:	d411      	bmi.n	d00836a0 <__swsetup_r+0x50>
d008367c:	2309      	movs	r3, #9
d008367e:	6033      	str	r3, [r6, #0]
d0083680:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0083684:	81a3      	strh	r3, [r4, #12]
d0083686:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008368a:	e03e      	b.n	d008370a <__swsetup_r+0xba>
d008368c:	4b25      	ldr	r3, [pc, #148]	; (d0083724 <__swsetup_r+0xd4>)
d008368e:	429c      	cmp	r4, r3
d0083690:	d101      	bne.n	d0083696 <__swsetup_r+0x46>
d0083692:	68ac      	ldr	r4, [r5, #8]
d0083694:	e7eb      	b.n	d008366e <__swsetup_r+0x1e>
d0083696:	4b24      	ldr	r3, [pc, #144]	; (d0083728 <__swsetup_r+0xd8>)
d0083698:	429c      	cmp	r4, r3
d008369a:	bf08      	it	eq
d008369c:	68ec      	ldreq	r4, [r5, #12]
d008369e:	e7e6      	b.n	d008366e <__swsetup_r+0x1e>
d00836a0:	0758      	lsls	r0, r3, #29
d00836a2:	d512      	bpl.n	d00836ca <__swsetup_r+0x7a>
d00836a4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00836a6:	b141      	cbz	r1, d00836ba <__swsetup_r+0x6a>
d00836a8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00836ac:	4299      	cmp	r1, r3
d00836ae:	d002      	beq.n	d00836b6 <__swsetup_r+0x66>
d00836b0:	4630      	mov	r0, r6
d00836b2:	f7ff fd59 	bl	d0083168 <_free_r>
d00836b6:	2300      	movs	r3, #0
d00836b8:	6363      	str	r3, [r4, #52]	; 0x34
d00836ba:	89a3      	ldrh	r3, [r4, #12]
d00836bc:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d00836c0:	81a3      	strh	r3, [r4, #12]
d00836c2:	2300      	movs	r3, #0
d00836c4:	6063      	str	r3, [r4, #4]
d00836c6:	6923      	ldr	r3, [r4, #16]
d00836c8:	6023      	str	r3, [r4, #0]
d00836ca:	89a3      	ldrh	r3, [r4, #12]
d00836cc:	f043 0308 	orr.w	r3, r3, #8
d00836d0:	81a3      	strh	r3, [r4, #12]
d00836d2:	6923      	ldr	r3, [r4, #16]
d00836d4:	b94b      	cbnz	r3, d00836ea <__swsetup_r+0x9a>
d00836d6:	89a3      	ldrh	r3, [r4, #12]
d00836d8:	f403 7320 	and.w	r3, r3, #640	; 0x280
d00836dc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d00836e0:	d003      	beq.n	d00836ea <__swsetup_r+0x9a>
d00836e2:	4621      	mov	r1, r4
d00836e4:	4630      	mov	r0, r6
d00836e6:	f000 f9ff 	bl	d0083ae8 <__smakebuf_r>
d00836ea:	89a0      	ldrh	r0, [r4, #12]
d00836ec:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00836f0:	f010 0301 	ands.w	r3, r0, #1
d00836f4:	d00a      	beq.n	d008370c <__swsetup_r+0xbc>
d00836f6:	2300      	movs	r3, #0
d00836f8:	60a3      	str	r3, [r4, #8]
d00836fa:	6963      	ldr	r3, [r4, #20]
d00836fc:	425b      	negs	r3, r3
d00836fe:	61a3      	str	r3, [r4, #24]
d0083700:	6923      	ldr	r3, [r4, #16]
d0083702:	b943      	cbnz	r3, d0083716 <__swsetup_r+0xc6>
d0083704:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0083708:	d1ba      	bne.n	d0083680 <__swsetup_r+0x30>
d008370a:	bd70      	pop	{r4, r5, r6, pc}
d008370c:	0781      	lsls	r1, r0, #30
d008370e:	bf58      	it	pl
d0083710:	6963      	ldrpl	r3, [r4, #20]
d0083712:	60a3      	str	r3, [r4, #8]
d0083714:	e7f4      	b.n	d0083700 <__swsetup_r+0xb0>
d0083716:	2000      	movs	r0, #0
d0083718:	e7f7      	b.n	d008370a <__swsetup_r+0xba>
d008371a:	bf00      	nop
d008371c:	d0092384 	.word	0xd0092384
d0083720:	d00922cc 	.word	0xd00922cc
d0083724:	d00922ec 	.word	0xd00922ec
d0083728:	d00922ac 	.word	0xd00922ac

d008372c <__sflush_r>:
d008372c:	898a      	ldrh	r2, [r1, #12]
d008372e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0083732:	4605      	mov	r5, r0
d0083734:	0710      	lsls	r0, r2, #28
d0083736:	460c      	mov	r4, r1
d0083738:	d458      	bmi.n	d00837ec <__sflush_r+0xc0>
d008373a:	684b      	ldr	r3, [r1, #4]
d008373c:	2b00      	cmp	r3, #0
d008373e:	dc05      	bgt.n	d008374c <__sflush_r+0x20>
d0083740:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0083742:	2b00      	cmp	r3, #0
d0083744:	dc02      	bgt.n	d008374c <__sflush_r+0x20>
d0083746:	2000      	movs	r0, #0
d0083748:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d008374c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d008374e:	2e00      	cmp	r6, #0
d0083750:	d0f9      	beq.n	d0083746 <__sflush_r+0x1a>
d0083752:	2300      	movs	r3, #0
d0083754:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0083758:	682f      	ldr	r7, [r5, #0]
d008375a:	602b      	str	r3, [r5, #0]
d008375c:	d032      	beq.n	d00837c4 <__sflush_r+0x98>
d008375e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0083760:	89a3      	ldrh	r3, [r4, #12]
d0083762:	075a      	lsls	r2, r3, #29
d0083764:	d505      	bpl.n	d0083772 <__sflush_r+0x46>
d0083766:	6863      	ldr	r3, [r4, #4]
d0083768:	1ac0      	subs	r0, r0, r3
d008376a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d008376c:	b10b      	cbz	r3, d0083772 <__sflush_r+0x46>
d008376e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0083770:	1ac0      	subs	r0, r0, r3
d0083772:	2300      	movs	r3, #0
d0083774:	4602      	mov	r2, r0
d0083776:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0083778:	6a21      	ldr	r1, [r4, #32]
d008377a:	4628      	mov	r0, r5
d008377c:	47b0      	blx	r6
d008377e:	1c43      	adds	r3, r0, #1
d0083780:	89a3      	ldrh	r3, [r4, #12]
d0083782:	d106      	bne.n	d0083792 <__sflush_r+0x66>
d0083784:	6829      	ldr	r1, [r5, #0]
d0083786:	291d      	cmp	r1, #29
d0083788:	d82c      	bhi.n	d00837e4 <__sflush_r+0xb8>
d008378a:	4a2a      	ldr	r2, [pc, #168]	; (d0083834 <__sflush_r+0x108>)
d008378c:	40ca      	lsrs	r2, r1
d008378e:	07d6      	lsls	r6, r2, #31
d0083790:	d528      	bpl.n	d00837e4 <__sflush_r+0xb8>
d0083792:	2200      	movs	r2, #0
d0083794:	6062      	str	r2, [r4, #4]
d0083796:	04d9      	lsls	r1, r3, #19
d0083798:	6922      	ldr	r2, [r4, #16]
d008379a:	6022      	str	r2, [r4, #0]
d008379c:	d504      	bpl.n	d00837a8 <__sflush_r+0x7c>
d008379e:	1c42      	adds	r2, r0, #1
d00837a0:	d101      	bne.n	d00837a6 <__sflush_r+0x7a>
d00837a2:	682b      	ldr	r3, [r5, #0]
d00837a4:	b903      	cbnz	r3, d00837a8 <__sflush_r+0x7c>
d00837a6:	6560      	str	r0, [r4, #84]	; 0x54
d00837a8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00837aa:	602f      	str	r7, [r5, #0]
d00837ac:	2900      	cmp	r1, #0
d00837ae:	d0ca      	beq.n	d0083746 <__sflush_r+0x1a>
d00837b0:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00837b4:	4299      	cmp	r1, r3
d00837b6:	d002      	beq.n	d00837be <__sflush_r+0x92>
d00837b8:	4628      	mov	r0, r5
d00837ba:	f7ff fcd5 	bl	d0083168 <_free_r>
d00837be:	2000      	movs	r0, #0
d00837c0:	6360      	str	r0, [r4, #52]	; 0x34
d00837c2:	e7c1      	b.n	d0083748 <__sflush_r+0x1c>
d00837c4:	6a21      	ldr	r1, [r4, #32]
d00837c6:	2301      	movs	r3, #1
d00837c8:	4628      	mov	r0, r5
d00837ca:	47b0      	blx	r6
d00837cc:	1c41      	adds	r1, r0, #1
d00837ce:	d1c7      	bne.n	d0083760 <__sflush_r+0x34>
d00837d0:	682b      	ldr	r3, [r5, #0]
d00837d2:	2b00      	cmp	r3, #0
d00837d4:	d0c4      	beq.n	d0083760 <__sflush_r+0x34>
d00837d6:	2b1d      	cmp	r3, #29
d00837d8:	d001      	beq.n	d00837de <__sflush_r+0xb2>
d00837da:	2b16      	cmp	r3, #22
d00837dc:	d101      	bne.n	d00837e2 <__sflush_r+0xb6>
d00837de:	602f      	str	r7, [r5, #0]
d00837e0:	e7b1      	b.n	d0083746 <__sflush_r+0x1a>
d00837e2:	89a3      	ldrh	r3, [r4, #12]
d00837e4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00837e8:	81a3      	strh	r3, [r4, #12]
d00837ea:	e7ad      	b.n	d0083748 <__sflush_r+0x1c>
d00837ec:	690f      	ldr	r7, [r1, #16]
d00837ee:	2f00      	cmp	r7, #0
d00837f0:	d0a9      	beq.n	d0083746 <__sflush_r+0x1a>
d00837f2:	0793      	lsls	r3, r2, #30
d00837f4:	680e      	ldr	r6, [r1, #0]
d00837f6:	bf08      	it	eq
d00837f8:	694b      	ldreq	r3, [r1, #20]
d00837fa:	600f      	str	r7, [r1, #0]
d00837fc:	bf18      	it	ne
d00837fe:	2300      	movne	r3, #0
d0083800:	eba6 0807 	sub.w	r8, r6, r7
d0083804:	608b      	str	r3, [r1, #8]
d0083806:	f1b8 0f00 	cmp.w	r8, #0
d008380a:	dd9c      	ble.n	d0083746 <__sflush_r+0x1a>
d008380c:	6a21      	ldr	r1, [r4, #32]
d008380e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0083810:	4643      	mov	r3, r8
d0083812:	463a      	mov	r2, r7
d0083814:	4628      	mov	r0, r5
d0083816:	47b0      	blx	r6
d0083818:	2800      	cmp	r0, #0
d008381a:	dc06      	bgt.n	d008382a <__sflush_r+0xfe>
d008381c:	89a3      	ldrh	r3, [r4, #12]
d008381e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0083822:	81a3      	strh	r3, [r4, #12]
d0083824:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083828:	e78e      	b.n	d0083748 <__sflush_r+0x1c>
d008382a:	4407      	add	r7, r0
d008382c:	eba8 0800 	sub.w	r8, r8, r0
d0083830:	e7e9      	b.n	d0083806 <__sflush_r+0xda>
d0083832:	bf00      	nop
d0083834:	20400001 	.word	0x20400001

d0083838 <_fflush_r>:
d0083838:	b538      	push	{r3, r4, r5, lr}
d008383a:	690b      	ldr	r3, [r1, #16]
d008383c:	4605      	mov	r5, r0
d008383e:	460c      	mov	r4, r1
d0083840:	b913      	cbnz	r3, d0083848 <_fflush_r+0x10>
d0083842:	2500      	movs	r5, #0
d0083844:	4628      	mov	r0, r5
d0083846:	bd38      	pop	{r3, r4, r5, pc}
d0083848:	b118      	cbz	r0, d0083852 <_fflush_r+0x1a>
d008384a:	6983      	ldr	r3, [r0, #24]
d008384c:	b90b      	cbnz	r3, d0083852 <_fflush_r+0x1a>
d008384e:	f000 f887 	bl	d0083960 <__sinit>
d0083852:	4b14      	ldr	r3, [pc, #80]	; (d00838a4 <_fflush_r+0x6c>)
d0083854:	429c      	cmp	r4, r3
d0083856:	d11b      	bne.n	d0083890 <_fflush_r+0x58>
d0083858:	686c      	ldr	r4, [r5, #4]
d008385a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008385e:	2b00      	cmp	r3, #0
d0083860:	d0ef      	beq.n	d0083842 <_fflush_r+0xa>
d0083862:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0083864:	07d0      	lsls	r0, r2, #31
d0083866:	d404      	bmi.n	d0083872 <_fflush_r+0x3a>
d0083868:	0599      	lsls	r1, r3, #22
d008386a:	d402      	bmi.n	d0083872 <_fflush_r+0x3a>
d008386c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008386e:	f000 f915 	bl	d0083a9c <__retarget_lock_acquire_recursive>
d0083872:	4628      	mov	r0, r5
d0083874:	4621      	mov	r1, r4
d0083876:	f7ff ff59 	bl	d008372c <__sflush_r>
d008387a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008387c:	07da      	lsls	r2, r3, #31
d008387e:	4605      	mov	r5, r0
d0083880:	d4e0      	bmi.n	d0083844 <_fflush_r+0xc>
d0083882:	89a3      	ldrh	r3, [r4, #12]
d0083884:	059b      	lsls	r3, r3, #22
d0083886:	d4dd      	bmi.n	d0083844 <_fflush_r+0xc>
d0083888:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008388a:	f000 f908 	bl	d0083a9e <__retarget_lock_release_recursive>
d008388e:	e7d9      	b.n	d0083844 <_fflush_r+0xc>
d0083890:	4b05      	ldr	r3, [pc, #20]	; (d00838a8 <_fflush_r+0x70>)
d0083892:	429c      	cmp	r4, r3
d0083894:	d101      	bne.n	d008389a <_fflush_r+0x62>
d0083896:	68ac      	ldr	r4, [r5, #8]
d0083898:	e7df      	b.n	d008385a <_fflush_r+0x22>
d008389a:	4b04      	ldr	r3, [pc, #16]	; (d00838ac <_fflush_r+0x74>)
d008389c:	429c      	cmp	r4, r3
d008389e:	bf08      	it	eq
d00838a0:	68ec      	ldreq	r4, [r5, #12]
d00838a2:	e7da      	b.n	d008385a <_fflush_r+0x22>
d00838a4:	d00922cc 	.word	0xd00922cc
d00838a8:	d00922ec 	.word	0xd00922ec
d00838ac:	d00922ac 	.word	0xd00922ac

d00838b0 <std>:
d00838b0:	2300      	movs	r3, #0
d00838b2:	b510      	push	{r4, lr}
d00838b4:	4604      	mov	r4, r0
d00838b6:	e9c0 3300 	strd	r3, r3, [r0]
d00838ba:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00838be:	6083      	str	r3, [r0, #8]
d00838c0:	8181      	strh	r1, [r0, #12]
d00838c2:	6643      	str	r3, [r0, #100]	; 0x64
d00838c4:	81c2      	strh	r2, [r0, #14]
d00838c6:	6183      	str	r3, [r0, #24]
d00838c8:	4619      	mov	r1, r3
d00838ca:	2208      	movs	r2, #8
d00838cc:	305c      	adds	r0, #92	; 0x5c
d00838ce:	f7ff fc43 	bl	d0083158 <memset>
d00838d2:	4b05      	ldr	r3, [pc, #20]	; (d00838e8 <std+0x38>)
d00838d4:	6263      	str	r3, [r4, #36]	; 0x24
d00838d6:	4b05      	ldr	r3, [pc, #20]	; (d00838ec <std+0x3c>)
d00838d8:	62a3      	str	r3, [r4, #40]	; 0x28
d00838da:	4b05      	ldr	r3, [pc, #20]	; (d00838f0 <std+0x40>)
d00838dc:	62e3      	str	r3, [r4, #44]	; 0x2c
d00838de:	4b05      	ldr	r3, [pc, #20]	; (d00838f4 <std+0x44>)
d00838e0:	6224      	str	r4, [r4, #32]
d00838e2:	6323      	str	r3, [r4, #48]	; 0x30
d00838e4:	bd10      	pop	{r4, pc}
d00838e6:	bf00      	nop
d00838e8:	d0084161 	.word	0xd0084161
d00838ec:	d0084183 	.word	0xd0084183
d00838f0:	d00841bb 	.word	0xd00841bb
d00838f4:	d00841df 	.word	0xd00841df

d00838f8 <_cleanup_r>:
d00838f8:	4901      	ldr	r1, [pc, #4]	; (d0083900 <_cleanup_r+0x8>)
d00838fa:	f000 b8af 	b.w	d0083a5c <_fwalk_reent>
d00838fe:	bf00      	nop
d0083900:	d0083839 	.word	0xd0083839

d0083904 <__sfmoreglue>:
d0083904:	b570      	push	{r4, r5, r6, lr}
d0083906:	1e4a      	subs	r2, r1, #1
d0083908:	2568      	movs	r5, #104	; 0x68
d008390a:	4355      	muls	r5, r2
d008390c:	460e      	mov	r6, r1
d008390e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0083912:	f7ff fc79 	bl	d0083208 <_malloc_r>
d0083916:	4604      	mov	r4, r0
d0083918:	b140      	cbz	r0, d008392c <__sfmoreglue+0x28>
d008391a:	2100      	movs	r1, #0
d008391c:	e9c0 1600 	strd	r1, r6, [r0]
d0083920:	300c      	adds	r0, #12
d0083922:	60a0      	str	r0, [r4, #8]
d0083924:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0083928:	f7ff fc16 	bl	d0083158 <memset>
d008392c:	4620      	mov	r0, r4
d008392e:	bd70      	pop	{r4, r5, r6, pc}

d0083930 <__sfp_lock_acquire>:
d0083930:	4801      	ldr	r0, [pc, #4]	; (d0083938 <__sfp_lock_acquire+0x8>)
d0083932:	f000 b8b3 	b.w	d0083a9c <__retarget_lock_acquire_recursive>
d0083936:	bf00      	nop
d0083938:	d009280c 	.word	0xd009280c

d008393c <__sfp_lock_release>:
d008393c:	4801      	ldr	r0, [pc, #4]	; (d0083944 <__sfp_lock_release+0x8>)
d008393e:	f000 b8ae 	b.w	d0083a9e <__retarget_lock_release_recursive>
d0083942:	bf00      	nop
d0083944:	d009280c 	.word	0xd009280c

d0083948 <__sinit_lock_acquire>:
d0083948:	4801      	ldr	r0, [pc, #4]	; (d0083950 <__sinit_lock_acquire+0x8>)
d008394a:	f000 b8a7 	b.w	d0083a9c <__retarget_lock_acquire_recursive>
d008394e:	bf00      	nop
d0083950:	d0092807 	.word	0xd0092807

d0083954 <__sinit_lock_release>:
d0083954:	4801      	ldr	r0, [pc, #4]	; (d008395c <__sinit_lock_release+0x8>)
d0083956:	f000 b8a2 	b.w	d0083a9e <__retarget_lock_release_recursive>
d008395a:	bf00      	nop
d008395c:	d0092807 	.word	0xd0092807

d0083960 <__sinit>:
d0083960:	b510      	push	{r4, lr}
d0083962:	4604      	mov	r4, r0
d0083964:	f7ff fff0 	bl	d0083948 <__sinit_lock_acquire>
d0083968:	69a3      	ldr	r3, [r4, #24]
d008396a:	b11b      	cbz	r3, d0083974 <__sinit+0x14>
d008396c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0083970:	f7ff bff0 	b.w	d0083954 <__sinit_lock_release>
d0083974:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0083978:	6523      	str	r3, [r4, #80]	; 0x50
d008397a:	4b13      	ldr	r3, [pc, #76]	; (d00839c8 <__sinit+0x68>)
d008397c:	4a13      	ldr	r2, [pc, #76]	; (d00839cc <__sinit+0x6c>)
d008397e:	681b      	ldr	r3, [r3, #0]
d0083980:	62a2      	str	r2, [r4, #40]	; 0x28
d0083982:	42a3      	cmp	r3, r4
d0083984:	bf04      	itt	eq
d0083986:	2301      	moveq	r3, #1
d0083988:	61a3      	streq	r3, [r4, #24]
d008398a:	4620      	mov	r0, r4
d008398c:	f000 f820 	bl	d00839d0 <__sfp>
d0083990:	6060      	str	r0, [r4, #4]
d0083992:	4620      	mov	r0, r4
d0083994:	f000 f81c 	bl	d00839d0 <__sfp>
d0083998:	60a0      	str	r0, [r4, #8]
d008399a:	4620      	mov	r0, r4
d008399c:	f000 f818 	bl	d00839d0 <__sfp>
d00839a0:	2200      	movs	r2, #0
d00839a2:	60e0      	str	r0, [r4, #12]
d00839a4:	2104      	movs	r1, #4
d00839a6:	6860      	ldr	r0, [r4, #4]
d00839a8:	f7ff ff82 	bl	d00838b0 <std>
d00839ac:	68a0      	ldr	r0, [r4, #8]
d00839ae:	2201      	movs	r2, #1
d00839b0:	2109      	movs	r1, #9
d00839b2:	f7ff ff7d 	bl	d00838b0 <std>
d00839b6:	68e0      	ldr	r0, [r4, #12]
d00839b8:	2202      	movs	r2, #2
d00839ba:	2112      	movs	r1, #18
d00839bc:	f7ff ff78 	bl	d00838b0 <std>
d00839c0:	2301      	movs	r3, #1
d00839c2:	61a3      	str	r3, [r4, #24]
d00839c4:	e7d2      	b.n	d008396c <__sinit+0xc>
d00839c6:	bf00      	nop
d00839c8:	d00922a8 	.word	0xd00922a8
d00839cc:	d00838f9 	.word	0xd00838f9

d00839d0 <__sfp>:
d00839d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00839d2:	4607      	mov	r7, r0
d00839d4:	f7ff ffac 	bl	d0083930 <__sfp_lock_acquire>
d00839d8:	4b1e      	ldr	r3, [pc, #120]	; (d0083a54 <__sfp+0x84>)
d00839da:	681e      	ldr	r6, [r3, #0]
d00839dc:	69b3      	ldr	r3, [r6, #24]
d00839de:	b913      	cbnz	r3, d00839e6 <__sfp+0x16>
d00839e0:	4630      	mov	r0, r6
d00839e2:	f7ff ffbd 	bl	d0083960 <__sinit>
d00839e6:	3648      	adds	r6, #72	; 0x48
d00839e8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00839ec:	3b01      	subs	r3, #1
d00839ee:	d503      	bpl.n	d00839f8 <__sfp+0x28>
d00839f0:	6833      	ldr	r3, [r6, #0]
d00839f2:	b30b      	cbz	r3, d0083a38 <__sfp+0x68>
d00839f4:	6836      	ldr	r6, [r6, #0]
d00839f6:	e7f7      	b.n	d00839e8 <__sfp+0x18>
d00839f8:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00839fc:	b9d5      	cbnz	r5, d0083a34 <__sfp+0x64>
d00839fe:	4b16      	ldr	r3, [pc, #88]	; (d0083a58 <__sfp+0x88>)
d0083a00:	60e3      	str	r3, [r4, #12]
d0083a02:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0083a06:	6665      	str	r5, [r4, #100]	; 0x64
d0083a08:	f000 f847 	bl	d0083a9a <__retarget_lock_init_recursive>
d0083a0c:	f7ff ff96 	bl	d008393c <__sfp_lock_release>
d0083a10:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0083a14:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0083a18:	6025      	str	r5, [r4, #0]
d0083a1a:	61a5      	str	r5, [r4, #24]
d0083a1c:	2208      	movs	r2, #8
d0083a1e:	4629      	mov	r1, r5
d0083a20:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0083a24:	f7ff fb98 	bl	d0083158 <memset>
d0083a28:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0083a2c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0083a30:	4620      	mov	r0, r4
d0083a32:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0083a34:	3468      	adds	r4, #104	; 0x68
d0083a36:	e7d9      	b.n	d00839ec <__sfp+0x1c>
d0083a38:	2104      	movs	r1, #4
d0083a3a:	4638      	mov	r0, r7
d0083a3c:	f7ff ff62 	bl	d0083904 <__sfmoreglue>
d0083a40:	4604      	mov	r4, r0
d0083a42:	6030      	str	r0, [r6, #0]
d0083a44:	2800      	cmp	r0, #0
d0083a46:	d1d5      	bne.n	d00839f4 <__sfp+0x24>
d0083a48:	f7ff ff78 	bl	d008393c <__sfp_lock_release>
d0083a4c:	230c      	movs	r3, #12
d0083a4e:	603b      	str	r3, [r7, #0]
d0083a50:	e7ee      	b.n	d0083a30 <__sfp+0x60>
d0083a52:	bf00      	nop
d0083a54:	d00922a8 	.word	0xd00922a8
d0083a58:	ffff0001 	.word	0xffff0001

d0083a5c <_fwalk_reent>:
d0083a5c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0083a60:	4606      	mov	r6, r0
d0083a62:	4688      	mov	r8, r1
d0083a64:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0083a68:	2700      	movs	r7, #0
d0083a6a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0083a6e:	f1b9 0901 	subs.w	r9, r9, #1
d0083a72:	d505      	bpl.n	d0083a80 <_fwalk_reent+0x24>
d0083a74:	6824      	ldr	r4, [r4, #0]
d0083a76:	2c00      	cmp	r4, #0
d0083a78:	d1f7      	bne.n	d0083a6a <_fwalk_reent+0xe>
d0083a7a:	4638      	mov	r0, r7
d0083a7c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0083a80:	89ab      	ldrh	r3, [r5, #12]
d0083a82:	2b01      	cmp	r3, #1
d0083a84:	d907      	bls.n	d0083a96 <_fwalk_reent+0x3a>
d0083a86:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0083a8a:	3301      	adds	r3, #1
d0083a8c:	d003      	beq.n	d0083a96 <_fwalk_reent+0x3a>
d0083a8e:	4629      	mov	r1, r5
d0083a90:	4630      	mov	r0, r6
d0083a92:	47c0      	blx	r8
d0083a94:	4307      	orrs	r7, r0
d0083a96:	3568      	adds	r5, #104	; 0x68
d0083a98:	e7e9      	b.n	d0083a6e <_fwalk_reent+0x12>

d0083a9a <__retarget_lock_init_recursive>:
d0083a9a:	4770      	bx	lr

d0083a9c <__retarget_lock_acquire_recursive>:
d0083a9c:	4770      	bx	lr

d0083a9e <__retarget_lock_release_recursive>:
d0083a9e:	4770      	bx	lr

d0083aa0 <__swhatbuf_r>:
d0083aa0:	b570      	push	{r4, r5, r6, lr}
d0083aa2:	460e      	mov	r6, r1
d0083aa4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0083aa8:	2900      	cmp	r1, #0
d0083aaa:	b096      	sub	sp, #88	; 0x58
d0083aac:	4614      	mov	r4, r2
d0083aae:	461d      	mov	r5, r3
d0083ab0:	da07      	bge.n	d0083ac2 <__swhatbuf_r+0x22>
d0083ab2:	2300      	movs	r3, #0
d0083ab4:	602b      	str	r3, [r5, #0]
d0083ab6:	89b3      	ldrh	r3, [r6, #12]
d0083ab8:	061a      	lsls	r2, r3, #24
d0083aba:	d410      	bmi.n	d0083ade <__swhatbuf_r+0x3e>
d0083abc:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0083ac0:	e00e      	b.n	d0083ae0 <__swhatbuf_r+0x40>
d0083ac2:	466a      	mov	r2, sp
d0083ac4:	f000 fba0 	bl	d0084208 <_fstat_r>
d0083ac8:	2800      	cmp	r0, #0
d0083aca:	dbf2      	blt.n	d0083ab2 <__swhatbuf_r+0x12>
d0083acc:	9a01      	ldr	r2, [sp, #4]
d0083ace:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0083ad2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0083ad6:	425a      	negs	r2, r3
d0083ad8:	415a      	adcs	r2, r3
d0083ada:	602a      	str	r2, [r5, #0]
d0083adc:	e7ee      	b.n	d0083abc <__swhatbuf_r+0x1c>
d0083ade:	2340      	movs	r3, #64	; 0x40
d0083ae0:	2000      	movs	r0, #0
d0083ae2:	6023      	str	r3, [r4, #0]
d0083ae4:	b016      	add	sp, #88	; 0x58
d0083ae6:	bd70      	pop	{r4, r5, r6, pc}

d0083ae8 <__smakebuf_r>:
d0083ae8:	898b      	ldrh	r3, [r1, #12]
d0083aea:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0083aec:	079d      	lsls	r5, r3, #30
d0083aee:	4606      	mov	r6, r0
d0083af0:	460c      	mov	r4, r1
d0083af2:	d507      	bpl.n	d0083b04 <__smakebuf_r+0x1c>
d0083af4:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0083af8:	6023      	str	r3, [r4, #0]
d0083afa:	6123      	str	r3, [r4, #16]
d0083afc:	2301      	movs	r3, #1
d0083afe:	6163      	str	r3, [r4, #20]
d0083b00:	b002      	add	sp, #8
d0083b02:	bd70      	pop	{r4, r5, r6, pc}
d0083b04:	ab01      	add	r3, sp, #4
d0083b06:	466a      	mov	r2, sp
d0083b08:	f7ff ffca 	bl	d0083aa0 <__swhatbuf_r>
d0083b0c:	9900      	ldr	r1, [sp, #0]
d0083b0e:	4605      	mov	r5, r0
d0083b10:	4630      	mov	r0, r6
d0083b12:	f7ff fb79 	bl	d0083208 <_malloc_r>
d0083b16:	b948      	cbnz	r0, d0083b2c <__smakebuf_r+0x44>
d0083b18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0083b1c:	059a      	lsls	r2, r3, #22
d0083b1e:	d4ef      	bmi.n	d0083b00 <__smakebuf_r+0x18>
d0083b20:	f023 0303 	bic.w	r3, r3, #3
d0083b24:	f043 0302 	orr.w	r3, r3, #2
d0083b28:	81a3      	strh	r3, [r4, #12]
d0083b2a:	e7e3      	b.n	d0083af4 <__smakebuf_r+0xc>
d0083b2c:	4b0d      	ldr	r3, [pc, #52]	; (d0083b64 <__smakebuf_r+0x7c>)
d0083b2e:	62b3      	str	r3, [r6, #40]	; 0x28
d0083b30:	89a3      	ldrh	r3, [r4, #12]
d0083b32:	6020      	str	r0, [r4, #0]
d0083b34:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0083b38:	81a3      	strh	r3, [r4, #12]
d0083b3a:	9b00      	ldr	r3, [sp, #0]
d0083b3c:	6163      	str	r3, [r4, #20]
d0083b3e:	9b01      	ldr	r3, [sp, #4]
d0083b40:	6120      	str	r0, [r4, #16]
d0083b42:	b15b      	cbz	r3, d0083b5c <__smakebuf_r+0x74>
d0083b44:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0083b48:	4630      	mov	r0, r6
d0083b4a:	f000 fb6f 	bl	d008422c <_isatty_r>
d0083b4e:	b128      	cbz	r0, d0083b5c <__smakebuf_r+0x74>
d0083b50:	89a3      	ldrh	r3, [r4, #12]
d0083b52:	f023 0303 	bic.w	r3, r3, #3
d0083b56:	f043 0301 	orr.w	r3, r3, #1
d0083b5a:	81a3      	strh	r3, [r4, #12]
d0083b5c:	89a0      	ldrh	r0, [r4, #12]
d0083b5e:	4305      	orrs	r5, r0
d0083b60:	81a5      	strh	r5, [r4, #12]
d0083b62:	e7cd      	b.n	d0083b00 <__smakebuf_r+0x18>
d0083b64:	d00838f9 	.word	0xd00838f9

d0083b68 <__malloc_lock>:
d0083b68:	4801      	ldr	r0, [pc, #4]	; (d0083b70 <__malloc_lock+0x8>)
d0083b6a:	f7ff bf97 	b.w	d0083a9c <__retarget_lock_acquire_recursive>
d0083b6e:	bf00      	nop
d0083b70:	d0092808 	.word	0xd0092808

d0083b74 <__malloc_unlock>:
d0083b74:	4801      	ldr	r0, [pc, #4]	; (d0083b7c <__malloc_unlock+0x8>)
d0083b76:	f7ff bf92 	b.w	d0083a9e <__retarget_lock_release_recursive>
d0083b7a:	bf00      	nop
d0083b7c:	d0092808 	.word	0xd0092808

d0083b80 <__ssputs_r>:
d0083b80:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0083b84:	688e      	ldr	r6, [r1, #8]
d0083b86:	429e      	cmp	r6, r3
d0083b88:	4682      	mov	sl, r0
d0083b8a:	460c      	mov	r4, r1
d0083b8c:	4690      	mov	r8, r2
d0083b8e:	461f      	mov	r7, r3
d0083b90:	d838      	bhi.n	d0083c04 <__ssputs_r+0x84>
d0083b92:	898a      	ldrh	r2, [r1, #12]
d0083b94:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0083b98:	d032      	beq.n	d0083c00 <__ssputs_r+0x80>
d0083b9a:	6825      	ldr	r5, [r4, #0]
d0083b9c:	6909      	ldr	r1, [r1, #16]
d0083b9e:	eba5 0901 	sub.w	r9, r5, r1
d0083ba2:	6965      	ldr	r5, [r4, #20]
d0083ba4:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0083ba8:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0083bac:	3301      	adds	r3, #1
d0083bae:	444b      	add	r3, r9
d0083bb0:	106d      	asrs	r5, r5, #1
d0083bb2:	429d      	cmp	r5, r3
d0083bb4:	bf38      	it	cc
d0083bb6:	461d      	movcc	r5, r3
d0083bb8:	0553      	lsls	r3, r2, #21
d0083bba:	d531      	bpl.n	d0083c20 <__ssputs_r+0xa0>
d0083bbc:	4629      	mov	r1, r5
d0083bbe:	f7ff fb23 	bl	d0083208 <_malloc_r>
d0083bc2:	4606      	mov	r6, r0
d0083bc4:	b950      	cbnz	r0, d0083bdc <__ssputs_r+0x5c>
d0083bc6:	230c      	movs	r3, #12
d0083bc8:	f8ca 3000 	str.w	r3, [sl]
d0083bcc:	89a3      	ldrh	r3, [r4, #12]
d0083bce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0083bd2:	81a3      	strh	r3, [r4, #12]
d0083bd4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083bd8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0083bdc:	6921      	ldr	r1, [r4, #16]
d0083bde:	464a      	mov	r2, r9
d0083be0:	f000 fb96 	bl	d0084310 <memcpy>
d0083be4:	89a3      	ldrh	r3, [r4, #12]
d0083be6:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0083bea:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0083bee:	81a3      	strh	r3, [r4, #12]
d0083bf0:	6126      	str	r6, [r4, #16]
d0083bf2:	6165      	str	r5, [r4, #20]
d0083bf4:	444e      	add	r6, r9
d0083bf6:	eba5 0509 	sub.w	r5, r5, r9
d0083bfa:	6026      	str	r6, [r4, #0]
d0083bfc:	60a5      	str	r5, [r4, #8]
d0083bfe:	463e      	mov	r6, r7
d0083c00:	42be      	cmp	r6, r7
d0083c02:	d900      	bls.n	d0083c06 <__ssputs_r+0x86>
d0083c04:	463e      	mov	r6, r7
d0083c06:	4632      	mov	r2, r6
d0083c08:	6820      	ldr	r0, [r4, #0]
d0083c0a:	4641      	mov	r1, r8
d0083c0c:	f000 fb8e 	bl	d008432c <memmove>
d0083c10:	68a3      	ldr	r3, [r4, #8]
d0083c12:	6822      	ldr	r2, [r4, #0]
d0083c14:	1b9b      	subs	r3, r3, r6
d0083c16:	4432      	add	r2, r6
d0083c18:	60a3      	str	r3, [r4, #8]
d0083c1a:	6022      	str	r2, [r4, #0]
d0083c1c:	2000      	movs	r0, #0
d0083c1e:	e7db      	b.n	d0083bd8 <__ssputs_r+0x58>
d0083c20:	462a      	mov	r2, r5
d0083c22:	f000 fb9d 	bl	d0084360 <_realloc_r>
d0083c26:	4606      	mov	r6, r0
d0083c28:	2800      	cmp	r0, #0
d0083c2a:	d1e1      	bne.n	d0083bf0 <__ssputs_r+0x70>
d0083c2c:	6921      	ldr	r1, [r4, #16]
d0083c2e:	4650      	mov	r0, sl
d0083c30:	f7ff fa9a 	bl	d0083168 <_free_r>
d0083c34:	e7c7      	b.n	d0083bc6 <__ssputs_r+0x46>
	...

d0083c38 <_svfiprintf_r>:
d0083c38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0083c3c:	4698      	mov	r8, r3
d0083c3e:	898b      	ldrh	r3, [r1, #12]
d0083c40:	061b      	lsls	r3, r3, #24
d0083c42:	b09d      	sub	sp, #116	; 0x74
d0083c44:	4607      	mov	r7, r0
d0083c46:	460d      	mov	r5, r1
d0083c48:	4614      	mov	r4, r2
d0083c4a:	d50e      	bpl.n	d0083c6a <_svfiprintf_r+0x32>
d0083c4c:	690b      	ldr	r3, [r1, #16]
d0083c4e:	b963      	cbnz	r3, d0083c6a <_svfiprintf_r+0x32>
d0083c50:	2140      	movs	r1, #64	; 0x40
d0083c52:	f7ff fad9 	bl	d0083208 <_malloc_r>
d0083c56:	6028      	str	r0, [r5, #0]
d0083c58:	6128      	str	r0, [r5, #16]
d0083c5a:	b920      	cbnz	r0, d0083c66 <_svfiprintf_r+0x2e>
d0083c5c:	230c      	movs	r3, #12
d0083c5e:	603b      	str	r3, [r7, #0]
d0083c60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083c64:	e0d1      	b.n	d0083e0a <_svfiprintf_r+0x1d2>
d0083c66:	2340      	movs	r3, #64	; 0x40
d0083c68:	616b      	str	r3, [r5, #20]
d0083c6a:	2300      	movs	r3, #0
d0083c6c:	9309      	str	r3, [sp, #36]	; 0x24
d0083c6e:	2320      	movs	r3, #32
d0083c70:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0083c74:	f8cd 800c 	str.w	r8, [sp, #12]
d0083c78:	2330      	movs	r3, #48	; 0x30
d0083c7a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0083e24 <_svfiprintf_r+0x1ec>
d0083c7e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0083c82:	f04f 0901 	mov.w	r9, #1
d0083c86:	4623      	mov	r3, r4
d0083c88:	469a      	mov	sl, r3
d0083c8a:	f813 2b01 	ldrb.w	r2, [r3], #1
d0083c8e:	b10a      	cbz	r2, d0083c94 <_svfiprintf_r+0x5c>
d0083c90:	2a25      	cmp	r2, #37	; 0x25
d0083c92:	d1f9      	bne.n	d0083c88 <_svfiprintf_r+0x50>
d0083c94:	ebba 0b04 	subs.w	fp, sl, r4
d0083c98:	d00b      	beq.n	d0083cb2 <_svfiprintf_r+0x7a>
d0083c9a:	465b      	mov	r3, fp
d0083c9c:	4622      	mov	r2, r4
d0083c9e:	4629      	mov	r1, r5
d0083ca0:	4638      	mov	r0, r7
d0083ca2:	f7ff ff6d 	bl	d0083b80 <__ssputs_r>
d0083ca6:	3001      	adds	r0, #1
d0083ca8:	f000 80aa 	beq.w	d0083e00 <_svfiprintf_r+0x1c8>
d0083cac:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0083cae:	445a      	add	r2, fp
d0083cb0:	9209      	str	r2, [sp, #36]	; 0x24
d0083cb2:	f89a 3000 	ldrb.w	r3, [sl]
d0083cb6:	2b00      	cmp	r3, #0
d0083cb8:	f000 80a2 	beq.w	d0083e00 <_svfiprintf_r+0x1c8>
d0083cbc:	2300      	movs	r3, #0
d0083cbe:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0083cc2:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0083cc6:	f10a 0a01 	add.w	sl, sl, #1
d0083cca:	9304      	str	r3, [sp, #16]
d0083ccc:	9307      	str	r3, [sp, #28]
d0083cce:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0083cd2:	931a      	str	r3, [sp, #104]	; 0x68
d0083cd4:	4654      	mov	r4, sl
d0083cd6:	2205      	movs	r2, #5
d0083cd8:	f814 1b01 	ldrb.w	r1, [r4], #1
d0083cdc:	4851      	ldr	r0, [pc, #324]	; (d0083e24 <_svfiprintf_r+0x1ec>)
d0083cde:	f000 fac7 	bl	d0084270 <memchr>
d0083ce2:	9a04      	ldr	r2, [sp, #16]
d0083ce4:	b9d8      	cbnz	r0, d0083d1e <_svfiprintf_r+0xe6>
d0083ce6:	06d0      	lsls	r0, r2, #27
d0083ce8:	bf44      	itt	mi
d0083cea:	2320      	movmi	r3, #32
d0083cec:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0083cf0:	0711      	lsls	r1, r2, #28
d0083cf2:	bf44      	itt	mi
d0083cf4:	232b      	movmi	r3, #43	; 0x2b
d0083cf6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0083cfa:	f89a 3000 	ldrb.w	r3, [sl]
d0083cfe:	2b2a      	cmp	r3, #42	; 0x2a
d0083d00:	d015      	beq.n	d0083d2e <_svfiprintf_r+0xf6>
d0083d02:	9a07      	ldr	r2, [sp, #28]
d0083d04:	4654      	mov	r4, sl
d0083d06:	2000      	movs	r0, #0
d0083d08:	f04f 0c0a 	mov.w	ip, #10
d0083d0c:	4621      	mov	r1, r4
d0083d0e:	f811 3b01 	ldrb.w	r3, [r1], #1
d0083d12:	3b30      	subs	r3, #48	; 0x30
d0083d14:	2b09      	cmp	r3, #9
d0083d16:	d94e      	bls.n	d0083db6 <_svfiprintf_r+0x17e>
d0083d18:	b1b0      	cbz	r0, d0083d48 <_svfiprintf_r+0x110>
d0083d1a:	9207      	str	r2, [sp, #28]
d0083d1c:	e014      	b.n	d0083d48 <_svfiprintf_r+0x110>
d0083d1e:	eba0 0308 	sub.w	r3, r0, r8
d0083d22:	fa09 f303 	lsl.w	r3, r9, r3
d0083d26:	4313      	orrs	r3, r2
d0083d28:	9304      	str	r3, [sp, #16]
d0083d2a:	46a2      	mov	sl, r4
d0083d2c:	e7d2      	b.n	d0083cd4 <_svfiprintf_r+0x9c>
d0083d2e:	9b03      	ldr	r3, [sp, #12]
d0083d30:	1d19      	adds	r1, r3, #4
d0083d32:	681b      	ldr	r3, [r3, #0]
d0083d34:	9103      	str	r1, [sp, #12]
d0083d36:	2b00      	cmp	r3, #0
d0083d38:	bfbb      	ittet	lt
d0083d3a:	425b      	neglt	r3, r3
d0083d3c:	f042 0202 	orrlt.w	r2, r2, #2
d0083d40:	9307      	strge	r3, [sp, #28]
d0083d42:	9307      	strlt	r3, [sp, #28]
d0083d44:	bfb8      	it	lt
d0083d46:	9204      	strlt	r2, [sp, #16]
d0083d48:	7823      	ldrb	r3, [r4, #0]
d0083d4a:	2b2e      	cmp	r3, #46	; 0x2e
d0083d4c:	d10c      	bne.n	d0083d68 <_svfiprintf_r+0x130>
d0083d4e:	7863      	ldrb	r3, [r4, #1]
d0083d50:	2b2a      	cmp	r3, #42	; 0x2a
d0083d52:	d135      	bne.n	d0083dc0 <_svfiprintf_r+0x188>
d0083d54:	9b03      	ldr	r3, [sp, #12]
d0083d56:	1d1a      	adds	r2, r3, #4
d0083d58:	681b      	ldr	r3, [r3, #0]
d0083d5a:	9203      	str	r2, [sp, #12]
d0083d5c:	2b00      	cmp	r3, #0
d0083d5e:	bfb8      	it	lt
d0083d60:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0083d64:	3402      	adds	r4, #2
d0083d66:	9305      	str	r3, [sp, #20]
d0083d68:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0083e34 <_svfiprintf_r+0x1fc>
d0083d6c:	7821      	ldrb	r1, [r4, #0]
d0083d6e:	2203      	movs	r2, #3
d0083d70:	4650      	mov	r0, sl
d0083d72:	f000 fa7d 	bl	d0084270 <memchr>
d0083d76:	b140      	cbz	r0, d0083d8a <_svfiprintf_r+0x152>
d0083d78:	2340      	movs	r3, #64	; 0x40
d0083d7a:	eba0 000a 	sub.w	r0, r0, sl
d0083d7e:	fa03 f000 	lsl.w	r0, r3, r0
d0083d82:	9b04      	ldr	r3, [sp, #16]
d0083d84:	4303      	orrs	r3, r0
d0083d86:	3401      	adds	r4, #1
d0083d88:	9304      	str	r3, [sp, #16]
d0083d8a:	f814 1b01 	ldrb.w	r1, [r4], #1
d0083d8e:	4826      	ldr	r0, [pc, #152]	; (d0083e28 <_svfiprintf_r+0x1f0>)
d0083d90:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0083d94:	2206      	movs	r2, #6
d0083d96:	f000 fa6b 	bl	d0084270 <memchr>
d0083d9a:	2800      	cmp	r0, #0
d0083d9c:	d038      	beq.n	d0083e10 <_svfiprintf_r+0x1d8>
d0083d9e:	4b23      	ldr	r3, [pc, #140]	; (d0083e2c <_svfiprintf_r+0x1f4>)
d0083da0:	bb1b      	cbnz	r3, d0083dea <_svfiprintf_r+0x1b2>
d0083da2:	9b03      	ldr	r3, [sp, #12]
d0083da4:	3307      	adds	r3, #7
d0083da6:	f023 0307 	bic.w	r3, r3, #7
d0083daa:	3308      	adds	r3, #8
d0083dac:	9303      	str	r3, [sp, #12]
d0083dae:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0083db0:	4433      	add	r3, r6
d0083db2:	9309      	str	r3, [sp, #36]	; 0x24
d0083db4:	e767      	b.n	d0083c86 <_svfiprintf_r+0x4e>
d0083db6:	fb0c 3202 	mla	r2, ip, r2, r3
d0083dba:	460c      	mov	r4, r1
d0083dbc:	2001      	movs	r0, #1
d0083dbe:	e7a5      	b.n	d0083d0c <_svfiprintf_r+0xd4>
d0083dc0:	2300      	movs	r3, #0
d0083dc2:	3401      	adds	r4, #1
d0083dc4:	9305      	str	r3, [sp, #20]
d0083dc6:	4619      	mov	r1, r3
d0083dc8:	f04f 0c0a 	mov.w	ip, #10
d0083dcc:	4620      	mov	r0, r4
d0083dce:	f810 2b01 	ldrb.w	r2, [r0], #1
d0083dd2:	3a30      	subs	r2, #48	; 0x30
d0083dd4:	2a09      	cmp	r2, #9
d0083dd6:	d903      	bls.n	d0083de0 <_svfiprintf_r+0x1a8>
d0083dd8:	2b00      	cmp	r3, #0
d0083dda:	d0c5      	beq.n	d0083d68 <_svfiprintf_r+0x130>
d0083ddc:	9105      	str	r1, [sp, #20]
d0083dde:	e7c3      	b.n	d0083d68 <_svfiprintf_r+0x130>
d0083de0:	fb0c 2101 	mla	r1, ip, r1, r2
d0083de4:	4604      	mov	r4, r0
d0083de6:	2301      	movs	r3, #1
d0083de8:	e7f0      	b.n	d0083dcc <_svfiprintf_r+0x194>
d0083dea:	ab03      	add	r3, sp, #12
d0083dec:	9300      	str	r3, [sp, #0]
d0083dee:	462a      	mov	r2, r5
d0083df0:	4b0f      	ldr	r3, [pc, #60]	; (d0083e30 <_svfiprintf_r+0x1f8>)
d0083df2:	a904      	add	r1, sp, #16
d0083df4:	4638      	mov	r0, r7
d0083df6:	f3af 8000 	nop.w
d0083dfa:	1c42      	adds	r2, r0, #1
d0083dfc:	4606      	mov	r6, r0
d0083dfe:	d1d6      	bne.n	d0083dae <_svfiprintf_r+0x176>
d0083e00:	89ab      	ldrh	r3, [r5, #12]
d0083e02:	065b      	lsls	r3, r3, #25
d0083e04:	f53f af2c 	bmi.w	d0083c60 <_svfiprintf_r+0x28>
d0083e08:	9809      	ldr	r0, [sp, #36]	; 0x24
d0083e0a:	b01d      	add	sp, #116	; 0x74
d0083e0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0083e10:	ab03      	add	r3, sp, #12
d0083e12:	9300      	str	r3, [sp, #0]
d0083e14:	462a      	mov	r2, r5
d0083e16:	4b06      	ldr	r3, [pc, #24]	; (d0083e30 <_svfiprintf_r+0x1f8>)
d0083e18:	a904      	add	r1, sp, #16
d0083e1a:	4638      	mov	r0, r7
d0083e1c:	f000 f87a 	bl	d0083f14 <_printf_i>
d0083e20:	e7eb      	b.n	d0083dfa <_svfiprintf_r+0x1c2>
d0083e22:	bf00      	nop
d0083e24:	d009230c 	.word	0xd009230c
d0083e28:	d0092316 	.word	0xd0092316
d0083e2c:	00000000 	.word	0x00000000
d0083e30:	d0083b81 	.word	0xd0083b81
d0083e34:	d0092312 	.word	0xd0092312

d0083e38 <_printf_common>:
d0083e38:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0083e3c:	4616      	mov	r6, r2
d0083e3e:	4699      	mov	r9, r3
d0083e40:	688a      	ldr	r2, [r1, #8]
d0083e42:	690b      	ldr	r3, [r1, #16]
d0083e44:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0083e48:	4293      	cmp	r3, r2
d0083e4a:	bfb8      	it	lt
d0083e4c:	4613      	movlt	r3, r2
d0083e4e:	6033      	str	r3, [r6, #0]
d0083e50:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0083e54:	4607      	mov	r7, r0
d0083e56:	460c      	mov	r4, r1
d0083e58:	b10a      	cbz	r2, d0083e5e <_printf_common+0x26>
d0083e5a:	3301      	adds	r3, #1
d0083e5c:	6033      	str	r3, [r6, #0]
d0083e5e:	6823      	ldr	r3, [r4, #0]
d0083e60:	0699      	lsls	r1, r3, #26
d0083e62:	bf42      	ittt	mi
d0083e64:	6833      	ldrmi	r3, [r6, #0]
d0083e66:	3302      	addmi	r3, #2
d0083e68:	6033      	strmi	r3, [r6, #0]
d0083e6a:	6825      	ldr	r5, [r4, #0]
d0083e6c:	f015 0506 	ands.w	r5, r5, #6
d0083e70:	d106      	bne.n	d0083e80 <_printf_common+0x48>
d0083e72:	f104 0a19 	add.w	sl, r4, #25
d0083e76:	68e3      	ldr	r3, [r4, #12]
d0083e78:	6832      	ldr	r2, [r6, #0]
d0083e7a:	1a9b      	subs	r3, r3, r2
d0083e7c:	42ab      	cmp	r3, r5
d0083e7e:	dc26      	bgt.n	d0083ece <_printf_common+0x96>
d0083e80:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0083e84:	1e13      	subs	r3, r2, #0
d0083e86:	6822      	ldr	r2, [r4, #0]
d0083e88:	bf18      	it	ne
d0083e8a:	2301      	movne	r3, #1
d0083e8c:	0692      	lsls	r2, r2, #26
d0083e8e:	d42b      	bmi.n	d0083ee8 <_printf_common+0xb0>
d0083e90:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0083e94:	4649      	mov	r1, r9
d0083e96:	4638      	mov	r0, r7
d0083e98:	47c0      	blx	r8
d0083e9a:	3001      	adds	r0, #1
d0083e9c:	d01e      	beq.n	d0083edc <_printf_common+0xa4>
d0083e9e:	6823      	ldr	r3, [r4, #0]
d0083ea0:	68e5      	ldr	r5, [r4, #12]
d0083ea2:	6832      	ldr	r2, [r6, #0]
d0083ea4:	f003 0306 	and.w	r3, r3, #6
d0083ea8:	2b04      	cmp	r3, #4
d0083eaa:	bf08      	it	eq
d0083eac:	1aad      	subeq	r5, r5, r2
d0083eae:	68a3      	ldr	r3, [r4, #8]
d0083eb0:	6922      	ldr	r2, [r4, #16]
d0083eb2:	bf0c      	ite	eq
d0083eb4:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0083eb8:	2500      	movne	r5, #0
d0083eba:	4293      	cmp	r3, r2
d0083ebc:	bfc4      	itt	gt
d0083ebe:	1a9b      	subgt	r3, r3, r2
d0083ec0:	18ed      	addgt	r5, r5, r3
d0083ec2:	2600      	movs	r6, #0
d0083ec4:	341a      	adds	r4, #26
d0083ec6:	42b5      	cmp	r5, r6
d0083ec8:	d11a      	bne.n	d0083f00 <_printf_common+0xc8>
d0083eca:	2000      	movs	r0, #0
d0083ecc:	e008      	b.n	d0083ee0 <_printf_common+0xa8>
d0083ece:	2301      	movs	r3, #1
d0083ed0:	4652      	mov	r2, sl
d0083ed2:	4649      	mov	r1, r9
d0083ed4:	4638      	mov	r0, r7
d0083ed6:	47c0      	blx	r8
d0083ed8:	3001      	adds	r0, #1
d0083eda:	d103      	bne.n	d0083ee4 <_printf_common+0xac>
d0083edc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0083ee0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0083ee4:	3501      	adds	r5, #1
d0083ee6:	e7c6      	b.n	d0083e76 <_printf_common+0x3e>
d0083ee8:	18e1      	adds	r1, r4, r3
d0083eea:	1c5a      	adds	r2, r3, #1
d0083eec:	2030      	movs	r0, #48	; 0x30
d0083eee:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0083ef2:	4422      	add	r2, r4
d0083ef4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0083ef8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0083efc:	3302      	adds	r3, #2
d0083efe:	e7c7      	b.n	d0083e90 <_printf_common+0x58>
d0083f00:	2301      	movs	r3, #1
d0083f02:	4622      	mov	r2, r4
d0083f04:	4649      	mov	r1, r9
d0083f06:	4638      	mov	r0, r7
d0083f08:	47c0      	blx	r8
d0083f0a:	3001      	adds	r0, #1
d0083f0c:	d0e6      	beq.n	d0083edc <_printf_common+0xa4>
d0083f0e:	3601      	adds	r6, #1
d0083f10:	e7d9      	b.n	d0083ec6 <_printf_common+0x8e>
	...

d0083f14 <_printf_i>:
d0083f14:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0083f18:	460c      	mov	r4, r1
d0083f1a:	4691      	mov	r9, r2
d0083f1c:	7e27      	ldrb	r7, [r4, #24]
d0083f1e:	990c      	ldr	r1, [sp, #48]	; 0x30
d0083f20:	2f78      	cmp	r7, #120	; 0x78
d0083f22:	4680      	mov	r8, r0
d0083f24:	469a      	mov	sl, r3
d0083f26:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0083f2a:	d807      	bhi.n	d0083f3c <_printf_i+0x28>
d0083f2c:	2f62      	cmp	r7, #98	; 0x62
d0083f2e:	d80a      	bhi.n	d0083f46 <_printf_i+0x32>
d0083f30:	2f00      	cmp	r7, #0
d0083f32:	f000 80d8 	beq.w	d00840e6 <_printf_i+0x1d2>
d0083f36:	2f58      	cmp	r7, #88	; 0x58
d0083f38:	f000 80a3 	beq.w	d0084082 <_printf_i+0x16e>
d0083f3c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0083f40:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0083f44:	e03a      	b.n	d0083fbc <_printf_i+0xa8>
d0083f46:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0083f4a:	2b15      	cmp	r3, #21
d0083f4c:	d8f6      	bhi.n	d0083f3c <_printf_i+0x28>
d0083f4e:	a001      	add	r0, pc, #4	; (adr r0, d0083f54 <_printf_i+0x40>)
d0083f50:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0083f54:	d0083fad 	.word	0xd0083fad
d0083f58:	d0083fc1 	.word	0xd0083fc1
d0083f5c:	d0083f3d 	.word	0xd0083f3d
d0083f60:	d0083f3d 	.word	0xd0083f3d
d0083f64:	d0083f3d 	.word	0xd0083f3d
d0083f68:	d0083f3d 	.word	0xd0083f3d
d0083f6c:	d0083fc1 	.word	0xd0083fc1
d0083f70:	d0083f3d 	.word	0xd0083f3d
d0083f74:	d0083f3d 	.word	0xd0083f3d
d0083f78:	d0083f3d 	.word	0xd0083f3d
d0083f7c:	d0083f3d 	.word	0xd0083f3d
d0083f80:	d00840cd 	.word	0xd00840cd
d0083f84:	d0083ff1 	.word	0xd0083ff1
d0083f88:	d00840af 	.word	0xd00840af
d0083f8c:	d0083f3d 	.word	0xd0083f3d
d0083f90:	d0083f3d 	.word	0xd0083f3d
d0083f94:	d00840ef 	.word	0xd00840ef
d0083f98:	d0083f3d 	.word	0xd0083f3d
d0083f9c:	d0083ff1 	.word	0xd0083ff1
d0083fa0:	d0083f3d 	.word	0xd0083f3d
d0083fa4:	d0083f3d 	.word	0xd0083f3d
d0083fa8:	d00840b7 	.word	0xd00840b7
d0083fac:	680b      	ldr	r3, [r1, #0]
d0083fae:	1d1a      	adds	r2, r3, #4
d0083fb0:	681b      	ldr	r3, [r3, #0]
d0083fb2:	600a      	str	r2, [r1, #0]
d0083fb4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0083fb8:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0083fbc:	2301      	movs	r3, #1
d0083fbe:	e0a3      	b.n	d0084108 <_printf_i+0x1f4>
d0083fc0:	6825      	ldr	r5, [r4, #0]
d0083fc2:	6808      	ldr	r0, [r1, #0]
d0083fc4:	062e      	lsls	r6, r5, #24
d0083fc6:	f100 0304 	add.w	r3, r0, #4
d0083fca:	d50a      	bpl.n	d0083fe2 <_printf_i+0xce>
d0083fcc:	6805      	ldr	r5, [r0, #0]
d0083fce:	600b      	str	r3, [r1, #0]
d0083fd0:	2d00      	cmp	r5, #0
d0083fd2:	da03      	bge.n	d0083fdc <_printf_i+0xc8>
d0083fd4:	232d      	movs	r3, #45	; 0x2d
d0083fd6:	426d      	negs	r5, r5
d0083fd8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0083fdc:	485e      	ldr	r0, [pc, #376]	; (d0084158 <_printf_i+0x244>)
d0083fde:	230a      	movs	r3, #10
d0083fe0:	e019      	b.n	d0084016 <_printf_i+0x102>
d0083fe2:	f015 0f40 	tst.w	r5, #64	; 0x40
d0083fe6:	6805      	ldr	r5, [r0, #0]
d0083fe8:	600b      	str	r3, [r1, #0]
d0083fea:	bf18      	it	ne
d0083fec:	b22d      	sxthne	r5, r5
d0083fee:	e7ef      	b.n	d0083fd0 <_printf_i+0xbc>
d0083ff0:	680b      	ldr	r3, [r1, #0]
d0083ff2:	6825      	ldr	r5, [r4, #0]
d0083ff4:	1d18      	adds	r0, r3, #4
d0083ff6:	6008      	str	r0, [r1, #0]
d0083ff8:	0628      	lsls	r0, r5, #24
d0083ffa:	d501      	bpl.n	d0084000 <_printf_i+0xec>
d0083ffc:	681d      	ldr	r5, [r3, #0]
d0083ffe:	e002      	b.n	d0084006 <_printf_i+0xf2>
d0084000:	0669      	lsls	r1, r5, #25
d0084002:	d5fb      	bpl.n	d0083ffc <_printf_i+0xe8>
d0084004:	881d      	ldrh	r5, [r3, #0]
d0084006:	4854      	ldr	r0, [pc, #336]	; (d0084158 <_printf_i+0x244>)
d0084008:	2f6f      	cmp	r7, #111	; 0x6f
d008400a:	bf0c      	ite	eq
d008400c:	2308      	moveq	r3, #8
d008400e:	230a      	movne	r3, #10
d0084010:	2100      	movs	r1, #0
d0084012:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0084016:	6866      	ldr	r6, [r4, #4]
d0084018:	60a6      	str	r6, [r4, #8]
d008401a:	2e00      	cmp	r6, #0
d008401c:	bfa2      	ittt	ge
d008401e:	6821      	ldrge	r1, [r4, #0]
d0084020:	f021 0104 	bicge.w	r1, r1, #4
d0084024:	6021      	strge	r1, [r4, #0]
d0084026:	b90d      	cbnz	r5, d008402c <_printf_i+0x118>
d0084028:	2e00      	cmp	r6, #0
d008402a:	d04d      	beq.n	d00840c8 <_printf_i+0x1b4>
d008402c:	4616      	mov	r6, r2
d008402e:	fbb5 f1f3 	udiv	r1, r5, r3
d0084032:	fb03 5711 	mls	r7, r3, r1, r5
d0084036:	5dc7      	ldrb	r7, [r0, r7]
d0084038:	f806 7d01 	strb.w	r7, [r6, #-1]!
d008403c:	462f      	mov	r7, r5
d008403e:	42bb      	cmp	r3, r7
d0084040:	460d      	mov	r5, r1
d0084042:	d9f4      	bls.n	d008402e <_printf_i+0x11a>
d0084044:	2b08      	cmp	r3, #8
d0084046:	d10b      	bne.n	d0084060 <_printf_i+0x14c>
d0084048:	6823      	ldr	r3, [r4, #0]
d008404a:	07df      	lsls	r7, r3, #31
d008404c:	d508      	bpl.n	d0084060 <_printf_i+0x14c>
d008404e:	6923      	ldr	r3, [r4, #16]
d0084050:	6861      	ldr	r1, [r4, #4]
d0084052:	4299      	cmp	r1, r3
d0084054:	bfde      	ittt	le
d0084056:	2330      	movle	r3, #48	; 0x30
d0084058:	f806 3c01 	strble.w	r3, [r6, #-1]
d008405c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0084060:	1b92      	subs	r2, r2, r6
d0084062:	6122      	str	r2, [r4, #16]
d0084064:	f8cd a000 	str.w	sl, [sp]
d0084068:	464b      	mov	r3, r9
d008406a:	aa03      	add	r2, sp, #12
d008406c:	4621      	mov	r1, r4
d008406e:	4640      	mov	r0, r8
d0084070:	f7ff fee2 	bl	d0083e38 <_printf_common>
d0084074:	3001      	adds	r0, #1
d0084076:	d14c      	bne.n	d0084112 <_printf_i+0x1fe>
d0084078:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008407c:	b004      	add	sp, #16
d008407e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0084082:	4835      	ldr	r0, [pc, #212]	; (d0084158 <_printf_i+0x244>)
d0084084:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0084088:	6823      	ldr	r3, [r4, #0]
d008408a:	680e      	ldr	r6, [r1, #0]
d008408c:	061f      	lsls	r7, r3, #24
d008408e:	f856 5b04 	ldr.w	r5, [r6], #4
d0084092:	600e      	str	r6, [r1, #0]
d0084094:	d514      	bpl.n	d00840c0 <_printf_i+0x1ac>
d0084096:	07d9      	lsls	r1, r3, #31
d0084098:	bf44      	itt	mi
d008409a:	f043 0320 	orrmi.w	r3, r3, #32
d008409e:	6023      	strmi	r3, [r4, #0]
d00840a0:	b91d      	cbnz	r5, d00840aa <_printf_i+0x196>
d00840a2:	6823      	ldr	r3, [r4, #0]
d00840a4:	f023 0320 	bic.w	r3, r3, #32
d00840a8:	6023      	str	r3, [r4, #0]
d00840aa:	2310      	movs	r3, #16
d00840ac:	e7b0      	b.n	d0084010 <_printf_i+0xfc>
d00840ae:	6823      	ldr	r3, [r4, #0]
d00840b0:	f043 0320 	orr.w	r3, r3, #32
d00840b4:	6023      	str	r3, [r4, #0]
d00840b6:	2378      	movs	r3, #120	; 0x78
d00840b8:	4828      	ldr	r0, [pc, #160]	; (d008415c <_printf_i+0x248>)
d00840ba:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00840be:	e7e3      	b.n	d0084088 <_printf_i+0x174>
d00840c0:	065e      	lsls	r6, r3, #25
d00840c2:	bf48      	it	mi
d00840c4:	b2ad      	uxthmi	r5, r5
d00840c6:	e7e6      	b.n	d0084096 <_printf_i+0x182>
d00840c8:	4616      	mov	r6, r2
d00840ca:	e7bb      	b.n	d0084044 <_printf_i+0x130>
d00840cc:	680b      	ldr	r3, [r1, #0]
d00840ce:	6826      	ldr	r6, [r4, #0]
d00840d0:	6960      	ldr	r0, [r4, #20]
d00840d2:	1d1d      	adds	r5, r3, #4
d00840d4:	600d      	str	r5, [r1, #0]
d00840d6:	0635      	lsls	r5, r6, #24
d00840d8:	681b      	ldr	r3, [r3, #0]
d00840da:	d501      	bpl.n	d00840e0 <_printf_i+0x1cc>
d00840dc:	6018      	str	r0, [r3, #0]
d00840de:	e002      	b.n	d00840e6 <_printf_i+0x1d2>
d00840e0:	0671      	lsls	r1, r6, #25
d00840e2:	d5fb      	bpl.n	d00840dc <_printf_i+0x1c8>
d00840e4:	8018      	strh	r0, [r3, #0]
d00840e6:	2300      	movs	r3, #0
d00840e8:	6123      	str	r3, [r4, #16]
d00840ea:	4616      	mov	r6, r2
d00840ec:	e7ba      	b.n	d0084064 <_printf_i+0x150>
d00840ee:	680b      	ldr	r3, [r1, #0]
d00840f0:	1d1a      	adds	r2, r3, #4
d00840f2:	600a      	str	r2, [r1, #0]
d00840f4:	681e      	ldr	r6, [r3, #0]
d00840f6:	6862      	ldr	r2, [r4, #4]
d00840f8:	2100      	movs	r1, #0
d00840fa:	4630      	mov	r0, r6
d00840fc:	f000 f8b8 	bl	d0084270 <memchr>
d0084100:	b108      	cbz	r0, d0084106 <_printf_i+0x1f2>
d0084102:	1b80      	subs	r0, r0, r6
d0084104:	6060      	str	r0, [r4, #4]
d0084106:	6863      	ldr	r3, [r4, #4]
d0084108:	6123      	str	r3, [r4, #16]
d008410a:	2300      	movs	r3, #0
d008410c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0084110:	e7a8      	b.n	d0084064 <_printf_i+0x150>
d0084112:	6923      	ldr	r3, [r4, #16]
d0084114:	4632      	mov	r2, r6
d0084116:	4649      	mov	r1, r9
d0084118:	4640      	mov	r0, r8
d008411a:	47d0      	blx	sl
d008411c:	3001      	adds	r0, #1
d008411e:	d0ab      	beq.n	d0084078 <_printf_i+0x164>
d0084120:	6823      	ldr	r3, [r4, #0]
d0084122:	079b      	lsls	r3, r3, #30
d0084124:	d413      	bmi.n	d008414e <_printf_i+0x23a>
d0084126:	68e0      	ldr	r0, [r4, #12]
d0084128:	9b03      	ldr	r3, [sp, #12]
d008412a:	4298      	cmp	r0, r3
d008412c:	bfb8      	it	lt
d008412e:	4618      	movlt	r0, r3
d0084130:	e7a4      	b.n	d008407c <_printf_i+0x168>
d0084132:	2301      	movs	r3, #1
d0084134:	4632      	mov	r2, r6
d0084136:	4649      	mov	r1, r9
d0084138:	4640      	mov	r0, r8
d008413a:	47d0      	blx	sl
d008413c:	3001      	adds	r0, #1
d008413e:	d09b      	beq.n	d0084078 <_printf_i+0x164>
d0084140:	3501      	adds	r5, #1
d0084142:	68e3      	ldr	r3, [r4, #12]
d0084144:	9903      	ldr	r1, [sp, #12]
d0084146:	1a5b      	subs	r3, r3, r1
d0084148:	42ab      	cmp	r3, r5
d008414a:	dcf2      	bgt.n	d0084132 <_printf_i+0x21e>
d008414c:	e7eb      	b.n	d0084126 <_printf_i+0x212>
d008414e:	2500      	movs	r5, #0
d0084150:	f104 0619 	add.w	r6, r4, #25
d0084154:	e7f5      	b.n	d0084142 <_printf_i+0x22e>
d0084156:	bf00      	nop
d0084158:	d009231d 	.word	0xd009231d
d008415c:	d009232e 	.word	0xd009232e

d0084160 <__sread>:
d0084160:	b510      	push	{r4, lr}
d0084162:	460c      	mov	r4, r1
d0084164:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0084168:	f000 f920 	bl	d00843ac <_read_r>
d008416c:	2800      	cmp	r0, #0
d008416e:	bfab      	itete	ge
d0084170:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0084172:	89a3      	ldrhlt	r3, [r4, #12]
d0084174:	181b      	addge	r3, r3, r0
d0084176:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d008417a:	bfac      	ite	ge
d008417c:	6563      	strge	r3, [r4, #84]	; 0x54
d008417e:	81a3      	strhlt	r3, [r4, #12]
d0084180:	bd10      	pop	{r4, pc}

d0084182 <__swrite>:
d0084182:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0084186:	461f      	mov	r7, r3
d0084188:	898b      	ldrh	r3, [r1, #12]
d008418a:	05db      	lsls	r3, r3, #23
d008418c:	4605      	mov	r5, r0
d008418e:	460c      	mov	r4, r1
d0084190:	4616      	mov	r6, r2
d0084192:	d505      	bpl.n	d00841a0 <__swrite+0x1e>
d0084194:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0084198:	2302      	movs	r3, #2
d008419a:	2200      	movs	r2, #0
d008419c:	f000 f856 	bl	d008424c <_lseek_r>
d00841a0:	89a3      	ldrh	r3, [r4, #12]
d00841a2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00841a6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00841aa:	81a3      	strh	r3, [r4, #12]
d00841ac:	4632      	mov	r2, r6
d00841ae:	463b      	mov	r3, r7
d00841b0:	4628      	mov	r0, r5
d00841b2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00841b6:	f7fc b841 	b.w	d008023c <_write_r>

d00841ba <__sseek>:
d00841ba:	b510      	push	{r4, lr}
d00841bc:	460c      	mov	r4, r1
d00841be:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00841c2:	f000 f843 	bl	d008424c <_lseek_r>
d00841c6:	1c43      	adds	r3, r0, #1
d00841c8:	89a3      	ldrh	r3, [r4, #12]
d00841ca:	bf15      	itete	ne
d00841cc:	6560      	strne	r0, [r4, #84]	; 0x54
d00841ce:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00841d2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00841d6:	81a3      	strheq	r3, [r4, #12]
d00841d8:	bf18      	it	ne
d00841da:	81a3      	strhne	r3, [r4, #12]
d00841dc:	bd10      	pop	{r4, pc}

d00841de <__sclose>:
d00841de:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00841e2:	f000 b801 	b.w	d00841e8 <_close_r>
	...

d00841e8 <_close_r>:
d00841e8:	b538      	push	{r3, r4, r5, lr}
d00841ea:	4d06      	ldr	r5, [pc, #24]	; (d0084204 <_close_r+0x1c>)
d00841ec:	2300      	movs	r3, #0
d00841ee:	4604      	mov	r4, r0
d00841f0:	4608      	mov	r0, r1
d00841f2:	602b      	str	r3, [r5, #0]
d00841f4:	f7fc f85c 	bl	d00802b0 <_close>
d00841f8:	1c43      	adds	r3, r0, #1
d00841fa:	d102      	bne.n	d0084202 <_close_r+0x1a>
d00841fc:	682b      	ldr	r3, [r5, #0]
d00841fe:	b103      	cbz	r3, d0084202 <_close_r+0x1a>
d0084200:	6023      	str	r3, [r4, #0]
d0084202:	bd38      	pop	{r3, r4, r5, pc}
d0084204:	d0092810 	.word	0xd0092810

d0084208 <_fstat_r>:
d0084208:	b538      	push	{r3, r4, r5, lr}
d008420a:	4d07      	ldr	r5, [pc, #28]	; (d0084228 <_fstat_r+0x20>)
d008420c:	2300      	movs	r3, #0
d008420e:	4604      	mov	r4, r0
d0084210:	4608      	mov	r0, r1
d0084212:	4611      	mov	r1, r2
d0084214:	602b      	str	r3, [r5, #0]
d0084216:	f7fc f84f 	bl	d00802b8 <_fstat>
d008421a:	1c43      	adds	r3, r0, #1
d008421c:	d102      	bne.n	d0084224 <_fstat_r+0x1c>
d008421e:	682b      	ldr	r3, [r5, #0]
d0084220:	b103      	cbz	r3, d0084224 <_fstat_r+0x1c>
d0084222:	6023      	str	r3, [r4, #0]
d0084224:	bd38      	pop	{r3, r4, r5, pc}
d0084226:	bf00      	nop
d0084228:	d0092810 	.word	0xd0092810

d008422c <_isatty_r>:
d008422c:	b538      	push	{r3, r4, r5, lr}
d008422e:	4d06      	ldr	r5, [pc, #24]	; (d0084248 <_isatty_r+0x1c>)
d0084230:	2300      	movs	r3, #0
d0084232:	4604      	mov	r4, r0
d0084234:	4608      	mov	r0, r1
d0084236:	602b      	str	r3, [r5, #0]
d0084238:	f7fc f866 	bl	d0080308 <_isatty>
d008423c:	1c43      	adds	r3, r0, #1
d008423e:	d102      	bne.n	d0084246 <_isatty_r+0x1a>
d0084240:	682b      	ldr	r3, [r5, #0]
d0084242:	b103      	cbz	r3, d0084246 <_isatty_r+0x1a>
d0084244:	6023      	str	r3, [r4, #0]
d0084246:	bd38      	pop	{r3, r4, r5, pc}
d0084248:	d0092810 	.word	0xd0092810

d008424c <_lseek_r>:
d008424c:	b538      	push	{r3, r4, r5, lr}
d008424e:	4d07      	ldr	r5, [pc, #28]	; (d008426c <_lseek_r+0x20>)
d0084250:	4604      	mov	r4, r0
d0084252:	4608      	mov	r0, r1
d0084254:	4611      	mov	r1, r2
d0084256:	2200      	movs	r2, #0
d0084258:	602a      	str	r2, [r5, #0]
d008425a:	461a      	mov	r2, r3
d008425c:	f7fc f832 	bl	d00802c4 <_lseek>
d0084260:	1c43      	adds	r3, r0, #1
d0084262:	d102      	bne.n	d008426a <_lseek_r+0x1e>
d0084264:	682b      	ldr	r3, [r5, #0]
d0084266:	b103      	cbz	r3, d008426a <_lseek_r+0x1e>
d0084268:	6023      	str	r3, [r4, #0]
d008426a:	bd38      	pop	{r3, r4, r5, pc}
d008426c:	d0092810 	.word	0xd0092810

d0084270 <memchr>:
d0084270:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0084274:	2a10      	cmp	r2, #16
d0084276:	db2b      	blt.n	d00842d0 <memchr+0x60>
d0084278:	f010 0f07 	tst.w	r0, #7
d008427c:	d008      	beq.n	d0084290 <memchr+0x20>
d008427e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0084282:	3a01      	subs	r2, #1
d0084284:	428b      	cmp	r3, r1
d0084286:	d02d      	beq.n	d00842e4 <memchr+0x74>
d0084288:	f010 0f07 	tst.w	r0, #7
d008428c:	b342      	cbz	r2, d00842e0 <memchr+0x70>
d008428e:	d1f6      	bne.n	d008427e <memchr+0xe>
d0084290:	b4f0      	push	{r4, r5, r6, r7}
d0084292:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0084296:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d008429a:	f022 0407 	bic.w	r4, r2, #7
d008429e:	f07f 0700 	mvns.w	r7, #0
d00842a2:	2300      	movs	r3, #0
d00842a4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00842a8:	3c08      	subs	r4, #8
d00842aa:	ea85 0501 	eor.w	r5, r5, r1
d00842ae:	ea86 0601 	eor.w	r6, r6, r1
d00842b2:	fa85 f547 	uadd8	r5, r5, r7
d00842b6:	faa3 f587 	sel	r5, r3, r7
d00842ba:	fa86 f647 	uadd8	r6, r6, r7
d00842be:	faa5 f687 	sel	r6, r5, r7
d00842c2:	b98e      	cbnz	r6, d00842e8 <memchr+0x78>
d00842c4:	d1ee      	bne.n	d00842a4 <memchr+0x34>
d00842c6:	bcf0      	pop	{r4, r5, r6, r7}
d00842c8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00842cc:	f002 0207 	and.w	r2, r2, #7
d00842d0:	b132      	cbz	r2, d00842e0 <memchr+0x70>
d00842d2:	f810 3b01 	ldrb.w	r3, [r0], #1
d00842d6:	3a01      	subs	r2, #1
d00842d8:	ea83 0301 	eor.w	r3, r3, r1
d00842dc:	b113      	cbz	r3, d00842e4 <memchr+0x74>
d00842de:	d1f8      	bne.n	d00842d2 <memchr+0x62>
d00842e0:	2000      	movs	r0, #0
d00842e2:	4770      	bx	lr
d00842e4:	3801      	subs	r0, #1
d00842e6:	4770      	bx	lr
d00842e8:	2d00      	cmp	r5, #0
d00842ea:	bf06      	itte	eq
d00842ec:	4635      	moveq	r5, r6
d00842ee:	3803      	subeq	r0, #3
d00842f0:	3807      	subne	r0, #7
d00842f2:	f015 0f01 	tst.w	r5, #1
d00842f6:	d107      	bne.n	d0084308 <memchr+0x98>
d00842f8:	3001      	adds	r0, #1
d00842fa:	f415 7f80 	tst.w	r5, #256	; 0x100
d00842fe:	bf02      	ittt	eq
d0084300:	3001      	addeq	r0, #1
d0084302:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0084306:	3001      	addeq	r0, #1
d0084308:	bcf0      	pop	{r4, r5, r6, r7}
d008430a:	3801      	subs	r0, #1
d008430c:	4770      	bx	lr
d008430e:	bf00      	nop

d0084310 <memcpy>:
d0084310:	440a      	add	r2, r1
d0084312:	4291      	cmp	r1, r2
d0084314:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0084318:	d100      	bne.n	d008431c <memcpy+0xc>
d008431a:	4770      	bx	lr
d008431c:	b510      	push	{r4, lr}
d008431e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0084322:	f803 4f01 	strb.w	r4, [r3, #1]!
d0084326:	4291      	cmp	r1, r2
d0084328:	d1f9      	bne.n	d008431e <memcpy+0xe>
d008432a:	bd10      	pop	{r4, pc}

d008432c <memmove>:
d008432c:	4288      	cmp	r0, r1
d008432e:	b510      	push	{r4, lr}
d0084330:	eb01 0402 	add.w	r4, r1, r2
d0084334:	d902      	bls.n	d008433c <memmove+0x10>
d0084336:	4284      	cmp	r4, r0
d0084338:	4623      	mov	r3, r4
d008433a:	d807      	bhi.n	d008434c <memmove+0x20>
d008433c:	1e43      	subs	r3, r0, #1
d008433e:	42a1      	cmp	r1, r4
d0084340:	d008      	beq.n	d0084354 <memmove+0x28>
d0084342:	f811 2b01 	ldrb.w	r2, [r1], #1
d0084346:	f803 2f01 	strb.w	r2, [r3, #1]!
d008434a:	e7f8      	b.n	d008433e <memmove+0x12>
d008434c:	4402      	add	r2, r0
d008434e:	4601      	mov	r1, r0
d0084350:	428a      	cmp	r2, r1
d0084352:	d100      	bne.n	d0084356 <memmove+0x2a>
d0084354:	bd10      	pop	{r4, pc}
d0084356:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d008435a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d008435e:	e7f7      	b.n	d0084350 <memmove+0x24>

d0084360 <_realloc_r>:
d0084360:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0084362:	4607      	mov	r7, r0
d0084364:	4614      	mov	r4, r2
d0084366:	460e      	mov	r6, r1
d0084368:	b921      	cbnz	r1, d0084374 <_realloc_r+0x14>
d008436a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d008436e:	4611      	mov	r1, r2
d0084370:	f7fe bf4a 	b.w	d0083208 <_malloc_r>
d0084374:	b922      	cbnz	r2, d0084380 <_realloc_r+0x20>
d0084376:	f7fe fef7 	bl	d0083168 <_free_r>
d008437a:	4625      	mov	r5, r4
d008437c:	4628      	mov	r0, r5
d008437e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0084380:	f000 f826 	bl	d00843d0 <_malloc_usable_size_r>
d0084384:	42a0      	cmp	r0, r4
d0084386:	d20f      	bcs.n	d00843a8 <_realloc_r+0x48>
d0084388:	4621      	mov	r1, r4
d008438a:	4638      	mov	r0, r7
d008438c:	f7fe ff3c 	bl	d0083208 <_malloc_r>
d0084390:	4605      	mov	r5, r0
d0084392:	2800      	cmp	r0, #0
d0084394:	d0f2      	beq.n	d008437c <_realloc_r+0x1c>
d0084396:	4631      	mov	r1, r6
d0084398:	4622      	mov	r2, r4
d008439a:	f7ff ffb9 	bl	d0084310 <memcpy>
d008439e:	4631      	mov	r1, r6
d00843a0:	4638      	mov	r0, r7
d00843a2:	f7fe fee1 	bl	d0083168 <_free_r>
d00843a6:	e7e9      	b.n	d008437c <_realloc_r+0x1c>
d00843a8:	4635      	mov	r5, r6
d00843aa:	e7e7      	b.n	d008437c <_realloc_r+0x1c>

d00843ac <_read_r>:
d00843ac:	b538      	push	{r3, r4, r5, lr}
d00843ae:	4d07      	ldr	r5, [pc, #28]	; (d00843cc <_read_r+0x20>)
d00843b0:	4604      	mov	r4, r0
d00843b2:	4608      	mov	r0, r1
d00843b4:	4611      	mov	r1, r2
d00843b6:	2200      	movs	r2, #0
d00843b8:	602a      	str	r2, [r5, #0]
d00843ba:	461a      	mov	r2, r3
d00843bc:	f7fb ff6e 	bl	d008029c <_read>
d00843c0:	1c43      	adds	r3, r0, #1
d00843c2:	d102      	bne.n	d00843ca <_read_r+0x1e>
d00843c4:	682b      	ldr	r3, [r5, #0]
d00843c6:	b103      	cbz	r3, d00843ca <_read_r+0x1e>
d00843c8:	6023      	str	r3, [r4, #0]
d00843ca:	bd38      	pop	{r3, r4, r5, pc}
d00843cc:	d0092810 	.word	0xd0092810

d00843d0 <_malloc_usable_size_r>:
d00843d0:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00843d4:	1f18      	subs	r0, r3, #4
d00843d6:	2b00      	cmp	r3, #0
d00843d8:	bfbc      	itt	lt
d00843da:	580b      	ldrlt	r3, [r1, r0]
d00843dc:	18c0      	addlt	r0, r0, r3
d00843de:	4770      	bx	lr

d00843e0 <clut>:
d00843e0:	0000 0000 afaf ffaf ffff ffff 67a2 ff3b     .............g;.
d00843f0:	907c ffaa 9595 ff95 7b7b ff7b a997 ffff     |.......{{{.....
d0084400:	a91d ff37 a9ff ff7c 8112 ffbf bf66 ffeb     ..7...|.....f...
d0084410:	c178 ff78 9318 ff3d 3418 ffb3 311c ffd9     x.x...=..4...1..
d0084420:	0000 ff00 000e ff00 001d ff00 002b ff00     ............+...
d0084430:	0139 ff00 0147 ff00 0156 ff00 0164 ff00     9...G...V...d...
d0084440:	01d2 ff00 01ff ff00 cece ffce ff00 ff00     ................
d0084450:	ff00 ffb2 e700 ffff 9600 ffff 1100 ffff     ................
d0084460:	1200 ff49 1355 ff49 14aa ff49 16ff ff49     ..I.U.I...I...I.
d0084470:	1700 ff5b 1855 ff5b 19aa ff5b 1aff ff5b     ..[.U.[...[...[.
d0084480:	1b00 ff6d 1c55 ff6d e300 ff00 ff54 ff85     ..m.U.m.....T...
d0084490:	ff00 ffc4 d900 ffff a41f ffff 5400 ffe0     .............T..
d00844a0:	0000 ffff 2655 ff92 27aa ff92 28ff ff92     ....U&...'...(..
d00844b0:	2900 ffa4 2a55 ffa4 2baa ffa4 2cff ffa4     .)..U*...+...,..
d00844c0:	2d00 ffb6 2f55 ffb6 30aa ffb6 31ff ffb6     .-..U/...0...1..
d00844d0:	3200 ffc9 3355 ffc9 34aa ffc9 35ff ffc9     .2..U3...4...5..
d00844e0:	3700 ffdb 3855 ffdb 39aa ffdb 3aff ffdb     .7..U8...9...:..
d00844f0:	3b00 ffed 3c55 ffed 3daa ffed 3fff ffed     .;..U<...=...?..
d0084500:	4000 ffff 4155 ffff 42aa ffff 43ff ffff     .@..UA...B...C..
d0084510:	4400 ff00 4555 ff00 46aa ff00 48ff ff00     .D..UE...F...H..
d0084520:	ff00 ffff ff55 ff12 ee55 ff12 b6ff ff12     ....U...U.......
d0084530:	1fff ff00 0ec7 ff9d 0000 fff1 7700 ffff     .............w..
d0084540:	5200 ff37 5355 ff37 54aa ff37 55ff ff37     .R7.US7..T7..U7.
d0084550:	5600 ff49 5855 ff49 59aa ff49 5aff ff49     .VI.UXI..YI..ZI.
d0084560:	5b00 ff5b 5c55 ff5b 5daa ff5b 5eff ff5b     .[[.U\[..][..^[.
d0084570:	6000 ff6d 6155 ff6d 62aa ff6d 63ff ff6d     .`m.Uam..bm..cm.
d0084580:	6400 ff6d 6555 ff80 66aa ff80 67ff ff80     .dm.Ue...f...g..
d0084590:	6900 ff92 6a55 ff92 6baa ff92 6cff ff92     .i..Uj...k...l..
d00845a0:	6d00 ffa4 6e55 ffa4 6faa ffa4 71ff ffa4     .m..Un...o...q..
d00845b0:	7200 ffb6 7355 ffb6 74aa ffb6 75ff ffb6     .r..Us...t...u..
d00845c0:	7600 ffc9 7755 ffc9 79aa ffc9 7aff ffc9     .v..Uw...y...z..
d00845d0:	7b00 ffdb 7c55 ffdb 7daa ffdb 7eff ffdb     .{..U|...}...~..
d00845e0:	7f00 ffed 8055 ffed 82aa ffed 83ff ffed     ....U...........
d00845f0:	8400 ffff 8555 ffff 86aa ffff 87ff ffff     ....U...........
d0084600:	8800 ff00 8a55 ff00 8baa ff00 8cff ff00     ....U...........
d0084610:	8d00 ff12 8e55 ff12 8faa ff12 90ff ff12     ....U...........
d0084620:	9200 ff24 9355 ff24 94aa ff24 95ff ff24     ..$.U.$...$...$.
d0084630:	9600 ff37 9755 ff37 98aa ff37 99ff ff37     ..7.U.7...7...7.
d0084640:	9b00 ff49 9c55 ff49 9daa ff49 9eff ff49     ..I.U.I...I...I.
d0084650:	9f00 ff5b a055 ff5b a1aa ff5b a3ff ff5b     ..[.U.[...[...[.
d0084660:	b5d5 ffa4 b0f8 ffa0 a3e6 ff94 89c1 ff7c     ..............|.
d0084670:	81c0 ff62 62a1 ff1c 54ea ff42 a1bd ff62     ..b..b...TB...b.
d0084680:	93c0 ff70 77a1 ff49 3faa ff00 54ff ff15     ..p..wI..?...T..
d0084690:	50b9 ff1c b3ff ff00 88aa ff00 b5ff ff00     .P..............
d00846a0:	62ff ff0e b7e3 ff5e c0b9 ffbd b9ff ff85     .b....^.........
d00846b0:	6caf ff00 81b9 ff1f 5baa ff3f beff ffc9     .l.......[?.....
d00846c0:	afcb ff5b c055 ffdb c1aa ffdb c0c0 ffbd     ..[.U...........
d00846d0:	c400 ffed c555 ffed c6aa ffed c7ff ffed     ....U...........
d00846e0:	c800 ffff c955 ffff caaa ffff ccff ffff     ....U...........
d00846f0:	cd00 ff00 ce55 ff00 cfaa ff00 d0ff ff00     ....U...........
d0084700:	d100 ff12 d255 ff12 d3aa ff12 d5ff ff12     ....U...........
d0084710:	d600 ff24 d755 ff24 d8aa ff24 d9ff ff24     ..$.U.$...$...$.
d0084720:	da00 ff37 db55 ff37 ddaa ff37 deff ff37     ..7.U.7...7...7.
d0084730:	df00 ff49 e055 ff49 e1aa ff49 e2ff ff49     ..I.U.I...I...I.
d0084740:	e300 ff5b e555 ff5b e6aa ff5b e7ff ff5b     ..[.U.[...[...[.
d0084750:	e800 ff6d e955 ff6d eaaa ff6d ebff ff6d     ..m.U.m...m...m.
d0084760:	58ec ff04 22ac ff04 77ff ff00 54ee ff00     .X..."...w...T..
d0084770:	33dd ff00 0000 ff99 0000 ffff 6600 ffff     .3...........f..
d0084780:	dd00 ffff f755 ffa4 f8aa ffa4 f9ff ffa4     ....U...........
d0084790:	fa00 ffb6 fb55 ffb6 fcaa ffb6 feff ffb6     ....U...........
d00847a0:	00ff ffff 0000 ff00 1313 ff13 2727 ff27     ............'''.
d00847b0:	3a3a ff3a 4e4e ff4e 6262 ff62 7575 ff75     :::.NNN.bbb.uuu.
d00847c0:	8989 ff89 9c9c ff9c b0b0 ffb0 c4c4 ffc4     ................
d00847d0:	d7d7 ffd7 ebeb ffeb ffff ffff ffff ffff     ................

d00847e0 <projx_spacestation>:
	...
d008481c:	f500 f9f8 f5f9 f5f5 f5f5 f8f8 f7f7 f7f7     ................
d008482c:	f6f7 f5f6 f5f5 0000 0000 0000 0000 0000     ................
	...
d00848c0:	f600 f5f5 f5f9 f7f4 f7f7 f3f4 f5f5 f4f4     ................
d00848d0:	f5f4 f6f4 f5f6 f5f5 0000 0000 0000 0000     ................
	...
d0084964:	f5f4 f3f6 f9f4 f4f5 f6f7 f3f6 f5f3 f4f4     ................
d0084974:	f4f4 f5f4 f6f5 f5f6 f5f5 f5f5 00f4 0000     ................
	...
d0084a08:	f500 f5f8 f4f4 f5fa f6f4 f6f6 f3f3 f5f5     ................
d0084a18:	f4f4 f6f5 f6f7 f6f6 f4f6 f4f4 f5f4 00f4     ................
	...
d0084aac:	f200 f8f8 f4f5 faf4 f4f5 f6f6 f4f6 f7f4     ................
d0084abc:	f8f7 f7f7 f6f7 f5f5 f5f6 f4f6 f4f4 f4f4     ................
d0084acc:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0084b50:	f200 f8f4 f6f5 f5f4 f5fa f9f5 f8f9 f5f5     ................
d0084b60:	f8f8 f6f7 f4f5 f5f4 f5f5 f5f5 f4f6 f4f4     ................
d0084b70:	f5f4 00fb 0000 0000 0000 0000 0000 0000     ................
	...
d0084bf4:	0000 f3f4 f4f3 f4f4 fafa f4f7 f4f4 f3f3     ................
d0084c04:	f8f5 f5f7 f4f4 f4f4 f5f4 f5f5 f5f6 f4f6     ................
d0084c14:	f4f4 f4f5 00f4 0000 0000 0000 0000 0000     ................
	...
d0084c98:	0000 f5f4 f5f5 f7f6 faf8 f7fa f6f6 f5f6     ................
d0084ca8:	f5f5 f8f7 f5f4 f4f4 f5f4 f5f4 f5f5 f5f6     ................
d0084cb8:	f5f6 f5f5 f4f5 0000 0000 0000 0000 0000     ................
	...
d0084d3c:	0000 f300 f3f3 f6f6 f8f5 f7f7 f6f5 f6f6     ................
d0084d4c:	f3f3 f6f3 f8f5 f2f2 f2f2 f3f2 f6f3 f3f6     ................
d0084d5c:	f3f4 f3f4 f3f3 00f3 0000 0000 0000 0000     ................
	...
d0084de4:	f4f5 f4f4 f5f5 f7f7 f5f5 f4f4 f3f4 f3f3     ................
d0084df4:	f5f3 f3f5 f3f3 f5f5 f4f5 f2f3 f1f2 f3f4     ................
d0084e04:	f3f4 f3f3 0000 0000 0000 0000 0000 0000     ................
	...
d0084e88:	f5f4 f6f5 f5f5 f7f5 f5f7 f4f5 f4f4 f3f3     ................
d0084e98:	f3f3 f5f4 f5f5 f4f4 f2f2 f2f2 f3f3 f3f4     ................
d0084ea8:	f3f3 00f3 0000 0000 0000 0000 0000 0000     ................
	...
d0084f2c:	f300 f5f5 f6f6 f7f7 f7f7 f4f5 f4f4 f5f6     ................
d0084f3c:	f5f5 f5f5 f5f5 f2f2 f4f2 f4f4 f4f5 f3f4     ................
d0084f4c:	f3f3 f3f3 f5f3 0000 0000 0000 0000 0000     ................
	...
d0084fd0:	0000 f4f3 f6f5 f7f6 f7f7 f5f5 f4f4 f6f4     ................
d0084fe0:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f3f3     ................
d0084ff0:	f3f3 f4f3 f5f5 0000 0000 0000 0000 0000     ................
	...
d0085074:	0000 f300 f4f5 f5f5 f6f6 f5f7 f4f5 f4f4     ................
d0085084:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 f3f3 f3f3     ................
d0085094:	f3f2 f5f4 f2f5 0000 0000 0000 0000 0000     ................
	...
d008511c:	f300 f4f5 f4f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d008512c:	f5f5 f4f5 f3f4 f3f3 f3f3 f4f2 f5f4 f5f5     ................
d008513c:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00851c4:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4     ................
d00851d4:	f3f3 f4f2 f2f3 f5f4 f5f5 f2f2 0000 0000     ................
	...
d0085268:	0000 f300 f5f5 f5f5 f5f5 f6f5 f2f8 f2f2     ................
d0085278:	f2f2 f5f4 f5f5 f5f5 f3f3 00f1 0000 0000     ................
	...
d0085318:	f2f4 f5f2 f2f5 f4f4 f4f9 f4f6 f2f1 f4f2     ................
d0085328:	f3f3 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00853bc:	f500 f2f4 f5f7 f2f1 f4f3 f2f1 f2f2 f4f3     ................
d00853cc:	f4f4 f3f3 0000 0000 0000 0000 0000 0000     ................
	...
d0085460:	00f3 f200 f5f2 f5f5 f4f5 f3f4 f3f3 f4f4     ................
d0085470:	f3f4 f3f4 f3f3 0000 0000 0000 0000 0000     ................
	...
d0085500:	0000 f300 f5f4 f4f5 f4f4 f4f4 f4f4 f4f5     ................
d0085510:	f4f4 f4f4 f4f4 f4f5 f3f4 f3f3 0000 0000     ................
	...
d00855a4:	0000 f300 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d00855b4:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 00f3 0000     ................
	...
d008564c:	f5f4 f6f5 f7f6 f9f8 f9f9 f9f9 f7f9 f7f7     ................
d008565c:	f6f6 f5f5 f5f5 f4f4 f3f3 0000 0000 0000     ................
	...
d00856f0:	f4f3 f5f5 f6f6 f8f7 f9f9 f9f9 f7f9 f6f7     ................
d0085700:	f5f6 f5f5 f5f5 f4f5 f3f4 00f3 0000 0000     ................
	...
d0085794:	0000 f5f4 f5f5 f6f6 f7f7 f8f8 f7f7 f6f7     ................
d00857a4:	f6f6 f5f5 f5f5 f4f5 f3f4 0000 0000 0000     ................
	...
d0085838:	0000 f300 f5f4 f5f5 f6f6 f6f6 f6f6 f6f6     ................
d0085848:	f5f6 f5f5 f5f5 f4f5 f2f4 00f5 0000 0000     ................
	...
d00858e0:	0000 f4f3 f5f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d00858f0:	f5f5 f2f5 f2f5 f3f2 0000 0000 0000 0000     ................
	...
d0085988:	0000 f3f3 f2f3 f2f2 f3f3 f3f5 f1f5 f2f1     ................
d0085998:	f3f2 f3f3 f3f3 0000 0000 0000 0000 0000     ................
	...
d0085a2c:	0000 f3f3 f3f2 f2f2 f2f2 f4f3 f4f4 f2f2     ................
d0085a3c:	f3f3 f3f4 f3f3 00f3 0000 0000 0000 0000     ................
	...
d0085ad0:	0000 f500 f4f5 f2f4 f2f2 f4f3 f5f6 f3f4     ................
d0085ae0:	f3f2 f3f3 f3f4 f3f3 00f3 0000 0000 0000     ................
	...
d0085afc:	f200 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0085b0c:	f2f2 f2f2 f2f2 f2f2 00f2 0000 0000 0000     ................
	...
d0085b74:	0000 f300 f5f5 f3f5 f2f2 f3f2 f6f5 f4f5     ................
d0085b84:	f2f3 f3f3 f5f4 f3f7 f3f3 f1f3 f2f1 f2f2     ................
d0085b94:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0085ba4:	f2f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0085bb4:	f5f2 f3f3 f3f3 f2f2 f2f2 f2f2 0000 0000     ................
	...
d0085c1c:	f5f3 f5f5 f2f3 f2f2 f4f4 f5f6 f4f4 f3f2     ................
d0085c2c:	f5f3 f5f5 f3f5 f3f3 f1f2 f3f1 f3f3 f3f3     ................
d0085c3c:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0085c4c:	f3f3 f3f3 f3f3 f3f3 f3f3 f2f3 f5f3 f3f3     ................
d0085c5c:	f3f3 f3f3 f3f3 f3f3 f2f3 f2f2 00f2 0000     ................
	...
d0085cc0:	f400 f5f5 f3f5 f2f2 f3f2 f6f4 f4f6 f2f2     ................
d0085cd0:	f4f3 f5f5 f7f5 f3f3 f3f3 f2f2 f2f1 f3f3     ................
d0085ce0:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0085cf0:	f3f3 f3f3 f3f3 f3f3 f3f3 f2f3 f3f5 f3f3     ................
d0085d00:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2     ................
d0085d10:	00f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0085d64:	0000 f5f5 f4f5 f2f3 f1f2 f2f2 f5f4 f4f3     ................
d0085d74:	f3f2 f5f5 f5f5 f7f5 f3f3 f3f3 f2f2 f2f1     ................
d0085d84:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f3     ................
d0085d94:	f2f2 f4f2 f4f4 f5f4 f5f5 f5f5 f5f5 f5f5     ................
d0085da4:	f6f5 f5f5 f4f4 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d0085db4:	f2f3 f1f1 f1f1 0000 0000 0000 0000 0000     ................
	...
d0085e08:	0000 f5f3 f5f5 f2f3 f2f2 f2f2 f5f4 f5f6     ................
d0085e18:	f2f2 f5f3 f5f5 f5f5 f5f9 f3f3 f2f3 f2f2     ................
d0085e28:	f1f1 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f3f4     ................
d0085e38:	f4f2 f1f5 f4f2 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0085e48:	f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f3f3 f3f3     ................
d0085e58:	f3f3 f3f3 f1f2 f1f1 f1f1 00f1 0000 0000     ................
	...
d0085eac:	0000 f300 f5f5 f3f5 f2f3 f2f2 f2f1 f5f3     ................
d0085ebc:	f3f5 f3f4 f5f4 f5f5 f5f5 f3f9 f3f3 f2f3     ................
d0085ecc:	f2f2 f1f1 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0085edc:	f6f2 f5f6 f2f2 f4f5 f5f5 f5f5 f5f5 f5f5     ................
d0085eec:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f3f3     ................
d0085efc:	f3f3 f3f3 f3f3 f1f2 f1f1 f1f1 f1f1 00f1     ................
	...
d0085f50:	0000 f100 f5f4 f5f5 f2f3 f2f2 f2f2 f4f4     ................
d0085f60:	f6f6 f4f5 f2f1 f5f3 f5f5 f9f5 f3f6 f3f3     ................
d0085f70:	f2f3 f2f2 f2f1 f4f4 f4f4 f4f4 f4f4 f2f4     ................
d0085f80:	f3f2 f2f4 f5f4 f3f3 f5f5 f5f5 f5f5 f5f5     ................
d0085f90:	f5f5 f5f5 f5f5 f5f5 f5f5 f6f5 f4f5 f3f3     ................
d0085fa0:	f3f4 f3f3 f3f3 f3f3 f1f2 f1f1 f1f1 f1f1     ................
d0085fb0:	f2f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0085ff0:	0000 f300 f3f3 f3f3 f5f2 f5f5 f3f4 f2f3     ................
d0086000:	f2f2 f2f1 f5f4 f5f6 f5f4 f3f5 f5f3 f5f5     ................
d0086010:	f9f5 f3f5 f3f3 f2f3 f2f2 f3f1 f4f4 f4f4     ................
d0086020:	f4f4 f2f4 f5f4 f4f4 f3f5 f3f2 f3f3 f4f5     ................
d0086030:	f3f3 f3f3 f3f4 f4f4 f4f4 f5f5 f5f5 f6f5     ................
d0086040:	f6f5 f4f5 f3f4 f4f3 f3f3 f3f4 f4f3 f1f2     ................
d0086050:	f1f1 f1f1 f1f1 f1f1 00f1 0000 0000 0000     ................
	...
d0086094:	f300 f3f3 f4f4 f4f4 f2f2 f6f5 f3f5 f2f3     ................
d00860a4:	f2f2 f5f2 f5f3 f5f5 f5f4 f6f6 f1f6 f5f3     ................
d00860b4:	f5f5 f9f6 f3f3 f3f3 f2f2 f2f2 f4f1 f4f4     ................
d00860c4:	f5f4 f2f2 f5f2 f5f3 f3f6 f3f2 f3f3 f4f3     ................
d00860d4:	f6f6 f6f6 f7f6 f6f7 f6f7 f5f7 f4f4 f5f5     ................
d00860e4:	f6f5 f6f5 f4f4 f4f3 f3f3 f3f4 f4f3 f2f3     ................
d00860f4:	f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 0000 0000     ................
	...
d0086134:	0000 f300 f4f3 f4f4 f4f4 f4f4 f2f2 f5f3     ................
d0086144:	f5f6 f3f3 f2f3 f5f2 f5f5 f5f5 f5f5 f7f6     ................
d0086154:	f6f6 f1f1 f5f4 f5f5 f5f9 f3f3 f3f3 f2f2     ................
d0086164:	f1f2 f4f1 f4f4 f3f3 f2f2 f4f5 f2f3 f3f2     ................
d0086174:	f1f2 f2f2 f1f2 f1f2 f1f1 f1f1 f1f1 f4f2     ................
d0086184:	f7f5 f5f5 f5f4 f6f5 f6f5 f4f5 f3f3 f3f4     ................
d0086194:	f4f3 f3f3 f1f3 f1f1 f1f1 f1f1 f1f1 f1f1     ................
d00861a4:	f2f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00861d8:	f4f3 f4f4 f4f4 f4f2 f4f4 f3f4 f2f3 f4f2     ................
d00861e8:	f6f5 f3f5 f2f3 f5f2 f5f5 f5f5 f5f5 f6f6     ................
d00861f8:	f6f6 f4f6 f1f1 f5f4 f5f5 f3f9 f3f3 f3f3     ................
d0086208:	f2f2 f1f2 f2f5 f5f3 f3f5 f5f3 f2f2 f5f2     ................
d0086218:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f2f2     ................
d0086228:	f1f1 f2f1 f7f5 f5f5 f6f4 f5f6 f3f3 f3f4     ................
d0086238:	f4f3 f3f3 f2f4 f2f2 f1f2 f1f1 f1f1 f1f1     ................
d0086248:	f1f1 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d0086278:	0000 f4f3 f4f4 f4f4 f4f4 f4f4 f4f3 f3f3     ................
d0086288:	f3f3 f3f2 f6f5 f4f5 f2f3 f5f3 f5f5 f5f5     ................
d0086298:	f6f5 f7f7 f6f6 f1f6 f1f1 f1f1 f5f1 f5f5     ................
d00862a8:	f3f6 f3f3 f2f3 f2f2 f2f1 f5f3 f5f7 f3f5     ................
d00862b8:	f2f2 f5f5 0000 0000 0000 0000 0000 0000     ................
d00862c8:	0000 f500 f5f5 f5f5 f2f2 f7f2 f6f7 f6f4     ................
d00862d8:	f3f6 f3f4 f4f3 f3f3 f3f4 f1f2 f1f2 f2f2     ................
d00862e8:	f1f1 f1f1 f1f1 f1f1 00f1 0000 0000 0000     ................
	...
d008631c:	f400 f4f4 f4f4 f4f4 f3f4 f3f4 f3f3 f3f3     ................
d008632c:	f3f3 f2f2 f5f3 f5f6 f3f3 f4f3 f5f5 f5f5     ................
d008633c:	f7f5 f7f8 f7f8 f1f5 f1f1 f1f1 f1f1 f5f4     ................
d008634c:	f5f5 f3f5 f3f3 f2f3 f2f2 f3f2 f5f5 f5f7     ................
d008635c:	f5f3 f5f5 0000 0000 0000 0000 0000 0000     ................
	...
d0086374:	f500 f5f5 f4f1 f6f5 f5f4 f3f4 f4f3 f3f3     ................
d0086384:	f3f4 f2f3 f1f2 f1f2 f2f1 f1f2 f1f1 f1f1     ................
d0086394:	f1f1 00f2 0000 0000 0000 0000 0000 0000     ................
	...
d00863bc:	0000 f300 f4f3 f4f4 f4f3 f2f3 f3f3 f3f3     ................
d00863cc:	f3f3 f3f3 f3f3 f2f3 f4f2 f6f5 f3f5 f3f3     ................
d00863dc:	f5f5 f5f5 f7f5 f8f9 f8f8 f1f7 f1f1 f1f1     ................
d00863ec:	f1f1 f1f1 f5f4 f5f5 f3f3 f3f3 f2f2 f1f2     ................
d00863fc:	f3f2 f5f5 f2f3 f4f2 0000 0000 0000 0000     ................
	...
d008641c:	f500 f1f5 f7f5 f3f5 f4f3 f3f3 f3f4 f2f3     ................
d008642c:	f2f2 f2f2 f1f2 f1f1 f1f1 f1f1 f1f2 f2f2     ................
	...
d0086460:	0000 f4f3 f4f4 f2f4 f2f3 f2f3 f3f3 f3f2     ................
d0086470:	f3f3 f3f3 f3f3 f3f3 f2f2 f5f5 f4f6 f3f3     ................
d0086480:	f5f4 f5f5 f2f3 f9f9 f8f8 f1f1 f1f1 f1f1     ................
d0086490:	f1f1 f2f2 f1f1 f5f5 f5f5 f3f3 f3f3 f2f2     ................
d00864a0:	f2f1 f3f2 f2f3 f3f2 0000 0000 0000 0000     ................
d00864b0:	0000 f2f2 00f2 0000 0000 0000 0000 0000     ................
d00864c0:	0000 0000 f2f1 f4f8 f3f4 f3f4 f3f4 f2f4     ................
d00864d0:	f2f2 f2f2 f2f2 f1f2 f1f1 f1f1 f1f2 f1f2     ................
d00864e0:	00f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0086504:	f4f3 f4f4 f4f4 f2f3 f2f3 f2f3 f3f3 f3f2     ................
d0086514:	f3f3 f3f3 f3f3 f3f3 f2f3 f5f2 f5f6 f3f3     ................
d0086524:	f5f3 f5f5 f6f5 f2f8 f8f8 f1f1 f1f1 f1f1     ................
d0086534:	f1f1 f4f2 f1f1 f4f1 f5f5 f3f5 f3f3 f2f5     ................
d0086544:	f2f2 f5f1 f2f2 f5f2 0000 0000 0000 0000     ................
d0086554:	0000 f300 f3f3 0000 0000 0000 0000 0000     ................
d0086564:	0000 0000 f500 f3f1 f3f4 f3f4 f3f4 f3f4     ................
d0086574:	f2f2 f2f2 f2f2 f1f2 f1f1 f1f1 f1f1 f2f2     ................
d0086584:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00865a4:	0000 f4f3 f4f4 f4f4 f2f3 f2f2 f2f3 f2f3     ................
d00865b4:	f3f3 f3f2 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2     ................
d00865c4:	f6f5 f3f5 f4f3 f5f5 f6f5 f7f6 f1f8 f1f1     ................
d00865d4:	f1f1 f1f1 f1f1 f2f4 f1f1 f2f1 f4f1 f5f5     ................
d00865e4:	f5f5 f4f5 f2f3 f1f2 f5f2 00f5 0000 0000     ................
d00865f4:	0000 0000 0000 f300 f5f5 f3f5 0000 f1f2     ................
d0086604:	f1f1 f1f1 f1f1 f1f1 f3f2 f3f4 f3f4 f3f4     ................
d0086614:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d0086624:	f1f1 f2f2 f2f1 00f2 0000 0000 0000 0000     ................
	...
d0086648:	f400 f4f4 f4f4 f3f4 f2f2 f2f2 f2f3 f2f3     ................
d0086658:	f2f3 f3f2 f2f3 f3f3 f4f3 f5f4 f5f5 f5f4     ................
d0086668:	f7f4 f5f5 f3f3 f8f4 f6f5 f6f9 f7f9 f1f7     ................
d0086678:	f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 f1f1 f5f3     ................
d0086688:	f5f5 f4f5 f2f2 f5f5 f5f4 f3f5 f5f3 f5f6     ................
d0086698:	f4f4 f5f4 f4f3 f4f4 f7f5 f5f7 f3f5 f2f3     ................
d00866a8:	f4f2 f4f4 f6f4 f4f6 f2f3 f3f4 f3f4 f3f4     ................
d00866b8:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d00866c8:	f1f1 f2f2 f2f2 f2f2 0000 0000 0000 0000     ................
	...
d00866ec:	f4f3 f2f4 f4f4 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d00866fc:	f2f2 f2f2 f2f2 f2f2 f5f4 f5f5 f5f5 f5f5     ................
d008670c:	f5f5 f5f7 f3f4 f5f3 f5f5 f7f6 f7f5 f7f6     ................
d008671c:	f1f1 f1f1 f4f4 f1f1 f1f1 f1f1 f1f1 f4f1     ................
d008672c:	f5f4 f5f5 f2f2 f3f3 f3f3 f2f3 f2f2 f3f2     ................
d008673c:	f3f3 f8f5 f5f5 f1f4 f5f3 f7f7 f4f4 f3f3     ................
d008674c:	f2f2 f3f2 f3f3 f4f4 f2f3 f4f3 f3f4 f3f4     ................
d008675c:	f3f4 f3f4 f2f2 f2f2 f2f2 f2f2 f1f1 f1f1     ................
d008676c:	f1f1 f2f1 f2f2 f2f2 0000 0000 0000 0000     ................
	...
d008678c:	0000 f300 f4f4 f4f4 f2f4 f2f2 f3f2 f4f4     ................
d008679c:	f5f4 f5f5 f5f5 f2f4 f3f2 f3f3 f2f2 f2f4     ................
d00867ac:	f5f2 f2f5 f2f1 f7f5 f3f5 f3f3 f5f5 f6f5     ................
d00867bc:	f6f6 f7f6 f1f6 f4f1 f1f4 f1f1 f1f1 f1f1     ................
d00867cc:	f7f1 f5f5 f3f4 f5f5 f2f4 f4f2 f6f5 f5f4     ................
d00867dc:	f8f7 f7f9 f5f6 f4f4 f3f4 f5f1 f3f1 f5f5     ................
d00867ec:	f7f2 f5f5 f5f5 f8f5 f5f6 f4f5 f3f3 f4f3     ................
d00867fc:	f3f4 f3f4 f3f4 f2f4 f2f3 f2f2 f2f2 f2f2     ................
d008680c:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 00f2 0000     ................
	...
d0086830:	0000 f4f3 f4f4 f4f4 f2f4 f2f2 f2f2 f2f2     ................
d0086840:	f3f3 f2f3 f1f2 f2f1 f3f2 f5f5 f3f5 f5f2     ................
d0086850:	f5f5 f5f5 f8f5 f7f5 f5f6 f3f3 f5f3 f5f5     ................
d0086860:	f6f6 f6f5 f6f6 f4f4 f1f1 f1f1 f1f1 f1f1     ................
d0086870:	f7f1 f5f5 f4f4 f5f3 f4f5 f3f1 f2f2 f2f2     ................
d0086880:	f3f2 f3f3 f6f3 f3f3 f3f3 f5f2 f2f7 f3f1     ................
d0086890:	f5f5 f2f2 f4f2 f4f4 f4f4 f3f4 f2f3 f4f3     ................
d00868a0:	f3f4 f4f4 f3f3 f2f4 f4f3 f2f3 f2f3 f2f2     ................
d00868b0:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 00f3 0000     ................
	...
d00868d4:	0000 f4f4 f4f4 f4f4 f2f2 f2f2 f2f2 f4f2     ................
d00868e4:	f5f4 f4f5 f4f3 f5f5 f3f2 f7f5 f5f7 f3f5     ................
d00868f4:	f3f2 f2f3 f2f2 f4f1 f6f7 f3f5 f4f3 f5f5     ................
d0086904:	f6f5 f5f6 f6f6 f3f6 f1f1 f4f1 f1f4 f1f1     ................
d0086914:	f5f1 f5f5 f4f5 f3f4 f5f4 f3f4 f4f2 f5f5     ................
d0086924:	f4f5 f2f2 f1f3 f5f1 f4f4 f1f4 f5f4 f1f3     ................
d0086934:	f3f2 f3f3 f1f2 f2f5 f3f3 f3f3 f4f4 f4f3     ................
d0086944:	f3f4 f4f4 f4f3 f2f4 f1f3 f2f5 f2f3 f2f2     ................
d0086954:	f1f1 f1f1 f1f1 f2f1 f2f2 f2f2 f4f3 0000     ................
	...
d0086978:	f300 f4f4 f4f4 f2f4 f2f2 f2f2 f2f2 f7f4     ................
d0086988:	f5f7 f9f7 f7f6 f5f6 f2f6 f5f3 f7f7 f5f7     ................
d0086998:	f2f3 f5f5 f8f7 f8f9 f7f5 f4f5 f3f3 f5f5     ................
d00869a8:	f5f5 f5f6 f6f5 f6f6 f5f6 f4f4 f1f4 f1f1     ................
d00869b8:	f1f1 f5f5 f5f5 f4f4 f3f2 f3f5 f2f3 f2f2     ................
d00869c8:	f2f2 f2f2 f2f2 f3f3 f3f2 f3f3 f1f2 f5f5     ................
d00869d8:	f5f5 f2f2 f5f2 f3f5 f2f3 f4f3 f4f4 f4f4     ................
d00869e8:	f4f4 f4f4 f4f3 f2f3 f2f3 f1f3 f4f3 f3f2     ................
d00869f8:	f2f2 f1f2 f1f1 f2f1 f2f2 f2f2 f4f2 0000     ................
	...
d0086a1c:	f4f3 f5f4 f4f4 f2f4 f2f2 f2f2 f2f2 f2f2     ................
d0086a2c:	f5f3 f5f4 f4f5 f3f3 f1f2 f3f2 f5f5 f7f7     ................
d0086a3c:	f3f5 f2f2 f3f2 f3f3 f5f1 f5f7 f3f3 f5f3     ................
d0086a4c:	f5f5 f5f5 f5f5 f6f5 f6f5 f1f5 f1f1 f1f1     ................
d0086a5c:	f1f1 f5f5 f5f5 f4f4 f4f4 f5f3 f2f4 f5f2     ................
d0086a6c:	f2f5 f5f5 f5f2 f2f1 f2f1 f2f2 f3f4 f4f4     ................
d0086a7c:	f2f5 f5f3 f5f5 f2f2 f3f2 f4f4 f4f4 f4f4     ................
d0086a8c:	f4f4 f4f4 f3f3 f2f3 f2f3 f2f3 f2f3 f2f2     ................
d0086a9c:	f2f5 f2f3 f2f1 f2f1 f2f2 f2f2 f5f2 0000     ................
	...
d0086ac0:	f4f4 f4f4 f2f2 f2f2 f2f1 f2f2 f2f2 f2f2     ................
d0086ad0:	f1f2 f2f1 f3f2 f7f5 f5f6 f3f4 f3f2 f5f5     ................
d0086ae0:	f3f5 f5f2 f4f4 f200 f5f1 f7f5 f3f5 f3f3     ................
d0086af0:	f4f3 f5f5 f5f5 f5f5 f6f5 f5f5 f1f5 f1f1     ................
d0086b00:	f7f1 f5f5 f5f5 f4f5 f4f4 f2f3 f4f4 f2f2     ................
d0086b10:	f2f2 f4f1 f2f5 f1f5 f2f2 f2f2 f2f2 f2f2     ................
d0086b20:	f5f5 f2f5 f2f2 f2f2 f4f3 f4f4 f4f4 f4f4     ................
d0086b30:	f4f4 f4f4 f3f3 f2f3 f2f3 f2f3 f2f3 f2f3     ................
d0086b40:	f1f3 f2f5 f3f2 f2f2 f2f3 f2f2 f5f2 0000     ................
	...
d0086b60:	0000 f300 f4f4 f4f4 f4f4 f2f1 f2f1 f2f2     ................
d0086b70:	f2f2 f3f2 f4f5 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d0086b80:	f2f2 f3f2 f3f3 f2f2 0000 0000 0000 f7f4     ................
d0086b90:	f5f6 f3f3 f4f3 f4f4 f4f4 f5f5 f5f5 f5f5     ................
d0086ba0:	f5f5 f1f1 f7f1 f5f5 f5f5 f4f5 f4f4 f3f4     ................
d0086bb0:	f3f2 f3f5 f3f4 f4f3 f5f2 f2f2 f2f2 f2f2     ................
d0086bc0:	f5f5 f2f5 f5f5 f2f5 f2f2 f3f2 f4f4 f4f4     ................
d0086bd0:	f4f4 f4f4 f4f4 f3f4 f3f3 f3f3 f3f2 f2f3     ................
d0086be0:	f1f3 f2f2 f2f3 f1f3 f4f3 f2f3 f2f3 f2f2     ................
d0086bf0:	f5f2 0000 0000 0000 0000 0000 0000 0000     ................
d0086c00:	0000 0000 0000 f3f3 f4f4 f4f4 f4f4 f1f1     ................
d0086c10:	f2f1 f2f1 f2f2 f5f3 f3f4 f2f2 f5f5 f5f5     ................
d0086c20:	f5f5 f5f5 f5f5 f5f5 f2f2 f5f2 00f5 0000     ................
d0086c30:	0000 f500 f5f7 f3f4 f3f2 f4f4 f5f4 f5f5     ................
d0086c40:	f5f5 f5f5 f5f5 f5f2 f5f5 f5f5 f5f5 f4f4     ................
d0086c50:	f4f4 f3f4 f2f2 f4f2 f3f4 f5f3 f2f1 f2f5     ................
d0086c60:	f2f2 f5f2 f5f5 f2f2 f2f2 f2f2 f2f2 f4f2     ................
d0086c70:	f4f4 f4f4 f4f4 f4f4 f4f4 f3f3 f3f3 f3f3     ................
d0086c80:	f3f2 f2f3 f1f2 f1f2 f1f2 f2f3 f2f3 f2f2     ................
d0086c90:	f2f5 f2f2 f5f3 0000 0000 0000 0000 0000     ................
	...
d0086ca8:	f300 f3f3 f4f4 f4f4 f4f4 f1f1 f2f1 f2f1     ................
d0086cb8:	f2f1 f5f4 f2f3 f5f2 00f5 0000 0000 0000     ................
d0086cc8:	0000 0000 f500 f5f5 0000 0000 0000 0000     ................
d0086cd8:	f7f5 f3f5 f2f2 f3f3 f4f4 f4f4 f5f5 f5f5     ................
d0086ce8:	f5f5 f2f5 f5f5 f5f5 f5f5 f4f4 f4f4 f3f4     ................
d0086cf8:	f2f2 f2f3 f4f4 f3f3 f2f5 f2f2 f2f2 f2f2     ................
d0086d08:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f5f5 f4f4     ................
d0086d18:	f4f4 f4f4 f4f3 f3f3 f3f4 f3f3 f3f3 f2f3     ................
d0086d28:	f2f2 f2f1 f1f2 f1f2 f2f3 f2f3 f1f3 f2f4     ................
d0086d38:	f4f5 0000 0000 0000 0000 0000 0000 0000     ................
d0086d48:	0000 0000 f300 f3f3 f4f4 f4f4 f4f4 f1f4     ................
d0086d58:	f1f1 f2f1 f3f1 f3f4 f2f2 f5f5 0000 0000     ................
	...
d0086d7c:	f200 f3f2 f3f3 f2f3 f3f2 f4f4 f4f4 f4f4     ................
d0086d8c:	f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f4f3 f3f4     ................
d0086d9c:	f2f3 f3f2 f4f2 f3f5 f2f5 f2f2 f2f2 f2f2     ................
d0086dac:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f5f2 f5f4     ................
d0086dbc:	f4f4 f4f3 f4f3 f3f3 f3f4 f4f3 f3f3 f2f3     ................
d0086dcc:	f2f2 f2f1 f1f2 f2f2 f2f1 f2f3 f2f3 f4f2     ................
d0086ddc:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
d0086dec:	0000 0000 f300 f3f3 f4f4 f4f4 f4f4 f4f4     ................
d0086dfc:	f1f1 f2f1 f4f1 f2f4 f5f2 00f5 0000 0000     ................
	...
d0086e20:	0000 f3f4 f5f5 f5f5 f2f3 f3f3 f4f4 f4f4     ................
d0086e30:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f3f3     ................
d0086e40:	f2f3 f2f2 f2f3 f3f3 f3f5 f2f2 f2f2 f2f2     ................
d0086e50:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f4f3 f4f5     ................
d0086e60:	f4f3 f4f5 f4f3 f4f3 f3f4 f4f3 f3f3 f2f2     ................
d0086e70:	f2f2 f2f1 f1f2 f2f2 f3f1 f2f3 f2f3 f5f3     ................
d0086e80:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
d0086e90:	0000 0000 f3f3 f4f3 f4f4 f4f4 f4f4 f4f4     ................
d0086ea0:	f1f4 f1f1 f4f1 f2f3 f5f2 0000 0000 0000     ................
	...
d0086ec4:	0000 f3f2 f7f5 f5f7 f5f5 f2f3 f2f2 f3f2     ................
d0086ed4:	f4f3 f4f4 f4f4 f4f4 f4f4 f4f4 f3f4 f3f3     ................
d0086ee4:	f2f3 f2f2 f3f3 f5f2 f3f5 f2f3 f2f2 f2f2     ................
d0086ef4:	f2f2 f2f2 f2f2 f2f2 f3f2 f4f3 f4f4 f4f4     ................
d0086f04:	f4f3 f4f3 f4f5 f4f3 f3f3 f4f3 f2f2 f2f2     ................
d0086f14:	f2f2 f2f2 f1f2 f2f2 f3f2 f2f3 f2f3 f5f4     ................
	...
d0086f38:	f3f3 f4f2 f5f3 f4f4 f4f4 f4f4 f4f4 f1f1     ................
d0086f48:	f3f1 f2f3 f5f5 0000 0000 0000 0000 0000     ................
	...
d0086f68:	0000 f200 f5f3 f7f7 f7f7 f3f5 f2f2 f3f2     ................
d0086f78:	f3f3 f4f4 f4f4 f4f4 f4f4 f3f3 f3f3 f3f3     ................
d0086f88:	f2f2 f2f2 f4f3 f2f2 f5f5 f2f3 f2f2 f2f2     ................
d0086f98:	f2f2 f2f2 f2f2 f2f2 f4f2 f4f4 f4f4 f4f4     ................
d0086fa8:	f4f4 f4f4 f5f2 f4f4 f4f3 f2f3 f2f2 f2f2     ................
d0086fb8:	f2f2 f2f2 f2f2 f3f2 f3f2 f2f3 f3f3 f4f5     ................
	...
d0086fdc:	f3f3 f2f2 f5f5 f4f5 f4f4 f4f4 f4f4 f1f4     ................
d0086fec:	f3f1 f2f3 00f5 0000 0000 0000 0000 0000     ................
	...
d0087010:	f3f2 f7f5 f7f7 f5f7 f2f3 f2f2 f3f2 f3f3     ................
d0087020:	f3f3 f3f3 f3f3 f3f3 f3f3 f3f3 f2f2 f3f2     ................
d0087030:	f5f3 f2f3 f5f2 f2f9 f2f2 f2f2 f2f2 f2f2     ................
d0087040:	f2f2 f2f2 f4f4 f4f4 f4f4 f4f4 f3f4 f3f4     ................
d0087050:	f4f3 f5f3 f4f4 f4f3 f2f2 f2f2 f2f2 f2f2     ................
d0087060:	f2f2 f3f2 f3f3 f3f3 f5f3 00f5 0000 0000     ................
	...
d0087080:	f3f3 f2f2 f5f5 f5f5 f4f4 f4f4 f4f4 f3f3     ................
d0087090:	f1f2 f1f2 00f5 0000 0000 0000 0000 0000     ................
	...
d00870b4:	f3f2 f3f3 f7f3 f7f7 f3f5 f2f2 f2f2 f2f2     ................
d00870c4:	f3f2 f3f3 f3f3 f3f3 f3f3 f2f2 f2f2 f3f2     ................
d00870d4:	f6f4 f3f3 f2f2 f1f9 f2f2 f3f2 f2f3 f2f2     ................
d00870e4:	f2f2 f2f2 f4f3 f4f4 f4f4 f4f4 f4f4 f3f4     ................
d00870f4:	f4f4 f4f3 f5f3 f4f3 f4f3 f2f2 f2f2 f2f2     ................
d0087104:	f2f2 f3f3 f3f3 f3f3 f5f5 0000 0000 0000     ................
	...
d0087124:	f2f3 f2f2 f5f5 f5f5 f4f5 f3f4 f3f3 f4f3     ................
d0087134:	f5f5 f1f4 00f5 0000 0000 0000 0000 0000     ................
	...
d0087158:	f4f4 f2f4 f2f3 f9f5 f3f9 f2f2 f2f2 f2f7     ................
d0087168:	f2f6 f2f2 f2f2 f2f2 f2f2 f2f2 f3f2 f5f4     ................
d0087178:	f6f6 f5f5 f3f3 f3f4 f3f2 f4f3 f4f4 f2f4     ................
d0087188:	f2f4 f4f3 f4f4 f4f4 f4f4 f4f5 f4f4 f3f4     ................
d0087198:	f4f4 f4f3 f3f4 f5f3 f4f3 f4f3 f2f2 f2f2     ................
d00871a8:	f4f2 f3f3 f3f3 f5f3 00f5 0000 0000 0000     ................
	...
d00871c8:	f2f3 f3f2 f5f3 f5f5 f5f5 f3f5 f4f3 f5f5     ................
d00871d8:	f4f5 f4f4 f3f4 00f3 0000 0000 0000 0000     ................
	...
d00871f8:	0000 f100 f5f3 f2f2 f2f5 f5f3 f5f5 f2f5     ................
d0087208:	f2f1 f3f2 f2f2 f2f2 f2f2 f2f2 f3f3 f4f4     ................
d0087218:	f5f5 f5f5 f3f5 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d0087228:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f5     ................
d0087238:	f4f4 f4f4 f2f3 f4f2 f3f4 f2f4 f4f5 f4f3     ................
d0087248:	f4f3 f4f2 f4f3 f3f3 f3f3 f5f5 0000 0000     ................
	...
d008726c:	f2f3 f3f2 f5f3 f5f5 f5f5 f6f5 f5f4 f4f5     ................
d008727c:	f4f4 f4f4 f4f4 f4f4 f4f4 f3f4 00f3 0000     ................
	...
d008729c:	0000 f1f1 f6f6 f1f2 f5f3 f2f3 f5f5 f5f5     ................
d00872ac:	f1f5 f2f1 f3f3 f4f4 f4f4 f4f4 f5f5 f6f5     ................
d00872bc:	f6f6 f4f5 f4f4 f4f4 f4f4 f5f2 f4f4 f4f4     ................
d00872cc:	f4f4 f4f4 f4f4 f4f4 f4f4 f5f4 f4f4 f5f4     ................
d00872dc:	f5f4 f2f4 f2f2 f2f2 f3f2 f4f4 f2f3 f4f5     ................
d00872ec:	f4f3 f4f3 f4f3 f3f3 f5f3 00f5 0000 0000     ................
	...
d0087310:	f2f3 f3f2 f4f3 f5f5 f6f5 f6f5 f8f5 f4f6     ................
d0087320:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087330:	f3f4 00f1 0000 0000 0000 0000 0000 0000     ................
d0087340:	0000 f4f2 f5f5 f2f2 f4f4 f5f5 f5f5 f5f5     ................
d0087350:	f2f2 f5f5 f1f1 f2f2 f2f2 f3f2 f3f3 f4f4     ................
d0087360:	f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f5f2 f4f5     ................
d0087370:	f4f4 f4f4 f5f4 f5f4 f5f4 f5f4 f5f4 f4f4     ................
d0087380:	f5f4 f2f2 f2f2 f2f2 f2f2 f4f4 f3f3 f3f3     ................
d0087390:	f4f5 f4f3 f3f3 f3f3 f5f5 0000 0000 0000     ................
	...
d00873b4:	f400 f3f3 f4f3 f5f3 f6f5 f6f5 f8f5 f7f6     ................
d00873c4:	f5f7 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d00873d4:	f2f4 f5f5 f4f4 f3f3 f3f3 0000 0000 0000     ................
d00873e4:	f4f3 f4f4 f5f4 f2f2 f3f3 f3f3 f4f3 f4f3     ................
d00873f4:	f4f3 f4f3 f4f4 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d0087404:	f4f4 f4f4 f4f4 f4f4 f4f4 f5f4 f4f5 f6f4     ................
d0087414:	f5f5 f4f4 f5f5 f5f4 f5f4 f4f4 f4f4 f3f3     ................
d0087424:	f2f3 f3f2 f2f2 f2f2 f2f2 f2f2 f4f3 f3f4     ................
d0087434:	f3f2 f3f4 f3f3 f5f3 00f5 0000 0000 0000     ................
	...
d0087458:	0000 f3f5 f4f3 f4f3 f6f4 f6f5 f6f5 f6f8     ................
d0087468:	f6f7 f7f7 f4f5 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087478:	f5f2 f5f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d0087488:	f4f4 f4f4 f2f4 f4f5 f4f4 f4f4 f4f4 f4f4     ................
d0087498:	f4f4 f4f4 f4f4 f4f4 f5f2 f4f4 f4f4 f4f4     ................
d00874a8:	f4f4 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 f3f5     ................
d00874b8:	f5f6 f4f5 f4f5 f5f4 f5f4 f4f4 f2f3 f2f3     ................
d00874c8:	f2f3 f3f2 f2f2 f2f2 f2f2 f2f2 f2f2 f3f4     ................
d00874d8:	f3f4 f3f2 f3f3 f5f5 0000 0000 0000 0000     ................
	...
d00874fc:	0000 f6f3 f4f3 f4f3 f5f4 f6f5 f5f5 f8f5     ................
d008750c:	f7f6 f7f6 f7f7 f5f8 f5f5 f4f4 f4f4 f2f4     ................
d008751c:	f5f5 f4f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d008752c:	f4f4 f4f4 f4f2 f4f5 f4f4 f4f4 f4f4 f4f4     ................
d008753c:	f4f4 f4f4 f4f4 f4f4 f2f4 f4f5 f4f4 f4f4     ................
d008754c:	f4f4 f4f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d008755c:	f5f4 f5f5 f4f5 f5f4 f4f4 f2f5 f2f3 f2f3     ................
d008756c:	f2f3 f3f2 f2f2 f2f3 f2f2 f2f2 f4f3 f3f4     ................
d008757c:	f4f4 f2f3 f5f2 00f5 0000 0000 0000 0000     ................
	...
d00875a0:	0000 f300 f5f6 f4f4 f5f4 f6f5 f6f5 f8f5     ................
d00875b0:	f7f6 f5f5 f5f5 f5f5 f8f8 f8f8 f6f7 f5f5     ................
d00875c0:	f5f5 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d00875d0:	f4f4 f2f4 f5f4 f4f4 f4f4 f4f4 f4f4 f4f4     ................
d00875e0:	f4f4 f4f4 f4f4 f4f4 f3f4 f5f6 f5f5 f5f5     ................
d00875f0:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0087600:	f5f5 f6f4 f5f5 f5f5 f3f2 f2f3 f2f3 f2f3     ................
d0087610:	f2f3 f2f3 f2f2 f2f3 f2f2 f4f3 f4f4 f4f4     ................
d0087620:	f4f4 f5f3 f2f5 0000 0000 0000 0000 0000     ................
	...
d0087648:	f5f5 f5f7 f5f4 f6f5 f6f5 f8f5 f7f6 f5f5     ................
d0087658:	f7f8 f8f8 f6f6 f8f8 f8f8 f8f6 f8f9 f7f7     ................
d0087668:	f6f7 f5f5 f4f5 f4f4 f4f4 f4f4 f4f4 f2f2     ................
d0087678:	f6f5 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 f5f5     ................
d0087688:	f6f6 f6f5 f5f5 f7f4 f5f6 f5f5 f5f5 f5f5     ................
d0087698:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f3f5     ................
d00876a8:	f5f6 f5f5 f3f4 f2f3 f2f3 f2f3 f2f3 f2f3     ................
d00876b8:	f2f3 f2f3 f4f3 f4f4 f4f4 f4f4 f4f4 f5f5     ................
d00876c8:	f2f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00876ec:	f500 f7f4 f6f6 f5f5 f8f6 f8f8 f7f6 f5f5     ................
d00876fc:	f8f8 f9f8 f5f8 f6f9 f6f8 f6f9 f8f9 f8f8     ................
d008770c:	f7f7 f7f7 f7f7 f7f7 f7f7 f7f7 f6f7 f2f2     ................
d008771c:	f7f8 f7f6 f6f6 f7f6 f6f6 f6f6 f6f6 f5f6     ................
d008772c:	f6f6 f6f5 f6f5 f5f5 f5f8 f5f5 f5f5 f5f5     ................
d008773c:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f3 f5f5     ................
d008774c:	f5f4 f5f5 f5f5 f2f5 f3f3 f2f3 f2f3 f2f3     ................
d008775c:	f2f3 f4f3 f4f4 f4f4 f4f4 f4f4 f5f5 f5f5     ................
d008776c:	00f4 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0087790:	0000 f2f5 f7f5 f6f6 f6f7 f6f6 f7f7 f5f6     ................
d00877a0:	f9f8 f9f7 f5f9 f8f5 f9f8 f8f9 f8f8 f8f8     ................
d00877b0:	f8f7 f8f7 f7f7 f7f7 f7f7 f7f7 f6f7 f2f7     ................
d00877c0:	f7f5 f7f6 f7f6 f7f6 f6f6 f6f6 f6f6 f6f6     ................
d00877d0:	f6f6 f6f5 f6f5 f5f5 f7f5 f6f5 f5f5 f5f5     ................
d00877e0:	f5f5 f5f5 f5f5 f5f5 f3f4 f3f4 f4f4 f5f5     ................
d00877f0:	f4f5 f5f5 f5f5 f4f5 f3f3 f2f2 f2f3 f4f3     ................
d0087800:	f4f3 f4f4 f4f4 f4f4 f5f4 f5f5 f5f5 00f4     ................
	...
d0087838:	f4f5 f5f5 f5f7 f7f6 f8f5 f7f8 f9f8 f3f5     ................
d0087848:	f2f5 f3f2 f5f3 f9fb f8f8 f8f8 f8f7 f8f7     ................
d0087858:	f7f7 f7f8 f7f7 f7f7 f7f7 f7f7 f9f2 f7f6     ................
d0087868:	f7f6 f7f6 f6f6 f6f6 f6f6 f6f6 f6f6 f6f5     ................
d0087878:	f6f5 f6f5 f5f5 f6f6 f5f5 f5f5 f5f5 f5f5     ................
d0087888:	f4f4 f3f3 f3f4 f3f4 f3f4 f5f3 f5f5 f4f5     ................
d0087898:	f5f6 f5f5 f3f5 f3f2 f4f3 f4f5 f4f4 f4f4     ................
d00878a8:	f5f4 f5f5 f5f5 f4f5 0000 0000 0000 0000     ................
	...
d00878dc:	0000 f3f5 f5f3 f5f4 f5f8 f6f6 f5f3 f2f5     ................
d00878ec:	f2f5 f2f2 f2f2 f7f5 f8f8 f6f6 f6f7 f6f5     ................
d00878fc:	f7f7 f7f8 f7f7 f7f7 f7f7 f7f7 f2f5 f7f7     ................
d008790c:	f7f6 f7f6 f6f6 f6f7 f6f6 f6f6 f6f6 f6f5     ................
d008791c:	f6f6 f6f5 f5f5 f6f6 f4f6 f4f4 f4f4 f4f4     ................
d008792c:	f4f4 f4f3 f3f4 f3f4 f3f4 f3f4 f5f4 f5f5     ................
d008793c:	f6f3 f5f5 f5f5 f5f4 f4f5 f4f5 f4f4 f5f5     ................
d008794c:	f5f5 f5f5 00f4 f200 0000 0000 0000 0000     ................
	...
d0087980:	0000 f200 f4f2 f5f4 f4f5 f6f5 f5f6 f2f2     ................
d0087990:	f2f2 f2f2 f2f2 f3f2 f9f5 f6f9 f6f5 f6f5     ................
d00879a0:	f5f5 f5f6 f5f5 f5f5 f5f5 f7f5 f5f6 f7f2     ................
d00879b0:	f5f6 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d00879c0:	f4f5 f6f4 f6f5 f7f5 f6f6 f4f5 f4f4 f4f4     ................
d00879d0:	f4f4 f4f3 f3f4 f3f4 f3f4 f3f4 f3f4 f5f5     ................
d00879e0:	f3f5 f5f6 f5f5 f5f5 f4f4 f5f4 f5f5 f5f5     ................
d00879f0:	f4f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0087a28:	f200 f2f2 f5f4 f2f3 f4f2 f5f6 f2f2 f2f2     ................
d0087a38:	f200 f2f2 f5f2 f9f5 f5f9 f6f6 f6f5 f5f6     ................
d0087a48:	f6f5 f5f5 f5f5 f5f5 f5f7 f2f8 f7f6 f5f5     ................
d0087a58:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f5f5     ................
d0087a68:	f6f5 f5f5 f6f7 f4f6 f4f4 f4f4 f4f4 f4f4     ................
d0087a78:	f3f4 f3f4 f3f4 f3f4 f5f4 f5f5 f5f5 f5f2     ................
d0087a88:	f4f4 f4f4 f5f5 f5f5 f5f5 f2f4 0000 0000     ................
	...
d0087acc:	0000 f200 f4f2 f2f5 f2f2 f2f2 f5f4 f2f2     ................
d0087adc:	00f2 f200 f2f2 f2f5 f9f9 f8f9 f6f5 f5f5     ................
d0087aec:	f6f5 f5f5 f5f5 f5f5 f7f7 f8f5 f7f7 f5f6     ................
d0087afc:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f5f5     ................
d0087b0c:	f6f4 f6f5 f7f5 f5f6 f5f4 f4f4 f4f4 f4f4     ................
d0087b1c:	f3f4 f4f4 f5f4 f5f5 f5f5 f5f5 f5f5 f2f5     ................
d0087b2c:	f5f5 f5f5 f5f5 f4f5 0000 0000 0000 0000     ................
	...
d0087b74:	f200 f4f2 f2f2 f2f2 f2f2 f4f2 00f2 f400     ................
d0087b84:	f4f4 f2f5 f8f8 f9f8 f6f9 f6f5 f6f5 f5f5     ................
d0087b94:	f5f5 f5f5 f7f5 f8f5 f7f7 f5f6 f5f5 f5f5     ................
d0087ba4:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f6f4 f6f5     ................
d0087bb4:	f5f5 f6f7 f5f5 f4f4 f4f4 f5f4 f5f5 f5f5     ................
d0087bc4:	f5f5 f5f5 f5f5 f5f5 f5f5 f6f6 f5f2 f5f5     ................
	...
d0087c18:	0000 f200 f4f4 f2f2 f2f2 f2f2 00f2 0000     ................
d0087c28:	0000 f400 f5f5 f9f5 f8f9 f6f8 f6f5 f5f5     ................
d0087c38:	f5f6 f5f5 f7f5 f5f7 f7f9 f7f6 f5f5 f5f5     ................
d0087c48:	f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f5f5 f6f6     ................
d0087c58:	f6f6 f8f3 f6f5 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0087c68:	f5f5 f5f5 f6f5 f6f9 f5f6 f5f5 f3f3 f2f3     ................
d0087c78:	f2f2 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0087cc0:	f2f2 f2f2 f200 f2f2 00f2 f2f2 0000 0000     ................
d0087cd0:	f200 f4f4 f9f5 f9f9 f9f9 f9f9 f8f9 f8f9     ................
d0087ce0:	f8f8 f6f8 f8f9 f8f8 f8f7 f8f7 f7f7 f7f7     ................
d0087cf0:	f6f7 f6f7 f6f7 f6f7 f6f6 f6f6 f6f6 f2f6     ................
d0087d00:	f5f7 f5f5 f5f5 f5f5 f5f5 f9f9 f5f9 f5f5     ................
d0087d10:	f5f5 f5f5 f5f5 f5f5 f4f4 f3f3 f2f2 00f2     ................
	...
d0087d64:	0000 f200 0000 f200 f2f2 0000 0000 0000     ................
d0087d74:	0000 0000 f200 f5f5 f8f9 f8f9 f8f9 f8f9     ................
d0087d84:	f8f8 f8f8 f9f5 f8f8 f8f7 f8f7 f7f7 f6f6     ................
d0087d94:	f6f7 f6f7 f6f7 f6f7 f6f6 f5f6 f5f6 f9f6     ................
d0087da4:	f6f2 f6f5 f6f6 f6f6 f9f6 f9f9 f5f5 f5f5     ................
d0087db4:	f6f6 f6f6 f5f6 f5f5 f4f5 f3f4 f2f3 f2f2     ................
d0087dc4:	f2f2 f2f2 00f2 0000 0000 0000 0000 0000     ................
	...
d0087e0c:	0000 f200 f2f2 0000 0000 0000 0000 0000     ................
d0087e1c:	0000 f2f2 f9f5 f9f9 f6f6 f6f6 f6f6 f5f6     ................
d0087e2c:	f2f5 f5f5 f6f6 f6f7 f6f6 f6f6 f6f6 f6f6     ................
d0087e3c:	f6f6 f6f6 f6f6 f8f8 f8f8 f8f8 f2f8 f5f2     ................
d0087e4c:	f5f4 f6f5 f7f6 f6f6 f6f6 f6f6 f6f6 f6f6     ................
d0087e5c:	f5f5 f5f5 f5f5 f4f4 f3f3 f2f2 f2f2 f3f2     ................
d0087e6c:	f2f3 00f2 0000 0000 0000 0000 0000 0000     ................
	...
d0087eb4:	f200 0000 0000 0000 0000 0000 0000 0000     ................
d0087ec4:	0000 f5f5 f9f9 f9f9 f9f9 f9f9 f9f9 f9f5     ................
d0087ed4:	f9f9 f9f9 f9f9 f9f9 f9f9 f9f9 f9f9 f9f9     ................
d0087ee4:	f9f9 f5f9 f3f5 f2f3 f2f2 f2f2 f4f2 f5f5     ................
d0087ef4:	f6f5 f7f6 f8f7 f7f8 f7f7 f6f6 f5f6 f5f5     ................
d0087f04:	f5f5 f4f4 f2f3 f2f2 f2f2 f2f2 f3f3 f2f3     ................
	...
d0087f90:	f2f2 f4f4 f2f2 f4f2 f5f5 f6f5 f6f6 f6f6     ................
d0087fa0:	f6f6 f6f6 f5f5 f5f5 f5f5 f3f4 f2f2 fef2     ................
d0087fb0:	f2fe f2f2 f3f2 f3f3 00f2 0000 0000 0000     ................
	...
d0088034:	0000 f400 f2f2 f2f2 f3f2 f4f4 f5f5 f5f5     ................
d0088044:	f5f5 f5f5 f5f5 f5f5 f3f3 f2f2 f2f2 f8f2     ................
d0088054:	f2f2 f2f2 f3f2 f3f3 f2f3 0000 0000 0000     ................
	...
d00880dc:	f200 f3f2 f2f2 f2f2 f3f2 f3f3 f3f3 f3f3     ................
d00880ec:	f3f3 f2f3 f2f2 f2f2 f4f2 f2f2 f2f2 f2f2     ................
d00880fc:	f3f2 f3f3 f2f3 00f2 0000 0000 0000 0000     ................
	...
d0088180:	0000 f3f2 f2f2 f9f2 f2f2 f2f2 f2f2 f2f2     ................
d0088190:	f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d00881a0:	f3f2 f3f3 f3f3 f2f3 0000 0000 0000 0000     ................
	...
d0088224:	0000 f200 f3f2 f2f2 f2f2 f9f2 f2f2 f4f2     ................
d0088234:	f2f2 f2f9 f2f6 f2f2 f2f2 f2f2 f2f2 f3f2     ................
d0088244:	f3f3 f3f3 f3f4 f3f3 00f2 0000 0000 0000     ................
	...
d00882cc:	f5f4 f3f4 f2f2 f2f2 f2f2 f2f2 f2f2 f2f2     ................
d00882dc:	f2f2 f2f2 f2f2 f2f2 f3f2 f3f3 f3f3 f3f4     ................
d00882ec:	f3f3 f2f3 00f5 0000 0000 0000 0000 0000     ................
	...
d0088370:	f300 f5f5 f6f6 f4f5 f2f3 f2f2 f2f2 f2f2     ................
d0088380:	f2f2 f2f2 f2f2 f3f2 f3f3 f4f3 f4f5 f3f4     ................
d0088390:	f3f3 f2f3 00f2 0000 0000 0000 0000 0000     ................
	...
d0088414:	0000 f4f3 f6f5 f7f6 f7f7 f5f5 f4f4 f6f4     ................
d0088424:	f5f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4 f3f3     ................
d0088434:	f3f3 f2f2 f3f5 0000 0000 0000 0000 0000     ................
	...
d00884b8:	0000 f500 f4f5 f5f5 f6f6 f5f7 f4f5 f4f4     ................
d00884c8:	f5f5 f5f5 f5f5 f5f5 f4f5 f3f4 f3f3 f3f3     ................
d00884d8:	f2f2 f3f2 f3f5 00f2 0000 0000 0000 0000     ................
	...
d0088560:	f300 f4f5 f4f4 f5f5 f5f5 f5f5 f5f5 f5f5     ................
d0088570:	f5f5 f4f5 f3f4 f3f3 f3f3 f2f2 f3f2 f3f5     ................
d0088580:	f3f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0088608:	f3f5 f3f5 f5f5 f5f5 f5f5 f5f5 f4f5 f4f4     ................
d0088618:	f3f3 f2f2 f2f2 f2f2 f3f5 f3f5 f3f5 00f5     ................
	...
d00886ac:	0000 f3f5 f3f5 f3f5 f3f5 f3f5 f3f8 f3f5     ................
d00886bc:	f3f5 f3f5 f3f5 f3f5 f3f5 f3f5 f3f5 00f5     ................
	...
d0088754:	f300 f3f5 f3f5 f3f5 f3f5 f5f5 f5f5 f4f5     ................
d0088764:	f4f5 f3f5 f3f5 f3f5 f3f5 f5f5 0000 0000     ................
	...
d00887f8:	0000 f300 f3f5 f3f5 f3f5 f4f5 f5f5 f5f5     ................
d0088808:	f4f5 f3f5 f3f5 f3f5 f3f5 f5f5 0000 0000     ................
	...
d00888a0:	0000 f3f5 f3f5 f3f5 f4f5 f5f5 f5f5 f4f5     ................
d00888b0:	f3f5 f3f5 f3f5 f3f5 00f5 0000 0000 0000     ................
	...
d0088948:	f300 f3f5 f4f5 f5f5 f5f5 f4f5 f4f5 f3f5     ................
d0088958:	f3f5 f3f5 00f5 0000 0000 0000 0000 0000     ................
	...
d00889ec:	0000 f300 f3f5 f4f5 f5f5 f5f5 f4f5 f3f5     ................
d00889fc:	f3f5 f3f5 00f5 0000 0000 0000 0000 0000     ................
	...
d0088a94:	f2f2 f3f5 f4f5 f5f5 f4f5 f3f5 f3f5 f5f5     ................
d0088aa4:	f2f5 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0088b3c:	f300 f4f5 f5f5 f4f5 f5f5 f5f5 00f5 0000     ................
	...
d0088be0:	0000 f200 f5f5 f5f5 f9f5 f2f5 f2f5 0000     ................
	...
d0088c88:	0000 f300 f2f5 f2f5 f5f9 00f2 0000 0000     ................
	...
d0088d30:	f500 f5f2 00f2 f500 0000 0000 0000 0000     ................
	...
d0088dd4:	0000 f2f5 f5f2 0000 00f5 0000 0000 0000     ................
	...
d0088e78:	0000 f300 f2f5 00f5 f900 0000 0000 0000     ................
	...
d0088f20:	f500 f5f2 0000 0000 0000 0000 0000 0000     ................
	...
d0088fc4:	0000 f2f9 00f5 0000 0000 0000 0000 0000     ................
	...
d008906c:	f1f2 00f5 0000 0000 0000 0000 0000 0000     ................
	...
d0089110:	f100 f5f1 0000 0000 0000 0000 0000 0000     ................
	...
d00891b4:	0000 00f1 00f5 0000 0000 0000 0000 0000     ................
	...
d008925c:	f500 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0089300:	0000 f5f2 0000 0000 0000 0000 0000 0000     ................
	...
d00893a8:	00f9 0000 0000 0000 0000 0000 0000 0000     ................
	...

d00893f0 <px_bullet>:
d00893f0:	0000 0000 e2e2 fdeb e2eb 0000 e200 ebeb     ................
d0089400:	fdfd fdfd e2fd ebe2 fdfd fdfd fdfd fdfd     ................
d0089410:	00eb e200 ebeb fdfd fdfd e2fd 0000 0000     ................
d0089420:	e2e2 fdeb e2eb 0000                         ........

d0089428 <px_enemy>:
	...
d0089434:	f2f2 f2f2 f2f2 00f2 0000 0000 0000 0000     ................
	...
d0089450:	f200 f3f3 e1e1 e1e1 e1e1 f3e1 f2f3 0000     ................
	...
d008946c:	0000 e500 e1e5 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d008947c:	e1e1 00e5 0000 0000 0000 0000 0000 0000     ................
d008948c:	0000 e5e5 e1e6 e4e4 e4e4 e4e4 e1e4 e1e1     ................
d008949c:	e1e1 e5e6 00e5 0000 0000 0000 0000 0000     ................
d00894ac:	e500 e7e5 e4e7 e4e4 e4e4 e4e4 e4e4 e1e4     ................
d00894bc:	e1e1 e7e7 e5e5 0000 0000 0000 0000 0000     ................
d00894cc:	e5e5 e7e7 e3e8 e3e3 e3e3 e4e4 e4e4 e4e4     ................
d00894dc:	e1e4 e7e8 e5e7 00e5 0000 0000 0000 e500     ................
d00894ec:	e7e5 e8e7 e3e8 e3e3 e3e3 e3e3 e4e4 e4e4     ................
d00894fc:	e4e4 e8e8 e7e7 e5e5 0000 0000 0000 e5e5     ................
d008950c:	e7e7 e8e8 e3fe e3e3 e3e3 e3e3 e4e3 e4e4     ................
d008951c:	e4e4 e8fe e7e8 e5e7 00e5 0000 0000 e6e5     ................
d008952c:	e8e7 fee8 e2fe e2e2 e3e3 e3e3 e3e3 e4e4     ................
d008953c:	e4e4 fefe e8e8 e6e7 00e5 0000 f200 e4e1     ................
d008954c:	e3e3 e2e3 e2e2 e2e2 e1e4 f3f3 f3f3 e4e1     ................
d008955c:	e4e4 e4e4 e1e1 e1e1 f2e1 0000 f300 e4e1     ................
d008956c:	e3e3 e2e3 e2e2 f3e2 f3f3 f3f3 f3f3 f3f3     ................
d008957c:	e4e4 e4e4 e1e1 e1e1 f3e1 0000 f200 e3e4     ................
d008958c:	e3e3 e2e2 e2e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008959c:	e4f3 e4e4 e1e4 e1e1 f2e1 0000 e1f2 e3e4     ................
d00895ac:	e3e3 e2e2 e4e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d00895bc:	e1f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d00895cc:	e3e3 e2e2 e1e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d00895dc:	f3f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d00895ec:	e3e3 e2e3 f3e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d00895fc:	f3f3 e4e4 e1e4 e1e1 e1e1 00f2 e1f2 e3e4     ................
d008960c:	e3e3 e2e3 f3e2 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008961c:	f3f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e4     ................
d008962c:	e3e3 e3e3 f3e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008963c:	f3f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e4     ................
d008964c:	e3e3 e3e3 e1e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008965c:	e1f3 e4e3 e1e4 e1e1 e1e1 00f2 e1f2 e4e1     ................
d008966c:	e3e4 e3e3 e4e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008967c:	e3f3 e4e3 e1e1 e1e1 e1e1 00f2 f200 e4e1     ................
d008968c:	e4e4 e3e3 e3e3 f3f3 f3f3 f3f3 f3f3 f3f3     ................
d008969c:	f8e1 e4e4 e1e1 e1e1 f2e1 0000 f300 e1e1     ................
d00896ac:	e4e4 e3e4 e3e3 f3e3 f3f3 f3f3 f3f3 e1f3     ................
d00896bc:	e4f9 e1e4 e1e1 e1e1 f3e1 0000 f200 e1e1     ................
d00896cc:	e4e4 e4e4 e3e4 e3e3 e1e4 f3f3 e1f3 f8e3     ................
d00896dc:	e4e4 e1e4 e1e1 e1e1 f2e1 0000 0000 e6e5     ................
d00896ec:	e8e7 fee8 e4fe e4e4 e4e4 e3e3 e2e3 e4e3     ................
d00896fc:	e4e4 fefe e8e8 e6e7 00e5 0000 0000 e5e5     ................
d008970c:	e7e7 e8e8 e4fe e4e4 e4e4 e4e4 e4e4 e4e4     ................
d008971c:	e1e4 e8fe e7e8 e5e7 00e5 0000 0000 e500     ................
d008972c:	e7e5 e8e7 e4e8 e4e4 e4e4 e4e4 e4e4 e1e4     ................
d008973c:	e1e1 e8e8 e7e7 e5e5 0000 0000 0000 0000     ................
d008974c:	e5e5 e7e7 e1e8 e4e4 e4e4 e4e4 e1e4 e1e1     ................
d008975c:	e1e1 e7e8 e5e7 00e5 0000 0000 0000 0000     ................
d008976c:	e500 e7e5 e1e7 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d008977c:	e1e1 e7e7 e5e5 0000 0000 0000 0000 0000     ................
d008978c:	0000 e5e5 e1e6 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d008979c:	e1e1 e5e6 00e5 0000 0000 0000 0000 0000     ................
d00897ac:	0000 e500 e1e5 e1e1 e1e1 e1e1 e1e1 e1e1     ................
d00897bc:	e1e1 e5e5 0000 0000 0000 0000 0000 0000     ................
d00897cc:	0000 0000 f200 f2f3 e1e1 e1e1 e1e1 f2e1     ................
d00897dc:	f2f3 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00897f4:	f2f2 f2f2 f2f2 00f2 0000 0000 0000 0000     ................
	...

d0089828 <px_ship>:
d0089828:	0000 0000 f2f2 0000 0000 0000 0000 0000     ................
	...
d0089848:	0000 f8f3 f2f8 0000 0000 0000 0000 0000     ................
	...
d0089868:	f300 f8f8 f2f8 0000 0000 0000 0000 0000     ................
	...
d0089888:	f6f2 f6f6 f2f5 0000 0000 0000 0000 0000     ................
	...
d00898a4:	0000 f200 f5f5 f5f5 f2f2 f2f2 f2f2 f2f2     ................
d00898b4:	f2f2 f2f2 f2f2 0000 0000 0000 0000 0000     ................
d00898c4:	0000 f2f2 f5f5 f7f7 fbf5 f7fb e1f2 f7e0     ................
d00898d4:	f7f7 f6f6 f2f5 00f2 0000 0000 0000 f2f2     ................
d00898e4:	f3f2 f7f2 f9f9 f5f7 fbfb f2f7 e0e1 f9e0     ................
d00898f4:	fbfb fbfb fbf2 f2f2 0000 0000 f200 f7f7     ................
d0089904:	f2f5 f5f5 f5f5 fbf5 f7fb e1f2 e0e1 e0e0     ................
d0089914:	e0e0 fbf2 e1f2 f2e1 0000 0000 fbf2 f7fb     ................
d0089924:	f7f5 fbfb f5f9 fbf9 f5f9 e1f3 e1e1 e1e1     ................
d0089934:	fbf2 e1f2 fbe0 f2e1 0000 f200 f7f7 f3f6     ................
d0089944:	f9f7 f9fb f7f5 fbf9 f5f7 f2f2 f2f2 fbf2     ................
d0089954:	f2f2 e1f3 fbe0 f2e1 0000 f7f2 f6f7 f7f2     ................
d0089964:	f9f9 f9f9 f7f5 f9f9 f9f9 f9f9 f9f9 f3f5     ................
d0089974:	f2f2 e1f3 e0e0 f2f2 f200 f2f2 f2f3 f9f5     ................
d0089984:	f9f9 f9f9 f5f5 f4f4 f5f4 f5f5 f8f8 f7f8     ................
d0089994:	f2f5 e1f3 e1e1 00f2 0000 f200 f2f2 f2f2     ................
d00899a4:	f2f2 f2f2 f5f3 f3f5 f2f2 f3f3 f7f5 f8f8     ................
d00899b4:	f3f5 f2f2 f2f2 0000 0000 0000 f5f2 f5f5     ................
d00899c4:	f5f5 f5f4 f5f5 f3f5 f2f3 f2f2 f5f2 f8f8     ................
d00899d4:	f9f9 f8f9 f2f6 0000 0000 f200 f6f6 f6f6     ................
d00899e4:	f2f6 f7f5 f5f7 f5f5 f4f5 f4f3 f2f5 f2f2     ................
d00899f4:	f2f2 f2f2 00f2 0000 0000 f7f2 f7f7 f2f7     ................
d0089a04:	f200 f6f2 f7f7 f2f2 f2f2 f2f2 00f2 0000     ................
	...
d0089a1c:	0000 f2f2 f2f2 0000 0000 f2f2 00f2 0000     ................
	...

d0089a38 <topscroll_bar_bg1>:
d0089a38:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 02a0 0202     ................
d0089a48:	0202 a002 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089a58:	9f9f 029f 0202 0202 a002 9f9f 9f9f 9f9f     ................
d0089a68:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089a78:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 029f     ................
d0089a88:	0202 0202 0202 0202 0202 9f02 9f9f 9f9f     ................
d0089a98:	9f9f 9f9f a09f 0202 0202 a302 a3a3 9f9f     ................
d0089aa8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ab8:	02a0 a002 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ac8:	9f9f 0202 0202 0202 0202 0202 a002 9f9f     ................
d0089ad8:	9f9f 9f9f 9f9f 9f9f a09f 0202 0202 0202     ................
d0089ae8:	0202 0202 0202 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089af8:	029f 0202 0202 0202 9f9f 9f9f 9f9f 9f9f     ................
d0089b08:	9f9f 9f9f 9f9f 9f9f 02a0 a002 9f9f 02a0     ................
d0089b18:	9f02 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089b28:	0202 0202 0202 9f02 9f9f 9f9f 9f9f 9f9f     ................
d0089b38:	9f9f a09f 0202 0202 0202 0202 0202 9f9f     ................
d0089b48:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089b58:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089b68:	9f9f 029f a0a0 0202 0202 9f9f 9f9f 9f9f     ................
d0089b78:	9f9f 9f9f 9f9f 9f9f a09f 0202 0202 0202     ................
d0089b88:	9f02 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089b98:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ba8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089bb8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089bc8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089bd8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089be8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089bf8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c08:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c18:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c28:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c38:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c48:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c58:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c68:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c78:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c88:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089c98:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ca8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089cb8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089cc8:	a09f a0a0 a0a0 a0a0 9f9f 9f9f 9f9f 9f9f     ................
d0089cd8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089ce8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089cf8:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089d08:	9f9f b79f 0202 0202 02a0 b7b7 a0a0 9fa0     ................
d0089d18:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 8f8f     ................
d0089d28:	8f8f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089d38:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089d48:	9f9f 9f9f 9f9f b7b7 0202 02a0 0202 b702     ................
d0089d58:	a0b7 9f9f 9f9f 9f9f 9f9f 8f9f 8f8f 8f8f     ................
d0089d68:	8f8f 8f8f 8f8f 8f8f a0a0 a0a0 a0a0 9fa0     ................
d0089d78:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0089d88:	8f8f 8f8f 8f8f 8f8f 8f8f 0909 a009 a0a0     ................
d0089d98:	a0a0 9fa0 9f9f 9f9f 8f9f 8f8f 8f8f 8f8f     ................
d0089da8:	8f8f 8f8f 8f8f 8f8f 8f8f 02b7 0202 a002     ................
d0089db8:	b702 a0b7 a0a0 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089dc8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089dd8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089de8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f b78f 02b7     ................
d0089df8:	a002 0202 0202 b7b7 8fa0 8f8f 8f8f 8f8f     ................
d0089e08:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089e18:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089e28:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089e38:	8f8f 8f8f a0a0 a0a0 a0a0 8f8f 8f8f 0606     ................
d0089e48:	0606 0606 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089e58:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089e68:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089e78:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089e88:	068f 0605 0606 0606 8f06 8f8f 8f8f 8f8f     ................
d0089e98:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089ea8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089eb8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089ec8:	8f8f 8f8f 0506 0606 0606 0606 0606 8f8f     ................
d0089ed8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089ee8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089ef8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089f08:	8f8f 8f8f 8f8f 068f 0605 0606 0606 0606     ................
d0089f18:	0606 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089f28:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089f38:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089f48:	8f8f 8f8f 8f8f 8f8f 8f8f 0506 0606 0606     ................
d0089f58:	0606 0606 6006 8f06 8f8f 8f8f 8f8f 8f8f     .....`..........
d0089f68:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089f78:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089f88:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 068f 0605     ................
d0089f98:	0606 0606 0606 0606 0606 0660 8f8f 8f8f     ..........`.....
d0089fa8:	8f8f 0505 0505 0505 0505 0505 8f8f 8f8f     ................
d0089fb8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089fc8:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0089fd8:	0606 0605 0606 0606 0606 0606 0606 0660     ..............`.
d0089fe8:	8f06 8f8f 0505 0501 0505 0505 0505 0505     ................
d0089ff8:	0505 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a008:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a018:	8f8f 068f 0506 0606 0606 0606 0606 0606     ................
d008a028:	0606 6006 8f06 0505 0101 0505 0505 0505     ...`............
d008a038:	0505 0505 0605 8f05 8f8f 8f8f 8f8f 8f8f     ................
d008a048:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a058:	8f8f 8f8f 8f8f 0606 0605 0606 0606 0606     ................
d008a068:	0606 0606 0606 6006 0505 0105 0505 0505     .......`........
d008a078:	0505 0505 0505 0505 0505 0506 8f8f 8f8f     ................
d008a088:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a098:	8f8f 8f8f 8f8f 8f8f 068f 0506 0606 0606     ................
d008a0a8:	0606 0606 0606 0606 0606 0505 0105 0501     ................
d008a0b8:	0505 0505 0505 0505 0505 0505 0505 0605     ................
d008a0c8:	0505 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d008a0d8:	8f8f 8f8f 8f8f 8f8f 0d8f 8f8f 0606 0605     ................
d008a0e8:	0606 0606 0606 0606 0606 0606 0505 050d     ................
d008a0f8:	0501 0505 0505 0505 0505 0505 0505 0505     ................
d008a108:	0505 0505 0506 8f05 8f8f 8f8f 8f8f 8f8f     ................
d008a118:	8f8f 8f8f 8f8f 8f8f 8f8f 8f0d 0d8f 068f     ................
d008a128:	0606 0606 0606 0606 0606 060d 0606 0506     ................
d008a138:	0505 050d 0d05 0505 0505 0505 050d 050d     ................
d008a148:	0505 0505 0505 0505 0605 0505 8f05 0d8f     ................
d008a158:	8f8f 8f8f 8f0d 8f0d 8f8f 8f8f 0d0d 0d0d     ................
d008a168:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a178:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a188:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a198:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d008a1a8:	0b0a 0d0a 0a0d 0a0a 0b0a 0b0a 0a0a 0a0a     ................
d008a1b8:	0a0a 0a0a 0a0a 680a 0a68 0b0b 0a0a 0a0a     .......hh.......
d008a1c8:	0b0a 0a0a 0a0a 680a 0a0a 0a0a 680a 6868     .......h.....hhh
d008a1d8:	0b0a 0b0b 0b0a 0a0a 0b0a 0a0a 0b0b 0a0b     ................
d008a1e8:	0b0b 0a0a 0a0a 0b0b 0a0a 0b0a 0a0b 0a0a     ................
d008a1f8:	0a0a 0a0a 0a0a 0a0b 0a0a 0a0a 0a0a 0a0a     ................
d008a208:	0a0a 0b0a 0a0a 0a0a 0a0a 0a0a 0a0a 0b0b     ................
d008a218:	0a0a 0a0a 0a0b 0a0a 0b0a 0a0a 0a0a 0a0a     ................
d008a228:	0a0a 0a0a 0a0a 0b0b 0b0a 0a0a 0b0a 0a0a     ................
d008a238:	0a0b 0a68 0a0a 0b0a 0b0b 0a0a 6868 0a0a     ..h.........hh..
d008a248:	0a0a 680a 0a68 0a0b 6868 0a68 0a0a 680a     ...hh...hhh....h
d008a258:	6868 0a0a 0a0a 0b0a 0a0a 0a0a 0a0a 0b0b     hh..............
d008a268:	0a0a 0a0a 0a0a 0a0a 0a0a 0b0a 0a0a 0a0a     ................
d008a278:	680b 6868 0a0a 0a0a 0a0a 6868 0a0a 0a0a     .hhh......hh....
d008a288:	0a0a 0b0a 0a0b 0a0a 0a0a 0a0a 0a0a 0a0a     ................
d008a298:	0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a     ................
d008a2a8:	0a0a 0a0a 0a0a 680a 6868 0b0b 0a0a 0a0a     .......hhh......
d008a2b8:	7559 7070 5420 6f6f 6874 6361 6568 6420     Yupp Toothache d
d008a2c8:	7365 746b 706f 4520 646e 6465 3a20 0029     esktop Ended :).

d008a2d8 <gradient_cols.9242>:
d008a2d8:	1010 1110 1211 1312 1413 1514 1615 1716     ................
d008a2e8:	1717 0000                                   ....

d008a2ec <txtTitle>:
d008a2ec:	6874 7369 6920 2073 2061 6574 7473 7320     this is a test s
d008a2fc:	7263 6c6f 796c 202c 6f73 656d 6874 6e69     crolly, somethin
d008a30c:	2067 6f74 7420 7365 2074 6f66 2072 6f6e     g to test for no
d008a31c:	2c77 6220 7475 7720 6c69 206c 616d 656b     w, but will make
d008a32c:	6920 2074 2061 696c 7474 656c 6220 7465      it a little bet
d008a33c:	6574 2072 6966 6c6c 2079 6574 7478 2079     ter filly texty 
d008a34c:	7473 6675 0066 0000 4353 524f 2045 3025     stuff...SCORE %0
d008a35c:	6c36 2075 2020 4853 5049 4c20 534f 2054     6lu   SHIP LOST 
d008a36c:	7525 0000                                   %u..

d008a370 <wave.9268>:
d008a370:	0300 0906 0f0c 1512 1917 1d1b 1f1e 2020     ..............  
d008a380:	2020 1e1f 1b1d 1719 1215 0c0f 0609 0003       ..............
d008a390:	fafd f4f7 eef1 e9eb e5e7 e2e3 e0e1 e0e0     ................
d008a3a0:	e1e0 e3e2 e7e5 ebe9 f1ee f7f4 fdfa 0300     ................

d008a3b0 <bub_background>:
	...
d008a3d4:	0000 fffe 0001 0000 0000 0000 0000 0fc0     ................
	...
d008a410:	8000 0003 001f 0000 0000 0000 0000 7820     .............. x
	...
d008a44c:	8000 ffc0 0070 0000 0000 0000 0000 6018     ....p..........`
	...
d008a488:	c000 81f8 0043 0000 0000 0000 0000 3004     ....C..........0
	...
d008a4c4:	4000 0700 00c6 0000 0000 0000 0000 1802     .@..............
	...
d008a500:	4000 0cfe 0086 0000 0000 0000 0000 1c02     .@..............
	...
d008a53c:	c000 0b83 0087 0000 0000 0000 0000 1e02     ................
d008a54c:	0000 0000 0700 0000 0000 0000 0000 0000     ................
	...
d008a578:	8000 9a00 0083 0000 0000 0000 0000 1e02     ................
d008a588:	0000 0000 0580 0000 0000 0000 0000 0000     ................
	...
d008a5a4:	0000 00c0 0000 0000 0000 0000 0000 0000     ................
d008a5b4:	0000 b200 0083 0000 0e00 0000 0000 1e02     ................
d008a5c4:	0000 0000 0ec0 0000 0000 1fc0 0000 0000     ................
	...
d008a5e0:	0000 0330 0000 0000 0000 0000 0000 0000     ..0.............
d008a5f0:	0000 e600 00c3 0000 1b00 0000 0000 3c04     ...............<
d008a600:	0000 0060 1a30 0000 0000 2060 0000 0000     ..`.0.....` ....
	...
d008a61c:	0000 0ccc 0000 0000 0000 0000 0000 0000     ................
d008a62c:	0000 e400 0061 ff80 1181 0000 0000 3c08     ....a..........<
d008a63c:	0000 007c 1718 0000 0000 4390 0000 0000     ..|........C....
	...
d008a658:	0000 0b72 0000 0000 0000 0000 0000 0000     ..r.............
d008a668:	0000 6400 0030 0070 3083 0000 0000 3808     ...d0.p..0.....8
d008a678:	01e0 007e 3706 0070 0000 86e8 0001 0000     ..~..7p.........
	...
d008a694:	8000 097d 0000 0000 0000 0000 01e0 0000     ..}.............
d008a6a4:	0000 0200 0018 0018 30c2 0000 0000 3810     .........0.....8
d008a6b4:	01fe c0ff 2f01 03fc 0000 8c26 0000 0000     ...../....&.....
d008a6c4:	0000 0000 0010 0000 0000 0000 6000 0cfe     .............`..
	...
d008a6dc:	0610 0000 0000 0200 000c 3c0c 3044 7f00     ...........<D0..
d008a6ec:	0300 7860 81ff 60ff 7f80 0fc7 0000 9c19     ..`x...`........
	...
d008a704:	0010 0000 0000 0000 2000 067f 0000 0000     ......... ......
d008a714:	0000 0000 04c8 0000 0000 0200 0004 4f04     ...............O
d008a724:	706c 7f80 0780 f080 e0ff 3fff df80 1f81     lp.........?....
d008a734:	0000 dc09 0000 0000 0000 4000 0310 0000     ...........@....
d008a744:	0000 0000 c000 073e 0000 0000 0000 0000     ......>.........
d008a754:	05a4 0000 0000 0100 000e c786 f038 ff80     ............8...
d008a764:	0fc0 f100 f8ff 3fff 3f80 1780 0000 4f09     .......?.?.....O
d008a774:	0000 0000 0000 8000 00d9 0000 0000 0000     ................
d008a784:	8000 0781 0000 0000 0000 0000 05d2 0000     ................
d008a794:	0000 0180 001e 81c2 f018 ffc0 0fe0 fe00     ................
d008a7a4:	ff7f 3fff 0700 17c0 0003 67d1 0000 0000     ...?.......g....
d008a7b4:	0000 0000 0067 0000 0000 0000 8000 0566     ....g.........f.
	...
d008a7cc:	0cf2 0380 0000 00f0 001e 40e2 e018 ffe1     ...........@....
d008a7dc:	1ff1 f800 ffff 3fff 0000 1fb0 0007 31e1     .......?.......1
d008a7ec:	0000 7c00 0000 0000 0181 0000 3c00 0000     ...|.........<..
d008a7fc:	0000 0399 0000 0000 0000 0000 3272 0c40     ............r2@.
d008a80c:	0000 00f8 003e 6072 c00c fffb 1ff8 fc00     ....>.r`........
d008a81c:	ffff 3fff 0000 3edc 0006 1001 0000 8380     ...?...>........
d008a82c:	0000 9c00 0f1c 0000 6300 0000 0000 03c1     .........c......
	...
d008a844:	6106 3020 0000 00fe 003f 3072 c006 7fff     .a 0....?.r0....
d008a854:	3ffe fe00 ffff 3fff 0000 ffb7 0107 18e6     .?.....?........
d008a864:	0000 3860 0001 7000 0334 0000 dd80 0000     ..`8...p4.......
d008a874:	0000 03c1 0000 0000 0000 0000 40e6 2710     .............@.'
d008a884:	0018 81ff 003f 18e2 0003 3fff 3fff ff00     ....?......?.?..
d008a894:	ffff 3fff c070 fffb 01c7 187c 0000 7f30     ...?p.....|...0.
d008a8a4:	0001 4000 038e 0000 d640 0000 0000 01c1     ...@....@.......
	...
d008a8bc:	401c 2d90 801f e1ff 007f 8786 0001 3ffe     .@.-...........?
d008a8cc:	3fff fff6 ffff ffff e3ff fffe 01e7 1840     .?............@.
d008a8dc:	0000 7110 0001 8000 01c0 0000 f340 0000     ...q........@...
d008a8ec:	8000 05e0 0000 0000 0008 0000 4f1a ee90     .............O..
d008a8fc:	e01f f3ff 007f c004 0000 ffff 3fff ffff     .............?..
d008a90c:	ffff ffff 3fff ffff 03ff 3020 0000 6090     .....?.... 0...`
d008a91c:	0001 0000 00e7 0000 7b40 0000 8000 07f0     ........@{......
d008a92c:	0000 0000 000e 0c00 71f0 fe88 f3ff ffff     .........q......
d008a93c:	007f 400c 801e ffff 3fff ffff ffff ffff     ...@.....?......
d008a94c:	ffff ffff 03ff e020 0000 6090 0001 0000     ...... ....`....
d008a95c:	0068 0000 ef40 001f c000 02f0 0000 9400     h...@...........
d008a96c:	000f 1c00 3020 ff18 ffff ffff 03ff 4038     .... 0........8@
d008a97c:	c03f ffff bfff ffff ffff ffff ffff ffff     ?...............
d008a98c:	00ff f81f 0003 31b0 0601 0000 0068 0000     .......1....h...
d008a99c:	0040 0030 4000 03f0 0000 fc00 019f 1a00     @.0..@..........
d008a9ac:	1e20 fffc ffff ffff 1fff 40e0 e03f ffff      ..........@?...
d008a9bc:	bfff ffff ffff ffff ffff ffff 80ff ff87     ................
d008a9cc:	0307 8f30 0581 0000 0048 0000 e480 0021     ..0.....H.....!.
d008a9dc:	2000 03f8 0000 fe00 01ff 3b00 1040 fffc     . .........;@...
d008a9ec:	ffff ffff 7fff ff80 ff3f ffff ffff ffff     ........?.......
d008a9fc:	ffff ffff ffff ffff fe3f ffff 03ff 8060     ........?.....`.
d008aa0c:	0670 0000 0048 0000 f300 0063 1004 0170     p...H.....c...p.
d008aa1c:	0000 fd80 01ff 7900 1140 ffe4 ffff ffff     .......y@.......
d008aa2c:	ffff ffe3 ffff ffff ffff ffff ffff ffff     ................
d008aa3c:	ffff ffff ffff ffff 07ff 1fc0 0b1d 0000     ................
d008aa4c:	00d0 0000 7900 0064 1816 01f0 0000 ffc0     .....yd.........
d008aa5c:	43ff fc80 0bc0 ffc2 ffff ffff ffff ffff     .C..............
d008aa6c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008aa7c:	ffff ffff 1fff 0f98 0b87 0000 00d0 0000     ................
d008aa8c:	1c80 8874 0817 c0f0 00ef ffe0 63ff f880     ..t..........c..
d008aa9c:	0ec1 fff2 ffff ffff ffff ffff ffff ffff     ................
d008aaac:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008aabc:	3fff 8c24 edc3 0000 0090 0000 0c80 8c74     .?$...........t.
d008aacc:	042f f0f1 ffff ffff ffff fe40 0e63 fff6     /.........@.c...
d008aadc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008aaec:	ffff ffff ffff ffff ffff ffff 7fff 4c66     ..............fL
d008aafc:	9fc0 0003 0090 0000 0640 ef76 866f fff0     ........@.v.o...
d008ab0c:	ffff ffff ffff fff0 043f fffe ffff ffff     ........?.......
d008ab1c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ab2c:	ffff ffff ffff ffff ffff 7fe1 83c0 000f     ................
d008ab3c:	01a0 0000 0638 ff3b 43e7 fff7 ffff ffff     ....8.;..C......
d008ab4c:	ffff ffff 841f ffff ffff ffff ffff ffff     ................
d008ab5c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ab6c:	ffff ffff ffff 0ffc c0e0 000f 01a0 0000     ................
d008ab7c:	863c ff9d c1f3 ffff ffff ffff ffff ffff     <...............
d008ab8c:	ff8f ffff ffff ffff ffff ffff ffff ffff     ................
d008ab9c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008abac:	ffff ffff f000 000f 0120 0000 6604 ffee     ........ ....f..
d008abbc:	e037 ffff ffff ffff ffff ffff fff0 ffff     7...............
d008abcc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008abdc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008abec:	fc3f 000f 0140 8e00 3c07 ffff edbf ffff     ?...@....<......
d008abfc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ac0c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ac1c:	ffff ffff ffff ffff ffff ffff feff 0003     ................
d008ac2c:	0340 8f00 c001 ffff ffdf ffff ffff ffff     @...............
d008ac3c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ac4c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ac5c:	ffff ffff ffff ffff ffff 0007 0340 7ff0     ............@...
d008ac6c:	ff70 ffff ffff ffff ffff ffff ffff ffff     p...............
d008ac7c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ac8c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ac9c:	ffff ffff ffff ffff 0341 fff0 fff7 ffff     ........A.......
d008acac:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008acbc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008accc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008acdc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008acec:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008acfc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d008ad0c:	ffff ffff                                   ....

d008ad10 <scr_bub_floor>:
	...
d008adb4:	1010 1010 1000 1010 1010 0000 0000 0000     ................
	...
d008add4:	1010 1010 1000 1010 1010 0000 0000 0000     ................
	...
d008aecc:	0000 1000 6060 1060 1010 6060 6060 0010     ....```...````..
d008aedc:	0000 1000 1010 1010 0000 0000 0000 0000     ................
d008aeec:	0000 1000 6060 1060 1010 6060 6060 0010     ....```...````..
d008aefc:	0000 1000 1010 1010 0000 0000 0000 0000     ................
	...
d008afe4:	0000 1010 0010 6010 6060 6060 6010 6060     .......`````.```
d008aff4:	6060 1060 0010 1010 6060 6060 0010 0000     ```.....````....
d008b004:	0000 0000 0000 6010 6060 6060 6010 6060     .......`````.```
d008b014:	6060 1060 0010 1010 6060 6060 0010 0000     ```.....````....
	...
d008b0d0:	1010 1010 0000 1010 1010 0010 0000 0000     ................
	...
d008b100:	1000 6060 1060 6010 6060 6060 6060 6060     ..```..`````````
d008b110:	6060 6060 1010 6010 6060 6060 1060 0000     ````...``````...
d008b120:	0000 0000 0000 6010 6060 6060 6060 6060     .......`````````
d008b130:	6060 6060 1010 6010 6060 6060 1060 0000     ````...``````...
	...
d008b148:	1010 1010 0000 0000 0000 0000 0000 0000     ................
	...
d008b1e8:	0000 1000 6060 6060 1010 6060 6060 1010     ....````..````..
	...
d008b21c:	6010 6060 1060 1010 6060 6060 6060 6060     .````...````````
d008b22c:	6060 1060 6060 6010 6060 6060 1060 0000     ```.``.``````...
d008b23c:	0000 0000 0000 1010 6060 6060 6060 6060     ........````````
d008b24c:	6060 1060 6060 6010 6060 6060 1060 0000     ```.``.``````...
d008b25c:	0000 0000 0000 1010 6060 6060 0010 0000     ........````....
	...
d008b304:	0000 6010 6060 6060 6060 6060 6060 1060     ...````````````.
d008b314:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008b334:	0000 1000 6010 6060 6060 6060 6010 6060     .....```````.```
d008b344:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d008b354:	6060 0010 1000 1010 1010 6060 6010 6060     ``........``.```
d008b364:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d008b374:	6060 0010 1000 1010 1010 6060 6060 6060     ``........``````
d008b384:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d008b420:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d008b430:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d008b450:	0000 6010 1060 6060 6060 6060 6060 6060     ...``.``````````
d008b460:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d008b470:	6060 0010 6010 6060 6060 6060 6060 6060     ``...```````````
d008b480:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d008b490:	6060 0010 6010 6060 6060 6060 6060 6060     ``...```````````
d008b4a0:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d008b53c:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d008b54c:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d008b56c:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d008b57c:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d008b58c:	6060 1010 6060 6060 6060 6060 6060 6060     ``..````````````
d008b59c:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d008b5ac:	6060 1010 6060 6060 6060 6060 6060 6060     ``..````````````
d008b5bc:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d008b658:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d008b668:	1060 1000 1010 1010 0000 0000 0000 0000     `...............
	...
d008b684:	1010 1010 0010 6010 6060 6060 6060 6060     .......`````````
d008b694:	6060 6060 6060 6060 6060 1060 6010 6060     ```````````..```
d008b6a4:	6060 6060 6060 1060 6060 6060 6060 6060     ```````.````````
d008b6b4:	6060 6060 6060 6060 6060 1060 6010 6060     ```````````..```
d008b6c4:	6060 6060 6060 1060 6060 6060 6060 6060     ```````.````````
d008b6d4:	6060 6060 1060 0000 0000 0000 0000 0000     `````...........
	...
d008b774:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d008b784:	1010 6010 6060 1060 0000 0000 0000 0000     ...````.........
	...
d008b7a0:	6010 6060 1060 1010 6060 6060 6060 6060     .````...````````
d008b7b0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008b7c0:	6060 6060 6060 1010 6010 6060 6060 6060     ``````...```````
d008b7d0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008b7e0:	6060 6060 6060 1010 6010 6060 6060 6060     ``````...```````
d008b7f0:	6060 6060 1060 0000 0000 0000 0000 0000     `````...........
	...
d008b890:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d008b8a0:	6010 6060 6060 1060 0000 0000 0000 0000     .``````.........
	...
d008b8bc:	6010 6060 6060 6060 6060 6060 6060 6060     .```````````````
d008b8cc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008b8dc:	6060 6060 1060 6010 6060 6060 6060 6060     `````..`````````
d008b8ec:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008b8fc:	6060 6060 1060 6010 6060 6060 6060 6060     `````..`````````
d008b90c:	6060 6060 1060 0000 0000 0000 0000 0000     `````...........
	...
d008b9a8:	1000 1010 0010 4c10 6060 6060 6060 6060     .......L````````
d008b9b8:	6060 6060 6060 6060 6060 1010 0000 0000     ``````````......
	...
d008b9d8:	1010 6060 6060 6060 6060 6060 6060 6060     ..``````````````
d008b9e8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008b9f8:	6060 6060 1060 6060 6060 6060 6060 6060     `````.``````````
d008ba08:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008ba18:	6060 6060 1060 6060 6060 6060 6060 6060     `````.``````````
d008ba28:	6060 6060 104c 1000 1010 0010 0000 0000     ````L...........
	...
d008bac4:	6010 6060 1010 1010 1010 6060 6060 6060     .```......``````
d008bad4:	6060 6060 6060 6060 6060 6060 0010 0000     ````````````....
	...
d008baf0:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d008bb00:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bb10:	6060 6060 6060 6060 6010 6060 6060 6060     ````````.```````
d008bb20:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bb30:	6060 6060 6060 6060 6010 6060 6060 6060     ````````.```````
d008bb40:	6060 6060 6060 1060 1010 1010 6060 1060     ```````.....```.
	...
d008bbdc:	0000 1000 6060 6060 6060 6060 1060 6060     ....`````````.``
d008bbec:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bbfc:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d008bc0c:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d008bc1c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bc2c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bc3c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bc4c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bc5c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bc6c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008bcf8:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d008bd08:	6060 6060 6060 6060 6060 6060 6060 1060     ```````````````.
	...
d008bd2c:	6010 6060 6060 6060 6060 6060 6060 6060     .```````````````
d008bd3c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bd4c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bd5c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bd6c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bd7c:	6060 6060 6060 6060 6060 6060 0010 0000     ````````````....
	...
d008be18:	6010 6060 6060 6060 6060 6060 6060 6060     .```````````````
d008be28:	6060 6060 1060 6060 6060 6060 0010 0000     `````.``````....
	...
d008be44:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d008be54:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008be64:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008be74:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008be84:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008be94:	6060 6060 6060 6060 6060 6060 6060 1060     ```````````````.
	...
d008bf30:	0000 1000 6010 6060 6060 6060 6010 6060     .....```````.```
d008bf40:	6060 1060 6060 6060 6060 6060 6060 1060     ```.```````````.
d008bf50:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d008bf60:	1010 1000 6010 6060 6060 6060 6060 6060     .....```````````
d008bf70:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bf80:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bf90:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bfa0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008bfb0:	6060 6060 6060 6060 6060 6060 6060 1060     ```````````````.
d008bfc0:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008c048:	0000 1010 1010 6010 1060 6060 6060 6060     .......``.``````
d008c058:	6010 6060 6060 6060 6010 6060 6060 6060     .```````.```````
d008c068:	6060 6010 1060 0010 1010 0010 0000 0000     ``.``...........
d008c078:	0000 1000 6010 6010 1060 6060 6060 6060     .....`.``.``````
d008c088:	6060 6060 6060 6060 6060 4c60 6060 6060     ```````````L````
d008c098:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c0a8:	6060 6060 6060 6060 6060 4c60 6060 6060     ```````````L````
d008c0b8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c0c8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c0d8:	6060 6010 1060 1010 1010 0000 0000 0000     ``.``...........
	...
d008c164:	1000 6060 6060 6010 6060 6060 6060 6060     ..````.`````````
d008c174:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c184:	6060 6060 1060 1010 6060 1060 0000 1010     `````...```.....
d008c194:	0010 6010 6060 6010 6060 6060 6060 6060     ...```.`````````
d008c1a4:	6060 6060 6060 6060 6060 4c60 604c 6060     ```````````LL```
d008c1b4:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c1c4:	6060 6060 6060 6060 6060 4c60 604c 6060     ```````````LL```
d008c1d4:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c1e4:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c1f4:	6060 6060 1060 6060 6060 0010 0000 0000     `````.````......
	...
d008c27c:	0000 1010 6010 6060 6060 6010 6060 6060     .....`````.`````
d008c28c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c29c:	6060 6060 6060 6060 1060 6060 6060 6060     `````````.``````
d008c2ac:	1010 6060 1060 6010 6060 6010 6060 6060     ..```..```.`````
d008c2bc:	6060 6060 6060 6060 6060 6060 6060 4c60     ```````````````L
d008c2cc:	4c4c 6060 6060 6060 6060 6060 6060 4c60     LL`````````````L
d008c2dc:	6060 6060 6060 6060 6060 6060 6060 4c60     ```````````````L
d008c2ec:	4c4c 6060 6060 6060 6060 6060 6060 4c60     LL`````````````L
d008c2fc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c30c:	6060 6060 6060 6060 1060 6060 6060 1060     `````````.`````.
d008c31c:	1010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008c398:	1010 6060 6010 6060 6060 6060 6060 6060     ..``.```````````
d008c3a8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c3b8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c3c8:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d008c3d8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c3e8:	4c4c 604c 6060 6060 6060 6060 6060 4c4c     LLL```````````LL
d008c3f8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c408:	4c4c 604c 6060 6060 6060 6060 6060 4c4c     LLL```````````LL
d008c418:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c428:	6060 6060 6060 6060 6060 6060 6060 1060     ```````````````.
d008c438:	6060 1010 0000 0000 0000 0000 0000 0000     ``..............
	...
d008c4b0:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d008c4c0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c4d0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c4e0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c4f0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c500:	6060 6060 4c4c 4c4c 604c 6060 6060 6060     ````LLLLL```````
d008c510:	4c60 604c 6060 6060 6060 6060 6060 6060     `LL`````````````
d008c520:	6060 6060 4c4c 4c4c 604c 6060 6060 6060     ````LLLLL```````
d008c530:	4c60 604c 6060 6060 6060 6060 6060 6060     `LL`````````````
d008c540:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c550:	6060 6060 6060 6060 0010 0000 0000 0000     ````````........
	...
d008c5cc:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d008c5dc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c5ec:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c5fc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c60c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c61c:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d008c62c:	4c4c 604c 6060 6060 6060 6060 6060 6060     LLL`````````````
d008c63c:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d008c64c:	4c4c 604c 6060 6060 6060 6060 6060 6060     LLL`````````````
d008c65c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c66c:	6060 6060 6060 6060 1060 0000 0000 0000     `````````.......
	...
d008c6e8:	1010 4c10 6060 6060 6060 6060 6060 6060     ...L````````````
d008c6f8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c708:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c718:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c728:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c738:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d008c748:	4c4c 604c 6060 6060 6060 6060 6060 6060     LLL`````````````
d008c758:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d008c768:	4c4c 604c 6060 6060 6060 6060 6060 6060     LLL`````````````
d008c778:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c788:	6060 6060 6060 6060 104c 1010 0000 0000     ````````L.......
	...
d008c800:	0000 1010 604c 6060 6060 6060 6060 6060     ....L```````````
d008c810:	6060 6060 6060 6060 6060 6060 6060 4c60     ```````````````L
d008c820:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c830:	6060 6060 6060 604c 6060 6060 6060 6060     ``````L`````````
d008c840:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c850:	6060 6060 6060 4c4c 4c4c 4c4c 4c4c 4c4c     ``````LLLLLLLLLL
d008c860:	4c4c 4c4c 4c4c 4c4c 604c 6060 6060 6060     LLLLLLLLL```````
d008c870:	6060 6060 6060 4c4c 4c4c 4c4c 4c4c 4c4c     ``````LLLLLLLLLL
d008c880:	4c4c 4c4c 4c4c 4c4c 604c 6060 6060 6060     LLLLLLLLL```````
d008c890:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008c8a0:	6060 6060 6060 6060 6060 1060 6060 4c60     ```````````.```L
d008c8b0:	1010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008c91c:	1000 604c 6060 6060 6060 6060 6060 6060     ..L`````````````
d008c92c:	6060 6060 6060 6060 6060 6060 6060 4c60     ```````````````L
d008c93c:	6060 6060 6060 4c60 4c4c 604c 6060 6060     ```````LLLL`````
d008c94c:	6060 6060 6060 4c4c 604c 6060 6060 6060     ``````LLL```````
d008c95c:	6060 6060 6060 6060 6060 6060 4c4c 6060     ````````````LL``
d008c96c:	6060 6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c     `````LLLLLLLLLLL
d008c97c:	4c4c 4c4c 4c4c 4c4c 4c4c 604c 6060 6060     LLLLLLLLLLL`````
d008c98c:	6060 6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c     `````LLLLLLLLLLL
d008c99c:	4c4c 4c4c 4c4c 4c4c 4c4c 604c 6060 6060     LLLLLLLLLLL`````
d008c9ac:	6060 6060 6060 4c4c 6060 6060 6060 6060     ``````LL````````
d008c9bc:	6060 6060 6060 6060 6060 6010 6060 6060     ``````````.`````
d008c9cc:	104c 0000 0000 0000 0000 0000 0000 0000     L...............
	...
d008c9f4:	1010 1010 1010 1010 0010 0000 0000 0000     ................
	...
d008ca38:	1000 6060 6060 6060 6060 6060 6060 6060     ..``````````````
d008ca48:	6060 6060 6060 6060 6060 4c60 4c4c 4c4c     ```````````LLLLL
d008ca58:	4c4c 4c4c 4c60 4c4c 4c4c 4c4c 604c 6060     LLLL`LLLLLLLL```
d008ca68:	6060 6060 6060 4c4c 4c4c 6060 6060 6060     ``````LLLL``````
d008ca78:	6060 6060 6060 6060 6060 4c60 4c4c 4c4c     ```````````LLLLL
d008ca88:	604c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     L`LLLLLLLLLLLLLL
d008ca98:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 6060     LLLLLLLLLLLLLL``
d008caa8:	6060 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ``LLLLLLLLLLLLLL
d008cab8:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 6060     LLLLLLLLLLLLLL``
d008cac8:	6060 4c60 4c4c 4c4c 604c 6060 6060 6060     ```LLLLLL```````
d008cad8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d008cae8:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d008cb0c:	1000 1010 7070 7070 7070 7070 1070 1010     ....ppppppppp...
	...
d008cb54:	1000 6060 6060 6060 6060 6060 6060 6060     ..``````````````
d008cb64:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d008cb74:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cb84:	604c 6060 4c4c 4c4c 4c4c 6060 6060 6060     L```LLLLLL``````
d008cb94:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d008cba4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cbb4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cbc4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cbd4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cbe4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cbf4:	604c 6060 6060 6060 6060 6060 6060 6060     L```````````````
d008cc04:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d008cc28:	7010 7070 7070 7070 7070 7070 7070 7070     .ppppppppppppppp
d008cc38:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008cc48:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008cc58:	1010 1010 0000 0000 0000 0000 0000 0000     ................
d008cc68:	0000 0000 1000 1010 6010 6060 6060 6060     .........```````
d008cc78:	6060 6060 6060 4c60 4c4c 4c4c 104c 4c10     ```````LLLLLL..L
d008cc88:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cc98:	4c4c 4c4c 104c 4c10 4c4c 4c60 4c4c 4c4c     LLLLL..LLL`LLLLL
d008cca8:	4c4c 6060 4c60 604c 4c60 4c4c 104c 4c10     LL```LL``LLLL..L
d008ccb8:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ccc8:	4c4c 4c4c 4c4c 4c10 4c4c 4c4c 4c4c 4c4c     LLLLLL.LLLLLLLLL
d008ccd8:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cce8:	4c4c 4c4c 4c4c 4c10 4c4c 4c4c 4c4c 4c4c     LLLLLL.LLLLLLLLL
d008ccf8:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cd08:	4c4c 4c4c 104c 4c10 4c4c 4c4c 604c 6060     LLLLL..LLLLLL```
d008cd18:	4c60 6060 6060 4c4c 104c 0000 0000 0000     `L````LLL.......
	...
d008cd3c:	1010 1010 1010 1010 7070 7070 7070 7070     ........pppppppp
d008cd4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008cd5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008cd6c:	7070 7070 7070 7070 7070 7070 1010 1010     pppppppppppp....
d008cd7c:	1010 1010 1010 1010 1010 1010 7010 7070     .............ppp
d008cd8c:	6010 6060 6060 6060 6060 6060 4c60 104c     .````````````LL.
d008cd9c:	4c4c 4c4c 4c4c 1010 4c10 4c4c 4c4c 4c4c     LLLLLL...LLLLLLL
d008cdac:	104c 1010 1010 1010 4c4c 104c 1010 4c4c     L.......LLL...LL
d008cdbc:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cdcc:	4c4c 4c4c 4c4c 1010 4c10 4c4c 4c4c 4c4c     LLLLLL...LLLLLLL
d008cddc:	4c4c 4c4c 4c4c 4c4c 4c4c 104c 1010 1020     LLLLLLLLLLL... .
d008cdec:	4c4c 4c4c 4c4c 4c4c 1010 4c4c 4c4c 4c4c     LLLLLLLL..LLLLLL
d008cdfc:	4c4c 4c4c 4c4c 4c4c 4c4c 104c 1010 1020     LLLLLLLLLLL... .
d008ce0c:	4c4c 4c4c 4c4c 4c4c 1010 4c4c 4c4c 4c4c     LLLLLLLL..LLLLLL
d008ce1c:	4c4c 4c4c 4c4c 4c4c 4c4c 104c 1010 4c4c     LLLLLLLLLLL...LL
d008ce2c:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ce3c:	7010 1010 1010 1010 1010 1010 1010 1010     .p..............
d008ce4c:	1010 1010 1010 1010 1010 1010 7070 7070     ............pppp
d008ce5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ce6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ce7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ce8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ce9c:	7070 7070 7070 7070 7070 7070 1070 1010     ppppppppppppp...
d008ceac:	4c4c 4c4c 4c4c 4c4c 4c4c 104c 4c4c 4c4c     LLLLLLLLLLL.LLLL
d008cebc:	4c4c 104c 1010 1010 1010 1010 7010 7070     LLL..........ppp
d008cecc:	7070 7070 1010 1010 4c10 4c4c 4c4c 104c     pppp.....LLLLLL.
d008cedc:	4c10 4c4c 4c4c 4c4c 4c4c 1010 4c4c 4c4c     .LLLLLLLLL..LLLL
d008ceec:	4c4c 104c 1010 1010 4c4c 4c4c 4c4c 4c4c     LLL.....LLLLLLLL
d008cefc:	4c4c 4c4c 1010 1010 2810 2828 1010 4c4c     LLLL.....(((..LL
d008cf0c:	4c4c 104c 1010 4c10 4c4c 4c4c 4c4c 4c4c     LLL....LLLLLLLLL
d008cf1c:	4c4c 4c4c 1010 1010 2810 2828 1010 4c4c     LLLL.....(((..LL
d008cf2c:	4c4c 104c 1010 4c10 4c4c 4c4c 4c4c 4c4c     LLL....LLLLLLLLL
d008cf3c:	4c4c 4c4c 1010 1010 4c10 4c4c 4c4c 4c4c     LLLL.....LLLLLLL
d008cf4c:	4c4c 1010 4c4c 4c4c 4c4c 104c 7070 7070     LL..LLLLLLL.pppp
d008cf5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008cf6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008cf7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008cf8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008cf9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008cfac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008cfbc:	7070 7070 7070 7070 7070 7070 1010 1010     pppppppppppp....
d008cfcc:	4c4c 1010 1010 1010 1010 1010 1010 1010     LL..............
d008cfdc:	2810 7070 7070 7070 7070 7070 7070 7070     .(pppppppppppppp
d008cfec:	7070 1028 1010 1010 1010 7010 1070 1010     pp(........pp...
d008cffc:	1010 1010 1010 1070 1010 1010 1010 1010     ......p.........
d008d00c:	2810 1070 1010 1010 1010 1010 1010 1010     .(p.............
d008d01c:	2810 7028 7070 7070 1070 1010 1010 1010     .((pppppp.......
d008d02c:	7028 1020 1010 1010 1010 1010 1010 1010     (p .............
d008d03c:	2810 7028 7070 7070 1070 1010 1010 1010     .((pppppp.......
d008d04c:	7028 1020 1010 1010 1010 1010 1010 1010     (p .............
d008d05c:	7010 1028 1010 1010 1010 1010 1010 1010     .p(.............
d008d06c:	1010 1010 1010 7010 7070 7070 7070 7070     .......ppppppppp
d008d07c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d08c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d09c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d0ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d0bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d0cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d0dc:	7070 7070 7070 7070 7070 7070 1010 7070     pppppppppppp..pp
d008d0ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d0fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d10c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d11c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d12c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d13c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d14c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d15c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d16c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d17c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d18c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d19c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d1ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d1bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d1cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d1dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d1ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d1fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d20c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d21c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d22c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d23c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d24c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d25c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d26c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d27c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d28c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d29c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d2ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d2bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d2cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d2dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d2ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d2fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d30c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d31c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d32c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d33c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d34c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d35c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d36c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d37c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d38c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d39c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d3ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d3bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d3cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d3dc:	2870 7070 7070 7070 7070 7070 7070 7070     p(pppppppppppppp
d008d3ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d3fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d40c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d41c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d42c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d43c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d44c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d45c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d46c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d47c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d48c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d49c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d4ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d4bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d4cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d4dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d4ec:	7070 7070 7070 7070 7070 7070 2028 7070     pppppppppppp( pp
d008d4fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d50c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d51c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d52c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d53c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d54c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d55c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d56c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d57c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d58c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d59c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d5ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d5bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d5cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d5dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d5ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d5fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d60c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d61c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d62c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d63c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d64c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d65c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d66c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d67c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d68c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d69c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d6ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d6bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d6cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d6dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d6ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d6fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d70c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d71c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d72c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d73c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d74c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d75c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d76c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d77c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d78c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d79c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d7ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d7bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d7cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d7dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d7ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d7fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d80c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d81c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d82c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d83c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d84c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d85c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d86c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d87c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d88c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d89c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d8ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d8bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d8cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d8dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d8ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d8fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d90c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d91c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d92c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d93c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d94c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d95c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d96c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d97c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d98c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d99c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d9ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d9bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d9cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d9dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d9ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008d9fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da0c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da1c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da2c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da3c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008da9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008daac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dabc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dacc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dadc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008daec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dafc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db0c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db1c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db2c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db3c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008db9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dbac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dbbc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dbcc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dbdc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dbec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dbfc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc0c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc1c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc2c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc3c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dc9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dcac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dcbc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dccc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dcdc:	7070 7070 7070 7070 7070 7070 2870 7070     ppppppppppppp(pp
d008dcec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dcfc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd0c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd1c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd2c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd3c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dd8c:	7070 7070 7070 7070 7070 7070 2870 7070     ppppppppppppp(pp
d008dd9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ddac:	7070 7070 7070 7070 7070 7070 2870 7070     ppppppppppppp(pp
d008ddbc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ddcc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dddc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ddec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ddfc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de0c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de1c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de2c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de3c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008de9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008deac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008debc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008decc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dedc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008deec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008defc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df0c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df1c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df2c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df3c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008df9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dfac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dfbc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dfcc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dfdc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dfec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008dffc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e00c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e01c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e02c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e03c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e04c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e05c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e06c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e07c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e08c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e09c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e0ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e0bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e0cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e0dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e0ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e0fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e10c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e11c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e12c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e13c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e14c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e15c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e16c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e17c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e18c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e19c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e1ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e1bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e1cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e1dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e1ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e1fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e20c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e21c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e22c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e23c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e24c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e25c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e26c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e27c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e28c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e29c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e2ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e2bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e2cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e2dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e2ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e2fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e30c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e31c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e32c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e33c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e34c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e35c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e36c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e37c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e38c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e39c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e3ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e3bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e3cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e3dc:	7070 7070 7070 7070 7070 7070 1010 1010     pppppppppppp....
d008e3ec:	1010 1010 7010 7070 7070 7070 7070 7070     .....ppppppppppp
d008e3fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e40c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e41c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e42c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e43c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e44c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e45c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e46c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e47c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e48c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e49c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e4ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e4bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e4cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e4dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e4ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e4fc:	7070 7070 7070 7070 1070 2010 2020 1020     ppppppppp..    .
d008e50c:	7070 7070 7070 1010 1010 1010 1010 1010     pppppp..........
d008e51c:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008e52c:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008e53c:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008e54c:	1010 1010 1010 1010 1010 1010 7070 7070     ............pppp
d008e55c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e56c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e57c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e58c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e59c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e5ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e5bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e5cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e5dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e5ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e5fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e60c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e61c:	7070 7070 7070 2010 2020 1020 1010 1010     pppppp.    .....
d008e62c:	1010 2828 2828 2828 2828 2828 2828 2828     ..((((((((((((((
d008e63c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e64c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e65c:	2828 2828 2828 2828 2828 2828 2020 2020     ((((((((((((    
d008e66c:	2020 1020 1010 7070 7070 7070 7070 7070        ...pppppppppp
d008e67c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e68c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e69c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e6ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e6bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e6cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e6dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e6ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e6fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e70c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e71c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e72c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e73c:	7070 1070 2020 1020 2828 2828 2828 2828     ppp.   .((((((((
d008e74c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e75c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e76c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e77c:	2828 2828 2828 2828 2828 2820 2020 2020     (((((((((( (    
d008e78c:	1020 1010 7010 7070 7070 7070 7070 7070      ....ppppppppppp
d008e79c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e7ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e7bc:	2070 7010 7070 7070 7070 7070 7070 7070     p .ppppppppppppp
d008e7cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e7dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e7ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e7fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e80c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e81c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e82c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e83c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e84c:	7070 7070 7070 7070 7070 7070 1070 1010     ppppppppppppp...
d008e85c:	2020 1020 2820 2828 2828 2828 2828 2828        . (((((((((((
d008e86c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e87c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e88c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e89c:	2828 2828 2828 2028 2028 2028 2020 1010     ((((((( ( (   ..
d008e8ac:	1010 1010 7070 7070 7070 7070 7070 7070     ....pppppppppppp
d008e8bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e8cc:	7070 7070 7070 7070 7070 7070 1010 7020     pppppppppppp.. p
d008e8dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e8ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e8fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e90c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e91c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e92c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e93c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e94c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e95c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e96c:	7070 7070 7070 1010 2010 1020 2020 1020     pppppp...  .   .
d008e97c:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d008e98c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e99c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e9ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008e9bc:	2828 2828 2028 2820 2820 1020 2010 2020     (((((  ( ( ..   
d008e9cc:	1010 1010 7070 7070 7070 7070 7070 7070     ....pppppppppppp
d008e9dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008e9ec:	7070 7070 7070 2070 2010 7070 7070 7070     ppppppp . pppppp
d008e9fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ea0c:	7070 7070 7070 7070 7010 7070 7070 7070     pppppppp.ppppppp
d008ea1c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ea2c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ea3c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ea4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ea5c:	7070 7070 7070 7070 7070 7070 7070 1070     ppppppppppppppp.
d008ea6c:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008ea7c:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008ea8c:	1010 2820 2828 2010 2020 2020 2010 2828     .. (((.     . ((
d008ea9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008eaac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008eabc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008eacc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008eadc:	2828 2028 2028 2028 2010 2820 2020 2020     ((( ( ( .  (    
d008eaec:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008eafc:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008eb0c:	1010 1020 2010 1010 1010 1010 1010 1010     .. .. ..........
d008eb1c:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008eb2c:	1010 1010 1028 1010 7070 7070 7070 7070     ....(...pppppppp
d008eb3c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008eb4c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008eb5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008eb6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008eb7c:	7070 7070 7070 1010 1010 2810 2828 2828     pppppp.....(((((
d008eb8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008eb9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ebac:	1028 7028 7070 7070 2010 2828 2828 2828     (.(ppppp. ((((((
d008ebbc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ebcc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ebdc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ebec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ebfc:	2828 2820 1020 2820 2028 2020 2020 2020     (( ( . ((       
d008ec0c:	2020 2820 2828 2828 2828 2828 2828 2828        (((((((((((((
d008ec1c:	2828 2828 2828 2828 2828 2828 2828 1020     (((((((((((((( .
d008ec2c:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d008ec3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ec4c:	2028 2020 1010 1010 7010 7070 7070 7070     (   .....ppppppp
d008ec5c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ec6c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ec7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ec8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ec9c:	1010 2010 2820 2828 2828 2828 2828 2828     ...  (((((((((((
d008ecac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ecbc:	2828 2828 2828 2828 2828 2828 1028 7070     (((((((((((((.pp
d008eccc:	7070 2870 2020 2820 2828 2828 2828 2828     ppp(   (((((((((
d008ecdc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ecec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ecfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ed0c:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d008ed1c:	2028 2810 2828 2020 2028 2028 2028 2828     ( .(((  ( ( ( ((
d008ed2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ed3c:	2828 2828 2828 2828 2828 2028 1010 2828     ((((((((((( ..((
d008ed4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ed5c:	2828 2828 2828 2828 2828 2828 2828 2020     ((((((((((((((  
d008ed6c:	2020 2020 1020 7010 7070 7070 7070 7070          ..ppppppppp
d008ed7c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ed8c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008ed9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008edac:	7070 7070 7070 7070 7070 1010 1020 2020     pppppppppp.. .  
d008edbc:	2820 2820 2828 2828 2828 2828 2828 2828      ( (((((((((((((
d008edcc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008eddc:	2828 2828 2828 2828 1028 7070 7070 7070     (((((((((.pppppp
d008edec:	7070 2070 2828 2828 2828 2828 2828 2828     ppp ((((((((((((
d008edfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ee0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ee1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ee2c:	2828 2828 2828 2828 2828 2828 2028 1020     (((((((((((((  .
d008ee3c:	2828 2828 2820 2828 2820 2828 2828 2828     (((( ((( (((((((
d008ee4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ee5c:	2828 2828 2828 2820 1020 2820 2828 2828     (((((( ( . (((((
d008ee6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ee7c:	2828 2828 2828 2828 2828 2828 2020 2020     ((((((((((((    
d008ee8c:	2020 7010 7070 7070 7070 7070 7070 7070       .ppppppppppppp
d008ee9c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008eeac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008eebc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008eecc:	7070 7070 7070 1010 2010 2020 2020 2820     pppppp...      (
d008eedc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008eeec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008eefc:	2828 2828 1028 1010 7070 7070 7070 2020     (((((...pppppp  
d008ef0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ef1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ef2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ef3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ef4c:	2828 2828 2828 2828 2828 2028 2820 2828     (((((((((((  (((
d008ef5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ef6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ef7c:	2828 2828 1020 2828 2828 2828 2828 2828     (((( .((((((((((
d008ef8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ef9c:	2828 2828 2828 2828 2828 2028 2020 7010     (((((((((((   .p
d008efac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008efbc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008efcc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008efdc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008efec:	7070 7070 2010 2020 2020 2020 2820 2828     pppp.        (((
d008effc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f00c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f01c:	2028 2020 2020 2020 2828 2810 2828 2828     (       ((.(((((
d008f02c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f03c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f04c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f05c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f06c:	2828 2828 2828 2828 2820 2828 2828 2828     (((((((( (((((((
d008f07c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f08c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f09c:	2028 2820 2828 2828 2828 2828 2828 2828     (  (((((((((((((
d008f0ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f0bc:	2828 2828 2828 2028 1020 7070 7070 7070     (((((((  .pppppp
d008f0cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f0dc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f0ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f0fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f10c:	7070 2010 2020 2020 2020 2028 2828 2828     pp.       ( ((((
d008f11c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f12c:	2828 2828 2828 2828 2828 2828 2028 2028     ((((((((((((( ( 
d008f13c:	2820 2828 1028 2820 2828 2828 2828 2828      ((((. (((((((((
d008f14c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f15c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f16c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f17c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f18c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f19c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f1ac:	2828 2828 2828 2828 2828 2828 2028 2828     ((((((((((((( ((
d008f1bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f1cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f1dc:	2828 2028 7010 7070 7070 7070 7070 7070     ((( .ppppppppppp
d008f1ec:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f1fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f20c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f21c:	7070 7070 7070 7070 7070 7070 7070 1070     ppppppppppppppp.
d008f22c:	2010 2020 2020 2020 2820 2820 2828 2828     .        ( (((((
d008f23c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f24c:	2828 2828 2828 2828 2828 2820 2828 2828     (((((((((( (((((
d008f25c:	2010 2828 2828 2828 2828 2828 2828 2828     . ((((((((((((((
d008f26c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f27c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f28c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f29c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f2ac:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d008f2bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f2cc:	2828 2828 2828 2828 2828 2820 2828 2828     (((((((((( (((((
d008f2dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f2ec:	2828 2828 2828 2828 2828 2828 2828 1020     (((((((((((((( .
d008f2fc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f30c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f31c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f32c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f33c:	7070 7070 7070 7070 7070 7070 1070 2010     ppppppppppppp.. 
d008f34c:	2020 2020 2020 2028 2028 2828 2828 2828           ( ( ((((((
d008f35c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f36c:	2828 2828 2828 2820 2828 2028 2820 2820     (((((( ((((  ( (
d008f37c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f38c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f39c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f3ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f3bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f3cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f3dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f3ec:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d008f3fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f40c:	2828 2828 2828 2828 2028 1020 7070 7070     (((((((((  .pppp
d008f41c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f42c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f43c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f44c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f45c:	7070 7070 7070 7070 7070 1070 2010 2020     ppppppppppp..   
d008f46c:	2020 2020 2020 2828 2828 2828 2828 2828           ((((((((((
d008f47c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f48c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f49c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f4ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f4bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f4cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f4dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f4ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f4fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f50c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f51c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f52c:	2828 2828 2020 7010 7070 7070 7070 7070     ((((  .ppppppppp
d008f53c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f54c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f55c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f56c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f57c:	7070 7070 7070 7070 1070 1010 2020 2020     ppppppppp...    
d008f58c:	2820 2828 2028 2020 2020 2828 2828 2020      ((((     ((((  
d008f59c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f5ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f5bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f5cc:	2828 2828 2828 2828 2828 2828 2020 2820     ((((((((((((   (
d008f5dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f5ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f5fc:	2828 2828 2828 2828 2828 2820 2828 2828     (((((((((( (((((
d008f60c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f61c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f62c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f63c:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d008f64c:	1020 7070 7070 7070 7070 7070 7070 7070      .pppppppppppppp
d008f65c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f66c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f67c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f68c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f69c:	7070 7070 7070 7070 1010 2820 2828 2828     pppppppp.. (((((
d008f6ac:	2028 2828 2828 2820 2828 2820 2820 2828     ( (((( ((( ( (((
d008f6bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f6cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f6dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f6ec:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d008f6fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f70c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f71c:	2828 2828 2828 2820 2828 2828 2828 2828     (((((( (((((((((
d008f72c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f73c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f74c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f75c:	2828 2828 2828 2828 2828 2028 7010 7070     ((((((((((( .ppp
d008f76c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f77c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f78c:	7070 7070 7070 7070 7070 7070 7070 7020     pppppppppppppp p
d008f79c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f7ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f7bc:	7070 7070 7070 1010 2828 2828 2828 2820     pppppp..(((((( (
d008f7cc:	2828 2820 2828 2028 2828 2828 2828 2828     (( (((( ((((((((
d008f7dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f7ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f7fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f80c:	2828 2820 2828 2828 2820 2828 2828 2828     (( ((((( (((((((
d008f81c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f82c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f83c:	2828 1028 2828 2828 2828 2828 2828 2828     (((.((((((((((((
d008f84c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f85c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f86c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f87c:	2828 2828 2828 2020 7070 7070 7070 7070     ((((((  pppppppp
d008f88c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f89c:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f8ac:	7070 7070 7070 7070 7070 2010 7070 7070     pppppppppp. pppp
d008f8bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f8cc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f8dc:	7070 7070 2810 2828 2828 2820 2828 2028     pppp.((((( (((( 
d008f8ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f8fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f90c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f91c:	2828 2828 2828 2828 2828 2828 2028 2828     ((((((((((((( ((
d008f92c:	2828 2828 2820 2828 2828 2828 2828 2828     (((( (((((((((((
d008f93c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f94c:	2828 2828 2828 2828 2828 2828 2828 1028     (((((((((((((((.
d008f95c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f96c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f97c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f98c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008f99c:	2828 7010 7070 7070 7070 7070 7070 7070     ((.ppppppppppppp
d008f9ac:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f9bc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008f9cc:	7070 7070 7070 1020 1020 7070 7070 7070     pppppp . .pppppp
d008f9dc:	7070 7070 7070 7070 7070 7070 1070 1010     ppppppppppppp...
d008f9ec:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008f9fc:	2810 2828 2028 2828 2828 2028 2828 2828     .(((( ((((( ((((
d008fa0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fa1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fa2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fa3c:	2828 2828 2828 2828 2820 2828 2828 2828     (((((((( (((((((
d008fa4c:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d008fa5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fa6c:	2828 2828 2828 2828 2828 2028 2810 2828     ((((((((((( .(((
d008fa7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fa8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fa9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008faac:	2828 2828 2828 2828 2828 2828 1028 7070     (((((((((((((.pp
d008fabc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008facc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008fadc:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d008faec:	7070 2070 2010 7010 7070 7070 7070 7070     ppp . .ppppppppp
d008fafc:	7070 7070 7070 7070 7070 1070 1010 2010     ppppppppppp.... 
d008fb0c:	2020 2020 2020 2020 2020 1020 2828 2828                .((((
d008fb1c:	2820 2828 2828 2820 2828 2828 2828 2828      ((((( (((((((((
d008fb2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fb3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fb4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fb5c:	2828 2028 2828 2828 2828 2828 2028 2828     ((( ((((((((( ((
d008fb6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fb7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fb8c:	2828 2828 2828 2828 1010 2828 2828 2828     ((((((((..((((((
d008fb9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fbac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fbbc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fbcc:	2828 2828 2828 2828 1028 1010 1010 1010     (((((((((.......
d008fbdc:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008fbec:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008fbfc:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008fc0c:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d008fc1c:	1010 1010 1010 1010 2020 2020 2020 2028     ........      ( 
d008fc2c:	2028 2820 2020 2810 2828 2828 2820 2828     (  (  .((((( (((
d008fc3c:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d008fc4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fc5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fc6c:	2828 2828 2828 2828 2828 2828 2828 2820     (((((((((((((( (
d008fc7c:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d008fc8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fc9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fcac:	2828 2828 1028 2820 2828 2828 2828 2828     (((((. (((((((((
d008fcbc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fccc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fcdc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fcec:	2828 2828 2828 2010 2820 2828 2828 2828     ((((((.  (((((((
d008fcfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fd0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fd1c:	2828 2828 2828 2828 2828 2028 1010 2010     ((((((((((( ... 
d008fd2c:	2828 2828 2828 2828 2828 2828 2028 2820     (((((((((((((  (
d008fd3c:	2020 2010 2020 2020 2828 2820 2820 2828       .     (( ( (((
d008fd4c:	1020 2820 2828 2028 2828 2828 2820 2828      . (((( (((( (((
d008fd5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fd6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fd7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fd8c:	2828 2828 2828 2828 2828 2820 2828 2828     (((((((((( (((((
d008fd9c:	2828 2828 2820 2828 2828 2828 2828 2028     (((( (((((((((( 
d008fdac:	2020 2828 2828 2828 2828 2828 2828 2828       ((((((((((((((
d008fdbc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fdcc:	2828 2810 2828 2828 2828 2828 2828 2828     ((.(((((((((((((
d008fddc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fdec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fdfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fe0c:	2828 2810 2828 2828 2828 2828 2828 2828     ((.(((((((((((((
d008fe1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fe2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fe3c:	2828 2828 2828 2028 1010 2820 2828 2828     ((((((( .. (((((
d008fe4c:	2828 2828 2828 2828 2828 2028 2028 2010     ((((((((((( ( . 
d008fe5c:	2820 2828 2828 2828 2828 2028 2010 2828      (((((((((( . ((
d008fe6c:	2828 2828 2020 2028 2828 2828 2828 2828     ((((  ( ((((((((
d008fe7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fe8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fe9c:	2828 2828 2828 2828 2828 2828 2028 2820     (((((((((((((  (
d008feac:	2828 2828 2828 2028 2828 2828 2828 2028     ((((((( ((((((( 
d008febc:	2828 2828 2828 2828 2828 2028 2828 2020     ((((((((((( ((  
d008fecc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fedc:	2828 2828 2828 2828 2828 2828 2828 2820     (((((((((((((( (
d008feec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fefc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ff0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ff1c:	2828 2828 2828 2828 2828 2828 2828 2810     ((((((((((((((.(
d008ff2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ff3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ff4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ff5c:	2828 1028 1010 2820 2828 2828 2828 2828     (((... (((((((((
d008ff6c:	2828 2828 2828 2828 1020 2820 2828 2828     (((((((( . (((((
d008ff7c:	2828 2828 2828 1020 2820 2828 2828 2828     (((((( . (((((((
d008ff8c:	2828 2820 2828 2828 2828 2020 2828 2828     (( (((((((  ((((
d008ff9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ffac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008ffbc:	2828 2828 2828 2828 2820 2820 2828 2828     (((((((( ( (((((
d008ffcc:	2828 2828 2820 2828 2828 2028 2828 2828     (((( (((((( ((((
d008ffdc:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d008ffec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d008fffc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009000c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009001c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009002c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009003c:	2828 2828 2828 2828 2828 2028 2828 2828     ((((((((((( ((((
d009004c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009005c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009006c:	2828 2828 2828 2828 2828 2828 2828 1028     (((((((((((((((.
d009007c:	1010 2828 2828 2828 2828 2828 2828 2828     ..((((((((((((((
d009008c:	2828 2828 2010 2828 2828 2828 2828 2828     ((((. ((((((((((
d009009c:	2828 1020 2828 2828 2828 2828 2828 2828     (( .((((((((((((
d00900ac:	2828 2828 2028 2028 2828 2828 2828 2828     ((((( ( ((((((((
d00900bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00900cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00900dc:	2828 2028 2828 2028 2828 2828 2828 2828     ((( ((( ((((((((
d00900ec:	2028 2820 2028 2820 2828 2828 2828 2828     (  ((  (((((((((
d00900fc:	2828 2028 2828 2828 2820 2828 2828 2828     ((( (((( (((((((
d009010c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009011c:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d009012c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009013c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009014c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009015c:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d009016c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009017c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009018c:	2828 2828 2828 2828 2828 1020 2010 2828     (((((((((( .. ((
d009019c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00901ac:	2810 2828 2828 2828 2828 2828 2828 2810     .(((((((((((((.(
d00901bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00901cc:	2820 2028 2828 2828 2828 2828 2828 2828      (( ((((((((((((
d00901dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00901ec:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d00901fc:	2828 2028 2828 2828 2828 2828 2828 2028     ((( ((((((((((( 
d009020c:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009021c:	2020 2828 2820 2828 2828 2828 2828 2828       (( (((((((((((
d009022c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009023c:	2828 2828 2820 2828 2828 2828 2828 2828     (((( (((((((((((
d009024c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009025c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009026c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009027c:	2828 2828 2810 2828 2828 2828 2828 2828     ((((.(((((((((((
d009028c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009029c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00902ac:	2828 2828 2828 1028 2828 2828 2828 2828     (((((((.((((((((
d00902bc:	2828 2828 2828 2828 2828 2828 2820 2828     (((((((((((( (((
d00902cc:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d00902dc:	2828 2828 2828 2828 2828 2828 2820 2828     (((((((((((( (((
d00902ec:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d00902fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009030c:	2828 2828 2828 2828 2828 2028 2828 2828     ((((((((((( ((((
d009031c:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009032c:	2828 2828 2828 2828 2828 2828 2828 2020     ((((((((((((((  
d009033c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009034c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009035c:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009036c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009037c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009038c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009039c:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d00903ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00903bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00903cc:	2828 2820 2828 2828 2828 2828 2828 2828     (( (((((((((((((
d00903dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00903ec:	2828 2828 2028 2828 2828 2828 2828 2828     ((((( ((((((((((
d00903fc:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d009040c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009041c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009042c:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d009043c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009044c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009045c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009046c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009047c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009048c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009049c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00904ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00904bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00904cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00904dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00904ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00904fc:	2828 2028 2828 2828 2828 2828 2828 2828     ((( ((((((((((((
d009050c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009051c:	2828 2828 2020 2820 2828 2828 2828 2828     ((((   (((((((((
d009052c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009053c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009054c:	2828 2828 2020 2820 2828 2828 2828 2828     ((((   (((((((((
d009055c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009056c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009057c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009058c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009059c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00905ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00905bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00905cc:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d00905dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00905ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00905fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009060c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009061c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009062c:	2828 2828 2828 2828 2828 2020 2828 2828     ((((((((((  ((((
d009063c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009064c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009065c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009066c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009067c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009068c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009069c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00906ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00906bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00906cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00906dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00906ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00906fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009070c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009071c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009072c:	2828 2828 2828 2828 2828 2028 2828 2828     ((((((((((( ((((
d009073c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009074c:	2828 2828 2028 2028 2828 2828 2828 2828     ((((( ( ((((((((
d009075c:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d009076c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009077c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009078c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009079c:	2828 2828 2028 2020 2020 2828 2828 2020     (((((     ((((  
d00907ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00907bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00907cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00907dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00907ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00907fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009080c:	1028 2828 2828 2828 2828 2828 2828 2828     (.((((((((((((((
d009081c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009082c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009083c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009084c:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d009085c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009086c:	2820 1028 1010 2810 2828 2828 2828 1010      ((....(((((((..
d009087c:	1010 2828 2028 2828 2828 2828 2828 2828     ..((( ((((((((((
d009088c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009089c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00908ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00908bc:	2028 2828 2828 2820 2828 2820 2820 2828     ( (((( ((( ( (((
d00908cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00908dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00908ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00908fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009090c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009091c:	2828 2828 2828 2828 2828 2828 2028 2828     ((((((((((((( ((
d009092c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009093c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009094c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009095c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009096c:	2828 2810 2828 2828 2828 2828 2828 2828     ((.(((((((((((((
d009097c:	2828 2828 2828 2828 1028 1010 2820 2028     (((((((((... (( 
d009098c:	4c10 2810 2828 2828 1010 4c4c 2810 2828     .L.(((((..LL.(((
d009099c:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d00909ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00909bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00909cc:	2828 2828 2828 2828 2828 2828 2828 2820     (((((((((((((( (
d00909dc:	2828 2820 2828 2028 2828 2828 2828 2828     (( (((( ((((((((
d00909ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00909fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090a0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090a1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090a2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090a3c:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d0090a4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090a5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090a6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090a7c:	2828 2828 2828 2828 2828 2828 2828 2810     ((((((((((((((.(
d0090a8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090a9c:	2828 2828 1028 4c4c 1010 2810 4c10 104c     (((((.LL...(.LL.
d0090aac:	2828 1010 4c4c 104c 2828 2828 2810 2828     ((..LLL.((((.(((
d0090abc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090acc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090adc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090aec:	2828 2828 2828 2828 2828 2820 2828 2028     (((((((((( (((( 
d0090afc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b5c:	2828 2828 1028 2828 2828 2828 2828 2828     (((((.((((((((((
d0090b6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090b9c:	2828 2828 2828 2828 1028 2820 2828 2828     (((((((((. (((((
d0090bac:	2828 2828 2828 2828 2828 1028 1010 2810     (((((((((((....(
d0090bbc:	2828 4c10 5858 104c 1010 1058 1010 584c     ((.LXXL...X...LX
d0090bcc:	4c4c 2810 2828 1028 2820 2828 2828 2828     LL.((((. (((((((
d0090bdc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090bec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090bfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090c0c:	2828 2828 2028 2828 2828 2028 2828 2828     ((((( ((((( ((((
d0090c1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090c2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090c3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090c4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090c5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090c6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090c7c:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d0090c8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090c9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090cac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090cbc:	2828 2828 1010 2828 2828 2828 2828 2828     ((((..((((((((((
d0090ccc:	2828 2828 2828 1010 4c4c 104c 1010 1010     ((((((..LLL.....
d0090cdc:	584c 4c58 104c 4c58 4c4c 5858 104c 2828     LXXLL.XLLLXXL.((
d0090cec:	2828 1010 2828 2828 2828 2828 2828 2828     ((..((((((((((((
d0090cfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090d0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090d1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090d2c:	2820 2828 2828 2820 2828 2828 2828 2828      ((((( (((((((((
d0090d3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090d4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090d5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090d6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090d7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090d8c:	2828 2828 2828 2828 2828 2828 2028 2820     (((((((((((((  (
d0090d9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090dac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090dbc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090dcc:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d0090ddc:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d0090dec:	2828 2828 1010 584c 4c58 1010 4c10 5858     ((((..LXXL...LXX
d0090dfc:	4c58 5858 5858 4c58 104c 2828 2028 2810     XLXXXXXLL.((( .(
d0090e0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090e1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090e2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090e3c:	2828 2828 2828 2828 2828 2828 2820 2828     (((((((((((( (((
d0090e4c:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d0090e5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090e6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090e7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090e8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090e9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090eac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090ebc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090ecc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090edc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090eec:	2828 2828 2828 2828 2828 1028 2828 2828     (((((((((((.((((
d0090efc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090f0c:	2828 4c10 5858 5858 4c58 5858 5858 5858     ((.LXXXXXLXXXXXX
d0090f1c:	5858 4c4c 2810 1028 1010 2828 2828 2828     XXLL.((...((((((
d0090f2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090f3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090f4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090f5c:	2828 2828 2828 2028 2828 2828 2820 2828     ((((((( (((( (((
d0090f6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090f7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090f8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090f9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090fac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090fbc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090fcc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090fdc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090fec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0090ffc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009100c:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d009101c:	2828 2828 2828 2828 2828 2828 2828 1010     ((((((((((((((..
d009102c:	4c10 584c 5858 5858 5858 5858 5858 4c4c     .LLXXXXXXXXXXXLL
d009103c:	1010 4c10 4c4c 2810 2828 2828 2828 2828     ...LLL.(((((((((
d009104c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009105c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009106c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009107c:	2828 2828 2020 2028 2828 2828 2828 2828     ((((  ( ((((((((
d009108c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009109c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00910ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00910bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00910cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00910dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00910ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00910fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009110c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009111c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009112c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009113c:	2828 2828 2828 1010 1010 4c10 104c 4c4c     ((((((.....LL.LL
d009114c:	584c 5858 5858 5858 5858 5858 4c4c 4c4c     LXXXXXXXXXXXLLLL
d009115c:	1010 2828 1010 1010 2828 2828 2828 1028     ..((....(((((((.
d009116c:	1010 2810 2828 2828 2828 2828 2828 2828     ...(((((((((((((
d009117c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009118c:	2828 1028 1010 2810 2828 2828 2828 1010     (((....(((((((..
d009119c:	1010 2820 2828 2828 2828 2020 2828 2828     .. (((((((  ((((
d00911ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00911bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00911cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00911dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00911ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00911fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009120c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009121c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009122c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009123c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009124c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009125c:	1028 4c4c 104c 584c 5858 584c 5858 5858     (.LLL.LXXXLXXXXX
d009126c:	5858 5858 5858 4c4c 4c4c 1010 2820 2828     XXXXXXLLLL.. (((
d009127c:	1028 4c4c 1010 2828 2828 1028 104c 2828     (.LL..(((((.L.((
d009128c:	2828 1010 2810 2828 2828 2828 2828 2828     ((...(((((((((((
d009129c:	2828 2828 2828 2828 1028 1010 2828 2828     (((((((((...((((
d00912ac:	4c10 2810 2828 2828 1010 4c4c 2810 2828     .L.(((((..LL.(((
d00912bc:	2828 2828 2028 2028 2828 2828 2828 2828     ((((( ( ((((((((
d00912cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00912dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00912ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00912fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009130c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009131c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009132c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009133c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009134c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009135c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009136c:	2828 2828 2828 2828 2828 2828 4c10 1010     ((((((((((((.L..
d009137c:	4c10 5858 5858 5858 5858 5858 5858 5858     .LXXXXXXXXXXXXXX
d009138c:	584c 4c4c 1010 2028 2828 2828 2828 4c10     LXLL..( ((((((.L
d009139c:	4c4c 1010 2828 4c10 104c 1028 1010 4c4c     LL..((.LL.(...LL
d00913ac:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d00913bc:	2828 2828 1028 4c4c 1010 2810 4c10 104c     (((((.LL...(.LL.
d00913cc:	2828 1010 4c4c 104c 2828 2828 2828 2828     ((..LLL.((((((((
d00913dc:	2820 2028 2828 2828 2828 2828 2828 2828      (( ((((((((((((
d00913ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00913fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009140c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009141c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009142c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009143c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009144c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009145c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009146c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009147c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009148c:	2828 2828 2828 2828 1010 1028 584c 4c58     ((((((((..(.LXXL
d009149c:	4c4c 4c4c 584c 5858 5858 5858 4c4c 104c     LLLLLXXXXXXXLLL.
d00914ac:	2810 2028 2828 2828 2828 1028 4c4c 4c58     .(( (((((((.LLXL
d00914bc:	1010 5810 1010 4c10 5858 104c 2828 1028     ...X...LXXL.(((.
d00914cc:	1010 2810 2828 2828 2828 1028 1010 2810     ...((((((((....(
d00914dc:	2828 4c10 5858 104c 1010 1058 1010 584c     ((.LXXL...X...LX
d00914ec:	4c4c 2810 2828 2828 2828 2828 2820 2828     LL.((((((((( (((
d00914fc:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009150c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009151c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009152c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009153c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009154c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009155c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009156c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009157c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009158c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009159c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00915ac:	2828 2828 2828 1028 5858 4c4c 104c 1010     (((((((.XXLLL...
d00915bc:	5858 4c4c 5858 4c58 4c4c 4c4c 104c 1010     XXLLXXXLLLLLL...
d00915cc:	2828 2828 2828 2828 4c10 5858 4c4c 584c     ((((((((.LXXLLLX
d00915dc:	4c10 584c 4c58 1010 1010 4c10 4c4c 1010     .LLXXL.....LLL..
d00915ec:	2828 2828 2828 1010 4c4c 104c 1010 1010     ((((((..LLL.....
d00915fc:	584c 4c58 104c 4c58 4c4c 5858 104c 2828     LXXLL.XLLLXXL.((
d009160c:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d009161c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009162c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009163c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009164c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009165c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009166c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009167c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009168c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009169c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00916ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00916bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00916cc:	2828 4c10 4c58 104c 2810 4c10 4c58 4c4c     ((.LXLL..(.LXLLL
d00916dc:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 2810 2828     XXLLLLLLLLLL.(((
d00916ec:	2828 2828 4c10 584c 5858 5858 584c 5858     ((((.LLXXXXXLXXX
d00916fc:	104c 1010 584c 4c58 1010 2828 2828 2828     L...LXXL..((((((
d009170c:	2828 2828 1010 584c 4c58 1010 4c10 5858     ((((..LXXL...LXX
d009171c:	4c58 5858 5858 4c58 104c 2828 2828 2828     XLXXXXXLL.((((((
d009172c:	2828 2828 2020 2820 2828 2828 2828 2828     ((((   (((((((((
d009173c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009174c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009175c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009176c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009177c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009178c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009179c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00917ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00917bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00917cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00917dc:	2828 2828 2828 2828 2828 2828 2828 4c10     ((((((((((((((.L
d00917ec:	104c 2810 1028 4c4c 104c 1010 584c 4c4c     L..((.LLL...LXLL
d00917fc:	4c4c 4c4c 1010 1010 2810 2828 1010 2810     LLLL.....(((...(
d009180c:	1028 4c4c 5858 5858 5858 5858 584c 5858     (.LLXXXXXXXXLXXX
d009181c:	5858 104c 2828 2828 2828 2828 2828 2828     XXL.((((((((((((
d009182c:	2828 4c10 5858 5858 4c58 5858 5858 5858     ((.LXXXXXLXXXXXX
d009183c:	5858 4c4c 2810 1028 1010 2828 2828 2828     XXLL.((...((((((
d009184c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009185c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009186c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009187c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009188c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009189c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00918ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00918bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00918cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00918dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00918ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00918fc:	2828 2828 2828 2828 2828 4c10 2810 2828     ((((((((((.L.(((
d009190c:	4c10 4c4c 1010 1010 584c 4c10 4c4c 104c     .LLL....LX.LLLL.
d009191c:	1010 2828 2828 1028 4c4c 104c 1010 4c4c     ..(((((.LLL...LL
d009192c:	5858 5858 5858 5858 5858 4c58 104c 1010     XXXXXXXXXXXLL...
d009193c:	2828 2828 2828 2828 2828 2828 2828 1010     ((((((((((((((..
d009194c:	4c10 584c 5858 5858 5858 5858 5858 4c4c     .LLXXXXXXXXXXXLL
d009195c:	1010 4c10 4c4c 2810 2828 2828 2828 2828     ...LLL.(((((((((
d009196c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009197c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009198c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009199c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00919ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00919bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00919cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00919dc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00919ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00919fc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091a0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091a1c:	2828 2828 2828 2028 2028 2828 4c10 4c4c     ((((((( ( ((.LLL
d0091a2c:	2810 1028 4c4c 104c 104c 114c 1111 2810     .((.LLL.L.L....(
d0091a3c:	2828 2828 1010 4c4c 4c4c 5858 5858 5858     ((((..LLLLXXXXXX
d0091a4c:	5858 5858 4c58 4c4c 4c10 104c 1010 1010     XXXXXLLL.LL.....
d0091a5c:	2828 2828 2828 1010 1010 4c10 104c 4c4c     ((((((.....LL.LL
d0091a6c:	584c 5858 5858 5858 5858 5858 4c4c 4c4c     LXXXXXXXXXXXLLLL
d0091a7c:	1010 2828 2828 2828 2828 2828 2828 2828     ..((((((((((((((
d0091a8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091a9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091aac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091abc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091acc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091adc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091aec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091afc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091b0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091b1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091b2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091b3c:	2828 2028 2828 2820 4c10 4c4c 2810 1028     ((( (( (.LLL.((.
d0091b4c:	4c10 104c 104c 1010 2111 1011 2828 2828     .LL.L....!..((((
d0091b5c:	1028 1010 4c4c 4c4c 5858 5858 5858 5858     (...LLLLXXXXXXXX
d0091b6c:	5858 4c58 5858 4c58 4c10 4c4c 2810 2828     XXXLXXXL.LLL.(((
d0091b7c:	1028 4c4c 104c 584c 5858 584c 5858 5858     (.LLL.LXXXLXXXXX
d0091b8c:	5858 5858 5858 4c4c 4c4c 1010 2828 2828     XXXXXXLLLL..((((
d0091b9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091bac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091bbc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091bcc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091bdc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091bec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091bfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091c0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091c1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091c2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091c3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091c4c:	2828 2828 2828 2828 2828 2828 2828 2820     (((((((((((((( (
d0091c5c:	2828 2820 1010 4c4c 2810 1028 4c10 1010     (( (..LL.((..L..
d0091c6c:	104c 2828 1110 1121 2810 1028 1010 2121     L.((..!..((...!!
d0091c7c:	1010 4c4c 4c58 5858 5858 5858 5858 5858     ..LLXLXXXXXXXXXX
d0091c8c:	5858 5858 104c 1010 104c 2828 4c10 1010     XXXXL...L.((.L..
d0091c9c:	4c10 5858 5858 5858 5858 5858 5858 5858     .LXXXXXXXXXXXXXX
d0091cac:	584c 4c4c 1010 2828 2828 2828 2828 2828     LXLL..((((((((((
d0091cbc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091ccc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091cdc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091cec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091cfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091d0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091d1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091d2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091d3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091d4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091d5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091d6c:	2828 2828 2828 2828 2828 2820 2828 2820     (((((((((( ((( (
d0091d7c:	1028 4c10 2810 2828 4c10 2810 4c10 2810     (..L.(((.L.(.L.(
d0091d8c:	1028 2111 1011 1010 2929 2121 1021 4c10     (..!....))!!!..L
d0091d9c:	4c4c 5858 5858 5858 4c58 4c4c 4c4c 584c     LLXXXXXXXLLLLLLX
d0091dac:	4c58 2810 1010 2828 1010 1028 584c 4c58     XL.(..((..(.LXXL
d0091dbc:	4c4c 4c4c 584c 5858 5858 5858 4c4c 104c     LLLLLXXXXXXXLLL.
d0091dcc:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d0091ddc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091dec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091dfc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091e0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091e1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091e2c:	2828 2028 2828 2828 2828 2828 2828 2828     ((( ((((((((((((
d0091e3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091e4c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091e5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091e6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091e7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091e8c:	2828 2828 2828 2820 2828 2820 2828 1010     (((((( ((( (((..
d0091e9c:	2810 2828 1010 2828 4c10 2810 1028 2111     .(((..((.L.((..!
d0091eac:	1021 2921 2129 1010 4c10 4c4c 4c4c 584c     !.!))!...LLLLLLX
d0091ebc:	5858 4c4c 5858 1010 4c10 4c4c 5858 2810     XXLLXX...LLLXX.(
d0091ecc:	2828 2828 2828 1028 5858 4c4c 104c 1010     (((((((.XXLLL...
d0091edc:	5858 4c4c 5858 4c58 4c4c 4c4c 104c 1010     XXLLXXXLLLLLL...
d0091eec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091efc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f0c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f1c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f2c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f3c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f4c:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d0091f5c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f6c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f7c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f8c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091f9c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0091fac:	2028 2828 2828 2820 2828 2828 2810 2828     ( (((( (((((.(((
d0091fbc:	1010 2828 1028 2810 2828 2110 1029 2921     ..(((..(((.!).!)
d0091fcc:	1021 4c4c 4c4c 4c4c 4c4c 4c4c 5858 4c4c     !.LLLLLLLLLLXXLL
d0091fdc:	584c 104c 1028 4c10 584c 104c 2828 2828     LXL.(..LLXL.((((
d0091fec:	2828 4c10 4c58 104c 2810 4c10 4c58 4c4c     ((.LXLL..(.LXLLL
d0091ffc:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 2810 2828     XXLLLLLLLLLL.(((
d009200c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009201c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009202c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009203c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009204c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009205c:	2828 2828 2828 2828 2828 2828 2820 2828     (((((((((((( (((
d009206c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009207c:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d009208c:	2020 2828 2828 2828 2828 2828 2828 2828       ((((((((((((((
d009209c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00920ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00920bc:	2828 2828 2828 2828 2828 2828 2028 2828     ((((((((((((( ((
d00920cc:	2028 2828 2828 2828 2828 2828 2810 2828     ( ((((((((((.(((
d00920dc:	2828 2810 2828 1110 2129 2110 1010 1010     ((.(((..)!.!....
d00920ec:	1010 4c4c 4c4c 4c4c 4c58 1010 4c10 4c58     ..LLLLLLXL...LXL
d00920fc:	2810 1028 4c10 104c 2828 2828 2828 4c10     .((..LL.((((((.L
d009210c:	104c 2810 1028 4c4c 104c 1010 584c 4c4c     L..((.LLL...LXLL
d009211c:	4c4c 4c4c 1010 1010 2810 2828 2828 2828     LLLL.....(((((((
d009212c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009213c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009214c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009215c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009216c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009217c:	2828 2828 2828 2828 2820 2828 2828 2828     (((((((( (((((((
d009218c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009219c:	2828 2828 2828 2828 2828 2028 2828 2020     ((((((((((( ((  
d00921ac:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00921bc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00921cc:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00921dc:	2828 2828 2828 2828 2028 2828 2820 2828     ((((((((( (( (((
d00921ec:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00921fc:	2828 1010 2929 1021 1010 2828 1010 4c10     ((..))!...((...L
d009220c:	4c4c 104c 4c58 1010 1010 5858 104c 2828     LLL.XL....XXL.((
d009221c:	1028 104c 2828 2828 2828 4c10 2810 2828     (.L.((((((.L.(((
d009222c:	4c10 4c4c 1010 1010 584c 4c10 4c4c 104c     .LLL....LX.LLLL.
d009223c:	1010 2828 2828 2828 2828 2828 2828 2828     ..((((((((((((((
d009224c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009225c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009226c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009227c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009228c:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009229c:	2828 2828 2828 2828 2828 2828               ((((((((((((

d00922a8 <_global_impure_ptr>:
d00922a8:	2388 d009                                   .#..

d00922ac <__sf_fake_stderr>:
	...

d00922cc <__sf_fake_stdin>:
	...

d00922ec <__sf_fake_stdout>:
	...
d009230c:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d009231c:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d009232c:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d009233c:	6665                                         ef.

Disassembly of section .init:

d0092340 <_init>:
d0092340:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0092342:	bf00      	nop

Disassembly of section .fini:

d0092344 <_fini>:
d0092344:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0092346:	bf00      	nop
