
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
d008001e:	f001 fac7 	bl	d00815b0 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 fac2 	bl	d00815b0 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b96a 	b.w	d008030c <main>
d0080038:	d009be10 	.word	0xd009be10

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 f97f 	bl	d0081350 <malloc>
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
d0080230:	d009e3a0 	.word	0xd009e3a0
d0080234:	d0600000 	.word	0xd0600000
d0080238:	d009c32c 	.word	0xd009c32c

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
d0080284:	f001 f85e 	bl	d0081344 <__errno>
d0080288:	2209      	movs	r2, #9
d008028a:	4603      	mov	r3, r0
d008028c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0080290:	601a      	str	r2, [r3, #0]
d0080292:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080294:	d009be84 	.word	0xd009be84
d0080298:	2001f000 	.word	0x2001f000

d008029c <_read>:
d008029c:	b508      	push	{r3, lr}
d008029e:	f001 f851 	bl	d0081344 <__errno>
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
d00802ea:	f001 f82b 	bl	d0081344 <__errno>
d00802ee:	220c      	movs	r2, #12
d00802f0:	4603      	mov	r3, r0
d00802f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00802f6:	601a      	str	r2, [r3, #0]
d00802f8:	bd10      	pop	{r4, pc}
d00802fa:	bf00      	nop
d00802fc:	d009be80 	.word	0xd009be80
d0080300:	d009e3a0 	.word	0xd009e3a0
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
d0080362:	f44f 7320 	mov.w	r3, #640	; 0x280
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
d0080474:	f000 fa8e 	bl	d0080994 <setup_background_bub>
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
d00804da:	f000 f9e9 	bl	d00808b0 <init_star_fields>
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
d0080532:	f000 fbdf 	bl	d0080cf4 <do_bubbastix_playdemo_screensaver>
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
d0080558:	d009c360 	.word	0xd009c360
d008055c:	d009c380 	.word	0xd009c380
d0080560:	d009bd80 	.word	0xd009bd80
d0080564:	d0082b00 	.word	0xd0082b00
d0080568:	d0081e60 	.word	0xd0081e60
d008056c:	d009c340 	.word	0xd009c340
d0080570:	d0082260 	.word	0xd0082260
d0080574:	d009be90 	.word	0xd009be90
d0080578:	d009be8c 	.word	0xd009be8c
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
d0080778:	d0082260 	.word	0xd0082260
d008077c:	d0082f00 	.word	0xd0082f00
d0080780:	d009be88 	.word	0xd009be88
d0080784:	d009c360 	.word	0xd009c360
d0080788:	d009c380 	.word	0xd009c380
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
d00807c8:	f000 feea 	bl	d00815a0 <puts>
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
d0080878:	d0082ae0 	.word	0xd0082ae0
d008087c:	d009c380 	.word	0xd009c380
d0080880:	d009c360 	.word	0xd009c360

d0080884 <star_rand>:
d0080884:	4908      	ldr	r1, [pc, #32]	; (d00808a8 <star_rand+0x24>)
d0080886:	f243 0239 	movw	r2, #12345	; 0x3039
d008088a:	b410      	push	{r4}
d008088c:	680b      	ldr	r3, [r1, #0]
d008088e:	4c07      	ldr	r4, [pc, #28]	; (d00808ac <star_rand+0x28>)
d0080890:	fb04 2303 	mla	r3, r4, r3, r2
d0080894:	f85d 4b04 	ldr.w	r4, [sp], #4
d0080898:	0c1a      	lsrs	r2, r3, #16
d008089a:	600b      	str	r3, [r1, #0]
d008089c:	fbb2 f3f0 	udiv	r3, r2, r0
d00808a0:	fb03 2010 	mls	r0, r3, r0, r2
d00808a4:	b280      	uxth	r0, r0
d00808a6:	4770      	bx	lr
d00808a8:	d009bda0 	.word	0xd009bda0
d00808ac:	41c64e6d 	.word	0x41c64e6d

d00808b0 <init_star_fields>:
d00808b0:	4b33      	ldr	r3, [pc, #204]	; (d0080980 <init_star_fields+0xd0>)
d00808b2:	f8df c0d4 	ldr.w	ip, [pc, #212]	; d0080988 <init_star_fields+0xd8>
d00808b6:	6819      	ldr	r1, [r3, #0]
d00808b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00808bc:	2600      	movs	r6, #0
d00808be:	4c31      	ldr	r4, [pc, #196]	; (d0080984 <init_star_fields+0xd4>)
d00808c0:	f243 0e39 	movw	lr, #12345	; 0x3039
d00808c4:	f240 1b19 	movw	fp, #281	; 0x119
d00808c8:	f8df a0c0 	ldr.w	sl, [pc, #192]	; d008098c <init_star_fields+0xdc>
d00808cc:	f8df 90c0 	ldr.w	r9, [pc, #192]	; d0080990 <init_star_fields+0xe0>
d00808d0:	e006      	b.n	d00808e0 <init_star_fields+0x30>
d00808d2:	2306      	movs	r3, #6
d00808d4:	f04f 0201 	mov.w	r2, #1
d00808d8:	7163      	strb	r3, [r4, #5]
d00808da:	7122      	strb	r2, [r4, #4]
d00808dc:	3601      	adds	r6, #1
d00808de:	3406      	adds	r4, #6
d00808e0:	fb0c e101 	mla	r1, ip, r1, lr
d00808e4:	2e1f      	cmp	r6, #31
d00808e6:	b2f5      	uxtb	r5, r6
d00808e8:	ea4f 4011 	mov.w	r0, r1, lsr #16
d00808ec:	fb0c e101 	mla	r1, ip, r1, lr
d00808f0:	fbaa 2300 	umull	r2, r3, sl, r0
d00808f4:	ea4f 4811 	mov.w	r8, r1, lsr #16
d00808f8:	eba0 0203 	sub.w	r2, r0, r3
d00808fc:	eb03 0352 	add.w	r3, r3, r2, lsr #1
d0080900:	fba9 7208 	umull	r7, r2, r9, r8
d0080904:	ea4f 2313 	mov.w	r3, r3, lsr #8
d0080908:	ea4f 02d2 	mov.w	r2, r2, lsr #3
d008090c:	ebc3 1703 	rsb	r7, r3, r3, lsl #4
d0080910:	fb0b 8212 	mls	r2, fp, r2, r8
d0080914:	ebc3 1347 	rsb	r3, r3, r7, lsl #5
d0080918:	f102 0226 	add.w	r2, r2, #38	; 0x26
d008091c:	eba0 0003 	sub.w	r0, r0, r3
d0080920:	8062      	strh	r2, [r4, #2]
d0080922:	8020      	strh	r0, [r4, #0]
d0080924:	d9d5      	bls.n	d00808d2 <init_star_fields+0x22>
d0080926:	2d35      	cmp	r5, #53	; 0x35
d0080928:	d805      	bhi.n	d0080936 <init_star_fields+0x86>
d008092a:	2306      	movs	r3, #6
d008092c:	f04f 0202 	mov.w	r2, #2
d0080930:	7163      	strb	r3, [r4, #5]
d0080932:	7122      	strb	r2, [r4, #4]
d0080934:	e7d2      	b.n	d00808dc <init_star_fields+0x2c>
d0080936:	2d47      	cmp	r5, #71	; 0x47
d0080938:	d804      	bhi.n	d0080944 <init_star_fields+0x94>
d008093a:	2203      	movs	r2, #3
d008093c:	2305      	movs	r3, #5
d008093e:	7122      	strb	r2, [r4, #4]
d0080940:	7163      	strb	r3, [r4, #5]
d0080942:	e7cb      	b.n	d00808dc <init_star_fields+0x2c>
d0080944:	2d53      	cmp	r5, #83	; 0x53
d0080946:	d805      	bhi.n	d0080954 <init_star_fields+0xa4>
d0080948:	2305      	movs	r3, #5
d008094a:	f04f 0201 	mov.w	r2, #1
d008094e:	7123      	strb	r3, [r4, #4]
d0080950:	7162      	strb	r2, [r4, #5]
d0080952:	e7c3      	b.n	d00808dc <init_star_fields+0x2c>
d0080954:	2d5b      	cmp	r5, #91	; 0x5b
d0080956:	d806      	bhi.n	d0080966 <init_star_fields+0xb6>
d0080958:	f04f 0307 	mov.w	r3, #7
d008095c:	7123      	strb	r3, [r4, #4]
d008095e:	f04f 0301 	mov.w	r3, #1
d0080962:	7163      	strb	r3, [r4, #5]
d0080964:	e7ba      	b.n	d00808dc <init_star_fields+0x2c>
d0080966:	f04f 0309 	mov.w	r3, #9
d008096a:	2d5f      	cmp	r5, #95	; 0x5f
d008096c:	7123      	strb	r3, [r4, #4]
d008096e:	f04f 0302 	mov.w	r3, #2
d0080972:	7163      	strb	r3, [r4, #5]
d0080974:	d1b2      	bne.n	d00808dc <init_star_fields+0x2c>
d0080976:	4b02      	ldr	r3, [pc, #8]	; (d0080980 <init_star_fields+0xd0>)
d0080978:	6019      	str	r1, [r3, #0]
d008097a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d008097e:	bf00      	nop
d0080980:	d009bda0 	.word	0xd009bda0
d0080984:	d009bea0 	.word	0xd009bea0
d0080988:	41c64e6d 	.word	0x41c64e6d
d008098c:	11a3019b 	.word	0x11a3019b
d0080990:	0749cb29 	.word	0x0749cb29

d0080994 <setup_background_bub>:
d0080994:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080998:	4b83      	ldr	r3, [pc, #524]	; (d0080ba8 <setup_background_bub+0x214>)
d008099a:	21c8      	movs	r1, #200	; 0xc8
d008099c:	4d83      	ldr	r5, [pc, #524]	; (d0080bac <setup_background_bub+0x218>)
d008099e:	2200      	movs	r2, #0
d00809a0:	4883      	ldr	r0, [pc, #524]	; (d0080bb0 <setup_background_bub+0x21c>)
d00809a2:	b087      	sub	sp, #28
d00809a4:	4c83      	ldr	r4, [pc, #524]	; (d0080bb4 <setup_background_bub+0x220>)
d00809a6:	f04f 0964 	mov.w	r9, #100	; 0x64
d00809aa:	8029      	strh	r1, [r5, #0]
d00809ac:	8319      	strh	r1, [r3, #24]
d00809ae:	f504 7a00 	add.w	sl, r4, #512	; 0x200
d00809b2:	4981      	ldr	r1, [pc, #516]	; (d0080bb8 <setup_background_bub+0x224>)
d00809b4:	4d81      	ldr	r5, [pc, #516]	; (d0080bbc <setup_background_bub+0x228>)
d00809b6:	6018      	str	r0, [r3, #0]
d00809b8:	f8df 8218 	ldr.w	r8, [pc, #536]	; d0080bd4 <setup_background_bub+0x240>
d00809bc:	4880      	ldr	r0, [pc, #512]	; (d0080bc0 <setup_background_bub+0x22c>)
d00809be:	4f81      	ldr	r7, [pc, #516]	; (d0080bc4 <setup_background_bub+0x230>)
d00809c0:	4e81      	ldr	r6, [pc, #516]	; (d0080bc8 <setup_background_bub+0x234>)
d00809c2:	60d9      	str	r1, [r3, #12]
d00809c4:	6119      	str	r1, [r3, #16]
d00809c6:	802a      	strh	r2, [r5, #0]
d00809c8:	8002      	strh	r2, [r0, #0]
d00809ca:	2500      	movs	r5, #0
d00809cc:	f8c4 8000 	str.w	r8, [r4]
d00809d0:	60e7      	str	r7, [r4, #12]
d00809d2:	2009      	movs	r0, #9
d00809d4:	6126      	str	r6, [r4, #16]
d00809d6:	3440      	adds	r4, #64	; 0x40
d00809d8:	f824 9c28 	strh.w	r9, [r4, #-40]
d00809dc:	f804 5c1b 	strb.w	r5, [r4, #-27]
d00809e0:	f7ff ff50 	bl	d0080884 <star_rand>
d00809e4:	4603      	mov	r3, r0
d00809e6:	f804 5c1a 	strb.w	r5, [r4, #-26]
d00809ea:	f44f 70be 	mov.w	r0, #380	; 0x17c
d00809ee:	f804 3c1c 	strb.w	r3, [r4, #-28]
d00809f2:	f804 5c19 	strb.w	r5, [r4, #-25]
d00809f6:	f7ff ff45 	bl	d0080884 <star_rand>
d00809fa:	4603      	mov	r3, r0
d00809fc:	20dc      	movs	r0, #220	; 0xdc
d00809fe:	3314      	adds	r3, #20
d0080a00:	f824 3c20 	strh.w	r3, [r4, #-32]
d0080a04:	f7ff ff3e 	bl	d0080884 <star_rand>
d0080a08:	4603      	mov	r3, r0
d0080a0a:	2004      	movs	r0, #4
d0080a0c:	3314      	adds	r3, #20
d0080a0e:	f824 3c1e 	strh.w	r3, [r4, #-30]
d0080a12:	f7ff ff37 	bl	d0080884 <star_rand>
d0080a16:	4603      	mov	r3, r0
d0080a18:	2002      	movs	r0, #2
d0080a1a:	3303      	adds	r3, #3
d0080a1c:	f804 3c18 	strb.w	r3, [r4, #-24]
d0080a20:	f7ff ff30 	bl	d0080884 <star_rand>
d0080a24:	4603      	mov	r3, r0
d0080a26:	2014      	movs	r0, #20
d0080a28:	3301      	adds	r3, #1
d0080a2a:	f804 3c17 	strb.w	r3, [r4, #-23]
d0080a2e:	f7ff ff29 	bl	d0080884 <star_rand>
d0080a32:	f804 0c16 	strb.w	r0, [r4, #-22]
d0080a36:	4554      	cmp	r4, sl
d0080a38:	d1c7      	bne.n	d00809ca <setup_background_bub+0x36>
d0080a3a:	4c64      	ldr	r4, [pc, #400]	; (d0080bcc <setup_background_bub+0x238>)
d0080a3c:	f04f 0825 	mov.w	r8, #37	; 0x25
d0080a40:	4863      	ldr	r0, [pc, #396]	; (d0080bd0 <setup_background_bub+0x23c>)
d0080a42:	2720      	movs	r7, #32
d0080a44:	7b23      	ldrb	r3, [r4, #12]
d0080a46:	7b62      	ldrb	r2, [r4, #13]
d0080a48:	f8df 918c 	ldr.w	r9, [pc, #396]	; d0080bd8 <setup_background_bub+0x244>
d0080a4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080a50:	7ba2      	ldrb	r2, [r4, #14]
d0080a52:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080a56:	7be2      	ldrb	r2, [r4, #15]
d0080a58:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080a5c:	681b      	ldr	r3, [r3, #0]
d0080a5e:	699b      	ldr	r3, [r3, #24]
d0080a60:	4798      	blx	r3
d0080a62:	7b23      	ldrb	r3, [r4, #12]
d0080a64:	7b62      	ldrb	r2, [r4, #13]
d0080a66:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080a6a:	7ba2      	ldrb	r2, [r4, #14]
d0080a6c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080a70:	7be2      	ldrb	r2, [r4, #15]
d0080a72:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080a76:	685b      	ldr	r3, [r3, #4]
d0080a78:	681b      	ldr	r3, [r3, #0]
d0080a7a:	4798      	blx	r3
d0080a7c:	e057      	b.n	d0080b2e <setup_background_bub+0x19a>
d0080a7e:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080a82:	4638      	mov	r0, r7
d0080a84:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080a88:	7ba2      	ldrb	r2, [r4, #14]
d0080a8a:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d0080a8e:	7be3      	ldrb	r3, [r4, #15]
d0080a90:	f819 ac01 	ldrb.w	sl, [r9, #-1]
d0080a94:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0080a98:	9105      	str	r1, [sp, #20]
d0080a9a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080a9e:	685b      	ldr	r3, [r3, #4]
d0080aa0:	68db      	ldr	r3, [r3, #12]
d0080aa2:	4798      	blx	r3
d0080aa4:	7b22      	ldrb	r2, [r4, #12]
d0080aa6:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080aaa:	465b      	mov	r3, fp
d0080aac:	7ba0      	ldrb	r0, [r4, #14]
d0080aae:	ea42 2c0c 	orr.w	ip, r2, ip, lsl #8
d0080ab2:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0080ab6:	9905      	ldr	r1, [sp, #20]
d0080ab8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080abc:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d0080ac0:	2000      	movs	r0, #0
d0080ac2:	ea4c 6e0e 	orr.w	lr, ip, lr, lsl #24
d0080ac6:	f8de c004 	ldr.w	ip, [lr, #4]
d0080aca:	f8dc b004 	ldr.w	fp, [ip, #4]
d0080ace:	47d8      	blx	fp
d0080ad0:	45ba      	cmp	sl, r7
d0080ad2:	d024      	beq.n	d0080b1e <setup_background_bub+0x18a>
d0080ad4:	9b04      	ldr	r3, [sp, #16]
d0080ad6:	4650      	mov	r0, sl
d0080ad8:	4543      	cmp	r3, r8
d0080ada:	dd20      	ble.n	d0080b1e <setup_background_bub+0x18a>
d0080adc:	7b27      	ldrb	r7, [r4, #12]
d0080ade:	7b61      	ldrb	r1, [r4, #13]
d0080ae0:	7ba2      	ldrb	r2, [r4, #14]
d0080ae2:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
d0080ae6:	7be3      	ldrb	r3, [r4, #15]
d0080ae8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080aec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080af0:	685b      	ldr	r3, [r3, #4]
d0080af2:	68db      	ldr	r3, [r3, #12]
d0080af4:	4798      	blx	r3
d0080af6:	7b22      	ldrb	r2, [r4, #12]
d0080af8:	7b67      	ldrb	r7, [r4, #13]
d0080afa:	1cb1      	adds	r1, r6, #2
d0080afc:	7ba6      	ldrb	r6, [r4, #14]
d0080afe:	2302      	movs	r3, #2
d0080b00:	ea42 2007 	orr.w	r0, r2, r7, lsl #8
d0080b04:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0080b08:	b209      	sxth	r1, r1
d0080b0a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080b0e:	ea40 4706 	orr.w	r7, r0, r6, lsl #16
d0080b12:	2000      	movs	r0, #0
d0080b14:	ea47 660c 	orr.w	r6, r7, ip, lsl #24
d0080b18:	6876      	ldr	r6, [r6, #4]
d0080b1a:	6876      	ldr	r6, [r6, #4]
d0080b1c:	47b0      	blx	r6
d0080b1e:	b2ab      	uxth	r3, r5
d0080b20:	2b11      	cmp	r3, #17
d0080b22:	d05b      	beq.n	d0080bdc <setup_background_bub+0x248>
d0080b24:	3501      	adds	r5, #1
d0080b26:	f108 0806 	add.w	r8, r8, #6
d0080b2a:	f819 7f01 	ldrb.w	r7, [r9, #1]!
d0080b2e:	fa1f f688 	uxth.w	r6, r8
d0080b32:	2d11      	cmp	r5, #17
d0080b34:	f04f 0b06 	mov.w	fp, #6
d0080b38:	fa0f fa85 	sxth.w	sl, r5
d0080b3c:	f106 0305 	add.w	r3, r6, #5
d0080b40:	f106 31ff 	add.w	r1, r6, #4294967295	; 0xffffffff
d0080b44:	b21b      	sxth	r3, r3
d0080b46:	b209      	sxth	r1, r1
d0080b48:	9304      	str	r3, [sp, #16]
d0080b4a:	d026      	beq.n	d0080b9a <setup_background_bub+0x206>
d0080b4c:	f1ba 0f00 	cmp.w	sl, #0
d0080b50:	d195      	bne.n	d0080a7e <setup_background_bub+0xea>
d0080b52:	7b20      	ldrb	r0, [r4, #12]
d0080b54:	7b66      	ldrb	r6, [r4, #13]
d0080b56:	7ba2      	ldrb	r2, [r4, #14]
d0080b58:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d0080b5c:	7be3      	ldrb	r3, [r4, #15]
d0080b5e:	f899 0000 	ldrb.w	r0, [r9]
d0080b62:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d0080b66:	9104      	str	r1, [sp, #16]
d0080b68:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080b6c:	685b      	ldr	r3, [r3, #4]
d0080b6e:	68db      	ldr	r3, [r3, #12]
d0080b70:	4798      	blx	r3
d0080b72:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0080b76:	7b66      	ldrb	r6, [r4, #13]
d0080b78:	4650      	mov	r0, sl
d0080b7a:	7ba7      	ldrb	r7, [r4, #14]
d0080b7c:	2306      	movs	r3, #6
d0080b7e:	ea4c 2c06 	orr.w	ip, ip, r6, lsl #8
d0080b82:	7be6      	ldrb	r6, [r4, #15]
d0080b84:	9904      	ldr	r1, [sp, #16]
d0080b86:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080b8a:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d0080b8e:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0080b92:	6876      	ldr	r6, [r6, #4]
d0080b94:	6876      	ldr	r6, [r6, #4]
d0080b96:	47b0      	blx	r6
d0080b98:	e7c4      	b.n	d0080b24 <setup_background_bub+0x190>
d0080b9a:	f1c6 0b7d 	rsb	fp, r6, #125	; 0x7d
d0080b9e:	237c      	movs	r3, #124	; 0x7c
d0080ba0:	fa0f fb8b 	sxth.w	fp, fp
d0080ba4:	9304      	str	r3, [sp, #16]
d0080ba6:	e76a      	b.n	d0080a7e <setup_background_bub+0xea>
d0080ba8:	d009c0e0 	.word	0xd009c0e0
d0080bac:	d009c100 	.word	0xd009c100
d0080bb0:	d0086208 	.word	0xd0086208
d0080bb4:	d009c120 	.word	0xd009c120
d0080bb8:	00960020 	.word	0x00960020
d0080bbc:	d009c320 	.word	0xd009c320
d0080bc0:	d009c386 	.word	0xd009c386
d0080bc4:	00300020 	.word	0x00300020
d0080bc8:	00180020 	.word	0x00180020
d0080bcc:	2001f000 	.word	0x2001f000
d0080bd0:	d009c340 	.word	0xd009c340
d0080bd4:	d0085c08 	.word	0xd0085c08
d0080bd8:	d0094700 	.word	0xd0094700
d0080bdc:	7b23      	ldrb	r3, [r4, #12]
d0080bde:	7b62      	ldrb	r2, [r4, #13]
d0080be0:	7ba1      	ldrb	r1, [r4, #14]
d0080be2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080be6:	7be2      	ldrb	r2, [r4, #15]
d0080be8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080bec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080bf0:	681b      	ldr	r3, [r3, #0]
d0080bf2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0080bf4:	4798      	blx	r3
d0080bf6:	7b23      	ldrb	r3, [r4, #12]
d0080bf8:	7b62      	ldrb	r2, [r4, #13]
d0080bfa:	4606      	mov	r6, r0
d0080bfc:	7ba1      	ldrb	r1, [r4, #14]
d0080bfe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080c02:	7be2      	ldrb	r2, [r4, #15]
d0080c04:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080c08:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080c0c:	681b      	ldr	r3, [r3, #0]
d0080c0e:	699b      	ldr	r3, [r3, #24]
d0080c10:	4798      	blx	r3
d0080c12:	7b23      	ldrb	r3, [r4, #12]
d0080c14:	7b62      	ldrb	r2, [r4, #13]
d0080c16:	2010      	movs	r0, #16
d0080c18:	7ba1      	ldrb	r1, [r4, #14]
d0080c1a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080c1e:	7be2      	ldrb	r2, [r4, #15]
d0080c20:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080c24:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080c28:	685b      	ldr	r3, [r3, #4]
d0080c2a:	68db      	ldr	r3, [r3, #12]
d0080c2c:	4798      	blx	r3
d0080c2e:	7b25      	ldrb	r5, [r4, #12]
d0080c30:	7b61      	ldrb	r1, [r4, #13]
d0080c32:	2364      	movs	r3, #100	; 0x64
d0080c34:	7ba0      	ldrb	r0, [r4, #14]
d0080c36:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080c3a:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0080c3e:	7be7      	ldrb	r7, [r4, #15]
d0080c40:	2190      	movs	r1, #144	; 0x90
d0080c42:	ea45 4400 	orr.w	r4, r5, r0, lsl #16
d0080c46:	2000      	movs	r0, #0
d0080c48:	4d1b      	ldr	r5, [pc, #108]	; (d0080cb8 <setup_background_bub+0x324>)
d0080c4a:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d0080c4e:	f64f 7724 	movw	r7, #65316	; 0xff24
d0080c52:	6864      	ldr	r4, [r4, #4]
d0080c54:	6864      	ldr	r4, [r4, #4]
d0080c56:	47a0      	blx	r4
d0080c58:	6833      	ldr	r3, [r6, #0]
d0080c5a:	2210      	movs	r2, #16
d0080c5c:	4917      	ldr	r1, [pc, #92]	; (d0080cbc <setup_background_bub+0x328>)
d0080c5e:	9302      	str	r3, [sp, #8]
d0080c60:	2000      	movs	r0, #0
d0080c62:	9201      	str	r2, [sp, #4]
d0080c64:	2328      	movs	r3, #40	; 0x28
d0080c66:	9100      	str	r1, [sp, #0]
d0080c68:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080c6c:	2168      	movs	r1, #104	; 0x68
d0080c6e:	f64f 74ce 	movw	r4, #65486	; 0xffce
d0080c72:	f7ff f9f1 	bl	d0080058 <gfx_draw1bit>
d0080c76:	4812      	ldr	r0, [pc, #72]	; (d0080cc0 <setup_background_bub+0x32c>)
d0080c78:	2300      	movs	r3, #0
d0080c7a:	4a12      	ldr	r2, [pc, #72]	; (d0080cc4 <setup_background_bub+0x330>)
d0080c7c:	6005      	str	r5, [r0, #0]
d0080c7e:	4d12      	ldr	r5, [pc, #72]	; (d0080cc8 <setup_background_bub+0x334>)
d0080c80:	4812      	ldr	r0, [pc, #72]	; (d0080ccc <setup_background_bub+0x338>)
d0080c82:	702b      	strb	r3, [r5, #0]
d0080c84:	7003      	strb	r3, [r0, #0]
d0080c86:	4d12      	ldr	r5, [pc, #72]	; (d0080cd0 <setup_background_bub+0x33c>)
d0080c88:	4812      	ldr	r0, [pc, #72]	; (d0080cd4 <setup_background_bub+0x340>)
d0080c8a:	702b      	strb	r3, [r5, #0]
d0080c8c:	7003      	strb	r3, [r0, #0]
d0080c8e:	6816      	ldr	r6, [r2, #0]
d0080c90:	2202      	movs	r2, #2
d0080c92:	4911      	ldr	r1, [pc, #68]	; (d0080cd8 <setup_background_bub+0x344>)
d0080c94:	4d11      	ldr	r5, [pc, #68]	; (d0080cdc <setup_background_bub+0x348>)
d0080c96:	4812      	ldr	r0, [pc, #72]	; (d0080ce0 <setup_background_bub+0x34c>)
d0080c98:	702b      	strb	r3, [r5, #0]
d0080c9a:	600e      	str	r6, [r1, #0]
d0080c9c:	21b4      	movs	r1, #180	; 0xb4
d0080c9e:	8007      	strh	r7, [r0, #0]
d0080ca0:	4e10      	ldr	r6, [pc, #64]	; (d0080ce4 <setup_background_bub+0x350>)
d0080ca2:	4d11      	ldr	r5, [pc, #68]	; (d0080ce8 <setup_background_bub+0x354>)
d0080ca4:	4811      	ldr	r0, [pc, #68]	; (d0080cec <setup_background_bub+0x358>)
d0080ca6:	4b12      	ldr	r3, [pc, #72]	; (d0080cf0 <setup_background_bub+0x35c>)
d0080ca8:	8032      	strh	r2, [r6, #0]
d0080caa:	802a      	strh	r2, [r5, #0]
d0080cac:	8004      	strh	r4, [r0, #0]
d0080cae:	8019      	strh	r1, [r3, #0]
d0080cb0:	b007      	add	sp, #28
d0080cb2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080cb6:	bf00      	nop
d0080cb8:	d0082f68 	.word	0xd0082f68
d0080cbc:	d00852a8 	.word	0xd00852a8
d0080cc0:	d009c10c 	.word	0xd009c10c
d0080cc4:	d009bdc0 	.word	0xd009bdc0
d0080cc8:	d009c108 	.word	0xd009c108
d0080ccc:	d009c110 	.word	0xd009c110
d0080cd0:	d009c102 	.word	0xd009c102
d0080cd4:	d009c109 	.word	0xd009c109
d0080cd8:	d009c104 	.word	0xd009c104
d0080cdc:	d009c38c 	.word	0xd009c38c
d0080ce0:	d009c384 	.word	0xd009c384
d0080ce4:	d009c388 	.word	0xd009c388
d0080ce8:	d009c38a 	.word	0xd009c38a
d0080cec:	d009c390 	.word	0xd009c390
d0080cf0:	d009c38e 	.word	0xd009c38e

d0080cf4 <do_bubbastix_playdemo_screensaver>:
d0080cf4:	4bb9      	ldr	r3, [pc, #740]	; (d0080fdc <do_bubbastix_playdemo_screensaver+0x2e8>)
d0080cf6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080cfa:	781b      	ldrb	r3, [r3, #0]
d0080cfc:	b089      	sub	sp, #36	; 0x24
d0080cfe:	2b03      	cmp	r3, #3
d0080d00:	f000 8241 	beq.w	d0081186 <do_bubbastix_playdemo_screensaver+0x492>
d0080d04:	49b6      	ldr	r1, [pc, #728]	; (d0080fe0 <do_bubbastix_playdemo_screensaver+0x2ec>)
d0080d06:	4db7      	ldr	r5, [pc, #732]	; (d0080fe4 <do_bubbastix_playdemo_screensaver+0x2f0>)
d0080d08:	880b      	ldrh	r3, [r1, #0]
d0080d0a:	1e5a      	subs	r2, r3, #1
d0080d0c:	b212      	sxth	r2, r2
d0080d0e:	2a01      	cmp	r2, #1
d0080d10:	800a      	strh	r2, [r1, #0]
d0080d12:	f040 81b1 	bne.w	d0081078 <do_bubbastix_playdemo_screensaver+0x384>
d0080d16:	f895 c000 	ldrb.w	ip, [r5]
d0080d1a:	2302      	movs	r3, #2
d0080d1c:	4ab2      	ldr	r2, [pc, #712]	; (d0080fe8 <do_bubbastix_playdemo_screensaver+0x2f4>)
d0080d1e:	f10c 0401 	add.w	r4, ip, #1
d0080d22:	48b2      	ldr	r0, [pc, #712]	; (d0080fec <do_bubbastix_playdemo_screensaver+0x2f8>)
d0080d24:	6a11      	ldr	r1, [r2, #32]
d0080d26:	f1bc 0f03 	cmp.w	ip, #3
d0080d2a:	b2e4      	uxtb	r4, r4
d0080d2c:	9203      	str	r2, [sp, #12]
d0080d2e:	9006      	str	r0, [sp, #24]
d0080d30:	460a      	mov	r2, r1
d0080d32:	6001      	str	r1, [r0, #0]
d0080d34:	702c      	strb	r4, [r5, #0]
d0080d36:	f240 82ac 	bls.w	d0081292 <do_bubbastix_playdemo_screensaver+0x59e>
d0080d3a:	48ad      	ldr	r0, [pc, #692]	; (d0080ff0 <do_bubbastix_playdemo_screensaver+0x2fc>)
d0080d3c:	4fad      	ldr	r7, [pc, #692]	; (d0080ff4 <do_bubbastix_playdemo_screensaver+0x300>)
d0080d3e:	f8df b2f4 	ldr.w	fp, [pc, #756]	; d0081034 <do_bubbastix_playdemo_screensaver+0x340>
d0080d42:	9007      	str	r0, [sp, #28]
d0080d44:	4eac      	ldr	r6, [pc, #688]	; (d0080ff8 <do_bubbastix_playdemo_screensaver+0x304>)
d0080d46:	f04f 0c00 	mov.w	ip, #0
d0080d4a:	7834      	ldrb	r4, [r6, #0]
d0080d4c:	f885 c000 	strb.w	ip, [r5]
d0080d50:	2c06      	cmp	r4, #6
d0080d52:	f200 827f 	bhi.w	d0081254 <do_bubbastix_playdemo_screensaver+0x560>
d0080d56:	3401      	adds	r4, #1
d0080d58:	4291      	cmp	r1, r2
d0080d5a:	b2e4      	uxtb	r4, r4
d0080d5c:	7034      	strb	r4, [r6, #0]
d0080d5e:	f000 827f 	beq.w	d0081260 <do_bubbastix_playdemo_screensaver+0x56c>
d0080d62:	48a6      	ldr	r0, [pc, #664]	; (d0080ffc <do_bubbastix_playdemo_screensaver+0x308>)
d0080d64:	9a03      	ldr	r2, [sp, #12]
d0080d66:	9004      	str	r0, [sp, #16]
d0080d68:	48a5      	ldr	r0, [pc, #660]	; (d0081000 <do_bubbastix_playdemo_screensaver+0x30c>)
d0080d6a:	f852 2024 	ldr.w	r2, [r2, r4, lsl #2]
d0080d6e:	9005      	str	r0, [sp, #20]
d0080d70:	f8df a2c4 	ldr.w	sl, [pc, #708]	; d0081038 <do_bubbastix_playdemo_screensaver+0x344>
d0080d74:	9806      	ldr	r0, [sp, #24]
d0080d76:	f8df 82c4 	ldr.w	r8, [pc, #708]	; d008103c <do_bubbastix_playdemo_screensaver+0x348>
d0080d7a:	6002      	str	r2, [r0, #0]
d0080d7c:	4291      	cmp	r1, r2
d0080d7e:	d027      	beq.n	d0080dd0 <do_bubbastix_playdemo_screensaver+0xdc>
d0080d80:	49a0      	ldr	r1, [pc, #640]	; (d0081004 <do_bubbastix_playdemo_screensaver+0x310>)
d0080d82:	780a      	ldrb	r2, [r1, #0]
d0080d84:	2a03      	cmp	r2, #3
d0080d86:	f200 81d2 	bhi.w	d008112e <do_bubbastix_playdemo_screensaver+0x43a>
d0080d8a:	3201      	adds	r2, #1
d0080d8c:	700a      	strb	r2, [r1, #0]
d0080d8e:	f203 236b 	addw	r3, r3, #619	; 0x26b
d0080d92:	b29b      	uxth	r3, r3
d0080d94:	f5b3 7f1b 	cmp.w	r3, #620	; 0x26c
d0080d98:	d91a      	bls.n	d0080dd0 <do_bubbastix_playdemo_screensaver+0xdc>
d0080d9a:	4a9b      	ldr	r2, [pc, #620]	; (d0081008 <do_bubbastix_playdemo_screensaver+0x314>)
d0080d9c:	f8b8 3000 	ldrh.w	r3, [r8]
d0080da0:	8812      	ldrh	r2, [r2, #0]
d0080da2:	4413      	add	r3, r2
d0080da4:	b21b      	sxth	r3, r3
d0080da6:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0080daa:	f8a8 3000 	strh.w	r3, [r8]
d0080dae:	dd04      	ble.n	d0080dba <do_bubbastix_playdemo_screensaver+0xc6>
d0080db0:	4a8a      	ldr	r2, [pc, #552]	; (d0080fdc <do_bubbastix_playdemo_screensaver+0x2e8>)
d0080db2:	7813      	ldrb	r3, [r2, #0]
d0080db4:	f043 0302 	orr.w	r3, r3, #2
d0080db8:	7013      	strb	r3, [r2, #0]
d0080dba:	9905      	ldr	r1, [sp, #20]
d0080dbc:	4a93      	ldr	r2, [pc, #588]	; (d008100c <do_bubbastix_playdemo_screensaver+0x318>)
d0080dbe:	880b      	ldrh	r3, [r1, #0]
d0080dc0:	8812      	ldrh	r2, [r2, #0]
d0080dc2:	4413      	add	r3, r2
d0080dc4:	b21b      	sxth	r3, r3
d0080dc6:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
d0080dca:	800b      	strh	r3, [r1, #0]
d0080dcc:	f300 8255 	bgt.w	d008127a <do_bubbastix_playdemo_screensaver+0x586>
d0080dd0:	2500      	movs	r5, #0
d0080dd2:	4c8f      	ldr	r4, [pc, #572]	; (d0081010 <do_bubbastix_playdemo_screensaver+0x31c>)
d0080dd4:	f04f 0960 	mov.w	r9, #96	; 0x60
d0080dd8:	488e      	ldr	r0, [pc, #568]	; (d0081014 <do_bubbastix_playdemo_screensaver+0x320>)
d0080dda:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080dde:	f44f 738e 	mov.w	r3, #284	; 0x11c
d0080de2:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080de6:	22d6      	movs	r2, #214	; 0xd6
d0080de8:	7ba6      	ldrb	r6, [r4, #14]
d0080dea:	ea4e 210c 	orr.w	r1, lr, ip, lsl #8
d0080dee:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0080df2:	ea41 4c06 	orr.w	ip, r1, r6, lsl #16
d0080df6:	8839      	ldrh	r1, [r7, #0]
d0080df8:	ea4c 660e 	orr.w	r6, ip, lr, lsl #24
d0080dfc:	4429      	add	r1, r5
d0080dfe:	441d      	add	r5, r3
d0080e00:	6876      	ldr	r6, [r6, #4]
d0080e02:	b209      	sxth	r1, r1
d0080e04:	f8cd 9000 	str.w	r9, [sp]
d0080e08:	69b6      	ldr	r6, [r6, #24]
d0080e0a:	47b0      	blx	r6
d0080e0c:	f5b5 7f55 	cmp.w	r5, #852	; 0x354
d0080e10:	4880      	ldr	r0, [pc, #512]	; (d0081014 <do_bubbastix_playdemo_screensaver+0x320>)
d0080e12:	d1e2      	bne.n	d0080dda <do_bubbastix_playdemo_screensaver+0xe6>
d0080e14:	7b23      	ldrb	r3, [r4, #12]
d0080e16:	2520      	movs	r5, #32
d0080e18:	7b60      	ldrb	r0, [r4, #13]
d0080e1a:	7ba6      	ldrb	r6, [r4, #14]
d0080e1c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0080e20:	f89a 1000 	ldrb.w	r1, [sl]
d0080e24:	4a7c      	ldr	r2, [pc, #496]	; (d0081018 <do_bubbastix_playdemo_screensaver+0x324>)
d0080e26:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0080e2a:	7be6      	ldrb	r6, [r4, #15]
d0080e2c:	9804      	ldr	r0, [sp, #16]
d0080e2e:	ea43 6606 	orr.w	r6, r3, r6, lsl #24
d0080e32:	5c53      	ldrb	r3, [r2, r1]
d0080e34:	6800      	ldr	r0, [r0, #0]
d0080e36:	22de      	movs	r2, #222	; 0xde
d0080e38:	6876      	ldr	r6, [r6, #4]
d0080e3a:	f9b8 1000 	ldrsh.w	r1, [r8]
d0080e3e:	9500      	str	r5, [sp, #0]
d0080e40:	69b5      	ldr	r5, [r6, #24]
d0080e42:	47a8      	blx	r5
d0080e44:	7b21      	ldrb	r1, [r4, #12]
d0080e46:	7b62      	ldrb	r2, [r4, #13]
d0080e48:	2570      	movs	r5, #112	; 0x70
d0080e4a:	7ba0      	ldrb	r0, [r4, #14]
d0080e4c:	2340      	movs	r3, #64	; 0x40
d0080e4e:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0080e52:	7be6      	ldrb	r6, [r4, #15]
d0080e54:	f8b8 1000 	ldrh.w	r1, [r8]
d0080e58:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0080e5c:	226e      	movs	r2, #110	; 0x6e
d0080e5e:	3104      	adds	r1, #4
d0080e60:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d0080e64:	486d      	ldr	r0, [pc, #436]	; (d008101c <do_bubbastix_playdemo_screensaver+0x328>)
d0080e66:	b209      	sxth	r1, r1
d0080e68:	6876      	ldr	r6, [r6, #4]
d0080e6a:	9500      	str	r5, [sp, #0]
d0080e6c:	69b5      	ldr	r5, [r6, #24]
d0080e6e:	47a8      	blx	r5
d0080e70:	9b06      	ldr	r3, [sp, #24]
d0080e72:	6818      	ldr	r0, [r3, #0]
d0080e74:	9b03      	ldr	r3, [sp, #12]
d0080e76:	6a1b      	ldr	r3, [r3, #32]
d0080e78:	4283      	cmp	r3, r0
d0080e7a:	f000 81bf 	beq.w	d00811fc <do_bubbastix_playdemo_screensaver+0x508>
d0080e7e:	7b26      	ldrb	r6, [r4, #12]
d0080e80:	22bb      	movs	r2, #187	; 0xbb
d0080e82:	7b63      	ldrb	r3, [r4, #13]
d0080e84:	7ba5      	ldrb	r5, [r4, #14]
d0080e86:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d0080e8a:	7be3      	ldrb	r3, [r4, #15]
d0080e8c:	4f64      	ldr	r7, [pc, #400]	; (d0081020 <do_bubbastix_playdemo_screensaver+0x32c>)
d0080e8e:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d0080e92:	4e59      	ldr	r6, [pc, #356]	; (d0080ff8 <do_bubbastix_playdemo_screensaver+0x304>)
d0080e94:	9905      	ldr	r1, [sp, #20]
d0080e96:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0080e9a:	7835      	ldrb	r5, [r6, #0]
d0080e9c:	f9b1 1000 	ldrsh.w	r1, [r1]
d0080ea0:	685e      	ldr	r6, [r3, #4]
d0080ea2:	5d7f      	ldrb	r7, [r7, r5]
d0080ea4:	4b5f      	ldr	r3, [pc, #380]	; (d0081024 <do_bubbastix_playdemo_screensaver+0x330>)
d0080ea6:	9700      	str	r7, [sp, #0]
d0080ea8:	5d5b      	ldrb	r3, [r3, r5]
d0080eaa:	69b5      	ldr	r5, [r6, #24]
d0080eac:	47a8      	blx	r5
d0080eae:	2700      	movs	r7, #0
d0080eb0:	f04f 0850 	mov.w	r8, #80	; 0x50
d0080eb4:	f8df 9188 	ldr.w	r9, [pc, #392]	; d0081040 <do_bubbastix_playdemo_screensaver+0x34c>
d0080eb8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0080ebc:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080ec0:	7b61      	ldrb	r1, [r4, #13]
d0080ec2:	22f0      	movs	r2, #240	; 0xf0
d0080ec4:	7ba6      	ldrb	r6, [r4, #14]
d0080ec6:	4648      	mov	r0, r9
d0080ec8:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0080ecc:	7be5      	ldrb	r5, [r4, #15]
d0080ece:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d0080ed2:	f8bb 1000 	ldrh.w	r1, [fp]
d0080ed6:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0080eda:	4439      	add	r1, r7
d0080edc:	441f      	add	r7, r3
d0080ede:	686d      	ldr	r5, [r5, #4]
d0080ee0:	b209      	sxth	r1, r1
d0080ee2:	f8cd 8000 	str.w	r8, [sp]
d0080ee6:	69ad      	ldr	r5, [r5, #24]
d0080ee8:	47a8      	blx	r5
d0080eea:	f5b7 7f70 	cmp.w	r7, #960	; 0x3c0
d0080eee:	d1e3      	bne.n	d0080eb8 <do_bubbastix_playdemo_screensaver+0x1c4>
d0080ef0:	4e4d      	ldr	r6, [pc, #308]	; (d0081028 <do_bubbastix_playdemo_screensaver+0x334>)
d0080ef2:	2121      	movs	r1, #33	; 0x21
d0080ef4:	9b07      	ldr	r3, [sp, #28]
d0080ef6:	7832      	ldrb	r2, [r6, #0]
d0080ef8:	8818      	ldrh	r0, [r3, #0]
d0080efa:	3201      	adds	r2, #1
d0080efc:	4b4b      	ldr	r3, [pc, #300]	; (d008102c <do_bubbastix_playdemo_screensaver+0x338>)
d0080efe:	b252      	sxtb	r2, r2
d0080f00:	8298      	strh	r0, [r3, #20]
d0080f02:	82d9      	strh	r1, [r3, #22]
d0080f04:	2a02      	cmp	r2, #2
d0080f06:	f300 813a 	bgt.w	d008117e <do_bubbastix_playdemo_screensaver+0x48a>
d0080f0a:	7032      	strb	r2, [r6, #0]
d0080f0c:	4d48      	ldr	r5, [pc, #288]	; (d0081030 <do_bubbastix_playdemo_screensaver+0x33c>)
d0080f0e:	f04f 0800 	mov.w	r8, #0
d0080f12:	f8df b130 	ldr.w	fp, [pc, #304]	; d0081044 <do_bubbastix_playdemo_screensaver+0x350>
d0080f16:	f44f 7afa 	mov.w	sl, #500	; 0x1f4
d0080f1a:	f995 3024 	ldrsb.w	r3, [r5, #36]	; 0x24
d0080f1e:	f505 7700 	add.w	r7, r5, #512	; 0x200
d0080f22:	f64f 79f0 	movw	r9, #65520	; 0xfff0
d0080f26:	2b09      	cmp	r3, #9
d0080f28:	f300 808e 	bgt.w	d0081048 <do_bubbastix_playdemo_screensaver+0x354>
d0080f2c:	3301      	adds	r3, #1
d0080f2e:	f885 3024 	strb.w	r3, [r5, #36]	; 0x24
d0080f32:	2a00      	cmp	r2, #0
d0080f34:	f040 8095 	bne.w	d0081062 <do_bubbastix_playdemo_screensaver+0x36e>
d0080f38:	f995 0028 	ldrsb.w	r0, [r5, #40]	; 0x28
d0080f3c:	f995 1026 	ldrsb.w	r1, [r5, #38]	; 0x26
d0080f40:	f995 3029 	ldrsb.w	r3, [r5, #41]	; 0x29
d0080f44:	4401      	add	r1, r0
d0080f46:	f995 0027 	ldrsb.w	r0, [r5, #39]	; 0x27
d0080f4a:	f895 202a 	ldrb.w	r2, [r5, #42]	; 0x2a
d0080f4e:	4403      	add	r3, r0
d0080f50:	f8b5 c022 	ldrh.w	ip, [r5, #34]	; 0x22
d0080f54:	8c28      	ldrh	r0, [r5, #32]
d0080f56:	3201      	adds	r2, #1
d0080f58:	4463      	add	r3, ip
d0080f5a:	1a40      	subs	r0, r0, r1
d0080f5c:	f002 021f 	and.w	r2, r2, #31
d0080f60:	b21b      	sxth	r3, r3
d0080f62:	b200      	sxth	r0, r0
d0080f64:	f885 202a 	strb.w	r2, [r5, #42]	; 0x2a
d0080f68:	f995 102a 	ldrsb.w	r1, [r5, #42]	; 0x2a
d0080f6c:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0080f70:	f101 0208 	add.w	r2, r1, #8
d0080f74:	f81b 1001 	ldrb.w	r1, [fp, r1]
d0080f78:	8428      	strh	r0, [r5, #32]
d0080f7a:	3040      	adds	r0, #64	; 0x40
d0080f7c:	f002 021f 	and.w	r2, r2, #31
d0080f80:	f885 1026 	strb.w	r1, [r5, #38]	; 0x26
d0080f84:	846b      	strh	r3, [r5, #34]	; 0x22
d0080f86:	4628      	mov	r0, r5
d0080f88:	f81b 2002 	ldrb.w	r2, [fp, r2]
d0080f8c:	f105 0540 	add.w	r5, r5, #64	; 0x40
d0080f90:	bfb8      	it	lt
d0080f92:	f825 ac20 	strhlt.w	sl, [r5, #-32]
d0080f96:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080f9a:	f805 2c19 	strb.w	r2, [r5, #-25]
d0080f9e:	7b62      	ldrb	r2, [r4, #13]
d0080fa0:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0080fa4:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
d0080fa8:	7be3      	ldrb	r3, [r4, #15]
d0080faa:	bfc8      	it	gt
d0080fac:	f825 9c1e 	strhgt.w	r9, [r5, #-30]
d0080fb0:	ea41 420e 	orr.w	r2, r1, lr, lsl #16
d0080fb4:	f855 1c20 	ldr.w	r1, [r5, #-32]
d0080fb8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080fbc:	f845 1c2c 	str.w	r1, [r5, #-44]
d0080fc0:	685b      	ldr	r3, [r3, #4]
d0080fc2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0080fc4:	4798      	blx	r3
d0080fc6:	42bd      	cmp	r5, r7
d0080fc8:	f000 80c8 	beq.w	d008115c <do_bubbastix_playdemo_screensaver+0x468>
d0080fcc:	f995 3024 	ldrsb.w	r3, [r5, #36]	; 0x24
d0080fd0:	f996 2000 	ldrsb.w	r2, [r6]
d0080fd4:	2b09      	cmp	r3, #9
d0080fd6:	dda9      	ble.n	d0080f2c <do_bubbastix_playdemo_screensaver+0x238>
d0080fd8:	e036      	b.n	d0081048 <do_bubbastix_playdemo_screensaver+0x354>
d0080fda:	bf00      	nop
d0080fdc:	d009c38c 	.word	0xd009c38c
d0080fe0:	d009c38e 	.word	0xd009c38e
d0080fe4:	d009c108 	.word	0xd009c108
d0080fe8:	d009bdc0 	.word	0xd009bdc0
d0080fec:	d009c104 	.word	0xd009c104
d0080ff0:	d009c100 	.word	0xd009c100
d0080ff4:	d009c386 	.word	0xd009c386
d0080ff8:	d009c102 	.word	0xd009c102
d0080ffc:	d009c10c 	.word	0xd009c10c
d0081000:	d009c390 	.word	0xd009c390
d0081004:	d009c110 	.word	0xd009c110
d0081008:	d009c388 	.word	0xd009c388
d008100c:	d009c38a 	.word	0xd009c38a
d0081010:	2001f000 	.word	0x2001f000
d0081014:	d009472c 	.word	0xd009472c
d0081018:	d009bd00 	.word	0xd009bd00
d008101c:	d008d8c8 	.word	0xd008d8c8
d0081020:	d0094714 	.word	0xd0094714
d0081024:	d0094720 	.word	0xd0094720
d0081028:	d009c322 	.word	0xd009c322
d008102c:	d009c0e0 	.word	0xd009c0e0
d0081030:	d009c120 	.word	0xd009c120
d0081034:	d009c320 	.word	0xd009c320
d0081038:	d009c109 	.word	0xd009c109
d008103c:	d009c384 	.word	0xd009c384
d0081040:	d00874c8 	.word	0xd00874c8
d0081044:	d009bcc4 	.word	0xd009bcc4
d0081048:	f995 3025 	ldrsb.w	r3, [r5, #37]	; 0x25
d008104c:	f885 8024 	strb.w	r8, [r5, #36]	; 0x24
d0081050:	2b00      	cmp	r3, #0
d0081052:	dd7d      	ble.n	d0081150 <do_bubbastix_playdemo_screensaver+0x45c>
d0081054:	2300      	movs	r3, #0
d0081056:	f885 8025 	strb.w	r8, [r5, #37]	; 0x25
d008105a:	76eb      	strb	r3, [r5, #27]
d008105c:	2a00      	cmp	r2, #0
d008105e:	f43f af6b 	beq.w	d0080f38 <do_bubbastix_playdemo_screensaver+0x244>
d0081062:	f995 1028 	ldrsb.w	r1, [r5, #40]	; 0x28
d0081066:	8c28      	ldrh	r0, [r5, #32]
d0081068:	f995 3029 	ldrsb.w	r3, [r5, #41]	; 0x29
d008106c:	8c6a      	ldrh	r2, [r5, #34]	; 0x22
d008106e:	1a40      	subs	r0, r0, r1
d0081070:	4413      	add	r3, r2
d0081072:	b200      	sxth	r0, r0
d0081074:	b21b      	sxth	r3, r3
d0081076:	e777      	b.n	d0080f68 <do_bubbastix_playdemo_screensaver+0x274>
d0081078:	323c      	adds	r2, #60	; 0x3c
d008107a:	f040 812d 	bne.w	d00812d8 <do_bubbastix_playdemo_screensaver+0x5e4>
d008107e:	f895 c000 	ldrb.w	ip, [r5]
d0081082:	4a9b      	ldr	r2, [pc, #620]	; (d00812f0 <do_bubbastix_playdemo_screensaver+0x5fc>)
d0081084:	f10c 0401 	add.w	r4, ip, #1
d0081088:	499a      	ldr	r1, [pc, #616]	; (d00812f4 <do_bubbastix_playdemo_screensaver+0x600>)
d008108a:	9203      	str	r2, [sp, #12]
d008108c:	b2e4      	uxtb	r4, r4
d008108e:	6812      	ldr	r2, [r2, #0]
d0081090:	9106      	str	r1, [sp, #24]
d0081092:	600a      	str	r2, [r1, #0]
d0081094:	f203 216a 	addw	r1, r3, #618	; 0x26a
d0081098:	f240 266a 	movw	r6, #618	; 0x26a
d008109c:	b289      	uxth	r1, r1
d008109e:	42b1      	cmp	r1, r6
d00810a0:	f200 8105 	bhi.w	d00812ae <do_bubbastix_playdemo_screensaver+0x5ba>
d00810a4:	9903      	ldr	r1, [sp, #12]
d00810a6:	6a09      	ldr	r1, [r1, #32]
d00810a8:	4291      	cmp	r1, r2
d00810aa:	f000 80ec 	beq.w	d0081286 <do_bubbastix_playdemo_screensaver+0x592>
d00810ae:	4f92      	ldr	r7, [pc, #584]	; (d00812f8 <do_bubbastix_playdemo_screensaver+0x604>)
d00810b0:	4e92      	ldr	r6, [pc, #584]	; (d00812fc <do_bubbastix_playdemo_screensaver+0x608>)
d00810b2:	f8df b278 	ldr.w	fp, [pc, #632]	; d008132c <do_bubbastix_playdemo_screensaver+0x638>
d00810b6:	f8b7 9000 	ldrh.w	r9, [r7]
d00810ba:	4630      	mov	r0, r6
d00810bc:	f8bb a000 	ldrh.w	sl, [fp]
d00810c0:	f1a9 0802 	sub.w	r8, r9, #2
d00810c4:	9607      	str	r6, [sp, #28]
d00810c6:	8836      	ldrh	r6, [r6, #0]
d00810c8:	f1aa 0e03 	sub.w	lr, sl, #3
d00810cc:	fa0f f888 	sxth.w	r8, r8
d00810d0:	3e05      	subs	r6, #5
d00810d2:	fa0f fe8e 	sxth.w	lr, lr
d00810d6:	f518 7f8e 	cmn.w	r8, #284	; 0x11c
d00810da:	f8a7 8000 	strh.w	r8, [r7]
d00810de:	b236      	sxth	r6, r6
d00810e0:	f8ab e000 	strh.w	lr, [fp]
d00810e4:	8006      	strh	r6, [r0, #0]
d00810e6:	da03      	bge.n	d00810f0 <do_bubbastix_playdemo_screensaver+0x3fc>
d00810e8:	f509 788d 	add.w	r8, r9, #282	; 0x11a
d00810ec:	f8a7 8000 	strh.w	r8, [r7]
d00810f0:	3640      	adds	r6, #64	; 0x40
d00810f2:	da03      	bge.n	d00810fc <do_bubbastix_playdemo_screensaver+0x408>
d00810f4:	f44f 7602 	mov.w	r6, #520	; 0x208
d00810f8:	9807      	ldr	r0, [sp, #28]
d00810fa:	8006      	strh	r6, [r0, #0]
d00810fc:	f51e 7fa0 	cmn.w	lr, #320	; 0x140
d0081100:	da03      	bge.n	d008110a <do_bubbastix_playdemo_screensaver+0x416>
d0081102:	f20a 1a3d 	addw	sl, sl, #317	; 0x13d
d0081106:	f8ab a000 	strh.w	sl, [fp]
d008110a:	f1bc 0f03 	cmp.w	ip, #3
d008110e:	702c      	strb	r4, [r5, #0]
d0081110:	f63f ae18 	bhi.w	d0080d44 <do_bubbastix_playdemo_screensaver+0x50>
d0081114:	4a7a      	ldr	r2, [pc, #488]	; (d0081300 <do_bubbastix_playdemo_screensaver+0x60c>)
d0081116:	497b      	ldr	r1, [pc, #492]	; (d0081304 <do_bubbastix_playdemo_screensaver+0x610>)
d0081118:	9204      	str	r2, [sp, #16]
d008111a:	4a7b      	ldr	r2, [pc, #492]	; (d0081308 <do_bubbastix_playdemo_screensaver+0x614>)
d008111c:	f8df a210 	ldr.w	sl, [pc, #528]	; d0081330 <do_bubbastix_playdemo_screensaver+0x63c>
d0081120:	9205      	str	r2, [sp, #20]
d0081122:	780a      	ldrb	r2, [r1, #0]
d0081124:	f8df 820c 	ldr.w	r8, [pc, #524]	; d0081334 <do_bubbastix_playdemo_screensaver+0x640>
d0081128:	2a03      	cmp	r2, #3
d008112a:	f67f ae2e 	bls.w	d0080d8a <do_bubbastix_playdemo_screensaver+0x96>
d008112e:	f89a 2000 	ldrb.w	r2, [sl]
d0081132:	2400      	movs	r4, #0
d0081134:	2a02      	cmp	r2, #2
d0081136:	700c      	strb	r4, [r1, #0]
d0081138:	f200 809b 	bhi.w	d0081272 <do_bubbastix_playdemo_screensaver+0x57e>
d008113c:	3201      	adds	r2, #1
d008113e:	b2d2      	uxtb	r2, r2
d0081140:	f88a 2000 	strb.w	r2, [sl]
d0081144:	4971      	ldr	r1, [pc, #452]	; (d008130c <do_bubbastix_playdemo_screensaver+0x618>)
d0081146:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
d008114a:	9904      	ldr	r1, [sp, #16]
d008114c:	600a      	str	r2, [r1, #0]
d008114e:	e61e      	b.n	d0080d8e <do_bubbastix_playdemo_screensaver+0x9a>
d0081150:	3301      	adds	r3, #1
d0081152:	b2db      	uxtb	r3, r3
d0081154:	f885 3025 	strb.w	r3, [r5, #37]	; 0x25
d0081158:	76eb      	strb	r3, [r5, #27]
d008115a:	e77f      	b.n	d008105c <do_bubbastix_playdemo_screensaver+0x368>
d008115c:	7b23      	ldrb	r3, [r4, #12]
d008115e:	7b62      	ldrb	r2, [r4, #13]
d0081160:	7ba1      	ldrb	r1, [r4, #14]
d0081162:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081166:	7be2      	ldrb	r2, [r4, #15]
d0081168:	4869      	ldr	r0, [pc, #420]	; (d0081310 <do_bubbastix_playdemo_screensaver+0x61c>)
d008116a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008116e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081172:	685b      	ldr	r3, [r3, #4]
d0081174:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0081176:	b009      	add	sp, #36	; 0x24
d0081178:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d008117c:	4718      	bx	r3
d008117e:	2300      	movs	r3, #0
d0081180:	461a      	mov	r2, r3
d0081182:	7033      	strb	r3, [r6, #0]
d0081184:	e6c2      	b.n	d0080f0c <do_bubbastix_playdemo_screensaver+0x218>
d0081186:	495a      	ldr	r1, [pc, #360]	; (d00812f0 <do_bubbastix_playdemo_screensaver+0x5fc>)
d0081188:	2400      	movs	r4, #0
d008118a:	485a      	ldr	r0, [pc, #360]	; (d00812f4 <do_bubbastix_playdemo_screensaver+0x600>)
d008118c:	f64f 7e24 	movw	lr, #65316	; 0xff24
d0081190:	680a      	ldr	r2, [r1, #0]
d0081192:	2502      	movs	r5, #2
d0081194:	4b5a      	ldr	r3, [pc, #360]	; (d0081300 <do_bubbastix_playdemo_screensaver+0x60c>)
d0081196:	f64f 7cce 	movw	ip, #65486	; 0xffce
d008119a:	6002      	str	r2, [r0, #0]
d008119c:	27b3      	movs	r7, #179	; 0xb3
d008119e:	f8df 8198 	ldr.w	r8, [pc, #408]	; d0081338 <do_bubbastix_playdemo_screensaver+0x644>
d00811a2:	2601      	movs	r6, #1
d00811a4:	f8df 9194 	ldr.w	r9, [pc, #404]	; d008133c <do_bubbastix_playdemo_screensaver+0x648>
d00811a8:	9006      	str	r0, [sp, #24]
d00811aa:	4855      	ldr	r0, [pc, #340]	; (d0081300 <do_bubbastix_playdemo_screensaver+0x60c>)
d00811ac:	f888 4000 	strb.w	r4, [r8]
d00811b0:	f8c0 9000 	str.w	r9, [r0]
d00811b4:	f8df a178 	ldr.w	sl, [pc, #376]	; d0081330 <do_bubbastix_playdemo_screensaver+0x63c>
d00811b8:	4856      	ldr	r0, [pc, #344]	; (d0081314 <do_bubbastix_playdemo_screensaver+0x620>)
d00811ba:	f8df 8178 	ldr.w	r8, [pc, #376]	; d0081334 <do_bubbastix_playdemo_screensaver+0x640>
d00811be:	9304      	str	r3, [sp, #16]
d00811c0:	4b50      	ldr	r3, [pc, #320]	; (d0081304 <do_bubbastix_playdemo_screensaver+0x610>)
d00811c2:	7004      	strb	r4, [r0, #0]
d00811c4:	701c      	strb	r4, [r3, #0]
d00811c6:	23b4      	movs	r3, #180	; 0xb4
d00811c8:	484f      	ldr	r0, [pc, #316]	; (d0081308 <do_bubbastix_playdemo_screensaver+0x614>)
d00811ca:	f88a 4000 	strb.w	r4, [sl]
d00811ce:	f8a8 e000 	strh.w	lr, [r8]
d00811d2:	4c51      	ldr	r4, [pc, #324]	; (d0081318 <do_bubbastix_playdemo_screensaver+0x624>)
d00811d4:	f8df e168 	ldr.w	lr, [pc, #360]	; d0081340 <do_bubbastix_playdemo_screensaver+0x64c>
d00811d8:	8025      	strh	r5, [r4, #0]
d00811da:	f8ae 5000 	strh.w	r5, [lr]
d00811de:	4c4f      	ldr	r4, [pc, #316]	; (d008131c <do_bubbastix_playdemo_screensaver+0x628>)
d00811e0:	4d4f      	ldr	r5, [pc, #316]	; (d0081320 <do_bubbastix_playdemo_screensaver+0x62c>)
d00811e2:	9005      	str	r0, [sp, #20]
d00811e4:	f8a0 c000 	strh.w	ip, [r0]
d00811e8:	4844      	ldr	r0, [pc, #272]	; (d00812fc <do_bubbastix_playdemo_screensaver+0x608>)
d00811ea:	9103      	str	r1, [sp, #12]
d00811ec:	8027      	strh	r7, [r4, #0]
d00811ee:	6a09      	ldr	r1, [r1, #32]
d00811f0:	4f41      	ldr	r7, [pc, #260]	; (d00812f8 <do_bubbastix_playdemo_screensaver+0x604>)
d00811f2:	f8df b138 	ldr.w	fp, [pc, #312]	; d008132c <do_bubbastix_playdemo_screensaver+0x638>
d00811f6:	702e      	strb	r6, [r5, #0]
d00811f8:	9007      	str	r0, [sp, #28]
d00811fa:	e5bf      	b.n	d0080d7c <do_bubbastix_playdemo_screensaver+0x88>
d00811fc:	7b22      	ldrb	r2, [r4, #12]
d00811fe:	2610      	movs	r6, #16
d0081200:	7b65      	ldrb	r5, [r4, #13]
d0081202:	2328      	movs	r3, #40	; 0x28
d0081204:	7ba0      	ldrb	r0, [r4, #14]
d0081206:	2745      	movs	r7, #69	; 0x45
d0081208:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
d008120c:	7be5      	ldrb	r5, [r4, #15]
d008120e:	f8b8 1000 	ldrh.w	r1, [r8]
d0081212:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0081216:	22de      	movs	r2, #222	; 0xde
d0081218:	4431      	add	r1, r6
d008121a:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d008121e:	4841      	ldr	r0, [pc, #260]	; (d0081324 <do_bubbastix_playdemo_screensaver+0x630>)
d0081220:	b209      	sxth	r1, r1
d0081222:	686d      	ldr	r5, [r5, #4]
d0081224:	9600      	str	r6, [sp, #0]
d0081226:	69ad      	ldr	r5, [r5, #24]
d0081228:	47a8      	blx	r5
d008122a:	7b22      	ldrb	r2, [r4, #12]
d008122c:	7b60      	ldrb	r0, [r4, #13]
d008122e:	2318      	movs	r3, #24
d0081230:	7ba6      	ldrb	r6, [r4, #14]
d0081232:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d0081236:	7be5      	ldrb	r5, [r4, #15]
d0081238:	9a05      	ldr	r2, [sp, #20]
d008123a:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d008123e:	483a      	ldr	r0, [pc, #232]	; (d0081328 <do_bubbastix_playdemo_screensaver+0x634>)
d0081240:	f9b2 1000 	ldrsh.w	r1, [r2]
d0081244:	22bb      	movs	r2, #187	; 0xbb
d0081246:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d008124a:	686d      	ldr	r5, [r5, #4]
d008124c:	9700      	str	r7, [sp, #0]
d008124e:	69ad      	ldr	r5, [r5, #24]
d0081250:	47a8      	blx	r5
d0081252:	e62c      	b.n	d0080eae <do_bubbastix_playdemo_screensaver+0x1ba>
d0081254:	4291      	cmp	r1, r2
d0081256:	4664      	mov	r4, ip
d0081258:	f886 c000 	strb.w	ip, [r6]
d008125c:	f47f ad81 	bne.w	d0080d62 <do_bubbastix_playdemo_screensaver+0x6e>
d0081260:	4b27      	ldr	r3, [pc, #156]	; (d0081300 <do_bubbastix_playdemo_screensaver+0x60c>)
d0081262:	f8df a0cc 	ldr.w	sl, [pc, #204]	; d0081330 <do_bubbastix_playdemo_screensaver+0x63c>
d0081266:	9304      	str	r3, [sp, #16]
d0081268:	4b27      	ldr	r3, [pc, #156]	; (d0081308 <do_bubbastix_playdemo_screensaver+0x614>)
d008126a:	f8df 80c8 	ldr.w	r8, [pc, #200]	; d0081334 <do_bubbastix_playdemo_screensaver+0x640>
d008126e:	9305      	str	r3, [sp, #20]
d0081270:	e5ae      	b.n	d0080dd0 <do_bubbastix_playdemo_screensaver+0xdc>
d0081272:	4622      	mov	r2, r4
d0081274:	f88a 4000 	strb.w	r4, [sl]
d0081278:	e764      	b.n	d0081144 <do_bubbastix_playdemo_screensaver+0x450>
d008127a:	4a26      	ldr	r2, [pc, #152]	; (d0081314 <do_bubbastix_playdemo_screensaver+0x620>)
d008127c:	7813      	ldrb	r3, [r2, #0]
d008127e:	f043 0301 	orr.w	r3, r3, #1
d0081282:	7013      	strb	r3, [r2, #0]
d0081284:	e5a4      	b.n	d0080dd0 <do_bubbastix_playdemo_screensaver+0xdc>
d0081286:	f1bc 0f03 	cmp.w	ip, #3
d008128a:	4611      	mov	r1, r2
d008128c:	702c      	strb	r4, [r5, #0]
d008128e:	f63f ad54 	bhi.w	d0080d3a <do_bubbastix_playdemo_screensaver+0x46>
d0081292:	4b1b      	ldr	r3, [pc, #108]	; (d0081300 <do_bubbastix_playdemo_screensaver+0x60c>)
d0081294:	f8df a098 	ldr.w	sl, [pc, #152]	; d0081330 <do_bubbastix_playdemo_screensaver+0x63c>
d0081298:	9304      	str	r3, [sp, #16]
d008129a:	4b1b      	ldr	r3, [pc, #108]	; (d0081308 <do_bubbastix_playdemo_screensaver+0x614>)
d008129c:	f8df 8094 	ldr.w	r8, [pc, #148]	; d0081334 <do_bubbastix_playdemo_screensaver+0x640>
d00812a0:	9305      	str	r3, [sp, #20]
d00812a2:	4b16      	ldr	r3, [pc, #88]	; (d00812fc <do_bubbastix_playdemo_screensaver+0x608>)
d00812a4:	4f14      	ldr	r7, [pc, #80]	; (d00812f8 <do_bubbastix_playdemo_screensaver+0x604>)
d00812a6:	f8df b084 	ldr.w	fp, [pc, #132]	; d008132c <do_bubbastix_playdemo_screensaver+0x638>
d00812aa:	9307      	str	r3, [sp, #28]
d00812ac:	e590      	b.n	d0080dd0 <do_bubbastix_playdemo_screensaver+0xdc>
d00812ae:	9903      	ldr	r1, [sp, #12]
d00812b0:	f1bc 0f03 	cmp.w	ip, #3
d00812b4:	702c      	strb	r4, [r5, #0]
d00812b6:	6a09      	ldr	r1, [r1, #32]
d00812b8:	f63f ad3f 	bhi.w	d0080d3a <do_bubbastix_playdemo_screensaver+0x46>
d00812bc:	4810      	ldr	r0, [pc, #64]	; (d0081300 <do_bubbastix_playdemo_screensaver+0x60c>)
d00812be:	f8df a070 	ldr.w	sl, [pc, #112]	; d0081330 <do_bubbastix_playdemo_screensaver+0x63c>
d00812c2:	9004      	str	r0, [sp, #16]
d00812c4:	4810      	ldr	r0, [pc, #64]	; (d0081308 <do_bubbastix_playdemo_screensaver+0x614>)
d00812c6:	f8df 806c 	ldr.w	r8, [pc, #108]	; d0081334 <do_bubbastix_playdemo_screensaver+0x640>
d00812ca:	9005      	str	r0, [sp, #20]
d00812cc:	480b      	ldr	r0, [pc, #44]	; (d00812fc <do_bubbastix_playdemo_screensaver+0x608>)
d00812ce:	4f0a      	ldr	r7, [pc, #40]	; (d00812f8 <do_bubbastix_playdemo_screensaver+0x604>)
d00812d0:	f8df b058 	ldr.w	fp, [pc, #88]	; d008132c <do_bubbastix_playdemo_screensaver+0x638>
d00812d4:	9007      	str	r0, [sp, #28]
d00812d6:	e551      	b.n	d0080d7c <do_bubbastix_playdemo_screensaver+0x88>
d00812d8:	f895 c000 	ldrb.w	ip, [r5]
d00812dc:	4a05      	ldr	r2, [pc, #20]	; (d00812f4 <do_bubbastix_playdemo_screensaver+0x600>)
d00812de:	f10c 0401 	add.w	r4, ip, #1
d00812e2:	4903      	ldr	r1, [pc, #12]	; (d00812f0 <do_bubbastix_playdemo_screensaver+0x5fc>)
d00812e4:	9206      	str	r2, [sp, #24]
d00812e6:	b2e4      	uxtb	r4, r4
d00812e8:	6812      	ldr	r2, [r2, #0]
d00812ea:	9103      	str	r1, [sp, #12]
d00812ec:	e6d2      	b.n	d0081094 <do_bubbastix_playdemo_screensaver+0x3a0>
d00812ee:	bf00      	nop
d00812f0:	d009bdc0 	.word	0xd009bdc0
d00812f4:	d009c104 	.word	0xd009c104
d00812f8:	d009c386 	.word	0xd009c386
d00812fc:	d009c100 	.word	0xd009c100
d0081300:	d009c10c 	.word	0xd009c10c
d0081304:	d009c110 	.word	0xd009c110
d0081308:	d009c390 	.word	0xd009c390
d008130c:	d009be00 	.word	0xd009be00
d0081310:	d009c0e0 	.word	0xd009c0e0
d0081314:	d009c38c 	.word	0xd009c38c
d0081318:	d009c38a 	.word	0xd009c38a
d008131c:	d009c38e 	.word	0xd009c38e
d0081320:	d009c108 	.word	0xd009c108
d0081324:	d0085028 	.word	0xd0085028
d0081328:	d008f4c8 	.word	0xd008f4c8
d008132c:	d009c320 	.word	0xd009c320
d0081330:	d009c109 	.word	0xd009c109
d0081334:	d009c384 	.word	0xd009c384
d0081338:	d009c102 	.word	0xd009c102
d008133c:	d0082f68 	.word	0xd0082f68
d0081340:	d009c388 	.word	0xd009c388

d0081344 <__errno>:
d0081344:	4b01      	ldr	r3, [pc, #4]	; (d008134c <__errno+0x8>)
d0081346:	6818      	ldr	r0, [r3, #0]
d0081348:	4770      	bx	lr
d008134a:	bf00      	nop
d008134c:	d009be10 	.word	0xd009be10

d0081350 <malloc>:
d0081350:	4b02      	ldr	r3, [pc, #8]	; (d008135c <malloc+0xc>)
d0081352:	4601      	mov	r1, r0
d0081354:	6818      	ldr	r0, [r3, #0]
d0081356:	f000 b85b 	b.w	d0081410 <_malloc_r>
d008135a:	bf00      	nop
d008135c:	d009be10 	.word	0xd009be10

d0081360 <memset>:
d0081360:	4402      	add	r2, r0
d0081362:	4603      	mov	r3, r0
d0081364:	4293      	cmp	r3, r2
d0081366:	d100      	bne.n	d008136a <memset+0xa>
d0081368:	4770      	bx	lr
d008136a:	f803 1b01 	strb.w	r1, [r3], #1
d008136e:	e7f9      	b.n	d0081364 <memset+0x4>

d0081370 <_free_r>:
d0081370:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0081372:	2900      	cmp	r1, #0
d0081374:	d048      	beq.n	d0081408 <_free_r+0x98>
d0081376:	f851 3c04 	ldr.w	r3, [r1, #-4]
d008137a:	9001      	str	r0, [sp, #4]
d008137c:	2b00      	cmp	r3, #0
d008137e:	f1a1 0404 	sub.w	r4, r1, #4
d0081382:	bfb8      	it	lt
d0081384:	18e4      	addlt	r4, r4, r3
d0081386:	f000 fcbf 	bl	d0081d08 <__malloc_lock>
d008138a:	4a20      	ldr	r2, [pc, #128]	; (d008140c <_free_r+0x9c>)
d008138c:	9801      	ldr	r0, [sp, #4]
d008138e:	6813      	ldr	r3, [r2, #0]
d0081390:	4615      	mov	r5, r2
d0081392:	b933      	cbnz	r3, d00813a2 <_free_r+0x32>
d0081394:	6063      	str	r3, [r4, #4]
d0081396:	6014      	str	r4, [r2, #0]
d0081398:	b003      	add	sp, #12
d008139a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d008139e:	f000 bcb9 	b.w	d0081d14 <__malloc_unlock>
d00813a2:	42a3      	cmp	r3, r4
d00813a4:	d90b      	bls.n	d00813be <_free_r+0x4e>
d00813a6:	6821      	ldr	r1, [r4, #0]
d00813a8:	1862      	adds	r2, r4, r1
d00813aa:	4293      	cmp	r3, r2
d00813ac:	bf04      	itt	eq
d00813ae:	681a      	ldreq	r2, [r3, #0]
d00813b0:	685b      	ldreq	r3, [r3, #4]
d00813b2:	6063      	str	r3, [r4, #4]
d00813b4:	bf04      	itt	eq
d00813b6:	1852      	addeq	r2, r2, r1
d00813b8:	6022      	streq	r2, [r4, #0]
d00813ba:	602c      	str	r4, [r5, #0]
d00813bc:	e7ec      	b.n	d0081398 <_free_r+0x28>
d00813be:	461a      	mov	r2, r3
d00813c0:	685b      	ldr	r3, [r3, #4]
d00813c2:	b10b      	cbz	r3, d00813c8 <_free_r+0x58>
d00813c4:	42a3      	cmp	r3, r4
d00813c6:	d9fa      	bls.n	d00813be <_free_r+0x4e>
d00813c8:	6811      	ldr	r1, [r2, #0]
d00813ca:	1855      	adds	r5, r2, r1
d00813cc:	42a5      	cmp	r5, r4
d00813ce:	d10b      	bne.n	d00813e8 <_free_r+0x78>
d00813d0:	6824      	ldr	r4, [r4, #0]
d00813d2:	4421      	add	r1, r4
d00813d4:	1854      	adds	r4, r2, r1
d00813d6:	42a3      	cmp	r3, r4
d00813d8:	6011      	str	r1, [r2, #0]
d00813da:	d1dd      	bne.n	d0081398 <_free_r+0x28>
d00813dc:	681c      	ldr	r4, [r3, #0]
d00813de:	685b      	ldr	r3, [r3, #4]
d00813e0:	6053      	str	r3, [r2, #4]
d00813e2:	4421      	add	r1, r4
d00813e4:	6011      	str	r1, [r2, #0]
d00813e6:	e7d7      	b.n	d0081398 <_free_r+0x28>
d00813e8:	d902      	bls.n	d00813f0 <_free_r+0x80>
d00813ea:	230c      	movs	r3, #12
d00813ec:	6003      	str	r3, [r0, #0]
d00813ee:	e7d3      	b.n	d0081398 <_free_r+0x28>
d00813f0:	6825      	ldr	r5, [r4, #0]
d00813f2:	1961      	adds	r1, r4, r5
d00813f4:	428b      	cmp	r3, r1
d00813f6:	bf04      	itt	eq
d00813f8:	6819      	ldreq	r1, [r3, #0]
d00813fa:	685b      	ldreq	r3, [r3, #4]
d00813fc:	6063      	str	r3, [r4, #4]
d00813fe:	bf04      	itt	eq
d0081400:	1949      	addeq	r1, r1, r5
d0081402:	6021      	streq	r1, [r4, #0]
d0081404:	6054      	str	r4, [r2, #4]
d0081406:	e7c7      	b.n	d0081398 <_free_r+0x28>
d0081408:	b003      	add	sp, #12
d008140a:	bd30      	pop	{r4, r5, pc}
d008140c:	d009c324 	.word	0xd009c324

d0081410 <_malloc_r>:
d0081410:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081412:	1ccd      	adds	r5, r1, #3
d0081414:	f025 0503 	bic.w	r5, r5, #3
d0081418:	3508      	adds	r5, #8
d008141a:	2d0c      	cmp	r5, #12
d008141c:	bf38      	it	cc
d008141e:	250c      	movcc	r5, #12
d0081420:	2d00      	cmp	r5, #0
d0081422:	4606      	mov	r6, r0
d0081424:	db01      	blt.n	d008142a <_malloc_r+0x1a>
d0081426:	42a9      	cmp	r1, r5
d0081428:	d903      	bls.n	d0081432 <_malloc_r+0x22>
d008142a:	230c      	movs	r3, #12
d008142c:	6033      	str	r3, [r6, #0]
d008142e:	2000      	movs	r0, #0
d0081430:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081432:	f000 fc69 	bl	d0081d08 <__malloc_lock>
d0081436:	4921      	ldr	r1, [pc, #132]	; (d00814bc <_malloc_r+0xac>)
d0081438:	680a      	ldr	r2, [r1, #0]
d008143a:	4614      	mov	r4, r2
d008143c:	b99c      	cbnz	r4, d0081466 <_malloc_r+0x56>
d008143e:	4f20      	ldr	r7, [pc, #128]	; (d00814c0 <_malloc_r+0xb0>)
d0081440:	683b      	ldr	r3, [r7, #0]
d0081442:	b923      	cbnz	r3, d008144e <_malloc_r+0x3e>
d0081444:	4621      	mov	r1, r4
d0081446:	4630      	mov	r0, r6
d0081448:	f7fe ff3e 	bl	d00802c8 <_sbrk_r>
d008144c:	6038      	str	r0, [r7, #0]
d008144e:	4629      	mov	r1, r5
d0081450:	4630      	mov	r0, r6
d0081452:	f7fe ff39 	bl	d00802c8 <_sbrk_r>
d0081456:	1c43      	adds	r3, r0, #1
d0081458:	d123      	bne.n	d00814a2 <_malloc_r+0x92>
d008145a:	230c      	movs	r3, #12
d008145c:	6033      	str	r3, [r6, #0]
d008145e:	4630      	mov	r0, r6
d0081460:	f000 fc58 	bl	d0081d14 <__malloc_unlock>
d0081464:	e7e3      	b.n	d008142e <_malloc_r+0x1e>
d0081466:	6823      	ldr	r3, [r4, #0]
d0081468:	1b5b      	subs	r3, r3, r5
d008146a:	d417      	bmi.n	d008149c <_malloc_r+0x8c>
d008146c:	2b0b      	cmp	r3, #11
d008146e:	d903      	bls.n	d0081478 <_malloc_r+0x68>
d0081470:	6023      	str	r3, [r4, #0]
d0081472:	441c      	add	r4, r3
d0081474:	6025      	str	r5, [r4, #0]
d0081476:	e004      	b.n	d0081482 <_malloc_r+0x72>
d0081478:	6863      	ldr	r3, [r4, #4]
d008147a:	42a2      	cmp	r2, r4
d008147c:	bf0c      	ite	eq
d008147e:	600b      	streq	r3, [r1, #0]
d0081480:	6053      	strne	r3, [r2, #4]
d0081482:	4630      	mov	r0, r6
d0081484:	f000 fc46 	bl	d0081d14 <__malloc_unlock>
d0081488:	f104 000b 	add.w	r0, r4, #11
d008148c:	1d23      	adds	r3, r4, #4
d008148e:	f020 0007 	bic.w	r0, r0, #7
d0081492:	1ac2      	subs	r2, r0, r3
d0081494:	d0cc      	beq.n	d0081430 <_malloc_r+0x20>
d0081496:	1a1b      	subs	r3, r3, r0
d0081498:	50a3      	str	r3, [r4, r2]
d008149a:	e7c9      	b.n	d0081430 <_malloc_r+0x20>
d008149c:	4622      	mov	r2, r4
d008149e:	6864      	ldr	r4, [r4, #4]
d00814a0:	e7cc      	b.n	d008143c <_malloc_r+0x2c>
d00814a2:	1cc4      	adds	r4, r0, #3
d00814a4:	f024 0403 	bic.w	r4, r4, #3
d00814a8:	42a0      	cmp	r0, r4
d00814aa:	d0e3      	beq.n	d0081474 <_malloc_r+0x64>
d00814ac:	1a21      	subs	r1, r4, r0
d00814ae:	4630      	mov	r0, r6
d00814b0:	f7fe ff0a 	bl	d00802c8 <_sbrk_r>
d00814b4:	3001      	adds	r0, #1
d00814b6:	d1dd      	bne.n	d0081474 <_malloc_r+0x64>
d00814b8:	e7cf      	b.n	d008145a <_malloc_r+0x4a>
d00814ba:	bf00      	nop
d00814bc:	d009c324 	.word	0xd009c324
d00814c0:	d009c328 	.word	0xd009c328

d00814c4 <_puts_r>:
d00814c4:	b570      	push	{r4, r5, r6, lr}
d00814c6:	460e      	mov	r6, r1
d00814c8:	4605      	mov	r5, r0
d00814ca:	b118      	cbz	r0, d00814d4 <_puts_r+0x10>
d00814cc:	6983      	ldr	r3, [r0, #24]
d00814ce:	b90b      	cbnz	r3, d00814d4 <_puts_r+0x10>
d00814d0:	f000 fb16 	bl	d0081b00 <__sinit>
d00814d4:	69ab      	ldr	r3, [r5, #24]
d00814d6:	68ac      	ldr	r4, [r5, #8]
d00814d8:	b913      	cbnz	r3, d00814e0 <_puts_r+0x1c>
d00814da:	4628      	mov	r0, r5
d00814dc:	f000 fb10 	bl	d0081b00 <__sinit>
d00814e0:	4b2c      	ldr	r3, [pc, #176]	; (d0081594 <_puts_r+0xd0>)
d00814e2:	429c      	cmp	r4, r3
d00814e4:	d120      	bne.n	d0081528 <_puts_r+0x64>
d00814e6:	686c      	ldr	r4, [r5, #4]
d00814e8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00814ea:	07db      	lsls	r3, r3, #31
d00814ec:	d405      	bmi.n	d00814fa <_puts_r+0x36>
d00814ee:	89a3      	ldrh	r3, [r4, #12]
d00814f0:	0598      	lsls	r0, r3, #22
d00814f2:	d402      	bmi.n	d00814fa <_puts_r+0x36>
d00814f4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00814f6:	f000 fba1 	bl	d0081c3c <__retarget_lock_acquire_recursive>
d00814fa:	89a3      	ldrh	r3, [r4, #12]
d00814fc:	0719      	lsls	r1, r3, #28
d00814fe:	d51d      	bpl.n	d008153c <_puts_r+0x78>
d0081500:	6923      	ldr	r3, [r4, #16]
d0081502:	b1db      	cbz	r3, d008153c <_puts_r+0x78>
d0081504:	3e01      	subs	r6, #1
d0081506:	68a3      	ldr	r3, [r4, #8]
d0081508:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d008150c:	3b01      	subs	r3, #1
d008150e:	60a3      	str	r3, [r4, #8]
d0081510:	bb39      	cbnz	r1, d0081562 <_puts_r+0x9e>
d0081512:	2b00      	cmp	r3, #0
d0081514:	da38      	bge.n	d0081588 <_puts_r+0xc4>
d0081516:	4622      	mov	r2, r4
d0081518:	210a      	movs	r1, #10
d008151a:	4628      	mov	r0, r5
d008151c:	f000 f916 	bl	d008174c <__swbuf_r>
d0081520:	3001      	adds	r0, #1
d0081522:	d011      	beq.n	d0081548 <_puts_r+0x84>
d0081524:	250a      	movs	r5, #10
d0081526:	e011      	b.n	d008154c <_puts_r+0x88>
d0081528:	4b1b      	ldr	r3, [pc, #108]	; (d0081598 <_puts_r+0xd4>)
d008152a:	429c      	cmp	r4, r3
d008152c:	d101      	bne.n	d0081532 <_puts_r+0x6e>
d008152e:	68ac      	ldr	r4, [r5, #8]
d0081530:	e7da      	b.n	d00814e8 <_puts_r+0x24>
d0081532:	4b1a      	ldr	r3, [pc, #104]	; (d008159c <_puts_r+0xd8>)
d0081534:	429c      	cmp	r4, r3
d0081536:	bf08      	it	eq
d0081538:	68ec      	ldreq	r4, [r5, #12]
d008153a:	e7d5      	b.n	d00814e8 <_puts_r+0x24>
d008153c:	4621      	mov	r1, r4
d008153e:	4628      	mov	r0, r5
d0081540:	f000 f956 	bl	d00817f0 <__swsetup_r>
d0081544:	2800      	cmp	r0, #0
d0081546:	d0dd      	beq.n	d0081504 <_puts_r+0x40>
d0081548:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008154c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008154e:	07da      	lsls	r2, r3, #31
d0081550:	d405      	bmi.n	d008155e <_puts_r+0x9a>
d0081552:	89a3      	ldrh	r3, [r4, #12]
d0081554:	059b      	lsls	r3, r3, #22
d0081556:	d402      	bmi.n	d008155e <_puts_r+0x9a>
d0081558:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008155a:	f000 fb70 	bl	d0081c3e <__retarget_lock_release_recursive>
d008155e:	4628      	mov	r0, r5
d0081560:	bd70      	pop	{r4, r5, r6, pc}
d0081562:	2b00      	cmp	r3, #0
d0081564:	da04      	bge.n	d0081570 <_puts_r+0xac>
d0081566:	69a2      	ldr	r2, [r4, #24]
d0081568:	429a      	cmp	r2, r3
d008156a:	dc06      	bgt.n	d008157a <_puts_r+0xb6>
d008156c:	290a      	cmp	r1, #10
d008156e:	d004      	beq.n	d008157a <_puts_r+0xb6>
d0081570:	6823      	ldr	r3, [r4, #0]
d0081572:	1c5a      	adds	r2, r3, #1
d0081574:	6022      	str	r2, [r4, #0]
d0081576:	7019      	strb	r1, [r3, #0]
d0081578:	e7c5      	b.n	d0081506 <_puts_r+0x42>
d008157a:	4622      	mov	r2, r4
d008157c:	4628      	mov	r0, r5
d008157e:	f000 f8e5 	bl	d008174c <__swbuf_r>
d0081582:	3001      	adds	r0, #1
d0081584:	d1bf      	bne.n	d0081506 <_puts_r+0x42>
d0081586:	e7df      	b.n	d0081548 <_puts_r+0x84>
d0081588:	6823      	ldr	r3, [r4, #0]
d008158a:	250a      	movs	r5, #10
d008158c:	1c5a      	adds	r2, r3, #1
d008158e:	6022      	str	r2, [r4, #0]
d0081590:	701d      	strb	r5, [r3, #0]
d0081592:	e7db      	b.n	d008154c <_puts_r+0x88>
d0081594:	d009bd28 	.word	0xd009bd28
d0081598:	d009bd48 	.word	0xd009bd48
d008159c:	d009bd08 	.word	0xd009bd08

d00815a0 <puts>:
d00815a0:	4b02      	ldr	r3, [pc, #8]	; (d00815ac <puts+0xc>)
d00815a2:	4601      	mov	r1, r0
d00815a4:	6818      	ldr	r0, [r3, #0]
d00815a6:	f7ff bf8d 	b.w	d00814c4 <_puts_r>
d00815aa:	bf00      	nop
d00815ac:	d009be10 	.word	0xd009be10

d00815b0 <setbuf>:
d00815b0:	2900      	cmp	r1, #0
d00815b2:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00815b6:	bf0c      	ite	eq
d00815b8:	2202      	moveq	r2, #2
d00815ba:	2200      	movne	r2, #0
d00815bc:	f000 b800 	b.w	d00815c0 <setvbuf>

d00815c0 <setvbuf>:
d00815c0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00815c4:	461d      	mov	r5, r3
d00815c6:	4b5d      	ldr	r3, [pc, #372]	; (d008173c <setvbuf+0x17c>)
d00815c8:	681f      	ldr	r7, [r3, #0]
d00815ca:	4604      	mov	r4, r0
d00815cc:	460e      	mov	r6, r1
d00815ce:	4690      	mov	r8, r2
d00815d0:	b127      	cbz	r7, d00815dc <setvbuf+0x1c>
d00815d2:	69bb      	ldr	r3, [r7, #24]
d00815d4:	b913      	cbnz	r3, d00815dc <setvbuf+0x1c>
d00815d6:	4638      	mov	r0, r7
d00815d8:	f000 fa92 	bl	d0081b00 <__sinit>
d00815dc:	4b58      	ldr	r3, [pc, #352]	; (d0081740 <setvbuf+0x180>)
d00815de:	429c      	cmp	r4, r3
d00815e0:	d167      	bne.n	d00816b2 <setvbuf+0xf2>
d00815e2:	687c      	ldr	r4, [r7, #4]
d00815e4:	f1b8 0f02 	cmp.w	r8, #2
d00815e8:	d006      	beq.n	d00815f8 <setvbuf+0x38>
d00815ea:	f1b8 0f01 	cmp.w	r8, #1
d00815ee:	f200 809f 	bhi.w	d0081730 <setvbuf+0x170>
d00815f2:	2d00      	cmp	r5, #0
d00815f4:	f2c0 809c 	blt.w	d0081730 <setvbuf+0x170>
d00815f8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00815fa:	07db      	lsls	r3, r3, #31
d00815fc:	d405      	bmi.n	d008160a <setvbuf+0x4a>
d00815fe:	89a3      	ldrh	r3, [r4, #12]
d0081600:	0598      	lsls	r0, r3, #22
d0081602:	d402      	bmi.n	d008160a <setvbuf+0x4a>
d0081604:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081606:	f000 fb19 	bl	d0081c3c <__retarget_lock_acquire_recursive>
d008160a:	4621      	mov	r1, r4
d008160c:	4638      	mov	r0, r7
d008160e:	f000 f9e3 	bl	d00819d8 <_fflush_r>
d0081612:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081614:	b141      	cbz	r1, d0081628 <setvbuf+0x68>
d0081616:	f104 0344 	add.w	r3, r4, #68	; 0x44
d008161a:	4299      	cmp	r1, r3
d008161c:	d002      	beq.n	d0081624 <setvbuf+0x64>
d008161e:	4638      	mov	r0, r7
d0081620:	f7ff fea6 	bl	d0081370 <_free_r>
d0081624:	2300      	movs	r3, #0
d0081626:	6363      	str	r3, [r4, #52]	; 0x34
d0081628:	2300      	movs	r3, #0
d008162a:	61a3      	str	r3, [r4, #24]
d008162c:	6063      	str	r3, [r4, #4]
d008162e:	89a3      	ldrh	r3, [r4, #12]
d0081630:	0619      	lsls	r1, r3, #24
d0081632:	d503      	bpl.n	d008163c <setvbuf+0x7c>
d0081634:	6921      	ldr	r1, [r4, #16]
d0081636:	4638      	mov	r0, r7
d0081638:	f7ff fe9a 	bl	d0081370 <_free_r>
d008163c:	89a3      	ldrh	r3, [r4, #12]
d008163e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0081642:	f023 0303 	bic.w	r3, r3, #3
d0081646:	f1b8 0f02 	cmp.w	r8, #2
d008164a:	81a3      	strh	r3, [r4, #12]
d008164c:	d06c      	beq.n	d0081728 <setvbuf+0x168>
d008164e:	ab01      	add	r3, sp, #4
d0081650:	466a      	mov	r2, sp
d0081652:	4621      	mov	r1, r4
d0081654:	4638      	mov	r0, r7
d0081656:	f000 faf3 	bl	d0081c40 <__swhatbuf_r>
d008165a:	89a3      	ldrh	r3, [r4, #12]
d008165c:	4318      	orrs	r0, r3
d008165e:	81a0      	strh	r0, [r4, #12]
d0081660:	2d00      	cmp	r5, #0
d0081662:	d130      	bne.n	d00816c6 <setvbuf+0x106>
d0081664:	9d00      	ldr	r5, [sp, #0]
d0081666:	4628      	mov	r0, r5
d0081668:	f7ff fe72 	bl	d0081350 <malloc>
d008166c:	4606      	mov	r6, r0
d008166e:	2800      	cmp	r0, #0
d0081670:	d155      	bne.n	d008171e <setvbuf+0x15e>
d0081672:	f8dd 9000 	ldr.w	r9, [sp]
d0081676:	45a9      	cmp	r9, r5
d0081678:	d14a      	bne.n	d0081710 <setvbuf+0x150>
d008167a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008167e:	2200      	movs	r2, #0
d0081680:	60a2      	str	r2, [r4, #8]
d0081682:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0081686:	6022      	str	r2, [r4, #0]
d0081688:	6122      	str	r2, [r4, #16]
d008168a:	2201      	movs	r2, #1
d008168c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081690:	6162      	str	r2, [r4, #20]
d0081692:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081694:	f043 0302 	orr.w	r3, r3, #2
d0081698:	07d2      	lsls	r2, r2, #31
d008169a:	81a3      	strh	r3, [r4, #12]
d008169c:	d405      	bmi.n	d00816aa <setvbuf+0xea>
d008169e:	f413 7f00 	tst.w	r3, #512	; 0x200
d00816a2:	d102      	bne.n	d00816aa <setvbuf+0xea>
d00816a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00816a6:	f000 faca 	bl	d0081c3e <__retarget_lock_release_recursive>
d00816aa:	4628      	mov	r0, r5
d00816ac:	b003      	add	sp, #12
d00816ae:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00816b2:	4b24      	ldr	r3, [pc, #144]	; (d0081744 <setvbuf+0x184>)
d00816b4:	429c      	cmp	r4, r3
d00816b6:	d101      	bne.n	d00816bc <setvbuf+0xfc>
d00816b8:	68bc      	ldr	r4, [r7, #8]
d00816ba:	e793      	b.n	d00815e4 <setvbuf+0x24>
d00816bc:	4b22      	ldr	r3, [pc, #136]	; (d0081748 <setvbuf+0x188>)
d00816be:	429c      	cmp	r4, r3
d00816c0:	bf08      	it	eq
d00816c2:	68fc      	ldreq	r4, [r7, #12]
d00816c4:	e78e      	b.n	d00815e4 <setvbuf+0x24>
d00816c6:	2e00      	cmp	r6, #0
d00816c8:	d0cd      	beq.n	d0081666 <setvbuf+0xa6>
d00816ca:	69bb      	ldr	r3, [r7, #24]
d00816cc:	b913      	cbnz	r3, d00816d4 <setvbuf+0x114>
d00816ce:	4638      	mov	r0, r7
d00816d0:	f000 fa16 	bl	d0081b00 <__sinit>
d00816d4:	f1b8 0f01 	cmp.w	r8, #1
d00816d8:	bf08      	it	eq
d00816da:	89a3      	ldrheq	r3, [r4, #12]
d00816dc:	6026      	str	r6, [r4, #0]
d00816de:	bf04      	itt	eq
d00816e0:	f043 0301 	orreq.w	r3, r3, #1
d00816e4:	81a3      	strheq	r3, [r4, #12]
d00816e6:	89a2      	ldrh	r2, [r4, #12]
d00816e8:	f012 0308 	ands.w	r3, r2, #8
d00816ec:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00816f0:	d01c      	beq.n	d008172c <setvbuf+0x16c>
d00816f2:	07d3      	lsls	r3, r2, #31
d00816f4:	bf41      	itttt	mi
d00816f6:	2300      	movmi	r3, #0
d00816f8:	426d      	negmi	r5, r5
d00816fa:	60a3      	strmi	r3, [r4, #8]
d00816fc:	61a5      	strmi	r5, [r4, #24]
d00816fe:	bf58      	it	pl
d0081700:	60a5      	strpl	r5, [r4, #8]
d0081702:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0081704:	f015 0501 	ands.w	r5, r5, #1
d0081708:	d115      	bne.n	d0081736 <setvbuf+0x176>
d008170a:	f412 7f00 	tst.w	r2, #512	; 0x200
d008170e:	e7c8      	b.n	d00816a2 <setvbuf+0xe2>
d0081710:	4648      	mov	r0, r9
d0081712:	f7ff fe1d 	bl	d0081350 <malloc>
d0081716:	4606      	mov	r6, r0
d0081718:	2800      	cmp	r0, #0
d008171a:	d0ae      	beq.n	d008167a <setvbuf+0xba>
d008171c:	464d      	mov	r5, r9
d008171e:	89a3      	ldrh	r3, [r4, #12]
d0081720:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081724:	81a3      	strh	r3, [r4, #12]
d0081726:	e7d0      	b.n	d00816ca <setvbuf+0x10a>
d0081728:	2500      	movs	r5, #0
d008172a:	e7a8      	b.n	d008167e <setvbuf+0xbe>
d008172c:	60a3      	str	r3, [r4, #8]
d008172e:	e7e8      	b.n	d0081702 <setvbuf+0x142>
d0081730:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081734:	e7b9      	b.n	d00816aa <setvbuf+0xea>
d0081736:	2500      	movs	r5, #0
d0081738:	e7b7      	b.n	d00816aa <setvbuf+0xea>
d008173a:	bf00      	nop
d008173c:	d009be10 	.word	0xd009be10
d0081740:	d009bd28 	.word	0xd009bd28
d0081744:	d009bd48 	.word	0xd009bd48
d0081748:	d009bd08 	.word	0xd009bd08

d008174c <__swbuf_r>:
d008174c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008174e:	460e      	mov	r6, r1
d0081750:	4614      	mov	r4, r2
d0081752:	4605      	mov	r5, r0
d0081754:	b118      	cbz	r0, d008175e <__swbuf_r+0x12>
d0081756:	6983      	ldr	r3, [r0, #24]
d0081758:	b90b      	cbnz	r3, d008175e <__swbuf_r+0x12>
d008175a:	f000 f9d1 	bl	d0081b00 <__sinit>
d008175e:	4b21      	ldr	r3, [pc, #132]	; (d00817e4 <__swbuf_r+0x98>)
d0081760:	429c      	cmp	r4, r3
d0081762:	d12b      	bne.n	d00817bc <__swbuf_r+0x70>
d0081764:	686c      	ldr	r4, [r5, #4]
d0081766:	69a3      	ldr	r3, [r4, #24]
d0081768:	60a3      	str	r3, [r4, #8]
d008176a:	89a3      	ldrh	r3, [r4, #12]
d008176c:	071a      	lsls	r2, r3, #28
d008176e:	d52f      	bpl.n	d00817d0 <__swbuf_r+0x84>
d0081770:	6923      	ldr	r3, [r4, #16]
d0081772:	b36b      	cbz	r3, d00817d0 <__swbuf_r+0x84>
d0081774:	6923      	ldr	r3, [r4, #16]
d0081776:	6820      	ldr	r0, [r4, #0]
d0081778:	1ac0      	subs	r0, r0, r3
d008177a:	6963      	ldr	r3, [r4, #20]
d008177c:	b2f6      	uxtb	r6, r6
d008177e:	4283      	cmp	r3, r0
d0081780:	4637      	mov	r7, r6
d0081782:	dc04      	bgt.n	d008178e <__swbuf_r+0x42>
d0081784:	4621      	mov	r1, r4
d0081786:	4628      	mov	r0, r5
d0081788:	f000 f926 	bl	d00819d8 <_fflush_r>
d008178c:	bb30      	cbnz	r0, d00817dc <__swbuf_r+0x90>
d008178e:	68a3      	ldr	r3, [r4, #8]
d0081790:	3b01      	subs	r3, #1
d0081792:	60a3      	str	r3, [r4, #8]
d0081794:	6823      	ldr	r3, [r4, #0]
d0081796:	1c5a      	adds	r2, r3, #1
d0081798:	6022      	str	r2, [r4, #0]
d008179a:	701e      	strb	r6, [r3, #0]
d008179c:	6963      	ldr	r3, [r4, #20]
d008179e:	3001      	adds	r0, #1
d00817a0:	4283      	cmp	r3, r0
d00817a2:	d004      	beq.n	d00817ae <__swbuf_r+0x62>
d00817a4:	89a3      	ldrh	r3, [r4, #12]
d00817a6:	07db      	lsls	r3, r3, #31
d00817a8:	d506      	bpl.n	d00817b8 <__swbuf_r+0x6c>
d00817aa:	2e0a      	cmp	r6, #10
d00817ac:	d104      	bne.n	d00817b8 <__swbuf_r+0x6c>
d00817ae:	4621      	mov	r1, r4
d00817b0:	4628      	mov	r0, r5
d00817b2:	f000 f911 	bl	d00819d8 <_fflush_r>
d00817b6:	b988      	cbnz	r0, d00817dc <__swbuf_r+0x90>
d00817b8:	4638      	mov	r0, r7
d00817ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00817bc:	4b0a      	ldr	r3, [pc, #40]	; (d00817e8 <__swbuf_r+0x9c>)
d00817be:	429c      	cmp	r4, r3
d00817c0:	d101      	bne.n	d00817c6 <__swbuf_r+0x7a>
d00817c2:	68ac      	ldr	r4, [r5, #8]
d00817c4:	e7cf      	b.n	d0081766 <__swbuf_r+0x1a>
d00817c6:	4b09      	ldr	r3, [pc, #36]	; (d00817ec <__swbuf_r+0xa0>)
d00817c8:	429c      	cmp	r4, r3
d00817ca:	bf08      	it	eq
d00817cc:	68ec      	ldreq	r4, [r5, #12]
d00817ce:	e7ca      	b.n	d0081766 <__swbuf_r+0x1a>
d00817d0:	4621      	mov	r1, r4
d00817d2:	4628      	mov	r0, r5
d00817d4:	f000 f80c 	bl	d00817f0 <__swsetup_r>
d00817d8:	2800      	cmp	r0, #0
d00817da:	d0cb      	beq.n	d0081774 <__swbuf_r+0x28>
d00817dc:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00817e0:	e7ea      	b.n	d00817b8 <__swbuf_r+0x6c>
d00817e2:	bf00      	nop
d00817e4:	d009bd28 	.word	0xd009bd28
d00817e8:	d009bd48 	.word	0xd009bd48
d00817ec:	d009bd08 	.word	0xd009bd08

d00817f0 <__swsetup_r>:
d00817f0:	4b32      	ldr	r3, [pc, #200]	; (d00818bc <__swsetup_r+0xcc>)
d00817f2:	b570      	push	{r4, r5, r6, lr}
d00817f4:	681d      	ldr	r5, [r3, #0]
d00817f6:	4606      	mov	r6, r0
d00817f8:	460c      	mov	r4, r1
d00817fa:	b125      	cbz	r5, d0081806 <__swsetup_r+0x16>
d00817fc:	69ab      	ldr	r3, [r5, #24]
d00817fe:	b913      	cbnz	r3, d0081806 <__swsetup_r+0x16>
d0081800:	4628      	mov	r0, r5
d0081802:	f000 f97d 	bl	d0081b00 <__sinit>
d0081806:	4b2e      	ldr	r3, [pc, #184]	; (d00818c0 <__swsetup_r+0xd0>)
d0081808:	429c      	cmp	r4, r3
d008180a:	d10f      	bne.n	d008182c <__swsetup_r+0x3c>
d008180c:	686c      	ldr	r4, [r5, #4]
d008180e:	89a3      	ldrh	r3, [r4, #12]
d0081810:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0081814:	0719      	lsls	r1, r3, #28
d0081816:	d42c      	bmi.n	d0081872 <__swsetup_r+0x82>
d0081818:	06dd      	lsls	r5, r3, #27
d008181a:	d411      	bmi.n	d0081840 <__swsetup_r+0x50>
d008181c:	2309      	movs	r3, #9
d008181e:	6033      	str	r3, [r6, #0]
d0081820:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0081824:	81a3      	strh	r3, [r4, #12]
d0081826:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008182a:	e03e      	b.n	d00818aa <__swsetup_r+0xba>
d008182c:	4b25      	ldr	r3, [pc, #148]	; (d00818c4 <__swsetup_r+0xd4>)
d008182e:	429c      	cmp	r4, r3
d0081830:	d101      	bne.n	d0081836 <__swsetup_r+0x46>
d0081832:	68ac      	ldr	r4, [r5, #8]
d0081834:	e7eb      	b.n	d008180e <__swsetup_r+0x1e>
d0081836:	4b24      	ldr	r3, [pc, #144]	; (d00818c8 <__swsetup_r+0xd8>)
d0081838:	429c      	cmp	r4, r3
d008183a:	bf08      	it	eq
d008183c:	68ec      	ldreq	r4, [r5, #12]
d008183e:	e7e6      	b.n	d008180e <__swsetup_r+0x1e>
d0081840:	0758      	lsls	r0, r3, #29
d0081842:	d512      	bpl.n	d008186a <__swsetup_r+0x7a>
d0081844:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081846:	b141      	cbz	r1, d008185a <__swsetup_r+0x6a>
d0081848:	f104 0344 	add.w	r3, r4, #68	; 0x44
d008184c:	4299      	cmp	r1, r3
d008184e:	d002      	beq.n	d0081856 <__swsetup_r+0x66>
d0081850:	4630      	mov	r0, r6
d0081852:	f7ff fd8d 	bl	d0081370 <_free_r>
d0081856:	2300      	movs	r3, #0
d0081858:	6363      	str	r3, [r4, #52]	; 0x34
d008185a:	89a3      	ldrh	r3, [r4, #12]
d008185c:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0081860:	81a3      	strh	r3, [r4, #12]
d0081862:	2300      	movs	r3, #0
d0081864:	6063      	str	r3, [r4, #4]
d0081866:	6923      	ldr	r3, [r4, #16]
d0081868:	6023      	str	r3, [r4, #0]
d008186a:	89a3      	ldrh	r3, [r4, #12]
d008186c:	f043 0308 	orr.w	r3, r3, #8
d0081870:	81a3      	strh	r3, [r4, #12]
d0081872:	6923      	ldr	r3, [r4, #16]
d0081874:	b94b      	cbnz	r3, d008188a <__swsetup_r+0x9a>
d0081876:	89a3      	ldrh	r3, [r4, #12]
d0081878:	f403 7320 	and.w	r3, r3, #640	; 0x280
d008187c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0081880:	d003      	beq.n	d008188a <__swsetup_r+0x9a>
d0081882:	4621      	mov	r1, r4
d0081884:	4630      	mov	r0, r6
d0081886:	f000 f9ff 	bl	d0081c88 <__smakebuf_r>
d008188a:	89a0      	ldrh	r0, [r4, #12]
d008188c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0081890:	f010 0301 	ands.w	r3, r0, #1
d0081894:	d00a      	beq.n	d00818ac <__swsetup_r+0xbc>
d0081896:	2300      	movs	r3, #0
d0081898:	60a3      	str	r3, [r4, #8]
d008189a:	6963      	ldr	r3, [r4, #20]
d008189c:	425b      	negs	r3, r3
d008189e:	61a3      	str	r3, [r4, #24]
d00818a0:	6923      	ldr	r3, [r4, #16]
d00818a2:	b943      	cbnz	r3, d00818b6 <__swsetup_r+0xc6>
d00818a4:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d00818a8:	d1ba      	bne.n	d0081820 <__swsetup_r+0x30>
d00818aa:	bd70      	pop	{r4, r5, r6, pc}
d00818ac:	0781      	lsls	r1, r0, #30
d00818ae:	bf58      	it	pl
d00818b0:	6963      	ldrpl	r3, [r4, #20]
d00818b2:	60a3      	str	r3, [r4, #8]
d00818b4:	e7f4      	b.n	d00818a0 <__swsetup_r+0xb0>
d00818b6:	2000      	movs	r0, #0
d00818b8:	e7f7      	b.n	d00818aa <__swsetup_r+0xba>
d00818ba:	bf00      	nop
d00818bc:	d009be10 	.word	0xd009be10
d00818c0:	d009bd28 	.word	0xd009bd28
d00818c4:	d009bd48 	.word	0xd009bd48
d00818c8:	d009bd08 	.word	0xd009bd08

d00818cc <__sflush_r>:
d00818cc:	898a      	ldrh	r2, [r1, #12]
d00818ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00818d2:	4605      	mov	r5, r0
d00818d4:	0710      	lsls	r0, r2, #28
d00818d6:	460c      	mov	r4, r1
d00818d8:	d458      	bmi.n	d008198c <__sflush_r+0xc0>
d00818da:	684b      	ldr	r3, [r1, #4]
d00818dc:	2b00      	cmp	r3, #0
d00818de:	dc05      	bgt.n	d00818ec <__sflush_r+0x20>
d00818e0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00818e2:	2b00      	cmp	r3, #0
d00818e4:	dc02      	bgt.n	d00818ec <__sflush_r+0x20>
d00818e6:	2000      	movs	r0, #0
d00818e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00818ec:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00818ee:	2e00      	cmp	r6, #0
d00818f0:	d0f9      	beq.n	d00818e6 <__sflush_r+0x1a>
d00818f2:	2300      	movs	r3, #0
d00818f4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00818f8:	682f      	ldr	r7, [r5, #0]
d00818fa:	602b      	str	r3, [r5, #0]
d00818fc:	d032      	beq.n	d0081964 <__sflush_r+0x98>
d00818fe:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0081900:	89a3      	ldrh	r3, [r4, #12]
d0081902:	075a      	lsls	r2, r3, #29
d0081904:	d505      	bpl.n	d0081912 <__sflush_r+0x46>
d0081906:	6863      	ldr	r3, [r4, #4]
d0081908:	1ac0      	subs	r0, r0, r3
d008190a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d008190c:	b10b      	cbz	r3, d0081912 <__sflush_r+0x46>
d008190e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0081910:	1ac0      	subs	r0, r0, r3
d0081912:	2300      	movs	r3, #0
d0081914:	4602      	mov	r2, r0
d0081916:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081918:	6a21      	ldr	r1, [r4, #32]
d008191a:	4628      	mov	r0, r5
d008191c:	47b0      	blx	r6
d008191e:	1c43      	adds	r3, r0, #1
d0081920:	89a3      	ldrh	r3, [r4, #12]
d0081922:	d106      	bne.n	d0081932 <__sflush_r+0x66>
d0081924:	6829      	ldr	r1, [r5, #0]
d0081926:	291d      	cmp	r1, #29
d0081928:	d82c      	bhi.n	d0081984 <__sflush_r+0xb8>
d008192a:	4a2a      	ldr	r2, [pc, #168]	; (d00819d4 <__sflush_r+0x108>)
d008192c:	40ca      	lsrs	r2, r1
d008192e:	07d6      	lsls	r6, r2, #31
d0081930:	d528      	bpl.n	d0081984 <__sflush_r+0xb8>
d0081932:	2200      	movs	r2, #0
d0081934:	6062      	str	r2, [r4, #4]
d0081936:	04d9      	lsls	r1, r3, #19
d0081938:	6922      	ldr	r2, [r4, #16]
d008193a:	6022      	str	r2, [r4, #0]
d008193c:	d504      	bpl.n	d0081948 <__sflush_r+0x7c>
d008193e:	1c42      	adds	r2, r0, #1
d0081940:	d101      	bne.n	d0081946 <__sflush_r+0x7a>
d0081942:	682b      	ldr	r3, [r5, #0]
d0081944:	b903      	cbnz	r3, d0081948 <__sflush_r+0x7c>
d0081946:	6560      	str	r0, [r4, #84]	; 0x54
d0081948:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008194a:	602f      	str	r7, [r5, #0]
d008194c:	2900      	cmp	r1, #0
d008194e:	d0ca      	beq.n	d00818e6 <__sflush_r+0x1a>
d0081950:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081954:	4299      	cmp	r1, r3
d0081956:	d002      	beq.n	d008195e <__sflush_r+0x92>
d0081958:	4628      	mov	r0, r5
d008195a:	f7ff fd09 	bl	d0081370 <_free_r>
d008195e:	2000      	movs	r0, #0
d0081960:	6360      	str	r0, [r4, #52]	; 0x34
d0081962:	e7c1      	b.n	d00818e8 <__sflush_r+0x1c>
d0081964:	6a21      	ldr	r1, [r4, #32]
d0081966:	2301      	movs	r3, #1
d0081968:	4628      	mov	r0, r5
d008196a:	47b0      	blx	r6
d008196c:	1c41      	adds	r1, r0, #1
d008196e:	d1c7      	bne.n	d0081900 <__sflush_r+0x34>
d0081970:	682b      	ldr	r3, [r5, #0]
d0081972:	2b00      	cmp	r3, #0
d0081974:	d0c4      	beq.n	d0081900 <__sflush_r+0x34>
d0081976:	2b1d      	cmp	r3, #29
d0081978:	d001      	beq.n	d008197e <__sflush_r+0xb2>
d008197a:	2b16      	cmp	r3, #22
d008197c:	d101      	bne.n	d0081982 <__sflush_r+0xb6>
d008197e:	602f      	str	r7, [r5, #0]
d0081980:	e7b1      	b.n	d00818e6 <__sflush_r+0x1a>
d0081982:	89a3      	ldrh	r3, [r4, #12]
d0081984:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081988:	81a3      	strh	r3, [r4, #12]
d008198a:	e7ad      	b.n	d00818e8 <__sflush_r+0x1c>
d008198c:	690f      	ldr	r7, [r1, #16]
d008198e:	2f00      	cmp	r7, #0
d0081990:	d0a9      	beq.n	d00818e6 <__sflush_r+0x1a>
d0081992:	0793      	lsls	r3, r2, #30
d0081994:	680e      	ldr	r6, [r1, #0]
d0081996:	bf08      	it	eq
d0081998:	694b      	ldreq	r3, [r1, #20]
d008199a:	600f      	str	r7, [r1, #0]
d008199c:	bf18      	it	ne
d008199e:	2300      	movne	r3, #0
d00819a0:	eba6 0807 	sub.w	r8, r6, r7
d00819a4:	608b      	str	r3, [r1, #8]
d00819a6:	f1b8 0f00 	cmp.w	r8, #0
d00819aa:	dd9c      	ble.n	d00818e6 <__sflush_r+0x1a>
d00819ac:	6a21      	ldr	r1, [r4, #32]
d00819ae:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00819b0:	4643      	mov	r3, r8
d00819b2:	463a      	mov	r2, r7
d00819b4:	4628      	mov	r0, r5
d00819b6:	47b0      	blx	r6
d00819b8:	2800      	cmp	r0, #0
d00819ba:	dc06      	bgt.n	d00819ca <__sflush_r+0xfe>
d00819bc:	89a3      	ldrh	r3, [r4, #12]
d00819be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00819c2:	81a3      	strh	r3, [r4, #12]
d00819c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00819c8:	e78e      	b.n	d00818e8 <__sflush_r+0x1c>
d00819ca:	4407      	add	r7, r0
d00819cc:	eba8 0800 	sub.w	r8, r8, r0
d00819d0:	e7e9      	b.n	d00819a6 <__sflush_r+0xda>
d00819d2:	bf00      	nop
d00819d4:	20400001 	.word	0x20400001

d00819d8 <_fflush_r>:
d00819d8:	b538      	push	{r3, r4, r5, lr}
d00819da:	690b      	ldr	r3, [r1, #16]
d00819dc:	4605      	mov	r5, r0
d00819de:	460c      	mov	r4, r1
d00819e0:	b913      	cbnz	r3, d00819e8 <_fflush_r+0x10>
d00819e2:	2500      	movs	r5, #0
d00819e4:	4628      	mov	r0, r5
d00819e6:	bd38      	pop	{r3, r4, r5, pc}
d00819e8:	b118      	cbz	r0, d00819f2 <_fflush_r+0x1a>
d00819ea:	6983      	ldr	r3, [r0, #24]
d00819ec:	b90b      	cbnz	r3, d00819f2 <_fflush_r+0x1a>
d00819ee:	f000 f887 	bl	d0081b00 <__sinit>
d00819f2:	4b14      	ldr	r3, [pc, #80]	; (d0081a44 <_fflush_r+0x6c>)
d00819f4:	429c      	cmp	r4, r3
d00819f6:	d11b      	bne.n	d0081a30 <_fflush_r+0x58>
d00819f8:	686c      	ldr	r4, [r5, #4]
d00819fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00819fe:	2b00      	cmp	r3, #0
d0081a00:	d0ef      	beq.n	d00819e2 <_fflush_r+0xa>
d0081a02:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081a04:	07d0      	lsls	r0, r2, #31
d0081a06:	d404      	bmi.n	d0081a12 <_fflush_r+0x3a>
d0081a08:	0599      	lsls	r1, r3, #22
d0081a0a:	d402      	bmi.n	d0081a12 <_fflush_r+0x3a>
d0081a0c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081a0e:	f000 f915 	bl	d0081c3c <__retarget_lock_acquire_recursive>
d0081a12:	4628      	mov	r0, r5
d0081a14:	4621      	mov	r1, r4
d0081a16:	f7ff ff59 	bl	d00818cc <__sflush_r>
d0081a1a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081a1c:	07da      	lsls	r2, r3, #31
d0081a1e:	4605      	mov	r5, r0
d0081a20:	d4e0      	bmi.n	d00819e4 <_fflush_r+0xc>
d0081a22:	89a3      	ldrh	r3, [r4, #12]
d0081a24:	059b      	lsls	r3, r3, #22
d0081a26:	d4dd      	bmi.n	d00819e4 <_fflush_r+0xc>
d0081a28:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081a2a:	f000 f908 	bl	d0081c3e <__retarget_lock_release_recursive>
d0081a2e:	e7d9      	b.n	d00819e4 <_fflush_r+0xc>
d0081a30:	4b05      	ldr	r3, [pc, #20]	; (d0081a48 <_fflush_r+0x70>)
d0081a32:	429c      	cmp	r4, r3
d0081a34:	d101      	bne.n	d0081a3a <_fflush_r+0x62>
d0081a36:	68ac      	ldr	r4, [r5, #8]
d0081a38:	e7df      	b.n	d00819fa <_fflush_r+0x22>
d0081a3a:	4b04      	ldr	r3, [pc, #16]	; (d0081a4c <_fflush_r+0x74>)
d0081a3c:	429c      	cmp	r4, r3
d0081a3e:	bf08      	it	eq
d0081a40:	68ec      	ldreq	r4, [r5, #12]
d0081a42:	e7da      	b.n	d00819fa <_fflush_r+0x22>
d0081a44:	d009bd28 	.word	0xd009bd28
d0081a48:	d009bd48 	.word	0xd009bd48
d0081a4c:	d009bd08 	.word	0xd009bd08

d0081a50 <std>:
d0081a50:	2300      	movs	r3, #0
d0081a52:	b510      	push	{r4, lr}
d0081a54:	4604      	mov	r4, r0
d0081a56:	e9c0 3300 	strd	r3, r3, [r0]
d0081a5a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0081a5e:	6083      	str	r3, [r0, #8]
d0081a60:	8181      	strh	r1, [r0, #12]
d0081a62:	6643      	str	r3, [r0, #100]	; 0x64
d0081a64:	81c2      	strh	r2, [r0, #14]
d0081a66:	6183      	str	r3, [r0, #24]
d0081a68:	4619      	mov	r1, r3
d0081a6a:	2208      	movs	r2, #8
d0081a6c:	305c      	adds	r0, #92	; 0x5c
d0081a6e:	f7ff fc77 	bl	d0081360 <memset>
d0081a72:	4b05      	ldr	r3, [pc, #20]	; (d0081a88 <std+0x38>)
d0081a74:	6263      	str	r3, [r4, #36]	; 0x24
d0081a76:	4b05      	ldr	r3, [pc, #20]	; (d0081a8c <std+0x3c>)
d0081a78:	62a3      	str	r3, [r4, #40]	; 0x28
d0081a7a:	4b05      	ldr	r3, [pc, #20]	; (d0081a90 <std+0x40>)
d0081a7c:	62e3      	str	r3, [r4, #44]	; 0x2c
d0081a7e:	4b05      	ldr	r3, [pc, #20]	; (d0081a94 <std+0x44>)
d0081a80:	6224      	str	r4, [r4, #32]
d0081a82:	6323      	str	r3, [r4, #48]	; 0x30
d0081a84:	bd10      	pop	{r4, pc}
d0081a86:	bf00      	nop
d0081a88:	d0081d21 	.word	0xd0081d21
d0081a8c:	d0081d43 	.word	0xd0081d43
d0081a90:	d0081d7b 	.word	0xd0081d7b
d0081a94:	d0081d9f 	.word	0xd0081d9f

d0081a98 <_cleanup_r>:
d0081a98:	4901      	ldr	r1, [pc, #4]	; (d0081aa0 <_cleanup_r+0x8>)
d0081a9a:	f000 b8af 	b.w	d0081bfc <_fwalk_reent>
d0081a9e:	bf00      	nop
d0081aa0:	d00819d9 	.word	0xd00819d9

d0081aa4 <__sfmoreglue>:
d0081aa4:	b570      	push	{r4, r5, r6, lr}
d0081aa6:	1e4a      	subs	r2, r1, #1
d0081aa8:	2568      	movs	r5, #104	; 0x68
d0081aaa:	4355      	muls	r5, r2
d0081aac:	460e      	mov	r6, r1
d0081aae:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0081ab2:	f7ff fcad 	bl	d0081410 <_malloc_r>
d0081ab6:	4604      	mov	r4, r0
d0081ab8:	b140      	cbz	r0, d0081acc <__sfmoreglue+0x28>
d0081aba:	2100      	movs	r1, #0
d0081abc:	e9c0 1600 	strd	r1, r6, [r0]
d0081ac0:	300c      	adds	r0, #12
d0081ac2:	60a0      	str	r0, [r4, #8]
d0081ac4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0081ac8:	f7ff fc4a 	bl	d0081360 <memset>
d0081acc:	4620      	mov	r0, r4
d0081ace:	bd70      	pop	{r4, r5, r6, pc}

d0081ad0 <__sfp_lock_acquire>:
d0081ad0:	4801      	ldr	r0, [pc, #4]	; (d0081ad8 <__sfp_lock_acquire+0x8>)
d0081ad2:	f000 b8b3 	b.w	d0081c3c <__retarget_lock_acquire_recursive>
d0081ad6:	bf00      	nop
d0081ad8:	d009c39a 	.word	0xd009c39a

d0081adc <__sfp_lock_release>:
d0081adc:	4801      	ldr	r0, [pc, #4]	; (d0081ae4 <__sfp_lock_release+0x8>)
d0081ade:	f000 b8ae 	b.w	d0081c3e <__retarget_lock_release_recursive>
d0081ae2:	bf00      	nop
d0081ae4:	d009c39a 	.word	0xd009c39a

d0081ae8 <__sinit_lock_acquire>:
d0081ae8:	4801      	ldr	r0, [pc, #4]	; (d0081af0 <__sinit_lock_acquire+0x8>)
d0081aea:	f000 b8a7 	b.w	d0081c3c <__retarget_lock_acquire_recursive>
d0081aee:	bf00      	nop
d0081af0:	d009c395 	.word	0xd009c395

d0081af4 <__sinit_lock_release>:
d0081af4:	4801      	ldr	r0, [pc, #4]	; (d0081afc <__sinit_lock_release+0x8>)
d0081af6:	f000 b8a2 	b.w	d0081c3e <__retarget_lock_release_recursive>
d0081afa:	bf00      	nop
d0081afc:	d009c395 	.word	0xd009c395

d0081b00 <__sinit>:
d0081b00:	b510      	push	{r4, lr}
d0081b02:	4604      	mov	r4, r0
d0081b04:	f7ff fff0 	bl	d0081ae8 <__sinit_lock_acquire>
d0081b08:	69a3      	ldr	r3, [r4, #24]
d0081b0a:	b11b      	cbz	r3, d0081b14 <__sinit+0x14>
d0081b0c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0081b10:	f7ff bff0 	b.w	d0081af4 <__sinit_lock_release>
d0081b14:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081b18:	6523      	str	r3, [r4, #80]	; 0x50
d0081b1a:	4b13      	ldr	r3, [pc, #76]	; (d0081b68 <__sinit+0x68>)
d0081b1c:	4a13      	ldr	r2, [pc, #76]	; (d0081b6c <__sinit+0x6c>)
d0081b1e:	681b      	ldr	r3, [r3, #0]
d0081b20:	62a2      	str	r2, [r4, #40]	; 0x28
d0081b22:	42a3      	cmp	r3, r4
d0081b24:	bf04      	itt	eq
d0081b26:	2301      	moveq	r3, #1
d0081b28:	61a3      	streq	r3, [r4, #24]
d0081b2a:	4620      	mov	r0, r4
d0081b2c:	f000 f820 	bl	d0081b70 <__sfp>
d0081b30:	6060      	str	r0, [r4, #4]
d0081b32:	4620      	mov	r0, r4
d0081b34:	f000 f81c 	bl	d0081b70 <__sfp>
d0081b38:	60a0      	str	r0, [r4, #8]
d0081b3a:	4620      	mov	r0, r4
d0081b3c:	f000 f818 	bl	d0081b70 <__sfp>
d0081b40:	2200      	movs	r2, #0
d0081b42:	60e0      	str	r0, [r4, #12]
d0081b44:	2104      	movs	r1, #4
d0081b46:	6860      	ldr	r0, [r4, #4]
d0081b48:	f7ff ff82 	bl	d0081a50 <std>
d0081b4c:	68a0      	ldr	r0, [r4, #8]
d0081b4e:	2201      	movs	r2, #1
d0081b50:	2109      	movs	r1, #9
d0081b52:	f7ff ff7d 	bl	d0081a50 <std>
d0081b56:	68e0      	ldr	r0, [r4, #12]
d0081b58:	2202      	movs	r2, #2
d0081b5a:	2112      	movs	r1, #18
d0081b5c:	f7ff ff78 	bl	d0081a50 <std>
d0081b60:	2301      	movs	r3, #1
d0081b62:	61a3      	str	r3, [r4, #24]
d0081b64:	e7d2      	b.n	d0081b0c <__sinit+0xc>
d0081b66:	bf00      	nop
d0081b68:	d009bd04 	.word	0xd009bd04
d0081b6c:	d0081a99 	.word	0xd0081a99

d0081b70 <__sfp>:
d0081b70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081b72:	4607      	mov	r7, r0
d0081b74:	f7ff ffac 	bl	d0081ad0 <__sfp_lock_acquire>
d0081b78:	4b1e      	ldr	r3, [pc, #120]	; (d0081bf4 <__sfp+0x84>)
d0081b7a:	681e      	ldr	r6, [r3, #0]
d0081b7c:	69b3      	ldr	r3, [r6, #24]
d0081b7e:	b913      	cbnz	r3, d0081b86 <__sfp+0x16>
d0081b80:	4630      	mov	r0, r6
d0081b82:	f7ff ffbd 	bl	d0081b00 <__sinit>
d0081b86:	3648      	adds	r6, #72	; 0x48
d0081b88:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081b8c:	3b01      	subs	r3, #1
d0081b8e:	d503      	bpl.n	d0081b98 <__sfp+0x28>
d0081b90:	6833      	ldr	r3, [r6, #0]
d0081b92:	b30b      	cbz	r3, d0081bd8 <__sfp+0x68>
d0081b94:	6836      	ldr	r6, [r6, #0]
d0081b96:	e7f7      	b.n	d0081b88 <__sfp+0x18>
d0081b98:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0081b9c:	b9d5      	cbnz	r5, d0081bd4 <__sfp+0x64>
d0081b9e:	4b16      	ldr	r3, [pc, #88]	; (d0081bf8 <__sfp+0x88>)
d0081ba0:	60e3      	str	r3, [r4, #12]
d0081ba2:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0081ba6:	6665      	str	r5, [r4, #100]	; 0x64
d0081ba8:	f000 f847 	bl	d0081c3a <__retarget_lock_init_recursive>
d0081bac:	f7ff ff96 	bl	d0081adc <__sfp_lock_release>
d0081bb0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0081bb4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0081bb8:	6025      	str	r5, [r4, #0]
d0081bba:	61a5      	str	r5, [r4, #24]
d0081bbc:	2208      	movs	r2, #8
d0081bbe:	4629      	mov	r1, r5
d0081bc0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0081bc4:	f7ff fbcc 	bl	d0081360 <memset>
d0081bc8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0081bcc:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081bd0:	4620      	mov	r0, r4
d0081bd2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081bd4:	3468      	adds	r4, #104	; 0x68
d0081bd6:	e7d9      	b.n	d0081b8c <__sfp+0x1c>
d0081bd8:	2104      	movs	r1, #4
d0081bda:	4638      	mov	r0, r7
d0081bdc:	f7ff ff62 	bl	d0081aa4 <__sfmoreglue>
d0081be0:	4604      	mov	r4, r0
d0081be2:	6030      	str	r0, [r6, #0]
d0081be4:	2800      	cmp	r0, #0
d0081be6:	d1d5      	bne.n	d0081b94 <__sfp+0x24>
d0081be8:	f7ff ff78 	bl	d0081adc <__sfp_lock_release>
d0081bec:	230c      	movs	r3, #12
d0081bee:	603b      	str	r3, [r7, #0]
d0081bf0:	e7ee      	b.n	d0081bd0 <__sfp+0x60>
d0081bf2:	bf00      	nop
d0081bf4:	d009bd04 	.word	0xd009bd04
d0081bf8:	ffff0001 	.word	0xffff0001

d0081bfc <_fwalk_reent>:
d0081bfc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081c00:	4606      	mov	r6, r0
d0081c02:	4688      	mov	r8, r1
d0081c04:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081c08:	2700      	movs	r7, #0
d0081c0a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081c0e:	f1b9 0901 	subs.w	r9, r9, #1
d0081c12:	d505      	bpl.n	d0081c20 <_fwalk_reent+0x24>
d0081c14:	6824      	ldr	r4, [r4, #0]
d0081c16:	2c00      	cmp	r4, #0
d0081c18:	d1f7      	bne.n	d0081c0a <_fwalk_reent+0xe>
d0081c1a:	4638      	mov	r0, r7
d0081c1c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081c20:	89ab      	ldrh	r3, [r5, #12]
d0081c22:	2b01      	cmp	r3, #1
d0081c24:	d907      	bls.n	d0081c36 <_fwalk_reent+0x3a>
d0081c26:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081c2a:	3301      	adds	r3, #1
d0081c2c:	d003      	beq.n	d0081c36 <_fwalk_reent+0x3a>
d0081c2e:	4629      	mov	r1, r5
d0081c30:	4630      	mov	r0, r6
d0081c32:	47c0      	blx	r8
d0081c34:	4307      	orrs	r7, r0
d0081c36:	3568      	adds	r5, #104	; 0x68
d0081c38:	e7e9      	b.n	d0081c0e <_fwalk_reent+0x12>

d0081c3a <__retarget_lock_init_recursive>:
d0081c3a:	4770      	bx	lr

d0081c3c <__retarget_lock_acquire_recursive>:
d0081c3c:	4770      	bx	lr

d0081c3e <__retarget_lock_release_recursive>:
d0081c3e:	4770      	bx	lr

d0081c40 <__swhatbuf_r>:
d0081c40:	b570      	push	{r4, r5, r6, lr}
d0081c42:	460e      	mov	r6, r1
d0081c44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081c48:	2900      	cmp	r1, #0
d0081c4a:	b096      	sub	sp, #88	; 0x58
d0081c4c:	4614      	mov	r4, r2
d0081c4e:	461d      	mov	r5, r3
d0081c50:	da07      	bge.n	d0081c62 <__swhatbuf_r+0x22>
d0081c52:	2300      	movs	r3, #0
d0081c54:	602b      	str	r3, [r5, #0]
d0081c56:	89b3      	ldrh	r3, [r6, #12]
d0081c58:	061a      	lsls	r2, r3, #24
d0081c5a:	d410      	bmi.n	d0081c7e <__swhatbuf_r+0x3e>
d0081c5c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081c60:	e00e      	b.n	d0081c80 <__swhatbuf_r+0x40>
d0081c62:	466a      	mov	r2, sp
d0081c64:	f000 f8b0 	bl	d0081dc8 <_fstat_r>
d0081c68:	2800      	cmp	r0, #0
d0081c6a:	dbf2      	blt.n	d0081c52 <__swhatbuf_r+0x12>
d0081c6c:	9a01      	ldr	r2, [sp, #4]
d0081c6e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081c72:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081c76:	425a      	negs	r2, r3
d0081c78:	415a      	adcs	r2, r3
d0081c7a:	602a      	str	r2, [r5, #0]
d0081c7c:	e7ee      	b.n	d0081c5c <__swhatbuf_r+0x1c>
d0081c7e:	2340      	movs	r3, #64	; 0x40
d0081c80:	2000      	movs	r0, #0
d0081c82:	6023      	str	r3, [r4, #0]
d0081c84:	b016      	add	sp, #88	; 0x58
d0081c86:	bd70      	pop	{r4, r5, r6, pc}

d0081c88 <__smakebuf_r>:
d0081c88:	898b      	ldrh	r3, [r1, #12]
d0081c8a:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0081c8c:	079d      	lsls	r5, r3, #30
d0081c8e:	4606      	mov	r6, r0
d0081c90:	460c      	mov	r4, r1
d0081c92:	d507      	bpl.n	d0081ca4 <__smakebuf_r+0x1c>
d0081c94:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0081c98:	6023      	str	r3, [r4, #0]
d0081c9a:	6123      	str	r3, [r4, #16]
d0081c9c:	2301      	movs	r3, #1
d0081c9e:	6163      	str	r3, [r4, #20]
d0081ca0:	b002      	add	sp, #8
d0081ca2:	bd70      	pop	{r4, r5, r6, pc}
d0081ca4:	ab01      	add	r3, sp, #4
d0081ca6:	466a      	mov	r2, sp
d0081ca8:	f7ff ffca 	bl	d0081c40 <__swhatbuf_r>
d0081cac:	9900      	ldr	r1, [sp, #0]
d0081cae:	4605      	mov	r5, r0
d0081cb0:	4630      	mov	r0, r6
d0081cb2:	f7ff fbad 	bl	d0081410 <_malloc_r>
d0081cb6:	b948      	cbnz	r0, d0081ccc <__smakebuf_r+0x44>
d0081cb8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081cbc:	059a      	lsls	r2, r3, #22
d0081cbe:	d4ef      	bmi.n	d0081ca0 <__smakebuf_r+0x18>
d0081cc0:	f023 0303 	bic.w	r3, r3, #3
d0081cc4:	f043 0302 	orr.w	r3, r3, #2
d0081cc8:	81a3      	strh	r3, [r4, #12]
d0081cca:	e7e3      	b.n	d0081c94 <__smakebuf_r+0xc>
d0081ccc:	4b0d      	ldr	r3, [pc, #52]	; (d0081d04 <__smakebuf_r+0x7c>)
d0081cce:	62b3      	str	r3, [r6, #40]	; 0x28
d0081cd0:	89a3      	ldrh	r3, [r4, #12]
d0081cd2:	6020      	str	r0, [r4, #0]
d0081cd4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081cd8:	81a3      	strh	r3, [r4, #12]
d0081cda:	9b00      	ldr	r3, [sp, #0]
d0081cdc:	6163      	str	r3, [r4, #20]
d0081cde:	9b01      	ldr	r3, [sp, #4]
d0081ce0:	6120      	str	r0, [r4, #16]
d0081ce2:	b15b      	cbz	r3, d0081cfc <__smakebuf_r+0x74>
d0081ce4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0081ce8:	4630      	mov	r0, r6
d0081cea:	f000 f87f 	bl	d0081dec <_isatty_r>
d0081cee:	b128      	cbz	r0, d0081cfc <__smakebuf_r+0x74>
d0081cf0:	89a3      	ldrh	r3, [r4, #12]
d0081cf2:	f023 0303 	bic.w	r3, r3, #3
d0081cf6:	f043 0301 	orr.w	r3, r3, #1
d0081cfa:	81a3      	strh	r3, [r4, #12]
d0081cfc:	89a0      	ldrh	r0, [r4, #12]
d0081cfe:	4305      	orrs	r5, r0
d0081d00:	81a5      	strh	r5, [r4, #12]
d0081d02:	e7cd      	b.n	d0081ca0 <__smakebuf_r+0x18>
d0081d04:	d0081a99 	.word	0xd0081a99

d0081d08 <__malloc_lock>:
d0081d08:	4801      	ldr	r0, [pc, #4]	; (d0081d10 <__malloc_lock+0x8>)
d0081d0a:	f7ff bf97 	b.w	d0081c3c <__retarget_lock_acquire_recursive>
d0081d0e:	bf00      	nop
d0081d10:	d009c396 	.word	0xd009c396

d0081d14 <__malloc_unlock>:
d0081d14:	4801      	ldr	r0, [pc, #4]	; (d0081d1c <__malloc_unlock+0x8>)
d0081d16:	f7ff bf92 	b.w	d0081c3e <__retarget_lock_release_recursive>
d0081d1a:	bf00      	nop
d0081d1c:	d009c396 	.word	0xd009c396

d0081d20 <__sread>:
d0081d20:	b510      	push	{r4, lr}
d0081d22:	460c      	mov	r4, r1
d0081d24:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081d28:	f000 f882 	bl	d0081e30 <_read_r>
d0081d2c:	2800      	cmp	r0, #0
d0081d2e:	bfab      	itete	ge
d0081d30:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0081d32:	89a3      	ldrhlt	r3, [r4, #12]
d0081d34:	181b      	addge	r3, r3, r0
d0081d36:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0081d3a:	bfac      	ite	ge
d0081d3c:	6563      	strge	r3, [r4, #84]	; 0x54
d0081d3e:	81a3      	strhlt	r3, [r4, #12]
d0081d40:	bd10      	pop	{r4, pc}

d0081d42 <__swrite>:
d0081d42:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081d46:	461f      	mov	r7, r3
d0081d48:	898b      	ldrh	r3, [r1, #12]
d0081d4a:	05db      	lsls	r3, r3, #23
d0081d4c:	4605      	mov	r5, r0
d0081d4e:	460c      	mov	r4, r1
d0081d50:	4616      	mov	r6, r2
d0081d52:	d505      	bpl.n	d0081d60 <__swrite+0x1e>
d0081d54:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081d58:	2302      	movs	r3, #2
d0081d5a:	2200      	movs	r2, #0
d0081d5c:	f000 f856 	bl	d0081e0c <_lseek_r>
d0081d60:	89a3      	ldrh	r3, [r4, #12]
d0081d62:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0081d66:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0081d6a:	81a3      	strh	r3, [r4, #12]
d0081d6c:	4632      	mov	r2, r6
d0081d6e:	463b      	mov	r3, r7
d0081d70:	4628      	mov	r0, r5
d0081d72:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0081d76:	f7fe ba61 	b.w	d008023c <_write_r>

d0081d7a <__sseek>:
d0081d7a:	b510      	push	{r4, lr}
d0081d7c:	460c      	mov	r4, r1
d0081d7e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081d82:	f000 f843 	bl	d0081e0c <_lseek_r>
d0081d86:	1c43      	adds	r3, r0, #1
d0081d88:	89a3      	ldrh	r3, [r4, #12]
d0081d8a:	bf15      	itete	ne
d0081d8c:	6560      	strne	r0, [r4, #84]	; 0x54
d0081d8e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0081d92:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0081d96:	81a3      	strheq	r3, [r4, #12]
d0081d98:	bf18      	it	ne
d0081d9a:	81a3      	strhne	r3, [r4, #12]
d0081d9c:	bd10      	pop	{r4, pc}

d0081d9e <__sclose>:
d0081d9e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081da2:	f000 b801 	b.w	d0081da8 <_close_r>
	...

d0081da8 <_close_r>:
d0081da8:	b538      	push	{r3, r4, r5, lr}
d0081daa:	4d06      	ldr	r5, [pc, #24]	; (d0081dc4 <_close_r+0x1c>)
d0081dac:	2300      	movs	r3, #0
d0081dae:	4604      	mov	r4, r0
d0081db0:	4608      	mov	r0, r1
d0081db2:	602b      	str	r3, [r5, #0]
d0081db4:	f7fe fa7c 	bl	d00802b0 <_close>
d0081db8:	1c43      	adds	r3, r0, #1
d0081dba:	d102      	bne.n	d0081dc2 <_close_r+0x1a>
d0081dbc:	682b      	ldr	r3, [r5, #0]
d0081dbe:	b103      	cbz	r3, d0081dc2 <_close_r+0x1a>
d0081dc0:	6023      	str	r3, [r4, #0]
d0081dc2:	bd38      	pop	{r3, r4, r5, pc}
d0081dc4:	d009c39c 	.word	0xd009c39c

d0081dc8 <_fstat_r>:
d0081dc8:	b538      	push	{r3, r4, r5, lr}
d0081dca:	4d07      	ldr	r5, [pc, #28]	; (d0081de8 <_fstat_r+0x20>)
d0081dcc:	2300      	movs	r3, #0
d0081dce:	4604      	mov	r4, r0
d0081dd0:	4608      	mov	r0, r1
d0081dd2:	4611      	mov	r1, r2
d0081dd4:	602b      	str	r3, [r5, #0]
d0081dd6:	f7fe fa6f 	bl	d00802b8 <_fstat>
d0081dda:	1c43      	adds	r3, r0, #1
d0081ddc:	d102      	bne.n	d0081de4 <_fstat_r+0x1c>
d0081dde:	682b      	ldr	r3, [r5, #0]
d0081de0:	b103      	cbz	r3, d0081de4 <_fstat_r+0x1c>
d0081de2:	6023      	str	r3, [r4, #0]
d0081de4:	bd38      	pop	{r3, r4, r5, pc}
d0081de6:	bf00      	nop
d0081de8:	d009c39c 	.word	0xd009c39c

d0081dec <_isatty_r>:
d0081dec:	b538      	push	{r3, r4, r5, lr}
d0081dee:	4d06      	ldr	r5, [pc, #24]	; (d0081e08 <_isatty_r+0x1c>)
d0081df0:	2300      	movs	r3, #0
d0081df2:	4604      	mov	r4, r0
d0081df4:	4608      	mov	r0, r1
d0081df6:	602b      	str	r3, [r5, #0]
d0081df8:	f7fe fa86 	bl	d0080308 <_isatty>
d0081dfc:	1c43      	adds	r3, r0, #1
d0081dfe:	d102      	bne.n	d0081e06 <_isatty_r+0x1a>
d0081e00:	682b      	ldr	r3, [r5, #0]
d0081e02:	b103      	cbz	r3, d0081e06 <_isatty_r+0x1a>
d0081e04:	6023      	str	r3, [r4, #0]
d0081e06:	bd38      	pop	{r3, r4, r5, pc}
d0081e08:	d009c39c 	.word	0xd009c39c

d0081e0c <_lseek_r>:
d0081e0c:	b538      	push	{r3, r4, r5, lr}
d0081e0e:	4d07      	ldr	r5, [pc, #28]	; (d0081e2c <_lseek_r+0x20>)
d0081e10:	4604      	mov	r4, r0
d0081e12:	4608      	mov	r0, r1
d0081e14:	4611      	mov	r1, r2
d0081e16:	2200      	movs	r2, #0
d0081e18:	602a      	str	r2, [r5, #0]
d0081e1a:	461a      	mov	r2, r3
d0081e1c:	f7fe fa52 	bl	d00802c4 <_lseek>
d0081e20:	1c43      	adds	r3, r0, #1
d0081e22:	d102      	bne.n	d0081e2a <_lseek_r+0x1e>
d0081e24:	682b      	ldr	r3, [r5, #0]
d0081e26:	b103      	cbz	r3, d0081e2a <_lseek_r+0x1e>
d0081e28:	6023      	str	r3, [r4, #0]
d0081e2a:	bd38      	pop	{r3, r4, r5, pc}
d0081e2c:	d009c39c 	.word	0xd009c39c

d0081e30 <_read_r>:
d0081e30:	b538      	push	{r3, r4, r5, lr}
d0081e32:	4d07      	ldr	r5, [pc, #28]	; (d0081e50 <_read_r+0x20>)
d0081e34:	4604      	mov	r4, r0
d0081e36:	4608      	mov	r0, r1
d0081e38:	4611      	mov	r1, r2
d0081e3a:	2200      	movs	r2, #0
d0081e3c:	602a      	str	r2, [r5, #0]
d0081e3e:	461a      	mov	r2, r3
d0081e40:	f7fe fa2c 	bl	d008029c <_read>
d0081e44:	1c43      	adds	r3, r0, #1
d0081e46:	d102      	bne.n	d0081e4e <_read_r+0x1e>
d0081e48:	682b      	ldr	r3, [r5, #0]
d0081e4a:	b103      	cbz	r3, d0081e4e <_read_r+0x1e>
d0081e4c:	6023      	str	r3, [r4, #0]
d0081e4e:	bd38      	pop	{r3, r4, r5, pc}
d0081e50:	d009c39c 	.word	0xd009c39c
	...

d0081e60 <clut>:
d0081e60:	00000000 ffafafaf ffffffff ff3b67a2     .............g;.
d0081e70:	ffaa907c ff959595 ff7b7b7b ffffa997     |.......{{{.....
d0081e80:	ff37a91d ff7ca9ff ffbf8112 ffebbf66     ..7...|.....f...
d0081e90:	ff78c178 ff3d9318 ffb33418 ffd9311c     x.x...=..4...1..
d0081ea0:	ff000000 ff00000e ff00001d ff00002b     ............+...
d0081eb0:	ff000139 ff000147 ff000156 ff000164     9...G...V...d...
d0081ec0:	ff0001d2 ff0001ff ffcecece ff00ff00     ................
d0081ed0:	ffb2ff00 ffffe700 ffff9600 ffff1100     ................
d0081ee0:	ff491200 ff491355 ff4914aa ff4916ff     ..I.U.I...I...I.
d0081ef0:	ff5b1700 ff5b1855 ff5b19aa ff5b1aff     ..[.U.[...[...[.
d0081f00:	ff6d1b00 ff6d1c55 ff00e300 ff85ff54     ..m.U.m.....T...
d0081f10:	ffc4ff00 ffffd900 ffffa41f ffe05400     .............T..
d0081f20:	ffff0000 ff922655 ff9227aa ff9228ff     ....U&...'...(..
d0081f30:	ffa42900 ffa42a55 ffa42baa ffa42cff     .)..U*...+...,..
d0081f40:	ffb62d00 ffb62f55 ffb630aa ffb631ff     .-..U/...0...1..
d0081f50:	ffc93200 ffc93355 ffc934aa ffc935ff     .2..U3...4...5..
d0081f60:	ffdb3700 ffdb3855 ffdb39aa ffdb3aff     .7..U8...9...:..
d0081f70:	ffed3b00 ffed3c55 ffed3daa ffed3fff     .;..U<...=...?..
d0081f80:	ffff4000 ffff4155 ffff42aa ffff43ff     .@..UA...B...C..
d0081f90:	ff004400 ff004555 ff0046aa ff0048ff     .D..UE...F...H..
d0081fa0:	ffffff00 ff12ff55 ff12ee55 ff12b6ff     ....U...U.......
d0081fb0:	ff001fff ff9d0ec7 fff10000 ffff7700     .............w..
d0081fc0:	ff375200 ff375355 ff3754aa ff3755ff     .R7.US7..T7..U7.
d0081fd0:	ff495600 ff495855 ff4959aa ff495aff     .VI.UXI..YI..ZI.
d0081fe0:	ff5b5b00 ff5b5c55 ff5b5daa ff5b5eff     .[[.U\[..][..^[.
d0081ff0:	ff6d6000 ff6d6155 ff6d62aa ff6d63ff     .`m.Uam..bm..cm.
d0082000:	ff6d6400 ff806555 ff8066aa ff8067ff     .dm.Ue...f...g..
d0082010:	ff926900 ff926a55 ff926baa ff926cff     .i..Uj...k...l..
d0082020:	ffa46d00 ffa46e55 ffa46faa ffa471ff     .m..Un...o...q..
d0082030:	ffb67200 ffb67355 ffb674aa ffb675ff     .r..Us...t...u..
d0082040:	ffc97600 ffc97755 ffc979aa ffc97aff     .v..Uw...y...z..
d0082050:	ffdb7b00 ffdb7c55 ffdb7daa ffdb7eff     .{..U|...}...~..
d0082060:	ffed7f00 ffed8055 ffed82aa ffed83ff     ....U...........
d0082070:	ffff8400 ffff8555 ffff86aa ffff87ff     ....U...........
d0082080:	ff008800 ff008a55 ff008baa ff008cff     ....U...........
d0082090:	ff128d00 ff128e55 ff128faa ff1290ff     ....U...........
d00820a0:	ff249200 ff249355 ff2494aa ff2495ff     ..$.U.$...$...$.
d00820b0:	ff379600 ff379755 ff3798aa ff3799ff     ..7.U.7...7...7.
d00820c0:	ff499b00 ff499c55 ff499daa ff499eff     ..I.U.I...I...I.
d00820d0:	ff5b9f00 ff5ba055 ff5ba1aa ff5ba3ff     ..[.U.[...[...[.
d00820e0:	ffa4b5d5 ffa0b0f8 ff94a3e6 ff7c89c1     ..............|.
d00820f0:	ff6281c0 ff1c62a1 ff4254ea ff62a1bd     ..b..b...TB...b.
d0082100:	ff7093c0 ff4977a1 ff003faa ff1554ff     ..p..wI..?...T..
d0082110:	ff1c50b9 ff00b3ff ff0088aa ff00b5ff     .P..............
d0082120:	ff0e62ff ff5eb7e3 ffbdc0b9 ff85b9ff     .b....^.........
d0082130:	ff006caf ff1f81b9 ff3f5baa ffc9beff     .l.......[?.....
d0082140:	ff5bafcb ffdbc055 ffdbc1aa ffbdc0c0     ..[.U...........
d0082150:	ffedc400 ffedc555 ffedc6aa ffedc7ff     ....U...........
d0082160:	ffffc800 ffffc955 ffffcaaa ffffccff     ....U...........
d0082170:	ff00cd00 ff00ce55 ff00cfaa ff00d0ff     ....U...........
d0082180:	ff12d100 ff12d255 ff12d3aa ff12d5ff     ....U...........
d0082190:	ff24d600 ff24d755 ff24d8aa ff24d9ff     ..$.U.$...$...$.
d00821a0:	ff37da00 ff37db55 ff37ddaa ff37deff     ..7.U.7...7...7.
d00821b0:	ff49df00 ff49e055 ff49e1aa ff49e2ff     ..I.U.I...I...I.
d00821c0:	ff5be300 ff5be555 ff5be6aa ff5be7ff     ..[.U.[...[...[.
d00821d0:	ff6de800 ff6de955 ff6deaaa ff6debff     ..m.U.m...m...m.
d00821e0:	ff0458ec ff0422ac ff0077ff ff0054ee     .X..."...w...T..
d00821f0:	ff0033dd ff990000 ffff0000 ffff6600     .3...........f..
d0082200:	ffffdd00 ffa4f755 ffa4f8aa ffa4f9ff     ....U...........
d0082210:	ffb6fa00 ffb6fb55 ffb6fcaa ffb6feff     ....U...........
d0082220:	ffff00ff ff000000 ff131313 ff272727     ............'''.
d0082230:	ff3a3a3a ff4e4e4e ff626262 ff757575     :::.NNN.bbb.uuu.
d0082240:	ff898989 ff9c9c9c ffb0b0b0 ffc4c4c4     ................
d0082250:	ffd7d7d7 ffebebeb ffffffff ffffffff     ................

d0082260 <topscroll_bar_bg1>:
d0082260:	9f9f9f9f 9f9f9f9f 9f9f9f9f 020202a0     ................
d0082270:	a0020202 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082280:	029f9f9f 02020202 9f9fa002 9f9f9f9f     ................
d0082290:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822a0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 029f9f9f     ................
d00822b0:	02020202 02020202 9f020202 9f9f9f9f     ................
d00822c0:	9f9f9f9f 0202a09f a3020202 9f9fa3a3     ................
d00822d0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822e0:	a00202a0 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00822f0:	02029f9f 02020202 02020202 9f9fa002     ................
d0082300:	9f9f9f9f 9f9f9f9f 0202a09f 02020202     ................
d0082310:	02020202 9f9f0202 9f9f9f9f 9f9f9f9f     ................
d0082320:	0202029f 02020202 9f9f9f9f 9f9f9f9f     ................
d0082330:	9f9f9f9f 9f9f9f9f a00202a0 02a09f9f     ................
d0082340:	9f9f9f02 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082350:	02020202 9f020202 9f9f9f9f 9f9f9f9f     ................
d0082360:	a09f9f9f 02020202 02020202 9f9f0202     ................
d0082370:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082380:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082390:	029f9f9f 0202a0a0 9f9f0202 9f9f9f9f     ................
d00823a0:	9f9f9f9f 9f9f9f9f 0202a09f 02020202     ................
d00823b0:	9f9f9f02 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00823c0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00823d0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00823e0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00823f0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082400:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082410:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082420:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082430:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082440:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082450:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082460:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082470:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082480:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082490:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00824a0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00824b0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00824c0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00824d0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00824e0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00824f0:	a0a0a09f a0a0a0a0 9f9f9f9f 9f9f9f9f     ................
d0082500:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082510:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082520:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082530:	b79f9f9f 02020202 b7b702a0 9fa0a0a0     ................
d0082540:	9f9f9f9f 9f9f9f9f 9f9f9f9f 8f8f9f9f     ................
d0082550:	9f9f8f8f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082560:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d0082570:	9f9f9f9f b7b79f9f 02a00202 b7020202     ................
d0082580:	9f9fa0b7 9f9f9f9f 8f9f9f9f 8f8f8f8f     ................
d0082590:	8f8f8f8f 8f8f8f8f a0a0a0a0 9fa0a0a0     ................
d00825a0:	9f9f9f9f 9f9f9f9f 9f9f9f9f 9f9f9f9f     ................
d00825b0:	8f8f8f8f 8f8f8f8f 09098f8f a0a0a009     ................
d00825c0:	9fa0a0a0 9f9f9f9f 8f8f8f9f 8f8f8f8f     ................
d00825d0:	8f8f8f8f 8f8f8f8f 02b78f8f a0020202     ................
d00825e0:	a0b7b702 8f8fa0a0 8f8f8f8f 8f8f8f8f     ................
d00825f0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082600:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082610:	8f8f8f8f 8f8f8f8f 8f8f8f8f 02b7b78f     ................
d0082620:	0202a002 b7b70202 8f8f8fa0 8f8f8f8f     ................
d0082630:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082640:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082650:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082660:	8f8f8f8f a0a0a0a0 8f8fa0a0 06068f8f     ................
d0082670:	06060606 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082680:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082690:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00826a0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00826b0:	0605068f 06060606 8f8f8f06 8f8f8f8f     ................
d00826c0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00826d0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00826e0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00826f0:	8f8f8f8f 06060506 06060606 8f8f0606     ................
d0082700:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082710:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082720:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082730:	8f8f8f8f 068f8f8f 06060605 06060606     ................
d0082740:	8f8f0606 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082750:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082760:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082770:	8f8f8f8f 8f8f8f8f 05068f8f 06060606     ................
d0082780:	06060606 8f066006 8f8f8f8f 8f8f8f8f     .....`..........
d0082790:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00827a0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00827b0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 0605068f     ................
d00827c0:	06060606 06060606 06600606 8f8f8f8f     ..........`.....
d00827d0:	05058f8f 05050505 05050505 8f8f8f8f     ................
d00827e0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00827f0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082800:	06050606 06060606 06060606 06600606     ..............`.
d0082810:	8f8f8f06 05010505 05050505 05050505     ................
d0082820:	8f8f0505 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082830:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082840:	068f8f8f 06060506 06060606 06060606     ................
d0082850:	60060606 05058f06 05050101 05050505     ...`............
d0082860:	05050505 8f050605 8f8f8f8f 8f8f8f8f     ................
d0082870:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082880:	8f8f8f8f 06068f8f 06060605 06060606     ................
d0082890:	06060606 60060606 01050505 05050505     .......`........
d00828a0:	05050505 05050505 05060505 8f8f8f8f     ................
d00828b0:	8f8f8f8f 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d00828c0:	8f8f8f8f 8f8f8f8f 0506068f 06060606     ................
d00828d0:	06060606 06060606 05050606 05010105     ................
d00828e0:	05050505 05050505 05050505 06050505     ................
d00828f0:	8f8f0505 8f8f8f8f 8f8f8f8f 8f8f8f8f     ................
d0082900:	8f8f8f8f 8f8f8f8f 8f8f0d8f 06050606     ................
d0082910:	06060606 06060606 06060606 050d0505     ................
d0082920:	05050501 05050505 05050505 05050505     ................
d0082930:	05050505 8f050506 8f8f8f8f 8f8f8f8f     ................
d0082940:	8f8f8f8f 8f8f8f8f 8f0d8f8f 068f0d8f     ................
d0082950:	06060606 06060606 060d0606 05060606     ................
d0082960:	050d0505 05050d05 05050505 050d050d     ................
d0082970:	05050505 05050505 05050605 0d8f8f05     ................
d0082980:	8f8f8f8f 8f0d8f0d 8f8f8f8f 0d0d0d0d     ................
d0082990:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d00829a0:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d00829b0:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d00829c0:	0d0d0d0d 0d0d0d0d 0d0d0d0d 0d0d0d0d     ................
d00829d0:	0d0a0b0a 0a0a0a0d 0b0a0b0a 0a0a0a0a     ................
d00829e0:	0a0a0a0a 680a0a0a 0b0b0a68 0a0a0a0a     .......hh.......
d00829f0:	0a0a0b0a 680a0a0a 0a0a0a0a 6868680a     .......h.....hhh
d0082a00:	0b0b0b0a 0a0a0b0a 0a0a0b0a 0a0b0b0b     ................
d0082a10:	0a0a0b0b 0b0b0a0a 0b0a0a0a 0a0a0a0b     ................
d0082a20:	0a0a0a0a 0a0b0a0a 0a0a0a0a 0a0a0a0a     ................
d0082a30:	0b0a0a0a 0a0a0a0a 0a0a0a0a 0b0b0a0a     ................
d0082a40:	0a0a0a0a 0a0a0a0b 0a0a0b0a 0a0a0a0a     ................
d0082a50:	0a0a0a0a 0b0b0a0a 0a0a0b0a 0a0a0b0a     ................
d0082a60:	0a680a0b 0b0a0a0a 0a0a0b0b 0a0a6868     ..h.........hh..
d0082a70:	680a0a0a 0a0b0a68 0a686868 680a0a0a     ...hh...hhh....h
d0082a80:	0a0a6868 0b0a0a0a 0a0a0a0a 0b0b0a0a     hh..............
d0082a90:	0a0a0a0a 0a0a0a0a 0b0a0a0a 0a0a0a0a     ................
d0082aa0:	6868680b 0a0a0a0a 68680a0a 0a0a0a0a     .hhh......hh....
d0082ab0:	0b0a0a0a 0a0a0a0b 0a0a0a0a 0a0a0a0a     ................
d0082ac0:	0a0a0a0a 0a0a0a0a 0a0a0a0a 0a0a0a0a     ................
d0082ad0:	0a0a0a0a 680a0a0a 0b0b6868 0a0a0a0a     .......hhh......
d0082ae0:	70707559 6f6f5420 63616874 64206568     Yupp Toothache d
d0082af0:	746b7365 4520706f 6465646e 00293a20     esktop Ended :).

d0082b00 <thePallete>:
d0082b00:	00000000 ffafafaf ffffffff ff3b67a2     .............g;.
d0082b10:	ffaa907c ff959595 ff7b7b7b ffffa997     |.......{{{.....
d0082b20:	ff37a91d ff7ca9ff ffbf8112 ffebbf66     ..7...|.....f...
d0082b30:	ff78c178 ff3d9318 ffb33418 ffd9311c     x.x...=..4...1..
d0082b40:	ff000000 ff00000e ff00001d ff00002b     ............+...
d0082b50:	ff000139 ff000147 ff000156 ff000164     9...G...V...d...
d0082b60:	ff0001d2 ff0001ff ffcecece ff00ff00     ................
d0082b70:	ffb2ff00 ffffe700 ffff9600 ffff1100     ................
d0082b80:	ffbf13d5 ffa411c7 ff890eb9 ff6e0baa     ..............n.
d0082b90:	ff52099c ff37068d ff1c037f ff000070     ..R...7.....p...
d0082ba0:	ff6d1b00 ff6d1c55 ff00e300 ff85ff54     ..m.U.m.....T...
d0082bb0:	ffc4ff00 ffffd900 ffffa41f ffe05400     .............T..
d0082bc0:	ffff0000 ff922655 ff9227aa ff9228ff     ....U&...'...(..
d0082bd0:	ffa42900 ffa42a55 ffa42baa ffa42cff     .)..U*...+...,..
d0082be0:	ffb62d00 ffb62f55 ffb630aa ffb631ff     .-..U/...0...1..
d0082bf0:	ffc93200 ffc93355 ffc934aa ffc935ff     .2..U3...4...5..
d0082c00:	ffdb3700 ffdb3855 ffdb39aa ffdb3aff     .7..U8...9...:..
d0082c10:	ffed3b00 ffed3c55 ffed3daa ffed3fff     .;..U<...=...?..
d0082c20:	ffff4000 ffff4155 ffff42aa ffff43ff     .@..UA...B...C..
d0082c30:	ff004400 ff004555 ff0046aa ff0048ff     .D..UE...F...H..
d0082c40:	ffffff00 ff12ff55 ff12ee55 ff12b6ff     ....U...U.......
d0082c50:	ff001fff ff9d0ec7 fff10000 ffff7700     .............w..
d0082c60:	ff375200 ff375355 ff3754aa ff3755ff     .R7.US7..T7..U7.
d0082c70:	ff495600 ff495855 ff4959aa ff495aff     .VI.UXI..YI..ZI.
d0082c80:	ff5b5b00 ff5b5c55 ff5b5daa ff5b5eff     .[[.U\[..][..^[.
d0082c90:	ff6d6000 ff6d6155 ff6d62aa ff6d63ff     .`m.Uam..bm..cm.
d0082ca0:	ff6d6400 ff806555 ff8066aa ff8067ff     .dm.Ue...f...g..
d0082cb0:	ff926900 ff926a55 ff926baa ff926cff     .i..Uj...k...l..
d0082cc0:	ffa46d00 ffa46e55 ffa46faa ffa471ff     .m..Un...o...q..
d0082cd0:	ffb67200 ffb67355 ffb674aa ffb675ff     .r..Us...t...u..
d0082ce0:	ffc97600 ffc97755 ffc979aa ffc97aff     .v..Uw...y...z..
d0082cf0:	ffdb7b00 ffdb7c55 ffdb7daa ffdb7eff     .{..U|...}...~..
d0082d00:	ffed7f00 ffed8055 ffed82aa ffed83ff     ....U...........
d0082d10:	ffff8400 ffff8555 ffff86aa ffff87ff     ....U...........
d0082d20:	ff008800 ff008a55 ff008baa ff008cff     ....U...........
d0082d30:	ff128d00 ff128e55 ff128faa ff1290ff     ....U...........
d0082d40:	ff249200 ff249355 ff2494aa ff2495ff     ..$.U.$...$...$.
d0082d50:	ff379600 ff379755 ff3798aa ff3799ff     ..7.U.7...7...7.
d0082d60:	ff499b00 ff499c55 ff499daa ff499eff     ..I.U.I...I...I.
d0082d70:	ff5b9f00 ff5ba055 ff5ba1aa ff5ba3ff     ..[.U.[...[...[.
d0082d80:	ffa4b5d5 ffa0b0f8 ff94a3e6 ff7c89c1     ..............|.
d0082d90:	ff6281c0 ff1c62a1 ff4254ea ff62a1bd     ..b..b...TB...b.
d0082da0:	ff7093c0 ff4977a1 ff003faa ff1554ff     ..p..wI..?...T..
d0082db0:	ff1c50b9 ff00b3ff ff0088aa ff00b5ff     .P..............
d0082dc0:	ff0e62ff ff5eb7e3 ffbdc0b9 ff85b9ff     .b....^.........
d0082dd0:	ff006caf ff1f81b9 ff3f5baa ffc9beff     .l.......[?.....
d0082de0:	ff5bafcb ffdbc055 ffdbc1aa ffbdc0c0     ..[.U...........
d0082df0:	ffedc400 ffedc555 ffedc6aa ffedc7ff     ....U...........
d0082e00:	ffffc800 ffffc955 ffffcaaa ffffccff     ....U...........
d0082e10:	ff00cd00 ff00ce55 ff00cfaa ff00d0ff     ....U...........
d0082e20:	ff12d100 ff12d255 ff12d3aa ff12d5ff     ....U...........
d0082e30:	ff24d600 ff24d755 ff24d8aa ff24d9ff     ..$.U.$...$...$.
d0082e40:	ff37da00 ff37db55 ff37ddaa ff37deff     ..7.U.7...7...7.
d0082e50:	ff49df00 ff49e055 ff49e1aa ff49e2ff     ..I.U.I...I...I.
d0082e60:	ff5be300 ff5be555 ff5be6aa ff5be7ff     ..[.U.[...[...[.
d0082e70:	ff6de800 ff6de955 ff6deaaa ff6debff     ..m.U.m...m...m.
d0082e80:	ff6dec00 ff80ee55 ff80efaa ff80f0ff     ..m.U...........
d0082e90:	ff93cea2 ff92f255 ff92f3aa ff92f4ff     ....U...........
d0082ea0:	ffa4f600 ffa4f755 ffa4f8aa ffa4f9ff     ....U...........
d0082eb0:	ffb6fa00 ffb6fb55 ffb6fcaa ffb6feff     ....U...........
d0082ec0:	ffc9ff00 ffc9ff55 ffc9ffaa ffc9ffff     ....U...........
d0082ed0:	ffdbff00 ffdbff55 ffdbffaa ffdbffff     ....U...........
d0082ee0:	ffedff00 ffedff55 ffedffaa ffedffff     ....U...........
d0082ef0:	ffffff00 ffffff55 ffffffaa ffffffff     ....U...........

d0082f00 <txtTitle>:
d0082f00:	73696874 20736920 65742061 73207473     this is a test s
d0082f10:	6c6f7263 202c796c 656d6f73 6e696874     crolly, somethin
d0082f20:	6f742067 73657420 6f662074 6f6e2072     g to test for no
d0082f30:	62202c77 77207475 206c6c69 656b616d     w, but will make
d0082f40:	20746920 696c2061 656c7474 74656220      it a little bet
d0082f50:	20726574 6c6c6966 65742079 20797478     ter filly texty 
d0082f60:	66757473 00000066                       stuff...

d0082f68 <bk_bub_tree1>:
	...
d0082f7c:	21292110 21252525 21212529 29255d29     .!)!%%%!)%!!)]%)
d0082f8c:	21212121 21212529 10292121 00001021     !!!!)%!!!!).!...
	...
d0082fbc:	21292910 29212521 25252925 25292529     .))!!%!)%)%%)%)%
d0082fcc:	21212929 21212110 29292525 00001010     ))!!.!!!%%))....
	...
d0082ff8:	10000000 25212921 29212521 1010215d     ....!)!%!%!)]!..
d0083008:	29212110 25292525 29211010 10102529     .!!)%%)%..!))%..
d0083018:	00000010 00000000 00000000 00000000     ................
	...
d0083038:	10000000 25212121 25292925 10101010     ....!!!%%))%....
d0083048:	21101010 10101021 29101025 10101010     ...!!...%..)....
d0083058:	00000010 00000000 00000000 00000000     ................
	...
d0083078:	10000000 29252121 29252925 10212110     ....!!%)%)%).!!.
d0083088:	10102121 10101010 10101010 67211010     !!............!g
d0083098:	00000010 00000000 00000000 00000000     ................
	...
d00830bc:	25292110 25252925 10252121 67676725     .!)%%)%%!!%.%ggg
d00830cc:	10102121 10101010 bb672110 00001010     !!.......!g.....
	...
d00830fc:	29212110 25252525 10212125 bbbbbb21     .!!)%%%%%!!.!...
d008310c:	67bbbbbb 21101010 67bb6710 00001010     ...g...!.g.g....
	...
d008313c:	25212110 29292521 21212925 bbbb6710     .!!%!%))%)!!.g..
d008314c:	bbbbbbbb 211067bb 1010bb10 00001021     .....g.!....!...
	...
d0083178:	10000000 25212921 10212921 29292521     ....!)!%!)!.!%))
d0083188:	67101021 bbbbbbbb 25101010 10102110     !..g.......%.!..
d0083198:	00001021 00000000 00000000 00000000     !...............
	...
d00831b8:	10000000 21212521 21102925 25102561     ....!%!!%).!a%.%
d00831c8:	10212125 25672510 21101010 21101021     %!!..%g%...!!..!
d00831d8:	00101010 00000000 00000000 00000000     ................
	...
d00831f8:	10000000 21252521 10102129 10211010     ....!%%!)!....!.
d0083208:	21252525 10101021 29211010 10252525     %%%!!.....!)%%%.
d0083218:	00102125 00000000 00000000 00000000     %!..............
	...
d0083238:	10000000 21292121 29211025 10212525     ....!!)!%.!)%%!.
d0083248:	10102121 29292525 10252529 21101010     !!..%%)))%%....!
d0083258:	00102125 00000000 00000000 00000000     %!..............
	...
d0083278:	10000000 25252121 29211029 21252529     ....!!%%).!))%%!
d0083288:	21211010 10101010 21101010 29252521     ..!!.......!!%%)
d0083298:	00102121 00000000 00000000 00000000     !!..............
	...
d00832bc:	21252110 5d212529 25252925 25252929     .!%!)%!]%)%%))%%
d00832cc:	25292529 5d252529 21292929 00001021     )%)%)%%])))!!...
	...
d00832fc:	21252110 25252529 25292929 25252525     .!%!)%%%)))%%%%%
d008330c:	25252125 21292925 255d2525 00000010     %!%%%))!%%]%....
	...
d008333c:	21252110 25292525 25252529 25292525     .!%!%%)%)%%%%%)%
d008334c:	21212125 21212121 25292529 00000010     %!!!!!!!)%)%....
	...
d0083374:	10000000 10101010 25251010 25252929     ..........%%))%%
d0083384:	25212525 29252925 21252925 29252121     %%!%%)%)%)%!!!%)
d0083394:	25252525 10102129 00101010 00000000     %%%%)!..........
	...
d00833b4:	21100000 61292525 29102525 2121255d     ...!%%)a%%.)]%!!
d00833c4:	21212525 25252525 29292929 29252925     %%!!%%%%))))%)%)
d00833d4:	29292925 25252529 10252525 00001010     %))))%%%%%%.....
	...
d00833f4:	29211010 25252925 10252525 25212121     ..!)%)%%%%%.!!!%
d0083404:	21212525 25212121 10102525 25211010     %%!!!!!%%%....!%
d0083414:	29292529 21292925 25252525 10106129     )%))%))!%%%%)a..
d0083424:	00000010 00000000 00000000 00000000     ................
d0083434:	25252110 25252529 21252929 29212110     .!%%)%%%))%!.!!)
d0083444:	25212125 25252925 25611010 10102529     %!!%%)%%..a%)%..
d0083454:	21212121 25252525 25252925 25252529     !!!!%%%%%)%%)%%%
d0083464:	00001010 00000000 00000000 00000000     ................
d0083474:	29252910 25292525 25292521 25292110     .)%)%%)%!%)%.!)%
d0083484:	25252129 29252529 29292929 21212525     )!%%)%%)))))%%!!
d0083494:	21212110 29212125 29292925 25292529     .!!!%!!)%))))%)%
d00834a4:	00001029 00000000 00000000 00000000     )...............
d00834b4:	25292510 25292125 25292110 25291025     .%)%%!)%.!)%%.)%
d00834c4:	25252529 29292525 25215d25 21252929     )%%%%%))%]!%))%!
d00834d4:	25211021 25252929 25292525 29252925     !.!%))%%%%)%%)%)
d00834e4:	00101025 00000000 00000000 10000000     %...............
d00834f4:	25252521 10215d29 29252121 29252925     !%%%)]!.!!%)%)%)
d0083504:	25212525 21292525 21292925 21252525     %%!%%%)!%))!%%%!
d0083514:	25102121 21212925 25292521 25252925     !!.%%)!!!%)%%)%%
d0083524:	00102925 00000000 00000000 10000000     %)..............
d0083534:	25292121 10252929 25212121 255d2929     !!)%))%.!!!%))]%
d0083544:	25212121 25212125 21212925 21292525     !!!%%!!%%)!!%%)!
d0083554:	21102121 29212121 25212121 29252925     !!.!!!!)!!!%%)%)
d0083564:	00102525 00000000 00000000 10000000     %%..............
d0083574:	29252125 10292925 29211021 25292125     %!%)%)).!.!)%!)%
d0083584:	21292929 21292521 25212525 21292529     )))!!%)!%%!%)%)!
d0083594:	21102121 295d2929 10212925 29252925     !!.!))])%)!.%)%)
d00835a4:	00102525 00000000 00000000 10000000     %%..............
d00835b4:	29212121 25252525 10211010 25252561     !!!)%%%%..!.a%%%
d00835c4:	25212121 21212129 25252125 21252925     !!!%)!!!%!%%%)%!
d00835d4:	25102110 21212925 21292521 25292910     .!.%%)!!!%)!.))%
d00835e4:	00102525 00000000 00000000 00000000     %%..............
d00835f4:	21212510 29252129 21251021 25252110     .%!!)!%)!.%!.!%%
d0083604:	21252929 25102121 29292125 21292925     ))%!!!.%%!))%))!
d0083614:	21102110 21101021 25252110 25295d21     .!.!!..!.!%%!])%
d0083624:	10212925 00000000 00000000 00000000     %)!.............
d0083634:	21292510 25212929 21102125 21212110     .%)!))!%%!.!.!!!
d0083644:	21211021 25211010 25252110 21212525     !.!!..!%.!%%%%!!
d0083654:	10102110 10212110 29211021 29251021     .!...!!.!.!)!.%)
d0083664:	10212525 00000000 00000000 00000000     %%!.............
d0083674:	21292110 29212921 10102129 10102121     .!)!!)!))!..!!..
d0083684:	10212110 25251010 25252110 10212925     .!!...%%.!%%%)!.
d0083694:	10101021 10102121 29211021 2929105d     !...!!..!.!)].))
d00836a4:	10212525 00000000 00000000 00000000     %%!.............
d00836b4:	25211000 21252521 10212125 21212110     ..!%!%%!%!!..!!!
d00836c4:	10101021 21102110 25252521 10212121     !....!.!!%%%!!!.
d00836d4:	10101021 00001010 21212110 29211021     !........!!!!.!)
d00836e4:	00102525 00000000 00000000 00000000     %%..............
d00836f4:	21211000 21212121 10212121 10101010     ..!!!!!!!!!.....
d0083704:	10101010 10211021 21212110 21212121     ....!.!..!!!!!!!
d0083714:	10101010 00000000 21211000 21212121     ..........!!!!!!
d0083724:	00102121 00000000 00000000 00000000     !!..............
d0083734:	10100000 10101010 00101010 00000000     ................
d0083744:	00000000 10101010 10101010 10101010     ................
	...
d008375c:	10100000 10101010 00001010              ............

d0083768 <bk_bub_tree2>:
	...
d008377c:	21292110 21252525 21212529 29252529     .!)!%%%!)%!!)%%)
d008378c:	21212121 21212529 10292121 00001021     !!!!)%!!!!).!...
	...
d00837b8:	29100000 25212129 29252921 25292525     ...))!!%!)%)%%)%
d00837c8:	29292529 21102121 25252121 10102929     )%))!!.!!!%%))..
	...
d00837f4:	11000000 25212921 29212521 10102125     ....!)!%!%!)%!..
d0083804:	29212110 25292525 29211010 10102529     .!!)%%)%..!))%..
d0083814:	00000010 00000000 00000000 00000000     ................
	...
d0083834:	21211000 29252521 11102529 10101010     ..!!!%%))%......
d0083844:	10212110 11251010 10102510 00101010     .!!...%..%......
	...
d0083870:	11000000 29292121 29252925 10212110     ....!!))%)%).!!.
d0083880:	10102121 10101111 10101010 67211110     !!............!g
d0083890:	00000010 00000000 00000000 00000000     ................
	...
d00838b0:	21100000 29252529 21212525 67251021     ...!)%%)%%!!!.%g
d00838c0:	21216767 10101110 21101010 1011bb67     gg!!.......!g...
	...
d00838f0:	29212110 25252925 10212125 bbbbbb25     .!!)%)%%%!!.%...
d0083900:	67bbbbbb 21101010 67bb6710 00001010     ...g...!.g.g....
	...
d008392c:	21100000 25212521 29252929 67102121     ...!!%!%))%)!!.g
d008393c:	bbbbbbbb 67bbbbbb bb102110 10211010     .......g.!....!.
	...
d0083968:	10000000 25212921 11212921 29292521     ....!)!%!)!.!%))
d0083978:	67101121 bbbbbbbb 25101110 10112510     !..g.......%.%..
d0083988:	00001021 00000000 00000000 00000000     !...............
	...
d00839a8:	25211000 29292121 25252110 21252511     ..!%!!)).!%%.%%!
d00839b8:	25101021 10102567 10212110 10102110     !..%g%...!!..!..
d00839c8:	00000010 00000000 00000000 00000000     ................
	...
d00839e4:	10000000 21252521 10102129 11211010     ....!%%!)!....!.
d00839f4:	21252525 10111021 29211110 10252525     %%%!!.....!)%%%.
d0083a04:	00102121 00000000 00000000 00000000     !!..............
	...
d0083a24:	21211000 10252125 25292921 21211021     ..!!%!%.!))%!.!!
d0083a34:	25251011 25292929 10111025 21252110     ..%%)))%%....!%!
d0083a44:	00000010 00000000 00000000 00000000     ................
	...
d0083a60:	11000000 21252121 29211025 21292529     ....!!%!%.!))%)!
d0083a70:	21211011 10101010 21101010 29252921     ..!!.......!!)%)
d0083a80:	00112121 00000000 00000000 00000000     !!..............
	...
d0083aa0:	21100000 25292125 29292521 29292925     ...!%!)%!%))%)))
d0083ab0:	25292525 25292529 29292125 10212129     %%)%)%)%%!)))!!.
	...
d0083ae0:	21252110 25252529 25292929 25252525     .!%!)%%%)))%%%%%
d0083af0:	25252125 21292925 25252525 00000010     %!%%%))!%%%%....
	...
d0083b1c:	21100000 25252125 25292929 29252925     ...!%!%%)))%%)%)
d0083b2c:	21252529 21212121 29252121 00112525     )%%!!!!!!!%)%%..
	...
d0083b5c:	21292110 29252925 21212529 25292925     .!)!%)%))%!!%))%
d0083b6c:	21252525 29252121 25292929 10101125     %%%!!!%))))%%...
d0083b7c:	00111010 00000000 00000000 00000000     ................
	...
d0083b98:	21100000 25252125 21292929 25212121     ...!%!%%)))!!!!%
d0083ba8:	29292925 21292525 29252521 25292925     %)))%%)!!%%)%))%
d0083bb8:	29252925 00101029 00000000 00000000     %)%))...........
	...
d0083bd4:	11000000 29212521 25252529 29292921     ....!%!))%%%!)))
d0083be4:	25101125 25292921 21292929 29292525     %..%!))%)))!%%))
d0083bf4:	29292929 29292529 00101129 00000000     )))))%))).......
	...
d0083c14:	21252111 21292925 25292121 25252929     .!%!%))!!!)%))%%
d0083c24:	21111121 29252925 25292525 21212525     !..!%)%)%%)%%%!!
d0083c34:	29292121 21252925 00001125 00000000     !!))%)%!%.......
	...
d0083c50:	29100000 29292525 25251121 25252929     ...)%%))!.%%))%%
d0083c60:	21292929 29211121 29252529 25252929     )))!!.!))%%)))%%
d0083c70:	25252525 29252525 29252929 00000010     %%%%%%%)))%)....
	...
d0083c8c:	10000000 25252921 25102129 25292929     ....!)%%)!.%)))%
d0083c9c:	29292925 11212129 29252121 21212529     %))))!!.!!%))%!!
d0083cac:	21252929 25292121 29252929 00102129     ))%!!!)%))%))!..
	...
d0083ccc:	29252110 11212529 25252925 25292529     .!%))%!.%)%%)%)%
d0083cdc:	21292925 25112121 21212929 25292521     %))!!!.%))!!!%)%
d0083cec:	25292121 25292921 25252529 00000010     !!)%!))%)%%%....
d0083cfc:	00000000 10110000 00001010 25211011     ..............!%
d0083d0c:	21292525 29252521 29252125 25292925     %%)!!%%)%!%)%))%
d0083d1c:	21112121 21212111 25292521 25292125     !!.!.!!!!%)%%!)%
d0083d2c:	25212125 25252925 00102529 00000000     %!!%%)%%)%......
d0083d3c:	10100000 21292921 25211011 25252929     ....!))!..!%))%%
d0083d4c:	29252921 21102529 25212525 10212525     !)%))%.!%%!%%%!.
d0083d5c:	10102121 25252511 21212529 21252129     !!...%%%)%!!)!%!
d0083d6c:	29252525 21252525 00000010 10000000     %%%)%%%!........
d0083d7c:	25252521 29292925 29292929 29252529     !%%%%))))))))%%)
d0083d8c:	21292525 21252910 29292929 11211021     %%)!.)%!))))!.!.
d0083d9c:	29252121 21212529 21212121 21252129     !!%))%!!!!!!)!%!
d0083dac:	29252529 00001021 00000000 29292111     )%%)!........!))
d0083dbc:	25252129 25252525 29292925 25292929     )!%%%%%%%))))))%
d0083dcc:	29211021 29212125 21212129 25251121     !.!)%!!))!!!!.%%
d0083ddc:	21252529 21102121 21252111 25252521     )%%!!!.!.!%!!%%%
d0083dec:	10212929 00000000 25100000 29212125     ))!........%%!!)
d0083dfc:	21252525 25292925 25101025 11212121     %%%!%))%%..%!!!.
d0083e0c:	21112529 21252929 11112121 21212121     )%.!))%!!!..!!!!
d0083e1c:	11102121 29211021 25252110 21292525     !!..!.!).!%%%%)!
d0083e2c:	00000010 10000000 21212921 29292521     ........!)!!!%))
d0083e3c:	25252921 21101010 10212121 11212110     !)%%...!!!!..!!.
d0083e4c:	25252521 21112121 10101010 10101010     !%%%!!.!........
d0083e5c:	21102121 21211025 29292529 00102121     !!.!%.!!)%))!!..
d0083e6c:	00000000 25211000 29252121 21212129     ......!%!!%))!!!
d0083e7c:	21212121 21212121 21211011 29211021     !!!!!!!!..!!!.!)
d0083e8c:	11212129 10101021 21212121 10102121     )!!.!...!!!!!!..
d0083e9c:	11212110 29252921 11212129 00000000     .!!.!)%))!!.....
d0083eac:	10000000 21212121 21212121 11212121     ....!!!!!!!!!!!.
d0083ebc:	10101010 10101010 21111021 21212121     ........!..!!!!!
d0083ecc:	10211010 21101010 10101011 21101010     ..!....!.......!
d0083edc:	25212111 21212125 00000010 00000000     .!!%%!!!........
d0083eec:	10110000 10101010 10101110 00000010     ................
d0083efc:	00000000 10101000 10101010 10101010     ................
d0083f0c:	10101010 00001010 00000000 10101000     ................
d0083f1c:	10101010 00001010 00000000              ............

d0083f28 <bk_bub_tree3>:
	...
d0083f3c:	21292110 21252525 21212529 25255d29     .!)!%%%!)%!!)]%%
d0083f4c:	21212121 21212529 10292121 00001021     !!!!)%!!!!).!...
	...
d0083f80:	21292910 29212521 25252925 25292529     .))!!%!)%)%%)%)%
d0083f90:	21212929 21212110 29292525 00001010     ))!!.!!!%%))....
	...
d0083fc0:	11000000 25212921 29212521 1110215d     ....!)!%!%!)]!..
d0083fd0:	29212110 25292525 25211110 10106129     .!!)%%)%..!%)a..
d0083fe0:	00000010 00000000 00000000 00000000     ................
	...
d0084004:	10000000 25212121 25292925 10101110     ....!!!%%))%....
d0084014:	21101010 10101021 29101125 10101010     ...!!...%..)....
d0084024:	00000010 00000000 00000000 00000000     ................
	...
d0084048:	11000000 29252121 29252925 10212110     ....!!%)%)%).!!.
d0084058:	10102121 10101111 10101010 67211110     !!............!g
d0084068:	00000010 00000000 00000000 00000000     ................
	...
d0084090:	25292110 25252925 10212121 67676725     .!)%%)%%!!!.%ggg
d00840a0:	11102121 10101010 bb672110 00001011     !!.......!g.....
	...
d00840d4:	29212110 25252525 10212125 bbbbbb25     .!!)%%%%%!!.%...
d00840e4:	67bbbbbb 21101010 67bb6710 00001010     ...g...!.g.g....
	...
d0084118:	25212110 29292521 21212925 bbbb6711     .!!%!%))%)!!.g..
d0084128:	bbbbbbbb 211067bb 1010bb10 00001021     .....g.!....!...
	...
d0084158:	10000000 25212921 11212921 29292521     ....!)!%!)!.!%))
d0084168:	67101121 bbbbbbbb 25101110 10112510     !..g.......%.%..
d0084178:	00001021 00000000 00000000 00000000     !...............
	...
d008419c:	10000000 21212521 21102929 25112561     ....!%!!)).!a%.%
d00841ac:	10212125 25672510 21101010 21101021     %!!..%g%...!!..!
d00841bc:	00101010 00000000 00000000 00000000     ................
	...
d00841e0:	10000000 21252521 10102129 11211010     ....!%%!)!....!.
d00841f0:	21252525 10111021 29211111 10252525     %%%!!.....!)%%%.
d0084200:	00102125 00000000 00000000 00000000     %!..............
	...
d0084224:	10000000 21292121 29211025 10212525     ....!!)!%.!)%%!.
d0084234:	10112121 29252525 10252529 21101011     !!..%%%))%%....!
d0084244:	00102125 00000000 00000000 00000000     %!..............
	...
d0084268:	11000000 25252121 29211025 21252525     ....!!%%%.!)%%%!
d0084278:	21211011 10101010 21101110 25252525     ..!!.......!%%%%
d0084288:	00112121 00000000 00000000 00000000     !!..............
	...
d00842b0:	21252110 5d212529 25252925 25252929     .!%!)%!]%)%%))%%
d00842c0:	25292529 5d252529 21292929 00001021     )%)%)%%])))!!...
	...
d00842f4:	21252110 25252525 25292929 25252525     .!%!%%%%)))%%%%%
d0084304:	25252125 21292925 255d2525 00000010     %!%%%))!%%]%....
	...
d0084338:	21252110 25292525 25252529 25292525     .!%!%%)%)%%%%%)%
d0084348:	21212129 21212121 25252525 00000011     )!!!!!!!%%%%....
	...
d008437c:	21252111 29252925 25292925 10252529     .!%!%)%)%))%)%%.
d008438c:	10101010 21101010 25252121 10252525     .......!!!%%%%%.
d008439c:	10101010 10101010 00000010 00000000     ................
	...
d00843bc:	11000000 25212121 29252929 25292525     ....!!!%))%)%%)%
d00843cc:	21112525 29252525 11212525 21211111     %%.!%%%)%%!...!!
d00843dc:	25292529 25252525 61252925 00101021     )%)%%%%%%)%a!...
	...
d0084400:	21102000 29252125 25292529 29252929     . .!%!%))%)%))%)
d0084410:	29252125 25292929 25292529 21112525     %!%))))%)%)%%%.!
d0084420:	29252121 25252529 25252525 10252525     !!%))%%%%%%%%%%.
	...
d008443c:	11101000 10101111 29252111 25252525     .........!%)%%%%
d008444c:	29292925 25252925 25252529 25212525     %)))%)%%)%%%%%!%
d008445c:	25252525 11252561 25252521 25252525     %%%%a%%.!%%%%%%%
d008446c:	25252525 29292929 00000010 00000000     %%%%))))........
d008447c:	10000000 29212110 29252525 25252929     .....!!)%%%)))%%
d008448c:	29252925 215d2529 29252525 25252925     %)%))%]!%%%)%)%%
d008449c:	29251125 25292525 21252525 21212511     %.%)%%)%%%%!.%!!
d00844ac:	21212929 29252525 25252529 00001021     ))!!%%%))%%%!...
d00844bc:	00000000 21100000 25292925 25292925     .......!%))%%))%
d00844cc:	25292925 29292529 25212125 29292525     %))%)%))%!!%%%))
d00844dc:	25252925 25292511 29252925 21252929     %)%%.%)%%)%)))%!
d00844ec:	25252110 25252525 25292125 25292525     .!%%%%%%%!)%%%)%
d00844fc:	00001029 00000000 29100000 25252529     )..........))%%%
d008450c:	29292925 29252529 21212529 25292521     %))))%%))%!!!%)%
d008451c:	25252929 11212125 25256121 25252529     ))%%%!!.!a%%)%%%
d008452c:	21212925 21292111 21212121 21212525     %)!!.!)!!!!!%%!!
d008453c:	25292925 00001025 00000000 25211000     %))%%.........!%
d008454c:	29252121 25252525 25252525 25292925     !!%)%%%%%%%%%))%
d008455c:	25252925 21252525 21112121 21252525     %)%%%%%!!!.!%%%!
d008456c:	25292925 21212529 21212110 21211111     %))%)%!!.!!!..!!
d008457c:	21252521 25255d21 00102125 00000000     !%%!!]%%%!......
d008458c:	10252110 25252929 25252529 25292925     .!%.))%%)%%%%))%
d008459c:	25252929 29252525 29212125 21102529     ))%%%%%)%!!))%.!
d00845ac:	25212525 29252525 21212121 10102110     %%!%%%%)!!!!.!..
d00845bc:	10212121 25252121 25612921 00102125     !!!.!!%%!)a%%!..
d00845cc:	00000000 25112110 29252925 2529295d     .....!.%%)%)]))%
d00845dc:	25292529 21292925 21212121 25292925     )%)%%))!!!!!%))%
d00845ec:	2121115d 25212121 21212529 21212121     ].!!!!!%)%!!!!!!
d00845fc:	21211010 21101010 29212110 21252121     ..!!...!.!!)!!%!
d008460c:	00112121 10000000 25292121 25252529     !!......!!)%)%%%
d008461c:	21212121 21212121 25252925 21252525     !!!!!!!!%)%%%%%!
d008462c:	21212121 21211011 25292121 21212121     !!!!..!!!!)%!!!!
d008463c:	10212110 10212121 11200000 21212121     .!!.!!!... .!!!!
d008464c:	21212121 00001021 10000000 21252929     !!!!!.......))%!
d008465c:	21212525 21212121 10102121 29212121     %%!!!!!!!!..!!!)
d008466c:	21212121 10212121 21211010 21212121     !!!!!!!...!!!!!!
d008467c:	10212121 10102121 00101121 10000000     !!!.!!..!.......
d008468c:	10212121 21212121 00001021 10000000     !!!.!!!!!.......
d008469c:	25212521 10212925 10102110 21212111     !%!%%)!..!...!!!
d00846ac:	21211111 11111011 10101021 21101010     ..!!....!......!
d00846bc:	21212111 10102121 10102121 00101010     .!!!!!..!!......
d00846cc:	00000000 21211010 10212121 00000010     ......!!!!!.....
d00846dc:	00000000 29252111 21102125 00001021     .....!%)%!.!!...
d00846ec:	21101000 10102121 21101010 10102121     ...!!!.....!!!..
d00846fc:	10101010 21212121 21101010 10101021     ....!!!!...!!...
d008470c:	00001110 00000000 10110000 00101010     ................
	...
d0084724:	21251000 21211021 00000010 10000000     ..%!!.!!........
d0084734:	21212110 10102121 00101010 10000000     .!!!!!..........
d0084744:	10112110 21211010 00000011 00000000     .!....!!........
	...
d0084768:	10100000 11101010 00000000 00000000     ................
d0084778:	10101100 00101010 00000000 00000000     ................
d0084788:	10101000 10101010 00000000 00000000     ................
	...

d00847a8 <bk_bub_tree4>:
	...
d00847bc:	25292110 21292525 21212529 29252529     .!)%%%)!)%!!)%%)
d00847cc:	21212121 21212529 10252121 00001021     !!!!)%!!!!%.!...
	...
d0084800:	21292910 25212521 25252925 25292525     .))!!%!%%)%%%%)%
d0084810:	21212929 21212110 29292525 00001010     ))!!.!!!%%))....
	...
d0084840:	10000000 25212921 29212521 10102125     ....!)!%!%!)%!..
d0084850:	25212110 25292525 29211010 10102525     .!!%%%)%..!)%%..
d0084860:	00000010 00000000 00000000 00000000     ................
	...
d0084884:	10000000 25212121 25292921 10101010     ....!!!%!))%....
d0084894:	21101010 10101021 25101025 10101010     ...!!...%..%....
d00848a4:	00000010 00000000 00000000 00000000     ................
	...
d00848c8:	10000000 29252121 29252929 10212110     ....!!%)))%).!!.
d00848d8:	10102121 10101010 10101010 67211010     !!............!g
d00848e8:	00000010 00000000 00000000 00000000     ................
	...
d0084910:	25252110 25252525 10252121 67676725     .!%%%%%%!!%.%ggg
d0084920:	10102121 10101010 bb672110 00001010     !!.......!g.....
	...
d0084954:	29212110 25252525 10212125 bbbbbb25     .!!)%%%%%!!.%...
d0084964:	67bbbbbb 21101010 67bb6710 00001010     ...g...!.g.g....
	...
d0084998:	25212110 29252521 21212925 bbbb6710     .!!%!%%)%)!!.g..
d00849a8:	bbbbbbbb 211067bb 1010bb10 00001021     .....g.!....!...
	...
d00849d8:	10000000 25212921 10212921 25292521     ....!)!%!)!.!%)%
d00849e8:	67101021 bbbbbbbb 25101010 10102510     !..g.......%.%..
d00849f8:	00001021 00000000 00000000 00000000     !...............
	...
d0084a1c:	10000000 21212521 21102929 21102525     ....!%!!)).!%%.!
d0084a2c:	10212125 25672510 21101010 21101021     %!!..%g%...!!..!
d0084a3c:	00101010 00000000 00000000 00000000     ................
	...
d0084a60:	10000000 21252521 10102129 10211010     ....!%%!)!....!.
d0084a70:	21252521 10101021 29211010 10252525     !%%!!.....!)%%%.
d0084a80:	00102125 00000000 00000000 00000000     %!..............
	...
d0084aa4:	10000000 21292121 29211025 10212925     ....!!)!%.!)%)!.
d0084ab4:	10102121 29292525 10252525 21101010     !!..%%))%%%....!
d0084ac4:	00102121 00000000 00000000 00000000     !!..............
	...
d0084ae8:	10000000 21252121 29211029 21252529     ....!!%!).!))%%!
d0084af8:	21211010 10101010 21101010 25252521     ..!!.......!!%%%
d0084b08:	00102121 00000000 00000000 00000000     !!..............
	...
d0084b30:	21252110 25212529 25252529 29252929     .!%!)%!%)%%%))%)
d0084b40:	25292525 21252525 21292929 00001021     %%)%%%%!)))!!...
	...
d0084b74:	21252110 25252529 25292929 25252525     .!%!)%%%)))%%%%%
d0084b84:	25252125 25252525 25252525 00000010     %!%%%%%%%%%%....
	...
d0084bb8:	21252110 25292525 29252529 25292525     .!%!%%)%)%%)%%)%
d0084bc8:	21212125 21212121 25292529 00000010     %!!!!!!!)%)%....
	...
d0084bfc:	21292110 29292525 25252129 25252529     .!)!%%)))!%%)%%%
d0084c0c:	21252929 29252121 29252525 10101025     ))%!!!%)%%%)%...
	...
d0084c34:	10000000 10101010 00000020 29212110     ........ ....!!)
d0084c44:	25292525 25212121 25292525 25292525     %%)%!!!%%%)%%%)%
d0084c54:	25212121 25252925 29252525 00000010     !!!%%)%%%%%)....
	...
d0084c78:	21101010 25292925 20101021 25252921     ...!%))%!.. !)%%
d0084c88:	29252529 21212121 10101010 29252510     )%%)!!!!.....%%)
d0084c98:	25292529 29292929 25292525 10101025     )%)%))))%%)%%...
	...
d0084cb8:	10000000 29212921 25252525 25252925     ....!)!)%%%%%)%%
d0084cc8:	29252121 21292525 10102521 29252521     !!%)%%)!!%..!%%)
d0084cd8:	10101029 21212110 29292521 25252525     )....!!!!%))%%%%
d0084ce8:	25252529 00001010 00000000 00000000     )%%%............
d0084cf8:	00000000 21100000 25292529 29252929     .......!)%)%))%)
d0084d08:	25252525 25252529 21212929 25252925     %%%%)%%%))!!%)%%
d0084d18:	25252525 25292925 10101025 21212121     %%%%%))%%...!!!!
d0084d28:	29212521 29292929 00102525 00000000     !%!)))))%%......
	...
d0084d40:	25211000 25252525 25292929 25292525     ..!%%%%%)))%%%)%
d0084d50:	25292529 25292121 29252925 25292529     )%)%!!)%%)%))%)%
d0084d60:	29252529 21292925 21212110 21252521     )%%)%))!.!!!!%%!
d0084d70:	25292521 10252925 00000000 00000000     !%)%%)%.........
d0084d80:	00000000 25251000 25292929 25292525     ......%%)))%%%)%
d0084d90:	25252929 25212129 25252529 25252925     ))%%)!!%)%%%%)%%
d0084da0:	29292925 29252529 25252925 25211021     %))))%%)%)%%!.!%
d0084db0:	29252529 29252529 25252525 00000010     )%%))%%)%%%%....
	...
d0084dc8:	25212110 29252525 25252529 25292525     .!!%%%%))%%%%%)%
d0084dd8:	25252525 21292925 21292521 29252521     %%%%%))!!%)!!%%)
d0084de8:	25292521 29252929 25102125 21212529     !%)%))%)%!.%)%!!
d0084df8:	21212925 25252929 00001029 00000000     %)!!))%%).......
d0084e08:	00000000 25212510 21292521 21212125     .....%!%!%)!%!!!
d0084e18:	29292525 25292525 25252525 21212125     %%))%%)%%%%%%!!!
d0084e28:	29292525 21252929 25252529 10212529     %%))))%!)%%%)%!.
d0084e38:	25292121 25252525 29292121 00102525     !!)%%%%%!!))%%..
	...
d0084e50:	21252510 21212529 10101021 25252121     .%%!)%!!!...!!%%
d0084e60:	21252925 21212129 25292121 25211010     %)%!)!!!!!)%..!%
d0084e70:	21252525 29292521 10212525 21101010     %%%!!%))%%!....!
d0084e80:	25212121 29212925 10292525 00000000     !!!%%)!)%%).....
d0084e90:	00000000 21292510 10212125 21212121     .....%)!%!!.!!!!
d0084ea0:	25212110 29292929 29252925 21212125     .!!%))))%)%)%!!!
d0084eb0:	21101010 21252529 25252521 10212925     ...!)%%!!%%%%)!.
d0084ec0:	10212121 21211010 21292929 29252525     !!!...!!)))!%%%)
d0084ed0:	00000010 10000000 21292521 21102129     ........!%)!)!.!
d0084ee0:	21101021 21212121 21212121 21212121     !..!!!!!!!!!!!!!
d0084ef0:	10102121 10101021 21292525 25292910     !!..!...%%)!.))%
d0084f00:	10212125 21211010 21102121 29252121     %!!...!!!!.!!!%)
d0084f10:	29252521 00001025 10000000 25212525     !%%)%.......%%!%
d0084f20:	21212125 10200010 25211010 21101021     %!!!.. ...!%!..!
d0084f30:	10102121 21101010 10101021 10212921     !!.....!!...!)!.
d0084f40:	29292521 10212121 10101010 21211010     !%))!!!.......!!
d0084f50:	29212121 25212125 00001025 10000000     !!!)%!!%%.......
d0084f60:	29212529 10212121 00000000 10102000     )%!)!!!...... ..
d0084f70:	25212110 21212121 10212121 21101010     .!!%!!!!!!!....!
d0084f80:	10212110 21212125 10102110 00001010     .!!.%!!!.!......
d0084f90:	10100000 21101021 25212121 00102125     ....!..!!!!%%!..
d0084fa0:	10000000 21212121 10212125 00000000     ....!!!!%!!.....
d0084fb0:	00000000 10101020 10101010 00101010     .... ...........
d0084fc0:	10100000 21102121 10102121 00001021     ....!!.!!!..!...
	...
d0084fd8:	10102110 21212110 00102121 00000000     .!...!!!!!......
d0084fe8:	10101010 00101010 00000000 00000000     ................
	...
d0085004:	10000000 10101010 10101010 00000010     ................
	...
d008501c:	10101000 10101010 00001010              ............

d0085028 <bk_bub_treehide>:
d0085028:	00000000 29211000 29292521 21252521     ......!)!%))!%%!
d0085038:	29256121 21212129 21292521 25212121     !a%))!!!!%)!!!!%
d0085048:	00102110 00000000 00000000 29291000     .!............))
d0085058:	21252121 29252929 29292525 21292925     !!%!))%)%%))%))!
d0085068:	21201021 25292121 00111025 00000000     !. !!!)%%.......
d0085078:	00000000 21292111 21252125 11212129     .....!)!%!%!)!!.
d0085088:	21211011 25252525 21101021 10292921     ..!!%%%%!..!!)).
d0085098:	00001010 00000000 00000000 21212110     .............!!!
d00850a8:	29292525 10101025 10101010 11102121     %%))%.......!!..
d00850b8:	10112510 10111029 00001010 00000000     .%..)...........
d00850c8:	00000000 25215910 25292529 21211029     .....Y!%)%)%).!!
d00850d8:	10212110 10101011 10101010 21101010     .!!............!
d00850e8:	00001021 00000000 00000000 29211000     !.............!)
d00850f8:	25292525 21212125 21212111 10212121     %%)%%!!!.!!!!!!.
d0085108:	10101010 25591010 00101021 00000000     ......Y%!.......
d0085118:	00000000 21211000 25252525 21212525     ......!!%%%%%%!!
d0085128:	21212110 21252125 10102021 29211021     .!!!%!%!! ..!.!)
d0085138:	00101021 00000000 00000000 21211000     !.............!!
d0085148:	29252125 10252529 21211010 25212121     %!%))%%...!!!!!%
d0085158:	10212125 21211021 00101010 00000000     %!!.!.!!........
d0085168:	00000000 21292110 21292125 29252111     .....!)!%!)!.!%)
d0085178:	10102129 21212110 10212121 10101029     )!...!!!!!!.)...
d0085188:	00102110 00000000 00000000 21252110     .!...........!%!
d0085198:	10292521 11256121 21212521 10101010     !%).!a%.!%!!....
d00851a8:	10101010 10102121 10101021 00000000     ....!!..!.......
d00851b8:	00000000 25252110 10212921 21101010     .....!%%!)!....!
d00851c8:	25252111 10102121 21101010 29292125     .!%%!!.....!%!))
d00851d8:	10212110 00000000 00000000 29212110     .!!..........!!)
d00851e8:	21102521 21252525 10212110 25252511     !%.!%%%!.!!..%%%
d00851f8:	25252925 10101110 10212121 00000000     %)%%....!!!.....
d0085208:	00000000 25212111 21102921 25252929     .....!!%!).!))%%
d0085218:	21101021 10101021 10101010 25252121     !..!!.......!!%%
d0085228:	10212129 00000000 00000000 25211000     )!!...........!%
d0085238:	21612921 25252525 25292925 29292525     !)a!%%%%%))%%%))
d0085248:	25252929 61292925 00102121 00000000     ))%%%))a!!......
d0085258:	00000000 25211000 25252921 29252525     ......!%!)%%%%%)
d0085268:	25252525 25212929 25252561 61252521     %%%%))!%a%%%!%%a
d0085278:	00001025 00000000 00000000 25211000     %.............!%
d0085288:	29252521 25252925 29292525 21212525     !%%)%)%%%%))%%!!
d0085298:	21212121 29292521 00001029 00000000     !!!!!%))).......

d00852a8 <bub_background>:
	...
d00852cc:	fffe0000 00000001 00000000 0fc00000     ................
	...
d0085308:	00038000 0000001f 00000000 78200000     .............. x
	...
d0085344:	ffc08000 00000070 00000000 60180000     ....p..........`
	...
d0085380:	81f8c000 00000043 00000000 30040000     ....C..........0
	...
d00853bc:	07004000 000000c6 00000000 18020000     .@..............
	...
d00853f8:	0cfe4000 00000086 00000000 1c020000     .@..............
	...
d0085434:	0b83c000 00000087 00000000 1e020000     ................
d0085444:	00000000 00000700 00000000 00000000     ................
	...
d0085470:	9a008000 00000083 00000000 1e020000     ................
d0085480:	00000000 00000580 00000000 00000000     ................
	...
d008549c:	00c00000 00000000 00000000 00000000     ................
d00854ac:	b2000000 00000083 00000e00 1e020000     ................
d00854bc:	00000000 00000ec0 1fc00000 00000000     ................
	...
d00854d8:	03300000 00000000 00000000 00000000     ..0.............
d00854e8:	e6000000 000000c3 00001b00 3c040000     ...............<
d00854f8:	00600000 00001a30 20600000 00000000     ..`.0.....` ....
	...
d0085514:	0ccc0000 00000000 00000000 00000000     ................
d0085524:	e4000000 ff800061 00001181 3c080000     ....a..........<
d0085534:	007c0000 00001718 43900000 00000000     ..|........C....
	...
d0085550:	0b720000 00000000 00000000 00000000     ..r.............
d0085560:	64000000 00700030 00003083 38080000     ...d0.p..0.....8
d0085570:	007e01e0 00703706 86e80000 00000001     ..~..7p.........
	...
d008558c:	097d8000 00000000 00000000 000001e0     ..}.............
d008559c:	02000000 00180018 000030c2 38100000     .........0.....8
d00855ac:	c0ff01fe 03fc2f01 8c260000 00000000     ...../....&.....
d00855bc:	00000000 00000010 00000000 0cfe6000     .............`..
	...
d00855d4:	00000610 02000000 3c0c000c 7f003044     ...........<D0..
d00855e4:	78600300 60ff81ff 0fc77f80 9c190000     ..`x...`........
	...
d00855fc:	00000010 00000000 067f2000 00000000     ......... ......
d008560c:	00000000 000004c8 02000000 4f040004     ...............O
d008561c:	7f80706c f0800780 3fffe0ff 1f81df80     lp.........?....
d008562c:	dc090000 00000000 40000000 00000310     ...........@....
d008563c:	00000000 073ec000 00000000 00000000     ......>.........
d008564c:	000005a4 01000000 c786000e ff80f038     ............8...
d008565c:	f1000fc0 3ffff8ff 17803f80 4f090000     .......?.?.....O
d008566c:	00000000 80000000 000000d9 00000000     ................
d008567c:	07818000 00000000 00000000 000005d2     ................
d008568c:	01800000 81c2001e ffc0f018 fe000fe0     ................
d008569c:	3fffff7f 17c00700 67d10003 00000000     ...?.......g....
d00856ac:	00000000 00000067 00000000 05668000     ....g.........f.
	...
d00856c4:	03800cf2 00f00000 40e2001e ffe1e018     ...........@....
d00856d4:	f8001ff1 3fffffff 1fb00000 31e10007     .......?.......1
d00856e4:	7c000000 00000000 00000181 00003c00     ...|.........<..
d00856f4:	03990000 00000000 00000000 0c403272     ............r2@.
d0085704:	00f80000 6072003e fffbc00c fc001ff8     ....>.r`........
d0085714:	3fffffff 3edc0000 10010006 83800000     ...?...>........
d0085724:	9c000000 00000f1c 00006300 03c10000     .........c......
	...
d008573c:	30206106 00fe0000 3072003f 7fffc006     .a 0....?.r0....
d008574c:	fe003ffe 3fffffff ffb70000 18e60107     .?.....?........
d008575c:	38600000 70000001 00000334 0000dd80     ..`8...p4.......
d008576c:	03c10000 00000000 00000000 271040e6     .............@.'
d008577c:	81ff0018 18e2003f 3fff0003 ff003fff     ....?......?.?..
d008578c:	3fffffff fffbc070 187c01c7 7f300000     ...?p.....|...0.
d008579c:	40000001 0000038e 0000d640 01c10000     ...@....@.......
	...
d00857b4:	2d90401c e1ff801f 8786007f 3ffe0001     .@.-...........?
d00857c4:	fff63fff ffffffff fffee3ff 184001e7     .?............@.
d00857d4:	71100000 80000001 000001c0 0000f340     ...q........@...
d00857e4:	05e08000 00000000 00000008 ee904f1a     .............O..
d00857f4:	f3ffe01f c004007f ffff0000 ffff3fff     .............?..
d0085804:	ffffffff ffff3fff 302003ff 60900000     .....?.... 0...`
d0085814:	00000001 000000e7 00007b40 07f08000     ........@{......
d0085824:	00000000 0c00000e fe8871f0 fffff3ff     .........q......
d0085834:	400c007f ffff801e ffff3fff ffffffff     ...@.....?......
d0085844:	ffffffff e02003ff 60900000 00000001     ...... ....`....
d0085854:	00000068 001fef40 02f0c000 94000000     h...@...........
d0085864:	1c00000f ff183020 ffffffff 403803ff     .... 0........8@
d0085874:	ffffc03f ffffbfff ffffffff ffffffff     ?...............
d0085884:	f81f00ff 31b00003 00000601 00000068     .......1....h...
d0085894:	00300040 03f04000 fc000000 1a00019f     @.0..@..........
d00858a4:	fffc1e20 ffffffff 40e01fff ffffe03f      ..........@?...
d00858b4:	ffffbfff ffffffff ffffffff ff8780ff     ................
d00858c4:	8f300307 00000581 00000048 0021e480     ..0.....H.....!.
d00858d4:	03f82000 fe000000 3b0001ff fffc1040     . .........;@...
d00858e4:	ffffffff ff807fff ffffff3f ffffffff     ........?.......
d00858f4:	ffffffff ffffffff fffffe3f 806003ff     ........?.....`.
d0085904:	00000670 00000048 0063f300 01701004     p...H.....c...p.
d0085914:	fd800000 790001ff ffe41140 ffffffff     .......y@.......
d0085924:	ffe3ffff ffffffff ffffffff ffffffff     ................
d0085934:	ffffffff ffffffff 1fc007ff 00000b1d     ................
d0085944:	000000d0 00647900 01f01816 ffc00000     .....yd.........
d0085954:	fc8043ff ffc20bc0 ffffffff ffffffff     .C..............
d0085964:	ffffffff ffffffff ffffffff ffffffff     ................
d0085974:	ffffffff 0f981fff 00000b87 000000d0     ................
d0085984:	88741c80 c0f00817 ffe000ef f88063ff     ..t..........c..
d0085994:	fff20ec1 ffffffff ffffffff ffffffff     ................
d00859a4:	ffffffff ffffffff ffffffff ffffffff     ................
d00859b4:	8c243fff 0000edc3 00000090 8c740c80     .?$...........t.
d00859c4:	f0f1042f ffffffff fe40ffff fff60e63     /.........@.c...
d00859d4:	ffffffff ffffffff ffffffff ffffffff     ................
d00859e4:	ffffffff ffffffff ffffffff 4c667fff     ..............fL
d00859f4:	00039fc0 00000090 ef760640 fff0866f     ........@.v.o...
d0085a04:	ffffffff fff0ffff fffe043f ffffffff     ........?.......
d0085a14:	ffffffff ffffffff ffffffff ffffffff     ................
d0085a24:	ffffffff ffffffff 7fe1ffff 000f83c0     ................
d0085a34:	000001a0 ff3b0638 fff743e7 ffffffff     ....8.;..C......
d0085a44:	ffffffff ffff841f ffffffff ffffffff     ................
d0085a54:	ffffffff ffffffff ffffffff ffffffff     ................
d0085a64:	ffffffff 0ffcffff 000fc0e0 000001a0     ................
d0085a74:	ff9d863c ffffc1f3 ffffffff ffffffff     <...............
d0085a84:	ffffff8f ffffffff ffffffff ffffffff     ................
d0085a94:	ffffffff ffffffff ffffffff ffffffff     ................
d0085aa4:	ffffffff 000ff000 00000120 ffee6604     ........ ....f..
d0085ab4:	ffffe037 ffffffff ffffffff fffffff0     7...............
d0085ac4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085ad4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085ae4:	000ffc3f 8e000140 ffff3c07 ffffedbf     ?...@....<......
d0085af4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085b04:	ffffffff ffffffff ffffffff ffffffff     ................
d0085b14:	ffffffff ffffffff ffffffff 0003feff     ................
d0085b24:	8f000340 ffffc001 ffffffdf ffffffff     @...............
d0085b34:	ffffffff ffffffff ffffffff ffffffff     ................
d0085b44:	ffffffff ffffffff ffffffff ffffffff     ................
d0085b54:	ffffffff ffffffff 0007ffff 7ff00340     ............@...
d0085b64:	ffffff70 ffffffff ffffffff ffffffff     p...............
d0085b74:	ffffffff ffffffff ffffffff ffffffff     ................
d0085b84:	ffffffff ffffffff ffffffff ffffffff     ................
d0085b94:	ffffffff ffffffff fff00341 fffffff7     ........A.......
d0085ba4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085bb4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085bc4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085bd4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085be4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085bf4:	ffffffff ffffffff ffffffff ffffffff     ................
d0085c04:	ffffffff                                ....

d0085c08 <bub_leaves_img>:
	...
d0085c40:	00001000 00000000 00000000 00000000     ................
	...
d0085c5c:	10000000 00106410 00000000 00000000     .....d..........
	...
d0085c7c:	5c100000 0000105c 00000000 00000000     ...\\...........
	...
d0085c98:	10101010 105c1010 00000010 00000000     ......\.........
	...
d0085cb4:	10000000 60606010 10101060 00000010     .....````.......
	...
d0085cd4:	10101000 60605c60 60605c60 00001010     ....`\```\``....
	...
d0085cf0:	10000000 60601010 5c5c6068 6060605c     ......``h`\\\```
d0085d00:	00001060 00000000 00000000 00000000     `...............
d0085d10:	10100000 68685c5c 5c5c6068 60606060     ....\\hhh`\\````
d0085d20:	00001010 00000000 00000000 00000000     ................
d0085d30:	60101000 60686860 60605c5c 6060605c     ...``hh`\\``\```
d0085d40:	00000010 00000000 00000000 00000000     ................
d0085d50:	68601010 5c606868 6060605c 60605c60     ..`hhh`\\````\``
d0085d60:	00000010 00000000 00000000 00000000     ................
d0085d70:	68686010 605c6060 6060605c 105c6060     .`hh``\`\`````\.
d0085d80:	00000010 00000000 00000000 10000000     ................
d0085d90:	60686810 60605c60 6060605c 10106060     .hh``\``\`````..
	...
d0085dac:	10100000 5c5c6860 6060605c 6060605c     ....`h\\\```\```
d0085dbc:	00101060 00000000 00000000 00000000     `...............
d0085dcc:	60100000 5c606060 6060605c 1060605c     ...````\\```\``.
d0085ddc:	00001010 00000000 00000000 00000000     ................
d0085dec:	60100000 605c6060 6060605c 1010105c     ...```\`\```\...
d0085dfc:	00000010 00000000 00000000 00000000     ................
d0085e0c:	60101000 60605c60 1060605c 104c1010     ...``\``\``...L.
d0085e1c:	00000010 00000000 00000000 00000000     ................
d0085e2c:	60601000 6060605c 1010105c 10584c4c     ..``\```\...LLX.
	...
d0085e4c:	5c601000 10106060 4c101010 10584c4c     ..`\``.....LLLX.
	...
d0085e6c:	605c1000 00101010 58100000 1010584c     ..\`.......XLX..
	...
d0085e8c:	10101000 00000010 10100000 00105858     ............XX..
	...
d0085eb4:	10000000 00101010 00000000 00000000     ................
	...
d0085ed8:	00001000 00000000 00000000 00000000     ................
	...
d0085f5c:	10000000 00100010 00000000 00000000     ................
	...
d0085f7c:	5c100000 10105c5c 00000000 00000000     ...\\\..........
	...
d0085f98:	10101000 5c5c1010 0010105c 00000000     ......\\\.......
	...
d0085fb4:	10000000 60606010 10101060 00000010     .....````.......
	...
d0085fd4:	10101000 60605c60 60605c60 00001010     ....`\```\``....
	...
d0085ff0:	10000000 60601010 5c5c6068 6060605c     ......``h`\\\```
d0086000:	00001060 00000000 00000000 10101000     `...............
d0086010:	10101010 68685c5c 5c5c6068 60606060     ....\\hhh`\\````
d0086020:	00001010 00000000 10000000 60601010     ..............``
d0086030:	60606060 60686868 60605c5c 6060605c     ````hhh`\\``\```
d0086040:	00000010 00000000 10100000 5c5c6060     ............``\\
d0086050:	68686860 5c606868 6060605c 60605c60     `hhhhh`\\````\``
d0086060:	00000010 00000000 60101000 60606060     ...........`````
d0086070:	6868605c 605c5c60 60606060 105c6060     \`hh`\\```````\.
d0086080:	00000010 00000000 60601000 5c5c5c5c     ..........``\\\\
d0086090:	5c5c5c5c 6060605c 6060605c 10106060     \\\\\```\`````..
	...
d00860a8:	5c101000 60606060 60605c60 60605c60     ...\`````\```\``
d00860b8:	6060605c 00101060 00000000 00000000     \````...........
d00860c8:	10000000 5c601010 6060605c 6060605c     ......`\\```\```
d00860d8:	1060605c 00001010 00000000 00000000     \``.............
d00860e8:	00000000 10101000 60606010 6060605c     .........```\```
d00860f8:	1010105c 00000000 00000000 00000000     \...............
	...
d0086110:	10101010 10601010 104c1010 00000000     ......`...L.....
	...
d0086134:	10101000 10584c4c 00000000 00000000     ....LLX.........
	...
d0086154:	4c4c1000 104c584c 00000000 00000000     ..LLLXL.........
	...
d0086174:	584c4c10 10104c58 00000000 00000000     .LLXXL..........
	...
d0086194:	584c4c10 0010104c 00000000 00000000     .LLXL...........
	...
d00861b4:	4c4c5810 00001010 00000000 00000000     .XLL............
	...
d00861d0:	10000000 10101010 00000000 00000000     ................
	...

d0086208 <bubtreeforeground>:
d0086208:	21100000 21212121 25252525 25252525     ...!!!!!%%%%%%%%
d0086218:	25252525 25252525 21102121 00000000     %%%%%%%%!!.!....
d0086228:	21100000 21212121 25252525 25252525     ...!!!!!%%%%%%%%
d0086238:	25252525 25252525 21102121 00000010     %%%%%%%%!!.!....
d0086248:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0086258:	25252525 25252525 10102121 00000010     %%%%%%%%!!......
d0086268:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0086278:	25252525 25252525 21102125 00000010     %%%%%%%%%!.!....
d0086288:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0086298:	25252525 25252525 10102125 00001021     %%%%%%%%%!..!...
d00862a8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d00862b8:	25252525 21252525 10102125 00001021     %%%%%%%!%!..!...
d00862c8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d00862d8:	25252525 21252525 10212121 00101021     %%%%%%%!!!!.!...
d00862e8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d00862f8:	25252525 21212525 10212121 00101021     %%%%%%!!!!!.!...
d0086308:	21100000 21212121 25252525 25252525     ...!!!!!%%%%%%%%
d0086318:	25252525 21212525 10212121 00101021     %%%%%%!!!!!.!...
d0086328:	21100000 21212121 25252525 25252525     ...!!!!!%%%%%%%%
d0086338:	25252525 21212525 10212121 00101021     %%%%%%!!!!!.!...
d0086348:	21100000 21212125 25252525 25252525     ...!%!!!%%%%%%%%
d0086358:	25252525 21212525 10212121 00001010     %%%%%%!!!!!.....
d0086368:	21100000 21212125 25252525 25252525     ...!%!!!%%%%%%%%
d0086378:	25252525 21251025 10212121 00001021     %%%%%.%!!!!.!...
d0086388:	10000000 21212125 25252525 25252525     ....%!!!%%%%%%%%
d0086398:	25252525 21251025 10212121 00000010     %%%%%.%!!!!.....
d00863a8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d00863b8:	25252525 21251025 10212121 00000010     %%%%%.%!!!!.....
d00863c8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d00863d8:	25252525 21102525 21102121 00000010     %%%%%%.!!!.!....
d00863e8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d00863f8:	25252525 21102525 10102121 00000000     %%%%%%.!!!......
d0086408:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0086418:	25252525 21102525 10102121 00000000     %%%%%%.!!!......
d0086428:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0086438:	25252525 21102525 10102121 00000000     %%%%%%.!!!......
d0086448:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0086458:	25252525 25252525 10101021 00000000     %%%%%%%%!.......
d0086468:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0086478:	25252525 25252525 21101021 00000000     %%%%%%%%!..!....
d0086488:	10000000 21212125 25212521 25252525     ....%!!!!%!%%%%%
d0086498:	25252525 25252525 21101021 00000000     %%%%%%%%!..!....
d00864a8:	10000000 21212125 25212521 25252525     ....%!!!!%!%%%%%
d00864b8:	25252525 25252525 10211021 00000000     %%%%%%%%!.!.....
d00864c8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d00864d8:	25252525 25252525 10211025 00000000     %%%%%%%%%.!.....
d00864e8:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d00864f8:	25252525 25252525 10211025 00000000     %%%%%%%%%.!.....
d0086508:	10000000 21212125 25212525 25252525     ....%!!!%%!%%%%%
d0086518:	25252525 25252525 10211025 00000000     %%%%%%%%%.!.....
d0086528:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0086538:	25252525 25252525 10211025 00000000     %%%%%%%%%.!.....
d0086548:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0086558:	25252525 25252125 10211025 00000000     %%%%%!%%%.!.....
d0086568:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0086578:	25252525 25252125 10211025 00000000     %%%%%!%%%.!.....
d0086588:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d0086598:	25252525 10252125 10211025 00000000     %%%%%!%.%.!.....
d00865a8:	10000000 21212521 25212525 25252525     ....!%!!%%!%%%%%
d00865b8:	25252525 25252525 10101010 00000000     %%%%%%%%........
d00865c8:	00000000 21212510 25212525 25252525     .....%!!%%!%%%%%
d00865d8:	25252525 25252525 10101010 00000000     %%%%%%%%........
d00865e8:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d00865f8:	25252525 25252525 10101025 00000000     %%%%%%%%%.......
d0086608:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0086618:	25252525 25252525 10102125 00000000     %%%%%%%%%!......
d0086628:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0086638:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0086648:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0086658:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0086668:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0086678:	25252525 25252525 10101021 00000010     %%%%%%%%!.......
d0086688:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d0086698:	25252525 25252525 10101021 00000010     %%%%%%%%!.......
d00866a8:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d00866b8:	25252525 25252525 10101021 00000010     %%%%%%%%!.......
d00866c8:	00000000 25212510 25212525 25252525     .....%!%%%!%%%%%
d00866d8:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d00866e8:	10000000 25212121 25212525 25252525     ....!!!%%%!%%%%%
d00866f8:	25252525 21252525 10102125 00001010     %%%%%%%!%!......
d0086708:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086718:	25252525 21252525 10102125 00001010     %%%%%%%!%!......
d0086728:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086738:	25252525 25212525 10102125 00001010     %%%%%%!%%!......
d0086748:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086758:	25252525 25212525 10102125 00001010     %%%%%%!%%!......
d0086768:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086778:	25252525 25212525 10101025 00000010     %%%%%%!%%.......
d0086788:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0086798:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d00867a8:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d00867b8:	25252525 25252125 10211025 00000010     %%%%%!%%%.!.....
d00867c8:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d00867d8:	25252525 25212525 10211025 00000010     %%%%%%!%%.!.....
d00867e8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d00867f8:	25252525 25212525 10211025 00001010     %%%%%%!%%.!.....
d0086808:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0086818:	25252525 25252525 21101025 00001010     %%%%%%%%%..!....
d0086828:	21100000 25212125 25252525 25252525     ...!%!!%%%%%%%%%
d0086838:	25252525 25252525 21101010 00101010     %%%%%%%%...!....
d0086848:	21100000 21212125 25252525 25252525     ...!%!!!%%%%%%%%
d0086858:	25252525 25212525 21101010 00101010     %%%%%%!%...!....
d0086868:	21211000 21212125 25252525 25252525     ..!!%!!!%%%%%%%%
d0086878:	25252525 25212525 21102125 00101010     %%%%%%!%%!.!....
d0086888:	21211000 21212125 25212525 25252525     ..!!%!!!%%!%%%%%
d0086898:	25252525 25212525 10212125 00001010     %%%%%%!%%!!.....
d00868a8:	21211000 21212125 25212525 25252525     ..!!%!!!%%!%%%%%
d00868b8:	25252525 25212525 10212125 00001010     %%%%%%!%%!!.....
d00868c8:	21211000 21212125 25212525 25252525     ..!!%!!!%%!%%%%%
d00868d8:	25252525 25252525 10212125 00001010     %%%%%%%%%!!.....
d00868e8:	21211000 21212125 25212525 25252525     ..!!%!!!%%!%%%%%
d00868f8:	25252525 25252525 10212125 00001010     %%%%%%%%%!!.....
d0086908:	21211000 25212125 25212525 25252525     ..!!%!!%%%!%%%%%
d0086918:	25252525 25252525 10102121 00000010     %%%%%%%%!!......
d0086928:	21100000 25212125 25212525 25252525     ...!%!!%%%!%%%%%
d0086938:	25252525 25252525 10102121 00000010     %%%%%%%%!!......
d0086948:	21100000 25212125 21252525 25252525     ...!%!!%%%%!%%%%
d0086958:	25252525 25252525 10102121 00000010     %%%%%%%%!!......
d0086968:	21100000 25212125 21252525 25252525     ...!%!!%%%%!%%%%
d0086978:	25252525 25252125 10102121 00000010     %%%%%!%%!!......
d0086988:	21100000 25212125 21252525 25252525     ...!%!!%%%%!%%%%
d0086998:	25252525 25252125 10102125 00000010     %%%%%!%%%!......
d00869a8:	10000000 25212125 21252525 25252525     ....%!!%%%%!%%%%
d00869b8:	25252525 25252125 21102125 00000010     %%%%%!%%%!.!....
d00869c8:	10000000 25212125 21252525 25252525     ....%!!%%%%!%%%%
d00869d8:	25252525 25252125 21101025 00000010     %%%%%!%%%..!....
d00869e8:	10000000 25212121 21252525 25252525     ....!!!%%%%!%%%%
d00869f8:	25252525 25252125 21101025 00000010     %%%%%!%%%..!....
d0086a08:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086a18:	25252525 25252125 10211025 00000000     %%%%%!%%%.!.....
d0086a28:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086a38:	25252525 25252521 10211025 00000000     %%%%!%%%%.!.....
d0086a48:	00000000 25212110 25252525 25252525     .....!!%%%%%%%%%
d0086a58:	25252525 25252521 10211025 00000000     %%%%!%%%%.!.....
d0086a68:	00000000 25212110 25252525 25252525     .....!!%%%%%%%%%
d0086a78:	25252525 25252521 10101025 00000000     %%%%!%%%%.......
d0086a88:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d0086a98:	25252525 25252521 00101025 00000000     %%%%!%%%%.......
d0086aa8:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d0086ab8:	25252525 25252521 00101025 00000000     %%%%!%%%%.......
d0086ac8:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d0086ad8:	25252525 25252521 00101025 00000000     %%%%!%%%%.......
d0086ae8:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d0086af8:	25252525 25252521 10101025 00000000     %%%%!%%%%.......
d0086b08:	00000000 25212110 25212525 25252525     .....!!%%%!%%%%%
d0086b18:	25252525 25252525 10101025 00000000     %%%%%%%%%.......
d0086b28:	10000000 25212121 25212525 25252525     ....!!!%%%!%%%%%
d0086b38:	25252525 25252525 10101025 00000000     %%%%%%%%%.......
d0086b48:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086b58:	25252525 25252525 10101010 00000000     %%%%%%%%........
d0086b68:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086b78:	25252525 25252525 10101010 00000000     %%%%%%%%........
d0086b88:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0086b98:	25252525 25252525 10101010 00000000     %%%%%%%%........
d0086ba8:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0086bb8:	25252525 25252525 10101010 00000000     %%%%%%%%........
d0086bc8:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0086bd8:	25252525 25252525 10101010 00000010     %%%%%%%%........
d0086be8:	10000000 25252121 25252521 25252525     ....!!%%!%%%%%%%
d0086bf8:	25252525 25252525 21101010 00000010     %%%%%%%%...!....
d0086c08:	10000000 25252121 25252521 25252525     ....!!%%!%%%%%%%
d0086c18:	25252525 25252525 21101010 00001010     %%%%%%%%...!....
d0086c28:	10000000 25252121 25252521 25252525     ....!!%%!%%%%%%%
d0086c38:	25252525 25252525 21101010 00001010     %%%%%%%%...!....
d0086c48:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086c58:	25252525 25252525 21101010 00001010     %%%%%%%%...!....
d0086c68:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086c78:	25252525 25252525 21101010 00001010     %%%%%%%%...!....
d0086c88:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086c98:	25252525 25212525 10101010 00001021     %%%%%%!%....!...
d0086ca8:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086cb8:	25252525 25212525 10101010 00001021     %%%%%%!%....!...
d0086cc8:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086cd8:	25252525 25212525 10101025 00001021     %%%%%%!%%...!...
d0086ce8:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086cf8:	25252525 25212525 10101025 00001021     %%%%%%!%%...!...
d0086d08:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086d18:	25252525 21252525 10101025 00001021     %%%%%%%!%...!...
d0086d28:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086d38:	25252525 21252525 10101025 00000010     %%%%%%%!%.......
d0086d48:	21100000 25252121 25252521 25252525     ...!!!%%!%%%%%%%
d0086d58:	25252525 21252525 10101025 00000010     %%%%%%%!%.......
d0086d68:	10000000 25252121 25252521 25252525     ....!!%%!%%%%%%%
d0086d78:	25252525 21252525 10251025 00000010     %%%%%%%!%.%.....
d0086d88:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0086d98:	25252525 21252525 10102525 00000010     %%%%%%%!%%......
d0086da8:	10000000 25252121 25252525 25252525     ....!!%%%%%%%%%%
d0086db8:	25252525 25252525 10102510 00000010     %%%%%%%%.%......
d0086dc8:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086dd8:	25252525 25252525 10102510 00000010     %%%%%%%%.%......
d0086de8:	00000000 25212110 25252525 25252525     .....!!%%%%%%%%%
d0086df8:	25252525 10252525 10102521 00000010     %%%%%%%.!%......
d0086e08:	00000000 25212110 25252525 25252525     .....!!%%%%%%%%%
d0086e18:	25252525 10252525 21101021 00000010     %%%%%%%.!..!....
d0086e28:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086e38:	25252525 25102525 21101025 00000010     %%%%%%.%%..!....
d0086e48:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086e58:	25252525 25102525 21101025 00000010     %%%%%%.%%..!....
d0086e68:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086e78:	25252525 25251025 21101025 00001010     %%%%%.%%%..!....
d0086e88:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086e98:	25252525 25251025 10101021 00001010     %%%%%.%%!.......
d0086ea8:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086eb8:	25252525 25252525 10101021 00001010     %%%%%%%%!.......
d0086ec8:	10000000 25212121 25252525 25252525     ....!!!%%%%%%%%%
d0086ed8:	25252525 25252525 10101021 00001010     %%%%%%%%!.......
d0086ee8:	21100000 25212121 25212525 25252525     ...!!!!%%%!%%%%%
d0086ef8:	25252525 21252525 10101021 00001010     %%%%%%%!!.......
d0086f08:	21100000 25252121 25212525 25252525     ...!!!%%%%!%%%%%
d0086f18:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0086f28:	21100000 25252121 25212525 25252525     ...!!!%%%%!%%%%%
d0086f38:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0086f48:	21100000 25252121 25212525 25252525     ...!!!%%%%!%%%%%
d0086f58:	25252525 25252525 10101025 00000000     %%%%%%%%%.......
d0086f68:	21100000 25252121 25212525 25252525     ...!!!%%%%!%%%%%
d0086f78:	25252525 25252525 10101025 00000010     %%%%%%%%%.......
d0086f88:	21100000 25252121 25252125 25252525     ...!!!%%%!%%%%%%
d0086f98:	25252525 25252125 10101025 00000010     %%%%%!%%%.......
d0086fa8:	21100000 25212521 25252125 25252525     ...!!%!%%!%%%%%%
d0086fb8:	25252525 25252125 10101025 00000010     %%%%%!%%%.......
d0086fc8:	21100000 25212521 25252125 25252525     ...!!%!%%!%%%%%%
d0086fd8:	25252525 25252125 10101025 00000010     %%%%%!%%%.......
d0086fe8:	21100000 25212521 25252125 25252525     ...!!%!%%!%%%%%%
d0086ff8:	25252525 25252125 21101010 00000010     %%%%%!%%...!....
d0087008:	21100000 25252521 25252125 25252525     ...!!%%%%!%%%%%%
d0087018:	25252525 25212525 21101010 00000010     %%%%%%!%...!....
d0087028:	21100000 25252521 25252525 25252525     ...!!%%%%%%%%%%%
d0087038:	25252525 25212525 10101010 00000021     %%%%%%!%....!...
d0087048:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0087058:	25252525 25212525 10101025 00000021     %%%%%%!%%...!...
d0087068:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0087078:	25252525 25212525 10101025 00000010     %%%%%%!%%.......
d0087088:	21100000 25252121 25252525 25252525     ...!!!%%%%%%%%%%
d0087098:	25252525 25252525 10101025 00001010     %%%%%%%%%.......
d00870a8:	21100000 25252121 25252125 25252525     ...!!!%%%!%%%%%%
d00870b8:	25252525 25252525 10101025 00001010     %%%%%%%%%.......
d00870c8:	21100000 25252521 25252125 25252525     ...!!%%%%!%%%%%%
d00870d8:	25252525 25252525 10101025 00002110     %%%%%%%%%....!..
d00870e8:	21100000 25252521 25252125 25252525     ...!!%%%%!%%%%%%
d00870f8:	25252525 25252525 10102125 00002110     %%%%%%%%%!...!..
d0087108:	21100000 25252525 25252125 25252525     ...!%%%%%!%%%%%%
d0087118:	25252525 25252525 10102125 00001021     %%%%%%%%%!..!...
d0087128:	21100000 25252525 25252125 25252525     ...!%%%%%!%%%%%%
d0087138:	25252525 25252525 10102125 00001021     %%%%%%%%%!..!...
d0087148:	21100000 25252525 25252525 25252525     ...!%%%%%%%%%%%%
d0087158:	25252525 25252525 10102525 00001021     %%%%%%%%%%..!...
d0087168:	21211000 25252525 25252525 25252525     ..!!%%%%%%%%%%%%
d0087178:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d0087188:	21211000 25252521 25252525 25252525     ..!!!%%%%%%%%%%%
d0087198:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d00871a8:	21211000 25252521 25252525 25252525     ..!!!%%%%%%%%%%%
d00871b8:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d00871c8:	21211000 25252521 25252525 25252525     ..!!!%%%%%%%%%%%
d00871d8:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d00871e8:	21211000 25212121 25252525 25252525     ..!!!!!%%%%%%%%%
d00871f8:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d0087208:	21211000 21212121 25252525 25252525     ..!!!!!!%%%%%%%%
d0087218:	25252525 21252525 10102525 00001010     %%%%%%%!%%......
d0087228:	21211000 21212121 25252521 25252525     ..!!!!!!!%%%%%%%
d0087238:	25252525 21252525 10102525 00001010     %%%%%%%!%%......
d0087248:	21211000 21212121 25252121 25252525     ..!!!!!!!!%%%%%%
d0087258:	25252525 25252525 10101025 00001010     %%%%%%%%%.......
d0087268:	21211000 25212121 25252525 25252525     ..!!!!!%%%%%%%%%
d0087278:	25252525 25252525 10101025 00001010     %%%%%%%%%.......
d0087288:	21211000 25212121 25252525 25252525     ..!!!!!%%%%%%%%%
d0087298:	25252525 25252525 10102521 00001010     %%%%%%%%!%......
d00872a8:	21211000 21212121 25252525 25252525     ..!!!!!!%%%%%%%%
d00872b8:	25252525 25252525 10102521 00001010     %%%%%%%%!%......
d00872c8:	21211000 21212121 25252525 25252525     ..!!!!!!%%%%%%%%
d00872d8:	25252525 25252525 10102521 00001010     %%%%%%%%!%......
d00872e8:	21211000 21212121 25252525 25252525     ..!!!!!!%%%%%%%%
d00872f8:	25252525 21252525 10212525 00001010     %%%%%%%!%%!.....
d0087308:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0087318:	25252525 21252525 10252525 00101010     %%%%%%%!%%%.....
d0087328:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0087338:	25252525 21252525 10212125 00101025     %%%%%%%!%!!.%...
d0087348:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0087358:	25252525 21252525 10212510 00101010     %%%%%%%!.%!.....
d0087368:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0087378:	25252525 25252525 10212510 00101010     %%%%%%%%.%!.....
d0087388:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d0087398:	25252525 25252525 10252110 00101010     %%%%%%%%.!%.....
d00873a8:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d00873b8:	25252525 25252525 10251025 00101010     %%%%%%%%%.%.....
d00873c8:	21211000 21212121 21252525 25252525     ..!!!!!!%%%!%%%%
d00873d8:	25252525 25252525 10211025 00101010     %%%%%%%%%.!.....
d00873e8:	21100000 21212121 21252525 25252525     ...!!!!!%%%!%%%%
d00873f8:	25252525 25252525 10211025 00101010     %%%%%%%%%.!.....
d0087408:	21100000 25212121 21252525 25252525     ...!!!!%%%%!%%%%
d0087418:	25252525 25252525 10252525 00101010     %%%%%%%%%%%.....
d0087428:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0087438:	25252525 25252525 10102525 00101010     %%%%%%%%%%......
d0087448:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0087458:	25252525 25252525 25102510 00101010     %%%%%%%%.%.%....
d0087468:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0087478:	25252525 10252525 25102525 00101010     %%%%%%%.%%.%....
d0087488:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d0087498:	25252525 10252525 25102525 00101010     %%%%%%%.%%.%....
d00874a8:	21100000 25212121 25252525 25252525     ...!!!!%%%%%%%%%
d00874b8:	25252525 10212525 10102525 00101010     %%%%%%!.%%......

d00874c8 <frontbush>:
	...
d0087530:	00f1f100 00f1f100 00000000 00000000     ................
	...
d0087670:	f14cf100 f14cf100 00000000 f1000000     ..L...L.........
d0087680:	f1f1f1f1 00000000 00000000 00000000     ................
	...
d00877b0:	4c4cf100 4c4cf1f1 000000f1 f1f1f100     ..LL..LL........
d00877c0:	00f14c4c 00000000 00000000 00000000     LL..............
	...
d00878f0:	584cf100 58f1f14c f1f1f14c 58584cf1     ..LXL..XL....LXX
d0087900:	0000f14c 00000000 00000000 00000000     L...............
	...
d0087a28:	f1f1f100 f1f1f1f1 584cf1f1 f14c4c58     ..........LXXLL.
d0087a38:	4c4c4c58 f14c5858 000000f1 00000000     XLLLXXL.........
	...
d0087b68:	584c4cf1 4c585858 4cf1f14c 4c585858     .LLXXXXLL..LXXXL
d0087b78:	58585858 f14c4c58 00000000 00000000     XXXXXLL.........
	...
d0087ca8:	f1f1f100 58584cf1 4c585858 58585858     .....LXXXXXLXXXX
d0087cb8:	58585858 00f14c4c 00000000 00000000     XXXXLL..........
	...
d0087dec:	4cf1f1f1 5858584c 58585858 58585858     ...LLXXXXXXXXXXX
d0087dfc:	f1f14c4c 0000f1f1 00000000 00000000     LL..............
	...
d0087f24:	f1000000 f1f1f1f1 f14c4cf1 584c4c4c     .........LL.LLLX
d0087f34:	58585858 58585858 4c4c5858 f1f14c4c     XXXXXXXXXXLLLL..
	...
d0088064:	4cf10000 f14c4c4c 5858584c 5858584c     ...LLLL.LXXXLXXX
d0088074:	58585858 58585858 4c4c4c4c 4c4cf1f1     XXXXXXXXLLLL..LL
d0088084:	000000f1 00000000 00000000 00000000     ................
	...
d00881a4:	f1f10000 4cf1f1f1 58585858 58585858     .......LXXXXXXXX
d00881b4:	58585858 584c5858 f1f14c4c f1f10000     XXXXXXLXLL......
	...
d00882e8:	584cf100 4c4c4c58 584c4c4c 58585858     ..LXXLLLLLLXXXXX
d00882f8:	4c4c4c58 00f1f14c 0000f1f1 00000000     XLLLL...........
	...
d0088428:	5858f100 f14c4c4c 5858f1f1 58584c4c     ..XXLLL...XXLLXX
d0088438:	4c4c4c58 f14c4c4c 00f14c4c 00000000     XLLLLLL.LL......
	...
d0088568:	4c584cf1 00f1f14c 4c584cf1 58584c4c     .LXLL....LXLLLXX
d0088578:	4c4c4c4c 4c4c4c4c 00f1f1f1 00000000     LLLLLLLL........
	...
d00886a8:	f14c4cf1 f10000f1 f14c4c4c 584cf1f1     .LL.....LLL...LX
d00886b8:	4c4c4c4c f1f14c4c 00000000 00000000     LLLLLL..........
	...
d00887e8:	00f14cf1 4cf10000 f1f14c4c 584cf1f1     .L.....LLL....LX
d00887f8:	4c4c4cf1 f1f1f14c 00000000 00000000     .LLLL...........
	...
d0088910:	00f1f100 00f1f100 00000000 00000000     ................
	...
d008892c:	4c4cf100 f100f14c 4c4cf1f1 f14cf14c     ..LLL.....LLL.L.
d008893c:	f14c4c4c 000000f1 00000000 00000000     LLL.............
	...
d00889f0:	f1000000 f10000f1 000000f1 00000000     ................
	...
d0088a50:	f14cf100 f14cf100 00000000 f1000000     ..L...L.........
d0088a60:	f1f1f1f1 00000000 00000000 4c4cf100     ..............LL
d0088a70:	f2f100f1 4cf1f1f2 f14cf14c f14cf1f1     .......LL.L...L.
d0088a80:	0000f100 00000000 00000000 00000000     ................
	...
d0088b24:	f1f10000 00f1f1f1 00000000 4cf10000     ...............L
d0088b34:	4cf100f1 000000f1 00000000 00000000     ...L............
	...
d0088b90:	4c4cf100 4c4cf1f1 000000f1 f1f1f100     ..LL..LL........
d0088ba0:	00f14c4c 00000000 00000000 f14cf100     LL............L.
d0088bb0:	f220f100 4cf1f1f1 f14cf1f1 f1f10000     .. ....L..L.....
	...
d0088c64:	f1000000 f1f14c4c 000000f1 4c4cf100     ....LL........LL
d0088c74:	4c4cf1f1 000000f1 00000000 00000000     ..LL............
	...
d0088cd0:	584cf100 58f1f14c f1f1f14c 58584cf1     ..LXL..XL....LXX
d0088ce0:	0000f14c 00000000 00000000 00f10000     L...............
d0088cf0:	f22020f1 f10000f1 f14cf14c f1000000     .  .....L.L.....
	...
d0088da8:	58584cf1 f1f1f14c f1584cf1 4c584cf1     .LXXL....LX..LXL
d0088db8:	000000f1 00000000 00000000 00000000     ................
	...
d0088e08:	f1f1f100 f1f1f1f1 584cf1f1 f14c4c58     ..........LXXLL.
d0088e18:	4c4c4c58 f14c5858 000000f1 00000000     XLLLXXL.........
d0088e28:	00000000 f1000000 f1202020 f1000000     ........   .....
d0088e38:	f14cf1f1 00000000 00000000 00000000     ..L.............
	...
d0088ee8:	4cf1f100 4c4c5858 4cf1584c 4c58584c     ...LXXLLLX.LLXXL
d0088ef8:	f1f1f1f1 f1f1f1f1 000000f1 00000000     ................
	...
d0088f48:	584c4cf1 4c585858 4cf1f14c 4c585858     .LLXXXXLL..LXXXL
d0088f58:	58585858 f14c4c58 00000000 00000000     XXXXXLL.........
d0088f68:	00000000 20f10000 00f12029 00000000     ....... ) ......
d0088f78:	f1f1f1f1 00000000 00000000 00000000     ................
	...
d0089028:	4cf10000 5858584c 584c5858 f14c5858     ...LLXXXXXLXXXL.
d0089038:	584c4cf1 4c585858 0000f14c 00000000     .LLXXXXLL.......
	...
d0089088:	f1f1f100 58584cf1 4c585858 58585858     .....LXXXXXLXXXX
d0089098:	58585858 00f14c4c 00000000 00000000     XXXXLL..........
d00890a8:	00000000 29f10000 0000f120 00000000     .......) .......
d00890b8:	f10000f1 00000000 00000000 00000000     ................
	...
d0089168:	f1000000 58584c4c 58585858 584c5858     ....LLXXXXXXXXLX
d0089178:	58585858 f1f1f14c 000000f1 00000000     XXXXL...........
	...
d00891cc:	4cf1f1f1 5858584c 58585858 58585858     ...LLXXXXXXXXXXX
d00891dc:	f1f14c4c 0000f1f1 00000000 00000000     LL..............
d00891ec:	2029f100 000000f1 00000000 00000000     ..) ............
	...
d00892a8:	f1f1f1f1 58584c4c 58585858 58585858     ....LLXXXXXXXXXX
d00892b8:	f14c4c58 0000f1f1 00000000 00000000     XLL.............
	...
d0089304:	f1000000 f1f1f1f1 f14c4cf1 584c4c4c     .........LL.LLLX
d0089314:	58585858 58585858 4c4c5858 f1f14c4c     XXXXXXXXXXLLLL..
	...
d008932c:	f220f1f1 000000f1 00000000 00000000     .. .............
	...
d00893e4:	f1f10000 4c4c4c4c 58585858 58585858     ....LLLLXXXXXXXX
d00893f4:	4c585858 4cf14c4c f1f1f14c 00f1f1f1     XXXLLL.LL.......
	...
d0089444:	4cf10000 f14c4c4c 5858584c 5858584c     ...LLLL.LXXXLXXX
d0089454:	58585858 58585858 4c4c4c4c 4c4cf1f1     XXXXXXXXLLLL..LL
d0089464:	000000f1 f1000000 f1f1f120 00000000     ........ .......
	...
d0089524:	4c4cf100 4c4cf1f1 58584c4c 58585858     ..LL..LLLLXXXXXX
d0089534:	58585858 58584c58 4cf14c58 f14c4c4c     XXXXXLXXXL.LLLL.
	...
d0089584:	f1f10000 f1f1f1f1 5858f1f1 58585858     ..........XXXXXX
d0089594:	58585858 584c5858 f1f14c4c f1f10000     XXXXXXLXLL......
d00895a4:	00000000 f1000000 00f12020 00000000     ........  ......
	...
d0089664:	f1f10000 f1f10000 4c584c4c 58585858     ........LLXLXXXX
d0089674:	58585858 58585858 f14c5858 f1f1f1f1     XXXXXXXXXXL.....
	...
d00896cc:	f1f10000 584c4c4c 58585858 4c4c4c58     ....LLLXXXXXXLLL
d00896dc:	00f1f14c 0000f1f1 00000000 20f10000     L.............. 
d00896ec:	00f12029 00000000 00000000 00000000     ) ..............
	...
d00897a8:	f100f1f1 4c4c4cf1 5858584c 4c585858     .....LLLLXXXXXXL
d00897b8:	4c4c4c4c 4c58584c 000000f1 00000000     LLLLLXXL........
	...
d0089810:	5858f1f1 58584c4c 4c4c4c58 f14c4c4c     ..XXLLXXXLLLLLL.
d0089820:	00f14c4c 00000000 2920f100 0000f120     LL........ ) ...
	...
d00898e4:	f1000000 4cf14c4c 4c4c4c4c 5858584c     ....LL.LLLLLLXXX
d00898f4:	58584c4c 4cf1f1f1 58584c4c 000000f1     LLXX...LLLXX....
	...
d0089950:	4cf10000 58584c4c 4c4c4c4c 4c4c4c4c     ...LLLXXLLLLLLLL
d0089960:	00f1f1f1 00000000 f12920f1 0000f1f1     ......... ).....
	...
d0089a24:	f1000000 4c4cf1f1 4c4c4c4c 58584c4c     ......LLLLLLLLXX
d0089a34:	584c4c4c f100f14c 584c4cf1 0000f14c     LLLXL....LLXL...
	...
d0089a90:	f1000000 584cf1f1 4c4c4c4c f1f14c4c     ......LXLLLLLL..
	...
d0089aa8:	20f1f1f1 000000f1 00000000 00000000     ... ............
	...
d0089b68:	f1f10000 4c4c4c4c 4c584c4c 4cf1f1f1     ....LLLLLLXL...L
d0089b78:	00f14c4c 4cf1f100 0000f14c 00000000     LL.....LL.......
	...
d0089bd4:	584cf1f1 4c4c4cf1 f1f1f14c 00000000     ..LX.LLLL.......
d0089be4:	f1000000 20202020 000000f1 00000000     ....    ........
	...
d0089ca8:	f1f10000 4c4c4cf1 4c58f14c f1f1f1f1     .....LLLL.XL....
d0089cb8:	f14c4c4c f1000000 0000f14c 00000000     LLL.....L.......
	...
d0089d14:	4c4cf1f1 f14cf14c f2f2f24c 000000f1     ..LLL.L.L.......
d0089d24:	20f10000 f1202029 00000000 00000000     ... )  .........
	...
d0089de8:	4cf1f100 4cf14c4c 4c4c4cf1 00f1f1f1     ...LLL.L.LLL....
d0089df8:	4c4c4cf1 000000f1 00000000 00000000     .LLL............
	...
d0089e54:	4cf1f100 f14cf14c 20f2f1f1 0000f1f2     ...LL.L.... ....
d0089e64:	2920f100 00f12020 00000000 00000000     .. )  ..........
	...
d0089f28:	4cf100f1 4cf1f1f1 f14c4cf1 f1f2f2f1     ...L...L.LL.....
d0089f38:	4c4cf100 000000f1 00000000 00000000     ..LL............
	...
d0089f94:	4cf1f100 f14cf1f1 29f10000 f1f1f220     ...L..L....) ...
d0089fa4:	202920f1 00f12020 00000000 00000000     . )   ..........
	...
d008a068:	f1f10000 4cf10000 f14cf1f1 20f2f1f1     .......L..L.... 
d008a078:	4cf100f1 000000f1 00000000 00000000     ...L............
	...
d008a0d4:	f1000000 f14cf14c 29f1f100 f1f22029     ....L.L....)) ..
d008a0e4:	20292920 0000f120 00000000 00000000      ))  ...........
	...
d008a1a8:	00f10000 4cf10000 00f14cf1 20f2f100     .......L.L..... 
d008a1b8:	f100f120 00000000 00000000 00000000      ...............
	...
d008a214:	f1000000 f14cf1f1 20f10000 20f12020     ......L....   . 
d008a224:	20202020 0000f1f2 00000000 00000000         ............
	...
d008a2ec:	4cf10000 00f1f1f1 20f10000 00f12020     ...L.......   ..
	...
d008a358:	00f1f1f1 20f10000 20202020 f1202029     .......     )  .
d008a368:	000000f1 00000000 00000000 00000000     ................
	...
d008a42c:	f1f10000 0000f1f1 f1000000 f1202920     ............ ) .
	...
d008a49c:	f1000000 202020f1 00f12020 00000000     .....     ......
	...
d008a56c:	00f10000 0000f100 00000000 f12920f1     ............. ).
	...
d008a5e0:	2020f100 00f12020 00000000 00000000     ..    ..........
	...
d008a6b8:	2920f100 000000f1 00000000 00000000     .. )............
	...
d008a720:	202020f1 00f12020 00000000 00000000     .     ..........
	...
d008a7f8:	20f2f100 0000f1f1 00000000 00000000     ... ............
	...
d008a860:	202020f1 0000f120 00000000 00000000     .    ...........
	...
d008a938:	f1f10000 00f120f1 00000000 00000000     ..... ..........
	...
d008a9a0:	202020f1 0000f120 00000000 00000000     .    ...........
	...
d008aa78:	f1000000 00f12020 00000000 00000000     ....  ..........
	...
d008aadc:	f1000000 202020f1 000000f1 00000000     .....   ........
	...
d008abb8:	f1000000 f1202920 00000000 00000000     .... ) .........
	...
d008ac1c:	f1000000 20202020 000000f1 00000000     ....    ........
	...
d008acfc:	202920f1 000000f1 00000000 00000000     . ) ............
	...
d008ad5c:	f1f10000 f2202020 000000f1 00000000     ....   .........
	...
d008ae3c:	29f1f1f1 0000f120 00000000 00000000     ...) ...........
	...
d008ae9c:	20f10000 f1f1f120 00000000 00000000     ...  ...........
	...
d008af7c:	f120f100 0000f1f1 00000000 00000000     .. .............
	...
d008afdc:	20f10000 0000f120 00000000 00000000     ...  ...........
	...
d008b0bc:	2020f100 00f12020 00000000 00000000     ..    ..........
	...
d008b0e4:	f1f1f1f1 00000000 00000000 00000000     ................
	...
d008b11c:	20f1f100 00f12020 00000000 00000000     ...   ..........
	...
d008b19c:	f1f10000 00000000 00000000 00000000     ................
	...
d008b1e4:	f1f1f1f1 00000000 00000000 00000000     ................
	...
d008b1fc:	20f10000 00f12029 00000000 00000000     ... ) ..........
	...
d008b214:	f1f1f100 000000f1 00000000 f1000000     ................
d008b224:	4c4c4c4c f1f1f1f1 0000f1f1 00000000     LLLL............
d008b234:	f1f10000 00000000 00000000 00000000     ................
	...
d008b254:	f1f1f100 000000f1 2020f100 00f12020     ..........    ..
d008b264:	00000000 f1f1f100 0000f1f1 00000000     ................
	...
d008b2dc:	4cf1f100 f10000f1 f1f1f1f1 000000f1     ...L............
	...
d008b314:	f1f1f100 000000f1 00000000 f1000000     ................
d008b324:	4c4c4c4c f1f1f1f1 0000f1f1 00000000     LLLL............
	...
d008b33c:	20f10000 f1f22929 00000000 00000000     ... ))..........
	...
d008b354:	4c4c4c00 f1f14c4c 00000000 4cf10000     .LLLLL.........L
d008b364:	5858584c 4c4c5858 f1f14c4c 00000000     LXXXXXLLLL......
d008b374:	4cf10000 000000f1 00000000 00000000     ...L............
	...
d008b394:	4c4c4c00 f1f14c4c 2920f1f1 f1f12020     .LLLLL.... )  ..
d008b3a4:	f1f1f1f1 4c4cf1f1 f1f14c4c 00000000     ......LLLL......
	...
d008b41c:	4c584cf1 4cf1f14c 4c4c5858 0000584c     .LXLL..LXXLLLX..
	...
d008b43c:	f1f10000 000000f1 00000000 00000000     ................
	...
d008b454:	4c4c4c00 f1f14c4c 00000000 4cf10000     .LLLLL.........L
d008b464:	5858584c 4c4c5858 f1f14c4c 00000000     LXXXXXLLLL......
	...
d008b47c:	f2f10000 f1202929 00000000 00000000     ....)) .........
	...
d008b494:	584cf100 4c4c5858 000000f1 4cf10000     ..LXXXLL.......L
d008b4a4:	58585858 58585858 4c4c4c58 000000f1     XXXXXXXXXLLL....
d008b4b4:	4cf10000 000000f1 00000000 00000000     ...L............
	...
d008b4d4:	584cf100 4c4c5858 2920f1f1 4cf1f120     ..LXXXLL.. ) ..L
d008b4e4:	58585858 58585858 4c4c4c58 000000f1     XXXXXXXXXLLL....
d008b4f4:	00000000 0000f100 00000000 00000000     ................
	...
d008b518:	f1f10000 000000f1 f2000000 f1f1f1f1     ................
d008b528:	000000f1 00000000 00000000 00000000     ................
	...
d008b558:	f1f10000 5858584c 584cf14c 4c585858     ....LXXXL.LXXXXL
d008b568:	00f15858 00000000 00000000 00000000     XX..............
d008b578:	0000f100 f1000000 f1f1f14c 000000f1     ........L.......
	...
d008b594:	584cf100 4c4c5858 000000f1 4cf10000     ..LXXXLL.......L
d008b5a4:	58585858 58585858 4c4c4c58 000000f1     XXXXXXXXXLLL....
d008b5b4:	00000000 0000f100 f1000000 f1202920     ............ ) .
d008b5c4:	000000f1 00000000 00000000 00000000     ................
d008b5d4:	4cf10000 5858584c 0000f14c 4c4cf100     ...LLXXXL.....LL
d008b5e4:	58585858 58585858 f14c4c58 00000000     XXXXXXXXXLL.....
d008b5f4:	58f10000 0000f14c 00000000 00000000     ...XL...........
	...
d008b614:	4cf10000 5858584c 2020f14c 4c4cf1f2     ...LLXXXL.  ..LL
d008b624:	58585858 58585858 f14c4c58 00000000     XXXXXXXXXLL.....
d008b634:	00000000 00f1f100 00000000 00000000     ................
	...
d008b658:	f1f1f100 f1f1f1f1 f1f1f100 5858f1f1     ..............XX
d008b668:	000000f1 00000000 00000000 00000000     ................
	...
d008b698:	4c4cf100 4c585858 5858f1f1 58585858     ..LLXXXL..XXXXXX
d008b6a8:	00f14c58 00000000 00000000 00000000     XL..............
d008b6b8:	00f1f100 00000000 584c4cf1 00f1f158     .........LLXX...
	...
d008b6d4:	4cf10000 5858584c 0000f14c 4c4cf100     ...LLXXXL.....LL
d008b6e4:	58585858 58585858 f14c4c58 00000000     XXXXXXXXXLL.....
d008b6f4:	00000000 00f1f100 f1000000 f1202920     ............ ) .
d008b704:	00f1f14c 0000f1f1 00000000 00000000     L...............
d008b714:	f1000000 5858584c 00f14c58 584cf100     ....LXXXXL....LX
d008b724:	58585858 58585858 f14c4c4c 00000000     XXXXXXXXLLL.....
d008b734:	584cf100 0000f14c 00000000 00000000     ..LXL...........
	...
d008b754:	f1000000 5858584c f2f14c58 584cf1f2     ....LXXXXL....LX
d008b764:	58585858 58585858 f14c4c4c 00000000     XXXXXXXXLLL.....
d008b774:	00000000 f14cf100 00000000 00000000     ......L.........
	...
d008b798:	4c4c4cf1 f14c4c4c 58f1f1f1 f1585858     .LLLLLL....XXXX.
d008b7a8:	f1f1f1f1 000000f1 00000000 00000000     ................
d008b7b8:	f1f10000 0000f1f1 00000000 00000000     ................
	...
d008b7d8:	58584cf1 58585858 58584cf1 58585858     .LXXXXXX.LXXXXXX
d008b7e8:	f14c5858 00000000 00000000 00000000     XXL.............
d008b7f8:	f14cf100 00000000 4cf1f100 f14c4c4c     ..L........LLLL.
d008b808:	0000f1f1 00000000 00000000 f1000000     ................
d008b818:	5858584c 00f14c58 584cf100 58585858     LXXXXL....LXXXXX
d008b828:	58585858 f14c4c4c 00000000 00000000     XXXXLLL.........
d008b838:	f14cf100 f1000000 f1202920 f14c4c4c     ..L..... ) .LLL.
d008b848:	f1f14c4c 00000000 00000000 f1000000     LL..............
d008b858:	5858584c f14c4c58 584c4cf1 58585858     LXXXXLL..LLXXXXX
d008b868:	4c585858 00f14c4c 00000000 584cf100     XXXLLL........LX
d008b878:	0000f158 00000000 00000000 00000000     X...............
	...
d008b894:	f1000000 5858584c f14c4c58 584c4cf1     ....LXXXXLL..LLX
d008b8a4:	58585858 4c585858 00f14c4c 00000000     XXXXXXXLLL......
d008b8b4:	00000000 f14cf100 00000000 00000000     ......L.........
	...
d008b8d8:	585858f1 4c4c4c58 5858f1f1 58585858     .XXXXLLL..XXXXXX
d008b8e8:	4c585858 0000f14c 00000000 00000000     XXXLL...........
d008b8f8:	f1f1f100 0000f1f1 00000000 f1f1f100     ................
d008b908:	f1f1f1f1 00000000 00000000 f1000000     ................
d008b918:	5858584c 5858584c 58584cf1 58585858     LXXXLXXX.LXXXXXX
d008b928:	f14c5858 00000000 00000000 00000000     XXL.............
d008b938:	4c4cf100 0000f1f1 f1000000 4c58584c     ..LL........LXXL
d008b948:	f1f14c4c 00000000 00000000 f1000000     LL..............
d008b958:	5858584c f14c4c58 584c4cf1 58585858     LXXXXLL..LLXXXXX
d008b968:	4c585858 00f14c4c 00000000 00000000     XXXLLL..........
d008b978:	4c4cf100 0000f1f1 202020f2 4c5858f1     ..LL.....   .XXL
d008b988:	4c585858 000000f1 00000000 f1000000     XXXL............
d008b998:	5858584c 4c585858 58584cf1 4c585858     LXXXXXXL.LXXXXXL
d008b9a8:	4c585858 00f14c4c 00000000 4c4cf100     XXXLLL........LL
d008b9b8:	00f14c58 00000000 00000000 00000000     XL..............
	...
d008b9d4:	f1000000 5858584c 4c585858 58584cf1     ....LXXXXXXL.LXX
d008b9e4:	4c585858 4c585858 00f14c4c 00000000     XXXLXXXLLL......
d008b9f4:	00000000 f1584cf1 00000000 00000000     .....LX.........
	...
d008ba14:	f1000000 5858584c 4c585858 58584cf1     ....LXXXXXXL.LXX
d008ba24:	4c585858 4c585858 00f14c4c 00000000     XXXLXXXLLL......
d008ba34:	00000000 4c584cf1 f1f14c4c 00000000     .....LXLLL......
d008ba44:	584c4cf1 4c585858 000000f1 00000000     .LLXXXXL........
d008ba54:	f1000000 58585858 4c585858 58584cf1     ....XXXXXXXL.LXX
d008ba64:	4c585858 f1585858 00000000 00000000     XXXLXXX.........
d008ba74:	00000000 4c584cf1 f1f14c4c 00000000     .....LXLLL......
d008ba84:	584c4cf1 4c585858 000000f1 00000000     .LLXXXXL........
d008ba94:	f1000000 5858584c 4c585858 58584cf1     ....LXXXXXXL.LXX
d008baa4:	4c585858 4c585858 00f14c4c 00000000     XXXLXXXLLL......
d008bab4:	00000000 4c584cf1 f1f14c4c f22020f1     .....LXLLL...  .
d008bac4:	584c4cf1 58585858 f14c4c58 0000f1f1     .LLXXXXXXLL.....
d008bad4:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008bae4:	4c585858 4c4c5858 0000f14c 00000000     XXXLXXLLL.......
d008baf4:	4c4cf100 00f14c58 00000000 00000000     ..LLXL..........
	...
d008bb14:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008bb24:	4c585858 4c4c5858 0000f14c 00000000     XXXLXXLLL.......
d008bb34:	f1000000 58584cf1 000000f1 00000000     .....LXX........
	...
d008bb54:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008bb64:	4c585858 4c4c5858 00f1f14c 00000000     XXXLXXLLL.......
d008bb74:	f1000000 58584cf1 4c4c584c f1f1f1f1     .....LXXLXLL....
d008bb84:	4c4c4c4c 58585858 f14c4c58 0000f1f1     LLLLXXXXXLL.....
d008bb94:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008bba4:	4c585858 4c4c5858 0000f1f1 00000000     XXXLXXLL........
d008bbb4:	00000000 58584cf1 4c4c584c f100f1f1     .....LXXLXLL....
d008bbc4:	4c4c4c4c 58585858 f14c4c58 0000f1f1     LLLLXXXXXLL.....
d008bbd4:	f1000000 5858584c 4c4c5858 58584c4c     ....LXXXXXLLLLXX
d008bbe4:	4c585858 4c4c5858 00f1f14c 00000000     XXXLXXLLL.......
d008bbf4:	00000000 58584cf1 4c4c584c f1f1f1f1     .....LXXLXLL....
d008bc04:	4c4c4c4c 58584c4c 4c585858 f1f14c4c     LLLLLLXXXXXLLL..
d008bc14:	f1000000 5858584c 4c4c5858 5858584c     ....LXXXXXLLLXXX
d008bc24:	4c4c5858 4c4c4c58 00f1f14c 00000000     XXLLXLLLL.......
d008bc34:	4c4cf100 00f14c58 00000000 00000000     ..LLXL..........
	...
d008bc50:	00f10000 f1000000 5858584c 4c4c5858     ........LXXXXXLL
d008bc60:	5858584c 4c4c5858 4c4c4c58 00f1f14c     LXXXXXLLXLLLL...
d008bc70:	00000000 f1000000 5858584c 000000f1     ........LXXX....
	...
d008bc90:	f1f10000 f1000000 5858584c 4c4c5858     ........LXXXXXLL
d008bca0:	5858584c 4c4c5858 4c4c4c58 00f1f14c     LXXXXXLLXLLLL...
d008bcb0:	00000000 f1000000 5858584c 4c584c4c     ........LXXXLLXL
d008bcc0:	f1f14c4c 4c584c4c 58584c4c 4c585858     LL..LLXLLLXXXXXL
d008bcd0:	f1f14c4c f1000000 5858584c 4c4c5858     LL......LXXXXXLL
d008bce0:	5858584c 4c4c5858 4c4c4c58 00f1f14c     LXXXXXLLXLLLL...
d008bcf0:	00000000 f1000000 5858584c 4c584c4c     ........LXXXLLXL
d008bd00:	f1f14c4c 4c584c4c 58584c4c 4c585858     LL..LLXLLLXXXXXL
d008bd10:	f1f14c4c f1000000 5858584c 4c4c5858     LL......LXXXXXLL
d008bd20:	5858584c 4c4c5858 4c4c4c58 00f1f14c     LXXXXXLLXLLLL...
d008bd30:	00000000 f1000000 5858584c 4c584c4c     ........LXXXLLXL
d008bd40:	f1f14c4c 4c584c4c 584c4c58 58585858     LL..LLXLXLLXXXXX
d008bd50:	4c4c4c58 f100f1f1 584c584c 4c4c5858     XLLL....LXLXXXLL
d008bd60:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008bd70:	00f1f1f1 584cf100 f14c4c58 00000000     ......LXXLL.....
	...
d008bd90:	f14cf100 f100f100 584c584c 4c4c5858     ..L.....LXLXXXLL
d008bda0:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008bdb0:	00f1f1f1 f1000000 4c58584c 000000f1     ........LXXL....
	...
d008bdd0:	f14cf100 f100f100 584c584c 4c4c5858     ..L.....LXLXXXLL
d008bde0:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008bdf0:	00f1f1f1 f1000000 4c58584c 584c4c4c     ........LXXLLLLX
d008be00:	4c4c4c4c 584c4c4c 584c4c58 58585858     LLLLLLLXXLLXXXXX
d008be10:	4c4c4c58 f100f1f1 584c584c 4c4c5858     XLLL....LXLXXXLL
d008be20:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008be30:	00f1f1f1 f1000000 4c58584c 584c4c4c     ........LXXLLLLX
d008be40:	4c4c4c4c 584c4c4c 584c4c58 58585858     LLLLLLLXXLLXXXXX
d008be50:	4c4c4c58 f100f1f1 584c584c 4c4c5858     XLLL....LXLXXXLL
d008be60:	5858584c 584c4c58 4c4c4c58 f14c4c4c     LXXXXLLXXLLLLLL.
d008be70:	00f1f1f1 f1000000 4c58584c 584c4c4c     ........LXXLLLLX
d008be80:	4c4c4c4c 584c4c4c 4c4c4c58 5858584c     LLLLLLLXXLLLLXXX
d008be90:	4c585858 f1f14c4c 4c4c584c 4c4c4c58     XXXLLL..LXLLXLLL
d008bea0:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008beb0:	f14c4c4c 584cf1f1 f14c4c58 00000000     LLL...LXXLL.....
	...
d008bed0:	f14cf100 f1f14c00 4c4c584c 4c4c4c58     ..L..L..LXLLXLLL
d008bee0:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008bef0:	f14c4c4c 4cf1f1f1 4c4c5858 0000f14c     LLL....LXXLLL...
	...
d008bf10:	f14cf100 f1f14c00 4c4c584c 4c4c4c58     ..L..L..LXLLXLLL
d008bf20:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008bf30:	f14c4c4c 4cf1f1f1 4c4c5858 584c4c4c     LLL....LXXLLLLLX
d008bf40:	4c4c4c58 4c4c4c4c 4c4c4c58 5858584c     XLLLLLLLXLLLLXXX
d008bf50:	4c585858 f1f14c4c 4c4c584c 4c4c4c58     XXXLLL..LXLLXLLL
d008bf60:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008bf70:	f14c4c4c 4cf1f1f1 4c4c5858 584c4c4c     LLL....LXXLLLLLX
d008bf80:	4c4c4c58 4c4c4c4c 4c4c4c58 5858584c     XLLLLLLLXLLLLXXX
d008bf90:	4c585858 f1f14c4c 4c4c584c 4c4c4c58     XXXLLL..LXLLXLLL
d008bfa0:	5858584c 4c4c4c58 4c4c4c4c 4c4c4c4c     LXXXXLLLLLLLLLLL
d008bfb0:	f14c4c4c 4cf1f1f1 4c4c5858 584c4c4c     LLL....LXXLLLLLX
d008bfc0:	4c4c4c58 4c4c4c4c 4c4c4c4c 58584c4c     XLLLLLLLLLLLLLXX
d008bfd0:	4c585858 4c4c4c4c 4c4c4c4c 4c4c5858     XXXLLLLLLLLLXXLL
d008bfe0:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008bff0:	4c4c4c4c 584c4c4c f14c4c58 00000000     LLLLLLLXXLL.....
	...
d008c010:	f1584cf1 4c4c4c00 4c4c4c4c 4c4c5858     .LX..LLLLLLLXXLL
d008c020:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008c030:	4c4c4c4c 4c4c4c4c 4c4c4c4c 0000f14c     LLLLLLLLLLLLL...
	...
d008c050:	f1584cf1 4c4c4c00 4c4c4c4c 4c4c5858     .LX..LLLLLLLXXLL
d008c060:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008c070:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c080:	4c4c5858 4c4c4c4c 4c4c4c4c 58584c4c     XXLLLLLLLLLLLLXX
d008c090:	4c585858 4c4c4c4c 4c4c4c4c 4c4c5858     XXXLLLLLLLLLXXLL
d008c0a0:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008c0b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c0c0:	4c4c5858 4c4c4c4c 4c4c4c4c 58584c4c     XXLLLLLLLLLLLLXX
d008c0d0:	4c585858 4c4c4c4c 4c4c4c4c 4c4c5858     XXXLLLLLLLLLXXLL
d008c0e0:	58584c58 584c4c4c 4c4c4c4c 4c4c4c4c     XLXXLLLXLLLLLLLL
d008c0f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c100:	4c4c5858 4c4c4c4c 4c4c4c4c 4c4c4c4c     XXLLLLLLLLLLLLLL
d008c110:	5858584c 4c4c4c58 4c4c4c4c 4c4c584c     LXXXXLLLLLLLLXLL
d008c120:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008c130:	4c4c4c4c 58584c4c f14c584c 00000000     LLLLLLXXLXL.....
	...
d008c150:	4c584cf1 4c4c4cf1 4c4c4c4c 4c4c584c     .LXL.LLLLLLLLXLL
d008c160:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008c170:	4c4c4c4c 4c4c4c4c 4c4c4c4c 0000f14c     LLLLLLLLLLLLL...
	...
d008c190:	4c584cf1 4c4c4cf1 4c4c4c4c 4c4c584c     .LXL.LLLLLLLLXLL
d008c1a0:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008c1b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c1c0:	584c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLXLLLLLLLLLLLL
d008c1d0:	5858584c 4c4c4c58 4c4c4c4c 4c4c584c     LXXXXLLLLLLLLXLL
d008c1e0:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008c1f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c200:	584c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLXLLLLLLLLLLLL
d008c210:	5858584c 4c4c4c58 4c4c4c4c 4c4c584c     LXXXXLLLLLLLLXLL
d008c220:	4c4c5858 58584c4c 4c4c4c4c 4c4c4c4c     XXLLLLXXLLLLLLLL
d008c230:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c240:	584c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLXLLLLLLLLLLLL
d008c250:	584c4c4c 4c4c5858 4c4c4c4c 4c4c4c4c     LLLXXXLLLLLLLLLL
d008c260:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008c270:	4c4c4c4c 58584c4c 4c4c584c 000000f1     LLLLLLXXLXLL....
	...
d008c290:	4c5858f1 4c4c58f1 4c4c4c4c 4c4c4c4c     .XXL.XLLLLLLLLLL
d008c2a0:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008c2b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 0000f14c     LLLLLLLLLLLLL...
	...
d008c2d0:	4c5858f1 4c4c58f1 4c4c4c4c 4c4c4c4c     .XXL.XLLLLLLLLLL
d008c2e0:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008c2f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c300:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c310:	584c4c4c 4c4c5858 4c4c4c4c 4c4c4c4c     LLLXXXLLLLLLLLLL
d008c320:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008c330:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c340:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c350:	584c4c4c 4c4c5858 4c4c4c4c 4c4c4c4c     LLLXXXLLLLLLLLLL
d008c360:	4c4c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLLLLXLLLLLLLLL
d008c370:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c380:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c390:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c3a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c3b0:	4c4c4c4c 5858584c 4c58584c f10000f1     LLLLLXXXLXXL....
d008c3c0:	0000f1f1 00000000 00000000 f1000000     ................
d008c3d0:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008c3e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c3f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f1f14c4c     LLLLLLLLLLLLLL..
d008c400:	0000f1f1 00000000 00000000 f1000000     ................
d008c410:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008c420:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c430:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c440:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c450:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c460:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c470:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c480:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c490:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c4f0:	4c4c4c4c 58584c4c 4c585858 4cf1f14c     LLLLLLXXXXXLL..L
d008c500:	f1f14c4c 00000000 f1f10000 f10000f1     LL..............
d008c510:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008c520:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c530:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4cf14c4c     LLLLLLLLLLLLLL.L
d008c540:	f1f14c4c 00000000 f1f10000 f10000f1     LL..............
d008c550:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008c560:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c570:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c580:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c590:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c5f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c600:	4c4c4c4c 4c4c4c4c 58585858 4c4c4c58     LLLLLLLLXXXXXLLL
d008c610:	4c4c4c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLLLLLLLLLLLLLLL
d008c620:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c630:	4c4c4c4c 4c584c4c 4c585858 4cf1f14c     LLLLLLXLXXXLL..L
d008c640:	4c585858 0000f1f1 4c4cf100 4c0000f1     XXXL......LL...L
d008c650:	4c4c5858 4c4c4c4c 5858584c 4c4c4c58     XXLLLLLLLXXXXLLL
d008c660:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c670:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4cf14c4c     LLLLLLLLLLLLLL.L
d008c680:	4c585858 0000f1f1 4c4cf100 4cf100f1     XXXL......LL...L
d008c690:	4c4c5858 4c4c4c4c 4c4c4c4c 4c4c4c4c     XXLLLLLLLLLLLLLL
d008c6a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6c0:	4c4c4c4c 4c4c4c4c 4c4c584c 5858584c     LLLLLLLLLXLLLXXX
d008c6d0:	4c585858 4c4c4c4c 4c4c4c4c 4c4c4c4c     XXXLLLLLLLLLLLLL
d008c6e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c6f0:	4c4c4c4c 4c4c4c4c 5858584c 4c4c4c58     LLLLLLLLLXXXXLLL
d008c700:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c710:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c720:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c730:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c740:	4c4c4c4c 584c4c4c 58584c4c 4c4c5858     LLLLLLLXLLXXXXLL
d008c750:	4c4c5858 4c4c4c4c 4c4c4c4c 4c4c4c4c     XXLLLLLLLLLLLLLL
d008c760:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c770:	4c4c4c4c 4c584c4c 4c585858 4cf1f14c     LLLLLLXLXXXLL..L
d008c780:	5858584c 00f1f14c 4c4c4cf1 4cf100f1     LXXXL....LLL...L
d008c790:	4c4c4c58 4c4c4c4c 58584c58 4c4c4c4c     XLLLLLLLXLXXLLLL
d008c7a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c7b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4cf14c4c     LLLLLLLLLLLLLL.L
d008c7c0:	5858584c 00f1f14c 4c4c4cf1 4cf100f1     LXXXL....LLL...L
d008c7d0:	4c4c4c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLLLLLLLLLLLLLLL
d008c7e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c7f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c800:	4c4c4c4c 4c4c4c4c 4c4c5858 58585858     LLLLLLLLXXLLXXXX
d008c810:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c820:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c830:	4c4c4c4c 4c4c4c4c 58584c58 4c4c4c4c     LLLLLLLLXLXXLLLL
d008c840:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c850:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c860:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c870:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c880:	4c4c4c4c 4c4c4c4c 584c4c4c 4c585858     LLLLLLLLLLLXXXXL
d008c890:	4c4c584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXLLLLLLLLLLLLLL
d008c8a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c8b0:	4c4c4c4c 4c584c4c 4c4c5858 f1f14c4c     LLLLLLXLXXLLLL..
d008c8c0:	4c584c4c f14c5858 4c4c4cf1 5858f121     LLXLXXL..LLL!.XX
d008c8d0:	4c4c4c4c 584c4c4c 4c58584c 4c4c4c4c     LLLLLLLXLXXLLLLL
d008c8e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c8f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f1f14c4c     LLLLLLLLLLLLLL..
d008c900:	4c584c4c f14c5858 4c4c4cf1 5858f1f1     LLXLXXL..LLL..XX
d008c910:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c920:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c930:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c940:	4c4c4c4c 4c4c4c4c 584c4c58 4c585858     LLLLLLLLXLLXXXXL
d008c950:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c960:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c970:	4c4c4c4c 584c4c4c 4c58584c 4c4c4c4c     LLLLLLLXLXXLLLLL
d008c980:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c990:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 58584c4c     LLLLLLLLLLLLLLXX
d008c9d0:	4c58584c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LXXLLLLLLLLLLLLL
d008c9e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008c9f0:	4c4c4c4c 4c4c4c4c 4c4c4c58 f1f14c4c     LLLLLLLLXLLLLL..
d008ca00:	4c584c4c f14c5858 4c4c4cf1 5858f1f1     LLXLXXL..LLL..XX
d008ca10:	4c4c4c4c 4c4c4c4c 4c58584c 4c4c4c4c     LLLLLLLLLXXLLLLL
d008ca20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca30:	4c4c4c4c 4c4c4c4c 4c4c4c4c f1f14c4c     LLLLLLLLLLLLLL..
d008ca40:	4c584c4c f14c5858 4c4c4cf1 5858f1f1     LLXLXXL..LLL..XX
d008ca50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ca80:	4c4c4c4c 584c4c4c 58584c58 4c4c4c4c     LLLLLLLXXLXXLLLL
d008ca90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008caa0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cab0:	4c4c4c4c 4c4c4c4c 4c58584c 4c4c4c4c     LLLLLLLLLXXLLLLL
d008cac0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cad0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cae0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008caf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 58584c4c     LLLLLLLLLLLLLLXX
d008cb10:	4c584c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLXLLLLLLLLLLLLL
d008cb20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb30:	4c4c4c4c 4c4c4c4c 4c4c4c58 f1f14c4c     LLLLLLLLXLLLLL..
d008cb40:	584c4c4c 4c58584c 4c4c4cf1 584cf14c     LLLXLXXL.LLLL.LX
d008cb50:	4c4c4c4c 4c4c4c4c 4c4c584c 4c4c4c4c     LLLLLLLLLXLLLLLL
d008cb60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cb70:	4c4c4c4c 4c4c4c4c 4c4c4c4c f1f14c4c     LLLLLLLLLLLLLL..
d008cb80:	584c4c4c 4c58584c 4c4c4cf1 584cf14c     LLLXLXXL.LLLL.LX
d008cb90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cba0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbc0:	4c4c4c4c 584c4c4c 5858584c 4c4c4c4c     LLLLLLLXLXXXLLLL
d008cbd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbe0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cbf0:	4c4c4c4c 4c4c4c4c 4c4c584c 4c4c4c4c     LLLLLLLLLXLLLLLL
d008cc00:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 584c4c4c     LLLLLLLLLLLLLLLX
d008cc50:	4c584c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLXLLLLLLLLLLLLL
d008cc60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cc70:	4c4c4c4c 4c4c4c4c 4c4c4c4c f14c4c4c     LLLLLLLLLLLLLLL.
d008cc80:	584c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLXLLXLLLLLLLLL
d008cc90:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cca0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ccb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f14c4c4c     LLLLLLLLLLLLLLL.
d008ccc0:	584c4c4c 4c584c4c 4c4c4c4c 4c4c4c4c     LLLXLLXLLLLLLLLL
d008ccd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cce0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ccf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd00:	4c4c4c4c 584c4c4c 4c58584c 4c4c4c4c     LLLLLLLXLXXLLLLL
d008cd10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd40:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd50:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd60:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd70:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd80:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cd90:	4c4c4c58 4c4c4c4c 4c4c4c4c 4c4c4c4c     XLLLLLLLLLLLLLLL
d008cda0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cdb0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f14c4c4c     LLLLLLLLLLLLLLL.
d008cdc0:	4c4c4c4c 584c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLXLLLLLLLL
d008cdd0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cde0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008cdf0:	4c4c4c4c 4c4c4c4c 4c4c4c4c f14c4c4c     LLLLLLLLLLLLLLL.
d008ce00:	4c4c4c4c 584c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLXLLLLLLLL
d008ce10:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce20:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce30:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008ce40:	4c4c4c4c 4c4c4c4c 4c4c584c 4c4c4c4c     LLLLLLLLLXLLLLLL
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
d008d0c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d0d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d0e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d0f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d100:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d110:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d120:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d130:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d140:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d150:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d160:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d170:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d180:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d190:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d1a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d1b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d1c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d1d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d1e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d1f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d200:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d210:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d220:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d230:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d240:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d250:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d260:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d270:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d280:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d290:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d2a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d2b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d2c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d2d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d2e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d2f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d300:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d310:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d320:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d330:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d340:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d350:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d360:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d370:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d380:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d390:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d3a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d3b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d3c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d3d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d3e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d3f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d400:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d410:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d420:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d430:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d440:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d450:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d460:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d470:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d480:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d490:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d4a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d4b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d4c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d4d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d4e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d4f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d500:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d510:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d520:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d530:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d540:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d550:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d560:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d570:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d580:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d590:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d5a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d5b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d5c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d5d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d5e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d5f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d600:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d610:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d620:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d630:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d640:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d650:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d660:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d670:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d680:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d690:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d6a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d6b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d6c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d6d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d6e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d6f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d700:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d710:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d720:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d730:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d740:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d750:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d760:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d770:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d780:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d790:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d7a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d7b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d7c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d7d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d7e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d7f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d800:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d810:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d820:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d830:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d840:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d850:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d860:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d870:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d880:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d890:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d8a0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d8b0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d008d8c0:	4c4c4c4c 4c4c4c4c                       LLLLLLLL

d008d8c8 <gfx_bub_treehead>:
	...
d008d8d4:	10000000 10101010 00101010 00000000     ................
d008d8e4:	00109010 00101000 10000000 10101010     ................
d008d8f4:	10101010 00000010 00000000 00000000     ................
	...
d008d914:	90101000 dcdcdc9c 1058d4dc 00101010     ..........X.....
d008d924:	10e01000 0010dc10 58101010 dcdcdcdc     ...........X....
d008d934:	00109058 00000000 00000000 00000000     X...............
	...
d008d954:	10000000 d4901010 d4d8d8dc 10581090     ..............X.
d008d964:	e8581010 1090d810 e0d85810 5858d8dc     ..X......X....XX
d008d974:	00001090 10100000 00001010 00000000     ................
	...
d008d994:	90101000 90909058 dcdc5858 dce8dcd8     ....X...XX......
d008d9a4:	e8101090 581058dc 9ce0d4e8 909058d8     .....X.X.....X..
d008d9b4:	10101010 d49c5810 101090e0 00000000     .....X..........
	...
d008d9d4:	e8d89010 dcdcdcdc dcdc5858 9cdcdce8     ........XX......
d008d9e4:	dc90e0dc dcd490dc 90d8e8e0 10909090     ................
d008d9f4:	d4d49058 10909cd4 00001010 00000000     X...............
	...
d008da14:	d8dc1000 d8e8d8d8 e058e0e0 e0dcdcd8     ..........X.....
d008da24:	d8dc9cdc 9ce0dcd8 9090dcd8 58585890     .............XXX
d008da34:	90dce0e0 00101058 00000000 00000000     ....X...........
	...
d008da50:	10100000 90901010 dcdcdcdc d8dcd4d4     ................
d008da60:	9cd8e0dc 9cdce0d4 dce8d8dc 9cdcdc9c     ................
d008da70:	d890dcdc 90909c9c 00101010 00000000     ................
	...
d008da90:	e8905810 90101058 d4dcdc90 dce89ce0     .X..X...........
d008daa0:	e8d4e0dc dcd4dce8 dcd49cd8 e8d4dcdc     ................
d008dab0:	dcdcd4dc dcdc90dc 1090dc9c 00001010     ................
	...
d008dacc:	10000000 9cdcdcd4 dcd8dcdc dcdcdcdc     ................
d008dadc:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcd8dc     ................
d008daec:	dcdcdcd8 9ce0dcd8 dcdcdcdc d8e8dcdc     ................
d008dafc:	101058dc 00000000 00000000 00000000     .X..............
d008db0c:	00000000 e0d45810 d8e0d8dc dcdcdcdc     .....X..........
d008db1c:	dcdcdcdc dcdcdcdc dcdcdcdc dcd8dcdc     ................
d008db2c:	dcdcdcdc dcdc9cdc dcd8dcdc e0d4d4dc     ................
d008db3c:	90e0dcdc 00001010 00000000 00000000     ................
d008db4c:	00000000 9c581010 e89ce0dc dcdcdcdc     ......X.........
d008db5c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008db6c:	dcd8dcdc d8d8dcdc 9090d8e0 58909090     ...............X
d008db7c:	90d49090 00109090 00000000 00000000     ................
d008db8c:	10100000 e0dce0dc d8dc9cdc dcdcdcdc     ................
d008db9c:	dcdcdcdc dcdcdcdc dcdcdcdc d8dcdcd8     ................
d008dbac:	dcdcdcdc 90909090 90909058 90909058     ........X...X...
d008dbbc:	58101010 00109090 00000000 00000000     ...X............
d008dbcc:	d4e01000 d4d4d4d4 d4e0dcdc dcdcdcdc     ................
d008dbdc:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcd8     ................
d008dbec:	dcdcdcdc 5890dcdc 90589090 10585890     .......X..X..XX.
d008dbfc:	00000010 10905810 00000000 00000000     .....X..........
d008dc0c:	1090e810 dcdcdc90 9c9cdcdc dcdcdcdc     ................
d008dc1c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcd8dc     ................
d008dc2c:	dcdcdcdc dcdcd8d8 90905890 10101010     .........X......
d008dc3c:	00101010 10101000 00000000 00000000     ................
d008dc4c:	10101000 d4581000 dcdce0d4 dcdcdcdc     ......X.........
d008dc5c:	dcdcdcdc dcdcdcdc dcdcdcdc dc9c90dc     ................
d008dc6c:	dcdcd8dc dcdcdcdc 9090909c 90905890     .............X..
d008dc7c:	10585890 10000010 00000000 00000000     .XX.............
d008dc8c:	10101000 90909010 dcdc9cdc dcdcdcdc     ................
d008dc9c:	dcdcdcdc dcdcdcdc dcdcdcdc dc9090d8     ................
d008dcac:	dcdcd8dc dcdcd8dc 90d89cdc 90909058     ............X...
d008dcbc:	90585890 00101058 00000000 10000000     .XX.X...........
d008dccc:	dcd89010 d8dcdcdc dcdcd8d8 dcdcdcdc     ................
d008dcdc:	dcdcdcdc dcdcdcdc dcdcdcdc d890dcdc     ................
d008dcec:	dcdcd8dc dcdcdcdc 90dcdcd8 90909090     ................
d008dcfc:	90909090 10585890 00000010 dc100000     .....XX.........
d008dd0c:	e8d8e8dc dcdcdc9c d8dcdcdc dcdcdcdc     ................
d008dd1c:	dcdcdcdc dcdcdcdc dcdcdcdc 9090dcdc     ................
d008dd2c:	d8e0dc9c dcdcdcd8 d8d8dce0 90905890     .............X..
d008dd3c:	90909090 58909090 00001090 d49c1000     .......X........
d008dd4c:	9090d89c d8d89c90 d8dcdcd8 dcdcdcdc     ................
d008dd5c:	dcdcdcdc dcdcdcdc dcdcdcdc 9cd8dc9c     ................
d008dd6c:	dcdc9c90 dc9cdcdc dcdcd890 58909058     ............X..X
d008dd7c:	90909090 90909090 00001058 10101010     ........X.......
d008dd8c:	90101010 dcdcdc9c d8dcdcd8 dcdcdcdc     ................
d008dd9c:	dcdcdcdc dcdcdcdc dcdcdcdc e0dcdcdc     ................
d008ddac:	dcdcdc9c dcdcdcdc 9c9090dc 90909090     ................
d008ddbc:	90905890 90909090 00001058 00000010     .X......X.......
d008ddcc:	d8dc5810 dcdcdcdc dcd8dcdc dcdcdcdc     .X..............
d008dddc:	dcdcdcdc dcdcdcdc dcdcdcdc dcd89cdc     ................
d008ddec:	dcdcdcd8 dcdcdcdc 909090d8 90909090     ................
d008ddfc:	909090d8 90909090 00001090 10000000     ................
d008de0c:	d4dcdc90 dc9c9cdc dcd8dcdc dcdcdcdc     ................
d008de1c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcd8d8     ................
d008de2c:	dcdcdc9c d8d8e0d8 90909090 90905890     .............X..
d008de3c:	909cdc90 90909090 00109090 90100000     ................
d008de4c:	d8d8dce8 dcdcdcdc d8d8dcdc dcdcdcdc     ................
d008de5c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcd8     ................
d008de6c:	d8dcdcdc d8dcdcd8 905890e0 9090e090     ..........X.....
d008de7c:	90e09058 58589090 00109090 d8100000     X.....XX........
d008de8c:	e8d8dcd4 d8dcdcd8 dcdcdcd8 dcdcdcdc     ................
d008de9c:	dcdcdcdc dcdcdcdc dcdcdcdc dcd8dcdc     ................
d008deac:	dcdcd8dc d8dcd8dc 909090dc 90dc9090     ................
d008debc:	d8dc9090 90909090 00105890 d49c1000     .........X......
d008decc:	dcdc9cd4 dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008dedc:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008deec:	dcdcdcdc d8e0dcd8 909090d8 90909090     ................
d008defc:	90909090 58909090 10909090 9ce8dc10     .......X........
d008df0c:	d8dcdc9c dcdcdcd8 dcd8dcdc dcdcdcdc     ................
d008df1c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008df2c:	dcdcdcdc d8dcd8dc 90909cdc 90909090     ................
d008df3c:	90909090 90909090 10909090 dcd4dc10     ................
d008df4c:	9c9cd4dc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008df5c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008df6c:	dcdcdcdc dcdcdcdc 9090d8dc 90909090     ................
d008df7c:	90909090 58909058 10905890 10e8d410     ....X..X.X......
d008df8c:	dcdcdcd8 dcd8d8dc dcdcdcdc dcdcdcdc     ................
d008df9c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008dfac:	dcdcdcdc dcdcdcdc 9090d8d8 90909090     ................
d008dfbc:	90909090 90909090 10905890 10101010     .........X......
d008dfcc:	dc9c9010 dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008dfdc:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008dfec:	dcdcdcdc dcd8dcdc 9090dcdc 90909090     ................
d008dffc:	90909090 58909058 10909090 dc100000     ....X..X........
d008e00c:	d8dce09c dcdcdcd8 dcd8d8dc dcdcdcdc     ................
d008e01c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008e02c:	dcdcdcdc dcdcdcdc 90909cdc 90909090     ................
d008e03c:	90909090 58909058 10909090 d8dc1000     ....X..X........
d008e04c:	e0dc9cdc 9c9cdcdc dcd8dcdc dcdcdcdc     ................
d008e05c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008e06c:	dcdcdcdc dcdcdcd8 909090d8 90905890     .............X..
d008e07c:	90905890 90909090 10589090 10100000     .X........X.....
d008e08c:	5890d810 9090d8dc dcd8dcd8 dcdcdcdc     ...X............
d008e09c:	dcdcdcdc dcdcdcdc dcdcdcdc dcdcdcdc     ................
d008e0ac:	dcdcdcdc dcd8dcdc 909090dc 9c909090     ................
d008e0bc:	dcd89090 10589090 00109090 58100000     ......X........X
d008e0cc:	90109010 905890d8 9090e89c e890d890     ......X.........
d008e0dc:	9cdcdcdc d490dcdc dcdce8d8 dcd8dcdc     ................
d008e0ec:	d8dc90dc d890d8e8 901058d8 90909090     .........X......
d008e0fc:	dc909090 10901058 00001090 10000000     ....X...........
d008e10c:	58109010 901010dc 905890d8 90909010     ...X......X.....
d008e11c:	e09c9090 d890d8dc dcd8dce0 dcd8dcdc     ................
d008e12c:	e0dc9090 9090d458 10105890 90589090     ....X....X....X.
d008e13c:	dc101090 10581090 00001090 00000000     ......X.........
d008e14c:	10901010 100010dc 101090dc 90901010     ................
d008e15c:	909c9090 909090d4 dce0909c 9090dc9c     ................
d008e16c:	909c1090 58109090 10109058 90901010     .......XX.......
d008e17c:	90100010 10109010 00000010 00000000     ................
d008e18c:	10901000 10001058 10101090 90101021     ....X.......!...
d008e19c:	10105890 905890d4 d8dc9090 58585890     .X....X......XXX
d008e1ac:	58581058 10101090 10101010 10901010     X.XX............
d008e1bc:	90100010 00109010 00000000 00000000     ................
d008e1cc:	10100000 00001090 10001010 90102121     ............!!..
d008e1dc:	10901090 10109090 90909090 10101058     ............X...
d008e1ec:	10101010 10102110 10211010 00100010     .....!....!.....
d008e1fc:	10000000 00001010 00000000 00000000     ................
d008e20c:	00100000 00001010 00001000 10212110     .............!!.
d008e21c:	10901010 10109058 90101010 10109090     ....X...........
d008e22c:	10101010 21212110 10102521 00000000     .....!!!!%......
d008e23c:	10000000 00001000 00000000 00000000     ................
d008e24c:	00000000 00001010 00000000 21211010     ..............!!
d008e25c:	21102121 10105810 10102121 10105858     !!.!.X..!!..XX..
d008e26c:	25212110 25252121 10102121 00000000     .!!%!!%%!!......
	...
d008e298:	25211000 21212121 21101021 10212925     ..!%!!!!!..!%)!.
d008e2a8:	21211010 25252121 21292521 00102121     ..!!!!%%!%)!!!..
	...
d008e2d8:	21212110 29252129 25252525 25252525     .!!!)!%)%%%%%%%%
d008e2e8:	25252525 25252125 21212121 10212510     %%%%%!%%!!!!.%!.
	...
d008e318:	21211000 25252125 25252525 25252525     ..!!%!%%%%%%%%%%
d008e328:	25252525 21252125 10212121 10212910     %%%%%!%!!!!..)!.
	...
d008e358:	21251000 25252125 25252525 25252525     ..%!%!%%%%%%%%%%
d008e368:	25252525 21252125 10212121 00102129     %%%%%!%!!!!.)!..
	...
d008e398:	21292110 25252125 25252525 25252525     .!)!%!%%%%%%%%%%
d008e3a8:	25252525 21252125 10212125 00102125     %%%%%!%!%!!.%!..
	...
d008e3d8:	25252110 25252125 25252525 25252525     .!%%%!%%%%%%%%%%
d008e3e8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008e418:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008e428:	25252525 25252125 21212525 00102121     %%%%%!%%%%!!!!..
	...
d008e458:	25211000 29252125 25252525 25252525     ..!%%!%)%%%%%%%%
d008e468:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008e498:	25211000 25252129 25252525 25252525     ..!%)!%%%%%%%%%%
d008e4a8:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008e4d8:	29251000 25292529 25252525 25252525     ..%))%)%%%%%%%%%
d008e4e8:	25252525 25292521 21252521 00102121     %%%%!%)%!%%!!!..
	...
d008e518:	25211000 25252525 25252525 25252525     ..!%%%%%%%%%%%%%
d008e528:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008e558:	25212110 25252129 25252525 25252525     .!!%)!%%%%%%%%%%
d008e568:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008e598:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008e5a8:	25252529 21252521 21212525 00102121     )%%%!%%!%%!!!!..
	...
d008e5d8:	25211000 25292125 25252525 25252525     ..!%%!)%%%%%%%%%
d008e5e8:	25252529 21252521 21212521 10212110     )%%%!%%!!%!!.!!.
	...
d008e618:	21292110 25212125 25252525 25252525     .!)!%!!%%%%%%%%%
d008e628:	25252525 21252121 21212921 10212110     %%%%!!%!!)!!.!!.
	...
d008e658:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008e668:	25252525 21252121 21212521 10212510     %%%%!!%!!%!!.%!.
	...
d008e698:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008e6a8:	25252525 25252121 21212521 10212510     %%%%!!%%!%!!.%!.
	...
d008e6d8:	21212110 29212525 25252525 25252525     .!!!%%!)%%%%%%%%
d008e6e8:	25252525 25252125 21212521 10212510     %%%%%!%%!%!!.%!.
	...
d008e718:	21211000 25212525 25252525 25252525     ..!!%%!%%%%%%%%%
d008e728:	25252525 21252125 10212921 10212510     %%%%%!%!!)!..%!.
	...
d008e758:	21251000 29212125 25252525 25252525     ..%!%!!)%%%%%%%%
d008e768:	25252525 21252525 10212521 00102129     %%%%%%%!!%!.)!..
	...
d008e798:	21252110 25212129 25252525 25252525     .!%!)!!%%%%%%%%%
d008e7a8:	25252525 21252125 10212525 00102125     %%%%%!%!%%!.%!..
	...
d008e7d8:	25252110 29252125 25252525 25252525     .!%%%!%)%%%%%%%%
d008e7e8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008e818:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e828:	29252525 25252525 21212525 00102121     %%%)%%%%%%!!!!..
	...
d008e858:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e868:	25252525 25252525 21292525 00102121     %%%%%%%%%%)!!!..
	...
d008e898:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008e8a8:	25252525 25252525 21212125 00001021     %%%%%%%%%!!!!...
	...
d008e8d8:	21212110 29252129 25252525 25252525     .!!!)!%)%%%%%%%%
d008e8e8:	25252525 25252125 21212121 10212510     %%%%%!%%!!!!.%!.
	...
d008e918:	21211000 25252125 25252525 25252525     ..!!%!%%%%%%%%%%
d008e928:	25252525 21252125 10212121 10212910     %%%%%!%!!!!..)!.
	...
d008e958:	21251000 25252125 25252525 25252525     ..%!%!%%%%%%%%%%
d008e968:	25252525 21252125 10212121 00102129     %%%%%!%!!!!.)!..
	...
d008e998:	21292110 25252125 25252525 25252525     .!)!%!%%%%%%%%%%
d008e9a8:	25252525 21252125 10212125 00102125     %%%%%!%!%!!.%!..
	...
d008e9d8:	25252110 25252125 25252525 25252525     .!%%%!%%%%%%%%%%
d008e9e8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008ea18:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008ea28:	25252525 25252125 21212525 00102121     %%%%%!%%%%!!!!..
	...
d008ea58:	25211000 29252125 25252525 25252525     ..!%%!%)%%%%%%%%
d008ea68:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008ea98:	25211000 25252129 25252525 25252525     ..!%)!%%%%%%%%%%
d008eaa8:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008ead8:	29251000 25292529 25252525 25252525     ..%))%)%%%%%%%%%
d008eae8:	25252525 25292521 21252521 00102121     %%%%!%)%!%%!!!..
	...
d008eb18:	25211000 25252525 25252525 25252525     ..!%%%%%%%%%%%%%
d008eb28:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008eb58:	25212110 25252129 25252525 25252525     .!!%)!%%%%%%%%%%
d008eb68:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008eb98:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008eba8:	25252529 21252521 21212525 00102121     )%%%!%%!%%!!!!..
	...
d008ebd8:	25211000 25292125 25252525 25252525     ..!%%!)%%%%%%%%%
d008ebe8:	25252529 21252521 21212521 10212110     )%%%!%%!!%!!.!!.
	...
d008ec18:	21292110 25212125 25252525 25252525     .!)!%!!%%%%%%%%%
d008ec28:	25252525 21252121 21212921 10212110     %%%%!!%!!)!!.!!.
	...
d008ec58:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008ec68:	25252525 21252121 21212521 10212510     %%%%!!%!!%!!.%!.
	...
d008ec98:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008eca8:	25252525 25252121 21212521 10212510     %%%%!!%%!%!!.%!.
	...
d008ecd8:	21212110 29212525 25252525 25252525     .!!!%%!)%%%%%%%%
d008ece8:	25252525 25252125 21212521 10212510     %%%%%!%%!%!!.%!.
	...
d008ed18:	21211000 25212525 25252525 25252525     ..!!%%!%%%%%%%%%
d008ed28:	25252525 21252125 10212921 10212510     %%%%%!%!!)!..%!.
	...
d008ed58:	21251000 29212125 25252525 25252525     ..%!%!!)%%%%%%%%
d008ed68:	25252525 21252525 10212521 00102129     %%%%%%%!!%!.)!..
	...
d008ed98:	21252110 25212129 25252525 25252525     .!%!)!!%%%%%%%%%
d008eda8:	25252525 21252125 10212525 00102125     %%%%%!%!%%!.%!..
	...
d008edd8:	25252110 29252125 25252525 25252525     .!%%%!%)%%%%%%%%
d008ede8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008ee18:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008ee28:	29252525 25252525 21212525 00102121     %%%)%%%%%%!!!!..
	...
d008ee58:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008ee68:	25252525 25252525 21292525 00102121     %%%%%%%%%%)!!!..
	...
d008ee98:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008eea8:	25252525 25252525 21212125 00001021     %%%%%%%%%!!!!...
	...
d008eed8:	21212110 29252129 25252525 25252525     .!!!)!%)%%%%%%%%
d008eee8:	25252525 25252125 21212121 10212510     %%%%%!%%!!!!.%!.
	...
d008ef18:	21211000 25252125 25252525 25252525     ..!!%!%%%%%%%%%%
d008ef28:	25252525 21252125 10212121 10212910     %%%%%!%!!!!..)!.
	...
d008ef58:	21251000 25252125 25252525 25252525     ..%!%!%%%%%%%%%%
d008ef68:	25252525 21252125 10212121 00102129     %%%%%!%!!!!.)!..
	...
d008ef98:	21292110 25252125 25252525 25252525     .!)!%!%%%%%%%%%%
d008efa8:	25252525 21252125 10212125 00102125     %%%%%!%!%!!.%!..
	...
d008efd8:	25252110 25252125 25252525 25252525     .!%%%!%%%%%%%%%%
d008efe8:	25252525 21252125 21212529 00102121     %%%%%!%!)%!!!!..
	...
d008f018:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008f028:	25252525 25252125 21212525 00102121     %%%%%!%%%%!!!!..
	...
d008f058:	25211000 29252125 25252525 25252525     ..!%%!%)%%%%%%%%
d008f068:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008f098:	25211000 25252129 25252525 25252525     ..!%)!%%%%%%%%%%
d008f0a8:	25252525 25252521 21252521 00001021     %%%%!%%%!%%!!...
	...
d008f0d8:	29251000 25292529 25252525 25252525     ..%))%)%%%%%%%%%
d008f0e8:	25252525 25292521 21292521 00102121     %%%%!%)%!%)!!!..
	...
d008f118:	25211000 25252525 25252525 25252525     ..!%%%%%%%%%%%%%
d008f128:	25252525 21252521 21212525 00102121     %%%%!%%!%%!!!!..
	...
d008f158:	25212110 25252129 25252525 25252525     .!!%)!%%%%%%%%%%
d008f168:	25252525 21252521 21212925 00102121     %%%%!%%!%)!!!!..
	...
d008f198:	25211000 25252125 25252525 25252525     ..!%%!%%%%%%%%%%
d008f1a8:	25252529 21252521 21212525 00102121     )%%%!%%!%%!!!!..
	...
d008f1d8:	25211000 25292125 25252525 25252525     ..!%%!)%%%%%%%%%
d008f1e8:	25252529 21252521 21212521 10212110     )%%%!%%!!%!!.!!.
	...
d008f218:	21292110 25212125 25252525 25252525     .!)!%!!%%%%%%%%%
d008f228:	25252525 21252121 25252125 10212110     %%%%!!%!%!%%.!!.
	...
d008f258:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008f268:	25252525 21252121 10252521 10212125     %%%%!!%!!%%.%!!.
	...
d008f298:	21252110 25212125 25252525 25252525     .!%!%!!%%%%%%%%%
d008f2a8:	25252525 25252121 10102521 10212510     %%%%!!%%!%...%!.
	...
d008f2d8:	21212110 29212525 25252525 25252525     .!!!%%!)%%%%%%%%
d008f2e8:	25252525 25252125 10102510 10212510     %%%%%!%%.%...%!.
	...
d008f318:	21211000 25212525 25252525 25252525     ..!!%%!%%%%%%%%%
d008f328:	25252525 21252125 10292510 10252510     %%%%%!%!.%)..%%.
	...
d008f358:	21251000 29212125 25252525 25252525     ..%!%!!)%%%%%%%%
d008f368:	25252525 21252525 25251021 00102110     %%%%%%%!!.%%.!..
	...
d008f398:	21252110 25212129 25252525 25252525     .!%!)!!%%%%%%%%%
d008f3a8:	25252525 21252125 10102125 00102121     %%%%%!%!%!..!!..
	...
d008f3d8:	25252110 29252125 25252525 25252525     .!%%%!%)%%%%%%%%
d008f3e8:	25252525 21252125 10212125 00102121     %%%%%!%!%!!.!!..
	...
d008f418:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008f428:	29252525 25252525 21212529 00102121     %%%)%%%%)%!!!!..
	...
d008f458:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008f468:	25252525 25252525 21212525 00102121     %%%%%%%%%%!!!!..
	...
d008f498:	25211000 25292521 25252525 25252525     ..!%!%)%%%%%%%%%
d008f4a8:	25252525 25252525 21212125 00001021     %%%%%%%%%!!!!...
	...

d008f4c8 <gfx_bubgutwut>:
	...
d008f548:	11000000 00000011 00000000 00000000     ................
	...
d008f560:	34110000 10111030 00000000 00000000     ...40...........
d008f570:	2d700000 0070f4f4 34100000 34343030     ..p-..p....40044
d008f580:	00001110 00000000 f42d7000 2df42d1d     .........p-..-.-
d008f590:	3034102d 30303030 00113434 00000000     -.40000044......
d008f5a0:	702d2d00 1d2df470 34110af4 34303030     .--pp.-....40004
d008f5b0:	10343430 00000000 0070f400 70107074     044.......p.tp.p
d008f5c0:	11707070 34303030 11343434 00000000     ppp.0004444.....
d008f5d0:	00002d00 11000070 10107011 30343030     .-..p....p..0040
d008f5e0:	00111034 00000000 00000000 00000000     4...............
d008f5f0:	11118110 34303411 00103434 00000000     .....40444......
d008f600:	00000000 10000000 baf71171 10101110     ........q.......
d008f610:	00113430 00000000 00000000 07bebf11     04..............
d008f620:	be1a1011 70f42d10 10301010 00000000     .....-.p..0.....
d008f630:	00000000 7d7dba10 111a1a7d 5c5874f4     ......}}}....tX\
d008f640:	30107070 00000010 00000000 ba100000     pp.0............
d008f650:	10bebaba 7ef77070 1011702d 00001030     ....pp.~-p..0...
d008f660:	00000000 7d070711 797dba07 816d8110     .......}..}y..m.
d008f670:	34111d70 00103010 10000000 7d817d6d     p..4.0......m}.}
d008f680:	7d817d7d 5c757d81 11341058 11303434     }}.}.}u\X.4.440.
d008f690:	00000000 34341011 817d6d71 5c107179     ......44qm}.yq.\
d008f6a0:	3411105c 30343434 00000000 10100000     \..44440........
d008f6b0:	797d7979 1111106d 10000010 11101011     yy}ym...........
	...
d008f6c8:	75797910 00111058 00000000 00000000     .yyuX...........
	...
d008f6e0:	75791000 00000010 00000000 00000000     ..yu............
	...
d008f6f8:	797d1100 00000010 00000000 00000000     ..}y............
	...
d008f710:	797d7d12 00000011 00000000 00000000     .}}y............
	...
d008f728:	757d0710 00000010 00000000 00000000     ..}u............
	...
d008f740:	75857512 00000010 00000000 00000000     .u.u............
	...
d008f758:	757d1000 00000011 00000000 00000000     ..}u............
	...
d008f770:	75811000 00000010 00000000 00000000     ...u............
	...
d008f788:	79817910 00000010 00000000 00000000     .y.y............
	...
d008f7a0:	71810710 00000010 00000000 00000000     ...q............
	...
d008f7b8:	797d8111 00000011 00000000 00000000     ..}y............
d008f7c8:	00000000 10000000 717d817e 00000010     ........~.}q....
	...
d008f7e4:	ba110000 a6117d7d 00000010 00000000     ....}}..........
	...
d008f7fc:	7d111100 a6a61081 000010a6 00000000     ...}............
	...
d008f814:	04711111 1022107d 0010a610 00000000     ..q.}.".........
	...
d008f82c:	716d1011 82111810 0010101a 00000000     ..mq............
d008f83c:	00000000 10000000 11101818 7d6d10ac     ..............m}
d008f84c:	10176dbf 00000000 00000000 10000000     .m..............
d008f85c:	18171818 7d711118 11188107 00000000     ......q}........
d008f86c:	00000000 11000000 181718a6 817d5c11     .............\}.
d008f87c:	10717d1a 00000000 00000000 18100000     .}q.............
d008f88c:	1818a6ac 7d7d5811 116d71ba 00000000     .....X}}.qm.....
d008f89c:	00000000 ac100000 18181818 79711018     ..............qy
d008f8ac:	10715c1a 00000000 00000000 18100000     .\q.............
d008f8bc:	18a61718 815c1018 115c58ba 00000000     ......\..X\.....
d008f8cc:	00000000 18100000 17a61818 7d111718     ...............}
d008f8dc:	105810ba 00000011 00000000 ac100000     ..X.............
d008f8ec:	18a61817 81171818 1810107d 00000010     ........}.......
d008f8fc:	00000000 10100000 18ac1818 7d181817     ...............}
d008f90c:	1818117d 00000010 00000000 10110000     }...............
d008f91c:	18181710 7d111818 1818107d 00000011     .......}}.......
d008f92c:	00000000 ac100000 18181818 81111718     ................
d008f93c:	1810117d 00000010 00000000 ac110000     }...............
d008f94c:	17181817 81101717 1071ba81 00000010     ..........q.....
d008f95c:	00000000 18110000 18171817 7ebf1018     ...............~
d008f96c:	bfba8107 00000011 00000000 ac100000     ................
d008f97c:	18171818 babf1018 81078207 00000010     ................
d008f98c:	00000000 18100000 17171822 79751117     ........".....uy
d008f99c:	717d81ba 00000010 00000000 ac100000     ..}q............
d008f9ac:	1822ac11 71101718 58757181 00000010     .."....q.quX....
d008f9bc:	00000000 ac110000 ac221018 10181718     ..........".....
d008f9cc:	10115c5c 00000010 00000000 a6100000     \\..............
d008f9dc:	17a61118 17181818 11101010 00000025     ............%...
d008f9ec:	00000000 a6100000 18a61018 18181818     ................
d008f9fc:	10181717 00000000 00000000 18100000     ................
d008fa0c:	18ac1018 18181818 11171818 00000000     ................
d008fa1c:	00000000 18110000 17ac1118 17171818     ................
d008fa2c:	11171817 00000000 00000000 ac100000     ................
d008fa3c:	ac101718 17181818 11181718 00000000     ................
d008fa4c:	00000000 11000000 ac111818 18171818     ................
d008fa5c:	10181818 00000000 00000000 10000000     ................
d008fa6c:	ac101817 17181818 10171818 00000000     ................
d008fa7c:	00000000 11110000 ac1017ac 18181818     ................
d008fa8c:	10181817 00000000 00000000 10101000     ................
d008fa9c:	ac181011 17181717 18181818 00000010     ................
d008faac:	00000000 1086bf11 22111010 18171818     ..........."....
d008fabc:	18171718 00000010 00000000 bf117d10     .............}..
d008facc:	111011ba 10101110 10101111 00000011     ................
d008fadc:	00000000 79116d10 82827d7d 7d82ba7d     .....m.y}}..}..}
d008faec:	7182077d 00002510 00000000 6d105811     }..q.%.......X.m
d008fafc:	07817d6d ba0782be 817e7d81 00001379     m}.......}~.y...
d008fb0c:	00000000 5c101000 6dbe71be 79797911     .......\.q.m.yyy
d008fb1c:	75797975 00001158 00000000 11000000     uyyuX...........
d008fb2c:	11111010 10111000 11101010 00001010     ................
d008fb3c:	00000000                                ....

d008fb40 <gfx_bubguy1>:
	...
d008fc18:	10100000 00000000 00000000 00000000     ................
	...
d008fc34:	30101010 00001034 00000000 00000000     ...04...........
	...
d008fc4c:	10000000 30343411 00103430 2d700000     .....44004....p-
d008fc5c:	006cf4f4 00000000 00000000 10000000     ..l.............
d008fc6c:	30303434 34303030 1d2df411 2d1d2d2d     44000004..-.--.-
d008fc7c:	00000070 00000000 12000000 34303434     p...........4404
d008fc8c:	34303030 f42d7011 6c70f42d 00001d2d     0004.p-.-.pl-...
	...
d008fca4:	34343410 30303034 706c7010 7070106c     .4444000.plpl.pp
d008fcb4:	00f47000 00000000 00000000 10100000     .p..............
d008fcc4:	30343034 6c111030 00001110 f4000070     40400..l....p...
	...
d008fcdc:	10000000 30343434 10101034 0000117d     ....44404...}...
	...
d008fcfc:	11303410 ba101010 1071101a 00000000     .40.......q.....
	...
d008fd18:	10103010 102d1d70 1010bf1a 101aba07     .0..p.-.........
	...
d008fd34:	6c103011 70585870 1a1a102d 7e7d7d81     .0.lpXXp-....}}~
d008fd44:	00000011 00000000 00000000 10103010     .............0..
d008fd54:	ba82f470 07116c70 107ebaba 00000000     p...pl....~.....
	...
d008fd6c:	34103010 81701d11 7d108175 817e7e81     .0.4..p.u..}.~~.
d008fd7c:	00100707 00000000 00000000 34343010     .............044
d008fd8c:	5c103411 7d816d58 81817d81 6d81817d     .4.\Xm.}.}..}..m
d008fd9c:	00000010 00000000 34343000 10103434     .........04444..
d008fdac:	7110585c 71817d79 1034346d 00000011     \X.qy}.qm44.....
d008fdbc:	00000000 11100000 00111011 11101100     ................
d008fdcc:	81757110 11117575 00000000 00000000     .qu.uu..........
	...
d008fde8:	75341010 00107975 00000000 00000000     ..4uuy..........
	...
d008fe04:	10000000 00107575 00000000 00000000     ....uu..........
	...
d008fe24:	10817510 00000000 00000000 00000000     .u..............
	...
d008fe40:	7d791000 00001081 00000000 00000000     ..y}............
	...
d008fe5c:	75110000 00100781 00000000 00000000     ...u............
	...
d008fe78:	10000000 11758175 00000000 00000000     ....u.u.........
	...
d008fe98:	10817511 00000000 00000000 00000000     .u..............
	...
d008feb4:	7d791000 00000010 00000000 00000000     ..y}............
	...
d008fed0:	75100000 0010757d 00000000 00000000     ...u}u..........
	...
d008feec:	10000000 10ba8179 00000000 00000000     ....y...........
	...
d008ff0c:	7d7d7910 00000010 00000000 00000000     .y}}............
	...
d008ff28:	7d711000 00127e7d 00000000 00000000     ..q}}~..........
	...
d008ff44:	11100000 107d8110 00000000 00000000     ......}.........
	...
d008ff60:	a6100000 ba10ac22 00001171 00000000     ...."...q.......
	...
d008ff7c:	a6100000 22717158 105c7158 00000000     ....Xqq"Xq\.....
	...
d008ff98:	11000000 7e817122 71711107 00000010     ...."q.~..qq....
	...
d008ffb4:	10000000 826dac17 10111a7d 0010a66d     ......m.}...m...
	...
d008ffd4:	815c2210 077d817d 1018ac10 00000000     ."\.}.}.........
	...
d008fff0:	71221000 7d7d717d 18181007 00000011     .."q}q}}........
	...
d009000c:	ac110000 5c58816d 107e077d 00101718     ....m.X\}.~.....
	...
d0090028:	10000000 717d7118 077d7110 10101710     .....q}q.q}.....
	...
d0090048:	75751711 81581079 18100781 00001010     ..uuy.X.........
	...
d0090064:	6d171000 105c7575 10077d71 00101810     ...muu\.q}......
	...
d0090080:	18100000 5c716d58 7d751117 10101182     ....Xmq\..u}....
d0090090:	00001010 00000000 00000000 10000000     ................
d00900a0:	5c5c1018 58181811 817d7d81 12717d07     ..\\...X.}}..}q.
	...
d00900bc:	18181810 18181717 81817510 7d078107     .........u.....}
d00900cc:	00000010 00000000 00000000 18181000     ................
d00900dc:	17171817 7d5c1818 1a077d81 00001010     ......\}.}......
	...
d00900f4:	18100000 18171817 10171718 bf7d8175     ............u.}.
d0090104:	00107d7e 00000000 00000000 11000000     ~}..............
d0090114:	18181717 18181818 827d7110 12716d1a     .........q}..mq.
	...
d0090130:	17181100 17171818 81111817 106d6dba     .............mm.
	...
d009014c:	18100000 18181717 10181717 106d716d     ............mqm.
d009015c:	00000010 00000000 00000000 00000000     ................
d009016c:	18181010 17181818 10101018 00001018     ................
	...
d0090188:	10101100 17181710 18181818 0010a618     ................
	...
d00901a4:	10100000 18101011 18171817 10a622ac     ............."..
	...
d00901c4:	18181810 18171818 22221817 00000010     ..........""....
	...
d00901dc:	10000000 17171710 18171718 ac181717     ................
d00901ec:	00000010 00000000 00000000 10000000     ................
d00901fc:	18106d58 18181817 18181817 00001018     Xm..............
	...
d0090218:	7d816d10 18181810 17181817 00001217     .m.}............
	...
d0090234:	7d6d1000 18117d81 18181718 00001010     ..m}.}..........
	...
d0090250:	10000000 1a7d8181 18181810 00001011     ......}.........
	...
d0090270:	7d816d10 18107e1a 00101711 00000000     .m.}.~..........
	...
d009028c:	7d111000 7df77d81 10101111 00101100     ...}.}.}........
	...
d00902a8:	10100000 7d818171 6d5c107d 827d1110     ....q..}}.\m..}.
d00902b8:	00000010 00000000 00000000 00000000     ................
d00902c8:	7d7d1010 107d8181 7d7d6d71 00107d81     ..}}..}.qm}}.}..
	...
d00902e4:	115c1000 7d7d7d71 715c5c10 11757971     ..\.q}}}.\\qqyu.
	...
d0090300:	10100000 10111058 10101110 11101010     ....X...........
d0090310:	00000000                                ....

d0090314 <gfx_bubguy2>:
	...
d00903d4:	11000000 00000010 00000000 00000000     ................
	...
d00903f8:	30101010 00001034 00000000 00000000     ...04...........
	...
d0090418:	10100000 30303434 00001034 00000000     ....44004.......
	...
d009043c:	34341100 30303030 f4103430 f42d702d     ..44000004..-p-.
d009044c:	0000702d 00000000 00000000 00000000     -p..............
d009045c:	00000000 30343410 30303034 f4701134     .....44040004.p.
d009046c:	2d2df4f4 00702df4 00000000 00000000     ..--.-p.........
	...
d0090484:	34343410 30303034 6c746c10 6c2df46c     .4444000.ltll.-l
d0090494:	00f4f474 00000000 00000000 00000000     t...............
d00904a4:	00000000 34101000 30303430 106c1110     .......40400..l.
d00904b4:	6c741010 002d7000 00000000 00000000     ..tl.p-.........
	...
d00904cc:	34341000 10343034 10811110 70000000     ..44404........p
d00904dc:	00f40000 00000000 00000000 00000000     ................
d00904ec:	00000000 30341000 10101010 6d101abe     ......40.......m
d00904fc:	00000010 00000000 00000000 00000000     ................
	...
d0090514:	10103010 102df470 10101abe 101abeba     .0..p.-.........
	...
d0090534:	10000000 6c701130 f46c5c58 7d1a1a10     ....0.plX\l....}
d0090544:	10077d7d 00000000 00000000 00000000     }}..............
d0090554:	00000000 30110000 2d6c1010 746c1a82     .......0..l-..lt
d0090564:	bebe0710 000010ba 00000000 00000000     ................
	...
d009057c:	10301000 702d1134 117d757d baba817d     ..0.4.-p}u}.}...
d009058c:	1082077d 00000000 00000000 00000000     }...............
d009059c:	00000000 34343011 5c103410 7d816d5c     .....044.4.\\m.}
d00905ac:	7d7d7d81 717d7d81 00000010 00000000     .}}}.}}q........
	...
d00905c4:	34343430 58101034 796d1058 756d7d7d     04444..XX.my}}mu
d00905d4:	10113434 00000000 00000000 00000000     44..............
d00905e4:	00000000 10101010 10000010 71101010     ...............q
d00905f4:	75757d79 00001010 00000000 00000000     y}uu............
	...
d0090614:	34101100 10757575 00000000 00000000     ...4uuu.........
	...
d0090638:	11000000 00107979 00000000 00000000     ....yy..........
	...
d009065c:	10000000 00108175 00000000 00000000     ....u...........
	...
d0090680:	10000000 10817d79 00000000 00000000     ....y}..........
	...
d00906a4:	10000000 107e8175 00000000 00000000     ....u.~.........
	...
d00906c8:	11000000 10797975 00000000 00000000     ....uyy.........
	...
d00906ec:	10000000 00108179 00000000 00000000     ....y...........
	...
d0090710:	11000000 00107d75 00000000 00000000     ....u}..........
	...
d0090734:	10000000 11757d75 00000000 00000000     ....u}u.........
	...
d0090758:	10000000 10077d75 00000000 00000000     ....u}..........
	...
d009077c:	10000000 10817d75 00000000 00000000     ....u}..........
	...
d00907a0:	10000000 ba7d8171 00000011 00000000     ....q.}.........
	...
d00907c4:	11000000 077d1111 00000010 00000000     ......}.........
	...
d00907e8:	10100000 8110a6a6 0000117d 00000000     ........}.......
	...
d009080c:	a6100000 10a6ac10 0000116d 00000000     ........m.......
	...
d0090830:	7da61000 10a61082 00001071 00000000     ...}....q.......
	...
d0090854:	82811000 a6100707 00107110 00000000     .........q......
	...
d0090878:	1a7d1000 108107ba 00106da6 00000000     ..}......m......
	...
d009089c:	1a811810 75816dba 10acac10 00000000     .....m.u........
	...
d00908c0:	817d1710 6d796d7e 10181710 00000000     ..}.~mym........
	...
d00908e4:	7d751810 6d756dba 10171811 00000000     ..u}.mum........
	...
d0090908:	7d756d10 71586dba ac181810 00000011     .mu}.mXq........
	...
d009092c:	815c6d10 6d5c7582 1718ac10 00000010     .m\..u\m........
	...
d0090950:	6d5c6d10 71587d07 18181710 00001010     .m\m.}Xq........
	...
d0090974:	5c6d7110 71587d07 17181711 00001010     .qm\.}Xq........
	...
d0090998:	10755811 1010ba7e 17181718 00117111     .Xu.~........q..
	...
d00909bc:	10101110 101107ba 18182218 00101018     ........."......
	...
d00909dc:	13000000 10181717 1810ba7e 18171817     ........~.......
d00909ec:	001010ac 00000000 00000000 00000000     ................
d00909fc:	00000000 10000000 10171718 18100781     ................
d0090a0c:	18171718 101818ac 00000010 00000000     ................
	...
d0090a24:	10000000 07111817 117d7d7d 17171817     ........}}}.....
d0090a34:	a6aca622 000010a6 00000000 00000000     "...............
d0090a44:	00000000 10000000 ba7d1018 10ba7d7d     ..........}.}}..
d0090a54:	18181817 22a61817 0010a6a6 00000000     ......."........
	...
d0090a6c:	10000000 07ba1018 077d8107 17181810     ..........}.....
d0090a7c:	a6ac1818 0010a618 00000000 00000000     ................
d0090a8c:	00000000 10000000 7e1a1017 7d7d7d7e     ...........~~}}}
d0090a9c:	17171810 17181817 10a6aca6 00111000     ................
	...
d0090ab4:	11000000 1a811018 816d811a 18181710     ..........m.....
d0090ac4:	18181718 11aca618 10811a10 00000000     ................
d0090ad4:	00000000 10000000 7d6d1017 11586dba     ..........m}.mX.
d0090ae4:	18181810 17181817 17ac1817 11586d81     .............mX.
	...
d0090afc:	10000000 11101818 10106d7d 18171010     ........}m......
d0090b0c:	17181717 10181818 107dba7d 00000000     ........}.}.....
d0090b1c:	00000000 17100000 17171718 17101010     ................
d0090b2c:	10101111 17181810 10181717 10716d07     .............mq.
	...
d0090b44:	18100000 18181818 18181818 00000010     ................
d0090b54:	18181010 7e171818 107907ba 00000000     .......~..y.....
d0090b64:	00000000 18100000 18171818 10171718     ................
d0090b74:	00000000 18171000 7d101718 10718182     ...........}..q.
	...
d0090b8c:	18171000 17181817 10181818 00000000     ................
d0090b9c:	17181000 7d7d1018 10586d7d 00000000     ......}}}mX.....
d0090bac:	00000000 18181000 17181718 00101718     ................
d0090bbc:	00000000 10181100 7d818110 00106d7d     ...........}}m..
	...
d0090bd4:	17171100 18181718 00101817 00000000     ................
d0090be4:	10100000 7d7d7d7d 0000106d 00000000     ....}}}}m.......
d0090bf4:	10000000 11101011 17181710 00001018     ................
d0090c04:	00000000 81100000 717d7d81 00000010     .........}}q....
d0090c14:	00000000 10000000 5c817d81 1011105c     .........}.\\...
d0090c24:	00001011 00000000 6d100000 106d6d81     ...........m.mm.
	...
d0090c3c:	7d100000 6d81817d 7d7d7d81 00110781     ...}}..m.}}}....
d0090c4c:	00000000 58100000 105c7171 00000000     .......Xqq\.....
d0090c5c:	00000000 817d1000 817d7d7d 7d7d7d7d     ......}.}}}.}}}}
d0090c6c:	107d7d81 00000000 10000000 00115c5c     .}}.........\\..
	...
d0090c84:	7d791000 5c716d71 6d6d5c5c 107d7d75     ..y}qmq\\\mmu}}.
	...
d0090c9c:	00001010 00000000 00000000 10101000     ................
d0090cac:	10111010 10111010 00101010 00000000     ................
	...

d0090cc8 <gfx_bubguy3>:
	...
d0090dd0:	10000000 00000010 00000000 00000000     ................
	...
d0090df4:	30101010 00001034 00000000 00000000     ...04...........
	...
d0090e14:	11110000 30303434 00001034 f42d7000     ....44004....p-.
d0090e24:	000070f4 00000000 00000000 00000000     .p..............
d0090e34:	00000000 34341000 30303030 f4113430     ......44000004..
d0090e44:	2d2d1d2d 00702d1d 00000000 00000000     -.--.-p.........
	...
d0090e5c:	30343411 30303034 2d701134 70f42df4     .44040004.p-.-.p
d0090e6c:	001d2d70 00000000 00000000 00000000     p-..............
d0090e7c:	00000000 34343410 30303034 70707010     .....4444000.ppp
d0090e8c:	70701070 00f47000 00000000 00000000     p.pp.p..........
	...
d0090ea4:	34101000 30303430 10701110 70000011     ...40400..p....p
d0090eb4:	00f40000 00000000 00000000 00000000     ................
d0090ec4:	00000000 34341000 10343034 117d1010     ......44404...}.
	...
d0090eec:	30341000 10101011 75101aba 00000010     ..40.......u....
	...
d0090f10:	10103010 102d1d70 1010bf1a 11bf1a07     .0..p.-.........
	...
d0090f30:	11000000 70701030 2d705858 811a1a10     ....0.ppXXp-....
d0090f40:	117e817d 00000000 00000000 00000000     }.~.............
d0090f50:	00000000 30100000 f4701010 7070babe     .......0..p...pp
d0090f60:	ba1a0711 0000107e 00000000 00000000     ....~...........
	...
d0090f78:	10301000 701d1134 107d7181 7e7e817d     ..0.4..p.q}.}.~~
d0090f88:	10070781 00000000 00000000 00000000     ................
d0090f98:	00000000 34343010 5c103411 7d7d6d58     .....044.4.\Xm}}
d0090fa8:	7d817d81 6d817d7d 00000010 00000000     .}.}}}.m........
	...
d0090fc0:	34343430 5c101034 79711058 6d71817d     04444..\X.qy}.qm
d0090fd0:	11103434 00000000 00000000 00000000     44..............
d0090fe0:	00000000 11111110 11000011 6d101110     ...............m
d0090ff0:	79798179 00001111 00000000 00000000     y.yy............
	...
d0091010:	34101000 10797579 00000000 00000000     ...4yuy.........
	...
d0091034:	10000000 00107579 00000000 00000000     ....yu..........
	...
d0091058:	10000000 00107d79 00000000 00000000     ....y}..........
	...
d009107c:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d00910a0:	11000000 10078179 00000000 00000000     ....y...........
	...
d00910c4:	10000000 11798179 00000000 00000000     ....y.y.........
	...
d00910e8:	10000000 00108179 00000000 00000000     ....y...........
	...
d009110c:	11000000 00107d79 00000000 00000000     ....y}..........
	...
d0091130:	10000000 10797d79 00000000 00000000     ....y}y.........
	...
d0091154:	10000000 10077d79 00000000 00000000     ....y}..........
	...
d0091178:	10000000 107d8171 00000000 00000000     ....q.}.........
	...
d009119c:	11000000 077d7d71 00000013 00000000     ....q}}.........
	...
d00911c0:	11000000 82817d71 00000010 00000000     ....q}..........
	...
d00911e4:	11100000 7d7d8110 00000010 00000000     ......}}........
	...
d0091208:	a6100000 7d7d10a6 000010ba 00000000     ......}}........
	...
d009122c:	115e1000 8110a610 00101081 00000000     ..^.............
	...
d0091250:	077e1000 7d1011ba 11117181 00000000     ..~....}.q......
	...
d0091274:	fb7e1000 11ac077d 10106d71 00000000     ..~.}...qm......
	...
d0091298:	81f71011 ac11717d 18181010 00000011     ....}q..........
	...
d00912bc:	7d7e8110 1710717d 18181818 00000010     ..~}}q..........
	...
d00912e0:	7d070710 115c6d5c 17181718 00000010     ...}\m\.........
	...
d0091300:	13000000 797d7e7d 10587d5c 22181818     ....}~}y\}X...."
d0091310:	00001118 00000000 00000000 00000000     ................
d0091320:	00000000 10000000 1079ba7e 17107d7d     ........~.y.}}..
d0091330:	18acac18 10111018 0000587d 00000000     ........}X......
	...
d0091348:	7d100000 58107dbe 18105c71 17181817     ...}.}.Xq\......
d0091358:	7d6d1018 101a077e 00000000 00000000     ..m}~...........
d0091368:	00000000 82110000 7910797e 17181079     ........~y.yy...
d0091378:	17181818 10581018 117e1010 00000000     ......X...~.....
d0091388:	00000000 10000000 7dba1010 715c1079     ...........}y.\q
d0091398:	18171158 18172218 715c1018 10be7d11     X...."....\q.}..
d00913a8:	00000010 00000000 7d100000 797d7d81     ...........}.}}y
d00913b8:	10101010 18171810 18181818 58101118     ...............X
d00913c8:	7e101010 00000010 00000000 7e811000     ...~...........~
d00913d8:	107d7e7e 17111811 18171818 10171717     ~~}.............
d00913e8:	5c101010 10711010 00000000 00000000     ...\..q.........
d00913f8:	1a811000 81827e07 17181010 17181818     .....~..........
d0091408:	18181818 10111017 00106d5c 00000000     ........\m......
d0091418:	00000000 816d1100 7510071a 17171158     ......m....uX...
d0091428:	17181717 18181817 00001018 00001110     ................
	...
d0091440:	71100000 5810817d 18181010 17181718     ...q}..X........
d0091450:	17171817 00101818 00000000 00000000     ................
d0091460:	00000000 10000000 10587175 18181711     ........uqX.....
d0091470:	18181717 17181818 00101718 00000000     ................
	...
d009148c:	105c5811 17181818 17171717 18181718     .X\.............
d009149c:	11a6ac18 00000000 00000000 00000000     ................
d00914ac:	00000000 18110000 18171718 17171818     ................
d00914bc:	17171718 17221817 00000010 00001110     ......".........
	...
d00914d4:	18ac1000 18171718 18181018 18171817     ................
d00914e4:	a65e1818 10000011 00107dfb 00000000     ..^......}......
d00914f4:	00000000 1718ac10 17171718 17101018     ................
d0091504:	17171718 a6221718 110010a6 00116d7d     ......".....}m..
d0091514:	00000000 10110000 1817ac22 18181817     ........".......
d0091524:	10101017 18181810 ac181718 071022a6     ............."..
d0091534:	1181077d 00000000 71811000 1718ac11     }..........q....
d0091544:	18171718 00001110 17181010 18181718     ................
d0091554:	7e111817 106d7107 00000000 7d7d1100     ...~.qm.......}}
d0091564:	18171058 17181717 00000010 17101000     X...............
d0091574:	18171817 82101817 107d07be 00000000     ..........}.....
d0091584:	817d1100 18105871 10181818 00000000     ..}.qX..........
d0091594:	18110000 18181717 be071118 10717d7e     ............~}q.
d00915a4:	00000000 7d7d1000 17105c81 00101817     ......}}.\......
d00915b4:	00000000 10000000 17181818 7ebe1010     ...............~
d00915c4:	1158757d 00000000 7d711000 105c6d7d     }uX.......q}}m\.
d00915d4:	00001011 00000000 00000000 10171710     ................
d00915e4:	7d7e7511 00115871 00000000 7d6d1000     .u~}qX........m}
d00915f4:	ba818181 00117d07 00000000 00000000     .....}..........
d0091604:	18111711 58718110 0000105c 00000000     ......qX\.......
d0091614:	6d581100 7d7d7d6d 116d817d 00000000     ..Xmm}}}}.m.....
d0091624:	00000000 81101000 5c586d81 00000010     .........mX\....
d0091634:	00000000 58100000 716d6d58 105c716d     .......XXmmqmq\.
	...
d009164c:	58100000 115c586d 00000000 00000000     ...XmX\.........
d009165c:	10000000 10111010 00101111 00000000     ................
d009166c:	00000000 10100000 00101010 00000000     ................

d009167c <gfx_bubguy4>:
	...
d00917a8:	12000000 00000010 00000000 00000000     ................
	...
d00917cc:	30101010 00001034 2df47000 000070f4     ...04....p.-.p..
	...
d00917ec:	10110000 30303434 00001034 1d2d7070     ....44004...pp-.
d00917fc:	001d1d2d 00000000 00000000 00000000     -...............
d009180c:	00000000 34341100 30303030 f4103430     ......44000004..
d009181c:	701df41d 002df470 00000000 00000000     ...pp.-.........
	...
d0091834:	30343410 30303034 bc701034 70701d2d     .44040004.p.-.pp
d0091844:	001d0000 00000000 00000000 00000000     ................
d0091854:	00000000 34343410 30303034 70707010     .....4444000.ppp
d0091864:	70001070 00000000 00000000 00000000     p..p............
	...
d009187c:	34101000 30303430 10701010 00000010     ...40400..p.....
	...
d00918a0:	34341000 10343034 107d1010 00000000     ..44404...}.....
	...
d00918c4:	30341100 11101210 6d101a1a 00000011     ..40.......m....
	...
d00918e8:	10103010 101dbc70 1110bf1a 101aba07     .0..p...........
	...
d0091908:	11000000 70701030 1d705c58 7d1a1a10     ....0.ppX\p....}
d0091918:	1007817d 00000000 00000000 00000000     }...............
d0091928:	00000000 30100000 bc701010 70701a07     .......0..p...pp
d0091938:	ba1a7e11 00001082 00000000 00000000     .~..............
	...
d0091950:	10301000 702d1034 10817181 0707817d     ..0.4.-p.q..}...
d0091960:	11077e81 00000000 00000000 00000000     .~..............
d0091970:	00000000 34343010 5c103410 81816d58     .....044.4.\Xm..
d0091980:	81817d81 6d817d81 00000011 00000000     .}...}.m........
	...
d0091998:	34343430 58111134 796d105c 716d817d     04444..X\.my}.mq
d00919a8:	12103434 00000000 00000000 00000000     44..............
d00919b8:	00000000 11101110 10000010 6d101011     ...............m
d00919c8:	75797d79 00001210 00000000 00000000     y}yu............
	...
d00919e8:	34111100 11757575 00000000 00000000     ...4uuu.........
	...
d0091a0c:	10000000 00107579 00000000 00000000     ....yu..........
	...
d0091a30:	10000000 00107d75 00000000 00000000     ....u}..........
	...
d0091a54:	10000000 117d8179 00000000 00000000     ....y.}.........
	...
d0091a78:	10000000 10078179 00000000 00000000     ....y...........
	...
d0091a9c:	11000000 10758179 00000000 00000000     ....y.u.........
	...
d0091ac0:	10000000 00128179 00000000 00000000     ....y...........
	...
d0091ae4:	10000000 00108175 00000000 00000000     ....u...........
	...
d0091b08:	10000000 10758175 00000000 00000000     ....u.u.........
	...
d0091b2c:	10000000 10078179 00000000 00000000     ....y...........
	...
d0091b50:	11000000 107d8175 00000000 00000000     ....u.}.........
	...
d0091b74:	11000000 07817d6d 00000011 00000000     ....m}..........
	...
d0091b98:	10000000 077d8171 00000010 00000000     ....q.}.........
	...
d0091bbc:	10100000 817d8111 00000011 00000000     ......}.........
	...
d0091be0:	a6120000 817d11a6 00001007 00000000     ......}.........
	...
d0091c04:	18ac1000 7d11a610 00101281 00000000     .......}........
	...
d0091c28:	821a1000 81102281 1110717d 00000000     ....."..}q......
	...
d0091c4c:	821a1010 11ac107d 1010716d 00000000     ....}...mq......
	...
d0091c70:	817eba10 ac10757d 18171110 00000011     ..~.}u..........
	...
d0091c90:	11000000 7d818210 17106d6d 17171718     .......}mm......
d0091ca0:	00000010 00000000 00000000 00000000     ................
d0091cb0:	00000000 10000000 6d818107 11586d58     ...........mXmX.
d0091cc0:	18181718 00000011 00000000 00000000     ................
	...
d0091cd8:	11100000 10717d7d 10717d58 22181817     ....}}q.X}q...."
d0091ce8:	00001022 00000000 00000000 00000000     "...............
d0091cf8:	00000000 07110000 58107181 115c7d75     .........q.Xu}\.
d0091d08:	17acac17 10001118 00818110 00000000     ................
	...
d0091d20:	7d821100 755c1071 17107d81 18171718     ...}q.\u.}......
d0091d30:	6d111017 1a82817d 00000011 00000000     ...m}...........
d0091d40:	10100000 6d818110 79581010 18105881     .......m..Xy.X..
d0091d50:	18181718 5c581017 817d1011 00000010     ......X\..}.....
d0091d60:	00000000 7d7d1100 1081817d 58121111     ......}}}......X
d0091d70:	1818105c 1817ac18 585c1018 817d106d     \.........\Xm.}.
d0091d80:	00001011 00000000 7e1a7d10 00118181     .........}.~....
d0091d90:	11101810 17171810 18ac1818 5c101718     ...............\
d0091da0:	10817d10 0000107d 00000000 bf828111     .}..}...........
d0091db0:	1075811a 17181710 18181718 18181718     ..u.............
d0091dc0:	1010ac18 7510105c 00000010 00000000     ....\..u........
d0091dd0:	ba7d7510 10817d07 17171711 18181718     .u}..}..........
d0091de0:	17171818 1010acac 106d5810 00000000     .........Xm.....
d0091df0:	00000000 816d1000 1171107d 18171810     ......m.}.q.....
d0091e00:	17181817 17171718 11a6a6ac 00101000     ................
	...
d0091e18:	6d100000 00107181 17181810 18181718     ...m.q..........
d0091e28:	18181817 a6a6ac18 00000010 00000000     ................
d0091e38:	00000000 10000000 10001010 17171817     ................
d0091e48:	18181718 18171818 a6ac1817 000010a6     ................
	...
d0091e60:	00100000 ac111000 10171818 17171717     ................
d0091e70:	17181717 ac181717 000011a6 00000000     ................
d0091e80:	00000000 7d6d1100 17acac10 18181817     ......m}........
d0091e90:	18171012 18181817 ac171718 0010a6a6     ................
	...
d0091ea8:	81811000 1718106d 18181717 10101017     ....m...........
d0091eb8:	17181818 18181717 001122ac 00000000     ........."......
d0091ec8:	00000000 7d811000 18171075 18181718     .......}u.......
d0091ed8:	11111017 18181010 17171818 0011ac18     ................
	...
d0091ef0:	81811000 1718107d 18171818 10101118     ....}...........
d0091f00:	17101010 18181717 0010ac17 00000000     ................
d0091f10:	00000000 817d1000 18106d7d 17171817     ......}.}m......
d0091f20:	00101010 18101000 17181817 0011ac17     ................
	...
d0091f38:	81791000 17107581 10121818 00000010     ..y..u..........
d0091f48:	18100000 18171817 00101818 00000000     ................
d0091f58:	00000000 816d1000 1110817d 00101010     ......m.}.......
d0091f68:	00000000 17181000 18171718 00101018     ................
d0091f78:	00101000 00000000 7d6d1100 00108181     ..........m}....
	...
d0091f90:	10101000 11111010 10111011 101a0710     ................
d0091fa0:	00000000 756d1100 00107d81 00000000     ......mu.}......
d0091fb0:	00000000 076d1000 077d7dba ba07ba07     ......m..}}.....
d0091fc0:	117d817d 00000000 6d6d1000 10817d79     }.}.......mmy}..
	...
d0091fd8:	07817510 ba827d7d 7d078107 1071717d     .u..}}.....}}qq.
d0091fe8:	00000000 6d120000 106d716d 00000000     .......mmqm.....
d0091ff8:	00000000 79795c11 75757975 ba71ba81     .....\yyuyuu..q.
d0092008:	115c1a6d 00000000 10000000 00111110     m.\.............
	...
d0092020:	10101010 10121010 10101010 00101010     ................

d0092030 <gfx_bubguy5>:
	...
d0092138:	10000000 00000010 00000000 00000000     ................
	...
d009215c:	30101010 00001034 00000000 00000000     ...04...........
	...
d009217c:	11110000 30303434 00001034 f42d7000     ....44004....p-.
d009218c:	00006cf4 00000000 00000000 00000000     .l..............
d009219c:	00000000 34341000 30303030 f4113430     ......44000004..
d00921ac:	2d2d1d2d 00702d1d 00000000 00000000     -.--.-p.........
	...
d00921c4:	30343411 30303034 2d701134 70f42df4     .44040004.p-.-.p
d00921d4:	001d2d6c 00000000 00000000 00000000     l-..............
d00921e4:	00000000 34343410 30303034 706c7011     .....4444000.plp
d00921f4:	7070106c 00f47000 00000000 00000000     l.pp.p..........
	...
d009220c:	34101000 30303430 106c1110 70000011     ...40400..l....p
d009221c:	00f40000 00000000 00000000 00000000     ................
d009222c:	00000000 34341000 10343034 117d1010     ......44404...}.
	...
d0092254:	30341000 10101011 71101aba 00000010     ..40.......q....
	...
d0092278:	10103010 102d1d70 1010bf1a 111aba07     .0..p.-.........
	...
d0092298:	11000000 706c1030 2d705858 7d1a1a10     ....0.lpXXp-...}
d00922a8:	11827d7d 00000000 00000000 00000000     }}..............
d00922b8:	00000000 30100000 f4701010 6c701aba     .......0..p...pl
d00922c8:	baba0711 00001007 00000000 00000000     ................
	...
d00922e0:	10301000 701d1134 107d7181 827e7d7d     ..0.4..p.q}.}}~.
d00922f0:	10070781 00000000 00000000 00000000     ................
d0092300:	00000000 34343010 5c103411 7d7d6d58     .....044.4.\Xm}}
d0092310:	7d7d7d7d 6d817d7d 00000010 00000000     }}}}}}.m........
	...
d0092328:	34343430 5c101034 7971105c 6d717d7d     04444..\\.qy}}qm
d0092338:	11103434 00000000 00000000 00000000     44..............
d0092348:	00000000 11111110 11000011 6d101110     ...............m
d0092358:	79757d79 00001111 00000000 00000000     y}uy............
	...
d0092378:	34101000 10797575 00000000 00000000     ...4uuy.........
	...
d009239c:	10000000 00107579 00000000 00000000     ....yu..........
	...
d00923c0:	10000000 00107d75 00000000 00000000     ....u}..........
	...
d00923e4:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0092408:	11000000 10078175 00000000 00000000     ....u...........
	...
d009242c:	10000000 11797d75 00000000 00000000     ....u}y.........
	...
d0092450:	10000000 00107d79 00000000 00000000     ....y}..........
	...
d0092474:	10000000 00107d79 00000000 00000000     ....y}..........
	...
d0092498:	10000000 10758171 00000000 00000000     ....q.u.........
	...
d00924bc:	10000000 11ba7d79 00000000 00000000     ....y}..........
	...
d00924e0:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0092504:	11000000 82817d6d 00000011 00000000     ....m}..........
	...
d0092528:	11000000 7d7d10a6 0000107e 00000000     ......}}~.......
	...
d009254c:	a6100000 7d10a6a6 0011107d 00000000     .......}}.......
	...
d0092570:	11a61000 7d10ac10 10116d7d 00000000     .......}}m......
	...
d0092594:	1a101000 11221082 10106d71 00000000     ......".qm......
	...
d00925b8:	1a6d1010 2210717d 17171010 00000010     ..m.}q."........
	...
d00925dc:	077d5c11 17107181 18171717 00000011     .\}..q..........
	...
d0092600:	1a817110 115c7d7d 18181718 00000011     .q..}}\.........
	...
d0092624:	ba6d6d10 105c7d7d a6acaa18 000010a6     .mm.}}\.........
	...
d0092648:	7e5c6d10 1711717d 17181718 00001017     .m\~}q..........
	...
d009266c:	7e5c5c10 17115c7d 17181717 00001017     .\\~}\..........
	...
d0092690:	7e105c10 1717107d 17181817 00001117     .\.~}...........
	...
d00926b4:	7d101011 1818187d 1817ac18 00001017     ...}}...........
	...
d00926d4:	10000000 7d101817 1817177d 18181817     .......}}.......
d00926e4:	00007d18 00000000 00000000 00000000     .}..............
d00926f4:	00000000 13000000 81101718 1817107d     ............}...
d0092704:	ac181718 10fb8218 00000000 00000000     ................
	...
d009271c:	11000000 7d101018 1818107d 22171718     .......}}......"
d009272c:	107d7d22 00000000 00000000 00000000     "}}.............
	...
d0092744:	7d077110 17181081 18171817 101011ac     .q.}............
d0092754:	00000010 00000000 00000000 00000000     ................
d0092764:	11000000 8281821a 1810fb7e ac181818     ........~.......
d0092774:	111710ac 00000011 00000000 00000000     ................
d0092784:	00000000 10000000 077dba7d 18107e07     ........}.}..~..
d0092794:	18171818 101117ac 00000000 00000000     ................
	...
d00927ac:	10000000 7d7d7d71 18116d81 17171818     ....q}}}.m......
d00927bc:	10102218 00000000 00000000 00000000     ."..............
	...
d00927d4:	816d6d11 1818106d 17171817 1010a618     .mm.m...........
	...
d00927f8:	71711000 17181111 17181717 1010a6ac     ..qq............
	...
d009281c:	10110000 17181710 18181717 101118ac     ................
	...
d0092840:	17111011 18181710 17171717 1111ac18     ................
	...
d0092860:	11000000 105c6d1a 17171810 17171818     .....m\.........
d0092870:	0010ac18 00000000 00000000 00000000     ................
d0092880:	00000000 10000000 10717dba 17181710     .........}q.....
d0092890:	18171818 00101722 00000000 00000000     ...."...........
	...
d00928ac:	106d8110 17181818 22181717 00001118     ..m........"....
	...
d00928d0:	107d1000 18171818 ac181717 00000010     ..}.............
	...
d00928f4:	18100000 18171718 18181718 00001010     ................
	...
d0092918:	18100000 18181817 10171717 00101110     ................
	...
d009293c:	10100000 10111110 10111110 101aba11     ................
	...
d0092960:	826d1000 077d7dba 0707827e 107d7d7d     ..m..}}.~...}}}.
	...
d0092984:	077d7510 7eba7d7d 7d077d07 10716d7d     .u}.}}.~.}.}}mq.
	...
d00929a8:	79795c10 75797575 ba6dba7d 105cba71     .\yyuuyu}.m.q.\.
	...
d00929cc:	10101011 11101011 10111010 00101010     ................
	...

d00929e4 <gfx_bubguy6>:
	...
d0092aa4:	11000000 00000010 00000000 00000000     ................
	...
d0092ac8:	30101010 00001034 00000000 00000000     ...04...........
	...
d0092ae8:	10100000 30303434 00001034 00000000     ....44004.......
	...
d0092b0c:	34341100 30303030 f4103430 f42d702d     ..44000004..-p-.
d0092b1c:	0000702d 00000000 00000000 00000000     -p..............
d0092b2c:	00000000 30343411 30303034 f4701134     .....44040004.p.
d0092b3c:	2d2df4f4 00702df4 00000000 00000000     ..--.-p.........
	...
d0092b54:	34343410 30303034 70746c10 6c2df470     .4444000.ltpp.-l
d0092b64:	00f4f474 00000000 00000000 00000000     t...............
d0092b74:	00000000 34101000 30303430 106c1110     .......40400..l.
d0092b84:	6c741010 002d7000 00000000 00000000     ..tl.p-.........
	...
d0092b9c:	34341000 10343034 107d1110 70000000     ..44404...}....p
d0092bac:	00f40000 00000000 00000000 00000000     ................
d0092bbc:	00000000 30341000 10101010 6d10fbba     ......40.......m
d0092bcc:	00000010 00000000 00000000 00000000     ................
	...
d0092be4:	10103010 112df470 10101abe 10bfbe82     .0..p.-.........
	...
d0092c04:	10000000 6c701130 f46c5c58 7d1abf10     ....0.plX\l....}
d0092c14:	10077d7d 00000000 00000000 00000000     }}..............
d0092c24:	00000000 30110000 2d6c1010 746c1a82     .......0..l-..lt
d0092c34:	beba0710 00001007 00000000 00000000     ................
	...
d0092c4c:	10301000 702d1134 117d717d 7e7e817d     ..0.4.-p}q}.}.~~
d0092c5c:	10827e7d 00000000 00000000 00000000     }~..............
d0092c6c:	00000000 34343011 5c103410 7d816d5c     .....044.4.\\m.}
d0092c7c:	7d7d7d81 717d7d81 00000010 00000000     .}}}.}}q........
	...
d0092c94:	34343430 58101034 796d1158 716d7d7d     04444..XX.my}}mq
d0092ca4:	10113434 00000000 00000000 00000000     44..............
d0092cb4:	00000000 10101011 10000010 75101010     ...............u
d0092cc4:	75797d79 00001010 00000000 00000000     y}yu............
	...
d0092ce4:	34101100 10797579 00000000 00000000     ...4yuy.........
	...
d0092d08:	11000000 00107979 00000000 00000000     ....yy..........
	...
d0092d2c:	10000000 00108175 00000000 00000000     ....u...........
	...
d0092d50:	10000000 10817d79 00000000 00000000     ....y}..........
	...
d0092d74:	10000000 10078179 00000000 00000000     ....y...........
	...
d0092d98:	10000000 10797d79 00000000 00000000     ....y}y.........
	...
d0092dbc:	10000000 00108179 00000000 00000000     ....y...........
	...
d0092de0:	11000000 00108179 00000000 00000000     ....y...........
	...
d0092e04:	10000000 11758175 00000000 00000000     ....u.u.........
	...
d0092e28:	10000000 10828179 00000000 00000000     ....y...........
	...
d0092e4c:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0092e70:	10000000 7e81816d 00000011 00000000     ....m..~........
	...
d0092e94:	10000000 077d816d 00000010 00000000     ....m.}.........
	...
d0092eb8:	10000000 7e7d1010 0000117d 00000000     ......}~}.......
	...
d0092edc:	a6110000 7d11a6a6 0000106d 00000000     .......}m.......
	...
d0092f00:	aca61000 10181011 00117171 00000000     ........qq......
	...
d0092f24:	10a61000 a6107d7d 10106d11 00000000     ....}}...m......
	...
d0092f48:	10101100 a6117e82 11171010 00000000     .....~..........
	...
d0092f6c:	81111810 ac81bf82 17171710 00000011     ................
	...
d0092f90:	81581710 ac1a077d 18ac1811 00000010     ..X.}...........
	...
d0092fb4:	7d711810 7d1a817d 18171710 00000010     ..q}}..}........
	...
d0092fd8:	816d1710 fb827d71 1718187d 00001017     ..m.q}..}.......
	...
d0092ffc:	7d711810 827d7111 17181007 00001018     ..q}.q}.........
	...
d0093020:	6d6d1011 7d75116d 17107d82 00001018     ..mmm.u}.}......
	...
d0093044:	6d5c1010 7d101020 10117e81 00001018     ..\m ..}.~......
	...
d0093068:	10111710 10181710 117d7d7d 00101011     ........}}}.....
	...
d009308c:	18171811 17181717 817d7d10 10107d7d     .........}}.}}..
d009309c:	00000010 00000000 00000000 00000000     ................
d00930ac:	00000000 17181811 18171818 7d7d1118     ..............}}
d00930bc:	107d8181 00001018 00000000 00000000     ..}.............
	...
d00930d4:	17171810 18181818 7d101717 81818181     ...........}....
d00930e4:	0010a610 00000000 00000000 00000000     ................
d00930f4:	00000000 18181710 17181817 7d811118     ...............}
d0093104:	bf077e7d 10a61810 00000000 00000000     }~..............
d0093114:	00000000 11000000 17181717 18181718     ................
d0093124:	81101018 6d7e1a82 11a61811 00000000     ......~m........
	...
d009313c:	10000000 18171818 17181717 81581017     ..............X.
d009314c:	11757d81 10181717 00000000 00000000     .}u.............
d009315c:	00000000 18100000 18171818 18171818     ................
d009316c:	5c101718 18105871 10171817 00000000     ...\qX..........
	...
d0093184:	18100000 17181818 18171718 11181818     ................
d0093194:	17111010 11181818 00101010 00000000     ................
d00931a4:	00000000 18100000 17171817 18181818     ................
d00931b4:	18181818 17181010 11181718 00117e1a     .............~..
	...
d00931cc:	18100000 18171718 18181818 10101018     ................
d00931dc:	18181818 71101818 00118182 00000000     .......q........
d00931ec:	00000000 17181000 18181818 18171718     ................
d00931fc:	11101017 17181810 7d6d1017 00107d7d     ..........m}}}..
	...
d0093214:	18181000 18181718 18181717 11000010     ................
d0093224:	17181810 81817110 00106d81 00000000     .....q...m......
d0093234:	00000000 18171710 18181717 17181817     ................
d0093244:	00000010 18181710 7d7d7d10 00105c81     .........}}}.\..
	...
d009325c:	18181711 18181818 11171818 00000000     ................
d009326c:	11181710 717d7d81 0000115c 00000000     .....}}q\.......
d009327c:	00000000 18181711 17181818 00101017     ................
d009328c:	00000000 7d101810 58717d7d 00000010     .......}}}qX....
d009329c:	00000000 11000000 18181718 18181717     ................
d00932ac:	00001017 00000000 81711011 1071717d     ..........q.}qq.
	...
d00932c4:	10000000 18181718 18171817 10101011     ................
d00932d4:	00000000 7d811100 00106d81 00000000     .......}.m......
d00932e4:	00000000 10100000 10101010 10101011     ................
d00932f4:	1a821010 00000011 7d711000 00115c71     ..........q}q\..
	...
d009330c:	6d100000 7d817e7e 0782827e 7d817d82     ...m~~.}~....}.}
d009331c:	00000010 715c1000 00001020 00000000     ......\q .......
d009332c:	00000000 7d751000 077d817e 07817e7e     ......u}~.}.~~..
d009333c:	716d817d 00000010 10110000 00000010     }.mq............
	...
d0093354:	79581000 75797579 71ba7d79 5cba6d1a     ..Xyyuyuy}.q.m.\
d0093364:	00000010 00000000 00000000 00000000     ................
d0093374:	00000000 10111000 10101010 10101110     ................
d0093384:	10111111 00000000 00000000 00000000     ................
d0093394:	00000000                                ....

d0093398 <gfx_bubguy7>:
	...
d00934a0:	10000000 00000010 00000000 00000000     ................
	...
d00934c4:	30101010 00001034 00000000 00000000     ...04...........
	...
d00934e4:	11110000 30303434 00001034 f42d7000     ....44004....p-.
d00934f4:	00006cf4 00000000 00000000 00000000     .l..............
d0093504:	00000000 34341000 30303030 f4113430     ......44000004..
d0093514:	2d2d1d2d 00702d1d 00000000 00000000     -.--.-p.........
	...
d009352c:	30343412 30303034 2d701134 70f42df4     .44040004.p-.-.p
d009353c:	001d2d6c 00000000 00000000 00000000     l-..............
d009354c:	00000000 34343410 30303034 706c7010     .....4444000.plp
d009355c:	7070106c 00f47000 00000000 00000000     l.pp.p..........
	...
d0093574:	34101000 30303430 106c1210 70000011     ...40400..l....p
d0093584:	00f40000 00000000 00000000 00000000     ................
d0093594:	00000000 34341000 10343034 117d1010     ......44404...}.
	...
d00935bc:	30341000 10101011 71101aba 00000010     ..40.......q....
	...
d00935e0:	10103010 102d1d70 1010bf1a 111a1aba     .0..p.-.........
	...
d0093600:	11000000 706c1030 2d705858 811a1a10     ....0.lpXXp-....
d0093610:	11827d7d 00000000 00000000 00000000     }}..............
d0093620:	00000000 30100000 f4701010 6c70baba     .......0..p...pl
d0093630:	ba1a0711 000010ba 00000000 00000000     ................
	...
d0093648:	10301000 701d1134 10817181 82ba817d     ..0.4..p.q..}...
d0093658:	107e0781 00000000 00000000 00000000     ..~.............
d0093668:	00000000 34343010 5c103411 7d7d6d58     .....044.4.\Xm}}
d0093678:	81817d81 6d817d7d 00000010 00000000     .}..}}.m........
	...
d0093690:	34343430 5c101034 7971105c 6d717d7d     04444..\\.qy}}qm
d00936a0:	11103434 00000000 00000000 00000000     44..............
d00936b0:	00000000 11111110 11000012 71101110     ...............q
d00936c0:	75798175 00001111 00000000 00000000     u.yu............
	...
d00936e0:	34101000 10757575 00000000 00000000     ...4uuu.........
	...
d0093704:	10000000 00107575 00000000 00000000     ....uu..........
	...
d0093728:	10000000 00107d75 00000000 00000000     ....u}..........
	...
d009374c:	10000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0093770:	11000000 117e8175 00000000 00000000     ....u.~.........
	...
d0093794:	10000000 11758175 00000000 00000000     ....u.u.........
	...
d00937b8:	10000000 00108175 00000000 00000000     ....u...........
	...
d00937dc:	10000000 00108175 00000000 00000000     ....u...........
	...
d0093800:	10000000 10797d79 00000000 00000000     ....y}y.........
	...
d0093824:	10000000 10077d75 00000000 00000000     ....u}..........
	...
d0093848:	10000000 107d7d75 00000000 00000000     ....u}}.........
	...
d009386c:	10000000 7e7d816d 00000012 00000000     ....m.}~........
	...
d0093890:	10000000 07811010 00000010 00000000     ................
	...
d00938b4:	11100000 8110a6a6 0000126d 00000000     ........m.......
	...
d00938d8:	a6100000 10ac1a71 00001071 00000000     ....q...q.......
	...
d00938fc:	5c100000 ac1aba7d 00107110 00000000     ...\}....q......
	...
d0093920:	5ca61000 bf827d81 00107110 00000000     ...\.}...q......
	...
d0093944:	6dac1000 ba7d817d 1110101a 00000000     ...m}.}.........
	...
d0093968:	7d102210 7d817d7d 1082ba07 00000000     .".}}}.}........
	...
d009398c:	81101810 816d5881 07077d7d 00001110     .....Xm.}}......
	...
d00939b0:	7d101810 1058817d 7d7d7d6d 11117e82     ...}}.X.m}}}.~..
d00939c0:	12111011 00000000 00000000 00000000     ................
d00939d0:	00000000 7d101811 5c717181 7d711010     .......}.qq\..q}
d00939e0:	ba07817d 820707ba 00000012 00000000     }...............
d00939f0:	00000000 10000000 71111710 105c6d71     ...........qqm\.
d0093a00:	11101017 7d817d71 1aba8281 00001007     ....q}.}........
	...
d0093a18:	7d110000 5c111810 18115c71 18181718     ...}...\q\......
d0093a28:	7d6d1010 bfbaba81 0011817e 00000000     ..m}....~.......
d0093a38:	00000000 6d6d1000 10181810 17181011     ......mm........
d0093a48:	17181817 7d100011 ba1a8281 00107d7d     .......}....}}..
	...
d0093a60:	5c711000 18171812 17181818 17171818     ..q\............
d0093a70:	10001118 7d827d6d 00106d7d 00000000     ....m}.}}m......
d0093a80:	00000000 5c711000 18181710 18181817     ......q\........
d0093a90:	18181718 10001018 7d817171 0000106d     ........qq.}m...
	...
d0093aa8:	106d1100 18181817 18181718 17181817     ..m.............
d0093ab8:	00101818 6d717111 00000010 00000000     .....qqm........
d0093ac8:	00000000 10100000 18181818 18181718     ................
d0093ad8:	18171818 00101718 12101000 00000000     ................
	...
d0093af0:	10000000 18181817 17181818 18181718     ................
d0093b00:	10ac1718 00000000 00000000 00000000     ................
d0093b10:	00000000 10000000 18181818 17181818     ................
d0093b20:	18171817 11221718 00000000 00000000     ......".........
	...
d0093b38:	11000000 17181817 18181818 18171718     ................
d0093b48:	a6181717 00000012 00000000 00000000     ................
d0093b58:	00000000 10110000 18171811 18181717     ................
d0093b68:	18181717 ac171817 000010a6 00000000     ................
	...
d0093b80:	11111000 18171717 18181818 18171718     ................
d0093b90:	ac181717 000011a6 00000000 00000000     ................
d0093ba0:	10000000 1722a610 17181718 17181717     ......".........
d0093bb0:	18181810 18181718 00001022 00000000     ........".......
d0093bc0:	00000000 22100000 181817a6 18181717     ......."........
d0093bd0:	18181817 17171110 18181818 000010ac     ................
d0093be0:	00101100 00000000 18110000 17181718     ................
d0093bf0:	17181718 10171818 18181010 18181817     ................
d0093c00:	00101817 10811a10 00000000 10100000     ................
d0093c10:	17181817 17181718 00121717 18101012     ................
d0093c20:	18171818 00101817 107d7d10 00000000     .........}}.....
d0093c30:	7d811000 18181810 18171817 00001017     ...}............
d0093c40:	17111000 18181818 11181718 5c7d7d71     ............q}}\
d0093c50:	00000000 81811000 17181710 10181818     ................
d0093c60:	00000011 18100000 18171818 10181818     ................
d0093c70:	71818171 00000000 817d1000 1818107d     q..q......}.}...
d0093c80:	00101818 00000000 10100000 18181818     ................
d0093c90:	7d101818 717d7d7d 00000000 81811000     ...}}}}q........
d0093ca0:	1010717d 10101010 00000000 11000000     }q..............
d0093cb0:	18181817 817d1018 5c71817d 00000000     ......}.}.q\....
d0093cc0:	7d811000 817d817d 117d8182 00000000     ...}}.}...}.....
d0093cd0:	11000000 10101810 817d7d11 115c717d     .........}}.}q\.
d0093ce0:	00000000 81100000 7dba7d81 116d717d     .........}.}}qm.
	...
d0093cf8:	5c111010 7d817d7d 00105871 00000000     ...\}}.}qX......
d0093d08:	5c100000 076d7e81 105c7e71 00000000     ...\.~m.q~\.....
d0093d18:	00000000 81100000 5c6d8181 00001010     ..........m\....
d0093d28:	00000000 10000000 1010105c 00101010     ........\.......
	...
d0093d40:	10100000 10101010 00000000              ............

d0093d4c <gfx_bubguy8>:
	...
d0093e78:	11000000 00000010 00000000 00000000     ................
	...
d0093e9c:	30101010 00001034 2df47000 000070f4     ...04....p.-.p..
	...
d0093ebc:	10110000 30303434 00001034 1d2d7070     ....44004...pp-.
d0093ecc:	001d1d2d 00000000 00000000 00000000     -...............
d0093edc:	00000000 34341100 30303030 f4103430     ......44000004..
d0093eec:	701df41d 002df470 00000000 00000000     ...pp.-.........
	...
d0093f04:	30343410 30303034 bc701034 70701d2d     .44040004.p.-.pp
d0093f14:	001d0000 00000000 00000000 00000000     ................
d0093f24:	00000000 34343410 30303034 70707010     .....4444000.ppp
d0093f34:	70001070 00000000 00000000 00000000     p..p............
	...
d0093f4c:	34101000 30303430 10701010 00000010     ...40400..p.....
	...
d0093f70:	34341000 11343034 107d1010 00000000     ..44404...}.....
	...
d0093f94:	30341100 11101010 6d101aba 00000011     ..40.......m....
	...
d0093fb8:	10103010 101dbc70 11101aba 101aba07     .0..p...........
	...
d0093fd8:	11000000 70701030 1d705858 7d1a1a10     ....0.ppXXp....}
d0093fe8:	1007817d 00000000 00000000 00000000     }...............
d0093ff8:	00000000 30100000 bc701010 70701a07     .......0..p...pp
d0094008:	ba1a8210 00001082 00000000 00000000     ................
	...
d0094020:	10301000 702d1034 10817181 0707817d     ..0.4.-p.q..}...
d0094030:	11077e81 00000000 00000000 00000000     .~..............
d0094040:	00000000 34343010 58103410 81816d58     .....044.4.XXm..
d0094050:	7d817d81 6d817d7d 00000011 00000000     .}.}}}.m........
	...
d0094068:	34343430 58111034 7971105c 716d817d     04444..X\.qy}.mq
d0094078:	11103434 00000000 00000000 00000000     44..............
d0094088:	00000000 11101110 10000010 6d101011     ...............m
d0094098:	79797d79 00001111 00000000 00000000     y}yy............
	...
d00940b8:	34111100 11757579 00000000 00000000     ...4yuu.........
	...
d00940dc:	10000000 00107979 00000000 00000000     ....yy..........
	...
d0094100:	10000000 00107d75 00000000 00000000     ....u}..........
	...
d0094124:	10000000 107d8179 00000000 00000000     ....y.}.........
	...
d0094148:	10000000 10078179 00000000 00000000     ....y...........
	...
d009416c:	10000000 10757d79 00000000 00000000     ....y}u.........
	...
d0094190:	10000000 00107d79 00000000 00000000     ....y}..........
	...
d00941b4:	10000000 00108175 00000000 00000000     ....u...........
	...
d00941d8:	10000000 10757d79 00000000 00000000     ....y}u.........
	...
d00941fc:	10000000 11077d79 00000000 00000000     ....y}..........
	...
d0094220:	11000000 107d7d79 00000000 00000000     ....y}}.........
	...
d0094244:	10000000 ba7d816d 00000010 00000000     ....m.}.........
	...
d0094268:	10100000 8110acac 0000106d 00000000     ........m.......
	...
d009428c:	ac110000 10227d6d 00001071 00000000     ....m}".q.......
	...
d00942b0:	58100000 22111aba 00107110 00000000     ...X...".q......
	...
d00942d4:	5cac1000 101a077d 00101111 00000000     ...\}...........
	...
d00942f8:	71181000 bf078181 10101007 00000000     ...q............
	...
d009431c:	6d181100 077d7d81 101107ba 00000000     ...m.}}.........
	...
d0094340:	7d10ac10 796d5881 7dbaba7d 00111058     ...}.Xmy}..}X...
d0094350:	10100000 00001011 00000000 00000000     ................
d0094360:	00000000 79101810 11586d81 7d817d71     .......y.mX.q}.}
d0094370:	82070707 8181ba82 00107d7d 00000000     ........}}......
	...
d0094388:	81111810 58757d81 6d101010 817d7d81     .....}uX...m.}}.
d0094398:	817d7d81 00101a1a 00000000 00000000     .}}.............
d00943a8:	11100000 6d111810 106d7d7d 10181118     .......m}}m.....
d00943b8:	7d711010 07817d7d 1081ba1a 00000000     ..q}}}..........
d00943c8:	00000000 6d7d1000 6d101810 115c6d75     ......}m...mum\.
d00943d8:	17181818 10100010 ba7d7110 107d7d82     .........q}..}}.
	...
d00943f0:	71717110 5c101810 1711585c 18171718     .qqq...\\X......
d0094400:	00001018 7d7d1011 10717d81 00000000     ......}}.}q.....
d0094410:	00000000 715c6d10 10171710 18171010     .....m\q........
d0094420:	17181817 00001018 816d1000 0011717d     ..........m.}q..
	...
d0094438:	10587110 18171818 17181818 18181818     .qX.............
d0094448:	00111717 71581000 00001058 00000000     ......XqX.......
d0094458:	00000000 10106d11 18171718 18181718     .....m..........
d0094468:	18171717 10ac1718 10100000 00000010     ................
	...
d0094480:	17101000 17181717 18181717 18181718     ................
d0094490:	11a61817 00000000 00000000 00000000     ................
d00944a0:	00000000 18110000 18181818 17171818     ................
d00944b0:	18171818 ac171818 00000011 00000000     ................
	...
d00944c8:	18101000 18171818 17171817 18171818     ................
d00944d8:	ac171818 00000010 00000000 00000000     ................
d00944e8:	10000000 1818a610 18181818 18181817     ................
d00944f8:	17171017 ac171817 000011ac 00000000     ................
d0094508:	00000000 22100000 171818a6 17171718     ......."........
d0094518:	18171817 18181711 18181817 000010ac     ................
	...
d0094530:	ac101000 17181818 18181817 18181817     ................
d0094540:	18181810 17171718 000011ac 00000000     ................
d0094550:	00000000 107d6d10 17181817 17181717     .....m}.........
d0094560:	10171818 17171011 17171718 00001017     ................
	...
d0094578:	10ba8110 18181818 17181718 10101818     ................
d0094588:	18171010 18181817 00001010 00000000     ................
d0094598:	00000000 7d820711 18171710 18171818     .......}........
d00945a8:	00001117 18181011 18181818 00000010     ................
	...
d00945c0:	81ba0710 18171810 10171817 00000010     ................
d00945d0:	17181011 18171717 00000011 00000000     ................
d00945e0:	00000000 7d818110 18181010 00111010     .......}........
d00945f0:	00000000 18181000 17181717 00000010     ................
	...
d0094608:	7d818111 10111010 00000011 00000000     ...}............
d0094618:	17171000 18181818 00000010 00000000     ................
d0094628:	00000000 817d8110 0000107d 00000000     ......}.}.......
d0094638:	00000000 17181810 18181817 11101011     ................
d0094648:	00000010 00000000 7d7d8110 0000107d     ..........}}}...
	...
d0094660:	11171710 10101011 817d1010 00001007     ..........}.....
d0094670:	00000000 7d7d8110 00001181 00000000     ......}}........
d0094680:	00000000 7d101010 7d7d7d81 817d7d7d     .......}.}}}}}}.
d0094690:	0000106d 00000000 817d6d10 0010817d     m........m}.}...
	...
d00946a8:	81817d11 7d817d7d 6d7d7d81 0000115c     .}..}}.}.}}m\...
d00946b8:	00000000 81711100 00117d81 00000000     ......q..}......
d00946c8:	00000000 817d5810 58586d71 5c6d716d     .....X}.qmXXmqm\
d00946d8:	00000010 00000000 11100000 00001110     ................
	...
d00946f0:	11101110 10101110 10101110 00000000     ................

d0094700 <gradient_cols.9399>:
d0094700:	21202020 23222221 25242423 27262625        !!""##$$%%&&'
d0094710:	00002727                                ''..

d0094714 <guywidthheight>:
d0094714:	45454545 45454545 00000040              EEEEEEEE@...

d0094720 <guywidthwidth>:
d0094720:	2424241d 24242424 00000018              .$$$$$$$....

d009472c <scr_bub_floor>:
	...
d00947d0:	10101010 10101000 00001010 00000000     ................
	...
d00947f0:	10101010 10101000 00001010 00000000     ................
	...
d00948e8:	10000000 10606060 60601010 00106060     ....```...````..
d00948f8:	10000000 10101010 00000000 00000000     ................
d0094908:	10000000 10606060 60601010 00106060     ....```...````..
d0094918:	10000000 10101010 00000000 00000000     ................
	...
d0094a00:	10100000 60100010 60606060 60606010     .......`````.```
d0094a10:	10606060 10100010 60606060 00000010     ```.....````....
d0094a20:	00000000 60100000 60606060 60606010     .......`````.```
d0094a30:	10606060 10100010 60606060 00000010     ```.....````....
	...
d0094aec:	10101010 10100000 00101010 00000000     ................
	...
d0094b1c:	60601000 60101060 60606060 60606060     ..```..`````````
d0094b2c:	60606060 60101010 60606060 00001060     ````...``````...
d0094b3c:	00000000 60100000 60606060 60606060     .......`````````
d0094b4c:	60606060 60101010 60606060 00001060     ````...``````...
	...
d0094b64:	10101010 00000000 00000000 00000000     ................
	...
d0094c04:	10000000 60606060 60601010 10106060     ....````..````..
	...
d0094c38:	60606010 10101060 60606060 60606060     .````...````````
d0094c48:	10606060 60106060 60606060 00001060     ```.``.``````...
d0094c58:	00000000 10100000 60606060 60606060     ........````````
d0094c68:	10606060 60106060 60606060 00001060     ```.``.``````...
d0094c78:	00000000 10100000 60606060 00000010     ........````....
	...
d0094d20:	60100000 60606060 60606060 10606060     ...````````````.
d0094d30:	00000010 00000000 00000000 00000000     ................
	...
d0094d50:	10000000 60606010 60606060 60606010     .....```````.```
d0094d60:	60606060 60106060 60606060 60606060     ``````.`````````
d0094d70:	00106060 10101000 60601010 60606010     ``........``.```
d0094d80:	60606060 60106060 60606060 60606060     ``````.`````````
d0094d90:	00106060 10101000 60601010 60606060     ``........``````
d0094da0:	00001060 00000000 00000000 00000000     `...............
	...
d0094e3c:	60100000 60606060 60606060 60606060     ...`````````````
d0094e4c:	00001060 00000000 00000000 00000000     `...............
	...
d0094e6c:	60100000 60601060 60606060 60606060     ...``.``````````
d0094e7c:	60606060 60106060 60606060 60606060     ``````.`````````
d0094e8c:	00106060 60606010 60606060 60606060     ``...```````````
d0094e9c:	60606060 60106060 60606060 60606060     ``````.`````````
d0094eac:	00106060 60606010 60606060 60606060     ``...```````````
d0094ebc:	00001060 00000000 00000000 00000000     `...............
	...
d0094f58:	60100000 60606060 60606060 60606060     ...`````````````
d0094f68:	00001060 00000000 00000000 00000000     `...............
	...
d0094f88:	60100000 60606060 60606060 60606060     ...`````````````
d0094f98:	60606060 60106060 60606060 60606060     ``````.`````````
d0094fa8:	10106060 60606060 60606060 60606060     ``..````````````
d0094fb8:	60606060 60106060 60606060 60606060     ``````.`````````
d0094fc8:	10106060 60606060 60606060 60606060     ``..````````````
d0094fd8:	00001060 00000000 00000000 00000000     `...............
	...
d0095074:	60100000 60606060 60606060 60606060     ...`````````````
d0095084:	10001060 10101010 00000000 00000000     `...............
	...
d00950a0:	10101010 60100010 60606060 60606060     .......`````````
d00950b0:	60606060 60606060 10606060 60606010     ```````````..```
d00950c0:	60606060 10606060 60606060 60606060     ```````.````````
d00950d0:	60606060 60606060 10606060 60606010     ```````````..```
d00950e0:	60606060 10606060 60606060 60606060     ```````.````````
d00950f0:	60606060 00001060 00000000 00000000     `````...........
	...
d0095190:	60100000 60606060 60606060 60606060     ...`````````````
d00951a0:	60101010 10606060 00000000 00000000     ...````.........
	...
d00951bc:	60606010 10101060 60606060 60606060     .````...````````
d00951cc:	60606060 60606060 60606060 60606060     ````````````````
d00951dc:	60606060 10106060 60606010 60606060     ``````...```````
d00951ec:	60606060 60606060 60606060 60606060     ````````````````
d00951fc:	60606060 10106060 60606010 60606060     ``````...```````
d009520c:	60606060 00001060 00000000 00000000     `````...........
	...
d00952ac:	60100000 60606060 60606060 60606060     ...`````````````
d00952bc:	60606010 10606060 00000000 00000000     .``````.........
	...
d00952d8:	60606010 60606060 60606060 60606060     .```````````````
d00952e8:	60606060 60606060 60606060 60606060     ````````````````
d00952f8:	60606060 60101060 60606060 60606060     `````..`````````
d0095308:	60606060 60606060 60606060 60606060     ````````````````
d0095318:	60606060 60101060 60606060 60606060     `````..`````````
d0095328:	60606060 00001060 00000000 00000000     `````...........
	...
d00953c4:	10101000 4c100010 60606060 60606060     .......L````````
d00953d4:	60606060 60606060 10106060 00000000     ``````````......
	...
d00953f4:	60601010 60606060 60606060 60606060     ..``````````````
d0095404:	60606060 60606060 60606060 60606060     ````````````````
d0095414:	60606060 60601060 60606060 60606060     `````.``````````
d0095424:	60606060 60606060 60606060 60606060     ````````````````
d0095434:	60606060 60601060 60606060 60606060     `````.``````````
d0095444:	60606060 1000104c 00101010 00000000     ````L...........
	...
d00954e0:	60606010 10101010 60601010 60606060     .```......``````
d00954f0:	60606060 60606060 60606060 00000010     ````````````....
	...
d009550c:	10000000 60606060 60606060 60606060     ....````````````
d009551c:	60606060 60606060 60606060 60606060     ````````````````
d009552c:	60606060 60606060 60606010 60606060     ````````.```````
d009553c:	60606060 60606060 60606060 60606060     ````````````````
d009554c:	60606060 60606060 60606010 60606060     ````````.```````
d009555c:	60606060 10606060 10101010 10606060     ```````.....```.
	...
d00955f8:	10000000 60606060 60606060 60601060     ....`````````.``
d0095608:	60606060 60606060 60606060 60606060     ````````````````
d0095618:	00000010 00000000 00000000 00000000     ................
d0095628:	10000000 60606060 60606060 60606060     ....````````````
d0095638:	60606060 60606060 60606060 60606060     ````````````````
d0095648:	60606060 60606060 60606060 60606060     ````````````````
d0095658:	60606060 60606060 60606060 60606060     ````````````````
d0095668:	60606060 60606060 60606060 60606060     ````````````````
d0095678:	60606060 60606060 60606060 60606060     ````````````````
d0095688:	00000010 00000000 00000000 00000000     ................
	...
d0095714:	10000000 60606060 60606060 60606060     ....````````````
d0095724:	60606060 60606060 60606060 10606060     ```````````````.
	...
d0095748:	60606010 60606060 60606060 60606060     .```````````````
d0095758:	60606060 60606060 60606060 60606060     ````````````````
d0095768:	60606060 60606060 60606060 60606060     ````````````````
d0095778:	60606060 60606060 60606060 60606060     ````````````````
d0095788:	60606060 60606060 60606060 60606060     ````````````````
d0095798:	60606060 60606060 60606060 00000010     ````````````....
	...
d0095834:	60606010 60606060 60606060 60606060     .```````````````
d0095844:	60606060 60601060 60606060 00000010     `````.``````....
	...
d0095860:	10000000 60606060 60606060 60606060     ....````````````
d0095870:	60606060 60606060 60606060 60606060     ````````````````
d0095880:	60606060 60606060 60606060 60606060     ````````````````
d0095890:	60606060 60606060 60606060 60606060     ````````````````
d00958a0:	60606060 60606060 60606060 60606060     ````````````````
d00958b0:	60606060 60606060 60606060 10606060     ```````````````.
	...
d009594c:	10000000 60606010 60606060 60606010     .....```````.```
d009595c:	10606060 60606060 60606060 10606060     ```.```````````.
d009596c:	00000010 00000000 00000000 00000000     ................
d009597c:	10001010 60606010 60606060 60606060     .....```````````
d009598c:	60606060 60606060 60606060 60606060     ````````````````
d009599c:	60606060 60606060 60606060 60606060     ````````````````
d00959ac:	60606060 60606060 60606060 60606060     ````````````````
d00959bc:	60606060 60606060 60606060 60606060     ````````````````
d00959cc:	60606060 60606060 60606060 10606060     ```````````````.
d00959dc:	00000010 00000000 00000000 00000000     ................
	...
d0095a64:	10100000 60101010 60601060 60606060     .......``.``````
d0095a74:	60606010 60606060 60606010 60606060     .```````.```````
d0095a84:	60106060 00101060 00101010 00000000     ``.``...........
d0095a94:	10000000 60106010 60601060 60606060     .....`.``.``````
d0095aa4:	60606060 60606060 4c606060 60606060     ```````````L````
d0095ab4:	60606060 60606060 60606060 60606060     ````````````````
d0095ac4:	60606060 60606060 4c606060 60606060     ```````````L````
d0095ad4:	60606060 60606060 60606060 60606060     ````````````````
d0095ae4:	60606060 60606060 60606060 60606060     ````````````````
d0095af4:	60106060 10101060 00001010 00000000     ``.``...........
	...
d0095b80:	60601000 60106060 60606060 60606060     ..````.`````````
d0095b90:	60606060 60606060 60606060 60606060     ````````````````
d0095ba0:	60606060 10101060 10606060 10100000     `````...```.....
d0095bb0:	60100010 60106060 60606060 60606060     ...```.`````````
d0095bc0:	60606060 60606060 4c606060 6060604c     ```````````LL```
d0095bd0:	60606060 60606060 60606060 60606060     ````````````````
d0095be0:	60606060 60606060 4c606060 6060604c     ```````````LL```
d0095bf0:	60606060 60606060 60606060 60606060     ````````````````
d0095c00:	60606060 60606060 60606060 60606060     ````````````````
d0095c10:	60606060 60601060 00106060 00000000     `````.````......
	...
d0095c98:	10100000 60606010 60106060 60606060     .....`````.`````
d0095ca8:	60606060 60606060 60606060 60606060     ````````````````
d0095cb8:	60606060 60606060 60601060 60606060     `````````.``````
d0095cc8:	60601010 60101060 60106060 60606060     ..```..```.`````
d0095cd8:	60606060 60606060 60606060 4c606060     ```````````````L
d0095ce8:	60604c4c 60606060 60606060 4c606060     LL`````````````L
d0095cf8:	60606060 60606060 60606060 4c606060     ```````````````L
d0095d08:	60604c4c 60606060 60606060 4c606060     LL`````````````L
d0095d18:	60606060 60606060 60606060 60606060     ````````````````
d0095d28:	60606060 60606060 60601060 10606060     `````````.`````.
d0095d38:	00001010 00000000 00000000 00000000     ................
	...
d0095db4:	60601010 60606010 60606060 60606060     ..``.```````````
d0095dc4:	60606060 60606060 60606060 60606060     ````````````````
d0095dd4:	60606060 60606060 60606060 60606060     ````````````````
d0095de4:	60606060 60106060 60606060 60606060     ``````.`````````
d0095df4:	60606060 60606060 60606060 60606060     ````````````````
d0095e04:	604c4c4c 60606060 60606060 4c4c6060     LLL```````````LL
d0095e14:	60606060 60606060 60606060 60606060     ````````````````
d0095e24:	604c4c4c 60606060 60606060 4c4c6060     LLL```````````LL
d0095e34:	60606060 60606060 60606060 60606060     ````````````````
d0095e44:	60606060 60606060 60606060 10606060     ```````````````.
d0095e54:	10106060 00000000 00000000 00000000     ``..............
	...
d0095ecc:	10000000 60606060 60606060 60606060     ....````````````
d0095edc:	60606060 60606060 60606060 60606060     ````````````````
d0095eec:	60606060 60606060 60606060 60606060     ````````````````
d0095efc:	60606060 60606060 60606060 60606060     ````````````````
d0095f0c:	60606060 60606060 60606060 60606060     ````````````````
d0095f1c:	60606060 4c4c4c4c 6060604c 60606060     ````LLLLL```````
d0095f2c:	604c4c60 60606060 60606060 60606060     `LL`````````````
d0095f3c:	60606060 4c4c4c4c 6060604c 60606060     ````LLLLL```````
d0095f4c:	604c4c60 60606060 60606060 60606060     `LL`````````````
d0095f5c:	60606060 60606060 60606060 60606060     ````````````````
d0095f6c:	60606060 60606060 00000010 00000000     ````````........
	...
d0095fe8:	60100000 60606060 60606060 60606060     ...`````````````
d0095ff8:	60606060 60606060 60606060 60606060     ````````````````
d0096008:	60606060 60606060 60606060 60606060     ````````````````
d0096018:	60606060 60606060 60606060 60606060     ````````````````
d0096028:	60606060 60606060 60606060 60606060     ````````````````
d0096038:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0096048:	604c4c4c 60606060 60606060 60606060     LLL`````````````
d0096058:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0096068:	604c4c4c 60606060 60606060 60606060     LLL`````````````
d0096078:	60606060 60606060 60606060 60606060     ````````````````
d0096088:	60606060 60606060 00001060 00000000     `````````.......
	...
d0096104:	4c101010 60606060 60606060 60606060     ...L````````````
d0096114:	60606060 60606060 60606060 60606060     ````````````````
d0096124:	60606060 60606060 60606060 60606060     ````````````````
d0096134:	60606060 60606060 60606060 60606060     ````````````````
d0096144:	60606060 60606060 60606060 60606060     ````````````````
d0096154:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0096164:	604c4c4c 60606060 60606060 60606060     LLL`````````````
d0096174:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0096184:	604c4c4c 60606060 60606060 60606060     LLL`````````````
d0096194:	60606060 60606060 60606060 60606060     ````````````````
d00961a4:	60606060 60606060 1010104c 00000000     ````````L.......
	...
d009621c:	10100000 6060604c 60606060 60606060     ....L```````````
d009622c:	60606060 60606060 60606060 4c606060     ```````````````L
d009623c:	60606060 60606060 60606060 60606060     ````````````````
d009624c:	60606060 604c6060 60606060 60606060     ``````L`````````
d009625c:	60606060 60606060 60606060 60606060     ````````````````
d009626c:	60606060 4c4c6060 4c4c4c4c 4c4c4c4c     ``````LLLLLLLLLL
d009627c:	4c4c4c4c 4c4c4c4c 6060604c 60606060     LLLLLLLLL```````
d009628c:	60606060 4c4c6060 4c4c4c4c 4c4c4c4c     ``````LLLLLLLLLL
d009629c:	4c4c4c4c 4c4c4c4c 6060604c 60606060     LLLLLLLLL```````
d00962ac:	60606060 60606060 60606060 60606060     ````````````````
d00962bc:	60606060 60606060 10606060 4c606060     ```````````.```L
d00962cc:	00001010 00000000 00000000 00000000     ................
	...
d0096338:	604c1000 60606060 60606060 60606060     ..L`````````````
d0096348:	60606060 60606060 60606060 4c606060     ```````````````L
d0096358:	60606060 4c606060 604c4c4c 60606060     ```````LLLL`````
d0096368:	60606060 4c4c6060 6060604c 60606060     ``````LLL```````
d0096378:	60606060 60606060 60606060 60604c4c     ````````````LL``
d0096388:	60606060 4c4c4c60 4c4c4c4c 4c4c4c4c     `````LLLLLLLLLLL
d0096398:	4c4c4c4c 4c4c4c4c 604c4c4c 60606060     LLLLLLLLLLL`````
d00963a8:	60606060 4c4c4c60 4c4c4c4c 4c4c4c4c     `````LLLLLLLLLLL
d00963b8:	4c4c4c4c 4c4c4c4c 604c4c4c 60606060     LLLLLLLLLLL`````
d00963c8:	60606060 4c4c6060 60606060 60606060     ``````LL````````
d00963d8:	60606060 60606060 60106060 60606060     ``````````.`````
d00963e8:	0000104c 00000000 00000000 00000000     L...............
	...
d0096410:	10101010 10101010 00000010 00000000     ................
	...
d0096454:	60601000 60606060 60606060 60606060     ..``````````````
d0096464:	60606060 60606060 4c606060 4c4c4c4c     ```````````LLLLL
d0096474:	4c4c4c4c 4c4c4c60 4c4c4c4c 6060604c     LLLL`LLLLLLLL```
d0096484:	60606060 4c4c6060 60604c4c 60606060     ``````LLLL``````
d0096494:	60606060 60606060 4c606060 4c4c4c4c     ```````````LLLLL
d00964a4:	4c4c604c 4c4c4c4c 4c4c4c4c 4c4c4c4c     L`LLLLLLLLLLLLLL
d00964b4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 60604c4c     LLLLLLLLLLLLLL``
d00964c4:	4c4c6060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ``LLLLLLLLLLLLLL
d00964d4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 60604c4c     LLLLLLLLLLLLLL``
d00964e4:	4c606060 4c4c4c4c 6060604c 60606060     ```LLLLLL```````
d00964f4:	60606060 60606060 60606060 60606060     ````````````````
d0096504:	00001060 00000000 00000000 00000000     `...............
	...
d0096528:	10101000 70707070 70707070 10101070     ....ppppppppp...
	...
d0096570:	60601000 60606060 60606060 60606060     ..``````````````
d0096580:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d0096590:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d00965a0:	6060604c 4c4c4c4c 60604c4c 60606060     L```LLLLLL``````
d00965b0:	4c606060 4c4c4c4c 4c4c4c4c 4c4c4c4c     ```LLLLLLLLLLLLL
d00965c0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d00965d0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d00965e0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d00965f0:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0096600:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0096610:	6060604c 60606060 60606060 60606060     L```````````````
d0096620:	00001060 00000000 00000000 00000000     `...............
	...
d0096644:	70707010 70707070 70707070 70707070     .ppppppppppppppp
d0096654:	10101010 10101010 10101010 10101010     ................
d0096664:	10101010 10101010 10101010 10101010     ................
d0096674:	10101010 00000000 00000000 00000000     ................
d0096684:	00000000 10101000 60606010 60606060     .........```````
d0096694:	60606060 4c606060 4c4c4c4c 4c10104c     ```````LLLLLL..L
d00966a4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d00966b4:	4c4c4c4c 4c10104c 4c604c4c 4c4c4c4c     LLLLL..LLL`LLLLL
d00966c4:	60604c4c 604c4c60 4c4c4c60 4c10104c     LL```LL``LLLL..L
d00966d4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d00966e4:	4c4c4c4c 4c104c4c 4c4c4c4c 4c4c4c4c     LLLLLL.LLLLLLLLL
d00966f4:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0096704:	4c4c4c4c 4c104c4c 4c4c4c4c 4c4c4c4c     LLLLLL.LLLLLLLLL
d0096714:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0096724:	4c4c4c4c 4c10104c 4c4c4c4c 6060604c     LLLLL..LLLLLL```
d0096734:	60604c60 4c4c6060 0000104c 00000000     `L````LLL.......
	...
d0096758:	10101010 10101010 70707070 70707070     ........pppppppp
d0096768:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096778:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096788:	70707070 70707070 70707070 10101010     pppppppppppp....
d0096798:	10101010 10101010 10101010 70707010     .............ppp
d00967a8:	60606010 60606060 60606060 104c4c60     .````````````LL.
d00967b8:	4c4c4c4c 10104c4c 4c4c4c10 4c4c4c4c     LLLLLL...LLLLLLL
d00967c8:	1010104c 10101010 104c4c4c 4c4c1010     L.......LLL...LL
d00967d8:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d00967e8:	4c4c4c4c 10104c4c 4c4c4c10 4c4c4c4c     LLLLLL...LLLLLLL
d00967f8:	4c4c4c4c 4c4c4c4c 104c4c4c 10201010     LLLLLLLLLLL... .
d0096808:	4c4c4c4c 4c4c4c4c 4c4c1010 4c4c4c4c     LLLLLLLL..LLLLLL
d0096818:	4c4c4c4c 4c4c4c4c 104c4c4c 10201010     LLLLLLLLLLL... .
d0096828:	4c4c4c4c 4c4c4c4c 4c4c1010 4c4c4c4c     LLLLLLLL..LLLLLL
d0096838:	4c4c4c4c 4c4c4c4c 104c4c4c 4c4c1010     LLLLLLLLLLL...LL
d0096848:	4c4c4c4c 4c4c4c4c 4c4c4c4c 4c4c4c4c     LLLLLLLLLLLLLLLL
d0096858:	10107010 10101010 10101010 10101010     .p..............
d0096868:	10101010 10101010 10101010 70707070     ............pppp
d0096878:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096888:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096898:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00968a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00968b8:	70707070 70707070 70707070 10101070     ppppppppppppp...
d00968c8:	4c4c4c4c 4c4c4c4c 104c4c4c 4c4c4c4c     LLLLLLLLLLL.LLLL
d00968d8:	104c4c4c 10101010 10101010 70707010     LLL..........ppp
d00968e8:	70707070 10101010 4c4c4c10 104c4c4c     pppp.....LLLLLL.
d00968f8:	4c4c4c10 4c4c4c4c 10104c4c 4c4c4c4c     .LLLLLLLLL..LLLL
d0096908:	104c4c4c 10101010 4c4c4c4c 4c4c4c4c     LLL.....LLLLLLLL
d0096918:	4c4c4c4c 10101010 28282810 4c4c1010     LLLL.....(((..LL
d0096928:	104c4c4c 4c101010 4c4c4c4c 4c4c4c4c     LLL....LLLLLLLLL
d0096938:	4c4c4c4c 10101010 28282810 4c4c1010     LLLL.....(((..LL
d0096948:	104c4c4c 4c101010 4c4c4c4c 4c4c4c4c     LLL....LLLLLLLLL
d0096958:	4c4c4c4c 10101010 4c4c4c10 4c4c4c4c     LLLL.....LLLLLLL
d0096968:	10104c4c 4c4c4c4c 104c4c4c 70707070     LL..LLLLLLL.pppp
d0096978:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096988:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096998:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00969d8:	70707070 70707070 70707070 10101010     pppppppppppp....
d00969e8:	10104c4c 10101010 10101010 10101010     LL..............
d00969f8:	70702810 70707070 70707070 70707070     .(pppppppppppppp
d0096a08:	10287070 10101010 70101010 10101070     pp(........pp...
d0096a18:	10101010 10701010 10101010 10101010     ......p.........
d0096a28:	10702810 10101010 10101010 10101010     .(p.............
d0096a38:	70282810 70707070 10101070 10101010     .((pppppp.......
d0096a48:	10207028 10101010 10101010 10101010     (p .............
d0096a58:	70282810 70707070 10101070 10101010     .((pppppp.......
d0096a68:	10207028 10101010 10101010 10101010     (p .............
d0096a78:	10287010 10101010 10101010 10101010     .p(.............
d0096a88:	10101010 70101010 70707070 70707070     .......ppppppppp
d0096a98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096aa8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ab8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ac8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ad8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096ae8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096af8:	70707070 70707070 70707070 70701010     pppppppppppp..pp
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
d0096df8:	70702870 70707070 70707070 70707070     p(pppppppppppppp
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
d0096ef8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f08:	70707070 70707070 70707070 70702028     pppppppppppp( pp
d0096f18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096f98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096fa8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096fb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0096fc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
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
d00975f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097608:	70707070 70707070 70707070 70707070     pppppppppppppppp
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
d00976f8:	70707070 70707070 70707070 70702870     ppppppppppppp(pp
d0097708:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097718:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097728:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097738:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097748:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097758:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097768:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097778:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097788:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097798:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977a8:	70707070 70707070 70707070 70702870     ppppppppppppp(pp
d00977b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977c8:	70707070 70707070 70707070 70702870     ppppppppppppp(pp
d00977d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00977f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097808:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097818:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097828:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097838:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097848:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097858:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097868:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097878:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097888:	70707070 70707070 70707070 70707070     pppppppppppppppp
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
d0097958:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097968:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097978:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097988:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097998:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00979f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097a98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097aa8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ab8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ac8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ad8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ae8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097af8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097b98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ba8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097bb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097bc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097bd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097be8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097bf8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097c98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ca8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097cb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097cc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097cd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ce8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097cf8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097d98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097da8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097db8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097dc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097dd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097de8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097df8:	70707070 70707070 70707070 10101010     pppppppppppp....
d0097e08:	10101010 70707010 70707070 70707070     .....ppppppppppp
d0097e18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097e98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ea8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097eb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ec8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ed8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ee8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ef8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097f08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097f18:	70707070 70707070 20101070 10202020     ppppppppp..    .
d0097f28:	70707070 10107070 10101010 10101010     pppppp..........
d0097f38:	10101010 10101010 10101010 10101010     ................
d0097f48:	10101010 10101010 10101010 10101010     ................
d0097f58:	10101010 10101010 10101010 10101010     ................
d0097f68:	10101010 10101010 10101010 70707070     ............pppp
d0097f78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097f88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097f98:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097fa8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097fb8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097fc8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097fd8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097fe8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0097ff8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098008:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098018:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098028:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098038:	70707070 20107070 10202020 10101010     pppppp.    .....
d0098048:	28281010 28282828 28282828 28282828     ..((((((((((((((
d0098058:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098068:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098078:	28282828 28282828 28282828 20202020     ((((((((((((    
d0098088:	10202020 70701010 70707070 70707070        ...pppppppppp
d0098098:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00980f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098108:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098118:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098128:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098138:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098148:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098158:	10707070 10202020 28282828 28282828     ppp.   .((((((((
d0098168:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098178:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098188:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098198:	28282828 28282828 28202828 20202020     (((((((((( (    
d00981a8:	10101020 70707010 70707070 70707070      ....ppppppppppp
d00981b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00981c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00981d8:	70102070 70707070 70707070 70707070     p .ppppppppppppp
d00981e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00981f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098208:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098218:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098228:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098238:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098248:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098258:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098268:	70707070 70707070 70707070 10101070     ppppppppppppp...
d0098278:	10202020 28282820 28282828 28282828        . (((((((((((
d0098288:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098298:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00982a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00982b8:	28282828 20282828 20282028 10102020     ((((((( ( (   ..
d00982c8:	10101010 70707070 70707070 70707070     ....pppppppppppp
d00982d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00982e8:	70707070 70707070 70707070 70201010     pppppppppppp.. p
d00982f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098308:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098318:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098328:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098338:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098348:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098358:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098368:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098378:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098388:	70707070 10107070 10202010 10202020     pppppp...  .   .
d0098398:	28282820 28282828 28282828 28282828      (((((((((((((((
d00983a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00983b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00983c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00983d8:	28282828 28202028 10202820 20202010     (((((  ( ( ..   
d00983e8:	10101010 70707070 70707070 70707070     ....pppppppppppp
d00983f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098408:	70707070 20707070 70702010 70707070     ppppppp . pppppp
d0098418:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098428:	70707070 70707070 70707010 70707070     pppppppp.ppppppp
d0098438:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098448:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098458:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098468:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098478:	70707070 70707070 70707070 10707070     ppppppppppppppp.
d0098488:	10101010 10101010 10101010 10101010     ................
d0098498:	10101010 10101010 10101010 10101010     ................
d00984a8:	28201010 20102828 20202020 28282010     .. (((.     . ((
d00984b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00984c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00984d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00984e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00984f8:	20282828 20282028 28202010 20202020     ((( ( ( .  (    
d0098508:	10101010 10101010 10101010 10101010     ................
d0098518:	10101010 10101010 10101010 10101010     ................
d0098528:	10201010 10102010 10101010 10101010     .. .. ..........
d0098538:	10101010 10101010 10101010 10101010     ................
d0098548:	10101010 10101028 70707070 70707070     ....(...pppppppp
d0098558:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098568:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098578:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098588:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098598:	70707070 10107070 28101010 28282828     pppppp.....(((((
d00985a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985c8:	70281028 70707070 28282010 28282828     (.(ppppp. ((((((
d00985d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00985f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098608:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098618:	28202828 28201020 20202028 20202020     (( ( . ((       
d0098628:	28202020 28282828 28282828 28282828        (((((((((((((
d0098638:	28282828 28282828 28282828 10202828     (((((((((((((( .
d0098648:	28282810 28282828 28282828 28282828     .(((((((((((((((
d0098658:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098668:	20202028 10101010 70707010 70707070     (   .....ppppppp
d0098678:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098688:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098698:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00986a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00986b8:	20101010 28282820 28282828 28282828     ...  (((((((((((
d00986c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00986d8:	28282828 28282828 28282828 70701028     (((((((((((((.pp
d00986e8:	28707070 28202020 28282828 28282828     ppp(   (((((((((
d00986f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098708:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098718:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098728:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d0098738:	28102028 20202828 20282028 28282028     ( .(((  ( ( ( ((
d0098748:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098758:	28282828 28282828 20282828 28281010     ((((((((((( ..((
d0098768:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098778:	28282828 28282828 28282828 20202828     ((((((((((((((  
d0098788:	20202020 70101020 70707070 70707070          ..ppppppppp
d0098798:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00987a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00987b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00987c8:	70707070 70707070 10107070 20201020     pppppppppp.. .  
d00987d8:	28202820 28282828 28282828 28282828      ( (((((((((((((
d00987e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00987f8:	28282828 28282828 70701028 70707070     (((((((((.pppppp
d0098808:	20707070 28282828 28282828 28282828     ppp ((((((((((((
d0098818:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098828:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098838:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098848:	28282828 28282828 28282828 10202028     (((((((((((((  .
d0098858:	28282828 28282820 28282820 28282828     (((( ((( (((((((
d0098868:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098878:	28282828 28202828 28201020 28282828     (((((( ( . (((((
d0098888:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098898:	28282828 28282828 28282828 20202020     ((((((((((((    
d00988a8:	70102020 70707070 70707070 70707070       .ppppppppppppp
d00988b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00988c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00988d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00988e8:	70707070 10107070 20202010 28202020     pppppp...      (
d00988f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098908:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098918:	28282828 10101028 70707070 20207070     (((((...pppppp  
d0098928:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098938:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098948:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098958:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098968:	28282828 28282828 20282828 28282820     (((((((((((  (((
d0098978:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098988:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098998:	28282828 28281020 28282828 28282828     (((( .((((((((((
d00989a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00989b8:	28282828 28282828 20282828 70102020     (((((((((((   .p
d00989c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00989d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00989e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00989f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098a08:	70707070 20202010 20202020 28282820     pppp.        (((
d0098a18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a38:	20202028 20202020 28102828 28282828     (       ((.(((((
d0098a48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098a88:	28282828 28282828 28282820 28282828     (((((((( (((((((
d0098a98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098aa8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ab8:	28202028 28282828 28282828 28282828     (  (((((((((((((
d0098ac8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ad8:	28282828 20282828 70701020 70707070     (((((((  .pppppp
d0098ae8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098af8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098b08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098b18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098b28:	20107070 20202020 20282020 28282828     pp.       ( ((((
d0098b38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b48:	28282828 28282828 28282828 20282028     ((((((((((((( ( 
d0098b58:	28282820 28201028 28282828 28282828      ((((. (((((((((
d0098b68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098b98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ba8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098bb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098bc8:	28282828 28282828 28282828 28282028     ((((((((((((( ((
d0098bd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098be8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098bf8:	20282828 70707010 70707070 70707070     ((( .ppppppppppp
d0098c08:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098c18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098c28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098c38:	70707070 70707070 70707070 10707070     ppppppppppppppp.
d0098c48:	20202010 20202020 28202820 28282828     .        ( (((((
d0098c58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098c68:	28282828 28282828 28202828 28282828     (((((((((( (((((
d0098c78:	28282010 28282828 28282828 28282828     . ((((((((((((((
d0098c88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098c98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ca8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098cb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098cc8:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d0098cd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ce8:	28282828 28282828 28202828 28282828     (((((((((( (((((
d0098cf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098d08:	28282828 28282828 28282828 10202828     (((((((((((((( .
d0098d18:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098d28:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098d38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098d48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098d58:	70707070 70707070 70707070 20101070     ppppppppppppp.. 
d0098d68:	20202020 20282020 28282028 28282828           ( ( ((((((
d0098d78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098d88:	28282828 28202828 20282828 28202820     (((((( ((((  ( (
d0098d98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098da8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098db8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098dc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098dd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098de8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098df8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098e08:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d0098e18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098e28:	28282828 28282828 10202028 70707070     (((((((((  .pppp
d0098e38:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098e48:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098e58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098e68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098e78:	70707070 70707070 10707070 20202010     ppppppppppp..   
d0098e88:	20202020 28282020 28282828 28282828           ((((((((((
d0098e98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ea8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098eb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ec8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ed8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ee8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098ef8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098f48:	28282828 70102020 70707070 70707070     ((((  .ppppppppp
d0098f58:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098f68:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098f78:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098f88:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0098f98:	70707070 70707070 10101070 20202020     ppppppppp...    
d0098fa8:	28282820 20202028 28282020 20202828      ((((     ((((  
d0098fb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098fc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098fd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0098fe8:	28282828 28282828 28282828 28202020     ((((((((((((   (
d0098ff8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099008:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099018:	28282828 28282828 28202828 28282828     (((((((((( (((((
d0099028:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099038:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099048:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099058:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d0099068:	70701020 70707070 70707070 70707070      .pppppppppppppp
d0099078:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0099088:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0099098:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00990a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00990b8:	70707070 70707070 28201010 28282828     pppppppp.. (((((
d00990c8:	28282028 28202828 28202828 28282820     ( (((( ((( ( (((
d00990d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00990e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00990f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099108:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d0099118:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099128:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099138:	28282828 28202828 28282828 28282828     (((((( (((((((((
d0099148:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099158:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099168:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099178:	28282828 28282828 20282828 70707010     ((((((((((( .ppp
d0099188:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0099198:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00991a8:	70707070 70707070 70707070 70207070     pppppppppppppp p
d00991b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00991c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00991d8:	70707070 10107070 28282828 28202828     pppppp..(((((( (
d00991e8:	28202828 20282828 28282828 28282828     (( (((( ((((((((
d00991f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099208:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099218:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099228:	28202828 28282828 28282820 28282828     (( ((((( (((((((
d0099238:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099248:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099258:	10282828 28282828 28282828 28282828     (((.((((((((((((
d0099268:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099278:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099288:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099298:	28282828 20202828 70707070 70707070     ((((((  pppppppp
d00992a8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00992b8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00992c8:	70707070 70707070 20107070 70707070     pppppppppp. pppp
d00992d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00992e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00992f8:	70707070 28282810 28202828 20282828     pppp.((((( (((( 
d0099308:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099318:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099328:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099338:	28282828 28282828 28282828 28282028     ((((((((((((( ((
d0099348:	28282828 28282820 28282828 28282828     (((( (((((((((((
d0099358:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099368:	28282828 28282828 28282828 10282828     (((((((((((((((.
d0099378:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099388:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099398:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00993a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00993b8:	70102828 70707070 70707070 70707070     ((.ppppppppppppp
d00993c8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00993d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00993e8:	70707070 10207070 70701020 70707070     pppppp . .pppppp
d00993f8:	70707070 70707070 70707070 10101070     ppppppppppppp...
d0099408:	10101010 10101010 10101010 10101010     ................
d0099418:	28282810 28282028 20282828 28282828     .(((( ((((( ((((
d0099428:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099438:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099448:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099458:	28282828 28282828 28282820 28282828     (((((((( (((((((
d0099468:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d0099478:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099488:	28282828 28282828 20282828 28282810     ((((((((((( .(((
d0099498:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00994a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00994b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00994c8:	28282828 28282828 28282828 70701028     (((((((((((((.pp
d00994d8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00994e8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d00994f8:	70707070 70707070 70707070 70707070     pppppppppppppppp
d0099508:	20707070 70102010 70707070 70707070     ppp . .ppppppppp
d0099518:	70707070 70707070 10707070 20101010     ppppppppppp.... 
d0099528:	20202020 20202020 10202020 28282828                .((((
d0099538:	28282820 28202828 28282828 28282828      ((((( (((((((((
d0099548:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099558:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099568:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099578:	20282828 28282828 28282828 28282028     ((( ((((((((( ((
d0099588:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099598:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00995a8:	28282828 28282828 28281010 28282828     ((((((((..((((((
d00995b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00995c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00995d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00995e8:	28282828 28282828 10101028 10101010     (((((((((.......
d00995f8:	10101010 10101010 10101010 10101010     ................
d0099608:	10101010 10101010 10101010 10101010     ................
d0099618:	10101010 10101010 10101010 10101010     ................
d0099628:	10101010 10101010 10101010 10101010     ................
d0099638:	10101010 10101010 20202020 20282020     ........      ( 
d0099648:	28202028 28102020 28282828 28282820     (  (  .((((( (((
d0099658:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d0099668:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099678:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099688:	28282828 28282828 28282828 28202828     (((((((((((((( (
d0099698:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d00996a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996c8:	28282828 28201028 28282828 28282828     (((((. (((((((((
d00996d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00996f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099708:	28282828 20102828 28282820 28282828     ((((((.  (((((((
d0099718:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099728:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099738:	28282828 28282828 20282828 20101010     ((((((((((( ... 
d0099748:	28282828 28282828 28282828 28202028     (((((((((((((  (
d0099758:	20102020 20202020 28202828 28282820       .     (( ( (((
d0099768:	28201020 20282828 28282828 28282820      . (((( (((( (((
d0099778:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099788:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099798:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00997a8:	28282828 28282828 28202828 28282828     (((((((((( (((((
d00997b8:	28282828 28282820 28282828 20282828     (((( (((((((((( 
d00997c8:	28282020 28282828 28282828 28282828       ((((((((((((((
d00997d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00997e8:	28102828 28282828 28282828 28282828     ((.(((((((((((((
d00997f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099808:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099818:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099828:	28102828 28282828 28282828 28282828     ((.(((((((((((((
d0099838:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099848:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099858:	28282828 20282828 28201010 28282828     ((((((( .. (((((
d0099868:	28282828 28282828 20282828 20102028     ((((((((((( ( . 
d0099878:	28282820 28282828 20282828 28282010      (((((((((( . ((
d0099888:	28282828 20282020 28282828 28282828     ((((  ( ((((((((
d0099898:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998b8:	28282828 28282828 28282828 28202028     (((((((((((((  (
d00998c8:	28282828 20282828 28282828 20282828     ((((((( ((((((( 
d00998d8:	28282828 28282828 20282828 20202828     ((((((((((( ((  
d00998e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00998f8:	28282828 28282828 28282828 28202828     (((((((((((((( (
d0099908:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099918:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099928:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099938:	28282828 28282828 28282828 28102828     ((((((((((((((.(
d0099948:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099958:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099968:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099978:	10282828 28201010 28282828 28282828     (((... (((((((((
d0099988:	28282828 28282828 28201020 28282828     (((((((( . (((((
d0099998:	28282828 10202828 28282820 28282828     (((((( . (((((((
d00999a8:	28202828 28282828 20202828 28282828     (( (((((((  ((((
d00999b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00999c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d00999d8:	28282828 28282828 28202820 28282828     (((((((( ( (((((
d00999e8:	28282828 28282820 20282828 28282828     (((( (((((( ((((
d00999f8:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d0099a08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a58:	28282828 28282828 20282828 28282828     ((((((((((( ((((
d0099a68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099a88:	28282828 28282828 28282828 10282828     (((((((((((((((.
d0099a98:	28281010 28282828 28282828 28282828     ..((((((((((((((
d0099aa8:	28282828 28282010 28282828 28282828     ((((. ((((((((((
d0099ab8:	10202828 28282828 28282828 28282828     (( .((((((((((((
d0099ac8:	28282828 20282028 28282828 28282828     ((((( ( ((((((((
d0099ad8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ae8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099af8:	20282828 20282828 28282828 28282828     ((( ((( ((((((((
d0099b08:	28202028 28202028 28282828 28282828     (  ((  (((((((((
d0099b18:	20282828 28282828 28282820 28282828     ((( (((( (((((((
d0099b28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b38:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d0099b48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b78:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d0099b88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099b98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ba8:	28282828 28282828 10202828 28282010     (((((((((( .. ((
d0099bb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099bc8:	28282810 28282828 28282828 28102828     .(((((((((((((.(
d0099bd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099be8:	20282820 28282828 28282828 28282828      (( ((((((((((((
d0099bf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c08:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d0099c18:	20282828 28282828 28282828 20282828     ((( ((((((((((( 
d0099c28:	28282820 28282828 28282828 28282828      (((((((((((((((
d0099c38:	28282020 28282820 28282828 28282828       (( (((((((((((
d0099c48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c58:	28282828 28282820 28282828 28282828     (((( (((((((((((
d0099c68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099c98:	28282828 28282810 28282828 28282828     ((((.(((((((((((
d0099ca8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099cb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099cc8:	28282828 10282828 28282828 28282828     (((((((.((((((((
d0099cd8:	28282828 28282828 28282828 28282820     (((((((((((( (((
d0099ce8:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d0099cf8:	28282828 28282828 28282828 28282820     (((((((((((( (((
d0099d08:	28282820 28282828 28282828 28282828      (((((((((((((((
d0099d18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d28:	28282828 28282828 20282828 28282828     ((((((((((( ((((
d0099d38:	28282820 28282828 28282828 28282828      (((((((((((((((
d0099d48:	28282828 28282828 28282828 20202828     ((((((((((((((  
d0099d58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d78:	28282820 28282828 28282828 28282828      (((((((((((((((
d0099d88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099d98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099da8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099db8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d0099dc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099dd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099de8:	28202828 28282828 28282828 28282828     (( (((((((((((((
d0099df8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e08:	28282828 28282028 28282828 28282828     ((((( ((((((((((
d0099e18:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d0099e28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e48:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d0099e58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099e98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ea8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099eb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ec8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ed8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ee8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099ef8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f18:	20282828 28282828 28282828 28282828     ((( ((((((((((((
d0099f28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f38:	28282828 28202020 28282828 28282828     ((((   (((((((((
d0099f48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f68:	28282828 28202020 28282828 28282828     ((((   (((((((((
d0099f78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099f98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fa8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d0099fe8:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d0099ff8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a008:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a018:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a028:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a038:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a048:	28282828 28282828 20202828 28282828     ((((((((((  ((((
d009a058:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a068:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a078:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a088:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a098:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a0f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a108:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a118:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a128:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a138:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a148:	28282828 28282828 20282828 28282828     ((((((((((( ((((
d009a158:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a168:	28282828 20282028 28282828 28282828     ((((( ( ((((((((
d009a178:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d009a188:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a198:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1b8:	28282828 20202028 28282020 20202828     (((((     ((((  
d009a1c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a1f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a208:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a218:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a228:	28281028 28282828 28282828 28282828     (.((((((((((((((
d009a238:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a248:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a258:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a268:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d009a278:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a288:	10282820 28101010 28282828 10102828      ((....(((((((..
d009a298:	28281010 28282028 28282828 28282828     ..((( ((((((((((
d009a2a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2d8:	28282028 28202828 28202828 28282820     ( (((( ((( ( (((
d009a2e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a2f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a308:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a318:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a328:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a338:	28282828 28282828 28282828 28282028     ((((((((((((( ((
d009a348:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a358:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a368:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a378:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a388:	28102828 28282828 28282828 28282828     ((.(((((((((((((
d009a398:	28282828 28282828 10101028 20282820     (((((((((... (( 
d009a3a8:	28104c10 28282828 4c4c1010 28282810     .L.(((((..LL.(((
d009a3b8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d009a3c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a3d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a3e8:	28282828 28282828 28282828 28202828     (((((((((((((( (
d009a3f8:	28202828 20282828 28282828 28282828     (( (((( ((((((((
d009a408:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a418:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a428:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a438:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a448:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a458:	28282828 28282828 28282028 28282828     ((((((((( ((((((
d009a468:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a478:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a488:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a498:	28282828 28282828 28282828 28102828     ((((((((((((((.(
d009a4a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a4b8:	28282828 4c4c1028 28101010 104c4c10     (((((.LL...(.LL.
d009a4c8:	10102828 104c4c4c 28282828 28282810     ((..LLL.((((.(((
d009a4d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a4e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a4f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a508:	28282828 28282828 28202828 20282828     (((((((((( (((( 
d009a518:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a528:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a538:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a548:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a558:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a568:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a578:	28282828 28281028 28282828 28282828     (((((.((((((((((
d009a588:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a598:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a5a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a5b8:	28282828 28282828 28201028 28282828     (((((((((. (((((
d009a5c8:	28282828 28282828 10282828 28101010     (((((((((((....(
d009a5d8:	4c102828 104c5858 10581010 584c1010     ((.LXXL...X...LX
d009a5e8:	28104c4c 10282828 28282820 28282828     LL.((((. (((((((
d009a5f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a608:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a618:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a628:	28282828 28282028 20282828 28282828     ((((( ((((( ((((
d009a638:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a648:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a658:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a668:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a678:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a688:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a698:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d009a6a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a6b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a6c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a6d8:	28282828 28281010 28282828 28282828     ((((..((((((((((
d009a6e8:	28282828 10102828 104c4c4c 10101010     ((((((..LLL.....
d009a6f8:	4c58584c 4c58104c 58584c4c 2828104c     LXXLL.XLLLXXL.((
d009a708:	10102828 28282828 28282828 28282828     ((..((((((((((((
d009a718:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a728:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a738:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a748:	28282820 28202828 28282828 28282828      ((((( (((((((((
d009a758:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a768:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a778:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a788:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a798:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a7a8:	28282828 28282828 28282828 28202028     (((((((((((((  (
d009a7b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a7c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a7d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a7e8:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d009a7f8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d009a808:	28282828 584c1010 10104c58 58584c10     ((((..LXXL...LXX
d009a818:	58584c58 4c585858 2828104c 28102028     XLXXXXXLL.((( .(
d009a828:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a838:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a848:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a858:	28282828 28282828 28282828 28282820     (((((((((((( (((
d009a868:	28282028 28282828 28282828 28282828     ( ((((((((((((((
d009a878:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a888:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a898:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a8f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a908:	28282828 28282828 10282828 28282828     (((((((((((.((((
d009a918:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a928:	4c102828 58585858 58584c58 58585858     ((.LXXXXXLXXXXXX
d009a938:	4c4c5858 10282810 28281010 28282828     XXLL.((...((((((
d009a948:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a958:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a968:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a978:	28282828 20282828 28282828 28282820     ((((((( (((( (((
d009a988:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a998:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009a9f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa28:	28282828 20282828 28282828 28282828     ((((((( ((((((((
d009aa38:	28282828 28282828 28282828 10102828     ((((((((((((((..
d009aa48:	584c4c10 58585858 58585858 4c4c5858     .LLXXXXXXXXXXXLL
d009aa58:	4c101010 28104c4c 28282828 28282828     ...LLL.(((((((((
d009aa68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aa98:	28282828 20282020 28282828 28282828     ((((  ( ((((((((
d009aaa8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aab8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aac8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aad8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aae8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aaf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ab58:	28282828 10102828 4c101010 4c4c104c     ((((((.....LL.LL
d009ab68:	5858584c 58585858 58585858 4c4c4c4c     LXXXXXXXXXXXLLLL
d009ab78:	28281010 10101010 28282828 10282828     ..((....(((((((.
d009ab88:	28101010 28282828 28282828 28282828     ...(((((((((((((
d009ab98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aba8:	10282828 28101010 28282828 10102828     (((....(((((((..
d009abb8:	28201010 28282828 20202828 28282828     .. (((((((  ((((
d009abc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009abd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009abe8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009abf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ac78:	4c4c1028 584c104c 584c5858 58585858     (.LLL.LXXXLXXXXX
d009ac88:	58585858 4c4c5858 10104c4c 28282820     XXXXXXLLLL.. (((
d009ac98:	4c4c1028 28281010 10282828 2828104c     (.LL..(((((.L.((
d009aca8:	10102828 28282810 28282828 28282828     ((...(((((((((((
d009acb8:	28282828 28282828 10101028 28282828     (((((((((...((((
d009acc8:	28104c10 28282828 4c4c1010 28282810     .L.(((((..LL.(((
d009acd8:	28282828 20282028 28282828 28282828     ((((( ( ((((((((
d009ace8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009acf8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ad88:	28282828 28282828 28282828 10104c10     ((((((((((((.L..
d009ad98:	58584c10 58585858 58585858 58585858     .LXXXXXXXXXXXXXX
d009ada8:	4c4c584c 20281010 28282828 4c102828     LXLL..( ((((((.L
d009adb8:	10104c4c 4c102828 1028104c 4c4c1010     LL..((.LL.(...LL
d009adc8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d009add8:	28282828 4c4c1028 28101010 104c4c10     (((((.LL...(.LL.
d009ade8:	10102828 104c4c4c 28282828 28282828     ((..LLL.((((((((
d009adf8:	20282820 28282828 28282828 28282828      (( ((((((((((((
d009ae08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae18:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ae98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009aea8:	28282828 28282828 10281010 4c58584c     ((((((((..(.LXXL
d009aeb8:	4c4c4c4c 5858584c 58585858 104c4c4c     LLLLLXXXXXXXLLL.
d009aec8:	20282810 28282828 10282828 4c584c4c     .(( (((((((.LLXL
d009aed8:	58101010 4c101010 104c5858 10282828     ...X...LXXL.(((.
d009aee8:	28101010 28282828 10282828 28101010     ...((((((((....(
d009aef8:	4c102828 104c5858 10581010 584c1010     ((.LXXL...X...LX
d009af08:	28104c4c 28282828 28282828 28282820     LL.((((((((( (((
d009af18:	28282820 28282828 28282828 28282828      (((((((((((((((
d009af28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009af98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009afa8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009afb8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009afc8:	28282828 10282828 4c4c5858 1010104c     (((((((.XXLLL...
d009afd8:	4c4c5858 4c585858 4c4c4c4c 1010104c     XXLLXXXLLLLLL...
d009afe8:	28282828 28282828 58584c10 584c4c4c     ((((((((.LXXLLLX
d009aff8:	584c4c10 10104c58 4c101010 10104c4c     .LLXXL.....LLL..
d009b008:	28282828 10102828 104c4c4c 10101010     ((((((..LLL.....
d009b018:	4c58584c 4c58104c 58584c4c 2828104c     LXXLL.XLLLXXL.((
d009b028:	28282828 20282828 20282828 28282828     ((((((( ((( ((((
d009b038:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b048:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b058:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b068:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b078:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b088:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b098:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b0a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b0b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b0c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b0d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b0e8:	4c102828 104c4c58 4c102810 4c4c4c58     ((.LXLL..(.LXLLL
d009b0f8:	4c4c5858 4c4c4c4c 4c4c4c4c 28282810     XXLLLLLLLLLL.(((
d009b108:	28282828 584c4c10 58585858 5858584c     ((((.LLXXXXXLXXX
d009b118:	1010104c 4c58584c 28281010 28282828     L...LXXL..((((((
d009b128:	28282828 584c1010 10104c58 58584c10     ((((..LXXL...LXX
d009b138:	58584c58 4c585858 2828104c 28282828     XLXXXXXLL.((((((
d009b148:	28282828 28202020 28282828 28282828     ((((   (((((((((
d009b158:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b168:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b178:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b188:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b198:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b1f8:	28282828 28282828 28282828 4c102828     ((((((((((((((.L
d009b208:	2810104c 4c4c1028 1010104c 4c4c584c     L..((.LLL...LXLL
d009b218:	4c4c4c4c 10101010 28282810 28101010     LLLL.....(((...(
d009b228:	4c4c1028 58585858 58585858 5858584c     (.LLXXXXXXXXLXXX
d009b238:	104c5858 28282828 28282828 28282828     XXL.((((((((((((
d009b248:	4c102828 58585858 58584c58 58585858     ((.LXXXXXLXXXXXX
d009b258:	4c4c5858 10282810 28281010 28282828     XXLL.((...((((((
d009b268:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b278:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b288:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b298:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b2a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b2b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b2c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b2d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b2e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b2f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b308:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b318:	28282828 28282828 4c102828 28282810     ((((((((((.L.(((
d009b328:	4c4c4c10 10101010 4c10584c 104c4c4c     .LLL....LX.LLLL.
d009b338:	28281010 10282828 104c4c4c 4c4c1010     ..(((((.LLL...LL
d009b348:	58585858 58585858 4c585858 1010104c     XXXXXXXXXXXLL...
d009b358:	28282828 28282828 28282828 10102828     ((((((((((((((..
d009b368:	584c4c10 58585858 58585858 4c4c5858     .LLXXXXXXXXXXXLL
d009b378:	4c101010 28104c4c 28282828 28282828     ...LLL.(((((((((
d009b388:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b398:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b3f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b408:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b418:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b428:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b438:	28282828 20282828 28282028 4c4c4c10     ((((((( ( ((.LLL
d009b448:	10282810 104c4c4c 114c104c 28101111     .((.LLL.L.L....(
d009b458:	28282828 4c4c1010 58584c4c 58585858     ((((..LLLLXXXXXX
d009b468:	58585858 4c4c4c58 104c4c10 10101010     XXXXXLLL.LL.....
d009b478:	28282828 10102828 4c101010 4c4c104c     ((((((.....LL.LL
d009b488:	5858584c 58585858 58585858 4c4c4c4c     LXXXXXXXXXXXLLLL
d009b498:	28281010 28282828 28282828 28282828     ..((((((((((((((
d009b4a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b4b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b4c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b4d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b4e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b4f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b508:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b518:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b528:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b538:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b548:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b558:	20282828 28202828 4c4c4c10 10282810     ((( (( (.LLL.((.
d009b568:	104c4c10 1010104c 10112111 28282828     .LL.L....!..((((
d009b578:	10101028 4c4c4c4c 58585858 58585858     (...LLLLXXXXXXXX
d009b588:	4c585858 4c585858 4c4c4c10 28282810     XXXLXXXL.LLL.(((
d009b598:	4c4c1028 584c104c 584c5858 58585858     (.LLL.LXXXLXXXXX
d009b5a8:	58585858 4c4c5858 10104c4c 28282828     XXXXXXLLLL..((((
d009b5b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b5c8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b5d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b5e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b5f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b608:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b618:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b628:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b638:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b648:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b658:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b668:	28282828 28282828 28282828 28202828     (((((((((((((( (
d009b678:	28202828 4c4c1010 10282810 10104c10     (( (..LL.((..L..
d009b688:	2828104c 11211110 10282810 21211010     L.((..!..((...!!
d009b698:	4c4c1010 58584c58 58585858 58585858     ..LLXLXXXXXXXXXX
d009b6a8:	58585858 1010104c 2828104c 10104c10     XXXXL...L.((.L..
d009b6b8:	58584c10 58585858 58585858 58585858     .LXXXXXXXXXXXXXX
d009b6c8:	4c4c584c 28281010 28282828 28282828     LXLL..((((((((((
d009b6d8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b6e8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b6f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b708:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b718:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b728:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b738:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b748:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b758:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b768:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b778:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b788:	28282828 28282828 28202828 28202828     (((((((((( ((( (
d009b798:	4c101028 28282810 28104c10 28104c10     (..L.(((.L.(.L.(
d009b7a8:	21111028 10101011 21212929 4c101021     (..!....))!!!..L
d009b7b8:	58584c4c 58585858 4c4c4c58 584c4c4c     LLXXXXXXXLLLLLLX
d009b7c8:	28104c58 28281010 10281010 4c58584c     XL.(..((..(.LXXL
d009b7d8:	4c4c4c4c 5858584c 58585858 104c4c4c     LLLLLXXXXXXXLLL.
d009b7e8:	28282810 28282828 28282828 28282828     .(((((((((((((((
d009b7f8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b808:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b818:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b828:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b838:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b848:	20282828 28282828 28282828 28282828     ((( ((((((((((((
d009b858:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b868:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b878:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b888:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b898:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b8a8:	28282828 28202828 28202828 10102828     (((((( ((( (((..
d009b8b8:	28282810 28281010 28104c10 21111028     .(((..((.L.((..!
d009b8c8:	29211021 10102129 4c4c4c10 584c4c4c     !.!))!...LLLLLLX
d009b8d8:	4c4c5858 10105858 4c4c4c10 28105858     XXLLXX...LLLXX.(
d009b8e8:	28282828 10282828 4c4c5858 1010104c     (((((((.XXLLL...
d009b8f8:	4c4c5858 4c585858 4c4c4c4c 1010104c     XXLLXXXLLLLLL...
d009b908:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b918:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b928:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b938:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b948:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b958:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b968:	28282820 28282828 28282828 28282828      (((((((((((((((
d009b978:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b988:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b998:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b9a8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b9b8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009b9c8:	28282028 28202828 28282828 28282810     ( (((( (((((.(((
d009b9d8:	28281010 28101028 21102828 29211029     ..(((..(((.!).!)
d009b9e8:	4c4c1021 4c4c4c4c 4c4c4c4c 4c4c5858     !.LLLLLLLLLLXXLL
d009b9f8:	104c584c 4c101028 104c584c 28282828     LXL.(..LLXL.((((
d009ba08:	4c102828 104c4c58 4c102810 4c4c4c58     ((.LXLL..(.LXLLL
d009ba18:	4c4c5858 4c4c4c4c 4c4c4c4c 28282810     XXLLLLLLLLLL.(((
d009ba28:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ba38:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ba48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ba58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ba68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ba78:	28282828 28282828 28282828 28282820     (((((((((((( (((
d009ba88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009ba98:	28282828 28282828 28282828 20282828     ((((((((((((((( 
d009baa8:	28282020 28282828 28282828 28282828       ((((((((((((((
d009bab8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bac8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bad8:	28282828 28282828 28282828 28282028     ((((((((((((( ((
d009bae8:	28282028 28282828 28282828 28282810     ( ((((((((((.(((
d009baf8:	28102828 11102828 21102129 10101010     ((.(((..)!.!....
d009bb08:	4c4c1010 4c4c4c4c 10104c58 4c584c10     ..LLLLLLXL...LXL
d009bb18:	10282810 104c4c10 28282828 4c102828     .((..LL.((((((.L
d009bb28:	2810104c 4c4c1028 1010104c 4c4c584c     L..((.LLL...LXLL
d009bb38:	4c4c4c4c 10101010 28282810 28282828     LLLL.....(((((((
d009bb48:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bb58:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bb68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bb78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bb88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bb98:	28282828 28282828 28282820 28282828     (((((((( (((((((
d009bba8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bbb8:	28282828 28282828 20282828 20202828     ((((((((((( ((  
d009bbc8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bbd8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bbe8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bbf8:	28282828 28282828 28282028 28282820     ((((((((( (( (((
d009bc08:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bc18:	10102828 10212929 28281010 4c101010     ((..))!...((...L
d009bc28:	104c4c4c 10104c58 58581010 2828104c     LLL.XL....XXL.((
d009bc38:	104c1028 28282828 4c102828 28282810     (.L.((((((.L.(((
d009bc48:	4c4c4c10 10101010 4c10584c 104c4c4c     .LLL....LX.LLLL.
d009bc58:	28281010 28282828 28282828 28282828     ..((((((((((((((
d009bc68:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bc78:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bc88:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bc98:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bca8:	28282828 28282828 28282828 28282828     ((((((((((((((((
d009bcb8:	28282828 28282828 28282828              ((((((((((((

d009bcc4 <sineLUT>:
d009bcc4:	03020100 01020304 fdfeff00 fffefdfc     ................
d009bcd4:	03020100 01020304 fdfeff00 fffefdfc     ................
	...

d009bd00 <treewalkwidth>:
d009bd00:	44443e40                                @>DD

d009bd04 <_global_impure_ptr>:
d009bd04:	d009be14                                ....

d009bd08 <__sf_fake_stderr>:
	...

d009bd28 <__sf_fake_stdin>:
	...

d009bd48 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d009bd68 <_init>:
d009bd68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d009bd6a:	bf00      	nop

Disassembly of section .fini:

d009bd6c <_fini>:
d009bd6c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d009bd6e:	bf00      	nop
