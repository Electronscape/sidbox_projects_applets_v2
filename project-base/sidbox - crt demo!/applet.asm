
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
d008001e:	f001 fa83 	bl	d0081528 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 fa7e 	bl	d0081528 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 ba14 	b.w	d0080460 <main>
d0080038:	d0083664 	.word	0xd0083664

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 f9b1 	bl	d00813b4 <malloc>
d0080052:	6020      	str	r0, [r4, #0]
d0080054:	bd10      	pop	{r4, pc}
d0080056:	bf00      	nop

d0080058 <initMalloc>:
d0080058:	4902      	ldr	r1, [pc, #8]	; (d0080064 <initMalloc+0xc>)
d008005a:	4b03      	ldr	r3, [pc, #12]	; (d0080068 <initMalloc+0x10>)
d008005c:	4a03      	ldr	r2, [pc, #12]	; (d008006c <initMalloc+0x14>)
d008005e:	1a5b      	subs	r3, r3, r1
d0080060:	6013      	str	r3, [r2, #0]
d0080062:	4770      	bx	lr
d0080064:	d0098560 	.word	0xd0098560
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d0096520 	.word	0xd0096520

d0080070 <_write_r>:
d0080070:	3901      	subs	r1, #1
d0080072:	2901      	cmp	r1, #1
d0080074:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0080076:	d81f      	bhi.n	d00800b8 <_write_r+0x48>
d0080078:	b1e2      	cbz	r2, d00800b4 <_write_r+0x44>
d008007a:	461c      	mov	r4, r3
d008007c:	b1d3      	cbz	r3, d00800b4 <_write_r+0x44>
d008007e:	4d12      	ldr	r5, [pc, #72]	; (d00800c8 <_write_r+0x58>)
d0080080:	682e      	ldr	r6, [r5, #0]
d0080082:	b9ae      	cbnz	r6, d00800b0 <_write_r+0x40>
d0080084:	4f11      	ldr	r7, [pc, #68]	; (d00800cc <_write_r+0x5c>)
d0080086:	2301      	movs	r3, #1
d0080088:	4611      	mov	r1, r2
d008008a:	4630      	mov	r0, r6
d008008c:	602b      	str	r3, [r5, #0]
d008008e:	4622      	mov	r2, r4
d0080090:	7a3b      	ldrb	r3, [r7, #8]
d0080092:	f897 c009 	ldrb.w	ip, [r7, #9]
d0080096:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d008009a:	f897 c00a 	ldrb.w	ip, [r7, #10]
d008009e:	7aff      	ldrb	r7, [r7, #11]
d00800a0:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d00800a4:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d00800a8:	681b      	ldr	r3, [r3, #0]
d00800aa:	685b      	ldr	r3, [r3, #4]
d00800ac:	4798      	blx	r3
d00800ae:	602e      	str	r6, [r5, #0]
d00800b0:	4620      	mov	r0, r4
d00800b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800b4:	2000      	movs	r0, #0
d00800b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800b8:	f001 f976 	bl	d00813a8 <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d00836e4 	.word	0xd00836e4
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f001 f969 	bl	d00813a8 <__errno>
d00800d6:	2258      	movs	r2, #88	; 0x58
d00800d8:	4603      	mov	r3, r0
d00800da:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800de:	601a      	str	r2, [r3, #0]
d00800e0:	bd08      	pop	{r3, pc}
d00800e2:	bf00      	nop

d00800e4 <_close>:
d00800e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800e8:	4770      	bx	lr
d00800ea:	bf00      	nop

d00800ec <_fstat>:
d00800ec:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00800f0:	2000      	movs	r0, #0
d00800f2:	604b      	str	r3, [r1, #4]
d00800f4:	4770      	bx	lr
d00800f6:	bf00      	nop

d00800f8 <_lseek>:
d00800f8:	2000      	movs	r0, #0
d00800fa:	4770      	bx	lr

d00800fc <_sbrk_r>:
d00800fc:	4b0c      	ldr	r3, [pc, #48]	; (d0080130 <_sbrk_r+0x34>)
d00800fe:	4a0d      	ldr	r2, [pc, #52]	; (d0080134 <_sbrk_r+0x38>)
d0080100:	6818      	ldr	r0, [r3, #0]
d0080102:	b510      	push	{r4, lr}
d0080104:	b918      	cbnz	r0, d008010e <_sbrk_r+0x12>
d0080106:	1dd0      	adds	r0, r2, #7
d0080108:	f020 0007 	bic.w	r0, r0, #7
d008010c:	6018      	str	r0, [r3, #0]
d008010e:	4401      	add	r1, r0
d0080110:	4c09      	ldr	r4, [pc, #36]	; (d0080138 <_sbrk_r+0x3c>)
d0080112:	42a1      	cmp	r1, r4
d0080114:	d803      	bhi.n	d008011e <_sbrk_r+0x22>
d0080116:	4291      	cmp	r1, r2
d0080118:	d301      	bcc.n	d008011e <_sbrk_r+0x22>
d008011a:	6019      	str	r1, [r3, #0]
d008011c:	bd10      	pop	{r4, pc}
d008011e:	f001 f943 	bl	d00813a8 <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d00836e0 	.word	0xd00836e0
d0080134:	d0098560 	.word	0xd0098560
d0080138:	d0600000 	.word	0xd0600000

d008013c <draw_circle>:
d008013c:	b289      	uxth	r1, r1
d008013e:	b280      	uxth	r0, r0
d0080140:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080144:	2400      	movs	r4, #0
d0080146:	b089      	sub	sp, #36	; 0x24
d0080148:	f240 1e3f 	movw	lr, #319	; 0x13f
d008014c:	f8df a160 	ldr.w	sl, [pc, #352]	; d00802b0 <draw_circle+0x174>
d0080150:	f04f 09f0 	mov.w	r9, #240	; 0xf0
d0080154:	4688      	mov	r8, r1
d0080156:	9000      	str	r0, [sp, #0]
d0080158:	9201      	str	r2, [sp, #4]
d008015a:	9402      	str	r4, [sp, #8]
d008015c:	9900      	ldr	r1, [sp, #0]
d008015e:	f8bd 2004 	ldrh.w	r2, [sp, #4]
d0080162:	f8bd 5008 	ldrh.w	r5, [sp, #8]
d0080166:	1856      	adds	r6, r2, r1
d0080168:	eb05 0108 	add.w	r1, r5, r8
d008016c:	b236      	sxth	r6, r6
d008016e:	b209      	sxth	r1, r1
d0080170:	4576      	cmp	r6, lr
d0080172:	bfd4      	ite	le
d0080174:	2000      	movle	r0, #0
d0080176:	2001      	movgt	r0, #1
d0080178:	29ef      	cmp	r1, #239	; 0xef
d008017a:	9003      	str	r0, [sp, #12]
d008017c:	bfd4      	ite	le
d008017e:	f04f 0c00 	movle.w	ip, #0
d0080182:	f04f 0c01 	movgt.w	ip, #1
d0080186:	b930      	cbnz	r0, d0080196 <draw_circle+0x5a>
d0080188:	f1bc 0f00 	cmp.w	ip, #0
d008018c:	d103      	bne.n	d0080196 <draw_circle+0x5a>
d008018e:	fb16 1009 	smlabb	r0, r6, r9, r1
d0080192:	f80a 3000 	strb.w	r3, [sl, r0]
d0080196:	9800      	ldr	r0, [sp, #0]
d0080198:	182f      	adds	r7, r5, r0
d008019a:	eb02 0008 	add.w	r0, r2, r8
d008019e:	b23f      	sxth	r7, r7
d00801a0:	b200      	sxth	r0, r0
d00801a2:	4577      	cmp	r7, lr
d00801a4:	9705      	str	r7, [sp, #20]
d00801a6:	bfd4      	ite	le
d00801a8:	2700      	movle	r7, #0
d00801aa:	2701      	movgt	r7, #1
d00801ac:	28ef      	cmp	r0, #239	; 0xef
d00801ae:	9707      	str	r7, [sp, #28]
d00801b0:	bfd4      	ite	le
d00801b2:	f04f 0b00 	movle.w	fp, #0
d00801b6:	f04f 0b01 	movgt.w	fp, #1
d00801ba:	b93f      	cbnz	r7, d00801cc <draw_circle+0x90>
d00801bc:	f1bb 0f00 	cmp.w	fp, #0
d00801c0:	d104      	bne.n	d00801cc <draw_circle+0x90>
d00801c2:	9f05      	ldr	r7, [sp, #20]
d00801c4:	fb17 0709 	smlabb	r7, r7, r9, r0
d00801c8:	f80a 3007 	strb.w	r3, [sl, r7]
d00801cc:	9f00      	ldr	r7, [sp, #0]
d00801ce:	1b7f      	subs	r7, r7, r5
d00801d0:	b23f      	sxth	r7, r7
d00801d2:	4577      	cmp	r7, lr
d00801d4:	9704      	str	r7, [sp, #16]
d00801d6:	bfd4      	ite	le
d00801d8:	2700      	movle	r7, #0
d00801da:	2701      	movgt	r7, #1
d00801dc:	9706      	str	r7, [sp, #24]
d00801de:	b93f      	cbnz	r7, d00801f0 <draw_circle+0xb4>
d00801e0:	f1bb 0f00 	cmp.w	fp, #0
d00801e4:	d104      	bne.n	d00801f0 <draw_circle+0xb4>
d00801e6:	9f04      	ldr	r7, [sp, #16]
d00801e8:	fb17 0009 	smlabb	r0, r7, r9, r0
d00801ec:	f80a 3000 	strb.w	r3, [sl, r0]
d00801f0:	9800      	ldr	r0, [sp, #0]
d00801f2:	1a80      	subs	r0, r0, r2
d00801f4:	b200      	sxth	r0, r0
d00801f6:	4570      	cmp	r0, lr
d00801f8:	bfd4      	ite	le
d00801fa:	f04f 0b00 	movle.w	fp, #0
d00801fe:	f04f 0b01 	movgt.w	fp, #1
d0080202:	f1bb 0f00 	cmp.w	fp, #0
d0080206:	d106      	bne.n	d0080216 <draw_circle+0xda>
d0080208:	f1bc 0f00 	cmp.w	ip, #0
d008020c:	d103      	bne.n	d0080216 <draw_circle+0xda>
d008020e:	fb10 1109 	smlabb	r1, r0, r9, r1
d0080212:	f80a 3001 	strb.w	r3, [sl, r1]
d0080216:	eba8 0105 	sub.w	r1, r8, r5
d008021a:	b209      	sxth	r1, r1
d008021c:	29ef      	cmp	r1, #239	; 0xef
d008021e:	bfd4      	ite	le
d0080220:	f04f 0c00 	movle.w	ip, #0
d0080224:	f04f 0c01 	movgt.w	ip, #1
d0080228:	f1bc 0f00 	cmp.w	ip, #0
d008022c:	d106      	bne.n	d008023c <draw_circle+0x100>
d008022e:	f1bb 0f00 	cmp.w	fp, #0
d0080232:	d103      	bne.n	d008023c <draw_circle+0x100>
d0080234:	fb10 1009 	smlabb	r0, r0, r9, r1
d0080238:	f80a 3000 	strb.w	r3, [sl, r0]
d008023c:	eba8 0002 	sub.w	r0, r8, r2
d0080240:	b200      	sxth	r0, r0
d0080242:	28ef      	cmp	r0, #239	; 0xef
d0080244:	dc0d      	bgt.n	d0080262 <draw_circle+0x126>
d0080246:	9f06      	ldr	r7, [sp, #24]
d0080248:	b927      	cbnz	r7, d0080254 <draw_circle+0x118>
d008024a:	9f04      	ldr	r7, [sp, #16]
d008024c:	fb17 0709 	smlabb	r7, r7, r9, r0
d0080250:	f80a 3007 	strb.w	r3, [sl, r7]
d0080254:	9f07      	ldr	r7, [sp, #28]
d0080256:	b927      	cbnz	r7, d0080262 <draw_circle+0x126>
d0080258:	9f05      	ldr	r7, [sp, #20]
d008025a:	fb17 0009 	smlabb	r0, r7, r9, r0
d008025e:	f80a 3000 	strb.w	r3, [sl, r0]
d0080262:	f1bc 0f00 	cmp.w	ip, #0
d0080266:	d105      	bne.n	d0080274 <draw_circle+0x138>
d0080268:	9803      	ldr	r0, [sp, #12]
d008026a:	b918      	cbnz	r0, d0080274 <draw_circle+0x138>
d008026c:	fb16 1609 	smlabb	r6, r6, r9, r1
d0080270:	f80a 3006 	strb.w	r3, [sl, r6]
d0080274:	2c00      	cmp	r4, #0
d0080276:	dd10      	ble.n	d008029a <draw_circle+0x15e>
d0080278:	1e51      	subs	r1, r2, #1
d008027a:	b28a      	uxth	r2, r1
d008027c:	b209      	sxth	r1, r1
d008027e:	0052      	lsls	r2, r2, #1
d0080280:	9101      	str	r1, [sp, #4]
d0080282:	f1c2 0201 	rsb	r2, r2, #1
d0080286:	4414      	add	r4, r2
d0080288:	b224      	sxth	r4, r4
d008028a:	9a01      	ldr	r2, [sp, #4]
d008028c:	9902      	ldr	r1, [sp, #8]
d008028e:	428a      	cmp	r2, r1
d0080290:	f6bf af64 	bge.w	d008015c <draw_circle+0x20>
d0080294:	b009      	add	sp, #36	; 0x24
d0080296:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d008029a:	3501      	adds	r5, #1
d008029c:	3401      	adds	r4, #1
d008029e:	eb04 0445 	add.w	r4, r4, r5, lsl #1
d00802a2:	b229      	sxth	r1, r5
d00802a4:	b224      	sxth	r4, r4
d00802a6:	9102      	str	r1, [sp, #8]
d00802a8:	2c00      	cmp	r4, #0
d00802aa:	ddee      	ble.n	d008028a <draw_circle+0x14e>
d00802ac:	e7e4      	b.n	d0080278 <draw_circle+0x13c>
d00802ae:	bf00      	nop
d00802b0:	d0083700 	.word	0xd0083700

d00802b4 <draw_lcd_centered>:
d00802b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00802b8:	b084      	sub	sp, #16
d00802ba:	4d19      	ldr	r5, [pc, #100]	; (d0080320 <draw_lcd_centered+0x6c>)
d00802bc:	460f      	mov	r7, r1
d00802be:	4690      	mov	r8, r2
d00802c0:	9003      	str	r0, [sp, #12]
d00802c2:	4608      	mov	r0, r1
d00802c4:	f001 fa32 	bl	d008172c <strlen>
d00802c8:	7b2e      	ldrb	r6, [r5, #12]
d00802ca:	7b6a      	ldrb	r2, [r5, #13]
d00802cc:	4604      	mov	r4, r0
d00802ce:	f895 c00e 	ldrb.w	ip, [r5, #14]
d00802d2:	4640      	mov	r0, r8
d00802d4:	ea46 2302 	orr.w	r3, r6, r2, lsl #8
d00802d8:	7bea      	ldrb	r2, [r5, #15]
d00802da:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d00802de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00802e2:	685b      	ldr	r3, [r3, #4]
d00802e4:	68db      	ldr	r3, [r3, #12]
d00802e6:	4798      	blx	r3
d00802e8:	7b2e      	ldrb	r6, [r5, #12]
d00802ea:	7b6a      	ldrb	r2, [r5, #13]
d00802ec:	0123      	lsls	r3, r4, #4
d00802ee:	7ba8      	ldrb	r0, [r5, #14]
d00802f0:	ea46 2402 	orr.w	r4, r6, r2, lsl #8
d00802f4:	7bea      	ldrb	r2, [r5, #15]
d00802f6:	b21b      	sxth	r3, r3
d00802f8:	9903      	ldr	r1, [sp, #12]
d00802fa:	ea44 4500 	orr.w	r5, r4, r0, lsl #16
d00802fe:	f5d3 70f0 	rsbs	r0, r3, #480	; 0x1e0
d0080302:	f04f 0302 	mov.w	r3, #2
d0080306:	ea45 6502 	orr.w	r5, r5, r2, lsl #24
d008030a:	463a      	mov	r2, r7
d008030c:	bf48      	it	mi
d008030e:	3001      	addmi	r0, #1
d0080310:	686d      	ldr	r5, [r5, #4]
d0080312:	1040      	asrs	r0, r0, #1
d0080314:	9300      	str	r3, [sp, #0]
d0080316:	6b2c      	ldr	r4, [r5, #48]	; 0x30
d0080318:	47a0      	blx	r4
d008031a:	b004      	add	sp, #16
d008031c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0080320:	2001f000 	.word	0x2001f000

d0080324 <draw_text_cell.constprop.0>:
d0080324:	f1a1 0361 	sub.w	r3, r1, #97	; 0x61
d0080328:	2b19      	cmp	r3, #25
d008032a:	f1a1 0320 	sub.w	r3, r1, #32
d008032e:	b4f0      	push	{r4, r5, r6, r7}
d0080330:	f200 808b 	bhi.w	d008044a <draw_text_cell.constprop.0+0x126>
d0080334:	b2db      	uxtb	r3, r3
d0080336:	3b20      	subs	r3, #32
d0080338:	00db      	lsls	r3, r3, #3
d008033a:	4e47      	ldr	r6, [pc, #284]	; (d0080458 <draw_text_cell.constprop.0+0x134>)
d008033c:	4d47      	ldr	r5, [pc, #284]	; (d008045c <draw_text_cell.constprop.0+0x138>)
d008033e:	4433      	add	r3, r6
d0080340:	1e5c      	subs	r4, r3, #1
d0080342:	1dde      	adds	r6, r3, #7
d0080344:	f814 7f01 	ldrb.w	r7, [r4, #1]!
d0080348:	07fb      	lsls	r3, r7, #31
d008034a:	d52e      	bpl.n	d00803aa <draw_text_cell.constprop.0+0x86>
d008034c:	b201      	sxth	r1, r0
d008034e:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0080352:	da2a      	bge.n	d00803aa <draw_text_cell.constprop.0+0x86>
d0080354:	ebc1 1301 	rsb	r3, r1, r1, lsl #4
d0080358:	f017 0f02 	tst.w	r7, #2
d008035c:	eb05 1c03 	add.w	ip, r5, r3, lsl #4
d0080360:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0080364:	f88c 2007 	strb.w	r2, [ip, #7]
d0080368:	d128      	bne.n	d00803bc <draw_text_cell.constprop.0+0x98>
d008036a:	077b      	lsls	r3, r7, #29
d008036c:	d52a      	bpl.n	d00803c4 <draw_text_cell.constprop.0+0xa0>
d008036e:	ebc1 1101 	rsb	r1, r1, r1, lsl #4
d0080372:	010b      	lsls	r3, r1, #4
d0080374:	18e9      	adds	r1, r5, r3
d0080376:	724a      	strb	r2, [r1, #9]
d0080378:	0739      	lsls	r1, r7, #28
d008037a:	d42c      	bmi.n	d00803d6 <draw_text_cell.constprop.0+0xb2>
d008037c:	06fb      	lsls	r3, r7, #27
d008037e:	d548      	bpl.n	d0080412 <draw_text_cell.constprop.0+0xee>
d0080380:	b203      	sxth	r3, r0
d0080382:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080386:	da5d      	bge.n	d0080444 <draw_text_cell.constprop.0+0x120>
d0080388:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008038c:	011b      	lsls	r3, r3, #4
d008038e:	18e9      	adds	r1, r5, r3
d0080390:	72ca      	strb	r2, [r1, #11]
d0080392:	06b9      	lsls	r1, r7, #26
d0080394:	d427      	bmi.n	d00803e6 <draw_text_cell.constprop.0+0xc2>
d0080396:	067b      	lsls	r3, r7, #25
d0080398:	d548      	bpl.n	d008042c <draw_text_cell.constprop.0+0x108>
d008039a:	b203      	sxth	r3, r0
d008039c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00803a0:	da29      	bge.n	d00803f6 <draw_text_cell.constprop.0+0xd2>
d00803a2:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00803a6:	011b      	lsls	r3, r3, #4
d00803a8:	e021      	b.n	d00803ee <draw_text_cell.constprop.0+0xca>
d00803aa:	07bb      	lsls	r3, r7, #30
d00803ac:	d529      	bpl.n	d0080402 <draw_text_cell.constprop.0+0xde>
d00803ae:	b203      	sxth	r3, r0
d00803b0:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00803b4:	da25      	bge.n	d0080402 <draw_text_cell.constprop.0+0xde>
d00803b6:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00803ba:	011b      	lsls	r3, r3, #4
d00803bc:	18e9      	adds	r1, r5, r3
d00803be:	720a      	strb	r2, [r1, #8]
d00803c0:	0779      	lsls	r1, r7, #29
d00803c2:	d4d7      	bmi.n	d0080374 <draw_text_cell.constprop.0+0x50>
d00803c4:	073b      	lsls	r3, r7, #28
d00803c6:	d5d9      	bpl.n	d008037c <draw_text_cell.constprop.0+0x58>
d00803c8:	b203      	sxth	r3, r0
d00803ca:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00803ce:	dad5      	bge.n	d008037c <draw_text_cell.constprop.0+0x58>
d00803d0:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00803d4:	011b      	lsls	r3, r3, #4
d00803d6:	18e9      	adds	r1, r5, r3
d00803d8:	728a      	strb	r2, [r1, #10]
d00803da:	06f9      	lsls	r1, r7, #27
d00803dc:	d519      	bpl.n	d0080412 <draw_text_cell.constprop.0+0xee>
d00803de:	18e9      	adds	r1, r5, r3
d00803e0:	72ca      	strb	r2, [r1, #11]
d00803e2:	06b9      	lsls	r1, r7, #26
d00803e4:	d5d7      	bpl.n	d0080396 <draw_text_cell.constprop.0+0x72>
d00803e6:	18e9      	adds	r1, r5, r3
d00803e8:	730a      	strb	r2, [r1, #12]
d00803ea:	0679      	lsls	r1, r7, #25
d00803ec:	d51e      	bpl.n	d008042c <draw_text_cell.constprop.0+0x108>
d00803ee:	18e9      	adds	r1, r5, r3
d00803f0:	734a      	strb	r2, [r1, #13]
d00803f2:	0639      	lsls	r1, r7, #24
d00803f4:	d423      	bmi.n	d008043e <draw_text_cell.constprop.0+0x11a>
d00803f6:	3001      	adds	r0, #1
d00803f8:	42a6      	cmp	r6, r4
d00803fa:	b280      	uxth	r0, r0
d00803fc:	d1a2      	bne.n	d0080344 <draw_text_cell.constprop.0+0x20>
d00803fe:	bcf0      	pop	{r4, r5, r6, r7}
d0080400:	4770      	bx	lr
d0080402:	077b      	lsls	r3, r7, #29
d0080404:	d5de      	bpl.n	d00803c4 <draw_text_cell.constprop.0+0xa0>
d0080406:	b201      	sxth	r1, r0
d0080408:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d008040c:	dbaf      	blt.n	d008036e <draw_text_cell.constprop.0+0x4a>
d008040e:	06fb      	lsls	r3, r7, #27
d0080410:	d4b6      	bmi.n	d0080380 <draw_text_cell.constprop.0+0x5c>
d0080412:	06bb      	lsls	r3, r7, #26
d0080414:	d5bf      	bpl.n	d0080396 <draw_text_cell.constprop.0+0x72>
d0080416:	b203      	sxth	r3, r0
d0080418:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008041c:	dabb      	bge.n	d0080396 <draw_text_cell.constprop.0+0x72>
d008041e:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0080422:	011b      	lsls	r3, r3, #4
d0080424:	18e9      	adds	r1, r5, r3
d0080426:	730a      	strb	r2, [r1, #12]
d0080428:	0679      	lsls	r1, r7, #25
d008042a:	d4e0      	bmi.n	d00803ee <draw_text_cell.constprop.0+0xca>
d008042c:	063f      	lsls	r7, r7, #24
d008042e:	d5e2      	bpl.n	d00803f6 <draw_text_cell.constprop.0+0xd2>
d0080430:	b203      	sxth	r3, r0
d0080432:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080436:	dade      	bge.n	d00803f6 <draw_text_cell.constprop.0+0xd2>
d0080438:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008043c:	011b      	lsls	r3, r3, #4
d008043e:	442b      	add	r3, r5
d0080440:	739a      	strb	r2, [r3, #14]
d0080442:	e7d8      	b.n	d00803f6 <draw_text_cell.constprop.0+0xd2>
d0080444:	0679      	lsls	r1, r7, #25
d0080446:	d5f1      	bpl.n	d008042c <draw_text_cell.constprop.0+0x108>
d0080448:	e7d5      	b.n	d00803f6 <draw_text_cell.constprop.0+0xd2>
d008044a:	b2d9      	uxtb	r1, r3
d008044c:	293a      	cmp	r1, #58	; 0x3a
d008044e:	bf94      	ite	ls
d0080450:	00db      	lslls	r3, r3, #3
d0080452:	23f8      	movhi	r3, #248	; 0xf8
d0080454:	e771      	b.n	d008033a <draw_text_cell.constprop.0+0x16>
d0080456:	bf00      	nop
d0080458:	d00823bc 	.word	0xd00823bc
d008045c:	d0083700 	.word	0xd0083700

d0080460 <main>:
d0080460:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080464:	4daf      	ldr	r5, [pc, #700]	; (d0080724 <main+0x2c4>)
d0080466:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d008046a:	2400      	movs	r4, #0
d008046c:	782b      	ldrb	r3, [r5, #0]
d008046e:	462f      	mov	r7, r5
d0080470:	786a      	ldrb	r2, [r5, #1]
d0080472:	78a9      	ldrb	r1, [r5, #2]
d0080474:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080478:	78ea      	ldrb	r2, [r5, #3]
d008047a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008047e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080482:	ed2d 8b02 	vpush	{d8}
d0080486:	681b      	ldr	r3, [r3, #0]
d0080488:	b093      	sub	sp, #76	; 0x4c
d008048a:	4798      	blx	r3
d008048c:	f7ff fde4 	bl	d0080058 <initMalloc>
d0080490:	7d2b      	ldrb	r3, [r5, #20]
d0080492:	7d6a      	ldrb	r2, [r5, #21]
d0080494:	f44f 7000 	mov.w	r0, #512	; 0x200
d0080498:	7da9      	ldrb	r1, [r5, #22]
d008049a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008049e:	7dea      	ldrb	r2, [r5, #23]
d00804a0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804a4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804a8:	681b      	ldr	r3, [r3, #0]
d00804aa:	681b      	ldr	r3, [r3, #0]
d00804ac:	4798      	blx	r3
d00804ae:	7d2a      	ldrb	r2, [r5, #20]
d00804b0:	7d6b      	ldrb	r3, [r5, #21]
d00804b2:	2501      	movs	r5, #1
d00804b4:	7dbe      	ldrb	r6, [r7, #22]
d00804b6:	2190      	movs	r1, #144	; 0x90
d00804b8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00804bc:	7df8      	ldrb	r0, [r7, #23]
d00804be:	7b3b      	ldrb	r3, [r7, #12]
d00804c0:	ea42 4206 	orr.w	r2, r2, r6, lsl #16
d00804c4:	7b7e      	ldrb	r6, [r7, #13]
d00804c6:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00804ca:	7bb8      	ldrb	r0, [r7, #14]
d00804cc:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00804d0:	7bfe      	ldrb	r6, [r7, #15]
d00804d2:	6812      	ldr	r2, [r2, #0]
d00804d4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00804d8:	20dc      	movs	r0, #220	; 0xdc
d00804da:	6852      	ldr	r2, [r2, #4]
d00804dc:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d00804e0:	7015      	strb	r5, [r2, #0]
d00804e2:	681b      	ldr	r3, [r3, #0]
d00804e4:	691b      	ldr	r3, [r3, #16]
d00804e6:	4798      	blx	r3
d00804e8:	7b3d      	ldrb	r5, [r7, #12]
d00804ea:	7b79      	ldrb	r1, [r7, #13]
d00804ec:	4623      	mov	r3, r4
d00804ee:	7bb8      	ldrb	r0, [r7, #14]
d00804f0:	4622      	mov	r2, r4
d00804f2:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00804f6:	7bfe      	ldrb	r6, [r7, #15]
d00804f8:	f44f 71a0 	mov.w	r1, #320	; 0x140
d00804fc:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0080500:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d0080504:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d0080508:	682d      	ldr	r5, [r5, #0]
d008050a:	9400      	str	r4, [sp, #0]
d008050c:	696d      	ldr	r5, [r5, #20]
d008050e:	47a8      	blx	r5
d0080510:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0080514:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0080518:	4883      	ldr	r0, [pc, #524]	; (d0080728 <main+0x2c8>)
d008051a:	f7ff fd8f 	bl	d008003c <gfx_createBitmap>
d008051e:	7b3b      	ldrb	r3, [r7, #12]
d0080520:	7b7a      	ldrb	r2, [r7, #13]
d0080522:	7bb9      	ldrb	r1, [r7, #14]
d0080524:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080528:	7bfa      	ldrb	r2, [r7, #15]
d008052a:	487f      	ldr	r0, [pc, #508]	; (d0080728 <main+0x2c8>)
d008052c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080530:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080534:	681b      	ldr	r3, [r3, #0]
d0080536:	69db      	ldr	r3, [r3, #28]
d0080538:	4798      	blx	r3
d008053a:	7b3b      	ldrb	r3, [r7, #12]
d008053c:	7b7a      	ldrb	r2, [r7, #13]
d008053e:	7bb9      	ldrb	r1, [r7, #14]
d0080540:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080544:	7bfa      	ldrb	r2, [r7, #15]
d0080546:	4878      	ldr	r0, [pc, #480]	; (d0080728 <main+0x2c8>)
d0080548:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008054c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080550:	681b      	ldr	r3, [r3, #0]
d0080552:	699b      	ldr	r3, [r3, #24]
d0080554:	4798      	blx	r3
d0080556:	7b3b      	ldrb	r3, [r7, #12]
d0080558:	7b7a      	ldrb	r2, [r7, #13]
d008055a:	7bb9      	ldrb	r1, [r7, #14]
d008055c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080560:	7bfa      	ldrb	r2, [r7, #15]
d0080562:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080566:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008056a:	685b      	ldr	r3, [r3, #4]
d008056c:	681b      	ldr	r3, [r3, #0]
d008056e:	4798      	blx	r3
d0080570:	7b3b      	ldrb	r3, [r7, #12]
d0080572:	7b7a      	ldrb	r2, [r7, #13]
d0080574:	2010      	movs	r0, #16
d0080576:	7bb9      	ldrb	r1, [r7, #14]
d0080578:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008057c:	7bfa      	ldrb	r2, [r7, #15]
d008057e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080582:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080586:	685b      	ldr	r3, [r3, #4]
d0080588:	68db      	ldr	r3, [r3, #12]
d008058a:	4798      	blx	r3
d008058c:	7b3d      	ldrb	r5, [r7, #12]
d008058e:	7b7b      	ldrb	r3, [r7, #13]
d0080590:	4621      	mov	r1, r4
d0080592:	7bba      	ldrb	r2, [r7, #14]
d0080594:	4620      	mov	r0, r4
d0080596:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d008059a:	7bfe      	ldrb	r6, [r7, #15]
d008059c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00805a0:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d00805a4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00805a8:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00805ac:	686d      	ldr	r5, [r5, #4]
d00805ae:	686d      	ldr	r5, [r5, #4]
d00805b0:	47a8      	blx	r5
d00805b2:	7b3b      	ldrb	r3, [r7, #12]
d00805b4:	7b7a      	ldrb	r2, [r7, #13]
d00805b6:	2003      	movs	r0, #3
d00805b8:	7bb9      	ldrb	r1, [r7, #14]
d00805ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00805be:	7bfa      	ldrb	r2, [r7, #15]
d00805c0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00805c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00805c8:	685b      	ldr	r3, [r3, #4]
d00805ca:	68db      	ldr	r3, [r3, #12]
d00805cc:	4798      	blx	r3
d00805ce:	7b3d      	ldrb	r5, [r7, #12]
d00805d0:	7b7a      	ldrb	r2, [r7, #13]
d00805d2:	4620      	mov	r0, r4
d00805d4:	7bb9      	ldrb	r1, [r7, #14]
d00805d6:	2340      	movs	r3, #64	; 0x40
d00805d8:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00805dc:	7bfe      	ldrb	r6, [r7, #15]
d00805de:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00805e2:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00805e6:	2180      	movs	r1, #128	; 0x80
d00805e8:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00805ec:	686d      	ldr	r5, [r5, #4]
d00805ee:	686d      	ldr	r5, [r5, #4]
d00805f0:	47a8      	blx	r5
d00805f2:	7b3b      	ldrb	r3, [r7, #12]
d00805f4:	7b7a      	ldrb	r2, [r7, #13]
d00805f6:	200b      	movs	r0, #11
d00805f8:	7bb9      	ldrb	r1, [r7, #14]
d00805fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00805fe:	7bfa      	ldrb	r2, [r7, #15]
d0080600:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080604:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080608:	685b      	ldr	r3, [r3, #4]
d008060a:	68db      	ldr	r3, [r3, #12]
d008060c:	4798      	blx	r3
d008060e:	7b3d      	ldrb	r5, [r7, #12]
d0080610:	7b7a      	ldrb	r2, [r7, #13]
d0080612:	4620      	mov	r0, r4
d0080614:	7bb9      	ldrb	r1, [r7, #14]
d0080616:	2303      	movs	r3, #3
d0080618:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d008061c:	7bfe      	ldrb	r6, [r7, #15]
d008061e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080622:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0080626:	21be      	movs	r1, #190	; 0xbe
d0080628:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d008062c:	686d      	ldr	r5, [r5, #4]
d008062e:	686d      	ldr	r5, [r5, #4]
d0080630:	47a8      	blx	r5
d0080632:	7b3b      	ldrb	r3, [r7, #12]
d0080634:	7b7a      	ldrb	r2, [r7, #13]
d0080636:	200b      	movs	r0, #11
d0080638:	7bb9      	ldrb	r1, [r7, #14]
d008063a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008063e:	7bfa      	ldrb	r2, [r7, #15]
d0080640:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080644:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080648:	685b      	ldr	r3, [r3, #4]
d008064a:	68db      	ldr	r3, [r3, #12]
d008064c:	4798      	blx	r3
d008064e:	7b3a      	ldrb	r2, [r7, #12]
d0080650:	7b79      	ldrb	r1, [r7, #13]
d0080652:	4620      	mov	r0, r4
d0080654:	7bbe      	ldrb	r6, [r7, #14]
d0080656:	2303      	movs	r3, #3
d0080658:	ea42 2401 	orr.w	r4, r2, r1, lsl #8
d008065c:	7bfd      	ldrb	r5, [r7, #15]
d008065e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080662:	217d      	movs	r1, #125	; 0x7d
d0080664:	ea44 4406 	orr.w	r4, r4, r6, lsl #16
d0080668:	26f0      	movs	r6, #240	; 0xf0
d008066a:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d008066e:	6864      	ldr	r4, [r4, #4]
d0080670:	6864      	ldr	r4, [r4, #4]
d0080672:	47a0      	blx	r4
d0080674:	2202      	movs	r2, #2
d0080676:	492d      	ldr	r1, [pc, #180]	; (d008072c <main+0x2cc>)
d0080678:	208c      	movs	r0, #140	; 0x8c
d008067a:	f7ff fe1b 	bl	d00802b4 <draw_lcd_centered>
d008067e:	20a4      	movs	r0, #164	; 0xa4
d0080680:	220b      	movs	r2, #11
d0080682:	492b      	ldr	r1, [pc, #172]	; (d0080730 <main+0x2d0>)
d0080684:	f7ff fe16 	bl	d00802b4 <draw_lcd_centered>
d0080688:	7b3b      	ldrb	r3, [r7, #12]
d008068a:	7b7a      	ldrb	r2, [r7, #13]
d008068c:	7bb9      	ldrb	r1, [r7, #14]
d008068e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080692:	7bfa      	ldrb	r2, [r7, #15]
d0080694:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080698:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008069c:	681b      	ldr	r3, [r3, #0]
d008069e:	681b      	ldr	r3, [r3, #0]
d00806a0:	4798      	blx	r3
d00806a2:	7b3b      	ldrb	r3, [r7, #12]
d00806a4:	7b7a      	ldrb	r2, [r7, #13]
d00806a6:	7bb9      	ldrb	r1, [r7, #14]
d00806a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00806ac:	7bfa      	ldrb	r2, [r7, #15]
d00806ae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00806b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00806b6:	681b      	ldr	r3, [r3, #0]
d00806b8:	68db      	ldr	r3, [r3, #12]
d00806ba:	4798      	blx	r3
d00806bc:	7b3b      	ldrb	r3, [r7, #12]
d00806be:	7b79      	ldrb	r1, [r7, #13]
d00806c0:	2240      	movs	r2, #64	; 0x40
d00806c2:	7bbd      	ldrb	r5, [r7, #14]
d00806c4:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00806c8:	7bfc      	ldrb	r4, [r7, #15]
d00806ca:	481a      	ldr	r0, [pc, #104]	; (d0080734 <main+0x2d4>)
d00806cc:	4611      	mov	r1, r2
d00806ce:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00806d2:	4d19      	ldr	r5, [pc, #100]	; (d0080738 <main+0x2d8>)
d00806d4:	6086      	str	r6, [r0, #8]
d00806d6:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d00806da:	4c18      	ldr	r4, [pc, #96]	; (d008073c <main+0x2dc>)
d00806dc:	6005      	str	r5, [r0, #0]
d00806de:	681b      	ldr	r3, [r3, #0]
d00806e0:	6044      	str	r4, [r0, #4]
d00806e2:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00806e4:	4816      	ldr	r0, [pc, #88]	; (d0080740 <main+0x2e0>)
d00806e6:	4798      	blx	r3
d00806e8:	7f3b      	ldrb	r3, [r7, #28]
d00806ea:	7f79      	ldrb	r1, [r7, #29]
d00806ec:	7fba      	ldrb	r2, [r7, #30]
d00806ee:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00806f2:	7ffd      	ldrb	r5, [r7, #31]
d00806f4:	4c13      	ldr	r4, [pc, #76]	; (d0080744 <main+0x2e4>)
d00806f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00806fa:	c807      	ldmia	r0, {r0, r1, r2}
d00806fc:	ea53 6305 	orrs.w	r3, r3, r5, lsl #24
d0080700:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0080704:	f000 863b 	beq.w	d008137e <main+0xf1e>
d0080708:	4c06      	ldr	r4, [pc, #24]	; (d0080724 <main+0x2c4>)
d008070a:	7f21      	ldrb	r1, [r4, #28]
d008070c:	7f63      	ldrb	r3, [r4, #29]
d008070e:	7fa2      	ldrb	r2, [r4, #30]
d0080710:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080714:	7fe3      	ldrb	r3, [r4, #31]
d0080716:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008071a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008071e:	685b      	ldr	r3, [r3, #4]
d0080720:	e012      	b.n	d0080748 <main+0x2e8>
d0080722:	bf00      	nop
d0080724:	2001f000 	.word	0x2001f000
d0080728:	d0096320 	.word	0xd0096320
d008072c:	d00825ac 	.word	0xd00825ac
d0080730:	d0082594 	.word	0xd0082594
d0080734:	d0096300 	.word	0xd0096300
d0080738:	d0083700 	.word	0xd0083700
d008073c:	00f00140 	.word	0x00f00140
d0080740:	d00825c0 	.word	0xd00825c0
d0080744:	d0096540 	.word	0xd0096540
d0080748:	4798      	blx	r3
d008074a:	2800      	cmp	r0, #0
d008074c:	f000 8617 	beq.w	d008137e <main+0xf1e>
d0080750:	7821      	ldrb	r1, [r4, #0]
d0080752:	7863      	ldrb	r3, [r4, #1]
d0080754:	78a2      	ldrb	r2, [r4, #2]
d0080756:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008075a:	78e3      	ldrb	r3, [r4, #3]
d008075c:	4fc8      	ldr	r7, [pc, #800]	; (d0080a80 <main+0x620>)
d008075e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080762:	4cc8      	ldr	r4, [pc, #800]	; (d0080a84 <main+0x624>)
d0080764:	4ec8      	ldr	r6, [pc, #800]	; (d0080a88 <main+0x628>)
d0080766:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008076a:	689b      	ldr	r3, [r3, #8]
d008076c:	4798      	blx	r3
d008076e:	4bc7      	ldr	r3, [pc, #796]	; (d0080a8c <main+0x62c>)
d0080770:	f8df e338 	ldr.w	lr, [pc, #824]	; d0080aac <main+0x64c>
d0080774:	f04f 0cb8 	mov.w	ip, #184	; 0xb8
d0080778:	681b      	ldr	r3, [r3, #0]
d008077a:	4058      	eors	r0, r3
d008077c:	ea80 3340 	eor.w	r3, r0, r0, lsl #13
d0080780:	220f      	movs	r2, #15
d0080782:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080786:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d008078a:	ea83 3143 	eor.w	r1, r3, r3, lsl #13
d008078e:	fbae 5003 	umull	r5, r0, lr, r3
d0080792:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d0080796:	0b00      	lsrs	r0, r0, #12
d0080798:	ea81 1541 	eor.w	r5, r1, r1, lsl #5
d008079c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d00807a0:	ea85 3845 	eor.w	r8, r5, r5, lsl #13
d00807a4:	fba7 9105 	umull	r9, r1, r7, r5
d00807a8:	eba3 2380 	sub.w	r3, r3, r0, lsl #10
d00807ac:	ea88 4058 	eor.w	r0, r8, r8, lsr #17
d00807b0:	09c9      	lsrs	r1, r1, #7
d00807b2:	8023      	strh	r3, [r4, #0]
d00807b4:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d00807b8:	fb0c 5111 	mls	r1, ip, r1, r5
d00807bc:	fba6 5300 	umull	r5, r3, r6, r0
d00807c0:	3122      	adds	r1, #34	; 0x22
d00807c2:	08db      	lsrs	r3, r3, #3
d00807c4:	70a1      	strb	r1, [r4, #2]
d00807c6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00807ca:	eba0 0383 	sub.w	r3, r0, r3, lsl #2
d00807ce:	3302      	adds	r3, #2
d00807d0:	b2db      	uxtb	r3, r3
d00807d2:	2b09      	cmp	r3, #9
d00807d4:	70e3      	strb	r3, [r4, #3]
d00807d6:	d803      	bhi.n	d00807e0 <main+0x380>
d00807d8:	2b06      	cmp	r3, #6
d00807da:	bf8c      	ite	hi
d00807dc:	220d      	movhi	r2, #13
d00807de:	2205      	movls	r2, #5
d00807e0:	7122      	strb	r2, [r4, #4]
d00807e2:	3406      	adds	r4, #6
d00807e4:	4baa      	ldr	r3, [pc, #680]	; (d0080a90 <main+0x630>)
d00807e6:	42a3      	cmp	r3, r4
d00807e8:	d1c8      	bne.n	d008077c <main+0x31c>
d00807ea:	2301      	movs	r3, #1
d00807ec:	2100      	movs	r1, #0
d00807ee:	2232      	movs	r2, #50	; 0x32
d00807f0:	930f      	str	r3, [sp, #60]	; 0x3c
d00807f2:	930e      	str	r3, [sp, #56]	; 0x38
d00807f4:	4ba7      	ldr	r3, [pc, #668]	; (d0080a94 <main+0x634>)
d00807f6:	9109      	str	r1, [sp, #36]	; 0x24
d00807f8:	f5a3 3b96 	sub.w	fp, r3, #76800	; 0x12c00
d00807fc:	49a3      	ldr	r1, [pc, #652]	; (d0080a8c <main+0x62c>)
d00807fe:	920d      	str	r2, [sp, #52]	; 0x34
d0080800:	6008      	str	r0, [r1, #0]
d0080802:	920c      	str	r2, [sp, #48]	; 0x30
d0080804:	4ca4      	ldr	r4, [pc, #656]	; (d0080a98 <main+0x638>)
d0080806:	7821      	ldrb	r1, [r4, #0]
d0080808:	7863      	ldrb	r3, [r4, #1]
d008080a:	78a2      	ldrb	r2, [r4, #2]
d008080c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080810:	78e3      	ldrb	r3, [r4, #3]
d0080812:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080816:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008081a:	6a1b      	ldr	r3, [r3, #32]
d008081c:	4798      	blx	r3
d008081e:	f000 0003 	and.w	r0, r0, #3
d0080822:	2803      	cmp	r0, #3
d0080824:	f000 8502 	beq.w	d008122c <main+0xdcc>
d0080828:	9b09      	ldr	r3, [sp, #36]	; 0x24
d008082a:	465c      	mov	r4, fp
d008082c:	f8df 8280 	ldr.w	r8, [pc, #640]	; d0080ab0 <main+0x650>
d0080830:	f3c3 03c3 	ubfx	r3, r3, #3, #4
d0080834:	f818 3003 	ldrb.w	r3, [r8, r3]
d0080838:	ee08 3a10 	vmov	s16, r3
d008083c:	4620      	mov	r0, r4
d008083e:	22f0      	movs	r2, #240	; 0xf0
d0080840:	2100      	movs	r1, #0
d0080842:	34f0      	adds	r4, #240	; 0xf0
d0080844:	f000 fdbe 	bl	d00813c4 <memset>
d0080848:	4b92      	ldr	r3, [pc, #584]	; (d0080a94 <main+0x634>)
d008084a:	42a3      	cmp	r3, r4
d008084c:	d1f6      	bne.n	d008083c <main+0x3dc>
d008084e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080850:	2414      	movs	r4, #20
d0080852:	2500      	movs	r5, #0
d0080854:	f3c3 0647 	ubfx	r6, r3, #1, #8
d0080858:	b22f      	sxth	r7, r5
d008085a:	f006 030f 	and.w	r3, r6, #15
d008085e:	fa0f fa84 	sxth.w	sl, r4
d0080862:	f818 9003 	ldrb.w	r9, [r8, r3]
d0080866:	4557      	cmp	r7, sl
d0080868:	da0d      	bge.n	d0080886 <main+0x426>
d008086a:	f009 090f 	and.w	r9, r9, #15
d008086e:	ebc7 1007 	rsb	r0, r7, r7, lsl #4
d0080872:	3701      	adds	r7, #1
d0080874:	2218      	movs	r2, #24
d0080876:	4649      	mov	r1, r9
d0080878:	b23f      	sxth	r7, r7
d008087a:	eb0b 1000 	add.w	r0, fp, r0, lsl #4
d008087e:	f000 fda1 	bl	d00813c4 <memset>
d0080882:	45ba      	cmp	sl, r7
d0080884:	d1f3      	bne.n	d008086e <main+0x40e>
d0080886:	3414      	adds	r4, #20
d0080888:	3601      	adds	r6, #1
d008088a:	3514      	adds	r5, #20
d008088c:	b2a4      	uxth	r4, r4
d008088e:	b2f6      	uxtb	r6, r6
d0080890:	f5b4 7faa 	cmp.w	r4, #340	; 0x154
d0080894:	b2ad      	uxth	r5, r5
d0080896:	d1df      	bne.n	d0080858 <main+0x3f8>
d0080898:	4b80      	ldr	r3, [pc, #512]	; (d0080a9c <main+0x63c>)
d008089a:	f640 710f 	movw	r1, #3855	; 0xf0f
d008089e:	f503 3296 	add.w	r2, r3, #76800	; 0x12c00
d00808a2:	f823 1bf0 	strh.w	r1, [r3], #240
d00808a6:	429a      	cmp	r2, r3
d00808a8:	d1fb      	bne.n	d00808a2 <main+0x442>
d00808aa:	4b7d      	ldr	r3, [pc, #500]	; (d0080aa0 <main+0x640>)
d00808ac:	2201      	movs	r2, #1
d00808ae:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
d00808b2:	33f0      	adds	r3, #240	; 0xf0
d00808b4:	4977      	ldr	r1, [pc, #476]	; (d0080a94 <main+0x634>)
d00808b6:	f803 2cb8 	strb.w	r2, [r3, #-184]
d00808ba:	f803 2ca8 	strb.w	r2, [r3, #-168]
d00808be:	f803 2c98 	strb.w	r2, [r3, #-152]
d00808c2:	f803 2c88 	strb.w	r2, [r3, #-136]
d00808c6:	f803 2c78 	strb.w	r2, [r3, #-120]
d00808ca:	f803 2c68 	strb.w	r2, [r3, #-104]
d00808ce:	f803 2c58 	strb.w	r2, [r3, #-88]
d00808d2:	f803 2c48 	strb.w	r2, [r3, #-72]
d00808d6:	f803 2c38 	strb.w	r2, [r3, #-56]
d00808da:	f803 2c28 	strb.w	r2, [r3, #-40]
d00808de:	f803 2c18 	strb.w	r2, [r3, #-24]
d00808e2:	4299      	cmp	r1, r3
d00808e4:	d1e3      	bne.n	d00808ae <main+0x44e>
d00808e6:	4d6f      	ldr	r5, [pc, #444]	; (d0080aa4 <main+0x644>)
d00808e8:	2300      	movs	r3, #0
d00808ea:	b29c      	uxth	r4, r3
d00808ec:	2101      	movs	r1, #1
d00808ee:	22bc      	movs	r2, #188	; 0xbc
d00808f0:	4628      	mov	r0, r5
d00808f2:	1866      	adds	r6, r4, r1
d00808f4:	b236      	sxth	r6, r6
d00808f6:	42b3      	cmp	r3, r6
d00808f8:	da01      	bge.n	d00808fe <main+0x49e>
d00808fa:	f000 fd63 	bl	d00813c4 <memset>
d00808fe:	3410      	adds	r4, #16
d0080900:	f505 6570 	add.w	r5, r5, #3840	; 0xf00
d0080904:	b2a2      	uxth	r2, r4
d0080906:	b223      	sxth	r3, r4
d0080908:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d008090c:	d1ed      	bne.n	d00808ea <main+0x48a>
d008090e:	4b64      	ldr	r3, [pc, #400]	; (d0080aa0 <main+0x640>)
d0080910:	2205      	movs	r2, #5
d0080912:	f883 207e 	strb.w	r2, [r3, #126]	; 0x7e
d0080916:	33f0      	adds	r3, #240	; 0xf0
d0080918:	495e      	ldr	r1, [pc, #376]	; (d0080a94 <main+0x634>)
d008091a:	428b      	cmp	r3, r1
d008091c:	d1f9      	bne.n	d0080912 <main+0x4b2>
d008091e:	22bc      	movs	r2, #188	; 0xbc
d0080920:	2105      	movs	r1, #5
d0080922:	4861      	ldr	r0, [pc, #388]	; (d0080aa8 <main+0x648>)
d0080924:	f000 fd4e 	bl	d00813c4 <memset>
d0080928:	4b58      	ldr	r3, [pc, #352]	; (d0080a8c <main+0x62c>)
d008092a:	4a56      	ldr	r2, [pc, #344]	; (d0080a84 <main+0x624>)
d008092c:	f04f 0eb8 	mov.w	lr, #184	; 0xb8
d0080930:	f8d3 a000 	ldr.w	sl, [r3]
d0080934:	f8df 8174 	ldr.w	r8, [pc, #372]	; d0080aac <main+0x64c>
d0080938:	f8df c14c 	ldr.w	ip, [pc, #332]	; d0080a88 <main+0x628>
d008093c:	e005      	b.n	d008094a <main+0x4ea>
d008093e:	8013      	strh	r3, [r2, #0]
d0080940:	3206      	adds	r2, #6
d0080942:	4b53      	ldr	r3, [pc, #332]	; (d0080a90 <main+0x630>)
d0080944:	4293      	cmp	r3, r2
d0080946:	f000 8084 	beq.w	d0080a52 <main+0x5f2>
d008094a:	78d4      	ldrb	r4, [r2, #3]
d008094c:	8811      	ldrh	r1, [r2, #0]
d008094e:	2c08      	cmp	r4, #8
d0080950:	7890      	ldrb	r0, [r2, #2]
d0080952:	ea4f 1311 	mov.w	r3, r1, lsr #4
d0080956:	7915      	ldrb	r5, [r2, #4]
d0080958:	bf94      	ite	ls
d008095a:	2702      	movls	r7, #2
d008095c:	2704      	movhi	r7, #4
d008095e:	28ef      	cmp	r0, #239	; 0xef
d0080960:	eba3 0307 	sub.w	r3, r3, r7
d0080964:	b29b      	uxth	r3, r3
d0080966:	d834      	bhi.n	d00809d2 <main+0x572>
d0080968:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d008096c:	d207      	bcs.n	d008097e <main+0x51e>
d008096e:	ebc3 1603 	rsb	r6, r3, r3, lsl #4
d0080972:	f005 090f 	and.w	r9, r5, #15
d0080976:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d008097a:	f806 9000 	strb.w	r9, [r6, r0]
d008097e:	1c5e      	adds	r6, r3, #1
d0080980:	b2b6      	uxth	r6, r6
d0080982:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0080986:	d207      	bcs.n	d0080998 <main+0x538>
d0080988:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d008098c:	f005 090f 	and.w	r9, r5, #15
d0080990:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d0080994:	f806 9000 	strb.w	r9, [r6, r0]
d0080998:	2f02      	cmp	r7, #2
d008099a:	d01a      	beq.n	d00809d2 <main+0x572>
d008099c:	1c9e      	adds	r6, r3, #2
d008099e:	b2b6      	uxth	r6, r6
d00809a0:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d00809a4:	d207      	bcs.n	d00809b6 <main+0x556>
d00809a6:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d00809aa:	f005 090f 	and.w	r9, r5, #15
d00809ae:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d00809b2:	f806 9000 	strb.w	r9, [r6, r0]
d00809b6:	2f04      	cmp	r7, #4
d00809b8:	d10b      	bne.n	d00809d2 <main+0x572>
d00809ba:	3303      	adds	r3, #3
d00809bc:	b29b      	uxth	r3, r3
d00809be:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00809c2:	d206      	bcs.n	d00809d2 <main+0x572>
d00809c4:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00809c8:	f005 050f 	and.w	r5, r5, #15
d00809cc:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d00809d0:	541d      	strb	r5, [r3, r0]
d00809d2:	1b0b      	subs	r3, r1, r4
d00809d4:	b29b      	uxth	r3, r3
d00809d6:	f5b3 5fa0 	cmp.w	r3, #5120	; 0x1400
d00809da:	d9b0      	bls.n	d008093e <main+0x4de>
d00809dc:	ea8a 334a 	eor.w	r3, sl, sl, lsl #13
d00809e0:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00809e4:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00809e8:	ea83 3043 	eor.w	r0, r3, r3, lsl #13
d00809ec:	fba8 4103 	umull	r4, r1, r8, r3
d00809f0:	4c23      	ldr	r4, [pc, #140]	; (d0080a80 <main+0x620>)
d00809f2:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d00809f6:	0b09      	lsrs	r1, r1, #12
d00809f8:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d00809fc:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0080a00:	ea80 3a40 	eor.w	sl, r0, r0, lsl #13
d0080a04:	fba4 5400 	umull	r5, r4, r4, r0
d0080a08:	eba3 2181 	sub.w	r1, r3, r1, lsl #10
d0080a0c:	ea8a 435a 	eor.w	r3, sl, sl, lsr #17
d0080a10:	09e4      	lsrs	r4, r4, #7
d0080a12:	f501 51a0 	add.w	r1, r1, #5120	; 0x1400
d0080a16:	ea83 1a43 	eor.w	sl, r3, r3, lsl #5
d0080a1a:	fb0e 0014 	mls	r0, lr, r4, r0
d0080a1e:	fbac 430a 	umull	r4, r3, ip, sl
d0080a22:	8011      	strh	r1, [r2, #0]
d0080a24:	3022      	adds	r0, #34	; 0x22
d0080a26:	08d9      	lsrs	r1, r3, #3
d0080a28:	7090      	strb	r0, [r2, #2]
d0080a2a:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0080a2e:	ebaa 0181 	sub.w	r1, sl, r1, lsl #2
d0080a32:	3102      	adds	r1, #2
d0080a34:	b2c9      	uxtb	r1, r1
d0080a36:	2909      	cmp	r1, #9
d0080a38:	70d1      	strb	r1, [r2, #3]
d0080a3a:	f200 80de 	bhi.w	d0080bfa <main+0x79a>
d0080a3e:	2906      	cmp	r1, #6
d0080a40:	bf8c      	ite	hi
d0080a42:	230d      	movhi	r3, #13
d0080a44:	2305      	movls	r3, #5
d0080a46:	7113      	strb	r3, [r2, #4]
d0080a48:	3206      	adds	r2, #6
d0080a4a:	4b11      	ldr	r3, [pc, #68]	; (d0080a90 <main+0x630>)
d0080a4c:	4293      	cmp	r3, r2
d0080a4e:	f47f af7c 	bne.w	d008094a <main+0x4ea>
d0080a52:	f8bd 3024 	ldrh.w	r3, [sp, #36]	; 0x24
d0080a56:	2201      	movs	r2, #1
d0080a58:	f04f 0800 	mov.w	r8, #0
d0080a5c:	f8cd a044 	str.w	sl, [sp, #68]	; 0x44
d0080a60:	9203      	str	r2, [sp, #12]
d0080a62:	fa03 f202 	lsl.w	r2, r3, r2
d0080a66:	277e      	movs	r7, #126	; 0x7e
d0080a68:	46c6      	mov	lr, r8
d0080a6a:	9210      	str	r2, [sp, #64]	; 0x40
d0080a6c:	b292      	uxth	r2, r2
d0080a6e:	930b      	str	r3, [sp, #44]	; 0x2c
d0080a70:	4691      	mov	r9, r2
d0080a72:	920a      	str	r2, [sp, #40]	; 0x28
d0080a74:	4a05      	ldr	r2, [pc, #20]	; (d0080a8c <main+0x62c>)
d0080a76:	f8c2 a000 	str.w	sl, [r2]
d0080a7a:	469a      	mov	sl, r3
d0080a7c:	e02a      	b.n	d0080ad4 <main+0x674>
d0080a7e:	bf00      	nop
d0080a80:	b21642c9 	.word	0xb21642c9
d0080a84:	d0096340 	.word	0xd0096340
d0080a88:	aaaaaaab 	.word	0xaaaaaaab
d0080a8c:	d0083660 	.word	0xd0083660
d0080a90:	d00964f0 	.word	0xd00964f0
d0080a94:	d0096300 	.word	0xd0096300
d0080a98:	2001f000 	.word	0x2001f000
d0080a9c:	d0083718 	.word	0xd0083718
d0080aa0:	d0083700 	.word	0xd0083700
d0080aa4:	d0083720 	.word	0xd0083720
d0080aa8:	d008cd20 	.word	0xd008cd20
d0080aac:	cccccccd 	.word	0xcccccccd
d0080ab0:	d00823ac 	.word	0xd00823ac
d0080ab4:	9903      	ldr	r1, [sp, #12]
d0080ab6:	f10a 0009 	add.w	r0, sl, #9
d0080aba:	f109 0213 	add.w	r2, r9, #19
d0080abe:	461f      	mov	r7, r3
d0080ac0:	3101      	adds	r1, #1
d0080ac2:	f208 183f 	addw	r8, r8, #319	; 0x13f
d0080ac6:	fa1f fa80 	uxth.w	sl, r0
d0080aca:	46e6      	mov	lr, ip
d0080acc:	b28b      	uxth	r3, r1
d0080ace:	fa1f f982 	uxth.w	r9, r2
d0080ad2:	9303      	str	r3, [sp, #12]
d0080ad4:	4b4f      	ldr	r3, [pc, #316]	; (d0080c14 <main+0x7b4>)
d0080ad6:	f01a 0f80 	tst.w	sl, #128	; 0x80
d0080ada:	ea4f 72e8 	mov.w	r2, r8, asr #31
d0080ade:	484e      	ldr	r0, [pc, #312]	; (d0080c18 <main+0x7b8>)
d0080ae0:	fb83 3108 	smull	r3, r1, r3, r8
d0080ae4:	fa5f f38a 	uxtb.w	r3, sl
d0080ae8:	bf14      	ite	ne
d0080aea:	f1c3 03ff 	rsbne	r3, r3, #255	; 0xff
d0080aee:	b21b      	sxtheq	r3, r3
d0080af0:	4441      	add	r1, r8
d0080af2:	f019 0f80 	tst.w	r9, #128	; 0x80
d0080af6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080afa:	ebc2 12a1 	rsb	r2, r2, r1, asr #6
d0080afe:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d0080b02:	fa5f f189 	uxtb.w	r1, r9
d0080b06:	ea4f 0383 	mov.w	r3, r3, lsl #2
d0080b0a:	bf14      	ite	ne
d0080b0c:	f1c1 01ff 	rsbne	r1, r1, #255	; 0xff
d0080b10:	b209      	sxtheq	r1, r1
d0080b12:	fba0 4003 	umull	r4, r0, r0, r3
d0080b16:	fa0f fc82 	sxth.w	ip, r2
d0080b1a:	1a1b      	subs	r3, r3, r0
d0080b1c:	eb00 0353 	add.w	r3, r0, r3, lsr #1
d0080b20:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0080b24:	f3c3 138f 	ubfx	r3, r3, #6, #16
d0080b28:	eb01 0180 	add.w	r1, r1, r0, lsl #2
d0080b2c:	483a      	ldr	r0, [pc, #232]	; (d0080c18 <main+0x7b8>)
d0080b2e:	3347      	adds	r3, #71	; 0x47
d0080b30:	0049      	lsls	r1, r1, #1
d0080b32:	fba0 4001 	umull	r4, r0, r0, r1
d0080b36:	1a09      	subs	r1, r1, r0
d0080b38:	eb00 0151 	add.w	r1, r0, r1, lsr #1
d0080b3c:	eb03 1391 	add.w	r3, r3, r1, lsr #6
d0080b40:	9903      	ldr	r1, [sp, #12]
d0080b42:	2901      	cmp	r1, #1
d0080b44:	b29c      	uxth	r4, r3
d0080b46:	b21b      	sxth	r3, r3
d0080b48:	d0b4      	beq.n	d0080ab4 <main+0x654>
d0080b4a:	45f4      	cmp	ip, lr
d0080b4c:	f340 8353 	ble.w	d00811f6 <main+0xd96>
d0080b50:	eba2 020e 	sub.w	r2, r2, lr
d0080b54:	2101      	movs	r1, #1
d0080b56:	9107      	str	r1, [sp, #28]
d0080b58:	42bb      	cmp	r3, r7
d0080b5a:	b291      	uxth	r1, r2
d0080b5c:	b212      	sxth	r2, r2
d0080b5e:	9104      	str	r1, [sp, #16]
d0080b60:	9206      	str	r2, [sp, #24]
d0080b62:	f340 8344 	ble.w	d00811ee <main+0xd8e>
d0080b66:	1b3c      	subs	r4, r7, r4
d0080b68:	2201      	movs	r2, #1
d0080b6a:	9208      	str	r2, [sp, #32]
d0080b6c:	b2a2      	uxth	r2, r4
d0080b6e:	fa1f f08e 	uxth.w	r0, lr
d0080b72:	4611      	mov	r1, r2
d0080b74:	9205      	str	r2, [sp, #20]
d0080b76:	9a04      	ldr	r2, [sp, #16]
d0080b78:	b224      	sxth	r4, r4
d0080b7a:	440a      	add	r2, r1
d0080b7c:	b212      	sxth	r2, r2
d0080b7e:	2f00      	cmp	r7, #0
d0080b80:	db23      	blt.n	d0080bca <main+0x76a>
d0080b82:	f240 113f 	movw	r1, #319	; 0x13f
d0080b86:	4288      	cmp	r0, r1
d0080b88:	bf94      	ite	ls
d0080b8a:	2500      	movls	r5, #0
d0080b8c:	2501      	movhi	r5, #1
d0080b8e:	2fef      	cmp	r7, #239	; 0xef
d0080b90:	bfc8      	it	gt
d0080b92:	f045 0501 	orrgt.w	r5, r5, #1
d0080b96:	bb9d      	cbnz	r5, d0080c00 <main+0x7a0>
d0080b98:	21f0      	movs	r1, #240	; 0xf0
d0080b9a:	fb1e 7601 	smlabb	r6, lr, r1, r7
d0080b9e:	f04f 010c 	mov.w	r1, #12
d0080ba2:	f80b 1006 	strb.w	r1, [fp, r6]
d0080ba6:	1c41      	adds	r1, r0, #1
d0080ba8:	b209      	sxth	r1, r1
d0080baa:	f240 163f 	movw	r6, #319	; 0x13f
d0080bae:	42b1      	cmp	r1, r6
d0080bb0:	dc07      	bgt.n	d0080bc2 <main+0x762>
d0080bb2:	b935      	cbnz	r5, d0080bc2 <main+0x762>
d0080bb4:	25f0      	movs	r5, #240	; 0xf0
d0080bb6:	fb11 7105 	smlabb	r1, r1, r5, r7
d0080bba:	f04f 050c 	mov.w	r5, #12
d0080bbe:	f80b 5001 	strb.w	r5, [fp, r1]
d0080bc2:	45f4      	cmp	ip, lr
d0080bc4:	d101      	bne.n	d0080bca <main+0x76a>
d0080bc6:	42bb      	cmp	r3, r7
d0080bc8:	d028      	beq.n	d0080c1c <main+0x7bc>
d0080bca:	0051      	lsls	r1, r2, #1
d0080bcc:	b209      	sxth	r1, r1
d0080bce:	42a1      	cmp	r1, r4
d0080bd0:	db07      	blt.n	d0080be2 <main+0x782>
d0080bd2:	9d05      	ldr	r5, [sp, #20]
d0080bd4:	442a      	add	r2, r5
d0080bd6:	9d07      	ldr	r5, [sp, #28]
d0080bd8:	4428      	add	r0, r5
d0080bda:	b212      	sxth	r2, r2
d0080bdc:	fa0f fe80 	sxth.w	lr, r0
d0080be0:	b280      	uxth	r0, r0
d0080be2:	9d06      	ldr	r5, [sp, #24]
d0080be4:	42a9      	cmp	r1, r5
d0080be6:	dcca      	bgt.n	d0080b7e <main+0x71e>
d0080be8:	9904      	ldr	r1, [sp, #16]
d0080bea:	440a      	add	r2, r1
d0080bec:	9908      	ldr	r1, [sp, #32]
d0080bee:	440f      	add	r7, r1
d0080bf0:	b212      	sxth	r2, r2
d0080bf2:	b23f      	sxth	r7, r7
d0080bf4:	2f00      	cmp	r7, #0
d0080bf6:	dac4      	bge.n	d0080b82 <main+0x722>
d0080bf8:	e7e7      	b.n	d0080bca <main+0x76a>
d0080bfa:	230f      	movs	r3, #15
d0080bfc:	7113      	strb	r3, [r2, #4]
d0080bfe:	e723      	b.n	d0080a48 <main+0x5e8>
d0080c00:	1c41      	adds	r1, r0, #1
d0080c02:	b209      	sxth	r1, r1
d0080c04:	2900      	cmp	r1, #0
d0080c06:	dbdc      	blt.n	d0080bc2 <main+0x762>
d0080c08:	2fef      	cmp	r7, #239	; 0xef
d0080c0a:	bfd4      	ite	le
d0080c0c:	2500      	movle	r5, #0
d0080c0e:	2501      	movgt	r5, #1
d0080c10:	e7cb      	b.n	d0080baa <main+0x74a>
d0080c12:	bf00      	nop
d0080c14:	ac769185 	.word	0xac769185
d0080c18:	02040811 	.word	0x02040811
d0080c1c:	9a03      	ldr	r2, [sp, #12]
d0080c1e:	2a60      	cmp	r2, #96	; 0x60
d0080c20:	f47f af48 	bne.w	d0080ab4 <main+0x654>
d0080c24:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0080c26:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0080c28:	f003 01fe 	and.w	r1, r3, #254	; 0xfe
d0080c2c:	061e      	lsls	r6, r3, #24
d0080c2e:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0080c30:	bf4c      	ite	mi
d0080c32:	f1c1 01ff 	rsbmi	r1, r1, #255	; 0xff
d0080c36:	b209      	sxthpl	r1, r1
d0080c38:	4403      	add	r3, r0
d0080c3a:	f8dd a044 	ldr.w	sl, [sp, #68]	; 0x44
d0080c3e:	0209      	lsls	r1, r1, #8
d0080c40:	461a      	mov	r2, r3
d0080c42:	b2db      	uxtb	r3, r3
d0080c44:	0615      	lsls	r5, r2, #24
d0080c46:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0080c48:	f102 0240 	add.w	r2, r2, #64	; 0x40
d0080c4c:	bf4c      	ite	mi
d0080c4e:	f1c3 03ff 	rsbmi	r3, r3, #255	; 0xff
d0080c52:	b21b      	sxthpl	r3, r3
d0080c54:	f002 00fe 	and.w	r0, r2, #254	; 0xfe
d0080c58:	0614      	lsls	r4, r2, #24
d0080c5a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080c5e:	4cbe      	ldr	r4, [pc, #760]	; (d0080f58 <main+0xaf8>)
d0080c60:	bf4c      	ite	mi
d0080c62:	f1c0 02ff 	rsbmi	r2, r0, #255	; 0xff
d0080c66:	b202      	sxthpl	r2, r0
d0080c68:	9204      	str	r2, [sp, #16]
d0080c6a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0080c6c:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080c70:	b2d0      	uxtb	r0, r2
d0080c72:	0612      	lsls	r2, r2, #24
d0080c74:	bf4c      	ite	mi
d0080c76:	f1c0 02ff 	rsbmi	r2, r0, #255	; 0xff
d0080c7a:	b202      	sxthpl	r2, r0
d0080c7c:	ebc3 00c3 	rsb	r0, r3, r3, lsl #3
d0080c80:	ebc2 05c2 	rsb	r5, r2, r2, lsl #3
d0080c84:	00c0      	lsls	r0, r0, #3
d0080c86:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0080c8a:	fba4 5201 	umull	r5, r2, r4, r1
d0080c8e:	fba4 5700 	umull	r5, r7, r4, r0
d0080c92:	009b      	lsls	r3, r3, #2
d0080c94:	1a89      	subs	r1, r1, r2
d0080c96:	1bc0      	subs	r0, r0, r7
d0080c98:	fba4 5403 	umull	r5, r4, r4, r3
d0080c9c:	eb02 0151 	add.w	r1, r2, r1, lsr #1
d0080ca0:	eb07 0750 	add.w	r7, r7, r0, lsr #1
d0080ca4:	1b1b      	subs	r3, r3, r4
d0080ca6:	f3c1 158f 	ubfx	r5, r1, #6, #16
d0080caa:	f3c7 178f 	ubfx	r7, r7, #6, #16
d0080cae:	eb04 0453 	add.w	r4, r4, r3, lsr #1
d0080cb2:	f105 0221 	add.w	r2, r5, #33	; 0x21
d0080cb6:	f107 031c 	add.w	r3, r7, #28
d0080cba:	f3c4 118f 	ubfx	r1, r4, #6, #16
d0080cbe:	b214      	sxth	r4, r2
d0080cc0:	b21b      	sxth	r3, r3
d0080cc2:	f101 0946 	add.w	r9, r1, #70	; 0x46
d0080cc6:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080cca:	9103      	str	r1, [sp, #12]
d0080ccc:	fa0f f989 	sxth.w	r9, r9
d0080cd0:	da25      	bge.n	d0080d1e <main+0x8be>
d0080cd2:	2bef      	cmp	r3, #239	; 0xef
d0080cd4:	dc23      	bgt.n	d0080d1e <main+0x8be>
d0080cd6:	f105 0839 	add.w	r8, r5, #57	; 0x39
d0080cda:	f107 022e 	add.w	r2, r7, #46	; 0x2e
d0080cde:	fa0f f888 	sxth.w	r8, r8
d0080ce2:	b212      	sxth	r2, r2
d0080ce4:	f5b8 7fa0 	cmp.w	r8, #320	; 0x140
d0080ce8:	bfa8      	it	ge
d0080cea:	f44f 78a0 	movge.w	r8, #320	; 0x140
d0080cee:	2af0      	cmp	r2, #240	; 0xf0
d0080cf0:	bfa8      	it	ge
d0080cf2:	22f0      	movge	r2, #240	; 0xf0
d0080cf4:	45a0      	cmp	r8, r4
d0080cf6:	dd12      	ble.n	d0080d1e <main+0x8be>
d0080cf8:	21f0      	movs	r1, #240	; 0xf0
d0080cfa:	1ad2      	subs	r2, r2, r3
d0080cfc:	9505      	str	r5, [sp, #20]
d0080cfe:	fb14 3301 	smlabb	r3, r4, r1, r3
d0080d02:	4615      	mov	r5, r2
d0080d04:	eb0b 0603 	add.w	r6, fp, r3
d0080d08:	3401      	adds	r4, #1
d0080d0a:	4630      	mov	r0, r6
d0080d0c:	462a      	mov	r2, r5
d0080d0e:	210b      	movs	r1, #11
d0080d10:	b224      	sxth	r4, r4
d0080d12:	36f0      	adds	r6, #240	; 0xf0
d0080d14:	f000 fb56 	bl	d00813c4 <memset>
d0080d18:	45a0      	cmp	r8, r4
d0080d1a:	dcf5      	bgt.n	d0080d08 <main+0x8a8>
d0080d1c:	9d05      	ldr	r5, [sp, #20]
d0080d1e:	f105 0425 	add.w	r4, r5, #37	; 0x25
d0080d22:	f107 0320 	add.w	r3, r7, #32
d0080d26:	b224      	sxth	r4, r4
d0080d28:	b21b      	sxth	r3, r3
d0080d2a:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080d2e:	da23      	bge.n	d0080d78 <main+0x918>
d0080d30:	2bef      	cmp	r3, #239	; 0xef
d0080d32:	dc21      	bgt.n	d0080d78 <main+0x918>
d0080d34:	3535      	adds	r5, #53	; 0x35
d0080d36:	372a      	adds	r7, #42	; 0x2a
d0080d38:	b22d      	sxth	r5, r5
d0080d3a:	fa0f f887 	sxth.w	r8, r7
d0080d3e:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080d42:	bfa8      	it	ge
d0080d44:	f44f 75a0 	movge.w	r5, #320	; 0x140
d0080d48:	f1b8 0ff0 	cmp.w	r8, #240	; 0xf0
d0080d4c:	bfa8      	it	ge
d0080d4e:	f04f 08f0 	movge.w	r8, #240	; 0xf0
d0080d52:	42a5      	cmp	r5, r4
d0080d54:	dd10      	ble.n	d0080d78 <main+0x918>
d0080d56:	27f0      	movs	r7, #240	; 0xf0
d0080d58:	eba8 0803 	sub.w	r8, r8, r3
d0080d5c:	fb14 3307 	smlabb	r3, r4, r7, r3
d0080d60:	eb0b 0703 	add.w	r7, fp, r3
d0080d64:	3401      	adds	r4, #1
d0080d66:	4638      	mov	r0, r7
d0080d68:	4642      	mov	r2, r8
d0080d6a:	210f      	movs	r1, #15
d0080d6c:	b224      	sxth	r4, r4
d0080d6e:	37f0      	adds	r7, #240	; 0xf0
d0080d70:	f000 fb28 	bl	d00813c4 <memset>
d0080d74:	42a5      	cmp	r5, r4
d0080d76:	dcf5      	bgt.n	d0080d64 <main+0x904>
d0080d78:	9b04      	ldr	r3, [sp, #16]
d0080d7a:	2212      	movs	r2, #18
d0080d7c:	4c76      	ldr	r4, [pc, #472]	; (d0080f58 <main+0xaf8>)
d0080d7e:	4649      	mov	r1, r9
d0080d80:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0080d84:	230e      	movs	r3, #14
d0080d86:	0140      	lsls	r0, r0, #5
d0080d88:	fba4 5400 	umull	r5, r4, r4, r0
d0080d8c:	1b00      	subs	r0, r0, r4
d0080d8e:	eb04 0450 	add.w	r4, r4, r0, lsr #1
d0080d92:	f3c4 148f 	ubfx	r4, r4, #6, #16
d0080d96:	f104 00c8 	add.w	r0, r4, #200	; 0xc8
d0080d9a:	f104 05c6 	add.w	r5, r4, #198	; 0xc6
d0080d9e:	b200      	sxth	r0, r0
d0080da0:	b22d      	sxth	r5, r5
d0080da2:	9004      	str	r0, [sp, #16]
d0080da4:	f7ff f9ca 	bl	d008013c <draw_circle>
d0080da8:	2306      	movs	r3, #6
d0080daa:	9804      	ldr	r0, [sp, #16]
d0080dac:	4649      	mov	r1, r9
d0080dae:	220a      	movs	r2, #10
d0080db0:	f7ff f9c4 	bl	d008013c <draw_circle>
d0080db4:	9b03      	ldr	r3, [sp, #12]
d0080db6:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080dba:	f103 0344 	add.w	r3, r3, #68	; 0x44
d0080dbe:	b21b      	sxth	r3, r3
d0080dc0:	da20      	bge.n	d0080e04 <main+0x9a4>
d0080dc2:	2bef      	cmp	r3, #239	; 0xef
d0080dc4:	dc1e      	bgt.n	d0080e04 <main+0x9a4>
d0080dc6:	34cb      	adds	r4, #203	; 0xcb
d0080dc8:	9e03      	ldr	r6, [sp, #12]
d0080dca:	b224      	sxth	r4, r4
d0080dcc:	3649      	adds	r6, #73	; 0x49
d0080dce:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080dd2:	b237      	sxth	r7, r6
d0080dd4:	bfa8      	it	ge
d0080dd6:	f44f 74a0 	movge.w	r4, #320	; 0x140
d0080dda:	2ff0      	cmp	r7, #240	; 0xf0
d0080ddc:	bfa8      	it	ge
d0080dde:	27f0      	movge	r7, #240	; 0xf0
d0080de0:	42ac      	cmp	r4, r5
d0080de2:	dd0f      	ble.n	d0080e04 <main+0x9a4>
d0080de4:	26f0      	movs	r6, #240	; 0xf0
d0080de6:	1aff      	subs	r7, r7, r3
d0080de8:	fb15 3306 	smlabb	r3, r5, r6, r3
d0080dec:	eb0b 0603 	add.w	r6, fp, r3
d0080df0:	3501      	adds	r5, #1
d0080df2:	4630      	mov	r0, r6
d0080df4:	463a      	mov	r2, r7
d0080df6:	210a      	movs	r1, #10
d0080df8:	b22d      	sxth	r5, r5
d0080dfa:	36f0      	adds	r6, #240	; 0xf0
d0080dfc:	f000 fae2 	bl	d00813c4 <memset>
d0080e00:	42ac      	cmp	r4, r5
d0080e02:	dcf5      	bgt.n	d0080df0 <main+0x990>
d0080e04:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080e06:	20bc      	movs	r0, #188	; 0xbc
d0080e08:	4a54      	ldr	r2, [pc, #336]	; (d0080f5c <main+0xafc>)
d0080e0a:	210f      	movs	r1, #15
d0080e0c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080e10:	fba2 4203 	umull	r4, r2, r2, r3
d0080e14:	09d2      	lsrs	r2, r2, #7
d0080e16:	fb00 3212 	mls	r2, r0, r2, r3
d0080e1a:	4851      	ldr	r0, [pc, #324]	; (d0080f60 <main+0xb00>)
d0080e1c:	3220      	adds	r2, #32
d0080e1e:	b2d2      	uxtb	r2, r2
d0080e20:	eb0b 0302 	add.w	r3, fp, r2
d0080e24:	4402      	add	r2, r0
d0080e26:	f803 1bf0 	strb.w	r1, [r3], #240
d0080e2a:	4293      	cmp	r3, r2
d0080e2c:	d1fb      	bne.n	d0080e26 <main+0x9c6>
d0080e2e:	2000      	movs	r0, #0
d0080e30:	4e4c      	ldr	r6, [pc, #304]	; (d0080f64 <main+0xb04>)
d0080e32:	25bc      	movs	r5, #188	; 0xbc
d0080e34:	ea8a 334a 	eor.w	r3, sl, sl, lsl #13
d0080e38:	f000 0401 	and.w	r4, r0, #1
d0080e3c:	3001      	adds	r0, #1
d0080e3e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080e42:	3408      	adds	r4, #8
d0080e44:	281c      	cmp	r0, #28
d0080e46:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080e4a:	ea83 3a43 	eor.w	sl, r3, r3, lsl #13
d0080e4e:	fba6 1203 	umull	r1, r2, r6, r3
d0080e52:	4942      	ldr	r1, [pc, #264]	; (d0080f5c <main+0xafc>)
d0080e54:	ea8a 4a5a 	eor.w	sl, sl, sl, lsr #17
d0080e58:	ea4f 2212 	mov.w	r2, r2, lsr #8
d0080e5c:	ea8a 1a4a 	eor.w	sl, sl, sl, lsl #5
d0080e60:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080e64:	fba1 710a 	umull	r7, r1, r1, sl
d0080e68:	eba3 1382 	sub.w	r3, r3, r2, lsl #6
d0080e6c:	ea4f 11d1 	mov.w	r1, r1, lsr #7
d0080e70:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0080e74:	fb05 a111 	mls	r1, r5, r1, sl
d0080e78:	eb0b 1203 	add.w	r2, fp, r3, lsl #4
d0080e7c:	f101 0320 	add.w	r3, r1, #32
d0080e80:	b29b      	uxth	r3, r3
d0080e82:	54d4      	strb	r4, [r2, r3]
d0080e84:	d1d6      	bne.n	d0080e34 <main+0x9d4>
d0080e86:	4938      	ldr	r1, [pc, #224]	; (d0080f68 <main+0xb08>)
d0080e88:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
d0080e8c:	4b37      	ldr	r3, [pc, #220]	; (d0080f6c <main+0xb0c>)
d0080e8e:	f8c1 a000 	str.w	sl, [r1]
d0080e92:	f503 3196 	add.w	r1, r3, #76800	; 0x12c00
d0080e96:	e9c3 2200 	strd	r2, r2, [r3]
d0080e9a:	e9c3 2202 	strd	r2, r2, [r3, #8]
d0080e9e:	33f0      	adds	r3, #240	; 0xf0
d0080ea0:	4299      	cmp	r1, r3
d0080ea2:	d1f8      	bne.n	d0080e96 <main+0xa36>
d0080ea4:	4b32      	ldr	r3, [pc, #200]	; (d0080f70 <main+0xb10>)
d0080ea6:	2200      	movs	r2, #0
d0080ea8:	f503 4116 	add.w	r1, r3, #38400	; 0x9600
d0080eac:	601a      	str	r2, [r3, #0]
d0080eae:	33f0      	adds	r3, #240	; 0xf0
d0080eb0:	f843 2cec 	str.w	r2, [r3, #-236]
d0080eb4:	f843 2ce8 	str.w	r2, [r3, #-232]
d0080eb8:	428b      	cmp	r3, r1
d0080eba:	d1f7      	bne.n	d0080eac <main+0xa4c>
d0080ebc:	4b2d      	ldr	r3, [pc, #180]	; (d0080f74 <main+0xb14>)
d0080ebe:	2200      	movs	r2, #0
d0080ec0:	492d      	ldr	r1, [pc, #180]	; (d0080f78 <main+0xb18>)
d0080ec2:	601a      	str	r2, [r3, #0]
d0080ec4:	33f0      	adds	r3, #240	; 0xf0
d0080ec6:	f843 2cec 	str.w	r2, [r3, #-236]
d0080eca:	f843 2ce8 	str.w	r2, [r3, #-232]
d0080ece:	428b      	cmp	r3, r1
d0080ed0:	d1f7      	bne.n	d0080ec2 <main+0xa62>
d0080ed2:	4d2a      	ldr	r5, [pc, #168]	; (d0080f7c <main+0xb1c>)
d0080ed4:	2153      	movs	r1, #83	; 0x53
d0080ed6:	2408      	movs	r4, #8
d0080ed8:	e002      	b.n	d0080ee0 <main+0xa80>
d0080eda:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080ede:	d009      	beq.n	d0080ef4 <main+0xa94>
d0080ee0:	4620      	mov	r0, r4
d0080ee2:	220f      	movs	r2, #15
d0080ee4:	3408      	adds	r4, #8
d0080ee6:	f7ff fa1d 	bl	d0080324 <draw_text_cell.constprop.0>
d0080eea:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d0080eee:	b2a4      	uxth	r4, r4
d0080ef0:	2900      	cmp	r1, #0
d0080ef2:	d1f2      	bne.n	d0080eda <main+0xa7a>
d0080ef4:	4d22      	ldr	r5, [pc, #136]	; (d0080f80 <main+0xb20>)
d0080ef6:	2152      	movs	r1, #82	; 0x52
d0080ef8:	24b0      	movs	r4, #176	; 0xb0
d0080efa:	e002      	b.n	d0080f02 <main+0xaa2>
d0080efc:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080f00:	d009      	beq.n	d0080f16 <main+0xab6>
d0080f02:	4620      	mov	r0, r4
d0080f04:	220e      	movs	r2, #14
d0080f06:	3408      	adds	r4, #8
d0080f08:	f7ff fa0c 	bl	d0080324 <draw_text_cell.constprop.0>
d0080f0c:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d0080f10:	b2a4      	uxth	r4, r4
d0080f12:	2900      	cmp	r1, #0
d0080f14:	d1f2      	bne.n	d0080efc <main+0xa9c>
d0080f16:	4c1b      	ldr	r4, [pc, #108]	; (d0080f84 <main+0xb24>)
d0080f18:	2128      	movs	r1, #40	; 0x28
d0080f1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0080f1c:	4a1a      	ldr	r2, [pc, #104]	; (d0080f88 <main+0xb28>)
d0080f1e:	4620      	mov	r0, r4
d0080f20:	f000 fbd0 	bl	d00816c4 <sniprintf>
d0080f24:	7823      	ldrb	r3, [r4, #0]
d0080f26:	2b00      	cmp	r3, #0
d0080f28:	f000 80bc 	beq.w	d00810a4 <main+0xc44>
d0080f2c:	4620      	mov	r0, r4
d0080f2e:	f04f 0c08 	mov.w	ip, #8
d0080f32:	f8df 8058 	ldr.w	r8, [pc, #88]	; d0080f8c <main+0xb2c>
d0080f36:	260d      	movs	r6, #13
d0080f38:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
d0080f3c:	2a19      	cmp	r2, #25
d0080f3e:	f200 8166 	bhi.w	d008120e <main+0xdae>
d0080f42:	f1a3 0420 	sub.w	r4, r3, #32
d0080f46:	b2e4      	uxtb	r4, r4
d0080f48:	3c20      	subs	r4, #32
d0080f4a:	00e4      	lsls	r4, r4, #3
d0080f4c:	4444      	add	r4, r8
d0080f4e:	4661      	mov	r1, ip
d0080f50:	1e65      	subs	r5, r4, #1
d0080f52:	3407      	adds	r4, #7
d0080f54:	e054      	b.n	d0081000 <main+0xba0>
d0080f56:	bf00      	nop
d0080f58:	02040811 	.word	0x02040811
d0080f5c:	ae4c415d 	.word	0xae4c415d
d0080f60:	d0096300 	.word	0xd0096300
d0080f64:	cccccccd 	.word	0xcccccccd
d0080f68:	d0083660 	.word	0xd0083660
d0080f6c:	d00837e0 	.word	0xd00837e0
d0080f70:	d0083ac4 	.word	0xd0083ac4
d0080f74:	d008d484 	.word	0xd008d484
d0080f78:	d0095f44 	.word	0xd0095f44
d0080f7c:	d0082350 	.word	0xd0082350
d0080f80:	d0082360 	.word	0xd0082360
d0080f84:	d00964f0 	.word	0xd00964f0
d0080f88:	d008238c 	.word	0xd008238c
d0080f8c:	d00823bc 	.word	0xd00823bc
d0080f90:	b20a      	sxth	r2, r1
d0080f92:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0080f96:	da37      	bge.n	d0081008 <main+0xba8>
d0080f98:	ebc2 1302 	rsb	r3, r2, r2, lsl #4
d0080f9c:	f017 0f02 	tst.w	r7, #2
d0080fa0:	eb0b 1e03 	add.w	lr, fp, r3, lsl #4
d0080fa4:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0080fa8:	f88e 60e4 	strb.w	r6, [lr, #228]	; 0xe4
d0080fac:	d137      	bne.n	d008101e <main+0xbbe>
d0080fae:	077b      	lsls	r3, r7, #29
d0080fb0:	d53b      	bpl.n	d008102a <main+0xbca>
d0080fb2:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d0080fb6:	0113      	lsls	r3, r2, #4
d0080fb8:	eb0b 0203 	add.w	r2, fp, r3
d0080fbc:	f882 60e6 	strb.w	r6, [r2, #230]	; 0xe6
d0080fc0:	073a      	lsls	r2, r7, #28
d0080fc2:	f140 80f6 	bpl.w	d00811b2 <main+0xd52>
d0080fc6:	eb0b 0203 	add.w	r2, fp, r3
d0080fca:	f882 60e7 	strb.w	r6, [r2, #231]	; 0xe7
d0080fce:	06fa      	lsls	r2, r7, #27
d0080fd0:	d53b      	bpl.n	d008104a <main+0xbea>
d0080fd2:	eb0b 0203 	add.w	r2, fp, r3
d0080fd6:	f882 60e8 	strb.w	r6, [r2, #232]	; 0xe8
d0080fda:	06ba      	lsls	r2, r7, #26
d0080fdc:	f140 80fb 	bpl.w	d00811d6 <main+0xd76>
d0080fe0:	eb0b 0203 	add.w	r2, fp, r3
d0080fe4:	f882 60e9 	strb.w	r6, [r2, #233]	; 0xe9
d0080fe8:	067a      	lsls	r2, r7, #25
d0080fea:	d53f      	bpl.n	d008106c <main+0xc0c>
d0080fec:	eb0b 0203 	add.w	r2, fp, r3
d0080ff0:	063f      	lsls	r7, r7, #24
d0080ff2:	f882 60ea 	strb.w	r6, [r2, #234]	; 0xea
d0080ff6:	d442      	bmi.n	d008107e <main+0xc1e>
d0080ff8:	3101      	adds	r1, #1
d0080ffa:	42a5      	cmp	r5, r4
d0080ffc:	b289      	uxth	r1, r1
d0080ffe:	d045      	beq.n	d008108c <main+0xc2c>
d0081000:	f815 7f01 	ldrb.w	r7, [r5, #1]!
d0081004:	07fb      	lsls	r3, r7, #31
d0081006:	d4c3      	bmi.n	d0080f90 <main+0xb30>
d0081008:	07bb      	lsls	r3, r7, #30
d008100a:	f140 80c7 	bpl.w	d008119c <main+0xd3c>
d008100e:	b20b      	sxth	r3, r1
d0081010:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081014:	f280 80c2 	bge.w	d008119c <main+0xd3c>
d0081018:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008101c:	011b      	lsls	r3, r3, #4
d008101e:	eb0b 0203 	add.w	r2, fp, r3
d0081022:	f882 60e5 	strb.w	r6, [r2, #229]	; 0xe5
d0081026:	077a      	lsls	r2, r7, #29
d0081028:	d4c6      	bmi.n	d0080fb8 <main+0xb58>
d008102a:	073b      	lsls	r3, r7, #28
d008102c:	f140 80c1 	bpl.w	d00811b2 <main+0xd52>
d0081030:	b20b      	sxth	r3, r1
d0081032:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081036:	da08      	bge.n	d008104a <main+0xbea>
d0081038:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008103c:	011b      	lsls	r3, r3, #4
d008103e:	eb0b 0203 	add.w	r2, fp, r3
d0081042:	f882 60e7 	strb.w	r6, [r2, #231]	; 0xe7
d0081046:	06fa      	lsls	r2, r7, #27
d0081048:	d4c3      	bmi.n	d0080fd2 <main+0xb72>
d008104a:	06bb      	lsls	r3, r7, #26
d008104c:	f140 80c3 	bpl.w	d00811d6 <main+0xd76>
d0081050:	b20b      	sxth	r3, r1
d0081052:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081056:	f280 80d3 	bge.w	d0081200 <main+0xda0>
d008105a:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008105e:	011b      	lsls	r3, r3, #4
d0081060:	eb0b 0203 	add.w	r2, fp, r3
d0081064:	f882 60e9 	strb.w	r6, [r2, #233]	; 0xe9
d0081068:	067a      	lsls	r2, r7, #25
d008106a:	d4bf      	bmi.n	d0080fec <main+0xb8c>
d008106c:	063f      	lsls	r7, r7, #24
d008106e:	d5c3      	bpl.n	d0080ff8 <main+0xb98>
d0081070:	b20b      	sxth	r3, r1
d0081072:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081076:	dabf      	bge.n	d0080ff8 <main+0xb98>
d0081078:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008107c:	011b      	lsls	r3, r3, #4
d008107e:	445b      	add	r3, fp
d0081080:	3101      	adds	r1, #1
d0081082:	42a5      	cmp	r5, r4
d0081084:	b289      	uxth	r1, r1
d0081086:	f883 60eb 	strb.w	r6, [r3, #235]	; 0xeb
d008108a:	d1b9      	bne.n	d0081000 <main+0xba0>
d008108c:	f10c 0c08 	add.w	ip, ip, #8
d0081090:	f810 3f01 	ldrb.w	r3, [r0, #1]!
d0081094:	fa1f fc8c 	uxth.w	ip, ip
d0081098:	f5bc 7fa0 	cmp.w	ip, #320	; 0x140
d008109c:	d002      	beq.n	d00810a4 <main+0xc44>
d008109e:	2b00      	cmp	r3, #0
d00810a0:	f47f af4a 	bne.w	d0080f38 <main+0xad8>
d00810a4:	4c5d      	ldr	r4, [pc, #372]	; (d008121c <main+0xdbc>)
d00810a6:	f8bd 5034 	ldrh.w	r5, [sp, #52]	; 0x34
d00810aa:	7b23      	ldrb	r3, [r4, #12]
d00810ac:	7b60      	ldrb	r0, [r4, #13]
d00810ae:	f105 022c 	add.w	r2, r5, #44	; 0x2c
d00810b2:	7ba6      	ldrb	r6, [r4, #14]
d00810b4:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
d00810b8:	7be4      	ldrb	r4, [r4, #15]
d00810ba:	9f0c      	ldr	r7, [sp, #48]	; 0x30
d00810bc:	b212      	sxth	r2, r2
d00810be:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00810c2:	4b57      	ldr	r3, [pc, #348]	; (d0081220 <main+0xdc0>)
d00810c4:	4639      	mov	r1, r7
d00810c6:	4857      	ldr	r0, [pc, #348]	; (d0081224 <main+0xdc4>)
d00810c8:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d00810cc:	6824      	ldr	r4, [r4, #0]
d00810ce:	6f24      	ldr	r4, [r4, #112]	; 0x70
d00810d0:	47a0      	blx	r4
d00810d2:	f8bd 4038 	ldrh.w	r4, [sp, #56]	; 0x38
d00810d6:	463b      	mov	r3, r7
d00810d8:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
d00810dc:	4423      	add	r3, r4
d00810de:	182a      	adds	r2, r5, r0
d00810e0:	f103 0140 	add.w	r1, r3, #64	; 0x40
d00810e4:	b21b      	sxth	r3, r3
d00810e6:	b289      	uxth	r1, r1
d00810e8:	930c      	str	r3, [sp, #48]	; 0x30
d00810ea:	b293      	uxth	r3, r2
d00810ec:	f5b1 7fc0 	cmp.w	r1, #384	; 0x180
d00810f0:	b212      	sxth	r2, r2
d00810f2:	920d      	str	r2, [sp, #52]	; 0x34
d00810f4:	d902      	bls.n	d00810fc <main+0xc9c>
d00810f6:	4264      	negs	r4, r4
d00810f8:	b222      	sxth	r2, r4
d00810fa:	920e      	str	r2, [sp, #56]	; 0x38
d00810fc:	3340      	adds	r3, #64	; 0x40
d00810fe:	b29b      	uxth	r3, r3
d0081100:	f5b3 7f98 	cmp.w	r3, #304	; 0x130
d0081104:	d902      	bls.n	d008110c <main+0xcac>
d0081106:	4240      	negs	r0, r0
d0081108:	b203      	sxth	r3, r0
d008110a:	930f      	str	r3, [sp, #60]	; 0x3c
d008110c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d008110e:	4c43      	ldr	r4, [pc, #268]	; (d008121c <main+0xdbc>)
d0081110:	3301      	adds	r3, #1
d0081112:	7b21      	ldrb	r1, [r4, #12]
d0081114:	4625      	mov	r5, r4
d0081116:	9309      	str	r3, [sp, #36]	; 0x24
d0081118:	7b63      	ldrb	r3, [r4, #13]
d008111a:	7ba2      	ldrb	r2, [r4, #14]
d008111c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0081120:	7be3      	ldrb	r3, [r4, #15]
d0081122:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081126:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008112a:	681b      	ldr	r3, [r3, #0]
d008112c:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d008112e:	4798      	blx	r3
d0081130:	7f21      	ldrb	r1, [r4, #28]
d0081132:	7f63      	ldrb	r3, [r4, #29]
d0081134:	7fa2      	ldrb	r2, [r4, #30]
d0081136:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008113a:	7fe3      	ldrb	r3, [r4, #31]
d008113c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081140:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081144:	699b      	ldr	r3, [r3, #24]
d0081146:	4798      	blx	r3
d0081148:	7f20      	ldrb	r0, [r4, #28]
d008114a:	7f63      	ldrb	r3, [r4, #29]
d008114c:	ee18 1a10 	vmov	r1, s16
d0081150:	7fa2      	ldrb	r2, [r4, #30]
d0081152:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d0081156:	7feb      	ldrb	r3, [r5, #31]
d0081158:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d008115c:	4832      	ldr	r0, [pc, #200]	; (d0081228 <main+0xdc8>)
d008115e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081162:	69db      	ldr	r3, [r3, #28]
d0081164:	4798      	blx	r3
d0081166:	7d29      	ldrb	r1, [r5, #20]
d0081168:	7d6b      	ldrb	r3, [r5, #21]
d008116a:	7daa      	ldrb	r2, [r5, #22]
d008116c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0081170:	7deb      	ldrb	r3, [r5, #23]
d0081172:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081176:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008117a:	685b      	ldr	r3, [r3, #4]
d008117c:	685b      	ldr	r3, [r3, #4]
d008117e:	4798      	blx	r3
d0081180:	7a29      	ldrb	r1, [r5, #8]
d0081182:	7a6b      	ldrb	r3, [r5, #9]
d0081184:	7aaa      	ldrb	r2, [r5, #10]
d0081186:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008118a:	7aeb      	ldrb	r3, [r5, #11]
d008118c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081190:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081194:	689b      	ldr	r3, [r3, #8]
d0081196:	4798      	blx	r3
d0081198:	f7ff bb34 	b.w	d0080804 <main+0x3a4>
d008119c:	077b      	lsls	r3, r7, #29
d008119e:	f57f af44 	bpl.w	d008102a <main+0xbca>
d00811a2:	b20a      	sxth	r2, r1
d00811a4:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00811a8:	f6ff af03 	blt.w	d0080fb2 <main+0xb52>
d00811ac:	073b      	lsls	r3, r7, #28
d00811ae:	f53f af3f 	bmi.w	d0081030 <main+0xbd0>
d00811b2:	06fb      	lsls	r3, r7, #27
d00811b4:	f57f af49 	bpl.w	d008104a <main+0xbea>
d00811b8:	b20b      	sxth	r3, r1
d00811ba:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00811be:	f6bf af44 	bge.w	d008104a <main+0xbea>
d00811c2:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00811c6:	011b      	lsls	r3, r3, #4
d00811c8:	eb0b 0203 	add.w	r2, fp, r3
d00811cc:	f882 60e8 	strb.w	r6, [r2, #232]	; 0xe8
d00811d0:	06ba      	lsls	r2, r7, #26
d00811d2:	f53f af05 	bmi.w	d0080fe0 <main+0xb80>
d00811d6:	067b      	lsls	r3, r7, #25
d00811d8:	f57f af48 	bpl.w	d008106c <main+0xc0c>
d00811dc:	b20b      	sxth	r3, r1
d00811de:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00811e2:	f6bf af09 	bge.w	d0080ff8 <main+0xb98>
d00811e6:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00811ea:	011b      	lsls	r3, r3, #4
d00811ec:	e6fe      	b.n	d0080fec <main+0xb8c>
d00811ee:	1be4      	subs	r4, r4, r7
d00811f0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00811f4:	e4b9      	b.n	d0080b6a <main+0x70a>
d00811f6:	ebae 0202 	sub.w	r2, lr, r2
d00811fa:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d00811fe:	e4aa      	b.n	d0080b56 <main+0x6f6>
d0081200:	067a      	lsls	r2, r7, #25
d0081202:	f53f aef9 	bmi.w	d0080ff8 <main+0xb98>
d0081206:	063f      	lsls	r7, r7, #24
d0081208:	f57f aef6 	bpl.w	d0080ff8 <main+0xb98>
d008120c:	e730      	b.n	d0081070 <main+0xc10>
d008120e:	3b20      	subs	r3, #32
d0081210:	b2da      	uxtb	r2, r3
d0081212:	2a3a      	cmp	r2, #58	; 0x3a
d0081214:	bf94      	ite	ls
d0081216:	00dc      	lslls	r4, r3, #3
d0081218:	24f8      	movhi	r4, #248	; 0xf8
d008121a:	e697      	b.n	d0080f4c <main+0xaec>
d008121c:	2001f000 	.word	0x2001f000
d0081220:	d0096300 	.word	0xd0096300
d0081224:	d0096540 	.word	0xd0096540
d0081228:	d0083700 	.word	0xd0083700
d008122c:	7f23      	ldrb	r3, [r4, #28]
d008122e:	4626      	mov	r6, r4
d0081230:	7f62      	ldrb	r2, [r4, #29]
d0081232:	2502      	movs	r5, #2
d0081234:	7fa1      	ldrb	r1, [r4, #30]
d0081236:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008123a:	7fe2      	ldrb	r2, [r4, #31]
d008123c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081240:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081244:	689b      	ldr	r3, [r3, #8]
d0081246:	4798      	blx	r3
d0081248:	7b23      	ldrb	r3, [r4, #12]
d008124a:	7b62      	ldrb	r2, [r4, #13]
d008124c:	7ba1      	ldrb	r1, [r4, #14]
d008124e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081252:	7be2      	ldrb	r2, [r4, #15]
d0081254:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081258:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008125c:	681b      	ldr	r3, [r3, #0]
d008125e:	68db      	ldr	r3, [r3, #12]
d0081260:	4798      	blx	r3
d0081262:	7b24      	ldrb	r4, [r4, #12]
d0081264:	7b72      	ldrb	r2, [r6, #13]
d0081266:	f44f 73a0 	mov.w	r3, #320	; 0x140
d008126a:	7bb1      	ldrb	r1, [r6, #14]
d008126c:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0081270:	7bf0      	ldrb	r0, [r6, #15]
d0081272:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0081276:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d008127a:	4619      	mov	r1, r3
d008127c:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d0081280:	4610      	mov	r0, r2
d0081282:	6824      	ldr	r4, [r4, #0]
d0081284:	9500      	str	r5, [sp, #0]
d0081286:	6964      	ldr	r4, [r4, #20]
d0081288:	47a0      	blx	r4
d008128a:	7b32      	ldrb	r2, [r6, #12]
d008128c:	7b73      	ldrb	r3, [r6, #13]
d008128e:	7bb0      	ldrb	r0, [r6, #14]
d0081290:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0081294:	7bf4      	ldrb	r4, [r6, #15]
d0081296:	7b33      	ldrb	r3, [r6, #12]
d0081298:	7b71      	ldrb	r1, [r6, #13]
d008129a:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d008129e:	7bb0      	ldrb	r0, [r6, #14]
d00812a0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00812a4:	7bf1      	ldrb	r1, [r6, #15]
d00812a6:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d00812aa:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00812ae:	6812      	ldr	r2, [r2, #0]
d00812b0:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00812b4:	69d4      	ldr	r4, [r2, #28]
d00812b6:	681b      	ldr	r3, [r3, #0]
d00812b8:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d00812ba:	4798      	blx	r3
d00812bc:	47a0      	blx	r4
d00812be:	7b32      	ldrb	r2, [r6, #12]
d00812c0:	7b73      	ldrb	r3, [r6, #13]
d00812c2:	7bb0      	ldrb	r0, [r6, #14]
d00812c4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00812c8:	7bf4      	ldrb	r4, [r6, #15]
d00812ca:	7b33      	ldrb	r3, [r6, #12]
d00812cc:	7b71      	ldrb	r1, [r6, #13]
d00812ce:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d00812d2:	7bb0      	ldrb	r0, [r6, #14]
d00812d4:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00812d8:	7bf1      	ldrb	r1, [r6, #15]
d00812da:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d00812de:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00812e2:	6812      	ldr	r2, [r2, #0]
d00812e4:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00812e8:	6a14      	ldr	r4, [r2, #32]
d00812ea:	681b      	ldr	r3, [r3, #0]
d00812ec:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d00812ee:	4798      	blx	r3
d00812f0:	47a0      	blx	r4
d00812f2:	7b32      	ldrb	r2, [r6, #12]
d00812f4:	7b73      	ldrb	r3, [r6, #13]
d00812f6:	7bb0      	ldrb	r0, [r6, #14]
d00812f8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00812fc:	7bf4      	ldrb	r4, [r6, #15]
d00812fe:	7b33      	ldrb	r3, [r6, #12]
d0081300:	7b71      	ldrb	r1, [r6, #13]
d0081302:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d0081306:	7bb0      	ldrb	r0, [r6, #14]
d0081308:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d008130c:	7bf1      	ldrb	r1, [r6, #15]
d008130e:	ea42 6204 	orr.w	r2, r2, r4, lsl #24
d0081312:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0081316:	6812      	ldr	r2, [r2, #0]
d0081318:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d008131c:	6994      	ldr	r4, [r2, #24]
d008131e:	681b      	ldr	r3, [r3, #0]
d0081320:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d0081322:	4798      	blx	r3
d0081324:	47a0      	blx	r4
d0081326:	7b33      	ldrb	r3, [r6, #12]
d0081328:	7b72      	ldrb	r2, [r6, #13]
d008132a:	7bb1      	ldrb	r1, [r6, #14]
d008132c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081330:	7bf2      	ldrb	r2, [r6, #15]
d0081332:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081336:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008133a:	681b      	ldr	r3, [r3, #0]
d008133c:	681b      	ldr	r3, [r3, #0]
d008133e:	4798      	blx	r3
d0081340:	7b33      	ldrb	r3, [r6, #12]
d0081342:	7b72      	ldrb	r2, [r6, #13]
d0081344:	7bb1      	ldrb	r1, [r6, #14]
d0081346:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008134a:	7bf2      	ldrb	r2, [r6, #15]
d008134c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081350:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081354:	681b      	ldr	r3, [r3, #0]
d0081356:	68db      	ldr	r3, [r3, #12]
d0081358:	4798      	blx	r3
d008135a:	7833      	ldrb	r3, [r6, #0]
d008135c:	7872      	ldrb	r2, [r6, #1]
d008135e:	78b1      	ldrb	r1, [r6, #2]
d0081360:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081364:	78f2      	ldrb	r2, [r6, #3]
d0081366:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008136a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008136e:	685b      	ldr	r3, [r3, #4]
d0081370:	4798      	blx	r3
d0081372:	2000      	movs	r0, #0
d0081374:	b013      	add	sp, #76	; 0x4c
d0081376:	ecbd 8b02 	vpop	{d8}
d008137a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d008137e:	4808      	ldr	r0, [pc, #32]	; (d00813a0 <main+0xf40>)
d0081380:	7803      	ldrb	r3, [r0, #0]
d0081382:	7842      	ldrb	r2, [r0, #1]
d0081384:	7881      	ldrb	r1, [r0, #2]
d0081386:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008138a:	78c2      	ldrb	r2, [r0, #3]
d008138c:	4805      	ldr	r0, [pc, #20]	; (d00813a4 <main+0xf44>)
d008138e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081392:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0081396:	68db      	ldr	r3, [r3, #12]
d0081398:	4798      	blx	r3
d008139a:	2001      	movs	r0, #1
d008139c:	e7ea      	b.n	d0081374 <main+0xf14>
d008139e:	bf00      	nop
d00813a0:	2001f000 	.word	0x2001f000
d00813a4:	d0082374 	.word	0xd0082374

d00813a8 <__errno>:
d00813a8:	4b01      	ldr	r3, [pc, #4]	; (d00813b0 <__errno+0x8>)
d00813aa:	6818      	ldr	r0, [r3, #0]
d00813ac:	4770      	bx	lr
d00813ae:	bf00      	nop
d00813b0:	d0083664 	.word	0xd0083664

d00813b4 <malloc>:
d00813b4:	4b02      	ldr	r3, [pc, #8]	; (d00813c0 <malloc+0xc>)
d00813b6:	4601      	mov	r1, r0
d00813b8:	6818      	ldr	r0, [r3, #0]
d00813ba:	f000 b85b 	b.w	d0081474 <_malloc_r>
d00813be:	bf00      	nop
d00813c0:	d0083664 	.word	0xd0083664

d00813c4 <memset>:
d00813c4:	4402      	add	r2, r0
d00813c6:	4603      	mov	r3, r0
d00813c8:	4293      	cmp	r3, r2
d00813ca:	d100      	bne.n	d00813ce <memset+0xa>
d00813cc:	4770      	bx	lr
d00813ce:	f803 1b01 	strb.w	r1, [r3], #1
d00813d2:	e7f9      	b.n	d00813c8 <memset+0x4>

d00813d4 <_free_r>:
d00813d4:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00813d6:	2900      	cmp	r1, #0
d00813d8:	d048      	beq.n	d008146c <_free_r+0x98>
d00813da:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00813de:	9001      	str	r0, [sp, #4]
d00813e0:	2b00      	cmp	r3, #0
d00813e2:	f1a1 0404 	sub.w	r4, r1, #4
d00813e6:	bfb8      	it	lt
d00813e8:	18e4      	addlt	r4, r4, r3
d00813ea:	f000 fb85 	bl	d0081af8 <__malloc_lock>
d00813ee:	4a20      	ldr	r2, [pc, #128]	; (d0081470 <_free_r+0x9c>)
d00813f0:	9801      	ldr	r0, [sp, #4]
d00813f2:	6813      	ldr	r3, [r2, #0]
d00813f4:	4615      	mov	r5, r2
d00813f6:	b933      	cbnz	r3, d0081406 <_free_r+0x32>
d00813f8:	6063      	str	r3, [r4, #4]
d00813fa:	6014      	str	r4, [r2, #0]
d00813fc:	b003      	add	sp, #12
d00813fe:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0081402:	f000 bb7f 	b.w	d0081b04 <__malloc_unlock>
d0081406:	42a3      	cmp	r3, r4
d0081408:	d90b      	bls.n	d0081422 <_free_r+0x4e>
d008140a:	6821      	ldr	r1, [r4, #0]
d008140c:	1862      	adds	r2, r4, r1
d008140e:	4293      	cmp	r3, r2
d0081410:	bf04      	itt	eq
d0081412:	681a      	ldreq	r2, [r3, #0]
d0081414:	685b      	ldreq	r3, [r3, #4]
d0081416:	6063      	str	r3, [r4, #4]
d0081418:	bf04      	itt	eq
d008141a:	1852      	addeq	r2, r2, r1
d008141c:	6022      	streq	r2, [r4, #0]
d008141e:	602c      	str	r4, [r5, #0]
d0081420:	e7ec      	b.n	d00813fc <_free_r+0x28>
d0081422:	461a      	mov	r2, r3
d0081424:	685b      	ldr	r3, [r3, #4]
d0081426:	b10b      	cbz	r3, d008142c <_free_r+0x58>
d0081428:	42a3      	cmp	r3, r4
d008142a:	d9fa      	bls.n	d0081422 <_free_r+0x4e>
d008142c:	6811      	ldr	r1, [r2, #0]
d008142e:	1855      	adds	r5, r2, r1
d0081430:	42a5      	cmp	r5, r4
d0081432:	d10b      	bne.n	d008144c <_free_r+0x78>
d0081434:	6824      	ldr	r4, [r4, #0]
d0081436:	4421      	add	r1, r4
d0081438:	1854      	adds	r4, r2, r1
d008143a:	42a3      	cmp	r3, r4
d008143c:	6011      	str	r1, [r2, #0]
d008143e:	d1dd      	bne.n	d00813fc <_free_r+0x28>
d0081440:	681c      	ldr	r4, [r3, #0]
d0081442:	685b      	ldr	r3, [r3, #4]
d0081444:	6053      	str	r3, [r2, #4]
d0081446:	4421      	add	r1, r4
d0081448:	6011      	str	r1, [r2, #0]
d008144a:	e7d7      	b.n	d00813fc <_free_r+0x28>
d008144c:	d902      	bls.n	d0081454 <_free_r+0x80>
d008144e:	230c      	movs	r3, #12
d0081450:	6003      	str	r3, [r0, #0]
d0081452:	e7d3      	b.n	d00813fc <_free_r+0x28>
d0081454:	6825      	ldr	r5, [r4, #0]
d0081456:	1961      	adds	r1, r4, r5
d0081458:	428b      	cmp	r3, r1
d008145a:	bf04      	itt	eq
d008145c:	6819      	ldreq	r1, [r3, #0]
d008145e:	685b      	ldreq	r3, [r3, #4]
d0081460:	6063      	str	r3, [r4, #4]
d0081462:	bf04      	itt	eq
d0081464:	1949      	addeq	r1, r1, r5
d0081466:	6021      	streq	r1, [r4, #0]
d0081468:	6054      	str	r4, [r2, #4]
d008146a:	e7c7      	b.n	d00813fc <_free_r+0x28>
d008146c:	b003      	add	sp, #12
d008146e:	bd30      	pop	{r4, r5, pc}
d0081470:	d0096518 	.word	0xd0096518

d0081474 <_malloc_r>:
d0081474:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081476:	1ccd      	adds	r5, r1, #3
d0081478:	f025 0503 	bic.w	r5, r5, #3
d008147c:	3508      	adds	r5, #8
d008147e:	2d0c      	cmp	r5, #12
d0081480:	bf38      	it	cc
d0081482:	250c      	movcc	r5, #12
d0081484:	2d00      	cmp	r5, #0
d0081486:	4606      	mov	r6, r0
d0081488:	db01      	blt.n	d008148e <_malloc_r+0x1a>
d008148a:	42a9      	cmp	r1, r5
d008148c:	d903      	bls.n	d0081496 <_malloc_r+0x22>
d008148e:	230c      	movs	r3, #12
d0081490:	6033      	str	r3, [r6, #0]
d0081492:	2000      	movs	r0, #0
d0081494:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081496:	f000 fb2f 	bl	d0081af8 <__malloc_lock>
d008149a:	4921      	ldr	r1, [pc, #132]	; (d0081520 <_malloc_r+0xac>)
d008149c:	680a      	ldr	r2, [r1, #0]
d008149e:	4614      	mov	r4, r2
d00814a0:	b99c      	cbnz	r4, d00814ca <_malloc_r+0x56>
d00814a2:	4f20      	ldr	r7, [pc, #128]	; (d0081524 <_malloc_r+0xb0>)
d00814a4:	683b      	ldr	r3, [r7, #0]
d00814a6:	b923      	cbnz	r3, d00814b2 <_malloc_r+0x3e>
d00814a8:	4621      	mov	r1, r4
d00814aa:	4630      	mov	r0, r6
d00814ac:	f7fe fe26 	bl	d00800fc <_sbrk_r>
d00814b0:	6038      	str	r0, [r7, #0]
d00814b2:	4629      	mov	r1, r5
d00814b4:	4630      	mov	r0, r6
d00814b6:	f7fe fe21 	bl	d00800fc <_sbrk_r>
d00814ba:	1c43      	adds	r3, r0, #1
d00814bc:	d123      	bne.n	d0081506 <_malloc_r+0x92>
d00814be:	230c      	movs	r3, #12
d00814c0:	6033      	str	r3, [r6, #0]
d00814c2:	4630      	mov	r0, r6
d00814c4:	f000 fb1e 	bl	d0081b04 <__malloc_unlock>
d00814c8:	e7e3      	b.n	d0081492 <_malloc_r+0x1e>
d00814ca:	6823      	ldr	r3, [r4, #0]
d00814cc:	1b5b      	subs	r3, r3, r5
d00814ce:	d417      	bmi.n	d0081500 <_malloc_r+0x8c>
d00814d0:	2b0b      	cmp	r3, #11
d00814d2:	d903      	bls.n	d00814dc <_malloc_r+0x68>
d00814d4:	6023      	str	r3, [r4, #0]
d00814d6:	441c      	add	r4, r3
d00814d8:	6025      	str	r5, [r4, #0]
d00814da:	e004      	b.n	d00814e6 <_malloc_r+0x72>
d00814dc:	6863      	ldr	r3, [r4, #4]
d00814de:	42a2      	cmp	r2, r4
d00814e0:	bf0c      	ite	eq
d00814e2:	600b      	streq	r3, [r1, #0]
d00814e4:	6053      	strne	r3, [r2, #4]
d00814e6:	4630      	mov	r0, r6
d00814e8:	f000 fb0c 	bl	d0081b04 <__malloc_unlock>
d00814ec:	f104 000b 	add.w	r0, r4, #11
d00814f0:	1d23      	adds	r3, r4, #4
d00814f2:	f020 0007 	bic.w	r0, r0, #7
d00814f6:	1ac2      	subs	r2, r0, r3
d00814f8:	d0cc      	beq.n	d0081494 <_malloc_r+0x20>
d00814fa:	1a1b      	subs	r3, r3, r0
d00814fc:	50a3      	str	r3, [r4, r2]
d00814fe:	e7c9      	b.n	d0081494 <_malloc_r+0x20>
d0081500:	4622      	mov	r2, r4
d0081502:	6864      	ldr	r4, [r4, #4]
d0081504:	e7cc      	b.n	d00814a0 <_malloc_r+0x2c>
d0081506:	1cc4      	adds	r4, r0, #3
d0081508:	f024 0403 	bic.w	r4, r4, #3
d008150c:	42a0      	cmp	r0, r4
d008150e:	d0e3      	beq.n	d00814d8 <_malloc_r+0x64>
d0081510:	1a21      	subs	r1, r4, r0
d0081512:	4630      	mov	r0, r6
d0081514:	f7fe fdf2 	bl	d00800fc <_sbrk_r>
d0081518:	3001      	adds	r0, #1
d008151a:	d1dd      	bne.n	d00814d8 <_malloc_r+0x64>
d008151c:	e7cf      	b.n	d00814be <_malloc_r+0x4a>
d008151e:	bf00      	nop
d0081520:	d0096518 	.word	0xd0096518
d0081524:	d009651c 	.word	0xd009651c

d0081528 <setbuf>:
d0081528:	2900      	cmp	r1, #0
d008152a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d008152e:	bf0c      	ite	eq
d0081530:	2202      	moveq	r2, #2
d0081532:	2200      	movne	r2, #0
d0081534:	f000 b800 	b.w	d0081538 <setvbuf>

d0081538 <setvbuf>:
d0081538:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d008153c:	461d      	mov	r5, r3
d008153e:	4b5d      	ldr	r3, [pc, #372]	; (d00816b4 <setvbuf+0x17c>)
d0081540:	681f      	ldr	r7, [r3, #0]
d0081542:	4604      	mov	r4, r0
d0081544:	460e      	mov	r6, r1
d0081546:	4690      	mov	r8, r2
d0081548:	b127      	cbz	r7, d0081554 <setvbuf+0x1c>
d008154a:	69bb      	ldr	r3, [r7, #24]
d008154c:	b913      	cbnz	r3, d0081554 <setvbuf+0x1c>
d008154e:	4638      	mov	r0, r7
d0081550:	f000 fa0e 	bl	d0081970 <__sinit>
d0081554:	4b58      	ldr	r3, [pc, #352]	; (d00816b8 <setvbuf+0x180>)
d0081556:	429c      	cmp	r4, r3
d0081558:	d167      	bne.n	d008162a <setvbuf+0xf2>
d008155a:	687c      	ldr	r4, [r7, #4]
d008155c:	f1b8 0f02 	cmp.w	r8, #2
d0081560:	d006      	beq.n	d0081570 <setvbuf+0x38>
d0081562:	f1b8 0f01 	cmp.w	r8, #1
d0081566:	f200 809f 	bhi.w	d00816a8 <setvbuf+0x170>
d008156a:	2d00      	cmp	r5, #0
d008156c:	f2c0 809c 	blt.w	d00816a8 <setvbuf+0x170>
d0081570:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081572:	07db      	lsls	r3, r3, #31
d0081574:	d405      	bmi.n	d0081582 <setvbuf+0x4a>
d0081576:	89a3      	ldrh	r3, [r4, #12]
d0081578:	0598      	lsls	r0, r3, #22
d008157a:	d402      	bmi.n	d0081582 <setvbuf+0x4a>
d008157c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008157e:	f000 fa95 	bl	d0081aac <__retarget_lock_acquire_recursive>
d0081582:	4621      	mov	r1, r4
d0081584:	4638      	mov	r0, r7
d0081586:	f000 f95f 	bl	d0081848 <_fflush_r>
d008158a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008158c:	b141      	cbz	r1, d00815a0 <setvbuf+0x68>
d008158e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081592:	4299      	cmp	r1, r3
d0081594:	d002      	beq.n	d008159c <setvbuf+0x64>
d0081596:	4638      	mov	r0, r7
d0081598:	f7ff ff1c 	bl	d00813d4 <_free_r>
d008159c:	2300      	movs	r3, #0
d008159e:	6363      	str	r3, [r4, #52]	; 0x34
d00815a0:	2300      	movs	r3, #0
d00815a2:	61a3      	str	r3, [r4, #24]
d00815a4:	6063      	str	r3, [r4, #4]
d00815a6:	89a3      	ldrh	r3, [r4, #12]
d00815a8:	0619      	lsls	r1, r3, #24
d00815aa:	d503      	bpl.n	d00815b4 <setvbuf+0x7c>
d00815ac:	6921      	ldr	r1, [r4, #16]
d00815ae:	4638      	mov	r0, r7
d00815b0:	f7ff ff10 	bl	d00813d4 <_free_r>
d00815b4:	89a3      	ldrh	r3, [r4, #12]
d00815b6:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00815ba:	f023 0303 	bic.w	r3, r3, #3
d00815be:	f1b8 0f02 	cmp.w	r8, #2
d00815c2:	81a3      	strh	r3, [r4, #12]
d00815c4:	d06c      	beq.n	d00816a0 <setvbuf+0x168>
d00815c6:	ab01      	add	r3, sp, #4
d00815c8:	466a      	mov	r2, sp
d00815ca:	4621      	mov	r1, r4
d00815cc:	4638      	mov	r0, r7
d00815ce:	f000 fa6f 	bl	d0081ab0 <__swhatbuf_r>
d00815d2:	89a3      	ldrh	r3, [r4, #12]
d00815d4:	4318      	orrs	r0, r3
d00815d6:	81a0      	strh	r0, [r4, #12]
d00815d8:	2d00      	cmp	r5, #0
d00815da:	d130      	bne.n	d008163e <setvbuf+0x106>
d00815dc:	9d00      	ldr	r5, [sp, #0]
d00815de:	4628      	mov	r0, r5
d00815e0:	f7ff fee8 	bl	d00813b4 <malloc>
d00815e4:	4606      	mov	r6, r0
d00815e6:	2800      	cmp	r0, #0
d00815e8:	d155      	bne.n	d0081696 <setvbuf+0x15e>
d00815ea:	f8dd 9000 	ldr.w	r9, [sp]
d00815ee:	45a9      	cmp	r9, r5
d00815f0:	d14a      	bne.n	d0081688 <setvbuf+0x150>
d00815f2:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00815f6:	2200      	movs	r2, #0
d00815f8:	60a2      	str	r2, [r4, #8]
d00815fa:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00815fe:	6022      	str	r2, [r4, #0]
d0081600:	6122      	str	r2, [r4, #16]
d0081602:	2201      	movs	r2, #1
d0081604:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0081608:	6162      	str	r2, [r4, #20]
d008160a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d008160c:	f043 0302 	orr.w	r3, r3, #2
d0081610:	07d2      	lsls	r2, r2, #31
d0081612:	81a3      	strh	r3, [r4, #12]
d0081614:	d405      	bmi.n	d0081622 <setvbuf+0xea>
d0081616:	f413 7f00 	tst.w	r3, #512	; 0x200
d008161a:	d102      	bne.n	d0081622 <setvbuf+0xea>
d008161c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008161e:	f000 fa46 	bl	d0081aae <__retarget_lock_release_recursive>
d0081622:	4628      	mov	r0, r5
d0081624:	b003      	add	sp, #12
d0081626:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d008162a:	4b24      	ldr	r3, [pc, #144]	; (d00816bc <setvbuf+0x184>)
d008162c:	429c      	cmp	r4, r3
d008162e:	d101      	bne.n	d0081634 <setvbuf+0xfc>
d0081630:	68bc      	ldr	r4, [r7, #8]
d0081632:	e793      	b.n	d008155c <setvbuf+0x24>
d0081634:	4b22      	ldr	r3, [pc, #136]	; (d00816c0 <setvbuf+0x188>)
d0081636:	429c      	cmp	r4, r3
d0081638:	bf08      	it	eq
d008163a:	68fc      	ldreq	r4, [r7, #12]
d008163c:	e78e      	b.n	d008155c <setvbuf+0x24>
d008163e:	2e00      	cmp	r6, #0
d0081640:	d0cd      	beq.n	d00815de <setvbuf+0xa6>
d0081642:	69bb      	ldr	r3, [r7, #24]
d0081644:	b913      	cbnz	r3, d008164c <setvbuf+0x114>
d0081646:	4638      	mov	r0, r7
d0081648:	f000 f992 	bl	d0081970 <__sinit>
d008164c:	f1b8 0f01 	cmp.w	r8, #1
d0081650:	bf08      	it	eq
d0081652:	89a3      	ldrheq	r3, [r4, #12]
d0081654:	6026      	str	r6, [r4, #0]
d0081656:	bf04      	itt	eq
d0081658:	f043 0301 	orreq.w	r3, r3, #1
d008165c:	81a3      	strheq	r3, [r4, #12]
d008165e:	89a2      	ldrh	r2, [r4, #12]
d0081660:	f012 0308 	ands.w	r3, r2, #8
d0081664:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0081668:	d01c      	beq.n	d00816a4 <setvbuf+0x16c>
d008166a:	07d3      	lsls	r3, r2, #31
d008166c:	bf41      	itttt	mi
d008166e:	2300      	movmi	r3, #0
d0081670:	426d      	negmi	r5, r5
d0081672:	60a3      	strmi	r3, [r4, #8]
d0081674:	61a5      	strmi	r5, [r4, #24]
d0081676:	bf58      	it	pl
d0081678:	60a5      	strpl	r5, [r4, #8]
d008167a:	6e65      	ldr	r5, [r4, #100]	; 0x64
d008167c:	f015 0501 	ands.w	r5, r5, #1
d0081680:	d115      	bne.n	d00816ae <setvbuf+0x176>
d0081682:	f412 7f00 	tst.w	r2, #512	; 0x200
d0081686:	e7c8      	b.n	d008161a <setvbuf+0xe2>
d0081688:	4648      	mov	r0, r9
d008168a:	f7ff fe93 	bl	d00813b4 <malloc>
d008168e:	4606      	mov	r6, r0
d0081690:	2800      	cmp	r0, #0
d0081692:	d0ae      	beq.n	d00815f2 <setvbuf+0xba>
d0081694:	464d      	mov	r5, r9
d0081696:	89a3      	ldrh	r3, [r4, #12]
d0081698:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d008169c:	81a3      	strh	r3, [r4, #12]
d008169e:	e7d0      	b.n	d0081642 <setvbuf+0x10a>
d00816a0:	2500      	movs	r5, #0
d00816a2:	e7a8      	b.n	d00815f6 <setvbuf+0xbe>
d00816a4:	60a3      	str	r3, [r4, #8]
d00816a6:	e7e8      	b.n	d008167a <setvbuf+0x142>
d00816a8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00816ac:	e7b9      	b.n	d0081622 <setvbuf+0xea>
d00816ae:	2500      	movs	r5, #0
d00816b0:	e7b7      	b.n	d0081622 <setvbuf+0xea>
d00816b2:	bf00      	nop
d00816b4:	d0083664 	.word	0xd0083664
d00816b8:	d00835e4 	.word	0xd00835e4
d00816bc:	d0083604 	.word	0xd0083604
d00816c0:	d00835c4 	.word	0xd00835c4

d00816c4 <sniprintf>:
d00816c4:	b40c      	push	{r2, r3}
d00816c6:	b530      	push	{r4, r5, lr}
d00816c8:	4b17      	ldr	r3, [pc, #92]	; (d0081728 <sniprintf+0x64>)
d00816ca:	1e0c      	subs	r4, r1, #0
d00816cc:	681d      	ldr	r5, [r3, #0]
d00816ce:	b09d      	sub	sp, #116	; 0x74
d00816d0:	da08      	bge.n	d00816e4 <sniprintf+0x20>
d00816d2:	238b      	movs	r3, #139	; 0x8b
d00816d4:	602b      	str	r3, [r5, #0]
d00816d6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00816da:	b01d      	add	sp, #116	; 0x74
d00816dc:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00816e0:	b002      	add	sp, #8
d00816e2:	4770      	bx	lr
d00816e4:	f44f 7302 	mov.w	r3, #520	; 0x208
d00816e8:	f8ad 3014 	strh.w	r3, [sp, #20]
d00816ec:	bf14      	ite	ne
d00816ee:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d00816f2:	4623      	moveq	r3, r4
d00816f4:	9304      	str	r3, [sp, #16]
d00816f6:	9307      	str	r3, [sp, #28]
d00816f8:	f64f 73ff 	movw	r3, #65535	; 0xffff
d00816fc:	9002      	str	r0, [sp, #8]
d00816fe:	9006      	str	r0, [sp, #24]
d0081700:	f8ad 3016 	strh.w	r3, [sp, #22]
d0081704:	9a20      	ldr	r2, [sp, #128]	; 0x80
d0081706:	ab21      	add	r3, sp, #132	; 0x84
d0081708:	a902      	add	r1, sp, #8
d008170a:	4628      	mov	r0, r5
d008170c:	9301      	str	r3, [sp, #4]
d008170e:	f000 fa5b 	bl	d0081bc8 <_svfiprintf_r>
d0081712:	1c43      	adds	r3, r0, #1
d0081714:	bfbc      	itt	lt
d0081716:	238b      	movlt	r3, #139	; 0x8b
d0081718:	602b      	strlt	r3, [r5, #0]
d008171a:	2c00      	cmp	r4, #0
d008171c:	d0dd      	beq.n	d00816da <sniprintf+0x16>
d008171e:	9b02      	ldr	r3, [sp, #8]
d0081720:	2200      	movs	r2, #0
d0081722:	701a      	strb	r2, [r3, #0]
d0081724:	e7d9      	b.n	d00816da <sniprintf+0x16>
d0081726:	bf00      	nop
d0081728:	d0083664 	.word	0xd0083664

d008172c <strlen>:
d008172c:	4603      	mov	r3, r0
d008172e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081732:	2a00      	cmp	r2, #0
d0081734:	d1fb      	bne.n	d008172e <strlen+0x2>
d0081736:	1a18      	subs	r0, r3, r0
d0081738:	3801      	subs	r0, #1
d008173a:	4770      	bx	lr

d008173c <__sflush_r>:
d008173c:	898a      	ldrh	r2, [r1, #12]
d008173e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081742:	4605      	mov	r5, r0
d0081744:	0710      	lsls	r0, r2, #28
d0081746:	460c      	mov	r4, r1
d0081748:	d458      	bmi.n	d00817fc <__sflush_r+0xc0>
d008174a:	684b      	ldr	r3, [r1, #4]
d008174c:	2b00      	cmp	r3, #0
d008174e:	dc05      	bgt.n	d008175c <__sflush_r+0x20>
d0081750:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0081752:	2b00      	cmp	r3, #0
d0081754:	dc02      	bgt.n	d008175c <__sflush_r+0x20>
d0081756:	2000      	movs	r0, #0
d0081758:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d008175c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d008175e:	2e00      	cmp	r6, #0
d0081760:	d0f9      	beq.n	d0081756 <__sflush_r+0x1a>
d0081762:	2300      	movs	r3, #0
d0081764:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0081768:	682f      	ldr	r7, [r5, #0]
d008176a:	602b      	str	r3, [r5, #0]
d008176c:	d032      	beq.n	d00817d4 <__sflush_r+0x98>
d008176e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0081770:	89a3      	ldrh	r3, [r4, #12]
d0081772:	075a      	lsls	r2, r3, #29
d0081774:	d505      	bpl.n	d0081782 <__sflush_r+0x46>
d0081776:	6863      	ldr	r3, [r4, #4]
d0081778:	1ac0      	subs	r0, r0, r3
d008177a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d008177c:	b10b      	cbz	r3, d0081782 <__sflush_r+0x46>
d008177e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0081780:	1ac0      	subs	r0, r0, r3
d0081782:	2300      	movs	r3, #0
d0081784:	4602      	mov	r2, r0
d0081786:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081788:	6a21      	ldr	r1, [r4, #32]
d008178a:	4628      	mov	r0, r5
d008178c:	47b0      	blx	r6
d008178e:	1c43      	adds	r3, r0, #1
d0081790:	89a3      	ldrh	r3, [r4, #12]
d0081792:	d106      	bne.n	d00817a2 <__sflush_r+0x66>
d0081794:	6829      	ldr	r1, [r5, #0]
d0081796:	291d      	cmp	r1, #29
d0081798:	d82c      	bhi.n	d00817f4 <__sflush_r+0xb8>
d008179a:	4a2a      	ldr	r2, [pc, #168]	; (d0081844 <__sflush_r+0x108>)
d008179c:	40ca      	lsrs	r2, r1
d008179e:	07d6      	lsls	r6, r2, #31
d00817a0:	d528      	bpl.n	d00817f4 <__sflush_r+0xb8>
d00817a2:	2200      	movs	r2, #0
d00817a4:	6062      	str	r2, [r4, #4]
d00817a6:	04d9      	lsls	r1, r3, #19
d00817a8:	6922      	ldr	r2, [r4, #16]
d00817aa:	6022      	str	r2, [r4, #0]
d00817ac:	d504      	bpl.n	d00817b8 <__sflush_r+0x7c>
d00817ae:	1c42      	adds	r2, r0, #1
d00817b0:	d101      	bne.n	d00817b6 <__sflush_r+0x7a>
d00817b2:	682b      	ldr	r3, [r5, #0]
d00817b4:	b903      	cbnz	r3, d00817b8 <__sflush_r+0x7c>
d00817b6:	6560      	str	r0, [r4, #84]	; 0x54
d00817b8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00817ba:	602f      	str	r7, [r5, #0]
d00817bc:	2900      	cmp	r1, #0
d00817be:	d0ca      	beq.n	d0081756 <__sflush_r+0x1a>
d00817c0:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00817c4:	4299      	cmp	r1, r3
d00817c6:	d002      	beq.n	d00817ce <__sflush_r+0x92>
d00817c8:	4628      	mov	r0, r5
d00817ca:	f7ff fe03 	bl	d00813d4 <_free_r>
d00817ce:	2000      	movs	r0, #0
d00817d0:	6360      	str	r0, [r4, #52]	; 0x34
d00817d2:	e7c1      	b.n	d0081758 <__sflush_r+0x1c>
d00817d4:	6a21      	ldr	r1, [r4, #32]
d00817d6:	2301      	movs	r3, #1
d00817d8:	4628      	mov	r0, r5
d00817da:	47b0      	blx	r6
d00817dc:	1c41      	adds	r1, r0, #1
d00817de:	d1c7      	bne.n	d0081770 <__sflush_r+0x34>
d00817e0:	682b      	ldr	r3, [r5, #0]
d00817e2:	2b00      	cmp	r3, #0
d00817e4:	d0c4      	beq.n	d0081770 <__sflush_r+0x34>
d00817e6:	2b1d      	cmp	r3, #29
d00817e8:	d001      	beq.n	d00817ee <__sflush_r+0xb2>
d00817ea:	2b16      	cmp	r3, #22
d00817ec:	d101      	bne.n	d00817f2 <__sflush_r+0xb6>
d00817ee:	602f      	str	r7, [r5, #0]
d00817f0:	e7b1      	b.n	d0081756 <__sflush_r+0x1a>
d00817f2:	89a3      	ldrh	r3, [r4, #12]
d00817f4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00817f8:	81a3      	strh	r3, [r4, #12]
d00817fa:	e7ad      	b.n	d0081758 <__sflush_r+0x1c>
d00817fc:	690f      	ldr	r7, [r1, #16]
d00817fe:	2f00      	cmp	r7, #0
d0081800:	d0a9      	beq.n	d0081756 <__sflush_r+0x1a>
d0081802:	0793      	lsls	r3, r2, #30
d0081804:	680e      	ldr	r6, [r1, #0]
d0081806:	bf08      	it	eq
d0081808:	694b      	ldreq	r3, [r1, #20]
d008180a:	600f      	str	r7, [r1, #0]
d008180c:	bf18      	it	ne
d008180e:	2300      	movne	r3, #0
d0081810:	eba6 0807 	sub.w	r8, r6, r7
d0081814:	608b      	str	r3, [r1, #8]
d0081816:	f1b8 0f00 	cmp.w	r8, #0
d008181a:	dd9c      	ble.n	d0081756 <__sflush_r+0x1a>
d008181c:	6a21      	ldr	r1, [r4, #32]
d008181e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0081820:	4643      	mov	r3, r8
d0081822:	463a      	mov	r2, r7
d0081824:	4628      	mov	r0, r5
d0081826:	47b0      	blx	r6
d0081828:	2800      	cmp	r0, #0
d008182a:	dc06      	bgt.n	d008183a <__sflush_r+0xfe>
d008182c:	89a3      	ldrh	r3, [r4, #12]
d008182e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081832:	81a3      	strh	r3, [r4, #12]
d0081834:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081838:	e78e      	b.n	d0081758 <__sflush_r+0x1c>
d008183a:	4407      	add	r7, r0
d008183c:	eba8 0800 	sub.w	r8, r8, r0
d0081840:	e7e9      	b.n	d0081816 <__sflush_r+0xda>
d0081842:	bf00      	nop
d0081844:	20400001 	.word	0x20400001

d0081848 <_fflush_r>:
d0081848:	b538      	push	{r3, r4, r5, lr}
d008184a:	690b      	ldr	r3, [r1, #16]
d008184c:	4605      	mov	r5, r0
d008184e:	460c      	mov	r4, r1
d0081850:	b913      	cbnz	r3, d0081858 <_fflush_r+0x10>
d0081852:	2500      	movs	r5, #0
d0081854:	4628      	mov	r0, r5
d0081856:	bd38      	pop	{r3, r4, r5, pc}
d0081858:	b118      	cbz	r0, d0081862 <_fflush_r+0x1a>
d008185a:	6983      	ldr	r3, [r0, #24]
d008185c:	b90b      	cbnz	r3, d0081862 <_fflush_r+0x1a>
d008185e:	f000 f887 	bl	d0081970 <__sinit>
d0081862:	4b14      	ldr	r3, [pc, #80]	; (d00818b4 <_fflush_r+0x6c>)
d0081864:	429c      	cmp	r4, r3
d0081866:	d11b      	bne.n	d00818a0 <_fflush_r+0x58>
d0081868:	686c      	ldr	r4, [r5, #4]
d008186a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008186e:	2b00      	cmp	r3, #0
d0081870:	d0ef      	beq.n	d0081852 <_fflush_r+0xa>
d0081872:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081874:	07d0      	lsls	r0, r2, #31
d0081876:	d404      	bmi.n	d0081882 <_fflush_r+0x3a>
d0081878:	0599      	lsls	r1, r3, #22
d008187a:	d402      	bmi.n	d0081882 <_fflush_r+0x3a>
d008187c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008187e:	f000 f915 	bl	d0081aac <__retarget_lock_acquire_recursive>
d0081882:	4628      	mov	r0, r5
d0081884:	4621      	mov	r1, r4
d0081886:	f7ff ff59 	bl	d008173c <__sflush_r>
d008188a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008188c:	07da      	lsls	r2, r3, #31
d008188e:	4605      	mov	r5, r0
d0081890:	d4e0      	bmi.n	d0081854 <_fflush_r+0xc>
d0081892:	89a3      	ldrh	r3, [r4, #12]
d0081894:	059b      	lsls	r3, r3, #22
d0081896:	d4dd      	bmi.n	d0081854 <_fflush_r+0xc>
d0081898:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008189a:	f000 f908 	bl	d0081aae <__retarget_lock_release_recursive>
d008189e:	e7d9      	b.n	d0081854 <_fflush_r+0xc>
d00818a0:	4b05      	ldr	r3, [pc, #20]	; (d00818b8 <_fflush_r+0x70>)
d00818a2:	429c      	cmp	r4, r3
d00818a4:	d101      	bne.n	d00818aa <_fflush_r+0x62>
d00818a6:	68ac      	ldr	r4, [r5, #8]
d00818a8:	e7df      	b.n	d008186a <_fflush_r+0x22>
d00818aa:	4b04      	ldr	r3, [pc, #16]	; (d00818bc <_fflush_r+0x74>)
d00818ac:	429c      	cmp	r4, r3
d00818ae:	bf08      	it	eq
d00818b0:	68ec      	ldreq	r4, [r5, #12]
d00818b2:	e7da      	b.n	d008186a <_fflush_r+0x22>
d00818b4:	d00835e4 	.word	0xd00835e4
d00818b8:	d0083604 	.word	0xd0083604
d00818bc:	d00835c4 	.word	0xd00835c4

d00818c0 <std>:
d00818c0:	2300      	movs	r3, #0
d00818c2:	b510      	push	{r4, lr}
d00818c4:	4604      	mov	r4, r0
d00818c6:	e9c0 3300 	strd	r3, r3, [r0]
d00818ca:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00818ce:	6083      	str	r3, [r0, #8]
d00818d0:	8181      	strh	r1, [r0, #12]
d00818d2:	6643      	str	r3, [r0, #100]	; 0x64
d00818d4:	81c2      	strh	r2, [r0, #14]
d00818d6:	6183      	str	r3, [r0, #24]
d00818d8:	4619      	mov	r1, r3
d00818da:	2208      	movs	r2, #8
d00818dc:	305c      	adds	r0, #92	; 0x5c
d00818de:	f7ff fd71 	bl	d00813c4 <memset>
d00818e2:	4b05      	ldr	r3, [pc, #20]	; (d00818f8 <std+0x38>)
d00818e4:	6263      	str	r3, [r4, #36]	; 0x24
d00818e6:	4b05      	ldr	r3, [pc, #20]	; (d00818fc <std+0x3c>)
d00818e8:	62a3      	str	r3, [r4, #40]	; 0x28
d00818ea:	4b05      	ldr	r3, [pc, #20]	; (d0081900 <std+0x40>)
d00818ec:	62e3      	str	r3, [r4, #44]	; 0x2c
d00818ee:	4b05      	ldr	r3, [pc, #20]	; (d0081904 <std+0x44>)
d00818f0:	6224      	str	r4, [r4, #32]
d00818f2:	6323      	str	r3, [r4, #48]	; 0x30
d00818f4:	bd10      	pop	{r4, pc}
d00818f6:	bf00      	nop
d00818f8:	d00820f1 	.word	0xd00820f1
d00818fc:	d0082113 	.word	0xd0082113
d0081900:	d008214b 	.word	0xd008214b
d0081904:	d008216f 	.word	0xd008216f

d0081908 <_cleanup_r>:
d0081908:	4901      	ldr	r1, [pc, #4]	; (d0081910 <_cleanup_r+0x8>)
d008190a:	f000 b8af 	b.w	d0081a6c <_fwalk_reent>
d008190e:	bf00      	nop
d0081910:	d0081849 	.word	0xd0081849

d0081914 <__sfmoreglue>:
d0081914:	b570      	push	{r4, r5, r6, lr}
d0081916:	1e4a      	subs	r2, r1, #1
d0081918:	2568      	movs	r5, #104	; 0x68
d008191a:	4355      	muls	r5, r2
d008191c:	460e      	mov	r6, r1
d008191e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0081922:	f7ff fda7 	bl	d0081474 <_malloc_r>
d0081926:	4604      	mov	r4, r0
d0081928:	b140      	cbz	r0, d008193c <__sfmoreglue+0x28>
d008192a:	2100      	movs	r1, #0
d008192c:	e9c0 1600 	strd	r1, r6, [r0]
d0081930:	300c      	adds	r0, #12
d0081932:	60a0      	str	r0, [r4, #8]
d0081934:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0081938:	f7ff fd44 	bl	d00813c4 <memset>
d008193c:	4620      	mov	r0, r4
d008193e:	bd70      	pop	{r4, r5, r6, pc}

d0081940 <__sfp_lock_acquire>:
d0081940:	4801      	ldr	r0, [pc, #4]	; (d0081948 <__sfp_lock_acquire+0x8>)
d0081942:	f000 b8b3 	b.w	d0081aac <__retarget_lock_acquire_recursive>
d0081946:	bf00      	nop
d0081948:	d0096554 	.word	0xd0096554

d008194c <__sfp_lock_release>:
d008194c:	4801      	ldr	r0, [pc, #4]	; (d0081954 <__sfp_lock_release+0x8>)
d008194e:	f000 b8ae 	b.w	d0081aae <__retarget_lock_release_recursive>
d0081952:	bf00      	nop
d0081954:	d0096554 	.word	0xd0096554

d0081958 <__sinit_lock_acquire>:
d0081958:	4801      	ldr	r0, [pc, #4]	; (d0081960 <__sinit_lock_acquire+0x8>)
d008195a:	f000 b8a7 	b.w	d0081aac <__retarget_lock_acquire_recursive>
d008195e:	bf00      	nop
d0081960:	d009654f 	.word	0xd009654f

d0081964 <__sinit_lock_release>:
d0081964:	4801      	ldr	r0, [pc, #4]	; (d008196c <__sinit_lock_release+0x8>)
d0081966:	f000 b8a2 	b.w	d0081aae <__retarget_lock_release_recursive>
d008196a:	bf00      	nop
d008196c:	d009654f 	.word	0xd009654f

d0081970 <__sinit>:
d0081970:	b510      	push	{r4, lr}
d0081972:	4604      	mov	r4, r0
d0081974:	f7ff fff0 	bl	d0081958 <__sinit_lock_acquire>
d0081978:	69a3      	ldr	r3, [r4, #24]
d008197a:	b11b      	cbz	r3, d0081984 <__sinit+0x14>
d008197c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0081980:	f7ff bff0 	b.w	d0081964 <__sinit_lock_release>
d0081984:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081988:	6523      	str	r3, [r4, #80]	; 0x50
d008198a:	4b13      	ldr	r3, [pc, #76]	; (d00819d8 <__sinit+0x68>)
d008198c:	4a13      	ldr	r2, [pc, #76]	; (d00819dc <__sinit+0x6c>)
d008198e:	681b      	ldr	r3, [r3, #0]
d0081990:	62a2      	str	r2, [r4, #40]	; 0x28
d0081992:	42a3      	cmp	r3, r4
d0081994:	bf04      	itt	eq
d0081996:	2301      	moveq	r3, #1
d0081998:	61a3      	streq	r3, [r4, #24]
d008199a:	4620      	mov	r0, r4
d008199c:	f000 f820 	bl	d00819e0 <__sfp>
d00819a0:	6060      	str	r0, [r4, #4]
d00819a2:	4620      	mov	r0, r4
d00819a4:	f000 f81c 	bl	d00819e0 <__sfp>
d00819a8:	60a0      	str	r0, [r4, #8]
d00819aa:	4620      	mov	r0, r4
d00819ac:	f000 f818 	bl	d00819e0 <__sfp>
d00819b0:	2200      	movs	r2, #0
d00819b2:	60e0      	str	r0, [r4, #12]
d00819b4:	2104      	movs	r1, #4
d00819b6:	6860      	ldr	r0, [r4, #4]
d00819b8:	f7ff ff82 	bl	d00818c0 <std>
d00819bc:	68a0      	ldr	r0, [r4, #8]
d00819be:	2201      	movs	r2, #1
d00819c0:	2109      	movs	r1, #9
d00819c2:	f7ff ff7d 	bl	d00818c0 <std>
d00819c6:	68e0      	ldr	r0, [r4, #12]
d00819c8:	2202      	movs	r2, #2
d00819ca:	2112      	movs	r1, #18
d00819cc:	f7ff ff78 	bl	d00818c0 <std>
d00819d0:	2301      	movs	r3, #1
d00819d2:	61a3      	str	r3, [r4, #24]
d00819d4:	e7d2      	b.n	d008197c <__sinit+0xc>
d00819d6:	bf00      	nop
d00819d8:	d00835c0 	.word	0xd00835c0
d00819dc:	d0081909 	.word	0xd0081909

d00819e0 <__sfp>:
d00819e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00819e2:	4607      	mov	r7, r0
d00819e4:	f7ff ffac 	bl	d0081940 <__sfp_lock_acquire>
d00819e8:	4b1e      	ldr	r3, [pc, #120]	; (d0081a64 <__sfp+0x84>)
d00819ea:	681e      	ldr	r6, [r3, #0]
d00819ec:	69b3      	ldr	r3, [r6, #24]
d00819ee:	b913      	cbnz	r3, d00819f6 <__sfp+0x16>
d00819f0:	4630      	mov	r0, r6
d00819f2:	f7ff ffbd 	bl	d0081970 <__sinit>
d00819f6:	3648      	adds	r6, #72	; 0x48
d00819f8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00819fc:	3b01      	subs	r3, #1
d00819fe:	d503      	bpl.n	d0081a08 <__sfp+0x28>
d0081a00:	6833      	ldr	r3, [r6, #0]
d0081a02:	b30b      	cbz	r3, d0081a48 <__sfp+0x68>
d0081a04:	6836      	ldr	r6, [r6, #0]
d0081a06:	e7f7      	b.n	d00819f8 <__sfp+0x18>
d0081a08:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0081a0c:	b9d5      	cbnz	r5, d0081a44 <__sfp+0x64>
d0081a0e:	4b16      	ldr	r3, [pc, #88]	; (d0081a68 <__sfp+0x88>)
d0081a10:	60e3      	str	r3, [r4, #12]
d0081a12:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0081a16:	6665      	str	r5, [r4, #100]	; 0x64
d0081a18:	f000 f847 	bl	d0081aaa <__retarget_lock_init_recursive>
d0081a1c:	f7ff ff96 	bl	d008194c <__sfp_lock_release>
d0081a20:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0081a24:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0081a28:	6025      	str	r5, [r4, #0]
d0081a2a:	61a5      	str	r5, [r4, #24]
d0081a2c:	2208      	movs	r2, #8
d0081a2e:	4629      	mov	r1, r5
d0081a30:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0081a34:	f7ff fcc6 	bl	d00813c4 <memset>
d0081a38:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0081a3c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081a40:	4620      	mov	r0, r4
d0081a42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081a44:	3468      	adds	r4, #104	; 0x68
d0081a46:	e7d9      	b.n	d00819fc <__sfp+0x1c>
d0081a48:	2104      	movs	r1, #4
d0081a4a:	4638      	mov	r0, r7
d0081a4c:	f7ff ff62 	bl	d0081914 <__sfmoreglue>
d0081a50:	4604      	mov	r4, r0
d0081a52:	6030      	str	r0, [r6, #0]
d0081a54:	2800      	cmp	r0, #0
d0081a56:	d1d5      	bne.n	d0081a04 <__sfp+0x24>
d0081a58:	f7ff ff78 	bl	d008194c <__sfp_lock_release>
d0081a5c:	230c      	movs	r3, #12
d0081a5e:	603b      	str	r3, [r7, #0]
d0081a60:	e7ee      	b.n	d0081a40 <__sfp+0x60>
d0081a62:	bf00      	nop
d0081a64:	d00835c0 	.word	0xd00835c0
d0081a68:	ffff0001 	.word	0xffff0001

d0081a6c <_fwalk_reent>:
d0081a6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081a70:	4606      	mov	r6, r0
d0081a72:	4688      	mov	r8, r1
d0081a74:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081a78:	2700      	movs	r7, #0
d0081a7a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081a7e:	f1b9 0901 	subs.w	r9, r9, #1
d0081a82:	d505      	bpl.n	d0081a90 <_fwalk_reent+0x24>
d0081a84:	6824      	ldr	r4, [r4, #0]
d0081a86:	2c00      	cmp	r4, #0
d0081a88:	d1f7      	bne.n	d0081a7a <_fwalk_reent+0xe>
d0081a8a:	4638      	mov	r0, r7
d0081a8c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081a90:	89ab      	ldrh	r3, [r5, #12]
d0081a92:	2b01      	cmp	r3, #1
d0081a94:	d907      	bls.n	d0081aa6 <_fwalk_reent+0x3a>
d0081a96:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081a9a:	3301      	adds	r3, #1
d0081a9c:	d003      	beq.n	d0081aa6 <_fwalk_reent+0x3a>
d0081a9e:	4629      	mov	r1, r5
d0081aa0:	4630      	mov	r0, r6
d0081aa2:	47c0      	blx	r8
d0081aa4:	4307      	orrs	r7, r0
d0081aa6:	3568      	adds	r5, #104	; 0x68
d0081aa8:	e7e9      	b.n	d0081a7e <_fwalk_reent+0x12>

d0081aaa <__retarget_lock_init_recursive>:
d0081aaa:	4770      	bx	lr

d0081aac <__retarget_lock_acquire_recursive>:
d0081aac:	4770      	bx	lr

d0081aae <__retarget_lock_release_recursive>:
d0081aae:	4770      	bx	lr

d0081ab0 <__swhatbuf_r>:
d0081ab0:	b570      	push	{r4, r5, r6, lr}
d0081ab2:	460e      	mov	r6, r1
d0081ab4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081ab8:	2900      	cmp	r1, #0
d0081aba:	b096      	sub	sp, #88	; 0x58
d0081abc:	4614      	mov	r4, r2
d0081abe:	461d      	mov	r5, r3
d0081ac0:	da07      	bge.n	d0081ad2 <__swhatbuf_r+0x22>
d0081ac2:	2300      	movs	r3, #0
d0081ac4:	602b      	str	r3, [r5, #0]
d0081ac6:	89b3      	ldrh	r3, [r6, #12]
d0081ac8:	061a      	lsls	r2, r3, #24
d0081aca:	d410      	bmi.n	d0081aee <__swhatbuf_r+0x3e>
d0081acc:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081ad0:	e00e      	b.n	d0081af0 <__swhatbuf_r+0x40>
d0081ad2:	466a      	mov	r2, sp
d0081ad4:	f000 fb60 	bl	d0082198 <_fstat_r>
d0081ad8:	2800      	cmp	r0, #0
d0081ada:	dbf2      	blt.n	d0081ac2 <__swhatbuf_r+0x12>
d0081adc:	9a01      	ldr	r2, [sp, #4]
d0081ade:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081ae2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081ae6:	425a      	negs	r2, r3
d0081ae8:	415a      	adcs	r2, r3
d0081aea:	602a      	str	r2, [r5, #0]
d0081aec:	e7ee      	b.n	d0081acc <__swhatbuf_r+0x1c>
d0081aee:	2340      	movs	r3, #64	; 0x40
d0081af0:	2000      	movs	r0, #0
d0081af2:	6023      	str	r3, [r4, #0]
d0081af4:	b016      	add	sp, #88	; 0x58
d0081af6:	bd70      	pop	{r4, r5, r6, pc}

d0081af8 <__malloc_lock>:
d0081af8:	4801      	ldr	r0, [pc, #4]	; (d0081b00 <__malloc_lock+0x8>)
d0081afa:	f7ff bfd7 	b.w	d0081aac <__retarget_lock_acquire_recursive>
d0081afe:	bf00      	nop
d0081b00:	d0096550 	.word	0xd0096550

d0081b04 <__malloc_unlock>:
d0081b04:	4801      	ldr	r0, [pc, #4]	; (d0081b0c <__malloc_unlock+0x8>)
d0081b06:	f7ff bfd2 	b.w	d0081aae <__retarget_lock_release_recursive>
d0081b0a:	bf00      	nop
d0081b0c:	d0096550 	.word	0xd0096550

d0081b10 <__ssputs_r>:
d0081b10:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081b14:	688e      	ldr	r6, [r1, #8]
d0081b16:	429e      	cmp	r6, r3
d0081b18:	4682      	mov	sl, r0
d0081b1a:	460c      	mov	r4, r1
d0081b1c:	4690      	mov	r8, r2
d0081b1e:	461f      	mov	r7, r3
d0081b20:	d838      	bhi.n	d0081b94 <__ssputs_r+0x84>
d0081b22:	898a      	ldrh	r2, [r1, #12]
d0081b24:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0081b28:	d032      	beq.n	d0081b90 <__ssputs_r+0x80>
d0081b2a:	6825      	ldr	r5, [r4, #0]
d0081b2c:	6909      	ldr	r1, [r1, #16]
d0081b2e:	eba5 0901 	sub.w	r9, r5, r1
d0081b32:	6965      	ldr	r5, [r4, #20]
d0081b34:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0081b38:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0081b3c:	3301      	adds	r3, #1
d0081b3e:	444b      	add	r3, r9
d0081b40:	106d      	asrs	r5, r5, #1
d0081b42:	429d      	cmp	r5, r3
d0081b44:	bf38      	it	cc
d0081b46:	461d      	movcc	r5, r3
d0081b48:	0553      	lsls	r3, r2, #21
d0081b4a:	d531      	bpl.n	d0081bb0 <__ssputs_r+0xa0>
d0081b4c:	4629      	mov	r1, r5
d0081b4e:	f7ff fc91 	bl	d0081474 <_malloc_r>
d0081b52:	4606      	mov	r6, r0
d0081b54:	b950      	cbnz	r0, d0081b6c <__ssputs_r+0x5c>
d0081b56:	230c      	movs	r3, #12
d0081b58:	f8ca 3000 	str.w	r3, [sl]
d0081b5c:	89a3      	ldrh	r3, [r4, #12]
d0081b5e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081b62:	81a3      	strh	r3, [r4, #12]
d0081b64:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081b68:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081b6c:	6921      	ldr	r1, [r4, #16]
d0081b6e:	464a      	mov	r2, r9
d0081b70:	f000 fb86 	bl	d0082280 <memcpy>
d0081b74:	89a3      	ldrh	r3, [r4, #12]
d0081b76:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0081b7a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081b7e:	81a3      	strh	r3, [r4, #12]
d0081b80:	6126      	str	r6, [r4, #16]
d0081b82:	6165      	str	r5, [r4, #20]
d0081b84:	444e      	add	r6, r9
d0081b86:	eba5 0509 	sub.w	r5, r5, r9
d0081b8a:	6026      	str	r6, [r4, #0]
d0081b8c:	60a5      	str	r5, [r4, #8]
d0081b8e:	463e      	mov	r6, r7
d0081b90:	42be      	cmp	r6, r7
d0081b92:	d900      	bls.n	d0081b96 <__ssputs_r+0x86>
d0081b94:	463e      	mov	r6, r7
d0081b96:	4632      	mov	r2, r6
d0081b98:	6820      	ldr	r0, [r4, #0]
d0081b9a:	4641      	mov	r1, r8
d0081b9c:	f000 fb7e 	bl	d008229c <memmove>
d0081ba0:	68a3      	ldr	r3, [r4, #8]
d0081ba2:	6822      	ldr	r2, [r4, #0]
d0081ba4:	1b9b      	subs	r3, r3, r6
d0081ba6:	4432      	add	r2, r6
d0081ba8:	60a3      	str	r3, [r4, #8]
d0081baa:	6022      	str	r2, [r4, #0]
d0081bac:	2000      	movs	r0, #0
d0081bae:	e7db      	b.n	d0081b68 <__ssputs_r+0x58>
d0081bb0:	462a      	mov	r2, r5
d0081bb2:	f000 fb8d 	bl	d00822d0 <_realloc_r>
d0081bb6:	4606      	mov	r6, r0
d0081bb8:	2800      	cmp	r0, #0
d0081bba:	d1e1      	bne.n	d0081b80 <__ssputs_r+0x70>
d0081bbc:	6921      	ldr	r1, [r4, #16]
d0081bbe:	4650      	mov	r0, sl
d0081bc0:	f7ff fc08 	bl	d00813d4 <_free_r>
d0081bc4:	e7c7      	b.n	d0081b56 <__ssputs_r+0x46>
	...

d0081bc8 <_svfiprintf_r>:
d0081bc8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0081bcc:	4698      	mov	r8, r3
d0081bce:	898b      	ldrh	r3, [r1, #12]
d0081bd0:	061b      	lsls	r3, r3, #24
d0081bd2:	b09d      	sub	sp, #116	; 0x74
d0081bd4:	4607      	mov	r7, r0
d0081bd6:	460d      	mov	r5, r1
d0081bd8:	4614      	mov	r4, r2
d0081bda:	d50e      	bpl.n	d0081bfa <_svfiprintf_r+0x32>
d0081bdc:	690b      	ldr	r3, [r1, #16]
d0081bde:	b963      	cbnz	r3, d0081bfa <_svfiprintf_r+0x32>
d0081be0:	2140      	movs	r1, #64	; 0x40
d0081be2:	f7ff fc47 	bl	d0081474 <_malloc_r>
d0081be6:	6028      	str	r0, [r5, #0]
d0081be8:	6128      	str	r0, [r5, #16]
d0081bea:	b920      	cbnz	r0, d0081bf6 <_svfiprintf_r+0x2e>
d0081bec:	230c      	movs	r3, #12
d0081bee:	603b      	str	r3, [r7, #0]
d0081bf0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081bf4:	e0d1      	b.n	d0081d9a <_svfiprintf_r+0x1d2>
d0081bf6:	2340      	movs	r3, #64	; 0x40
d0081bf8:	616b      	str	r3, [r5, #20]
d0081bfa:	2300      	movs	r3, #0
d0081bfc:	9309      	str	r3, [sp, #36]	; 0x24
d0081bfe:	2320      	movs	r3, #32
d0081c00:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0081c04:	f8cd 800c 	str.w	r8, [sp, #12]
d0081c08:	2330      	movs	r3, #48	; 0x30
d0081c0a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0081db4 <_svfiprintf_r+0x1ec>
d0081c0e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0081c12:	f04f 0901 	mov.w	r9, #1
d0081c16:	4623      	mov	r3, r4
d0081c18:	469a      	mov	sl, r3
d0081c1a:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081c1e:	b10a      	cbz	r2, d0081c24 <_svfiprintf_r+0x5c>
d0081c20:	2a25      	cmp	r2, #37	; 0x25
d0081c22:	d1f9      	bne.n	d0081c18 <_svfiprintf_r+0x50>
d0081c24:	ebba 0b04 	subs.w	fp, sl, r4
d0081c28:	d00b      	beq.n	d0081c42 <_svfiprintf_r+0x7a>
d0081c2a:	465b      	mov	r3, fp
d0081c2c:	4622      	mov	r2, r4
d0081c2e:	4629      	mov	r1, r5
d0081c30:	4638      	mov	r0, r7
d0081c32:	f7ff ff6d 	bl	d0081b10 <__ssputs_r>
d0081c36:	3001      	adds	r0, #1
d0081c38:	f000 80aa 	beq.w	d0081d90 <_svfiprintf_r+0x1c8>
d0081c3c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0081c3e:	445a      	add	r2, fp
d0081c40:	9209      	str	r2, [sp, #36]	; 0x24
d0081c42:	f89a 3000 	ldrb.w	r3, [sl]
d0081c46:	2b00      	cmp	r3, #0
d0081c48:	f000 80a2 	beq.w	d0081d90 <_svfiprintf_r+0x1c8>
d0081c4c:	2300      	movs	r3, #0
d0081c4e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0081c52:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0081c56:	f10a 0a01 	add.w	sl, sl, #1
d0081c5a:	9304      	str	r3, [sp, #16]
d0081c5c:	9307      	str	r3, [sp, #28]
d0081c5e:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0081c62:	931a      	str	r3, [sp, #104]	; 0x68
d0081c64:	4654      	mov	r4, sl
d0081c66:	2205      	movs	r2, #5
d0081c68:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081c6c:	4851      	ldr	r0, [pc, #324]	; (d0081db4 <_svfiprintf_r+0x1ec>)
d0081c6e:	f000 fab7 	bl	d00821e0 <memchr>
d0081c72:	9a04      	ldr	r2, [sp, #16]
d0081c74:	b9d8      	cbnz	r0, d0081cae <_svfiprintf_r+0xe6>
d0081c76:	06d0      	lsls	r0, r2, #27
d0081c78:	bf44      	itt	mi
d0081c7a:	2320      	movmi	r3, #32
d0081c7c:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081c80:	0711      	lsls	r1, r2, #28
d0081c82:	bf44      	itt	mi
d0081c84:	232b      	movmi	r3, #43	; 0x2b
d0081c86:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081c8a:	f89a 3000 	ldrb.w	r3, [sl]
d0081c8e:	2b2a      	cmp	r3, #42	; 0x2a
d0081c90:	d015      	beq.n	d0081cbe <_svfiprintf_r+0xf6>
d0081c92:	9a07      	ldr	r2, [sp, #28]
d0081c94:	4654      	mov	r4, sl
d0081c96:	2000      	movs	r0, #0
d0081c98:	f04f 0c0a 	mov.w	ip, #10
d0081c9c:	4621      	mov	r1, r4
d0081c9e:	f811 3b01 	ldrb.w	r3, [r1], #1
d0081ca2:	3b30      	subs	r3, #48	; 0x30
d0081ca4:	2b09      	cmp	r3, #9
d0081ca6:	d94e      	bls.n	d0081d46 <_svfiprintf_r+0x17e>
d0081ca8:	b1b0      	cbz	r0, d0081cd8 <_svfiprintf_r+0x110>
d0081caa:	9207      	str	r2, [sp, #28]
d0081cac:	e014      	b.n	d0081cd8 <_svfiprintf_r+0x110>
d0081cae:	eba0 0308 	sub.w	r3, r0, r8
d0081cb2:	fa09 f303 	lsl.w	r3, r9, r3
d0081cb6:	4313      	orrs	r3, r2
d0081cb8:	9304      	str	r3, [sp, #16]
d0081cba:	46a2      	mov	sl, r4
d0081cbc:	e7d2      	b.n	d0081c64 <_svfiprintf_r+0x9c>
d0081cbe:	9b03      	ldr	r3, [sp, #12]
d0081cc0:	1d19      	adds	r1, r3, #4
d0081cc2:	681b      	ldr	r3, [r3, #0]
d0081cc4:	9103      	str	r1, [sp, #12]
d0081cc6:	2b00      	cmp	r3, #0
d0081cc8:	bfbb      	ittet	lt
d0081cca:	425b      	neglt	r3, r3
d0081ccc:	f042 0202 	orrlt.w	r2, r2, #2
d0081cd0:	9307      	strge	r3, [sp, #28]
d0081cd2:	9307      	strlt	r3, [sp, #28]
d0081cd4:	bfb8      	it	lt
d0081cd6:	9204      	strlt	r2, [sp, #16]
d0081cd8:	7823      	ldrb	r3, [r4, #0]
d0081cda:	2b2e      	cmp	r3, #46	; 0x2e
d0081cdc:	d10c      	bne.n	d0081cf8 <_svfiprintf_r+0x130>
d0081cde:	7863      	ldrb	r3, [r4, #1]
d0081ce0:	2b2a      	cmp	r3, #42	; 0x2a
d0081ce2:	d135      	bne.n	d0081d50 <_svfiprintf_r+0x188>
d0081ce4:	9b03      	ldr	r3, [sp, #12]
d0081ce6:	1d1a      	adds	r2, r3, #4
d0081ce8:	681b      	ldr	r3, [r3, #0]
d0081cea:	9203      	str	r2, [sp, #12]
d0081cec:	2b00      	cmp	r3, #0
d0081cee:	bfb8      	it	lt
d0081cf0:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0081cf4:	3402      	adds	r4, #2
d0081cf6:	9305      	str	r3, [sp, #20]
d0081cf8:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0081dc4 <_svfiprintf_r+0x1fc>
d0081cfc:	7821      	ldrb	r1, [r4, #0]
d0081cfe:	2203      	movs	r2, #3
d0081d00:	4650      	mov	r0, sl
d0081d02:	f000 fa6d 	bl	d00821e0 <memchr>
d0081d06:	b140      	cbz	r0, d0081d1a <_svfiprintf_r+0x152>
d0081d08:	2340      	movs	r3, #64	; 0x40
d0081d0a:	eba0 000a 	sub.w	r0, r0, sl
d0081d0e:	fa03 f000 	lsl.w	r0, r3, r0
d0081d12:	9b04      	ldr	r3, [sp, #16]
d0081d14:	4303      	orrs	r3, r0
d0081d16:	3401      	adds	r4, #1
d0081d18:	9304      	str	r3, [sp, #16]
d0081d1a:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081d1e:	4826      	ldr	r0, [pc, #152]	; (d0081db8 <_svfiprintf_r+0x1f0>)
d0081d20:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0081d24:	2206      	movs	r2, #6
d0081d26:	f000 fa5b 	bl	d00821e0 <memchr>
d0081d2a:	2800      	cmp	r0, #0
d0081d2c:	d038      	beq.n	d0081da0 <_svfiprintf_r+0x1d8>
d0081d2e:	4b23      	ldr	r3, [pc, #140]	; (d0081dbc <_svfiprintf_r+0x1f4>)
d0081d30:	bb1b      	cbnz	r3, d0081d7a <_svfiprintf_r+0x1b2>
d0081d32:	9b03      	ldr	r3, [sp, #12]
d0081d34:	3307      	adds	r3, #7
d0081d36:	f023 0307 	bic.w	r3, r3, #7
d0081d3a:	3308      	adds	r3, #8
d0081d3c:	9303      	str	r3, [sp, #12]
d0081d3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081d40:	4433      	add	r3, r6
d0081d42:	9309      	str	r3, [sp, #36]	; 0x24
d0081d44:	e767      	b.n	d0081c16 <_svfiprintf_r+0x4e>
d0081d46:	fb0c 3202 	mla	r2, ip, r2, r3
d0081d4a:	460c      	mov	r4, r1
d0081d4c:	2001      	movs	r0, #1
d0081d4e:	e7a5      	b.n	d0081c9c <_svfiprintf_r+0xd4>
d0081d50:	2300      	movs	r3, #0
d0081d52:	3401      	adds	r4, #1
d0081d54:	9305      	str	r3, [sp, #20]
d0081d56:	4619      	mov	r1, r3
d0081d58:	f04f 0c0a 	mov.w	ip, #10
d0081d5c:	4620      	mov	r0, r4
d0081d5e:	f810 2b01 	ldrb.w	r2, [r0], #1
d0081d62:	3a30      	subs	r2, #48	; 0x30
d0081d64:	2a09      	cmp	r2, #9
d0081d66:	d903      	bls.n	d0081d70 <_svfiprintf_r+0x1a8>
d0081d68:	2b00      	cmp	r3, #0
d0081d6a:	d0c5      	beq.n	d0081cf8 <_svfiprintf_r+0x130>
d0081d6c:	9105      	str	r1, [sp, #20]
d0081d6e:	e7c3      	b.n	d0081cf8 <_svfiprintf_r+0x130>
d0081d70:	fb0c 2101 	mla	r1, ip, r1, r2
d0081d74:	4604      	mov	r4, r0
d0081d76:	2301      	movs	r3, #1
d0081d78:	e7f0      	b.n	d0081d5c <_svfiprintf_r+0x194>
d0081d7a:	ab03      	add	r3, sp, #12
d0081d7c:	9300      	str	r3, [sp, #0]
d0081d7e:	462a      	mov	r2, r5
d0081d80:	4b0f      	ldr	r3, [pc, #60]	; (d0081dc0 <_svfiprintf_r+0x1f8>)
d0081d82:	a904      	add	r1, sp, #16
d0081d84:	4638      	mov	r0, r7
d0081d86:	f3af 8000 	nop.w
d0081d8a:	1c42      	adds	r2, r0, #1
d0081d8c:	4606      	mov	r6, r0
d0081d8e:	d1d6      	bne.n	d0081d3e <_svfiprintf_r+0x176>
d0081d90:	89ab      	ldrh	r3, [r5, #12]
d0081d92:	065b      	lsls	r3, r3, #25
d0081d94:	f53f af2c 	bmi.w	d0081bf0 <_svfiprintf_r+0x28>
d0081d98:	9809      	ldr	r0, [sp, #36]	; 0x24
d0081d9a:	b01d      	add	sp, #116	; 0x74
d0081d9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081da0:	ab03      	add	r3, sp, #12
d0081da2:	9300      	str	r3, [sp, #0]
d0081da4:	462a      	mov	r2, r5
d0081da6:	4b06      	ldr	r3, [pc, #24]	; (d0081dc0 <_svfiprintf_r+0x1f8>)
d0081da8:	a904      	add	r1, sp, #16
d0081daa:	4638      	mov	r0, r7
d0081dac:	f000 f87a 	bl	d0081ea4 <_printf_i>
d0081db0:	e7eb      	b.n	d0081d8a <_svfiprintf_r+0x1c2>
d0081db2:	bf00      	nop
d0081db4:	d0083624 	.word	0xd0083624
d0081db8:	d008362e 	.word	0xd008362e
d0081dbc:	00000000 	.word	0x00000000
d0081dc0:	d0081b11 	.word	0xd0081b11
d0081dc4:	d008362a 	.word	0xd008362a

d0081dc8 <_printf_common>:
d0081dc8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081dcc:	4616      	mov	r6, r2
d0081dce:	4699      	mov	r9, r3
d0081dd0:	688a      	ldr	r2, [r1, #8]
d0081dd2:	690b      	ldr	r3, [r1, #16]
d0081dd4:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0081dd8:	4293      	cmp	r3, r2
d0081dda:	bfb8      	it	lt
d0081ddc:	4613      	movlt	r3, r2
d0081dde:	6033      	str	r3, [r6, #0]
d0081de0:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0081de4:	4607      	mov	r7, r0
d0081de6:	460c      	mov	r4, r1
d0081de8:	b10a      	cbz	r2, d0081dee <_printf_common+0x26>
d0081dea:	3301      	adds	r3, #1
d0081dec:	6033      	str	r3, [r6, #0]
d0081dee:	6823      	ldr	r3, [r4, #0]
d0081df0:	0699      	lsls	r1, r3, #26
d0081df2:	bf42      	ittt	mi
d0081df4:	6833      	ldrmi	r3, [r6, #0]
d0081df6:	3302      	addmi	r3, #2
d0081df8:	6033      	strmi	r3, [r6, #0]
d0081dfa:	6825      	ldr	r5, [r4, #0]
d0081dfc:	f015 0506 	ands.w	r5, r5, #6
d0081e00:	d106      	bne.n	d0081e10 <_printf_common+0x48>
d0081e02:	f104 0a19 	add.w	sl, r4, #25
d0081e06:	68e3      	ldr	r3, [r4, #12]
d0081e08:	6832      	ldr	r2, [r6, #0]
d0081e0a:	1a9b      	subs	r3, r3, r2
d0081e0c:	42ab      	cmp	r3, r5
d0081e0e:	dc26      	bgt.n	d0081e5e <_printf_common+0x96>
d0081e10:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0081e14:	1e13      	subs	r3, r2, #0
d0081e16:	6822      	ldr	r2, [r4, #0]
d0081e18:	bf18      	it	ne
d0081e1a:	2301      	movne	r3, #1
d0081e1c:	0692      	lsls	r2, r2, #26
d0081e1e:	d42b      	bmi.n	d0081e78 <_printf_common+0xb0>
d0081e20:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081e24:	4649      	mov	r1, r9
d0081e26:	4638      	mov	r0, r7
d0081e28:	47c0      	blx	r8
d0081e2a:	3001      	adds	r0, #1
d0081e2c:	d01e      	beq.n	d0081e6c <_printf_common+0xa4>
d0081e2e:	6823      	ldr	r3, [r4, #0]
d0081e30:	68e5      	ldr	r5, [r4, #12]
d0081e32:	6832      	ldr	r2, [r6, #0]
d0081e34:	f003 0306 	and.w	r3, r3, #6
d0081e38:	2b04      	cmp	r3, #4
d0081e3a:	bf08      	it	eq
d0081e3c:	1aad      	subeq	r5, r5, r2
d0081e3e:	68a3      	ldr	r3, [r4, #8]
d0081e40:	6922      	ldr	r2, [r4, #16]
d0081e42:	bf0c      	ite	eq
d0081e44:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0081e48:	2500      	movne	r5, #0
d0081e4a:	4293      	cmp	r3, r2
d0081e4c:	bfc4      	itt	gt
d0081e4e:	1a9b      	subgt	r3, r3, r2
d0081e50:	18ed      	addgt	r5, r5, r3
d0081e52:	2600      	movs	r6, #0
d0081e54:	341a      	adds	r4, #26
d0081e56:	42b5      	cmp	r5, r6
d0081e58:	d11a      	bne.n	d0081e90 <_printf_common+0xc8>
d0081e5a:	2000      	movs	r0, #0
d0081e5c:	e008      	b.n	d0081e70 <_printf_common+0xa8>
d0081e5e:	2301      	movs	r3, #1
d0081e60:	4652      	mov	r2, sl
d0081e62:	4649      	mov	r1, r9
d0081e64:	4638      	mov	r0, r7
d0081e66:	47c0      	blx	r8
d0081e68:	3001      	adds	r0, #1
d0081e6a:	d103      	bne.n	d0081e74 <_printf_common+0xac>
d0081e6c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081e70:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081e74:	3501      	adds	r5, #1
d0081e76:	e7c6      	b.n	d0081e06 <_printf_common+0x3e>
d0081e78:	18e1      	adds	r1, r4, r3
d0081e7a:	1c5a      	adds	r2, r3, #1
d0081e7c:	2030      	movs	r0, #48	; 0x30
d0081e7e:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0081e82:	4422      	add	r2, r4
d0081e84:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0081e88:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0081e8c:	3302      	adds	r3, #2
d0081e8e:	e7c7      	b.n	d0081e20 <_printf_common+0x58>
d0081e90:	2301      	movs	r3, #1
d0081e92:	4622      	mov	r2, r4
d0081e94:	4649      	mov	r1, r9
d0081e96:	4638      	mov	r0, r7
d0081e98:	47c0      	blx	r8
d0081e9a:	3001      	adds	r0, #1
d0081e9c:	d0e6      	beq.n	d0081e6c <_printf_common+0xa4>
d0081e9e:	3601      	adds	r6, #1
d0081ea0:	e7d9      	b.n	d0081e56 <_printf_common+0x8e>
	...

d0081ea4 <_printf_i>:
d0081ea4:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0081ea8:	460c      	mov	r4, r1
d0081eaa:	4691      	mov	r9, r2
d0081eac:	7e27      	ldrb	r7, [r4, #24]
d0081eae:	990c      	ldr	r1, [sp, #48]	; 0x30
d0081eb0:	2f78      	cmp	r7, #120	; 0x78
d0081eb2:	4680      	mov	r8, r0
d0081eb4:	469a      	mov	sl, r3
d0081eb6:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081eba:	d807      	bhi.n	d0081ecc <_printf_i+0x28>
d0081ebc:	2f62      	cmp	r7, #98	; 0x62
d0081ebe:	d80a      	bhi.n	d0081ed6 <_printf_i+0x32>
d0081ec0:	2f00      	cmp	r7, #0
d0081ec2:	f000 80d8 	beq.w	d0082076 <_printf_i+0x1d2>
d0081ec6:	2f58      	cmp	r7, #88	; 0x58
d0081ec8:	f000 80a3 	beq.w	d0082012 <_printf_i+0x16e>
d0081ecc:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081ed0:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0081ed4:	e03a      	b.n	d0081f4c <_printf_i+0xa8>
d0081ed6:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0081eda:	2b15      	cmp	r3, #21
d0081edc:	d8f6      	bhi.n	d0081ecc <_printf_i+0x28>
d0081ede:	a001      	add	r0, pc, #4	; (adr r0, d0081ee4 <_printf_i+0x40>)
d0081ee0:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0081ee4:	d0081f3d 	.word	0xd0081f3d
d0081ee8:	d0081f51 	.word	0xd0081f51
d0081eec:	d0081ecd 	.word	0xd0081ecd
d0081ef0:	d0081ecd 	.word	0xd0081ecd
d0081ef4:	d0081ecd 	.word	0xd0081ecd
d0081ef8:	d0081ecd 	.word	0xd0081ecd
d0081efc:	d0081f51 	.word	0xd0081f51
d0081f00:	d0081ecd 	.word	0xd0081ecd
d0081f04:	d0081ecd 	.word	0xd0081ecd
d0081f08:	d0081ecd 	.word	0xd0081ecd
d0081f0c:	d0081ecd 	.word	0xd0081ecd
d0081f10:	d008205d 	.word	0xd008205d
d0081f14:	d0081f81 	.word	0xd0081f81
d0081f18:	d008203f 	.word	0xd008203f
d0081f1c:	d0081ecd 	.word	0xd0081ecd
d0081f20:	d0081ecd 	.word	0xd0081ecd
d0081f24:	d008207f 	.word	0xd008207f
d0081f28:	d0081ecd 	.word	0xd0081ecd
d0081f2c:	d0081f81 	.word	0xd0081f81
d0081f30:	d0081ecd 	.word	0xd0081ecd
d0081f34:	d0081ecd 	.word	0xd0081ecd
d0081f38:	d0082047 	.word	0xd0082047
d0081f3c:	680b      	ldr	r3, [r1, #0]
d0081f3e:	1d1a      	adds	r2, r3, #4
d0081f40:	681b      	ldr	r3, [r3, #0]
d0081f42:	600a      	str	r2, [r1, #0]
d0081f44:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081f48:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0081f4c:	2301      	movs	r3, #1
d0081f4e:	e0a3      	b.n	d0082098 <_printf_i+0x1f4>
d0081f50:	6825      	ldr	r5, [r4, #0]
d0081f52:	6808      	ldr	r0, [r1, #0]
d0081f54:	062e      	lsls	r6, r5, #24
d0081f56:	f100 0304 	add.w	r3, r0, #4
d0081f5a:	d50a      	bpl.n	d0081f72 <_printf_i+0xce>
d0081f5c:	6805      	ldr	r5, [r0, #0]
d0081f5e:	600b      	str	r3, [r1, #0]
d0081f60:	2d00      	cmp	r5, #0
d0081f62:	da03      	bge.n	d0081f6c <_printf_i+0xc8>
d0081f64:	232d      	movs	r3, #45	; 0x2d
d0081f66:	426d      	negs	r5, r5
d0081f68:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0081f6c:	485e      	ldr	r0, [pc, #376]	; (d00820e8 <_printf_i+0x244>)
d0081f6e:	230a      	movs	r3, #10
d0081f70:	e019      	b.n	d0081fa6 <_printf_i+0x102>
d0081f72:	f015 0f40 	tst.w	r5, #64	; 0x40
d0081f76:	6805      	ldr	r5, [r0, #0]
d0081f78:	600b      	str	r3, [r1, #0]
d0081f7a:	bf18      	it	ne
d0081f7c:	b22d      	sxthne	r5, r5
d0081f7e:	e7ef      	b.n	d0081f60 <_printf_i+0xbc>
d0081f80:	680b      	ldr	r3, [r1, #0]
d0081f82:	6825      	ldr	r5, [r4, #0]
d0081f84:	1d18      	adds	r0, r3, #4
d0081f86:	6008      	str	r0, [r1, #0]
d0081f88:	0628      	lsls	r0, r5, #24
d0081f8a:	d501      	bpl.n	d0081f90 <_printf_i+0xec>
d0081f8c:	681d      	ldr	r5, [r3, #0]
d0081f8e:	e002      	b.n	d0081f96 <_printf_i+0xf2>
d0081f90:	0669      	lsls	r1, r5, #25
d0081f92:	d5fb      	bpl.n	d0081f8c <_printf_i+0xe8>
d0081f94:	881d      	ldrh	r5, [r3, #0]
d0081f96:	4854      	ldr	r0, [pc, #336]	; (d00820e8 <_printf_i+0x244>)
d0081f98:	2f6f      	cmp	r7, #111	; 0x6f
d0081f9a:	bf0c      	ite	eq
d0081f9c:	2308      	moveq	r3, #8
d0081f9e:	230a      	movne	r3, #10
d0081fa0:	2100      	movs	r1, #0
d0081fa2:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0081fa6:	6866      	ldr	r6, [r4, #4]
d0081fa8:	60a6      	str	r6, [r4, #8]
d0081faa:	2e00      	cmp	r6, #0
d0081fac:	bfa2      	ittt	ge
d0081fae:	6821      	ldrge	r1, [r4, #0]
d0081fb0:	f021 0104 	bicge.w	r1, r1, #4
d0081fb4:	6021      	strge	r1, [r4, #0]
d0081fb6:	b90d      	cbnz	r5, d0081fbc <_printf_i+0x118>
d0081fb8:	2e00      	cmp	r6, #0
d0081fba:	d04d      	beq.n	d0082058 <_printf_i+0x1b4>
d0081fbc:	4616      	mov	r6, r2
d0081fbe:	fbb5 f1f3 	udiv	r1, r5, r3
d0081fc2:	fb03 5711 	mls	r7, r3, r1, r5
d0081fc6:	5dc7      	ldrb	r7, [r0, r7]
d0081fc8:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0081fcc:	462f      	mov	r7, r5
d0081fce:	42bb      	cmp	r3, r7
d0081fd0:	460d      	mov	r5, r1
d0081fd2:	d9f4      	bls.n	d0081fbe <_printf_i+0x11a>
d0081fd4:	2b08      	cmp	r3, #8
d0081fd6:	d10b      	bne.n	d0081ff0 <_printf_i+0x14c>
d0081fd8:	6823      	ldr	r3, [r4, #0]
d0081fda:	07df      	lsls	r7, r3, #31
d0081fdc:	d508      	bpl.n	d0081ff0 <_printf_i+0x14c>
d0081fde:	6923      	ldr	r3, [r4, #16]
d0081fe0:	6861      	ldr	r1, [r4, #4]
d0081fe2:	4299      	cmp	r1, r3
d0081fe4:	bfde      	ittt	le
d0081fe6:	2330      	movle	r3, #48	; 0x30
d0081fe8:	f806 3c01 	strble.w	r3, [r6, #-1]
d0081fec:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0081ff0:	1b92      	subs	r2, r2, r6
d0081ff2:	6122      	str	r2, [r4, #16]
d0081ff4:	f8cd a000 	str.w	sl, [sp]
d0081ff8:	464b      	mov	r3, r9
d0081ffa:	aa03      	add	r2, sp, #12
d0081ffc:	4621      	mov	r1, r4
d0081ffe:	4640      	mov	r0, r8
d0082000:	f7ff fee2 	bl	d0081dc8 <_printf_common>
d0082004:	3001      	adds	r0, #1
d0082006:	d14c      	bne.n	d00820a2 <_printf_i+0x1fe>
d0082008:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008200c:	b004      	add	sp, #16
d008200e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0082012:	4835      	ldr	r0, [pc, #212]	; (d00820e8 <_printf_i+0x244>)
d0082014:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0082018:	6823      	ldr	r3, [r4, #0]
d008201a:	680e      	ldr	r6, [r1, #0]
d008201c:	061f      	lsls	r7, r3, #24
d008201e:	f856 5b04 	ldr.w	r5, [r6], #4
d0082022:	600e      	str	r6, [r1, #0]
d0082024:	d514      	bpl.n	d0082050 <_printf_i+0x1ac>
d0082026:	07d9      	lsls	r1, r3, #31
d0082028:	bf44      	itt	mi
d008202a:	f043 0320 	orrmi.w	r3, r3, #32
d008202e:	6023      	strmi	r3, [r4, #0]
d0082030:	b91d      	cbnz	r5, d008203a <_printf_i+0x196>
d0082032:	6823      	ldr	r3, [r4, #0]
d0082034:	f023 0320 	bic.w	r3, r3, #32
d0082038:	6023      	str	r3, [r4, #0]
d008203a:	2310      	movs	r3, #16
d008203c:	e7b0      	b.n	d0081fa0 <_printf_i+0xfc>
d008203e:	6823      	ldr	r3, [r4, #0]
d0082040:	f043 0320 	orr.w	r3, r3, #32
d0082044:	6023      	str	r3, [r4, #0]
d0082046:	2378      	movs	r3, #120	; 0x78
d0082048:	4828      	ldr	r0, [pc, #160]	; (d00820ec <_printf_i+0x248>)
d008204a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d008204e:	e7e3      	b.n	d0082018 <_printf_i+0x174>
d0082050:	065e      	lsls	r6, r3, #25
d0082052:	bf48      	it	mi
d0082054:	b2ad      	uxthmi	r5, r5
d0082056:	e7e6      	b.n	d0082026 <_printf_i+0x182>
d0082058:	4616      	mov	r6, r2
d008205a:	e7bb      	b.n	d0081fd4 <_printf_i+0x130>
d008205c:	680b      	ldr	r3, [r1, #0]
d008205e:	6826      	ldr	r6, [r4, #0]
d0082060:	6960      	ldr	r0, [r4, #20]
d0082062:	1d1d      	adds	r5, r3, #4
d0082064:	600d      	str	r5, [r1, #0]
d0082066:	0635      	lsls	r5, r6, #24
d0082068:	681b      	ldr	r3, [r3, #0]
d008206a:	d501      	bpl.n	d0082070 <_printf_i+0x1cc>
d008206c:	6018      	str	r0, [r3, #0]
d008206e:	e002      	b.n	d0082076 <_printf_i+0x1d2>
d0082070:	0671      	lsls	r1, r6, #25
d0082072:	d5fb      	bpl.n	d008206c <_printf_i+0x1c8>
d0082074:	8018      	strh	r0, [r3, #0]
d0082076:	2300      	movs	r3, #0
d0082078:	6123      	str	r3, [r4, #16]
d008207a:	4616      	mov	r6, r2
d008207c:	e7ba      	b.n	d0081ff4 <_printf_i+0x150>
d008207e:	680b      	ldr	r3, [r1, #0]
d0082080:	1d1a      	adds	r2, r3, #4
d0082082:	600a      	str	r2, [r1, #0]
d0082084:	681e      	ldr	r6, [r3, #0]
d0082086:	6862      	ldr	r2, [r4, #4]
d0082088:	2100      	movs	r1, #0
d008208a:	4630      	mov	r0, r6
d008208c:	f000 f8a8 	bl	d00821e0 <memchr>
d0082090:	b108      	cbz	r0, d0082096 <_printf_i+0x1f2>
d0082092:	1b80      	subs	r0, r0, r6
d0082094:	6060      	str	r0, [r4, #4]
d0082096:	6863      	ldr	r3, [r4, #4]
d0082098:	6123      	str	r3, [r4, #16]
d008209a:	2300      	movs	r3, #0
d008209c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00820a0:	e7a8      	b.n	d0081ff4 <_printf_i+0x150>
d00820a2:	6923      	ldr	r3, [r4, #16]
d00820a4:	4632      	mov	r2, r6
d00820a6:	4649      	mov	r1, r9
d00820a8:	4640      	mov	r0, r8
d00820aa:	47d0      	blx	sl
d00820ac:	3001      	adds	r0, #1
d00820ae:	d0ab      	beq.n	d0082008 <_printf_i+0x164>
d00820b0:	6823      	ldr	r3, [r4, #0]
d00820b2:	079b      	lsls	r3, r3, #30
d00820b4:	d413      	bmi.n	d00820de <_printf_i+0x23a>
d00820b6:	68e0      	ldr	r0, [r4, #12]
d00820b8:	9b03      	ldr	r3, [sp, #12]
d00820ba:	4298      	cmp	r0, r3
d00820bc:	bfb8      	it	lt
d00820be:	4618      	movlt	r0, r3
d00820c0:	e7a4      	b.n	d008200c <_printf_i+0x168>
d00820c2:	2301      	movs	r3, #1
d00820c4:	4632      	mov	r2, r6
d00820c6:	4649      	mov	r1, r9
d00820c8:	4640      	mov	r0, r8
d00820ca:	47d0      	blx	sl
d00820cc:	3001      	adds	r0, #1
d00820ce:	d09b      	beq.n	d0082008 <_printf_i+0x164>
d00820d0:	3501      	adds	r5, #1
d00820d2:	68e3      	ldr	r3, [r4, #12]
d00820d4:	9903      	ldr	r1, [sp, #12]
d00820d6:	1a5b      	subs	r3, r3, r1
d00820d8:	42ab      	cmp	r3, r5
d00820da:	dcf2      	bgt.n	d00820c2 <_printf_i+0x21e>
d00820dc:	e7eb      	b.n	d00820b6 <_printf_i+0x212>
d00820de:	2500      	movs	r5, #0
d00820e0:	f104 0619 	add.w	r6, r4, #25
d00820e4:	e7f5      	b.n	d00820d2 <_printf_i+0x22e>
d00820e6:	bf00      	nop
d00820e8:	d0083635 	.word	0xd0083635
d00820ec:	d0083646 	.word	0xd0083646

d00820f0 <__sread>:
d00820f0:	b510      	push	{r4, lr}
d00820f2:	460c      	mov	r4, r1
d00820f4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00820f8:	f000 f910 	bl	d008231c <_read_r>
d00820fc:	2800      	cmp	r0, #0
d00820fe:	bfab      	itete	ge
d0082100:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0082102:	89a3      	ldrhlt	r3, [r4, #12]
d0082104:	181b      	addge	r3, r3, r0
d0082106:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d008210a:	bfac      	ite	ge
d008210c:	6563      	strge	r3, [r4, #84]	; 0x54
d008210e:	81a3      	strhlt	r3, [r4, #12]
d0082110:	bd10      	pop	{r4, pc}

d0082112 <__swrite>:
d0082112:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0082116:	461f      	mov	r7, r3
d0082118:	898b      	ldrh	r3, [r1, #12]
d008211a:	05db      	lsls	r3, r3, #23
d008211c:	4605      	mov	r5, r0
d008211e:	460c      	mov	r4, r1
d0082120:	4616      	mov	r6, r2
d0082122:	d505      	bpl.n	d0082130 <__swrite+0x1e>
d0082124:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082128:	2302      	movs	r3, #2
d008212a:	2200      	movs	r2, #0
d008212c:	f000 f846 	bl	d00821bc <_lseek_r>
d0082130:	89a3      	ldrh	r3, [r4, #12]
d0082132:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0082136:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d008213a:	81a3      	strh	r3, [r4, #12]
d008213c:	4632      	mov	r2, r6
d008213e:	463b      	mov	r3, r7
d0082140:	4628      	mov	r0, r5
d0082142:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0082146:	f7fd bf93 	b.w	d0080070 <_write_r>

d008214a <__sseek>:
d008214a:	b510      	push	{r4, lr}
d008214c:	460c      	mov	r4, r1
d008214e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082152:	f000 f833 	bl	d00821bc <_lseek_r>
d0082156:	1c43      	adds	r3, r0, #1
d0082158:	89a3      	ldrh	r3, [r4, #12]
d008215a:	bf15      	itete	ne
d008215c:	6560      	strne	r0, [r4, #84]	; 0x54
d008215e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0082162:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0082166:	81a3      	strheq	r3, [r4, #12]
d0082168:	bf18      	it	ne
d008216a:	81a3      	strhne	r3, [r4, #12]
d008216c:	bd10      	pop	{r4, pc}

d008216e <__sclose>:
d008216e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082172:	f000 b801 	b.w	d0082178 <_close_r>
	...

d0082178 <_close_r>:
d0082178:	b538      	push	{r3, r4, r5, lr}
d008217a:	4d06      	ldr	r5, [pc, #24]	; (d0082194 <_close_r+0x1c>)
d008217c:	2300      	movs	r3, #0
d008217e:	4604      	mov	r4, r0
d0082180:	4608      	mov	r0, r1
d0082182:	602b      	str	r3, [r5, #0]
d0082184:	f7fd ffae 	bl	d00800e4 <_close>
d0082188:	1c43      	adds	r3, r0, #1
d008218a:	d102      	bne.n	d0082192 <_close_r+0x1a>
d008218c:	682b      	ldr	r3, [r5, #0]
d008218e:	b103      	cbz	r3, d0082192 <_close_r+0x1a>
d0082190:	6023      	str	r3, [r4, #0]
d0082192:	bd38      	pop	{r3, r4, r5, pc}
d0082194:	d0096558 	.word	0xd0096558

d0082198 <_fstat_r>:
d0082198:	b538      	push	{r3, r4, r5, lr}
d008219a:	4d07      	ldr	r5, [pc, #28]	; (d00821b8 <_fstat_r+0x20>)
d008219c:	2300      	movs	r3, #0
d008219e:	4604      	mov	r4, r0
d00821a0:	4608      	mov	r0, r1
d00821a2:	4611      	mov	r1, r2
d00821a4:	602b      	str	r3, [r5, #0]
d00821a6:	f7fd ffa1 	bl	d00800ec <_fstat>
d00821aa:	1c43      	adds	r3, r0, #1
d00821ac:	d102      	bne.n	d00821b4 <_fstat_r+0x1c>
d00821ae:	682b      	ldr	r3, [r5, #0]
d00821b0:	b103      	cbz	r3, d00821b4 <_fstat_r+0x1c>
d00821b2:	6023      	str	r3, [r4, #0]
d00821b4:	bd38      	pop	{r3, r4, r5, pc}
d00821b6:	bf00      	nop
d00821b8:	d0096558 	.word	0xd0096558

d00821bc <_lseek_r>:
d00821bc:	b538      	push	{r3, r4, r5, lr}
d00821be:	4d07      	ldr	r5, [pc, #28]	; (d00821dc <_lseek_r+0x20>)
d00821c0:	4604      	mov	r4, r0
d00821c2:	4608      	mov	r0, r1
d00821c4:	4611      	mov	r1, r2
d00821c6:	2200      	movs	r2, #0
d00821c8:	602a      	str	r2, [r5, #0]
d00821ca:	461a      	mov	r2, r3
d00821cc:	f7fd ff94 	bl	d00800f8 <_lseek>
d00821d0:	1c43      	adds	r3, r0, #1
d00821d2:	d102      	bne.n	d00821da <_lseek_r+0x1e>
d00821d4:	682b      	ldr	r3, [r5, #0]
d00821d6:	b103      	cbz	r3, d00821da <_lseek_r+0x1e>
d00821d8:	6023      	str	r3, [r4, #0]
d00821da:	bd38      	pop	{r3, r4, r5, pc}
d00821dc:	d0096558 	.word	0xd0096558

d00821e0 <memchr>:
d00821e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00821e4:	2a10      	cmp	r2, #16
d00821e6:	db2b      	blt.n	d0082240 <memchr+0x60>
d00821e8:	f010 0f07 	tst.w	r0, #7
d00821ec:	d008      	beq.n	d0082200 <memchr+0x20>
d00821ee:	f810 3b01 	ldrb.w	r3, [r0], #1
d00821f2:	3a01      	subs	r2, #1
d00821f4:	428b      	cmp	r3, r1
d00821f6:	d02d      	beq.n	d0082254 <memchr+0x74>
d00821f8:	f010 0f07 	tst.w	r0, #7
d00821fc:	b342      	cbz	r2, d0082250 <memchr+0x70>
d00821fe:	d1f6      	bne.n	d00821ee <memchr+0xe>
d0082200:	b4f0      	push	{r4, r5, r6, r7}
d0082202:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0082206:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d008220a:	f022 0407 	bic.w	r4, r2, #7
d008220e:	f07f 0700 	mvns.w	r7, #0
d0082212:	2300      	movs	r3, #0
d0082214:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0082218:	3c08      	subs	r4, #8
d008221a:	ea85 0501 	eor.w	r5, r5, r1
d008221e:	ea86 0601 	eor.w	r6, r6, r1
d0082222:	fa85 f547 	uadd8	r5, r5, r7
d0082226:	faa3 f587 	sel	r5, r3, r7
d008222a:	fa86 f647 	uadd8	r6, r6, r7
d008222e:	faa5 f687 	sel	r6, r5, r7
d0082232:	b98e      	cbnz	r6, d0082258 <memchr+0x78>
d0082234:	d1ee      	bne.n	d0082214 <memchr+0x34>
d0082236:	bcf0      	pop	{r4, r5, r6, r7}
d0082238:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d008223c:	f002 0207 	and.w	r2, r2, #7
d0082240:	b132      	cbz	r2, d0082250 <memchr+0x70>
d0082242:	f810 3b01 	ldrb.w	r3, [r0], #1
d0082246:	3a01      	subs	r2, #1
d0082248:	ea83 0301 	eor.w	r3, r3, r1
d008224c:	b113      	cbz	r3, d0082254 <memchr+0x74>
d008224e:	d1f8      	bne.n	d0082242 <memchr+0x62>
d0082250:	2000      	movs	r0, #0
d0082252:	4770      	bx	lr
d0082254:	3801      	subs	r0, #1
d0082256:	4770      	bx	lr
d0082258:	2d00      	cmp	r5, #0
d008225a:	bf06      	itte	eq
d008225c:	4635      	moveq	r5, r6
d008225e:	3803      	subeq	r0, #3
d0082260:	3807      	subne	r0, #7
d0082262:	f015 0f01 	tst.w	r5, #1
d0082266:	d107      	bne.n	d0082278 <memchr+0x98>
d0082268:	3001      	adds	r0, #1
d008226a:	f415 7f80 	tst.w	r5, #256	; 0x100
d008226e:	bf02      	ittt	eq
d0082270:	3001      	addeq	r0, #1
d0082272:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0082276:	3001      	addeq	r0, #1
d0082278:	bcf0      	pop	{r4, r5, r6, r7}
d008227a:	3801      	subs	r0, #1
d008227c:	4770      	bx	lr
d008227e:	bf00      	nop

d0082280 <memcpy>:
d0082280:	440a      	add	r2, r1
d0082282:	4291      	cmp	r1, r2
d0082284:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0082288:	d100      	bne.n	d008228c <memcpy+0xc>
d008228a:	4770      	bx	lr
d008228c:	b510      	push	{r4, lr}
d008228e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0082292:	f803 4f01 	strb.w	r4, [r3, #1]!
d0082296:	4291      	cmp	r1, r2
d0082298:	d1f9      	bne.n	d008228e <memcpy+0xe>
d008229a:	bd10      	pop	{r4, pc}

d008229c <memmove>:
d008229c:	4288      	cmp	r0, r1
d008229e:	b510      	push	{r4, lr}
d00822a0:	eb01 0402 	add.w	r4, r1, r2
d00822a4:	d902      	bls.n	d00822ac <memmove+0x10>
d00822a6:	4284      	cmp	r4, r0
d00822a8:	4623      	mov	r3, r4
d00822aa:	d807      	bhi.n	d00822bc <memmove+0x20>
d00822ac:	1e43      	subs	r3, r0, #1
d00822ae:	42a1      	cmp	r1, r4
d00822b0:	d008      	beq.n	d00822c4 <memmove+0x28>
d00822b2:	f811 2b01 	ldrb.w	r2, [r1], #1
d00822b6:	f803 2f01 	strb.w	r2, [r3, #1]!
d00822ba:	e7f8      	b.n	d00822ae <memmove+0x12>
d00822bc:	4402      	add	r2, r0
d00822be:	4601      	mov	r1, r0
d00822c0:	428a      	cmp	r2, r1
d00822c2:	d100      	bne.n	d00822c6 <memmove+0x2a>
d00822c4:	bd10      	pop	{r4, pc}
d00822c6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00822ca:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00822ce:	e7f7      	b.n	d00822c0 <memmove+0x24>

d00822d0 <_realloc_r>:
d00822d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00822d2:	4607      	mov	r7, r0
d00822d4:	4614      	mov	r4, r2
d00822d6:	460e      	mov	r6, r1
d00822d8:	b921      	cbnz	r1, d00822e4 <_realloc_r+0x14>
d00822da:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00822de:	4611      	mov	r1, r2
d00822e0:	f7ff b8c8 	b.w	d0081474 <_malloc_r>
d00822e4:	b922      	cbnz	r2, d00822f0 <_realloc_r+0x20>
d00822e6:	f7ff f875 	bl	d00813d4 <_free_r>
d00822ea:	4625      	mov	r5, r4
d00822ec:	4628      	mov	r0, r5
d00822ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00822f0:	f000 f826 	bl	d0082340 <_malloc_usable_size_r>
d00822f4:	42a0      	cmp	r0, r4
d00822f6:	d20f      	bcs.n	d0082318 <_realloc_r+0x48>
d00822f8:	4621      	mov	r1, r4
d00822fa:	4638      	mov	r0, r7
d00822fc:	f7ff f8ba 	bl	d0081474 <_malloc_r>
d0082300:	4605      	mov	r5, r0
d0082302:	2800      	cmp	r0, #0
d0082304:	d0f2      	beq.n	d00822ec <_realloc_r+0x1c>
d0082306:	4631      	mov	r1, r6
d0082308:	4622      	mov	r2, r4
d008230a:	f7ff ffb9 	bl	d0082280 <memcpy>
d008230e:	4631      	mov	r1, r6
d0082310:	4638      	mov	r0, r7
d0082312:	f7ff f85f 	bl	d00813d4 <_free_r>
d0082316:	e7e9      	b.n	d00822ec <_realloc_r+0x1c>
d0082318:	4635      	mov	r5, r6
d008231a:	e7e7      	b.n	d00822ec <_realloc_r+0x1c>

d008231c <_read_r>:
d008231c:	b538      	push	{r3, r4, r5, lr}
d008231e:	4d07      	ldr	r5, [pc, #28]	; (d008233c <_read_r+0x20>)
d0082320:	4604      	mov	r4, r0
d0082322:	4608      	mov	r0, r1
d0082324:	4611      	mov	r1, r2
d0082326:	2200      	movs	r2, #0
d0082328:	602a      	str	r2, [r5, #0]
d008232a:	461a      	mov	r2, r3
d008232c:	f7fd fed0 	bl	d00800d0 <_read>
d0082330:	1c43      	adds	r3, r0, #1
d0082332:	d102      	bne.n	d008233a <_read_r+0x1e>
d0082334:	682b      	ldr	r3, [r5, #0]
d0082336:	b103      	cbz	r3, d008233a <_read_r+0x1e>
d0082338:	6023      	str	r3, [r4, #0]
d008233a:	bd38      	pop	{r3, r4, r5, pc}
d008233c:	d0096558 	.word	0xd0096558

d0082340 <_malloc_usable_size_r>:
d0082340:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0082344:	1f18      	subs	r0, r3, #4
d0082346:	2b00      	cmp	r3, #0
d0082348:	bfbc      	itt	lt
d008234a:	580b      	ldrlt	r3, [r1, r0]
d008234c:	18c0      	addlt	r0, r0, r3
d008234e:	4770      	bx	lr
d0082350:	42444953 	.word	0x42444953
d0082354:	4320584f 	.word	0x4320584f
d0082358:	44205452 	.word	0x44205452
d008235c:	004f4d45 	.word	0x004f4d45
d0082360:	49424752 	.word	0x49424752
d0082364:	30323320 	.word	0x30323320
d0082368:	30343278 	.word	0x30343278
d008236c:	48303520 	.word	0x48303520
d0082370:	0000005a 	.word	0x0000005a
d0082374:	20545243 	.word	0x20545243
d0082378:	20495041 	.word	0x20495041
d008237c:	76616e75 	.word	0x76616e75
d0082380:	616c6961 	.word	0x616c6961
d0082384:	0a656c62 	.word	0x0a656c62
d0082388:	00000000 	.word	0x00000000
d008238c:	4d415246 	.word	0x4d415246
d0082390:	6c252045 	.word	0x6c252045
d0082394:	48202075 	.word	0x48202075
d0082398:	20444c4f 	.word	0x20444c4f
d008239c:	45524946 	.word	0x45524946
d00823a0:	204b4f2b 	.word	0x204b4f2b
d00823a4:	45204f54 	.word	0x45204f54
d00823a8:	00544958 	.word	0x00544958

d00823ac <bars>:
d00823ac:	03020100 07060504 0b0a0908 0f0e0d0c     ................

d00823bc <font_8x8_32_90>:
	...
d00823c4:	5f000000 0000005f 00030300 00000303     ...__...........
d00823d4:	147f7f14 00147f7f 6b2e2400 00123a6b     .........$.kk:..
d00823e4:	18366a4c 0032566c 594f7e30 40683a77     Lj6.lV2.0~OYw:h@
d00823f4:	07040000 00000003 3e1c0000 00004163     ...........>cA..
d0082404:	63410000 00001c3e 1c3e2a08 082a3e1c     ..Ac>....*>..>*.
d0082414:	3e080800 0008083e e0800000 00000060     ...>>.......`...
d0082424:	08080800 00080808 00000000 00006060     ............``..
d0082434:	18306040 0103060c 597f3e00 003e7f4d     @`0......>.YM.>.
d0082444:	7f060400 0000007f 71634200 00464f59     .........BcqYOF.
d0082454:	49632200 00367f49 13161c18 00107f7f     ."cII.6.........
d0082464:	45672700 00397d45 4b7e3c00 00307949     .'gEE}9..<~KIy0.
d0082474:	71010100 00070f79 497f3600 00367f49     ...qy....6.II.6.
d0082484:	494f0600 001e3f69 66000000 00000066     ..OIi?.....ff...
d0082494:	e6800000 00000066 14080800 00222214     ....f........"".
d00824a4:	14141400 00141414 14222200 00080814     ........."".....
d00824b4:	51030200 00060f59 5d417f3e 001e1f55     ...QY...>.A]U...
d00824c4:	097f7e00 007e7f09 497f7f00 00367f49     .~....~....II.6.
d00824d4:	633e1c00 00414141 417f7f00 001c3e63     ..>cAAA....Ac>..
d00824e4:	497f7f00 00414149 097f7f00 00010109     ...IIAA.........
d00824f4:	417f3e00 007a7b49 087f7f00 007f7f08     .>.AI{z.........
d0082504:	7f410000 0000417f 40602000 003f7f40     ..A..A... `@@.?.
d0082514:	1c087f7f 00416336 407f7f00 00404040     ....6cA....@@@@.
d0082524:	0c067f7f 007f7f06 0c067f7f 007f7f18     ................
d0082534:	417f3e00 003e7f41 097f7f00 00060f09     .>.AA.>.........
d0082544:	61417f3e 00407e7f 097f7f00 00667f19     >.Aa.~@.......f.
d0082554:	4d6f2600 00327b59 7f010100 0001017f     .&oMY{2.........
d0082564:	407f3f00 003f7f40 703f0f00 000f3f70     .?.@@.?...?pp?..
d0082574:	18307f7f 007f7f30 1c366341 4163361c     ..0.0...Ac6..6cA
d0082584:	7c060301 0103067c 4d597161 00414347     ...||...aqYMGCA.

d0082594 <lcd_msg_bottom>:
d0082594:	73657250 49462073 2b204552 204b4f20     Press FIRE + OK 
d00825a4:	65206f74 00746978                       to exit.

d00825ac <lcd_msg_top>:
d00825ac:	20545243 6f6d6564 6e757220 676e696e     CRT demo running
d00825bc:	00000000                                ....

d00825c0 <sprite>:
	...
d0082618:	06000000 06060606 06060606 00000606     ................
	...
d0082654:	06000000 06060606 06060606 06060606     ................
d0082664:	06060606 00000606 00000000 00000000     ................
	...
d0082694:	06060600 06060606 06060606 06060606     ................
d00826a4:	06060606 06060606 00000000 00000000     ................
	...
d00826d0:	06000000 06060606 06060606 06060606     ................
d00826e0:	06060606 06060606 06060606 00000606     ................
	...
d0082710:	06060600 06060606 06060606 06060606     ................
d0082720:	06060606 06060606 06060606 06060606     ................
	...
d008274c:	06000000 06060606 06060606 06060606     ................
	...
d0082764:	06060600 06060606 06060606 00000606     ................
	...
d008278c:	06060000 06060606 06060606 00000000     ................
	...
d00827a8:	06060600 06060606 00060606 00000000     ................
	...
d00827cc:	06060600 06060606 00000606 00000000     ................
	...
d00827e8:	06000000 06060606 06060606 00000000     ................
	...
d008280c:	06060606 06060606 00000000 00000000     ................
	...
d008282c:	06060600 06060606 00000006 00000000     ................
	...
d0082848:	06000000 06060606 00000606 00000000     ................
	...
d008286c:	06000000 06060606 00000606 00000000     ................
	...
d0082888:	06060000 06060606 00000006 00000000     ................
	...
d00828b0:	06060606 00060606 00000000 00000000     ................
	...
d00828c8:	06060600 06060606 00000000 00000000     ................
	...
d00828f0:	06060600 06060606 00000000 00000000     ................
	...
d0082908:	06060606 00060606 00000000 00000000     ................
	...
d0082930:	06060000 06060606 00000006 00000000     ................
	...
d0082948:	06060606 00000606 00000000 00000000     ................
	...
d0082970:	06000000 06060606 00000006 00000000     ................
d0082980:	00000000 06000000 06060606 00000006     ................
	...
d00829b4:	06060606 00000606 00000000 00000000     ................
d00829c4:	06000000 06060606 00000000 00000000     ................
	...
d00829dc:	05050500 05050505 00000000 00000000     ................
	...
d00829f4:	06060600 00000606 00000000 00000000     ................
d0082a04:	06060000 06060606 00000000 00000000     ................
d0082a14:	00000000 05050000 00000005 00000000     ................
d0082a24:	00050505 00000000 00000000 00000000     ................
d0082a34:	06060600 00060606 00000000 00000000     ................
d0082a44:	06060000 00060606 00000000 05000000     ................
d0082a54:	05050505 00000505 00000000 00000000     ................
d0082a64:	05000000 00000005 00000000 00000000     ................
d0082a74:	06060000 00060606 00000000 00000000     ................
d0082a84:	06060600 00060606 00000000 05050000     ................
d0082a94:	05000000 00000005 00000000 00000000     ................
d0082aa4:	00000000 00000505 00000000 00000000     ................
d0082ab4:	06060000 06060606 00000000 00000000     ................
d0082ac4:	06060600 00000606 00000000 00050500     ................
d0082ad4:	00050000 00000505 00000000 00000000     ................
d0082ae4:	00000000 00050000 00000000 00000000     ................
d0082af4:	06000000 06060606 00000000 00000000     ................
d0082b04:	06060606 00000606 00000000 00000500     ................
d0082b14:	00000500 00000500 00000000 00000000     ................
d0082b24:	00000000 05000000 00000000 00000000     ................
d0082b34:	06000000 06060606 00000006 00000000     ................
d0082b44:	06060606 00000006 00000000 00000500     ................
d0082b54:	00000505 00000500 00000000 00000000     ................
d0082b64:	00000000 05000000 00000005 00000000     ................
d0082b74:	00000000 06060606 00000006 00000000     ................
d0082b84:	06060606 00000006 00000000 00000500     ................
d0082b94:	00000005 00000500 00000000 00000000     ................
	...
d0082bac:	00000005 00000000 00000000 06060606     ................
d0082bbc:	00000006 00000000 06060606 00000006     ................
d0082bcc:	00000000 05050500 00000000 00000505     ................
	...
d0082bec:	00000500 00000000 00000000 06060606     ................
d0082bfc:	00000006 06000000 06060606 00000006     ................
d0082c0c:	00000000 05050000 05000000 00000005     ................
	...
d0082c2c:	00000500 00000000 00000000 06060606     ................
d0082c3c:	00000606 06000000 06060606 00000000     ................
d0082c4c:	00000000 05000000 05050505 00000000     ................
	...
d0082c6c:	00000500 00000000 00000000 06060600     ................
d0082c7c:	00000606 06000000 06060606 00000000     ................
d0082c8c:	00000000 00050000 00000000 00000000     ................
	...
d0082cac:	00050000 00000000 00000000 06060600     ................
d0082cbc:	00000606 06000000 06060606 00000000     ................
d0082ccc:	00000000 00050000 00000000 00000000     ................
d0082cdc:	05000000 00000505 00000000 05050500     ................
d0082cec:	05050505 00050505 00000000 06060600     ................
d0082cfc:	00000606 06000000 06060606 00000000     ................
d0082d0c:	00000000 00050000 00000000 00000000     ................
d0082d1c:	00050000 00050000 00000000 05050500     ................
d0082d2c:	05050505 00050505 00000000 06060600     ................
d0082d3c:	00000606 06000000 06060606 00000000     ................
d0082d4c:	00000000 00050000 00000000 00000000     ................
d0082d5c:	00050000 00050000 00000000 00000000     ................
d0082d6c:	00050000 05050000 00000005 06060600     ................
d0082d7c:	00000606 06000000 06060606 00000000     ................
d0082d8c:	00000000 00050000 00000000 00000000     ................
d0082d9c:	00050000 00050000 00000000 05050500     ................
d0082dac:	05050505 00050505 00000000 06060600     ................
d0082dbc:	00000606 06000000 06060606 00000000     ................
d0082dcc:	00000000 00050000 00000000 00000000     ................
d0082ddc:	05000000 00000505 00000000 05050500     ................
d0082dec:	05050505 00050505 00000000 06060600     ................
d0082dfc:	00000606 06000000 06060606 00000000     ................
d0082e0c:	00000000 00050000 00000000 00000000     ................
	...
d0082e2c:	00050000 00000000 00000000 06060600     ................
d0082e3c:	00000606 06000000 06060606 00000000     ................
d0082e4c:	00000000 05000000 05050505 00000000     ................
	...
d0082e6c:	00000500 00000000 00000000 06060600     ................
d0082e7c:	00000606 06000000 06060606 00000006     ................
d0082e8c:	00000000 05050000 05000000 00000005     ................
	...
d0082eac:	00000500 00000000 00000000 06060606     ................
d0082ebc:	00000606 00000000 06060606 00000006     ................
d0082ecc:	00000000 05050500 00000000 00000505     ................
	...
d0082eec:	00000500 00000000 00000000 06060606     ................
d0082efc:	00000006 00000000 06060606 00000006     ................
d0082f0c:	00000000 00000500 00000005 00000500     ................
	...
d0082f2c:	00000005 00000000 00000000 06060606     ................
d0082f3c:	00000006 00000000 06060606 00000006     ................
d0082f4c:	00000000 00000500 00000505 00000500     ................
	...
d0082f68:	05000000 00000005 00000000 00000000     ................
d0082f78:	06060606 00000006 00000000 06060606     ................
d0082f88:	00000606 00000000 00000500 00000500     ................
d0082f98:	00000500 00000000 00000000 00000000     ................
d0082fa8:	05000000 00000000 00000000 06000000     ................
d0082fb8:	06060606 00000006 00000000 06060600     ................
d0082fc8:	00000606 00000000 00050500 00050000     ................
d0082fd8:	00000505 0e0e0000 000e0e0e 00000000     ................
d0082fe8:	00050000 00000000 00000000 06000000     ................
d0082ff8:	06060606 00000000 00000000 06060600     ................
d0083008:	00060606 00000000 05050000 05000000     ................
d0083018:	00000005 0e0e0000 000e0e0e 00000000     ................
d0083028:	00000505 00000000 00000000 06060000     ................
d0083038:	06060606 00000000 00000000 06060000     ................
d0083048:	00060606 00000000 05000000 05050505     ................
d0083058:	00000505 00000000 00000000 05000000     ................
d0083068:	00000005 00000000 00000000 06060000     ................
d0083078:	00060606 00000000 00000000 06060000     ................
d0083088:	06060606 00000000 00000000 00000000     ................
d0083098:	05050000 00000005 00000000 00050505     ................
	...
d00830b4:	06060600 00060606 00000000 00000000     ................
d00830c4:	06000000 06060606 00000000 00000000     ................
	...
d00830dc:	05050500 05050505 00000000 00000000     ................
	...
d00830f4:	06060600 00000606 00000000 00000000     ................
d0083104:	06000000 06060606 00000006 00000000     ................
	...
d0083134:	06060606 00000606 00000000 00000000     ................
d0083144:	00000000 06060606 00000606 00000000     ................
	...
d0083170:	06000000 06060606 00000006 00000000     ................
	...
d0083188:	06060606 00060606 00000000 00000000     ................
d0083198:	00000000 0e0e0e00 0e0e0e00 00000000     ................
	...
d00831b0:	06060000 06060606 00000006 00000000     ................
	...
d00831c8:	06060600 06060606 00000000 00000000     ................
d00831d8:	00000000 0e0e0e00 0e0e0e0e 00000000     ................
	...
d00831f0:	06060600 06060606 00000000 00000000     ................
	...
d0083208:	06060000 06060606 00000006 00000000     ................
d0083218:	00000000 0e0e0000 000e0e0e 00000000     ................
	...
d0083230:	06060606 00060606 00000000 00000000     ................
	...
d0083248:	06000000 06060606 00000606 00000000     ................
	...
d008326c:	06000000 06060606 00000606 00000000     ................
	...
d008328c:	06060606 06060606 00000000 00000000     ................
	...
d00832ac:	06060600 06060606 00000006 00000000     ................
	...
d00832cc:	06060600 06060606 00000606 00000000     ................
	...
d00832e8:	06000000 06060606 06060606 00000000     ................
	...
d008330c:	06060000 06060606 06060606 00000000     ................
	...
d0083328:	06060600 06060606 00060606 00000000     ................
	...
d008334c:	06000000 06060606 06060606 06060606     ................
	...
d0083364:	06060600 06060606 06060606 00000606     ................
	...
d0083390:	06060600 06060606 06060606 06060606     ................
d00833a0:	06060606 06060606 06060606 06060606     ................
	...
d00833d0:	06000000 06060606 06060606 06060606     ................
d00833e0:	06060606 06060606 06060606 00000606     ................
	...
d0083414:	06060600 06060606 06060606 06060606     ................
d0083424:	06060606 06060606 00000000 00000000     ................
	...
d0083454:	06000000 06060606 06060606 06060606     ................
d0083464:	06060606 00000606 00000000 00000000     ................
	...
d0083498:	06000000 06060606 06060606 00000606     ................
	...

d00835c0 <_global_impure_ptr>:
d00835c0:	d0083668                                h6..

d00835c4 <__sf_fake_stderr>:
	...

d00835e4 <__sf_fake_stdin>:
	...

d0083604 <__sf_fake_stdout>:
	...
d0083624:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0083634:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0083644:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0083654:	                                         ef.

Disassembly of section .init:

d0083658 <_init>:
d0083658:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008365a:	bf00      	nop

Disassembly of section .fini:

d008365c <_fini>:
d008365c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008365e:	bf00      	nop
