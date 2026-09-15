
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
d008001e:	f001 fb11 	bl	d0081644 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 fb0c 	bl	d0081644 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 b96a 	b.w	d008030c <main>
d0080038:	d009c670 	.word	0xd009c670

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 f9c9 	bl	d00813e4 <malloc>
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
d0080230:	d009ec00 	.word	0xd009ec00
d0080234:	d0600000 	.word	0xd0600000
d0080238:	d009cb8c 	.word	0xd009cb8c

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
d0080284:	f001 f8a8 	bl	d00813d8 <__errno>
d0080288:	2209      	movs	r2, #9
d008028a:	4603      	mov	r3, r0
d008028c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0080290:	601a      	str	r2, [r3, #0]
d0080292:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0080294:	d009c6e4 	.word	0xd009c6e4
d0080298:	2001f000 	.word	0x2001f000

d008029c <_read>:
d008029c:	b508      	push	{r3, lr}
d008029e:	f001 f89b 	bl	d00813d8 <__errno>
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
d00802ea:	f001 f875 	bl	d00813d8 <__errno>
d00802ee:	220c      	movs	r2, #12
d00802f0:	4603      	mov	r3, r0
d00802f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00802f6:	601a      	str	r2, [r3, #0]
d00802f8:	bd10      	pop	{r4, pc}
d00802fa:	bf00      	nop
d00802fc:	d009c6e0 	.word	0xd009c6e0
d0080300:	d009ec00 	.word	0xd009ec00
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
d0080558:	d009cbc0 	.word	0xd009cbc0
d008055c:	d009cbe0 	.word	0xd009cbe0
d0080560:	d009c5e0 	.word	0xd009c5e0
d0080564:	d0083300 	.word	0xd0083300
d0080568:	d0082660 	.word	0xd0082660
d008056c:	d009cba0 	.word	0xd009cba0
d0080570:	d0082a60 	.word	0xd0082a60
d0080574:	d009c6f0 	.word	0xd009c6f0
d0080578:	d009c6ec 	.word	0xd009c6ec
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
d0080778:	d0082a60 	.word	0xd0082a60
d008077c:	d0083700 	.word	0xd0083700
d0080780:	d009c6e8 	.word	0xd009c6e8
d0080784:	d009cbc0 	.word	0xd009cbc0
d0080788:	d009cbe0 	.word	0xd009cbe0
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
d00807c8:	f000 ff34 	bl	d0081634 <puts>
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
d0080878:	d00832e0 	.word	0xd00832e0
d008087c:	d009cbe0 	.word	0xd009cbe0
d0080880:	d009cbc0 	.word	0xd009cbc0

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
d00808a8:	d009c600 	.word	0xd009c600
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
d0080980:	d009c600 	.word	0xd009c600
d0080984:	d009c700 	.word	0xd009c700
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
d0080ba8:	d009c940 	.word	0xd009c940
d0080bac:	d009c960 	.word	0xd009c960
d0080bb0:	d0086a18 	.word	0xd0086a18
d0080bb4:	d009c980 	.word	0xd009c980
d0080bb8:	00960020 	.word	0x00960020
d0080bbc:	d009cb80 	.word	0xd009cb80
d0080bc0:	d009cbe6 	.word	0xd009cbe6
d0080bc4:	00300020 	.word	0x00300020
d0080bc8:	00180020 	.word	0x00180020
d0080bcc:	2001f000 	.word	0x2001f000
d0080bd0:	d009cba0 	.word	0xd009cba0
d0080bd4:	d0086418 	.word	0xd0086418
d0080bd8:	d0094f10 	.word	0xd0094f10
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
d0080cb8:	d0083778 	.word	0xd0083778
d0080cbc:	d0085ab8 	.word	0xd0085ab8
d0080cc0:	d009c96c 	.word	0xd009c96c
d0080cc4:	d009c620 	.word	0xd009c620
d0080cc8:	d009c968 	.word	0xd009c968
d0080ccc:	d009c970 	.word	0xd009c970
d0080cd0:	d009c962 	.word	0xd009c962
d0080cd4:	d009c969 	.word	0xd009c969
d0080cd8:	d009c964 	.word	0xd009c964
d0080cdc:	d009cbec 	.word	0xd009cbec
d0080ce0:	d009cbe4 	.word	0xd009cbe4
d0080ce4:	d009cbe8 	.word	0xd009cbe8
d0080ce8:	d009cbea 	.word	0xd009cbea
d0080cec:	d009cbf0 	.word	0xd009cbf0
d0080cf0:	d009cbee 	.word	0xd009cbee

d0080cf4 <do_bubbastix_playdemo_screensaver>:
d0080cf4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080cf8:	4ca3      	ldr	r4, [pc, #652]	; (d0080f88 <do_bubbastix_playdemo_screensaver+0x294>)
d0080cfa:	b09b      	sub	sp, #108	; 0x6c
d0080cfc:	7823      	ldrb	r3, [r4, #0]
d0080cfe:	f10d 0227 	add.w	r2, sp, #39	; 0x27
d0080d02:	7865      	ldrb	r5, [r4, #1]
d0080d04:	f10d 0126 	add.w	r1, sp, #38	; 0x26
d0080d08:	f10d 0025 	add.w	r0, sp, #37	; 0x25
d0080d0c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0080d10:	78a5      	ldrb	r5, [r4, #2]
d0080d12:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0080d16:	78e5      	ldrb	r5, [r4, #3]
d0080d18:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0080d1c:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d0080d1e:	4798      	blx	r3
d0080d20:	f89d 2027 	ldrb.w	r2, [sp, #39]	; 0x27
d0080d24:	f89d 3026 	ldrb.w	r3, [sp, #38]	; 0x26
d0080d28:	a80a      	add	r0, sp, #40	; 0x28
d0080d2a:	9200      	str	r2, [sp, #0]
d0080d2c:	4997      	ldr	r1, [pc, #604]	; (d0080f8c <do_bubbastix_playdemo_screensaver+0x298>)
d0080d2e:	f89d 2025 	ldrb.w	r2, [sp, #37]	; 0x25
d0080d32:	f000 fd55 	bl	d00817e0 <siprintf>
d0080d36:	4b96      	ldr	r3, [pc, #600]	; (d0080f90 <do_bubbastix_playdemo_screensaver+0x29c>)
d0080d38:	781b      	ldrb	r3, [r3, #0]
d0080d3a:	2b03      	cmp	r3, #3
d0080d3c:	f000 8266 	beq.w	d008120c <do_bubbastix_playdemo_screensaver+0x518>
d0080d40:	4994      	ldr	r1, [pc, #592]	; (d0080f94 <do_bubbastix_playdemo_screensaver+0x2a0>)
d0080d42:	4d95      	ldr	r5, [pc, #596]	; (d0080f98 <do_bubbastix_playdemo_screensaver+0x2a4>)
d0080d44:	880b      	ldrh	r3, [r1, #0]
d0080d46:	1e5a      	subs	r2, r3, #1
d0080d48:	b212      	sxth	r2, r2
d0080d4a:	2a01      	cmp	r2, #1
d0080d4c:	800a      	strh	r2, [r1, #0]
d0080d4e:	f040 81bc 	bne.w	d00810ca <do_bubbastix_playdemo_screensaver+0x3d6>
d0080d52:	f895 c000 	ldrb.w	ip, [r5]
d0080d56:	2302      	movs	r3, #2
d0080d58:	f8df b284 	ldr.w	fp, [pc, #644]	; d0080fe0 <do_bubbastix_playdemo_screensaver+0x2ec>
d0080d5c:	f10c 0a01 	add.w	sl, ip, #1
d0080d60:	488e      	ldr	r0, [pc, #568]	; (d0080f9c <do_bubbastix_playdemo_screensaver+0x2a8>)
d0080d62:	f8db 1020 	ldr.w	r1, [fp, #32]
d0080d66:	f1bc 0f03 	cmp.w	ip, #3
d0080d6a:	fa5f fa8a 	uxtb.w	sl, sl
d0080d6e:	9007      	str	r0, [sp, #28]
d0080d70:	460a      	mov	r2, r1
d0080d72:	6001      	str	r1, [r0, #0]
d0080d74:	f885 a000 	strb.w	sl, [r5]
d0080d78:	f240 82d3 	bls.w	d0081322 <do_bubbastix_playdemo_screensaver+0x62e>
d0080d7c:	4888      	ldr	r0, [pc, #544]	; (d0080fa0 <do_bubbastix_playdemo_screensaver+0x2ac>)
d0080d7e:	f8df 8264 	ldr.w	r8, [pc, #612]	; d0080fe4 <do_bubbastix_playdemo_screensaver+0x2f0>
d0080d82:	4f88      	ldr	r7, [pc, #544]	; (d0080fa4 <do_bubbastix_playdemo_screensaver+0x2b0>)
d0080d84:	9003      	str	r0, [sp, #12]
d0080d86:	f8df c244 	ldr.w	ip, [pc, #580]	; d0080fcc <do_bubbastix_playdemo_screensaver+0x2d8>
d0080d8a:	f04f 0e00 	mov.w	lr, #0
d0080d8e:	f89c 6000 	ldrb.w	r6, [ip]
d0080d92:	f885 e000 	strb.w	lr, [r5]
d0080d96:	2e06      	cmp	r6, #6
d0080d98:	f200 82a4 	bhi.w	d00812e4 <do_bubbastix_playdemo_screensaver+0x5f0>
d0080d9c:	3601      	adds	r6, #1
d0080d9e:	4291      	cmp	r1, r2
d0080da0:	b2f6      	uxtb	r6, r6
d0080da2:	f88c 6000 	strb.w	r6, [ip]
d0080da6:	f000 82a3 	beq.w	d00812f0 <do_bubbastix_playdemo_screensaver+0x5fc>
d0080daa:	487f      	ldr	r0, [pc, #508]	; (d0080fa8 <do_bubbastix_playdemo_screensaver+0x2b4>)
d0080dac:	f85b 2026 	ldr.w	r2, [fp, r6, lsl #2]
d0080db0:	9005      	str	r0, [sp, #20]
d0080db2:	487e      	ldr	r0, [pc, #504]	; (d0080fac <do_bubbastix_playdemo_screensaver+0x2b8>)
d0080db4:	f8df 9230 	ldr.w	r9, [pc, #560]	; d0080fe8 <do_bubbastix_playdemo_screensaver+0x2f4>
d0080db8:	9004      	str	r0, [sp, #16]
d0080dba:	487d      	ldr	r0, [pc, #500]	; (d0080fb0 <do_bubbastix_playdemo_screensaver+0x2bc>)
d0080dbc:	9006      	str	r0, [sp, #24]
d0080dbe:	9807      	ldr	r0, [sp, #28]
d0080dc0:	6002      	str	r2, [r0, #0]
d0080dc2:	4291      	cmp	r1, r2
d0080dc4:	d027      	beq.n	d0080e16 <do_bubbastix_playdemo_screensaver+0x122>
d0080dc6:	497b      	ldr	r1, [pc, #492]	; (d0080fb4 <do_bubbastix_playdemo_screensaver+0x2c0>)
d0080dc8:	780a      	ldrb	r2, [r1, #0]
d0080dca:	2a03      	cmp	r2, #3
d0080dcc:	f200 81e3 	bhi.w	d0081196 <do_bubbastix_playdemo_screensaver+0x4a2>
d0080dd0:	3201      	adds	r2, #1
d0080dd2:	700a      	strb	r2, [r1, #0]
d0080dd4:	f203 236b 	addw	r3, r3, #619	; 0x26b
d0080dd8:	b29b      	uxth	r3, r3
d0080dda:	f5b3 7f1b 	cmp.w	r3, #620	; 0x26c
d0080dde:	d91a      	bls.n	d0080e16 <do_bubbastix_playdemo_screensaver+0x122>
d0080de0:	4a75      	ldr	r2, [pc, #468]	; (d0080fb8 <do_bubbastix_playdemo_screensaver+0x2c4>)
d0080de2:	f8b9 3000 	ldrh.w	r3, [r9]
d0080de6:	8812      	ldrh	r2, [r2, #0]
d0080de8:	4413      	add	r3, r2
d0080dea:	b21b      	sxth	r3, r3
d0080dec:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0080df0:	f8a9 3000 	strh.w	r3, [r9]
d0080df4:	dd04      	ble.n	d0080e00 <do_bubbastix_playdemo_screensaver+0x10c>
d0080df6:	4a66      	ldr	r2, [pc, #408]	; (d0080f90 <do_bubbastix_playdemo_screensaver+0x29c>)
d0080df8:	7813      	ldrb	r3, [r2, #0]
d0080dfa:	f043 0302 	orr.w	r3, r3, #2
d0080dfe:	7013      	strb	r3, [r2, #0]
d0080e00:	9906      	ldr	r1, [sp, #24]
d0080e02:	4a6e      	ldr	r2, [pc, #440]	; (d0080fbc <do_bubbastix_playdemo_screensaver+0x2c8>)
d0080e04:	880b      	ldrh	r3, [r1, #0]
d0080e06:	8812      	ldrh	r2, [r2, #0]
d0080e08:	4413      	add	r3, r2
d0080e0a:	b21b      	sxth	r3, r3
d0080e0c:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
d0080e10:	800b      	strh	r3, [r1, #0]
d0080e12:	f300 8279 	bgt.w	d0081308 <do_bubbastix_playdemo_screensaver+0x614>
d0080e16:	2500      	movs	r5, #0
d0080e18:	f04f 0a60 	mov.w	sl, #96	; 0x60
d0080e1c:	4868      	ldr	r0, [pc, #416]	; (d0080fc0 <do_bubbastix_playdemo_screensaver+0x2cc>)
d0080e1e:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0080e22:	f44f 738e 	mov.w	r3, #284	; 0x11c
d0080e26:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0080e2a:	22d6      	movs	r2, #214	; 0xd6
d0080e2c:	7ba6      	ldrb	r6, [r4, #14]
d0080e2e:	ea4e 210c 	orr.w	r1, lr, ip, lsl #8
d0080e32:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0080e36:	ea41 4c06 	orr.w	ip, r1, r6, lsl #16
d0080e3a:	f8b8 1000 	ldrh.w	r1, [r8]
d0080e3e:	ea4c 660e 	orr.w	r6, ip, lr, lsl #24
d0080e42:	4429      	add	r1, r5
d0080e44:	441d      	add	r5, r3
d0080e46:	6876      	ldr	r6, [r6, #4]
d0080e48:	b209      	sxth	r1, r1
d0080e4a:	f8cd a000 	str.w	sl, [sp]
d0080e4e:	69b6      	ldr	r6, [r6, #24]
d0080e50:	47b0      	blx	r6
d0080e52:	f5b5 7f55 	cmp.w	r5, #852	; 0x354
d0080e56:	485a      	ldr	r0, [pc, #360]	; (d0080fc0 <do_bubbastix_playdemo_screensaver+0x2cc>)
d0080e58:	d1e1      	bne.n	d0080e1e <do_bubbastix_playdemo_screensaver+0x12a>
d0080e5a:	7b23      	ldrb	r3, [r4, #12]
d0080e5c:	2520      	movs	r5, #32
d0080e5e:	7b60      	ldrb	r0, [r4, #13]
d0080e60:	7ba6      	ldrb	r6, [r4, #14]
d0080e62:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0080e66:	9a04      	ldr	r2, [sp, #16]
d0080e68:	9805      	ldr	r0, [sp, #20]
d0080e6a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0080e6e:	7be6      	ldrb	r6, [r4, #15]
d0080e70:	7811      	ldrb	r1, [r2, #0]
d0080e72:	ea43 6606 	orr.w	r6, r3, r6, lsl #24
d0080e76:	4a53      	ldr	r2, [pc, #332]	; (d0080fc4 <do_bubbastix_playdemo_screensaver+0x2d0>)
d0080e78:	6800      	ldr	r0, [r0, #0]
d0080e7a:	6876      	ldr	r6, [r6, #4]
d0080e7c:	5c53      	ldrb	r3, [r2, r1]
d0080e7e:	22de      	movs	r2, #222	; 0xde
d0080e80:	f9b9 1000 	ldrsh.w	r1, [r9]
d0080e84:	9500      	str	r5, [sp, #0]
d0080e86:	69b5      	ldr	r5, [r6, #24]
d0080e88:	47a8      	blx	r5
d0080e8a:	7b21      	ldrb	r1, [r4, #12]
d0080e8c:	7b62      	ldrb	r2, [r4, #13]
d0080e8e:	2570      	movs	r5, #112	; 0x70
d0080e90:	7ba0      	ldrb	r0, [r4, #14]
d0080e92:	2340      	movs	r3, #64	; 0x40
d0080e94:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0080e98:	7be6      	ldrb	r6, [r4, #15]
d0080e9a:	f8b9 1000 	ldrh.w	r1, [r9]
d0080e9e:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d0080ea2:	226e      	movs	r2, #110	; 0x6e
d0080ea4:	3104      	adds	r1, #4
d0080ea6:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d0080eaa:	4847      	ldr	r0, [pc, #284]	; (d0080fc8 <do_bubbastix_playdemo_screensaver+0x2d4>)
d0080eac:	b209      	sxth	r1, r1
d0080eae:	6876      	ldr	r6, [r6, #4]
d0080eb0:	9500      	str	r5, [sp, #0]
d0080eb2:	69b5      	ldr	r5, [r6, #24]
d0080eb4:	47a8      	blx	r5
d0080eb6:	9b07      	ldr	r3, [sp, #28]
d0080eb8:	6818      	ldr	r0, [r3, #0]
d0080eba:	f8db 3020 	ldr.w	r3, [fp, #32]
d0080ebe:	4283      	cmp	r3, r0
d0080ec0:	f000 81e2 	beq.w	d0081288 <do_bubbastix_playdemo_screensaver+0x594>
d0080ec4:	7b26      	ldrb	r6, [r4, #12]
d0080ec6:	22bb      	movs	r2, #187	; 0xbb
d0080ec8:	7b63      	ldrb	r3, [r4, #13]
d0080eca:	7ba5      	ldrb	r5, [r4, #14]
d0080ecc:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d0080ed0:	7be3      	ldrb	r3, [r4, #15]
d0080ed2:	f8df c118 	ldr.w	ip, [pc, #280]	; d0080fec <do_bubbastix_playdemo_screensaver+0x2f8>
d0080ed6:	ea46 4505 	orr.w	r5, r6, r5, lsl #16
d0080eda:	4e3c      	ldr	r6, [pc, #240]	; (d0080fcc <do_bubbastix_playdemo_screensaver+0x2d8>)
d0080edc:	9906      	ldr	r1, [sp, #24]
d0080ede:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0080ee2:	7835      	ldrb	r5, [r6, #0]
d0080ee4:	f9b1 1000 	ldrsh.w	r1, [r1]
d0080ee8:	685e      	ldr	r6, [r3, #4]
d0080eea:	f81c c005 	ldrb.w	ip, [ip, r5]
d0080eee:	4b38      	ldr	r3, [pc, #224]	; (d0080fd0 <do_bubbastix_playdemo_screensaver+0x2dc>)
d0080ef0:	f8cd c000 	str.w	ip, [sp]
d0080ef4:	5d5b      	ldrb	r3, [r3, r5]
d0080ef6:	69b5      	ldr	r5, [r6, #24]
d0080ef8:	47a8      	blx	r5
d0080efa:	f04f 0800 	mov.w	r8, #0
d0080efe:	f04f 0950 	mov.w	r9, #80	; 0x50
d0080f02:	f8df a0ec 	ldr.w	sl, [pc, #236]	; d0080ff0 <do_bubbastix_playdemo_screensaver+0x2fc>
d0080f06:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0080f0a:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080f0e:	7b61      	ldrb	r1, [r4, #13]
d0080f10:	22f0      	movs	r2, #240	; 0xf0
d0080f12:	7ba6      	ldrb	r6, [r4, #14]
d0080f14:	4650      	mov	r0, sl
d0080f16:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0080f1a:	7be5      	ldrb	r5, [r4, #15]
d0080f1c:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d0080f20:	8839      	ldrh	r1, [r7, #0]
d0080f22:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0080f26:	4441      	add	r1, r8
d0080f28:	4498      	add	r8, r3
d0080f2a:	686d      	ldr	r5, [r5, #4]
d0080f2c:	b209      	sxth	r1, r1
d0080f2e:	f8cd 9000 	str.w	r9, [sp]
d0080f32:	69ad      	ldr	r5, [r5, #24]
d0080f34:	47a8      	blx	r5
d0080f36:	f5b8 7f70 	cmp.w	r8, #960	; 0x3c0
d0080f3a:	d1e4      	bne.n	d0080f06 <do_bubbastix_playdemo_screensaver+0x212>
d0080f3c:	4e25      	ldr	r6, [pc, #148]	; (d0080fd4 <do_bubbastix_playdemo_screensaver+0x2e0>)
d0080f3e:	2121      	movs	r1, #33	; 0x21
d0080f40:	9b03      	ldr	r3, [sp, #12]
d0080f42:	7832      	ldrb	r2, [r6, #0]
d0080f44:	8818      	ldrh	r0, [r3, #0]
d0080f46:	3201      	adds	r2, #1
d0080f48:	4b23      	ldr	r3, [pc, #140]	; (d0080fd8 <do_bubbastix_playdemo_screensaver+0x2e4>)
d0080f4a:	b252      	sxtb	r2, r2
d0080f4c:	8298      	strh	r0, [r3, #20]
d0080f4e:	82d9      	strh	r1, [r3, #22]
d0080f50:	2a02      	cmp	r2, #2
d0080f52:	f300 8157 	bgt.w	d0081204 <do_bubbastix_playdemo_screensaver+0x510>
d0080f56:	7032      	strb	r2, [r6, #0]
d0080f58:	4d20      	ldr	r5, [pc, #128]	; (d0080fdc <do_bubbastix_playdemo_screensaver+0x2e8>)
d0080f5a:	f04f 0800 	mov.w	r8, #0
d0080f5e:	f8df b094 	ldr.w	fp, [pc, #148]	; d0080ff4 <do_bubbastix_playdemo_screensaver+0x300>
d0080f62:	f44f 7afa 	mov.w	sl, #500	; 0x1f4
d0080f66:	f995 3024 	ldrsb.w	r3, [r5, #36]	; 0x24
d0080f6a:	f505 7700 	add.w	r7, r5, #512	; 0x200
d0080f6e:	f64f 79f0 	movw	r9, #65520	; 0xfff0
d0080f72:	2b09      	cmp	r3, #9
d0080f74:	f300 8091 	bgt.w	d008109a <do_bubbastix_playdemo_screensaver+0x3a6>
d0080f78:	3301      	adds	r3, #1
d0080f7a:	f885 3024 	strb.w	r3, [r5, #36]	; 0x24
d0080f7e:	2a00      	cmp	r2, #0
d0080f80:	f040 8098 	bne.w	d00810b4 <do_bubbastix_playdemo_screensaver+0x3c0>
d0080f84:	e038      	b.n	d0080ff8 <do_bubbastix_playdemo_screensaver+0x304>
d0080f86:	bf00      	nop
d0080f88:	2001f000 	.word	0x2001f000
d0080f8c:	d0083768 	.word	0xd0083768
d0080f90:	d009cbec 	.word	0xd009cbec
d0080f94:	d009cbee 	.word	0xd009cbee
d0080f98:	d009c968 	.word	0xd009c968
d0080f9c:	d009c964 	.word	0xd009c964
d0080fa0:	d009c960 	.word	0xd009c960
d0080fa4:	d009cb80 	.word	0xd009cb80
d0080fa8:	d009c96c 	.word	0xd009c96c
d0080fac:	d009c969 	.word	0xd009c969
d0080fb0:	d009cbf0 	.word	0xd009cbf0
d0080fb4:	d009c970 	.word	0xd009c970
d0080fb8:	d009cbe8 	.word	0xd009cbe8
d0080fbc:	d009cbea 	.word	0xd009cbea
d0080fc0:	d0094f4c 	.word	0xd0094f4c
d0080fc4:	d009c520 	.word	0xd009c520
d0080fc8:	d008e0d8 	.word	0xd008e0d8
d0080fcc:	d009c962 	.word	0xd009c962
d0080fd0:	d0094f40 	.word	0xd0094f40
d0080fd4:	d009cb82 	.word	0xd009cb82
d0080fd8:	d009c940 	.word	0xd009c940
d0080fdc:	d009c980 	.word	0xd009c980
d0080fe0:	d009c620 	.word	0xd009c620
d0080fe4:	d009cbe6 	.word	0xd009cbe6
d0080fe8:	d009cbe4 	.word	0xd009cbe4
d0080fec:	d0094f24 	.word	0xd0094f24
d0080ff0:	d0087cd8 	.word	0xd0087cd8
d0080ff4:	d009c4e4 	.word	0xd009c4e4
d0080ff8:	f995 0028 	ldrsb.w	r0, [r5, #40]	; 0x28
d0080ffc:	f995 1026 	ldrsb.w	r1, [r5, #38]	; 0x26
d0081000:	f995 3029 	ldrsb.w	r3, [r5, #41]	; 0x29
d0081004:	4401      	add	r1, r0
d0081006:	f995 0027 	ldrsb.w	r0, [r5, #39]	; 0x27
d008100a:	f895 202a 	ldrb.w	r2, [r5, #42]	; 0x2a
d008100e:	4403      	add	r3, r0
d0081010:	f8b5 c022 	ldrh.w	ip, [r5, #34]	; 0x22
d0081014:	8c28      	ldrh	r0, [r5, #32]
d0081016:	3201      	adds	r2, #1
d0081018:	4463      	add	r3, ip
d008101a:	1a40      	subs	r0, r0, r1
d008101c:	f002 021f 	and.w	r2, r2, #31
d0081020:	b21b      	sxth	r3, r3
d0081022:	b200      	sxth	r0, r0
d0081024:	f885 202a 	strb.w	r2, [r5, #42]	; 0x2a
d0081028:	f995 102a 	ldrsb.w	r1, [r5, #42]	; 0x2a
d008102c:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0081030:	f101 0208 	add.w	r2, r1, #8
d0081034:	f81b 1001 	ldrb.w	r1, [fp, r1]
d0081038:	8428      	strh	r0, [r5, #32]
d008103a:	3040      	adds	r0, #64	; 0x40
d008103c:	f002 021f 	and.w	r2, r2, #31
d0081040:	f885 1026 	strb.w	r1, [r5, #38]	; 0x26
d0081044:	846b      	strh	r3, [r5, #34]	; 0x22
d0081046:	4628      	mov	r0, r5
d0081048:	f81b 2002 	ldrb.w	r2, [fp, r2]
d008104c:	f105 0540 	add.w	r5, r5, #64	; 0x40
d0081050:	bfb8      	it	lt
d0081052:	f825 ac20 	strhlt.w	sl, [r5, #-32]
d0081056:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008105a:	f805 2c19 	strb.w	r2, [r5, #-25]
d008105e:	7b62      	ldrb	r2, [r4, #13]
d0081060:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0081064:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
d0081068:	7be3      	ldrb	r3, [r4, #15]
d008106a:	bfc8      	it	gt
d008106c:	f825 9c1e 	strhgt.w	r9, [r5, #-30]
d0081070:	ea41 420e 	orr.w	r2, r1, lr, lsl #16
d0081074:	f855 1c20 	ldr.w	r1, [r5, #-32]
d0081078:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008107c:	f845 1c2c 	str.w	r1, [r5, #-44]
d0081080:	685b      	ldr	r3, [r3, #4]
d0081082:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0081084:	4798      	blx	r3
d0081086:	42bd      	cmp	r5, r7
d0081088:	f000 809b 	beq.w	d00811c2 <do_bubbastix_playdemo_screensaver+0x4ce>
d008108c:	f995 3024 	ldrsb.w	r3, [r5, #36]	; 0x24
d0081090:	f996 2000 	ldrsb.w	r2, [r6]
d0081094:	2b09      	cmp	r3, #9
d0081096:	f77f af6f 	ble.w	d0080f78 <do_bubbastix_playdemo_screensaver+0x284>
d008109a:	f995 3025 	ldrsb.w	r3, [r5, #37]	; 0x25
d008109e:	f885 8024 	strb.w	r8, [r5, #36]	; 0x24
d00810a2:	2b00      	cmp	r3, #0
d00810a4:	f340 8087 	ble.w	d00811b6 <do_bubbastix_playdemo_screensaver+0x4c2>
d00810a8:	2300      	movs	r3, #0
d00810aa:	f885 8025 	strb.w	r8, [r5, #37]	; 0x25
d00810ae:	76eb      	strb	r3, [r5, #27]
d00810b0:	2a00      	cmp	r2, #0
d00810b2:	d0a1      	beq.n	d0080ff8 <do_bubbastix_playdemo_screensaver+0x304>
d00810b4:	f995 1028 	ldrsb.w	r1, [r5, #40]	; 0x28
d00810b8:	8c28      	ldrh	r0, [r5, #32]
d00810ba:	f995 3029 	ldrsb.w	r3, [r5, #41]	; 0x29
d00810be:	8c6a      	ldrh	r2, [r5, #34]	; 0x22
d00810c0:	1a40      	subs	r0, r0, r1
d00810c2:	4413      	add	r3, r2
d00810c4:	b200      	sxth	r0, r0
d00810c6:	b21b      	sxth	r3, r3
d00810c8:	e7ae      	b.n	d0081028 <do_bubbastix_playdemo_screensaver+0x334>
d00810ca:	323c      	adds	r2, #60	; 0x3c
d00810cc:	f040 814d 	bne.w	d008136a <do_bubbastix_playdemo_screensaver+0x676>
d00810d0:	f895 c000 	ldrb.w	ip, [r5]
d00810d4:	f8df b2e8 	ldr.w	fp, [pc, #744]	; d00813c0 <do_bubbastix_playdemo_screensaver+0x6cc>
d00810d8:	f10c 0a01 	add.w	sl, ip, #1
d00810dc:	49a9      	ldr	r1, [pc, #676]	; (d0081384 <do_bubbastix_playdemo_screensaver+0x690>)
d00810de:	f8db 2000 	ldr.w	r2, [fp]
d00810e2:	fa5f fa8a 	uxtb.w	sl, sl
d00810e6:	9107      	str	r1, [sp, #28]
d00810e8:	600a      	str	r2, [r1, #0]
d00810ea:	f203 216a 	addw	r1, r3, #618	; 0x26a
d00810ee:	f240 266a 	movw	r6, #618	; 0x26a
d00810f2:	b289      	uxth	r1, r1
d00810f4:	42b1      	cmp	r1, r6
d00810f6:	f200 8122 	bhi.w	d008133e <do_bubbastix_playdemo_screensaver+0x64a>
d00810fa:	f8db 1020 	ldr.w	r1, [fp, #32]
d00810fe:	4291      	cmp	r1, r2
d0081100:	f000 8108 	beq.w	d0081314 <do_bubbastix_playdemo_screensaver+0x620>
d0081104:	f8df 82bc 	ldr.w	r8, [pc, #700]	; d00813c4 <do_bubbastix_playdemo_screensaver+0x6d0>
d0081108:	4e9f      	ldr	r6, [pc, #636]	; (d0081388 <do_bubbastix_playdemo_screensaver+0x694>)
d008110a:	f8b8 0000 	ldrh.w	r0, [r8]
d008110e:	4f9f      	ldr	r7, [pc, #636]	; (d008138c <do_bubbastix_playdemo_screensaver+0x698>)
d0081110:	9004      	str	r0, [sp, #16]
d0081112:	f8b6 9000 	ldrh.w	r9, [r6]
d0081116:	f8b7 e000 	ldrh.w	lr, [r7]
d008111a:	9603      	str	r6, [sp, #12]
d008111c:	9e04      	ldr	r6, [sp, #16]
d008111e:	4670      	mov	r0, lr
d0081120:	f8cd e014 	str.w	lr, [sp, #20]
d0081124:	f1a6 0e02 	sub.w	lr, r6, #2
d0081128:	f1a9 0605 	sub.w	r6, r9, #5
d008112c:	f1a0 0903 	sub.w	r9, r0, #3
d0081130:	4895      	ldr	r0, [pc, #596]	; (d0081388 <do_bubbastix_playdemo_screensaver+0x694>)
d0081132:	fa0f fe8e 	sxth.w	lr, lr
d0081136:	b236      	sxth	r6, r6
d0081138:	fa0f f989 	sxth.w	r9, r9
d008113c:	f51e 7f8e 	cmn.w	lr, #284	; 0x11c
d0081140:	f8a8 e000 	strh.w	lr, [r8]
d0081144:	8006      	strh	r6, [r0, #0]
d0081146:	f8a7 9000 	strh.w	r9, [r7]
d008114a:	da04      	bge.n	d0081156 <do_bubbastix_playdemo_screensaver+0x462>
d008114c:	9804      	ldr	r0, [sp, #16]
d008114e:	f500 7e8d 	add.w	lr, r0, #282	; 0x11a
d0081152:	f8a8 e000 	strh.w	lr, [r8]
d0081156:	3640      	adds	r6, #64	; 0x40
d0081158:	da03      	bge.n	d0081162 <do_bubbastix_playdemo_screensaver+0x46e>
d008115a:	f44f 7602 	mov.w	r6, #520	; 0x208
d008115e:	9803      	ldr	r0, [sp, #12]
d0081160:	8006      	strh	r6, [r0, #0]
d0081162:	f519 7fa0 	cmn.w	r9, #320	; 0x140
d0081166:	da03      	bge.n	d0081170 <do_bubbastix_playdemo_screensaver+0x47c>
d0081168:	9805      	ldr	r0, [sp, #20]
d008116a:	f200 163d 	addw	r6, r0, #317	; 0x13d
d008116e:	803e      	strh	r6, [r7, #0]
d0081170:	f1bc 0f03 	cmp.w	ip, #3
d0081174:	f885 a000 	strb.w	sl, [r5]
d0081178:	f63f ae05 	bhi.w	d0080d86 <do_bubbastix_playdemo_screensaver+0x92>
d008117c:	4a84      	ldr	r2, [pc, #528]	; (d0081390 <do_bubbastix_playdemo_screensaver+0x69c>)
d008117e:	4985      	ldr	r1, [pc, #532]	; (d0081394 <do_bubbastix_playdemo_screensaver+0x6a0>)
d0081180:	9205      	str	r2, [sp, #20]
d0081182:	4a85      	ldr	r2, [pc, #532]	; (d0081398 <do_bubbastix_playdemo_screensaver+0x6a4>)
d0081184:	f8df 9240 	ldr.w	r9, [pc, #576]	; d00813c8 <do_bubbastix_playdemo_screensaver+0x6d4>
d0081188:	9204      	str	r2, [sp, #16]
d008118a:	4a84      	ldr	r2, [pc, #528]	; (d008139c <do_bubbastix_playdemo_screensaver+0x6a8>)
d008118c:	9206      	str	r2, [sp, #24]
d008118e:	780a      	ldrb	r2, [r1, #0]
d0081190:	2a03      	cmp	r2, #3
d0081192:	f67f ae1d 	bls.w	d0080dd0 <do_bubbastix_playdemo_screensaver+0xdc>
d0081196:	9804      	ldr	r0, [sp, #16]
d0081198:	2500      	movs	r5, #0
d008119a:	7802      	ldrb	r2, [r0, #0]
d008119c:	700d      	strb	r5, [r1, #0]
d008119e:	2a02      	cmp	r2, #2
d00811a0:	f200 80af 	bhi.w	d0081302 <do_bubbastix_playdemo_screensaver+0x60e>
d00811a4:	3201      	adds	r2, #1
d00811a6:	b2d2      	uxtb	r2, r2
d00811a8:	7002      	strb	r2, [r0, #0]
d00811aa:	497d      	ldr	r1, [pc, #500]	; (d00813a0 <do_bubbastix_playdemo_screensaver+0x6ac>)
d00811ac:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
d00811b0:	9905      	ldr	r1, [sp, #20]
d00811b2:	600a      	str	r2, [r1, #0]
d00811b4:	e60e      	b.n	d0080dd4 <do_bubbastix_playdemo_screensaver+0xe0>
d00811b6:	3301      	adds	r3, #1
d00811b8:	b2db      	uxtb	r3, r3
d00811ba:	f885 3025 	strb.w	r3, [r5, #37]	; 0x25
d00811be:	76eb      	strb	r3, [r5, #27]
d00811c0:	e776      	b.n	d00810b0 <do_bubbastix_playdemo_screensaver+0x3bc>
d00811c2:	7b23      	ldrb	r3, [r4, #12]
d00811c4:	7b62      	ldrb	r2, [r4, #13]
d00811c6:	7ba1      	ldrb	r1, [r4, #14]
d00811c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00811cc:	7be2      	ldrb	r2, [r4, #15]
d00811ce:	4875      	ldr	r0, [pc, #468]	; (d00813a4 <do_bubbastix_playdemo_screensaver+0x6b0>)
d00811d0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00811d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00811d8:	685b      	ldr	r3, [r3, #4]
d00811da:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00811dc:	4798      	blx	r3
d00811de:	7b23      	ldrb	r3, [r4, #12]
d00811e0:	7b60      	ldrb	r0, [r4, #13]
d00811e2:	aa0a      	add	r2, sp, #40	; 0x28
d00811e4:	7ba5      	ldrb	r5, [r4, #14]
d00811e6:	2164      	movs	r1, #100	; 0x64
d00811e8:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00811ec:	7be4      	ldrb	r4, [r4, #15]
d00811ee:	2008      	movs	r0, #8
d00811f0:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00811f4:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d00811f8:	685b      	ldr	r3, [r3, #4]
d00811fa:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d00811fc:	4798      	blx	r3
d00811fe:	b01b      	add	sp, #108	; 0x6c
d0081200:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081204:	2300      	movs	r3, #0
d0081206:	461a      	mov	r2, r3
d0081208:	7033      	strb	r3, [r6, #0]
d008120a:	e6a5      	b.n	d0080f58 <do_bubbastix_playdemo_screensaver+0x264>
d008120c:	4860      	ldr	r0, [pc, #384]	; (d0081390 <do_bubbastix_playdemo_screensaver+0x69c>)
d008120e:	2500      	movs	r5, #0
d0081210:	f8df 91b8 	ldr.w	r9, [pc, #440]	; d00813cc <do_bubbastix_playdemo_screensaver+0x6d8>
d0081214:	f64f 7c24 	movw	ip, #65316	; 0xff24
d0081218:	9005      	str	r0, [sp, #20]
d008121a:	2602      	movs	r6, #2
d008121c:	f8c0 9000 	str.w	r9, [r0]
d0081220:	f64f 77ce 	movw	r7, #65486	; 0xffce
d0081224:	4860      	ldr	r0, [pc, #384]	; (d00813a8 <do_bubbastix_playdemo_screensaver+0x6b4>)
d0081226:	f04f 0801 	mov.w	r8, #1
d008122a:	4b5a      	ldr	r3, [pc, #360]	; (d0081394 <do_bubbastix_playdemo_screensaver+0x6a0>)
d008122c:	f04f 0ab3 	mov.w	sl, #179	; 0xb3
d0081230:	7005      	strb	r5, [r0, #0]
d0081232:	f8df e19c 	ldr.w	lr, [pc, #412]	; d00813d0 <do_bubbastix_playdemo_screensaver+0x6dc>
d0081236:	4858      	ldr	r0, [pc, #352]	; (d0081398 <do_bubbastix_playdemo_screensaver+0x6a4>)
d0081238:	f8df 918c 	ldr.w	r9, [pc, #396]	; d00813c8 <do_bubbastix_playdemo_screensaver+0x6d4>
d008123c:	7005      	strb	r5, [r0, #0]
d008123e:	f8df b180 	ldr.w	fp, [pc, #384]	; d00813c0 <do_bubbastix_playdemo_screensaver+0x6cc>
d0081242:	701d      	strb	r5, [r3, #0]
d0081244:	23b4      	movs	r3, #180	; 0xb4
d0081246:	f88e 5000 	strb.w	r5, [lr]
d008124a:	9004      	str	r0, [sp, #16]
d008124c:	4d57      	ldr	r5, [pc, #348]	; (d00813ac <do_bubbastix_playdemo_screensaver+0x6b8>)
d008124e:	4853      	ldr	r0, [pc, #332]	; (d008139c <do_bubbastix_playdemo_screensaver+0x6a8>)
d0081250:	f8a9 c000 	strh.w	ip, [r9]
d0081254:	f8df c17c 	ldr.w	ip, [pc, #380]	; d00813d4 <do_bubbastix_playdemo_screensaver+0x6e0>
d0081258:	494a      	ldr	r1, [pc, #296]	; (d0081384 <do_bubbastix_playdemo_screensaver+0x690>)
d008125a:	802e      	strh	r6, [r5, #0]
d008125c:	8007      	strh	r7, [r0, #0]
d008125e:	f8db 2000 	ldr.w	r2, [fp]
d0081262:	4d53      	ldr	r5, [pc, #332]	; (d00813b0 <do_bubbastix_playdemo_screensaver+0x6bc>)
d0081264:	f8ac 6000 	strh.w	r6, [ip]
d0081268:	9006      	str	r0, [sp, #24]
d008126a:	4e52      	ldr	r6, [pc, #328]	; (d00813b4 <do_bubbastix_playdemo_screensaver+0x6c0>)
d008126c:	4846      	ldr	r0, [pc, #280]	; (d0081388 <do_bubbastix_playdemo_screensaver+0x694>)
d008126e:	9107      	str	r1, [sp, #28]
d0081270:	600a      	str	r2, [r1, #0]
d0081272:	f886 8000 	strb.w	r8, [r6]
d0081276:	f8db 1020 	ldr.w	r1, [fp, #32]
d008127a:	f8df 8148 	ldr.w	r8, [pc, #328]	; d00813c4 <do_bubbastix_playdemo_screensaver+0x6d0>
d008127e:	4f43      	ldr	r7, [pc, #268]	; (d008138c <do_bubbastix_playdemo_screensaver+0x698>)
d0081280:	f8a5 a000 	strh.w	sl, [r5]
d0081284:	9003      	str	r0, [sp, #12]
d0081286:	e59c      	b.n	d0080dc2 <do_bubbastix_playdemo_screensaver+0xce>
d0081288:	7b22      	ldrb	r2, [r4, #12]
d008128a:	2610      	movs	r6, #16
d008128c:	7b65      	ldrb	r5, [r4, #13]
d008128e:	2328      	movs	r3, #40	; 0x28
d0081290:	7ba0      	ldrb	r0, [r4, #14]
d0081292:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
d0081296:	7be5      	ldrb	r5, [r4, #15]
d0081298:	f8b9 1000 	ldrh.w	r1, [r9]
d008129c:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d00812a0:	22de      	movs	r2, #222	; 0xde
d00812a2:	4431      	add	r1, r6
d00812a4:	ea40 6505 	orr.w	r5, r0, r5, lsl #24
d00812a8:	4843      	ldr	r0, [pc, #268]	; (d00813b8 <do_bubbastix_playdemo_screensaver+0x6c4>)
d00812aa:	b209      	sxth	r1, r1
d00812ac:	686d      	ldr	r5, [r5, #4]
d00812ae:	9600      	str	r6, [sp, #0]
d00812b0:	69ad      	ldr	r5, [r5, #24]
d00812b2:	47a8      	blx	r5
d00812b4:	7b22      	ldrb	r2, [r4, #12]
d00812b6:	7b60      	ldrb	r0, [r4, #13]
d00812b8:	f04f 0c45 	mov.w	ip, #69	; 0x45
d00812bc:	7ba6      	ldrb	r6, [r4, #14]
d00812be:	2318      	movs	r3, #24
d00812c0:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d00812c4:	7be5      	ldrb	r5, [r4, #15]
d00812c6:	9a06      	ldr	r2, [sp, #24]
d00812c8:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00812cc:	483b      	ldr	r0, [pc, #236]	; (d00813bc <do_bubbastix_playdemo_screensaver+0x6c8>)
d00812ce:	f9b2 1000 	ldrsh.w	r1, [r2]
d00812d2:	22bb      	movs	r2, #187	; 0xbb
d00812d4:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d00812d8:	686d      	ldr	r5, [r5, #4]
d00812da:	f8cd c000 	str.w	ip, [sp]
d00812de:	69ad      	ldr	r5, [r5, #24]
d00812e0:	47a8      	blx	r5
d00812e2:	e60a      	b.n	d0080efa <do_bubbastix_playdemo_screensaver+0x206>
d00812e4:	4291      	cmp	r1, r2
d00812e6:	4676      	mov	r6, lr
d00812e8:	f88c e000 	strb.w	lr, [ip]
d00812ec:	f47f ad5d 	bne.w	d0080daa <do_bubbastix_playdemo_screensaver+0xb6>
d00812f0:	4b27      	ldr	r3, [pc, #156]	; (d0081390 <do_bubbastix_playdemo_screensaver+0x69c>)
d00812f2:	f8df 90d4 	ldr.w	r9, [pc, #212]	; d00813c8 <do_bubbastix_playdemo_screensaver+0x6d4>
d00812f6:	9305      	str	r3, [sp, #20]
d00812f8:	4b27      	ldr	r3, [pc, #156]	; (d0081398 <do_bubbastix_playdemo_screensaver+0x6a4>)
d00812fa:	9304      	str	r3, [sp, #16]
d00812fc:	4b27      	ldr	r3, [pc, #156]	; (d008139c <do_bubbastix_playdemo_screensaver+0x6a8>)
d00812fe:	9306      	str	r3, [sp, #24]
d0081300:	e589      	b.n	d0080e16 <do_bubbastix_playdemo_screensaver+0x122>
d0081302:	462a      	mov	r2, r5
d0081304:	7005      	strb	r5, [r0, #0]
d0081306:	e750      	b.n	d00811aa <do_bubbastix_playdemo_screensaver+0x4b6>
d0081308:	4a27      	ldr	r2, [pc, #156]	; (d00813a8 <do_bubbastix_playdemo_screensaver+0x6b4>)
d008130a:	7813      	ldrb	r3, [r2, #0]
d008130c:	f043 0301 	orr.w	r3, r3, #1
d0081310:	7013      	strb	r3, [r2, #0]
d0081312:	e580      	b.n	d0080e16 <do_bubbastix_playdemo_screensaver+0x122>
d0081314:	f1bc 0f03 	cmp.w	ip, #3
d0081318:	4611      	mov	r1, r2
d008131a:	f885 a000 	strb.w	sl, [r5]
d008131e:	f63f ad2d 	bhi.w	d0080d7c <do_bubbastix_playdemo_screensaver+0x88>
d0081322:	4b1b      	ldr	r3, [pc, #108]	; (d0081390 <do_bubbastix_playdemo_screensaver+0x69c>)
d0081324:	f8df 90a0 	ldr.w	r9, [pc, #160]	; d00813c8 <do_bubbastix_playdemo_screensaver+0x6d4>
d0081328:	9305      	str	r3, [sp, #20]
d008132a:	4b1b      	ldr	r3, [pc, #108]	; (d0081398 <do_bubbastix_playdemo_screensaver+0x6a4>)
d008132c:	f8df 8094 	ldr.w	r8, [pc, #148]	; d00813c4 <do_bubbastix_playdemo_screensaver+0x6d0>
d0081330:	9304      	str	r3, [sp, #16]
d0081332:	4b1a      	ldr	r3, [pc, #104]	; (d008139c <do_bubbastix_playdemo_screensaver+0x6a8>)
d0081334:	4f15      	ldr	r7, [pc, #84]	; (d008138c <do_bubbastix_playdemo_screensaver+0x698>)
d0081336:	9306      	str	r3, [sp, #24]
d0081338:	4b13      	ldr	r3, [pc, #76]	; (d0081388 <do_bubbastix_playdemo_screensaver+0x694>)
d008133a:	9303      	str	r3, [sp, #12]
d008133c:	e56b      	b.n	d0080e16 <do_bubbastix_playdemo_screensaver+0x122>
d008133e:	f1bc 0f03 	cmp.w	ip, #3
d0081342:	f8db 1020 	ldr.w	r1, [fp, #32]
d0081346:	f885 a000 	strb.w	sl, [r5]
d008134a:	f63f ad17 	bhi.w	d0080d7c <do_bubbastix_playdemo_screensaver+0x88>
d008134e:	4810      	ldr	r0, [pc, #64]	; (d0081390 <do_bubbastix_playdemo_screensaver+0x69c>)
d0081350:	f8df 9074 	ldr.w	r9, [pc, #116]	; d00813c8 <do_bubbastix_playdemo_screensaver+0x6d4>
d0081354:	9005      	str	r0, [sp, #20]
d0081356:	4810      	ldr	r0, [pc, #64]	; (d0081398 <do_bubbastix_playdemo_screensaver+0x6a4>)
d0081358:	f8df 8068 	ldr.w	r8, [pc, #104]	; d00813c4 <do_bubbastix_playdemo_screensaver+0x6d0>
d008135c:	9004      	str	r0, [sp, #16]
d008135e:	480f      	ldr	r0, [pc, #60]	; (d008139c <do_bubbastix_playdemo_screensaver+0x6a8>)
d0081360:	4f0a      	ldr	r7, [pc, #40]	; (d008138c <do_bubbastix_playdemo_screensaver+0x698>)
d0081362:	9006      	str	r0, [sp, #24]
d0081364:	4808      	ldr	r0, [pc, #32]	; (d0081388 <do_bubbastix_playdemo_screensaver+0x694>)
d0081366:	9003      	str	r0, [sp, #12]
d0081368:	e52b      	b.n	d0080dc2 <do_bubbastix_playdemo_screensaver+0xce>
d008136a:	f895 c000 	ldrb.w	ip, [r5]
d008136e:	4a05      	ldr	r2, [pc, #20]	; (d0081384 <do_bubbastix_playdemo_screensaver+0x690>)
d0081370:	f10c 0a01 	add.w	sl, ip, #1
d0081374:	f8df b048 	ldr.w	fp, [pc, #72]	; d00813c0 <do_bubbastix_playdemo_screensaver+0x6cc>
d0081378:	9207      	str	r2, [sp, #28]
d008137a:	fa5f fa8a 	uxtb.w	sl, sl
d008137e:	6812      	ldr	r2, [r2, #0]
d0081380:	e6b3      	b.n	d00810ea <do_bubbastix_playdemo_screensaver+0x3f6>
d0081382:	bf00      	nop
d0081384:	d009c964 	.word	0xd009c964
d0081388:	d009c960 	.word	0xd009c960
d008138c:	d009cb80 	.word	0xd009cb80
d0081390:	d009c96c 	.word	0xd009c96c
d0081394:	d009c970 	.word	0xd009c970
d0081398:	d009c969 	.word	0xd009c969
d008139c:	d009cbf0 	.word	0xd009cbf0
d00813a0:	d009c660 	.word	0xd009c660
d00813a4:	d009c940 	.word	0xd009c940
d00813a8:	d009cbec 	.word	0xd009cbec
d00813ac:	d009cbea 	.word	0xd009cbea
d00813b0:	d009cbee 	.word	0xd009cbee
d00813b4:	d009c968 	.word	0xd009c968
d00813b8:	d0085838 	.word	0xd0085838
d00813bc:	d008fcd8 	.word	0xd008fcd8
d00813c0:	d009c620 	.word	0xd009c620
d00813c4:	d009cbe6 	.word	0xd009cbe6
d00813c8:	d009cbe4 	.word	0xd009cbe4
d00813cc:	d0083778 	.word	0xd0083778
d00813d0:	d009c962 	.word	0xd009c962
d00813d4:	d009cbe8 	.word	0xd009cbe8

d00813d8 <__errno>:
d00813d8:	4b01      	ldr	r3, [pc, #4]	; (d00813e0 <__errno+0x8>)
d00813da:	6818      	ldr	r0, [r3, #0]
d00813dc:	4770      	bx	lr
d00813de:	bf00      	nop
d00813e0:	d009c670 	.word	0xd009c670

d00813e4 <malloc>:
d00813e4:	4b02      	ldr	r3, [pc, #8]	; (d00813f0 <malloc+0xc>)
d00813e6:	4601      	mov	r1, r0
d00813e8:	6818      	ldr	r0, [r3, #0]
d00813ea:	f000 b85b 	b.w	d00814a4 <_malloc_r>
d00813ee:	bf00      	nop
d00813f0:	d009c670 	.word	0xd009c670

d00813f4 <memset>:
d00813f4:	4402      	add	r2, r0
d00813f6:	4603      	mov	r3, r0
d00813f8:	4293      	cmp	r3, r2
d00813fa:	d100      	bne.n	d00813fe <memset+0xa>
d00813fc:	4770      	bx	lr
d00813fe:	f803 1b01 	strb.w	r1, [r3], #1
d0081402:	e7f9      	b.n	d00813f8 <memset+0x4>

d0081404 <_free_r>:
d0081404:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0081406:	2900      	cmp	r1, #0
d0081408:	d048      	beq.n	d008149c <_free_r+0x98>
d008140a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d008140e:	9001      	str	r0, [sp, #4]
d0081410:	2b00      	cmp	r3, #0
d0081412:	f1a1 0404 	sub.w	r4, r1, #4
d0081416:	bfb8      	it	lt
d0081418:	18e4      	addlt	r4, r4, r3
d008141a:	f000 fcdf 	bl	d0081ddc <__malloc_lock>
d008141e:	4a20      	ldr	r2, [pc, #128]	; (d00814a0 <_free_r+0x9c>)
d0081420:	9801      	ldr	r0, [sp, #4]
d0081422:	6813      	ldr	r3, [r2, #0]
d0081424:	4615      	mov	r5, r2
d0081426:	b933      	cbnz	r3, d0081436 <_free_r+0x32>
d0081428:	6063      	str	r3, [r4, #4]
d008142a:	6014      	str	r4, [r2, #0]
d008142c:	b003      	add	sp, #12
d008142e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0081432:	f000 bcd9 	b.w	d0081de8 <__malloc_unlock>
d0081436:	42a3      	cmp	r3, r4
d0081438:	d90b      	bls.n	d0081452 <_free_r+0x4e>
d008143a:	6821      	ldr	r1, [r4, #0]
d008143c:	1862      	adds	r2, r4, r1
d008143e:	4293      	cmp	r3, r2
d0081440:	bf04      	itt	eq
d0081442:	681a      	ldreq	r2, [r3, #0]
d0081444:	685b      	ldreq	r3, [r3, #4]
d0081446:	6063      	str	r3, [r4, #4]
d0081448:	bf04      	itt	eq
d008144a:	1852      	addeq	r2, r2, r1
d008144c:	6022      	streq	r2, [r4, #0]
d008144e:	602c      	str	r4, [r5, #0]
d0081450:	e7ec      	b.n	d008142c <_free_r+0x28>
d0081452:	461a      	mov	r2, r3
d0081454:	685b      	ldr	r3, [r3, #4]
d0081456:	b10b      	cbz	r3, d008145c <_free_r+0x58>
d0081458:	42a3      	cmp	r3, r4
d008145a:	d9fa      	bls.n	d0081452 <_free_r+0x4e>
d008145c:	6811      	ldr	r1, [r2, #0]
d008145e:	1855      	adds	r5, r2, r1
d0081460:	42a5      	cmp	r5, r4
d0081462:	d10b      	bne.n	d008147c <_free_r+0x78>
d0081464:	6824      	ldr	r4, [r4, #0]
d0081466:	4421      	add	r1, r4
d0081468:	1854      	adds	r4, r2, r1
d008146a:	42a3      	cmp	r3, r4
d008146c:	6011      	str	r1, [r2, #0]
d008146e:	d1dd      	bne.n	d008142c <_free_r+0x28>
d0081470:	681c      	ldr	r4, [r3, #0]
d0081472:	685b      	ldr	r3, [r3, #4]
d0081474:	6053      	str	r3, [r2, #4]
d0081476:	4421      	add	r1, r4
d0081478:	6011      	str	r1, [r2, #0]
d008147a:	e7d7      	b.n	d008142c <_free_r+0x28>
d008147c:	d902      	bls.n	d0081484 <_free_r+0x80>
d008147e:	230c      	movs	r3, #12
d0081480:	6003      	str	r3, [r0, #0]
d0081482:	e7d3      	b.n	d008142c <_free_r+0x28>
d0081484:	6825      	ldr	r5, [r4, #0]
d0081486:	1961      	adds	r1, r4, r5
d0081488:	428b      	cmp	r3, r1
d008148a:	bf04      	itt	eq
d008148c:	6819      	ldreq	r1, [r3, #0]
d008148e:	685b      	ldreq	r3, [r3, #4]
d0081490:	6063      	str	r3, [r4, #4]
d0081492:	bf04      	itt	eq
d0081494:	1949      	addeq	r1, r1, r5
d0081496:	6021      	streq	r1, [r4, #0]
d0081498:	6054      	str	r4, [r2, #4]
d008149a:	e7c7      	b.n	d008142c <_free_r+0x28>
d008149c:	b003      	add	sp, #12
d008149e:	bd30      	pop	{r4, r5, pc}
d00814a0:	d009cb84 	.word	0xd009cb84

d00814a4 <_malloc_r>:
d00814a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00814a6:	1ccd      	adds	r5, r1, #3
d00814a8:	f025 0503 	bic.w	r5, r5, #3
d00814ac:	3508      	adds	r5, #8
d00814ae:	2d0c      	cmp	r5, #12
d00814b0:	bf38      	it	cc
d00814b2:	250c      	movcc	r5, #12
d00814b4:	2d00      	cmp	r5, #0
d00814b6:	4606      	mov	r6, r0
d00814b8:	db01      	blt.n	d00814be <_malloc_r+0x1a>
d00814ba:	42a9      	cmp	r1, r5
d00814bc:	d903      	bls.n	d00814c6 <_malloc_r+0x22>
d00814be:	230c      	movs	r3, #12
d00814c0:	6033      	str	r3, [r6, #0]
d00814c2:	2000      	movs	r0, #0
d00814c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00814c6:	f000 fc89 	bl	d0081ddc <__malloc_lock>
d00814ca:	4921      	ldr	r1, [pc, #132]	; (d0081550 <_malloc_r+0xac>)
d00814cc:	680a      	ldr	r2, [r1, #0]
d00814ce:	4614      	mov	r4, r2
d00814d0:	b99c      	cbnz	r4, d00814fa <_malloc_r+0x56>
d00814d2:	4f20      	ldr	r7, [pc, #128]	; (d0081554 <_malloc_r+0xb0>)
d00814d4:	683b      	ldr	r3, [r7, #0]
d00814d6:	b923      	cbnz	r3, d00814e2 <_malloc_r+0x3e>
d00814d8:	4621      	mov	r1, r4
d00814da:	4630      	mov	r0, r6
d00814dc:	f7fe fef4 	bl	d00802c8 <_sbrk_r>
d00814e0:	6038      	str	r0, [r7, #0]
d00814e2:	4629      	mov	r1, r5
d00814e4:	4630      	mov	r0, r6
d00814e6:	f7fe feef 	bl	d00802c8 <_sbrk_r>
d00814ea:	1c43      	adds	r3, r0, #1
d00814ec:	d123      	bne.n	d0081536 <_malloc_r+0x92>
d00814ee:	230c      	movs	r3, #12
d00814f0:	6033      	str	r3, [r6, #0]
d00814f2:	4630      	mov	r0, r6
d00814f4:	f000 fc78 	bl	d0081de8 <__malloc_unlock>
d00814f8:	e7e3      	b.n	d00814c2 <_malloc_r+0x1e>
d00814fa:	6823      	ldr	r3, [r4, #0]
d00814fc:	1b5b      	subs	r3, r3, r5
d00814fe:	d417      	bmi.n	d0081530 <_malloc_r+0x8c>
d0081500:	2b0b      	cmp	r3, #11
d0081502:	d903      	bls.n	d008150c <_malloc_r+0x68>
d0081504:	6023      	str	r3, [r4, #0]
d0081506:	441c      	add	r4, r3
d0081508:	6025      	str	r5, [r4, #0]
d008150a:	e004      	b.n	d0081516 <_malloc_r+0x72>
d008150c:	6863      	ldr	r3, [r4, #4]
d008150e:	42a2      	cmp	r2, r4
d0081510:	bf0c      	ite	eq
d0081512:	600b      	streq	r3, [r1, #0]
d0081514:	6053      	strne	r3, [r2, #4]
d0081516:	4630      	mov	r0, r6
d0081518:	f000 fc66 	bl	d0081de8 <__malloc_unlock>
d008151c:	f104 000b 	add.w	r0, r4, #11
d0081520:	1d23      	adds	r3, r4, #4
d0081522:	f020 0007 	bic.w	r0, r0, #7
d0081526:	1ac2      	subs	r2, r0, r3
d0081528:	d0cc      	beq.n	d00814c4 <_malloc_r+0x20>
d008152a:	1a1b      	subs	r3, r3, r0
d008152c:	50a3      	str	r3, [r4, r2]
d008152e:	e7c9      	b.n	d00814c4 <_malloc_r+0x20>
d0081530:	4622      	mov	r2, r4
d0081532:	6864      	ldr	r4, [r4, #4]
d0081534:	e7cc      	b.n	d00814d0 <_malloc_r+0x2c>
d0081536:	1cc4      	adds	r4, r0, #3
d0081538:	f024 0403 	bic.w	r4, r4, #3
d008153c:	42a0      	cmp	r0, r4
d008153e:	d0e3      	beq.n	d0081508 <_malloc_r+0x64>
d0081540:	1a21      	subs	r1, r4, r0
d0081542:	4630      	mov	r0, r6
d0081544:	f7fe fec0 	bl	d00802c8 <_sbrk_r>
d0081548:	3001      	adds	r0, #1
d008154a:	d1dd      	bne.n	d0081508 <_malloc_r+0x64>
d008154c:	e7cf      	b.n	d00814ee <_malloc_r+0x4a>
d008154e:	bf00      	nop
d0081550:	d009cb84 	.word	0xd009cb84
d0081554:	d009cb88 	.word	0xd009cb88

d0081558 <_puts_r>:
d0081558:	b570      	push	{r4, r5, r6, lr}
d008155a:	460e      	mov	r6, r1
d008155c:	4605      	mov	r5, r0
d008155e:	b118      	cbz	r0, d0081568 <_puts_r+0x10>
d0081560:	6983      	ldr	r3, [r0, #24]
d0081562:	b90b      	cbnz	r3, d0081568 <_puts_r+0x10>
d0081564:	f000 fb36 	bl	d0081bd4 <__sinit>
d0081568:	69ab      	ldr	r3, [r5, #24]
d008156a:	68ac      	ldr	r4, [r5, #8]
d008156c:	b913      	cbnz	r3, d0081574 <_puts_r+0x1c>
d008156e:	4628      	mov	r0, r5
d0081570:	f000 fb30 	bl	d0081bd4 <__sinit>
d0081574:	4b2c      	ldr	r3, [pc, #176]	; (d0081628 <_puts_r+0xd0>)
d0081576:	429c      	cmp	r4, r3
d0081578:	d120      	bne.n	d00815bc <_puts_r+0x64>
d008157a:	686c      	ldr	r4, [r5, #4]
d008157c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008157e:	07db      	lsls	r3, r3, #31
d0081580:	d405      	bmi.n	d008158e <_puts_r+0x36>
d0081582:	89a3      	ldrh	r3, [r4, #12]
d0081584:	0598      	lsls	r0, r3, #22
d0081586:	d402      	bmi.n	d008158e <_puts_r+0x36>
d0081588:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008158a:	f000 fbc1 	bl	d0081d10 <__retarget_lock_acquire_recursive>
d008158e:	89a3      	ldrh	r3, [r4, #12]
d0081590:	0719      	lsls	r1, r3, #28
d0081592:	d51d      	bpl.n	d00815d0 <_puts_r+0x78>
d0081594:	6923      	ldr	r3, [r4, #16]
d0081596:	b1db      	cbz	r3, d00815d0 <_puts_r+0x78>
d0081598:	3e01      	subs	r6, #1
d008159a:	68a3      	ldr	r3, [r4, #8]
d008159c:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d00815a0:	3b01      	subs	r3, #1
d00815a2:	60a3      	str	r3, [r4, #8]
d00815a4:	bb39      	cbnz	r1, d00815f6 <_puts_r+0x9e>
d00815a6:	2b00      	cmp	r3, #0
d00815a8:	da38      	bge.n	d008161c <_puts_r+0xc4>
d00815aa:	4622      	mov	r2, r4
d00815ac:	210a      	movs	r1, #10
d00815ae:	4628      	mov	r0, r5
d00815b0:	f000 f936 	bl	d0081820 <__swbuf_r>
d00815b4:	3001      	adds	r0, #1
d00815b6:	d011      	beq.n	d00815dc <_puts_r+0x84>
d00815b8:	250a      	movs	r5, #10
d00815ba:	e011      	b.n	d00815e0 <_puts_r+0x88>
d00815bc:	4b1b      	ldr	r3, [pc, #108]	; (d008162c <_puts_r+0xd4>)
d00815be:	429c      	cmp	r4, r3
d00815c0:	d101      	bne.n	d00815c6 <_puts_r+0x6e>
d00815c2:	68ac      	ldr	r4, [r5, #8]
d00815c4:	e7da      	b.n	d008157c <_puts_r+0x24>
d00815c6:	4b1a      	ldr	r3, [pc, #104]	; (d0081630 <_puts_r+0xd8>)
d00815c8:	429c      	cmp	r4, r3
d00815ca:	bf08      	it	eq
d00815cc:	68ec      	ldreq	r4, [r5, #12]
d00815ce:	e7d5      	b.n	d008157c <_puts_r+0x24>
d00815d0:	4621      	mov	r1, r4
d00815d2:	4628      	mov	r0, r5
d00815d4:	f000 f976 	bl	d00818c4 <__swsetup_r>
d00815d8:	2800      	cmp	r0, #0
d00815da:	d0dd      	beq.n	d0081598 <_puts_r+0x40>
d00815dc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00815e0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00815e2:	07da      	lsls	r2, r3, #31
d00815e4:	d405      	bmi.n	d00815f2 <_puts_r+0x9a>
d00815e6:	89a3      	ldrh	r3, [r4, #12]
d00815e8:	059b      	lsls	r3, r3, #22
d00815ea:	d402      	bmi.n	d00815f2 <_puts_r+0x9a>
d00815ec:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00815ee:	f000 fb90 	bl	d0081d12 <__retarget_lock_release_recursive>
d00815f2:	4628      	mov	r0, r5
d00815f4:	bd70      	pop	{r4, r5, r6, pc}
d00815f6:	2b00      	cmp	r3, #0
d00815f8:	da04      	bge.n	d0081604 <_puts_r+0xac>
d00815fa:	69a2      	ldr	r2, [r4, #24]
d00815fc:	429a      	cmp	r2, r3
d00815fe:	dc06      	bgt.n	d008160e <_puts_r+0xb6>
d0081600:	290a      	cmp	r1, #10
d0081602:	d004      	beq.n	d008160e <_puts_r+0xb6>
d0081604:	6823      	ldr	r3, [r4, #0]
d0081606:	1c5a      	adds	r2, r3, #1
d0081608:	6022      	str	r2, [r4, #0]
d008160a:	7019      	strb	r1, [r3, #0]
d008160c:	e7c5      	b.n	d008159a <_puts_r+0x42>
d008160e:	4622      	mov	r2, r4
d0081610:	4628      	mov	r0, r5
d0081612:	f000 f905 	bl	d0081820 <__swbuf_r>
d0081616:	3001      	adds	r0, #1
d0081618:	d1bf      	bne.n	d008159a <_puts_r+0x42>
d008161a:	e7df      	b.n	d00815dc <_puts_r+0x84>
d008161c:	6823      	ldr	r3, [r4, #0]
d008161e:	250a      	movs	r5, #10
d0081620:	1c5a      	adds	r2, r3, #1
d0081622:	6022      	str	r2, [r4, #0]
d0081624:	701d      	strb	r5, [r3, #0]
d0081626:	e7db      	b.n	d00815e0 <_puts_r+0x88>
d0081628:	d009c548 	.word	0xd009c548
d008162c:	d009c568 	.word	0xd009c568
d0081630:	d009c528 	.word	0xd009c528

d0081634 <puts>:
d0081634:	4b02      	ldr	r3, [pc, #8]	; (d0081640 <puts+0xc>)
d0081636:	4601      	mov	r1, r0
d0081638:	6818      	ldr	r0, [r3, #0]
d008163a:	f7ff bf8d 	b.w	d0081558 <_puts_r>
d008163e:	bf00      	nop
d0081640:	d009c670 	.word	0xd009c670

d0081644 <setbuf>:
d0081644:	2900      	cmp	r1, #0
d0081646:	f44f 6380 	mov.w	r3, #1024	; 0x400
d008164a:	bf0c      	ite	eq
d008164c:	2202      	moveq	r2, #2
d008164e:	2200      	movne	r2, #0
d0081650:	f000 b800 	b.w	d0081654 <setvbuf>

d0081654 <setvbuf>:
d0081654:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0081658:	461d      	mov	r5, r3
d008165a:	4b5d      	ldr	r3, [pc, #372]	; (d00817d0 <setvbuf+0x17c>)
d008165c:	681f      	ldr	r7, [r3, #0]
d008165e:	4604      	mov	r4, r0
d0081660:	460e      	mov	r6, r1
d0081662:	4690      	mov	r8, r2
d0081664:	b127      	cbz	r7, d0081670 <setvbuf+0x1c>
d0081666:	69bb      	ldr	r3, [r7, #24]
d0081668:	b913      	cbnz	r3, d0081670 <setvbuf+0x1c>
d008166a:	4638      	mov	r0, r7
d008166c:	f000 fab2 	bl	d0081bd4 <__sinit>
d0081670:	4b58      	ldr	r3, [pc, #352]	; (d00817d4 <setvbuf+0x180>)
d0081672:	429c      	cmp	r4, r3
d0081674:	d167      	bne.n	d0081746 <setvbuf+0xf2>
d0081676:	687c      	ldr	r4, [r7, #4]
d0081678:	f1b8 0f02 	cmp.w	r8, #2
d008167c:	d006      	beq.n	d008168c <setvbuf+0x38>
d008167e:	f1b8 0f01 	cmp.w	r8, #1
d0081682:	f200 809f 	bhi.w	d00817c4 <setvbuf+0x170>
d0081686:	2d00      	cmp	r5, #0
d0081688:	f2c0 809c 	blt.w	d00817c4 <setvbuf+0x170>
d008168c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008168e:	07db      	lsls	r3, r3, #31
d0081690:	d405      	bmi.n	d008169e <setvbuf+0x4a>
d0081692:	89a3      	ldrh	r3, [r4, #12]
d0081694:	0598      	lsls	r0, r3, #22
d0081696:	d402      	bmi.n	d008169e <setvbuf+0x4a>
d0081698:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008169a:	f000 fb39 	bl	d0081d10 <__retarget_lock_acquire_recursive>
d008169e:	4621      	mov	r1, r4
d00816a0:	4638      	mov	r0, r7
d00816a2:	f000 fa03 	bl	d0081aac <_fflush_r>
d00816a6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00816a8:	b141      	cbz	r1, d00816bc <setvbuf+0x68>
d00816aa:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00816ae:	4299      	cmp	r1, r3
d00816b0:	d002      	beq.n	d00816b8 <setvbuf+0x64>
d00816b2:	4638      	mov	r0, r7
d00816b4:	f7ff fea6 	bl	d0081404 <_free_r>
d00816b8:	2300      	movs	r3, #0
d00816ba:	6363      	str	r3, [r4, #52]	; 0x34
d00816bc:	2300      	movs	r3, #0
d00816be:	61a3      	str	r3, [r4, #24]
d00816c0:	6063      	str	r3, [r4, #4]
d00816c2:	89a3      	ldrh	r3, [r4, #12]
d00816c4:	0619      	lsls	r1, r3, #24
d00816c6:	d503      	bpl.n	d00816d0 <setvbuf+0x7c>
d00816c8:	6921      	ldr	r1, [r4, #16]
d00816ca:	4638      	mov	r0, r7
d00816cc:	f7ff fe9a 	bl	d0081404 <_free_r>
d00816d0:	89a3      	ldrh	r3, [r4, #12]
d00816d2:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00816d6:	f023 0303 	bic.w	r3, r3, #3
d00816da:	f1b8 0f02 	cmp.w	r8, #2
d00816de:	81a3      	strh	r3, [r4, #12]
d00816e0:	d06c      	beq.n	d00817bc <setvbuf+0x168>
d00816e2:	ab01      	add	r3, sp, #4
d00816e4:	466a      	mov	r2, sp
d00816e6:	4621      	mov	r1, r4
d00816e8:	4638      	mov	r0, r7
d00816ea:	f000 fb13 	bl	d0081d14 <__swhatbuf_r>
d00816ee:	89a3      	ldrh	r3, [r4, #12]
d00816f0:	4318      	orrs	r0, r3
d00816f2:	81a0      	strh	r0, [r4, #12]
d00816f4:	2d00      	cmp	r5, #0
d00816f6:	d130      	bne.n	d008175a <setvbuf+0x106>
d00816f8:	9d00      	ldr	r5, [sp, #0]
d00816fa:	4628      	mov	r0, r5
d00816fc:	f7ff fe72 	bl	d00813e4 <malloc>
d0081700:	4606      	mov	r6, r0
d0081702:	2800      	cmp	r0, #0
d0081704:	d155      	bne.n	d00817b2 <setvbuf+0x15e>
d0081706:	f8dd 9000 	ldr.w	r9, [sp]
d008170a:	45a9      	cmp	r9, r5
d008170c:	d14a      	bne.n	d00817a4 <setvbuf+0x150>
d008170e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0081712:	2200      	movs	r2, #0
d0081714:	60a2      	str	r2, [r4, #8]
d0081716:	f104 0247 	add.w	r2, r4, #71	; 0x47
d008171a:	6022      	str	r2, [r4, #0]
d008171c:	6122      	str	r2, [r4, #16]
d008171e:	2201      	movs	r2, #1
d0081720:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081724:	6162      	str	r2, [r4, #20]
d0081726:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081728:	f043 0302 	orr.w	r3, r3, #2
d008172c:	07d2      	lsls	r2, r2, #31
d008172e:	81a3      	strh	r3, [r4, #12]
d0081730:	d405      	bmi.n	d008173e <setvbuf+0xea>
d0081732:	f413 7f00 	tst.w	r3, #512	; 0x200
d0081736:	d102      	bne.n	d008173e <setvbuf+0xea>
d0081738:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008173a:	f000 faea 	bl	d0081d12 <__retarget_lock_release_recursive>
d008173e:	4628      	mov	r0, r5
d0081740:	b003      	add	sp, #12
d0081742:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0081746:	4b24      	ldr	r3, [pc, #144]	; (d00817d8 <setvbuf+0x184>)
d0081748:	429c      	cmp	r4, r3
d008174a:	d101      	bne.n	d0081750 <setvbuf+0xfc>
d008174c:	68bc      	ldr	r4, [r7, #8]
d008174e:	e793      	b.n	d0081678 <setvbuf+0x24>
d0081750:	4b22      	ldr	r3, [pc, #136]	; (d00817dc <setvbuf+0x188>)
d0081752:	429c      	cmp	r4, r3
d0081754:	bf08      	it	eq
d0081756:	68fc      	ldreq	r4, [r7, #12]
d0081758:	e78e      	b.n	d0081678 <setvbuf+0x24>
d008175a:	2e00      	cmp	r6, #0
d008175c:	d0cd      	beq.n	d00816fa <setvbuf+0xa6>
d008175e:	69bb      	ldr	r3, [r7, #24]
d0081760:	b913      	cbnz	r3, d0081768 <setvbuf+0x114>
d0081762:	4638      	mov	r0, r7
d0081764:	f000 fa36 	bl	d0081bd4 <__sinit>
d0081768:	f1b8 0f01 	cmp.w	r8, #1
d008176c:	bf08      	it	eq
d008176e:	89a3      	ldrheq	r3, [r4, #12]
d0081770:	6026      	str	r6, [r4, #0]
d0081772:	bf04      	itt	eq
d0081774:	f043 0301 	orreq.w	r3, r3, #1
d0081778:	81a3      	strheq	r3, [r4, #12]
d008177a:	89a2      	ldrh	r2, [r4, #12]
d008177c:	f012 0308 	ands.w	r3, r2, #8
d0081780:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0081784:	d01c      	beq.n	d00817c0 <setvbuf+0x16c>
d0081786:	07d3      	lsls	r3, r2, #31
d0081788:	bf41      	itttt	mi
d008178a:	2300      	movmi	r3, #0
d008178c:	426d      	negmi	r5, r5
d008178e:	60a3      	strmi	r3, [r4, #8]
d0081790:	61a5      	strmi	r5, [r4, #24]
d0081792:	bf58      	it	pl
d0081794:	60a5      	strpl	r5, [r4, #8]
d0081796:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0081798:	f015 0501 	ands.w	r5, r5, #1
d008179c:	d115      	bne.n	d00817ca <setvbuf+0x176>
d008179e:	f412 7f00 	tst.w	r2, #512	; 0x200
d00817a2:	e7c8      	b.n	d0081736 <setvbuf+0xe2>
d00817a4:	4648      	mov	r0, r9
d00817a6:	f7ff fe1d 	bl	d00813e4 <malloc>
d00817aa:	4606      	mov	r6, r0
d00817ac:	2800      	cmp	r0, #0
d00817ae:	d0ae      	beq.n	d008170e <setvbuf+0xba>
d00817b0:	464d      	mov	r5, r9
d00817b2:	89a3      	ldrh	r3, [r4, #12]
d00817b4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00817b8:	81a3      	strh	r3, [r4, #12]
d00817ba:	e7d0      	b.n	d008175e <setvbuf+0x10a>
d00817bc:	2500      	movs	r5, #0
d00817be:	e7a8      	b.n	d0081712 <setvbuf+0xbe>
d00817c0:	60a3      	str	r3, [r4, #8]
d00817c2:	e7e8      	b.n	d0081796 <setvbuf+0x142>
d00817c4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00817c8:	e7b9      	b.n	d008173e <setvbuf+0xea>
d00817ca:	2500      	movs	r5, #0
d00817cc:	e7b7      	b.n	d008173e <setvbuf+0xea>
d00817ce:	bf00      	nop
d00817d0:	d009c670 	.word	0xd009c670
d00817d4:	d009c548 	.word	0xd009c548
d00817d8:	d009c568 	.word	0xd009c568
d00817dc:	d009c528 	.word	0xd009c528

d00817e0 <siprintf>:
d00817e0:	b40e      	push	{r1, r2, r3}
d00817e2:	b500      	push	{lr}
d00817e4:	b09c      	sub	sp, #112	; 0x70
d00817e6:	ab1d      	add	r3, sp, #116	; 0x74
d00817e8:	9002      	str	r0, [sp, #8]
d00817ea:	9006      	str	r0, [sp, #24]
d00817ec:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00817f0:	4809      	ldr	r0, [pc, #36]	; (d0081818 <siprintf+0x38>)
d00817f2:	9107      	str	r1, [sp, #28]
d00817f4:	9104      	str	r1, [sp, #16]
d00817f6:	4909      	ldr	r1, [pc, #36]	; (d008181c <siprintf+0x3c>)
d00817f8:	f853 2b04 	ldr.w	r2, [r3], #4
d00817fc:	9105      	str	r1, [sp, #20]
d00817fe:	6800      	ldr	r0, [r0, #0]
d0081800:	9301      	str	r3, [sp, #4]
d0081802:	a902      	add	r1, sp, #8
d0081804:	f000 fb52 	bl	d0081eac <_svfiprintf_r>
d0081808:	9b02      	ldr	r3, [sp, #8]
d008180a:	2200      	movs	r2, #0
d008180c:	701a      	strb	r2, [r3, #0]
d008180e:	b01c      	add	sp, #112	; 0x70
d0081810:	f85d eb04 	ldr.w	lr, [sp], #4
d0081814:	b003      	add	sp, #12
d0081816:	4770      	bx	lr
d0081818:	d009c670 	.word	0xd009c670
d008181c:	ffff0208 	.word	0xffff0208

d0081820 <__swbuf_r>:
d0081820:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081822:	460e      	mov	r6, r1
d0081824:	4614      	mov	r4, r2
d0081826:	4605      	mov	r5, r0
d0081828:	b118      	cbz	r0, d0081832 <__swbuf_r+0x12>
d008182a:	6983      	ldr	r3, [r0, #24]
d008182c:	b90b      	cbnz	r3, d0081832 <__swbuf_r+0x12>
d008182e:	f000 f9d1 	bl	d0081bd4 <__sinit>
d0081832:	4b21      	ldr	r3, [pc, #132]	; (d00818b8 <__swbuf_r+0x98>)
d0081834:	429c      	cmp	r4, r3
d0081836:	d12b      	bne.n	d0081890 <__swbuf_r+0x70>
d0081838:	686c      	ldr	r4, [r5, #4]
d008183a:	69a3      	ldr	r3, [r4, #24]
d008183c:	60a3      	str	r3, [r4, #8]
d008183e:	89a3      	ldrh	r3, [r4, #12]
d0081840:	071a      	lsls	r2, r3, #28
d0081842:	d52f      	bpl.n	d00818a4 <__swbuf_r+0x84>
d0081844:	6923      	ldr	r3, [r4, #16]
d0081846:	b36b      	cbz	r3, d00818a4 <__swbuf_r+0x84>
d0081848:	6923      	ldr	r3, [r4, #16]
d008184a:	6820      	ldr	r0, [r4, #0]
d008184c:	1ac0      	subs	r0, r0, r3
d008184e:	6963      	ldr	r3, [r4, #20]
d0081850:	b2f6      	uxtb	r6, r6
d0081852:	4283      	cmp	r3, r0
d0081854:	4637      	mov	r7, r6
d0081856:	dc04      	bgt.n	d0081862 <__swbuf_r+0x42>
d0081858:	4621      	mov	r1, r4
d008185a:	4628      	mov	r0, r5
d008185c:	f000 f926 	bl	d0081aac <_fflush_r>
d0081860:	bb30      	cbnz	r0, d00818b0 <__swbuf_r+0x90>
d0081862:	68a3      	ldr	r3, [r4, #8]
d0081864:	3b01      	subs	r3, #1
d0081866:	60a3      	str	r3, [r4, #8]
d0081868:	6823      	ldr	r3, [r4, #0]
d008186a:	1c5a      	adds	r2, r3, #1
d008186c:	6022      	str	r2, [r4, #0]
d008186e:	701e      	strb	r6, [r3, #0]
d0081870:	6963      	ldr	r3, [r4, #20]
d0081872:	3001      	adds	r0, #1
d0081874:	4283      	cmp	r3, r0
d0081876:	d004      	beq.n	d0081882 <__swbuf_r+0x62>
d0081878:	89a3      	ldrh	r3, [r4, #12]
d008187a:	07db      	lsls	r3, r3, #31
d008187c:	d506      	bpl.n	d008188c <__swbuf_r+0x6c>
d008187e:	2e0a      	cmp	r6, #10
d0081880:	d104      	bne.n	d008188c <__swbuf_r+0x6c>
d0081882:	4621      	mov	r1, r4
d0081884:	4628      	mov	r0, r5
d0081886:	f000 f911 	bl	d0081aac <_fflush_r>
d008188a:	b988      	cbnz	r0, d00818b0 <__swbuf_r+0x90>
d008188c:	4638      	mov	r0, r7
d008188e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081890:	4b0a      	ldr	r3, [pc, #40]	; (d00818bc <__swbuf_r+0x9c>)
d0081892:	429c      	cmp	r4, r3
d0081894:	d101      	bne.n	d008189a <__swbuf_r+0x7a>
d0081896:	68ac      	ldr	r4, [r5, #8]
d0081898:	e7cf      	b.n	d008183a <__swbuf_r+0x1a>
d008189a:	4b09      	ldr	r3, [pc, #36]	; (d00818c0 <__swbuf_r+0xa0>)
d008189c:	429c      	cmp	r4, r3
d008189e:	bf08      	it	eq
d00818a0:	68ec      	ldreq	r4, [r5, #12]
d00818a2:	e7ca      	b.n	d008183a <__swbuf_r+0x1a>
d00818a4:	4621      	mov	r1, r4
d00818a6:	4628      	mov	r0, r5
d00818a8:	f000 f80c 	bl	d00818c4 <__swsetup_r>
d00818ac:	2800      	cmp	r0, #0
d00818ae:	d0cb      	beq.n	d0081848 <__swbuf_r+0x28>
d00818b0:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00818b4:	e7ea      	b.n	d008188c <__swbuf_r+0x6c>
d00818b6:	bf00      	nop
d00818b8:	d009c548 	.word	0xd009c548
d00818bc:	d009c568 	.word	0xd009c568
d00818c0:	d009c528 	.word	0xd009c528

d00818c4 <__swsetup_r>:
d00818c4:	4b32      	ldr	r3, [pc, #200]	; (d0081990 <__swsetup_r+0xcc>)
d00818c6:	b570      	push	{r4, r5, r6, lr}
d00818c8:	681d      	ldr	r5, [r3, #0]
d00818ca:	4606      	mov	r6, r0
d00818cc:	460c      	mov	r4, r1
d00818ce:	b125      	cbz	r5, d00818da <__swsetup_r+0x16>
d00818d0:	69ab      	ldr	r3, [r5, #24]
d00818d2:	b913      	cbnz	r3, d00818da <__swsetup_r+0x16>
d00818d4:	4628      	mov	r0, r5
d00818d6:	f000 f97d 	bl	d0081bd4 <__sinit>
d00818da:	4b2e      	ldr	r3, [pc, #184]	; (d0081994 <__swsetup_r+0xd0>)
d00818dc:	429c      	cmp	r4, r3
d00818de:	d10f      	bne.n	d0081900 <__swsetup_r+0x3c>
d00818e0:	686c      	ldr	r4, [r5, #4]
d00818e2:	89a3      	ldrh	r3, [r4, #12]
d00818e4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00818e8:	0719      	lsls	r1, r3, #28
d00818ea:	d42c      	bmi.n	d0081946 <__swsetup_r+0x82>
d00818ec:	06dd      	lsls	r5, r3, #27
d00818ee:	d411      	bmi.n	d0081914 <__swsetup_r+0x50>
d00818f0:	2309      	movs	r3, #9
d00818f2:	6033      	str	r3, [r6, #0]
d00818f4:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00818f8:	81a3      	strh	r3, [r4, #12]
d00818fa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00818fe:	e03e      	b.n	d008197e <__swsetup_r+0xba>
d0081900:	4b25      	ldr	r3, [pc, #148]	; (d0081998 <__swsetup_r+0xd4>)
d0081902:	429c      	cmp	r4, r3
d0081904:	d101      	bne.n	d008190a <__swsetup_r+0x46>
d0081906:	68ac      	ldr	r4, [r5, #8]
d0081908:	e7eb      	b.n	d00818e2 <__swsetup_r+0x1e>
d008190a:	4b24      	ldr	r3, [pc, #144]	; (d008199c <__swsetup_r+0xd8>)
d008190c:	429c      	cmp	r4, r3
d008190e:	bf08      	it	eq
d0081910:	68ec      	ldreq	r4, [r5, #12]
d0081912:	e7e6      	b.n	d00818e2 <__swsetup_r+0x1e>
d0081914:	0758      	lsls	r0, r3, #29
d0081916:	d512      	bpl.n	d008193e <__swsetup_r+0x7a>
d0081918:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008191a:	b141      	cbz	r1, d008192e <__swsetup_r+0x6a>
d008191c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081920:	4299      	cmp	r1, r3
d0081922:	d002      	beq.n	d008192a <__swsetup_r+0x66>
d0081924:	4630      	mov	r0, r6
d0081926:	f7ff fd6d 	bl	d0081404 <_free_r>
d008192a:	2300      	movs	r3, #0
d008192c:	6363      	str	r3, [r4, #52]	; 0x34
d008192e:	89a3      	ldrh	r3, [r4, #12]
d0081930:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0081934:	81a3      	strh	r3, [r4, #12]
d0081936:	2300      	movs	r3, #0
d0081938:	6063      	str	r3, [r4, #4]
d008193a:	6923      	ldr	r3, [r4, #16]
d008193c:	6023      	str	r3, [r4, #0]
d008193e:	89a3      	ldrh	r3, [r4, #12]
d0081940:	f043 0308 	orr.w	r3, r3, #8
d0081944:	81a3      	strh	r3, [r4, #12]
d0081946:	6923      	ldr	r3, [r4, #16]
d0081948:	b94b      	cbnz	r3, d008195e <__swsetup_r+0x9a>
d008194a:	89a3      	ldrh	r3, [r4, #12]
d008194c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0081950:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0081954:	d003      	beq.n	d008195e <__swsetup_r+0x9a>
d0081956:	4621      	mov	r1, r4
d0081958:	4630      	mov	r0, r6
d008195a:	f000 f9ff 	bl	d0081d5c <__smakebuf_r>
d008195e:	89a0      	ldrh	r0, [r4, #12]
d0081960:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0081964:	f010 0301 	ands.w	r3, r0, #1
d0081968:	d00a      	beq.n	d0081980 <__swsetup_r+0xbc>
d008196a:	2300      	movs	r3, #0
d008196c:	60a3      	str	r3, [r4, #8]
d008196e:	6963      	ldr	r3, [r4, #20]
d0081970:	425b      	negs	r3, r3
d0081972:	61a3      	str	r3, [r4, #24]
d0081974:	6923      	ldr	r3, [r4, #16]
d0081976:	b943      	cbnz	r3, d008198a <__swsetup_r+0xc6>
d0081978:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d008197c:	d1ba      	bne.n	d00818f4 <__swsetup_r+0x30>
d008197e:	bd70      	pop	{r4, r5, r6, pc}
d0081980:	0781      	lsls	r1, r0, #30
d0081982:	bf58      	it	pl
d0081984:	6963      	ldrpl	r3, [r4, #20]
d0081986:	60a3      	str	r3, [r4, #8]
d0081988:	e7f4      	b.n	d0081974 <__swsetup_r+0xb0>
d008198a:	2000      	movs	r0, #0
d008198c:	e7f7      	b.n	d008197e <__swsetup_r+0xba>
d008198e:	bf00      	nop
d0081990:	d009c670 	.word	0xd009c670
d0081994:	d009c548 	.word	0xd009c548
d0081998:	d009c568 	.word	0xd009c568
d008199c:	d009c528 	.word	0xd009c528

d00819a0 <__sflush_r>:
d00819a0:	898a      	ldrh	r2, [r1, #12]
d00819a2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00819a6:	4605      	mov	r5, r0
d00819a8:	0710      	lsls	r0, r2, #28
d00819aa:	460c      	mov	r4, r1
d00819ac:	d458      	bmi.n	d0081a60 <__sflush_r+0xc0>
d00819ae:	684b      	ldr	r3, [r1, #4]
d00819b0:	2b00      	cmp	r3, #0
d00819b2:	dc05      	bgt.n	d00819c0 <__sflush_r+0x20>
d00819b4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00819b6:	2b00      	cmp	r3, #0
d00819b8:	dc02      	bgt.n	d00819c0 <__sflush_r+0x20>
d00819ba:	2000      	movs	r0, #0
d00819bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00819c0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00819c2:	2e00      	cmp	r6, #0
d00819c4:	d0f9      	beq.n	d00819ba <__sflush_r+0x1a>
d00819c6:	2300      	movs	r3, #0
d00819c8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00819cc:	682f      	ldr	r7, [r5, #0]
d00819ce:	602b      	str	r3, [r5, #0]
d00819d0:	d032      	beq.n	d0081a38 <__sflush_r+0x98>
d00819d2:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00819d4:	89a3      	ldrh	r3, [r4, #12]
d00819d6:	075a      	lsls	r2, r3, #29
d00819d8:	d505      	bpl.n	d00819e6 <__sflush_r+0x46>
d00819da:	6863      	ldr	r3, [r4, #4]
d00819dc:	1ac0      	subs	r0, r0, r3
d00819de:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00819e0:	b10b      	cbz	r3, d00819e6 <__sflush_r+0x46>
d00819e2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00819e4:	1ac0      	subs	r0, r0, r3
d00819e6:	2300      	movs	r3, #0
d00819e8:	4602      	mov	r2, r0
d00819ea:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00819ec:	6a21      	ldr	r1, [r4, #32]
d00819ee:	4628      	mov	r0, r5
d00819f0:	47b0      	blx	r6
d00819f2:	1c43      	adds	r3, r0, #1
d00819f4:	89a3      	ldrh	r3, [r4, #12]
d00819f6:	d106      	bne.n	d0081a06 <__sflush_r+0x66>
d00819f8:	6829      	ldr	r1, [r5, #0]
d00819fa:	291d      	cmp	r1, #29
d00819fc:	d82c      	bhi.n	d0081a58 <__sflush_r+0xb8>
d00819fe:	4a2a      	ldr	r2, [pc, #168]	; (d0081aa8 <__sflush_r+0x108>)
d0081a00:	40ca      	lsrs	r2, r1
d0081a02:	07d6      	lsls	r6, r2, #31
d0081a04:	d528      	bpl.n	d0081a58 <__sflush_r+0xb8>
d0081a06:	2200      	movs	r2, #0
d0081a08:	6062      	str	r2, [r4, #4]
d0081a0a:	04d9      	lsls	r1, r3, #19
d0081a0c:	6922      	ldr	r2, [r4, #16]
d0081a0e:	6022      	str	r2, [r4, #0]
d0081a10:	d504      	bpl.n	d0081a1c <__sflush_r+0x7c>
d0081a12:	1c42      	adds	r2, r0, #1
d0081a14:	d101      	bne.n	d0081a1a <__sflush_r+0x7a>
d0081a16:	682b      	ldr	r3, [r5, #0]
d0081a18:	b903      	cbnz	r3, d0081a1c <__sflush_r+0x7c>
d0081a1a:	6560      	str	r0, [r4, #84]	; 0x54
d0081a1c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0081a1e:	602f      	str	r7, [r5, #0]
d0081a20:	2900      	cmp	r1, #0
d0081a22:	d0ca      	beq.n	d00819ba <__sflush_r+0x1a>
d0081a24:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081a28:	4299      	cmp	r1, r3
d0081a2a:	d002      	beq.n	d0081a32 <__sflush_r+0x92>
d0081a2c:	4628      	mov	r0, r5
d0081a2e:	f7ff fce9 	bl	d0081404 <_free_r>
d0081a32:	2000      	movs	r0, #0
d0081a34:	6360      	str	r0, [r4, #52]	; 0x34
d0081a36:	e7c1      	b.n	d00819bc <__sflush_r+0x1c>
d0081a38:	6a21      	ldr	r1, [r4, #32]
d0081a3a:	2301      	movs	r3, #1
d0081a3c:	4628      	mov	r0, r5
d0081a3e:	47b0      	blx	r6
d0081a40:	1c41      	adds	r1, r0, #1
d0081a42:	d1c7      	bne.n	d00819d4 <__sflush_r+0x34>
d0081a44:	682b      	ldr	r3, [r5, #0]
d0081a46:	2b00      	cmp	r3, #0
d0081a48:	d0c4      	beq.n	d00819d4 <__sflush_r+0x34>
d0081a4a:	2b1d      	cmp	r3, #29
d0081a4c:	d001      	beq.n	d0081a52 <__sflush_r+0xb2>
d0081a4e:	2b16      	cmp	r3, #22
d0081a50:	d101      	bne.n	d0081a56 <__sflush_r+0xb6>
d0081a52:	602f      	str	r7, [r5, #0]
d0081a54:	e7b1      	b.n	d00819ba <__sflush_r+0x1a>
d0081a56:	89a3      	ldrh	r3, [r4, #12]
d0081a58:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081a5c:	81a3      	strh	r3, [r4, #12]
d0081a5e:	e7ad      	b.n	d00819bc <__sflush_r+0x1c>
d0081a60:	690f      	ldr	r7, [r1, #16]
d0081a62:	2f00      	cmp	r7, #0
d0081a64:	d0a9      	beq.n	d00819ba <__sflush_r+0x1a>
d0081a66:	0793      	lsls	r3, r2, #30
d0081a68:	680e      	ldr	r6, [r1, #0]
d0081a6a:	bf08      	it	eq
d0081a6c:	694b      	ldreq	r3, [r1, #20]
d0081a6e:	600f      	str	r7, [r1, #0]
d0081a70:	bf18      	it	ne
d0081a72:	2300      	movne	r3, #0
d0081a74:	eba6 0807 	sub.w	r8, r6, r7
d0081a78:	608b      	str	r3, [r1, #8]
d0081a7a:	f1b8 0f00 	cmp.w	r8, #0
d0081a7e:	dd9c      	ble.n	d00819ba <__sflush_r+0x1a>
d0081a80:	6a21      	ldr	r1, [r4, #32]
d0081a82:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0081a84:	4643      	mov	r3, r8
d0081a86:	463a      	mov	r2, r7
d0081a88:	4628      	mov	r0, r5
d0081a8a:	47b0      	blx	r6
d0081a8c:	2800      	cmp	r0, #0
d0081a8e:	dc06      	bgt.n	d0081a9e <__sflush_r+0xfe>
d0081a90:	89a3      	ldrh	r3, [r4, #12]
d0081a92:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081a96:	81a3      	strh	r3, [r4, #12]
d0081a98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081a9c:	e78e      	b.n	d00819bc <__sflush_r+0x1c>
d0081a9e:	4407      	add	r7, r0
d0081aa0:	eba8 0800 	sub.w	r8, r8, r0
d0081aa4:	e7e9      	b.n	d0081a7a <__sflush_r+0xda>
d0081aa6:	bf00      	nop
d0081aa8:	20400001 	.word	0x20400001

d0081aac <_fflush_r>:
d0081aac:	b538      	push	{r3, r4, r5, lr}
d0081aae:	690b      	ldr	r3, [r1, #16]
d0081ab0:	4605      	mov	r5, r0
d0081ab2:	460c      	mov	r4, r1
d0081ab4:	b913      	cbnz	r3, d0081abc <_fflush_r+0x10>
d0081ab6:	2500      	movs	r5, #0
d0081ab8:	4628      	mov	r0, r5
d0081aba:	bd38      	pop	{r3, r4, r5, pc}
d0081abc:	b118      	cbz	r0, d0081ac6 <_fflush_r+0x1a>
d0081abe:	6983      	ldr	r3, [r0, #24]
d0081ac0:	b90b      	cbnz	r3, d0081ac6 <_fflush_r+0x1a>
d0081ac2:	f000 f887 	bl	d0081bd4 <__sinit>
d0081ac6:	4b14      	ldr	r3, [pc, #80]	; (d0081b18 <_fflush_r+0x6c>)
d0081ac8:	429c      	cmp	r4, r3
d0081aca:	d11b      	bne.n	d0081b04 <_fflush_r+0x58>
d0081acc:	686c      	ldr	r4, [r5, #4]
d0081ace:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081ad2:	2b00      	cmp	r3, #0
d0081ad4:	d0ef      	beq.n	d0081ab6 <_fflush_r+0xa>
d0081ad6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081ad8:	07d0      	lsls	r0, r2, #31
d0081ada:	d404      	bmi.n	d0081ae6 <_fflush_r+0x3a>
d0081adc:	0599      	lsls	r1, r3, #22
d0081ade:	d402      	bmi.n	d0081ae6 <_fflush_r+0x3a>
d0081ae0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081ae2:	f000 f915 	bl	d0081d10 <__retarget_lock_acquire_recursive>
d0081ae6:	4628      	mov	r0, r5
d0081ae8:	4621      	mov	r1, r4
d0081aea:	f7ff ff59 	bl	d00819a0 <__sflush_r>
d0081aee:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081af0:	07da      	lsls	r2, r3, #31
d0081af2:	4605      	mov	r5, r0
d0081af4:	d4e0      	bmi.n	d0081ab8 <_fflush_r+0xc>
d0081af6:	89a3      	ldrh	r3, [r4, #12]
d0081af8:	059b      	lsls	r3, r3, #22
d0081afa:	d4dd      	bmi.n	d0081ab8 <_fflush_r+0xc>
d0081afc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0081afe:	f000 f908 	bl	d0081d12 <__retarget_lock_release_recursive>
d0081b02:	e7d9      	b.n	d0081ab8 <_fflush_r+0xc>
d0081b04:	4b05      	ldr	r3, [pc, #20]	; (d0081b1c <_fflush_r+0x70>)
d0081b06:	429c      	cmp	r4, r3
d0081b08:	d101      	bne.n	d0081b0e <_fflush_r+0x62>
d0081b0a:	68ac      	ldr	r4, [r5, #8]
d0081b0c:	e7df      	b.n	d0081ace <_fflush_r+0x22>
d0081b0e:	4b04      	ldr	r3, [pc, #16]	; (d0081b20 <_fflush_r+0x74>)
d0081b10:	429c      	cmp	r4, r3
d0081b12:	bf08      	it	eq
d0081b14:	68ec      	ldreq	r4, [r5, #12]
d0081b16:	e7da      	b.n	d0081ace <_fflush_r+0x22>
d0081b18:	d009c548 	.word	0xd009c548
d0081b1c:	d009c568 	.word	0xd009c568
d0081b20:	d009c528 	.word	0xd009c528

d0081b24 <std>:
d0081b24:	2300      	movs	r3, #0
d0081b26:	b510      	push	{r4, lr}
d0081b28:	4604      	mov	r4, r0
d0081b2a:	e9c0 3300 	strd	r3, r3, [r0]
d0081b2e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0081b32:	6083      	str	r3, [r0, #8]
d0081b34:	8181      	strh	r1, [r0, #12]
d0081b36:	6643      	str	r3, [r0, #100]	; 0x64
d0081b38:	81c2      	strh	r2, [r0, #14]
d0081b3a:	6183      	str	r3, [r0, #24]
d0081b3c:	4619      	mov	r1, r3
d0081b3e:	2208      	movs	r2, #8
d0081b40:	305c      	adds	r0, #92	; 0x5c
d0081b42:	f7ff fc57 	bl	d00813f4 <memset>
d0081b46:	4b05      	ldr	r3, [pc, #20]	; (d0081b5c <std+0x38>)
d0081b48:	6263      	str	r3, [r4, #36]	; 0x24
d0081b4a:	4b05      	ldr	r3, [pc, #20]	; (d0081b60 <std+0x3c>)
d0081b4c:	62a3      	str	r3, [r4, #40]	; 0x28
d0081b4e:	4b05      	ldr	r3, [pc, #20]	; (d0081b64 <std+0x40>)
d0081b50:	62e3      	str	r3, [r4, #44]	; 0x2c
d0081b52:	4b05      	ldr	r3, [pc, #20]	; (d0081b68 <std+0x44>)
d0081b54:	6224      	str	r4, [r4, #32]
d0081b56:	6323      	str	r3, [r4, #48]	; 0x30
d0081b58:	bd10      	pop	{r4, pc}
d0081b5a:	bf00      	nop
d0081b5c:	d00823d5 	.word	0xd00823d5
d0081b60:	d00823f7 	.word	0xd00823f7
d0081b64:	d008242f 	.word	0xd008242f
d0081b68:	d0082453 	.word	0xd0082453

d0081b6c <_cleanup_r>:
d0081b6c:	4901      	ldr	r1, [pc, #4]	; (d0081b74 <_cleanup_r+0x8>)
d0081b6e:	f000 b8af 	b.w	d0081cd0 <_fwalk_reent>
d0081b72:	bf00      	nop
d0081b74:	d0081aad 	.word	0xd0081aad

d0081b78 <__sfmoreglue>:
d0081b78:	b570      	push	{r4, r5, r6, lr}
d0081b7a:	1e4a      	subs	r2, r1, #1
d0081b7c:	2568      	movs	r5, #104	; 0x68
d0081b7e:	4355      	muls	r5, r2
d0081b80:	460e      	mov	r6, r1
d0081b82:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0081b86:	f7ff fc8d 	bl	d00814a4 <_malloc_r>
d0081b8a:	4604      	mov	r4, r0
d0081b8c:	b140      	cbz	r0, d0081ba0 <__sfmoreglue+0x28>
d0081b8e:	2100      	movs	r1, #0
d0081b90:	e9c0 1600 	strd	r1, r6, [r0]
d0081b94:	300c      	adds	r0, #12
d0081b96:	60a0      	str	r0, [r4, #8]
d0081b98:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0081b9c:	f7ff fc2a 	bl	d00813f4 <memset>
d0081ba0:	4620      	mov	r0, r4
d0081ba2:	bd70      	pop	{r4, r5, r6, pc}

d0081ba4 <__sfp_lock_acquire>:
d0081ba4:	4801      	ldr	r0, [pc, #4]	; (d0081bac <__sfp_lock_acquire+0x8>)
d0081ba6:	f000 b8b3 	b.w	d0081d10 <__retarget_lock_acquire_recursive>
d0081baa:	bf00      	nop
d0081bac:	d009cbfa 	.word	0xd009cbfa

d0081bb0 <__sfp_lock_release>:
d0081bb0:	4801      	ldr	r0, [pc, #4]	; (d0081bb8 <__sfp_lock_release+0x8>)
d0081bb2:	f000 b8ae 	b.w	d0081d12 <__retarget_lock_release_recursive>
d0081bb6:	bf00      	nop
d0081bb8:	d009cbfa 	.word	0xd009cbfa

d0081bbc <__sinit_lock_acquire>:
d0081bbc:	4801      	ldr	r0, [pc, #4]	; (d0081bc4 <__sinit_lock_acquire+0x8>)
d0081bbe:	f000 b8a7 	b.w	d0081d10 <__retarget_lock_acquire_recursive>
d0081bc2:	bf00      	nop
d0081bc4:	d009cbf5 	.word	0xd009cbf5

d0081bc8 <__sinit_lock_release>:
d0081bc8:	4801      	ldr	r0, [pc, #4]	; (d0081bd0 <__sinit_lock_release+0x8>)
d0081bca:	f000 b8a2 	b.w	d0081d12 <__retarget_lock_release_recursive>
d0081bce:	bf00      	nop
d0081bd0:	d009cbf5 	.word	0xd009cbf5

d0081bd4 <__sinit>:
d0081bd4:	b510      	push	{r4, lr}
d0081bd6:	4604      	mov	r4, r0
d0081bd8:	f7ff fff0 	bl	d0081bbc <__sinit_lock_acquire>
d0081bdc:	69a3      	ldr	r3, [r4, #24]
d0081bde:	b11b      	cbz	r3, d0081be8 <__sinit+0x14>
d0081be0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0081be4:	f7ff bff0 	b.w	d0081bc8 <__sinit_lock_release>
d0081be8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081bec:	6523      	str	r3, [r4, #80]	; 0x50
d0081bee:	4b13      	ldr	r3, [pc, #76]	; (d0081c3c <__sinit+0x68>)
d0081bf0:	4a13      	ldr	r2, [pc, #76]	; (d0081c40 <__sinit+0x6c>)
d0081bf2:	681b      	ldr	r3, [r3, #0]
d0081bf4:	62a2      	str	r2, [r4, #40]	; 0x28
d0081bf6:	42a3      	cmp	r3, r4
d0081bf8:	bf04      	itt	eq
d0081bfa:	2301      	moveq	r3, #1
d0081bfc:	61a3      	streq	r3, [r4, #24]
d0081bfe:	4620      	mov	r0, r4
d0081c00:	f000 f820 	bl	d0081c44 <__sfp>
d0081c04:	6060      	str	r0, [r4, #4]
d0081c06:	4620      	mov	r0, r4
d0081c08:	f000 f81c 	bl	d0081c44 <__sfp>
d0081c0c:	60a0      	str	r0, [r4, #8]
d0081c0e:	4620      	mov	r0, r4
d0081c10:	f000 f818 	bl	d0081c44 <__sfp>
d0081c14:	2200      	movs	r2, #0
d0081c16:	60e0      	str	r0, [r4, #12]
d0081c18:	2104      	movs	r1, #4
d0081c1a:	6860      	ldr	r0, [r4, #4]
d0081c1c:	f7ff ff82 	bl	d0081b24 <std>
d0081c20:	68a0      	ldr	r0, [r4, #8]
d0081c22:	2201      	movs	r2, #1
d0081c24:	2109      	movs	r1, #9
d0081c26:	f7ff ff7d 	bl	d0081b24 <std>
d0081c2a:	68e0      	ldr	r0, [r4, #12]
d0081c2c:	2202      	movs	r2, #2
d0081c2e:	2112      	movs	r1, #18
d0081c30:	f7ff ff78 	bl	d0081b24 <std>
d0081c34:	2301      	movs	r3, #1
d0081c36:	61a3      	str	r3, [r4, #24]
d0081c38:	e7d2      	b.n	d0081be0 <__sinit+0xc>
d0081c3a:	bf00      	nop
d0081c3c:	d009c524 	.word	0xd009c524
d0081c40:	d0081b6d 	.word	0xd0081b6d

d0081c44 <__sfp>:
d0081c44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081c46:	4607      	mov	r7, r0
d0081c48:	f7ff ffac 	bl	d0081ba4 <__sfp_lock_acquire>
d0081c4c:	4b1e      	ldr	r3, [pc, #120]	; (d0081cc8 <__sfp+0x84>)
d0081c4e:	681e      	ldr	r6, [r3, #0]
d0081c50:	69b3      	ldr	r3, [r6, #24]
d0081c52:	b913      	cbnz	r3, d0081c5a <__sfp+0x16>
d0081c54:	4630      	mov	r0, r6
d0081c56:	f7ff ffbd 	bl	d0081bd4 <__sinit>
d0081c5a:	3648      	adds	r6, #72	; 0x48
d0081c5c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081c60:	3b01      	subs	r3, #1
d0081c62:	d503      	bpl.n	d0081c6c <__sfp+0x28>
d0081c64:	6833      	ldr	r3, [r6, #0]
d0081c66:	b30b      	cbz	r3, d0081cac <__sfp+0x68>
d0081c68:	6836      	ldr	r6, [r6, #0]
d0081c6a:	e7f7      	b.n	d0081c5c <__sfp+0x18>
d0081c6c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0081c70:	b9d5      	cbnz	r5, d0081ca8 <__sfp+0x64>
d0081c72:	4b16      	ldr	r3, [pc, #88]	; (d0081ccc <__sfp+0x88>)
d0081c74:	60e3      	str	r3, [r4, #12]
d0081c76:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0081c7a:	6665      	str	r5, [r4, #100]	; 0x64
d0081c7c:	f000 f847 	bl	d0081d0e <__retarget_lock_init_recursive>
d0081c80:	f7ff ff96 	bl	d0081bb0 <__sfp_lock_release>
d0081c84:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0081c88:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0081c8c:	6025      	str	r5, [r4, #0]
d0081c8e:	61a5      	str	r5, [r4, #24]
d0081c90:	2208      	movs	r2, #8
d0081c92:	4629      	mov	r1, r5
d0081c94:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0081c98:	f7ff fbac 	bl	d00813f4 <memset>
d0081c9c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0081ca0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081ca4:	4620      	mov	r0, r4
d0081ca6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081ca8:	3468      	adds	r4, #104	; 0x68
d0081caa:	e7d9      	b.n	d0081c60 <__sfp+0x1c>
d0081cac:	2104      	movs	r1, #4
d0081cae:	4638      	mov	r0, r7
d0081cb0:	f7ff ff62 	bl	d0081b78 <__sfmoreglue>
d0081cb4:	4604      	mov	r4, r0
d0081cb6:	6030      	str	r0, [r6, #0]
d0081cb8:	2800      	cmp	r0, #0
d0081cba:	d1d5      	bne.n	d0081c68 <__sfp+0x24>
d0081cbc:	f7ff ff78 	bl	d0081bb0 <__sfp_lock_release>
d0081cc0:	230c      	movs	r3, #12
d0081cc2:	603b      	str	r3, [r7, #0]
d0081cc4:	e7ee      	b.n	d0081ca4 <__sfp+0x60>
d0081cc6:	bf00      	nop
d0081cc8:	d009c524 	.word	0xd009c524
d0081ccc:	ffff0001 	.word	0xffff0001

d0081cd0 <_fwalk_reent>:
d0081cd0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081cd4:	4606      	mov	r6, r0
d0081cd6:	4688      	mov	r8, r1
d0081cd8:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081cdc:	2700      	movs	r7, #0
d0081cde:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081ce2:	f1b9 0901 	subs.w	r9, r9, #1
d0081ce6:	d505      	bpl.n	d0081cf4 <_fwalk_reent+0x24>
d0081ce8:	6824      	ldr	r4, [r4, #0]
d0081cea:	2c00      	cmp	r4, #0
d0081cec:	d1f7      	bne.n	d0081cde <_fwalk_reent+0xe>
d0081cee:	4638      	mov	r0, r7
d0081cf0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081cf4:	89ab      	ldrh	r3, [r5, #12]
d0081cf6:	2b01      	cmp	r3, #1
d0081cf8:	d907      	bls.n	d0081d0a <_fwalk_reent+0x3a>
d0081cfa:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081cfe:	3301      	adds	r3, #1
d0081d00:	d003      	beq.n	d0081d0a <_fwalk_reent+0x3a>
d0081d02:	4629      	mov	r1, r5
d0081d04:	4630      	mov	r0, r6
d0081d06:	47c0      	blx	r8
d0081d08:	4307      	orrs	r7, r0
d0081d0a:	3568      	adds	r5, #104	; 0x68
d0081d0c:	e7e9      	b.n	d0081ce2 <_fwalk_reent+0x12>

d0081d0e <__retarget_lock_init_recursive>:
d0081d0e:	4770      	bx	lr

d0081d10 <__retarget_lock_acquire_recursive>:
d0081d10:	4770      	bx	lr

d0081d12 <__retarget_lock_release_recursive>:
d0081d12:	4770      	bx	lr

d0081d14 <__swhatbuf_r>:
d0081d14:	b570      	push	{r4, r5, r6, lr}
d0081d16:	460e      	mov	r6, r1
d0081d18:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081d1c:	2900      	cmp	r1, #0
d0081d1e:	b096      	sub	sp, #88	; 0x58
d0081d20:	4614      	mov	r4, r2
d0081d22:	461d      	mov	r5, r3
d0081d24:	da07      	bge.n	d0081d36 <__swhatbuf_r+0x22>
d0081d26:	2300      	movs	r3, #0
d0081d28:	602b      	str	r3, [r5, #0]
d0081d2a:	89b3      	ldrh	r3, [r6, #12]
d0081d2c:	061a      	lsls	r2, r3, #24
d0081d2e:	d410      	bmi.n	d0081d52 <__swhatbuf_r+0x3e>
d0081d30:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081d34:	e00e      	b.n	d0081d54 <__swhatbuf_r+0x40>
d0081d36:	466a      	mov	r2, sp
d0081d38:	f000 fba0 	bl	d008247c <_fstat_r>
d0081d3c:	2800      	cmp	r0, #0
d0081d3e:	dbf2      	blt.n	d0081d26 <__swhatbuf_r+0x12>
d0081d40:	9a01      	ldr	r2, [sp, #4]
d0081d42:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081d46:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081d4a:	425a      	negs	r2, r3
d0081d4c:	415a      	adcs	r2, r3
d0081d4e:	602a      	str	r2, [r5, #0]
d0081d50:	e7ee      	b.n	d0081d30 <__swhatbuf_r+0x1c>
d0081d52:	2340      	movs	r3, #64	; 0x40
d0081d54:	2000      	movs	r0, #0
d0081d56:	6023      	str	r3, [r4, #0]
d0081d58:	b016      	add	sp, #88	; 0x58
d0081d5a:	bd70      	pop	{r4, r5, r6, pc}

d0081d5c <__smakebuf_r>:
d0081d5c:	898b      	ldrh	r3, [r1, #12]
d0081d5e:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0081d60:	079d      	lsls	r5, r3, #30
d0081d62:	4606      	mov	r6, r0
d0081d64:	460c      	mov	r4, r1
d0081d66:	d507      	bpl.n	d0081d78 <__smakebuf_r+0x1c>
d0081d68:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0081d6c:	6023      	str	r3, [r4, #0]
d0081d6e:	6123      	str	r3, [r4, #16]
d0081d70:	2301      	movs	r3, #1
d0081d72:	6163      	str	r3, [r4, #20]
d0081d74:	b002      	add	sp, #8
d0081d76:	bd70      	pop	{r4, r5, r6, pc}
d0081d78:	ab01      	add	r3, sp, #4
d0081d7a:	466a      	mov	r2, sp
d0081d7c:	f7ff ffca 	bl	d0081d14 <__swhatbuf_r>
d0081d80:	9900      	ldr	r1, [sp, #0]
d0081d82:	4605      	mov	r5, r0
d0081d84:	4630      	mov	r0, r6
d0081d86:	f7ff fb8d 	bl	d00814a4 <_malloc_r>
d0081d8a:	b948      	cbnz	r0, d0081da0 <__smakebuf_r+0x44>
d0081d8c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081d90:	059a      	lsls	r2, r3, #22
d0081d92:	d4ef      	bmi.n	d0081d74 <__smakebuf_r+0x18>
d0081d94:	f023 0303 	bic.w	r3, r3, #3
d0081d98:	f043 0302 	orr.w	r3, r3, #2
d0081d9c:	81a3      	strh	r3, [r4, #12]
d0081d9e:	e7e3      	b.n	d0081d68 <__smakebuf_r+0xc>
d0081da0:	4b0d      	ldr	r3, [pc, #52]	; (d0081dd8 <__smakebuf_r+0x7c>)
d0081da2:	62b3      	str	r3, [r6, #40]	; 0x28
d0081da4:	89a3      	ldrh	r3, [r4, #12]
d0081da6:	6020      	str	r0, [r4, #0]
d0081da8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081dac:	81a3      	strh	r3, [r4, #12]
d0081dae:	9b00      	ldr	r3, [sp, #0]
d0081db0:	6163      	str	r3, [r4, #20]
d0081db2:	9b01      	ldr	r3, [sp, #4]
d0081db4:	6120      	str	r0, [r4, #16]
d0081db6:	b15b      	cbz	r3, d0081dd0 <__smakebuf_r+0x74>
d0081db8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0081dbc:	4630      	mov	r0, r6
d0081dbe:	f000 fb6f 	bl	d00824a0 <_isatty_r>
d0081dc2:	b128      	cbz	r0, d0081dd0 <__smakebuf_r+0x74>
d0081dc4:	89a3      	ldrh	r3, [r4, #12]
d0081dc6:	f023 0303 	bic.w	r3, r3, #3
d0081dca:	f043 0301 	orr.w	r3, r3, #1
d0081dce:	81a3      	strh	r3, [r4, #12]
d0081dd0:	89a0      	ldrh	r0, [r4, #12]
d0081dd2:	4305      	orrs	r5, r0
d0081dd4:	81a5      	strh	r5, [r4, #12]
d0081dd6:	e7cd      	b.n	d0081d74 <__smakebuf_r+0x18>
d0081dd8:	d0081b6d 	.word	0xd0081b6d

d0081ddc <__malloc_lock>:
d0081ddc:	4801      	ldr	r0, [pc, #4]	; (d0081de4 <__malloc_lock+0x8>)
d0081dde:	f7ff bf97 	b.w	d0081d10 <__retarget_lock_acquire_recursive>
d0081de2:	bf00      	nop
d0081de4:	d009cbf6 	.word	0xd009cbf6

d0081de8 <__malloc_unlock>:
d0081de8:	4801      	ldr	r0, [pc, #4]	; (d0081df0 <__malloc_unlock+0x8>)
d0081dea:	f7ff bf92 	b.w	d0081d12 <__retarget_lock_release_recursive>
d0081dee:	bf00      	nop
d0081df0:	d009cbf6 	.word	0xd009cbf6

d0081df4 <__ssputs_r>:
d0081df4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081df8:	688e      	ldr	r6, [r1, #8]
d0081dfa:	429e      	cmp	r6, r3
d0081dfc:	4682      	mov	sl, r0
d0081dfe:	460c      	mov	r4, r1
d0081e00:	4690      	mov	r8, r2
d0081e02:	461f      	mov	r7, r3
d0081e04:	d838      	bhi.n	d0081e78 <__ssputs_r+0x84>
d0081e06:	898a      	ldrh	r2, [r1, #12]
d0081e08:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0081e0c:	d032      	beq.n	d0081e74 <__ssputs_r+0x80>
d0081e0e:	6825      	ldr	r5, [r4, #0]
d0081e10:	6909      	ldr	r1, [r1, #16]
d0081e12:	eba5 0901 	sub.w	r9, r5, r1
d0081e16:	6965      	ldr	r5, [r4, #20]
d0081e18:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0081e1c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0081e20:	3301      	adds	r3, #1
d0081e22:	444b      	add	r3, r9
d0081e24:	106d      	asrs	r5, r5, #1
d0081e26:	429d      	cmp	r5, r3
d0081e28:	bf38      	it	cc
d0081e2a:	461d      	movcc	r5, r3
d0081e2c:	0553      	lsls	r3, r2, #21
d0081e2e:	d531      	bpl.n	d0081e94 <__ssputs_r+0xa0>
d0081e30:	4629      	mov	r1, r5
d0081e32:	f7ff fb37 	bl	d00814a4 <_malloc_r>
d0081e36:	4606      	mov	r6, r0
d0081e38:	b950      	cbnz	r0, d0081e50 <__ssputs_r+0x5c>
d0081e3a:	230c      	movs	r3, #12
d0081e3c:	f8ca 3000 	str.w	r3, [sl]
d0081e40:	89a3      	ldrh	r3, [r4, #12]
d0081e42:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081e46:	81a3      	strh	r3, [r4, #12]
d0081e48:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081e4c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081e50:	6921      	ldr	r1, [r4, #16]
d0081e52:	464a      	mov	r2, r9
d0081e54:	f000 fb9c 	bl	d0082590 <memcpy>
d0081e58:	89a3      	ldrh	r3, [r4, #12]
d0081e5a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0081e5e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081e62:	81a3      	strh	r3, [r4, #12]
d0081e64:	6126      	str	r6, [r4, #16]
d0081e66:	6165      	str	r5, [r4, #20]
d0081e68:	444e      	add	r6, r9
d0081e6a:	eba5 0509 	sub.w	r5, r5, r9
d0081e6e:	6026      	str	r6, [r4, #0]
d0081e70:	60a5      	str	r5, [r4, #8]
d0081e72:	463e      	mov	r6, r7
d0081e74:	42be      	cmp	r6, r7
d0081e76:	d900      	bls.n	d0081e7a <__ssputs_r+0x86>
d0081e78:	463e      	mov	r6, r7
d0081e7a:	4632      	mov	r2, r6
d0081e7c:	6820      	ldr	r0, [r4, #0]
d0081e7e:	4641      	mov	r1, r8
d0081e80:	f000 fb94 	bl	d00825ac <memmove>
d0081e84:	68a3      	ldr	r3, [r4, #8]
d0081e86:	6822      	ldr	r2, [r4, #0]
d0081e88:	1b9b      	subs	r3, r3, r6
d0081e8a:	4432      	add	r2, r6
d0081e8c:	60a3      	str	r3, [r4, #8]
d0081e8e:	6022      	str	r2, [r4, #0]
d0081e90:	2000      	movs	r0, #0
d0081e92:	e7db      	b.n	d0081e4c <__ssputs_r+0x58>
d0081e94:	462a      	mov	r2, r5
d0081e96:	f000 fba3 	bl	d00825e0 <_realloc_r>
d0081e9a:	4606      	mov	r6, r0
d0081e9c:	2800      	cmp	r0, #0
d0081e9e:	d1e1      	bne.n	d0081e64 <__ssputs_r+0x70>
d0081ea0:	6921      	ldr	r1, [r4, #16]
d0081ea2:	4650      	mov	r0, sl
d0081ea4:	f7ff faae 	bl	d0081404 <_free_r>
d0081ea8:	e7c7      	b.n	d0081e3a <__ssputs_r+0x46>
	...

d0081eac <_svfiprintf_r>:
d0081eac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0081eb0:	4698      	mov	r8, r3
d0081eb2:	898b      	ldrh	r3, [r1, #12]
d0081eb4:	061b      	lsls	r3, r3, #24
d0081eb6:	b09d      	sub	sp, #116	; 0x74
d0081eb8:	4607      	mov	r7, r0
d0081eba:	460d      	mov	r5, r1
d0081ebc:	4614      	mov	r4, r2
d0081ebe:	d50e      	bpl.n	d0081ede <_svfiprintf_r+0x32>
d0081ec0:	690b      	ldr	r3, [r1, #16]
d0081ec2:	b963      	cbnz	r3, d0081ede <_svfiprintf_r+0x32>
d0081ec4:	2140      	movs	r1, #64	; 0x40
d0081ec6:	f7ff faed 	bl	d00814a4 <_malloc_r>
d0081eca:	6028      	str	r0, [r5, #0]
d0081ecc:	6128      	str	r0, [r5, #16]
d0081ece:	b920      	cbnz	r0, d0081eda <_svfiprintf_r+0x2e>
d0081ed0:	230c      	movs	r3, #12
d0081ed2:	603b      	str	r3, [r7, #0]
d0081ed4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081ed8:	e0d1      	b.n	d008207e <_svfiprintf_r+0x1d2>
d0081eda:	2340      	movs	r3, #64	; 0x40
d0081edc:	616b      	str	r3, [r5, #20]
d0081ede:	2300      	movs	r3, #0
d0081ee0:	9309      	str	r3, [sp, #36]	; 0x24
d0081ee2:	2320      	movs	r3, #32
d0081ee4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0081ee8:	f8cd 800c 	str.w	r8, [sp, #12]
d0081eec:	2330      	movs	r3, #48	; 0x30
d0081eee:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0082098 <_svfiprintf_r+0x1ec>
d0081ef2:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0081ef6:	f04f 0901 	mov.w	r9, #1
d0081efa:	4623      	mov	r3, r4
d0081efc:	469a      	mov	sl, r3
d0081efe:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081f02:	b10a      	cbz	r2, d0081f08 <_svfiprintf_r+0x5c>
d0081f04:	2a25      	cmp	r2, #37	; 0x25
d0081f06:	d1f9      	bne.n	d0081efc <_svfiprintf_r+0x50>
d0081f08:	ebba 0b04 	subs.w	fp, sl, r4
d0081f0c:	d00b      	beq.n	d0081f26 <_svfiprintf_r+0x7a>
d0081f0e:	465b      	mov	r3, fp
d0081f10:	4622      	mov	r2, r4
d0081f12:	4629      	mov	r1, r5
d0081f14:	4638      	mov	r0, r7
d0081f16:	f7ff ff6d 	bl	d0081df4 <__ssputs_r>
d0081f1a:	3001      	adds	r0, #1
d0081f1c:	f000 80aa 	beq.w	d0082074 <_svfiprintf_r+0x1c8>
d0081f20:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0081f22:	445a      	add	r2, fp
d0081f24:	9209      	str	r2, [sp, #36]	; 0x24
d0081f26:	f89a 3000 	ldrb.w	r3, [sl]
d0081f2a:	2b00      	cmp	r3, #0
d0081f2c:	f000 80a2 	beq.w	d0082074 <_svfiprintf_r+0x1c8>
d0081f30:	2300      	movs	r3, #0
d0081f32:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0081f36:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0081f3a:	f10a 0a01 	add.w	sl, sl, #1
d0081f3e:	9304      	str	r3, [sp, #16]
d0081f40:	9307      	str	r3, [sp, #28]
d0081f42:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0081f46:	931a      	str	r3, [sp, #104]	; 0x68
d0081f48:	4654      	mov	r4, sl
d0081f4a:	2205      	movs	r2, #5
d0081f4c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081f50:	4851      	ldr	r0, [pc, #324]	; (d0082098 <_svfiprintf_r+0x1ec>)
d0081f52:	f000 facd 	bl	d00824f0 <memchr>
d0081f56:	9a04      	ldr	r2, [sp, #16]
d0081f58:	b9d8      	cbnz	r0, d0081f92 <_svfiprintf_r+0xe6>
d0081f5a:	06d0      	lsls	r0, r2, #27
d0081f5c:	bf44      	itt	mi
d0081f5e:	2320      	movmi	r3, #32
d0081f60:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081f64:	0711      	lsls	r1, r2, #28
d0081f66:	bf44      	itt	mi
d0081f68:	232b      	movmi	r3, #43	; 0x2b
d0081f6a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081f6e:	f89a 3000 	ldrb.w	r3, [sl]
d0081f72:	2b2a      	cmp	r3, #42	; 0x2a
d0081f74:	d015      	beq.n	d0081fa2 <_svfiprintf_r+0xf6>
d0081f76:	9a07      	ldr	r2, [sp, #28]
d0081f78:	4654      	mov	r4, sl
d0081f7a:	2000      	movs	r0, #0
d0081f7c:	f04f 0c0a 	mov.w	ip, #10
d0081f80:	4621      	mov	r1, r4
d0081f82:	f811 3b01 	ldrb.w	r3, [r1], #1
d0081f86:	3b30      	subs	r3, #48	; 0x30
d0081f88:	2b09      	cmp	r3, #9
d0081f8a:	d94e      	bls.n	d008202a <_svfiprintf_r+0x17e>
d0081f8c:	b1b0      	cbz	r0, d0081fbc <_svfiprintf_r+0x110>
d0081f8e:	9207      	str	r2, [sp, #28]
d0081f90:	e014      	b.n	d0081fbc <_svfiprintf_r+0x110>
d0081f92:	eba0 0308 	sub.w	r3, r0, r8
d0081f96:	fa09 f303 	lsl.w	r3, r9, r3
d0081f9a:	4313      	orrs	r3, r2
d0081f9c:	9304      	str	r3, [sp, #16]
d0081f9e:	46a2      	mov	sl, r4
d0081fa0:	e7d2      	b.n	d0081f48 <_svfiprintf_r+0x9c>
d0081fa2:	9b03      	ldr	r3, [sp, #12]
d0081fa4:	1d19      	adds	r1, r3, #4
d0081fa6:	681b      	ldr	r3, [r3, #0]
d0081fa8:	9103      	str	r1, [sp, #12]
d0081faa:	2b00      	cmp	r3, #0
d0081fac:	bfbb      	ittet	lt
d0081fae:	425b      	neglt	r3, r3
d0081fb0:	f042 0202 	orrlt.w	r2, r2, #2
d0081fb4:	9307      	strge	r3, [sp, #28]
d0081fb6:	9307      	strlt	r3, [sp, #28]
d0081fb8:	bfb8      	it	lt
d0081fba:	9204      	strlt	r2, [sp, #16]
d0081fbc:	7823      	ldrb	r3, [r4, #0]
d0081fbe:	2b2e      	cmp	r3, #46	; 0x2e
d0081fc0:	d10c      	bne.n	d0081fdc <_svfiprintf_r+0x130>
d0081fc2:	7863      	ldrb	r3, [r4, #1]
d0081fc4:	2b2a      	cmp	r3, #42	; 0x2a
d0081fc6:	d135      	bne.n	d0082034 <_svfiprintf_r+0x188>
d0081fc8:	9b03      	ldr	r3, [sp, #12]
d0081fca:	1d1a      	adds	r2, r3, #4
d0081fcc:	681b      	ldr	r3, [r3, #0]
d0081fce:	9203      	str	r2, [sp, #12]
d0081fd0:	2b00      	cmp	r3, #0
d0081fd2:	bfb8      	it	lt
d0081fd4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0081fd8:	3402      	adds	r4, #2
d0081fda:	9305      	str	r3, [sp, #20]
d0081fdc:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00820a8 <_svfiprintf_r+0x1fc>
d0081fe0:	7821      	ldrb	r1, [r4, #0]
d0081fe2:	2203      	movs	r2, #3
d0081fe4:	4650      	mov	r0, sl
d0081fe6:	f000 fa83 	bl	d00824f0 <memchr>
d0081fea:	b140      	cbz	r0, d0081ffe <_svfiprintf_r+0x152>
d0081fec:	2340      	movs	r3, #64	; 0x40
d0081fee:	eba0 000a 	sub.w	r0, r0, sl
d0081ff2:	fa03 f000 	lsl.w	r0, r3, r0
d0081ff6:	9b04      	ldr	r3, [sp, #16]
d0081ff8:	4303      	orrs	r3, r0
d0081ffa:	3401      	adds	r4, #1
d0081ffc:	9304      	str	r3, [sp, #16]
d0081ffe:	f814 1b01 	ldrb.w	r1, [r4], #1
d0082002:	4826      	ldr	r0, [pc, #152]	; (d008209c <_svfiprintf_r+0x1f0>)
d0082004:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0082008:	2206      	movs	r2, #6
d008200a:	f000 fa71 	bl	d00824f0 <memchr>
d008200e:	2800      	cmp	r0, #0
d0082010:	d038      	beq.n	d0082084 <_svfiprintf_r+0x1d8>
d0082012:	4b23      	ldr	r3, [pc, #140]	; (d00820a0 <_svfiprintf_r+0x1f4>)
d0082014:	bb1b      	cbnz	r3, d008205e <_svfiprintf_r+0x1b2>
d0082016:	9b03      	ldr	r3, [sp, #12]
d0082018:	3307      	adds	r3, #7
d008201a:	f023 0307 	bic.w	r3, r3, #7
d008201e:	3308      	adds	r3, #8
d0082020:	9303      	str	r3, [sp, #12]
d0082022:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0082024:	4433      	add	r3, r6
d0082026:	9309      	str	r3, [sp, #36]	; 0x24
d0082028:	e767      	b.n	d0081efa <_svfiprintf_r+0x4e>
d008202a:	fb0c 3202 	mla	r2, ip, r2, r3
d008202e:	460c      	mov	r4, r1
d0082030:	2001      	movs	r0, #1
d0082032:	e7a5      	b.n	d0081f80 <_svfiprintf_r+0xd4>
d0082034:	2300      	movs	r3, #0
d0082036:	3401      	adds	r4, #1
d0082038:	9305      	str	r3, [sp, #20]
d008203a:	4619      	mov	r1, r3
d008203c:	f04f 0c0a 	mov.w	ip, #10
d0082040:	4620      	mov	r0, r4
d0082042:	f810 2b01 	ldrb.w	r2, [r0], #1
d0082046:	3a30      	subs	r2, #48	; 0x30
d0082048:	2a09      	cmp	r2, #9
d008204a:	d903      	bls.n	d0082054 <_svfiprintf_r+0x1a8>
d008204c:	2b00      	cmp	r3, #0
d008204e:	d0c5      	beq.n	d0081fdc <_svfiprintf_r+0x130>
d0082050:	9105      	str	r1, [sp, #20]
d0082052:	e7c3      	b.n	d0081fdc <_svfiprintf_r+0x130>
d0082054:	fb0c 2101 	mla	r1, ip, r1, r2
d0082058:	4604      	mov	r4, r0
d008205a:	2301      	movs	r3, #1
d008205c:	e7f0      	b.n	d0082040 <_svfiprintf_r+0x194>
d008205e:	ab03      	add	r3, sp, #12
d0082060:	9300      	str	r3, [sp, #0]
d0082062:	462a      	mov	r2, r5
d0082064:	4b0f      	ldr	r3, [pc, #60]	; (d00820a4 <_svfiprintf_r+0x1f8>)
d0082066:	a904      	add	r1, sp, #16
d0082068:	4638      	mov	r0, r7
d008206a:	f3af 8000 	nop.w
d008206e:	1c42      	adds	r2, r0, #1
d0082070:	4606      	mov	r6, r0
d0082072:	d1d6      	bne.n	d0082022 <_svfiprintf_r+0x176>
d0082074:	89ab      	ldrh	r3, [r5, #12]
d0082076:	065b      	lsls	r3, r3, #25
d0082078:	f53f af2c 	bmi.w	d0081ed4 <_svfiprintf_r+0x28>
d008207c:	9809      	ldr	r0, [sp, #36]	; 0x24
d008207e:	b01d      	add	sp, #116	; 0x74
d0082080:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0082084:	ab03      	add	r3, sp, #12
d0082086:	9300      	str	r3, [sp, #0]
d0082088:	462a      	mov	r2, r5
d008208a:	4b06      	ldr	r3, [pc, #24]	; (d00820a4 <_svfiprintf_r+0x1f8>)
d008208c:	a904      	add	r1, sp, #16
d008208e:	4638      	mov	r0, r7
d0082090:	f000 f87a 	bl	d0082188 <_printf_i>
d0082094:	e7eb      	b.n	d008206e <_svfiprintf_r+0x1c2>
d0082096:	bf00      	nop
d0082098:	d009c588 	.word	0xd009c588
d008209c:	d009c592 	.word	0xd009c592
d00820a0:	00000000 	.word	0x00000000
d00820a4:	d0081df5 	.word	0xd0081df5
d00820a8:	d009c58e 	.word	0xd009c58e

d00820ac <_printf_common>:
d00820ac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00820b0:	4616      	mov	r6, r2
d00820b2:	4699      	mov	r9, r3
d00820b4:	688a      	ldr	r2, [r1, #8]
d00820b6:	690b      	ldr	r3, [r1, #16]
d00820b8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00820bc:	4293      	cmp	r3, r2
d00820be:	bfb8      	it	lt
d00820c0:	4613      	movlt	r3, r2
d00820c2:	6033      	str	r3, [r6, #0]
d00820c4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00820c8:	4607      	mov	r7, r0
d00820ca:	460c      	mov	r4, r1
d00820cc:	b10a      	cbz	r2, d00820d2 <_printf_common+0x26>
d00820ce:	3301      	adds	r3, #1
d00820d0:	6033      	str	r3, [r6, #0]
d00820d2:	6823      	ldr	r3, [r4, #0]
d00820d4:	0699      	lsls	r1, r3, #26
d00820d6:	bf42      	ittt	mi
d00820d8:	6833      	ldrmi	r3, [r6, #0]
d00820da:	3302      	addmi	r3, #2
d00820dc:	6033      	strmi	r3, [r6, #0]
d00820de:	6825      	ldr	r5, [r4, #0]
d00820e0:	f015 0506 	ands.w	r5, r5, #6
d00820e4:	d106      	bne.n	d00820f4 <_printf_common+0x48>
d00820e6:	f104 0a19 	add.w	sl, r4, #25
d00820ea:	68e3      	ldr	r3, [r4, #12]
d00820ec:	6832      	ldr	r2, [r6, #0]
d00820ee:	1a9b      	subs	r3, r3, r2
d00820f0:	42ab      	cmp	r3, r5
d00820f2:	dc26      	bgt.n	d0082142 <_printf_common+0x96>
d00820f4:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d00820f8:	1e13      	subs	r3, r2, #0
d00820fa:	6822      	ldr	r2, [r4, #0]
d00820fc:	bf18      	it	ne
d00820fe:	2301      	movne	r3, #1
d0082100:	0692      	lsls	r2, r2, #26
d0082102:	d42b      	bmi.n	d008215c <_printf_common+0xb0>
d0082104:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0082108:	4649      	mov	r1, r9
d008210a:	4638      	mov	r0, r7
d008210c:	47c0      	blx	r8
d008210e:	3001      	adds	r0, #1
d0082110:	d01e      	beq.n	d0082150 <_printf_common+0xa4>
d0082112:	6823      	ldr	r3, [r4, #0]
d0082114:	68e5      	ldr	r5, [r4, #12]
d0082116:	6832      	ldr	r2, [r6, #0]
d0082118:	f003 0306 	and.w	r3, r3, #6
d008211c:	2b04      	cmp	r3, #4
d008211e:	bf08      	it	eq
d0082120:	1aad      	subeq	r5, r5, r2
d0082122:	68a3      	ldr	r3, [r4, #8]
d0082124:	6922      	ldr	r2, [r4, #16]
d0082126:	bf0c      	ite	eq
d0082128:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d008212c:	2500      	movne	r5, #0
d008212e:	4293      	cmp	r3, r2
d0082130:	bfc4      	itt	gt
d0082132:	1a9b      	subgt	r3, r3, r2
d0082134:	18ed      	addgt	r5, r5, r3
d0082136:	2600      	movs	r6, #0
d0082138:	341a      	adds	r4, #26
d008213a:	42b5      	cmp	r5, r6
d008213c:	d11a      	bne.n	d0082174 <_printf_common+0xc8>
d008213e:	2000      	movs	r0, #0
d0082140:	e008      	b.n	d0082154 <_printf_common+0xa8>
d0082142:	2301      	movs	r3, #1
d0082144:	4652      	mov	r2, sl
d0082146:	4649      	mov	r1, r9
d0082148:	4638      	mov	r0, r7
d008214a:	47c0      	blx	r8
d008214c:	3001      	adds	r0, #1
d008214e:	d103      	bne.n	d0082158 <_printf_common+0xac>
d0082150:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0082154:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0082158:	3501      	adds	r5, #1
d008215a:	e7c6      	b.n	d00820ea <_printf_common+0x3e>
d008215c:	18e1      	adds	r1, r4, r3
d008215e:	1c5a      	adds	r2, r3, #1
d0082160:	2030      	movs	r0, #48	; 0x30
d0082162:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0082166:	4422      	add	r2, r4
d0082168:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d008216c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0082170:	3302      	adds	r3, #2
d0082172:	e7c7      	b.n	d0082104 <_printf_common+0x58>
d0082174:	2301      	movs	r3, #1
d0082176:	4622      	mov	r2, r4
d0082178:	4649      	mov	r1, r9
d008217a:	4638      	mov	r0, r7
d008217c:	47c0      	blx	r8
d008217e:	3001      	adds	r0, #1
d0082180:	d0e6      	beq.n	d0082150 <_printf_common+0xa4>
d0082182:	3601      	adds	r6, #1
d0082184:	e7d9      	b.n	d008213a <_printf_common+0x8e>
	...

d0082188 <_printf_i>:
d0082188:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d008218c:	460c      	mov	r4, r1
d008218e:	4691      	mov	r9, r2
d0082190:	7e27      	ldrb	r7, [r4, #24]
d0082192:	990c      	ldr	r1, [sp, #48]	; 0x30
d0082194:	2f78      	cmp	r7, #120	; 0x78
d0082196:	4680      	mov	r8, r0
d0082198:	469a      	mov	sl, r3
d008219a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d008219e:	d807      	bhi.n	d00821b0 <_printf_i+0x28>
d00821a0:	2f62      	cmp	r7, #98	; 0x62
d00821a2:	d80a      	bhi.n	d00821ba <_printf_i+0x32>
d00821a4:	2f00      	cmp	r7, #0
d00821a6:	f000 80d8 	beq.w	d008235a <_printf_i+0x1d2>
d00821aa:	2f58      	cmp	r7, #88	; 0x58
d00821ac:	f000 80a3 	beq.w	d00822f6 <_printf_i+0x16e>
d00821b0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00821b4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00821b8:	e03a      	b.n	d0082230 <_printf_i+0xa8>
d00821ba:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00821be:	2b15      	cmp	r3, #21
d00821c0:	d8f6      	bhi.n	d00821b0 <_printf_i+0x28>
d00821c2:	a001      	add	r0, pc, #4	; (adr r0, d00821c8 <_printf_i+0x40>)
d00821c4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00821c8:	d0082221 	.word	0xd0082221
d00821cc:	d0082235 	.word	0xd0082235
d00821d0:	d00821b1 	.word	0xd00821b1
d00821d4:	d00821b1 	.word	0xd00821b1
d00821d8:	d00821b1 	.word	0xd00821b1
d00821dc:	d00821b1 	.word	0xd00821b1
d00821e0:	d0082235 	.word	0xd0082235
d00821e4:	d00821b1 	.word	0xd00821b1
d00821e8:	d00821b1 	.word	0xd00821b1
d00821ec:	d00821b1 	.word	0xd00821b1
d00821f0:	d00821b1 	.word	0xd00821b1
d00821f4:	d0082341 	.word	0xd0082341
d00821f8:	d0082265 	.word	0xd0082265
d00821fc:	d0082323 	.word	0xd0082323
d0082200:	d00821b1 	.word	0xd00821b1
d0082204:	d00821b1 	.word	0xd00821b1
d0082208:	d0082363 	.word	0xd0082363
d008220c:	d00821b1 	.word	0xd00821b1
d0082210:	d0082265 	.word	0xd0082265
d0082214:	d00821b1 	.word	0xd00821b1
d0082218:	d00821b1 	.word	0xd00821b1
d008221c:	d008232b 	.word	0xd008232b
d0082220:	680b      	ldr	r3, [r1, #0]
d0082222:	1d1a      	adds	r2, r3, #4
d0082224:	681b      	ldr	r3, [r3, #0]
d0082226:	600a      	str	r2, [r1, #0]
d0082228:	f104 0642 	add.w	r6, r4, #66	; 0x42
d008222c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0082230:	2301      	movs	r3, #1
d0082232:	e0a3      	b.n	d008237c <_printf_i+0x1f4>
d0082234:	6825      	ldr	r5, [r4, #0]
d0082236:	6808      	ldr	r0, [r1, #0]
d0082238:	062e      	lsls	r6, r5, #24
d008223a:	f100 0304 	add.w	r3, r0, #4
d008223e:	d50a      	bpl.n	d0082256 <_printf_i+0xce>
d0082240:	6805      	ldr	r5, [r0, #0]
d0082242:	600b      	str	r3, [r1, #0]
d0082244:	2d00      	cmp	r5, #0
d0082246:	da03      	bge.n	d0082250 <_printf_i+0xc8>
d0082248:	232d      	movs	r3, #45	; 0x2d
d008224a:	426d      	negs	r5, r5
d008224c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0082250:	485e      	ldr	r0, [pc, #376]	; (d00823cc <_printf_i+0x244>)
d0082252:	230a      	movs	r3, #10
d0082254:	e019      	b.n	d008228a <_printf_i+0x102>
d0082256:	f015 0f40 	tst.w	r5, #64	; 0x40
d008225a:	6805      	ldr	r5, [r0, #0]
d008225c:	600b      	str	r3, [r1, #0]
d008225e:	bf18      	it	ne
d0082260:	b22d      	sxthne	r5, r5
d0082262:	e7ef      	b.n	d0082244 <_printf_i+0xbc>
d0082264:	680b      	ldr	r3, [r1, #0]
d0082266:	6825      	ldr	r5, [r4, #0]
d0082268:	1d18      	adds	r0, r3, #4
d008226a:	6008      	str	r0, [r1, #0]
d008226c:	0628      	lsls	r0, r5, #24
d008226e:	d501      	bpl.n	d0082274 <_printf_i+0xec>
d0082270:	681d      	ldr	r5, [r3, #0]
d0082272:	e002      	b.n	d008227a <_printf_i+0xf2>
d0082274:	0669      	lsls	r1, r5, #25
d0082276:	d5fb      	bpl.n	d0082270 <_printf_i+0xe8>
d0082278:	881d      	ldrh	r5, [r3, #0]
d008227a:	4854      	ldr	r0, [pc, #336]	; (d00823cc <_printf_i+0x244>)
d008227c:	2f6f      	cmp	r7, #111	; 0x6f
d008227e:	bf0c      	ite	eq
d0082280:	2308      	moveq	r3, #8
d0082282:	230a      	movne	r3, #10
d0082284:	2100      	movs	r1, #0
d0082286:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d008228a:	6866      	ldr	r6, [r4, #4]
d008228c:	60a6      	str	r6, [r4, #8]
d008228e:	2e00      	cmp	r6, #0
d0082290:	bfa2      	ittt	ge
d0082292:	6821      	ldrge	r1, [r4, #0]
d0082294:	f021 0104 	bicge.w	r1, r1, #4
d0082298:	6021      	strge	r1, [r4, #0]
d008229a:	b90d      	cbnz	r5, d00822a0 <_printf_i+0x118>
d008229c:	2e00      	cmp	r6, #0
d008229e:	d04d      	beq.n	d008233c <_printf_i+0x1b4>
d00822a0:	4616      	mov	r6, r2
d00822a2:	fbb5 f1f3 	udiv	r1, r5, r3
d00822a6:	fb03 5711 	mls	r7, r3, r1, r5
d00822aa:	5dc7      	ldrb	r7, [r0, r7]
d00822ac:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00822b0:	462f      	mov	r7, r5
d00822b2:	42bb      	cmp	r3, r7
d00822b4:	460d      	mov	r5, r1
d00822b6:	d9f4      	bls.n	d00822a2 <_printf_i+0x11a>
d00822b8:	2b08      	cmp	r3, #8
d00822ba:	d10b      	bne.n	d00822d4 <_printf_i+0x14c>
d00822bc:	6823      	ldr	r3, [r4, #0]
d00822be:	07df      	lsls	r7, r3, #31
d00822c0:	d508      	bpl.n	d00822d4 <_printf_i+0x14c>
d00822c2:	6923      	ldr	r3, [r4, #16]
d00822c4:	6861      	ldr	r1, [r4, #4]
d00822c6:	4299      	cmp	r1, r3
d00822c8:	bfde      	ittt	le
d00822ca:	2330      	movle	r3, #48	; 0x30
d00822cc:	f806 3c01 	strble.w	r3, [r6, #-1]
d00822d0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00822d4:	1b92      	subs	r2, r2, r6
d00822d6:	6122      	str	r2, [r4, #16]
d00822d8:	f8cd a000 	str.w	sl, [sp]
d00822dc:	464b      	mov	r3, r9
d00822de:	aa03      	add	r2, sp, #12
d00822e0:	4621      	mov	r1, r4
d00822e2:	4640      	mov	r0, r8
d00822e4:	f7ff fee2 	bl	d00820ac <_printf_common>
d00822e8:	3001      	adds	r0, #1
d00822ea:	d14c      	bne.n	d0082386 <_printf_i+0x1fe>
d00822ec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00822f0:	b004      	add	sp, #16
d00822f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00822f6:	4835      	ldr	r0, [pc, #212]	; (d00823cc <_printf_i+0x244>)
d00822f8:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00822fc:	6823      	ldr	r3, [r4, #0]
d00822fe:	680e      	ldr	r6, [r1, #0]
d0082300:	061f      	lsls	r7, r3, #24
d0082302:	f856 5b04 	ldr.w	r5, [r6], #4
d0082306:	600e      	str	r6, [r1, #0]
d0082308:	d514      	bpl.n	d0082334 <_printf_i+0x1ac>
d008230a:	07d9      	lsls	r1, r3, #31
d008230c:	bf44      	itt	mi
d008230e:	f043 0320 	orrmi.w	r3, r3, #32
d0082312:	6023      	strmi	r3, [r4, #0]
d0082314:	b91d      	cbnz	r5, d008231e <_printf_i+0x196>
d0082316:	6823      	ldr	r3, [r4, #0]
d0082318:	f023 0320 	bic.w	r3, r3, #32
d008231c:	6023      	str	r3, [r4, #0]
d008231e:	2310      	movs	r3, #16
d0082320:	e7b0      	b.n	d0082284 <_printf_i+0xfc>
d0082322:	6823      	ldr	r3, [r4, #0]
d0082324:	f043 0320 	orr.w	r3, r3, #32
d0082328:	6023      	str	r3, [r4, #0]
d008232a:	2378      	movs	r3, #120	; 0x78
d008232c:	4828      	ldr	r0, [pc, #160]	; (d00823d0 <_printf_i+0x248>)
d008232e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0082332:	e7e3      	b.n	d00822fc <_printf_i+0x174>
d0082334:	065e      	lsls	r6, r3, #25
d0082336:	bf48      	it	mi
d0082338:	b2ad      	uxthmi	r5, r5
d008233a:	e7e6      	b.n	d008230a <_printf_i+0x182>
d008233c:	4616      	mov	r6, r2
d008233e:	e7bb      	b.n	d00822b8 <_printf_i+0x130>
d0082340:	680b      	ldr	r3, [r1, #0]
d0082342:	6826      	ldr	r6, [r4, #0]
d0082344:	6960      	ldr	r0, [r4, #20]
d0082346:	1d1d      	adds	r5, r3, #4
d0082348:	600d      	str	r5, [r1, #0]
d008234a:	0635      	lsls	r5, r6, #24
d008234c:	681b      	ldr	r3, [r3, #0]
d008234e:	d501      	bpl.n	d0082354 <_printf_i+0x1cc>
d0082350:	6018      	str	r0, [r3, #0]
d0082352:	e002      	b.n	d008235a <_printf_i+0x1d2>
d0082354:	0671      	lsls	r1, r6, #25
d0082356:	d5fb      	bpl.n	d0082350 <_printf_i+0x1c8>
d0082358:	8018      	strh	r0, [r3, #0]
d008235a:	2300      	movs	r3, #0
d008235c:	6123      	str	r3, [r4, #16]
d008235e:	4616      	mov	r6, r2
d0082360:	e7ba      	b.n	d00822d8 <_printf_i+0x150>
d0082362:	680b      	ldr	r3, [r1, #0]
d0082364:	1d1a      	adds	r2, r3, #4
d0082366:	600a      	str	r2, [r1, #0]
d0082368:	681e      	ldr	r6, [r3, #0]
d008236a:	6862      	ldr	r2, [r4, #4]
d008236c:	2100      	movs	r1, #0
d008236e:	4630      	mov	r0, r6
d0082370:	f000 f8be 	bl	d00824f0 <memchr>
d0082374:	b108      	cbz	r0, d008237a <_printf_i+0x1f2>
d0082376:	1b80      	subs	r0, r0, r6
d0082378:	6060      	str	r0, [r4, #4]
d008237a:	6863      	ldr	r3, [r4, #4]
d008237c:	6123      	str	r3, [r4, #16]
d008237e:	2300      	movs	r3, #0
d0082380:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0082384:	e7a8      	b.n	d00822d8 <_printf_i+0x150>
d0082386:	6923      	ldr	r3, [r4, #16]
d0082388:	4632      	mov	r2, r6
d008238a:	4649      	mov	r1, r9
d008238c:	4640      	mov	r0, r8
d008238e:	47d0      	blx	sl
d0082390:	3001      	adds	r0, #1
d0082392:	d0ab      	beq.n	d00822ec <_printf_i+0x164>
d0082394:	6823      	ldr	r3, [r4, #0]
d0082396:	079b      	lsls	r3, r3, #30
d0082398:	d413      	bmi.n	d00823c2 <_printf_i+0x23a>
d008239a:	68e0      	ldr	r0, [r4, #12]
d008239c:	9b03      	ldr	r3, [sp, #12]
d008239e:	4298      	cmp	r0, r3
d00823a0:	bfb8      	it	lt
d00823a2:	4618      	movlt	r0, r3
d00823a4:	e7a4      	b.n	d00822f0 <_printf_i+0x168>
d00823a6:	2301      	movs	r3, #1
d00823a8:	4632      	mov	r2, r6
d00823aa:	4649      	mov	r1, r9
d00823ac:	4640      	mov	r0, r8
d00823ae:	47d0      	blx	sl
d00823b0:	3001      	adds	r0, #1
d00823b2:	d09b      	beq.n	d00822ec <_printf_i+0x164>
d00823b4:	3501      	adds	r5, #1
d00823b6:	68e3      	ldr	r3, [r4, #12]
d00823b8:	9903      	ldr	r1, [sp, #12]
d00823ba:	1a5b      	subs	r3, r3, r1
d00823bc:	42ab      	cmp	r3, r5
d00823be:	dcf2      	bgt.n	d00823a6 <_printf_i+0x21e>
d00823c0:	e7eb      	b.n	d008239a <_printf_i+0x212>
d00823c2:	2500      	movs	r5, #0
d00823c4:	f104 0619 	add.w	r6, r4, #25
d00823c8:	e7f5      	b.n	d00823b6 <_printf_i+0x22e>
d00823ca:	bf00      	nop
d00823cc:	d009c599 	.word	0xd009c599
d00823d0:	d009c5aa 	.word	0xd009c5aa

d00823d4 <__sread>:
d00823d4:	b510      	push	{r4, lr}
d00823d6:	460c      	mov	r4, r1
d00823d8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00823dc:	f000 f926 	bl	d008262c <_read_r>
d00823e0:	2800      	cmp	r0, #0
d00823e2:	bfab      	itete	ge
d00823e4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00823e6:	89a3      	ldrhlt	r3, [r4, #12]
d00823e8:	181b      	addge	r3, r3, r0
d00823ea:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00823ee:	bfac      	ite	ge
d00823f0:	6563      	strge	r3, [r4, #84]	; 0x54
d00823f2:	81a3      	strhlt	r3, [r4, #12]
d00823f4:	bd10      	pop	{r4, pc}

d00823f6 <__swrite>:
d00823f6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00823fa:	461f      	mov	r7, r3
d00823fc:	898b      	ldrh	r3, [r1, #12]
d00823fe:	05db      	lsls	r3, r3, #23
d0082400:	4605      	mov	r5, r0
d0082402:	460c      	mov	r4, r1
d0082404:	4616      	mov	r6, r2
d0082406:	d505      	bpl.n	d0082414 <__swrite+0x1e>
d0082408:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d008240c:	2302      	movs	r3, #2
d008240e:	2200      	movs	r2, #0
d0082410:	f000 f856 	bl	d00824c0 <_lseek_r>
d0082414:	89a3      	ldrh	r3, [r4, #12]
d0082416:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d008241a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d008241e:	81a3      	strh	r3, [r4, #12]
d0082420:	4632      	mov	r2, r6
d0082422:	463b      	mov	r3, r7
d0082424:	4628      	mov	r0, r5
d0082426:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d008242a:	f7fd bf07 	b.w	d008023c <_write_r>

d008242e <__sseek>:
d008242e:	b510      	push	{r4, lr}
d0082430:	460c      	mov	r4, r1
d0082432:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082436:	f000 f843 	bl	d00824c0 <_lseek_r>
d008243a:	1c43      	adds	r3, r0, #1
d008243c:	89a3      	ldrh	r3, [r4, #12]
d008243e:	bf15      	itete	ne
d0082440:	6560      	strne	r0, [r4, #84]	; 0x54
d0082442:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0082446:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d008244a:	81a3      	strheq	r3, [r4, #12]
d008244c:	bf18      	it	ne
d008244e:	81a3      	strhne	r3, [r4, #12]
d0082450:	bd10      	pop	{r4, pc}

d0082452 <__sclose>:
d0082452:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082456:	f000 b801 	b.w	d008245c <_close_r>
	...

d008245c <_close_r>:
d008245c:	b538      	push	{r3, r4, r5, lr}
d008245e:	4d06      	ldr	r5, [pc, #24]	; (d0082478 <_close_r+0x1c>)
d0082460:	2300      	movs	r3, #0
d0082462:	4604      	mov	r4, r0
d0082464:	4608      	mov	r0, r1
d0082466:	602b      	str	r3, [r5, #0]
d0082468:	f7fd ff22 	bl	d00802b0 <_close>
d008246c:	1c43      	adds	r3, r0, #1
d008246e:	d102      	bne.n	d0082476 <_close_r+0x1a>
d0082470:	682b      	ldr	r3, [r5, #0]
d0082472:	b103      	cbz	r3, d0082476 <_close_r+0x1a>
d0082474:	6023      	str	r3, [r4, #0]
d0082476:	bd38      	pop	{r3, r4, r5, pc}
d0082478:	d009cbfc 	.word	0xd009cbfc

d008247c <_fstat_r>:
d008247c:	b538      	push	{r3, r4, r5, lr}
d008247e:	4d07      	ldr	r5, [pc, #28]	; (d008249c <_fstat_r+0x20>)
d0082480:	2300      	movs	r3, #0
d0082482:	4604      	mov	r4, r0
d0082484:	4608      	mov	r0, r1
d0082486:	4611      	mov	r1, r2
d0082488:	602b      	str	r3, [r5, #0]
d008248a:	f7fd ff15 	bl	d00802b8 <_fstat>
d008248e:	1c43      	adds	r3, r0, #1
d0082490:	d102      	bne.n	d0082498 <_fstat_r+0x1c>
d0082492:	682b      	ldr	r3, [r5, #0]
d0082494:	b103      	cbz	r3, d0082498 <_fstat_r+0x1c>
d0082496:	6023      	str	r3, [r4, #0]
d0082498:	bd38      	pop	{r3, r4, r5, pc}
d008249a:	bf00      	nop
d008249c:	d009cbfc 	.word	0xd009cbfc

d00824a0 <_isatty_r>:
d00824a0:	b538      	push	{r3, r4, r5, lr}
d00824a2:	4d06      	ldr	r5, [pc, #24]	; (d00824bc <_isatty_r+0x1c>)
d00824a4:	2300      	movs	r3, #0
d00824a6:	4604      	mov	r4, r0
d00824a8:	4608      	mov	r0, r1
d00824aa:	602b      	str	r3, [r5, #0]
d00824ac:	f7fd ff2c 	bl	d0080308 <_isatty>
d00824b0:	1c43      	adds	r3, r0, #1
d00824b2:	d102      	bne.n	d00824ba <_isatty_r+0x1a>
d00824b4:	682b      	ldr	r3, [r5, #0]
d00824b6:	b103      	cbz	r3, d00824ba <_isatty_r+0x1a>
d00824b8:	6023      	str	r3, [r4, #0]
d00824ba:	bd38      	pop	{r3, r4, r5, pc}
d00824bc:	d009cbfc 	.word	0xd009cbfc

d00824c0 <_lseek_r>:
d00824c0:	b538      	push	{r3, r4, r5, lr}
d00824c2:	4d07      	ldr	r5, [pc, #28]	; (d00824e0 <_lseek_r+0x20>)
d00824c4:	4604      	mov	r4, r0
d00824c6:	4608      	mov	r0, r1
d00824c8:	4611      	mov	r1, r2
d00824ca:	2200      	movs	r2, #0
d00824cc:	602a      	str	r2, [r5, #0]
d00824ce:	461a      	mov	r2, r3
d00824d0:	f7fd fef8 	bl	d00802c4 <_lseek>
d00824d4:	1c43      	adds	r3, r0, #1
d00824d6:	d102      	bne.n	d00824de <_lseek_r+0x1e>
d00824d8:	682b      	ldr	r3, [r5, #0]
d00824da:	b103      	cbz	r3, d00824de <_lseek_r+0x1e>
d00824dc:	6023      	str	r3, [r4, #0]
d00824de:	bd38      	pop	{r3, r4, r5, pc}
d00824e0:	d009cbfc 	.word	0xd009cbfc
	...

d00824f0 <memchr>:
d00824f0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00824f4:	2a10      	cmp	r2, #16
d00824f6:	db2b      	blt.n	d0082550 <memchr+0x60>
d00824f8:	f010 0f07 	tst.w	r0, #7
d00824fc:	d008      	beq.n	d0082510 <memchr+0x20>
d00824fe:	f810 3b01 	ldrb.w	r3, [r0], #1
d0082502:	3a01      	subs	r2, #1
d0082504:	428b      	cmp	r3, r1
d0082506:	d02d      	beq.n	d0082564 <memchr+0x74>
d0082508:	f010 0f07 	tst.w	r0, #7
d008250c:	b342      	cbz	r2, d0082560 <memchr+0x70>
d008250e:	d1f6      	bne.n	d00824fe <memchr+0xe>
d0082510:	b4f0      	push	{r4, r5, r6, r7}
d0082512:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0082516:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d008251a:	f022 0407 	bic.w	r4, r2, #7
d008251e:	f07f 0700 	mvns.w	r7, #0
d0082522:	2300      	movs	r3, #0
d0082524:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0082528:	3c08      	subs	r4, #8
d008252a:	ea85 0501 	eor.w	r5, r5, r1
d008252e:	ea86 0601 	eor.w	r6, r6, r1
d0082532:	fa85 f547 	uadd8	r5, r5, r7
d0082536:	faa3 f587 	sel	r5, r3, r7
d008253a:	fa86 f647 	uadd8	r6, r6, r7
d008253e:	faa5 f687 	sel	r6, r5, r7
d0082542:	b98e      	cbnz	r6, d0082568 <memchr+0x78>
d0082544:	d1ee      	bne.n	d0082524 <memchr+0x34>
d0082546:	bcf0      	pop	{r4, r5, r6, r7}
d0082548:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d008254c:	f002 0207 	and.w	r2, r2, #7
d0082550:	b132      	cbz	r2, d0082560 <memchr+0x70>
d0082552:	f810 3b01 	ldrb.w	r3, [r0], #1
d0082556:	3a01      	subs	r2, #1
d0082558:	ea83 0301 	eor.w	r3, r3, r1
d008255c:	b113      	cbz	r3, d0082564 <memchr+0x74>
d008255e:	d1f8      	bne.n	d0082552 <memchr+0x62>
d0082560:	2000      	movs	r0, #0
d0082562:	4770      	bx	lr
d0082564:	3801      	subs	r0, #1
d0082566:	4770      	bx	lr
d0082568:	2d00      	cmp	r5, #0
d008256a:	bf06      	itte	eq
d008256c:	4635      	moveq	r5, r6
d008256e:	3803      	subeq	r0, #3
d0082570:	3807      	subne	r0, #7
d0082572:	f015 0f01 	tst.w	r5, #1
d0082576:	d107      	bne.n	d0082588 <memchr+0x98>
d0082578:	3001      	adds	r0, #1
d008257a:	f415 7f80 	tst.w	r5, #256	; 0x100
d008257e:	bf02      	ittt	eq
d0082580:	3001      	addeq	r0, #1
d0082582:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0082586:	3001      	addeq	r0, #1
d0082588:	bcf0      	pop	{r4, r5, r6, r7}
d008258a:	3801      	subs	r0, #1
d008258c:	4770      	bx	lr
d008258e:	bf00      	nop

d0082590 <memcpy>:
d0082590:	440a      	add	r2, r1
d0082592:	4291      	cmp	r1, r2
d0082594:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0082598:	d100      	bne.n	d008259c <memcpy+0xc>
d008259a:	4770      	bx	lr
d008259c:	b510      	push	{r4, lr}
d008259e:	f811 4b01 	ldrb.w	r4, [r1], #1
d00825a2:	f803 4f01 	strb.w	r4, [r3, #1]!
d00825a6:	4291      	cmp	r1, r2
d00825a8:	d1f9      	bne.n	d008259e <memcpy+0xe>
d00825aa:	bd10      	pop	{r4, pc}

d00825ac <memmove>:
d00825ac:	4288      	cmp	r0, r1
d00825ae:	b510      	push	{r4, lr}
d00825b0:	eb01 0402 	add.w	r4, r1, r2
d00825b4:	d902      	bls.n	d00825bc <memmove+0x10>
d00825b6:	4284      	cmp	r4, r0
d00825b8:	4623      	mov	r3, r4
d00825ba:	d807      	bhi.n	d00825cc <memmove+0x20>
d00825bc:	1e43      	subs	r3, r0, #1
d00825be:	42a1      	cmp	r1, r4
d00825c0:	d008      	beq.n	d00825d4 <memmove+0x28>
d00825c2:	f811 2b01 	ldrb.w	r2, [r1], #1
d00825c6:	f803 2f01 	strb.w	r2, [r3, #1]!
d00825ca:	e7f8      	b.n	d00825be <memmove+0x12>
d00825cc:	4402      	add	r2, r0
d00825ce:	4601      	mov	r1, r0
d00825d0:	428a      	cmp	r2, r1
d00825d2:	d100      	bne.n	d00825d6 <memmove+0x2a>
d00825d4:	bd10      	pop	{r4, pc}
d00825d6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00825da:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00825de:	e7f7      	b.n	d00825d0 <memmove+0x24>

d00825e0 <_realloc_r>:
d00825e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00825e2:	4607      	mov	r7, r0
d00825e4:	4614      	mov	r4, r2
d00825e6:	460e      	mov	r6, r1
d00825e8:	b921      	cbnz	r1, d00825f4 <_realloc_r+0x14>
d00825ea:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00825ee:	4611      	mov	r1, r2
d00825f0:	f7fe bf58 	b.w	d00814a4 <_malloc_r>
d00825f4:	b922      	cbnz	r2, d0082600 <_realloc_r+0x20>
d00825f6:	f7fe ff05 	bl	d0081404 <_free_r>
d00825fa:	4625      	mov	r5, r4
d00825fc:	4628      	mov	r0, r5
d00825fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0082600:	f000 f826 	bl	d0082650 <_malloc_usable_size_r>
d0082604:	42a0      	cmp	r0, r4
d0082606:	d20f      	bcs.n	d0082628 <_realloc_r+0x48>
d0082608:	4621      	mov	r1, r4
d008260a:	4638      	mov	r0, r7
d008260c:	f7fe ff4a 	bl	d00814a4 <_malloc_r>
d0082610:	4605      	mov	r5, r0
d0082612:	2800      	cmp	r0, #0
d0082614:	d0f2      	beq.n	d00825fc <_realloc_r+0x1c>
d0082616:	4631      	mov	r1, r6
d0082618:	4622      	mov	r2, r4
d008261a:	f7ff ffb9 	bl	d0082590 <memcpy>
d008261e:	4631      	mov	r1, r6
d0082620:	4638      	mov	r0, r7
d0082622:	f7fe feef 	bl	d0081404 <_free_r>
d0082626:	e7e9      	b.n	d00825fc <_realloc_r+0x1c>
d0082628:	4635      	mov	r5, r6
d008262a:	e7e7      	b.n	d00825fc <_realloc_r+0x1c>

d008262c <_read_r>:
d008262c:	b538      	push	{r3, r4, r5, lr}
d008262e:	4d07      	ldr	r5, [pc, #28]	; (d008264c <_read_r+0x20>)
d0082630:	4604      	mov	r4, r0
d0082632:	4608      	mov	r0, r1
d0082634:	4611      	mov	r1, r2
d0082636:	2200      	movs	r2, #0
d0082638:	602a      	str	r2, [r5, #0]
d008263a:	461a      	mov	r2, r3
d008263c:	f7fd fe2e 	bl	d008029c <_read>
d0082640:	1c43      	adds	r3, r0, #1
d0082642:	d102      	bne.n	d008264a <_read_r+0x1e>
d0082644:	682b      	ldr	r3, [r5, #0]
d0082646:	b103      	cbz	r3, d008264a <_read_r+0x1e>
d0082648:	6023      	str	r3, [r4, #0]
d008264a:	bd38      	pop	{r3, r4, r5, pc}
d008264c:	d009cbfc 	.word	0xd009cbfc

d0082650 <_malloc_usable_size_r>:
d0082650:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0082654:	1f18      	subs	r0, r3, #4
d0082656:	2b00      	cmp	r3, #0
d0082658:	bfbc      	itt	lt
d008265a:	580b      	ldrlt	r3, [r1, r0]
d008265c:	18c0      	addlt	r0, r0, r3
d008265e:	4770      	bx	lr

d0082660 <clut>:
d0082660:	0000 0000 afaf ffaf ffff ffff 67a2 ff3b     .............g;.
d0082670:	907c ffaa 9595 ff95 7b7b ff7b a997 ffff     |.......{{{.....
d0082680:	a91d ff37 a9ff ff7c 8112 ffbf bf66 ffeb     ..7...|.....f...
d0082690:	c178 ff78 9318 ff3d 3418 ffb3 311c ffd9     x.x...=..4...1..
d00826a0:	0000 ff00 000e ff00 001d ff00 002b ff00     ............+...
d00826b0:	0139 ff00 0147 ff00 0156 ff00 0164 ff00     9...G...V...d...
d00826c0:	01d2 ff00 01ff ff00 cece ffce ff00 ff00     ................
d00826d0:	ff00 ffb2 e700 ffff 9600 ffff 1100 ffff     ................
d00826e0:	1200 ff49 1355 ff49 14aa ff49 16ff ff49     ..I.U.I...I...I.
d00826f0:	1700 ff5b 1855 ff5b 19aa ff5b 1aff ff5b     ..[.U.[...[...[.
d0082700:	1b00 ff6d 1c55 ff6d e300 ff00 ff54 ff85     ..m.U.m.....T...
d0082710:	ff00 ffc4 d900 ffff a41f ffff 5400 ffe0     .............T..
d0082720:	0000 ffff 2655 ff92 27aa ff92 28ff ff92     ....U&...'...(..
d0082730:	2900 ffa4 2a55 ffa4 2baa ffa4 2cff ffa4     .)..U*...+...,..
d0082740:	2d00 ffb6 2f55 ffb6 30aa ffb6 31ff ffb6     .-..U/...0...1..
d0082750:	3200 ffc9 3355 ffc9 34aa ffc9 35ff ffc9     .2..U3...4...5..
d0082760:	3700 ffdb 3855 ffdb 39aa ffdb 3aff ffdb     .7..U8...9...:..
d0082770:	3b00 ffed 3c55 ffed 3daa ffed 3fff ffed     .;..U<...=...?..
d0082780:	4000 ffff 4155 ffff 42aa ffff 43ff ffff     .@..UA...B...C..
d0082790:	4400 ff00 4555 ff00 46aa ff00 48ff ff00     .D..UE...F...H..
d00827a0:	ff00 ffff ff55 ff12 ee55 ff12 b6ff ff12     ....U...U.......
d00827b0:	1fff ff00 0ec7 ff9d 0000 fff1 7700 ffff     .............w..
d00827c0:	5200 ff37 5355 ff37 54aa ff37 55ff ff37     .R7.US7..T7..U7.
d00827d0:	5600 ff49 5855 ff49 59aa ff49 5aff ff49     .VI.UXI..YI..ZI.
d00827e0:	5b00 ff5b 5c55 ff5b 5daa ff5b 5eff ff5b     .[[.U\[..][..^[.
d00827f0:	6000 ff6d 6155 ff6d 62aa ff6d 63ff ff6d     .`m.Uam..bm..cm.
d0082800:	6400 ff6d 6555 ff80 66aa ff80 67ff ff80     .dm.Ue...f...g..
d0082810:	6900 ff92 6a55 ff92 6baa ff92 6cff ff92     .i..Uj...k...l..
d0082820:	6d00 ffa4 6e55 ffa4 6faa ffa4 71ff ffa4     .m..Un...o...q..
d0082830:	7200 ffb6 7355 ffb6 74aa ffb6 75ff ffb6     .r..Us...t...u..
d0082840:	7600 ffc9 7755 ffc9 79aa ffc9 7aff ffc9     .v..Uw...y...z..
d0082850:	7b00 ffdb 7c55 ffdb 7daa ffdb 7eff ffdb     .{..U|...}...~..
d0082860:	7f00 ffed 8055 ffed 82aa ffed 83ff ffed     ....U...........
d0082870:	8400 ffff 8555 ffff 86aa ffff 87ff ffff     ....U...........
d0082880:	8800 ff00 8a55 ff00 8baa ff00 8cff ff00     ....U...........
d0082890:	8d00 ff12 8e55 ff12 8faa ff12 90ff ff12     ....U...........
d00828a0:	9200 ff24 9355 ff24 94aa ff24 95ff ff24     ..$.U.$...$...$.
d00828b0:	9600 ff37 9755 ff37 98aa ff37 99ff ff37     ..7.U.7...7...7.
d00828c0:	9b00 ff49 9c55 ff49 9daa ff49 9eff ff49     ..I.U.I...I...I.
d00828d0:	9f00 ff5b a055 ff5b a1aa ff5b a3ff ff5b     ..[.U.[...[...[.
d00828e0:	b5d5 ffa4 b0f8 ffa0 a3e6 ff94 89c1 ff7c     ..............|.
d00828f0:	81c0 ff62 62a1 ff1c 54ea ff42 a1bd ff62     ..b..b...TB...b.
d0082900:	93c0 ff70 77a1 ff49 3faa ff00 54ff ff15     ..p..wI..?...T..
d0082910:	50b9 ff1c b3ff ff00 88aa ff00 b5ff ff00     .P..............
d0082920:	62ff ff0e b7e3 ff5e c0b9 ffbd b9ff ff85     .b....^.........
d0082930:	6caf ff00 81b9 ff1f 5baa ff3f beff ffc9     .l.......[?.....
d0082940:	afcb ff5b c055 ffdb c1aa ffdb c0c0 ffbd     ..[.U...........
d0082950:	c400 ffed c555 ffed c6aa ffed c7ff ffed     ....U...........
d0082960:	c800 ffff c955 ffff caaa ffff ccff ffff     ....U...........
d0082970:	cd00 ff00 ce55 ff00 cfaa ff00 d0ff ff00     ....U...........
d0082980:	d100 ff12 d255 ff12 d3aa ff12 d5ff ff12     ....U...........
d0082990:	d600 ff24 d755 ff24 d8aa ff24 d9ff ff24     ..$.U.$...$...$.
d00829a0:	da00 ff37 db55 ff37 ddaa ff37 deff ff37     ..7.U.7...7...7.
d00829b0:	df00 ff49 e055 ff49 e1aa ff49 e2ff ff49     ..I.U.I...I...I.
d00829c0:	e300 ff5b e555 ff5b e6aa ff5b e7ff ff5b     ..[.U.[...[...[.
d00829d0:	e800 ff6d e955 ff6d eaaa ff6d ebff ff6d     ..m.U.m...m...m.
d00829e0:	58ec ff04 22ac ff04 77ff ff00 54ee ff00     .X..."...w...T..
d00829f0:	33dd ff00 0000 ff99 0000 ffff 6600 ffff     .3...........f..
d0082a00:	dd00 ffff f755 ffa4 f8aa ffa4 f9ff ffa4     ....U...........
d0082a10:	fa00 ffb6 fb55 ffb6 fcaa ffb6 feff ffb6     ....U...........
d0082a20:	00ff ffff 0000 ff00 1313 ff13 2727 ff27     ............'''.
d0082a30:	3a3a ff3a 4e4e ff4e 6262 ff62 7575 ff75     :::.NNN.bbb.uuu.
d0082a40:	8989 ff89 9c9c ff9c b0b0 ffb0 c4c4 ffc4     ................
d0082a50:	d7d7 ffd7 ebeb ffeb ffff ffff ffff ffff     ................

d0082a60 <topscroll_bar_bg1>:
d0082a60:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 02a0 0202     ................
d0082a70:	0202 a002 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082a80:	9f9f 029f 0202 0202 a002 9f9f 9f9f 9f9f     ................
d0082a90:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082aa0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 029f     ................
d0082ab0:	0202 0202 0202 0202 0202 9f02 9f9f 9f9f     ................
d0082ac0:	9f9f 9f9f a09f 0202 0202 a302 a3a3 9f9f     ................
d0082ad0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082ae0:	02a0 a002 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082af0:	9f9f 0202 0202 0202 0202 0202 a002 9f9f     ................
d0082b00:	9f9f 9f9f 9f9f 9f9f a09f 0202 0202 0202     ................
d0082b10:	0202 0202 0202 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082b20:	029f 0202 0202 0202 9f9f 9f9f 9f9f 9f9f     ................
d0082b30:	9f9f 9f9f 9f9f 9f9f 02a0 a002 9f9f 02a0     ................
d0082b40:	9f02 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082b50:	0202 0202 0202 9f02 9f9f 9f9f 9f9f 9f9f     ................
d0082b60:	9f9f a09f 0202 0202 0202 0202 0202 9f9f     ................
d0082b70:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082b80:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082b90:	9f9f 029f a0a0 0202 0202 9f9f 9f9f 9f9f     ................
d0082ba0:	9f9f 9f9f 9f9f 9f9f a09f 0202 0202 0202     ................
d0082bb0:	9f02 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082bc0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082bd0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082be0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082bf0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c00:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c10:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c20:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c30:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c40:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c50:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c60:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c70:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c80:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082c90:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082ca0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082cb0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082cc0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082cd0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082ce0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082cf0:	a09f a0a0 a0a0 a0a0 9f9f 9f9f 9f9f 9f9f     ................
d0082d00:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082d10:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082d20:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082d30:	9f9f b79f 0202 0202 02a0 b7b7 a0a0 9fa0     ................
d0082d40:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 8f8f     ................
d0082d50:	8f8f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082d60:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082d70:	9f9f 9f9f 9f9f b7b7 0202 02a0 0202 b702     ................
d0082d80:	a0b7 9f9f 9f9f 9f9f 9f9f 8f9f 8f8f 8f8f     ................
d0082d90:	8f8f 8f8f 8f8f 8f8f a0a0 a0a0 a0a0 9fa0     ................
d0082da0:	9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f 9f9f     ................
d0082db0:	8f8f 8f8f 8f8f 8f8f 8f8f 0909 a009 a0a0     ................
d0082dc0:	a0a0 9fa0 9f9f 9f9f 8f9f 8f8f 8f8f 8f8f     ................
d0082dd0:	8f8f 8f8f 8f8f 8f8f 8f8f 02b7 0202 a002     ................
d0082de0:	b702 a0b7 a0a0 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082df0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082e00:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082e10:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f b78f 02b7     ................
d0082e20:	a002 0202 0202 b7b7 8fa0 8f8f 8f8f 8f8f     ................
d0082e30:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082e40:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082e50:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082e60:	8f8f 8f8f a0a0 a0a0 a0a0 8f8f 8f8f 0606     ................
d0082e70:	0606 0606 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082e80:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082e90:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082ea0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082eb0:	068f 0605 0606 0606 8f06 8f8f 8f8f 8f8f     ................
d0082ec0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082ed0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082ee0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082ef0:	8f8f 8f8f 0506 0606 0606 0606 0606 8f8f     ................
d0082f00:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082f10:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082f20:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082f30:	8f8f 8f8f 8f8f 068f 0605 0606 0606 0606     ................
d0082f40:	0606 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082f50:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082f60:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082f70:	8f8f 8f8f 8f8f 8f8f 8f8f 0506 0606 0606     ................
d0082f80:	0606 0606 6006 8f06 8f8f 8f8f 8f8f 8f8f     .....`..........
d0082f90:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082fa0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082fb0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 068f 0605     ................
d0082fc0:	0606 0606 0606 0606 0606 0660 8f8f 8f8f     ..........`.....
d0082fd0:	8f8f 0505 0505 0505 0505 0505 8f8f 8f8f     ................
d0082fe0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0082ff0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0083000:	0606 0605 0606 0606 0606 0606 0606 0660     ..............`.
d0083010:	8f06 8f8f 0505 0501 0505 0505 0505 0505     ................
d0083020:	0505 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0083030:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0083040:	8f8f 068f 0506 0606 0606 0606 0606 0606     ................
d0083050:	0606 6006 8f06 0505 0101 0505 0505 0505     ...`............
d0083060:	0505 0505 0605 8f05 8f8f 8f8f 8f8f 8f8f     ................
d0083070:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0083080:	8f8f 8f8f 8f8f 0606 0605 0606 0606 0606     ................
d0083090:	0606 0606 0606 6006 0505 0105 0505 0505     .......`........
d00830a0:	0505 0505 0505 0505 0505 0506 8f8f 8f8f     ................
d00830b0:	8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d00830c0:	8f8f 8f8f 8f8f 8f8f 068f 0506 0606 0606     ................
d00830d0:	0606 0606 0606 0606 0606 0505 0105 0501     ................
d00830e0:	0505 0505 0505 0505 0505 0505 0505 0605     ................
d00830f0:	0505 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f 8f8f     ................
d0083100:	8f8f 8f8f 8f8f 8f8f 0d8f 8f8f 0606 0605     ................
d0083110:	0606 0606 0606 0606 0606 0606 0505 050d     ................
d0083120:	0501 0505 0505 0505 0505 0505 0505 0505     ................
d0083130:	0505 0505 0506 8f05 8f8f 8f8f 8f8f 8f8f     ................
d0083140:	8f8f 8f8f 8f8f 8f8f 8f8f 8f0d 0d8f 068f     ................
d0083150:	0606 0606 0606 0606 0606 060d 0606 0506     ................
d0083160:	0505 050d 0d05 0505 0505 0505 050d 050d     ................
d0083170:	0505 0505 0505 0505 0605 0505 8f05 0d8f     ................
d0083180:	8f8f 8f8f 8f0d 8f0d 8f8f 8f8f 0d0d 0d0d     ................
d0083190:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d00831a0:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d00831b0:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d00831c0:	0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d 0d0d     ................
d00831d0:	0b0a 0d0a 0a0d 0a0a 0b0a 0b0a 0a0a 0a0a     ................
d00831e0:	0a0a 0a0a 0a0a 680a 0a68 0b0b 0a0a 0a0a     .......hh.......
d00831f0:	0b0a 0a0a 0a0a 680a 0a0a 0a0a 680a 6868     .......h.....hhh
d0083200:	0b0a 0b0b 0b0a 0a0a 0b0a 0a0a 0b0b 0a0b     ................
d0083210:	0b0b 0a0a 0a0a 0b0b 0a0a 0b0a 0a0b 0a0a     ................
d0083220:	0a0a 0a0a 0a0a 0a0b 0a0a 0a0a 0a0a 0a0a     ................
d0083230:	0a0a 0b0a 0a0a 0a0a 0a0a 0a0a 0a0a 0b0b     ................
d0083240:	0a0a 0a0a 0a0b 0a0a 0b0a 0a0a 0a0a 0a0a     ................
d0083250:	0a0a 0a0a 0a0a 0b0b 0b0a 0a0a 0b0a 0a0a     ................
d0083260:	0a0b 0a68 0a0a 0b0a 0b0b 0a0a 6868 0a0a     ..h.........hh..
d0083270:	0a0a 680a 0a68 0a0b 6868 0a68 0a0a 680a     ...hh...hhh....h
d0083280:	6868 0a0a 0a0a 0b0a 0a0a 0a0a 0a0a 0b0b     hh..............
d0083290:	0a0a 0a0a 0a0a 0a0a 0a0a 0b0a 0a0a 0a0a     ................
d00832a0:	680b 6868 0a0a 0a0a 0a0a 6868 0a0a 0a0a     .hhh......hh....
d00832b0:	0a0a 0b0a 0a0b 0a0a 0a0a 0a0a 0a0a 0a0a     ................
d00832c0:	0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a 0a0a     ................
d00832d0:	0a0a 0a0a 0a0a 680a 6868 0b0b 0a0a 0a0a     .......hhh......
d00832e0:	7559 7070 5420 6f6f 6874 6361 6568 6420     Yupp Toothache d
d00832f0:	7365 746b 706f 4520 646e 6465 3a20 0029     esktop Ended :).

d0083300 <thePallete>:
d0083300:	0000 0000 afaf ffaf ffff ffff 67a2 ff3b     .............g;.
d0083310:	907c ffaa 9595 ff95 7b7b ff7b a997 ffff     |.......{{{.....
d0083320:	a91d ff37 a9ff ff7c 8112 ffbf bf66 ffeb     ..7...|.....f...
d0083330:	c178 ff78 9318 ff3d 3418 ffb3 311c ffd9     x.x...=..4...1..
d0083340:	0000 ff00 000e ff00 001d ff00 002b ff00     ............+...
d0083350:	0139 ff00 0147 ff00 0156 ff00 0164 ff00     9...G...V...d...
d0083360:	01d2 ff00 01ff ff00 cece ffce ff00 ff00     ................
d0083370:	ff00 ffb2 e700 ffff 9600 ffff 1100 ffff     ................
d0083380:	13d5 ffbf 11c7 ffa4 0eb9 ff89 0baa ff6e     ..............n.
d0083390:	099c ff52 068d ff37 037f ff1c 0070 ff00     ..R...7.....p...
d00833a0:	1b00 ff6d 1c55 ff6d e300 ff00 ff54 ff85     ..m.U.m.....T...
d00833b0:	ff00 ffc4 d900 ffff a41f ffff 5400 ffe0     .............T..
d00833c0:	0000 ffff 2655 ff92 27aa ff92 28ff ff92     ....U&...'...(..
d00833d0:	2900 ffa4 2a55 ffa4 2baa ffa4 2cff ffa4     .)..U*...+...,..
d00833e0:	2d00 ffb6 2f55 ffb6 30aa ffb6 31ff ffb6     .-..U/...0...1..
d00833f0:	3200 ffc9 3355 ffc9 34aa ffc9 35ff ffc9     .2..U3...4...5..
d0083400:	3700 ffdb 3855 ffdb 39aa ffdb 3aff ffdb     .7..U8...9...:..
d0083410:	3b00 ffed 3c55 ffed 3daa ffed 3fff ffed     .;..U<...=...?..
d0083420:	4000 ffff 4155 ffff 42aa ffff 43ff ffff     .@..UA...B...C..
d0083430:	4400 ff00 4555 ff00 46aa ff00 48ff ff00     .D..UE...F...H..
d0083440:	ff00 ffff ff55 ff12 ee55 ff12 b6ff ff12     ....U...U.......
d0083450:	1fff ff00 0ec7 ff9d 0000 fff1 7700 ffff     .............w..
d0083460:	5200 ff37 5355 ff37 54aa ff37 55ff ff37     .R7.US7..T7..U7.
d0083470:	5600 ff49 5855 ff49 59aa ff49 5aff ff49     .VI.UXI..YI..ZI.
d0083480:	5b00 ff5b 5c55 ff5b 5daa ff5b 5eff ff5b     .[[.U\[..][..^[.
d0083490:	6000 ff6d 6155 ff6d 62aa ff6d 63ff ff6d     .`m.Uam..bm..cm.
d00834a0:	6400 ff6d 6555 ff80 66aa ff80 67ff ff80     .dm.Ue...f...g..
d00834b0:	6900 ff92 6a55 ff92 6baa ff92 6cff ff92     .i..Uj...k...l..
d00834c0:	6d00 ffa4 6e55 ffa4 6faa ffa4 71ff ffa4     .m..Un...o...q..
d00834d0:	7200 ffb6 7355 ffb6 74aa ffb6 75ff ffb6     .r..Us...t...u..
d00834e0:	7600 ffc9 7755 ffc9 79aa ffc9 7aff ffc9     .v..Uw...y...z..
d00834f0:	7b00 ffdb 7c55 ffdb 7daa ffdb 7eff ffdb     .{..U|...}...~..
d0083500:	7f00 ffed 8055 ffed 82aa ffed 83ff ffed     ....U...........
d0083510:	8400 ffff 8555 ffff 86aa ffff 87ff ffff     ....U...........
d0083520:	8800 ff00 8a55 ff00 8baa ff00 8cff ff00     ....U...........
d0083530:	8d00 ff12 8e55 ff12 8faa ff12 90ff ff12     ....U...........
d0083540:	9200 ff24 9355 ff24 94aa ff24 95ff ff24     ..$.U.$...$...$.
d0083550:	9600 ff37 9755 ff37 98aa ff37 99ff ff37     ..7.U.7...7...7.
d0083560:	9b00 ff49 9c55 ff49 9daa ff49 9eff ff49     ..I.U.I...I...I.
d0083570:	9f00 ff5b a055 ff5b a1aa ff5b a3ff ff5b     ..[.U.[...[...[.
d0083580:	b5d5 ffa4 b0f8 ffa0 a3e6 ff94 89c1 ff7c     ..............|.
d0083590:	81c0 ff62 62a1 ff1c 54ea ff42 a1bd ff62     ..b..b...TB...b.
d00835a0:	93c0 ff70 77a1 ff49 3faa ff00 54ff ff15     ..p..wI..?...T..
d00835b0:	50b9 ff1c b3ff ff00 88aa ff00 b5ff ff00     .P..............
d00835c0:	62ff ff0e b7e3 ff5e c0b9 ffbd b9ff ff85     .b....^.........
d00835d0:	6caf ff00 81b9 ff1f 5baa ff3f beff ffc9     .l.......[?.....
d00835e0:	afcb ff5b c055 ffdb c1aa ffdb c0c0 ffbd     ..[.U...........
d00835f0:	c400 ffed c555 ffed c6aa ffed c7ff ffed     ....U...........
d0083600:	c800 ffff c955 ffff caaa ffff ccff ffff     ....U...........
d0083610:	cd00 ff00 ce55 ff00 cfaa ff00 d0ff ff00     ....U...........
d0083620:	d100 ff12 d255 ff12 d3aa ff12 d5ff ff12     ....U...........
d0083630:	d600 ff24 d755 ff24 d8aa ff24 d9ff ff24     ..$.U.$...$...$.
d0083640:	da00 ff37 db55 ff37 ddaa ff37 deff ff37     ..7.U.7...7...7.
d0083650:	df00 ff49 e055 ff49 e1aa ff49 e2ff ff49     ..I.U.I...I...I.
d0083660:	e300 ff5b e555 ff5b e6aa ff5b e7ff ff5b     ..[.U.[...[...[.
d0083670:	e800 ff6d e955 ff6d eaaa ff6d ebff ff6d     ..m.U.m...m...m.
d0083680:	ec00 ff6d ee55 ff80 efaa ff80 f0ff ff80     ..m.U...........
d0083690:	cea2 ff93 f255 ff92 f3aa ff92 f4ff ff92     ....U...........
d00836a0:	f600 ffa4 f755 ffa4 f8aa ffa4 f9ff ffa4     ....U...........
d00836b0:	fa00 ffb6 fb55 ffb6 fcaa ffb6 feff ffb6     ....U...........
d00836c0:	ff00 ffc9 ff55 ffc9 ffaa ffc9 ffff ffc9     ....U...........
d00836d0:	ff00 ffdb ff55 ffdb ffaa ffdb ffff ffdb     ....U...........
d00836e0:	ff00 ffed ff55 ffed ffaa ffed ffff ffed     ....U...........
d00836f0:	ff00 ffff ff55 ffff ffaa ffff ffff ffff     ....U...........

d0083700 <txtTitle>:
d0083700:	6874 7369 6920 2073 2061 6574 7473 7320     this is a test s
d0083710:	7263 6c6f 796c 202c 6f73 656d 6874 6e69     crolly, somethin
d0083720:	2067 6f74 7420 7365 2074 6f66 2072 6f6e     g to test for no
d0083730:	2c77 6220 7475 7720 6c69 206c 616d 656b     w, but will make
d0083740:	6920 2074 2061 696c 7474 656c 6220 7465      it a little bet
d0083750:	6574 2072 6966 6c6c 2079 6574 7478 2079     ter filly texty 
d0083760:	7473 6675 0066 0000 3025 7532 253a 3230     stuff...%02u:%02
d0083770:	3a75 3025 7532 0000                         u:%02u..

d0083778 <bk_bub_tree1>:
	...
d008378c:	2110 2129 2525 2125 2529 2121 5d29 2925     .!)!%%%!)%!!)]%)
d008379c:	2121 2121 2529 2121 2121 1029 1021 0000     !!!!)%!!!!).!...
	...
d00837cc:	2910 2129 2521 2921 2925 2525 2529 2529     .))!!%!)%)%%)%)%
d00837dc:	2929 2121 2110 2121 2525 2929 1010 0000     ))!!.!!!%%))....
	...
d0083808:	0000 1000 2921 2521 2521 2921 215d 1010     ....!)!%!%!)]!..
d0083818:	2110 2921 2525 2529 1010 2921 2529 1010     .!!)%%)%..!))%..
d0083828:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0083848:	0000 1000 2121 2521 2925 2529 1010 1010     ....!!!%%))%....
d0083858:	1010 2110 1021 1010 1025 2910 1010 1010     ...!!...%..)....
d0083868:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0083888:	0000 1000 2121 2925 2925 2925 2110 1021     ....!!%)%)%).!!.
d0083898:	2121 1010 1010 1010 1010 1010 1010 6721     !!............!g
d00838a8:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00838cc:	2110 2529 2925 2525 2121 1025 6725 6767     .!)%%)%%!!%.%ggg
d00838dc:	2121 1010 1010 1010 2110 bb67 1010 0000     !!.......!g.....
	...
d008390c:	2110 2921 2525 2525 2125 1021 bb21 bbbb     .!!)%%%%%!!.!...
d008391c:	bbbb 67bb 1010 2110 6710 67bb 1010 0000     ...g...!.g.g....
	...
d008394c:	2110 2521 2521 2929 2925 2121 6710 bbbb     .!!%!%))%)!!.g..
d008395c:	bbbb bbbb 67bb 2110 bb10 1010 1021 0000     .....g.!....!...
	...
d0083988:	0000 1000 2921 2521 2921 1021 2521 2929     ....!)!%!)!.!%))
d0083998:	1021 6710 bbbb bbbb 1010 2510 2110 1010     !..g.......%.!..
d00839a8:	1021 0000 0000 0000 0000 0000 0000 0000     !...............
	...
d00839c8:	0000 1000 2521 2121 2925 2110 2561 2510     ....!%!!%).!a%.%
d00839d8:	2125 1021 2510 2567 1010 2110 1021 2110     %!!..%g%...!!..!
d00839e8:	1010 0010 0000 0000 0000 0000 0000 0000     ................
	...
d0083a08:	0000 1000 2521 2125 2129 1010 1010 1021     ....!%%!)!....!.
d0083a18:	2525 2125 1021 1010 1010 2921 2525 1025     %%%!!.....!)%%%.
d0083a28:	2125 0010 0000 0000 0000 0000 0000 0000     %!..............
	...
d0083a48:	0000 1000 2121 2129 1025 2921 2525 1021     ....!!)!%.!)%%!.
d0083a58:	2121 1010 2525 2929 2529 1025 1010 2110     !!..%%)))%%....!
d0083a68:	2125 0010 0000 0000 0000 0000 0000 0000     %!..............
	...
d0083a88:	0000 1000 2121 2525 1029 2921 2529 2125     ....!!%%).!))%%!
d0083a98:	1010 2121 1010 1010 1010 2110 2521 2925     ..!!.......!!%%)
d0083aa8:	2121 0010 0000 0000 0000 0000 0000 0000     !!..............
	...
d0083acc:	2110 2125 2529 5d21 2925 2525 2929 2525     .!%!)%!]%)%%))%%
d0083adc:	2529 2529 2529 5d25 2929 2129 1021 0000     )%)%)%%])))!!...
	...
d0083b0c:	2110 2125 2529 2525 2929 2529 2525 2525     .!%!)%%%)))%%%%%
d0083b1c:	2125 2525 2925 2129 2525 255d 0010 0000     %!%%%))!%%]%....
	...
d0083b4c:	2110 2125 2525 2529 2529 2525 2525 2529     .!%!%%)%)%%%%%)%
d0083b5c:	2125 2121 2121 2121 2529 2529 0010 0000     %!!!!!!!)%)%....
	...
d0083b84:	0000 1000 1010 1010 1010 2525 2929 2525     ..........%%))%%
d0083b94:	2525 2521 2925 2925 2925 2125 2121 2925     %%!%%)%)%)%!!!%)
d0083ba4:	2525 2525 2129 1010 1010 0010 0000 0000     %%%%)!..........
	...
d0083bc4:	0000 2110 2525 6129 2525 2910 255d 2121     ...!%%)a%%.)]%!!
d0083bd4:	2525 2121 2525 2525 2929 2929 2925 2925     %%!!%%%%))))%)%)
d0083be4:	2925 2929 2529 2525 2525 1025 1010 0000     %))))%%%%%%.....
	...
d0083c04:	1010 2921 2925 2525 2525 1025 2121 2521     ..!)%)%%%%%.!!!%
d0083c14:	2525 2121 2121 2521 2525 1010 1010 2521     %%!!!!!%%%....!%
d0083c24:	2529 2929 2925 2129 2525 2525 6129 1010     )%))%))!%%%%)a..
d0083c34:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d0083c44:	2110 2525 2529 2525 2929 2125 2110 2921     .!%%)%%%))%!.!!)
d0083c54:	2125 2521 2925 2525 1010 2561 2529 1010     %!!%%)%%..a%)%..
d0083c64:	2121 2121 2525 2525 2925 2525 2529 2525     !!!!%%%%%)%%)%%%
d0083c74:	1010 0000 0000 0000 0000 0000 0000 0000     ................
d0083c84:	2910 2925 2525 2529 2521 2529 2110 2529     .)%)%%)%!%)%.!)%
d0083c94:	2129 2525 2529 2925 2929 2929 2525 2121     )!%%)%%)))))%%!!
d0083ca4:	2110 2121 2125 2921 2925 2929 2529 2529     .!!!%!!)%))))%)%
d0083cb4:	1029 0000 0000 0000 0000 0000 0000 0000     )...............
d0083cc4:	2510 2529 2125 2529 2110 2529 1025 2529     .%)%%!)%.!)%%.)%
d0083cd4:	2529 2525 2525 2929 5d25 2521 2929 2125     )%%%%%))%]!%))%!
d0083ce4:	1021 2521 2929 2525 2525 2529 2925 2925     !.!%))%%%%)%%)%)
d0083cf4:	1025 0010 0000 0000 0000 0000 0000 1000     %...............
d0083d04:	2521 2525 5d29 1021 2121 2925 2925 2925     !%%%)]!.!!%)%)%)
d0083d14:	2525 2521 2525 2129 2925 2129 2525 2125     %%!%%%)!%))!%%%!
d0083d24:	2121 2510 2925 2121 2521 2529 2925 2525     !!.%%)!!!%)%%)%%
d0083d34:	2925 0010 0000 0000 0000 0000 0000 1000     %)..............
d0083d44:	2121 2529 2929 1025 2121 2521 2929 255d     !!)%))%.!!!%))]%
d0083d54:	2121 2521 2125 2521 2925 2121 2525 2129     !!!%%!!%%)!!%%)!
d0083d64:	2121 2110 2121 2921 2121 2521 2925 2925     !!.!!!!)!!!%%)%)
d0083d74:	2525 0010 0000 0000 0000 0000 0000 1000     %%..............
d0083d84:	2125 2925 2925 1029 1021 2921 2125 2529     %!%)%)).!.!)%!)%
d0083d94:	2929 2129 2521 2129 2525 2521 2529 2129     )))!!%)!%%!%)%)!
d0083da4:	2121 2110 2929 295d 2925 1021 2925 2925     !!.!))])%)!.%)%)
d0083db4:	2525 0010 0000 0000 0000 0000 0000 1000     %%..............
d0083dc4:	2121 2921 2525 2525 1010 1021 2561 2525     !!!)%%%%..!.a%%%
d0083dd4:	2121 2521 2129 2121 2125 2525 2925 2125     !!!%)!!!%!%%%)%!
d0083de4:	2110 2510 2925 2121 2521 2129 2910 2529     .!.%%)!!!%)!.))%
d0083df4:	2525 0010 0000 0000 0000 0000 0000 0000     %%..............
d0083e04:	2510 2121 2129 2925 1021 2125 2110 2525     .%!!)!%)!.%!.!%%
d0083e14:	2929 2125 2121 2510 2125 2929 2925 2129     ))%!!!.%%!))%))!
d0083e24:	2110 2110 1021 2110 2110 2525 5d21 2529     .!.!!..!.!%%!])%
d0083e34:	2925 1021 0000 0000 0000 0000 0000 0000     %)!.............
d0083e44:	2510 2129 2929 2521 2125 2110 2110 2121     .%)!))!%%!.!.!!!
d0083e54:	1021 2121 1010 2521 2110 2525 2525 2121     !.!!..!%.!%%%%!!
d0083e64:	2110 1010 2110 1021 1021 2921 1021 2925     .!...!!.!.!)!.%)
d0083e74:	2525 1021 0000 0000 0000 0000 0000 0000     %%!.............
d0083e84:	2110 2129 2921 2921 2129 1010 2121 1010     .!)!!)!))!..!!..
d0083e94:	2110 1021 1010 2525 2110 2525 2925 1021     .!!...%%.!%%%)!.
d0083ea4:	1021 1010 2121 1010 1021 2921 105d 2929     !...!!..!.!)].))
d0083eb4:	2525 1021 0000 0000 0000 0000 0000 0000     %%!.............
d0083ec4:	1000 2521 2521 2125 2125 1021 2110 2121     ..!%!%%!%!!..!!!
d0083ed4:	1021 1010 2110 2110 2521 2525 2121 1021     !....!.!!%%%!!!.
d0083ee4:	1021 1010 1010 0000 2110 2121 1021 2921     !........!!!!.!)
d0083ef4:	2525 0010 0000 0000 0000 0000 0000 0000     %%..............
d0083f04:	1000 2121 2121 2121 2121 1021 1010 1010     ..!!!!!!!!!.....
d0083f14:	1010 1010 1021 1021 2110 2121 2121 2121     ....!.!..!!!!!!!
d0083f24:	1010 1010 0000 0000 1000 2121 2121 2121     ..........!!!!!!
d0083f34:	2121 0010 0000 0000 0000 0000 0000 0000     !!..............
d0083f44:	0000 1010 1010 1010 1010 0010 0000 0000     ................
d0083f54:	0000 0000 1010 1010 1010 1010 1010 1010     ................
	...
d0083f6c:	0000 1010 1010 1010 1010 0000               ............

d0083f78 <bk_bub_tree2>:
	...
d0083f8c:	2110 2129 2525 2125 2529 2121 2529 2925     .!)!%%%!)%!!)%%)
d0083f9c:	2121 2121 2529 2121 2121 1029 1021 0000     !!!!)%!!!!).!...
	...
d0083fc8:	0000 2910 2129 2521 2921 2925 2525 2529     ...))!!%!)%)%%)%
d0083fd8:	2529 2929 2121 2110 2121 2525 2929 1010     )%))!!.!!!%%))..
	...
d0084004:	0000 1100 2921 2521 2521 2921 2125 1010     ....!)!%!%!)%!..
d0084014:	2110 2921 2525 2529 1010 2921 2529 1010     .!!)%%)%..!))%..
d0084024:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0084044:	1000 2121 2521 2925 2529 1110 1010 1010     ..!!!%%))%......
d0084054:	2110 1021 1010 1125 2510 1010 1010 0010     .!!...%..%......
	...
d0084080:	0000 1100 2121 2929 2925 2925 2110 1021     ....!!))%)%).!!.
d0084090:	2121 1010 1111 1010 1010 1010 1110 6721     !!............!g
d00840a0:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00840c0:	0000 2110 2529 2925 2525 2121 1021 6725     ...!)%%)%%!!!.%g
d00840d0:	6767 2121 1110 1010 1010 2110 bb67 1011     gg!!.......!g...
	...
d0084100:	2110 2921 2925 2525 2125 1021 bb25 bbbb     .!!)%)%%%!!.%...
d0084110:	bbbb 67bb 1010 2110 6710 67bb 1010 0000     ...g...!.g.g....
	...
d008413c:	0000 2110 2521 2521 2929 2925 2121 6710     ...!!%!%))%)!!.g
d008414c:	bbbb bbbb bbbb 67bb 2110 bb10 1010 1021     .......g.!....!.
	...
d0084178:	0000 1000 2921 2521 2921 1121 2521 2929     ....!)!%!)!.!%))
d0084188:	1121 6710 bbbb bbbb 1110 2510 2510 1011     !..g.......%.%..
d0084198:	1021 0000 0000 0000 0000 0000 0000 0000     !...............
	...
d00841b8:	1000 2521 2121 2929 2110 2525 2511 2125     ..!%!!)).!%%.%%!
d00841c8:	1021 2510 2567 1010 2110 1021 2110 1010     !..%g%...!!..!..
d00841d8:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00841f4:	0000 1000 2521 2125 2129 1010 1010 1121     ....!%%!)!....!.
d0084204:	2525 2125 1021 1011 1110 2921 2525 1025     %%%!!.....!)%%%.
d0084214:	2121 0010 0000 0000 0000 0000 0000 0000     !!..............
	...
d0084234:	1000 2121 2125 1025 2921 2529 1021 2121     ..!!%!%.!))%!.!!
d0084244:	1011 2525 2929 2529 1025 1011 2110 2125     ..%%)))%%....!%!
d0084254:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0084270:	0000 1100 2121 2125 1025 2921 2529 2129     ....!!%!%.!))%)!
d0084280:	1011 2121 1010 1010 1010 2110 2921 2925     ..!!.......!!)%)
d0084290:	2121 0011 0000 0000 0000 0000 0000 0000     !!..............
	...
d00842b0:	0000 2110 2125 2529 2521 2929 2925 2929     ...!%!)%!%))%)))
d00842c0:	2525 2529 2529 2529 2125 2929 2129 1021     %%)%)%)%%!)))!!.
	...
d00842f0:	2110 2125 2529 2525 2929 2529 2525 2525     .!%!)%%%)))%%%%%
d0084300:	2125 2525 2925 2129 2525 2525 0010 0000     %!%%%))!%%%%....
	...
d008432c:	0000 2110 2125 2525 2929 2529 2925 2925     ...!%!%%)))%%)%)
d008433c:	2529 2125 2121 2121 2121 2925 2525 0011     )%%!!!!!!!%)%%..
	...
d008436c:	2110 2129 2925 2925 2529 2121 2925 2529     .!)!%)%))%!!%))%
d008437c:	2525 2125 2121 2925 2929 2529 1125 1010     %%%!!!%))))%%...
d008438c:	1010 0011 0000 0000 0000 0000 0000 0000     ................
	...
d00843a8:	0000 2110 2125 2525 2929 2129 2121 2521     ...!%!%%)))!!!!%
d00843b8:	2925 2929 2525 2129 2521 2925 2925 2529     %)))%%)!!%%)%))%
d00843c8:	2925 2925 1029 0010 0000 0000 0000 0000     %)%))...........
	...
d00843e4:	0000 1100 2521 2921 2529 2525 2921 2929     ....!%!))%%%!)))
d00843f4:	1125 2510 2921 2529 2929 2129 2525 2929     %..%!))%)))!%%))
d0084404:	2929 2929 2529 2929 1129 0010 0000 0000     )))))%))).......
	...
d0084424:	2111 2125 2925 2129 2121 2529 2929 2525     .!%!%))!!!)%))%%
d0084434:	1121 2111 2925 2925 2525 2529 2525 2121     !..!%)%)%%)%%%!!
d0084444:	2121 2929 2925 2125 1125 0000 0000 0000     !!))%)%!%.......
	...
d0084460:	0000 2910 2525 2929 1121 2525 2929 2525     ...)%%))!.%%))%%
d0084470:	2929 2129 1121 2921 2529 2925 2929 2525     )))!!.!))%%)))%%
d0084480:	2525 2525 2525 2925 2929 2925 0010 0000     %%%%%%%)))%)....
	...
d008449c:	0000 1000 2921 2525 2129 2510 2929 2529     ....!)%%)!.%)))%
d00844ac:	2925 2929 2129 1121 2121 2925 2529 2121     %))))!!.!!%))%!!
d00844bc:	2929 2125 2121 2529 2929 2925 2129 0010     ))%!!!)%))%))!..
	...
d00844dc:	2110 2925 2529 1121 2925 2525 2529 2529     .!%))%!.%)%%)%)%
d00844ec:	2925 2129 2121 2511 2929 2121 2521 2529     %))!!!.%))!!!%)%
d00844fc:	2121 2529 2921 2529 2529 2525 0010 0000     !!)%!))%)%%%....
d008450c:	0000 0000 0000 1011 1010 0000 1011 2521     ..............!%
d008451c:	2525 2129 2521 2925 2125 2925 2925 2529     %%)!!%%)%!%)%))%
d008452c:	2121 2111 2111 2121 2521 2529 2125 2529     !!.!.!!!!%)%%!)%
d008453c:	2125 2521 2925 2525 2529 0010 0000 0000     %!!%%)%%)%......
d008454c:	0000 1010 2921 2129 1011 2521 2929 2525     ....!))!..!%))%%
d008455c:	2921 2925 2529 2110 2525 2521 2525 1021     !)%))%.!%%!%%%!.
d008456c:	2121 1010 2511 2525 2529 2121 2129 2125     !!...%%%)%!!)!%!
d008457c:	2525 2925 2525 2125 0010 0000 0000 1000     %%%)%%%!........
d008458c:	2521 2525 2925 2929 2929 2929 2529 2925     !%%%%))))))))%%)
d008459c:	2525 2129 2910 2125 2929 2929 1021 1121     %%)!.)%!))))!.!.
d00845ac:	2121 2925 2529 2121 2121 2121 2129 2125     !!%))%!!!!!!)!%!
d00845bc:	2529 2925 1021 0000 0000 0000 2111 2929     )%%)!........!))
d00845cc:	2129 2525 2525 2525 2925 2929 2929 2529     )!%%%%%%%))))))%
d00845dc:	1021 2921 2125 2921 2129 2121 1121 2525     !.!)%!!))!!!!.%%
d00845ec:	2529 2125 2121 2110 2111 2125 2521 2525     )%%!!!.!.!%!!%%%
d00845fc:	2929 1021 0000 0000 0000 2510 2125 2921     ))!........%%!!)
d008460c:	2525 2125 2925 2529 1025 2510 2121 1121     %%%!%))%%..%!!!.
d008461c:	2529 2111 2929 2125 2121 1111 2121 2121     )%.!))%!!!..!!!!
d008462c:	2121 1110 1021 2921 2110 2525 2525 2129     !!..!.!).!%%%%)!
d008463c:	0010 0000 0000 1000 2921 2121 2521 2929     ........!)!!!%))
d008464c:	2921 2525 1010 2110 2121 1021 2110 1121     !)%%...!!!!..!!.
d008465c:	2521 2525 2121 2111 1010 1010 1010 1010     !%%%!!.!........
d008466c:	2121 2110 1025 2121 2529 2929 2121 0010     !!.!%.!!)%))!!..
d008467c:	0000 0000 1000 2521 2121 2925 2129 2121     ......!%!!%))!!!
d008468c:	2121 2121 2121 2121 1011 2121 1021 2921     !!!!!!!!..!!!.!)
d008469c:	2129 1121 1021 1010 2121 2121 2121 1010     )!!.!...!!!!!!..
d00846ac:	2110 1121 2921 2925 2129 1121 0000 0000     .!!.!)%))!!.....
d00846bc:	0000 1000 2121 2121 2121 2121 2121 1121     ....!!!!!!!!!!!.
d00846cc:	1010 1010 1010 1010 1021 2111 2121 2121     ........!..!!!!!
d00846dc:	1010 1021 1010 2110 1011 1010 1010 2110     ..!....!.......!
d00846ec:	2111 2521 2125 2121 0010 0000 0000 0000     .!!%%!!!........
d00846fc:	0000 1011 1010 1010 1110 1010 0010 0000     ................
d008470c:	0000 0000 1000 1010 1010 1010 1010 1010     ................
d008471c:	1010 1010 1010 0000 0000 0000 1000 1010     ................
d008472c:	1010 1010 1010 0000 0000 0000               ............

d0084738 <bk_bub_tree3>:
	...
d008474c:	2110 2129 2525 2125 2529 2121 5d29 2525     .!)!%%%!)%!!)]%%
d008475c:	2121 2121 2529 2121 2121 1029 1021 0000     !!!!)%!!!!).!...
	...
d0084790:	2910 2129 2521 2921 2925 2525 2529 2529     .))!!%!)%)%%)%)%
d00847a0:	2929 2121 2110 2121 2525 2929 1010 0000     ))!!.!!!%%))....
	...
d00847d0:	0000 1100 2921 2521 2521 2921 215d 1110     ....!)!%!%!)]!..
d00847e0:	2110 2921 2525 2529 1110 2521 6129 1010     .!!)%%)%..!%)a..
d00847f0:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0084814:	0000 1000 2121 2521 2925 2529 1110 1010     ....!!!%%))%....
d0084824:	1010 2110 1021 1010 1125 2910 1010 1010     ...!!...%..)....
d0084834:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0084858:	0000 1100 2121 2925 2925 2925 2110 1021     ....!!%)%)%).!!.
d0084868:	2121 1010 1111 1010 1010 1010 1110 6721     !!............!g
d0084878:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00848a0:	2110 2529 2925 2525 2121 1021 6725 6767     .!)%%)%%!!!.%ggg
d00848b0:	2121 1110 1010 1010 2110 bb67 1011 0000     !!.......!g.....
	...
d00848e4:	2110 2921 2525 2525 2125 1021 bb25 bbbb     .!!)%%%%%!!.%...
d00848f4:	bbbb 67bb 1010 2110 6710 67bb 1010 0000     ...g...!.g.g....
	...
d0084928:	2110 2521 2521 2929 2925 2121 6711 bbbb     .!!%!%))%)!!.g..
d0084938:	bbbb bbbb 67bb 2110 bb10 1010 1021 0000     .....g.!....!...
	...
d0084968:	0000 1000 2921 2521 2921 1121 2521 2929     ....!)!%!)!.!%))
d0084978:	1121 6710 bbbb bbbb 1110 2510 2510 1011     !..g.......%.%..
d0084988:	1021 0000 0000 0000 0000 0000 0000 0000     !...............
	...
d00849ac:	0000 1000 2521 2121 2929 2110 2561 2511     ....!%!!)).!a%.%
d00849bc:	2125 1021 2510 2567 1010 2110 1021 2110     %!!..%g%...!!..!
d00849cc:	1010 0010 0000 0000 0000 0000 0000 0000     ................
	...
d00849f0:	0000 1000 2521 2125 2129 1010 1010 1121     ....!%%!)!....!.
d0084a00:	2525 2125 1021 1011 1111 2921 2525 1025     %%%!!.....!)%%%.
d0084a10:	2125 0010 0000 0000 0000 0000 0000 0000     %!..............
	...
d0084a34:	0000 1000 2121 2129 1025 2921 2525 1021     ....!!)!%.!)%%!.
d0084a44:	2121 1011 2525 2925 2529 1025 1011 2110     !!..%%%))%%....!
d0084a54:	2125 0010 0000 0000 0000 0000 0000 0000     %!..............
	...
d0084a78:	0000 1100 2121 2525 1025 2921 2525 2125     ....!!%%%.!)%%%!
d0084a88:	1011 2121 1010 1010 1110 2110 2525 2525     ..!!.......!%%%%
d0084a98:	2121 0011 0000 0000 0000 0000 0000 0000     !!..............
	...
d0084ac0:	2110 2125 2529 5d21 2925 2525 2929 2525     .!%!)%!]%)%%))%%
d0084ad0:	2529 2529 2529 5d25 2929 2129 1021 0000     )%)%)%%])))!!...
	...
d0084b04:	2110 2125 2525 2525 2929 2529 2525 2525     .!%!%%%%)))%%%%%
d0084b14:	2125 2525 2925 2129 2525 255d 0010 0000     %!%%%))!%%]%....
	...
d0084b48:	2110 2125 2525 2529 2529 2525 2525 2529     .!%!%%)%)%%%%%)%
d0084b58:	2129 2121 2121 2121 2525 2525 0011 0000     )!!!!!!!%%%%....
	...
d0084b8c:	2111 2125 2925 2925 2925 2529 2529 1025     .!%!%)%)%))%)%%.
d0084b9c:	1010 1010 1010 2110 2121 2525 2525 1025     .......!!!%%%%%.
d0084bac:	1010 1010 1010 1010 0010 0000 0000 0000     ................
	...
d0084bcc:	0000 1100 2121 2521 2929 2925 2525 2529     ....!!!%))%)%%)%
d0084bdc:	2525 2111 2525 2925 2525 1121 1111 2121     %%.!%%%)%%!...!!
d0084bec:	2529 2529 2525 2525 2925 6125 1021 0010     )%)%%%%%%)%a!...
	...
d0084c10:	2000 2110 2125 2925 2529 2529 2929 2925     . .!%!%))%)%))%)
d0084c20:	2125 2925 2929 2529 2529 2529 2525 2111     %!%))))%)%)%%%.!
d0084c30:	2121 2925 2529 2525 2525 2525 2525 1025     !!%))%%%%%%%%%%.
	...
d0084c4c:	1000 1110 1111 1010 2111 2925 2525 2525     .........!%)%%%%
d0084c5c:	2925 2929 2925 2525 2529 2525 2525 2521     %)))%)%%)%%%%%!%
d0084c6c:	2525 2525 2561 1125 2521 2525 2525 2525     %%%%a%%.!%%%%%%%
d0084c7c:	2525 2525 2929 2929 0010 0000 0000 0000     %%%%))))........
d0084c8c:	0000 1000 2110 2921 2525 2925 2929 2525     .....!!)%%%)))%%
d0084c9c:	2925 2925 2529 215d 2525 2925 2925 2525     %)%))%]!%%%)%)%%
d0084cac:	1125 2925 2525 2529 2525 2125 2511 2121     %.%)%%)%%%%!.%!!
d0084cbc:	2929 2121 2525 2925 2529 2525 1021 0000     ))!!%%%))%%%!...
d0084ccc:	0000 0000 0000 2110 2925 2529 2925 2529     .......!%))%%))%
d0084cdc:	2925 2529 2529 2929 2125 2521 2525 2929     %))%)%))%!!%%%))
d0084cec:	2925 2525 2511 2529 2925 2925 2929 2125     %)%%.%)%%)%)))%!
d0084cfc:	2110 2525 2525 2525 2125 2529 2525 2529     .!%%%%%%%!)%%%)%
d0084d0c:	1029 0000 0000 0000 0000 2910 2529 2525     )..........))%%%
d0084d1c:	2925 2929 2529 2925 2529 2121 2521 2529     %))))%%))%!!!%)%
d0084d2c:	2929 2525 2125 1121 6121 2525 2529 2525     ))%%%!!.!a%%)%%%
d0084d3c:	2925 2121 2111 2129 2121 2121 2525 2121     %)!!.!)!!!!!%%!!
d0084d4c:	2925 2529 1025 0000 0000 0000 1000 2521     %))%%.........!%
d0084d5c:	2121 2925 2525 2525 2525 2525 2925 2529     !!%)%%%%%%%%%))%
d0084d6c:	2925 2525 2525 2125 2121 2111 2525 2125     %)%%%%%!!!.!%%%!
d0084d7c:	2925 2529 2529 2121 2110 2121 1111 2121     %))%)%!!.!!!..!!
d0084d8c:	2521 2125 5d21 2525 2125 0010 0000 0000     !%%!!]%%%!......
d0084d9c:	2110 1025 2929 2525 2529 2525 2925 2529     .!%.))%%)%%%%))%
d0084dac:	2929 2525 2525 2925 2125 2921 2529 2110     ))%%%%%)%!!))%.!
d0084dbc:	2525 2521 2525 2925 2121 2121 2110 1010     %%!%%%%)!!!!.!..
d0084dcc:	2121 1021 2121 2525 2921 2561 2125 0010     !!!.!!%%!)a%%!..
d0084ddc:	0000 0000 2110 2511 2925 2925 295d 2529     .....!.%%)%)]))%
d0084dec:	2529 2529 2925 2129 2121 2121 2925 2529     )%)%%))!!!!!%))%
d0084dfc:	115d 2121 2121 2521 2529 2121 2121 2121     ].!!!!!%)%!!!!!!
d0084e0c:	1010 2121 1010 2110 2110 2921 2121 2125     ..!!...!.!!)!!%!
d0084e1c:	2121 0011 0000 1000 2121 2529 2529 2525     !!......!!)%)%%%
d0084e2c:	2121 2121 2121 2121 2925 2525 2525 2125     !!!!!!!!%)%%%%%!
d0084e3c:	2121 2121 1011 2121 2121 2529 2121 2121     !!!!..!!!!)%!!!!
d0084e4c:	2110 1021 2121 1021 0000 1120 2121 2121     .!!.!!!... .!!!!
d0084e5c:	2121 2121 1021 0000 0000 1000 2929 2125     !!!!!.......))%!
d0084e6c:	2525 2121 2121 2121 2121 1010 2121 2921     %%!!!!!!!!..!!!)
d0084e7c:	2121 2121 2121 1021 1010 2121 2121 2121     !!!!!!!...!!!!!!
d0084e8c:	2121 1021 2121 1010 1121 0010 0000 1000     !!!.!!..!.......
d0084e9c:	2121 1021 2121 2121 1021 0000 0000 1000     !!!.!!!!!.......
d0084eac:	2521 2521 2925 1021 2110 1010 2111 2121     !%!%%)!..!...!!!
d0084ebc:	1111 2121 1011 1111 1021 1010 1010 2110     ..!!....!......!
d0084ecc:	2111 2121 2121 1010 2121 1010 1010 0010     .!!!!!..!!......
d0084edc:	0000 0000 1010 2121 2121 1021 0010 0000     ......!!!!!.....
d0084eec:	0000 0000 2111 2925 2125 2110 1021 0000     .....!%)%!.!!...
d0084efc:	1000 2110 2121 1010 1010 2110 2121 1010     ...!!!.....!!!..
d0084f0c:	1010 1010 2121 2121 1010 2110 1021 1010     ....!!!!...!!...
d0084f1c:	1110 0000 0000 0000 0000 1011 1010 0010     ................
	...
d0084f34:	1000 2125 1021 2121 0010 0000 0000 1000     ..%!!.!!........
d0084f44:	2110 2121 2121 1010 1010 0010 0000 1000     .!!!!!..........
d0084f54:	2110 1011 1010 2121 0011 0000 0000 0000     .!....!!........
	...
d0084f78:	0000 1010 1010 1110 0000 0000 0000 0000     ................
d0084f88:	1100 1010 1010 0010 0000 0000 0000 0000     ................
d0084f98:	1000 1010 1010 1010 0000 0000 0000 0000     ................
	...

d0084fb8 <bk_bub_tree4>:
	...
d0084fcc:	2110 2529 2525 2129 2529 2121 2529 2925     .!)%%%)!)%!!)%%)
d0084fdc:	2121 2121 2529 2121 2121 1025 1021 0000     !!!!)%!!!!%.!...
	...
d0085010:	2910 2129 2521 2521 2925 2525 2525 2529     .))!!%!%%)%%%%)%
d0085020:	2929 2121 2110 2121 2525 2929 1010 0000     ))!!.!!!%%))....
	...
d0085050:	0000 1000 2921 2521 2521 2921 2125 1010     ....!)!%!%!)%!..
d0085060:	2110 2521 2525 2529 1010 2921 2525 1010     .!!%%%)%..!)%%..
d0085070:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0085094:	0000 1000 2121 2521 2921 2529 1010 1010     ....!!!%!))%....
d00850a4:	1010 2110 1021 1010 1025 2510 1010 1010     ...!!...%..%....
d00850b4:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00850d8:	0000 1000 2121 2925 2929 2925 2110 1021     ....!!%)))%).!!.
d00850e8:	2121 1010 1010 1010 1010 1010 1010 6721     !!............!g
d00850f8:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0085120:	2110 2525 2525 2525 2121 1025 6725 6767     .!%%%%%%!!%.%ggg
d0085130:	2121 1010 1010 1010 2110 bb67 1010 0000     !!.......!g.....
	...
d0085164:	2110 2921 2525 2525 2125 1021 bb25 bbbb     .!!)%%%%%!!.%...
d0085174:	bbbb 67bb 1010 2110 6710 67bb 1010 0000     ...g...!.g.g....
	...
d00851a8:	2110 2521 2521 2925 2925 2121 6710 bbbb     .!!%!%%)%)!!.g..
d00851b8:	bbbb bbbb 67bb 2110 bb10 1010 1021 0000     .....g.!....!...
	...
d00851e8:	0000 1000 2921 2521 2921 1021 2521 2529     ....!)!%!)!.!%)%
d00851f8:	1021 6710 bbbb bbbb 1010 2510 2510 1010     !..g.......%.%..
d0085208:	1021 0000 0000 0000 0000 0000 0000 0000     !...............
	...
d008522c:	0000 1000 2521 2121 2929 2110 2525 2110     ....!%!!)).!%%.!
d008523c:	2125 1021 2510 2567 1010 2110 1021 2110     %!!..%g%...!!..!
d008524c:	1010 0010 0000 0000 0000 0000 0000 0000     ................
	...
d0085270:	0000 1000 2521 2125 2129 1010 1010 1021     ....!%%!)!....!.
d0085280:	2521 2125 1021 1010 1010 2921 2525 1025     !%%!!.....!)%%%.
d0085290:	2125 0010 0000 0000 0000 0000 0000 0000     %!..............
	...
d00852b4:	0000 1000 2121 2129 1025 2921 2925 1021     ....!!)!%.!)%)!.
d00852c4:	2121 1010 2525 2929 2525 1025 1010 2110     !!..%%))%%%....!
d00852d4:	2121 0010 0000 0000 0000 0000 0000 0000     !!..............
	...
d00852f8:	0000 1000 2121 2125 1029 2921 2529 2125     ....!!%!).!))%%!
d0085308:	1010 2121 1010 1010 1010 2110 2521 2525     ..!!.......!!%%%
d0085318:	2121 0010 0000 0000 0000 0000 0000 0000     !!..............
	...
d0085340:	2110 2125 2529 2521 2529 2525 2929 2925     .!%!)%!%)%%%))%)
d0085350:	2525 2529 2525 2125 2929 2129 1021 0000     %%)%%%%!)))!!...
	...
d0085384:	2110 2125 2529 2525 2929 2529 2525 2525     .!%!)%%%)))%%%%%
d0085394:	2125 2525 2525 2525 2525 2525 0010 0000     %!%%%%%%%%%%....
	...
d00853c8:	2110 2125 2525 2529 2529 2925 2525 2529     .!%!%%)%)%%)%%)%
d00853d8:	2125 2121 2121 2121 2529 2529 0010 0000     %!!!!!!!)%)%....
	...
d008540c:	2110 2129 2525 2929 2129 2525 2529 2525     .!)!%%)))!%%)%%%
d008541c:	2929 2125 2121 2925 2525 2925 1025 1010     ))%!!!%)%%%)%...
	...
d0085444:	0000 1000 1010 1010 0020 0000 2110 2921     ........ ....!!)
d0085454:	2525 2529 2121 2521 2525 2529 2525 2529     %%)%!!!%%%)%%%)%
d0085464:	2121 2521 2925 2525 2525 2925 0010 0000     !!!%%)%%%%%)....
	...
d0085488:	1010 2110 2925 2529 1021 2010 2921 2525     ...!%))%!.. !)%%
d0085498:	2529 2925 2121 2121 1010 1010 2510 2925     )%%)!!!!.....%%)
d00854a8:	2529 2529 2929 2929 2525 2529 1025 1010     )%)%))))%%)%%...
	...
d00854c8:	0000 1000 2921 2921 2525 2525 2925 2525     ....!)!)%%%%%)%%
d00854d8:	2121 2925 2525 2129 2521 1010 2521 2925     !!%)%%)!!%..!%%)
d00854e8:	1029 1010 2110 2121 2521 2929 2525 2525     )....!!!!%))%%%%
d00854f8:	2529 2525 1010 0000 0000 0000 0000 0000     )%%%............
d0085508:	0000 0000 0000 2110 2529 2529 2929 2925     .......!)%)%))%)
d0085518:	2525 2525 2529 2525 2929 2121 2925 2525     %%%%)%%%))!!%)%%
d0085528:	2525 2525 2925 2529 1025 1010 2121 2121     %%%%%))%%...!!!!
d0085538:	2521 2921 2929 2929 2525 0010 0000 0000     !%!)))))%%......
	...
d0085550:	1000 2521 2525 2525 2929 2529 2525 2529     ..!%%%%%)))%%%)%
d0085560:	2529 2529 2121 2529 2925 2925 2529 2529     )%)%!!)%%)%))%)%
d0085570:	2529 2925 2925 2129 2110 2121 2521 2125     )%%)%))!.!!!!%%!
d0085580:	2521 2529 2925 1025 0000 0000 0000 0000     !%)%%)%.........
d0085590:	0000 0000 1000 2525 2929 2529 2525 2529     ......%%)))%%%)%
d00855a0:	2929 2525 2129 2521 2529 2525 2925 2525     ))%%)!!%)%%%%)%%
d00855b0:	2925 2929 2529 2925 2925 2525 1021 2521     %))))%%)%)%%!.!%
d00855c0:	2529 2925 2529 2925 2525 2525 0010 0000     )%%))%%)%%%%....
	...
d00855d8:	2110 2521 2525 2925 2529 2525 2525 2529     .!!%%%%))%%%%%)%
d00855e8:	2525 2525 2925 2129 2521 2129 2521 2925     %%%%%))!!%)!!%%)
d00855f8:	2521 2529 2929 2925 2125 2510 2529 2121     !%)%))%)%!.%)%!!
d0085608:	2925 2121 2929 2525 1029 0000 0000 0000     %)!!))%%).......
d0085618:	0000 0000 2510 2521 2521 2129 2125 2121     .....%!%!%)!%!!!
d0085628:	2525 2929 2525 2529 2525 2525 2125 2121     %%))%%)%%%%%%!!!
d0085638:	2525 2929 2929 2125 2529 2525 2529 1021     %%))))%!)%%%)%!.
d0085648:	2121 2529 2525 2525 2121 2929 2525 0010     !!)%%%%%!!))%%..
	...
d0085660:	2510 2125 2529 2121 1021 1010 2121 2525     .%%!)%!!!...!!%%
d0085670:	2925 2125 2129 2121 2121 2529 1010 2521     %)%!)!!!!!)%..!%
d0085680:	2525 2125 2521 2929 2525 1021 1010 2110     %%%!!%))%%!....!
d0085690:	2121 2521 2925 2921 2525 1029 0000 0000     !!!%%)!)%%).....
d00856a0:	0000 0000 2510 2129 2125 1021 2121 2121     .....%)!%!!.!!!!
d00856b0:	2110 2521 2929 2929 2925 2925 2125 2121     .!!%))))%)%)%!!!
d00856c0:	1010 2110 2529 2125 2521 2525 2925 1021     ...!)%%!!%%%%)!.
d00856d0:	2121 1021 1010 2121 2929 2129 2525 2925     !!!...!!)))!%%%)
d00856e0:	0010 0000 0000 1000 2521 2129 2129 2110     ........!%)!)!.!
d00856f0:	1021 2110 2121 2121 2121 2121 2121 2121     !..!!!!!!!!!!!!!
d0085700:	2121 1010 1021 1010 2525 2129 2910 2529     !!..!...%%)!.))%
d0085710:	2125 1021 1010 2121 2121 2110 2121 2925     %!!...!!!!.!!!%)
d0085720:	2521 2925 1025 0000 0000 1000 2525 2521     !%%)%.......%%!%
d0085730:	2125 2121 0010 1020 1010 2521 1021 2110     %!!!.. ...!%!..!
d0085740:	2121 1010 1010 2110 1021 1010 2921 1021     !!.....!!...!)!.
d0085750:	2521 2929 2121 1021 1010 1010 1010 2121     !%))!!!.......!!
d0085760:	2121 2921 2125 2521 1025 0000 0000 1000     !!!)%!!%%.......
d0085770:	2529 2921 2121 1021 0000 0000 2000 1010     )%!)!!!...... ..
d0085780:	2110 2521 2121 2121 2121 1021 1010 2110     .!!%!!!!!!!....!
d0085790:	2110 1021 2125 2121 2110 1010 1010 0000     .!!.%!!!.!......
d00857a0:	0000 1010 1021 2110 2121 2521 2125 0010     ....!..!!!!%%!..
d00857b0:	0000 1000 2121 2121 2125 1021 0000 0000     ....!!!!%!!.....
d00857c0:	0000 0000 1020 1010 1010 1010 1010 0010     .... ...........
d00857d0:	0000 1010 2121 2110 2121 1010 1021 0000     ....!!.!!!..!...
	...
d00857e8:	2110 1010 2110 2121 2121 0010 0000 0000     .!...!!!!!......
d00857f8:	1010 1010 1010 0010 0000 0000 0000 0000     ................
	...
d0085814:	0000 1000 1010 1010 1010 1010 0010 0000     ................
	...
d008582c:	1000 1010 1010 1010 1010 0000               ............

d0085838 <bk_bub_treehide>:
d0085838:	0000 0000 1000 2921 2521 2929 2521 2125     ......!)!%))!%%!
d0085848:	6121 2925 2129 2121 2521 2129 2121 2521     !a%))!!!!%)!!!!%
d0085858:	2110 0010 0000 0000 0000 0000 1000 2929     .!............))
d0085868:	2121 2125 2929 2925 2525 2929 2925 2129     !!%!))%)%%))%))!
d0085878:	1021 2120 2121 2529 1025 0011 0000 0000     !. !!!)%%.......
d0085888:	0000 0000 2111 2129 2125 2125 2129 1121     .....!)!%!%!)!!.
d0085898:	1011 2121 2525 2525 1021 2110 2921 1029     ..!!%%%%!..!!)).
d00858a8:	1010 0000 0000 0000 0000 0000 2110 2121     .............!!!
d00858b8:	2525 2929 1025 1010 1010 1010 2121 1110     %%))%.......!!..
d00858c8:	2510 1011 1029 1011 1010 0000 0000 0000     .%..)...........
d00858d8:	0000 0000 5910 2521 2529 2529 1029 2121     .....Y!%)%)%).!!
d00858e8:	2110 1021 1011 1010 1010 1010 1010 2110     .!!............!
d00858f8:	1021 0000 0000 0000 0000 0000 1000 2921     !.............!)
d0085908:	2525 2529 2125 2121 2111 2121 2121 1021     %%)%%!!!.!!!!!!.
d0085918:	1010 1010 1010 2559 1021 0010 0000 0000     ......Y%!.......
d0085928:	0000 0000 1000 2121 2525 2525 2525 2121     ......!!%%%%%%!!
d0085938:	2110 2121 2125 2125 2021 1010 1021 2921     .!!!%!%!! ..!.!)
d0085948:	1021 0010 0000 0000 0000 0000 1000 2121     !.............!!
d0085958:	2125 2925 2529 1025 1010 2121 2121 2521     %!%))%%...!!!!!%
d0085968:	2125 1021 1021 2121 1010 0010 0000 0000     %!!.!.!!........
d0085978:	0000 0000 2110 2129 2125 2129 2111 2925     .....!)!%!)!.!%)
d0085988:	2129 1010 2110 2121 2121 1021 1029 1010     )!...!!!!!!.)...
d0085998:	2110 0010 0000 0000 0000 0000 2110 2125     .!...........!%!
d00859a8:	2521 1029 6121 1125 2521 2121 1010 1010     !%).!a%.!%!!....
d00859b8:	1010 1010 2121 1010 1021 1010 0000 0000     ....!!..!.......
d00859c8:	0000 0000 2110 2525 2921 1021 1010 2110     .....!%%!)!....!
d00859d8:	2111 2525 2121 1010 1010 2110 2125 2929     .!%%!!.....!%!))
d00859e8:	2110 1021 0000 0000 0000 0000 2110 2921     .!!..........!!)
d00859f8:	2521 2110 2525 2125 2110 1021 2511 2525     !%.!%%%!.!!..%%%
d0085a08:	2925 2525 1110 1010 2121 1021 0000 0000     %)%%....!!!.....
d0085a18:	0000 0000 2111 2521 2921 2110 2929 2525     .....!!%!).!))%%
d0085a28:	1021 2110 1021 1010 1010 1010 2121 2525     !..!!.......!!%%
d0085a38:	2129 1021 0000 0000 0000 0000 1000 2521     )!!...........!%
d0085a48:	2921 2161 2525 2525 2925 2529 2525 2929     !)a!%%%%%))%%%))
d0085a58:	2929 2525 2925 6129 2121 0010 0000 0000     ))%%%))a!!......
d0085a68:	0000 0000 1000 2521 2921 2525 2525 2925     ......!%!)%%%%%)
d0085a78:	2525 2525 2929 2521 2561 2525 2521 6125     %%%%))!%a%%%!%%a
d0085a88:	1025 0000 0000 0000 0000 0000 1000 2521     %.............!%
d0085a98:	2521 2925 2925 2525 2525 2929 2525 2121     !%%)%)%%%%))%%!!
d0085aa8:	2121 2121 2521 2929 1029 0000 0000 0000     !!!!!%))).......

d0085ab8 <bub_background>:
	...
d0085adc:	0000 fffe 0001 0000 0000 0000 0000 0fc0     ................
	...
d0085b18:	8000 0003 001f 0000 0000 0000 0000 7820     .............. x
	...
d0085b54:	8000 ffc0 0070 0000 0000 0000 0000 6018     ....p..........`
	...
d0085b90:	c000 81f8 0043 0000 0000 0000 0000 3004     ....C..........0
	...
d0085bcc:	4000 0700 00c6 0000 0000 0000 0000 1802     .@..............
	...
d0085c08:	4000 0cfe 0086 0000 0000 0000 0000 1c02     .@..............
	...
d0085c44:	c000 0b83 0087 0000 0000 0000 0000 1e02     ................
d0085c54:	0000 0000 0700 0000 0000 0000 0000 0000     ................
	...
d0085c80:	8000 9a00 0083 0000 0000 0000 0000 1e02     ................
d0085c90:	0000 0000 0580 0000 0000 0000 0000 0000     ................
	...
d0085cac:	0000 00c0 0000 0000 0000 0000 0000 0000     ................
d0085cbc:	0000 b200 0083 0000 0e00 0000 0000 1e02     ................
d0085ccc:	0000 0000 0ec0 0000 0000 1fc0 0000 0000     ................
	...
d0085ce8:	0000 0330 0000 0000 0000 0000 0000 0000     ..0.............
d0085cf8:	0000 e600 00c3 0000 1b00 0000 0000 3c04     ...............<
d0085d08:	0000 0060 1a30 0000 0000 2060 0000 0000     ..`.0.....` ....
	...
d0085d24:	0000 0ccc 0000 0000 0000 0000 0000 0000     ................
d0085d34:	0000 e400 0061 ff80 1181 0000 0000 3c08     ....a..........<
d0085d44:	0000 007c 1718 0000 0000 4390 0000 0000     ..|........C....
	...
d0085d60:	0000 0b72 0000 0000 0000 0000 0000 0000     ..r.............
d0085d70:	0000 6400 0030 0070 3083 0000 0000 3808     ...d0.p..0.....8
d0085d80:	01e0 007e 3706 0070 0000 86e8 0001 0000     ..~..7p.........
	...
d0085d9c:	8000 097d 0000 0000 0000 0000 01e0 0000     ..}.............
d0085dac:	0000 0200 0018 0018 30c2 0000 0000 3810     .........0.....8
d0085dbc:	01fe c0ff 2f01 03fc 0000 8c26 0000 0000     ...../....&.....
d0085dcc:	0000 0000 0010 0000 0000 0000 6000 0cfe     .............`..
	...
d0085de4:	0610 0000 0000 0200 000c 3c0c 3044 7f00     ...........<D0..
d0085df4:	0300 7860 81ff 60ff 7f80 0fc7 0000 9c19     ..`x...`........
	...
d0085e0c:	0010 0000 0000 0000 2000 067f 0000 0000     ......... ......
d0085e1c:	0000 0000 04c8 0000 0000 0200 0004 4f04     ...............O
d0085e2c:	706c 7f80 0780 f080 e0ff 3fff df80 1f81     lp.........?....
d0085e3c:	0000 dc09 0000 0000 0000 4000 0310 0000     ...........@....
d0085e4c:	0000 0000 c000 073e 0000 0000 0000 0000     ......>.........
d0085e5c:	05a4 0000 0000 0100 000e c786 f038 ff80     ............8...
d0085e6c:	0fc0 f100 f8ff 3fff 3f80 1780 0000 4f09     .......?.?.....O
d0085e7c:	0000 0000 0000 8000 00d9 0000 0000 0000     ................
d0085e8c:	8000 0781 0000 0000 0000 0000 05d2 0000     ................
d0085e9c:	0000 0180 001e 81c2 f018 ffc0 0fe0 fe00     ................
d0085eac:	ff7f 3fff 0700 17c0 0003 67d1 0000 0000     ...?.......g....
d0085ebc:	0000 0000 0067 0000 0000 0000 8000 0566     ....g.........f.
	...
d0085ed4:	0cf2 0380 0000 00f0 001e 40e2 e018 ffe1     ...........@....
d0085ee4:	1ff1 f800 ffff 3fff 0000 1fb0 0007 31e1     .......?.......1
d0085ef4:	0000 7c00 0000 0000 0181 0000 3c00 0000     ...|.........<..
d0085f04:	0000 0399 0000 0000 0000 0000 3272 0c40     ............r2@.
d0085f14:	0000 00f8 003e 6072 c00c fffb 1ff8 fc00     ....>.r`........
d0085f24:	ffff 3fff 0000 3edc 0006 1001 0000 8380     ...?...>........
d0085f34:	0000 9c00 0f1c 0000 6300 0000 0000 03c1     .........c......
	...
d0085f4c:	6106 3020 0000 00fe 003f 3072 c006 7fff     .a 0....?.r0....
d0085f5c:	3ffe fe00 ffff 3fff 0000 ffb7 0107 18e6     .?.....?........
d0085f6c:	0000 3860 0001 7000 0334 0000 dd80 0000     ..`8...p4.......
d0085f7c:	0000 03c1 0000 0000 0000 0000 40e6 2710     .............@.'
d0085f8c:	0018 81ff 003f 18e2 0003 3fff 3fff ff00     ....?......?.?..
d0085f9c:	ffff 3fff c070 fffb 01c7 187c 0000 7f30     ...?p.....|...0.
d0085fac:	0001 4000 038e 0000 d640 0000 0000 01c1     ...@....@.......
	...
d0085fc4:	401c 2d90 801f e1ff 007f 8786 0001 3ffe     .@.-...........?
d0085fd4:	3fff fff6 ffff ffff e3ff fffe 01e7 1840     .?............@.
d0085fe4:	0000 7110 0001 8000 01c0 0000 f340 0000     ...q........@...
d0085ff4:	8000 05e0 0000 0000 0008 0000 4f1a ee90     .............O..
d0086004:	e01f f3ff 007f c004 0000 ffff 3fff ffff     .............?..
d0086014:	ffff ffff 3fff ffff 03ff 3020 0000 6090     .....?.... 0...`
d0086024:	0001 0000 00e7 0000 7b40 0000 8000 07f0     ........@{......
d0086034:	0000 0000 000e 0c00 71f0 fe88 f3ff ffff     .........q......
d0086044:	007f 400c 801e ffff 3fff ffff ffff ffff     ...@.....?......
d0086054:	ffff ffff 03ff e020 0000 6090 0001 0000     ...... ....`....
d0086064:	0068 0000 ef40 001f c000 02f0 0000 9400     h...@...........
d0086074:	000f 1c00 3020 ff18 ffff ffff 03ff 4038     .... 0........8@
d0086084:	c03f ffff bfff ffff ffff ffff ffff ffff     ?...............
d0086094:	00ff f81f 0003 31b0 0601 0000 0068 0000     .......1....h...
d00860a4:	0040 0030 4000 03f0 0000 fc00 019f 1a00     @.0..@..........
d00860b4:	1e20 fffc ffff ffff 1fff 40e0 e03f ffff      ..........@?...
d00860c4:	bfff ffff ffff ffff ffff ffff 80ff ff87     ................
d00860d4:	0307 8f30 0581 0000 0048 0000 e480 0021     ..0.....H.....!.
d00860e4:	2000 03f8 0000 fe00 01ff 3b00 1040 fffc     . .........;@...
d00860f4:	ffff ffff 7fff ff80 ff3f ffff ffff ffff     ........?.......
d0086104:	ffff ffff ffff ffff fe3f ffff 03ff 8060     ........?.....`.
d0086114:	0670 0000 0048 0000 f300 0063 1004 0170     p...H.....c...p.
d0086124:	0000 fd80 01ff 7900 1140 ffe4 ffff ffff     .......y@.......
d0086134:	ffff ffe3 ffff ffff ffff ffff ffff ffff     ................
d0086144:	ffff ffff ffff ffff 07ff 1fc0 0b1d 0000     ................
d0086154:	00d0 0000 7900 0064 1816 01f0 0000 ffc0     .....yd.........
d0086164:	43ff fc80 0bc0 ffc2 ffff ffff ffff ffff     .C..............
d0086174:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086184:	ffff ffff 1fff 0f98 0b87 0000 00d0 0000     ................
d0086194:	1c80 8874 0817 c0f0 00ef ffe0 63ff f880     ..t..........c..
d00861a4:	0ec1 fff2 ffff ffff ffff ffff ffff ffff     ................
d00861b4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00861c4:	3fff 8c24 edc3 0000 0090 0000 0c80 8c74     .?$...........t.
d00861d4:	042f f0f1 ffff ffff ffff fe40 0e63 fff6     /.........@.c...
d00861e4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00861f4:	ffff ffff ffff ffff ffff ffff 7fff 4c66     ..............fL
d0086204:	9fc0 0003 0090 0000 0640 ef76 866f fff0     ........@.v.o...
d0086214:	ffff ffff ffff fff0 043f fffe ffff ffff     ........?.......
d0086224:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086234:	ffff ffff ffff ffff ffff 7fe1 83c0 000f     ................
d0086244:	01a0 0000 0638 ff3b 43e7 fff7 ffff ffff     ....8.;..C......
d0086254:	ffff ffff 841f ffff ffff ffff ffff ffff     ................
d0086264:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086274:	ffff ffff ffff 0ffc c0e0 000f 01a0 0000     ................
d0086284:	863c ff9d c1f3 ffff ffff ffff ffff ffff     <...............
d0086294:	ff8f ffff ffff ffff ffff ffff ffff ffff     ................
d00862a4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00862b4:	ffff ffff f000 000f 0120 0000 6604 ffee     ........ ....f..
d00862c4:	e037 ffff ffff ffff ffff ffff fff0 ffff     7...............
d00862d4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00862e4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00862f4:	fc3f 000f 0140 8e00 3c07 ffff edbf ffff     ?...@....<......
d0086304:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086314:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086324:	ffff ffff ffff ffff ffff ffff feff 0003     ................
d0086334:	0340 8f00 c001 ffff ffdf ffff ffff ffff     @...............
d0086344:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086354:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086364:	ffff ffff ffff ffff ffff 0007 0340 7ff0     ............@...
d0086374:	ff70 ffff ffff ffff ffff ffff ffff ffff     p...............
d0086384:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086394:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00863a4:	ffff ffff ffff ffff 0341 fff0 fff7 ffff     ........A.......
d00863b4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00863c4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00863d4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00863e4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d00863f4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086404:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
d0086414:	ffff ffff                                   ....

d0086418 <bub_leaves_img>:
	...
d0086450:	1000 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008646c:	0000 1000 6410 0010 0000 0000 0000 0000     .....d..........
	...
d008648c:	0000 5c10 105c 0000 0000 0000 0000 0000     ...\\...........
	...
d00864a8:	1010 1010 1010 105c 0010 0000 0000 0000     ......\.........
	...
d00864c4:	0000 1000 6010 6060 1060 1010 0010 0000     .....````.......
	...
d00864e4:	1000 1010 5c60 6060 5c60 6060 1010 0000     ....`\```\``....
	...
d0086500:	0000 1000 1010 6060 6068 5c5c 605c 6060     ......``h`\\\```
d0086510:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
d0086520:	0000 1010 5c5c 6868 6068 5c5c 6060 6060     ....\\hhh`\\````
d0086530:	1010 0000 0000 0000 0000 0000 0000 0000     ................
d0086540:	1000 6010 6860 6068 5c5c 6060 605c 6060     ...``hh`\\``\```
d0086550:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d0086560:	1010 6860 6868 5c60 605c 6060 5c60 6060     ..`hhh`\\````\``
d0086570:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d0086580:	6010 6868 6060 605c 605c 6060 6060 105c     .`hh``\`\`````\.
d0086590:	0010 0000 0000 0000 0000 0000 0000 1000     ................
d00865a0:	6810 6068 5c60 6060 605c 6060 6060 1010     .hh``\``\`````..
	...
d00865bc:	0000 1010 6860 5c5c 605c 6060 605c 6060     ....`h\\\```\```
d00865cc:	1060 0010 0000 0000 0000 0000 0000 0000     `...............
d00865dc:	0000 6010 6060 5c60 605c 6060 605c 1060     ...````\\```\``.
d00865ec:	1010 0000 0000 0000 0000 0000 0000 0000     ................
d00865fc:	0000 6010 6060 605c 605c 6060 105c 1010     ...```\`\```\...
d008660c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d008661c:	1000 6010 5c60 6060 605c 1060 1010 104c     ...``\``\``...L.
d008662c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d008663c:	1000 6060 605c 6060 105c 1010 4c4c 1058     ..``\```\...LLX.
	...
d008665c:	1000 5c60 6060 1010 1010 4c10 4c4c 1058     ..`\``.....LLLX.
	...
d008667c:	1000 605c 1010 0010 0000 5810 584c 1010     ..\`.......XLX..
	...
d008669c:	1000 1010 0010 0000 0000 1010 5858 0010     ............XX..
	...
d00866c4:	0000 1000 1010 0010 0000 0000 0000 0000     ................
	...
d00866e8:	1000 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008676c:	0000 1000 0010 0010 0000 0000 0000 0000     ................
	...
d008678c:	0000 5c10 5c5c 1010 0000 0000 0000 0000     ...\\\..........
	...
d00867a8:	1000 1010 1010 5c5c 105c 0010 0000 0000     ......\\\.......
	...
d00867c4:	0000 1000 6010 6060 1060 1010 0010 0000     .....````.......
	...
d00867e4:	1000 1010 5c60 6060 5c60 6060 1010 0000     ....`\```\``....
	...
d0086800:	0000 1000 1010 6060 6068 5c5c 605c 6060     ......``h`\\\```
d0086810:	1060 0000 0000 0000 0000 0000 1000 1010     `...............
d0086820:	1010 1010 5c5c 6868 6068 5c5c 6060 6060     ....\\hhh`\\````
d0086830:	1010 0000 0000 0000 0000 1000 1010 6060     ..............``
d0086840:	6060 6060 6868 6068 5c5c 6060 605c 6060     ````hhh`\\``\```
d0086850:	0010 0000 0000 0000 0000 1010 6060 5c5c     ............``\\
d0086860:	6860 6868 6868 5c60 605c 6060 5c60 6060     `hhhhh`\\````\``
d0086870:	0010 0000 0000 0000 1000 6010 6060 6060     ...........`````
d0086880:	605c 6868 5c60 605c 6060 6060 6060 105c     \`hh`\\```````\.
d0086890:	0010 0000 0000 0000 1000 6060 5c5c 5c5c     ..........``\\\\
d00868a0:	5c5c 5c5c 605c 6060 605c 6060 6060 1010     \\\\\```\`````..
	...
d00868b8:	1000 5c10 6060 6060 5c60 6060 5c60 6060     ...\`````\```\``
d00868c8:	605c 6060 1060 0010 0000 0000 0000 0000     \````...........
d00868d8:	0000 1000 1010 5c60 605c 6060 605c 6060     ......`\\```\```
d00868e8:	605c 1060 1010 0000 0000 0000 0000 0000     \``.............
d00868f8:	0000 0000 1000 1010 6010 6060 605c 6060     .........```\```
d0086908:	105c 1010 0000 0000 0000 0000 0000 0000     \...............
	...
d0086920:	1010 1010 1010 1060 1010 104c 0000 0000     ......`...L.....
	...
d0086944:	1000 1010 4c4c 1058 0000 0000 0000 0000     ....LLX.........
	...
d0086964:	1000 4c4c 584c 104c 0000 0000 0000 0000     ..LLLXL.........
	...
d0086984:	4c10 584c 4c58 1010 0000 0000 0000 0000     .LLXXL..........
	...
d00869a4:	4c10 584c 104c 0010 0000 0000 0000 0000     .LLXL...........
	...
d00869c4:	5810 4c4c 1010 0000 0000 0000 0000 0000     .XLL............
	...
d00869e0:	0000 1000 1010 1010 0000 0000 0000 0000     ................
	...

d0086a18 <bubtreeforeground>:
d0086a18:	0000 2110 2121 2121 2525 2525 2525 2525     ...!!!!!%%%%%%%%
d0086a28:	2525 2525 2525 2525 2121 2110 0000 0000     %%%%%%%%!!.!....
d0086a38:	0000 2110 2121 2121 2525 2525 2525 2525     ...!!!!!%%%%%%%%
d0086a48:	2525 2525 2525 2525 2121 2110 0010 0000     %%%%%%%%!!.!....
d0086a58:	0000 2110 2121 2525 2525 2525 2525 2525     ...!!!%%%%%%%%%%
d0086a68:	2525 2525 2525 2525 2121 1010 0010 0000     %%%%%%%%!!......
d0086a78:	0000 2110 2121 2525 2525 2525 2525 2525     ...!!!%%%%%%%%%%
d0086a88:	2525 2525 2525 2525 2125 2110 0010 0000     %%%%%%%%%!.!....
d0086a98:	0000 2110 2121 2525 2525 2525 2525 2525     ...!!!%%%%%%%%%%
d0086aa8:	2525 2525 2525 2525 2125 1010 1021 0000     %%%%%%%%%!..!...
d0086ab8:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0086ac8:	2525 2525 2525 2125 2125 1010 1021 0000     %%%%%%%!%!..!...
d0086ad8:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0086ae8:	2525 2525 2525 2125 2121 1021 1021 0010     %%%%%%%!!!!.!...
d0086af8:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0086b08:	2525 2525 2525 2121 2121 1021 1021 0010     %%%%%%!!!!!.!...
d0086b18:	0000 2110 2121 2121 2525 2525 2525 2525     ...!!!!!%%%%%%%%
d0086b28:	2525 2525 2525 2121 2121 1021 1021 0010     %%%%%%!!!!!.!...
d0086b38:	0000 2110 2121 2121 2525 2525 2525 2525     ...!!!!!%%%%%%%%
d0086b48:	2525 2525 2525 2121 2121 1021 1021 0010     %%%%%%!!!!!.!...
d0086b58:	0000 2110 2125 2121 2525 2525 2525 2525     ...!%!!!%%%%%%%%
d0086b68:	2525 2525 2525 2121 2121 1021 1010 0000     %%%%%%!!!!!.....
d0086b78:	0000 2110 2125 2121 2525 2525 2525 2525     ...!%!!!%%%%%%%%
d0086b88:	2525 2525 1025 2125 2121 1021 1021 0000     %%%%%.%!!!!.!...
d0086b98:	0000 1000 2125 2121 2525 2525 2525 2525     ....%!!!%%%%%%%%
d0086ba8:	2525 2525 1025 2125 2121 1021 0010 0000     %%%%%.%!!!!.....
d0086bb8:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086bc8:	2525 2525 1025 2125 2121 1021 0010 0000     %%%%%.%!!!!.....
d0086bd8:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086be8:	2525 2525 2525 2110 2121 2110 0010 0000     %%%%%%.!!!.!....
d0086bf8:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086c08:	2525 2525 2525 2110 2121 1010 0000 0000     %%%%%%.!!!......
d0086c18:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086c28:	2525 2525 2525 2110 2121 1010 0000 0000     %%%%%%.!!!......
d0086c38:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086c48:	2525 2525 2525 2110 2121 1010 0000 0000     %%%%%%.!!!......
d0086c58:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086c68:	2525 2525 2525 2525 1021 1010 0000 0000     %%%%%%%%!.......
d0086c78:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086c88:	2525 2525 2525 2525 1021 2110 0000 0000     %%%%%%%%!..!....
d0086c98:	0000 1000 2125 2121 2521 2521 2525 2525     ....%!!!!%!%%%%%
d0086ca8:	2525 2525 2525 2525 1021 2110 0000 0000     %%%%%%%%!..!....
d0086cb8:	0000 1000 2125 2121 2521 2521 2525 2525     ....%!!!!%!%%%%%
d0086cc8:	2525 2525 2525 2525 1021 1021 0000 0000     %%%%%%%%!.!.....
d0086cd8:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086ce8:	2525 2525 2525 2525 1025 1021 0000 0000     %%%%%%%%%.!.....
d0086cf8:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086d08:	2525 2525 2525 2525 1025 1021 0000 0000     %%%%%%%%%.!.....
d0086d18:	0000 1000 2125 2121 2525 2521 2525 2525     ....%!!!%%!%%%%%
d0086d28:	2525 2525 2525 2525 1025 1021 0000 0000     %%%%%%%%%.!.....
d0086d38:	0000 1000 2521 2121 2525 2521 2525 2525     ....!%!!%%!%%%%%
d0086d48:	2525 2525 2525 2525 1025 1021 0000 0000     %%%%%%%%%.!.....
d0086d58:	0000 1000 2521 2121 2525 2521 2525 2525     ....!%!!%%!%%%%%
d0086d68:	2525 2525 2125 2525 1025 1021 0000 0000     %%%%%!%%%.!.....
d0086d78:	0000 1000 2521 2121 2525 2521 2525 2525     ....!%!!%%!%%%%%
d0086d88:	2525 2525 2125 2525 1025 1021 0000 0000     %%%%%!%%%.!.....
d0086d98:	0000 1000 2521 2121 2525 2521 2525 2525     ....!%!!%%!%%%%%
d0086da8:	2525 2525 2125 1025 1025 1021 0000 0000     %%%%%!%.%.!.....
d0086db8:	0000 1000 2521 2121 2525 2521 2525 2525     ....!%!!%%!%%%%%
d0086dc8:	2525 2525 2525 2525 1010 1010 0000 0000     %%%%%%%%........
d0086dd8:	0000 0000 2510 2121 2525 2521 2525 2525     .....%!!%%!%%%%%
d0086de8:	2525 2525 2525 2525 1010 1010 0000 0000     %%%%%%%%........
d0086df8:	0000 0000 2510 2521 2525 2521 2525 2525     .....%!%%%!%%%%%
d0086e08:	2525 2525 2525 2525 1025 1010 0000 0000     %%%%%%%%%.......
d0086e18:	0000 0000 2510 2521 2525 2521 2525 2525     .....%!%%%!%%%%%
d0086e28:	2525 2525 2525 2525 2125 1010 0000 0000     %%%%%%%%%!......
d0086e38:	0000 0000 2510 2521 2525 2521 2525 2525     .....%!%%%!%%%%%
d0086e48:	2525 2525 2525 2525 1025 1010 0010 0000     %%%%%%%%%.......
d0086e58:	0000 0000 2510 2521 2525 2521 2525 2525     .....%!%%%!%%%%%
d0086e68:	2525 2525 2525 2525 1025 1010 0010 0000     %%%%%%%%%.......
d0086e78:	0000 0000 2510 2521 2525 2521 2525 2525     .....%!%%%!%%%%%
d0086e88:	2525 2525 2525 2525 1021 1010 0010 0000     %%%%%%%%!.......
d0086e98:	0000 0000 2510 2521 2525 2521 2525 2525     .....%!%%%!%%%%%
d0086ea8:	2525 2525 2525 2525 1021 1010 0010 0000     %%%%%%%%!.......
d0086eb8:	0000 0000 2510 2521 2525 2521 2525 2525     .....%!%%%!%%%%%
d0086ec8:	2525 2525 2525 2525 1021 1010 0010 0000     %%%%%%%%!.......
d0086ed8:	0000 0000 2510 2521 2525 2521 2525 2525     .....%!%%%!%%%%%
d0086ee8:	2525 2525 2525 2525 1025 1010 0010 0000     %%%%%%%%%.......
d0086ef8:	0000 1000 2121 2521 2525 2521 2525 2525     ....!!!%%%!%%%%%
d0086f08:	2525 2525 2525 2125 2125 1010 1010 0000     %%%%%%%!%!......
d0086f18:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0086f28:	2525 2525 2525 2125 2125 1010 1010 0000     %%%%%%%!%!......
d0086f38:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0086f48:	2525 2525 2525 2521 2125 1010 1010 0000     %%%%%%!%%!......
d0086f58:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0086f68:	2525 2525 2525 2521 2125 1010 1010 0000     %%%%%%!%%!......
d0086f78:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0086f88:	2525 2525 2525 2521 1025 1010 0010 0000     %%%%%%!%%.......
d0086f98:	0000 1000 2121 2525 2525 2525 2525 2525     ....!!%%%%%%%%%%
d0086fa8:	2525 2525 2525 2525 1025 1010 0010 0000     %%%%%%%%%.......
d0086fb8:	0000 1000 2121 2525 2525 2525 2525 2525     ....!!%%%%%%%%%%
d0086fc8:	2525 2525 2125 2525 1025 1021 0010 0000     %%%%%!%%%.!.....
d0086fd8:	0000 2110 2121 2525 2525 2525 2525 2525     ...!!!%%%%%%%%%%
d0086fe8:	2525 2525 2525 2521 1025 1021 0010 0000     %%%%%%!%%.!.....
d0086ff8:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0087008:	2525 2525 2525 2521 1025 1021 1010 0000     %%%%%%!%%.!.....
d0087018:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0087028:	2525 2525 2525 2525 1025 2110 1010 0000     %%%%%%%%%..!....
d0087038:	0000 2110 2125 2521 2525 2525 2525 2525     ...!%!!%%%%%%%%%
d0087048:	2525 2525 2525 2525 1010 2110 1010 0010     %%%%%%%%...!....
d0087058:	0000 2110 2125 2121 2525 2525 2525 2525     ...!%!!!%%%%%%%%
d0087068:	2525 2525 2525 2521 1010 2110 1010 0010     %%%%%%!%...!....
d0087078:	1000 2121 2125 2121 2525 2525 2525 2525     ..!!%!!!%%%%%%%%
d0087088:	2525 2525 2525 2521 2125 2110 1010 0010     %%%%%%!%%!.!....
d0087098:	1000 2121 2125 2121 2525 2521 2525 2525     ..!!%!!!%%!%%%%%
d00870a8:	2525 2525 2525 2521 2125 1021 1010 0000     %%%%%%!%%!!.....
d00870b8:	1000 2121 2125 2121 2525 2521 2525 2525     ..!!%!!!%%!%%%%%
d00870c8:	2525 2525 2525 2521 2125 1021 1010 0000     %%%%%%!%%!!.....
d00870d8:	1000 2121 2125 2121 2525 2521 2525 2525     ..!!%!!!%%!%%%%%
d00870e8:	2525 2525 2525 2525 2125 1021 1010 0000     %%%%%%%%%!!.....
d00870f8:	1000 2121 2125 2121 2525 2521 2525 2525     ..!!%!!!%%!%%%%%
d0087108:	2525 2525 2525 2525 2125 1021 1010 0000     %%%%%%%%%!!.....
d0087118:	1000 2121 2125 2521 2525 2521 2525 2525     ..!!%!!%%%!%%%%%
d0087128:	2525 2525 2525 2525 2121 1010 0010 0000     %%%%%%%%!!......
d0087138:	0000 2110 2125 2521 2525 2521 2525 2525     ...!%!!%%%!%%%%%
d0087148:	2525 2525 2525 2525 2121 1010 0010 0000     %%%%%%%%!!......
d0087158:	0000 2110 2125 2521 2525 2125 2525 2525     ...!%!!%%%%!%%%%
d0087168:	2525 2525 2525 2525 2121 1010 0010 0000     %%%%%%%%!!......
d0087178:	0000 2110 2125 2521 2525 2125 2525 2525     ...!%!!%%%%!%%%%
d0087188:	2525 2525 2125 2525 2121 1010 0010 0000     %%%%%!%%!!......
d0087198:	0000 2110 2125 2521 2525 2125 2525 2525     ...!%!!%%%%!%%%%
d00871a8:	2525 2525 2125 2525 2125 1010 0010 0000     %%%%%!%%%!......
d00871b8:	0000 1000 2125 2521 2525 2125 2525 2525     ....%!!%%%%!%%%%
d00871c8:	2525 2525 2125 2525 2125 2110 0010 0000     %%%%%!%%%!.!....
d00871d8:	0000 1000 2125 2521 2525 2125 2525 2525     ....%!!%%%%!%%%%
d00871e8:	2525 2525 2125 2525 1025 2110 0010 0000     %%%%%!%%%..!....
d00871f8:	0000 1000 2121 2521 2525 2125 2525 2525     ....!!!%%%%!%%%%
d0087208:	2525 2525 2125 2525 1025 2110 0010 0000     %%%%%!%%%..!....
d0087218:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0087228:	2525 2525 2125 2525 1025 1021 0000 0000     %%%%%!%%%.!.....
d0087238:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0087248:	2525 2525 2521 2525 1025 1021 0000 0000     %%%%!%%%%.!.....
d0087258:	0000 0000 2110 2521 2525 2525 2525 2525     .....!!%%%%%%%%%
d0087268:	2525 2525 2521 2525 1025 1021 0000 0000     %%%%!%%%%.!.....
d0087278:	0000 0000 2110 2521 2525 2525 2525 2525     .....!!%%%%%%%%%
d0087288:	2525 2525 2521 2525 1025 1010 0000 0000     %%%%!%%%%.......
d0087298:	0000 0000 2110 2521 2525 2521 2525 2525     .....!!%%%!%%%%%
d00872a8:	2525 2525 2521 2525 1025 0010 0000 0000     %%%%!%%%%.......
d00872b8:	0000 0000 2110 2521 2525 2521 2525 2525     .....!!%%%!%%%%%
d00872c8:	2525 2525 2521 2525 1025 0010 0000 0000     %%%%!%%%%.......
d00872d8:	0000 0000 2110 2521 2525 2521 2525 2525     .....!!%%%!%%%%%
d00872e8:	2525 2525 2521 2525 1025 0010 0000 0000     %%%%!%%%%.......
d00872f8:	0000 0000 2110 2521 2525 2521 2525 2525     .....!!%%%!%%%%%
d0087308:	2525 2525 2521 2525 1025 1010 0000 0000     %%%%!%%%%.......
d0087318:	0000 0000 2110 2521 2525 2521 2525 2525     .....!!%%%!%%%%%
d0087328:	2525 2525 2525 2525 1025 1010 0000 0000     %%%%%%%%%.......
d0087338:	0000 1000 2121 2521 2525 2521 2525 2525     ....!!!%%%!%%%%%
d0087348:	2525 2525 2525 2525 1025 1010 0000 0000     %%%%%%%%%.......
d0087358:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0087368:	2525 2525 2525 2525 1010 1010 0000 0000     %%%%%%%%........
d0087378:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0087388:	2525 2525 2525 2525 1010 1010 0000 0000     %%%%%%%%........
d0087398:	0000 1000 2121 2525 2525 2525 2525 2525     ....!!%%%%%%%%%%
d00873a8:	2525 2525 2525 2525 1010 1010 0000 0000     %%%%%%%%........
d00873b8:	0000 1000 2121 2525 2525 2525 2525 2525     ....!!%%%%%%%%%%
d00873c8:	2525 2525 2525 2525 1010 1010 0000 0000     %%%%%%%%........
d00873d8:	0000 1000 2121 2525 2525 2525 2525 2525     ....!!%%%%%%%%%%
d00873e8:	2525 2525 2525 2525 1010 1010 0010 0000     %%%%%%%%........
d00873f8:	0000 1000 2121 2525 2521 2525 2525 2525     ....!!%%!%%%%%%%
d0087408:	2525 2525 2525 2525 1010 2110 0010 0000     %%%%%%%%...!....
d0087418:	0000 1000 2121 2525 2521 2525 2525 2525     ....!!%%!%%%%%%%
d0087428:	2525 2525 2525 2525 1010 2110 1010 0000     %%%%%%%%...!....
d0087438:	0000 1000 2121 2525 2521 2525 2525 2525     ....!!%%!%%%%%%%
d0087448:	2525 2525 2525 2525 1010 2110 1010 0000     %%%%%%%%...!....
d0087458:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d0087468:	2525 2525 2525 2525 1010 2110 1010 0000     %%%%%%%%...!....
d0087478:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d0087488:	2525 2525 2525 2525 1010 2110 1010 0000     %%%%%%%%...!....
d0087498:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d00874a8:	2525 2525 2525 2521 1010 1010 1021 0000     %%%%%%!%....!...
d00874b8:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d00874c8:	2525 2525 2525 2521 1010 1010 1021 0000     %%%%%%!%....!...
d00874d8:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d00874e8:	2525 2525 2525 2521 1025 1010 1021 0000     %%%%%%!%%...!...
d00874f8:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d0087508:	2525 2525 2525 2521 1025 1010 1021 0000     %%%%%%!%%...!...
d0087518:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d0087528:	2525 2525 2525 2125 1025 1010 1021 0000     %%%%%%%!%...!...
d0087538:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d0087548:	2525 2525 2525 2125 1025 1010 0010 0000     %%%%%%%!%.......
d0087558:	0000 2110 2121 2525 2521 2525 2525 2525     ...!!!%%!%%%%%%%
d0087568:	2525 2525 2525 2125 1025 1010 0010 0000     %%%%%%%!%.......
d0087578:	0000 1000 2121 2525 2521 2525 2525 2525     ....!!%%!%%%%%%%
d0087588:	2525 2525 2525 2125 1025 1025 0010 0000     %%%%%%%!%.%.....
d0087598:	0000 1000 2121 2525 2525 2525 2525 2525     ....!!%%%%%%%%%%
d00875a8:	2525 2525 2525 2125 2525 1010 0010 0000     %%%%%%%!%%......
d00875b8:	0000 1000 2121 2525 2525 2525 2525 2525     ....!!%%%%%%%%%%
d00875c8:	2525 2525 2525 2525 2510 1010 0010 0000     %%%%%%%%.%......
d00875d8:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d00875e8:	2525 2525 2525 2525 2510 1010 0010 0000     %%%%%%%%.%......
d00875f8:	0000 0000 2110 2521 2525 2525 2525 2525     .....!!%%%%%%%%%
d0087608:	2525 2525 2525 1025 2521 1010 0010 0000     %%%%%%%.!%......
d0087618:	0000 0000 2110 2521 2525 2525 2525 2525     .....!!%%%%%%%%%
d0087628:	2525 2525 2525 1025 1021 2110 0010 0000     %%%%%%%.!..!....
d0087638:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0087648:	2525 2525 2525 2510 1025 2110 0010 0000     %%%%%%.%%..!....
d0087658:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0087668:	2525 2525 2525 2510 1025 2110 0010 0000     %%%%%%.%%..!....
d0087678:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d0087688:	2525 2525 1025 2525 1025 2110 1010 0000     %%%%%.%%%..!....
d0087698:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d00876a8:	2525 2525 1025 2525 1021 1010 1010 0000     %%%%%.%%!.......
d00876b8:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d00876c8:	2525 2525 2525 2525 1021 1010 1010 0000     %%%%%%%%!.......
d00876d8:	0000 1000 2121 2521 2525 2525 2525 2525     ....!!!%%%%%%%%%
d00876e8:	2525 2525 2525 2525 1021 1010 1010 0000     %%%%%%%%!.......
d00876f8:	0000 2110 2121 2521 2525 2521 2525 2525     ...!!!!%%%!%%%%%
d0087708:	2525 2525 2525 2125 1021 1010 1010 0000     %%%%%%%!!.......
d0087718:	0000 2110 2121 2525 2525 2521 2525 2525     ...!!!%%%%!%%%%%
d0087728:	2525 2525 2525 2525 1025 1010 0010 0000     %%%%%%%%%.......
d0087738:	0000 2110 2121 2525 2525 2521 2525 2525     ...!!!%%%%!%%%%%
d0087748:	2525 2525 2525 2525 1025 1010 0010 0000     %%%%%%%%%.......
d0087758:	0000 2110 2121 2525 2525 2521 2525 2525     ...!!!%%%%!%%%%%
d0087768:	2525 2525 2525 2525 1025 1010 0000 0000     %%%%%%%%%.......
d0087778:	0000 2110 2121 2525 2525 2521 2525 2525     ...!!!%%%%!%%%%%
d0087788:	2525 2525 2525 2525 1025 1010 0010 0000     %%%%%%%%%.......
d0087798:	0000 2110 2121 2525 2125 2525 2525 2525     ...!!!%%%!%%%%%%
d00877a8:	2525 2525 2125 2525 1025 1010 0010 0000     %%%%%!%%%.......
d00877b8:	0000 2110 2521 2521 2125 2525 2525 2525     ...!!%!%%!%%%%%%
d00877c8:	2525 2525 2125 2525 1025 1010 0010 0000     %%%%%!%%%.......
d00877d8:	0000 2110 2521 2521 2125 2525 2525 2525     ...!!%!%%!%%%%%%
d00877e8:	2525 2525 2125 2525 1025 1010 0010 0000     %%%%%!%%%.......
d00877f8:	0000 2110 2521 2521 2125 2525 2525 2525     ...!!%!%%!%%%%%%
d0087808:	2525 2525 2125 2525 1010 2110 0010 0000     %%%%%!%%...!....
d0087818:	0000 2110 2521 2525 2125 2525 2525 2525     ...!!%%%%!%%%%%%
d0087828:	2525 2525 2525 2521 1010 2110 0010 0000     %%%%%%!%...!....
d0087838:	0000 2110 2521 2525 2525 2525 2525 2525     ...!!%%%%%%%%%%%
d0087848:	2525 2525 2525 2521 1010 1010 0021 0000     %%%%%%!%....!...
d0087858:	0000 2110 2121 2525 2525 2525 2525 2525     ...!!!%%%%%%%%%%
d0087868:	2525 2525 2525 2521 1025 1010 0021 0000     %%%%%%!%%...!...
d0087878:	0000 2110 2121 2525 2525 2525 2525 2525     ...!!!%%%%%%%%%%
d0087888:	2525 2525 2525 2521 1025 1010 0010 0000     %%%%%%!%%.......
d0087898:	0000 2110 2121 2525 2525 2525 2525 2525     ...!!!%%%%%%%%%%
d00878a8:	2525 2525 2525 2525 1025 1010 1010 0000     %%%%%%%%%.......
d00878b8:	0000 2110 2121 2525 2125 2525 2525 2525     ...!!!%%%!%%%%%%
d00878c8:	2525 2525 2525 2525 1025 1010 1010 0000     %%%%%%%%%.......
d00878d8:	0000 2110 2521 2525 2125 2525 2525 2525     ...!!%%%%!%%%%%%
d00878e8:	2525 2525 2525 2525 1025 1010 2110 0000     %%%%%%%%%....!..
d00878f8:	0000 2110 2521 2525 2125 2525 2525 2525     ...!!%%%%!%%%%%%
d0087908:	2525 2525 2525 2525 2125 1010 2110 0000     %%%%%%%%%!...!..
d0087918:	0000 2110 2525 2525 2125 2525 2525 2525     ...!%%%%%!%%%%%%
d0087928:	2525 2525 2525 2525 2125 1010 1021 0000     %%%%%%%%%!..!...
d0087938:	0000 2110 2525 2525 2125 2525 2525 2525     ...!%%%%%!%%%%%%
d0087948:	2525 2525 2525 2525 2125 1010 1021 0000     %%%%%%%%%!..!...
d0087958:	0000 2110 2525 2525 2525 2525 2525 2525     ...!%%%%%%%%%%%%
d0087968:	2525 2525 2525 2525 2525 1010 1021 0000     %%%%%%%%%%..!...
d0087978:	1000 2121 2525 2525 2525 2525 2525 2525     ..!!%%%%%%%%%%%%
d0087988:	2525 2525 2525 2125 2525 1021 1010 0000     %%%%%%%!%%!.....
d0087998:	1000 2121 2521 2525 2525 2525 2525 2525     ..!!!%%%%%%%%%%%
d00879a8:	2525 2525 2525 2125 2525 1021 1010 0000     %%%%%%%!%%!.....
d00879b8:	1000 2121 2521 2525 2525 2525 2525 2525     ..!!!%%%%%%%%%%%
d00879c8:	2525 2525 2525 2125 2525 1021 1010 0000     %%%%%%%!%%!.....
d00879d8:	1000 2121 2521 2525 2525 2525 2525 2525     ..!!!%%%%%%%%%%%
d00879e8:	2525 2525 2525 2125 2525 1021 1010 0000     %%%%%%%!%%!.....
d00879f8:	1000 2121 2121 2521 2525 2525 2525 2525     ..!!!!!%%%%%%%%%
d0087a08:	2525 2525 2525 2125 2525 1021 1010 0000     %%%%%%%!%%!.....
d0087a18:	1000 2121 2121 2121 2525 2525 2525 2525     ..!!!!!!%%%%%%%%
d0087a28:	2525 2525 2525 2125 2525 1010 1010 0000     %%%%%%%!%%......
d0087a38:	1000 2121 2121 2121 2521 2525 2525 2525     ..!!!!!!!%%%%%%%
d0087a48:	2525 2525 2525 2125 2525 1010 1010 0000     %%%%%%%!%%......
d0087a58:	1000 2121 2121 2121 2121 2525 2525 2525     ..!!!!!!!!%%%%%%
d0087a68:	2525 2525 2525 2525 1025 1010 1010 0000     %%%%%%%%%.......
d0087a78:	1000 2121 2121 2521 2525 2525 2525 2525     ..!!!!!%%%%%%%%%
d0087a88:	2525 2525 2525 2525 1025 1010 1010 0000     %%%%%%%%%.......
d0087a98:	1000 2121 2121 2521 2525 2525 2525 2525     ..!!!!!%%%%%%%%%
d0087aa8:	2525 2525 2525 2525 2521 1010 1010 0000     %%%%%%%%!%......
d0087ab8:	1000 2121 2121 2121 2525 2525 2525 2525     ..!!!!!!%%%%%%%%
d0087ac8:	2525 2525 2525 2525 2521 1010 1010 0000     %%%%%%%%!%......
d0087ad8:	1000 2121 2121 2121 2525 2525 2525 2525     ..!!!!!!%%%%%%%%
d0087ae8:	2525 2525 2525 2525 2521 1010 1010 0000     %%%%%%%%!%......
d0087af8:	1000 2121 2121 2121 2525 2525 2525 2525     ..!!!!!!%%%%%%%%
d0087b08:	2525 2525 2525 2125 2525 1021 1010 0000     %%%%%%%!%%!.....
d0087b18:	1000 2121 2121 2121 2525 2125 2525 2525     ..!!!!!!%%%!%%%%
d0087b28:	2525 2525 2525 2125 2525 1025 1010 0010     %%%%%%%!%%%.....
d0087b38:	1000 2121 2121 2121 2525 2125 2525 2525     ..!!!!!!%%%!%%%%
d0087b48:	2525 2525 2525 2125 2125 1021 1025 0010     %%%%%%%!%!!.%...
d0087b58:	1000 2121 2121 2121 2525 2125 2525 2525     ..!!!!!!%%%!%%%%
d0087b68:	2525 2525 2525 2125 2510 1021 1010 0010     %%%%%%%!.%!.....
d0087b78:	1000 2121 2121 2121 2525 2125 2525 2525     ..!!!!!!%%%!%%%%
d0087b88:	2525 2525 2525 2525 2510 1021 1010 0010     %%%%%%%%.%!.....
d0087b98:	1000 2121 2121 2121 2525 2125 2525 2525     ..!!!!!!%%%!%%%%
d0087ba8:	2525 2525 2525 2525 2110 1025 1010 0010     %%%%%%%%.!%.....
d0087bb8:	1000 2121 2121 2121 2525 2125 2525 2525     ..!!!!!!%%%!%%%%
d0087bc8:	2525 2525 2525 2525 1025 1025 1010 0010     %%%%%%%%%.%.....
d0087bd8:	1000 2121 2121 2121 2525 2125 2525 2525     ..!!!!!!%%%!%%%%
d0087be8:	2525 2525 2525 2525 1025 1021 1010 0010     %%%%%%%%%.!.....
d0087bf8:	0000 2110 2121 2121 2525 2125 2525 2525     ...!!!!!%%%!%%%%
d0087c08:	2525 2525 2525 2525 1025 1021 1010 0010     %%%%%%%%%.!.....
d0087c18:	0000 2110 2121 2521 2525 2125 2525 2525     ...!!!!%%%%!%%%%
d0087c28:	2525 2525 2525 2525 2525 1025 1010 0010     %%%%%%%%%%%.....
d0087c38:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0087c48:	2525 2525 2525 2525 2525 1010 1010 0010     %%%%%%%%%%......
d0087c58:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0087c68:	2525 2525 2525 2525 2510 2510 1010 0010     %%%%%%%%.%.%....
d0087c78:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0087c88:	2525 2525 2525 1025 2525 2510 1010 0010     %%%%%%%.%%.%....
d0087c98:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0087ca8:	2525 2525 2525 1025 2525 2510 1010 0010     %%%%%%%.%%.%....
d0087cb8:	0000 2110 2121 2521 2525 2525 2525 2525     ...!!!!%%%%%%%%%
d0087cc8:	2525 2525 2525 1021 2525 1010 1010 0010     %%%%%%!.%%......

d0087cd8 <frontbush>:
	...
d0087d40:	f100 00f1 f100 00f1 0000 0000 0000 0000     ................
	...
d0087e80:	f100 f14c f100 f14c 0000 0000 0000 f100     ..L...L.........
d0087e90:	f1f1 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d0087fc0:	f100 4c4c f1f1 4c4c 00f1 0000 f100 f1f1     ..LL..LL........
d0087fd0:	4c4c 00f1 0000 0000 0000 0000 0000 0000     LL..............
	...
d0088100:	f100 584c f14c 58f1 f14c f1f1 4cf1 5858     ..LXL..XL....LXX
d0088110:	f14c 0000 0000 0000 0000 0000 0000 0000     L...............
	...
d0088238:	f100 f1f1 f1f1 f1f1 f1f1 584c 4c58 f14c     ..........LXXLL.
d0088248:	4c58 4c4c 5858 f14c 00f1 0000 0000 0000     XLLLXXL.........
	...
d0088378:	4cf1 584c 5858 4c58 f14c 4cf1 5858 4c58     .LLXXXXLL..LXXXL
d0088388:	5858 5858 4c58 f14c 0000 0000 0000 0000     XXXXXLL.........
	...
d00884b8:	f100 f1f1 4cf1 5858 5858 4c58 5858 5858     .....LXXXXXLXXXX
d00884c8:	5858 5858 4c4c 00f1 0000 0000 0000 0000     XXXXLL..........
	...
d00885fc:	f1f1 4cf1 584c 5858 5858 5858 5858 5858     ...LLXXXXXXXXXXX
d008860c:	4c4c f1f1 f1f1 0000 0000 0000 0000 0000     LL..............
	...
d0088734:	0000 f100 f1f1 f1f1 4cf1 f14c 4c4c 584c     .........LL.LLLX
d0088744:	5858 5858 5858 5858 5858 4c4c 4c4c f1f1     XXXXXXXXXXLLLL..
	...
d0088874:	0000 4cf1 4c4c f14c 584c 5858 584c 5858     ...LLLL.LXXXLXXX
d0088884:	5858 5858 5858 5858 4c4c 4c4c f1f1 4c4c     XXXXXXXXLLLL..LL
d0088894:	00f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00889b4:	0000 f1f1 f1f1 4cf1 5858 5858 5858 5858     .......LXXXXXXXX
d00889c4:	5858 5858 5858 584c 4c4c f1f1 0000 f1f1     XXXXXXLXLL......
	...
d0088af8:	f100 584c 4c58 4c4c 4c4c 584c 5858 5858     ..LXXLLLLLLXXXXX
d0088b08:	4c58 4c4c f14c 00f1 f1f1 0000 0000 0000     XLLLL...........
	...
d0088c38:	f100 5858 4c4c f14c f1f1 5858 4c4c 5858     ..XXLLL...XXLLXX
d0088c48:	4c58 4c4c 4c4c f14c 4c4c 00f1 0000 0000     XLLLLLL.LL......
	...
d0088d78:	4cf1 4c58 f14c 00f1 4cf1 4c58 4c4c 5858     .LXLL....LXLLLXX
d0088d88:	4c4c 4c4c 4c4c 4c4c f1f1 00f1 0000 0000     LLLLLLLL........
	...
d0088eb8:	4cf1 f14c 00f1 f100 4c4c f14c f1f1 584c     .LL.....LLL...LX
d0088ec8:	4c4c 4c4c 4c4c f1f1 0000 0000 0000 0000     LLLLLL..........
	...
d0088ff8:	4cf1 00f1 0000 4cf1 4c4c f1f1 f1f1 584c     .L.....LLL....LX
d0089008:	4cf1 4c4c f14c f1f1 0000 0000 0000 0000     .LLLL...........
	...
d0089120:	f100 00f1 f100 00f1 0000 0000 0000 0000     ................
	...
d008913c:	f100 4c4c f14c f100 f1f1 4c4c f14c f14c     ..LLL.....LLL.L.
d008914c:	4c4c f14c 00f1 0000 0000 0000 0000 0000     LLL.............
	...
d0089200:	0000 f100 00f1 f100 00f1 0000 0000 0000     ................
	...
d0089260:	f100 f14c f100 f14c 0000 0000 0000 f100     ..L...L.........
d0089270:	f1f1 f1f1 0000 0000 0000 0000 f100 4c4c     ..............LL
d0089280:	00f1 f2f1 f1f2 4cf1 f14c f14c f1f1 f14c     .......LL.L...L.
d0089290:	f100 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0089334:	0000 f1f1 f1f1 00f1 0000 0000 0000 4cf1     ...............L
d0089344:	00f1 4cf1 00f1 0000 0000 0000 0000 0000     ...L............
	...
d00893a0:	f100 4c4c f1f1 4c4c 00f1 0000 f100 f1f1     ..LL..LL........
d00893b0:	4c4c 00f1 0000 0000 0000 0000 f100 f14c     LL............L.
d00893c0:	f100 f220 f1f1 4cf1 f1f1 f14c 0000 f1f1     .. ....L..L.....
	...
d0089474:	0000 f100 4c4c f1f1 00f1 0000 f100 4c4c     ....LL........LL
d0089484:	f1f1 4c4c 00f1 0000 0000 0000 0000 0000     ..LL............
	...
d00894e0:	f100 584c f14c 58f1 f14c f1f1 4cf1 5858     ..LXL..XL....LXX
d00894f0:	f14c 0000 0000 0000 0000 0000 0000 00f1     L...............
d0089500:	20f1 f220 00f1 f100 f14c f14c 0000 f100     .  .....L.L.....
	...
d00895b8:	4cf1 5858 f14c f1f1 4cf1 f158 4cf1 4c58     .LXXL....LX..LXL
d00895c8:	00f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0089618:	f100 f1f1 f1f1 f1f1 f1f1 584c 4c58 f14c     ..........LXXLL.
d0089628:	4c58 4c4c 5858 f14c 00f1 0000 0000 0000     XLLLXXL.........
d0089638:	0000 0000 0000 f100 2020 f120 0000 f100     ........   .....
d0089648:	f1f1 f14c 0000 0000 0000 0000 0000 0000     ..L.............
	...
d00896f8:	f100 4cf1 5858 4c4c 584c 4cf1 584c 4c58     ...LXXLLLX.LLXXL
d0089708:	f1f1 f1f1 f1f1 f1f1 00f1 0000 0000 0000     ................
	...
d0089758:	4cf1 584c 5858 4c58 f14c 4cf1 5858 4c58     .LLXXXXLL..LXXXL
d0089768:	5858 5858 4c58 f14c 0000 0000 0000 0000     XXXXXLL.........
d0089778:	0000 0000 0000 20f1 2029 00f1 0000 0000     ....... ) ......
d0089788:	f1f1 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d0089838:	0000 4cf1 584c 5858 5858 584c 5858 f14c     ...LLXXXXXLXXXL.
d0089848:	4cf1 584c 5858 4c58 f14c 0000 0000 0000     .LLXXXXLL.......
	...
d0089898:	f100 f1f1 4cf1 5858 5858 4c58 5858 5858     .....LXXXXXLXXXX
d00898a8:	5858 5858 4c4c 00f1 0000 0000 0000 0000     XXXXLL..........
d00898b8:	0000 0000 0000 29f1 f120 0000 0000 0000     .......) .......
d00898c8:	00f1 f100 0000 0000 0000 0000 0000 0000     ................
	...
d0089978:	0000 f100 4c4c 5858 5858 5858 5858 584c     ....LLXXXXXXXXLX
d0089988:	5858 5858 f14c f1f1 00f1 0000 0000 0000     XXXXL...........
	...
d00899dc:	f1f1 4cf1 584c 5858 5858 5858 5858 5858     ...LLXXXXXXXXXXX
d00899ec:	4c4c f1f1 f1f1 0000 0000 0000 0000 0000     LL..............
d00899fc:	f100 2029 00f1 0000 0000 0000 0000 0000     ..) ............
	...
d0089ab8:	f1f1 f1f1 4c4c 5858 5858 5858 5858 5858     ....LLXXXXXXXXXX
d0089ac8:	4c58 f14c f1f1 0000 0000 0000 0000 0000     XLL.............
	...
d0089b14:	0000 f100 f1f1 f1f1 4cf1 f14c 4c4c 584c     .........LL.LLLX
d0089b24:	5858 5858 5858 5858 5858 4c4c 4c4c f1f1     XXXXXXXXXXLLLL..
	...
d0089b3c:	f1f1 f220 00f1 0000 0000 0000 0000 0000     .. .............
	...
d0089bf4:	0000 f1f1 4c4c 4c4c 5858 5858 5858 5858     ....LLLLXXXXXXXX
d0089c04:	5858 4c58 4c4c 4cf1 f14c f1f1 f1f1 00f1     XXXLLL.LL.......
	...
d0089c54:	0000 4cf1 4c4c f14c 584c 5858 584c 5858     ...LLLL.LXXXLXXX
d0089c64:	5858 5858 5858 5858 4c4c 4c4c f1f1 4c4c     XXXXXXXXLLLL..LL
d0089c74:	00f1 0000 0000 f100 f120 f1f1 0000 0000     ........ .......
	...
d0089d34:	f100 4c4c f1f1 4c4c 4c4c 5858 5858 5858     ..LL..LLLLXXXXXX
d0089d44:	5858 5858 4c58 5858 4c58 4cf1 4c4c f14c     XXXXXLXXXL.LLLL.
	...
d0089d94:	0000 f1f1 f1f1 f1f1 f1f1 5858 5858 5858     ..........XXXXXX
d0089da4:	5858 5858 5858 584c 4c4c f1f1 0000 f1f1     XXXXXXLXLL......
d0089db4:	0000 0000 0000 f100 2020 00f1 0000 0000     ........  ......
	...
d0089e74:	0000 f1f1 0000 f1f1 4c4c 4c58 5858 5858     ........LLXLXXXX
d0089e84:	5858 5858 5858 5858 5858 f14c f1f1 f1f1     XXXXXXXXXXL.....
	...
d0089edc:	0000 f1f1 4c4c 584c 5858 5858 4c58 4c4c     ....LLLXXXXXXLLL
d0089eec:	f14c 00f1 f1f1 0000 0000 0000 0000 20f1     L.............. 
d0089efc:	2029 00f1 0000 0000 0000 0000 0000 0000     ) ..............
	...
d0089fb8:	f1f1 f100 4cf1 4c4c 584c 5858 5858 4c58     .....LLLLXXXXXXL
d0089fc8:	4c4c 4c4c 584c 4c58 00f1 0000 0000 0000     LLLLLXXL........
	...
d008a020:	f1f1 5858 4c4c 5858 4c58 4c4c 4c4c f14c     ..XXLLXXXLLLLLL.
d008a030:	4c4c 00f1 0000 0000 f100 2920 f120 0000     LL........ ) ...
	...
d008a0f4:	0000 f100 4c4c 4cf1 4c4c 4c4c 584c 5858     ....LL.LLLLLLXXX
d008a104:	4c4c 5858 f1f1 4cf1 4c4c 5858 00f1 0000     LLXX...LLLXX....
	...
d008a160:	0000 4cf1 4c4c 5858 4c4c 4c4c 4c4c 4c4c     ...LLLXXLLLLLLLL
d008a170:	f1f1 00f1 0000 0000 20f1 f129 f1f1 0000     ......... ).....
	...
d008a234:	0000 f100 f1f1 4c4c 4c4c 4c4c 4c4c 5858     ......LLLLLLLLXX
d008a244:	4c4c 584c f14c f100 4cf1 584c f14c 0000     LLLXL....LLXL...
	...
d008a2a0:	0000 f100 f1f1 584c 4c4c 4c4c 4c4c f1f1     ......LXLLLLLL..
	...
d008a2b8:	f1f1 20f1 00f1 0000 0000 0000 0000 0000     ... ............
	...
d008a378:	0000 f1f1 4c4c 4c4c 4c4c 4c58 f1f1 4cf1     ....LLLLLLXL...L
d008a388:	4c4c 00f1 f100 4cf1 f14c 0000 0000 0000     LL.....LL.......
	...
d008a3e4:	f1f1 584c 4cf1 4c4c f14c f1f1 0000 0000     ..LX.LLLL.......
d008a3f4:	0000 f100 2020 2020 00f1 0000 0000 0000     ....    ........
	...
d008a4b8:	0000 f1f1 4cf1 4c4c f14c 4c58 f1f1 f1f1     .....LLLL.XL....
d008a4c8:	4c4c f14c 0000 f100 f14c 0000 0000 0000     LLL.....L.......
	...
d008a524:	f1f1 4c4c f14c f14c f24c f2f2 00f1 0000     ..LLL.L.L.......
d008a534:	0000 20f1 2029 f120 0000 0000 0000 0000     ... )  .........
	...
d008a5f8:	f100 4cf1 4c4c 4cf1 4cf1 4c4c f1f1 00f1     ...LLL.L.LLL....
d008a608:	4cf1 4c4c 00f1 0000 0000 0000 0000 0000     .LLL............
	...
d008a664:	f100 4cf1 f14c f14c f1f1 20f2 f1f2 0000     ...LL.L.... ....
d008a674:	f100 2920 2020 00f1 0000 0000 0000 0000     .. )  ..........
	...
d008a738:	00f1 4cf1 f1f1 4cf1 4cf1 f14c f2f1 f1f2     ...L...L.LL.....
d008a748:	f100 4c4c 00f1 0000 0000 0000 0000 0000     ..LL............
	...
d008a7a4:	f100 4cf1 f1f1 f14c 0000 29f1 f220 f1f1     ...L..L....) ...
d008a7b4:	20f1 2029 2020 00f1 0000 0000 0000 0000     . )   ..........
	...
d008a878:	0000 f1f1 0000 4cf1 f1f1 f14c f1f1 20f2     .......L..L.... 
d008a888:	00f1 4cf1 00f1 0000 0000 0000 0000 0000     ...L............
	...
d008a8e4:	0000 f100 f14c f14c f100 29f1 2029 f1f2     ....L.L....)) ..
d008a8f4:	2920 2029 f120 0000 0000 0000 0000 0000      ))  ...........
	...
d008a9b8:	0000 00f1 0000 4cf1 4cf1 00f1 f100 20f2     .......L.L..... 
d008a9c8:	f120 f100 0000 0000 0000 0000 0000 0000      ...............
	...
d008aa24:	0000 f100 f1f1 f14c 0000 20f1 2020 20f1     ......L....   . 
d008aa34:	2020 2020 f1f2 0000 0000 0000 0000 0000         ............
	...
d008aafc:	0000 4cf1 f1f1 00f1 0000 20f1 2020 00f1     ...L.......   ..
	...
d008ab68:	f1f1 00f1 0000 20f1 2020 2020 2029 f120     .......     )  .
d008ab78:	00f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008ac3c:	0000 f1f1 f1f1 0000 0000 f100 2920 f120     ............ ) .
	...
d008acac:	0000 f100 20f1 2020 2020 00f1 0000 0000     .....     ......
	...
d008ad7c:	0000 00f1 f100 0000 0000 0000 20f1 f129     ............. ).
	...
d008adf0:	f100 2020 2020 00f1 0000 0000 0000 0000     ..    ..........
	...
d008aec8:	f100 2920 00f1 0000 0000 0000 0000 0000     .. )............
	...
d008af30:	20f1 2020 2020 00f1 0000 0000 0000 0000     .     ..........
	...
d008b008:	f100 20f2 f1f1 0000 0000 0000 0000 0000     ... ............
	...
d008b070:	20f1 2020 f120 0000 0000 0000 0000 0000     .    ...........
	...
d008b148:	0000 f1f1 20f1 00f1 0000 0000 0000 0000     ..... ..........
	...
d008b1b0:	20f1 2020 f120 0000 0000 0000 0000 0000     .    ...........
	...
d008b288:	0000 f100 2020 00f1 0000 0000 0000 0000     ....  ..........
	...
d008b2ec:	0000 f100 20f1 2020 00f1 0000 0000 0000     .....   ........
	...
d008b3c8:	0000 f100 2920 f120 0000 0000 0000 0000     .... ) .........
	...
d008b42c:	0000 f100 2020 2020 00f1 0000 0000 0000     ....    ........
	...
d008b50c:	20f1 2029 00f1 0000 0000 0000 0000 0000     . ) ............
	...
d008b56c:	0000 f1f1 2020 f220 00f1 0000 0000 0000     ....   .........
	...
d008b64c:	f1f1 29f1 f120 0000 0000 0000 0000 0000     ...) ...........
	...
d008b6ac:	0000 20f1 f120 f1f1 0000 0000 0000 0000     ...  ...........
	...
d008b78c:	f100 f120 f1f1 0000 0000 0000 0000 0000     .. .............
	...
d008b7ec:	0000 20f1 f120 0000 0000 0000 0000 0000     ...  ...........
	...
d008b8cc:	f100 2020 2020 00f1 0000 0000 0000 0000     ..    ..........
	...
d008b8f4:	f1f1 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d008b92c:	f100 20f1 2020 00f1 0000 0000 0000 0000     ...   ..........
	...
d008b9ac:	0000 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d008b9f4:	f1f1 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d008ba0c:	0000 20f1 2029 00f1 0000 0000 0000 0000     ... ) ..........
	...
d008ba24:	f100 f1f1 00f1 0000 0000 0000 0000 f100     ................
d008ba34:	4c4c 4c4c f1f1 f1f1 f1f1 0000 0000 0000     LLLL............
d008ba44:	0000 f1f1 0000 0000 0000 0000 0000 0000     ................
	...
d008ba64:	f100 f1f1 00f1 0000 f100 2020 2020 00f1     ..........    ..
d008ba74:	0000 0000 f100 f1f1 f1f1 0000 0000 0000     ................
	...
d008baec:	f100 4cf1 00f1 f100 f1f1 f1f1 00f1 0000     ...L............
	...
d008bb24:	f100 f1f1 00f1 0000 0000 0000 0000 f100     ................
d008bb34:	4c4c 4c4c f1f1 f1f1 f1f1 0000 0000 0000     LLLL............
	...
d008bb4c:	0000 20f1 2929 f1f2 0000 0000 0000 0000     ... ))..........
	...
d008bb64:	4c00 4c4c 4c4c f1f1 0000 0000 0000 4cf1     .LLLLL.........L
d008bb74:	584c 5858 5858 4c4c 4c4c f1f1 0000 0000     LXXXXXLLLL......
d008bb84:	0000 4cf1 00f1 0000 0000 0000 0000 0000     ...L............
	...
d008bba4:	4c00 4c4c 4c4c f1f1 f1f1 2920 2020 f1f1     .LLLLL.... )  ..
d008bbb4:	f1f1 f1f1 f1f1 4c4c 4c4c f1f1 0000 0000     ......LLLL......
	...
d008bc2c:	4cf1 4c58 f14c 4cf1 5858 4c4c 584c 0000     .LXLL..LXXLLLX..
	...
d008bc4c:	0000 f1f1 00f1 0000 0000 0000 0000 0000     ................
	...
d008bc64:	4c00 4c4c 4c4c f1f1 0000 0000 0000 4cf1     .LLLLL.........L
d008bc74:	584c 5858 5858 4c4c 4c4c f1f1 0000 0000     LXXXXXLLLL......
	...
d008bc8c:	0000 f2f1 2929 f120 0000 0000 0000 0000     ....)) .........
	...
d008bca4:	f100 584c 5858 4c4c 00f1 0000 0000 4cf1     ..LXXXLL.......L
d008bcb4:	5858 5858 5858 5858 4c58 4c4c 00f1 0000     XXXXXXXXXLLL....
d008bcc4:	0000 4cf1 00f1 0000 0000 0000 0000 0000     ...L............
	...
d008bce4:	f100 584c 5858 4c4c f1f1 2920 f120 4cf1     ..LXXXLL.. ) ..L
d008bcf4:	5858 5858 5858 5858 4c58 4c4c 00f1 0000     XXXXXXXXXLLL....
d008bd04:	0000 0000 f100 0000 0000 0000 0000 0000     ................
	...
d008bd28:	0000 f1f1 00f1 0000 0000 f200 f1f1 f1f1     ................
d008bd38:	00f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008bd68:	0000 f1f1 584c 5858 f14c 584c 5858 4c58     ....LXXXL.LXXXXL
d008bd78:	5858 00f1 0000 0000 0000 0000 0000 0000     XX..............
d008bd88:	f100 0000 0000 f100 f14c f1f1 00f1 0000     ........L.......
	...
d008bda4:	f100 584c 5858 4c4c 00f1 0000 0000 4cf1     ..LXXXLL.......L
d008bdb4:	5858 5858 5858 5858 4c58 4c4c 00f1 0000     XXXXXXXXXLLL....
d008bdc4:	0000 0000 f100 0000 0000 f100 2920 f120     ............ ) .
d008bdd4:	00f1 0000 0000 0000 0000 0000 0000 0000     ................
d008bde4:	0000 4cf1 584c 5858 f14c 0000 f100 4c4c     ...LLXXXL.....LL
d008bdf4:	5858 5858 5858 5858 4c58 f14c 0000 0000     XXXXXXXXXLL.....
d008be04:	0000 58f1 f14c 0000 0000 0000 0000 0000     ...XL...........
	...
d008be24:	0000 4cf1 584c 5858 f14c 2020 f1f2 4c4c     ...LLXXXL.  ..LL
d008be34:	5858 5858 5858 5858 4c58 f14c 0000 0000     XXXXXXXXXLL.....
d008be44:	0000 0000 f100 00f1 0000 0000 0000 0000     ................
	...
d008be68:	f100 f1f1 f1f1 f1f1 f100 f1f1 f1f1 5858     ..............XX
d008be78:	00f1 0000 0000 0000 0000 0000 0000 0000     ................
	...
d008bea8:	f100 4c4c 5858 4c58 f1f1 5858 5858 5858     ..LLXXXL..XXXXXX
d008beb8:	4c58 00f1 0000 0000 0000 0000 0000 0000     XL..............
d008bec8:	f100 00f1 0000 0000 4cf1 584c f158 00f1     .........LLXX...
	...
d008bee4:	0000 4cf1 584c 5858 f14c 0000 f100 4c4c     ...LLXXXL.....LL
d008bef4:	5858 5858 5858 5858 4c58 f14c 0000 0000     XXXXXXXXXLL.....
d008bf04:	0000 0000 f100 00f1 0000 f100 2920 f120     ............ ) .
d008bf14:	f14c 00f1 f1f1 0000 0000 0000 0000 0000     L...............
d008bf24:	0000 f100 584c 5858 4c58 00f1 f100 584c     ....LXXXXL....LX
d008bf34:	5858 5858 5858 5858 4c4c f14c 0000 0000     XXXXXXXXLLL.....
d008bf44:	f100 584c f14c 0000 0000 0000 0000 0000     ..LXL...........
	...
d008bf64:	0000 f100 584c 5858 4c58 f2f1 f1f2 584c     ....LXXXXL....LX
d008bf74:	5858 5858 5858 5858 4c4c f14c 0000 0000     XXXXXXXXLLL.....
d008bf84:	0000 0000 f100 f14c 0000 0000 0000 0000     ......L.........
	...
d008bfa8:	4cf1 4c4c 4c4c f14c f1f1 58f1 5858 f158     .LLLLLL....XXXX.
d008bfb8:	f1f1 f1f1 00f1 0000 0000 0000 0000 0000     ................
d008bfc8:	0000 f1f1 f1f1 0000 0000 0000 0000 0000     ................
	...
d008bfe8:	4cf1 5858 5858 5858 4cf1 5858 5858 5858     .LXXXXXX.LXXXXXX
d008bff8:	5858 f14c 0000 0000 0000 0000 0000 0000     XXL.............
d008c008:	f100 f14c 0000 0000 f100 4cf1 4c4c f14c     ..L........LLLL.
d008c018:	f1f1 0000 0000 0000 0000 0000 0000 f100     ................
d008c028:	584c 5858 4c58 00f1 f100 584c 5858 5858     LXXXXL....LXXXXX
d008c038:	5858 5858 4c4c f14c 0000 0000 0000 0000     XXXXLLL.........
d008c048:	f100 f14c 0000 f100 2920 f120 4c4c f14c     ..L..... ) .LLL.
d008c058:	4c4c f1f1 0000 0000 0000 0000 0000 f100     LL..............
d008c068:	584c 5858 4c58 f14c 4cf1 584c 5858 5858     LXXXXLL..LLXXXXX
d008c078:	5858 4c58 4c4c 00f1 0000 0000 f100 584c     XXXLLL........LX
d008c088:	f158 0000 0000 0000 0000 0000 0000 0000     X...............
	...
d008c0a4:	0000 f100 584c 5858 4c58 f14c 4cf1 584c     ....LXXXXLL..LLX
d008c0b4:	5858 5858 5858 4c58 4c4c 00f1 0000 0000     XXXXXXXLLL......
d008c0c4:	0000 0000 f100 f14c 0000 0000 0000 0000     ......L.........
	...
d008c0e8:	58f1 5858 4c58 4c4c f1f1 5858 5858 5858     .XXXXLLL..XXXXXX
d008c0f8:	5858 4c58 f14c 0000 0000 0000 0000 0000     XXXLL...........
d008c108:	f100 f1f1 f1f1 0000 0000 0000 f100 f1f1     ................
d008c118:	f1f1 f1f1 0000 0000 0000 0000 0000 f100     ................
d008c128:	584c 5858 584c 5858 4cf1 5858 5858 5858     LXXXLXXX.LXXXXXX
d008c138:	5858 f14c 0000 0000 0000 0000 0000 0000     XXL.............
d008c148:	f100 4c4c f1f1 0000 0000 f100 584c 4c58     ..LL........LXXL
d008c158:	4c4c f1f1 0000 0000 0000 0000 0000 f100     LL..............
d008c168:	584c 5858 4c58 f14c 4cf1 584c 5858 5858     LXXXXLL..LLXXXXX
d008c178:	5858 4c58 4c4c 00f1 0000 0000 0000 0000     XXXLLL..........
d008c188:	f100 4c4c f1f1 0000 20f2 2020 58f1 4c58     ..LL.....   .XXL
d008c198:	5858 4c58 00f1 0000 0000 0000 0000 f100     XXXL............
d008c1a8:	584c 5858 5858 4c58 4cf1 5858 5858 4c58     LXXXXXXL.LXXXXXL
d008c1b8:	5858 4c58 4c4c 00f1 0000 0000 f100 4c4c     XXXLLL........LL
d008c1c8:	4c58 00f1 0000 0000 0000 0000 0000 0000     XL..............
	...
d008c1e4:	0000 f100 584c 5858 5858 4c58 4cf1 5858     ....LXXXXXXL.LXX
d008c1f4:	5858 4c58 5858 4c58 4c4c 00f1 0000 0000     XXXLXXXLLL......
d008c204:	0000 0000 4cf1 f158 0000 0000 0000 0000     .....LX.........
	...
d008c224:	0000 f100 584c 5858 5858 4c58 4cf1 5858     ....LXXXXXXL.LXX
d008c234:	5858 4c58 5858 4c58 4c4c 00f1 0000 0000     XXXLXXXLLL......
d008c244:	0000 0000 4cf1 4c58 4c4c f1f1 0000 0000     .....LXLLL......
d008c254:	4cf1 584c 5858 4c58 00f1 0000 0000 0000     .LLXXXXL........
d008c264:	0000 f100 5858 5858 5858 4c58 4cf1 5858     ....XXXXXXXL.LXX
d008c274:	5858 4c58 5858 f158 0000 0000 0000 0000     XXXLXXX.........
d008c284:	0000 0000 4cf1 4c58 4c4c f1f1 0000 0000     .....LXLLL......
d008c294:	4cf1 584c 5858 4c58 00f1 0000 0000 0000     .LLXXXXL........
d008c2a4:	0000 f100 584c 5858 5858 4c58 4cf1 5858     ....LXXXXXXL.LXX
d008c2b4:	5858 4c58 5858 4c58 4c4c 00f1 0000 0000     XXXLXXXLLL......
d008c2c4:	0000 0000 4cf1 4c58 4c4c f1f1 20f1 f220     .....LXLLL...  .
d008c2d4:	4cf1 584c 5858 5858 4c58 f14c f1f1 0000     .LLXXXXXXLL.....
d008c2e4:	0000 f100 584c 5858 5858 4c4c 4c4c 5858     ....LXXXXXLLLLXX
d008c2f4:	5858 4c58 5858 4c4c f14c 0000 0000 0000     XXXLXXLLL.......
d008c304:	f100 4c4c 4c58 00f1 0000 0000 0000 0000     ..LLXL..........
	...
d008c324:	0000 f100 584c 5858 5858 4c4c 4c4c 5858     ....LXXXXXLLLLXX
d008c334:	5858 4c58 5858 4c4c f14c 0000 0000 0000     XXXLXXLLL.......
d008c344:	0000 f100 4cf1 5858 00f1 0000 0000 0000     .....LXX........
	...
d008c364:	0000 f100 584c 5858 5858 4c4c 4c4c 5858     ....LXXXXXLLLLXX
d008c374:	5858 4c58 5858 4c4c f14c 00f1 0000 0000     XXXLXXLLL.......
d008c384:	0000 f100 4cf1 5858 584c 4c4c f1f1 f1f1     .....LXXLXLL....
d008c394:	4c4c 4c4c 5858 5858 4c58 f14c f1f1 0000     LLLLXXXXXLL.....
d008c3a4:	0000 f100 584c 5858 5858 4c4c 4c4c 5858     ....LXXXXXLLLLXX
d008c3b4:	5858 4c58 5858 4c4c f1f1 0000 0000 0000     XXXLXXLL........
d008c3c4:	0000 0000 4cf1 5858 584c 4c4c f1f1 f100     .....LXXLXLL....
d008c3d4:	4c4c 4c4c 5858 5858 4c58 f14c f1f1 0000     LLLLXXXXXLL.....
d008c3e4:	0000 f100 584c 5858 5858 4c4c 4c4c 5858     ....LXXXXXLLLLXX
d008c3f4:	5858 4c58 5858 4c4c f14c 00f1 0000 0000     XXXLXXLLL.......
d008c404:	0000 0000 4cf1 5858 584c 4c4c f1f1 f1f1     .....LXXLXLL....
d008c414:	4c4c 4c4c 4c4c 5858 5858 4c58 4c4c f1f1     LLLLLLXXXXXLLL..
d008c424:	0000 f100 584c 5858 5858 4c4c 584c 5858     ....LXXXXXLLLXXX
d008c434:	5858 4c4c 4c58 4c4c f14c 00f1 0000 0000     XXLLXLLLL.......
d008c444:	f100 4c4c 4c58 00f1 0000 0000 0000 0000     ..LLXL..........
	...
d008c460:	0000 00f1 0000 f100 584c 5858 5858 4c4c     ........LXXXXXLL
d008c470:	584c 5858 5858 4c4c 4c58 4c4c f14c 00f1     LXXXXXLLXLLLL...
d008c480:	0000 0000 0000 f100 584c 5858 00f1 0000     ........LXXX....
	...
d008c4a0:	0000 f1f1 0000 f100 584c 5858 5858 4c4c     ........LXXXXXLL
d008c4b0:	584c 5858 5858 4c4c 4c58 4c4c f14c 00f1     LXXXXXLLXLLLL...
d008c4c0:	0000 0000 0000 f100 584c 5858 4c4c 4c58     ........LXXXLLXL
d008c4d0:	4c4c f1f1 4c4c 4c58 4c4c 5858 5858 4c58     LL..LLXLLLXXXXXL
d008c4e0:	4c4c f1f1 0000 f100 584c 5858 5858 4c4c     LL......LXXXXXLL
d008c4f0:	584c 5858 5858 4c4c 4c58 4c4c f14c 00f1     LXXXXXLLXLLLL...
d008c500:	0000 0000 0000 f100 584c 5858 4c4c 4c58     ........LXXXLLXL
d008c510:	4c4c f1f1 4c4c 4c58 4c4c 5858 5858 4c58     LL..LLXLLLXXXXXL
d008c520:	4c4c f1f1 0000 f100 584c 5858 5858 4c4c     LL......LXXXXXLL
d008c530:	584c 5858 5858 4c4c 4c58 4c4c f14c 00f1     LXXXXXLLXLLLL...
d008c540:	0000 0000 0000 f100 584c 5858 4c4c 4c58     ........LXXXLLXL
d008c550:	4c4c f1f1 4c4c 4c58 4c58 584c 5858 5858     LL..LLXLXLLXXXXX
d008c560:	4c58 4c4c f1f1 f100 584c 584c 5858 4c4c     XLLL....LXLXXXLL
d008c570:	584c 5858 4c58 584c 4c58 4c4c 4c4c f14c     LXXXXLLXXLLLLLL.
d008c580:	f1f1 00f1 f100 584c 4c58 f14c 0000 0000     ......LXXLL.....
	...
d008c5a0:	f100 f14c f100 f100 584c 584c 5858 4c4c     ..L.....LXLXXXLL
d008c5b0:	584c 5858 4c58 584c 4c58 4c4c 4c4c f14c     LXXXXLLXXLLLLLL.
d008c5c0:	f1f1 00f1 0000 f100 584c 4c58 00f1 0000     ........LXXL....
	...
d008c5e0:	f100 f14c f100 f100 584c 584c 5858 4c4c     ..L.....LXLXXXLL
d008c5f0:	584c 5858 4c58 584c 4c58 4c4c 4c4c f14c     LXXXXLLXXLLLLLL.
d008c600:	f1f1 00f1 0000 f100 584c 4c58 4c4c 584c     ........LXXLLLLX
d008c610:	4c4c 4c4c 4c4c 584c 4c58 584c 5858 5858     LLLLLLLXXLLXXXXX
d008c620:	4c58 4c4c f1f1 f100 584c 584c 5858 4c4c     XLLL....LXLXXXLL
d008c630:	584c 5858 4c58 584c 4c58 4c4c 4c4c f14c     LXXXXLLXXLLLLLL.
d008c640:	f1f1 00f1 0000 f100 584c 4c58 4c4c 584c     ........LXXLLLLX
d008c650:	4c4c 4c4c 4c4c 584c 4c58 584c 5858 5858     LLLLLLLXXLLXXXXX
d008c660:	4c58 4c4c f1f1 f100 584c 584c 5858 4c4c     XLLL....LXLXXXLL
d008c670:	584c 5858 4c58 584c 4c58 4c4c 4c4c f14c     LXXXXLLXXLLLLLL.
d008c680:	f1f1 00f1 0000 f100 584c 4c58 4c4c 584c     ........LXXLLLLX
d008c690:	4c4c 4c4c 4c4c 584c 4c58 4c4c 584c 5858     LLLLLLLXXLLLLXXX
d008c6a0:	5858 4c58 4c4c f1f1 584c 4c4c 4c58 4c4c     XXXLLL..LXLLXLLL
d008c6b0:	584c 5858 4c58 4c4c 4c4c 4c4c 4c4c 4c4c     LXXXXLLLLLLLLLLL
d008c6c0:	4c4c f14c f1f1 584c 4c58 f14c 0000 0000     LLL...LXXLL.....
	...
d008c6e0:	f100 f14c 4c00 f1f1 584c 4c4c 4c58 4c4c     ..L..L..LXLLXLLL
d008c6f0:	584c 5858 4c58 4c4c 4c4c 4c4c 4c4c 4c4c     LXXXXLLLLLLLLLLL
d008c700:	4c4c f14c f1f1 4cf1 5858 4c4c f14c 0000     LLL....LXXLLL...
	...
d008c720:	f100 f14c 4c00 f1f1 584c 4c4c 4c58 4c4c     ..L..L..LXLLXLLL
d008c730:	584c 5858 4c58 4c4c 4c4c 4c4c 4c4c 4c4c     LXXXXLLLLLLLLLLL
d008c740:	4c4c f14c f1f1 4cf1 5858 4c4c 4c4c 584c     LLL....LXXLLLLLX
d008c750:	4c58 4c4c 4c4c 4c4c 4c58 4c4c 584c 5858     XLLLLLLLXLLLLXXX
d008c760:	5858 4c58 4c4c f1f1 584c 4c4c 4c58 4c4c     XXXLLL..LXLLXLLL
d008c770:	584c 5858 4c58 4c4c 4c4c 4c4c 4c4c 4c4c     LXXXXLLLLLLLLLLL
d008c780:	4c4c f14c f1f1 4cf1 5858 4c4c 4c4c 584c     LLL....LXXLLLLLX
d008c790:	4c58 4c4c 4c4c 4c4c 4c58 4c4c 584c 5858     XLLLLLLLXLLLLXXX
d008c7a0:	5858 4c58 4c4c f1f1 584c 4c4c 4c58 4c4c     XXXLLL..LXLLXLLL
d008c7b0:	584c 5858 4c58 4c4c 4c4c 4c4c 4c4c 4c4c     LXXXXLLLLLLLLLLL
d008c7c0:	4c4c f14c f1f1 4cf1 5858 4c4c 4c4c 584c     LLL....LXXLLLLLX
d008c7d0:	4c58 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 5858     XLLLLLLLLLLLLLXX
d008c7e0:	5858 4c58 4c4c 4c4c 4c4c 4c4c 5858 4c4c     XXXLLLLLLLLLXXLL
d008c7f0:	4c58 5858 4c4c 584c 4c4c 4c4c 4c4c 4c4c     XLXXLLLXLLLLLLLL
d008c800:	4c4c 4c4c 4c4c 584c 4c58 f14c 0000 0000     LLLLLLLXXLL.....
	...
d008c820:	4cf1 f158 4c00 4c4c 4c4c 4c4c 5858 4c4c     .LX..LLLLLLLXXLL
d008c830:	4c58 5858 4c4c 584c 4c4c 4c4c 4c4c 4c4c     XLXXLLLXLLLLLLLL
d008c840:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f14c 0000     LLLLLLLLLLLLL...
	...
d008c860:	4cf1 f158 4c00 4c4c 4c4c 4c4c 5858 4c4c     .LX..LLLLLLLXXLL
d008c870:	4c58 5858 4c4c 584c 4c4c 4c4c 4c4c 4c4c     XLXXLLLXLLLLLLLL
d008c880:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008c890:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 5858     XXLLLLLLLLLLLLXX
d008c8a0:	5858 4c58 4c4c 4c4c 4c4c 4c4c 5858 4c4c     XXXLLLLLLLLLXXLL
d008c8b0:	4c58 5858 4c4c 584c 4c4c 4c4c 4c4c 4c4c     XLXXLLLXLLLLLLLL
d008c8c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008c8d0:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 5858     XXLLLLLLLLLLLLXX
d008c8e0:	5858 4c58 4c4c 4c4c 4c4c 4c4c 5858 4c4c     XXXLLLLLLLLLXXLL
d008c8f0:	4c58 5858 4c4c 584c 4c4c 4c4c 4c4c 4c4c     XLXXLLLXLLLLLLLL
d008c900:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008c910:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XXLLLLLLLLLLLLLL
d008c920:	584c 5858 4c58 4c4c 4c4c 4c4c 584c 4c4c     LXXXXLLLLLLLLXLL
d008c930:	5858 4c4c 4c4c 5858 4c4c 4c4c 4c4c 4c4c     XXLLLLXXLLLLLLLL
d008c940:	4c4c 4c4c 4c4c 5858 584c f14c 0000 0000     LLLLLLXXLXL.....
	...
d008c960:	4cf1 4c58 4cf1 4c4c 4c4c 4c4c 584c 4c4c     .LXL.LLLLLLLLXLL
d008c970:	5858 4c4c 4c4c 5858 4c4c 4c4c 4c4c 4c4c     XXLLLLXXLLLLLLLL
d008c980:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f14c 0000     LLLLLLLLLLLLL...
	...
d008c9a0:	4cf1 4c58 4cf1 4c4c 4c4c 4c4c 584c 4c4c     .LXL.LLLLLLLLXLL
d008c9b0:	5858 4c4c 4c4c 5858 4c4c 4c4c 4c4c 4c4c     XXLLLLXXLLLLLLLL
d008c9c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008c9d0:	584c 584c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXLXLLLLLLLLLLLL
d008c9e0:	584c 5858 4c58 4c4c 4c4c 4c4c 584c 4c4c     LXXXXLLLLLLLLXLL
d008c9f0:	5858 4c4c 4c4c 5858 4c4c 4c4c 4c4c 4c4c     XXLLLLXXLLLLLLLL
d008ca00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ca10:	584c 584c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXLXLLLLLLLLLLLL
d008ca20:	584c 5858 4c58 4c4c 4c4c 4c4c 584c 4c4c     LXXXXLLLLLLLLXLL
d008ca30:	5858 4c4c 4c4c 5858 4c4c 4c4c 4c4c 4c4c     XXLLLLXXLLLLLLLL
d008ca40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ca50:	584c 584c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXLXLLLLLLLLLLLL
d008ca60:	4c4c 584c 5858 4c4c 4c4c 4c4c 4c4c 4c4c     LLLXXXLLLLLLLLLL
d008ca70:	4c4c 4c4c 4c4c 4c58 4c4c 4c4c 4c4c 4c4c     LLLLLLXLLLLLLLLL
d008ca80:	4c4c 4c4c 4c4c 5858 584c 4c4c 00f1 0000     LLLLLLXXLXLL....
	...
d008caa0:	58f1 4c58 58f1 4c4c 4c4c 4c4c 4c4c 4c4c     .XXL.XLLLLLLLLLL
d008cab0:	4c4c 4c4c 4c4c 4c58 4c4c 4c4c 4c4c 4c4c     LLLLLLXLLLLLLLLL
d008cac0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f14c 0000     LLLLLLLLLLLLL...
	...
d008cae0:	58f1 4c58 58f1 4c4c 4c4c 4c4c 4c4c 4c4c     .XXL.XLLLLLLLLLL
d008caf0:	4c4c 4c4c 4c4c 4c58 4c4c 4c4c 4c4c 4c4c     LLLLLLXLLLLLLLLL
d008cb00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cb10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cb20:	4c4c 584c 5858 4c4c 4c4c 4c4c 4c4c 4c4c     LLLXXXLLLLLLLLLL
d008cb30:	4c4c 4c4c 4c4c 4c58 4c4c 4c4c 4c4c 4c4c     LLLLLLXLLLLLLLLL
d008cb40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cb50:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cb60:	4c4c 584c 5858 4c4c 4c4c 4c4c 4c4c 4c4c     LLLXXXLLLLLLLLLL
d008cb70:	4c4c 4c4c 4c4c 4c58 4c4c 4c4c 4c4c 4c4c     LLLLLLXLLLLLLLLL
d008cb80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cb90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cba0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cbb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cbc0:	4c4c 4c4c 584c 5858 584c 4c58 00f1 f100     LLLLLXXXLXXL....
d008cbd0:	f1f1 0000 0000 0000 0000 0000 0000 f100     ................
d008cbe0:	584c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXLLLLLLLLLLLLLL
d008cbf0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cc00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f1f1     LLLLLLLLLLLLLL..
d008cc10:	f1f1 0000 0000 0000 0000 0000 0000 f100     ................
d008cc20:	584c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXLLLLLLLLLLLLLL
d008cc30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cc40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cc50:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cc60:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cc70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cc80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cc90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cca0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ccb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ccc0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ccd0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cce0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ccf0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cd00:	4c4c 4c4c 4c4c 5858 5858 4c58 f14c 4cf1     LLLLLLXXXXXLL..L
d008cd10:	4c4c f1f1 0000 0000 0000 f1f1 00f1 f100     LL..............
d008cd20:	584c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXLLLLLLLLLLLLLL
d008cd30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cd40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4cf1     LLLLLLLLLLLLLL.L
d008cd50:	4c4c f1f1 0000 0000 0000 f1f1 00f1 f100     LL..............
d008cd60:	584c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXLLLLLLLLLLLLLL
d008cd70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cd80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cd90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cda0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cdb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cdc0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cdd0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cde0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cdf0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ce00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ce10:	4c4c 4c4c 4c4c 4c4c 5858 5858 4c58 4c4c     LLLLLLLLXXXXXLLL
d008ce20:	4c58 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XLLLLLLLLLLLLLLL
d008ce30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ce40:	4c4c 4c4c 4c4c 4c58 5858 4c58 f14c 4cf1     LLLLLLXLXXXLL..L
d008ce50:	5858 4c58 f1f1 0000 f100 4c4c 00f1 4c00     XXXL......LL...L
d008ce60:	5858 4c4c 4c4c 4c4c 584c 5858 4c58 4c4c     XXLLLLLLLXXXXLLL
d008ce70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ce80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4cf1     LLLLLLLLLLLLLL.L
d008ce90:	5858 4c58 f1f1 0000 f100 4c4c 00f1 4cf1     XXXL......LL...L
d008cea0:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XXLLLLLLLLLLLLLL
d008ceb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cec0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ced0:	4c4c 4c4c 4c4c 4c4c 584c 4c4c 584c 5858     LLLLLLLLLXLLLXXX
d008cee0:	5858 4c58 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XXXLLLLLLLLLLLLL
d008cef0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cf00:	4c4c 4c4c 4c4c 4c4c 584c 5858 4c58 4c4c     LLLLLLLLLXXXXLLL
d008cf10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cf20:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cf30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cf40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cf50:	4c4c 4c4c 4c4c 584c 4c4c 5858 5858 4c4c     LLLLLLLXLLXXXXLL
d008cf60:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XXLLLLLLLLLLLLLL
d008cf70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cf80:	4c4c 4c4c 4c4c 4c58 5858 4c58 f14c 4cf1     LLLLLLXLXXXLL..L
d008cf90:	584c 5858 f14c 00f1 4cf1 4c4c 00f1 4cf1     LXXXL....LLL...L
d008cfa0:	4c58 4c4c 4c4c 4c4c 4c58 5858 4c4c 4c4c     XLLLLLLLXLXXLLLL
d008cfb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008cfc0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4cf1     LLLLLLLLLLLLLL.L
d008cfd0:	584c 5858 f14c 00f1 4cf1 4c4c 00f1 4cf1     LXXXL....LLL...L
d008cfe0:	4c58 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XLLLLLLLLLLLLLLL
d008cff0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d000:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d010:	4c4c 4c4c 4c4c 4c4c 5858 4c4c 5858 5858     LLLLLLLLXXLLXXXX
d008d020:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d030:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d040:	4c4c 4c4c 4c4c 4c4c 4c58 5858 4c4c 4c4c     LLLLLLLLXLXXLLLL
d008d050:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d060:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d070:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d080:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d090:	4c4c 4c4c 4c4c 4c4c 4c4c 584c 5858 4c58     LLLLLLLLLLLXXXXL
d008d0a0:	584c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXLLLLLLLLLLLLLL
d008d0b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d0c0:	4c4c 4c4c 4c4c 4c58 5858 4c4c 4c4c f1f1     LLLLLLXLXXLLLL..
d008d0d0:	4c4c 4c58 5858 f14c 4cf1 4c4c f121 5858     LLXLXXL..LLL!.XX
d008d0e0:	4c4c 4c4c 4c4c 584c 584c 4c58 4c4c 4c4c     LLLLLLLXLXXLLLLL
d008d0f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d100:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f1f1     LLLLLLLLLLLLLL..
d008d110:	4c4c 4c58 5858 f14c 4cf1 4c4c f1f1 5858     LLXLXXL..LLL..XX
d008d120:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d130:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d140:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d150:	4c4c 4c4c 4c4c 4c4c 4c58 584c 5858 4c58     LLLLLLLLXLLXXXXL
d008d160:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d170:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d180:	4c4c 4c4c 4c4c 584c 584c 4c58 4c4c 4c4c     LLLLLLLXLXXLLLLL
d008d190:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d1a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d1b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d1c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d1d0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 5858     LLLLLLLLLLLLLLXX
d008d1e0:	584c 4c58 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LXXLLLLLLLLLLLLL
d008d1f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d200:	4c4c 4c4c 4c4c 4c4c 4c58 4c4c 4c4c f1f1     LLLLLLLLXLLLLL..
d008d210:	4c4c 4c58 5858 f14c 4cf1 4c4c f1f1 5858     LLXLXXL..LLL..XX
d008d220:	4c4c 4c4c 4c4c 4c4c 584c 4c58 4c4c 4c4c     LLLLLLLLLXXLLLLL
d008d230:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d240:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f1f1     LLLLLLLLLLLLLL..
d008d250:	4c4c 4c58 5858 f14c 4cf1 4c4c f1f1 5858     LLXLXXL..LLL..XX
d008d260:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d270:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d280:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d290:	4c4c 4c4c 4c4c 584c 4c58 5858 4c4c 4c4c     LLLLLLLXXLXXLLLL
d008d2a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d2b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d2c0:	4c4c 4c4c 4c4c 4c4c 584c 4c58 4c4c 4c4c     LLLLLLLLLXXLLLLL
d008d2d0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d2e0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d2f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d300:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d310:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 5858     LLLLLLLLLLLLLLXX
d008d320:	4c58 4c58 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XLXLLLLLLLLLLLLL
d008d330:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d340:	4c4c 4c4c 4c4c 4c4c 4c58 4c4c 4c4c f1f1     LLLLLLLLXLLLLL..
d008d350:	4c4c 584c 584c 4c58 4cf1 4c4c f14c 584c     LLLXLXXL.LLLL.LX
d008d360:	4c4c 4c4c 4c4c 4c4c 584c 4c4c 4c4c 4c4c     LLLLLLLLLXLLLLLL
d008d370:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d380:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f1f1     LLLLLLLLLLLLLL..
d008d390:	4c4c 584c 584c 4c58 4cf1 4c4c f14c 584c     LLLXLXXL.LLLL.LX
d008d3a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d3b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d3c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d3d0:	4c4c 4c4c 4c4c 584c 584c 5858 4c4c 4c4c     LLLLLLLXLXXXLLLL
d008d3e0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d3f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d400:	4c4c 4c4c 4c4c 4c4c 584c 4c4c 4c4c 4c4c     LLLLLLLLLXLLLLLL
d008d410:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d420:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d430:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d440:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d450:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 584c     LLLLLLLLLLLLLLLX
d008d460:	4c58 4c58 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XLXLLLLLLLLLLLLL
d008d470:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d480:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f14c     LLLLLLLLLLLLLLL.
d008d490:	4c4c 584c 4c4c 4c58 4c4c 4c4c 4c4c 4c4c     LLLXLLXLLLLLLLLL
d008d4a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d4b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d4c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f14c     LLLLLLLLLLLLLLL.
d008d4d0:	4c4c 584c 4c4c 4c58 4c4c 4c4c 4c4c 4c4c     LLLXLLXLLLLLLLLL
d008d4e0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d4f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d500:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d510:	4c4c 4c4c 4c4c 584c 584c 4c58 4c4c 4c4c     LLLLLLLXLXXLLLLL
d008d520:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d530:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d540:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d550:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d560:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d570:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d580:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d590:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d5a0:	4c58 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     XLLLLLLLLLLLLLLL
d008d5b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d5c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f14c     LLLLLLLLLLLLLLL.
d008d5d0:	4c4c 4c4c 4c4c 584c 4c4c 4c4c 4c4c 4c4c     LLLLLLLXLLLLLLLL
d008d5e0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d5f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d600:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c f14c     LLLLLLLLLLLLLLL.
d008d610:	4c4c 4c4c 4c4c 584c 4c4c 4c4c 4c4c 4c4c     LLLLLLLXLLLLLLLL
d008d620:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d630:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d640:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d650:	4c4c 4c4c 4c4c 4c4c 584c 4c4c 4c4c 4c4c     LLLLLLLLLXLLLLLL
d008d660:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d670:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d680:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d690:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d6a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d6b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d6c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d6d0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d6e0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d6f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d700:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d710:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d720:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d730:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d740:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d750:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d760:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d770:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d780:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d790:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d7a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d7b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d7c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d7d0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d7e0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d7f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d800:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d810:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d820:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d830:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d840:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d850:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d860:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d870:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d880:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d890:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d8a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d8b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d8c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d8d0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d8e0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d8f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d900:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d910:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d920:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d930:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d940:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d950:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d960:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d970:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d980:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d990:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d9a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d9b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d9c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d9d0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d9e0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008d9f0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da20:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da50:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da60:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008da90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008daa0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dab0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dac0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dad0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dae0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008daf0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db20:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db50:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db60:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008db90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dba0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dbb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dbc0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dbd0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dbe0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dbf0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc20:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc50:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc60:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dc90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dca0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dcb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dcc0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dcd0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dce0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dcf0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd20:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd50:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd60:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dd90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dda0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ddb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ddc0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ddd0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dde0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ddf0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de20:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de50:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de60:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008de90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dea0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008deb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dec0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008ded0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dee0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008def0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df20:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df30:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df40:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df50:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df60:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df70:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df80:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008df90:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dfa0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dfb0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dfc0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dfd0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dfe0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008dff0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e000:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e010:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e020:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e030:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e040:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e050:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e060:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e070:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e080:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e090:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e0a0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e0b0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e0c0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d008e0d0:	4c4c 4c4c 4c4c 4c4c                         LLLLLLLL

d008e0d8 <gfx_bub_treehead>:
	...
d008e0e4:	0000 1000 1010 1010 1010 0010 0000 0000     ................
d008e0f4:	9010 0010 1000 0010 0000 1000 1010 1010     ................
d008e104:	1010 1010 0010 0000 0000 0000 0000 0000     ................
	...
d008e124:	1000 9010 dc9c dcdc d4dc 1058 1010 0010     ..........X.....
d008e134:	1000 10e0 dc10 0010 1010 5810 dcdc dcdc     ...........X....
d008e144:	9058 0010 0000 0000 0000 0000 0000 0000     X...............
	...
d008e164:	0000 1000 1010 d490 d8dc d4d8 1090 1058     ..............X.
d008e174:	1010 e858 d810 1090 5810 e0d8 d8dc 5858     ..X......X....XX
d008e184:	1090 0000 0000 1010 1010 0000 0000 0000     ................
	...
d008e1a4:	1000 9010 9058 9090 5858 dcdc dcd8 dce8     ....X...XX......
d008e1b4:	1090 e810 58dc 5810 d4e8 9ce0 58d8 9090     .....X.X.....X..
d008e1c4:	1010 1010 5810 d49c 90e0 1010 0000 0000     .....X..........
	...
d008e1e4:	9010 e8d8 dcdc dcdc 5858 dcdc dce8 9cdc     ........XX......
d008e1f4:	e0dc dc90 90dc dcd4 e8e0 90d8 9090 1090     ................
d008e204:	9058 d4d4 9cd4 1090 1010 0000 0000 0000     X...............
	...
d008e224:	1000 d8dc d8d8 d8e8 e0e0 e058 dcd8 e0dc     ..........X.....
d008e234:	9cdc d8dc dcd8 9ce0 dcd8 9090 5890 5858     .............XXX
d008e244:	e0e0 90dc 1058 0010 0000 0000 0000 0000     ....X...........
	...
d008e260:	0000 1010 1010 9090 dcdc dcdc d4d4 d8dc     ................
d008e270:	e0dc 9cd8 e0d4 9cdc d8dc dce8 dc9c 9cdc     ................
d008e280:	dcdc d890 9c9c 9090 1010 0010 0000 0000     ................
	...
d008e2a0:	5810 e890 1058 9010 dc90 d4dc 9ce0 dce8     .X..X...........
d008e2b0:	e0dc e8d4 dce8 dcd4 9cd8 dcd4 dcdc e8d4     ................
d008e2c0:	d4dc dcdc 90dc dcdc dc9c 1090 1010 0000     ................
	...
d008e2dc:	0000 1000 dcd4 9cdc dcdc dcd8 dcdc dcdc     ................
d008e2ec:	dcdc dcdc dcdc dcdc dcdc dcdc d8dc dcdc     ................
d008e2fc:	dcd8 dcdc dcd8 9ce0 dcdc dcdc dcdc d8e8     ................
d008e30c:	58dc 1010 0000 0000 0000 0000 0000 0000     .X..............
d008e31c:	0000 0000 5810 e0d4 d8dc d8e0 dcdc dcdc     .....X..........
d008e32c:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcd8     ................
d008e33c:	dcdc dcdc 9cdc dcdc dcdc dcd8 d4dc e0d4     ................
d008e34c:	dcdc 90e0 1010 0000 0000 0000 0000 0000     ................
d008e35c:	0000 0000 1010 9c58 e0dc e89c dcdc dcdc     ......X.........
d008e36c:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e37c:	dcdc dcd8 dcdc d8d8 d8e0 9090 9090 5890     ...............X
d008e38c:	9090 90d4 9090 0010 0000 0000 0000 0000     ................
d008e39c:	0000 1010 e0dc e0dc 9cdc d8dc dcdc dcdc     ................
d008e3ac:	dcdc dcdc dcdc dcdc dcdc dcdc dcd8 d8dc     ................
d008e3bc:	dcdc dcdc 9090 9090 9058 9090 9058 9090     ........X...X...
d008e3cc:	1010 5810 9090 0010 0000 0000 0000 0000     ...X............
d008e3dc:	1000 d4e0 d4d4 d4d4 dcdc d4e0 dcdc dcdc     ................
d008e3ec:	dcdc dcdc dcdc dcdc dcdc dcdc dcd8 dcdc     ................
d008e3fc:	dcdc dcdc dcdc 5890 9090 9058 5890 1058     .......X..X..XX.
d008e40c:	0010 0000 5810 1090 0000 0000 0000 0000     .....X..........
d008e41c:	e810 1090 dc90 dcdc dcdc 9c9c dcdc dcdc     ................
d008e42c:	dcdc dcdc dcdc dcdc dcdc dcdc d8dc dcdc     ................
d008e43c:	dcdc dcdc d8d8 dcdc 5890 9090 1010 1010     .........X......
d008e44c:	1010 0010 1000 1010 0000 0000 0000 0000     ................
d008e45c:	1000 1010 1000 d458 e0d4 dcdc dcdc dcdc     ......X.........
d008e46c:	dcdc dcdc dcdc dcdc dcdc dcdc 90dc dc9c     ................
d008e47c:	d8dc dcdc dcdc dcdc 909c 9090 5890 9090     .............X..
d008e48c:	5890 1058 0010 1000 0000 0000 0000 0000     .XX.............
d008e49c:	1000 1010 9010 9090 9cdc dcdc dcdc dcdc     ................
d008e4ac:	dcdc dcdc dcdc dcdc dcdc dcdc 90d8 dc90     ................
d008e4bc:	d8dc dcdc d8dc dcdc 9cdc 90d8 9058 9090     ............X...
d008e4cc:	5890 9058 1058 0010 0000 0000 0000 1000     .XX.X...........
d008e4dc:	9010 dcd8 dcdc d8dc d8d8 dcdc dcdc dcdc     ................
d008e4ec:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc d890     ................
d008e4fc:	d8dc dcdc dcdc dcdc dcd8 90dc 9090 9090     ................
d008e50c:	9090 9090 5890 1058 0010 0000 0000 dc10     .....XX.........
d008e51c:	e8dc e8d8 dc9c dcdc dcdc d8dc dcdc dcdc     ................
d008e52c:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc 9090     ................
d008e53c:	dc9c d8e0 dcd8 dcdc dce0 d8d8 5890 9090     .............X..
d008e54c:	9090 9090 9090 5890 1090 0000 1000 d49c     .......X........
d008e55c:	d89c 9090 9c90 d8d8 dcd8 d8dc dcdc dcdc     ................
d008e56c:	dcdc dcdc dcdc dcdc dcdc dcdc dc9c 9cd8     ................
d008e57c:	9c90 dcdc dcdc dc9c d890 dcdc 9058 5890     ............X..X
d008e58c:	9090 9090 9090 9090 1058 0000 1010 1010     ........X.......
d008e59c:	1010 9010 dc9c dcdc dcd8 d8dc dcdc dcdc     ................
d008e5ac:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc e0dc     ................
d008e5bc:	dc9c dcdc dcdc dcdc 90dc 9c90 9090 9090     ................
d008e5cc:	5890 9090 9090 9090 1058 0000 0010 0000     .X......X.......
d008e5dc:	5810 d8dc dcdc dcdc dcdc dcd8 dcdc dcdc     .X..............
d008e5ec:	dcdc dcdc dcdc dcdc dcdc dcdc 9cdc dcd8     ................
d008e5fc:	dcd8 dcdc dcdc dcdc 90d8 9090 9090 9090     ................
d008e60c:	90d8 9090 9090 9090 1090 0000 0000 1000     ................
d008e61c:	dc90 d4dc 9cdc dc9c dcdc dcd8 dcdc dcdc     ................
d008e62c:	dcdc dcdc dcdc dcdc dcdc dcdc d8d8 dcdc     ................
d008e63c:	dc9c dcdc e0d8 d8d8 9090 9090 5890 9090     .............X..
d008e64c:	dc90 909c 9090 9090 9090 0010 0000 9010     ................
d008e65c:	dce8 d8d8 dcdc dcdc dcdc d8d8 dcdc dcdc     ................
d008e66c:	dcdc dcdc dcdc dcdc dcdc dcdc dcd8 dcdc     ................
d008e67c:	dcdc d8dc dcd8 d8dc 90e0 9058 e090 9090     ..........X.....
d008e68c:	9058 90e0 9090 5858 9090 0010 0000 d810     X.....XX........
d008e69c:	dcd4 e8d8 dcd8 d8dc dcd8 dcdc dcdc dcdc     ................
d008e6ac:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcd8     ................
d008e6bc:	d8dc dcdc d8dc d8dc 90dc 9090 9090 90dc     ................
d008e6cc:	9090 d8dc 9090 9090 5890 0010 1000 d49c     .........X......
d008e6dc:	9cd4 dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e6ec:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e6fc:	dcdc dcdc dcd8 d8e0 90d8 9090 9090 9090     ................
d008e70c:	9090 9090 9090 5890 9090 1090 dc10 9ce8     .......X........
d008e71c:	dc9c d8dc dcd8 dcdc dcdc dcd8 dcdc dcdc     ................
d008e72c:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e73c:	dcdc dcdc d8dc d8dc 9cdc 9090 9090 9090     ................
d008e74c:	9090 9090 9090 9090 9090 1090 dc10 dcd4     ................
d008e75c:	d4dc 9c9c dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e76c:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e77c:	dcdc dcdc dcdc dcdc d8dc 9090 9090 9090     ................
d008e78c:	9090 9090 9058 5890 5890 1090 d410 10e8     ....X..X.X......
d008e79c:	dcd8 dcdc d8dc dcd8 dcdc dcdc dcdc dcdc     ................
d008e7ac:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e7bc:	dcdc dcdc dcdc dcdc d8d8 9090 9090 9090     ................
d008e7cc:	9090 9090 9090 9090 5890 1090 1010 1010     .........X......
d008e7dc:	9010 dc9c dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e7ec:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e7fc:	dcdc dcdc dcdc dcd8 dcdc 9090 9090 9090     ................
d008e80c:	9090 9090 9058 5890 9090 1090 0000 dc10     ....X..X........
d008e81c:	e09c d8dc dcd8 dcdc d8dc dcd8 dcdc dcdc     ................
d008e82c:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e83c:	dcdc dcdc dcdc dcdc 9cdc 9090 9090 9090     ................
d008e84c:	9090 9090 9058 5890 9090 1090 1000 d8dc     ....X..X........
d008e85c:	9cdc e0dc dcdc 9c9c dcdc dcd8 dcdc dcdc     ................
d008e86c:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e87c:	dcdc dcdc dcd8 dcdc 90d8 9090 5890 9090     .............X..
d008e88c:	5890 9090 9090 9090 9090 1058 0000 1010     .X........X.....
d008e89c:	d810 5890 d8dc 9090 dcd8 dcd8 dcdc dcdc     ...X............
d008e8ac:	dcdc dcdc dcdc dcdc dcdc dcdc dcdc dcdc     ................
d008e8bc:	dcdc dcdc dcdc dcd8 90dc 9090 9090 9c90     ................
d008e8cc:	9090 dcd8 9090 1058 9090 0010 0000 5810     ......X........X
d008e8dc:	9010 9010 90d8 9058 e89c 9090 d890 e890     ......X.........
d008e8ec:	dcdc 9cdc dcdc d490 e8d8 dcdc dcdc dcd8     ................
d008e8fc:	90dc d8dc d8e8 d890 58d8 9010 9090 9090     .........X......
d008e90c:	9090 dc90 1058 1090 1090 0000 0000 1000     ....X...........
d008e91c:	9010 5810 10dc 9010 90d8 9058 9010 9090     ...X......X.....
d008e92c:	9090 e09c d8dc d890 dce0 dcd8 dcdc dcd8     ................
d008e93c:	9090 e0dc d458 9090 5890 1010 9090 9058     ....X....X....X.
d008e94c:	1090 dc10 1090 1058 1090 0000 0000 0000     ......X.........
d008e95c:	1010 1090 10dc 1000 90dc 1010 1010 9090     ................
d008e96c:	9090 909c 90d4 9090 909c dce0 dc9c 9090     ................
d008e97c:	1090 909c 9090 5810 9058 1010 1010 9090     .......XX.......
d008e98c:	0010 9010 9010 1010 0010 0000 0000 0000     ................
d008e99c:	1000 1090 1058 1000 1090 1010 1021 9010     ....X.......!...
d008e9ac:	5890 1010 90d4 9058 9090 d8dc 5890 5858     .X....X......XXX
d008e9bc:	1058 5858 1090 1010 1010 1010 1010 1090     X.XX............
d008e9cc:	0010 9010 9010 0010 0000 0000 0000 0000     ................
d008e9dc:	0000 1010 1090 0000 1010 1000 2121 9010     ............!!..
d008e9ec:	1090 1090 9090 1010 9090 9090 1058 1010     ............X...
d008e9fc:	1010 1010 2110 1010 1010 1021 0010 0010     .....!....!.....
d008ea0c:	0000 1000 1010 0000 0000 0000 0000 0000     ................
d008ea1c:	0000 0010 1010 0000 1000 0000 2110 1021     .............!!.
d008ea2c:	1010 1090 9058 1010 1010 9010 9090 1010     ....X...........
d008ea3c:	1010 1010 2110 2121 2521 1010 0000 0000     .....!!!!%......
d008ea4c:	0000 1000 1000 0000 0000 0000 0000 0000     ................
d008ea5c:	0000 0000 1010 0000 0000 0000 1010 2121     ..............!!
d008ea6c:	2121 2110 5810 1010 2121 1010 5858 1010     !!.!.X..!!..XX..
d008ea7c:	2110 2521 2121 2525 2121 1010 0000 0000     .!!%!!%%!!......
	...
d008eaa8:	1000 2521 2121 2121 1021 2110 2925 1021     ..!%!!!!!..!%)!.
d008eab8:	1010 2121 2121 2525 2521 2129 2121 0010     ..!!!!%%!%)!!!..
	...
d008eae8:	2110 2121 2129 2925 2525 2525 2525 2525     .!!!)!%)%%%%%%%%
d008eaf8:	2525 2525 2125 2525 2121 2121 2510 1021     %%%%%!%%!!!!.%!.
	...
d008eb28:	1000 2121 2125 2525 2525 2525 2525 2525     ..!!%!%%%%%%%%%%
d008eb38:	2525 2525 2125 2125 2121 1021 2910 1021     %%%%%!%!!!!..)!.
	...
d008eb68:	1000 2125 2125 2525 2525 2525 2525 2525     ..%!%!%%%%%%%%%%
d008eb78:	2525 2525 2125 2125 2121 1021 2129 0010     %%%%%!%!!!!.)!..
	...
d008eba8:	2110 2129 2125 2525 2525 2525 2525 2525     .!)!%!%%%%%%%%%%
d008ebb8:	2525 2525 2125 2125 2125 1021 2125 0010     %%%%%!%!%!!.%!..
	...
d008ebe8:	2110 2525 2125 2525 2525 2525 2525 2525     .!%%%!%%%%%%%%%%
d008ebf8:	2525 2525 2125 2125 2529 2121 2121 0010     %%%%%!%!)%!!!!..
	...
d008ec28:	1000 2521 2125 2525 2525 2525 2525 2525     ..!%%!%%%%%%%%%%
d008ec38:	2525 2525 2125 2525 2525 2121 2121 0010     %%%%%!%%%%!!!!..
	...
d008ec68:	1000 2521 2125 2925 2525 2525 2525 2525     ..!%%!%)%%%%%%%%
d008ec78:	2525 2525 2521 2525 2521 2125 1021 0000     %%%%!%%%!%%!!...
	...
d008eca8:	1000 2521 2129 2525 2525 2525 2525 2525     ..!%)!%%%%%%%%%%
d008ecb8:	2525 2525 2521 2525 2521 2125 1021 0000     %%%%!%%%!%%!!...
	...
d008ece8:	1000 2925 2529 2529 2525 2525 2525 2525     ..%))%)%%%%%%%%%
d008ecf8:	2525 2525 2521 2529 2521 2125 2121 0010     %%%%!%)%!%%!!!..
	...
d008ed28:	1000 2521 2525 2525 2525 2525 2525 2525     ..!%%%%%%%%%%%%%
d008ed38:	2525 2525 2521 2125 2525 2121 2121 0010     %%%%!%%!%%!!!!..
	...
d008ed68:	2110 2521 2129 2525 2525 2525 2525 2525     .!!%)!%%%%%%%%%%
d008ed78:	2525 2525 2521 2125 2525 2121 2121 0010     %%%%!%%!%%!!!!..
	...
d008eda8:	1000 2521 2125 2525 2525 2525 2525 2525     ..!%%!%%%%%%%%%%
d008edb8:	2529 2525 2521 2125 2525 2121 2121 0010     )%%%!%%!%%!!!!..
	...
d008ede8:	1000 2521 2125 2529 2525 2525 2525 2525     ..!%%!)%%%%%%%%%
d008edf8:	2529 2525 2521 2125 2521 2121 2110 1021     )%%%!%%!!%!!.!!.
	...
d008ee28:	2110 2129 2125 2521 2525 2525 2525 2525     .!)!%!!%%%%%%%%%
d008ee38:	2525 2525 2121 2125 2921 2121 2110 1021     %%%%!!%!!)!!.!!.
	...
d008ee68:	2110 2125 2125 2521 2525 2525 2525 2525     .!%!%!!%%%%%%%%%
d008ee78:	2525 2525 2121 2125 2521 2121 2510 1021     %%%%!!%!!%!!.%!.
	...
d008eea8:	2110 2125 2125 2521 2525 2525 2525 2525     .!%!%!!%%%%%%%%%
d008eeb8:	2525 2525 2121 2525 2521 2121 2510 1021     %%%%!!%%!%!!.%!.
	...
d008eee8:	2110 2121 2525 2921 2525 2525 2525 2525     .!!!%%!)%%%%%%%%
d008eef8:	2525 2525 2125 2525 2521 2121 2510 1021     %%%%%!%%!%!!.%!.
	...
d008ef28:	1000 2121 2525 2521 2525 2525 2525 2525     ..!!%%!%%%%%%%%%
d008ef38:	2525 2525 2125 2125 2921 1021 2510 1021     %%%%%!%!!)!..%!.
	...
d008ef68:	1000 2125 2125 2921 2525 2525 2525 2525     ..%!%!!)%%%%%%%%
d008ef78:	2525 2525 2525 2125 2521 1021 2129 0010     %%%%%%%!!%!.)!..
	...
d008efa8:	2110 2125 2129 2521 2525 2525 2525 2525     .!%!)!!%%%%%%%%%
d008efb8:	2525 2525 2125 2125 2525 1021 2125 0010     %%%%%!%!%%!.%!..
	...
d008efe8:	2110 2525 2125 2925 2525 2525 2525 2525     .!%%%!%)%%%%%%%%
d008eff8:	2525 2525 2125 2125 2529 2121 2121 0010     %%%%%!%!)%!!!!..
	...
d008f028:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008f038:	2525 2925 2525 2525 2525 2121 2121 0010     %%%)%%%%%%!!!!..
	...
d008f068:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008f078:	2525 2525 2525 2525 2525 2129 2121 0010     %%%%%%%%%%)!!!..
	...
d008f0a8:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008f0b8:	2525 2525 2525 2525 2125 2121 1021 0000     %%%%%%%%%!!!!...
	...
d008f0e8:	2110 2121 2129 2925 2525 2525 2525 2525     .!!!)!%)%%%%%%%%
d008f0f8:	2525 2525 2125 2525 2121 2121 2510 1021     %%%%%!%%!!!!.%!.
	...
d008f128:	1000 2121 2125 2525 2525 2525 2525 2525     ..!!%!%%%%%%%%%%
d008f138:	2525 2525 2125 2125 2121 1021 2910 1021     %%%%%!%!!!!..)!.
	...
d008f168:	1000 2125 2125 2525 2525 2525 2525 2525     ..%!%!%%%%%%%%%%
d008f178:	2525 2525 2125 2125 2121 1021 2129 0010     %%%%%!%!!!!.)!..
	...
d008f1a8:	2110 2129 2125 2525 2525 2525 2525 2525     .!)!%!%%%%%%%%%%
d008f1b8:	2525 2525 2125 2125 2125 1021 2125 0010     %%%%%!%!%!!.%!..
	...
d008f1e8:	2110 2525 2125 2525 2525 2525 2525 2525     .!%%%!%%%%%%%%%%
d008f1f8:	2525 2525 2125 2125 2529 2121 2121 0010     %%%%%!%!)%!!!!..
	...
d008f228:	1000 2521 2125 2525 2525 2525 2525 2525     ..!%%!%%%%%%%%%%
d008f238:	2525 2525 2125 2525 2525 2121 2121 0010     %%%%%!%%%%!!!!..
	...
d008f268:	1000 2521 2125 2925 2525 2525 2525 2525     ..!%%!%)%%%%%%%%
d008f278:	2525 2525 2521 2525 2521 2125 1021 0000     %%%%!%%%!%%!!...
	...
d008f2a8:	1000 2521 2129 2525 2525 2525 2525 2525     ..!%)!%%%%%%%%%%
d008f2b8:	2525 2525 2521 2525 2521 2125 1021 0000     %%%%!%%%!%%!!...
	...
d008f2e8:	1000 2925 2529 2529 2525 2525 2525 2525     ..%))%)%%%%%%%%%
d008f2f8:	2525 2525 2521 2529 2521 2125 2121 0010     %%%%!%)%!%%!!!..
	...
d008f328:	1000 2521 2525 2525 2525 2525 2525 2525     ..!%%%%%%%%%%%%%
d008f338:	2525 2525 2521 2125 2525 2121 2121 0010     %%%%!%%!%%!!!!..
	...
d008f368:	2110 2521 2129 2525 2525 2525 2525 2525     .!!%)!%%%%%%%%%%
d008f378:	2525 2525 2521 2125 2525 2121 2121 0010     %%%%!%%!%%!!!!..
	...
d008f3a8:	1000 2521 2125 2525 2525 2525 2525 2525     ..!%%!%%%%%%%%%%
d008f3b8:	2529 2525 2521 2125 2525 2121 2121 0010     )%%%!%%!%%!!!!..
	...
d008f3e8:	1000 2521 2125 2529 2525 2525 2525 2525     ..!%%!)%%%%%%%%%
d008f3f8:	2529 2525 2521 2125 2521 2121 2110 1021     )%%%!%%!!%!!.!!.
	...
d008f428:	2110 2129 2125 2521 2525 2525 2525 2525     .!)!%!!%%%%%%%%%
d008f438:	2525 2525 2121 2125 2921 2121 2110 1021     %%%%!!%!!)!!.!!.
	...
d008f468:	2110 2125 2125 2521 2525 2525 2525 2525     .!%!%!!%%%%%%%%%
d008f478:	2525 2525 2121 2125 2521 2121 2510 1021     %%%%!!%!!%!!.%!.
	...
d008f4a8:	2110 2125 2125 2521 2525 2525 2525 2525     .!%!%!!%%%%%%%%%
d008f4b8:	2525 2525 2121 2525 2521 2121 2510 1021     %%%%!!%%!%!!.%!.
	...
d008f4e8:	2110 2121 2525 2921 2525 2525 2525 2525     .!!!%%!)%%%%%%%%
d008f4f8:	2525 2525 2125 2525 2521 2121 2510 1021     %%%%%!%%!%!!.%!.
	...
d008f528:	1000 2121 2525 2521 2525 2525 2525 2525     ..!!%%!%%%%%%%%%
d008f538:	2525 2525 2125 2125 2921 1021 2510 1021     %%%%%!%!!)!..%!.
	...
d008f568:	1000 2125 2125 2921 2525 2525 2525 2525     ..%!%!!)%%%%%%%%
d008f578:	2525 2525 2525 2125 2521 1021 2129 0010     %%%%%%%!!%!.)!..
	...
d008f5a8:	2110 2125 2129 2521 2525 2525 2525 2525     .!%!)!!%%%%%%%%%
d008f5b8:	2525 2525 2125 2125 2525 1021 2125 0010     %%%%%!%!%%!.%!..
	...
d008f5e8:	2110 2525 2125 2925 2525 2525 2525 2525     .!%%%!%)%%%%%%%%
d008f5f8:	2525 2525 2125 2125 2529 2121 2121 0010     %%%%%!%!)%!!!!..
	...
d008f628:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008f638:	2525 2925 2525 2525 2525 2121 2121 0010     %%%)%%%%%%!!!!..
	...
d008f668:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008f678:	2525 2525 2525 2525 2525 2129 2121 0010     %%%%%%%%%%)!!!..
	...
d008f6a8:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008f6b8:	2525 2525 2525 2525 2125 2121 1021 0000     %%%%%%%%%!!!!...
	...
d008f6e8:	2110 2121 2129 2925 2525 2525 2525 2525     .!!!)!%)%%%%%%%%
d008f6f8:	2525 2525 2125 2525 2121 2121 2510 1021     %%%%%!%%!!!!.%!.
	...
d008f728:	1000 2121 2125 2525 2525 2525 2525 2525     ..!!%!%%%%%%%%%%
d008f738:	2525 2525 2125 2125 2121 1021 2910 1021     %%%%%!%!!!!..)!.
	...
d008f768:	1000 2125 2125 2525 2525 2525 2525 2525     ..%!%!%%%%%%%%%%
d008f778:	2525 2525 2125 2125 2121 1021 2129 0010     %%%%%!%!!!!.)!..
	...
d008f7a8:	2110 2129 2125 2525 2525 2525 2525 2525     .!)!%!%%%%%%%%%%
d008f7b8:	2525 2525 2125 2125 2125 1021 2125 0010     %%%%%!%!%!!.%!..
	...
d008f7e8:	2110 2525 2125 2525 2525 2525 2525 2525     .!%%%!%%%%%%%%%%
d008f7f8:	2525 2525 2125 2125 2529 2121 2121 0010     %%%%%!%!)%!!!!..
	...
d008f828:	1000 2521 2125 2525 2525 2525 2525 2525     ..!%%!%%%%%%%%%%
d008f838:	2525 2525 2125 2525 2525 2121 2121 0010     %%%%%!%%%%!!!!..
	...
d008f868:	1000 2521 2125 2925 2525 2525 2525 2525     ..!%%!%)%%%%%%%%
d008f878:	2525 2525 2521 2525 2521 2125 1021 0000     %%%%!%%%!%%!!...
	...
d008f8a8:	1000 2521 2129 2525 2525 2525 2525 2525     ..!%)!%%%%%%%%%%
d008f8b8:	2525 2525 2521 2525 2521 2125 1021 0000     %%%%!%%%!%%!!...
	...
d008f8e8:	1000 2925 2529 2529 2525 2525 2525 2525     ..%))%)%%%%%%%%%
d008f8f8:	2525 2525 2521 2529 2521 2129 2121 0010     %%%%!%)%!%)!!!..
	...
d008f928:	1000 2521 2525 2525 2525 2525 2525 2525     ..!%%%%%%%%%%%%%
d008f938:	2525 2525 2521 2125 2525 2121 2121 0010     %%%%!%%!%%!!!!..
	...
d008f968:	2110 2521 2129 2525 2525 2525 2525 2525     .!!%)!%%%%%%%%%%
d008f978:	2525 2525 2521 2125 2925 2121 2121 0010     %%%%!%%!%)!!!!..
	...
d008f9a8:	1000 2521 2125 2525 2525 2525 2525 2525     ..!%%!%%%%%%%%%%
d008f9b8:	2529 2525 2521 2125 2525 2121 2121 0010     )%%%!%%!%%!!!!..
	...
d008f9e8:	1000 2521 2125 2529 2525 2525 2525 2525     ..!%%!)%%%%%%%%%
d008f9f8:	2529 2525 2521 2125 2521 2121 2110 1021     )%%%!%%!!%!!.!!.
	...
d008fa28:	2110 2129 2125 2521 2525 2525 2525 2525     .!)!%!!%%%%%%%%%
d008fa38:	2525 2525 2121 2125 2125 2525 2110 1021     %%%%!!%!%!%%.!!.
	...
d008fa68:	2110 2125 2125 2521 2525 2525 2525 2525     .!%!%!!%%%%%%%%%
d008fa78:	2525 2525 2121 2125 2521 1025 2125 1021     %%%%!!%!!%%.%!!.
	...
d008faa8:	2110 2125 2125 2521 2525 2525 2525 2525     .!%!%!!%%%%%%%%%
d008fab8:	2525 2525 2121 2525 2521 1010 2510 1021     %%%%!!%%!%...%!.
	...
d008fae8:	2110 2121 2525 2921 2525 2525 2525 2525     .!!!%%!)%%%%%%%%
d008faf8:	2525 2525 2125 2525 2510 1010 2510 1021     %%%%%!%%.%...%!.
	...
d008fb28:	1000 2121 2525 2521 2525 2525 2525 2525     ..!!%%!%%%%%%%%%
d008fb38:	2525 2525 2125 2125 2510 1029 2510 1025     %%%%%!%!.%)..%%.
	...
d008fb68:	1000 2125 2125 2921 2525 2525 2525 2525     ..%!%!!)%%%%%%%%
d008fb78:	2525 2525 2525 2125 1021 2525 2110 0010     %%%%%%%!!.%%.!..
	...
d008fba8:	2110 2125 2129 2521 2525 2525 2525 2525     .!%!)!!%%%%%%%%%
d008fbb8:	2525 2525 2125 2125 2125 1010 2121 0010     %%%%%!%!%!..!!..
	...
d008fbe8:	2110 2525 2125 2925 2525 2525 2525 2525     .!%%%!%)%%%%%%%%
d008fbf8:	2525 2525 2125 2125 2125 1021 2121 0010     %%%%%!%!%!!.!!..
	...
d008fc28:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008fc38:	2525 2925 2525 2525 2529 2121 2121 0010     %%%)%%%%)%!!!!..
	...
d008fc68:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008fc78:	2525 2525 2525 2525 2525 2121 2121 0010     %%%%%%%%%%!!!!..
	...
d008fca8:	1000 2521 2521 2529 2525 2525 2525 2525     ..!%!%)%%%%%%%%%
d008fcb8:	2525 2525 2525 2525 2125 2121 1021 0000     %%%%%%%%%!!!!...
	...

d008fcd8 <gfx_bubgutwut>:
	...
d008fd58:	0000 1100 0011 0000 0000 0000 0000 0000     ................
	...
d008fd70:	0000 3411 1030 1011 0000 0000 0000 0000     ...40...........
d008fd80:	0000 2d70 f4f4 0070 0000 3410 3030 3434     ..p-..p....40044
d008fd90:	1110 0000 0000 0000 7000 f42d 2d1d 2df4     .........p-..-.-
d008fda0:	102d 3034 3030 3030 3434 0011 0000 0000     -.40000044......
d008fdb0:	2d00 702d f470 1d2d 0af4 3411 3030 3430     .--pp.-....40004
d008fdc0:	3430 1034 0000 0000 f400 0070 7074 7010     044.......p.tp.p
d008fdd0:	7070 1170 3030 3430 3434 1134 0000 0000     ppp.0004444.....
d008fde0:	2d00 0000 0070 1100 7011 1010 3030 3034     .-..p....p..0040
d008fdf0:	1034 0011 0000 0000 0000 0000 0000 0000     4...............
d008fe00:	8110 1111 3411 3430 3434 0010 0000 0000     .....40444......
d008fe10:	0000 0000 0000 1000 1171 baf7 1110 1010     ........q.......
d008fe20:	3430 0011 0000 0000 0000 0000 bf11 07be     04..............
d008fe30:	1011 be1a 2d10 70f4 1010 1030 0000 0000     .....-.p..0.....
d008fe40:	0000 0000 ba10 7d7d 1a7d 111a 74f4 5c58     ......}}}....tX\
d008fe50:	7070 3010 0010 0000 0000 0000 0000 ba10     pp.0............
d008fe60:	baba 10be 7070 7ef7 702d 1011 1030 0000     ....pp.~-p..0...
d008fe70:	0000 0000 0711 7d07 ba07 797d 8110 816d     .......}..}y..m.
d008fe80:	1d70 3411 3010 0010 0000 1000 7d6d 7d81     p..4.0......m}.}
d008fe90:	7d7d 7d81 7d81 5c75 1058 1134 3434 1130     }}.}.}u\X.4.440.
d008fea0:	0000 0000 1011 3434 6d71 817d 7179 5c10     ......44qm}.yq.\
d008feb0:	105c 3411 3434 3034 0000 0000 0000 1010     \..44440........
d008fec0:	7979 797d 106d 1111 0010 1000 1011 1110     yy}ym...........
	...
d008fed8:	7910 7579 1058 0011 0000 0000 0000 0000     .yyuX...........
	...
d008fef0:	1000 7579 0010 0000 0000 0000 0000 0000     ..yu............
	...
d008ff08:	1100 797d 0010 0000 0000 0000 0000 0000     ..}y............
	...
d008ff20:	7d12 797d 0011 0000 0000 0000 0000 0000     .}}y............
	...
d008ff38:	0710 757d 0010 0000 0000 0000 0000 0000     ..}u............
	...
d008ff50:	7512 7585 0010 0000 0000 0000 0000 0000     .u.u............
	...
d008ff68:	1000 757d 0011 0000 0000 0000 0000 0000     ..}u............
	...
d008ff80:	1000 7581 0010 0000 0000 0000 0000 0000     ...u............
	...
d008ff98:	7910 7981 0010 0000 0000 0000 0000 0000     .y.y............
	...
d008ffb0:	0710 7181 0010 0000 0000 0000 0000 0000     ...q............
	...
d008ffc8:	8111 797d 0011 0000 0000 0000 0000 0000     ..}y............
d008ffd8:	0000 0000 0000 1000 817e 717d 0010 0000     ........~.}q....
	...
d008fff4:	0000 ba11 7d7d a611 0010 0000 0000 0000     ....}}..........
	...
d009000c:	1100 7d11 1081 a6a6 10a6 0000 0000 0000     ...}............
	...
d0090024:	1111 0471 107d 1022 a610 0010 0000 0000     ..q.}.".........
	...
d009003c:	1011 716d 1810 8211 101a 0010 0000 0000     ..mq............
d009004c:	0000 0000 0000 1000 1818 1110 10ac 7d6d     ..............m}
d009005c:	6dbf 1017 0000 0000 0000 0000 0000 1000     .m..............
d009006c:	1818 1817 1118 7d71 8107 1118 0000 0000     ......q}........
d009007c:	0000 0000 0000 1100 18a6 1817 5c11 817d     .............\}.
d009008c:	7d1a 1071 0000 0000 0000 0000 0000 1810     .}q.............
d009009c:	a6ac 1818 5811 7d7d 71ba 116d 0000 0000     .....X}}.qm.....
d00900ac:	0000 0000 0000 ac10 1818 1818 1018 7971     ..............qy
d00900bc:	5c1a 1071 0000 0000 0000 0000 0000 1810     .\q.............
d00900cc:	1718 18a6 1018 815c 58ba 115c 0000 0000     ......\..X\.....
d00900dc:	0000 0000 0000 1810 1818 17a6 1718 7d11     ...............}
d00900ec:	10ba 1058 0011 0000 0000 0000 0000 ac10     ..X.............
d00900fc:	1817 18a6 1818 8117 107d 1810 0010 0000     ........}.......
d009010c:	0000 0000 0000 1010 1818 18ac 1817 7d18     ...............}
d009011c:	117d 1818 0010 0000 0000 0000 0000 1011     }...............
d009012c:	1710 1818 1818 7d11 107d 1818 0011 0000     .......}}.......
d009013c:	0000 0000 0000 ac10 1818 1818 1718 8111     ................
d009014c:	117d 1810 0010 0000 0000 0000 0000 ac11     }...............
d009015c:	1817 1718 1717 8110 ba81 1071 0010 0000     ..........q.....
d009016c:	0000 0000 0000 1811 1817 1817 1018 7ebf     ...............~
d009017c:	8107 bfba 0011 0000 0000 0000 0000 ac10     ................
d009018c:	1818 1817 1018 babf 8207 8107 0010 0000     ................
d009019c:	0000 0000 0000 1810 1822 1717 1117 7975     ........".....uy
d00901ac:	81ba 717d 0010 0000 0000 0000 0000 ac10     ..}q............
d00901bc:	ac11 1822 1718 7110 7181 5875 0010 0000     .."....q.quX....
d00901cc:	0000 0000 0000 ac11 1018 ac22 1718 1018     ..........".....
d00901dc:	5c5c 1011 0010 0000 0000 0000 0000 a610     \\..............
d00901ec:	1118 17a6 1818 1718 1010 1110 0025 0000     ............%...
d00901fc:	0000 0000 0000 a610 1018 18a6 1818 1818     ................
d009020c:	1717 1018 0000 0000 0000 0000 0000 1810     ................
d009021c:	1018 18ac 1818 1818 1818 1117 0000 0000     ................
d009022c:	0000 0000 0000 1811 1118 17ac 1818 1717     ................
d009023c:	1817 1117 0000 0000 0000 0000 0000 ac10     ................
d009024c:	1718 ac10 1818 1718 1718 1118 0000 0000     ................
d009025c:	0000 0000 0000 1100 1818 ac11 1818 1817     ................
d009026c:	1818 1018 0000 0000 0000 0000 0000 1000     ................
d009027c:	1817 ac10 1818 1718 1818 1017 0000 0000     ................
d009028c:	0000 0000 0000 1111 17ac ac10 1818 1818     ................
d009029c:	1817 1018 0000 0000 0000 0000 1000 1010     ................
d00902ac:	1011 ac18 1717 1718 1818 1818 0010 0000     ................
d00902bc:	0000 0000 bf11 1086 1010 2211 1818 1817     ..........."....
d00902cc:	1718 1817 0010 0000 0000 0000 7d10 bf11     .............}..
d00902dc:	11ba 1110 1110 1010 1111 1010 0011 0000     ................
d00902ec:	0000 0000 6d10 7911 7d7d 8282 ba7d 7d82     .....m.y}}..}..}
d00902fc:	077d 7182 2510 0000 0000 0000 5811 6d10     }..q.%.......X.m
d009030c:	7d6d 0781 82be ba07 7d81 817e 1379 0000     m}.......}~.y...
d009031c:	0000 0000 1000 5c10 71be 6dbe 7911 7979     .......\.q.m.yyy
d009032c:	7975 7579 1158 0000 0000 0000 0000 1100     uyyuX...........
d009033c:	1010 1111 1000 1011 1010 1110 1010 0000     ................
d009034c:	0000 0000                                   ....

d0090350 <gfx_bubguy1>:
	...
d0090428:	0000 1010 0000 0000 0000 0000 0000 0000     ................
	...
d0090444:	1010 3010 1034 0000 0000 0000 0000 0000     ...04...........
	...
d009045c:	0000 1000 3411 3034 3430 0010 0000 2d70     .....44004....p-
d009046c:	f4f4 006c 0000 0000 0000 0000 0000 1000     ..l.............
d009047c:	3434 3030 3030 3430 f411 1d2d 2d2d 2d1d     44000004..-.--.-
d009048c:	0070 0000 0000 0000 0000 1200 3434 3430     p...........4404
d009049c:	3030 3430 7011 f42d f42d 6c70 1d2d 0000     0004.p-.-.pl-...
	...
d00904b4:	3410 3434 3034 3030 7010 706c 106c 7070     .4444000.plpl.pp
d00904c4:	7000 00f4 0000 0000 0000 0000 0000 1010     .p..............
d00904d4:	3034 3034 1030 6c11 1110 0000 0070 f400     40400..l....p...
	...
d00904ec:	0000 1000 3434 3034 1034 1010 117d 0000     ....44404...}...
	...
d009050c:	3410 1130 1010 ba10 101a 1071 0000 0000     .40.......q.....
	...
d0090528:	3010 1010 1d70 102d bf1a 1010 ba07 101a     .0..p.-.........
	...
d0090544:	3011 6c10 5870 7058 102d 1a1a 7d81 7e7d     .0.lpXXp-....}}~
d0090554:	0011 0000 0000 0000 0000 0000 3010 1010     .............0..
d0090564:	f470 ba82 6c70 0711 baba 107e 0000 0000     p...pl....~.....
	...
d009057c:	3010 3410 1d11 8170 8175 7d10 7e81 817e     .0.4..p.u..}.~~.
d009058c:	0707 0010 0000 0000 0000 0000 3010 3434     .............044
d009059c:	3411 5c10 6d58 7d81 7d81 8181 817d 6d81     .4.\Xm.}.}..}..m
d00905ac:	0010 0000 0000 0000 3000 3434 3434 1010     .........04444..
d00905bc:	585c 7110 7d79 7181 346d 1034 0011 0000     \X.qy}.qm44.....
d00905cc:	0000 0000 0000 1110 1011 0011 1100 1110     ................
d00905dc:	7110 8175 7575 1111 0000 0000 0000 0000     .qu.uu..........
	...
d00905f8:	1010 7534 7975 0010 0000 0000 0000 0000     ..4uuy..........
	...
d0090614:	0000 1000 7575 0010 0000 0000 0000 0000     ....uu..........
	...
d0090634:	7510 1081 0000 0000 0000 0000 0000 0000     .u..............
	...
d0090650:	1000 7d79 1081 0000 0000 0000 0000 0000     ..y}............
	...
d009066c:	0000 7511 0781 0010 0000 0000 0000 0000     ...u............
	...
d0090688:	0000 1000 8175 1175 0000 0000 0000 0000     ....u.u.........
	...
d00906a8:	7511 1081 0000 0000 0000 0000 0000 0000     .u..............
	...
d00906c4:	1000 7d79 0010 0000 0000 0000 0000 0000     ..y}............
	...
d00906e0:	0000 7510 757d 0010 0000 0000 0000 0000     ...u}u..........
	...
d00906fc:	0000 1000 8179 10ba 0000 0000 0000 0000     ....y...........
	...
d009071c:	7910 7d7d 0010 0000 0000 0000 0000 0000     .y}}............
	...
d0090738:	1000 7d71 7e7d 0012 0000 0000 0000 0000     ..q}}~..........
	...
d0090754:	0000 1110 8110 107d 0000 0000 0000 0000     ......}.........
	...
d0090770:	0000 a610 ac22 ba10 1171 0000 0000 0000     ...."...q.......
	...
d009078c:	0000 a610 7158 2271 7158 105c 0000 0000     ....Xqq"Xq\.....
	...
d00907a8:	0000 1100 7122 7e81 1107 7171 0010 0000     ...."q.~..qq....
	...
d00907c4:	0000 1000 ac17 826d 1a7d 1011 a66d 0010     ......m.}...m...
	...
d00907e4:	2210 815c 817d 077d ac10 1018 0000 0000     ."\.}.}.........
	...
d0090800:	1000 7122 717d 7d7d 1007 1818 0011 0000     .."q}q}}........
	...
d009081c:	0000 ac11 816d 5c58 077d 107e 1718 0010     ....m.X\}.~.....
	...
d0090838:	0000 1000 7118 717d 7110 077d 1710 1010     .....q}q.q}.....
	...
d0090858:	1711 7575 1079 8158 0781 1810 1010 0000     ..uuy.X.........
	...
d0090874:	1000 6d17 7575 105c 7d71 1007 1810 0010     ...muu\.q}......
	...
d0090890:	0000 1810 6d58 5c71 1117 7d75 1182 1010     ....Xmq\..u}....
d00908a0:	1010 0000 0000 0000 0000 0000 0000 1000     ................
d00908b0:	1018 5c5c 1811 5818 7d81 817d 7d07 1271     ..\\...X.}}..}q.
	...
d00908cc:	1810 1818 1717 1818 7510 8181 8107 7d07     .........u.....}
d00908dc:	0010 0000 0000 0000 0000 0000 1000 1818     ................
d00908ec:	1817 1717 1818 7d5c 7d81 1a07 1010 0000     ......\}.}......
	...
d0090904:	0000 1810 1817 1817 1718 1017 8175 bf7d     ............u.}.
d0090914:	7d7e 0010 0000 0000 0000 0000 0000 1100     ~}..............
d0090924:	1717 1818 1818 1818 7110 827d 6d1a 1271     .........q}..mq.
	...
d0090940:	1100 1718 1818 1717 1817 8111 6dba 106d     .............mm.
	...
d009095c:	0000 1810 1717 1818 1717 1018 716d 106d     ............mqm.
d009096c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d009097c:	1010 1818 1818 1718 1018 1010 1018 0000     ................
	...
d0090998:	1100 1010 1710 1718 1818 1818 a618 0010     ................
	...
d00909b4:	0000 1010 1011 1810 1817 1817 22ac 10a6     ............."..
	...
d00909d4:	1810 1818 1818 1817 1817 2222 0010 0000     ..........""....
	...
d00909ec:	0000 1000 1710 1717 1718 1817 1717 ac18     ................
d00909fc:	0010 0000 0000 0000 0000 0000 0000 1000     ................
d0090a0c:	6d58 1810 1817 1818 1817 1818 1018 0000     Xm..............
	...
d0090a28:	6d10 7d81 1810 1818 1817 1718 1217 0000     .m.}............
	...
d0090a44:	1000 7d6d 7d81 1811 1718 1818 1010 0000     ..m}.}..........
	...
d0090a60:	0000 1000 8181 1a7d 1810 1818 1011 0000     ......}.........
	...
d0090a80:	6d10 7d81 7e1a 1810 1711 0010 0000 0000     .m.}.~..........
	...
d0090a9c:	1000 7d11 7d81 7df7 1111 1010 1100 0010     ...}.}.}........
	...
d0090ab8:	0000 1010 8171 7d81 107d 6d5c 1110 827d     ....q..}}.\m..}.
d0090ac8:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d0090ad8:	1010 7d7d 8181 107d 6d71 7d7d 7d81 0010     ..}}..}.qm}}.}..
	...
d0090af4:	1000 115c 7d71 7d7d 5c10 715c 7971 1175     ..\.q}}}.\\qqyu.
	...
d0090b10:	0000 1010 1058 1011 1110 1010 1010 1110     ....X...........
d0090b20:	0000 0000                                   ....

d0090b24 <gfx_bubguy2>:
	...
d0090be4:	0000 1100 0010 0000 0000 0000 0000 0000     ................
	...
d0090c08:	1010 3010 1034 0000 0000 0000 0000 0000     ...04...........
	...
d0090c28:	0000 1010 3434 3030 1034 0000 0000 0000     ....44004.......
	...
d0090c4c:	1100 3434 3030 3030 3430 f410 702d f42d     ..44000004..-p-.
d0090c5c:	702d 0000 0000 0000 0000 0000 0000 0000     -p..............
d0090c6c:	0000 0000 3410 3034 3034 3030 1134 f470     .....44040004.p.
d0090c7c:	f4f4 2d2d 2df4 0070 0000 0000 0000 0000     ..--.-p.........
	...
d0090c94:	3410 3434 3034 3030 6c10 6c74 f46c 6c2d     .4444000.ltll.-l
d0090ca4:	f474 00f4 0000 0000 0000 0000 0000 0000     t...............
d0090cb4:	0000 0000 1000 3410 3430 3030 1110 106c     .......40400..l.
d0090cc4:	1010 6c74 7000 002d 0000 0000 0000 0000     ..tl.p-.........
	...
d0090cdc:	1000 3434 3034 1034 1110 1081 0000 7000     ..44404........p
d0090cec:	0000 00f4 0000 0000 0000 0000 0000 0000     ................
d0090cfc:	0000 0000 1000 3034 1010 1010 1abe 6d10     ......40.......m
d0090d0c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0090d24:	3010 1010 f470 102d 1abe 1010 beba 101a     .0..p.-.........
	...
d0090d44:	0000 1000 1130 6c70 5c58 f46c 1a10 7d1a     ....0.plX\l....}
d0090d54:	7d7d 1007 0000 0000 0000 0000 0000 0000     }}..............
d0090d64:	0000 0000 0000 3011 1010 2d6c 1a82 746c     .......0..l-..lt
d0090d74:	0710 bebe 10ba 0000 0000 0000 0000 0000     ................
	...
d0090d8c:	1000 1030 1134 702d 757d 117d 817d baba     ..0.4.-p}u}.}...
d0090d9c:	077d 1082 0000 0000 0000 0000 0000 0000     }...............
d0090dac:	0000 0000 3011 3434 3410 5c10 6d5c 7d81     .....044.4.\\m.}
d0090dbc:	7d81 7d7d 7d81 717d 0010 0000 0000 0000     .}}}.}}q........
	...
d0090dd4:	3430 3434 1034 5810 1058 796d 7d7d 756d     04444..XX.my}}mu
d0090de4:	3434 1011 0000 0000 0000 0000 0000 0000     44..............
d0090df4:	0000 0000 1010 1010 0010 1000 1010 7110     ...............q
d0090e04:	7d79 7575 1010 0000 0000 0000 0000 0000     y}uu............
	...
d0090e24:	1100 3410 7575 1075 0000 0000 0000 0000     ...4uuu.........
	...
d0090e48:	0000 1100 7979 0010 0000 0000 0000 0000     ....yy..........
	...
d0090e6c:	0000 1000 8175 0010 0000 0000 0000 0000     ....u...........
	...
d0090e90:	0000 1000 7d79 1081 0000 0000 0000 0000     ....y}..........
	...
d0090eb4:	0000 1000 8175 107e 0000 0000 0000 0000     ....u.~.........
	...
d0090ed8:	0000 1100 7975 1079 0000 0000 0000 0000     ....uyy.........
	...
d0090efc:	0000 1000 8179 0010 0000 0000 0000 0000     ....y...........
	...
d0090f20:	0000 1100 7d75 0010 0000 0000 0000 0000     ....u}..........
	...
d0090f44:	0000 1000 7d75 1175 0000 0000 0000 0000     ....u}u.........
	...
d0090f68:	0000 1000 7d75 1007 0000 0000 0000 0000     ....u}..........
	...
d0090f8c:	0000 1000 7d75 1081 0000 0000 0000 0000     ....u}..........
	...
d0090fb0:	0000 1000 8171 ba7d 0011 0000 0000 0000     ....q.}.........
	...
d0090fd4:	0000 1100 1111 077d 0010 0000 0000 0000     ......}.........
	...
d0090ff8:	0000 1010 a6a6 8110 117d 0000 0000 0000     ........}.......
	...
d009101c:	0000 a610 ac10 10a6 116d 0000 0000 0000     ........m.......
	...
d0091040:	1000 7da6 1082 10a6 1071 0000 0000 0000     ...}....q.......
	...
d0091064:	1000 8281 0707 a610 7110 0010 0000 0000     .........q......
	...
d0091088:	1000 1a7d 07ba 1081 6da6 0010 0000 0000     ..}......m......
	...
d00910ac:	1810 1a81 6dba 7581 ac10 10ac 0000 0000     .....m.u........
	...
d00910d0:	1710 817d 6d7e 6d79 1710 1018 0000 0000     ..}.~mym........
	...
d00910f4:	1810 7d75 6dba 6d75 1811 1017 0000 0000     ..u}.mum........
	...
d0091118:	6d10 7d75 6dba 7158 1810 ac18 0011 0000     .mu}.mXq........
	...
d009113c:	6d10 815c 7582 6d5c ac10 1718 0010 0000     .m\..u\m........
	...
d0091160:	6d10 6d5c 7d07 7158 1710 1818 1010 0000     .m\m.}Xq........
	...
d0091184:	7110 5c6d 7d07 7158 1711 1718 1010 0000     .qm\.}Xq........
	...
d00911a8:	5811 1075 ba7e 1010 1718 1718 7111 0011     .Xu.~........q..
	...
d00911cc:	1110 1010 07ba 1011 2218 1818 1018 0010     ........."......
	...
d00911ec:	0000 1300 1717 1018 ba7e 1810 1817 1817     ........~.......
d00911fc:	10ac 0010 0000 0000 0000 0000 0000 0000     ................
d009120c:	0000 0000 0000 1000 1718 1017 0781 1810     ................
d009121c:	1718 1817 18ac 1018 0010 0000 0000 0000     ................
	...
d0091234:	0000 1000 1817 0711 7d7d 117d 1817 1717     ........}}}.....
d0091244:	a622 a6ac 10a6 0000 0000 0000 0000 0000     "...............
d0091254:	0000 0000 0000 1000 1018 ba7d 7d7d 10ba     ..........}.}}..
d0091264:	1817 1818 1817 22a6 a6a6 0010 0000 0000     ......."........
	...
d009127c:	0000 1000 1018 07ba 8107 077d 1810 1718     ..........}.....
d009128c:	1818 a6ac a618 0010 0000 0000 0000 0000     ................
d009129c:	0000 0000 0000 1000 1017 7e1a 7d7e 7d7d     ...........~~}}}
d00912ac:	1810 1717 1817 1718 aca6 10a6 1000 0011     ................
	...
d00912c4:	0000 1100 1018 1a81 811a 816d 1710 1818     ..........m.....
d00912d4:	1718 1818 a618 11ac 1a10 1081 0000 0000     ................
d00912e4:	0000 0000 0000 1000 1017 7d6d 6dba 1158     ..........m}.mX.
d00912f4:	1810 1818 1817 1718 1817 17ac 6d81 1158     .............mX.
	...
d009130c:	0000 1000 1818 1110 6d7d 1010 1010 1817     ........}m......
d009131c:	1717 1718 1818 1018 ba7d 107d 0000 0000     ........}.}.....
d009132c:	0000 0000 0000 1710 1718 1717 1010 1710     ................
d009133c:	1111 1010 1810 1718 1717 1018 6d07 1071     .............mq.
	...
d0091354:	0000 1810 1818 1818 1818 1818 0010 0000     ................
d0091364:	1010 1818 1818 7e17 07ba 1079 0000 0000     .......~..y.....
d0091374:	0000 0000 0000 1810 1818 1817 1718 1017     ................
d0091384:	0000 0000 1000 1817 1718 7d10 8182 1071     ...........}..q.
	...
d009139c:	1000 1817 1817 1718 1818 1018 0000 0000     ................
d00913ac:	1000 1718 1018 7d7d 6d7d 1058 0000 0000     ......}}}mX.....
d00913bc:	0000 0000 1000 1818 1718 1718 1718 0010     ................
d00913cc:	0000 0000 1100 1018 8110 7d81 6d7d 0010     ...........}}m..
	...
d00913e4:	1100 1717 1718 1818 1817 0010 0000 0000     ................
d00913f4:	0000 1010 7d7d 7d7d 106d 0000 0000 0000     ....}}}}m.......
d0091404:	0000 1000 1011 1110 1710 1718 1018 0000     ................
d0091414:	0000 0000 0000 8110 7d81 717d 0010 0000     .........}}q....
d0091424:	0000 0000 0000 1000 7d81 5c81 105c 1011     .........}.\\...
d0091434:	1011 0000 0000 0000 0000 6d10 6d81 106d     ...........m.mm.
	...
d009144c:	0000 7d10 817d 6d81 7d81 7d7d 0781 0011     ...}}..m.}}}....
d009145c:	0000 0000 0000 5810 7171 105c 0000 0000     .......Xqq\.....
d009146c:	0000 0000 1000 817d 7d7d 817d 7d7d 7d7d     ......}.}}}.}}}}
d009147c:	7d81 107d 0000 0000 0000 1000 5c5c 0011     .}}.........\\..
	...
d0091494:	1000 7d79 6d71 5c71 5c5c 6d6d 7d75 107d     ..y}qmq\\\mmu}}.
	...
d00914ac:	1010 0000 0000 0000 0000 0000 1000 1010     ................
d00914bc:	1010 1011 1010 1011 1010 0010 0000 0000     ................
	...

d00914d8 <gfx_bubguy3>:
	...
d00915e0:	0000 1000 0010 0000 0000 0000 0000 0000     ................
	...
d0091604:	1010 3010 1034 0000 0000 0000 0000 0000     ...04...........
	...
d0091624:	0000 1111 3434 3030 1034 0000 7000 f42d     ....44004....p-.
d0091634:	70f4 0000 0000 0000 0000 0000 0000 0000     .p..............
d0091644:	0000 0000 1000 3434 3030 3030 3430 f411     ......44000004..
d0091654:	1d2d 2d2d 2d1d 0070 0000 0000 0000 0000     -.--.-p.........
	...
d009166c:	3411 3034 3034 3030 1134 2d70 2df4 70f4     .44040004.p-.-.p
d009167c:	2d70 001d 0000 0000 0000 0000 0000 0000     p-..............
d009168c:	0000 0000 3410 3434 3034 3030 7010 7070     .....4444000.ppp
d009169c:	1070 7070 7000 00f4 0000 0000 0000 0000     p.pp.p..........
	...
d00916b4:	1000 3410 3430 3030 1110 1070 0011 7000     ...40400..p....p
d00916c4:	0000 00f4 0000 0000 0000 0000 0000 0000     ................
d00916d4:	0000 0000 1000 3434 3034 1034 1010 117d     ......44404...}.
	...
d00916fc:	1000 3034 1011 1010 1aba 7510 0010 0000     ..40.......u....
	...
d0091720:	3010 1010 1d70 102d bf1a 1010 1a07 11bf     .0..p.-.........
	...
d0091740:	0000 1100 1030 7070 5858 2d70 1a10 811a     ....0.ppXXp-....
d0091750:	817d 117e 0000 0000 0000 0000 0000 0000     }.~.............
d0091760:	0000 0000 0000 3010 1010 f470 babe 7070     .......0..p...pp
d0091770:	0711 ba1a 107e 0000 0000 0000 0000 0000     ....~...........
	...
d0091788:	1000 1030 1134 701d 7181 107d 817d 7e7e     ..0.4..p.q}.}.~~
d0091798:	0781 1007 0000 0000 0000 0000 0000 0000     ................
d00917a8:	0000 0000 3010 3434 3411 5c10 6d58 7d7d     .....044.4.\Xm}}
d00917b8:	7d81 7d81 7d7d 6d81 0010 0000 0000 0000     .}.}}}.m........
	...
d00917d0:	3430 3434 1034 5c10 1058 7971 817d 6d71     04444..\X.qy}.qm
d00917e0:	3434 1110 0000 0000 0000 0000 0000 0000     44..............
d00917f0:	0000 0000 1110 1111 0011 1100 1110 6d10     ...............m
d0091800:	8179 7979 1111 0000 0000 0000 0000 0000     y.yy............
	...
d0091820:	1000 3410 7579 1079 0000 0000 0000 0000     ...4yuy.........
	...
d0091844:	0000 1000 7579 0010 0000 0000 0000 0000     ....yu..........
	...
d0091868:	0000 1000 7d79 0010 0000 0000 0000 0000     ....y}..........
	...
d009188c:	0000 1000 7d79 107d 0000 0000 0000 0000     ....y}}.........
	...
d00918b0:	0000 1100 8179 1007 0000 0000 0000 0000     ....y...........
	...
d00918d4:	0000 1000 8179 1179 0000 0000 0000 0000     ....y.y.........
	...
d00918f8:	0000 1000 8179 0010 0000 0000 0000 0000     ....y...........
	...
d009191c:	0000 1100 7d79 0010 0000 0000 0000 0000     ....y}..........
	...
d0091940:	0000 1000 7d79 1079 0000 0000 0000 0000     ....y}y.........
	...
d0091964:	0000 1000 7d79 1007 0000 0000 0000 0000     ....y}..........
	...
d0091988:	0000 1000 8171 107d 0000 0000 0000 0000     ....q.}.........
	...
d00919ac:	0000 1100 7d71 077d 0013 0000 0000 0000     ....q}}.........
	...
d00919d0:	0000 1100 7d71 8281 0010 0000 0000 0000     ....q}..........
	...
d00919f4:	0000 1110 8110 7d7d 0010 0000 0000 0000     ......}}........
	...
d0091a18:	0000 a610 10a6 7d7d 10ba 0000 0000 0000     ......}}........
	...
d0091a3c:	1000 115e a610 8110 1081 0010 0000 0000     ..^.............
	...
d0091a60:	1000 077e 11ba 7d10 7181 1111 0000 0000     ..~....}.q......
	...
d0091a84:	1000 fb7e 077d 11ac 6d71 1010 0000 0000     ..~.}...qm......
	...
d0091aa8:	1011 81f7 717d ac11 1010 1818 0011 0000     ....}q..........
	...
d0091acc:	8110 7d7e 717d 1710 1818 1818 0010 0000     ..~}}q..........
	...
d0091af0:	0710 7d07 6d5c 115c 1718 1718 0010 0000     ...}\m\.........
	...
d0091b10:	0000 1300 7e7d 797d 7d5c 1058 1818 2218     ....}~}y\}X...."
d0091b20:	1118 0000 0000 0000 0000 0000 0000 0000     ................
d0091b30:	0000 0000 0000 1000 ba7e 1079 7d7d 1710     ........~.y.}}..
d0091b40:	ac18 18ac 1018 1011 587d 0000 0000 0000     ........}X......
	...
d0091b58:	0000 7d10 7dbe 5810 5c71 1810 1817 1718     ...}.}.Xq\......
d0091b68:	1018 7d6d 077e 101a 0000 0000 0000 0000     ..m}~...........
d0091b78:	0000 0000 0000 8211 797e 7910 1079 1718     ........~y.yy...
d0091b88:	1818 1718 1018 1058 1010 117e 0000 0000     ......X...~.....
d0091b98:	0000 0000 0000 1000 1010 7dba 1079 715c     ...........}y.\q
d0091ba8:	1158 1817 2218 1817 1018 715c 7d11 10be     X...."....\q.}..
d0091bb8:	0010 0000 0000 0000 0000 7d10 7d81 797d     ...........}.}}y
d0091bc8:	1010 1010 1810 1817 1818 1818 1118 5810     ...............X
d0091bd8:	1010 7e10 0010 0000 0000 0000 1000 7e81     ...~...........~
d0091be8:	7e7e 107d 1811 1711 1818 1817 1717 1017     ~~}.............
d0091bf8:	1010 5c10 1010 1071 0000 0000 0000 0000     ...\..q.........
d0091c08:	1000 1a81 7e07 8182 1010 1718 1818 1718     .....~..........
d0091c18:	1818 1818 1017 1011 6d5c 0010 0000 0000     ........\m......
d0091c28:	0000 0000 1100 816d 071a 7510 1158 1717     ......m....uX...
d0091c38:	1717 1718 1817 1818 1018 0000 1110 0000     ................
	...
d0091c50:	0000 7110 817d 5810 1010 1818 1718 1718     ...q}..X........
d0091c60:	1817 1717 1818 0010 0000 0000 0000 0000     ................
d0091c70:	0000 0000 0000 1000 7175 1058 1711 1818     ........uqX.....
d0091c80:	1717 1818 1818 1718 1718 0010 0000 0000     ................
	...
d0091c9c:	5811 105c 1818 1718 1717 1717 1718 1818     .X\.............
d0091cac:	ac18 11a6 0000 0000 0000 0000 0000 0000     ................
d0091cbc:	0000 0000 0000 1811 1718 1817 1818 1717     ................
d0091ccc:	1718 1717 1817 1722 0010 0000 1110 0000     ......".........
	...
d0091ce4:	1000 18ac 1718 1817 1018 1818 1817 1817     ................
d0091cf4:	1818 a65e 0011 1000 7dfb 0010 0000 0000     ..^......}......
d0091d04:	0000 0000 ac10 1718 1718 1717 1018 1710     ................
d0091d14:	1718 1717 1718 a622 10a6 1100 6d7d 0011     ......".....}m..
d0091d24:	0000 0000 0000 1011 ac22 1817 1817 1818     ........".......
d0091d34:	1017 1010 1810 1818 1718 ac18 22a6 0710     ............."..
d0091d44:	077d 1181 0000 0000 1000 7181 ac11 1718     }..........q....
d0091d54:	1718 1817 1110 0000 1010 1718 1718 1818     ................
d0091d64:	1817 7e11 7107 106d 0000 0000 1100 7d7d     ...~.qm.......}}
d0091d74:	1058 1817 1717 1718 0010 0000 1000 1710     X...............
d0091d84:	1817 1817 1817 8210 07be 107d 0000 0000     ..........}.....
d0091d94:	1100 817d 5871 1810 1818 1018 0000 0000     ..}.qX..........
d0091da4:	0000 1811 1717 1818 1118 be07 7d7e 1071     ............~}q.
d0091db4:	0000 0000 1000 7d7d 5c81 1710 1817 0010     ......}}.\......
d0091dc4:	0000 0000 0000 1000 1818 1718 1010 7ebe     ...............~
d0091dd4:	757d 1158 0000 0000 1000 7d71 6d7d 105c     }uX.......q}}m\.
d0091de4:	1011 0000 0000 0000 0000 0000 1710 1017     ................
d0091df4:	7511 7d7e 5871 0011 0000 0000 1000 7d6d     .u~}qX........m}
d0091e04:	8181 ba81 7d07 0011 0000 0000 0000 0000     .....}..........
d0091e14:	1711 1811 8110 5871 105c 0000 0000 0000     ......qX\.......
d0091e24:	1100 6d58 7d6d 7d7d 817d 116d 0000 0000     ..Xmm}}}}.m.....
d0091e34:	0000 0000 1000 8110 6d81 5c58 0010 0000     .........mX\....
d0091e44:	0000 0000 0000 5810 6d58 716d 716d 105c     .......XXmmqmq\.
	...
d0091e5c:	0000 5810 586d 115c 0000 0000 0000 0000     ...XmX\.........
d0091e6c:	0000 1000 1010 1011 1111 0010 0000 0000     ................
d0091e7c:	0000 0000 0000 1010 1010 0010 0000 0000     ................

d0091e8c <gfx_bubguy4>:
	...
d0091fb8:	0000 1200 0010 0000 0000 0000 0000 0000     ................
	...
d0091fdc:	1010 3010 1034 0000 7000 2df4 70f4 0000     ...04....p.-.p..
	...
d0091ffc:	0000 1011 3434 3030 1034 0000 7070 1d2d     ....44004...pp-.
d009200c:	1d2d 001d 0000 0000 0000 0000 0000 0000     -...............
d009201c:	0000 0000 1100 3434 3030 3030 3430 f410     ......44000004..
d009202c:	f41d 701d f470 002d 0000 0000 0000 0000     ...pp.-.........
	...
d0092044:	3410 3034 3034 3030 1034 bc70 1d2d 7070     .44040004.p.-.pp
d0092054:	0000 001d 0000 0000 0000 0000 0000 0000     ................
d0092064:	0000 0000 3410 3434 3034 3030 7010 7070     .....4444000.ppp
d0092074:	1070 7000 0000 0000 0000 0000 0000 0000     p..p............
	...
d009208c:	1000 3410 3430 3030 1010 1070 0010 0000     ...40400..p.....
	...
d00920b0:	1000 3434 3034 1034 1010 107d 0000 0000     ..44404...}.....
	...
d00920d4:	1100 3034 1210 1110 1a1a 6d10 0011 0000     ..40.......m....
	...
d00920f8:	3010 1010 bc70 101d bf1a 1110 ba07 101a     .0..p...........
	...
d0092118:	0000 1100 1030 7070 5c58 1d70 1a10 7d1a     ....0.ppX\p....}
d0092128:	817d 1007 0000 0000 0000 0000 0000 0000     }...............
d0092138:	0000 0000 0000 3010 1010 bc70 1a07 7070     .......0..p...pp
d0092148:	7e11 ba1a 1082 0000 0000 0000 0000 0000     .~..............
	...
d0092160:	1000 1030 1034 702d 7181 1081 817d 0707     ..0.4.-p.q..}...
d0092170:	7e81 1107 0000 0000 0000 0000 0000 0000     .~..............
d0092180:	0000 0000 3010 3434 3410 5c10 6d58 8181     .....044.4.\Xm..
d0092190:	7d81 8181 7d81 6d81 0011 0000 0000 0000     .}...}.m........
	...
d00921a8:	3430 3434 1134 5811 105c 796d 817d 716d     04444..X\.my}.mq
d00921b8:	3434 1210 0000 0000 0000 0000 0000 0000     44..............
d00921c8:	0000 0000 1110 1110 0010 1000 1011 6d10     ...............m
d00921d8:	7d79 7579 1210 0000 0000 0000 0000 0000     y}yu............
	...
d00921f8:	1100 3411 7575 1175 0000 0000 0000 0000     ...4uuu.........
	...
d009221c:	0000 1000 7579 0010 0000 0000 0000 0000     ....yu..........
	...
d0092240:	0000 1000 7d75 0010 0000 0000 0000 0000     ....u}..........
	...
d0092264:	0000 1000 8179 117d 0000 0000 0000 0000     ....y.}.........
	...
d0092288:	0000 1000 8179 1007 0000 0000 0000 0000     ....y...........
	...
d00922ac:	0000 1100 8179 1075 0000 0000 0000 0000     ....y.u.........
	...
d00922d0:	0000 1000 8179 0012 0000 0000 0000 0000     ....y...........
	...
d00922f4:	0000 1000 8175 0010 0000 0000 0000 0000     ....u...........
	...
d0092318:	0000 1000 8175 1075 0000 0000 0000 0000     ....u.u.........
	...
d009233c:	0000 1000 8179 1007 0000 0000 0000 0000     ....y...........
	...
d0092360:	0000 1100 8175 107d 0000 0000 0000 0000     ....u.}.........
	...
d0092384:	0000 1100 7d6d 0781 0011 0000 0000 0000     ....m}..........
	...
d00923a8:	0000 1000 8171 077d 0010 0000 0000 0000     ....q.}.........
	...
d00923cc:	0000 1010 8111 817d 0011 0000 0000 0000     ......}.........
	...
d00923f0:	0000 a612 11a6 817d 1007 0000 0000 0000     ......}.........
	...
d0092414:	1000 18ac a610 7d11 1281 0010 0000 0000     .......}........
	...
d0092438:	1000 821a 2281 8110 717d 1110 0000 0000     ....."..}q......
	...
d009245c:	1010 821a 107d 11ac 716d 1010 0000 0000     ....}...mq......
	...
d0092480:	ba10 817e 757d ac10 1110 1817 0011 0000     ..~.}u..........
	...
d00924a0:	0000 1100 8210 7d81 6d6d 1710 1718 1717     .......}mm......
d00924b0:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d00924c0:	0000 0000 0000 1000 8107 6d81 6d58 1158     ...........mXmX.
d00924d0:	1718 1818 0011 0000 0000 0000 0000 0000     ................
	...
d00924e8:	0000 1110 7d7d 1071 7d58 1071 1817 2218     ....}}q.X}q...."
d00924f8:	1022 0000 0000 0000 0000 0000 0000 0000     "...............
d0092508:	0000 0000 0000 0711 7181 5810 7d75 115c     .........q.Xu}\.
d0092518:	ac17 17ac 1118 1000 8110 0081 0000 0000     ................
	...
d0092530:	1100 7d82 1071 755c 7d81 1710 1718 1817     ...}q.\u.}......
d0092540:	1017 6d11 817d 1a82 0011 0000 0000 0000     ...m}...........
d0092550:	0000 1010 8110 6d81 1010 7958 5881 1810     .......m..Xy.X..
d0092560:	1718 1818 1017 5c58 1011 817d 0010 0000     ......X\..}.....
d0092570:	0000 0000 1100 7d7d 817d 1081 1111 5812     ......}}}......X
d0092580:	105c 1818 ac18 1817 1018 585c 106d 817d     \.........\Xm.}.
d0092590:	1011 0000 0000 0000 7d10 7e1a 8181 0011     .........}.~....
d00925a0:	1810 1110 1810 1717 1818 18ac 1718 5c10     ...............\
d00925b0:	7d10 1081 107d 0000 0000 0000 8111 bf82     .}..}...........
d00925c0:	811a 1075 1710 1718 1718 1818 1718 1818     ..u.............
d00925d0:	ac18 1010 105c 7510 0010 0000 0000 0000     ....\..u........
d00925e0:	7510 ba7d 7d07 1081 1711 1717 1718 1818     .u}..}..........
d00925f0:	1818 1717 acac 1010 5810 106d 0000 0000     .........Xm.....
d0092600:	0000 0000 1000 816d 107d 1171 1810 1817     ......m.}.q.....
d0092610:	1817 1718 1718 1717 a6ac 11a6 1000 0010     ................
	...
d0092628:	0000 6d10 7181 0010 1810 1718 1718 1818     ...m.q..........
d0092638:	1817 1818 ac18 a6a6 0010 0000 0000 0000     ................
d0092648:	0000 0000 0000 1000 1010 1000 1817 1717     ................
d0092658:	1718 1818 1818 1817 1817 a6ac 10a6 0000     ................
	...
d0092670:	0000 0010 1000 ac11 1818 1017 1717 1717     ................
d0092680:	1717 1718 1717 ac18 11a6 0000 0000 0000     ................
d0092690:	0000 0000 1100 7d6d ac10 17ac 1817 1818     ......m}........
d00926a0:	1012 1817 1817 1818 1718 ac17 a6a6 0010     ................
	...
d00926b8:	1000 8181 106d 1718 1717 1818 1017 1010     ....m...........
d00926c8:	1818 1718 1717 1818 22ac 0011 0000 0000     ........."......
d00926d8:	0000 0000 1000 7d81 1075 1817 1718 1818     .......}u.......
d00926e8:	1017 1111 1010 1818 1818 1717 ac18 0011     ................
	...
d0092700:	1000 8181 107d 1718 1818 1817 1118 1010     ....}...........
d0092710:	1010 1710 1717 1818 ac17 0010 0000 0000     ................
d0092720:	0000 0000 1000 817d 6d7d 1810 1817 1717     ......}.}m......
d0092730:	1010 0010 1000 1810 1817 1718 ac17 0011     ................
	...
d0092748:	1000 8179 7581 1710 1818 1012 0010 0000     ..y..u..........
d0092758:	0000 1810 1817 1817 1818 0010 0000 0000     ................
d0092768:	0000 0000 1000 816d 817d 1110 1010 0010     ......m.}.......
d0092778:	0000 0000 1000 1718 1718 1817 1018 0010     ................
d0092788:	1000 0010 0000 0000 1100 7d6d 8181 0010     ..........m}....
	...
d00927a0:	1000 1010 1010 1111 1011 1011 0710 101a     ................
d00927b0:	0000 0000 1100 756d 7d81 0010 0000 0000     ......mu.}......
d00927c0:	0000 0000 1000 076d 7dba 077d ba07 ba07     ......m..}}.....
d00927d0:	817d 117d 0000 0000 1000 6d6d 7d79 1081     }.}.......mmy}..
	...
d00927e8:	7510 0781 7d7d ba82 8107 7d07 717d 1071     .u..}}.....}}qq.
d00927f8:	0000 0000 0000 6d12 716d 106d 0000 0000     .......mmqm.....
d0092808:	0000 0000 5c11 7979 7975 7575 ba81 ba71     .....\yyuyuu..q.
d0092818:	1a6d 115c 0000 0000 0000 1000 1110 0011     m.\.............
	...
d0092830:	1010 1010 1010 1012 1010 1010 1010 0010     ................

d0092840 <gfx_bubguy5>:
	...
d0092948:	0000 1000 0010 0000 0000 0000 0000 0000     ................
	...
d009296c:	1010 3010 1034 0000 0000 0000 0000 0000     ...04...........
	...
d009298c:	0000 1111 3434 3030 1034 0000 7000 f42d     ....44004....p-.
d009299c:	6cf4 0000 0000 0000 0000 0000 0000 0000     .l..............
d00929ac:	0000 0000 1000 3434 3030 3030 3430 f411     ......44000004..
d00929bc:	1d2d 2d2d 2d1d 0070 0000 0000 0000 0000     -.--.-p.........
	...
d00929d4:	3411 3034 3034 3030 1134 2d70 2df4 70f4     .44040004.p-.-.p
d00929e4:	2d6c 001d 0000 0000 0000 0000 0000 0000     l-..............
d00929f4:	0000 0000 3410 3434 3034 3030 7011 706c     .....4444000.plp
d0092a04:	106c 7070 7000 00f4 0000 0000 0000 0000     l.pp.p..........
	...
d0092a1c:	1000 3410 3430 3030 1110 106c 0011 7000     ...40400..l....p
d0092a2c:	0000 00f4 0000 0000 0000 0000 0000 0000     ................
d0092a3c:	0000 0000 1000 3434 3034 1034 1010 117d     ......44404...}.
	...
d0092a64:	1000 3034 1011 1010 1aba 7110 0010 0000     ..40.......q....
	...
d0092a88:	3010 1010 1d70 102d bf1a 1010 ba07 111a     .0..p.-.........
	...
d0092aa8:	0000 1100 1030 706c 5858 2d70 1a10 7d1a     ....0.lpXXp-...}
d0092ab8:	7d7d 1182 0000 0000 0000 0000 0000 0000     }}..............
d0092ac8:	0000 0000 0000 3010 1010 f470 1aba 6c70     .......0..p...pl
d0092ad8:	0711 baba 1007 0000 0000 0000 0000 0000     ................
	...
d0092af0:	1000 1030 1134 701d 7181 107d 7d7d 827e     ..0.4..p.q}.}}~.
d0092b00:	0781 1007 0000 0000 0000 0000 0000 0000     ................
d0092b10:	0000 0000 3010 3434 3411 5c10 6d58 7d7d     .....044.4.\Xm}}
d0092b20:	7d7d 7d7d 7d7d 6d81 0010 0000 0000 0000     }}}}}}.m........
	...
d0092b38:	3430 3434 1034 5c10 105c 7971 7d7d 6d71     04444..\\.qy}}qm
d0092b48:	3434 1110 0000 0000 0000 0000 0000 0000     44..............
d0092b58:	0000 0000 1110 1111 0011 1100 1110 6d10     ...............m
d0092b68:	7d79 7975 1111 0000 0000 0000 0000 0000     y}uy............
	...
d0092b88:	1000 3410 7575 1079 0000 0000 0000 0000     ...4uuy.........
	...
d0092bac:	0000 1000 7579 0010 0000 0000 0000 0000     ....yu..........
	...
d0092bd0:	0000 1000 7d75 0010 0000 0000 0000 0000     ....u}..........
	...
d0092bf4:	0000 1000 7d79 107d 0000 0000 0000 0000     ....y}}.........
	...
d0092c18:	0000 1100 8175 1007 0000 0000 0000 0000     ....u...........
	...
d0092c3c:	0000 1000 7d75 1179 0000 0000 0000 0000     ....u}y.........
	...
d0092c60:	0000 1000 7d79 0010 0000 0000 0000 0000     ....y}..........
	...
d0092c84:	0000 1000 7d79 0010 0000 0000 0000 0000     ....y}..........
	...
d0092ca8:	0000 1000 8171 1075 0000 0000 0000 0000     ....q.u.........
	...
d0092ccc:	0000 1000 7d79 11ba 0000 0000 0000 0000     ....y}..........
	...
d0092cf0:	0000 1000 7d79 107d 0000 0000 0000 0000     ....y}}.........
	...
d0092d14:	0000 1100 7d6d 8281 0011 0000 0000 0000     ....m}..........
	...
d0092d38:	0000 1100 10a6 7d7d 107e 0000 0000 0000     ......}}~.......
	...
d0092d5c:	0000 a610 a6a6 7d10 107d 0011 0000 0000     .......}}.......
	...
d0092d80:	1000 11a6 ac10 7d10 6d7d 1011 0000 0000     .......}}m......
	...
d0092da4:	1000 1a10 1082 1122 6d71 1010 0000 0000     ......".qm......
	...
d0092dc8:	1010 1a6d 717d 2210 1010 1717 0010 0000     ..m.}q."........
	...
d0092dec:	5c11 077d 7181 1710 1717 1817 0011 0000     .\}..q..........
	...
d0092e10:	7110 1a81 7d7d 115c 1718 1818 0011 0000     .q..}}\.........
	...
d0092e34:	6d10 ba6d 7d7d 105c aa18 a6ac 10a6 0000     .mm.}}\.........
	...
d0092e58:	6d10 7e5c 717d 1711 1718 1718 1017 0000     .m\~}q..........
	...
d0092e7c:	5c10 7e5c 5c7d 1711 1717 1718 1017 0000     .\\~}\..........
	...
d0092ea0:	5c10 7e10 107d 1717 1817 1718 1117 0000     .\.~}...........
	...
d0092ec4:	1011 7d10 187d 1818 ac18 1817 1017 0000     ...}}...........
	...
d0092ee4:	0000 1000 1817 7d10 177d 1817 1817 1818     .......}}.......
d0092ef4:	7d18 0000 0000 0000 0000 0000 0000 0000     .}..............
d0092f04:	0000 0000 0000 1300 1718 8110 107d 1817     ............}...
d0092f14:	1718 ac18 8218 10fb 0000 0000 0000 0000     ................
	...
d0092f2c:	0000 1100 1018 7d10 107d 1818 1718 2217     .......}}......"
d0092f3c:	7d22 107d 0000 0000 0000 0000 0000 0000     "}}.............
	...
d0092f54:	7110 7d07 1081 1718 1817 1817 11ac 1010     .q.}............
d0092f64:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d0092f74:	0000 1100 821a 8281 fb7e 1810 1818 ac18     ........~.......
d0092f84:	10ac 1117 0011 0000 0000 0000 0000 0000     ................
d0092f94:	0000 0000 0000 1000 ba7d 077d 7e07 1810     ........}.}..~..
d0092fa4:	1818 1817 17ac 1011 0000 0000 0000 0000     ................
	...
d0092fbc:	0000 1000 7d71 7d7d 6d81 1811 1818 1717     ....q}}}.m......
d0092fcc:	2218 1010 0000 0000 0000 0000 0000 0000     ."..............
	...
d0092fe4:	6d11 816d 106d 1818 1817 1717 a618 1010     .mm.m...........
	...
d0093008:	1000 7171 1111 1718 1717 1718 a6ac 1010     ..qq............
	...
d009302c:	0000 1011 1710 1718 1717 1818 18ac 1011     ................
	...
d0093050:	1011 1711 1710 1818 1717 1717 ac18 1111     ................
	...
d0093070:	0000 1100 6d1a 105c 1810 1717 1818 1717     .....m\.........
d0093080:	ac18 0010 0000 0000 0000 0000 0000 0000     ................
d0093090:	0000 0000 0000 1000 7dba 1071 1710 1718     .........}q.....
d00930a0:	1818 1817 1722 0010 0000 0000 0000 0000     ...."...........
	...
d00930bc:	8110 106d 1818 1718 1717 2218 1118 0000     ..m........"....
	...
d00930e0:	1000 107d 1818 1817 1717 ac18 0010 0000     ..}.............
	...
d0093104:	0000 1810 1718 1817 1718 1818 1010 0000     ................
	...
d0093128:	0000 1810 1817 1818 1717 1017 1110 0010     ................
	...
d009314c:	0000 1010 1110 1011 1110 1011 ba11 101a     ................
	...
d0093170:	1000 826d 7dba 077d 827e 0707 7d7d 107d     ..m..}}.~...}}}.
	...
d0093194:	7510 077d 7d7d 7eba 7d07 7d07 6d7d 1071     .u}.}}.~.}.}}mq.
	...
d00931b8:	5c10 7979 7575 7579 ba7d ba6d ba71 105c     .\yyuuyu}.m.q.\.
	...
d00931dc:	1011 1010 1011 1110 1010 1011 1010 0010     ................
	...

d00931f4 <gfx_bubguy6>:
	...
d00932b4:	0000 1100 0010 0000 0000 0000 0000 0000     ................
	...
d00932d8:	1010 3010 1034 0000 0000 0000 0000 0000     ...04...........
	...
d00932f8:	0000 1010 3434 3030 1034 0000 0000 0000     ....44004.......
	...
d009331c:	1100 3434 3030 3030 3430 f410 702d f42d     ..44000004..-p-.
d009332c:	702d 0000 0000 0000 0000 0000 0000 0000     -p..............
d009333c:	0000 0000 3411 3034 3034 3030 1134 f470     .....44040004.p.
d009334c:	f4f4 2d2d 2df4 0070 0000 0000 0000 0000     ..--.-p.........
	...
d0093364:	3410 3434 3034 3030 6c10 7074 f470 6c2d     .4444000.ltpp.-l
d0093374:	f474 00f4 0000 0000 0000 0000 0000 0000     t...............
d0093384:	0000 0000 1000 3410 3430 3030 1110 106c     .......40400..l.
d0093394:	1010 6c74 7000 002d 0000 0000 0000 0000     ..tl.p-.........
	...
d00933ac:	1000 3434 3034 1034 1110 107d 0000 7000     ..44404...}....p
d00933bc:	0000 00f4 0000 0000 0000 0000 0000 0000     ................
d00933cc:	0000 0000 1000 3034 1010 1010 fbba 6d10     ......40.......m
d00933dc:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00933f4:	3010 1010 f470 112d 1abe 1010 be82 10bf     .0..p.-.........
	...
d0093414:	0000 1000 1130 6c70 5c58 f46c bf10 7d1a     ....0.plX\l....}
d0093424:	7d7d 1007 0000 0000 0000 0000 0000 0000     }}..............
d0093434:	0000 0000 0000 3011 1010 2d6c 1a82 746c     .......0..l-..lt
d0093444:	0710 beba 1007 0000 0000 0000 0000 0000     ................
	...
d009345c:	1000 1030 1134 702d 717d 117d 817d 7e7e     ..0.4.-p}q}.}.~~
d009346c:	7e7d 1082 0000 0000 0000 0000 0000 0000     }~..............
d009347c:	0000 0000 3011 3434 3410 5c10 6d5c 7d81     .....044.4.\\m.}
d009348c:	7d81 7d7d 7d81 717d 0010 0000 0000 0000     .}}}.}}q........
	...
d00934a4:	3430 3434 1034 5810 1158 796d 7d7d 716d     04444..XX.my}}mq
d00934b4:	3434 1011 0000 0000 0000 0000 0000 0000     44..............
d00934c4:	0000 0000 1011 1010 0010 1000 1010 7510     ...............u
d00934d4:	7d79 7579 1010 0000 0000 0000 0000 0000     y}yu............
	...
d00934f4:	1100 3410 7579 1079 0000 0000 0000 0000     ...4yuy.........
	...
d0093518:	0000 1100 7979 0010 0000 0000 0000 0000     ....yy..........
	...
d009353c:	0000 1000 8175 0010 0000 0000 0000 0000     ....u...........
	...
d0093560:	0000 1000 7d79 1081 0000 0000 0000 0000     ....y}..........
	...
d0093584:	0000 1000 8179 1007 0000 0000 0000 0000     ....y...........
	...
d00935a8:	0000 1000 7d79 1079 0000 0000 0000 0000     ....y}y.........
	...
d00935cc:	0000 1000 8179 0010 0000 0000 0000 0000     ....y...........
	...
d00935f0:	0000 1100 8179 0010 0000 0000 0000 0000     ....y...........
	...
d0093614:	0000 1000 8175 1175 0000 0000 0000 0000     ....u.u.........
	...
d0093638:	0000 1000 8179 1082 0000 0000 0000 0000     ....y...........
	...
d009365c:	0000 1000 7d79 107d 0000 0000 0000 0000     ....y}}.........
	...
d0093680:	0000 1000 816d 7e81 0011 0000 0000 0000     ....m..~........
	...
d00936a4:	0000 1000 816d 077d 0010 0000 0000 0000     ....m.}.........
	...
d00936c8:	0000 1000 1010 7e7d 117d 0000 0000 0000     ......}~}.......
	...
d00936ec:	0000 a611 a6a6 7d11 106d 0000 0000 0000     .......}m.......
	...
d0093710:	1000 aca6 1011 1018 7171 0011 0000 0000     ........qq......
	...
d0093734:	1000 10a6 7d7d a610 6d11 1010 0000 0000     ....}}...m......
	...
d0093758:	1100 1010 7e82 a611 1010 1117 0000 0000     .....~..........
	...
d009377c:	1810 8111 bf82 ac81 1710 1717 0011 0000     ................
	...
d00937a0:	1710 8158 077d ac1a 1811 18ac 0010 0000     ..X.}...........
	...
d00937c4:	1810 7d71 817d 7d1a 1710 1817 0010 0000     ..q}}..}........
	...
d00937e8:	1710 816d 7d71 fb82 187d 1718 1017 0000     ..m.q}..}.......
	...
d009380c:	1810 7d71 7111 827d 1007 1718 1018 0000     ..q}.q}.........
	...
d0093830:	1011 6d6d 116d 7d75 7d82 1710 1018 0000     ..mmm.u}.}......
	...
d0093854:	1010 6d5c 1020 7d10 7e81 1011 1018 0000     ..\m ..}.~......
	...
d0093878:	1710 1011 1710 1018 7d7d 117d 1011 0010     ........}}}.....
	...
d009389c:	1811 1817 1717 1718 7d10 817d 7d7d 1010     .........}}.}}..
d00938ac:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d00938bc:	0000 0000 1811 1718 1818 1817 1118 7d7d     ..............}}
d00938cc:	8181 107d 1018 0000 0000 0000 0000 0000     ..}.............
	...
d00938e4:	1810 1717 1818 1818 1717 7d10 8181 8181     ...........}....
d00938f4:	a610 0010 0000 0000 0000 0000 0000 0000     ................
d0093904:	0000 0000 1710 1818 1817 1718 1118 7d81     ...............}
d0093914:	7e7d bf07 1810 10a6 0000 0000 0000 0000     }~..............
d0093924:	0000 0000 0000 1100 1717 1718 1718 1818     ................
d0093934:	1018 8110 1a82 6d7e 1811 11a6 0000 0000     ......~m........
	...
d009394c:	0000 1000 1818 1817 1717 1718 1017 8158     ..............X.
d009395c:	7d81 1175 1717 1018 0000 0000 0000 0000     .}u.............
d009396c:	0000 0000 0000 1810 1818 1817 1818 1817     ................
d009397c:	1718 5c10 5871 1810 1817 1017 0000 0000     ...\qX..........
	...
d0093994:	0000 1810 1818 1718 1718 1817 1818 1118     ................
d00939a4:	1010 1711 1818 1118 1010 0010 0000 0000     ................
d00939b4:	0000 0000 0000 1810 1817 1717 1818 1818     ................
d00939c4:	1818 1818 1010 1718 1718 1118 7e1a 0011     .............~..
	...
d00939dc:	0000 1810 1718 1817 1818 1818 1018 1010     ................
d00939ec:	1818 1818 1818 7110 8182 0011 0000 0000     .......q........
d00939fc:	0000 0000 1000 1718 1818 1818 1718 1817     ................
d0093a0c:	1017 1110 1810 1718 1017 7d6d 7d7d 0010     ..........m}}}..
	...
d0093a24:	1000 1818 1718 1818 1717 1818 0010 1100     ................
d0093a34:	1810 1718 7110 8181 6d81 0010 0000 0000     .....q...m......
d0093a44:	0000 0000 1710 1817 1717 1818 1817 1718     ................
d0093a54:	0010 0000 1710 1818 7d10 7d7d 5c81 0010     .........}}}.\..
	...
d0093a6c:	1711 1818 1818 1818 1818 1117 0000 0000     ................
d0093a7c:	1710 1118 7d81 717d 115c 0000 0000 0000     .....}}q\.......
d0093a8c:	0000 0000 1711 1818 1818 1718 1017 0010     ................
d0093a9c:	0000 0000 1810 7d10 7d7d 5871 0010 0000     .......}}}qX....
d0093aac:	0000 0000 0000 1100 1718 1818 1717 1818     ................
d0093abc:	1017 0000 0000 0000 1011 8171 717d 1071     ..........q.}qq.
	...
d0093ad4:	0000 1000 1718 1818 1817 1817 1011 1010     ................
d0093ae4:	0000 0000 1100 7d81 6d81 0010 0000 0000     .......}.m......
d0093af4:	0000 0000 0000 1010 1010 1010 1011 1010     ................
d0093b04:	1010 1a82 0011 0000 1000 7d71 5c71 0011     ..........q}q\..
	...
d0093b1c:	0000 6d10 7e7e 7d81 827e 0782 7d82 7d81     ...m~~.}~....}.}
d0093b2c:	0010 0000 1000 715c 1020 0000 0000 0000     ......\q .......
d0093b3c:	0000 0000 1000 7d75 817e 077d 7e7e 0781     ......u}~.}.~~..
d0093b4c:	817d 716d 0010 0000 0000 1011 0010 0000     }.mq............
	...
d0093b64:	1000 7958 7579 7579 7d79 71ba 6d1a 5cba     ..Xyyuyuy}.q.m.\
d0093b74:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d0093b84:	0000 0000 1000 1011 1010 1010 1110 1010     ................
d0093b94:	1111 1011 0000 0000 0000 0000 0000 0000     ................
d0093ba4:	0000 0000                                   ....

d0093ba8 <gfx_bubguy7>:
	...
d0093cb0:	0000 1000 0010 0000 0000 0000 0000 0000     ................
	...
d0093cd4:	1010 3010 1034 0000 0000 0000 0000 0000     ...04...........
	...
d0093cf4:	0000 1111 3434 3030 1034 0000 7000 f42d     ....44004....p-.
d0093d04:	6cf4 0000 0000 0000 0000 0000 0000 0000     .l..............
d0093d14:	0000 0000 1000 3434 3030 3030 3430 f411     ......44000004..
d0093d24:	1d2d 2d2d 2d1d 0070 0000 0000 0000 0000     -.--.-p.........
	...
d0093d3c:	3412 3034 3034 3030 1134 2d70 2df4 70f4     .44040004.p-.-.p
d0093d4c:	2d6c 001d 0000 0000 0000 0000 0000 0000     l-..............
d0093d5c:	0000 0000 3410 3434 3034 3030 7010 706c     .....4444000.plp
d0093d6c:	106c 7070 7000 00f4 0000 0000 0000 0000     l.pp.p..........
	...
d0093d84:	1000 3410 3430 3030 1210 106c 0011 7000     ...40400..l....p
d0093d94:	0000 00f4 0000 0000 0000 0000 0000 0000     ................
d0093da4:	0000 0000 1000 3434 3034 1034 1010 117d     ......44404...}.
	...
d0093dcc:	1000 3034 1011 1010 1aba 7110 0010 0000     ..40.......q....
	...
d0093df0:	3010 1010 1d70 102d bf1a 1010 1aba 111a     .0..p.-.........
	...
d0093e10:	0000 1100 1030 706c 5858 2d70 1a10 811a     ....0.lpXXp-....
d0093e20:	7d7d 1182 0000 0000 0000 0000 0000 0000     }}..............
d0093e30:	0000 0000 0000 3010 1010 f470 baba 6c70     .......0..p...pl
d0093e40:	0711 ba1a 10ba 0000 0000 0000 0000 0000     ................
	...
d0093e58:	1000 1030 1134 701d 7181 1081 817d 82ba     ..0.4..p.q..}...
d0093e68:	0781 107e 0000 0000 0000 0000 0000 0000     ..~.............
d0093e78:	0000 0000 3010 3434 3411 5c10 6d58 7d7d     .....044.4.\Xm}}
d0093e88:	7d81 8181 7d7d 6d81 0010 0000 0000 0000     .}..}}.m........
	...
d0093ea0:	3430 3434 1034 5c10 105c 7971 7d7d 6d71     04444..\\.qy}}qm
d0093eb0:	3434 1110 0000 0000 0000 0000 0000 0000     44..............
d0093ec0:	0000 0000 1110 1111 0012 1100 1110 7110     ...............q
d0093ed0:	8175 7579 1111 0000 0000 0000 0000 0000     u.yu............
	...
d0093ef0:	1000 3410 7575 1075 0000 0000 0000 0000     ...4uuu.........
	...
d0093f14:	0000 1000 7575 0010 0000 0000 0000 0000     ....uu..........
	...
d0093f38:	0000 1000 7d75 0010 0000 0000 0000 0000     ....u}..........
	...
d0093f5c:	0000 1000 7d79 107d 0000 0000 0000 0000     ....y}}.........
	...
d0093f80:	0000 1100 8175 117e 0000 0000 0000 0000     ....u.~.........
	...
d0093fa4:	0000 1000 8175 1175 0000 0000 0000 0000     ....u.u.........
	...
d0093fc8:	0000 1000 8175 0010 0000 0000 0000 0000     ....u...........
	...
d0093fec:	0000 1000 8175 0010 0000 0000 0000 0000     ....u...........
	...
d0094010:	0000 1000 7d79 1079 0000 0000 0000 0000     ....y}y.........
	...
d0094034:	0000 1000 7d75 1007 0000 0000 0000 0000     ....u}..........
	...
d0094058:	0000 1000 7d75 107d 0000 0000 0000 0000     ....u}}.........
	...
d009407c:	0000 1000 816d 7e7d 0012 0000 0000 0000     ....m.}~........
	...
d00940a0:	0000 1000 1010 0781 0010 0000 0000 0000     ................
	...
d00940c4:	0000 1110 a6a6 8110 126d 0000 0000 0000     ........m.......
	...
d00940e8:	0000 a610 1a71 10ac 1071 0000 0000 0000     ....q...q.......
	...
d009410c:	0000 5c10 ba7d ac1a 7110 0010 0000 0000     ...\}....q......
	...
d0094130:	1000 5ca6 7d81 bf82 7110 0010 0000 0000     ...\.}...q......
	...
d0094154:	1000 6dac 817d ba7d 101a 1110 0000 0000     ...m}.}.........
	...
d0094178:	2210 7d10 7d7d 7d81 ba07 1082 0000 0000     .".}}}.}........
	...
d009419c:	1810 8110 5881 816d 7d7d 0707 1110 0000     .....Xm.}}......
	...
d00941c0:	1810 7d10 817d 1058 7d6d 7d7d 7e82 1111     ...}}.X.m}}}.~..
d00941d0:	1011 1211 0000 0000 0000 0000 0000 0000     ................
d00941e0:	0000 0000 1811 7d10 7181 5c71 1010 7d71     .......}.qq\..q}
d00941f0:	817d ba07 07ba 8207 0012 0000 0000 0000     }...............
d0094200:	0000 0000 0000 1000 1710 7111 6d71 105c     ...........qqm\.
d0094210:	1017 1110 7d71 7d81 8281 1aba 1007 0000     ....q}.}........
	...
d0094228:	0000 7d11 1810 5c11 5c71 1811 1718 1818     ...}...\q\......
d0094238:	1010 7d6d ba81 bfba 817e 0011 0000 0000     ..m}....~.......
d0094248:	0000 0000 1000 6d6d 1810 1018 1011 1718     ......mm........
d0094258:	1817 1718 0011 7d10 8281 ba1a 7d7d 0010     .......}....}}..
	...
d0094270:	1000 5c71 1812 1817 1818 1718 1818 1717     ..q\............
d0094280:	1118 1000 7d6d 7d82 6d7d 0010 0000 0000     ....m}.}}m......
d0094290:	0000 0000 1000 5c71 1710 1818 1817 1818     ......q\........
d00942a0:	1718 1818 1018 1000 7171 7d81 106d 0000     ........qq.}m...
	...
d00942b8:	1100 106d 1817 1818 1718 1818 1817 1718     ..m.............
d00942c8:	1818 0010 7111 6d71 0010 0000 0000 0000     .....qqm........
d00942d8:	0000 0000 0000 1010 1818 1818 1718 1818     ................
d00942e8:	1818 1817 1718 0010 1000 1210 0000 0000     ................
	...
d0094300:	0000 1000 1817 1818 1818 1718 1718 1818     ................
d0094310:	1718 10ac 0000 0000 0000 0000 0000 0000     ................
d0094320:	0000 0000 0000 1000 1818 1818 1818 1718     ................
d0094330:	1817 1817 1718 1122 0000 0000 0000 0000     ......".........
	...
d0094348:	0000 1100 1817 1718 1818 1818 1718 1817     ................
d0094358:	1717 a618 0012 0000 0000 0000 0000 0000     ................
d0094368:	0000 0000 0000 1011 1811 1817 1717 1818     ................
d0094378:	1717 1818 1817 ac17 10a6 0000 0000 0000     ................
	...
d0094390:	1000 1111 1717 1817 1818 1818 1718 1817     ................
d00943a0:	1717 ac18 11a6 0000 0000 0000 0000 0000     ................
d00943b0:	0000 1000 a610 1722 1718 1718 1717 1718     ......".........
d00943c0:	1810 1818 1718 1818 1022 0000 0000 0000     ........".......
d00943d0:	0000 0000 0000 2210 17a6 1818 1717 1818     ......."........
d00943e0:	1817 1818 1110 1717 1818 1818 10ac 0000     ................
d00943f0:	1100 0010 0000 0000 0000 1811 1718 1718     ................
d0094400:	1718 1718 1818 1017 1010 1818 1817 1818     ................
d0094410:	1817 0010 1a10 1081 0000 0000 0000 1010     ................
d0094420:	1817 1718 1718 1718 1717 0012 1012 1810     ................
d0094430:	1818 1817 1817 0010 7d10 107d 0000 0000     .........}}.....
d0094440:	1000 7d81 1810 1818 1817 1817 1017 0000     ...}............
d0094450:	1000 1711 1818 1818 1718 1118 7d71 5c7d     ............q}}\
d0094460:	0000 0000 1000 8181 1710 1718 1818 1018     ................
d0094470:	0011 0000 0000 1810 1818 1817 1818 1018     ................
d0094480:	8171 7181 0000 0000 1000 817d 107d 1818     q..q......}.}...
d0094490:	1818 0010 0000 0000 0000 1010 1818 1818     ................
d00944a0:	1818 7d10 7d7d 717d 0000 0000 1000 8181     ...}}}}q........
d00944b0:	717d 1010 1010 1010 0000 0000 0000 1100     }q..............
d00944c0:	1817 1818 1018 817d 817d 5c71 0000 0000     ......}.}.q\....
d00944d0:	1000 7d81 817d 817d 8182 117d 0000 0000     ...}}.}...}.....
d00944e0:	0000 1100 1810 1010 7d11 817d 717d 115c     .........}}.}q\.
d00944f0:	0000 0000 0000 8110 7d81 7dba 717d 116d     .........}.}}qm.
	...
d0094508:	1010 5c11 7d7d 7d81 5871 0010 0000 0000     ...\}}.}qX......
d0094518:	0000 5c10 7e81 076d 7e71 105c 0000 0000     ...\.~m.q~\.....
d0094528:	0000 0000 0000 8110 8181 5c6d 1010 0000     ..........m\....
d0094538:	0000 0000 0000 1000 105c 1010 1010 0010     ........\.......
	...
d0094550:	0000 1010 1010 1010 0000 0000               ............

d009455c <gfx_bubguy8>:
	...
d0094688:	0000 1100 0010 0000 0000 0000 0000 0000     ................
	...
d00946ac:	1010 3010 1034 0000 7000 2df4 70f4 0000     ...04....p.-.p..
	...
d00946cc:	0000 1011 3434 3030 1034 0000 7070 1d2d     ....44004...pp-.
d00946dc:	1d2d 001d 0000 0000 0000 0000 0000 0000     -...............
d00946ec:	0000 0000 1100 3434 3030 3030 3430 f410     ......44000004..
d00946fc:	f41d 701d f470 002d 0000 0000 0000 0000     ...pp.-.........
	...
d0094714:	3410 3034 3034 3030 1034 bc70 1d2d 7070     .44040004.p.-.pp
d0094724:	0000 001d 0000 0000 0000 0000 0000 0000     ................
d0094734:	0000 0000 3410 3434 3034 3030 7010 7070     .....4444000.ppp
d0094744:	1070 7000 0000 0000 0000 0000 0000 0000     p..p............
	...
d009475c:	1000 3410 3430 3030 1010 1070 0010 0000     ...40400..p.....
	...
d0094780:	1000 3434 3034 1134 1010 107d 0000 0000     ..44404...}.....
	...
d00947a4:	1100 3034 1010 1110 1aba 6d10 0011 0000     ..40.......m....
	...
d00947c8:	3010 1010 bc70 101d 1aba 1110 ba07 101a     .0..p...........
	...
d00947e8:	0000 1100 1030 7070 5858 1d70 1a10 7d1a     ....0.ppXXp....}
d00947f8:	817d 1007 0000 0000 0000 0000 0000 0000     }...............
d0094808:	0000 0000 0000 3010 1010 bc70 1a07 7070     .......0..p...pp
d0094818:	8210 ba1a 1082 0000 0000 0000 0000 0000     ................
	...
d0094830:	1000 1030 1034 702d 7181 1081 817d 0707     ..0.4.-p.q..}...
d0094840:	7e81 1107 0000 0000 0000 0000 0000 0000     .~..............
d0094850:	0000 0000 3010 3434 3410 5810 6d58 8181     .....044.4.XXm..
d0094860:	7d81 7d81 7d7d 6d81 0011 0000 0000 0000     .}.}}}.m........
	...
d0094878:	3430 3434 1034 5811 105c 7971 817d 716d     04444..X\.qy}.mq
d0094888:	3434 1110 0000 0000 0000 0000 0000 0000     44..............
d0094898:	0000 0000 1110 1110 0010 1000 1011 6d10     ...............m
d00948a8:	7d79 7979 1111 0000 0000 0000 0000 0000     y}yy............
	...
d00948c8:	1100 3411 7579 1175 0000 0000 0000 0000     ...4yuu.........
	...
d00948ec:	0000 1000 7979 0010 0000 0000 0000 0000     ....yy..........
	...
d0094910:	0000 1000 7d75 0010 0000 0000 0000 0000     ....u}..........
	...
d0094934:	0000 1000 8179 107d 0000 0000 0000 0000     ....y.}.........
	...
d0094958:	0000 1000 8179 1007 0000 0000 0000 0000     ....y...........
	...
d009497c:	0000 1000 7d79 1075 0000 0000 0000 0000     ....y}u.........
	...
d00949a0:	0000 1000 7d79 0010 0000 0000 0000 0000     ....y}..........
	...
d00949c4:	0000 1000 8175 0010 0000 0000 0000 0000     ....u...........
	...
d00949e8:	0000 1000 7d79 1075 0000 0000 0000 0000     ....y}u.........
	...
d0094a0c:	0000 1000 7d79 1107 0000 0000 0000 0000     ....y}..........
	...
d0094a30:	0000 1100 7d79 107d 0000 0000 0000 0000     ....y}}.........
	...
d0094a54:	0000 1000 816d ba7d 0010 0000 0000 0000     ....m.}.........
	...
d0094a78:	0000 1010 acac 8110 106d 0000 0000 0000     ........m.......
	...
d0094a9c:	0000 ac11 7d6d 1022 1071 0000 0000 0000     ....m}".q.......
	...
d0094ac0:	0000 5810 1aba 2211 7110 0010 0000 0000     ...X...".q......
	...
d0094ae4:	1000 5cac 077d 101a 1111 0010 0000 0000     ...\}...........
	...
d0094b08:	1000 7118 8181 bf07 1007 1010 0000 0000     ...q............
	...
d0094b2c:	1100 6d18 7d81 077d 07ba 1011 0000 0000     ...m.}}.........
	...
d0094b50:	ac10 7d10 5881 796d ba7d 7dba 1058 0011     ...}.Xmy}..}X...
d0094b60:	0000 1010 1011 0000 0000 0000 0000 0000     ................
d0094b70:	0000 0000 1810 7910 6d81 1158 7d71 7d81     .......y.mX.q}.}
d0094b80:	0707 8207 ba82 8181 7d7d 0010 0000 0000     ........}}......
	...
d0094b98:	1810 8111 7d81 5875 1010 6d10 7d81 817d     .....}uX...m.}}.
d0094ba8:	7d81 817d 1a1a 0010 0000 0000 0000 0000     .}}.............
d0094bb8:	0000 1110 1810 6d11 7d7d 106d 1118 1018     .......m}}m.....
d0094bc8:	1010 7d71 7d7d 0781 ba1a 1081 0000 0000     ..q}}}..........
d0094bd8:	0000 0000 1000 6d7d 1810 6d10 6d75 115c     ......}m...mum\.
d0094be8:	1818 1718 0010 1010 7110 ba7d 7d82 107d     .........q}..}}.
	...
d0094c00:	7110 7171 1810 5c10 585c 1711 1718 1817     .qqq...\\X......
d0094c10:	1018 0000 1011 7d7d 7d81 1071 0000 0000     ......}}.}q.....
d0094c20:	0000 0000 6d10 715c 1710 1017 1010 1817     .....m\q........
d0094c30:	1817 1718 1018 0000 1000 816d 717d 0011     ..........m.}q..
	...
d0094c48:	7110 1058 1818 1817 1818 1718 1818 1818     .qX.............
d0094c58:	1717 0011 1000 7158 1058 0000 0000 0000     ......XqX.......
d0094c68:	0000 0000 6d11 1010 1718 1817 1718 1818     .....m..........
d0094c78:	1717 1817 1718 10ac 0000 1010 0010 0000     ................
	...
d0094c90:	1000 1710 1717 1718 1717 1818 1718 1818     ................
d0094ca0:	1817 11a6 0000 0000 0000 0000 0000 0000     ................
d0094cb0:	0000 0000 0000 1811 1818 1818 1818 1717     ................
d0094cc0:	1818 1817 1818 ac17 0011 0000 0000 0000     ................
	...
d0094cd8:	1000 1810 1818 1817 1817 1717 1818 1817     ................
d0094ce8:	1818 ac17 0010 0000 0000 0000 0000 0000     ................
d0094cf8:	0000 1000 a610 1818 1818 1818 1817 1818     ................
d0094d08:	1017 1717 1817 ac17 11ac 0000 0000 0000     ................
d0094d18:	0000 0000 0000 2210 18a6 1718 1718 1717     ......."........
d0094d28:	1817 1817 1711 1818 1817 1818 10ac 0000     ................
	...
d0094d40:	1000 ac10 1818 1718 1817 1818 1817 1818     ................
d0094d50:	1810 1818 1718 1717 11ac 0000 0000 0000     ................
d0094d60:	0000 0000 6d10 107d 1817 1718 1717 1718     .....m}.........
d0094d70:	1818 1017 1011 1717 1718 1717 1017 0000     ................
	...
d0094d88:	8110 10ba 1818 1818 1718 1718 1818 1010     ................
d0094d98:	1010 1817 1817 1818 1010 0000 0000 0000     ................
d0094da8:	0000 0000 0711 7d82 1710 1817 1818 1817     .......}........
d0094db8:	1117 0000 1011 1818 1818 1818 0010 0000     ................
	...
d0094dd0:	0710 81ba 1810 1817 1817 1017 0010 0000     ................
d0094de0:	1011 1718 1717 1817 0011 0000 0000 0000     ................
d0094df0:	0000 0000 8110 7d81 1010 1818 1010 0011     .......}........
d0094e00:	0000 0000 1000 1818 1717 1718 0010 0000     ................
	...
d0094e18:	8111 7d81 1010 1011 0011 0000 0000 0000     ...}............
d0094e28:	1000 1717 1818 1818 0010 0000 0000 0000     ................
d0094e38:	0000 0000 8110 817d 107d 0000 0000 0000     ......}.}.......
d0094e48:	0000 0000 1810 1718 1817 1818 1011 1110     ................
d0094e58:	0010 0000 0000 0000 8110 7d7d 107d 0000     ..........}}}...
	...
d0094e70:	1710 1117 1011 1010 1010 817d 1007 0000     ..........}.....
d0094e80:	0000 0000 8110 7d7d 1181 0000 0000 0000     ......}}........
d0094e90:	0000 0000 1010 7d10 7d81 7d7d 7d7d 817d     .......}.}}}}}}.
d0094ea0:	106d 0000 0000 0000 6d10 817d 817d 0010     m........m}.}...
	...
d0094eb8:	7d11 8181 7d7d 7d81 7d81 6d7d 115c 0000     .}..}}.}.}}m\...
d0094ec8:	0000 0000 1100 8171 7d81 0011 0000 0000     ......q..}......
d0094ed8:	0000 0000 5810 817d 6d71 5858 716d 5c6d     .....X}.qmXXmqm\
d0094ee8:	0010 0000 0000 0000 0000 1110 1110 0000     ................
	...
d0094f00:	1110 1110 1110 1010 1110 1010 0000 0000     ................

d0094f10 <gradient_cols.9285>:
d0094f10:	2020 2120 2221 2322 2423 2524 2625 2726        !!""##$$%%&&'
d0094f20:	2727 0000                                   ''..

d0094f24 <guywidthheight>:
d0094f24:	4545 4545 4545 4545 0040 0000 0000 0000     EEEEEEEE@.......
	...

d0094f40 <guywidthwidth>:
d0094f40:	241d 2424 2424 2424 0018 0000               .$$$$$$$....

d0094f4c <scr_bub_floor>:
	...
d0094ff0:	1010 1010 1000 1010 1010 0000 0000 0000     ................
	...
d0095010:	1010 1010 1000 1010 1010 0000 0000 0000     ................
	...
d0095108:	0000 1000 6060 1060 1010 6060 6060 0010     ....```...````..
d0095118:	0000 1000 1010 1010 0000 0000 0000 0000     ................
d0095128:	0000 1000 6060 1060 1010 6060 6060 0010     ....```...````..
d0095138:	0000 1000 1010 1010 0000 0000 0000 0000     ................
	...
d0095220:	0000 1010 0010 6010 6060 6060 6010 6060     .......`````.```
d0095230:	6060 1060 0010 1010 6060 6060 0010 0000     ```.....````....
d0095240:	0000 0000 0000 6010 6060 6060 6010 6060     .......`````.```
d0095250:	6060 1060 0010 1010 6060 6060 0010 0000     ```.....````....
	...
d009530c:	1010 1010 0000 1010 1010 0010 0000 0000     ................
	...
d009533c:	1000 6060 1060 6010 6060 6060 6060 6060     ..```..`````````
d009534c:	6060 6060 1010 6010 6060 6060 1060 0000     ````...``````...
d009535c:	0000 0000 0000 6010 6060 6060 6060 6060     .......`````````
d009536c:	6060 6060 1010 6010 6060 6060 1060 0000     ````...``````...
	...
d0095384:	1010 1010 0000 0000 0000 0000 0000 0000     ................
	...
d0095424:	0000 1000 6060 6060 1010 6060 6060 1010     ....````..````..
	...
d0095458:	6010 6060 1060 1010 6060 6060 6060 6060     .````...````````
d0095468:	6060 1060 6060 6010 6060 6060 1060 0000     ```.``.``````...
d0095478:	0000 0000 0000 1010 6060 6060 6060 6060     ........````````
d0095488:	6060 1060 6060 6010 6060 6060 1060 0000     ```.``.``````...
d0095498:	0000 0000 0000 1010 6060 6060 0010 0000     ........````....
	...
d0095540:	0000 6010 6060 6060 6060 6060 6060 1060     ...````````````.
d0095550:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0095570:	0000 1000 6010 6060 6060 6060 6010 6060     .....```````.```
d0095580:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d0095590:	6060 0010 1000 1010 1010 6060 6010 6060     ``........``.```
d00955a0:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d00955b0:	6060 0010 1000 1010 1010 6060 6060 6060     ``........``````
d00955c0:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d009565c:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d009566c:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d009568c:	0000 6010 1060 6060 6060 6060 6060 6060     ...``.``````````
d009569c:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d00956ac:	6060 0010 6010 6060 6060 6060 6060 6060     ``...```````````
d00956bc:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d00956cc:	6060 0010 6010 6060 6060 6060 6060 6060     ``...```````````
d00956dc:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d0095778:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d0095788:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d00957a8:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d00957b8:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d00957c8:	6060 1010 6060 6060 6060 6060 6060 6060     ``..````````````
d00957d8:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d00957e8:	6060 1010 6060 6060 6060 6060 6060 6060     ``..````````````
d00957f8:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d0095894:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d00958a4:	1060 1000 1010 1010 0000 0000 0000 0000     `...............
	...
d00958c0:	1010 1010 0010 6010 6060 6060 6060 6060     .......`````````
d00958d0:	6060 6060 6060 6060 6060 1060 6010 6060     ```````````..```
d00958e0:	6060 6060 6060 1060 6060 6060 6060 6060     ```````.````````
d00958f0:	6060 6060 6060 6060 6060 1060 6010 6060     ```````````..```
d0095900:	6060 6060 6060 1060 6060 6060 6060 6060     ```````.````````
d0095910:	6060 6060 1060 0000 0000 0000 0000 0000     `````...........
	...
d00959b0:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d00959c0:	1010 6010 6060 1060 0000 0000 0000 0000     ...````.........
	...
d00959dc:	6010 6060 1060 1010 6060 6060 6060 6060     .````...````````
d00959ec:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00959fc:	6060 6060 6060 1010 6010 6060 6060 6060     ``````...```````
d0095a0c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095a1c:	6060 6060 6060 1010 6010 6060 6060 6060     ``````...```````
d0095a2c:	6060 6060 1060 0000 0000 0000 0000 0000     `````...........
	...
d0095acc:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d0095adc:	6010 6060 6060 1060 0000 0000 0000 0000     .``````.........
	...
d0095af8:	6010 6060 6060 6060 6060 6060 6060 6060     .```````````````
d0095b08:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095b18:	6060 6060 1060 6010 6060 6060 6060 6060     `````..`````````
d0095b28:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095b38:	6060 6060 1060 6010 6060 6060 6060 6060     `````..`````````
d0095b48:	6060 6060 1060 0000 0000 0000 0000 0000     `````...........
	...
d0095be4:	1000 1010 0010 4c10 6060 6060 6060 6060     .......L````````
d0095bf4:	6060 6060 6060 6060 6060 1010 0000 0000     ``````````......
	...
d0095c14:	1010 6060 6060 6060 6060 6060 6060 6060     ..``````````````
d0095c24:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095c34:	6060 6060 1060 6060 6060 6060 6060 6060     `````.``````````
d0095c44:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095c54:	6060 6060 1060 6060 6060 6060 6060 6060     `````.``````````
d0095c64:	6060 6060 104c 1000 1010 0010 0000 0000     ````L...........
	...
d0095d00:	6010 6060 1010 1010 1010 6060 6060 6060     .```......``````
d0095d10:	6060 6060 6060 6060 6060 6060 0010 0000     ````````````....
	...
d0095d2c:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d0095d3c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095d4c:	6060 6060 6060 6060 6010 6060 6060 6060     ````````.```````
d0095d5c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095d6c:	6060 6060 6060 6060 6010 6060 6060 6060     ````````.```````
d0095d7c:	6060 6060 6060 1060 1010 1010 6060 1060     ```````.....```.
	...
d0095e18:	0000 1000 6060 6060 6060 6060 1060 6060     ....`````````.``
d0095e28:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095e38:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d0095e48:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d0095e58:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095e68:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095e78:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095e88:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095e98:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095ea8:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0095f34:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d0095f44:	6060 6060 6060 6060 6060 6060 6060 1060     ```````````````.
	...
d0095f68:	6010 6060 6060 6060 6060 6060 6060 6060     .```````````````
d0095f78:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095f88:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095f98:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095fa8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0095fb8:	6060 6060 6060 6060 6060 6060 0010 0000     ````````````....
	...
d0096054:	6010 6060 6060 6060 6060 6060 6060 6060     .```````````````
d0096064:	6060 6060 1060 6060 6060 6060 0010 0000     `````.``````....
	...
d0096080:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d0096090:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00960a0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00960b0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00960c0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00960d0:	6060 6060 6060 6060 6060 6060 6060 1060     ```````````````.
	...
d009616c:	0000 1000 6010 6060 6060 6060 6010 6060     .....```````.```
d009617c:	6060 1060 6060 6060 6060 6060 6060 1060     ```.```````````.
d009618c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
d009619c:	1010 1000 6010 6060 6060 6060 6060 6060     .....```````````
d00961ac:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00961bc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00961cc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00961dc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00961ec:	6060 6060 6060 6060 6060 6060 6060 1060     ```````````````.
d00961fc:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0096284:	0000 1010 1010 6010 1060 6060 6060 6060     .......``.``````
d0096294:	6010 6060 6060 6060 6010 6060 6060 6060     .```````.```````
d00962a4:	6060 6010 1060 0010 1010 0010 0000 0000     ``.``...........
d00962b4:	0000 1000 6010 6010 1060 6060 6060 6060     .....`.``.``````
d00962c4:	6060 6060 6060 6060 6060 4c60 6060 6060     ```````````L````
d00962d4:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00962e4:	6060 6060 6060 6060 6060 4c60 6060 6060     ```````````L````
d00962f4:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096304:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096314:	6060 6010 1060 1010 1010 0000 0000 0000     ``.``...........
	...
d00963a0:	1000 6060 6060 6010 6060 6060 6060 6060     ..````.`````````
d00963b0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00963c0:	6060 6060 1060 1010 6060 1060 0000 1010     `````...```.....
d00963d0:	0010 6010 6060 6010 6060 6060 6060 6060     ...```.`````````
d00963e0:	6060 6060 6060 6060 6060 4c60 604c 6060     ```````````LL```
d00963f0:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096400:	6060 6060 6060 6060 6060 4c60 604c 6060     ```````````LL```
d0096410:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096420:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096430:	6060 6060 1060 6060 6060 0010 0000 0000     `````.````......
	...
d00964b8:	0000 1010 6010 6060 6060 6010 6060 6060     .....`````.`````
d00964c8:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00964d8:	6060 6060 6060 6060 1060 6060 6060 6060     `````````.``````
d00964e8:	1010 6060 1060 6010 6060 6010 6060 6060     ..```..```.`````
d00964f8:	6060 6060 6060 6060 6060 6060 6060 4c60     ```````````````L
d0096508:	4c4c 6060 6060 6060 6060 6060 6060 4c60     LL`````````````L
d0096518:	6060 6060 6060 6060 6060 6060 6060 4c60     ```````````````L
d0096528:	4c4c 6060 6060 6060 6060 6060 6060 4c60     LL`````````````L
d0096538:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096548:	6060 6060 6060 6060 1060 6060 6060 1060     `````````.`````.
d0096558:	1010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d00965d4:	1010 6060 6010 6060 6060 6060 6060 6060     ..``.```````````
d00965e4:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00965f4:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096604:	6060 6060 6060 6010 6060 6060 6060 6060     ``````.`````````
d0096614:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096624:	4c4c 604c 6060 6060 6060 6060 6060 4c4c     LLL```````````LL
d0096634:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096644:	4c4c 604c 6060 6060 6060 6060 6060 4c4c     LLL```````````LL
d0096654:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096664:	6060 6060 6060 6060 6060 6060 6060 1060     ```````````````.
d0096674:	6060 1010 0000 0000 0000 0000 0000 0000     ``..............
	...
d00966ec:	0000 1000 6060 6060 6060 6060 6060 6060     ....````````````
d00966fc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d009670c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d009671c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d009672c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d009673c:	6060 6060 4c4c 4c4c 604c 6060 6060 6060     ````LLLLL```````
d009674c:	4c60 604c 6060 6060 6060 6060 6060 6060     `LL`````````````
d009675c:	6060 6060 4c4c 4c4c 604c 6060 6060 6060     ````LLLLL```````
d009676c:	4c60 604c 6060 6060 6060 6060 6060 6060     `LL`````````````
d009677c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d009678c:	6060 6060 6060 6060 0010 0000 0000 0000     ````````........
	...
d0096808:	0000 6010 6060 6060 6060 6060 6060 6060     ...`````````````
d0096818:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096828:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096838:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096848:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096858:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d0096868:	4c4c 604c 6060 6060 6060 6060 6060 6060     LLL`````````````
d0096878:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d0096888:	4c4c 604c 6060 6060 6060 6060 6060 6060     LLL`````````````
d0096898:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00968a8:	6060 6060 6060 6060 1060 0000 0000 0000     `````````.......
	...
d0096924:	1010 4c10 6060 6060 6060 6060 6060 6060     ...L````````````
d0096934:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096944:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096954:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096964:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096974:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d0096984:	4c4c 604c 6060 6060 6060 6060 6060 6060     LLL`````````````
d0096994:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d00969a4:	4c4c 604c 6060 6060 6060 6060 6060 6060     LLL`````````````
d00969b4:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d00969c4:	6060 6060 6060 6060 104c 1010 0000 0000     ````````L.......
	...
d0096a3c:	0000 1010 604c 6060 6060 6060 6060 6060     ....L```````````
d0096a4c:	6060 6060 6060 6060 6060 6060 6060 4c60     ```````````````L
d0096a5c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096a6c:	6060 6060 6060 604c 6060 6060 6060 6060     ``````L`````````
d0096a7c:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096a8c:	6060 6060 6060 4c4c 4c4c 4c4c 4c4c 4c4c     ``````LLLLLLLLLL
d0096a9c:	4c4c 4c4c 4c4c 4c4c 604c 6060 6060 6060     LLLLLLLLL```````
d0096aac:	6060 6060 6060 4c4c 4c4c 4c4c 4c4c 4c4c     ``````LLLLLLLLLL
d0096abc:	4c4c 4c4c 4c4c 4c4c 604c 6060 6060 6060     LLLLLLLLL```````
d0096acc:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096adc:	6060 6060 6060 6060 6060 1060 6060 4c60     ```````````.```L
d0096aec:	1010 0000 0000 0000 0000 0000 0000 0000     ................
	...
d0096b58:	1000 604c 6060 6060 6060 6060 6060 6060     ..L`````````````
d0096b68:	6060 6060 6060 6060 6060 6060 6060 4c60     ```````````````L
d0096b78:	6060 6060 6060 4c60 4c4c 604c 6060 6060     ```````LLLL`````
d0096b88:	6060 6060 6060 4c4c 604c 6060 6060 6060     ``````LLL```````
d0096b98:	6060 6060 6060 6060 6060 6060 4c4c 6060     ````````````LL``
d0096ba8:	6060 6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c     `````LLLLLLLLLLL
d0096bb8:	4c4c 4c4c 4c4c 4c4c 4c4c 604c 6060 6060     LLLLLLLLLLL`````
d0096bc8:	6060 6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c     `````LLLLLLLLLLL
d0096bd8:	4c4c 4c4c 4c4c 4c4c 4c4c 604c 6060 6060     LLLLLLLLLLL`````
d0096be8:	6060 6060 6060 4c4c 6060 6060 6060 6060     ``````LL````````
d0096bf8:	6060 6060 6060 6060 6060 6010 6060 6060     ``````````.`````
d0096c08:	104c 0000 0000 0000 0000 0000 0000 0000     L...............
	...
d0096c30:	1010 1010 1010 1010 0010 0000 0000 0000     ................
	...
d0096c74:	1000 6060 6060 6060 6060 6060 6060 6060     ..``````````````
d0096c84:	6060 6060 6060 6060 6060 4c60 4c4c 4c4c     ```````````LLLLL
d0096c94:	4c4c 4c4c 4c60 4c4c 4c4c 4c4c 604c 6060     LLLL`LLLLLLLL```
d0096ca4:	6060 6060 6060 4c4c 4c4c 6060 6060 6060     ``````LLLL``````
d0096cb4:	6060 6060 6060 6060 6060 4c60 4c4c 4c4c     ```````````LLLLL
d0096cc4:	604c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     L`LLLLLLLLLLLLLL
d0096cd4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 6060     LLLLLLLLLLLLLL``
d0096ce4:	6060 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ``LLLLLLLLLLLLLL
d0096cf4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 6060     LLLLLLLLLLLLLL``
d0096d04:	6060 4c60 4c4c 4c4c 604c 6060 6060 6060     ```LLLLLL```````
d0096d14:	6060 6060 6060 6060 6060 6060 6060 6060     ````````````````
d0096d24:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d0096d48:	1000 1010 7070 7070 7070 7070 1070 1010     ....ppppppppp...
	...
d0096d90:	1000 6060 6060 6060 6060 6060 6060 6060     ..``````````````
d0096da0:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d0096db0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096dc0:	604c 6060 4c4c 4c4c 4c4c 6060 6060 6060     L```LLLLLL``````
d0096dd0:	6060 4c60 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     ```LLLLLLLLLLLLL
d0096de0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096df0:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096e00:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096e10:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096e20:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096e30:	604c 6060 6060 6060 6060 6060 6060 6060     L```````````````
d0096e40:	1060 0000 0000 0000 0000 0000 0000 0000     `...............
	...
d0096e64:	7010 7070 7070 7070 7070 7070 7070 7070     .ppppppppppppppp
d0096e74:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0096e84:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0096e94:	1010 1010 0000 0000 0000 0000 0000 0000     ................
d0096ea4:	0000 0000 1000 1010 6010 6060 6060 6060     .........```````
d0096eb4:	6060 6060 6060 4c60 4c4c 4c4c 104c 4c10     ```````LLLLLL..L
d0096ec4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096ed4:	4c4c 4c4c 104c 4c10 4c4c 4c60 4c4c 4c4c     LLLLL..LLL`LLLLL
d0096ee4:	4c4c 6060 4c60 604c 4c60 4c4c 104c 4c10     LL```LL``LLLL..L
d0096ef4:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096f04:	4c4c 4c4c 4c4c 4c10 4c4c 4c4c 4c4c 4c4c     LLLLLL.LLLLLLLLL
d0096f14:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096f24:	4c4c 4c4c 4c4c 4c10 4c4c 4c4c 4c4c 4c4c     LLLLLL.LLLLLLLLL
d0096f34:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0096f44:	4c4c 4c4c 104c 4c10 4c4c 4c4c 604c 6060     LLLLL..LLLLLL```
d0096f54:	4c60 6060 6060 4c4c 104c 0000 0000 0000     `L````LLL.......
	...
d0096f78:	1010 1010 1010 1010 7070 7070 7070 7070     ........pppppppp
d0096f88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0096f98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0096fa8:	7070 7070 7070 7070 7070 7070 1010 1010     pppppppppppp....
d0096fb8:	1010 1010 1010 1010 1010 1010 7010 7070     .............ppp
d0096fc8:	6010 6060 6060 6060 6060 6060 4c60 104c     .````````````LL.
d0096fd8:	4c4c 4c4c 4c4c 1010 4c10 4c4c 4c4c 4c4c     LLLLLL...LLLLLLL
d0096fe8:	104c 1010 1010 1010 4c4c 104c 1010 4c4c     L.......LLL...LL
d0096ff8:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0097008:	4c4c 4c4c 4c4c 1010 4c10 4c4c 4c4c 4c4c     LLLLLL...LLLLLLL
d0097018:	4c4c 4c4c 4c4c 4c4c 4c4c 104c 1010 1020     LLLLLLLLLLL... .
d0097028:	4c4c 4c4c 4c4c 4c4c 1010 4c4c 4c4c 4c4c     LLLLLLLL..LLLLLL
d0097038:	4c4c 4c4c 4c4c 4c4c 4c4c 104c 1010 1020     LLLLLLLLLLL... .
d0097048:	4c4c 4c4c 4c4c 4c4c 1010 4c4c 4c4c 4c4c     LLLLLLLL..LLLLLL
d0097058:	4c4c 4c4c 4c4c 4c4c 4c4c 104c 1010 4c4c     LLLLLLLLLLL...LL
d0097068:	4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c 4c4c     LLLLLLLLLLLLLLLL
d0097078:	7010 1010 1010 1010 1010 1010 1010 1010     .p..............
d0097088:	1010 1010 1010 1010 1010 1010 7070 7070     ............pppp
d0097098:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00970a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00970b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00970c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00970d8:	7070 7070 7070 7070 7070 7070 1070 1010     ppppppppppppp...
d00970e8:	4c4c 4c4c 4c4c 4c4c 4c4c 104c 4c4c 4c4c     LLLLLLLLLLL.LLLL
d00970f8:	4c4c 104c 1010 1010 1010 1010 7010 7070     LLL..........ppp
d0097108:	7070 7070 1010 1010 4c10 4c4c 4c4c 104c     pppp.....LLLLLL.
d0097118:	4c10 4c4c 4c4c 4c4c 4c4c 1010 4c4c 4c4c     .LLLLLLLLL..LLLL
d0097128:	4c4c 104c 1010 1010 4c4c 4c4c 4c4c 4c4c     LLL.....LLLLLLLL
d0097138:	4c4c 4c4c 1010 1010 2810 2828 1010 4c4c     LLLL.....(((..LL
d0097148:	4c4c 104c 1010 4c10 4c4c 4c4c 4c4c 4c4c     LLL....LLLLLLLLL
d0097158:	4c4c 4c4c 1010 1010 2810 2828 1010 4c4c     LLLL.....(((..LL
d0097168:	4c4c 104c 1010 4c10 4c4c 4c4c 4c4c 4c4c     LLL....LLLLLLLLL
d0097178:	4c4c 4c4c 1010 1010 4c10 4c4c 4c4c 4c4c     LLLL.....LLLLLLL
d0097188:	4c4c 1010 4c4c 4c4c 4c4c 104c 7070 7070     LL..LLLLLLL.pppp
d0097198:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00971a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00971b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00971c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00971d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00971e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00971f8:	7070 7070 7070 7070 7070 7070 1010 1010     pppppppppppp....
d0097208:	4c4c 1010 1010 1010 1010 1010 1010 1010     LL..............
d0097218:	2810 7070 7070 7070 7070 7070 7070 7070     .(pppppppppppppp
d0097228:	7070 1028 1010 1010 1010 7010 1070 1010     pp(........pp...
d0097238:	1010 1010 1010 1070 1010 1010 1010 1010     ......p.........
d0097248:	2810 1070 1010 1010 1010 1010 1010 1010     .(p.............
d0097258:	2810 7028 7070 7070 1070 1010 1010 1010     .((pppppp.......
d0097268:	7028 1020 1010 1010 1010 1010 1010 1010     (p .............
d0097278:	2810 7028 7070 7070 1070 1010 1010 1010     .((pppppp.......
d0097288:	7028 1020 1010 1010 1010 1010 1010 1010     (p .............
d0097298:	7010 1028 1010 1010 1010 1010 1010 1010     .p(.............
d00972a8:	1010 1010 1010 7010 7070 7070 7070 7070     .......ppppppppp
d00972b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00972c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00972d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00972e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00972f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097308:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097318:	7070 7070 7070 7070 7070 7070 1010 7070     pppppppppppp..pp
d0097328:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097338:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097348:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097358:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097368:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097378:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097388:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097398:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00973a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00973b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00973c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00973d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00973e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00973f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097408:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097418:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097428:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097438:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097448:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097458:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097468:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097478:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097488:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097498:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00974a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00974b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00974c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00974d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00974e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00974f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097508:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097518:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097528:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097538:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097548:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097558:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097568:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097578:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097588:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097598:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00975a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00975b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00975c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00975d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00975e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00975f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097608:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097618:	2870 7070 7070 7070 7070 7070 7070 7070     p(pppppppppppppp
d0097628:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097638:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097648:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097658:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097668:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097678:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097688:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097698:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00976a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00976b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00976c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00976d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00976e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00976f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097708:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097718:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097728:	7070 7070 7070 7070 7070 7070 2028 7070     pppppppppppp( pp
d0097738:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097748:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097758:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097768:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097778:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097788:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097798:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00977a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00977b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00977c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00977d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00977e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00977f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097808:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097818:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097828:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097838:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097848:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097858:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097868:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097878:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097888:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097898:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00978a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00978b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00978c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00978d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00978e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00978f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097908:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097918:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097928:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097938:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097948:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097958:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097968:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097978:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097988:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097998:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00979a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00979b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00979c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00979d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00979e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00979f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a28:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a48:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097a98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097aa8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ab8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ac8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ad8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ae8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097af8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b28:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b48:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097b98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ba8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097bb8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097bc8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097bd8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097be8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097bf8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c28:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c48:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097c98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ca8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097cb8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097cc8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097cd8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ce8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097cf8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d28:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d48:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097d98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097da8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097db8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097dc8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097dd8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097de8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097df8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e28:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e48:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097e98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ea8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097eb8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ec8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ed8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ee8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097ef8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f18:	7070 7070 7070 7070 7070 7070 2870 7070     ppppppppppppp(pp
d0097f28:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f48:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097f98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097fa8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097fb8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097fc8:	7070 7070 7070 7070 7070 7070 2870 7070     ppppppppppppp(pp
d0097fd8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0097fe8:	7070 7070 7070 7070 7070 7070 2870 7070     ppppppppppppp(pp
d0097ff8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098008:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098018:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098028:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098038:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098048:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098058:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098068:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098078:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098088:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098098:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00980a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00980b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00980c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00980d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00980e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00980f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098108:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098118:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098128:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098138:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098148:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098158:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098168:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098178:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098188:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098198:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00981a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00981b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00981c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00981d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00981e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00981f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098208:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098218:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098228:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098238:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098248:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098258:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098268:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098278:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098288:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098298:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00982a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00982b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00982c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00982d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00982e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00982f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098308:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098318:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098328:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098338:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098348:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098358:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098368:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098378:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098388:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098398:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00983a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00983b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00983c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00983d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00983e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00983f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098408:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098418:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098428:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098438:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098448:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098458:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098468:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098478:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098488:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098498:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00984a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00984b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00984c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00984d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00984e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00984f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098508:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098518:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098528:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098538:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098548:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098558:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098568:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098578:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098588:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098598:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00985a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00985b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00985c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00985d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00985e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00985f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098608:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098618:	7070 7070 7070 7070 7070 7070 1010 1010     pppppppppppp....
d0098628:	1010 1010 7010 7070 7070 7070 7070 7070     .....ppppppppppp
d0098638:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098648:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098658:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098668:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098678:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098688:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098698:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00986a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00986b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00986c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00986d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00986e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00986f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098708:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098718:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098728:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098738:	7070 7070 7070 7070 1070 2010 2020 1020     ppppppppp..    .
d0098748:	7070 7070 7070 1010 1010 1010 1010 1010     pppppp..........
d0098758:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0098768:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0098778:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0098788:	1010 1010 1010 1010 1010 1010 7070 7070     ............pppp
d0098798:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00987a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00987b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00987c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00987d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00987e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00987f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098808:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098818:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098828:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098838:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098848:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098858:	7070 7070 7070 2010 2020 1020 1010 1010     pppppp.    .....
d0098868:	1010 2828 2828 2828 2828 2828 2828 2828     ..((((((((((((((
d0098878:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098888:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098898:	2828 2828 2828 2828 2828 2828 2020 2020     ((((((((((((    
d00988a8:	2020 1020 1010 7070 7070 7070 7070 7070        ...pppppppppp
d00988b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00988c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00988d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00988e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00988f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098908:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098918:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098928:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098938:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098948:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098958:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098968:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098978:	7070 1070 2020 1020 2828 2828 2828 2828     ppp.   .((((((((
d0098988:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098998:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00989a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00989b8:	2828 2828 2828 2828 2828 2820 2020 2020     (((((((((( (    
d00989c8:	1020 1010 7010 7070 7070 7070 7070 7070      ....ppppppppppp
d00989d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00989e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00989f8:	2070 7010 7070 7070 7070 7070 7070 7070     p .ppppppppppppp
d0098a08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098a18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098a28:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098a38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098a48:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098a58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098a68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098a78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098a88:	7070 7070 7070 7070 7070 7070 1070 1010     ppppppppppppp...
d0098a98:	2020 1020 2820 2828 2828 2828 2828 2828        . (((((((((((
d0098aa8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098ab8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098ac8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098ad8:	2828 2828 2828 2028 2028 2028 2020 1010     ((((((( ( (   ..
d0098ae8:	1010 1010 7070 7070 7070 7070 7070 7070     ....pppppppppppp
d0098af8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b08:	7070 7070 7070 7070 7070 7070 1010 7020     pppppppppppp.. p
d0098b18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b28:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b48:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098b98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098ba8:	7070 7070 7070 1010 2010 1020 2020 1020     pppppp...  .   .
d0098bb8:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d0098bc8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098bd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098be8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098bf8:	2828 2828 2028 2820 2820 1020 2010 2020     (((((  ( ( ..   
d0098c08:	1010 1010 7070 7070 7070 7070 7070 7070     ....pppppppppppp
d0098c18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098c28:	7070 7070 7070 2070 2010 7070 7070 7070     ppppppp . pppppp
d0098c38:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098c48:	7070 7070 7070 7070 7010 7070 7070 7070     pppppppp.ppppppp
d0098c58:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098c68:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098c78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098c88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098c98:	7070 7070 7070 7070 7070 7070 7070 1070     ppppppppppppppp.
d0098ca8:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0098cb8:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0098cc8:	1010 2820 2828 2010 2020 2020 2010 2828     .. (((.     . ((
d0098cd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098ce8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098cf8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098d08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098d18:	2828 2028 2028 2028 2010 2820 2020 2020     ((( ( ( .  (    
d0098d28:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0098d38:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0098d48:	1010 1020 2010 1010 1010 1010 1010 1010     .. .. ..........
d0098d58:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0098d68:	1010 1010 1028 1010 7070 7070 7070 7070     ....(...pppppppp
d0098d78:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098d88:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098d98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098da8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098db8:	7070 7070 7070 1010 1010 2810 2828 2828     pppppp.....(((((
d0098dc8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098dd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098de8:	1028 7028 7070 7070 2010 2828 2828 2828     (.(ppppp. ((((((
d0098df8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098e08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098e18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098e28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098e38:	2828 2820 1020 2820 2028 2020 2020 2020     (( ( . ((       
d0098e48:	2020 2820 2828 2828 2828 2828 2828 2828        (((((((((((((
d0098e58:	2828 2828 2828 2828 2828 2828 2828 1020     (((((((((((((( .
d0098e68:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d0098e78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098e88:	2028 2020 1010 1010 7010 7070 7070 7070     (   .....ppppppp
d0098e98:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098ea8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098eb8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098ec8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098ed8:	1010 2010 2820 2828 2828 2828 2828 2828     ...  (((((((((((
d0098ee8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098ef8:	2828 2828 2828 2828 2828 2828 1028 7070     (((((((((((((.pp
d0098f08:	7070 2870 2020 2820 2828 2828 2828 2828     ppp(   (((((((((
d0098f18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098f28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098f38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098f48:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d0098f58:	2028 2810 2828 2020 2028 2028 2028 2828     ( .(((  ( ( ( ((
d0098f68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098f78:	2828 2828 2828 2828 2828 2028 1010 2828     ((((((((((( ..((
d0098f88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0098f98:	2828 2828 2828 2828 2828 2828 2828 2020     ((((((((((((((  
d0098fa8:	2020 2020 1020 7010 7070 7070 7070 7070          ..ppppppppp
d0098fb8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098fc8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098fd8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0098fe8:	7070 7070 7070 7070 7070 1010 1020 2020     pppppppppp.. .  
d0098ff8:	2820 2820 2828 2828 2828 2828 2828 2828      ( (((((((((((((
d0099008:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099018:	2828 2828 2828 2828 1028 7070 7070 7070     (((((((((.pppppp
d0099028:	7070 2070 2828 2828 2828 2828 2828 2828     ppp ((((((((((((
d0099038:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099048:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099058:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099068:	2828 2828 2828 2828 2828 2828 2028 1020     (((((((((((((  .
d0099078:	2828 2828 2820 2828 2820 2828 2828 2828     (((( ((( (((((((
d0099088:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099098:	2828 2828 2828 2820 1020 2820 2828 2828     (((((( ( . (((((
d00990a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00990b8:	2828 2828 2828 2828 2828 2828 2020 2020     ((((((((((((    
d00990c8:	2020 7010 7070 7070 7070 7070 7070 7070       .ppppppppppppp
d00990d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00990e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00990f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099108:	7070 7070 7070 1010 2010 2020 2020 2820     pppppp...      (
d0099118:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099128:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099138:	2828 2828 1028 1010 7070 7070 7070 2020     (((((...pppppp  
d0099148:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099158:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099168:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099178:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099188:	2828 2828 2828 2828 2828 2028 2820 2828     (((((((((((  (((
d0099198:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00991a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00991b8:	2828 2828 1020 2828 2828 2828 2828 2828     (((( .((((((((((
d00991c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00991d8:	2828 2828 2828 2828 2828 2028 2020 7010     (((((((((((   .p
d00991e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00991f8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099208:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099218:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099228:	7070 7070 2010 2020 2020 2020 2820 2828     pppp.        (((
d0099238:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099248:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099258:	2028 2020 2020 2020 2828 2810 2828 2828     (       ((.(((((
d0099268:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099278:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099288:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099298:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00992a8:	2828 2828 2828 2828 2820 2828 2828 2828     (((((((( (((((((
d00992b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00992c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00992d8:	2028 2820 2828 2828 2828 2828 2828 2828     (  (((((((((((((
d00992e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00992f8:	2828 2828 2828 2028 1020 7070 7070 7070     (((((((  .pppppp
d0099308:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099318:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099328:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099338:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099348:	7070 2010 2020 2020 2020 2028 2828 2828     pp.       ( ((((
d0099358:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099368:	2828 2828 2828 2828 2828 2828 2028 2028     ((((((((((((( ( 
d0099378:	2820 2828 1028 2820 2828 2828 2828 2828      ((((. (((((((((
d0099388:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099398:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00993a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00993b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00993c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00993d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00993e8:	2828 2828 2828 2828 2828 2828 2028 2828     ((((((((((((( ((
d00993f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099408:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099418:	2828 2028 7010 7070 7070 7070 7070 7070     ((( .ppppppppppp
d0099428:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099438:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099448:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099458:	7070 7070 7070 7070 7070 7070 7070 1070     ppppppppppppppp.
d0099468:	2010 2020 2020 2020 2820 2820 2828 2828     .        ( (((((
d0099478:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099488:	2828 2828 2828 2828 2828 2820 2828 2828     (((((((((( (((((
d0099498:	2010 2828 2828 2828 2828 2828 2828 2828     . ((((((((((((((
d00994a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00994b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00994c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00994d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00994e8:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d00994f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099508:	2828 2828 2828 2828 2828 2820 2828 2828     (((((((((( (((((
d0099518:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099528:	2828 2828 2828 2828 2828 2828 2828 1020     (((((((((((((( .
d0099538:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099548:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099558:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099568:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099578:	7070 7070 7070 7070 7070 7070 1070 2010     ppppppppppppp.. 
d0099588:	2020 2020 2020 2028 2028 2828 2828 2828           ( ( ((((((
d0099598:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00995a8:	2828 2828 2828 2820 2828 2028 2820 2820     (((((( ((((  ( (
d00995b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00995c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00995d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00995e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00995f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099608:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099618:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099628:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d0099638:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099648:	2828 2828 2828 2828 2028 1020 7070 7070     (((((((((  .pppp
d0099658:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099668:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099678:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099688:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099698:	7070 7070 7070 7070 7070 1070 2010 2020     ppppppppppp..   
d00996a8:	2020 2020 2020 2828 2828 2828 2828 2828           ((((((((((
d00996b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00996c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00996d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00996e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00996f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099708:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099718:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099728:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099738:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099748:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099758:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099768:	2828 2828 2020 7010 7070 7070 7070 7070     ((((  .ppppppppp
d0099778:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099788:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099798:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00997a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00997b8:	7070 7070 7070 7070 1070 1010 2020 2020     ppppppppp...    
d00997c8:	2820 2828 2028 2020 2020 2828 2828 2020      ((((     ((((  
d00997d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00997e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d00997f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099808:	2828 2828 2828 2828 2828 2828 2020 2820     ((((((((((((   (
d0099818:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099828:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099838:	2828 2828 2828 2828 2828 2820 2828 2828     (((((((((( (((((
d0099848:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099858:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099868:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099878:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d0099888:	1020 7070 7070 7070 7070 7070 7070 7070      .pppppppppppppp
d0099898:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00998a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00998b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00998c8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00998d8:	7070 7070 7070 7070 1010 2820 2828 2828     pppppppp.. (((((
d00998e8:	2028 2828 2828 2820 2828 2820 2820 2828     ( (((( ((( ( (((
d00998f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099908:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099918:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099928:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d0099938:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099948:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099958:	2828 2828 2828 2820 2828 2828 2828 2828     (((((( (((((((((
d0099968:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099978:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099988:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099998:	2828 2828 2828 2828 2828 2028 7010 7070     ((((((((((( .ppp
d00999a8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00999b8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00999c8:	7070 7070 7070 7070 7070 7070 7070 7020     pppppppppppppp p
d00999d8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00999e8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d00999f8:	7070 7070 7070 1010 2828 2828 2828 2820     pppppp..(((((( (
d0099a08:	2828 2820 2828 2028 2828 2828 2828 2828     (( (((( ((((((((
d0099a18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099a28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099a38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099a48:	2828 2820 2828 2828 2820 2828 2828 2828     (( ((((( (((((((
d0099a58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099a68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099a78:	2828 1028 2828 2828 2828 2828 2828 2828     (((.((((((((((((
d0099a88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099a98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099aa8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099ab8:	2828 2828 2828 2020 7070 7070 7070 7070     ((((((  pppppppp
d0099ac8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099ad8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099ae8:	7070 7070 7070 7070 7070 2010 7070 7070     pppppppppp. pppp
d0099af8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099b08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099b18:	7070 7070 2810 2828 2828 2820 2828 2028     pppp.((((( (((( 
d0099b28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099b38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099b48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099b58:	2828 2828 2828 2828 2828 2828 2028 2828     ((((((((((((( ((
d0099b68:	2828 2828 2820 2828 2828 2828 2828 2828     (((( (((((((((((
d0099b78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099b88:	2828 2828 2828 2828 2828 2828 2828 1028     (((((((((((((((.
d0099b98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099ba8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099bb8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099bc8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099bd8:	2828 7010 7070 7070 7070 7070 7070 7070     ((.ppppppppppppp
d0099be8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099bf8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099c08:	7070 7070 7070 1020 1020 7070 7070 7070     pppppp . .pppppp
d0099c18:	7070 7070 7070 7070 7070 7070 1070 1010     ppppppppppppp...
d0099c28:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0099c38:	2810 2828 2028 2828 2828 2028 2828 2828     .(((( ((((( ((((
d0099c48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099c58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099c68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099c78:	2828 2828 2828 2828 2820 2828 2828 2828     (((((((( (((((((
d0099c88:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d0099c98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099ca8:	2828 2828 2828 2828 2828 2028 2810 2828     ((((((((((( .(((
d0099cb8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099cc8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099cd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099ce8:	2828 2828 2828 2828 2828 2828 1028 7070     (((((((((((((.pp
d0099cf8:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099d08:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099d18:	7070 7070 7070 7070 7070 7070 7070 7070     pppppppppppppppp
d0099d28:	7070 2070 2010 7010 7070 7070 7070 7070     ppp . .ppppppppp
d0099d38:	7070 7070 7070 7070 7070 1070 1010 2010     ppppppppppp.... 
d0099d48:	2020 2020 2020 2020 2020 1020 2828 2828                .((((
d0099d58:	2820 2828 2828 2820 2828 2828 2828 2828      ((((( (((((((((
d0099d68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099d78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099d88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099d98:	2828 2028 2828 2828 2828 2828 2028 2828     ((( ((((((((( ((
d0099da8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099db8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099dc8:	2828 2828 2828 2828 1010 2828 2828 2828     ((((((((..((((((
d0099dd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099de8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099df8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099e08:	2828 2828 2828 2828 1028 1010 1010 1010     (((((((((.......
d0099e18:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0099e28:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0099e38:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0099e48:	1010 1010 1010 1010 1010 1010 1010 1010     ................
d0099e58:	1010 1010 1010 1010 2020 2020 2020 2028     ........      ( 
d0099e68:	2028 2820 2020 2810 2828 2828 2820 2828     (  (  .((((( (((
d0099e78:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d0099e88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099e98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099ea8:	2828 2828 2828 2828 2828 2828 2828 2820     (((((((((((((( (
d0099eb8:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d0099ec8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099ed8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099ee8:	2828 2828 1028 2820 2828 2828 2828 2828     (((((. (((((((((
d0099ef8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099f08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099f18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099f28:	2828 2828 2828 2010 2820 2828 2828 2828     ((((((.  (((((((
d0099f38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099f48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099f58:	2828 2828 2828 2828 2828 2028 1010 2010     ((((((((((( ... 
d0099f68:	2828 2828 2828 2828 2828 2828 2028 2820     (((((((((((((  (
d0099f78:	2020 2010 2020 2020 2828 2820 2820 2828       .     (( ( (((
d0099f88:	1020 2820 2828 2028 2828 2828 2820 2828      . (((( (((( (((
d0099f98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099fa8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099fb8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d0099fc8:	2828 2828 2828 2828 2828 2820 2828 2828     (((((((((( (((((
d0099fd8:	2828 2828 2820 2828 2828 2828 2828 2028     (((( (((((((((( 
d0099fe8:	2020 2828 2828 2828 2828 2828 2828 2828       ((((((((((((((
d0099ff8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a008:	2828 2810 2828 2828 2828 2828 2828 2828     ((.(((((((((((((
d009a018:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a028:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a038:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a048:	2828 2810 2828 2828 2828 2828 2828 2828     ((.(((((((((((((
d009a058:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a068:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a078:	2828 2828 2828 2028 1010 2820 2828 2828     ((((((( .. (((((
d009a088:	2828 2828 2828 2828 2828 2028 2028 2010     ((((((((((( ( . 
d009a098:	2820 2828 2828 2828 2828 2028 2010 2828      (((((((((( . ((
d009a0a8:	2828 2828 2020 2028 2828 2828 2828 2828     ((((  ( ((((((((
d009a0b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a0c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a0d8:	2828 2828 2828 2828 2828 2828 2028 2820     (((((((((((((  (
d009a0e8:	2828 2828 2828 2028 2828 2828 2828 2028     ((((((( ((((((( 
d009a0f8:	2828 2828 2828 2828 2828 2028 2828 2020     ((((((((((( ((  
d009a108:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a118:	2828 2828 2828 2828 2828 2828 2828 2820     (((((((((((((( (
d009a128:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a138:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a148:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a158:	2828 2828 2828 2828 2828 2828 2828 2810     ((((((((((((((.(
d009a168:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a178:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a188:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a198:	2828 1028 1010 2820 2828 2828 2828 2828     (((... (((((((((
d009a1a8:	2828 2828 2828 2828 1020 2820 2828 2828     (((((((( . (((((
d009a1b8:	2828 2828 2828 1020 2820 2828 2828 2828     (((((( . (((((((
d009a1c8:	2828 2820 2828 2828 2828 2020 2828 2828     (( (((((((  ((((
d009a1d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a1e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a1f8:	2828 2828 2828 2828 2820 2820 2828 2828     (((((((( ( (((((
d009a208:	2828 2828 2820 2828 2828 2028 2828 2828     (((( (((((( ((((
d009a218:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d009a228:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a238:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a248:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a258:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a268:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a278:	2828 2828 2828 2828 2828 2028 2828 2828     ((((((((((( ((((
d009a288:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a298:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a2a8:	2828 2828 2828 2828 2828 2828 2828 1028     (((((((((((((((.
d009a2b8:	1010 2828 2828 2828 2828 2828 2828 2828     ..((((((((((((((
d009a2c8:	2828 2828 2010 2828 2828 2828 2828 2828     ((((. ((((((((((
d009a2d8:	2828 1020 2828 2828 2828 2828 2828 2828     (( .((((((((((((
d009a2e8:	2828 2828 2028 2028 2828 2828 2828 2828     ((((( ( ((((((((
d009a2f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a308:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a318:	2828 2028 2828 2028 2828 2828 2828 2828     ((( ((( ((((((((
d009a328:	2028 2820 2028 2820 2828 2828 2828 2828     (  ((  (((((((((
d009a338:	2828 2028 2828 2828 2820 2828 2828 2828     ((( (((( (((((((
d009a348:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a358:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d009a368:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a378:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a388:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a398:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d009a3a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a3b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a3c8:	2828 2828 2828 2828 2828 1020 2010 2828     (((((((((( .. ((
d009a3d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a3e8:	2810 2828 2828 2828 2828 2828 2828 2810     .(((((((((((((.(
d009a3f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a408:	2820 2028 2828 2828 2828 2828 2828 2828      (( ((((((((((((
d009a418:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a428:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d009a438:	2828 2028 2828 2828 2828 2828 2828 2028     ((( ((((((((((( 
d009a448:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009a458:	2020 2828 2820 2828 2828 2828 2828 2828       (( (((((((((((
d009a468:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a478:	2828 2828 2820 2828 2828 2828 2828 2828     (((( (((((((((((
d009a488:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a498:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a4a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a4b8:	2828 2828 2810 2828 2828 2828 2828 2828     ((((.(((((((((((
d009a4c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a4d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a4e8:	2828 2828 2828 1028 2828 2828 2828 2828     (((((((.((((((((
d009a4f8:	2828 2828 2828 2828 2828 2828 2820 2828     (((((((((((( (((
d009a508:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d009a518:	2828 2828 2828 2828 2828 2828 2820 2828     (((((((((((( (((
d009a528:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009a538:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a548:	2828 2828 2828 2828 2828 2028 2828 2828     ((((((((((( ((((
d009a558:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009a568:	2828 2828 2828 2828 2828 2828 2828 2020     ((((((((((((((  
d009a578:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a588:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a598:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009a5a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a5b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a5c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a5d8:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d009a5e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a5f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a608:	2828 2820 2828 2828 2828 2828 2828 2828     (( (((((((((((((
d009a618:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a628:	2828 2828 2028 2828 2828 2828 2828 2828     ((((( ((((((((((
d009a638:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d009a648:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a658:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a668:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d009a678:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a688:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a698:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a6a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a6b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a6c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a6d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a6e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a6f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a708:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a718:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a728:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a738:	2828 2028 2828 2828 2828 2828 2828 2828     ((( ((((((((((((
d009a748:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a758:	2828 2828 2020 2820 2828 2828 2828 2828     ((((   (((((((((
d009a768:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a778:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a788:	2828 2828 2020 2820 2828 2828 2828 2828     ((((   (((((((((
d009a798:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a7a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a7b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a7c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a7d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a7e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a7f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a808:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d009a818:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a828:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a838:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a848:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a858:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a868:	2828 2828 2828 2828 2828 2020 2828 2828     ((((((((((  ((((
d009a878:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a888:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a898:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a8a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a8b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a8c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a8d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a8e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a8f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a908:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a918:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a928:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a938:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a948:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a958:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a968:	2828 2828 2828 2828 2828 2028 2828 2828     ((((((((((( ((((
d009a978:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a988:	2828 2828 2028 2028 2828 2828 2828 2828     ((((( ( ((((((((
d009a998:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d009a9a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a9b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a9c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a9d8:	2828 2828 2028 2020 2020 2828 2828 2020     (((((     ((((  
d009a9e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009a9f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aa08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aa18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aa28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aa38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aa48:	1028 2828 2828 2828 2828 2828 2828 2828     (.((((((((((((((
d009aa58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aa68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aa78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aa88:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d009aa98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aaa8:	2820 1028 1010 2810 2828 2828 2828 1010      ((....(((((((..
d009aab8:	1010 2828 2028 2828 2828 2828 2828 2828     ..((( ((((((((((
d009aac8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aad8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aae8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aaf8:	2028 2828 2828 2820 2828 2820 2820 2828     ( (((( ((( ( (((
d009ab08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ab18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ab28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ab38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ab48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ab58:	2828 2828 2828 2828 2828 2828 2028 2828     ((((((((((((( ((
d009ab68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ab78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ab88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ab98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aba8:	2828 2810 2828 2828 2828 2828 2828 2828     ((.(((((((((((((
d009abb8:	2828 2828 2828 2828 1028 1010 2820 2028     (((((((((... (( 
d009abc8:	4c10 2810 2828 2828 1010 4c4c 2810 2828     .L.(((((..LL.(((
d009abd8:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d009abe8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009abf8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ac08:	2828 2828 2828 2828 2828 2828 2828 2820     (((((((((((((( (
d009ac18:	2828 2820 2828 2028 2828 2828 2828 2828     (( (((( ((((((((
d009ac28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ac38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ac48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ac58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ac68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ac78:	2828 2828 2828 2828 2028 2828 2828 2828     ((((((((( ((((((
d009ac88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ac98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aca8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009acb8:	2828 2828 2828 2828 2828 2828 2828 2810     ((((((((((((((.(
d009acc8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009acd8:	2828 2828 1028 4c4c 1010 2810 4c10 104c     (((((.LL...(.LL.
d009ace8:	2828 1010 4c4c 104c 2828 2828 2810 2828     ((..LLL.((((.(((
d009acf8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad28:	2828 2828 2828 2828 2828 2820 2828 2028     (((((((((( (((( 
d009ad38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ad98:	2828 2828 1028 2828 2828 2828 2828 2828     (((((.((((((((((
d009ada8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009adb8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009adc8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009add8:	2828 2828 2828 2828 1028 2820 2828 2828     (((((((((. (((((
d009ade8:	2828 2828 2828 2828 2828 1028 1010 2810     (((((((((((....(
d009adf8:	2828 4c10 5858 104c 1010 1058 1010 584c     ((.LXXL...X...LX
d009ae08:	4c4c 2810 2828 1028 2820 2828 2828 2828     LL.((((. (((((((
d009ae18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ae28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ae38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ae48:	2828 2828 2028 2828 2828 2028 2828 2828     ((((( ((((( ((((
d009ae58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ae68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ae78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ae88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ae98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aea8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aeb8:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d009aec8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aed8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aee8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aef8:	2828 2828 1010 2828 2828 2828 2828 2828     ((((..((((((((((
d009af08:	2828 2828 2828 1010 4c4c 104c 1010 1010     ((((((..LLL.....
d009af18:	584c 4c58 104c 4c58 4c4c 5858 104c 2828     LXXLL.XLLLXXL.((
d009af28:	2828 1010 2828 2828 2828 2828 2828 2828     ((..((((((((((((
d009af38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009af48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009af58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009af68:	2820 2828 2828 2820 2828 2828 2828 2828      ((((( (((((((((
d009af78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009af88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009af98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009afa8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009afb8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009afc8:	2828 2828 2828 2828 2828 2828 2028 2820     (((((((((((((  (
d009afd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009afe8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009aff8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b008:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d009b018:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d009b028:	2828 2828 1010 584c 4c58 1010 4c10 5858     ((((..LXXL...LXX
d009b038:	4c58 5858 5858 4c58 104c 2828 2028 2810     XLXXXXXLL.((( .(
d009b048:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b058:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b068:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b078:	2828 2828 2828 2828 2828 2828 2820 2828     (((((((((((( (((
d009b088:	2028 2828 2828 2828 2828 2828 2828 2828     ( ((((((((((((((
d009b098:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b0a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b0b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b0c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b0d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b0e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b0f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b108:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b118:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b128:	2828 2828 2828 2828 2828 1028 2828 2828     (((((((((((.((((
d009b138:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b148:	2828 4c10 5858 5858 4c58 5858 5858 5858     ((.LXXXXXLXXXXXX
d009b158:	5858 4c4c 2810 1028 1010 2828 2828 2828     XXLL.((...((((((
d009b168:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b178:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b188:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b198:	2828 2828 2828 2028 2828 2828 2820 2828     ((((((( (((( (((
d009b1a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b1b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b1c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b1d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b1e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b1f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b208:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b218:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b228:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b238:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b248:	2828 2828 2828 2028 2828 2828 2828 2828     ((((((( ((((((((
d009b258:	2828 2828 2828 2828 2828 2828 2828 1010     ((((((((((((((..
d009b268:	4c10 584c 5858 5858 5858 5858 5858 4c4c     .LLXXXXXXXXXXXLL
d009b278:	1010 4c10 4c4c 2810 2828 2828 2828 2828     ...LLL.(((((((((
d009b288:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b298:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b2a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b2b8:	2828 2828 2020 2028 2828 2828 2828 2828     ((((  ( ((((((((
d009b2c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b2d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b2e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b2f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b308:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b318:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b328:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b338:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b348:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b358:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b368:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b378:	2828 2828 2828 1010 1010 4c10 104c 4c4c     ((((((.....LL.LL
d009b388:	584c 5858 5858 5858 5858 5858 4c4c 4c4c     LXXXXXXXXXXXLLLL
d009b398:	1010 2828 1010 1010 2828 2828 2828 1028     ..((....(((((((.
d009b3a8:	1010 2810 2828 2828 2828 2828 2828 2828     ...(((((((((((((
d009b3b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b3c8:	2828 1028 1010 2810 2828 2828 2828 1010     (((....(((((((..
d009b3d8:	1010 2820 2828 2828 2828 2020 2828 2828     .. (((((((  ((((
d009b3e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b3f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b408:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b418:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b428:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b438:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b448:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b458:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b468:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b478:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b488:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b498:	1028 4c4c 104c 584c 5858 584c 5858 5858     (.LLL.LXXXLXXXXX
d009b4a8:	5858 5858 5858 4c4c 4c4c 1010 2820 2828     XXXXXXLLLL.. (((
d009b4b8:	1028 4c4c 1010 2828 2828 1028 104c 2828     (.LL..(((((.L.((
d009b4c8:	2828 1010 2810 2828 2828 2828 2828 2828     ((...(((((((((((
d009b4d8:	2828 2828 2828 2828 1028 1010 2828 2828     (((((((((...((((
d009b4e8:	4c10 2810 2828 2828 1010 4c4c 2810 2828     .L.(((((..LL.(((
d009b4f8:	2828 2828 2028 2028 2828 2828 2828 2828     ((((( ( ((((((((
d009b508:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b518:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b528:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b538:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b548:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b558:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b568:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b578:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b588:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b598:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b5a8:	2828 2828 2828 2828 2828 2828 4c10 1010     ((((((((((((.L..
d009b5b8:	4c10 5858 5858 5858 5858 5858 5858 5858     .LXXXXXXXXXXXXXX
d009b5c8:	584c 4c4c 1010 2028 2828 2828 2828 4c10     LXLL..( ((((((.L
d009b5d8:	4c4c 1010 2828 4c10 104c 1028 1010 4c4c     LL..((.LL.(...LL
d009b5e8:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d009b5f8:	2828 2828 1028 4c4c 1010 2810 4c10 104c     (((((.LL...(.LL.
d009b608:	2828 1010 4c4c 104c 2828 2828 2828 2828     ((..LLL.((((((((
d009b618:	2820 2028 2828 2828 2828 2828 2828 2828      (( ((((((((((((
d009b628:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b638:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b648:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b658:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b668:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b678:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b688:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b698:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b6a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b6b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b6c8:	2828 2828 2828 2828 1010 1028 584c 4c58     ((((((((..(.LXXL
d009b6d8:	4c4c 4c4c 584c 5858 5858 5858 4c4c 104c     LLLLLXXXXXXXLLL.
d009b6e8:	2810 2028 2828 2828 2828 1028 4c4c 4c58     .(( (((((((.LLXL
d009b6f8:	1010 5810 1010 4c10 5858 104c 2828 1028     ...X...LXXL.(((.
d009b708:	1010 2810 2828 2828 2828 1028 1010 2810     ...((((((((....(
d009b718:	2828 4c10 5858 104c 1010 1058 1010 584c     ((.LXXL...X...LX
d009b728:	4c4c 2810 2828 2828 2828 2828 2820 2828     LL.((((((((( (((
d009b738:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009b748:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b758:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b768:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b778:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b788:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b798:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b7a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b7b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b7c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b7d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b7e8:	2828 2828 2828 1028 5858 4c4c 104c 1010     (((((((.XXLLL...
d009b7f8:	5858 4c4c 5858 4c58 4c4c 4c4c 104c 1010     XXLLXXXLLLLLL...
d009b808:	2828 2828 2828 2828 4c10 5858 4c4c 584c     ((((((((.LXXLLLX
d009b818:	4c10 584c 4c58 1010 1010 4c10 4c4c 1010     .LLXXL.....LLL..
d009b828:	2828 2828 2828 1010 4c4c 104c 1010 1010     ((((((..LLL.....
d009b838:	584c 4c58 104c 4c58 4c4c 5858 104c 2828     LXXLL.XLLLXXL.((
d009b848:	2828 2828 2828 2028 2828 2028 2828 2828     ((((((( ((( ((((
d009b858:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b868:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b878:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b888:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b898:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b8a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b8b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b8c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b8d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b8e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b8f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b908:	2828 4c10 4c58 104c 2810 4c10 4c58 4c4c     ((.LXLL..(.LXLLL
d009b918:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 2810 2828     XXLLLLLLLLLL.(((
d009b928:	2828 2828 4c10 584c 5858 5858 584c 5858     ((((.LLXXXXXLXXX
d009b938:	104c 1010 584c 4c58 1010 2828 2828 2828     L...LXXL..((((((
d009b948:	2828 2828 1010 584c 4c58 1010 4c10 5858     ((((..LXXL...LXX
d009b958:	4c58 5858 5858 4c58 104c 2828 2828 2828     XLXXXXXLL.((((((
d009b968:	2828 2828 2020 2820 2828 2828 2828 2828     ((((   (((((((((
d009b978:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b988:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b998:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b9a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b9b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b9c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b9d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b9e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009b9f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ba08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ba18:	2828 2828 2828 2828 2828 2828 2828 4c10     ((((((((((((((.L
d009ba28:	104c 2810 1028 4c4c 104c 1010 584c 4c4c     L..((.LLL...LXLL
d009ba38:	4c4c 4c4c 1010 1010 2810 2828 1010 2810     LLLL.....(((...(
d009ba48:	1028 4c4c 5858 5858 5858 5858 584c 5858     (.LLXXXXXXXXLXXX
d009ba58:	5858 104c 2828 2828 2828 2828 2828 2828     XXL.((((((((((((
d009ba68:	2828 4c10 5858 5858 4c58 5858 5858 5858     ((.LXXXXXLXXXXXX
d009ba78:	5858 4c4c 2810 1028 1010 2828 2828 2828     XXLL.((...((((((
d009ba88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009ba98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009baa8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bab8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bac8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bad8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bae8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009baf8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bb08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bb18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bb28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bb38:	2828 2828 2828 2828 2828 4c10 2810 2828     ((((((((((.L.(((
d009bb48:	4c10 4c4c 1010 1010 584c 4c10 4c4c 104c     .LLL....LX.LLLL.
d009bb58:	1010 2828 2828 1028 4c4c 104c 1010 4c4c     ..(((((.LLL...LL
d009bb68:	5858 5858 5858 5858 5858 4c58 104c 1010     XXXXXXXXXXXLL...
d009bb78:	2828 2828 2828 2828 2828 2828 2828 1010     ((((((((((((((..
d009bb88:	4c10 584c 5858 5858 5858 5858 5858 4c4c     .LLXXXXXXXXXXXLL
d009bb98:	1010 4c10 4c4c 2810 2828 2828 2828 2828     ...LLL.(((((((((
d009bba8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bbb8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bbc8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bbd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bbe8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bbf8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bc08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bc18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bc28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bc38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bc48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bc58:	2828 2828 2828 2028 2028 2828 4c10 4c4c     ((((((( ( ((.LLL
d009bc68:	2810 1028 4c4c 104c 104c 114c 1111 2810     .((.LLL.L.L....(
d009bc78:	2828 2828 1010 4c4c 4c4c 5858 5858 5858     ((((..LLLLXXXXXX
d009bc88:	5858 5858 4c58 4c4c 4c10 104c 1010 1010     XXXXXLLL.LL.....
d009bc98:	2828 2828 2828 1010 1010 4c10 104c 4c4c     ((((((.....LL.LL
d009bca8:	584c 5858 5858 5858 5858 5858 4c4c 4c4c     LXXXXXXXXXXXLLLL
d009bcb8:	1010 2828 2828 2828 2828 2828 2828 2828     ..((((((((((((((
d009bcc8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bcd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bce8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bcf8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bd08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bd18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bd28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bd38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bd48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bd58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bd68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bd78:	2828 2028 2828 2820 4c10 4c4c 2810 1028     ((( (( (.LLL.((.
d009bd88:	4c10 104c 104c 1010 2111 1011 2828 2828     .LL.L....!..((((
d009bd98:	1028 1010 4c4c 4c4c 5858 5858 5858 5858     (...LLLLXXXXXXXX
d009bda8:	5858 4c58 5858 4c58 4c10 4c4c 2810 2828     XXXLXXXL.LLL.(((
d009bdb8:	1028 4c4c 104c 584c 5858 584c 5858 5858     (.LLL.LXXXLXXXXX
d009bdc8:	5858 5858 5858 4c4c 4c4c 1010 2828 2828     XXXXXXLLLL..((((
d009bdd8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bde8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bdf8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009be88:	2828 2828 2828 2828 2828 2828 2828 2820     (((((((((((((( (
d009be98:	2828 2820 1010 4c4c 2810 1028 4c10 1010     (( (..LL.((..L..
d009bea8:	104c 2828 1110 1121 2810 1028 1010 2121     L.((..!..((...!!
d009beb8:	1010 4c4c 4c58 5858 5858 5858 5858 5858     ..LLXLXXXXXXXXXX
d009bec8:	5858 5858 104c 1010 104c 2828 4c10 1010     XXXXL...L.((.L..
d009bed8:	4c10 5858 5858 5858 5858 5858 5858 5858     .LXXXXXXXXXXXXXX
d009bee8:	584c 4c4c 1010 2828 2828 2828 2828 2828     LXLL..((((((((((
d009bef8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf08:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf18:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf28:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf38:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf48:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf58:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf68:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf78:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf88:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bf98:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009bfa8:	2828 2828 2828 2828 2828 2820 2828 2820     (((((((((( ((( (
d009bfb8:	1028 4c10 2810 2828 4c10 2810 4c10 2810     (..L.(((.L.(.L.(
d009bfc8:	1028 2111 1011 1010 2929 2121 1021 4c10     (..!....))!!!..L
d009bfd8:	4c4c 5858 5858 5858 4c58 4c4c 4c4c 584c     LLXXXXXXXLLLLLLX
d009bfe8:	4c58 2810 1010 2828 1010 1028 584c 4c58     XL.(..((..(.LXXL
d009bff8:	4c4c 4c4c 584c 5858 5858 5858 4c4c 104c     LLLLLXXXXXXXLLL.
d009c008:	2810 2828 2828 2828 2828 2828 2828 2828     .(((((((((((((((
d009c018:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c028:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c038:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c048:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c058:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c068:	2828 2028 2828 2828 2828 2828 2828 2828     ((( ((((((((((((
d009c078:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c088:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c098:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c0a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c0b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c0c8:	2828 2828 2828 2820 2828 2820 2828 1010     (((((( ((( (((..
d009c0d8:	2810 2828 1010 2828 4c10 2810 1028 2111     .(((..((.L.((..!
d009c0e8:	1021 2921 2129 1010 4c10 4c4c 4c4c 584c     !.!))!...LLLLLLX
d009c0f8:	5858 4c4c 5858 1010 4c10 4c4c 5858 2810     XXLLXX...LLLXX.(
d009c108:	2828 2828 2828 1028 5858 4c4c 104c 1010     (((((((.XXLLL...
d009c118:	5858 4c4c 5858 4c58 4c4c 4c4c 104c 1010     XXLLXXXLLLLLL...
d009c128:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c138:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c148:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c158:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c168:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c178:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c188:	2820 2828 2828 2828 2828 2828 2828 2828      (((((((((((((((
d009c198:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c1a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c1b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c1c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c1d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c1e8:	2028 2828 2828 2820 2828 2828 2810 2828     ( (((( (((((.(((
d009c1f8:	1010 2828 1028 2810 2828 2110 1029 2921     ..(((..(((.!).!)
d009c208:	1021 4c4c 4c4c 4c4c 4c4c 4c4c 5858 4c4c     !.LLLLLLLLLLXXLL
d009c218:	584c 104c 1028 4c10 584c 104c 2828 2828     LXL.(..LLXL.((((
d009c228:	2828 4c10 4c58 104c 2810 4c10 4c58 4c4c     ((.LXLL..(.LXLLL
d009c238:	5858 4c4c 4c4c 4c4c 4c4c 4c4c 2810 2828     XXLLLLLLLLLL.(((
d009c248:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c258:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c268:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c278:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c288:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c298:	2828 2828 2828 2828 2828 2828 2820 2828     (((((((((((( (((
d009c2a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c2b8:	2828 2828 2828 2828 2828 2828 2828 2028     ((((((((((((((( 
d009c2c8:	2020 2828 2828 2828 2828 2828 2828 2828       ((((((((((((((
d009c2d8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c2e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c2f8:	2828 2828 2828 2828 2828 2828 2028 2828     ((((((((((((( ((
d009c308:	2028 2828 2828 2828 2828 2828 2810 2828     ( ((((((((((.(((
d009c318:	2828 2810 2828 1110 2129 2110 1010 1010     ((.(((..)!.!....
d009c328:	1010 4c4c 4c4c 4c4c 4c58 1010 4c10 4c58     ..LLLLLLXL...LXL
d009c338:	2810 1028 4c10 104c 2828 2828 2828 4c10     .((..LL.((((((.L
d009c348:	104c 2810 1028 4c4c 104c 1010 584c 4c4c     L..((.LLL...LXLL
d009c358:	4c4c 4c4c 1010 1010 2810 2828 2828 2828     LLLL.....(((((((
d009c368:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c378:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c388:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c398:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c3a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c3b8:	2828 2828 2828 2828 2820 2828 2828 2828     (((((((( (((((((
d009c3c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c3d8:	2828 2828 2828 2828 2828 2028 2828 2020     ((((((((((( ((  
d009c3e8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c3f8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c408:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c418:	2828 2828 2828 2828 2028 2828 2820 2828     ((((((((( (( (((
d009c428:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c438:	2828 1010 2929 1021 1010 2828 1010 4c10     ((..))!...((...L
d009c448:	4c4c 104c 4c58 1010 1010 5858 104c 2828     LLL.XL....XXL.((
d009c458:	1028 104c 2828 2828 2828 4c10 2810 2828     (.L.((((((.L.(((
d009c468:	4c10 4c4c 1010 1010 584c 4c10 4c4c 104c     .LLL....LX.LLLL.
d009c478:	1010 2828 2828 2828 2828 2828 2828 2828     ..((((((((((((((
d009c488:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c498:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c4a8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c4b8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c4c8:	2828 2828 2828 2828 2828 2828 2828 2828     ((((((((((((((((
d009c4d8:	2828 2828 2828 2828 2828 2828               ((((((((((((

d009c4e4 <sineLUT>:
d009c4e4:	0100 0302 0304 0102 ff00 fdfe fdfc fffe     ................
d009c4f4:	0100 0302 0304 0102 ff00 fdfe fdfc fffe     ................
	...

d009c520 <treewalkwidth>:
d009c520:	3e40 4444                                   @>DD

d009c524 <_global_impure_ptr>:
d009c524:	c674 d009                                   t...

d009c528 <__sf_fake_stderr>:
	...

d009c548 <__sf_fake_stdin>:
	...

d009c568 <__sf_fake_stdout>:
	...
d009c588:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d009c598:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d009c5a8:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d009c5b8:	6665                                         ef.

Disassembly of section .init:

d009c5bc <_init>:
d009c5bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d009c5be:	bf00      	nop

Disassembly of section .fini:

d009c5c0 <_fini>:
d009c5c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d009c5c2:	bf00      	nop
