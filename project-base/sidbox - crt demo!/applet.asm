
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
d008001e:	f001 fafb 	bl	d0081618 <setbuf>
d0080022:	6833      	ldr	r3, [r6, #0]
d0080024:	2100      	movs	r1, #0
d0080026:	68d8      	ldr	r0, [r3, #12]
d0080028:	f001 faf6 	bl	d0081618 <setbuf>
d008002c:	4629      	mov	r1, r5
d008002e:	4620      	mov	r0, r4
d0080030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0080034:	f000 ba14 	b.w	d0080460 <main>
d0080038:	d0083754 	.word	0xd0083754

d008003c <gfx_createBitmap>:
d008003c:	b510      	push	{r4, lr}
d008003e:	4604      	mov	r4, r0
d0080040:	fb01 f002 	mul.w	r0, r1, r2
d0080044:	b292      	uxth	r2, r2
d0080046:	80a1      	strh	r1, [r4, #4]
d0080048:	60e0      	str	r0, [r4, #12]
d008004a:	80e2      	strh	r2, [r4, #6]
d008004c:	8122      	strh	r2, [r4, #8]
d008004e:	f001 fa29 	bl	d00814a4 <malloc>
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
d0080064:	d0098640 	.word	0xd0098640
d0080068:	d0600000 	.word	0xd0600000
d008006c:	d0096600 	.word	0xd0096600

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
d00800b8:	f001 f9ee 	bl	d0081498 <__errno>
d00800bc:	2209      	movs	r2, #9
d00800be:	4603      	mov	r3, r0
d00800c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00800c4:	601a      	str	r2, [r3, #0]
d00800c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00800c8:	d00837c4 	.word	0xd00837c4
d00800cc:	2001f000 	.word	0x2001f000

d00800d0 <_read>:
d00800d0:	b508      	push	{r3, lr}
d00800d2:	f001 f9e1 	bl	d0081498 <__errno>
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
d008011e:	f001 f9bb 	bl	d0081498 <__errno>
d0080122:	220c      	movs	r2, #12
d0080124:	4603      	mov	r3, r0
d0080126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d008012a:	601a      	str	r2, [r3, #0]
d008012c:	bd10      	pop	{r4, pc}
d008012e:	bf00      	nop
d0080130:	d00837c0 	.word	0xd00837c0
d0080134:	d0098640 	.word	0xd0098640
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
d00802b0:	d00837e0 	.word	0xd00837e0

d00802b4 <draw_lcd_centered>:
d00802b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00802b8:	b084      	sub	sp, #16
d00802ba:	4d19      	ldr	r5, [pc, #100]	; (d0080320 <draw_lcd_centered+0x6c>)
d00802bc:	460f      	mov	r7, r1
d00802be:	4690      	mov	r8, r2
d00802c0:	9003      	str	r0, [sp, #12]
d00802c2:	4608      	mov	r0, r1
d00802c4:	f001 faaa 	bl	d008181c <strlen>
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
d0080458:	d00824ac 	.word	0xd00824ac
d008045c:	d00837e0 	.word	0xd00837e0

d0080460 <main>:
d0080460:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0080464:	4dae      	ldr	r5, [pc, #696]	; (d0080720 <main+0x2c0>)
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
d0080490:	782b      	ldrb	r3, [r5, #0]
d0080492:	786a      	ldrb	r2, [r5, #1]
d0080494:	78a9      	ldrb	r1, [r5, #2]
d0080496:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008049a:	78ea      	ldrb	r2, [r5, #3]
d008049c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804a4:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d00804a6:	4798      	blx	r3
d00804a8:	782b      	ldrb	r3, [r5, #0]
d00804aa:	786a      	ldrb	r2, [r5, #1]
d00804ac:	78a9      	ldrb	r1, [r5, #2]
d00804ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804b2:	78ea      	ldrb	r2, [r5, #3]
d00804b4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804bc:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00804be:	4798      	blx	r3
d00804c0:	782b      	ldrb	r3, [r5, #0]
d00804c2:	786a      	ldrb	r2, [r5, #1]
d00804c4:	78a9      	ldrb	r1, [r5, #2]
d00804c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804ca:	78ea      	ldrb	r2, [r5, #3]
d00804cc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804d4:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d00804d6:	4798      	blx	r3
d00804d8:	782b      	ldrb	r3, [r5, #0]
d00804da:	786a      	ldrb	r2, [r5, #1]
d00804dc:	78a9      	ldrb	r1, [r5, #2]
d00804de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804e2:	78ea      	ldrb	r2, [r5, #3]
d00804e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00804e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00804ec:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d00804ee:	4798      	blx	r3
d00804f0:	782b      	ldrb	r3, [r5, #0]
d00804f2:	786a      	ldrb	r2, [r5, #1]
d00804f4:	78a9      	ldrb	r1, [r5, #2]
d00804f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00804fa:	78ea      	ldrb	r2, [r5, #3]
d00804fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080500:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080504:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0080506:	4798      	blx	r3
d0080508:	7d2b      	ldrb	r3, [r5, #20]
d008050a:	7d6a      	ldrb	r2, [r5, #21]
d008050c:	2040      	movs	r0, #64	; 0x40
d008050e:	7da9      	ldrb	r1, [r5, #22]
d0080510:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080514:	7dea      	ldrb	r2, [r5, #23]
d0080516:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008051a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008051e:	681b      	ldr	r3, [r3, #0]
d0080520:	681b      	ldr	r3, [r3, #0]
d0080522:	4798      	blx	r3
d0080524:	7d2a      	ldrb	r2, [r5, #20]
d0080526:	7d6b      	ldrb	r3, [r5, #21]
d0080528:	2501      	movs	r5, #1
d008052a:	7dbe      	ldrb	r6, [r7, #22]
d008052c:	2190      	movs	r1, #144	; 0x90
d008052e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0080532:	7df8      	ldrb	r0, [r7, #23]
d0080534:	7b3b      	ldrb	r3, [r7, #12]
d0080536:	ea42 4206 	orr.w	r2, r2, r6, lsl #16
d008053a:	7b7e      	ldrb	r6, [r7, #13]
d008053c:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0080540:	7bb8      	ldrb	r0, [r7, #14]
d0080542:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0080546:	7bfe      	ldrb	r6, [r7, #15]
d0080548:	6812      	ldr	r2, [r2, #0]
d008054a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d008054e:	20dc      	movs	r0, #220	; 0xdc
d0080550:	6852      	ldr	r2, [r2, #4]
d0080552:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0080556:	7015      	strb	r5, [r2, #0]
d0080558:	681b      	ldr	r3, [r3, #0]
d008055a:	691b      	ldr	r3, [r3, #16]
d008055c:	4798      	blx	r3
d008055e:	7b3d      	ldrb	r5, [r7, #12]
d0080560:	7b79      	ldrb	r1, [r7, #13]
d0080562:	4623      	mov	r3, r4
d0080564:	7bb8      	ldrb	r0, [r7, #14]
d0080566:	4622      	mov	r2, r4
d0080568:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d008056c:	7bfe      	ldrb	r6, [r7, #15]
d008056e:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0080572:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0080576:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d008057a:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d008057e:	682d      	ldr	r5, [r5, #0]
d0080580:	9400      	str	r4, [sp, #0]
d0080582:	696d      	ldr	r5, [r5, #20]
d0080584:	47a8      	blx	r5
d0080586:	f44f 72a0 	mov.w	r2, #320	; 0x140
d008058a:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d008058e:	4865      	ldr	r0, [pc, #404]	; (d0080724 <main+0x2c4>)
d0080590:	f7ff fd54 	bl	d008003c <gfx_createBitmap>
d0080594:	7b3b      	ldrb	r3, [r7, #12]
d0080596:	7b7a      	ldrb	r2, [r7, #13]
d0080598:	7bb9      	ldrb	r1, [r7, #14]
d008059a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008059e:	7bfa      	ldrb	r2, [r7, #15]
d00805a0:	4860      	ldr	r0, [pc, #384]	; (d0080724 <main+0x2c4>)
d00805a2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00805a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00805aa:	681b      	ldr	r3, [r3, #0]
d00805ac:	69db      	ldr	r3, [r3, #28]
d00805ae:	4798      	blx	r3
d00805b0:	7b3b      	ldrb	r3, [r7, #12]
d00805b2:	7b7a      	ldrb	r2, [r7, #13]
d00805b4:	7bb9      	ldrb	r1, [r7, #14]
d00805b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00805ba:	7bfa      	ldrb	r2, [r7, #15]
d00805bc:	4859      	ldr	r0, [pc, #356]	; (d0080724 <main+0x2c4>)
d00805be:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00805c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00805c6:	681b      	ldr	r3, [r3, #0]
d00805c8:	699b      	ldr	r3, [r3, #24]
d00805ca:	4798      	blx	r3
d00805cc:	7b3b      	ldrb	r3, [r7, #12]
d00805ce:	7b7a      	ldrb	r2, [r7, #13]
d00805d0:	7bb9      	ldrb	r1, [r7, #14]
d00805d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00805d6:	7bfa      	ldrb	r2, [r7, #15]
d00805d8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00805dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00805e0:	685b      	ldr	r3, [r3, #4]
d00805e2:	681b      	ldr	r3, [r3, #0]
d00805e4:	4798      	blx	r3
d00805e6:	7b3b      	ldrb	r3, [r7, #12]
d00805e8:	7b7a      	ldrb	r2, [r7, #13]
d00805ea:	2010      	movs	r0, #16
d00805ec:	7bb9      	ldrb	r1, [r7, #14]
d00805ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00805f2:	7bfa      	ldrb	r2, [r7, #15]
d00805f4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00805f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00805fc:	685b      	ldr	r3, [r3, #4]
d00805fe:	68db      	ldr	r3, [r3, #12]
d0080600:	4798      	blx	r3
d0080602:	7b3d      	ldrb	r5, [r7, #12]
d0080604:	7b7b      	ldrb	r3, [r7, #13]
d0080606:	4621      	mov	r1, r4
d0080608:	7bba      	ldrb	r2, [r7, #14]
d008060a:	4620      	mov	r0, r4
d008060c:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d0080610:	7bfe      	ldrb	r6, [r7, #15]
d0080612:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080616:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d008061a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d008061e:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d0080622:	686d      	ldr	r5, [r5, #4]
d0080624:	686d      	ldr	r5, [r5, #4]
d0080626:	47a8      	blx	r5
d0080628:	7b3b      	ldrb	r3, [r7, #12]
d008062a:	7b7a      	ldrb	r2, [r7, #13]
d008062c:	2003      	movs	r0, #3
d008062e:	7bb9      	ldrb	r1, [r7, #14]
d0080630:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080634:	7bfa      	ldrb	r2, [r7, #15]
d0080636:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008063a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008063e:	685b      	ldr	r3, [r3, #4]
d0080640:	68db      	ldr	r3, [r3, #12]
d0080642:	4798      	blx	r3
d0080644:	7b3d      	ldrb	r5, [r7, #12]
d0080646:	7b7a      	ldrb	r2, [r7, #13]
d0080648:	4620      	mov	r0, r4
d008064a:	7bb9      	ldrb	r1, [r7, #14]
d008064c:	2340      	movs	r3, #64	; 0x40
d008064e:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0080652:	7bfe      	ldrb	r6, [r7, #15]
d0080654:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080658:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d008065c:	2180      	movs	r1, #128	; 0x80
d008065e:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d0080662:	686d      	ldr	r5, [r5, #4]
d0080664:	686d      	ldr	r5, [r5, #4]
d0080666:	47a8      	blx	r5
d0080668:	7b3b      	ldrb	r3, [r7, #12]
d008066a:	7b7a      	ldrb	r2, [r7, #13]
d008066c:	200b      	movs	r0, #11
d008066e:	7bb9      	ldrb	r1, [r7, #14]
d0080670:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080674:	7bfa      	ldrb	r2, [r7, #15]
d0080676:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008067a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008067e:	685b      	ldr	r3, [r3, #4]
d0080680:	68db      	ldr	r3, [r3, #12]
d0080682:	4798      	blx	r3
d0080684:	7b3d      	ldrb	r5, [r7, #12]
d0080686:	7b7a      	ldrb	r2, [r7, #13]
d0080688:	4620      	mov	r0, r4
d008068a:	7bb9      	ldrb	r1, [r7, #14]
d008068c:	2303      	movs	r3, #3
d008068e:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0080692:	7bfe      	ldrb	r6, [r7, #15]
d0080694:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080698:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d008069c:	21be      	movs	r1, #190	; 0xbe
d008069e:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d00806a2:	686d      	ldr	r5, [r5, #4]
d00806a4:	686d      	ldr	r5, [r5, #4]
d00806a6:	47a8      	blx	r5
d00806a8:	7b3b      	ldrb	r3, [r7, #12]
d00806aa:	7b7a      	ldrb	r2, [r7, #13]
d00806ac:	200b      	movs	r0, #11
d00806ae:	7bb9      	ldrb	r1, [r7, #14]
d00806b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00806b4:	7bfa      	ldrb	r2, [r7, #15]
d00806b6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00806ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00806be:	685b      	ldr	r3, [r3, #4]
d00806c0:	68db      	ldr	r3, [r3, #12]
d00806c2:	4798      	blx	r3
d00806c4:	7b3a      	ldrb	r2, [r7, #12]
d00806c6:	7b79      	ldrb	r1, [r7, #13]
d00806c8:	4620      	mov	r0, r4
d00806ca:	7bbe      	ldrb	r6, [r7, #14]
d00806cc:	2303      	movs	r3, #3
d00806ce:	ea42 2401 	orr.w	r4, r2, r1, lsl #8
d00806d2:	7bfd      	ldrb	r5, [r7, #15]
d00806d4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00806d8:	217d      	movs	r1, #125	; 0x7d
d00806da:	ea44 4406 	orr.w	r4, r4, r6, lsl #16
d00806de:	26f0      	movs	r6, #240	; 0xf0
d00806e0:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d00806e4:	6864      	ldr	r4, [r4, #4]
d00806e6:	6864      	ldr	r4, [r4, #4]
d00806e8:	47a0      	blx	r4
d00806ea:	2202      	movs	r2, #2
d00806ec:	490e      	ldr	r1, [pc, #56]	; (d0080728 <main+0x2c8>)
d00806ee:	208c      	movs	r0, #140	; 0x8c
d00806f0:	f7ff fde0 	bl	d00802b4 <draw_lcd_centered>
d00806f4:	20a4      	movs	r0, #164	; 0xa4
d00806f6:	220b      	movs	r2, #11
d00806f8:	490c      	ldr	r1, [pc, #48]	; (d008072c <main+0x2cc>)
d00806fa:	f7ff fddb 	bl	d00802b4 <draw_lcd_centered>
d00806fe:	7b3b      	ldrb	r3, [r7, #12]
d0080700:	7b7a      	ldrb	r2, [r7, #13]
d0080702:	7bb9      	ldrb	r1, [r7, #14]
d0080704:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080708:	7bfa      	ldrb	r2, [r7, #15]
d008070a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008070e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080712:	681b      	ldr	r3, [r3, #0]
d0080714:	681b      	ldr	r3, [r3, #0]
d0080716:	4798      	blx	r3
d0080718:	7b3b      	ldrb	r3, [r7, #12]
d008071a:	7b7a      	ldrb	r2, [r7, #13]
d008071c:	7bb9      	ldrb	r1, [r7, #14]
d008071e:	e007      	b.n	d0080730 <main+0x2d0>
d0080720:	2001f000 	.word	0x2001f000
d0080724:	d0096400 	.word	0xd0096400
d0080728:	d008269c 	.word	0xd008269c
d008072c:	d0082684 	.word	0xd0082684
d0080730:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080734:	7bfa      	ldrb	r2, [r7, #15]
d0080736:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d008073a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008073e:	681b      	ldr	r3, [r3, #0]
d0080740:	68db      	ldr	r3, [r3, #12]
d0080742:	4798      	blx	r3
d0080744:	7b3b      	ldrb	r3, [r7, #12]
d0080746:	7b79      	ldrb	r1, [r7, #13]
d0080748:	2240      	movs	r2, #64	; 0x40
d008074a:	7bbd      	ldrb	r5, [r7, #14]
d008074c:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0080750:	7bfc      	ldrb	r4, [r7, #15]
d0080752:	4899      	ldr	r0, [pc, #612]	; (d00809b8 <main+0x558>)
d0080754:	4611      	mov	r1, r2
d0080756:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d008075a:	4d98      	ldr	r5, [pc, #608]	; (d00809bc <main+0x55c>)
d008075c:	6086      	str	r6, [r0, #8]
d008075e:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d0080762:	4c97      	ldr	r4, [pc, #604]	; (d00809c0 <main+0x560>)
d0080764:	6005      	str	r5, [r0, #0]
d0080766:	681b      	ldr	r3, [r3, #0]
d0080768:	6044      	str	r4, [r0, #4]
d008076a:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d008076c:	4895      	ldr	r0, [pc, #596]	; (d00809c4 <main+0x564>)
d008076e:	4798      	blx	r3
d0080770:	783b      	ldrb	r3, [r7, #0]
d0080772:	7879      	ldrb	r1, [r7, #1]
d0080774:	78ba      	ldrb	r2, [r7, #2]
d0080776:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d008077a:	78fd      	ldrb	r5, [r7, #3]
d008077c:	4c92      	ldr	r4, [pc, #584]	; (d00809c8 <main+0x568>)
d008077e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0080782:	c807      	ldmia	r0, {r0, r1, r2}
d0080784:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0080788:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d008078c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d008078e:	4798      	blx	r3
d0080790:	7f3b      	ldrb	r3, [r7, #28]
d0080792:	7f7a      	ldrb	r2, [r7, #29]
d0080794:	7fb9      	ldrb	r1, [r7, #30]
d0080796:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d008079a:	7ffa      	ldrb	r2, [r7, #31]
d008079c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00807a0:	ea53 6302 	orrs.w	r3, r3, r2, lsl #24
d00807a4:	f000 865e 	beq.w	d0081464 <main+0x1004>
d00807a8:	4c88      	ldr	r4, [pc, #544]	; (d00809cc <main+0x56c>)
d00807aa:	7f21      	ldrb	r1, [r4, #28]
d00807ac:	7f63      	ldrb	r3, [r4, #29]
d00807ae:	7fa2      	ldrb	r2, [r4, #30]
d00807b0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00807b4:	7fe3      	ldrb	r3, [r4, #31]
d00807b6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807ba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807be:	685b      	ldr	r3, [r3, #4]
d00807c0:	4798      	blx	r3
d00807c2:	2800      	cmp	r0, #0
d00807c4:	f000 864e 	beq.w	d0081464 <main+0x1004>
d00807c8:	7821      	ldrb	r1, [r4, #0]
d00807ca:	7863      	ldrb	r3, [r4, #1]
d00807cc:	78a2      	ldrb	r2, [r4, #2]
d00807ce:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00807d2:	78e3      	ldrb	r3, [r4, #3]
d00807d4:	4f7e      	ldr	r7, [pc, #504]	; (d00809d0 <main+0x570>)
d00807d6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00807da:	4c7e      	ldr	r4, [pc, #504]	; (d00809d4 <main+0x574>)
d00807dc:	4e7e      	ldr	r6, [pc, #504]	; (d00809d8 <main+0x578>)
d00807de:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00807e2:	689b      	ldr	r3, [r3, #8]
d00807e4:	4798      	blx	r3
d00807e6:	4b7d      	ldr	r3, [pc, #500]	; (d00809dc <main+0x57c>)
d00807e8:	f8df e208 	ldr.w	lr, [pc, #520]	; d00809f4 <main+0x594>
d00807ec:	f04f 0cb8 	mov.w	ip, #184	; 0xb8
d00807f0:	681b      	ldr	r3, [r3, #0]
d00807f2:	4058      	eors	r0, r3
d00807f4:	ea80 3340 	eor.w	r3, r0, r0, lsl #13
d00807f8:	220f      	movs	r2, #15
d00807fa:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00807fe:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080802:	ea83 3143 	eor.w	r1, r3, r3, lsl #13
d0080806:	fbae 5003 	umull	r5, r0, lr, r3
d008080a:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d008080e:	0b00      	lsrs	r0, r0, #12
d0080810:	ea81 1541 	eor.w	r5, r1, r1, lsl #5
d0080814:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0080818:	ea85 3845 	eor.w	r8, r5, r5, lsl #13
d008081c:	fba7 9105 	umull	r9, r1, r7, r5
d0080820:	eba3 2380 	sub.w	r3, r3, r0, lsl #10
d0080824:	ea88 4058 	eor.w	r0, r8, r8, lsr #17
d0080828:	09c9      	lsrs	r1, r1, #7
d008082a:	8023      	strh	r3, [r4, #0]
d008082c:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d0080830:	fb0c 5111 	mls	r1, ip, r1, r5
d0080834:	fba6 5300 	umull	r5, r3, r6, r0
d0080838:	3122      	adds	r1, #34	; 0x22
d008083a:	08db      	lsrs	r3, r3, #3
d008083c:	70a1      	strb	r1, [r4, #2]
d008083e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080842:	eba0 0383 	sub.w	r3, r0, r3, lsl #2
d0080846:	3302      	adds	r3, #2
d0080848:	b2db      	uxtb	r3, r3
d008084a:	2b09      	cmp	r3, #9
d008084c:	70e3      	strb	r3, [r4, #3]
d008084e:	d803      	bhi.n	d0080858 <main+0x3f8>
d0080850:	2b06      	cmp	r3, #6
d0080852:	bf8c      	ite	hi
d0080854:	220d      	movhi	r2, #13
d0080856:	2205      	movls	r2, #5
d0080858:	7122      	strb	r2, [r4, #4]
d008085a:	3406      	adds	r4, #6
d008085c:	4b60      	ldr	r3, [pc, #384]	; (d00809e0 <main+0x580>)
d008085e:	42a3      	cmp	r3, r4
d0080860:	d1c8      	bne.n	d00807f4 <main+0x394>
d0080862:	2301      	movs	r3, #1
d0080864:	2100      	movs	r1, #0
d0080866:	2232      	movs	r2, #50	; 0x32
d0080868:	930f      	str	r3, [sp, #60]	; 0x3c
d008086a:	930e      	str	r3, [sp, #56]	; 0x38
d008086c:	4b5d      	ldr	r3, [pc, #372]	; (d00809e4 <main+0x584>)
d008086e:	9109      	str	r1, [sp, #36]	; 0x24
d0080870:	f5a3 3b96 	sub.w	fp, r3, #76800	; 0x12c00
d0080874:	4959      	ldr	r1, [pc, #356]	; (d00809dc <main+0x57c>)
d0080876:	920d      	str	r2, [sp, #52]	; 0x34
d0080878:	6008      	str	r0, [r1, #0]
d008087a:	920c      	str	r2, [sp, #48]	; 0x30
d008087c:	4c53      	ldr	r4, [pc, #332]	; (d00809cc <main+0x56c>)
d008087e:	7821      	ldrb	r1, [r4, #0]
d0080880:	7863      	ldrb	r3, [r4, #1]
d0080882:	78a2      	ldrb	r2, [r4, #2]
d0080884:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080888:	78e3      	ldrb	r3, [r4, #3]
d008088a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d008088e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080892:	6a1b      	ldr	r3, [r3, #32]
d0080894:	4798      	blx	r3
d0080896:	f000 0003 	and.w	r0, r0, #3
d008089a:	2803      	cmp	r0, #3
d008089c:	f000 81fe 	beq.w	d0080c9c <main+0x83c>
d00808a0:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00808a2:	465c      	mov	r4, fp
d00808a4:	f8df 8150 	ldr.w	r8, [pc, #336]	; d00809f8 <main+0x598>
d00808a8:	f3c3 03c3 	ubfx	r3, r3, #3, #4
d00808ac:	f818 3003 	ldrb.w	r3, [r8, r3]
d00808b0:	ee08 3a10 	vmov	s16, r3
d00808b4:	4620      	mov	r0, r4
d00808b6:	22f0      	movs	r2, #240	; 0xf0
d00808b8:	2100      	movs	r1, #0
d00808ba:	34f0      	adds	r4, #240	; 0xf0
d00808bc:	f000 fdfa 	bl	d00814b4 <memset>
d00808c0:	4b48      	ldr	r3, [pc, #288]	; (d00809e4 <main+0x584>)
d00808c2:	42a3      	cmp	r3, r4
d00808c4:	d1f6      	bne.n	d00808b4 <main+0x454>
d00808c6:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00808c8:	2414      	movs	r4, #20
d00808ca:	2500      	movs	r5, #0
d00808cc:	f3c3 0647 	ubfx	r6, r3, #1, #8
d00808d0:	b22f      	sxth	r7, r5
d00808d2:	f006 030f 	and.w	r3, r6, #15
d00808d6:	fa0f fa84 	sxth.w	sl, r4
d00808da:	f818 9003 	ldrb.w	r9, [r8, r3]
d00808de:	4557      	cmp	r7, sl
d00808e0:	da0d      	bge.n	d00808fe <main+0x49e>
d00808e2:	f009 090f 	and.w	r9, r9, #15
d00808e6:	ebc7 1007 	rsb	r0, r7, r7, lsl #4
d00808ea:	3701      	adds	r7, #1
d00808ec:	2218      	movs	r2, #24
d00808ee:	4649      	mov	r1, r9
d00808f0:	b23f      	sxth	r7, r7
d00808f2:	eb0b 1000 	add.w	r0, fp, r0, lsl #4
d00808f6:	f000 fddd 	bl	d00814b4 <memset>
d00808fa:	45ba      	cmp	sl, r7
d00808fc:	d1f3      	bne.n	d00808e6 <main+0x486>
d00808fe:	3414      	adds	r4, #20
d0080900:	3601      	adds	r6, #1
d0080902:	3514      	adds	r5, #20
d0080904:	b2a4      	uxth	r4, r4
d0080906:	b2f6      	uxtb	r6, r6
d0080908:	f5b4 7faa 	cmp.w	r4, #340	; 0x154
d008090c:	b2ad      	uxth	r5, r5
d008090e:	d1df      	bne.n	d00808d0 <main+0x470>
d0080910:	4b35      	ldr	r3, [pc, #212]	; (d00809e8 <main+0x588>)
d0080912:	f640 710f 	movw	r1, #3855	; 0xf0f
d0080916:	f503 3296 	add.w	r2, r3, #76800	; 0x12c00
d008091a:	f823 1bf0 	strh.w	r1, [r3], #240
d008091e:	429a      	cmp	r2, r3
d0080920:	d1fb      	bne.n	d008091a <main+0x4ba>
d0080922:	4b26      	ldr	r3, [pc, #152]	; (d00809bc <main+0x55c>)
d0080924:	2201      	movs	r2, #1
d0080926:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
d008092a:	33f0      	adds	r3, #240	; 0xf0
d008092c:	492d      	ldr	r1, [pc, #180]	; (d00809e4 <main+0x584>)
d008092e:	f803 2cb8 	strb.w	r2, [r3, #-184]
d0080932:	f803 2ca8 	strb.w	r2, [r3, #-168]
d0080936:	f803 2c98 	strb.w	r2, [r3, #-152]
d008093a:	f803 2c88 	strb.w	r2, [r3, #-136]
d008093e:	f803 2c78 	strb.w	r2, [r3, #-120]
d0080942:	f803 2c68 	strb.w	r2, [r3, #-104]
d0080946:	f803 2c58 	strb.w	r2, [r3, #-88]
d008094a:	f803 2c48 	strb.w	r2, [r3, #-72]
d008094e:	f803 2c38 	strb.w	r2, [r3, #-56]
d0080952:	f803 2c28 	strb.w	r2, [r3, #-40]
d0080956:	f803 2c18 	strb.w	r2, [r3, #-24]
d008095a:	4299      	cmp	r1, r3
d008095c:	d1e3      	bne.n	d0080926 <main+0x4c6>
d008095e:	4d23      	ldr	r5, [pc, #140]	; (d00809ec <main+0x58c>)
d0080960:	2300      	movs	r3, #0
d0080962:	b29c      	uxth	r4, r3
d0080964:	2101      	movs	r1, #1
d0080966:	22bc      	movs	r2, #188	; 0xbc
d0080968:	4628      	mov	r0, r5
d008096a:	1866      	adds	r6, r4, r1
d008096c:	b236      	sxth	r6, r6
d008096e:	42b3      	cmp	r3, r6
d0080970:	da01      	bge.n	d0080976 <main+0x516>
d0080972:	f000 fd9f 	bl	d00814b4 <memset>
d0080976:	3410      	adds	r4, #16
d0080978:	f505 6570 	add.w	r5, r5, #3840	; 0xf00
d008097c:	b2a2      	uxth	r2, r4
d008097e:	b223      	sxth	r3, r4
d0080980:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0080984:	d1ed      	bne.n	d0080962 <main+0x502>
d0080986:	4b0d      	ldr	r3, [pc, #52]	; (d00809bc <main+0x55c>)
d0080988:	2205      	movs	r2, #5
d008098a:	f883 207e 	strb.w	r2, [r3, #126]	; 0x7e
d008098e:	33f0      	adds	r3, #240	; 0xf0
d0080990:	4914      	ldr	r1, [pc, #80]	; (d00809e4 <main+0x584>)
d0080992:	428b      	cmp	r3, r1
d0080994:	d1f9      	bne.n	d008098a <main+0x52a>
d0080996:	22bc      	movs	r2, #188	; 0xbc
d0080998:	2105      	movs	r1, #5
d008099a:	4815      	ldr	r0, [pc, #84]	; (d00809f0 <main+0x590>)
d008099c:	f000 fd8a 	bl	d00814b4 <memset>
d00809a0:	4b0e      	ldr	r3, [pc, #56]	; (d00809dc <main+0x57c>)
d00809a2:	4a0c      	ldr	r2, [pc, #48]	; (d00809d4 <main+0x574>)
d00809a4:	f04f 0eb8 	mov.w	lr, #184	; 0xb8
d00809a8:	f8d3 a000 	ldr.w	sl, [r3]
d00809ac:	f8df 8044 	ldr.w	r8, [pc, #68]	; d00809f4 <main+0x594>
d00809b0:	f8df c024 	ldr.w	ip, [pc, #36]	; d00809d8 <main+0x578>
d00809b4:	e028      	b.n	d0080a08 <main+0x5a8>
d00809b6:	bf00      	nop
d00809b8:	d00963e0 	.word	0xd00963e0
d00809bc:	d00837e0 	.word	0xd00837e0
d00809c0:	00f00140 	.word	0x00f00140
d00809c4:	d00826b0 	.word	0xd00826b0
d00809c8:	d0096620 	.word	0xd0096620
d00809cc:	2001f000 	.word	0x2001f000
d00809d0:	b21642c9 	.word	0xb21642c9
d00809d4:	d0096420 	.word	0xd0096420
d00809d8:	aaaaaaab 	.word	0xaaaaaaab
d00809dc:	d0083750 	.word	0xd0083750
d00809e0:	d00965d0 	.word	0xd00965d0
d00809e4:	d00963e0 	.word	0xd00963e0
d00809e8:	d00837f8 	.word	0xd00837f8
d00809ec:	d0083800 	.word	0xd0083800
d00809f0:	d008ce00 	.word	0xd008ce00
d00809f4:	cccccccd 	.word	0xcccccccd
d00809f8:	d008249c 	.word	0xd008249c
d00809fc:	8013      	strh	r3, [r2, #0]
d00809fe:	3206      	adds	r2, #6
d0080a00:	4ba1      	ldr	r3, [pc, #644]	; (d0080c88 <main+0x828>)
d0080a02:	4293      	cmp	r3, r2
d0080a04:	f000 8084 	beq.w	d0080b10 <main+0x6b0>
d0080a08:	78d4      	ldrb	r4, [r2, #3]
d0080a0a:	8811      	ldrh	r1, [r2, #0]
d0080a0c:	2c08      	cmp	r4, #8
d0080a0e:	7890      	ldrb	r0, [r2, #2]
d0080a10:	ea4f 1311 	mov.w	r3, r1, lsr #4
d0080a14:	7915      	ldrb	r5, [r2, #4]
d0080a16:	bf94      	ite	ls
d0080a18:	2702      	movls	r7, #2
d0080a1a:	2704      	movhi	r7, #4
d0080a1c:	28ef      	cmp	r0, #239	; 0xef
d0080a1e:	eba3 0307 	sub.w	r3, r3, r7
d0080a22:	b29b      	uxth	r3, r3
d0080a24:	d834      	bhi.n	d0080a90 <main+0x630>
d0080a26:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080a2a:	d207      	bcs.n	d0080a3c <main+0x5dc>
d0080a2c:	ebc3 1603 	rsb	r6, r3, r3, lsl #4
d0080a30:	f005 090f 	and.w	r9, r5, #15
d0080a34:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d0080a38:	f806 9000 	strb.w	r9, [r6, r0]
d0080a3c:	1c5e      	adds	r6, r3, #1
d0080a3e:	b2b6      	uxth	r6, r6
d0080a40:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0080a44:	d207      	bcs.n	d0080a56 <main+0x5f6>
d0080a46:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d0080a4a:	f005 090f 	and.w	r9, r5, #15
d0080a4e:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d0080a52:	f806 9000 	strb.w	r9, [r6, r0]
d0080a56:	2f02      	cmp	r7, #2
d0080a58:	d01a      	beq.n	d0080a90 <main+0x630>
d0080a5a:	1c9e      	adds	r6, r3, #2
d0080a5c:	b2b6      	uxth	r6, r6
d0080a5e:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0080a62:	d207      	bcs.n	d0080a74 <main+0x614>
d0080a64:	ebc6 1606 	rsb	r6, r6, r6, lsl #4
d0080a68:	f005 090f 	and.w	r9, r5, #15
d0080a6c:	eb0b 1606 	add.w	r6, fp, r6, lsl #4
d0080a70:	f806 9000 	strb.w	r9, [r6, r0]
d0080a74:	2f04      	cmp	r7, #4
d0080a76:	d10b      	bne.n	d0080a90 <main+0x630>
d0080a78:	3303      	adds	r3, #3
d0080a7a:	b29b      	uxth	r3, r3
d0080a7c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0080a80:	d206      	bcs.n	d0080a90 <main+0x630>
d0080a82:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0080a86:	f005 050f 	and.w	r5, r5, #15
d0080a8a:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d0080a8e:	541d      	strb	r5, [r3, r0]
d0080a90:	1b0b      	subs	r3, r1, r4
d0080a92:	b29b      	uxth	r3, r3
d0080a94:	f5b3 5fa0 	cmp.w	r3, #5120	; 0x1400
d0080a98:	d9b0      	bls.n	d00809fc <main+0x59c>
d0080a9a:	ea8a 334a 	eor.w	r3, sl, sl, lsl #13
d0080a9e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0080aa2:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0080aa6:	ea83 3043 	eor.w	r0, r3, r3, lsl #13
d0080aaa:	fba8 4103 	umull	r4, r1, r8, r3
d0080aae:	4c77      	ldr	r4, [pc, #476]	; (d0080c8c <main+0x82c>)
d0080ab0:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d0080ab4:	0b09      	lsrs	r1, r1, #12
d0080ab6:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d0080aba:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0080abe:	ea80 3a40 	eor.w	sl, r0, r0, lsl #13
d0080ac2:	fba4 5400 	umull	r5, r4, r4, r0
d0080ac6:	eba3 2181 	sub.w	r1, r3, r1, lsl #10
d0080aca:	ea8a 435a 	eor.w	r3, sl, sl, lsr #17
d0080ace:	09e4      	lsrs	r4, r4, #7
d0080ad0:	f501 51a0 	add.w	r1, r1, #5120	; 0x1400
d0080ad4:	ea83 1a43 	eor.w	sl, r3, r3, lsl #5
d0080ad8:	fb0e 0014 	mls	r0, lr, r4, r0
d0080adc:	fbac 430a 	umull	r4, r3, ip, sl
d0080ae0:	8011      	strh	r1, [r2, #0]
d0080ae2:	3022      	adds	r0, #34	; 0x22
d0080ae4:	08d9      	lsrs	r1, r3, #3
d0080ae6:	7090      	strb	r0, [r2, #2]
d0080ae8:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0080aec:	ebaa 0181 	sub.w	r1, sl, r1, lsl #2
d0080af0:	3102      	adds	r1, #2
d0080af2:	b2c9      	uxtb	r1, r1
d0080af4:	2909      	cmp	r1, #9
d0080af6:	70d1      	strb	r1, [r2, #3]
d0080af8:	f200 8190 	bhi.w	d0080e1c <main+0x9bc>
d0080afc:	2906      	cmp	r1, #6
d0080afe:	bf8c      	ite	hi
d0080b00:	230d      	movhi	r3, #13
d0080b02:	2305      	movls	r3, #5
d0080b04:	7113      	strb	r3, [r2, #4]
d0080b06:	3206      	adds	r2, #6
d0080b08:	4b5f      	ldr	r3, [pc, #380]	; (d0080c88 <main+0x828>)
d0080b0a:	4293      	cmp	r3, r2
d0080b0c:	f47f af7c 	bne.w	d0080a08 <main+0x5a8>
d0080b10:	f8bd 3024 	ldrh.w	r3, [sp, #36]	; 0x24
d0080b14:	2201      	movs	r2, #1
d0080b16:	f04f 0800 	mov.w	r8, #0
d0080b1a:	f8cd a044 	str.w	sl, [sp, #68]	; 0x44
d0080b1e:	9203      	str	r2, [sp, #12]
d0080b20:	fa03 f202 	lsl.w	r2, r3, r2
d0080b24:	277e      	movs	r7, #126	; 0x7e
d0080b26:	46c6      	mov	lr, r8
d0080b28:	9210      	str	r2, [sp, #64]	; 0x40
d0080b2a:	b292      	uxth	r2, r2
d0080b2c:	930b      	str	r3, [sp, #44]	; 0x2c
d0080b2e:	4691      	mov	r9, r2
d0080b30:	920a      	str	r2, [sp, #40]	; 0x28
d0080b32:	4a57      	ldr	r2, [pc, #348]	; (d0080c90 <main+0x830>)
d0080b34:	f8c2 a000 	str.w	sl, [r2]
d0080b38:	469a      	mov	sl, r3
d0080b3a:	e00f      	b.n	d0080b5c <main+0x6fc>
d0080b3c:	9903      	ldr	r1, [sp, #12]
d0080b3e:	f10a 0009 	add.w	r0, sl, #9
d0080b42:	f109 0213 	add.w	r2, r9, #19
d0080b46:	461f      	mov	r7, r3
d0080b48:	3101      	adds	r1, #1
d0080b4a:	f208 183f 	addw	r8, r8, #319	; 0x13f
d0080b4e:	fa1f fa80 	uxth.w	sl, r0
d0080b52:	46e6      	mov	lr, ip
d0080b54:	b28b      	uxth	r3, r1
d0080b56:	fa1f f982 	uxth.w	r9, r2
d0080b5a:	9303      	str	r3, [sp, #12]
d0080b5c:	4b4d      	ldr	r3, [pc, #308]	; (d0080c94 <main+0x834>)
d0080b5e:	f01a 0f80 	tst.w	sl, #128	; 0x80
d0080b62:	ea4f 72e8 	mov.w	r2, r8, asr #31
d0080b66:	484c      	ldr	r0, [pc, #304]	; (d0080c98 <main+0x838>)
d0080b68:	fb83 3108 	smull	r3, r1, r3, r8
d0080b6c:	fa5f f38a 	uxtb.w	r3, sl
d0080b70:	bf14      	ite	ne
d0080b72:	f1c3 03ff 	rsbne	r3, r3, #255	; 0xff
d0080b76:	b21b      	sxtheq	r3, r3
d0080b78:	4441      	add	r1, r8
d0080b7a:	f019 0f80 	tst.w	r9, #128	; 0x80
d0080b7e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080b82:	ebc2 12a1 	rsb	r2, r2, r1, asr #6
d0080b86:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d0080b8a:	fa5f f189 	uxtb.w	r1, r9
d0080b8e:	ea4f 0383 	mov.w	r3, r3, lsl #2
d0080b92:	bf14      	ite	ne
d0080b94:	f1c1 01ff 	rsbne	r1, r1, #255	; 0xff
d0080b98:	b209      	sxtheq	r1, r1
d0080b9a:	fba0 4003 	umull	r4, r0, r0, r3
d0080b9e:	fa0f fc82 	sxth.w	ip, r2
d0080ba2:	1a1b      	subs	r3, r3, r0
d0080ba4:	eb00 0353 	add.w	r3, r0, r3, lsr #1
d0080ba8:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0080bac:	f3c3 138f 	ubfx	r3, r3, #6, #16
d0080bb0:	eb01 0180 	add.w	r1, r1, r0, lsl #2
d0080bb4:	4838      	ldr	r0, [pc, #224]	; (d0080c98 <main+0x838>)
d0080bb6:	3347      	adds	r3, #71	; 0x47
d0080bb8:	0049      	lsls	r1, r1, #1
d0080bba:	fba0 4001 	umull	r4, r0, r0, r1
d0080bbe:	1a09      	subs	r1, r1, r0
d0080bc0:	eb00 0151 	add.w	r1, r0, r1, lsr #1
d0080bc4:	eb03 1391 	add.w	r3, r3, r1, lsr #6
d0080bc8:	9903      	ldr	r1, [sp, #12]
d0080bca:	2901      	cmp	r1, #1
d0080bcc:	b29c      	uxth	r4, r3
d0080bce:	b21b      	sxth	r3, r3
d0080bd0:	d0b4      	beq.n	d0080b3c <main+0x6dc>
d0080bd2:	45f4      	cmp	ip, lr
d0080bd4:	f340 8432 	ble.w	d008143c <main+0xfdc>
d0080bd8:	eba2 020e 	sub.w	r2, r2, lr
d0080bdc:	2101      	movs	r1, #1
d0080bde:	9107      	str	r1, [sp, #28]
d0080be0:	42bb      	cmp	r3, r7
d0080be2:	b291      	uxth	r1, r2
d0080be4:	b212      	sxth	r2, r2
d0080be6:	9104      	str	r1, [sp, #16]
d0080be8:	9206      	str	r2, [sp, #24]
d0080bea:	f340 8422 	ble.w	d0081432 <main+0xfd2>
d0080bee:	1b3c      	subs	r4, r7, r4
d0080bf0:	2201      	movs	r2, #1
d0080bf2:	9208      	str	r2, [sp, #32]
d0080bf4:	b2a2      	uxth	r2, r4
d0080bf6:	fa1f f08e 	uxth.w	r0, lr
d0080bfa:	4611      	mov	r1, r2
d0080bfc:	9205      	str	r2, [sp, #20]
d0080bfe:	9a04      	ldr	r2, [sp, #16]
d0080c00:	b224      	sxth	r4, r4
d0080c02:	440a      	add	r2, r1
d0080c04:	b212      	sxth	r2, r2
d0080c06:	2f00      	cmp	r7, #0
d0080c08:	db26      	blt.n	d0080c58 <main+0x7f8>
d0080c0a:	f240 113f 	movw	r1, #319	; 0x13f
d0080c0e:	4288      	cmp	r0, r1
d0080c10:	bf94      	ite	ls
d0080c12:	2500      	movls	r5, #0
d0080c14:	2501      	movhi	r5, #1
d0080c16:	2fef      	cmp	r7, #239	; 0xef
d0080c18:	bfc8      	it	gt
d0080c1a:	f045 0501 	orrgt.w	r5, r5, #1
d0080c1e:	2d00      	cmp	r5, #0
d0080c20:	f040 83fd 	bne.w	d008141e <main+0xfbe>
d0080c24:	21f0      	movs	r1, #240	; 0xf0
d0080c26:	fb1e 7601 	smlabb	r6, lr, r1, r7
d0080c2a:	f04f 010c 	mov.w	r1, #12
d0080c2e:	f80b 1006 	strb.w	r1, [fp, r6]
d0080c32:	1c41      	adds	r1, r0, #1
d0080c34:	b209      	sxth	r1, r1
d0080c36:	f240 163f 	movw	r6, #319	; 0x13f
d0080c3a:	42b1      	cmp	r1, r6
d0080c3c:	dc07      	bgt.n	d0080c4e <main+0x7ee>
d0080c3e:	b935      	cbnz	r5, d0080c4e <main+0x7ee>
d0080c40:	25f0      	movs	r5, #240	; 0xf0
d0080c42:	fb11 7105 	smlabb	r1, r1, r5, r7
d0080c46:	f04f 050c 	mov.w	r5, #12
d0080c4a:	f80b 5001 	strb.w	r5, [fp, r1]
d0080c4e:	45f4      	cmp	ip, lr
d0080c50:	d102      	bne.n	d0080c58 <main+0x7f8>
d0080c52:	42bb      	cmp	r3, r7
d0080c54:	f000 80e8 	beq.w	d0080e28 <main+0x9c8>
d0080c58:	0051      	lsls	r1, r2, #1
d0080c5a:	b209      	sxth	r1, r1
d0080c5c:	42a1      	cmp	r1, r4
d0080c5e:	db07      	blt.n	d0080c70 <main+0x810>
d0080c60:	9d05      	ldr	r5, [sp, #20]
d0080c62:	442a      	add	r2, r5
d0080c64:	9d07      	ldr	r5, [sp, #28]
d0080c66:	4428      	add	r0, r5
d0080c68:	b212      	sxth	r2, r2
d0080c6a:	fa0f fe80 	sxth.w	lr, r0
d0080c6e:	b280      	uxth	r0, r0
d0080c70:	9d06      	ldr	r5, [sp, #24]
d0080c72:	42a9      	cmp	r1, r5
d0080c74:	dcc7      	bgt.n	d0080c06 <main+0x7a6>
d0080c76:	9904      	ldr	r1, [sp, #16]
d0080c78:	440a      	add	r2, r1
d0080c7a:	9908      	ldr	r1, [sp, #32]
d0080c7c:	440f      	add	r7, r1
d0080c7e:	b212      	sxth	r2, r2
d0080c80:	b23f      	sxth	r7, r7
d0080c82:	2f00      	cmp	r7, #0
d0080c84:	dac1      	bge.n	d0080c0a <main+0x7aa>
d0080c86:	e7e7      	b.n	d0080c58 <main+0x7f8>
d0080c88:	d00965d0 	.word	0xd00965d0
d0080c8c:	b21642c9 	.word	0xb21642c9
d0080c90:	d0083750 	.word	0xd0083750
d0080c94:	ac769185 	.word	0xac769185
d0080c98:	02040811 	.word	0x02040811
d0080c9c:	4c61      	ldr	r4, [pc, #388]	; (d0080e24 <main+0x9c4>)
d0080c9e:	7821      	ldrb	r1, [r4, #0]
d0080ca0:	7863      	ldrb	r3, [r4, #1]
d0080ca2:	78a2      	ldrb	r2, [r4, #2]
d0080ca4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0080ca8:	78e3      	ldrb	r3, [r4, #3]
d0080caa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0080cae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0080cb2:	6a1b      	ldr	r3, [r3, #32]
d0080cb4:	4798      	blx	r3
d0080cb6:	f000 0003 	and.w	r0, r0, #3
d0080cba:	2803      	cmp	r0, #3
d0080cbc:	d0ee      	beq.n	d0080c9c <main+0x83c>
d0080cbe:	7f23      	ldrb	r3, [r4, #28]
d0080cc0:	4626      	mov	r6, r4
d0080cc2:	7f62      	ldrb	r2, [r4, #29]
d0080cc4:	2502      	movs	r5, #2
d0080cc6:	7fa1      	ldrb	r1, [r4, #30]
d0080cc8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080ccc:	7fe2      	ldrb	r2, [r4, #31]
d0080cce:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080cd2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080cd6:	689b      	ldr	r3, [r3, #8]
d0080cd8:	4798      	blx	r3
d0080cda:	7823      	ldrb	r3, [r4, #0]
d0080cdc:	7862      	ldrb	r2, [r4, #1]
d0080cde:	78a1      	ldrb	r1, [r4, #2]
d0080ce0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080ce4:	78e2      	ldrb	r2, [r4, #3]
d0080ce6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080cea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080cee:	6c9b      	ldr	r3, [r3, #72]	; 0x48
d0080cf0:	4798      	blx	r3
d0080cf2:	7823      	ldrb	r3, [r4, #0]
d0080cf4:	7862      	ldrb	r2, [r4, #1]
d0080cf6:	78a1      	ldrb	r1, [r4, #2]
d0080cf8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080cfc:	78e2      	ldrb	r2, [r4, #3]
d0080cfe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080d02:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d06:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d0080d08:	4798      	blx	r3
d0080d0a:	7823      	ldrb	r3, [r4, #0]
d0080d0c:	7862      	ldrb	r2, [r4, #1]
d0080d0e:	78a1      	ldrb	r1, [r4, #2]
d0080d10:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080d14:	78e2      	ldrb	r2, [r4, #3]
d0080d16:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080d1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d1e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
d0080d20:	4798      	blx	r3
d0080d22:	7823      	ldrb	r3, [r4, #0]
d0080d24:	7862      	ldrb	r2, [r4, #1]
d0080d26:	78a1      	ldrb	r1, [r4, #2]
d0080d28:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080d2c:	78e2      	ldrb	r2, [r4, #3]
d0080d2e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080d32:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d36:	6c1b      	ldr	r3, [r3, #64]	; 0x40
d0080d38:	4798      	blx	r3
d0080d3a:	7823      	ldrb	r3, [r4, #0]
d0080d3c:	7862      	ldrb	r2, [r4, #1]
d0080d3e:	78a1      	ldrb	r1, [r4, #2]
d0080d40:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080d44:	78e2      	ldrb	r2, [r4, #3]
d0080d46:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080d4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d4e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0080d50:	4798      	blx	r3
d0080d52:	7d23      	ldrb	r3, [r4, #20]
d0080d54:	7d62      	ldrb	r2, [r4, #21]
d0080d56:	7da1      	ldrb	r1, [r4, #22]
d0080d58:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080d5c:	7de2      	ldrb	r2, [r4, #23]
d0080d5e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080d62:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d66:	681b      	ldr	r3, [r3, #0]
d0080d68:	68db      	ldr	r3, [r3, #12]
d0080d6a:	4798      	blx	r3
d0080d6c:	7823      	ldrb	r3, [r4, #0]
d0080d6e:	7862      	ldrb	r2, [r4, #1]
d0080d70:	78a1      	ldrb	r1, [r4, #2]
d0080d72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080d76:	78e2      	ldrb	r2, [r4, #3]
d0080d78:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080d7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d80:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d0080d82:	4798      	blx	r3
d0080d84:	7b23      	ldrb	r3, [r4, #12]
d0080d86:	7b62      	ldrb	r2, [r4, #13]
d0080d88:	7ba1      	ldrb	r1, [r4, #14]
d0080d8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080d8e:	7be2      	ldrb	r2, [r4, #15]
d0080d90:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080d94:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080d98:	681b      	ldr	r3, [r3, #0]
d0080d9a:	68db      	ldr	r3, [r3, #12]
d0080d9c:	4798      	blx	r3
d0080d9e:	7b24      	ldrb	r4, [r4, #12]
d0080da0:	7b72      	ldrb	r2, [r6, #13]
d0080da2:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0080da6:	7bb1      	ldrb	r1, [r6, #14]
d0080da8:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0080dac:	7bf0      	ldrb	r0, [r6, #15]
d0080dae:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0080db2:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d0080db6:	4619      	mov	r1, r3
d0080db8:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d0080dbc:	4610      	mov	r0, r2
d0080dbe:	6824      	ldr	r4, [r4, #0]
d0080dc0:	9500      	str	r5, [sp, #0]
d0080dc2:	6964      	ldr	r4, [r4, #20]
d0080dc4:	47a0      	blx	r4
d0080dc6:	7933      	ldrb	r3, [r6, #4]
d0080dc8:	7972      	ldrb	r2, [r6, #5]
d0080dca:	79b1      	ldrb	r1, [r6, #6]
d0080dcc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080dd0:	79f2      	ldrb	r2, [r6, #7]
d0080dd2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080dd6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080dda:	685b      	ldr	r3, [r3, #4]
d0080ddc:	4798      	blx	r3
d0080dde:	7b33      	ldrb	r3, [r6, #12]
d0080de0:	7b72      	ldrb	r2, [r6, #13]
d0080de2:	7bb1      	ldrb	r1, [r6, #14]
d0080de4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080de8:	7bf2      	ldrb	r2, [r6, #15]
d0080dea:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080dee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080df2:	681b      	ldr	r3, [r3, #0]
d0080df4:	68db      	ldr	r3, [r3, #12]
d0080df6:	4798      	blx	r3
d0080df8:	7833      	ldrb	r3, [r6, #0]
d0080dfa:	7872      	ldrb	r2, [r6, #1]
d0080dfc:	78b1      	ldrb	r1, [r6, #2]
d0080dfe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0080e02:	78f2      	ldrb	r2, [r6, #3]
d0080e04:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0080e08:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0080e0c:	685b      	ldr	r3, [r3, #4]
d0080e0e:	4798      	blx	r3
d0080e10:	2000      	movs	r0, #0
d0080e12:	b013      	add	sp, #76	; 0x4c
d0080e14:	ecbd 8b02 	vpop	{d8}
d0080e18:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0080e1c:	230f      	movs	r3, #15
d0080e1e:	7113      	strb	r3, [r2, #4]
d0080e20:	e671      	b.n	d0080b06 <main+0x6a6>
d0080e22:	bf00      	nop
d0080e24:	2001f000 	.word	0x2001f000
d0080e28:	9a03      	ldr	r2, [sp, #12]
d0080e2a:	2a60      	cmp	r2, #96	; 0x60
d0080e2c:	f47f ae86 	bne.w	d0080b3c <main+0x6dc>
d0080e30:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0080e32:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0080e34:	f003 01fe 	and.w	r1, r3, #254	; 0xfe
d0080e38:	061e      	lsls	r6, r3, #24
d0080e3a:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0080e3c:	bf4c      	ite	mi
d0080e3e:	f1c1 01ff 	rsbmi	r1, r1, #255	; 0xff
d0080e42:	b209      	sxthpl	r1, r1
d0080e44:	4403      	add	r3, r0
d0080e46:	f8dd a044 	ldr.w	sl, [sp, #68]	; 0x44
d0080e4a:	0209      	lsls	r1, r1, #8
d0080e4c:	461a      	mov	r2, r3
d0080e4e:	b2db      	uxtb	r3, r3
d0080e50:	0615      	lsls	r5, r2, #24
d0080e52:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0080e54:	f102 0240 	add.w	r2, r2, #64	; 0x40
d0080e58:	bf4c      	ite	mi
d0080e5a:	f1c3 03ff 	rsbmi	r3, r3, #255	; 0xff
d0080e5e:	b21b      	sxthpl	r3, r3
d0080e60:	f002 00fe 	and.w	r0, r2, #254	; 0xfe
d0080e64:	0614      	lsls	r4, r2, #24
d0080e66:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0080e6a:	4cbe      	ldr	r4, [pc, #760]	; (d0081164 <main+0xd04>)
d0080e6c:	bf4c      	ite	mi
d0080e6e:	f1c0 02ff 	rsbmi	r2, r0, #255	; 0xff
d0080e72:	b202      	sxthpl	r2, r0
d0080e74:	9204      	str	r2, [sp, #16]
d0080e76:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0080e78:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0080e7c:	b2d0      	uxtb	r0, r2
d0080e7e:	0612      	lsls	r2, r2, #24
d0080e80:	bf4c      	ite	mi
d0080e82:	f1c0 02ff 	rsbmi	r2, r0, #255	; 0xff
d0080e86:	b202      	sxthpl	r2, r0
d0080e88:	ebc3 00c3 	rsb	r0, r3, r3, lsl #3
d0080e8c:	ebc2 05c2 	rsb	r5, r2, r2, lsl #3
d0080e90:	00c0      	lsls	r0, r0, #3
d0080e92:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0080e96:	fba4 5201 	umull	r5, r2, r4, r1
d0080e9a:	fba4 5700 	umull	r5, r7, r4, r0
d0080e9e:	009b      	lsls	r3, r3, #2
d0080ea0:	1a89      	subs	r1, r1, r2
d0080ea2:	1bc0      	subs	r0, r0, r7
d0080ea4:	fba4 5403 	umull	r5, r4, r4, r3
d0080ea8:	eb02 0151 	add.w	r1, r2, r1, lsr #1
d0080eac:	eb07 0750 	add.w	r7, r7, r0, lsr #1
d0080eb0:	1b1b      	subs	r3, r3, r4
d0080eb2:	f3c1 158f 	ubfx	r5, r1, #6, #16
d0080eb6:	f3c7 178f 	ubfx	r7, r7, #6, #16
d0080eba:	eb04 0453 	add.w	r4, r4, r3, lsr #1
d0080ebe:	f105 0221 	add.w	r2, r5, #33	; 0x21
d0080ec2:	f107 031c 	add.w	r3, r7, #28
d0080ec6:	f3c4 118f 	ubfx	r1, r4, #6, #16
d0080eca:	b214      	sxth	r4, r2
d0080ecc:	b21b      	sxth	r3, r3
d0080ece:	f101 0946 	add.w	r9, r1, #70	; 0x46
d0080ed2:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080ed6:	9103      	str	r1, [sp, #12]
d0080ed8:	fa0f f989 	sxth.w	r9, r9
d0080edc:	da25      	bge.n	d0080f2a <main+0xaca>
d0080ede:	2bef      	cmp	r3, #239	; 0xef
d0080ee0:	dc23      	bgt.n	d0080f2a <main+0xaca>
d0080ee2:	f105 0839 	add.w	r8, r5, #57	; 0x39
d0080ee6:	f107 022e 	add.w	r2, r7, #46	; 0x2e
d0080eea:	fa0f f888 	sxth.w	r8, r8
d0080eee:	b212      	sxth	r2, r2
d0080ef0:	f5b8 7fa0 	cmp.w	r8, #320	; 0x140
d0080ef4:	bfa8      	it	ge
d0080ef6:	f44f 78a0 	movge.w	r8, #320	; 0x140
d0080efa:	2af0      	cmp	r2, #240	; 0xf0
d0080efc:	bfa8      	it	ge
d0080efe:	22f0      	movge	r2, #240	; 0xf0
d0080f00:	45a0      	cmp	r8, r4
d0080f02:	dd12      	ble.n	d0080f2a <main+0xaca>
d0080f04:	21f0      	movs	r1, #240	; 0xf0
d0080f06:	1ad2      	subs	r2, r2, r3
d0080f08:	9505      	str	r5, [sp, #20]
d0080f0a:	fb14 3301 	smlabb	r3, r4, r1, r3
d0080f0e:	4615      	mov	r5, r2
d0080f10:	eb0b 0603 	add.w	r6, fp, r3
d0080f14:	3401      	adds	r4, #1
d0080f16:	4630      	mov	r0, r6
d0080f18:	462a      	mov	r2, r5
d0080f1a:	210b      	movs	r1, #11
d0080f1c:	b224      	sxth	r4, r4
d0080f1e:	36f0      	adds	r6, #240	; 0xf0
d0080f20:	f000 fac8 	bl	d00814b4 <memset>
d0080f24:	45a0      	cmp	r8, r4
d0080f26:	dcf5      	bgt.n	d0080f14 <main+0xab4>
d0080f28:	9d05      	ldr	r5, [sp, #20]
d0080f2a:	f105 0425 	add.w	r4, r5, #37	; 0x25
d0080f2e:	f107 0320 	add.w	r3, r7, #32
d0080f32:	b224      	sxth	r4, r4
d0080f34:	b21b      	sxth	r3, r3
d0080f36:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080f3a:	da23      	bge.n	d0080f84 <main+0xb24>
d0080f3c:	2bef      	cmp	r3, #239	; 0xef
d0080f3e:	dc21      	bgt.n	d0080f84 <main+0xb24>
d0080f40:	3535      	adds	r5, #53	; 0x35
d0080f42:	372a      	adds	r7, #42	; 0x2a
d0080f44:	b22d      	sxth	r5, r5
d0080f46:	fa0f f887 	sxth.w	r8, r7
d0080f4a:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080f4e:	bfa8      	it	ge
d0080f50:	f44f 75a0 	movge.w	r5, #320	; 0x140
d0080f54:	f1b8 0ff0 	cmp.w	r8, #240	; 0xf0
d0080f58:	bfa8      	it	ge
d0080f5a:	f04f 08f0 	movge.w	r8, #240	; 0xf0
d0080f5e:	42a5      	cmp	r5, r4
d0080f60:	dd10      	ble.n	d0080f84 <main+0xb24>
d0080f62:	27f0      	movs	r7, #240	; 0xf0
d0080f64:	eba8 0803 	sub.w	r8, r8, r3
d0080f68:	fb14 3307 	smlabb	r3, r4, r7, r3
d0080f6c:	eb0b 0703 	add.w	r7, fp, r3
d0080f70:	3401      	adds	r4, #1
d0080f72:	4638      	mov	r0, r7
d0080f74:	4642      	mov	r2, r8
d0080f76:	210f      	movs	r1, #15
d0080f78:	b224      	sxth	r4, r4
d0080f7a:	37f0      	adds	r7, #240	; 0xf0
d0080f7c:	f000 fa9a 	bl	d00814b4 <memset>
d0080f80:	42a5      	cmp	r5, r4
d0080f82:	dcf5      	bgt.n	d0080f70 <main+0xb10>
d0080f84:	9b04      	ldr	r3, [sp, #16]
d0080f86:	2212      	movs	r2, #18
d0080f88:	4c76      	ldr	r4, [pc, #472]	; (d0081164 <main+0xd04>)
d0080f8a:	4649      	mov	r1, r9
d0080f8c:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0080f90:	230e      	movs	r3, #14
d0080f92:	0140      	lsls	r0, r0, #5
d0080f94:	fba4 5400 	umull	r5, r4, r4, r0
d0080f98:	1b00      	subs	r0, r0, r4
d0080f9a:	eb04 0450 	add.w	r4, r4, r0, lsr #1
d0080f9e:	f3c4 148f 	ubfx	r4, r4, #6, #16
d0080fa2:	f104 00c8 	add.w	r0, r4, #200	; 0xc8
d0080fa6:	f104 05c6 	add.w	r5, r4, #198	; 0xc6
d0080faa:	b200      	sxth	r0, r0
d0080fac:	b22d      	sxth	r5, r5
d0080fae:	9004      	str	r0, [sp, #16]
d0080fb0:	f7ff f8c4 	bl	d008013c <draw_circle>
d0080fb4:	2306      	movs	r3, #6
d0080fb6:	9804      	ldr	r0, [sp, #16]
d0080fb8:	4649      	mov	r1, r9
d0080fba:	220a      	movs	r2, #10
d0080fbc:	f7ff f8be 	bl	d008013c <draw_circle>
d0080fc0:	9b03      	ldr	r3, [sp, #12]
d0080fc2:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0080fc6:	f103 0344 	add.w	r3, r3, #68	; 0x44
d0080fca:	b21b      	sxth	r3, r3
d0080fcc:	da20      	bge.n	d0081010 <main+0xbb0>
d0080fce:	2bef      	cmp	r3, #239	; 0xef
d0080fd0:	dc1e      	bgt.n	d0081010 <main+0xbb0>
d0080fd2:	34cb      	adds	r4, #203	; 0xcb
d0080fd4:	9e03      	ldr	r6, [sp, #12]
d0080fd6:	b224      	sxth	r4, r4
d0080fd8:	3649      	adds	r6, #73	; 0x49
d0080fda:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0080fde:	b237      	sxth	r7, r6
d0080fe0:	bfa8      	it	ge
d0080fe2:	f44f 74a0 	movge.w	r4, #320	; 0x140
d0080fe6:	2ff0      	cmp	r7, #240	; 0xf0
d0080fe8:	bfa8      	it	ge
d0080fea:	27f0      	movge	r7, #240	; 0xf0
d0080fec:	42ac      	cmp	r4, r5
d0080fee:	dd0f      	ble.n	d0081010 <main+0xbb0>
d0080ff0:	26f0      	movs	r6, #240	; 0xf0
d0080ff2:	1aff      	subs	r7, r7, r3
d0080ff4:	fb15 3306 	smlabb	r3, r5, r6, r3
d0080ff8:	eb0b 0603 	add.w	r6, fp, r3
d0080ffc:	3501      	adds	r5, #1
d0080ffe:	4630      	mov	r0, r6
d0081000:	463a      	mov	r2, r7
d0081002:	210a      	movs	r1, #10
d0081004:	b22d      	sxth	r5, r5
d0081006:	36f0      	adds	r6, #240	; 0xf0
d0081008:	f000 fa54 	bl	d00814b4 <memset>
d008100c:	42ac      	cmp	r4, r5
d008100e:	dcf5      	bgt.n	d0080ffc <main+0xb9c>
d0081010:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081012:	20bc      	movs	r0, #188	; 0xbc
d0081014:	4a54      	ldr	r2, [pc, #336]	; (d0081168 <main+0xd08>)
d0081016:	210f      	movs	r1, #15
d0081018:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d008101c:	fba2 4203 	umull	r4, r2, r2, r3
d0081020:	09d2      	lsrs	r2, r2, #7
d0081022:	fb00 3212 	mls	r2, r0, r2, r3
d0081026:	4851      	ldr	r0, [pc, #324]	; (d008116c <main+0xd0c>)
d0081028:	3220      	adds	r2, #32
d008102a:	b2d2      	uxtb	r2, r2
d008102c:	eb0b 0302 	add.w	r3, fp, r2
d0081030:	4402      	add	r2, r0
d0081032:	f803 1bf0 	strb.w	r1, [r3], #240
d0081036:	4293      	cmp	r3, r2
d0081038:	d1fb      	bne.n	d0081032 <main+0xbd2>
d008103a:	2000      	movs	r0, #0
d008103c:	4e4c      	ldr	r6, [pc, #304]	; (d0081170 <main+0xd10>)
d008103e:	25bc      	movs	r5, #188	; 0xbc
d0081040:	ea8a 334a 	eor.w	r3, sl, sl, lsl #13
d0081044:	f000 0401 	and.w	r4, r0, #1
d0081048:	3001      	adds	r0, #1
d008104a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d008104e:	3408      	adds	r4, #8
d0081050:	281c      	cmp	r0, #28
d0081052:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0081056:	ea83 3a43 	eor.w	sl, r3, r3, lsl #13
d008105a:	fba6 1203 	umull	r1, r2, r6, r3
d008105e:	4942      	ldr	r1, [pc, #264]	; (d0081168 <main+0xd08>)
d0081060:	ea8a 4a5a 	eor.w	sl, sl, sl, lsr #17
d0081064:	ea4f 2212 	mov.w	r2, r2, lsr #8
d0081068:	ea8a 1a4a 	eor.w	sl, sl, sl, lsl #5
d008106c:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0081070:	fba1 710a 	umull	r7, r1, r1, sl
d0081074:	eba3 1382 	sub.w	r3, r3, r2, lsl #6
d0081078:	ea4f 11d1 	mov.w	r1, r1, lsr #7
d008107c:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081080:	fb05 a111 	mls	r1, r5, r1, sl
d0081084:	eb0b 1203 	add.w	r2, fp, r3, lsl #4
d0081088:	f101 0320 	add.w	r3, r1, #32
d008108c:	b29b      	uxth	r3, r3
d008108e:	54d4      	strb	r4, [r2, r3]
d0081090:	d1d6      	bne.n	d0081040 <main+0xbe0>
d0081092:	4938      	ldr	r1, [pc, #224]	; (d0081174 <main+0xd14>)
d0081094:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
d0081098:	4b37      	ldr	r3, [pc, #220]	; (d0081178 <main+0xd18>)
d008109a:	f8c1 a000 	str.w	sl, [r1]
d008109e:	f503 3196 	add.w	r1, r3, #76800	; 0x12c00
d00810a2:	e9c3 2200 	strd	r2, r2, [r3]
d00810a6:	e9c3 2202 	strd	r2, r2, [r3, #8]
d00810aa:	33f0      	adds	r3, #240	; 0xf0
d00810ac:	4299      	cmp	r1, r3
d00810ae:	d1f8      	bne.n	d00810a2 <main+0xc42>
d00810b0:	4b32      	ldr	r3, [pc, #200]	; (d008117c <main+0xd1c>)
d00810b2:	2200      	movs	r2, #0
d00810b4:	f503 4116 	add.w	r1, r3, #38400	; 0x9600
d00810b8:	601a      	str	r2, [r3, #0]
d00810ba:	33f0      	adds	r3, #240	; 0xf0
d00810bc:	f843 2cec 	str.w	r2, [r3, #-236]
d00810c0:	f843 2ce8 	str.w	r2, [r3, #-232]
d00810c4:	428b      	cmp	r3, r1
d00810c6:	d1f7      	bne.n	d00810b8 <main+0xc58>
d00810c8:	4b2d      	ldr	r3, [pc, #180]	; (d0081180 <main+0xd20>)
d00810ca:	2200      	movs	r2, #0
d00810cc:	492d      	ldr	r1, [pc, #180]	; (d0081184 <main+0xd24>)
d00810ce:	601a      	str	r2, [r3, #0]
d00810d0:	33f0      	adds	r3, #240	; 0xf0
d00810d2:	f843 2cec 	str.w	r2, [r3, #-236]
d00810d6:	f843 2ce8 	str.w	r2, [r3, #-232]
d00810da:	428b      	cmp	r3, r1
d00810dc:	d1f7      	bne.n	d00810ce <main+0xc6e>
d00810de:	4d2a      	ldr	r5, [pc, #168]	; (d0081188 <main+0xd28>)
d00810e0:	2153      	movs	r1, #83	; 0x53
d00810e2:	2408      	movs	r4, #8
d00810e4:	e002      	b.n	d00810ec <main+0xc8c>
d00810e6:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d00810ea:	d009      	beq.n	d0081100 <main+0xca0>
d00810ec:	4620      	mov	r0, r4
d00810ee:	220f      	movs	r2, #15
d00810f0:	3408      	adds	r4, #8
d00810f2:	f7ff f917 	bl	d0080324 <draw_text_cell.constprop.0>
d00810f6:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d00810fa:	b2a4      	uxth	r4, r4
d00810fc:	2900      	cmp	r1, #0
d00810fe:	d1f2      	bne.n	d00810e6 <main+0xc86>
d0081100:	4d22      	ldr	r5, [pc, #136]	; (d008118c <main+0xd2c>)
d0081102:	2152      	movs	r1, #82	; 0x52
d0081104:	24b0      	movs	r4, #176	; 0xb0
d0081106:	e002      	b.n	d008110e <main+0xcae>
d0081108:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d008110c:	d009      	beq.n	d0081122 <main+0xcc2>
d008110e:	4620      	mov	r0, r4
d0081110:	220e      	movs	r2, #14
d0081112:	3408      	adds	r4, #8
d0081114:	f7ff f906 	bl	d0080324 <draw_text_cell.constprop.0>
d0081118:	f815 1f01 	ldrb.w	r1, [r5, #1]!
d008111c:	b2a4      	uxth	r4, r4
d008111e:	2900      	cmp	r1, #0
d0081120:	d1f2      	bne.n	d0081108 <main+0xca8>
d0081122:	4c1b      	ldr	r4, [pc, #108]	; (d0081190 <main+0xd30>)
d0081124:	2128      	movs	r1, #40	; 0x28
d0081126:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081128:	4a1a      	ldr	r2, [pc, #104]	; (d0081194 <main+0xd34>)
d008112a:	4620      	mov	r0, r4
d008112c:	f000 fb42 	bl	d00817b4 <sniprintf>
d0081130:	7823      	ldrb	r3, [r4, #0]
d0081132:	2b00      	cmp	r3, #0
d0081134:	f000 80bc 	beq.w	d00812b0 <main+0xe50>
d0081138:	4620      	mov	r0, r4
d008113a:	f04f 0c08 	mov.w	ip, #8
d008113e:	f8df 8058 	ldr.w	r8, [pc, #88]	; d0081198 <main+0xd38>
d0081142:	260d      	movs	r6, #13
d0081144:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
d0081148:	2a19      	cmp	r2, #25
d008114a:	f200 8184 	bhi.w	d0081456 <main+0xff6>
d008114e:	f1a3 0420 	sub.w	r4, r3, #32
d0081152:	b2e4      	uxtb	r4, r4
d0081154:	3c20      	subs	r4, #32
d0081156:	00e4      	lsls	r4, r4, #3
d0081158:	4444      	add	r4, r8
d008115a:	4661      	mov	r1, ip
d008115c:	1e65      	subs	r5, r4, #1
d008115e:	3407      	adds	r4, #7
d0081160:	e054      	b.n	d008120c <main+0xdac>
d0081162:	bf00      	nop
d0081164:	02040811 	.word	0x02040811
d0081168:	ae4c415d 	.word	0xae4c415d
d008116c:	d00963e0 	.word	0xd00963e0
d0081170:	cccccccd 	.word	0xcccccccd
d0081174:	d0083750 	.word	0xd0083750
d0081178:	d00838c0 	.word	0xd00838c0
d008117c:	d0083ba4 	.word	0xd0083ba4
d0081180:	d008d564 	.word	0xd008d564
d0081184:	d0096024 	.word	0xd0096024
d0081188:	d0082440 	.word	0xd0082440
d008118c:	d0082450 	.word	0xd0082450
d0081190:	d00965d0 	.word	0xd00965d0
d0081194:	d008247c 	.word	0xd008247c
d0081198:	d00824ac 	.word	0xd00824ac
d008119c:	b20a      	sxth	r2, r1
d008119e:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00811a2:	da37      	bge.n	d0081214 <main+0xdb4>
d00811a4:	ebc2 1302 	rsb	r3, r2, r2, lsl #4
d00811a8:	f017 0f02 	tst.w	r7, #2
d00811ac:	eb0b 1e03 	add.w	lr, fp, r3, lsl #4
d00811b0:	ea4f 1303 	mov.w	r3, r3, lsl #4
d00811b4:	f88e 60e4 	strb.w	r6, [lr, #228]	; 0xe4
d00811b8:	d137      	bne.n	d008122a <main+0xdca>
d00811ba:	077b      	lsls	r3, r7, #29
d00811bc:	d53b      	bpl.n	d0081236 <main+0xdd6>
d00811be:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d00811c2:	0113      	lsls	r3, r2, #4
d00811c4:	eb0b 0203 	add.w	r2, fp, r3
d00811c8:	f882 60e6 	strb.w	r6, [r2, #230]	; 0xe6
d00811cc:	073a      	lsls	r2, r7, #28
d00811ce:	f140 8108 	bpl.w	d00813e2 <main+0xf82>
d00811d2:	eb0b 0203 	add.w	r2, fp, r3
d00811d6:	f882 60e7 	strb.w	r6, [r2, #231]	; 0xe7
d00811da:	06fa      	lsls	r2, r7, #27
d00811dc:	d53b      	bpl.n	d0081256 <main+0xdf6>
d00811de:	eb0b 0203 	add.w	r2, fp, r3
d00811e2:	f882 60e8 	strb.w	r6, [r2, #232]	; 0xe8
d00811e6:	06ba      	lsls	r2, r7, #26
d00811e8:	f140 810d 	bpl.w	d0081406 <main+0xfa6>
d00811ec:	eb0b 0203 	add.w	r2, fp, r3
d00811f0:	f882 60e9 	strb.w	r6, [r2, #233]	; 0xe9
d00811f4:	067a      	lsls	r2, r7, #25
d00811f6:	d53f      	bpl.n	d0081278 <main+0xe18>
d00811f8:	eb0b 0203 	add.w	r2, fp, r3
d00811fc:	063f      	lsls	r7, r7, #24
d00811fe:	f882 60ea 	strb.w	r6, [r2, #234]	; 0xea
d0081202:	d442      	bmi.n	d008128a <main+0xe2a>
d0081204:	3101      	adds	r1, #1
d0081206:	42a5      	cmp	r5, r4
d0081208:	b289      	uxth	r1, r1
d008120a:	d045      	beq.n	d0081298 <main+0xe38>
d008120c:	f815 7f01 	ldrb.w	r7, [r5, #1]!
d0081210:	07fb      	lsls	r3, r7, #31
d0081212:	d4c3      	bmi.n	d008119c <main+0xd3c>
d0081214:	07bb      	lsls	r3, r7, #30
d0081216:	f140 80d9 	bpl.w	d00813cc <main+0xf6c>
d008121a:	b20b      	sxth	r3, r1
d008121c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081220:	f280 80d4 	bge.w	d00813cc <main+0xf6c>
d0081224:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081228:	011b      	lsls	r3, r3, #4
d008122a:	eb0b 0203 	add.w	r2, fp, r3
d008122e:	f882 60e5 	strb.w	r6, [r2, #229]	; 0xe5
d0081232:	077a      	lsls	r2, r7, #29
d0081234:	d4c6      	bmi.n	d00811c4 <main+0xd64>
d0081236:	073b      	lsls	r3, r7, #28
d0081238:	f140 80d3 	bpl.w	d00813e2 <main+0xf82>
d008123c:	b20b      	sxth	r3, r1
d008123e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081242:	da08      	bge.n	d0081256 <main+0xdf6>
d0081244:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081248:	011b      	lsls	r3, r3, #4
d008124a:	eb0b 0203 	add.w	r2, fp, r3
d008124e:	f882 60e7 	strb.w	r6, [r2, #231]	; 0xe7
d0081252:	06fa      	lsls	r2, r7, #27
d0081254:	d4c3      	bmi.n	d00811de <main+0xd7e>
d0081256:	06bb      	lsls	r3, r7, #26
d0081258:	f140 80d5 	bpl.w	d0081406 <main+0xfa6>
d008125c:	b20b      	sxth	r3, r1
d008125e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081262:	f280 80f1 	bge.w	d0081448 <main+0xfe8>
d0081266:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008126a:	011b      	lsls	r3, r3, #4
d008126c:	eb0b 0203 	add.w	r2, fp, r3
d0081270:	f882 60e9 	strb.w	r6, [r2, #233]	; 0xe9
d0081274:	067a      	lsls	r2, r7, #25
d0081276:	d4bf      	bmi.n	d00811f8 <main+0xd98>
d0081278:	063f      	lsls	r7, r7, #24
d008127a:	d5c3      	bpl.n	d0081204 <main+0xda4>
d008127c:	b20b      	sxth	r3, r1
d008127e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081282:	dabf      	bge.n	d0081204 <main+0xda4>
d0081284:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0081288:	011b      	lsls	r3, r3, #4
d008128a:	445b      	add	r3, fp
d008128c:	3101      	adds	r1, #1
d008128e:	42a5      	cmp	r5, r4
d0081290:	b289      	uxth	r1, r1
d0081292:	f883 60eb 	strb.w	r6, [r3, #235]	; 0xeb
d0081296:	d1b9      	bne.n	d008120c <main+0xdac>
d0081298:	f10c 0c08 	add.w	ip, ip, #8
d008129c:	f810 3f01 	ldrb.w	r3, [r0, #1]!
d00812a0:	fa1f fc8c 	uxth.w	ip, ip
d00812a4:	f5bc 7fa0 	cmp.w	ip, #320	; 0x140
d00812a8:	d002      	beq.n	d00812b0 <main+0xe50>
d00812aa:	2b00      	cmp	r3, #0
d00812ac:	f47f af4a 	bne.w	d0081144 <main+0xce4>
d00812b0:	4f74      	ldr	r7, [pc, #464]	; (d0081484 <main+0x1024>)
d00812b2:	f8bd 5034 	ldrh.w	r5, [sp, #52]	; 0x34
d00812b6:	7b3b      	ldrb	r3, [r7, #12]
d00812b8:	7b78      	ldrb	r0, [r7, #13]
d00812ba:	f105 022c 	add.w	r2, r5, #44	; 0x2c
d00812be:	7bbe      	ldrb	r6, [r7, #14]
d00812c0:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
d00812c4:	7bfc      	ldrb	r4, [r7, #15]
d00812c6:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
d00812ca:	b212      	sxth	r2, r2
d00812cc:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00812d0:	4b6d      	ldr	r3, [pc, #436]	; (d0081488 <main+0x1028>)
d00812d2:	4641      	mov	r1, r8
d00812d4:	486d      	ldr	r0, [pc, #436]	; (d008148c <main+0x102c>)
d00812d6:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d00812da:	6824      	ldr	r4, [r4, #0]
d00812dc:	6f24      	ldr	r4, [r4, #112]	; 0x70
d00812de:	47a0      	blx	r4
d00812e0:	7b3b      	ldrb	r3, [r7, #12]
d00812e2:	7b7e      	ldrb	r6, [r7, #13]
d00812e4:	2214      	movs	r2, #20
d00812e6:	7bbc      	ldrb	r4, [r7, #14]
d00812e8:	ea43 2006 	orr.w	r0, r3, r6, lsl #8
d00812ec:	7bff      	ldrb	r7, [r7, #15]
d00812ee:	4611      	mov	r1, r2
d00812f0:	4b65      	ldr	r3, [pc, #404]	; (d0081488 <main+0x1028>)
d00812f2:	ea40 4604 	orr.w	r6, r0, r4, lsl #16
d00812f6:	4865      	ldr	r0, [pc, #404]	; (d008148c <main+0x102c>)
d00812f8:	ea46 6407 	orr.w	r4, r6, r7, lsl #24
d00812fc:	6824      	ldr	r4, [r4, #0]
d00812fe:	6f24      	ldr	r4, [r4, #112]	; 0x70
d0081300:	47a0      	blx	r4
d0081302:	f8bd 0038 	ldrh.w	r0, [sp, #56]	; 0x38
d0081306:	4643      	mov	r3, r8
d0081308:	f8bd 103c 	ldrh.w	r1, [sp, #60]	; 0x3c
d008130c:	4403      	add	r3, r0
d008130e:	440d      	add	r5, r1
d0081310:	f103 0240 	add.w	r2, r3, #64	; 0x40
d0081314:	b22c      	sxth	r4, r5
d0081316:	b21b      	sxth	r3, r3
d0081318:	b292      	uxth	r2, r2
d008131a:	940d      	str	r4, [sp, #52]	; 0x34
d008131c:	930c      	str	r3, [sp, #48]	; 0x30
d008131e:	b2ab      	uxth	r3, r5
d0081320:	f5b2 7fc0 	cmp.w	r2, #384	; 0x180
d0081324:	d902      	bls.n	d008132c <main+0xecc>
d0081326:	4240      	negs	r0, r0
d0081328:	b202      	sxth	r2, r0
d008132a:	920e      	str	r2, [sp, #56]	; 0x38
d008132c:	3340      	adds	r3, #64	; 0x40
d008132e:	b29b      	uxth	r3, r3
d0081330:	f5b3 7f98 	cmp.w	r3, #304	; 0x130
d0081334:	d902      	bls.n	d008133c <main+0xedc>
d0081336:	4249      	negs	r1, r1
d0081338:	b20b      	sxth	r3, r1
d008133a:	930f      	str	r3, [sp, #60]	; 0x3c
d008133c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d008133e:	4c51      	ldr	r4, [pc, #324]	; (d0081484 <main+0x1024>)
d0081340:	3301      	adds	r3, #1
d0081342:	7b21      	ldrb	r1, [r4, #12]
d0081344:	4625      	mov	r5, r4
d0081346:	9309      	str	r3, [sp, #36]	; 0x24
d0081348:	7b63      	ldrb	r3, [r4, #13]
d008134a:	7ba2      	ldrb	r2, [r4, #14]
d008134c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0081350:	7be3      	ldrb	r3, [r4, #15]
d0081352:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081356:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d008135a:	681b      	ldr	r3, [r3, #0]
d008135c:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d008135e:	4798      	blx	r3
d0081360:	7f21      	ldrb	r1, [r4, #28]
d0081362:	7f63      	ldrb	r3, [r4, #29]
d0081364:	7fa2      	ldrb	r2, [r4, #30]
d0081366:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d008136a:	7fe3      	ldrb	r3, [r4, #31]
d008136c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0081370:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081374:	699b      	ldr	r3, [r3, #24]
d0081376:	4798      	blx	r3
d0081378:	7f20      	ldrb	r0, [r4, #28]
d008137a:	7f63      	ldrb	r3, [r4, #29]
d008137c:	ee18 1a10 	vmov	r1, s16
d0081380:	7fa2      	ldrb	r2, [r4, #30]
d0081382:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d0081386:	7feb      	ldrb	r3, [r5, #31]
d0081388:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d008138c:	4840      	ldr	r0, [pc, #256]	; (d0081490 <main+0x1030>)
d008138e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0081392:	69db      	ldr	r3, [r3, #28]
d0081394:	4798      	blx	r3
d0081396:	7d29      	ldrb	r1, [r5, #20]
d0081398:	7d6b      	ldrb	r3, [r5, #21]
d008139a:	7daa      	ldrb	r2, [r5, #22]
d008139c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00813a0:	7deb      	ldrb	r3, [r5, #23]
d00813a2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00813a6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00813aa:	685b      	ldr	r3, [r3, #4]
d00813ac:	685b      	ldr	r3, [r3, #4]
d00813ae:	4798      	blx	r3
d00813b0:	7a29      	ldrb	r1, [r5, #8]
d00813b2:	7a6b      	ldrb	r3, [r5, #9]
d00813b4:	7aaa      	ldrb	r2, [r5, #10]
d00813b6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00813ba:	7aeb      	ldrb	r3, [r5, #11]
d00813bc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00813c0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00813c4:	689b      	ldr	r3, [r3, #8]
d00813c6:	4798      	blx	r3
d00813c8:	f7ff ba58 	b.w	d008087c <main+0x41c>
d00813cc:	077b      	lsls	r3, r7, #29
d00813ce:	f57f af32 	bpl.w	d0081236 <main+0xdd6>
d00813d2:	b20a      	sxth	r2, r1
d00813d4:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00813d8:	f6ff aef1 	blt.w	d00811be <main+0xd5e>
d00813dc:	073b      	lsls	r3, r7, #28
d00813de:	f53f af2d 	bmi.w	d008123c <main+0xddc>
d00813e2:	06fb      	lsls	r3, r7, #27
d00813e4:	f57f af37 	bpl.w	d0081256 <main+0xdf6>
d00813e8:	b20b      	sxth	r3, r1
d00813ea:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00813ee:	f6bf af32 	bge.w	d0081256 <main+0xdf6>
d00813f2:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00813f6:	011b      	lsls	r3, r3, #4
d00813f8:	eb0b 0203 	add.w	r2, fp, r3
d00813fc:	f882 60e8 	strb.w	r6, [r2, #232]	; 0xe8
d0081400:	06ba      	lsls	r2, r7, #26
d0081402:	f53f aef3 	bmi.w	d00811ec <main+0xd8c>
d0081406:	067b      	lsls	r3, r7, #25
d0081408:	f57f af36 	bpl.w	d0081278 <main+0xe18>
d008140c:	b20b      	sxth	r3, r1
d008140e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0081412:	f6bf aef7 	bge.w	d0081204 <main+0xda4>
d0081416:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d008141a:	011b      	lsls	r3, r3, #4
d008141c:	e6ec      	b.n	d00811f8 <main+0xd98>
d008141e:	1c41      	adds	r1, r0, #1
d0081420:	b209      	sxth	r1, r1
d0081422:	2900      	cmp	r1, #0
d0081424:	f6ff ac13 	blt.w	d0080c4e <main+0x7ee>
d0081428:	2fef      	cmp	r7, #239	; 0xef
d008142a:	bfd4      	ite	le
d008142c:	2500      	movle	r5, #0
d008142e:	2501      	movgt	r5, #1
d0081430:	e401      	b.n	d0080c36 <main+0x7d6>
d0081432:	1be4      	subs	r4, r4, r7
d0081434:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0081438:	f7ff bbdb 	b.w	d0080bf2 <main+0x792>
d008143c:	ebae 0202 	sub.w	r2, lr, r2
d0081440:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d0081444:	f7ff bbcb 	b.w	d0080bde <main+0x77e>
d0081448:	067a      	lsls	r2, r7, #25
d008144a:	f53f aedb 	bmi.w	d0081204 <main+0xda4>
d008144e:	063f      	lsls	r7, r7, #24
d0081450:	f57f aed8 	bpl.w	d0081204 <main+0xda4>
d0081454:	e712      	b.n	d008127c <main+0xe1c>
d0081456:	3b20      	subs	r3, #32
d0081458:	b2da      	uxtb	r2, r3
d008145a:	2a3a      	cmp	r2, #58	; 0x3a
d008145c:	bf94      	ite	ls
d008145e:	00dc      	lslls	r4, r3, #3
d0081460:	24f8      	movhi	r4, #248	; 0xf8
d0081462:	e679      	b.n	d0081158 <main+0xcf8>
d0081464:	4807      	ldr	r0, [pc, #28]	; (d0081484 <main+0x1024>)
d0081466:	7803      	ldrb	r3, [r0, #0]
d0081468:	7842      	ldrb	r2, [r0, #1]
d008146a:	7881      	ldrb	r1, [r0, #2]
d008146c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0081470:	78c2      	ldrb	r2, [r0, #3]
d0081472:	4808      	ldr	r0, [pc, #32]	; (d0081494 <main+0x1034>)
d0081474:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0081478:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d008147c:	68db      	ldr	r3, [r3, #12]
d008147e:	4798      	blx	r3
d0081480:	2001      	movs	r0, #1
d0081482:	e4c6      	b.n	d0080e12 <main+0x9b2>
d0081484:	2001f000 	.word	0x2001f000
d0081488:	d00963e0 	.word	0xd00963e0
d008148c:	d0096620 	.word	0xd0096620
d0081490:	d00837e0 	.word	0xd00837e0
d0081494:	d0082464 	.word	0xd0082464

d0081498 <__errno>:
d0081498:	4b01      	ldr	r3, [pc, #4]	; (d00814a0 <__errno+0x8>)
d008149a:	6818      	ldr	r0, [r3, #0]
d008149c:	4770      	bx	lr
d008149e:	bf00      	nop
d00814a0:	d0083754 	.word	0xd0083754

d00814a4 <malloc>:
d00814a4:	4b02      	ldr	r3, [pc, #8]	; (d00814b0 <malloc+0xc>)
d00814a6:	4601      	mov	r1, r0
d00814a8:	6818      	ldr	r0, [r3, #0]
d00814aa:	f000 b85b 	b.w	d0081564 <_malloc_r>
d00814ae:	bf00      	nop
d00814b0:	d0083754 	.word	0xd0083754

d00814b4 <memset>:
d00814b4:	4402      	add	r2, r0
d00814b6:	4603      	mov	r3, r0
d00814b8:	4293      	cmp	r3, r2
d00814ba:	d100      	bne.n	d00814be <memset+0xa>
d00814bc:	4770      	bx	lr
d00814be:	f803 1b01 	strb.w	r1, [r3], #1
d00814c2:	e7f9      	b.n	d00814b8 <memset+0x4>

d00814c4 <_free_r>:
d00814c4:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00814c6:	2900      	cmp	r1, #0
d00814c8:	d048      	beq.n	d008155c <_free_r+0x98>
d00814ca:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00814ce:	9001      	str	r0, [sp, #4]
d00814d0:	2b00      	cmp	r3, #0
d00814d2:	f1a1 0404 	sub.w	r4, r1, #4
d00814d6:	bfb8      	it	lt
d00814d8:	18e4      	addlt	r4, r4, r3
d00814da:	f000 fb85 	bl	d0081be8 <__malloc_lock>
d00814de:	4a20      	ldr	r2, [pc, #128]	; (d0081560 <_free_r+0x9c>)
d00814e0:	9801      	ldr	r0, [sp, #4]
d00814e2:	6813      	ldr	r3, [r2, #0]
d00814e4:	4615      	mov	r5, r2
d00814e6:	b933      	cbnz	r3, d00814f6 <_free_r+0x32>
d00814e8:	6063      	str	r3, [r4, #4]
d00814ea:	6014      	str	r4, [r2, #0]
d00814ec:	b003      	add	sp, #12
d00814ee:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00814f2:	f000 bb7f 	b.w	d0081bf4 <__malloc_unlock>
d00814f6:	42a3      	cmp	r3, r4
d00814f8:	d90b      	bls.n	d0081512 <_free_r+0x4e>
d00814fa:	6821      	ldr	r1, [r4, #0]
d00814fc:	1862      	adds	r2, r4, r1
d00814fe:	4293      	cmp	r3, r2
d0081500:	bf04      	itt	eq
d0081502:	681a      	ldreq	r2, [r3, #0]
d0081504:	685b      	ldreq	r3, [r3, #4]
d0081506:	6063      	str	r3, [r4, #4]
d0081508:	bf04      	itt	eq
d008150a:	1852      	addeq	r2, r2, r1
d008150c:	6022      	streq	r2, [r4, #0]
d008150e:	602c      	str	r4, [r5, #0]
d0081510:	e7ec      	b.n	d00814ec <_free_r+0x28>
d0081512:	461a      	mov	r2, r3
d0081514:	685b      	ldr	r3, [r3, #4]
d0081516:	b10b      	cbz	r3, d008151c <_free_r+0x58>
d0081518:	42a3      	cmp	r3, r4
d008151a:	d9fa      	bls.n	d0081512 <_free_r+0x4e>
d008151c:	6811      	ldr	r1, [r2, #0]
d008151e:	1855      	adds	r5, r2, r1
d0081520:	42a5      	cmp	r5, r4
d0081522:	d10b      	bne.n	d008153c <_free_r+0x78>
d0081524:	6824      	ldr	r4, [r4, #0]
d0081526:	4421      	add	r1, r4
d0081528:	1854      	adds	r4, r2, r1
d008152a:	42a3      	cmp	r3, r4
d008152c:	6011      	str	r1, [r2, #0]
d008152e:	d1dd      	bne.n	d00814ec <_free_r+0x28>
d0081530:	681c      	ldr	r4, [r3, #0]
d0081532:	685b      	ldr	r3, [r3, #4]
d0081534:	6053      	str	r3, [r2, #4]
d0081536:	4421      	add	r1, r4
d0081538:	6011      	str	r1, [r2, #0]
d008153a:	e7d7      	b.n	d00814ec <_free_r+0x28>
d008153c:	d902      	bls.n	d0081544 <_free_r+0x80>
d008153e:	230c      	movs	r3, #12
d0081540:	6003      	str	r3, [r0, #0]
d0081542:	e7d3      	b.n	d00814ec <_free_r+0x28>
d0081544:	6825      	ldr	r5, [r4, #0]
d0081546:	1961      	adds	r1, r4, r5
d0081548:	428b      	cmp	r3, r1
d008154a:	bf04      	itt	eq
d008154c:	6819      	ldreq	r1, [r3, #0]
d008154e:	685b      	ldreq	r3, [r3, #4]
d0081550:	6063      	str	r3, [r4, #4]
d0081552:	bf04      	itt	eq
d0081554:	1949      	addeq	r1, r1, r5
d0081556:	6021      	streq	r1, [r4, #0]
d0081558:	6054      	str	r4, [r2, #4]
d008155a:	e7c7      	b.n	d00814ec <_free_r+0x28>
d008155c:	b003      	add	sp, #12
d008155e:	bd30      	pop	{r4, r5, pc}
d0081560:	d00965f8 	.word	0xd00965f8

d0081564 <_malloc_r>:
d0081564:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081566:	1ccd      	adds	r5, r1, #3
d0081568:	f025 0503 	bic.w	r5, r5, #3
d008156c:	3508      	adds	r5, #8
d008156e:	2d0c      	cmp	r5, #12
d0081570:	bf38      	it	cc
d0081572:	250c      	movcc	r5, #12
d0081574:	2d00      	cmp	r5, #0
d0081576:	4606      	mov	r6, r0
d0081578:	db01      	blt.n	d008157e <_malloc_r+0x1a>
d008157a:	42a9      	cmp	r1, r5
d008157c:	d903      	bls.n	d0081586 <_malloc_r+0x22>
d008157e:	230c      	movs	r3, #12
d0081580:	6033      	str	r3, [r6, #0]
d0081582:	2000      	movs	r0, #0
d0081584:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081586:	f000 fb2f 	bl	d0081be8 <__malloc_lock>
d008158a:	4921      	ldr	r1, [pc, #132]	; (d0081610 <_malloc_r+0xac>)
d008158c:	680a      	ldr	r2, [r1, #0]
d008158e:	4614      	mov	r4, r2
d0081590:	b99c      	cbnz	r4, d00815ba <_malloc_r+0x56>
d0081592:	4f20      	ldr	r7, [pc, #128]	; (d0081614 <_malloc_r+0xb0>)
d0081594:	683b      	ldr	r3, [r7, #0]
d0081596:	b923      	cbnz	r3, d00815a2 <_malloc_r+0x3e>
d0081598:	4621      	mov	r1, r4
d008159a:	4630      	mov	r0, r6
d008159c:	f7fe fdae 	bl	d00800fc <_sbrk_r>
d00815a0:	6038      	str	r0, [r7, #0]
d00815a2:	4629      	mov	r1, r5
d00815a4:	4630      	mov	r0, r6
d00815a6:	f7fe fda9 	bl	d00800fc <_sbrk_r>
d00815aa:	1c43      	adds	r3, r0, #1
d00815ac:	d123      	bne.n	d00815f6 <_malloc_r+0x92>
d00815ae:	230c      	movs	r3, #12
d00815b0:	6033      	str	r3, [r6, #0]
d00815b2:	4630      	mov	r0, r6
d00815b4:	f000 fb1e 	bl	d0081bf4 <__malloc_unlock>
d00815b8:	e7e3      	b.n	d0081582 <_malloc_r+0x1e>
d00815ba:	6823      	ldr	r3, [r4, #0]
d00815bc:	1b5b      	subs	r3, r3, r5
d00815be:	d417      	bmi.n	d00815f0 <_malloc_r+0x8c>
d00815c0:	2b0b      	cmp	r3, #11
d00815c2:	d903      	bls.n	d00815cc <_malloc_r+0x68>
d00815c4:	6023      	str	r3, [r4, #0]
d00815c6:	441c      	add	r4, r3
d00815c8:	6025      	str	r5, [r4, #0]
d00815ca:	e004      	b.n	d00815d6 <_malloc_r+0x72>
d00815cc:	6863      	ldr	r3, [r4, #4]
d00815ce:	42a2      	cmp	r2, r4
d00815d0:	bf0c      	ite	eq
d00815d2:	600b      	streq	r3, [r1, #0]
d00815d4:	6053      	strne	r3, [r2, #4]
d00815d6:	4630      	mov	r0, r6
d00815d8:	f000 fb0c 	bl	d0081bf4 <__malloc_unlock>
d00815dc:	f104 000b 	add.w	r0, r4, #11
d00815e0:	1d23      	adds	r3, r4, #4
d00815e2:	f020 0007 	bic.w	r0, r0, #7
d00815e6:	1ac2      	subs	r2, r0, r3
d00815e8:	d0cc      	beq.n	d0081584 <_malloc_r+0x20>
d00815ea:	1a1b      	subs	r3, r3, r0
d00815ec:	50a3      	str	r3, [r4, r2]
d00815ee:	e7c9      	b.n	d0081584 <_malloc_r+0x20>
d00815f0:	4622      	mov	r2, r4
d00815f2:	6864      	ldr	r4, [r4, #4]
d00815f4:	e7cc      	b.n	d0081590 <_malloc_r+0x2c>
d00815f6:	1cc4      	adds	r4, r0, #3
d00815f8:	f024 0403 	bic.w	r4, r4, #3
d00815fc:	42a0      	cmp	r0, r4
d00815fe:	d0e3      	beq.n	d00815c8 <_malloc_r+0x64>
d0081600:	1a21      	subs	r1, r4, r0
d0081602:	4630      	mov	r0, r6
d0081604:	f7fe fd7a 	bl	d00800fc <_sbrk_r>
d0081608:	3001      	adds	r0, #1
d008160a:	d1dd      	bne.n	d00815c8 <_malloc_r+0x64>
d008160c:	e7cf      	b.n	d00815ae <_malloc_r+0x4a>
d008160e:	bf00      	nop
d0081610:	d00965f8 	.word	0xd00965f8
d0081614:	d00965fc 	.word	0xd00965fc

d0081618 <setbuf>:
d0081618:	2900      	cmp	r1, #0
d008161a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d008161e:	bf0c      	ite	eq
d0081620:	2202      	moveq	r2, #2
d0081622:	2200      	movne	r2, #0
d0081624:	f000 b800 	b.w	d0081628 <setvbuf>

d0081628 <setvbuf>:
d0081628:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d008162c:	461d      	mov	r5, r3
d008162e:	4b5d      	ldr	r3, [pc, #372]	; (d00817a4 <setvbuf+0x17c>)
d0081630:	681f      	ldr	r7, [r3, #0]
d0081632:	4604      	mov	r4, r0
d0081634:	460e      	mov	r6, r1
d0081636:	4690      	mov	r8, r2
d0081638:	b127      	cbz	r7, d0081644 <setvbuf+0x1c>
d008163a:	69bb      	ldr	r3, [r7, #24]
d008163c:	b913      	cbnz	r3, d0081644 <setvbuf+0x1c>
d008163e:	4638      	mov	r0, r7
d0081640:	f000 fa0e 	bl	d0081a60 <__sinit>
d0081644:	4b58      	ldr	r3, [pc, #352]	; (d00817a8 <setvbuf+0x180>)
d0081646:	429c      	cmp	r4, r3
d0081648:	d167      	bne.n	d008171a <setvbuf+0xf2>
d008164a:	687c      	ldr	r4, [r7, #4]
d008164c:	f1b8 0f02 	cmp.w	r8, #2
d0081650:	d006      	beq.n	d0081660 <setvbuf+0x38>
d0081652:	f1b8 0f01 	cmp.w	r8, #1
d0081656:	f200 809f 	bhi.w	d0081798 <setvbuf+0x170>
d008165a:	2d00      	cmp	r5, #0
d008165c:	f2c0 809c 	blt.w	d0081798 <setvbuf+0x170>
d0081660:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0081662:	07db      	lsls	r3, r3, #31
d0081664:	d405      	bmi.n	d0081672 <setvbuf+0x4a>
d0081666:	89a3      	ldrh	r3, [r4, #12]
d0081668:	0598      	lsls	r0, r3, #22
d008166a:	d402      	bmi.n	d0081672 <setvbuf+0x4a>
d008166c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008166e:	f000 fa95 	bl	d0081b9c <__retarget_lock_acquire_recursive>
d0081672:	4621      	mov	r1, r4
d0081674:	4638      	mov	r0, r7
d0081676:	f000 f95f 	bl	d0081938 <_fflush_r>
d008167a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d008167c:	b141      	cbz	r1, d0081690 <setvbuf+0x68>
d008167e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0081682:	4299      	cmp	r1, r3
d0081684:	d002      	beq.n	d008168c <setvbuf+0x64>
d0081686:	4638      	mov	r0, r7
d0081688:	f7ff ff1c 	bl	d00814c4 <_free_r>
d008168c:	2300      	movs	r3, #0
d008168e:	6363      	str	r3, [r4, #52]	; 0x34
d0081690:	2300      	movs	r3, #0
d0081692:	61a3      	str	r3, [r4, #24]
d0081694:	6063      	str	r3, [r4, #4]
d0081696:	89a3      	ldrh	r3, [r4, #12]
d0081698:	0619      	lsls	r1, r3, #24
d008169a:	d503      	bpl.n	d00816a4 <setvbuf+0x7c>
d008169c:	6921      	ldr	r1, [r4, #16]
d008169e:	4638      	mov	r0, r7
d00816a0:	f7ff ff10 	bl	d00814c4 <_free_r>
d00816a4:	89a3      	ldrh	r3, [r4, #12]
d00816a6:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00816aa:	f023 0303 	bic.w	r3, r3, #3
d00816ae:	f1b8 0f02 	cmp.w	r8, #2
d00816b2:	81a3      	strh	r3, [r4, #12]
d00816b4:	d06c      	beq.n	d0081790 <setvbuf+0x168>
d00816b6:	ab01      	add	r3, sp, #4
d00816b8:	466a      	mov	r2, sp
d00816ba:	4621      	mov	r1, r4
d00816bc:	4638      	mov	r0, r7
d00816be:	f000 fa6f 	bl	d0081ba0 <__swhatbuf_r>
d00816c2:	89a3      	ldrh	r3, [r4, #12]
d00816c4:	4318      	orrs	r0, r3
d00816c6:	81a0      	strh	r0, [r4, #12]
d00816c8:	2d00      	cmp	r5, #0
d00816ca:	d130      	bne.n	d008172e <setvbuf+0x106>
d00816cc:	9d00      	ldr	r5, [sp, #0]
d00816ce:	4628      	mov	r0, r5
d00816d0:	f7ff fee8 	bl	d00814a4 <malloc>
d00816d4:	4606      	mov	r6, r0
d00816d6:	2800      	cmp	r0, #0
d00816d8:	d155      	bne.n	d0081786 <setvbuf+0x15e>
d00816da:	f8dd 9000 	ldr.w	r9, [sp]
d00816de:	45a9      	cmp	r9, r5
d00816e0:	d14a      	bne.n	d0081778 <setvbuf+0x150>
d00816e2:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00816e6:	2200      	movs	r2, #0
d00816e8:	60a2      	str	r2, [r4, #8]
d00816ea:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00816ee:	6022      	str	r2, [r4, #0]
d00816f0:	6122      	str	r2, [r4, #16]
d00816f2:	2201      	movs	r2, #1
d00816f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00816f8:	6162      	str	r2, [r4, #20]
d00816fa:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00816fc:	f043 0302 	orr.w	r3, r3, #2
d0081700:	07d2      	lsls	r2, r2, #31
d0081702:	81a3      	strh	r3, [r4, #12]
d0081704:	d405      	bmi.n	d0081712 <setvbuf+0xea>
d0081706:	f413 7f00 	tst.w	r3, #512	; 0x200
d008170a:	d102      	bne.n	d0081712 <setvbuf+0xea>
d008170c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008170e:	f000 fa46 	bl	d0081b9e <__retarget_lock_release_recursive>
d0081712:	4628      	mov	r0, r5
d0081714:	b003      	add	sp, #12
d0081716:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d008171a:	4b24      	ldr	r3, [pc, #144]	; (d00817ac <setvbuf+0x184>)
d008171c:	429c      	cmp	r4, r3
d008171e:	d101      	bne.n	d0081724 <setvbuf+0xfc>
d0081720:	68bc      	ldr	r4, [r7, #8]
d0081722:	e793      	b.n	d008164c <setvbuf+0x24>
d0081724:	4b22      	ldr	r3, [pc, #136]	; (d00817b0 <setvbuf+0x188>)
d0081726:	429c      	cmp	r4, r3
d0081728:	bf08      	it	eq
d008172a:	68fc      	ldreq	r4, [r7, #12]
d008172c:	e78e      	b.n	d008164c <setvbuf+0x24>
d008172e:	2e00      	cmp	r6, #0
d0081730:	d0cd      	beq.n	d00816ce <setvbuf+0xa6>
d0081732:	69bb      	ldr	r3, [r7, #24]
d0081734:	b913      	cbnz	r3, d008173c <setvbuf+0x114>
d0081736:	4638      	mov	r0, r7
d0081738:	f000 f992 	bl	d0081a60 <__sinit>
d008173c:	f1b8 0f01 	cmp.w	r8, #1
d0081740:	bf08      	it	eq
d0081742:	89a3      	ldrheq	r3, [r4, #12]
d0081744:	6026      	str	r6, [r4, #0]
d0081746:	bf04      	itt	eq
d0081748:	f043 0301 	orreq.w	r3, r3, #1
d008174c:	81a3      	strheq	r3, [r4, #12]
d008174e:	89a2      	ldrh	r2, [r4, #12]
d0081750:	f012 0308 	ands.w	r3, r2, #8
d0081754:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0081758:	d01c      	beq.n	d0081794 <setvbuf+0x16c>
d008175a:	07d3      	lsls	r3, r2, #31
d008175c:	bf41      	itttt	mi
d008175e:	2300      	movmi	r3, #0
d0081760:	426d      	negmi	r5, r5
d0081762:	60a3      	strmi	r3, [r4, #8]
d0081764:	61a5      	strmi	r5, [r4, #24]
d0081766:	bf58      	it	pl
d0081768:	60a5      	strpl	r5, [r4, #8]
d008176a:	6e65      	ldr	r5, [r4, #100]	; 0x64
d008176c:	f015 0501 	ands.w	r5, r5, #1
d0081770:	d115      	bne.n	d008179e <setvbuf+0x176>
d0081772:	f412 7f00 	tst.w	r2, #512	; 0x200
d0081776:	e7c8      	b.n	d008170a <setvbuf+0xe2>
d0081778:	4648      	mov	r0, r9
d008177a:	f7ff fe93 	bl	d00814a4 <malloc>
d008177e:	4606      	mov	r6, r0
d0081780:	2800      	cmp	r0, #0
d0081782:	d0ae      	beq.n	d00816e2 <setvbuf+0xba>
d0081784:	464d      	mov	r5, r9
d0081786:	89a3      	ldrh	r3, [r4, #12]
d0081788:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d008178c:	81a3      	strh	r3, [r4, #12]
d008178e:	e7d0      	b.n	d0081732 <setvbuf+0x10a>
d0081790:	2500      	movs	r5, #0
d0081792:	e7a8      	b.n	d00816e6 <setvbuf+0xbe>
d0081794:	60a3      	str	r3, [r4, #8]
d0081796:	e7e8      	b.n	d008176a <setvbuf+0x142>
d0081798:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d008179c:	e7b9      	b.n	d0081712 <setvbuf+0xea>
d008179e:	2500      	movs	r5, #0
d00817a0:	e7b7      	b.n	d0081712 <setvbuf+0xea>
d00817a2:	bf00      	nop
d00817a4:	d0083754 	.word	0xd0083754
d00817a8:	d00836d4 	.word	0xd00836d4
d00817ac:	d00836f4 	.word	0xd00836f4
d00817b0:	d00836b4 	.word	0xd00836b4

d00817b4 <sniprintf>:
d00817b4:	b40c      	push	{r2, r3}
d00817b6:	b530      	push	{r4, r5, lr}
d00817b8:	4b17      	ldr	r3, [pc, #92]	; (d0081818 <sniprintf+0x64>)
d00817ba:	1e0c      	subs	r4, r1, #0
d00817bc:	681d      	ldr	r5, [r3, #0]
d00817be:	b09d      	sub	sp, #116	; 0x74
d00817c0:	da08      	bge.n	d00817d4 <sniprintf+0x20>
d00817c2:	238b      	movs	r3, #139	; 0x8b
d00817c4:	602b      	str	r3, [r5, #0]
d00817c6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00817ca:	b01d      	add	sp, #116	; 0x74
d00817cc:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00817d0:	b002      	add	sp, #8
d00817d2:	4770      	bx	lr
d00817d4:	f44f 7302 	mov.w	r3, #520	; 0x208
d00817d8:	f8ad 3014 	strh.w	r3, [sp, #20]
d00817dc:	bf14      	ite	ne
d00817de:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d00817e2:	4623      	moveq	r3, r4
d00817e4:	9304      	str	r3, [sp, #16]
d00817e6:	9307      	str	r3, [sp, #28]
d00817e8:	f64f 73ff 	movw	r3, #65535	; 0xffff
d00817ec:	9002      	str	r0, [sp, #8]
d00817ee:	9006      	str	r0, [sp, #24]
d00817f0:	f8ad 3016 	strh.w	r3, [sp, #22]
d00817f4:	9a20      	ldr	r2, [sp, #128]	; 0x80
d00817f6:	ab21      	add	r3, sp, #132	; 0x84
d00817f8:	a902      	add	r1, sp, #8
d00817fa:	4628      	mov	r0, r5
d00817fc:	9301      	str	r3, [sp, #4]
d00817fe:	f000 fa5b 	bl	d0081cb8 <_svfiprintf_r>
d0081802:	1c43      	adds	r3, r0, #1
d0081804:	bfbc      	itt	lt
d0081806:	238b      	movlt	r3, #139	; 0x8b
d0081808:	602b      	strlt	r3, [r5, #0]
d008180a:	2c00      	cmp	r4, #0
d008180c:	d0dd      	beq.n	d00817ca <sniprintf+0x16>
d008180e:	9b02      	ldr	r3, [sp, #8]
d0081810:	2200      	movs	r2, #0
d0081812:	701a      	strb	r2, [r3, #0]
d0081814:	e7d9      	b.n	d00817ca <sniprintf+0x16>
d0081816:	bf00      	nop
d0081818:	d0083754 	.word	0xd0083754

d008181c <strlen>:
d008181c:	4603      	mov	r3, r0
d008181e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081822:	2a00      	cmp	r2, #0
d0081824:	d1fb      	bne.n	d008181e <strlen+0x2>
d0081826:	1a18      	subs	r0, r3, r0
d0081828:	3801      	subs	r0, #1
d008182a:	4770      	bx	lr

d008182c <__sflush_r>:
d008182c:	898a      	ldrh	r2, [r1, #12]
d008182e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0081832:	4605      	mov	r5, r0
d0081834:	0710      	lsls	r0, r2, #28
d0081836:	460c      	mov	r4, r1
d0081838:	d458      	bmi.n	d00818ec <__sflush_r+0xc0>
d008183a:	684b      	ldr	r3, [r1, #4]
d008183c:	2b00      	cmp	r3, #0
d008183e:	dc05      	bgt.n	d008184c <__sflush_r+0x20>
d0081840:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0081842:	2b00      	cmp	r3, #0
d0081844:	dc02      	bgt.n	d008184c <__sflush_r+0x20>
d0081846:	2000      	movs	r0, #0
d0081848:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d008184c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d008184e:	2e00      	cmp	r6, #0
d0081850:	d0f9      	beq.n	d0081846 <__sflush_r+0x1a>
d0081852:	2300      	movs	r3, #0
d0081854:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0081858:	682f      	ldr	r7, [r5, #0]
d008185a:	602b      	str	r3, [r5, #0]
d008185c:	d032      	beq.n	d00818c4 <__sflush_r+0x98>
d008185e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0081860:	89a3      	ldrh	r3, [r4, #12]
d0081862:	075a      	lsls	r2, r3, #29
d0081864:	d505      	bpl.n	d0081872 <__sflush_r+0x46>
d0081866:	6863      	ldr	r3, [r4, #4]
d0081868:	1ac0      	subs	r0, r0, r3
d008186a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d008186c:	b10b      	cbz	r3, d0081872 <__sflush_r+0x46>
d008186e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0081870:	1ac0      	subs	r0, r0, r3
d0081872:	2300      	movs	r3, #0
d0081874:	4602      	mov	r2, r0
d0081876:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0081878:	6a21      	ldr	r1, [r4, #32]
d008187a:	4628      	mov	r0, r5
d008187c:	47b0      	blx	r6
d008187e:	1c43      	adds	r3, r0, #1
d0081880:	89a3      	ldrh	r3, [r4, #12]
d0081882:	d106      	bne.n	d0081892 <__sflush_r+0x66>
d0081884:	6829      	ldr	r1, [r5, #0]
d0081886:	291d      	cmp	r1, #29
d0081888:	d82c      	bhi.n	d00818e4 <__sflush_r+0xb8>
d008188a:	4a2a      	ldr	r2, [pc, #168]	; (d0081934 <__sflush_r+0x108>)
d008188c:	40ca      	lsrs	r2, r1
d008188e:	07d6      	lsls	r6, r2, #31
d0081890:	d528      	bpl.n	d00818e4 <__sflush_r+0xb8>
d0081892:	2200      	movs	r2, #0
d0081894:	6062      	str	r2, [r4, #4]
d0081896:	04d9      	lsls	r1, r3, #19
d0081898:	6922      	ldr	r2, [r4, #16]
d008189a:	6022      	str	r2, [r4, #0]
d008189c:	d504      	bpl.n	d00818a8 <__sflush_r+0x7c>
d008189e:	1c42      	adds	r2, r0, #1
d00818a0:	d101      	bne.n	d00818a6 <__sflush_r+0x7a>
d00818a2:	682b      	ldr	r3, [r5, #0]
d00818a4:	b903      	cbnz	r3, d00818a8 <__sflush_r+0x7c>
d00818a6:	6560      	str	r0, [r4, #84]	; 0x54
d00818a8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00818aa:	602f      	str	r7, [r5, #0]
d00818ac:	2900      	cmp	r1, #0
d00818ae:	d0ca      	beq.n	d0081846 <__sflush_r+0x1a>
d00818b0:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00818b4:	4299      	cmp	r1, r3
d00818b6:	d002      	beq.n	d00818be <__sflush_r+0x92>
d00818b8:	4628      	mov	r0, r5
d00818ba:	f7ff fe03 	bl	d00814c4 <_free_r>
d00818be:	2000      	movs	r0, #0
d00818c0:	6360      	str	r0, [r4, #52]	; 0x34
d00818c2:	e7c1      	b.n	d0081848 <__sflush_r+0x1c>
d00818c4:	6a21      	ldr	r1, [r4, #32]
d00818c6:	2301      	movs	r3, #1
d00818c8:	4628      	mov	r0, r5
d00818ca:	47b0      	blx	r6
d00818cc:	1c41      	adds	r1, r0, #1
d00818ce:	d1c7      	bne.n	d0081860 <__sflush_r+0x34>
d00818d0:	682b      	ldr	r3, [r5, #0]
d00818d2:	2b00      	cmp	r3, #0
d00818d4:	d0c4      	beq.n	d0081860 <__sflush_r+0x34>
d00818d6:	2b1d      	cmp	r3, #29
d00818d8:	d001      	beq.n	d00818de <__sflush_r+0xb2>
d00818da:	2b16      	cmp	r3, #22
d00818dc:	d101      	bne.n	d00818e2 <__sflush_r+0xb6>
d00818de:	602f      	str	r7, [r5, #0]
d00818e0:	e7b1      	b.n	d0081846 <__sflush_r+0x1a>
d00818e2:	89a3      	ldrh	r3, [r4, #12]
d00818e4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00818e8:	81a3      	strh	r3, [r4, #12]
d00818ea:	e7ad      	b.n	d0081848 <__sflush_r+0x1c>
d00818ec:	690f      	ldr	r7, [r1, #16]
d00818ee:	2f00      	cmp	r7, #0
d00818f0:	d0a9      	beq.n	d0081846 <__sflush_r+0x1a>
d00818f2:	0793      	lsls	r3, r2, #30
d00818f4:	680e      	ldr	r6, [r1, #0]
d00818f6:	bf08      	it	eq
d00818f8:	694b      	ldreq	r3, [r1, #20]
d00818fa:	600f      	str	r7, [r1, #0]
d00818fc:	bf18      	it	ne
d00818fe:	2300      	movne	r3, #0
d0081900:	eba6 0807 	sub.w	r8, r6, r7
d0081904:	608b      	str	r3, [r1, #8]
d0081906:	f1b8 0f00 	cmp.w	r8, #0
d008190a:	dd9c      	ble.n	d0081846 <__sflush_r+0x1a>
d008190c:	6a21      	ldr	r1, [r4, #32]
d008190e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0081910:	4643      	mov	r3, r8
d0081912:	463a      	mov	r2, r7
d0081914:	4628      	mov	r0, r5
d0081916:	47b0      	blx	r6
d0081918:	2800      	cmp	r0, #0
d008191a:	dc06      	bgt.n	d008192a <__sflush_r+0xfe>
d008191c:	89a3      	ldrh	r3, [r4, #12]
d008191e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081922:	81a3      	strh	r3, [r4, #12]
d0081924:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081928:	e78e      	b.n	d0081848 <__sflush_r+0x1c>
d008192a:	4407      	add	r7, r0
d008192c:	eba8 0800 	sub.w	r8, r8, r0
d0081930:	e7e9      	b.n	d0081906 <__sflush_r+0xda>
d0081932:	bf00      	nop
d0081934:	20400001 	.word	0x20400001

d0081938 <_fflush_r>:
d0081938:	b538      	push	{r3, r4, r5, lr}
d008193a:	690b      	ldr	r3, [r1, #16]
d008193c:	4605      	mov	r5, r0
d008193e:	460c      	mov	r4, r1
d0081940:	b913      	cbnz	r3, d0081948 <_fflush_r+0x10>
d0081942:	2500      	movs	r5, #0
d0081944:	4628      	mov	r0, r5
d0081946:	bd38      	pop	{r3, r4, r5, pc}
d0081948:	b118      	cbz	r0, d0081952 <_fflush_r+0x1a>
d008194a:	6983      	ldr	r3, [r0, #24]
d008194c:	b90b      	cbnz	r3, d0081952 <_fflush_r+0x1a>
d008194e:	f000 f887 	bl	d0081a60 <__sinit>
d0081952:	4b14      	ldr	r3, [pc, #80]	; (d00819a4 <_fflush_r+0x6c>)
d0081954:	429c      	cmp	r4, r3
d0081956:	d11b      	bne.n	d0081990 <_fflush_r+0x58>
d0081958:	686c      	ldr	r4, [r5, #4]
d008195a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d008195e:	2b00      	cmp	r3, #0
d0081960:	d0ef      	beq.n	d0081942 <_fflush_r+0xa>
d0081962:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0081964:	07d0      	lsls	r0, r2, #31
d0081966:	d404      	bmi.n	d0081972 <_fflush_r+0x3a>
d0081968:	0599      	lsls	r1, r3, #22
d008196a:	d402      	bmi.n	d0081972 <_fflush_r+0x3a>
d008196c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008196e:	f000 f915 	bl	d0081b9c <__retarget_lock_acquire_recursive>
d0081972:	4628      	mov	r0, r5
d0081974:	4621      	mov	r1, r4
d0081976:	f7ff ff59 	bl	d008182c <__sflush_r>
d008197a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d008197c:	07da      	lsls	r2, r3, #31
d008197e:	4605      	mov	r5, r0
d0081980:	d4e0      	bmi.n	d0081944 <_fflush_r+0xc>
d0081982:	89a3      	ldrh	r3, [r4, #12]
d0081984:	059b      	lsls	r3, r3, #22
d0081986:	d4dd      	bmi.n	d0081944 <_fflush_r+0xc>
d0081988:	6da0      	ldr	r0, [r4, #88]	; 0x58
d008198a:	f000 f908 	bl	d0081b9e <__retarget_lock_release_recursive>
d008198e:	e7d9      	b.n	d0081944 <_fflush_r+0xc>
d0081990:	4b05      	ldr	r3, [pc, #20]	; (d00819a8 <_fflush_r+0x70>)
d0081992:	429c      	cmp	r4, r3
d0081994:	d101      	bne.n	d008199a <_fflush_r+0x62>
d0081996:	68ac      	ldr	r4, [r5, #8]
d0081998:	e7df      	b.n	d008195a <_fflush_r+0x22>
d008199a:	4b04      	ldr	r3, [pc, #16]	; (d00819ac <_fflush_r+0x74>)
d008199c:	429c      	cmp	r4, r3
d008199e:	bf08      	it	eq
d00819a0:	68ec      	ldreq	r4, [r5, #12]
d00819a2:	e7da      	b.n	d008195a <_fflush_r+0x22>
d00819a4:	d00836d4 	.word	0xd00836d4
d00819a8:	d00836f4 	.word	0xd00836f4
d00819ac:	d00836b4 	.word	0xd00836b4

d00819b0 <std>:
d00819b0:	2300      	movs	r3, #0
d00819b2:	b510      	push	{r4, lr}
d00819b4:	4604      	mov	r4, r0
d00819b6:	e9c0 3300 	strd	r3, r3, [r0]
d00819ba:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00819be:	6083      	str	r3, [r0, #8]
d00819c0:	8181      	strh	r1, [r0, #12]
d00819c2:	6643      	str	r3, [r0, #100]	; 0x64
d00819c4:	81c2      	strh	r2, [r0, #14]
d00819c6:	6183      	str	r3, [r0, #24]
d00819c8:	4619      	mov	r1, r3
d00819ca:	2208      	movs	r2, #8
d00819cc:	305c      	adds	r0, #92	; 0x5c
d00819ce:	f7ff fd71 	bl	d00814b4 <memset>
d00819d2:	4b05      	ldr	r3, [pc, #20]	; (d00819e8 <std+0x38>)
d00819d4:	6263      	str	r3, [r4, #36]	; 0x24
d00819d6:	4b05      	ldr	r3, [pc, #20]	; (d00819ec <std+0x3c>)
d00819d8:	62a3      	str	r3, [r4, #40]	; 0x28
d00819da:	4b05      	ldr	r3, [pc, #20]	; (d00819f0 <std+0x40>)
d00819dc:	62e3      	str	r3, [r4, #44]	; 0x2c
d00819de:	4b05      	ldr	r3, [pc, #20]	; (d00819f4 <std+0x44>)
d00819e0:	6224      	str	r4, [r4, #32]
d00819e2:	6323      	str	r3, [r4, #48]	; 0x30
d00819e4:	bd10      	pop	{r4, pc}
d00819e6:	bf00      	nop
d00819e8:	d00821e1 	.word	0xd00821e1
d00819ec:	d0082203 	.word	0xd0082203
d00819f0:	d008223b 	.word	0xd008223b
d00819f4:	d008225f 	.word	0xd008225f

d00819f8 <_cleanup_r>:
d00819f8:	4901      	ldr	r1, [pc, #4]	; (d0081a00 <_cleanup_r+0x8>)
d00819fa:	f000 b8af 	b.w	d0081b5c <_fwalk_reent>
d00819fe:	bf00      	nop
d0081a00:	d0081939 	.word	0xd0081939

d0081a04 <__sfmoreglue>:
d0081a04:	b570      	push	{r4, r5, r6, lr}
d0081a06:	1e4a      	subs	r2, r1, #1
d0081a08:	2568      	movs	r5, #104	; 0x68
d0081a0a:	4355      	muls	r5, r2
d0081a0c:	460e      	mov	r6, r1
d0081a0e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0081a12:	f7ff fda7 	bl	d0081564 <_malloc_r>
d0081a16:	4604      	mov	r4, r0
d0081a18:	b140      	cbz	r0, d0081a2c <__sfmoreglue+0x28>
d0081a1a:	2100      	movs	r1, #0
d0081a1c:	e9c0 1600 	strd	r1, r6, [r0]
d0081a20:	300c      	adds	r0, #12
d0081a22:	60a0      	str	r0, [r4, #8]
d0081a24:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0081a28:	f7ff fd44 	bl	d00814b4 <memset>
d0081a2c:	4620      	mov	r0, r4
d0081a2e:	bd70      	pop	{r4, r5, r6, pc}

d0081a30 <__sfp_lock_acquire>:
d0081a30:	4801      	ldr	r0, [pc, #4]	; (d0081a38 <__sfp_lock_acquire+0x8>)
d0081a32:	f000 b8b3 	b.w	d0081b9c <__retarget_lock_acquire_recursive>
d0081a36:	bf00      	nop
d0081a38:	d0096634 	.word	0xd0096634

d0081a3c <__sfp_lock_release>:
d0081a3c:	4801      	ldr	r0, [pc, #4]	; (d0081a44 <__sfp_lock_release+0x8>)
d0081a3e:	f000 b8ae 	b.w	d0081b9e <__retarget_lock_release_recursive>
d0081a42:	bf00      	nop
d0081a44:	d0096634 	.word	0xd0096634

d0081a48 <__sinit_lock_acquire>:
d0081a48:	4801      	ldr	r0, [pc, #4]	; (d0081a50 <__sinit_lock_acquire+0x8>)
d0081a4a:	f000 b8a7 	b.w	d0081b9c <__retarget_lock_acquire_recursive>
d0081a4e:	bf00      	nop
d0081a50:	d009662f 	.word	0xd009662f

d0081a54 <__sinit_lock_release>:
d0081a54:	4801      	ldr	r0, [pc, #4]	; (d0081a5c <__sinit_lock_release+0x8>)
d0081a56:	f000 b8a2 	b.w	d0081b9e <__retarget_lock_release_recursive>
d0081a5a:	bf00      	nop
d0081a5c:	d009662f 	.word	0xd009662f

d0081a60 <__sinit>:
d0081a60:	b510      	push	{r4, lr}
d0081a62:	4604      	mov	r4, r0
d0081a64:	f7ff fff0 	bl	d0081a48 <__sinit_lock_acquire>
d0081a68:	69a3      	ldr	r3, [r4, #24]
d0081a6a:	b11b      	cbz	r3, d0081a74 <__sinit+0x14>
d0081a6c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0081a70:	f7ff bff0 	b.w	d0081a54 <__sinit_lock_release>
d0081a74:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0081a78:	6523      	str	r3, [r4, #80]	; 0x50
d0081a7a:	4b13      	ldr	r3, [pc, #76]	; (d0081ac8 <__sinit+0x68>)
d0081a7c:	4a13      	ldr	r2, [pc, #76]	; (d0081acc <__sinit+0x6c>)
d0081a7e:	681b      	ldr	r3, [r3, #0]
d0081a80:	62a2      	str	r2, [r4, #40]	; 0x28
d0081a82:	42a3      	cmp	r3, r4
d0081a84:	bf04      	itt	eq
d0081a86:	2301      	moveq	r3, #1
d0081a88:	61a3      	streq	r3, [r4, #24]
d0081a8a:	4620      	mov	r0, r4
d0081a8c:	f000 f820 	bl	d0081ad0 <__sfp>
d0081a90:	6060      	str	r0, [r4, #4]
d0081a92:	4620      	mov	r0, r4
d0081a94:	f000 f81c 	bl	d0081ad0 <__sfp>
d0081a98:	60a0      	str	r0, [r4, #8]
d0081a9a:	4620      	mov	r0, r4
d0081a9c:	f000 f818 	bl	d0081ad0 <__sfp>
d0081aa0:	2200      	movs	r2, #0
d0081aa2:	60e0      	str	r0, [r4, #12]
d0081aa4:	2104      	movs	r1, #4
d0081aa6:	6860      	ldr	r0, [r4, #4]
d0081aa8:	f7ff ff82 	bl	d00819b0 <std>
d0081aac:	68a0      	ldr	r0, [r4, #8]
d0081aae:	2201      	movs	r2, #1
d0081ab0:	2109      	movs	r1, #9
d0081ab2:	f7ff ff7d 	bl	d00819b0 <std>
d0081ab6:	68e0      	ldr	r0, [r4, #12]
d0081ab8:	2202      	movs	r2, #2
d0081aba:	2112      	movs	r1, #18
d0081abc:	f7ff ff78 	bl	d00819b0 <std>
d0081ac0:	2301      	movs	r3, #1
d0081ac2:	61a3      	str	r3, [r4, #24]
d0081ac4:	e7d2      	b.n	d0081a6c <__sinit+0xc>
d0081ac6:	bf00      	nop
d0081ac8:	d00836b0 	.word	0xd00836b0
d0081acc:	d00819f9 	.word	0xd00819f9

d0081ad0 <__sfp>:
d0081ad0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0081ad2:	4607      	mov	r7, r0
d0081ad4:	f7ff ffac 	bl	d0081a30 <__sfp_lock_acquire>
d0081ad8:	4b1e      	ldr	r3, [pc, #120]	; (d0081b54 <__sfp+0x84>)
d0081ada:	681e      	ldr	r6, [r3, #0]
d0081adc:	69b3      	ldr	r3, [r6, #24]
d0081ade:	b913      	cbnz	r3, d0081ae6 <__sfp+0x16>
d0081ae0:	4630      	mov	r0, r6
d0081ae2:	f7ff ffbd 	bl	d0081a60 <__sinit>
d0081ae6:	3648      	adds	r6, #72	; 0x48
d0081ae8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0081aec:	3b01      	subs	r3, #1
d0081aee:	d503      	bpl.n	d0081af8 <__sfp+0x28>
d0081af0:	6833      	ldr	r3, [r6, #0]
d0081af2:	b30b      	cbz	r3, d0081b38 <__sfp+0x68>
d0081af4:	6836      	ldr	r6, [r6, #0]
d0081af6:	e7f7      	b.n	d0081ae8 <__sfp+0x18>
d0081af8:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0081afc:	b9d5      	cbnz	r5, d0081b34 <__sfp+0x64>
d0081afe:	4b16      	ldr	r3, [pc, #88]	; (d0081b58 <__sfp+0x88>)
d0081b00:	60e3      	str	r3, [r4, #12]
d0081b02:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0081b06:	6665      	str	r5, [r4, #100]	; 0x64
d0081b08:	f000 f847 	bl	d0081b9a <__retarget_lock_init_recursive>
d0081b0c:	f7ff ff96 	bl	d0081a3c <__sfp_lock_release>
d0081b10:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0081b14:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0081b18:	6025      	str	r5, [r4, #0]
d0081b1a:	61a5      	str	r5, [r4, #24]
d0081b1c:	2208      	movs	r2, #8
d0081b1e:	4629      	mov	r1, r5
d0081b20:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0081b24:	f7ff fcc6 	bl	d00814b4 <memset>
d0081b28:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0081b2c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0081b30:	4620      	mov	r0, r4
d0081b32:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0081b34:	3468      	adds	r4, #104	; 0x68
d0081b36:	e7d9      	b.n	d0081aec <__sfp+0x1c>
d0081b38:	2104      	movs	r1, #4
d0081b3a:	4638      	mov	r0, r7
d0081b3c:	f7ff ff62 	bl	d0081a04 <__sfmoreglue>
d0081b40:	4604      	mov	r4, r0
d0081b42:	6030      	str	r0, [r6, #0]
d0081b44:	2800      	cmp	r0, #0
d0081b46:	d1d5      	bne.n	d0081af4 <__sfp+0x24>
d0081b48:	f7ff ff78 	bl	d0081a3c <__sfp_lock_release>
d0081b4c:	230c      	movs	r3, #12
d0081b4e:	603b      	str	r3, [r7, #0]
d0081b50:	e7ee      	b.n	d0081b30 <__sfp+0x60>
d0081b52:	bf00      	nop
d0081b54:	d00836b0 	.word	0xd00836b0
d0081b58:	ffff0001 	.word	0xffff0001

d0081b5c <_fwalk_reent>:
d0081b5c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0081b60:	4606      	mov	r6, r0
d0081b62:	4688      	mov	r8, r1
d0081b64:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0081b68:	2700      	movs	r7, #0
d0081b6a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0081b6e:	f1b9 0901 	subs.w	r9, r9, #1
d0081b72:	d505      	bpl.n	d0081b80 <_fwalk_reent+0x24>
d0081b74:	6824      	ldr	r4, [r4, #0]
d0081b76:	2c00      	cmp	r4, #0
d0081b78:	d1f7      	bne.n	d0081b6a <_fwalk_reent+0xe>
d0081b7a:	4638      	mov	r0, r7
d0081b7c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0081b80:	89ab      	ldrh	r3, [r5, #12]
d0081b82:	2b01      	cmp	r3, #1
d0081b84:	d907      	bls.n	d0081b96 <_fwalk_reent+0x3a>
d0081b86:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0081b8a:	3301      	adds	r3, #1
d0081b8c:	d003      	beq.n	d0081b96 <_fwalk_reent+0x3a>
d0081b8e:	4629      	mov	r1, r5
d0081b90:	4630      	mov	r0, r6
d0081b92:	47c0      	blx	r8
d0081b94:	4307      	orrs	r7, r0
d0081b96:	3568      	adds	r5, #104	; 0x68
d0081b98:	e7e9      	b.n	d0081b6e <_fwalk_reent+0x12>

d0081b9a <__retarget_lock_init_recursive>:
d0081b9a:	4770      	bx	lr

d0081b9c <__retarget_lock_acquire_recursive>:
d0081b9c:	4770      	bx	lr

d0081b9e <__retarget_lock_release_recursive>:
d0081b9e:	4770      	bx	lr

d0081ba0 <__swhatbuf_r>:
d0081ba0:	b570      	push	{r4, r5, r6, lr}
d0081ba2:	460e      	mov	r6, r1
d0081ba4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0081ba8:	2900      	cmp	r1, #0
d0081baa:	b096      	sub	sp, #88	; 0x58
d0081bac:	4614      	mov	r4, r2
d0081bae:	461d      	mov	r5, r3
d0081bb0:	da07      	bge.n	d0081bc2 <__swhatbuf_r+0x22>
d0081bb2:	2300      	movs	r3, #0
d0081bb4:	602b      	str	r3, [r5, #0]
d0081bb6:	89b3      	ldrh	r3, [r6, #12]
d0081bb8:	061a      	lsls	r2, r3, #24
d0081bba:	d410      	bmi.n	d0081bde <__swhatbuf_r+0x3e>
d0081bbc:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0081bc0:	e00e      	b.n	d0081be0 <__swhatbuf_r+0x40>
d0081bc2:	466a      	mov	r2, sp
d0081bc4:	f000 fb60 	bl	d0082288 <_fstat_r>
d0081bc8:	2800      	cmp	r0, #0
d0081bca:	dbf2      	blt.n	d0081bb2 <__swhatbuf_r+0x12>
d0081bcc:	9a01      	ldr	r2, [sp, #4]
d0081bce:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0081bd2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0081bd6:	425a      	negs	r2, r3
d0081bd8:	415a      	adcs	r2, r3
d0081bda:	602a      	str	r2, [r5, #0]
d0081bdc:	e7ee      	b.n	d0081bbc <__swhatbuf_r+0x1c>
d0081bde:	2340      	movs	r3, #64	; 0x40
d0081be0:	2000      	movs	r0, #0
d0081be2:	6023      	str	r3, [r4, #0]
d0081be4:	b016      	add	sp, #88	; 0x58
d0081be6:	bd70      	pop	{r4, r5, r6, pc}

d0081be8 <__malloc_lock>:
d0081be8:	4801      	ldr	r0, [pc, #4]	; (d0081bf0 <__malloc_lock+0x8>)
d0081bea:	f7ff bfd7 	b.w	d0081b9c <__retarget_lock_acquire_recursive>
d0081bee:	bf00      	nop
d0081bf0:	d0096630 	.word	0xd0096630

d0081bf4 <__malloc_unlock>:
d0081bf4:	4801      	ldr	r0, [pc, #4]	; (d0081bfc <__malloc_unlock+0x8>)
d0081bf6:	f7ff bfd2 	b.w	d0081b9e <__retarget_lock_release_recursive>
d0081bfa:	bf00      	nop
d0081bfc:	d0096630 	.word	0xd0096630

d0081c00 <__ssputs_r>:
d0081c00:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081c04:	688e      	ldr	r6, [r1, #8]
d0081c06:	429e      	cmp	r6, r3
d0081c08:	4682      	mov	sl, r0
d0081c0a:	460c      	mov	r4, r1
d0081c0c:	4690      	mov	r8, r2
d0081c0e:	461f      	mov	r7, r3
d0081c10:	d838      	bhi.n	d0081c84 <__ssputs_r+0x84>
d0081c12:	898a      	ldrh	r2, [r1, #12]
d0081c14:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0081c18:	d032      	beq.n	d0081c80 <__ssputs_r+0x80>
d0081c1a:	6825      	ldr	r5, [r4, #0]
d0081c1c:	6909      	ldr	r1, [r1, #16]
d0081c1e:	eba5 0901 	sub.w	r9, r5, r1
d0081c22:	6965      	ldr	r5, [r4, #20]
d0081c24:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0081c28:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0081c2c:	3301      	adds	r3, #1
d0081c2e:	444b      	add	r3, r9
d0081c30:	106d      	asrs	r5, r5, #1
d0081c32:	429d      	cmp	r5, r3
d0081c34:	bf38      	it	cc
d0081c36:	461d      	movcc	r5, r3
d0081c38:	0553      	lsls	r3, r2, #21
d0081c3a:	d531      	bpl.n	d0081ca0 <__ssputs_r+0xa0>
d0081c3c:	4629      	mov	r1, r5
d0081c3e:	f7ff fc91 	bl	d0081564 <_malloc_r>
d0081c42:	4606      	mov	r6, r0
d0081c44:	b950      	cbnz	r0, d0081c5c <__ssputs_r+0x5c>
d0081c46:	230c      	movs	r3, #12
d0081c48:	f8ca 3000 	str.w	r3, [sl]
d0081c4c:	89a3      	ldrh	r3, [r4, #12]
d0081c4e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0081c52:	81a3      	strh	r3, [r4, #12]
d0081c54:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081c58:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081c5c:	6921      	ldr	r1, [r4, #16]
d0081c5e:	464a      	mov	r2, r9
d0081c60:	f000 fb86 	bl	d0082370 <memcpy>
d0081c64:	89a3      	ldrh	r3, [r4, #12]
d0081c66:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0081c6a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0081c6e:	81a3      	strh	r3, [r4, #12]
d0081c70:	6126      	str	r6, [r4, #16]
d0081c72:	6165      	str	r5, [r4, #20]
d0081c74:	444e      	add	r6, r9
d0081c76:	eba5 0509 	sub.w	r5, r5, r9
d0081c7a:	6026      	str	r6, [r4, #0]
d0081c7c:	60a5      	str	r5, [r4, #8]
d0081c7e:	463e      	mov	r6, r7
d0081c80:	42be      	cmp	r6, r7
d0081c82:	d900      	bls.n	d0081c86 <__ssputs_r+0x86>
d0081c84:	463e      	mov	r6, r7
d0081c86:	4632      	mov	r2, r6
d0081c88:	6820      	ldr	r0, [r4, #0]
d0081c8a:	4641      	mov	r1, r8
d0081c8c:	f000 fb7e 	bl	d008238c <memmove>
d0081c90:	68a3      	ldr	r3, [r4, #8]
d0081c92:	6822      	ldr	r2, [r4, #0]
d0081c94:	1b9b      	subs	r3, r3, r6
d0081c96:	4432      	add	r2, r6
d0081c98:	60a3      	str	r3, [r4, #8]
d0081c9a:	6022      	str	r2, [r4, #0]
d0081c9c:	2000      	movs	r0, #0
d0081c9e:	e7db      	b.n	d0081c58 <__ssputs_r+0x58>
d0081ca0:	462a      	mov	r2, r5
d0081ca2:	f000 fb8d 	bl	d00823c0 <_realloc_r>
d0081ca6:	4606      	mov	r6, r0
d0081ca8:	2800      	cmp	r0, #0
d0081caa:	d1e1      	bne.n	d0081c70 <__ssputs_r+0x70>
d0081cac:	6921      	ldr	r1, [r4, #16]
d0081cae:	4650      	mov	r0, sl
d0081cb0:	f7ff fc08 	bl	d00814c4 <_free_r>
d0081cb4:	e7c7      	b.n	d0081c46 <__ssputs_r+0x46>
	...

d0081cb8 <_svfiprintf_r>:
d0081cb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0081cbc:	4698      	mov	r8, r3
d0081cbe:	898b      	ldrh	r3, [r1, #12]
d0081cc0:	061b      	lsls	r3, r3, #24
d0081cc2:	b09d      	sub	sp, #116	; 0x74
d0081cc4:	4607      	mov	r7, r0
d0081cc6:	460d      	mov	r5, r1
d0081cc8:	4614      	mov	r4, r2
d0081cca:	d50e      	bpl.n	d0081cea <_svfiprintf_r+0x32>
d0081ccc:	690b      	ldr	r3, [r1, #16]
d0081cce:	b963      	cbnz	r3, d0081cea <_svfiprintf_r+0x32>
d0081cd0:	2140      	movs	r1, #64	; 0x40
d0081cd2:	f7ff fc47 	bl	d0081564 <_malloc_r>
d0081cd6:	6028      	str	r0, [r5, #0]
d0081cd8:	6128      	str	r0, [r5, #16]
d0081cda:	b920      	cbnz	r0, d0081ce6 <_svfiprintf_r+0x2e>
d0081cdc:	230c      	movs	r3, #12
d0081cde:	603b      	str	r3, [r7, #0]
d0081ce0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081ce4:	e0d1      	b.n	d0081e8a <_svfiprintf_r+0x1d2>
d0081ce6:	2340      	movs	r3, #64	; 0x40
d0081ce8:	616b      	str	r3, [r5, #20]
d0081cea:	2300      	movs	r3, #0
d0081cec:	9309      	str	r3, [sp, #36]	; 0x24
d0081cee:	2320      	movs	r3, #32
d0081cf0:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0081cf4:	f8cd 800c 	str.w	r8, [sp, #12]
d0081cf8:	2330      	movs	r3, #48	; 0x30
d0081cfa:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0081ea4 <_svfiprintf_r+0x1ec>
d0081cfe:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0081d02:	f04f 0901 	mov.w	r9, #1
d0081d06:	4623      	mov	r3, r4
d0081d08:	469a      	mov	sl, r3
d0081d0a:	f813 2b01 	ldrb.w	r2, [r3], #1
d0081d0e:	b10a      	cbz	r2, d0081d14 <_svfiprintf_r+0x5c>
d0081d10:	2a25      	cmp	r2, #37	; 0x25
d0081d12:	d1f9      	bne.n	d0081d08 <_svfiprintf_r+0x50>
d0081d14:	ebba 0b04 	subs.w	fp, sl, r4
d0081d18:	d00b      	beq.n	d0081d32 <_svfiprintf_r+0x7a>
d0081d1a:	465b      	mov	r3, fp
d0081d1c:	4622      	mov	r2, r4
d0081d1e:	4629      	mov	r1, r5
d0081d20:	4638      	mov	r0, r7
d0081d22:	f7ff ff6d 	bl	d0081c00 <__ssputs_r>
d0081d26:	3001      	adds	r0, #1
d0081d28:	f000 80aa 	beq.w	d0081e80 <_svfiprintf_r+0x1c8>
d0081d2c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0081d2e:	445a      	add	r2, fp
d0081d30:	9209      	str	r2, [sp, #36]	; 0x24
d0081d32:	f89a 3000 	ldrb.w	r3, [sl]
d0081d36:	2b00      	cmp	r3, #0
d0081d38:	f000 80a2 	beq.w	d0081e80 <_svfiprintf_r+0x1c8>
d0081d3c:	2300      	movs	r3, #0
d0081d3e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0081d42:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0081d46:	f10a 0a01 	add.w	sl, sl, #1
d0081d4a:	9304      	str	r3, [sp, #16]
d0081d4c:	9307      	str	r3, [sp, #28]
d0081d4e:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0081d52:	931a      	str	r3, [sp, #104]	; 0x68
d0081d54:	4654      	mov	r4, sl
d0081d56:	2205      	movs	r2, #5
d0081d58:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081d5c:	4851      	ldr	r0, [pc, #324]	; (d0081ea4 <_svfiprintf_r+0x1ec>)
d0081d5e:	f000 fab7 	bl	d00822d0 <memchr>
d0081d62:	9a04      	ldr	r2, [sp, #16]
d0081d64:	b9d8      	cbnz	r0, d0081d9e <_svfiprintf_r+0xe6>
d0081d66:	06d0      	lsls	r0, r2, #27
d0081d68:	bf44      	itt	mi
d0081d6a:	2320      	movmi	r3, #32
d0081d6c:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081d70:	0711      	lsls	r1, r2, #28
d0081d72:	bf44      	itt	mi
d0081d74:	232b      	movmi	r3, #43	; 0x2b
d0081d76:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0081d7a:	f89a 3000 	ldrb.w	r3, [sl]
d0081d7e:	2b2a      	cmp	r3, #42	; 0x2a
d0081d80:	d015      	beq.n	d0081dae <_svfiprintf_r+0xf6>
d0081d82:	9a07      	ldr	r2, [sp, #28]
d0081d84:	4654      	mov	r4, sl
d0081d86:	2000      	movs	r0, #0
d0081d88:	f04f 0c0a 	mov.w	ip, #10
d0081d8c:	4621      	mov	r1, r4
d0081d8e:	f811 3b01 	ldrb.w	r3, [r1], #1
d0081d92:	3b30      	subs	r3, #48	; 0x30
d0081d94:	2b09      	cmp	r3, #9
d0081d96:	d94e      	bls.n	d0081e36 <_svfiprintf_r+0x17e>
d0081d98:	b1b0      	cbz	r0, d0081dc8 <_svfiprintf_r+0x110>
d0081d9a:	9207      	str	r2, [sp, #28]
d0081d9c:	e014      	b.n	d0081dc8 <_svfiprintf_r+0x110>
d0081d9e:	eba0 0308 	sub.w	r3, r0, r8
d0081da2:	fa09 f303 	lsl.w	r3, r9, r3
d0081da6:	4313      	orrs	r3, r2
d0081da8:	9304      	str	r3, [sp, #16]
d0081daa:	46a2      	mov	sl, r4
d0081dac:	e7d2      	b.n	d0081d54 <_svfiprintf_r+0x9c>
d0081dae:	9b03      	ldr	r3, [sp, #12]
d0081db0:	1d19      	adds	r1, r3, #4
d0081db2:	681b      	ldr	r3, [r3, #0]
d0081db4:	9103      	str	r1, [sp, #12]
d0081db6:	2b00      	cmp	r3, #0
d0081db8:	bfbb      	ittet	lt
d0081dba:	425b      	neglt	r3, r3
d0081dbc:	f042 0202 	orrlt.w	r2, r2, #2
d0081dc0:	9307      	strge	r3, [sp, #28]
d0081dc2:	9307      	strlt	r3, [sp, #28]
d0081dc4:	bfb8      	it	lt
d0081dc6:	9204      	strlt	r2, [sp, #16]
d0081dc8:	7823      	ldrb	r3, [r4, #0]
d0081dca:	2b2e      	cmp	r3, #46	; 0x2e
d0081dcc:	d10c      	bne.n	d0081de8 <_svfiprintf_r+0x130>
d0081dce:	7863      	ldrb	r3, [r4, #1]
d0081dd0:	2b2a      	cmp	r3, #42	; 0x2a
d0081dd2:	d135      	bne.n	d0081e40 <_svfiprintf_r+0x188>
d0081dd4:	9b03      	ldr	r3, [sp, #12]
d0081dd6:	1d1a      	adds	r2, r3, #4
d0081dd8:	681b      	ldr	r3, [r3, #0]
d0081dda:	9203      	str	r2, [sp, #12]
d0081ddc:	2b00      	cmp	r3, #0
d0081dde:	bfb8      	it	lt
d0081de0:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0081de4:	3402      	adds	r4, #2
d0081de6:	9305      	str	r3, [sp, #20]
d0081de8:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0081eb4 <_svfiprintf_r+0x1fc>
d0081dec:	7821      	ldrb	r1, [r4, #0]
d0081dee:	2203      	movs	r2, #3
d0081df0:	4650      	mov	r0, sl
d0081df2:	f000 fa6d 	bl	d00822d0 <memchr>
d0081df6:	b140      	cbz	r0, d0081e0a <_svfiprintf_r+0x152>
d0081df8:	2340      	movs	r3, #64	; 0x40
d0081dfa:	eba0 000a 	sub.w	r0, r0, sl
d0081dfe:	fa03 f000 	lsl.w	r0, r3, r0
d0081e02:	9b04      	ldr	r3, [sp, #16]
d0081e04:	4303      	orrs	r3, r0
d0081e06:	3401      	adds	r4, #1
d0081e08:	9304      	str	r3, [sp, #16]
d0081e0a:	f814 1b01 	ldrb.w	r1, [r4], #1
d0081e0e:	4826      	ldr	r0, [pc, #152]	; (d0081ea8 <_svfiprintf_r+0x1f0>)
d0081e10:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0081e14:	2206      	movs	r2, #6
d0081e16:	f000 fa5b 	bl	d00822d0 <memchr>
d0081e1a:	2800      	cmp	r0, #0
d0081e1c:	d038      	beq.n	d0081e90 <_svfiprintf_r+0x1d8>
d0081e1e:	4b23      	ldr	r3, [pc, #140]	; (d0081eac <_svfiprintf_r+0x1f4>)
d0081e20:	bb1b      	cbnz	r3, d0081e6a <_svfiprintf_r+0x1b2>
d0081e22:	9b03      	ldr	r3, [sp, #12]
d0081e24:	3307      	adds	r3, #7
d0081e26:	f023 0307 	bic.w	r3, r3, #7
d0081e2a:	3308      	adds	r3, #8
d0081e2c:	9303      	str	r3, [sp, #12]
d0081e2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0081e30:	4433      	add	r3, r6
d0081e32:	9309      	str	r3, [sp, #36]	; 0x24
d0081e34:	e767      	b.n	d0081d06 <_svfiprintf_r+0x4e>
d0081e36:	fb0c 3202 	mla	r2, ip, r2, r3
d0081e3a:	460c      	mov	r4, r1
d0081e3c:	2001      	movs	r0, #1
d0081e3e:	e7a5      	b.n	d0081d8c <_svfiprintf_r+0xd4>
d0081e40:	2300      	movs	r3, #0
d0081e42:	3401      	adds	r4, #1
d0081e44:	9305      	str	r3, [sp, #20]
d0081e46:	4619      	mov	r1, r3
d0081e48:	f04f 0c0a 	mov.w	ip, #10
d0081e4c:	4620      	mov	r0, r4
d0081e4e:	f810 2b01 	ldrb.w	r2, [r0], #1
d0081e52:	3a30      	subs	r2, #48	; 0x30
d0081e54:	2a09      	cmp	r2, #9
d0081e56:	d903      	bls.n	d0081e60 <_svfiprintf_r+0x1a8>
d0081e58:	2b00      	cmp	r3, #0
d0081e5a:	d0c5      	beq.n	d0081de8 <_svfiprintf_r+0x130>
d0081e5c:	9105      	str	r1, [sp, #20]
d0081e5e:	e7c3      	b.n	d0081de8 <_svfiprintf_r+0x130>
d0081e60:	fb0c 2101 	mla	r1, ip, r1, r2
d0081e64:	4604      	mov	r4, r0
d0081e66:	2301      	movs	r3, #1
d0081e68:	e7f0      	b.n	d0081e4c <_svfiprintf_r+0x194>
d0081e6a:	ab03      	add	r3, sp, #12
d0081e6c:	9300      	str	r3, [sp, #0]
d0081e6e:	462a      	mov	r2, r5
d0081e70:	4b0f      	ldr	r3, [pc, #60]	; (d0081eb0 <_svfiprintf_r+0x1f8>)
d0081e72:	a904      	add	r1, sp, #16
d0081e74:	4638      	mov	r0, r7
d0081e76:	f3af 8000 	nop.w
d0081e7a:	1c42      	adds	r2, r0, #1
d0081e7c:	4606      	mov	r6, r0
d0081e7e:	d1d6      	bne.n	d0081e2e <_svfiprintf_r+0x176>
d0081e80:	89ab      	ldrh	r3, [r5, #12]
d0081e82:	065b      	lsls	r3, r3, #25
d0081e84:	f53f af2c 	bmi.w	d0081ce0 <_svfiprintf_r+0x28>
d0081e88:	9809      	ldr	r0, [sp, #36]	; 0x24
d0081e8a:	b01d      	add	sp, #116	; 0x74
d0081e8c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0081e90:	ab03      	add	r3, sp, #12
d0081e92:	9300      	str	r3, [sp, #0]
d0081e94:	462a      	mov	r2, r5
d0081e96:	4b06      	ldr	r3, [pc, #24]	; (d0081eb0 <_svfiprintf_r+0x1f8>)
d0081e98:	a904      	add	r1, sp, #16
d0081e9a:	4638      	mov	r0, r7
d0081e9c:	f000 f87a 	bl	d0081f94 <_printf_i>
d0081ea0:	e7eb      	b.n	d0081e7a <_svfiprintf_r+0x1c2>
d0081ea2:	bf00      	nop
d0081ea4:	d0083714 	.word	0xd0083714
d0081ea8:	d008371e 	.word	0xd008371e
d0081eac:	00000000 	.word	0x00000000
d0081eb0:	d0081c01 	.word	0xd0081c01
d0081eb4:	d008371a 	.word	0xd008371a

d0081eb8 <_printf_common>:
d0081eb8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0081ebc:	4616      	mov	r6, r2
d0081ebe:	4699      	mov	r9, r3
d0081ec0:	688a      	ldr	r2, [r1, #8]
d0081ec2:	690b      	ldr	r3, [r1, #16]
d0081ec4:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0081ec8:	4293      	cmp	r3, r2
d0081eca:	bfb8      	it	lt
d0081ecc:	4613      	movlt	r3, r2
d0081ece:	6033      	str	r3, [r6, #0]
d0081ed0:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0081ed4:	4607      	mov	r7, r0
d0081ed6:	460c      	mov	r4, r1
d0081ed8:	b10a      	cbz	r2, d0081ede <_printf_common+0x26>
d0081eda:	3301      	adds	r3, #1
d0081edc:	6033      	str	r3, [r6, #0]
d0081ede:	6823      	ldr	r3, [r4, #0]
d0081ee0:	0699      	lsls	r1, r3, #26
d0081ee2:	bf42      	ittt	mi
d0081ee4:	6833      	ldrmi	r3, [r6, #0]
d0081ee6:	3302      	addmi	r3, #2
d0081ee8:	6033      	strmi	r3, [r6, #0]
d0081eea:	6825      	ldr	r5, [r4, #0]
d0081eec:	f015 0506 	ands.w	r5, r5, #6
d0081ef0:	d106      	bne.n	d0081f00 <_printf_common+0x48>
d0081ef2:	f104 0a19 	add.w	sl, r4, #25
d0081ef6:	68e3      	ldr	r3, [r4, #12]
d0081ef8:	6832      	ldr	r2, [r6, #0]
d0081efa:	1a9b      	subs	r3, r3, r2
d0081efc:	42ab      	cmp	r3, r5
d0081efe:	dc26      	bgt.n	d0081f4e <_printf_common+0x96>
d0081f00:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0081f04:	1e13      	subs	r3, r2, #0
d0081f06:	6822      	ldr	r2, [r4, #0]
d0081f08:	bf18      	it	ne
d0081f0a:	2301      	movne	r3, #1
d0081f0c:	0692      	lsls	r2, r2, #26
d0081f0e:	d42b      	bmi.n	d0081f68 <_printf_common+0xb0>
d0081f10:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081f14:	4649      	mov	r1, r9
d0081f16:	4638      	mov	r0, r7
d0081f18:	47c0      	blx	r8
d0081f1a:	3001      	adds	r0, #1
d0081f1c:	d01e      	beq.n	d0081f5c <_printf_common+0xa4>
d0081f1e:	6823      	ldr	r3, [r4, #0]
d0081f20:	68e5      	ldr	r5, [r4, #12]
d0081f22:	6832      	ldr	r2, [r6, #0]
d0081f24:	f003 0306 	and.w	r3, r3, #6
d0081f28:	2b04      	cmp	r3, #4
d0081f2a:	bf08      	it	eq
d0081f2c:	1aad      	subeq	r5, r5, r2
d0081f2e:	68a3      	ldr	r3, [r4, #8]
d0081f30:	6922      	ldr	r2, [r4, #16]
d0081f32:	bf0c      	ite	eq
d0081f34:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0081f38:	2500      	movne	r5, #0
d0081f3a:	4293      	cmp	r3, r2
d0081f3c:	bfc4      	itt	gt
d0081f3e:	1a9b      	subgt	r3, r3, r2
d0081f40:	18ed      	addgt	r5, r5, r3
d0081f42:	2600      	movs	r6, #0
d0081f44:	341a      	adds	r4, #26
d0081f46:	42b5      	cmp	r5, r6
d0081f48:	d11a      	bne.n	d0081f80 <_printf_common+0xc8>
d0081f4a:	2000      	movs	r0, #0
d0081f4c:	e008      	b.n	d0081f60 <_printf_common+0xa8>
d0081f4e:	2301      	movs	r3, #1
d0081f50:	4652      	mov	r2, sl
d0081f52:	4649      	mov	r1, r9
d0081f54:	4638      	mov	r0, r7
d0081f56:	47c0      	blx	r8
d0081f58:	3001      	adds	r0, #1
d0081f5a:	d103      	bne.n	d0081f64 <_printf_common+0xac>
d0081f5c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0081f60:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0081f64:	3501      	adds	r5, #1
d0081f66:	e7c6      	b.n	d0081ef6 <_printf_common+0x3e>
d0081f68:	18e1      	adds	r1, r4, r3
d0081f6a:	1c5a      	adds	r2, r3, #1
d0081f6c:	2030      	movs	r0, #48	; 0x30
d0081f6e:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0081f72:	4422      	add	r2, r4
d0081f74:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0081f78:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0081f7c:	3302      	adds	r3, #2
d0081f7e:	e7c7      	b.n	d0081f10 <_printf_common+0x58>
d0081f80:	2301      	movs	r3, #1
d0081f82:	4622      	mov	r2, r4
d0081f84:	4649      	mov	r1, r9
d0081f86:	4638      	mov	r0, r7
d0081f88:	47c0      	blx	r8
d0081f8a:	3001      	adds	r0, #1
d0081f8c:	d0e6      	beq.n	d0081f5c <_printf_common+0xa4>
d0081f8e:	3601      	adds	r6, #1
d0081f90:	e7d9      	b.n	d0081f46 <_printf_common+0x8e>
	...

d0081f94 <_printf_i>:
d0081f94:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0081f98:	460c      	mov	r4, r1
d0081f9a:	4691      	mov	r9, r2
d0081f9c:	7e27      	ldrb	r7, [r4, #24]
d0081f9e:	990c      	ldr	r1, [sp, #48]	; 0x30
d0081fa0:	2f78      	cmp	r7, #120	; 0x78
d0081fa2:	4680      	mov	r8, r0
d0081fa4:	469a      	mov	sl, r3
d0081fa6:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0081faa:	d807      	bhi.n	d0081fbc <_printf_i+0x28>
d0081fac:	2f62      	cmp	r7, #98	; 0x62
d0081fae:	d80a      	bhi.n	d0081fc6 <_printf_i+0x32>
d0081fb0:	2f00      	cmp	r7, #0
d0081fb2:	f000 80d8 	beq.w	d0082166 <_printf_i+0x1d2>
d0081fb6:	2f58      	cmp	r7, #88	; 0x58
d0081fb8:	f000 80a3 	beq.w	d0082102 <_printf_i+0x16e>
d0081fbc:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0081fc0:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0081fc4:	e03a      	b.n	d008203c <_printf_i+0xa8>
d0081fc6:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0081fca:	2b15      	cmp	r3, #21
d0081fcc:	d8f6      	bhi.n	d0081fbc <_printf_i+0x28>
d0081fce:	a001      	add	r0, pc, #4	; (adr r0, d0081fd4 <_printf_i+0x40>)
d0081fd0:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0081fd4:	d008202d 	.word	0xd008202d
d0081fd8:	d0082041 	.word	0xd0082041
d0081fdc:	d0081fbd 	.word	0xd0081fbd
d0081fe0:	d0081fbd 	.word	0xd0081fbd
d0081fe4:	d0081fbd 	.word	0xd0081fbd
d0081fe8:	d0081fbd 	.word	0xd0081fbd
d0081fec:	d0082041 	.word	0xd0082041
d0081ff0:	d0081fbd 	.word	0xd0081fbd
d0081ff4:	d0081fbd 	.word	0xd0081fbd
d0081ff8:	d0081fbd 	.word	0xd0081fbd
d0081ffc:	d0081fbd 	.word	0xd0081fbd
d0082000:	d008214d 	.word	0xd008214d
d0082004:	d0082071 	.word	0xd0082071
d0082008:	d008212f 	.word	0xd008212f
d008200c:	d0081fbd 	.word	0xd0081fbd
d0082010:	d0081fbd 	.word	0xd0081fbd
d0082014:	d008216f 	.word	0xd008216f
d0082018:	d0081fbd 	.word	0xd0081fbd
d008201c:	d0082071 	.word	0xd0082071
d0082020:	d0081fbd 	.word	0xd0081fbd
d0082024:	d0081fbd 	.word	0xd0081fbd
d0082028:	d0082137 	.word	0xd0082137
d008202c:	680b      	ldr	r3, [r1, #0]
d008202e:	1d1a      	adds	r2, r3, #4
d0082030:	681b      	ldr	r3, [r3, #0]
d0082032:	600a      	str	r2, [r1, #0]
d0082034:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0082038:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d008203c:	2301      	movs	r3, #1
d008203e:	e0a3      	b.n	d0082188 <_printf_i+0x1f4>
d0082040:	6825      	ldr	r5, [r4, #0]
d0082042:	6808      	ldr	r0, [r1, #0]
d0082044:	062e      	lsls	r6, r5, #24
d0082046:	f100 0304 	add.w	r3, r0, #4
d008204a:	d50a      	bpl.n	d0082062 <_printf_i+0xce>
d008204c:	6805      	ldr	r5, [r0, #0]
d008204e:	600b      	str	r3, [r1, #0]
d0082050:	2d00      	cmp	r5, #0
d0082052:	da03      	bge.n	d008205c <_printf_i+0xc8>
d0082054:	232d      	movs	r3, #45	; 0x2d
d0082056:	426d      	negs	r5, r5
d0082058:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d008205c:	485e      	ldr	r0, [pc, #376]	; (d00821d8 <_printf_i+0x244>)
d008205e:	230a      	movs	r3, #10
d0082060:	e019      	b.n	d0082096 <_printf_i+0x102>
d0082062:	f015 0f40 	tst.w	r5, #64	; 0x40
d0082066:	6805      	ldr	r5, [r0, #0]
d0082068:	600b      	str	r3, [r1, #0]
d008206a:	bf18      	it	ne
d008206c:	b22d      	sxthne	r5, r5
d008206e:	e7ef      	b.n	d0082050 <_printf_i+0xbc>
d0082070:	680b      	ldr	r3, [r1, #0]
d0082072:	6825      	ldr	r5, [r4, #0]
d0082074:	1d18      	adds	r0, r3, #4
d0082076:	6008      	str	r0, [r1, #0]
d0082078:	0628      	lsls	r0, r5, #24
d008207a:	d501      	bpl.n	d0082080 <_printf_i+0xec>
d008207c:	681d      	ldr	r5, [r3, #0]
d008207e:	e002      	b.n	d0082086 <_printf_i+0xf2>
d0082080:	0669      	lsls	r1, r5, #25
d0082082:	d5fb      	bpl.n	d008207c <_printf_i+0xe8>
d0082084:	881d      	ldrh	r5, [r3, #0]
d0082086:	4854      	ldr	r0, [pc, #336]	; (d00821d8 <_printf_i+0x244>)
d0082088:	2f6f      	cmp	r7, #111	; 0x6f
d008208a:	bf0c      	ite	eq
d008208c:	2308      	moveq	r3, #8
d008208e:	230a      	movne	r3, #10
d0082090:	2100      	movs	r1, #0
d0082092:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0082096:	6866      	ldr	r6, [r4, #4]
d0082098:	60a6      	str	r6, [r4, #8]
d008209a:	2e00      	cmp	r6, #0
d008209c:	bfa2      	ittt	ge
d008209e:	6821      	ldrge	r1, [r4, #0]
d00820a0:	f021 0104 	bicge.w	r1, r1, #4
d00820a4:	6021      	strge	r1, [r4, #0]
d00820a6:	b90d      	cbnz	r5, d00820ac <_printf_i+0x118>
d00820a8:	2e00      	cmp	r6, #0
d00820aa:	d04d      	beq.n	d0082148 <_printf_i+0x1b4>
d00820ac:	4616      	mov	r6, r2
d00820ae:	fbb5 f1f3 	udiv	r1, r5, r3
d00820b2:	fb03 5711 	mls	r7, r3, r1, r5
d00820b6:	5dc7      	ldrb	r7, [r0, r7]
d00820b8:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00820bc:	462f      	mov	r7, r5
d00820be:	42bb      	cmp	r3, r7
d00820c0:	460d      	mov	r5, r1
d00820c2:	d9f4      	bls.n	d00820ae <_printf_i+0x11a>
d00820c4:	2b08      	cmp	r3, #8
d00820c6:	d10b      	bne.n	d00820e0 <_printf_i+0x14c>
d00820c8:	6823      	ldr	r3, [r4, #0]
d00820ca:	07df      	lsls	r7, r3, #31
d00820cc:	d508      	bpl.n	d00820e0 <_printf_i+0x14c>
d00820ce:	6923      	ldr	r3, [r4, #16]
d00820d0:	6861      	ldr	r1, [r4, #4]
d00820d2:	4299      	cmp	r1, r3
d00820d4:	bfde      	ittt	le
d00820d6:	2330      	movle	r3, #48	; 0x30
d00820d8:	f806 3c01 	strble.w	r3, [r6, #-1]
d00820dc:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00820e0:	1b92      	subs	r2, r2, r6
d00820e2:	6122      	str	r2, [r4, #16]
d00820e4:	f8cd a000 	str.w	sl, [sp]
d00820e8:	464b      	mov	r3, r9
d00820ea:	aa03      	add	r2, sp, #12
d00820ec:	4621      	mov	r1, r4
d00820ee:	4640      	mov	r0, r8
d00820f0:	f7ff fee2 	bl	d0081eb8 <_printf_common>
d00820f4:	3001      	adds	r0, #1
d00820f6:	d14c      	bne.n	d0082192 <_printf_i+0x1fe>
d00820f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00820fc:	b004      	add	sp, #16
d00820fe:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0082102:	4835      	ldr	r0, [pc, #212]	; (d00821d8 <_printf_i+0x244>)
d0082104:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0082108:	6823      	ldr	r3, [r4, #0]
d008210a:	680e      	ldr	r6, [r1, #0]
d008210c:	061f      	lsls	r7, r3, #24
d008210e:	f856 5b04 	ldr.w	r5, [r6], #4
d0082112:	600e      	str	r6, [r1, #0]
d0082114:	d514      	bpl.n	d0082140 <_printf_i+0x1ac>
d0082116:	07d9      	lsls	r1, r3, #31
d0082118:	bf44      	itt	mi
d008211a:	f043 0320 	orrmi.w	r3, r3, #32
d008211e:	6023      	strmi	r3, [r4, #0]
d0082120:	b91d      	cbnz	r5, d008212a <_printf_i+0x196>
d0082122:	6823      	ldr	r3, [r4, #0]
d0082124:	f023 0320 	bic.w	r3, r3, #32
d0082128:	6023      	str	r3, [r4, #0]
d008212a:	2310      	movs	r3, #16
d008212c:	e7b0      	b.n	d0082090 <_printf_i+0xfc>
d008212e:	6823      	ldr	r3, [r4, #0]
d0082130:	f043 0320 	orr.w	r3, r3, #32
d0082134:	6023      	str	r3, [r4, #0]
d0082136:	2378      	movs	r3, #120	; 0x78
d0082138:	4828      	ldr	r0, [pc, #160]	; (d00821dc <_printf_i+0x248>)
d008213a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d008213e:	e7e3      	b.n	d0082108 <_printf_i+0x174>
d0082140:	065e      	lsls	r6, r3, #25
d0082142:	bf48      	it	mi
d0082144:	b2ad      	uxthmi	r5, r5
d0082146:	e7e6      	b.n	d0082116 <_printf_i+0x182>
d0082148:	4616      	mov	r6, r2
d008214a:	e7bb      	b.n	d00820c4 <_printf_i+0x130>
d008214c:	680b      	ldr	r3, [r1, #0]
d008214e:	6826      	ldr	r6, [r4, #0]
d0082150:	6960      	ldr	r0, [r4, #20]
d0082152:	1d1d      	adds	r5, r3, #4
d0082154:	600d      	str	r5, [r1, #0]
d0082156:	0635      	lsls	r5, r6, #24
d0082158:	681b      	ldr	r3, [r3, #0]
d008215a:	d501      	bpl.n	d0082160 <_printf_i+0x1cc>
d008215c:	6018      	str	r0, [r3, #0]
d008215e:	e002      	b.n	d0082166 <_printf_i+0x1d2>
d0082160:	0671      	lsls	r1, r6, #25
d0082162:	d5fb      	bpl.n	d008215c <_printf_i+0x1c8>
d0082164:	8018      	strh	r0, [r3, #0]
d0082166:	2300      	movs	r3, #0
d0082168:	6123      	str	r3, [r4, #16]
d008216a:	4616      	mov	r6, r2
d008216c:	e7ba      	b.n	d00820e4 <_printf_i+0x150>
d008216e:	680b      	ldr	r3, [r1, #0]
d0082170:	1d1a      	adds	r2, r3, #4
d0082172:	600a      	str	r2, [r1, #0]
d0082174:	681e      	ldr	r6, [r3, #0]
d0082176:	6862      	ldr	r2, [r4, #4]
d0082178:	2100      	movs	r1, #0
d008217a:	4630      	mov	r0, r6
d008217c:	f000 f8a8 	bl	d00822d0 <memchr>
d0082180:	b108      	cbz	r0, d0082186 <_printf_i+0x1f2>
d0082182:	1b80      	subs	r0, r0, r6
d0082184:	6060      	str	r0, [r4, #4]
d0082186:	6863      	ldr	r3, [r4, #4]
d0082188:	6123      	str	r3, [r4, #16]
d008218a:	2300      	movs	r3, #0
d008218c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0082190:	e7a8      	b.n	d00820e4 <_printf_i+0x150>
d0082192:	6923      	ldr	r3, [r4, #16]
d0082194:	4632      	mov	r2, r6
d0082196:	4649      	mov	r1, r9
d0082198:	4640      	mov	r0, r8
d008219a:	47d0      	blx	sl
d008219c:	3001      	adds	r0, #1
d008219e:	d0ab      	beq.n	d00820f8 <_printf_i+0x164>
d00821a0:	6823      	ldr	r3, [r4, #0]
d00821a2:	079b      	lsls	r3, r3, #30
d00821a4:	d413      	bmi.n	d00821ce <_printf_i+0x23a>
d00821a6:	68e0      	ldr	r0, [r4, #12]
d00821a8:	9b03      	ldr	r3, [sp, #12]
d00821aa:	4298      	cmp	r0, r3
d00821ac:	bfb8      	it	lt
d00821ae:	4618      	movlt	r0, r3
d00821b0:	e7a4      	b.n	d00820fc <_printf_i+0x168>
d00821b2:	2301      	movs	r3, #1
d00821b4:	4632      	mov	r2, r6
d00821b6:	4649      	mov	r1, r9
d00821b8:	4640      	mov	r0, r8
d00821ba:	47d0      	blx	sl
d00821bc:	3001      	adds	r0, #1
d00821be:	d09b      	beq.n	d00820f8 <_printf_i+0x164>
d00821c0:	3501      	adds	r5, #1
d00821c2:	68e3      	ldr	r3, [r4, #12]
d00821c4:	9903      	ldr	r1, [sp, #12]
d00821c6:	1a5b      	subs	r3, r3, r1
d00821c8:	42ab      	cmp	r3, r5
d00821ca:	dcf2      	bgt.n	d00821b2 <_printf_i+0x21e>
d00821cc:	e7eb      	b.n	d00821a6 <_printf_i+0x212>
d00821ce:	2500      	movs	r5, #0
d00821d0:	f104 0619 	add.w	r6, r4, #25
d00821d4:	e7f5      	b.n	d00821c2 <_printf_i+0x22e>
d00821d6:	bf00      	nop
d00821d8:	d0083725 	.word	0xd0083725
d00821dc:	d0083736 	.word	0xd0083736

d00821e0 <__sread>:
d00821e0:	b510      	push	{r4, lr}
d00821e2:	460c      	mov	r4, r1
d00821e4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00821e8:	f000 f910 	bl	d008240c <_read_r>
d00821ec:	2800      	cmp	r0, #0
d00821ee:	bfab      	itete	ge
d00821f0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00821f2:	89a3      	ldrhlt	r3, [r4, #12]
d00821f4:	181b      	addge	r3, r3, r0
d00821f6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00821fa:	bfac      	ite	ge
d00821fc:	6563      	strge	r3, [r4, #84]	; 0x54
d00821fe:	81a3      	strhlt	r3, [r4, #12]
d0082200:	bd10      	pop	{r4, pc}

d0082202 <__swrite>:
d0082202:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0082206:	461f      	mov	r7, r3
d0082208:	898b      	ldrh	r3, [r1, #12]
d008220a:	05db      	lsls	r3, r3, #23
d008220c:	4605      	mov	r5, r0
d008220e:	460c      	mov	r4, r1
d0082210:	4616      	mov	r6, r2
d0082212:	d505      	bpl.n	d0082220 <__swrite+0x1e>
d0082214:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082218:	2302      	movs	r3, #2
d008221a:	2200      	movs	r2, #0
d008221c:	f000 f846 	bl	d00822ac <_lseek_r>
d0082220:	89a3      	ldrh	r3, [r4, #12]
d0082222:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0082226:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d008222a:	81a3      	strh	r3, [r4, #12]
d008222c:	4632      	mov	r2, r6
d008222e:	463b      	mov	r3, r7
d0082230:	4628      	mov	r0, r5
d0082232:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0082236:	f7fd bf1b 	b.w	d0080070 <_write_r>

d008223a <__sseek>:
d008223a:	b510      	push	{r4, lr}
d008223c:	460c      	mov	r4, r1
d008223e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082242:	f000 f833 	bl	d00822ac <_lseek_r>
d0082246:	1c43      	adds	r3, r0, #1
d0082248:	89a3      	ldrh	r3, [r4, #12]
d008224a:	bf15      	itete	ne
d008224c:	6560      	strne	r0, [r4, #84]	; 0x54
d008224e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0082252:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0082256:	81a3      	strheq	r3, [r4, #12]
d0082258:	bf18      	it	ne
d008225a:	81a3      	strhne	r3, [r4, #12]
d008225c:	bd10      	pop	{r4, pc}

d008225e <__sclose>:
d008225e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0082262:	f000 b801 	b.w	d0082268 <_close_r>
	...

d0082268 <_close_r>:
d0082268:	b538      	push	{r3, r4, r5, lr}
d008226a:	4d06      	ldr	r5, [pc, #24]	; (d0082284 <_close_r+0x1c>)
d008226c:	2300      	movs	r3, #0
d008226e:	4604      	mov	r4, r0
d0082270:	4608      	mov	r0, r1
d0082272:	602b      	str	r3, [r5, #0]
d0082274:	f7fd ff36 	bl	d00800e4 <_close>
d0082278:	1c43      	adds	r3, r0, #1
d008227a:	d102      	bne.n	d0082282 <_close_r+0x1a>
d008227c:	682b      	ldr	r3, [r5, #0]
d008227e:	b103      	cbz	r3, d0082282 <_close_r+0x1a>
d0082280:	6023      	str	r3, [r4, #0]
d0082282:	bd38      	pop	{r3, r4, r5, pc}
d0082284:	d0096638 	.word	0xd0096638

d0082288 <_fstat_r>:
d0082288:	b538      	push	{r3, r4, r5, lr}
d008228a:	4d07      	ldr	r5, [pc, #28]	; (d00822a8 <_fstat_r+0x20>)
d008228c:	2300      	movs	r3, #0
d008228e:	4604      	mov	r4, r0
d0082290:	4608      	mov	r0, r1
d0082292:	4611      	mov	r1, r2
d0082294:	602b      	str	r3, [r5, #0]
d0082296:	f7fd ff29 	bl	d00800ec <_fstat>
d008229a:	1c43      	adds	r3, r0, #1
d008229c:	d102      	bne.n	d00822a4 <_fstat_r+0x1c>
d008229e:	682b      	ldr	r3, [r5, #0]
d00822a0:	b103      	cbz	r3, d00822a4 <_fstat_r+0x1c>
d00822a2:	6023      	str	r3, [r4, #0]
d00822a4:	bd38      	pop	{r3, r4, r5, pc}
d00822a6:	bf00      	nop
d00822a8:	d0096638 	.word	0xd0096638

d00822ac <_lseek_r>:
d00822ac:	b538      	push	{r3, r4, r5, lr}
d00822ae:	4d07      	ldr	r5, [pc, #28]	; (d00822cc <_lseek_r+0x20>)
d00822b0:	4604      	mov	r4, r0
d00822b2:	4608      	mov	r0, r1
d00822b4:	4611      	mov	r1, r2
d00822b6:	2200      	movs	r2, #0
d00822b8:	602a      	str	r2, [r5, #0]
d00822ba:	461a      	mov	r2, r3
d00822bc:	f7fd ff1c 	bl	d00800f8 <_lseek>
d00822c0:	1c43      	adds	r3, r0, #1
d00822c2:	d102      	bne.n	d00822ca <_lseek_r+0x1e>
d00822c4:	682b      	ldr	r3, [r5, #0]
d00822c6:	b103      	cbz	r3, d00822ca <_lseek_r+0x1e>
d00822c8:	6023      	str	r3, [r4, #0]
d00822ca:	bd38      	pop	{r3, r4, r5, pc}
d00822cc:	d0096638 	.word	0xd0096638

d00822d0 <memchr>:
d00822d0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00822d4:	2a10      	cmp	r2, #16
d00822d6:	db2b      	blt.n	d0082330 <memchr+0x60>
d00822d8:	f010 0f07 	tst.w	r0, #7
d00822dc:	d008      	beq.n	d00822f0 <memchr+0x20>
d00822de:	f810 3b01 	ldrb.w	r3, [r0], #1
d00822e2:	3a01      	subs	r2, #1
d00822e4:	428b      	cmp	r3, r1
d00822e6:	d02d      	beq.n	d0082344 <memchr+0x74>
d00822e8:	f010 0f07 	tst.w	r0, #7
d00822ec:	b342      	cbz	r2, d0082340 <memchr+0x70>
d00822ee:	d1f6      	bne.n	d00822de <memchr+0xe>
d00822f0:	b4f0      	push	{r4, r5, r6, r7}
d00822f2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00822f6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00822fa:	f022 0407 	bic.w	r4, r2, #7
d00822fe:	f07f 0700 	mvns.w	r7, #0
d0082302:	2300      	movs	r3, #0
d0082304:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0082308:	3c08      	subs	r4, #8
d008230a:	ea85 0501 	eor.w	r5, r5, r1
d008230e:	ea86 0601 	eor.w	r6, r6, r1
d0082312:	fa85 f547 	uadd8	r5, r5, r7
d0082316:	faa3 f587 	sel	r5, r3, r7
d008231a:	fa86 f647 	uadd8	r6, r6, r7
d008231e:	faa5 f687 	sel	r6, r5, r7
d0082322:	b98e      	cbnz	r6, d0082348 <memchr+0x78>
d0082324:	d1ee      	bne.n	d0082304 <memchr+0x34>
d0082326:	bcf0      	pop	{r4, r5, r6, r7}
d0082328:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d008232c:	f002 0207 	and.w	r2, r2, #7
d0082330:	b132      	cbz	r2, d0082340 <memchr+0x70>
d0082332:	f810 3b01 	ldrb.w	r3, [r0], #1
d0082336:	3a01      	subs	r2, #1
d0082338:	ea83 0301 	eor.w	r3, r3, r1
d008233c:	b113      	cbz	r3, d0082344 <memchr+0x74>
d008233e:	d1f8      	bne.n	d0082332 <memchr+0x62>
d0082340:	2000      	movs	r0, #0
d0082342:	4770      	bx	lr
d0082344:	3801      	subs	r0, #1
d0082346:	4770      	bx	lr
d0082348:	2d00      	cmp	r5, #0
d008234a:	bf06      	itte	eq
d008234c:	4635      	moveq	r5, r6
d008234e:	3803      	subeq	r0, #3
d0082350:	3807      	subne	r0, #7
d0082352:	f015 0f01 	tst.w	r5, #1
d0082356:	d107      	bne.n	d0082368 <memchr+0x98>
d0082358:	3001      	adds	r0, #1
d008235a:	f415 7f80 	tst.w	r5, #256	; 0x100
d008235e:	bf02      	ittt	eq
d0082360:	3001      	addeq	r0, #1
d0082362:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0082366:	3001      	addeq	r0, #1
d0082368:	bcf0      	pop	{r4, r5, r6, r7}
d008236a:	3801      	subs	r0, #1
d008236c:	4770      	bx	lr
d008236e:	bf00      	nop

d0082370 <memcpy>:
d0082370:	440a      	add	r2, r1
d0082372:	4291      	cmp	r1, r2
d0082374:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0082378:	d100      	bne.n	d008237c <memcpy+0xc>
d008237a:	4770      	bx	lr
d008237c:	b510      	push	{r4, lr}
d008237e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0082382:	f803 4f01 	strb.w	r4, [r3, #1]!
d0082386:	4291      	cmp	r1, r2
d0082388:	d1f9      	bne.n	d008237e <memcpy+0xe>
d008238a:	bd10      	pop	{r4, pc}

d008238c <memmove>:
d008238c:	4288      	cmp	r0, r1
d008238e:	b510      	push	{r4, lr}
d0082390:	eb01 0402 	add.w	r4, r1, r2
d0082394:	d902      	bls.n	d008239c <memmove+0x10>
d0082396:	4284      	cmp	r4, r0
d0082398:	4623      	mov	r3, r4
d008239a:	d807      	bhi.n	d00823ac <memmove+0x20>
d008239c:	1e43      	subs	r3, r0, #1
d008239e:	42a1      	cmp	r1, r4
d00823a0:	d008      	beq.n	d00823b4 <memmove+0x28>
d00823a2:	f811 2b01 	ldrb.w	r2, [r1], #1
d00823a6:	f803 2f01 	strb.w	r2, [r3, #1]!
d00823aa:	e7f8      	b.n	d008239e <memmove+0x12>
d00823ac:	4402      	add	r2, r0
d00823ae:	4601      	mov	r1, r0
d00823b0:	428a      	cmp	r2, r1
d00823b2:	d100      	bne.n	d00823b6 <memmove+0x2a>
d00823b4:	bd10      	pop	{r4, pc}
d00823b6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00823ba:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00823be:	e7f7      	b.n	d00823b0 <memmove+0x24>

d00823c0 <_realloc_r>:
d00823c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00823c2:	4607      	mov	r7, r0
d00823c4:	4614      	mov	r4, r2
d00823c6:	460e      	mov	r6, r1
d00823c8:	b921      	cbnz	r1, d00823d4 <_realloc_r+0x14>
d00823ca:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00823ce:	4611      	mov	r1, r2
d00823d0:	f7ff b8c8 	b.w	d0081564 <_malloc_r>
d00823d4:	b922      	cbnz	r2, d00823e0 <_realloc_r+0x20>
d00823d6:	f7ff f875 	bl	d00814c4 <_free_r>
d00823da:	4625      	mov	r5, r4
d00823dc:	4628      	mov	r0, r5
d00823de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00823e0:	f000 f826 	bl	d0082430 <_malloc_usable_size_r>
d00823e4:	42a0      	cmp	r0, r4
d00823e6:	d20f      	bcs.n	d0082408 <_realloc_r+0x48>
d00823e8:	4621      	mov	r1, r4
d00823ea:	4638      	mov	r0, r7
d00823ec:	f7ff f8ba 	bl	d0081564 <_malloc_r>
d00823f0:	4605      	mov	r5, r0
d00823f2:	2800      	cmp	r0, #0
d00823f4:	d0f2      	beq.n	d00823dc <_realloc_r+0x1c>
d00823f6:	4631      	mov	r1, r6
d00823f8:	4622      	mov	r2, r4
d00823fa:	f7ff ffb9 	bl	d0082370 <memcpy>
d00823fe:	4631      	mov	r1, r6
d0082400:	4638      	mov	r0, r7
d0082402:	f7ff f85f 	bl	d00814c4 <_free_r>
d0082406:	e7e9      	b.n	d00823dc <_realloc_r+0x1c>
d0082408:	4635      	mov	r5, r6
d008240a:	e7e7      	b.n	d00823dc <_realloc_r+0x1c>

d008240c <_read_r>:
d008240c:	b538      	push	{r3, r4, r5, lr}
d008240e:	4d07      	ldr	r5, [pc, #28]	; (d008242c <_read_r+0x20>)
d0082410:	4604      	mov	r4, r0
d0082412:	4608      	mov	r0, r1
d0082414:	4611      	mov	r1, r2
d0082416:	2200      	movs	r2, #0
d0082418:	602a      	str	r2, [r5, #0]
d008241a:	461a      	mov	r2, r3
d008241c:	f7fd fe58 	bl	d00800d0 <_read>
d0082420:	1c43      	adds	r3, r0, #1
d0082422:	d102      	bne.n	d008242a <_read_r+0x1e>
d0082424:	682b      	ldr	r3, [r5, #0]
d0082426:	b103      	cbz	r3, d008242a <_read_r+0x1e>
d0082428:	6023      	str	r3, [r4, #0]
d008242a:	bd38      	pop	{r3, r4, r5, pc}
d008242c:	d0096638 	.word	0xd0096638

d0082430 <_malloc_usable_size_r>:
d0082430:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0082434:	1f18      	subs	r0, r3, #4
d0082436:	2b00      	cmp	r3, #0
d0082438:	bfbc      	itt	lt
d008243a:	580b      	ldrlt	r3, [r1, r0]
d008243c:	18c0      	addlt	r0, r0, r3
d008243e:	4770      	bx	lr
d0082440:	42444953 	.word	0x42444953
d0082444:	4320584f 	.word	0x4320584f
d0082448:	44205452 	.word	0x44205452
d008244c:	004f4d45 	.word	0x004f4d45
d0082450:	49424752 	.word	0x49424752
d0082454:	30323320 	.word	0x30323320
d0082458:	30343278 	.word	0x30343278
d008245c:	48303520 	.word	0x48303520
d0082460:	0000005a 	.word	0x0000005a
d0082464:	20545243 	.word	0x20545243
d0082468:	20495041 	.word	0x20495041
d008246c:	76616e75 	.word	0x76616e75
d0082470:	616c6961 	.word	0x616c6961
d0082474:	0a656c62 	.word	0x0a656c62
d0082478:	00000000 	.word	0x00000000
d008247c:	4d415246 	.word	0x4d415246
d0082480:	6c252045 	.word	0x6c252045
d0082484:	48202075 	.word	0x48202075
d0082488:	20444c4f 	.word	0x20444c4f
d008248c:	45524946 	.word	0x45524946
d0082490:	204b4f2b 	.word	0x204b4f2b
d0082494:	45204f54 	.word	0x45204f54
d0082498:	00544958 	.word	0x00544958

d008249c <bars>:
d008249c:	03020100 07060504 0b0a0908 0f0e0d0c     ................

d00824ac <font_8x8_32_90>:
	...
d00824b4:	5f000000 0000005f 00030300 00000303     ...__...........
d00824c4:	147f7f14 00147f7f 6b2e2400 00123a6b     .........$.kk:..
d00824d4:	18366a4c 0032566c 594f7e30 40683a77     Lj6.lV2.0~OYw:h@
d00824e4:	07040000 00000003 3e1c0000 00004163     ...........>cA..
d00824f4:	63410000 00001c3e 1c3e2a08 082a3e1c     ..Ac>....*>..>*.
d0082504:	3e080800 0008083e e0800000 00000060     ...>>.......`...
d0082514:	08080800 00080808 00000000 00006060     ............``..
d0082524:	18306040 0103060c 597f3e00 003e7f4d     @`0......>.YM.>.
d0082534:	7f060400 0000007f 71634200 00464f59     .........BcqYOF.
d0082544:	49632200 00367f49 13161c18 00107f7f     ."cII.6.........
d0082554:	45672700 00397d45 4b7e3c00 00307949     .'gEE}9..<~KIy0.
d0082564:	71010100 00070f79 497f3600 00367f49     ...qy....6.II.6.
d0082574:	494f0600 001e3f69 66000000 00000066     ..OIi?.....ff...
d0082584:	e6800000 00000066 14080800 00222214     ....f........"".
d0082594:	14141400 00141414 14222200 00080814     ........."".....
d00825a4:	51030200 00060f59 5d417f3e 001e1f55     ...QY...>.A]U...
d00825b4:	097f7e00 007e7f09 497f7f00 00367f49     .~....~....II.6.
d00825c4:	633e1c00 00414141 417f7f00 001c3e63     ..>cAAA....Ac>..
d00825d4:	497f7f00 00414149 097f7f00 00010109     ...IIAA.........
d00825e4:	417f3e00 007a7b49 087f7f00 007f7f08     .>.AI{z.........
d00825f4:	7f410000 0000417f 40602000 003f7f40     ..A..A... `@@.?.
d0082604:	1c087f7f 00416336 407f7f00 00404040     ....6cA....@@@@.
d0082614:	0c067f7f 007f7f06 0c067f7f 007f7f18     ................
d0082624:	417f3e00 003e7f41 097f7f00 00060f09     .>.AA.>.........
d0082634:	61417f3e 00407e7f 097f7f00 00667f19     >.Aa.~@.......f.
d0082644:	4d6f2600 00327b59 7f010100 0001017f     .&oMY{2.........
d0082654:	407f3f00 003f7f40 703f0f00 000f3f70     .?.@@.?...?pp?..
d0082664:	18307f7f 007f7f30 1c366341 4163361c     ..0.0...Ac6..6cA
d0082674:	7c060301 0103067c 4d597161 00414347     ...||...aqYMGCA.

d0082684 <lcd_msg_bottom>:
d0082684:	73657250 49462073 2b204552 204b4f20     Press FIRE + OK 
d0082694:	65206f74 00746978                       to exit.

d008269c <lcd_msg_top>:
d008269c:	20545243 6f6d6564 6e757220 676e696e     CRT demo running
d00826ac:	00000000                                ....

d00826b0 <sprite>:
	...
d0082708:	06000000 06060606 06060606 00000606     ................
	...
d0082744:	06000000 06060606 06060606 06060606     ................
d0082754:	06060606 00000606 00000000 00000000     ................
	...
d0082784:	06060600 06060606 06060606 06060606     ................
d0082794:	06060606 06060606 00000000 00000000     ................
	...
d00827c0:	06000000 06060606 06060606 06060606     ................
d00827d0:	06060606 06060606 06060606 00000606     ................
	...
d0082800:	06060600 06060606 06060606 06060606     ................
d0082810:	06060606 06060606 06060606 06060606     ................
	...
d008283c:	06000000 06060606 06060606 06060606     ................
	...
d0082854:	06060600 06060606 06060606 00000606     ................
	...
d008287c:	06060000 06060606 06060606 00000000     ................
	...
d0082898:	06060600 06060606 00060606 00000000     ................
	...
d00828bc:	06060600 06060606 00000606 00000000     ................
	...
d00828d8:	06000000 06060606 06060606 00000000     ................
	...
d00828fc:	06060606 06060606 00000000 00000000     ................
	...
d008291c:	06060600 06060606 00000006 00000000     ................
	...
d0082938:	06000000 06060606 00000606 00000000     ................
	...
d008295c:	06000000 06060606 00000606 00000000     ................
	...
d0082978:	06060000 06060606 00000006 00000000     ................
	...
d00829a0:	06060606 00060606 00000000 00000000     ................
	...
d00829b8:	06060600 06060606 00000000 00000000     ................
	...
d00829e0:	06060600 06060606 00000000 00000000     ................
	...
d00829f8:	06060606 00060606 00000000 00000000     ................
	...
d0082a20:	06060000 06060606 00000006 00000000     ................
	...
d0082a38:	06060606 00000606 00000000 00000000     ................
	...
d0082a60:	06000000 06060606 00000006 00000000     ................
d0082a70:	00000000 06000000 06060606 00000006     ................
	...
d0082aa4:	06060606 00000606 00000000 00000000     ................
d0082ab4:	06000000 06060606 00000000 00000000     ................
	...
d0082acc:	05050500 05050505 00000000 00000000     ................
	...
d0082ae4:	06060600 00000606 00000000 00000000     ................
d0082af4:	06060000 06060606 00000000 00000000     ................
d0082b04:	00000000 05050000 00000005 00000000     ................
d0082b14:	00050505 00000000 00000000 00000000     ................
d0082b24:	06060600 00060606 00000000 00000000     ................
d0082b34:	06060000 00060606 00000000 05000000     ................
d0082b44:	05050505 00000505 00000000 00000000     ................
d0082b54:	05000000 00000005 00000000 00000000     ................
d0082b64:	06060000 00060606 00000000 00000000     ................
d0082b74:	06060600 00060606 00000000 05050000     ................
d0082b84:	05000000 00000005 00000000 00000000     ................
d0082b94:	00000000 00000505 00000000 00000000     ................
d0082ba4:	06060000 06060606 00000000 00000000     ................
d0082bb4:	06060600 00000606 00000000 00050500     ................
d0082bc4:	00050000 00000505 00000000 00000000     ................
d0082bd4:	00000000 00050000 00000000 00000000     ................
d0082be4:	06000000 06060606 00000000 00000000     ................
d0082bf4:	06060606 00000606 00000000 00000500     ................
d0082c04:	00000500 00000500 00000000 00000000     ................
d0082c14:	00000000 05000000 00000000 00000000     ................
d0082c24:	06000000 06060606 00000006 00000000     ................
d0082c34:	06060606 00000006 00000000 00000500     ................
d0082c44:	00000505 00000500 00000000 00000000     ................
d0082c54:	00000000 05000000 00000005 00000000     ................
d0082c64:	00000000 06060606 00000006 00000000     ................
d0082c74:	06060606 00000006 00000000 00000500     ................
d0082c84:	00000005 00000500 00000000 00000000     ................
	...
d0082c9c:	00000005 00000000 00000000 06060606     ................
d0082cac:	00000006 00000000 06060606 00000006     ................
d0082cbc:	00000000 05050500 00000000 00000505     ................
	...
d0082cdc:	00000500 00000000 00000000 06060606     ................
d0082cec:	00000006 06000000 06060606 00000006     ................
d0082cfc:	00000000 05050000 05000000 00000005     ................
	...
d0082d1c:	00000500 00000000 00000000 06060606     ................
d0082d2c:	00000606 06000000 06060606 00000000     ................
d0082d3c:	00000000 05000000 05050505 00000000     ................
	...
d0082d5c:	00000500 00000000 00000000 06060600     ................
d0082d6c:	00000606 06000000 06060606 00000000     ................
d0082d7c:	00000000 00050000 00000000 00000000     ................
	...
d0082d9c:	00050000 00000000 00000000 06060600     ................
d0082dac:	00000606 06000000 06060606 00000000     ................
d0082dbc:	00000000 00050000 00000000 00000000     ................
d0082dcc:	05000000 00000505 00000000 05050500     ................
d0082ddc:	05050505 00050505 00000000 06060600     ................
d0082dec:	00000606 06000000 06060606 00000000     ................
d0082dfc:	00000000 00050000 00000000 00000000     ................
d0082e0c:	00050000 00050000 00000000 05050500     ................
d0082e1c:	05050505 00050505 00000000 06060600     ................
d0082e2c:	00000606 06000000 06060606 00000000     ................
d0082e3c:	00000000 00050000 00000000 00000000     ................
d0082e4c:	00050000 00050000 00000000 00000000     ................
d0082e5c:	00050000 05050000 00000005 06060600     ................
d0082e6c:	00000606 06000000 06060606 00000000     ................
d0082e7c:	00000000 00050000 00000000 00000000     ................
d0082e8c:	00050000 00050000 00000000 05050500     ................
d0082e9c:	05050505 00050505 00000000 06060600     ................
d0082eac:	00000606 06000000 06060606 00000000     ................
d0082ebc:	00000000 00050000 00000000 00000000     ................
d0082ecc:	05000000 00000505 00000000 05050500     ................
d0082edc:	05050505 00050505 00000000 06060600     ................
d0082eec:	00000606 06000000 06060606 00000000     ................
d0082efc:	00000000 00050000 00000000 00000000     ................
	...
d0082f1c:	00050000 00000000 00000000 06060600     ................
d0082f2c:	00000606 06000000 06060606 00000000     ................
d0082f3c:	00000000 05000000 05050505 00000000     ................
	...
d0082f5c:	00000500 00000000 00000000 06060600     ................
d0082f6c:	00000606 06000000 06060606 00000006     ................
d0082f7c:	00000000 05050000 05000000 00000005     ................
	...
d0082f9c:	00000500 00000000 00000000 06060606     ................
d0082fac:	00000606 00000000 06060606 00000006     ................
d0082fbc:	00000000 05050500 00000000 00000505     ................
	...
d0082fdc:	00000500 00000000 00000000 06060606     ................
d0082fec:	00000006 00000000 06060606 00000006     ................
d0082ffc:	00000000 00000500 00000005 00000500     ................
	...
d008301c:	00000005 00000000 00000000 06060606     ................
d008302c:	00000006 00000000 06060606 00000006     ................
d008303c:	00000000 00000500 00000505 00000500     ................
	...
d0083058:	05000000 00000005 00000000 00000000     ................
d0083068:	06060606 00000006 00000000 06060606     ................
d0083078:	00000606 00000000 00000500 00000500     ................
d0083088:	00000500 00000000 00000000 00000000     ................
d0083098:	05000000 00000000 00000000 06000000     ................
d00830a8:	06060606 00000006 00000000 06060600     ................
d00830b8:	00000606 00000000 00050500 00050000     ................
d00830c8:	00000505 0e0e0000 000e0e0e 00000000     ................
d00830d8:	00050000 00000000 00000000 06000000     ................
d00830e8:	06060606 00000000 00000000 06060600     ................
d00830f8:	00060606 00000000 05050000 05000000     ................
d0083108:	00000005 0e0e0000 000e0e0e 00000000     ................
d0083118:	00000505 00000000 00000000 06060000     ................
d0083128:	06060606 00000000 00000000 06060000     ................
d0083138:	00060606 00000000 05000000 05050505     ................
d0083148:	00000505 00000000 00000000 05000000     ................
d0083158:	00000005 00000000 00000000 06060000     ................
d0083168:	00060606 00000000 00000000 06060000     ................
d0083178:	06060606 00000000 00000000 00000000     ................
d0083188:	05050000 00000005 00000000 00050505     ................
	...
d00831a4:	06060600 00060606 00000000 00000000     ................
d00831b4:	06000000 06060606 00000000 00000000     ................
	...
d00831cc:	05050500 05050505 00000000 00000000     ................
	...
d00831e4:	06060600 00000606 00000000 00000000     ................
d00831f4:	06000000 06060606 00000006 00000000     ................
	...
d0083224:	06060606 00000606 00000000 00000000     ................
d0083234:	00000000 06060606 00000606 00000000     ................
	...
d0083260:	06000000 06060606 00000006 00000000     ................
	...
d0083278:	06060606 00060606 00000000 00000000     ................
d0083288:	00000000 0e0e0e00 0e0e0e00 00000000     ................
	...
d00832a0:	06060000 06060606 00000006 00000000     ................
	...
d00832b8:	06060600 06060606 00000000 00000000     ................
d00832c8:	00000000 0e0e0e00 0e0e0e0e 00000000     ................
	...
d00832e0:	06060600 06060606 00000000 00000000     ................
	...
d00832f8:	06060000 06060606 00000006 00000000     ................
d0083308:	00000000 0e0e0000 000e0e0e 00000000     ................
	...
d0083320:	06060606 00060606 00000000 00000000     ................
	...
d0083338:	06000000 06060606 00000606 00000000     ................
	...
d008335c:	06000000 06060606 00000606 00000000     ................
	...
d008337c:	06060606 06060606 00000000 00000000     ................
	...
d008339c:	06060600 06060606 00000006 00000000     ................
	...
d00833bc:	06060600 06060606 00000606 00000000     ................
	...
d00833d8:	06000000 06060606 06060606 00000000     ................
	...
d00833fc:	06060000 06060606 06060606 00000000     ................
	...
d0083418:	06060600 06060606 00060606 00000000     ................
	...
d008343c:	06000000 06060606 06060606 06060606     ................
	...
d0083454:	06060600 06060606 06060606 00000606     ................
	...
d0083480:	06060600 06060606 06060606 06060606     ................
d0083490:	06060606 06060606 06060606 06060606     ................
	...
d00834c0:	06000000 06060606 06060606 06060606     ................
d00834d0:	06060606 06060606 06060606 00000606     ................
	...
d0083504:	06060600 06060606 06060606 06060606     ................
d0083514:	06060606 06060606 00000000 00000000     ................
	...
d0083544:	06000000 06060606 06060606 06060606     ................
d0083554:	06060606 00000606 00000000 00000000     ................
	...
d0083588:	06000000 06060606 06060606 00000606     ................
	...

d00836b0 <_global_impure_ptr>:
d00836b0:	d0083758                                X7..

d00836b4 <__sf_fake_stderr>:
	...

d00836d4 <__sf_fake_stdin>:
	...

d00836f4 <__sf_fake_stdout>:
	...
d0083714:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0083724:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0083734:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0083744:	                                         ef.

Disassembly of section .init:

d0083748 <_init>:
d0083748:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008374a:	bf00      	nop

Disassembly of section .fini:

d008374c <_fini>:
d008374c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d008374e:	bf00      	nop
